
nettle-md5.elf:     file format elf32-littlearm


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
 80001e0:	08007614 	.word	0x08007614

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
 80001fc:	08007614 	.word	0x08007614

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
 80013e8:	f247 6248 	movw	r2, #30280	; 0x7648
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
 8001462:	f247 6240 	movw	r2, #30272	; 0x7640
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
 800148c:	f247 6240 	movw	r2, #30272	; 0x7640
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
 80019d4:	f247 6378 	movw	r3, #30328	; 0x7678
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
 80019fc:	f247 6388 	movw	r3, #30344	; 0x7688
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

08001eb6 <__io_putchar>:
 8001eb6:	b580      	push	{r7, lr}
 8001eb8:	466f      	mov	r7, sp
 8001eba:	b082      	sub	sp, #8
 8001ebc:	9001      	str	r0, [sp, #4]
 8001ebe:	f640 2034 	movw	r0, #2612	; 0xa34
 8001ec2:	a901      	add	r1, sp, #4
 8001ec4:	2201      	movs	r2, #1
 8001ec6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001eca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ece:	f7ff ff04 	bl	8001cda <HAL_UART_Transmit>
 8001ed2:	9801      	ldr	r0, [sp, #4]
 8001ed4:	b002      	add	sp, #8
 8001ed6:	bd80      	pop	{r7, pc}

08001ed8 <main>:
 8001ed8:	b5b0      	push	{r4, r5, r7, lr}
 8001eda:	af02      	add	r7, sp, #8
 8001edc:	f640 2134 	movw	r1, #2612	; 0xa34
 8001ee0:	f643 0000 	movw	r0, #14336	; 0x3800
 8001ee4:	220c      	movs	r2, #12
 8001ee6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001eea:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001eee:	6008      	str	r0, [r1, #0]
 8001ef0:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001ef4:	6048      	str	r0, [r1, #4]
 8001ef6:	2000      	movs	r0, #0
 8001ef8:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001efc:	6108      	str	r0, [r1, #16]
 8001efe:	6248      	str	r0, [r1, #36]	; 0x24
 8001f00:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f04:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f08:	2000      	movs	r0, #0
 8001f0a:	f7ff ff7b 	bl	8001e04 <BSP_COM_Init>
 8001f0e:	f000 fbd9 	bl	80026c4 <initialise_benchmark>
 8001f12:	f247 6098 	movw	r0, #30360	; 0x7698
 8001f16:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f1a:	f000 fd2f 	bl	800297c <printf>
 8001f1e:	f247 7045 	movw	r0, #30533	; 0x7745
 8001f22:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f26:	f000 fd8b 	bl	8002a40 <puts>
 8001f2a:	f7ff f8dd 	bl	80010e8 <HAL_Init>
 8001f2e:	f7ff f8f3 	bl	8001118 <HAL_GetTick>
 8001f32:	4604      	mov	r4, r0
 8001f34:	f000 fbc7 	bl	80026c6 <benchmark>
 8001f38:	4605      	mov	r5, r0
 8001f3a:	f7ff f8ed 	bl	8001118 <HAL_GetTick>
 8001f3e:	1b04      	subs	r4, r0, r4
 8001f40:	4628      	mov	r0, r5
 8001f42:	f000 fbce 	bl	80026e2 <verify_benchmark>
 8001f46:	1c41      	adds	r1, r0, #1
 8001f48:	d006      	beq.n	8001f58 <main+0x80>
 8001f4a:	2801      	cmp	r0, #1
 8001f4c:	d109      	bne.n	8001f62 <main+0x8a>
 8001f4e:	f247 60b1 	movw	r0, #30385	; 0x76b1
 8001f52:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f56:	e008      	b.n	8001f6a <main+0x92>
 8001f58:	f247 60d5 	movw	r0, #30421	; 0x76d5
 8001f5c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f60:	e003      	b.n	8001f6a <main+0x92>
 8001f62:	f247 700a 	movw	r0, #30474	; 0x770a
 8001f66:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f6a:	4621      	mov	r1, r4
 8001f6c:	f000 fd06 	bl	800297c <printf>
 8001f70:	2000      	movs	r0, #0
 8001f72:	bdb0      	pop	{r4, r5, r7, pc}

08001f74 <_nettle_md5_compress>:
 8001f74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f76:	af03      	add	r7, sp, #12
 8001f78:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f7c:	b0a2      	sub	sp, #136	; 0x88
 8001f7e:	2400      	movs	r4, #0
 8001f80:	aa12      	add	r2, sp, #72	; 0x48
 8001f82:	190b      	adds	r3, r1, r4
 8001f84:	789d      	ldrb	r5, [r3, #2]
 8001f86:	785e      	ldrb	r6, [r3, #1]
 8001f88:	78db      	ldrb	r3, [r3, #3]
 8001f8a:	042d      	lsls	r5, r5, #16
 8001f8c:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
 8001f90:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
 8001f94:	5d0e      	ldrb	r6, [r1, r4]
 8001f96:	4333      	orrs	r3, r6
 8001f98:	5113      	str	r3, [r2, r4]
 8001f9a:	3404      	adds	r4, #4
 8001f9c:	2c40      	cmp	r4, #64	; 0x40
 8001f9e:	d1f0      	bne.n	8001f82 <_nettle_md5_compress+0xe>
 8001fa0:	6806      	ldr	r6, [r0, #0]
 8001fa2:	9608      	str	r6, [sp, #32]
 8001fa4:	e9d0 1501 	ldrd	r1, r5, [r0, #4]
 8001fa8:	68c3      	ldr	r3, [r0, #12]
 8001faa:	e9dd a412 	ldrd	sl, r4, [sp, #72]	; 0x48
 8001fae:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
 8001fb2:	ea83 0205 	eor.w	r2, r3, r5
 8001fb6:	4456      	add	r6, sl
 8001fb8:	9411      	str	r4, [sp, #68]	; 0x44
 8001fba:	e9cd 8006 	strd	r8, r0, [sp, #24]
 8001fbe:	eb05 0008 	add.w	r0, r5, r8
 8001fc2:	f8cd a00c 	str.w	sl, [sp, #12]
 8001fc6:	400a      	ands	r2, r1
 8001fc8:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
 8001fcc:	f8dd 9080 	ldr.w	r9, [sp, #128]	; 0x80
 8001fd0:	ea82 0e03 	eor.w	lr, r2, r3
 8001fd4:	4423      	add	r3, r4
 8001fd6:	eb06 020e 	add.w	r2, r6, lr
 8001fda:	f24a 4678 	movw	r6, #42104	; 0xa478
 8001fde:	f2cd 766a 	movt	r6, #55146	; 0xd76a
 8001fe2:	4432      	add	r2, r6
 8001fe4:	ea85 0601 	eor.w	r6, r5, r1
 8001fe8:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
 8001fec:	eb01 6272 	add.w	r2, r1, r2, ror #25
 8001ff0:	4016      	ands	r6, r2
 8001ff2:	406e      	eors	r6, r5
 8001ff4:	9d16      	ldr	r5, [sp, #88]	; 0x58
 8001ff6:	4433      	add	r3, r6
 8001ff8:	f24b 7656 	movw	r6, #46934	; 0xb756
 8001ffc:	f6ce 06c7 	movt	r6, #59591	; 0xe8c7
 8002000:	4433      	add	r3, r6
 8002002:	ea82 0601 	eor.w	r6, r2, r1
 8002006:	eb02 5333 	add.w	r3, r2, r3, ror #20
 800200a:	950c      	str	r5, [sp, #48]	; 0x30
 800200c:	401e      	ands	r6, r3
 800200e:	404e      	eors	r6, r1
 8002010:	4461      	add	r1, ip
 8002012:	4430      	add	r0, r6
 8002014:	f247 06db 	movw	r6, #28891	; 0x70db
 8002018:	f2c2 4620 	movt	r6, #9248	; 0x2420
 800201c:	4430      	add	r0, r6
 800201e:	ea83 0602 	eor.w	r6, r3, r2
 8002022:	eb03 30f0 	add.w	r0, r3, r0, ror #15
 8002026:	4006      	ands	r6, r0
 8002028:	4056      	eors	r6, r2
 800202a:	442a      	add	r2, r5
 800202c:	9d17      	ldr	r5, [sp, #92]	; 0x5c
 800202e:	4431      	add	r1, r6
 8002030:	f64c 66ee 	movw	r6, #52974	; 0xceee
 8002034:	f2cc 16bd 	movt	r6, #49597	; 0xc1bd
 8002038:	4431      	add	r1, r6
 800203a:	ea80 0603 	eor.w	r6, r0, r3
 800203e:	eb00 21b1 	add.w	r1, r0, r1, ror #10
 8002042:	46ae      	mov	lr, r5
 8002044:	400e      	ands	r6, r1
 8002046:	f8cd e024 	str.w	lr, [sp, #36]	; 0x24
 800204a:	405e      	eors	r6, r3
 800204c:	442b      	add	r3, r5
 800204e:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8002050:	4432      	add	r2, r6
 8002052:	f640 76af 	movw	r6, #4015	; 0xfaf
 8002056:	f2cf 567c 	movt	r6, #62844	; 0xf57c
 800205a:	4432      	add	r2, r6
 800205c:	ea81 0600 	eor.w	r6, r1, r0
 8002060:	eb01 6272 	add.w	r2, r1, r2, ror #25
 8002064:	9505      	str	r5, [sp, #20]
 8002066:	4016      	ands	r6, r2
 8002068:	4046      	eors	r6, r0
 800206a:	4428      	add	r0, r5
 800206c:	4433      	add	r3, r6
 800206e:	f24c 662a 	movw	r6, #50730	; 0xc62a
 8002072:	f2c4 7687 	movt	r6, #18311	; 0x4787
 8002076:	4433      	add	r3, r6
 8002078:	ea82 0601 	eor.w	r6, r2, r1
 800207c:	eb02 5333 	add.w	r3, r2, r3, ror #20
 8002080:	401e      	ands	r6, r3
 8002082:	404e      	eors	r6, r1
 8002084:	4430      	add	r0, r6
 8002086:	f244 6613 	movw	r6, #17939	; 0x4613
 800208a:	f6ca 0630 	movt	r6, #43056	; 0xa830
 800208e:	4430      	add	r0, r6
 8002090:	9e19      	ldr	r6, [sp, #100]	; 0x64
 8002092:	eb03 34f0 	add.w	r4, r3, r0, ror #15
 8002096:	ea83 0002 	eor.w	r0, r3, r2
 800209a:	4020      	ands	r0, r4
 800209c:	4050      	eors	r0, r2
 800209e:	4431      	add	r1, r6
 80020a0:	960d      	str	r6, [sp, #52]	; 0x34
 80020a2:	9e1a      	ldr	r6, [sp, #104]	; 0x68
 80020a4:	4408      	add	r0, r1
 80020a6:	f249 5101 	movw	r1, #38145	; 0x9501
 80020aa:	f6cf 5146 	movt	r1, #64838	; 0xfd46
 80020ae:	4408      	add	r0, r1
 80020b0:	eb04 21b0 	add.w	r1, r4, r0, ror #10
 80020b4:	ea84 0003 	eor.w	r0, r4, r3
 80020b8:	4432      	add	r2, r6
 80020ba:	960b      	str	r6, [sp, #44]	; 0x2c
 80020bc:	9e1b      	ldr	r6, [sp, #108]	; 0x6c
 80020be:	4008      	ands	r0, r1
 80020c0:	4058      	eors	r0, r3
 80020c2:	4410      	add	r0, r2
 80020c4:	f649 02d8 	movw	r2, #39128	; 0x98d8
 80020c8:	f6c6 1280 	movt	r2, #27008	; 0x6980
 80020cc:	4433      	add	r3, r6
 80020ce:	9610      	str	r6, [sp, #64]	; 0x40
 80020d0:	4410      	add	r0, r2
 80020d2:	ea81 0204 	eor.w	r2, r1, r4
 80020d6:	eb01 6070 	add.w	r0, r1, r0, ror #25
 80020da:	4002      	ands	r2, r0
 80020dc:	4062      	eors	r2, r4
 80020de:	441a      	add	r2, r3
 80020e0:	f24f 73af 	movw	r3, #63407	; 0xf7af
 80020e4:	f6c8 3344 	movt	r3, #35652	; 0x8b44
 80020e8:	441a      	add	r2, r3
 80020ea:	eb00 5332 	add.w	r3, r0, r2, ror #20
 80020ee:	ea80 0201 	eor.w	r2, r0, r1
 80020f2:	401a      	ands	r2, r3
 80020f4:	ea82 0c01 	eor.w	ip, r2, r1
 80020f8:	9a1c      	ldr	r2, [sp, #112]	; 0x70
 80020fa:	1916      	adds	r6, r2, r4
 80020fc:	4690      	mov	r8, r2
 80020fe:	eb06 020c 	add.w	r2, r6, ip
 8002102:	f24a 464f 	movw	r6, #42063	; 0xa44f
 8002106:	f8cd 8004 	str.w	r8, [sp, #4]
 800210a:	1b92      	subs	r2, r2, r6
 800210c:	9e1d      	ldr	r6, [sp, #116]	; 0x74
 800210e:	eb03 34f2 	add.w	r4, r3, r2, ror #15
 8002112:	ea83 0200 	eor.w	r2, r3, r0
 8002116:	4022      	ands	r2, r4
 8002118:	4042      	eors	r2, r0
 800211a:	4431      	add	r1, r6
 800211c:	46b4      	mov	ip, r6
 800211e:	9e1e      	ldr	r6, [sp, #120]	; 0x78
 8002120:	4411      	add	r1, r2
 8002122:	f24d 72be 	movw	r2, #55230	; 0xd7be
 8002126:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 800212a:	f6c8 125c 	movt	r2, #35164	; 0x895c
 800212e:	4411      	add	r1, r2
 8002130:	ea84 0203 	eor.w	r2, r4, r3
 8002134:	eb04 21b1 	add.w	r1, r4, r1, ror #10
 8002138:	4430      	add	r0, r6
 800213a:	9602      	str	r6, [sp, #8]
 800213c:	9e1f      	ldr	r6, [sp, #124]	; 0x7c
 800213e:	400a      	ands	r2, r1
 8002140:	405a      	eors	r2, r3
 8002142:	4410      	add	r0, r2
 8002144:	f241 1222 	movw	r2, #4386	; 0x1122
 8002148:	f6c6 3290 	movt	r2, #27536	; 0x6b90
 800214c:	4433      	add	r3, r6
 800214e:	960a      	str	r6, [sp, #40]	; 0x28
 8002150:	f244 368e 	movw	r6, #17294	; 0x438e
 8002154:	4410      	add	r0, r2
 8002156:	ea81 0204 	eor.w	r2, r1, r4
 800215a:	f2ca 6679 	movt	r6, #42617	; 0xa679
 800215e:	eb01 6070 	add.w	r0, r1, r0, ror #25
 8002162:	4002      	ands	r2, r0
 8002164:	4062      	eors	r2, r4
 8002166:	444c      	add	r4, r9
 8002168:	441a      	add	r2, r3
 800216a:	f247 1393 	movw	r3, #29075	; 0x7193
 800216e:	f6cf 5398 	movt	r3, #64920	; 0xfd98
 8002172:	441a      	add	r2, r3
 8002174:	ea80 0301 	eor.w	r3, r0, r1
 8002178:	eb00 5232 	add.w	r2, r0, r2, ror #20
 800217c:	4013      	ands	r3, r2
 800217e:	ea83 0b01 	eor.w	fp, r3, r1
 8002182:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8002184:	445c      	add	r4, fp
 8002186:	4434      	add	r4, r6
 8002188:	eb02 3bf4 	add.w	fp, r2, r4, ror #15
 800218c:	ea82 0400 	eor.w	r4, r2, r0
 8002190:	ea04 040b 	and.w	r4, r4, fp
 8002194:	4419      	add	r1, r3
 8002196:	9304      	str	r3, [sp, #16]
 8002198:	ea84 0600 	eor.w	r6, r4, r0
 800219c:	9c11      	ldr	r4, [sp, #68]	; 0x44
 800219e:	4431      	add	r1, r6
 80021a0:	f640 0621 	movw	r6, #2081	; 0x821
 80021a4:	f6c4 16b4 	movt	r6, #18868	; 0x49b4
 80021a8:	4431      	add	r1, r6
 80021aa:	eb0b 21b1 	add.w	r1, fp, r1, ror #10
 80021ae:	4420      	add	r0, r4
 80021b0:	ea81 060b 	eor.w	r6, r1, fp
 80021b4:	4016      	ands	r6, r2
 80021b6:	442a      	add	r2, r5
 80021b8:	eb0c 050b 	add.w	r5, ip, fp
 80021bc:	46cc      	mov	ip, r9
 80021be:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
 80021c2:	ea86 060b 	eor.w	r6, r6, fp
 80021c6:	f8cd c000 	str.w	ip, [sp]
 80021ca:	4430      	add	r0, r6
 80021cc:	f242 5662 	movw	r6, #9570	; 0x2562
 80021d0:	f2cf 661e 	movt	r6, #63006	; 0xf61e
 80021d4:	4430      	add	r0, r6
 80021d6:	eb01 60f0 	add.w	r0, r1, r0, ror #27
 80021da:	ea80 0601 	eor.w	r6, r0, r1
 80021de:	ea06 060b 	and.w	r6, r6, fp
 80021e2:	f8dd b018 	ldr.w	fp, [sp, #24]
 80021e6:	404e      	eors	r6, r1
 80021e8:	4432      	add	r2, r6
 80021ea:	f24b 3640 	movw	r6, #45888	; 0xb340
 80021ee:	f2cc 0640 	movt	r6, #49216	; 0xc040
 80021f2:	4432      	add	r2, r6
 80021f4:	eb00 52f2 	add.w	r2, r0, r2, ror #23
 80021f8:	ea82 0600 	eor.w	r6, r2, r0
 80021fc:	400e      	ands	r6, r1
 80021fe:	4451      	add	r1, sl
 8002200:	f8dd a008 	ldr.w	sl, [sp, #8]
 8002204:	4046      	eors	r6, r0
 8002206:	4435      	add	r5, r6
 8002208:	f645 2651 	movw	r6, #23121	; 0x5a51
 800220c:	f2c2 665e 	movt	r6, #9822	; 0x265e
 8002210:	4435      	add	r5, r6
 8002212:	eb02 45b5 	add.w	r5, r2, r5, ror #18
 8002216:	ea85 0602 	eor.w	r6, r5, r2
 800221a:	4006      	ands	r6, r0
 800221c:	4470      	add	r0, lr
 800221e:	f8dd e030 	ldr.w	lr, [sp, #48]	; 0x30
 8002222:	4056      	eors	r6, r2
 8002224:	4431      	add	r1, r6
 8002226:	f24c 76aa 	movw	r6, #51114	; 0xc7aa
 800222a:	f6ce 16b6 	movt	r6, #59830	; 0xe9b6
 800222e:	4431      	add	r1, r6
 8002230:	eb05 3131 	add.w	r1, r5, r1, ror #12
 8002234:	ea81 0605 	eor.w	r6, r1, r5
 8002238:	4016      	ands	r6, r2
 800223a:	4442      	add	r2, r8
 800223c:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8002240:	406e      	eors	r6, r5
 8002242:	4430      	add	r0, r6
 8002244:	f241 065d 	movw	r6, #4189	; 0x105d
 8002248:	f2cd 662f 	movt	r6, #54831	; 0xd62f
 800224c:	4430      	add	r0, r6
 800224e:	eb01 60f0 	add.w	r0, r1, r0, ror #27
 8002252:	ea80 0601 	eor.w	r6, r0, r1
 8002256:	402e      	ands	r6, r5
 8002258:	441d      	add	r5, r3
 800225a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800225c:	404e      	eors	r6, r1
 800225e:	4432      	add	r2, r6
 8002260:	f241 4653 	movw	r6, #5203	; 0x1453
 8002264:	f2c0 2644 	movt	r6, #580	; 0x244
 8002268:	4432      	add	r2, r6
 800226a:	eb00 52f2 	add.w	r2, r0, r2, ror #23
 800226e:	ea82 0600 	eor.w	r6, r2, r0
 8002272:	400e      	ands	r6, r1
 8002274:	4471      	add	r1, lr
 8002276:	4046      	eors	r6, r0
 8002278:	4435      	add	r5, r6
 800227a:	f24e 6681 	movw	r6, #59009	; 0xe681
 800227e:	f6cd 06a1 	movt	r6, #55457	; 0xd8a1
 8002282:	4435      	add	r5, r6
 8002284:	eb02 45b5 	add.w	r5, r2, r5, ror #18
 8002288:	ea85 0602 	eor.w	r6, r5, r2
 800228c:	4006      	ands	r6, r0
 800228e:	4418      	add	r0, r3
 8002290:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002292:	4056      	eors	r6, r2
 8002294:	4431      	add	r1, r6
 8002296:	f64f 36c8 	movw	r6, #64456	; 0xfbc8
 800229a:	f2ce 76d3 	movt	r6, #59347	; 0xe7d3
 800229e:	4431      	add	r1, r6
 80022a0:	eb05 3131 	add.w	r1, r5, r1, ror #12
 80022a4:	ea81 0605 	eor.w	r6, r1, r5
 80022a8:	4016      	ands	r6, r2
 80022aa:	4462      	add	r2, ip
 80022ac:	406e      	eors	r6, r5
 80022ae:	4430      	add	r0, r6
 80022b0:	f64c 56e6 	movw	r6, #52710	; 0xcde6
 80022b4:	f2c2 16e1 	movt	r6, #8673	; 0x21e1
 80022b8:	4430      	add	r0, r6
 80022ba:	eb01 60f0 	add.w	r0, r1, r0, ror #27
 80022be:	ea80 0601 	eor.w	r6, r0, r1
 80022c2:	402e      	ands	r6, r5
 80022c4:	441d      	add	r5, r3
 80022c6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80022c8:	404e      	eors	r6, r1
 80022ca:	4432      	add	r2, r6
 80022cc:	f240 76d6 	movw	r6, #2006	; 0x7d6
 80022d0:	f2cc 3637 	movt	r6, #49975	; 0xc337
 80022d4:	4432      	add	r2, r6
 80022d6:	eb00 52f2 	add.w	r2, r0, r2, ror #23
 80022da:	ea82 0600 	eor.w	r6, r2, r0
 80022de:	400e      	ands	r6, r1
 80022e0:	4419      	add	r1, r3
 80022e2:	4046      	eors	r6, r0
 80022e4:	4435      	add	r5, r6
 80022e6:	f640 5687 	movw	r6, #3463	; 0xd87
 80022ea:	f2cf 46d5 	movt	r6, #62677	; 0xf4d5
 80022ee:	4435      	add	r5, r6
 80022f0:	eb02 45b5 	add.w	r5, r2, r5, ror #18
 80022f4:	ea85 0602 	eor.w	r6, r5, r2
 80022f8:	4006      	ands	r6, r0
 80022fa:	4440      	add	r0, r8
 80022fc:	4056      	eors	r6, r2
 80022fe:	4431      	add	r1, r6
 8002300:	f241 46ed 	movw	r6, #5357	; 0x14ed
 8002304:	f2c4 565a 	movt	r6, #17754	; 0x455a
 8002308:	4431      	add	r1, r6
 800230a:	eb05 3131 	add.w	r1, r5, r1, ror #12
 800230e:	ea81 0605 	eor.w	r6, r1, r5
 8002312:	4016      	ands	r6, r2
 8002314:	445a      	add	r2, fp
 8002316:	406e      	eors	r6, r5
 8002318:	4430      	add	r0, r6
 800231a:	f64e 1605 	movw	r6, #59653	; 0xe905
 800231e:	f6ca 16e3 	movt	r6, #43491	; 0xa9e3
 8002322:	4430      	add	r0, r6
 8002324:	eb01 60f0 	add.w	r0, r1, r0, ror #27
 8002328:	ea80 0601 	eor.w	r6, r0, r1
 800232c:	402e      	ands	r6, r5
 800232e:	444d      	add	r5, r9
 8002330:	404e      	eors	r6, r1
 8002332:	4432      	add	r2, r6
 8002334:	f24a 36f8 	movw	r6, #41976	; 0xa3f8
 8002338:	f6cf 46ef 	movt	r6, #64751	; 0xfcef
 800233c:	4432      	add	r2, r6
 800233e:	eb00 52f2 	add.w	r2, r0, r2, ror #23
 8002342:	ea82 0600 	eor.w	r6, r2, r0
 8002346:	400e      	ands	r6, r1
 8002348:	4451      	add	r1, sl
 800234a:	4046      	eors	r6, r0
 800234c:	4435      	add	r5, r6
 800234e:	f240 26d9 	movw	r6, #729	; 0x2d9
 8002352:	f2c6 766f 	movt	r6, #26479	; 0x676f
 8002356:	4435      	add	r5, r6
 8002358:	eb02 45b5 	add.w	r5, r2, r5, ror #18
 800235c:	ea85 0602 	eor.w	r6, r5, r2
 8002360:	ea06 0400 	and.w	r4, r6, r0
 8002364:	4054      	eors	r4, r2
 8002366:	441a      	add	r2, r3
 8002368:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800236a:	4421      	add	r1, r4
 800236c:	f644 448a 	movw	r4, #19594	; 0x4c8a
 8002370:	f6c8 542a 	movt	r4, #36138	; 0x8d2a
 8002374:	4421      	add	r1, r4
 8002376:	eb05 3131 	add.w	r1, r5, r1, ror #12
 800237a:	ea86 0401 	eor.w	r4, r6, r1
 800237e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8002380:	4430      	add	r0, r6
 8002382:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
 8002384:	4420      	add	r0, r4
 8002386:	f643 1442 	movw	r4, #14658	; 0x3942
 800238a:	f6cf 74fa 	movt	r4, #65530	; 0xfffa
 800238e:	4420      	add	r0, r4
 8002390:	ea81 0405 	eor.w	r4, r1, r5
 8002394:	eb01 7030 	add.w	r0, r1, r0, ror #28
 8002398:	4435      	add	r5, r6
 800239a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800239c:	4044      	eors	r4, r0
 800239e:	4422      	add	r2, r4
 80023a0:	f24f 6481 	movw	r4, #63105	; 0xf681
 80023a4:	f2c8 7471 	movt	r4, #34673	; 0x8771
 80023a8:	4422      	add	r2, r4
 80023aa:	ea80 0401 	eor.w	r4, r0, r1
 80023ae:	4461      	add	r1, ip
 80023b0:	f8dd c004 	ldr.w	ip, [sp, #4]
 80023b4:	eb00 5272 	add.w	r2, r0, r2, ror #21
 80023b8:	4054      	eors	r4, r2
 80023ba:	442c      	add	r4, r5
 80023bc:	f246 1522 	movw	r5, #24866	; 0x6122
 80023c0:	f6c6 559d 	movt	r5, #28061	; 0x6d9d
 80023c4:	442c      	add	r4, r5
 80023c6:	ea82 0500 	eor.w	r5, r2, r0
 80023ca:	4418      	add	r0, r3
 80023cc:	9b03      	ldr	r3, [sp, #12]
 80023ce:	eb02 4434 	add.w	r4, r2, r4, ror #16
 80023d2:	4065      	eors	r5, r4
 80023d4:	4429      	add	r1, r5
 80023d6:	f643 050c 	movw	r5, #14348	; 0x380c
 80023da:	f6cf 55e5 	movt	r5, #64997	; 0xfde5
 80023de:	4429      	add	r1, r5
 80023e0:	ea84 0502 	eor.w	r5, r4, r2
 80023e4:	4472      	add	r2, lr
 80023e6:	f8dd e014 	ldr.w	lr, [sp, #20]
 80023ea:	eb04 2171 	add.w	r1, r4, r1, ror #9
 80023ee:	404d      	eors	r5, r1
 80023f0:	4428      	add	r0, r5
 80023f2:	f64e 2544 	movw	r5, #59972	; 0xea44
 80023f6:	f2ca 45be 	movt	r5, #42174	; 0xa4be
 80023fa:	4428      	add	r0, r5
 80023fc:	ea81 0504 	eor.w	r5, r1, r4
 8002400:	444c      	add	r4, r9
 8002402:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
 8002406:	eb01 7030 	add.w	r0, r1, r0, ror #28
 800240a:	4045      	eors	r5, r0
 800240c:	442a      	add	r2, r5
 800240e:	f64c 75a9 	movw	r5, #53161	; 0xcfa9
 8002412:	f6c4 35de 	movt	r5, #19422	; 0x4bde
 8002416:	442a      	add	r2, r5
 8002418:	ea80 0501 	eor.w	r5, r0, r1
 800241c:	4461      	add	r1, ip
 800241e:	eb00 5272 	add.w	r2, r0, r2, ror #21
 8002422:	4055      	eors	r5, r2
 8002424:	442c      	add	r4, r5
 8002426:	f644 3560 	movw	r5, #19296	; 0x4b60
 800242a:	f2cf 65bb 	movt	r5, #63163	; 0xf6bb
 800242e:	442c      	add	r4, r5
 8002430:	ea82 0500 	eor.w	r5, r2, r0
 8002434:	4440      	add	r0, r8
 8002436:	f8dd 8010 	ldr.w	r8, [sp, #16]
 800243a:	eb02 4434 	add.w	r4, r2, r4, ror #16
 800243e:	4065      	eors	r5, r4
 8002440:	4429      	add	r1, r5
 8002442:	f64b 4570 	movw	r5, #48240	; 0xbc70
 8002446:	f6cb 65bf 	movt	r5, #48831	; 0xbebf
 800244a:	4429      	add	r1, r5
 800244c:	ea84 0502 	eor.w	r5, r4, r2
 8002450:	441a      	add	r2, r3
 8002452:	eb04 2171 	add.w	r1, r4, r1, ror #9
 8002456:	404d      	eors	r5, r1
 8002458:	4428      	add	r0, r5
 800245a:	f647 65c6 	movw	r5, #32454	; 0x7ec6
 800245e:	f6c2 059b 	movt	r5, #10395	; 0x289b
 8002462:	4428      	add	r0, r5
 8002464:	ea81 0504 	eor.w	r5, r1, r4
 8002468:	444c      	add	r4, r9
 800246a:	eb01 7030 	add.w	r0, r1, r0, ror #28
 800246e:	4045      	eors	r5, r0
 8002470:	442a      	add	r2, r5
 8002472:	f242 75fa 	movw	r5, #10234	; 0x27fa
 8002476:	f6ce 25a1 	movt	r5, #60065	; 0xeaa1
 800247a:	442a      	add	r2, r5
 800247c:	ea80 0501 	eor.w	r5, r0, r1
 8002480:	4471      	add	r1, lr
 8002482:	eb00 5272 	add.w	r2, r0, r2, ror #21
 8002486:	4055      	eors	r5, r2
 8002488:	442c      	add	r4, r5
 800248a:	f243 0585 	movw	r5, #12421	; 0x3085
 800248e:	f2cd 45ef 	movt	r5, #54511	; 0xd4ef
 8002492:	442c      	add	r4, r5
 8002494:	ea82 0500 	eor.w	r5, r2, r0
 8002498:	4430      	add	r0, r6
 800249a:	f645 16c3 	movw	r6, #22979	; 0x59c3
 800249e:	eb02 4434 	add.w	r4, r2, r4, ror #16
 80024a2:	f2c6 565b 	movt	r6, #25947	; 0x655b
 80024a6:	4065      	eors	r5, r4
 80024a8:	4429      	add	r1, r5
 80024aa:	f641 5505 	movw	r5, #7429	; 0x1d05
 80024ae:	f2c0 4588 	movt	r5, #1160	; 0x488
 80024b2:	4429      	add	r1, r5
 80024b4:	ea84 0502 	eor.w	r5, r4, r2
 80024b8:	4452      	add	r2, sl
 80024ba:	eb04 2171 	add.w	r1, r4, r1, ror #9
 80024be:	404d      	eors	r5, r1
 80024c0:	4428      	add	r0, r5
 80024c2:	f24d 0539 	movw	r5, #53305	; 0xd039
 80024c6:	f6cd 15d4 	movt	r5, #55764	; 0xd9d4
 80024ca:	4428      	add	r0, r5
 80024cc:	ea81 0504 	eor.w	r5, r1, r4
 80024d0:	4444      	add	r4, r8
 80024d2:	eb01 7030 	add.w	r0, r1, r0, ror #28
 80024d6:	4045      	eors	r5, r0
 80024d8:	442a      	add	r2, r5
 80024da:	f649 15e5 	movw	r5, #39397	; 0x99e5
 80024de:	f2ce 65db 	movt	r5, #59099	; 0xe6db
 80024e2:	442a      	add	r2, r5
 80024e4:	ea80 0501 	eor.w	r5, r0, r1
 80024e8:	4459      	add	r1, fp
 80024ea:	eb00 5272 	add.w	r2, r0, r2, ror #21
 80024ee:	4055      	eors	r5, r2
 80024f0:	442c      	add	r4, r5
 80024f2:	f647 45f8 	movw	r5, #31992	; 0x7cf8
 80024f6:	f6c1 75a2 	movt	r5, #8098	; 0x1fa2
 80024fa:	442c      	add	r4, r5
 80024fc:	ea82 0500 	eor.w	r5, r2, r0
 8002500:	4418      	add	r0, r3
 8002502:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002504:	eb02 4434 	add.w	r4, r2, r4, ror #16
 8002508:	4065      	eors	r5, r4
 800250a:	4429      	add	r1, r5
 800250c:	f245 6565 	movw	r5, #22117	; 0x5665
 8002510:	f2cc 45ac 	movt	r5, #50348	; 0xc4ac
 8002514:	4429      	add	r1, r5
 8002516:	eb04 2171 	add.w	r1, r4, r1, ror #9
 800251a:	ea61 0502 	orn	r5, r1, r2
 800251e:	441a      	add	r2, r3
 8002520:	9b00      	ldr	r3, [sp, #0]
 8002522:	4065      	eors	r5, r4
 8002524:	4428      	add	r0, r5
 8002526:	f242 2544 	movw	r5, #8772	; 0x2244
 800252a:	f2cf 4529 	movt	r5, #62505	; 0xf429
 800252e:	4428      	add	r0, r5
 8002530:	4423      	add	r3, r4
 8002532:	eb01 60b0 	add.w	r0, r1, r0, ror #26
 8002536:	ea60 0504 	orn	r5, r0, r4
 800253a:	f242 34a7 	movw	r4, #9127	; 0x23a7
 800253e:	404d      	eors	r5, r1
 8002540:	f6ca 3494 	movt	r4, #43924	; 0xab94
 8002544:	442a      	add	r2, r5
 8002546:	f64f 7597 	movw	r5, #65431	; 0xff97
 800254a:	f2c4 352a 	movt	r5, #17194	; 0x432a
 800254e:	442a      	add	r2, r5
 8002550:	eb00 52b2 	add.w	r2, r0, r2, ror #22
 8002554:	ea62 0501 	orn	r5, r2, r1
 8002558:	4045      	eors	r5, r0
 800255a:	442b      	add	r3, r5
 800255c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800255e:	4423      	add	r3, r4
 8002560:	eb02 4373 	add.w	r3, r2, r3, ror #17
 8002564:	ea63 0400 	orn	r4, r3, r0
 8002568:	4450      	add	r0, sl
 800256a:	4429      	add	r1, r5
 800256c:	4054      	eors	r4, r2
 800256e:	9d11      	ldr	r5, [sp, #68]	; 0x44
 8002570:	4421      	add	r1, r4
 8002572:	f24a 0439 	movw	r4, #41017	; 0xa039
 8002576:	f6cf 4493 	movt	r4, #64659	; 0xfc93
 800257a:	4421      	add	r1, r4
 800257c:	eb03 21f1 	add.w	r1, r3, r1, ror #11
 8002580:	ea61 0402 	orn	r4, r1, r2
 8002584:	444a      	add	r2, r9
 8002586:	405c      	eors	r4, r3
 8002588:	4420      	add	r0, r4
 800258a:	4430      	add	r0, r6
 800258c:	eb01 60b0 	add.w	r0, r1, r0, ror #26
 8002590:	ea60 0603 	orn	r6, r0, r3
 8002594:	4463      	add	r3, ip
 8002596:	404e      	eors	r6, r1
 8002598:	4432      	add	r2, r6
 800259a:	f64c 4692 	movw	r6, #52370	; 0xcc92
 800259e:	f6c8 760c 	movt	r6, #36620	; 0x8f0c
 80025a2:	4432      	add	r2, r6
 80025a4:	eb00 52b2 	add.w	r2, r0, r2, ror #22
 80025a8:	ea62 0601 	orn	r6, r2, r1
 80025ac:	4429      	add	r1, r5
 80025ae:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 80025b0:	4046      	eors	r6, r0
 80025b2:	4433      	add	r3, r6
 80025b4:	f24f 467d 	movw	r6, #62589	; 0xf47d
 80025b8:	f6cf 76ef 	movt	r6, #65519	; 0xffef
 80025bc:	4433      	add	r3, r6
 80025be:	eb02 4373 	add.w	r3, r2, r3, ror #17
 80025c2:	ea63 0600 	orn	r6, r3, r0
 80025c6:	4428      	add	r0, r5
 80025c8:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80025ca:	4056      	eors	r6, r2
 80025cc:	4431      	add	r1, r6
 80025ce:	f645 56d1 	movw	r6, #24017	; 0x5dd1
 80025d2:	f2c8 5684 	movt	r6, #34180	; 0x8584
 80025d6:	4431      	add	r1, r6
 80025d8:	eb03 21f1 	add.w	r1, r3, r1, ror #11
 80025dc:	ea61 0602 	orn	r6, r1, r2
 80025e0:	4442      	add	r2, r8
 80025e2:	405e      	eors	r6, r3
 80025e4:	4430      	add	r0, r6
 80025e6:	f647 664f 	movw	r6, #32335	; 0x7e4f
 80025ea:	f6c6 76a8 	movt	r6, #28584	; 0x6fa8
 80025ee:	4430      	add	r0, r6
 80025f0:	eb01 60b0 	add.w	r0, r1, r0, ror #26
 80025f4:	ea60 0603 	orn	r6, r0, r3
 80025f8:	4473      	add	r3, lr
 80025fa:	404e      	eors	r6, r1
 80025fc:	4432      	add	r2, r6
 80025fe:	f24e 66e0 	movw	r6, #59104	; 0xe6e0
 8002602:	f6cf 662c 	movt	r6, #65068	; 0xfe2c
 8002606:	4432      	add	r2, r6
 8002608:	eb00 52b2 	add.w	r2, r0, r2, ror #22
 800260c:	ea62 0601 	orn	r6, r2, r1
 8002610:	4429      	add	r1, r5
 8002612:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 8002614:	4046      	eors	r6, r0
 8002616:	4433      	add	r3, r6
 8002618:	f244 3614 	movw	r6, #17172	; 0x4314
 800261c:	f2ca 3601 	movt	r6, #41729	; 0xa301
 8002620:	4433      	add	r3, r6
 8002622:	eb02 4373 	add.w	r3, r2, r3, ror #17
 8002626:	ea63 0600 	orn	r6, r3, r0
 800262a:	4428      	add	r0, r5
 800262c:	9d07      	ldr	r5, [sp, #28]
 800262e:	4056      	eors	r6, r2
 8002630:	4431      	add	r1, r6
 8002632:	f241 16a1 	movw	r6, #4513	; 0x11a1
 8002636:	f6c4 6608 	movt	r6, #19976	; 0x4e08
 800263a:	4431      	add	r1, r6
 800263c:	eb03 21f1 	add.w	r1, r3, r1, ror #11
 8002640:	ea61 0602 	orn	r6, r1, r2
 8002644:	405e      	eors	r6, r3
 8002646:	4430      	add	r0, r6
 8002648:	f647 6682 	movw	r6, #32386	; 0x7e82
 800264c:	f2cf 7653 	movt	r6, #63315	; 0xf753
 8002650:	4430      	add	r0, r6
 8002652:	9e08      	ldr	r6, [sp, #32]
 8002654:	eb01 60b0 	add.w	r0, r1, r0, ror #26
 8002658:	4406      	add	r6, r0
 800265a:	602e      	str	r6, [r5, #0]
 800265c:	ea60 0603 	orn	r6, r0, r3
 8002660:	445b      	add	r3, fp
 8002662:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 8002664:	404e      	eors	r6, r1
 8002666:	4422      	add	r2, r4
 8002668:	9c10      	ldr	r4, [sp, #64]	; 0x40
 800266a:	4432      	add	r2, r6
 800266c:	f24f 2635 	movw	r6, #62005	; 0xf235
 8002670:	f6cb 563a 	movt	r6, #48442	; 0xbd3a
 8002674:	4432      	add	r2, r6
 8002676:	eb00 52b2 	add.w	r2, r0, r2, ror #22
 800267a:	ea62 0601 	orn	r6, r2, r1
 800267e:	4421      	add	r1, r4
 8002680:	4046      	eors	r6, r0
 8002682:	4433      	add	r3, r6
 8002684:	f24d 26bb 	movw	r6, #53947	; 0xd2bb
 8002688:	f6c2 26d7 	movt	r6, #10967	; 0x2ad7
 800268c:	4433      	add	r3, r6
 800268e:	686e      	ldr	r6, [r5, #4]
 8002690:	eb02 4373 	add.w	r3, r2, r3, ror #17
 8002694:	ea63 0000 	orn	r0, r3, r0
 8002698:	4050      	eors	r0, r2
 800269a:	4408      	add	r0, r1
 800269c:	f24d 3191 	movw	r1, #54161	; 0xd391
 80026a0:	441e      	add	r6, r3
 80026a2:	f6ce 3186 	movt	r1, #60294	; 0xeb86
 80026a6:	4408      	add	r0, r1
 80026a8:	4629      	mov	r1, r5
 80026aa:	eb06 20f0 	add.w	r0, r6, r0, ror #11
 80026ae:	6048      	str	r0, [r1, #4]
 80026b0:	6888      	ldr	r0, [r1, #8]
 80026b2:	4418      	add	r0, r3
 80026b4:	6088      	str	r0, [r1, #8]
 80026b6:	68c8      	ldr	r0, [r1, #12]
 80026b8:	4410      	add	r0, r2
 80026ba:	60c8      	str	r0, [r1, #12]
 80026bc:	b022      	add	sp, #136	; 0x88
 80026be:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80026c2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080026c4 <initialise_benchmark>:
 80026c4:	4770      	bx	lr

080026c6 <benchmark>:
 80026c6:	b580      	push	{r7, lr}
 80026c8:	466f      	mov	r7, sp
 80026ca:	f240 0014 	movw	r0, #20
 80026ce:	f240 0124 	movw	r1, #36	; 0x24
 80026d2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026d6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026da:	f7ff fc4b 	bl	8001f74 <_nettle_md5_compress>
 80026de:	2000      	movs	r0, #0
 80026e0:	bd80      	pop	{r7, pc}

080026e2 <verify_benchmark>:
 80026e2:	b5d0      	push	{r4, r6, r7, lr}
 80026e4:	af02      	add	r7, sp, #8
 80026e6:	f240 0014 	movw	r0, #20
 80026ea:	f648 2cf9 	movw	ip, #35577	; 0x8af9
 80026ee:	f64e 13fe 	movw	r3, #59902	; 0xe9fe
 80026f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026f6:	f6c2 3c83 	movt	ip, #11139	; 0x2b83
 80026fa:	f6c4 5354 	movt	r3, #19796	; 0x4d54
 80026fe:	e890 4016 	ldmia.w	r0, {r1, r2, r4, lr}
 8002702:	2000      	movs	r0, #0
 8002704:	4562      	cmp	r2, ip
 8002706:	f04f 0200 	mov.w	r2, #0
 800270a:	bf08      	it	eq
 800270c:	2201      	moveq	r2, #1
 800270e:	4299      	cmp	r1, r3
 8002710:	f04f 0100 	mov.w	r1, #0
 8002714:	bf08      	it	eq
 8002716:	2101      	moveq	r1, #1
 8002718:	4011      	ands	r1, r2
 800271a:	f645 4236 	movw	r2, #23606	; 0x5c36
 800271e:	f6c0 62ed 	movt	r2, #3821	; 0xeed
 8002722:	4294      	cmp	r4, r2
 8002724:	f04f 0200 	mov.w	r2, #0
 8002728:	bf08      	it	eq
 800272a:	2201      	moveq	r2, #1
 800272c:	4011      	ands	r1, r2
 800272e:	f649 72ed 	movw	r2, #40941	; 0x9fed
 8002732:	f2ca 72d7 	movt	r2, #42967	; 0xa7d7
 8002736:	4596      	cmp	lr, r2
 8002738:	bf08      	it	eq
 800273a:	2001      	moveq	r0, #1
 800273c:	4008      	ands	r0, r1
 800273e:	bdd0      	pop	{r4, r6, r7, pc}

08002740 <SysTick_Handler>:
 8002740:	b580      	push	{r7, lr}
 8002742:	466f      	mov	r7, sp
 8002744:	f7fe fce0 	bl	8001108 <HAL_IncTick>
 8002748:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800274c:	f7fe bd3a 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002750 <_read>:
 8002750:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002752:	af03      	add	r7, sp, #12
 8002754:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002758:	4614      	mov	r4, r2
 800275a:	460d      	mov	r5, r1
 800275c:	2c01      	cmp	r4, #1
 800275e:	db06      	blt.n	800276e <_read+0x1e>
 8002760:	4626      	mov	r6, r4
 8002762:	f3af 8000 	nop.w
 8002766:	f805 0b01 	strb.w	r0, [r5], #1
 800276a:	3e01      	subs	r6, #1
 800276c:	d1f9      	bne.n	8002762 <_read+0x12>
 800276e:	4620      	mov	r0, r4
 8002770:	f85d bb04 	ldr.w	fp, [sp], #4
 8002774:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002776 <_write>:
 8002776:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002778:	af03      	add	r7, sp, #12
 800277a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800277e:	4614      	mov	r4, r2
 8002780:	460d      	mov	r5, r1
 8002782:	2c01      	cmp	r4, #1
 8002784:	db06      	blt.n	8002794 <_write+0x1e>
 8002786:	4626      	mov	r6, r4
 8002788:	f815 0b01 	ldrb.w	r0, [r5], #1
 800278c:	f7ff fb93 	bl	8001eb6 <__io_putchar>
 8002790:	3e01      	subs	r6, #1
 8002792:	d1f9      	bne.n	8002788 <_write+0x12>
 8002794:	4620      	mov	r0, r4
 8002796:	f85d bb04 	ldr.w	fp, [sp], #4
 800279a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800279c <_sbrk>:
 800279c:	f640 22b8 	movw	r2, #2744	; 0xab8
 80027a0:	4601      	mov	r1, r0
 80027a2:	466b      	mov	r3, sp
 80027a4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80027a8:	6810      	ldr	r0, [r2, #0]
 80027aa:	2800      	cmp	r0, #0
 80027ac:	bf02      	ittt	eq
 80027ae:	f640 3060 	movweq	r0, #2912	; 0xb60
 80027b2:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80027b6:	6010      	streq	r0, [r2, #0]
 80027b8:	4401      	add	r1, r0
 80027ba:	4299      	cmp	r1, r3
 80027bc:	bf9c      	itt	ls
 80027be:	6011      	strls	r1, [r2, #0]
 80027c0:	4770      	bxls	lr
 80027c2:	b580      	push	{r7, lr}
 80027c4:	466f      	mov	r7, sp
 80027c6:	f000 f865 	bl	8002894 <__errno>
 80027ca:	210c      	movs	r1, #12
 80027cc:	6001      	str	r1, [r0, #0]
 80027ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027d2:	bd80      	pop	{r7, pc}

080027d4 <_close>:
 80027d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80027d8:	4770      	bx	lr

080027da <_fstat>:
 80027da:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80027de:	6048      	str	r0, [r1, #4]
 80027e0:	2000      	movs	r0, #0
 80027e2:	4770      	bx	lr

080027e4 <_isatty>:
 80027e4:	2001      	movs	r0, #1
 80027e6:	4770      	bx	lr

080027e8 <_lseek>:
 80027e8:	2000      	movs	r0, #0
 80027ea:	4770      	bx	lr

080027ec <SystemInit>:
 80027ec:	f64e 5088 	movw	r0, #60808	; 0xed88
 80027f0:	f04f 0c00 	mov.w	ip, #0
 80027f4:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80027f8:	6801      	ldr	r1, [r0, #0]
 80027fa:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80027fe:	6001      	str	r1, [r0, #0]
 8002800:	f241 0100 	movw	r1, #4096	; 0x1000
 8002804:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002808:	680a      	ldr	r2, [r1, #0]
 800280a:	f042 0201 	orr.w	r2, r2, #1
 800280e:	600a      	str	r2, [r1, #0]
 8002810:	f8c1 c008 	str.w	ip, [r1, #8]
 8002814:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002818:	680b      	ldr	r3, [r1, #0]
 800281a:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800281e:	401a      	ands	r2, r3
 8002820:	600a      	str	r2, [r1, #0]
 8002822:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002826:	60ca      	str	r2, [r1, #12]
 8002828:	680a      	ldr	r2, [r1, #0]
 800282a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800282e:	600a      	str	r2, [r1, #0]
 8002830:	f8c1 c018 	str.w	ip, [r1, #24]
 8002834:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002838:	f840 1c80 	str.w	r1, [r0, #-128]
 800283c:	4770      	bx	lr
	...

08002840 <Reset_Handler>:
 8002840:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002878 <LoopForever+0x2>
 8002844:	2100      	movs	r1, #0
 8002846:	e003      	b.n	8002850 <LoopCopyDataInit>

08002848 <CopyDataInit>:
 8002848:	4b0c      	ldr	r3, [pc, #48]	; (800287c <LoopForever+0x6>)
 800284a:	585b      	ldr	r3, [r3, r1]
 800284c:	5043      	str	r3, [r0, r1]
 800284e:	3104      	adds	r1, #4

08002850 <LoopCopyDataInit>:
 8002850:	480b      	ldr	r0, [pc, #44]	; (8002880 <LoopForever+0xa>)
 8002852:	4b0c      	ldr	r3, [pc, #48]	; (8002884 <LoopForever+0xe>)
 8002854:	1842      	adds	r2, r0, r1
 8002856:	429a      	cmp	r2, r3
 8002858:	d3f6      	bcc.n	8002848 <CopyDataInit>
 800285a:	4a0b      	ldr	r2, [pc, #44]	; (8002888 <LoopForever+0x12>)
 800285c:	e002      	b.n	8002864 <LoopFillZerobss>

0800285e <FillZerobss>:
 800285e:	2300      	movs	r3, #0
 8002860:	f842 3b04 	str.w	r3, [r2], #4

08002864 <LoopFillZerobss>:
 8002864:	4b09      	ldr	r3, [pc, #36]	; (800288c <LoopForever+0x16>)
 8002866:	429a      	cmp	r2, r3
 8002868:	d3f9      	bcc.n	800285e <FillZerobss>
 800286a:	f7ff ffbf 	bl	80027ec <SystemInit>
 800286e:	f000 f817 	bl	80028a0 <__libc_init_array>
 8002872:	f7ff fb31 	bl	8001ed8 <main>

08002876 <LoopForever>:
 8002876:	e7fe      	b.n	8002876 <LoopForever>
 8002878:	20018000 	.word	0x20018000
 800287c:	080079f0 	.word	0x080079f0
 8002880:	20000000 	.word	0x20000000
 8002884:	20000a18 	.word	0x20000a18
 8002888:	20000a18 	.word	0x20000a18
 800288c:	20000b60 	.word	0x20000b60

08002890 <ADC1_2_IRQHandler>:
 8002890:	e7fe      	b.n	8002890 <ADC1_2_IRQHandler>
	...

08002894 <__errno>:
 8002894:	4b01      	ldr	r3, [pc, #4]	; (800289c <__errno+0x8>)
 8002896:	6818      	ldr	r0, [r3, #0]
 8002898:	4770      	bx	lr
 800289a:	bf00      	nop
 800289c:	20000068 	.word	0x20000068

080028a0 <__libc_init_array>:
 80028a0:	b570      	push	{r4, r5, r6, lr}
 80028a2:	4e0d      	ldr	r6, [pc, #52]	; (80028d8 <__libc_init_array+0x38>)
 80028a4:	4d0d      	ldr	r5, [pc, #52]	; (80028dc <__libc_init_array+0x3c>)
 80028a6:	1b76      	subs	r6, r6, r5
 80028a8:	10b6      	asrs	r6, r6, #2
 80028aa:	d006      	beq.n	80028ba <__libc_init_array+0x1a>
 80028ac:	2400      	movs	r4, #0
 80028ae:	3401      	adds	r4, #1
 80028b0:	f855 3b04 	ldr.w	r3, [r5], #4
 80028b4:	4798      	blx	r3
 80028b6:	42a6      	cmp	r6, r4
 80028b8:	d1f9      	bne.n	80028ae <__libc_init_array+0xe>
 80028ba:	4e09      	ldr	r6, [pc, #36]	; (80028e0 <__libc_init_array+0x40>)
 80028bc:	4d09      	ldr	r5, [pc, #36]	; (80028e4 <__libc_init_array+0x44>)
 80028be:	1b76      	subs	r6, r6, r5
 80028c0:	f004 fea8 	bl	8007614 <_init>
 80028c4:	10b6      	asrs	r6, r6, #2
 80028c6:	d006      	beq.n	80028d6 <__libc_init_array+0x36>
 80028c8:	2400      	movs	r4, #0
 80028ca:	3401      	adds	r4, #1
 80028cc:	f855 3b04 	ldr.w	r3, [r5], #4
 80028d0:	4798      	blx	r3
 80028d2:	42a6      	cmp	r6, r4
 80028d4:	d1f9      	bne.n	80028ca <__libc_init_array+0x2a>
 80028d6:	bd70      	pop	{r4, r5, r6, pc}
 80028d8:	080079e0 	.word	0x080079e0
 80028dc:	080079e0 	.word	0x080079e0
 80028e0:	080079e8 	.word	0x080079e8
 80028e4:	080079e0 	.word	0x080079e0

080028e8 <memset>:
 80028e8:	b4f0      	push	{r4, r5, r6, r7}
 80028ea:	0786      	lsls	r6, r0, #30
 80028ec:	d043      	beq.n	8002976 <memset+0x8e>
 80028ee:	1e54      	subs	r4, r2, #1
 80028f0:	2a00      	cmp	r2, #0
 80028f2:	d03e      	beq.n	8002972 <memset+0x8a>
 80028f4:	b2ca      	uxtb	r2, r1
 80028f6:	4603      	mov	r3, r0
 80028f8:	e002      	b.n	8002900 <memset+0x18>
 80028fa:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80028fe:	d338      	bcc.n	8002972 <memset+0x8a>
 8002900:	f803 2b01 	strb.w	r2, [r3], #1
 8002904:	079d      	lsls	r5, r3, #30
 8002906:	d1f8      	bne.n	80028fa <memset+0x12>
 8002908:	2c03      	cmp	r4, #3
 800290a:	d92b      	bls.n	8002964 <memset+0x7c>
 800290c:	b2cd      	uxtb	r5, r1
 800290e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002912:	2c0f      	cmp	r4, #15
 8002914:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002918:	d916      	bls.n	8002948 <memset+0x60>
 800291a:	f1a4 0710 	sub.w	r7, r4, #16
 800291e:	093f      	lsrs	r7, r7, #4
 8002920:	f103 0620 	add.w	r6, r3, #32
 8002924:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002928:	f103 0210 	add.w	r2, r3, #16
 800292c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002930:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002934:	3210      	adds	r2, #16
 8002936:	42b2      	cmp	r2, r6
 8002938:	d1f8      	bne.n	800292c <memset+0x44>
 800293a:	f004 040f 	and.w	r4, r4, #15
 800293e:	3701      	adds	r7, #1
 8002940:	2c03      	cmp	r4, #3
 8002942:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002946:	d90d      	bls.n	8002964 <memset+0x7c>
 8002948:	461e      	mov	r6, r3
 800294a:	4622      	mov	r2, r4
 800294c:	3a04      	subs	r2, #4
 800294e:	2a03      	cmp	r2, #3
 8002950:	f846 5b04 	str.w	r5, [r6], #4
 8002954:	d8fa      	bhi.n	800294c <memset+0x64>
 8002956:	1f22      	subs	r2, r4, #4
 8002958:	f022 0203 	bic.w	r2, r2, #3
 800295c:	3204      	adds	r2, #4
 800295e:	4413      	add	r3, r2
 8002960:	f004 0403 	and.w	r4, r4, #3
 8002964:	b12c      	cbz	r4, 8002972 <memset+0x8a>
 8002966:	b2c9      	uxtb	r1, r1
 8002968:	441c      	add	r4, r3
 800296a:	f803 1b01 	strb.w	r1, [r3], #1
 800296e:	429c      	cmp	r4, r3
 8002970:	d1fb      	bne.n	800296a <memset+0x82>
 8002972:	bcf0      	pop	{r4, r5, r6, r7}
 8002974:	4770      	bx	lr
 8002976:	4614      	mov	r4, r2
 8002978:	4603      	mov	r3, r0
 800297a:	e7c5      	b.n	8002908 <memset+0x20>

0800297c <printf>:
 800297c:	b40f      	push	{r0, r1, r2, r3}
 800297e:	b500      	push	{lr}
 8002980:	4907      	ldr	r1, [pc, #28]	; (80029a0 <printf+0x24>)
 8002982:	b083      	sub	sp, #12
 8002984:	ab04      	add	r3, sp, #16
 8002986:	6808      	ldr	r0, [r1, #0]
 8002988:	f853 2b04 	ldr.w	r2, [r3], #4
 800298c:	6881      	ldr	r1, [r0, #8]
 800298e:	9301      	str	r3, [sp, #4]
 8002990:	f000 f85e 	bl	8002a50 <_vfprintf_r>
 8002994:	b003      	add	sp, #12
 8002996:	f85d eb04 	ldr.w	lr, [sp], #4
 800299a:	b004      	add	sp, #16
 800299c:	4770      	bx	lr
 800299e:	bf00      	nop
 80029a0:	20000068 	.word	0x20000068

080029a4 <_puts_r>:
 80029a4:	b570      	push	{r4, r5, r6, lr}
 80029a6:	4605      	mov	r5, r0
 80029a8:	b088      	sub	sp, #32
 80029aa:	4608      	mov	r0, r1
 80029ac:	460c      	mov	r4, r1
 80029ae:	f7fd fe47 	bl	8000640 <strlen>
 80029b2:	4a22      	ldr	r2, [pc, #136]	; (8002a3c <_puts_r+0x98>)
 80029b4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80029b6:	9404      	str	r4, [sp, #16]
 80029b8:	2601      	movs	r6, #1
 80029ba:	1c44      	adds	r4, r0, #1
 80029bc:	a904      	add	r1, sp, #16
 80029be:	9206      	str	r2, [sp, #24]
 80029c0:	2202      	movs	r2, #2
 80029c2:	9403      	str	r4, [sp, #12]
 80029c4:	9005      	str	r0, [sp, #20]
 80029c6:	68ac      	ldr	r4, [r5, #8]
 80029c8:	9607      	str	r6, [sp, #28]
 80029ca:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80029ce:	b31b      	cbz	r3, 8002a18 <_puts_r+0x74>
 80029d0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80029d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029d6:	07ce      	lsls	r6, r1, #31
 80029d8:	b29a      	uxth	r2, r3
 80029da:	d401      	bmi.n	80029e0 <_puts_r+0x3c>
 80029dc:	0590      	lsls	r0, r2, #22
 80029de:	d525      	bpl.n	8002a2c <_puts_r+0x88>
 80029e0:	0491      	lsls	r1, r2, #18
 80029e2:	d406      	bmi.n	80029f2 <_puts_r+0x4e>
 80029e4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80029e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80029ea:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80029ee:	81a3      	strh	r3, [r4, #12]
 80029f0:	6662      	str	r2, [r4, #100]	; 0x64
 80029f2:	4628      	mov	r0, r5
 80029f4:	aa01      	add	r2, sp, #4
 80029f6:	4621      	mov	r1, r4
 80029f8:	f003 f85e 	bl	8005ab8 <__sfvwrite_r>
 80029fc:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80029fe:	2800      	cmp	r0, #0
 8002a00:	bf0c      	ite	eq
 8002a02:	250a      	moveq	r5, #10
 8002a04:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002a08:	07da      	lsls	r2, r3, #31
 8002a0a:	d402      	bmi.n	8002a12 <_puts_r+0x6e>
 8002a0c:	89a3      	ldrh	r3, [r4, #12]
 8002a0e:	059b      	lsls	r3, r3, #22
 8002a10:	d506      	bpl.n	8002a20 <_puts_r+0x7c>
 8002a12:	4628      	mov	r0, r5
 8002a14:	b008      	add	sp, #32
 8002a16:	bd70      	pop	{r4, r5, r6, pc}
 8002a18:	4628      	mov	r0, r5
 8002a1a:	f002 feb7 	bl	800578c <__sinit>
 8002a1e:	e7d7      	b.n	80029d0 <_puts_r+0x2c>
 8002a20:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a22:	f003 fa05 	bl	8005e30 <__retarget_lock_release_recursive>
 8002a26:	4628      	mov	r0, r5
 8002a28:	b008      	add	sp, #32
 8002a2a:	bd70      	pop	{r4, r5, r6, pc}
 8002a2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a2e:	f003 f9fd 	bl	8005e2c <__retarget_lock_acquire_recursive>
 8002a32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002a36:	b29a      	uxth	r2, r3
 8002a38:	e7d2      	b.n	80029e0 <_puts_r+0x3c>
 8002a3a:	bf00      	nop
 8002a3c:	0800774c 	.word	0x0800774c

08002a40 <puts>:
 8002a40:	4b02      	ldr	r3, [pc, #8]	; (8002a4c <puts+0xc>)
 8002a42:	4601      	mov	r1, r0
 8002a44:	6818      	ldr	r0, [r3, #0]
 8002a46:	f7ff bfad 	b.w	80029a4 <_puts_r>
 8002a4a:	bf00      	nop
 8002a4c:	20000068 	.word	0x20000068

08002a50 <_vfprintf_r>:
 8002a50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002a54:	b0d7      	sub	sp, #348	; 0x15c
 8002a56:	461c      	mov	r4, r3
 8002a58:	4689      	mov	r9, r1
 8002a5a:	4617      	mov	r7, r2
 8002a5c:	4605      	mov	r5, r0
 8002a5e:	9003      	str	r0, [sp, #12]
 8002a60:	f003 f9d2 	bl	8005e08 <_localeconv_r>
 8002a64:	6803      	ldr	r3, [r0, #0]
 8002a66:	9316      	str	r3, [sp, #88]	; 0x58
 8002a68:	4618      	mov	r0, r3
 8002a6a:	f7fd fde9 	bl	8000640 <strlen>
 8002a6e:	9408      	str	r4, [sp, #32]
 8002a70:	9015      	str	r0, [sp, #84]	; 0x54
 8002a72:	b11d      	cbz	r5, 8002a7c <_vfprintf_r+0x2c>
 8002a74:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a76:	2b00      	cmp	r3, #0
 8002a78:	f000 8107 	beq.w	8002c8a <_vfprintf_r+0x23a>
 8002a7c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a80:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a84:	07c8      	lsls	r0, r1, #31
 8002a86:	b293      	uxth	r3, r2
 8002a88:	d402      	bmi.n	8002a90 <_vfprintf_r+0x40>
 8002a8a:	0599      	lsls	r1, r3, #22
 8002a8c:	f140 811f 	bpl.w	8002cce <_vfprintf_r+0x27e>
 8002a90:	049e      	lsls	r6, r3, #18
 8002a92:	d40a      	bmi.n	8002aaa <_vfprintf_r+0x5a>
 8002a94:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a98:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002a9c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002aa0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002aa4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002aa8:	b29b      	uxth	r3, r3
 8002aaa:	071d      	lsls	r5, r3, #28
 8002aac:	f140 80b2 	bpl.w	8002c14 <_vfprintf_r+0x1c4>
 8002ab0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002ab4:	2a00      	cmp	r2, #0
 8002ab6:	f000 80ad 	beq.w	8002c14 <_vfprintf_r+0x1c4>
 8002aba:	f003 021a 	and.w	r2, r3, #26
 8002abe:	2a0a      	cmp	r2, #10
 8002ac0:	f000 80c9 	beq.w	8002c56 <_vfprintf_r+0x206>
 8002ac4:	2300      	movs	r3, #0
 8002ac6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002ce0 <_vfprintf_r+0x290>
 8002aca:	9310      	str	r3, [sp, #64]	; 0x40
 8002acc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002ad0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ad2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002ad6:	931b      	str	r3, [sp, #108]	; 0x6c
 8002ad8:	9318      	str	r3, [sp, #96]	; 0x60
 8002ada:	9305      	str	r3, [sp, #20]
 8002adc:	ab2d      	add	r3, sp, #180	; 0xb4
 8002ade:	932a      	str	r3, [sp, #168]	; 0xa8
 8002ae0:	469b      	mov	fp, r3
 8002ae2:	783b      	ldrb	r3, [r7, #0]
 8002ae4:	f8cd 901c 	str.w	r9, [sp, #28]
 8002ae8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002aec:	2b00      	cmp	r3, #0
 8002aee:	f000 8259 	beq.w	8002fa4 <_vfprintf_r+0x554>
 8002af2:	2b25      	cmp	r3, #37	; 0x25
 8002af4:	463c      	mov	r4, r7
 8002af6:	d102      	bne.n	8002afe <_vfprintf_r+0xae>
 8002af8:	e01d      	b.n	8002b36 <_vfprintf_r+0xe6>
 8002afa:	2b25      	cmp	r3, #37	; 0x25
 8002afc:	d003      	beq.n	8002b06 <_vfprintf_r+0xb6>
 8002afe:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002b02:	2b00      	cmp	r3, #0
 8002b04:	d1f9      	bne.n	8002afa <_vfprintf_r+0xaa>
 8002b06:	1be5      	subs	r5, r4, r7
 8002b08:	b18d      	cbz	r5, 8002b2e <_vfprintf_r+0xde>
 8002b0a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002b0e:	3301      	adds	r3, #1
 8002b10:	442a      	add	r2, r5
 8002b12:	2b07      	cmp	r3, #7
 8002b14:	f8cb 7000 	str.w	r7, [fp]
 8002b18:	f8cb 5004 	str.w	r5, [fp, #4]
 8002b1c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002b20:	f300 80ca 	bgt.w	8002cb8 <_vfprintf_r+0x268>
 8002b24:	f10b 0b08 	add.w	fp, fp, #8
 8002b28:	9b05      	ldr	r3, [sp, #20]
 8002b2a:	442b      	add	r3, r5
 8002b2c:	9305      	str	r3, [sp, #20]
 8002b2e:	7823      	ldrb	r3, [r4, #0]
 8002b30:	2b00      	cmp	r3, #0
 8002b32:	f000 8237 	beq.w	8002fa4 <_vfprintf_r+0x554>
 8002b36:	2300      	movs	r3, #0
 8002b38:	7866      	ldrb	r6, [r4, #1]
 8002b3a:	9306      	str	r3, [sp, #24]
 8002b3c:	4698      	mov	r8, r3
 8002b3e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b42:	f104 0a01 	add.w	sl, r4, #1
 8002b46:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002b4a:	252b      	movs	r5, #43	; 0x2b
 8002b4c:	f10a 0a01 	add.w	sl, sl, #1
 8002b50:	f1a6 0320 	sub.w	r3, r6, #32
 8002b54:	2b5a      	cmp	r3, #90	; 0x5a
 8002b56:	f200 842a 	bhi.w	80033ae <_vfprintf_r+0x95e>
 8002b5a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002b5e:	03aa      	.short	0x03aa
 8002b60:	04280428 	.word	0x04280428
 8002b64:	0428029c 	.word	0x0428029c
 8002b68:	04280428 	.word	0x04280428
 8002b6c:	042802a7 	.word	0x042802a7
 8002b70:	02c60428 	.word	0x02c60428
 8002b74:	042802d2 	.word	0x042802d2
 8002b78:	02dc02d7 	.word	0x02dc02d7
 8002b7c:	02f60428 	.word	0x02f60428
 8002b80:	026d026d 	.word	0x026d026d
 8002b84:	026d026d 	.word	0x026d026d
 8002b88:	026d026d 	.word	0x026d026d
 8002b8c:	026d026d 	.word	0x026d026d
 8002b90:	0428026d 	.word	0x0428026d
 8002b94:	04280428 	.word	0x04280428
 8002b98:	04280428 	.word	0x04280428
 8002b9c:	04280428 	.word	0x04280428
 8002ba0:	042802fb 	.word	0x042802fb
 8002ba4:	03f3033c 	.word	0x03f3033c
 8002ba8:	02fb02fb 	.word	0x02fb02fb
 8002bac:	042802fb 	.word	0x042802fb
 8002bb0:	04280428 	.word	0x04280428
 8002bb4:	03ee0428 	.word	0x03ee0428
 8002bb8:	04280428 	.word	0x04280428
 8002bbc:	0428009a 	.word	0x0428009a
 8002bc0:	04280428 	.word	0x04280428
 8002bc4:	04280350 	.word	0x04280350
 8002bc8:	04280379 	.word	0x04280379
 8002bcc:	03900428 	.word	0x03900428
 8002bd0:	04280428 	.word	0x04280428
 8002bd4:	04280428 	.word	0x04280428
 8002bd8:	04280428 	.word	0x04280428
 8002bdc:	04280428 	.word	0x04280428
 8002be0:	042802fb 	.word	0x042802fb
 8002be4:	00c5033c 	.word	0x00c5033c
 8002be8:	02fb02fb 	.word	0x02fb02fb
 8002bec:	03d102fb 	.word	0x03d102fb
 8002bf0:	007000c5 	.word	0x007000c5
 8002bf4:	03b50428 	.word	0x03b50428
 8002bf8:	03c20428 	.word	0x03c20428
 8002bfc:	03de009c 	.word	0x03de009c
 8002c00:	04280070 	.word	0x04280070
 8002c04:	00720350 	.word	0x00720350
 8002c08:	0428022c 	.word	0x0428022c
 8002c0c:	027c0428 	.word	0x027c0428
 8002c10:	00720428 	.word	0x00720428
 8002c14:	4649      	mov	r1, r9
 8002c16:	9803      	ldr	r0, [sp, #12]
 8002c18:	f001 fc9a 	bl	8004550 <__swsetup_r>
 8002c1c:	b1a0      	cbz	r0, 8002c48 <_vfprintf_r+0x1f8>
 8002c1e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002c22:	07d8      	lsls	r0, r3, #31
 8002c24:	d404      	bmi.n	8002c30 <_vfprintf_r+0x1e0>
 8002c26:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c2a:	0599      	lsls	r1, r3, #22
 8002c2c:	f140 83b7 	bpl.w	800339e <_vfprintf_r+0x94e>
 8002c30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c34:	9305      	str	r3, [sp, #20]
 8002c36:	9805      	ldr	r0, [sp, #20]
 8002c38:	b057      	add	sp, #348	; 0x15c
 8002c3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c3e:	f048 0820 	orr.w	r8, r8, #32
 8002c42:	f89a 6000 	ldrb.w	r6, [sl]
 8002c46:	e781      	b.n	8002b4c <_vfprintf_r+0xfc>
 8002c48:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c4c:	f003 021a 	and.w	r2, r3, #26
 8002c50:	2a0a      	cmp	r2, #10
 8002c52:	f47f af37 	bne.w	8002ac4 <_vfprintf_r+0x74>
 8002c56:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002c5a:	2a00      	cmp	r2, #0
 8002c5c:	f6ff af32 	blt.w	8002ac4 <_vfprintf_r+0x74>
 8002c60:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002c64:	07d2      	lsls	r2, r2, #31
 8002c66:	d405      	bmi.n	8002c74 <_vfprintf_r+0x224>
 8002c68:	059b      	lsls	r3, r3, #22
 8002c6a:	d403      	bmi.n	8002c74 <_vfprintf_r+0x224>
 8002c6c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c70:	f003 f8de 	bl	8005e30 <__retarget_lock_release_recursive>
 8002c74:	4623      	mov	r3, r4
 8002c76:	463a      	mov	r2, r7
 8002c78:	4649      	mov	r1, r9
 8002c7a:	9803      	ldr	r0, [sp, #12]
 8002c7c:	f001 fc26 	bl	80044cc <__sbprintf>
 8002c80:	9005      	str	r0, [sp, #20]
 8002c82:	9805      	ldr	r0, [sp, #20]
 8002c84:	b057      	add	sp, #348	; 0x15c
 8002c86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c8a:	9803      	ldr	r0, [sp, #12]
 8002c8c:	f002 fd7e 	bl	800578c <__sinit>
 8002c90:	e6f4      	b.n	8002a7c <_vfprintf_r+0x2c>
 8002c92:	f048 0810 	orr.w	r8, r8, #16
 8002c96:	f018 0f20 	tst.w	r8, #32
 8002c9a:	f000 836c 	beq.w	8003376 <_vfprintf_r+0x926>
 8002c9e:	9c08      	ldr	r4, [sp, #32]
 8002ca0:	3407      	adds	r4, #7
 8002ca2:	f024 0307 	bic.w	r3, r4, #7
 8002ca6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002caa:	f103 0208 	add.w	r2, r3, #8
 8002cae:	9208      	str	r2, [sp, #32]
 8002cb0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002cb4:	2200      	movs	r2, #0
 8002cb6:	e18c      	b.n	8002fd2 <_vfprintf_r+0x582>
 8002cb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cba:	9907      	ldr	r1, [sp, #28]
 8002cbc:	9803      	ldr	r0, [sp, #12]
 8002cbe:	f004 f9f5 	bl	80070ac <__sprint_r>
 8002cc2:	2800      	cmp	r0, #0
 8002cc4:	f041 8376 	bne.w	80043b4 <_vfprintf_r+0x1964>
 8002cc8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ccc:	e72c      	b.n	8002b28 <_vfprintf_r+0xd8>
 8002cce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002cd2:	f003 f8ab 	bl	8005e2c <__retarget_lock_acquire_recursive>
 8002cd6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002cda:	b293      	uxth	r3, r2
 8002cdc:	e6d8      	b.n	8002a90 <_vfprintf_r+0x40>
 8002cde:	bf00      	nop
	...
 8002ce8:	4643      	mov	r3, r8
 8002cea:	069f      	lsls	r7, r3, #26
 8002cec:	f140 832f 	bpl.w	800334e <_vfprintf_r+0x8fe>
 8002cf0:	9c08      	ldr	r4, [sp, #32]
 8002cf2:	3407      	adds	r4, #7
 8002cf4:	f024 0407 	bic.w	r4, r4, #7
 8002cf8:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002cfc:	f104 0208 	add.w	r2, r4, #8
 8002d00:	9208      	str	r2, [sp, #32]
 8002d02:	4604      	mov	r4, r0
 8002d04:	460d      	mov	r5, r1
 8002d06:	2800      	cmp	r0, #0
 8002d08:	f171 0200 	sbcs.w	r2, r1, #0
 8002d0c:	da05      	bge.n	8002d1a <_vfprintf_r+0x2ca>
 8002d0e:	222d      	movs	r2, #45	; 0x2d
 8002d10:	4264      	negs	r4, r4
 8002d12:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002d16:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002d1a:	aa56      	add	r2, sp, #344	; 0x158
 8002d1c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d20:	9204      	str	r2, [sp, #16]
 8002d22:	f000 84b2 	beq.w	800368a <_vfprintf_r+0xc3a>
 8002d26:	2201      	movs	r2, #1
 8002d28:	ea54 0105 	orrs.w	r1, r4, r5
 8002d2c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002d30:	f040 8159 	bne.w	8002fe6 <_vfprintf_r+0x596>
 8002d34:	f1b9 0f00 	cmp.w	r9, #0
 8002d38:	f040 8619 	bne.w	800396e <_vfprintf_r+0xf1e>
 8002d3c:	2a00      	cmp	r2, #0
 8002d3e:	f040 8508 	bne.w	8003752 <_vfprintf_r+0xd02>
 8002d42:	f013 0301 	ands.w	r3, r3, #1
 8002d46:	af56      	add	r7, sp, #344	; 0x158
 8002d48:	9309      	str	r3, [sp, #36]	; 0x24
 8002d4a:	d002      	beq.n	8002d52 <_vfprintf_r+0x302>
 8002d4c:	2330      	movs	r3, #48	; 0x30
 8002d4e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002d52:	2300      	movs	r3, #0
 8002d54:	930a      	str	r3, [sp, #40]	; 0x28
 8002d56:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d58:	9314      	str	r3, [sp, #80]	; 0x50
 8002d5a:	9311      	str	r3, [sp, #68]	; 0x44
 8002d5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d5e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d62:	454b      	cmp	r3, r9
 8002d64:	bfb8      	it	lt
 8002d66:	464b      	movlt	r3, r9
 8002d68:	9304      	str	r3, [sp, #16]
 8002d6a:	b112      	cbz	r2, 8002d72 <_vfprintf_r+0x322>
 8002d6c:	9b04      	ldr	r3, [sp, #16]
 8002d6e:	3301      	adds	r3, #1
 8002d70:	9304      	str	r3, [sp, #16]
 8002d72:	f018 0302 	ands.w	r3, r8, #2
 8002d76:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d78:	d002      	beq.n	8002d80 <_vfprintf_r+0x330>
 8002d7a:	9b04      	ldr	r3, [sp, #16]
 8002d7c:	3302      	adds	r3, #2
 8002d7e:	9304      	str	r3, [sp, #16]
 8002d80:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002d84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d86:	930e      	str	r3, [sp, #56]	; 0x38
 8002d88:	d13f      	bne.n	8002e0a <_vfprintf_r+0x3ba>
 8002d8a:	9b06      	ldr	r3, [sp, #24]
 8002d8c:	9904      	ldr	r1, [sp, #16]
 8002d8e:	1a5d      	subs	r5, r3, r1
 8002d90:	2d00      	cmp	r5, #0
 8002d92:	dd3a      	ble.n	8002e0a <_vfprintf_r+0x3ba>
 8002d94:	2d10      	cmp	r5, #16
 8002d96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d98:	dd29      	ble.n	8002dee <_vfprintf_r+0x39e>
 8002d9a:	4659      	mov	r1, fp
 8002d9c:	4620      	mov	r0, r4
 8002d9e:	9620      	str	r6, [sp, #128]	; 0x80
 8002da0:	2310      	movs	r3, #16
 8002da2:	9c03      	ldr	r4, [sp, #12]
 8002da4:	9e07      	ldr	r6, [sp, #28]
 8002da6:	46bb      	mov	fp, r7
 8002da8:	e004      	b.n	8002db4 <_vfprintf_r+0x364>
 8002daa:	3d10      	subs	r5, #16
 8002dac:	2d10      	cmp	r5, #16
 8002dae:	f101 0108 	add.w	r1, r1, #8
 8002db2:	dd18      	ble.n	8002de6 <_vfprintf_r+0x396>
 8002db4:	3201      	adds	r2, #1
 8002db6:	4fba      	ldr	r7, [pc, #744]	; (80030a0 <_vfprintf_r+0x650>)
 8002db8:	3010      	adds	r0, #16
 8002dba:	2a07      	cmp	r2, #7
 8002dbc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002dc0:	e9c1 7300 	strd	r7, r3, [r1]
 8002dc4:	ddf1      	ble.n	8002daa <_vfprintf_r+0x35a>
 8002dc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dc8:	4631      	mov	r1, r6
 8002dca:	4620      	mov	r0, r4
 8002dcc:	930c      	str	r3, [sp, #48]	; 0x30
 8002dce:	f004 f96d 	bl	80070ac <__sprint_r>
 8002dd2:	2800      	cmp	r0, #0
 8002dd4:	f040 843d 	bne.w	8003652 <_vfprintf_r+0xc02>
 8002dd8:	3d10      	subs	r5, #16
 8002dda:	2d10      	cmp	r5, #16
 8002ddc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002de0:	a92d      	add	r1, sp, #180	; 0xb4
 8002de2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002de4:	dce6      	bgt.n	8002db4 <_vfprintf_r+0x364>
 8002de6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002de8:	465f      	mov	r7, fp
 8002dea:	4604      	mov	r4, r0
 8002dec:	468b      	mov	fp, r1
 8002dee:	3201      	adds	r2, #1
 8002df0:	4bab      	ldr	r3, [pc, #684]	; (80030a0 <_vfprintf_r+0x650>)
 8002df2:	442c      	add	r4, r5
 8002df4:	2a07      	cmp	r2, #7
 8002df6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002dfa:	e9cb 3500 	strd	r3, r5, [fp]
 8002dfe:	f300 84ff 	bgt.w	8003800 <_vfprintf_r+0xdb0>
 8002e02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e06:	f10b 0b08 	add.w	fp, fp, #8
 8002e0a:	b172      	cbz	r2, 8002e2a <_vfprintf_r+0x3da>
 8002e0c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e0e:	3201      	adds	r2, #1
 8002e10:	3401      	adds	r4, #1
 8002e12:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002e16:	2101      	movs	r1, #1
 8002e18:	2a07      	cmp	r2, #7
 8002e1a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e1e:	e9cb 0100 	strd	r0, r1, [fp]
 8002e22:	f300 8418 	bgt.w	8003656 <_vfprintf_r+0xc06>
 8002e26:	f10b 0b08 	add.w	fp, fp, #8
 8002e2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002e2c:	b16b      	cbz	r3, 8002e4a <_vfprintf_r+0x3fa>
 8002e2e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e30:	3301      	adds	r3, #1
 8002e32:	3402      	adds	r4, #2
 8002e34:	a923      	add	r1, sp, #140	; 0x8c
 8002e36:	2202      	movs	r2, #2
 8002e38:	2b07      	cmp	r3, #7
 8002e3a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e3e:	e9cb 1200 	strd	r1, r2, [fp]
 8002e42:	f300 8415 	bgt.w	8003670 <_vfprintf_r+0xc20>
 8002e46:	f10b 0b08 	add.w	fp, fp, #8
 8002e4a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002e4c:	2b80      	cmp	r3, #128	; 0x80
 8002e4e:	f000 8331 	beq.w	80034b4 <_vfprintf_r+0xa64>
 8002e52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e54:	eba9 0503 	sub.w	r5, r9, r3
 8002e58:	2d00      	cmp	r5, #0
 8002e5a:	dd37      	ble.n	8002ecc <_vfprintf_r+0x47c>
 8002e5c:	2d10      	cmp	r5, #16
 8002e5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e60:	4b90      	ldr	r3, [pc, #576]	; (80030a4 <_vfprintf_r+0x654>)
 8002e62:	dd28      	ble.n	8002eb6 <_vfprintf_r+0x466>
 8002e64:	4659      	mov	r1, fp
 8002e66:	4620      	mov	r0, r4
 8002e68:	46bb      	mov	fp, r7
 8002e6a:	f04f 0910 	mov.w	r9, #16
 8002e6e:	4637      	mov	r7, r6
 8002e70:	461c      	mov	r4, r3
 8002e72:	9e07      	ldr	r6, [sp, #28]
 8002e74:	e004      	b.n	8002e80 <_vfprintf_r+0x430>
 8002e76:	3d10      	subs	r5, #16
 8002e78:	2d10      	cmp	r5, #16
 8002e7a:	f101 0108 	add.w	r1, r1, #8
 8002e7e:	dd15      	ble.n	8002eac <_vfprintf_r+0x45c>
 8002e80:	3201      	adds	r2, #1
 8002e82:	3010      	adds	r0, #16
 8002e84:	2a07      	cmp	r2, #7
 8002e86:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e8a:	e9c1 4900 	strd	r4, r9, [r1]
 8002e8e:	ddf2      	ble.n	8002e76 <_vfprintf_r+0x426>
 8002e90:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e92:	4631      	mov	r1, r6
 8002e94:	9803      	ldr	r0, [sp, #12]
 8002e96:	f004 f909 	bl	80070ac <__sprint_r>
 8002e9a:	2800      	cmp	r0, #0
 8002e9c:	f040 83d9 	bne.w	8003652 <_vfprintf_r+0xc02>
 8002ea0:	3d10      	subs	r5, #16
 8002ea2:	2d10      	cmp	r5, #16
 8002ea4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ea8:	a92d      	add	r1, sp, #180	; 0xb4
 8002eaa:	dce9      	bgt.n	8002e80 <_vfprintf_r+0x430>
 8002eac:	463e      	mov	r6, r7
 8002eae:	4623      	mov	r3, r4
 8002eb0:	465f      	mov	r7, fp
 8002eb2:	4604      	mov	r4, r0
 8002eb4:	468b      	mov	fp, r1
 8002eb6:	3201      	adds	r2, #1
 8002eb8:	442c      	add	r4, r5
 8002eba:	2a07      	cmp	r2, #7
 8002ebc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ec0:	e9cb 3500 	strd	r3, r5, [fp]
 8002ec4:	f300 83ef 	bgt.w	80036a6 <_vfprintf_r+0xc56>
 8002ec8:	f10b 0b08 	add.w	fp, fp, #8
 8002ecc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ed0:	f040 8280 	bne.w	80033d4 <_vfprintf_r+0x984>
 8002ed4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ed6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ed8:	f8cb 7000 	str.w	r7, [fp]
 8002edc:	3301      	adds	r3, #1
 8002ede:	4414      	add	r4, r2
 8002ee0:	2b07      	cmp	r3, #7
 8002ee2:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ee4:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ee8:	932b      	str	r3, [sp, #172]	; 0xac
 8002eea:	f300 8392 	bgt.w	8003612 <_vfprintf_r+0xbc2>
 8002eee:	f10b 0b08 	add.w	fp, fp, #8
 8002ef2:	f018 0f04 	tst.w	r8, #4
 8002ef6:	d03b      	beq.n	8002f70 <_vfprintf_r+0x520>
 8002ef8:	9b06      	ldr	r3, [sp, #24]
 8002efa:	9a04      	ldr	r2, [sp, #16]
 8002efc:	1a9d      	subs	r5, r3, r2
 8002efe:	2d00      	cmp	r5, #0
 8002f00:	dd36      	ble.n	8002f70 <_vfprintf_r+0x520>
 8002f02:	2d10      	cmp	r5, #16
 8002f04:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f06:	dd21      	ble.n	8002f4c <_vfprintf_r+0x4fc>
 8002f08:	2610      	movs	r6, #16
 8002f0a:	9f03      	ldr	r7, [sp, #12]
 8002f0c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002f10:	e004      	b.n	8002f1c <_vfprintf_r+0x4cc>
 8002f12:	3d10      	subs	r5, #16
 8002f14:	2d10      	cmp	r5, #16
 8002f16:	f10b 0b08 	add.w	fp, fp, #8
 8002f1a:	dd17      	ble.n	8002f4c <_vfprintf_r+0x4fc>
 8002f1c:	3301      	adds	r3, #1
 8002f1e:	4a60      	ldr	r2, [pc, #384]	; (80030a0 <_vfprintf_r+0x650>)
 8002f20:	3410      	adds	r4, #16
 8002f22:	2b07      	cmp	r3, #7
 8002f24:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f28:	e9cb 2600 	strd	r2, r6, [fp]
 8002f2c:	ddf1      	ble.n	8002f12 <_vfprintf_r+0x4c2>
 8002f2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f30:	4641      	mov	r1, r8
 8002f32:	4638      	mov	r0, r7
 8002f34:	f004 f8ba 	bl	80070ac <__sprint_r>
 8002f38:	2800      	cmp	r0, #0
 8002f3a:	f040 856c 	bne.w	8003a16 <_vfprintf_r+0xfc6>
 8002f3e:	3d10      	subs	r5, #16
 8002f40:	2d10      	cmp	r5, #16
 8002f42:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002f46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f4a:	dce7      	bgt.n	8002f1c <_vfprintf_r+0x4cc>
 8002f4c:	3301      	adds	r3, #1
 8002f4e:	4a54      	ldr	r2, [pc, #336]	; (80030a0 <_vfprintf_r+0x650>)
 8002f50:	442c      	add	r4, r5
 8002f52:	2b07      	cmp	r3, #7
 8002f54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f58:	e9cb 2500 	strd	r2, r5, [fp]
 8002f5c:	dd08      	ble.n	8002f70 <_vfprintf_r+0x520>
 8002f5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f60:	9907      	ldr	r1, [sp, #28]
 8002f62:	9803      	ldr	r0, [sp, #12]
 8002f64:	f004 f8a2 	bl	80070ac <__sprint_r>
 8002f68:	2800      	cmp	r0, #0
 8002f6a:	f040 82e9 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8002f6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f70:	9904      	ldr	r1, [sp, #16]
 8002f72:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002f76:	428a      	cmp	r2, r1
 8002f78:	bfac      	ite	ge
 8002f7a:	189b      	addge	r3, r3, r2
 8002f7c:	185b      	addlt	r3, r3, r1
 8002f7e:	9305      	str	r3, [sp, #20]
 8002f80:	2c00      	cmp	r4, #0
 8002f82:	f040 82d5 	bne.w	8003530 <_vfprintf_r+0xae0>
 8002f86:	2300      	movs	r3, #0
 8002f88:	932b      	str	r3, [sp, #172]	; 0xac
 8002f8a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f8c:	b11b      	cbz	r3, 8002f96 <_vfprintf_r+0x546>
 8002f8e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f90:	9803      	ldr	r0, [sp, #12]
 8002f92:	f002 fc9d 	bl	80058d0 <_free_r>
 8002f96:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f9a:	4657      	mov	r7, sl
 8002f9c:	783b      	ldrb	r3, [r7, #0]
 8002f9e:	2b00      	cmp	r3, #0
 8002fa0:	f47f ada7 	bne.w	8002af2 <_vfprintf_r+0xa2>
 8002fa4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002fa6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002faa:	2b00      	cmp	r3, #0
 8002fac:	f041 80e7 	bne.w	800417e <_vfprintf_r+0x172e>
 8002fb0:	2300      	movs	r3, #0
 8002fb2:	932b      	str	r3, [sp, #172]	; 0xac
 8002fb4:	e2cb      	b.n	800354e <_vfprintf_r+0xafe>
 8002fb6:	4643      	mov	r3, r8
 8002fb8:	069a      	lsls	r2, r3, #26
 8002fba:	f140 814e 	bpl.w	800325a <_vfprintf_r+0x80a>
 8002fbe:	9c08      	ldr	r4, [sp, #32]
 8002fc0:	3407      	adds	r4, #7
 8002fc2:	f024 0207 	bic.w	r2, r4, #7
 8002fc6:	f102 0108 	add.w	r1, r2, #8
 8002fca:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002fce:	9108      	str	r1, [sp, #32]
 8002fd0:	2201      	movs	r2, #1
 8002fd2:	2100      	movs	r1, #0
 8002fd4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002fd8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002fdc:	a956      	add	r1, sp, #344	; 0x158
 8002fde:	9104      	str	r1, [sp, #16]
 8002fe0:	f47f aea2 	bne.w	8002d28 <_vfprintf_r+0x2d8>
 8002fe4:	4698      	mov	r8, r3
 8002fe6:	2a01      	cmp	r2, #1
 8002fe8:	f000 8350 	beq.w	800368c <_vfprintf_r+0xc3c>
 8002fec:	2a02      	cmp	r2, #2
 8002fee:	f000 831b 	beq.w	8003628 <_vfprintf_r+0xbd8>
 8002ff2:	a956      	add	r1, sp, #344	; 0x158
 8002ff4:	e000      	b.n	8002ff8 <_vfprintf_r+0x5a8>
 8002ff6:	4639      	mov	r1, r7
 8002ff8:	08e2      	lsrs	r2, r4, #3
 8002ffa:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002ffe:	08e8      	lsrs	r0, r5, #3
 8003000:	f004 0307 	and.w	r3, r4, #7
 8003004:	4605      	mov	r5, r0
 8003006:	4614      	mov	r4, r2
 8003008:	3330      	adds	r3, #48	; 0x30
 800300a:	ea54 0205 	orrs.w	r2, r4, r5
 800300e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003012:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003016:	d1ee      	bne.n	8002ff6 <_vfprintf_r+0x5a6>
 8003018:	f018 0f01 	tst.w	r8, #1
 800301c:	f000 8314 	beq.w	8003648 <_vfprintf_r+0xbf8>
 8003020:	2b30      	cmp	r3, #48	; 0x30
 8003022:	f000 8311 	beq.w	8003648 <_vfprintf_r+0xbf8>
 8003026:	9a04      	ldr	r2, [sp, #16]
 8003028:	3902      	subs	r1, #2
 800302a:	2330      	movs	r3, #48	; 0x30
 800302c:	1a52      	subs	r2, r2, r1
 800302e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003032:	9209      	str	r2, [sp, #36]	; 0x24
 8003034:	460f      	mov	r7, r1
 8003036:	e68c      	b.n	8002d52 <_vfprintf_r+0x302>
 8003038:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800303c:	2200      	movs	r2, #0
 800303e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003042:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003046:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800304a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800304e:	2b09      	cmp	r3, #9
 8003050:	d9f5      	bls.n	800303e <_vfprintf_r+0x5ee>
 8003052:	9206      	str	r2, [sp, #24]
 8003054:	e57c      	b.n	8002b50 <_vfprintf_r+0x100>
 8003056:	4b14      	ldr	r3, [pc, #80]	; (80030a8 <_vfprintf_r+0x658>)
 8003058:	9317      	str	r3, [sp, #92]	; 0x5c
 800305a:	f018 0f20 	tst.w	r8, #32
 800305e:	f000 8114 	beq.w	800328a <_vfprintf_r+0x83a>
 8003062:	9c08      	ldr	r4, [sp, #32]
 8003064:	3407      	adds	r4, #7
 8003066:	f024 0307 	bic.w	r3, r4, #7
 800306a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800306e:	f103 0208 	add.w	r2, r3, #8
 8003072:	9208      	str	r2, [sp, #32]
 8003074:	f018 0f01 	tst.w	r8, #1
 8003078:	d009      	beq.n	800308e <_vfprintf_r+0x63e>
 800307a:	ea54 0305 	orrs.w	r3, r4, r5
 800307e:	d006      	beq.n	800308e <_vfprintf_r+0x63e>
 8003080:	2330      	movs	r3, #48	; 0x30
 8003082:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8003086:	f048 0802 	orr.w	r8, r8, #2
 800308a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800308e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003092:	2202      	movs	r2, #2
 8003094:	e79d      	b.n	8002fd2 <_vfprintf_r+0x582>
 8003096:	f048 0801 	orr.w	r8, r8, #1
 800309a:	f89a 6000 	ldrb.w	r6, [sl]
 800309e:	e555      	b.n	8002b4c <_vfprintf_r+0xfc>
 80030a0:	08007794 	.word	0x08007794
 80030a4:	080077a4 	.word	0x080077a4
 80030a8:	08007760 	.word	0x08007760
 80030ac:	9e03      	ldr	r6, [sp, #12]
 80030ae:	4630      	mov	r0, r6
 80030b0:	f002 feaa 	bl	8005e08 <_localeconv_r>
 80030b4:	6843      	ldr	r3, [r0, #4]
 80030b6:	9318      	str	r3, [sp, #96]	; 0x60
 80030b8:	4618      	mov	r0, r3
 80030ba:	f7fd fac1 	bl	8000640 <strlen>
 80030be:	901b      	str	r0, [sp, #108]	; 0x6c
 80030c0:	4604      	mov	r4, r0
 80030c2:	4630      	mov	r0, r6
 80030c4:	f002 fea0 	bl	8005e08 <_localeconv_r>
 80030c8:	6883      	ldr	r3, [r0, #8]
 80030ca:	931a      	str	r3, [sp, #104]	; 0x68
 80030cc:	2c00      	cmp	r4, #0
 80030ce:	f43f adb8 	beq.w	8002c42 <_vfprintf_r+0x1f2>
 80030d2:	f89a 6000 	ldrb.w	r6, [sl]
 80030d6:	2b00      	cmp	r3, #0
 80030d8:	f43f ad38 	beq.w	8002b4c <_vfprintf_r+0xfc>
 80030dc:	781b      	ldrb	r3, [r3, #0]
 80030de:	2b00      	cmp	r3, #0
 80030e0:	f43f ad34 	beq.w	8002b4c <_vfprintf_r+0xfc>
 80030e4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80030e8:	e530      	b.n	8002b4c <_vfprintf_r+0xfc>
 80030ea:	9b08      	ldr	r3, [sp, #32]
 80030ec:	f89a 6000 	ldrb.w	r6, [sl]
 80030f0:	681a      	ldr	r2, [r3, #0]
 80030f2:	9206      	str	r2, [sp, #24]
 80030f4:	2a00      	cmp	r2, #0
 80030f6:	f103 0304 	add.w	r3, r3, #4
 80030fa:	f2c0 8697 	blt.w	8003e2c <_vfprintf_r+0x13dc>
 80030fe:	9308      	str	r3, [sp, #32]
 8003100:	e524      	b.n	8002b4c <_vfprintf_r+0xfc>
 8003102:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003106:	f89a 6000 	ldrb.w	r6, [sl]
 800310a:	e51f      	b.n	8002b4c <_vfprintf_r+0xfc>
 800310c:	f89a 6000 	ldrb.w	r6, [sl]
 8003110:	f048 0804 	orr.w	r8, r8, #4
 8003114:	e51a      	b.n	8002b4c <_vfprintf_r+0xfc>
 8003116:	f89a 6000 	ldrb.w	r6, [sl]
 800311a:	2e2a      	cmp	r6, #42	; 0x2a
 800311c:	f10a 0201 	add.w	r2, sl, #1
 8003120:	f001 81b0 	beq.w	8004484 <_vfprintf_r+0x1a34>
 8003124:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003128:	2b09      	cmp	r3, #9
 800312a:	4692      	mov	sl, r2
 800312c:	f04f 0900 	mov.w	r9, #0
 8003130:	f63f ad0e 	bhi.w	8002b50 <_vfprintf_r+0x100>
 8003134:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003138:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800313c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003140:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003144:	2b09      	cmp	r3, #9
 8003146:	d9f5      	bls.n	8003134 <_vfprintf_r+0x6e4>
 8003148:	e502      	b.n	8002b50 <_vfprintf_r+0x100>
 800314a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800314e:	f89a 6000 	ldrb.w	r6, [sl]
 8003152:	e4fb      	b.n	8002b4c <_vfprintf_r+0xfc>
 8003154:	9c08      	ldr	r4, [sp, #32]
 8003156:	3407      	adds	r4, #7
 8003158:	f024 0407 	bic.w	r4, r4, #7
 800315c:	ed94 7b00 	vldr	d7, [r4]
 8003160:	ec52 1b17 	vmov	r1, r2, d7
 8003164:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003168:	931d      	str	r3, [sp, #116]	; 0x74
 800316a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800316e:	3408      	adds	r4, #8
 8003170:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003174:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003178:	4bba      	ldr	r3, [pc, #744]	; (8003464 <_vfprintf_r+0xa14>)
 800317a:	9408      	str	r4, [sp, #32]
 800317c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003180:	f7fd ff74 	bl	800106c <__aeabi_dcmpun>
 8003184:	2800      	cmp	r0, #0
 8003186:	f040 846f 	bne.w	8003a68 <_vfprintf_r+0x1018>
 800318a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800318e:	4bb5      	ldr	r3, [pc, #724]	; (8003464 <_vfprintf_r+0xa14>)
 8003190:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003194:	f7fd ff4c 	bl	8001030 <__aeabi_dcmple>
 8003198:	2800      	cmp	r0, #0
 800319a:	f040 8465 	bne.w	8003a68 <_vfprintf_r+0x1018>
 800319e:	2200      	movs	r2, #0
 80031a0:	2300      	movs	r3, #0
 80031a2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031a6:	f7fd ff39 	bl	800101c <__aeabi_dcmplt>
 80031aa:	2800      	cmp	r0, #0
 80031ac:	f040 855b 	bne.w	8003c66 <_vfprintf_r+0x1216>
 80031b0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031b4:	4fac      	ldr	r7, [pc, #688]	; (8003468 <_vfprintf_r+0xa18>)
 80031b6:	4bad      	ldr	r3, [pc, #692]	; (800346c <_vfprintf_r+0xa1c>)
 80031b8:	2000      	movs	r0, #0
 80031ba:	2103      	movs	r1, #3
 80031bc:	9104      	str	r1, [sp, #16]
 80031be:	900a      	str	r0, [sp, #40]	; 0x28
 80031c0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80031c4:	2e47      	cmp	r6, #71	; 0x47
 80031c6:	bfd8      	it	le
 80031c8:	461f      	movle	r7, r3
 80031ca:	9109      	str	r1, [sp, #36]	; 0x24
 80031cc:	4681      	mov	r9, r0
 80031ce:	900f      	str	r0, [sp, #60]	; 0x3c
 80031d0:	9014      	str	r0, [sp, #80]	; 0x50
 80031d2:	9011      	str	r0, [sp, #68]	; 0x44
 80031d4:	e5c9      	b.n	8002d6a <_vfprintf_r+0x31a>
 80031d6:	9808      	ldr	r0, [sp, #32]
 80031d8:	2300      	movs	r3, #0
 80031da:	6801      	ldr	r1, [r0, #0]
 80031dc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031e0:	461a      	mov	r2, r3
 80031e2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80031e6:	2301      	movs	r3, #1
 80031e8:	1d01      	adds	r1, r0, #4
 80031ea:	9304      	str	r3, [sp, #16]
 80031ec:	920a      	str	r2, [sp, #40]	; 0x28
 80031ee:	4691      	mov	r9, r2
 80031f0:	920f      	str	r2, [sp, #60]	; 0x3c
 80031f2:	9214      	str	r2, [sp, #80]	; 0x50
 80031f4:	9211      	str	r2, [sp, #68]	; 0x44
 80031f6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80031fa:	af3d      	add	r7, sp, #244	; 0xf4
 80031fc:	e5b9      	b.n	8002d72 <_vfprintf_r+0x322>
 80031fe:	9b08      	ldr	r3, [sp, #32]
 8003200:	681f      	ldr	r7, [r3, #0]
 8003202:	2500      	movs	r5, #0
 8003204:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003208:	1d1c      	adds	r4, r3, #4
 800320a:	2f00      	cmp	r7, #0
 800320c:	f000 8639 	beq.w	8003e82 <_vfprintf_r+0x1432>
 8003210:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003214:	f000 8711 	beq.w	800403a <_vfprintf_r+0x15ea>
 8003218:	464a      	mov	r2, r9
 800321a:	4629      	mov	r1, r5
 800321c:	4638      	mov	r0, r7
 800321e:	f7fd fa7f 	bl	8000720 <memchr>
 8003222:	900a      	str	r0, [sp, #40]	; 0x28
 8003224:	2800      	cmp	r0, #0
 8003226:	f000 85e7 	beq.w	8003df8 <_vfprintf_r+0x13a8>
 800322a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800322c:	1bdb      	subs	r3, r3, r7
 800322e:	9309      	str	r3, [sp, #36]	; 0x24
 8003230:	46a9      	mov	r9, r5
 8003232:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003236:	9408      	str	r4, [sp, #32]
 8003238:	9304      	str	r3, [sp, #16]
 800323a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800323e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8003242:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003246:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800324a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800324e:	e58c      	b.n	8002d6a <_vfprintf_r+0x31a>
 8003250:	f048 0310 	orr.w	r3, r8, #16
 8003254:	069a      	lsls	r2, r3, #26
 8003256:	f53f aeb2 	bmi.w	8002fbe <_vfprintf_r+0x56e>
 800325a:	9a08      	ldr	r2, [sp, #32]
 800325c:	06df      	lsls	r7, r3, #27
 800325e:	f102 0104 	add.w	r1, r2, #4
 8003262:	f100 837e 	bmi.w	8003962 <_vfprintf_r+0xf12>
 8003266:	065d      	lsls	r5, r3, #25
 8003268:	9a08      	ldr	r2, [sp, #32]
 800326a:	f100 84e4 	bmi.w	8003c36 <_vfprintf_r+0x11e6>
 800326e:	059c      	lsls	r4, r3, #22
 8003270:	f140 8377 	bpl.w	8003962 <_vfprintf_r+0xf12>
 8003274:	7814      	ldrb	r4, [r2, #0]
 8003276:	9108      	str	r1, [sp, #32]
 8003278:	2500      	movs	r5, #0
 800327a:	2201      	movs	r2, #1
 800327c:	e6a9      	b.n	8002fd2 <_vfprintf_r+0x582>
 800327e:	4b7c      	ldr	r3, [pc, #496]	; (8003470 <_vfprintf_r+0xa20>)
 8003280:	9317      	str	r3, [sp, #92]	; 0x5c
 8003282:	f018 0f20 	tst.w	r8, #32
 8003286:	f47f aeec 	bne.w	8003062 <_vfprintf_r+0x612>
 800328a:	9a08      	ldr	r2, [sp, #32]
 800328c:	f018 0f10 	tst.w	r8, #16
 8003290:	f102 0304 	add.w	r3, r2, #4
 8003294:	f040 8354 	bne.w	8003940 <_vfprintf_r+0xef0>
 8003298:	f018 0f40 	tst.w	r8, #64	; 0x40
 800329c:	9a08      	ldr	r2, [sp, #32]
 800329e:	f040 84d0 	bne.w	8003c42 <_vfprintf_r+0x11f2>
 80032a2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80032a6:	f000 834b 	beq.w	8003940 <_vfprintf_r+0xef0>
 80032aa:	7814      	ldrb	r4, [r2, #0]
 80032ac:	9308      	str	r3, [sp, #32]
 80032ae:	2500      	movs	r5, #0
 80032b0:	e6e0      	b.n	8003074 <_vfprintf_r+0x624>
 80032b2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80032b6:	f89a 6000 	ldrb.w	r6, [sl]
 80032ba:	2b00      	cmp	r3, #0
 80032bc:	f47f ac46 	bne.w	8002b4c <_vfprintf_r+0xfc>
 80032c0:	2320      	movs	r3, #32
 80032c2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032c6:	e441      	b.n	8002b4c <_vfprintf_r+0xfc>
 80032c8:	f89a 6000 	ldrb.w	r6, [sl]
 80032cc:	2e6c      	cmp	r6, #108	; 0x6c
 80032ce:	bf03      	ittte	eq
 80032d0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80032d4:	f048 0820 	orreq.w	r8, r8, #32
 80032d8:	f10a 0a01 	addeq.w	sl, sl, #1
 80032dc:	f048 0810 	orrne.w	r8, r8, #16
 80032e0:	e434      	b.n	8002b4c <_vfprintf_r+0xfc>
 80032e2:	9a08      	ldr	r2, [sp, #32]
 80032e4:	f018 0f20 	tst.w	r8, #32
 80032e8:	f852 3b04 	ldr.w	r3, [r2], #4
 80032ec:	9208      	str	r2, [sp, #32]
 80032ee:	f000 83a1 	beq.w	8003a34 <_vfprintf_r+0xfe4>
 80032f2:	9a05      	ldr	r2, [sp, #20]
 80032f4:	4610      	mov	r0, r2
 80032f6:	17d1      	asrs	r1, r2, #31
 80032f8:	e9c3 0100 	strd	r0, r1, [r3]
 80032fc:	4657      	mov	r7, sl
 80032fe:	e64d      	b.n	8002f9c <_vfprintf_r+0x54c>
 8003300:	f89a 6000 	ldrb.w	r6, [sl]
 8003304:	2e68      	cmp	r6, #104	; 0x68
 8003306:	bf03      	ittte	eq
 8003308:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800330c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003310:	f10a 0a01 	addeq.w	sl, sl, #1
 8003314:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003318:	e418      	b.n	8002b4c <_vfprintf_r+0xfc>
 800331a:	9908      	ldr	r1, [sp, #32]
 800331c:	4b55      	ldr	r3, [pc, #340]	; (8003474 <_vfprintf_r+0xa24>)
 800331e:	680c      	ldr	r4, [r1, #0]
 8003320:	9317      	str	r3, [sp, #92]	; 0x5c
 8003322:	f647 0230 	movw	r2, #30768	; 0x7830
 8003326:	3104      	adds	r1, #4
 8003328:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800332c:	f048 0302 	orr.w	r3, r8, #2
 8003330:	9108      	str	r1, [sp, #32]
 8003332:	2500      	movs	r5, #0
 8003334:	2202      	movs	r2, #2
 8003336:	2678      	movs	r6, #120	; 0x78
 8003338:	e64b      	b.n	8002fd2 <_vfprintf_r+0x582>
 800333a:	f048 0808 	orr.w	r8, r8, #8
 800333e:	f89a 6000 	ldrb.w	r6, [sl]
 8003342:	e403      	b.n	8002b4c <_vfprintf_r+0xfc>
 8003344:	f048 0310 	orr.w	r3, r8, #16
 8003348:	069f      	lsls	r7, r3, #26
 800334a:	f53f acd1 	bmi.w	8002cf0 <_vfprintf_r+0x2a0>
 800334e:	9908      	ldr	r1, [sp, #32]
 8003350:	06dd      	lsls	r5, r3, #27
 8003352:	f101 0204 	add.w	r2, r1, #4
 8003356:	f100 82fd 	bmi.w	8003954 <_vfprintf_r+0xf04>
 800335a:	065c      	lsls	r4, r3, #25
 800335c:	9908      	ldr	r1, [sp, #32]
 800335e:	f100 8475 	bmi.w	8003c4c <_vfprintf_r+0x11fc>
 8003362:	0598      	lsls	r0, r3, #22
 8003364:	f140 82f6 	bpl.w	8003954 <_vfprintf_r+0xf04>
 8003368:	f991 4000 	ldrsb.w	r4, [r1]
 800336c:	9208      	str	r2, [sp, #32]
 800336e:	17e5      	asrs	r5, r4, #31
 8003370:	4620      	mov	r0, r4
 8003372:	4629      	mov	r1, r5
 8003374:	e4c7      	b.n	8002d06 <_vfprintf_r+0x2b6>
 8003376:	9a08      	ldr	r2, [sp, #32]
 8003378:	f018 0f10 	tst.w	r8, #16
 800337c:	f102 0304 	add.w	r3, r2, #4
 8003380:	f040 82e3 	bne.w	800394a <_vfprintf_r+0xefa>
 8003384:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003388:	9a08      	ldr	r2, [sp, #32]
 800338a:	f040 8467 	bne.w	8003c5c <_vfprintf_r+0x120c>
 800338e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003392:	f000 82da 	beq.w	800394a <_vfprintf_r+0xefa>
 8003396:	7814      	ldrb	r4, [r2, #0]
 8003398:	9308      	str	r3, [sp, #32]
 800339a:	2500      	movs	r5, #0
 800339c:	e488      	b.n	8002cb0 <_vfprintf_r+0x260>
 800339e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033a2:	f002 fd45 	bl	8005e30 <__retarget_lock_release_recursive>
 80033a6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80033aa:	9305      	str	r3, [sp, #20]
 80033ac:	e443      	b.n	8002c36 <_vfprintf_r+0x1e6>
 80033ae:	2e00      	cmp	r6, #0
 80033b0:	f43f adf8 	beq.w	8002fa4 <_vfprintf_r+0x554>
 80033b4:	2300      	movs	r3, #0
 80033b6:	2101      	movs	r1, #1
 80033b8:	461a      	mov	r2, r3
 80033ba:	9104      	str	r1, [sp, #16]
 80033bc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80033c0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033c4:	930a      	str	r3, [sp, #40]	; 0x28
 80033c6:	4699      	mov	r9, r3
 80033c8:	930f      	str	r3, [sp, #60]	; 0x3c
 80033ca:	9314      	str	r3, [sp, #80]	; 0x50
 80033cc:	9311      	str	r3, [sp, #68]	; 0x44
 80033ce:	9109      	str	r1, [sp, #36]	; 0x24
 80033d0:	af3d      	add	r7, sp, #244	; 0xf4
 80033d2:	e4ce      	b.n	8002d72 <_vfprintf_r+0x322>
 80033d4:	2e65      	cmp	r6, #101	; 0x65
 80033d6:	f340 80ca 	ble.w	800356e <_vfprintf_r+0xb1e>
 80033da:	2200      	movs	r2, #0
 80033dc:	2300      	movs	r3, #0
 80033de:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033e2:	f7fd fe11 	bl	8001008 <__aeabi_dcmpeq>
 80033e6:	2800      	cmp	r0, #0
 80033e8:	f000 8169 	beq.w	80036be <_vfprintf_r+0xc6e>
 80033ec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033ee:	4a22      	ldr	r2, [pc, #136]	; (8003478 <_vfprintf_r+0xa28>)
 80033f0:	f8cb 2000 	str.w	r2, [fp]
 80033f4:	3301      	adds	r3, #1
 80033f6:	3401      	adds	r4, #1
 80033f8:	2201      	movs	r2, #1
 80033fa:	2b07      	cmp	r3, #7
 80033fc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003400:	f8cb 2004 	str.w	r2, [fp, #4]
 8003404:	f300 8406 	bgt.w	8003c14 <_vfprintf_r+0x11c4>
 8003408:	f10b 0b08 	add.w	fp, fp, #8
 800340c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800340e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003410:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003412:	4293      	cmp	r3, r2
 8003414:	db03      	blt.n	800341e <_vfprintf_r+0x9ce>
 8003416:	f018 0f01 	tst.w	r8, #1
 800341a:	f43f ad6a 	beq.w	8002ef2 <_vfprintf_r+0x4a2>
 800341e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003420:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003422:	f8cb 2000 	str.w	r2, [fp]
 8003426:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003428:	f8cb 2004 	str.w	r2, [fp, #4]
 800342c:	3301      	adds	r3, #1
 800342e:	4414      	add	r4, r2
 8003430:	2b07      	cmp	r3, #7
 8003432:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003436:	f300 8517 	bgt.w	8003e68 <_vfprintf_r+0x1418>
 800343a:	f10b 0b08 	add.w	fp, fp, #8
 800343e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003440:	1e5d      	subs	r5, r3, #1
 8003442:	2d00      	cmp	r5, #0
 8003444:	f77f ad55 	ble.w	8002ef2 <_vfprintf_r+0x4a2>
 8003448:	2d10      	cmp	r5, #16
 800344a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800344c:	4b0b      	ldr	r3, [pc, #44]	; (800347c <_vfprintf_r+0xa2c>)
 800344e:	f340 82e7 	ble.w	8003a20 <_vfprintf_r+0xfd0>
 8003452:	4619      	mov	r1, r3
 8003454:	2610      	movs	r6, #16
 8003456:	4623      	mov	r3, r4
 8003458:	9f03      	ldr	r7, [sp, #12]
 800345a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800345e:	460c      	mov	r4, r1
 8003460:	e014      	b.n	800348c <_vfprintf_r+0xa3c>
 8003462:	bf00      	nop
 8003464:	7fefffff 	.word	0x7fefffff
 8003468:	08007754 	.word	0x08007754
 800346c:	08007750 	.word	0x08007750
 8003470:	08007774 	.word	0x08007774
 8003474:	08007760 	.word	0x08007760
 8003478:	08007790 	.word	0x08007790
 800347c:	080077a4 	.word	0x080077a4
 8003480:	f10b 0b08 	add.w	fp, fp, #8
 8003484:	3d10      	subs	r5, #16
 8003486:	2d10      	cmp	r5, #16
 8003488:	f340 82c7 	ble.w	8003a1a <_vfprintf_r+0xfca>
 800348c:	3201      	adds	r2, #1
 800348e:	3310      	adds	r3, #16
 8003490:	2a07      	cmp	r2, #7
 8003492:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003496:	e9cb 4600 	strd	r4, r6, [fp]
 800349a:	ddf1      	ble.n	8003480 <_vfprintf_r+0xa30>
 800349c:	aa2a      	add	r2, sp, #168	; 0xa8
 800349e:	4649      	mov	r1, r9
 80034a0:	4638      	mov	r0, r7
 80034a2:	f003 fe03 	bl	80070ac <__sprint_r>
 80034a6:	2800      	cmp	r0, #0
 80034a8:	d14c      	bne.n	8003544 <_vfprintf_r+0xaf4>
 80034aa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034b2:	e7e7      	b.n	8003484 <_vfprintf_r+0xa34>
 80034b4:	9b06      	ldr	r3, [sp, #24]
 80034b6:	9a04      	ldr	r2, [sp, #16]
 80034b8:	1a9d      	subs	r5, r3, r2
 80034ba:	2d00      	cmp	r5, #0
 80034bc:	f77f acc9 	ble.w	8002e52 <_vfprintf_r+0x402>
 80034c0:	2d10      	cmp	r5, #16
 80034c2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034c4:	4bbc      	ldr	r3, [pc, #752]	; (80037b8 <_vfprintf_r+0xd68>)
 80034c6:	dd27      	ble.n	8003518 <_vfprintf_r+0xac8>
 80034c8:	4659      	mov	r1, fp
 80034ca:	4620      	mov	r0, r4
 80034cc:	46bb      	mov	fp, r7
 80034ce:	461c      	mov	r4, r3
 80034d0:	4637      	mov	r7, r6
 80034d2:	9e07      	ldr	r6, [sp, #28]
 80034d4:	e004      	b.n	80034e0 <_vfprintf_r+0xa90>
 80034d6:	3d10      	subs	r5, #16
 80034d8:	2d10      	cmp	r5, #16
 80034da:	f101 0108 	add.w	r1, r1, #8
 80034de:	dd16      	ble.n	800350e <_vfprintf_r+0xabe>
 80034e0:	3201      	adds	r2, #1
 80034e2:	3010      	adds	r0, #16
 80034e4:	2310      	movs	r3, #16
 80034e6:	2a07      	cmp	r2, #7
 80034e8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80034ec:	600c      	str	r4, [r1, #0]
 80034ee:	604b      	str	r3, [r1, #4]
 80034f0:	ddf1      	ble.n	80034d6 <_vfprintf_r+0xa86>
 80034f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80034f4:	4631      	mov	r1, r6
 80034f6:	9803      	ldr	r0, [sp, #12]
 80034f8:	f003 fdd8 	bl	80070ac <__sprint_r>
 80034fc:	2800      	cmp	r0, #0
 80034fe:	f040 80a8 	bne.w	8003652 <_vfprintf_r+0xc02>
 8003502:	3d10      	subs	r5, #16
 8003504:	2d10      	cmp	r5, #16
 8003506:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800350a:	a92d      	add	r1, sp, #180	; 0xb4
 800350c:	dce8      	bgt.n	80034e0 <_vfprintf_r+0xa90>
 800350e:	463e      	mov	r6, r7
 8003510:	4623      	mov	r3, r4
 8003512:	465f      	mov	r7, fp
 8003514:	4604      	mov	r4, r0
 8003516:	468b      	mov	fp, r1
 8003518:	3201      	adds	r2, #1
 800351a:	442c      	add	r4, r5
 800351c:	2a07      	cmp	r2, #7
 800351e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003522:	e9cb 3500 	strd	r3, r5, [fp]
 8003526:	f300 8292 	bgt.w	8003a4e <_vfprintf_r+0xffe>
 800352a:	f10b 0b08 	add.w	fp, fp, #8
 800352e:	e490      	b.n	8002e52 <_vfprintf_r+0x402>
 8003530:	aa2a      	add	r2, sp, #168	; 0xa8
 8003532:	9907      	ldr	r1, [sp, #28]
 8003534:	9803      	ldr	r0, [sp, #12]
 8003536:	f003 fdb9 	bl	80070ac <__sprint_r>
 800353a:	2800      	cmp	r0, #0
 800353c:	f43f ad23 	beq.w	8002f86 <_vfprintf_r+0x536>
 8003540:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003544:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003546:	b111      	cbz	r1, 800354e <_vfprintf_r+0xafe>
 8003548:	9803      	ldr	r0, [sp, #12]
 800354a:	f002 f9c1 	bl	80058d0 <_free_r>
 800354e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003552:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003556:	07d0      	lsls	r0, r2, #31
 8003558:	d402      	bmi.n	8003560 <_vfprintf_r+0xb10>
 800355a:	0599      	lsls	r1, r3, #22
 800355c:	f140 81d0 	bpl.w	8003900 <_vfprintf_r+0xeb0>
 8003560:	065a      	lsls	r2, r3, #25
 8003562:	f53f ab65 	bmi.w	8002c30 <_vfprintf_r+0x1e0>
 8003566:	9805      	ldr	r0, [sp, #20]
 8003568:	b057      	add	sp, #348	; 0x15c
 800356a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800356e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003570:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003572:	2a01      	cmp	r2, #1
 8003574:	f104 0401 	add.w	r4, r4, #1
 8003578:	f103 0501 	add.w	r5, r3, #1
 800357c:	f10b 0608 	add.w	r6, fp, #8
 8003580:	f340 811c 	ble.w	80037bc <_vfprintf_r+0xd6c>
 8003584:	2301      	movs	r3, #1
 8003586:	2d07      	cmp	r5, #7
 8003588:	f8cb 7000 	str.w	r7, [fp]
 800358c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003590:	f8cb 3004 	str.w	r3, [fp, #4]
 8003594:	f300 81bb 	bgt.w	800390e <_vfprintf_r+0xebe>
 8003598:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800359a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800359c:	1c69      	adds	r1, r5, #1
 800359e:	441c      	add	r4, r3
 80035a0:	2907      	cmp	r1, #7
 80035a2:	910b      	str	r1, [sp, #44]	; 0x2c
 80035a4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80035a8:	e9c6 2300 	strd	r2, r3, [r6]
 80035ac:	f300 81bb 	bgt.w	8003926 <_vfprintf_r+0xed6>
 80035b0:	3608      	adds	r6, #8
 80035b2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035b4:	1c53      	adds	r3, r2, #1
 80035b6:	461d      	mov	r5, r3
 80035b8:	9509      	str	r5, [sp, #36]	; 0x24
 80035ba:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80035bc:	930e      	str	r3, [sp, #56]	; 0x38
 80035be:	2200      	movs	r2, #0
 80035c0:	2300      	movs	r3, #0
 80035c2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80035c6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80035ca:	f106 0b08 	add.w	fp, r6, #8
 80035ce:	f7fd fd1b 	bl	8001008 <__aeabi_dcmpeq>
 80035d2:	2800      	cmp	r0, #0
 80035d4:	f040 80c2 	bne.w	800375c <_vfprintf_r+0xd0c>
 80035d8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80035da:	f8c6 9004 	str.w	r9, [r6, #4]
 80035de:	3701      	adds	r7, #1
 80035e0:	444c      	add	r4, r9
 80035e2:	2d07      	cmp	r5, #7
 80035e4:	6037      	str	r7, [r6, #0]
 80035e6:	942c      	str	r4, [sp, #176]	; 0xb0
 80035e8:	952b      	str	r5, [sp, #172]	; 0xac
 80035ea:	f300 80f9 	bgt.w	80037e0 <_vfprintf_r+0xd90>
 80035ee:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035f0:	f106 0310 	add.w	r3, r6, #16
 80035f4:	3202      	adds	r2, #2
 80035f6:	465e      	mov	r6, fp
 80035f8:	9209      	str	r2, [sp, #36]	; 0x24
 80035fa:	469b      	mov	fp, r3
 80035fc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80035fe:	6072      	str	r2, [r6, #4]
 8003600:	4414      	add	r4, r2
 8003602:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003604:	942c      	str	r4, [sp, #176]	; 0xb0
 8003606:	ab26      	add	r3, sp, #152	; 0x98
 8003608:	2a07      	cmp	r2, #7
 800360a:	922b      	str	r2, [sp, #172]	; 0xac
 800360c:	6033      	str	r3, [r6, #0]
 800360e:	f77f ac70 	ble.w	8002ef2 <_vfprintf_r+0x4a2>
 8003612:	aa2a      	add	r2, sp, #168	; 0xa8
 8003614:	9907      	ldr	r1, [sp, #28]
 8003616:	9803      	ldr	r0, [sp, #12]
 8003618:	f003 fd48 	bl	80070ac <__sprint_r>
 800361c:	2800      	cmp	r0, #0
 800361e:	d18f      	bne.n	8003540 <_vfprintf_r+0xaf0>
 8003620:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003622:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003626:	e464      	b.n	8002ef2 <_vfprintf_r+0x4a2>
 8003628:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800362a:	af56      	add	r7, sp, #344	; 0x158
 800362c:	0923      	lsrs	r3, r4, #4
 800362e:	f004 010f 	and.w	r1, r4, #15
 8003632:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003636:	092a      	lsrs	r2, r5, #4
 8003638:	461c      	mov	r4, r3
 800363a:	4615      	mov	r5, r2
 800363c:	5c43      	ldrb	r3, [r0, r1]
 800363e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003642:	ea54 0305 	orrs.w	r3, r4, r5
 8003646:	d1f1      	bne.n	800362c <_vfprintf_r+0xbdc>
 8003648:	9b04      	ldr	r3, [sp, #16]
 800364a:	1bdb      	subs	r3, r3, r7
 800364c:	9309      	str	r3, [sp, #36]	; 0x24
 800364e:	f7ff bb80 	b.w	8002d52 <_vfprintf_r+0x302>
 8003652:	46b1      	mov	r9, r6
 8003654:	e776      	b.n	8003544 <_vfprintf_r+0xaf4>
 8003656:	aa2a      	add	r2, sp, #168	; 0xa8
 8003658:	9907      	ldr	r1, [sp, #28]
 800365a:	9803      	ldr	r0, [sp, #12]
 800365c:	f003 fd26 	bl	80070ac <__sprint_r>
 8003660:	2800      	cmp	r0, #0
 8003662:	f47f af6d 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003666:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003668:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800366c:	f7ff bbdd 	b.w	8002e2a <_vfprintf_r+0x3da>
 8003670:	aa2a      	add	r2, sp, #168	; 0xa8
 8003672:	9907      	ldr	r1, [sp, #28]
 8003674:	9803      	ldr	r0, [sp, #12]
 8003676:	f003 fd19 	bl	80070ac <__sprint_r>
 800367a:	2800      	cmp	r0, #0
 800367c:	f47f af60 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003680:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003682:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003686:	f7ff bbe0 	b.w	8002e4a <_vfprintf_r+0x3fa>
 800368a:	4698      	mov	r8, r3
 800368c:	2d00      	cmp	r5, #0
 800368e:	bf08      	it	eq
 8003690:	2c0a      	cmpeq	r4, #10
 8003692:	f080 8170 	bcs.w	8003976 <_vfprintf_r+0xf26>
 8003696:	af56      	add	r7, sp, #344	; 0x158
 8003698:	3430      	adds	r4, #48	; 0x30
 800369a:	2301      	movs	r3, #1
 800369c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80036a0:	9309      	str	r3, [sp, #36]	; 0x24
 80036a2:	f7ff bb56 	b.w	8002d52 <_vfprintf_r+0x302>
 80036a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036a8:	9907      	ldr	r1, [sp, #28]
 80036aa:	9803      	ldr	r0, [sp, #12]
 80036ac:	f003 fcfe 	bl	80070ac <__sprint_r>
 80036b0:	2800      	cmp	r0, #0
 80036b2:	f47f af45 	bne.w	8003540 <_vfprintf_r+0xaf0>
 80036b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036bc:	e406      	b.n	8002ecc <_vfprintf_r+0x47c>
 80036be:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036c0:	2b00      	cmp	r3, #0
 80036c2:	f340 8273 	ble.w	8003bac <_vfprintf_r+0x115c>
 80036c6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80036ca:	4293      	cmp	r3, r2
 80036cc:	bfa8      	it	ge
 80036ce:	4613      	movge	r3, r2
 80036d0:	2b00      	cmp	r3, #0
 80036d2:	461d      	mov	r5, r3
 80036d4:	dd0d      	ble.n	80036f2 <_vfprintf_r+0xca2>
 80036d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036d8:	f8cb 7000 	str.w	r7, [fp]
 80036dc:	3301      	adds	r3, #1
 80036de:	442c      	add	r4, r5
 80036e0:	2b07      	cmp	r3, #7
 80036e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80036e4:	f8cb 5004 	str.w	r5, [fp, #4]
 80036e8:	932b      	str	r3, [sp, #172]	; 0xac
 80036ea:	f300 82c1 	bgt.w	8003c70 <_vfprintf_r+0x1220>
 80036ee:	f10b 0b08 	add.w	fp, fp, #8
 80036f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80036f4:	2d00      	cmp	r5, #0
 80036f6:	bfa8      	it	ge
 80036f8:	1b5b      	subge	r3, r3, r5
 80036fa:	2b00      	cmp	r3, #0
 80036fc:	461d      	mov	r5, r3
 80036fe:	f340 8099 	ble.w	8003834 <_vfprintf_r+0xde4>
 8003702:	2d10      	cmp	r5, #16
 8003704:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003706:	4b2c      	ldr	r3, [pc, #176]	; (80037b8 <_vfprintf_r+0xd68>)
 8003708:	f340 83db 	ble.w	8003ec2 <_vfprintf_r+0x1472>
 800370c:	4618      	mov	r0, r3
 800370e:	4621      	mov	r1, r4
 8003710:	465b      	mov	r3, fp
 8003712:	2610      	movs	r6, #16
 8003714:	46bb      	mov	fp, r7
 8003716:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800371a:	9c07      	ldr	r4, [sp, #28]
 800371c:	4607      	mov	r7, r0
 800371e:	e004      	b.n	800372a <_vfprintf_r+0xcda>
 8003720:	3308      	adds	r3, #8
 8003722:	3d10      	subs	r5, #16
 8003724:	2d10      	cmp	r5, #16
 8003726:	f340 83c7 	ble.w	8003eb8 <_vfprintf_r+0x1468>
 800372a:	3201      	adds	r2, #1
 800372c:	3110      	adds	r1, #16
 800372e:	2a07      	cmp	r2, #7
 8003730:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003734:	e9c3 7600 	strd	r7, r6, [r3]
 8003738:	ddf2      	ble.n	8003720 <_vfprintf_r+0xcd0>
 800373a:	aa2a      	add	r2, sp, #168	; 0xa8
 800373c:	4621      	mov	r1, r4
 800373e:	4648      	mov	r0, r9
 8003740:	f003 fcb4 	bl	80070ac <__sprint_r>
 8003744:	2800      	cmp	r0, #0
 8003746:	f040 84a5 	bne.w	8004094 <_vfprintf_r+0x1644>
 800374a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800374e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003750:	e7e7      	b.n	8003722 <_vfprintf_r+0xcd2>
 8003752:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003756:	af56      	add	r7, sp, #344	; 0x158
 8003758:	f7ff bafb 	b.w	8002d52 <_vfprintf_r+0x302>
 800375c:	f1b9 0f00 	cmp.w	r9, #0
 8003760:	f77f af4c 	ble.w	80035fc <_vfprintf_r+0xbac>
 8003764:	f1b9 0f10 	cmp.w	r9, #16
 8003768:	4b13      	ldr	r3, [pc, #76]	; (80037b8 <_vfprintf_r+0xd68>)
 800376a:	f340 8659 	ble.w	8004420 <_vfprintf_r+0x19d0>
 800376e:	4619      	mov	r1, r3
 8003770:	4622      	mov	r2, r4
 8003772:	4633      	mov	r3, r6
 8003774:	2710      	movs	r7, #16
 8003776:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800377a:	9c07      	ldr	r4, [sp, #28]
 800377c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800377e:	460e      	mov	r6, r1
 8003780:	e007      	b.n	8003792 <_vfprintf_r+0xd42>
 8003782:	3308      	adds	r3, #8
 8003784:	f1a9 0910 	sub.w	r9, r9, #16
 8003788:	f1b9 0f10 	cmp.w	r9, #16
 800378c:	f340 8353 	ble.w	8003e36 <_vfprintf_r+0x13e6>
 8003790:	3501      	adds	r5, #1
 8003792:	3210      	adds	r2, #16
 8003794:	2d07      	cmp	r5, #7
 8003796:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800379a:	e9c3 6700 	strd	r6, r7, [r3]
 800379e:	ddf0      	ble.n	8003782 <_vfprintf_r+0xd32>
 80037a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037a2:	4621      	mov	r1, r4
 80037a4:	4658      	mov	r0, fp
 80037a6:	f003 fc81 	bl	80070ac <__sprint_r>
 80037aa:	2800      	cmp	r0, #0
 80037ac:	f040 8472 	bne.w	8004094 <_vfprintf_r+0x1644>
 80037b0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80037b4:	ab2d      	add	r3, sp, #180	; 0xb4
 80037b6:	e7e5      	b.n	8003784 <_vfprintf_r+0xd34>
 80037b8:	080077a4 	.word	0x080077a4
 80037bc:	f018 0f01 	tst.w	r8, #1
 80037c0:	f47f aee0 	bne.w	8003584 <_vfprintf_r+0xb34>
 80037c4:	2201      	movs	r2, #1
 80037c6:	2d07      	cmp	r5, #7
 80037c8:	f8cb 7000 	str.w	r7, [fp]
 80037cc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80037d0:	f8cb 2004 	str.w	r2, [fp, #4]
 80037d4:	dc04      	bgt.n	80037e0 <_vfprintf_r+0xd90>
 80037d6:	3302      	adds	r3, #2
 80037d8:	9309      	str	r3, [sp, #36]	; 0x24
 80037da:	f10b 0b10 	add.w	fp, fp, #16
 80037de:	e70d      	b.n	80035fc <_vfprintf_r+0xbac>
 80037e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037e2:	9907      	ldr	r1, [sp, #28]
 80037e4:	9803      	ldr	r0, [sp, #12]
 80037e6:	f003 fc61 	bl	80070ac <__sprint_r>
 80037ea:	2800      	cmp	r0, #0
 80037ec:	f47f aea8 	bne.w	8003540 <_vfprintf_r+0xaf0>
 80037f0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80037f4:	3301      	adds	r3, #1
 80037f6:	9309      	str	r3, [sp, #36]	; 0x24
 80037f8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80037fc:	ae2d      	add	r6, sp, #180	; 0xb4
 80037fe:	e6fd      	b.n	80035fc <_vfprintf_r+0xbac>
 8003800:	aa2a      	add	r2, sp, #168	; 0xa8
 8003802:	9907      	ldr	r1, [sp, #28]
 8003804:	9803      	ldr	r0, [sp, #12]
 8003806:	f003 fc51 	bl	80070ac <__sprint_r>
 800380a:	2800      	cmp	r0, #0
 800380c:	f47f ae98 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003810:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003814:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003816:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800381a:	f7ff baf6 	b.w	8002e0a <_vfprintf_r+0x3ba>
 800381e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003820:	9907      	ldr	r1, [sp, #28]
 8003822:	9803      	ldr	r0, [sp, #12]
 8003824:	f003 fc42 	bl	80070ac <__sprint_r>
 8003828:	2800      	cmp	r0, #0
 800382a:	f47f ae89 	bne.w	8003540 <_vfprintf_r+0xaf0>
 800382e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003830:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003834:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003836:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800383a:	443b      	add	r3, r7
 800383c:	4699      	mov	r9, r3
 800383e:	f040 8357 	bne.w	8003ef0 <_vfprintf_r+0x14a0>
 8003842:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003844:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003846:	4293      	cmp	r3, r2
 8003848:	db49      	blt.n	80038de <_vfprintf_r+0xe8e>
 800384a:	f018 0f01 	tst.w	r8, #1
 800384e:	d146      	bne.n	80038de <_vfprintf_r+0xe8e>
 8003850:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003852:	18bd      	adds	r5, r7, r2
 8003854:	eba5 0509 	sub.w	r5, r5, r9
 8003858:	1ad3      	subs	r3, r2, r3
 800385a:	429d      	cmp	r5, r3
 800385c:	bfa8      	it	ge
 800385e:	461d      	movge	r5, r3
 8003860:	2d00      	cmp	r5, #0
 8003862:	dd0d      	ble.n	8003880 <_vfprintf_r+0xe30>
 8003864:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003866:	f8cb 9000 	str.w	r9, [fp]
 800386a:	3201      	adds	r2, #1
 800386c:	442c      	add	r4, r5
 800386e:	2a07      	cmp	r2, #7
 8003870:	942c      	str	r4, [sp, #176]	; 0xb0
 8003872:	f8cb 5004 	str.w	r5, [fp, #4]
 8003876:	922b      	str	r2, [sp, #172]	; 0xac
 8003878:	f300 8462 	bgt.w	8004140 <_vfprintf_r+0x16f0>
 800387c:	f10b 0b08 	add.w	fp, fp, #8
 8003880:	2d00      	cmp	r5, #0
 8003882:	bfac      	ite	ge
 8003884:	1b5d      	subge	r5, r3, r5
 8003886:	461d      	movlt	r5, r3
 8003888:	2d00      	cmp	r5, #0
 800388a:	f77f ab32 	ble.w	8002ef2 <_vfprintf_r+0x4a2>
 800388e:	2d10      	cmp	r5, #16
 8003890:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003892:	4bc5      	ldr	r3, [pc, #788]	; (8003ba8 <_vfprintf_r+0x1158>)
 8003894:	f340 80c4 	ble.w	8003a20 <_vfprintf_r+0xfd0>
 8003898:	4619      	mov	r1, r3
 800389a:	2610      	movs	r6, #16
 800389c:	4623      	mov	r3, r4
 800389e:	9f03      	ldr	r7, [sp, #12]
 80038a0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80038a4:	460c      	mov	r4, r1
 80038a6:	e005      	b.n	80038b4 <_vfprintf_r+0xe64>
 80038a8:	f10b 0b08 	add.w	fp, fp, #8
 80038ac:	3d10      	subs	r5, #16
 80038ae:	2d10      	cmp	r5, #16
 80038b0:	f340 80b3 	ble.w	8003a1a <_vfprintf_r+0xfca>
 80038b4:	3201      	adds	r2, #1
 80038b6:	3310      	adds	r3, #16
 80038b8:	2a07      	cmp	r2, #7
 80038ba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80038be:	e9cb 4600 	strd	r4, r6, [fp]
 80038c2:	ddf1      	ble.n	80038a8 <_vfprintf_r+0xe58>
 80038c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80038c6:	4649      	mov	r1, r9
 80038c8:	4638      	mov	r0, r7
 80038ca:	f003 fbef 	bl	80070ac <__sprint_r>
 80038ce:	2800      	cmp	r0, #0
 80038d0:	f47f ae38 	bne.w	8003544 <_vfprintf_r+0xaf4>
 80038d4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80038d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038dc:	e7e6      	b.n	80038ac <_vfprintf_r+0xe5c>
 80038de:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038e0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038e2:	f8cb 1000 	str.w	r1, [fp]
 80038e6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80038ec:	3201      	adds	r2, #1
 80038ee:	440c      	add	r4, r1
 80038f0:	2a07      	cmp	r2, #7
 80038f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80038f4:	922b      	str	r2, [sp, #172]	; 0xac
 80038f6:	f300 828c 	bgt.w	8003e12 <_vfprintf_r+0x13c2>
 80038fa:	f10b 0b08 	add.w	fp, fp, #8
 80038fe:	e7a7      	b.n	8003850 <_vfprintf_r+0xe00>
 8003900:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003904:	f002 fa94 	bl	8005e30 <__retarget_lock_release_recursive>
 8003908:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800390c:	e628      	b.n	8003560 <_vfprintf_r+0xb10>
 800390e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003910:	9907      	ldr	r1, [sp, #28]
 8003912:	9803      	ldr	r0, [sp, #12]
 8003914:	f003 fbca 	bl	80070ac <__sprint_r>
 8003918:	2800      	cmp	r0, #0
 800391a:	f47f ae11 	bne.w	8003540 <_vfprintf_r+0xaf0>
 800391e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003922:	ae2d      	add	r6, sp, #180	; 0xb4
 8003924:	e638      	b.n	8003598 <_vfprintf_r+0xb48>
 8003926:	aa2a      	add	r2, sp, #168	; 0xa8
 8003928:	9907      	ldr	r1, [sp, #28]
 800392a:	9803      	ldr	r0, [sp, #12]
 800392c:	f003 fbbe 	bl	80070ac <__sprint_r>
 8003930:	2800      	cmp	r0, #0
 8003932:	f47f ae05 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003936:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800393a:	ae2d      	add	r6, sp, #180	; 0xb4
 800393c:	930b      	str	r3, [sp, #44]	; 0x2c
 800393e:	e638      	b.n	80035b2 <_vfprintf_r+0xb62>
 8003940:	6814      	ldr	r4, [r2, #0]
 8003942:	9308      	str	r3, [sp, #32]
 8003944:	2500      	movs	r5, #0
 8003946:	f7ff bb95 	b.w	8003074 <_vfprintf_r+0x624>
 800394a:	6814      	ldr	r4, [r2, #0]
 800394c:	9308      	str	r3, [sp, #32]
 800394e:	2500      	movs	r5, #0
 8003950:	f7ff b9ae 	b.w	8002cb0 <_vfprintf_r+0x260>
 8003954:	680c      	ldr	r4, [r1, #0]
 8003956:	9208      	str	r2, [sp, #32]
 8003958:	17e5      	asrs	r5, r4, #31
 800395a:	4620      	mov	r0, r4
 800395c:	4629      	mov	r1, r5
 800395e:	f7ff b9d2 	b.w	8002d06 <_vfprintf_r+0x2b6>
 8003962:	6814      	ldr	r4, [r2, #0]
 8003964:	9108      	str	r1, [sp, #32]
 8003966:	2201      	movs	r2, #1
 8003968:	2500      	movs	r5, #0
 800396a:	f7ff bb32 	b.w	8002fd2 <_vfprintf_r+0x582>
 800396e:	2a01      	cmp	r2, #1
 8003970:	f47f ab3c 	bne.w	8002fec <_vfprintf_r+0x59c>
 8003974:	e68f      	b.n	8003696 <_vfprintf_r+0xc46>
 8003976:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800397a:	2200      	movs	r2, #0
 800397c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003980:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003984:	af56      	add	r7, sp, #344	; 0x158
 8003986:	4692      	mov	sl, r2
 8003988:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800398c:	461e      	mov	r6, r3
 800398e:	e00a      	b.n	80039a6 <_vfprintf_r+0xf56>
 8003990:	2300      	movs	r3, #0
 8003992:	4620      	mov	r0, r4
 8003994:	4629      	mov	r1, r5
 8003996:	220a      	movs	r2, #10
 8003998:	f7fc fc32 	bl	8000200 <__aeabi_uldivmod>
 800399c:	4604      	mov	r4, r0
 800399e:	460d      	mov	r5, r1
 80039a0:	ea54 0305 	orrs.w	r3, r4, r5
 80039a4:	d029      	beq.n	80039fa <_vfprintf_r+0xfaa>
 80039a6:	220a      	movs	r2, #10
 80039a8:	2300      	movs	r3, #0
 80039aa:	4620      	mov	r0, r4
 80039ac:	4629      	mov	r1, r5
 80039ae:	f7fc fc27 	bl	8000200 <__aeabi_uldivmod>
 80039b2:	3230      	adds	r2, #48	; 0x30
 80039b4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80039b8:	f10a 0a01 	add.w	sl, sl, #1
 80039bc:	3f01      	subs	r7, #1
 80039be:	2e00      	cmp	r6, #0
 80039c0:	d0e6      	beq.n	8003990 <_vfprintf_r+0xf40>
 80039c2:	f898 3000 	ldrb.w	r3, [r8]
 80039c6:	459a      	cmp	sl, r3
 80039c8:	d1e2      	bne.n	8003990 <_vfprintf_r+0xf40>
 80039ca:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80039ce:	d0df      	beq.n	8003990 <_vfprintf_r+0xf40>
 80039d0:	2d00      	cmp	r5, #0
 80039d2:	bf08      	it	eq
 80039d4:	2c0a      	cmpeq	r4, #10
 80039d6:	d3db      	bcc.n	8003990 <_vfprintf_r+0xf40>
 80039d8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80039da:	9918      	ldr	r1, [sp, #96]	; 0x60
 80039dc:	1aff      	subs	r7, r7, r3
 80039de:	461a      	mov	r2, r3
 80039e0:	4638      	mov	r0, r7
 80039e2:	f003 faf5 	bl	8006fd0 <strncpy>
 80039e6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80039ea:	2b00      	cmp	r3, #0
 80039ec:	f000 8496 	beq.w	800431c <_vfprintf_r+0x18cc>
 80039f0:	f108 0801 	add.w	r8, r8, #1
 80039f4:	f04f 0a00 	mov.w	sl, #0
 80039f8:	e7ca      	b.n	8003990 <_vfprintf_r+0xf40>
 80039fa:	9b04      	ldr	r3, [sp, #16]
 80039fc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a00:	1bdb      	subs	r3, r3, r7
 8003a02:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003a06:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003a08:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a0c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003a10:	9309      	str	r3, [sp, #36]	; 0x24
 8003a12:	f7ff b99e 	b.w	8002d52 <_vfprintf_r+0x302>
 8003a16:	46c1      	mov	r9, r8
 8003a18:	e594      	b.n	8003544 <_vfprintf_r+0xaf4>
 8003a1a:	4621      	mov	r1, r4
 8003a1c:	461c      	mov	r4, r3
 8003a1e:	460b      	mov	r3, r1
 8003a20:	3201      	adds	r2, #1
 8003a22:	442c      	add	r4, r5
 8003a24:	2a07      	cmp	r2, #7
 8003a26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a2a:	e9cb 3500 	strd	r3, r5, [fp]
 8003a2e:	f77f aa5e 	ble.w	8002eee <_vfprintf_r+0x49e>
 8003a32:	e5ee      	b.n	8003612 <_vfprintf_r+0xbc2>
 8003a34:	f018 0f10 	tst.w	r8, #16
 8003a38:	f040 80f8 	bne.w	8003c2c <_vfprintf_r+0x11dc>
 8003a3c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003a40:	f000 8351 	beq.w	80040e6 <_vfprintf_r+0x1696>
 8003a44:	9a05      	ldr	r2, [sp, #20]
 8003a46:	801a      	strh	r2, [r3, #0]
 8003a48:	4657      	mov	r7, sl
 8003a4a:	f7ff baa7 	b.w	8002f9c <_vfprintf_r+0x54c>
 8003a4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a50:	9907      	ldr	r1, [sp, #28]
 8003a52:	9803      	ldr	r0, [sp, #12]
 8003a54:	f003 fb2a 	bl	80070ac <__sprint_r>
 8003a58:	2800      	cmp	r0, #0
 8003a5a:	f47f ad71 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003a5e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a60:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a64:	f7ff b9f5 	b.w	8002e52 <_vfprintf_r+0x402>
 8003a68:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a6c:	4602      	mov	r2, r0
 8003a6e:	460b      	mov	r3, r1
 8003a70:	f7fd fafc 	bl	800106c <__aeabi_dcmpun>
 8003a74:	2800      	cmp	r0, #0
 8003a76:	f040 8491 	bne.w	800439c <_vfprintf_r+0x194c>
 8003a7a:	2e61      	cmp	r6, #97	; 0x61
 8003a7c:	f000 8111 	beq.w	8003ca2 <_vfprintf_r+0x1252>
 8003a80:	2e41      	cmp	r6, #65	; 0x41
 8003a82:	f000 8377 	beq.w	8004174 <_vfprintf_r+0x1724>
 8003a86:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003a8a:	f026 0220 	bic.w	r2, r6, #32
 8003a8e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003a92:	930e      	str	r3, [sp, #56]	; 0x38
 8003a94:	9204      	str	r2, [sp, #16]
 8003a96:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a98:	f000 842d 	beq.w	80042f6 <_vfprintf_r+0x18a6>
 8003a9c:	2a47      	cmp	r2, #71	; 0x47
 8003a9e:	f000 8424 	beq.w	80042ea <_vfprintf_r+0x189a>
 8003aa2:	2b00      	cmp	r3, #0
 8003aa4:	f2c0 82f9 	blt.w	800409a <_vfprintf_r+0x164a>
 8003aa8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003aac:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003ab0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003ab4:	2e66      	cmp	r6, #102	; 0x66
 8003ab6:	f000 83eb 	beq.w	8004290 <_vfprintf_r+0x1840>
 8003aba:	2e46      	cmp	r6, #70	; 0x46
 8003abc:	f000 847e 	beq.w	80043bc <_vfprintf_r+0x196c>
 8003ac0:	9b04      	ldr	r3, [sp, #16]
 8003ac2:	9803      	ldr	r0, [sp, #12]
 8003ac4:	2b45      	cmp	r3, #69	; 0x45
 8003ac6:	bf0c      	ite	eq
 8003ac8:	f109 0501 	addeq.w	r5, r9, #1
 8003acc:	464d      	movne	r5, r9
 8003ace:	aa28      	add	r2, sp, #160	; 0xa0
 8003ad0:	ab25      	add	r3, sp, #148	; 0x94
 8003ad2:	e9cd 3200 	strd	r3, r2, [sp]
 8003ad6:	2102      	movs	r1, #2
 8003ad8:	ab24      	add	r3, sp, #144	; 0x90
 8003ada:	462a      	mov	r2, r5
 8003adc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ae0:	f000 fe3e 	bl	8004760 <_dtoa_r>
 8003ae4:	2e67      	cmp	r6, #103	; 0x67
 8003ae6:	4607      	mov	r7, r0
 8003ae8:	f040 849c 	bne.w	8004424 <_vfprintf_r+0x19d4>
 8003aec:	f018 0f01 	tst.w	r8, #1
 8003af0:	f040 83f9 	bne.w	80042e6 <_vfprintf_r+0x1896>
 8003af4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003af6:	4640      	mov	r0, r8
 8003af8:	1bdb      	subs	r3, r3, r7
 8003afa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003afe:	9310      	str	r3, [sp, #64]	; 0x40
 8003b00:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b02:	9311      	str	r3, [sp, #68]	; 0x44
 8003b04:	9b04      	ldr	r3, [sp, #16]
 8003b06:	2b47      	cmp	r3, #71	; 0x47
 8003b08:	f000 81e7 	beq.w	8003eda <_vfprintf_r+0x148a>
 8003b0c:	9b04      	ldr	r3, [sp, #16]
 8003b0e:	2b46      	cmp	r3, #70	; 0x46
 8003b10:	f000 8300 	beq.w	8004114 <_vfprintf_r+0x16c4>
 8003b14:	9904      	ldr	r1, [sp, #16]
 8003b16:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b18:	b2f2      	uxtb	r2, r6
 8003b1a:	2941      	cmp	r1, #65	; 0x41
 8003b1c:	bf08      	it	eq
 8003b1e:	320f      	addeq	r2, #15
 8003b20:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003b24:	bf06      	itte	eq
 8003b26:	b2d2      	uxtbeq	r2, r2
 8003b28:	2101      	moveq	r1, #1
 8003b2a:	2100      	movne	r1, #0
 8003b2c:	2b00      	cmp	r3, #0
 8003b2e:	9324      	str	r3, [sp, #144]	; 0x90
 8003b30:	bfb8      	it	lt
 8003b32:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003b34:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003b38:	bfba      	itte	lt
 8003b3a:	f1c3 0301 	rsblt	r3, r3, #1
 8003b3e:	222d      	movlt	r2, #45	; 0x2d
 8003b40:	222b      	movge	r2, #43	; 0x2b
 8003b42:	2b09      	cmp	r3, #9
 8003b44:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003b48:	f300 83f9 	bgt.w	800433e <_vfprintf_r+0x18ee>
 8003b4c:	2900      	cmp	r1, #0
 8003b4e:	f040 8487 	bne.w	8004460 <_vfprintf_r+0x1a10>
 8003b52:	2230      	movs	r2, #48	; 0x30
 8003b54:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003b58:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003b5c:	3330      	adds	r3, #48	; 0x30
 8003b5e:	7013      	strb	r3, [r2, #0]
 8003b60:	1c53      	adds	r3, r2, #1
 8003b62:	aa26      	add	r2, sp, #152	; 0x98
 8003b64:	1a9b      	subs	r3, r3, r2
 8003b66:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b68:	9319      	str	r3, [sp, #100]	; 0x64
 8003b6a:	2a01      	cmp	r2, #1
 8003b6c:	4413      	add	r3, r2
 8003b6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b70:	f340 8442 	ble.w	80043f8 <_vfprintf_r+0x19a8>
 8003b74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b76:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b78:	4413      	add	r3, r2
 8003b7a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b7c:	2300      	movs	r3, #0
 8003b7e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b80:	9314      	str	r3, [sp, #80]	; 0x50
 8003b82:	9311      	str	r3, [sp, #68]	; 0x44
 8003b84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b86:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003b8a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b8e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003b92:	9304      	str	r3, [sp, #16]
 8003b94:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003b96:	2b00      	cmp	r3, #0
 8003b98:	f040 8275 	bne.w	8004086 <_vfprintf_r+0x1636>
 8003b9c:	4699      	mov	r9, r3
 8003b9e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ba2:	f7ff b8e2 	b.w	8002d6a <_vfprintf_r+0x31a>
 8003ba6:	bf00      	nop
 8003ba8:	080077a4 	.word	0x080077a4
 8003bac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bae:	49bd      	ldr	r1, [pc, #756]	; (8003ea4 <_vfprintf_r+0x1454>)
 8003bb0:	f8cb 1000 	str.w	r1, [fp]
 8003bb4:	3201      	adds	r2, #1
 8003bb6:	3401      	adds	r4, #1
 8003bb8:	2101      	movs	r1, #1
 8003bba:	2a07      	cmp	r2, #7
 8003bbc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bc0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003bc4:	dc60      	bgt.n	8003c88 <_vfprintf_r+0x1238>
 8003bc6:	f10b 0b08 	add.w	fp, fp, #8
 8003bca:	b92b      	cbnz	r3, 8003bd8 <_vfprintf_r+0x1188>
 8003bcc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bce:	b91a      	cbnz	r2, 8003bd8 <_vfprintf_r+0x1188>
 8003bd0:	f018 0f01 	tst.w	r8, #1
 8003bd4:	f43f a98d 	beq.w	8002ef2 <_vfprintf_r+0x4a2>
 8003bd8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bda:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003bdc:	f8cb 1000 	str.w	r1, [fp]
 8003be0:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003be2:	f8cb 1004 	str.w	r1, [fp, #4]
 8003be6:	3201      	adds	r2, #1
 8003be8:	440c      	add	r4, r1
 8003bea:	2a07      	cmp	r2, #7
 8003bec:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bee:	922b      	str	r2, [sp, #172]	; 0xac
 8003bf0:	f300 8282 	bgt.w	80040f8 <_vfprintf_r+0x16a8>
 8003bf4:	f10b 0b08 	add.w	fp, fp, #8
 8003bf8:	2b00      	cmp	r3, #0
 8003bfa:	f2c0 82e7 	blt.w	80041cc <_vfprintf_r+0x177c>
 8003bfe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c00:	3201      	adds	r2, #1
 8003c02:	441c      	add	r4, r3
 8003c04:	2a07      	cmp	r2, #7
 8003c06:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c0a:	e9cb 7300 	strd	r7, r3, [fp]
 8003c0e:	f77f a96e 	ble.w	8002eee <_vfprintf_r+0x49e>
 8003c12:	e4fe      	b.n	8003612 <_vfprintf_r+0xbc2>
 8003c14:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c16:	9907      	ldr	r1, [sp, #28]
 8003c18:	9803      	ldr	r0, [sp, #12]
 8003c1a:	f003 fa47 	bl	80070ac <__sprint_r>
 8003c1e:	2800      	cmp	r0, #0
 8003c20:	f47f ac8e 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003c24:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c28:	f7ff bbf0 	b.w	800340c <_vfprintf_r+0x9bc>
 8003c2c:	9a05      	ldr	r2, [sp, #20]
 8003c2e:	601a      	str	r2, [r3, #0]
 8003c30:	4657      	mov	r7, sl
 8003c32:	f7ff b9b3 	b.w	8002f9c <_vfprintf_r+0x54c>
 8003c36:	8814      	ldrh	r4, [r2, #0]
 8003c38:	9108      	str	r1, [sp, #32]
 8003c3a:	2500      	movs	r5, #0
 8003c3c:	2201      	movs	r2, #1
 8003c3e:	f7ff b9c8 	b.w	8002fd2 <_vfprintf_r+0x582>
 8003c42:	8814      	ldrh	r4, [r2, #0]
 8003c44:	9308      	str	r3, [sp, #32]
 8003c46:	2500      	movs	r5, #0
 8003c48:	f7ff ba14 	b.w	8003074 <_vfprintf_r+0x624>
 8003c4c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003c50:	9208      	str	r2, [sp, #32]
 8003c52:	17e5      	asrs	r5, r4, #31
 8003c54:	4620      	mov	r0, r4
 8003c56:	4629      	mov	r1, r5
 8003c58:	f7ff b855 	b.w	8002d06 <_vfprintf_r+0x2b6>
 8003c5c:	8814      	ldrh	r4, [r2, #0]
 8003c5e:	9308      	str	r3, [sp, #32]
 8003c60:	2500      	movs	r5, #0
 8003c62:	f7ff b825 	b.w	8002cb0 <_vfprintf_r+0x260>
 8003c66:	222d      	movs	r2, #45	; 0x2d
 8003c68:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c6c:	f7ff baa2 	b.w	80031b4 <_vfprintf_r+0x764>
 8003c70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c72:	9907      	ldr	r1, [sp, #28]
 8003c74:	9803      	ldr	r0, [sp, #12]
 8003c76:	f003 fa19 	bl	80070ac <__sprint_r>
 8003c7a:	2800      	cmp	r0, #0
 8003c7c:	f47f ac60 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003c80:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c82:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c86:	e534      	b.n	80036f2 <_vfprintf_r+0xca2>
 8003c88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c8a:	9907      	ldr	r1, [sp, #28]
 8003c8c:	9803      	ldr	r0, [sp, #12]
 8003c8e:	f003 fa0d 	bl	80070ac <__sprint_r>
 8003c92:	2800      	cmp	r0, #0
 8003c94:	f47f ac54 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003c98:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c9a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c9c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ca0:	e793      	b.n	8003bca <_vfprintf_r+0x117a>
 8003ca2:	2330      	movs	r3, #48	; 0x30
 8003ca4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ca8:	2378      	movs	r3, #120	; 0x78
 8003caa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003cae:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003cb2:	f048 0402 	orr.w	r4, r8, #2
 8003cb6:	f300 82b0 	bgt.w	800421a <_vfprintf_r+0x17ca>
 8003cba:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cbe:	930e      	str	r3, [sp, #56]	; 0x38
 8003cc0:	f026 0320 	bic.w	r3, r6, #32
 8003cc4:	9304      	str	r3, [sp, #16]
 8003cc6:	2200      	movs	r2, #0
 8003cc8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cca:	920a      	str	r2, [sp, #40]	; 0x28
 8003ccc:	46a0      	mov	r8, r4
 8003cce:	af3d      	add	r7, sp, #244	; 0xf4
 8003cd0:	2b00      	cmp	r3, #0
 8003cd2:	f2c0 81e3 	blt.w	800409c <_vfprintf_r+0x164c>
 8003cd6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003cda:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003cde:	2300      	movs	r3, #0
 8003ce0:	930b      	str	r3, [sp, #44]	; 0x2c
 8003ce2:	2e61      	cmp	r6, #97	; 0x61
 8003ce4:	f000 8255 	beq.w	8004192 <_vfprintf_r+0x1742>
 8003ce8:	2e41      	cmp	r6, #65	; 0x41
 8003cea:	f47f aee3 	bne.w	8003ab4 <_vfprintf_r+0x1064>
 8003cee:	a824      	add	r0, sp, #144	; 0x90
 8003cf0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cf4:	f003 f8e2 	bl	8006ebc <frexp>
 8003cf8:	2200      	movs	r2, #0
 8003cfa:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003cfe:	ec51 0b10 	vmov	r0, r1, d0
 8003d02:	f7fc ff19 	bl	8000b38 <__aeabi_dmul>
 8003d06:	2200      	movs	r2, #0
 8003d08:	2300      	movs	r3, #0
 8003d0a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d0e:	f7fd f97b 	bl	8001008 <__aeabi_dcmpeq>
 8003d12:	2800      	cmp	r0, #0
 8003d14:	f040 8305 	bne.w	8004322 <_vfprintf_r+0x18d2>
 8003d18:	4b63      	ldr	r3, [pc, #396]	; (8003ea8 <_vfprintf_r+0x1458>)
 8003d1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d1c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003d20:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003d24:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003d28:	9721      	str	r7, [sp, #132]	; 0x84
 8003d2a:	46b9      	mov	r9, r7
 8003d2c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003d30:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003d34:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003d38:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003d3c:	e003      	b.n	8003d46 <_vfprintf_r+0x12f6>
 8003d3e:	f7fd f963 	bl	8001008 <__aeabi_dcmpeq>
 8003d42:	bb20      	cbnz	r0, 8003d8e <_vfprintf_r+0x133e>
 8003d44:	46a9      	mov	r9, r5
 8003d46:	2200      	movs	r2, #0
 8003d48:	4b58      	ldr	r3, [pc, #352]	; (8003eac <_vfprintf_r+0x145c>)
 8003d4a:	4630      	mov	r0, r6
 8003d4c:	4639      	mov	r1, r7
 8003d4e:	f7fc fef3 	bl	8000b38 <__aeabi_dmul>
 8003d52:	460f      	mov	r7, r1
 8003d54:	4606      	mov	r6, r0
 8003d56:	f7fd f99f 	bl	8001098 <__aeabi_d2iz>
 8003d5a:	4680      	mov	r8, r0
 8003d5c:	f7fc fe82 	bl	8000a64 <__aeabi_i2d>
 8003d60:	4602      	mov	r2, r0
 8003d62:	460b      	mov	r3, r1
 8003d64:	4630      	mov	r0, r6
 8003d66:	4639      	mov	r1, r7
 8003d68:	f7fc fd2e 	bl	80007c8 <__aeabi_dsub>
 8003d6c:	464d      	mov	r5, r9
 8003d6e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003d72:	f805 cb01 	strb.w	ip, [r5], #1
 8003d76:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d7a:	46a3      	mov	fp, r4
 8003d7c:	4606      	mov	r6, r0
 8003d7e:	460f      	mov	r7, r1
 8003d80:	f04f 0200 	mov.w	r2, #0
 8003d84:	f04f 0300 	mov.w	r3, #0
 8003d88:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003d8c:	d1d7      	bne.n	8003d3e <_vfprintf_r+0x12ee>
 8003d8e:	4630      	mov	r0, r6
 8003d90:	4639      	mov	r1, r7
 8003d92:	2200      	movs	r2, #0
 8003d94:	4b46      	ldr	r3, [pc, #280]	; (8003eb0 <_vfprintf_r+0x1460>)
 8003d96:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003d9a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003d9c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003da0:	4644      	mov	r4, r8
 8003da2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003da6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003daa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003dae:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003db2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003db4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003db8:	f7fd f94e 	bl	8001058 <__aeabi_dcmpgt>
 8003dbc:	2800      	cmp	r0, #0
 8003dbe:	f040 8176 	bne.w	80040ae <_vfprintf_r+0x165e>
 8003dc2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003dc6:	2200      	movs	r2, #0
 8003dc8:	4b39      	ldr	r3, [pc, #228]	; (8003eb0 <_vfprintf_r+0x1460>)
 8003dca:	f7fd f91d 	bl	8001008 <__aeabi_dcmpeq>
 8003dce:	b110      	cbz	r0, 8003dd6 <_vfprintf_r+0x1386>
 8003dd0:	07e2      	lsls	r2, r4, #31
 8003dd2:	f100 816c 	bmi.w	80040ae <_vfprintf_r+0x165e>
 8003dd6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dd8:	2b00      	cmp	r3, #0
 8003dda:	db07      	blt.n	8003dec <_vfprintf_r+0x139c>
 8003ddc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dde:	3301      	adds	r3, #1
 8003de0:	442b      	add	r3, r5
 8003de2:	2230      	movs	r2, #48	; 0x30
 8003de4:	f805 2b01 	strb.w	r2, [r5], #1
 8003de8:	42ab      	cmp	r3, r5
 8003dea:	d1fb      	bne.n	8003de4 <_vfprintf_r+0x1394>
 8003dec:	1beb      	subs	r3, r5, r7
 8003dee:	4640      	mov	r0, r8
 8003df0:	9310      	str	r3, [sp, #64]	; 0x40
 8003df2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003df6:	e683      	b.n	8003b00 <_vfprintf_r+0x10b0>
 8003df8:	f8cd 9010 	str.w	r9, [sp, #16]
 8003dfc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003e00:	9408      	str	r4, [sp, #32]
 8003e02:	4681      	mov	r9, r0
 8003e04:	900f      	str	r0, [sp, #60]	; 0x3c
 8003e06:	9014      	str	r0, [sp, #80]	; 0x50
 8003e08:	9011      	str	r0, [sp, #68]	; 0x44
 8003e0a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e0e:	f7fe bfac 	b.w	8002d6a <_vfprintf_r+0x31a>
 8003e12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e14:	9907      	ldr	r1, [sp, #28]
 8003e16:	9803      	ldr	r0, [sp, #12]
 8003e18:	f003 f948 	bl	80070ac <__sprint_r>
 8003e1c:	2800      	cmp	r0, #0
 8003e1e:	f47f ab8f 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003e22:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e24:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e26:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e2a:	e511      	b.n	8003850 <_vfprintf_r+0xe00>
 8003e2c:	4252      	negs	r2, r2
 8003e2e:	9206      	str	r2, [sp, #24]
 8003e30:	9308      	str	r3, [sp, #32]
 8003e32:	f7ff b96d 	b.w	8003110 <_vfprintf_r+0x6c0>
 8003e36:	4614      	mov	r4, r2
 8003e38:	4632      	mov	r2, r6
 8003e3a:	461e      	mov	r6, r3
 8003e3c:	4613      	mov	r3, r2
 8003e3e:	462a      	mov	r2, r5
 8003e40:	3201      	adds	r2, #1
 8003e42:	9209      	str	r2, [sp, #36]	; 0x24
 8003e44:	f106 0208 	add.w	r2, r6, #8
 8003e48:	e9c6 3900 	strd	r3, r9, [r6]
 8003e4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e4e:	932b      	str	r3, [sp, #172]	; 0xac
 8003e50:	444c      	add	r4, r9
 8003e52:	2b07      	cmp	r3, #7
 8003e54:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e56:	f73f acc3 	bgt.w	80037e0 <_vfprintf_r+0xd90>
 8003e5a:	3301      	adds	r3, #1
 8003e5c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e5e:	f102 0b08 	add.w	fp, r2, #8
 8003e62:	4616      	mov	r6, r2
 8003e64:	f7ff bbca 	b.w	80035fc <_vfprintf_r+0xbac>
 8003e68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e6a:	9907      	ldr	r1, [sp, #28]
 8003e6c:	9803      	ldr	r0, [sp, #12]
 8003e6e:	f003 f91d 	bl	80070ac <__sprint_r>
 8003e72:	2800      	cmp	r0, #0
 8003e74:	f47f ab64 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8003e78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e7e:	f7ff bade 	b.w	800343e <_vfprintf_r+0x9ee>
 8003e82:	464b      	mov	r3, r9
 8003e84:	2b06      	cmp	r3, #6
 8003e86:	bf28      	it	cs
 8003e88:	2306      	movcs	r3, #6
 8003e8a:	46b9      	mov	r9, r7
 8003e8c:	970f      	str	r7, [sp, #60]	; 0x3c
 8003e8e:	9714      	str	r7, [sp, #80]	; 0x50
 8003e90:	9711      	str	r7, [sp, #68]	; 0x44
 8003e92:	970a      	str	r7, [sp, #40]	; 0x28
 8003e94:	463a      	mov	r2, r7
 8003e96:	9304      	str	r3, [sp, #16]
 8003e98:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003e9c:	4f05      	ldr	r7, [pc, #20]	; (8003eb4 <_vfprintf_r+0x1464>)
 8003e9e:	f7fe bf64 	b.w	8002d6a <_vfprintf_r+0x31a>
 8003ea2:	bf00      	nop
 8003ea4:	08007790 	.word	0x08007790
 8003ea8:	08007774 	.word	0x08007774
 8003eac:	40300000 	.word	0x40300000
 8003eb0:	3fe00000 	.word	0x3fe00000
 8003eb4:	08007788 	.word	0x08007788
 8003eb8:	460c      	mov	r4, r1
 8003eba:	4639      	mov	r1, r7
 8003ebc:	465f      	mov	r7, fp
 8003ebe:	469b      	mov	fp, r3
 8003ec0:	460b      	mov	r3, r1
 8003ec2:	3201      	adds	r2, #1
 8003ec4:	442c      	add	r4, r5
 8003ec6:	2a07      	cmp	r2, #7
 8003ec8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ecc:	e9cb 3500 	strd	r3, r5, [fp]
 8003ed0:	f73f aca5 	bgt.w	800381e <_vfprintf_r+0xdce>
 8003ed4:	f10b 0b08 	add.w	fp, fp, #8
 8003ed8:	e4ac      	b.n	8003834 <_vfprintf_r+0xde4>
 8003eda:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003edc:	1cda      	adds	r2, r3, #3
 8003ede:	db02      	blt.n	8003ee6 <_vfprintf_r+0x1496>
 8003ee0:	4599      	cmp	r9, r3
 8003ee2:	f280 80b5 	bge.w	8004050 <_vfprintf_r+0x1600>
 8003ee6:	3e02      	subs	r6, #2
 8003ee8:	f026 0320 	bic.w	r3, r6, #32
 8003eec:	9304      	str	r3, [sp, #16]
 8003eee:	e611      	b.n	8003b14 <_vfprintf_r+0x10c4>
 8003ef0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ef2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003ef6:	465a      	mov	r2, fp
 8003ef8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003efc:	18fb      	adds	r3, r7, r3
 8003efe:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003f02:	970c      	str	r7, [sp, #48]	; 0x30
 8003f04:	4eaf      	ldr	r6, [pc, #700]	; (80041c4 <_vfprintf_r+0x1774>)
 8003f06:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003f0a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f0c:	464f      	mov	r7, r9
 8003f0e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f12:	4621      	mov	r1, r4
 8003f14:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f16:	2b00      	cmp	r3, #0
 8003f18:	d05b      	beq.n	8003fd2 <_vfprintf_r+0x1582>
 8003f1a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f1c:	2b00      	cmp	r3, #0
 8003f1e:	d154      	bne.n	8003fca <_vfprintf_r+0x157a>
 8003f20:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f22:	3b01      	subs	r3, #1
 8003f24:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003f28:	9314      	str	r3, [sp, #80]	; 0x50
 8003f2a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f2c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003f2e:	6010      	str	r0, [r2, #0]
 8003f30:	3301      	adds	r3, #1
 8003f32:	4459      	add	r1, fp
 8003f34:	2b07      	cmp	r3, #7
 8003f36:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f38:	f8c2 b004 	str.w	fp, [r2, #4]
 8003f3c:	932b      	str	r3, [sp, #172]	; 0xac
 8003f3e:	dc68      	bgt.n	8004012 <_vfprintf_r+0x15c2>
 8003f40:	3208      	adds	r2, #8
 8003f42:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003f44:	f898 3000 	ldrb.w	r3, [r8]
 8003f48:	1bc5      	subs	r5, r0, r7
 8003f4a:	429d      	cmp	r5, r3
 8003f4c:	bfa8      	it	ge
 8003f4e:	461d      	movge	r5, r3
 8003f50:	2d00      	cmp	r5, #0
 8003f52:	dd0b      	ble.n	8003f6c <_vfprintf_r+0x151c>
 8003f54:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f56:	6017      	str	r7, [r2, #0]
 8003f58:	3301      	adds	r3, #1
 8003f5a:	4429      	add	r1, r5
 8003f5c:	2b07      	cmp	r3, #7
 8003f5e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f60:	6055      	str	r5, [r2, #4]
 8003f62:	932b      	str	r3, [sp, #172]	; 0xac
 8003f64:	dc5e      	bgt.n	8004024 <_vfprintf_r+0x15d4>
 8003f66:	f898 3000 	ldrb.w	r3, [r8]
 8003f6a:	3208      	adds	r2, #8
 8003f6c:	2d00      	cmp	r5, #0
 8003f6e:	bfac      	ite	ge
 8003f70:	1b5d      	subge	r5, r3, r5
 8003f72:	461d      	movlt	r5, r3
 8003f74:	2d00      	cmp	r5, #0
 8003f76:	dd26      	ble.n	8003fc6 <_vfprintf_r+0x1576>
 8003f78:	2d10      	cmp	r5, #16
 8003f7a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f7c:	dd3c      	ble.n	8003ff8 <_vfprintf_r+0x15a8>
 8003f7e:	2410      	movs	r4, #16
 8003f80:	e003      	b.n	8003f8a <_vfprintf_r+0x153a>
 8003f82:	3208      	adds	r2, #8
 8003f84:	3d10      	subs	r5, #16
 8003f86:	2d10      	cmp	r5, #16
 8003f88:	dd36      	ble.n	8003ff8 <_vfprintf_r+0x15a8>
 8003f8a:	3001      	adds	r0, #1
 8003f8c:	3110      	adds	r1, #16
 8003f8e:	2807      	cmp	r0, #7
 8003f90:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f94:	e9c2 6400 	strd	r6, r4, [r2]
 8003f98:	ddf3      	ble.n	8003f82 <_vfprintf_r+0x1532>
 8003f9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f9c:	4651      	mov	r1, sl
 8003f9e:	4648      	mov	r0, r9
 8003fa0:	f003 f884 	bl	80070ac <__sprint_r>
 8003fa4:	2800      	cmp	r0, #0
 8003fa6:	d150      	bne.n	800404a <_vfprintf_r+0x15fa>
 8003fa8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003fac:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fae:	e7e9      	b.n	8003f84 <_vfprintf_r+0x1534>
 8003fb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fb2:	4651      	mov	r1, sl
 8003fb4:	4648      	mov	r0, r9
 8003fb6:	f003 f879 	bl	80070ac <__sprint_r>
 8003fba:	2800      	cmp	r0, #0
 8003fbc:	d145      	bne.n	800404a <_vfprintf_r+0x15fa>
 8003fbe:	f898 3000 	ldrb.w	r3, [r8]
 8003fc2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fc4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fc6:	441f      	add	r7, r3
 8003fc8:	e7a4      	b.n	8003f14 <_vfprintf_r+0x14c4>
 8003fca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fcc:	3b01      	subs	r3, #1
 8003fce:	930f      	str	r3, [sp, #60]	; 0x3c
 8003fd0:	e7ab      	b.n	8003f2a <_vfprintf_r+0x14da>
 8003fd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fd4:	2b00      	cmp	r3, #0
 8003fd6:	d1f8      	bne.n	8003fca <_vfprintf_r+0x157a>
 8003fd8:	46b9      	mov	r9, r7
 8003fda:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fdc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003fde:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003fe2:	18fb      	adds	r3, r7, r3
 8003fe4:	4599      	cmp	r9, r3
 8003fe6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003fea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003fee:	4693      	mov	fp, r2
 8003ff0:	460c      	mov	r4, r1
 8003ff2:	bf28      	it	cs
 8003ff4:	4699      	movcs	r9, r3
 8003ff6:	e424      	b.n	8003842 <_vfprintf_r+0xdf2>
 8003ff8:	3001      	adds	r0, #1
 8003ffa:	4429      	add	r1, r5
 8003ffc:	2807      	cmp	r0, #7
 8003ffe:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004002:	e9c2 6500 	strd	r6, r5, [r2]
 8004006:	dcd3      	bgt.n	8003fb0 <_vfprintf_r+0x1560>
 8004008:	f898 3000 	ldrb.w	r3, [r8]
 800400c:	3208      	adds	r2, #8
 800400e:	441f      	add	r7, r3
 8004010:	e780      	b.n	8003f14 <_vfprintf_r+0x14c4>
 8004012:	aa2a      	add	r2, sp, #168	; 0xa8
 8004014:	4651      	mov	r1, sl
 8004016:	4648      	mov	r0, r9
 8004018:	f003 f848 	bl	80070ac <__sprint_r>
 800401c:	b9a8      	cbnz	r0, 800404a <_vfprintf_r+0x15fa>
 800401e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004020:	aa2d      	add	r2, sp, #180	; 0xb4
 8004022:	e78e      	b.n	8003f42 <_vfprintf_r+0x14f2>
 8004024:	aa2a      	add	r2, sp, #168	; 0xa8
 8004026:	4651      	mov	r1, sl
 8004028:	4648      	mov	r0, r9
 800402a:	f003 f83f 	bl	80070ac <__sprint_r>
 800402e:	b960      	cbnz	r0, 800404a <_vfprintf_r+0x15fa>
 8004030:	f898 3000 	ldrb.w	r3, [r8]
 8004034:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004036:	aa2d      	add	r2, sp, #180	; 0xb4
 8004038:	e798      	b.n	8003f6c <_vfprintf_r+0x151c>
 800403a:	4638      	mov	r0, r7
 800403c:	f7fc fb00 	bl	8000640 <strlen>
 8004040:	46a9      	mov	r9, r5
 8004042:	4603      	mov	r3, r0
 8004044:	9009      	str	r0, [sp, #36]	; 0x24
 8004046:	f7ff b8f4 	b.w	8003232 <_vfprintf_r+0x7e2>
 800404a:	46d1      	mov	r9, sl
 800404c:	f7ff ba7a 	b.w	8003544 <_vfprintf_r+0xaf4>
 8004050:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004052:	4619      	mov	r1, r3
 8004054:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004056:	4299      	cmp	r1, r3
 8004058:	f300 8082 	bgt.w	8004160 <_vfprintf_r+0x1710>
 800405c:	07c4      	lsls	r4, r0, #31
 800405e:	f140 816b 	bpl.w	8004338 <_vfprintf_r+0x18e8>
 8004062:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004064:	4413      	add	r3, r2
 8004066:	9309      	str	r3, [sp, #36]	; 0x24
 8004068:	0541      	lsls	r1, r0, #21
 800406a:	d503      	bpl.n	8004074 <_vfprintf_r+0x1624>
 800406c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800406e:	2b00      	cmp	r3, #0
 8004070:	f300 80e6 	bgt.w	8004240 <_vfprintf_r+0x17f0>
 8004074:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004076:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800407a:	9304      	str	r3, [sp, #16]
 800407c:	2667      	movs	r6, #103	; 0x67
 800407e:	2300      	movs	r3, #0
 8004080:	930f      	str	r3, [sp, #60]	; 0x3c
 8004082:	9314      	str	r3, [sp, #80]	; 0x50
 8004084:	e586      	b.n	8003b94 <_vfprintf_r+0x1144>
 8004086:	222d      	movs	r2, #45	; 0x2d
 8004088:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800408c:	f04f 0900 	mov.w	r9, #0
 8004090:	f7fe be6c 	b.w	8002d6c <_vfprintf_r+0x31c>
 8004094:	46a1      	mov	r9, r4
 8004096:	f7ff ba55 	b.w	8003544 <_vfprintf_r+0xaf4>
 800409a:	900a      	str	r0, [sp, #40]	; 0x28
 800409c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80040a0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80040a4:	931f      	str	r3, [sp, #124]	; 0x7c
 80040a6:	232d      	movs	r3, #45	; 0x2d
 80040a8:	911e      	str	r1, [sp, #120]	; 0x78
 80040aa:	930b      	str	r3, [sp, #44]	; 0x2c
 80040ac:	e619      	b.n	8003ce2 <_vfprintf_r+0x1292>
 80040ae:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040b0:	9328      	str	r3, [sp, #160]	; 0xa0
 80040b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040b4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80040b8:	7bd9      	ldrb	r1, [r3, #15]
 80040ba:	4291      	cmp	r1, r2
 80040bc:	462b      	mov	r3, r5
 80040be:	d109      	bne.n	80040d4 <_vfprintf_r+0x1684>
 80040c0:	2030      	movs	r0, #48	; 0x30
 80040c2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80040c6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040c8:	1e5a      	subs	r2, r3, #1
 80040ca:	9228      	str	r2, [sp, #160]	; 0xa0
 80040cc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80040d0:	4291      	cmp	r1, r2
 80040d2:	d0f6      	beq.n	80040c2 <_vfprintf_r+0x1672>
 80040d4:	2a39      	cmp	r2, #57	; 0x39
 80040d6:	bf0b      	itete	eq
 80040d8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80040da:	3201      	addne	r2, #1
 80040dc:	7a92      	ldrbeq	r2, [r2, #10]
 80040de:	b2d2      	uxtbne	r2, r2
 80040e0:	f803 2c01 	strb.w	r2, [r3, #-1]
 80040e4:	e682      	b.n	8003dec <_vfprintf_r+0x139c>
 80040e6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80040ea:	f43f ad9f 	beq.w	8003c2c <_vfprintf_r+0x11dc>
 80040ee:	9a05      	ldr	r2, [sp, #20]
 80040f0:	701a      	strb	r2, [r3, #0]
 80040f2:	4657      	mov	r7, sl
 80040f4:	f7fe bf52 	b.w	8002f9c <_vfprintf_r+0x54c>
 80040f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040fa:	9907      	ldr	r1, [sp, #28]
 80040fc:	9803      	ldr	r0, [sp, #12]
 80040fe:	f002 ffd5 	bl	80070ac <__sprint_r>
 8004102:	2800      	cmp	r0, #0
 8004104:	f47f aa1c 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8004108:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800410a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800410e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004112:	e571      	b.n	8003bf8 <_vfprintf_r+0x11a8>
 8004114:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004116:	2b00      	cmp	r3, #0
 8004118:	f340 8164 	ble.w	80043e4 <_vfprintf_r+0x1994>
 800411c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800411e:	f1b9 0f00 	cmp.w	r9, #0
 8004122:	f040 8103 	bne.w	800432c <_vfprintf_r+0x18dc>
 8004126:	07c6      	lsls	r6, r0, #31
 8004128:	f100 8100 	bmi.w	800432c <_vfprintf_r+0x18dc>
 800412c:	9309      	str	r3, [sp, #36]	; 0x24
 800412e:	2666      	movs	r6, #102	; 0x66
 8004130:	0543      	lsls	r3, r0, #21
 8004132:	f100 8086 	bmi.w	8004242 <_vfprintf_r+0x17f2>
 8004136:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004138:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800413c:	9304      	str	r3, [sp, #16]
 800413e:	e79e      	b.n	800407e <_vfprintf_r+0x162e>
 8004140:	aa2a      	add	r2, sp, #168	; 0xa8
 8004142:	9907      	ldr	r1, [sp, #28]
 8004144:	9803      	ldr	r0, [sp, #12]
 8004146:	f002 ffb1 	bl	80070ac <__sprint_r>
 800414a:	2800      	cmp	r0, #0
 800414c:	f47f a9f8 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8004150:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004152:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004154:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004156:	1ad3      	subs	r3, r2, r3
 8004158:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800415c:	f7ff bb90 	b.w	8003880 <_vfprintf_r+0xe30>
 8004160:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004162:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004164:	4413      	add	r3, r2
 8004166:	9309      	str	r3, [sp, #36]	; 0x24
 8004168:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800416a:	2b00      	cmp	r3, #0
 800416c:	f340 8149 	ble.w	8004402 <_vfprintf_r+0x19b2>
 8004170:	2667      	movs	r6, #103	; 0x67
 8004172:	e7dd      	b.n	8004130 <_vfprintf_r+0x16e0>
 8004174:	2330      	movs	r3, #48	; 0x30
 8004176:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800417a:	2358      	movs	r3, #88	; 0x58
 800417c:	e595      	b.n	8003caa <_vfprintf_r+0x125a>
 800417e:	9803      	ldr	r0, [sp, #12]
 8004180:	aa2a      	add	r2, sp, #168	; 0xa8
 8004182:	4649      	mov	r1, r9
 8004184:	f002 ff92 	bl	80070ac <__sprint_r>
 8004188:	2800      	cmp	r0, #0
 800418a:	f47f a9e0 	bne.w	800354e <_vfprintf_r+0xafe>
 800418e:	f7fe bf0f 	b.w	8002fb0 <_vfprintf_r+0x560>
 8004192:	a824      	add	r0, sp, #144	; 0x90
 8004194:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004198:	f002 fe90 	bl	8006ebc <frexp>
 800419c:	2200      	movs	r2, #0
 800419e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80041a2:	ec51 0b10 	vmov	r0, r1, d0
 80041a6:	f7fc fcc7 	bl	8000b38 <__aeabi_dmul>
 80041aa:	2200      	movs	r2, #0
 80041ac:	2300      	movs	r3, #0
 80041ae:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80041b2:	f7fc ff29 	bl	8001008 <__aeabi_dcmpeq>
 80041b6:	b108      	cbz	r0, 80041bc <_vfprintf_r+0x176c>
 80041b8:	2301      	movs	r3, #1
 80041ba:	9324      	str	r3, [sp, #144]	; 0x90
 80041bc:	4b02      	ldr	r3, [pc, #8]	; (80041c8 <_vfprintf_r+0x1778>)
 80041be:	9309      	str	r3, [sp, #36]	; 0x24
 80041c0:	e5ac      	b.n	8003d1c <_vfprintf_r+0x12cc>
 80041c2:	bf00      	nop
 80041c4:	080077a4 	.word	0x080077a4
 80041c8:	08007760 	.word	0x08007760
 80041cc:	425d      	negs	r5, r3
 80041ce:	3310      	adds	r3, #16
 80041d0:	4bb9      	ldr	r3, [pc, #740]	; (80044b8 <_vfprintf_r+0x1a68>)
 80041d2:	f280 8097 	bge.w	8004304 <_vfprintf_r+0x18b4>
 80041d6:	4619      	mov	r1, r3
 80041d8:	2610      	movs	r6, #16
 80041da:	4623      	mov	r3, r4
 80041dc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80041e0:	460c      	mov	r4, r1
 80041e2:	e005      	b.n	80041f0 <_vfprintf_r+0x17a0>
 80041e4:	f10b 0b08 	add.w	fp, fp, #8
 80041e8:	3d10      	subs	r5, #16
 80041ea:	2d10      	cmp	r5, #16
 80041ec:	f340 8087 	ble.w	80042fe <_vfprintf_r+0x18ae>
 80041f0:	3201      	adds	r2, #1
 80041f2:	3310      	adds	r3, #16
 80041f4:	2a07      	cmp	r2, #7
 80041f6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80041fa:	e9cb 4600 	strd	r4, r6, [fp]
 80041fe:	ddf1      	ble.n	80041e4 <_vfprintf_r+0x1794>
 8004200:	aa2a      	add	r2, sp, #168	; 0xa8
 8004202:	9907      	ldr	r1, [sp, #28]
 8004204:	4648      	mov	r0, r9
 8004206:	f002 ff51 	bl	80070ac <__sprint_r>
 800420a:	2800      	cmp	r0, #0
 800420c:	f47f a998 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8004210:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004214:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004218:	e7e6      	b.n	80041e8 <_vfprintf_r+0x1798>
 800421a:	f109 0101 	add.w	r1, r9, #1
 800421e:	9803      	ldr	r0, [sp, #12]
 8004220:	f001 fe80 	bl	8005f24 <_malloc_r>
 8004224:	4607      	mov	r7, r0
 8004226:	2800      	cmp	r0, #0
 8004228:	f000 813b 	beq.w	80044a2 <_vfprintf_r+0x1a52>
 800422c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004230:	930e      	str	r3, [sp, #56]	; 0x38
 8004232:	f026 0320 	bic.w	r3, r6, #32
 8004236:	9304      	str	r3, [sp, #16]
 8004238:	46a0      	mov	r8, r4
 800423a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800423c:	900a      	str	r0, [sp, #40]	; 0x28
 800423e:	e547      	b.n	8003cd0 <_vfprintf_r+0x1280>
 8004240:	2667      	movs	r6, #103	; 0x67
 8004242:	981a      	ldr	r0, [sp, #104]	; 0x68
 8004244:	2200      	movs	r2, #0
 8004246:	920f      	str	r2, [sp, #60]	; 0x3c
 8004248:	9214      	str	r2, [sp, #80]	; 0x50
 800424a:	7803      	ldrb	r3, [r0, #0]
 800424c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800424e:	2bff      	cmp	r3, #255	; 0xff
 8004250:	d00c      	beq.n	800426c <_vfprintf_r+0x181c>
 8004252:	4293      	cmp	r3, r2
 8004254:	da0a      	bge.n	800426c <_vfprintf_r+0x181c>
 8004256:	7841      	ldrb	r1, [r0, #1]
 8004258:	1ad2      	subs	r2, r2, r3
 800425a:	b1a9      	cbz	r1, 8004288 <_vfprintf_r+0x1838>
 800425c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800425e:	3301      	adds	r3, #1
 8004260:	9314      	str	r3, [sp, #80]	; 0x50
 8004262:	460b      	mov	r3, r1
 8004264:	2bff      	cmp	r3, #255	; 0xff
 8004266:	f100 0001 	add.w	r0, r0, #1
 800426a:	d1f2      	bne.n	8004252 <_vfprintf_r+0x1802>
 800426c:	9211      	str	r2, [sp, #68]	; 0x44
 800426e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004270:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004272:	9909      	ldr	r1, [sp, #36]	; 0x24
 8004274:	901a      	str	r0, [sp, #104]	; 0x68
 8004276:	4413      	add	r3, r2
 8004278:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800427a:	fb02 1303 	mla	r3, r2, r3, r1
 800427e:	9309      	str	r3, [sp, #36]	; 0x24
 8004280:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004284:	9304      	str	r3, [sp, #16]
 8004286:	e485      	b.n	8003b94 <_vfprintf_r+0x1144>
 8004288:	990f      	ldr	r1, [sp, #60]	; 0x3c
 800428a:	3101      	adds	r1, #1
 800428c:	910f      	str	r1, [sp, #60]	; 0x3c
 800428e:	e7de      	b.n	800424e <_vfprintf_r+0x17fe>
 8004290:	aa28      	add	r2, sp, #160	; 0xa0
 8004292:	ab25      	add	r3, sp, #148	; 0x94
 8004294:	e9cd 3200 	strd	r3, r2, [sp]
 8004298:	2103      	movs	r1, #3
 800429a:	ab24      	add	r3, sp, #144	; 0x90
 800429c:	464a      	mov	r2, r9
 800429e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80042a2:	9803      	ldr	r0, [sp, #12]
 80042a4:	f000 fa5c 	bl	8004760 <_dtoa_r>
 80042a8:	464d      	mov	r5, r9
 80042aa:	4607      	mov	r7, r0
 80042ac:	eb00 0409 	add.w	r4, r0, r9
 80042b0:	783b      	ldrb	r3, [r7, #0]
 80042b2:	2b30      	cmp	r3, #48	; 0x30
 80042b4:	f000 80be 	beq.w	8004434 <_vfprintf_r+0x19e4>
 80042b8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80042ba:	442c      	add	r4, r5
 80042bc:	2200      	movs	r2, #0
 80042be:	2300      	movs	r3, #0
 80042c0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80042c4:	f7fc fea0 	bl	8001008 <__aeabi_dcmpeq>
 80042c8:	b108      	cbz	r0, 80042ce <_vfprintf_r+0x187e>
 80042ca:	4623      	mov	r3, r4
 80042cc:	e413      	b.n	8003af6 <_vfprintf_r+0x10a6>
 80042ce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042d0:	42a3      	cmp	r3, r4
 80042d2:	f4bf ac10 	bcs.w	8003af6 <_vfprintf_r+0x10a6>
 80042d6:	2130      	movs	r1, #48	; 0x30
 80042d8:	1c5a      	adds	r2, r3, #1
 80042da:	9228      	str	r2, [sp, #160]	; 0xa0
 80042dc:	7019      	strb	r1, [r3, #0]
 80042de:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042e0:	429c      	cmp	r4, r3
 80042e2:	d8f9      	bhi.n	80042d8 <_vfprintf_r+0x1888>
 80042e4:	e407      	b.n	8003af6 <_vfprintf_r+0x10a6>
 80042e6:	197c      	adds	r4, r7, r5
 80042e8:	e7e8      	b.n	80042bc <_vfprintf_r+0x186c>
 80042ea:	f1b9 0f00 	cmp.w	r9, #0
 80042ee:	f000 8092 	beq.w	8004416 <_vfprintf_r+0x19c6>
 80042f2:	900a      	str	r0, [sp, #40]	; 0x28
 80042f4:	e4ec      	b.n	8003cd0 <_vfprintf_r+0x1280>
 80042f6:	900a      	str	r0, [sp, #40]	; 0x28
 80042f8:	f04f 0906 	mov.w	r9, #6
 80042fc:	e4e8      	b.n	8003cd0 <_vfprintf_r+0x1280>
 80042fe:	4621      	mov	r1, r4
 8004300:	461c      	mov	r4, r3
 8004302:	460b      	mov	r3, r1
 8004304:	3201      	adds	r2, #1
 8004306:	442c      	add	r4, r5
 8004308:	2a07      	cmp	r2, #7
 800430a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800430e:	e9cb 3500 	strd	r3, r5, [fp]
 8004312:	f300 80a9 	bgt.w	8004468 <_vfprintf_r+0x1a18>
 8004316:	f10b 0b08 	add.w	fp, fp, #8
 800431a:	e470      	b.n	8003bfe <_vfprintf_r+0x11ae>
 800431c:	469a      	mov	sl, r3
 800431e:	f7ff bb37 	b.w	8003990 <_vfprintf_r+0xf40>
 8004322:	2301      	movs	r3, #1
 8004324:	9324      	str	r3, [sp, #144]	; 0x90
 8004326:	4b65      	ldr	r3, [pc, #404]	; (80044bc <_vfprintf_r+0x1a6c>)
 8004328:	9309      	str	r3, [sp, #36]	; 0x24
 800432a:	e4f7      	b.n	8003d1c <_vfprintf_r+0x12cc>
 800432c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800432e:	4413      	add	r3, r2
 8004330:	444b      	add	r3, r9
 8004332:	9309      	str	r3, [sp, #36]	; 0x24
 8004334:	2666      	movs	r6, #102	; 0x66
 8004336:	e6fb      	b.n	8004130 <_vfprintf_r+0x16e0>
 8004338:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800433a:	9309      	str	r3, [sp, #36]	; 0x24
 800433c:	e694      	b.n	8004068 <_vfprintf_r+0x1618>
 800433e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004342:	4664      	mov	r4, ip
 8004344:	4d5e      	ldr	r5, [pc, #376]	; (80044c0 <_vfprintf_r+0x1a70>)
 8004346:	e000      	b.n	800434a <_vfprintf_r+0x18fa>
 8004348:	4614      	mov	r4, r2
 800434a:	fba5 1203 	umull	r1, r2, r5, r3
 800434e:	08d2      	lsrs	r2, r2, #3
 8004350:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004354:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004358:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800435c:	4613      	mov	r3, r2
 800435e:	2b09      	cmp	r3, #9
 8004360:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004364:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004368:	dcee      	bgt.n	8004348 <_vfprintf_r+0x18f8>
 800436a:	3330      	adds	r3, #48	; 0x30
 800436c:	3c02      	subs	r4, #2
 800436e:	b2db      	uxtb	r3, r3
 8004370:	45a4      	cmp	ip, r4
 8004372:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004376:	f240 8090 	bls.w	800449a <_vfprintf_r+0x1a4a>
 800437a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800437e:	4611      	mov	r1, r2
 8004380:	e001      	b.n	8004386 <_vfprintf_r+0x1936>
 8004382:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004386:	f804 3b01 	strb.w	r3, [r4], #1
 800438a:	458c      	cmp	ip, r1
 800438c:	d1f9      	bne.n	8004382 <_vfprintf_r+0x1932>
 800438e:	ab2a      	add	r3, sp, #168	; 0xa8
 8004390:	1a9b      	subs	r3, r3, r2
 8004392:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004396:	4413      	add	r3, r2
 8004398:	f7ff bbe3 	b.w	8003b62 <_vfprintf_r+0x1112>
 800439c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800439e:	4f49      	ldr	r7, [pc, #292]	; (80044c4 <_vfprintf_r+0x1a74>)
 80043a0:	2b00      	cmp	r3, #0
 80043a2:	bfb6      	itet	lt
 80043a4:	222d      	movlt	r2, #45	; 0x2d
 80043a6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80043aa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80043ae:	4b46      	ldr	r3, [pc, #280]	; (80044c8 <_vfprintf_r+0x1a78>)
 80043b0:	f7fe bf02 	b.w	80031b8 <_vfprintf_r+0x768>
 80043b4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043b8:	f7ff b8c9 	b.w	800354e <_vfprintf_r+0xafe>
 80043bc:	aa28      	add	r2, sp, #160	; 0xa0
 80043be:	ab25      	add	r3, sp, #148	; 0x94
 80043c0:	e9cd 3200 	strd	r3, r2, [sp]
 80043c4:	2103      	movs	r1, #3
 80043c6:	ab24      	add	r3, sp, #144	; 0x90
 80043c8:	464a      	mov	r2, r9
 80043ca:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80043ce:	9803      	ldr	r0, [sp, #12]
 80043d0:	f000 f9c6 	bl	8004760 <_dtoa_r>
 80043d4:	464d      	mov	r5, r9
 80043d6:	4607      	mov	r7, r0
 80043d8:	2e46      	cmp	r6, #70	; 0x46
 80043da:	eb07 0405 	add.w	r4, r7, r5
 80043de:	f43f af67 	beq.w	80042b0 <_vfprintf_r+0x1860>
 80043e2:	e76b      	b.n	80042bc <_vfprintf_r+0x186c>
 80043e4:	f1b9 0f00 	cmp.w	r9, #0
 80043e8:	d131      	bne.n	800444e <_vfprintf_r+0x19fe>
 80043ea:	07c5      	lsls	r5, r0, #31
 80043ec:	d42f      	bmi.n	800444e <_vfprintf_r+0x19fe>
 80043ee:	2301      	movs	r3, #1
 80043f0:	9304      	str	r3, [sp, #16]
 80043f2:	9309      	str	r3, [sp, #36]	; 0x24
 80043f4:	2666      	movs	r6, #102	; 0x66
 80043f6:	e642      	b.n	800407e <_vfprintf_r+0x162e>
 80043f8:	07c3      	lsls	r3, r0, #31
 80043fa:	f57f abbf 	bpl.w	8003b7c <_vfprintf_r+0x112c>
 80043fe:	f7ff bbb9 	b.w	8003b74 <_vfprintf_r+0x1124>
 8004402:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004404:	f1c3 0301 	rsb	r3, r3, #1
 8004408:	441a      	add	r2, r3
 800440a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800440e:	9209      	str	r2, [sp, #36]	; 0x24
 8004410:	9304      	str	r3, [sp, #16]
 8004412:	2667      	movs	r6, #103	; 0x67
 8004414:	e633      	b.n	800407e <_vfprintf_r+0x162e>
 8004416:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800441a:	f04f 0901 	mov.w	r9, #1
 800441e:	e457      	b.n	8003cd0 <_vfprintf_r+0x1280>
 8004420:	465a      	mov	r2, fp
 8004422:	e511      	b.n	8003e48 <_vfprintf_r+0x13f8>
 8004424:	2e47      	cmp	r6, #71	; 0x47
 8004426:	f47f af5e 	bne.w	80042e6 <_vfprintf_r+0x1896>
 800442a:	f018 0f01 	tst.w	r8, #1
 800442e:	f43f ab61 	beq.w	8003af4 <_vfprintf_r+0x10a4>
 8004432:	e7d1      	b.n	80043d8 <_vfprintf_r+0x1988>
 8004434:	2200      	movs	r2, #0
 8004436:	2300      	movs	r3, #0
 8004438:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800443c:	f7fc fde4 	bl	8001008 <__aeabi_dcmpeq>
 8004440:	2800      	cmp	r0, #0
 8004442:	f47f af39 	bne.w	80042b8 <_vfprintf_r+0x1868>
 8004446:	f1c5 0501 	rsb	r5, r5, #1
 800444a:	9524      	str	r5, [sp, #144]	; 0x90
 800444c:	e735      	b.n	80042ba <_vfprintf_r+0x186a>
 800444e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004450:	3301      	adds	r3, #1
 8004452:	444b      	add	r3, r9
 8004454:	9309      	str	r3, [sp, #36]	; 0x24
 8004456:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800445a:	9304      	str	r3, [sp, #16]
 800445c:	2666      	movs	r6, #102	; 0x66
 800445e:	e60e      	b.n	800407e <_vfprintf_r+0x162e>
 8004460:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004464:	f7ff bb7a 	b.w	8003b5c <_vfprintf_r+0x110c>
 8004468:	aa2a      	add	r2, sp, #168	; 0xa8
 800446a:	9907      	ldr	r1, [sp, #28]
 800446c:	9803      	ldr	r0, [sp, #12]
 800446e:	f002 fe1d 	bl	80070ac <__sprint_r>
 8004472:	2800      	cmp	r0, #0
 8004474:	f47f a864 	bne.w	8003540 <_vfprintf_r+0xaf0>
 8004478:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800447c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004480:	f7ff bbbd 	b.w	8003bfe <_vfprintf_r+0x11ae>
 8004484:	9908      	ldr	r1, [sp, #32]
 8004486:	f89a 6001 	ldrb.w	r6, [sl, #1]
 800448a:	680b      	ldr	r3, [r1, #0]
 800448c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004490:	1d0b      	adds	r3, r1, #4
 8004492:	4692      	mov	sl, r2
 8004494:	9308      	str	r3, [sp, #32]
 8004496:	f7fe bb59 	b.w	8002b4c <_vfprintf_r+0xfc>
 800449a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 800449e:	f7ff bb60 	b.w	8003b62 <_vfprintf_r+0x1112>
 80044a2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044a6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80044aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044ae:	f8a9 300c 	strh.w	r3, [r9, #12]
 80044b2:	f7ff b84c 	b.w	800354e <_vfprintf_r+0xafe>
 80044b6:	bf00      	nop
 80044b8:	080077a4 	.word	0x080077a4
 80044bc:	08007774 	.word	0x08007774
 80044c0:	cccccccd 	.word	0xcccccccd
 80044c4:	0800775c 	.word	0x0800775c
 80044c8:	08007758 	.word	0x08007758

080044cc <__sbprintf>:
 80044cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80044d0:	460c      	mov	r4, r1
 80044d2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80044d6:	8989      	ldrh	r1, [r1, #12]
 80044d8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80044da:	89e5      	ldrh	r5, [r4, #14]
 80044dc:	9619      	str	r6, [sp, #100]	; 0x64
 80044de:	f021 0102 	bic.w	r1, r1, #2
 80044e2:	4606      	mov	r6, r0
 80044e4:	69e0      	ldr	r0, [r4, #28]
 80044e6:	f8ad 100c 	strh.w	r1, [sp, #12]
 80044ea:	4617      	mov	r7, r2
 80044ec:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80044f0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80044f2:	f8ad 500e 	strh.w	r5, [sp, #14]
 80044f6:	4698      	mov	r8, r3
 80044f8:	ad1a      	add	r5, sp, #104	; 0x68
 80044fa:	2300      	movs	r3, #0
 80044fc:	9007      	str	r0, [sp, #28]
 80044fe:	a816      	add	r0, sp, #88	; 0x58
 8004500:	9209      	str	r2, [sp, #36]	; 0x24
 8004502:	9306      	str	r3, [sp, #24]
 8004504:	9500      	str	r5, [sp, #0]
 8004506:	9504      	str	r5, [sp, #16]
 8004508:	9102      	str	r1, [sp, #8]
 800450a:	9105      	str	r1, [sp, #20]
 800450c:	f001 fc8a 	bl	8005e24 <__retarget_lock_init_recursive>
 8004510:	4643      	mov	r3, r8
 8004512:	463a      	mov	r2, r7
 8004514:	4669      	mov	r1, sp
 8004516:	4630      	mov	r0, r6
 8004518:	f7fe fa9a 	bl	8002a50 <_vfprintf_r>
 800451c:	1e05      	subs	r5, r0, #0
 800451e:	db07      	blt.n	8004530 <__sbprintf+0x64>
 8004520:	4630      	mov	r0, r6
 8004522:	4669      	mov	r1, sp
 8004524:	f001 f8d6 	bl	80056d4 <_fflush_r>
 8004528:	2800      	cmp	r0, #0
 800452a:	bf18      	it	ne
 800452c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004530:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004534:	065b      	lsls	r3, r3, #25
 8004536:	d503      	bpl.n	8004540 <__sbprintf+0x74>
 8004538:	89a3      	ldrh	r3, [r4, #12]
 800453a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800453e:	81a3      	strh	r3, [r4, #12]
 8004540:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004542:	f001 fc71 	bl	8005e28 <__retarget_lock_close_recursive>
 8004546:	4628      	mov	r0, r5
 8004548:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800454c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004550 <__swsetup_r>:
 8004550:	b538      	push	{r3, r4, r5, lr}
 8004552:	4b31      	ldr	r3, [pc, #196]	; (8004618 <__swsetup_r+0xc8>)
 8004554:	681b      	ldr	r3, [r3, #0]
 8004556:	4605      	mov	r5, r0
 8004558:	460c      	mov	r4, r1
 800455a:	b113      	cbz	r3, 8004562 <__swsetup_r+0x12>
 800455c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800455e:	2a00      	cmp	r2, #0
 8004560:	d03a      	beq.n	80045d8 <__swsetup_r+0x88>
 8004562:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004566:	b293      	uxth	r3, r2
 8004568:	0718      	lsls	r0, r3, #28
 800456a:	d50c      	bpl.n	8004586 <__swsetup_r+0x36>
 800456c:	6920      	ldr	r0, [r4, #16]
 800456e:	b1a8      	cbz	r0, 800459c <__swsetup_r+0x4c>
 8004570:	f013 0201 	ands.w	r2, r3, #1
 8004574:	d020      	beq.n	80045b8 <__swsetup_r+0x68>
 8004576:	6963      	ldr	r3, [r4, #20]
 8004578:	2200      	movs	r2, #0
 800457a:	425b      	negs	r3, r3
 800457c:	61a3      	str	r3, [r4, #24]
 800457e:	60a2      	str	r2, [r4, #8]
 8004580:	b300      	cbz	r0, 80045c4 <__swsetup_r+0x74>
 8004582:	2000      	movs	r0, #0
 8004584:	bd38      	pop	{r3, r4, r5, pc}
 8004586:	06d9      	lsls	r1, r3, #27
 8004588:	d53e      	bpl.n	8004608 <__swsetup_r+0xb8>
 800458a:	0758      	lsls	r0, r3, #29
 800458c:	d428      	bmi.n	80045e0 <__swsetup_r+0x90>
 800458e:	6920      	ldr	r0, [r4, #16]
 8004590:	f042 0308 	orr.w	r3, r2, #8
 8004594:	81a3      	strh	r3, [r4, #12]
 8004596:	b29b      	uxth	r3, r3
 8004598:	2800      	cmp	r0, #0
 800459a:	d1e9      	bne.n	8004570 <__swsetup_r+0x20>
 800459c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80045a0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80045a4:	d0e4      	beq.n	8004570 <__swsetup_r+0x20>
 80045a6:	4628      	mov	r0, r5
 80045a8:	4621      	mov	r1, r4
 80045aa:	f001 fc71 	bl	8005e90 <__smakebuf_r>
 80045ae:	89a3      	ldrh	r3, [r4, #12]
 80045b0:	6920      	ldr	r0, [r4, #16]
 80045b2:	f013 0201 	ands.w	r2, r3, #1
 80045b6:	d1de      	bne.n	8004576 <__swsetup_r+0x26>
 80045b8:	0799      	lsls	r1, r3, #30
 80045ba:	bf58      	it	pl
 80045bc:	6962      	ldrpl	r2, [r4, #20]
 80045be:	60a2      	str	r2, [r4, #8]
 80045c0:	2800      	cmp	r0, #0
 80045c2:	d1de      	bne.n	8004582 <__swsetup_r+0x32>
 80045c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80045c8:	061a      	lsls	r2, r3, #24
 80045ca:	d5db      	bpl.n	8004584 <__swsetup_r+0x34>
 80045cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045d0:	81a3      	strh	r3, [r4, #12]
 80045d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80045d6:	bd38      	pop	{r3, r4, r5, pc}
 80045d8:	4618      	mov	r0, r3
 80045da:	f001 f8d7 	bl	800578c <__sinit>
 80045de:	e7c0      	b.n	8004562 <__swsetup_r+0x12>
 80045e0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80045e2:	b151      	cbz	r1, 80045fa <__swsetup_r+0xaa>
 80045e4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80045e8:	4299      	cmp	r1, r3
 80045ea:	d004      	beq.n	80045f6 <__swsetup_r+0xa6>
 80045ec:	4628      	mov	r0, r5
 80045ee:	f001 f96f 	bl	80058d0 <_free_r>
 80045f2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80045f6:	2300      	movs	r3, #0
 80045f8:	6323      	str	r3, [r4, #48]	; 0x30
 80045fa:	2300      	movs	r3, #0
 80045fc:	6920      	ldr	r0, [r4, #16]
 80045fe:	6063      	str	r3, [r4, #4]
 8004600:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004604:	6020      	str	r0, [r4, #0]
 8004606:	e7c3      	b.n	8004590 <__swsetup_r+0x40>
 8004608:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800460c:	2309      	movs	r3, #9
 800460e:	602b      	str	r3, [r5, #0]
 8004610:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004614:	81a2      	strh	r2, [r4, #12]
 8004616:	bd38      	pop	{r3, r4, r5, pc}
 8004618:	20000068 	.word	0x20000068

0800461c <register_fini>:
 800461c:	4b02      	ldr	r3, [pc, #8]	; (8004628 <register_fini+0xc>)
 800461e:	b113      	cbz	r3, 8004626 <register_fini+0xa>
 8004620:	4802      	ldr	r0, [pc, #8]	; (800462c <register_fini+0x10>)
 8004622:	f000 b805 	b.w	8004630 <atexit>
 8004626:	4770      	bx	lr
 8004628:	00000000 	.word	0x00000000
 800462c:	080057fd 	.word	0x080057fd

08004630 <atexit>:
 8004630:	2300      	movs	r3, #0
 8004632:	4601      	mov	r1, r0
 8004634:	461a      	mov	r2, r3
 8004636:	4618      	mov	r0, r3
 8004638:	f002 bd58 	b.w	80070ec <__register_exitproc>

0800463c <quorem>:
 800463c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004640:	6903      	ldr	r3, [r0, #16]
 8004642:	690f      	ldr	r7, [r1, #16]
 8004644:	42bb      	cmp	r3, r7
 8004646:	b083      	sub	sp, #12
 8004648:	f2c0 8086 	blt.w	8004758 <quorem+0x11c>
 800464c:	3f01      	subs	r7, #1
 800464e:	f101 0914 	add.w	r9, r1, #20
 8004652:	f100 0a14 	add.w	sl, r0, #20
 8004656:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800465a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800465e:	00bc      	lsls	r4, r7, #2
 8004660:	3201      	adds	r2, #1
 8004662:	fbb3 f8f2 	udiv	r8, r3, r2
 8004666:	eb0a 0304 	add.w	r3, sl, r4
 800466a:	9400      	str	r4, [sp, #0]
 800466c:	eb09 0b04 	add.w	fp, r9, r4
 8004670:	9301      	str	r3, [sp, #4]
 8004672:	f1b8 0f00 	cmp.w	r8, #0
 8004676:	d038      	beq.n	80046ea <quorem+0xae>
 8004678:	2500      	movs	r5, #0
 800467a:	462e      	mov	r6, r5
 800467c:	46ce      	mov	lr, r9
 800467e:	46d4      	mov	ip, sl
 8004680:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004684:	f8dc 3000 	ldr.w	r3, [ip]
 8004688:	b2a2      	uxth	r2, r4
 800468a:	fb08 5502 	mla	r5, r8, r2, r5
 800468e:	0c22      	lsrs	r2, r4, #16
 8004690:	0c2c      	lsrs	r4, r5, #16
 8004692:	fb08 4202 	mla	r2, r8, r2, r4
 8004696:	b2ad      	uxth	r5, r5
 8004698:	1b75      	subs	r5, r6, r5
 800469a:	b296      	uxth	r6, r2
 800469c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80046a0:	fa15 f383 	uxtah	r3, r5, r3
 80046a4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80046a8:	b29b      	uxth	r3, r3
 80046aa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80046ae:	45f3      	cmp	fp, lr
 80046b0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80046b4:	f84c 3b04 	str.w	r3, [ip], #4
 80046b8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80046bc:	d2e0      	bcs.n	8004680 <quorem+0x44>
 80046be:	9b00      	ldr	r3, [sp, #0]
 80046c0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80046c4:	b98b      	cbnz	r3, 80046ea <quorem+0xae>
 80046c6:	9a01      	ldr	r2, [sp, #4]
 80046c8:	1f13      	subs	r3, r2, #4
 80046ca:	459a      	cmp	sl, r3
 80046cc:	d20c      	bcs.n	80046e8 <quorem+0xac>
 80046ce:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80046d2:	b94b      	cbnz	r3, 80046e8 <quorem+0xac>
 80046d4:	f1a2 0308 	sub.w	r3, r2, #8
 80046d8:	e002      	b.n	80046e0 <quorem+0xa4>
 80046da:	681a      	ldr	r2, [r3, #0]
 80046dc:	3b04      	subs	r3, #4
 80046de:	b91a      	cbnz	r2, 80046e8 <quorem+0xac>
 80046e0:	459a      	cmp	sl, r3
 80046e2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80046e6:	d3f8      	bcc.n	80046da <quorem+0x9e>
 80046e8:	6107      	str	r7, [r0, #16]
 80046ea:	4604      	mov	r4, r0
 80046ec:	f002 f944 	bl	8006978 <__mcmp>
 80046f0:	2800      	cmp	r0, #0
 80046f2:	db2d      	blt.n	8004750 <quorem+0x114>
 80046f4:	f108 0801 	add.w	r8, r8, #1
 80046f8:	4655      	mov	r5, sl
 80046fa:	2300      	movs	r3, #0
 80046fc:	f859 1b04 	ldr.w	r1, [r9], #4
 8004700:	6828      	ldr	r0, [r5, #0]
 8004702:	b28a      	uxth	r2, r1
 8004704:	1a9a      	subs	r2, r3, r2
 8004706:	0c0b      	lsrs	r3, r1, #16
 8004708:	fa12 f280 	uxtah	r2, r2, r0
 800470c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004710:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004714:	b292      	uxth	r2, r2
 8004716:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800471a:	45cb      	cmp	fp, r9
 800471c:	f845 2b04 	str.w	r2, [r5], #4
 8004720:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004724:	d2ea      	bcs.n	80046fc <quorem+0xc0>
 8004726:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800472a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800472e:	b97a      	cbnz	r2, 8004750 <quorem+0x114>
 8004730:	1f1a      	subs	r2, r3, #4
 8004732:	4592      	cmp	sl, r2
 8004734:	d20b      	bcs.n	800474e <quorem+0x112>
 8004736:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800473a:	b942      	cbnz	r2, 800474e <quorem+0x112>
 800473c:	3b08      	subs	r3, #8
 800473e:	e002      	b.n	8004746 <quorem+0x10a>
 8004740:	681a      	ldr	r2, [r3, #0]
 8004742:	3b04      	subs	r3, #4
 8004744:	b91a      	cbnz	r2, 800474e <quorem+0x112>
 8004746:	459a      	cmp	sl, r3
 8004748:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800474c:	d3f8      	bcc.n	8004740 <quorem+0x104>
 800474e:	6127      	str	r7, [r4, #16]
 8004750:	4640      	mov	r0, r8
 8004752:	b003      	add	sp, #12
 8004754:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004758:	2000      	movs	r0, #0
 800475a:	b003      	add	sp, #12
 800475c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004760 <_dtoa_r>:
 8004760:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004764:	ec55 4b10 	vmov	r4, r5, d0
 8004768:	b09b      	sub	sp, #108	; 0x6c
 800476a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800476c:	9102      	str	r1, [sp, #8]
 800476e:	4681      	mov	r9, r0
 8004770:	9207      	str	r2, [sp, #28]
 8004772:	9305      	str	r3, [sp, #20]
 8004774:	e9cd 4500 	strd	r4, r5, [sp]
 8004778:	b156      	cbz	r6, 8004790 <_dtoa_r+0x30>
 800477a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800477c:	6072      	str	r2, [r6, #4]
 800477e:	2301      	movs	r3, #1
 8004780:	4093      	lsls	r3, r2
 8004782:	60b3      	str	r3, [r6, #8]
 8004784:	4631      	mov	r1, r6
 8004786:	f001 ff07 	bl	8006598 <_Bfree>
 800478a:	2300      	movs	r3, #0
 800478c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004790:	f1b5 0800 	subs.w	r8, r5, #0
 8004794:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004796:	bfb4      	ite	lt
 8004798:	2301      	movlt	r3, #1
 800479a:	2300      	movge	r3, #0
 800479c:	6013      	str	r3, [r2, #0]
 800479e:	4b76      	ldr	r3, [pc, #472]	; (8004978 <_dtoa_r+0x218>)
 80047a0:	bfbc      	itt	lt
 80047a2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80047a6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80047aa:	ea33 0308 	bics.w	r3, r3, r8
 80047ae:	f000 80a6 	beq.w	80048fe <_dtoa_r+0x19e>
 80047b2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047b6:	2200      	movs	r2, #0
 80047b8:	2300      	movs	r3, #0
 80047ba:	4630      	mov	r0, r6
 80047bc:	4639      	mov	r1, r7
 80047be:	f7fc fc23 	bl	8001008 <__aeabi_dcmpeq>
 80047c2:	4605      	mov	r5, r0
 80047c4:	b178      	cbz	r0, 80047e6 <_dtoa_r+0x86>
 80047c6:	9a05      	ldr	r2, [sp, #20]
 80047c8:	2301      	movs	r3, #1
 80047ca:	6013      	str	r3, [r2, #0]
 80047cc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047ce:	2b00      	cmp	r3, #0
 80047d0:	f000 80c0 	beq.w	8004954 <_dtoa_r+0x1f4>
 80047d4:	4b69      	ldr	r3, [pc, #420]	; (800497c <_dtoa_r+0x21c>)
 80047d6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80047d8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80047dc:	6013      	str	r3, [r2, #0]
 80047de:	4658      	mov	r0, fp
 80047e0:	b01b      	add	sp, #108	; 0x6c
 80047e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047e6:	aa18      	add	r2, sp, #96	; 0x60
 80047e8:	a919      	add	r1, sp, #100	; 0x64
 80047ea:	ec47 6b10 	vmov	d0, r6, r7
 80047ee:	4648      	mov	r0, r9
 80047f0:	f002 f954 	bl	8006a9c <__d2b>
 80047f4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80047f8:	4682      	mov	sl, r0
 80047fa:	f040 80a0 	bne.w	800493e <_dtoa_r+0x1de>
 80047fe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004802:	442c      	add	r4, r5
 8004804:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004808:	2b20      	cmp	r3, #32
 800480a:	f340 842c 	ble.w	8005066 <_dtoa_r+0x906>
 800480e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004812:	fa08 f803 	lsl.w	r8, r8, r3
 8004816:	9b00      	ldr	r3, [sp, #0]
 8004818:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800481c:	fa23 f000 	lsr.w	r0, r3, r0
 8004820:	ea48 0000 	orr.w	r0, r8, r0
 8004824:	f7fc f90e 	bl	8000a44 <__aeabi_ui2d>
 8004828:	2301      	movs	r3, #1
 800482a:	4606      	mov	r6, r0
 800482c:	3c01      	subs	r4, #1
 800482e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004832:	930f      	str	r3, [sp, #60]	; 0x3c
 8004834:	4630      	mov	r0, r6
 8004836:	4639      	mov	r1, r7
 8004838:	2200      	movs	r2, #0
 800483a:	4b51      	ldr	r3, [pc, #324]	; (8004980 <_dtoa_r+0x220>)
 800483c:	f7fb ffc4 	bl	80007c8 <__aeabi_dsub>
 8004840:	a347      	add	r3, pc, #284	; (adr r3, 8004960 <_dtoa_r+0x200>)
 8004842:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004846:	f7fc f977 	bl	8000b38 <__aeabi_dmul>
 800484a:	a347      	add	r3, pc, #284	; (adr r3, 8004968 <_dtoa_r+0x208>)
 800484c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004850:	f7fb ffbc 	bl	80007cc <__adddf3>
 8004854:	4606      	mov	r6, r0
 8004856:	4620      	mov	r0, r4
 8004858:	460f      	mov	r7, r1
 800485a:	f7fc f903 	bl	8000a64 <__aeabi_i2d>
 800485e:	a344      	add	r3, pc, #272	; (adr r3, 8004970 <_dtoa_r+0x210>)
 8004860:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004864:	f7fc f968 	bl	8000b38 <__aeabi_dmul>
 8004868:	4602      	mov	r2, r0
 800486a:	460b      	mov	r3, r1
 800486c:	4630      	mov	r0, r6
 800486e:	4639      	mov	r1, r7
 8004870:	f7fb ffac 	bl	80007cc <__adddf3>
 8004874:	4606      	mov	r6, r0
 8004876:	460f      	mov	r7, r1
 8004878:	f7fc fc0e 	bl	8001098 <__aeabi_d2iz>
 800487c:	2200      	movs	r2, #0
 800487e:	9006      	str	r0, [sp, #24]
 8004880:	2300      	movs	r3, #0
 8004882:	4630      	mov	r0, r6
 8004884:	4639      	mov	r1, r7
 8004886:	f7fc fbc9 	bl	800101c <__aeabi_dcmplt>
 800488a:	2800      	cmp	r0, #0
 800488c:	f040 8273 	bne.w	8004d76 <_dtoa_r+0x616>
 8004890:	9e06      	ldr	r6, [sp, #24]
 8004892:	2e16      	cmp	r6, #22
 8004894:	f200 825d 	bhi.w	8004d52 <_dtoa_r+0x5f2>
 8004898:	4b3a      	ldr	r3, [pc, #232]	; (8004984 <_dtoa_r+0x224>)
 800489a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800489e:	e9d3 0100 	ldrd	r0, r1, [r3]
 80048a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048a6:	f7fc fbd7 	bl	8001058 <__aeabi_dcmpgt>
 80048aa:	2800      	cmp	r0, #0
 80048ac:	f000 83d7 	beq.w	800505e <_dtoa_r+0x8fe>
 80048b0:	1e73      	subs	r3, r6, #1
 80048b2:	9306      	str	r3, [sp, #24]
 80048b4:	2300      	movs	r3, #0
 80048b6:	930d      	str	r3, [sp, #52]	; 0x34
 80048b8:	1b2c      	subs	r4, r5, r4
 80048ba:	f1b4 0801 	subs.w	r8, r4, #1
 80048be:	f100 8254 	bmi.w	8004d6a <_dtoa_r+0x60a>
 80048c2:	2300      	movs	r3, #0
 80048c4:	9308      	str	r3, [sp, #32]
 80048c6:	9b06      	ldr	r3, [sp, #24]
 80048c8:	2b00      	cmp	r3, #0
 80048ca:	f2c0 8245 	blt.w	8004d58 <_dtoa_r+0x5f8>
 80048ce:	4498      	add	r8, r3
 80048d0:	930c      	str	r3, [sp, #48]	; 0x30
 80048d2:	2300      	movs	r3, #0
 80048d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80048d6:	9b02      	ldr	r3, [sp, #8]
 80048d8:	2b09      	cmp	r3, #9
 80048da:	d85b      	bhi.n	8004994 <_dtoa_r+0x234>
 80048dc:	2b05      	cmp	r3, #5
 80048de:	f340 83c0 	ble.w	8005062 <_dtoa_r+0x902>
 80048e2:	3b04      	subs	r3, #4
 80048e4:	9302      	str	r3, [sp, #8]
 80048e6:	2500      	movs	r5, #0
 80048e8:	9b02      	ldr	r3, [sp, #8]
 80048ea:	3b02      	subs	r3, #2
 80048ec:	2b03      	cmp	r3, #3
 80048ee:	f200 8498 	bhi.w	8005222 <_dtoa_r+0xac2>
 80048f2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80048f6:	03df      	.short	0x03df
 80048f8:	03e803bf 	.word	0x03e803bf
 80048fc:	04f5      	.short	0x04f5
 80048fe:	9a05      	ldr	r2, [sp, #20]
 8004900:	f242 730f 	movw	r3, #9999	; 0x270f
 8004904:	6013      	str	r3, [r2, #0]
 8004906:	9b00      	ldr	r3, [sp, #0]
 8004908:	b983      	cbnz	r3, 800492c <_dtoa_r+0x1cc>
 800490a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800490e:	b96b      	cbnz	r3, 800492c <_dtoa_r+0x1cc>
 8004910:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004912:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004988 <_dtoa_r+0x228>
 8004916:	2b00      	cmp	r3, #0
 8004918:	f43f af61 	beq.w	80047de <_dtoa_r+0x7e>
 800491c:	f10b 0308 	add.w	r3, fp, #8
 8004920:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004922:	4658      	mov	r0, fp
 8004924:	6013      	str	r3, [r2, #0]
 8004926:	b01b      	add	sp, #108	; 0x6c
 8004928:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800492c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800492e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800498c <_dtoa_r+0x22c>
 8004932:	2b00      	cmp	r3, #0
 8004934:	f43f af53 	beq.w	80047de <_dtoa_r+0x7e>
 8004938:	f10b 0303 	add.w	r3, fp, #3
 800493c:	e7f0      	b.n	8004920 <_dtoa_r+0x1c0>
 800493e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004942:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004946:	950f      	str	r5, [sp, #60]	; 0x3c
 8004948:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800494c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004950:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004952:	e76f      	b.n	8004834 <_dtoa_r+0xd4>
 8004954:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004990 <_dtoa_r+0x230>
 8004958:	4658      	mov	r0, fp
 800495a:	b01b      	add	sp, #108	; 0x6c
 800495c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004960:	636f4361 	.word	0x636f4361
 8004964:	3fd287a7 	.word	0x3fd287a7
 8004968:	8b60c8b3 	.word	0x8b60c8b3
 800496c:	3fc68a28 	.word	0x3fc68a28
 8004970:	509f79fb 	.word	0x509f79fb
 8004974:	3fd34413 	.word	0x3fd34413
 8004978:	7ff00000 	.word	0x7ff00000
 800497c:	08007791 	.word	0x08007791
 8004980:	3ff80000 	.word	0x3ff80000
 8004984:	080077f0 	.word	0x080077f0
 8004988:	080077b4 	.word	0x080077b4
 800498c:	080077c0 	.word	0x080077c0
 8004990:	08007790 	.word	0x08007790
 8004994:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004998:	2501      	movs	r5, #1
 800499a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800499e:	2300      	movs	r3, #0
 80049a0:	9302      	str	r3, [sp, #8]
 80049a2:	9307      	str	r3, [sp, #28]
 80049a4:	2100      	movs	r1, #0
 80049a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049aa:	940e      	str	r4, [sp, #56]	; 0x38
 80049ac:	4648      	mov	r0, r9
 80049ae:	f001 fdcd 	bl	800654c <_Balloc>
 80049b2:	2c0e      	cmp	r4, #14
 80049b4:	4683      	mov	fp, r0
 80049b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80049ba:	f200 80fb 	bhi.w	8004bb4 <_dtoa_r+0x454>
 80049be:	2d00      	cmp	r5, #0
 80049c0:	f000 80f8 	beq.w	8004bb4 <_dtoa_r+0x454>
 80049c4:	ed9d 7b00 	vldr	d7, [sp]
 80049c8:	9906      	ldr	r1, [sp, #24]
 80049ca:	2900      	cmp	r1, #0
 80049cc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80049d0:	f340 83e5 	ble.w	800519e <_dtoa_r+0xa3e>
 80049d4:	4b9d      	ldr	r3, [pc, #628]	; (8004c4c <_dtoa_r+0x4ec>)
 80049d6:	f001 020f 	and.w	r2, r1, #15
 80049da:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049de:	ed93 7b00 	vldr	d7, [r3]
 80049e2:	110c      	asrs	r4, r1, #4
 80049e4:	06e2      	lsls	r2, r4, #27
 80049e6:	ed8d 7b00 	vstr	d7, [sp]
 80049ea:	f140 849e 	bpl.w	800532a <_dtoa_r+0xbca>
 80049ee:	4b98      	ldr	r3, [pc, #608]	; (8004c50 <_dtoa_r+0x4f0>)
 80049f0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80049f4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80049f8:	f7fc f9c8 	bl	8000d8c <__aeabi_ddiv>
 80049fc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004a00:	f004 040f 	and.w	r4, r4, #15
 8004a04:	2603      	movs	r6, #3
 8004a06:	b17c      	cbz	r4, 8004a28 <_dtoa_r+0x2c8>
 8004a08:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a0c:	4d90      	ldr	r5, [pc, #576]	; (8004c50 <_dtoa_r+0x4f0>)
 8004a0e:	07e3      	lsls	r3, r4, #31
 8004a10:	d504      	bpl.n	8004a1c <_dtoa_r+0x2bc>
 8004a12:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a16:	f7fc f88f 	bl	8000b38 <__aeabi_dmul>
 8004a1a:	3601      	adds	r6, #1
 8004a1c:	1064      	asrs	r4, r4, #1
 8004a1e:	f105 0508 	add.w	r5, r5, #8
 8004a22:	d1f4      	bne.n	8004a0e <_dtoa_r+0x2ae>
 8004a24:	e9cd 0100 	strd	r0, r1, [sp]
 8004a28:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a2c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004a30:	f7fc f9ac 	bl	8000d8c <__aeabi_ddiv>
 8004a34:	e9cd 0100 	strd	r0, r1, [sp]
 8004a38:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a3a:	b143      	cbz	r3, 8004a4e <_dtoa_r+0x2ee>
 8004a3c:	2200      	movs	r2, #0
 8004a3e:	4b85      	ldr	r3, [pc, #532]	; (8004c54 <_dtoa_r+0x4f4>)
 8004a40:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a44:	f7fc faea 	bl	800101c <__aeabi_dcmplt>
 8004a48:	2800      	cmp	r0, #0
 8004a4a:	f040 84ff 	bne.w	800544c <_dtoa_r+0xcec>
 8004a4e:	4630      	mov	r0, r6
 8004a50:	f7fc f808 	bl	8000a64 <__aeabi_i2d>
 8004a54:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a58:	f7fc f86e 	bl	8000b38 <__aeabi_dmul>
 8004a5c:	4b7e      	ldr	r3, [pc, #504]	; (8004c58 <_dtoa_r+0x4f8>)
 8004a5e:	2200      	movs	r2, #0
 8004a60:	f7fb feb4 	bl	80007cc <__adddf3>
 8004a64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a66:	4606      	mov	r6, r0
 8004a68:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004a6c:	2b00      	cmp	r3, #0
 8004a6e:	f000 841c 	beq.w	80052aa <_dtoa_r+0xb4a>
 8004a72:	9b06      	ldr	r3, [sp, #24]
 8004a74:	9316      	str	r3, [sp, #88]	; 0x58
 8004a76:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a78:	9312      	str	r3, [sp, #72]	; 0x48
 8004a7a:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a7e:	f7fc fb0b 	bl	8001098 <__aeabi_d2iz>
 8004a82:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a84:	4b71      	ldr	r3, [pc, #452]	; (8004c4c <_dtoa_r+0x4ec>)
 8004a86:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a8a:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004a8e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004a92:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004a96:	f7fb ffe5 	bl	8000a64 <__aeabi_i2d>
 8004a9a:	460b      	mov	r3, r1
 8004a9c:	4602      	mov	r2, r0
 8004a9e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004aa2:	e9cd 6700 	strd	r6, r7, [sp]
 8004aa6:	f7fb fe8f 	bl	80007c8 <__aeabi_dsub>
 8004aaa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004aac:	b2ed      	uxtb	r5, r5
 8004aae:	4606      	mov	r6, r0
 8004ab0:	460f      	mov	r7, r1
 8004ab2:	f10b 0401 	add.w	r4, fp, #1
 8004ab6:	2b00      	cmp	r3, #0
 8004ab8:	f000 8458 	beq.w	800536c <_dtoa_r+0xc0c>
 8004abc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004ac0:	2000      	movs	r0, #0
 8004ac2:	4966      	ldr	r1, [pc, #408]	; (8004c5c <_dtoa_r+0x4fc>)
 8004ac4:	f7fc f962 	bl	8000d8c <__aeabi_ddiv>
 8004ac8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004acc:	f7fb fe7c 	bl	80007c8 <__aeabi_dsub>
 8004ad0:	f88b 5000 	strb.w	r5, [fp]
 8004ad4:	4632      	mov	r2, r6
 8004ad6:	463b      	mov	r3, r7
 8004ad8:	e9cd 0100 	strd	r0, r1, [sp]
 8004adc:	f7fc fabc 	bl	8001058 <__aeabi_dcmpgt>
 8004ae0:	2800      	cmp	r0, #0
 8004ae2:	f040 8502 	bne.w	80054ea <_dtoa_r+0xd8a>
 8004ae6:	4632      	mov	r2, r6
 8004ae8:	463b      	mov	r3, r7
 8004aea:	2000      	movs	r0, #0
 8004aec:	4959      	ldr	r1, [pc, #356]	; (8004c54 <_dtoa_r+0x4f4>)
 8004aee:	f7fb fe6b 	bl	80007c8 <__aeabi_dsub>
 8004af2:	4602      	mov	r2, r0
 8004af4:	460b      	mov	r3, r1
 8004af6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004afa:	f7fc faad 	bl	8001058 <__aeabi_dcmpgt>
 8004afe:	2800      	cmp	r0, #0
 8004b00:	f040 84fb 	bne.w	80054fa <_dtoa_r+0xd9a>
 8004b04:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004b06:	2a01      	cmp	r2, #1
 8004b08:	d050      	beq.n	8004bac <_dtoa_r+0x44c>
 8004b0a:	445a      	add	r2, fp
 8004b0c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004b10:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004b14:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004b18:	4692      	mov	sl, r2
 8004b1a:	46cb      	mov	fp, r9
 8004b1c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004b20:	e00c      	b.n	8004b3c <_dtoa_r+0x3dc>
 8004b22:	2000      	movs	r0, #0
 8004b24:	494b      	ldr	r1, [pc, #300]	; (8004c54 <_dtoa_r+0x4f4>)
 8004b26:	f7fb fe4f 	bl	80007c8 <__aeabi_dsub>
 8004b2a:	4642      	mov	r2, r8
 8004b2c:	464b      	mov	r3, r9
 8004b2e:	f7fc fa75 	bl	800101c <__aeabi_dcmplt>
 8004b32:	2800      	cmp	r0, #0
 8004b34:	f040 84dc 	bne.w	80054f0 <_dtoa_r+0xd90>
 8004b38:	4554      	cmp	r4, sl
 8004b3a:	d030      	beq.n	8004b9e <_dtoa_r+0x43e>
 8004b3c:	4640      	mov	r0, r8
 8004b3e:	4649      	mov	r1, r9
 8004b40:	2200      	movs	r2, #0
 8004b42:	4b47      	ldr	r3, [pc, #284]	; (8004c60 <_dtoa_r+0x500>)
 8004b44:	f7fb fff8 	bl	8000b38 <__aeabi_dmul>
 8004b48:	2200      	movs	r2, #0
 8004b4a:	4b45      	ldr	r3, [pc, #276]	; (8004c60 <_dtoa_r+0x500>)
 8004b4c:	4680      	mov	r8, r0
 8004b4e:	4689      	mov	r9, r1
 8004b50:	4630      	mov	r0, r6
 8004b52:	4639      	mov	r1, r7
 8004b54:	f7fb fff0 	bl	8000b38 <__aeabi_dmul>
 8004b58:	460f      	mov	r7, r1
 8004b5a:	4606      	mov	r6, r0
 8004b5c:	f7fc fa9c 	bl	8001098 <__aeabi_d2iz>
 8004b60:	4605      	mov	r5, r0
 8004b62:	f7fb ff7f 	bl	8000a64 <__aeabi_i2d>
 8004b66:	4602      	mov	r2, r0
 8004b68:	460b      	mov	r3, r1
 8004b6a:	4630      	mov	r0, r6
 8004b6c:	4639      	mov	r1, r7
 8004b6e:	f7fb fe2b 	bl	80007c8 <__aeabi_dsub>
 8004b72:	3530      	adds	r5, #48	; 0x30
 8004b74:	b2ed      	uxtb	r5, r5
 8004b76:	4642      	mov	r2, r8
 8004b78:	464b      	mov	r3, r9
 8004b7a:	f804 5b01 	strb.w	r5, [r4], #1
 8004b7e:	4606      	mov	r6, r0
 8004b80:	460f      	mov	r7, r1
 8004b82:	f7fc fa4b 	bl	800101c <__aeabi_dcmplt>
 8004b86:	4632      	mov	r2, r6
 8004b88:	463b      	mov	r3, r7
 8004b8a:	2800      	cmp	r0, #0
 8004b8c:	d0c9      	beq.n	8004b22 <_dtoa_r+0x3c2>
 8004b8e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004b90:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b94:	9306      	str	r3, [sp, #24]
 8004b96:	46d9      	mov	r9, fp
 8004b98:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b9c:	e236      	b.n	800500c <_dtoa_r+0x8ac>
 8004b9e:	46d9      	mov	r9, fp
 8004ba0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004ba4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ba8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004bac:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004bb0:	e9cd 3400 	strd	r3, r4, [sp]
 8004bb4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004bb6:	2b00      	cmp	r3, #0
 8004bb8:	f2c0 80ae 	blt.w	8004d18 <_dtoa_r+0x5b8>
 8004bbc:	9a06      	ldr	r2, [sp, #24]
 8004bbe:	2a0e      	cmp	r2, #14
 8004bc0:	f300 80aa 	bgt.w	8004d18 <_dtoa_r+0x5b8>
 8004bc4:	4b21      	ldr	r3, [pc, #132]	; (8004c4c <_dtoa_r+0x4ec>)
 8004bc6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bca:	ed93 7b00 	vldr	d7, [r3]
 8004bce:	9b07      	ldr	r3, [sp, #28]
 8004bd0:	2b00      	cmp	r3, #0
 8004bd2:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004bd6:	f2c0 82be 	blt.w	8005156 <_dtoa_r+0x9f6>
 8004bda:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004bde:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004be2:	4630      	mov	r0, r6
 8004be4:	4639      	mov	r1, r7
 8004be6:	f7fc f8d1 	bl	8000d8c <__aeabi_ddiv>
 8004bea:	f7fc fa55 	bl	8001098 <__aeabi_d2iz>
 8004bee:	4605      	mov	r5, r0
 8004bf0:	f7fb ff38 	bl	8000a64 <__aeabi_i2d>
 8004bf4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bf8:	f7fb ff9e 	bl	8000b38 <__aeabi_dmul>
 8004bfc:	460b      	mov	r3, r1
 8004bfe:	4602      	mov	r2, r0
 8004c00:	4639      	mov	r1, r7
 8004c02:	4630      	mov	r0, r6
 8004c04:	f7fb fde0 	bl	80007c8 <__aeabi_dsub>
 8004c08:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004c0c:	f88b 3000 	strb.w	r3, [fp]
 8004c10:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c12:	2b01      	cmp	r3, #1
 8004c14:	4606      	mov	r6, r0
 8004c16:	460f      	mov	r7, r1
 8004c18:	f10b 0401 	add.w	r4, fp, #1
 8004c1c:	d053      	beq.n	8004cc6 <_dtoa_r+0x566>
 8004c1e:	2200      	movs	r2, #0
 8004c20:	4b0f      	ldr	r3, [pc, #60]	; (8004c60 <_dtoa_r+0x500>)
 8004c22:	f7fb ff89 	bl	8000b38 <__aeabi_dmul>
 8004c26:	2200      	movs	r2, #0
 8004c28:	2300      	movs	r3, #0
 8004c2a:	4606      	mov	r6, r0
 8004c2c:	460f      	mov	r7, r1
 8004c2e:	f7fc f9eb 	bl	8001008 <__aeabi_dcmpeq>
 8004c32:	2800      	cmp	r0, #0
 8004c34:	f040 81ea 	bne.w	800500c <_dtoa_r+0x8ac>
 8004c38:	f8cd a000 	str.w	sl, [sp]
 8004c3c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004c40:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c44:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004c48:	e017      	b.n	8004c7a <_dtoa_r+0x51a>
 8004c4a:	bf00      	nop
 8004c4c:	080077f0 	.word	0x080077f0
 8004c50:	080077c8 	.word	0x080077c8
 8004c54:	3ff00000 	.word	0x3ff00000
 8004c58:	401c0000 	.word	0x401c0000
 8004c5c:	3fe00000 	.word	0x3fe00000
 8004c60:	40240000 	.word	0x40240000
 8004c64:	f7fb ff68 	bl	8000b38 <__aeabi_dmul>
 8004c68:	2200      	movs	r2, #0
 8004c6a:	2300      	movs	r3, #0
 8004c6c:	4606      	mov	r6, r0
 8004c6e:	460f      	mov	r7, r1
 8004c70:	f7fc f9ca 	bl	8001008 <__aeabi_dcmpeq>
 8004c74:	2800      	cmp	r0, #0
 8004c76:	f040 833d 	bne.w	80052f4 <_dtoa_r+0xb94>
 8004c7a:	464a      	mov	r2, r9
 8004c7c:	4653      	mov	r3, sl
 8004c7e:	4630      	mov	r0, r6
 8004c80:	4639      	mov	r1, r7
 8004c82:	f7fc f883 	bl	8000d8c <__aeabi_ddiv>
 8004c86:	f7fc fa07 	bl	8001098 <__aeabi_d2iz>
 8004c8a:	4605      	mov	r5, r0
 8004c8c:	f7fb feea 	bl	8000a64 <__aeabi_i2d>
 8004c90:	464a      	mov	r2, r9
 8004c92:	4653      	mov	r3, sl
 8004c94:	f7fb ff50 	bl	8000b38 <__aeabi_dmul>
 8004c98:	4602      	mov	r2, r0
 8004c9a:	460b      	mov	r3, r1
 8004c9c:	4630      	mov	r0, r6
 8004c9e:	4639      	mov	r1, r7
 8004ca0:	f7fb fd92 	bl	80007c8 <__aeabi_dsub>
 8004ca4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004ca8:	f804 cb01 	strb.w	ip, [r4], #1
 8004cac:	eba4 0c0b 	sub.w	ip, r4, fp
 8004cb0:	45e0      	cmp	r8, ip
 8004cb2:	4606      	mov	r6, r0
 8004cb4:	460f      	mov	r7, r1
 8004cb6:	f04f 0200 	mov.w	r2, #0
 8004cba:	4bc1      	ldr	r3, [pc, #772]	; (8004fc0 <_dtoa_r+0x860>)
 8004cbc:	d1d2      	bne.n	8004c64 <_dtoa_r+0x504>
 8004cbe:	f8dd a000 	ldr.w	sl, [sp]
 8004cc2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cc6:	4632      	mov	r2, r6
 8004cc8:	463b      	mov	r3, r7
 8004cca:	4630      	mov	r0, r6
 8004ccc:	4639      	mov	r1, r7
 8004cce:	f7fb fd7d 	bl	80007cc <__adddf3>
 8004cd2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cd6:	4606      	mov	r6, r0
 8004cd8:	460f      	mov	r7, r1
 8004cda:	f7fc f9bd 	bl	8001058 <__aeabi_dcmpgt>
 8004cde:	b958      	cbnz	r0, 8004cf8 <_dtoa_r+0x598>
 8004ce0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ce4:	4630      	mov	r0, r6
 8004ce6:	4639      	mov	r1, r7
 8004ce8:	f7fc f98e 	bl	8001008 <__aeabi_dcmpeq>
 8004cec:	2800      	cmp	r0, #0
 8004cee:	f000 818d 	beq.w	800500c <_dtoa_r+0x8ac>
 8004cf2:	07e9      	lsls	r1, r5, #31
 8004cf4:	f140 818a 	bpl.w	800500c <_dtoa_r+0x8ac>
 8004cf8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cfc:	e005      	b.n	8004d0a <_dtoa_r+0x5aa>
 8004cfe:	459b      	cmp	fp, r3
 8004d00:	f000 8373 	beq.w	80053ea <_dtoa_r+0xc8a>
 8004d04:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004d08:	461c      	mov	r4, r3
 8004d0a:	2d39      	cmp	r5, #57	; 0x39
 8004d0c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d10:	d0f5      	beq.n	8004cfe <_dtoa_r+0x59e>
 8004d12:	3501      	adds	r5, #1
 8004d14:	701d      	strb	r5, [r3, #0]
 8004d16:	e179      	b.n	800500c <_dtoa_r+0x8ac>
 8004d18:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d1a:	2a00      	cmp	r2, #0
 8004d1c:	d03b      	beq.n	8004d96 <_dtoa_r+0x636>
 8004d1e:	9a02      	ldr	r2, [sp, #8]
 8004d20:	2a01      	cmp	r2, #1
 8004d22:	f340 820b 	ble.w	800513c <_dtoa_r+0x9dc>
 8004d26:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d28:	1e5f      	subs	r7, r3, #1
 8004d2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d2c:	42bb      	cmp	r3, r7
 8004d2e:	f2c0 82e6 	blt.w	80052fe <_dtoa_r+0xb9e>
 8004d32:	1bdf      	subs	r7, r3, r7
 8004d34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d36:	2b00      	cmp	r3, #0
 8004d38:	f2c0 830b 	blt.w	8005352 <_dtoa_r+0xbf2>
 8004d3c:	9a08      	ldr	r2, [sp, #32]
 8004d3e:	4614      	mov	r4, r2
 8004d40:	441a      	add	r2, r3
 8004d42:	4498      	add	r8, r3
 8004d44:	9208      	str	r2, [sp, #32]
 8004d46:	2101      	movs	r1, #1
 8004d48:	4648      	mov	r0, r9
 8004d4a:	f001 fcbf 	bl	80066cc <__i2b>
 8004d4e:	4605      	mov	r5, r0
 8004d50:	e024      	b.n	8004d9c <_dtoa_r+0x63c>
 8004d52:	2301      	movs	r3, #1
 8004d54:	930d      	str	r3, [sp, #52]	; 0x34
 8004d56:	e5af      	b.n	80048b8 <_dtoa_r+0x158>
 8004d58:	9a08      	ldr	r2, [sp, #32]
 8004d5a:	9b06      	ldr	r3, [sp, #24]
 8004d5c:	1ad2      	subs	r2, r2, r3
 8004d5e:	425b      	negs	r3, r3
 8004d60:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d62:	2300      	movs	r3, #0
 8004d64:	9208      	str	r2, [sp, #32]
 8004d66:	930c      	str	r3, [sp, #48]	; 0x30
 8004d68:	e5b5      	b.n	80048d6 <_dtoa_r+0x176>
 8004d6a:	f1c4 0301 	rsb	r3, r4, #1
 8004d6e:	9308      	str	r3, [sp, #32]
 8004d70:	f04f 0800 	mov.w	r8, #0
 8004d74:	e5a7      	b.n	80048c6 <_dtoa_r+0x166>
 8004d76:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d7a:	4640      	mov	r0, r8
 8004d7c:	f7fb fe72 	bl	8000a64 <__aeabi_i2d>
 8004d80:	4632      	mov	r2, r6
 8004d82:	463b      	mov	r3, r7
 8004d84:	f7fc f940 	bl	8001008 <__aeabi_dcmpeq>
 8004d88:	2800      	cmp	r0, #0
 8004d8a:	f47f ad81 	bne.w	8004890 <_dtoa_r+0x130>
 8004d8e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004d92:	9306      	str	r3, [sp, #24]
 8004d94:	e57c      	b.n	8004890 <_dtoa_r+0x130>
 8004d96:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d98:	9c08      	ldr	r4, [sp, #32]
 8004d9a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004d9c:	2c00      	cmp	r4, #0
 8004d9e:	dd0c      	ble.n	8004dba <_dtoa_r+0x65a>
 8004da0:	f1b8 0f00 	cmp.w	r8, #0
 8004da4:	dd09      	ble.n	8004dba <_dtoa_r+0x65a>
 8004da6:	4544      	cmp	r4, r8
 8004da8:	9a08      	ldr	r2, [sp, #32]
 8004daa:	4623      	mov	r3, r4
 8004dac:	bfa8      	it	ge
 8004dae:	4643      	movge	r3, r8
 8004db0:	1ad2      	subs	r2, r2, r3
 8004db2:	9208      	str	r2, [sp, #32]
 8004db4:	1ae4      	subs	r4, r4, r3
 8004db6:	eba8 0803 	sub.w	r8, r8, r3
 8004dba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004dbc:	b16b      	cbz	r3, 8004dda <_dtoa_r+0x67a>
 8004dbe:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004dc0:	2a00      	cmp	r2, #0
 8004dc2:	f000 8290 	beq.w	80052e6 <_dtoa_r+0xb86>
 8004dc6:	1bde      	subs	r6, r3, r7
 8004dc8:	2f00      	cmp	r7, #0
 8004dca:	f040 819b 	bne.w	8005104 <_dtoa_r+0x9a4>
 8004dce:	4651      	mov	r1, sl
 8004dd0:	4632      	mov	r2, r6
 8004dd2:	4648      	mov	r0, r9
 8004dd4:	f001 fd2a 	bl	800682c <__pow5mult>
 8004dd8:	4682      	mov	sl, r0
 8004dda:	2101      	movs	r1, #1
 8004ddc:	4648      	mov	r0, r9
 8004dde:	f001 fc75 	bl	80066cc <__i2b>
 8004de2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004de4:	4606      	mov	r6, r0
 8004de6:	2a00      	cmp	r2, #0
 8004de8:	f040 8125 	bne.w	8005036 <_dtoa_r+0x8d6>
 8004dec:	9b02      	ldr	r3, [sp, #8]
 8004dee:	2b01      	cmp	r3, #1
 8004df0:	f340 816c 	ble.w	80050cc <_dtoa_r+0x96c>
 8004df4:	2001      	movs	r0, #1
 8004df6:	4440      	add	r0, r8
 8004df8:	f010 001f 	ands.w	r0, r0, #31
 8004dfc:	f000 8119 	beq.w	8005032 <_dtoa_r+0x8d2>
 8004e00:	f1c0 0320 	rsb	r3, r0, #32
 8004e04:	2b04      	cmp	r3, #4
 8004e06:	f340 83ac 	ble.w	8005562 <_dtoa_r+0xe02>
 8004e0a:	f1c0 001c 	rsb	r0, r0, #28
 8004e0e:	9b08      	ldr	r3, [sp, #32]
 8004e10:	4403      	add	r3, r0
 8004e12:	9308      	str	r3, [sp, #32]
 8004e14:	4404      	add	r4, r0
 8004e16:	4480      	add	r8, r0
 8004e18:	9b08      	ldr	r3, [sp, #32]
 8004e1a:	2b00      	cmp	r3, #0
 8004e1c:	dd05      	ble.n	8004e2a <_dtoa_r+0x6ca>
 8004e1e:	4651      	mov	r1, sl
 8004e20:	461a      	mov	r2, r3
 8004e22:	4648      	mov	r0, r9
 8004e24:	f001 fd52 	bl	80068cc <__lshift>
 8004e28:	4682      	mov	sl, r0
 8004e2a:	f1b8 0f00 	cmp.w	r8, #0
 8004e2e:	dd05      	ble.n	8004e3c <_dtoa_r+0x6dc>
 8004e30:	4631      	mov	r1, r6
 8004e32:	4642      	mov	r2, r8
 8004e34:	4648      	mov	r0, r9
 8004e36:	f001 fd49 	bl	80068cc <__lshift>
 8004e3a:	4606      	mov	r6, r0
 8004e3c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e3e:	2b00      	cmp	r3, #0
 8004e40:	d177      	bne.n	8004f32 <_dtoa_r+0x7d2>
 8004e42:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e44:	2b00      	cmp	r3, #0
 8004e46:	f340 8209 	ble.w	800525c <_dtoa_r+0xafc>
 8004e4a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e4c:	2b00      	cmp	r3, #0
 8004e4e:	f000 8089 	beq.w	8004f64 <_dtoa_r+0x804>
 8004e52:	2c00      	cmp	r4, #0
 8004e54:	f300 816b 	bgt.w	800512e <_dtoa_r+0x9ce>
 8004e58:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e5a:	2b00      	cmp	r3, #0
 8004e5c:	f040 81cd 	bne.w	80051fa <_dtoa_r+0xa9a>
 8004e60:	46a8      	mov	r8, r5
 8004e62:	9a00      	ldr	r2, [sp, #0]
 8004e64:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004e68:	f002 0201 	and.w	r2, r2, #1
 8004e6c:	920a      	str	r2, [sp, #40]	; 0x28
 8004e6e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004e70:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004e74:	441a      	add	r2, r3
 8004e76:	465f      	mov	r7, fp
 8004e78:	9209      	str	r2, [sp, #36]	; 0x24
 8004e7a:	46b3      	mov	fp, r6
 8004e7c:	4659      	mov	r1, fp
 8004e7e:	4650      	mov	r0, sl
 8004e80:	f7ff fbdc 	bl	800463c <quorem>
 8004e84:	4629      	mov	r1, r5
 8004e86:	4604      	mov	r4, r0
 8004e88:	4650      	mov	r0, sl
 8004e8a:	f001 fd75 	bl	8006978 <__mcmp>
 8004e8e:	4659      	mov	r1, fp
 8004e90:	4606      	mov	r6, r0
 8004e92:	4642      	mov	r2, r8
 8004e94:	4648      	mov	r0, r9
 8004e96:	f001 fd8b 	bl	80069b0 <__mdiff>
 8004e9a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004e9e:	9300      	str	r3, [sp, #0]
 8004ea0:	68c3      	ldr	r3, [r0, #12]
 8004ea2:	4601      	mov	r1, r0
 8004ea4:	2b00      	cmp	r3, #0
 8004ea6:	f040 81d4 	bne.w	8005252 <_dtoa_r+0xaf2>
 8004eaa:	9008      	str	r0, [sp, #32]
 8004eac:	4650      	mov	r0, sl
 8004eae:	f001 fd63 	bl	8006978 <__mcmp>
 8004eb2:	9a08      	ldr	r2, [sp, #32]
 8004eb4:	9007      	str	r0, [sp, #28]
 8004eb6:	4611      	mov	r1, r2
 8004eb8:	4648      	mov	r0, r9
 8004eba:	f001 fb6d 	bl	8006598 <_Bfree>
 8004ebe:	9b07      	ldr	r3, [sp, #28]
 8004ec0:	b933      	cbnz	r3, 8004ed0 <_dtoa_r+0x770>
 8004ec2:	9a02      	ldr	r2, [sp, #8]
 8004ec4:	b922      	cbnz	r2, 8004ed0 <_dtoa_r+0x770>
 8004ec6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ec8:	2b00      	cmp	r3, #0
 8004eca:	f000 8319 	beq.w	8005500 <_dtoa_r+0xda0>
 8004ece:	9b02      	ldr	r3, [sp, #8]
 8004ed0:	2e00      	cmp	r6, #0
 8004ed2:	f2c0 821c 	blt.w	800530e <_dtoa_r+0xbae>
 8004ed6:	d105      	bne.n	8004ee4 <_dtoa_r+0x784>
 8004ed8:	9a02      	ldr	r2, [sp, #8]
 8004eda:	b91a      	cbnz	r2, 8004ee4 <_dtoa_r+0x784>
 8004edc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ede:	2a00      	cmp	r2, #0
 8004ee0:	f000 8215 	beq.w	800530e <_dtoa_r+0xbae>
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	f107 0401 	add.w	r4, r7, #1
 8004eea:	f300 8225 	bgt.w	8005338 <_dtoa_r+0xbd8>
 8004eee:	9b00      	ldr	r3, [sp, #0]
 8004ef0:	703b      	strb	r3, [r7, #0]
 8004ef2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ef4:	42bb      	cmp	r3, r7
 8004ef6:	f000 8230 	beq.w	800535a <_dtoa_r+0xbfa>
 8004efa:	4651      	mov	r1, sl
 8004efc:	2300      	movs	r3, #0
 8004efe:	220a      	movs	r2, #10
 8004f00:	4648      	mov	r0, r9
 8004f02:	f001 fb53 	bl	80065ac <__multadd>
 8004f06:	4545      	cmp	r5, r8
 8004f08:	4682      	mov	sl, r0
 8004f0a:	4629      	mov	r1, r5
 8004f0c:	f04f 0300 	mov.w	r3, #0
 8004f10:	f04f 020a 	mov.w	r2, #10
 8004f14:	4648      	mov	r0, r9
 8004f16:	f000 8196 	beq.w	8005246 <_dtoa_r+0xae6>
 8004f1a:	f001 fb47 	bl	80065ac <__multadd>
 8004f1e:	4641      	mov	r1, r8
 8004f20:	4605      	mov	r5, r0
 8004f22:	2300      	movs	r3, #0
 8004f24:	220a      	movs	r2, #10
 8004f26:	4648      	mov	r0, r9
 8004f28:	f001 fb40 	bl	80065ac <__multadd>
 8004f2c:	4627      	mov	r7, r4
 8004f2e:	4680      	mov	r8, r0
 8004f30:	e7a4      	b.n	8004e7c <_dtoa_r+0x71c>
 8004f32:	4631      	mov	r1, r6
 8004f34:	4650      	mov	r0, sl
 8004f36:	f001 fd1f 	bl	8006978 <__mcmp>
 8004f3a:	2800      	cmp	r0, #0
 8004f3c:	da81      	bge.n	8004e42 <_dtoa_r+0x6e2>
 8004f3e:	9f06      	ldr	r7, [sp, #24]
 8004f40:	4651      	mov	r1, sl
 8004f42:	2300      	movs	r3, #0
 8004f44:	220a      	movs	r2, #10
 8004f46:	4648      	mov	r0, r9
 8004f48:	3f01      	subs	r7, #1
 8004f4a:	9706      	str	r7, [sp, #24]
 8004f4c:	f001 fb2e 	bl	80065ac <__multadd>
 8004f50:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f52:	4682      	mov	sl, r0
 8004f54:	2b00      	cmp	r3, #0
 8004f56:	f040 82eb 	bne.w	8005530 <_dtoa_r+0xdd0>
 8004f5a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f5c:	2b00      	cmp	r3, #0
 8004f5e:	f340 82f3 	ble.w	8005548 <_dtoa_r+0xde8>
 8004f62:	9309      	str	r3, [sp, #36]	; 0x24
 8004f64:	465c      	mov	r4, fp
 8004f66:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f6a:	e002      	b.n	8004f72 <_dtoa_r+0x812>
 8004f6c:	f001 fb1e 	bl	80065ac <__multadd>
 8004f70:	4682      	mov	sl, r0
 8004f72:	4631      	mov	r1, r6
 8004f74:	4650      	mov	r0, sl
 8004f76:	f7ff fb61 	bl	800463c <quorem>
 8004f7a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f7e:	f804 7b01 	strb.w	r7, [r4], #1
 8004f82:	eba4 030b 	sub.w	r3, r4, fp
 8004f86:	4598      	cmp	r8, r3
 8004f88:	f04f 020a 	mov.w	r2, #10
 8004f8c:	f04f 0300 	mov.w	r3, #0
 8004f90:	4651      	mov	r1, sl
 8004f92:	4648      	mov	r0, r9
 8004f94:	dcea      	bgt.n	8004f6c <_dtoa_r+0x80c>
 8004f96:	2300      	movs	r3, #0
 8004f98:	9700      	str	r7, [sp, #0]
 8004f9a:	9302      	str	r3, [sp, #8]
 8004f9c:	4651      	mov	r1, sl
 8004f9e:	2201      	movs	r2, #1
 8004fa0:	4648      	mov	r0, r9
 8004fa2:	f001 fc93 	bl	80068cc <__lshift>
 8004fa6:	4631      	mov	r1, r6
 8004fa8:	4682      	mov	sl, r0
 8004faa:	f001 fce5 	bl	8006978 <__mcmp>
 8004fae:	2800      	cmp	r0, #0
 8004fb0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004fb4:	dc14      	bgt.n	8004fe0 <_dtoa_r+0x880>
 8004fb6:	d108      	bne.n	8004fca <_dtoa_r+0x86a>
 8004fb8:	9b00      	ldr	r3, [sp, #0]
 8004fba:	07db      	lsls	r3, r3, #31
 8004fbc:	d410      	bmi.n	8004fe0 <_dtoa_r+0x880>
 8004fbe:	e004      	b.n	8004fca <_dtoa_r+0x86a>
 8004fc0:	40240000 	.word	0x40240000
 8004fc4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004fc8:	461c      	mov	r4, r3
 8004fca:	2a30      	cmp	r2, #48	; 0x30
 8004fcc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fd0:	d0f8      	beq.n	8004fc4 <_dtoa_r+0x864>
 8004fd2:	e00b      	b.n	8004fec <_dtoa_r+0x88c>
 8004fd4:	459b      	cmp	fp, r3
 8004fd6:	f000 814e 	beq.w	8005276 <_dtoa_r+0xb16>
 8004fda:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004fde:	461c      	mov	r4, r3
 8004fe0:	2a39      	cmp	r2, #57	; 0x39
 8004fe2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fe6:	d0f5      	beq.n	8004fd4 <_dtoa_r+0x874>
 8004fe8:	3201      	adds	r2, #1
 8004fea:	701a      	strb	r2, [r3, #0]
 8004fec:	4631      	mov	r1, r6
 8004fee:	4648      	mov	r0, r9
 8004ff0:	f001 fad2 	bl	8006598 <_Bfree>
 8004ff4:	b155      	cbz	r5, 800500c <_dtoa_r+0x8ac>
 8004ff6:	9902      	ldr	r1, [sp, #8]
 8004ff8:	b121      	cbz	r1, 8005004 <_dtoa_r+0x8a4>
 8004ffa:	42a9      	cmp	r1, r5
 8004ffc:	d002      	beq.n	8005004 <_dtoa_r+0x8a4>
 8004ffe:	4648      	mov	r0, r9
 8005000:	f001 faca 	bl	8006598 <_Bfree>
 8005004:	4629      	mov	r1, r5
 8005006:	4648      	mov	r0, r9
 8005008:	f001 fac6 	bl	8006598 <_Bfree>
 800500c:	4651      	mov	r1, sl
 800500e:	4648      	mov	r0, r9
 8005010:	f001 fac2 	bl	8006598 <_Bfree>
 8005014:	2200      	movs	r2, #0
 8005016:	9b06      	ldr	r3, [sp, #24]
 8005018:	7022      	strb	r2, [r4, #0]
 800501a:	9a05      	ldr	r2, [sp, #20]
 800501c:	3301      	adds	r3, #1
 800501e:	6013      	str	r3, [r2, #0]
 8005020:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005022:	2b00      	cmp	r3, #0
 8005024:	f43f abdb 	beq.w	80047de <_dtoa_r+0x7e>
 8005028:	4658      	mov	r0, fp
 800502a:	601c      	str	r4, [r3, #0]
 800502c:	b01b      	add	sp, #108	; 0x6c
 800502e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005032:	201c      	movs	r0, #28
 8005034:	e6eb      	b.n	8004e0e <_dtoa_r+0x6ae>
 8005036:	4601      	mov	r1, r0
 8005038:	4648      	mov	r0, r9
 800503a:	f001 fbf7 	bl	800682c <__pow5mult>
 800503e:	9b02      	ldr	r3, [sp, #8]
 8005040:	2b01      	cmp	r3, #1
 8005042:	4606      	mov	r6, r0
 8005044:	f340 80d4 	ble.w	80051f0 <_dtoa_r+0xa90>
 8005048:	2300      	movs	r3, #0
 800504a:	930c      	str	r3, [sp, #48]	; 0x30
 800504c:	6933      	ldr	r3, [r6, #16]
 800504e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005052:	6918      	ldr	r0, [r3, #16]
 8005054:	f001 faea 	bl	800662c <__hi0bits>
 8005058:	f1c0 0020 	rsb	r0, r0, #32
 800505c:	e6cb      	b.n	8004df6 <_dtoa_r+0x696>
 800505e:	900d      	str	r0, [sp, #52]	; 0x34
 8005060:	e42a      	b.n	80048b8 <_dtoa_r+0x158>
 8005062:	2501      	movs	r5, #1
 8005064:	e440      	b.n	80048e8 <_dtoa_r+0x188>
 8005066:	f1c3 0820 	rsb	r8, r3, #32
 800506a:	9b00      	ldr	r3, [sp, #0]
 800506c:	fa03 f008 	lsl.w	r0, r3, r8
 8005070:	f7ff bbd8 	b.w	8004824 <_dtoa_r+0xc4>
 8005074:	2300      	movs	r3, #0
 8005076:	930a      	str	r3, [sp, #40]	; 0x28
 8005078:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800507c:	4413      	add	r3, r2
 800507e:	930e      	str	r3, [sp, #56]	; 0x38
 8005080:	3301      	adds	r3, #1
 8005082:	2b01      	cmp	r3, #1
 8005084:	461e      	mov	r6, r3
 8005086:	9309      	str	r3, [sp, #36]	; 0x24
 8005088:	bfb8      	it	lt
 800508a:	2601      	movlt	r6, #1
 800508c:	2100      	movs	r1, #0
 800508e:	2e17      	cmp	r6, #23
 8005090:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005094:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005096:	f77f ac89 	ble.w	80049ac <_dtoa_r+0x24c>
 800509a:	2201      	movs	r2, #1
 800509c:	2304      	movs	r3, #4
 800509e:	005b      	lsls	r3, r3, #1
 80050a0:	f103 0014 	add.w	r0, r3, #20
 80050a4:	42b0      	cmp	r0, r6
 80050a6:	4611      	mov	r1, r2
 80050a8:	f102 0201 	add.w	r2, r2, #1
 80050ac:	d9f7      	bls.n	800509e <_dtoa_r+0x93e>
 80050ae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050b2:	e47b      	b.n	80049ac <_dtoa_r+0x24c>
 80050b4:	2300      	movs	r3, #0
 80050b6:	930a      	str	r3, [sp, #40]	; 0x28
 80050b8:	9e07      	ldr	r6, [sp, #28]
 80050ba:	2e00      	cmp	r6, #0
 80050bc:	f340 80e2 	ble.w	8005284 <_dtoa_r+0xb24>
 80050c0:	960e      	str	r6, [sp, #56]	; 0x38
 80050c2:	9609      	str	r6, [sp, #36]	; 0x24
 80050c4:	e7e2      	b.n	800508c <_dtoa_r+0x92c>
 80050c6:	2301      	movs	r3, #1
 80050c8:	930a      	str	r3, [sp, #40]	; 0x28
 80050ca:	e7f5      	b.n	80050b8 <_dtoa_r+0x958>
 80050cc:	9b00      	ldr	r3, [sp, #0]
 80050ce:	2b00      	cmp	r3, #0
 80050d0:	f47f ae90 	bne.w	8004df4 <_dtoa_r+0x694>
 80050d4:	e9dd 1200 	ldrd	r1, r2, [sp]
 80050d8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80050dc:	2b00      	cmp	r3, #0
 80050de:	f040 8192 	bne.w	8005406 <_dtoa_r+0xca6>
 80050e2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80050e6:	0d1b      	lsrs	r3, r3, #20
 80050e8:	051b      	lsls	r3, r3, #20
 80050ea:	b12b      	cbz	r3, 80050f8 <_dtoa_r+0x998>
 80050ec:	9b08      	ldr	r3, [sp, #32]
 80050ee:	3301      	adds	r3, #1
 80050f0:	9308      	str	r3, [sp, #32]
 80050f2:	f108 0801 	add.w	r8, r8, #1
 80050f6:	2301      	movs	r3, #1
 80050f8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80050fa:	930c      	str	r3, [sp, #48]	; 0x30
 80050fc:	2a00      	cmp	r2, #0
 80050fe:	f43f ae79 	beq.w	8004df4 <_dtoa_r+0x694>
 8005102:	e7a3      	b.n	800504c <_dtoa_r+0x8ec>
 8005104:	463a      	mov	r2, r7
 8005106:	4629      	mov	r1, r5
 8005108:	4648      	mov	r0, r9
 800510a:	f001 fb8f 	bl	800682c <__pow5mult>
 800510e:	4652      	mov	r2, sl
 8005110:	4601      	mov	r1, r0
 8005112:	4605      	mov	r5, r0
 8005114:	4648      	mov	r0, r9
 8005116:	f001 fae3 	bl	80066e0 <__multiply>
 800511a:	4651      	mov	r1, sl
 800511c:	4607      	mov	r7, r0
 800511e:	4648      	mov	r0, r9
 8005120:	f001 fa3a 	bl	8006598 <_Bfree>
 8005124:	46ba      	mov	sl, r7
 8005126:	2e00      	cmp	r6, #0
 8005128:	f43f ae57 	beq.w	8004dda <_dtoa_r+0x67a>
 800512c:	e64f      	b.n	8004dce <_dtoa_r+0x66e>
 800512e:	4629      	mov	r1, r5
 8005130:	4622      	mov	r2, r4
 8005132:	4648      	mov	r0, r9
 8005134:	f001 fbca 	bl	80068cc <__lshift>
 8005138:	4605      	mov	r5, r0
 800513a:	e68d      	b.n	8004e58 <_dtoa_r+0x6f8>
 800513c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800513e:	2a00      	cmp	r2, #0
 8005140:	f000 815d 	beq.w	80053fe <_dtoa_r+0xc9e>
 8005144:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005148:	9a08      	ldr	r2, [sp, #32]
 800514a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800514c:	4614      	mov	r4, r2
 800514e:	441a      	add	r2, r3
 8005150:	4498      	add	r8, r3
 8005152:	9208      	str	r2, [sp, #32]
 8005154:	e5f7      	b.n	8004d46 <_dtoa_r+0x5e6>
 8005156:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005158:	2b00      	cmp	r3, #0
 800515a:	f73f ad3e 	bgt.w	8004bda <_dtoa_r+0x47a>
 800515e:	f040 80bc 	bne.w	80052da <_dtoa_r+0xb7a>
 8005162:	ec51 0b17 	vmov	r0, r1, d7
 8005166:	2200      	movs	r2, #0
 8005168:	4bb2      	ldr	r3, [pc, #712]	; (8005434 <_dtoa_r+0xcd4>)
 800516a:	f7fb fce5 	bl	8000b38 <__aeabi_dmul>
 800516e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005172:	f7fb ff67 	bl	8001044 <__aeabi_dcmpge>
 8005176:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005178:	4635      	mov	r5, r6
 800517a:	2800      	cmp	r0, #0
 800517c:	d176      	bne.n	800526c <_dtoa_r+0xb0c>
 800517e:	9a06      	ldr	r2, [sp, #24]
 8005180:	2331      	movs	r3, #49	; 0x31
 8005182:	3201      	adds	r2, #1
 8005184:	9206      	str	r2, [sp, #24]
 8005186:	f88b 3000 	strb.w	r3, [fp]
 800518a:	f10b 0401 	add.w	r4, fp, #1
 800518e:	4631      	mov	r1, r6
 8005190:	4648      	mov	r0, r9
 8005192:	f001 fa01 	bl	8006598 <_Bfree>
 8005196:	2d00      	cmp	r5, #0
 8005198:	f47f af34 	bne.w	8005004 <_dtoa_r+0x8a4>
 800519c:	e736      	b.n	800500c <_dtoa_r+0x8ac>
 800519e:	f000 8142 	beq.w	8005426 <_dtoa_r+0xcc6>
 80051a2:	9b06      	ldr	r3, [sp, #24]
 80051a4:	425c      	negs	r4, r3
 80051a6:	4ba4      	ldr	r3, [pc, #656]	; (8005438 <_dtoa_r+0xcd8>)
 80051a8:	f004 020f 	and.w	r2, r4, #15
 80051ac:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80051b0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80051b4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80051b8:	f7fb fcbe 	bl	8000b38 <__aeabi_dmul>
 80051bc:	1124      	asrs	r4, r4, #4
 80051be:	e9cd 0100 	strd	r0, r1, [sp]
 80051c2:	f000 81c6 	beq.w	8005552 <_dtoa_r+0xdf2>
 80051c6:	4d9d      	ldr	r5, [pc, #628]	; (800543c <_dtoa_r+0xcdc>)
 80051c8:	2300      	movs	r3, #0
 80051ca:	2602      	movs	r6, #2
 80051cc:	07e7      	lsls	r7, r4, #31
 80051ce:	d505      	bpl.n	80051dc <_dtoa_r+0xa7c>
 80051d0:	e9d5 2300 	ldrd	r2, r3, [r5]
 80051d4:	f7fb fcb0 	bl	8000b38 <__aeabi_dmul>
 80051d8:	3601      	adds	r6, #1
 80051da:	2301      	movs	r3, #1
 80051dc:	1064      	asrs	r4, r4, #1
 80051de:	f105 0508 	add.w	r5, r5, #8
 80051e2:	d1f3      	bne.n	80051cc <_dtoa_r+0xa6c>
 80051e4:	2b00      	cmp	r3, #0
 80051e6:	f43f ac27 	beq.w	8004a38 <_dtoa_r+0x2d8>
 80051ea:	e9cd 0100 	strd	r0, r1, [sp]
 80051ee:	e423      	b.n	8004a38 <_dtoa_r+0x2d8>
 80051f0:	9b00      	ldr	r3, [sp, #0]
 80051f2:	2b00      	cmp	r3, #0
 80051f4:	f43f af6e 	beq.w	80050d4 <_dtoa_r+0x974>
 80051f8:	e726      	b.n	8005048 <_dtoa_r+0x8e8>
 80051fa:	6869      	ldr	r1, [r5, #4]
 80051fc:	4648      	mov	r0, r9
 80051fe:	f001 f9a5 	bl	800654c <_Balloc>
 8005202:	692b      	ldr	r3, [r5, #16]
 8005204:	3302      	adds	r3, #2
 8005206:	009a      	lsls	r2, r3, #2
 8005208:	4604      	mov	r4, r0
 800520a:	f105 010c 	add.w	r1, r5, #12
 800520e:	300c      	adds	r0, #12
 8005210:	f7fb f976 	bl	8000500 <memcpy>
 8005214:	4621      	mov	r1, r4
 8005216:	2201      	movs	r2, #1
 8005218:	4648      	mov	r0, r9
 800521a:	f001 fb57 	bl	80068cc <__lshift>
 800521e:	4680      	mov	r8, r0
 8005220:	e61f      	b.n	8004e62 <_dtoa_r+0x702>
 8005222:	2400      	movs	r4, #0
 8005224:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005228:	4621      	mov	r1, r4
 800522a:	4648      	mov	r0, r9
 800522c:	f001 f98e 	bl	800654c <_Balloc>
 8005230:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005234:	930e      	str	r3, [sp, #56]	; 0x38
 8005236:	9309      	str	r3, [sp, #36]	; 0x24
 8005238:	2301      	movs	r3, #1
 800523a:	4683      	mov	fp, r0
 800523c:	9407      	str	r4, [sp, #28]
 800523e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005242:	930a      	str	r3, [sp, #40]	; 0x28
 8005244:	e4b6      	b.n	8004bb4 <_dtoa_r+0x454>
 8005246:	f001 f9b1 	bl	80065ac <__multadd>
 800524a:	4627      	mov	r7, r4
 800524c:	4605      	mov	r5, r0
 800524e:	4680      	mov	r8, r0
 8005250:	e614      	b.n	8004e7c <_dtoa_r+0x71c>
 8005252:	4648      	mov	r0, r9
 8005254:	f001 f9a0 	bl	8006598 <_Bfree>
 8005258:	2301      	movs	r3, #1
 800525a:	e639      	b.n	8004ed0 <_dtoa_r+0x770>
 800525c:	9b02      	ldr	r3, [sp, #8]
 800525e:	2b02      	cmp	r3, #2
 8005260:	f77f adf3 	ble.w	8004e4a <_dtoa_r+0x6ea>
 8005264:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005266:	2b00      	cmp	r3, #0
 8005268:	f000 80cf 	beq.w	800540a <_dtoa_r+0xcaa>
 800526c:	9b07      	ldr	r3, [sp, #28]
 800526e:	43db      	mvns	r3, r3
 8005270:	9306      	str	r3, [sp, #24]
 8005272:	465c      	mov	r4, fp
 8005274:	e78b      	b.n	800518e <_dtoa_r+0xa2e>
 8005276:	9a06      	ldr	r2, [sp, #24]
 8005278:	2331      	movs	r3, #49	; 0x31
 800527a:	3201      	adds	r2, #1
 800527c:	9206      	str	r2, [sp, #24]
 800527e:	f88b 3000 	strb.w	r3, [fp]
 8005282:	e6b3      	b.n	8004fec <_dtoa_r+0x88c>
 8005284:	2401      	movs	r4, #1
 8005286:	9409      	str	r4, [sp, #36]	; 0x24
 8005288:	9407      	str	r4, [sp, #28]
 800528a:	f7ff bb8b 	b.w	80049a4 <_dtoa_r+0x244>
 800528e:	4630      	mov	r0, r6
 8005290:	f7fb fbe8 	bl	8000a64 <__aeabi_i2d>
 8005294:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005298:	f7fb fc4e 	bl	8000b38 <__aeabi_dmul>
 800529c:	2200      	movs	r2, #0
 800529e:	4b68      	ldr	r3, [pc, #416]	; (8005440 <_dtoa_r+0xce0>)
 80052a0:	f7fb fa94 	bl	80007cc <__adddf3>
 80052a4:	4606      	mov	r6, r0
 80052a6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80052aa:	2200      	movs	r2, #0
 80052ac:	4b61      	ldr	r3, [pc, #388]	; (8005434 <_dtoa_r+0xcd4>)
 80052ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052b2:	f7fb fa89 	bl	80007c8 <__aeabi_dsub>
 80052b6:	4632      	mov	r2, r6
 80052b8:	463b      	mov	r3, r7
 80052ba:	4604      	mov	r4, r0
 80052bc:	460d      	mov	r5, r1
 80052be:	f7fb fecb 	bl	8001058 <__aeabi_dcmpgt>
 80052c2:	2800      	cmp	r0, #0
 80052c4:	d14f      	bne.n	8005366 <_dtoa_r+0xc06>
 80052c6:	4632      	mov	r2, r6
 80052c8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80052cc:	4620      	mov	r0, r4
 80052ce:	4629      	mov	r1, r5
 80052d0:	f7fb fea4 	bl	800101c <__aeabi_dcmplt>
 80052d4:	2800      	cmp	r0, #0
 80052d6:	f43f ac69 	beq.w	8004bac <_dtoa_r+0x44c>
 80052da:	2600      	movs	r6, #0
 80052dc:	4635      	mov	r5, r6
 80052de:	e7c5      	b.n	800526c <_dtoa_r+0xb0c>
 80052e0:	2301      	movs	r3, #1
 80052e2:	930a      	str	r3, [sp, #40]	; 0x28
 80052e4:	e6c8      	b.n	8005078 <_dtoa_r+0x918>
 80052e6:	4651      	mov	r1, sl
 80052e8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80052ea:	4648      	mov	r0, r9
 80052ec:	f001 fa9e 	bl	800682c <__pow5mult>
 80052f0:	4682      	mov	sl, r0
 80052f2:	e572      	b.n	8004dda <_dtoa_r+0x67a>
 80052f4:	f8dd a000 	ldr.w	sl, [sp]
 80052f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80052fc:	e686      	b.n	800500c <_dtoa_r+0x8ac>
 80052fe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005300:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005302:	1afb      	subs	r3, r7, r3
 8005304:	441a      	add	r2, r3
 8005306:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800530a:	2700      	movs	r7, #0
 800530c:	e512      	b.n	8004d34 <_dtoa_r+0x5d4>
 800530e:	2b00      	cmp	r3, #0
 8005310:	9402      	str	r4, [sp, #8]
 8005312:	465e      	mov	r6, fp
 8005314:	f107 0401 	add.w	r4, r7, #1
 8005318:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800531c:	f300 80ba 	bgt.w	8005494 <_dtoa_r+0xd34>
 8005320:	9b00      	ldr	r3, [sp, #0]
 8005322:	9502      	str	r5, [sp, #8]
 8005324:	703b      	strb	r3, [r7, #0]
 8005326:	4645      	mov	r5, r8
 8005328:	e660      	b.n	8004fec <_dtoa_r+0x88c>
 800532a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800532e:	2602      	movs	r6, #2
 8005330:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005334:	f7ff bb67 	b.w	8004a06 <_dtoa_r+0x2a6>
 8005338:	9b00      	ldr	r3, [sp, #0]
 800533a:	2b39      	cmp	r3, #57	; 0x39
 800533c:	465e      	mov	r6, fp
 800533e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005342:	f000 80b9 	beq.w	80054b8 <_dtoa_r+0xd58>
 8005346:	9b00      	ldr	r3, [sp, #0]
 8005348:	9502      	str	r5, [sp, #8]
 800534a:	3301      	adds	r3, #1
 800534c:	703b      	strb	r3, [r7, #0]
 800534e:	4645      	mov	r5, r8
 8005350:	e64c      	b.n	8004fec <_dtoa_r+0x88c>
 8005352:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005356:	1a9c      	subs	r4, r3, r2
 8005358:	e4f5      	b.n	8004d46 <_dtoa_r+0x5e6>
 800535a:	465e      	mov	r6, fp
 800535c:	9502      	str	r5, [sp, #8]
 800535e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005362:	4645      	mov	r5, r8
 8005364:	e61a      	b.n	8004f9c <_dtoa_r+0x83c>
 8005366:	2600      	movs	r6, #0
 8005368:	4635      	mov	r5, r6
 800536a:	e708      	b.n	800517e <_dtoa_r+0xa1e>
 800536c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005370:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005374:	f7fb fbe0 	bl	8000b38 <__aeabi_dmul>
 8005378:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800537a:	f88b 5000 	strb.w	r5, [fp]
 800537e:	2b01      	cmp	r3, #1
 8005380:	e9cd 0100 	strd	r0, r1, [sp]
 8005384:	d020      	beq.n	80053c8 <_dtoa_r+0xc68>
 8005386:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005388:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800538c:	445b      	add	r3, fp
 800538e:	4698      	mov	r8, r3
 8005390:	2200      	movs	r2, #0
 8005392:	4b2c      	ldr	r3, [pc, #176]	; (8005444 <_dtoa_r+0xce4>)
 8005394:	4630      	mov	r0, r6
 8005396:	4639      	mov	r1, r7
 8005398:	f7fb fbce 	bl	8000b38 <__aeabi_dmul>
 800539c:	460f      	mov	r7, r1
 800539e:	4606      	mov	r6, r0
 80053a0:	f7fb fe7a 	bl	8001098 <__aeabi_d2iz>
 80053a4:	4605      	mov	r5, r0
 80053a6:	f7fb fb5d 	bl	8000a64 <__aeabi_i2d>
 80053aa:	3530      	adds	r5, #48	; 0x30
 80053ac:	4602      	mov	r2, r0
 80053ae:	460b      	mov	r3, r1
 80053b0:	4630      	mov	r0, r6
 80053b2:	4639      	mov	r1, r7
 80053b4:	f7fb fa08 	bl	80007c8 <__aeabi_dsub>
 80053b8:	f804 5b01 	strb.w	r5, [r4], #1
 80053bc:	4544      	cmp	r4, r8
 80053be:	4606      	mov	r6, r0
 80053c0:	460f      	mov	r7, r1
 80053c2:	d1e5      	bne.n	8005390 <_dtoa_r+0xc30>
 80053c4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80053c8:	4b1f      	ldr	r3, [pc, #124]	; (8005448 <_dtoa_r+0xce8>)
 80053ca:	2200      	movs	r2, #0
 80053cc:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053d0:	f7fb f9fc 	bl	80007cc <__adddf3>
 80053d4:	4632      	mov	r2, r6
 80053d6:	463b      	mov	r3, r7
 80053d8:	f7fb fe20 	bl	800101c <__aeabi_dcmplt>
 80053dc:	2800      	cmp	r0, #0
 80053de:	d070      	beq.n	80054c2 <_dtoa_r+0xd62>
 80053e0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053e2:	9306      	str	r3, [sp, #24]
 80053e4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053e8:	e48f      	b.n	8004d0a <_dtoa_r+0x5aa>
 80053ea:	2330      	movs	r3, #48	; 0x30
 80053ec:	f88b 3000 	strb.w	r3, [fp]
 80053f0:	9b06      	ldr	r3, [sp, #24]
 80053f2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053f6:	3301      	adds	r3, #1
 80053f8:	9306      	str	r3, [sp, #24]
 80053fa:	465b      	mov	r3, fp
 80053fc:	e489      	b.n	8004d12 <_dtoa_r+0x5b2>
 80053fe:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005400:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005404:	e6a0      	b.n	8005148 <_dtoa_r+0x9e8>
 8005406:	2300      	movs	r3, #0
 8005408:	e676      	b.n	80050f8 <_dtoa_r+0x998>
 800540a:	4631      	mov	r1, r6
 800540c:	2205      	movs	r2, #5
 800540e:	4648      	mov	r0, r9
 8005410:	f001 f8cc 	bl	80065ac <__multadd>
 8005414:	4601      	mov	r1, r0
 8005416:	4606      	mov	r6, r0
 8005418:	4650      	mov	r0, sl
 800541a:	f001 faad 	bl	8006978 <__mcmp>
 800541e:	2800      	cmp	r0, #0
 8005420:	f73f aead 	bgt.w	800517e <_dtoa_r+0xa1e>
 8005424:	e722      	b.n	800526c <_dtoa_r+0xb0c>
 8005426:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800542a:	2602      	movs	r6, #2
 800542c:	ed8d 7b00 	vstr	d7, [sp]
 8005430:	f7ff bb02 	b.w	8004a38 <_dtoa_r+0x2d8>
 8005434:	40140000 	.word	0x40140000
 8005438:	080077f0 	.word	0x080077f0
 800543c:	080077c8 	.word	0x080077c8
 8005440:	401c0000 	.word	0x401c0000
 8005444:	40240000 	.word	0x40240000
 8005448:	3fe00000 	.word	0x3fe00000
 800544c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800544e:	2b00      	cmp	r3, #0
 8005450:	f43f af1d 	beq.w	800528e <_dtoa_r+0xb2e>
 8005454:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005456:	2c00      	cmp	r4, #0
 8005458:	f77f aba8 	ble.w	8004bac <_dtoa_r+0x44c>
 800545c:	2200      	movs	r2, #0
 800545e:	4b45      	ldr	r3, [pc, #276]	; (8005574 <_dtoa_r+0xe14>)
 8005460:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005464:	f7fb fb68 	bl	8000b38 <__aeabi_dmul>
 8005468:	e9cd 0100 	strd	r0, r1, [sp]
 800546c:	1c70      	adds	r0, r6, #1
 800546e:	f7fb faf9 	bl	8000a64 <__aeabi_i2d>
 8005472:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005476:	f7fb fb5f 	bl	8000b38 <__aeabi_dmul>
 800547a:	4b3f      	ldr	r3, [pc, #252]	; (8005578 <_dtoa_r+0xe18>)
 800547c:	2200      	movs	r2, #0
 800547e:	f7fb f9a5 	bl	80007cc <__adddf3>
 8005482:	9b06      	ldr	r3, [sp, #24]
 8005484:	9412      	str	r4, [sp, #72]	; 0x48
 8005486:	3b01      	subs	r3, #1
 8005488:	4606      	mov	r6, r0
 800548a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800548e:	9316      	str	r3, [sp, #88]	; 0x58
 8005490:	f7ff baf3 	b.w	8004a7a <_dtoa_r+0x31a>
 8005494:	4651      	mov	r1, sl
 8005496:	2201      	movs	r2, #1
 8005498:	4648      	mov	r0, r9
 800549a:	f001 fa17 	bl	80068cc <__lshift>
 800549e:	4631      	mov	r1, r6
 80054a0:	4682      	mov	sl, r0
 80054a2:	f001 fa69 	bl	8006978 <__mcmp>
 80054a6:	2800      	cmp	r0, #0
 80054a8:	dd3b      	ble.n	8005522 <_dtoa_r+0xdc2>
 80054aa:	9b00      	ldr	r3, [sp, #0]
 80054ac:	2b39      	cmp	r3, #57	; 0x39
 80054ae:	d003      	beq.n	80054b8 <_dtoa_r+0xd58>
 80054b0:	9b02      	ldr	r3, [sp, #8]
 80054b2:	3331      	adds	r3, #49	; 0x31
 80054b4:	9300      	str	r3, [sp, #0]
 80054b6:	e733      	b.n	8005320 <_dtoa_r+0xbc0>
 80054b8:	2239      	movs	r2, #57	; 0x39
 80054ba:	9502      	str	r5, [sp, #8]
 80054bc:	703a      	strb	r2, [r7, #0]
 80054be:	4645      	mov	r5, r8
 80054c0:	e58e      	b.n	8004fe0 <_dtoa_r+0x880>
 80054c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054c6:	2000      	movs	r0, #0
 80054c8:	492c      	ldr	r1, [pc, #176]	; (800557c <_dtoa_r+0xe1c>)
 80054ca:	f7fb f97d 	bl	80007c8 <__aeabi_dsub>
 80054ce:	4632      	mov	r2, r6
 80054d0:	463b      	mov	r3, r7
 80054d2:	f7fb fdc1 	bl	8001058 <__aeabi_dcmpgt>
 80054d6:	b910      	cbnz	r0, 80054de <_dtoa_r+0xd7e>
 80054d8:	f7ff bb68 	b.w	8004bac <_dtoa_r+0x44c>
 80054dc:	4614      	mov	r4, r2
 80054de:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80054e2:	2b30      	cmp	r3, #48	; 0x30
 80054e4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80054e8:	d0f8      	beq.n	80054dc <_dtoa_r+0xd7c>
 80054ea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054ec:	9306      	str	r3, [sp, #24]
 80054ee:	e58d      	b.n	800500c <_dtoa_r+0x8ac>
 80054f0:	46d9      	mov	r9, fp
 80054f2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80054f6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80054fa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054fc:	9306      	str	r3, [sp, #24]
 80054fe:	e404      	b.n	8004d0a <_dtoa_r+0x5aa>
 8005500:	9b00      	ldr	r3, [sp, #0]
 8005502:	2b39      	cmp	r3, #57	; 0x39
 8005504:	4621      	mov	r1, r4
 8005506:	4632      	mov	r2, r6
 8005508:	f107 0401 	add.w	r4, r7, #1
 800550c:	465e      	mov	r6, fp
 800550e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005512:	d0d1      	beq.n	80054b8 <_dtoa_r+0xd58>
 8005514:	2a00      	cmp	r2, #0
 8005516:	f77f af03 	ble.w	8005320 <_dtoa_r+0xbc0>
 800551a:	460b      	mov	r3, r1
 800551c:	3331      	adds	r3, #49	; 0x31
 800551e:	9300      	str	r3, [sp, #0]
 8005520:	e6fe      	b.n	8005320 <_dtoa_r+0xbc0>
 8005522:	f47f aefd 	bne.w	8005320 <_dtoa_r+0xbc0>
 8005526:	9b00      	ldr	r3, [sp, #0]
 8005528:	07da      	lsls	r2, r3, #31
 800552a:	f57f aef9 	bpl.w	8005320 <_dtoa_r+0xbc0>
 800552e:	e7bc      	b.n	80054aa <_dtoa_r+0xd4a>
 8005530:	4629      	mov	r1, r5
 8005532:	2300      	movs	r3, #0
 8005534:	220a      	movs	r2, #10
 8005536:	4648      	mov	r0, r9
 8005538:	f001 f838 	bl	80065ac <__multadd>
 800553c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800553e:	2b00      	cmp	r3, #0
 8005540:	4605      	mov	r5, r0
 8005542:	dd09      	ble.n	8005558 <_dtoa_r+0xdf8>
 8005544:	9309      	str	r3, [sp, #36]	; 0x24
 8005546:	e484      	b.n	8004e52 <_dtoa_r+0x6f2>
 8005548:	9b02      	ldr	r3, [sp, #8]
 800554a:	2b02      	cmp	r3, #2
 800554c:	dc0e      	bgt.n	800556c <_dtoa_r+0xe0c>
 800554e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005550:	e507      	b.n	8004f62 <_dtoa_r+0x802>
 8005552:	2602      	movs	r6, #2
 8005554:	f7ff ba70 	b.w	8004a38 <_dtoa_r+0x2d8>
 8005558:	9b02      	ldr	r3, [sp, #8]
 800555a:	2b02      	cmp	r3, #2
 800555c:	dc06      	bgt.n	800556c <_dtoa_r+0xe0c>
 800555e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005560:	e7f0      	b.n	8005544 <_dtoa_r+0xde4>
 8005562:	f43f ac59 	beq.w	8004e18 <_dtoa_r+0x6b8>
 8005566:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800556a:	e450      	b.n	8004e0e <_dtoa_r+0x6ae>
 800556c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800556e:	9309      	str	r3, [sp, #36]	; 0x24
 8005570:	e678      	b.n	8005264 <_dtoa_r+0xb04>
 8005572:	bf00      	nop
 8005574:	40240000 	.word	0x40240000
 8005578:	401c0000 	.word	0x401c0000
 800557c:	3fe00000 	.word	0x3fe00000

08005580 <__sflush_r>:
 8005580:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005584:	b29a      	uxth	r2, r3
 8005586:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800558a:	460c      	mov	r4, r1
 800558c:	0711      	lsls	r1, r2, #28
 800558e:	4680      	mov	r8, r0
 8005590:	d444      	bmi.n	800561c <__sflush_r+0x9c>
 8005592:	6862      	ldr	r2, [r4, #4]
 8005594:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005598:	2a00      	cmp	r2, #0
 800559a:	81a3      	strh	r3, [r4, #12]
 800559c:	dd59      	ble.n	8005652 <__sflush_r+0xd2>
 800559e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055a0:	2d00      	cmp	r5, #0
 80055a2:	d053      	beq.n	800564c <__sflush_r+0xcc>
 80055a4:	2200      	movs	r2, #0
 80055a6:	b29b      	uxth	r3, r3
 80055a8:	f8d8 6000 	ldr.w	r6, [r8]
 80055ac:	69e1      	ldr	r1, [r4, #28]
 80055ae:	f8c8 2000 	str.w	r2, [r8]
 80055b2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80055b6:	f040 8083 	bne.w	80056c0 <__sflush_r+0x140>
 80055ba:	2301      	movs	r3, #1
 80055bc:	4640      	mov	r0, r8
 80055be:	47a8      	blx	r5
 80055c0:	1c42      	adds	r2, r0, #1
 80055c2:	d04a      	beq.n	800565a <__sflush_r+0xda>
 80055c4:	89a3      	ldrh	r3, [r4, #12]
 80055c6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055c8:	69e1      	ldr	r1, [r4, #28]
 80055ca:	075b      	lsls	r3, r3, #29
 80055cc:	d505      	bpl.n	80055da <__sflush_r+0x5a>
 80055ce:	6862      	ldr	r2, [r4, #4]
 80055d0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80055d2:	1a80      	subs	r0, r0, r2
 80055d4:	b10b      	cbz	r3, 80055da <__sflush_r+0x5a>
 80055d6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80055d8:	1ac0      	subs	r0, r0, r3
 80055da:	4602      	mov	r2, r0
 80055dc:	2300      	movs	r3, #0
 80055de:	4640      	mov	r0, r8
 80055e0:	47a8      	blx	r5
 80055e2:	1c47      	adds	r7, r0, #1
 80055e4:	d045      	beq.n	8005672 <__sflush_r+0xf2>
 80055e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055ea:	6922      	ldr	r2, [r4, #16]
 80055ec:	6022      	str	r2, [r4, #0]
 80055ee:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80055f2:	2200      	movs	r2, #0
 80055f4:	81a3      	strh	r3, [r4, #12]
 80055f6:	04db      	lsls	r3, r3, #19
 80055f8:	6062      	str	r2, [r4, #4]
 80055fa:	d500      	bpl.n	80055fe <__sflush_r+0x7e>
 80055fc:	6520      	str	r0, [r4, #80]	; 0x50
 80055fe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005600:	f8c8 6000 	str.w	r6, [r8]
 8005604:	b311      	cbz	r1, 800564c <__sflush_r+0xcc>
 8005606:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800560a:	4299      	cmp	r1, r3
 800560c:	d002      	beq.n	8005614 <__sflush_r+0x94>
 800560e:	4640      	mov	r0, r8
 8005610:	f000 f95e 	bl	80058d0 <_free_r>
 8005614:	2000      	movs	r0, #0
 8005616:	6320      	str	r0, [r4, #48]	; 0x30
 8005618:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800561c:	6926      	ldr	r6, [r4, #16]
 800561e:	b1ae      	cbz	r6, 800564c <__sflush_r+0xcc>
 8005620:	6825      	ldr	r5, [r4, #0]
 8005622:	6026      	str	r6, [r4, #0]
 8005624:	0792      	lsls	r2, r2, #30
 8005626:	bf0c      	ite	eq
 8005628:	6963      	ldreq	r3, [r4, #20]
 800562a:	2300      	movne	r3, #0
 800562c:	1bad      	subs	r5, r5, r6
 800562e:	60a3      	str	r3, [r4, #8]
 8005630:	e00a      	b.n	8005648 <__sflush_r+0xc8>
 8005632:	462b      	mov	r3, r5
 8005634:	4632      	mov	r2, r6
 8005636:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005638:	69e1      	ldr	r1, [r4, #28]
 800563a:	4640      	mov	r0, r8
 800563c:	47b8      	blx	r7
 800563e:	2800      	cmp	r0, #0
 8005640:	eba5 0500 	sub.w	r5, r5, r0
 8005644:	4406      	add	r6, r0
 8005646:	dd2b      	ble.n	80056a0 <__sflush_r+0x120>
 8005648:	2d00      	cmp	r5, #0
 800564a:	dcf2      	bgt.n	8005632 <__sflush_r+0xb2>
 800564c:	2000      	movs	r0, #0
 800564e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005652:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005654:	2a00      	cmp	r2, #0
 8005656:	dca2      	bgt.n	800559e <__sflush_r+0x1e>
 8005658:	e7f8      	b.n	800564c <__sflush_r+0xcc>
 800565a:	f8d8 3000 	ldr.w	r3, [r8]
 800565e:	2b00      	cmp	r3, #0
 8005660:	d0b0      	beq.n	80055c4 <__sflush_r+0x44>
 8005662:	2b1d      	cmp	r3, #29
 8005664:	d001      	beq.n	800566a <__sflush_r+0xea>
 8005666:	2b16      	cmp	r3, #22
 8005668:	d12c      	bne.n	80056c4 <__sflush_r+0x144>
 800566a:	f8c8 6000 	str.w	r6, [r8]
 800566e:	2000      	movs	r0, #0
 8005670:	e7ed      	b.n	800564e <__sflush_r+0xce>
 8005672:	f8d8 1000 	ldr.w	r1, [r8]
 8005676:	291d      	cmp	r1, #29
 8005678:	d81a      	bhi.n	80056b0 <__sflush_r+0x130>
 800567a:	4b15      	ldr	r3, [pc, #84]	; (80056d0 <__sflush_r+0x150>)
 800567c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005680:	40cb      	lsrs	r3, r1
 8005682:	43db      	mvns	r3, r3
 8005684:	f013 0301 	ands.w	r3, r3, #1
 8005688:	d114      	bne.n	80056b4 <__sflush_r+0x134>
 800568a:	6925      	ldr	r5, [r4, #16]
 800568c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005690:	e9c4 5300 	strd	r5, r3, [r4]
 8005694:	04d5      	lsls	r5, r2, #19
 8005696:	81a2      	strh	r2, [r4, #12]
 8005698:	d5b1      	bpl.n	80055fe <__sflush_r+0x7e>
 800569a:	2900      	cmp	r1, #0
 800569c:	d1af      	bne.n	80055fe <__sflush_r+0x7e>
 800569e:	e7ad      	b.n	80055fc <__sflush_r+0x7c>
 80056a0:	89a3      	ldrh	r3, [r4, #12]
 80056a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056a6:	81a3      	strh	r3, [r4, #12]
 80056a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80056b0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80056b4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80056b8:	81a2      	strh	r2, [r4, #12]
 80056ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056be:	e7c6      	b.n	800564e <__sflush_r+0xce>
 80056c0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80056c2:	e782      	b.n	80055ca <__sflush_r+0x4a>
 80056c4:	89a3      	ldrh	r3, [r4, #12]
 80056c6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056ca:	81a3      	strh	r3, [r4, #12]
 80056cc:	e7bf      	b.n	800564e <__sflush_r+0xce>
 80056ce:	bf00      	nop
 80056d0:	20400001 	.word	0x20400001

080056d4 <_fflush_r>:
 80056d4:	b538      	push	{r3, r4, r5, lr}
 80056d6:	460d      	mov	r5, r1
 80056d8:	4604      	mov	r4, r0
 80056da:	b108      	cbz	r0, 80056e0 <_fflush_r+0xc>
 80056dc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80056de:	b1a3      	cbz	r3, 800570a <_fflush_r+0x36>
 80056e0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80056e4:	b1b8      	cbz	r0, 8005716 <_fflush_r+0x42>
 80056e6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056e8:	07db      	lsls	r3, r3, #31
 80056ea:	d401      	bmi.n	80056f0 <_fflush_r+0x1c>
 80056ec:	0581      	lsls	r1, r0, #22
 80056ee:	d51a      	bpl.n	8005726 <_fflush_r+0x52>
 80056f0:	4620      	mov	r0, r4
 80056f2:	4629      	mov	r1, r5
 80056f4:	f7ff ff44 	bl	8005580 <__sflush_r>
 80056f8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056fa:	07da      	lsls	r2, r3, #31
 80056fc:	4604      	mov	r4, r0
 80056fe:	d402      	bmi.n	8005706 <_fflush_r+0x32>
 8005700:	89ab      	ldrh	r3, [r5, #12]
 8005702:	059b      	lsls	r3, r3, #22
 8005704:	d50a      	bpl.n	800571c <_fflush_r+0x48>
 8005706:	4620      	mov	r0, r4
 8005708:	bd38      	pop	{r3, r4, r5, pc}
 800570a:	f000 f83f 	bl	800578c <__sinit>
 800570e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005712:	2800      	cmp	r0, #0
 8005714:	d1e7      	bne.n	80056e6 <_fflush_r+0x12>
 8005716:	4604      	mov	r4, r0
 8005718:	4620      	mov	r0, r4
 800571a:	bd38      	pop	{r3, r4, r5, pc}
 800571c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800571e:	f000 fb87 	bl	8005e30 <__retarget_lock_release_recursive>
 8005722:	4620      	mov	r0, r4
 8005724:	bd38      	pop	{r3, r4, r5, pc}
 8005726:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005728:	f000 fb80 	bl	8005e2c <__retarget_lock_acquire_recursive>
 800572c:	e7e0      	b.n	80056f0 <_fflush_r+0x1c>
 800572e:	bf00      	nop

08005730 <std>:
 8005730:	b510      	push	{r4, lr}
 8005732:	2300      	movs	r3, #0
 8005734:	4604      	mov	r4, r0
 8005736:	8181      	strh	r1, [r0, #12]
 8005738:	81c2      	strh	r2, [r0, #14]
 800573a:	e9c0 3300 	strd	r3, r3, [r0]
 800573e:	6083      	str	r3, [r0, #8]
 8005740:	6643      	str	r3, [r0, #100]	; 0x64
 8005742:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005746:	6183      	str	r3, [r0, #24]
 8005748:	4619      	mov	r1, r3
 800574a:	2208      	movs	r2, #8
 800574c:	305c      	adds	r0, #92	; 0x5c
 800574e:	f7fd f8cb 	bl	80028e8 <memset>
 8005752:	4807      	ldr	r0, [pc, #28]	; (8005770 <std+0x40>)
 8005754:	4907      	ldr	r1, [pc, #28]	; (8005774 <std+0x44>)
 8005756:	4a08      	ldr	r2, [pc, #32]	; (8005778 <std+0x48>)
 8005758:	4b08      	ldr	r3, [pc, #32]	; (800577c <std+0x4c>)
 800575a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800575c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005760:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005764:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005768:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800576c:	f000 bb5a 	b.w	8005e24 <__retarget_lock_init_recursive>
 8005770:	08006f49 	.word	0x08006f49
 8005774:	08006f6d 	.word	0x08006f6d
 8005778:	08006fa9 	.word	0x08006fa9
 800577c:	08006fc9 	.word	0x08006fc9

08005780 <_cleanup_r>:
 8005780:	4901      	ldr	r1, [pc, #4]	; (8005788 <_cleanup_r+0x8>)
 8005782:	f000 bb17 	b.w	8005db4 <_fwalk_reent>
 8005786:	bf00      	nop
 8005788:	08007239 	.word	0x08007239

0800578c <__sinit>:
 800578c:	b510      	push	{r4, lr}
 800578e:	4604      	mov	r4, r0
 8005790:	4812      	ldr	r0, [pc, #72]	; (80057dc <__sinit+0x50>)
 8005792:	f000 fb4b 	bl	8005e2c <__retarget_lock_acquire_recursive>
 8005796:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005798:	b9d2      	cbnz	r2, 80057d0 <__sinit+0x44>
 800579a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800579e:	4810      	ldr	r0, [pc, #64]	; (80057e0 <__sinit+0x54>)
 80057a0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80057a4:	2103      	movs	r1, #3
 80057a6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80057aa:	63e0      	str	r0, [r4, #60]	; 0x3c
 80057ac:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80057b0:	6860      	ldr	r0, [r4, #4]
 80057b2:	2104      	movs	r1, #4
 80057b4:	f7ff ffbc 	bl	8005730 <std>
 80057b8:	2201      	movs	r2, #1
 80057ba:	2109      	movs	r1, #9
 80057bc:	68a0      	ldr	r0, [r4, #8]
 80057be:	f7ff ffb7 	bl	8005730 <std>
 80057c2:	2202      	movs	r2, #2
 80057c4:	2112      	movs	r1, #18
 80057c6:	68e0      	ldr	r0, [r4, #12]
 80057c8:	f7ff ffb2 	bl	8005730 <std>
 80057cc:	2301      	movs	r3, #1
 80057ce:	63a3      	str	r3, [r4, #56]	; 0x38
 80057d0:	4802      	ldr	r0, [pc, #8]	; (80057dc <__sinit+0x50>)
 80057d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80057d6:	f000 bb2b 	b.w	8005e30 <__retarget_lock_release_recursive>
 80057da:	bf00      	nop
 80057dc:	20000b44 	.word	0x20000b44
 80057e0:	08005781 	.word	0x08005781

080057e4 <__sfp_lock_acquire>:
 80057e4:	4801      	ldr	r0, [pc, #4]	; (80057ec <__sfp_lock_acquire+0x8>)
 80057e6:	f000 bb21 	b.w	8005e2c <__retarget_lock_acquire_recursive>
 80057ea:	bf00      	nop
 80057ec:	20000b58 	.word	0x20000b58

080057f0 <__sfp_lock_release>:
 80057f0:	4801      	ldr	r0, [pc, #4]	; (80057f8 <__sfp_lock_release+0x8>)
 80057f2:	f000 bb1d 	b.w	8005e30 <__retarget_lock_release_recursive>
 80057f6:	bf00      	nop
 80057f8:	20000b58 	.word	0x20000b58

080057fc <__libc_fini_array>:
 80057fc:	b538      	push	{r3, r4, r5, lr}
 80057fe:	4c0a      	ldr	r4, [pc, #40]	; (8005828 <__libc_fini_array+0x2c>)
 8005800:	4d0a      	ldr	r5, [pc, #40]	; (800582c <__libc_fini_array+0x30>)
 8005802:	1b64      	subs	r4, r4, r5
 8005804:	10a4      	asrs	r4, r4, #2
 8005806:	d00a      	beq.n	800581e <__libc_fini_array+0x22>
 8005808:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800580c:	3b01      	subs	r3, #1
 800580e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005812:	3c01      	subs	r4, #1
 8005814:	f855 3904 	ldr.w	r3, [r5], #-4
 8005818:	4798      	blx	r3
 800581a:	2c00      	cmp	r4, #0
 800581c:	d1f9      	bne.n	8005812 <__libc_fini_array+0x16>
 800581e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005822:	f001 befd 	b.w	8007620 <_fini>
 8005826:	bf00      	nop
 8005828:	080079ec 	.word	0x080079ec
 800582c:	080079e8 	.word	0x080079e8

08005830 <_malloc_trim_r>:
 8005830:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005832:	4f24      	ldr	r7, [pc, #144]	; (80058c4 <_malloc_trim_r+0x94>)
 8005834:	460c      	mov	r4, r1
 8005836:	4606      	mov	r6, r0
 8005838:	f000 fe7c 	bl	8006534 <__malloc_lock>
 800583c:	68bb      	ldr	r3, [r7, #8]
 800583e:	685d      	ldr	r5, [r3, #4]
 8005840:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005844:	310f      	adds	r1, #15
 8005846:	f025 0503 	bic.w	r5, r5, #3
 800584a:	4429      	add	r1, r5
 800584c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005850:	f021 010f 	bic.w	r1, r1, #15
 8005854:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005858:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800585c:	db07      	blt.n	800586e <_malloc_trim_r+0x3e>
 800585e:	2100      	movs	r1, #0
 8005860:	4630      	mov	r0, r6
 8005862:	f001 fb5f 	bl	8006f24 <_sbrk_r>
 8005866:	68bb      	ldr	r3, [r7, #8]
 8005868:	442b      	add	r3, r5
 800586a:	4298      	cmp	r0, r3
 800586c:	d004      	beq.n	8005878 <_malloc_trim_r+0x48>
 800586e:	4630      	mov	r0, r6
 8005870:	f000 fe66 	bl	8006540 <__malloc_unlock>
 8005874:	2000      	movs	r0, #0
 8005876:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005878:	4261      	negs	r1, r4
 800587a:	4630      	mov	r0, r6
 800587c:	f001 fb52 	bl	8006f24 <_sbrk_r>
 8005880:	3001      	adds	r0, #1
 8005882:	d00d      	beq.n	80058a0 <_malloc_trim_r+0x70>
 8005884:	4b10      	ldr	r3, [pc, #64]	; (80058c8 <_malloc_trim_r+0x98>)
 8005886:	68ba      	ldr	r2, [r7, #8]
 8005888:	6819      	ldr	r1, [r3, #0]
 800588a:	1b2d      	subs	r5, r5, r4
 800588c:	f045 0501 	orr.w	r5, r5, #1
 8005890:	4630      	mov	r0, r6
 8005892:	1b09      	subs	r1, r1, r4
 8005894:	6055      	str	r5, [r2, #4]
 8005896:	6019      	str	r1, [r3, #0]
 8005898:	f000 fe52 	bl	8006540 <__malloc_unlock>
 800589c:	2001      	movs	r0, #1
 800589e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80058a0:	2100      	movs	r1, #0
 80058a2:	4630      	mov	r0, r6
 80058a4:	f001 fb3e 	bl	8006f24 <_sbrk_r>
 80058a8:	68ba      	ldr	r2, [r7, #8]
 80058aa:	1a83      	subs	r3, r0, r2
 80058ac:	2b0f      	cmp	r3, #15
 80058ae:	ddde      	ble.n	800586e <_malloc_trim_r+0x3e>
 80058b0:	4c06      	ldr	r4, [pc, #24]	; (80058cc <_malloc_trim_r+0x9c>)
 80058b2:	4905      	ldr	r1, [pc, #20]	; (80058c8 <_malloc_trim_r+0x98>)
 80058b4:	6824      	ldr	r4, [r4, #0]
 80058b6:	f043 0301 	orr.w	r3, r3, #1
 80058ba:	1b00      	subs	r0, r0, r4
 80058bc:	6053      	str	r3, [r2, #4]
 80058be:	6008      	str	r0, [r1, #0]
 80058c0:	e7d5      	b.n	800586e <_malloc_trim_r+0x3e>
 80058c2:	bf00      	nop
 80058c4:	2000049c 	.word	0x2000049c
 80058c8:	20000abc 	.word	0x20000abc
 80058cc:	200008a4 	.word	0x200008a4

080058d0 <_free_r>:
 80058d0:	2900      	cmp	r1, #0
 80058d2:	d053      	beq.n	800597c <_free_r+0xac>
 80058d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80058d6:	460c      	mov	r4, r1
 80058d8:	4606      	mov	r6, r0
 80058da:	f000 fe2b 	bl	8006534 <__malloc_lock>
 80058de:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80058e2:	4f71      	ldr	r7, [pc, #452]	; (8005aa8 <_free_r+0x1d8>)
 80058e4:	f02c 0101 	bic.w	r1, ip, #1
 80058e8:	f1a4 0508 	sub.w	r5, r4, #8
 80058ec:	186b      	adds	r3, r5, r1
 80058ee:	68b8      	ldr	r0, [r7, #8]
 80058f0:	685a      	ldr	r2, [r3, #4]
 80058f2:	4298      	cmp	r0, r3
 80058f4:	f022 0203 	bic.w	r2, r2, #3
 80058f8:	d053      	beq.n	80059a2 <_free_r+0xd2>
 80058fa:	f01c 0f01 	tst.w	ip, #1
 80058fe:	605a      	str	r2, [r3, #4]
 8005900:	eb03 0002 	add.w	r0, r3, r2
 8005904:	d13b      	bne.n	800597e <_free_r+0xae>
 8005906:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800590a:	6840      	ldr	r0, [r0, #4]
 800590c:	eba5 050c 	sub.w	r5, r5, ip
 8005910:	f107 0e08 	add.w	lr, r7, #8
 8005914:	68ac      	ldr	r4, [r5, #8]
 8005916:	4574      	cmp	r4, lr
 8005918:	4461      	add	r1, ip
 800591a:	f000 0001 	and.w	r0, r0, #1
 800591e:	d075      	beq.n	8005a0c <_free_r+0x13c>
 8005920:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005924:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005928:	f8cc 4008 	str.w	r4, [ip, #8]
 800592c:	b360      	cbz	r0, 8005988 <_free_r+0xb8>
 800592e:	f041 0301 	orr.w	r3, r1, #1
 8005932:	606b      	str	r3, [r5, #4]
 8005934:	5069      	str	r1, [r5, r1]
 8005936:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800593a:	d350      	bcc.n	80059de <_free_r+0x10e>
 800593c:	0a4b      	lsrs	r3, r1, #9
 800593e:	2b04      	cmp	r3, #4
 8005940:	d870      	bhi.n	8005a24 <_free_r+0x154>
 8005942:	098b      	lsrs	r3, r1, #6
 8005944:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005948:	00e4      	lsls	r4, r4, #3
 800594a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800594e:	1938      	adds	r0, r7, r4
 8005950:	593b      	ldr	r3, [r7, r4]
 8005952:	3808      	subs	r0, #8
 8005954:	4298      	cmp	r0, r3
 8005956:	d078      	beq.n	8005a4a <_free_r+0x17a>
 8005958:	685a      	ldr	r2, [r3, #4]
 800595a:	f022 0203 	bic.w	r2, r2, #3
 800595e:	428a      	cmp	r2, r1
 8005960:	d971      	bls.n	8005a46 <_free_r+0x176>
 8005962:	689b      	ldr	r3, [r3, #8]
 8005964:	4298      	cmp	r0, r3
 8005966:	d1f7      	bne.n	8005958 <_free_r+0x88>
 8005968:	68c3      	ldr	r3, [r0, #12]
 800596a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800596e:	609d      	str	r5, [r3, #8]
 8005970:	60c5      	str	r5, [r0, #12]
 8005972:	4630      	mov	r0, r6
 8005974:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005978:	f000 bde2 	b.w	8006540 <__malloc_unlock>
 800597c:	4770      	bx	lr
 800597e:	6840      	ldr	r0, [r0, #4]
 8005980:	f000 0001 	and.w	r0, r0, #1
 8005984:	2800      	cmp	r0, #0
 8005986:	d1d2      	bne.n	800592e <_free_r+0x5e>
 8005988:	6898      	ldr	r0, [r3, #8]
 800598a:	4c48      	ldr	r4, [pc, #288]	; (8005aac <_free_r+0x1dc>)
 800598c:	4411      	add	r1, r2
 800598e:	42a0      	cmp	r0, r4
 8005990:	f041 0201 	orr.w	r2, r1, #1
 8005994:	d062      	beq.n	8005a5c <_free_r+0x18c>
 8005996:	68db      	ldr	r3, [r3, #12]
 8005998:	60c3      	str	r3, [r0, #12]
 800599a:	6098      	str	r0, [r3, #8]
 800599c:	606a      	str	r2, [r5, #4]
 800599e:	5069      	str	r1, [r5, r1]
 80059a0:	e7c9      	b.n	8005936 <_free_r+0x66>
 80059a2:	f01c 0f01 	tst.w	ip, #1
 80059a6:	440a      	add	r2, r1
 80059a8:	d107      	bne.n	80059ba <_free_r+0xea>
 80059aa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80059ae:	1aed      	subs	r5, r5, r3
 80059b0:	441a      	add	r2, r3
 80059b2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80059b6:	60cb      	str	r3, [r1, #12]
 80059b8:	6099      	str	r1, [r3, #8]
 80059ba:	4b3d      	ldr	r3, [pc, #244]	; (8005ab0 <_free_r+0x1e0>)
 80059bc:	681b      	ldr	r3, [r3, #0]
 80059be:	f042 0101 	orr.w	r1, r2, #1
 80059c2:	4293      	cmp	r3, r2
 80059c4:	6069      	str	r1, [r5, #4]
 80059c6:	60bd      	str	r5, [r7, #8]
 80059c8:	d804      	bhi.n	80059d4 <_free_r+0x104>
 80059ca:	4b3a      	ldr	r3, [pc, #232]	; (8005ab4 <_free_r+0x1e4>)
 80059cc:	4630      	mov	r0, r6
 80059ce:	6819      	ldr	r1, [r3, #0]
 80059d0:	f7ff ff2e 	bl	8005830 <_malloc_trim_r>
 80059d4:	4630      	mov	r0, r6
 80059d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80059da:	f000 bdb1 	b.w	8006540 <__malloc_unlock>
 80059de:	08c9      	lsrs	r1, r1, #3
 80059e0:	6878      	ldr	r0, [r7, #4]
 80059e2:	1c4a      	adds	r2, r1, #1
 80059e4:	2301      	movs	r3, #1
 80059e6:	1089      	asrs	r1, r1, #2
 80059e8:	408b      	lsls	r3, r1
 80059ea:	4303      	orrs	r3, r0
 80059ec:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80059f0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80059f4:	607b      	str	r3, [r7, #4]
 80059f6:	3908      	subs	r1, #8
 80059f8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80059fc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005a00:	60c5      	str	r5, [r0, #12]
 8005a02:	4630      	mov	r0, r6
 8005a04:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a08:	f000 bd9a 	b.w	8006540 <__malloc_unlock>
 8005a0c:	2800      	cmp	r0, #0
 8005a0e:	d145      	bne.n	8005a9c <_free_r+0x1cc>
 8005a10:	440a      	add	r2, r1
 8005a12:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005a16:	f042 0001 	orr.w	r0, r2, #1
 8005a1a:	60cb      	str	r3, [r1, #12]
 8005a1c:	6099      	str	r1, [r3, #8]
 8005a1e:	6068      	str	r0, [r5, #4]
 8005a20:	50aa      	str	r2, [r5, r2]
 8005a22:	e7d7      	b.n	80059d4 <_free_r+0x104>
 8005a24:	2b14      	cmp	r3, #20
 8005a26:	d908      	bls.n	8005a3a <_free_r+0x16a>
 8005a28:	2b54      	cmp	r3, #84	; 0x54
 8005a2a:	d81e      	bhi.n	8005a6a <_free_r+0x19a>
 8005a2c:	0b0b      	lsrs	r3, r1, #12
 8005a2e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005a32:	00e4      	lsls	r4, r4, #3
 8005a34:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005a38:	e789      	b.n	800594e <_free_r+0x7e>
 8005a3a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005a3e:	00e4      	lsls	r4, r4, #3
 8005a40:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005a44:	e783      	b.n	800594e <_free_r+0x7e>
 8005a46:	4618      	mov	r0, r3
 8005a48:	e78e      	b.n	8005968 <_free_r+0x98>
 8005a4a:	1093      	asrs	r3, r2, #2
 8005a4c:	6879      	ldr	r1, [r7, #4]
 8005a4e:	2201      	movs	r2, #1
 8005a50:	fa02 f303 	lsl.w	r3, r2, r3
 8005a54:	430b      	orrs	r3, r1
 8005a56:	607b      	str	r3, [r7, #4]
 8005a58:	4603      	mov	r3, r0
 8005a5a:	e786      	b.n	800596a <_free_r+0x9a>
 8005a5c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005a60:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005a64:	606a      	str	r2, [r5, #4]
 8005a66:	5069      	str	r1, [r5, r1]
 8005a68:	e7b4      	b.n	80059d4 <_free_r+0x104>
 8005a6a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005a6e:	d806      	bhi.n	8005a7e <_free_r+0x1ae>
 8005a70:	0bcb      	lsrs	r3, r1, #15
 8005a72:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005a76:	00e4      	lsls	r4, r4, #3
 8005a78:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a7c:	e767      	b.n	800594e <_free_r+0x7e>
 8005a7e:	f240 5254 	movw	r2, #1364	; 0x554
 8005a82:	4293      	cmp	r3, r2
 8005a84:	d806      	bhi.n	8005a94 <_free_r+0x1c4>
 8005a86:	0c8b      	lsrs	r3, r1, #18
 8005a88:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005a8c:	00e4      	lsls	r4, r4, #3
 8005a8e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005a92:	e75c      	b.n	800594e <_free_r+0x7e>
 8005a94:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005a98:	227e      	movs	r2, #126	; 0x7e
 8005a9a:	e758      	b.n	800594e <_free_r+0x7e>
 8005a9c:	f041 0201 	orr.w	r2, r1, #1
 8005aa0:	606a      	str	r2, [r5, #4]
 8005aa2:	6019      	str	r1, [r3, #0]
 8005aa4:	e796      	b.n	80059d4 <_free_r+0x104>
 8005aa6:	bf00      	nop
 8005aa8:	2000049c 	.word	0x2000049c
 8005aac:	200004a4 	.word	0x200004a4
 8005ab0:	200008a8 	.word	0x200008a8
 8005ab4:	20000aec 	.word	0x20000aec

08005ab8 <__sfvwrite_r>:
 8005ab8:	6893      	ldr	r3, [r2, #8]
 8005aba:	2b00      	cmp	r3, #0
 8005abc:	f000 80e4 	beq.w	8005c88 <__sfvwrite_r+0x1d0>
 8005ac0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ac4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005ac8:	b29b      	uxth	r3, r3
 8005aca:	460c      	mov	r4, r1
 8005acc:	0719      	lsls	r1, r3, #28
 8005ace:	b083      	sub	sp, #12
 8005ad0:	4682      	mov	sl, r0
 8005ad2:	4690      	mov	r8, r2
 8005ad4:	d535      	bpl.n	8005b42 <__sfvwrite_r+0x8a>
 8005ad6:	6922      	ldr	r2, [r4, #16]
 8005ad8:	b39a      	cbz	r2, 8005b42 <__sfvwrite_r+0x8a>
 8005ada:	f013 0202 	ands.w	r2, r3, #2
 8005ade:	f8d8 6000 	ldr.w	r6, [r8]
 8005ae2:	d03d      	beq.n	8005b60 <__sfvwrite_r+0xa8>
 8005ae4:	2700      	movs	r7, #0
 8005ae6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005aea:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005aee:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005db0 <__sfvwrite_r+0x2f8>
 8005af2:	463d      	mov	r5, r7
 8005af4:	454d      	cmp	r5, r9
 8005af6:	462b      	mov	r3, r5
 8005af8:	463a      	mov	r2, r7
 8005afa:	bf28      	it	cs
 8005afc:	464b      	movcs	r3, r9
 8005afe:	4661      	mov	r1, ip
 8005b00:	4650      	mov	r0, sl
 8005b02:	b1d5      	cbz	r5, 8005b3a <__sfvwrite_r+0x82>
 8005b04:	47d8      	blx	fp
 8005b06:	2800      	cmp	r0, #0
 8005b08:	f340 80c6 	ble.w	8005c98 <__sfvwrite_r+0x1e0>
 8005b0c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b10:	1a1b      	subs	r3, r3, r0
 8005b12:	4407      	add	r7, r0
 8005b14:	1a2d      	subs	r5, r5, r0
 8005b16:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b1a:	2b00      	cmp	r3, #0
 8005b1c:	f000 80b0 	beq.w	8005c80 <__sfvwrite_r+0x1c8>
 8005b20:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005b24:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005b28:	454d      	cmp	r5, r9
 8005b2a:	462b      	mov	r3, r5
 8005b2c:	463a      	mov	r2, r7
 8005b2e:	bf28      	it	cs
 8005b30:	464b      	movcs	r3, r9
 8005b32:	4661      	mov	r1, ip
 8005b34:	4650      	mov	r0, sl
 8005b36:	2d00      	cmp	r5, #0
 8005b38:	d1e4      	bne.n	8005b04 <__sfvwrite_r+0x4c>
 8005b3a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005b3e:	3608      	adds	r6, #8
 8005b40:	e7d8      	b.n	8005af4 <__sfvwrite_r+0x3c>
 8005b42:	4621      	mov	r1, r4
 8005b44:	4650      	mov	r0, sl
 8005b46:	f7fe fd03 	bl	8004550 <__swsetup_r>
 8005b4a:	2800      	cmp	r0, #0
 8005b4c:	f040 812a 	bne.w	8005da4 <__sfvwrite_r+0x2ec>
 8005b50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b54:	f8d8 6000 	ldr.w	r6, [r8]
 8005b58:	b29b      	uxth	r3, r3
 8005b5a:	f013 0202 	ands.w	r2, r3, #2
 8005b5e:	d1c1      	bne.n	8005ae4 <__sfvwrite_r+0x2c>
 8005b60:	f013 0901 	ands.w	r9, r3, #1
 8005b64:	d15d      	bne.n	8005c22 <__sfvwrite_r+0x16a>
 8005b66:	68a7      	ldr	r7, [r4, #8]
 8005b68:	6820      	ldr	r0, [r4, #0]
 8005b6a:	464d      	mov	r5, r9
 8005b6c:	2d00      	cmp	r5, #0
 8005b6e:	d054      	beq.n	8005c1a <__sfvwrite_r+0x162>
 8005b70:	059a      	lsls	r2, r3, #22
 8005b72:	f140 809b 	bpl.w	8005cac <__sfvwrite_r+0x1f4>
 8005b76:	42af      	cmp	r7, r5
 8005b78:	46bb      	mov	fp, r7
 8005b7a:	f200 80d8 	bhi.w	8005d2e <__sfvwrite_r+0x276>
 8005b7e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005b82:	d02f      	beq.n	8005be4 <__sfvwrite_r+0x12c>
 8005b84:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005b88:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005b8c:	eba0 0b01 	sub.w	fp, r0, r1
 8005b90:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005b94:	1c68      	adds	r0, r5, #1
 8005b96:	107f      	asrs	r7, r7, #1
 8005b98:	4458      	add	r0, fp
 8005b9a:	42b8      	cmp	r0, r7
 8005b9c:	463a      	mov	r2, r7
 8005b9e:	bf84      	itt	hi
 8005ba0:	4607      	movhi	r7, r0
 8005ba2:	463a      	movhi	r2, r7
 8005ba4:	055b      	lsls	r3, r3, #21
 8005ba6:	f140 80d3 	bpl.w	8005d50 <__sfvwrite_r+0x298>
 8005baa:	4611      	mov	r1, r2
 8005bac:	4650      	mov	r0, sl
 8005bae:	f000 f9b9 	bl	8005f24 <_malloc_r>
 8005bb2:	2800      	cmp	r0, #0
 8005bb4:	f000 80f0 	beq.w	8005d98 <__sfvwrite_r+0x2e0>
 8005bb8:	465a      	mov	r2, fp
 8005bba:	6921      	ldr	r1, [r4, #16]
 8005bbc:	9001      	str	r0, [sp, #4]
 8005bbe:	f7fa fc9f 	bl	8000500 <memcpy>
 8005bc2:	89a2      	ldrh	r2, [r4, #12]
 8005bc4:	9b01      	ldr	r3, [sp, #4]
 8005bc6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005bca:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005bce:	81a2      	strh	r2, [r4, #12]
 8005bd0:	eba7 020b 	sub.w	r2, r7, fp
 8005bd4:	eb03 000b 	add.w	r0, r3, fp
 8005bd8:	6167      	str	r7, [r4, #20]
 8005bda:	6123      	str	r3, [r4, #16]
 8005bdc:	6020      	str	r0, [r4, #0]
 8005bde:	60a2      	str	r2, [r4, #8]
 8005be0:	462f      	mov	r7, r5
 8005be2:	46ab      	mov	fp, r5
 8005be4:	465a      	mov	r2, fp
 8005be6:	4649      	mov	r1, r9
 8005be8:	f000 fc40 	bl	800646c <memmove>
 8005bec:	68a2      	ldr	r2, [r4, #8]
 8005bee:	6823      	ldr	r3, [r4, #0]
 8005bf0:	1bd2      	subs	r2, r2, r7
 8005bf2:	445b      	add	r3, fp
 8005bf4:	462f      	mov	r7, r5
 8005bf6:	60a2      	str	r2, [r4, #8]
 8005bf8:	6023      	str	r3, [r4, #0]
 8005bfa:	2500      	movs	r5, #0
 8005bfc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c00:	1bdb      	subs	r3, r3, r7
 8005c02:	44b9      	add	r9, r7
 8005c04:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c08:	2b00      	cmp	r3, #0
 8005c0a:	d039      	beq.n	8005c80 <__sfvwrite_r+0x1c8>
 8005c0c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c10:	68a7      	ldr	r7, [r4, #8]
 8005c12:	6820      	ldr	r0, [r4, #0]
 8005c14:	b29b      	uxth	r3, r3
 8005c16:	2d00      	cmp	r5, #0
 8005c18:	d1aa      	bne.n	8005b70 <__sfvwrite_r+0xb8>
 8005c1a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005c1e:	3608      	adds	r6, #8
 8005c20:	e7a4      	b.n	8005b6c <__sfvwrite_r+0xb4>
 8005c22:	4633      	mov	r3, r6
 8005c24:	4691      	mov	r9, r2
 8005c26:	4610      	mov	r0, r2
 8005c28:	4617      	mov	r7, r2
 8005c2a:	464e      	mov	r6, r9
 8005c2c:	469b      	mov	fp, r3
 8005c2e:	2f00      	cmp	r7, #0
 8005c30:	d06b      	beq.n	8005d0a <__sfvwrite_r+0x252>
 8005c32:	2800      	cmp	r0, #0
 8005c34:	d071      	beq.n	8005d1a <__sfvwrite_r+0x262>
 8005c36:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005c3a:	6820      	ldr	r0, [r4, #0]
 8005c3c:	45b9      	cmp	r9, r7
 8005c3e:	464b      	mov	r3, r9
 8005c40:	bf28      	it	cs
 8005c42:	463b      	movcs	r3, r7
 8005c44:	4288      	cmp	r0, r1
 8005c46:	d903      	bls.n	8005c50 <__sfvwrite_r+0x198>
 8005c48:	68a5      	ldr	r5, [r4, #8]
 8005c4a:	4415      	add	r5, r2
 8005c4c:	42ab      	cmp	r3, r5
 8005c4e:	dc71      	bgt.n	8005d34 <__sfvwrite_r+0x27c>
 8005c50:	429a      	cmp	r2, r3
 8005c52:	f300 8093 	bgt.w	8005d7c <__sfvwrite_r+0x2c4>
 8005c56:	4613      	mov	r3, r2
 8005c58:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c5a:	69e1      	ldr	r1, [r4, #28]
 8005c5c:	4632      	mov	r2, r6
 8005c5e:	4650      	mov	r0, sl
 8005c60:	47a8      	blx	r5
 8005c62:	1e05      	subs	r5, r0, #0
 8005c64:	dd18      	ble.n	8005c98 <__sfvwrite_r+0x1e0>
 8005c66:	ebb9 0905 	subs.w	r9, r9, r5
 8005c6a:	d00f      	beq.n	8005c8c <__sfvwrite_r+0x1d4>
 8005c6c:	2001      	movs	r0, #1
 8005c6e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c72:	1b5b      	subs	r3, r3, r5
 8005c74:	442e      	add	r6, r5
 8005c76:	1b7f      	subs	r7, r7, r5
 8005c78:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c7c:	2b00      	cmp	r3, #0
 8005c7e:	d1d6      	bne.n	8005c2e <__sfvwrite_r+0x176>
 8005c80:	2000      	movs	r0, #0
 8005c82:	b003      	add	sp, #12
 8005c84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c88:	2000      	movs	r0, #0
 8005c8a:	4770      	bx	lr
 8005c8c:	4621      	mov	r1, r4
 8005c8e:	4650      	mov	r0, sl
 8005c90:	f7ff fd20 	bl	80056d4 <_fflush_r>
 8005c94:	2800      	cmp	r0, #0
 8005c96:	d0ea      	beq.n	8005c6e <__sfvwrite_r+0x1b6>
 8005c98:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c9c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005ca0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ca4:	81a3      	strh	r3, [r4, #12]
 8005ca6:	b003      	add	sp, #12
 8005ca8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cac:	6923      	ldr	r3, [r4, #16]
 8005cae:	4283      	cmp	r3, r0
 8005cb0:	d315      	bcc.n	8005cde <__sfvwrite_r+0x226>
 8005cb2:	6961      	ldr	r1, [r4, #20]
 8005cb4:	42a9      	cmp	r1, r5
 8005cb6:	d812      	bhi.n	8005cde <__sfvwrite_r+0x226>
 8005cb8:	4b3c      	ldr	r3, [pc, #240]	; (8005dac <__sfvwrite_r+0x2f4>)
 8005cba:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005cbc:	429d      	cmp	r5, r3
 8005cbe:	bf94      	ite	ls
 8005cc0:	462b      	movls	r3, r5
 8005cc2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005cc6:	464a      	mov	r2, r9
 8005cc8:	fb93 f3f1 	sdiv	r3, r3, r1
 8005ccc:	4650      	mov	r0, sl
 8005cce:	fb01 f303 	mul.w	r3, r1, r3
 8005cd2:	69e1      	ldr	r1, [r4, #28]
 8005cd4:	47b8      	blx	r7
 8005cd6:	1e07      	subs	r7, r0, #0
 8005cd8:	ddde      	ble.n	8005c98 <__sfvwrite_r+0x1e0>
 8005cda:	1bed      	subs	r5, r5, r7
 8005cdc:	e78e      	b.n	8005bfc <__sfvwrite_r+0x144>
 8005cde:	42af      	cmp	r7, r5
 8005ce0:	bf28      	it	cs
 8005ce2:	462f      	movcs	r7, r5
 8005ce4:	463a      	mov	r2, r7
 8005ce6:	4649      	mov	r1, r9
 8005ce8:	f000 fbc0 	bl	800646c <memmove>
 8005cec:	68a3      	ldr	r3, [r4, #8]
 8005cee:	6822      	ldr	r2, [r4, #0]
 8005cf0:	1bdb      	subs	r3, r3, r7
 8005cf2:	443a      	add	r2, r7
 8005cf4:	60a3      	str	r3, [r4, #8]
 8005cf6:	6022      	str	r2, [r4, #0]
 8005cf8:	2b00      	cmp	r3, #0
 8005cfa:	d1ee      	bne.n	8005cda <__sfvwrite_r+0x222>
 8005cfc:	4621      	mov	r1, r4
 8005cfe:	4650      	mov	r0, sl
 8005d00:	f7ff fce8 	bl	80056d4 <_fflush_r>
 8005d04:	2800      	cmp	r0, #0
 8005d06:	d0e8      	beq.n	8005cda <__sfvwrite_r+0x222>
 8005d08:	e7c6      	b.n	8005c98 <__sfvwrite_r+0x1e0>
 8005d0a:	f10b 0308 	add.w	r3, fp, #8
 8005d0e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005d12:	469b      	mov	fp, r3
 8005d14:	3308      	adds	r3, #8
 8005d16:	2f00      	cmp	r7, #0
 8005d18:	d0f9      	beq.n	8005d0e <__sfvwrite_r+0x256>
 8005d1a:	463a      	mov	r2, r7
 8005d1c:	210a      	movs	r1, #10
 8005d1e:	4630      	mov	r0, r6
 8005d20:	f7fa fcfe 	bl	8000720 <memchr>
 8005d24:	b338      	cbz	r0, 8005d76 <__sfvwrite_r+0x2be>
 8005d26:	3001      	adds	r0, #1
 8005d28:	eba0 0906 	sub.w	r9, r0, r6
 8005d2c:	e783      	b.n	8005c36 <__sfvwrite_r+0x17e>
 8005d2e:	462f      	mov	r7, r5
 8005d30:	46ab      	mov	fp, r5
 8005d32:	e757      	b.n	8005be4 <__sfvwrite_r+0x12c>
 8005d34:	4631      	mov	r1, r6
 8005d36:	462a      	mov	r2, r5
 8005d38:	f000 fb98 	bl	800646c <memmove>
 8005d3c:	6823      	ldr	r3, [r4, #0]
 8005d3e:	442b      	add	r3, r5
 8005d40:	6023      	str	r3, [r4, #0]
 8005d42:	4621      	mov	r1, r4
 8005d44:	4650      	mov	r0, sl
 8005d46:	f7ff fcc5 	bl	80056d4 <_fflush_r>
 8005d4a:	2800      	cmp	r0, #0
 8005d4c:	d08b      	beq.n	8005c66 <__sfvwrite_r+0x1ae>
 8005d4e:	e7a3      	b.n	8005c98 <__sfvwrite_r+0x1e0>
 8005d50:	4650      	mov	r0, sl
 8005d52:	f000 ff05 	bl	8006b60 <_realloc_r>
 8005d56:	4603      	mov	r3, r0
 8005d58:	2800      	cmp	r0, #0
 8005d5a:	f47f af39 	bne.w	8005bd0 <__sfvwrite_r+0x118>
 8005d5e:	6921      	ldr	r1, [r4, #16]
 8005d60:	4650      	mov	r0, sl
 8005d62:	f7ff fdb5 	bl	80058d0 <_free_r>
 8005d66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d6a:	220c      	movs	r2, #12
 8005d6c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d70:	f8ca 2000 	str.w	r2, [sl]
 8005d74:	e792      	b.n	8005c9c <__sfvwrite_r+0x1e4>
 8005d76:	f107 0901 	add.w	r9, r7, #1
 8005d7a:	e75c      	b.n	8005c36 <__sfvwrite_r+0x17e>
 8005d7c:	461a      	mov	r2, r3
 8005d7e:	4631      	mov	r1, r6
 8005d80:	9301      	str	r3, [sp, #4]
 8005d82:	f000 fb73 	bl	800646c <memmove>
 8005d86:	9b01      	ldr	r3, [sp, #4]
 8005d88:	68a1      	ldr	r1, [r4, #8]
 8005d8a:	6822      	ldr	r2, [r4, #0]
 8005d8c:	1ac9      	subs	r1, r1, r3
 8005d8e:	441a      	add	r2, r3
 8005d90:	60a1      	str	r1, [r4, #8]
 8005d92:	6022      	str	r2, [r4, #0]
 8005d94:	461d      	mov	r5, r3
 8005d96:	e766      	b.n	8005c66 <__sfvwrite_r+0x1ae>
 8005d98:	230c      	movs	r3, #12
 8005d9a:	f8ca 3000 	str.w	r3, [sl]
 8005d9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005da2:	e77b      	b.n	8005c9c <__sfvwrite_r+0x1e4>
 8005da4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005da8:	e76b      	b.n	8005c82 <__sfvwrite_r+0x1ca>
 8005daa:	bf00      	nop
 8005dac:	7ffffffe 	.word	0x7ffffffe
 8005db0:	7ffffc00 	.word	0x7ffffc00

08005db4 <_fwalk_reent>:
 8005db4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005db8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005dbc:	d01f      	beq.n	8005dfe <_fwalk_reent+0x4a>
 8005dbe:	4688      	mov	r8, r1
 8005dc0:	4606      	mov	r6, r0
 8005dc2:	f04f 0900 	mov.w	r9, #0
 8005dc6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005dca:	3d01      	subs	r5, #1
 8005dcc:	d411      	bmi.n	8005df2 <_fwalk_reent+0x3e>
 8005dce:	89a3      	ldrh	r3, [r4, #12]
 8005dd0:	2b01      	cmp	r3, #1
 8005dd2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005dd6:	4621      	mov	r1, r4
 8005dd8:	4630      	mov	r0, r6
 8005dda:	d906      	bls.n	8005dea <_fwalk_reent+0x36>
 8005ddc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005de0:	3301      	adds	r3, #1
 8005de2:	d002      	beq.n	8005dea <_fwalk_reent+0x36>
 8005de4:	47c0      	blx	r8
 8005de6:	ea49 0900 	orr.w	r9, r9, r0
 8005dea:	1c6b      	adds	r3, r5, #1
 8005dec:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005df0:	d1ed      	bne.n	8005dce <_fwalk_reent+0x1a>
 8005df2:	683f      	ldr	r7, [r7, #0]
 8005df4:	2f00      	cmp	r7, #0
 8005df6:	d1e6      	bne.n	8005dc6 <_fwalk_reent+0x12>
 8005df8:	4648      	mov	r0, r9
 8005dfa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005dfe:	46b9      	mov	r9, r7
 8005e00:	4648      	mov	r0, r9
 8005e02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005e06:	bf00      	nop

08005e08 <_localeconv_r>:
 8005e08:	4a04      	ldr	r2, [pc, #16]	; (8005e1c <_localeconv_r+0x14>)
 8005e0a:	4b05      	ldr	r3, [pc, #20]	; (8005e20 <_localeconv_r+0x18>)
 8005e0c:	6812      	ldr	r2, [r2, #0]
 8005e0e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005e10:	2800      	cmp	r0, #0
 8005e12:	bf08      	it	eq
 8005e14:	4618      	moveq	r0, r3
 8005e16:	30f0      	adds	r0, #240	; 0xf0
 8005e18:	4770      	bx	lr
 8005e1a:	bf00      	nop
 8005e1c:	20000068 	.word	0x20000068
 8005e20:	200008ac 	.word	0x200008ac

08005e24 <__retarget_lock_init_recursive>:
 8005e24:	4770      	bx	lr
 8005e26:	bf00      	nop

08005e28 <__retarget_lock_close_recursive>:
 8005e28:	4770      	bx	lr
 8005e2a:	bf00      	nop

08005e2c <__retarget_lock_acquire_recursive>:
 8005e2c:	4770      	bx	lr
 8005e2e:	bf00      	nop

08005e30 <__retarget_lock_release_recursive>:
 8005e30:	4770      	bx	lr
 8005e32:	bf00      	nop

08005e34 <__swhatbuf_r>:
 8005e34:	b570      	push	{r4, r5, r6, lr}
 8005e36:	460c      	mov	r4, r1
 8005e38:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005e3c:	2900      	cmp	r1, #0
 8005e3e:	b096      	sub	sp, #88	; 0x58
 8005e40:	4615      	mov	r5, r2
 8005e42:	461e      	mov	r6, r3
 8005e44:	da0f      	bge.n	8005e66 <__swhatbuf_r+0x32>
 8005e46:	89a2      	ldrh	r2, [r4, #12]
 8005e48:	2300      	movs	r3, #0
 8005e4a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005e4e:	6033      	str	r3, [r6, #0]
 8005e50:	d104      	bne.n	8005e5c <__swhatbuf_r+0x28>
 8005e52:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005e56:	602b      	str	r3, [r5, #0]
 8005e58:	b016      	add	sp, #88	; 0x58
 8005e5a:	bd70      	pop	{r4, r5, r6, pc}
 8005e5c:	2240      	movs	r2, #64	; 0x40
 8005e5e:	4618      	mov	r0, r3
 8005e60:	602a      	str	r2, [r5, #0]
 8005e62:	b016      	add	sp, #88	; 0x58
 8005e64:	bd70      	pop	{r4, r5, r6, pc}
 8005e66:	466a      	mov	r2, sp
 8005e68:	f001 fad0 	bl	800740c <_fstat_r>
 8005e6c:	2800      	cmp	r0, #0
 8005e6e:	dbea      	blt.n	8005e46 <__swhatbuf_r+0x12>
 8005e70:	9b01      	ldr	r3, [sp, #4]
 8005e72:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005e76:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e7a:	fab3 f383 	clz	r3, r3
 8005e7e:	095b      	lsrs	r3, r3, #5
 8005e80:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005e84:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005e88:	6033      	str	r3, [r6, #0]
 8005e8a:	602a      	str	r2, [r5, #0]
 8005e8c:	b016      	add	sp, #88	; 0x58
 8005e8e:	bd70      	pop	{r4, r5, r6, pc}

08005e90 <__smakebuf_r>:
 8005e90:	898a      	ldrh	r2, [r1, #12]
 8005e92:	0792      	lsls	r2, r2, #30
 8005e94:	460b      	mov	r3, r1
 8005e96:	d506      	bpl.n	8005ea6 <__smakebuf_r+0x16>
 8005e98:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005e9c:	2101      	movs	r1, #1
 8005e9e:	601a      	str	r2, [r3, #0]
 8005ea0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005ea4:	4770      	bx	lr
 8005ea6:	b570      	push	{r4, r5, r6, lr}
 8005ea8:	b082      	sub	sp, #8
 8005eaa:	ab01      	add	r3, sp, #4
 8005eac:	466a      	mov	r2, sp
 8005eae:	460c      	mov	r4, r1
 8005eb0:	4605      	mov	r5, r0
 8005eb2:	f7ff ffbf 	bl	8005e34 <__swhatbuf_r>
 8005eb6:	9900      	ldr	r1, [sp, #0]
 8005eb8:	4606      	mov	r6, r0
 8005eba:	4628      	mov	r0, r5
 8005ebc:	f000 f832 	bl	8005f24 <_malloc_r>
 8005ec0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ec4:	b1d8      	cbz	r0, 8005efe <__smakebuf_r+0x6e>
 8005ec6:	4916      	ldr	r1, [pc, #88]	; (8005f20 <__smakebuf_r+0x90>)
 8005ec8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005eca:	9a01      	ldr	r2, [sp, #4]
 8005ecc:	9900      	ldr	r1, [sp, #0]
 8005ece:	6020      	str	r0, [r4, #0]
 8005ed0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005ed4:	81a3      	strh	r3, [r4, #12]
 8005ed6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005eda:	b91a      	cbnz	r2, 8005ee4 <__smakebuf_r+0x54>
 8005edc:	4333      	orrs	r3, r6
 8005ede:	81a3      	strh	r3, [r4, #12]
 8005ee0:	b002      	add	sp, #8
 8005ee2:	bd70      	pop	{r4, r5, r6, pc}
 8005ee4:	4628      	mov	r0, r5
 8005ee6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005eea:	f001 faa3 	bl	8007434 <_isatty_r>
 8005eee:	b1a0      	cbz	r0, 8005f1a <__smakebuf_r+0x8a>
 8005ef0:	89a3      	ldrh	r3, [r4, #12]
 8005ef2:	f023 0303 	bic.w	r3, r3, #3
 8005ef6:	f043 0301 	orr.w	r3, r3, #1
 8005efa:	b21b      	sxth	r3, r3
 8005efc:	e7ee      	b.n	8005edc <__smakebuf_r+0x4c>
 8005efe:	059a      	lsls	r2, r3, #22
 8005f00:	d4ee      	bmi.n	8005ee0 <__smakebuf_r+0x50>
 8005f02:	f023 0303 	bic.w	r3, r3, #3
 8005f06:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005f0a:	f043 0302 	orr.w	r3, r3, #2
 8005f0e:	2101      	movs	r1, #1
 8005f10:	81a3      	strh	r3, [r4, #12]
 8005f12:	6022      	str	r2, [r4, #0]
 8005f14:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005f18:	e7e2      	b.n	8005ee0 <__smakebuf_r+0x50>
 8005f1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f1e:	e7dd      	b.n	8005edc <__smakebuf_r+0x4c>
 8005f20:	08005781 	.word	0x08005781

08005f24 <_malloc_r>:
 8005f24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f28:	f101 050b 	add.w	r5, r1, #11
 8005f2c:	2d16      	cmp	r5, #22
 8005f2e:	b083      	sub	sp, #12
 8005f30:	4606      	mov	r6, r0
 8005f32:	d823      	bhi.n	8005f7c <_malloc_r+0x58>
 8005f34:	2910      	cmp	r1, #16
 8005f36:	f200 80b9 	bhi.w	80060ac <_malloc_r+0x188>
 8005f3a:	f000 fafb 	bl	8006534 <__malloc_lock>
 8005f3e:	2510      	movs	r5, #16
 8005f40:	2318      	movs	r3, #24
 8005f42:	2002      	movs	r0, #2
 8005f44:	4fc5      	ldr	r7, [pc, #788]	; (800625c <_malloc_r+0x338>)
 8005f46:	443b      	add	r3, r7
 8005f48:	f1a3 0208 	sub.w	r2, r3, #8
 8005f4c:	685c      	ldr	r4, [r3, #4]
 8005f4e:	4294      	cmp	r4, r2
 8005f50:	f000 8166 	beq.w	8006220 <_malloc_r+0x2fc>
 8005f54:	6863      	ldr	r3, [r4, #4]
 8005f56:	f023 0303 	bic.w	r3, r3, #3
 8005f5a:	4423      	add	r3, r4
 8005f5c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005f60:	685a      	ldr	r2, [r3, #4]
 8005f62:	60e9      	str	r1, [r5, #12]
 8005f64:	f042 0201 	orr.w	r2, r2, #1
 8005f68:	608d      	str	r5, [r1, #8]
 8005f6a:	4630      	mov	r0, r6
 8005f6c:	605a      	str	r2, [r3, #4]
 8005f6e:	f000 fae7 	bl	8006540 <__malloc_unlock>
 8005f72:	3408      	adds	r4, #8
 8005f74:	4620      	mov	r0, r4
 8005f76:	b003      	add	sp, #12
 8005f78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f7c:	f035 0507 	bics.w	r5, r5, #7
 8005f80:	f100 8094 	bmi.w	80060ac <_malloc_r+0x188>
 8005f84:	42a9      	cmp	r1, r5
 8005f86:	f200 8091 	bhi.w	80060ac <_malloc_r+0x188>
 8005f8a:	f000 fad3 	bl	8006534 <__malloc_lock>
 8005f8e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005f92:	f0c0 8183 	bcc.w	800629c <_malloc_r+0x378>
 8005f96:	0a6b      	lsrs	r3, r5, #9
 8005f98:	f000 808f 	beq.w	80060ba <_malloc_r+0x196>
 8005f9c:	2b04      	cmp	r3, #4
 8005f9e:	f200 8146 	bhi.w	800622e <_malloc_r+0x30a>
 8005fa2:	09ab      	lsrs	r3, r5, #6
 8005fa4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005fa8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005fac:	00c3      	lsls	r3, r0, #3
 8005fae:	4fab      	ldr	r7, [pc, #684]	; (800625c <_malloc_r+0x338>)
 8005fb0:	443b      	add	r3, r7
 8005fb2:	f1a3 0108 	sub.w	r1, r3, #8
 8005fb6:	685c      	ldr	r4, [r3, #4]
 8005fb8:	42a1      	cmp	r1, r4
 8005fba:	d106      	bne.n	8005fca <_malloc_r+0xa6>
 8005fbc:	e00c      	b.n	8005fd8 <_malloc_r+0xb4>
 8005fbe:	2a00      	cmp	r2, #0
 8005fc0:	f280 811d 	bge.w	80061fe <_malloc_r+0x2da>
 8005fc4:	68e4      	ldr	r4, [r4, #12]
 8005fc6:	42a1      	cmp	r1, r4
 8005fc8:	d006      	beq.n	8005fd8 <_malloc_r+0xb4>
 8005fca:	6863      	ldr	r3, [r4, #4]
 8005fcc:	f023 0303 	bic.w	r3, r3, #3
 8005fd0:	1b5a      	subs	r2, r3, r5
 8005fd2:	2a0f      	cmp	r2, #15
 8005fd4:	ddf3      	ble.n	8005fbe <_malloc_r+0x9a>
 8005fd6:	4660      	mov	r0, ip
 8005fd8:	693c      	ldr	r4, [r7, #16]
 8005fda:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006270 <_malloc_r+0x34c>
 8005fde:	4564      	cmp	r4, ip
 8005fe0:	d071      	beq.n	80060c6 <_malloc_r+0x1a2>
 8005fe2:	6863      	ldr	r3, [r4, #4]
 8005fe4:	f023 0303 	bic.w	r3, r3, #3
 8005fe8:	1b5a      	subs	r2, r3, r5
 8005fea:	2a0f      	cmp	r2, #15
 8005fec:	f300 8144 	bgt.w	8006278 <_malloc_r+0x354>
 8005ff0:	2a00      	cmp	r2, #0
 8005ff2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005ff6:	f280 8126 	bge.w	8006246 <_malloc_r+0x322>
 8005ffa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005ffe:	f080 8169 	bcs.w	80062d4 <_malloc_r+0x3b0>
 8006002:	08db      	lsrs	r3, r3, #3
 8006004:	1c59      	adds	r1, r3, #1
 8006006:	687a      	ldr	r2, [r7, #4]
 8006008:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800600c:	f8c4 8008 	str.w	r8, [r4, #8]
 8006010:	f04f 0e01 	mov.w	lr, #1
 8006014:	109b      	asrs	r3, r3, #2
 8006016:	fa0e f303 	lsl.w	r3, lr, r3
 800601a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800601e:	4313      	orrs	r3, r2
 8006020:	f1ae 0208 	sub.w	r2, lr, #8
 8006024:	60e2      	str	r2, [r4, #12]
 8006026:	607b      	str	r3, [r7, #4]
 8006028:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800602c:	f8c8 400c 	str.w	r4, [r8, #12]
 8006030:	1082      	asrs	r2, r0, #2
 8006032:	2401      	movs	r4, #1
 8006034:	4094      	lsls	r4, r2
 8006036:	429c      	cmp	r4, r3
 8006038:	d84b      	bhi.n	80060d2 <_malloc_r+0x1ae>
 800603a:	421c      	tst	r4, r3
 800603c:	d106      	bne.n	800604c <_malloc_r+0x128>
 800603e:	f020 0003 	bic.w	r0, r0, #3
 8006042:	0064      	lsls	r4, r4, #1
 8006044:	421c      	tst	r4, r3
 8006046:	f100 0004 	add.w	r0, r0, #4
 800604a:	d0fa      	beq.n	8006042 <_malloc_r+0x11e>
 800604c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006050:	46ce      	mov	lr, r9
 8006052:	4680      	mov	r8, r0
 8006054:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006058:	459e      	cmp	lr, r3
 800605a:	d107      	bne.n	800606c <_malloc_r+0x148>
 800605c:	e122      	b.n	80062a4 <_malloc_r+0x380>
 800605e:	2a00      	cmp	r2, #0
 8006060:	f280 8129 	bge.w	80062b6 <_malloc_r+0x392>
 8006064:	68db      	ldr	r3, [r3, #12]
 8006066:	459e      	cmp	lr, r3
 8006068:	f000 811c 	beq.w	80062a4 <_malloc_r+0x380>
 800606c:	6859      	ldr	r1, [r3, #4]
 800606e:	f021 0103 	bic.w	r1, r1, #3
 8006072:	1b4a      	subs	r2, r1, r5
 8006074:	2a0f      	cmp	r2, #15
 8006076:	ddf2      	ble.n	800605e <_malloc_r+0x13a>
 8006078:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800607c:	195c      	adds	r4, r3, r5
 800607e:	f045 0501 	orr.w	r5, r5, #1
 8006082:	605d      	str	r5, [r3, #4]
 8006084:	f042 0501 	orr.w	r5, r2, #1
 8006088:	f8c8 e00c 	str.w	lr, [r8, #12]
 800608c:	4630      	mov	r0, r6
 800608e:	f8ce 8008 	str.w	r8, [lr, #8]
 8006092:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8006096:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800609a:	6065      	str	r5, [r4, #4]
 800609c:	505a      	str	r2, [r3, r1]
 800609e:	9301      	str	r3, [sp, #4]
 80060a0:	f000 fa4e 	bl	8006540 <__malloc_unlock>
 80060a4:	9b01      	ldr	r3, [sp, #4]
 80060a6:	f103 0408 	add.w	r4, r3, #8
 80060aa:	e763      	b.n	8005f74 <_malloc_r+0x50>
 80060ac:	2400      	movs	r4, #0
 80060ae:	230c      	movs	r3, #12
 80060b0:	4620      	mov	r0, r4
 80060b2:	6033      	str	r3, [r6, #0]
 80060b4:	b003      	add	sp, #12
 80060b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060ba:	f44f 7300 	mov.w	r3, #512	; 0x200
 80060be:	2040      	movs	r0, #64	; 0x40
 80060c0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80060c4:	e773      	b.n	8005fae <_malloc_r+0x8a>
 80060c6:	687b      	ldr	r3, [r7, #4]
 80060c8:	1082      	asrs	r2, r0, #2
 80060ca:	2401      	movs	r4, #1
 80060cc:	4094      	lsls	r4, r2
 80060ce:	429c      	cmp	r4, r3
 80060d0:	d9b3      	bls.n	800603a <_malloc_r+0x116>
 80060d2:	68bc      	ldr	r4, [r7, #8]
 80060d4:	6863      	ldr	r3, [r4, #4]
 80060d6:	f023 0903 	bic.w	r9, r3, #3
 80060da:	45a9      	cmp	r9, r5
 80060dc:	d303      	bcc.n	80060e6 <_malloc_r+0x1c2>
 80060de:	eba9 0305 	sub.w	r3, r9, r5
 80060e2:	2b0f      	cmp	r3, #15
 80060e4:	dc7b      	bgt.n	80061de <_malloc_r+0x2ba>
 80060e6:	4b5e      	ldr	r3, [pc, #376]	; (8006260 <_malloc_r+0x33c>)
 80060e8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8006274 <_malloc_r+0x350>
 80060ec:	681a      	ldr	r2, [r3, #0]
 80060ee:	f8da 3000 	ldr.w	r3, [sl]
 80060f2:	3301      	adds	r3, #1
 80060f4:	eb05 0802 	add.w	r8, r5, r2
 80060f8:	f000 8148 	beq.w	800638c <_malloc_r+0x468>
 80060fc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006100:	f108 080f 	add.w	r8, r8, #15
 8006104:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006108:	f028 080f 	bic.w	r8, r8, #15
 800610c:	4641      	mov	r1, r8
 800610e:	4630      	mov	r0, r6
 8006110:	f000 ff08 	bl	8006f24 <_sbrk_r>
 8006114:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006118:	4683      	mov	fp, r0
 800611a:	f000 8104 	beq.w	8006326 <_malloc_r+0x402>
 800611e:	eb04 0009 	add.w	r0, r4, r9
 8006122:	4558      	cmp	r0, fp
 8006124:	f200 80fd 	bhi.w	8006322 <_malloc_r+0x3fe>
 8006128:	4a4e      	ldr	r2, [pc, #312]	; (8006264 <_malloc_r+0x340>)
 800612a:	6813      	ldr	r3, [r2, #0]
 800612c:	4443      	add	r3, r8
 800612e:	6013      	str	r3, [r2, #0]
 8006130:	f000 814d 	beq.w	80063ce <_malloc_r+0x4aa>
 8006134:	f8da 1000 	ldr.w	r1, [sl]
 8006138:	3101      	adds	r1, #1
 800613a:	bf1b      	ittet	ne
 800613c:	ebab 0000 	subne.w	r0, fp, r0
 8006140:	181b      	addne	r3, r3, r0
 8006142:	f8ca b000 	streq.w	fp, [sl]
 8006146:	6013      	strne	r3, [r2, #0]
 8006148:	f01b 0307 	ands.w	r3, fp, #7
 800614c:	f000 8134 	beq.w	80063b8 <_malloc_r+0x494>
 8006150:	f1c3 0108 	rsb	r1, r3, #8
 8006154:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006158:	448b      	add	fp, r1
 800615a:	3308      	adds	r3, #8
 800615c:	44d8      	add	r8, fp
 800615e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8006162:	eba3 0808 	sub.w	r8, r3, r8
 8006166:	4641      	mov	r1, r8
 8006168:	4630      	mov	r0, r6
 800616a:	9201      	str	r2, [sp, #4]
 800616c:	f000 feda 	bl	8006f24 <_sbrk_r>
 8006170:	1c43      	adds	r3, r0, #1
 8006172:	9a01      	ldr	r2, [sp, #4]
 8006174:	f000 8146 	beq.w	8006404 <_malloc_r+0x4e0>
 8006178:	eba0 010b 	sub.w	r1, r0, fp
 800617c:	4441      	add	r1, r8
 800617e:	f041 0101 	orr.w	r1, r1, #1
 8006182:	6813      	ldr	r3, [r2, #0]
 8006184:	f8c7 b008 	str.w	fp, [r7, #8]
 8006188:	4443      	add	r3, r8
 800618a:	42bc      	cmp	r4, r7
 800618c:	f8cb 1004 	str.w	r1, [fp, #4]
 8006190:	6013      	str	r3, [r2, #0]
 8006192:	d015      	beq.n	80061c0 <_malloc_r+0x29c>
 8006194:	f1b9 0f0f 	cmp.w	r9, #15
 8006198:	f240 8130 	bls.w	80063fc <_malloc_r+0x4d8>
 800619c:	6860      	ldr	r0, [r4, #4]
 800619e:	f1a9 010c 	sub.w	r1, r9, #12
 80061a2:	f021 0107 	bic.w	r1, r1, #7
 80061a6:	f000 0001 	and.w	r0, r0, #1
 80061aa:	eb04 0c01 	add.w	ip, r4, r1
 80061ae:	4308      	orrs	r0, r1
 80061b0:	f04f 0e05 	mov.w	lr, #5
 80061b4:	290f      	cmp	r1, #15
 80061b6:	6060      	str	r0, [r4, #4]
 80061b8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80061bc:	f200 813a 	bhi.w	8006434 <_malloc_r+0x510>
 80061c0:	4a29      	ldr	r2, [pc, #164]	; (8006268 <_malloc_r+0x344>)
 80061c2:	482a      	ldr	r0, [pc, #168]	; (800626c <_malloc_r+0x348>)
 80061c4:	6811      	ldr	r1, [r2, #0]
 80061c6:	68bc      	ldr	r4, [r7, #8]
 80061c8:	428b      	cmp	r3, r1
 80061ca:	6801      	ldr	r1, [r0, #0]
 80061cc:	bf88      	it	hi
 80061ce:	6013      	strhi	r3, [r2, #0]
 80061d0:	6862      	ldr	r2, [r4, #4]
 80061d2:	428b      	cmp	r3, r1
 80061d4:	f022 0203 	bic.w	r2, r2, #3
 80061d8:	bf88      	it	hi
 80061da:	6003      	strhi	r3, [r0, #0]
 80061dc:	e0a7      	b.n	800632e <_malloc_r+0x40a>
 80061de:	1962      	adds	r2, r4, r5
 80061e0:	f043 0301 	orr.w	r3, r3, #1
 80061e4:	f045 0501 	orr.w	r5, r5, #1
 80061e8:	6065      	str	r5, [r4, #4]
 80061ea:	4630      	mov	r0, r6
 80061ec:	60ba      	str	r2, [r7, #8]
 80061ee:	6053      	str	r3, [r2, #4]
 80061f0:	f000 f9a6 	bl	8006540 <__malloc_unlock>
 80061f4:	3408      	adds	r4, #8
 80061f6:	4620      	mov	r0, r4
 80061f8:	b003      	add	sp, #12
 80061fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061fe:	4423      	add	r3, r4
 8006200:	68e1      	ldr	r1, [r4, #12]
 8006202:	685a      	ldr	r2, [r3, #4]
 8006204:	68a5      	ldr	r5, [r4, #8]
 8006206:	f042 0201 	orr.w	r2, r2, #1
 800620a:	60e9      	str	r1, [r5, #12]
 800620c:	4630      	mov	r0, r6
 800620e:	608d      	str	r5, [r1, #8]
 8006210:	605a      	str	r2, [r3, #4]
 8006212:	f000 f995 	bl	8006540 <__malloc_unlock>
 8006216:	3408      	adds	r4, #8
 8006218:	4620      	mov	r0, r4
 800621a:	b003      	add	sp, #12
 800621c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006220:	68dc      	ldr	r4, [r3, #12]
 8006222:	42a3      	cmp	r3, r4
 8006224:	bf08      	it	eq
 8006226:	3002      	addeq	r0, #2
 8006228:	f43f aed6 	beq.w	8005fd8 <_malloc_r+0xb4>
 800622c:	e692      	b.n	8005f54 <_malloc_r+0x30>
 800622e:	2b14      	cmp	r3, #20
 8006230:	d971      	bls.n	8006316 <_malloc_r+0x3f2>
 8006232:	2b54      	cmp	r3, #84	; 0x54
 8006234:	f200 80ad 	bhi.w	8006392 <_malloc_r+0x46e>
 8006238:	0b2b      	lsrs	r3, r5, #12
 800623a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800623e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8006242:	00c3      	lsls	r3, r0, #3
 8006244:	e6b3      	b.n	8005fae <_malloc_r+0x8a>
 8006246:	4423      	add	r3, r4
 8006248:	4630      	mov	r0, r6
 800624a:	685a      	ldr	r2, [r3, #4]
 800624c:	f042 0201 	orr.w	r2, r2, #1
 8006250:	605a      	str	r2, [r3, #4]
 8006252:	3408      	adds	r4, #8
 8006254:	f000 f974 	bl	8006540 <__malloc_unlock>
 8006258:	e68c      	b.n	8005f74 <_malloc_r+0x50>
 800625a:	bf00      	nop
 800625c:	2000049c 	.word	0x2000049c
 8006260:	20000aec 	.word	0x20000aec
 8006264:	20000abc 	.word	0x20000abc
 8006268:	20000ae4 	.word	0x20000ae4
 800626c:	20000ae8 	.word	0x20000ae8
 8006270:	200004a4 	.word	0x200004a4
 8006274:	200008a4 	.word	0x200008a4
 8006278:	1961      	adds	r1, r4, r5
 800627a:	f045 0e01 	orr.w	lr, r5, #1
 800627e:	f042 0501 	orr.w	r5, r2, #1
 8006282:	f8c4 e004 	str.w	lr, [r4, #4]
 8006286:	4630      	mov	r0, r6
 8006288:	e9c7 1104 	strd	r1, r1, [r7, #16]
 800628c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006290:	604d      	str	r5, [r1, #4]
 8006292:	50e2      	str	r2, [r4, r3]
 8006294:	f000 f954 	bl	8006540 <__malloc_unlock>
 8006298:	3408      	adds	r4, #8
 800629a:	e66b      	b.n	8005f74 <_malloc_r+0x50>
 800629c:	08e8      	lsrs	r0, r5, #3
 800629e:	f105 0308 	add.w	r3, r5, #8
 80062a2:	e64f      	b.n	8005f44 <_malloc_r+0x20>
 80062a4:	f108 0801 	add.w	r8, r8, #1
 80062a8:	f018 0f03 	tst.w	r8, #3
 80062ac:	f10e 0e08 	add.w	lr, lr, #8
 80062b0:	f47f aed0 	bne.w	8006054 <_malloc_r+0x130>
 80062b4:	e052      	b.n	800635c <_malloc_r+0x438>
 80062b6:	4419      	add	r1, r3
 80062b8:	461c      	mov	r4, r3
 80062ba:	684a      	ldr	r2, [r1, #4]
 80062bc:	68db      	ldr	r3, [r3, #12]
 80062be:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80062c2:	f042 0201 	orr.w	r2, r2, #1
 80062c6:	604a      	str	r2, [r1, #4]
 80062c8:	4630      	mov	r0, r6
 80062ca:	60eb      	str	r3, [r5, #12]
 80062cc:	609d      	str	r5, [r3, #8]
 80062ce:	f000 f937 	bl	8006540 <__malloc_unlock>
 80062d2:	e64f      	b.n	8005f74 <_malloc_r+0x50>
 80062d4:	0a5a      	lsrs	r2, r3, #9
 80062d6:	2a04      	cmp	r2, #4
 80062d8:	d935      	bls.n	8006346 <_malloc_r+0x422>
 80062da:	2a14      	cmp	r2, #20
 80062dc:	d86f      	bhi.n	80063be <_malloc_r+0x49a>
 80062de:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80062e2:	00c9      	lsls	r1, r1, #3
 80062e4:	325b      	adds	r2, #91	; 0x5b
 80062e6:	eb07 0e01 	add.w	lr, r7, r1
 80062ea:	5879      	ldr	r1, [r7, r1]
 80062ec:	f1ae 0e08 	sub.w	lr, lr, #8
 80062f0:	458e      	cmp	lr, r1
 80062f2:	d058      	beq.n	80063a6 <_malloc_r+0x482>
 80062f4:	684a      	ldr	r2, [r1, #4]
 80062f6:	f022 0203 	bic.w	r2, r2, #3
 80062fa:	429a      	cmp	r2, r3
 80062fc:	d902      	bls.n	8006304 <_malloc_r+0x3e0>
 80062fe:	6889      	ldr	r1, [r1, #8]
 8006300:	458e      	cmp	lr, r1
 8006302:	d1f7      	bne.n	80062f4 <_malloc_r+0x3d0>
 8006304:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006308:	687b      	ldr	r3, [r7, #4]
 800630a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800630e:	f8ce 4008 	str.w	r4, [lr, #8]
 8006312:	60cc      	str	r4, [r1, #12]
 8006314:	e68c      	b.n	8006030 <_malloc_r+0x10c>
 8006316:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800631a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800631e:	00c3      	lsls	r3, r0, #3
 8006320:	e645      	b.n	8005fae <_malloc_r+0x8a>
 8006322:	42bc      	cmp	r4, r7
 8006324:	d072      	beq.n	800640c <_malloc_r+0x4e8>
 8006326:	68bc      	ldr	r4, [r7, #8]
 8006328:	6862      	ldr	r2, [r4, #4]
 800632a:	f022 0203 	bic.w	r2, r2, #3
 800632e:	4295      	cmp	r5, r2
 8006330:	eba2 0305 	sub.w	r3, r2, r5
 8006334:	d802      	bhi.n	800633c <_malloc_r+0x418>
 8006336:	2b0f      	cmp	r3, #15
 8006338:	f73f af51 	bgt.w	80061de <_malloc_r+0x2ba>
 800633c:	4630      	mov	r0, r6
 800633e:	f000 f8ff 	bl	8006540 <__malloc_unlock>
 8006342:	2400      	movs	r4, #0
 8006344:	e616      	b.n	8005f74 <_malloc_r+0x50>
 8006346:	099a      	lsrs	r2, r3, #6
 8006348:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800634c:	00c9      	lsls	r1, r1, #3
 800634e:	3238      	adds	r2, #56	; 0x38
 8006350:	e7c9      	b.n	80062e6 <_malloc_r+0x3c2>
 8006352:	f8d9 9000 	ldr.w	r9, [r9]
 8006356:	4599      	cmp	r9, r3
 8006358:	f040 8083 	bne.w	8006462 <_malloc_r+0x53e>
 800635c:	f010 0f03 	tst.w	r0, #3
 8006360:	f1a9 0308 	sub.w	r3, r9, #8
 8006364:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006368:	d1f3      	bne.n	8006352 <_malloc_r+0x42e>
 800636a:	687b      	ldr	r3, [r7, #4]
 800636c:	ea23 0304 	bic.w	r3, r3, r4
 8006370:	607b      	str	r3, [r7, #4]
 8006372:	0064      	lsls	r4, r4, #1
 8006374:	429c      	cmp	r4, r3
 8006376:	f63f aeac 	bhi.w	80060d2 <_malloc_r+0x1ae>
 800637a:	b91c      	cbnz	r4, 8006384 <_malloc_r+0x460>
 800637c:	e6a9      	b.n	80060d2 <_malloc_r+0x1ae>
 800637e:	0064      	lsls	r4, r4, #1
 8006380:	f108 0804 	add.w	r8, r8, #4
 8006384:	421c      	tst	r4, r3
 8006386:	d0fa      	beq.n	800637e <_malloc_r+0x45a>
 8006388:	4640      	mov	r0, r8
 800638a:	e65f      	b.n	800604c <_malloc_r+0x128>
 800638c:	f108 0810 	add.w	r8, r8, #16
 8006390:	e6bc      	b.n	800610c <_malloc_r+0x1e8>
 8006392:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006396:	d826      	bhi.n	80063e6 <_malloc_r+0x4c2>
 8006398:	0beb      	lsrs	r3, r5, #15
 800639a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800639e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80063a2:	00c3      	lsls	r3, r0, #3
 80063a4:	e603      	b.n	8005fae <_malloc_r+0x8a>
 80063a6:	687b      	ldr	r3, [r7, #4]
 80063a8:	1092      	asrs	r2, r2, #2
 80063aa:	f04f 0801 	mov.w	r8, #1
 80063ae:	fa08 f202 	lsl.w	r2, r8, r2
 80063b2:	4313      	orrs	r3, r2
 80063b4:	607b      	str	r3, [r7, #4]
 80063b6:	e7a8      	b.n	800630a <_malloc_r+0x3e6>
 80063b8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80063bc:	e6ce      	b.n	800615c <_malloc_r+0x238>
 80063be:	2a54      	cmp	r2, #84	; 0x54
 80063c0:	d829      	bhi.n	8006416 <_malloc_r+0x4f2>
 80063c2:	0b1a      	lsrs	r2, r3, #12
 80063c4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80063c8:	00c9      	lsls	r1, r1, #3
 80063ca:	326e      	adds	r2, #110	; 0x6e
 80063cc:	e78b      	b.n	80062e6 <_malloc_r+0x3c2>
 80063ce:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80063d2:	2900      	cmp	r1, #0
 80063d4:	f47f aeae 	bne.w	8006134 <_malloc_r+0x210>
 80063d8:	eb09 0208 	add.w	r2, r9, r8
 80063dc:	68b9      	ldr	r1, [r7, #8]
 80063de:	f042 0201 	orr.w	r2, r2, #1
 80063e2:	604a      	str	r2, [r1, #4]
 80063e4:	e6ec      	b.n	80061c0 <_malloc_r+0x29c>
 80063e6:	f240 5254 	movw	r2, #1364	; 0x554
 80063ea:	4293      	cmp	r3, r2
 80063ec:	d81c      	bhi.n	8006428 <_malloc_r+0x504>
 80063ee:	0cab      	lsrs	r3, r5, #18
 80063f0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80063f4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80063f8:	00c3      	lsls	r3, r0, #3
 80063fa:	e5d8      	b.n	8005fae <_malloc_r+0x8a>
 80063fc:	2301      	movs	r3, #1
 80063fe:	f8cb 3004 	str.w	r3, [fp, #4]
 8006402:	e79b      	b.n	800633c <_malloc_r+0x418>
 8006404:	2101      	movs	r1, #1
 8006406:	f04f 0800 	mov.w	r8, #0
 800640a:	e6ba      	b.n	8006182 <_malloc_r+0x25e>
 800640c:	4a16      	ldr	r2, [pc, #88]	; (8006468 <_malloc_r+0x544>)
 800640e:	6813      	ldr	r3, [r2, #0]
 8006410:	4443      	add	r3, r8
 8006412:	6013      	str	r3, [r2, #0]
 8006414:	e68e      	b.n	8006134 <_malloc_r+0x210>
 8006416:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800641a:	d814      	bhi.n	8006446 <_malloc_r+0x522>
 800641c:	0bda      	lsrs	r2, r3, #15
 800641e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006422:	00c9      	lsls	r1, r1, #3
 8006424:	3277      	adds	r2, #119	; 0x77
 8006426:	e75e      	b.n	80062e6 <_malloc_r+0x3c2>
 8006428:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800642c:	207f      	movs	r0, #127	; 0x7f
 800642e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006432:	e5bc      	b.n	8005fae <_malloc_r+0x8a>
 8006434:	f104 0108 	add.w	r1, r4, #8
 8006438:	4630      	mov	r0, r6
 800643a:	9201      	str	r2, [sp, #4]
 800643c:	f7ff fa48 	bl	80058d0 <_free_r>
 8006440:	9a01      	ldr	r2, [sp, #4]
 8006442:	6813      	ldr	r3, [r2, #0]
 8006444:	e6bc      	b.n	80061c0 <_malloc_r+0x29c>
 8006446:	f240 5154 	movw	r1, #1364	; 0x554
 800644a:	428a      	cmp	r2, r1
 800644c:	d805      	bhi.n	800645a <_malloc_r+0x536>
 800644e:	0c9a      	lsrs	r2, r3, #18
 8006450:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006454:	00c9      	lsls	r1, r1, #3
 8006456:	327c      	adds	r2, #124	; 0x7c
 8006458:	e745      	b.n	80062e6 <_malloc_r+0x3c2>
 800645a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800645e:	227e      	movs	r2, #126	; 0x7e
 8006460:	e741      	b.n	80062e6 <_malloc_r+0x3c2>
 8006462:	687b      	ldr	r3, [r7, #4]
 8006464:	e785      	b.n	8006372 <_malloc_r+0x44e>
 8006466:	bf00      	nop
 8006468:	20000abc 	.word	0x20000abc

0800646c <memmove>:
 800646c:	4288      	cmp	r0, r1
 800646e:	b4f0      	push	{r4, r5, r6, r7}
 8006470:	d90d      	bls.n	800648e <memmove+0x22>
 8006472:	188b      	adds	r3, r1, r2
 8006474:	4283      	cmp	r3, r0
 8006476:	d90a      	bls.n	800648e <memmove+0x22>
 8006478:	1884      	adds	r4, r0, r2
 800647a:	b132      	cbz	r2, 800648a <memmove+0x1e>
 800647c:	4622      	mov	r2, r4
 800647e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006482:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006486:	4299      	cmp	r1, r3
 8006488:	d1f9      	bne.n	800647e <memmove+0x12>
 800648a:	bcf0      	pop	{r4, r5, r6, r7}
 800648c:	4770      	bx	lr
 800648e:	2a0f      	cmp	r2, #15
 8006490:	d949      	bls.n	8006526 <memmove+0xba>
 8006492:	ea40 0301 	orr.w	r3, r0, r1
 8006496:	079b      	lsls	r3, r3, #30
 8006498:	d147      	bne.n	800652a <memmove+0xbe>
 800649a:	f1a2 0310 	sub.w	r3, r2, #16
 800649e:	091b      	lsrs	r3, r3, #4
 80064a0:	f101 0720 	add.w	r7, r1, #32
 80064a4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80064a8:	f101 0410 	add.w	r4, r1, #16
 80064ac:	f100 0510 	add.w	r5, r0, #16
 80064b0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80064b4:	f845 6c10 	str.w	r6, [r5, #-16]
 80064b8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80064bc:	f845 6c0c 	str.w	r6, [r5, #-12]
 80064c0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80064c4:	f845 6c08 	str.w	r6, [r5, #-8]
 80064c8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80064cc:	f845 6c04 	str.w	r6, [r5, #-4]
 80064d0:	3410      	adds	r4, #16
 80064d2:	42bc      	cmp	r4, r7
 80064d4:	f105 0510 	add.w	r5, r5, #16
 80064d8:	d1ea      	bne.n	80064b0 <memmove+0x44>
 80064da:	3301      	adds	r3, #1
 80064dc:	f002 050f 	and.w	r5, r2, #15
 80064e0:	011b      	lsls	r3, r3, #4
 80064e2:	2d03      	cmp	r5, #3
 80064e4:	4419      	add	r1, r3
 80064e6:	4403      	add	r3, r0
 80064e8:	d921      	bls.n	800652e <memmove+0xc2>
 80064ea:	1f1f      	subs	r7, r3, #4
 80064ec:	460e      	mov	r6, r1
 80064ee:	462c      	mov	r4, r5
 80064f0:	3c04      	subs	r4, #4
 80064f2:	f856 cb04 	ldr.w	ip, [r6], #4
 80064f6:	f847 cf04 	str.w	ip, [r7, #4]!
 80064fa:	2c03      	cmp	r4, #3
 80064fc:	d8f8      	bhi.n	80064f0 <memmove+0x84>
 80064fe:	1f2c      	subs	r4, r5, #4
 8006500:	f024 0403 	bic.w	r4, r4, #3
 8006504:	3404      	adds	r4, #4
 8006506:	4423      	add	r3, r4
 8006508:	4421      	add	r1, r4
 800650a:	f002 0203 	and.w	r2, r2, #3
 800650e:	2a00      	cmp	r2, #0
 8006510:	d0bb      	beq.n	800648a <memmove+0x1e>
 8006512:	3b01      	subs	r3, #1
 8006514:	440a      	add	r2, r1
 8006516:	f811 4b01 	ldrb.w	r4, [r1], #1
 800651a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800651e:	4291      	cmp	r1, r2
 8006520:	d1f9      	bne.n	8006516 <memmove+0xaa>
 8006522:	bcf0      	pop	{r4, r5, r6, r7}
 8006524:	4770      	bx	lr
 8006526:	4603      	mov	r3, r0
 8006528:	e7f1      	b.n	800650e <memmove+0xa2>
 800652a:	4603      	mov	r3, r0
 800652c:	e7f1      	b.n	8006512 <memmove+0xa6>
 800652e:	462a      	mov	r2, r5
 8006530:	e7ed      	b.n	800650e <memmove+0xa2>
 8006532:	bf00      	nop

08006534 <__malloc_lock>:
 8006534:	4801      	ldr	r0, [pc, #4]	; (800653c <__malloc_lock+0x8>)
 8006536:	f7ff bc79 	b.w	8005e2c <__retarget_lock_acquire_recursive>
 800653a:	bf00      	nop
 800653c:	20000b48 	.word	0x20000b48

08006540 <__malloc_unlock>:
 8006540:	4801      	ldr	r0, [pc, #4]	; (8006548 <__malloc_unlock+0x8>)
 8006542:	f7ff bc75 	b.w	8005e30 <__retarget_lock_release_recursive>
 8006546:	bf00      	nop
 8006548:	20000b48 	.word	0x20000b48

0800654c <_Balloc>:
 800654c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800654e:	b570      	push	{r4, r5, r6, lr}
 8006550:	4605      	mov	r5, r0
 8006552:	460c      	mov	r4, r1
 8006554:	b14b      	cbz	r3, 800656a <_Balloc+0x1e>
 8006556:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800655a:	b180      	cbz	r0, 800657e <_Balloc+0x32>
 800655c:	6802      	ldr	r2, [r0, #0]
 800655e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006562:	2300      	movs	r3, #0
 8006564:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006568:	bd70      	pop	{r4, r5, r6, pc}
 800656a:	2221      	movs	r2, #33	; 0x21
 800656c:	2104      	movs	r1, #4
 800656e:	f000 fe1d 	bl	80071ac <_calloc_r>
 8006572:	4603      	mov	r3, r0
 8006574:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006576:	2800      	cmp	r0, #0
 8006578:	d1ed      	bne.n	8006556 <_Balloc+0xa>
 800657a:	2000      	movs	r0, #0
 800657c:	bd70      	pop	{r4, r5, r6, pc}
 800657e:	2101      	movs	r1, #1
 8006580:	fa01 f604 	lsl.w	r6, r1, r4
 8006584:	1d72      	adds	r2, r6, #5
 8006586:	4628      	mov	r0, r5
 8006588:	0092      	lsls	r2, r2, #2
 800658a:	f000 fe0f 	bl	80071ac <_calloc_r>
 800658e:	2800      	cmp	r0, #0
 8006590:	d0f3      	beq.n	800657a <_Balloc+0x2e>
 8006592:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006596:	e7e4      	b.n	8006562 <_Balloc+0x16>

08006598 <_Bfree>:
 8006598:	b131      	cbz	r1, 80065a8 <_Bfree+0x10>
 800659a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800659c:	684a      	ldr	r2, [r1, #4]
 800659e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80065a2:	6008      	str	r0, [r1, #0]
 80065a4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80065a8:	4770      	bx	lr
 80065aa:	bf00      	nop

080065ac <__multadd>:
 80065ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80065ae:	690c      	ldr	r4, [r1, #16]
 80065b0:	b083      	sub	sp, #12
 80065b2:	460d      	mov	r5, r1
 80065b4:	4606      	mov	r6, r0
 80065b6:	f101 0c14 	add.w	ip, r1, #20
 80065ba:	2700      	movs	r7, #0
 80065bc:	f8dc 0000 	ldr.w	r0, [ip]
 80065c0:	b281      	uxth	r1, r0
 80065c2:	fb02 3301 	mla	r3, r2, r1, r3
 80065c6:	0c01      	lsrs	r1, r0, #16
 80065c8:	0c18      	lsrs	r0, r3, #16
 80065ca:	fb02 0101 	mla	r1, r2, r1, r0
 80065ce:	b29b      	uxth	r3, r3
 80065d0:	3701      	adds	r7, #1
 80065d2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80065d6:	42bc      	cmp	r4, r7
 80065d8:	f84c 3b04 	str.w	r3, [ip], #4
 80065dc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80065e0:	dcec      	bgt.n	80065bc <__multadd+0x10>
 80065e2:	b13b      	cbz	r3, 80065f4 <__multadd+0x48>
 80065e4:	68aa      	ldr	r2, [r5, #8]
 80065e6:	42a2      	cmp	r2, r4
 80065e8:	dd07      	ble.n	80065fa <__multadd+0x4e>
 80065ea:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80065ee:	3401      	adds	r4, #1
 80065f0:	6153      	str	r3, [r2, #20]
 80065f2:	612c      	str	r4, [r5, #16]
 80065f4:	4628      	mov	r0, r5
 80065f6:	b003      	add	sp, #12
 80065f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80065fa:	6869      	ldr	r1, [r5, #4]
 80065fc:	9301      	str	r3, [sp, #4]
 80065fe:	3101      	adds	r1, #1
 8006600:	4630      	mov	r0, r6
 8006602:	f7ff ffa3 	bl	800654c <_Balloc>
 8006606:	692a      	ldr	r2, [r5, #16]
 8006608:	3202      	adds	r2, #2
 800660a:	f105 010c 	add.w	r1, r5, #12
 800660e:	4607      	mov	r7, r0
 8006610:	0092      	lsls	r2, r2, #2
 8006612:	300c      	adds	r0, #12
 8006614:	f7f9 ff74 	bl	8000500 <memcpy>
 8006618:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800661a:	6869      	ldr	r1, [r5, #4]
 800661c:	9b01      	ldr	r3, [sp, #4]
 800661e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006622:	6028      	str	r0, [r5, #0]
 8006624:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006628:	463d      	mov	r5, r7
 800662a:	e7de      	b.n	80065ea <__multadd+0x3e>

0800662c <__hi0bits>:
 800662c:	0c02      	lsrs	r2, r0, #16
 800662e:	0412      	lsls	r2, r2, #16
 8006630:	4603      	mov	r3, r0
 8006632:	b9c2      	cbnz	r2, 8006666 <__hi0bits+0x3a>
 8006634:	0403      	lsls	r3, r0, #16
 8006636:	2010      	movs	r0, #16
 8006638:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800663c:	bf04      	itt	eq
 800663e:	021b      	lsleq	r3, r3, #8
 8006640:	3008      	addeq	r0, #8
 8006642:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006646:	bf04      	itt	eq
 8006648:	011b      	lsleq	r3, r3, #4
 800664a:	3004      	addeq	r0, #4
 800664c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006650:	bf04      	itt	eq
 8006652:	009b      	lsleq	r3, r3, #2
 8006654:	3002      	addeq	r0, #2
 8006656:	2b00      	cmp	r3, #0
 8006658:	db04      	blt.n	8006664 <__hi0bits+0x38>
 800665a:	005b      	lsls	r3, r3, #1
 800665c:	d501      	bpl.n	8006662 <__hi0bits+0x36>
 800665e:	3001      	adds	r0, #1
 8006660:	4770      	bx	lr
 8006662:	2020      	movs	r0, #32
 8006664:	4770      	bx	lr
 8006666:	2000      	movs	r0, #0
 8006668:	e7e6      	b.n	8006638 <__hi0bits+0xc>
 800666a:	bf00      	nop

0800666c <__lo0bits>:
 800666c:	6803      	ldr	r3, [r0, #0]
 800666e:	f013 0207 	ands.w	r2, r3, #7
 8006672:	4601      	mov	r1, r0
 8006674:	d007      	beq.n	8006686 <__lo0bits+0x1a>
 8006676:	07da      	lsls	r2, r3, #31
 8006678:	d41f      	bmi.n	80066ba <__lo0bits+0x4e>
 800667a:	0798      	lsls	r0, r3, #30
 800667c:	d51f      	bpl.n	80066be <__lo0bits+0x52>
 800667e:	085b      	lsrs	r3, r3, #1
 8006680:	600b      	str	r3, [r1, #0]
 8006682:	2001      	movs	r0, #1
 8006684:	4770      	bx	lr
 8006686:	b298      	uxth	r0, r3
 8006688:	b1a0      	cbz	r0, 80066b4 <__lo0bits+0x48>
 800668a:	4610      	mov	r0, r2
 800668c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006690:	bf04      	itt	eq
 8006692:	0a1b      	lsreq	r3, r3, #8
 8006694:	3008      	addeq	r0, #8
 8006696:	071a      	lsls	r2, r3, #28
 8006698:	bf04      	itt	eq
 800669a:	091b      	lsreq	r3, r3, #4
 800669c:	3004      	addeq	r0, #4
 800669e:	079a      	lsls	r2, r3, #30
 80066a0:	bf04      	itt	eq
 80066a2:	089b      	lsreq	r3, r3, #2
 80066a4:	3002      	addeq	r0, #2
 80066a6:	07da      	lsls	r2, r3, #31
 80066a8:	d402      	bmi.n	80066b0 <__lo0bits+0x44>
 80066aa:	085b      	lsrs	r3, r3, #1
 80066ac:	d00b      	beq.n	80066c6 <__lo0bits+0x5a>
 80066ae:	3001      	adds	r0, #1
 80066b0:	600b      	str	r3, [r1, #0]
 80066b2:	4770      	bx	lr
 80066b4:	0c1b      	lsrs	r3, r3, #16
 80066b6:	2010      	movs	r0, #16
 80066b8:	e7e8      	b.n	800668c <__lo0bits+0x20>
 80066ba:	2000      	movs	r0, #0
 80066bc:	4770      	bx	lr
 80066be:	089b      	lsrs	r3, r3, #2
 80066c0:	600b      	str	r3, [r1, #0]
 80066c2:	2002      	movs	r0, #2
 80066c4:	4770      	bx	lr
 80066c6:	2020      	movs	r0, #32
 80066c8:	4770      	bx	lr
 80066ca:	bf00      	nop

080066cc <__i2b>:
 80066cc:	b510      	push	{r4, lr}
 80066ce:	460c      	mov	r4, r1
 80066d0:	2101      	movs	r1, #1
 80066d2:	f7ff ff3b 	bl	800654c <_Balloc>
 80066d6:	2201      	movs	r2, #1
 80066d8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80066dc:	bd10      	pop	{r4, pc}
 80066de:	bf00      	nop

080066e0 <__multiply>:
 80066e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066e4:	690e      	ldr	r6, [r1, #16]
 80066e6:	6914      	ldr	r4, [r2, #16]
 80066e8:	42a6      	cmp	r6, r4
 80066ea:	b083      	sub	sp, #12
 80066ec:	460f      	mov	r7, r1
 80066ee:	4615      	mov	r5, r2
 80066f0:	da04      	bge.n	80066fc <__multiply+0x1c>
 80066f2:	4632      	mov	r2, r6
 80066f4:	462f      	mov	r7, r5
 80066f6:	4626      	mov	r6, r4
 80066f8:	460d      	mov	r5, r1
 80066fa:	4614      	mov	r4, r2
 80066fc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006700:	eb06 0804 	add.w	r8, r6, r4
 8006704:	4543      	cmp	r3, r8
 8006706:	bfb8      	it	lt
 8006708:	3101      	addlt	r1, #1
 800670a:	f7ff ff1f 	bl	800654c <_Balloc>
 800670e:	f100 0914 	add.w	r9, r0, #20
 8006712:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006716:	45f1      	cmp	r9, lr
 8006718:	9000      	str	r0, [sp, #0]
 800671a:	d205      	bcs.n	8006728 <__multiply+0x48>
 800671c:	464b      	mov	r3, r9
 800671e:	2200      	movs	r2, #0
 8006720:	f843 2b04 	str.w	r2, [r3], #4
 8006724:	459e      	cmp	lr, r3
 8006726:	d8fb      	bhi.n	8006720 <__multiply+0x40>
 8006728:	f105 0a14 	add.w	sl, r5, #20
 800672c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006730:	f107 0314 	add.w	r3, r7, #20
 8006734:	45a2      	cmp	sl, r4
 8006736:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800673a:	d261      	bcs.n	8006800 <__multiply+0x120>
 800673c:	1b64      	subs	r4, r4, r5
 800673e:	3c15      	subs	r4, #21
 8006740:	f024 0403 	bic.w	r4, r4, #3
 8006744:	f8cd e004 	str.w	lr, [sp, #4]
 8006748:	44a2      	add	sl, r4
 800674a:	f105 0210 	add.w	r2, r5, #16
 800674e:	469e      	mov	lr, r3
 8006750:	e005      	b.n	800675e <__multiply+0x7e>
 8006752:	0c2d      	lsrs	r5, r5, #16
 8006754:	d12b      	bne.n	80067ae <__multiply+0xce>
 8006756:	4592      	cmp	sl, r2
 8006758:	f109 0904 	add.w	r9, r9, #4
 800675c:	d04e      	beq.n	80067fc <__multiply+0x11c>
 800675e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006762:	fa1f fb85 	uxth.w	fp, r5
 8006766:	f1bb 0f00 	cmp.w	fp, #0
 800676a:	d0f2      	beq.n	8006752 <__multiply+0x72>
 800676c:	4677      	mov	r7, lr
 800676e:	464e      	mov	r6, r9
 8006770:	2000      	movs	r0, #0
 8006772:	e000      	b.n	8006776 <__multiply+0x96>
 8006774:	4626      	mov	r6, r4
 8006776:	f857 1b04 	ldr.w	r1, [r7], #4
 800677a:	6834      	ldr	r4, [r6, #0]
 800677c:	b28b      	uxth	r3, r1
 800677e:	b2a5      	uxth	r5, r4
 8006780:	0c09      	lsrs	r1, r1, #16
 8006782:	0c24      	lsrs	r4, r4, #16
 8006784:	fb0b 5303 	mla	r3, fp, r3, r5
 8006788:	4403      	add	r3, r0
 800678a:	fb0b 4001 	mla	r0, fp, r1, r4
 800678e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006792:	4634      	mov	r4, r6
 8006794:	b29b      	uxth	r3, r3
 8006796:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800679a:	45bc      	cmp	ip, r7
 800679c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80067a0:	f844 3b04 	str.w	r3, [r4], #4
 80067a4:	d8e6      	bhi.n	8006774 <__multiply+0x94>
 80067a6:	6070      	str	r0, [r6, #4]
 80067a8:	6815      	ldr	r5, [r2, #0]
 80067aa:	0c2d      	lsrs	r5, r5, #16
 80067ac:	d0d3      	beq.n	8006756 <__multiply+0x76>
 80067ae:	f8d9 3000 	ldr.w	r3, [r9]
 80067b2:	4676      	mov	r6, lr
 80067b4:	4618      	mov	r0, r3
 80067b6:	46cb      	mov	fp, r9
 80067b8:	2100      	movs	r1, #0
 80067ba:	e000      	b.n	80067be <__multiply+0xde>
 80067bc:	46a3      	mov	fp, r4
 80067be:	8834      	ldrh	r4, [r6, #0]
 80067c0:	0c00      	lsrs	r0, r0, #16
 80067c2:	fb05 0004 	mla	r0, r5, r4, r0
 80067c6:	4401      	add	r1, r0
 80067c8:	b29b      	uxth	r3, r3
 80067ca:	465c      	mov	r4, fp
 80067cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80067d0:	f844 3b04 	str.w	r3, [r4], #4
 80067d4:	f856 3b04 	ldr.w	r3, [r6], #4
 80067d8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80067dc:	0c1b      	lsrs	r3, r3, #16
 80067de:	b287      	uxth	r7, r0
 80067e0:	fb05 7303 	mla	r3, r5, r3, r7
 80067e4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80067e8:	45b4      	cmp	ip, r6
 80067ea:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80067ee:	d8e5      	bhi.n	80067bc <__multiply+0xdc>
 80067f0:	4592      	cmp	sl, r2
 80067f2:	f8cb 3004 	str.w	r3, [fp, #4]
 80067f6:	f109 0904 	add.w	r9, r9, #4
 80067fa:	d1b0      	bne.n	800675e <__multiply+0x7e>
 80067fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006800:	f1b8 0f00 	cmp.w	r8, #0
 8006804:	dd0b      	ble.n	800681e <__multiply+0x13e>
 8006806:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800680a:	f1ae 0e04 	sub.w	lr, lr, #4
 800680e:	b11b      	cbz	r3, 8006818 <__multiply+0x138>
 8006810:	e005      	b.n	800681e <__multiply+0x13e>
 8006812:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006816:	b913      	cbnz	r3, 800681e <__multiply+0x13e>
 8006818:	f1b8 0801 	subs.w	r8, r8, #1
 800681c:	d1f9      	bne.n	8006812 <__multiply+0x132>
 800681e:	9800      	ldr	r0, [sp, #0]
 8006820:	f8c0 8010 	str.w	r8, [r0, #16]
 8006824:	b003      	add	sp, #12
 8006826:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800682a:	bf00      	nop

0800682c <__pow5mult>:
 800682c:	f012 0303 	ands.w	r3, r2, #3
 8006830:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006834:	4614      	mov	r4, r2
 8006836:	4607      	mov	r7, r0
 8006838:	d12e      	bne.n	8006898 <__pow5mult+0x6c>
 800683a:	460d      	mov	r5, r1
 800683c:	10a4      	asrs	r4, r4, #2
 800683e:	d01c      	beq.n	800687a <__pow5mult+0x4e>
 8006840:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006842:	b396      	cbz	r6, 80068aa <__pow5mult+0x7e>
 8006844:	07e3      	lsls	r3, r4, #31
 8006846:	f04f 0800 	mov.w	r8, #0
 800684a:	d406      	bmi.n	800685a <__pow5mult+0x2e>
 800684c:	1064      	asrs	r4, r4, #1
 800684e:	d014      	beq.n	800687a <__pow5mult+0x4e>
 8006850:	6830      	ldr	r0, [r6, #0]
 8006852:	b1a8      	cbz	r0, 8006880 <__pow5mult+0x54>
 8006854:	4606      	mov	r6, r0
 8006856:	07e3      	lsls	r3, r4, #31
 8006858:	d5f8      	bpl.n	800684c <__pow5mult+0x20>
 800685a:	4632      	mov	r2, r6
 800685c:	4629      	mov	r1, r5
 800685e:	4638      	mov	r0, r7
 8006860:	f7ff ff3e 	bl	80066e0 <__multiply>
 8006864:	b1b5      	cbz	r5, 8006894 <__pow5mult+0x68>
 8006866:	686a      	ldr	r2, [r5, #4]
 8006868:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800686a:	1064      	asrs	r4, r4, #1
 800686c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006870:	6029      	str	r1, [r5, #0]
 8006872:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006876:	4605      	mov	r5, r0
 8006878:	d1ea      	bne.n	8006850 <__pow5mult+0x24>
 800687a:	4628      	mov	r0, r5
 800687c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006880:	4632      	mov	r2, r6
 8006882:	4631      	mov	r1, r6
 8006884:	4638      	mov	r0, r7
 8006886:	f7ff ff2b 	bl	80066e0 <__multiply>
 800688a:	6030      	str	r0, [r6, #0]
 800688c:	f8c0 8000 	str.w	r8, [r0]
 8006890:	4606      	mov	r6, r0
 8006892:	e7e0      	b.n	8006856 <__pow5mult+0x2a>
 8006894:	4605      	mov	r5, r0
 8006896:	e7d9      	b.n	800684c <__pow5mult+0x20>
 8006898:	3b01      	subs	r3, #1
 800689a:	4a0b      	ldr	r2, [pc, #44]	; (80068c8 <__pow5mult+0x9c>)
 800689c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80068a0:	2300      	movs	r3, #0
 80068a2:	f7ff fe83 	bl	80065ac <__multadd>
 80068a6:	4605      	mov	r5, r0
 80068a8:	e7c8      	b.n	800683c <__pow5mult+0x10>
 80068aa:	2101      	movs	r1, #1
 80068ac:	4638      	mov	r0, r7
 80068ae:	f7ff fe4d 	bl	800654c <_Balloc>
 80068b2:	f240 2371 	movw	r3, #625	; 0x271
 80068b6:	6143      	str	r3, [r0, #20]
 80068b8:	2201      	movs	r2, #1
 80068ba:	2300      	movs	r3, #0
 80068bc:	6102      	str	r2, [r0, #16]
 80068be:	4606      	mov	r6, r0
 80068c0:	64b8      	str	r0, [r7, #72]	; 0x48
 80068c2:	6003      	str	r3, [r0, #0]
 80068c4:	e7be      	b.n	8006844 <__pow5mult+0x18>
 80068c6:	bf00      	nop
 80068c8:	080078b8 	.word	0x080078b8

080068cc <__lshift>:
 80068cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80068d0:	4691      	mov	r9, r2
 80068d2:	690a      	ldr	r2, [r1, #16]
 80068d4:	460e      	mov	r6, r1
 80068d6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80068da:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80068de:	eb04 0802 	add.w	r8, r4, r2
 80068e2:	f108 0501 	add.w	r5, r8, #1
 80068e6:	429d      	cmp	r5, r3
 80068e8:	4607      	mov	r7, r0
 80068ea:	dd04      	ble.n	80068f6 <__lshift+0x2a>
 80068ec:	005b      	lsls	r3, r3, #1
 80068ee:	429d      	cmp	r5, r3
 80068f0:	f101 0101 	add.w	r1, r1, #1
 80068f4:	dcfa      	bgt.n	80068ec <__lshift+0x20>
 80068f6:	4638      	mov	r0, r7
 80068f8:	f7ff fe28 	bl	800654c <_Balloc>
 80068fc:	2c00      	cmp	r4, #0
 80068fe:	f100 0314 	add.w	r3, r0, #20
 8006902:	dd37      	ble.n	8006974 <__lshift+0xa8>
 8006904:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006908:	2200      	movs	r2, #0
 800690a:	f843 2b04 	str.w	r2, [r3], #4
 800690e:	428b      	cmp	r3, r1
 8006910:	d1fb      	bne.n	800690a <__lshift+0x3e>
 8006912:	6934      	ldr	r4, [r6, #16]
 8006914:	f106 0314 	add.w	r3, r6, #20
 8006918:	f019 091f 	ands.w	r9, r9, #31
 800691c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006920:	d020      	beq.n	8006964 <__lshift+0x98>
 8006922:	f1c9 0e20 	rsb	lr, r9, #32
 8006926:	2200      	movs	r2, #0
 8006928:	e000      	b.n	800692c <__lshift+0x60>
 800692a:	4651      	mov	r1, sl
 800692c:	681c      	ldr	r4, [r3, #0]
 800692e:	468a      	mov	sl, r1
 8006930:	fa04 f409 	lsl.w	r4, r4, r9
 8006934:	4314      	orrs	r4, r2
 8006936:	f84a 4b04 	str.w	r4, [sl], #4
 800693a:	f853 2b04 	ldr.w	r2, [r3], #4
 800693e:	4563      	cmp	r3, ip
 8006940:	fa22 f20e 	lsr.w	r2, r2, lr
 8006944:	d3f1      	bcc.n	800692a <__lshift+0x5e>
 8006946:	604a      	str	r2, [r1, #4]
 8006948:	b10a      	cbz	r2, 800694e <__lshift+0x82>
 800694a:	f108 0502 	add.w	r5, r8, #2
 800694e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006950:	6872      	ldr	r2, [r6, #4]
 8006952:	3d01      	subs	r5, #1
 8006954:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006958:	6105      	str	r5, [r0, #16]
 800695a:	6031      	str	r1, [r6, #0]
 800695c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006960:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006964:	3904      	subs	r1, #4
 8006966:	f853 2b04 	ldr.w	r2, [r3], #4
 800696a:	f841 2f04 	str.w	r2, [r1, #4]!
 800696e:	459c      	cmp	ip, r3
 8006970:	d8f9      	bhi.n	8006966 <__lshift+0x9a>
 8006972:	e7ec      	b.n	800694e <__lshift+0x82>
 8006974:	4619      	mov	r1, r3
 8006976:	e7cc      	b.n	8006912 <__lshift+0x46>

08006978 <__mcmp>:
 8006978:	b430      	push	{r4, r5}
 800697a:	690b      	ldr	r3, [r1, #16]
 800697c:	4605      	mov	r5, r0
 800697e:	6900      	ldr	r0, [r0, #16]
 8006980:	1ac0      	subs	r0, r0, r3
 8006982:	d10f      	bne.n	80069a4 <__mcmp+0x2c>
 8006984:	009b      	lsls	r3, r3, #2
 8006986:	3514      	adds	r5, #20
 8006988:	3114      	adds	r1, #20
 800698a:	4419      	add	r1, r3
 800698c:	442b      	add	r3, r5
 800698e:	e001      	b.n	8006994 <__mcmp+0x1c>
 8006990:	429d      	cmp	r5, r3
 8006992:	d207      	bcs.n	80069a4 <__mcmp+0x2c>
 8006994:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006998:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800699c:	4294      	cmp	r4, r2
 800699e:	d0f7      	beq.n	8006990 <__mcmp+0x18>
 80069a0:	d302      	bcc.n	80069a8 <__mcmp+0x30>
 80069a2:	2001      	movs	r0, #1
 80069a4:	bc30      	pop	{r4, r5}
 80069a6:	4770      	bx	lr
 80069a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80069ac:	e7fa      	b.n	80069a4 <__mcmp+0x2c>
 80069ae:	bf00      	nop

080069b0 <__mdiff>:
 80069b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069b4:	6913      	ldr	r3, [r2, #16]
 80069b6:	690d      	ldr	r5, [r1, #16]
 80069b8:	1aed      	subs	r5, r5, r3
 80069ba:	2d00      	cmp	r5, #0
 80069bc:	460e      	mov	r6, r1
 80069be:	4690      	mov	r8, r2
 80069c0:	f101 0414 	add.w	r4, r1, #20
 80069c4:	f102 0714 	add.w	r7, r2, #20
 80069c8:	d114      	bne.n	80069f4 <__mdiff+0x44>
 80069ca:	009b      	lsls	r3, r3, #2
 80069cc:	18e2      	adds	r2, r4, r3
 80069ce:	443b      	add	r3, r7
 80069d0:	e001      	b.n	80069d6 <__mdiff+0x26>
 80069d2:	42a2      	cmp	r2, r4
 80069d4:	d959      	bls.n	8006a8a <__mdiff+0xda>
 80069d6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80069da:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80069de:	458c      	cmp	ip, r1
 80069e0:	d0f7      	beq.n	80069d2 <__mdiff+0x22>
 80069e2:	d209      	bcs.n	80069f8 <__mdiff+0x48>
 80069e4:	4622      	mov	r2, r4
 80069e6:	4633      	mov	r3, r6
 80069e8:	463c      	mov	r4, r7
 80069ea:	4646      	mov	r6, r8
 80069ec:	4617      	mov	r7, r2
 80069ee:	4698      	mov	r8, r3
 80069f0:	2501      	movs	r5, #1
 80069f2:	e001      	b.n	80069f8 <__mdiff+0x48>
 80069f4:	dbf6      	blt.n	80069e4 <__mdiff+0x34>
 80069f6:	2500      	movs	r5, #0
 80069f8:	6871      	ldr	r1, [r6, #4]
 80069fa:	f7ff fda7 	bl	800654c <_Balloc>
 80069fe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006a02:	6936      	ldr	r6, [r6, #16]
 8006a04:	60c5      	str	r5, [r0, #12]
 8006a06:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006a0a:	46bc      	mov	ip, r7
 8006a0c:	f100 0514 	add.w	r5, r0, #20
 8006a10:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006a14:	2300      	movs	r3, #0
 8006a16:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006a1a:	f854 8b04 	ldr.w	r8, [r4], #4
 8006a1e:	b28a      	uxth	r2, r1
 8006a20:	fa13 f388 	uxtah	r3, r3, r8
 8006a24:	0c09      	lsrs	r1, r1, #16
 8006a26:	1a9a      	subs	r2, r3, r2
 8006a28:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006a2c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006a30:	b292      	uxth	r2, r2
 8006a32:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006a36:	45e6      	cmp	lr, ip
 8006a38:	f845 2b04 	str.w	r2, [r5], #4
 8006a3c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006a40:	d8e9      	bhi.n	8006a16 <__mdiff+0x66>
 8006a42:	42a7      	cmp	r7, r4
 8006a44:	d917      	bls.n	8006a76 <__mdiff+0xc6>
 8006a46:	46ae      	mov	lr, r5
 8006a48:	46a4      	mov	ip, r4
 8006a4a:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006a4e:	fa13 f382 	uxtah	r3, r3, r2
 8006a52:	1419      	asrs	r1, r3, #16
 8006a54:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006a58:	b29b      	uxth	r3, r3
 8006a5a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006a5e:	4567      	cmp	r7, ip
 8006a60:	f84e 2b04 	str.w	r2, [lr], #4
 8006a64:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006a68:	d8ef      	bhi.n	8006a4a <__mdiff+0x9a>
 8006a6a:	43e4      	mvns	r4, r4
 8006a6c:	4427      	add	r7, r4
 8006a6e:	f027 0703 	bic.w	r7, r7, #3
 8006a72:	3704      	adds	r7, #4
 8006a74:	443d      	add	r5, r7
 8006a76:	3d04      	subs	r5, #4
 8006a78:	b922      	cbnz	r2, 8006a84 <__mdiff+0xd4>
 8006a7a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006a7e:	3e01      	subs	r6, #1
 8006a80:	2b00      	cmp	r3, #0
 8006a82:	d0fa      	beq.n	8006a7a <__mdiff+0xca>
 8006a84:	6106      	str	r6, [r0, #16]
 8006a86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006a8a:	2100      	movs	r1, #0
 8006a8c:	f7ff fd5e 	bl	800654c <_Balloc>
 8006a90:	2201      	movs	r2, #1
 8006a92:	2300      	movs	r3, #0
 8006a94:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006a98:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006a9c <__d2b>:
 8006a9c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006aa0:	460f      	mov	r7, r1
 8006aa2:	b083      	sub	sp, #12
 8006aa4:	2101      	movs	r1, #1
 8006aa6:	ec55 4b10 	vmov	r4, r5, d0
 8006aaa:	4616      	mov	r6, r2
 8006aac:	f7ff fd4e 	bl	800654c <_Balloc>
 8006ab0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006ab4:	4681      	mov	r9, r0
 8006ab6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006aba:	f1b8 0f00 	cmp.w	r8, #0
 8006abe:	d001      	beq.n	8006ac4 <__d2b+0x28>
 8006ac0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006ac4:	2c00      	cmp	r4, #0
 8006ac6:	9301      	str	r3, [sp, #4]
 8006ac8:	d024      	beq.n	8006b14 <__d2b+0x78>
 8006aca:	a802      	add	r0, sp, #8
 8006acc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006ad0:	f7ff fdcc 	bl	800666c <__lo0bits>
 8006ad4:	2800      	cmp	r0, #0
 8006ad6:	d136      	bne.n	8006b46 <__d2b+0xaa>
 8006ad8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006adc:	f8c9 2014 	str.w	r2, [r9, #20]
 8006ae0:	2b00      	cmp	r3, #0
 8006ae2:	bf0c      	ite	eq
 8006ae4:	2101      	moveq	r1, #1
 8006ae6:	2102      	movne	r1, #2
 8006ae8:	f8c9 3018 	str.w	r3, [r9, #24]
 8006aec:	f8c9 1010 	str.w	r1, [r9, #16]
 8006af0:	f1b8 0f00 	cmp.w	r8, #0
 8006af4:	d11b      	bne.n	8006b2e <__d2b+0x92>
 8006af6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006afa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006afe:	6038      	str	r0, [r7, #0]
 8006b00:	6918      	ldr	r0, [r3, #16]
 8006b02:	f7ff fd93 	bl	800662c <__hi0bits>
 8006b06:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006b0a:	6030      	str	r0, [r6, #0]
 8006b0c:	4648      	mov	r0, r9
 8006b0e:	b003      	add	sp, #12
 8006b10:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b14:	a801      	add	r0, sp, #4
 8006b16:	f7ff fda9 	bl	800666c <__lo0bits>
 8006b1a:	9b01      	ldr	r3, [sp, #4]
 8006b1c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006b20:	2101      	movs	r1, #1
 8006b22:	3020      	adds	r0, #32
 8006b24:	f8c9 1010 	str.w	r1, [r9, #16]
 8006b28:	f1b8 0f00 	cmp.w	r8, #0
 8006b2c:	d0e3      	beq.n	8006af6 <__d2b+0x5a>
 8006b2e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006b32:	eb08 0300 	add.w	r3, r8, r0
 8006b36:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006b3a:	603b      	str	r3, [r7, #0]
 8006b3c:	6030      	str	r0, [r6, #0]
 8006b3e:	4648      	mov	r0, r9
 8006b40:	b003      	add	sp, #12
 8006b42:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006b46:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006b4a:	f1c0 0220 	rsb	r2, r0, #32
 8006b4e:	fa03 f202 	lsl.w	r2, r3, r2
 8006b52:	430a      	orrs	r2, r1
 8006b54:	40c3      	lsrs	r3, r0
 8006b56:	9301      	str	r3, [sp, #4]
 8006b58:	f8c9 2014 	str.w	r2, [r9, #20]
 8006b5c:	e7c0      	b.n	8006ae0 <__d2b+0x44>
 8006b5e:	bf00      	nop

08006b60 <_realloc_r>:
 8006b60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b64:	4692      	mov	sl, r2
 8006b66:	b083      	sub	sp, #12
 8006b68:	2900      	cmp	r1, #0
 8006b6a:	f000 80a1 	beq.w	8006cb0 <_realloc_r+0x150>
 8006b6e:	460d      	mov	r5, r1
 8006b70:	4680      	mov	r8, r0
 8006b72:	f10a 040b 	add.w	r4, sl, #11
 8006b76:	f7ff fcdd 	bl	8006534 <__malloc_lock>
 8006b7a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006b7e:	2c16      	cmp	r4, #22
 8006b80:	f022 0603 	bic.w	r6, r2, #3
 8006b84:	f1a5 0708 	sub.w	r7, r5, #8
 8006b88:	d83e      	bhi.n	8006c08 <_realloc_r+0xa8>
 8006b8a:	2410      	movs	r4, #16
 8006b8c:	4621      	mov	r1, r4
 8006b8e:	45a2      	cmp	sl, r4
 8006b90:	d83f      	bhi.n	8006c12 <_realloc_r+0xb2>
 8006b92:	428e      	cmp	r6, r1
 8006b94:	eb07 0906 	add.w	r9, r7, r6
 8006b98:	da74      	bge.n	8006c84 <_realloc_r+0x124>
 8006b9a:	4bc7      	ldr	r3, [pc, #796]	; (8006eb8 <_realloc_r+0x358>)
 8006b9c:	6898      	ldr	r0, [r3, #8]
 8006b9e:	4548      	cmp	r0, r9
 8006ba0:	f000 80aa 	beq.w	8006cf8 <_realloc_r+0x198>
 8006ba4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006ba8:	f020 0301 	bic.w	r3, r0, #1
 8006bac:	444b      	add	r3, r9
 8006bae:	685b      	ldr	r3, [r3, #4]
 8006bb0:	07db      	lsls	r3, r3, #31
 8006bb2:	f140 8083 	bpl.w	8006cbc <_realloc_r+0x15c>
 8006bb6:	07d2      	lsls	r2, r2, #31
 8006bb8:	d534      	bpl.n	8006c24 <_realloc_r+0xc4>
 8006bba:	4651      	mov	r1, sl
 8006bbc:	4640      	mov	r0, r8
 8006bbe:	f7ff f9b1 	bl	8005f24 <_malloc_r>
 8006bc2:	4682      	mov	sl, r0
 8006bc4:	b1e0      	cbz	r0, 8006c00 <_realloc_r+0xa0>
 8006bc6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006bca:	f023 0301 	bic.w	r3, r3, #1
 8006bce:	443b      	add	r3, r7
 8006bd0:	f1a0 0208 	sub.w	r2, r0, #8
 8006bd4:	4293      	cmp	r3, r2
 8006bd6:	f000 80f9 	beq.w	8006dcc <_realloc_r+0x26c>
 8006bda:	1f32      	subs	r2, r6, #4
 8006bdc:	2a24      	cmp	r2, #36	; 0x24
 8006bde:	f200 8107 	bhi.w	8006df0 <_realloc_r+0x290>
 8006be2:	2a13      	cmp	r2, #19
 8006be4:	6829      	ldr	r1, [r5, #0]
 8006be6:	f200 80e6 	bhi.w	8006db6 <_realloc_r+0x256>
 8006bea:	4603      	mov	r3, r0
 8006bec:	462a      	mov	r2, r5
 8006bee:	6019      	str	r1, [r3, #0]
 8006bf0:	6851      	ldr	r1, [r2, #4]
 8006bf2:	6059      	str	r1, [r3, #4]
 8006bf4:	6892      	ldr	r2, [r2, #8]
 8006bf6:	609a      	str	r2, [r3, #8]
 8006bf8:	4629      	mov	r1, r5
 8006bfa:	4640      	mov	r0, r8
 8006bfc:	f7fe fe68 	bl	80058d0 <_free_r>
 8006c00:	4640      	mov	r0, r8
 8006c02:	f7ff fc9d 	bl	8006540 <__malloc_unlock>
 8006c06:	e04f      	b.n	8006ca8 <_realloc_r+0x148>
 8006c08:	f024 0407 	bic.w	r4, r4, #7
 8006c0c:	2c00      	cmp	r4, #0
 8006c0e:	4621      	mov	r1, r4
 8006c10:	dabd      	bge.n	8006b8e <_realloc_r+0x2e>
 8006c12:	f04f 0a00 	mov.w	sl, #0
 8006c16:	230c      	movs	r3, #12
 8006c18:	4650      	mov	r0, sl
 8006c1a:	f8c8 3000 	str.w	r3, [r8]
 8006c1e:	b003      	add	sp, #12
 8006c20:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c24:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c28:	eba7 0b03 	sub.w	fp, r7, r3
 8006c2c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c30:	f022 0203 	bic.w	r2, r2, #3
 8006c34:	18b3      	adds	r3, r6, r2
 8006c36:	428b      	cmp	r3, r1
 8006c38:	dbbf      	blt.n	8006bba <_realloc_r+0x5a>
 8006c3a:	46da      	mov	sl, fp
 8006c3c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006c40:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006c44:	1f32      	subs	r2, r6, #4
 8006c46:	2a24      	cmp	r2, #36	; 0x24
 8006c48:	60c1      	str	r1, [r0, #12]
 8006c4a:	eb0b 0903 	add.w	r9, fp, r3
 8006c4e:	6088      	str	r0, [r1, #8]
 8006c50:	f200 80c6 	bhi.w	8006de0 <_realloc_r+0x280>
 8006c54:	2a13      	cmp	r2, #19
 8006c56:	6829      	ldr	r1, [r5, #0]
 8006c58:	f240 80c0 	bls.w	8006ddc <_realloc_r+0x27c>
 8006c5c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006c60:	6869      	ldr	r1, [r5, #4]
 8006c62:	f8cb 100c 	str.w	r1, [fp, #12]
 8006c66:	2a1b      	cmp	r2, #27
 8006c68:	68a9      	ldr	r1, [r5, #8]
 8006c6a:	f200 80d8 	bhi.w	8006e1e <_realloc_r+0x2be>
 8006c6e:	f10b 0210 	add.w	r2, fp, #16
 8006c72:	3508      	adds	r5, #8
 8006c74:	6011      	str	r1, [r2, #0]
 8006c76:	6869      	ldr	r1, [r5, #4]
 8006c78:	6051      	str	r1, [r2, #4]
 8006c7a:	68a9      	ldr	r1, [r5, #8]
 8006c7c:	6091      	str	r1, [r2, #8]
 8006c7e:	461e      	mov	r6, r3
 8006c80:	465f      	mov	r7, fp
 8006c82:	4655      	mov	r5, sl
 8006c84:	687b      	ldr	r3, [r7, #4]
 8006c86:	1b32      	subs	r2, r6, r4
 8006c88:	2a0f      	cmp	r2, #15
 8006c8a:	f003 0301 	and.w	r3, r3, #1
 8006c8e:	d822      	bhi.n	8006cd6 <_realloc_r+0x176>
 8006c90:	4333      	orrs	r3, r6
 8006c92:	607b      	str	r3, [r7, #4]
 8006c94:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006c98:	f043 0301 	orr.w	r3, r3, #1
 8006c9c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ca0:	4640      	mov	r0, r8
 8006ca2:	f7ff fc4d 	bl	8006540 <__malloc_unlock>
 8006ca6:	46aa      	mov	sl, r5
 8006ca8:	4650      	mov	r0, sl
 8006caa:	b003      	add	sp, #12
 8006cac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006cb0:	4611      	mov	r1, r2
 8006cb2:	b003      	add	sp, #12
 8006cb4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006cb8:	f7ff b934 	b.w	8005f24 <_malloc_r>
 8006cbc:	f020 0003 	bic.w	r0, r0, #3
 8006cc0:	1833      	adds	r3, r6, r0
 8006cc2:	428b      	cmp	r3, r1
 8006cc4:	db61      	blt.n	8006d8a <_realloc_r+0x22a>
 8006cc6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006cca:	461e      	mov	r6, r3
 8006ccc:	60ca      	str	r2, [r1, #12]
 8006cce:	eb07 0903 	add.w	r9, r7, r3
 8006cd2:	6091      	str	r1, [r2, #8]
 8006cd4:	e7d6      	b.n	8006c84 <_realloc_r+0x124>
 8006cd6:	1939      	adds	r1, r7, r4
 8006cd8:	4323      	orrs	r3, r4
 8006cda:	f042 0201 	orr.w	r2, r2, #1
 8006cde:	607b      	str	r3, [r7, #4]
 8006ce0:	604a      	str	r2, [r1, #4]
 8006ce2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006ce6:	f043 0301 	orr.w	r3, r3, #1
 8006cea:	3108      	adds	r1, #8
 8006cec:	f8c9 3004 	str.w	r3, [r9, #4]
 8006cf0:	4640      	mov	r0, r8
 8006cf2:	f7fe fded 	bl	80058d0 <_free_r>
 8006cf6:	e7d3      	b.n	8006ca0 <_realloc_r+0x140>
 8006cf8:	6840      	ldr	r0, [r0, #4]
 8006cfa:	f020 0903 	bic.w	r9, r0, #3
 8006cfe:	44b1      	add	r9, r6
 8006d00:	f104 0010 	add.w	r0, r4, #16
 8006d04:	4581      	cmp	r9, r0
 8006d06:	da77      	bge.n	8006df8 <_realloc_r+0x298>
 8006d08:	07d2      	lsls	r2, r2, #31
 8006d0a:	f53f af56 	bmi.w	8006bba <_realloc_r+0x5a>
 8006d0e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006d12:	eba7 0b02 	sub.w	fp, r7, r2
 8006d16:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d1a:	f022 0203 	bic.w	r2, r2, #3
 8006d1e:	4491      	add	r9, r2
 8006d20:	4548      	cmp	r0, r9
 8006d22:	dc87      	bgt.n	8006c34 <_realloc_r+0xd4>
 8006d24:	46da      	mov	sl, fp
 8006d26:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006d2a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006d2e:	1f32      	subs	r2, r6, #4
 8006d30:	2a24      	cmp	r2, #36	; 0x24
 8006d32:	60c1      	str	r1, [r0, #12]
 8006d34:	6088      	str	r0, [r1, #8]
 8006d36:	f200 80a1 	bhi.w	8006e7c <_realloc_r+0x31c>
 8006d3a:	2a13      	cmp	r2, #19
 8006d3c:	6829      	ldr	r1, [r5, #0]
 8006d3e:	f240 809b 	bls.w	8006e78 <_realloc_r+0x318>
 8006d42:	f8cb 1008 	str.w	r1, [fp, #8]
 8006d46:	6869      	ldr	r1, [r5, #4]
 8006d48:	f8cb 100c 	str.w	r1, [fp, #12]
 8006d4c:	2a1b      	cmp	r2, #27
 8006d4e:	68a9      	ldr	r1, [r5, #8]
 8006d50:	f200 809b 	bhi.w	8006e8a <_realloc_r+0x32a>
 8006d54:	f10b 0210 	add.w	r2, fp, #16
 8006d58:	3508      	adds	r5, #8
 8006d5a:	6011      	str	r1, [r2, #0]
 8006d5c:	6869      	ldr	r1, [r5, #4]
 8006d5e:	6051      	str	r1, [r2, #4]
 8006d60:	68a9      	ldr	r1, [r5, #8]
 8006d62:	6091      	str	r1, [r2, #8]
 8006d64:	eb0b 0104 	add.w	r1, fp, r4
 8006d68:	eba9 0204 	sub.w	r2, r9, r4
 8006d6c:	f042 0201 	orr.w	r2, r2, #1
 8006d70:	6099      	str	r1, [r3, #8]
 8006d72:	604a      	str	r2, [r1, #4]
 8006d74:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006d78:	f003 0301 	and.w	r3, r3, #1
 8006d7c:	431c      	orrs	r4, r3
 8006d7e:	4640      	mov	r0, r8
 8006d80:	f8cb 4004 	str.w	r4, [fp, #4]
 8006d84:	f7ff fbdc 	bl	8006540 <__malloc_unlock>
 8006d88:	e78e      	b.n	8006ca8 <_realloc_r+0x148>
 8006d8a:	07d3      	lsls	r3, r2, #31
 8006d8c:	f53f af15 	bmi.w	8006bba <_realloc_r+0x5a>
 8006d90:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006d94:	eba7 0b03 	sub.w	fp, r7, r3
 8006d98:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d9c:	f022 0203 	bic.w	r2, r2, #3
 8006da0:	4410      	add	r0, r2
 8006da2:	1983      	adds	r3, r0, r6
 8006da4:	428b      	cmp	r3, r1
 8006da6:	f6ff af45 	blt.w	8006c34 <_realloc_r+0xd4>
 8006daa:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006dae:	46da      	mov	sl, fp
 8006db0:	60ca      	str	r2, [r1, #12]
 8006db2:	6091      	str	r1, [r2, #8]
 8006db4:	e742      	b.n	8006c3c <_realloc_r+0xdc>
 8006db6:	6001      	str	r1, [r0, #0]
 8006db8:	686b      	ldr	r3, [r5, #4]
 8006dba:	6043      	str	r3, [r0, #4]
 8006dbc:	2a1b      	cmp	r2, #27
 8006dbe:	d83a      	bhi.n	8006e36 <_realloc_r+0x2d6>
 8006dc0:	f105 0208 	add.w	r2, r5, #8
 8006dc4:	f100 0308 	add.w	r3, r0, #8
 8006dc8:	68a9      	ldr	r1, [r5, #8]
 8006dca:	e710      	b.n	8006bee <_realloc_r+0x8e>
 8006dcc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006dd0:	f023 0303 	bic.w	r3, r3, #3
 8006dd4:	441e      	add	r6, r3
 8006dd6:	eb07 0906 	add.w	r9, r7, r6
 8006dda:	e753      	b.n	8006c84 <_realloc_r+0x124>
 8006ddc:	4652      	mov	r2, sl
 8006dde:	e749      	b.n	8006c74 <_realloc_r+0x114>
 8006de0:	4629      	mov	r1, r5
 8006de2:	4650      	mov	r0, sl
 8006de4:	461e      	mov	r6, r3
 8006de6:	465f      	mov	r7, fp
 8006de8:	f7ff fb40 	bl	800646c <memmove>
 8006dec:	4655      	mov	r5, sl
 8006dee:	e749      	b.n	8006c84 <_realloc_r+0x124>
 8006df0:	4629      	mov	r1, r5
 8006df2:	f7ff fb3b 	bl	800646c <memmove>
 8006df6:	e6ff      	b.n	8006bf8 <_realloc_r+0x98>
 8006df8:	4427      	add	r7, r4
 8006dfa:	eba9 0904 	sub.w	r9, r9, r4
 8006dfe:	f049 0201 	orr.w	r2, r9, #1
 8006e02:	609f      	str	r7, [r3, #8]
 8006e04:	607a      	str	r2, [r7, #4]
 8006e06:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006e0a:	f003 0301 	and.w	r3, r3, #1
 8006e0e:	431c      	orrs	r4, r3
 8006e10:	4640      	mov	r0, r8
 8006e12:	f845 4c04 	str.w	r4, [r5, #-4]
 8006e16:	f7ff fb93 	bl	8006540 <__malloc_unlock>
 8006e1a:	46aa      	mov	sl, r5
 8006e1c:	e744      	b.n	8006ca8 <_realloc_r+0x148>
 8006e1e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e22:	68e9      	ldr	r1, [r5, #12]
 8006e24:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e28:	2a24      	cmp	r2, #36	; 0x24
 8006e2a:	d010      	beq.n	8006e4e <_realloc_r+0x2ee>
 8006e2c:	6929      	ldr	r1, [r5, #16]
 8006e2e:	f10b 0218 	add.w	r2, fp, #24
 8006e32:	3510      	adds	r5, #16
 8006e34:	e71e      	b.n	8006c74 <_realloc_r+0x114>
 8006e36:	68ab      	ldr	r3, [r5, #8]
 8006e38:	6083      	str	r3, [r0, #8]
 8006e3a:	68eb      	ldr	r3, [r5, #12]
 8006e3c:	60c3      	str	r3, [r0, #12]
 8006e3e:	2a24      	cmp	r2, #36	; 0x24
 8006e40:	d010      	beq.n	8006e64 <_realloc_r+0x304>
 8006e42:	f105 0210 	add.w	r2, r5, #16
 8006e46:	f100 0310 	add.w	r3, r0, #16
 8006e4a:	6929      	ldr	r1, [r5, #16]
 8006e4c:	e6cf      	b.n	8006bee <_realloc_r+0x8e>
 8006e4e:	692a      	ldr	r2, [r5, #16]
 8006e50:	f8cb 2018 	str.w	r2, [fp, #24]
 8006e54:	696a      	ldr	r2, [r5, #20]
 8006e56:	f8cb 201c 	str.w	r2, [fp, #28]
 8006e5a:	69a9      	ldr	r1, [r5, #24]
 8006e5c:	f10b 0220 	add.w	r2, fp, #32
 8006e60:	3518      	adds	r5, #24
 8006e62:	e707      	b.n	8006c74 <_realloc_r+0x114>
 8006e64:	692b      	ldr	r3, [r5, #16]
 8006e66:	6103      	str	r3, [r0, #16]
 8006e68:	696b      	ldr	r3, [r5, #20]
 8006e6a:	6143      	str	r3, [r0, #20]
 8006e6c:	69a9      	ldr	r1, [r5, #24]
 8006e6e:	f105 0218 	add.w	r2, r5, #24
 8006e72:	f100 0318 	add.w	r3, r0, #24
 8006e76:	e6ba      	b.n	8006bee <_realloc_r+0x8e>
 8006e78:	4652      	mov	r2, sl
 8006e7a:	e76e      	b.n	8006d5a <_realloc_r+0x1fa>
 8006e7c:	4629      	mov	r1, r5
 8006e7e:	4650      	mov	r0, sl
 8006e80:	9301      	str	r3, [sp, #4]
 8006e82:	f7ff faf3 	bl	800646c <memmove>
 8006e86:	9b01      	ldr	r3, [sp, #4]
 8006e88:	e76c      	b.n	8006d64 <_realloc_r+0x204>
 8006e8a:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e8e:	68e9      	ldr	r1, [r5, #12]
 8006e90:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e94:	2a24      	cmp	r2, #36	; 0x24
 8006e96:	d004      	beq.n	8006ea2 <_realloc_r+0x342>
 8006e98:	6929      	ldr	r1, [r5, #16]
 8006e9a:	f10b 0218 	add.w	r2, fp, #24
 8006e9e:	3510      	adds	r5, #16
 8006ea0:	e75b      	b.n	8006d5a <_realloc_r+0x1fa>
 8006ea2:	692a      	ldr	r2, [r5, #16]
 8006ea4:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ea8:	696a      	ldr	r2, [r5, #20]
 8006eaa:	f8cb 201c 	str.w	r2, [fp, #28]
 8006eae:	69a9      	ldr	r1, [r5, #24]
 8006eb0:	f10b 0220 	add.w	r2, fp, #32
 8006eb4:	3518      	adds	r5, #24
 8006eb6:	e750      	b.n	8006d5a <_realloc_r+0x1fa>
 8006eb8:	2000049c 	.word	0x2000049c

08006ebc <frexp>:
 8006ebc:	ec53 2b10 	vmov	r2, r3, d0
 8006ec0:	b570      	push	{r4, r5, r6, lr}
 8006ec2:	4e16      	ldr	r6, [pc, #88]	; (8006f1c <frexp+0x60>)
 8006ec4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ec8:	2500      	movs	r5, #0
 8006eca:	42b1      	cmp	r1, r6
 8006ecc:	4604      	mov	r4, r0
 8006ece:	6005      	str	r5, [r0, #0]
 8006ed0:	dc21      	bgt.n	8006f16 <frexp+0x5a>
 8006ed2:	ee10 6a10 	vmov	r6, s0
 8006ed6:	430e      	orrs	r6, r1
 8006ed8:	d01d      	beq.n	8006f16 <frexp+0x5a>
 8006eda:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006ede:	4618      	mov	r0, r3
 8006ee0:	da0c      	bge.n	8006efc <frexp+0x40>
 8006ee2:	4619      	mov	r1, r3
 8006ee4:	2200      	movs	r2, #0
 8006ee6:	ee10 0a10 	vmov	r0, s0
 8006eea:	4b0d      	ldr	r3, [pc, #52]	; (8006f20 <frexp+0x64>)
 8006eec:	f7f9 fe24 	bl	8000b38 <__aeabi_dmul>
 8006ef0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006ef4:	4602      	mov	r2, r0
 8006ef6:	4608      	mov	r0, r1
 8006ef8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006efc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006f00:	1509      	asrs	r1, r1, #20
 8006f02:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006f06:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006f0a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006f0e:	4429      	add	r1, r5
 8006f10:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006f14:	6021      	str	r1, [r4, #0]
 8006f16:	ec43 2b10 	vmov	d0, r2, r3
 8006f1a:	bd70      	pop	{r4, r5, r6, pc}
 8006f1c:	7fefffff 	.word	0x7fefffff
 8006f20:	43500000 	.word	0x43500000

08006f24 <_sbrk_r>:
 8006f24:	b538      	push	{r3, r4, r5, lr}
 8006f26:	4c07      	ldr	r4, [pc, #28]	; (8006f44 <_sbrk_r+0x20>)
 8006f28:	2300      	movs	r3, #0
 8006f2a:	4605      	mov	r5, r0
 8006f2c:	4608      	mov	r0, r1
 8006f2e:	6023      	str	r3, [r4, #0]
 8006f30:	f7fb fc34 	bl	800279c <_sbrk>
 8006f34:	1c43      	adds	r3, r0, #1
 8006f36:	d000      	beq.n	8006f3a <_sbrk_r+0x16>
 8006f38:	bd38      	pop	{r3, r4, r5, pc}
 8006f3a:	6823      	ldr	r3, [r4, #0]
 8006f3c:	2b00      	cmp	r3, #0
 8006f3e:	d0fb      	beq.n	8006f38 <_sbrk_r+0x14>
 8006f40:	602b      	str	r3, [r5, #0]
 8006f42:	bd38      	pop	{r3, r4, r5, pc}
 8006f44:	20000b5c 	.word	0x20000b5c

08006f48 <__sread>:
 8006f48:	b510      	push	{r4, lr}
 8006f4a:	460c      	mov	r4, r1
 8006f4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f50:	f000 fabc 	bl	80074cc <_read_r>
 8006f54:	2800      	cmp	r0, #0
 8006f56:	db03      	blt.n	8006f60 <__sread+0x18>
 8006f58:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006f5a:	4403      	add	r3, r0
 8006f5c:	6523      	str	r3, [r4, #80]	; 0x50
 8006f5e:	bd10      	pop	{r4, pc}
 8006f60:	89a3      	ldrh	r3, [r4, #12]
 8006f62:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006f66:	81a3      	strh	r3, [r4, #12]
 8006f68:	bd10      	pop	{r4, pc}
 8006f6a:	bf00      	nop

08006f6c <__swrite>:
 8006f6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006f70:	4616      	mov	r6, r2
 8006f72:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006f76:	461f      	mov	r7, r3
 8006f78:	05d3      	lsls	r3, r2, #23
 8006f7a:	460c      	mov	r4, r1
 8006f7c:	4605      	mov	r5, r0
 8006f7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f82:	d507      	bpl.n	8006f94 <__swrite+0x28>
 8006f84:	2200      	movs	r2, #0
 8006f86:	2302      	movs	r3, #2
 8006f88:	f000 fa74 	bl	8007474 <_lseek_r>
 8006f8c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f90:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006f94:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006f98:	81a2      	strh	r2, [r4, #12]
 8006f9a:	463b      	mov	r3, r7
 8006f9c:	4632      	mov	r2, r6
 8006f9e:	4628      	mov	r0, r5
 8006fa0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006fa4:	f000 b88c 	b.w	80070c0 <_write_r>

08006fa8 <__sseek>:
 8006fa8:	b510      	push	{r4, lr}
 8006faa:	460c      	mov	r4, r1
 8006fac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fb0:	f000 fa60 	bl	8007474 <_lseek_r>
 8006fb4:	89a3      	ldrh	r3, [r4, #12]
 8006fb6:	1c42      	adds	r2, r0, #1
 8006fb8:	bf0e      	itee	eq
 8006fba:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006fbe:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006fc2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006fc4:	81a3      	strh	r3, [r4, #12]
 8006fc6:	bd10      	pop	{r4, pc}

08006fc8 <__sclose>:
 8006fc8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006fcc:	f000 b922 	b.w	8007214 <_close_r>

08006fd0 <strncpy>:
 8006fd0:	ea40 0301 	orr.w	r3, r0, r1
 8006fd4:	079b      	lsls	r3, r3, #30
 8006fd6:	b470      	push	{r4, r5, r6}
 8006fd8:	d12a      	bne.n	8007030 <strncpy+0x60>
 8006fda:	2a03      	cmp	r2, #3
 8006fdc:	d928      	bls.n	8007030 <strncpy+0x60>
 8006fde:	460c      	mov	r4, r1
 8006fe0:	4603      	mov	r3, r0
 8006fe2:	4621      	mov	r1, r4
 8006fe4:	f854 6b04 	ldr.w	r6, [r4], #4
 8006fe8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006fec:	ea25 0506 	bic.w	r5, r5, r6
 8006ff0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006ff4:	d106      	bne.n	8007004 <strncpy+0x34>
 8006ff6:	3a04      	subs	r2, #4
 8006ff8:	2a03      	cmp	r2, #3
 8006ffa:	f843 6b04 	str.w	r6, [r3], #4
 8006ffe:	4621      	mov	r1, r4
 8007000:	d8ef      	bhi.n	8006fe2 <strncpy+0x12>
 8007002:	b19a      	cbz	r2, 800702c <strncpy+0x5c>
 8007004:	780c      	ldrb	r4, [r1, #0]
 8007006:	701c      	strb	r4, [r3, #0]
 8007008:	3a01      	subs	r2, #1
 800700a:	3301      	adds	r3, #1
 800700c:	b13c      	cbz	r4, 800701e <strncpy+0x4e>
 800700e:	b16a      	cbz	r2, 800702c <strncpy+0x5c>
 8007010:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8007014:	f803 4b01 	strb.w	r4, [r3], #1
 8007018:	3a01      	subs	r2, #1
 800701a:	2c00      	cmp	r4, #0
 800701c:	d1f7      	bne.n	800700e <strncpy+0x3e>
 800701e:	b12a      	cbz	r2, 800702c <strncpy+0x5c>
 8007020:	441a      	add	r2, r3
 8007022:	2100      	movs	r1, #0
 8007024:	f803 1b01 	strb.w	r1, [r3], #1
 8007028:	4293      	cmp	r3, r2
 800702a:	d1fb      	bne.n	8007024 <strncpy+0x54>
 800702c:	bc70      	pop	{r4, r5, r6}
 800702e:	4770      	bx	lr
 8007030:	4603      	mov	r3, r0
 8007032:	e7e6      	b.n	8007002 <strncpy+0x32>

08007034 <__sprint_r.part.0>:
 8007034:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007038:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800703a:	049c      	lsls	r4, r3, #18
 800703c:	4692      	mov	sl, r2
 800703e:	d52d      	bpl.n	800709c <__sprint_r.part.0+0x68>
 8007040:	6893      	ldr	r3, [r2, #8]
 8007042:	6812      	ldr	r2, [r2, #0]
 8007044:	b343      	cbz	r3, 8007098 <__sprint_r.part.0+0x64>
 8007046:	460e      	mov	r6, r1
 8007048:	4607      	mov	r7, r0
 800704a:	f102 0908 	add.w	r9, r2, #8
 800704e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8007052:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8007056:	d015      	beq.n	8007084 <__sprint_r.part.0+0x50>
 8007058:	3d04      	subs	r5, #4
 800705a:	2400      	movs	r4, #0
 800705c:	e001      	b.n	8007062 <__sprint_r.part.0+0x2e>
 800705e:	45a0      	cmp	r8, r4
 8007060:	d00e      	beq.n	8007080 <__sprint_r.part.0+0x4c>
 8007062:	4632      	mov	r2, r6
 8007064:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007068:	4638      	mov	r0, r7
 800706a:	f000 f99d 	bl	80073a8 <_fputwc_r>
 800706e:	1c43      	adds	r3, r0, #1
 8007070:	f104 0401 	add.w	r4, r4, #1
 8007074:	d1f3      	bne.n	800705e <__sprint_r.part.0+0x2a>
 8007076:	2300      	movs	r3, #0
 8007078:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800707c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007080:	f8da 3008 	ldr.w	r3, [sl, #8]
 8007084:	f02b 0b03 	bic.w	fp, fp, #3
 8007088:	eba3 030b 	sub.w	r3, r3, fp
 800708c:	f8ca 3008 	str.w	r3, [sl, #8]
 8007090:	f109 0908 	add.w	r9, r9, #8
 8007094:	2b00      	cmp	r3, #0
 8007096:	d1da      	bne.n	800704e <__sprint_r.part.0+0x1a>
 8007098:	2000      	movs	r0, #0
 800709a:	e7ec      	b.n	8007076 <__sprint_r.part.0+0x42>
 800709c:	f7fe fd0c 	bl	8005ab8 <__sfvwrite_r>
 80070a0:	2300      	movs	r3, #0
 80070a2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80070a6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070aa:	bf00      	nop

080070ac <__sprint_r>:
 80070ac:	6893      	ldr	r3, [r2, #8]
 80070ae:	b10b      	cbz	r3, 80070b4 <__sprint_r+0x8>
 80070b0:	f7ff bfc0 	b.w	8007034 <__sprint_r.part.0>
 80070b4:	b410      	push	{r4}
 80070b6:	4618      	mov	r0, r3
 80070b8:	6053      	str	r3, [r2, #4]
 80070ba:	f85d 4b04 	ldr.w	r4, [sp], #4
 80070be:	4770      	bx	lr

080070c0 <_write_r>:
 80070c0:	b570      	push	{r4, r5, r6, lr}
 80070c2:	460d      	mov	r5, r1
 80070c4:	4c08      	ldr	r4, [pc, #32]	; (80070e8 <_write_r+0x28>)
 80070c6:	4611      	mov	r1, r2
 80070c8:	4606      	mov	r6, r0
 80070ca:	461a      	mov	r2, r3
 80070cc:	4628      	mov	r0, r5
 80070ce:	2300      	movs	r3, #0
 80070d0:	6023      	str	r3, [r4, #0]
 80070d2:	f7fb fb50 	bl	8002776 <_write>
 80070d6:	1c43      	adds	r3, r0, #1
 80070d8:	d000      	beq.n	80070dc <_write_r+0x1c>
 80070da:	bd70      	pop	{r4, r5, r6, pc}
 80070dc:	6823      	ldr	r3, [r4, #0]
 80070de:	2b00      	cmp	r3, #0
 80070e0:	d0fb      	beq.n	80070da <_write_r+0x1a>
 80070e2:	6033      	str	r3, [r6, #0]
 80070e4:	bd70      	pop	{r4, r5, r6, pc}
 80070e6:	bf00      	nop
 80070e8:	20000b5c 	.word	0x20000b5c

080070ec <__register_exitproc>:
 80070ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80070f0:	4d2b      	ldr	r5, [pc, #172]	; (80071a0 <__register_exitproc+0xb4>)
 80070f2:	4606      	mov	r6, r0
 80070f4:	6828      	ldr	r0, [r5, #0]
 80070f6:	4698      	mov	r8, r3
 80070f8:	460f      	mov	r7, r1
 80070fa:	4691      	mov	r9, r2
 80070fc:	f7fe fe96 	bl	8005e2c <__retarget_lock_acquire_recursive>
 8007100:	4b28      	ldr	r3, [pc, #160]	; (80071a4 <__register_exitproc+0xb8>)
 8007102:	681c      	ldr	r4, [r3, #0]
 8007104:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007108:	2b00      	cmp	r3, #0
 800710a:	d03d      	beq.n	8007188 <__register_exitproc+0x9c>
 800710c:	685a      	ldr	r2, [r3, #4]
 800710e:	2a1f      	cmp	r2, #31
 8007110:	dc0d      	bgt.n	800712e <__register_exitproc+0x42>
 8007112:	f102 0c01 	add.w	ip, r2, #1
 8007116:	bb16      	cbnz	r6, 800715e <__register_exitproc+0x72>
 8007118:	3202      	adds	r2, #2
 800711a:	f8c3 c004 	str.w	ip, [r3, #4]
 800711e:	6828      	ldr	r0, [r5, #0]
 8007120:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007124:	f7fe fe84 	bl	8005e30 <__retarget_lock_release_recursive>
 8007128:	2000      	movs	r0, #0
 800712a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800712e:	4b1e      	ldr	r3, [pc, #120]	; (80071a8 <__register_exitproc+0xbc>)
 8007130:	b37b      	cbz	r3, 8007192 <__register_exitproc+0xa6>
 8007132:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007136:	f3af 8000 	nop.w
 800713a:	4603      	mov	r3, r0
 800713c:	b348      	cbz	r0, 8007192 <__register_exitproc+0xa6>
 800713e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007142:	2100      	movs	r1, #0
 8007144:	e9c0 2100 	strd	r2, r1, [r0]
 8007148:	f04f 0c01 	mov.w	ip, #1
 800714c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007150:	460a      	mov	r2, r1
 8007152:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8007156:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800715a:	2e00      	cmp	r6, #0
 800715c:	d0dc      	beq.n	8007118 <__register_exitproc+0x2c>
 800715e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8007162:	2401      	movs	r4, #1
 8007164:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007168:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800716c:	4094      	lsls	r4, r2
 800716e:	4320      	orrs	r0, r4
 8007170:	2e02      	cmp	r6, #2
 8007172:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8007176:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800717a:	d1cd      	bne.n	8007118 <__register_exitproc+0x2c>
 800717c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007180:	430c      	orrs	r4, r1
 8007182:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8007186:	e7c7      	b.n	8007118 <__register_exitproc+0x2c>
 8007188:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800718c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007190:	e7bc      	b.n	800710c <__register_exitproc+0x20>
 8007192:	6828      	ldr	r0, [r5, #0]
 8007194:	f7fe fe4c 	bl	8005e30 <__retarget_lock_release_recursive>
 8007198:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800719c:	e7c5      	b.n	800712a <__register_exitproc+0x3e>
 800719e:	bf00      	nop
 80071a0:	20000498 	.word	0x20000498
 80071a4:	08007748 	.word	0x08007748
 80071a8:	00000000 	.word	0x00000000

080071ac <_calloc_r>:
 80071ac:	b510      	push	{r4, lr}
 80071ae:	fb02 f101 	mul.w	r1, r2, r1
 80071b2:	f7fe feb7 	bl	8005f24 <_malloc_r>
 80071b6:	4604      	mov	r4, r0
 80071b8:	b1d8      	cbz	r0, 80071f2 <_calloc_r+0x46>
 80071ba:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80071be:	f022 0203 	bic.w	r2, r2, #3
 80071c2:	3a04      	subs	r2, #4
 80071c4:	2a24      	cmp	r2, #36	; 0x24
 80071c6:	d81d      	bhi.n	8007204 <_calloc_r+0x58>
 80071c8:	2a13      	cmp	r2, #19
 80071ca:	d914      	bls.n	80071f6 <_calloc_r+0x4a>
 80071cc:	2300      	movs	r3, #0
 80071ce:	2a1b      	cmp	r2, #27
 80071d0:	e9c0 3300 	strd	r3, r3, [r0]
 80071d4:	d91b      	bls.n	800720e <_calloc_r+0x62>
 80071d6:	2a24      	cmp	r2, #36	; 0x24
 80071d8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80071dc:	bf0a      	itet	eq
 80071de:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80071e2:	f100 0210 	addne.w	r2, r0, #16
 80071e6:	f100 0218 	addeq.w	r2, r0, #24
 80071ea:	2300      	movs	r3, #0
 80071ec:	e9c2 3300 	strd	r3, r3, [r2]
 80071f0:	6093      	str	r3, [r2, #8]
 80071f2:	4620      	mov	r0, r4
 80071f4:	bd10      	pop	{r4, pc}
 80071f6:	4602      	mov	r2, r0
 80071f8:	2300      	movs	r3, #0
 80071fa:	e9c2 3300 	strd	r3, r3, [r2]
 80071fe:	6093      	str	r3, [r2, #8]
 8007200:	4620      	mov	r0, r4
 8007202:	bd10      	pop	{r4, pc}
 8007204:	2100      	movs	r1, #0
 8007206:	f7fb fb6f 	bl	80028e8 <memset>
 800720a:	4620      	mov	r0, r4
 800720c:	bd10      	pop	{r4, pc}
 800720e:	f100 0208 	add.w	r2, r0, #8
 8007212:	e7f1      	b.n	80071f8 <_calloc_r+0x4c>

08007214 <_close_r>:
 8007214:	b538      	push	{r3, r4, r5, lr}
 8007216:	4c07      	ldr	r4, [pc, #28]	; (8007234 <_close_r+0x20>)
 8007218:	2300      	movs	r3, #0
 800721a:	4605      	mov	r5, r0
 800721c:	4608      	mov	r0, r1
 800721e:	6023      	str	r3, [r4, #0]
 8007220:	f7fb fad8 	bl	80027d4 <_close>
 8007224:	1c43      	adds	r3, r0, #1
 8007226:	d000      	beq.n	800722a <_close_r+0x16>
 8007228:	bd38      	pop	{r3, r4, r5, pc}
 800722a:	6823      	ldr	r3, [r4, #0]
 800722c:	2b00      	cmp	r3, #0
 800722e:	d0fb      	beq.n	8007228 <_close_r+0x14>
 8007230:	602b      	str	r3, [r5, #0]
 8007232:	bd38      	pop	{r3, r4, r5, pc}
 8007234:	20000b5c 	.word	0x20000b5c

08007238 <_fclose_r>:
 8007238:	b570      	push	{r4, r5, r6, lr}
 800723a:	2900      	cmp	r1, #0
 800723c:	d048      	beq.n	80072d0 <_fclose_r+0x98>
 800723e:	4605      	mov	r5, r0
 8007240:	460c      	mov	r4, r1
 8007242:	b110      	cbz	r0, 800724a <_fclose_r+0x12>
 8007244:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007246:	2b00      	cmp	r3, #0
 8007248:	d048      	beq.n	80072dc <_fclose_r+0xa4>
 800724a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800724c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007250:	07d0      	lsls	r0, r2, #31
 8007252:	d440      	bmi.n	80072d6 <_fclose_r+0x9e>
 8007254:	0599      	lsls	r1, r3, #22
 8007256:	d530      	bpl.n	80072ba <_fclose_r+0x82>
 8007258:	4621      	mov	r1, r4
 800725a:	4628      	mov	r0, r5
 800725c:	f7fe f990 	bl	8005580 <__sflush_r>
 8007260:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8007262:	4606      	mov	r6, r0
 8007264:	b133      	cbz	r3, 8007274 <_fclose_r+0x3c>
 8007266:	69e1      	ldr	r1, [r4, #28]
 8007268:	4628      	mov	r0, r5
 800726a:	4798      	blx	r3
 800726c:	2800      	cmp	r0, #0
 800726e:	bfb8      	it	lt
 8007270:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8007274:	89a3      	ldrh	r3, [r4, #12]
 8007276:	061a      	lsls	r2, r3, #24
 8007278:	d43c      	bmi.n	80072f4 <_fclose_r+0xbc>
 800727a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800727c:	b141      	cbz	r1, 8007290 <_fclose_r+0x58>
 800727e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007282:	4299      	cmp	r1, r3
 8007284:	d002      	beq.n	800728c <_fclose_r+0x54>
 8007286:	4628      	mov	r0, r5
 8007288:	f7fe fb22 	bl	80058d0 <_free_r>
 800728c:	2300      	movs	r3, #0
 800728e:	6323      	str	r3, [r4, #48]	; 0x30
 8007290:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8007292:	b121      	cbz	r1, 800729e <_fclose_r+0x66>
 8007294:	4628      	mov	r0, r5
 8007296:	f7fe fb1b 	bl	80058d0 <_free_r>
 800729a:	2300      	movs	r3, #0
 800729c:	6463      	str	r3, [r4, #68]	; 0x44
 800729e:	f7fe faa1 	bl	80057e4 <__sfp_lock_acquire>
 80072a2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80072a4:	2200      	movs	r2, #0
 80072a6:	07db      	lsls	r3, r3, #31
 80072a8:	81a2      	strh	r2, [r4, #12]
 80072aa:	d51f      	bpl.n	80072ec <_fclose_r+0xb4>
 80072ac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072ae:	f7fe fdbb 	bl	8005e28 <__retarget_lock_close_recursive>
 80072b2:	f7fe fa9d 	bl	80057f0 <__sfp_lock_release>
 80072b6:	4630      	mov	r0, r6
 80072b8:	bd70      	pop	{r4, r5, r6, pc}
 80072ba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072bc:	f7fe fdb6 	bl	8005e2c <__retarget_lock_acquire_recursive>
 80072c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072c4:	2b00      	cmp	r3, #0
 80072c6:	d1c7      	bne.n	8007258 <_fclose_r+0x20>
 80072c8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80072ca:	f016 0601 	ands.w	r6, r6, #1
 80072ce:	d016      	beq.n	80072fe <_fclose_r+0xc6>
 80072d0:	2600      	movs	r6, #0
 80072d2:	4630      	mov	r0, r6
 80072d4:	bd70      	pop	{r4, r5, r6, pc}
 80072d6:	2b00      	cmp	r3, #0
 80072d8:	d0fa      	beq.n	80072d0 <_fclose_r+0x98>
 80072da:	e7bd      	b.n	8007258 <_fclose_r+0x20>
 80072dc:	f7fe fa56 	bl	800578c <__sinit>
 80072e0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80072e2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072e6:	07d0      	lsls	r0, r2, #31
 80072e8:	d4f5      	bmi.n	80072d6 <_fclose_r+0x9e>
 80072ea:	e7b3      	b.n	8007254 <_fclose_r+0x1c>
 80072ec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072ee:	f7fe fd9f 	bl	8005e30 <__retarget_lock_release_recursive>
 80072f2:	e7db      	b.n	80072ac <_fclose_r+0x74>
 80072f4:	6921      	ldr	r1, [r4, #16]
 80072f6:	4628      	mov	r0, r5
 80072f8:	f7fe faea 	bl	80058d0 <_free_r>
 80072fc:	e7bd      	b.n	800727a <_fclose_r+0x42>
 80072fe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007300:	f7fe fd96 	bl	8005e30 <__retarget_lock_release_recursive>
 8007304:	4630      	mov	r0, r6
 8007306:	bd70      	pop	{r4, r5, r6, pc}

08007308 <__fputwc>:
 8007308:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800730c:	b082      	sub	sp, #8
 800730e:	4681      	mov	r9, r0
 8007310:	4688      	mov	r8, r1
 8007312:	4614      	mov	r4, r2
 8007314:	f000 f8a0 	bl	8007458 <__locale_mb_cur_max>
 8007318:	2801      	cmp	r0, #1
 800731a:	d103      	bne.n	8007324 <__fputwc+0x1c>
 800731c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007320:	2bfe      	cmp	r3, #254	; 0xfe
 8007322:	d933      	bls.n	800738c <__fputwc+0x84>
 8007324:	4642      	mov	r2, r8
 8007326:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800732a:	a901      	add	r1, sp, #4
 800732c:	4648      	mov	r0, r9
 800732e:	f000 f93b 	bl	80075a8 <_wcrtomb_r>
 8007332:	1c42      	adds	r2, r0, #1
 8007334:	4606      	mov	r6, r0
 8007336:	d02f      	beq.n	8007398 <__fputwc+0x90>
 8007338:	b320      	cbz	r0, 8007384 <__fputwc+0x7c>
 800733a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800733e:	2500      	movs	r5, #0
 8007340:	f10d 0a04 	add.w	sl, sp, #4
 8007344:	e009      	b.n	800735a <__fputwc+0x52>
 8007346:	6823      	ldr	r3, [r4, #0]
 8007348:	1c5a      	adds	r2, r3, #1
 800734a:	6022      	str	r2, [r4, #0]
 800734c:	f883 c000 	strb.w	ip, [r3]
 8007350:	3501      	adds	r5, #1
 8007352:	42b5      	cmp	r5, r6
 8007354:	d216      	bcs.n	8007384 <__fputwc+0x7c>
 8007356:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800735a:	68a3      	ldr	r3, [r4, #8]
 800735c:	3b01      	subs	r3, #1
 800735e:	2b00      	cmp	r3, #0
 8007360:	60a3      	str	r3, [r4, #8]
 8007362:	daf0      	bge.n	8007346 <__fputwc+0x3e>
 8007364:	69a7      	ldr	r7, [r4, #24]
 8007366:	42bb      	cmp	r3, r7
 8007368:	4661      	mov	r1, ip
 800736a:	4622      	mov	r2, r4
 800736c:	4648      	mov	r0, r9
 800736e:	db02      	blt.n	8007376 <__fputwc+0x6e>
 8007370:	f1bc 0f0a 	cmp.w	ip, #10
 8007374:	d1e7      	bne.n	8007346 <__fputwc+0x3e>
 8007376:	f000 f8bf 	bl	80074f8 <__swbuf_r>
 800737a:	1c43      	adds	r3, r0, #1
 800737c:	d1e8      	bne.n	8007350 <__fputwc+0x48>
 800737e:	b002      	add	sp, #8
 8007380:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007384:	4640      	mov	r0, r8
 8007386:	b002      	add	sp, #8
 8007388:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800738c:	fa5f fc88 	uxtb.w	ip, r8
 8007390:	4606      	mov	r6, r0
 8007392:	f88d c004 	strb.w	ip, [sp, #4]
 8007396:	e7d2      	b.n	800733e <__fputwc+0x36>
 8007398:	89a3      	ldrh	r3, [r4, #12]
 800739a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800739e:	81a3      	strh	r3, [r4, #12]
 80073a0:	b002      	add	sp, #8
 80073a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073a6:	bf00      	nop

080073a8 <_fputwc_r>:
 80073a8:	b530      	push	{r4, r5, lr}
 80073aa:	4605      	mov	r5, r0
 80073ac:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80073ae:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80073b2:	07c0      	lsls	r0, r0, #31
 80073b4:	4614      	mov	r4, r2
 80073b6:	b083      	sub	sp, #12
 80073b8:	b29a      	uxth	r2, r3
 80073ba:	d401      	bmi.n	80073c0 <_fputwc_r+0x18>
 80073bc:	0590      	lsls	r0, r2, #22
 80073be:	d51c      	bpl.n	80073fa <_fputwc_r+0x52>
 80073c0:	0490      	lsls	r0, r2, #18
 80073c2:	d406      	bmi.n	80073d2 <_fputwc_r+0x2a>
 80073c4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80073c6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80073ca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80073ce:	81a3      	strh	r3, [r4, #12]
 80073d0:	6662      	str	r2, [r4, #100]	; 0x64
 80073d2:	4628      	mov	r0, r5
 80073d4:	4622      	mov	r2, r4
 80073d6:	f7ff ff97 	bl	8007308 <__fputwc>
 80073da:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80073dc:	07da      	lsls	r2, r3, #31
 80073de:	4605      	mov	r5, r0
 80073e0:	d402      	bmi.n	80073e8 <_fputwc_r+0x40>
 80073e2:	89a3      	ldrh	r3, [r4, #12]
 80073e4:	059b      	lsls	r3, r3, #22
 80073e6:	d502      	bpl.n	80073ee <_fputwc_r+0x46>
 80073e8:	4628      	mov	r0, r5
 80073ea:	b003      	add	sp, #12
 80073ec:	bd30      	pop	{r4, r5, pc}
 80073ee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073f0:	f7fe fd1e 	bl	8005e30 <__retarget_lock_release_recursive>
 80073f4:	4628      	mov	r0, r5
 80073f6:	b003      	add	sp, #12
 80073f8:	bd30      	pop	{r4, r5, pc}
 80073fa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073fc:	9101      	str	r1, [sp, #4]
 80073fe:	f7fe fd15 	bl	8005e2c <__retarget_lock_acquire_recursive>
 8007402:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007406:	9901      	ldr	r1, [sp, #4]
 8007408:	b29a      	uxth	r2, r3
 800740a:	e7d9      	b.n	80073c0 <_fputwc_r+0x18>

0800740c <_fstat_r>:
 800740c:	b538      	push	{r3, r4, r5, lr}
 800740e:	460b      	mov	r3, r1
 8007410:	4c07      	ldr	r4, [pc, #28]	; (8007430 <_fstat_r+0x24>)
 8007412:	4605      	mov	r5, r0
 8007414:	4611      	mov	r1, r2
 8007416:	4618      	mov	r0, r3
 8007418:	2300      	movs	r3, #0
 800741a:	6023      	str	r3, [r4, #0]
 800741c:	f7fb f9dd 	bl	80027da <_fstat>
 8007420:	1c43      	adds	r3, r0, #1
 8007422:	d000      	beq.n	8007426 <_fstat_r+0x1a>
 8007424:	bd38      	pop	{r3, r4, r5, pc}
 8007426:	6823      	ldr	r3, [r4, #0]
 8007428:	2b00      	cmp	r3, #0
 800742a:	d0fb      	beq.n	8007424 <_fstat_r+0x18>
 800742c:	602b      	str	r3, [r5, #0]
 800742e:	bd38      	pop	{r3, r4, r5, pc}
 8007430:	20000b5c 	.word	0x20000b5c

08007434 <_isatty_r>:
 8007434:	b538      	push	{r3, r4, r5, lr}
 8007436:	4c07      	ldr	r4, [pc, #28]	; (8007454 <_isatty_r+0x20>)
 8007438:	2300      	movs	r3, #0
 800743a:	4605      	mov	r5, r0
 800743c:	4608      	mov	r0, r1
 800743e:	6023      	str	r3, [r4, #0]
 8007440:	f7fb f9d0 	bl	80027e4 <_isatty>
 8007444:	1c43      	adds	r3, r0, #1
 8007446:	d000      	beq.n	800744a <_isatty_r+0x16>
 8007448:	bd38      	pop	{r3, r4, r5, pc}
 800744a:	6823      	ldr	r3, [r4, #0]
 800744c:	2b00      	cmp	r3, #0
 800744e:	d0fb      	beq.n	8007448 <_isatty_r+0x14>
 8007450:	602b      	str	r3, [r5, #0]
 8007452:	bd38      	pop	{r3, r4, r5, pc}
 8007454:	20000b5c 	.word	0x20000b5c

08007458 <__locale_mb_cur_max>:
 8007458:	4b04      	ldr	r3, [pc, #16]	; (800746c <__locale_mb_cur_max+0x14>)
 800745a:	4a05      	ldr	r2, [pc, #20]	; (8007470 <__locale_mb_cur_max+0x18>)
 800745c:	681b      	ldr	r3, [r3, #0]
 800745e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007460:	2b00      	cmp	r3, #0
 8007462:	bf08      	it	eq
 8007464:	4613      	moveq	r3, r2
 8007466:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800746a:	4770      	bx	lr
 800746c:	20000068 	.word	0x20000068
 8007470:	200008ac 	.word	0x200008ac

08007474 <_lseek_r>:
 8007474:	b570      	push	{r4, r5, r6, lr}
 8007476:	460d      	mov	r5, r1
 8007478:	4c08      	ldr	r4, [pc, #32]	; (800749c <_lseek_r+0x28>)
 800747a:	4611      	mov	r1, r2
 800747c:	4606      	mov	r6, r0
 800747e:	461a      	mov	r2, r3
 8007480:	4628      	mov	r0, r5
 8007482:	2300      	movs	r3, #0
 8007484:	6023      	str	r3, [r4, #0]
 8007486:	f7fb f9af 	bl	80027e8 <_lseek>
 800748a:	1c43      	adds	r3, r0, #1
 800748c:	d000      	beq.n	8007490 <_lseek_r+0x1c>
 800748e:	bd70      	pop	{r4, r5, r6, pc}
 8007490:	6823      	ldr	r3, [r4, #0]
 8007492:	2b00      	cmp	r3, #0
 8007494:	d0fb      	beq.n	800748e <_lseek_r+0x1a>
 8007496:	6033      	str	r3, [r6, #0]
 8007498:	bd70      	pop	{r4, r5, r6, pc}
 800749a:	bf00      	nop
 800749c:	20000b5c 	.word	0x20000b5c

080074a0 <__ascii_mbtowc>:
 80074a0:	b082      	sub	sp, #8
 80074a2:	b149      	cbz	r1, 80074b8 <__ascii_mbtowc+0x18>
 80074a4:	b15a      	cbz	r2, 80074be <__ascii_mbtowc+0x1e>
 80074a6:	b16b      	cbz	r3, 80074c4 <__ascii_mbtowc+0x24>
 80074a8:	7813      	ldrb	r3, [r2, #0]
 80074aa:	600b      	str	r3, [r1, #0]
 80074ac:	7812      	ldrb	r2, [r2, #0]
 80074ae:	1c10      	adds	r0, r2, #0
 80074b0:	bf18      	it	ne
 80074b2:	2001      	movne	r0, #1
 80074b4:	b002      	add	sp, #8
 80074b6:	4770      	bx	lr
 80074b8:	a901      	add	r1, sp, #4
 80074ba:	2a00      	cmp	r2, #0
 80074bc:	d1f3      	bne.n	80074a6 <__ascii_mbtowc+0x6>
 80074be:	4610      	mov	r0, r2
 80074c0:	b002      	add	sp, #8
 80074c2:	4770      	bx	lr
 80074c4:	f06f 0001 	mvn.w	r0, #1
 80074c8:	e7f4      	b.n	80074b4 <__ascii_mbtowc+0x14>
 80074ca:	bf00      	nop

080074cc <_read_r>:
 80074cc:	b570      	push	{r4, r5, r6, lr}
 80074ce:	460d      	mov	r5, r1
 80074d0:	4c08      	ldr	r4, [pc, #32]	; (80074f4 <_read_r+0x28>)
 80074d2:	4611      	mov	r1, r2
 80074d4:	4606      	mov	r6, r0
 80074d6:	461a      	mov	r2, r3
 80074d8:	4628      	mov	r0, r5
 80074da:	2300      	movs	r3, #0
 80074dc:	6023      	str	r3, [r4, #0]
 80074de:	f7fb f937 	bl	8002750 <_read>
 80074e2:	1c43      	adds	r3, r0, #1
 80074e4:	d000      	beq.n	80074e8 <_read_r+0x1c>
 80074e6:	bd70      	pop	{r4, r5, r6, pc}
 80074e8:	6823      	ldr	r3, [r4, #0]
 80074ea:	2b00      	cmp	r3, #0
 80074ec:	d0fb      	beq.n	80074e6 <_read_r+0x1a>
 80074ee:	6033      	str	r3, [r6, #0]
 80074f0:	bd70      	pop	{r4, r5, r6, pc}
 80074f2:	bf00      	nop
 80074f4:	20000b5c 	.word	0x20000b5c

080074f8 <__swbuf_r>:
 80074f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80074fa:	460d      	mov	r5, r1
 80074fc:	4614      	mov	r4, r2
 80074fe:	4606      	mov	r6, r0
 8007500:	b110      	cbz	r0, 8007508 <__swbuf_r+0x10>
 8007502:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007504:	2b00      	cmp	r3, #0
 8007506:	d043      	beq.n	8007590 <__swbuf_r+0x98>
 8007508:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800750c:	69a3      	ldr	r3, [r4, #24]
 800750e:	60a3      	str	r3, [r4, #8]
 8007510:	b291      	uxth	r1, r2
 8007512:	0708      	lsls	r0, r1, #28
 8007514:	d51b      	bpl.n	800754e <__swbuf_r+0x56>
 8007516:	6923      	ldr	r3, [r4, #16]
 8007518:	b1cb      	cbz	r3, 800754e <__swbuf_r+0x56>
 800751a:	b2ed      	uxtb	r5, r5
 800751c:	0489      	lsls	r1, r1, #18
 800751e:	462f      	mov	r7, r5
 8007520:	d522      	bpl.n	8007568 <__swbuf_r+0x70>
 8007522:	6822      	ldr	r2, [r4, #0]
 8007524:	6961      	ldr	r1, [r4, #20]
 8007526:	1ad3      	subs	r3, r2, r3
 8007528:	4299      	cmp	r1, r3
 800752a:	dd29      	ble.n	8007580 <__swbuf_r+0x88>
 800752c:	3301      	adds	r3, #1
 800752e:	68a1      	ldr	r1, [r4, #8]
 8007530:	1c50      	adds	r0, r2, #1
 8007532:	3901      	subs	r1, #1
 8007534:	60a1      	str	r1, [r4, #8]
 8007536:	6020      	str	r0, [r4, #0]
 8007538:	7015      	strb	r5, [r2, #0]
 800753a:	6962      	ldr	r2, [r4, #20]
 800753c:	429a      	cmp	r2, r3
 800753e:	d02a      	beq.n	8007596 <__swbuf_r+0x9e>
 8007540:	89a3      	ldrh	r3, [r4, #12]
 8007542:	07db      	lsls	r3, r3, #31
 8007544:	d501      	bpl.n	800754a <__swbuf_r+0x52>
 8007546:	2d0a      	cmp	r5, #10
 8007548:	d025      	beq.n	8007596 <__swbuf_r+0x9e>
 800754a:	4638      	mov	r0, r7
 800754c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800754e:	4621      	mov	r1, r4
 8007550:	4630      	mov	r0, r6
 8007552:	f7fc fffd 	bl	8004550 <__swsetup_r>
 8007556:	bb20      	cbnz	r0, 80075a2 <__swbuf_r+0xaa>
 8007558:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800755c:	6923      	ldr	r3, [r4, #16]
 800755e:	b291      	uxth	r1, r2
 8007560:	b2ed      	uxtb	r5, r5
 8007562:	0489      	lsls	r1, r1, #18
 8007564:	462f      	mov	r7, r5
 8007566:	d4dc      	bmi.n	8007522 <__swbuf_r+0x2a>
 8007568:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800756a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800756e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007572:	81a2      	strh	r2, [r4, #12]
 8007574:	6822      	ldr	r2, [r4, #0]
 8007576:	6661      	str	r1, [r4, #100]	; 0x64
 8007578:	6961      	ldr	r1, [r4, #20]
 800757a:	1ad3      	subs	r3, r2, r3
 800757c:	4299      	cmp	r1, r3
 800757e:	dcd5      	bgt.n	800752c <__swbuf_r+0x34>
 8007580:	4621      	mov	r1, r4
 8007582:	4630      	mov	r0, r6
 8007584:	f7fe f8a6 	bl	80056d4 <_fflush_r>
 8007588:	b958      	cbnz	r0, 80075a2 <__swbuf_r+0xaa>
 800758a:	6822      	ldr	r2, [r4, #0]
 800758c:	2301      	movs	r3, #1
 800758e:	e7ce      	b.n	800752e <__swbuf_r+0x36>
 8007590:	f7fe f8fc 	bl	800578c <__sinit>
 8007594:	e7b8      	b.n	8007508 <__swbuf_r+0x10>
 8007596:	4621      	mov	r1, r4
 8007598:	4630      	mov	r0, r6
 800759a:	f7fe f89b 	bl	80056d4 <_fflush_r>
 800759e:	2800      	cmp	r0, #0
 80075a0:	d0d3      	beq.n	800754a <__swbuf_r+0x52>
 80075a2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80075a6:	e7d0      	b.n	800754a <__swbuf_r+0x52>

080075a8 <_wcrtomb_r>:
 80075a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80075aa:	4c11      	ldr	r4, [pc, #68]	; (80075f0 <_wcrtomb_r+0x48>)
 80075ac:	6824      	ldr	r4, [r4, #0]
 80075ae:	b085      	sub	sp, #20
 80075b0:	4606      	mov	r6, r0
 80075b2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80075b4:	461f      	mov	r7, r3
 80075b6:	b151      	cbz	r1, 80075ce <_wcrtomb_r+0x26>
 80075b8:	4d0e      	ldr	r5, [pc, #56]	; (80075f4 <_wcrtomb_r+0x4c>)
 80075ba:	2c00      	cmp	r4, #0
 80075bc:	bf08      	it	eq
 80075be:	462c      	moveq	r4, r5
 80075c0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075c4:	47a0      	blx	r4
 80075c6:	1c43      	adds	r3, r0, #1
 80075c8:	d00c      	beq.n	80075e4 <_wcrtomb_r+0x3c>
 80075ca:	b005      	add	sp, #20
 80075cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075ce:	4a09      	ldr	r2, [pc, #36]	; (80075f4 <_wcrtomb_r+0x4c>)
 80075d0:	2c00      	cmp	r4, #0
 80075d2:	bf08      	it	eq
 80075d4:	4614      	moveq	r4, r2
 80075d6:	460a      	mov	r2, r1
 80075d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075dc:	a901      	add	r1, sp, #4
 80075de:	47a0      	blx	r4
 80075e0:	1c43      	adds	r3, r0, #1
 80075e2:	d1f2      	bne.n	80075ca <_wcrtomb_r+0x22>
 80075e4:	2200      	movs	r2, #0
 80075e6:	238a      	movs	r3, #138	; 0x8a
 80075e8:	603a      	str	r2, [r7, #0]
 80075ea:	6033      	str	r3, [r6, #0]
 80075ec:	b005      	add	sp, #20
 80075ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075f0:	20000068 	.word	0x20000068
 80075f4:	200008ac 	.word	0x200008ac

080075f8 <__ascii_wctomb>:
 80075f8:	b121      	cbz	r1, 8007604 <__ascii_wctomb+0xc>
 80075fa:	2aff      	cmp	r2, #255	; 0xff
 80075fc:	d804      	bhi.n	8007608 <__ascii_wctomb+0x10>
 80075fe:	700a      	strb	r2, [r1, #0]
 8007600:	2001      	movs	r0, #1
 8007602:	4770      	bx	lr
 8007604:	4608      	mov	r0, r1
 8007606:	4770      	bx	lr
 8007608:	238a      	movs	r3, #138	; 0x8a
 800760a:	6003      	str	r3, [r0, #0]
 800760c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007610:	4770      	bx	lr
 8007612:	bf00      	nop

08007614 <_init>:
 8007614:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007616:	bf00      	nop
 8007618:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800761a:	bc08      	pop	{r3}
 800761c:	469e      	mov	lr, r3
 800761e:	4770      	bx	lr

08007620 <_fini>:
 8007620:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007622:	bf00      	nop
 8007624:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007626:	bc08      	pop	{r3}
 8007628:	469e      	mov	lr, r3
 800762a:	4770      	bx	lr
 800762c:	0000      	movs	r0, r0
	...
