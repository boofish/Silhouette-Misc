
nbody.elf:     file format elf32-littlearm


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
 80001d8:	20000b10 	.word	0x20000b10
 80001dc:	00000000 	.word	0x00000000
 80001e0:	080074cc 	.word	0x080074cc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000b14 	.word	0x20000b14
 80001fc:	080074cc 	.word	0x080074cc

08000200 <__aeabi_drsub>:
 8000200:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8000204:	e002      	b.n	800020c <__adddf3>
 8000206:	bf00      	nop

08000208 <__aeabi_dsub>:
 8000208:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

0800020c <__adddf3>:
 800020c:	b530      	push	{r4, r5, lr}
 800020e:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8000212:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8000216:	ea94 0f05 	teq	r4, r5
 800021a:	bf08      	it	eq
 800021c:	ea90 0f02 	teqeq	r0, r2
 8000220:	bf1f      	itttt	ne
 8000222:	ea54 0c00 	orrsne.w	ip, r4, r0
 8000226:	ea55 0c02 	orrsne.w	ip, r5, r2
 800022a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 800022e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000232:	f000 80e2 	beq.w	80003fa <__adddf3+0x1ee>
 8000236:	ea4f 5454 	mov.w	r4, r4, lsr #21
 800023a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 800023e:	bfb8      	it	lt
 8000240:	426d      	neglt	r5, r5
 8000242:	dd0c      	ble.n	800025e <__adddf3+0x52>
 8000244:	442c      	add	r4, r5
 8000246:	ea80 0202 	eor.w	r2, r0, r2
 800024a:	ea81 0303 	eor.w	r3, r1, r3
 800024e:	ea82 0000 	eor.w	r0, r2, r0
 8000252:	ea83 0101 	eor.w	r1, r3, r1
 8000256:	ea80 0202 	eor.w	r2, r0, r2
 800025a:	ea81 0303 	eor.w	r3, r1, r3
 800025e:	2d36      	cmp	r5, #54	; 0x36
 8000260:	bf88      	it	hi
 8000262:	bd30      	pophi	{r4, r5, pc}
 8000264:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000268:	ea4f 3101 	mov.w	r1, r1, lsl #12
 800026c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8000270:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000274:	d002      	beq.n	800027c <__adddf3+0x70>
 8000276:	4240      	negs	r0, r0
 8000278:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800027c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000280:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000284:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000288:	d002      	beq.n	8000290 <__adddf3+0x84>
 800028a:	4252      	negs	r2, r2
 800028c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000290:	ea94 0f05 	teq	r4, r5
 8000294:	f000 80a7 	beq.w	80003e6 <__adddf3+0x1da>
 8000298:	f1a4 0401 	sub.w	r4, r4, #1
 800029c:	f1d5 0e20 	rsbs	lr, r5, #32
 80002a0:	db0d      	blt.n	80002be <__adddf3+0xb2>
 80002a2:	fa02 fc0e 	lsl.w	ip, r2, lr
 80002a6:	fa22 f205 	lsr.w	r2, r2, r5
 80002aa:	1880      	adds	r0, r0, r2
 80002ac:	f141 0100 	adc.w	r1, r1, #0
 80002b0:	fa03 f20e 	lsl.w	r2, r3, lr
 80002b4:	1880      	adds	r0, r0, r2
 80002b6:	fa43 f305 	asr.w	r3, r3, r5
 80002ba:	4159      	adcs	r1, r3
 80002bc:	e00e      	b.n	80002dc <__adddf3+0xd0>
 80002be:	f1a5 0520 	sub.w	r5, r5, #32
 80002c2:	f10e 0e20 	add.w	lr, lr, #32
 80002c6:	2a01      	cmp	r2, #1
 80002c8:	fa03 fc0e 	lsl.w	ip, r3, lr
 80002cc:	bf28      	it	cs
 80002ce:	f04c 0c02 	orrcs.w	ip, ip, #2
 80002d2:	fa43 f305 	asr.w	r3, r3, r5
 80002d6:	18c0      	adds	r0, r0, r3
 80002d8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80002dc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80002e0:	d507      	bpl.n	80002f2 <__adddf3+0xe6>
 80002e2:	f04f 0e00 	mov.w	lr, #0
 80002e6:	f1dc 0c00 	rsbs	ip, ip, #0
 80002ea:	eb7e 0000 	sbcs.w	r0, lr, r0
 80002ee:	eb6e 0101 	sbc.w	r1, lr, r1
 80002f2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80002f6:	d31b      	bcc.n	8000330 <__adddf3+0x124>
 80002f8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80002fc:	d30c      	bcc.n	8000318 <__adddf3+0x10c>
 80002fe:	0849      	lsrs	r1, r1, #1
 8000300:	ea5f 0030 	movs.w	r0, r0, rrx
 8000304:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8000308:	f104 0401 	add.w	r4, r4, #1
 800030c:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8000310:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8000314:	f080 809a 	bcs.w	800044c <__adddf3+0x240>
 8000318:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 800031c:	bf08      	it	eq
 800031e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000322:	f150 0000 	adcs.w	r0, r0, #0
 8000326:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800032a:	ea41 0105 	orr.w	r1, r1, r5
 800032e:	bd30      	pop	{r4, r5, pc}
 8000330:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8000334:	4140      	adcs	r0, r0
 8000336:	eb41 0101 	adc.w	r1, r1, r1
 800033a:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800033e:	f1a4 0401 	sub.w	r4, r4, #1
 8000342:	d1e9      	bne.n	8000318 <__adddf3+0x10c>
 8000344:	f091 0f00 	teq	r1, #0
 8000348:	bf04      	itt	eq
 800034a:	4601      	moveq	r1, r0
 800034c:	2000      	moveq	r0, #0
 800034e:	fab1 f381 	clz	r3, r1
 8000352:	bf08      	it	eq
 8000354:	3320      	addeq	r3, #32
 8000356:	f1a3 030b 	sub.w	r3, r3, #11
 800035a:	f1b3 0220 	subs.w	r2, r3, #32
 800035e:	da0c      	bge.n	800037a <__adddf3+0x16e>
 8000360:	320c      	adds	r2, #12
 8000362:	dd08      	ble.n	8000376 <__adddf3+0x16a>
 8000364:	f102 0c14 	add.w	ip, r2, #20
 8000368:	f1c2 020c 	rsb	r2, r2, #12
 800036c:	fa01 f00c 	lsl.w	r0, r1, ip
 8000370:	fa21 f102 	lsr.w	r1, r1, r2
 8000374:	e00c      	b.n	8000390 <__adddf3+0x184>
 8000376:	f102 0214 	add.w	r2, r2, #20
 800037a:	bfd8      	it	le
 800037c:	f1c2 0c20 	rsble	ip, r2, #32
 8000380:	fa01 f102 	lsl.w	r1, r1, r2
 8000384:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000388:	bfdc      	itt	le
 800038a:	ea41 010c 	orrle.w	r1, r1, ip
 800038e:	4090      	lslle	r0, r2
 8000390:	1ae4      	subs	r4, r4, r3
 8000392:	bfa2      	ittt	ge
 8000394:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000398:	4329      	orrge	r1, r5
 800039a:	bd30      	popge	{r4, r5, pc}
 800039c:	ea6f 0404 	mvn.w	r4, r4
 80003a0:	3c1f      	subs	r4, #31
 80003a2:	da1c      	bge.n	80003de <__adddf3+0x1d2>
 80003a4:	340c      	adds	r4, #12
 80003a6:	dc0e      	bgt.n	80003c6 <__adddf3+0x1ba>
 80003a8:	f104 0414 	add.w	r4, r4, #20
 80003ac:	f1c4 0220 	rsb	r2, r4, #32
 80003b0:	fa20 f004 	lsr.w	r0, r0, r4
 80003b4:	fa01 f302 	lsl.w	r3, r1, r2
 80003b8:	ea40 0003 	orr.w	r0, r0, r3
 80003bc:	fa21 f304 	lsr.w	r3, r1, r4
 80003c0:	ea45 0103 	orr.w	r1, r5, r3
 80003c4:	bd30      	pop	{r4, r5, pc}
 80003c6:	f1c4 040c 	rsb	r4, r4, #12
 80003ca:	f1c4 0220 	rsb	r2, r4, #32
 80003ce:	fa20 f002 	lsr.w	r0, r0, r2
 80003d2:	fa01 f304 	lsl.w	r3, r1, r4
 80003d6:	ea40 0003 	orr.w	r0, r0, r3
 80003da:	4629      	mov	r1, r5
 80003dc:	bd30      	pop	{r4, r5, pc}
 80003de:	fa21 f004 	lsr.w	r0, r1, r4
 80003e2:	4629      	mov	r1, r5
 80003e4:	bd30      	pop	{r4, r5, pc}
 80003e6:	f094 0f00 	teq	r4, #0
 80003ea:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80003ee:	bf06      	itte	eq
 80003f0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80003f4:	3401      	addeq	r4, #1
 80003f6:	3d01      	subne	r5, #1
 80003f8:	e74e      	b.n	8000298 <__adddf3+0x8c>
 80003fa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80003fe:	bf18      	it	ne
 8000400:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000404:	d029      	beq.n	800045a <__adddf3+0x24e>
 8000406:	ea94 0f05 	teq	r4, r5
 800040a:	bf08      	it	eq
 800040c:	ea90 0f02 	teqeq	r0, r2
 8000410:	d005      	beq.n	800041e <__adddf3+0x212>
 8000412:	ea54 0c00 	orrs.w	ip, r4, r0
 8000416:	bf04      	itt	eq
 8000418:	4619      	moveq	r1, r3
 800041a:	4610      	moveq	r0, r2
 800041c:	bd30      	pop	{r4, r5, pc}
 800041e:	ea91 0f03 	teq	r1, r3
 8000422:	bf1e      	ittt	ne
 8000424:	2100      	movne	r1, #0
 8000426:	2000      	movne	r0, #0
 8000428:	bd30      	popne	{r4, r5, pc}
 800042a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 800042e:	d105      	bne.n	800043c <__adddf3+0x230>
 8000430:	0040      	lsls	r0, r0, #1
 8000432:	4149      	adcs	r1, r1
 8000434:	bf28      	it	cs
 8000436:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 800043a:	bd30      	pop	{r4, r5, pc}
 800043c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000440:	bf3c      	itt	cc
 8000442:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000446:	bd30      	popcc	{r4, r5, pc}
 8000448:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800044c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000450:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000454:	f04f 0000 	mov.w	r0, #0
 8000458:	bd30      	pop	{r4, r5, pc}
 800045a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800045e:	bf1a      	itte	ne
 8000460:	4619      	movne	r1, r3
 8000462:	4610      	movne	r0, r2
 8000464:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000468:	bf1c      	itt	ne
 800046a:	460b      	movne	r3, r1
 800046c:	4602      	movne	r2, r0
 800046e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000472:	bf06      	itte	eq
 8000474:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000478:	ea91 0f03 	teqeq	r1, r3
 800047c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000480:	bd30      	pop	{r4, r5, pc}
 8000482:	bf00      	nop

08000484 <__aeabi_ui2d>:
 8000484:	f090 0f00 	teq	r0, #0
 8000488:	bf04      	itt	eq
 800048a:	2100      	moveq	r1, #0
 800048c:	4770      	bxeq	lr
 800048e:	b530      	push	{r4, r5, lr}
 8000490:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000494:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000498:	f04f 0500 	mov.w	r5, #0
 800049c:	f04f 0100 	mov.w	r1, #0
 80004a0:	e750      	b.n	8000344 <__adddf3+0x138>
 80004a2:	bf00      	nop

080004a4 <__aeabi_i2d>:
 80004a4:	f090 0f00 	teq	r0, #0
 80004a8:	bf04      	itt	eq
 80004aa:	2100      	moveq	r1, #0
 80004ac:	4770      	bxeq	lr
 80004ae:	b530      	push	{r4, r5, lr}
 80004b0:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80004b4:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80004b8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80004bc:	bf48      	it	mi
 80004be:	4240      	negmi	r0, r0
 80004c0:	f04f 0100 	mov.w	r1, #0
 80004c4:	e73e      	b.n	8000344 <__adddf3+0x138>
 80004c6:	bf00      	nop

080004c8 <__aeabi_f2d>:
 80004c8:	0042      	lsls	r2, r0, #1
 80004ca:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80004ce:	ea4f 0131 	mov.w	r1, r1, rrx
 80004d2:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80004d6:	bf1f      	itttt	ne
 80004d8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 80004dc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80004e0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 80004e4:	4770      	bxne	lr
 80004e6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 80004ea:	bf08      	it	eq
 80004ec:	4770      	bxeq	lr
 80004ee:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 80004f2:	bf04      	itt	eq
 80004f4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 80004f8:	4770      	bxeq	lr
 80004fa:	b530      	push	{r4, r5, lr}
 80004fc:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000500:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000504:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000508:	e71c      	b.n	8000344 <__adddf3+0x138>
 800050a:	bf00      	nop

0800050c <__aeabi_ul2d>:
 800050c:	ea50 0201 	orrs.w	r2, r0, r1
 8000510:	bf08      	it	eq
 8000512:	4770      	bxeq	lr
 8000514:	b530      	push	{r4, r5, lr}
 8000516:	f04f 0500 	mov.w	r5, #0
 800051a:	e00a      	b.n	8000532 <__aeabi_l2d+0x16>

0800051c <__aeabi_l2d>:
 800051c:	ea50 0201 	orrs.w	r2, r0, r1
 8000520:	bf08      	it	eq
 8000522:	4770      	bxeq	lr
 8000524:	b530      	push	{r4, r5, lr}
 8000526:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 800052a:	d502      	bpl.n	8000532 <__aeabi_l2d+0x16>
 800052c:	4240      	negs	r0, r0
 800052e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000532:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000536:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800053a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800053e:	f43f aed8 	beq.w	80002f2 <__adddf3+0xe6>
 8000542:	f04f 0203 	mov.w	r2, #3
 8000546:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800054a:	bf18      	it	ne
 800054c:	3203      	addne	r2, #3
 800054e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000552:	bf18      	it	ne
 8000554:	3203      	addne	r2, #3
 8000556:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 800055a:	f1c2 0320 	rsb	r3, r2, #32
 800055e:	fa00 fc03 	lsl.w	ip, r0, r3
 8000562:	fa20 f002 	lsr.w	r0, r0, r2
 8000566:	fa01 fe03 	lsl.w	lr, r1, r3
 800056a:	ea40 000e 	orr.w	r0, r0, lr
 800056e:	fa21 f102 	lsr.w	r1, r1, r2
 8000572:	4414      	add	r4, r2
 8000574:	e6bd      	b.n	80002f2 <__adddf3+0xe6>
 8000576:	bf00      	nop

08000578 <__aeabi_dmul>:
 8000578:	b570      	push	{r4, r5, r6, lr}
 800057a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800057e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000582:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000586:	bf1d      	ittte	ne
 8000588:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 800058c:	ea94 0f0c 	teqne	r4, ip
 8000590:	ea95 0f0c 	teqne	r5, ip
 8000594:	f000 f8de 	bleq	8000754 <__aeabi_dmul+0x1dc>
 8000598:	442c      	add	r4, r5
 800059a:	ea81 0603 	eor.w	r6, r1, r3
 800059e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80005a2:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 80005a6:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 80005aa:	bf18      	it	ne
 80005ac:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80005b0:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80005b4:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80005b8:	d038      	beq.n	800062c <__aeabi_dmul+0xb4>
 80005ba:	fba0 ce02 	umull	ip, lr, r0, r2
 80005be:	f04f 0500 	mov.w	r5, #0
 80005c2:	fbe1 e502 	umlal	lr, r5, r1, r2
 80005c6:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 80005ca:	fbe0 e503 	umlal	lr, r5, r0, r3
 80005ce:	f04f 0600 	mov.w	r6, #0
 80005d2:	fbe1 5603 	umlal	r5, r6, r1, r3
 80005d6:	f09c 0f00 	teq	ip, #0
 80005da:	bf18      	it	ne
 80005dc:	f04e 0e01 	orrne.w	lr, lr, #1
 80005e0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 80005e4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 80005e8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 80005ec:	d204      	bcs.n	80005f8 <__aeabi_dmul+0x80>
 80005ee:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 80005f2:	416d      	adcs	r5, r5
 80005f4:	eb46 0606 	adc.w	r6, r6, r6
 80005f8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 80005fc:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000600:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000604:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000608:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 800060c:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000610:	bf88      	it	hi
 8000612:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000616:	d81e      	bhi.n	8000656 <__aeabi_dmul+0xde>
 8000618:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 800061c:	bf08      	it	eq
 800061e:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000622:	f150 0000 	adcs.w	r0, r0, #0
 8000626:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800062a:	bd70      	pop	{r4, r5, r6, pc}
 800062c:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000630:	ea46 0101 	orr.w	r1, r6, r1
 8000634:	ea40 0002 	orr.w	r0, r0, r2
 8000638:	ea81 0103 	eor.w	r1, r1, r3
 800063c:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000640:	bfc2      	ittt	gt
 8000642:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000646:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 800064a:	bd70      	popgt	{r4, r5, r6, pc}
 800064c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000650:	f04f 0e00 	mov.w	lr, #0
 8000654:	3c01      	subs	r4, #1
 8000656:	f300 80ab 	bgt.w	80007b0 <__aeabi_dmul+0x238>
 800065a:	f114 0f36 	cmn.w	r4, #54	; 0x36
 800065e:	bfde      	ittt	le
 8000660:	2000      	movle	r0, #0
 8000662:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000666:	bd70      	pople	{r4, r5, r6, pc}
 8000668:	f1c4 0400 	rsb	r4, r4, #0
 800066c:	3c20      	subs	r4, #32
 800066e:	da35      	bge.n	80006dc <__aeabi_dmul+0x164>
 8000670:	340c      	adds	r4, #12
 8000672:	dc1b      	bgt.n	80006ac <__aeabi_dmul+0x134>
 8000674:	f104 0414 	add.w	r4, r4, #20
 8000678:	f1c4 0520 	rsb	r5, r4, #32
 800067c:	fa00 f305 	lsl.w	r3, r0, r5
 8000680:	fa20 f004 	lsr.w	r0, r0, r4
 8000684:	fa01 f205 	lsl.w	r2, r1, r5
 8000688:	ea40 0002 	orr.w	r0, r0, r2
 800068c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000690:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000694:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000698:	fa21 f604 	lsr.w	r6, r1, r4
 800069c:	eb42 0106 	adc.w	r1, r2, r6
 80006a0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006a4:	bf08      	it	eq
 80006a6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006aa:	bd70      	pop	{r4, r5, r6, pc}
 80006ac:	f1c4 040c 	rsb	r4, r4, #12
 80006b0:	f1c4 0520 	rsb	r5, r4, #32
 80006b4:	fa00 f304 	lsl.w	r3, r0, r4
 80006b8:	fa20 f005 	lsr.w	r0, r0, r5
 80006bc:	fa01 f204 	lsl.w	r2, r1, r4
 80006c0:	ea40 0002 	orr.w	r0, r0, r2
 80006c4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80006c8:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80006cc:	f141 0100 	adc.w	r1, r1, #0
 80006d0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006d4:	bf08      	it	eq
 80006d6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006da:	bd70      	pop	{r4, r5, r6, pc}
 80006dc:	f1c4 0520 	rsb	r5, r4, #32
 80006e0:	fa00 f205 	lsl.w	r2, r0, r5
 80006e4:	ea4e 0e02 	orr.w	lr, lr, r2
 80006e8:	fa20 f304 	lsr.w	r3, r0, r4
 80006ec:	fa01 f205 	lsl.w	r2, r1, r5
 80006f0:	ea43 0302 	orr.w	r3, r3, r2
 80006f4:	fa21 f004 	lsr.w	r0, r1, r4
 80006f8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80006fc:	fa21 f204 	lsr.w	r2, r1, r4
 8000700:	ea20 0002 	bic.w	r0, r0, r2
 8000704:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000708:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 800070c:	bf08      	it	eq
 800070e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000712:	bd70      	pop	{r4, r5, r6, pc}
 8000714:	f094 0f00 	teq	r4, #0
 8000718:	d10f      	bne.n	800073a <__aeabi_dmul+0x1c2>
 800071a:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 800071e:	0040      	lsls	r0, r0, #1
 8000720:	eb41 0101 	adc.w	r1, r1, r1
 8000724:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000728:	bf08      	it	eq
 800072a:	3c01      	subeq	r4, #1
 800072c:	d0f7      	beq.n	800071e <__aeabi_dmul+0x1a6>
 800072e:	ea41 0106 	orr.w	r1, r1, r6
 8000732:	f095 0f00 	teq	r5, #0
 8000736:	bf18      	it	ne
 8000738:	4770      	bxne	lr
 800073a:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800073e:	0052      	lsls	r2, r2, #1
 8000740:	eb43 0303 	adc.w	r3, r3, r3
 8000744:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000748:	bf08      	it	eq
 800074a:	3d01      	subeq	r5, #1
 800074c:	d0f7      	beq.n	800073e <__aeabi_dmul+0x1c6>
 800074e:	ea43 0306 	orr.w	r3, r3, r6
 8000752:	4770      	bx	lr
 8000754:	ea94 0f0c 	teq	r4, ip
 8000758:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800075c:	bf18      	it	ne
 800075e:	ea95 0f0c 	teqne	r5, ip
 8000762:	d00c      	beq.n	800077e <__aeabi_dmul+0x206>
 8000764:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000768:	bf18      	it	ne
 800076a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800076e:	d1d1      	bne.n	8000714 <__aeabi_dmul+0x19c>
 8000770:	ea81 0103 	eor.w	r1, r1, r3
 8000774:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000778:	f04f 0000 	mov.w	r0, #0
 800077c:	bd70      	pop	{r4, r5, r6, pc}
 800077e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000782:	bf06      	itte	eq
 8000784:	4610      	moveq	r0, r2
 8000786:	4619      	moveq	r1, r3
 8000788:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800078c:	d019      	beq.n	80007c2 <__aeabi_dmul+0x24a>
 800078e:	ea94 0f0c 	teq	r4, ip
 8000792:	d102      	bne.n	800079a <__aeabi_dmul+0x222>
 8000794:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000798:	d113      	bne.n	80007c2 <__aeabi_dmul+0x24a>
 800079a:	ea95 0f0c 	teq	r5, ip
 800079e:	d105      	bne.n	80007ac <__aeabi_dmul+0x234>
 80007a0:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 80007a4:	bf1c      	itt	ne
 80007a6:	4610      	movne	r0, r2
 80007a8:	4619      	movne	r1, r3
 80007aa:	d10a      	bne.n	80007c2 <__aeabi_dmul+0x24a>
 80007ac:	ea81 0103 	eor.w	r1, r1, r3
 80007b0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80007b4:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80007b8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80007bc:	f04f 0000 	mov.w	r0, #0
 80007c0:	bd70      	pop	{r4, r5, r6, pc}
 80007c2:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80007c6:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 80007ca:	bd70      	pop	{r4, r5, r6, pc}

080007cc <__aeabi_ddiv>:
 80007cc:	b570      	push	{r4, r5, r6, lr}
 80007ce:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80007d2:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80007d6:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80007da:	bf1d      	ittte	ne
 80007dc:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80007e0:	ea94 0f0c 	teqne	r4, ip
 80007e4:	ea95 0f0c 	teqne	r5, ip
 80007e8:	f000 f8a7 	bleq	800093a <__aeabi_ddiv+0x16e>
 80007ec:	eba4 0405 	sub.w	r4, r4, r5
 80007f0:	ea81 0e03 	eor.w	lr, r1, r3
 80007f4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80007f8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80007fc:	f000 8088 	beq.w	8000910 <__aeabi_ddiv+0x144>
 8000800:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000804:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000808:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 800080c:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000810:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000814:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000818:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 800081c:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000820:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000824:	429d      	cmp	r5, r3
 8000826:	bf08      	it	eq
 8000828:	4296      	cmpeq	r6, r2
 800082a:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800082e:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000832:	d202      	bcs.n	800083a <__aeabi_ddiv+0x6e>
 8000834:	085b      	lsrs	r3, r3, #1
 8000836:	ea4f 0232 	mov.w	r2, r2, rrx
 800083a:	1ab6      	subs	r6, r6, r2
 800083c:	eb65 0503 	sbc.w	r5, r5, r3
 8000840:	085b      	lsrs	r3, r3, #1
 8000842:	ea4f 0232 	mov.w	r2, r2, rrx
 8000846:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 800084a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 800084e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000852:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000856:	bf22      	ittt	cs
 8000858:	1ab6      	subcs	r6, r6, r2
 800085a:	4675      	movcs	r5, lr
 800085c:	ea40 000c 	orrcs.w	r0, r0, ip
 8000860:	085b      	lsrs	r3, r3, #1
 8000862:	ea4f 0232 	mov.w	r2, r2, rrx
 8000866:	ebb6 0e02 	subs.w	lr, r6, r2
 800086a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800086e:	bf22      	ittt	cs
 8000870:	1ab6      	subcs	r6, r6, r2
 8000872:	4675      	movcs	r5, lr
 8000874:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000878:	085b      	lsrs	r3, r3, #1
 800087a:	ea4f 0232 	mov.w	r2, r2, rrx
 800087e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000882:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000886:	bf22      	ittt	cs
 8000888:	1ab6      	subcs	r6, r6, r2
 800088a:	4675      	movcs	r5, lr
 800088c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000890:	085b      	lsrs	r3, r3, #1
 8000892:	ea4f 0232 	mov.w	r2, r2, rrx
 8000896:	ebb6 0e02 	subs.w	lr, r6, r2
 800089a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800089e:	bf22      	ittt	cs
 80008a0:	1ab6      	subcs	r6, r6, r2
 80008a2:	4675      	movcs	r5, lr
 80008a4:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 80008a8:	ea55 0e06 	orrs.w	lr, r5, r6
 80008ac:	d018      	beq.n	80008e0 <__aeabi_ddiv+0x114>
 80008ae:	ea4f 1505 	mov.w	r5, r5, lsl #4
 80008b2:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 80008b6:	ea4f 1606 	mov.w	r6, r6, lsl #4
 80008ba:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 80008be:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 80008c2:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 80008c6:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 80008ca:	d1c0      	bne.n	800084e <__aeabi_ddiv+0x82>
 80008cc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008d0:	d10b      	bne.n	80008ea <__aeabi_ddiv+0x11e>
 80008d2:	ea41 0100 	orr.w	r1, r1, r0
 80008d6:	f04f 0000 	mov.w	r0, #0
 80008da:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 80008de:	e7b6      	b.n	800084e <__aeabi_ddiv+0x82>
 80008e0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008e4:	bf04      	itt	eq
 80008e6:	4301      	orreq	r1, r0
 80008e8:	2000      	moveq	r0, #0
 80008ea:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 80008ee:	bf88      	it	hi
 80008f0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 80008f4:	f63f aeaf 	bhi.w	8000656 <__aeabi_dmul+0xde>
 80008f8:	ebb5 0c03 	subs.w	ip, r5, r3
 80008fc:	bf04      	itt	eq
 80008fe:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000902:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000906:	f150 0000 	adcs.w	r0, r0, #0
 800090a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800090e:	bd70      	pop	{r4, r5, r6, pc}
 8000910:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000914:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000918:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 800091c:	bfc2      	ittt	gt
 800091e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000922:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000926:	bd70      	popgt	{r4, r5, r6, pc}
 8000928:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800092c:	f04f 0e00 	mov.w	lr, #0
 8000930:	3c01      	subs	r4, #1
 8000932:	e690      	b.n	8000656 <__aeabi_dmul+0xde>
 8000934:	ea45 0e06 	orr.w	lr, r5, r6
 8000938:	e68d      	b.n	8000656 <__aeabi_dmul+0xde>
 800093a:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800093e:	ea94 0f0c 	teq	r4, ip
 8000942:	bf08      	it	eq
 8000944:	ea95 0f0c 	teqeq	r5, ip
 8000948:	f43f af3b 	beq.w	80007c2 <__aeabi_dmul+0x24a>
 800094c:	ea94 0f0c 	teq	r4, ip
 8000950:	d10a      	bne.n	8000968 <__aeabi_ddiv+0x19c>
 8000952:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000956:	f47f af34 	bne.w	80007c2 <__aeabi_dmul+0x24a>
 800095a:	ea95 0f0c 	teq	r5, ip
 800095e:	f47f af25 	bne.w	80007ac <__aeabi_dmul+0x234>
 8000962:	4610      	mov	r0, r2
 8000964:	4619      	mov	r1, r3
 8000966:	e72c      	b.n	80007c2 <__aeabi_dmul+0x24a>
 8000968:	ea95 0f0c 	teq	r5, ip
 800096c:	d106      	bne.n	800097c <__aeabi_ddiv+0x1b0>
 800096e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000972:	f43f aefd 	beq.w	8000770 <__aeabi_dmul+0x1f8>
 8000976:	4610      	mov	r0, r2
 8000978:	4619      	mov	r1, r3
 800097a:	e722      	b.n	80007c2 <__aeabi_dmul+0x24a>
 800097c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000980:	bf18      	it	ne
 8000982:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000986:	f47f aec5 	bne.w	8000714 <__aeabi_dmul+0x19c>
 800098a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800098e:	f47f af0d 	bne.w	80007ac <__aeabi_dmul+0x234>
 8000992:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000996:	f47f aeeb 	bne.w	8000770 <__aeabi_dmul+0x1f8>
 800099a:	e712      	b.n	80007c2 <__aeabi_dmul+0x24a>

0800099c <__gedf2>:
 800099c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 80009a0:	e006      	b.n	80009b0 <__cmpdf2+0x4>
 80009a2:	bf00      	nop

080009a4 <__ledf2>:
 80009a4:	f04f 0c01 	mov.w	ip, #1
 80009a8:	e002      	b.n	80009b0 <__cmpdf2+0x4>
 80009aa:	bf00      	nop

080009ac <__cmpdf2>:
 80009ac:	f04f 0c01 	mov.w	ip, #1
 80009b0:	f84d cd04 	str.w	ip, [sp, #-4]!
 80009b4:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80009b8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80009bc:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80009c0:	bf18      	it	ne
 80009c2:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 80009c6:	d01b      	beq.n	8000a00 <__cmpdf2+0x54>
 80009c8:	b001      	add	sp, #4
 80009ca:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 80009ce:	bf0c      	ite	eq
 80009d0:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 80009d4:	ea91 0f03 	teqne	r1, r3
 80009d8:	bf02      	ittt	eq
 80009da:	ea90 0f02 	teqeq	r0, r2
 80009de:	2000      	moveq	r0, #0
 80009e0:	4770      	bxeq	lr
 80009e2:	f110 0f00 	cmn.w	r0, #0
 80009e6:	ea91 0f03 	teq	r1, r3
 80009ea:	bf58      	it	pl
 80009ec:	4299      	cmppl	r1, r3
 80009ee:	bf08      	it	eq
 80009f0:	4290      	cmpeq	r0, r2
 80009f2:	bf2c      	ite	cs
 80009f4:	17d8      	asrcs	r0, r3, #31
 80009f6:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 80009fa:	f040 0001 	orr.w	r0, r0, #1
 80009fe:	4770      	bx	lr
 8000a00:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000a04:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a08:	d102      	bne.n	8000a10 <__cmpdf2+0x64>
 8000a0a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000a0e:	d107      	bne.n	8000a20 <__cmpdf2+0x74>
 8000a10:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000a14:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a18:	d1d6      	bne.n	80009c8 <__cmpdf2+0x1c>
 8000a1a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000a1e:	d0d3      	beq.n	80009c8 <__cmpdf2+0x1c>
 8000a20:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000a24:	4770      	bx	lr
 8000a26:	bf00      	nop

08000a28 <__aeabi_cdrcmple>:
 8000a28:	4684      	mov	ip, r0
 8000a2a:	4610      	mov	r0, r2
 8000a2c:	4662      	mov	r2, ip
 8000a2e:	468c      	mov	ip, r1
 8000a30:	4619      	mov	r1, r3
 8000a32:	4663      	mov	r3, ip
 8000a34:	e000      	b.n	8000a38 <__aeabi_cdcmpeq>
 8000a36:	bf00      	nop

08000a38 <__aeabi_cdcmpeq>:
 8000a38:	b501      	push	{r0, lr}
 8000a3a:	f7ff ffb7 	bl	80009ac <__cmpdf2>
 8000a3e:	2800      	cmp	r0, #0
 8000a40:	bf48      	it	mi
 8000a42:	f110 0f00 	cmnmi.w	r0, #0
 8000a46:	bd01      	pop	{r0, pc}

08000a48 <__aeabi_dcmpeq>:
 8000a48:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a4c:	f7ff fff4 	bl	8000a38 <__aeabi_cdcmpeq>
 8000a50:	bf0c      	ite	eq
 8000a52:	2001      	moveq	r0, #1
 8000a54:	2000      	movne	r0, #0
 8000a56:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a5a:	bf00      	nop

08000a5c <__aeabi_dcmplt>:
 8000a5c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a60:	f7ff ffea 	bl	8000a38 <__aeabi_cdcmpeq>
 8000a64:	bf34      	ite	cc
 8000a66:	2001      	movcc	r0, #1
 8000a68:	2000      	movcs	r0, #0
 8000a6a:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a6e:	bf00      	nop

08000a70 <__aeabi_dcmple>:
 8000a70:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a74:	f7ff ffe0 	bl	8000a38 <__aeabi_cdcmpeq>
 8000a78:	bf94      	ite	ls
 8000a7a:	2001      	movls	r0, #1
 8000a7c:	2000      	movhi	r0, #0
 8000a7e:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a82:	bf00      	nop

08000a84 <__aeabi_dcmpge>:
 8000a84:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a88:	f7ff ffce 	bl	8000a28 <__aeabi_cdrcmple>
 8000a8c:	bf94      	ite	ls
 8000a8e:	2001      	movls	r0, #1
 8000a90:	2000      	movhi	r0, #0
 8000a92:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a96:	bf00      	nop

08000a98 <__aeabi_dcmpgt>:
 8000a98:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a9c:	f7ff ffc4 	bl	8000a28 <__aeabi_cdrcmple>
 8000aa0:	bf34      	ite	cc
 8000aa2:	2001      	movcc	r0, #1
 8000aa4:	2000      	movcs	r0, #0
 8000aa6:	f85d fb08 	ldr.w	pc, [sp], #8
 8000aaa:	bf00      	nop

08000aac <__aeabi_dcmpun>:
 8000aac:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000ab0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000ab4:	d102      	bne.n	8000abc <__aeabi_dcmpun+0x10>
 8000ab6:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000aba:	d10a      	bne.n	8000ad2 <__aeabi_dcmpun+0x26>
 8000abc:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000ac0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000ac4:	d102      	bne.n	8000acc <__aeabi_dcmpun+0x20>
 8000ac6:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000aca:	d102      	bne.n	8000ad2 <__aeabi_dcmpun+0x26>
 8000acc:	f04f 0000 	mov.w	r0, #0
 8000ad0:	4770      	bx	lr
 8000ad2:	f04f 0001 	mov.w	r0, #1
 8000ad6:	4770      	bx	lr

08000ad8 <__aeabi_uldivmod>:
 8000ad8:	b953      	cbnz	r3, 8000af0 <__aeabi_uldivmod+0x18>
 8000ada:	b94a      	cbnz	r2, 8000af0 <__aeabi_uldivmod+0x18>
 8000adc:	2900      	cmp	r1, #0
 8000ade:	bf08      	it	eq
 8000ae0:	2800      	cmpeq	r0, #0
 8000ae2:	bf1c      	itt	ne
 8000ae4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000ae8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000aec:	f000 b972 	b.w	8000dd4 <__aeabi_idiv0>
 8000af0:	f1ad 0c08 	sub.w	ip, sp, #8
 8000af4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000af8:	f000 f806 	bl	8000b08 <__udivmoddi4>
 8000afc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b00:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b04:	b004      	add	sp, #16
 8000b06:	4770      	bx	lr

08000b08 <__udivmoddi4>:
 8000b08:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b0c:	9e08      	ldr	r6, [sp, #32]
 8000b0e:	4604      	mov	r4, r0
 8000b10:	4688      	mov	r8, r1
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	d14b      	bne.n	8000bae <__udivmoddi4+0xa6>
 8000b16:	428a      	cmp	r2, r1
 8000b18:	4615      	mov	r5, r2
 8000b1a:	d967      	bls.n	8000bec <__udivmoddi4+0xe4>
 8000b1c:	fab2 f282 	clz	r2, r2
 8000b20:	b14a      	cbz	r2, 8000b36 <__udivmoddi4+0x2e>
 8000b22:	f1c2 0720 	rsb	r7, r2, #32
 8000b26:	fa01 f302 	lsl.w	r3, r1, r2
 8000b2a:	fa20 f707 	lsr.w	r7, r0, r7
 8000b2e:	4095      	lsls	r5, r2
 8000b30:	ea47 0803 	orr.w	r8, r7, r3
 8000b34:	4094      	lsls	r4, r2
 8000b36:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b3a:	0c23      	lsrs	r3, r4, #16
 8000b3c:	fbb8 f7fe 	udiv	r7, r8, lr
 8000b40:	fa1f fc85 	uxth.w	ip, r5
 8000b44:	fb0e 8817 	mls	r8, lr, r7, r8
 8000b48:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000b4c:	fb07 f10c 	mul.w	r1, r7, ip
 8000b50:	4299      	cmp	r1, r3
 8000b52:	d909      	bls.n	8000b68 <__udivmoddi4+0x60>
 8000b54:	18eb      	adds	r3, r5, r3
 8000b56:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000b5a:	f080 811b 	bcs.w	8000d94 <__udivmoddi4+0x28c>
 8000b5e:	4299      	cmp	r1, r3
 8000b60:	f240 8118 	bls.w	8000d94 <__udivmoddi4+0x28c>
 8000b64:	3f02      	subs	r7, #2
 8000b66:	442b      	add	r3, r5
 8000b68:	1a5b      	subs	r3, r3, r1
 8000b6a:	b2a4      	uxth	r4, r4
 8000b6c:	fbb3 f0fe 	udiv	r0, r3, lr
 8000b70:	fb0e 3310 	mls	r3, lr, r0, r3
 8000b74:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000b78:	fb00 fc0c 	mul.w	ip, r0, ip
 8000b7c:	45a4      	cmp	ip, r4
 8000b7e:	d909      	bls.n	8000b94 <__udivmoddi4+0x8c>
 8000b80:	192c      	adds	r4, r5, r4
 8000b82:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000b86:	f080 8107 	bcs.w	8000d98 <__udivmoddi4+0x290>
 8000b8a:	45a4      	cmp	ip, r4
 8000b8c:	f240 8104 	bls.w	8000d98 <__udivmoddi4+0x290>
 8000b90:	3802      	subs	r0, #2
 8000b92:	442c      	add	r4, r5
 8000b94:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000b98:	eba4 040c 	sub.w	r4, r4, ip
 8000b9c:	2700      	movs	r7, #0
 8000b9e:	b11e      	cbz	r6, 8000ba8 <__udivmoddi4+0xa0>
 8000ba0:	40d4      	lsrs	r4, r2
 8000ba2:	2300      	movs	r3, #0
 8000ba4:	e9c6 4300 	strd	r4, r3, [r6]
 8000ba8:	4639      	mov	r1, r7
 8000baa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bae:	428b      	cmp	r3, r1
 8000bb0:	d909      	bls.n	8000bc6 <__udivmoddi4+0xbe>
 8000bb2:	2e00      	cmp	r6, #0
 8000bb4:	f000 80eb 	beq.w	8000d8e <__udivmoddi4+0x286>
 8000bb8:	2700      	movs	r7, #0
 8000bba:	e9c6 0100 	strd	r0, r1, [r6]
 8000bbe:	4638      	mov	r0, r7
 8000bc0:	4639      	mov	r1, r7
 8000bc2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bc6:	fab3 f783 	clz	r7, r3
 8000bca:	2f00      	cmp	r7, #0
 8000bcc:	d147      	bne.n	8000c5e <__udivmoddi4+0x156>
 8000bce:	428b      	cmp	r3, r1
 8000bd0:	d302      	bcc.n	8000bd8 <__udivmoddi4+0xd0>
 8000bd2:	4282      	cmp	r2, r0
 8000bd4:	f200 80fa 	bhi.w	8000dcc <__udivmoddi4+0x2c4>
 8000bd8:	1a84      	subs	r4, r0, r2
 8000bda:	eb61 0303 	sbc.w	r3, r1, r3
 8000bde:	2001      	movs	r0, #1
 8000be0:	4698      	mov	r8, r3
 8000be2:	2e00      	cmp	r6, #0
 8000be4:	d0e0      	beq.n	8000ba8 <__udivmoddi4+0xa0>
 8000be6:	e9c6 4800 	strd	r4, r8, [r6]
 8000bea:	e7dd      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000bec:	b902      	cbnz	r2, 8000bf0 <__udivmoddi4+0xe8>
 8000bee:	deff      	udf	#255	; 0xff
 8000bf0:	fab2 f282 	clz	r2, r2
 8000bf4:	2a00      	cmp	r2, #0
 8000bf6:	f040 808f 	bne.w	8000d18 <__udivmoddi4+0x210>
 8000bfa:	1b49      	subs	r1, r1, r5
 8000bfc:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c00:	fa1f f885 	uxth.w	r8, r5
 8000c04:	2701      	movs	r7, #1
 8000c06:	fbb1 fcfe 	udiv	ip, r1, lr
 8000c0a:	0c23      	lsrs	r3, r4, #16
 8000c0c:	fb0e 111c 	mls	r1, lr, ip, r1
 8000c10:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000c14:	fb08 f10c 	mul.w	r1, r8, ip
 8000c18:	4299      	cmp	r1, r3
 8000c1a:	d907      	bls.n	8000c2c <__udivmoddi4+0x124>
 8000c1c:	18eb      	adds	r3, r5, r3
 8000c1e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000c22:	d202      	bcs.n	8000c2a <__udivmoddi4+0x122>
 8000c24:	4299      	cmp	r1, r3
 8000c26:	f200 80cd 	bhi.w	8000dc4 <__udivmoddi4+0x2bc>
 8000c2a:	4684      	mov	ip, r0
 8000c2c:	1a59      	subs	r1, r3, r1
 8000c2e:	b2a3      	uxth	r3, r4
 8000c30:	fbb1 f0fe 	udiv	r0, r1, lr
 8000c34:	fb0e 1410 	mls	r4, lr, r0, r1
 8000c38:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000c3c:	fb08 f800 	mul.w	r8, r8, r0
 8000c40:	45a0      	cmp	r8, r4
 8000c42:	d907      	bls.n	8000c54 <__udivmoddi4+0x14c>
 8000c44:	192c      	adds	r4, r5, r4
 8000c46:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c4a:	d202      	bcs.n	8000c52 <__udivmoddi4+0x14a>
 8000c4c:	45a0      	cmp	r8, r4
 8000c4e:	f200 80b6 	bhi.w	8000dbe <__udivmoddi4+0x2b6>
 8000c52:	4618      	mov	r0, r3
 8000c54:	eba4 0408 	sub.w	r4, r4, r8
 8000c58:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000c5c:	e79f      	b.n	8000b9e <__udivmoddi4+0x96>
 8000c5e:	f1c7 0c20 	rsb	ip, r7, #32
 8000c62:	40bb      	lsls	r3, r7
 8000c64:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000c68:	ea4e 0e03 	orr.w	lr, lr, r3
 8000c6c:	fa01 f407 	lsl.w	r4, r1, r7
 8000c70:	fa20 f50c 	lsr.w	r5, r0, ip
 8000c74:	fa21 f30c 	lsr.w	r3, r1, ip
 8000c78:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000c7c:	4325      	orrs	r5, r4
 8000c7e:	fbb3 f9f8 	udiv	r9, r3, r8
 8000c82:	0c2c      	lsrs	r4, r5, #16
 8000c84:	fb08 3319 	mls	r3, r8, r9, r3
 8000c88:	fa1f fa8e 	uxth.w	sl, lr
 8000c8c:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000c90:	fb09 f40a 	mul.w	r4, r9, sl
 8000c94:	429c      	cmp	r4, r3
 8000c96:	fa02 f207 	lsl.w	r2, r2, r7
 8000c9a:	fa00 f107 	lsl.w	r1, r0, r7
 8000c9e:	d90b      	bls.n	8000cb8 <__udivmoddi4+0x1b0>
 8000ca0:	eb1e 0303 	adds.w	r3, lr, r3
 8000ca4:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000ca8:	f080 8087 	bcs.w	8000dba <__udivmoddi4+0x2b2>
 8000cac:	429c      	cmp	r4, r3
 8000cae:	f240 8084 	bls.w	8000dba <__udivmoddi4+0x2b2>
 8000cb2:	f1a9 0902 	sub.w	r9, r9, #2
 8000cb6:	4473      	add	r3, lr
 8000cb8:	1b1b      	subs	r3, r3, r4
 8000cba:	b2ad      	uxth	r5, r5
 8000cbc:	fbb3 f0f8 	udiv	r0, r3, r8
 8000cc0:	fb08 3310 	mls	r3, r8, r0, r3
 8000cc4:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000cc8:	fb00 fa0a 	mul.w	sl, r0, sl
 8000ccc:	45a2      	cmp	sl, r4
 8000cce:	d908      	bls.n	8000ce2 <__udivmoddi4+0x1da>
 8000cd0:	eb1e 0404 	adds.w	r4, lr, r4
 8000cd4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000cd8:	d26b      	bcs.n	8000db2 <__udivmoddi4+0x2aa>
 8000cda:	45a2      	cmp	sl, r4
 8000cdc:	d969      	bls.n	8000db2 <__udivmoddi4+0x2aa>
 8000cde:	3802      	subs	r0, #2
 8000ce0:	4474      	add	r4, lr
 8000ce2:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000ce6:	fba0 8902 	umull	r8, r9, r0, r2
 8000cea:	eba4 040a 	sub.w	r4, r4, sl
 8000cee:	454c      	cmp	r4, r9
 8000cf0:	46c2      	mov	sl, r8
 8000cf2:	464b      	mov	r3, r9
 8000cf4:	d354      	bcc.n	8000da0 <__udivmoddi4+0x298>
 8000cf6:	d051      	beq.n	8000d9c <__udivmoddi4+0x294>
 8000cf8:	2e00      	cmp	r6, #0
 8000cfa:	d069      	beq.n	8000dd0 <__udivmoddi4+0x2c8>
 8000cfc:	ebb1 050a 	subs.w	r5, r1, sl
 8000d00:	eb64 0403 	sbc.w	r4, r4, r3
 8000d04:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000d08:	40fd      	lsrs	r5, r7
 8000d0a:	40fc      	lsrs	r4, r7
 8000d0c:	ea4c 0505 	orr.w	r5, ip, r5
 8000d10:	e9c6 5400 	strd	r5, r4, [r6]
 8000d14:	2700      	movs	r7, #0
 8000d16:	e747      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000d18:	f1c2 0320 	rsb	r3, r2, #32
 8000d1c:	fa20 f703 	lsr.w	r7, r0, r3
 8000d20:	4095      	lsls	r5, r2
 8000d22:	fa01 f002 	lsl.w	r0, r1, r2
 8000d26:	fa21 f303 	lsr.w	r3, r1, r3
 8000d2a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000d2e:	4338      	orrs	r0, r7
 8000d30:	0c01      	lsrs	r1, r0, #16
 8000d32:	fbb3 f7fe 	udiv	r7, r3, lr
 8000d36:	fa1f f885 	uxth.w	r8, r5
 8000d3a:	fb0e 3317 	mls	r3, lr, r7, r3
 8000d3e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d42:	fb07 f308 	mul.w	r3, r7, r8
 8000d46:	428b      	cmp	r3, r1
 8000d48:	fa04 f402 	lsl.w	r4, r4, r2
 8000d4c:	d907      	bls.n	8000d5e <__udivmoddi4+0x256>
 8000d4e:	1869      	adds	r1, r5, r1
 8000d50:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000d54:	d22f      	bcs.n	8000db6 <__udivmoddi4+0x2ae>
 8000d56:	428b      	cmp	r3, r1
 8000d58:	d92d      	bls.n	8000db6 <__udivmoddi4+0x2ae>
 8000d5a:	3f02      	subs	r7, #2
 8000d5c:	4429      	add	r1, r5
 8000d5e:	1acb      	subs	r3, r1, r3
 8000d60:	b281      	uxth	r1, r0
 8000d62:	fbb3 f0fe 	udiv	r0, r3, lr
 8000d66:	fb0e 3310 	mls	r3, lr, r0, r3
 8000d6a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d6e:	fb00 f308 	mul.w	r3, r0, r8
 8000d72:	428b      	cmp	r3, r1
 8000d74:	d907      	bls.n	8000d86 <__udivmoddi4+0x27e>
 8000d76:	1869      	adds	r1, r5, r1
 8000d78:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000d7c:	d217      	bcs.n	8000dae <__udivmoddi4+0x2a6>
 8000d7e:	428b      	cmp	r3, r1
 8000d80:	d915      	bls.n	8000dae <__udivmoddi4+0x2a6>
 8000d82:	3802      	subs	r0, #2
 8000d84:	4429      	add	r1, r5
 8000d86:	1ac9      	subs	r1, r1, r3
 8000d88:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000d8c:	e73b      	b.n	8000c06 <__udivmoddi4+0xfe>
 8000d8e:	4637      	mov	r7, r6
 8000d90:	4630      	mov	r0, r6
 8000d92:	e709      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000d94:	4607      	mov	r7, r0
 8000d96:	e6e7      	b.n	8000b68 <__udivmoddi4+0x60>
 8000d98:	4618      	mov	r0, r3
 8000d9a:	e6fb      	b.n	8000b94 <__udivmoddi4+0x8c>
 8000d9c:	4541      	cmp	r1, r8
 8000d9e:	d2ab      	bcs.n	8000cf8 <__udivmoddi4+0x1f0>
 8000da0:	ebb8 0a02 	subs.w	sl, r8, r2
 8000da4:	eb69 020e 	sbc.w	r2, r9, lr
 8000da8:	3801      	subs	r0, #1
 8000daa:	4613      	mov	r3, r2
 8000dac:	e7a4      	b.n	8000cf8 <__udivmoddi4+0x1f0>
 8000dae:	4660      	mov	r0, ip
 8000db0:	e7e9      	b.n	8000d86 <__udivmoddi4+0x27e>
 8000db2:	4618      	mov	r0, r3
 8000db4:	e795      	b.n	8000ce2 <__udivmoddi4+0x1da>
 8000db6:	4667      	mov	r7, ip
 8000db8:	e7d1      	b.n	8000d5e <__udivmoddi4+0x256>
 8000dba:	4681      	mov	r9, r0
 8000dbc:	e77c      	b.n	8000cb8 <__udivmoddi4+0x1b0>
 8000dbe:	3802      	subs	r0, #2
 8000dc0:	442c      	add	r4, r5
 8000dc2:	e747      	b.n	8000c54 <__udivmoddi4+0x14c>
 8000dc4:	f1ac 0c02 	sub.w	ip, ip, #2
 8000dc8:	442b      	add	r3, r5
 8000dca:	e72f      	b.n	8000c2c <__udivmoddi4+0x124>
 8000dcc:	4638      	mov	r0, r7
 8000dce:	e708      	b.n	8000be2 <__udivmoddi4+0xda>
 8000dd0:	4637      	mov	r7, r6
 8000dd2:	e6e9      	b.n	8000ba8 <__udivmoddi4+0xa0>

08000dd4 <__aeabi_idiv0>:
 8000dd4:	4770      	bx	lr
 8000dd6:	bf00      	nop

08000dd8 <memcpy>:
 8000dd8:	4684      	mov	ip, r0
 8000dda:	ea41 0300 	orr.w	r3, r1, r0
 8000dde:	f013 0303 	ands.w	r3, r3, #3
 8000de2:	d16d      	bne.n	8000ec0 <memcpy+0xe8>
 8000de4:	3a40      	subs	r2, #64	; 0x40
 8000de6:	d341      	bcc.n	8000e6c <memcpy+0x94>
 8000de8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dec:	f840 3b04 	str.w	r3, [r0], #4
 8000df0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000df4:	f840 3b04 	str.w	r3, [r0], #4
 8000df8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dfc:	f840 3b04 	str.w	r3, [r0], #4
 8000e00:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e04:	f840 3b04 	str.w	r3, [r0], #4
 8000e08:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e0c:	f840 3b04 	str.w	r3, [r0], #4
 8000e10:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e14:	f840 3b04 	str.w	r3, [r0], #4
 8000e18:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e1c:	f840 3b04 	str.w	r3, [r0], #4
 8000e20:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e24:	f840 3b04 	str.w	r3, [r0], #4
 8000e28:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e2c:	f840 3b04 	str.w	r3, [r0], #4
 8000e30:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e34:	f840 3b04 	str.w	r3, [r0], #4
 8000e38:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e3c:	f840 3b04 	str.w	r3, [r0], #4
 8000e40:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e44:	f840 3b04 	str.w	r3, [r0], #4
 8000e48:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e4c:	f840 3b04 	str.w	r3, [r0], #4
 8000e50:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e54:	f840 3b04 	str.w	r3, [r0], #4
 8000e58:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e5c:	f840 3b04 	str.w	r3, [r0], #4
 8000e60:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e64:	f840 3b04 	str.w	r3, [r0], #4
 8000e68:	3a40      	subs	r2, #64	; 0x40
 8000e6a:	d2bd      	bcs.n	8000de8 <memcpy+0x10>
 8000e6c:	3230      	adds	r2, #48	; 0x30
 8000e6e:	d311      	bcc.n	8000e94 <memcpy+0xbc>
 8000e70:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e74:	f840 3b04 	str.w	r3, [r0], #4
 8000e78:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e7c:	f840 3b04 	str.w	r3, [r0], #4
 8000e80:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e84:	f840 3b04 	str.w	r3, [r0], #4
 8000e88:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e8c:	f840 3b04 	str.w	r3, [r0], #4
 8000e90:	3a10      	subs	r2, #16
 8000e92:	d2ed      	bcs.n	8000e70 <memcpy+0x98>
 8000e94:	320c      	adds	r2, #12
 8000e96:	d305      	bcc.n	8000ea4 <memcpy+0xcc>
 8000e98:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e9c:	f840 3b04 	str.w	r3, [r0], #4
 8000ea0:	3a04      	subs	r2, #4
 8000ea2:	d2f9      	bcs.n	8000e98 <memcpy+0xc0>
 8000ea4:	3204      	adds	r2, #4
 8000ea6:	d008      	beq.n	8000eba <memcpy+0xe2>
 8000ea8:	07d2      	lsls	r2, r2, #31
 8000eaa:	bf1c      	itt	ne
 8000eac:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000eb0:	f800 3b01 	strbne.w	r3, [r0], #1
 8000eb4:	d301      	bcc.n	8000eba <memcpy+0xe2>
 8000eb6:	880b      	ldrh	r3, [r1, #0]
 8000eb8:	8003      	strh	r3, [r0, #0]
 8000eba:	4660      	mov	r0, ip
 8000ebc:	4770      	bx	lr
 8000ebe:	bf00      	nop
 8000ec0:	2a08      	cmp	r2, #8
 8000ec2:	d313      	bcc.n	8000eec <memcpy+0x114>
 8000ec4:	078b      	lsls	r3, r1, #30
 8000ec6:	d08d      	beq.n	8000de4 <memcpy+0xc>
 8000ec8:	f010 0303 	ands.w	r3, r0, #3
 8000ecc:	d08a      	beq.n	8000de4 <memcpy+0xc>
 8000ece:	f1c3 0304 	rsb	r3, r3, #4
 8000ed2:	1ad2      	subs	r2, r2, r3
 8000ed4:	07db      	lsls	r3, r3, #31
 8000ed6:	bf1c      	itt	ne
 8000ed8:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000edc:	f800 3b01 	strbne.w	r3, [r0], #1
 8000ee0:	d380      	bcc.n	8000de4 <memcpy+0xc>
 8000ee2:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000ee6:	f820 3b02 	strh.w	r3, [r0], #2
 8000eea:	e77b      	b.n	8000de4 <memcpy+0xc>
 8000eec:	3a04      	subs	r2, #4
 8000eee:	d3d9      	bcc.n	8000ea4 <memcpy+0xcc>
 8000ef0:	3a01      	subs	r2, #1
 8000ef2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000ef6:	f800 3b01 	strb.w	r3, [r0], #1
 8000efa:	d2f9      	bcs.n	8000ef0 <memcpy+0x118>
 8000efc:	780b      	ldrb	r3, [r1, #0]
 8000efe:	7003      	strb	r3, [r0, #0]
 8000f00:	784b      	ldrb	r3, [r1, #1]
 8000f02:	7043      	strb	r3, [r0, #1]
 8000f04:	788b      	ldrb	r3, [r1, #2]
 8000f06:	7083      	strb	r3, [r0, #2]
 8000f08:	4660      	mov	r0, ip
 8000f0a:	4770      	bx	lr
	...

08000f40 <strlen>:
 8000f40:	f890 f000 	pld	[r0]
 8000f44:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000f48:	f020 0107 	bic.w	r1, r0, #7
 8000f4c:	f06f 0c00 	mvn.w	ip, #0
 8000f50:	f010 0407 	ands.w	r4, r0, #7
 8000f54:	f891 f020 	pld	[r1, #32]
 8000f58:	f040 8049 	bne.w	8000fee <strlen+0xae>
 8000f5c:	f04f 0400 	mov.w	r4, #0
 8000f60:	f06f 0007 	mvn.w	r0, #7
 8000f64:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000f68:	f891 f040 	pld	[r1, #64]	; 0x40
 8000f6c:	f100 0008 	add.w	r0, r0, #8
 8000f70:	fa82 f24c 	uadd8	r2, r2, ip
 8000f74:	faa4 f28c 	sel	r2, r4, ip
 8000f78:	fa83 f34c 	uadd8	r3, r3, ip
 8000f7c:	faa2 f38c 	sel	r3, r2, ip
 8000f80:	bb4b      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000f82:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000f86:	fa82 f24c 	uadd8	r2, r2, ip
 8000f8a:	f100 0008 	add.w	r0, r0, #8
 8000f8e:	faa4 f28c 	sel	r2, r4, ip
 8000f92:	fa83 f34c 	uadd8	r3, r3, ip
 8000f96:	faa2 f38c 	sel	r3, r2, ip
 8000f9a:	b9e3      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000f9c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000fa0:	fa82 f24c 	uadd8	r2, r2, ip
 8000fa4:	f100 0008 	add.w	r0, r0, #8
 8000fa8:	faa4 f28c 	sel	r2, r4, ip
 8000fac:	fa83 f34c 	uadd8	r3, r3, ip
 8000fb0:	faa2 f38c 	sel	r3, r2, ip
 8000fb4:	b97b      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000fb6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8000fba:	f101 0120 	add.w	r1, r1, #32
 8000fbe:	fa82 f24c 	uadd8	r2, r2, ip
 8000fc2:	f100 0008 	add.w	r0, r0, #8
 8000fc6:	faa4 f28c 	sel	r2, r4, ip
 8000fca:	fa83 f34c 	uadd8	r3, r3, ip
 8000fce:	faa2 f38c 	sel	r3, r2, ip
 8000fd2:	2b00      	cmp	r3, #0
 8000fd4:	d0c6      	beq.n	8000f64 <strlen+0x24>
 8000fd6:	2a00      	cmp	r2, #0
 8000fd8:	bf04      	itt	eq
 8000fda:	3004      	addeq	r0, #4
 8000fdc:	461a      	moveq	r2, r3
 8000fde:	ba12      	rev	r2, r2
 8000fe0:	fab2 f282 	clz	r2, r2
 8000fe4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8000fe8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8000fec:	4770      	bx	lr
 8000fee:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000ff2:	f004 0503 	and.w	r5, r4, #3
 8000ff6:	f1c4 0000 	rsb	r0, r4, #0
 8000ffa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8000ffe:	f014 0f04 	tst.w	r4, #4
 8001002:	f891 f040 	pld	[r1, #64]	; 0x40
 8001006:	fa0c f505 	lsl.w	r5, ip, r5
 800100a:	ea62 0205 	orn	r2, r2, r5
 800100e:	bf1c      	itt	ne
 8001010:	ea63 0305 	ornne	r3, r3, r5
 8001014:	4662      	movne	r2, ip
 8001016:	f04f 0400 	mov.w	r4, #0
 800101a:	e7a9      	b.n	8000f70 <strlen+0x30>
 800101c:	0000      	movs	r0, r0
	...

08001020 <memchr>:
 8001020:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8001024:	2a10      	cmp	r2, #16
 8001026:	db2b      	blt.n	8001080 <memchr+0x60>
 8001028:	f010 0f07 	tst.w	r0, #7
 800102c:	d008      	beq.n	8001040 <memchr+0x20>
 800102e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001032:	3a01      	subs	r2, #1
 8001034:	428b      	cmp	r3, r1
 8001036:	d02d      	beq.n	8001094 <memchr+0x74>
 8001038:	f010 0f07 	tst.w	r0, #7
 800103c:	b342      	cbz	r2, 8001090 <memchr+0x70>
 800103e:	d1f6      	bne.n	800102e <memchr+0xe>
 8001040:	b4f0      	push	{r4, r5, r6, r7}
 8001042:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8001046:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800104a:	f022 0407 	bic.w	r4, r2, #7
 800104e:	f07f 0700 	mvns.w	r7, #0
 8001052:	2300      	movs	r3, #0
 8001054:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8001058:	3c08      	subs	r4, #8
 800105a:	ea85 0501 	eor.w	r5, r5, r1
 800105e:	ea86 0601 	eor.w	r6, r6, r1
 8001062:	fa85 f547 	uadd8	r5, r5, r7
 8001066:	faa3 f587 	sel	r5, r3, r7
 800106a:	fa86 f647 	uadd8	r6, r6, r7
 800106e:	faa5 f687 	sel	r6, r5, r7
 8001072:	b98e      	cbnz	r6, 8001098 <memchr+0x78>
 8001074:	d1ee      	bne.n	8001054 <memchr+0x34>
 8001076:	bcf0      	pop	{r4, r5, r6, r7}
 8001078:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800107c:	f002 0207 	and.w	r2, r2, #7
 8001080:	b132      	cbz	r2, 8001090 <memchr+0x70>
 8001082:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001086:	3a01      	subs	r2, #1
 8001088:	ea83 0301 	eor.w	r3, r3, r1
 800108c:	b113      	cbz	r3, 8001094 <memchr+0x74>
 800108e:	d1f8      	bne.n	8001082 <memchr+0x62>
 8001090:	2000      	movs	r0, #0
 8001092:	4770      	bx	lr
 8001094:	3801      	subs	r0, #1
 8001096:	4770      	bx	lr
 8001098:	2d00      	cmp	r5, #0
 800109a:	bf06      	itte	eq
 800109c:	4635      	moveq	r5, r6
 800109e:	3803      	subeq	r0, #3
 80010a0:	3807      	subne	r0, #7
 80010a2:	f015 0f01 	tst.w	r5, #1
 80010a6:	d107      	bne.n	80010b8 <memchr+0x98>
 80010a8:	3001      	adds	r0, #1
 80010aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80010ae:	bf02      	ittt	eq
 80010b0:	3001      	addeq	r0, #1
 80010b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80010b6:	3001      	addeq	r0, #1
 80010b8:	bcf0      	pop	{r4, r5, r6, r7}
 80010ba:	3801      	subs	r0, #1
 80010bc:	4770      	bx	lr
 80010be:	bf00      	nop

080010c0 <__aeabi_d2iz>:
 80010c0:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80010c4:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80010c8:	d215      	bcs.n	80010f6 <__aeabi_d2iz+0x36>
 80010ca:	d511      	bpl.n	80010f0 <__aeabi_d2iz+0x30>
 80010cc:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80010d0:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80010d4:	d912      	bls.n	80010fc <__aeabi_d2iz+0x3c>
 80010d6:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80010da:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80010de:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80010e2:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80010e6:	fa23 f002 	lsr.w	r0, r3, r2
 80010ea:	bf18      	it	ne
 80010ec:	4240      	negne	r0, r0
 80010ee:	4770      	bx	lr
 80010f0:	f04f 0000 	mov.w	r0, #0
 80010f4:	4770      	bx	lr
 80010f6:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80010fa:	d105      	bne.n	8001108 <__aeabi_d2iz+0x48>
 80010fc:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8001100:	bf08      	it	eq
 8001102:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8001106:	4770      	bx	lr
 8001108:	f04f 0000 	mov.w	r0, #0
 800110c:	4770      	bx	lr
 800110e:	bf00      	nop

08001110 <HAL_Init>:
 8001110:	b580      	push	{r7, lr}
 8001112:	466f      	mov	r7, sp
 8001114:	2003      	movs	r0, #3
 8001116:	f000 f819 	bl	800114c <HAL_NVIC_SetPriorityGrouping>
 800111a:	200f      	movs	r0, #15
 800111c:	f000 fb84 	bl	8001828 <HAL_InitTick>
 8001120:	2800      	cmp	r0, #0
 8001122:	bf1c      	itt	ne
 8001124:	2001      	movne	r0, #1
 8001126:	bd80      	popne	{r7, pc}
 8001128:	f000 f94b 	bl	80013c2 <HAL_MspInit>
 800112c:	2000      	movs	r0, #0
 800112e:	bd80      	pop	{r7, pc}

08001130 <HAL_IncTick>:
 8001130:	f640 30e8 	movw	r0, #3048	; 0xbe8
 8001134:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001138:	6801      	ldr	r1, [r0, #0]
 800113a:	3101      	adds	r1, #1
 800113c:	6001      	str	r1, [r0, #0]
 800113e:	4770      	bx	lr

08001140 <HAL_GetTick>:
 8001140:	f640 30e8 	movw	r0, #3048	; 0xbe8
 8001144:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001148:	6800      	ldr	r0, [r0, #0]
 800114a:	4770      	bx	lr

0800114c <HAL_NVIC_SetPriorityGrouping>:
 800114c:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001150:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001154:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001158:	680a      	ldr	r2, [r1, #0]
 800115a:	401a      	ands	r2, r3
 800115c:	f360 220a 	bfi	r2, r0, #8, #3
 8001160:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001164:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001168:	6008      	str	r0, [r1, #0]
 800116a:	4770      	bx	lr

0800116c <HAL_NVIC_SetPriority>:
 800116c:	b580      	push	{r7, lr}
 800116e:	466f      	mov	r7, sp
 8001170:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001174:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001178:	2800      	cmp	r0, #0
 800117a:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800117e:	f000 030f 	and.w	r3, r0, #15
 8001182:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001186:	f1a3 0304 	sub.w	r3, r3, #4
 800118a:	4473      	add	r3, lr
 800118c:	bfb8      	it	lt
 800118e:	f103 0c0c 	addlt.w	ip, r3, #12
 8001192:	f8de 0000 	ldr.w	r0, [lr]
 8001196:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800119a:	f100 0e04 	add.w	lr, r0, #4
 800119e:	1ec3      	subs	r3, r0, #3
 80011a0:	f080 0007 	eor.w	r0, r0, #7
 80011a4:	f1be 0f07 	cmp.w	lr, #7
 80011a8:	f04f 0e01 	mov.w	lr, #1
 80011ac:	bf38      	it	cc
 80011ae:	2300      	movcc	r3, #0
 80011b0:	2804      	cmp	r0, #4
 80011b2:	bf28      	it	cs
 80011b4:	2004      	movcs	r0, #4
 80011b6:	fa0e f000 	lsl.w	r0, lr, r0
 80011ba:	3801      	subs	r0, #1
 80011bc:	4008      	ands	r0, r1
 80011be:	fa0e f103 	lsl.w	r1, lr, r3
 80011c2:	310f      	adds	r1, #15
 80011c4:	4098      	lsls	r0, r3
 80011c6:	4011      	ands	r1, r2
 80011c8:	4308      	orrs	r0, r1
 80011ca:	0100      	lsls	r0, r0, #4
 80011cc:	f88c 0000 	strb.w	r0, [ip]
 80011d0:	bd80      	pop	{r7, pc}

080011d2 <HAL_NVIC_EnableIRQ>:
 80011d2:	f000 011f 	and.w	r1, r0, #31
 80011d6:	2201      	movs	r2, #1
 80011d8:	0940      	lsrs	r0, r0, #5
 80011da:	fa02 f101 	lsl.w	r1, r2, r1
 80011de:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011e2:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011e6:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011ea:	4770      	bx	lr

080011ec <HAL_SYSTICK_IRQHandler>:
 80011ec:	f000 b800 	b.w	80011f0 <HAL_SYSTICK_Callback>

080011f0 <HAL_SYSTICK_Callback>:
 80011f0:	4770      	bx	lr

080011f2 <HAL_GPIO_Init>:
 80011f2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011f4:	af03      	add	r7, sp, #12
 80011f6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011fa:	b082      	sub	sp, #8
 80011fc:	680e      	ldr	r6, [r1, #0]
 80011fe:	2e00      	cmp	r6, #0
 8001200:	f000 80db 	beq.w	80013ba <HAL_GPIO_Init+0x1c8>
 8001204:	f641 0200 	movw	r2, #6144	; 0x1800
 8001208:	2507      	movs	r5, #7
 800120a:	f04f 0801 	mov.w	r8, #1
 800120e:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001212:	4290      	cmp	r0, r2
 8001214:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001218:	ea4f 23b2 	mov.w	r3, r2, ror #10
 800121c:	bf08      	it	eq
 800121e:	2506      	moveq	r5, #6
 8001220:	2b06      	cmp	r3, #6
 8001222:	bf38      	it	cc
 8001224:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001228:	2200      	movs	r2, #0
 800122a:	9500      	str	r5, [sp, #0]
 800122c:	2500      	movs	r5, #0
 800122e:	f1a8 0a01 	sub.w	sl, r8, #1
 8001232:	2301      	movs	r3, #1
 8001234:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001238:	ea16 090b 	ands.w	r9, r6, fp
 800123c:	f000 80b4 	beq.w	80013a8 <HAL_GPIO_Init+0x1b6>
 8001240:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001244:	f04e 0610 	orr.w	r6, lr, #16
 8001248:	2e12      	cmp	r6, #18
 800124a:	d115      	bne.n	8001278 <HAL_GPIO_Init+0x86>
 800124c:	f005 061c 	and.w	r6, r5, #28
 8001250:	230f      	movs	r3, #15
 8001252:	fa03 fc06 	lsl.w	ip, r3, r6
 8001256:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 800125a:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125e:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001262:	4404      	add	r4, r0
 8001264:	6a23      	ldr	r3, [r4, #32]
 8001266:	ea23 0c0c 	bic.w	ip, r3, ip
 800126a:	690b      	ldr	r3, [r1, #16]
 800126c:	40b3      	lsls	r3, r6
 800126e:	ea43 030c 	orr.w	r3, r3, ip
 8001272:	6223      	str	r3, [r4, #32]
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
 8001298:	6003      	str	r3, [r0, #0]
 800129a:	d816      	bhi.n	80012ca <HAL_GPIO_Init+0xd8>
 800129c:	2301      	movs	r3, #1
 800129e:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a2:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a6:	bf1f      	itttt	ne
 80012a8:	6883      	ldrne	r3, [r0, #8]
 80012aa:	4033      	andne	r3, r6
 80012ac:	68cc      	ldrne	r4, [r1, #12]
 80012ae:	4094      	lslne	r4, r2
 80012b0:	bf1f      	itttt	ne
 80012b2:	4323      	orrne	r3, r4
 80012b4:	6083      	strne	r3, [r0, #8]
 80012b6:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012ba:	fa03 f30a 	lslne.w	r3, r3, sl
 80012be:	bf1f      	itttt	ne
 80012c0:	6844      	ldrne	r4, [r0, #4]
 80012c2:	ea24 040b 	bicne.w	r4, r4, fp
 80012c6:	4323      	orrne	r3, r4
 80012c8:	6043      	strne	r3, [r0, #4]
 80012ca:	f1bc 0f03 	cmp.w	ip, #3
 80012ce:	d108      	bne.n	80012e2 <HAL_GPIO_Init+0xf0>
 80012d0:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012d4:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012d6:	fa03 f30a 	lsl.w	r3, r3, sl
 80012da:	ea24 040b 	bic.w	r4, r4, fp
 80012de:	4323      	orrs	r3, r4
 80012e0:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012e2:	68c3      	ldr	r3, [r0, #12]
 80012e4:	4033      	ands	r3, r6
 80012e6:	688e      	ldr	r6, [r1, #8]
 80012e8:	4096      	lsls	r6, r2
 80012ea:	4333      	orrs	r3, r6
 80012ec:	60c3      	str	r3, [r0, #12]
 80012ee:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012f2:	d559      	bpl.n	80013a8 <HAL_GPIO_Init+0x1b6>
 80012f4:	f241 0360 	movw	r3, #4192	; 0x1060
 80012f8:	f005 040c 	and.w	r4, r5, #12
 80012fc:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001300:	461e      	mov	r6, r3
 8001302:	6833      	ldr	r3, [r6, #0]
 8001304:	f043 0301 	orr.w	r3, r3, #1
 8001308:	6033      	str	r3, [r6, #0]
 800130a:	6833      	ldr	r3, [r6, #0]
 800130c:	f240 4600 	movw	r6, #1024	; 0x400
 8001310:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001314:	46b6      	mov	lr, r6
 8001316:	f003 0301 	and.w	r3, r3, #1
 800131a:	9301      	str	r3, [sp, #4]
 800131c:	f02a 0303 	bic.w	r3, sl, #3
 8001320:	9e01      	ldr	r6, [sp, #4]
 8001322:	4473      	add	r3, lr
 8001324:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001328:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800132c:	46b2      	mov	sl, r6
 800132e:	260f      	movs	r6, #15
 8001330:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001334:	40a6      	lsls	r6, r4
 8001336:	ea2c 0c06 	bic.w	ip, ip, r6
 800133a:	9e00      	ldr	r6, [sp, #0]
 800133c:	fa06 f404 	lsl.w	r4, r6, r4
 8001340:	ea4c 0604 	orr.w	r6, ip, r4
 8001344:	f843 600a 	str.w	r6, [r3, sl]
 8001348:	f8de 3000 	ldr.w	r3, [lr]
 800134c:	684e      	ldr	r6, [r1, #4]
 800134e:	ea23 0309 	bic.w	r3, r3, r9
 8001352:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001356:	bf18      	it	ne
 8001358:	ea43 0309 	orrne.w	r3, r3, r9
 800135c:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001360:	f8ce 3000 	str.w	r3, [lr]
 8001364:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001368:	ea23 0309 	bic.w	r3, r3, r9
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001376:	f8ce 3004 	str.w	r3, [lr, #4]
 800137a:	f8de 3008 	ldr.w	r3, [lr, #8]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800138c:	f8ce 3008 	str.w	r3, [lr, #8]
 8001390:	f240 430c 	movw	r3, #1036	; 0x40c
 8001394:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001398:	461c      	mov	r4, r3
 800139a:	6823      	ldr	r3, [r4, #0]
 800139c:	ea23 0309 	bic.w	r3, r3, r9
 80013a0:	bf18      	it	ne
 80013a2:	ea43 0309 	orrne.w	r3, r3, r9
 80013a6:	6023      	str	r3, [r4, #0]
 80013a8:	680e      	ldr	r6, [r1, #0]
 80013aa:	3202      	adds	r2, #2
 80013ac:	3504      	adds	r5, #4
 80013ae:	fa36 f308 	lsrs.w	r3, r6, r8
 80013b2:	f108 0801 	add.w	r8, r8, #1
 80013b6:	f47f af3a 	bne.w	800122e <HAL_GPIO_Init+0x3c>
 80013ba:	b002      	add	sp, #8
 80013bc:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013c0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013c2 <HAL_MspInit>:
 80013c2:	4770      	bx	lr

080013c4 <HAL_RCC_GetSysClockFreq>:
 80013c4:	b580      	push	{r7, lr}
 80013c6:	466f      	mov	r7, sp
 80013c8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013cc:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013d0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013d4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013d8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013dc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013e0:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013e4:	6808      	ldr	r0, [r1, #0]
 80013e6:	f012 030c 	ands.w	r3, r2, #12
 80013ea:	d005      	beq.n	80013f8 <HAL_RCC_GetSysClockFreq+0x34>
 80013ec:	2b0c      	cmp	r3, #12
 80013ee:	bf04      	itt	eq
 80013f0:	f000 0003 	andeq.w	r0, r0, #3
 80013f4:	2801      	cmpeq	r0, #1
 80013f6:	d118      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x66>
 80013f8:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013fc:	f010 0f08 	tst.w	r0, #8
 8001400:	d103      	bne.n	800140a <HAL_RCC_GetSysClockFreq+0x46>
 8001402:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001406:	0a00      	lsrs	r0, r0, #8
 8001408:	e002      	b.n	8001410 <HAL_RCC_GetSysClockFreq+0x4c>
 800140a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800140e:	0900      	lsrs	r0, r0, #4
 8001410:	f247 6240 	movw	r2, #30272	; 0x7640
 8001414:	f000 000f 	and.w	r0, r0, #15
 8001418:	2b00      	cmp	r3, #0
 800141a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800141e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001422:	4610      	mov	r0, r2
 8001424:	bf18      	it	ne
 8001426:	2000      	movne	r0, #0
 8001428:	e00b      	b.n	8001442 <HAL_RCC_GetSysClockFreq+0x7e>
 800142a:	f003 000f 	and.w	r0, r3, #15
 800142e:	2804      	cmp	r0, #4
 8001430:	bf04      	itt	eq
 8001432:	4660      	moveq	r0, ip
 8001434:	bd80      	popeq	{r7, pc}
 8001436:	2808      	cmp	r0, #8
 8001438:	bf04      	itt	eq
 800143a:	4670      	moveq	r0, lr
 800143c:	bd80      	popeq	{r7, pc}
 800143e:	2000      	movs	r0, #0
 8001440:	2200      	movs	r2, #0
 8001442:	2b0c      	cmp	r3, #12
 8001444:	bf18      	it	ne
 8001446:	bd80      	popne	{r7, pc}
 8001448:	6808      	ldr	r0, [r1, #0]
 800144a:	f000 0303 	and.w	r3, r0, #3
 800144e:	6808      	ldr	r0, [r1, #0]
 8001450:	2b03      	cmp	r3, #3
 8001452:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001456:	f100 0001 	add.w	r0, r0, #1
 800145a:	d003      	beq.n	8001464 <HAL_RCC_GetSysClockFreq+0xa0>
 800145c:	2b02      	cmp	r3, #2
 800145e:	46e6      	mov	lr, ip
 8001460:	bf18      	it	ne
 8001462:	4696      	movne	lr, r2
 8001464:	680a      	ldr	r2, [r1, #0]
 8001466:	fbbe f0f0 	udiv	r0, lr, r0
 800146a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800146e:	6809      	ldr	r1, [r1, #0]
 8001470:	4350      	muls	r0, r2
 8001472:	2202      	movs	r2, #2
 8001474:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001478:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800147c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001480:	bd80      	pop	{r7, pc}

08001482 <HAL_RCC_GetPCLK1Freq>:
 8001482:	f240 1058 	movw	r0, #344	; 0x158
 8001486:	f241 0108 	movw	r1, #4104	; 0x1008
 800148a:	f247 6238 	movw	r2, #30264	; 0x7638
 800148e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001492:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001496:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149a:	6800      	ldr	r0, [r0, #0]
 800149c:	6809      	ldr	r1, [r1, #0]
 800149e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014a2:	5c51      	ldrb	r1, [r2, r1]
 80014a4:	f001 011f 	and.w	r1, r1, #31
 80014a8:	40c8      	lsrs	r0, r1
 80014aa:	4770      	bx	lr

080014ac <HAL_RCC_GetPCLK2Freq>:
 80014ac:	f240 1058 	movw	r0, #344	; 0x158
 80014b0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014b4:	f247 6238 	movw	r2, #30264	; 0x7638
 80014b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014bc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014c0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014c4:	6800      	ldr	r0, [r0, #0]
 80014c6:	6809      	ldr	r1, [r1, #0]
 80014c8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014cc:	5c51      	ldrb	r1, [r2, r1]
 80014ce:	f001 011f 	and.w	r1, r1, #31
 80014d2:	40c8      	lsrs	r0, r1
 80014d4:	4770      	bx	lr

080014d6 <HAL_RCC_GetClockConfig>:
 80014d6:	220f      	movs	r2, #15
 80014d8:	6002      	str	r2, [r0, #0]
 80014da:	f241 0208 	movw	r2, #4104	; 0x1008
 80014de:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014e2:	6813      	ldr	r3, [r2, #0]
 80014e4:	f003 0303 	and.w	r3, r3, #3
 80014e8:	6043      	str	r3, [r0, #4]
 80014ea:	6813      	ldr	r3, [r2, #0]
 80014ec:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014f0:	6083      	str	r3, [r0, #8]
 80014f2:	6813      	ldr	r3, [r2, #0]
 80014f4:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014f8:	60c3      	str	r3, [r0, #12]
 80014fa:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014fe:	6812      	ldr	r2, [r2, #0]
 8001500:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001504:	6102      	str	r2, [r0, #16]
 8001506:	f242 0000 	movw	r0, #8192	; 0x2000
 800150a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800150e:	6800      	ldr	r0, [r0, #0]
 8001510:	f000 0007 	and.w	r0, r0, #7
 8001514:	6008      	str	r0, [r1, #0]
 8001516:	4770      	bx	lr

08001518 <HAL_TIM_Base_Init>:
 8001518:	b5d0      	push	{r4, r6, r7, lr}
 800151a:	af02      	add	r7, sp, #8
 800151c:	4604      	mov	r4, r0
 800151e:	2c00      	cmp	r4, #0
 8001520:	bf04      	itt	eq
 8001522:	2001      	moveq	r0, #1
 8001524:	bdd0      	popeq	{r4, r6, r7, pc}
 8001526:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001528:	b920      	cbnz	r0, 8001534 <HAL_TIM_Base_Init+0x1c>
 800152a:	2000      	movs	r0, #0
 800152c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800152e:	4620      	mov	r0, r4
 8001530:	f000 f892 	bl	8001658 <HAL_TIM_Base_MspInit>
 8001534:	2002      	movs	r0, #2
 8001536:	f640 32ff 	movw	r2, #3071	; 0xbff
 800153a:	6420      	str	r0, [r4, #64]	; 0x40
 800153c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001540:	6820      	ldr	r0, [r4, #0]
 8001542:	6801      	ldr	r1, [r0, #0]
 8001544:	4290      	cmp	r0, r2
 8001546:	dc0f      	bgt.n	8001568 <HAL_TIM_Base_Init+0x50>
 8001548:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800154c:	bf1e      	ittt	ne
 800154e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001552:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001556:	4290      	cmpne	r0, r2
 8001558:	d018      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 800155a:	f640 0200 	movw	r2, #2048	; 0x800
 800155e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001562:	4290      	cmp	r0, r2
 8001564:	d012      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 8001566:	e015      	b.n	8001594 <HAL_TIM_Base_Init+0x7c>
 8001568:	f640 4200 	movw	r2, #3072	; 0xc00
 800156c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001570:	4290      	cmp	r0, r2
 8001572:	bf1e      	ittt	ne
 8001574:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001578:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800157c:	4290      	cmpne	r0, r2
 800157e:	d005      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 8001580:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001584:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001588:	4290      	cmp	r0, r2
 800158a:	d103      	bne.n	8001594 <HAL_TIM_Base_Init+0x7c>
 800158c:	68a2      	ldr	r2, [r4, #8]
 800158e:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001592:	4311      	orrs	r1, r2
 8001594:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001598:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800159c:	4290      	cmp	r0, r2
 800159e:	dd14      	ble.n	80015ca <HAL_TIM_Base_Init+0xb2>
 80015a0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	dd1a      	ble.n	80015e2 <HAL_TIM_Base_Init+0xca>
 80015ac:	f244 0200 	movw	r2, #16384	; 0x4000
 80015b0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015b4:	4290      	cmp	r0, r2
 80015b6:	bf1e      	ittt	ne
 80015b8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015bc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015c0:	4290      	cmpne	r0, r2
 80015c2:	d027      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015c4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015c8:	e013      	b.n	80015f2 <HAL_TIM_Base_Init+0xda>
 80015ca:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ce:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015d2:	4290      	cmp	r0, r2
 80015d4:	dc12      	bgt.n	80015fc <HAL_TIM_Base_Init+0xe4>
 80015d6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015da:	d01b      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015dc:	f240 4200 	movw	r2, #1024	; 0x400
 80015e0:	e014      	b.n	800160c <HAL_TIM_Base_Init+0xf4>
 80015e2:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015e6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ea:	4290      	cmp	r0, r2
 80015ec:	d012      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015ee:	f243 4200 	movw	r2, #13312	; 0x3400
 80015f2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015f6:	4290      	cmp	r0, r2
 80015f8:	d00c      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015fa:	e00f      	b.n	800161c <HAL_TIM_Base_Init+0x104>
 80015fc:	f640 0200 	movw	r2, #2048	; 0x800
 8001600:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001604:	4290      	cmp	r0, r2
 8001606:	d005      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 8001608:	f640 4200 	movw	r2, #3072	; 0xc00
 800160c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001610:	4290      	cmp	r0, r2
 8001612:	d103      	bne.n	800161c <HAL_TIM_Base_Init+0x104>
 8001614:	6922      	ldr	r2, [r4, #16]
 8001616:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800161a:	4311      	orrs	r1, r2
 800161c:	69a2      	ldr	r2, [r4, #24]
 800161e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001622:	4311      	orrs	r1, r2
 8001624:	6001      	str	r1, [r0, #0]
 8001626:	68e1      	ldr	r1, [r4, #12]
 8001628:	62c1      	str	r1, [r0, #44]	; 0x2c
 800162a:	6861      	ldr	r1, [r4, #4]
 800162c:	6281      	str	r1, [r0, #40]	; 0x28
 800162e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001632:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001636:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800163a:	2907      	cmp	r1, #7
 800163c:	d807      	bhi.n	800164e <HAL_TIM_Base_Init+0x136>
 800163e:	2201      	movs	r2, #1
 8001640:	fa02 f101 	lsl.w	r1, r2, r1
 8001644:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001648:	bf1c      	itt	ne
 800164a:	6961      	ldrne	r1, [r4, #20]
 800164c:	6301      	strne	r1, [r0, #48]	; 0x30
 800164e:	2101      	movs	r1, #1
 8001650:	6141      	str	r1, [r0, #20]
 8001652:	2000      	movs	r0, #0
 8001654:	6421      	str	r1, [r4, #64]	; 0x40
 8001656:	bdd0      	pop	{r4, r6, r7, pc}

08001658 <HAL_TIM_Base_MspInit>:
 8001658:	4770      	bx	lr

0800165a <HAL_TIM_Base_Start_IT>:
 800165a:	6800      	ldr	r0, [r0, #0]
 800165c:	68c1      	ldr	r1, [r0, #12]
 800165e:	f041 0101 	orr.w	r1, r1, #1
 8001662:	60c1      	str	r1, [r0, #12]
 8001664:	2107      	movs	r1, #7
 8001666:	6882      	ldr	r2, [r0, #8]
 8001668:	f2c0 0101 	movt	r1, #1
 800166c:	400a      	ands	r2, r1
 800166e:	2a06      	cmp	r2, #6
 8001670:	d008      	beq.n	8001684 <HAL_TIM_Base_Start_IT+0x2a>
 8001672:	6882      	ldr	r2, [r0, #8]
 8001674:	4011      	ands	r1, r2
 8001676:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800167a:	bf1e      	ittt	ne
 800167c:	6801      	ldrne	r1, [r0, #0]
 800167e:	f041 0101 	orrne.w	r1, r1, #1
 8001682:	6001      	strne	r1, [r0, #0]
 8001684:	2000      	movs	r0, #0
 8001686:	4770      	bx	lr

08001688 <HAL_TIM_IRQHandler>:
 8001688:	b5d0      	push	{r4, r6, r7, lr}
 800168a:	af02      	add	r7, sp, #8
 800168c:	4604      	mov	r4, r0
 800168e:	6820      	ldr	r0, [r4, #0]
 8001690:	6901      	ldr	r1, [r0, #16]
 8001692:	f011 0f02 	tst.w	r1, #2
 8001696:	bf1c      	itt	ne
 8001698:	68c1      	ldrne	r1, [r0, #12]
 800169a:	f011 0f02 	tstne.w	r1, #2
 800169e:	d015      	beq.n	80016cc <HAL_TIM_IRQHandler+0x44>
 80016a0:	f06f 0102 	mvn.w	r1, #2
 80016a4:	6101      	str	r1, [r0, #16]
 80016a6:	2101      	movs	r1, #1
 80016a8:	61e1      	str	r1, [r4, #28]
 80016aa:	6980      	ldr	r0, [r0, #24]
 80016ac:	f010 0f03 	tst.w	r0, #3
 80016b0:	d003      	beq.n	80016ba <HAL_TIM_IRQHandler+0x32>
 80016b2:	4620      	mov	r0, r4
 80016b4:	f000 f8b1 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 80016b8:	e005      	b.n	80016c6 <HAL_TIM_IRQHandler+0x3e>
 80016ba:	4620      	mov	r0, r4
 80016bc:	f000 f8ae 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 80016c0:	4620      	mov	r0, r4
 80016c2:	f000 f8ac 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 80016c6:	2000      	movs	r0, #0
 80016c8:	61e0      	str	r0, [r4, #28]
 80016ca:	6820      	ldr	r0, [r4, #0]
 80016cc:	6901      	ldr	r1, [r0, #16]
 80016ce:	f011 0f04 	tst.w	r1, #4
 80016d2:	bf1c      	itt	ne
 80016d4:	68c1      	ldrne	r1, [r0, #12]
 80016d6:	f011 0f04 	tstne.w	r1, #4
 80016da:	d015      	beq.n	8001708 <HAL_TIM_IRQHandler+0x80>
 80016dc:	f06f 0104 	mvn.w	r1, #4
 80016e0:	6101      	str	r1, [r0, #16]
 80016e2:	2102      	movs	r1, #2
 80016e4:	61e1      	str	r1, [r4, #28]
 80016e6:	6980      	ldr	r0, [r0, #24]
 80016e8:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016ec:	d003      	beq.n	80016f6 <HAL_TIM_IRQHandler+0x6e>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f893 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 80016f4:	e005      	b.n	8001702 <HAL_TIM_IRQHandler+0x7a>
 80016f6:	4620      	mov	r0, r4
 80016f8:	f000 f890 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 80016fc:	4620      	mov	r0, r4
 80016fe:	f000 f88e 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 8001702:	2000      	movs	r0, #0
 8001704:	61e0      	str	r0, [r4, #28]
 8001706:	6820      	ldr	r0, [r4, #0]
 8001708:	6901      	ldr	r1, [r0, #16]
 800170a:	f011 0f08 	tst.w	r1, #8
 800170e:	bf1c      	itt	ne
 8001710:	68c1      	ldrne	r1, [r0, #12]
 8001712:	f011 0f08 	tstne.w	r1, #8
 8001716:	d015      	beq.n	8001744 <HAL_TIM_IRQHandler+0xbc>
 8001718:	f06f 0108 	mvn.w	r1, #8
 800171c:	6101      	str	r1, [r0, #16]
 800171e:	2104      	movs	r1, #4
 8001720:	61e1      	str	r1, [r4, #28]
 8001722:	69c0      	ldr	r0, [r0, #28]
 8001724:	f010 0f03 	tst.w	r0, #3
 8001728:	d003      	beq.n	8001732 <HAL_TIM_IRQHandler+0xaa>
 800172a:	4620      	mov	r0, r4
 800172c:	f000 f875 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 8001730:	e005      	b.n	800173e <HAL_TIM_IRQHandler+0xb6>
 8001732:	4620      	mov	r0, r4
 8001734:	f000 f872 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 8001738:	4620      	mov	r0, r4
 800173a:	f000 f870 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 800173e:	2000      	movs	r0, #0
 8001740:	61e0      	str	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f10 	tst.w	r1, #16
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f10 	tstne.w	r1, #16
 8001752:	d015      	beq.n	8001780 <HAL_TIM_IRQHandler+0xf8>
 8001754:	f06f 0110 	mvn.w	r1, #16
 8001758:	6101      	str	r1, [r0, #16]
 800175a:	2108      	movs	r1, #8
 800175c:	61e1      	str	r1, [r4, #28]
 800175e:	69c0      	ldr	r0, [r0, #28]
 8001760:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001764:	d003      	beq.n	800176e <HAL_TIM_IRQHandler+0xe6>
 8001766:	4620      	mov	r0, r4
 8001768:	f000 f857 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 800176c:	e005      	b.n	800177a <HAL_TIM_IRQHandler+0xf2>
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f854 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 8001774:	4620      	mov	r0, r4
 8001776:	f000 f852 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 800177a:	2000      	movs	r0, #0
 800177c:	61e0      	str	r0, [r4, #28]
 800177e:	6820      	ldr	r0, [r4, #0]
 8001780:	6901      	ldr	r1, [r0, #16]
 8001782:	f011 0f01 	tst.w	r1, #1
 8001786:	bf1c      	itt	ne
 8001788:	68c1      	ldrne	r1, [r0, #12]
 800178a:	f011 0f01 	tstne.w	r1, #1
 800178e:	d006      	beq.n	800179e <HAL_TIM_IRQHandler+0x116>
 8001790:	f06f 0101 	mvn.w	r1, #1
 8001794:	6101      	str	r1, [r0, #16]
 8001796:	4620      	mov	r0, r4
 8001798:	f000 f894 	bl	80018c4 <HAL_TIM_PeriodElapsedCallback>
 800179c:	6820      	ldr	r0, [r4, #0]
 800179e:	6901      	ldr	r1, [r0, #16]
 80017a0:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017a4:	bf1c      	itt	ne
 80017a6:	68c1      	ldrne	r1, [r0, #12]
 80017a8:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017ac:	d006      	beq.n	80017bc <HAL_TIM_IRQHandler+0x134>
 80017ae:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017b2:	6101      	str	r1, [r0, #16]
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f835 	bl	8001824 <HAL_TIMEx_BreakCallback>
 80017ba:	6820      	ldr	r0, [r4, #0]
 80017bc:	6901      	ldr	r1, [r0, #16]
 80017be:	f411 7f80 	tst.w	r1, #256	; 0x100
 80017c2:	bf1c      	itt	ne
 80017c4:	68c1      	ldrne	r1, [r0, #12]
 80017c6:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017ca:	d006      	beq.n	80017da <HAL_TIM_IRQHandler+0x152>
 80017cc:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017d0:	6101      	str	r1, [r0, #16]
 80017d2:	4620      	mov	r0, r4
 80017d4:	f000 f827 	bl	8001826 <HAL_TIMEx_Break2Callback>
 80017d8:	6820      	ldr	r0, [r4, #0]
 80017da:	6901      	ldr	r1, [r0, #16]
 80017dc:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017e0:	bf1c      	itt	ne
 80017e2:	68c1      	ldrne	r1, [r0, #12]
 80017e4:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017e8:	d006      	beq.n	80017f8 <HAL_TIM_IRQHandler+0x170>
 80017ea:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017ee:	6101      	str	r1, [r0, #16]
 80017f0:	4620      	mov	r0, r4
 80017f2:	f000 f815 	bl	8001820 <HAL_TIM_TriggerCallback>
 80017f6:	6820      	ldr	r0, [r4, #0]
 80017f8:	6901      	ldr	r1, [r0, #16]
 80017fa:	f011 0f20 	tst.w	r1, #32
 80017fe:	bf1c      	itt	ne
 8001800:	68c1      	ldrne	r1, [r0, #12]
 8001802:	f011 0f20 	tstne.w	r1, #32
 8001806:	d100      	bne.n	800180a <HAL_TIM_IRQHandler+0x182>
 8001808:	bdd0      	pop	{r4, r6, r7, pc}
 800180a:	f06f 0120 	mvn.w	r1, #32
 800180e:	6101      	str	r1, [r0, #16]
 8001810:	4620      	mov	r0, r4
 8001812:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001816:	f000 b804 	b.w	8001822 <HAL_TIMEx_CommutationCallback>

0800181a <HAL_TIM_IC_CaptureCallback>:
 800181a:	4770      	bx	lr

0800181c <HAL_TIM_OC_DelayElapsedCallback>:
 800181c:	4770      	bx	lr

0800181e <HAL_TIM_PWM_PulseFinishedCallback>:
 800181e:	4770      	bx	lr

08001820 <HAL_TIM_TriggerCallback>:
 8001820:	4770      	bx	lr

08001822 <HAL_TIMEx_CommutationCallback>:
 8001822:	4770      	bx	lr

08001824 <HAL_TIMEx_BreakCallback>:
 8001824:	4770      	bx	lr

08001826 <HAL_TIMEx_Break2Callback>:
 8001826:	4770      	bx	lr

08001828 <HAL_InitTick>:
 8001828:	b5b0      	push	{r4, r5, r7, lr}
 800182a:	af02      	add	r7, sp, #8
 800182c:	b086      	sub	sp, #24
 800182e:	4601      	mov	r1, r0
 8001830:	2036      	movs	r0, #54	; 0x36
 8001832:	2200      	movs	r2, #0
 8001834:	2400      	movs	r4, #0
 8001836:	f7ff fc99 	bl	800116c <HAL_NVIC_SetPriority>
 800183a:	2036      	movs	r0, #54	; 0x36
 800183c:	f7ff fcc9 	bl	80011d2 <HAL_NVIC_EnableIRQ>
 8001840:	f241 0058 	movw	r0, #4184	; 0x1058
 8001844:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001848:	6801      	ldr	r1, [r0, #0]
 800184a:	f041 0110 	orr.w	r1, r1, #16
 800184e:	6001      	str	r1, [r0, #0]
 8001850:	4669      	mov	r1, sp
 8001852:	6800      	ldr	r0, [r0, #0]
 8001854:	f000 0010 	and.w	r0, r0, #16
 8001858:	9001      	str	r0, [sp, #4]
 800185a:	9801      	ldr	r0, [sp, #4]
 800185c:	a801      	add	r0, sp, #4
 800185e:	f7ff fe3a 	bl	80014d6 <HAL_RCC_GetClockConfig>
 8001862:	9d04      	ldr	r5, [sp, #16]
 8001864:	f7ff fe0d 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001868:	2d00      	cmp	r5, #0
 800186a:	f640 31ec 	movw	r1, #3052	; 0xbec
 800186e:	f241 0200 	movw	r2, #4096	; 0x1000
 8001872:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001876:	bf18      	it	ne
 8001878:	2501      	movne	r5, #1
 800187a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800187e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001882:	40a8      	lsls	r0, r5
 8001884:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001888:	618c      	str	r4, [r1, #24]
 800188a:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800188e:	fba0 0505 	umull	r0, r5, r0, r5
 8001892:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001896:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 800189a:	e9c1 2000 	strd	r2, r0, [r1]
 800189e:	4608      	mov	r0, r1
 80018a0:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018a4:	610c      	str	r4, [r1, #16]
 80018a6:	f7ff fe37 	bl	8001518 <HAL_TIM_Base_Init>
 80018aa:	2800      	cmp	r0, #0
 80018ac:	bf1e      	ittt	ne
 80018ae:	2001      	movne	r0, #1
 80018b0:	b006      	addne	sp, #24
 80018b2:	bdb0      	popne	{r4, r5, r7, pc}
 80018b4:	f640 30ec 	movw	r0, #3052	; 0xbec
 80018b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018bc:	f7ff fecd 	bl	800165a <HAL_TIM_Base_Start_IT>
 80018c0:	b006      	add	sp, #24
 80018c2:	bdb0      	pop	{r4, r5, r7, pc}

080018c4 <HAL_TIM_PeriodElapsedCallback>:
 80018c4:	f7ff bc34 	b.w	8001130 <HAL_IncTick>

080018c8 <TIM6_DAC_IRQHandler>:
 80018c8:	f640 30ec 	movw	r0, #3052	; 0xbec
 80018cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018d0:	f7ff beda 	b.w	8001688 <HAL_TIM_IRQHandler>

080018d4 <HAL_UART_Init>:
 80018d4:	b5d0      	push	{r4, r6, r7, lr}
 80018d6:	af02      	add	r7, sp, #8
 80018d8:	4604      	mov	r4, r0
 80018da:	b194      	cbz	r4, 8001902 <HAL_UART_Init+0x2e>
 80018dc:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018de:	b920      	cbnz	r0, 80018ea <HAL_UART_Init+0x16>
 80018e0:	2000      	movs	r0, #0
 80018e2:	6720      	str	r0, [r4, #112]	; 0x70
 80018e4:	4620      	mov	r0, r4
 80018e6:	f000 f826 	bl	8001936 <HAL_UART_MspInit>
 80018ea:	2024      	movs	r0, #36	; 0x24
 80018ec:	6760      	str	r0, [r4, #116]	; 0x74
 80018ee:	6820      	ldr	r0, [r4, #0]
 80018f0:	6801      	ldr	r1, [r0, #0]
 80018f2:	f021 0101 	bic.w	r1, r1, #1
 80018f6:	6001      	str	r1, [r0, #0]
 80018f8:	4620      	mov	r0, r4
 80018fa:	f000 f81d 	bl	8001938 <UART_SetConfig>
 80018fe:	2801      	cmp	r0, #1
 8001900:	d101      	bne.n	8001906 <HAL_UART_Init+0x32>
 8001902:	2001      	movs	r0, #1
 8001904:	bdd0      	pop	{r4, r6, r7, pc}
 8001906:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001908:	2800      	cmp	r0, #0
 800190a:	bf1c      	itt	ne
 800190c:	4620      	movne	r0, r4
 800190e:	f000 f944 	blne	8001b9a <UART_AdvFeatureConfig>
 8001912:	6820      	ldr	r0, [r4, #0]
 8001914:	6841      	ldr	r1, [r0, #4]
 8001916:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 800191a:	6041      	str	r1, [r0, #4]
 800191c:	6881      	ldr	r1, [r0, #8]
 800191e:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001922:	6081      	str	r1, [r0, #8]
 8001924:	6801      	ldr	r1, [r0, #0]
 8001926:	f041 0101 	orr.w	r1, r1, #1
 800192a:	6001      	str	r1, [r0, #0]
 800192c:	4620      	mov	r0, r4
 800192e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001932:	f000 b99d 	b.w	8001c70 <UART_CheckIdleState>

08001936 <HAL_UART_MspInit>:
 8001936:	4770      	bx	lr

08001938 <UART_SetConfig>:
 8001938:	b5b0      	push	{r4, r5, r7, lr}
 800193a:	af02      	add	r7, sp, #8
 800193c:	4604      	mov	r4, r0
 800193e:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001942:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001946:	f241 0c88 	movw	ip, #4232	; 0x1088
 800194a:	6821      	ldr	r1, [r4, #0]
 800194c:	68a0      	ldr	r0, [r4, #8]
 800194e:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001952:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001956:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 800195a:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 800195e:	4310      	orrs	r0, r2
 8001960:	69e2      	ldr	r2, [r4, #28]
 8001962:	4571      	cmp	r1, lr
 8001964:	ea40 0003 	orr.w	r0, r0, r3
 8001968:	680b      	ldr	r3, [r1, #0]
 800196a:	ea40 0002 	orr.w	r0, r0, r2
 800196e:	ea03 0305 	and.w	r3, r3, r5
 8001972:	f04f 0510 	mov.w	r5, #16
 8001976:	ea40 0003 	orr.w	r0, r0, r3
 800197a:	6008      	str	r0, [r1, #0]
 800197c:	6848      	ldr	r0, [r1, #4]
 800197e:	68e3      	ldr	r3, [r4, #12]
 8001980:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001984:	ea40 0003 	orr.w	r0, r0, r3
 8001988:	6048      	str	r0, [r1, #4]
 800198a:	69a0      	ldr	r0, [r4, #24]
 800198c:	bf1c      	itt	ne
 800198e:	6a23      	ldrne	r3, [r4, #32]
 8001990:	4318      	orrne	r0, r3
 8001992:	688b      	ldr	r3, [r1, #8]
 8001994:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001998:	4318      	orrs	r0, r3
 800199a:	f644 73ff 	movw	r3, #20479	; 0x4fff
 800199e:	6088      	str	r0, [r1, #8]
 80019a0:	f242 4000 	movw	r0, #9216	; 0x2400
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	f2c0 00f4 	movt	r0, #244	; 0xf4
 80019ac:	4299      	cmp	r1, r3
 80019ae:	dc15      	bgt.n	80019dc <UART_SetConfig+0xa4>
 80019b0:	f244 4300 	movw	r3, #17408	; 0x4400
 80019b4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019b8:	4299      	cmp	r1, r3
 80019ba:	d024      	beq.n	8001a06 <UART_SetConfig+0xce>
 80019bc:	f644 0300 	movw	r3, #18432	; 0x4800
 80019c0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019c4:	4299      	cmp	r1, r3
 80019c6:	d022      	beq.n	8001a0e <UART_SetConfig+0xd6>
 80019c8:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019cc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019d0:	4299      	cmp	r1, r3
 80019d2:	d131      	bne.n	8001a38 <UART_SetConfig+0x100>
 80019d4:	f8dc 3000 	ldr.w	r3, [ip]
 80019d8:	099d      	lsrs	r5, r3, #6
 80019da:	e023      	b.n	8001a24 <UART_SetConfig+0xec>
 80019dc:	f245 0300 	movw	r3, #20480	; 0x5000
 80019e0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019e4:	4299      	cmp	r1, r3
 80019e6:	d016      	beq.n	8001a16 <UART_SetConfig+0xde>
 80019e8:	4571      	cmp	r1, lr
 80019ea:	d018      	beq.n	8001a1e <UART_SetConfig+0xe6>
 80019ec:	f643 0300 	movw	r3, #14336	; 0x3800
 80019f0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019f4:	4299      	cmp	r1, r3
 80019f6:	d11f      	bne.n	8001a38 <UART_SetConfig+0x100>
 80019f8:	f8dc 5000 	ldr.w	r5, [ip]
 80019fc:	f247 6370 	movw	r3, #30320	; 0x7670
 8001a00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a04:	e012      	b.n	8001a2c <UART_SetConfig+0xf4>
 8001a06:	f8dc 3000 	ldr.w	r3, [ip]
 8001a0a:	089d      	lsrs	r5, r3, #2
 8001a0c:	e00a      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a0e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a12:	091d      	lsrs	r5, r3, #4
 8001a14:	e006      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a16:	f8dc 3000 	ldr.w	r3, [ip]
 8001a1a:	0a1d      	lsrs	r5, r3, #8
 8001a1c:	e002      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a1e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a22:	0a9d      	lsrs	r5, r3, #10
 8001a24:	f247 6380 	movw	r3, #30336	; 0x7680
 8001a28:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a2c:	f005 0503 	and.w	r5, r5, #3
 8001a30:	f085 0502 	eor.w	r5, r5, #2
 8001a34:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a38:	4571      	cmp	r1, lr
 8001a3a:	d012      	beq.n	8001a62 <UART_SetConfig+0x12a>
 8001a3c:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a40:	d11d      	bne.n	8001a7e <UART_SetConfig+0x146>
 8001a42:	f005 001f 	and.w	r0, r5, #31
 8001a46:	2101      	movs	r1, #1
 8001a48:	2808      	cmp	r0, #8
 8001a4a:	f200 809f 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a4e:	e8df f000 	tbb	[pc, r0]
 8001a52:	4005      	.short	0x4005
 8001a54:	9d499d43 	.word	0x9d499d43
 8001a58:	004f9d9d 	.word	0x004f9d9d
 8001a5c:	f7ff fd11 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a60:	e042      	b.n	8001ae8 <UART_SetConfig+0x1b0>
 8001a62:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a66:	2101      	movs	r1, #1
 8001a68:	2d04      	cmp	r5, #4
 8001a6a:	f200 808f 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a6e:	e8df f005 	tbb	[pc, r5]
 8001a72:	1c03      	.short	0x1c03
 8001a74:	001a8d16 	.word	0x001a8d16
 8001a78:	f7ff fd03 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a7c:	e011      	b.n	8001aa2 <UART_SetConfig+0x16a>
 8001a7e:	f005 021f 	and.w	r2, r5, #31
 8001a82:	2101      	movs	r1, #1
 8001a84:	2a08      	cmp	r2, #8
 8001a86:	f200 8081 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a8a:	e8df f002 	tbb	[pc, r2]
 8001a8e:	4305      	.short	0x4305
 8001a90:	7f487f46 	.word	0x7f487f46
 8001a94:	004e7f7f 	.word	0x004e7f7f
 8001a98:	f7ff fcf3 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a9c:	e041      	b.n	8001b22 <UART_SetConfig+0x1ea>
 8001a9e:	f7ff fc91 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001aa2:	b910      	cbnz	r0, 8001aaa <UART_SetConfig+0x172>
 8001aa4:	e071      	b.n	8001b8a <UART_SetConfig+0x252>
 8001aa6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001aaa:	6862      	ldr	r2, [r4, #4]
 8001aac:	2101      	movs	r1, #1
 8001aae:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001ab2:	4298      	cmp	r0, r3
 8001ab4:	d36a      	bcc.n	8001b8c <UART_SetConfig+0x254>
 8001ab6:	0313      	lsls	r3, r2, #12
 8001ab8:	4298      	cmp	r0, r3
 8001aba:	bf9c      	itt	ls
 8001abc:	2101      	movls	r1, #1
 8001abe:	2d04      	cmpls	r5, #4
 8001ac0:	d864      	bhi.n	8001b8c <UART_SetConfig+0x254>
 8001ac2:	e8df f005 	tbb	[pc, r5]
 8001ac6:	3e03      	.short	0x3e03
 8001ac8:	00526345 	.word	0x00526345
 8001acc:	f7ff fcd9 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001ad0:	e040      	b.n	8001b54 <UART_SetConfig+0x21c>
 8001ad2:	f7ff fceb 	bl	80014ac <HAL_RCC_GetPCLK2Freq>
 8001ad6:	e007      	b.n	8001ae8 <UART_SetConfig+0x1b0>
 8001ad8:	6861      	ldr	r1, [r4, #4]
 8001ada:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ade:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001ae2:	e008      	b.n	8001af6 <UART_SetConfig+0x1be>
 8001ae4:	f7ff fc6e 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001ae8:	6861      	ldr	r1, [r4, #4]
 8001aea:	0040      	lsls	r0, r0, #1
 8001aec:	084a      	lsrs	r2, r1, #1
 8001aee:	e003      	b.n	8001af8 <UART_SetConfig+0x1c0>
 8001af0:	6861      	ldr	r1, [r4, #4]
 8001af2:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001af6:	0848      	lsrs	r0, r1, #1
 8001af8:	4410      	add	r0, r2
 8001afa:	fbb0 f0f1 	udiv	r0, r0, r1
 8001afe:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b02:	4001      	ands	r1, r0
 8001b04:	2910      	cmp	r1, #16
 8001b06:	d303      	bcc.n	8001b10 <UART_SetConfig+0x1d8>
 8001b08:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b0c:	4308      	orrs	r0, r1
 8001b0e:	e03a      	b.n	8001b86 <UART_SetConfig+0x24e>
 8001b10:	2101      	movs	r1, #1
 8001b12:	e03b      	b.n	8001b8c <UART_SetConfig+0x254>
 8001b14:	f7ff fcca 	bl	80014ac <HAL_RCC_GetPCLK2Freq>
 8001b18:	e003      	b.n	8001b22 <UART_SetConfig+0x1ea>
 8001b1a:	6862      	ldr	r2, [r4, #4]
 8001b1c:	e008      	b.n	8001b30 <UART_SetConfig+0x1f8>
 8001b1e:	f7ff fc51 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001b22:	6862      	ldr	r2, [r4, #4]
 8001b24:	4601      	mov	r1, r0
 8001b26:	0850      	lsrs	r0, r2, #1
 8001b28:	e003      	b.n	8001b32 <UART_SetConfig+0x1fa>
 8001b2a:	6862      	ldr	r2, [r4, #4]
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	0851      	lsrs	r1, r2, #1
 8001b32:	4408      	add	r0, r1
 8001b34:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b38:	b280      	uxth	r0, r0
 8001b3a:	2810      	cmp	r0, #16
 8001b3c:	d223      	bcs.n	8001b86 <UART_SetConfig+0x24e>
 8001b3e:	2101      	movs	r1, #1
 8001b40:	e024      	b.n	8001b8c <UART_SetConfig+0x254>
 8001b42:	2000      	movs	r0, #0
 8001b44:	2100      	movs	r1, #0
 8001b46:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b4a:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b4e:	e006      	b.n	8001b5e <UART_SetConfig+0x226>
 8001b50:	f7ff fc38 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001b54:	6862      	ldr	r2, [r4, #4]
 8001b56:	0e01      	lsrs	r1, r0, #24
 8001b58:	0853      	lsrs	r3, r2, #1
 8001b5a:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b5e:	f141 0100 	adc.w	r1, r1, #0
 8001b62:	2300      	movs	r3, #0
 8001b64:	f7fe ffb8 	bl	8000ad8 <__aeabi_uldivmod>
 8001b68:	e005      	b.n	8001b76 <UART_SetConfig+0x23e>
 8001b6a:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b6e:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b72:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b76:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b7a:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b7e:	f2c0 020f 	movt	r2, #15
 8001b82:	4291      	cmp	r1, r2
 8001b84:	d807      	bhi.n	8001b96 <UART_SetConfig+0x25e>
 8001b86:	6821      	ldr	r1, [r4, #0]
 8001b88:	60c8      	str	r0, [r1, #12]
 8001b8a:	2100      	movs	r1, #0
 8001b8c:	2000      	movs	r0, #0
 8001b8e:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b92:	4608      	mov	r0, r1
 8001b94:	bdb0      	pop	{r4, r5, r7, pc}
 8001b96:	2101      	movs	r1, #1
 8001b98:	e7f8      	b.n	8001b8c <UART_SetConfig+0x254>

08001b9a <UART_AdvFeatureConfig>:
 8001b9a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b9c:	f011 0f01 	tst.w	r1, #1
 8001ba0:	d008      	beq.n	8001bb4 <UART_AdvFeatureConfig+0x1a>
 8001ba2:	6802      	ldr	r2, [r0, #0]
 8001ba4:	6853      	ldr	r3, [r2, #4]
 8001ba6:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001baa:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001bae:	ea43 030c 	orr.w	r3, r3, ip
 8001bb2:	6053      	str	r3, [r2, #4]
 8001bb4:	078a      	lsls	r2, r1, #30
 8001bb6:	d508      	bpl.n	8001bca <UART_AdvFeatureConfig+0x30>
 8001bb8:	6802      	ldr	r2, [r0, #0]
 8001bba:	6853      	ldr	r3, [r2, #4]
 8001bbc:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001bc0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001bc4:	ea43 030c 	orr.w	r3, r3, ip
 8001bc8:	6053      	str	r3, [r2, #4]
 8001bca:	074a      	lsls	r2, r1, #29
 8001bcc:	d508      	bpl.n	8001be0 <UART_AdvFeatureConfig+0x46>
 8001bce:	6802      	ldr	r2, [r0, #0]
 8001bd0:	6853      	ldr	r3, [r2, #4]
 8001bd2:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bd6:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bda:	ea43 030c 	orr.w	r3, r3, ip
 8001bde:	6053      	str	r3, [r2, #4]
 8001be0:	070a      	lsls	r2, r1, #28
 8001be2:	d508      	bpl.n	8001bf6 <UART_AdvFeatureConfig+0x5c>
 8001be4:	6802      	ldr	r2, [r0, #0]
 8001be6:	6853      	ldr	r3, [r2, #4]
 8001be8:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bec:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bf0:	ea43 030c 	orr.w	r3, r3, ip
 8001bf4:	6053      	str	r3, [r2, #4]
 8001bf6:	06ca      	lsls	r2, r1, #27
 8001bf8:	d508      	bpl.n	8001c0c <UART_AdvFeatureConfig+0x72>
 8001bfa:	6802      	ldr	r2, [r0, #0]
 8001bfc:	6893      	ldr	r3, [r2, #8]
 8001bfe:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c02:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c06:	ea43 030c 	orr.w	r3, r3, ip
 8001c0a:	6093      	str	r3, [r2, #8]
 8001c0c:	068a      	lsls	r2, r1, #26
 8001c0e:	d508      	bpl.n	8001c22 <UART_AdvFeatureConfig+0x88>
 8001c10:	6802      	ldr	r2, [r0, #0]
 8001c12:	6893      	ldr	r3, [r2, #8]
 8001c14:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c18:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c1c:	ea43 030c 	orr.w	r3, r3, ip
 8001c20:	6093      	str	r3, [r2, #8]
 8001c22:	b580      	push	{r7, lr}
 8001c24:	466f      	mov	r7, sp
 8001c26:	064a      	lsls	r2, r1, #25
 8001c28:	d515      	bpl.n	8001c56 <UART_AdvFeatureConfig+0xbc>
 8001c2a:	f8d0 e000 	ldr.w	lr, [r0]
 8001c2e:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c32:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c34:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c38:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c3c:	ea42 0203 	orr.w	r2, r2, r3
 8001c40:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c44:	d107      	bne.n	8001c56 <UART_AdvFeatureConfig+0xbc>
 8001c46:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c4a:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c4c:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c50:	431a      	orrs	r2, r3
 8001c52:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c56:	0609      	lsls	r1, r1, #24
 8001c58:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c5c:	bf58      	it	pl
 8001c5e:	4770      	bxpl	lr
 8001c60:	6801      	ldr	r1, [r0, #0]
 8001c62:	684a      	ldr	r2, [r1, #4]
 8001c64:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c66:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c6a:	4310      	orrs	r0, r2
 8001c6c:	6048      	str	r0, [r1, #4]
 8001c6e:	4770      	bx	lr

08001c70 <UART_CheckIdleState>:
 8001c70:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c72:	af03      	add	r7, sp, #12
 8001c74:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c78:	4604      	mov	r4, r0
 8001c7a:	2000      	movs	r0, #0
 8001c7c:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c7e:	f7ff fa5f 	bl	8001140 <HAL_GetTick>
 8001c82:	4605      	mov	r5, r0
 8001c84:	6820      	ldr	r0, [r4, #0]
 8001c86:	6801      	ldr	r1, [r0, #0]
 8001c88:	f011 0f08 	tst.w	r1, #8
 8001c8c:	d00f      	beq.n	8001cae <UART_CheckIdleState+0x3e>
 8001c8e:	69c1      	ldr	r1, [r0, #28]
 8001c90:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c94:	d10b      	bne.n	8001cae <UART_CheckIdleState+0x3e>
 8001c96:	2600      	movs	r6, #0
 8001c98:	f7ff fa52 	bl	8001140 <HAL_GetTick>
 8001c9c:	1b41      	subs	r1, r0, r5
 8001c9e:	6820      	ldr	r0, [r4, #0]
 8001ca0:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ca4:	d11b      	bne.n	8001cde <UART_CheckIdleState+0x6e>
 8001ca6:	69c1      	ldr	r1, [r0, #28]
 8001ca8:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001cac:	d0f4      	beq.n	8001c98 <UART_CheckIdleState+0x28>
 8001cae:	6801      	ldr	r1, [r0, #0]
 8001cb0:	f011 0f04 	tst.w	r1, #4
 8001cb4:	d101      	bne.n	8001cba <UART_CheckIdleState+0x4a>
 8001cb6:	2600      	movs	r6, #0
 8001cb8:	e01a      	b.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cba:	69c0      	ldr	r0, [r0, #28]
 8001cbc:	2600      	movs	r6, #0
 8001cbe:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cc2:	d115      	bne.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cc4:	f7ff fa3c 	bl	8001140 <HAL_GetTick>
 8001cc8:	1b41      	subs	r1, r0, r5
 8001cca:	6820      	ldr	r0, [r4, #0]
 8001ccc:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001cd0:	d105      	bne.n	8001cde <UART_CheckIdleState+0x6e>
 8001cd2:	69c0      	ldr	r0, [r0, #28]
 8001cd4:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cd8:	d0f4      	beq.n	8001cc4 <UART_CheckIdleState+0x54>
 8001cda:	2600      	movs	r6, #0
 8001cdc:	e008      	b.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cde:	6801      	ldr	r1, [r0, #0]
 8001ce0:	2603      	movs	r6, #3
 8001ce2:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001ce6:	6001      	str	r1, [r0, #0]
 8001ce8:	6881      	ldr	r1, [r0, #8]
 8001cea:	f021 0101 	bic.w	r1, r1, #1
 8001cee:	6081      	str	r1, [r0, #8]
 8001cf0:	2020      	movs	r0, #32
 8001cf2:	6760      	str	r0, [r4, #116]	; 0x74
 8001cf4:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cf6:	2000      	movs	r0, #0
 8001cf8:	6720      	str	r0, [r4, #112]	; 0x70
 8001cfa:	4630      	mov	r0, r6
 8001cfc:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d00:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d02 <HAL_UART_Transmit>:
 8001d02:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d04:	af03      	add	r7, sp, #12
 8001d06:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d0a:	b081      	sub	sp, #4
 8001d0c:	4604      	mov	r4, r0
 8001d0e:	461d      	mov	r5, r3
 8001d10:	4616      	mov	r6, r2
 8001d12:	4689      	mov	r9, r1
 8001d14:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d16:	2820      	cmp	r0, #32
 8001d18:	d109      	bne.n	8001d2e <HAL_UART_Transmit+0x2c>
 8001d1a:	f1b9 0f00 	cmp.w	r9, #0
 8001d1e:	f04f 0001 	mov.w	r0, #1
 8001d22:	bf18      	it	ne
 8001d24:	2e00      	cmpne	r6, #0
 8001d26:	d003      	beq.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001d28:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d2a:	2801      	cmp	r0, #1
 8001d2c:	d104      	bne.n	8001d38 <HAL_UART_Transmit+0x36>
 8001d2e:	2002      	movs	r0, #2
 8001d30:	b001      	add	sp, #4
 8001d32:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d36:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d38:	2001      	movs	r0, #1
 8001d3a:	6720      	str	r0, [r4, #112]	; 0x70
 8001d3c:	2000      	movs	r0, #0
 8001d3e:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d40:	2021      	movs	r0, #33	; 0x21
 8001d42:	6760      	str	r0, [r4, #116]	; 0x74
 8001d44:	f7ff f9fc 	bl	8001140 <HAL_GetTick>
 8001d48:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d4c:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d50:	4680      	mov	r8, r0
 8001d52:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d56:	f8d4 b000 	ldr.w	fp, [r4]
 8001d5a:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d5e:	2900      	cmp	r1, #0
 8001d60:	d040      	beq.n	8001de4 <HAL_UART_Transmit+0xe2>
 8001d62:	f105 0a01 	add.w	sl, r5, #1
 8001d66:	0600      	lsls	r0, r0, #24
 8001d68:	d410      	bmi.n	8001d8c <HAL_UART_Transmit+0x8a>
 8001d6a:	465e      	mov	r6, fp
 8001d6c:	f1ba 0f00 	cmp.w	sl, #0
 8001d70:	d007      	beq.n	8001d82 <HAL_UART_Transmit+0x80>
 8001d72:	b33d      	cbz	r5, 8001dc4 <HAL_UART_Transmit+0xc2>
 8001d74:	f7ff f9e4 	bl	8001140 <HAL_GetTick>
 8001d78:	6826      	ldr	r6, [r4, #0]
 8001d7a:	eba0 0008 	sub.w	r0, r0, r8
 8001d7e:	42a8      	cmp	r0, r5
 8001d80:	d821      	bhi.n	8001dc6 <HAL_UART_Transmit+0xc4>
 8001d82:	69f0      	ldr	r0, [r6, #28]
 8001d84:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d88:	d0f0      	beq.n	8001d6c <HAL_UART_Transmit+0x6a>
 8001d8a:	e000      	b.n	8001d8e <HAL_UART_Transmit+0x8c>
 8001d8c:	465e      	mov	r6, fp
 8001d8e:	68a0      	ldr	r0, [r4, #8]
 8001d90:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d94:	bf04      	itt	eq
 8001d96:	6920      	ldreq	r0, [r4, #16]
 8001d98:	2800      	cmpeq	r0, #0
 8001d9a:	d002      	beq.n	8001da2 <HAL_UART_Transmit+0xa0>
 8001d9c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001da0:	e003      	b.n	8001daa <HAL_UART_Transmit+0xa8>
 8001da2:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001da6:	f36f 205f 	bfc	r0, #9, #23
 8001daa:	8530      	strh	r0, [r6, #40]	; 0x28
 8001dac:	46b3      	mov	fp, r6
 8001dae:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001db2:	3801      	subs	r0, #1
 8001db4:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001db8:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dbc:	69f0      	ldr	r0, [r6, #28]
 8001dbe:	2900      	cmp	r1, #0
 8001dc0:	d1d1      	bne.n	8001d66 <HAL_UART_Transmit+0x64>
 8001dc2:	e010      	b.n	8001de6 <HAL_UART_Transmit+0xe4>
 8001dc4:	465e      	mov	r6, fp
 8001dc6:	6830      	ldr	r0, [r6, #0]
 8001dc8:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001dcc:	6030      	str	r0, [r6, #0]
 8001dce:	68b0      	ldr	r0, [r6, #8]
 8001dd0:	f020 0001 	bic.w	r0, r0, #1
 8001dd4:	60b0      	str	r0, [r6, #8]
 8001dd6:	2020      	movs	r0, #32
 8001dd8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dda:	67a0      	str	r0, [r4, #120]	; 0x78
 8001ddc:	2000      	movs	r0, #0
 8001dde:	6720      	str	r0, [r4, #112]	; 0x70
 8001de0:	2003      	movs	r0, #3
 8001de2:	e7a5      	b.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001de4:	465e      	mov	r6, fp
 8001de6:	0640      	lsls	r0, r0, #25
 8001de8:	d411      	bmi.n	8001e0e <HAL_UART_Transmit+0x10c>
 8001dea:	f105 0901 	add.w	r9, r5, #1
 8001dee:	4630      	mov	r0, r6
 8001df0:	f1b9 0f00 	cmp.w	r9, #0
 8001df4:	d007      	beq.n	8001e06 <HAL_UART_Transmit+0x104>
 8001df6:	b17d      	cbz	r5, 8001e18 <HAL_UART_Transmit+0x116>
 8001df8:	f7ff f9a2 	bl	8001140 <HAL_GetTick>
 8001dfc:	eba0 0108 	sub.w	r1, r0, r8
 8001e00:	6820      	ldr	r0, [r4, #0]
 8001e02:	42a9      	cmp	r1, r5
 8001e04:	d809      	bhi.n	8001e1a <HAL_UART_Transmit+0x118>
 8001e06:	69c1      	ldr	r1, [r0, #28]
 8001e08:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e0c:	d0f0      	beq.n	8001df0 <HAL_UART_Transmit+0xee>
 8001e0e:	2020      	movs	r0, #32
 8001e10:	6760      	str	r0, [r4, #116]	; 0x74
 8001e12:	2000      	movs	r0, #0
 8001e14:	6720      	str	r0, [r4, #112]	; 0x70
 8001e16:	e78b      	b.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001e18:	4630      	mov	r0, r6
 8001e1a:	6801      	ldr	r1, [r0, #0]
 8001e1c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e20:	6001      	str	r1, [r0, #0]
 8001e22:	6881      	ldr	r1, [r0, #8]
 8001e24:	f021 0101 	bic.w	r1, r1, #1
 8001e28:	6081      	str	r1, [r0, #8]
 8001e2a:	e7d4      	b.n	8001dd6 <HAL_UART_Transmit+0xd4>

08001e2c <BSP_COM_Init>:
 8001e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e2e:	af03      	add	r7, sp, #12
 8001e30:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e34:	b086      	sub	sp, #24
 8001e36:	4605      	mov	r5, r0
 8001e38:	4688      	mov	r8, r1
 8001e3a:	b9f5      	cbnz	r5, 8001e7a <BSP_COM_Init+0x4e>
 8001e3c:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e40:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e44:	6801      	ldr	r1, [r0, #0]
 8001e46:	f041 0102 	orr.w	r1, r1, #2
 8001e4a:	6001      	str	r1, [r0, #0]
 8001e4c:	6801      	ldr	r1, [r0, #0]
 8001e4e:	f001 0102 	and.w	r1, r1, #2
 8001e52:	9101      	str	r1, [sp, #4]
 8001e54:	9901      	ldr	r1, [sp, #4]
 8001e56:	6801      	ldr	r1, [r0, #0]
 8001e58:	f041 0102 	orr.w	r1, r1, #2
 8001e5c:	6001      	str	r1, [r0, #0]
 8001e5e:	6801      	ldr	r1, [r0, #0]
 8001e60:	f001 0102 	and.w	r1, r1, #2
 8001e64:	9101      	str	r1, [sp, #4]
 8001e66:	9901      	ldr	r1, [sp, #4]
 8001e68:	6941      	ldr	r1, [r0, #20]
 8001e6a:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e6e:	6141      	str	r1, [r0, #20]
 8001e70:	6940      	ldr	r0, [r0, #20]
 8001e72:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e76:	9001      	str	r0, [sp, #4]
 8001e78:	9801      	ldr	r0, [sp, #4]
 8001e7a:	2040      	movs	r0, #64	; 0x40
 8001e7c:	2402      	movs	r4, #2
 8001e7e:	ae01      	add	r6, sp, #4
 8001e80:	f04f 0907 	mov.w	r9, #7
 8001e84:	9001      	str	r0, [sp, #4]
 8001e86:	2000      	movs	r0, #0
 8001e88:	9402      	str	r4, [sp, #8]
 8001e8a:	9404      	str	r4, [sp, #16]
 8001e8c:	4631      	mov	r1, r6
 8001e8e:	9003      	str	r0, [sp, #12]
 8001e90:	f240 000c 	movw	r0, #12
 8001e94:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e98:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e9c:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea0:	f7ff f9a7 	bl	80011f2 <HAL_GPIO_Init>
 8001ea4:	2080      	movs	r0, #128	; 0x80
 8001ea6:	4631      	mov	r1, r6
 8001ea8:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001eac:	f240 0010 	movw	r0, #16
 8001eb0:	f8cd 9014 	str.w	r9, [sp, #20]
 8001eb4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eb8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ebc:	f7ff f999 	bl	80011f2 <HAL_GPIO_Init>
 8001ec0:	f240 0008 	movw	r0, #8
 8001ec4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ec8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ecc:	f8c8 0000 	str.w	r0, [r8]
 8001ed0:	4640      	mov	r0, r8
 8001ed2:	f7ff fcff 	bl	80018d4 <HAL_UART_Init>
 8001ed6:	b006      	add	sp, #24
 8001ed8:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001edc:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ede <__io_putchar>:
 8001ede:	b580      	push	{r7, lr}
 8001ee0:	466f      	mov	r7, sp
 8001ee2:	b082      	sub	sp, #8
 8001ee4:	9001      	str	r0, [sp, #4]
 8001ee6:	f640 302c 	movw	r0, #2860	; 0xb2c
 8001eea:	a901      	add	r1, sp, #4
 8001eec:	2201      	movs	r2, #1
 8001eee:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001ef2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ef6:	f7ff ff04 	bl	8001d02 <HAL_UART_Transmit>
 8001efa:	9801      	ldr	r0, [sp, #4]
 8001efc:	b002      	add	sp, #8
 8001efe:	bd80      	pop	{r7, pc}

08001f00 <main>:
 8001f00:	b5b0      	push	{r4, r5, r7, lr}
 8001f02:	af02      	add	r7, sp, #8
 8001f04:	f640 312c 	movw	r1, #2860	; 0xb2c
 8001f08:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f0c:	220c      	movs	r2, #12
 8001f0e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f12:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f16:	6008      	str	r0, [r1, #0]
 8001f18:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f1c:	6048      	str	r0, [r1, #4]
 8001f1e:	2000      	movs	r0, #0
 8001f20:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f24:	6108      	str	r0, [r1, #16]
 8001f26:	6248      	str	r0, [r1, #36]	; 0x24
 8001f28:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f2c:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f30:	2000      	movs	r0, #0
 8001f32:	f7ff ff7b 	bl	8001e2c <BSP_COM_Init>
 8001f36:	f000 f9b3 	bl	80022a0 <initialise_benchmark>
 8001f3a:	f247 6090 	movw	r0, #30352	; 0x7690
 8001f3e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f42:	f000 fc77 	bl	8002834 <printf>
 8001f46:	f247 7038 	movw	r0, #30520	; 0x7738
 8001f4a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f4e:	f000 fcd3 	bl	80028f8 <puts>
 8001f52:	f7ff f8dd 	bl	8001110 <HAL_Init>
 8001f56:	f7ff f8f3 	bl	8001140 <HAL_GetTick>
 8001f5a:	4604      	mov	r4, r0
 8001f5c:	f000 f9a1 	bl	80022a2 <benchmark>
 8001f60:	4605      	mov	r5, r0
 8001f62:	f7ff f8ed 	bl	8001140 <HAL_GetTick>
 8001f66:	1b04      	subs	r4, r0, r4
 8001f68:	4628      	mov	r0, r5
 8001f6a:	f000 f9ad 	bl	80022c8 <verify_benchmark>
 8001f6e:	1c41      	adds	r1, r0, #1
 8001f70:	d006      	beq.n	8001f80 <main+0x80>
 8001f72:	2801      	cmp	r0, #1
 8001f74:	d109      	bne.n	8001f8a <main+0x8a>
 8001f76:	f247 60a4 	movw	r0, #30372	; 0x76a4
 8001f7a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f7e:	e008      	b.n	8001f92 <main+0x92>
 8001f80:	f247 60c8 	movw	r0, #30408	; 0x76c8
 8001f84:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f88:	e003      	b.n	8001f92 <main+0x92>
 8001f8a:	f247 60fd 	movw	r0, #30461	; 0x76fd
 8001f8e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f92:	4621      	mov	r1, r4
 8001f94:	f000 fc4e 	bl	8002834 <printf>
 8001f98:	2000      	movs	r0, #0
 8001f9a:	bdb0      	pop	{r4, r5, r7, pc}
 8001f9c:	0000      	movs	r0, r0
	...

08001fa0 <offset_momentum>:
 8001fa0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fa2:	af03      	add	r7, sp, #12
 8001fa4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001fa8:	b081      	sub	sp, #4
 8001faa:	ed2d 8b0a 	vpush	{d8-d12}
 8001fae:	b086      	sub	sp, #24
 8001fb0:	2900      	cmp	r1, #0
 8001fb2:	9003      	str	r0, [sp, #12]
 8001fb4:	d074      	beq.n	80020a0 <offset_momentum+0x100>
 8001fb6:	1e48      	subs	r0, r1, #1
 8001fb8:	ed9f 1b3d 	vldr	d1, [pc, #244]	; 80020b0 <offset_momentum+0x110>
 8001fbc:	9005      	str	r0, [sp, #20]
 8001fbe:	9803      	ldr	r0, [sp, #12]
 8001fc0:	ed90 0b08 	vldr	d0, [r0, #32]
 8001fc4:	ed90 cb0a 	vldr	d12, [r0, #40]	; 0x28
 8001fc8:	ed90 ab0c 	vldr	d10, [r0, #48]	; 0x30
 8001fcc:	f100 0238 	add.w	r2, r0, #56	; 0x38
 8001fd0:	ec51 0b11 	vmov	r0, r1, d1
 8001fd4:	e9cd 1001 	strd	r1, r0, [sp, #4]
 8001fd8:	e9dd 9a01 	ldrd	r9, sl, [sp, #4]
 8001fdc:	eeb0 8a4a 	vmov.f32	s16, s20
 8001fe0:	eeb0 9a4c 	vmov.f32	s18, s24
 8001fe4:	eeb0 ba40 	vmov.f32	s22, s0
 8001fe8:	eef0 8a6a 	vmov.f32	s17, s21
 8001fec:	eef0 9a6c 	vmov.f32	s19, s25
 8001ff0:	eef0 ba60 	vmov.f32	s23, s1
 8001ff4:	e00b      	b.n	800200e <offset_momentum+0x6e>
 8001ff6:	9904      	ldr	r1, [sp, #16]
 8001ff8:	3801      	subs	r0, #1
 8001ffa:	9005      	str	r0, [sp, #20]
 8001ffc:	ed91 0b0a 	vldr	d0, [r1, #40]	; 0x28
 8002000:	ed91 cb0c 	vldr	d12, [r1, #48]	; 0x30
 8002004:	ed91 ab0e 	vldr	d10, [r1, #56]	; 0x38
 8002008:	f101 0040 	add.w	r0, r1, #64	; 0x40
 800200c:	4602      	mov	r2, r0
 800200e:	9204      	str	r2, [sp, #16]
 8002010:	ec51 0b10 	vmov	r0, r1, d0
 8002014:	ed92 1b00 	vldr	d1, [r2]
 8002018:	ec58 5b11 	vmov	r5, r8, d1
 800201c:	462a      	mov	r2, r5
 800201e:	4643      	mov	r3, r8
 8002020:	f7fe faaa 	bl	8000578 <__aeabi_dmul>
 8002024:	4652      	mov	r2, sl
 8002026:	464b      	mov	r3, r9
 8002028:	f7fe fbd0 	bl	80007cc <__aeabi_ddiv>
 800202c:	4602      	mov	r2, r0
 800202e:	460b      	mov	r3, r1
 8002030:	ec51 0b1b 	vmov	r0, r1, d11
 8002034:	f7fe f8e8 	bl	8000208 <__aeabi_dsub>
 8002038:	4683      	mov	fp, r0
 800203a:	460e      	mov	r6, r1
 800203c:	ec51 0b1c 	vmov	r0, r1, d12
 8002040:	462a      	mov	r2, r5
 8002042:	4643      	mov	r3, r8
 8002044:	f7fe fa98 	bl	8000578 <__aeabi_dmul>
 8002048:	4652      	mov	r2, sl
 800204a:	464b      	mov	r3, r9
 800204c:	f7fe fbbe 	bl	80007cc <__aeabi_ddiv>
 8002050:	4602      	mov	r2, r0
 8002052:	460b      	mov	r3, r1
 8002054:	ec51 0b19 	vmov	r0, r1, d9
 8002058:	ec46 bb1b 	vmov	d11, fp, r6
 800205c:	f7fe f8d4 	bl	8000208 <__aeabi_dsub>
 8002060:	4606      	mov	r6, r0
 8002062:	460c      	mov	r4, r1
 8002064:	ec51 0b1a 	vmov	r0, r1, d10
 8002068:	462a      	mov	r2, r5
 800206a:	4643      	mov	r3, r8
 800206c:	f7fe fa84 	bl	8000578 <__aeabi_dmul>
 8002070:	4652      	mov	r2, sl
 8002072:	464b      	mov	r3, r9
 8002074:	f7fe fbaa 	bl	80007cc <__aeabi_ddiv>
 8002078:	ec44 6b19 	vmov	d9, r6, r4
 800207c:	9c03      	ldr	r4, [sp, #12]
 800207e:	4602      	mov	r2, r0
 8002080:	460b      	mov	r3, r1
 8002082:	ec51 0b18 	vmov	r0, r1, d8
 8002086:	ed84 bb08 	vstr	d11, [r4, #32]
 800208a:	f7fe f8bd 	bl	8000208 <__aeabi_dsub>
 800208e:	ec41 0b18 	vmov	d8, r0, r1
 8002092:	ed84 9b0a 	vstr	d9, [r4, #40]	; 0x28
 8002096:	ed84 8b0c 	vstr	d8, [r4, #48]	; 0x30
 800209a:	9805      	ldr	r0, [sp, #20]
 800209c:	2800      	cmp	r0, #0
 800209e:	d1aa      	bne.n	8001ff6 <offset_momentum+0x56>
 80020a0:	b006      	add	sp, #24
 80020a2:	ecbd 8b0a 	vpop	{d8-d12}
 80020a6:	b001      	add	sp, #4
 80020a8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80020ae:	bf00      	nop
 80020b0:	c9be45de 	.word	0xc9be45de
 80020b4:	4043bd3c 	.word	0x4043bd3c

080020b8 <bodies_energy>:
 80020b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020ba:	af03      	add	r7, sp, #12
 80020bc:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80020c0:	b081      	sub	sp, #4
 80020c2:	ed2d 8b08 	vpush	{d8-d11}
 80020c6:	b08a      	sub	sp, #40	; 0x28
 80020c8:	ed9f 8b71 	vldr	d8, [pc, #452]	; 8002290 <bodies_energy+0x1d8>
 80020cc:	4688      	mov	r8, r1
 80020ce:	f1b8 0f00 	cmp.w	r8, #0
 80020d2:	f000 80cf 	beq.w	8002274 <bodies_energy+0x1bc>
 80020d6:	ed9f 0b70 	vldr	d0, [pc, #448]	; 8002298 <bodies_energy+0x1e0>
 80020da:	f1a8 0401 	sub.w	r4, r8, #1
 80020de:	f100 0540 	add.w	r5, r0, #64	; 0x40
 80020e2:	2600      	movs	r6, #0
 80020e4:	ec52 1b10 	vmov	r1, r2, d0
 80020e8:	e9cd 2100 	strd	r2, r1, [sp]
 80020ec:	e9cd 0802 	strd	r0, r8, [sp, #8]
 80020f0:	eb00 1086 	add.w	r0, r0, r6, lsl #6
 80020f4:	ed90 0b08 	vldr	d0, [r0, #32]
 80020f8:	ed90 9b0a 	vldr	d9, [r0, #40]	; 0x28
 80020fc:	ed90 ab0c 	vldr	d10, [r0, #48]	; 0x30
 8002100:	9009      	str	r0, [sp, #36]	; 0x24
 8002102:	ed90 bb0e 	vldr	d11, [r0, #56]	; 0x38
 8002106:	ec51 0b10 	vmov	r0, r1, d0
 800210a:	4602      	mov	r2, r0
 800210c:	460b      	mov	r3, r1
 800210e:	f7fe fa33 	bl	8000578 <__aeabi_dmul>
 8002112:	4682      	mov	sl, r0
 8002114:	4689      	mov	r9, r1
 8002116:	ec51 0b19 	vmov	r0, r1, d9
 800211a:	4602      	mov	r2, r0
 800211c:	460b      	mov	r3, r1
 800211e:	f7fe fa2b 	bl	8000578 <__aeabi_dmul>
 8002122:	4602      	mov	r2, r0
 8002124:	460b      	mov	r3, r1
 8002126:	4650      	mov	r0, sl
 8002128:	4649      	mov	r1, r9
 800212a:	f7fe f86f 	bl	800020c <__adddf3>
 800212e:	4681      	mov	r9, r0
 8002130:	468a      	mov	sl, r1
 8002132:	ec51 0b1a 	vmov	r0, r1, d10
 8002136:	4602      	mov	r2, r0
 8002138:	460b      	mov	r3, r1
 800213a:	f7fe fa1d 	bl	8000578 <__aeabi_dmul>
 800213e:	4602      	mov	r2, r0
 8002140:	460b      	mov	r3, r1
 8002142:	4648      	mov	r0, r9
 8002144:	4651      	mov	r1, sl
 8002146:	f7fe f861 	bl	800020c <__adddf3>
 800214a:	4602      	mov	r2, r0
 800214c:	460b      	mov	r3, r1
 800214e:	ec51 0b1b 	vmov	r0, r1, d11
 8002152:	f7fe fa11 	bl	8000578 <__aeabi_dmul>
 8002156:	e9dd 3200 	ldrd	r3, r2, [sp]
 800215a:	f7fe fa0d 	bl	8000578 <__aeabi_dmul>
 800215e:	4602      	mov	r2, r0
 8002160:	460b      	mov	r3, r1
 8002162:	ec51 0b18 	vmov	r0, r1, d8
 8002166:	f7fe f851 	bl	800020c <__adddf3>
 800216a:	3601      	adds	r6, #1
 800216c:	ec41 0b18 	vmov	d8, r0, r1
 8002170:	4546      	cmp	r6, r8
 8002172:	9604      	str	r6, [sp, #16]
 8002174:	e9cd 5405 	strd	r5, r4, [sp, #20]
 8002178:	d272      	bcs.n	8002260 <bodies_energy+0x1a8>
 800217a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800217c:	46a1      	mov	r9, r4
 800217e:	46aa      	mov	sl, r5
 8002180:	f100 0138 	add.w	r1, r0, #56	; 0x38
 8002184:	f100 0b08 	add.w	fp, r0, #8
 8002188:	9108      	str	r1, [sp, #32]
 800218a:	f100 0110 	add.w	r1, r0, #16
 800218e:	9107      	str	r1, [sp, #28]
 8002190:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002192:	ed9a 1b00 	vldr	d1, [sl]
 8002196:	ed9a 9b02 	vldr	d9, [sl, #8]
 800219a:	ed9a ab04 	vldr	d10, [sl, #16]
 800219e:	ed90 0b00 	vldr	d0, [r0]
 80021a2:	ec53 2b11 	vmov	r2, r3, d1
 80021a6:	ec51 0b10 	vmov	r0, r1, d0
 80021aa:	f7fe f82d 	bl	8000208 <__aeabi_dsub>
 80021ae:	ed9b 0b00 	vldr	d0, [fp]
 80021b2:	4605      	mov	r5, r0
 80021b4:	460e      	mov	r6, r1
 80021b6:	ec53 2b19 	vmov	r2, r3, d9
 80021ba:	ec51 0b10 	vmov	r0, r1, d0
 80021be:	f7fe f823 	bl	8000208 <__aeabi_dsub>
 80021c2:	4604      	mov	r4, r0
 80021c4:	4688      	mov	r8, r1
 80021c6:	4628      	mov	r0, r5
 80021c8:	4631      	mov	r1, r6
 80021ca:	462a      	mov	r2, r5
 80021cc:	4633      	mov	r3, r6
 80021ce:	f7fe f9d3 	bl	8000578 <__aeabi_dmul>
 80021d2:	4605      	mov	r5, r0
 80021d4:	460e      	mov	r6, r1
 80021d6:	4620      	mov	r0, r4
 80021d8:	4641      	mov	r1, r8
 80021da:	4622      	mov	r2, r4
 80021dc:	4643      	mov	r3, r8
 80021de:	f7fe f9cb 	bl	8000578 <__aeabi_dmul>
 80021e2:	4602      	mov	r2, r0
 80021e4:	460b      	mov	r3, r1
 80021e6:	4628      	mov	r0, r5
 80021e8:	4631      	mov	r1, r6
 80021ea:	f7fe f80f 	bl	800020c <__adddf3>
 80021ee:	4604      	mov	r4, r0
 80021f0:	9807      	ldr	r0, [sp, #28]
 80021f2:	460d      	mov	r5, r1
 80021f4:	ec53 2b1a 	vmov	r2, r3, d10
 80021f8:	ed90 0b00 	vldr	d0, [r0]
 80021fc:	ec51 0b10 	vmov	r0, r1, d0
 8002200:	f7fe f802 	bl	8000208 <__aeabi_dsub>
 8002204:	4602      	mov	r2, r0
 8002206:	460b      	mov	r3, r1
 8002208:	f7fe f9b6 	bl	8000578 <__aeabi_dmul>
 800220c:	4602      	mov	r2, r0
 800220e:	460b      	mov	r3, r1
 8002210:	4620      	mov	r0, r4
 8002212:	4629      	mov	r1, r5
 8002214:	f7fd fffa 	bl	800020c <__adddf3>
 8002218:	ec41 0b10 	vmov	d0, r0, r1
 800221c:	f000 f96e 	bl	80024fc <sqrt>
 8002220:	9808      	ldr	r0, [sp, #32]
 8002222:	eeb0 9a40 	vmov.f32	s18, s0
 8002226:	ed9a 1b0e 	vldr	d1, [sl, #56]	; 0x38
 800222a:	eef0 9a60 	vmov.f32	s19, s1
 800222e:	ed90 0b00 	vldr	d0, [r0]
 8002232:	ec53 2b11 	vmov	r2, r3, d1
 8002236:	ec51 0b10 	vmov	r0, r1, d0
 800223a:	f7fe f99d 	bl	8000578 <__aeabi_dmul>
 800223e:	ec53 2b19 	vmov	r2, r3, d9
 8002242:	f7fe fac3 	bl	80007cc <__aeabi_ddiv>
 8002246:	4602      	mov	r2, r0
 8002248:	460b      	mov	r3, r1
 800224a:	ec51 0b18 	vmov	r0, r1, d8
 800224e:	f7fd ffdb 	bl	8000208 <__aeabi_dsub>
 8002252:	f1b9 0901 	subs.w	r9, r9, #1
 8002256:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
 800225a:	ec41 0b18 	vmov	d8, r0, r1
 800225e:	d197      	bne.n	8002190 <bodies_energy+0xd8>
 8002260:	9c06      	ldr	r4, [sp, #24]
 8002262:	9d05      	ldr	r5, [sp, #20]
 8002264:	e9dd 8603 	ldrd	r8, r6, [sp, #12]
 8002268:	9802      	ldr	r0, [sp, #8]
 800226a:	3c01      	subs	r4, #1
 800226c:	3540      	adds	r5, #64	; 0x40
 800226e:	4546      	cmp	r6, r8
 8002270:	f47f af3e 	bne.w	80020f0 <bodies_energy+0x38>
 8002274:	eeb0 0a48 	vmov.f32	s0, s16
 8002278:	eef0 0a68 	vmov.f32	s1, s17
 800227c:	b00a      	add	sp, #40	; 0x28
 800227e:	ecbd 8b08 	vpop	{d8-d11}
 8002282:	b001      	add	sp, #4
 8002284:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002288:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800228a:	bf00      	nop
 800228c:	bf00      	nop
 800228e:	bf00      	nop
	...
 800229c:	3fe00000 	.word	0x3fe00000

080022a0 <initialise_benchmark>:
 80022a0:	4770      	bx	lr

080022a2 <benchmark>:
 80022a2:	b5b0      	push	{r4, r5, r7, lr}
 80022a4:	af02      	add	r7, sp, #8
 80022a6:	f240 0418 	movw	r4, #24
 80022aa:	2105      	movs	r1, #5
 80022ac:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80022b0:	4620      	mov	r0, r4
 80022b2:	f7ff fe75 	bl	8001fa0 <offset_momentum>
 80022b6:	2564      	movs	r5, #100	; 0x64
 80022b8:	4620      	mov	r0, r4
 80022ba:	2105      	movs	r1, #5
 80022bc:	f7ff fefc 	bl	80020b8 <bodies_energy>
 80022c0:	3d01      	subs	r5, #1
 80022c2:	d1f9      	bne.n	80022b8 <benchmark+0x16>
 80022c4:	2000      	movs	r0, #0
 80022c6:	bdb0      	pop	{r4, r5, r7, pc}

080022c8 <verify_benchmark>:
 80022c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022ca:	af03      	add	r7, sp, #12
 80022cc:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 80022d0:	f247 48e8 	movw	r8, #29928	; 0x74e8
 80022d4:	f240 0918 	movw	r9, #24
 80022d8:	2400      	movs	r4, #0
 80022da:	f04f 0a00 	mov.w	sl, #0
 80022de:	f6c0 0800 	movt	r8, #2048	; 0x800
 80022e2:	f2c2 0900 	movt	r9, #8192	; 0x2000
 80022e6:	eb08 0604 	add.w	r6, r8, r4
 80022ea:	eb09 0504 	add.w	r5, r9, r4
 80022ee:	ed95 0b00 	vldr	d0, [r5]
 80022f2:	ed96 1b00 	vldr	d1, [r6]
 80022f6:	ec51 0b10 	vmov	r0, r1, d0
 80022fa:	ec53 2b11 	vmov	r2, r3, d1
 80022fe:	f7fe fba3 	bl	8000a48 <__aeabi_dcmpeq>
 8002302:	2800      	cmp	r0, #0
 8002304:	d04c      	beq.n	80023a0 <verify_benchmark+0xd8>
 8002306:	ed95 0b08 	vldr	d0, [r5, #32]
 800230a:	ed96 1b08 	vldr	d1, [r6, #32]
 800230e:	ec51 0b10 	vmov	r0, r1, d0
 8002312:	ec53 2b11 	vmov	r2, r3, d1
 8002316:	f7fe fb97 	bl	8000a48 <__aeabi_dcmpeq>
 800231a:	2800      	cmp	r0, #0
 800231c:	d040      	beq.n	80023a0 <verify_benchmark+0xd8>
 800231e:	ed95 0b02 	vldr	d0, [r5, #8]
 8002322:	ed96 1b02 	vldr	d1, [r6, #8]
 8002326:	ec51 0b10 	vmov	r0, r1, d0
 800232a:	ec53 2b11 	vmov	r2, r3, d1
 800232e:	f7fe fb8b 	bl	8000a48 <__aeabi_dcmpeq>
 8002332:	b3a8      	cbz	r0, 80023a0 <verify_benchmark+0xd8>
 8002334:	ed95 0b0a 	vldr	d0, [r5, #40]	; 0x28
 8002338:	ed96 1b0a 	vldr	d1, [r6, #40]	; 0x28
 800233c:	ec51 0b10 	vmov	r0, r1, d0
 8002340:	ec53 2b11 	vmov	r2, r3, d1
 8002344:	f7fe fb80 	bl	8000a48 <__aeabi_dcmpeq>
 8002348:	b350      	cbz	r0, 80023a0 <verify_benchmark+0xd8>
 800234a:	ed95 0b04 	vldr	d0, [r5, #16]
 800234e:	ed96 1b04 	vldr	d1, [r6, #16]
 8002352:	ec51 0b10 	vmov	r0, r1, d0
 8002356:	ec53 2b11 	vmov	r2, r3, d1
 800235a:	f7fe fb75 	bl	8000a48 <__aeabi_dcmpeq>
 800235e:	b1f8      	cbz	r0, 80023a0 <verify_benchmark+0xd8>
 8002360:	ed95 0b0c 	vldr	d0, [r5, #48]	; 0x30
 8002364:	ed96 1b0c 	vldr	d1, [r6, #48]	; 0x30
 8002368:	ec51 0b10 	vmov	r0, r1, d0
 800236c:	ec53 2b11 	vmov	r2, r3, d1
 8002370:	f7fe fb6a 	bl	8000a48 <__aeabi_dcmpeq>
 8002374:	b1a0      	cbz	r0, 80023a0 <verify_benchmark+0xd8>
 8002376:	ed95 0b0e 	vldr	d0, [r5, #56]	; 0x38
 800237a:	ed96 1b0e 	vldr	d1, [r6, #56]	; 0x38
 800237e:	ec51 0b10 	vmov	r0, r1, d0
 8002382:	ec53 2b11 	vmov	r2, r3, d1
 8002386:	f7fe fb5f 	bl	8000a48 <__aeabi_dcmpeq>
 800238a:	b148      	cbz	r0, 80023a0 <verify_benchmark+0xd8>
 800238c:	f10a 0a01 	add.w	sl, sl, #1
 8002390:	3440      	adds	r4, #64	; 0x40
 8002392:	f1ba 0f04 	cmp.w	sl, #4
 8002396:	dda6      	ble.n	80022e6 <verify_benchmark+0x1e>
 8002398:	2001      	movs	r0, #1
 800239a:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 800239e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80023a0:	2000      	movs	r0, #0
 80023a2:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 80023a6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023a8 <SysTick_Handler>:
 80023a8:	b580      	push	{r7, lr}
 80023aa:	466f      	mov	r7, sp
 80023ac:	f7fe fec0 	bl	8001130 <HAL_IncTick>
 80023b0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80023b4:	f7fe bf1a 	b.w	80011ec <HAL_SYSTICK_IRQHandler>

080023b8 <_read>:
 80023b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023ba:	af03      	add	r7, sp, #12
 80023bc:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023c0:	4614      	mov	r4, r2
 80023c2:	460d      	mov	r5, r1
 80023c4:	2c01      	cmp	r4, #1
 80023c6:	db06      	blt.n	80023d6 <_read+0x1e>
 80023c8:	4626      	mov	r6, r4
 80023ca:	f3af 8000 	nop.w
 80023ce:	f805 0b01 	strb.w	r0, [r5], #1
 80023d2:	3e01      	subs	r6, #1
 80023d4:	d1f9      	bne.n	80023ca <_read+0x12>
 80023d6:	4620      	mov	r0, r4
 80023d8:	f85d bb04 	ldr.w	fp, [sp], #4
 80023dc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023de <_write>:
 80023de:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023e0:	af03      	add	r7, sp, #12
 80023e2:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023e6:	4614      	mov	r4, r2
 80023e8:	460d      	mov	r5, r1
 80023ea:	2c01      	cmp	r4, #1
 80023ec:	db06      	blt.n	80023fc <_write+0x1e>
 80023ee:	4626      	mov	r6, r4
 80023f0:	f815 0b01 	ldrb.w	r0, [r5], #1
 80023f4:	f7ff fd73 	bl	8001ede <__io_putchar>
 80023f8:	3e01      	subs	r6, #1
 80023fa:	d1f9      	bne.n	80023f0 <_write+0x12>
 80023fc:	4620      	mov	r0, r4
 80023fe:	f85d bb04 	ldr.w	fp, [sp], #4
 8002402:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002404 <_sbrk>:
 8002404:	f640 32b0 	movw	r2, #2992	; 0xbb0
 8002408:	4601      	mov	r1, r0
 800240a:	466b      	mov	r3, sp
 800240c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002410:	6810      	ldr	r0, [r2, #0]
 8002412:	2800      	cmp	r0, #0
 8002414:	bf02      	ittt	eq
 8002416:	f640 4058 	movweq	r0, #3160	; 0xc58
 800241a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800241e:	6010      	streq	r0, [r2, #0]
 8002420:	4401      	add	r1, r0
 8002422:	4299      	cmp	r1, r3
 8002424:	bf9c      	itt	ls
 8002426:	6011      	strls	r1, [r2, #0]
 8002428:	4770      	bxls	lr
 800242a:	b580      	push	{r7, lr}
 800242c:	466f      	mov	r7, sp
 800242e:	f000 f98d 	bl	800274c <__errno>
 8002432:	210c      	movs	r1, #12
 8002434:	6001      	str	r1, [r0, #0]
 8002436:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800243a:	bd80      	pop	{r7, pc}

0800243c <_close>:
 800243c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002440:	4770      	bx	lr

08002442 <_fstat>:
 8002442:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002446:	6048      	str	r0, [r1, #4]
 8002448:	2000      	movs	r0, #0
 800244a:	4770      	bx	lr

0800244c <_isatty>:
 800244c:	2001      	movs	r0, #1
 800244e:	4770      	bx	lr

08002450 <_lseek>:
 8002450:	2000      	movs	r0, #0
 8002452:	4770      	bx	lr

08002454 <SystemInit>:
 8002454:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002458:	f04f 0c00 	mov.w	ip, #0
 800245c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002460:	6801      	ldr	r1, [r0, #0]
 8002462:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002466:	6001      	str	r1, [r0, #0]
 8002468:	f241 0100 	movw	r1, #4096	; 0x1000
 800246c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002470:	680a      	ldr	r2, [r1, #0]
 8002472:	f042 0201 	orr.w	r2, r2, #1
 8002476:	600a      	str	r2, [r1, #0]
 8002478:	f8c1 c008 	str.w	ip, [r1, #8]
 800247c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002480:	680b      	ldr	r3, [r1, #0]
 8002482:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002486:	401a      	ands	r2, r3
 8002488:	600a      	str	r2, [r1, #0]
 800248a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800248e:	60ca      	str	r2, [r1, #12]
 8002490:	680a      	ldr	r2, [r1, #0]
 8002492:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002496:	600a      	str	r2, [r1, #0]
 8002498:	f8c1 c018 	str.w	ip, [r1, #24]
 800249c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80024a0:	f840 1c80 	str.w	r1, [r0, #-128]
 80024a4:	4770      	bx	lr
	...

080024a8 <Reset_Handler>:
 80024a8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80024e0 <LoopForever+0x2>
 80024ac:	2100      	movs	r1, #0
 80024ae:	e003      	b.n	80024b8 <LoopCopyDataInit>

080024b0 <CopyDataInit>:
 80024b0:	4b0c      	ldr	r3, [pc, #48]	; (80024e4 <LoopForever+0x6>)
 80024b2:	585b      	ldr	r3, [r3, r1]
 80024b4:	5043      	str	r3, [r0, r1]
 80024b6:	3104      	adds	r1, #4

080024b8 <LoopCopyDataInit>:
 80024b8:	480b      	ldr	r0, [pc, #44]	; (80024e8 <LoopForever+0xa>)
 80024ba:	4b0c      	ldr	r3, [pc, #48]	; (80024ec <LoopForever+0xe>)
 80024bc:	1842      	adds	r2, r0, r1
 80024be:	429a      	cmp	r2, r3
 80024c0:	d3f6      	bcc.n	80024b0 <CopyDataInit>
 80024c2:	4a0b      	ldr	r2, [pc, #44]	; (80024f0 <LoopForever+0x12>)
 80024c4:	e002      	b.n	80024cc <LoopFillZerobss>

080024c6 <FillZerobss>:
 80024c6:	2300      	movs	r3, #0
 80024c8:	f842 3b04 	str.w	r3, [r2], #4

080024cc <LoopFillZerobss>:
 80024cc:	4b09      	ldr	r3, [pc, #36]	; (80024f4 <LoopForever+0x16>)
 80024ce:	429a      	cmp	r2, r3
 80024d0:	d3f9      	bcc.n	80024c6 <FillZerobss>
 80024d2:	f7ff ffbf 	bl	8002454 <SystemInit>
 80024d6:	f000 f93f 	bl	8002758 <__libc_init_array>
 80024da:	f7ff fd11 	bl	8001f00 <main>

080024de <LoopForever>:
 80024de:	e7fe      	b.n	80024de <LoopForever>
 80024e0:	20018000 	.word	0x20018000
 80024e4:	080079e8 	.word	0x080079e8
 80024e8:	20000000 	.word	0x20000000
 80024ec:	20000b10 	.word	0x20000b10
 80024f0:	20000b10 	.word	0x20000b10
 80024f4:	20000c58 	.word	0x20000c58

080024f8 <ADC1_2_IRQHandler>:
 80024f8:	e7fe      	b.n	80024f8 <ADC1_2_IRQHandler>
	...

080024fc <sqrt>:
 80024fc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002500:	ed2d 8b02 	vpush	{d8}
 8002504:	b08b      	sub	sp, #44	; 0x2c
 8002506:	ec55 4b10 	vmov	r4, r5, d0
 800250a:	f000 f853 	bl	80025b4 <__ieee754_sqrt>
 800250e:	4b27      	ldr	r3, [pc, #156]	; (80025ac <sqrt+0xb0>)
 8002510:	eeb0 8a40 	vmov.f32	s16, s0
 8002514:	eef0 8a60 	vmov.f32	s17, s1
 8002518:	f993 6000 	ldrsb.w	r6, [r3]
 800251c:	1c73      	adds	r3, r6, #1
 800251e:	d012      	beq.n	8002546 <sqrt+0x4a>
 8002520:	4622      	mov	r2, r4
 8002522:	462b      	mov	r3, r5
 8002524:	4620      	mov	r0, r4
 8002526:	4629      	mov	r1, r5
 8002528:	f7fe fac0 	bl	8000aac <__aeabi_dcmpun>
 800252c:	4607      	mov	r7, r0
 800252e:	b950      	cbnz	r0, 8002546 <sqrt+0x4a>
 8002530:	f04f 0800 	mov.w	r8, #0
 8002534:	f04f 0900 	mov.w	r9, #0
 8002538:	4620      	mov	r0, r4
 800253a:	4629      	mov	r1, r5
 800253c:	4642      	mov	r2, r8
 800253e:	464b      	mov	r3, r9
 8002540:	f7fe fa8c 	bl	8000a5c <__aeabi_dcmplt>
 8002544:	b940      	cbnz	r0, 8002558 <sqrt+0x5c>
 8002546:	eeb0 0a48 	vmov.f32	s0, s16
 800254a:	eef0 0a68 	vmov.f32	s1, s17
 800254e:	b00b      	add	sp, #44	; 0x2c
 8002550:	ecbd 8b02 	vpop	{d8}
 8002554:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002558:	2201      	movs	r2, #1
 800255a:	4b15      	ldr	r3, [pc, #84]	; (80025b0 <sqrt+0xb4>)
 800255c:	9708      	str	r7, [sp, #32]
 800255e:	9200      	str	r2, [sp, #0]
 8002560:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002564:	e9cd 4502 	strd	r4, r5, [sp, #8]
 8002568:	9301      	str	r3, [sp, #4]
 800256a:	b196      	cbz	r6, 8002592 <sqrt+0x96>
 800256c:	4642      	mov	r2, r8
 800256e:	464b      	mov	r3, r9
 8002570:	4640      	mov	r0, r8
 8002572:	4649      	mov	r1, r9
 8002574:	f7fe f92a 	bl	80007cc <__aeabi_ddiv>
 8002578:	2e02      	cmp	r6, #2
 800257a:	e9cd 0106 	strd	r0, r1, [sp, #24]
 800257e:	d10a      	bne.n	8002596 <sqrt+0x9a>
 8002580:	f000 f8e4 	bl	800274c <__errno>
 8002584:	2321      	movs	r3, #33	; 0x21
 8002586:	6003      	str	r3, [r0, #0]
 8002588:	9b08      	ldr	r3, [sp, #32]
 800258a:	b953      	cbnz	r3, 80025a2 <sqrt+0xa6>
 800258c:	ed9d 8b06 	vldr	d8, [sp, #24]
 8002590:	e7d9      	b.n	8002546 <sqrt+0x4a>
 8002592:	e9cd 8906 	strd	r8, r9, [sp, #24]
 8002596:	4668      	mov	r0, sp
 8002598:	f000 f8d6 	bl	8002748 <matherr>
 800259c:	2800      	cmp	r0, #0
 800259e:	d1f3      	bne.n	8002588 <sqrt+0x8c>
 80025a0:	e7ee      	b.n	8002580 <sqrt+0x84>
 80025a2:	f000 f8d3 	bl	800274c <__errno>
 80025a6:	9b08      	ldr	r3, [sp, #32]
 80025a8:	6003      	str	r3, [r0, #0]
 80025aa:	e7ef      	b.n	800258c <sqrt+0x90>
 80025ac:	2000015c 	.word	0x2000015c
 80025b0:	0800773c 	.word	0x0800773c

080025b4 <__ieee754_sqrt>:
 80025b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80025b8:	4a62      	ldr	r2, [pc, #392]	; (8002744 <__ieee754_sqrt+0x190>)
 80025ba:	ec57 6b10 	vmov	r6, r7, d0
 80025be:	43ba      	bics	r2, r7
 80025c0:	f000 8095 	beq.w	80026ee <__ieee754_sqrt+0x13a>
 80025c4:	2f00      	cmp	r7, #0
 80025c6:	463b      	mov	r3, r7
 80025c8:	ee10 1a10 	vmov	r1, s0
 80025cc:	4634      	mov	r4, r6
 80025ce:	dd54      	ble.n	800267a <__ieee754_sqrt+0xc6>
 80025d0:	153f      	asrs	r7, r7, #20
 80025d2:	f000 80af 	beq.w	8002734 <__ieee754_sqrt+0x180>
 80025d6:	f3c3 0313 	ubfx	r3, r3, #0, #20
 80025da:	f2a7 37ff 	subw	r7, r7, #1023	; 0x3ff
 80025de:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80025e2:	0fe2      	lsrs	r2, r4, #31
 80025e4:	07f9      	lsls	r1, r7, #31
 80025e6:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 80025ea:	ea4f 0544 	mov.w	r5, r4, lsl #1
 80025ee:	d503      	bpl.n	80025f8 <__ieee754_sqrt+0x44>
 80025f0:	0fed      	lsrs	r5, r5, #31
 80025f2:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 80025f6:	00a5      	lsls	r5, r4, #2
 80025f8:	2600      	movs	r6, #0
 80025fa:	107f      	asrs	r7, r7, #1
 80025fc:	46b4      	mov	ip, r6
 80025fe:	2216      	movs	r2, #22
 8002600:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 8002604:	eb0c 0001 	add.w	r0, ip, r1
 8002608:	4298      	cmp	r0, r3
 800260a:	ea4f 74d5 	mov.w	r4, r5, lsr #31
 800260e:	ea4f 0545 	mov.w	r5, r5, lsl #1
 8002612:	dc03      	bgt.n	800261c <__ieee754_sqrt+0x68>
 8002614:	1a1b      	subs	r3, r3, r0
 8002616:	eb00 0c01 	add.w	ip, r0, r1
 800261a:	440e      	add	r6, r1
 800261c:	3a01      	subs	r2, #1
 800261e:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 8002622:	ea4f 0151 	mov.w	r1, r1, lsr #1
 8002626:	d1ed      	bne.n	8002604 <__ieee754_sqrt+0x50>
 8002628:	4610      	mov	r0, r2
 800262a:	4696      	mov	lr, r2
 800262c:	2420      	movs	r4, #32
 800262e:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 8002632:	e009      	b.n	8002648 <__ieee754_sqrt+0x94>
 8002634:	d052      	beq.n	80026dc <__ieee754_sqrt+0x128>
 8002636:	005b      	lsls	r3, r3, #1
 8002638:	3c01      	subs	r4, #1
 800263a:	eb03 73d5 	add.w	r3, r3, r5, lsr #31
 800263e:	ea4f 0252 	mov.w	r2, r2, lsr #1
 8002642:	ea4f 0545 	mov.w	r5, r5, lsl #1
 8002646:	d036      	beq.n	80026b6 <__ieee754_sqrt+0x102>
 8002648:	4563      	cmp	r3, ip
 800264a:	eb02 010e 	add.w	r1, r2, lr
 800264e:	ddf1      	ble.n	8002634 <__ieee754_sqrt+0x80>
 8002650:	2900      	cmp	r1, #0
 8002652:	eb01 0e02 	add.w	lr, r1, r2
 8002656:	db0a      	blt.n	800266e <__ieee754_sqrt+0xba>
 8002658:	46e0      	mov	r8, ip
 800265a:	eba3 030c 	sub.w	r3, r3, ip
 800265e:	42a9      	cmp	r1, r5
 8002660:	bf88      	it	hi
 8002662:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 8002666:	1a6d      	subs	r5, r5, r1
 8002668:	4410      	add	r0, r2
 800266a:	46c4      	mov	ip, r8
 800266c:	e7e3      	b.n	8002636 <__ieee754_sqrt+0x82>
 800266e:	f1be 0f00 	cmp.w	lr, #0
 8002672:	dbf1      	blt.n	8002658 <__ieee754_sqrt+0xa4>
 8002674:	f10c 0801 	add.w	r8, ip, #1
 8002678:	e7ef      	b.n	800265a <__ieee754_sqrt+0xa6>
 800267a:	f027 4200 	bic.w	r2, r7, #2147483648	; 0x80000000
 800267e:	4332      	orrs	r2, r6
 8002680:	d02a      	beq.n	80026d8 <__ieee754_sqrt+0x124>
 8002682:	2f00      	cmp	r7, #0
 8002684:	d149      	bne.n	800271a <__ieee754_sqrt+0x166>
 8002686:	0aca      	lsrs	r2, r1, #11
 8002688:	3b15      	subs	r3, #21
 800268a:	0549      	lsls	r1, r1, #21
 800268c:	2a00      	cmp	r2, #0
 800268e:	d0fa      	beq.n	8002686 <__ieee754_sqrt+0xd2>
 8002690:	f412 1080 	ands.w	r0, r2, #1048576	; 0x100000
 8002694:	d001      	beq.n	800269a <__ieee754_sqrt+0xe6>
 8002696:	e050      	b.n	800273a <__ieee754_sqrt+0x186>
 8002698:	4620      	mov	r0, r4
 800269a:	0052      	lsls	r2, r2, #1
 800269c:	02d5      	lsls	r5, r2, #11
 800269e:	f100 0401 	add.w	r4, r0, #1
 80026a2:	d5f9      	bpl.n	8002698 <__ieee754_sqrt+0xe4>
 80026a4:	f1c4 0520 	rsb	r5, r4, #32
 80026a8:	fa01 f404 	lsl.w	r4, r1, r4
 80026ac:	40e9      	lsrs	r1, r5
 80026ae:	1a1f      	subs	r7, r3, r0
 80026b0:	ea41 0302 	orr.w	r3, r1, r2
 80026b4:	e78f      	b.n	80025d6 <__ieee754_sqrt+0x22>
 80026b6:	432b      	orrs	r3, r5
 80026b8:	d129      	bne.n	800270e <__ieee754_sqrt+0x15a>
 80026ba:	0844      	lsrs	r4, r0, #1
 80026bc:	1071      	asrs	r1, r6, #1
 80026be:	07f3      	lsls	r3, r6, #31
 80026c0:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 80026c4:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 80026c8:	bf48      	it	mi
 80026ca:	f044 4400 	orrmi.w	r4, r4, #2147483648	; 0x80000000
 80026ce:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 80026d2:	4622      	mov	r2, r4
 80026d4:	ec43 2b10 	vmov	d0, r2, r3
 80026d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80026dc:	42a9      	cmp	r1, r5
 80026de:	d8aa      	bhi.n	8002636 <__ieee754_sqrt+0x82>
 80026e0:	2900      	cmp	r1, #0
 80026e2:	eb01 0e02 	add.w	lr, r1, r2
 80026e6:	dbc2      	blt.n	800266e <__ieee754_sqrt+0xba>
 80026e8:	4698      	mov	r8, r3
 80026ea:	2300      	movs	r3, #0
 80026ec:	e7bb      	b.n	8002666 <__ieee754_sqrt+0xb2>
 80026ee:	ee10 2a10 	vmov	r2, s0
 80026f2:	463b      	mov	r3, r7
 80026f4:	ee10 0a10 	vmov	r0, s0
 80026f8:	4639      	mov	r1, r7
 80026fa:	f7fd ff3d 	bl	8000578 <__aeabi_dmul>
 80026fe:	4632      	mov	r2, r6
 8002700:	463b      	mov	r3, r7
 8002702:	f7fd fd83 	bl	800020c <__adddf3>
 8002706:	ec41 0b10 	vmov	d0, r0, r1
 800270a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800270e:	1c42      	adds	r2, r0, #1
 8002710:	bf16      	itet	ne
 8002712:	1c42      	addne	r2, r0, #1
 8002714:	3601      	addeq	r6, #1
 8002716:	0854      	lsrne	r4, r2, #1
 8002718:	e7d0      	b.n	80026bc <__ieee754_sqrt+0x108>
 800271a:	ee10 2a10 	vmov	r2, s0
 800271e:	4630      	mov	r0, r6
 8002720:	4639      	mov	r1, r7
 8002722:	f7fd fd71 	bl	8000208 <__aeabi_dsub>
 8002726:	4602      	mov	r2, r0
 8002728:	460b      	mov	r3, r1
 800272a:	f7fe f84f 	bl	80007cc <__aeabi_ddiv>
 800272e:	ec41 0b10 	vmov	d0, r0, r1
 8002732:	e7d1      	b.n	80026d8 <__ieee754_sqrt+0x124>
 8002734:	461a      	mov	r2, r3
 8002736:	463b      	mov	r3, r7
 8002738:	e7aa      	b.n	8002690 <__ieee754_sqrt+0xdc>
 800273a:	460c      	mov	r4, r1
 800273c:	2520      	movs	r5, #32
 800273e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002742:	e7b3      	b.n	80026ac <__ieee754_sqrt+0xf8>
 8002744:	7ff00000 	.word	0x7ff00000

08002748 <matherr>:
 8002748:	2000      	movs	r0, #0
 800274a:	4770      	bx	lr

0800274c <__errno>:
 800274c:	4b01      	ldr	r3, [pc, #4]	; (8002754 <__errno+0x8>)
 800274e:	6818      	ldr	r0, [r3, #0]
 8002750:	4770      	bx	lr
 8002752:	bf00      	nop
 8002754:	20000160 	.word	0x20000160

08002758 <__libc_init_array>:
 8002758:	b570      	push	{r4, r5, r6, lr}
 800275a:	4e0d      	ldr	r6, [pc, #52]	; (8002790 <__libc_init_array+0x38>)
 800275c:	4d0d      	ldr	r5, [pc, #52]	; (8002794 <__libc_init_array+0x3c>)
 800275e:	1b76      	subs	r6, r6, r5
 8002760:	10b6      	asrs	r6, r6, #2
 8002762:	d006      	beq.n	8002772 <__libc_init_array+0x1a>
 8002764:	2400      	movs	r4, #0
 8002766:	3401      	adds	r4, #1
 8002768:	f855 3b04 	ldr.w	r3, [r5], #4
 800276c:	4798      	blx	r3
 800276e:	42a6      	cmp	r6, r4
 8002770:	d1f9      	bne.n	8002766 <__libc_init_array+0xe>
 8002772:	4e09      	ldr	r6, [pc, #36]	; (8002798 <__libc_init_array+0x40>)
 8002774:	4d09      	ldr	r5, [pc, #36]	; (800279c <__libc_init_array+0x44>)
 8002776:	1b76      	subs	r6, r6, r5
 8002778:	f004 fea8 	bl	80074cc <_init>
 800277c:	10b6      	asrs	r6, r6, #2
 800277e:	d006      	beq.n	800278e <__libc_init_array+0x36>
 8002780:	2400      	movs	r4, #0
 8002782:	3401      	adds	r4, #1
 8002784:	f855 3b04 	ldr.w	r3, [r5], #4
 8002788:	4798      	blx	r3
 800278a:	42a6      	cmp	r6, r4
 800278c:	d1f9      	bne.n	8002782 <__libc_init_array+0x2a>
 800278e:	bd70      	pop	{r4, r5, r6, pc}
 8002790:	080079d8 	.word	0x080079d8
 8002794:	080079d8 	.word	0x080079d8
 8002798:	080079e0 	.word	0x080079e0
 800279c:	080079d8 	.word	0x080079d8

080027a0 <memset>:
 80027a0:	b4f0      	push	{r4, r5, r6, r7}
 80027a2:	0786      	lsls	r6, r0, #30
 80027a4:	d043      	beq.n	800282e <memset+0x8e>
 80027a6:	1e54      	subs	r4, r2, #1
 80027a8:	2a00      	cmp	r2, #0
 80027aa:	d03e      	beq.n	800282a <memset+0x8a>
 80027ac:	b2ca      	uxtb	r2, r1
 80027ae:	4603      	mov	r3, r0
 80027b0:	e002      	b.n	80027b8 <memset+0x18>
 80027b2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80027b6:	d338      	bcc.n	800282a <memset+0x8a>
 80027b8:	f803 2b01 	strb.w	r2, [r3], #1
 80027bc:	079d      	lsls	r5, r3, #30
 80027be:	d1f8      	bne.n	80027b2 <memset+0x12>
 80027c0:	2c03      	cmp	r4, #3
 80027c2:	d92b      	bls.n	800281c <memset+0x7c>
 80027c4:	b2cd      	uxtb	r5, r1
 80027c6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80027ca:	2c0f      	cmp	r4, #15
 80027cc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80027d0:	d916      	bls.n	8002800 <memset+0x60>
 80027d2:	f1a4 0710 	sub.w	r7, r4, #16
 80027d6:	093f      	lsrs	r7, r7, #4
 80027d8:	f103 0620 	add.w	r6, r3, #32
 80027dc:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80027e0:	f103 0210 	add.w	r2, r3, #16
 80027e4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80027e8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80027ec:	3210      	adds	r2, #16
 80027ee:	42b2      	cmp	r2, r6
 80027f0:	d1f8      	bne.n	80027e4 <memset+0x44>
 80027f2:	f004 040f 	and.w	r4, r4, #15
 80027f6:	3701      	adds	r7, #1
 80027f8:	2c03      	cmp	r4, #3
 80027fa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80027fe:	d90d      	bls.n	800281c <memset+0x7c>
 8002800:	461e      	mov	r6, r3
 8002802:	4622      	mov	r2, r4
 8002804:	3a04      	subs	r2, #4
 8002806:	2a03      	cmp	r2, #3
 8002808:	f846 5b04 	str.w	r5, [r6], #4
 800280c:	d8fa      	bhi.n	8002804 <memset+0x64>
 800280e:	1f22      	subs	r2, r4, #4
 8002810:	f022 0203 	bic.w	r2, r2, #3
 8002814:	3204      	adds	r2, #4
 8002816:	4413      	add	r3, r2
 8002818:	f004 0403 	and.w	r4, r4, #3
 800281c:	b12c      	cbz	r4, 800282a <memset+0x8a>
 800281e:	b2c9      	uxtb	r1, r1
 8002820:	441c      	add	r4, r3
 8002822:	f803 1b01 	strb.w	r1, [r3], #1
 8002826:	429c      	cmp	r4, r3
 8002828:	d1fb      	bne.n	8002822 <memset+0x82>
 800282a:	bcf0      	pop	{r4, r5, r6, r7}
 800282c:	4770      	bx	lr
 800282e:	4614      	mov	r4, r2
 8002830:	4603      	mov	r3, r0
 8002832:	e7c5      	b.n	80027c0 <memset+0x20>

08002834 <printf>:
 8002834:	b40f      	push	{r0, r1, r2, r3}
 8002836:	b500      	push	{lr}
 8002838:	4907      	ldr	r1, [pc, #28]	; (8002858 <printf+0x24>)
 800283a:	b083      	sub	sp, #12
 800283c:	ab04      	add	r3, sp, #16
 800283e:	6808      	ldr	r0, [r1, #0]
 8002840:	f853 2b04 	ldr.w	r2, [r3], #4
 8002844:	6881      	ldr	r1, [r0, #8]
 8002846:	9301      	str	r3, [sp, #4]
 8002848:	f000 f85e 	bl	8002908 <_vfprintf_r>
 800284c:	b003      	add	sp, #12
 800284e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002852:	b004      	add	sp, #16
 8002854:	4770      	bx	lr
 8002856:	bf00      	nop
 8002858:	20000160 	.word	0x20000160

0800285c <_puts_r>:
 800285c:	b570      	push	{r4, r5, r6, lr}
 800285e:	4605      	mov	r5, r0
 8002860:	b088      	sub	sp, #32
 8002862:	4608      	mov	r0, r1
 8002864:	460c      	mov	r4, r1
 8002866:	f7fe fb6b 	bl	8000f40 <strlen>
 800286a:	4a22      	ldr	r2, [pc, #136]	; (80028f4 <_puts_r+0x98>)
 800286c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800286e:	9404      	str	r4, [sp, #16]
 8002870:	2601      	movs	r6, #1
 8002872:	1c44      	adds	r4, r0, #1
 8002874:	a904      	add	r1, sp, #16
 8002876:	9206      	str	r2, [sp, #24]
 8002878:	2202      	movs	r2, #2
 800287a:	9403      	str	r4, [sp, #12]
 800287c:	9005      	str	r0, [sp, #20]
 800287e:	68ac      	ldr	r4, [r5, #8]
 8002880:	9607      	str	r6, [sp, #28]
 8002882:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002886:	b31b      	cbz	r3, 80028d0 <_puts_r+0x74>
 8002888:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800288a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800288e:	07ce      	lsls	r6, r1, #31
 8002890:	b29a      	uxth	r2, r3
 8002892:	d401      	bmi.n	8002898 <_puts_r+0x3c>
 8002894:	0590      	lsls	r0, r2, #22
 8002896:	d525      	bpl.n	80028e4 <_puts_r+0x88>
 8002898:	0491      	lsls	r1, r2, #18
 800289a:	d406      	bmi.n	80028aa <_puts_r+0x4e>
 800289c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800289e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80028a2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80028a6:	81a3      	strh	r3, [r4, #12]
 80028a8:	6662      	str	r2, [r4, #100]	; 0x64
 80028aa:	4628      	mov	r0, r5
 80028ac:	aa01      	add	r2, sp, #4
 80028ae:	4621      	mov	r1, r4
 80028b0:	f003 f85e 	bl	8005970 <__sfvwrite_r>
 80028b4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80028b6:	2800      	cmp	r0, #0
 80028b8:	bf0c      	ite	eq
 80028ba:	250a      	moveq	r5, #10
 80028bc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80028c0:	07da      	lsls	r2, r3, #31
 80028c2:	d402      	bmi.n	80028ca <_puts_r+0x6e>
 80028c4:	89a3      	ldrh	r3, [r4, #12]
 80028c6:	059b      	lsls	r3, r3, #22
 80028c8:	d506      	bpl.n	80028d8 <_puts_r+0x7c>
 80028ca:	4628      	mov	r0, r5
 80028cc:	b008      	add	sp, #32
 80028ce:	bd70      	pop	{r4, r5, r6, pc}
 80028d0:	4628      	mov	r0, r5
 80028d2:	f002 feb7 	bl	8005644 <__sinit>
 80028d6:	e7d7      	b.n	8002888 <_puts_r+0x2c>
 80028d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80028da:	f003 fa05 	bl	8005ce8 <__retarget_lock_release_recursive>
 80028de:	4628      	mov	r0, r5
 80028e0:	b008      	add	sp, #32
 80028e2:	bd70      	pop	{r4, r5, r6, pc}
 80028e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80028e6:	f003 f9fd 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 80028ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80028ee:	b29a      	uxth	r2, r3
 80028f0:	e7d2      	b.n	8002898 <_puts_r+0x3c>
 80028f2:	bf00      	nop
 80028f4:	08007748 	.word	0x08007748

080028f8 <puts>:
 80028f8:	4b02      	ldr	r3, [pc, #8]	; (8002904 <puts+0xc>)
 80028fa:	4601      	mov	r1, r0
 80028fc:	6818      	ldr	r0, [r3, #0]
 80028fe:	f7ff bfad 	b.w	800285c <_puts_r>
 8002902:	bf00      	nop
 8002904:	20000160 	.word	0x20000160

08002908 <_vfprintf_r>:
 8002908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800290c:	b0d7      	sub	sp, #348	; 0x15c
 800290e:	461c      	mov	r4, r3
 8002910:	4689      	mov	r9, r1
 8002912:	4617      	mov	r7, r2
 8002914:	4605      	mov	r5, r0
 8002916:	9003      	str	r0, [sp, #12]
 8002918:	f003 f9d2 	bl	8005cc0 <_localeconv_r>
 800291c:	6803      	ldr	r3, [r0, #0]
 800291e:	9316      	str	r3, [sp, #88]	; 0x58
 8002920:	4618      	mov	r0, r3
 8002922:	f7fe fb0d 	bl	8000f40 <strlen>
 8002926:	9408      	str	r4, [sp, #32]
 8002928:	9015      	str	r0, [sp, #84]	; 0x54
 800292a:	b11d      	cbz	r5, 8002934 <_vfprintf_r+0x2c>
 800292c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800292e:	2b00      	cmp	r3, #0
 8002930:	f000 8107 	beq.w	8002b42 <_vfprintf_r+0x23a>
 8002934:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002938:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800293c:	07c8      	lsls	r0, r1, #31
 800293e:	b293      	uxth	r3, r2
 8002940:	d402      	bmi.n	8002948 <_vfprintf_r+0x40>
 8002942:	0599      	lsls	r1, r3, #22
 8002944:	f140 811f 	bpl.w	8002b86 <_vfprintf_r+0x27e>
 8002948:	049e      	lsls	r6, r3, #18
 800294a:	d40a      	bmi.n	8002962 <_vfprintf_r+0x5a>
 800294c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002950:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002954:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002958:	f8a9 300c 	strh.w	r3, [r9, #12]
 800295c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002960:	b29b      	uxth	r3, r3
 8002962:	071d      	lsls	r5, r3, #28
 8002964:	f140 80b2 	bpl.w	8002acc <_vfprintf_r+0x1c4>
 8002968:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800296c:	2a00      	cmp	r2, #0
 800296e:	f000 80ad 	beq.w	8002acc <_vfprintf_r+0x1c4>
 8002972:	f003 021a 	and.w	r2, r3, #26
 8002976:	2a0a      	cmp	r2, #10
 8002978:	f000 80c9 	beq.w	8002b0e <_vfprintf_r+0x206>
 800297c:	2300      	movs	r3, #0
 800297e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002b98 <_vfprintf_r+0x290>
 8002982:	9310      	str	r3, [sp, #64]	; 0x40
 8002984:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002988:	9317      	str	r3, [sp, #92]	; 0x5c
 800298a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800298e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002990:	9318      	str	r3, [sp, #96]	; 0x60
 8002992:	9305      	str	r3, [sp, #20]
 8002994:	ab2d      	add	r3, sp, #180	; 0xb4
 8002996:	932a      	str	r3, [sp, #168]	; 0xa8
 8002998:	469b      	mov	fp, r3
 800299a:	783b      	ldrb	r3, [r7, #0]
 800299c:	f8cd 901c 	str.w	r9, [sp, #28]
 80029a0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80029a4:	2b00      	cmp	r3, #0
 80029a6:	f000 8259 	beq.w	8002e5c <_vfprintf_r+0x554>
 80029aa:	2b25      	cmp	r3, #37	; 0x25
 80029ac:	463c      	mov	r4, r7
 80029ae:	d102      	bne.n	80029b6 <_vfprintf_r+0xae>
 80029b0:	e01d      	b.n	80029ee <_vfprintf_r+0xe6>
 80029b2:	2b25      	cmp	r3, #37	; 0x25
 80029b4:	d003      	beq.n	80029be <_vfprintf_r+0xb6>
 80029b6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80029ba:	2b00      	cmp	r3, #0
 80029bc:	d1f9      	bne.n	80029b2 <_vfprintf_r+0xaa>
 80029be:	1be5      	subs	r5, r4, r7
 80029c0:	b18d      	cbz	r5, 80029e6 <_vfprintf_r+0xde>
 80029c2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80029c6:	3301      	adds	r3, #1
 80029c8:	442a      	add	r2, r5
 80029ca:	2b07      	cmp	r3, #7
 80029cc:	f8cb 7000 	str.w	r7, [fp]
 80029d0:	f8cb 5004 	str.w	r5, [fp, #4]
 80029d4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80029d8:	f300 80ca 	bgt.w	8002b70 <_vfprintf_r+0x268>
 80029dc:	f10b 0b08 	add.w	fp, fp, #8
 80029e0:	9b05      	ldr	r3, [sp, #20]
 80029e2:	442b      	add	r3, r5
 80029e4:	9305      	str	r3, [sp, #20]
 80029e6:	7823      	ldrb	r3, [r4, #0]
 80029e8:	2b00      	cmp	r3, #0
 80029ea:	f000 8237 	beq.w	8002e5c <_vfprintf_r+0x554>
 80029ee:	2300      	movs	r3, #0
 80029f0:	7866      	ldrb	r6, [r4, #1]
 80029f2:	9306      	str	r3, [sp, #24]
 80029f4:	4698      	mov	r8, r3
 80029f6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80029fa:	f104 0a01 	add.w	sl, r4, #1
 80029fe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002a02:	252b      	movs	r5, #43	; 0x2b
 8002a04:	f10a 0a01 	add.w	sl, sl, #1
 8002a08:	f1a6 0320 	sub.w	r3, r6, #32
 8002a0c:	2b5a      	cmp	r3, #90	; 0x5a
 8002a0e:	f200 842a 	bhi.w	8003266 <_vfprintf_r+0x95e>
 8002a12:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002a16:	03aa      	.short	0x03aa
 8002a18:	04280428 	.word	0x04280428
 8002a1c:	0428029c 	.word	0x0428029c
 8002a20:	04280428 	.word	0x04280428
 8002a24:	042802a7 	.word	0x042802a7
 8002a28:	02c60428 	.word	0x02c60428
 8002a2c:	042802d2 	.word	0x042802d2
 8002a30:	02dc02d7 	.word	0x02dc02d7
 8002a34:	02f60428 	.word	0x02f60428
 8002a38:	026d026d 	.word	0x026d026d
 8002a3c:	026d026d 	.word	0x026d026d
 8002a40:	026d026d 	.word	0x026d026d
 8002a44:	026d026d 	.word	0x026d026d
 8002a48:	0428026d 	.word	0x0428026d
 8002a4c:	04280428 	.word	0x04280428
 8002a50:	04280428 	.word	0x04280428
 8002a54:	04280428 	.word	0x04280428
 8002a58:	042802fb 	.word	0x042802fb
 8002a5c:	03f3033c 	.word	0x03f3033c
 8002a60:	02fb02fb 	.word	0x02fb02fb
 8002a64:	042802fb 	.word	0x042802fb
 8002a68:	04280428 	.word	0x04280428
 8002a6c:	03ee0428 	.word	0x03ee0428
 8002a70:	04280428 	.word	0x04280428
 8002a74:	0428009a 	.word	0x0428009a
 8002a78:	04280428 	.word	0x04280428
 8002a7c:	04280350 	.word	0x04280350
 8002a80:	04280379 	.word	0x04280379
 8002a84:	03900428 	.word	0x03900428
 8002a88:	04280428 	.word	0x04280428
 8002a8c:	04280428 	.word	0x04280428
 8002a90:	04280428 	.word	0x04280428
 8002a94:	04280428 	.word	0x04280428
 8002a98:	042802fb 	.word	0x042802fb
 8002a9c:	00c5033c 	.word	0x00c5033c
 8002aa0:	02fb02fb 	.word	0x02fb02fb
 8002aa4:	03d102fb 	.word	0x03d102fb
 8002aa8:	007000c5 	.word	0x007000c5
 8002aac:	03b50428 	.word	0x03b50428
 8002ab0:	03c20428 	.word	0x03c20428
 8002ab4:	03de009c 	.word	0x03de009c
 8002ab8:	04280070 	.word	0x04280070
 8002abc:	00720350 	.word	0x00720350
 8002ac0:	0428022c 	.word	0x0428022c
 8002ac4:	027c0428 	.word	0x027c0428
 8002ac8:	00720428 	.word	0x00720428
 8002acc:	4649      	mov	r1, r9
 8002ace:	9803      	ldr	r0, [sp, #12]
 8002ad0:	f001 fc9a 	bl	8004408 <__swsetup_r>
 8002ad4:	b1a0      	cbz	r0, 8002b00 <_vfprintf_r+0x1f8>
 8002ad6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002ada:	07d8      	lsls	r0, r3, #31
 8002adc:	d404      	bmi.n	8002ae8 <_vfprintf_r+0x1e0>
 8002ade:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ae2:	0599      	lsls	r1, r3, #22
 8002ae4:	f140 83b7 	bpl.w	8003256 <_vfprintf_r+0x94e>
 8002ae8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002aec:	9305      	str	r3, [sp, #20]
 8002aee:	9805      	ldr	r0, [sp, #20]
 8002af0:	b057      	add	sp, #348	; 0x15c
 8002af2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002af6:	f048 0820 	orr.w	r8, r8, #32
 8002afa:	f89a 6000 	ldrb.w	r6, [sl]
 8002afe:	e781      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002b00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002b04:	f003 021a 	and.w	r2, r3, #26
 8002b08:	2a0a      	cmp	r2, #10
 8002b0a:	f47f af37 	bne.w	800297c <_vfprintf_r+0x74>
 8002b0e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002b12:	2a00      	cmp	r2, #0
 8002b14:	f6ff af32 	blt.w	800297c <_vfprintf_r+0x74>
 8002b18:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002b1c:	07d2      	lsls	r2, r2, #31
 8002b1e:	d405      	bmi.n	8002b2c <_vfprintf_r+0x224>
 8002b20:	059b      	lsls	r3, r3, #22
 8002b22:	d403      	bmi.n	8002b2c <_vfprintf_r+0x224>
 8002b24:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002b28:	f003 f8de 	bl	8005ce8 <__retarget_lock_release_recursive>
 8002b2c:	4623      	mov	r3, r4
 8002b2e:	463a      	mov	r2, r7
 8002b30:	4649      	mov	r1, r9
 8002b32:	9803      	ldr	r0, [sp, #12]
 8002b34:	f001 fc26 	bl	8004384 <__sbprintf>
 8002b38:	9005      	str	r0, [sp, #20]
 8002b3a:	9805      	ldr	r0, [sp, #20]
 8002b3c:	b057      	add	sp, #348	; 0x15c
 8002b3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b42:	9803      	ldr	r0, [sp, #12]
 8002b44:	f002 fd7e 	bl	8005644 <__sinit>
 8002b48:	e6f4      	b.n	8002934 <_vfprintf_r+0x2c>
 8002b4a:	f048 0810 	orr.w	r8, r8, #16
 8002b4e:	f018 0f20 	tst.w	r8, #32
 8002b52:	f000 836c 	beq.w	800322e <_vfprintf_r+0x926>
 8002b56:	9c08      	ldr	r4, [sp, #32]
 8002b58:	3407      	adds	r4, #7
 8002b5a:	f024 0307 	bic.w	r3, r4, #7
 8002b5e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b62:	f103 0208 	add.w	r2, r3, #8
 8002b66:	9208      	str	r2, [sp, #32]
 8002b68:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b6c:	2200      	movs	r2, #0
 8002b6e:	e18c      	b.n	8002e8a <_vfprintf_r+0x582>
 8002b70:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b72:	9907      	ldr	r1, [sp, #28]
 8002b74:	9803      	ldr	r0, [sp, #12]
 8002b76:	f004 f9f5 	bl	8006f64 <__sprint_r>
 8002b7a:	2800      	cmp	r0, #0
 8002b7c:	f041 8376 	bne.w	800426c <_vfprintf_r+0x1964>
 8002b80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b84:	e72c      	b.n	80029e0 <_vfprintf_r+0xd8>
 8002b86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002b8a:	f003 f8ab 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 8002b8e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002b92:	b293      	uxth	r3, r2
 8002b94:	e6d8      	b.n	8002948 <_vfprintf_r+0x40>
 8002b96:	bf00      	nop
	...
 8002ba0:	4643      	mov	r3, r8
 8002ba2:	069f      	lsls	r7, r3, #26
 8002ba4:	f140 832f 	bpl.w	8003206 <_vfprintf_r+0x8fe>
 8002ba8:	9c08      	ldr	r4, [sp, #32]
 8002baa:	3407      	adds	r4, #7
 8002bac:	f024 0407 	bic.w	r4, r4, #7
 8002bb0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002bb4:	f104 0208 	add.w	r2, r4, #8
 8002bb8:	9208      	str	r2, [sp, #32]
 8002bba:	4604      	mov	r4, r0
 8002bbc:	460d      	mov	r5, r1
 8002bbe:	2800      	cmp	r0, #0
 8002bc0:	f171 0200 	sbcs.w	r2, r1, #0
 8002bc4:	da05      	bge.n	8002bd2 <_vfprintf_r+0x2ca>
 8002bc6:	222d      	movs	r2, #45	; 0x2d
 8002bc8:	4264      	negs	r4, r4
 8002bca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002bce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002bd2:	aa56      	add	r2, sp, #344	; 0x158
 8002bd4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002bd8:	9204      	str	r2, [sp, #16]
 8002bda:	f000 84b2 	beq.w	8003542 <_vfprintf_r+0xc3a>
 8002bde:	2201      	movs	r2, #1
 8002be0:	ea54 0105 	orrs.w	r1, r4, r5
 8002be4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002be8:	f040 8159 	bne.w	8002e9e <_vfprintf_r+0x596>
 8002bec:	f1b9 0f00 	cmp.w	r9, #0
 8002bf0:	f040 8619 	bne.w	8003826 <_vfprintf_r+0xf1e>
 8002bf4:	2a00      	cmp	r2, #0
 8002bf6:	f040 8508 	bne.w	800360a <_vfprintf_r+0xd02>
 8002bfa:	f013 0301 	ands.w	r3, r3, #1
 8002bfe:	af56      	add	r7, sp, #344	; 0x158
 8002c00:	9309      	str	r3, [sp, #36]	; 0x24
 8002c02:	d002      	beq.n	8002c0a <_vfprintf_r+0x302>
 8002c04:	2330      	movs	r3, #48	; 0x30
 8002c06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002c0a:	2300      	movs	r3, #0
 8002c0c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c10:	9314      	str	r3, [sp, #80]	; 0x50
 8002c12:	9311      	str	r3, [sp, #68]	; 0x44
 8002c14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002c16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c1a:	454b      	cmp	r3, r9
 8002c1c:	bfb8      	it	lt
 8002c1e:	464b      	movlt	r3, r9
 8002c20:	9304      	str	r3, [sp, #16]
 8002c22:	b112      	cbz	r2, 8002c2a <_vfprintf_r+0x322>
 8002c24:	9b04      	ldr	r3, [sp, #16]
 8002c26:	3301      	adds	r3, #1
 8002c28:	9304      	str	r3, [sp, #16]
 8002c2a:	f018 0302 	ands.w	r3, r8, #2
 8002c2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002c30:	d002      	beq.n	8002c38 <_vfprintf_r+0x330>
 8002c32:	9b04      	ldr	r3, [sp, #16]
 8002c34:	3302      	adds	r3, #2
 8002c36:	9304      	str	r3, [sp, #16]
 8002c38:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002c3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c3e:	930e      	str	r3, [sp, #56]	; 0x38
 8002c40:	d13f      	bne.n	8002cc2 <_vfprintf_r+0x3ba>
 8002c42:	9b06      	ldr	r3, [sp, #24]
 8002c44:	9904      	ldr	r1, [sp, #16]
 8002c46:	1a5d      	subs	r5, r3, r1
 8002c48:	2d00      	cmp	r5, #0
 8002c4a:	dd3a      	ble.n	8002cc2 <_vfprintf_r+0x3ba>
 8002c4c:	2d10      	cmp	r5, #16
 8002c4e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c50:	dd29      	ble.n	8002ca6 <_vfprintf_r+0x39e>
 8002c52:	4659      	mov	r1, fp
 8002c54:	4620      	mov	r0, r4
 8002c56:	9620      	str	r6, [sp, #128]	; 0x80
 8002c58:	2310      	movs	r3, #16
 8002c5a:	9c03      	ldr	r4, [sp, #12]
 8002c5c:	9e07      	ldr	r6, [sp, #28]
 8002c5e:	46bb      	mov	fp, r7
 8002c60:	e004      	b.n	8002c6c <_vfprintf_r+0x364>
 8002c62:	3d10      	subs	r5, #16
 8002c64:	2d10      	cmp	r5, #16
 8002c66:	f101 0108 	add.w	r1, r1, #8
 8002c6a:	dd18      	ble.n	8002c9e <_vfprintf_r+0x396>
 8002c6c:	3201      	adds	r2, #1
 8002c6e:	4fba      	ldr	r7, [pc, #744]	; (8002f58 <_vfprintf_r+0x650>)
 8002c70:	3010      	adds	r0, #16
 8002c72:	2a07      	cmp	r2, #7
 8002c74:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002c78:	e9c1 7300 	strd	r7, r3, [r1]
 8002c7c:	ddf1      	ble.n	8002c62 <_vfprintf_r+0x35a>
 8002c7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c80:	4631      	mov	r1, r6
 8002c82:	4620      	mov	r0, r4
 8002c84:	930c      	str	r3, [sp, #48]	; 0x30
 8002c86:	f004 f96d 	bl	8006f64 <__sprint_r>
 8002c8a:	2800      	cmp	r0, #0
 8002c8c:	f040 843d 	bne.w	800350a <_vfprintf_r+0xc02>
 8002c90:	3d10      	subs	r5, #16
 8002c92:	2d10      	cmp	r5, #16
 8002c94:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002c98:	a92d      	add	r1, sp, #180	; 0xb4
 8002c9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002c9c:	dce6      	bgt.n	8002c6c <_vfprintf_r+0x364>
 8002c9e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ca0:	465f      	mov	r7, fp
 8002ca2:	4604      	mov	r4, r0
 8002ca4:	468b      	mov	fp, r1
 8002ca6:	3201      	adds	r2, #1
 8002ca8:	4bab      	ldr	r3, [pc, #684]	; (8002f58 <_vfprintf_r+0x650>)
 8002caa:	442c      	add	r4, r5
 8002cac:	2a07      	cmp	r2, #7
 8002cae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002cb2:	e9cb 3500 	strd	r3, r5, [fp]
 8002cb6:	f300 84ff 	bgt.w	80036b8 <_vfprintf_r+0xdb0>
 8002cba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002cbe:	f10b 0b08 	add.w	fp, fp, #8
 8002cc2:	b172      	cbz	r2, 8002ce2 <_vfprintf_r+0x3da>
 8002cc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002cc6:	3201      	adds	r2, #1
 8002cc8:	3401      	adds	r4, #1
 8002cca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002cce:	2101      	movs	r1, #1
 8002cd0:	2a07      	cmp	r2, #7
 8002cd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002cd6:	e9cb 0100 	strd	r0, r1, [fp]
 8002cda:	f300 8418 	bgt.w	800350e <_vfprintf_r+0xc06>
 8002cde:	f10b 0b08 	add.w	fp, fp, #8
 8002ce2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002ce4:	b16b      	cbz	r3, 8002d02 <_vfprintf_r+0x3fa>
 8002ce6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ce8:	3301      	adds	r3, #1
 8002cea:	3402      	adds	r4, #2
 8002cec:	a923      	add	r1, sp, #140	; 0x8c
 8002cee:	2202      	movs	r2, #2
 8002cf0:	2b07      	cmp	r3, #7
 8002cf2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cf6:	e9cb 1200 	strd	r1, r2, [fp]
 8002cfa:	f300 8415 	bgt.w	8003528 <_vfprintf_r+0xc20>
 8002cfe:	f10b 0b08 	add.w	fp, fp, #8
 8002d02:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002d04:	2b80      	cmp	r3, #128	; 0x80
 8002d06:	f000 8331 	beq.w	800336c <_vfprintf_r+0xa64>
 8002d0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d0c:	eba9 0503 	sub.w	r5, r9, r3
 8002d10:	2d00      	cmp	r5, #0
 8002d12:	dd37      	ble.n	8002d84 <_vfprintf_r+0x47c>
 8002d14:	2d10      	cmp	r5, #16
 8002d16:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d18:	4b90      	ldr	r3, [pc, #576]	; (8002f5c <_vfprintf_r+0x654>)
 8002d1a:	dd28      	ble.n	8002d6e <_vfprintf_r+0x466>
 8002d1c:	4659      	mov	r1, fp
 8002d1e:	4620      	mov	r0, r4
 8002d20:	46bb      	mov	fp, r7
 8002d22:	f04f 0910 	mov.w	r9, #16
 8002d26:	4637      	mov	r7, r6
 8002d28:	461c      	mov	r4, r3
 8002d2a:	9e07      	ldr	r6, [sp, #28]
 8002d2c:	e004      	b.n	8002d38 <_vfprintf_r+0x430>
 8002d2e:	3d10      	subs	r5, #16
 8002d30:	2d10      	cmp	r5, #16
 8002d32:	f101 0108 	add.w	r1, r1, #8
 8002d36:	dd15      	ble.n	8002d64 <_vfprintf_r+0x45c>
 8002d38:	3201      	adds	r2, #1
 8002d3a:	3010      	adds	r0, #16
 8002d3c:	2a07      	cmp	r2, #7
 8002d3e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d42:	e9c1 4900 	strd	r4, r9, [r1]
 8002d46:	ddf2      	ble.n	8002d2e <_vfprintf_r+0x426>
 8002d48:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d4a:	4631      	mov	r1, r6
 8002d4c:	9803      	ldr	r0, [sp, #12]
 8002d4e:	f004 f909 	bl	8006f64 <__sprint_r>
 8002d52:	2800      	cmp	r0, #0
 8002d54:	f040 83d9 	bne.w	800350a <_vfprintf_r+0xc02>
 8002d58:	3d10      	subs	r5, #16
 8002d5a:	2d10      	cmp	r5, #16
 8002d5c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d60:	a92d      	add	r1, sp, #180	; 0xb4
 8002d62:	dce9      	bgt.n	8002d38 <_vfprintf_r+0x430>
 8002d64:	463e      	mov	r6, r7
 8002d66:	4623      	mov	r3, r4
 8002d68:	465f      	mov	r7, fp
 8002d6a:	4604      	mov	r4, r0
 8002d6c:	468b      	mov	fp, r1
 8002d6e:	3201      	adds	r2, #1
 8002d70:	442c      	add	r4, r5
 8002d72:	2a07      	cmp	r2, #7
 8002d74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d78:	e9cb 3500 	strd	r3, r5, [fp]
 8002d7c:	f300 83ef 	bgt.w	800355e <_vfprintf_r+0xc56>
 8002d80:	f10b 0b08 	add.w	fp, fp, #8
 8002d84:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002d88:	f040 8280 	bne.w	800328c <_vfprintf_r+0x984>
 8002d8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002d90:	f8cb 7000 	str.w	r7, [fp]
 8002d94:	3301      	adds	r3, #1
 8002d96:	4414      	add	r4, r2
 8002d98:	2b07      	cmp	r3, #7
 8002d9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002d9c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002da0:	932b      	str	r3, [sp, #172]	; 0xac
 8002da2:	f300 8392 	bgt.w	80034ca <_vfprintf_r+0xbc2>
 8002da6:	f10b 0b08 	add.w	fp, fp, #8
 8002daa:	f018 0f04 	tst.w	r8, #4
 8002dae:	d03b      	beq.n	8002e28 <_vfprintf_r+0x520>
 8002db0:	9b06      	ldr	r3, [sp, #24]
 8002db2:	9a04      	ldr	r2, [sp, #16]
 8002db4:	1a9d      	subs	r5, r3, r2
 8002db6:	2d00      	cmp	r5, #0
 8002db8:	dd36      	ble.n	8002e28 <_vfprintf_r+0x520>
 8002dba:	2d10      	cmp	r5, #16
 8002dbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dbe:	dd21      	ble.n	8002e04 <_vfprintf_r+0x4fc>
 8002dc0:	2610      	movs	r6, #16
 8002dc2:	9f03      	ldr	r7, [sp, #12]
 8002dc4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002dc8:	e004      	b.n	8002dd4 <_vfprintf_r+0x4cc>
 8002dca:	3d10      	subs	r5, #16
 8002dcc:	2d10      	cmp	r5, #16
 8002dce:	f10b 0b08 	add.w	fp, fp, #8
 8002dd2:	dd17      	ble.n	8002e04 <_vfprintf_r+0x4fc>
 8002dd4:	3301      	adds	r3, #1
 8002dd6:	4a60      	ldr	r2, [pc, #384]	; (8002f58 <_vfprintf_r+0x650>)
 8002dd8:	3410      	adds	r4, #16
 8002dda:	2b07      	cmp	r3, #7
 8002ddc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002de0:	e9cb 2600 	strd	r2, r6, [fp]
 8002de4:	ddf1      	ble.n	8002dca <_vfprintf_r+0x4c2>
 8002de6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002de8:	4641      	mov	r1, r8
 8002dea:	4638      	mov	r0, r7
 8002dec:	f004 f8ba 	bl	8006f64 <__sprint_r>
 8002df0:	2800      	cmp	r0, #0
 8002df2:	f040 856c 	bne.w	80038ce <_vfprintf_r+0xfc6>
 8002df6:	3d10      	subs	r5, #16
 8002df8:	2d10      	cmp	r5, #16
 8002dfa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002dfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e02:	dce7      	bgt.n	8002dd4 <_vfprintf_r+0x4cc>
 8002e04:	3301      	adds	r3, #1
 8002e06:	4a54      	ldr	r2, [pc, #336]	; (8002f58 <_vfprintf_r+0x650>)
 8002e08:	442c      	add	r4, r5
 8002e0a:	2b07      	cmp	r3, #7
 8002e0c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e10:	e9cb 2500 	strd	r2, r5, [fp]
 8002e14:	dd08      	ble.n	8002e28 <_vfprintf_r+0x520>
 8002e16:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e18:	9907      	ldr	r1, [sp, #28]
 8002e1a:	9803      	ldr	r0, [sp, #12]
 8002e1c:	f004 f8a2 	bl	8006f64 <__sprint_r>
 8002e20:	2800      	cmp	r0, #0
 8002e22:	f040 82e9 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8002e26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e28:	9904      	ldr	r1, [sp, #16]
 8002e2a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002e2e:	428a      	cmp	r2, r1
 8002e30:	bfac      	ite	ge
 8002e32:	189b      	addge	r3, r3, r2
 8002e34:	185b      	addlt	r3, r3, r1
 8002e36:	9305      	str	r3, [sp, #20]
 8002e38:	2c00      	cmp	r4, #0
 8002e3a:	f040 82d5 	bne.w	80033e8 <_vfprintf_r+0xae0>
 8002e3e:	2300      	movs	r3, #0
 8002e40:	932b      	str	r3, [sp, #172]	; 0xac
 8002e42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002e44:	b11b      	cbz	r3, 8002e4e <_vfprintf_r+0x546>
 8002e46:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002e48:	9803      	ldr	r0, [sp, #12]
 8002e4a:	f002 fc9d 	bl	8005788 <_free_r>
 8002e4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e52:	4657      	mov	r7, sl
 8002e54:	783b      	ldrb	r3, [r7, #0]
 8002e56:	2b00      	cmp	r3, #0
 8002e58:	f47f ada7 	bne.w	80029aa <_vfprintf_r+0xa2>
 8002e5c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002e5e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e62:	2b00      	cmp	r3, #0
 8002e64:	f041 80e7 	bne.w	8004036 <_vfprintf_r+0x172e>
 8002e68:	2300      	movs	r3, #0
 8002e6a:	932b      	str	r3, [sp, #172]	; 0xac
 8002e6c:	e2cb      	b.n	8003406 <_vfprintf_r+0xafe>
 8002e6e:	4643      	mov	r3, r8
 8002e70:	069a      	lsls	r2, r3, #26
 8002e72:	f140 814e 	bpl.w	8003112 <_vfprintf_r+0x80a>
 8002e76:	9c08      	ldr	r4, [sp, #32]
 8002e78:	3407      	adds	r4, #7
 8002e7a:	f024 0207 	bic.w	r2, r4, #7
 8002e7e:	f102 0108 	add.w	r1, r2, #8
 8002e82:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002e86:	9108      	str	r1, [sp, #32]
 8002e88:	2201      	movs	r2, #1
 8002e8a:	2100      	movs	r1, #0
 8002e8c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002e90:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e94:	a956      	add	r1, sp, #344	; 0x158
 8002e96:	9104      	str	r1, [sp, #16]
 8002e98:	f47f aea2 	bne.w	8002be0 <_vfprintf_r+0x2d8>
 8002e9c:	4698      	mov	r8, r3
 8002e9e:	2a01      	cmp	r2, #1
 8002ea0:	f000 8350 	beq.w	8003544 <_vfprintf_r+0xc3c>
 8002ea4:	2a02      	cmp	r2, #2
 8002ea6:	f000 831b 	beq.w	80034e0 <_vfprintf_r+0xbd8>
 8002eaa:	a956      	add	r1, sp, #344	; 0x158
 8002eac:	e000      	b.n	8002eb0 <_vfprintf_r+0x5a8>
 8002eae:	4639      	mov	r1, r7
 8002eb0:	08e2      	lsrs	r2, r4, #3
 8002eb2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002eb6:	08e8      	lsrs	r0, r5, #3
 8002eb8:	f004 0307 	and.w	r3, r4, #7
 8002ebc:	4605      	mov	r5, r0
 8002ebe:	4614      	mov	r4, r2
 8002ec0:	3330      	adds	r3, #48	; 0x30
 8002ec2:	ea54 0205 	orrs.w	r2, r4, r5
 8002ec6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002eca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002ece:	d1ee      	bne.n	8002eae <_vfprintf_r+0x5a6>
 8002ed0:	f018 0f01 	tst.w	r8, #1
 8002ed4:	f000 8314 	beq.w	8003500 <_vfprintf_r+0xbf8>
 8002ed8:	2b30      	cmp	r3, #48	; 0x30
 8002eda:	f000 8311 	beq.w	8003500 <_vfprintf_r+0xbf8>
 8002ede:	9a04      	ldr	r2, [sp, #16]
 8002ee0:	3902      	subs	r1, #2
 8002ee2:	2330      	movs	r3, #48	; 0x30
 8002ee4:	1a52      	subs	r2, r2, r1
 8002ee6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002eea:	9209      	str	r2, [sp, #36]	; 0x24
 8002eec:	460f      	mov	r7, r1
 8002eee:	e68c      	b.n	8002c0a <_vfprintf_r+0x302>
 8002ef0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ef4:	2200      	movs	r2, #0
 8002ef6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002efa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002efe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002f02:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f06:	2b09      	cmp	r3, #9
 8002f08:	d9f5      	bls.n	8002ef6 <_vfprintf_r+0x5ee>
 8002f0a:	9206      	str	r2, [sp, #24]
 8002f0c:	e57c      	b.n	8002a08 <_vfprintf_r+0x100>
 8002f0e:	4b14      	ldr	r3, [pc, #80]	; (8002f60 <_vfprintf_r+0x658>)
 8002f10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f12:	f018 0f20 	tst.w	r8, #32
 8002f16:	f000 8114 	beq.w	8003142 <_vfprintf_r+0x83a>
 8002f1a:	9c08      	ldr	r4, [sp, #32]
 8002f1c:	3407      	adds	r4, #7
 8002f1e:	f024 0307 	bic.w	r3, r4, #7
 8002f22:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002f26:	f103 0208 	add.w	r2, r3, #8
 8002f2a:	9208      	str	r2, [sp, #32]
 8002f2c:	f018 0f01 	tst.w	r8, #1
 8002f30:	d009      	beq.n	8002f46 <_vfprintf_r+0x63e>
 8002f32:	ea54 0305 	orrs.w	r3, r4, r5
 8002f36:	d006      	beq.n	8002f46 <_vfprintf_r+0x63e>
 8002f38:	2330      	movs	r3, #48	; 0x30
 8002f3a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002f3e:	f048 0802 	orr.w	r8, r8, #2
 8002f42:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002f46:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002f4a:	2202      	movs	r2, #2
 8002f4c:	e79d      	b.n	8002e8a <_vfprintf_r+0x582>
 8002f4e:	f048 0801 	orr.w	r8, r8, #1
 8002f52:	f89a 6000 	ldrb.w	r6, [sl]
 8002f56:	e555      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002f58:	08007790 	.word	0x08007790
 8002f5c:	080077a0 	.word	0x080077a0
 8002f60:	0800775c 	.word	0x0800775c
 8002f64:	9e03      	ldr	r6, [sp, #12]
 8002f66:	4630      	mov	r0, r6
 8002f68:	f002 feaa 	bl	8005cc0 <_localeconv_r>
 8002f6c:	6843      	ldr	r3, [r0, #4]
 8002f6e:	9318      	str	r3, [sp, #96]	; 0x60
 8002f70:	4618      	mov	r0, r3
 8002f72:	f7fd ffe5 	bl	8000f40 <strlen>
 8002f76:	901b      	str	r0, [sp, #108]	; 0x6c
 8002f78:	4604      	mov	r4, r0
 8002f7a:	4630      	mov	r0, r6
 8002f7c:	f002 fea0 	bl	8005cc0 <_localeconv_r>
 8002f80:	6883      	ldr	r3, [r0, #8]
 8002f82:	931a      	str	r3, [sp, #104]	; 0x68
 8002f84:	2c00      	cmp	r4, #0
 8002f86:	f43f adb8 	beq.w	8002afa <_vfprintf_r+0x1f2>
 8002f8a:	f89a 6000 	ldrb.w	r6, [sl]
 8002f8e:	2b00      	cmp	r3, #0
 8002f90:	f43f ad38 	beq.w	8002a04 <_vfprintf_r+0xfc>
 8002f94:	781b      	ldrb	r3, [r3, #0]
 8002f96:	2b00      	cmp	r3, #0
 8002f98:	f43f ad34 	beq.w	8002a04 <_vfprintf_r+0xfc>
 8002f9c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002fa0:	e530      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002fa2:	9b08      	ldr	r3, [sp, #32]
 8002fa4:	f89a 6000 	ldrb.w	r6, [sl]
 8002fa8:	681a      	ldr	r2, [r3, #0]
 8002faa:	9206      	str	r2, [sp, #24]
 8002fac:	2a00      	cmp	r2, #0
 8002fae:	f103 0304 	add.w	r3, r3, #4
 8002fb2:	f2c0 8697 	blt.w	8003ce4 <_vfprintf_r+0x13dc>
 8002fb6:	9308      	str	r3, [sp, #32]
 8002fb8:	e524      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002fba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002fbe:	f89a 6000 	ldrb.w	r6, [sl]
 8002fc2:	e51f      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002fc4:	f89a 6000 	ldrb.w	r6, [sl]
 8002fc8:	f048 0804 	orr.w	r8, r8, #4
 8002fcc:	e51a      	b.n	8002a04 <_vfprintf_r+0xfc>
 8002fce:	f89a 6000 	ldrb.w	r6, [sl]
 8002fd2:	2e2a      	cmp	r6, #42	; 0x2a
 8002fd4:	f10a 0201 	add.w	r2, sl, #1
 8002fd8:	f001 81b0 	beq.w	800433c <_vfprintf_r+0x1a34>
 8002fdc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002fe0:	2b09      	cmp	r3, #9
 8002fe2:	4692      	mov	sl, r2
 8002fe4:	f04f 0900 	mov.w	r9, #0
 8002fe8:	f63f ad0e 	bhi.w	8002a08 <_vfprintf_r+0x100>
 8002fec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ff0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002ff4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002ff8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ffc:	2b09      	cmp	r3, #9
 8002ffe:	d9f5      	bls.n	8002fec <_vfprintf_r+0x6e4>
 8003000:	e502      	b.n	8002a08 <_vfprintf_r+0x100>
 8003002:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003006:	f89a 6000 	ldrb.w	r6, [sl]
 800300a:	e4fb      	b.n	8002a04 <_vfprintf_r+0xfc>
 800300c:	9c08      	ldr	r4, [sp, #32]
 800300e:	3407      	adds	r4, #7
 8003010:	f024 0407 	bic.w	r4, r4, #7
 8003014:	ed94 7b00 	vldr	d7, [r4]
 8003018:	ec52 1b17 	vmov	r1, r2, d7
 800301c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003020:	931d      	str	r3, [sp, #116]	; 0x74
 8003022:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003026:	3408      	adds	r4, #8
 8003028:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800302c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003030:	4bba      	ldr	r3, [pc, #744]	; (800331c <_vfprintf_r+0xa14>)
 8003032:	9408      	str	r4, [sp, #32]
 8003034:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003038:	f7fd fd38 	bl	8000aac <__aeabi_dcmpun>
 800303c:	2800      	cmp	r0, #0
 800303e:	f040 846f 	bne.w	8003920 <_vfprintf_r+0x1018>
 8003042:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003046:	4bb5      	ldr	r3, [pc, #724]	; (800331c <_vfprintf_r+0xa14>)
 8003048:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800304c:	f7fd fd10 	bl	8000a70 <__aeabi_dcmple>
 8003050:	2800      	cmp	r0, #0
 8003052:	f040 8465 	bne.w	8003920 <_vfprintf_r+0x1018>
 8003056:	2200      	movs	r2, #0
 8003058:	2300      	movs	r3, #0
 800305a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800305e:	f7fd fcfd 	bl	8000a5c <__aeabi_dcmplt>
 8003062:	2800      	cmp	r0, #0
 8003064:	f040 855b 	bne.w	8003b1e <_vfprintf_r+0x1216>
 8003068:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800306c:	4fac      	ldr	r7, [pc, #688]	; (8003320 <_vfprintf_r+0xa18>)
 800306e:	4bad      	ldr	r3, [pc, #692]	; (8003324 <_vfprintf_r+0xa1c>)
 8003070:	2000      	movs	r0, #0
 8003072:	2103      	movs	r1, #3
 8003074:	9104      	str	r1, [sp, #16]
 8003076:	900a      	str	r0, [sp, #40]	; 0x28
 8003078:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800307c:	2e47      	cmp	r6, #71	; 0x47
 800307e:	bfd8      	it	le
 8003080:	461f      	movle	r7, r3
 8003082:	9109      	str	r1, [sp, #36]	; 0x24
 8003084:	4681      	mov	r9, r0
 8003086:	900f      	str	r0, [sp, #60]	; 0x3c
 8003088:	9014      	str	r0, [sp, #80]	; 0x50
 800308a:	9011      	str	r0, [sp, #68]	; 0x44
 800308c:	e5c9      	b.n	8002c22 <_vfprintf_r+0x31a>
 800308e:	9808      	ldr	r0, [sp, #32]
 8003090:	2300      	movs	r3, #0
 8003092:	6801      	ldr	r1, [r0, #0]
 8003094:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003098:	461a      	mov	r2, r3
 800309a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800309e:	2301      	movs	r3, #1
 80030a0:	1d01      	adds	r1, r0, #4
 80030a2:	9304      	str	r3, [sp, #16]
 80030a4:	920a      	str	r2, [sp, #40]	; 0x28
 80030a6:	4691      	mov	r9, r2
 80030a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80030aa:	9214      	str	r2, [sp, #80]	; 0x50
 80030ac:	9211      	str	r2, [sp, #68]	; 0x44
 80030ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80030b2:	af3d      	add	r7, sp, #244	; 0xf4
 80030b4:	e5b9      	b.n	8002c2a <_vfprintf_r+0x322>
 80030b6:	9b08      	ldr	r3, [sp, #32]
 80030b8:	681f      	ldr	r7, [r3, #0]
 80030ba:	2500      	movs	r5, #0
 80030bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80030c0:	1d1c      	adds	r4, r3, #4
 80030c2:	2f00      	cmp	r7, #0
 80030c4:	f000 8639 	beq.w	8003d3a <_vfprintf_r+0x1432>
 80030c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030cc:	f000 8711 	beq.w	8003ef2 <_vfprintf_r+0x15ea>
 80030d0:	464a      	mov	r2, r9
 80030d2:	4629      	mov	r1, r5
 80030d4:	4638      	mov	r0, r7
 80030d6:	f7fd ffa3 	bl	8001020 <memchr>
 80030da:	900a      	str	r0, [sp, #40]	; 0x28
 80030dc:	2800      	cmp	r0, #0
 80030de:	f000 85e7 	beq.w	8003cb0 <_vfprintf_r+0x13a8>
 80030e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80030e4:	1bdb      	subs	r3, r3, r7
 80030e6:	9309      	str	r3, [sp, #36]	; 0x24
 80030e8:	46a9      	mov	r9, r5
 80030ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80030ee:	9408      	str	r4, [sp, #32]
 80030f0:	9304      	str	r3, [sp, #16]
 80030f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80030f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80030fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80030fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003102:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003106:	e58c      	b.n	8002c22 <_vfprintf_r+0x31a>
 8003108:	f048 0310 	orr.w	r3, r8, #16
 800310c:	069a      	lsls	r2, r3, #26
 800310e:	f53f aeb2 	bmi.w	8002e76 <_vfprintf_r+0x56e>
 8003112:	9a08      	ldr	r2, [sp, #32]
 8003114:	06df      	lsls	r7, r3, #27
 8003116:	f102 0104 	add.w	r1, r2, #4
 800311a:	f100 837e 	bmi.w	800381a <_vfprintf_r+0xf12>
 800311e:	065d      	lsls	r5, r3, #25
 8003120:	9a08      	ldr	r2, [sp, #32]
 8003122:	f100 84e4 	bmi.w	8003aee <_vfprintf_r+0x11e6>
 8003126:	059c      	lsls	r4, r3, #22
 8003128:	f140 8377 	bpl.w	800381a <_vfprintf_r+0xf12>
 800312c:	7814      	ldrb	r4, [r2, #0]
 800312e:	9108      	str	r1, [sp, #32]
 8003130:	2500      	movs	r5, #0
 8003132:	2201      	movs	r2, #1
 8003134:	e6a9      	b.n	8002e8a <_vfprintf_r+0x582>
 8003136:	4b7c      	ldr	r3, [pc, #496]	; (8003328 <_vfprintf_r+0xa20>)
 8003138:	9317      	str	r3, [sp, #92]	; 0x5c
 800313a:	f018 0f20 	tst.w	r8, #32
 800313e:	f47f aeec 	bne.w	8002f1a <_vfprintf_r+0x612>
 8003142:	9a08      	ldr	r2, [sp, #32]
 8003144:	f018 0f10 	tst.w	r8, #16
 8003148:	f102 0304 	add.w	r3, r2, #4
 800314c:	f040 8354 	bne.w	80037f8 <_vfprintf_r+0xef0>
 8003150:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003154:	9a08      	ldr	r2, [sp, #32]
 8003156:	f040 84d0 	bne.w	8003afa <_vfprintf_r+0x11f2>
 800315a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800315e:	f000 834b 	beq.w	80037f8 <_vfprintf_r+0xef0>
 8003162:	7814      	ldrb	r4, [r2, #0]
 8003164:	9308      	str	r3, [sp, #32]
 8003166:	2500      	movs	r5, #0
 8003168:	e6e0      	b.n	8002f2c <_vfprintf_r+0x624>
 800316a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800316e:	f89a 6000 	ldrb.w	r6, [sl]
 8003172:	2b00      	cmp	r3, #0
 8003174:	f47f ac46 	bne.w	8002a04 <_vfprintf_r+0xfc>
 8003178:	2320      	movs	r3, #32
 800317a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800317e:	e441      	b.n	8002a04 <_vfprintf_r+0xfc>
 8003180:	f89a 6000 	ldrb.w	r6, [sl]
 8003184:	2e6c      	cmp	r6, #108	; 0x6c
 8003186:	bf03      	ittte	eq
 8003188:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800318c:	f048 0820 	orreq.w	r8, r8, #32
 8003190:	f10a 0a01 	addeq.w	sl, sl, #1
 8003194:	f048 0810 	orrne.w	r8, r8, #16
 8003198:	e434      	b.n	8002a04 <_vfprintf_r+0xfc>
 800319a:	9a08      	ldr	r2, [sp, #32]
 800319c:	f018 0f20 	tst.w	r8, #32
 80031a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80031a4:	9208      	str	r2, [sp, #32]
 80031a6:	f000 83a1 	beq.w	80038ec <_vfprintf_r+0xfe4>
 80031aa:	9a05      	ldr	r2, [sp, #20]
 80031ac:	4610      	mov	r0, r2
 80031ae:	17d1      	asrs	r1, r2, #31
 80031b0:	e9c3 0100 	strd	r0, r1, [r3]
 80031b4:	4657      	mov	r7, sl
 80031b6:	e64d      	b.n	8002e54 <_vfprintf_r+0x54c>
 80031b8:	f89a 6000 	ldrb.w	r6, [sl]
 80031bc:	2e68      	cmp	r6, #104	; 0x68
 80031be:	bf03      	ittte	eq
 80031c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80031c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80031c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80031cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80031d0:	e418      	b.n	8002a04 <_vfprintf_r+0xfc>
 80031d2:	9908      	ldr	r1, [sp, #32]
 80031d4:	4b55      	ldr	r3, [pc, #340]	; (800332c <_vfprintf_r+0xa24>)
 80031d6:	680c      	ldr	r4, [r1, #0]
 80031d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80031da:	f647 0230 	movw	r2, #30768	; 0x7830
 80031de:	3104      	adds	r1, #4
 80031e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80031e4:	f048 0302 	orr.w	r3, r8, #2
 80031e8:	9108      	str	r1, [sp, #32]
 80031ea:	2500      	movs	r5, #0
 80031ec:	2202      	movs	r2, #2
 80031ee:	2678      	movs	r6, #120	; 0x78
 80031f0:	e64b      	b.n	8002e8a <_vfprintf_r+0x582>
 80031f2:	f048 0808 	orr.w	r8, r8, #8
 80031f6:	f89a 6000 	ldrb.w	r6, [sl]
 80031fa:	e403      	b.n	8002a04 <_vfprintf_r+0xfc>
 80031fc:	f048 0310 	orr.w	r3, r8, #16
 8003200:	069f      	lsls	r7, r3, #26
 8003202:	f53f acd1 	bmi.w	8002ba8 <_vfprintf_r+0x2a0>
 8003206:	9908      	ldr	r1, [sp, #32]
 8003208:	06dd      	lsls	r5, r3, #27
 800320a:	f101 0204 	add.w	r2, r1, #4
 800320e:	f100 82fd 	bmi.w	800380c <_vfprintf_r+0xf04>
 8003212:	065c      	lsls	r4, r3, #25
 8003214:	9908      	ldr	r1, [sp, #32]
 8003216:	f100 8475 	bmi.w	8003b04 <_vfprintf_r+0x11fc>
 800321a:	0598      	lsls	r0, r3, #22
 800321c:	f140 82f6 	bpl.w	800380c <_vfprintf_r+0xf04>
 8003220:	f991 4000 	ldrsb.w	r4, [r1]
 8003224:	9208      	str	r2, [sp, #32]
 8003226:	17e5      	asrs	r5, r4, #31
 8003228:	4620      	mov	r0, r4
 800322a:	4629      	mov	r1, r5
 800322c:	e4c7      	b.n	8002bbe <_vfprintf_r+0x2b6>
 800322e:	9a08      	ldr	r2, [sp, #32]
 8003230:	f018 0f10 	tst.w	r8, #16
 8003234:	f102 0304 	add.w	r3, r2, #4
 8003238:	f040 82e3 	bne.w	8003802 <_vfprintf_r+0xefa>
 800323c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003240:	9a08      	ldr	r2, [sp, #32]
 8003242:	f040 8467 	bne.w	8003b14 <_vfprintf_r+0x120c>
 8003246:	f418 7f00 	tst.w	r8, #512	; 0x200
 800324a:	f000 82da 	beq.w	8003802 <_vfprintf_r+0xefa>
 800324e:	7814      	ldrb	r4, [r2, #0]
 8003250:	9308      	str	r3, [sp, #32]
 8003252:	2500      	movs	r5, #0
 8003254:	e488      	b.n	8002b68 <_vfprintf_r+0x260>
 8003256:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800325a:	f002 fd45 	bl	8005ce8 <__retarget_lock_release_recursive>
 800325e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003262:	9305      	str	r3, [sp, #20]
 8003264:	e443      	b.n	8002aee <_vfprintf_r+0x1e6>
 8003266:	2e00      	cmp	r6, #0
 8003268:	f43f adf8 	beq.w	8002e5c <_vfprintf_r+0x554>
 800326c:	2300      	movs	r3, #0
 800326e:	2101      	movs	r1, #1
 8003270:	461a      	mov	r2, r3
 8003272:	9104      	str	r1, [sp, #16]
 8003274:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003278:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800327c:	930a      	str	r3, [sp, #40]	; 0x28
 800327e:	4699      	mov	r9, r3
 8003280:	930f      	str	r3, [sp, #60]	; 0x3c
 8003282:	9314      	str	r3, [sp, #80]	; 0x50
 8003284:	9311      	str	r3, [sp, #68]	; 0x44
 8003286:	9109      	str	r1, [sp, #36]	; 0x24
 8003288:	af3d      	add	r7, sp, #244	; 0xf4
 800328a:	e4ce      	b.n	8002c2a <_vfprintf_r+0x322>
 800328c:	2e65      	cmp	r6, #101	; 0x65
 800328e:	f340 80ca 	ble.w	8003426 <_vfprintf_r+0xb1e>
 8003292:	2200      	movs	r2, #0
 8003294:	2300      	movs	r3, #0
 8003296:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800329a:	f7fd fbd5 	bl	8000a48 <__aeabi_dcmpeq>
 800329e:	2800      	cmp	r0, #0
 80032a0:	f000 8169 	beq.w	8003576 <_vfprintf_r+0xc6e>
 80032a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032a6:	4a22      	ldr	r2, [pc, #136]	; (8003330 <_vfprintf_r+0xa28>)
 80032a8:	f8cb 2000 	str.w	r2, [fp]
 80032ac:	3301      	adds	r3, #1
 80032ae:	3401      	adds	r4, #1
 80032b0:	2201      	movs	r2, #1
 80032b2:	2b07      	cmp	r3, #7
 80032b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80032bc:	f300 8406 	bgt.w	8003acc <_vfprintf_r+0x11c4>
 80032c0:	f10b 0b08 	add.w	fp, fp, #8
 80032c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80032c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032ca:	4293      	cmp	r3, r2
 80032cc:	db03      	blt.n	80032d6 <_vfprintf_r+0x9ce>
 80032ce:	f018 0f01 	tst.w	r8, #1
 80032d2:	f43f ad6a 	beq.w	8002daa <_vfprintf_r+0x4a2>
 80032d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80032da:	f8cb 2000 	str.w	r2, [fp]
 80032de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80032e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80032e4:	3301      	adds	r3, #1
 80032e6:	4414      	add	r4, r2
 80032e8:	2b07      	cmp	r3, #7
 80032ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032ee:	f300 8517 	bgt.w	8003d20 <_vfprintf_r+0x1418>
 80032f2:	f10b 0b08 	add.w	fp, fp, #8
 80032f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80032f8:	1e5d      	subs	r5, r3, #1
 80032fa:	2d00      	cmp	r5, #0
 80032fc:	f77f ad55 	ble.w	8002daa <_vfprintf_r+0x4a2>
 8003300:	2d10      	cmp	r5, #16
 8003302:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003304:	4b0b      	ldr	r3, [pc, #44]	; (8003334 <_vfprintf_r+0xa2c>)
 8003306:	f340 82e7 	ble.w	80038d8 <_vfprintf_r+0xfd0>
 800330a:	4619      	mov	r1, r3
 800330c:	2610      	movs	r6, #16
 800330e:	4623      	mov	r3, r4
 8003310:	9f03      	ldr	r7, [sp, #12]
 8003312:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003316:	460c      	mov	r4, r1
 8003318:	e014      	b.n	8003344 <_vfprintf_r+0xa3c>
 800331a:	bf00      	nop
 800331c:	7fefffff 	.word	0x7fefffff
 8003320:	08007750 	.word	0x08007750
 8003324:	0800774c 	.word	0x0800774c
 8003328:	08007770 	.word	0x08007770
 800332c:	0800775c 	.word	0x0800775c
 8003330:	0800778c 	.word	0x0800778c
 8003334:	080077a0 	.word	0x080077a0
 8003338:	f10b 0b08 	add.w	fp, fp, #8
 800333c:	3d10      	subs	r5, #16
 800333e:	2d10      	cmp	r5, #16
 8003340:	f340 82c7 	ble.w	80038d2 <_vfprintf_r+0xfca>
 8003344:	3201      	adds	r2, #1
 8003346:	3310      	adds	r3, #16
 8003348:	2a07      	cmp	r2, #7
 800334a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800334e:	e9cb 4600 	strd	r4, r6, [fp]
 8003352:	ddf1      	ble.n	8003338 <_vfprintf_r+0xa30>
 8003354:	aa2a      	add	r2, sp, #168	; 0xa8
 8003356:	4649      	mov	r1, r9
 8003358:	4638      	mov	r0, r7
 800335a:	f003 fe03 	bl	8006f64 <__sprint_r>
 800335e:	2800      	cmp	r0, #0
 8003360:	d14c      	bne.n	80033fc <_vfprintf_r+0xaf4>
 8003362:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003366:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800336a:	e7e7      	b.n	800333c <_vfprintf_r+0xa34>
 800336c:	9b06      	ldr	r3, [sp, #24]
 800336e:	9a04      	ldr	r2, [sp, #16]
 8003370:	1a9d      	subs	r5, r3, r2
 8003372:	2d00      	cmp	r5, #0
 8003374:	f77f acc9 	ble.w	8002d0a <_vfprintf_r+0x402>
 8003378:	2d10      	cmp	r5, #16
 800337a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800337c:	4bbc      	ldr	r3, [pc, #752]	; (8003670 <_vfprintf_r+0xd68>)
 800337e:	dd27      	ble.n	80033d0 <_vfprintf_r+0xac8>
 8003380:	4659      	mov	r1, fp
 8003382:	4620      	mov	r0, r4
 8003384:	46bb      	mov	fp, r7
 8003386:	461c      	mov	r4, r3
 8003388:	4637      	mov	r7, r6
 800338a:	9e07      	ldr	r6, [sp, #28]
 800338c:	e004      	b.n	8003398 <_vfprintf_r+0xa90>
 800338e:	3d10      	subs	r5, #16
 8003390:	2d10      	cmp	r5, #16
 8003392:	f101 0108 	add.w	r1, r1, #8
 8003396:	dd16      	ble.n	80033c6 <_vfprintf_r+0xabe>
 8003398:	3201      	adds	r2, #1
 800339a:	3010      	adds	r0, #16
 800339c:	2310      	movs	r3, #16
 800339e:	2a07      	cmp	r2, #7
 80033a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80033a4:	600c      	str	r4, [r1, #0]
 80033a6:	604b      	str	r3, [r1, #4]
 80033a8:	ddf1      	ble.n	800338e <_vfprintf_r+0xa86>
 80033aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ac:	4631      	mov	r1, r6
 80033ae:	9803      	ldr	r0, [sp, #12]
 80033b0:	f003 fdd8 	bl	8006f64 <__sprint_r>
 80033b4:	2800      	cmp	r0, #0
 80033b6:	f040 80a8 	bne.w	800350a <_vfprintf_r+0xc02>
 80033ba:	3d10      	subs	r5, #16
 80033bc:	2d10      	cmp	r5, #16
 80033be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80033c2:	a92d      	add	r1, sp, #180	; 0xb4
 80033c4:	dce8      	bgt.n	8003398 <_vfprintf_r+0xa90>
 80033c6:	463e      	mov	r6, r7
 80033c8:	4623      	mov	r3, r4
 80033ca:	465f      	mov	r7, fp
 80033cc:	4604      	mov	r4, r0
 80033ce:	468b      	mov	fp, r1
 80033d0:	3201      	adds	r2, #1
 80033d2:	442c      	add	r4, r5
 80033d4:	2a07      	cmp	r2, #7
 80033d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80033da:	e9cb 3500 	strd	r3, r5, [fp]
 80033de:	f300 8292 	bgt.w	8003906 <_vfprintf_r+0xffe>
 80033e2:	f10b 0b08 	add.w	fp, fp, #8
 80033e6:	e490      	b.n	8002d0a <_vfprintf_r+0x402>
 80033e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ea:	9907      	ldr	r1, [sp, #28]
 80033ec:	9803      	ldr	r0, [sp, #12]
 80033ee:	f003 fdb9 	bl	8006f64 <__sprint_r>
 80033f2:	2800      	cmp	r0, #0
 80033f4:	f43f ad23 	beq.w	8002e3e <_vfprintf_r+0x536>
 80033f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80033fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80033fe:	b111      	cbz	r1, 8003406 <_vfprintf_r+0xafe>
 8003400:	9803      	ldr	r0, [sp, #12]
 8003402:	f002 f9c1 	bl	8005788 <_free_r>
 8003406:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800340a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800340e:	07d0      	lsls	r0, r2, #31
 8003410:	d402      	bmi.n	8003418 <_vfprintf_r+0xb10>
 8003412:	0599      	lsls	r1, r3, #22
 8003414:	f140 81d0 	bpl.w	80037b8 <_vfprintf_r+0xeb0>
 8003418:	065a      	lsls	r2, r3, #25
 800341a:	f53f ab65 	bmi.w	8002ae8 <_vfprintf_r+0x1e0>
 800341e:	9805      	ldr	r0, [sp, #20]
 8003420:	b057      	add	sp, #348	; 0x15c
 8003422:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003426:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003428:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800342a:	2a01      	cmp	r2, #1
 800342c:	f104 0401 	add.w	r4, r4, #1
 8003430:	f103 0501 	add.w	r5, r3, #1
 8003434:	f10b 0608 	add.w	r6, fp, #8
 8003438:	f340 811c 	ble.w	8003674 <_vfprintf_r+0xd6c>
 800343c:	2301      	movs	r3, #1
 800343e:	2d07      	cmp	r5, #7
 8003440:	f8cb 7000 	str.w	r7, [fp]
 8003444:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003448:	f8cb 3004 	str.w	r3, [fp, #4]
 800344c:	f300 81bb 	bgt.w	80037c6 <_vfprintf_r+0xebe>
 8003450:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003452:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003454:	1c69      	adds	r1, r5, #1
 8003456:	441c      	add	r4, r3
 8003458:	2907      	cmp	r1, #7
 800345a:	910b      	str	r1, [sp, #44]	; 0x2c
 800345c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003460:	e9c6 2300 	strd	r2, r3, [r6]
 8003464:	f300 81bb 	bgt.w	80037de <_vfprintf_r+0xed6>
 8003468:	3608      	adds	r6, #8
 800346a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800346c:	1c53      	adds	r3, r2, #1
 800346e:	461d      	mov	r5, r3
 8003470:	9509      	str	r5, [sp, #36]	; 0x24
 8003472:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003474:	930e      	str	r3, [sp, #56]	; 0x38
 8003476:	2200      	movs	r2, #0
 8003478:	2300      	movs	r3, #0
 800347a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800347e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003482:	f106 0b08 	add.w	fp, r6, #8
 8003486:	f7fd fadf 	bl	8000a48 <__aeabi_dcmpeq>
 800348a:	2800      	cmp	r0, #0
 800348c:	f040 80c2 	bne.w	8003614 <_vfprintf_r+0xd0c>
 8003490:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003492:	f8c6 9004 	str.w	r9, [r6, #4]
 8003496:	3701      	adds	r7, #1
 8003498:	444c      	add	r4, r9
 800349a:	2d07      	cmp	r5, #7
 800349c:	6037      	str	r7, [r6, #0]
 800349e:	942c      	str	r4, [sp, #176]	; 0xb0
 80034a0:	952b      	str	r5, [sp, #172]	; 0xac
 80034a2:	f300 80f9 	bgt.w	8003698 <_vfprintf_r+0xd90>
 80034a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80034a8:	f106 0310 	add.w	r3, r6, #16
 80034ac:	3202      	adds	r2, #2
 80034ae:	465e      	mov	r6, fp
 80034b0:	9209      	str	r2, [sp, #36]	; 0x24
 80034b2:	469b      	mov	fp, r3
 80034b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80034b6:	6072      	str	r2, [r6, #4]
 80034b8:	4414      	add	r4, r2
 80034ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80034bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80034be:	ab26      	add	r3, sp, #152	; 0x98
 80034c0:	2a07      	cmp	r2, #7
 80034c2:	922b      	str	r2, [sp, #172]	; 0xac
 80034c4:	6033      	str	r3, [r6, #0]
 80034c6:	f77f ac70 	ble.w	8002daa <_vfprintf_r+0x4a2>
 80034ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80034cc:	9907      	ldr	r1, [sp, #28]
 80034ce:	9803      	ldr	r0, [sp, #12]
 80034d0:	f003 fd48 	bl	8006f64 <__sprint_r>
 80034d4:	2800      	cmp	r0, #0
 80034d6:	d18f      	bne.n	80033f8 <_vfprintf_r+0xaf0>
 80034d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034de:	e464      	b.n	8002daa <_vfprintf_r+0x4a2>
 80034e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80034e2:	af56      	add	r7, sp, #344	; 0x158
 80034e4:	0923      	lsrs	r3, r4, #4
 80034e6:	f004 010f 	and.w	r1, r4, #15
 80034ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80034ee:	092a      	lsrs	r2, r5, #4
 80034f0:	461c      	mov	r4, r3
 80034f2:	4615      	mov	r5, r2
 80034f4:	5c43      	ldrb	r3, [r0, r1]
 80034f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80034fa:	ea54 0305 	orrs.w	r3, r4, r5
 80034fe:	d1f1      	bne.n	80034e4 <_vfprintf_r+0xbdc>
 8003500:	9b04      	ldr	r3, [sp, #16]
 8003502:	1bdb      	subs	r3, r3, r7
 8003504:	9309      	str	r3, [sp, #36]	; 0x24
 8003506:	f7ff bb80 	b.w	8002c0a <_vfprintf_r+0x302>
 800350a:	46b1      	mov	r9, r6
 800350c:	e776      	b.n	80033fc <_vfprintf_r+0xaf4>
 800350e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003510:	9907      	ldr	r1, [sp, #28]
 8003512:	9803      	ldr	r0, [sp, #12]
 8003514:	f003 fd26 	bl	8006f64 <__sprint_r>
 8003518:	2800      	cmp	r0, #0
 800351a:	f47f af6d 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 800351e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003520:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003524:	f7ff bbdd 	b.w	8002ce2 <_vfprintf_r+0x3da>
 8003528:	aa2a      	add	r2, sp, #168	; 0xa8
 800352a:	9907      	ldr	r1, [sp, #28]
 800352c:	9803      	ldr	r0, [sp, #12]
 800352e:	f003 fd19 	bl	8006f64 <__sprint_r>
 8003532:	2800      	cmp	r0, #0
 8003534:	f47f af60 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003538:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800353a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800353e:	f7ff bbe0 	b.w	8002d02 <_vfprintf_r+0x3fa>
 8003542:	4698      	mov	r8, r3
 8003544:	2d00      	cmp	r5, #0
 8003546:	bf08      	it	eq
 8003548:	2c0a      	cmpeq	r4, #10
 800354a:	f080 8170 	bcs.w	800382e <_vfprintf_r+0xf26>
 800354e:	af56      	add	r7, sp, #344	; 0x158
 8003550:	3430      	adds	r4, #48	; 0x30
 8003552:	2301      	movs	r3, #1
 8003554:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003558:	9309      	str	r3, [sp, #36]	; 0x24
 800355a:	f7ff bb56 	b.w	8002c0a <_vfprintf_r+0x302>
 800355e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003560:	9907      	ldr	r1, [sp, #28]
 8003562:	9803      	ldr	r0, [sp, #12]
 8003564:	f003 fcfe 	bl	8006f64 <__sprint_r>
 8003568:	2800      	cmp	r0, #0
 800356a:	f47f af45 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 800356e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003570:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003574:	e406      	b.n	8002d84 <_vfprintf_r+0x47c>
 8003576:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003578:	2b00      	cmp	r3, #0
 800357a:	f340 8273 	ble.w	8003a64 <_vfprintf_r+0x115c>
 800357e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003582:	4293      	cmp	r3, r2
 8003584:	bfa8      	it	ge
 8003586:	4613      	movge	r3, r2
 8003588:	2b00      	cmp	r3, #0
 800358a:	461d      	mov	r5, r3
 800358c:	dd0d      	ble.n	80035aa <_vfprintf_r+0xca2>
 800358e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003590:	f8cb 7000 	str.w	r7, [fp]
 8003594:	3301      	adds	r3, #1
 8003596:	442c      	add	r4, r5
 8003598:	2b07      	cmp	r3, #7
 800359a:	942c      	str	r4, [sp, #176]	; 0xb0
 800359c:	f8cb 5004 	str.w	r5, [fp, #4]
 80035a0:	932b      	str	r3, [sp, #172]	; 0xac
 80035a2:	f300 82c1 	bgt.w	8003b28 <_vfprintf_r+0x1220>
 80035a6:	f10b 0b08 	add.w	fp, fp, #8
 80035aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80035ac:	2d00      	cmp	r5, #0
 80035ae:	bfa8      	it	ge
 80035b0:	1b5b      	subge	r3, r3, r5
 80035b2:	2b00      	cmp	r3, #0
 80035b4:	461d      	mov	r5, r3
 80035b6:	f340 8099 	ble.w	80036ec <_vfprintf_r+0xde4>
 80035ba:	2d10      	cmp	r5, #16
 80035bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035be:	4b2c      	ldr	r3, [pc, #176]	; (8003670 <_vfprintf_r+0xd68>)
 80035c0:	f340 83db 	ble.w	8003d7a <_vfprintf_r+0x1472>
 80035c4:	4618      	mov	r0, r3
 80035c6:	4621      	mov	r1, r4
 80035c8:	465b      	mov	r3, fp
 80035ca:	2610      	movs	r6, #16
 80035cc:	46bb      	mov	fp, r7
 80035ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80035d2:	9c07      	ldr	r4, [sp, #28]
 80035d4:	4607      	mov	r7, r0
 80035d6:	e004      	b.n	80035e2 <_vfprintf_r+0xcda>
 80035d8:	3308      	adds	r3, #8
 80035da:	3d10      	subs	r5, #16
 80035dc:	2d10      	cmp	r5, #16
 80035de:	f340 83c7 	ble.w	8003d70 <_vfprintf_r+0x1468>
 80035e2:	3201      	adds	r2, #1
 80035e4:	3110      	adds	r1, #16
 80035e6:	2a07      	cmp	r2, #7
 80035e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80035ec:	e9c3 7600 	strd	r7, r6, [r3]
 80035f0:	ddf2      	ble.n	80035d8 <_vfprintf_r+0xcd0>
 80035f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80035f4:	4621      	mov	r1, r4
 80035f6:	4648      	mov	r0, r9
 80035f8:	f003 fcb4 	bl	8006f64 <__sprint_r>
 80035fc:	2800      	cmp	r0, #0
 80035fe:	f040 84a5 	bne.w	8003f4c <_vfprintf_r+0x1644>
 8003602:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003606:	ab2d      	add	r3, sp, #180	; 0xb4
 8003608:	e7e7      	b.n	80035da <_vfprintf_r+0xcd2>
 800360a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800360e:	af56      	add	r7, sp, #344	; 0x158
 8003610:	f7ff bafb 	b.w	8002c0a <_vfprintf_r+0x302>
 8003614:	f1b9 0f00 	cmp.w	r9, #0
 8003618:	f77f af4c 	ble.w	80034b4 <_vfprintf_r+0xbac>
 800361c:	f1b9 0f10 	cmp.w	r9, #16
 8003620:	4b13      	ldr	r3, [pc, #76]	; (8003670 <_vfprintf_r+0xd68>)
 8003622:	f340 8659 	ble.w	80042d8 <_vfprintf_r+0x19d0>
 8003626:	4619      	mov	r1, r3
 8003628:	4622      	mov	r2, r4
 800362a:	4633      	mov	r3, r6
 800362c:	2710      	movs	r7, #16
 800362e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003632:	9c07      	ldr	r4, [sp, #28]
 8003634:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003636:	460e      	mov	r6, r1
 8003638:	e007      	b.n	800364a <_vfprintf_r+0xd42>
 800363a:	3308      	adds	r3, #8
 800363c:	f1a9 0910 	sub.w	r9, r9, #16
 8003640:	f1b9 0f10 	cmp.w	r9, #16
 8003644:	f340 8353 	ble.w	8003cee <_vfprintf_r+0x13e6>
 8003648:	3501      	adds	r5, #1
 800364a:	3210      	adds	r2, #16
 800364c:	2d07      	cmp	r5, #7
 800364e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003652:	e9c3 6700 	strd	r6, r7, [r3]
 8003656:	ddf0      	ble.n	800363a <_vfprintf_r+0xd32>
 8003658:	aa2a      	add	r2, sp, #168	; 0xa8
 800365a:	4621      	mov	r1, r4
 800365c:	4658      	mov	r0, fp
 800365e:	f003 fc81 	bl	8006f64 <__sprint_r>
 8003662:	2800      	cmp	r0, #0
 8003664:	f040 8472 	bne.w	8003f4c <_vfprintf_r+0x1644>
 8003668:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800366c:	ab2d      	add	r3, sp, #180	; 0xb4
 800366e:	e7e5      	b.n	800363c <_vfprintf_r+0xd34>
 8003670:	080077a0 	.word	0x080077a0
 8003674:	f018 0f01 	tst.w	r8, #1
 8003678:	f47f aee0 	bne.w	800343c <_vfprintf_r+0xb34>
 800367c:	2201      	movs	r2, #1
 800367e:	2d07      	cmp	r5, #7
 8003680:	f8cb 7000 	str.w	r7, [fp]
 8003684:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003688:	f8cb 2004 	str.w	r2, [fp, #4]
 800368c:	dc04      	bgt.n	8003698 <_vfprintf_r+0xd90>
 800368e:	3302      	adds	r3, #2
 8003690:	9309      	str	r3, [sp, #36]	; 0x24
 8003692:	f10b 0b10 	add.w	fp, fp, #16
 8003696:	e70d      	b.n	80034b4 <_vfprintf_r+0xbac>
 8003698:	aa2a      	add	r2, sp, #168	; 0xa8
 800369a:	9907      	ldr	r1, [sp, #28]
 800369c:	9803      	ldr	r0, [sp, #12]
 800369e:	f003 fc61 	bl	8006f64 <__sprint_r>
 80036a2:	2800      	cmp	r0, #0
 80036a4:	f47f aea8 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80036a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80036ac:	3301      	adds	r3, #1
 80036ae:	9309      	str	r3, [sp, #36]	; 0x24
 80036b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80036b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80036b6:	e6fd      	b.n	80034b4 <_vfprintf_r+0xbac>
 80036b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036ba:	9907      	ldr	r1, [sp, #28]
 80036bc:	9803      	ldr	r0, [sp, #12]
 80036be:	f003 fc51 	bl	8006f64 <__sprint_r>
 80036c2:	2800      	cmp	r0, #0
 80036c4:	f47f ae98 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80036c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80036cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036d2:	f7ff baf6 	b.w	8002cc2 <_vfprintf_r+0x3ba>
 80036d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036d8:	9907      	ldr	r1, [sp, #28]
 80036da:	9803      	ldr	r0, [sp, #12]
 80036dc:	f003 fc42 	bl	8006f64 <__sprint_r>
 80036e0:	2800      	cmp	r0, #0
 80036e2:	f47f ae89 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80036e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80036ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80036f2:	443b      	add	r3, r7
 80036f4:	4699      	mov	r9, r3
 80036f6:	f040 8357 	bne.w	8003da8 <_vfprintf_r+0x14a0>
 80036fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036fe:	4293      	cmp	r3, r2
 8003700:	db49      	blt.n	8003796 <_vfprintf_r+0xe8e>
 8003702:	f018 0f01 	tst.w	r8, #1
 8003706:	d146      	bne.n	8003796 <_vfprintf_r+0xe8e>
 8003708:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800370a:	18bd      	adds	r5, r7, r2
 800370c:	eba5 0509 	sub.w	r5, r5, r9
 8003710:	1ad3      	subs	r3, r2, r3
 8003712:	429d      	cmp	r5, r3
 8003714:	bfa8      	it	ge
 8003716:	461d      	movge	r5, r3
 8003718:	2d00      	cmp	r5, #0
 800371a:	dd0d      	ble.n	8003738 <_vfprintf_r+0xe30>
 800371c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800371e:	f8cb 9000 	str.w	r9, [fp]
 8003722:	3201      	adds	r2, #1
 8003724:	442c      	add	r4, r5
 8003726:	2a07      	cmp	r2, #7
 8003728:	942c      	str	r4, [sp, #176]	; 0xb0
 800372a:	f8cb 5004 	str.w	r5, [fp, #4]
 800372e:	922b      	str	r2, [sp, #172]	; 0xac
 8003730:	f300 8462 	bgt.w	8003ff8 <_vfprintf_r+0x16f0>
 8003734:	f10b 0b08 	add.w	fp, fp, #8
 8003738:	2d00      	cmp	r5, #0
 800373a:	bfac      	ite	ge
 800373c:	1b5d      	subge	r5, r3, r5
 800373e:	461d      	movlt	r5, r3
 8003740:	2d00      	cmp	r5, #0
 8003742:	f77f ab32 	ble.w	8002daa <_vfprintf_r+0x4a2>
 8003746:	2d10      	cmp	r5, #16
 8003748:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800374a:	4bc5      	ldr	r3, [pc, #788]	; (8003a60 <_vfprintf_r+0x1158>)
 800374c:	f340 80c4 	ble.w	80038d8 <_vfprintf_r+0xfd0>
 8003750:	4619      	mov	r1, r3
 8003752:	2610      	movs	r6, #16
 8003754:	4623      	mov	r3, r4
 8003756:	9f03      	ldr	r7, [sp, #12]
 8003758:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800375c:	460c      	mov	r4, r1
 800375e:	e005      	b.n	800376c <_vfprintf_r+0xe64>
 8003760:	f10b 0b08 	add.w	fp, fp, #8
 8003764:	3d10      	subs	r5, #16
 8003766:	2d10      	cmp	r5, #16
 8003768:	f340 80b3 	ble.w	80038d2 <_vfprintf_r+0xfca>
 800376c:	3201      	adds	r2, #1
 800376e:	3310      	adds	r3, #16
 8003770:	2a07      	cmp	r2, #7
 8003772:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003776:	e9cb 4600 	strd	r4, r6, [fp]
 800377a:	ddf1      	ble.n	8003760 <_vfprintf_r+0xe58>
 800377c:	aa2a      	add	r2, sp, #168	; 0xa8
 800377e:	4649      	mov	r1, r9
 8003780:	4638      	mov	r0, r7
 8003782:	f003 fbef 	bl	8006f64 <__sprint_r>
 8003786:	2800      	cmp	r0, #0
 8003788:	f47f ae38 	bne.w	80033fc <_vfprintf_r+0xaf4>
 800378c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003790:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003794:	e7e6      	b.n	8003764 <_vfprintf_r+0xe5c>
 8003796:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003798:	9916      	ldr	r1, [sp, #88]	; 0x58
 800379a:	f8cb 1000 	str.w	r1, [fp]
 800379e:	9915      	ldr	r1, [sp, #84]	; 0x54
 80037a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80037a4:	3201      	adds	r2, #1
 80037a6:	440c      	add	r4, r1
 80037a8:	2a07      	cmp	r2, #7
 80037aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80037ac:	922b      	str	r2, [sp, #172]	; 0xac
 80037ae:	f300 828c 	bgt.w	8003cca <_vfprintf_r+0x13c2>
 80037b2:	f10b 0b08 	add.w	fp, fp, #8
 80037b6:	e7a7      	b.n	8003708 <_vfprintf_r+0xe00>
 80037b8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80037bc:	f002 fa94 	bl	8005ce8 <__retarget_lock_release_recursive>
 80037c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80037c4:	e628      	b.n	8003418 <_vfprintf_r+0xb10>
 80037c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80037c8:	9907      	ldr	r1, [sp, #28]
 80037ca:	9803      	ldr	r0, [sp, #12]
 80037cc:	f003 fbca 	bl	8006f64 <__sprint_r>
 80037d0:	2800      	cmp	r0, #0
 80037d2:	f47f ae11 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80037d6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80037da:	ae2d      	add	r6, sp, #180	; 0xb4
 80037dc:	e638      	b.n	8003450 <_vfprintf_r+0xb48>
 80037de:	aa2a      	add	r2, sp, #168	; 0xa8
 80037e0:	9907      	ldr	r1, [sp, #28]
 80037e2:	9803      	ldr	r0, [sp, #12]
 80037e4:	f003 fbbe 	bl	8006f64 <__sprint_r>
 80037e8:	2800      	cmp	r0, #0
 80037ea:	f47f ae05 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80037ee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80037f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80037f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80037f6:	e638      	b.n	800346a <_vfprintf_r+0xb62>
 80037f8:	6814      	ldr	r4, [r2, #0]
 80037fa:	9308      	str	r3, [sp, #32]
 80037fc:	2500      	movs	r5, #0
 80037fe:	f7ff bb95 	b.w	8002f2c <_vfprintf_r+0x624>
 8003802:	6814      	ldr	r4, [r2, #0]
 8003804:	9308      	str	r3, [sp, #32]
 8003806:	2500      	movs	r5, #0
 8003808:	f7ff b9ae 	b.w	8002b68 <_vfprintf_r+0x260>
 800380c:	680c      	ldr	r4, [r1, #0]
 800380e:	9208      	str	r2, [sp, #32]
 8003810:	17e5      	asrs	r5, r4, #31
 8003812:	4620      	mov	r0, r4
 8003814:	4629      	mov	r1, r5
 8003816:	f7ff b9d2 	b.w	8002bbe <_vfprintf_r+0x2b6>
 800381a:	6814      	ldr	r4, [r2, #0]
 800381c:	9108      	str	r1, [sp, #32]
 800381e:	2201      	movs	r2, #1
 8003820:	2500      	movs	r5, #0
 8003822:	f7ff bb32 	b.w	8002e8a <_vfprintf_r+0x582>
 8003826:	2a01      	cmp	r2, #1
 8003828:	f47f ab3c 	bne.w	8002ea4 <_vfprintf_r+0x59c>
 800382c:	e68f      	b.n	800354e <_vfprintf_r+0xc46>
 800382e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003832:	2200      	movs	r2, #0
 8003834:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003838:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800383c:	af56      	add	r7, sp, #344	; 0x158
 800383e:	4692      	mov	sl, r2
 8003840:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003844:	461e      	mov	r6, r3
 8003846:	e00a      	b.n	800385e <_vfprintf_r+0xf56>
 8003848:	2300      	movs	r3, #0
 800384a:	4620      	mov	r0, r4
 800384c:	4629      	mov	r1, r5
 800384e:	220a      	movs	r2, #10
 8003850:	f7fd f942 	bl	8000ad8 <__aeabi_uldivmod>
 8003854:	4604      	mov	r4, r0
 8003856:	460d      	mov	r5, r1
 8003858:	ea54 0305 	orrs.w	r3, r4, r5
 800385c:	d029      	beq.n	80038b2 <_vfprintf_r+0xfaa>
 800385e:	220a      	movs	r2, #10
 8003860:	2300      	movs	r3, #0
 8003862:	4620      	mov	r0, r4
 8003864:	4629      	mov	r1, r5
 8003866:	f7fd f937 	bl	8000ad8 <__aeabi_uldivmod>
 800386a:	3230      	adds	r2, #48	; 0x30
 800386c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003870:	f10a 0a01 	add.w	sl, sl, #1
 8003874:	3f01      	subs	r7, #1
 8003876:	2e00      	cmp	r6, #0
 8003878:	d0e6      	beq.n	8003848 <_vfprintf_r+0xf40>
 800387a:	f898 3000 	ldrb.w	r3, [r8]
 800387e:	459a      	cmp	sl, r3
 8003880:	d1e2      	bne.n	8003848 <_vfprintf_r+0xf40>
 8003882:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003886:	d0df      	beq.n	8003848 <_vfprintf_r+0xf40>
 8003888:	2d00      	cmp	r5, #0
 800388a:	bf08      	it	eq
 800388c:	2c0a      	cmpeq	r4, #10
 800388e:	d3db      	bcc.n	8003848 <_vfprintf_r+0xf40>
 8003890:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003892:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003894:	1aff      	subs	r7, r7, r3
 8003896:	461a      	mov	r2, r3
 8003898:	4638      	mov	r0, r7
 800389a:	f003 faf5 	bl	8006e88 <strncpy>
 800389e:	f898 3001 	ldrb.w	r3, [r8, #1]
 80038a2:	2b00      	cmp	r3, #0
 80038a4:	f000 8496 	beq.w	80041d4 <_vfprintf_r+0x18cc>
 80038a8:	f108 0801 	add.w	r8, r8, #1
 80038ac:	f04f 0a00 	mov.w	sl, #0
 80038b0:	e7ca      	b.n	8003848 <_vfprintf_r+0xf40>
 80038b2:	9b04      	ldr	r3, [sp, #16]
 80038b4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80038b8:	1bdb      	subs	r3, r3, r7
 80038ba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80038be:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80038c0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80038c4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80038c8:	9309      	str	r3, [sp, #36]	; 0x24
 80038ca:	f7ff b99e 	b.w	8002c0a <_vfprintf_r+0x302>
 80038ce:	46c1      	mov	r9, r8
 80038d0:	e594      	b.n	80033fc <_vfprintf_r+0xaf4>
 80038d2:	4621      	mov	r1, r4
 80038d4:	461c      	mov	r4, r3
 80038d6:	460b      	mov	r3, r1
 80038d8:	3201      	adds	r2, #1
 80038da:	442c      	add	r4, r5
 80038dc:	2a07      	cmp	r2, #7
 80038de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038e2:	e9cb 3500 	strd	r3, r5, [fp]
 80038e6:	f77f aa5e 	ble.w	8002da6 <_vfprintf_r+0x49e>
 80038ea:	e5ee      	b.n	80034ca <_vfprintf_r+0xbc2>
 80038ec:	f018 0f10 	tst.w	r8, #16
 80038f0:	f040 80f8 	bne.w	8003ae4 <_vfprintf_r+0x11dc>
 80038f4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80038f8:	f000 8351 	beq.w	8003f9e <_vfprintf_r+0x1696>
 80038fc:	9a05      	ldr	r2, [sp, #20]
 80038fe:	801a      	strh	r2, [r3, #0]
 8003900:	4657      	mov	r7, sl
 8003902:	f7ff baa7 	b.w	8002e54 <_vfprintf_r+0x54c>
 8003906:	aa2a      	add	r2, sp, #168	; 0xa8
 8003908:	9907      	ldr	r1, [sp, #28]
 800390a:	9803      	ldr	r0, [sp, #12]
 800390c:	f003 fb2a 	bl	8006f64 <__sprint_r>
 8003910:	2800      	cmp	r0, #0
 8003912:	f47f ad71 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003916:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003918:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800391c:	f7ff b9f5 	b.w	8002d0a <_vfprintf_r+0x402>
 8003920:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003924:	4602      	mov	r2, r0
 8003926:	460b      	mov	r3, r1
 8003928:	f7fd f8c0 	bl	8000aac <__aeabi_dcmpun>
 800392c:	2800      	cmp	r0, #0
 800392e:	f040 8491 	bne.w	8004254 <_vfprintf_r+0x194c>
 8003932:	2e61      	cmp	r6, #97	; 0x61
 8003934:	f000 8111 	beq.w	8003b5a <_vfprintf_r+0x1252>
 8003938:	2e41      	cmp	r6, #65	; 0x41
 800393a:	f000 8377 	beq.w	800402c <_vfprintf_r+0x1724>
 800393e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003942:	f026 0220 	bic.w	r2, r6, #32
 8003946:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800394a:	930e      	str	r3, [sp, #56]	; 0x38
 800394c:	9204      	str	r2, [sp, #16]
 800394e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003950:	f000 842d 	beq.w	80041ae <_vfprintf_r+0x18a6>
 8003954:	2a47      	cmp	r2, #71	; 0x47
 8003956:	f000 8424 	beq.w	80041a2 <_vfprintf_r+0x189a>
 800395a:	2b00      	cmp	r3, #0
 800395c:	f2c0 82f9 	blt.w	8003f52 <_vfprintf_r+0x164a>
 8003960:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003964:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003968:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800396c:	2e66      	cmp	r6, #102	; 0x66
 800396e:	f000 83eb 	beq.w	8004148 <_vfprintf_r+0x1840>
 8003972:	2e46      	cmp	r6, #70	; 0x46
 8003974:	f000 847e 	beq.w	8004274 <_vfprintf_r+0x196c>
 8003978:	9b04      	ldr	r3, [sp, #16]
 800397a:	9803      	ldr	r0, [sp, #12]
 800397c:	2b45      	cmp	r3, #69	; 0x45
 800397e:	bf0c      	ite	eq
 8003980:	f109 0501 	addeq.w	r5, r9, #1
 8003984:	464d      	movne	r5, r9
 8003986:	aa28      	add	r2, sp, #160	; 0xa0
 8003988:	ab25      	add	r3, sp, #148	; 0x94
 800398a:	e9cd 3200 	strd	r3, r2, [sp]
 800398e:	2102      	movs	r1, #2
 8003990:	ab24      	add	r3, sp, #144	; 0x90
 8003992:	462a      	mov	r2, r5
 8003994:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003998:	f000 fe3e 	bl	8004618 <_dtoa_r>
 800399c:	2e67      	cmp	r6, #103	; 0x67
 800399e:	4607      	mov	r7, r0
 80039a0:	f040 849c 	bne.w	80042dc <_vfprintf_r+0x19d4>
 80039a4:	f018 0f01 	tst.w	r8, #1
 80039a8:	f040 83f9 	bne.w	800419e <_vfprintf_r+0x1896>
 80039ac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80039ae:	4640      	mov	r0, r8
 80039b0:	1bdb      	subs	r3, r3, r7
 80039b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039b6:	9310      	str	r3, [sp, #64]	; 0x40
 80039b8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039ba:	9311      	str	r3, [sp, #68]	; 0x44
 80039bc:	9b04      	ldr	r3, [sp, #16]
 80039be:	2b47      	cmp	r3, #71	; 0x47
 80039c0:	f000 81e7 	beq.w	8003d92 <_vfprintf_r+0x148a>
 80039c4:	9b04      	ldr	r3, [sp, #16]
 80039c6:	2b46      	cmp	r3, #70	; 0x46
 80039c8:	f000 8300 	beq.w	8003fcc <_vfprintf_r+0x16c4>
 80039cc:	9904      	ldr	r1, [sp, #16]
 80039ce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039d0:	b2f2      	uxtb	r2, r6
 80039d2:	2941      	cmp	r1, #65	; 0x41
 80039d4:	bf08      	it	eq
 80039d6:	320f      	addeq	r2, #15
 80039d8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80039dc:	bf06      	itte	eq
 80039de:	b2d2      	uxtbeq	r2, r2
 80039e0:	2101      	moveq	r1, #1
 80039e2:	2100      	movne	r1, #0
 80039e4:	2b00      	cmp	r3, #0
 80039e6:	9324      	str	r3, [sp, #144]	; 0x90
 80039e8:	bfb8      	it	lt
 80039ea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80039ec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80039f0:	bfba      	itte	lt
 80039f2:	f1c3 0301 	rsblt	r3, r3, #1
 80039f6:	222d      	movlt	r2, #45	; 0x2d
 80039f8:	222b      	movge	r2, #43	; 0x2b
 80039fa:	2b09      	cmp	r3, #9
 80039fc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003a00:	f300 83f9 	bgt.w	80041f6 <_vfprintf_r+0x18ee>
 8003a04:	2900      	cmp	r1, #0
 8003a06:	f040 8487 	bne.w	8004318 <_vfprintf_r+0x1a10>
 8003a0a:	2230      	movs	r2, #48	; 0x30
 8003a0c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003a10:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003a14:	3330      	adds	r3, #48	; 0x30
 8003a16:	7013      	strb	r3, [r2, #0]
 8003a18:	1c53      	adds	r3, r2, #1
 8003a1a:	aa26      	add	r2, sp, #152	; 0x98
 8003a1c:	1a9b      	subs	r3, r3, r2
 8003a1e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a20:	9319      	str	r3, [sp, #100]	; 0x64
 8003a22:	2a01      	cmp	r2, #1
 8003a24:	4413      	add	r3, r2
 8003a26:	9309      	str	r3, [sp, #36]	; 0x24
 8003a28:	f340 8442 	ble.w	80042b0 <_vfprintf_r+0x19a8>
 8003a2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a30:	4413      	add	r3, r2
 8003a32:	9309      	str	r3, [sp, #36]	; 0x24
 8003a34:	2300      	movs	r3, #0
 8003a36:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a38:	9314      	str	r3, [sp, #80]	; 0x50
 8003a3a:	9311      	str	r3, [sp, #68]	; 0x44
 8003a3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a3e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003a42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a46:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003a4a:	9304      	str	r3, [sp, #16]
 8003a4c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003a4e:	2b00      	cmp	r3, #0
 8003a50:	f040 8275 	bne.w	8003f3e <_vfprintf_r+0x1636>
 8003a54:	4699      	mov	r9, r3
 8003a56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a5a:	f7ff b8e2 	b.w	8002c22 <_vfprintf_r+0x31a>
 8003a5e:	bf00      	nop
 8003a60:	080077a0 	.word	0x080077a0
 8003a64:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a66:	49bd      	ldr	r1, [pc, #756]	; (8003d5c <_vfprintf_r+0x1454>)
 8003a68:	f8cb 1000 	str.w	r1, [fp]
 8003a6c:	3201      	adds	r2, #1
 8003a6e:	3401      	adds	r4, #1
 8003a70:	2101      	movs	r1, #1
 8003a72:	2a07      	cmp	r2, #7
 8003a74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a78:	f8cb 1004 	str.w	r1, [fp, #4]
 8003a7c:	dc60      	bgt.n	8003b40 <_vfprintf_r+0x1238>
 8003a7e:	f10b 0b08 	add.w	fp, fp, #8
 8003a82:	b92b      	cbnz	r3, 8003a90 <_vfprintf_r+0x1188>
 8003a84:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a86:	b91a      	cbnz	r2, 8003a90 <_vfprintf_r+0x1188>
 8003a88:	f018 0f01 	tst.w	r8, #1
 8003a8c:	f43f a98d 	beq.w	8002daa <_vfprintf_r+0x4a2>
 8003a90:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a92:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003a94:	f8cb 1000 	str.w	r1, [fp]
 8003a98:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003a9a:	f8cb 1004 	str.w	r1, [fp, #4]
 8003a9e:	3201      	adds	r2, #1
 8003aa0:	440c      	add	r4, r1
 8003aa2:	2a07      	cmp	r2, #7
 8003aa4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003aa6:	922b      	str	r2, [sp, #172]	; 0xac
 8003aa8:	f300 8282 	bgt.w	8003fb0 <_vfprintf_r+0x16a8>
 8003aac:	f10b 0b08 	add.w	fp, fp, #8
 8003ab0:	2b00      	cmp	r3, #0
 8003ab2:	f2c0 82e7 	blt.w	8004084 <_vfprintf_r+0x177c>
 8003ab6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ab8:	3201      	adds	r2, #1
 8003aba:	441c      	add	r4, r3
 8003abc:	2a07      	cmp	r2, #7
 8003abe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ac2:	e9cb 7300 	strd	r7, r3, [fp]
 8003ac6:	f77f a96e 	ble.w	8002da6 <_vfprintf_r+0x49e>
 8003aca:	e4fe      	b.n	80034ca <_vfprintf_r+0xbc2>
 8003acc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ace:	9907      	ldr	r1, [sp, #28]
 8003ad0:	9803      	ldr	r0, [sp, #12]
 8003ad2:	f003 fa47 	bl	8006f64 <__sprint_r>
 8003ad6:	2800      	cmp	r0, #0
 8003ad8:	f47f ac8e 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003adc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ae0:	f7ff bbf0 	b.w	80032c4 <_vfprintf_r+0x9bc>
 8003ae4:	9a05      	ldr	r2, [sp, #20]
 8003ae6:	601a      	str	r2, [r3, #0]
 8003ae8:	4657      	mov	r7, sl
 8003aea:	f7ff b9b3 	b.w	8002e54 <_vfprintf_r+0x54c>
 8003aee:	8814      	ldrh	r4, [r2, #0]
 8003af0:	9108      	str	r1, [sp, #32]
 8003af2:	2500      	movs	r5, #0
 8003af4:	2201      	movs	r2, #1
 8003af6:	f7ff b9c8 	b.w	8002e8a <_vfprintf_r+0x582>
 8003afa:	8814      	ldrh	r4, [r2, #0]
 8003afc:	9308      	str	r3, [sp, #32]
 8003afe:	2500      	movs	r5, #0
 8003b00:	f7ff ba14 	b.w	8002f2c <_vfprintf_r+0x624>
 8003b04:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003b08:	9208      	str	r2, [sp, #32]
 8003b0a:	17e5      	asrs	r5, r4, #31
 8003b0c:	4620      	mov	r0, r4
 8003b0e:	4629      	mov	r1, r5
 8003b10:	f7ff b855 	b.w	8002bbe <_vfprintf_r+0x2b6>
 8003b14:	8814      	ldrh	r4, [r2, #0]
 8003b16:	9308      	str	r3, [sp, #32]
 8003b18:	2500      	movs	r5, #0
 8003b1a:	f7ff b825 	b.w	8002b68 <_vfprintf_r+0x260>
 8003b1e:	222d      	movs	r2, #45	; 0x2d
 8003b20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b24:	f7ff baa2 	b.w	800306c <_vfprintf_r+0x764>
 8003b28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b2a:	9907      	ldr	r1, [sp, #28]
 8003b2c:	9803      	ldr	r0, [sp, #12]
 8003b2e:	f003 fa19 	bl	8006f64 <__sprint_r>
 8003b32:	2800      	cmp	r0, #0
 8003b34:	f47f ac60 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003b38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b3e:	e534      	b.n	80035aa <_vfprintf_r+0xca2>
 8003b40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b42:	9907      	ldr	r1, [sp, #28]
 8003b44:	9803      	ldr	r0, [sp, #12]
 8003b46:	f003 fa0d 	bl	8006f64 <__sprint_r>
 8003b4a:	2800      	cmp	r0, #0
 8003b4c:	f47f ac54 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003b50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b52:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b58:	e793      	b.n	8003a82 <_vfprintf_r+0x117a>
 8003b5a:	2330      	movs	r3, #48	; 0x30
 8003b5c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b60:	2378      	movs	r3, #120	; 0x78
 8003b62:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003b66:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003b6a:	f048 0402 	orr.w	r4, r8, #2
 8003b6e:	f300 82b0 	bgt.w	80040d2 <_vfprintf_r+0x17ca>
 8003b72:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b76:	930e      	str	r3, [sp, #56]	; 0x38
 8003b78:	f026 0320 	bic.w	r3, r6, #32
 8003b7c:	9304      	str	r3, [sp, #16]
 8003b7e:	2200      	movs	r2, #0
 8003b80:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b82:	920a      	str	r2, [sp, #40]	; 0x28
 8003b84:	46a0      	mov	r8, r4
 8003b86:	af3d      	add	r7, sp, #244	; 0xf4
 8003b88:	2b00      	cmp	r3, #0
 8003b8a:	f2c0 81e3 	blt.w	8003f54 <_vfprintf_r+0x164c>
 8003b8e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003b92:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003b96:	2300      	movs	r3, #0
 8003b98:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b9a:	2e61      	cmp	r6, #97	; 0x61
 8003b9c:	f000 8255 	beq.w	800404a <_vfprintf_r+0x1742>
 8003ba0:	2e41      	cmp	r6, #65	; 0x41
 8003ba2:	f47f aee3 	bne.w	800396c <_vfprintf_r+0x1064>
 8003ba6:	a824      	add	r0, sp, #144	; 0x90
 8003ba8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bac:	f003 f8e2 	bl	8006d74 <frexp>
 8003bb0:	2200      	movs	r2, #0
 8003bb2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003bb6:	ec51 0b10 	vmov	r0, r1, d0
 8003bba:	f7fc fcdd 	bl	8000578 <__aeabi_dmul>
 8003bbe:	2200      	movs	r2, #0
 8003bc0:	2300      	movs	r3, #0
 8003bc2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bc6:	f7fc ff3f 	bl	8000a48 <__aeabi_dcmpeq>
 8003bca:	2800      	cmp	r0, #0
 8003bcc:	f040 8305 	bne.w	80041da <_vfprintf_r+0x18d2>
 8003bd0:	4b63      	ldr	r3, [pc, #396]	; (8003d60 <_vfprintf_r+0x1458>)
 8003bd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bd4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003bd8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003bdc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003be0:	9721      	str	r7, [sp, #132]	; 0x84
 8003be2:	46b9      	mov	r9, r7
 8003be4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003be8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003bec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003bf0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003bf4:	e003      	b.n	8003bfe <_vfprintf_r+0x12f6>
 8003bf6:	f7fc ff27 	bl	8000a48 <__aeabi_dcmpeq>
 8003bfa:	bb20      	cbnz	r0, 8003c46 <_vfprintf_r+0x133e>
 8003bfc:	46a9      	mov	r9, r5
 8003bfe:	2200      	movs	r2, #0
 8003c00:	4b58      	ldr	r3, [pc, #352]	; (8003d64 <_vfprintf_r+0x145c>)
 8003c02:	4630      	mov	r0, r6
 8003c04:	4639      	mov	r1, r7
 8003c06:	f7fc fcb7 	bl	8000578 <__aeabi_dmul>
 8003c0a:	460f      	mov	r7, r1
 8003c0c:	4606      	mov	r6, r0
 8003c0e:	f7fd fa57 	bl	80010c0 <__aeabi_d2iz>
 8003c12:	4680      	mov	r8, r0
 8003c14:	f7fc fc46 	bl	80004a4 <__aeabi_i2d>
 8003c18:	4602      	mov	r2, r0
 8003c1a:	460b      	mov	r3, r1
 8003c1c:	4630      	mov	r0, r6
 8003c1e:	4639      	mov	r1, r7
 8003c20:	f7fc faf2 	bl	8000208 <__aeabi_dsub>
 8003c24:	464d      	mov	r5, r9
 8003c26:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003c2a:	f805 cb01 	strb.w	ip, [r5], #1
 8003c2e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003c32:	46a3      	mov	fp, r4
 8003c34:	4606      	mov	r6, r0
 8003c36:	460f      	mov	r7, r1
 8003c38:	f04f 0200 	mov.w	r2, #0
 8003c3c:	f04f 0300 	mov.w	r3, #0
 8003c40:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003c44:	d1d7      	bne.n	8003bf6 <_vfprintf_r+0x12ee>
 8003c46:	4630      	mov	r0, r6
 8003c48:	4639      	mov	r1, r7
 8003c4a:	2200      	movs	r2, #0
 8003c4c:	4b46      	ldr	r3, [pc, #280]	; (8003d68 <_vfprintf_r+0x1460>)
 8003c4e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003c52:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003c54:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003c58:	4644      	mov	r4, r8
 8003c5a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003c5e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003c62:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003c66:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003c6a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003c6c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c70:	f7fc ff12 	bl	8000a98 <__aeabi_dcmpgt>
 8003c74:	2800      	cmp	r0, #0
 8003c76:	f040 8176 	bne.w	8003f66 <_vfprintf_r+0x165e>
 8003c7a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003c7e:	2200      	movs	r2, #0
 8003c80:	4b39      	ldr	r3, [pc, #228]	; (8003d68 <_vfprintf_r+0x1460>)
 8003c82:	f7fc fee1 	bl	8000a48 <__aeabi_dcmpeq>
 8003c86:	b110      	cbz	r0, 8003c8e <_vfprintf_r+0x1386>
 8003c88:	07e2      	lsls	r2, r4, #31
 8003c8a:	f100 816c 	bmi.w	8003f66 <_vfprintf_r+0x165e>
 8003c8e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c90:	2b00      	cmp	r3, #0
 8003c92:	db07      	blt.n	8003ca4 <_vfprintf_r+0x139c>
 8003c94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c96:	3301      	adds	r3, #1
 8003c98:	442b      	add	r3, r5
 8003c9a:	2230      	movs	r2, #48	; 0x30
 8003c9c:	f805 2b01 	strb.w	r2, [r5], #1
 8003ca0:	42ab      	cmp	r3, r5
 8003ca2:	d1fb      	bne.n	8003c9c <_vfprintf_r+0x1394>
 8003ca4:	1beb      	subs	r3, r5, r7
 8003ca6:	4640      	mov	r0, r8
 8003ca8:	9310      	str	r3, [sp, #64]	; 0x40
 8003caa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003cae:	e683      	b.n	80039b8 <_vfprintf_r+0x10b0>
 8003cb0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003cb4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003cb8:	9408      	str	r4, [sp, #32]
 8003cba:	4681      	mov	r9, r0
 8003cbc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003cbe:	9014      	str	r0, [sp, #80]	; 0x50
 8003cc0:	9011      	str	r0, [sp, #68]	; 0x44
 8003cc2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003cc6:	f7fe bfac 	b.w	8002c22 <_vfprintf_r+0x31a>
 8003cca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ccc:	9907      	ldr	r1, [sp, #28]
 8003cce:	9803      	ldr	r0, [sp, #12]
 8003cd0:	f003 f948 	bl	8006f64 <__sprint_r>
 8003cd4:	2800      	cmp	r0, #0
 8003cd6:	f47f ab8f 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003cda:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cdc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ce2:	e511      	b.n	8003708 <_vfprintf_r+0xe00>
 8003ce4:	4252      	negs	r2, r2
 8003ce6:	9206      	str	r2, [sp, #24]
 8003ce8:	9308      	str	r3, [sp, #32]
 8003cea:	f7ff b96d 	b.w	8002fc8 <_vfprintf_r+0x6c0>
 8003cee:	4614      	mov	r4, r2
 8003cf0:	4632      	mov	r2, r6
 8003cf2:	461e      	mov	r6, r3
 8003cf4:	4613      	mov	r3, r2
 8003cf6:	462a      	mov	r2, r5
 8003cf8:	3201      	adds	r2, #1
 8003cfa:	9209      	str	r2, [sp, #36]	; 0x24
 8003cfc:	f106 0208 	add.w	r2, r6, #8
 8003d00:	e9c6 3900 	strd	r3, r9, [r6]
 8003d04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d06:	932b      	str	r3, [sp, #172]	; 0xac
 8003d08:	444c      	add	r4, r9
 8003d0a:	2b07      	cmp	r3, #7
 8003d0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d0e:	f73f acc3 	bgt.w	8003698 <_vfprintf_r+0xd90>
 8003d12:	3301      	adds	r3, #1
 8003d14:	9309      	str	r3, [sp, #36]	; 0x24
 8003d16:	f102 0b08 	add.w	fp, r2, #8
 8003d1a:	4616      	mov	r6, r2
 8003d1c:	f7ff bbca 	b.w	80034b4 <_vfprintf_r+0xbac>
 8003d20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d22:	9907      	ldr	r1, [sp, #28]
 8003d24:	9803      	ldr	r0, [sp, #12]
 8003d26:	f003 f91d 	bl	8006f64 <__sprint_r>
 8003d2a:	2800      	cmp	r0, #0
 8003d2c:	f47f ab64 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003d30:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d32:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d36:	f7ff bade 	b.w	80032f6 <_vfprintf_r+0x9ee>
 8003d3a:	464b      	mov	r3, r9
 8003d3c:	2b06      	cmp	r3, #6
 8003d3e:	bf28      	it	cs
 8003d40:	2306      	movcs	r3, #6
 8003d42:	46b9      	mov	r9, r7
 8003d44:	970f      	str	r7, [sp, #60]	; 0x3c
 8003d46:	9714      	str	r7, [sp, #80]	; 0x50
 8003d48:	9711      	str	r7, [sp, #68]	; 0x44
 8003d4a:	970a      	str	r7, [sp, #40]	; 0x28
 8003d4c:	463a      	mov	r2, r7
 8003d4e:	9304      	str	r3, [sp, #16]
 8003d50:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003d54:	4f05      	ldr	r7, [pc, #20]	; (8003d6c <_vfprintf_r+0x1464>)
 8003d56:	f7fe bf64 	b.w	8002c22 <_vfprintf_r+0x31a>
 8003d5a:	bf00      	nop
 8003d5c:	0800778c 	.word	0x0800778c
 8003d60:	08007770 	.word	0x08007770
 8003d64:	40300000 	.word	0x40300000
 8003d68:	3fe00000 	.word	0x3fe00000
 8003d6c:	08007784 	.word	0x08007784
 8003d70:	460c      	mov	r4, r1
 8003d72:	4639      	mov	r1, r7
 8003d74:	465f      	mov	r7, fp
 8003d76:	469b      	mov	fp, r3
 8003d78:	460b      	mov	r3, r1
 8003d7a:	3201      	adds	r2, #1
 8003d7c:	442c      	add	r4, r5
 8003d7e:	2a07      	cmp	r2, #7
 8003d80:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d84:	e9cb 3500 	strd	r3, r5, [fp]
 8003d88:	f73f aca5 	bgt.w	80036d6 <_vfprintf_r+0xdce>
 8003d8c:	f10b 0b08 	add.w	fp, fp, #8
 8003d90:	e4ac      	b.n	80036ec <_vfprintf_r+0xde4>
 8003d92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d94:	1cda      	adds	r2, r3, #3
 8003d96:	db02      	blt.n	8003d9e <_vfprintf_r+0x1496>
 8003d98:	4599      	cmp	r9, r3
 8003d9a:	f280 80b5 	bge.w	8003f08 <_vfprintf_r+0x1600>
 8003d9e:	3e02      	subs	r6, #2
 8003da0:	f026 0320 	bic.w	r3, r6, #32
 8003da4:	9304      	str	r3, [sp, #16]
 8003da6:	e611      	b.n	80039cc <_vfprintf_r+0x10c4>
 8003da8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003daa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003dae:	465a      	mov	r2, fp
 8003db0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003db4:	18fb      	adds	r3, r7, r3
 8003db6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003dba:	970c      	str	r7, [sp, #48]	; 0x30
 8003dbc:	4eaf      	ldr	r6, [pc, #700]	; (800407c <_vfprintf_r+0x1774>)
 8003dbe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003dc2:	9309      	str	r3, [sp, #36]	; 0x24
 8003dc4:	464f      	mov	r7, r9
 8003dc6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003dca:	4621      	mov	r1, r4
 8003dcc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003dce:	2b00      	cmp	r3, #0
 8003dd0:	d05b      	beq.n	8003e8a <_vfprintf_r+0x1582>
 8003dd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dd4:	2b00      	cmp	r3, #0
 8003dd6:	d154      	bne.n	8003e82 <_vfprintf_r+0x157a>
 8003dd8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003dda:	3b01      	subs	r3, #1
 8003ddc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003de0:	9314      	str	r3, [sp, #80]	; 0x50
 8003de2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003de4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003de6:	6010      	str	r0, [r2, #0]
 8003de8:	3301      	adds	r3, #1
 8003dea:	4459      	add	r1, fp
 8003dec:	2b07      	cmp	r3, #7
 8003dee:	912c      	str	r1, [sp, #176]	; 0xb0
 8003df0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003df4:	932b      	str	r3, [sp, #172]	; 0xac
 8003df6:	dc68      	bgt.n	8003eca <_vfprintf_r+0x15c2>
 8003df8:	3208      	adds	r2, #8
 8003dfa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003dfc:	f898 3000 	ldrb.w	r3, [r8]
 8003e00:	1bc5      	subs	r5, r0, r7
 8003e02:	429d      	cmp	r5, r3
 8003e04:	bfa8      	it	ge
 8003e06:	461d      	movge	r5, r3
 8003e08:	2d00      	cmp	r5, #0
 8003e0a:	dd0b      	ble.n	8003e24 <_vfprintf_r+0x151c>
 8003e0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e0e:	6017      	str	r7, [r2, #0]
 8003e10:	3301      	adds	r3, #1
 8003e12:	4429      	add	r1, r5
 8003e14:	2b07      	cmp	r3, #7
 8003e16:	912c      	str	r1, [sp, #176]	; 0xb0
 8003e18:	6055      	str	r5, [r2, #4]
 8003e1a:	932b      	str	r3, [sp, #172]	; 0xac
 8003e1c:	dc5e      	bgt.n	8003edc <_vfprintf_r+0x15d4>
 8003e1e:	f898 3000 	ldrb.w	r3, [r8]
 8003e22:	3208      	adds	r2, #8
 8003e24:	2d00      	cmp	r5, #0
 8003e26:	bfac      	ite	ge
 8003e28:	1b5d      	subge	r5, r3, r5
 8003e2a:	461d      	movlt	r5, r3
 8003e2c:	2d00      	cmp	r5, #0
 8003e2e:	dd26      	ble.n	8003e7e <_vfprintf_r+0x1576>
 8003e30:	2d10      	cmp	r5, #16
 8003e32:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003e34:	dd3c      	ble.n	8003eb0 <_vfprintf_r+0x15a8>
 8003e36:	2410      	movs	r4, #16
 8003e38:	e003      	b.n	8003e42 <_vfprintf_r+0x153a>
 8003e3a:	3208      	adds	r2, #8
 8003e3c:	3d10      	subs	r5, #16
 8003e3e:	2d10      	cmp	r5, #16
 8003e40:	dd36      	ble.n	8003eb0 <_vfprintf_r+0x15a8>
 8003e42:	3001      	adds	r0, #1
 8003e44:	3110      	adds	r1, #16
 8003e46:	2807      	cmp	r0, #7
 8003e48:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003e4c:	e9c2 6400 	strd	r6, r4, [r2]
 8003e50:	ddf3      	ble.n	8003e3a <_vfprintf_r+0x1532>
 8003e52:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e54:	4651      	mov	r1, sl
 8003e56:	4648      	mov	r0, r9
 8003e58:	f003 f884 	bl	8006f64 <__sprint_r>
 8003e5c:	2800      	cmp	r0, #0
 8003e5e:	d150      	bne.n	8003f02 <_vfprintf_r+0x15fa>
 8003e60:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003e64:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e66:	e7e9      	b.n	8003e3c <_vfprintf_r+0x1534>
 8003e68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e6a:	4651      	mov	r1, sl
 8003e6c:	4648      	mov	r0, r9
 8003e6e:	f003 f879 	bl	8006f64 <__sprint_r>
 8003e72:	2800      	cmp	r0, #0
 8003e74:	d145      	bne.n	8003f02 <_vfprintf_r+0x15fa>
 8003e76:	f898 3000 	ldrb.w	r3, [r8]
 8003e7a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e7c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e7e:	441f      	add	r7, r3
 8003e80:	e7a4      	b.n	8003dcc <_vfprintf_r+0x14c4>
 8003e82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e84:	3b01      	subs	r3, #1
 8003e86:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e88:	e7ab      	b.n	8003de2 <_vfprintf_r+0x14da>
 8003e8a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e8c:	2b00      	cmp	r3, #0
 8003e8e:	d1f8      	bne.n	8003e82 <_vfprintf_r+0x157a>
 8003e90:	46b9      	mov	r9, r7
 8003e92:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e94:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003e96:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003e9a:	18fb      	adds	r3, r7, r3
 8003e9c:	4599      	cmp	r9, r3
 8003e9e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ea2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ea6:	4693      	mov	fp, r2
 8003ea8:	460c      	mov	r4, r1
 8003eaa:	bf28      	it	cs
 8003eac:	4699      	movcs	r9, r3
 8003eae:	e424      	b.n	80036fa <_vfprintf_r+0xdf2>
 8003eb0:	3001      	adds	r0, #1
 8003eb2:	4429      	add	r1, r5
 8003eb4:	2807      	cmp	r0, #7
 8003eb6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003eba:	e9c2 6500 	strd	r6, r5, [r2]
 8003ebe:	dcd3      	bgt.n	8003e68 <_vfprintf_r+0x1560>
 8003ec0:	f898 3000 	ldrb.w	r3, [r8]
 8003ec4:	3208      	adds	r2, #8
 8003ec6:	441f      	add	r7, r3
 8003ec8:	e780      	b.n	8003dcc <_vfprintf_r+0x14c4>
 8003eca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ecc:	4651      	mov	r1, sl
 8003ece:	4648      	mov	r0, r9
 8003ed0:	f003 f848 	bl	8006f64 <__sprint_r>
 8003ed4:	b9a8      	cbnz	r0, 8003f02 <_vfprintf_r+0x15fa>
 8003ed6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ed8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003eda:	e78e      	b.n	8003dfa <_vfprintf_r+0x14f2>
 8003edc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ede:	4651      	mov	r1, sl
 8003ee0:	4648      	mov	r0, r9
 8003ee2:	f003 f83f 	bl	8006f64 <__sprint_r>
 8003ee6:	b960      	cbnz	r0, 8003f02 <_vfprintf_r+0x15fa>
 8003ee8:	f898 3000 	ldrb.w	r3, [r8]
 8003eec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003eee:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ef0:	e798      	b.n	8003e24 <_vfprintf_r+0x151c>
 8003ef2:	4638      	mov	r0, r7
 8003ef4:	f7fd f824 	bl	8000f40 <strlen>
 8003ef8:	46a9      	mov	r9, r5
 8003efa:	4603      	mov	r3, r0
 8003efc:	9009      	str	r0, [sp, #36]	; 0x24
 8003efe:	f7ff b8f4 	b.w	80030ea <_vfprintf_r+0x7e2>
 8003f02:	46d1      	mov	r9, sl
 8003f04:	f7ff ba7a 	b.w	80033fc <_vfprintf_r+0xaf4>
 8003f08:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f0a:	4619      	mov	r1, r3
 8003f0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f0e:	4299      	cmp	r1, r3
 8003f10:	f300 8082 	bgt.w	8004018 <_vfprintf_r+0x1710>
 8003f14:	07c4      	lsls	r4, r0, #31
 8003f16:	f140 816b 	bpl.w	80041f0 <_vfprintf_r+0x18e8>
 8003f1a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f1c:	4413      	add	r3, r2
 8003f1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f20:	0541      	lsls	r1, r0, #21
 8003f22:	d503      	bpl.n	8003f2c <_vfprintf_r+0x1624>
 8003f24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f26:	2b00      	cmp	r3, #0
 8003f28:	f300 80e6 	bgt.w	80040f8 <_vfprintf_r+0x17f0>
 8003f2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f2e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f32:	9304      	str	r3, [sp, #16]
 8003f34:	2667      	movs	r6, #103	; 0x67
 8003f36:	2300      	movs	r3, #0
 8003f38:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f3a:	9314      	str	r3, [sp, #80]	; 0x50
 8003f3c:	e586      	b.n	8003a4c <_vfprintf_r+0x1144>
 8003f3e:	222d      	movs	r2, #45	; 0x2d
 8003f40:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003f44:	f04f 0900 	mov.w	r9, #0
 8003f48:	f7fe be6c 	b.w	8002c24 <_vfprintf_r+0x31c>
 8003f4c:	46a1      	mov	r9, r4
 8003f4e:	f7ff ba55 	b.w	80033fc <_vfprintf_r+0xaf4>
 8003f52:	900a      	str	r0, [sp, #40]	; 0x28
 8003f54:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003f58:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003f5c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003f5e:	232d      	movs	r3, #45	; 0x2d
 8003f60:	911e      	str	r1, [sp, #120]	; 0x78
 8003f62:	930b      	str	r3, [sp, #44]	; 0x2c
 8003f64:	e619      	b.n	8003b9a <_vfprintf_r+0x1292>
 8003f66:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f68:	9328      	str	r3, [sp, #160]	; 0xa0
 8003f6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f6c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003f70:	7bd9      	ldrb	r1, [r3, #15]
 8003f72:	4291      	cmp	r1, r2
 8003f74:	462b      	mov	r3, r5
 8003f76:	d109      	bne.n	8003f8c <_vfprintf_r+0x1684>
 8003f78:	2030      	movs	r0, #48	; 0x30
 8003f7a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003f7e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f80:	1e5a      	subs	r2, r3, #1
 8003f82:	9228      	str	r2, [sp, #160]	; 0xa0
 8003f84:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003f88:	4291      	cmp	r1, r2
 8003f8a:	d0f6      	beq.n	8003f7a <_vfprintf_r+0x1672>
 8003f8c:	2a39      	cmp	r2, #57	; 0x39
 8003f8e:	bf0b      	itete	eq
 8003f90:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003f92:	3201      	addne	r2, #1
 8003f94:	7a92      	ldrbeq	r2, [r2, #10]
 8003f96:	b2d2      	uxtbne	r2, r2
 8003f98:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003f9c:	e682      	b.n	8003ca4 <_vfprintf_r+0x139c>
 8003f9e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003fa2:	f43f ad9f 	beq.w	8003ae4 <_vfprintf_r+0x11dc>
 8003fa6:	9a05      	ldr	r2, [sp, #20]
 8003fa8:	701a      	strb	r2, [r3, #0]
 8003faa:	4657      	mov	r7, sl
 8003fac:	f7fe bf52 	b.w	8002e54 <_vfprintf_r+0x54c>
 8003fb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fb2:	9907      	ldr	r1, [sp, #28]
 8003fb4:	9803      	ldr	r0, [sp, #12]
 8003fb6:	f002 ffd5 	bl	8006f64 <__sprint_r>
 8003fba:	2800      	cmp	r0, #0
 8003fbc:	f47f aa1c 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8003fc0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003fc2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003fc6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fca:	e571      	b.n	8003ab0 <_vfprintf_r+0x11a8>
 8003fcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fce:	2b00      	cmp	r3, #0
 8003fd0:	f340 8164 	ble.w	800429c <_vfprintf_r+0x1994>
 8003fd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fd6:	f1b9 0f00 	cmp.w	r9, #0
 8003fda:	f040 8103 	bne.w	80041e4 <_vfprintf_r+0x18dc>
 8003fde:	07c6      	lsls	r6, r0, #31
 8003fe0:	f100 8100 	bmi.w	80041e4 <_vfprintf_r+0x18dc>
 8003fe4:	9309      	str	r3, [sp, #36]	; 0x24
 8003fe6:	2666      	movs	r6, #102	; 0x66
 8003fe8:	0543      	lsls	r3, r0, #21
 8003fea:	f100 8086 	bmi.w	80040fa <_vfprintf_r+0x17f2>
 8003fee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ff0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ff4:	9304      	str	r3, [sp, #16]
 8003ff6:	e79e      	b.n	8003f36 <_vfprintf_r+0x162e>
 8003ff8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ffa:	9907      	ldr	r1, [sp, #28]
 8003ffc:	9803      	ldr	r0, [sp, #12]
 8003ffe:	f002 ffb1 	bl	8006f64 <__sprint_r>
 8004002:	2800      	cmp	r0, #0
 8004004:	f47f a9f8 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8004008:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800400a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800400c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800400e:	1ad3      	subs	r3, r2, r3
 8004010:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004014:	f7ff bb90 	b.w	8003738 <_vfprintf_r+0xe30>
 8004018:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800401a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800401c:	4413      	add	r3, r2
 800401e:	9309      	str	r3, [sp, #36]	; 0x24
 8004020:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004022:	2b00      	cmp	r3, #0
 8004024:	f340 8149 	ble.w	80042ba <_vfprintf_r+0x19b2>
 8004028:	2667      	movs	r6, #103	; 0x67
 800402a:	e7dd      	b.n	8003fe8 <_vfprintf_r+0x16e0>
 800402c:	2330      	movs	r3, #48	; 0x30
 800402e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004032:	2358      	movs	r3, #88	; 0x58
 8004034:	e595      	b.n	8003b62 <_vfprintf_r+0x125a>
 8004036:	9803      	ldr	r0, [sp, #12]
 8004038:	aa2a      	add	r2, sp, #168	; 0xa8
 800403a:	4649      	mov	r1, r9
 800403c:	f002 ff92 	bl	8006f64 <__sprint_r>
 8004040:	2800      	cmp	r0, #0
 8004042:	f47f a9e0 	bne.w	8003406 <_vfprintf_r+0xafe>
 8004046:	f7fe bf0f 	b.w	8002e68 <_vfprintf_r+0x560>
 800404a:	a824      	add	r0, sp, #144	; 0x90
 800404c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004050:	f002 fe90 	bl	8006d74 <frexp>
 8004054:	2200      	movs	r2, #0
 8004056:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800405a:	ec51 0b10 	vmov	r0, r1, d0
 800405e:	f7fc fa8b 	bl	8000578 <__aeabi_dmul>
 8004062:	2200      	movs	r2, #0
 8004064:	2300      	movs	r3, #0
 8004066:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800406a:	f7fc fced 	bl	8000a48 <__aeabi_dcmpeq>
 800406e:	b108      	cbz	r0, 8004074 <_vfprintf_r+0x176c>
 8004070:	2301      	movs	r3, #1
 8004072:	9324      	str	r3, [sp, #144]	; 0x90
 8004074:	4b02      	ldr	r3, [pc, #8]	; (8004080 <_vfprintf_r+0x1778>)
 8004076:	9309      	str	r3, [sp, #36]	; 0x24
 8004078:	e5ac      	b.n	8003bd4 <_vfprintf_r+0x12cc>
 800407a:	bf00      	nop
 800407c:	080077a0 	.word	0x080077a0
 8004080:	0800775c 	.word	0x0800775c
 8004084:	425d      	negs	r5, r3
 8004086:	3310      	adds	r3, #16
 8004088:	4bb9      	ldr	r3, [pc, #740]	; (8004370 <_vfprintf_r+0x1a68>)
 800408a:	f280 8097 	bge.w	80041bc <_vfprintf_r+0x18b4>
 800408e:	4619      	mov	r1, r3
 8004090:	2610      	movs	r6, #16
 8004092:	4623      	mov	r3, r4
 8004094:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004098:	460c      	mov	r4, r1
 800409a:	e005      	b.n	80040a8 <_vfprintf_r+0x17a0>
 800409c:	f10b 0b08 	add.w	fp, fp, #8
 80040a0:	3d10      	subs	r5, #16
 80040a2:	2d10      	cmp	r5, #16
 80040a4:	f340 8087 	ble.w	80041b6 <_vfprintf_r+0x18ae>
 80040a8:	3201      	adds	r2, #1
 80040aa:	3310      	adds	r3, #16
 80040ac:	2a07      	cmp	r2, #7
 80040ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80040b2:	e9cb 4600 	strd	r4, r6, [fp]
 80040b6:	ddf1      	ble.n	800409c <_vfprintf_r+0x1794>
 80040b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040ba:	9907      	ldr	r1, [sp, #28]
 80040bc:	4648      	mov	r0, r9
 80040be:	f002 ff51 	bl	8006f64 <__sprint_r>
 80040c2:	2800      	cmp	r0, #0
 80040c4:	f47f a998 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 80040c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80040cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040d0:	e7e6      	b.n	80040a0 <_vfprintf_r+0x1798>
 80040d2:	f109 0101 	add.w	r1, r9, #1
 80040d6:	9803      	ldr	r0, [sp, #12]
 80040d8:	f001 fe80 	bl	8005ddc <_malloc_r>
 80040dc:	4607      	mov	r7, r0
 80040de:	2800      	cmp	r0, #0
 80040e0:	f000 813b 	beq.w	800435a <_vfprintf_r+0x1a52>
 80040e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80040e8:	930e      	str	r3, [sp, #56]	; 0x38
 80040ea:	f026 0320 	bic.w	r3, r6, #32
 80040ee:	9304      	str	r3, [sp, #16]
 80040f0:	46a0      	mov	r8, r4
 80040f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80040f4:	900a      	str	r0, [sp, #40]	; 0x28
 80040f6:	e547      	b.n	8003b88 <_vfprintf_r+0x1280>
 80040f8:	2667      	movs	r6, #103	; 0x67
 80040fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80040fc:	2200      	movs	r2, #0
 80040fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8004100:	9214      	str	r2, [sp, #80]	; 0x50
 8004102:	7803      	ldrb	r3, [r0, #0]
 8004104:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004106:	2bff      	cmp	r3, #255	; 0xff
 8004108:	d00c      	beq.n	8004124 <_vfprintf_r+0x181c>
 800410a:	4293      	cmp	r3, r2
 800410c:	da0a      	bge.n	8004124 <_vfprintf_r+0x181c>
 800410e:	7841      	ldrb	r1, [r0, #1]
 8004110:	1ad2      	subs	r2, r2, r3
 8004112:	b1a9      	cbz	r1, 8004140 <_vfprintf_r+0x1838>
 8004114:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004116:	3301      	adds	r3, #1
 8004118:	9314      	str	r3, [sp, #80]	; 0x50
 800411a:	460b      	mov	r3, r1
 800411c:	2bff      	cmp	r3, #255	; 0xff
 800411e:	f100 0001 	add.w	r0, r0, #1
 8004122:	d1f2      	bne.n	800410a <_vfprintf_r+0x1802>
 8004124:	9211      	str	r2, [sp, #68]	; 0x44
 8004126:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004128:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800412a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800412c:	901a      	str	r0, [sp, #104]	; 0x68
 800412e:	4413      	add	r3, r2
 8004130:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004132:	fb02 1303 	mla	r3, r2, r3, r1
 8004136:	9309      	str	r3, [sp, #36]	; 0x24
 8004138:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800413c:	9304      	str	r3, [sp, #16]
 800413e:	e485      	b.n	8003a4c <_vfprintf_r+0x1144>
 8004140:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004142:	3101      	adds	r1, #1
 8004144:	910f      	str	r1, [sp, #60]	; 0x3c
 8004146:	e7de      	b.n	8004106 <_vfprintf_r+0x17fe>
 8004148:	aa28      	add	r2, sp, #160	; 0xa0
 800414a:	ab25      	add	r3, sp, #148	; 0x94
 800414c:	e9cd 3200 	strd	r3, r2, [sp]
 8004150:	2103      	movs	r1, #3
 8004152:	ab24      	add	r3, sp, #144	; 0x90
 8004154:	464a      	mov	r2, r9
 8004156:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800415a:	9803      	ldr	r0, [sp, #12]
 800415c:	f000 fa5c 	bl	8004618 <_dtoa_r>
 8004160:	464d      	mov	r5, r9
 8004162:	4607      	mov	r7, r0
 8004164:	eb00 0409 	add.w	r4, r0, r9
 8004168:	783b      	ldrb	r3, [r7, #0]
 800416a:	2b30      	cmp	r3, #48	; 0x30
 800416c:	f000 80be 	beq.w	80042ec <_vfprintf_r+0x19e4>
 8004170:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004172:	442c      	add	r4, r5
 8004174:	2200      	movs	r2, #0
 8004176:	2300      	movs	r3, #0
 8004178:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800417c:	f7fc fc64 	bl	8000a48 <__aeabi_dcmpeq>
 8004180:	b108      	cbz	r0, 8004186 <_vfprintf_r+0x187e>
 8004182:	4623      	mov	r3, r4
 8004184:	e413      	b.n	80039ae <_vfprintf_r+0x10a6>
 8004186:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004188:	42a3      	cmp	r3, r4
 800418a:	f4bf ac10 	bcs.w	80039ae <_vfprintf_r+0x10a6>
 800418e:	2130      	movs	r1, #48	; 0x30
 8004190:	1c5a      	adds	r2, r3, #1
 8004192:	9228      	str	r2, [sp, #160]	; 0xa0
 8004194:	7019      	strb	r1, [r3, #0]
 8004196:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004198:	429c      	cmp	r4, r3
 800419a:	d8f9      	bhi.n	8004190 <_vfprintf_r+0x1888>
 800419c:	e407      	b.n	80039ae <_vfprintf_r+0x10a6>
 800419e:	197c      	adds	r4, r7, r5
 80041a0:	e7e8      	b.n	8004174 <_vfprintf_r+0x186c>
 80041a2:	f1b9 0f00 	cmp.w	r9, #0
 80041a6:	f000 8092 	beq.w	80042ce <_vfprintf_r+0x19c6>
 80041aa:	900a      	str	r0, [sp, #40]	; 0x28
 80041ac:	e4ec      	b.n	8003b88 <_vfprintf_r+0x1280>
 80041ae:	900a      	str	r0, [sp, #40]	; 0x28
 80041b0:	f04f 0906 	mov.w	r9, #6
 80041b4:	e4e8      	b.n	8003b88 <_vfprintf_r+0x1280>
 80041b6:	4621      	mov	r1, r4
 80041b8:	461c      	mov	r4, r3
 80041ba:	460b      	mov	r3, r1
 80041bc:	3201      	adds	r2, #1
 80041be:	442c      	add	r4, r5
 80041c0:	2a07      	cmp	r2, #7
 80041c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80041c6:	e9cb 3500 	strd	r3, r5, [fp]
 80041ca:	f300 80a9 	bgt.w	8004320 <_vfprintf_r+0x1a18>
 80041ce:	f10b 0b08 	add.w	fp, fp, #8
 80041d2:	e470      	b.n	8003ab6 <_vfprintf_r+0x11ae>
 80041d4:	469a      	mov	sl, r3
 80041d6:	f7ff bb37 	b.w	8003848 <_vfprintf_r+0xf40>
 80041da:	2301      	movs	r3, #1
 80041dc:	9324      	str	r3, [sp, #144]	; 0x90
 80041de:	4b65      	ldr	r3, [pc, #404]	; (8004374 <_vfprintf_r+0x1a6c>)
 80041e0:	9309      	str	r3, [sp, #36]	; 0x24
 80041e2:	e4f7      	b.n	8003bd4 <_vfprintf_r+0x12cc>
 80041e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80041e6:	4413      	add	r3, r2
 80041e8:	444b      	add	r3, r9
 80041ea:	9309      	str	r3, [sp, #36]	; 0x24
 80041ec:	2666      	movs	r6, #102	; 0x66
 80041ee:	e6fb      	b.n	8003fe8 <_vfprintf_r+0x16e0>
 80041f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80041f2:	9309      	str	r3, [sp, #36]	; 0x24
 80041f4:	e694      	b.n	8003f20 <_vfprintf_r+0x1618>
 80041f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80041fa:	4664      	mov	r4, ip
 80041fc:	4d5e      	ldr	r5, [pc, #376]	; (8004378 <_vfprintf_r+0x1a70>)
 80041fe:	e000      	b.n	8004202 <_vfprintf_r+0x18fa>
 8004200:	4614      	mov	r4, r2
 8004202:	fba5 1203 	umull	r1, r2, r5, r3
 8004206:	08d2      	lsrs	r2, r2, #3
 8004208:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800420c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004210:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004214:	4613      	mov	r3, r2
 8004216:	2b09      	cmp	r3, #9
 8004218:	f804 1c01 	strb.w	r1, [r4, #-1]
 800421c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004220:	dcee      	bgt.n	8004200 <_vfprintf_r+0x18f8>
 8004222:	3330      	adds	r3, #48	; 0x30
 8004224:	3c02      	subs	r4, #2
 8004226:	b2db      	uxtb	r3, r3
 8004228:	45a4      	cmp	ip, r4
 800422a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800422e:	f240 8090 	bls.w	8004352 <_vfprintf_r+0x1a4a>
 8004232:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004236:	4611      	mov	r1, r2
 8004238:	e001      	b.n	800423e <_vfprintf_r+0x1936>
 800423a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800423e:	f804 3b01 	strb.w	r3, [r4], #1
 8004242:	458c      	cmp	ip, r1
 8004244:	d1f9      	bne.n	800423a <_vfprintf_r+0x1932>
 8004246:	ab2a      	add	r3, sp, #168	; 0xa8
 8004248:	1a9b      	subs	r3, r3, r2
 800424a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800424e:	4413      	add	r3, r2
 8004250:	f7ff bbe3 	b.w	8003a1a <_vfprintf_r+0x1112>
 8004254:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004256:	4f49      	ldr	r7, [pc, #292]	; (800437c <_vfprintf_r+0x1a74>)
 8004258:	2b00      	cmp	r3, #0
 800425a:	bfb6      	itet	lt
 800425c:	222d      	movlt	r2, #45	; 0x2d
 800425e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004262:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004266:	4b46      	ldr	r3, [pc, #280]	; (8004380 <_vfprintf_r+0x1a78>)
 8004268:	f7fe bf02 	b.w	8003070 <_vfprintf_r+0x768>
 800426c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004270:	f7ff b8c9 	b.w	8003406 <_vfprintf_r+0xafe>
 8004274:	aa28      	add	r2, sp, #160	; 0xa0
 8004276:	ab25      	add	r3, sp, #148	; 0x94
 8004278:	e9cd 3200 	strd	r3, r2, [sp]
 800427c:	2103      	movs	r1, #3
 800427e:	ab24      	add	r3, sp, #144	; 0x90
 8004280:	464a      	mov	r2, r9
 8004282:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004286:	9803      	ldr	r0, [sp, #12]
 8004288:	f000 f9c6 	bl	8004618 <_dtoa_r>
 800428c:	464d      	mov	r5, r9
 800428e:	4607      	mov	r7, r0
 8004290:	2e46      	cmp	r6, #70	; 0x46
 8004292:	eb07 0405 	add.w	r4, r7, r5
 8004296:	f43f af67 	beq.w	8004168 <_vfprintf_r+0x1860>
 800429a:	e76b      	b.n	8004174 <_vfprintf_r+0x186c>
 800429c:	f1b9 0f00 	cmp.w	r9, #0
 80042a0:	d131      	bne.n	8004306 <_vfprintf_r+0x19fe>
 80042a2:	07c5      	lsls	r5, r0, #31
 80042a4:	d42f      	bmi.n	8004306 <_vfprintf_r+0x19fe>
 80042a6:	2301      	movs	r3, #1
 80042a8:	9304      	str	r3, [sp, #16]
 80042aa:	9309      	str	r3, [sp, #36]	; 0x24
 80042ac:	2666      	movs	r6, #102	; 0x66
 80042ae:	e642      	b.n	8003f36 <_vfprintf_r+0x162e>
 80042b0:	07c3      	lsls	r3, r0, #31
 80042b2:	f57f abbf 	bpl.w	8003a34 <_vfprintf_r+0x112c>
 80042b6:	f7ff bbb9 	b.w	8003a2c <_vfprintf_r+0x1124>
 80042ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80042bc:	f1c3 0301 	rsb	r3, r3, #1
 80042c0:	441a      	add	r2, r3
 80042c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80042c6:	9209      	str	r2, [sp, #36]	; 0x24
 80042c8:	9304      	str	r3, [sp, #16]
 80042ca:	2667      	movs	r6, #103	; 0x67
 80042cc:	e633      	b.n	8003f36 <_vfprintf_r+0x162e>
 80042ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80042d2:	f04f 0901 	mov.w	r9, #1
 80042d6:	e457      	b.n	8003b88 <_vfprintf_r+0x1280>
 80042d8:	465a      	mov	r2, fp
 80042da:	e511      	b.n	8003d00 <_vfprintf_r+0x13f8>
 80042dc:	2e47      	cmp	r6, #71	; 0x47
 80042de:	f47f af5e 	bne.w	800419e <_vfprintf_r+0x1896>
 80042e2:	f018 0f01 	tst.w	r8, #1
 80042e6:	f43f ab61 	beq.w	80039ac <_vfprintf_r+0x10a4>
 80042ea:	e7d1      	b.n	8004290 <_vfprintf_r+0x1988>
 80042ec:	2200      	movs	r2, #0
 80042ee:	2300      	movs	r3, #0
 80042f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80042f4:	f7fc fba8 	bl	8000a48 <__aeabi_dcmpeq>
 80042f8:	2800      	cmp	r0, #0
 80042fa:	f47f af39 	bne.w	8004170 <_vfprintf_r+0x1868>
 80042fe:	f1c5 0501 	rsb	r5, r5, #1
 8004302:	9524      	str	r5, [sp, #144]	; 0x90
 8004304:	e735      	b.n	8004172 <_vfprintf_r+0x186a>
 8004306:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004308:	3301      	adds	r3, #1
 800430a:	444b      	add	r3, r9
 800430c:	9309      	str	r3, [sp, #36]	; 0x24
 800430e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004312:	9304      	str	r3, [sp, #16]
 8004314:	2666      	movs	r6, #102	; 0x66
 8004316:	e60e      	b.n	8003f36 <_vfprintf_r+0x162e>
 8004318:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800431c:	f7ff bb7a 	b.w	8003a14 <_vfprintf_r+0x110c>
 8004320:	aa2a      	add	r2, sp, #168	; 0xa8
 8004322:	9907      	ldr	r1, [sp, #28]
 8004324:	9803      	ldr	r0, [sp, #12]
 8004326:	f002 fe1d 	bl	8006f64 <__sprint_r>
 800432a:	2800      	cmp	r0, #0
 800432c:	f47f a864 	bne.w	80033f8 <_vfprintf_r+0xaf0>
 8004330:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004334:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004338:	f7ff bbbd 	b.w	8003ab6 <_vfprintf_r+0x11ae>
 800433c:	9908      	ldr	r1, [sp, #32]
 800433e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004342:	680b      	ldr	r3, [r1, #0]
 8004344:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004348:	1d0b      	adds	r3, r1, #4
 800434a:	4692      	mov	sl, r2
 800434c:	9308      	str	r3, [sp, #32]
 800434e:	f7fe bb59 	b.w	8002a04 <_vfprintf_r+0xfc>
 8004352:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004356:	f7ff bb60 	b.w	8003a1a <_vfprintf_r+0x1112>
 800435a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800435e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004362:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004366:	f8a9 300c 	strh.w	r3, [r9, #12]
 800436a:	f7ff b84c 	b.w	8003406 <_vfprintf_r+0xafe>
 800436e:	bf00      	nop
 8004370:	080077a0 	.word	0x080077a0
 8004374:	08007770 	.word	0x08007770
 8004378:	cccccccd 	.word	0xcccccccd
 800437c:	08007758 	.word	0x08007758
 8004380:	08007754 	.word	0x08007754

08004384 <__sbprintf>:
 8004384:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004388:	460c      	mov	r4, r1
 800438a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800438e:	8989      	ldrh	r1, [r1, #12]
 8004390:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004392:	89e5      	ldrh	r5, [r4, #14]
 8004394:	9619      	str	r6, [sp, #100]	; 0x64
 8004396:	f021 0102 	bic.w	r1, r1, #2
 800439a:	4606      	mov	r6, r0
 800439c:	69e0      	ldr	r0, [r4, #28]
 800439e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80043a2:	4617      	mov	r7, r2
 80043a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80043a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80043aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80043ae:	4698      	mov	r8, r3
 80043b0:	ad1a      	add	r5, sp, #104	; 0x68
 80043b2:	2300      	movs	r3, #0
 80043b4:	9007      	str	r0, [sp, #28]
 80043b6:	a816      	add	r0, sp, #88	; 0x58
 80043b8:	9209      	str	r2, [sp, #36]	; 0x24
 80043ba:	9306      	str	r3, [sp, #24]
 80043bc:	9500      	str	r5, [sp, #0]
 80043be:	9504      	str	r5, [sp, #16]
 80043c0:	9102      	str	r1, [sp, #8]
 80043c2:	9105      	str	r1, [sp, #20]
 80043c4:	f001 fc8a 	bl	8005cdc <__retarget_lock_init_recursive>
 80043c8:	4643      	mov	r3, r8
 80043ca:	463a      	mov	r2, r7
 80043cc:	4669      	mov	r1, sp
 80043ce:	4630      	mov	r0, r6
 80043d0:	f7fe fa9a 	bl	8002908 <_vfprintf_r>
 80043d4:	1e05      	subs	r5, r0, #0
 80043d6:	db07      	blt.n	80043e8 <__sbprintf+0x64>
 80043d8:	4630      	mov	r0, r6
 80043da:	4669      	mov	r1, sp
 80043dc:	f001 f8d6 	bl	800558c <_fflush_r>
 80043e0:	2800      	cmp	r0, #0
 80043e2:	bf18      	it	ne
 80043e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80043e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80043ec:	065b      	lsls	r3, r3, #25
 80043ee:	d503      	bpl.n	80043f8 <__sbprintf+0x74>
 80043f0:	89a3      	ldrh	r3, [r4, #12]
 80043f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80043f6:	81a3      	strh	r3, [r4, #12]
 80043f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80043fa:	f001 fc71 	bl	8005ce0 <__retarget_lock_close_recursive>
 80043fe:	4628      	mov	r0, r5
 8004400:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004404:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004408 <__swsetup_r>:
 8004408:	b538      	push	{r3, r4, r5, lr}
 800440a:	4b31      	ldr	r3, [pc, #196]	; (80044d0 <__swsetup_r+0xc8>)
 800440c:	681b      	ldr	r3, [r3, #0]
 800440e:	4605      	mov	r5, r0
 8004410:	460c      	mov	r4, r1
 8004412:	b113      	cbz	r3, 800441a <__swsetup_r+0x12>
 8004414:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004416:	2a00      	cmp	r2, #0
 8004418:	d03a      	beq.n	8004490 <__swsetup_r+0x88>
 800441a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800441e:	b293      	uxth	r3, r2
 8004420:	0718      	lsls	r0, r3, #28
 8004422:	d50c      	bpl.n	800443e <__swsetup_r+0x36>
 8004424:	6920      	ldr	r0, [r4, #16]
 8004426:	b1a8      	cbz	r0, 8004454 <__swsetup_r+0x4c>
 8004428:	f013 0201 	ands.w	r2, r3, #1
 800442c:	d020      	beq.n	8004470 <__swsetup_r+0x68>
 800442e:	6963      	ldr	r3, [r4, #20]
 8004430:	2200      	movs	r2, #0
 8004432:	425b      	negs	r3, r3
 8004434:	61a3      	str	r3, [r4, #24]
 8004436:	60a2      	str	r2, [r4, #8]
 8004438:	b300      	cbz	r0, 800447c <__swsetup_r+0x74>
 800443a:	2000      	movs	r0, #0
 800443c:	bd38      	pop	{r3, r4, r5, pc}
 800443e:	06d9      	lsls	r1, r3, #27
 8004440:	d53e      	bpl.n	80044c0 <__swsetup_r+0xb8>
 8004442:	0758      	lsls	r0, r3, #29
 8004444:	d428      	bmi.n	8004498 <__swsetup_r+0x90>
 8004446:	6920      	ldr	r0, [r4, #16]
 8004448:	f042 0308 	orr.w	r3, r2, #8
 800444c:	81a3      	strh	r3, [r4, #12]
 800444e:	b29b      	uxth	r3, r3
 8004450:	2800      	cmp	r0, #0
 8004452:	d1e9      	bne.n	8004428 <__swsetup_r+0x20>
 8004454:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004458:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800445c:	d0e4      	beq.n	8004428 <__swsetup_r+0x20>
 800445e:	4628      	mov	r0, r5
 8004460:	4621      	mov	r1, r4
 8004462:	f001 fc71 	bl	8005d48 <__smakebuf_r>
 8004466:	89a3      	ldrh	r3, [r4, #12]
 8004468:	6920      	ldr	r0, [r4, #16]
 800446a:	f013 0201 	ands.w	r2, r3, #1
 800446e:	d1de      	bne.n	800442e <__swsetup_r+0x26>
 8004470:	0799      	lsls	r1, r3, #30
 8004472:	bf58      	it	pl
 8004474:	6962      	ldrpl	r2, [r4, #20]
 8004476:	60a2      	str	r2, [r4, #8]
 8004478:	2800      	cmp	r0, #0
 800447a:	d1de      	bne.n	800443a <__swsetup_r+0x32>
 800447c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004480:	061a      	lsls	r2, r3, #24
 8004482:	d5db      	bpl.n	800443c <__swsetup_r+0x34>
 8004484:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004488:	81a3      	strh	r3, [r4, #12]
 800448a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800448e:	bd38      	pop	{r3, r4, r5, pc}
 8004490:	4618      	mov	r0, r3
 8004492:	f001 f8d7 	bl	8005644 <__sinit>
 8004496:	e7c0      	b.n	800441a <__swsetup_r+0x12>
 8004498:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800449a:	b151      	cbz	r1, 80044b2 <__swsetup_r+0xaa>
 800449c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80044a0:	4299      	cmp	r1, r3
 80044a2:	d004      	beq.n	80044ae <__swsetup_r+0xa6>
 80044a4:	4628      	mov	r0, r5
 80044a6:	f001 f96f 	bl	8005788 <_free_r>
 80044aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80044ae:	2300      	movs	r3, #0
 80044b0:	6323      	str	r3, [r4, #48]	; 0x30
 80044b2:	2300      	movs	r3, #0
 80044b4:	6920      	ldr	r0, [r4, #16]
 80044b6:	6063      	str	r3, [r4, #4]
 80044b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80044bc:	6020      	str	r0, [r4, #0]
 80044be:	e7c3      	b.n	8004448 <__swsetup_r+0x40>
 80044c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80044c4:	2309      	movs	r3, #9
 80044c6:	602b      	str	r3, [r5, #0]
 80044c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80044cc:	81a2      	strh	r2, [r4, #12]
 80044ce:	bd38      	pop	{r3, r4, r5, pc}
 80044d0:	20000160 	.word	0x20000160

080044d4 <register_fini>:
 80044d4:	4b02      	ldr	r3, [pc, #8]	; (80044e0 <register_fini+0xc>)
 80044d6:	b113      	cbz	r3, 80044de <register_fini+0xa>
 80044d8:	4802      	ldr	r0, [pc, #8]	; (80044e4 <register_fini+0x10>)
 80044da:	f000 b805 	b.w	80044e8 <atexit>
 80044de:	4770      	bx	lr
 80044e0:	00000000 	.word	0x00000000
 80044e4:	080056b5 	.word	0x080056b5

080044e8 <atexit>:
 80044e8:	2300      	movs	r3, #0
 80044ea:	4601      	mov	r1, r0
 80044ec:	461a      	mov	r2, r3
 80044ee:	4618      	mov	r0, r3
 80044f0:	f002 bd58 	b.w	8006fa4 <__register_exitproc>

080044f4 <quorem>:
 80044f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80044f8:	6903      	ldr	r3, [r0, #16]
 80044fa:	690f      	ldr	r7, [r1, #16]
 80044fc:	42bb      	cmp	r3, r7
 80044fe:	b083      	sub	sp, #12
 8004500:	f2c0 8086 	blt.w	8004610 <quorem+0x11c>
 8004504:	3f01      	subs	r7, #1
 8004506:	f101 0914 	add.w	r9, r1, #20
 800450a:	f100 0a14 	add.w	sl, r0, #20
 800450e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004512:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004516:	00bc      	lsls	r4, r7, #2
 8004518:	3201      	adds	r2, #1
 800451a:	fbb3 f8f2 	udiv	r8, r3, r2
 800451e:	eb0a 0304 	add.w	r3, sl, r4
 8004522:	9400      	str	r4, [sp, #0]
 8004524:	eb09 0b04 	add.w	fp, r9, r4
 8004528:	9301      	str	r3, [sp, #4]
 800452a:	f1b8 0f00 	cmp.w	r8, #0
 800452e:	d038      	beq.n	80045a2 <quorem+0xae>
 8004530:	2500      	movs	r5, #0
 8004532:	462e      	mov	r6, r5
 8004534:	46ce      	mov	lr, r9
 8004536:	46d4      	mov	ip, sl
 8004538:	f85e 4b04 	ldr.w	r4, [lr], #4
 800453c:	f8dc 3000 	ldr.w	r3, [ip]
 8004540:	b2a2      	uxth	r2, r4
 8004542:	fb08 5502 	mla	r5, r8, r2, r5
 8004546:	0c22      	lsrs	r2, r4, #16
 8004548:	0c2c      	lsrs	r4, r5, #16
 800454a:	fb08 4202 	mla	r2, r8, r2, r4
 800454e:	b2ad      	uxth	r5, r5
 8004550:	1b75      	subs	r5, r6, r5
 8004552:	b296      	uxth	r6, r2
 8004554:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004558:	fa15 f383 	uxtah	r3, r5, r3
 800455c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004560:	b29b      	uxth	r3, r3
 8004562:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004566:	45f3      	cmp	fp, lr
 8004568:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800456c:	f84c 3b04 	str.w	r3, [ip], #4
 8004570:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004574:	d2e0      	bcs.n	8004538 <quorem+0x44>
 8004576:	9b00      	ldr	r3, [sp, #0]
 8004578:	f85a 3003 	ldr.w	r3, [sl, r3]
 800457c:	b98b      	cbnz	r3, 80045a2 <quorem+0xae>
 800457e:	9a01      	ldr	r2, [sp, #4]
 8004580:	1f13      	subs	r3, r2, #4
 8004582:	459a      	cmp	sl, r3
 8004584:	d20c      	bcs.n	80045a0 <quorem+0xac>
 8004586:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800458a:	b94b      	cbnz	r3, 80045a0 <quorem+0xac>
 800458c:	f1a2 0308 	sub.w	r3, r2, #8
 8004590:	e002      	b.n	8004598 <quorem+0xa4>
 8004592:	681a      	ldr	r2, [r3, #0]
 8004594:	3b04      	subs	r3, #4
 8004596:	b91a      	cbnz	r2, 80045a0 <quorem+0xac>
 8004598:	459a      	cmp	sl, r3
 800459a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800459e:	d3f8      	bcc.n	8004592 <quorem+0x9e>
 80045a0:	6107      	str	r7, [r0, #16]
 80045a2:	4604      	mov	r4, r0
 80045a4:	f002 f944 	bl	8006830 <__mcmp>
 80045a8:	2800      	cmp	r0, #0
 80045aa:	db2d      	blt.n	8004608 <quorem+0x114>
 80045ac:	f108 0801 	add.w	r8, r8, #1
 80045b0:	4655      	mov	r5, sl
 80045b2:	2300      	movs	r3, #0
 80045b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80045b8:	6828      	ldr	r0, [r5, #0]
 80045ba:	b28a      	uxth	r2, r1
 80045bc:	1a9a      	subs	r2, r3, r2
 80045be:	0c0b      	lsrs	r3, r1, #16
 80045c0:	fa12 f280 	uxtah	r2, r2, r0
 80045c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80045c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80045cc:	b292      	uxth	r2, r2
 80045ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80045d2:	45cb      	cmp	fp, r9
 80045d4:	f845 2b04 	str.w	r2, [r5], #4
 80045d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80045dc:	d2ea      	bcs.n	80045b4 <quorem+0xc0>
 80045de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80045e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80045e6:	b97a      	cbnz	r2, 8004608 <quorem+0x114>
 80045e8:	1f1a      	subs	r2, r3, #4
 80045ea:	4592      	cmp	sl, r2
 80045ec:	d20b      	bcs.n	8004606 <quorem+0x112>
 80045ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80045f2:	b942      	cbnz	r2, 8004606 <quorem+0x112>
 80045f4:	3b08      	subs	r3, #8
 80045f6:	e002      	b.n	80045fe <quorem+0x10a>
 80045f8:	681a      	ldr	r2, [r3, #0]
 80045fa:	3b04      	subs	r3, #4
 80045fc:	b91a      	cbnz	r2, 8004606 <quorem+0x112>
 80045fe:	459a      	cmp	sl, r3
 8004600:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004604:	d3f8      	bcc.n	80045f8 <quorem+0x104>
 8004606:	6127      	str	r7, [r4, #16]
 8004608:	4640      	mov	r0, r8
 800460a:	b003      	add	sp, #12
 800460c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004610:	2000      	movs	r0, #0
 8004612:	b003      	add	sp, #12
 8004614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004618 <_dtoa_r>:
 8004618:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800461c:	ec55 4b10 	vmov	r4, r5, d0
 8004620:	b09b      	sub	sp, #108	; 0x6c
 8004622:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004624:	9102      	str	r1, [sp, #8]
 8004626:	4681      	mov	r9, r0
 8004628:	9207      	str	r2, [sp, #28]
 800462a:	9305      	str	r3, [sp, #20]
 800462c:	e9cd 4500 	strd	r4, r5, [sp]
 8004630:	b156      	cbz	r6, 8004648 <_dtoa_r+0x30>
 8004632:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004634:	6072      	str	r2, [r6, #4]
 8004636:	2301      	movs	r3, #1
 8004638:	4093      	lsls	r3, r2
 800463a:	60b3      	str	r3, [r6, #8]
 800463c:	4631      	mov	r1, r6
 800463e:	f001 ff07 	bl	8006450 <_Bfree>
 8004642:	2300      	movs	r3, #0
 8004644:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004648:	f1b5 0800 	subs.w	r8, r5, #0
 800464c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800464e:	bfb4      	ite	lt
 8004650:	2301      	movlt	r3, #1
 8004652:	2300      	movge	r3, #0
 8004654:	6013      	str	r3, [r2, #0]
 8004656:	4b76      	ldr	r3, [pc, #472]	; (8004830 <_dtoa_r+0x218>)
 8004658:	bfbc      	itt	lt
 800465a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800465e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004662:	ea33 0308 	bics.w	r3, r3, r8
 8004666:	f000 80a6 	beq.w	80047b6 <_dtoa_r+0x19e>
 800466a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800466e:	2200      	movs	r2, #0
 8004670:	2300      	movs	r3, #0
 8004672:	4630      	mov	r0, r6
 8004674:	4639      	mov	r1, r7
 8004676:	f7fc f9e7 	bl	8000a48 <__aeabi_dcmpeq>
 800467a:	4605      	mov	r5, r0
 800467c:	b178      	cbz	r0, 800469e <_dtoa_r+0x86>
 800467e:	9a05      	ldr	r2, [sp, #20]
 8004680:	2301      	movs	r3, #1
 8004682:	6013      	str	r3, [r2, #0]
 8004684:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004686:	2b00      	cmp	r3, #0
 8004688:	f000 80c0 	beq.w	800480c <_dtoa_r+0x1f4>
 800468c:	4b69      	ldr	r3, [pc, #420]	; (8004834 <_dtoa_r+0x21c>)
 800468e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004690:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004694:	6013      	str	r3, [r2, #0]
 8004696:	4658      	mov	r0, fp
 8004698:	b01b      	add	sp, #108	; 0x6c
 800469a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800469e:	aa18      	add	r2, sp, #96	; 0x60
 80046a0:	a919      	add	r1, sp, #100	; 0x64
 80046a2:	ec47 6b10 	vmov	d0, r6, r7
 80046a6:	4648      	mov	r0, r9
 80046a8:	f002 f954 	bl	8006954 <__d2b>
 80046ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80046b0:	4682      	mov	sl, r0
 80046b2:	f040 80a0 	bne.w	80047f6 <_dtoa_r+0x1de>
 80046b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80046ba:	442c      	add	r4, r5
 80046bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80046c0:	2b20      	cmp	r3, #32
 80046c2:	f340 842c 	ble.w	8004f1e <_dtoa_r+0x906>
 80046c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80046ca:	fa08 f803 	lsl.w	r8, r8, r3
 80046ce:	9b00      	ldr	r3, [sp, #0]
 80046d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80046d4:	fa23 f000 	lsr.w	r0, r3, r0
 80046d8:	ea48 0000 	orr.w	r0, r8, r0
 80046dc:	f7fb fed2 	bl	8000484 <__aeabi_ui2d>
 80046e0:	2301      	movs	r3, #1
 80046e2:	4606      	mov	r6, r0
 80046e4:	3c01      	subs	r4, #1
 80046e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80046ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80046ec:	4630      	mov	r0, r6
 80046ee:	4639      	mov	r1, r7
 80046f0:	2200      	movs	r2, #0
 80046f2:	4b51      	ldr	r3, [pc, #324]	; (8004838 <_dtoa_r+0x220>)
 80046f4:	f7fb fd88 	bl	8000208 <__aeabi_dsub>
 80046f8:	a347      	add	r3, pc, #284	; (adr r3, 8004818 <_dtoa_r+0x200>)
 80046fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046fe:	f7fb ff3b 	bl	8000578 <__aeabi_dmul>
 8004702:	a347      	add	r3, pc, #284	; (adr r3, 8004820 <_dtoa_r+0x208>)
 8004704:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004708:	f7fb fd80 	bl	800020c <__adddf3>
 800470c:	4606      	mov	r6, r0
 800470e:	4620      	mov	r0, r4
 8004710:	460f      	mov	r7, r1
 8004712:	f7fb fec7 	bl	80004a4 <__aeabi_i2d>
 8004716:	a344      	add	r3, pc, #272	; (adr r3, 8004828 <_dtoa_r+0x210>)
 8004718:	e9d3 2300 	ldrd	r2, r3, [r3]
 800471c:	f7fb ff2c 	bl	8000578 <__aeabi_dmul>
 8004720:	4602      	mov	r2, r0
 8004722:	460b      	mov	r3, r1
 8004724:	4630      	mov	r0, r6
 8004726:	4639      	mov	r1, r7
 8004728:	f7fb fd70 	bl	800020c <__adddf3>
 800472c:	4606      	mov	r6, r0
 800472e:	460f      	mov	r7, r1
 8004730:	f7fc fcc6 	bl	80010c0 <__aeabi_d2iz>
 8004734:	2200      	movs	r2, #0
 8004736:	9006      	str	r0, [sp, #24]
 8004738:	2300      	movs	r3, #0
 800473a:	4630      	mov	r0, r6
 800473c:	4639      	mov	r1, r7
 800473e:	f7fc f98d 	bl	8000a5c <__aeabi_dcmplt>
 8004742:	2800      	cmp	r0, #0
 8004744:	f040 8273 	bne.w	8004c2e <_dtoa_r+0x616>
 8004748:	9e06      	ldr	r6, [sp, #24]
 800474a:	2e16      	cmp	r6, #22
 800474c:	f200 825d 	bhi.w	8004c0a <_dtoa_r+0x5f2>
 8004750:	4b3a      	ldr	r3, [pc, #232]	; (800483c <_dtoa_r+0x224>)
 8004752:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004756:	e9d3 0100 	ldrd	r0, r1, [r3]
 800475a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800475e:	f7fc f99b 	bl	8000a98 <__aeabi_dcmpgt>
 8004762:	2800      	cmp	r0, #0
 8004764:	f000 83d7 	beq.w	8004f16 <_dtoa_r+0x8fe>
 8004768:	1e73      	subs	r3, r6, #1
 800476a:	9306      	str	r3, [sp, #24]
 800476c:	2300      	movs	r3, #0
 800476e:	930d      	str	r3, [sp, #52]	; 0x34
 8004770:	1b2c      	subs	r4, r5, r4
 8004772:	f1b4 0801 	subs.w	r8, r4, #1
 8004776:	f100 8254 	bmi.w	8004c22 <_dtoa_r+0x60a>
 800477a:	2300      	movs	r3, #0
 800477c:	9308      	str	r3, [sp, #32]
 800477e:	9b06      	ldr	r3, [sp, #24]
 8004780:	2b00      	cmp	r3, #0
 8004782:	f2c0 8245 	blt.w	8004c10 <_dtoa_r+0x5f8>
 8004786:	4498      	add	r8, r3
 8004788:	930c      	str	r3, [sp, #48]	; 0x30
 800478a:	2300      	movs	r3, #0
 800478c:	930b      	str	r3, [sp, #44]	; 0x2c
 800478e:	9b02      	ldr	r3, [sp, #8]
 8004790:	2b09      	cmp	r3, #9
 8004792:	d85b      	bhi.n	800484c <_dtoa_r+0x234>
 8004794:	2b05      	cmp	r3, #5
 8004796:	f340 83c0 	ble.w	8004f1a <_dtoa_r+0x902>
 800479a:	3b04      	subs	r3, #4
 800479c:	9302      	str	r3, [sp, #8]
 800479e:	2500      	movs	r5, #0
 80047a0:	9b02      	ldr	r3, [sp, #8]
 80047a2:	3b02      	subs	r3, #2
 80047a4:	2b03      	cmp	r3, #3
 80047a6:	f200 8498 	bhi.w	80050da <_dtoa_r+0xac2>
 80047aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80047ae:	03df      	.short	0x03df
 80047b0:	03e803bf 	.word	0x03e803bf
 80047b4:	04f5      	.short	0x04f5
 80047b6:	9a05      	ldr	r2, [sp, #20]
 80047b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80047bc:	6013      	str	r3, [r2, #0]
 80047be:	9b00      	ldr	r3, [sp, #0]
 80047c0:	b983      	cbnz	r3, 80047e4 <_dtoa_r+0x1cc>
 80047c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80047c6:	b96b      	cbnz	r3, 80047e4 <_dtoa_r+0x1cc>
 80047c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004840 <_dtoa_r+0x228>
 80047ce:	2b00      	cmp	r3, #0
 80047d0:	f43f af61 	beq.w	8004696 <_dtoa_r+0x7e>
 80047d4:	f10b 0308 	add.w	r3, fp, #8
 80047d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80047da:	4658      	mov	r0, fp
 80047dc:	6013      	str	r3, [r2, #0]
 80047de:	b01b      	add	sp, #108	; 0x6c
 80047e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004844 <_dtoa_r+0x22c>
 80047ea:	2b00      	cmp	r3, #0
 80047ec:	f43f af53 	beq.w	8004696 <_dtoa_r+0x7e>
 80047f0:	f10b 0303 	add.w	r3, fp, #3
 80047f4:	e7f0      	b.n	80047d8 <_dtoa_r+0x1c0>
 80047f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80047fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80047fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004800:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004804:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004808:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800480a:	e76f      	b.n	80046ec <_dtoa_r+0xd4>
 800480c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004848 <_dtoa_r+0x230>
 8004810:	4658      	mov	r0, fp
 8004812:	b01b      	add	sp, #108	; 0x6c
 8004814:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004818:	636f4361 	.word	0x636f4361
 800481c:	3fd287a7 	.word	0x3fd287a7
 8004820:	8b60c8b3 	.word	0x8b60c8b3
 8004824:	3fc68a28 	.word	0x3fc68a28
 8004828:	509f79fb 	.word	0x509f79fb
 800482c:	3fd34413 	.word	0x3fd34413
 8004830:	7ff00000 	.word	0x7ff00000
 8004834:	0800778d 	.word	0x0800778d
 8004838:	3ff80000 	.word	0x3ff80000
 800483c:	080077e8 	.word	0x080077e8
 8004840:	080077b0 	.word	0x080077b0
 8004844:	080077bc 	.word	0x080077bc
 8004848:	0800778c 	.word	0x0800778c
 800484c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004850:	2501      	movs	r5, #1
 8004852:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004856:	2300      	movs	r3, #0
 8004858:	9302      	str	r3, [sp, #8]
 800485a:	9307      	str	r3, [sp, #28]
 800485c:	2100      	movs	r1, #0
 800485e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004862:	940e      	str	r4, [sp, #56]	; 0x38
 8004864:	4648      	mov	r0, r9
 8004866:	f001 fdcd 	bl	8006404 <_Balloc>
 800486a:	2c0e      	cmp	r4, #14
 800486c:	4683      	mov	fp, r0
 800486e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004872:	f200 80fb 	bhi.w	8004a6c <_dtoa_r+0x454>
 8004876:	2d00      	cmp	r5, #0
 8004878:	f000 80f8 	beq.w	8004a6c <_dtoa_r+0x454>
 800487c:	ed9d 7b00 	vldr	d7, [sp]
 8004880:	9906      	ldr	r1, [sp, #24]
 8004882:	2900      	cmp	r1, #0
 8004884:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004888:	f340 83e5 	ble.w	8005056 <_dtoa_r+0xa3e>
 800488c:	4b9d      	ldr	r3, [pc, #628]	; (8004b04 <_dtoa_r+0x4ec>)
 800488e:	f001 020f 	and.w	r2, r1, #15
 8004892:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004896:	ed93 7b00 	vldr	d7, [r3]
 800489a:	110c      	asrs	r4, r1, #4
 800489c:	06e2      	lsls	r2, r4, #27
 800489e:	ed8d 7b00 	vstr	d7, [sp]
 80048a2:	f140 849e 	bpl.w	80051e2 <_dtoa_r+0xbca>
 80048a6:	4b98      	ldr	r3, [pc, #608]	; (8004b08 <_dtoa_r+0x4f0>)
 80048a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80048ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80048b0:	f7fb ff8c 	bl	80007cc <__aeabi_ddiv>
 80048b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80048b8:	f004 040f 	and.w	r4, r4, #15
 80048bc:	2603      	movs	r6, #3
 80048be:	b17c      	cbz	r4, 80048e0 <_dtoa_r+0x2c8>
 80048c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048c4:	4d90      	ldr	r5, [pc, #576]	; (8004b08 <_dtoa_r+0x4f0>)
 80048c6:	07e3      	lsls	r3, r4, #31
 80048c8:	d504      	bpl.n	80048d4 <_dtoa_r+0x2bc>
 80048ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80048ce:	f7fb fe53 	bl	8000578 <__aeabi_dmul>
 80048d2:	3601      	adds	r6, #1
 80048d4:	1064      	asrs	r4, r4, #1
 80048d6:	f105 0508 	add.w	r5, r5, #8
 80048da:	d1f4      	bne.n	80048c6 <_dtoa_r+0x2ae>
 80048dc:	e9cd 0100 	strd	r0, r1, [sp]
 80048e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80048e8:	f7fb ff70 	bl	80007cc <__aeabi_ddiv>
 80048ec:	e9cd 0100 	strd	r0, r1, [sp]
 80048f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80048f2:	b143      	cbz	r3, 8004906 <_dtoa_r+0x2ee>
 80048f4:	2200      	movs	r2, #0
 80048f6:	4b85      	ldr	r3, [pc, #532]	; (8004b0c <_dtoa_r+0x4f4>)
 80048f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048fc:	f7fc f8ae 	bl	8000a5c <__aeabi_dcmplt>
 8004900:	2800      	cmp	r0, #0
 8004902:	f040 84ff 	bne.w	8005304 <_dtoa_r+0xcec>
 8004906:	4630      	mov	r0, r6
 8004908:	f7fb fdcc 	bl	80004a4 <__aeabi_i2d>
 800490c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004910:	f7fb fe32 	bl	8000578 <__aeabi_dmul>
 8004914:	4b7e      	ldr	r3, [pc, #504]	; (8004b10 <_dtoa_r+0x4f8>)
 8004916:	2200      	movs	r2, #0
 8004918:	f7fb fc78 	bl	800020c <__adddf3>
 800491c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800491e:	4606      	mov	r6, r0
 8004920:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004924:	2b00      	cmp	r3, #0
 8004926:	f000 841c 	beq.w	8005162 <_dtoa_r+0xb4a>
 800492a:	9b06      	ldr	r3, [sp, #24]
 800492c:	9316      	str	r3, [sp, #88]	; 0x58
 800492e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004930:	9312      	str	r3, [sp, #72]	; 0x48
 8004932:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004936:	f7fc fbc3 	bl	80010c0 <__aeabi_d2iz>
 800493a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800493c:	4b71      	ldr	r3, [pc, #452]	; (8004b04 <_dtoa_r+0x4ec>)
 800493e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004942:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004946:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800494a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800494e:	f7fb fda9 	bl	80004a4 <__aeabi_i2d>
 8004952:	460b      	mov	r3, r1
 8004954:	4602      	mov	r2, r0
 8004956:	e9dd 0100 	ldrd	r0, r1, [sp]
 800495a:	e9cd 6700 	strd	r6, r7, [sp]
 800495e:	f7fb fc53 	bl	8000208 <__aeabi_dsub>
 8004962:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004964:	b2ed      	uxtb	r5, r5
 8004966:	4606      	mov	r6, r0
 8004968:	460f      	mov	r7, r1
 800496a:	f10b 0401 	add.w	r4, fp, #1
 800496e:	2b00      	cmp	r3, #0
 8004970:	f000 8458 	beq.w	8005224 <_dtoa_r+0xc0c>
 8004974:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004978:	2000      	movs	r0, #0
 800497a:	4966      	ldr	r1, [pc, #408]	; (8004b14 <_dtoa_r+0x4fc>)
 800497c:	f7fb ff26 	bl	80007cc <__aeabi_ddiv>
 8004980:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004984:	f7fb fc40 	bl	8000208 <__aeabi_dsub>
 8004988:	f88b 5000 	strb.w	r5, [fp]
 800498c:	4632      	mov	r2, r6
 800498e:	463b      	mov	r3, r7
 8004990:	e9cd 0100 	strd	r0, r1, [sp]
 8004994:	f7fc f880 	bl	8000a98 <__aeabi_dcmpgt>
 8004998:	2800      	cmp	r0, #0
 800499a:	f040 8502 	bne.w	80053a2 <_dtoa_r+0xd8a>
 800499e:	4632      	mov	r2, r6
 80049a0:	463b      	mov	r3, r7
 80049a2:	2000      	movs	r0, #0
 80049a4:	4959      	ldr	r1, [pc, #356]	; (8004b0c <_dtoa_r+0x4f4>)
 80049a6:	f7fb fc2f 	bl	8000208 <__aeabi_dsub>
 80049aa:	4602      	mov	r2, r0
 80049ac:	460b      	mov	r3, r1
 80049ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049b2:	f7fc f871 	bl	8000a98 <__aeabi_dcmpgt>
 80049b6:	2800      	cmp	r0, #0
 80049b8:	f040 84fb 	bne.w	80053b2 <_dtoa_r+0xd9a>
 80049bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80049be:	2a01      	cmp	r2, #1
 80049c0:	d050      	beq.n	8004a64 <_dtoa_r+0x44c>
 80049c2:	445a      	add	r2, fp
 80049c4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80049c8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80049cc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80049d0:	4692      	mov	sl, r2
 80049d2:	46cb      	mov	fp, r9
 80049d4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80049d8:	e00c      	b.n	80049f4 <_dtoa_r+0x3dc>
 80049da:	2000      	movs	r0, #0
 80049dc:	494b      	ldr	r1, [pc, #300]	; (8004b0c <_dtoa_r+0x4f4>)
 80049de:	f7fb fc13 	bl	8000208 <__aeabi_dsub>
 80049e2:	4642      	mov	r2, r8
 80049e4:	464b      	mov	r3, r9
 80049e6:	f7fc f839 	bl	8000a5c <__aeabi_dcmplt>
 80049ea:	2800      	cmp	r0, #0
 80049ec:	f040 84dc 	bne.w	80053a8 <_dtoa_r+0xd90>
 80049f0:	4554      	cmp	r4, sl
 80049f2:	d030      	beq.n	8004a56 <_dtoa_r+0x43e>
 80049f4:	4640      	mov	r0, r8
 80049f6:	4649      	mov	r1, r9
 80049f8:	2200      	movs	r2, #0
 80049fa:	4b47      	ldr	r3, [pc, #284]	; (8004b18 <_dtoa_r+0x500>)
 80049fc:	f7fb fdbc 	bl	8000578 <__aeabi_dmul>
 8004a00:	2200      	movs	r2, #0
 8004a02:	4b45      	ldr	r3, [pc, #276]	; (8004b18 <_dtoa_r+0x500>)
 8004a04:	4680      	mov	r8, r0
 8004a06:	4689      	mov	r9, r1
 8004a08:	4630      	mov	r0, r6
 8004a0a:	4639      	mov	r1, r7
 8004a0c:	f7fb fdb4 	bl	8000578 <__aeabi_dmul>
 8004a10:	460f      	mov	r7, r1
 8004a12:	4606      	mov	r6, r0
 8004a14:	f7fc fb54 	bl	80010c0 <__aeabi_d2iz>
 8004a18:	4605      	mov	r5, r0
 8004a1a:	f7fb fd43 	bl	80004a4 <__aeabi_i2d>
 8004a1e:	4602      	mov	r2, r0
 8004a20:	460b      	mov	r3, r1
 8004a22:	4630      	mov	r0, r6
 8004a24:	4639      	mov	r1, r7
 8004a26:	f7fb fbef 	bl	8000208 <__aeabi_dsub>
 8004a2a:	3530      	adds	r5, #48	; 0x30
 8004a2c:	b2ed      	uxtb	r5, r5
 8004a2e:	4642      	mov	r2, r8
 8004a30:	464b      	mov	r3, r9
 8004a32:	f804 5b01 	strb.w	r5, [r4], #1
 8004a36:	4606      	mov	r6, r0
 8004a38:	460f      	mov	r7, r1
 8004a3a:	f7fc f80f 	bl	8000a5c <__aeabi_dcmplt>
 8004a3e:	4632      	mov	r2, r6
 8004a40:	463b      	mov	r3, r7
 8004a42:	2800      	cmp	r0, #0
 8004a44:	d0c9      	beq.n	80049da <_dtoa_r+0x3c2>
 8004a46:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004a48:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004a4c:	9306      	str	r3, [sp, #24]
 8004a4e:	46d9      	mov	r9, fp
 8004a50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004a54:	e236      	b.n	8004ec4 <_dtoa_r+0x8ac>
 8004a56:	46d9      	mov	r9, fp
 8004a58:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004a5c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004a60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004a64:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004a68:	e9cd 3400 	strd	r3, r4, [sp]
 8004a6c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004a6e:	2b00      	cmp	r3, #0
 8004a70:	f2c0 80ae 	blt.w	8004bd0 <_dtoa_r+0x5b8>
 8004a74:	9a06      	ldr	r2, [sp, #24]
 8004a76:	2a0e      	cmp	r2, #14
 8004a78:	f300 80aa 	bgt.w	8004bd0 <_dtoa_r+0x5b8>
 8004a7c:	4b21      	ldr	r3, [pc, #132]	; (8004b04 <_dtoa_r+0x4ec>)
 8004a7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a82:	ed93 7b00 	vldr	d7, [r3]
 8004a86:	9b07      	ldr	r3, [sp, #28]
 8004a88:	2b00      	cmp	r3, #0
 8004a8a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004a8e:	f2c0 82be 	blt.w	800500e <_dtoa_r+0x9f6>
 8004a92:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004a96:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a9a:	4630      	mov	r0, r6
 8004a9c:	4639      	mov	r1, r7
 8004a9e:	f7fb fe95 	bl	80007cc <__aeabi_ddiv>
 8004aa2:	f7fc fb0d 	bl	80010c0 <__aeabi_d2iz>
 8004aa6:	4605      	mov	r5, r0
 8004aa8:	f7fb fcfc 	bl	80004a4 <__aeabi_i2d>
 8004aac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ab0:	f7fb fd62 	bl	8000578 <__aeabi_dmul>
 8004ab4:	460b      	mov	r3, r1
 8004ab6:	4602      	mov	r2, r0
 8004ab8:	4639      	mov	r1, r7
 8004aba:	4630      	mov	r0, r6
 8004abc:	f7fb fba4 	bl	8000208 <__aeabi_dsub>
 8004ac0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004ac4:	f88b 3000 	strb.w	r3, [fp]
 8004ac8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004aca:	2b01      	cmp	r3, #1
 8004acc:	4606      	mov	r6, r0
 8004ace:	460f      	mov	r7, r1
 8004ad0:	f10b 0401 	add.w	r4, fp, #1
 8004ad4:	d053      	beq.n	8004b7e <_dtoa_r+0x566>
 8004ad6:	2200      	movs	r2, #0
 8004ad8:	4b0f      	ldr	r3, [pc, #60]	; (8004b18 <_dtoa_r+0x500>)
 8004ada:	f7fb fd4d 	bl	8000578 <__aeabi_dmul>
 8004ade:	2200      	movs	r2, #0
 8004ae0:	2300      	movs	r3, #0
 8004ae2:	4606      	mov	r6, r0
 8004ae4:	460f      	mov	r7, r1
 8004ae6:	f7fb ffaf 	bl	8000a48 <__aeabi_dcmpeq>
 8004aea:	2800      	cmp	r0, #0
 8004aec:	f040 81ea 	bne.w	8004ec4 <_dtoa_r+0x8ac>
 8004af0:	f8cd a000 	str.w	sl, [sp]
 8004af4:	f8cd 901c 	str.w	r9, [sp, #28]
 8004af8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004afc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004b00:	e017      	b.n	8004b32 <_dtoa_r+0x51a>
 8004b02:	bf00      	nop
 8004b04:	080077e8 	.word	0x080077e8
 8004b08:	080077c0 	.word	0x080077c0
 8004b0c:	3ff00000 	.word	0x3ff00000
 8004b10:	401c0000 	.word	0x401c0000
 8004b14:	3fe00000 	.word	0x3fe00000
 8004b18:	40240000 	.word	0x40240000
 8004b1c:	f7fb fd2c 	bl	8000578 <__aeabi_dmul>
 8004b20:	2200      	movs	r2, #0
 8004b22:	2300      	movs	r3, #0
 8004b24:	4606      	mov	r6, r0
 8004b26:	460f      	mov	r7, r1
 8004b28:	f7fb ff8e 	bl	8000a48 <__aeabi_dcmpeq>
 8004b2c:	2800      	cmp	r0, #0
 8004b2e:	f040 833d 	bne.w	80051ac <_dtoa_r+0xb94>
 8004b32:	464a      	mov	r2, r9
 8004b34:	4653      	mov	r3, sl
 8004b36:	4630      	mov	r0, r6
 8004b38:	4639      	mov	r1, r7
 8004b3a:	f7fb fe47 	bl	80007cc <__aeabi_ddiv>
 8004b3e:	f7fc fabf 	bl	80010c0 <__aeabi_d2iz>
 8004b42:	4605      	mov	r5, r0
 8004b44:	f7fb fcae 	bl	80004a4 <__aeabi_i2d>
 8004b48:	464a      	mov	r2, r9
 8004b4a:	4653      	mov	r3, sl
 8004b4c:	f7fb fd14 	bl	8000578 <__aeabi_dmul>
 8004b50:	4602      	mov	r2, r0
 8004b52:	460b      	mov	r3, r1
 8004b54:	4630      	mov	r0, r6
 8004b56:	4639      	mov	r1, r7
 8004b58:	f7fb fb56 	bl	8000208 <__aeabi_dsub>
 8004b5c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004b60:	f804 cb01 	strb.w	ip, [r4], #1
 8004b64:	eba4 0c0b 	sub.w	ip, r4, fp
 8004b68:	45e0      	cmp	r8, ip
 8004b6a:	4606      	mov	r6, r0
 8004b6c:	460f      	mov	r7, r1
 8004b6e:	f04f 0200 	mov.w	r2, #0
 8004b72:	4bc1      	ldr	r3, [pc, #772]	; (8004e78 <_dtoa_r+0x860>)
 8004b74:	d1d2      	bne.n	8004b1c <_dtoa_r+0x504>
 8004b76:	f8dd a000 	ldr.w	sl, [sp]
 8004b7a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b7e:	4632      	mov	r2, r6
 8004b80:	463b      	mov	r3, r7
 8004b82:	4630      	mov	r0, r6
 8004b84:	4639      	mov	r1, r7
 8004b86:	f7fb fb41 	bl	800020c <__adddf3>
 8004b8a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b8e:	4606      	mov	r6, r0
 8004b90:	460f      	mov	r7, r1
 8004b92:	f7fb ff81 	bl	8000a98 <__aeabi_dcmpgt>
 8004b96:	b958      	cbnz	r0, 8004bb0 <_dtoa_r+0x598>
 8004b98:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b9c:	4630      	mov	r0, r6
 8004b9e:	4639      	mov	r1, r7
 8004ba0:	f7fb ff52 	bl	8000a48 <__aeabi_dcmpeq>
 8004ba4:	2800      	cmp	r0, #0
 8004ba6:	f000 818d 	beq.w	8004ec4 <_dtoa_r+0x8ac>
 8004baa:	07e9      	lsls	r1, r5, #31
 8004bac:	f140 818a 	bpl.w	8004ec4 <_dtoa_r+0x8ac>
 8004bb0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004bb4:	e005      	b.n	8004bc2 <_dtoa_r+0x5aa>
 8004bb6:	459b      	cmp	fp, r3
 8004bb8:	f000 8373 	beq.w	80052a2 <_dtoa_r+0xc8a>
 8004bbc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004bc0:	461c      	mov	r4, r3
 8004bc2:	2d39      	cmp	r5, #57	; 0x39
 8004bc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004bc8:	d0f5      	beq.n	8004bb6 <_dtoa_r+0x59e>
 8004bca:	3501      	adds	r5, #1
 8004bcc:	701d      	strb	r5, [r3, #0]
 8004bce:	e179      	b.n	8004ec4 <_dtoa_r+0x8ac>
 8004bd0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004bd2:	2a00      	cmp	r2, #0
 8004bd4:	d03b      	beq.n	8004c4e <_dtoa_r+0x636>
 8004bd6:	9a02      	ldr	r2, [sp, #8]
 8004bd8:	2a01      	cmp	r2, #1
 8004bda:	f340 820b 	ble.w	8004ff4 <_dtoa_r+0x9dc>
 8004bde:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004be0:	1e5f      	subs	r7, r3, #1
 8004be2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004be4:	42bb      	cmp	r3, r7
 8004be6:	f2c0 82e6 	blt.w	80051b6 <_dtoa_r+0xb9e>
 8004bea:	1bdf      	subs	r7, r3, r7
 8004bec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bee:	2b00      	cmp	r3, #0
 8004bf0:	f2c0 830b 	blt.w	800520a <_dtoa_r+0xbf2>
 8004bf4:	9a08      	ldr	r2, [sp, #32]
 8004bf6:	4614      	mov	r4, r2
 8004bf8:	441a      	add	r2, r3
 8004bfa:	4498      	add	r8, r3
 8004bfc:	9208      	str	r2, [sp, #32]
 8004bfe:	2101      	movs	r1, #1
 8004c00:	4648      	mov	r0, r9
 8004c02:	f001 fcbf 	bl	8006584 <__i2b>
 8004c06:	4605      	mov	r5, r0
 8004c08:	e024      	b.n	8004c54 <_dtoa_r+0x63c>
 8004c0a:	2301      	movs	r3, #1
 8004c0c:	930d      	str	r3, [sp, #52]	; 0x34
 8004c0e:	e5af      	b.n	8004770 <_dtoa_r+0x158>
 8004c10:	9a08      	ldr	r2, [sp, #32]
 8004c12:	9b06      	ldr	r3, [sp, #24]
 8004c14:	1ad2      	subs	r2, r2, r3
 8004c16:	425b      	negs	r3, r3
 8004c18:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c1a:	2300      	movs	r3, #0
 8004c1c:	9208      	str	r2, [sp, #32]
 8004c1e:	930c      	str	r3, [sp, #48]	; 0x30
 8004c20:	e5b5      	b.n	800478e <_dtoa_r+0x176>
 8004c22:	f1c4 0301 	rsb	r3, r4, #1
 8004c26:	9308      	str	r3, [sp, #32]
 8004c28:	f04f 0800 	mov.w	r8, #0
 8004c2c:	e5a7      	b.n	800477e <_dtoa_r+0x166>
 8004c2e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004c32:	4640      	mov	r0, r8
 8004c34:	f7fb fc36 	bl	80004a4 <__aeabi_i2d>
 8004c38:	4632      	mov	r2, r6
 8004c3a:	463b      	mov	r3, r7
 8004c3c:	f7fb ff04 	bl	8000a48 <__aeabi_dcmpeq>
 8004c40:	2800      	cmp	r0, #0
 8004c42:	f47f ad81 	bne.w	8004748 <_dtoa_r+0x130>
 8004c46:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004c4a:	9306      	str	r3, [sp, #24]
 8004c4c:	e57c      	b.n	8004748 <_dtoa_r+0x130>
 8004c4e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c50:	9c08      	ldr	r4, [sp, #32]
 8004c52:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004c54:	2c00      	cmp	r4, #0
 8004c56:	dd0c      	ble.n	8004c72 <_dtoa_r+0x65a>
 8004c58:	f1b8 0f00 	cmp.w	r8, #0
 8004c5c:	dd09      	ble.n	8004c72 <_dtoa_r+0x65a>
 8004c5e:	4544      	cmp	r4, r8
 8004c60:	9a08      	ldr	r2, [sp, #32]
 8004c62:	4623      	mov	r3, r4
 8004c64:	bfa8      	it	ge
 8004c66:	4643      	movge	r3, r8
 8004c68:	1ad2      	subs	r2, r2, r3
 8004c6a:	9208      	str	r2, [sp, #32]
 8004c6c:	1ae4      	subs	r4, r4, r3
 8004c6e:	eba8 0803 	sub.w	r8, r8, r3
 8004c72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c74:	b16b      	cbz	r3, 8004c92 <_dtoa_r+0x67a>
 8004c76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c78:	2a00      	cmp	r2, #0
 8004c7a:	f000 8290 	beq.w	800519e <_dtoa_r+0xb86>
 8004c7e:	1bde      	subs	r6, r3, r7
 8004c80:	2f00      	cmp	r7, #0
 8004c82:	f040 819b 	bne.w	8004fbc <_dtoa_r+0x9a4>
 8004c86:	4651      	mov	r1, sl
 8004c88:	4632      	mov	r2, r6
 8004c8a:	4648      	mov	r0, r9
 8004c8c:	f001 fd2a 	bl	80066e4 <__pow5mult>
 8004c90:	4682      	mov	sl, r0
 8004c92:	2101      	movs	r1, #1
 8004c94:	4648      	mov	r0, r9
 8004c96:	f001 fc75 	bl	8006584 <__i2b>
 8004c9a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c9c:	4606      	mov	r6, r0
 8004c9e:	2a00      	cmp	r2, #0
 8004ca0:	f040 8125 	bne.w	8004eee <_dtoa_r+0x8d6>
 8004ca4:	9b02      	ldr	r3, [sp, #8]
 8004ca6:	2b01      	cmp	r3, #1
 8004ca8:	f340 816c 	ble.w	8004f84 <_dtoa_r+0x96c>
 8004cac:	2001      	movs	r0, #1
 8004cae:	4440      	add	r0, r8
 8004cb0:	f010 001f 	ands.w	r0, r0, #31
 8004cb4:	f000 8119 	beq.w	8004eea <_dtoa_r+0x8d2>
 8004cb8:	f1c0 0320 	rsb	r3, r0, #32
 8004cbc:	2b04      	cmp	r3, #4
 8004cbe:	f340 83ac 	ble.w	800541a <_dtoa_r+0xe02>
 8004cc2:	f1c0 001c 	rsb	r0, r0, #28
 8004cc6:	9b08      	ldr	r3, [sp, #32]
 8004cc8:	4403      	add	r3, r0
 8004cca:	9308      	str	r3, [sp, #32]
 8004ccc:	4404      	add	r4, r0
 8004cce:	4480      	add	r8, r0
 8004cd0:	9b08      	ldr	r3, [sp, #32]
 8004cd2:	2b00      	cmp	r3, #0
 8004cd4:	dd05      	ble.n	8004ce2 <_dtoa_r+0x6ca>
 8004cd6:	4651      	mov	r1, sl
 8004cd8:	461a      	mov	r2, r3
 8004cda:	4648      	mov	r0, r9
 8004cdc:	f001 fd52 	bl	8006784 <__lshift>
 8004ce0:	4682      	mov	sl, r0
 8004ce2:	f1b8 0f00 	cmp.w	r8, #0
 8004ce6:	dd05      	ble.n	8004cf4 <_dtoa_r+0x6dc>
 8004ce8:	4631      	mov	r1, r6
 8004cea:	4642      	mov	r2, r8
 8004cec:	4648      	mov	r0, r9
 8004cee:	f001 fd49 	bl	8006784 <__lshift>
 8004cf2:	4606      	mov	r6, r0
 8004cf4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004cf6:	2b00      	cmp	r3, #0
 8004cf8:	d177      	bne.n	8004dea <_dtoa_r+0x7d2>
 8004cfa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cfc:	2b00      	cmp	r3, #0
 8004cfe:	f340 8209 	ble.w	8005114 <_dtoa_r+0xafc>
 8004d02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d04:	2b00      	cmp	r3, #0
 8004d06:	f000 8089 	beq.w	8004e1c <_dtoa_r+0x804>
 8004d0a:	2c00      	cmp	r4, #0
 8004d0c:	f300 816b 	bgt.w	8004fe6 <_dtoa_r+0x9ce>
 8004d10:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004d12:	2b00      	cmp	r3, #0
 8004d14:	f040 81cd 	bne.w	80050b2 <_dtoa_r+0xa9a>
 8004d18:	46a8      	mov	r8, r5
 8004d1a:	9a00      	ldr	r2, [sp, #0]
 8004d1c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004d20:	f002 0201 	and.w	r2, r2, #1
 8004d24:	920a      	str	r2, [sp, #40]	; 0x28
 8004d26:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004d28:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004d2c:	441a      	add	r2, r3
 8004d2e:	465f      	mov	r7, fp
 8004d30:	9209      	str	r2, [sp, #36]	; 0x24
 8004d32:	46b3      	mov	fp, r6
 8004d34:	4659      	mov	r1, fp
 8004d36:	4650      	mov	r0, sl
 8004d38:	f7ff fbdc 	bl	80044f4 <quorem>
 8004d3c:	4629      	mov	r1, r5
 8004d3e:	4604      	mov	r4, r0
 8004d40:	4650      	mov	r0, sl
 8004d42:	f001 fd75 	bl	8006830 <__mcmp>
 8004d46:	4659      	mov	r1, fp
 8004d48:	4606      	mov	r6, r0
 8004d4a:	4642      	mov	r2, r8
 8004d4c:	4648      	mov	r0, r9
 8004d4e:	f001 fd8b 	bl	8006868 <__mdiff>
 8004d52:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004d56:	9300      	str	r3, [sp, #0]
 8004d58:	68c3      	ldr	r3, [r0, #12]
 8004d5a:	4601      	mov	r1, r0
 8004d5c:	2b00      	cmp	r3, #0
 8004d5e:	f040 81d4 	bne.w	800510a <_dtoa_r+0xaf2>
 8004d62:	9008      	str	r0, [sp, #32]
 8004d64:	4650      	mov	r0, sl
 8004d66:	f001 fd63 	bl	8006830 <__mcmp>
 8004d6a:	9a08      	ldr	r2, [sp, #32]
 8004d6c:	9007      	str	r0, [sp, #28]
 8004d6e:	4611      	mov	r1, r2
 8004d70:	4648      	mov	r0, r9
 8004d72:	f001 fb6d 	bl	8006450 <_Bfree>
 8004d76:	9b07      	ldr	r3, [sp, #28]
 8004d78:	b933      	cbnz	r3, 8004d88 <_dtoa_r+0x770>
 8004d7a:	9a02      	ldr	r2, [sp, #8]
 8004d7c:	b922      	cbnz	r2, 8004d88 <_dtoa_r+0x770>
 8004d7e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d80:	2b00      	cmp	r3, #0
 8004d82:	f000 8319 	beq.w	80053b8 <_dtoa_r+0xda0>
 8004d86:	9b02      	ldr	r3, [sp, #8]
 8004d88:	2e00      	cmp	r6, #0
 8004d8a:	f2c0 821c 	blt.w	80051c6 <_dtoa_r+0xbae>
 8004d8e:	d105      	bne.n	8004d9c <_dtoa_r+0x784>
 8004d90:	9a02      	ldr	r2, [sp, #8]
 8004d92:	b91a      	cbnz	r2, 8004d9c <_dtoa_r+0x784>
 8004d94:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d96:	2a00      	cmp	r2, #0
 8004d98:	f000 8215 	beq.w	80051c6 <_dtoa_r+0xbae>
 8004d9c:	2b00      	cmp	r3, #0
 8004d9e:	f107 0401 	add.w	r4, r7, #1
 8004da2:	f300 8225 	bgt.w	80051f0 <_dtoa_r+0xbd8>
 8004da6:	9b00      	ldr	r3, [sp, #0]
 8004da8:	703b      	strb	r3, [r7, #0]
 8004daa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dac:	42bb      	cmp	r3, r7
 8004dae:	f000 8230 	beq.w	8005212 <_dtoa_r+0xbfa>
 8004db2:	4651      	mov	r1, sl
 8004db4:	2300      	movs	r3, #0
 8004db6:	220a      	movs	r2, #10
 8004db8:	4648      	mov	r0, r9
 8004dba:	f001 fb53 	bl	8006464 <__multadd>
 8004dbe:	4545      	cmp	r5, r8
 8004dc0:	4682      	mov	sl, r0
 8004dc2:	4629      	mov	r1, r5
 8004dc4:	f04f 0300 	mov.w	r3, #0
 8004dc8:	f04f 020a 	mov.w	r2, #10
 8004dcc:	4648      	mov	r0, r9
 8004dce:	f000 8196 	beq.w	80050fe <_dtoa_r+0xae6>
 8004dd2:	f001 fb47 	bl	8006464 <__multadd>
 8004dd6:	4641      	mov	r1, r8
 8004dd8:	4605      	mov	r5, r0
 8004dda:	2300      	movs	r3, #0
 8004ddc:	220a      	movs	r2, #10
 8004dde:	4648      	mov	r0, r9
 8004de0:	f001 fb40 	bl	8006464 <__multadd>
 8004de4:	4627      	mov	r7, r4
 8004de6:	4680      	mov	r8, r0
 8004de8:	e7a4      	b.n	8004d34 <_dtoa_r+0x71c>
 8004dea:	4631      	mov	r1, r6
 8004dec:	4650      	mov	r0, sl
 8004dee:	f001 fd1f 	bl	8006830 <__mcmp>
 8004df2:	2800      	cmp	r0, #0
 8004df4:	da81      	bge.n	8004cfa <_dtoa_r+0x6e2>
 8004df6:	9f06      	ldr	r7, [sp, #24]
 8004df8:	4651      	mov	r1, sl
 8004dfa:	2300      	movs	r3, #0
 8004dfc:	220a      	movs	r2, #10
 8004dfe:	4648      	mov	r0, r9
 8004e00:	3f01      	subs	r7, #1
 8004e02:	9706      	str	r7, [sp, #24]
 8004e04:	f001 fb2e 	bl	8006464 <__multadd>
 8004e08:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e0a:	4682      	mov	sl, r0
 8004e0c:	2b00      	cmp	r3, #0
 8004e0e:	f040 82eb 	bne.w	80053e8 <_dtoa_r+0xdd0>
 8004e12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e14:	2b00      	cmp	r3, #0
 8004e16:	f340 82f3 	ble.w	8005400 <_dtoa_r+0xde8>
 8004e1a:	9309      	str	r3, [sp, #36]	; 0x24
 8004e1c:	465c      	mov	r4, fp
 8004e1e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004e22:	e002      	b.n	8004e2a <_dtoa_r+0x812>
 8004e24:	f001 fb1e 	bl	8006464 <__multadd>
 8004e28:	4682      	mov	sl, r0
 8004e2a:	4631      	mov	r1, r6
 8004e2c:	4650      	mov	r0, sl
 8004e2e:	f7ff fb61 	bl	80044f4 <quorem>
 8004e32:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004e36:	f804 7b01 	strb.w	r7, [r4], #1
 8004e3a:	eba4 030b 	sub.w	r3, r4, fp
 8004e3e:	4598      	cmp	r8, r3
 8004e40:	f04f 020a 	mov.w	r2, #10
 8004e44:	f04f 0300 	mov.w	r3, #0
 8004e48:	4651      	mov	r1, sl
 8004e4a:	4648      	mov	r0, r9
 8004e4c:	dcea      	bgt.n	8004e24 <_dtoa_r+0x80c>
 8004e4e:	2300      	movs	r3, #0
 8004e50:	9700      	str	r7, [sp, #0]
 8004e52:	9302      	str	r3, [sp, #8]
 8004e54:	4651      	mov	r1, sl
 8004e56:	2201      	movs	r2, #1
 8004e58:	4648      	mov	r0, r9
 8004e5a:	f001 fc93 	bl	8006784 <__lshift>
 8004e5e:	4631      	mov	r1, r6
 8004e60:	4682      	mov	sl, r0
 8004e62:	f001 fce5 	bl	8006830 <__mcmp>
 8004e66:	2800      	cmp	r0, #0
 8004e68:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004e6c:	dc14      	bgt.n	8004e98 <_dtoa_r+0x880>
 8004e6e:	d108      	bne.n	8004e82 <_dtoa_r+0x86a>
 8004e70:	9b00      	ldr	r3, [sp, #0]
 8004e72:	07db      	lsls	r3, r3, #31
 8004e74:	d410      	bmi.n	8004e98 <_dtoa_r+0x880>
 8004e76:	e004      	b.n	8004e82 <_dtoa_r+0x86a>
 8004e78:	40240000 	.word	0x40240000
 8004e7c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004e80:	461c      	mov	r4, r3
 8004e82:	2a30      	cmp	r2, #48	; 0x30
 8004e84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e88:	d0f8      	beq.n	8004e7c <_dtoa_r+0x864>
 8004e8a:	e00b      	b.n	8004ea4 <_dtoa_r+0x88c>
 8004e8c:	459b      	cmp	fp, r3
 8004e8e:	f000 814e 	beq.w	800512e <_dtoa_r+0xb16>
 8004e92:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004e96:	461c      	mov	r4, r3
 8004e98:	2a39      	cmp	r2, #57	; 0x39
 8004e9a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e9e:	d0f5      	beq.n	8004e8c <_dtoa_r+0x874>
 8004ea0:	3201      	adds	r2, #1
 8004ea2:	701a      	strb	r2, [r3, #0]
 8004ea4:	4631      	mov	r1, r6
 8004ea6:	4648      	mov	r0, r9
 8004ea8:	f001 fad2 	bl	8006450 <_Bfree>
 8004eac:	b155      	cbz	r5, 8004ec4 <_dtoa_r+0x8ac>
 8004eae:	9902      	ldr	r1, [sp, #8]
 8004eb0:	b121      	cbz	r1, 8004ebc <_dtoa_r+0x8a4>
 8004eb2:	42a9      	cmp	r1, r5
 8004eb4:	d002      	beq.n	8004ebc <_dtoa_r+0x8a4>
 8004eb6:	4648      	mov	r0, r9
 8004eb8:	f001 faca 	bl	8006450 <_Bfree>
 8004ebc:	4629      	mov	r1, r5
 8004ebe:	4648      	mov	r0, r9
 8004ec0:	f001 fac6 	bl	8006450 <_Bfree>
 8004ec4:	4651      	mov	r1, sl
 8004ec6:	4648      	mov	r0, r9
 8004ec8:	f001 fac2 	bl	8006450 <_Bfree>
 8004ecc:	2200      	movs	r2, #0
 8004ece:	9b06      	ldr	r3, [sp, #24]
 8004ed0:	7022      	strb	r2, [r4, #0]
 8004ed2:	9a05      	ldr	r2, [sp, #20]
 8004ed4:	3301      	adds	r3, #1
 8004ed6:	6013      	str	r3, [r2, #0]
 8004ed8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004eda:	2b00      	cmp	r3, #0
 8004edc:	f43f abdb 	beq.w	8004696 <_dtoa_r+0x7e>
 8004ee0:	4658      	mov	r0, fp
 8004ee2:	601c      	str	r4, [r3, #0]
 8004ee4:	b01b      	add	sp, #108	; 0x6c
 8004ee6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004eea:	201c      	movs	r0, #28
 8004eec:	e6eb      	b.n	8004cc6 <_dtoa_r+0x6ae>
 8004eee:	4601      	mov	r1, r0
 8004ef0:	4648      	mov	r0, r9
 8004ef2:	f001 fbf7 	bl	80066e4 <__pow5mult>
 8004ef6:	9b02      	ldr	r3, [sp, #8]
 8004ef8:	2b01      	cmp	r3, #1
 8004efa:	4606      	mov	r6, r0
 8004efc:	f340 80d4 	ble.w	80050a8 <_dtoa_r+0xa90>
 8004f00:	2300      	movs	r3, #0
 8004f02:	930c      	str	r3, [sp, #48]	; 0x30
 8004f04:	6933      	ldr	r3, [r6, #16]
 8004f06:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004f0a:	6918      	ldr	r0, [r3, #16]
 8004f0c:	f001 faea 	bl	80064e4 <__hi0bits>
 8004f10:	f1c0 0020 	rsb	r0, r0, #32
 8004f14:	e6cb      	b.n	8004cae <_dtoa_r+0x696>
 8004f16:	900d      	str	r0, [sp, #52]	; 0x34
 8004f18:	e42a      	b.n	8004770 <_dtoa_r+0x158>
 8004f1a:	2501      	movs	r5, #1
 8004f1c:	e440      	b.n	80047a0 <_dtoa_r+0x188>
 8004f1e:	f1c3 0820 	rsb	r8, r3, #32
 8004f22:	9b00      	ldr	r3, [sp, #0]
 8004f24:	fa03 f008 	lsl.w	r0, r3, r8
 8004f28:	f7ff bbd8 	b.w	80046dc <_dtoa_r+0xc4>
 8004f2c:	2300      	movs	r3, #0
 8004f2e:	930a      	str	r3, [sp, #40]	; 0x28
 8004f30:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004f34:	4413      	add	r3, r2
 8004f36:	930e      	str	r3, [sp, #56]	; 0x38
 8004f38:	3301      	adds	r3, #1
 8004f3a:	2b01      	cmp	r3, #1
 8004f3c:	461e      	mov	r6, r3
 8004f3e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f40:	bfb8      	it	lt
 8004f42:	2601      	movlt	r6, #1
 8004f44:	2100      	movs	r1, #0
 8004f46:	2e17      	cmp	r6, #23
 8004f48:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004f4c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004f4e:	f77f ac89 	ble.w	8004864 <_dtoa_r+0x24c>
 8004f52:	2201      	movs	r2, #1
 8004f54:	2304      	movs	r3, #4
 8004f56:	005b      	lsls	r3, r3, #1
 8004f58:	f103 0014 	add.w	r0, r3, #20
 8004f5c:	42b0      	cmp	r0, r6
 8004f5e:	4611      	mov	r1, r2
 8004f60:	f102 0201 	add.w	r2, r2, #1
 8004f64:	d9f7      	bls.n	8004f56 <_dtoa_r+0x93e>
 8004f66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004f6a:	e47b      	b.n	8004864 <_dtoa_r+0x24c>
 8004f6c:	2300      	movs	r3, #0
 8004f6e:	930a      	str	r3, [sp, #40]	; 0x28
 8004f70:	9e07      	ldr	r6, [sp, #28]
 8004f72:	2e00      	cmp	r6, #0
 8004f74:	f340 80e2 	ble.w	800513c <_dtoa_r+0xb24>
 8004f78:	960e      	str	r6, [sp, #56]	; 0x38
 8004f7a:	9609      	str	r6, [sp, #36]	; 0x24
 8004f7c:	e7e2      	b.n	8004f44 <_dtoa_r+0x92c>
 8004f7e:	2301      	movs	r3, #1
 8004f80:	930a      	str	r3, [sp, #40]	; 0x28
 8004f82:	e7f5      	b.n	8004f70 <_dtoa_r+0x958>
 8004f84:	9b00      	ldr	r3, [sp, #0]
 8004f86:	2b00      	cmp	r3, #0
 8004f88:	f47f ae90 	bne.w	8004cac <_dtoa_r+0x694>
 8004f8c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004f90:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004f94:	2b00      	cmp	r3, #0
 8004f96:	f040 8192 	bne.w	80052be <_dtoa_r+0xca6>
 8004f9a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004f9e:	0d1b      	lsrs	r3, r3, #20
 8004fa0:	051b      	lsls	r3, r3, #20
 8004fa2:	b12b      	cbz	r3, 8004fb0 <_dtoa_r+0x998>
 8004fa4:	9b08      	ldr	r3, [sp, #32]
 8004fa6:	3301      	adds	r3, #1
 8004fa8:	9308      	str	r3, [sp, #32]
 8004faa:	f108 0801 	add.w	r8, r8, #1
 8004fae:	2301      	movs	r3, #1
 8004fb0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004fb2:	930c      	str	r3, [sp, #48]	; 0x30
 8004fb4:	2a00      	cmp	r2, #0
 8004fb6:	f43f ae79 	beq.w	8004cac <_dtoa_r+0x694>
 8004fba:	e7a3      	b.n	8004f04 <_dtoa_r+0x8ec>
 8004fbc:	463a      	mov	r2, r7
 8004fbe:	4629      	mov	r1, r5
 8004fc0:	4648      	mov	r0, r9
 8004fc2:	f001 fb8f 	bl	80066e4 <__pow5mult>
 8004fc6:	4652      	mov	r2, sl
 8004fc8:	4601      	mov	r1, r0
 8004fca:	4605      	mov	r5, r0
 8004fcc:	4648      	mov	r0, r9
 8004fce:	f001 fae3 	bl	8006598 <__multiply>
 8004fd2:	4651      	mov	r1, sl
 8004fd4:	4607      	mov	r7, r0
 8004fd6:	4648      	mov	r0, r9
 8004fd8:	f001 fa3a 	bl	8006450 <_Bfree>
 8004fdc:	46ba      	mov	sl, r7
 8004fde:	2e00      	cmp	r6, #0
 8004fe0:	f43f ae57 	beq.w	8004c92 <_dtoa_r+0x67a>
 8004fe4:	e64f      	b.n	8004c86 <_dtoa_r+0x66e>
 8004fe6:	4629      	mov	r1, r5
 8004fe8:	4622      	mov	r2, r4
 8004fea:	4648      	mov	r0, r9
 8004fec:	f001 fbca 	bl	8006784 <__lshift>
 8004ff0:	4605      	mov	r5, r0
 8004ff2:	e68d      	b.n	8004d10 <_dtoa_r+0x6f8>
 8004ff4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004ff6:	2a00      	cmp	r2, #0
 8004ff8:	f000 815d 	beq.w	80052b6 <_dtoa_r+0xc9e>
 8004ffc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005000:	9a08      	ldr	r2, [sp, #32]
 8005002:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005004:	4614      	mov	r4, r2
 8005006:	441a      	add	r2, r3
 8005008:	4498      	add	r8, r3
 800500a:	9208      	str	r2, [sp, #32]
 800500c:	e5f7      	b.n	8004bfe <_dtoa_r+0x5e6>
 800500e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005010:	2b00      	cmp	r3, #0
 8005012:	f73f ad3e 	bgt.w	8004a92 <_dtoa_r+0x47a>
 8005016:	f040 80bc 	bne.w	8005192 <_dtoa_r+0xb7a>
 800501a:	ec51 0b17 	vmov	r0, r1, d7
 800501e:	2200      	movs	r2, #0
 8005020:	4bb2      	ldr	r3, [pc, #712]	; (80052ec <_dtoa_r+0xcd4>)
 8005022:	f7fb faa9 	bl	8000578 <__aeabi_dmul>
 8005026:	e9dd 2300 	ldrd	r2, r3, [sp]
 800502a:	f7fb fd2b 	bl	8000a84 <__aeabi_dcmpge>
 800502e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005030:	4635      	mov	r5, r6
 8005032:	2800      	cmp	r0, #0
 8005034:	d176      	bne.n	8005124 <_dtoa_r+0xb0c>
 8005036:	9a06      	ldr	r2, [sp, #24]
 8005038:	2331      	movs	r3, #49	; 0x31
 800503a:	3201      	adds	r2, #1
 800503c:	9206      	str	r2, [sp, #24]
 800503e:	f88b 3000 	strb.w	r3, [fp]
 8005042:	f10b 0401 	add.w	r4, fp, #1
 8005046:	4631      	mov	r1, r6
 8005048:	4648      	mov	r0, r9
 800504a:	f001 fa01 	bl	8006450 <_Bfree>
 800504e:	2d00      	cmp	r5, #0
 8005050:	f47f af34 	bne.w	8004ebc <_dtoa_r+0x8a4>
 8005054:	e736      	b.n	8004ec4 <_dtoa_r+0x8ac>
 8005056:	f000 8142 	beq.w	80052de <_dtoa_r+0xcc6>
 800505a:	9b06      	ldr	r3, [sp, #24]
 800505c:	425c      	negs	r4, r3
 800505e:	4ba4      	ldr	r3, [pc, #656]	; (80052f0 <_dtoa_r+0xcd8>)
 8005060:	f004 020f 	and.w	r2, r4, #15
 8005064:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005068:	e9d3 2300 	ldrd	r2, r3, [r3]
 800506c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005070:	f7fb fa82 	bl	8000578 <__aeabi_dmul>
 8005074:	1124      	asrs	r4, r4, #4
 8005076:	e9cd 0100 	strd	r0, r1, [sp]
 800507a:	f000 81c6 	beq.w	800540a <_dtoa_r+0xdf2>
 800507e:	4d9d      	ldr	r5, [pc, #628]	; (80052f4 <_dtoa_r+0xcdc>)
 8005080:	2300      	movs	r3, #0
 8005082:	2602      	movs	r6, #2
 8005084:	07e7      	lsls	r7, r4, #31
 8005086:	d505      	bpl.n	8005094 <_dtoa_r+0xa7c>
 8005088:	e9d5 2300 	ldrd	r2, r3, [r5]
 800508c:	f7fb fa74 	bl	8000578 <__aeabi_dmul>
 8005090:	3601      	adds	r6, #1
 8005092:	2301      	movs	r3, #1
 8005094:	1064      	asrs	r4, r4, #1
 8005096:	f105 0508 	add.w	r5, r5, #8
 800509a:	d1f3      	bne.n	8005084 <_dtoa_r+0xa6c>
 800509c:	2b00      	cmp	r3, #0
 800509e:	f43f ac27 	beq.w	80048f0 <_dtoa_r+0x2d8>
 80050a2:	e9cd 0100 	strd	r0, r1, [sp]
 80050a6:	e423      	b.n	80048f0 <_dtoa_r+0x2d8>
 80050a8:	9b00      	ldr	r3, [sp, #0]
 80050aa:	2b00      	cmp	r3, #0
 80050ac:	f43f af6e 	beq.w	8004f8c <_dtoa_r+0x974>
 80050b0:	e726      	b.n	8004f00 <_dtoa_r+0x8e8>
 80050b2:	6869      	ldr	r1, [r5, #4]
 80050b4:	4648      	mov	r0, r9
 80050b6:	f001 f9a5 	bl	8006404 <_Balloc>
 80050ba:	692b      	ldr	r3, [r5, #16]
 80050bc:	3302      	adds	r3, #2
 80050be:	009a      	lsls	r2, r3, #2
 80050c0:	4604      	mov	r4, r0
 80050c2:	f105 010c 	add.w	r1, r5, #12
 80050c6:	300c      	adds	r0, #12
 80050c8:	f7fb fe86 	bl	8000dd8 <memcpy>
 80050cc:	4621      	mov	r1, r4
 80050ce:	2201      	movs	r2, #1
 80050d0:	4648      	mov	r0, r9
 80050d2:	f001 fb57 	bl	8006784 <__lshift>
 80050d6:	4680      	mov	r8, r0
 80050d8:	e61f      	b.n	8004d1a <_dtoa_r+0x702>
 80050da:	2400      	movs	r4, #0
 80050dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80050e0:	4621      	mov	r1, r4
 80050e2:	4648      	mov	r0, r9
 80050e4:	f001 f98e 	bl	8006404 <_Balloc>
 80050e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80050ec:	930e      	str	r3, [sp, #56]	; 0x38
 80050ee:	9309      	str	r3, [sp, #36]	; 0x24
 80050f0:	2301      	movs	r3, #1
 80050f2:	4683      	mov	fp, r0
 80050f4:	9407      	str	r4, [sp, #28]
 80050f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80050fa:	930a      	str	r3, [sp, #40]	; 0x28
 80050fc:	e4b6      	b.n	8004a6c <_dtoa_r+0x454>
 80050fe:	f001 f9b1 	bl	8006464 <__multadd>
 8005102:	4627      	mov	r7, r4
 8005104:	4605      	mov	r5, r0
 8005106:	4680      	mov	r8, r0
 8005108:	e614      	b.n	8004d34 <_dtoa_r+0x71c>
 800510a:	4648      	mov	r0, r9
 800510c:	f001 f9a0 	bl	8006450 <_Bfree>
 8005110:	2301      	movs	r3, #1
 8005112:	e639      	b.n	8004d88 <_dtoa_r+0x770>
 8005114:	9b02      	ldr	r3, [sp, #8]
 8005116:	2b02      	cmp	r3, #2
 8005118:	f77f adf3 	ble.w	8004d02 <_dtoa_r+0x6ea>
 800511c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800511e:	2b00      	cmp	r3, #0
 8005120:	f000 80cf 	beq.w	80052c2 <_dtoa_r+0xcaa>
 8005124:	9b07      	ldr	r3, [sp, #28]
 8005126:	43db      	mvns	r3, r3
 8005128:	9306      	str	r3, [sp, #24]
 800512a:	465c      	mov	r4, fp
 800512c:	e78b      	b.n	8005046 <_dtoa_r+0xa2e>
 800512e:	9a06      	ldr	r2, [sp, #24]
 8005130:	2331      	movs	r3, #49	; 0x31
 8005132:	3201      	adds	r2, #1
 8005134:	9206      	str	r2, [sp, #24]
 8005136:	f88b 3000 	strb.w	r3, [fp]
 800513a:	e6b3      	b.n	8004ea4 <_dtoa_r+0x88c>
 800513c:	2401      	movs	r4, #1
 800513e:	9409      	str	r4, [sp, #36]	; 0x24
 8005140:	9407      	str	r4, [sp, #28]
 8005142:	f7ff bb8b 	b.w	800485c <_dtoa_r+0x244>
 8005146:	4630      	mov	r0, r6
 8005148:	f7fb f9ac 	bl	80004a4 <__aeabi_i2d>
 800514c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005150:	f7fb fa12 	bl	8000578 <__aeabi_dmul>
 8005154:	2200      	movs	r2, #0
 8005156:	4b68      	ldr	r3, [pc, #416]	; (80052f8 <_dtoa_r+0xce0>)
 8005158:	f7fb f858 	bl	800020c <__adddf3>
 800515c:	4606      	mov	r6, r0
 800515e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005162:	2200      	movs	r2, #0
 8005164:	4b61      	ldr	r3, [pc, #388]	; (80052ec <_dtoa_r+0xcd4>)
 8005166:	e9dd 0100 	ldrd	r0, r1, [sp]
 800516a:	f7fb f84d 	bl	8000208 <__aeabi_dsub>
 800516e:	4632      	mov	r2, r6
 8005170:	463b      	mov	r3, r7
 8005172:	4604      	mov	r4, r0
 8005174:	460d      	mov	r5, r1
 8005176:	f7fb fc8f 	bl	8000a98 <__aeabi_dcmpgt>
 800517a:	2800      	cmp	r0, #0
 800517c:	d14f      	bne.n	800521e <_dtoa_r+0xc06>
 800517e:	4632      	mov	r2, r6
 8005180:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005184:	4620      	mov	r0, r4
 8005186:	4629      	mov	r1, r5
 8005188:	f7fb fc68 	bl	8000a5c <__aeabi_dcmplt>
 800518c:	2800      	cmp	r0, #0
 800518e:	f43f ac69 	beq.w	8004a64 <_dtoa_r+0x44c>
 8005192:	2600      	movs	r6, #0
 8005194:	4635      	mov	r5, r6
 8005196:	e7c5      	b.n	8005124 <_dtoa_r+0xb0c>
 8005198:	2301      	movs	r3, #1
 800519a:	930a      	str	r3, [sp, #40]	; 0x28
 800519c:	e6c8      	b.n	8004f30 <_dtoa_r+0x918>
 800519e:	4651      	mov	r1, sl
 80051a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80051a2:	4648      	mov	r0, r9
 80051a4:	f001 fa9e 	bl	80066e4 <__pow5mult>
 80051a8:	4682      	mov	sl, r0
 80051aa:	e572      	b.n	8004c92 <_dtoa_r+0x67a>
 80051ac:	f8dd a000 	ldr.w	sl, [sp]
 80051b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80051b4:	e686      	b.n	8004ec4 <_dtoa_r+0x8ac>
 80051b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80051b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051ba:	1afb      	subs	r3, r7, r3
 80051bc:	441a      	add	r2, r3
 80051be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80051c2:	2700      	movs	r7, #0
 80051c4:	e512      	b.n	8004bec <_dtoa_r+0x5d4>
 80051c6:	2b00      	cmp	r3, #0
 80051c8:	9402      	str	r4, [sp, #8]
 80051ca:	465e      	mov	r6, fp
 80051cc:	f107 0401 	add.w	r4, r7, #1
 80051d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051d4:	f300 80ba 	bgt.w	800534c <_dtoa_r+0xd34>
 80051d8:	9b00      	ldr	r3, [sp, #0]
 80051da:	9502      	str	r5, [sp, #8]
 80051dc:	703b      	strb	r3, [r7, #0]
 80051de:	4645      	mov	r5, r8
 80051e0:	e660      	b.n	8004ea4 <_dtoa_r+0x88c>
 80051e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80051e6:	2602      	movs	r6, #2
 80051e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80051ec:	f7ff bb67 	b.w	80048be <_dtoa_r+0x2a6>
 80051f0:	9b00      	ldr	r3, [sp, #0]
 80051f2:	2b39      	cmp	r3, #57	; 0x39
 80051f4:	465e      	mov	r6, fp
 80051f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051fa:	f000 80b9 	beq.w	8005370 <_dtoa_r+0xd58>
 80051fe:	9b00      	ldr	r3, [sp, #0]
 8005200:	9502      	str	r5, [sp, #8]
 8005202:	3301      	adds	r3, #1
 8005204:	703b      	strb	r3, [r7, #0]
 8005206:	4645      	mov	r5, r8
 8005208:	e64c      	b.n	8004ea4 <_dtoa_r+0x88c>
 800520a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800520e:	1a9c      	subs	r4, r3, r2
 8005210:	e4f5      	b.n	8004bfe <_dtoa_r+0x5e6>
 8005212:	465e      	mov	r6, fp
 8005214:	9502      	str	r5, [sp, #8]
 8005216:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800521a:	4645      	mov	r5, r8
 800521c:	e61a      	b.n	8004e54 <_dtoa_r+0x83c>
 800521e:	2600      	movs	r6, #0
 8005220:	4635      	mov	r5, r6
 8005222:	e708      	b.n	8005036 <_dtoa_r+0xa1e>
 8005224:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005228:	e9dd 0100 	ldrd	r0, r1, [sp]
 800522c:	f7fb f9a4 	bl	8000578 <__aeabi_dmul>
 8005230:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005232:	f88b 5000 	strb.w	r5, [fp]
 8005236:	2b01      	cmp	r3, #1
 8005238:	e9cd 0100 	strd	r0, r1, [sp]
 800523c:	d020      	beq.n	8005280 <_dtoa_r+0xc68>
 800523e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005240:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005244:	445b      	add	r3, fp
 8005246:	4698      	mov	r8, r3
 8005248:	2200      	movs	r2, #0
 800524a:	4b2c      	ldr	r3, [pc, #176]	; (80052fc <_dtoa_r+0xce4>)
 800524c:	4630      	mov	r0, r6
 800524e:	4639      	mov	r1, r7
 8005250:	f7fb f992 	bl	8000578 <__aeabi_dmul>
 8005254:	460f      	mov	r7, r1
 8005256:	4606      	mov	r6, r0
 8005258:	f7fb ff32 	bl	80010c0 <__aeabi_d2iz>
 800525c:	4605      	mov	r5, r0
 800525e:	f7fb f921 	bl	80004a4 <__aeabi_i2d>
 8005262:	3530      	adds	r5, #48	; 0x30
 8005264:	4602      	mov	r2, r0
 8005266:	460b      	mov	r3, r1
 8005268:	4630      	mov	r0, r6
 800526a:	4639      	mov	r1, r7
 800526c:	f7fa ffcc 	bl	8000208 <__aeabi_dsub>
 8005270:	f804 5b01 	strb.w	r5, [r4], #1
 8005274:	4544      	cmp	r4, r8
 8005276:	4606      	mov	r6, r0
 8005278:	460f      	mov	r7, r1
 800527a:	d1e5      	bne.n	8005248 <_dtoa_r+0xc30>
 800527c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005280:	4b1f      	ldr	r3, [pc, #124]	; (8005300 <_dtoa_r+0xce8>)
 8005282:	2200      	movs	r2, #0
 8005284:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005288:	f7fa ffc0 	bl	800020c <__adddf3>
 800528c:	4632      	mov	r2, r6
 800528e:	463b      	mov	r3, r7
 8005290:	f7fb fbe4 	bl	8000a5c <__aeabi_dcmplt>
 8005294:	2800      	cmp	r0, #0
 8005296:	d070      	beq.n	800537a <_dtoa_r+0xd62>
 8005298:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800529a:	9306      	str	r3, [sp, #24]
 800529c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80052a0:	e48f      	b.n	8004bc2 <_dtoa_r+0x5aa>
 80052a2:	2330      	movs	r3, #48	; 0x30
 80052a4:	f88b 3000 	strb.w	r3, [fp]
 80052a8:	9b06      	ldr	r3, [sp, #24]
 80052aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80052ae:	3301      	adds	r3, #1
 80052b0:	9306      	str	r3, [sp, #24]
 80052b2:	465b      	mov	r3, fp
 80052b4:	e489      	b.n	8004bca <_dtoa_r+0x5b2>
 80052b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80052b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80052bc:	e6a0      	b.n	8005000 <_dtoa_r+0x9e8>
 80052be:	2300      	movs	r3, #0
 80052c0:	e676      	b.n	8004fb0 <_dtoa_r+0x998>
 80052c2:	4631      	mov	r1, r6
 80052c4:	2205      	movs	r2, #5
 80052c6:	4648      	mov	r0, r9
 80052c8:	f001 f8cc 	bl	8006464 <__multadd>
 80052cc:	4601      	mov	r1, r0
 80052ce:	4606      	mov	r6, r0
 80052d0:	4650      	mov	r0, sl
 80052d2:	f001 faad 	bl	8006830 <__mcmp>
 80052d6:	2800      	cmp	r0, #0
 80052d8:	f73f aead 	bgt.w	8005036 <_dtoa_r+0xa1e>
 80052dc:	e722      	b.n	8005124 <_dtoa_r+0xb0c>
 80052de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80052e2:	2602      	movs	r6, #2
 80052e4:	ed8d 7b00 	vstr	d7, [sp]
 80052e8:	f7ff bb02 	b.w	80048f0 <_dtoa_r+0x2d8>
 80052ec:	40140000 	.word	0x40140000
 80052f0:	080077e8 	.word	0x080077e8
 80052f4:	080077c0 	.word	0x080077c0
 80052f8:	401c0000 	.word	0x401c0000
 80052fc:	40240000 	.word	0x40240000
 8005300:	3fe00000 	.word	0x3fe00000
 8005304:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005306:	2b00      	cmp	r3, #0
 8005308:	f43f af1d 	beq.w	8005146 <_dtoa_r+0xb2e>
 800530c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800530e:	2c00      	cmp	r4, #0
 8005310:	f77f aba8 	ble.w	8004a64 <_dtoa_r+0x44c>
 8005314:	2200      	movs	r2, #0
 8005316:	4b45      	ldr	r3, [pc, #276]	; (800542c <_dtoa_r+0xe14>)
 8005318:	e9dd 0100 	ldrd	r0, r1, [sp]
 800531c:	f7fb f92c 	bl	8000578 <__aeabi_dmul>
 8005320:	e9cd 0100 	strd	r0, r1, [sp]
 8005324:	1c70      	adds	r0, r6, #1
 8005326:	f7fb f8bd 	bl	80004a4 <__aeabi_i2d>
 800532a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800532e:	f7fb f923 	bl	8000578 <__aeabi_dmul>
 8005332:	4b3f      	ldr	r3, [pc, #252]	; (8005430 <_dtoa_r+0xe18>)
 8005334:	2200      	movs	r2, #0
 8005336:	f7fa ff69 	bl	800020c <__adddf3>
 800533a:	9b06      	ldr	r3, [sp, #24]
 800533c:	9412      	str	r4, [sp, #72]	; 0x48
 800533e:	3b01      	subs	r3, #1
 8005340:	4606      	mov	r6, r0
 8005342:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005346:	9316      	str	r3, [sp, #88]	; 0x58
 8005348:	f7ff baf3 	b.w	8004932 <_dtoa_r+0x31a>
 800534c:	4651      	mov	r1, sl
 800534e:	2201      	movs	r2, #1
 8005350:	4648      	mov	r0, r9
 8005352:	f001 fa17 	bl	8006784 <__lshift>
 8005356:	4631      	mov	r1, r6
 8005358:	4682      	mov	sl, r0
 800535a:	f001 fa69 	bl	8006830 <__mcmp>
 800535e:	2800      	cmp	r0, #0
 8005360:	dd3b      	ble.n	80053da <_dtoa_r+0xdc2>
 8005362:	9b00      	ldr	r3, [sp, #0]
 8005364:	2b39      	cmp	r3, #57	; 0x39
 8005366:	d003      	beq.n	8005370 <_dtoa_r+0xd58>
 8005368:	9b02      	ldr	r3, [sp, #8]
 800536a:	3331      	adds	r3, #49	; 0x31
 800536c:	9300      	str	r3, [sp, #0]
 800536e:	e733      	b.n	80051d8 <_dtoa_r+0xbc0>
 8005370:	2239      	movs	r2, #57	; 0x39
 8005372:	9502      	str	r5, [sp, #8]
 8005374:	703a      	strb	r2, [r7, #0]
 8005376:	4645      	mov	r5, r8
 8005378:	e58e      	b.n	8004e98 <_dtoa_r+0x880>
 800537a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800537e:	2000      	movs	r0, #0
 8005380:	492c      	ldr	r1, [pc, #176]	; (8005434 <_dtoa_r+0xe1c>)
 8005382:	f7fa ff41 	bl	8000208 <__aeabi_dsub>
 8005386:	4632      	mov	r2, r6
 8005388:	463b      	mov	r3, r7
 800538a:	f7fb fb85 	bl	8000a98 <__aeabi_dcmpgt>
 800538e:	b910      	cbnz	r0, 8005396 <_dtoa_r+0xd7e>
 8005390:	f7ff bb68 	b.w	8004a64 <_dtoa_r+0x44c>
 8005394:	4614      	mov	r4, r2
 8005396:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800539a:	2b30      	cmp	r3, #48	; 0x30
 800539c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80053a0:	d0f8      	beq.n	8005394 <_dtoa_r+0xd7c>
 80053a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053a4:	9306      	str	r3, [sp, #24]
 80053a6:	e58d      	b.n	8004ec4 <_dtoa_r+0x8ac>
 80053a8:	46d9      	mov	r9, fp
 80053aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80053ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80053b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053b4:	9306      	str	r3, [sp, #24]
 80053b6:	e404      	b.n	8004bc2 <_dtoa_r+0x5aa>
 80053b8:	9b00      	ldr	r3, [sp, #0]
 80053ba:	2b39      	cmp	r3, #57	; 0x39
 80053bc:	4621      	mov	r1, r4
 80053be:	4632      	mov	r2, r6
 80053c0:	f107 0401 	add.w	r4, r7, #1
 80053c4:	465e      	mov	r6, fp
 80053c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80053ca:	d0d1      	beq.n	8005370 <_dtoa_r+0xd58>
 80053cc:	2a00      	cmp	r2, #0
 80053ce:	f77f af03 	ble.w	80051d8 <_dtoa_r+0xbc0>
 80053d2:	460b      	mov	r3, r1
 80053d4:	3331      	adds	r3, #49	; 0x31
 80053d6:	9300      	str	r3, [sp, #0]
 80053d8:	e6fe      	b.n	80051d8 <_dtoa_r+0xbc0>
 80053da:	f47f aefd 	bne.w	80051d8 <_dtoa_r+0xbc0>
 80053de:	9b00      	ldr	r3, [sp, #0]
 80053e0:	07da      	lsls	r2, r3, #31
 80053e2:	f57f aef9 	bpl.w	80051d8 <_dtoa_r+0xbc0>
 80053e6:	e7bc      	b.n	8005362 <_dtoa_r+0xd4a>
 80053e8:	4629      	mov	r1, r5
 80053ea:	2300      	movs	r3, #0
 80053ec:	220a      	movs	r2, #10
 80053ee:	4648      	mov	r0, r9
 80053f0:	f001 f838 	bl	8006464 <__multadd>
 80053f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80053f6:	2b00      	cmp	r3, #0
 80053f8:	4605      	mov	r5, r0
 80053fa:	dd09      	ble.n	8005410 <_dtoa_r+0xdf8>
 80053fc:	9309      	str	r3, [sp, #36]	; 0x24
 80053fe:	e484      	b.n	8004d0a <_dtoa_r+0x6f2>
 8005400:	9b02      	ldr	r3, [sp, #8]
 8005402:	2b02      	cmp	r3, #2
 8005404:	dc0e      	bgt.n	8005424 <_dtoa_r+0xe0c>
 8005406:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005408:	e507      	b.n	8004e1a <_dtoa_r+0x802>
 800540a:	2602      	movs	r6, #2
 800540c:	f7ff ba70 	b.w	80048f0 <_dtoa_r+0x2d8>
 8005410:	9b02      	ldr	r3, [sp, #8]
 8005412:	2b02      	cmp	r3, #2
 8005414:	dc06      	bgt.n	8005424 <_dtoa_r+0xe0c>
 8005416:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005418:	e7f0      	b.n	80053fc <_dtoa_r+0xde4>
 800541a:	f43f ac59 	beq.w	8004cd0 <_dtoa_r+0x6b8>
 800541e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005422:	e450      	b.n	8004cc6 <_dtoa_r+0x6ae>
 8005424:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005426:	9309      	str	r3, [sp, #36]	; 0x24
 8005428:	e678      	b.n	800511c <_dtoa_r+0xb04>
 800542a:	bf00      	nop
 800542c:	40240000 	.word	0x40240000
 8005430:	401c0000 	.word	0x401c0000
 8005434:	3fe00000 	.word	0x3fe00000

08005438 <__sflush_r>:
 8005438:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800543c:	b29a      	uxth	r2, r3
 800543e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005442:	460c      	mov	r4, r1
 8005444:	0711      	lsls	r1, r2, #28
 8005446:	4680      	mov	r8, r0
 8005448:	d444      	bmi.n	80054d4 <__sflush_r+0x9c>
 800544a:	6862      	ldr	r2, [r4, #4]
 800544c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005450:	2a00      	cmp	r2, #0
 8005452:	81a3      	strh	r3, [r4, #12]
 8005454:	dd59      	ble.n	800550a <__sflush_r+0xd2>
 8005456:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005458:	2d00      	cmp	r5, #0
 800545a:	d053      	beq.n	8005504 <__sflush_r+0xcc>
 800545c:	2200      	movs	r2, #0
 800545e:	b29b      	uxth	r3, r3
 8005460:	f8d8 6000 	ldr.w	r6, [r8]
 8005464:	69e1      	ldr	r1, [r4, #28]
 8005466:	f8c8 2000 	str.w	r2, [r8]
 800546a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800546e:	f040 8083 	bne.w	8005578 <__sflush_r+0x140>
 8005472:	2301      	movs	r3, #1
 8005474:	4640      	mov	r0, r8
 8005476:	47a8      	blx	r5
 8005478:	1c42      	adds	r2, r0, #1
 800547a:	d04a      	beq.n	8005512 <__sflush_r+0xda>
 800547c:	89a3      	ldrh	r3, [r4, #12]
 800547e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005480:	69e1      	ldr	r1, [r4, #28]
 8005482:	075b      	lsls	r3, r3, #29
 8005484:	d505      	bpl.n	8005492 <__sflush_r+0x5a>
 8005486:	6862      	ldr	r2, [r4, #4]
 8005488:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800548a:	1a80      	subs	r0, r0, r2
 800548c:	b10b      	cbz	r3, 8005492 <__sflush_r+0x5a>
 800548e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005490:	1ac0      	subs	r0, r0, r3
 8005492:	4602      	mov	r2, r0
 8005494:	2300      	movs	r3, #0
 8005496:	4640      	mov	r0, r8
 8005498:	47a8      	blx	r5
 800549a:	1c47      	adds	r7, r0, #1
 800549c:	d045      	beq.n	800552a <__sflush_r+0xf2>
 800549e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054a2:	6922      	ldr	r2, [r4, #16]
 80054a4:	6022      	str	r2, [r4, #0]
 80054a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80054aa:	2200      	movs	r2, #0
 80054ac:	81a3      	strh	r3, [r4, #12]
 80054ae:	04db      	lsls	r3, r3, #19
 80054b0:	6062      	str	r2, [r4, #4]
 80054b2:	d500      	bpl.n	80054b6 <__sflush_r+0x7e>
 80054b4:	6520      	str	r0, [r4, #80]	; 0x50
 80054b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80054b8:	f8c8 6000 	str.w	r6, [r8]
 80054bc:	b311      	cbz	r1, 8005504 <__sflush_r+0xcc>
 80054be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80054c2:	4299      	cmp	r1, r3
 80054c4:	d002      	beq.n	80054cc <__sflush_r+0x94>
 80054c6:	4640      	mov	r0, r8
 80054c8:	f000 f95e 	bl	8005788 <_free_r>
 80054cc:	2000      	movs	r0, #0
 80054ce:	6320      	str	r0, [r4, #48]	; 0x30
 80054d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80054d4:	6926      	ldr	r6, [r4, #16]
 80054d6:	b1ae      	cbz	r6, 8005504 <__sflush_r+0xcc>
 80054d8:	6825      	ldr	r5, [r4, #0]
 80054da:	6026      	str	r6, [r4, #0]
 80054dc:	0792      	lsls	r2, r2, #30
 80054de:	bf0c      	ite	eq
 80054e0:	6963      	ldreq	r3, [r4, #20]
 80054e2:	2300      	movne	r3, #0
 80054e4:	1bad      	subs	r5, r5, r6
 80054e6:	60a3      	str	r3, [r4, #8]
 80054e8:	e00a      	b.n	8005500 <__sflush_r+0xc8>
 80054ea:	462b      	mov	r3, r5
 80054ec:	4632      	mov	r2, r6
 80054ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80054f0:	69e1      	ldr	r1, [r4, #28]
 80054f2:	4640      	mov	r0, r8
 80054f4:	47b8      	blx	r7
 80054f6:	2800      	cmp	r0, #0
 80054f8:	eba5 0500 	sub.w	r5, r5, r0
 80054fc:	4406      	add	r6, r0
 80054fe:	dd2b      	ble.n	8005558 <__sflush_r+0x120>
 8005500:	2d00      	cmp	r5, #0
 8005502:	dcf2      	bgt.n	80054ea <__sflush_r+0xb2>
 8005504:	2000      	movs	r0, #0
 8005506:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800550a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800550c:	2a00      	cmp	r2, #0
 800550e:	dca2      	bgt.n	8005456 <__sflush_r+0x1e>
 8005510:	e7f8      	b.n	8005504 <__sflush_r+0xcc>
 8005512:	f8d8 3000 	ldr.w	r3, [r8]
 8005516:	2b00      	cmp	r3, #0
 8005518:	d0b0      	beq.n	800547c <__sflush_r+0x44>
 800551a:	2b1d      	cmp	r3, #29
 800551c:	d001      	beq.n	8005522 <__sflush_r+0xea>
 800551e:	2b16      	cmp	r3, #22
 8005520:	d12c      	bne.n	800557c <__sflush_r+0x144>
 8005522:	f8c8 6000 	str.w	r6, [r8]
 8005526:	2000      	movs	r0, #0
 8005528:	e7ed      	b.n	8005506 <__sflush_r+0xce>
 800552a:	f8d8 1000 	ldr.w	r1, [r8]
 800552e:	291d      	cmp	r1, #29
 8005530:	d81a      	bhi.n	8005568 <__sflush_r+0x130>
 8005532:	4b15      	ldr	r3, [pc, #84]	; (8005588 <__sflush_r+0x150>)
 8005534:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005538:	40cb      	lsrs	r3, r1
 800553a:	43db      	mvns	r3, r3
 800553c:	f013 0301 	ands.w	r3, r3, #1
 8005540:	d114      	bne.n	800556c <__sflush_r+0x134>
 8005542:	6925      	ldr	r5, [r4, #16]
 8005544:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005548:	e9c4 5300 	strd	r5, r3, [r4]
 800554c:	04d5      	lsls	r5, r2, #19
 800554e:	81a2      	strh	r2, [r4, #12]
 8005550:	d5b1      	bpl.n	80054b6 <__sflush_r+0x7e>
 8005552:	2900      	cmp	r1, #0
 8005554:	d1af      	bne.n	80054b6 <__sflush_r+0x7e>
 8005556:	e7ad      	b.n	80054b4 <__sflush_r+0x7c>
 8005558:	89a3      	ldrh	r3, [r4, #12]
 800555a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800555e:	81a3      	strh	r3, [r4, #12]
 8005560:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005564:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005568:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800556c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005570:	81a2      	strh	r2, [r4, #12]
 8005572:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005576:	e7c6      	b.n	8005506 <__sflush_r+0xce>
 8005578:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800557a:	e782      	b.n	8005482 <__sflush_r+0x4a>
 800557c:	89a3      	ldrh	r3, [r4, #12]
 800557e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005582:	81a3      	strh	r3, [r4, #12]
 8005584:	e7bf      	b.n	8005506 <__sflush_r+0xce>
 8005586:	bf00      	nop
 8005588:	20400001 	.word	0x20400001

0800558c <_fflush_r>:
 800558c:	b538      	push	{r3, r4, r5, lr}
 800558e:	460d      	mov	r5, r1
 8005590:	4604      	mov	r4, r0
 8005592:	b108      	cbz	r0, 8005598 <_fflush_r+0xc>
 8005594:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005596:	b1a3      	cbz	r3, 80055c2 <_fflush_r+0x36>
 8005598:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800559c:	b1b8      	cbz	r0, 80055ce <_fflush_r+0x42>
 800559e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80055a0:	07db      	lsls	r3, r3, #31
 80055a2:	d401      	bmi.n	80055a8 <_fflush_r+0x1c>
 80055a4:	0581      	lsls	r1, r0, #22
 80055a6:	d51a      	bpl.n	80055de <_fflush_r+0x52>
 80055a8:	4620      	mov	r0, r4
 80055aa:	4629      	mov	r1, r5
 80055ac:	f7ff ff44 	bl	8005438 <__sflush_r>
 80055b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80055b2:	07da      	lsls	r2, r3, #31
 80055b4:	4604      	mov	r4, r0
 80055b6:	d402      	bmi.n	80055be <_fflush_r+0x32>
 80055b8:	89ab      	ldrh	r3, [r5, #12]
 80055ba:	059b      	lsls	r3, r3, #22
 80055bc:	d50a      	bpl.n	80055d4 <_fflush_r+0x48>
 80055be:	4620      	mov	r0, r4
 80055c0:	bd38      	pop	{r3, r4, r5, pc}
 80055c2:	f000 f83f 	bl	8005644 <__sinit>
 80055c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80055ca:	2800      	cmp	r0, #0
 80055cc:	d1e7      	bne.n	800559e <_fflush_r+0x12>
 80055ce:	4604      	mov	r4, r0
 80055d0:	4620      	mov	r0, r4
 80055d2:	bd38      	pop	{r3, r4, r5, pc}
 80055d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80055d6:	f000 fb87 	bl	8005ce8 <__retarget_lock_release_recursive>
 80055da:	4620      	mov	r0, r4
 80055dc:	bd38      	pop	{r3, r4, r5, pc}
 80055de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80055e0:	f000 fb80 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 80055e4:	e7e0      	b.n	80055a8 <_fflush_r+0x1c>
 80055e6:	bf00      	nop

080055e8 <std>:
 80055e8:	b510      	push	{r4, lr}
 80055ea:	2300      	movs	r3, #0
 80055ec:	4604      	mov	r4, r0
 80055ee:	8181      	strh	r1, [r0, #12]
 80055f0:	81c2      	strh	r2, [r0, #14]
 80055f2:	e9c0 3300 	strd	r3, r3, [r0]
 80055f6:	6083      	str	r3, [r0, #8]
 80055f8:	6643      	str	r3, [r0, #100]	; 0x64
 80055fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80055fe:	6183      	str	r3, [r0, #24]
 8005600:	4619      	mov	r1, r3
 8005602:	2208      	movs	r2, #8
 8005604:	305c      	adds	r0, #92	; 0x5c
 8005606:	f7fd f8cb 	bl	80027a0 <memset>
 800560a:	4807      	ldr	r0, [pc, #28]	; (8005628 <std+0x40>)
 800560c:	4907      	ldr	r1, [pc, #28]	; (800562c <std+0x44>)
 800560e:	4a08      	ldr	r2, [pc, #32]	; (8005630 <std+0x48>)
 8005610:	4b08      	ldr	r3, [pc, #32]	; (8005634 <std+0x4c>)
 8005612:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005614:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005618:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800561c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005620:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005624:	f000 bb5a 	b.w	8005cdc <__retarget_lock_init_recursive>
 8005628:	08006e01 	.word	0x08006e01
 800562c:	08006e25 	.word	0x08006e25
 8005630:	08006e61 	.word	0x08006e61
 8005634:	08006e81 	.word	0x08006e81

08005638 <_cleanup_r>:
 8005638:	4901      	ldr	r1, [pc, #4]	; (8005640 <_cleanup_r+0x8>)
 800563a:	f000 bb17 	b.w	8005c6c <_fwalk_reent>
 800563e:	bf00      	nop
 8005640:	080070f1 	.word	0x080070f1

08005644 <__sinit>:
 8005644:	b510      	push	{r4, lr}
 8005646:	4604      	mov	r4, r0
 8005648:	4812      	ldr	r0, [pc, #72]	; (8005694 <__sinit+0x50>)
 800564a:	f000 fb4b 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 800564e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005650:	b9d2      	cbnz	r2, 8005688 <__sinit+0x44>
 8005652:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005656:	4810      	ldr	r0, [pc, #64]	; (8005698 <__sinit+0x54>)
 8005658:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800565c:	2103      	movs	r1, #3
 800565e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005662:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005664:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005668:	6860      	ldr	r0, [r4, #4]
 800566a:	2104      	movs	r1, #4
 800566c:	f7ff ffbc 	bl	80055e8 <std>
 8005670:	2201      	movs	r2, #1
 8005672:	2109      	movs	r1, #9
 8005674:	68a0      	ldr	r0, [r4, #8]
 8005676:	f7ff ffb7 	bl	80055e8 <std>
 800567a:	2202      	movs	r2, #2
 800567c:	2112      	movs	r1, #18
 800567e:	68e0      	ldr	r0, [r4, #12]
 8005680:	f7ff ffb2 	bl	80055e8 <std>
 8005684:	2301      	movs	r3, #1
 8005686:	63a3      	str	r3, [r4, #56]	; 0x38
 8005688:	4802      	ldr	r0, [pc, #8]	; (8005694 <__sinit+0x50>)
 800568a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800568e:	f000 bb2b 	b.w	8005ce8 <__retarget_lock_release_recursive>
 8005692:	bf00      	nop
 8005694:	20000c3c 	.word	0x20000c3c
 8005698:	08005639 	.word	0x08005639

0800569c <__sfp_lock_acquire>:
 800569c:	4801      	ldr	r0, [pc, #4]	; (80056a4 <__sfp_lock_acquire+0x8>)
 800569e:	f000 bb21 	b.w	8005ce4 <__retarget_lock_acquire_recursive>
 80056a2:	bf00      	nop
 80056a4:	20000c50 	.word	0x20000c50

080056a8 <__sfp_lock_release>:
 80056a8:	4801      	ldr	r0, [pc, #4]	; (80056b0 <__sfp_lock_release+0x8>)
 80056aa:	f000 bb1d 	b.w	8005ce8 <__retarget_lock_release_recursive>
 80056ae:	bf00      	nop
 80056b0:	20000c50 	.word	0x20000c50

080056b4 <__libc_fini_array>:
 80056b4:	b538      	push	{r3, r4, r5, lr}
 80056b6:	4c0a      	ldr	r4, [pc, #40]	; (80056e0 <__libc_fini_array+0x2c>)
 80056b8:	4d0a      	ldr	r5, [pc, #40]	; (80056e4 <__libc_fini_array+0x30>)
 80056ba:	1b64      	subs	r4, r4, r5
 80056bc:	10a4      	asrs	r4, r4, #2
 80056be:	d00a      	beq.n	80056d6 <__libc_fini_array+0x22>
 80056c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80056c4:	3b01      	subs	r3, #1
 80056c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80056ca:	3c01      	subs	r4, #1
 80056cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80056d0:	4798      	blx	r3
 80056d2:	2c00      	cmp	r4, #0
 80056d4:	d1f9      	bne.n	80056ca <__libc_fini_array+0x16>
 80056d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80056da:	f001 befd 	b.w	80074d8 <_fini>
 80056de:	bf00      	nop
 80056e0:	080079e4 	.word	0x080079e4
 80056e4:	080079e0 	.word	0x080079e0

080056e8 <_malloc_trim_r>:
 80056e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80056ea:	4f24      	ldr	r7, [pc, #144]	; (800577c <_malloc_trim_r+0x94>)
 80056ec:	460c      	mov	r4, r1
 80056ee:	4606      	mov	r6, r0
 80056f0:	f000 fe7c 	bl	80063ec <__malloc_lock>
 80056f4:	68bb      	ldr	r3, [r7, #8]
 80056f6:	685d      	ldr	r5, [r3, #4]
 80056f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80056fc:	310f      	adds	r1, #15
 80056fe:	f025 0503 	bic.w	r5, r5, #3
 8005702:	4429      	add	r1, r5
 8005704:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005708:	f021 010f 	bic.w	r1, r1, #15
 800570c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005710:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005714:	db07      	blt.n	8005726 <_malloc_trim_r+0x3e>
 8005716:	2100      	movs	r1, #0
 8005718:	4630      	mov	r0, r6
 800571a:	f001 fb5f 	bl	8006ddc <_sbrk_r>
 800571e:	68bb      	ldr	r3, [r7, #8]
 8005720:	442b      	add	r3, r5
 8005722:	4298      	cmp	r0, r3
 8005724:	d004      	beq.n	8005730 <_malloc_trim_r+0x48>
 8005726:	4630      	mov	r0, r6
 8005728:	f000 fe66 	bl	80063f8 <__malloc_unlock>
 800572c:	2000      	movs	r0, #0
 800572e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005730:	4261      	negs	r1, r4
 8005732:	4630      	mov	r0, r6
 8005734:	f001 fb52 	bl	8006ddc <_sbrk_r>
 8005738:	3001      	adds	r0, #1
 800573a:	d00d      	beq.n	8005758 <_malloc_trim_r+0x70>
 800573c:	4b10      	ldr	r3, [pc, #64]	; (8005780 <_malloc_trim_r+0x98>)
 800573e:	68ba      	ldr	r2, [r7, #8]
 8005740:	6819      	ldr	r1, [r3, #0]
 8005742:	1b2d      	subs	r5, r5, r4
 8005744:	f045 0501 	orr.w	r5, r5, #1
 8005748:	4630      	mov	r0, r6
 800574a:	1b09      	subs	r1, r1, r4
 800574c:	6055      	str	r5, [r2, #4]
 800574e:	6019      	str	r1, [r3, #0]
 8005750:	f000 fe52 	bl	80063f8 <__malloc_unlock>
 8005754:	2001      	movs	r0, #1
 8005756:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005758:	2100      	movs	r1, #0
 800575a:	4630      	mov	r0, r6
 800575c:	f001 fb3e 	bl	8006ddc <_sbrk_r>
 8005760:	68ba      	ldr	r2, [r7, #8]
 8005762:	1a83      	subs	r3, r0, r2
 8005764:	2b0f      	cmp	r3, #15
 8005766:	ddde      	ble.n	8005726 <_malloc_trim_r+0x3e>
 8005768:	4c06      	ldr	r4, [pc, #24]	; (8005784 <_malloc_trim_r+0x9c>)
 800576a:	4905      	ldr	r1, [pc, #20]	; (8005780 <_malloc_trim_r+0x98>)
 800576c:	6824      	ldr	r4, [r4, #0]
 800576e:	f043 0301 	orr.w	r3, r3, #1
 8005772:	1b00      	subs	r0, r0, r4
 8005774:	6053      	str	r3, [r2, #4]
 8005776:	6008      	str	r0, [r1, #0]
 8005778:	e7d5      	b.n	8005726 <_malloc_trim_r+0x3e>
 800577a:	bf00      	nop
 800577c:	20000594 	.word	0x20000594
 8005780:	20000bb4 	.word	0x20000bb4
 8005784:	2000099c 	.word	0x2000099c

08005788 <_free_r>:
 8005788:	2900      	cmp	r1, #0
 800578a:	d053      	beq.n	8005834 <_free_r+0xac>
 800578c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800578e:	460c      	mov	r4, r1
 8005790:	4606      	mov	r6, r0
 8005792:	f000 fe2b 	bl	80063ec <__malloc_lock>
 8005796:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800579a:	4f71      	ldr	r7, [pc, #452]	; (8005960 <_free_r+0x1d8>)
 800579c:	f02c 0101 	bic.w	r1, ip, #1
 80057a0:	f1a4 0508 	sub.w	r5, r4, #8
 80057a4:	186b      	adds	r3, r5, r1
 80057a6:	68b8      	ldr	r0, [r7, #8]
 80057a8:	685a      	ldr	r2, [r3, #4]
 80057aa:	4298      	cmp	r0, r3
 80057ac:	f022 0203 	bic.w	r2, r2, #3
 80057b0:	d053      	beq.n	800585a <_free_r+0xd2>
 80057b2:	f01c 0f01 	tst.w	ip, #1
 80057b6:	605a      	str	r2, [r3, #4]
 80057b8:	eb03 0002 	add.w	r0, r3, r2
 80057bc:	d13b      	bne.n	8005836 <_free_r+0xae>
 80057be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80057c2:	6840      	ldr	r0, [r0, #4]
 80057c4:	eba5 050c 	sub.w	r5, r5, ip
 80057c8:	f107 0e08 	add.w	lr, r7, #8
 80057cc:	68ac      	ldr	r4, [r5, #8]
 80057ce:	4574      	cmp	r4, lr
 80057d0:	4461      	add	r1, ip
 80057d2:	f000 0001 	and.w	r0, r0, #1
 80057d6:	d075      	beq.n	80058c4 <_free_r+0x13c>
 80057d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80057dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80057e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80057e4:	b360      	cbz	r0, 8005840 <_free_r+0xb8>
 80057e6:	f041 0301 	orr.w	r3, r1, #1
 80057ea:	606b      	str	r3, [r5, #4]
 80057ec:	5069      	str	r1, [r5, r1]
 80057ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80057f2:	d350      	bcc.n	8005896 <_free_r+0x10e>
 80057f4:	0a4b      	lsrs	r3, r1, #9
 80057f6:	2b04      	cmp	r3, #4
 80057f8:	d870      	bhi.n	80058dc <_free_r+0x154>
 80057fa:	098b      	lsrs	r3, r1, #6
 80057fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005800:	00e4      	lsls	r4, r4, #3
 8005802:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005806:	1938      	adds	r0, r7, r4
 8005808:	593b      	ldr	r3, [r7, r4]
 800580a:	3808      	subs	r0, #8
 800580c:	4298      	cmp	r0, r3
 800580e:	d078      	beq.n	8005902 <_free_r+0x17a>
 8005810:	685a      	ldr	r2, [r3, #4]
 8005812:	f022 0203 	bic.w	r2, r2, #3
 8005816:	428a      	cmp	r2, r1
 8005818:	d971      	bls.n	80058fe <_free_r+0x176>
 800581a:	689b      	ldr	r3, [r3, #8]
 800581c:	4298      	cmp	r0, r3
 800581e:	d1f7      	bne.n	8005810 <_free_r+0x88>
 8005820:	68c3      	ldr	r3, [r0, #12]
 8005822:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005826:	609d      	str	r5, [r3, #8]
 8005828:	60c5      	str	r5, [r0, #12]
 800582a:	4630      	mov	r0, r6
 800582c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005830:	f000 bde2 	b.w	80063f8 <__malloc_unlock>
 8005834:	4770      	bx	lr
 8005836:	6840      	ldr	r0, [r0, #4]
 8005838:	f000 0001 	and.w	r0, r0, #1
 800583c:	2800      	cmp	r0, #0
 800583e:	d1d2      	bne.n	80057e6 <_free_r+0x5e>
 8005840:	6898      	ldr	r0, [r3, #8]
 8005842:	4c48      	ldr	r4, [pc, #288]	; (8005964 <_free_r+0x1dc>)
 8005844:	4411      	add	r1, r2
 8005846:	42a0      	cmp	r0, r4
 8005848:	f041 0201 	orr.w	r2, r1, #1
 800584c:	d062      	beq.n	8005914 <_free_r+0x18c>
 800584e:	68db      	ldr	r3, [r3, #12]
 8005850:	60c3      	str	r3, [r0, #12]
 8005852:	6098      	str	r0, [r3, #8]
 8005854:	606a      	str	r2, [r5, #4]
 8005856:	5069      	str	r1, [r5, r1]
 8005858:	e7c9      	b.n	80057ee <_free_r+0x66>
 800585a:	f01c 0f01 	tst.w	ip, #1
 800585e:	440a      	add	r2, r1
 8005860:	d107      	bne.n	8005872 <_free_r+0xea>
 8005862:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005866:	1aed      	subs	r5, r5, r3
 8005868:	441a      	add	r2, r3
 800586a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800586e:	60cb      	str	r3, [r1, #12]
 8005870:	6099      	str	r1, [r3, #8]
 8005872:	4b3d      	ldr	r3, [pc, #244]	; (8005968 <_free_r+0x1e0>)
 8005874:	681b      	ldr	r3, [r3, #0]
 8005876:	f042 0101 	orr.w	r1, r2, #1
 800587a:	4293      	cmp	r3, r2
 800587c:	6069      	str	r1, [r5, #4]
 800587e:	60bd      	str	r5, [r7, #8]
 8005880:	d804      	bhi.n	800588c <_free_r+0x104>
 8005882:	4b3a      	ldr	r3, [pc, #232]	; (800596c <_free_r+0x1e4>)
 8005884:	4630      	mov	r0, r6
 8005886:	6819      	ldr	r1, [r3, #0]
 8005888:	f7ff ff2e 	bl	80056e8 <_malloc_trim_r>
 800588c:	4630      	mov	r0, r6
 800588e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005892:	f000 bdb1 	b.w	80063f8 <__malloc_unlock>
 8005896:	08c9      	lsrs	r1, r1, #3
 8005898:	6878      	ldr	r0, [r7, #4]
 800589a:	1c4a      	adds	r2, r1, #1
 800589c:	2301      	movs	r3, #1
 800589e:	1089      	asrs	r1, r1, #2
 80058a0:	408b      	lsls	r3, r1
 80058a2:	4303      	orrs	r3, r0
 80058a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80058a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80058ac:	607b      	str	r3, [r7, #4]
 80058ae:	3908      	subs	r1, #8
 80058b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80058b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80058b8:	60c5      	str	r5, [r0, #12]
 80058ba:	4630      	mov	r0, r6
 80058bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80058c0:	f000 bd9a 	b.w	80063f8 <__malloc_unlock>
 80058c4:	2800      	cmp	r0, #0
 80058c6:	d145      	bne.n	8005954 <_free_r+0x1cc>
 80058c8:	440a      	add	r2, r1
 80058ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80058ce:	f042 0001 	orr.w	r0, r2, #1
 80058d2:	60cb      	str	r3, [r1, #12]
 80058d4:	6099      	str	r1, [r3, #8]
 80058d6:	6068      	str	r0, [r5, #4]
 80058d8:	50aa      	str	r2, [r5, r2]
 80058da:	e7d7      	b.n	800588c <_free_r+0x104>
 80058dc:	2b14      	cmp	r3, #20
 80058de:	d908      	bls.n	80058f2 <_free_r+0x16a>
 80058e0:	2b54      	cmp	r3, #84	; 0x54
 80058e2:	d81e      	bhi.n	8005922 <_free_r+0x19a>
 80058e4:	0b0b      	lsrs	r3, r1, #12
 80058e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80058ea:	00e4      	lsls	r4, r4, #3
 80058ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80058f0:	e789      	b.n	8005806 <_free_r+0x7e>
 80058f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80058f6:	00e4      	lsls	r4, r4, #3
 80058f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80058fc:	e783      	b.n	8005806 <_free_r+0x7e>
 80058fe:	4618      	mov	r0, r3
 8005900:	e78e      	b.n	8005820 <_free_r+0x98>
 8005902:	1093      	asrs	r3, r2, #2
 8005904:	6879      	ldr	r1, [r7, #4]
 8005906:	2201      	movs	r2, #1
 8005908:	fa02 f303 	lsl.w	r3, r2, r3
 800590c:	430b      	orrs	r3, r1
 800590e:	607b      	str	r3, [r7, #4]
 8005910:	4603      	mov	r3, r0
 8005912:	e786      	b.n	8005822 <_free_r+0x9a>
 8005914:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005918:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800591c:	606a      	str	r2, [r5, #4]
 800591e:	5069      	str	r1, [r5, r1]
 8005920:	e7b4      	b.n	800588c <_free_r+0x104>
 8005922:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005926:	d806      	bhi.n	8005936 <_free_r+0x1ae>
 8005928:	0bcb      	lsrs	r3, r1, #15
 800592a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800592e:	00e4      	lsls	r4, r4, #3
 8005930:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005934:	e767      	b.n	8005806 <_free_r+0x7e>
 8005936:	f240 5254 	movw	r2, #1364	; 0x554
 800593a:	4293      	cmp	r3, r2
 800593c:	d806      	bhi.n	800594c <_free_r+0x1c4>
 800593e:	0c8b      	lsrs	r3, r1, #18
 8005940:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005944:	00e4      	lsls	r4, r4, #3
 8005946:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800594a:	e75c      	b.n	8005806 <_free_r+0x7e>
 800594c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005950:	227e      	movs	r2, #126	; 0x7e
 8005952:	e758      	b.n	8005806 <_free_r+0x7e>
 8005954:	f041 0201 	orr.w	r2, r1, #1
 8005958:	606a      	str	r2, [r5, #4]
 800595a:	6019      	str	r1, [r3, #0]
 800595c:	e796      	b.n	800588c <_free_r+0x104>
 800595e:	bf00      	nop
 8005960:	20000594 	.word	0x20000594
 8005964:	2000059c 	.word	0x2000059c
 8005968:	200009a0 	.word	0x200009a0
 800596c:	20000be4 	.word	0x20000be4

08005970 <__sfvwrite_r>:
 8005970:	6893      	ldr	r3, [r2, #8]
 8005972:	2b00      	cmp	r3, #0
 8005974:	f000 80e4 	beq.w	8005b40 <__sfvwrite_r+0x1d0>
 8005978:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800597c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005980:	b29b      	uxth	r3, r3
 8005982:	460c      	mov	r4, r1
 8005984:	0719      	lsls	r1, r3, #28
 8005986:	b083      	sub	sp, #12
 8005988:	4682      	mov	sl, r0
 800598a:	4690      	mov	r8, r2
 800598c:	d535      	bpl.n	80059fa <__sfvwrite_r+0x8a>
 800598e:	6922      	ldr	r2, [r4, #16]
 8005990:	b39a      	cbz	r2, 80059fa <__sfvwrite_r+0x8a>
 8005992:	f013 0202 	ands.w	r2, r3, #2
 8005996:	f8d8 6000 	ldr.w	r6, [r8]
 800599a:	d03d      	beq.n	8005a18 <__sfvwrite_r+0xa8>
 800599c:	2700      	movs	r7, #0
 800599e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80059a2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80059a6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005c68 <__sfvwrite_r+0x2f8>
 80059aa:	463d      	mov	r5, r7
 80059ac:	454d      	cmp	r5, r9
 80059ae:	462b      	mov	r3, r5
 80059b0:	463a      	mov	r2, r7
 80059b2:	bf28      	it	cs
 80059b4:	464b      	movcs	r3, r9
 80059b6:	4661      	mov	r1, ip
 80059b8:	4650      	mov	r0, sl
 80059ba:	b1d5      	cbz	r5, 80059f2 <__sfvwrite_r+0x82>
 80059bc:	47d8      	blx	fp
 80059be:	2800      	cmp	r0, #0
 80059c0:	f340 80c6 	ble.w	8005b50 <__sfvwrite_r+0x1e0>
 80059c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80059c8:	1a1b      	subs	r3, r3, r0
 80059ca:	4407      	add	r7, r0
 80059cc:	1a2d      	subs	r5, r5, r0
 80059ce:	f8c8 3008 	str.w	r3, [r8, #8]
 80059d2:	2b00      	cmp	r3, #0
 80059d4:	f000 80b0 	beq.w	8005b38 <__sfvwrite_r+0x1c8>
 80059d8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80059dc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80059e0:	454d      	cmp	r5, r9
 80059e2:	462b      	mov	r3, r5
 80059e4:	463a      	mov	r2, r7
 80059e6:	bf28      	it	cs
 80059e8:	464b      	movcs	r3, r9
 80059ea:	4661      	mov	r1, ip
 80059ec:	4650      	mov	r0, sl
 80059ee:	2d00      	cmp	r5, #0
 80059f0:	d1e4      	bne.n	80059bc <__sfvwrite_r+0x4c>
 80059f2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80059f6:	3608      	adds	r6, #8
 80059f8:	e7d8      	b.n	80059ac <__sfvwrite_r+0x3c>
 80059fa:	4621      	mov	r1, r4
 80059fc:	4650      	mov	r0, sl
 80059fe:	f7fe fd03 	bl	8004408 <__swsetup_r>
 8005a02:	2800      	cmp	r0, #0
 8005a04:	f040 812a 	bne.w	8005c5c <__sfvwrite_r+0x2ec>
 8005a08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a0c:	f8d8 6000 	ldr.w	r6, [r8]
 8005a10:	b29b      	uxth	r3, r3
 8005a12:	f013 0202 	ands.w	r2, r3, #2
 8005a16:	d1c1      	bne.n	800599c <__sfvwrite_r+0x2c>
 8005a18:	f013 0901 	ands.w	r9, r3, #1
 8005a1c:	d15d      	bne.n	8005ada <__sfvwrite_r+0x16a>
 8005a1e:	68a7      	ldr	r7, [r4, #8]
 8005a20:	6820      	ldr	r0, [r4, #0]
 8005a22:	464d      	mov	r5, r9
 8005a24:	2d00      	cmp	r5, #0
 8005a26:	d054      	beq.n	8005ad2 <__sfvwrite_r+0x162>
 8005a28:	059a      	lsls	r2, r3, #22
 8005a2a:	f140 809b 	bpl.w	8005b64 <__sfvwrite_r+0x1f4>
 8005a2e:	42af      	cmp	r7, r5
 8005a30:	46bb      	mov	fp, r7
 8005a32:	f200 80d8 	bhi.w	8005be6 <__sfvwrite_r+0x276>
 8005a36:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005a3a:	d02f      	beq.n	8005a9c <__sfvwrite_r+0x12c>
 8005a3c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005a40:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005a44:	eba0 0b01 	sub.w	fp, r0, r1
 8005a48:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005a4c:	1c68      	adds	r0, r5, #1
 8005a4e:	107f      	asrs	r7, r7, #1
 8005a50:	4458      	add	r0, fp
 8005a52:	42b8      	cmp	r0, r7
 8005a54:	463a      	mov	r2, r7
 8005a56:	bf84      	itt	hi
 8005a58:	4607      	movhi	r7, r0
 8005a5a:	463a      	movhi	r2, r7
 8005a5c:	055b      	lsls	r3, r3, #21
 8005a5e:	f140 80d3 	bpl.w	8005c08 <__sfvwrite_r+0x298>
 8005a62:	4611      	mov	r1, r2
 8005a64:	4650      	mov	r0, sl
 8005a66:	f000 f9b9 	bl	8005ddc <_malloc_r>
 8005a6a:	2800      	cmp	r0, #0
 8005a6c:	f000 80f0 	beq.w	8005c50 <__sfvwrite_r+0x2e0>
 8005a70:	465a      	mov	r2, fp
 8005a72:	6921      	ldr	r1, [r4, #16]
 8005a74:	9001      	str	r0, [sp, #4]
 8005a76:	f7fb f9af 	bl	8000dd8 <memcpy>
 8005a7a:	89a2      	ldrh	r2, [r4, #12]
 8005a7c:	9b01      	ldr	r3, [sp, #4]
 8005a7e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005a82:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005a86:	81a2      	strh	r2, [r4, #12]
 8005a88:	eba7 020b 	sub.w	r2, r7, fp
 8005a8c:	eb03 000b 	add.w	r0, r3, fp
 8005a90:	6167      	str	r7, [r4, #20]
 8005a92:	6123      	str	r3, [r4, #16]
 8005a94:	6020      	str	r0, [r4, #0]
 8005a96:	60a2      	str	r2, [r4, #8]
 8005a98:	462f      	mov	r7, r5
 8005a9a:	46ab      	mov	fp, r5
 8005a9c:	465a      	mov	r2, fp
 8005a9e:	4649      	mov	r1, r9
 8005aa0:	f000 fc40 	bl	8006324 <memmove>
 8005aa4:	68a2      	ldr	r2, [r4, #8]
 8005aa6:	6823      	ldr	r3, [r4, #0]
 8005aa8:	1bd2      	subs	r2, r2, r7
 8005aaa:	445b      	add	r3, fp
 8005aac:	462f      	mov	r7, r5
 8005aae:	60a2      	str	r2, [r4, #8]
 8005ab0:	6023      	str	r3, [r4, #0]
 8005ab2:	2500      	movs	r5, #0
 8005ab4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ab8:	1bdb      	subs	r3, r3, r7
 8005aba:	44b9      	add	r9, r7
 8005abc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005ac0:	2b00      	cmp	r3, #0
 8005ac2:	d039      	beq.n	8005b38 <__sfvwrite_r+0x1c8>
 8005ac4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ac8:	68a7      	ldr	r7, [r4, #8]
 8005aca:	6820      	ldr	r0, [r4, #0]
 8005acc:	b29b      	uxth	r3, r3
 8005ace:	2d00      	cmp	r5, #0
 8005ad0:	d1aa      	bne.n	8005a28 <__sfvwrite_r+0xb8>
 8005ad2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005ad6:	3608      	adds	r6, #8
 8005ad8:	e7a4      	b.n	8005a24 <__sfvwrite_r+0xb4>
 8005ada:	4633      	mov	r3, r6
 8005adc:	4691      	mov	r9, r2
 8005ade:	4610      	mov	r0, r2
 8005ae0:	4617      	mov	r7, r2
 8005ae2:	464e      	mov	r6, r9
 8005ae4:	469b      	mov	fp, r3
 8005ae6:	2f00      	cmp	r7, #0
 8005ae8:	d06b      	beq.n	8005bc2 <__sfvwrite_r+0x252>
 8005aea:	2800      	cmp	r0, #0
 8005aec:	d071      	beq.n	8005bd2 <__sfvwrite_r+0x262>
 8005aee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005af2:	6820      	ldr	r0, [r4, #0]
 8005af4:	45b9      	cmp	r9, r7
 8005af6:	464b      	mov	r3, r9
 8005af8:	bf28      	it	cs
 8005afa:	463b      	movcs	r3, r7
 8005afc:	4288      	cmp	r0, r1
 8005afe:	d903      	bls.n	8005b08 <__sfvwrite_r+0x198>
 8005b00:	68a5      	ldr	r5, [r4, #8]
 8005b02:	4415      	add	r5, r2
 8005b04:	42ab      	cmp	r3, r5
 8005b06:	dc71      	bgt.n	8005bec <__sfvwrite_r+0x27c>
 8005b08:	429a      	cmp	r2, r3
 8005b0a:	f300 8093 	bgt.w	8005c34 <__sfvwrite_r+0x2c4>
 8005b0e:	4613      	mov	r3, r2
 8005b10:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005b12:	69e1      	ldr	r1, [r4, #28]
 8005b14:	4632      	mov	r2, r6
 8005b16:	4650      	mov	r0, sl
 8005b18:	47a8      	blx	r5
 8005b1a:	1e05      	subs	r5, r0, #0
 8005b1c:	dd18      	ble.n	8005b50 <__sfvwrite_r+0x1e0>
 8005b1e:	ebb9 0905 	subs.w	r9, r9, r5
 8005b22:	d00f      	beq.n	8005b44 <__sfvwrite_r+0x1d4>
 8005b24:	2001      	movs	r0, #1
 8005b26:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b2a:	1b5b      	subs	r3, r3, r5
 8005b2c:	442e      	add	r6, r5
 8005b2e:	1b7f      	subs	r7, r7, r5
 8005b30:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b34:	2b00      	cmp	r3, #0
 8005b36:	d1d6      	bne.n	8005ae6 <__sfvwrite_r+0x176>
 8005b38:	2000      	movs	r0, #0
 8005b3a:	b003      	add	sp, #12
 8005b3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b40:	2000      	movs	r0, #0
 8005b42:	4770      	bx	lr
 8005b44:	4621      	mov	r1, r4
 8005b46:	4650      	mov	r0, sl
 8005b48:	f7ff fd20 	bl	800558c <_fflush_r>
 8005b4c:	2800      	cmp	r0, #0
 8005b4e:	d0ea      	beq.n	8005b26 <__sfvwrite_r+0x1b6>
 8005b50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005b58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b5c:	81a3      	strh	r3, [r4, #12]
 8005b5e:	b003      	add	sp, #12
 8005b60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b64:	6923      	ldr	r3, [r4, #16]
 8005b66:	4283      	cmp	r3, r0
 8005b68:	d315      	bcc.n	8005b96 <__sfvwrite_r+0x226>
 8005b6a:	6961      	ldr	r1, [r4, #20]
 8005b6c:	42a9      	cmp	r1, r5
 8005b6e:	d812      	bhi.n	8005b96 <__sfvwrite_r+0x226>
 8005b70:	4b3c      	ldr	r3, [pc, #240]	; (8005c64 <__sfvwrite_r+0x2f4>)
 8005b72:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005b74:	429d      	cmp	r5, r3
 8005b76:	bf94      	ite	ls
 8005b78:	462b      	movls	r3, r5
 8005b7a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005b7e:	464a      	mov	r2, r9
 8005b80:	fb93 f3f1 	sdiv	r3, r3, r1
 8005b84:	4650      	mov	r0, sl
 8005b86:	fb01 f303 	mul.w	r3, r1, r3
 8005b8a:	69e1      	ldr	r1, [r4, #28]
 8005b8c:	47b8      	blx	r7
 8005b8e:	1e07      	subs	r7, r0, #0
 8005b90:	ddde      	ble.n	8005b50 <__sfvwrite_r+0x1e0>
 8005b92:	1bed      	subs	r5, r5, r7
 8005b94:	e78e      	b.n	8005ab4 <__sfvwrite_r+0x144>
 8005b96:	42af      	cmp	r7, r5
 8005b98:	bf28      	it	cs
 8005b9a:	462f      	movcs	r7, r5
 8005b9c:	463a      	mov	r2, r7
 8005b9e:	4649      	mov	r1, r9
 8005ba0:	f000 fbc0 	bl	8006324 <memmove>
 8005ba4:	68a3      	ldr	r3, [r4, #8]
 8005ba6:	6822      	ldr	r2, [r4, #0]
 8005ba8:	1bdb      	subs	r3, r3, r7
 8005baa:	443a      	add	r2, r7
 8005bac:	60a3      	str	r3, [r4, #8]
 8005bae:	6022      	str	r2, [r4, #0]
 8005bb0:	2b00      	cmp	r3, #0
 8005bb2:	d1ee      	bne.n	8005b92 <__sfvwrite_r+0x222>
 8005bb4:	4621      	mov	r1, r4
 8005bb6:	4650      	mov	r0, sl
 8005bb8:	f7ff fce8 	bl	800558c <_fflush_r>
 8005bbc:	2800      	cmp	r0, #0
 8005bbe:	d0e8      	beq.n	8005b92 <__sfvwrite_r+0x222>
 8005bc0:	e7c6      	b.n	8005b50 <__sfvwrite_r+0x1e0>
 8005bc2:	f10b 0308 	add.w	r3, fp, #8
 8005bc6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005bca:	469b      	mov	fp, r3
 8005bcc:	3308      	adds	r3, #8
 8005bce:	2f00      	cmp	r7, #0
 8005bd0:	d0f9      	beq.n	8005bc6 <__sfvwrite_r+0x256>
 8005bd2:	463a      	mov	r2, r7
 8005bd4:	210a      	movs	r1, #10
 8005bd6:	4630      	mov	r0, r6
 8005bd8:	f7fb fa22 	bl	8001020 <memchr>
 8005bdc:	b338      	cbz	r0, 8005c2e <__sfvwrite_r+0x2be>
 8005bde:	3001      	adds	r0, #1
 8005be0:	eba0 0906 	sub.w	r9, r0, r6
 8005be4:	e783      	b.n	8005aee <__sfvwrite_r+0x17e>
 8005be6:	462f      	mov	r7, r5
 8005be8:	46ab      	mov	fp, r5
 8005bea:	e757      	b.n	8005a9c <__sfvwrite_r+0x12c>
 8005bec:	4631      	mov	r1, r6
 8005bee:	462a      	mov	r2, r5
 8005bf0:	f000 fb98 	bl	8006324 <memmove>
 8005bf4:	6823      	ldr	r3, [r4, #0]
 8005bf6:	442b      	add	r3, r5
 8005bf8:	6023      	str	r3, [r4, #0]
 8005bfa:	4621      	mov	r1, r4
 8005bfc:	4650      	mov	r0, sl
 8005bfe:	f7ff fcc5 	bl	800558c <_fflush_r>
 8005c02:	2800      	cmp	r0, #0
 8005c04:	d08b      	beq.n	8005b1e <__sfvwrite_r+0x1ae>
 8005c06:	e7a3      	b.n	8005b50 <__sfvwrite_r+0x1e0>
 8005c08:	4650      	mov	r0, sl
 8005c0a:	f000 ff05 	bl	8006a18 <_realloc_r>
 8005c0e:	4603      	mov	r3, r0
 8005c10:	2800      	cmp	r0, #0
 8005c12:	f47f af39 	bne.w	8005a88 <__sfvwrite_r+0x118>
 8005c16:	6921      	ldr	r1, [r4, #16]
 8005c18:	4650      	mov	r0, sl
 8005c1a:	f7ff fdb5 	bl	8005788 <_free_r>
 8005c1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c22:	220c      	movs	r2, #12
 8005c24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005c28:	f8ca 2000 	str.w	r2, [sl]
 8005c2c:	e792      	b.n	8005b54 <__sfvwrite_r+0x1e4>
 8005c2e:	f107 0901 	add.w	r9, r7, #1
 8005c32:	e75c      	b.n	8005aee <__sfvwrite_r+0x17e>
 8005c34:	461a      	mov	r2, r3
 8005c36:	4631      	mov	r1, r6
 8005c38:	9301      	str	r3, [sp, #4]
 8005c3a:	f000 fb73 	bl	8006324 <memmove>
 8005c3e:	9b01      	ldr	r3, [sp, #4]
 8005c40:	68a1      	ldr	r1, [r4, #8]
 8005c42:	6822      	ldr	r2, [r4, #0]
 8005c44:	1ac9      	subs	r1, r1, r3
 8005c46:	441a      	add	r2, r3
 8005c48:	60a1      	str	r1, [r4, #8]
 8005c4a:	6022      	str	r2, [r4, #0]
 8005c4c:	461d      	mov	r5, r3
 8005c4e:	e766      	b.n	8005b1e <__sfvwrite_r+0x1ae>
 8005c50:	230c      	movs	r3, #12
 8005c52:	f8ca 3000 	str.w	r3, [sl]
 8005c56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c5a:	e77b      	b.n	8005b54 <__sfvwrite_r+0x1e4>
 8005c5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c60:	e76b      	b.n	8005b3a <__sfvwrite_r+0x1ca>
 8005c62:	bf00      	nop
 8005c64:	7ffffffe 	.word	0x7ffffffe
 8005c68:	7ffffc00 	.word	0x7ffffc00

08005c6c <_fwalk_reent>:
 8005c6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005c70:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005c74:	d01f      	beq.n	8005cb6 <_fwalk_reent+0x4a>
 8005c76:	4688      	mov	r8, r1
 8005c78:	4606      	mov	r6, r0
 8005c7a:	f04f 0900 	mov.w	r9, #0
 8005c7e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005c82:	3d01      	subs	r5, #1
 8005c84:	d411      	bmi.n	8005caa <_fwalk_reent+0x3e>
 8005c86:	89a3      	ldrh	r3, [r4, #12]
 8005c88:	2b01      	cmp	r3, #1
 8005c8a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005c8e:	4621      	mov	r1, r4
 8005c90:	4630      	mov	r0, r6
 8005c92:	d906      	bls.n	8005ca2 <_fwalk_reent+0x36>
 8005c94:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005c98:	3301      	adds	r3, #1
 8005c9a:	d002      	beq.n	8005ca2 <_fwalk_reent+0x36>
 8005c9c:	47c0      	blx	r8
 8005c9e:	ea49 0900 	orr.w	r9, r9, r0
 8005ca2:	1c6b      	adds	r3, r5, #1
 8005ca4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005ca8:	d1ed      	bne.n	8005c86 <_fwalk_reent+0x1a>
 8005caa:	683f      	ldr	r7, [r7, #0]
 8005cac:	2f00      	cmp	r7, #0
 8005cae:	d1e6      	bne.n	8005c7e <_fwalk_reent+0x12>
 8005cb0:	4648      	mov	r0, r9
 8005cb2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005cb6:	46b9      	mov	r9, r7
 8005cb8:	4648      	mov	r0, r9
 8005cba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005cbe:	bf00      	nop

08005cc0 <_localeconv_r>:
 8005cc0:	4a04      	ldr	r2, [pc, #16]	; (8005cd4 <_localeconv_r+0x14>)
 8005cc2:	4b05      	ldr	r3, [pc, #20]	; (8005cd8 <_localeconv_r+0x18>)
 8005cc4:	6812      	ldr	r2, [r2, #0]
 8005cc6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005cc8:	2800      	cmp	r0, #0
 8005cca:	bf08      	it	eq
 8005ccc:	4618      	moveq	r0, r3
 8005cce:	30f0      	adds	r0, #240	; 0xf0
 8005cd0:	4770      	bx	lr
 8005cd2:	bf00      	nop
 8005cd4:	20000160 	.word	0x20000160
 8005cd8:	200009a4 	.word	0x200009a4

08005cdc <__retarget_lock_init_recursive>:
 8005cdc:	4770      	bx	lr
 8005cde:	bf00      	nop

08005ce0 <__retarget_lock_close_recursive>:
 8005ce0:	4770      	bx	lr
 8005ce2:	bf00      	nop

08005ce4 <__retarget_lock_acquire_recursive>:
 8005ce4:	4770      	bx	lr
 8005ce6:	bf00      	nop

08005ce8 <__retarget_lock_release_recursive>:
 8005ce8:	4770      	bx	lr
 8005cea:	bf00      	nop

08005cec <__swhatbuf_r>:
 8005cec:	b570      	push	{r4, r5, r6, lr}
 8005cee:	460c      	mov	r4, r1
 8005cf0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005cf4:	2900      	cmp	r1, #0
 8005cf6:	b096      	sub	sp, #88	; 0x58
 8005cf8:	4615      	mov	r5, r2
 8005cfa:	461e      	mov	r6, r3
 8005cfc:	da0f      	bge.n	8005d1e <__swhatbuf_r+0x32>
 8005cfe:	89a2      	ldrh	r2, [r4, #12]
 8005d00:	2300      	movs	r3, #0
 8005d02:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005d06:	6033      	str	r3, [r6, #0]
 8005d08:	d104      	bne.n	8005d14 <__swhatbuf_r+0x28>
 8005d0a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005d0e:	602b      	str	r3, [r5, #0]
 8005d10:	b016      	add	sp, #88	; 0x58
 8005d12:	bd70      	pop	{r4, r5, r6, pc}
 8005d14:	2240      	movs	r2, #64	; 0x40
 8005d16:	4618      	mov	r0, r3
 8005d18:	602a      	str	r2, [r5, #0]
 8005d1a:	b016      	add	sp, #88	; 0x58
 8005d1c:	bd70      	pop	{r4, r5, r6, pc}
 8005d1e:	466a      	mov	r2, sp
 8005d20:	f001 fad0 	bl	80072c4 <_fstat_r>
 8005d24:	2800      	cmp	r0, #0
 8005d26:	dbea      	blt.n	8005cfe <__swhatbuf_r+0x12>
 8005d28:	9b01      	ldr	r3, [sp, #4]
 8005d2a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005d2e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005d32:	fab3 f383 	clz	r3, r3
 8005d36:	095b      	lsrs	r3, r3, #5
 8005d38:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005d3c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005d40:	6033      	str	r3, [r6, #0]
 8005d42:	602a      	str	r2, [r5, #0]
 8005d44:	b016      	add	sp, #88	; 0x58
 8005d46:	bd70      	pop	{r4, r5, r6, pc}

08005d48 <__smakebuf_r>:
 8005d48:	898a      	ldrh	r2, [r1, #12]
 8005d4a:	0792      	lsls	r2, r2, #30
 8005d4c:	460b      	mov	r3, r1
 8005d4e:	d506      	bpl.n	8005d5e <__smakebuf_r+0x16>
 8005d50:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005d54:	2101      	movs	r1, #1
 8005d56:	601a      	str	r2, [r3, #0]
 8005d58:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005d5c:	4770      	bx	lr
 8005d5e:	b570      	push	{r4, r5, r6, lr}
 8005d60:	b082      	sub	sp, #8
 8005d62:	ab01      	add	r3, sp, #4
 8005d64:	466a      	mov	r2, sp
 8005d66:	460c      	mov	r4, r1
 8005d68:	4605      	mov	r5, r0
 8005d6a:	f7ff ffbf 	bl	8005cec <__swhatbuf_r>
 8005d6e:	9900      	ldr	r1, [sp, #0]
 8005d70:	4606      	mov	r6, r0
 8005d72:	4628      	mov	r0, r5
 8005d74:	f000 f832 	bl	8005ddc <_malloc_r>
 8005d78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d7c:	b1d8      	cbz	r0, 8005db6 <__smakebuf_r+0x6e>
 8005d7e:	4916      	ldr	r1, [pc, #88]	; (8005dd8 <__smakebuf_r+0x90>)
 8005d80:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005d82:	9a01      	ldr	r2, [sp, #4]
 8005d84:	9900      	ldr	r1, [sp, #0]
 8005d86:	6020      	str	r0, [r4, #0]
 8005d88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005d8c:	81a3      	strh	r3, [r4, #12]
 8005d8e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005d92:	b91a      	cbnz	r2, 8005d9c <__smakebuf_r+0x54>
 8005d94:	4333      	orrs	r3, r6
 8005d96:	81a3      	strh	r3, [r4, #12]
 8005d98:	b002      	add	sp, #8
 8005d9a:	bd70      	pop	{r4, r5, r6, pc}
 8005d9c:	4628      	mov	r0, r5
 8005d9e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005da2:	f001 faa3 	bl	80072ec <_isatty_r>
 8005da6:	b1a0      	cbz	r0, 8005dd2 <__smakebuf_r+0x8a>
 8005da8:	89a3      	ldrh	r3, [r4, #12]
 8005daa:	f023 0303 	bic.w	r3, r3, #3
 8005dae:	f043 0301 	orr.w	r3, r3, #1
 8005db2:	b21b      	sxth	r3, r3
 8005db4:	e7ee      	b.n	8005d94 <__smakebuf_r+0x4c>
 8005db6:	059a      	lsls	r2, r3, #22
 8005db8:	d4ee      	bmi.n	8005d98 <__smakebuf_r+0x50>
 8005dba:	f023 0303 	bic.w	r3, r3, #3
 8005dbe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005dc2:	f043 0302 	orr.w	r3, r3, #2
 8005dc6:	2101      	movs	r1, #1
 8005dc8:	81a3      	strh	r3, [r4, #12]
 8005dca:	6022      	str	r2, [r4, #0]
 8005dcc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005dd0:	e7e2      	b.n	8005d98 <__smakebuf_r+0x50>
 8005dd2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005dd6:	e7dd      	b.n	8005d94 <__smakebuf_r+0x4c>
 8005dd8:	08005639 	.word	0x08005639

08005ddc <_malloc_r>:
 8005ddc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005de0:	f101 050b 	add.w	r5, r1, #11
 8005de4:	2d16      	cmp	r5, #22
 8005de6:	b083      	sub	sp, #12
 8005de8:	4606      	mov	r6, r0
 8005dea:	d823      	bhi.n	8005e34 <_malloc_r+0x58>
 8005dec:	2910      	cmp	r1, #16
 8005dee:	f200 80b9 	bhi.w	8005f64 <_malloc_r+0x188>
 8005df2:	f000 fafb 	bl	80063ec <__malloc_lock>
 8005df6:	2510      	movs	r5, #16
 8005df8:	2318      	movs	r3, #24
 8005dfa:	2002      	movs	r0, #2
 8005dfc:	4fc5      	ldr	r7, [pc, #788]	; (8006114 <_malloc_r+0x338>)
 8005dfe:	443b      	add	r3, r7
 8005e00:	f1a3 0208 	sub.w	r2, r3, #8
 8005e04:	685c      	ldr	r4, [r3, #4]
 8005e06:	4294      	cmp	r4, r2
 8005e08:	f000 8166 	beq.w	80060d8 <_malloc_r+0x2fc>
 8005e0c:	6863      	ldr	r3, [r4, #4]
 8005e0e:	f023 0303 	bic.w	r3, r3, #3
 8005e12:	4423      	add	r3, r4
 8005e14:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005e18:	685a      	ldr	r2, [r3, #4]
 8005e1a:	60e9      	str	r1, [r5, #12]
 8005e1c:	f042 0201 	orr.w	r2, r2, #1
 8005e20:	608d      	str	r5, [r1, #8]
 8005e22:	4630      	mov	r0, r6
 8005e24:	605a      	str	r2, [r3, #4]
 8005e26:	f000 fae7 	bl	80063f8 <__malloc_unlock>
 8005e2a:	3408      	adds	r4, #8
 8005e2c:	4620      	mov	r0, r4
 8005e2e:	b003      	add	sp, #12
 8005e30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e34:	f035 0507 	bics.w	r5, r5, #7
 8005e38:	f100 8094 	bmi.w	8005f64 <_malloc_r+0x188>
 8005e3c:	42a9      	cmp	r1, r5
 8005e3e:	f200 8091 	bhi.w	8005f64 <_malloc_r+0x188>
 8005e42:	f000 fad3 	bl	80063ec <__malloc_lock>
 8005e46:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005e4a:	f0c0 8183 	bcc.w	8006154 <_malloc_r+0x378>
 8005e4e:	0a6b      	lsrs	r3, r5, #9
 8005e50:	f000 808f 	beq.w	8005f72 <_malloc_r+0x196>
 8005e54:	2b04      	cmp	r3, #4
 8005e56:	f200 8146 	bhi.w	80060e6 <_malloc_r+0x30a>
 8005e5a:	09ab      	lsrs	r3, r5, #6
 8005e5c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005e60:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005e64:	00c3      	lsls	r3, r0, #3
 8005e66:	4fab      	ldr	r7, [pc, #684]	; (8006114 <_malloc_r+0x338>)
 8005e68:	443b      	add	r3, r7
 8005e6a:	f1a3 0108 	sub.w	r1, r3, #8
 8005e6e:	685c      	ldr	r4, [r3, #4]
 8005e70:	42a1      	cmp	r1, r4
 8005e72:	d106      	bne.n	8005e82 <_malloc_r+0xa6>
 8005e74:	e00c      	b.n	8005e90 <_malloc_r+0xb4>
 8005e76:	2a00      	cmp	r2, #0
 8005e78:	f280 811d 	bge.w	80060b6 <_malloc_r+0x2da>
 8005e7c:	68e4      	ldr	r4, [r4, #12]
 8005e7e:	42a1      	cmp	r1, r4
 8005e80:	d006      	beq.n	8005e90 <_malloc_r+0xb4>
 8005e82:	6863      	ldr	r3, [r4, #4]
 8005e84:	f023 0303 	bic.w	r3, r3, #3
 8005e88:	1b5a      	subs	r2, r3, r5
 8005e8a:	2a0f      	cmp	r2, #15
 8005e8c:	ddf3      	ble.n	8005e76 <_malloc_r+0x9a>
 8005e8e:	4660      	mov	r0, ip
 8005e90:	693c      	ldr	r4, [r7, #16]
 8005e92:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006128 <_malloc_r+0x34c>
 8005e96:	4564      	cmp	r4, ip
 8005e98:	d071      	beq.n	8005f7e <_malloc_r+0x1a2>
 8005e9a:	6863      	ldr	r3, [r4, #4]
 8005e9c:	f023 0303 	bic.w	r3, r3, #3
 8005ea0:	1b5a      	subs	r2, r3, r5
 8005ea2:	2a0f      	cmp	r2, #15
 8005ea4:	f300 8144 	bgt.w	8006130 <_malloc_r+0x354>
 8005ea8:	2a00      	cmp	r2, #0
 8005eaa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005eae:	f280 8126 	bge.w	80060fe <_malloc_r+0x322>
 8005eb2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005eb6:	f080 8169 	bcs.w	800618c <_malloc_r+0x3b0>
 8005eba:	08db      	lsrs	r3, r3, #3
 8005ebc:	1c59      	adds	r1, r3, #1
 8005ebe:	687a      	ldr	r2, [r7, #4]
 8005ec0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005ec4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005ec8:	f04f 0e01 	mov.w	lr, #1
 8005ecc:	109b      	asrs	r3, r3, #2
 8005ece:	fa0e f303 	lsl.w	r3, lr, r3
 8005ed2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005ed6:	4313      	orrs	r3, r2
 8005ed8:	f1ae 0208 	sub.w	r2, lr, #8
 8005edc:	60e2      	str	r2, [r4, #12]
 8005ede:	607b      	str	r3, [r7, #4]
 8005ee0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005ee4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005ee8:	1082      	asrs	r2, r0, #2
 8005eea:	2401      	movs	r4, #1
 8005eec:	4094      	lsls	r4, r2
 8005eee:	429c      	cmp	r4, r3
 8005ef0:	d84b      	bhi.n	8005f8a <_malloc_r+0x1ae>
 8005ef2:	421c      	tst	r4, r3
 8005ef4:	d106      	bne.n	8005f04 <_malloc_r+0x128>
 8005ef6:	f020 0003 	bic.w	r0, r0, #3
 8005efa:	0064      	lsls	r4, r4, #1
 8005efc:	421c      	tst	r4, r3
 8005efe:	f100 0004 	add.w	r0, r0, #4
 8005f02:	d0fa      	beq.n	8005efa <_malloc_r+0x11e>
 8005f04:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005f08:	46ce      	mov	lr, r9
 8005f0a:	4680      	mov	r8, r0
 8005f0c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005f10:	459e      	cmp	lr, r3
 8005f12:	d107      	bne.n	8005f24 <_malloc_r+0x148>
 8005f14:	e122      	b.n	800615c <_malloc_r+0x380>
 8005f16:	2a00      	cmp	r2, #0
 8005f18:	f280 8129 	bge.w	800616e <_malloc_r+0x392>
 8005f1c:	68db      	ldr	r3, [r3, #12]
 8005f1e:	459e      	cmp	lr, r3
 8005f20:	f000 811c 	beq.w	800615c <_malloc_r+0x380>
 8005f24:	6859      	ldr	r1, [r3, #4]
 8005f26:	f021 0103 	bic.w	r1, r1, #3
 8005f2a:	1b4a      	subs	r2, r1, r5
 8005f2c:	2a0f      	cmp	r2, #15
 8005f2e:	ddf2      	ble.n	8005f16 <_malloc_r+0x13a>
 8005f30:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005f34:	195c      	adds	r4, r3, r5
 8005f36:	f045 0501 	orr.w	r5, r5, #1
 8005f3a:	605d      	str	r5, [r3, #4]
 8005f3c:	f042 0501 	orr.w	r5, r2, #1
 8005f40:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005f44:	4630      	mov	r0, r6
 8005f46:	f8ce 8008 	str.w	r8, [lr, #8]
 8005f4a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005f4e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005f52:	6065      	str	r5, [r4, #4]
 8005f54:	505a      	str	r2, [r3, r1]
 8005f56:	9301      	str	r3, [sp, #4]
 8005f58:	f000 fa4e 	bl	80063f8 <__malloc_unlock>
 8005f5c:	9b01      	ldr	r3, [sp, #4]
 8005f5e:	f103 0408 	add.w	r4, r3, #8
 8005f62:	e763      	b.n	8005e2c <_malloc_r+0x50>
 8005f64:	2400      	movs	r4, #0
 8005f66:	230c      	movs	r3, #12
 8005f68:	4620      	mov	r0, r4
 8005f6a:	6033      	str	r3, [r6, #0]
 8005f6c:	b003      	add	sp, #12
 8005f6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f72:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005f76:	2040      	movs	r0, #64	; 0x40
 8005f78:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005f7c:	e773      	b.n	8005e66 <_malloc_r+0x8a>
 8005f7e:	687b      	ldr	r3, [r7, #4]
 8005f80:	1082      	asrs	r2, r0, #2
 8005f82:	2401      	movs	r4, #1
 8005f84:	4094      	lsls	r4, r2
 8005f86:	429c      	cmp	r4, r3
 8005f88:	d9b3      	bls.n	8005ef2 <_malloc_r+0x116>
 8005f8a:	68bc      	ldr	r4, [r7, #8]
 8005f8c:	6863      	ldr	r3, [r4, #4]
 8005f8e:	f023 0903 	bic.w	r9, r3, #3
 8005f92:	45a9      	cmp	r9, r5
 8005f94:	d303      	bcc.n	8005f9e <_malloc_r+0x1c2>
 8005f96:	eba9 0305 	sub.w	r3, r9, r5
 8005f9a:	2b0f      	cmp	r3, #15
 8005f9c:	dc7b      	bgt.n	8006096 <_malloc_r+0x2ba>
 8005f9e:	4b5e      	ldr	r3, [pc, #376]	; (8006118 <_malloc_r+0x33c>)
 8005fa0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800612c <_malloc_r+0x350>
 8005fa4:	681a      	ldr	r2, [r3, #0]
 8005fa6:	f8da 3000 	ldr.w	r3, [sl]
 8005faa:	3301      	adds	r3, #1
 8005fac:	eb05 0802 	add.w	r8, r5, r2
 8005fb0:	f000 8148 	beq.w	8006244 <_malloc_r+0x468>
 8005fb4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005fb8:	f108 080f 	add.w	r8, r8, #15
 8005fbc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005fc0:	f028 080f 	bic.w	r8, r8, #15
 8005fc4:	4641      	mov	r1, r8
 8005fc6:	4630      	mov	r0, r6
 8005fc8:	f000 ff08 	bl	8006ddc <_sbrk_r>
 8005fcc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005fd0:	4683      	mov	fp, r0
 8005fd2:	f000 8104 	beq.w	80061de <_malloc_r+0x402>
 8005fd6:	eb04 0009 	add.w	r0, r4, r9
 8005fda:	4558      	cmp	r0, fp
 8005fdc:	f200 80fd 	bhi.w	80061da <_malloc_r+0x3fe>
 8005fe0:	4a4e      	ldr	r2, [pc, #312]	; (800611c <_malloc_r+0x340>)
 8005fe2:	6813      	ldr	r3, [r2, #0]
 8005fe4:	4443      	add	r3, r8
 8005fe6:	6013      	str	r3, [r2, #0]
 8005fe8:	f000 814d 	beq.w	8006286 <_malloc_r+0x4aa>
 8005fec:	f8da 1000 	ldr.w	r1, [sl]
 8005ff0:	3101      	adds	r1, #1
 8005ff2:	bf1b      	ittet	ne
 8005ff4:	ebab 0000 	subne.w	r0, fp, r0
 8005ff8:	181b      	addne	r3, r3, r0
 8005ffa:	f8ca b000 	streq.w	fp, [sl]
 8005ffe:	6013      	strne	r3, [r2, #0]
 8006000:	f01b 0307 	ands.w	r3, fp, #7
 8006004:	f000 8134 	beq.w	8006270 <_malloc_r+0x494>
 8006008:	f1c3 0108 	rsb	r1, r3, #8
 800600c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006010:	448b      	add	fp, r1
 8006012:	3308      	adds	r3, #8
 8006014:	44d8      	add	r8, fp
 8006016:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800601a:	eba3 0808 	sub.w	r8, r3, r8
 800601e:	4641      	mov	r1, r8
 8006020:	4630      	mov	r0, r6
 8006022:	9201      	str	r2, [sp, #4]
 8006024:	f000 feda 	bl	8006ddc <_sbrk_r>
 8006028:	1c43      	adds	r3, r0, #1
 800602a:	9a01      	ldr	r2, [sp, #4]
 800602c:	f000 8146 	beq.w	80062bc <_malloc_r+0x4e0>
 8006030:	eba0 010b 	sub.w	r1, r0, fp
 8006034:	4441      	add	r1, r8
 8006036:	f041 0101 	orr.w	r1, r1, #1
 800603a:	6813      	ldr	r3, [r2, #0]
 800603c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006040:	4443      	add	r3, r8
 8006042:	42bc      	cmp	r4, r7
 8006044:	f8cb 1004 	str.w	r1, [fp, #4]
 8006048:	6013      	str	r3, [r2, #0]
 800604a:	d015      	beq.n	8006078 <_malloc_r+0x29c>
 800604c:	f1b9 0f0f 	cmp.w	r9, #15
 8006050:	f240 8130 	bls.w	80062b4 <_malloc_r+0x4d8>
 8006054:	6860      	ldr	r0, [r4, #4]
 8006056:	f1a9 010c 	sub.w	r1, r9, #12
 800605a:	f021 0107 	bic.w	r1, r1, #7
 800605e:	f000 0001 	and.w	r0, r0, #1
 8006062:	eb04 0c01 	add.w	ip, r4, r1
 8006066:	4308      	orrs	r0, r1
 8006068:	f04f 0e05 	mov.w	lr, #5
 800606c:	290f      	cmp	r1, #15
 800606e:	6060      	str	r0, [r4, #4]
 8006070:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006074:	f200 813a 	bhi.w	80062ec <_malloc_r+0x510>
 8006078:	4a29      	ldr	r2, [pc, #164]	; (8006120 <_malloc_r+0x344>)
 800607a:	482a      	ldr	r0, [pc, #168]	; (8006124 <_malloc_r+0x348>)
 800607c:	6811      	ldr	r1, [r2, #0]
 800607e:	68bc      	ldr	r4, [r7, #8]
 8006080:	428b      	cmp	r3, r1
 8006082:	6801      	ldr	r1, [r0, #0]
 8006084:	bf88      	it	hi
 8006086:	6013      	strhi	r3, [r2, #0]
 8006088:	6862      	ldr	r2, [r4, #4]
 800608a:	428b      	cmp	r3, r1
 800608c:	f022 0203 	bic.w	r2, r2, #3
 8006090:	bf88      	it	hi
 8006092:	6003      	strhi	r3, [r0, #0]
 8006094:	e0a7      	b.n	80061e6 <_malloc_r+0x40a>
 8006096:	1962      	adds	r2, r4, r5
 8006098:	f043 0301 	orr.w	r3, r3, #1
 800609c:	f045 0501 	orr.w	r5, r5, #1
 80060a0:	6065      	str	r5, [r4, #4]
 80060a2:	4630      	mov	r0, r6
 80060a4:	60ba      	str	r2, [r7, #8]
 80060a6:	6053      	str	r3, [r2, #4]
 80060a8:	f000 f9a6 	bl	80063f8 <__malloc_unlock>
 80060ac:	3408      	adds	r4, #8
 80060ae:	4620      	mov	r0, r4
 80060b0:	b003      	add	sp, #12
 80060b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060b6:	4423      	add	r3, r4
 80060b8:	68e1      	ldr	r1, [r4, #12]
 80060ba:	685a      	ldr	r2, [r3, #4]
 80060bc:	68a5      	ldr	r5, [r4, #8]
 80060be:	f042 0201 	orr.w	r2, r2, #1
 80060c2:	60e9      	str	r1, [r5, #12]
 80060c4:	4630      	mov	r0, r6
 80060c6:	608d      	str	r5, [r1, #8]
 80060c8:	605a      	str	r2, [r3, #4]
 80060ca:	f000 f995 	bl	80063f8 <__malloc_unlock>
 80060ce:	3408      	adds	r4, #8
 80060d0:	4620      	mov	r0, r4
 80060d2:	b003      	add	sp, #12
 80060d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060d8:	68dc      	ldr	r4, [r3, #12]
 80060da:	42a3      	cmp	r3, r4
 80060dc:	bf08      	it	eq
 80060de:	3002      	addeq	r0, #2
 80060e0:	f43f aed6 	beq.w	8005e90 <_malloc_r+0xb4>
 80060e4:	e692      	b.n	8005e0c <_malloc_r+0x30>
 80060e6:	2b14      	cmp	r3, #20
 80060e8:	d971      	bls.n	80061ce <_malloc_r+0x3f2>
 80060ea:	2b54      	cmp	r3, #84	; 0x54
 80060ec:	f200 80ad 	bhi.w	800624a <_malloc_r+0x46e>
 80060f0:	0b2b      	lsrs	r3, r5, #12
 80060f2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80060f6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80060fa:	00c3      	lsls	r3, r0, #3
 80060fc:	e6b3      	b.n	8005e66 <_malloc_r+0x8a>
 80060fe:	4423      	add	r3, r4
 8006100:	4630      	mov	r0, r6
 8006102:	685a      	ldr	r2, [r3, #4]
 8006104:	f042 0201 	orr.w	r2, r2, #1
 8006108:	605a      	str	r2, [r3, #4]
 800610a:	3408      	adds	r4, #8
 800610c:	f000 f974 	bl	80063f8 <__malloc_unlock>
 8006110:	e68c      	b.n	8005e2c <_malloc_r+0x50>
 8006112:	bf00      	nop
 8006114:	20000594 	.word	0x20000594
 8006118:	20000be4 	.word	0x20000be4
 800611c:	20000bb4 	.word	0x20000bb4
 8006120:	20000bdc 	.word	0x20000bdc
 8006124:	20000be0 	.word	0x20000be0
 8006128:	2000059c 	.word	0x2000059c
 800612c:	2000099c 	.word	0x2000099c
 8006130:	1961      	adds	r1, r4, r5
 8006132:	f045 0e01 	orr.w	lr, r5, #1
 8006136:	f042 0501 	orr.w	r5, r2, #1
 800613a:	f8c4 e004 	str.w	lr, [r4, #4]
 800613e:	4630      	mov	r0, r6
 8006140:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006144:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006148:	604d      	str	r5, [r1, #4]
 800614a:	50e2      	str	r2, [r4, r3]
 800614c:	f000 f954 	bl	80063f8 <__malloc_unlock>
 8006150:	3408      	adds	r4, #8
 8006152:	e66b      	b.n	8005e2c <_malloc_r+0x50>
 8006154:	08e8      	lsrs	r0, r5, #3
 8006156:	f105 0308 	add.w	r3, r5, #8
 800615a:	e64f      	b.n	8005dfc <_malloc_r+0x20>
 800615c:	f108 0801 	add.w	r8, r8, #1
 8006160:	f018 0f03 	tst.w	r8, #3
 8006164:	f10e 0e08 	add.w	lr, lr, #8
 8006168:	f47f aed0 	bne.w	8005f0c <_malloc_r+0x130>
 800616c:	e052      	b.n	8006214 <_malloc_r+0x438>
 800616e:	4419      	add	r1, r3
 8006170:	461c      	mov	r4, r3
 8006172:	684a      	ldr	r2, [r1, #4]
 8006174:	68db      	ldr	r3, [r3, #12]
 8006176:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800617a:	f042 0201 	orr.w	r2, r2, #1
 800617e:	604a      	str	r2, [r1, #4]
 8006180:	4630      	mov	r0, r6
 8006182:	60eb      	str	r3, [r5, #12]
 8006184:	609d      	str	r5, [r3, #8]
 8006186:	f000 f937 	bl	80063f8 <__malloc_unlock>
 800618a:	e64f      	b.n	8005e2c <_malloc_r+0x50>
 800618c:	0a5a      	lsrs	r2, r3, #9
 800618e:	2a04      	cmp	r2, #4
 8006190:	d935      	bls.n	80061fe <_malloc_r+0x422>
 8006192:	2a14      	cmp	r2, #20
 8006194:	d86f      	bhi.n	8006276 <_malloc_r+0x49a>
 8006196:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800619a:	00c9      	lsls	r1, r1, #3
 800619c:	325b      	adds	r2, #91	; 0x5b
 800619e:	eb07 0e01 	add.w	lr, r7, r1
 80061a2:	5879      	ldr	r1, [r7, r1]
 80061a4:	f1ae 0e08 	sub.w	lr, lr, #8
 80061a8:	458e      	cmp	lr, r1
 80061aa:	d058      	beq.n	800625e <_malloc_r+0x482>
 80061ac:	684a      	ldr	r2, [r1, #4]
 80061ae:	f022 0203 	bic.w	r2, r2, #3
 80061b2:	429a      	cmp	r2, r3
 80061b4:	d902      	bls.n	80061bc <_malloc_r+0x3e0>
 80061b6:	6889      	ldr	r1, [r1, #8]
 80061b8:	458e      	cmp	lr, r1
 80061ba:	d1f7      	bne.n	80061ac <_malloc_r+0x3d0>
 80061bc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80061c0:	687b      	ldr	r3, [r7, #4]
 80061c2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80061c6:	f8ce 4008 	str.w	r4, [lr, #8]
 80061ca:	60cc      	str	r4, [r1, #12]
 80061cc:	e68c      	b.n	8005ee8 <_malloc_r+0x10c>
 80061ce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80061d2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80061d6:	00c3      	lsls	r3, r0, #3
 80061d8:	e645      	b.n	8005e66 <_malloc_r+0x8a>
 80061da:	42bc      	cmp	r4, r7
 80061dc:	d072      	beq.n	80062c4 <_malloc_r+0x4e8>
 80061de:	68bc      	ldr	r4, [r7, #8]
 80061e0:	6862      	ldr	r2, [r4, #4]
 80061e2:	f022 0203 	bic.w	r2, r2, #3
 80061e6:	4295      	cmp	r5, r2
 80061e8:	eba2 0305 	sub.w	r3, r2, r5
 80061ec:	d802      	bhi.n	80061f4 <_malloc_r+0x418>
 80061ee:	2b0f      	cmp	r3, #15
 80061f0:	f73f af51 	bgt.w	8006096 <_malloc_r+0x2ba>
 80061f4:	4630      	mov	r0, r6
 80061f6:	f000 f8ff 	bl	80063f8 <__malloc_unlock>
 80061fa:	2400      	movs	r4, #0
 80061fc:	e616      	b.n	8005e2c <_malloc_r+0x50>
 80061fe:	099a      	lsrs	r2, r3, #6
 8006200:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006204:	00c9      	lsls	r1, r1, #3
 8006206:	3238      	adds	r2, #56	; 0x38
 8006208:	e7c9      	b.n	800619e <_malloc_r+0x3c2>
 800620a:	f8d9 9000 	ldr.w	r9, [r9]
 800620e:	4599      	cmp	r9, r3
 8006210:	f040 8083 	bne.w	800631a <_malloc_r+0x53e>
 8006214:	f010 0f03 	tst.w	r0, #3
 8006218:	f1a9 0308 	sub.w	r3, r9, #8
 800621c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006220:	d1f3      	bne.n	800620a <_malloc_r+0x42e>
 8006222:	687b      	ldr	r3, [r7, #4]
 8006224:	ea23 0304 	bic.w	r3, r3, r4
 8006228:	607b      	str	r3, [r7, #4]
 800622a:	0064      	lsls	r4, r4, #1
 800622c:	429c      	cmp	r4, r3
 800622e:	f63f aeac 	bhi.w	8005f8a <_malloc_r+0x1ae>
 8006232:	b91c      	cbnz	r4, 800623c <_malloc_r+0x460>
 8006234:	e6a9      	b.n	8005f8a <_malloc_r+0x1ae>
 8006236:	0064      	lsls	r4, r4, #1
 8006238:	f108 0804 	add.w	r8, r8, #4
 800623c:	421c      	tst	r4, r3
 800623e:	d0fa      	beq.n	8006236 <_malloc_r+0x45a>
 8006240:	4640      	mov	r0, r8
 8006242:	e65f      	b.n	8005f04 <_malloc_r+0x128>
 8006244:	f108 0810 	add.w	r8, r8, #16
 8006248:	e6bc      	b.n	8005fc4 <_malloc_r+0x1e8>
 800624a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800624e:	d826      	bhi.n	800629e <_malloc_r+0x4c2>
 8006250:	0beb      	lsrs	r3, r5, #15
 8006252:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006256:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800625a:	00c3      	lsls	r3, r0, #3
 800625c:	e603      	b.n	8005e66 <_malloc_r+0x8a>
 800625e:	687b      	ldr	r3, [r7, #4]
 8006260:	1092      	asrs	r2, r2, #2
 8006262:	f04f 0801 	mov.w	r8, #1
 8006266:	fa08 f202 	lsl.w	r2, r8, r2
 800626a:	4313      	orrs	r3, r2
 800626c:	607b      	str	r3, [r7, #4]
 800626e:	e7a8      	b.n	80061c2 <_malloc_r+0x3e6>
 8006270:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006274:	e6ce      	b.n	8006014 <_malloc_r+0x238>
 8006276:	2a54      	cmp	r2, #84	; 0x54
 8006278:	d829      	bhi.n	80062ce <_malloc_r+0x4f2>
 800627a:	0b1a      	lsrs	r2, r3, #12
 800627c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006280:	00c9      	lsls	r1, r1, #3
 8006282:	326e      	adds	r2, #110	; 0x6e
 8006284:	e78b      	b.n	800619e <_malloc_r+0x3c2>
 8006286:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800628a:	2900      	cmp	r1, #0
 800628c:	f47f aeae 	bne.w	8005fec <_malloc_r+0x210>
 8006290:	eb09 0208 	add.w	r2, r9, r8
 8006294:	68b9      	ldr	r1, [r7, #8]
 8006296:	f042 0201 	orr.w	r2, r2, #1
 800629a:	604a      	str	r2, [r1, #4]
 800629c:	e6ec      	b.n	8006078 <_malloc_r+0x29c>
 800629e:	f240 5254 	movw	r2, #1364	; 0x554
 80062a2:	4293      	cmp	r3, r2
 80062a4:	d81c      	bhi.n	80062e0 <_malloc_r+0x504>
 80062a6:	0cab      	lsrs	r3, r5, #18
 80062a8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80062ac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80062b0:	00c3      	lsls	r3, r0, #3
 80062b2:	e5d8      	b.n	8005e66 <_malloc_r+0x8a>
 80062b4:	2301      	movs	r3, #1
 80062b6:	f8cb 3004 	str.w	r3, [fp, #4]
 80062ba:	e79b      	b.n	80061f4 <_malloc_r+0x418>
 80062bc:	2101      	movs	r1, #1
 80062be:	f04f 0800 	mov.w	r8, #0
 80062c2:	e6ba      	b.n	800603a <_malloc_r+0x25e>
 80062c4:	4a16      	ldr	r2, [pc, #88]	; (8006320 <_malloc_r+0x544>)
 80062c6:	6813      	ldr	r3, [r2, #0]
 80062c8:	4443      	add	r3, r8
 80062ca:	6013      	str	r3, [r2, #0]
 80062cc:	e68e      	b.n	8005fec <_malloc_r+0x210>
 80062ce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80062d2:	d814      	bhi.n	80062fe <_malloc_r+0x522>
 80062d4:	0bda      	lsrs	r2, r3, #15
 80062d6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80062da:	00c9      	lsls	r1, r1, #3
 80062dc:	3277      	adds	r2, #119	; 0x77
 80062de:	e75e      	b.n	800619e <_malloc_r+0x3c2>
 80062e0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80062e4:	207f      	movs	r0, #127	; 0x7f
 80062e6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80062ea:	e5bc      	b.n	8005e66 <_malloc_r+0x8a>
 80062ec:	f104 0108 	add.w	r1, r4, #8
 80062f0:	4630      	mov	r0, r6
 80062f2:	9201      	str	r2, [sp, #4]
 80062f4:	f7ff fa48 	bl	8005788 <_free_r>
 80062f8:	9a01      	ldr	r2, [sp, #4]
 80062fa:	6813      	ldr	r3, [r2, #0]
 80062fc:	e6bc      	b.n	8006078 <_malloc_r+0x29c>
 80062fe:	f240 5154 	movw	r1, #1364	; 0x554
 8006302:	428a      	cmp	r2, r1
 8006304:	d805      	bhi.n	8006312 <_malloc_r+0x536>
 8006306:	0c9a      	lsrs	r2, r3, #18
 8006308:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800630c:	00c9      	lsls	r1, r1, #3
 800630e:	327c      	adds	r2, #124	; 0x7c
 8006310:	e745      	b.n	800619e <_malloc_r+0x3c2>
 8006312:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006316:	227e      	movs	r2, #126	; 0x7e
 8006318:	e741      	b.n	800619e <_malloc_r+0x3c2>
 800631a:	687b      	ldr	r3, [r7, #4]
 800631c:	e785      	b.n	800622a <_malloc_r+0x44e>
 800631e:	bf00      	nop
 8006320:	20000bb4 	.word	0x20000bb4

08006324 <memmove>:
 8006324:	4288      	cmp	r0, r1
 8006326:	b4f0      	push	{r4, r5, r6, r7}
 8006328:	d90d      	bls.n	8006346 <memmove+0x22>
 800632a:	188b      	adds	r3, r1, r2
 800632c:	4283      	cmp	r3, r0
 800632e:	d90a      	bls.n	8006346 <memmove+0x22>
 8006330:	1884      	adds	r4, r0, r2
 8006332:	b132      	cbz	r2, 8006342 <memmove+0x1e>
 8006334:	4622      	mov	r2, r4
 8006336:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800633a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800633e:	4299      	cmp	r1, r3
 8006340:	d1f9      	bne.n	8006336 <memmove+0x12>
 8006342:	bcf0      	pop	{r4, r5, r6, r7}
 8006344:	4770      	bx	lr
 8006346:	2a0f      	cmp	r2, #15
 8006348:	d949      	bls.n	80063de <memmove+0xba>
 800634a:	ea40 0301 	orr.w	r3, r0, r1
 800634e:	079b      	lsls	r3, r3, #30
 8006350:	d147      	bne.n	80063e2 <memmove+0xbe>
 8006352:	f1a2 0310 	sub.w	r3, r2, #16
 8006356:	091b      	lsrs	r3, r3, #4
 8006358:	f101 0720 	add.w	r7, r1, #32
 800635c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006360:	f101 0410 	add.w	r4, r1, #16
 8006364:	f100 0510 	add.w	r5, r0, #16
 8006368:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800636c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006370:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006374:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006378:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800637c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006380:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006384:	f845 6c04 	str.w	r6, [r5, #-4]
 8006388:	3410      	adds	r4, #16
 800638a:	42bc      	cmp	r4, r7
 800638c:	f105 0510 	add.w	r5, r5, #16
 8006390:	d1ea      	bne.n	8006368 <memmove+0x44>
 8006392:	3301      	adds	r3, #1
 8006394:	f002 050f 	and.w	r5, r2, #15
 8006398:	011b      	lsls	r3, r3, #4
 800639a:	2d03      	cmp	r5, #3
 800639c:	4419      	add	r1, r3
 800639e:	4403      	add	r3, r0
 80063a0:	d921      	bls.n	80063e6 <memmove+0xc2>
 80063a2:	1f1f      	subs	r7, r3, #4
 80063a4:	460e      	mov	r6, r1
 80063a6:	462c      	mov	r4, r5
 80063a8:	3c04      	subs	r4, #4
 80063aa:	f856 cb04 	ldr.w	ip, [r6], #4
 80063ae:	f847 cf04 	str.w	ip, [r7, #4]!
 80063b2:	2c03      	cmp	r4, #3
 80063b4:	d8f8      	bhi.n	80063a8 <memmove+0x84>
 80063b6:	1f2c      	subs	r4, r5, #4
 80063b8:	f024 0403 	bic.w	r4, r4, #3
 80063bc:	3404      	adds	r4, #4
 80063be:	4423      	add	r3, r4
 80063c0:	4421      	add	r1, r4
 80063c2:	f002 0203 	and.w	r2, r2, #3
 80063c6:	2a00      	cmp	r2, #0
 80063c8:	d0bb      	beq.n	8006342 <memmove+0x1e>
 80063ca:	3b01      	subs	r3, #1
 80063cc:	440a      	add	r2, r1
 80063ce:	f811 4b01 	ldrb.w	r4, [r1], #1
 80063d2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80063d6:	4291      	cmp	r1, r2
 80063d8:	d1f9      	bne.n	80063ce <memmove+0xaa>
 80063da:	bcf0      	pop	{r4, r5, r6, r7}
 80063dc:	4770      	bx	lr
 80063de:	4603      	mov	r3, r0
 80063e0:	e7f1      	b.n	80063c6 <memmove+0xa2>
 80063e2:	4603      	mov	r3, r0
 80063e4:	e7f1      	b.n	80063ca <memmove+0xa6>
 80063e6:	462a      	mov	r2, r5
 80063e8:	e7ed      	b.n	80063c6 <memmove+0xa2>
 80063ea:	bf00      	nop

080063ec <__malloc_lock>:
 80063ec:	4801      	ldr	r0, [pc, #4]	; (80063f4 <__malloc_lock+0x8>)
 80063ee:	f7ff bc79 	b.w	8005ce4 <__retarget_lock_acquire_recursive>
 80063f2:	bf00      	nop
 80063f4:	20000c40 	.word	0x20000c40

080063f8 <__malloc_unlock>:
 80063f8:	4801      	ldr	r0, [pc, #4]	; (8006400 <__malloc_unlock+0x8>)
 80063fa:	f7ff bc75 	b.w	8005ce8 <__retarget_lock_release_recursive>
 80063fe:	bf00      	nop
 8006400:	20000c40 	.word	0x20000c40

08006404 <_Balloc>:
 8006404:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006406:	b570      	push	{r4, r5, r6, lr}
 8006408:	4605      	mov	r5, r0
 800640a:	460c      	mov	r4, r1
 800640c:	b14b      	cbz	r3, 8006422 <_Balloc+0x1e>
 800640e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006412:	b180      	cbz	r0, 8006436 <_Balloc+0x32>
 8006414:	6802      	ldr	r2, [r0, #0]
 8006416:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800641a:	2300      	movs	r3, #0
 800641c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006420:	bd70      	pop	{r4, r5, r6, pc}
 8006422:	2221      	movs	r2, #33	; 0x21
 8006424:	2104      	movs	r1, #4
 8006426:	f000 fe1d 	bl	8007064 <_calloc_r>
 800642a:	4603      	mov	r3, r0
 800642c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800642e:	2800      	cmp	r0, #0
 8006430:	d1ed      	bne.n	800640e <_Balloc+0xa>
 8006432:	2000      	movs	r0, #0
 8006434:	bd70      	pop	{r4, r5, r6, pc}
 8006436:	2101      	movs	r1, #1
 8006438:	fa01 f604 	lsl.w	r6, r1, r4
 800643c:	1d72      	adds	r2, r6, #5
 800643e:	4628      	mov	r0, r5
 8006440:	0092      	lsls	r2, r2, #2
 8006442:	f000 fe0f 	bl	8007064 <_calloc_r>
 8006446:	2800      	cmp	r0, #0
 8006448:	d0f3      	beq.n	8006432 <_Balloc+0x2e>
 800644a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800644e:	e7e4      	b.n	800641a <_Balloc+0x16>

08006450 <_Bfree>:
 8006450:	b131      	cbz	r1, 8006460 <_Bfree+0x10>
 8006452:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006454:	684a      	ldr	r2, [r1, #4]
 8006456:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800645a:	6008      	str	r0, [r1, #0]
 800645c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006460:	4770      	bx	lr
 8006462:	bf00      	nop

08006464 <__multadd>:
 8006464:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006466:	690c      	ldr	r4, [r1, #16]
 8006468:	b083      	sub	sp, #12
 800646a:	460d      	mov	r5, r1
 800646c:	4606      	mov	r6, r0
 800646e:	f101 0c14 	add.w	ip, r1, #20
 8006472:	2700      	movs	r7, #0
 8006474:	f8dc 0000 	ldr.w	r0, [ip]
 8006478:	b281      	uxth	r1, r0
 800647a:	fb02 3301 	mla	r3, r2, r1, r3
 800647e:	0c01      	lsrs	r1, r0, #16
 8006480:	0c18      	lsrs	r0, r3, #16
 8006482:	fb02 0101 	mla	r1, r2, r1, r0
 8006486:	b29b      	uxth	r3, r3
 8006488:	3701      	adds	r7, #1
 800648a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800648e:	42bc      	cmp	r4, r7
 8006490:	f84c 3b04 	str.w	r3, [ip], #4
 8006494:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006498:	dcec      	bgt.n	8006474 <__multadd+0x10>
 800649a:	b13b      	cbz	r3, 80064ac <__multadd+0x48>
 800649c:	68aa      	ldr	r2, [r5, #8]
 800649e:	42a2      	cmp	r2, r4
 80064a0:	dd07      	ble.n	80064b2 <__multadd+0x4e>
 80064a2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80064a6:	3401      	adds	r4, #1
 80064a8:	6153      	str	r3, [r2, #20]
 80064aa:	612c      	str	r4, [r5, #16]
 80064ac:	4628      	mov	r0, r5
 80064ae:	b003      	add	sp, #12
 80064b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80064b2:	6869      	ldr	r1, [r5, #4]
 80064b4:	9301      	str	r3, [sp, #4]
 80064b6:	3101      	adds	r1, #1
 80064b8:	4630      	mov	r0, r6
 80064ba:	f7ff ffa3 	bl	8006404 <_Balloc>
 80064be:	692a      	ldr	r2, [r5, #16]
 80064c0:	3202      	adds	r2, #2
 80064c2:	f105 010c 	add.w	r1, r5, #12
 80064c6:	4607      	mov	r7, r0
 80064c8:	0092      	lsls	r2, r2, #2
 80064ca:	300c      	adds	r0, #12
 80064cc:	f7fa fc84 	bl	8000dd8 <memcpy>
 80064d0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80064d2:	6869      	ldr	r1, [r5, #4]
 80064d4:	9b01      	ldr	r3, [sp, #4]
 80064d6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80064da:	6028      	str	r0, [r5, #0]
 80064dc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80064e0:	463d      	mov	r5, r7
 80064e2:	e7de      	b.n	80064a2 <__multadd+0x3e>

080064e4 <__hi0bits>:
 80064e4:	0c02      	lsrs	r2, r0, #16
 80064e6:	0412      	lsls	r2, r2, #16
 80064e8:	4603      	mov	r3, r0
 80064ea:	b9c2      	cbnz	r2, 800651e <__hi0bits+0x3a>
 80064ec:	0403      	lsls	r3, r0, #16
 80064ee:	2010      	movs	r0, #16
 80064f0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80064f4:	bf04      	itt	eq
 80064f6:	021b      	lsleq	r3, r3, #8
 80064f8:	3008      	addeq	r0, #8
 80064fa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80064fe:	bf04      	itt	eq
 8006500:	011b      	lsleq	r3, r3, #4
 8006502:	3004      	addeq	r0, #4
 8006504:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006508:	bf04      	itt	eq
 800650a:	009b      	lsleq	r3, r3, #2
 800650c:	3002      	addeq	r0, #2
 800650e:	2b00      	cmp	r3, #0
 8006510:	db04      	blt.n	800651c <__hi0bits+0x38>
 8006512:	005b      	lsls	r3, r3, #1
 8006514:	d501      	bpl.n	800651a <__hi0bits+0x36>
 8006516:	3001      	adds	r0, #1
 8006518:	4770      	bx	lr
 800651a:	2020      	movs	r0, #32
 800651c:	4770      	bx	lr
 800651e:	2000      	movs	r0, #0
 8006520:	e7e6      	b.n	80064f0 <__hi0bits+0xc>
 8006522:	bf00      	nop

08006524 <__lo0bits>:
 8006524:	6803      	ldr	r3, [r0, #0]
 8006526:	f013 0207 	ands.w	r2, r3, #7
 800652a:	4601      	mov	r1, r0
 800652c:	d007      	beq.n	800653e <__lo0bits+0x1a>
 800652e:	07da      	lsls	r2, r3, #31
 8006530:	d41f      	bmi.n	8006572 <__lo0bits+0x4e>
 8006532:	0798      	lsls	r0, r3, #30
 8006534:	d51f      	bpl.n	8006576 <__lo0bits+0x52>
 8006536:	085b      	lsrs	r3, r3, #1
 8006538:	600b      	str	r3, [r1, #0]
 800653a:	2001      	movs	r0, #1
 800653c:	4770      	bx	lr
 800653e:	b298      	uxth	r0, r3
 8006540:	b1a0      	cbz	r0, 800656c <__lo0bits+0x48>
 8006542:	4610      	mov	r0, r2
 8006544:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006548:	bf04      	itt	eq
 800654a:	0a1b      	lsreq	r3, r3, #8
 800654c:	3008      	addeq	r0, #8
 800654e:	071a      	lsls	r2, r3, #28
 8006550:	bf04      	itt	eq
 8006552:	091b      	lsreq	r3, r3, #4
 8006554:	3004      	addeq	r0, #4
 8006556:	079a      	lsls	r2, r3, #30
 8006558:	bf04      	itt	eq
 800655a:	089b      	lsreq	r3, r3, #2
 800655c:	3002      	addeq	r0, #2
 800655e:	07da      	lsls	r2, r3, #31
 8006560:	d402      	bmi.n	8006568 <__lo0bits+0x44>
 8006562:	085b      	lsrs	r3, r3, #1
 8006564:	d00b      	beq.n	800657e <__lo0bits+0x5a>
 8006566:	3001      	adds	r0, #1
 8006568:	600b      	str	r3, [r1, #0]
 800656a:	4770      	bx	lr
 800656c:	0c1b      	lsrs	r3, r3, #16
 800656e:	2010      	movs	r0, #16
 8006570:	e7e8      	b.n	8006544 <__lo0bits+0x20>
 8006572:	2000      	movs	r0, #0
 8006574:	4770      	bx	lr
 8006576:	089b      	lsrs	r3, r3, #2
 8006578:	600b      	str	r3, [r1, #0]
 800657a:	2002      	movs	r0, #2
 800657c:	4770      	bx	lr
 800657e:	2020      	movs	r0, #32
 8006580:	4770      	bx	lr
 8006582:	bf00      	nop

08006584 <__i2b>:
 8006584:	b510      	push	{r4, lr}
 8006586:	460c      	mov	r4, r1
 8006588:	2101      	movs	r1, #1
 800658a:	f7ff ff3b 	bl	8006404 <_Balloc>
 800658e:	2201      	movs	r2, #1
 8006590:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006594:	bd10      	pop	{r4, pc}
 8006596:	bf00      	nop

08006598 <__multiply>:
 8006598:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800659c:	690e      	ldr	r6, [r1, #16]
 800659e:	6914      	ldr	r4, [r2, #16]
 80065a0:	42a6      	cmp	r6, r4
 80065a2:	b083      	sub	sp, #12
 80065a4:	460f      	mov	r7, r1
 80065a6:	4615      	mov	r5, r2
 80065a8:	da04      	bge.n	80065b4 <__multiply+0x1c>
 80065aa:	4632      	mov	r2, r6
 80065ac:	462f      	mov	r7, r5
 80065ae:	4626      	mov	r6, r4
 80065b0:	460d      	mov	r5, r1
 80065b2:	4614      	mov	r4, r2
 80065b4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80065b8:	eb06 0804 	add.w	r8, r6, r4
 80065bc:	4543      	cmp	r3, r8
 80065be:	bfb8      	it	lt
 80065c0:	3101      	addlt	r1, #1
 80065c2:	f7ff ff1f 	bl	8006404 <_Balloc>
 80065c6:	f100 0914 	add.w	r9, r0, #20
 80065ca:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80065ce:	45f1      	cmp	r9, lr
 80065d0:	9000      	str	r0, [sp, #0]
 80065d2:	d205      	bcs.n	80065e0 <__multiply+0x48>
 80065d4:	464b      	mov	r3, r9
 80065d6:	2200      	movs	r2, #0
 80065d8:	f843 2b04 	str.w	r2, [r3], #4
 80065dc:	459e      	cmp	lr, r3
 80065de:	d8fb      	bhi.n	80065d8 <__multiply+0x40>
 80065e0:	f105 0a14 	add.w	sl, r5, #20
 80065e4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80065e8:	f107 0314 	add.w	r3, r7, #20
 80065ec:	45a2      	cmp	sl, r4
 80065ee:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80065f2:	d261      	bcs.n	80066b8 <__multiply+0x120>
 80065f4:	1b64      	subs	r4, r4, r5
 80065f6:	3c15      	subs	r4, #21
 80065f8:	f024 0403 	bic.w	r4, r4, #3
 80065fc:	f8cd e004 	str.w	lr, [sp, #4]
 8006600:	44a2      	add	sl, r4
 8006602:	f105 0210 	add.w	r2, r5, #16
 8006606:	469e      	mov	lr, r3
 8006608:	e005      	b.n	8006616 <__multiply+0x7e>
 800660a:	0c2d      	lsrs	r5, r5, #16
 800660c:	d12b      	bne.n	8006666 <__multiply+0xce>
 800660e:	4592      	cmp	sl, r2
 8006610:	f109 0904 	add.w	r9, r9, #4
 8006614:	d04e      	beq.n	80066b4 <__multiply+0x11c>
 8006616:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800661a:	fa1f fb85 	uxth.w	fp, r5
 800661e:	f1bb 0f00 	cmp.w	fp, #0
 8006622:	d0f2      	beq.n	800660a <__multiply+0x72>
 8006624:	4677      	mov	r7, lr
 8006626:	464e      	mov	r6, r9
 8006628:	2000      	movs	r0, #0
 800662a:	e000      	b.n	800662e <__multiply+0x96>
 800662c:	4626      	mov	r6, r4
 800662e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006632:	6834      	ldr	r4, [r6, #0]
 8006634:	b28b      	uxth	r3, r1
 8006636:	b2a5      	uxth	r5, r4
 8006638:	0c09      	lsrs	r1, r1, #16
 800663a:	0c24      	lsrs	r4, r4, #16
 800663c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006640:	4403      	add	r3, r0
 8006642:	fb0b 4001 	mla	r0, fp, r1, r4
 8006646:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800664a:	4634      	mov	r4, r6
 800664c:	b29b      	uxth	r3, r3
 800664e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006652:	45bc      	cmp	ip, r7
 8006654:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006658:	f844 3b04 	str.w	r3, [r4], #4
 800665c:	d8e6      	bhi.n	800662c <__multiply+0x94>
 800665e:	6070      	str	r0, [r6, #4]
 8006660:	6815      	ldr	r5, [r2, #0]
 8006662:	0c2d      	lsrs	r5, r5, #16
 8006664:	d0d3      	beq.n	800660e <__multiply+0x76>
 8006666:	f8d9 3000 	ldr.w	r3, [r9]
 800666a:	4676      	mov	r6, lr
 800666c:	4618      	mov	r0, r3
 800666e:	46cb      	mov	fp, r9
 8006670:	2100      	movs	r1, #0
 8006672:	e000      	b.n	8006676 <__multiply+0xde>
 8006674:	46a3      	mov	fp, r4
 8006676:	8834      	ldrh	r4, [r6, #0]
 8006678:	0c00      	lsrs	r0, r0, #16
 800667a:	fb05 0004 	mla	r0, r5, r4, r0
 800667e:	4401      	add	r1, r0
 8006680:	b29b      	uxth	r3, r3
 8006682:	465c      	mov	r4, fp
 8006684:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006688:	f844 3b04 	str.w	r3, [r4], #4
 800668c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006690:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006694:	0c1b      	lsrs	r3, r3, #16
 8006696:	b287      	uxth	r7, r0
 8006698:	fb05 7303 	mla	r3, r5, r3, r7
 800669c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80066a0:	45b4      	cmp	ip, r6
 80066a2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80066a6:	d8e5      	bhi.n	8006674 <__multiply+0xdc>
 80066a8:	4592      	cmp	sl, r2
 80066aa:	f8cb 3004 	str.w	r3, [fp, #4]
 80066ae:	f109 0904 	add.w	r9, r9, #4
 80066b2:	d1b0      	bne.n	8006616 <__multiply+0x7e>
 80066b4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80066b8:	f1b8 0f00 	cmp.w	r8, #0
 80066bc:	dd0b      	ble.n	80066d6 <__multiply+0x13e>
 80066be:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80066c2:	f1ae 0e04 	sub.w	lr, lr, #4
 80066c6:	b11b      	cbz	r3, 80066d0 <__multiply+0x138>
 80066c8:	e005      	b.n	80066d6 <__multiply+0x13e>
 80066ca:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80066ce:	b913      	cbnz	r3, 80066d6 <__multiply+0x13e>
 80066d0:	f1b8 0801 	subs.w	r8, r8, #1
 80066d4:	d1f9      	bne.n	80066ca <__multiply+0x132>
 80066d6:	9800      	ldr	r0, [sp, #0]
 80066d8:	f8c0 8010 	str.w	r8, [r0, #16]
 80066dc:	b003      	add	sp, #12
 80066de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066e2:	bf00      	nop

080066e4 <__pow5mult>:
 80066e4:	f012 0303 	ands.w	r3, r2, #3
 80066e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80066ec:	4614      	mov	r4, r2
 80066ee:	4607      	mov	r7, r0
 80066f0:	d12e      	bne.n	8006750 <__pow5mult+0x6c>
 80066f2:	460d      	mov	r5, r1
 80066f4:	10a4      	asrs	r4, r4, #2
 80066f6:	d01c      	beq.n	8006732 <__pow5mult+0x4e>
 80066f8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80066fa:	b396      	cbz	r6, 8006762 <__pow5mult+0x7e>
 80066fc:	07e3      	lsls	r3, r4, #31
 80066fe:	f04f 0800 	mov.w	r8, #0
 8006702:	d406      	bmi.n	8006712 <__pow5mult+0x2e>
 8006704:	1064      	asrs	r4, r4, #1
 8006706:	d014      	beq.n	8006732 <__pow5mult+0x4e>
 8006708:	6830      	ldr	r0, [r6, #0]
 800670a:	b1a8      	cbz	r0, 8006738 <__pow5mult+0x54>
 800670c:	4606      	mov	r6, r0
 800670e:	07e3      	lsls	r3, r4, #31
 8006710:	d5f8      	bpl.n	8006704 <__pow5mult+0x20>
 8006712:	4632      	mov	r2, r6
 8006714:	4629      	mov	r1, r5
 8006716:	4638      	mov	r0, r7
 8006718:	f7ff ff3e 	bl	8006598 <__multiply>
 800671c:	b1b5      	cbz	r5, 800674c <__pow5mult+0x68>
 800671e:	686a      	ldr	r2, [r5, #4]
 8006720:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006722:	1064      	asrs	r4, r4, #1
 8006724:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006728:	6029      	str	r1, [r5, #0]
 800672a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800672e:	4605      	mov	r5, r0
 8006730:	d1ea      	bne.n	8006708 <__pow5mult+0x24>
 8006732:	4628      	mov	r0, r5
 8006734:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006738:	4632      	mov	r2, r6
 800673a:	4631      	mov	r1, r6
 800673c:	4638      	mov	r0, r7
 800673e:	f7ff ff2b 	bl	8006598 <__multiply>
 8006742:	6030      	str	r0, [r6, #0]
 8006744:	f8c0 8000 	str.w	r8, [r0]
 8006748:	4606      	mov	r6, r0
 800674a:	e7e0      	b.n	800670e <__pow5mult+0x2a>
 800674c:	4605      	mov	r5, r0
 800674e:	e7d9      	b.n	8006704 <__pow5mult+0x20>
 8006750:	3b01      	subs	r3, #1
 8006752:	4a0b      	ldr	r2, [pc, #44]	; (8006780 <__pow5mult+0x9c>)
 8006754:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006758:	2300      	movs	r3, #0
 800675a:	f7ff fe83 	bl	8006464 <__multadd>
 800675e:	4605      	mov	r5, r0
 8006760:	e7c8      	b.n	80066f4 <__pow5mult+0x10>
 8006762:	2101      	movs	r1, #1
 8006764:	4638      	mov	r0, r7
 8006766:	f7ff fe4d 	bl	8006404 <_Balloc>
 800676a:	f240 2371 	movw	r3, #625	; 0x271
 800676e:	6143      	str	r3, [r0, #20]
 8006770:	2201      	movs	r2, #1
 8006772:	2300      	movs	r3, #0
 8006774:	6102      	str	r2, [r0, #16]
 8006776:	4606      	mov	r6, r0
 8006778:	64b8      	str	r0, [r7, #72]	; 0x48
 800677a:	6003      	str	r3, [r0, #0]
 800677c:	e7be      	b.n	80066fc <__pow5mult+0x18>
 800677e:	bf00      	nop
 8006780:	080078b0 	.word	0x080078b0

08006784 <__lshift>:
 8006784:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006788:	4691      	mov	r9, r2
 800678a:	690a      	ldr	r2, [r1, #16]
 800678c:	460e      	mov	r6, r1
 800678e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006792:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006796:	eb04 0802 	add.w	r8, r4, r2
 800679a:	f108 0501 	add.w	r5, r8, #1
 800679e:	429d      	cmp	r5, r3
 80067a0:	4607      	mov	r7, r0
 80067a2:	dd04      	ble.n	80067ae <__lshift+0x2a>
 80067a4:	005b      	lsls	r3, r3, #1
 80067a6:	429d      	cmp	r5, r3
 80067a8:	f101 0101 	add.w	r1, r1, #1
 80067ac:	dcfa      	bgt.n	80067a4 <__lshift+0x20>
 80067ae:	4638      	mov	r0, r7
 80067b0:	f7ff fe28 	bl	8006404 <_Balloc>
 80067b4:	2c00      	cmp	r4, #0
 80067b6:	f100 0314 	add.w	r3, r0, #20
 80067ba:	dd37      	ble.n	800682c <__lshift+0xa8>
 80067bc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80067c0:	2200      	movs	r2, #0
 80067c2:	f843 2b04 	str.w	r2, [r3], #4
 80067c6:	428b      	cmp	r3, r1
 80067c8:	d1fb      	bne.n	80067c2 <__lshift+0x3e>
 80067ca:	6934      	ldr	r4, [r6, #16]
 80067cc:	f106 0314 	add.w	r3, r6, #20
 80067d0:	f019 091f 	ands.w	r9, r9, #31
 80067d4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80067d8:	d020      	beq.n	800681c <__lshift+0x98>
 80067da:	f1c9 0e20 	rsb	lr, r9, #32
 80067de:	2200      	movs	r2, #0
 80067e0:	e000      	b.n	80067e4 <__lshift+0x60>
 80067e2:	4651      	mov	r1, sl
 80067e4:	681c      	ldr	r4, [r3, #0]
 80067e6:	468a      	mov	sl, r1
 80067e8:	fa04 f409 	lsl.w	r4, r4, r9
 80067ec:	4314      	orrs	r4, r2
 80067ee:	f84a 4b04 	str.w	r4, [sl], #4
 80067f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80067f6:	4563      	cmp	r3, ip
 80067f8:	fa22 f20e 	lsr.w	r2, r2, lr
 80067fc:	d3f1      	bcc.n	80067e2 <__lshift+0x5e>
 80067fe:	604a      	str	r2, [r1, #4]
 8006800:	b10a      	cbz	r2, 8006806 <__lshift+0x82>
 8006802:	f108 0502 	add.w	r5, r8, #2
 8006806:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006808:	6872      	ldr	r2, [r6, #4]
 800680a:	3d01      	subs	r5, #1
 800680c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006810:	6105      	str	r5, [r0, #16]
 8006812:	6031      	str	r1, [r6, #0]
 8006814:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006818:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800681c:	3904      	subs	r1, #4
 800681e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006822:	f841 2f04 	str.w	r2, [r1, #4]!
 8006826:	459c      	cmp	ip, r3
 8006828:	d8f9      	bhi.n	800681e <__lshift+0x9a>
 800682a:	e7ec      	b.n	8006806 <__lshift+0x82>
 800682c:	4619      	mov	r1, r3
 800682e:	e7cc      	b.n	80067ca <__lshift+0x46>

08006830 <__mcmp>:
 8006830:	b430      	push	{r4, r5}
 8006832:	690b      	ldr	r3, [r1, #16]
 8006834:	4605      	mov	r5, r0
 8006836:	6900      	ldr	r0, [r0, #16]
 8006838:	1ac0      	subs	r0, r0, r3
 800683a:	d10f      	bne.n	800685c <__mcmp+0x2c>
 800683c:	009b      	lsls	r3, r3, #2
 800683e:	3514      	adds	r5, #20
 8006840:	3114      	adds	r1, #20
 8006842:	4419      	add	r1, r3
 8006844:	442b      	add	r3, r5
 8006846:	e001      	b.n	800684c <__mcmp+0x1c>
 8006848:	429d      	cmp	r5, r3
 800684a:	d207      	bcs.n	800685c <__mcmp+0x2c>
 800684c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006850:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006854:	4294      	cmp	r4, r2
 8006856:	d0f7      	beq.n	8006848 <__mcmp+0x18>
 8006858:	d302      	bcc.n	8006860 <__mcmp+0x30>
 800685a:	2001      	movs	r0, #1
 800685c:	bc30      	pop	{r4, r5}
 800685e:	4770      	bx	lr
 8006860:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006864:	e7fa      	b.n	800685c <__mcmp+0x2c>
 8006866:	bf00      	nop

08006868 <__mdiff>:
 8006868:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800686c:	6913      	ldr	r3, [r2, #16]
 800686e:	690d      	ldr	r5, [r1, #16]
 8006870:	1aed      	subs	r5, r5, r3
 8006872:	2d00      	cmp	r5, #0
 8006874:	460e      	mov	r6, r1
 8006876:	4690      	mov	r8, r2
 8006878:	f101 0414 	add.w	r4, r1, #20
 800687c:	f102 0714 	add.w	r7, r2, #20
 8006880:	d114      	bne.n	80068ac <__mdiff+0x44>
 8006882:	009b      	lsls	r3, r3, #2
 8006884:	18e2      	adds	r2, r4, r3
 8006886:	443b      	add	r3, r7
 8006888:	e001      	b.n	800688e <__mdiff+0x26>
 800688a:	42a2      	cmp	r2, r4
 800688c:	d959      	bls.n	8006942 <__mdiff+0xda>
 800688e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006892:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006896:	458c      	cmp	ip, r1
 8006898:	d0f7      	beq.n	800688a <__mdiff+0x22>
 800689a:	d209      	bcs.n	80068b0 <__mdiff+0x48>
 800689c:	4622      	mov	r2, r4
 800689e:	4633      	mov	r3, r6
 80068a0:	463c      	mov	r4, r7
 80068a2:	4646      	mov	r6, r8
 80068a4:	4617      	mov	r7, r2
 80068a6:	4698      	mov	r8, r3
 80068a8:	2501      	movs	r5, #1
 80068aa:	e001      	b.n	80068b0 <__mdiff+0x48>
 80068ac:	dbf6      	blt.n	800689c <__mdiff+0x34>
 80068ae:	2500      	movs	r5, #0
 80068b0:	6871      	ldr	r1, [r6, #4]
 80068b2:	f7ff fda7 	bl	8006404 <_Balloc>
 80068b6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80068ba:	6936      	ldr	r6, [r6, #16]
 80068bc:	60c5      	str	r5, [r0, #12]
 80068be:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80068c2:	46bc      	mov	ip, r7
 80068c4:	f100 0514 	add.w	r5, r0, #20
 80068c8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80068cc:	2300      	movs	r3, #0
 80068ce:	f85c 1b04 	ldr.w	r1, [ip], #4
 80068d2:	f854 8b04 	ldr.w	r8, [r4], #4
 80068d6:	b28a      	uxth	r2, r1
 80068d8:	fa13 f388 	uxtah	r3, r3, r8
 80068dc:	0c09      	lsrs	r1, r1, #16
 80068de:	1a9a      	subs	r2, r3, r2
 80068e0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80068e4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80068e8:	b292      	uxth	r2, r2
 80068ea:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80068ee:	45e6      	cmp	lr, ip
 80068f0:	f845 2b04 	str.w	r2, [r5], #4
 80068f4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80068f8:	d8e9      	bhi.n	80068ce <__mdiff+0x66>
 80068fa:	42a7      	cmp	r7, r4
 80068fc:	d917      	bls.n	800692e <__mdiff+0xc6>
 80068fe:	46ae      	mov	lr, r5
 8006900:	46a4      	mov	ip, r4
 8006902:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006906:	fa13 f382 	uxtah	r3, r3, r2
 800690a:	1419      	asrs	r1, r3, #16
 800690c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006910:	b29b      	uxth	r3, r3
 8006912:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006916:	4567      	cmp	r7, ip
 8006918:	f84e 2b04 	str.w	r2, [lr], #4
 800691c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006920:	d8ef      	bhi.n	8006902 <__mdiff+0x9a>
 8006922:	43e4      	mvns	r4, r4
 8006924:	4427      	add	r7, r4
 8006926:	f027 0703 	bic.w	r7, r7, #3
 800692a:	3704      	adds	r7, #4
 800692c:	443d      	add	r5, r7
 800692e:	3d04      	subs	r5, #4
 8006930:	b922      	cbnz	r2, 800693c <__mdiff+0xd4>
 8006932:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006936:	3e01      	subs	r6, #1
 8006938:	2b00      	cmp	r3, #0
 800693a:	d0fa      	beq.n	8006932 <__mdiff+0xca>
 800693c:	6106      	str	r6, [r0, #16]
 800693e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006942:	2100      	movs	r1, #0
 8006944:	f7ff fd5e 	bl	8006404 <_Balloc>
 8006948:	2201      	movs	r2, #1
 800694a:	2300      	movs	r3, #0
 800694c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006950:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006954 <__d2b>:
 8006954:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006958:	460f      	mov	r7, r1
 800695a:	b083      	sub	sp, #12
 800695c:	2101      	movs	r1, #1
 800695e:	ec55 4b10 	vmov	r4, r5, d0
 8006962:	4616      	mov	r6, r2
 8006964:	f7ff fd4e 	bl	8006404 <_Balloc>
 8006968:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800696c:	4681      	mov	r9, r0
 800696e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006972:	f1b8 0f00 	cmp.w	r8, #0
 8006976:	d001      	beq.n	800697c <__d2b+0x28>
 8006978:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800697c:	2c00      	cmp	r4, #0
 800697e:	9301      	str	r3, [sp, #4]
 8006980:	d024      	beq.n	80069cc <__d2b+0x78>
 8006982:	a802      	add	r0, sp, #8
 8006984:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006988:	f7ff fdcc 	bl	8006524 <__lo0bits>
 800698c:	2800      	cmp	r0, #0
 800698e:	d136      	bne.n	80069fe <__d2b+0xaa>
 8006990:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006994:	f8c9 2014 	str.w	r2, [r9, #20]
 8006998:	2b00      	cmp	r3, #0
 800699a:	bf0c      	ite	eq
 800699c:	2101      	moveq	r1, #1
 800699e:	2102      	movne	r1, #2
 80069a0:	f8c9 3018 	str.w	r3, [r9, #24]
 80069a4:	f8c9 1010 	str.w	r1, [r9, #16]
 80069a8:	f1b8 0f00 	cmp.w	r8, #0
 80069ac:	d11b      	bne.n	80069e6 <__d2b+0x92>
 80069ae:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80069b2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80069b6:	6038      	str	r0, [r7, #0]
 80069b8:	6918      	ldr	r0, [r3, #16]
 80069ba:	f7ff fd93 	bl	80064e4 <__hi0bits>
 80069be:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80069c2:	6030      	str	r0, [r6, #0]
 80069c4:	4648      	mov	r0, r9
 80069c6:	b003      	add	sp, #12
 80069c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80069cc:	a801      	add	r0, sp, #4
 80069ce:	f7ff fda9 	bl	8006524 <__lo0bits>
 80069d2:	9b01      	ldr	r3, [sp, #4]
 80069d4:	f8c9 3014 	str.w	r3, [r9, #20]
 80069d8:	2101      	movs	r1, #1
 80069da:	3020      	adds	r0, #32
 80069dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80069e0:	f1b8 0f00 	cmp.w	r8, #0
 80069e4:	d0e3      	beq.n	80069ae <__d2b+0x5a>
 80069e6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80069ea:	eb08 0300 	add.w	r3, r8, r0
 80069ee:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80069f2:	603b      	str	r3, [r7, #0]
 80069f4:	6030      	str	r0, [r6, #0]
 80069f6:	4648      	mov	r0, r9
 80069f8:	b003      	add	sp, #12
 80069fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80069fe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006a02:	f1c0 0220 	rsb	r2, r0, #32
 8006a06:	fa03 f202 	lsl.w	r2, r3, r2
 8006a0a:	430a      	orrs	r2, r1
 8006a0c:	40c3      	lsrs	r3, r0
 8006a0e:	9301      	str	r3, [sp, #4]
 8006a10:	f8c9 2014 	str.w	r2, [r9, #20]
 8006a14:	e7c0      	b.n	8006998 <__d2b+0x44>
 8006a16:	bf00      	nop

08006a18 <_realloc_r>:
 8006a18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a1c:	4692      	mov	sl, r2
 8006a1e:	b083      	sub	sp, #12
 8006a20:	2900      	cmp	r1, #0
 8006a22:	f000 80a1 	beq.w	8006b68 <_realloc_r+0x150>
 8006a26:	460d      	mov	r5, r1
 8006a28:	4680      	mov	r8, r0
 8006a2a:	f10a 040b 	add.w	r4, sl, #11
 8006a2e:	f7ff fcdd 	bl	80063ec <__malloc_lock>
 8006a32:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006a36:	2c16      	cmp	r4, #22
 8006a38:	f022 0603 	bic.w	r6, r2, #3
 8006a3c:	f1a5 0708 	sub.w	r7, r5, #8
 8006a40:	d83e      	bhi.n	8006ac0 <_realloc_r+0xa8>
 8006a42:	2410      	movs	r4, #16
 8006a44:	4621      	mov	r1, r4
 8006a46:	45a2      	cmp	sl, r4
 8006a48:	d83f      	bhi.n	8006aca <_realloc_r+0xb2>
 8006a4a:	428e      	cmp	r6, r1
 8006a4c:	eb07 0906 	add.w	r9, r7, r6
 8006a50:	da74      	bge.n	8006b3c <_realloc_r+0x124>
 8006a52:	4bc7      	ldr	r3, [pc, #796]	; (8006d70 <_realloc_r+0x358>)
 8006a54:	6898      	ldr	r0, [r3, #8]
 8006a56:	4548      	cmp	r0, r9
 8006a58:	f000 80aa 	beq.w	8006bb0 <_realloc_r+0x198>
 8006a5c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006a60:	f020 0301 	bic.w	r3, r0, #1
 8006a64:	444b      	add	r3, r9
 8006a66:	685b      	ldr	r3, [r3, #4]
 8006a68:	07db      	lsls	r3, r3, #31
 8006a6a:	f140 8083 	bpl.w	8006b74 <_realloc_r+0x15c>
 8006a6e:	07d2      	lsls	r2, r2, #31
 8006a70:	d534      	bpl.n	8006adc <_realloc_r+0xc4>
 8006a72:	4651      	mov	r1, sl
 8006a74:	4640      	mov	r0, r8
 8006a76:	f7ff f9b1 	bl	8005ddc <_malloc_r>
 8006a7a:	4682      	mov	sl, r0
 8006a7c:	b1e0      	cbz	r0, 8006ab8 <_realloc_r+0xa0>
 8006a7e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a82:	f023 0301 	bic.w	r3, r3, #1
 8006a86:	443b      	add	r3, r7
 8006a88:	f1a0 0208 	sub.w	r2, r0, #8
 8006a8c:	4293      	cmp	r3, r2
 8006a8e:	f000 80f9 	beq.w	8006c84 <_realloc_r+0x26c>
 8006a92:	1f32      	subs	r2, r6, #4
 8006a94:	2a24      	cmp	r2, #36	; 0x24
 8006a96:	f200 8107 	bhi.w	8006ca8 <_realloc_r+0x290>
 8006a9a:	2a13      	cmp	r2, #19
 8006a9c:	6829      	ldr	r1, [r5, #0]
 8006a9e:	f200 80e6 	bhi.w	8006c6e <_realloc_r+0x256>
 8006aa2:	4603      	mov	r3, r0
 8006aa4:	462a      	mov	r2, r5
 8006aa6:	6019      	str	r1, [r3, #0]
 8006aa8:	6851      	ldr	r1, [r2, #4]
 8006aaa:	6059      	str	r1, [r3, #4]
 8006aac:	6892      	ldr	r2, [r2, #8]
 8006aae:	609a      	str	r2, [r3, #8]
 8006ab0:	4629      	mov	r1, r5
 8006ab2:	4640      	mov	r0, r8
 8006ab4:	f7fe fe68 	bl	8005788 <_free_r>
 8006ab8:	4640      	mov	r0, r8
 8006aba:	f7ff fc9d 	bl	80063f8 <__malloc_unlock>
 8006abe:	e04f      	b.n	8006b60 <_realloc_r+0x148>
 8006ac0:	f024 0407 	bic.w	r4, r4, #7
 8006ac4:	2c00      	cmp	r4, #0
 8006ac6:	4621      	mov	r1, r4
 8006ac8:	dabd      	bge.n	8006a46 <_realloc_r+0x2e>
 8006aca:	f04f 0a00 	mov.w	sl, #0
 8006ace:	230c      	movs	r3, #12
 8006ad0:	4650      	mov	r0, sl
 8006ad2:	f8c8 3000 	str.w	r3, [r8]
 8006ad6:	b003      	add	sp, #12
 8006ad8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006adc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006ae0:	eba7 0b03 	sub.w	fp, r7, r3
 8006ae4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006ae8:	f022 0203 	bic.w	r2, r2, #3
 8006aec:	18b3      	adds	r3, r6, r2
 8006aee:	428b      	cmp	r3, r1
 8006af0:	dbbf      	blt.n	8006a72 <_realloc_r+0x5a>
 8006af2:	46da      	mov	sl, fp
 8006af4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006af8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006afc:	1f32      	subs	r2, r6, #4
 8006afe:	2a24      	cmp	r2, #36	; 0x24
 8006b00:	60c1      	str	r1, [r0, #12]
 8006b02:	eb0b 0903 	add.w	r9, fp, r3
 8006b06:	6088      	str	r0, [r1, #8]
 8006b08:	f200 80c6 	bhi.w	8006c98 <_realloc_r+0x280>
 8006b0c:	2a13      	cmp	r2, #19
 8006b0e:	6829      	ldr	r1, [r5, #0]
 8006b10:	f240 80c0 	bls.w	8006c94 <_realloc_r+0x27c>
 8006b14:	f8cb 1008 	str.w	r1, [fp, #8]
 8006b18:	6869      	ldr	r1, [r5, #4]
 8006b1a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006b1e:	2a1b      	cmp	r2, #27
 8006b20:	68a9      	ldr	r1, [r5, #8]
 8006b22:	f200 80d8 	bhi.w	8006cd6 <_realloc_r+0x2be>
 8006b26:	f10b 0210 	add.w	r2, fp, #16
 8006b2a:	3508      	adds	r5, #8
 8006b2c:	6011      	str	r1, [r2, #0]
 8006b2e:	6869      	ldr	r1, [r5, #4]
 8006b30:	6051      	str	r1, [r2, #4]
 8006b32:	68a9      	ldr	r1, [r5, #8]
 8006b34:	6091      	str	r1, [r2, #8]
 8006b36:	461e      	mov	r6, r3
 8006b38:	465f      	mov	r7, fp
 8006b3a:	4655      	mov	r5, sl
 8006b3c:	687b      	ldr	r3, [r7, #4]
 8006b3e:	1b32      	subs	r2, r6, r4
 8006b40:	2a0f      	cmp	r2, #15
 8006b42:	f003 0301 	and.w	r3, r3, #1
 8006b46:	d822      	bhi.n	8006b8e <_realloc_r+0x176>
 8006b48:	4333      	orrs	r3, r6
 8006b4a:	607b      	str	r3, [r7, #4]
 8006b4c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b50:	f043 0301 	orr.w	r3, r3, #1
 8006b54:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b58:	4640      	mov	r0, r8
 8006b5a:	f7ff fc4d 	bl	80063f8 <__malloc_unlock>
 8006b5e:	46aa      	mov	sl, r5
 8006b60:	4650      	mov	r0, sl
 8006b62:	b003      	add	sp, #12
 8006b64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b68:	4611      	mov	r1, r2
 8006b6a:	b003      	add	sp, #12
 8006b6c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b70:	f7ff b934 	b.w	8005ddc <_malloc_r>
 8006b74:	f020 0003 	bic.w	r0, r0, #3
 8006b78:	1833      	adds	r3, r6, r0
 8006b7a:	428b      	cmp	r3, r1
 8006b7c:	db61      	blt.n	8006c42 <_realloc_r+0x22a>
 8006b7e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b82:	461e      	mov	r6, r3
 8006b84:	60ca      	str	r2, [r1, #12]
 8006b86:	eb07 0903 	add.w	r9, r7, r3
 8006b8a:	6091      	str	r1, [r2, #8]
 8006b8c:	e7d6      	b.n	8006b3c <_realloc_r+0x124>
 8006b8e:	1939      	adds	r1, r7, r4
 8006b90:	4323      	orrs	r3, r4
 8006b92:	f042 0201 	orr.w	r2, r2, #1
 8006b96:	607b      	str	r3, [r7, #4]
 8006b98:	604a      	str	r2, [r1, #4]
 8006b9a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b9e:	f043 0301 	orr.w	r3, r3, #1
 8006ba2:	3108      	adds	r1, #8
 8006ba4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ba8:	4640      	mov	r0, r8
 8006baa:	f7fe fded 	bl	8005788 <_free_r>
 8006bae:	e7d3      	b.n	8006b58 <_realloc_r+0x140>
 8006bb0:	6840      	ldr	r0, [r0, #4]
 8006bb2:	f020 0903 	bic.w	r9, r0, #3
 8006bb6:	44b1      	add	r9, r6
 8006bb8:	f104 0010 	add.w	r0, r4, #16
 8006bbc:	4581      	cmp	r9, r0
 8006bbe:	da77      	bge.n	8006cb0 <_realloc_r+0x298>
 8006bc0:	07d2      	lsls	r2, r2, #31
 8006bc2:	f53f af56 	bmi.w	8006a72 <_realloc_r+0x5a>
 8006bc6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006bca:	eba7 0b02 	sub.w	fp, r7, r2
 8006bce:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006bd2:	f022 0203 	bic.w	r2, r2, #3
 8006bd6:	4491      	add	r9, r2
 8006bd8:	4548      	cmp	r0, r9
 8006bda:	dc87      	bgt.n	8006aec <_realloc_r+0xd4>
 8006bdc:	46da      	mov	sl, fp
 8006bde:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006be2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006be6:	1f32      	subs	r2, r6, #4
 8006be8:	2a24      	cmp	r2, #36	; 0x24
 8006bea:	60c1      	str	r1, [r0, #12]
 8006bec:	6088      	str	r0, [r1, #8]
 8006bee:	f200 80a1 	bhi.w	8006d34 <_realloc_r+0x31c>
 8006bf2:	2a13      	cmp	r2, #19
 8006bf4:	6829      	ldr	r1, [r5, #0]
 8006bf6:	f240 809b 	bls.w	8006d30 <_realloc_r+0x318>
 8006bfa:	f8cb 1008 	str.w	r1, [fp, #8]
 8006bfe:	6869      	ldr	r1, [r5, #4]
 8006c00:	f8cb 100c 	str.w	r1, [fp, #12]
 8006c04:	2a1b      	cmp	r2, #27
 8006c06:	68a9      	ldr	r1, [r5, #8]
 8006c08:	f200 809b 	bhi.w	8006d42 <_realloc_r+0x32a>
 8006c0c:	f10b 0210 	add.w	r2, fp, #16
 8006c10:	3508      	adds	r5, #8
 8006c12:	6011      	str	r1, [r2, #0]
 8006c14:	6869      	ldr	r1, [r5, #4]
 8006c16:	6051      	str	r1, [r2, #4]
 8006c18:	68a9      	ldr	r1, [r5, #8]
 8006c1a:	6091      	str	r1, [r2, #8]
 8006c1c:	eb0b 0104 	add.w	r1, fp, r4
 8006c20:	eba9 0204 	sub.w	r2, r9, r4
 8006c24:	f042 0201 	orr.w	r2, r2, #1
 8006c28:	6099      	str	r1, [r3, #8]
 8006c2a:	604a      	str	r2, [r1, #4]
 8006c2c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006c30:	f003 0301 	and.w	r3, r3, #1
 8006c34:	431c      	orrs	r4, r3
 8006c36:	4640      	mov	r0, r8
 8006c38:	f8cb 4004 	str.w	r4, [fp, #4]
 8006c3c:	f7ff fbdc 	bl	80063f8 <__malloc_unlock>
 8006c40:	e78e      	b.n	8006b60 <_realloc_r+0x148>
 8006c42:	07d3      	lsls	r3, r2, #31
 8006c44:	f53f af15 	bmi.w	8006a72 <_realloc_r+0x5a>
 8006c48:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006c4c:	eba7 0b03 	sub.w	fp, r7, r3
 8006c50:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c54:	f022 0203 	bic.w	r2, r2, #3
 8006c58:	4410      	add	r0, r2
 8006c5a:	1983      	adds	r3, r0, r6
 8006c5c:	428b      	cmp	r3, r1
 8006c5e:	f6ff af45 	blt.w	8006aec <_realloc_r+0xd4>
 8006c62:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006c66:	46da      	mov	sl, fp
 8006c68:	60ca      	str	r2, [r1, #12]
 8006c6a:	6091      	str	r1, [r2, #8]
 8006c6c:	e742      	b.n	8006af4 <_realloc_r+0xdc>
 8006c6e:	6001      	str	r1, [r0, #0]
 8006c70:	686b      	ldr	r3, [r5, #4]
 8006c72:	6043      	str	r3, [r0, #4]
 8006c74:	2a1b      	cmp	r2, #27
 8006c76:	d83a      	bhi.n	8006cee <_realloc_r+0x2d6>
 8006c78:	f105 0208 	add.w	r2, r5, #8
 8006c7c:	f100 0308 	add.w	r3, r0, #8
 8006c80:	68a9      	ldr	r1, [r5, #8]
 8006c82:	e710      	b.n	8006aa6 <_realloc_r+0x8e>
 8006c84:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006c88:	f023 0303 	bic.w	r3, r3, #3
 8006c8c:	441e      	add	r6, r3
 8006c8e:	eb07 0906 	add.w	r9, r7, r6
 8006c92:	e753      	b.n	8006b3c <_realloc_r+0x124>
 8006c94:	4652      	mov	r2, sl
 8006c96:	e749      	b.n	8006b2c <_realloc_r+0x114>
 8006c98:	4629      	mov	r1, r5
 8006c9a:	4650      	mov	r0, sl
 8006c9c:	461e      	mov	r6, r3
 8006c9e:	465f      	mov	r7, fp
 8006ca0:	f7ff fb40 	bl	8006324 <memmove>
 8006ca4:	4655      	mov	r5, sl
 8006ca6:	e749      	b.n	8006b3c <_realloc_r+0x124>
 8006ca8:	4629      	mov	r1, r5
 8006caa:	f7ff fb3b 	bl	8006324 <memmove>
 8006cae:	e6ff      	b.n	8006ab0 <_realloc_r+0x98>
 8006cb0:	4427      	add	r7, r4
 8006cb2:	eba9 0904 	sub.w	r9, r9, r4
 8006cb6:	f049 0201 	orr.w	r2, r9, #1
 8006cba:	609f      	str	r7, [r3, #8]
 8006cbc:	607a      	str	r2, [r7, #4]
 8006cbe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006cc2:	f003 0301 	and.w	r3, r3, #1
 8006cc6:	431c      	orrs	r4, r3
 8006cc8:	4640      	mov	r0, r8
 8006cca:	f845 4c04 	str.w	r4, [r5, #-4]
 8006cce:	f7ff fb93 	bl	80063f8 <__malloc_unlock>
 8006cd2:	46aa      	mov	sl, r5
 8006cd4:	e744      	b.n	8006b60 <_realloc_r+0x148>
 8006cd6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006cda:	68e9      	ldr	r1, [r5, #12]
 8006cdc:	f8cb 1014 	str.w	r1, [fp, #20]
 8006ce0:	2a24      	cmp	r2, #36	; 0x24
 8006ce2:	d010      	beq.n	8006d06 <_realloc_r+0x2ee>
 8006ce4:	6929      	ldr	r1, [r5, #16]
 8006ce6:	f10b 0218 	add.w	r2, fp, #24
 8006cea:	3510      	adds	r5, #16
 8006cec:	e71e      	b.n	8006b2c <_realloc_r+0x114>
 8006cee:	68ab      	ldr	r3, [r5, #8]
 8006cf0:	6083      	str	r3, [r0, #8]
 8006cf2:	68eb      	ldr	r3, [r5, #12]
 8006cf4:	60c3      	str	r3, [r0, #12]
 8006cf6:	2a24      	cmp	r2, #36	; 0x24
 8006cf8:	d010      	beq.n	8006d1c <_realloc_r+0x304>
 8006cfa:	f105 0210 	add.w	r2, r5, #16
 8006cfe:	f100 0310 	add.w	r3, r0, #16
 8006d02:	6929      	ldr	r1, [r5, #16]
 8006d04:	e6cf      	b.n	8006aa6 <_realloc_r+0x8e>
 8006d06:	692a      	ldr	r2, [r5, #16]
 8006d08:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d0c:	696a      	ldr	r2, [r5, #20]
 8006d0e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d12:	69a9      	ldr	r1, [r5, #24]
 8006d14:	f10b 0220 	add.w	r2, fp, #32
 8006d18:	3518      	adds	r5, #24
 8006d1a:	e707      	b.n	8006b2c <_realloc_r+0x114>
 8006d1c:	692b      	ldr	r3, [r5, #16]
 8006d1e:	6103      	str	r3, [r0, #16]
 8006d20:	696b      	ldr	r3, [r5, #20]
 8006d22:	6143      	str	r3, [r0, #20]
 8006d24:	69a9      	ldr	r1, [r5, #24]
 8006d26:	f105 0218 	add.w	r2, r5, #24
 8006d2a:	f100 0318 	add.w	r3, r0, #24
 8006d2e:	e6ba      	b.n	8006aa6 <_realloc_r+0x8e>
 8006d30:	4652      	mov	r2, sl
 8006d32:	e76e      	b.n	8006c12 <_realloc_r+0x1fa>
 8006d34:	4629      	mov	r1, r5
 8006d36:	4650      	mov	r0, sl
 8006d38:	9301      	str	r3, [sp, #4]
 8006d3a:	f7ff faf3 	bl	8006324 <memmove>
 8006d3e:	9b01      	ldr	r3, [sp, #4]
 8006d40:	e76c      	b.n	8006c1c <_realloc_r+0x204>
 8006d42:	f8cb 1010 	str.w	r1, [fp, #16]
 8006d46:	68e9      	ldr	r1, [r5, #12]
 8006d48:	f8cb 1014 	str.w	r1, [fp, #20]
 8006d4c:	2a24      	cmp	r2, #36	; 0x24
 8006d4e:	d004      	beq.n	8006d5a <_realloc_r+0x342>
 8006d50:	6929      	ldr	r1, [r5, #16]
 8006d52:	f10b 0218 	add.w	r2, fp, #24
 8006d56:	3510      	adds	r5, #16
 8006d58:	e75b      	b.n	8006c12 <_realloc_r+0x1fa>
 8006d5a:	692a      	ldr	r2, [r5, #16]
 8006d5c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d60:	696a      	ldr	r2, [r5, #20]
 8006d62:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d66:	69a9      	ldr	r1, [r5, #24]
 8006d68:	f10b 0220 	add.w	r2, fp, #32
 8006d6c:	3518      	adds	r5, #24
 8006d6e:	e750      	b.n	8006c12 <_realloc_r+0x1fa>
 8006d70:	20000594 	.word	0x20000594

08006d74 <frexp>:
 8006d74:	ec53 2b10 	vmov	r2, r3, d0
 8006d78:	b570      	push	{r4, r5, r6, lr}
 8006d7a:	4e16      	ldr	r6, [pc, #88]	; (8006dd4 <frexp+0x60>)
 8006d7c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006d80:	2500      	movs	r5, #0
 8006d82:	42b1      	cmp	r1, r6
 8006d84:	4604      	mov	r4, r0
 8006d86:	6005      	str	r5, [r0, #0]
 8006d88:	dc21      	bgt.n	8006dce <frexp+0x5a>
 8006d8a:	ee10 6a10 	vmov	r6, s0
 8006d8e:	430e      	orrs	r6, r1
 8006d90:	d01d      	beq.n	8006dce <frexp+0x5a>
 8006d92:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006d96:	4618      	mov	r0, r3
 8006d98:	da0c      	bge.n	8006db4 <frexp+0x40>
 8006d9a:	4619      	mov	r1, r3
 8006d9c:	2200      	movs	r2, #0
 8006d9e:	ee10 0a10 	vmov	r0, s0
 8006da2:	4b0d      	ldr	r3, [pc, #52]	; (8006dd8 <frexp+0x64>)
 8006da4:	f7f9 fbe8 	bl	8000578 <__aeabi_dmul>
 8006da8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006dac:	4602      	mov	r2, r0
 8006dae:	4608      	mov	r0, r1
 8006db0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006db4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006db8:	1509      	asrs	r1, r1, #20
 8006dba:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006dbe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006dc2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006dc6:	4429      	add	r1, r5
 8006dc8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006dcc:	6021      	str	r1, [r4, #0]
 8006dce:	ec43 2b10 	vmov	d0, r2, r3
 8006dd2:	bd70      	pop	{r4, r5, r6, pc}
 8006dd4:	7fefffff 	.word	0x7fefffff
 8006dd8:	43500000 	.word	0x43500000

08006ddc <_sbrk_r>:
 8006ddc:	b538      	push	{r3, r4, r5, lr}
 8006dde:	4c07      	ldr	r4, [pc, #28]	; (8006dfc <_sbrk_r+0x20>)
 8006de0:	2300      	movs	r3, #0
 8006de2:	4605      	mov	r5, r0
 8006de4:	4608      	mov	r0, r1
 8006de6:	6023      	str	r3, [r4, #0]
 8006de8:	f7fb fb0c 	bl	8002404 <_sbrk>
 8006dec:	1c43      	adds	r3, r0, #1
 8006dee:	d000      	beq.n	8006df2 <_sbrk_r+0x16>
 8006df0:	bd38      	pop	{r3, r4, r5, pc}
 8006df2:	6823      	ldr	r3, [r4, #0]
 8006df4:	2b00      	cmp	r3, #0
 8006df6:	d0fb      	beq.n	8006df0 <_sbrk_r+0x14>
 8006df8:	602b      	str	r3, [r5, #0]
 8006dfa:	bd38      	pop	{r3, r4, r5, pc}
 8006dfc:	20000c54 	.word	0x20000c54

08006e00 <__sread>:
 8006e00:	b510      	push	{r4, lr}
 8006e02:	460c      	mov	r4, r1
 8006e04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e08:	f000 fabc 	bl	8007384 <_read_r>
 8006e0c:	2800      	cmp	r0, #0
 8006e0e:	db03      	blt.n	8006e18 <__sread+0x18>
 8006e10:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006e12:	4403      	add	r3, r0
 8006e14:	6523      	str	r3, [r4, #80]	; 0x50
 8006e16:	bd10      	pop	{r4, pc}
 8006e18:	89a3      	ldrh	r3, [r4, #12]
 8006e1a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006e1e:	81a3      	strh	r3, [r4, #12]
 8006e20:	bd10      	pop	{r4, pc}
 8006e22:	bf00      	nop

08006e24 <__swrite>:
 8006e24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006e28:	4616      	mov	r6, r2
 8006e2a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006e2e:	461f      	mov	r7, r3
 8006e30:	05d3      	lsls	r3, r2, #23
 8006e32:	460c      	mov	r4, r1
 8006e34:	4605      	mov	r5, r0
 8006e36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e3a:	d507      	bpl.n	8006e4c <__swrite+0x28>
 8006e3c:	2200      	movs	r2, #0
 8006e3e:	2302      	movs	r3, #2
 8006e40:	f000 fa74 	bl	800732c <_lseek_r>
 8006e44:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e48:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006e4c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006e50:	81a2      	strh	r2, [r4, #12]
 8006e52:	463b      	mov	r3, r7
 8006e54:	4632      	mov	r2, r6
 8006e56:	4628      	mov	r0, r5
 8006e58:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006e5c:	f000 b88c 	b.w	8006f78 <_write_r>

08006e60 <__sseek>:
 8006e60:	b510      	push	{r4, lr}
 8006e62:	460c      	mov	r4, r1
 8006e64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e68:	f000 fa60 	bl	800732c <_lseek_r>
 8006e6c:	89a3      	ldrh	r3, [r4, #12]
 8006e6e:	1c42      	adds	r2, r0, #1
 8006e70:	bf0e      	itee	eq
 8006e72:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006e76:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006e7a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006e7c:	81a3      	strh	r3, [r4, #12]
 8006e7e:	bd10      	pop	{r4, pc}

08006e80 <__sclose>:
 8006e80:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e84:	f000 b922 	b.w	80070cc <_close_r>

08006e88 <strncpy>:
 8006e88:	ea40 0301 	orr.w	r3, r0, r1
 8006e8c:	079b      	lsls	r3, r3, #30
 8006e8e:	b470      	push	{r4, r5, r6}
 8006e90:	d12a      	bne.n	8006ee8 <strncpy+0x60>
 8006e92:	2a03      	cmp	r2, #3
 8006e94:	d928      	bls.n	8006ee8 <strncpy+0x60>
 8006e96:	460c      	mov	r4, r1
 8006e98:	4603      	mov	r3, r0
 8006e9a:	4621      	mov	r1, r4
 8006e9c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ea0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ea4:	ea25 0506 	bic.w	r5, r5, r6
 8006ea8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006eac:	d106      	bne.n	8006ebc <strncpy+0x34>
 8006eae:	3a04      	subs	r2, #4
 8006eb0:	2a03      	cmp	r2, #3
 8006eb2:	f843 6b04 	str.w	r6, [r3], #4
 8006eb6:	4621      	mov	r1, r4
 8006eb8:	d8ef      	bhi.n	8006e9a <strncpy+0x12>
 8006eba:	b19a      	cbz	r2, 8006ee4 <strncpy+0x5c>
 8006ebc:	780c      	ldrb	r4, [r1, #0]
 8006ebe:	701c      	strb	r4, [r3, #0]
 8006ec0:	3a01      	subs	r2, #1
 8006ec2:	3301      	adds	r3, #1
 8006ec4:	b13c      	cbz	r4, 8006ed6 <strncpy+0x4e>
 8006ec6:	b16a      	cbz	r2, 8006ee4 <strncpy+0x5c>
 8006ec8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006ecc:	f803 4b01 	strb.w	r4, [r3], #1
 8006ed0:	3a01      	subs	r2, #1
 8006ed2:	2c00      	cmp	r4, #0
 8006ed4:	d1f7      	bne.n	8006ec6 <strncpy+0x3e>
 8006ed6:	b12a      	cbz	r2, 8006ee4 <strncpy+0x5c>
 8006ed8:	441a      	add	r2, r3
 8006eda:	2100      	movs	r1, #0
 8006edc:	f803 1b01 	strb.w	r1, [r3], #1
 8006ee0:	4293      	cmp	r3, r2
 8006ee2:	d1fb      	bne.n	8006edc <strncpy+0x54>
 8006ee4:	bc70      	pop	{r4, r5, r6}
 8006ee6:	4770      	bx	lr
 8006ee8:	4603      	mov	r3, r0
 8006eea:	e7e6      	b.n	8006eba <strncpy+0x32>

08006eec <__sprint_r.part.0>:
 8006eec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ef0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006ef2:	049c      	lsls	r4, r3, #18
 8006ef4:	4692      	mov	sl, r2
 8006ef6:	d52d      	bpl.n	8006f54 <__sprint_r.part.0+0x68>
 8006ef8:	6893      	ldr	r3, [r2, #8]
 8006efa:	6812      	ldr	r2, [r2, #0]
 8006efc:	b343      	cbz	r3, 8006f50 <__sprint_r.part.0+0x64>
 8006efe:	460e      	mov	r6, r1
 8006f00:	4607      	mov	r7, r0
 8006f02:	f102 0908 	add.w	r9, r2, #8
 8006f06:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006f0a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006f0e:	d015      	beq.n	8006f3c <__sprint_r.part.0+0x50>
 8006f10:	3d04      	subs	r5, #4
 8006f12:	2400      	movs	r4, #0
 8006f14:	e001      	b.n	8006f1a <__sprint_r.part.0+0x2e>
 8006f16:	45a0      	cmp	r8, r4
 8006f18:	d00e      	beq.n	8006f38 <__sprint_r.part.0+0x4c>
 8006f1a:	4632      	mov	r2, r6
 8006f1c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006f20:	4638      	mov	r0, r7
 8006f22:	f000 f99d 	bl	8007260 <_fputwc_r>
 8006f26:	1c43      	adds	r3, r0, #1
 8006f28:	f104 0401 	add.w	r4, r4, #1
 8006f2c:	d1f3      	bne.n	8006f16 <__sprint_r.part.0+0x2a>
 8006f2e:	2300      	movs	r3, #0
 8006f30:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006f34:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f38:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006f3c:	f02b 0b03 	bic.w	fp, fp, #3
 8006f40:	eba3 030b 	sub.w	r3, r3, fp
 8006f44:	f8ca 3008 	str.w	r3, [sl, #8]
 8006f48:	f109 0908 	add.w	r9, r9, #8
 8006f4c:	2b00      	cmp	r3, #0
 8006f4e:	d1da      	bne.n	8006f06 <__sprint_r.part.0+0x1a>
 8006f50:	2000      	movs	r0, #0
 8006f52:	e7ec      	b.n	8006f2e <__sprint_r.part.0+0x42>
 8006f54:	f7fe fd0c 	bl	8005970 <__sfvwrite_r>
 8006f58:	2300      	movs	r3, #0
 8006f5a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006f5e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f62:	bf00      	nop

08006f64 <__sprint_r>:
 8006f64:	6893      	ldr	r3, [r2, #8]
 8006f66:	b10b      	cbz	r3, 8006f6c <__sprint_r+0x8>
 8006f68:	f7ff bfc0 	b.w	8006eec <__sprint_r.part.0>
 8006f6c:	b410      	push	{r4}
 8006f6e:	4618      	mov	r0, r3
 8006f70:	6053      	str	r3, [r2, #4]
 8006f72:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006f76:	4770      	bx	lr

08006f78 <_write_r>:
 8006f78:	b570      	push	{r4, r5, r6, lr}
 8006f7a:	460d      	mov	r5, r1
 8006f7c:	4c08      	ldr	r4, [pc, #32]	; (8006fa0 <_write_r+0x28>)
 8006f7e:	4611      	mov	r1, r2
 8006f80:	4606      	mov	r6, r0
 8006f82:	461a      	mov	r2, r3
 8006f84:	4628      	mov	r0, r5
 8006f86:	2300      	movs	r3, #0
 8006f88:	6023      	str	r3, [r4, #0]
 8006f8a:	f7fb fa28 	bl	80023de <_write>
 8006f8e:	1c43      	adds	r3, r0, #1
 8006f90:	d000      	beq.n	8006f94 <_write_r+0x1c>
 8006f92:	bd70      	pop	{r4, r5, r6, pc}
 8006f94:	6823      	ldr	r3, [r4, #0]
 8006f96:	2b00      	cmp	r3, #0
 8006f98:	d0fb      	beq.n	8006f92 <_write_r+0x1a>
 8006f9a:	6033      	str	r3, [r6, #0]
 8006f9c:	bd70      	pop	{r4, r5, r6, pc}
 8006f9e:	bf00      	nop
 8006fa0:	20000c54 	.word	0x20000c54

08006fa4 <__register_exitproc>:
 8006fa4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006fa8:	4d2b      	ldr	r5, [pc, #172]	; (8007058 <__register_exitproc+0xb4>)
 8006faa:	4606      	mov	r6, r0
 8006fac:	6828      	ldr	r0, [r5, #0]
 8006fae:	4698      	mov	r8, r3
 8006fb0:	460f      	mov	r7, r1
 8006fb2:	4691      	mov	r9, r2
 8006fb4:	f7fe fe96 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 8006fb8:	4b28      	ldr	r3, [pc, #160]	; (800705c <__register_exitproc+0xb8>)
 8006fba:	681c      	ldr	r4, [r3, #0]
 8006fbc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006fc0:	2b00      	cmp	r3, #0
 8006fc2:	d03d      	beq.n	8007040 <__register_exitproc+0x9c>
 8006fc4:	685a      	ldr	r2, [r3, #4]
 8006fc6:	2a1f      	cmp	r2, #31
 8006fc8:	dc0d      	bgt.n	8006fe6 <__register_exitproc+0x42>
 8006fca:	f102 0c01 	add.w	ip, r2, #1
 8006fce:	bb16      	cbnz	r6, 8007016 <__register_exitproc+0x72>
 8006fd0:	3202      	adds	r2, #2
 8006fd2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006fd6:	6828      	ldr	r0, [r5, #0]
 8006fd8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006fdc:	f7fe fe84 	bl	8005ce8 <__retarget_lock_release_recursive>
 8006fe0:	2000      	movs	r0, #0
 8006fe2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006fe6:	4b1e      	ldr	r3, [pc, #120]	; (8007060 <__register_exitproc+0xbc>)
 8006fe8:	b37b      	cbz	r3, 800704a <__register_exitproc+0xa6>
 8006fea:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006fee:	f3af 8000 	nop.w
 8006ff2:	4603      	mov	r3, r0
 8006ff4:	b348      	cbz	r0, 800704a <__register_exitproc+0xa6>
 8006ff6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006ffa:	2100      	movs	r1, #0
 8006ffc:	e9c0 2100 	strd	r2, r1, [r0]
 8007000:	f04f 0c01 	mov.w	ip, #1
 8007004:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007008:	460a      	mov	r2, r1
 800700a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800700e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007012:	2e00      	cmp	r6, #0
 8007014:	d0dc      	beq.n	8006fd0 <__register_exitproc+0x2c>
 8007016:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800701a:	2401      	movs	r4, #1
 800701c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007020:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007024:	4094      	lsls	r4, r2
 8007026:	4320      	orrs	r0, r4
 8007028:	2e02      	cmp	r6, #2
 800702a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800702e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007032:	d1cd      	bne.n	8006fd0 <__register_exitproc+0x2c>
 8007034:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007038:	430c      	orrs	r4, r1
 800703a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800703e:	e7c7      	b.n	8006fd0 <__register_exitproc+0x2c>
 8007040:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007044:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007048:	e7bc      	b.n	8006fc4 <__register_exitproc+0x20>
 800704a:	6828      	ldr	r0, [r5, #0]
 800704c:	f7fe fe4c 	bl	8005ce8 <__retarget_lock_release_recursive>
 8007050:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007054:	e7c5      	b.n	8006fe2 <__register_exitproc+0x3e>
 8007056:	bf00      	nop
 8007058:	20000590 	.word	0x20000590
 800705c:	08007744 	.word	0x08007744
 8007060:	00000000 	.word	0x00000000

08007064 <_calloc_r>:
 8007064:	b510      	push	{r4, lr}
 8007066:	fb02 f101 	mul.w	r1, r2, r1
 800706a:	f7fe feb7 	bl	8005ddc <_malloc_r>
 800706e:	4604      	mov	r4, r0
 8007070:	b1d8      	cbz	r0, 80070aa <_calloc_r+0x46>
 8007072:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007076:	f022 0203 	bic.w	r2, r2, #3
 800707a:	3a04      	subs	r2, #4
 800707c:	2a24      	cmp	r2, #36	; 0x24
 800707e:	d81d      	bhi.n	80070bc <_calloc_r+0x58>
 8007080:	2a13      	cmp	r2, #19
 8007082:	d914      	bls.n	80070ae <_calloc_r+0x4a>
 8007084:	2300      	movs	r3, #0
 8007086:	2a1b      	cmp	r2, #27
 8007088:	e9c0 3300 	strd	r3, r3, [r0]
 800708c:	d91b      	bls.n	80070c6 <_calloc_r+0x62>
 800708e:	2a24      	cmp	r2, #36	; 0x24
 8007090:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007094:	bf0a      	itet	eq
 8007096:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800709a:	f100 0210 	addne.w	r2, r0, #16
 800709e:	f100 0218 	addeq.w	r2, r0, #24
 80070a2:	2300      	movs	r3, #0
 80070a4:	e9c2 3300 	strd	r3, r3, [r2]
 80070a8:	6093      	str	r3, [r2, #8]
 80070aa:	4620      	mov	r0, r4
 80070ac:	bd10      	pop	{r4, pc}
 80070ae:	4602      	mov	r2, r0
 80070b0:	2300      	movs	r3, #0
 80070b2:	e9c2 3300 	strd	r3, r3, [r2]
 80070b6:	6093      	str	r3, [r2, #8]
 80070b8:	4620      	mov	r0, r4
 80070ba:	bd10      	pop	{r4, pc}
 80070bc:	2100      	movs	r1, #0
 80070be:	f7fb fb6f 	bl	80027a0 <memset>
 80070c2:	4620      	mov	r0, r4
 80070c4:	bd10      	pop	{r4, pc}
 80070c6:	f100 0208 	add.w	r2, r0, #8
 80070ca:	e7f1      	b.n	80070b0 <_calloc_r+0x4c>

080070cc <_close_r>:
 80070cc:	b538      	push	{r3, r4, r5, lr}
 80070ce:	4c07      	ldr	r4, [pc, #28]	; (80070ec <_close_r+0x20>)
 80070d0:	2300      	movs	r3, #0
 80070d2:	4605      	mov	r5, r0
 80070d4:	4608      	mov	r0, r1
 80070d6:	6023      	str	r3, [r4, #0]
 80070d8:	f7fb f9b0 	bl	800243c <_close>
 80070dc:	1c43      	adds	r3, r0, #1
 80070de:	d000      	beq.n	80070e2 <_close_r+0x16>
 80070e0:	bd38      	pop	{r3, r4, r5, pc}
 80070e2:	6823      	ldr	r3, [r4, #0]
 80070e4:	2b00      	cmp	r3, #0
 80070e6:	d0fb      	beq.n	80070e0 <_close_r+0x14>
 80070e8:	602b      	str	r3, [r5, #0]
 80070ea:	bd38      	pop	{r3, r4, r5, pc}
 80070ec:	20000c54 	.word	0x20000c54

080070f0 <_fclose_r>:
 80070f0:	b570      	push	{r4, r5, r6, lr}
 80070f2:	2900      	cmp	r1, #0
 80070f4:	d048      	beq.n	8007188 <_fclose_r+0x98>
 80070f6:	4605      	mov	r5, r0
 80070f8:	460c      	mov	r4, r1
 80070fa:	b110      	cbz	r0, 8007102 <_fclose_r+0x12>
 80070fc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80070fe:	2b00      	cmp	r3, #0
 8007100:	d048      	beq.n	8007194 <_fclose_r+0xa4>
 8007102:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007104:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007108:	07d0      	lsls	r0, r2, #31
 800710a:	d440      	bmi.n	800718e <_fclose_r+0x9e>
 800710c:	0599      	lsls	r1, r3, #22
 800710e:	d530      	bpl.n	8007172 <_fclose_r+0x82>
 8007110:	4621      	mov	r1, r4
 8007112:	4628      	mov	r0, r5
 8007114:	f7fe f990 	bl	8005438 <__sflush_r>
 8007118:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800711a:	4606      	mov	r6, r0
 800711c:	b133      	cbz	r3, 800712c <_fclose_r+0x3c>
 800711e:	69e1      	ldr	r1, [r4, #28]
 8007120:	4628      	mov	r0, r5
 8007122:	4798      	blx	r3
 8007124:	2800      	cmp	r0, #0
 8007126:	bfb8      	it	lt
 8007128:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800712c:	89a3      	ldrh	r3, [r4, #12]
 800712e:	061a      	lsls	r2, r3, #24
 8007130:	d43c      	bmi.n	80071ac <_fclose_r+0xbc>
 8007132:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007134:	b141      	cbz	r1, 8007148 <_fclose_r+0x58>
 8007136:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800713a:	4299      	cmp	r1, r3
 800713c:	d002      	beq.n	8007144 <_fclose_r+0x54>
 800713e:	4628      	mov	r0, r5
 8007140:	f7fe fb22 	bl	8005788 <_free_r>
 8007144:	2300      	movs	r3, #0
 8007146:	6323      	str	r3, [r4, #48]	; 0x30
 8007148:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800714a:	b121      	cbz	r1, 8007156 <_fclose_r+0x66>
 800714c:	4628      	mov	r0, r5
 800714e:	f7fe fb1b 	bl	8005788 <_free_r>
 8007152:	2300      	movs	r3, #0
 8007154:	6463      	str	r3, [r4, #68]	; 0x44
 8007156:	f7fe faa1 	bl	800569c <__sfp_lock_acquire>
 800715a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800715c:	2200      	movs	r2, #0
 800715e:	07db      	lsls	r3, r3, #31
 8007160:	81a2      	strh	r2, [r4, #12]
 8007162:	d51f      	bpl.n	80071a4 <_fclose_r+0xb4>
 8007164:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007166:	f7fe fdbb 	bl	8005ce0 <__retarget_lock_close_recursive>
 800716a:	f7fe fa9d 	bl	80056a8 <__sfp_lock_release>
 800716e:	4630      	mov	r0, r6
 8007170:	bd70      	pop	{r4, r5, r6, pc}
 8007172:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007174:	f7fe fdb6 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 8007178:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800717c:	2b00      	cmp	r3, #0
 800717e:	d1c7      	bne.n	8007110 <_fclose_r+0x20>
 8007180:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007182:	f016 0601 	ands.w	r6, r6, #1
 8007186:	d016      	beq.n	80071b6 <_fclose_r+0xc6>
 8007188:	2600      	movs	r6, #0
 800718a:	4630      	mov	r0, r6
 800718c:	bd70      	pop	{r4, r5, r6, pc}
 800718e:	2b00      	cmp	r3, #0
 8007190:	d0fa      	beq.n	8007188 <_fclose_r+0x98>
 8007192:	e7bd      	b.n	8007110 <_fclose_r+0x20>
 8007194:	f7fe fa56 	bl	8005644 <__sinit>
 8007198:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800719a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800719e:	07d0      	lsls	r0, r2, #31
 80071a0:	d4f5      	bmi.n	800718e <_fclose_r+0x9e>
 80071a2:	e7b3      	b.n	800710c <_fclose_r+0x1c>
 80071a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071a6:	f7fe fd9f 	bl	8005ce8 <__retarget_lock_release_recursive>
 80071aa:	e7db      	b.n	8007164 <_fclose_r+0x74>
 80071ac:	6921      	ldr	r1, [r4, #16]
 80071ae:	4628      	mov	r0, r5
 80071b0:	f7fe faea 	bl	8005788 <_free_r>
 80071b4:	e7bd      	b.n	8007132 <_fclose_r+0x42>
 80071b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071b8:	f7fe fd96 	bl	8005ce8 <__retarget_lock_release_recursive>
 80071bc:	4630      	mov	r0, r6
 80071be:	bd70      	pop	{r4, r5, r6, pc}

080071c0 <__fputwc>:
 80071c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80071c4:	b082      	sub	sp, #8
 80071c6:	4681      	mov	r9, r0
 80071c8:	4688      	mov	r8, r1
 80071ca:	4614      	mov	r4, r2
 80071cc:	f000 f8a0 	bl	8007310 <__locale_mb_cur_max>
 80071d0:	2801      	cmp	r0, #1
 80071d2:	d103      	bne.n	80071dc <__fputwc+0x1c>
 80071d4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80071d8:	2bfe      	cmp	r3, #254	; 0xfe
 80071da:	d933      	bls.n	8007244 <__fputwc+0x84>
 80071dc:	4642      	mov	r2, r8
 80071de:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80071e2:	a901      	add	r1, sp, #4
 80071e4:	4648      	mov	r0, r9
 80071e6:	f000 f93b 	bl	8007460 <_wcrtomb_r>
 80071ea:	1c42      	adds	r2, r0, #1
 80071ec:	4606      	mov	r6, r0
 80071ee:	d02f      	beq.n	8007250 <__fputwc+0x90>
 80071f0:	b320      	cbz	r0, 800723c <__fputwc+0x7c>
 80071f2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80071f6:	2500      	movs	r5, #0
 80071f8:	f10d 0a04 	add.w	sl, sp, #4
 80071fc:	e009      	b.n	8007212 <__fputwc+0x52>
 80071fe:	6823      	ldr	r3, [r4, #0]
 8007200:	1c5a      	adds	r2, r3, #1
 8007202:	6022      	str	r2, [r4, #0]
 8007204:	f883 c000 	strb.w	ip, [r3]
 8007208:	3501      	adds	r5, #1
 800720a:	42b5      	cmp	r5, r6
 800720c:	d216      	bcs.n	800723c <__fputwc+0x7c>
 800720e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007212:	68a3      	ldr	r3, [r4, #8]
 8007214:	3b01      	subs	r3, #1
 8007216:	2b00      	cmp	r3, #0
 8007218:	60a3      	str	r3, [r4, #8]
 800721a:	daf0      	bge.n	80071fe <__fputwc+0x3e>
 800721c:	69a7      	ldr	r7, [r4, #24]
 800721e:	42bb      	cmp	r3, r7
 8007220:	4661      	mov	r1, ip
 8007222:	4622      	mov	r2, r4
 8007224:	4648      	mov	r0, r9
 8007226:	db02      	blt.n	800722e <__fputwc+0x6e>
 8007228:	f1bc 0f0a 	cmp.w	ip, #10
 800722c:	d1e7      	bne.n	80071fe <__fputwc+0x3e>
 800722e:	f000 f8bf 	bl	80073b0 <__swbuf_r>
 8007232:	1c43      	adds	r3, r0, #1
 8007234:	d1e8      	bne.n	8007208 <__fputwc+0x48>
 8007236:	b002      	add	sp, #8
 8007238:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800723c:	4640      	mov	r0, r8
 800723e:	b002      	add	sp, #8
 8007240:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007244:	fa5f fc88 	uxtb.w	ip, r8
 8007248:	4606      	mov	r6, r0
 800724a:	f88d c004 	strb.w	ip, [sp, #4]
 800724e:	e7d2      	b.n	80071f6 <__fputwc+0x36>
 8007250:	89a3      	ldrh	r3, [r4, #12]
 8007252:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007256:	81a3      	strh	r3, [r4, #12]
 8007258:	b002      	add	sp, #8
 800725a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800725e:	bf00      	nop

08007260 <_fputwc_r>:
 8007260:	b530      	push	{r4, r5, lr}
 8007262:	4605      	mov	r5, r0
 8007264:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007266:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800726a:	07c0      	lsls	r0, r0, #31
 800726c:	4614      	mov	r4, r2
 800726e:	b083      	sub	sp, #12
 8007270:	b29a      	uxth	r2, r3
 8007272:	d401      	bmi.n	8007278 <_fputwc_r+0x18>
 8007274:	0590      	lsls	r0, r2, #22
 8007276:	d51c      	bpl.n	80072b2 <_fputwc_r+0x52>
 8007278:	0490      	lsls	r0, r2, #18
 800727a:	d406      	bmi.n	800728a <_fputwc_r+0x2a>
 800727c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800727e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007282:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007286:	81a3      	strh	r3, [r4, #12]
 8007288:	6662      	str	r2, [r4, #100]	; 0x64
 800728a:	4628      	mov	r0, r5
 800728c:	4622      	mov	r2, r4
 800728e:	f7ff ff97 	bl	80071c0 <__fputwc>
 8007292:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007294:	07da      	lsls	r2, r3, #31
 8007296:	4605      	mov	r5, r0
 8007298:	d402      	bmi.n	80072a0 <_fputwc_r+0x40>
 800729a:	89a3      	ldrh	r3, [r4, #12]
 800729c:	059b      	lsls	r3, r3, #22
 800729e:	d502      	bpl.n	80072a6 <_fputwc_r+0x46>
 80072a0:	4628      	mov	r0, r5
 80072a2:	b003      	add	sp, #12
 80072a4:	bd30      	pop	{r4, r5, pc}
 80072a6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072a8:	f7fe fd1e 	bl	8005ce8 <__retarget_lock_release_recursive>
 80072ac:	4628      	mov	r0, r5
 80072ae:	b003      	add	sp, #12
 80072b0:	bd30      	pop	{r4, r5, pc}
 80072b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072b4:	9101      	str	r1, [sp, #4]
 80072b6:	f7fe fd15 	bl	8005ce4 <__retarget_lock_acquire_recursive>
 80072ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072be:	9901      	ldr	r1, [sp, #4]
 80072c0:	b29a      	uxth	r2, r3
 80072c2:	e7d9      	b.n	8007278 <_fputwc_r+0x18>

080072c4 <_fstat_r>:
 80072c4:	b538      	push	{r3, r4, r5, lr}
 80072c6:	460b      	mov	r3, r1
 80072c8:	4c07      	ldr	r4, [pc, #28]	; (80072e8 <_fstat_r+0x24>)
 80072ca:	4605      	mov	r5, r0
 80072cc:	4611      	mov	r1, r2
 80072ce:	4618      	mov	r0, r3
 80072d0:	2300      	movs	r3, #0
 80072d2:	6023      	str	r3, [r4, #0]
 80072d4:	f7fb f8b5 	bl	8002442 <_fstat>
 80072d8:	1c43      	adds	r3, r0, #1
 80072da:	d000      	beq.n	80072de <_fstat_r+0x1a>
 80072dc:	bd38      	pop	{r3, r4, r5, pc}
 80072de:	6823      	ldr	r3, [r4, #0]
 80072e0:	2b00      	cmp	r3, #0
 80072e2:	d0fb      	beq.n	80072dc <_fstat_r+0x18>
 80072e4:	602b      	str	r3, [r5, #0]
 80072e6:	bd38      	pop	{r3, r4, r5, pc}
 80072e8:	20000c54 	.word	0x20000c54

080072ec <_isatty_r>:
 80072ec:	b538      	push	{r3, r4, r5, lr}
 80072ee:	4c07      	ldr	r4, [pc, #28]	; (800730c <_isatty_r+0x20>)
 80072f0:	2300      	movs	r3, #0
 80072f2:	4605      	mov	r5, r0
 80072f4:	4608      	mov	r0, r1
 80072f6:	6023      	str	r3, [r4, #0]
 80072f8:	f7fb f8a8 	bl	800244c <_isatty>
 80072fc:	1c43      	adds	r3, r0, #1
 80072fe:	d000      	beq.n	8007302 <_isatty_r+0x16>
 8007300:	bd38      	pop	{r3, r4, r5, pc}
 8007302:	6823      	ldr	r3, [r4, #0]
 8007304:	2b00      	cmp	r3, #0
 8007306:	d0fb      	beq.n	8007300 <_isatty_r+0x14>
 8007308:	602b      	str	r3, [r5, #0]
 800730a:	bd38      	pop	{r3, r4, r5, pc}
 800730c:	20000c54 	.word	0x20000c54

08007310 <__locale_mb_cur_max>:
 8007310:	4b04      	ldr	r3, [pc, #16]	; (8007324 <__locale_mb_cur_max+0x14>)
 8007312:	4a05      	ldr	r2, [pc, #20]	; (8007328 <__locale_mb_cur_max+0x18>)
 8007314:	681b      	ldr	r3, [r3, #0]
 8007316:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007318:	2b00      	cmp	r3, #0
 800731a:	bf08      	it	eq
 800731c:	4613      	moveq	r3, r2
 800731e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007322:	4770      	bx	lr
 8007324:	20000160 	.word	0x20000160
 8007328:	200009a4 	.word	0x200009a4

0800732c <_lseek_r>:
 800732c:	b570      	push	{r4, r5, r6, lr}
 800732e:	460d      	mov	r5, r1
 8007330:	4c08      	ldr	r4, [pc, #32]	; (8007354 <_lseek_r+0x28>)
 8007332:	4611      	mov	r1, r2
 8007334:	4606      	mov	r6, r0
 8007336:	461a      	mov	r2, r3
 8007338:	4628      	mov	r0, r5
 800733a:	2300      	movs	r3, #0
 800733c:	6023      	str	r3, [r4, #0]
 800733e:	f7fb f887 	bl	8002450 <_lseek>
 8007342:	1c43      	adds	r3, r0, #1
 8007344:	d000      	beq.n	8007348 <_lseek_r+0x1c>
 8007346:	bd70      	pop	{r4, r5, r6, pc}
 8007348:	6823      	ldr	r3, [r4, #0]
 800734a:	2b00      	cmp	r3, #0
 800734c:	d0fb      	beq.n	8007346 <_lseek_r+0x1a>
 800734e:	6033      	str	r3, [r6, #0]
 8007350:	bd70      	pop	{r4, r5, r6, pc}
 8007352:	bf00      	nop
 8007354:	20000c54 	.word	0x20000c54

08007358 <__ascii_mbtowc>:
 8007358:	b082      	sub	sp, #8
 800735a:	b149      	cbz	r1, 8007370 <__ascii_mbtowc+0x18>
 800735c:	b15a      	cbz	r2, 8007376 <__ascii_mbtowc+0x1e>
 800735e:	b16b      	cbz	r3, 800737c <__ascii_mbtowc+0x24>
 8007360:	7813      	ldrb	r3, [r2, #0]
 8007362:	600b      	str	r3, [r1, #0]
 8007364:	7812      	ldrb	r2, [r2, #0]
 8007366:	1c10      	adds	r0, r2, #0
 8007368:	bf18      	it	ne
 800736a:	2001      	movne	r0, #1
 800736c:	b002      	add	sp, #8
 800736e:	4770      	bx	lr
 8007370:	a901      	add	r1, sp, #4
 8007372:	2a00      	cmp	r2, #0
 8007374:	d1f3      	bne.n	800735e <__ascii_mbtowc+0x6>
 8007376:	4610      	mov	r0, r2
 8007378:	b002      	add	sp, #8
 800737a:	4770      	bx	lr
 800737c:	f06f 0001 	mvn.w	r0, #1
 8007380:	e7f4      	b.n	800736c <__ascii_mbtowc+0x14>
 8007382:	bf00      	nop

08007384 <_read_r>:
 8007384:	b570      	push	{r4, r5, r6, lr}
 8007386:	460d      	mov	r5, r1
 8007388:	4c08      	ldr	r4, [pc, #32]	; (80073ac <_read_r+0x28>)
 800738a:	4611      	mov	r1, r2
 800738c:	4606      	mov	r6, r0
 800738e:	461a      	mov	r2, r3
 8007390:	4628      	mov	r0, r5
 8007392:	2300      	movs	r3, #0
 8007394:	6023      	str	r3, [r4, #0]
 8007396:	f7fb f80f 	bl	80023b8 <_read>
 800739a:	1c43      	adds	r3, r0, #1
 800739c:	d000      	beq.n	80073a0 <_read_r+0x1c>
 800739e:	bd70      	pop	{r4, r5, r6, pc}
 80073a0:	6823      	ldr	r3, [r4, #0]
 80073a2:	2b00      	cmp	r3, #0
 80073a4:	d0fb      	beq.n	800739e <_read_r+0x1a>
 80073a6:	6033      	str	r3, [r6, #0]
 80073a8:	bd70      	pop	{r4, r5, r6, pc}
 80073aa:	bf00      	nop
 80073ac:	20000c54 	.word	0x20000c54

080073b0 <__swbuf_r>:
 80073b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073b2:	460d      	mov	r5, r1
 80073b4:	4614      	mov	r4, r2
 80073b6:	4606      	mov	r6, r0
 80073b8:	b110      	cbz	r0, 80073c0 <__swbuf_r+0x10>
 80073ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80073bc:	2b00      	cmp	r3, #0
 80073be:	d043      	beq.n	8007448 <__swbuf_r+0x98>
 80073c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80073c4:	69a3      	ldr	r3, [r4, #24]
 80073c6:	60a3      	str	r3, [r4, #8]
 80073c8:	b291      	uxth	r1, r2
 80073ca:	0708      	lsls	r0, r1, #28
 80073cc:	d51b      	bpl.n	8007406 <__swbuf_r+0x56>
 80073ce:	6923      	ldr	r3, [r4, #16]
 80073d0:	b1cb      	cbz	r3, 8007406 <__swbuf_r+0x56>
 80073d2:	b2ed      	uxtb	r5, r5
 80073d4:	0489      	lsls	r1, r1, #18
 80073d6:	462f      	mov	r7, r5
 80073d8:	d522      	bpl.n	8007420 <__swbuf_r+0x70>
 80073da:	6822      	ldr	r2, [r4, #0]
 80073dc:	6961      	ldr	r1, [r4, #20]
 80073de:	1ad3      	subs	r3, r2, r3
 80073e0:	4299      	cmp	r1, r3
 80073e2:	dd29      	ble.n	8007438 <__swbuf_r+0x88>
 80073e4:	3301      	adds	r3, #1
 80073e6:	68a1      	ldr	r1, [r4, #8]
 80073e8:	1c50      	adds	r0, r2, #1
 80073ea:	3901      	subs	r1, #1
 80073ec:	60a1      	str	r1, [r4, #8]
 80073ee:	6020      	str	r0, [r4, #0]
 80073f0:	7015      	strb	r5, [r2, #0]
 80073f2:	6962      	ldr	r2, [r4, #20]
 80073f4:	429a      	cmp	r2, r3
 80073f6:	d02a      	beq.n	800744e <__swbuf_r+0x9e>
 80073f8:	89a3      	ldrh	r3, [r4, #12]
 80073fa:	07db      	lsls	r3, r3, #31
 80073fc:	d501      	bpl.n	8007402 <__swbuf_r+0x52>
 80073fe:	2d0a      	cmp	r5, #10
 8007400:	d025      	beq.n	800744e <__swbuf_r+0x9e>
 8007402:	4638      	mov	r0, r7
 8007404:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007406:	4621      	mov	r1, r4
 8007408:	4630      	mov	r0, r6
 800740a:	f7fc fffd 	bl	8004408 <__swsetup_r>
 800740e:	bb20      	cbnz	r0, 800745a <__swbuf_r+0xaa>
 8007410:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007414:	6923      	ldr	r3, [r4, #16]
 8007416:	b291      	uxth	r1, r2
 8007418:	b2ed      	uxtb	r5, r5
 800741a:	0489      	lsls	r1, r1, #18
 800741c:	462f      	mov	r7, r5
 800741e:	d4dc      	bmi.n	80073da <__swbuf_r+0x2a>
 8007420:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007422:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007426:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800742a:	81a2      	strh	r2, [r4, #12]
 800742c:	6822      	ldr	r2, [r4, #0]
 800742e:	6661      	str	r1, [r4, #100]	; 0x64
 8007430:	6961      	ldr	r1, [r4, #20]
 8007432:	1ad3      	subs	r3, r2, r3
 8007434:	4299      	cmp	r1, r3
 8007436:	dcd5      	bgt.n	80073e4 <__swbuf_r+0x34>
 8007438:	4621      	mov	r1, r4
 800743a:	4630      	mov	r0, r6
 800743c:	f7fe f8a6 	bl	800558c <_fflush_r>
 8007440:	b958      	cbnz	r0, 800745a <__swbuf_r+0xaa>
 8007442:	6822      	ldr	r2, [r4, #0]
 8007444:	2301      	movs	r3, #1
 8007446:	e7ce      	b.n	80073e6 <__swbuf_r+0x36>
 8007448:	f7fe f8fc 	bl	8005644 <__sinit>
 800744c:	e7b8      	b.n	80073c0 <__swbuf_r+0x10>
 800744e:	4621      	mov	r1, r4
 8007450:	4630      	mov	r0, r6
 8007452:	f7fe f89b 	bl	800558c <_fflush_r>
 8007456:	2800      	cmp	r0, #0
 8007458:	d0d3      	beq.n	8007402 <__swbuf_r+0x52>
 800745a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800745e:	e7d0      	b.n	8007402 <__swbuf_r+0x52>

08007460 <_wcrtomb_r>:
 8007460:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007462:	4c11      	ldr	r4, [pc, #68]	; (80074a8 <_wcrtomb_r+0x48>)
 8007464:	6824      	ldr	r4, [r4, #0]
 8007466:	b085      	sub	sp, #20
 8007468:	4606      	mov	r6, r0
 800746a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800746c:	461f      	mov	r7, r3
 800746e:	b151      	cbz	r1, 8007486 <_wcrtomb_r+0x26>
 8007470:	4d0e      	ldr	r5, [pc, #56]	; (80074ac <_wcrtomb_r+0x4c>)
 8007472:	2c00      	cmp	r4, #0
 8007474:	bf08      	it	eq
 8007476:	462c      	moveq	r4, r5
 8007478:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800747c:	47a0      	blx	r4
 800747e:	1c43      	adds	r3, r0, #1
 8007480:	d00c      	beq.n	800749c <_wcrtomb_r+0x3c>
 8007482:	b005      	add	sp, #20
 8007484:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007486:	4a09      	ldr	r2, [pc, #36]	; (80074ac <_wcrtomb_r+0x4c>)
 8007488:	2c00      	cmp	r4, #0
 800748a:	bf08      	it	eq
 800748c:	4614      	moveq	r4, r2
 800748e:	460a      	mov	r2, r1
 8007490:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007494:	a901      	add	r1, sp, #4
 8007496:	47a0      	blx	r4
 8007498:	1c43      	adds	r3, r0, #1
 800749a:	d1f2      	bne.n	8007482 <_wcrtomb_r+0x22>
 800749c:	2200      	movs	r2, #0
 800749e:	238a      	movs	r3, #138	; 0x8a
 80074a0:	603a      	str	r2, [r7, #0]
 80074a2:	6033      	str	r3, [r6, #0]
 80074a4:	b005      	add	sp, #20
 80074a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80074a8:	20000160 	.word	0x20000160
 80074ac:	200009a4 	.word	0x200009a4

080074b0 <__ascii_wctomb>:
 80074b0:	b121      	cbz	r1, 80074bc <__ascii_wctomb+0xc>
 80074b2:	2aff      	cmp	r2, #255	; 0xff
 80074b4:	d804      	bhi.n	80074c0 <__ascii_wctomb+0x10>
 80074b6:	700a      	strb	r2, [r1, #0]
 80074b8:	2001      	movs	r0, #1
 80074ba:	4770      	bx	lr
 80074bc:	4608      	mov	r0, r1
 80074be:	4770      	bx	lr
 80074c0:	238a      	movs	r3, #138	; 0x8a
 80074c2:	6003      	str	r3, [r0, #0]
 80074c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80074c8:	4770      	bx	lr
 80074ca:	bf00      	nop

080074cc <_init>:
 80074cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80074ce:	bf00      	nop
 80074d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80074d2:	bc08      	pop	{r3}
 80074d4:	469e      	mov	lr, r3
 80074d6:	4770      	bx	lr

080074d8 <_fini>:
 80074d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80074da:	bf00      	nop
 80074dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80074de:	bc08      	pop	{r3}
 80074e0:	469e      	mov	lr, r3
 80074e2:	4770      	bx	lr
 80074e4:	0000      	movs	r0, r0
	...
