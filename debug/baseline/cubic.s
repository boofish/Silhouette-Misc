
cubic.elf:     file format elf32-littlearm


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
 80001e0:	0800a83c 	.word	0x0800a83c

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
 80001fc:	0800a83c 	.word	0x0800a83c

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

08000ad8 <__aeabi_d2iz>:
 8000ad8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000adc:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8000ae0:	d215      	bcs.n	8000b0e <__aeabi_d2iz+0x36>
 8000ae2:	d511      	bpl.n	8000b08 <__aeabi_d2iz+0x30>
 8000ae4:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8000ae8:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8000aec:	d912      	bls.n	8000b14 <__aeabi_d2iz+0x3c>
 8000aee:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000af2:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000af6:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8000afa:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000afe:	fa23 f002 	lsr.w	r0, r3, r2
 8000b02:	bf18      	it	ne
 8000b04:	4240      	negne	r0, r0
 8000b06:	4770      	bx	lr
 8000b08:	f04f 0000 	mov.w	r0, #0
 8000b0c:	4770      	bx	lr
 8000b0e:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8000b12:	d105      	bne.n	8000b20 <__aeabi_d2iz+0x48>
 8000b14:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8000b18:	bf08      	it	eq
 8000b1a:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8000b1e:	4770      	bx	lr
 8000b20:	f04f 0000 	mov.w	r0, #0
 8000b24:	4770      	bx	lr
 8000b26:	bf00      	nop

08000b28 <__aeabi_uldivmod>:
 8000b28:	b953      	cbnz	r3, 8000b40 <__aeabi_uldivmod+0x18>
 8000b2a:	b94a      	cbnz	r2, 8000b40 <__aeabi_uldivmod+0x18>
 8000b2c:	2900      	cmp	r1, #0
 8000b2e:	bf08      	it	eq
 8000b30:	2800      	cmpeq	r0, #0
 8000b32:	bf1c      	itt	ne
 8000b34:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000b38:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000b3c:	f000 b972 	b.w	8000e24 <__aeabi_idiv0>
 8000b40:	f1ad 0c08 	sub.w	ip, sp, #8
 8000b44:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000b48:	f000 f806 	bl	8000b58 <__udivmoddi4>
 8000b4c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b50:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b54:	b004      	add	sp, #16
 8000b56:	4770      	bx	lr

08000b58 <__udivmoddi4>:
 8000b58:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b5c:	9e08      	ldr	r6, [sp, #32]
 8000b5e:	4604      	mov	r4, r0
 8000b60:	4688      	mov	r8, r1
 8000b62:	2b00      	cmp	r3, #0
 8000b64:	d14b      	bne.n	8000bfe <__udivmoddi4+0xa6>
 8000b66:	428a      	cmp	r2, r1
 8000b68:	4615      	mov	r5, r2
 8000b6a:	d967      	bls.n	8000c3c <__udivmoddi4+0xe4>
 8000b6c:	fab2 f282 	clz	r2, r2
 8000b70:	b14a      	cbz	r2, 8000b86 <__udivmoddi4+0x2e>
 8000b72:	f1c2 0720 	rsb	r7, r2, #32
 8000b76:	fa01 f302 	lsl.w	r3, r1, r2
 8000b7a:	fa20 f707 	lsr.w	r7, r0, r7
 8000b7e:	4095      	lsls	r5, r2
 8000b80:	ea47 0803 	orr.w	r8, r7, r3
 8000b84:	4094      	lsls	r4, r2
 8000b86:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b8a:	0c23      	lsrs	r3, r4, #16
 8000b8c:	fbb8 f7fe 	udiv	r7, r8, lr
 8000b90:	fa1f fc85 	uxth.w	ip, r5
 8000b94:	fb0e 8817 	mls	r8, lr, r7, r8
 8000b98:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000b9c:	fb07 f10c 	mul.w	r1, r7, ip
 8000ba0:	4299      	cmp	r1, r3
 8000ba2:	d909      	bls.n	8000bb8 <__udivmoddi4+0x60>
 8000ba4:	18eb      	adds	r3, r5, r3
 8000ba6:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000baa:	f080 811b 	bcs.w	8000de4 <__udivmoddi4+0x28c>
 8000bae:	4299      	cmp	r1, r3
 8000bb0:	f240 8118 	bls.w	8000de4 <__udivmoddi4+0x28c>
 8000bb4:	3f02      	subs	r7, #2
 8000bb6:	442b      	add	r3, r5
 8000bb8:	1a5b      	subs	r3, r3, r1
 8000bba:	b2a4      	uxth	r4, r4
 8000bbc:	fbb3 f0fe 	udiv	r0, r3, lr
 8000bc0:	fb0e 3310 	mls	r3, lr, r0, r3
 8000bc4:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000bc8:	fb00 fc0c 	mul.w	ip, r0, ip
 8000bcc:	45a4      	cmp	ip, r4
 8000bce:	d909      	bls.n	8000be4 <__udivmoddi4+0x8c>
 8000bd0:	192c      	adds	r4, r5, r4
 8000bd2:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000bd6:	f080 8107 	bcs.w	8000de8 <__udivmoddi4+0x290>
 8000bda:	45a4      	cmp	ip, r4
 8000bdc:	f240 8104 	bls.w	8000de8 <__udivmoddi4+0x290>
 8000be0:	3802      	subs	r0, #2
 8000be2:	442c      	add	r4, r5
 8000be4:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000be8:	eba4 040c 	sub.w	r4, r4, ip
 8000bec:	2700      	movs	r7, #0
 8000bee:	b11e      	cbz	r6, 8000bf8 <__udivmoddi4+0xa0>
 8000bf0:	40d4      	lsrs	r4, r2
 8000bf2:	2300      	movs	r3, #0
 8000bf4:	e9c6 4300 	strd	r4, r3, [r6]
 8000bf8:	4639      	mov	r1, r7
 8000bfa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bfe:	428b      	cmp	r3, r1
 8000c00:	d909      	bls.n	8000c16 <__udivmoddi4+0xbe>
 8000c02:	2e00      	cmp	r6, #0
 8000c04:	f000 80eb 	beq.w	8000dde <__udivmoddi4+0x286>
 8000c08:	2700      	movs	r7, #0
 8000c0a:	e9c6 0100 	strd	r0, r1, [r6]
 8000c0e:	4638      	mov	r0, r7
 8000c10:	4639      	mov	r1, r7
 8000c12:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000c16:	fab3 f783 	clz	r7, r3
 8000c1a:	2f00      	cmp	r7, #0
 8000c1c:	d147      	bne.n	8000cae <__udivmoddi4+0x156>
 8000c1e:	428b      	cmp	r3, r1
 8000c20:	d302      	bcc.n	8000c28 <__udivmoddi4+0xd0>
 8000c22:	4282      	cmp	r2, r0
 8000c24:	f200 80fa 	bhi.w	8000e1c <__udivmoddi4+0x2c4>
 8000c28:	1a84      	subs	r4, r0, r2
 8000c2a:	eb61 0303 	sbc.w	r3, r1, r3
 8000c2e:	2001      	movs	r0, #1
 8000c30:	4698      	mov	r8, r3
 8000c32:	2e00      	cmp	r6, #0
 8000c34:	d0e0      	beq.n	8000bf8 <__udivmoddi4+0xa0>
 8000c36:	e9c6 4800 	strd	r4, r8, [r6]
 8000c3a:	e7dd      	b.n	8000bf8 <__udivmoddi4+0xa0>
 8000c3c:	b902      	cbnz	r2, 8000c40 <__udivmoddi4+0xe8>
 8000c3e:	deff      	udf	#255	; 0xff
 8000c40:	fab2 f282 	clz	r2, r2
 8000c44:	2a00      	cmp	r2, #0
 8000c46:	f040 808f 	bne.w	8000d68 <__udivmoddi4+0x210>
 8000c4a:	1b49      	subs	r1, r1, r5
 8000c4c:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c50:	fa1f f885 	uxth.w	r8, r5
 8000c54:	2701      	movs	r7, #1
 8000c56:	fbb1 fcfe 	udiv	ip, r1, lr
 8000c5a:	0c23      	lsrs	r3, r4, #16
 8000c5c:	fb0e 111c 	mls	r1, lr, ip, r1
 8000c60:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000c64:	fb08 f10c 	mul.w	r1, r8, ip
 8000c68:	4299      	cmp	r1, r3
 8000c6a:	d907      	bls.n	8000c7c <__udivmoddi4+0x124>
 8000c6c:	18eb      	adds	r3, r5, r3
 8000c6e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000c72:	d202      	bcs.n	8000c7a <__udivmoddi4+0x122>
 8000c74:	4299      	cmp	r1, r3
 8000c76:	f200 80cd 	bhi.w	8000e14 <__udivmoddi4+0x2bc>
 8000c7a:	4684      	mov	ip, r0
 8000c7c:	1a59      	subs	r1, r3, r1
 8000c7e:	b2a3      	uxth	r3, r4
 8000c80:	fbb1 f0fe 	udiv	r0, r1, lr
 8000c84:	fb0e 1410 	mls	r4, lr, r0, r1
 8000c88:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000c8c:	fb08 f800 	mul.w	r8, r8, r0
 8000c90:	45a0      	cmp	r8, r4
 8000c92:	d907      	bls.n	8000ca4 <__udivmoddi4+0x14c>
 8000c94:	192c      	adds	r4, r5, r4
 8000c96:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c9a:	d202      	bcs.n	8000ca2 <__udivmoddi4+0x14a>
 8000c9c:	45a0      	cmp	r8, r4
 8000c9e:	f200 80b6 	bhi.w	8000e0e <__udivmoddi4+0x2b6>
 8000ca2:	4618      	mov	r0, r3
 8000ca4:	eba4 0408 	sub.w	r4, r4, r8
 8000ca8:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000cac:	e79f      	b.n	8000bee <__udivmoddi4+0x96>
 8000cae:	f1c7 0c20 	rsb	ip, r7, #32
 8000cb2:	40bb      	lsls	r3, r7
 8000cb4:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000cb8:	ea4e 0e03 	orr.w	lr, lr, r3
 8000cbc:	fa01 f407 	lsl.w	r4, r1, r7
 8000cc0:	fa20 f50c 	lsr.w	r5, r0, ip
 8000cc4:	fa21 f30c 	lsr.w	r3, r1, ip
 8000cc8:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000ccc:	4325      	orrs	r5, r4
 8000cce:	fbb3 f9f8 	udiv	r9, r3, r8
 8000cd2:	0c2c      	lsrs	r4, r5, #16
 8000cd4:	fb08 3319 	mls	r3, r8, r9, r3
 8000cd8:	fa1f fa8e 	uxth.w	sl, lr
 8000cdc:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000ce0:	fb09 f40a 	mul.w	r4, r9, sl
 8000ce4:	429c      	cmp	r4, r3
 8000ce6:	fa02 f207 	lsl.w	r2, r2, r7
 8000cea:	fa00 f107 	lsl.w	r1, r0, r7
 8000cee:	d90b      	bls.n	8000d08 <__udivmoddi4+0x1b0>
 8000cf0:	eb1e 0303 	adds.w	r3, lr, r3
 8000cf4:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000cf8:	f080 8087 	bcs.w	8000e0a <__udivmoddi4+0x2b2>
 8000cfc:	429c      	cmp	r4, r3
 8000cfe:	f240 8084 	bls.w	8000e0a <__udivmoddi4+0x2b2>
 8000d02:	f1a9 0902 	sub.w	r9, r9, #2
 8000d06:	4473      	add	r3, lr
 8000d08:	1b1b      	subs	r3, r3, r4
 8000d0a:	b2ad      	uxth	r5, r5
 8000d0c:	fbb3 f0f8 	udiv	r0, r3, r8
 8000d10:	fb08 3310 	mls	r3, r8, r0, r3
 8000d14:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000d18:	fb00 fa0a 	mul.w	sl, r0, sl
 8000d1c:	45a2      	cmp	sl, r4
 8000d1e:	d908      	bls.n	8000d32 <__udivmoddi4+0x1da>
 8000d20:	eb1e 0404 	adds.w	r4, lr, r4
 8000d24:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000d28:	d26b      	bcs.n	8000e02 <__udivmoddi4+0x2aa>
 8000d2a:	45a2      	cmp	sl, r4
 8000d2c:	d969      	bls.n	8000e02 <__udivmoddi4+0x2aa>
 8000d2e:	3802      	subs	r0, #2
 8000d30:	4474      	add	r4, lr
 8000d32:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000d36:	fba0 8902 	umull	r8, r9, r0, r2
 8000d3a:	eba4 040a 	sub.w	r4, r4, sl
 8000d3e:	454c      	cmp	r4, r9
 8000d40:	46c2      	mov	sl, r8
 8000d42:	464b      	mov	r3, r9
 8000d44:	d354      	bcc.n	8000df0 <__udivmoddi4+0x298>
 8000d46:	d051      	beq.n	8000dec <__udivmoddi4+0x294>
 8000d48:	2e00      	cmp	r6, #0
 8000d4a:	d069      	beq.n	8000e20 <__udivmoddi4+0x2c8>
 8000d4c:	ebb1 050a 	subs.w	r5, r1, sl
 8000d50:	eb64 0403 	sbc.w	r4, r4, r3
 8000d54:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000d58:	40fd      	lsrs	r5, r7
 8000d5a:	40fc      	lsrs	r4, r7
 8000d5c:	ea4c 0505 	orr.w	r5, ip, r5
 8000d60:	e9c6 5400 	strd	r5, r4, [r6]
 8000d64:	2700      	movs	r7, #0
 8000d66:	e747      	b.n	8000bf8 <__udivmoddi4+0xa0>
 8000d68:	f1c2 0320 	rsb	r3, r2, #32
 8000d6c:	fa20 f703 	lsr.w	r7, r0, r3
 8000d70:	4095      	lsls	r5, r2
 8000d72:	fa01 f002 	lsl.w	r0, r1, r2
 8000d76:	fa21 f303 	lsr.w	r3, r1, r3
 8000d7a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000d7e:	4338      	orrs	r0, r7
 8000d80:	0c01      	lsrs	r1, r0, #16
 8000d82:	fbb3 f7fe 	udiv	r7, r3, lr
 8000d86:	fa1f f885 	uxth.w	r8, r5
 8000d8a:	fb0e 3317 	mls	r3, lr, r7, r3
 8000d8e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d92:	fb07 f308 	mul.w	r3, r7, r8
 8000d96:	428b      	cmp	r3, r1
 8000d98:	fa04 f402 	lsl.w	r4, r4, r2
 8000d9c:	d907      	bls.n	8000dae <__udivmoddi4+0x256>
 8000d9e:	1869      	adds	r1, r5, r1
 8000da0:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000da4:	d22f      	bcs.n	8000e06 <__udivmoddi4+0x2ae>
 8000da6:	428b      	cmp	r3, r1
 8000da8:	d92d      	bls.n	8000e06 <__udivmoddi4+0x2ae>
 8000daa:	3f02      	subs	r7, #2
 8000dac:	4429      	add	r1, r5
 8000dae:	1acb      	subs	r3, r1, r3
 8000db0:	b281      	uxth	r1, r0
 8000db2:	fbb3 f0fe 	udiv	r0, r3, lr
 8000db6:	fb0e 3310 	mls	r3, lr, r0, r3
 8000dba:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000dbe:	fb00 f308 	mul.w	r3, r0, r8
 8000dc2:	428b      	cmp	r3, r1
 8000dc4:	d907      	bls.n	8000dd6 <__udivmoddi4+0x27e>
 8000dc6:	1869      	adds	r1, r5, r1
 8000dc8:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000dcc:	d217      	bcs.n	8000dfe <__udivmoddi4+0x2a6>
 8000dce:	428b      	cmp	r3, r1
 8000dd0:	d915      	bls.n	8000dfe <__udivmoddi4+0x2a6>
 8000dd2:	3802      	subs	r0, #2
 8000dd4:	4429      	add	r1, r5
 8000dd6:	1ac9      	subs	r1, r1, r3
 8000dd8:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000ddc:	e73b      	b.n	8000c56 <__udivmoddi4+0xfe>
 8000dde:	4637      	mov	r7, r6
 8000de0:	4630      	mov	r0, r6
 8000de2:	e709      	b.n	8000bf8 <__udivmoddi4+0xa0>
 8000de4:	4607      	mov	r7, r0
 8000de6:	e6e7      	b.n	8000bb8 <__udivmoddi4+0x60>
 8000de8:	4618      	mov	r0, r3
 8000dea:	e6fb      	b.n	8000be4 <__udivmoddi4+0x8c>
 8000dec:	4541      	cmp	r1, r8
 8000dee:	d2ab      	bcs.n	8000d48 <__udivmoddi4+0x1f0>
 8000df0:	ebb8 0a02 	subs.w	sl, r8, r2
 8000df4:	eb69 020e 	sbc.w	r2, r9, lr
 8000df8:	3801      	subs	r0, #1
 8000dfa:	4613      	mov	r3, r2
 8000dfc:	e7a4      	b.n	8000d48 <__udivmoddi4+0x1f0>
 8000dfe:	4660      	mov	r0, ip
 8000e00:	e7e9      	b.n	8000dd6 <__udivmoddi4+0x27e>
 8000e02:	4618      	mov	r0, r3
 8000e04:	e795      	b.n	8000d32 <__udivmoddi4+0x1da>
 8000e06:	4667      	mov	r7, ip
 8000e08:	e7d1      	b.n	8000dae <__udivmoddi4+0x256>
 8000e0a:	4681      	mov	r9, r0
 8000e0c:	e77c      	b.n	8000d08 <__udivmoddi4+0x1b0>
 8000e0e:	3802      	subs	r0, #2
 8000e10:	442c      	add	r4, r5
 8000e12:	e747      	b.n	8000ca4 <__udivmoddi4+0x14c>
 8000e14:	f1ac 0c02 	sub.w	ip, ip, #2
 8000e18:	442b      	add	r3, r5
 8000e1a:	e72f      	b.n	8000c7c <__udivmoddi4+0x124>
 8000e1c:	4638      	mov	r0, r7
 8000e1e:	e708      	b.n	8000c32 <__udivmoddi4+0xda>
 8000e20:	4637      	mov	r7, r6
 8000e22:	e6e9      	b.n	8000bf8 <__udivmoddi4+0xa0>

08000e24 <__aeabi_idiv0>:
 8000e24:	4770      	bx	lr
 8000e26:	bf00      	nop

08000e28 <__aeabi_memset>:
 8000e28:	b470      	push	{r4, r5, r6}
 8000e2a:	0784      	lsls	r4, r0, #30
 8000e2c:	d046      	beq.n	8000ebc <__aeabi_memset+0x94>
 8000e2e:	1e4c      	subs	r4, r1, #1
 8000e30:	2900      	cmp	r1, #0
 8000e32:	d041      	beq.n	8000eb8 <__aeabi_memset+0x90>
 8000e34:	b2d5      	uxtb	r5, r2
 8000e36:	4603      	mov	r3, r0
 8000e38:	e002      	b.n	8000e40 <__aeabi_memset+0x18>
 8000e3a:	1e61      	subs	r1, r4, #1
 8000e3c:	b3e4      	cbz	r4, 8000eb8 <__aeabi_memset+0x90>
 8000e3e:	460c      	mov	r4, r1
 8000e40:	f803 5b01 	strb.w	r5, [r3], #1
 8000e44:	0799      	lsls	r1, r3, #30
 8000e46:	d1f8      	bne.n	8000e3a <__aeabi_memset+0x12>
 8000e48:	2c03      	cmp	r4, #3
 8000e4a:	d92e      	bls.n	8000eaa <__aeabi_memset+0x82>
 8000e4c:	b2d5      	uxtb	r5, r2
 8000e4e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8000e52:	2c0f      	cmp	r4, #15
 8000e54:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000e58:	d919      	bls.n	8000e8e <__aeabi_memset+0x66>
 8000e5a:	4626      	mov	r6, r4
 8000e5c:	f103 0110 	add.w	r1, r3, #16
 8000e60:	3e10      	subs	r6, #16
 8000e62:	2e0f      	cmp	r6, #15
 8000e64:	f841 5c10 	str.w	r5, [r1, #-16]
 8000e68:	f841 5c0c 	str.w	r5, [r1, #-12]
 8000e6c:	f841 5c08 	str.w	r5, [r1, #-8]
 8000e70:	f841 5c04 	str.w	r5, [r1, #-4]
 8000e74:	f101 0110 	add.w	r1, r1, #16
 8000e78:	d8f2      	bhi.n	8000e60 <__aeabi_memset+0x38>
 8000e7a:	f1a4 0110 	sub.w	r1, r4, #16
 8000e7e:	f021 010f 	bic.w	r1, r1, #15
 8000e82:	f004 040f 	and.w	r4, r4, #15
 8000e86:	3110      	adds	r1, #16
 8000e88:	2c03      	cmp	r4, #3
 8000e8a:	440b      	add	r3, r1
 8000e8c:	d90d      	bls.n	8000eaa <__aeabi_memset+0x82>
 8000e8e:	461e      	mov	r6, r3
 8000e90:	4621      	mov	r1, r4
 8000e92:	3904      	subs	r1, #4
 8000e94:	2903      	cmp	r1, #3
 8000e96:	f846 5b04 	str.w	r5, [r6], #4
 8000e9a:	d8fa      	bhi.n	8000e92 <__aeabi_memset+0x6a>
 8000e9c:	1f21      	subs	r1, r4, #4
 8000e9e:	f021 0103 	bic.w	r1, r1, #3
 8000ea2:	3104      	adds	r1, #4
 8000ea4:	440b      	add	r3, r1
 8000ea6:	f004 0403 	and.w	r4, r4, #3
 8000eaa:	b12c      	cbz	r4, 8000eb8 <__aeabi_memset+0x90>
 8000eac:	b2d2      	uxtb	r2, r2
 8000eae:	441c      	add	r4, r3
 8000eb0:	f803 2b01 	strb.w	r2, [r3], #1
 8000eb4:	42a3      	cmp	r3, r4
 8000eb6:	d1fb      	bne.n	8000eb0 <__aeabi_memset+0x88>
 8000eb8:	bc70      	pop	{r4, r5, r6}
 8000eba:	4770      	bx	lr
 8000ebc:	460c      	mov	r4, r1
 8000ebe:	4603      	mov	r3, r0
 8000ec0:	e7c2      	b.n	8000e48 <__aeabi_memset+0x20>
	...

08000ec4 <memcpy>:
 8000ec4:	4684      	mov	ip, r0
 8000ec6:	ea41 0300 	orr.w	r3, r1, r0
 8000eca:	f013 0303 	ands.w	r3, r3, #3
 8000ece:	d16d      	bne.n	8000fac <memcpy+0xe8>
 8000ed0:	3a40      	subs	r2, #64	; 0x40
 8000ed2:	d341      	bcc.n	8000f58 <memcpy+0x94>
 8000ed4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ed8:	f840 3b04 	str.w	r3, [r0], #4
 8000edc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ee0:	f840 3b04 	str.w	r3, [r0], #4
 8000ee4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ee8:	f840 3b04 	str.w	r3, [r0], #4
 8000eec:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ef0:	f840 3b04 	str.w	r3, [r0], #4
 8000ef4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ef8:	f840 3b04 	str.w	r3, [r0], #4
 8000efc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f00:	f840 3b04 	str.w	r3, [r0], #4
 8000f04:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f08:	f840 3b04 	str.w	r3, [r0], #4
 8000f0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f10:	f840 3b04 	str.w	r3, [r0], #4
 8000f14:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f18:	f840 3b04 	str.w	r3, [r0], #4
 8000f1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f20:	f840 3b04 	str.w	r3, [r0], #4
 8000f24:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f28:	f840 3b04 	str.w	r3, [r0], #4
 8000f2c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f30:	f840 3b04 	str.w	r3, [r0], #4
 8000f34:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f38:	f840 3b04 	str.w	r3, [r0], #4
 8000f3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f40:	f840 3b04 	str.w	r3, [r0], #4
 8000f44:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f48:	f840 3b04 	str.w	r3, [r0], #4
 8000f4c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f50:	f840 3b04 	str.w	r3, [r0], #4
 8000f54:	3a40      	subs	r2, #64	; 0x40
 8000f56:	d2bd      	bcs.n	8000ed4 <memcpy+0x10>
 8000f58:	3230      	adds	r2, #48	; 0x30
 8000f5a:	d311      	bcc.n	8000f80 <memcpy+0xbc>
 8000f5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f60:	f840 3b04 	str.w	r3, [r0], #4
 8000f64:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f68:	f840 3b04 	str.w	r3, [r0], #4
 8000f6c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f70:	f840 3b04 	str.w	r3, [r0], #4
 8000f74:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f78:	f840 3b04 	str.w	r3, [r0], #4
 8000f7c:	3a10      	subs	r2, #16
 8000f7e:	d2ed      	bcs.n	8000f5c <memcpy+0x98>
 8000f80:	320c      	adds	r2, #12
 8000f82:	d305      	bcc.n	8000f90 <memcpy+0xcc>
 8000f84:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f88:	f840 3b04 	str.w	r3, [r0], #4
 8000f8c:	3a04      	subs	r2, #4
 8000f8e:	d2f9      	bcs.n	8000f84 <memcpy+0xc0>
 8000f90:	3204      	adds	r2, #4
 8000f92:	d008      	beq.n	8000fa6 <memcpy+0xe2>
 8000f94:	07d2      	lsls	r2, r2, #31
 8000f96:	bf1c      	itt	ne
 8000f98:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f9c:	f800 3b01 	strbne.w	r3, [r0], #1
 8000fa0:	d301      	bcc.n	8000fa6 <memcpy+0xe2>
 8000fa2:	880b      	ldrh	r3, [r1, #0]
 8000fa4:	8003      	strh	r3, [r0, #0]
 8000fa6:	4660      	mov	r0, ip
 8000fa8:	4770      	bx	lr
 8000faa:	bf00      	nop
 8000fac:	2a08      	cmp	r2, #8
 8000fae:	d313      	bcc.n	8000fd8 <memcpy+0x114>
 8000fb0:	078b      	lsls	r3, r1, #30
 8000fb2:	d08d      	beq.n	8000ed0 <memcpy+0xc>
 8000fb4:	f010 0303 	ands.w	r3, r0, #3
 8000fb8:	d08a      	beq.n	8000ed0 <memcpy+0xc>
 8000fba:	f1c3 0304 	rsb	r3, r3, #4
 8000fbe:	1ad2      	subs	r2, r2, r3
 8000fc0:	07db      	lsls	r3, r3, #31
 8000fc2:	bf1c      	itt	ne
 8000fc4:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000fc8:	f800 3b01 	strbne.w	r3, [r0], #1
 8000fcc:	d380      	bcc.n	8000ed0 <memcpy+0xc>
 8000fce:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000fd2:	f820 3b02 	strh.w	r3, [r0], #2
 8000fd6:	e77b      	b.n	8000ed0 <memcpy+0xc>
 8000fd8:	3a04      	subs	r2, #4
 8000fda:	d3d9      	bcc.n	8000f90 <memcpy+0xcc>
 8000fdc:	3a01      	subs	r2, #1
 8000fde:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000fe2:	f800 3b01 	strb.w	r3, [r0], #1
 8000fe6:	d2f9      	bcs.n	8000fdc <memcpy+0x118>
 8000fe8:	780b      	ldrb	r3, [r1, #0]
 8000fea:	7003      	strb	r3, [r0, #0]
 8000fec:	784b      	ldrb	r3, [r1, #1]
 8000fee:	7043      	strb	r3, [r0, #1]
 8000ff0:	788b      	ldrb	r3, [r1, #2]
 8000ff2:	7083      	strb	r3, [r0, #2]
 8000ff4:	4660      	mov	r0, ip
 8000ff6:	4770      	bx	lr
	...

08001000 <strlen>:
 8001000:	f890 f000 	pld	[r0]
 8001004:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8001008:	f020 0107 	bic.w	r1, r0, #7
 800100c:	f06f 0c00 	mvn.w	ip, #0
 8001010:	f010 0407 	ands.w	r4, r0, #7
 8001014:	f891 f020 	pld	[r1, #32]
 8001018:	f040 8049 	bne.w	80010ae <strlen+0xae>
 800101c:	f04f 0400 	mov.w	r4, #0
 8001020:	f06f 0007 	mvn.w	r0, #7
 8001024:	e9d1 2300 	ldrd	r2, r3, [r1]
 8001028:	f891 f040 	pld	[r1, #64]	; 0x40
 800102c:	f100 0008 	add.w	r0, r0, #8
 8001030:	fa82 f24c 	uadd8	r2, r2, ip
 8001034:	faa4 f28c 	sel	r2, r4, ip
 8001038:	fa83 f34c 	uadd8	r3, r3, ip
 800103c:	faa2 f38c 	sel	r3, r2, ip
 8001040:	bb4b      	cbnz	r3, 8001096 <strlen+0x96>
 8001042:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8001046:	fa82 f24c 	uadd8	r2, r2, ip
 800104a:	f100 0008 	add.w	r0, r0, #8
 800104e:	faa4 f28c 	sel	r2, r4, ip
 8001052:	fa83 f34c 	uadd8	r3, r3, ip
 8001056:	faa2 f38c 	sel	r3, r2, ip
 800105a:	b9e3      	cbnz	r3, 8001096 <strlen+0x96>
 800105c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8001060:	fa82 f24c 	uadd8	r2, r2, ip
 8001064:	f100 0008 	add.w	r0, r0, #8
 8001068:	faa4 f28c 	sel	r2, r4, ip
 800106c:	fa83 f34c 	uadd8	r3, r3, ip
 8001070:	faa2 f38c 	sel	r3, r2, ip
 8001074:	b97b      	cbnz	r3, 8001096 <strlen+0x96>
 8001076:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 800107a:	f101 0120 	add.w	r1, r1, #32
 800107e:	fa82 f24c 	uadd8	r2, r2, ip
 8001082:	f100 0008 	add.w	r0, r0, #8
 8001086:	faa4 f28c 	sel	r2, r4, ip
 800108a:	fa83 f34c 	uadd8	r3, r3, ip
 800108e:	faa2 f38c 	sel	r3, r2, ip
 8001092:	2b00      	cmp	r3, #0
 8001094:	d0c6      	beq.n	8001024 <strlen+0x24>
 8001096:	2a00      	cmp	r2, #0
 8001098:	bf04      	itt	eq
 800109a:	3004      	addeq	r0, #4
 800109c:	461a      	moveq	r2, r3
 800109e:	ba12      	rev	r2, r2
 80010a0:	fab2 f282 	clz	r2, r2
 80010a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80010a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80010ac:	4770      	bx	lr
 80010ae:	e9d1 2300 	ldrd	r2, r3, [r1]
 80010b2:	f004 0503 	and.w	r5, r4, #3
 80010b6:	f1c4 0000 	rsb	r0, r4, #0
 80010ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80010be:	f014 0f04 	tst.w	r4, #4
 80010c2:	f891 f040 	pld	[r1, #64]	; 0x40
 80010c6:	fa0c f505 	lsl.w	r5, ip, r5
 80010ca:	ea62 0205 	orn	r2, r2, r5
 80010ce:	bf1c      	itt	ne
 80010d0:	ea63 0305 	ornne	r3, r3, r5
 80010d4:	4662      	movne	r2, ip
 80010d6:	f04f 0400 	mov.w	r4, #0
 80010da:	e7a9      	b.n	8001030 <strlen+0x30>
 80010dc:	0000      	movs	r0, r0
	...

080010e0 <memchr>:
 80010e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80010e4:	2a10      	cmp	r2, #16
 80010e6:	db2b      	blt.n	8001140 <memchr+0x60>
 80010e8:	f010 0f07 	tst.w	r0, #7
 80010ec:	d008      	beq.n	8001100 <memchr+0x20>
 80010ee:	f810 3b01 	ldrb.w	r3, [r0], #1
 80010f2:	3a01      	subs	r2, #1
 80010f4:	428b      	cmp	r3, r1
 80010f6:	d02d      	beq.n	8001154 <memchr+0x74>
 80010f8:	f010 0f07 	tst.w	r0, #7
 80010fc:	b342      	cbz	r2, 8001150 <memchr+0x70>
 80010fe:	d1f6      	bne.n	80010ee <memchr+0xe>
 8001100:	b4f0      	push	{r4, r5, r6, r7}
 8001102:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8001106:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800110a:	f022 0407 	bic.w	r4, r2, #7
 800110e:	f07f 0700 	mvns.w	r7, #0
 8001112:	2300      	movs	r3, #0
 8001114:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8001118:	3c08      	subs	r4, #8
 800111a:	ea85 0501 	eor.w	r5, r5, r1
 800111e:	ea86 0601 	eor.w	r6, r6, r1
 8001122:	fa85 f547 	uadd8	r5, r5, r7
 8001126:	faa3 f587 	sel	r5, r3, r7
 800112a:	fa86 f647 	uadd8	r6, r6, r7
 800112e:	faa5 f687 	sel	r6, r5, r7
 8001132:	b98e      	cbnz	r6, 8001158 <memchr+0x78>
 8001134:	d1ee      	bne.n	8001114 <memchr+0x34>
 8001136:	bcf0      	pop	{r4, r5, r6, r7}
 8001138:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800113c:	f002 0207 	and.w	r2, r2, #7
 8001140:	b132      	cbz	r2, 8001150 <memchr+0x70>
 8001142:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001146:	3a01      	subs	r2, #1
 8001148:	ea83 0301 	eor.w	r3, r3, r1
 800114c:	b113      	cbz	r3, 8001154 <memchr+0x74>
 800114e:	d1f8      	bne.n	8001142 <memchr+0x62>
 8001150:	2000      	movs	r0, #0
 8001152:	4770      	bx	lr
 8001154:	3801      	subs	r0, #1
 8001156:	4770      	bx	lr
 8001158:	2d00      	cmp	r5, #0
 800115a:	bf06      	itte	eq
 800115c:	4635      	moveq	r5, r6
 800115e:	3803      	subeq	r0, #3
 8001160:	3807      	subne	r0, #7
 8001162:	f015 0f01 	tst.w	r5, #1
 8001166:	d107      	bne.n	8001178 <memchr+0x98>
 8001168:	3001      	adds	r0, #1
 800116a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800116e:	bf02      	ittt	eq
 8001170:	3001      	addeq	r0, #1
 8001172:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8001176:	3001      	addeq	r0, #1
 8001178:	bcf0      	pop	{r4, r5, r6, r7}
 800117a:	3801      	subs	r0, #1
 800117c:	4770      	bx	lr
 800117e:	bf00      	nop

08001180 <HAL_Init>:
 8001180:	b580      	push	{r7, lr}
 8001182:	466f      	mov	r7, sp
 8001184:	2003      	movs	r0, #3
 8001186:	f000 f81a 	bl	80011be <HAL_NVIC_SetPriorityGrouping>
 800118a:	200f      	movs	r0, #15
 800118c:	f000 fbc1 	bl	8001912 <HAL_InitTick>
 8001190:	2800      	cmp	r0, #0
 8001192:	bf1c      	itt	ne
 8001194:	2001      	movne	r0, #1
 8001196:	bd80      	popne	{r7, pc}
 8001198:	f000 f96b 	bl	8001472 <HAL_MspInit>
 800119c:	2000      	movs	r0, #0
 800119e:	bd80      	pop	{r7, pc}

080011a0 <HAL_IncTick>:
 80011a0:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011a8:	6801      	ldr	r1, [r0, #0]
 80011aa:	3101      	adds	r1, #1
 80011ac:	f840 1e00 	strt	r1, [r0]
 80011b0:	4770      	bx	lr

080011b2 <HAL_GetTick>:
 80011b2:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011ba:	6800      	ldr	r0, [r0, #0]
 80011bc:	4770      	bx	lr

080011be <HAL_NVIC_SetPriorityGrouping>:
 80011be:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011c2:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011c6:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011ca:	680a      	ldr	r2, [r1, #0]
 80011cc:	401a      	ands	r2, r3
 80011ce:	f360 220a 	bfi	r2, r0, #8, #3
 80011d2:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011d6:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011da:	6008      	str	r0, [r1, #0]
 80011dc:	4770      	bx	lr

080011de <HAL_NVIC_SetPriority>:
 80011de:	b580      	push	{r7, lr}
 80011e0:	466f      	mov	r7, sp
 80011e2:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011e6:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011ea:	2800      	cmp	r0, #0
 80011ec:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011f0:	f000 030f 	and.w	r3, r0, #15
 80011f4:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 80011f8:	f1a3 0304 	sub.w	r3, r3, #4
 80011fc:	4473      	add	r3, lr
 80011fe:	bfb8      	it	lt
 8001200:	f103 0c0c 	addlt.w	ip, r3, #12
 8001204:	f8de 0000 	ldr.w	r0, [lr]
 8001208:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800120c:	f100 0e04 	add.w	lr, r0, #4
 8001210:	1ec3      	subs	r3, r0, #3
 8001212:	f080 0007 	eor.w	r0, r0, #7
 8001216:	f1be 0f07 	cmp.w	lr, #7
 800121a:	f04f 0e01 	mov.w	lr, #1
 800121e:	bf38      	it	cc
 8001220:	2300      	movcc	r3, #0
 8001222:	2804      	cmp	r0, #4
 8001224:	bf28      	it	cs
 8001226:	2004      	movcs	r0, #4
 8001228:	fa0e f000 	lsl.w	r0, lr, r0
 800122c:	3801      	subs	r0, #1
 800122e:	4008      	ands	r0, r1
 8001230:	fa0e f103 	lsl.w	r1, lr, r3
 8001234:	310f      	adds	r1, #15
 8001236:	4098      	lsls	r0, r3
 8001238:	4011      	ands	r1, r2
 800123a:	4308      	orrs	r0, r1
 800123c:	0100      	lsls	r0, r0, #4
 800123e:	f88c 0000 	strb.w	r0, [ip]
 8001242:	bd80      	pop	{r7, pc}

08001244 <HAL_NVIC_EnableIRQ>:
 8001244:	f000 011f 	and.w	r1, r0, #31
 8001248:	2201      	movs	r2, #1
 800124a:	0940      	lsrs	r0, r0, #5
 800124c:	fa02 f101 	lsl.w	r1, r2, r1
 8001250:	f24e 1200 	movw	r2, #57600	; 0xe100
 8001254:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001258:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 800125c:	4770      	bx	lr

0800125e <HAL_SYSTICK_IRQHandler>:
 800125e:	f000 b800 	b.w	8001262 <HAL_SYSTICK_Callback>

08001262 <HAL_SYSTICK_Callback>:
 8001262:	4770      	bx	lr

08001264 <HAL_GPIO_Init>:
 8001264:	b085      	sub	sp, #20
 8001266:	f84d 4e00 	strt	r4, [sp]
 800126a:	f84d 5e04 	strt	r5, [sp, #4]
 800126e:	f84d 6e08 	strt	r6, [sp, #8]
 8001272:	f84d 7e0c 	strt	r7, [sp, #12]
 8001276:	f84d ee10 	strt	lr, [sp, #16]
 800127a:	af03      	add	r7, sp, #12
 800127c:	b084      	sub	sp, #16
 800127e:	f84d 8e00 	strt	r8, [sp]
 8001282:	f84d 9e04 	strt	r9, [sp, #4]
 8001286:	f84d ae08 	strt	sl, [sp, #8]
 800128a:	f84d be0c 	strt	fp, [sp, #12]
 800128e:	b082      	sub	sp, #8
 8001290:	680e      	ldr	r6, [r1, #0]
 8001292:	2e00      	cmp	r6, #0
 8001294:	f000 80e9 	beq.w	800146a <HAL_GPIO_Init+0x206>
 8001298:	f641 0200 	movw	r2, #6144	; 0x1800
 800129c:	2507      	movs	r5, #7
 800129e:	f04f 0801 	mov.w	r8, #1
 80012a2:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012a6:	4290      	cmp	r0, r2
 80012a8:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012ac:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012b0:	bf08      	it	eq
 80012b2:	2506      	moveq	r5, #6
 80012b4:	2b06      	cmp	r3, #6
 80012b6:	bf38      	it	cc
 80012b8:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012bc:	2200      	movs	r2, #0
 80012be:	f84d 5e00 	strt	r5, [sp]
 80012c2:	2500      	movs	r5, #0
 80012c4:	f1a8 0a01 	sub.w	sl, r8, #1
 80012c8:	2301      	movs	r3, #1
 80012ca:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012ce:	ea16 090b 	ands.w	r9, r6, fp
 80012d2:	f000 80c1 	beq.w	8001458 <HAL_GPIO_Init+0x1f4>
 80012d6:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012da:	f04e 0610 	orr.w	r6, lr, #16
 80012de:	2e12      	cmp	r6, #18
 80012e0:	d116      	bne.n	8001310 <HAL_GPIO_Init+0xac>
 80012e2:	f005 061c 	and.w	r6, r5, #28
 80012e6:	230f      	movs	r3, #15
 80012e8:	fa03 fc06 	lsl.w	ip, r3, r6
 80012ec:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012f0:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012f4:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012f8:	4404      	add	r4, r0
 80012fa:	6a23      	ldr	r3, [r4, #32]
 80012fc:	ea23 0c0c 	bic.w	ip, r3, ip
 8001300:	690b      	ldr	r3, [r1, #16]
 8001302:	40b3      	lsls	r3, r6
 8001304:	ea43 030c 	orr.w	r3, r3, ip
 8001308:	f844 3e20 	strt	r3, [r4, #32]
 800130c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001310:	6806      	ldr	r6, [r0, #0]
 8001312:	2403      	movs	r4, #3
 8001314:	f00e 0c03 	and.w	ip, lr, #3
 8001318:	f1be 0f12 	cmp.w	lr, #18
 800131c:	fa04 f402 	lsl.w	r4, r4, r2
 8001320:	fa0c f302 	lsl.w	r3, ip, r2
 8001324:	ea26 0604 	bic.w	r6, r6, r4
 8001328:	ea43 0306 	orr.w	r3, r3, r6
 800132c:	ea6f 0604 	mvn.w	r6, r4
 8001330:	f840 3e00 	strt	r3, [r0]
 8001334:	d818      	bhi.n	8001368 <HAL_GPIO_Init+0x104>
 8001336:	2301      	movs	r3, #1
 8001338:	fa03 f30e 	lsl.w	r3, r3, lr
 800133c:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001340:	bf1f      	itttt	ne
 8001342:	6883      	ldrne	r3, [r0, #8]
 8001344:	4033      	andne	r3, r6
 8001346:	68cc      	ldrne	r4, [r1, #12]
 8001348:	4094      	lslne	r4, r2
 800134a:	bf1f      	itttt	ne
 800134c:	4323      	orrne	r3, r4
 800134e:	f840 3e08 	strtne	r3, [r0, #8]
 8001352:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001356:	fa03 f30a 	lslne.w	r3, r3, sl
 800135a:	bf1f      	itttt	ne
 800135c:	6844      	ldrne	r4, [r0, #4]
 800135e:	ea24 040b 	bicne.w	r4, r4, fp
 8001362:	4323      	orrne	r3, r4
 8001364:	f840 3e04 	strtne	r3, [r0, #4]
 8001368:	f1bc 0f03 	cmp.w	ip, #3
 800136c:	d109      	bne.n	8001382 <HAL_GPIO_Init+0x11e>
 800136e:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001372:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001374:	fa03 f30a 	lsl.w	r3, r3, sl
 8001378:	ea24 040b 	bic.w	r4, r4, fp
 800137c:	4323      	orrs	r3, r4
 800137e:	f840 3e2c 	strt	r3, [r0, #44]
 8001382:	68c3      	ldr	r3, [r0, #12]
 8001384:	4033      	ands	r3, r6
 8001386:	688e      	ldr	r6, [r1, #8]
 8001388:	4096      	lsls	r6, r2
 800138a:	4333      	orrs	r3, r6
 800138c:	f840 3e0c 	strt	r3, [r0, #12]
 8001390:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 8001394:	d560      	bpl.n	8001458 <HAL_GPIO_Init+0x1f4>
 8001396:	f241 0360 	movw	r3, #4192	; 0x1060
 800139a:	f005 040c 	and.w	r4, r5, #12
 800139e:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80013a2:	461e      	mov	r6, r3
 80013a4:	6833      	ldr	r3, [r6, #0]
 80013a6:	f043 0301 	orr.w	r3, r3, #1
 80013aa:	f846 3e00 	strt	r3, [r6]
 80013ae:	6833      	ldr	r3, [r6, #0]
 80013b0:	f240 4600 	movw	r6, #1024	; 0x400
 80013b4:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013b8:	46b6      	mov	lr, r6
 80013ba:	f003 0301 	and.w	r3, r3, #1
 80013be:	f84d 3e04 	strt	r3, [sp, #4]
 80013c2:	f02a 0303 	bic.w	r3, sl, #3
 80013c6:	9e01      	ldr	r6, [sp, #4]
 80013c8:	4473      	add	r3, lr
 80013ca:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013ce:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013d2:	46b2      	mov	sl, r6
 80013d4:	260f      	movs	r6, #15
 80013d6:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013da:	40a6      	lsls	r6, r4
 80013dc:	ea2c 0c06 	bic.w	ip, ip, r6
 80013e0:	9e00      	ldr	r6, [sp, #0]
 80013e2:	fa06 f404 	lsl.w	r4, r6, r4
 80013e6:	ea4c 0604 	orr.w	r6, ip, r4
 80013ea:	eb03 030a 	add.w	r3, r3, sl
 80013ee:	f843 6e00 	strt	r6, [r3]
 80013f2:	eba3 030a 	sub.w	r3, r3, sl
 80013f6:	f8de 3000 	ldr.w	r3, [lr]
 80013fa:	684e      	ldr	r6, [r1, #4]
 80013fc:	ea23 0309 	bic.w	r3, r3, r9
 8001400:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001404:	bf18      	it	ne
 8001406:	ea43 0309 	orrne.w	r3, r3, r9
 800140a:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 800140e:	f84e 3e00 	strt	r3, [lr]
 8001412:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001416:	ea23 0309 	bic.w	r3, r3, r9
 800141a:	bf18      	it	ne
 800141c:	ea43 0309 	orrne.w	r3, r3, r9
 8001420:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001424:	f84e 3e04 	strt	r3, [lr, #4]
 8001428:	f8de 3008 	ldr.w	r3, [lr, #8]
 800142c:	ea23 0309 	bic.w	r3, r3, r9
 8001430:	bf18      	it	ne
 8001432:	ea43 0309 	orrne.w	r3, r3, r9
 8001436:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800143a:	f84e 3e08 	strt	r3, [lr, #8]
 800143e:	f240 430c 	movw	r3, #1036	; 0x40c
 8001442:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001446:	461c      	mov	r4, r3
 8001448:	6823      	ldr	r3, [r4, #0]
 800144a:	ea23 0309 	bic.w	r3, r3, r9
 800144e:	bf18      	it	ne
 8001450:	ea43 0309 	orrne.w	r3, r3, r9
 8001454:	f844 3e00 	strt	r3, [r4]
 8001458:	680e      	ldr	r6, [r1, #0]
 800145a:	3202      	adds	r2, #2
 800145c:	3504      	adds	r5, #4
 800145e:	fa36 f308 	lsrs.w	r3, r6, r8
 8001462:	f108 0801 	add.w	r8, r8, #1
 8001466:	f47f af2d 	bne.w	80012c4 <HAL_GPIO_Init+0x60>
 800146a:	b002      	add	sp, #8
 800146c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001470:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001472 <HAL_MspInit>:
 8001472:	4770      	bx	lr

08001474 <HAL_RCC_GetSysClockFreq>:
 8001474:	b082      	sub	sp, #8
 8001476:	f84d 7e00 	strt	r7, [sp]
 800147a:	f84d ee04 	strt	lr, [sp, #4]
 800147e:	466f      	mov	r7, sp
 8001480:	f241 010c 	movw	r1, #4108	; 0x100c
 8001484:	f241 2e00 	movw	lr, #4608	; 0x1200
 8001488:	f242 4c00 	movw	ip, #9216	; 0x2400
 800148c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001490:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001494:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001498:	f851 2c04 	ldr.w	r2, [r1, #-4]
 800149c:	6808      	ldr	r0, [r1, #0]
 800149e:	f012 030c 	ands.w	r3, r2, #12
 80014a2:	d005      	beq.n	80014b0 <HAL_RCC_GetSysClockFreq+0x3c>
 80014a4:	2b0c      	cmp	r3, #12
 80014a6:	bf04      	itt	eq
 80014a8:	f000 0003 	andeq.w	r0, r0, #3
 80014ac:	2801      	cmpeq	r0, #1
 80014ae:	d118      	bne.n	80014e2 <HAL_RCC_GetSysClockFreq+0x6e>
 80014b0:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014b4:	f010 0f08 	tst.w	r0, #8
 80014b8:	d103      	bne.n	80014c2 <HAL_RCC_GetSysClockFreq+0x4e>
 80014ba:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80014be:	0a00      	lsrs	r0, r0, #8
 80014c0:	e002      	b.n	80014c8 <HAL_RCC_GetSysClockFreq+0x54>
 80014c2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014c6:	0900      	lsrs	r0, r0, #4
 80014c8:	f64a 0270 	movw	r2, #43120	; 0xa870
 80014cc:	f000 000f 	and.w	r0, r0, #15
 80014d0:	2b00      	cmp	r3, #0
 80014d2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014d6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014da:	4610      	mov	r0, r2
 80014dc:	bf18      	it	ne
 80014de:	2000      	movne	r0, #0
 80014e0:	e00b      	b.n	80014fa <HAL_RCC_GetSysClockFreq+0x86>
 80014e2:	f003 000f 	and.w	r0, r3, #15
 80014e6:	2804      	cmp	r0, #4
 80014e8:	bf04      	itt	eq
 80014ea:	4660      	moveq	r0, ip
 80014ec:	bd80      	popeq	{r7, pc}
 80014ee:	2808      	cmp	r0, #8
 80014f0:	bf04      	itt	eq
 80014f2:	4670      	moveq	r0, lr
 80014f4:	bd80      	popeq	{r7, pc}
 80014f6:	2000      	movs	r0, #0
 80014f8:	2200      	movs	r2, #0
 80014fa:	2b0c      	cmp	r3, #12
 80014fc:	bf18      	it	ne
 80014fe:	bd80      	popne	{r7, pc}
 8001500:	6808      	ldr	r0, [r1, #0]
 8001502:	f000 0303 	and.w	r3, r0, #3
 8001506:	6808      	ldr	r0, [r1, #0]
 8001508:	2b03      	cmp	r3, #3
 800150a:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800150e:	f100 0001 	add.w	r0, r0, #1
 8001512:	d003      	beq.n	800151c <HAL_RCC_GetSysClockFreq+0xa8>
 8001514:	2b02      	cmp	r3, #2
 8001516:	46e6      	mov	lr, ip
 8001518:	bf18      	it	ne
 800151a:	4696      	movne	lr, r2
 800151c:	680a      	ldr	r2, [r1, #0]
 800151e:	fbbe f0f0 	udiv	r0, lr, r0
 8001522:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001526:	6809      	ldr	r1, [r1, #0]
 8001528:	4350      	muls	r0, r2
 800152a:	2202      	movs	r2, #2
 800152c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001530:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001534:	fbb0 f0f1 	udiv	r0, r0, r1
 8001538:	bd80      	pop	{r7, pc}

0800153a <HAL_RCC_GetPCLK1Freq>:
 800153a:	f240 0014 	movw	r0, #20
 800153e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001542:	f64a 0268 	movw	r2, #43112	; 0xa868
 8001546:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800154a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800154e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001552:	6800      	ldr	r0, [r0, #0]
 8001554:	6809      	ldr	r1, [r1, #0]
 8001556:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800155a:	5c51      	ldrb	r1, [r2, r1]
 800155c:	f001 011f 	and.w	r1, r1, #31
 8001560:	40c8      	lsrs	r0, r1
 8001562:	4770      	bx	lr

08001564 <HAL_RCC_GetPCLK2Freq>:
 8001564:	f240 0014 	movw	r0, #20
 8001568:	f241 0108 	movw	r1, #4104	; 0x1008
 800156c:	f64a 0268 	movw	r2, #43112	; 0xa868
 8001570:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001574:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001578:	f6c0 0200 	movt	r2, #2048	; 0x800
 800157c:	6800      	ldr	r0, [r0, #0]
 800157e:	6809      	ldr	r1, [r1, #0]
 8001580:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001584:	5c51      	ldrb	r1, [r2, r1]
 8001586:	f001 011f 	and.w	r1, r1, #31
 800158a:	40c8      	lsrs	r0, r1
 800158c:	4770      	bx	lr

0800158e <HAL_RCC_GetClockConfig>:
 800158e:	220f      	movs	r2, #15
 8001590:	6002      	str	r2, [r0, #0]
 8001592:	f241 0208 	movw	r2, #4104	; 0x1008
 8001596:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800159a:	6813      	ldr	r3, [r2, #0]
 800159c:	f003 0303 	and.w	r3, r3, #3
 80015a0:	6043      	str	r3, [r0, #4]
 80015a2:	6813      	ldr	r3, [r2, #0]
 80015a4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80015a8:	6083      	str	r3, [r0, #8]
 80015aa:	6813      	ldr	r3, [r2, #0]
 80015ac:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80015b0:	60c3      	str	r3, [r0, #12]
 80015b2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80015b6:	6812      	ldr	r2, [r2, #0]
 80015b8:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80015bc:	6102      	str	r2, [r0, #16]
 80015be:	f242 0000 	movw	r0, #8192	; 0x2000
 80015c2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015c6:	6800      	ldr	r0, [r0, #0]
 80015c8:	f000 0007 	and.w	r0, r0, #7
 80015cc:	6008      	str	r0, [r1, #0]
 80015ce:	4770      	bx	lr

080015d0 <HAL_TIM_Base_Init>:
 80015d0:	b5d0      	push	{r4, r6, r7, lr}
 80015d2:	af02      	add	r7, sp, #8
 80015d4:	4604      	mov	r4, r0
 80015d6:	2c00      	cmp	r4, #0
 80015d8:	bf04      	itt	eq
 80015da:	2001      	moveq	r0, #1
 80015dc:	bdd0      	popeq	{r4, r6, r7, pc}
 80015de:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015e0:	b920      	cbnz	r0, 80015ec <HAL_TIM_Base_Init+0x1c>
 80015e2:	2000      	movs	r0, #0
 80015e4:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015e6:	4620      	mov	r0, r4
 80015e8:	f000 f892 	bl	8001710 <HAL_TIM_Base_MspInit>
 80015ec:	2002      	movs	r0, #2
 80015ee:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015f2:	6420      	str	r0, [r4, #64]	; 0x40
 80015f4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f8:	6820      	ldr	r0, [r4, #0]
 80015fa:	6801      	ldr	r1, [r0, #0]
 80015fc:	4290      	cmp	r0, r2
 80015fe:	dc0f      	bgt.n	8001620 <HAL_TIM_Base_Init+0x50>
 8001600:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001604:	bf1e      	ittt	ne
 8001606:	f240 4200 	movwne	r2, #1024	; 0x400
 800160a:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800160e:	4290      	cmpne	r0, r2
 8001610:	d018      	beq.n	8001644 <HAL_TIM_Base_Init+0x74>
 8001612:	f640 0200 	movw	r2, #2048	; 0x800
 8001616:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800161a:	4290      	cmp	r0, r2
 800161c:	d012      	beq.n	8001644 <HAL_TIM_Base_Init+0x74>
 800161e:	e015      	b.n	800164c <HAL_TIM_Base_Init+0x7c>
 8001620:	f640 4200 	movw	r2, #3072	; 0xc00
 8001624:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001628:	4290      	cmp	r0, r2
 800162a:	bf1e      	ittt	ne
 800162c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001630:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001634:	4290      	cmpne	r0, r2
 8001636:	d005      	beq.n	8001644 <HAL_TIM_Base_Init+0x74>
 8001638:	f642 4200 	movw	r2, #11264	; 0x2c00
 800163c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001640:	4290      	cmp	r0, r2
 8001642:	d103      	bne.n	800164c <HAL_TIM_Base_Init+0x7c>
 8001644:	68a2      	ldr	r2, [r4, #8]
 8001646:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800164a:	4311      	orrs	r1, r2
 800164c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001650:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001654:	4290      	cmp	r0, r2
 8001656:	dd14      	ble.n	8001682 <HAL_TIM_Base_Init+0xb2>
 8001658:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800165c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001660:	4290      	cmp	r0, r2
 8001662:	dd1a      	ble.n	800169a <HAL_TIM_Base_Init+0xca>
 8001664:	f244 0200 	movw	r2, #16384	; 0x4000
 8001668:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800166c:	4290      	cmp	r0, r2
 800166e:	bf1e      	ittt	ne
 8001670:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001674:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001678:	4290      	cmpne	r0, r2
 800167a:	d027      	beq.n	80016cc <HAL_TIM_Base_Init+0xfc>
 800167c:	f244 4200 	movw	r2, #17408	; 0x4400
 8001680:	e013      	b.n	80016aa <HAL_TIM_Base_Init+0xda>
 8001682:	f240 72ff 	movw	r2, #2047	; 0x7ff
 8001686:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800168a:	4290      	cmp	r0, r2
 800168c:	dc12      	bgt.n	80016b4 <HAL_TIM_Base_Init+0xe4>
 800168e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001692:	d01b      	beq.n	80016cc <HAL_TIM_Base_Init+0xfc>
 8001694:	f240 4200 	movw	r2, #1024	; 0x400
 8001698:	e014      	b.n	80016c4 <HAL_TIM_Base_Init+0xf4>
 800169a:	f642 4200 	movw	r2, #11264	; 0x2c00
 800169e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016a2:	4290      	cmp	r0, r2
 80016a4:	d012      	beq.n	80016cc <HAL_TIM_Base_Init+0xfc>
 80016a6:	f243 4200 	movw	r2, #13312	; 0x3400
 80016aa:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016ae:	4290      	cmp	r0, r2
 80016b0:	d00c      	beq.n	80016cc <HAL_TIM_Base_Init+0xfc>
 80016b2:	e00f      	b.n	80016d4 <HAL_TIM_Base_Init+0x104>
 80016b4:	f640 0200 	movw	r2, #2048	; 0x800
 80016b8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016bc:	4290      	cmp	r0, r2
 80016be:	d005      	beq.n	80016cc <HAL_TIM_Base_Init+0xfc>
 80016c0:	f640 4200 	movw	r2, #3072	; 0xc00
 80016c4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016c8:	4290      	cmp	r0, r2
 80016ca:	d103      	bne.n	80016d4 <HAL_TIM_Base_Init+0x104>
 80016cc:	6922      	ldr	r2, [r4, #16]
 80016ce:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016d2:	4311      	orrs	r1, r2
 80016d4:	69a2      	ldr	r2, [r4, #24]
 80016d6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016da:	4311      	orrs	r1, r2
 80016dc:	6001      	str	r1, [r0, #0]
 80016de:	68e1      	ldr	r1, [r4, #12]
 80016e0:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016e2:	6861      	ldr	r1, [r4, #4]
 80016e4:	6281      	str	r1, [r0, #40]	; 0x28
 80016e6:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016ea:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016ee:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016f2:	2907      	cmp	r1, #7
 80016f4:	d807      	bhi.n	8001706 <HAL_TIM_Base_Init+0x136>
 80016f6:	2201      	movs	r2, #1
 80016f8:	fa02 f101 	lsl.w	r1, r2, r1
 80016fc:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001700:	bf1c      	itt	ne
 8001702:	6961      	ldrne	r1, [r4, #20]
 8001704:	6301      	strne	r1, [r0, #48]	; 0x30
 8001706:	2101      	movs	r1, #1
 8001708:	6141      	str	r1, [r0, #20]
 800170a:	2000      	movs	r0, #0
 800170c:	6421      	str	r1, [r4, #64]	; 0x40
 800170e:	bdd0      	pop	{r4, r6, r7, pc}

08001710 <HAL_TIM_Base_MspInit>:
 8001710:	4770      	bx	lr

08001712 <HAL_TIM_Base_Start_IT>:
 8001712:	6800      	ldr	r0, [r0, #0]
 8001714:	68c1      	ldr	r1, [r0, #12]
 8001716:	f041 0101 	orr.w	r1, r1, #1
 800171a:	60c1      	str	r1, [r0, #12]
 800171c:	2107      	movs	r1, #7
 800171e:	6882      	ldr	r2, [r0, #8]
 8001720:	f2c0 0101 	movt	r1, #1
 8001724:	400a      	ands	r2, r1
 8001726:	2a06      	cmp	r2, #6
 8001728:	d008      	beq.n	800173c <HAL_TIM_Base_Start_IT+0x2a>
 800172a:	6882      	ldr	r2, [r0, #8]
 800172c:	4011      	ands	r1, r2
 800172e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001732:	bf1e      	ittt	ne
 8001734:	6801      	ldrne	r1, [r0, #0]
 8001736:	f041 0101 	orrne.w	r1, r1, #1
 800173a:	6001      	strne	r1, [r0, #0]
 800173c:	2000      	movs	r0, #0
 800173e:	4770      	bx	lr

08001740 <HAL_TIM_IRQHandler>:
 8001740:	b084      	sub	sp, #16
 8001742:	f84d 4e00 	strt	r4, [sp]
 8001746:	f84d 6e04 	strt	r6, [sp, #4]
 800174a:	f84d 7e08 	strt	r7, [sp, #8]
 800174e:	f84d ee0c 	strt	lr, [sp, #12]
 8001752:	af02      	add	r7, sp, #8
 8001754:	4604      	mov	r4, r0
 8001756:	6820      	ldr	r0, [r4, #0]
 8001758:	6901      	ldr	r1, [r0, #16]
 800175a:	f011 0f02 	tst.w	r1, #2
 800175e:	bf1c      	itt	ne
 8001760:	68c1      	ldrne	r1, [r0, #12]
 8001762:	f011 0f02 	tstne.w	r1, #2
 8001766:	d018      	beq.n	800179a <HAL_TIM_IRQHandler+0x5a>
 8001768:	f06f 0102 	mvn.w	r1, #2
 800176c:	f840 1e10 	strt	r1, [r0, #16]
 8001770:	2101      	movs	r1, #1
 8001772:	f844 1e1c 	strt	r1, [r4, #28]
 8001776:	6980      	ldr	r0, [r0, #24]
 8001778:	f010 0f03 	tst.w	r0, #3
 800177c:	d003      	beq.n	8001786 <HAL_TIM_IRQHandler+0x46>
 800177e:	4620      	mov	r0, r4
 8001780:	f000 f8c0 	bl	8001904 <HAL_TIM_IC_CaptureCallback>
 8001784:	e005      	b.n	8001792 <HAL_TIM_IRQHandler+0x52>
 8001786:	4620      	mov	r0, r4
 8001788:	f000 f8bd 	bl	8001906 <HAL_TIM_OC_DelayElapsedCallback>
 800178c:	4620      	mov	r0, r4
 800178e:	f000 f8bb 	bl	8001908 <HAL_TIM_PWM_PulseFinishedCallback>
 8001792:	2000      	movs	r0, #0
 8001794:	f844 0e1c 	strt	r0, [r4, #28]
 8001798:	6820      	ldr	r0, [r4, #0]
 800179a:	6901      	ldr	r1, [r0, #16]
 800179c:	f011 0f04 	tst.w	r1, #4
 80017a0:	bf1c      	itt	ne
 80017a2:	68c1      	ldrne	r1, [r0, #12]
 80017a4:	f011 0f04 	tstne.w	r1, #4
 80017a8:	d018      	beq.n	80017dc <HAL_TIM_IRQHandler+0x9c>
 80017aa:	f06f 0104 	mvn.w	r1, #4
 80017ae:	f840 1e10 	strt	r1, [r0, #16]
 80017b2:	2102      	movs	r1, #2
 80017b4:	f844 1e1c 	strt	r1, [r4, #28]
 80017b8:	6980      	ldr	r0, [r0, #24]
 80017ba:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017be:	d003      	beq.n	80017c8 <HAL_TIM_IRQHandler+0x88>
 80017c0:	4620      	mov	r0, r4
 80017c2:	f000 f89f 	bl	8001904 <HAL_TIM_IC_CaptureCallback>
 80017c6:	e005      	b.n	80017d4 <HAL_TIM_IRQHandler+0x94>
 80017c8:	4620      	mov	r0, r4
 80017ca:	f000 f89c 	bl	8001906 <HAL_TIM_OC_DelayElapsedCallback>
 80017ce:	4620      	mov	r0, r4
 80017d0:	f000 f89a 	bl	8001908 <HAL_TIM_PWM_PulseFinishedCallback>
 80017d4:	2000      	movs	r0, #0
 80017d6:	f844 0e1c 	strt	r0, [r4, #28]
 80017da:	6820      	ldr	r0, [r4, #0]
 80017dc:	6901      	ldr	r1, [r0, #16]
 80017de:	f011 0f08 	tst.w	r1, #8
 80017e2:	bf1c      	itt	ne
 80017e4:	68c1      	ldrne	r1, [r0, #12]
 80017e6:	f011 0f08 	tstne.w	r1, #8
 80017ea:	d018      	beq.n	800181e <HAL_TIM_IRQHandler+0xde>
 80017ec:	f06f 0108 	mvn.w	r1, #8
 80017f0:	f840 1e10 	strt	r1, [r0, #16]
 80017f4:	2104      	movs	r1, #4
 80017f6:	f844 1e1c 	strt	r1, [r4, #28]
 80017fa:	69c0      	ldr	r0, [r0, #28]
 80017fc:	f010 0f03 	tst.w	r0, #3
 8001800:	d003      	beq.n	800180a <HAL_TIM_IRQHandler+0xca>
 8001802:	4620      	mov	r0, r4
 8001804:	f000 f87e 	bl	8001904 <HAL_TIM_IC_CaptureCallback>
 8001808:	e005      	b.n	8001816 <HAL_TIM_IRQHandler+0xd6>
 800180a:	4620      	mov	r0, r4
 800180c:	f000 f87b 	bl	8001906 <HAL_TIM_OC_DelayElapsedCallback>
 8001810:	4620      	mov	r0, r4
 8001812:	f000 f879 	bl	8001908 <HAL_TIM_PWM_PulseFinishedCallback>
 8001816:	2000      	movs	r0, #0
 8001818:	f844 0e1c 	strt	r0, [r4, #28]
 800181c:	6820      	ldr	r0, [r4, #0]
 800181e:	6901      	ldr	r1, [r0, #16]
 8001820:	f011 0f10 	tst.w	r1, #16
 8001824:	bf1c      	itt	ne
 8001826:	68c1      	ldrne	r1, [r0, #12]
 8001828:	f011 0f10 	tstne.w	r1, #16
 800182c:	d018      	beq.n	8001860 <HAL_TIM_IRQHandler+0x120>
 800182e:	f06f 0110 	mvn.w	r1, #16
 8001832:	f840 1e10 	strt	r1, [r0, #16]
 8001836:	2108      	movs	r1, #8
 8001838:	f844 1e1c 	strt	r1, [r4, #28]
 800183c:	69c0      	ldr	r0, [r0, #28]
 800183e:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001842:	d003      	beq.n	800184c <HAL_TIM_IRQHandler+0x10c>
 8001844:	4620      	mov	r0, r4
 8001846:	f000 f85d 	bl	8001904 <HAL_TIM_IC_CaptureCallback>
 800184a:	e005      	b.n	8001858 <HAL_TIM_IRQHandler+0x118>
 800184c:	4620      	mov	r0, r4
 800184e:	f000 f85a 	bl	8001906 <HAL_TIM_OC_DelayElapsedCallback>
 8001852:	4620      	mov	r0, r4
 8001854:	f000 f858 	bl	8001908 <HAL_TIM_PWM_PulseFinishedCallback>
 8001858:	2000      	movs	r0, #0
 800185a:	f844 0e1c 	strt	r0, [r4, #28]
 800185e:	6820      	ldr	r0, [r4, #0]
 8001860:	6901      	ldr	r1, [r0, #16]
 8001862:	f011 0f01 	tst.w	r1, #1
 8001866:	bf1c      	itt	ne
 8001868:	68c1      	ldrne	r1, [r0, #12]
 800186a:	f011 0f01 	tstne.w	r1, #1
 800186e:	d007      	beq.n	8001880 <HAL_TIM_IRQHandler+0x140>
 8001870:	f06f 0101 	mvn.w	r1, #1
 8001874:	f840 1e10 	strt	r1, [r0, #16]
 8001878:	4620      	mov	r0, r4
 800187a:	f000 f898 	bl	80019ae <HAL_TIM_PeriodElapsedCallback>
 800187e:	6820      	ldr	r0, [r4, #0]
 8001880:	6901      	ldr	r1, [r0, #16]
 8001882:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001886:	bf1c      	itt	ne
 8001888:	68c1      	ldrne	r1, [r0, #12]
 800188a:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800188e:	d007      	beq.n	80018a0 <HAL_TIM_IRQHandler+0x160>
 8001890:	f06f 0180 	mvn.w	r1, #128	; 0x80
 8001894:	f840 1e10 	strt	r1, [r0, #16]
 8001898:	4620      	mov	r0, r4
 800189a:	f000 f838 	bl	800190e <HAL_TIMEx_BreakCallback>
 800189e:	6820      	ldr	r0, [r4, #0]
 80018a0:	6901      	ldr	r1, [r0, #16]
 80018a2:	f411 7f80 	tst.w	r1, #256	; 0x100
 80018a6:	bf1c      	itt	ne
 80018a8:	68c1      	ldrne	r1, [r0, #12]
 80018aa:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018ae:	d007      	beq.n	80018c0 <HAL_TIM_IRQHandler+0x180>
 80018b0:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80018b4:	f840 1e10 	strt	r1, [r0, #16]
 80018b8:	4620      	mov	r0, r4
 80018ba:	f000 f829 	bl	8001910 <HAL_TIMEx_Break2Callback>
 80018be:	6820      	ldr	r0, [r4, #0]
 80018c0:	6901      	ldr	r1, [r0, #16]
 80018c2:	f011 0f40 	tst.w	r1, #64	; 0x40
 80018c6:	bf1c      	itt	ne
 80018c8:	68c1      	ldrne	r1, [r0, #12]
 80018ca:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80018ce:	d007      	beq.n	80018e0 <HAL_TIM_IRQHandler+0x1a0>
 80018d0:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80018d4:	f840 1e10 	strt	r1, [r0, #16]
 80018d8:	4620      	mov	r0, r4
 80018da:	f000 f816 	bl	800190a <HAL_TIM_TriggerCallback>
 80018de:	6820      	ldr	r0, [r4, #0]
 80018e0:	6901      	ldr	r1, [r0, #16]
 80018e2:	f011 0f20 	tst.w	r1, #32
 80018e6:	bf1c      	itt	ne
 80018e8:	68c1      	ldrne	r1, [r0, #12]
 80018ea:	f011 0f20 	tstne.w	r1, #32
 80018ee:	d100      	bne.n	80018f2 <HAL_TIM_IRQHandler+0x1b2>
 80018f0:	bdd0      	pop	{r4, r6, r7, pc}
 80018f2:	f06f 0120 	mvn.w	r1, #32
 80018f6:	f840 1e10 	strt	r1, [r0, #16]
 80018fa:	4620      	mov	r0, r4
 80018fc:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001900:	f000 b804 	b.w	800190c <HAL_TIMEx_CommutationCallback>

08001904 <HAL_TIM_IC_CaptureCallback>:
 8001904:	4770      	bx	lr

08001906 <HAL_TIM_OC_DelayElapsedCallback>:
 8001906:	4770      	bx	lr

08001908 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001908:	4770      	bx	lr

0800190a <HAL_TIM_TriggerCallback>:
 800190a:	4770      	bx	lr

0800190c <HAL_TIMEx_CommutationCallback>:
 800190c:	4770      	bx	lr

0800190e <HAL_TIMEx_BreakCallback>:
 800190e:	4770      	bx	lr

08001910 <HAL_TIMEx_Break2Callback>:
 8001910:	4770      	bx	lr

08001912 <HAL_InitTick>:
 8001912:	b5b0      	push	{r4, r5, r7, lr}
 8001914:	af02      	add	r7, sp, #8
 8001916:	b086      	sub	sp, #24
 8001918:	4601      	mov	r1, r0
 800191a:	2036      	movs	r0, #54	; 0x36
 800191c:	2200      	movs	r2, #0
 800191e:	2400      	movs	r4, #0
 8001920:	f7ff fc5d 	bl	80011de <HAL_NVIC_SetPriority>
 8001924:	2036      	movs	r0, #54	; 0x36
 8001926:	f7ff fc8d 	bl	8001244 <HAL_NVIC_EnableIRQ>
 800192a:	f241 0058 	movw	r0, #4184	; 0x1058
 800192e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001932:	6801      	ldr	r1, [r0, #0]
 8001934:	f041 0110 	orr.w	r1, r1, #16
 8001938:	6001      	str	r1, [r0, #0]
 800193a:	4669      	mov	r1, sp
 800193c:	6800      	ldr	r0, [r0, #0]
 800193e:	f000 0010 	and.w	r0, r0, #16
 8001942:	9001      	str	r0, [sp, #4]
 8001944:	9801      	ldr	r0, [sp, #4]
 8001946:	a801      	add	r0, sp, #4
 8001948:	f7ff fe21 	bl	800158e <HAL_RCC_GetClockConfig>
 800194c:	9d04      	ldr	r5, [sp, #16]
 800194e:	f7ff fdf4 	bl	800153a <HAL_RCC_GetPCLK1Freq>
 8001952:	2d00      	cmp	r5, #0
 8001954:	f640 21a4 	movw	r1, #2724	; 0xaa4
 8001958:	f241 0200 	movw	r2, #4096	; 0x1000
 800195c:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001960:	bf18      	it	ne
 8001962:	2501      	movne	r5, #1
 8001964:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001968:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800196c:	40a8      	lsls	r0, r5
 800196e:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001972:	618c      	str	r4, [r1, #24]
 8001974:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001978:	fba0 0505 	umull	r0, r5, r0, r5
 800197c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001980:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001984:	e9c1 2000 	strd	r2, r0, [r1]
 8001988:	4608      	mov	r0, r1
 800198a:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800198e:	610c      	str	r4, [r1, #16]
 8001990:	f7ff fe1e 	bl	80015d0 <HAL_TIM_Base_Init>
 8001994:	2800      	cmp	r0, #0
 8001996:	bf1e      	ittt	ne
 8001998:	2001      	movne	r0, #1
 800199a:	b006      	addne	sp, #24
 800199c:	bdb0      	popne	{r4, r5, r7, pc}
 800199e:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80019a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019a6:	f7ff feb4 	bl	8001712 <HAL_TIM_Base_Start_IT>
 80019aa:	b006      	add	sp, #24
 80019ac:	bdb0      	pop	{r4, r5, r7, pc}

080019ae <HAL_TIM_PeriodElapsedCallback>:
 80019ae:	f7ff bbf7 	b.w	80011a0 <HAL_IncTick>

080019b2 <TIM6_DAC_IRQHandler>:
 80019b2:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80019b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019ba:	f7ff bec1 	b.w	8001740 <HAL_TIM_IRQHandler>

080019be <HAL_UART_Init>:
 80019be:	b084      	sub	sp, #16
 80019c0:	f84d 4e00 	strt	r4, [sp]
 80019c4:	f84d 6e04 	strt	r6, [sp, #4]
 80019c8:	f84d 7e08 	strt	r7, [sp, #8]
 80019cc:	f84d ee0c 	strt	lr, [sp, #12]
 80019d0:	af02      	add	r7, sp, #8
 80019d2:	4604      	mov	r4, r0
 80019d4:	b1ac      	cbz	r4, 8001a02 <HAL_UART_Init+0x44>
 80019d6:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80019d8:	b928      	cbnz	r0, 80019e6 <HAL_UART_Init+0x28>
 80019da:	2000      	movs	r0, #0
 80019dc:	f844 0e70 	strt	r0, [r4, #112]
 80019e0:	4620      	mov	r0, r4
 80019e2:	f000 f82b 	bl	8001a3c <HAL_UART_MspInit>
 80019e6:	2024      	movs	r0, #36	; 0x24
 80019e8:	f844 0e74 	strt	r0, [r4, #116]
 80019ec:	6820      	ldr	r0, [r4, #0]
 80019ee:	6801      	ldr	r1, [r0, #0]
 80019f0:	f021 0101 	bic.w	r1, r1, #1
 80019f4:	f840 1e00 	strt	r1, [r0]
 80019f8:	4620      	mov	r0, r4
 80019fa:	f000 f821 	bl	8001a40 <UART_SetConfig>
 80019fe:	2801      	cmp	r0, #1
 8001a00:	d101      	bne.n	8001a06 <HAL_UART_Init+0x48>
 8001a02:	2001      	movs	r0, #1
 8001a04:	bdd0      	pop	{r4, r6, r7, pc}
 8001a06:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001a08:	2800      	cmp	r0, #0
 8001a0a:	bf1c      	itt	ne
 8001a0c:	4620      	movne	r0, r4
 8001a0e:	f000 f956 	blne	8001cbe <UART_AdvFeatureConfig>
 8001a12:	6820      	ldr	r0, [r4, #0]
 8001a14:	6841      	ldr	r1, [r0, #4]
 8001a16:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001a1a:	f840 1e04 	strt	r1, [r0, #4]
 8001a1e:	6881      	ldr	r1, [r0, #8]
 8001a20:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001a24:	f840 1e08 	strt	r1, [r0, #8]
 8001a28:	6801      	ldr	r1, [r0, #0]
 8001a2a:	f041 0101 	orr.w	r1, r1, #1
 8001a2e:	f840 1e00 	strt	r1, [r0]
 8001a32:	4620      	mov	r0, r4
 8001a34:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001a38:	f000 b9b7 	b.w	8001daa <UART_CheckIdleState>

08001a3c <HAL_UART_MspInit>:
 8001a3c:	4770      	bx	lr
	...

08001a40 <UART_SetConfig>:
 8001a40:	b084      	sub	sp, #16
 8001a42:	f84d 4e00 	strt	r4, [sp]
 8001a46:	f84d 5e04 	strt	r5, [sp, #4]
 8001a4a:	f84d 7e08 	strt	r7, [sp, #8]
 8001a4e:	f84d ee0c 	strt	lr, [sp, #12]
 8001a52:	af02      	add	r7, sp, #8
 8001a54:	4604      	mov	r4, r0
 8001a56:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001a5a:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001a5e:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001a62:	6821      	ldr	r1, [r4, #0]
 8001a64:	68a0      	ldr	r0, [r4, #8]
 8001a66:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001a6a:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001a6e:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001a72:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001a76:	4310      	orrs	r0, r2
 8001a78:	69e2      	ldr	r2, [r4, #28]
 8001a7a:	4571      	cmp	r1, lr
 8001a7c:	ea40 0003 	orr.w	r0, r0, r3
 8001a80:	680b      	ldr	r3, [r1, #0]
 8001a82:	ea40 0002 	orr.w	r0, r0, r2
 8001a86:	ea03 0305 	and.w	r3, r3, r5
 8001a8a:	f04f 0510 	mov.w	r5, #16
 8001a8e:	ea40 0003 	orr.w	r0, r0, r3
 8001a92:	f841 0e00 	strt	r0, [r1]
 8001a96:	6848      	ldr	r0, [r1, #4]
 8001a98:	68e3      	ldr	r3, [r4, #12]
 8001a9a:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a9e:	ea40 0003 	orr.w	r0, r0, r3
 8001aa2:	f841 0e04 	strt	r0, [r1, #4]
 8001aa6:	69a0      	ldr	r0, [r4, #24]
 8001aa8:	bf1c      	itt	ne
 8001aaa:	6a23      	ldrne	r3, [r4, #32]
 8001aac:	4318      	orrne	r0, r3
 8001aae:	688b      	ldr	r3, [r1, #8]
 8001ab0:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001ab4:	4318      	orrs	r0, r3
 8001ab6:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001aba:	f841 0e08 	strt	r0, [r1, #8]
 8001abe:	f242 4000 	movw	r0, #9216	; 0x2400
 8001ac2:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ac6:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001aca:	4299      	cmp	r1, r3
 8001acc:	dc15      	bgt.n	8001afa <UART_SetConfig+0xba>
 8001ace:	f244 4300 	movw	r3, #17408	; 0x4400
 8001ad2:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ad6:	4299      	cmp	r1, r3
 8001ad8:	d024      	beq.n	8001b24 <UART_SetConfig+0xe4>
 8001ada:	f644 0300 	movw	r3, #18432	; 0x4800
 8001ade:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ae2:	4299      	cmp	r1, r3
 8001ae4:	d022      	beq.n	8001b2c <UART_SetConfig+0xec>
 8001ae6:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001aea:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aee:	4299      	cmp	r1, r3
 8001af0:	d131      	bne.n	8001b56 <UART_SetConfig+0x116>
 8001af2:	f8dc 3000 	ldr.w	r3, [ip]
 8001af6:	099d      	lsrs	r5, r3, #6
 8001af8:	e023      	b.n	8001b42 <UART_SetConfig+0x102>
 8001afa:	f245 0300 	movw	r3, #20480	; 0x5000
 8001afe:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b02:	4299      	cmp	r1, r3
 8001b04:	d016      	beq.n	8001b34 <UART_SetConfig+0xf4>
 8001b06:	4571      	cmp	r1, lr
 8001b08:	d018      	beq.n	8001b3c <UART_SetConfig+0xfc>
 8001b0a:	f643 0300 	movw	r3, #14336	; 0x3800
 8001b0e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001b12:	4299      	cmp	r1, r3
 8001b14:	d11f      	bne.n	8001b56 <UART_SetConfig+0x116>
 8001b16:	f8dc 5000 	ldr.w	r5, [ip]
 8001b1a:	f64a 03a0 	movw	r3, #43168	; 0xa8a0
 8001b1e:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b22:	e012      	b.n	8001b4a <UART_SetConfig+0x10a>
 8001b24:	f8dc 3000 	ldr.w	r3, [ip]
 8001b28:	089d      	lsrs	r5, r3, #2
 8001b2a:	e00a      	b.n	8001b42 <UART_SetConfig+0x102>
 8001b2c:	f8dc 3000 	ldr.w	r3, [ip]
 8001b30:	091d      	lsrs	r5, r3, #4
 8001b32:	e006      	b.n	8001b42 <UART_SetConfig+0x102>
 8001b34:	f8dc 3000 	ldr.w	r3, [ip]
 8001b38:	0a1d      	lsrs	r5, r3, #8
 8001b3a:	e002      	b.n	8001b42 <UART_SetConfig+0x102>
 8001b3c:	f8dc 3000 	ldr.w	r3, [ip]
 8001b40:	0a9d      	lsrs	r5, r3, #10
 8001b42:	f64a 03b0 	movw	r3, #43184	; 0xa8b0
 8001b46:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b4a:	f005 0503 	and.w	r5, r5, #3
 8001b4e:	f085 0502 	eor.w	r5, r5, #2
 8001b52:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001b56:	4571      	cmp	r1, lr
 8001b58:	d012      	beq.n	8001b80 <UART_SetConfig+0x140>
 8001b5a:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001b5e:	d11d      	bne.n	8001b9c <UART_SetConfig+0x15c>
 8001b60:	f005 001f 	and.w	r0, r5, #31
 8001b64:	2101      	movs	r1, #1
 8001b66:	2808      	cmp	r0, #8
 8001b68:	f200 80a0 	bhi.w	8001cac <UART_SetConfig+0x26c>
 8001b6c:	e8df f000 	tbb	[pc, r0]
 8001b70:	9e434005 	.word	0x9e434005
 8001b74:	9e9e9e49 	.word	0x9e9e9e49
 8001b78:	004f      	.short	0x004f
 8001b7a:	f7ff fcde 	bl	800153a <HAL_RCC_GetPCLK1Freq>
 8001b7e:	e042      	b.n	8001c06 <UART_SetConfig+0x1c6>
 8001b80:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001b84:	2101      	movs	r1, #1
 8001b86:	2d04      	cmp	r5, #4
 8001b88:	f200 8090 	bhi.w	8001cac <UART_SetConfig+0x26c>
 8001b8c:	e8df f005 	tbb	[pc, r5]
 8001b90:	8e161c03 	.word	0x8e161c03
 8001b94:	001a      	.short	0x001a
 8001b96:	f7ff fcd0 	bl	800153a <HAL_RCC_GetPCLK1Freq>
 8001b9a:	e011      	b.n	8001bc0 <UART_SetConfig+0x180>
 8001b9c:	f005 021f 	and.w	r2, r5, #31
 8001ba0:	2101      	movs	r1, #1
 8001ba2:	2a08      	cmp	r2, #8
 8001ba4:	f200 8082 	bhi.w	8001cac <UART_SetConfig+0x26c>
 8001ba8:	e8df f002 	tbb	[pc, r2]
 8001bac:	80464305 	.word	0x80464305
 8001bb0:	80808048 	.word	0x80808048
 8001bb4:	004e      	.short	0x004e
 8001bb6:	f7ff fcc0 	bl	800153a <HAL_RCC_GetPCLK1Freq>
 8001bba:	e041      	b.n	8001c40 <UART_SetConfig+0x200>
 8001bbc:	f7ff fc5a 	bl	8001474 <HAL_RCC_GetSysClockFreq>
 8001bc0:	b910      	cbnz	r0, 8001bc8 <UART_SetConfig+0x188>
 8001bc2:	e072      	b.n	8001caa <UART_SetConfig+0x26a>
 8001bc4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bc8:	6862      	ldr	r2, [r4, #4]
 8001bca:	2101      	movs	r1, #1
 8001bcc:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001bd0:	4298      	cmp	r0, r3
 8001bd2:	d36b      	bcc.n	8001cac <UART_SetConfig+0x26c>
 8001bd4:	0313      	lsls	r3, r2, #12
 8001bd6:	4298      	cmp	r0, r3
 8001bd8:	bf9c      	itt	ls
 8001bda:	2101      	movls	r1, #1
 8001bdc:	2d04      	cmpls	r5, #4
 8001bde:	d865      	bhi.n	8001cac <UART_SetConfig+0x26c>
 8001be0:	e8df f005 	tbb	[pc, r5]
 8001be4:	64453e03 	.word	0x64453e03
 8001be8:	0052      	.short	0x0052
 8001bea:	f7ff fca6 	bl	800153a <HAL_RCC_GetPCLK1Freq>
 8001bee:	e040      	b.n	8001c72 <UART_SetConfig+0x232>
 8001bf0:	f7ff fcb8 	bl	8001564 <HAL_RCC_GetPCLK2Freq>
 8001bf4:	e007      	b.n	8001c06 <UART_SetConfig+0x1c6>
 8001bf6:	6861      	ldr	r1, [r4, #4]
 8001bf8:	f644 0200 	movw	r2, #18432	; 0x4800
 8001bfc:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001c00:	e008      	b.n	8001c14 <UART_SetConfig+0x1d4>
 8001c02:	f7ff fc37 	bl	8001474 <HAL_RCC_GetSysClockFreq>
 8001c06:	6861      	ldr	r1, [r4, #4]
 8001c08:	0040      	lsls	r0, r0, #1
 8001c0a:	084a      	lsrs	r2, r1, #1
 8001c0c:	e003      	b.n	8001c16 <UART_SetConfig+0x1d6>
 8001c0e:	6861      	ldr	r1, [r4, #4]
 8001c10:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001c14:	0848      	lsrs	r0, r1, #1
 8001c16:	4410      	add	r0, r2
 8001c18:	fbb0 f0f1 	udiv	r0, r0, r1
 8001c1c:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001c20:	4001      	ands	r1, r0
 8001c22:	2910      	cmp	r1, #16
 8001c24:	d303      	bcc.n	8001c2e <UART_SetConfig+0x1ee>
 8001c26:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001c2a:	4308      	orrs	r0, r1
 8001c2c:	e03a      	b.n	8001ca4 <UART_SetConfig+0x264>
 8001c2e:	2101      	movs	r1, #1
 8001c30:	e03c      	b.n	8001cac <UART_SetConfig+0x26c>
 8001c32:	f7ff fc97 	bl	8001564 <HAL_RCC_GetPCLK2Freq>
 8001c36:	e003      	b.n	8001c40 <UART_SetConfig+0x200>
 8001c38:	6862      	ldr	r2, [r4, #4]
 8001c3a:	e008      	b.n	8001c4e <UART_SetConfig+0x20e>
 8001c3c:	f7ff fc1a 	bl	8001474 <HAL_RCC_GetSysClockFreq>
 8001c40:	6862      	ldr	r2, [r4, #4]
 8001c42:	4601      	mov	r1, r0
 8001c44:	0850      	lsrs	r0, r2, #1
 8001c46:	e003      	b.n	8001c50 <UART_SetConfig+0x210>
 8001c48:	6862      	ldr	r2, [r4, #4]
 8001c4a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c4e:	0851      	lsrs	r1, r2, #1
 8001c50:	4408      	add	r0, r1
 8001c52:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c56:	b280      	uxth	r0, r0
 8001c58:	2810      	cmp	r0, #16
 8001c5a:	d223      	bcs.n	8001ca4 <UART_SetConfig+0x264>
 8001c5c:	2101      	movs	r1, #1
 8001c5e:	e025      	b.n	8001cac <UART_SetConfig+0x26c>
 8001c60:	2000      	movs	r0, #0
 8001c62:	2100      	movs	r1, #0
 8001c64:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001c68:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001c6c:	e006      	b.n	8001c7c <UART_SetConfig+0x23c>
 8001c6e:	f7ff fc01 	bl	8001474 <HAL_RCC_GetSysClockFreq>
 8001c72:	6862      	ldr	r2, [r4, #4]
 8001c74:	0e01      	lsrs	r1, r0, #24
 8001c76:	0853      	lsrs	r3, r2, #1
 8001c78:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001c7c:	f141 0100 	adc.w	r1, r1, #0
 8001c80:	2300      	movs	r3, #0
 8001c82:	f7fe ff51 	bl	8000b28 <__aeabi_uldivmod>
 8001c86:	e005      	b.n	8001c94 <UART_SetConfig+0x254>
 8001c88:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c8c:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c90:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c94:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c98:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c9c:	f2c0 020f 	movt	r2, #15
 8001ca0:	4291      	cmp	r1, r2
 8001ca2:	d80a      	bhi.n	8001cba <UART_SetConfig+0x27a>
 8001ca4:	6821      	ldr	r1, [r4, #0]
 8001ca6:	f841 0e0c 	strt	r0, [r1, #12]
 8001caa:	2100      	movs	r1, #0
 8001cac:	2000      	movs	r0, #0
 8001cae:	f844 0e60 	strt	r0, [r4, #96]
 8001cb2:	f844 0e64 	strt	r0, [r4, #100]
 8001cb6:	4608      	mov	r0, r1
 8001cb8:	bdb0      	pop	{r4, r5, r7, pc}
 8001cba:	2101      	movs	r1, #1
 8001cbc:	e7f6      	b.n	8001cac <UART_SetConfig+0x26c>

08001cbe <UART_AdvFeatureConfig>:
 8001cbe:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001cc0:	f011 0f01 	tst.w	r1, #1
 8001cc4:	d009      	beq.n	8001cda <UART_AdvFeatureConfig+0x1c>
 8001cc6:	6802      	ldr	r2, [r0, #0]
 8001cc8:	6853      	ldr	r3, [r2, #4]
 8001cca:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001cce:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001cd2:	ea43 030c 	orr.w	r3, r3, ip
 8001cd6:	f842 3e04 	strt	r3, [r2, #4]
 8001cda:	078a      	lsls	r2, r1, #30
 8001cdc:	d509      	bpl.n	8001cf2 <UART_AdvFeatureConfig+0x34>
 8001cde:	6802      	ldr	r2, [r0, #0]
 8001ce0:	6853      	ldr	r3, [r2, #4]
 8001ce2:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001ce6:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001cea:	ea43 030c 	orr.w	r3, r3, ip
 8001cee:	f842 3e04 	strt	r3, [r2, #4]
 8001cf2:	074a      	lsls	r2, r1, #29
 8001cf4:	d509      	bpl.n	8001d0a <UART_AdvFeatureConfig+0x4c>
 8001cf6:	6802      	ldr	r2, [r0, #0]
 8001cf8:	6853      	ldr	r3, [r2, #4]
 8001cfa:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001cfe:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001d02:	ea43 030c 	orr.w	r3, r3, ip
 8001d06:	f842 3e04 	strt	r3, [r2, #4]
 8001d0a:	070a      	lsls	r2, r1, #28
 8001d0c:	d509      	bpl.n	8001d22 <UART_AdvFeatureConfig+0x64>
 8001d0e:	6802      	ldr	r2, [r0, #0]
 8001d10:	6853      	ldr	r3, [r2, #4]
 8001d12:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001d16:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001d1a:	ea43 030c 	orr.w	r3, r3, ip
 8001d1e:	f842 3e04 	strt	r3, [r2, #4]
 8001d22:	06ca      	lsls	r2, r1, #27
 8001d24:	d509      	bpl.n	8001d3a <UART_AdvFeatureConfig+0x7c>
 8001d26:	6802      	ldr	r2, [r0, #0]
 8001d28:	6893      	ldr	r3, [r2, #8]
 8001d2a:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001d2e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001d32:	ea43 030c 	orr.w	r3, r3, ip
 8001d36:	f842 3e08 	strt	r3, [r2, #8]
 8001d3a:	068a      	lsls	r2, r1, #26
 8001d3c:	d509      	bpl.n	8001d52 <UART_AdvFeatureConfig+0x94>
 8001d3e:	6802      	ldr	r2, [r0, #0]
 8001d40:	6893      	ldr	r3, [r2, #8]
 8001d42:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001d46:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001d4a:	ea43 030c 	orr.w	r3, r3, ip
 8001d4e:	f842 3e08 	strt	r3, [r2, #8]
 8001d52:	b082      	sub	sp, #8
 8001d54:	f84d 7e00 	strt	r7, [sp]
 8001d58:	f84d ee04 	strt	lr, [sp, #4]
 8001d5c:	466f      	mov	r7, sp
 8001d5e:	064a      	lsls	r2, r1, #25
 8001d60:	d515      	bpl.n	8001d8e <UART_AdvFeatureConfig+0xd0>
 8001d62:	f8d0 e000 	ldr.w	lr, [r0]
 8001d66:	f8de c004 	ldr.w	ip, [lr, #4]
 8001d6a:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001d6c:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001d70:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001d74:	ea42 0203 	orr.w	r2, r2, r3
 8001d78:	f84e 2e04 	strt	r2, [lr, #4]
 8001d7c:	d107      	bne.n	8001d8e <UART_AdvFeatureConfig+0xd0>
 8001d7e:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001d82:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001d84:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001d88:	431a      	orrs	r2, r3
 8001d8a:	f84e 2e04 	strt	r2, [lr, #4]
 8001d8e:	0609      	lsls	r1, r1, #24
 8001d90:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001d94:	bf58      	it	pl
 8001d96:	4770      	bxpl	lr
 8001d98:	6801      	ldr	r1, [r0, #0]
 8001d9a:	684a      	ldr	r2, [r1, #4]
 8001d9c:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d9e:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001da2:	4310      	orrs	r0, r2
 8001da4:	f841 0e04 	strt	r0, [r1, #4]
 8001da8:	4770      	bx	lr

08001daa <UART_CheckIdleState>:
 8001daa:	b085      	sub	sp, #20
 8001dac:	f84d 4e00 	strt	r4, [sp]
 8001db0:	f84d 5e04 	strt	r5, [sp, #4]
 8001db4:	f84d 6e08 	strt	r6, [sp, #8]
 8001db8:	f84d 7e0c 	strt	r7, [sp, #12]
 8001dbc:	f84d ee10 	strt	lr, [sp, #16]
 8001dc0:	af03      	add	r7, sp, #12
 8001dc2:	b081      	sub	sp, #4
 8001dc4:	f84d be00 	strt	fp, [sp]
 8001dc8:	4604      	mov	r4, r0
 8001dca:	2000      	movs	r0, #0
 8001dcc:	f844 0e7c 	strt	r0, [r4, #124]
 8001dd0:	f7ff f9ef 	bl	80011b2 <HAL_GetTick>
 8001dd4:	4605      	mov	r5, r0
 8001dd6:	6820      	ldr	r0, [r4, #0]
 8001dd8:	6801      	ldr	r1, [r0, #0]
 8001dda:	f011 0f08 	tst.w	r1, #8
 8001dde:	d00f      	beq.n	8001e00 <UART_CheckIdleState+0x56>
 8001de0:	69c1      	ldr	r1, [r0, #28]
 8001de2:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001de6:	d10b      	bne.n	8001e00 <UART_CheckIdleState+0x56>
 8001de8:	2600      	movs	r6, #0
 8001dea:	f7ff f9e2 	bl	80011b2 <HAL_GetTick>
 8001dee:	1b41      	subs	r1, r0, r5
 8001df0:	6820      	ldr	r0, [r4, #0]
 8001df2:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001df6:	d11b      	bne.n	8001e30 <UART_CheckIdleState+0x86>
 8001df8:	69c1      	ldr	r1, [r0, #28]
 8001dfa:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001dfe:	d0f4      	beq.n	8001dea <UART_CheckIdleState+0x40>
 8001e00:	6801      	ldr	r1, [r0, #0]
 8001e02:	f011 0f04 	tst.w	r1, #4
 8001e06:	d101      	bne.n	8001e0c <UART_CheckIdleState+0x62>
 8001e08:	2600      	movs	r6, #0
 8001e0a:	e01c      	b.n	8001e46 <UART_CheckIdleState+0x9c>
 8001e0c:	69c0      	ldr	r0, [r0, #28]
 8001e0e:	2600      	movs	r6, #0
 8001e10:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e14:	d117      	bne.n	8001e46 <UART_CheckIdleState+0x9c>
 8001e16:	f7ff f9cc 	bl	80011b2 <HAL_GetTick>
 8001e1a:	1b41      	subs	r1, r0, r5
 8001e1c:	6820      	ldr	r0, [r4, #0]
 8001e1e:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001e22:	d105      	bne.n	8001e30 <UART_CheckIdleState+0x86>
 8001e24:	69c0      	ldr	r0, [r0, #28]
 8001e26:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e2a:	d0f4      	beq.n	8001e16 <UART_CheckIdleState+0x6c>
 8001e2c:	2600      	movs	r6, #0
 8001e2e:	e00a      	b.n	8001e46 <UART_CheckIdleState+0x9c>
 8001e30:	6801      	ldr	r1, [r0, #0]
 8001e32:	2603      	movs	r6, #3
 8001e34:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e38:	f840 1e00 	strt	r1, [r0]
 8001e3c:	6881      	ldr	r1, [r0, #8]
 8001e3e:	f021 0101 	bic.w	r1, r1, #1
 8001e42:	f840 1e08 	strt	r1, [r0, #8]
 8001e46:	2020      	movs	r0, #32
 8001e48:	f844 0e74 	strt	r0, [r4, #116]
 8001e4c:	f844 0e78 	strt	r0, [r4, #120]
 8001e50:	2000      	movs	r0, #0
 8001e52:	f844 0e70 	strt	r0, [r4, #112]
 8001e56:	4630      	mov	r0, r6
 8001e58:	f85d bb04 	ldr.w	fp, [sp], #4
 8001e5c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001e5e <HAL_UART_Transmit>:
 8001e5e:	b085      	sub	sp, #20
 8001e60:	f84d 4e00 	strt	r4, [sp]
 8001e64:	f84d 5e04 	strt	r5, [sp, #4]
 8001e68:	f84d 6e08 	strt	r6, [sp, #8]
 8001e6c:	f84d 7e0c 	strt	r7, [sp, #12]
 8001e70:	f84d ee10 	strt	lr, [sp, #16]
 8001e74:	af03      	add	r7, sp, #12
 8001e76:	b084      	sub	sp, #16
 8001e78:	f84d 8e00 	strt	r8, [sp]
 8001e7c:	f84d 9e04 	strt	r9, [sp, #4]
 8001e80:	f84d ae08 	strt	sl, [sp, #8]
 8001e84:	f84d be0c 	strt	fp, [sp, #12]
 8001e88:	b081      	sub	sp, #4
 8001e8a:	4604      	mov	r4, r0
 8001e8c:	461d      	mov	r5, r3
 8001e8e:	4616      	mov	r6, r2
 8001e90:	4689      	mov	r9, r1
 8001e92:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001e94:	2820      	cmp	r0, #32
 8001e96:	d109      	bne.n	8001eac <HAL_UART_Transmit+0x4e>
 8001e98:	f1b9 0f00 	cmp.w	r9, #0
 8001e9c:	f04f 0001 	mov.w	r0, #1
 8001ea0:	bf18      	it	ne
 8001ea2:	2e00      	cmpne	r6, #0
 8001ea4:	d003      	beq.n	8001eae <HAL_UART_Transmit+0x50>
 8001ea6:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001ea8:	2801      	cmp	r0, #1
 8001eaa:	d104      	bne.n	8001eb6 <HAL_UART_Transmit+0x58>
 8001eac:	2002      	movs	r0, #2
 8001eae:	b001      	add	sp, #4
 8001eb0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001eb4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001eb6:	2001      	movs	r0, #1
 8001eb8:	f844 0e70 	strt	r0, [r4, #112]
 8001ebc:	2000      	movs	r0, #0
 8001ebe:	f844 0e7c 	strt	r0, [r4, #124]
 8001ec2:	2021      	movs	r0, #33	; 0x21
 8001ec4:	f844 0e74 	strt	r0, [r4, #116]
 8001ec8:	f7ff f973 	bl	80011b2 <HAL_GetTick>
 8001ecc:	f824 6e50 	strht	r6, [r4, #80]
 8001ed0:	f824 6e52 	strht	r6, [r4, #82]
 8001ed4:	4680      	mov	r8, r0
 8001ed6:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eda:	f8d4 b000 	ldr.w	fp, [r4]
 8001ede:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001ee2:	2900      	cmp	r1, #0
 8001ee4:	d046      	beq.n	8001f74 <HAL_UART_Transmit+0x116>
 8001ee6:	f105 0a01 	add.w	sl, r5, #1
 8001eea:	0600      	lsls	r0, r0, #24
 8001eec:	d410      	bmi.n	8001f10 <HAL_UART_Transmit+0xb2>
 8001eee:	465e      	mov	r6, fp
 8001ef0:	f1ba 0f00 	cmp.w	sl, #0
 8001ef4:	d007      	beq.n	8001f06 <HAL_UART_Transmit+0xa8>
 8001ef6:	b345      	cbz	r5, 8001f4a <HAL_UART_Transmit+0xec>
 8001ef8:	f7ff f95b 	bl	80011b2 <HAL_GetTick>
 8001efc:	6826      	ldr	r6, [r4, #0]
 8001efe:	eba0 0008 	sub.w	r0, r0, r8
 8001f02:	42a8      	cmp	r0, r5
 8001f04:	d822      	bhi.n	8001f4c <HAL_UART_Transmit+0xee>
 8001f06:	69f0      	ldr	r0, [r6, #28]
 8001f08:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001f0c:	d0f0      	beq.n	8001ef0 <HAL_UART_Transmit+0x92>
 8001f0e:	e000      	b.n	8001f12 <HAL_UART_Transmit+0xb4>
 8001f10:	465e      	mov	r6, fp
 8001f12:	68a0      	ldr	r0, [r4, #8]
 8001f14:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001f18:	bf04      	itt	eq
 8001f1a:	6920      	ldreq	r0, [r4, #16]
 8001f1c:	2800      	cmpeq	r0, #0
 8001f1e:	d002      	beq.n	8001f26 <HAL_UART_Transmit+0xc8>
 8001f20:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001f24:	e003      	b.n	8001f2e <HAL_UART_Transmit+0xd0>
 8001f26:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001f2a:	f36f 205f 	bfc	r0, #9, #23
 8001f2e:	f826 0e28 	strht	r0, [r6, #40]
 8001f32:	46b3      	mov	fp, r6
 8001f34:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001f38:	3801      	subs	r0, #1
 8001f3a:	f824 0e52 	strht	r0, [r4, #82]
 8001f3e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f42:	69f0      	ldr	r0, [r6, #28]
 8001f44:	2900      	cmp	r1, #0
 8001f46:	d1d0      	bne.n	8001eea <HAL_UART_Transmit+0x8c>
 8001f48:	e015      	b.n	8001f76 <HAL_UART_Transmit+0x118>
 8001f4a:	465e      	mov	r6, fp
 8001f4c:	6830      	ldr	r0, [r6, #0]
 8001f4e:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001f52:	f846 0e00 	strt	r0, [r6]
 8001f56:	68b0      	ldr	r0, [r6, #8]
 8001f58:	f020 0001 	bic.w	r0, r0, #1
 8001f5c:	f846 0e08 	strt	r0, [r6, #8]
 8001f60:	2020      	movs	r0, #32
 8001f62:	f844 0e74 	strt	r0, [r4, #116]
 8001f66:	f844 0e78 	strt	r0, [r4, #120]
 8001f6a:	2000      	movs	r0, #0
 8001f6c:	f844 0e70 	strt	r0, [r4, #112]
 8001f70:	2003      	movs	r0, #3
 8001f72:	e79c      	b.n	8001eae <HAL_UART_Transmit+0x50>
 8001f74:	465e      	mov	r6, fp
 8001f76:	0640      	lsls	r0, r0, #25
 8001f78:	d411      	bmi.n	8001f9e <HAL_UART_Transmit+0x140>
 8001f7a:	f105 0901 	add.w	r9, r5, #1
 8001f7e:	4630      	mov	r0, r6
 8001f80:	f1b9 0f00 	cmp.w	r9, #0
 8001f84:	d007      	beq.n	8001f96 <HAL_UART_Transmit+0x138>
 8001f86:	b18d      	cbz	r5, 8001fac <HAL_UART_Transmit+0x14e>
 8001f88:	f7ff f913 	bl	80011b2 <HAL_GetTick>
 8001f8c:	eba0 0108 	sub.w	r1, r0, r8
 8001f90:	6820      	ldr	r0, [r4, #0]
 8001f92:	42a9      	cmp	r1, r5
 8001f94:	d80b      	bhi.n	8001fae <HAL_UART_Transmit+0x150>
 8001f96:	69c1      	ldr	r1, [r0, #28]
 8001f98:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f9c:	d0f0      	beq.n	8001f80 <HAL_UART_Transmit+0x122>
 8001f9e:	2020      	movs	r0, #32
 8001fa0:	f844 0e74 	strt	r0, [r4, #116]
 8001fa4:	2000      	movs	r0, #0
 8001fa6:	f844 0e70 	strt	r0, [r4, #112]
 8001faa:	e780      	b.n	8001eae <HAL_UART_Transmit+0x50>
 8001fac:	4630      	mov	r0, r6
 8001fae:	6801      	ldr	r1, [r0, #0]
 8001fb0:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001fb4:	f840 1e00 	strt	r1, [r0]
 8001fb8:	6881      	ldr	r1, [r0, #8]
 8001fba:	f021 0101 	bic.w	r1, r1, #1
 8001fbe:	f840 1e08 	strt	r1, [r0, #8]
 8001fc2:	e7cd      	b.n	8001f60 <HAL_UART_Transmit+0x102>

08001fc4 <BSP_COM_Init>:
 8001fc4:	b085      	sub	sp, #20
 8001fc6:	f84d 4e00 	strt	r4, [sp]
 8001fca:	f84d 5e04 	strt	r5, [sp, #4]
 8001fce:	f84d 6e08 	strt	r6, [sp, #8]
 8001fd2:	f84d 7e0c 	strt	r7, [sp, #12]
 8001fd6:	f84d ee10 	strt	lr, [sp, #16]
 8001fda:	af03      	add	r7, sp, #12
 8001fdc:	b083      	sub	sp, #12
 8001fde:	f84d 8e00 	strt	r8, [sp]
 8001fe2:	f84d 9e04 	strt	r9, [sp, #4]
 8001fe6:	f84d be08 	strt	fp, [sp, #8]
 8001fea:	b086      	sub	sp, #24
 8001fec:	4605      	mov	r5, r0
 8001fee:	4688      	mov	r8, r1
 8001ff0:	bb25      	cbnz	r5, 800203c <BSP_COM_Init+0x78>
 8001ff2:	f241 004c 	movw	r0, #4172	; 0x104c
 8001ff6:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001ffa:	6801      	ldr	r1, [r0, #0]
 8001ffc:	f041 0102 	orr.w	r1, r1, #2
 8002000:	f840 1e00 	strt	r1, [r0]
 8002004:	6801      	ldr	r1, [r0, #0]
 8002006:	f001 0102 	and.w	r1, r1, #2
 800200a:	f84d 1e04 	strt	r1, [sp, #4]
 800200e:	9901      	ldr	r1, [sp, #4]
 8002010:	6801      	ldr	r1, [r0, #0]
 8002012:	f041 0102 	orr.w	r1, r1, #2
 8002016:	f840 1e00 	strt	r1, [r0]
 800201a:	6801      	ldr	r1, [r0, #0]
 800201c:	f001 0102 	and.w	r1, r1, #2
 8002020:	f84d 1e04 	strt	r1, [sp, #4]
 8002024:	9901      	ldr	r1, [sp, #4]
 8002026:	6941      	ldr	r1, [r0, #20]
 8002028:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 800202c:	f840 1e14 	strt	r1, [r0, #20]
 8002030:	6940      	ldr	r0, [r0, #20]
 8002032:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002036:	f84d 0e04 	strt	r0, [sp, #4]
 800203a:	9801      	ldr	r0, [sp, #4]
 800203c:	2040      	movs	r0, #64	; 0x40
 800203e:	2402      	movs	r4, #2
 8002040:	ae01      	add	r6, sp, #4
 8002042:	f04f 0907 	mov.w	r9, #7
 8002046:	f84d 0e04 	strt	r0, [sp, #4]
 800204a:	2000      	movs	r0, #0
 800204c:	f84d 4e08 	strt	r4, [sp, #8]
 8002050:	f84d 4e10 	strt	r4, [sp, #16]
 8002054:	4631      	mov	r1, r6
 8002056:	f84d 0e0c 	strt	r0, [sp, #12]
 800205a:	f240 000c 	movw	r0, #12
 800205e:	f84d 9e14 	strt	r9, [sp, #20]
 8002062:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002066:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 800206a:	f7ff f8fb 	bl	8001264 <HAL_GPIO_Init>
 800206e:	2080      	movs	r0, #128	; 0x80
 8002070:	4631      	mov	r1, r6
 8002072:	f84d 0e04 	strt	r0, [sp, #4]
 8002076:	f84d 4e08 	strt	r4, [sp, #8]
 800207a:	f240 0010 	movw	r0, #16
 800207e:	f84d 9e14 	strt	r9, [sp, #20]
 8002082:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002086:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 800208a:	f7ff f8eb 	bl	8001264 <HAL_GPIO_Init>
 800208e:	f240 0008 	movw	r0, #8
 8002092:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002096:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 800209a:	f848 0e00 	strt	r0, [r8]
 800209e:	4640      	mov	r0, r8
 80020a0:	f7ff fc8d 	bl	80019be <HAL_UART_Init>
 80020a4:	b006      	add	sp, #24
 80020a6:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80020aa:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020ac <verify_benchmark>:
 80020ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020b0:	4770      	bx	lr

080020b2 <initialise_benchmark>:
 80020b2:	4770      	bx	lr
 80020b4:	0000      	movs	r0, r0
	...

080020b8 <benchmark>:
 80020b8:	b084      	sub	sp, #16
 80020ba:	f84d 4e00 	strt	r4, [sp]
 80020be:	f84d 5e04 	strt	r5, [sp, #4]
 80020c2:	f84d 7e08 	strt	r7, [sp, #8]
 80020c6:	f84d ee0c 	strt	lr, [sp, #12]
 80020ca:	af02      	add	r7, sp, #8
 80020cc:	b08e      	sub	sp, #56	; 0x38
 80020ce:	b082      	sub	sp, #8
 80020d0:	f84d 0e00 	strt	r0, [sp]
 80020d4:	f84d 1e04 	strt	r1, [sp, #4]
 80020d8:	ec51 0b18 	vmov	r0, r1, d8
 80020dc:	f84d 0e08 	strt	r0, [sp, #8]
 80020e0:	f84d 1e0c 	strt	r1, [sp, #12]
 80020e4:	bc03      	pop	{r0, r1}
 80020e6:	b082      	sub	sp, #8
 80020e8:	f84d 0e00 	strt	r0, [sp]
 80020ec:	f84d 1e04 	strt	r1, [sp, #4]
 80020f0:	ec51 0b19 	vmov	r0, r1, d9
 80020f4:	f84d 0e10 	strt	r0, [sp, #16]
 80020f8:	f84d 1e14 	strt	r1, [sp, #20]
 80020fc:	bc03      	pop	{r0, r1}
 80020fe:	b082      	sub	sp, #8
 8002100:	f84d 0e00 	strt	r0, [sp]
 8002104:	f84d 1e04 	strt	r1, [sp, #4]
 8002108:	ec51 0b1a 	vmov	r0, r1, d10
 800210c:	f84d 0e18 	strt	r0, [sp, #24]
 8002110:	f84d 1e1c 	strt	r1, [sp, #28]
 8002114:	bc03      	pop	{r0, r1}
 8002116:	b082      	sub	sp, #8
 8002118:	f84d 0e00 	strt	r0, [sp]
 800211c:	f84d 1e04 	strt	r1, [sp, #4]
 8002120:	ec51 0b1b 	vmov	r0, r1, d11
 8002124:	f84d 0e20 	strt	r0, [sp, #32]
 8002128:	f84d 1e24 	strt	r1, [sp, #36]
 800212c:	bc03      	pop	{r0, r1}
 800212e:	b082      	sub	sp, #8
 8002130:	f84d 0e00 	strt	r0, [sp]
 8002134:	f84d 1e04 	strt	r1, [sp, #4]
 8002138:	ec51 0b1c 	vmov	r0, r1, d12
 800213c:	f84d 0e28 	strt	r0, [sp, #40]
 8002140:	f84d 1e2c 	strt	r1, [sp, #44]
 8002144:	bc03      	pop	{r0, r1}
 8002146:	b082      	sub	sp, #8
 8002148:	f84d 0e00 	strt	r0, [sp]
 800214c:	f84d 1e04 	strt	r1, [sp, #4]
 8002150:	ec51 0b1d 	vmov	r0, r1, d13
 8002154:	f84d 0e30 	strt	r0, [sp, #48]
 8002158:	f84d 1e34 	strt	r1, [sp, #52]
 800215c:	bc03      	pop	{r0, r1}
 800215e:	b082      	sub	sp, #8
 8002160:	f84d 0e00 	strt	r0, [sp]
 8002164:	f84d 1e04 	strt	r1, [sp, #4]
 8002168:	ec51 0b1e 	vmov	r0, r1, d14
 800216c:	f84d 0e38 	strt	r0, [sp, #56]
 8002170:	f84d 1e3c 	strt	r1, [sp, #60]
 8002174:	bc03      	pop	{r0, r1}
 8002176:	b0e2      	sub	sp, #392	; 0x188
 8002178:	466c      	mov	r4, sp
 800217a:	f44f 71c0 	mov.w	r1, #384	; 0x180
 800217e:	4620      	mov	r0, r4
 8002180:	f003 fc96 	bl	8005ab0 <__aeabi_memclr>
 8002184:	ed9f cbca 	vldr	d12, [pc, #808]	; 80024b0 <benchmark+0x3f8>
 8002188:	ed9f 8bcf 	vldr	d8, [pc, #828]	; 80024c8 <benchmark+0x410>
 800218c:	ed9f 1bca 	vldr	d1, [pc, #808]	; 80024b8 <benchmark+0x400>
 8002190:	ed9f 2bcb 	vldr	d2, [pc, #812]	; 80024c0 <benchmark+0x408>
 8002194:	ad61      	add	r5, sp, #388	; 0x184
 8002196:	4621      	mov	r1, r4
 8002198:	4628      	mov	r0, r5
 800219a:	eeb0 0a4c 	vmov.f32	s0, s24
 800219e:	eeb0 3a48 	vmov.f32	s6, s16
 80021a2:	eef0 0a6c 	vmov.f32	s1, s25
 80021a6:	eef0 3a68 	vmov.f32	s7, s17
 80021aa:	f000 f9c9 	bl	8002540 <SolveCubic>
 80021ae:	ed9f 1bc8 	vldr	d1, [pc, #800]	; 80024d0 <benchmark+0x418>
 80021b2:	ed9f 2bc9 	vldr	d2, [pc, #804]	; 80024d8 <benchmark+0x420>
 80021b6:	eeb0 0a4c 	vmov.f32	s0, s24
 80021ba:	eeb0 3a48 	vmov.f32	s6, s16
 80021be:	4628      	mov	r0, r5
 80021c0:	4621      	mov	r1, r4
 80021c2:	eef0 0a6c 	vmov.f32	s1, s25
 80021c6:	eef0 3a68 	vmov.f32	s7, s17
 80021ca:	f000 f9b9 	bl	8002540 <SolveCubic>
 80021ce:	ed9f 1bc4 	vldr	d1, [pc, #784]	; 80024e0 <benchmark+0x428>
 80021d2:	ed9f 2bc5 	vldr	d2, [pc, #788]	; 80024e8 <benchmark+0x430>
 80021d6:	ed9f 3bc6 	vldr	d3, [pc, #792]	; 80024f0 <benchmark+0x438>
 80021da:	eeb0 0a4c 	vmov.f32	s0, s24
 80021de:	4628      	mov	r0, r5
 80021e0:	4621      	mov	r1, r4
 80021e2:	eef0 0a6c 	vmov.f32	s1, s25
 80021e6:	f000 f9ab 	bl	8002540 <SolveCubic>
 80021ea:	ed9f 1bc3 	vldr	d1, [pc, #780]	; 80024f8 <benchmark+0x440>
 80021ee:	ed9f 3bc4 	vldr	d3, [pc, #784]	; 8002500 <benchmark+0x448>
 80021f2:	eeb0 0a4c 	vmov.f32	s0, s24
 80021f6:	eeb0 2a4c 	vmov.f32	s4, s24
 80021fa:	4628      	mov	r0, r5
 80021fc:	4621      	mov	r1, r4
 80021fe:	eef0 0a6c 	vmov.f32	s1, s25
 8002202:	eef0 2a6c 	vmov.f32	s5, s25
 8002206:	f000 f99b 	bl	8002540 <SolveCubic>
 800220a:	ed9f dbbf 	vldr	d13, [pc, #764]	; 8002508 <benchmark+0x450>
 800220e:	ed9f abc0 	vldr	d10, [pc, #768]	; 8002510 <benchmark+0x458>
 8002212:	ed9f 8bc1 	vldr	d8, [pc, #772]	; 8002518 <benchmark+0x460>
 8002216:	eeb0 0a4c 	vmov.f32	s0, s24
 800221a:	4628      	mov	r0, r5
 800221c:	4621      	mov	r1, r4
 800221e:	eef0 0a6c 	vmov.f32	s1, s25
 8002222:	eeb0 1a4d 	vmov.f32	s2, s26
 8002226:	eeb0 2a4a 	vmov.f32	s4, s20
 800222a:	eeb0 3a48 	vmov.f32	s6, s16
 800222e:	eef0 1a6d 	vmov.f32	s3, s27
 8002232:	eef0 2a6a 	vmov.f32	s5, s21
 8002236:	eef0 3a68 	vmov.f32	s7, s17
 800223a:	f000 f981 	bl	8002540 <SolveCubic>
 800223e:	ed9f 9bb8 	vldr	d9, [pc, #736]	; 8002520 <benchmark+0x468>
 8002242:	eeb0 0a4c 	vmov.f32	s0, s24
 8002246:	eeb0 1a4d 	vmov.f32	s2, s26
 800224a:	eeb0 2a4a 	vmov.f32	s4, s20
 800224e:	4628      	mov	r0, r5
 8002250:	4621      	mov	r1, r4
 8002252:	eef0 0a6c 	vmov.f32	s1, s25
 8002256:	eef0 1a6d 	vmov.f32	s3, s27
 800225a:	eef0 2a6a 	vmov.f32	s5, s21
 800225e:	eeb0 3a49 	vmov.f32	s6, s18
 8002262:	eef0 3a69 	vmov.f32	s7, s19
 8002266:	f000 f96b 	bl	8002540 <SolveCubic>
 800226a:	ed9f bbaf 	vldr	d11, [pc, #700]	; 8002528 <benchmark+0x470>
 800226e:	eeb0 0a4c 	vmov.f32	s0, s24
 8002272:	eeb0 1a4d 	vmov.f32	s2, s26
 8002276:	eeb0 3a48 	vmov.f32	s6, s16
 800227a:	4628      	mov	r0, r5
 800227c:	4621      	mov	r1, r4
 800227e:	eef0 0a6c 	vmov.f32	s1, s25
 8002282:	eef0 1a6d 	vmov.f32	s3, s27
 8002286:	eef0 3a68 	vmov.f32	s7, s17
 800228a:	eeb0 2a4b 	vmov.f32	s4, s22
 800228e:	eef0 2a6b 	vmov.f32	s5, s23
 8002292:	f000 f955 	bl	8002540 <SolveCubic>
 8002296:	eeb0 0a4c 	vmov.f32	s0, s24
 800229a:	eeb0 1a4d 	vmov.f32	s2, s26
 800229e:	eeb0 2a4b 	vmov.f32	s4, s22
 80022a2:	eeb0 3a49 	vmov.f32	s6, s18
 80022a6:	4628      	mov	r0, r5
 80022a8:	4621      	mov	r1, r4
 80022aa:	eef0 0a6c 	vmov.f32	s1, s25
 80022ae:	eef0 1a6d 	vmov.f32	s3, s27
 80022b2:	eef0 2a6b 	vmov.f32	s5, s23
 80022b6:	eef0 3a69 	vmov.f32	s7, s19
 80022ba:	f000 f941 	bl	8002540 <SolveCubic>
 80022be:	ed9f eb9c 	vldr	d14, [pc, #624]	; 8002530 <benchmark+0x478>
 80022c2:	eeb0 0a4c 	vmov.f32	s0, s24
 80022c6:	eeb0 2a4a 	vmov.f32	s4, s20
 80022ca:	eeb0 3a48 	vmov.f32	s6, s16
 80022ce:	4628      	mov	r0, r5
 80022d0:	4621      	mov	r1, r4
 80022d2:	eef0 0a6c 	vmov.f32	s1, s25
 80022d6:	eef0 2a6a 	vmov.f32	s5, s21
 80022da:	eef0 3a68 	vmov.f32	s7, s17
 80022de:	eeb0 1a4e 	vmov.f32	s2, s28
 80022e2:	eef0 1a6e 	vmov.f32	s3, s29
 80022e6:	f000 f92b 	bl	8002540 <SolveCubic>
 80022ea:	eeb0 0a4c 	vmov.f32	s0, s24
 80022ee:	eeb0 1a4e 	vmov.f32	s2, s28
 80022f2:	eeb0 2a4a 	vmov.f32	s4, s20
 80022f6:	eeb0 3a49 	vmov.f32	s6, s18
 80022fa:	4628      	mov	r0, r5
 80022fc:	4621      	mov	r1, r4
 80022fe:	eef0 0a6c 	vmov.f32	s1, s25
 8002302:	eef0 1a6e 	vmov.f32	s3, s29
 8002306:	eef0 2a6a 	vmov.f32	s5, s21
 800230a:	eef0 3a69 	vmov.f32	s7, s19
 800230e:	f000 f917 	bl	8002540 <SolveCubic>
 8002312:	eeb0 0a4c 	vmov.f32	s0, s24
 8002316:	eeb0 1a4e 	vmov.f32	s2, s28
 800231a:	eeb0 2a4b 	vmov.f32	s4, s22
 800231e:	eeb0 3a48 	vmov.f32	s6, s16
 8002322:	4628      	mov	r0, r5
 8002324:	4621      	mov	r1, r4
 8002326:	eef0 0a6c 	vmov.f32	s1, s25
 800232a:	eef0 1a6e 	vmov.f32	s3, s29
 800232e:	eef0 2a6b 	vmov.f32	s5, s23
 8002332:	eef0 3a68 	vmov.f32	s7, s17
 8002336:	f000 f903 	bl	8002540 <SolveCubic>
 800233a:	eeb0 0a4c 	vmov.f32	s0, s24
 800233e:	eeb0 1a4e 	vmov.f32	s2, s28
 8002342:	eeb0 2a4b 	vmov.f32	s4, s22
 8002346:	eeb0 3a49 	vmov.f32	s6, s18
 800234a:	4628      	mov	r0, r5
 800234c:	4621      	mov	r1, r4
 800234e:	eef0 0a6c 	vmov.f32	s1, s25
 8002352:	eef0 1a6e 	vmov.f32	s3, s29
 8002356:	eef0 2a6b 	vmov.f32	s5, s23
 800235a:	eef0 3a69 	vmov.f32	s7, s19
 800235e:	f000 f8ef 	bl	8002540 <SolveCubic>
 8002362:	ed9f cb75 	vldr	d12, [pc, #468]	; 8002538 <benchmark+0x480>
 8002366:	eeb0 1a4d 	vmov.f32	s2, s26
 800236a:	eeb0 2a4a 	vmov.f32	s4, s20
 800236e:	eeb0 3a48 	vmov.f32	s6, s16
 8002372:	4628      	mov	r0, r5
 8002374:	4621      	mov	r1, r4
 8002376:	eef0 1a6d 	vmov.f32	s3, s27
 800237a:	eef0 2a6a 	vmov.f32	s5, s21
 800237e:	eef0 3a68 	vmov.f32	s7, s17
 8002382:	eeb0 0a4c 	vmov.f32	s0, s24
 8002386:	eef0 0a6c 	vmov.f32	s1, s25
 800238a:	f000 f8d9 	bl	8002540 <SolveCubic>
 800238e:	eeb0 0a4c 	vmov.f32	s0, s24
 8002392:	eeb0 1a4d 	vmov.f32	s2, s26
 8002396:	eeb0 2a4a 	vmov.f32	s4, s20
 800239a:	eeb0 3a49 	vmov.f32	s6, s18
 800239e:	4628      	mov	r0, r5
 80023a0:	4621      	mov	r1, r4
 80023a2:	eef0 0a6c 	vmov.f32	s1, s25
 80023a6:	eef0 1a6d 	vmov.f32	s3, s27
 80023aa:	eef0 2a6a 	vmov.f32	s5, s21
 80023ae:	eef0 3a69 	vmov.f32	s7, s19
 80023b2:	f000 f8c5 	bl	8002540 <SolveCubic>
 80023b6:	eeb0 0a4c 	vmov.f32	s0, s24
 80023ba:	eeb0 1a4d 	vmov.f32	s2, s26
 80023be:	eeb0 2a4b 	vmov.f32	s4, s22
 80023c2:	eeb0 3a48 	vmov.f32	s6, s16
 80023c6:	4628      	mov	r0, r5
 80023c8:	4621      	mov	r1, r4
 80023ca:	eef0 0a6c 	vmov.f32	s1, s25
 80023ce:	eef0 1a6d 	vmov.f32	s3, s27
 80023d2:	eef0 2a6b 	vmov.f32	s5, s23
 80023d6:	eef0 3a68 	vmov.f32	s7, s17
 80023da:	f000 f8b1 	bl	8002540 <SolveCubic>
 80023de:	eeb0 0a4c 	vmov.f32	s0, s24
 80023e2:	eeb0 1a4d 	vmov.f32	s2, s26
 80023e6:	eeb0 2a4b 	vmov.f32	s4, s22
 80023ea:	eeb0 3a49 	vmov.f32	s6, s18
 80023ee:	4628      	mov	r0, r5
 80023f0:	4621      	mov	r1, r4
 80023f2:	eef0 0a6c 	vmov.f32	s1, s25
 80023f6:	eef0 1a6d 	vmov.f32	s3, s27
 80023fa:	eef0 2a6b 	vmov.f32	s5, s23
 80023fe:	eef0 3a69 	vmov.f32	s7, s19
 8002402:	f000 f89d 	bl	8002540 <SolveCubic>
 8002406:	eeb0 0a4c 	vmov.f32	s0, s24
 800240a:	eeb0 1a4e 	vmov.f32	s2, s28
 800240e:	eeb0 2a4a 	vmov.f32	s4, s20
 8002412:	eeb0 3a48 	vmov.f32	s6, s16
 8002416:	4628      	mov	r0, r5
 8002418:	4621      	mov	r1, r4
 800241a:	eef0 0a6c 	vmov.f32	s1, s25
 800241e:	eef0 1a6e 	vmov.f32	s3, s29
 8002422:	eef0 2a6a 	vmov.f32	s5, s21
 8002426:	eef0 3a68 	vmov.f32	s7, s17
 800242a:	f000 f889 	bl	8002540 <SolveCubic>
 800242e:	eeb0 0a4c 	vmov.f32	s0, s24
 8002432:	eeb0 1a4e 	vmov.f32	s2, s28
 8002436:	eeb0 2a4a 	vmov.f32	s4, s20
 800243a:	eeb0 3a49 	vmov.f32	s6, s18
 800243e:	4628      	mov	r0, r5
 8002440:	4621      	mov	r1, r4
 8002442:	eef0 0a6c 	vmov.f32	s1, s25
 8002446:	eef0 1a6e 	vmov.f32	s3, s29
 800244a:	eef0 2a6a 	vmov.f32	s5, s21
 800244e:	eef0 3a69 	vmov.f32	s7, s19
 8002452:	f000 f875 	bl	8002540 <SolveCubic>
 8002456:	eeb0 0a4c 	vmov.f32	s0, s24
 800245a:	eeb0 1a4e 	vmov.f32	s2, s28
 800245e:	eeb0 2a4b 	vmov.f32	s4, s22
 8002462:	eeb0 3a48 	vmov.f32	s6, s16
 8002466:	4628      	mov	r0, r5
 8002468:	4621      	mov	r1, r4
 800246a:	eef0 0a6c 	vmov.f32	s1, s25
 800246e:	eef0 1a6e 	vmov.f32	s3, s29
 8002472:	eef0 2a6b 	vmov.f32	s5, s23
 8002476:	eef0 3a68 	vmov.f32	s7, s17
 800247a:	f000 f861 	bl	8002540 <SolveCubic>
 800247e:	eeb0 0a4c 	vmov.f32	s0, s24
 8002482:	eeb0 1a4e 	vmov.f32	s2, s28
 8002486:	eeb0 2a4b 	vmov.f32	s4, s22
 800248a:	eeb0 3a49 	vmov.f32	s6, s18
 800248e:	4628      	mov	r0, r5
 8002490:	4621      	mov	r1, r4
 8002492:	eef0 0a6c 	vmov.f32	s1, s25
 8002496:	eef0 1a6e 	vmov.f32	s3, s29
 800249a:	eef0 2a6b 	vmov.f32	s5, s23
 800249e:	eef0 3a69 	vmov.f32	s7, s19
 80024a2:	f000 f84d 	bl	8002540 <SolveCubic>
 80024a6:	2000      	movs	r0, #0
 80024a8:	b062      	add	sp, #392	; 0x188
 80024aa:	ecbd 8b0e 	vpop	{d8-d14}
 80024ae:	bdb0      	pop	{r4, r5, r7, pc}
 80024b0:	00000000 	.word	0x00000000
 80024b4:	3ff00000 	.word	0x3ff00000
 80024b8:	00000000 	.word	0x00000000
 80024bc:	c0250000 	.word	0xc0250000
 80024c0:	00000000 	.word	0x00000000
 80024c4:	40400000 	.word	0x40400000
 80024c8:	00000000 	.word	0x00000000
 80024cc:	c03e0000 	.word	0xc03e0000
 80024d0:	00000000 	.word	0x00000000
 80024d4:	c0120000 	.word	0xc0120000
 80024d8:	00000000 	.word	0x00000000
 80024dc:	40310000 	.word	0x40310000
 80024e0:	00000000 	.word	0x00000000
 80024e4:	c00c0000 	.word	0xc00c0000
 80024e8:	00000000 	.word	0x00000000
 80024ec:	40360000 	.word	0x40360000
 80024f0:	00000000 	.word	0x00000000
 80024f4:	c03f0000 	.word	0xc03f0000
 80024f8:	66666666 	.word	0x66666666
 80024fc:	c02b6666 	.word	0xc02b6666
 8002500:	00000000 	.word	0x00000000
 8002504:	c0418000 	.word	0xc0418000
 8002508:	00000000 	.word	0x00000000
 800250c:	40240000 	.word	0x40240000
 8002510:	00000000 	.word	0x00000000
 8002514:	40140000 	.word	0x40140000
 8002518:	00000000 	.word	0x00000000
 800251c:	bff00000 	.word	0xbff00000
 8002520:	00000000 	.word	0x00000000
 8002524:	c0000000 	.word	0xc0000000
 8002528:	00000000 	.word	0x00000000
 800252c:	40160000 	.word	0x40160000
 8002530:	00000000 	.word	0x00000000
 8002534:	40220000 	.word	0x40220000
 8002538:	00000000 	.word	0x00000000
 800253c:	40000000 	.word	0x40000000

08002540 <SolveCubic>:
 8002540:	b085      	sub	sp, #20
 8002542:	f84d 4e00 	strt	r4, [sp]
 8002546:	f84d 5e04 	strt	r5, [sp, #4]
 800254a:	f84d 6e08 	strt	r6, [sp, #8]
 800254e:	f84d 7e0c 	strt	r7, [sp, #12]
 8002552:	f84d ee10 	strt	lr, [sp, #16]
 8002556:	af03      	add	r7, sp, #12
 8002558:	b084      	sub	sp, #16
 800255a:	f84d 8e00 	strt	r8, [sp]
 800255e:	f84d 9e04 	strt	r9, [sp, #4]
 8002562:	f84d ae08 	strt	sl, [sp, #8]
 8002566:	f84d be0c 	strt	fp, [sp, #12]
 800256a:	b081      	sub	sp, #4
 800256c:	b086      	sub	sp, #24
 800256e:	b082      	sub	sp, #8
 8002570:	f84d 0e00 	strt	r0, [sp]
 8002574:	f84d 1e04 	strt	r1, [sp, #4]
 8002578:	ec51 0b18 	vmov	r0, r1, d8
 800257c:	f84d 0e08 	strt	r0, [sp, #8]
 8002580:	f84d 1e0c 	strt	r1, [sp, #12]
 8002584:	bc03      	pop	{r0, r1}
 8002586:	b082      	sub	sp, #8
 8002588:	f84d 0e00 	strt	r0, [sp]
 800258c:	f84d 1e04 	strt	r1, [sp, #4]
 8002590:	ec51 0b19 	vmov	r0, r1, d9
 8002594:	f84d 0e10 	strt	r0, [sp, #16]
 8002598:	f84d 1e14 	strt	r1, [sp, #20]
 800259c:	bc03      	pop	{r0, r1}
 800259e:	b082      	sub	sp, #8
 80025a0:	f84d 0e00 	strt	r0, [sp]
 80025a4:	f84d 1e04 	strt	r1, [sp, #4]
 80025a8:	ec51 0b1a 	vmov	r0, r1, d10
 80025ac:	f84d 0e18 	strt	r0, [sp, #24]
 80025b0:	f84d 1e1c 	strt	r1, [sp, #28]
 80025b4:	bc03      	pop	{r0, r1}
 80025b6:	b08a      	sub	sp, #40	; 0x28
 80025b8:	ec5b 5b10 	vmov	r5, fp, d0
 80025bc:	eeb0 8a43 	vmov.f32	s16, s6
 80025c0:	eeb0 9a42 	vmov.f32	s18, s4
 80025c4:	f84d 1e24 	strt	r1, [sp, #36]
 80025c8:	f84d 0e18 	strt	r0, [sp, #24]
 80025cc:	ec51 0b11 	vmov	r0, r1, d1
 80025d0:	462a      	mov	r2, r5
 80025d2:	465b      	mov	r3, fp
 80025d4:	eef0 8a63 	vmov.f32	s17, s7
 80025d8:	eef0 9a62 	vmov.f32	s19, s5
 80025dc:	f7fe f8f6 	bl	80007cc <__aeabi_ddiv>
 80025e0:	4681      	mov	r9, r0
 80025e2:	4688      	mov	r8, r1
 80025e4:	464a      	mov	r2, r9
 80025e6:	4643      	mov	r3, r8
 80025e8:	f7fd fe10 	bl	800020c <__adddf3>
 80025ec:	4602      	mov	r2, r0
 80025ee:	460b      	mov	r3, r1
 80025f0:	4648      	mov	r0, r9
 80025f2:	4641      	mov	r1, r8
 80025f4:	f7fd ffc0 	bl	8000578 <__aeabi_dmul>
 80025f8:	4602      	mov	r2, r0
 80025fa:	460b      	mov	r3, r1
 80025fc:	4648      	mov	r0, r9
 80025fe:	4641      	mov	r1, r8
 8002600:	f7fd ffba 	bl	8000578 <__aeabi_dmul>
 8002604:	f84d 0e20 	strt	r0, [sp, #32]
 8002608:	468a      	mov	sl, r1
 800260a:	ec51 0b19 	vmov	r0, r1, d9
 800260e:	462a      	mov	r2, r5
 8002610:	465b      	mov	r3, fp
 8002612:	f7fe f8db 	bl	80007cc <__aeabi_ddiv>
 8002616:	ed9f 0bea 	vldr	d0, [pc, #936]	; 80029c0 <SolveCubic+0x480>
 800261a:	4604      	mov	r4, r0
 800261c:	460e      	mov	r6, r1
 800261e:	4648      	mov	r0, r9
 8002620:	4641      	mov	r1, r8
 8002622:	f84d 4e0c 	strt	r4, [sp, #12]
 8002626:	f84d 6e08 	strt	r6, [sp, #8]
 800262a:	ec53 2b10 	vmov	r2, r3, d0
 800262e:	f84d 2e10 	strt	r2, [sp, #16]
 8002632:	f84d 3e14 	strt	r3, [sp, #20]
 8002636:	f7fd ff9f 	bl	8000578 <__aeabi_dmul>
 800263a:	4622      	mov	r2, r4
 800263c:	4633      	mov	r3, r6
 800263e:	f7fd ff9b 	bl	8000578 <__aeabi_dmul>
 8002642:	4602      	mov	r2, r0
 8002644:	9808      	ldr	r0, [sp, #32]
 8002646:	460b      	mov	r3, r1
 8002648:	4651      	mov	r1, sl
 800264a:	f7fd fddd 	bl	8000208 <__aeabi_dsub>
 800264e:	4606      	mov	r6, r0
 8002650:	460c      	mov	r4, r1
 8002652:	ec51 0b18 	vmov	r0, r1, d8
 8002656:	462a      	mov	r2, r5
 8002658:	465b      	mov	r3, fp
 800265a:	f7fe f8b7 	bl	80007cc <__aeabi_ddiv>
 800265e:	ed9f 0bda 	vldr	d0, [pc, #872]	; 80029c8 <SolveCubic+0x488>
 8002662:	ec53 2b10 	vmov	r2, r3, d0
 8002666:	f7fd ff87 	bl	8000578 <__aeabi_dmul>
 800266a:	4632      	mov	r2, r6
 800266c:	4623      	mov	r3, r4
 800266e:	f7fd fdcd 	bl	800020c <__adddf3>
 8002672:	ed9f 0bd7 	vldr	d0, [pc, #860]	; 80029d0 <SolveCubic+0x490>
 8002676:	ec53 2b10 	vmov	r2, r3, d0
 800267a:	f7fe f8a7 	bl	80007cc <__aeabi_ddiv>
 800267e:	4683      	mov	fp, r0
 8002680:	468a      	mov	sl, r1
 8002682:	465a      	mov	r2, fp
 8002684:	4653      	mov	r3, sl
 8002686:	f7fd ff77 	bl	8000578 <__aeabi_dmul>
 800268a:	f84d 1e00 	strt	r1, [sp]
 800268e:	f84d 0e04 	strt	r0, [sp, #4]
 8002692:	4648      	mov	r0, r9
 8002694:	4641      	mov	r1, r8
 8002696:	464a      	mov	r2, r9
 8002698:	4643      	mov	r3, r8
 800269a:	f84d 9e1c 	strt	r9, [sp, #28]
 800269e:	f84d 8e20 	strt	r8, [sp, #32]
 80026a2:	f7fd ff69 	bl	8000578 <__aeabi_dmul>
 80026a6:	ed9f 0bcc 	vldr	d0, [pc, #816]	; 80029d8 <SolveCubic+0x498>
 80026aa:	4604      	mov	r4, r0
 80026ac:	460d      	mov	r5, r1
 80026ae:	e9dd 1002 	ldrd	r1, r0, [sp, #8]
 80026b2:	ec53 2b10 	vmov	r2, r3, d0
 80026b6:	f84d 2e08 	strt	r2, [sp, #8]
 80026ba:	f84d 3e0c 	strt	r3, [sp, #12]
 80026be:	f7fd ff5b 	bl	8000578 <__aeabi_dmul>
 80026c2:	4602      	mov	r2, r0
 80026c4:	460b      	mov	r3, r1
 80026c6:	4620      	mov	r0, r4
 80026c8:	4629      	mov	r1, r5
 80026ca:	f7fd fd9f 	bl	800020c <__adddf3>
 80026ce:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 80026d2:	f7fe f87b 	bl	80007cc <__aeabi_ddiv>
 80026d6:	4606      	mov	r6, r0
 80026d8:	460c      	mov	r4, r1
 80026da:	4632      	mov	r2, r6
 80026dc:	4623      	mov	r3, r4
 80026de:	ec44 6b18 	vmov	d8, r6, r4
 80026e2:	f7fd ff49 	bl	8000578 <__aeabi_dmul>
 80026e6:	4602      	mov	r2, r0
 80026e8:	460b      	mov	r3, r1
 80026ea:	4630      	mov	r0, r6
 80026ec:	4621      	mov	r1, r4
 80026ee:	f7fd ff43 	bl	8000578 <__aeabi_dmul>
 80026f2:	4602      	mov	r2, r0
 80026f4:	460b      	mov	r3, r1
 80026f6:	e9dd 1000 	ldrd	r1, r0, [sp]
 80026fa:	ec43 2b19 	vmov	d9, r2, r3
 80026fe:	f7fd fd83 	bl	8000208 <__aeabi_dsub>
 8002702:	ed9f 0bb7 	vldr	d0, [pc, #732]	; 80029e0 <SolveCubic+0x4a0>
 8002706:	ec41 0b1a 	vmov	d10, r0, r1
 800270a:	ec59 8b10 	vmov	r8, r9, d0
 800270e:	4642      	mov	r2, r8
 8002710:	464b      	mov	r3, r9
 8002712:	f7fe f9ad 	bl	8000a70 <__aeabi_dcmple>
 8002716:	2800      	cmp	r0, #0
 8002718:	d15c      	bne.n	80027d4 <SolveCubic+0x294>
 800271a:	9906      	ldr	r1, [sp, #24]
 800271c:	2001      	movs	r0, #1
 800271e:	eeb0 0a4a 	vmov.f32	s0, s20
 8002722:	4655      	mov	r5, sl
 8002724:	eef0 0a6a 	vmov.f32	s1, s21
 8002728:	f841 0e00 	strt	r0, [r1]
 800272c:	ea4f 70d9 	mov.w	r0, r9, lsr #31
 8002730:	f360 75df 	bfi	r5, r0, #31, #1
 8002734:	f000 fecc 	bl	80034d0 <sqrt>
 8002738:	ec51 0b10 	vmov	r0, r1, d0
 800273c:	465a      	mov	r2, fp
 800273e:	462b      	mov	r3, r5
 8002740:	f7fd fd64 	bl	800020c <__adddf3>
 8002744:	ed9f 1bb2 	vldr	d1, [pc, #712]	; 8002a10 <SolveCubic+0x4d0>
 8002748:	ec41 0b10 	vmov	d0, r0, r1
 800274c:	f000 fd24 	bl	8003198 <pow>
 8002750:	f84d ae18 	strt	sl, [sp, #24]
 8002754:	ec5a 5b10 	vmov	r5, sl, d0
 8002758:	4630      	mov	r0, r6
 800275a:	4621      	mov	r1, r4
 800275c:	462a      	mov	r2, r5
 800275e:	4653      	mov	r3, sl
 8002760:	f7fe f834 	bl	80007cc <__aeabi_ddiv>
 8002764:	4602      	mov	r2, r0
 8002766:	460b      	mov	r3, r1
 8002768:	4628      	mov	r0, r5
 800276a:	4651      	mov	r1, sl
 800276c:	f7fd fd4e 	bl	800020c <__adddf3>
 8002770:	460d      	mov	r5, r1
 8002772:	9906      	ldr	r1, [sp, #24]
 8002774:	4604      	mov	r4, r0
 8002776:	4658      	mov	r0, fp
 8002778:	4642      	mov	r2, r8
 800277a:	464b      	mov	r3, r9
 800277c:	f7fe f96e 	bl	8000a5c <__aeabi_dcmplt>
 8002780:	a1a5      	add	r1, pc, #660	; (adr r1, 8002a18 <SolveCubic+0x4d8>)
 8002782:	2800      	cmp	r0, #0
 8002784:	4622      	mov	r2, r4
 8002786:	462b      	mov	r3, r5
 8002788:	bf18      	it	ne
 800278a:	3108      	addne	r1, #8
 800278c:	ed91 0b00 	vldr	d0, [r1]
 8002790:	ec51 0b10 	vmov	r0, r1, d0
 8002794:	f7fd fef0 	bl	8000578 <__aeabi_dmul>
 8002798:	4604      	mov	r4, r0
 800279a:	460d      	mov	r5, r1
 800279c:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 80027a0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80027a4:	f7fe f812 	bl	80007cc <__aeabi_ddiv>
 80027a8:	4602      	mov	r2, r0
 80027aa:	460b      	mov	r3, r1
 80027ac:	4620      	mov	r0, r4
 80027ae:	4629      	mov	r1, r5
 80027b0:	f7fd fd2c 	bl	800020c <__adddf3>
 80027b4:	ec41 0b10 	vmov	d0, r0, r1
 80027b8:	9809      	ldr	r0, [sp, #36]	; 0x24
 80027ba:	b082      	sub	sp, #8
 80027bc:	f84d 2e00 	strt	r2, [sp]
 80027c0:	f84d 3e04 	strt	r3, [sp, #4]
 80027c4:	ec53 2b10 	vmov	r2, r3, d0
 80027c8:	f840 2e00 	strt	r2, [r0]
 80027cc:	f840 3e04 	strt	r3, [r0, #4]
 80027d0:	bc0c      	pop	{r2, r3}
 80027d2:	e0ed      	b.n	80029b0 <SolveCubic+0x470>
 80027d4:	9906      	ldr	r1, [sp, #24]
 80027d6:	eeb0 0a49 	vmov.f32	s0, s18
 80027da:	2003      	movs	r0, #3
 80027dc:	eef0 0a69 	vmov.f32	s1, s19
 80027e0:	f841 0e00 	strt	r0, [r1]
 80027e4:	f000 fe74 	bl	80034d0 <sqrt>
 80027e8:	ec53 2b10 	vmov	r2, r3, d0
 80027ec:	4658      	mov	r0, fp
 80027ee:	4651      	mov	r1, sl
 80027f0:	f7fd ffec 	bl	80007cc <__aeabi_ddiv>
 80027f4:	ec41 0b10 	vmov	d0, r0, r1
 80027f8:	f000 fc70 	bl	80030dc <acos>
 80027fc:	eeb0 9a40 	vmov.f32	s18, s0
 8002800:	eeb0 0a48 	vmov.f32	s0, s16
 8002804:	eef0 9a60 	vmov.f32	s19, s1
 8002808:	eef0 0a68 	vmov.f32	s1, s17
 800280c:	f000 fe60 	bl	80034d0 <sqrt>
 8002810:	ed9f 1b75 	vldr	d1, [pc, #468]	; 80029e8 <SolveCubic+0x4a8>
 8002814:	ec51 0b10 	vmov	r0, r1, d0
 8002818:	ec5b 2b11 	vmov	r2, fp, d1
 800281c:	465b      	mov	r3, fp
 800281e:	f84d 2e18 	strt	r2, [sp, #24]
 8002822:	f7fd fea9 	bl	8000578 <__aeabi_dmul>
 8002826:	ed9f 0b72 	vldr	d0, [pc, #456]	; 80029f0 <SolveCubic+0x4b0>
 800282a:	460e      	mov	r6, r1
 800282c:	ec51 9b19 	vmov	r9, r1, d9
 8002830:	4604      	mov	r4, r0
 8002832:	4648      	mov	r0, r9
 8002834:	f84d 1e14 	strt	r1, [sp, #20]
 8002838:	ec55 8b10 	vmov	r8, r5, d0
 800283c:	4642      	mov	r2, r8
 800283e:	462b      	mov	r3, r5
 8002840:	f7fd ffc4 	bl	80007cc <__aeabi_ddiv>
 8002844:	ec41 0b10 	vmov	d0, r0, r1
 8002848:	f000 fbde 	bl	8003008 <cos>
 800284c:	ec53 2b10 	vmov	r2, r3, d0
 8002850:	4620      	mov	r0, r4
 8002852:	4631      	mov	r1, r6
 8002854:	f7fd fe90 	bl	8000578 <__aeabi_dmul>
 8002858:	4604      	mov	r4, r0
 800285a:	460e      	mov	r6, r1
 800285c:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 8002860:	4642      	mov	r2, r8
 8002862:	462b      	mov	r3, r5
 8002864:	f84d 8e10 	strt	r8, [sp, #16]
 8002868:	f7fd ffb0 	bl	80007cc <__aeabi_ddiv>
 800286c:	4602      	mov	r2, r0
 800286e:	460b      	mov	r3, r1
 8002870:	4620      	mov	r0, r4
 8002872:	4631      	mov	r1, r6
 8002874:	f84d 2e20 	strt	r2, [sp, #32]
 8002878:	f84d 3e1c 	strt	r3, [sp, #28]
 800287c:	f7fd fcc4 	bl	8000208 <__aeabi_dsub>
 8002880:	ec41 0b10 	vmov	d0, r0, r1
 8002884:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002886:	b082      	sub	sp, #8
 8002888:	f84d 2e00 	strt	r2, [sp]
 800288c:	f84d 3e04 	strt	r3, [sp, #4]
 8002890:	ec53 2b10 	vmov	r2, r3, d0
 8002894:	f840 2e00 	strt	r2, [r0]
 8002898:	f840 3e04 	strt	r3, [r0, #4]
 800289c:	bc0c      	pop	{r2, r3}
 800289e:	eeb0 0a48 	vmov.f32	s0, s16
 80028a2:	4606      	mov	r6, r0
 80028a4:	eef0 0a68 	vmov.f32	s1, s17
 80028a8:	f000 fe12 	bl	80034d0 <sqrt>
 80028ac:	ed9f 9b52 	vldr	d9, [pc, #328]	; 80029f8 <SolveCubic+0x4b8>
 80028b0:	eeb0 aa40 	vmov.f32	s20, s0
 80028b4:	eef0 aa60 	vmov.f32	s21, s1
 80028b8:	eeb0 0a49 	vmov.f32	s0, s18
 80028bc:	eef0 0a69 	vmov.f32	s1, s19
 80028c0:	f000 f9f6 	bl	8002cb0 <atan>
 80028c4:	9a06      	ldr	r2, [sp, #24]
 80028c6:	ec51 0b1a 	vmov	r0, r1, d10
 80028ca:	465b      	mov	r3, fp
 80028cc:	465c      	mov	r4, fp
 80028ce:	f7fd fe53 	bl	8000578 <__aeabi_dmul>
 80028d2:	ed9f 0b4b 	vldr	d0, [pc, #300]	; 8002a00 <SolveCubic+0x4c0>
 80028d6:	468b      	mov	fp, r1
 80028d8:	9905      	ldr	r1, [sp, #20]
 80028da:	4682      	mov	sl, r0
 80028dc:	4648      	mov	r0, r9
 80028de:	ec53 2b10 	vmov	r2, r3, d0
 80028e2:	f7fd fc93 	bl	800020c <__adddf3>
 80028e6:	4642      	mov	r2, r8
 80028e8:	462b      	mov	r3, r5
 80028ea:	46a8      	mov	r8, r5
 80028ec:	f7fd ff6e 	bl	80007cc <__aeabi_ddiv>
 80028f0:	ec41 0b10 	vmov	d0, r0, r1
 80028f4:	f000 fb88 	bl	8003008 <cos>
 80028f8:	ec53 2b10 	vmov	r2, r3, d0
 80028fc:	4650      	mov	r0, sl
 80028fe:	4659      	mov	r1, fp
 8002900:	f7fd fe3a 	bl	8000578 <__aeabi_dmul>
 8002904:	9d08      	ldr	r5, [sp, #32]
 8002906:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800290a:	462a      	mov	r2, r5
 800290c:	4653      	mov	r3, sl
 800290e:	f7fd fc7b 	bl	8000208 <__aeabi_dsub>
 8002912:	ec41 0b10 	vmov	d0, r0, r1
 8002916:	46b3      	mov	fp, r6
 8002918:	b082      	sub	sp, #8
 800291a:	f84d 0e00 	strt	r0, [sp]
 800291e:	f84d 1e04 	strt	r1, [sp, #4]
 8002922:	ec51 0b10 	vmov	r0, r1, d0
 8002926:	f84b 0e08 	strt	r0, [fp, #8]
 800292a:	f84b 1e0c 	strt	r1, [fp, #12]
 800292e:	bc03      	pop	{r0, r1}
 8002930:	eeb0 0a48 	vmov.f32	s0, s16
 8002934:	eef0 0a68 	vmov.f32	s1, s17
 8002938:	f000 fdca 	bl	80034d0 <sqrt>
 800293c:	eeb0 8a40 	vmov.f32	s16, s0
 8002940:	eeb0 0a49 	vmov.f32	s0, s18
 8002944:	eef0 8a60 	vmov.f32	s17, s1
 8002948:	eef0 0a69 	vmov.f32	s1, s19
 800294c:	f000 f9b0 	bl	8002cb0 <atan>
 8002950:	9a06      	ldr	r2, [sp, #24]
 8002952:	ec51 0b18 	vmov	r0, r1, d8
 8002956:	4623      	mov	r3, r4
 8002958:	f7fd fe0e 	bl	8000578 <__aeabi_dmul>
 800295c:	ed9f 0b2a 	vldr	d0, [pc, #168]	; 8002a08 <SolveCubic+0x4c8>
 8002960:	460c      	mov	r4, r1
 8002962:	9905      	ldr	r1, [sp, #20]
 8002964:	4606      	mov	r6, r0
 8002966:	4648      	mov	r0, r9
 8002968:	ec53 2b10 	vmov	r2, r3, d0
 800296c:	f7fd fc4e 	bl	800020c <__adddf3>
 8002970:	9a04      	ldr	r2, [sp, #16]
 8002972:	4643      	mov	r3, r8
 8002974:	f7fd ff2a 	bl	80007cc <__aeabi_ddiv>
 8002978:	ec41 0b10 	vmov	d0, r0, r1
 800297c:	f000 fb44 	bl	8003008 <cos>
 8002980:	ec53 2b10 	vmov	r2, r3, d0
 8002984:	4630      	mov	r0, r6
 8002986:	4621      	mov	r1, r4
 8002988:	f7fd fdf6 	bl	8000578 <__aeabi_dmul>
 800298c:	462a      	mov	r2, r5
 800298e:	4653      	mov	r3, sl
 8002990:	f7fd fc3a 	bl	8000208 <__aeabi_dsub>
 8002994:	ec41 0b10 	vmov	d0, r0, r1
 8002998:	b082      	sub	sp, #8
 800299a:	f84d 0e00 	strt	r0, [sp]
 800299e:	f84d 1e04 	strt	r1, [sp, #4]
 80029a2:	ec51 0b10 	vmov	r0, r1, d0
 80029a6:	f84b 0e10 	strt	r0, [fp, #16]
 80029aa:	f84b 1e14 	strt	r1, [fp, #20]
 80029ae:	bc03      	pop	{r0, r1}
 80029b0:	b00a      	add	sp, #40	; 0x28
 80029b2:	ecbd 8b06 	vpop	{d8-d10}
 80029b6:	b001      	add	sp, #4
 80029b8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80029bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80029be:	bf00      	nop
 80029c0:	00000000 	.word	0x00000000
 80029c4:	40220000 	.word	0x40220000
 80029c8:	00000000 	.word	0x00000000
 80029cc:	403b0000 	.word	0x403b0000
 80029d0:	00000000 	.word	0x00000000
 80029d4:	404b0000 	.word	0x404b0000
 80029d8:	00000000 	.word	0x00000000
 80029dc:	c0080000 	.word	0xc0080000
	...
 80029ec:	c0000000 	.word	0xc0000000
 80029f0:	00000000 	.word	0x00000000
 80029f4:	40080000 	.word	0x40080000
 80029f8:	00000000 	.word	0x00000000
 80029fc:	3ff00000 	.word	0x3ff00000
 8002a00:	54442d18 	.word	0x54442d18
 8002a04:	401921fb 	.word	0x401921fb
 8002a08:	54442d18 	.word	0x54442d18
 8002a0c:	402921fb 	.word	0x402921fb
 8002a10:	55555555 	.word	0x55555555
 8002a14:	3fd55555 	.word	0x3fd55555
 8002a18:	00000000 	.word	0x00000000
 8002a1c:	bff00000 	.word	0xbff00000
 8002a20:	00000000 	.word	0x00000000
 8002a24:	3ff00000 	.word	0x3ff00000

08002a28 <__io_putchar>:
 8002a28:	b082      	sub	sp, #8
 8002a2a:	f84d 7e00 	strt	r7, [sp]
 8002a2e:	f84d ee04 	strt	lr, [sp, #4]
 8002a32:	466f      	mov	r7, sp
 8002a34:	b082      	sub	sp, #8
 8002a36:	f84d 0e04 	strt	r0, [sp, #4]
 8002a3a:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002a3e:	a901      	add	r1, sp, #4
 8002a40:	2201      	movs	r2, #1
 8002a42:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002a46:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a4a:	f7ff fa08 	bl	8001e5e <HAL_UART_Transmit>
 8002a4e:	9801      	ldr	r0, [sp, #4]
 8002a50:	b002      	add	sp, #8
 8002a52:	bd80      	pop	{r7, pc}

08002a54 <main>:
 8002a54:	b084      	sub	sp, #16
 8002a56:	f84d 4e00 	strt	r4, [sp]
 8002a5a:	f84d 5e04 	strt	r5, [sp, #4]
 8002a5e:	f84d 7e08 	strt	r7, [sp, #8]
 8002a62:	f84d ee0c 	strt	lr, [sp, #12]
 8002a66:	af02      	add	r7, sp, #8
 8002a68:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002a6c:	f643 0000 	movw	r0, #14336	; 0x3800
 8002a70:	220c      	movs	r2, #12
 8002a72:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a76:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002a7a:	f841 0e00 	strt	r0, [r1]
 8002a7e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002a82:	f841 0e04 	strt	r0, [r1, #4]
 8002a86:	2000      	movs	r0, #0
 8002a88:	f841 0e08 	strt	r0, [r1, #8]
 8002a8c:	f841 0e0c 	strt	r0, [r1, #12]
 8002a90:	f841 0e10 	strt	r0, [r1, #16]
 8002a94:	f841 0e24 	strt	r0, [r1, #36]
 8002a98:	f841 0e1c 	strt	r0, [r1, #28]
 8002a9c:	f841 0e20 	strt	r0, [r1, #32]
 8002aa0:	f841 2e14 	strt	r2, [r1, #20]
 8002aa4:	f841 0e18 	strt	r0, [r1, #24]
 8002aa8:	2000      	movs	r0, #0
 8002aaa:	f7ff fa8b 	bl	8001fc4 <BSP_COM_Init>
 8002aae:	f7ff fb00 	bl	80020b2 <initialise_benchmark>
 8002ab2:	f64a 00c0 	movw	r0, #43200	; 0xa8c0
 8002ab6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002aba:	f003 f871 	bl	8005ba0 <printf>
 8002abe:	f64a 1068 	movw	r0, #43368	; 0xa968
 8002ac2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002ac6:	f003 f8cd 	bl	8005c64 <puts>
 8002aca:	f7fe fb59 	bl	8001180 <HAL_Init>
 8002ace:	f7fe fb70 	bl	80011b2 <HAL_GetTick>
 8002ad2:	4604      	mov	r4, r0
 8002ad4:	f7ff faf0 	bl	80020b8 <benchmark>
 8002ad8:	4605      	mov	r5, r0
 8002ada:	f7fe fb6a 	bl	80011b2 <HAL_GetTick>
 8002ade:	1b04      	subs	r4, r0, r4
 8002ae0:	4628      	mov	r0, r5
 8002ae2:	f7ff fae3 	bl	80020ac <verify_benchmark>
 8002ae6:	1c41      	adds	r1, r0, #1
 8002ae8:	d006      	beq.n	8002af8 <main+0xa4>
 8002aea:	2801      	cmp	r0, #1
 8002aec:	d109      	bne.n	8002b02 <main+0xae>
 8002aee:	f64a 00d4 	movw	r0, #43220	; 0xa8d4
 8002af2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002af6:	e008      	b.n	8002b0a <main+0xb6>
 8002af8:	f64a 00f8 	movw	r0, #43256	; 0xa8f8
 8002afc:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b00:	e003      	b.n	8002b0a <main+0xb6>
 8002b02:	f64a 102d 	movw	r0, #43309	; 0xa92d
 8002b06:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b0a:	4621      	mov	r1, r4
 8002b0c:	f003 f848 	bl	8005ba0 <printf>
 8002b10:	2000      	movs	r0, #0
 8002b12:	bdb0      	pop	{r4, r5, r7, pc}

08002b14 <SysTick_Handler>:
 8002b14:	b082      	sub	sp, #8
 8002b16:	f84d 7e00 	strt	r7, [sp]
 8002b1a:	f84d ee04 	strt	lr, [sp, #4]
 8002b1e:	466f      	mov	r7, sp
 8002b20:	f7fe fb3e 	bl	80011a0 <HAL_IncTick>
 8002b24:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002b28:	f7fe bb99 	b.w	800125e <HAL_SYSTICK_IRQHandler>

08002b2c <_read>:
 8002b2c:	b085      	sub	sp, #20
 8002b2e:	f84d 4e00 	strt	r4, [sp]
 8002b32:	f84d 5e04 	strt	r5, [sp, #4]
 8002b36:	f84d 6e08 	strt	r6, [sp, #8]
 8002b3a:	f84d 7e0c 	strt	r7, [sp, #12]
 8002b3e:	f84d ee10 	strt	lr, [sp, #16]
 8002b42:	af03      	add	r7, sp, #12
 8002b44:	b081      	sub	sp, #4
 8002b46:	f84d be00 	strt	fp, [sp]
 8002b4a:	4614      	mov	r4, r2
 8002b4c:	460d      	mov	r5, r1
 8002b4e:	2c01      	cmp	r4, #1
 8002b50:	db08      	blt.n	8002b64 <_read+0x38>
 8002b52:	4626      	mov	r6, r4
 8002b54:	f3af 8000 	nop.w
 8002b58:	f805 0e00 	strbt	r0, [r5]
 8002b5c:	bfe8      	it	al
 8002b5e:	3501      	addal	r5, #1
 8002b60:	3e01      	subs	r6, #1
 8002b62:	d1f7      	bne.n	8002b54 <_read+0x28>
 8002b64:	4620      	mov	r0, r4
 8002b66:	f85d bb04 	ldr.w	fp, [sp], #4
 8002b6a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b6c <_write>:
 8002b6c:	b085      	sub	sp, #20
 8002b6e:	f84d 4e00 	strt	r4, [sp]
 8002b72:	f84d 5e04 	strt	r5, [sp, #4]
 8002b76:	f84d 6e08 	strt	r6, [sp, #8]
 8002b7a:	f84d 7e0c 	strt	r7, [sp, #12]
 8002b7e:	f84d ee10 	strt	lr, [sp, #16]
 8002b82:	af03      	add	r7, sp, #12
 8002b84:	b081      	sub	sp, #4
 8002b86:	f84d be00 	strt	fp, [sp]
 8002b8a:	4614      	mov	r4, r2
 8002b8c:	460d      	mov	r5, r1
 8002b8e:	2c01      	cmp	r4, #1
 8002b90:	db06      	blt.n	8002ba0 <_write+0x34>
 8002b92:	4626      	mov	r6, r4
 8002b94:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002b98:	f7ff ff46 	bl	8002a28 <__io_putchar>
 8002b9c:	3e01      	subs	r6, #1
 8002b9e:	d1f9      	bne.n	8002b94 <_write+0x28>
 8002ba0:	4620      	mov	r0, r4
 8002ba2:	f85d bb04 	ldr.w	fp, [sp], #4
 8002ba6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002ba8 <_sbrk>:
 8002ba8:	f640 2268 	movw	r2, #2664	; 0xa68
 8002bac:	4601      	mov	r1, r0
 8002bae:	466b      	mov	r3, sp
 8002bb0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bb4:	6810      	ldr	r0, [r2, #0]
 8002bb6:	2800      	cmp	r0, #0
 8002bb8:	bf02      	ittt	eq
 8002bba:	f640 3010 	movweq	r0, #2832	; 0xb10
 8002bbe:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002bc2:	f842 0e00 	strteq	r0, [r2]
 8002bc6:	4401      	add	r1, r0
 8002bc8:	4299      	cmp	r1, r3
 8002bca:	bf9c      	itt	ls
 8002bcc:	f842 1e00 	strtls	r1, [r2]
 8002bd0:	4770      	bxls	lr
 8002bd2:	b082      	sub	sp, #8
 8002bd4:	f84d 7e00 	strt	r7, [sp]
 8002bd8:	f84d ee04 	strt	lr, [sp, #4]
 8002bdc:	466f      	mov	r7, sp
 8002bde:	f002 ff6b 	bl	8005ab8 <__errno>
 8002be2:	210c      	movs	r1, #12
 8002be4:	f840 1e00 	strt	r1, [r0]
 8002be8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002bec:	bd80      	pop	{r7, pc}

08002bee <_close>:
 8002bee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002bf2:	4770      	bx	lr

08002bf4 <_fstat>:
 8002bf4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002bf8:	f841 0e04 	strt	r0, [r1, #4]
 8002bfc:	2000      	movs	r0, #0
 8002bfe:	4770      	bx	lr

08002c00 <_isatty>:
 8002c00:	2001      	movs	r0, #1
 8002c02:	4770      	bx	lr

08002c04 <_lseek>:
 8002c04:	2000      	movs	r0, #0
 8002c06:	4770      	bx	lr

08002c08 <SystemInit>:
 8002c08:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002c0c:	f04f 0c00 	mov.w	ip, #0
 8002c10:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002c14:	6801      	ldr	r1, [r0, #0]
 8002c16:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002c1a:	6001      	str	r1, [r0, #0]
 8002c1c:	f241 0100 	movw	r1, #4096	; 0x1000
 8002c20:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002c24:	680a      	ldr	r2, [r1, #0]
 8002c26:	f042 0201 	orr.w	r2, r2, #1
 8002c2a:	600a      	str	r2, [r1, #0]
 8002c2c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002c30:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002c34:	680b      	ldr	r3, [r1, #0]
 8002c36:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002c3a:	401a      	ands	r2, r3
 8002c3c:	600a      	str	r2, [r1, #0]
 8002c3e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002c42:	60ca      	str	r2, [r1, #12]
 8002c44:	680a      	ldr	r2, [r1, #0]
 8002c46:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002c4a:	600a      	str	r2, [r1, #0]
 8002c4c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002c50:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002c54:	f840 1c80 	str.w	r1, [r0, #-128]
 8002c58:	4770      	bx	lr
	...

08002c5c <Reset_Handler>:
 8002c5c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002c94 <LoopForever+0x2>
 8002c60:	2100      	movs	r1, #0
 8002c62:	e003      	b.n	8002c6c <LoopCopyDataInit>

08002c64 <CopyDataInit>:
 8002c64:	4b0c      	ldr	r3, [pc, #48]	; (8002c98 <LoopForever+0x6>)
 8002c66:	585b      	ldr	r3, [r3, r1]
 8002c68:	5043      	str	r3, [r0, r1]
 8002c6a:	3104      	adds	r1, #4

08002c6c <LoopCopyDataInit>:
 8002c6c:	480b      	ldr	r0, [pc, #44]	; (8002c9c <LoopForever+0xa>)
 8002c6e:	4b0c      	ldr	r3, [pc, #48]	; (8002ca0 <LoopForever+0xe>)
 8002c70:	1842      	adds	r2, r0, r1
 8002c72:	429a      	cmp	r2, r3
 8002c74:	d3f6      	bcc.n	8002c64 <CopyDataInit>
 8002c76:	4a0b      	ldr	r2, [pc, #44]	; (8002ca4 <LoopForever+0x12>)
 8002c78:	e002      	b.n	8002c80 <LoopFillZerobss>

08002c7a <FillZerobss>:
 8002c7a:	2300      	movs	r3, #0
 8002c7c:	f842 3b04 	str.w	r3, [r2], #4

08002c80 <LoopFillZerobss>:
 8002c80:	4b09      	ldr	r3, [pc, #36]	; (8002ca8 <LoopForever+0x16>)
 8002c82:	429a      	cmp	r2, r3
 8002c84:	d3f9      	bcc.n	8002c7a <FillZerobss>
 8002c86:	f7ff ffbf 	bl	8002c08 <SystemInit>
 8002c8a:	f002 ff1b 	bl	8005ac4 <__libc_init_array>
 8002c8e:	f7ff fee1 	bl	8002a54 <main>

08002c92 <LoopForever>:
 8002c92:	e7fe      	b.n	8002c92 <LoopForever>
 8002c94:	20018000 	.word	0x20018000
 8002c98:	0800ae58 	.word	0x0800ae58
 8002c9c:	20000000 	.word	0x20000000
 8002ca0:	200009c8 	.word	0x200009c8
 8002ca4:	200009c8 	.word	0x200009c8
 8002ca8:	20000b10 	.word	0x20000b10

08002cac <ADC1_2_IRQHandler>:
 8002cac:	e7fe      	b.n	8002cac <ADC1_2_IRQHandler>
	...

08002cb0 <atan>:
 8002cb0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002cb4:	ec55 4b10 	vmov	r4, r5, d0
 8002cb8:	4bc9      	ldr	r3, [pc, #804]	; (8002fe0 <atan+0x330>)
 8002cba:	f025 4600 	bic.w	r6, r5, #2147483648	; 0x80000000
 8002cbe:	429e      	cmp	r6, r3
 8002cc0:	46aa      	mov	sl, r5
 8002cc2:	dd10      	ble.n	8002ce6 <atan+0x36>
 8002cc4:	4bc7      	ldr	r3, [pc, #796]	; (8002fe4 <atan+0x334>)
 8002cc6:	429e      	cmp	r6, r3
 8002cc8:	f300 80b5 	bgt.w	8002e36 <atan+0x186>
 8002ccc:	f000 80b0 	beq.w	8002e30 <atan+0x180>
 8002cd0:	f1ba 0f00 	cmp.w	sl, #0
 8002cd4:	f340 80f9 	ble.w	8002eca <atan+0x21a>
 8002cd8:	a1a5      	add	r1, pc, #660	; (adr r1, 8002f70 <atan+0x2c0>)
 8002cda:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002cde:	ec41 0b10 	vmov	d0, r0, r1
 8002ce2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ce6:	4bc0      	ldr	r3, [pc, #768]	; (8002fe8 <atan+0x338>)
 8002ce8:	429e      	cmp	r6, r3
 8002cea:	f300 80c3 	bgt.w	8002e74 <atan+0x1c4>
 8002cee:	f1a3 73de 	sub.w	r3, r3, #29097984	; 0x1bc0000
 8002cf2:	429e      	cmp	r6, r3
 8002cf4:	f340 80a9 	ble.w	8002e4a <atan+0x19a>
 8002cf8:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
 8002cfc:	4622      	mov	r2, r4
 8002cfe:	462b      	mov	r3, r5
 8002d00:	4620      	mov	r0, r4
 8002d02:	4629      	mov	r1, r5
 8002d04:	f7fd fc38 	bl	8000578 <__aeabi_dmul>
 8002d08:	4602      	mov	r2, r0
 8002d0a:	460b      	mov	r3, r1
 8002d0c:	4680      	mov	r8, r0
 8002d0e:	4689      	mov	r9, r1
 8002d10:	f7fd fc32 	bl	8000578 <__aeabi_dmul>
 8002d14:	a398      	add	r3, pc, #608	; (adr r3, 8002f78 <atan+0x2c8>)
 8002d16:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d1a:	4606      	mov	r6, r0
 8002d1c:	460f      	mov	r7, r1
 8002d1e:	f7fd fc2b 	bl	8000578 <__aeabi_dmul>
 8002d22:	a397      	add	r3, pc, #604	; (adr r3, 8002f80 <atan+0x2d0>)
 8002d24:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d28:	f7fd fa70 	bl	800020c <__adddf3>
 8002d2c:	4632      	mov	r2, r6
 8002d2e:	463b      	mov	r3, r7
 8002d30:	f7fd fc22 	bl	8000578 <__aeabi_dmul>
 8002d34:	a394      	add	r3, pc, #592	; (adr r3, 8002f88 <atan+0x2d8>)
 8002d36:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d3a:	f7fd fa67 	bl	800020c <__adddf3>
 8002d3e:	4632      	mov	r2, r6
 8002d40:	463b      	mov	r3, r7
 8002d42:	f7fd fc19 	bl	8000578 <__aeabi_dmul>
 8002d46:	a392      	add	r3, pc, #584	; (adr r3, 8002f90 <atan+0x2e0>)
 8002d48:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d4c:	f7fd fa5e 	bl	800020c <__adddf3>
 8002d50:	4632      	mov	r2, r6
 8002d52:	463b      	mov	r3, r7
 8002d54:	f7fd fc10 	bl	8000578 <__aeabi_dmul>
 8002d58:	a38f      	add	r3, pc, #572	; (adr r3, 8002f98 <atan+0x2e8>)
 8002d5a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d5e:	f7fd fa55 	bl	800020c <__adddf3>
 8002d62:	4632      	mov	r2, r6
 8002d64:	463b      	mov	r3, r7
 8002d66:	f7fd fc07 	bl	8000578 <__aeabi_dmul>
 8002d6a:	a38d      	add	r3, pc, #564	; (adr r3, 8002fa0 <atan+0x2f0>)
 8002d6c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d70:	f7fd fa4c 	bl	800020c <__adddf3>
 8002d74:	4642      	mov	r2, r8
 8002d76:	464b      	mov	r3, r9
 8002d78:	f7fd fbfe 	bl	8000578 <__aeabi_dmul>
 8002d7c:	a38a      	add	r3, pc, #552	; (adr r3, 8002fa8 <atan+0x2f8>)
 8002d7e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d82:	4680      	mov	r8, r0
 8002d84:	4689      	mov	r9, r1
 8002d86:	4630      	mov	r0, r6
 8002d88:	4639      	mov	r1, r7
 8002d8a:	f7fd fbf5 	bl	8000578 <__aeabi_dmul>
 8002d8e:	a388      	add	r3, pc, #544	; (adr r3, 8002fb0 <atan+0x300>)
 8002d90:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002d94:	f7fd fa38 	bl	8000208 <__aeabi_dsub>
 8002d98:	4632      	mov	r2, r6
 8002d9a:	463b      	mov	r3, r7
 8002d9c:	f7fd fbec 	bl	8000578 <__aeabi_dmul>
 8002da0:	a385      	add	r3, pc, #532	; (adr r3, 8002fb8 <atan+0x308>)
 8002da2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002da6:	f7fd fa2f 	bl	8000208 <__aeabi_dsub>
 8002daa:	4632      	mov	r2, r6
 8002dac:	463b      	mov	r3, r7
 8002dae:	f7fd fbe3 	bl	8000578 <__aeabi_dmul>
 8002db2:	a383      	add	r3, pc, #524	; (adr r3, 8002fc0 <atan+0x310>)
 8002db4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002db8:	f7fd fa26 	bl	8000208 <__aeabi_dsub>
 8002dbc:	4632      	mov	r2, r6
 8002dbe:	463b      	mov	r3, r7
 8002dc0:	f7fd fbda 	bl	8000578 <__aeabi_dmul>
 8002dc4:	a380      	add	r3, pc, #512	; (adr r3, 8002fc8 <atan+0x318>)
 8002dc6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002dca:	f7fd fa1d 	bl	8000208 <__aeabi_dsub>
 8002dce:	4632      	mov	r2, r6
 8002dd0:	463b      	mov	r3, r7
 8002dd2:	f7fd fbd1 	bl	8000578 <__aeabi_dmul>
 8002dd6:	4602      	mov	r2, r0
 8002dd8:	460b      	mov	r3, r1
 8002dda:	4640      	mov	r0, r8
 8002ddc:	4649      	mov	r1, r9
 8002dde:	f7fd fa15 	bl	800020c <__adddf3>
 8002de2:	4622      	mov	r2, r4
 8002de4:	462b      	mov	r3, r5
 8002de6:	f7fd fbc7 	bl	8000578 <__aeabi_dmul>
 8002dea:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8002dee:	4602      	mov	r2, r0
 8002df0:	460b      	mov	r3, r1
 8002df2:	d06e      	beq.n	8002ed2 <atan+0x222>
 8002df4:	4b7d      	ldr	r3, [pc, #500]	; (8002fec <atan+0x33c>)
 8002df6:	4e7e      	ldr	r6, [pc, #504]	; (8002ff0 <atan+0x340>)
 8002df8:	ea4f 0bcb 	mov.w	fp, fp, lsl #3
 8002dfc:	445b      	add	r3, fp
 8002dfe:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002e02:	f7fd fa01 	bl	8000208 <__aeabi_dsub>
 8002e06:	4622      	mov	r2, r4
 8002e08:	462b      	mov	r3, r5
 8002e0a:	f7fd f9fd 	bl	8000208 <__aeabi_dsub>
 8002e0e:	44b3      	add	fp, r6
 8002e10:	4602      	mov	r2, r0
 8002e12:	460b      	mov	r3, r1
 8002e14:	e9db 0100 	ldrd	r0, r1, [fp]
 8002e18:	f7fd f9f6 	bl	8000208 <__aeabi_dsub>
 8002e1c:	f1ba 0f00 	cmp.w	sl, #0
 8002e20:	da0f      	bge.n	8002e42 <atan+0x192>
 8002e22:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8002e26:	4619      	mov	r1, r3
 8002e28:	ec41 0b10 	vmov	d0, r0, r1
 8002e2c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e30:	2c00      	cmp	r4, #0
 8002e32:	f43f af4d 	beq.w	8002cd0 <atan+0x20>
 8002e36:	4622      	mov	r2, r4
 8002e38:	462b      	mov	r3, r5
 8002e3a:	4620      	mov	r0, r4
 8002e3c:	4629      	mov	r1, r5
 8002e3e:	f7fd f9e5 	bl	800020c <__adddf3>
 8002e42:	ec41 0b10 	vmov	d0, r0, r1
 8002e46:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e4a:	a361      	add	r3, pc, #388	; (adr r3, 8002fd0 <atan+0x320>)
 8002e4c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002e50:	ee10 0a10 	vmov	r0, s0
 8002e54:	4629      	mov	r1, r5
 8002e56:	f7fd f9d9 	bl	800020c <__adddf3>
 8002e5a:	2200      	movs	r2, #0
 8002e5c:	4b65      	ldr	r3, [pc, #404]	; (8002ff4 <atan+0x344>)
 8002e5e:	f7fd fe1b 	bl	8000a98 <__aeabi_dcmpgt>
 8002e62:	2800      	cmp	r0, #0
 8002e64:	f43f af48 	beq.w	8002cf8 <atan+0x48>
 8002e68:	4620      	mov	r0, r4
 8002e6a:	4629      	mov	r1, r5
 8002e6c:	ec41 0b10 	vmov	d0, r0, r1
 8002e70:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e74:	f000 f928 	bl	80030c8 <fabs>
 8002e78:	4b5f      	ldr	r3, [pc, #380]	; (8002ff8 <atan+0x348>)
 8002e7a:	429e      	cmp	r6, r3
 8002e7c:	ec55 4b10 	vmov	r4, r5, d0
 8002e80:	dc2f      	bgt.n	8002ee2 <atan+0x232>
 8002e82:	f5a3 2350 	sub.w	r3, r3, #851968	; 0xd0000
 8002e86:	429e      	cmp	r6, r3
 8002e88:	dc58      	bgt.n	8002f3c <atan+0x28c>
 8002e8a:	ee10 2a10 	vmov	r2, s0
 8002e8e:	ee10 0a10 	vmov	r0, s0
 8002e92:	462b      	mov	r3, r5
 8002e94:	4629      	mov	r1, r5
 8002e96:	f7fd f9b9 	bl	800020c <__adddf3>
 8002e9a:	2200      	movs	r2, #0
 8002e9c:	4b55      	ldr	r3, [pc, #340]	; (8002ff4 <atan+0x344>)
 8002e9e:	f7fd f9b3 	bl	8000208 <__aeabi_dsub>
 8002ea2:	2200      	movs	r2, #0
 8002ea4:	4606      	mov	r6, r0
 8002ea6:	460f      	mov	r7, r1
 8002ea8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8002eac:	4620      	mov	r0, r4
 8002eae:	4629      	mov	r1, r5
 8002eb0:	f7fd f9ac 	bl	800020c <__adddf3>
 8002eb4:	4602      	mov	r2, r0
 8002eb6:	460b      	mov	r3, r1
 8002eb8:	4630      	mov	r0, r6
 8002eba:	4639      	mov	r1, r7
 8002ebc:	f7fd fc86 	bl	80007cc <__aeabi_ddiv>
 8002ec0:	f04f 0b00 	mov.w	fp, #0
 8002ec4:	4604      	mov	r4, r0
 8002ec6:	460d      	mov	r5, r1
 8002ec8:	e718      	b.n	8002cfc <atan+0x4c>
 8002eca:	a143      	add	r1, pc, #268	; (adr r1, 8002fd8 <atan+0x328>)
 8002ecc:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002ed0:	e7b7      	b.n	8002e42 <atan+0x192>
 8002ed2:	4620      	mov	r0, r4
 8002ed4:	4629      	mov	r1, r5
 8002ed6:	f7fd f997 	bl	8000208 <__aeabi_dsub>
 8002eda:	ec41 0b10 	vmov	d0, r0, r1
 8002ede:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ee2:	4b46      	ldr	r3, [pc, #280]	; (8002ffc <atan+0x34c>)
 8002ee4:	429e      	cmp	r6, r3
 8002ee6:	dc1d      	bgt.n	8002f24 <atan+0x274>
 8002ee8:	ee10 0a10 	vmov	r0, s0
 8002eec:	2200      	movs	r2, #0
 8002eee:	4b44      	ldr	r3, [pc, #272]	; (8003000 <atan+0x350>)
 8002ef0:	4629      	mov	r1, r5
 8002ef2:	f7fd f989 	bl	8000208 <__aeabi_dsub>
 8002ef6:	2200      	movs	r2, #0
 8002ef8:	4606      	mov	r6, r0
 8002efa:	460f      	mov	r7, r1
 8002efc:	4b40      	ldr	r3, [pc, #256]	; (8003000 <atan+0x350>)
 8002efe:	4620      	mov	r0, r4
 8002f00:	4629      	mov	r1, r5
 8002f02:	f7fd fb39 	bl	8000578 <__aeabi_dmul>
 8002f06:	2200      	movs	r2, #0
 8002f08:	4b3a      	ldr	r3, [pc, #232]	; (8002ff4 <atan+0x344>)
 8002f0a:	f7fd f97f 	bl	800020c <__adddf3>
 8002f0e:	4602      	mov	r2, r0
 8002f10:	460b      	mov	r3, r1
 8002f12:	4630      	mov	r0, r6
 8002f14:	4639      	mov	r1, r7
 8002f16:	f7fd fc59 	bl	80007cc <__aeabi_ddiv>
 8002f1a:	f04f 0b02 	mov.w	fp, #2
 8002f1e:	4604      	mov	r4, r0
 8002f20:	460d      	mov	r5, r1
 8002f22:	e6eb      	b.n	8002cfc <atan+0x4c>
 8002f24:	462b      	mov	r3, r5
 8002f26:	ee10 2a10 	vmov	r2, s0
 8002f2a:	2000      	movs	r0, #0
 8002f2c:	4935      	ldr	r1, [pc, #212]	; (8003004 <atan+0x354>)
 8002f2e:	f7fd fc4d 	bl	80007cc <__aeabi_ddiv>
 8002f32:	f04f 0b03 	mov.w	fp, #3
 8002f36:	4604      	mov	r4, r0
 8002f38:	460d      	mov	r5, r1
 8002f3a:	e6df      	b.n	8002cfc <atan+0x4c>
 8002f3c:	ee10 0a10 	vmov	r0, s0
 8002f40:	2200      	movs	r2, #0
 8002f42:	4b2c      	ldr	r3, [pc, #176]	; (8002ff4 <atan+0x344>)
 8002f44:	4629      	mov	r1, r5
 8002f46:	f7fd f95f 	bl	8000208 <__aeabi_dsub>
 8002f4a:	2200      	movs	r2, #0
 8002f4c:	4606      	mov	r6, r0
 8002f4e:	460f      	mov	r7, r1
 8002f50:	4b28      	ldr	r3, [pc, #160]	; (8002ff4 <atan+0x344>)
 8002f52:	4620      	mov	r0, r4
 8002f54:	4629      	mov	r1, r5
 8002f56:	f7fd f959 	bl	800020c <__adddf3>
 8002f5a:	4602      	mov	r2, r0
 8002f5c:	460b      	mov	r3, r1
 8002f5e:	4630      	mov	r0, r6
 8002f60:	4639      	mov	r1, r7
 8002f62:	f7fd fc33 	bl	80007cc <__aeabi_ddiv>
 8002f66:	f04f 0b01 	mov.w	fp, #1
 8002f6a:	4604      	mov	r4, r0
 8002f6c:	460d      	mov	r5, r1
 8002f6e:	e6c5      	b.n	8002cfc <atan+0x4c>
 8002f70:	54442d18 	.word	0x54442d18
 8002f74:	3ff921fb 	.word	0x3ff921fb
 8002f78:	e322da11 	.word	0xe322da11
 8002f7c:	3f90ad3a 	.word	0x3f90ad3a
 8002f80:	24760deb 	.word	0x24760deb
 8002f84:	3fa97b4b 	.word	0x3fa97b4b
 8002f88:	a0d03d51 	.word	0xa0d03d51
 8002f8c:	3fb10d66 	.word	0x3fb10d66
 8002f90:	c54c206e 	.word	0xc54c206e
 8002f94:	3fb745cd 	.word	0x3fb745cd
 8002f98:	920083ff 	.word	0x920083ff
 8002f9c:	3fc24924 	.word	0x3fc24924
 8002fa0:	5555550d 	.word	0x5555550d
 8002fa4:	3fd55555 	.word	0x3fd55555
 8002fa8:	2c6a6c2f 	.word	0x2c6a6c2f
 8002fac:	bfa2b444 	.word	0xbfa2b444
 8002fb0:	52defd9a 	.word	0x52defd9a
 8002fb4:	3fadde2d 	.word	0x3fadde2d
 8002fb8:	af749a6d 	.word	0xaf749a6d
 8002fbc:	3fb3b0f2 	.word	0x3fb3b0f2
 8002fc0:	fe231671 	.word	0xfe231671
 8002fc4:	3fbc71c6 	.word	0x3fbc71c6
 8002fc8:	9998ebc4 	.word	0x9998ebc4
 8002fcc:	3fc99999 	.word	0x3fc99999
 8002fd0:	8800759c 	.word	0x8800759c
 8002fd4:	7e37e43c 	.word	0x7e37e43c
 8002fd8:	54442d18 	.word	0x54442d18
 8002fdc:	bff921fb 	.word	0xbff921fb
 8002fe0:	440fffff 	.word	0x440fffff
 8002fe4:	7ff00000 	.word	0x7ff00000
 8002fe8:	3fdbffff 	.word	0x3fdbffff
 8002fec:	0800a990 	.word	0x0800a990
 8002ff0:	0800a970 	.word	0x0800a970
 8002ff4:	3ff00000 	.word	0x3ff00000
 8002ff8:	3ff2ffff 	.word	0x3ff2ffff
 8002ffc:	40037fff 	.word	0x40037fff
 8003000:	3ff80000 	.word	0x3ff80000
 8003004:	bff00000 	.word	0xbff00000

08003008 <cos>:
 8003008:	b500      	push	{lr}
 800300a:	ec51 0b10 	vmov	r0, r1, d0
 800300e:	4a2c      	ldr	r2, [pc, #176]	; (80030c0 <cos+0xb8>)
 8003010:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8003014:	4293      	cmp	r3, r2
 8003016:	b085      	sub	sp, #20
 8003018:	dd20      	ble.n	800305c <cos+0x54>
 800301a:	4a2a      	ldr	r2, [pc, #168]	; (80030c4 <cos+0xbc>)
 800301c:	4293      	cmp	r3, r2
 800301e:	dd09      	ble.n	8003034 <cos+0x2c>
 8003020:	ee10 2a10 	vmov	r2, s0
 8003024:	460b      	mov	r3, r1
 8003026:	f7fd f8ef 	bl	8000208 <__aeabi_dsub>
 800302a:	ec41 0b10 	vmov	d0, r0, r1
 800302e:	b005      	add	sp, #20
 8003030:	f85d fb04 	ldr.w	pc, [sp], #4
 8003034:	4668      	mov	r0, sp
 8003036:	f001 fa6f 	bl	8004518 <__ieee754_rem_pio2>
 800303a:	f000 0003 	and.w	r0, r0, #3
 800303e:	2801      	cmp	r0, #1
 8003040:	d017      	beq.n	8003072 <cos+0x6a>
 8003042:	2802      	cmp	r0, #2
 8003044:	d02f      	beq.n	80030a6 <cos+0x9e>
 8003046:	b328      	cbz	r0, 8003094 <cos+0x8c>
 8003048:	2001      	movs	r0, #1
 800304a:	ed9d 1b02 	vldr	d1, [sp, #8]
 800304e:	ed9d 0b00 	vldr	d0, [sp]
 8003052:	f002 faa5 	bl	80055a0 <__kernel_sin>
 8003056:	ec51 0b10 	vmov	r0, r1, d0
 800305a:	e7e6      	b.n	800302a <cos+0x22>
 800305c:	ed9f 1b16 	vldr	d1, [pc, #88]	; 80030b8 <cos+0xb0>
 8003060:	f001 fd4e 	bl	8004b00 <__kernel_cos>
 8003064:	ec51 0b10 	vmov	r0, r1, d0
 8003068:	ec41 0b10 	vmov	d0, r0, r1
 800306c:	b005      	add	sp, #20
 800306e:	f85d fb04 	ldr.w	pc, [sp], #4
 8003072:	ed9d 1b02 	vldr	d1, [sp, #8]
 8003076:	ed9d 0b00 	vldr	d0, [sp]
 800307a:	f002 fa91 	bl	80055a0 <__kernel_sin>
 800307e:	ec53 2b10 	vmov	r2, r3, d0
 8003082:	ee10 0a10 	vmov	r0, s0
 8003086:	f103 4100 	add.w	r1, r3, #2147483648	; 0x80000000
 800308a:	ec41 0b10 	vmov	d0, r0, r1
 800308e:	b005      	add	sp, #20
 8003090:	f85d fb04 	ldr.w	pc, [sp], #4
 8003094:	ed9d 1b02 	vldr	d1, [sp, #8]
 8003098:	ed9d 0b00 	vldr	d0, [sp]
 800309c:	f001 fd30 	bl	8004b00 <__kernel_cos>
 80030a0:	ec51 0b10 	vmov	r0, r1, d0
 80030a4:	e7c1      	b.n	800302a <cos+0x22>
 80030a6:	ed9d 1b02 	vldr	d1, [sp, #8]
 80030aa:	ed9d 0b00 	vldr	d0, [sp]
 80030ae:	f001 fd27 	bl	8004b00 <__kernel_cos>
 80030b2:	e7e4      	b.n	800307e <cos+0x76>
 80030b4:	f3af 8000 	nop.w
	...
 80030c0:	3fe921fb 	.word	0x3fe921fb
 80030c4:	7fefffff 	.word	0x7fefffff

080030c8 <fabs>:
 80030c8:	ec51 0b10 	vmov	r0, r1, d0
 80030cc:	ee10 2a10 	vmov	r2, s0
 80030d0:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 80030d4:	ec43 2b10 	vmov	d0, r2, r3
 80030d8:	4770      	bx	lr
 80030da:	bf00      	nop

080030dc <acos>:
 80030dc:	b530      	push	{r4, r5, lr}
 80030de:	ed2d 8b04 	vpush	{d8-d9}
 80030e2:	eeb0 8a40 	vmov.f32	s16, s0
 80030e6:	eef0 8a60 	vmov.f32	s17, s1
 80030ea:	4c26      	ldr	r4, [pc, #152]	; (8003184 <acos+0xa8>)
 80030ec:	b08b      	sub	sp, #44	; 0x2c
 80030ee:	f000 fa4b 	bl	8003588 <__ieee754_acos>
 80030f2:	f994 3000 	ldrsb.w	r3, [r4]
 80030f6:	eeb0 9a40 	vmov.f32	s18, s0
 80030fa:	eef0 9a60 	vmov.f32	s19, s1
 80030fe:	3301      	adds	r3, #1
 8003100:	d02e      	beq.n	8003160 <acos+0x84>
 8003102:	ec53 2b18 	vmov	r2, r3, d8
 8003106:	ec51 0b18 	vmov	r0, r1, d8
 800310a:	f7fd fccf 	bl	8000aac <__aeabi_dcmpun>
 800310e:	4605      	mov	r5, r0
 8003110:	bb30      	cbnz	r0, 8003160 <acos+0x84>
 8003112:	eeb0 0a48 	vmov.f32	s0, s16
 8003116:	eef0 0a68 	vmov.f32	s1, s17
 800311a:	f7ff ffd5 	bl	80030c8 <fabs>
 800311e:	2200      	movs	r2, #0
 8003120:	4b19      	ldr	r3, [pc, #100]	; (8003188 <acos+0xac>)
 8003122:	ec51 0b10 	vmov	r0, r1, d0
 8003126:	f7fd fcb7 	bl	8000a98 <__aeabi_dcmpgt>
 800312a:	b1c8      	cbz	r0, 8003160 <acos+0x84>
 800312c:	4b17      	ldr	r3, [pc, #92]	; (800318c <acos+0xb0>)
 800312e:	4818      	ldr	r0, [pc, #96]	; (8003190 <acos+0xb4>)
 8003130:	9508      	str	r5, [sp, #32]
 8003132:	2201      	movs	r2, #1
 8003134:	e9cd 2300 	strd	r2, r3, [sp]
 8003138:	ed8d 8b04 	vstr	d8, [sp, #16]
 800313c:	ed8d 8b02 	vstr	d8, [sp, #8]
 8003140:	f002 fb8e 	bl	8005860 <nan>
 8003144:	f994 3000 	ldrsb.w	r3, [r4]
 8003148:	2b02      	cmp	r3, #2
 800314a:	ed8d 0b06 	vstr	d0, [sp, #24]
 800314e:	d00f      	beq.n	8003170 <acos+0x94>
 8003150:	4668      	mov	r0, sp
 8003152:	f002 fb81 	bl	8005858 <matherr>
 8003156:	b158      	cbz	r0, 8003170 <acos+0x94>
 8003158:	9b08      	ldr	r3, [sp, #32]
 800315a:	b973      	cbnz	r3, 800317a <acos+0x9e>
 800315c:	ed9d 9b06 	vldr	d9, [sp, #24]
 8003160:	eeb0 0a49 	vmov.f32	s0, s18
 8003164:	eef0 0a69 	vmov.f32	s1, s19
 8003168:	b00b      	add	sp, #44	; 0x2c
 800316a:	ecbd 8b04 	vpop	{d8-d9}
 800316e:	bd30      	pop	{r4, r5, pc}
 8003170:	f002 fca2 	bl	8005ab8 <__errno>
 8003174:	2321      	movs	r3, #33	; 0x21
 8003176:	6003      	str	r3, [r0, #0]
 8003178:	e7ee      	b.n	8003158 <acos+0x7c>
 800317a:	f002 fc9d 	bl	8005ab8 <__errno>
 800317e:	9b08      	ldr	r3, [sp, #32]
 8003180:	6003      	str	r3, [r0, #0]
 8003182:	e7eb      	b.n	800315c <acos+0x80>
 8003184:	20000018 	.word	0x20000018
 8003188:	3ff00000 	.word	0x3ff00000
 800318c:	0800a9b0 	.word	0x0800a9b0
 8003190:	0800abec 	.word	0x0800abec
 8003194:	00000000 	.word	0x00000000

08003198 <pow>:
 8003198:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800319c:	ed2d 8b02 	vpush	{d8}
 80031a0:	f8df a324 	ldr.w	sl, [pc, #804]	; 80034c8 <pow+0x330>
 80031a4:	b08b      	sub	sp, #44	; 0x2c
 80031a6:	ec57 6b10 	vmov	r6, r7, d0
 80031aa:	ec55 4b11 	vmov	r4, r5, d1
 80031ae:	f000 fc57 	bl	8003a60 <__ieee754_pow>
 80031b2:	f99a 8000 	ldrsb.w	r8, [sl]
 80031b6:	eeb0 8a40 	vmov.f32	s16, s0
 80031ba:	eef0 8a60 	vmov.f32	s17, s1
 80031be:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 80031c2:	d033      	beq.n	800322c <pow+0x94>
 80031c4:	4622      	mov	r2, r4
 80031c6:	462b      	mov	r3, r5
 80031c8:	4620      	mov	r0, r4
 80031ca:	4629      	mov	r1, r5
 80031cc:	f7fd fc6e 	bl	8000aac <__aeabi_dcmpun>
 80031d0:	4683      	mov	fp, r0
 80031d2:	bb58      	cbnz	r0, 800322c <pow+0x94>
 80031d4:	4632      	mov	r2, r6
 80031d6:	463b      	mov	r3, r7
 80031d8:	4630      	mov	r0, r6
 80031da:	4639      	mov	r1, r7
 80031dc:	f7fd fc66 	bl	8000aac <__aeabi_dcmpun>
 80031e0:	4681      	mov	r9, r0
 80031e2:	2800      	cmp	r0, #0
 80031e4:	d166      	bne.n	80032b4 <pow+0x11c>
 80031e6:	4630      	mov	r0, r6
 80031e8:	4639      	mov	r1, r7
 80031ea:	2200      	movs	r2, #0
 80031ec:	2300      	movs	r3, #0
 80031ee:	f7fd fc2b 	bl	8000a48 <__aeabi_dcmpeq>
 80031f2:	b320      	cbz	r0, 800323e <pow+0xa6>
 80031f4:	2200      	movs	r2, #0
 80031f6:	2300      	movs	r3, #0
 80031f8:	4620      	mov	r0, r4
 80031fa:	4629      	mov	r1, r5
 80031fc:	f7fd fc24 	bl	8000a48 <__aeabi_dcmpeq>
 8003200:	4683      	mov	fp, r0
 8003202:	2800      	cmp	r0, #0
 8003204:	d07d      	beq.n	8003302 <pow+0x16a>
 8003206:	ed9f 7ba6 	vldr	d7, [pc, #664]	; 80034a0 <pow+0x308>
 800320a:	2201      	movs	r2, #1
 800320c:	4baa      	ldr	r3, [pc, #680]	; (80034b8 <pow+0x320>)
 800320e:	f8cd 9020 	str.w	r9, [sp, #32]
 8003212:	9200      	str	r2, [sp, #0]
 8003214:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003218:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800321c:	ed8d 7b06 	vstr	d7, [sp, #24]
 8003220:	9301      	str	r3, [sp, #4]
 8003222:	f1b8 0f00 	cmp.w	r8, #0
 8003226:	d05e      	beq.n	80032e6 <pow+0x14e>
 8003228:	ed9f 8b9f 	vldr	d8, [pc, #636]	; 80034a8 <pow+0x310>
 800322c:	eeb0 0a48 	vmov.f32	s0, s16
 8003230:	eef0 0a68 	vmov.f32	s1, s17
 8003234:	b00b      	add	sp, #44	; 0x2c
 8003236:	ecbd 8b02 	vpop	{d8}
 800323a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800323e:	eeb0 0a48 	vmov.f32	s0, s16
 8003242:	eef0 0a68 	vmov.f32	s1, s17
 8003246:	f002 fa75 	bl	8005734 <finite>
 800324a:	4680      	mov	r8, r0
 800324c:	2800      	cmp	r0, #0
 800324e:	f000 8082 	beq.w	8003356 <pow+0x1be>
 8003252:	f04f 0800 	mov.w	r8, #0
 8003256:	f04f 0900 	mov.w	r9, #0
 800325a:	ec51 0b18 	vmov	r0, r1, d8
 800325e:	4642      	mov	r2, r8
 8003260:	464b      	mov	r3, r9
 8003262:	f7fd fbf1 	bl	8000a48 <__aeabi_dcmpeq>
 8003266:	2800      	cmp	r0, #0
 8003268:	d0e0      	beq.n	800322c <pow+0x94>
 800326a:	ec47 6b10 	vmov	d0, r6, r7
 800326e:	f002 fa61 	bl	8005734 <finite>
 8003272:	2800      	cmp	r0, #0
 8003274:	d0da      	beq.n	800322c <pow+0x94>
 8003276:	ec45 4b10 	vmov	d0, r4, r5
 800327a:	f002 fa5b 	bl	8005734 <finite>
 800327e:	2800      	cmp	r0, #0
 8003280:	d0d4      	beq.n	800322c <pow+0x94>
 8003282:	f99a 3000 	ldrsb.w	r3, [sl]
 8003286:	4a8c      	ldr	r2, [pc, #560]	; (80034b8 <pow+0x320>)
 8003288:	9201      	str	r2, [sp, #4]
 800328a:	2104      	movs	r1, #4
 800328c:	2200      	movs	r2, #0
 800328e:	2b02      	cmp	r3, #2
 8003290:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003294:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003298:	e9cd 8906 	strd	r8, r9, [sp, #24]
 800329c:	9100      	str	r1, [sp, #0]
 800329e:	9208      	str	r2, [sp, #32]
 80032a0:	d003      	beq.n	80032aa <pow+0x112>
 80032a2:	4668      	mov	r0, sp
 80032a4:	f002 fad8 	bl	8005858 <matherr>
 80032a8:	bb10      	cbnz	r0, 80032f0 <pow+0x158>
 80032aa:	f002 fc05 	bl	8005ab8 <__errno>
 80032ae:	2322      	movs	r3, #34	; 0x22
 80032b0:	6003      	str	r3, [r0, #0]
 80032b2:	e01d      	b.n	80032f0 <pow+0x158>
 80032b4:	2200      	movs	r2, #0
 80032b6:	2300      	movs	r3, #0
 80032b8:	4620      	mov	r0, r4
 80032ba:	4629      	mov	r1, r5
 80032bc:	f7fd fbc4 	bl	8000a48 <__aeabi_dcmpeq>
 80032c0:	2800      	cmp	r0, #0
 80032c2:	d0b3      	beq.n	800322c <pow+0x94>
 80032c4:	ed9f 8b78 	vldr	d8, [pc, #480]	; 80034a8 <pow+0x310>
 80032c8:	2201      	movs	r2, #1
 80032ca:	4b7b      	ldr	r3, [pc, #492]	; (80034b8 <pow+0x320>)
 80032cc:	f8cd b020 	str.w	fp, [sp, #32]
 80032d0:	f1b8 0f02 	cmp.w	r8, #2
 80032d4:	9200      	str	r2, [sp, #0]
 80032d6:	e9cd 6702 	strd	r6, r7, [sp, #8]
 80032da:	e9cd 4504 	strd	r4, r5, [sp, #16]
 80032de:	ed8d 8b06 	vstr	d8, [sp, #24]
 80032e2:	9301      	str	r3, [sp, #4]
 80032e4:	d0a2      	beq.n	800322c <pow+0x94>
 80032e6:	4668      	mov	r0, sp
 80032e8:	f002 fab6 	bl	8005858 <matherr>
 80032ec:	2800      	cmp	r0, #0
 80032ee:	d078      	beq.n	80033e2 <pow+0x24a>
 80032f0:	9b08      	ldr	r3, [sp, #32]
 80032f2:	b11b      	cbz	r3, 80032fc <pow+0x164>
 80032f4:	f002 fbe0 	bl	8005ab8 <__errno>
 80032f8:	9b08      	ldr	r3, [sp, #32]
 80032fa:	6003      	str	r3, [r0, #0]
 80032fc:	ed9d 8b06 	vldr	d8, [sp, #24]
 8003300:	e794      	b.n	800322c <pow+0x94>
 8003302:	ec45 4b10 	vmov	d0, r4, r5
 8003306:	f002 fa15 	bl	8005734 <finite>
 800330a:	2800      	cmp	r0, #0
 800330c:	d08e      	beq.n	800322c <pow+0x94>
 800330e:	2200      	movs	r2, #0
 8003310:	2300      	movs	r3, #0
 8003312:	4620      	mov	r0, r4
 8003314:	4629      	mov	r1, r5
 8003316:	f7fd fba1 	bl	8000a5c <__aeabi_dcmplt>
 800331a:	2800      	cmp	r0, #0
 800331c:	d086      	beq.n	800322c <pow+0x94>
 800331e:	4a66      	ldr	r2, [pc, #408]	; (80034b8 <pow+0x320>)
 8003320:	f99a 3000 	ldrsb.w	r3, [sl]
 8003324:	f8cd b020 	str.w	fp, [sp, #32]
 8003328:	2101      	movs	r1, #1
 800332a:	e9cd 6702 	strd	r6, r7, [sp, #8]
 800332e:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003332:	e9cd 1200 	strd	r1, r2, [sp]
 8003336:	2b00      	cmp	r3, #0
 8003338:	d058      	beq.n	80033ec <pow+0x254>
 800333a:	4960      	ldr	r1, [pc, #384]	; (80034bc <pow+0x324>)
 800333c:	2000      	movs	r0, #0
 800333e:	2b02      	cmp	r3, #2
 8003340:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003344:	d156      	bne.n	80033f4 <pow+0x25c>
 8003346:	f002 fbb7 	bl	8005ab8 <__errno>
 800334a:	2321      	movs	r3, #33	; 0x21
 800334c:	6003      	str	r3, [r0, #0]
 800334e:	9b08      	ldr	r3, [sp, #32]
 8003350:	2b00      	cmp	r3, #0
 8003352:	d0d3      	beq.n	80032fc <pow+0x164>
 8003354:	e7ce      	b.n	80032f4 <pow+0x15c>
 8003356:	ec47 6b10 	vmov	d0, r6, r7
 800335a:	f002 f9eb 	bl	8005734 <finite>
 800335e:	2800      	cmp	r0, #0
 8003360:	f43f af77 	beq.w	8003252 <pow+0xba>
 8003364:	ec45 4b10 	vmov	d0, r4, r5
 8003368:	f002 f9e4 	bl	8005734 <finite>
 800336c:	2800      	cmp	r0, #0
 800336e:	f43f af70 	beq.w	8003252 <pow+0xba>
 8003372:	ec53 2b18 	vmov	r2, r3, d8
 8003376:	ee18 0a10 	vmov	r0, s16
 800337a:	4619      	mov	r1, r3
 800337c:	f7fd fb96 	bl	8000aac <__aeabi_dcmpun>
 8003380:	f99a 9000 	ldrsb.w	r9, [sl]
 8003384:	2800      	cmp	r0, #0
 8003386:	d16f      	bne.n	8003468 <pow+0x2d0>
 8003388:	2303      	movs	r3, #3
 800338a:	f8df c12c 	ldr.w	ip, [pc, #300]	; 80034b8 <pow+0x320>
 800338e:	9008      	str	r0, [sp, #32]
 8003390:	4629      	mov	r1, r5
 8003392:	4620      	mov	r0, r4
 8003394:	9300      	str	r3, [sp, #0]
 8003396:	2200      	movs	r2, #0
 8003398:	4b49      	ldr	r3, [pc, #292]	; (80034c0 <pow+0x328>)
 800339a:	f8cd c004 	str.w	ip, [sp, #4]
 800339e:	e9cd 4504 	strd	r4, r5, [sp, #16]
 80033a2:	e9cd 6702 	strd	r6, r7, [sp, #8]
 80033a6:	f7fd f8e7 	bl	8000578 <__aeabi_dmul>
 80033aa:	4604      	mov	r4, r0
 80033ac:	460d      	mov	r5, r1
 80033ae:	f1b9 0f00 	cmp.w	r9, #0
 80033b2:	d125      	bne.n	8003400 <pow+0x268>
 80033b4:	f8df 9114 	ldr.w	r9, [pc, #276]	; 80034cc <pow+0x334>
 80033b8:	f04f 4860 	mov.w	r8, #3758096384	; 0xe0000000
 80033bc:	2200      	movs	r2, #0
 80033be:	2300      	movs	r3, #0
 80033c0:	4630      	mov	r0, r6
 80033c2:	4639      	mov	r1, r7
 80033c4:	e9cd 8906 	strd	r8, r9, [sp, #24]
 80033c8:	f7fd fb48 	bl	8000a5c <__aeabi_dcmplt>
 80033cc:	bb38      	cbnz	r0, 800341e <pow+0x286>
 80033ce:	4668      	mov	r0, sp
 80033d0:	f002 fa42 	bl	8005858 <matherr>
 80033d4:	2800      	cmp	r0, #0
 80033d6:	d1ba      	bne.n	800334e <pow+0x1b6>
 80033d8:	f002 fb6e 	bl	8005ab8 <__errno>
 80033dc:	2322      	movs	r3, #34	; 0x22
 80033de:	6003      	str	r3, [r0, #0]
 80033e0:	e7b5      	b.n	800334e <pow+0x1b6>
 80033e2:	f002 fb69 	bl	8005ab8 <__errno>
 80033e6:	2321      	movs	r3, #33	; 0x21
 80033e8:	6003      	str	r3, [r0, #0]
 80033ea:	e781      	b.n	80032f0 <pow+0x158>
 80033ec:	ed9f 7b2c 	vldr	d7, [pc, #176]	; 80034a0 <pow+0x308>
 80033f0:	ed8d 7b06 	vstr	d7, [sp, #24]
 80033f4:	4668      	mov	r0, sp
 80033f6:	f002 fa2f 	bl	8005858 <matherr>
 80033fa:	2800      	cmp	r0, #0
 80033fc:	d1a7      	bne.n	800334e <pow+0x1b6>
 80033fe:	e7a2      	b.n	8003346 <pow+0x1ae>
 8003400:	ed9f 7b2b 	vldr	d7, [pc, #172]	; 80034b0 <pow+0x318>
 8003404:	2200      	movs	r2, #0
 8003406:	2300      	movs	r3, #0
 8003408:	4630      	mov	r0, r6
 800340a:	4639      	mov	r1, r7
 800340c:	ed8d 7b06 	vstr	d7, [sp, #24]
 8003410:	f7fd fb24 	bl	8000a5c <__aeabi_dcmplt>
 8003414:	b9b0      	cbnz	r0, 8003444 <pow+0x2ac>
 8003416:	f1b9 0f02 	cmp.w	r9, #2
 800341a:	d0dd      	beq.n	80033d8 <pow+0x240>
 800341c:	e7d7      	b.n	80033ce <pow+0x236>
 800341e:	ec45 4b10 	vmov	d0, r4, r5
 8003422:	f002 fa25 	bl	8005870 <rint>
 8003426:	4622      	mov	r2, r4
 8003428:	462b      	mov	r3, r5
 800342a:	ec51 0b10 	vmov	r0, r1, d0
 800342e:	f7fd fb0b 	bl	8000a48 <__aeabi_dcmpeq>
 8003432:	b9b0      	cbnz	r0, 8003462 <pow+0x2ca>
 8003434:	4b23      	ldr	r3, [pc, #140]	; (80034c4 <pow+0x32c>)
 8003436:	f99a 9000 	ldrsb.w	r9, [sl]
 800343a:	f04f 4260 	mov.w	r2, #3758096384	; 0xe0000000
 800343e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8003442:	e7e8      	b.n	8003416 <pow+0x27e>
 8003444:	ec45 4b10 	vmov	d0, r4, r5
 8003448:	f002 fa12 	bl	8005870 <rint>
 800344c:	4622      	mov	r2, r4
 800344e:	462b      	mov	r3, r5
 8003450:	ec51 0b10 	vmov	r0, r1, d0
 8003454:	f7fd faf8 	bl	8000a48 <__aeabi_dcmpeq>
 8003458:	b918      	cbnz	r0, 8003462 <pow+0x2ca>
 800345a:	4b18      	ldr	r3, [pc, #96]	; (80034bc <pow+0x324>)
 800345c:	2200      	movs	r2, #0
 800345e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8003462:	f99a 9000 	ldrsb.w	r9, [sl]
 8003466:	e7d6      	b.n	8003416 <pow+0x27e>
 8003468:	2201      	movs	r2, #1
 800346a:	4b13      	ldr	r3, [pc, #76]	; (80034b8 <pow+0x320>)
 800346c:	f8cd 8020 	str.w	r8, [sp, #32]
 8003470:	9200      	str	r2, [sp, #0]
 8003472:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003476:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800347a:	9301      	str	r3, [sp, #4]
 800347c:	f1b9 0f00 	cmp.w	r9, #0
 8003480:	d0b4      	beq.n	80033ec <pow+0x254>
 8003482:	2200      	movs	r2, #0
 8003484:	2300      	movs	r3, #0
 8003486:	4610      	mov	r0, r2
 8003488:	4619      	mov	r1, r3
 800348a:	f7fd f99f 	bl	80007cc <__aeabi_ddiv>
 800348e:	f1b9 0f02 	cmp.w	r9, #2
 8003492:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003496:	f43f af56 	beq.w	8003346 <pow+0x1ae>
 800349a:	e7ab      	b.n	80033f4 <pow+0x25c>
 800349c:	f3af 8000 	nop.w
	...
 80034ac:	3ff00000 	.word	0x3ff00000
 80034b0:	00000000 	.word	0x00000000
 80034b4:	7ff00000 	.word	0x7ff00000
 80034b8:	0800a9b8 	.word	0x0800a9b8
 80034bc:	fff00000 	.word	0xfff00000
 80034c0:	3fe00000 	.word	0x3fe00000
 80034c4:	c7efffff 	.word	0xc7efffff
 80034c8:	20000018 	.word	0x20000018
 80034cc:	47efffff 	.word	0x47efffff

080034d0 <sqrt>:
 80034d0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80034d4:	ed2d 8b02 	vpush	{d8}
 80034d8:	b08b      	sub	sp, #44	; 0x2c
 80034da:	ec55 4b10 	vmov	r4, r5, d0
 80034de:	f001 fa45 	bl	800496c <__ieee754_sqrt>
 80034e2:	4b27      	ldr	r3, [pc, #156]	; (8003580 <sqrt+0xb0>)
 80034e4:	eeb0 8a40 	vmov.f32	s16, s0
 80034e8:	eef0 8a60 	vmov.f32	s17, s1
 80034ec:	f993 6000 	ldrsb.w	r6, [r3]
 80034f0:	1c73      	adds	r3, r6, #1
 80034f2:	d012      	beq.n	800351a <sqrt+0x4a>
 80034f4:	4622      	mov	r2, r4
 80034f6:	462b      	mov	r3, r5
 80034f8:	4620      	mov	r0, r4
 80034fa:	4629      	mov	r1, r5
 80034fc:	f7fd fad6 	bl	8000aac <__aeabi_dcmpun>
 8003500:	4607      	mov	r7, r0
 8003502:	b950      	cbnz	r0, 800351a <sqrt+0x4a>
 8003504:	f04f 0800 	mov.w	r8, #0
 8003508:	f04f 0900 	mov.w	r9, #0
 800350c:	4620      	mov	r0, r4
 800350e:	4629      	mov	r1, r5
 8003510:	4642      	mov	r2, r8
 8003512:	464b      	mov	r3, r9
 8003514:	f7fd faa2 	bl	8000a5c <__aeabi_dcmplt>
 8003518:	b940      	cbnz	r0, 800352c <sqrt+0x5c>
 800351a:	eeb0 0a48 	vmov.f32	s0, s16
 800351e:	eef0 0a68 	vmov.f32	s1, s17
 8003522:	b00b      	add	sp, #44	; 0x2c
 8003524:	ecbd 8b02 	vpop	{d8}
 8003528:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800352c:	2201      	movs	r2, #1
 800352e:	4b15      	ldr	r3, [pc, #84]	; (8003584 <sqrt+0xb4>)
 8003530:	9708      	str	r7, [sp, #32]
 8003532:	9200      	str	r2, [sp, #0]
 8003534:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003538:	e9cd 4502 	strd	r4, r5, [sp, #8]
 800353c:	9301      	str	r3, [sp, #4]
 800353e:	b196      	cbz	r6, 8003566 <sqrt+0x96>
 8003540:	4642      	mov	r2, r8
 8003542:	464b      	mov	r3, r9
 8003544:	4640      	mov	r0, r8
 8003546:	4649      	mov	r1, r9
 8003548:	f7fd f940 	bl	80007cc <__aeabi_ddiv>
 800354c:	2e02      	cmp	r6, #2
 800354e:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003552:	d10a      	bne.n	800356a <sqrt+0x9a>
 8003554:	f002 fab0 	bl	8005ab8 <__errno>
 8003558:	2321      	movs	r3, #33	; 0x21
 800355a:	6003      	str	r3, [r0, #0]
 800355c:	9b08      	ldr	r3, [sp, #32]
 800355e:	b953      	cbnz	r3, 8003576 <sqrt+0xa6>
 8003560:	ed9d 8b06 	vldr	d8, [sp, #24]
 8003564:	e7d9      	b.n	800351a <sqrt+0x4a>
 8003566:	e9cd 8906 	strd	r8, r9, [sp, #24]
 800356a:	4668      	mov	r0, sp
 800356c:	f002 f974 	bl	8005858 <matherr>
 8003570:	2800      	cmp	r0, #0
 8003572:	d1f3      	bne.n	800355c <sqrt+0x8c>
 8003574:	e7ee      	b.n	8003554 <sqrt+0x84>
 8003576:	f002 fa9f 	bl	8005ab8 <__errno>
 800357a:	9b08      	ldr	r3, [sp, #32]
 800357c:	6003      	str	r3, [r0, #0]
 800357e:	e7ef      	b.n	8003560 <sqrt+0x90>
 8003580:	20000018 	.word	0x20000018
 8003584:	0800a9bc 	.word	0x0800a9bc

08003588 <__ieee754_acos>:
 8003588:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800358c:	ec55 4b10 	vmov	r4, r5, d0
 8003590:	49cd      	ldr	r1, [pc, #820]	; (80038c8 <__ieee754_acos+0x340>)
 8003592:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 8003596:	428b      	cmp	r3, r1
 8003598:	dd0d      	ble.n	80035b6 <__ieee754_acos+0x2e>
 800359a:	f103 4340 	add.w	r3, r3, #3221225472	; 0xc0000000
 800359e:	f503 1380 	add.w	r3, r3, #1048576	; 0x100000
 80035a2:	4323      	orrs	r3, r4
 80035a4:	f040 80bd 	bne.w	8003722 <__ieee754_acos+0x19a>
 80035a8:	2d00      	cmp	r5, #0
 80035aa:	f340 814f 	ble.w	800384c <__ieee754_acos+0x2c4>
 80035ae:	ed9f 0baa 	vldr	d0, [pc, #680]	; 8003858 <__ieee754_acos+0x2d0>
 80035b2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80035b6:	49c5      	ldr	r1, [pc, #788]	; (80038cc <__ieee754_acos+0x344>)
 80035b8:	428b      	cmp	r3, r1
 80035ba:	dc07      	bgt.n	80035cc <__ieee754_acos+0x44>
 80035bc:	4ac4      	ldr	r2, [pc, #784]	; (80038d0 <__ieee754_acos+0x348>)
 80035be:	4293      	cmp	r3, r2
 80035c0:	f300 80be 	bgt.w	8003740 <__ieee754_acos+0x1b8>
 80035c4:	ed9f 0ba6 	vldr	d0, [pc, #664]	; 8003860 <__ieee754_acos+0x2d8>
 80035c8:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80035cc:	2d00      	cmp	r5, #0
 80035ce:	f2c0 8185 	blt.w	80038dc <__ieee754_acos+0x354>
 80035d2:	ee10 2a10 	vmov	r2, s0
 80035d6:	462b      	mov	r3, r5
 80035d8:	2000      	movs	r0, #0
 80035da:	49be      	ldr	r1, [pc, #760]	; (80038d4 <__ieee754_acos+0x34c>)
 80035dc:	f7fc fe14 	bl	8000208 <__aeabi_dsub>
 80035e0:	2200      	movs	r2, #0
 80035e2:	4bbd      	ldr	r3, [pc, #756]	; (80038d8 <__ieee754_acos+0x350>)
 80035e4:	f7fc ffc8 	bl	8000578 <__aeabi_dmul>
 80035e8:	4604      	mov	r4, r0
 80035ea:	460d      	mov	r5, r1
 80035ec:	ec45 4b10 	vmov	d0, r4, r5
 80035f0:	f001 f9bc 	bl	800496c <__ieee754_sqrt>
 80035f4:	4620      	mov	r0, r4
 80035f6:	4629      	mov	r1, r5
 80035f8:	a39b      	add	r3, pc, #620	; (adr r3, 8003868 <__ieee754_acos+0x2e0>)
 80035fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035fe:	ec59 8b10 	vmov	r8, r9, d0
 8003602:	f7fc ffb9 	bl	8000578 <__aeabi_dmul>
 8003606:	a39a      	add	r3, pc, #616	; (adr r3, 8003870 <__ieee754_acos+0x2e8>)
 8003608:	e9d3 2300 	ldrd	r2, r3, [r3]
 800360c:	f7fc fdfe 	bl	800020c <__adddf3>
 8003610:	4622      	mov	r2, r4
 8003612:	462b      	mov	r3, r5
 8003614:	f7fc ffb0 	bl	8000578 <__aeabi_dmul>
 8003618:	a397      	add	r3, pc, #604	; (adr r3, 8003878 <__ieee754_acos+0x2f0>)
 800361a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800361e:	f7fc fdf3 	bl	8000208 <__aeabi_dsub>
 8003622:	4622      	mov	r2, r4
 8003624:	462b      	mov	r3, r5
 8003626:	f7fc ffa7 	bl	8000578 <__aeabi_dmul>
 800362a:	a395      	add	r3, pc, #596	; (adr r3, 8003880 <__ieee754_acos+0x2f8>)
 800362c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003630:	f7fc fdec 	bl	800020c <__adddf3>
 8003634:	4622      	mov	r2, r4
 8003636:	462b      	mov	r3, r5
 8003638:	f7fc ff9e 	bl	8000578 <__aeabi_dmul>
 800363c:	a392      	add	r3, pc, #584	; (adr r3, 8003888 <__ieee754_acos+0x300>)
 800363e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003642:	f7fc fde1 	bl	8000208 <__aeabi_dsub>
 8003646:	4622      	mov	r2, r4
 8003648:	462b      	mov	r3, r5
 800364a:	f7fc ff95 	bl	8000578 <__aeabi_dmul>
 800364e:	a390      	add	r3, pc, #576	; (adr r3, 8003890 <__ieee754_acos+0x308>)
 8003650:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003654:	f7fc fdda 	bl	800020c <__adddf3>
 8003658:	4622      	mov	r2, r4
 800365a:	462b      	mov	r3, r5
 800365c:	f7fc ff8c 	bl	8000578 <__aeabi_dmul>
 8003660:	a38d      	add	r3, pc, #564	; (adr r3, 8003898 <__ieee754_acos+0x310>)
 8003662:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003666:	4682      	mov	sl, r0
 8003668:	468b      	mov	fp, r1
 800366a:	4620      	mov	r0, r4
 800366c:	4629      	mov	r1, r5
 800366e:	f7fc ff83 	bl	8000578 <__aeabi_dmul>
 8003672:	a38b      	add	r3, pc, #556	; (adr r3, 80038a0 <__ieee754_acos+0x318>)
 8003674:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003678:	f7fc fdc6 	bl	8000208 <__aeabi_dsub>
 800367c:	4622      	mov	r2, r4
 800367e:	462b      	mov	r3, r5
 8003680:	f7fc ff7a 	bl	8000578 <__aeabi_dmul>
 8003684:	a388      	add	r3, pc, #544	; (adr r3, 80038a8 <__ieee754_acos+0x320>)
 8003686:	e9d3 2300 	ldrd	r2, r3, [r3]
 800368a:	f7fc fdbf 	bl	800020c <__adddf3>
 800368e:	4622      	mov	r2, r4
 8003690:	462b      	mov	r3, r5
 8003692:	f7fc ff71 	bl	8000578 <__aeabi_dmul>
 8003696:	a386      	add	r3, pc, #536	; (adr r3, 80038b0 <__ieee754_acos+0x328>)
 8003698:	e9d3 2300 	ldrd	r2, r3, [r3]
 800369c:	f7fc fdb4 	bl	8000208 <__aeabi_dsub>
 80036a0:	4622      	mov	r2, r4
 80036a2:	462b      	mov	r3, r5
 80036a4:	f7fc ff68 	bl	8000578 <__aeabi_dmul>
 80036a8:	2200      	movs	r2, #0
 80036aa:	4b8a      	ldr	r3, [pc, #552]	; (80038d4 <__ieee754_acos+0x34c>)
 80036ac:	f7fc fdae 	bl	800020c <__adddf3>
 80036b0:	4602      	mov	r2, r0
 80036b2:	460b      	mov	r3, r1
 80036b4:	4650      	mov	r0, sl
 80036b6:	4659      	mov	r1, fp
 80036b8:	f7fd f888 	bl	80007cc <__aeabi_ddiv>
 80036bc:	4642      	mov	r2, r8
 80036be:	464b      	mov	r3, r9
 80036c0:	f7fc ff5a 	bl	8000578 <__aeabi_dmul>
 80036c4:	2600      	movs	r6, #0
 80036c6:	4682      	mov	sl, r0
 80036c8:	468b      	mov	fp, r1
 80036ca:	4632      	mov	r2, r6
 80036cc:	464b      	mov	r3, r9
 80036ce:	4630      	mov	r0, r6
 80036d0:	4649      	mov	r1, r9
 80036d2:	f7fc ff51 	bl	8000578 <__aeabi_dmul>
 80036d6:	4602      	mov	r2, r0
 80036d8:	460b      	mov	r3, r1
 80036da:	4620      	mov	r0, r4
 80036dc:	4629      	mov	r1, r5
 80036de:	f7fc fd93 	bl	8000208 <__aeabi_dsub>
 80036e2:	4632      	mov	r2, r6
 80036e4:	4604      	mov	r4, r0
 80036e6:	460d      	mov	r5, r1
 80036e8:	464b      	mov	r3, r9
 80036ea:	4640      	mov	r0, r8
 80036ec:	4649      	mov	r1, r9
 80036ee:	f7fc fd8d 	bl	800020c <__adddf3>
 80036f2:	4602      	mov	r2, r0
 80036f4:	460b      	mov	r3, r1
 80036f6:	4620      	mov	r0, r4
 80036f8:	4629      	mov	r1, r5
 80036fa:	f7fd f867 	bl	80007cc <__aeabi_ddiv>
 80036fe:	4602      	mov	r2, r0
 8003700:	460b      	mov	r3, r1
 8003702:	4650      	mov	r0, sl
 8003704:	4659      	mov	r1, fp
 8003706:	f7fc fd81 	bl	800020c <__adddf3>
 800370a:	4632      	mov	r2, r6
 800370c:	464b      	mov	r3, r9
 800370e:	f7fc fd7d 	bl	800020c <__adddf3>
 8003712:	4602      	mov	r2, r0
 8003714:	460b      	mov	r3, r1
 8003716:	f7fc fd79 	bl	800020c <__adddf3>
 800371a:	ec41 0b10 	vmov	d0, r0, r1
 800371e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003722:	ee10 2a10 	vmov	r2, s0
 8003726:	462b      	mov	r3, r5
 8003728:	4620      	mov	r0, r4
 800372a:	4629      	mov	r1, r5
 800372c:	f7fc fd6c 	bl	8000208 <__aeabi_dsub>
 8003730:	4602      	mov	r2, r0
 8003732:	460b      	mov	r3, r1
 8003734:	f7fd f84a 	bl	80007cc <__aeabi_ddiv>
 8003738:	ec41 0b10 	vmov	d0, r0, r1
 800373c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003740:	ee10 2a10 	vmov	r2, s0
 8003744:	ee10 0a10 	vmov	r0, s0
 8003748:	462b      	mov	r3, r5
 800374a:	4629      	mov	r1, r5
 800374c:	f7fc ff14 	bl	8000578 <__aeabi_dmul>
 8003750:	a345      	add	r3, pc, #276	; (adr r3, 8003868 <__ieee754_acos+0x2e0>)
 8003752:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003756:	4606      	mov	r6, r0
 8003758:	460f      	mov	r7, r1
 800375a:	f7fc ff0d 	bl	8000578 <__aeabi_dmul>
 800375e:	a344      	add	r3, pc, #272	; (adr r3, 8003870 <__ieee754_acos+0x2e8>)
 8003760:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003764:	f7fc fd52 	bl	800020c <__adddf3>
 8003768:	4632      	mov	r2, r6
 800376a:	463b      	mov	r3, r7
 800376c:	f7fc ff04 	bl	8000578 <__aeabi_dmul>
 8003770:	a341      	add	r3, pc, #260	; (adr r3, 8003878 <__ieee754_acos+0x2f0>)
 8003772:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003776:	f7fc fd47 	bl	8000208 <__aeabi_dsub>
 800377a:	4632      	mov	r2, r6
 800377c:	463b      	mov	r3, r7
 800377e:	f7fc fefb 	bl	8000578 <__aeabi_dmul>
 8003782:	a33f      	add	r3, pc, #252	; (adr r3, 8003880 <__ieee754_acos+0x2f8>)
 8003784:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003788:	f7fc fd40 	bl	800020c <__adddf3>
 800378c:	4632      	mov	r2, r6
 800378e:	463b      	mov	r3, r7
 8003790:	f7fc fef2 	bl	8000578 <__aeabi_dmul>
 8003794:	a33c      	add	r3, pc, #240	; (adr r3, 8003888 <__ieee754_acos+0x300>)
 8003796:	e9d3 2300 	ldrd	r2, r3, [r3]
 800379a:	f7fc fd35 	bl	8000208 <__aeabi_dsub>
 800379e:	4632      	mov	r2, r6
 80037a0:	463b      	mov	r3, r7
 80037a2:	f7fc fee9 	bl	8000578 <__aeabi_dmul>
 80037a6:	a33a      	add	r3, pc, #232	; (adr r3, 8003890 <__ieee754_acos+0x308>)
 80037a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037ac:	f7fc fd2e 	bl	800020c <__adddf3>
 80037b0:	4632      	mov	r2, r6
 80037b2:	463b      	mov	r3, r7
 80037b4:	f7fc fee0 	bl	8000578 <__aeabi_dmul>
 80037b8:	a337      	add	r3, pc, #220	; (adr r3, 8003898 <__ieee754_acos+0x310>)
 80037ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037be:	4680      	mov	r8, r0
 80037c0:	4689      	mov	r9, r1
 80037c2:	4630      	mov	r0, r6
 80037c4:	4639      	mov	r1, r7
 80037c6:	f7fc fed7 	bl	8000578 <__aeabi_dmul>
 80037ca:	a335      	add	r3, pc, #212	; (adr r3, 80038a0 <__ieee754_acos+0x318>)
 80037cc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037d0:	f7fc fd1a 	bl	8000208 <__aeabi_dsub>
 80037d4:	4632      	mov	r2, r6
 80037d6:	463b      	mov	r3, r7
 80037d8:	f7fc fece 	bl	8000578 <__aeabi_dmul>
 80037dc:	a332      	add	r3, pc, #200	; (adr r3, 80038a8 <__ieee754_acos+0x320>)
 80037de:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037e2:	f7fc fd13 	bl	800020c <__adddf3>
 80037e6:	4632      	mov	r2, r6
 80037e8:	463b      	mov	r3, r7
 80037ea:	f7fc fec5 	bl	8000578 <__aeabi_dmul>
 80037ee:	a330      	add	r3, pc, #192	; (adr r3, 80038b0 <__ieee754_acos+0x328>)
 80037f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037f4:	f7fc fd08 	bl	8000208 <__aeabi_dsub>
 80037f8:	4632      	mov	r2, r6
 80037fa:	463b      	mov	r3, r7
 80037fc:	f7fc febc 	bl	8000578 <__aeabi_dmul>
 8003800:	2200      	movs	r2, #0
 8003802:	4b34      	ldr	r3, [pc, #208]	; (80038d4 <__ieee754_acos+0x34c>)
 8003804:	f7fc fd02 	bl	800020c <__adddf3>
 8003808:	4602      	mov	r2, r0
 800380a:	460b      	mov	r3, r1
 800380c:	4640      	mov	r0, r8
 800380e:	4649      	mov	r1, r9
 8003810:	f7fc ffdc 	bl	80007cc <__aeabi_ddiv>
 8003814:	4622      	mov	r2, r4
 8003816:	462b      	mov	r3, r5
 8003818:	f7fc feae 	bl	8000578 <__aeabi_dmul>
 800381c:	4602      	mov	r2, r0
 800381e:	460b      	mov	r3, r1
 8003820:	a125      	add	r1, pc, #148	; (adr r1, 80038b8 <__ieee754_acos+0x330>)
 8003822:	e9d1 0100 	ldrd	r0, r1, [r1]
 8003826:	f7fc fcef 	bl	8000208 <__aeabi_dsub>
 800382a:	4602      	mov	r2, r0
 800382c:	460b      	mov	r3, r1
 800382e:	4620      	mov	r0, r4
 8003830:	4629      	mov	r1, r5
 8003832:	f7fc fce9 	bl	8000208 <__aeabi_dsub>
 8003836:	4602      	mov	r2, r0
 8003838:	460b      	mov	r3, r1
 800383a:	a109      	add	r1, pc, #36	; (adr r1, 8003860 <__ieee754_acos+0x2d8>)
 800383c:	e9d1 0100 	ldrd	r0, r1, [r1]
 8003840:	f7fc fce2 	bl	8000208 <__aeabi_dsub>
 8003844:	ec41 0b10 	vmov	d0, r0, r1
 8003848:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800384c:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 80038c0 <__ieee754_acos+0x338>
 8003850:	e774      	b.n	800373c <__ieee754_acos+0x1b4>
 8003852:	bf00      	nop
 8003854:	f3af 8000 	nop.w
	...
 8003860:	54442d18 	.word	0x54442d18
 8003864:	3ff921fb 	.word	0x3ff921fb
 8003868:	0dfdf709 	.word	0x0dfdf709
 800386c:	3f023de1 	.word	0x3f023de1
 8003870:	7501b288 	.word	0x7501b288
 8003874:	3f49efe0 	.word	0x3f49efe0
 8003878:	b5688f3b 	.word	0xb5688f3b
 800387c:	3fa48228 	.word	0x3fa48228
 8003880:	0e884455 	.word	0x0e884455
 8003884:	3fc9c155 	.word	0x3fc9c155
 8003888:	03eb6f7d 	.word	0x03eb6f7d
 800388c:	3fd4d612 	.word	0x3fd4d612
 8003890:	55555555 	.word	0x55555555
 8003894:	3fc55555 	.word	0x3fc55555
 8003898:	b12e9282 	.word	0xb12e9282
 800389c:	3fb3b8c5 	.word	0x3fb3b8c5
 80038a0:	1b8d0159 	.word	0x1b8d0159
 80038a4:	3fe6066c 	.word	0x3fe6066c
 80038a8:	9c598ac8 	.word	0x9c598ac8
 80038ac:	40002ae5 	.word	0x40002ae5
 80038b0:	1c8a2d4b 	.word	0x1c8a2d4b
 80038b4:	40033a27 	.word	0x40033a27
 80038b8:	33145c07 	.word	0x33145c07
 80038bc:	3c91a626 	.word	0x3c91a626
 80038c0:	54442d18 	.word	0x54442d18
 80038c4:	400921fb 	.word	0x400921fb
 80038c8:	3fefffff 	.word	0x3fefffff
 80038cc:	3fdfffff 	.word	0x3fdfffff
 80038d0:	3c600000 	.word	0x3c600000
 80038d4:	3ff00000 	.word	0x3ff00000
 80038d8:	3fe00000 	.word	0x3fe00000
 80038dc:	ee10 0a10 	vmov	r0, s0
 80038e0:	4629      	mov	r1, r5
 80038e2:	2200      	movs	r2, #0
 80038e4:	4b5c      	ldr	r3, [pc, #368]	; (8003a58 <__ieee754_acos+0x4d0>)
 80038e6:	f7fc fc91 	bl	800020c <__adddf3>
 80038ea:	2200      	movs	r2, #0
 80038ec:	4b5b      	ldr	r3, [pc, #364]	; (8003a5c <__ieee754_acos+0x4d4>)
 80038ee:	f7fc fe43 	bl	8000578 <__aeabi_dmul>
 80038f2:	a341      	add	r3, pc, #260	; (adr r3, 80039f8 <__ieee754_acos+0x470>)
 80038f4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80038f8:	4604      	mov	r4, r0
 80038fa:	460d      	mov	r5, r1
 80038fc:	f7fc fe3c 	bl	8000578 <__aeabi_dmul>
 8003900:	a33f      	add	r3, pc, #252	; (adr r3, 8003a00 <__ieee754_acos+0x478>)
 8003902:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003906:	f7fc fc81 	bl	800020c <__adddf3>
 800390a:	4622      	mov	r2, r4
 800390c:	462b      	mov	r3, r5
 800390e:	f7fc fe33 	bl	8000578 <__aeabi_dmul>
 8003912:	a33d      	add	r3, pc, #244	; (adr r3, 8003a08 <__ieee754_acos+0x480>)
 8003914:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003918:	f7fc fc76 	bl	8000208 <__aeabi_dsub>
 800391c:	4622      	mov	r2, r4
 800391e:	462b      	mov	r3, r5
 8003920:	f7fc fe2a 	bl	8000578 <__aeabi_dmul>
 8003924:	a33a      	add	r3, pc, #232	; (adr r3, 8003a10 <__ieee754_acos+0x488>)
 8003926:	e9d3 2300 	ldrd	r2, r3, [r3]
 800392a:	f7fc fc6f 	bl	800020c <__adddf3>
 800392e:	4622      	mov	r2, r4
 8003930:	462b      	mov	r3, r5
 8003932:	f7fc fe21 	bl	8000578 <__aeabi_dmul>
 8003936:	a338      	add	r3, pc, #224	; (adr r3, 8003a18 <__ieee754_acos+0x490>)
 8003938:	e9d3 2300 	ldrd	r2, r3, [r3]
 800393c:	f7fc fc64 	bl	8000208 <__aeabi_dsub>
 8003940:	4622      	mov	r2, r4
 8003942:	462b      	mov	r3, r5
 8003944:	f7fc fe18 	bl	8000578 <__aeabi_dmul>
 8003948:	a335      	add	r3, pc, #212	; (adr r3, 8003a20 <__ieee754_acos+0x498>)
 800394a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800394e:	f7fc fc5d 	bl	800020c <__adddf3>
 8003952:	4622      	mov	r2, r4
 8003954:	462b      	mov	r3, r5
 8003956:	f7fc fe0f 	bl	8000578 <__aeabi_dmul>
 800395a:	ec45 4b10 	vmov	d0, r4, r5
 800395e:	4680      	mov	r8, r0
 8003960:	4689      	mov	r9, r1
 8003962:	f001 f803 	bl	800496c <__ieee754_sqrt>
 8003966:	a330      	add	r3, pc, #192	; (adr r3, 8003a28 <__ieee754_acos+0x4a0>)
 8003968:	e9d3 2300 	ldrd	r2, r3, [r3]
 800396c:	4620      	mov	r0, r4
 800396e:	4629      	mov	r1, r5
 8003970:	ec57 6b10 	vmov	r6, r7, d0
 8003974:	f7fc fe00 	bl	8000578 <__aeabi_dmul>
 8003978:	a32d      	add	r3, pc, #180	; (adr r3, 8003a30 <__ieee754_acos+0x4a8>)
 800397a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800397e:	f7fc fc43 	bl	8000208 <__aeabi_dsub>
 8003982:	4622      	mov	r2, r4
 8003984:	462b      	mov	r3, r5
 8003986:	f7fc fdf7 	bl	8000578 <__aeabi_dmul>
 800398a:	a32b      	add	r3, pc, #172	; (adr r3, 8003a38 <__ieee754_acos+0x4b0>)
 800398c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003990:	f7fc fc3c 	bl	800020c <__adddf3>
 8003994:	4622      	mov	r2, r4
 8003996:	462b      	mov	r3, r5
 8003998:	f7fc fdee 	bl	8000578 <__aeabi_dmul>
 800399c:	a328      	add	r3, pc, #160	; (adr r3, 8003a40 <__ieee754_acos+0x4b8>)
 800399e:	e9d3 2300 	ldrd	r2, r3, [r3]
 80039a2:	f7fc fc31 	bl	8000208 <__aeabi_dsub>
 80039a6:	4622      	mov	r2, r4
 80039a8:	462b      	mov	r3, r5
 80039aa:	f7fc fde5 	bl	8000578 <__aeabi_dmul>
 80039ae:	2200      	movs	r2, #0
 80039b0:	4b29      	ldr	r3, [pc, #164]	; (8003a58 <__ieee754_acos+0x4d0>)
 80039b2:	f7fc fc2b 	bl	800020c <__adddf3>
 80039b6:	4602      	mov	r2, r0
 80039b8:	460b      	mov	r3, r1
 80039ba:	4640      	mov	r0, r8
 80039bc:	4649      	mov	r1, r9
 80039be:	f7fc ff05 	bl	80007cc <__aeabi_ddiv>
 80039c2:	4632      	mov	r2, r6
 80039c4:	463b      	mov	r3, r7
 80039c6:	f7fc fdd7 	bl	8000578 <__aeabi_dmul>
 80039ca:	a31f      	add	r3, pc, #124	; (adr r3, 8003a48 <__ieee754_acos+0x4c0>)
 80039cc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80039d0:	f7fc fc1a 	bl	8000208 <__aeabi_dsub>
 80039d4:	4632      	mov	r2, r6
 80039d6:	463b      	mov	r3, r7
 80039d8:	f7fc fc18 	bl	800020c <__adddf3>
 80039dc:	4602      	mov	r2, r0
 80039de:	460b      	mov	r3, r1
 80039e0:	f7fc fc14 	bl	800020c <__adddf3>
 80039e4:	4602      	mov	r2, r0
 80039e6:	460b      	mov	r3, r1
 80039e8:	a119      	add	r1, pc, #100	; (adr r1, 8003a50 <__ieee754_acos+0x4c8>)
 80039ea:	e9d1 0100 	ldrd	r0, r1, [r1]
 80039ee:	f7fc fc0b 	bl	8000208 <__aeabi_dsub>
 80039f2:	ec41 0b10 	vmov	d0, r0, r1
 80039f6:	e6a1      	b.n	800373c <__ieee754_acos+0x1b4>
 80039f8:	0dfdf709 	.word	0x0dfdf709
 80039fc:	3f023de1 	.word	0x3f023de1
 8003a00:	7501b288 	.word	0x7501b288
 8003a04:	3f49efe0 	.word	0x3f49efe0
 8003a08:	b5688f3b 	.word	0xb5688f3b
 8003a0c:	3fa48228 	.word	0x3fa48228
 8003a10:	0e884455 	.word	0x0e884455
 8003a14:	3fc9c155 	.word	0x3fc9c155
 8003a18:	03eb6f7d 	.word	0x03eb6f7d
 8003a1c:	3fd4d612 	.word	0x3fd4d612
 8003a20:	55555555 	.word	0x55555555
 8003a24:	3fc55555 	.word	0x3fc55555
 8003a28:	b12e9282 	.word	0xb12e9282
 8003a2c:	3fb3b8c5 	.word	0x3fb3b8c5
 8003a30:	1b8d0159 	.word	0x1b8d0159
 8003a34:	3fe6066c 	.word	0x3fe6066c
 8003a38:	9c598ac8 	.word	0x9c598ac8
 8003a3c:	40002ae5 	.word	0x40002ae5
 8003a40:	1c8a2d4b 	.word	0x1c8a2d4b
 8003a44:	40033a27 	.word	0x40033a27
 8003a48:	33145c07 	.word	0x33145c07
 8003a4c:	3c91a626 	.word	0x3c91a626
 8003a50:	54442d18 	.word	0x54442d18
 8003a54:	400921fb 	.word	0x400921fb
 8003a58:	3ff00000 	.word	0x3ff00000
 8003a5c:	3fe00000 	.word	0x3fe00000

08003a60 <__ieee754_pow>:
 8003a60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003a64:	ec51 0b11 	vmov	r0, r1, d1
 8003a68:	f021 4500 	bic.w	r5, r1, #2147483648	; 0x80000000
 8003a6c:	ea55 0300 	orrs.w	r3, r5, r0
 8003a70:	b093      	sub	sp, #76	; 0x4c
 8003a72:	d010      	beq.n	8003a96 <__ieee754_pow+0x36>
 8003a74:	ec59 8b10 	vmov	r8, r9, d0
 8003a78:	4b6d      	ldr	r3, [pc, #436]	; (8003c30 <__ieee754_pow+0x1d0>)
 8003a7a:	f029 4400 	bic.w	r4, r9, #2147483648	; 0x80000000
 8003a7e:	429c      	cmp	r4, r3
 8003a80:	464e      	mov	r6, r9
 8003a82:	ee10 aa10 	vmov	sl, s0
 8003a86:	dd0d      	ble.n	8003aa4 <__ieee754_pow+0x44>
 8003a88:	f104 4440 	add.w	r4, r4, #3221225472	; 0xc0000000
 8003a8c:	f504 1480 	add.w	r4, r4, #1048576	; 0x100000
 8003a90:	ea54 030a 	orrs.w	r3, r4, sl
 8003a94:	d156      	bne.n	8003b44 <__ieee754_pow+0xe4>
 8003a96:	4967      	ldr	r1, [pc, #412]	; (8003c34 <__ieee754_pow+0x1d4>)
 8003a98:	2000      	movs	r0, #0
 8003a9a:	ec41 0b10 	vmov	d0, r0, r1
 8003a9e:	b013      	add	sp, #76	; 0x4c
 8003aa0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003aa4:	460f      	mov	r7, r1
 8003aa6:	ee11 ca10 	vmov	ip, s2
 8003aaa:	d048      	beq.n	8003b3e <__ieee754_pow+0xde>
 8003aac:	429d      	cmp	r5, r3
 8003aae:	dceb      	bgt.n	8003a88 <__ieee754_pow+0x28>
 8003ab0:	4b5f      	ldr	r3, [pc, #380]	; (8003c30 <__ieee754_pow+0x1d0>)
 8003ab2:	429d      	cmp	r5, r3
 8003ab4:	d05f      	beq.n	8003b76 <__ieee754_pow+0x116>
 8003ab6:	2e00      	cmp	r6, #0
 8003ab8:	e9cd 0100 	strd	r0, r1, [sp]
 8003abc:	db5f      	blt.n	8003b7e <__ieee754_pow+0x11e>
 8003abe:	f04f 0b00 	mov.w	fp, #0
 8003ac2:	f1bc 0f00 	cmp.w	ip, #0
 8003ac6:	d10e      	bne.n	8003ae6 <__ieee754_pow+0x86>
 8003ac8:	4b59      	ldr	r3, [pc, #356]	; (8003c30 <__ieee754_pow+0x1d0>)
 8003aca:	429d      	cmp	r5, r3
 8003acc:	d043      	beq.n	8003b56 <__ieee754_pow+0xf6>
 8003ace:	4b59      	ldr	r3, [pc, #356]	; (8003c34 <__ieee754_pow+0x1d4>)
 8003ad0:	429d      	cmp	r5, r3
 8003ad2:	f000 808c 	beq.w	8003bee <__ieee754_pow+0x18e>
 8003ad6:	f1b7 4f80 	cmp.w	r7, #1073741824	; 0x40000000
 8003ada:	f000 809e 	beq.w	8003c1a <__ieee754_pow+0x1ba>
 8003ade:	4b56      	ldr	r3, [pc, #344]	; (8003c38 <__ieee754_pow+0x1d8>)
 8003ae0:	429f      	cmp	r7, r3
 8003ae2:	f000 83b8 	beq.w	8004256 <__ieee754_pow+0x7f6>
 8003ae6:	ec49 8b10 	vmov	d0, r8, r9
 8003aea:	f7ff faed 	bl	80030c8 <fabs>
 8003aee:	ec51 0b10 	vmov	r0, r1, d0
 8003af2:	f1ba 0f00 	cmp.w	sl, #0
 8003af6:	d106      	bne.n	8003b06 <__ieee754_pow+0xa6>
 8003af8:	2c00      	cmp	r4, #0
 8003afa:	d05a      	beq.n	8003bb2 <__ieee754_pow+0x152>
 8003afc:	4b4d      	ldr	r3, [pc, #308]	; (8003c34 <__ieee754_pow+0x1d4>)
 8003afe:	f026 4240 	bic.w	r2, r6, #3221225472	; 0xc0000000
 8003b02:	429a      	cmp	r2, r3
 8003b04:	d055      	beq.n	8003bb2 <__ieee754_pow+0x152>
 8003b06:	0ff6      	lsrs	r6, r6, #31
 8003b08:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
 8003b0c:	ea5b 030a 	orrs.w	r3, fp, sl
 8003b10:	d073      	beq.n	8003bfa <__ieee754_pow+0x19a>
 8003b12:	4b4a      	ldr	r3, [pc, #296]	; (8003c3c <__ieee754_pow+0x1dc>)
 8003b14:	429d      	cmp	r5, r3
 8003b16:	f340 8099 	ble.w	8003c4c <__ieee754_pow+0x1ec>
 8003b1a:	f103 7304 	add.w	r3, r3, #34603008	; 0x2100000
 8003b1e:	429d      	cmp	r5, r3
 8003b20:	f340 8438 	ble.w	8004394 <__ieee754_pow+0x934>
 8003b24:	4b46      	ldr	r3, [pc, #280]	; (8003c40 <__ieee754_pow+0x1e0>)
 8003b26:	429c      	cmp	r4, r3
 8003b28:	dd72      	ble.n	8003c10 <__ieee754_pow+0x1b0>
 8003b2a:	2f00      	cmp	r7, #0
 8003b2c:	dd72      	ble.n	8003c14 <__ieee754_pow+0x1b4>
 8003b2e:	a33e      	add	r3, pc, #248	; (adr r3, 8003c28 <__ieee754_pow+0x1c8>)
 8003b30:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b34:	4610      	mov	r0, r2
 8003b36:	4619      	mov	r1, r3
 8003b38:	f7fc fd1e 	bl	8000578 <__aeabi_dmul>
 8003b3c:	e7ad      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003b3e:	f1b8 0f00 	cmp.w	r8, #0
 8003b42:	d005      	beq.n	8003b50 <__ieee754_pow+0xf0>
 8003b44:	483f      	ldr	r0, [pc, #252]	; (8003c44 <__ieee754_pow+0x1e4>)
 8003b46:	b013      	add	sp, #76	; 0x4c
 8003b48:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003b4c:	f001 be88 	b.w	8005860 <nan>
 8003b50:	42a5      	cmp	r5, r4
 8003b52:	dcf7      	bgt.n	8003b44 <__ieee754_pow+0xe4>
 8003b54:	e7ac      	b.n	8003ab0 <__ieee754_pow+0x50>
 8003b56:	f104 4340 	add.w	r3, r4, #3221225472	; 0xc0000000
 8003b5a:	f503 1380 	add.w	r3, r3, #1048576	; 0x100000
 8003b5e:	ea53 030a 	orrs.w	r3, r3, sl
 8003b62:	d098      	beq.n	8003a96 <__ieee754_pow+0x36>
 8003b64:	4b36      	ldr	r3, [pc, #216]	; (8003c40 <__ieee754_pow+0x1e0>)
 8003b66:	429c      	cmp	r4, r3
 8003b68:	f340 837f 	ble.w	800426a <__ieee754_pow+0x80a>
 8003b6c:	2f00      	cmp	r7, #0
 8003b6e:	db51      	blt.n	8003c14 <__ieee754_pow+0x1b4>
 8003b70:	e9dd 0100 	ldrd	r0, r1, [sp]
 8003b74:	e791      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003b76:	f1bc 0f00 	cmp.w	ip, #0
 8003b7a:	d09c      	beq.n	8003ab6 <__ieee754_pow+0x56>
 8003b7c:	e784      	b.n	8003a88 <__ieee754_pow+0x28>
 8003b7e:	4b32      	ldr	r3, [pc, #200]	; (8003c48 <__ieee754_pow+0x1e8>)
 8003b80:	429d      	cmp	r5, r3
 8003b82:	dc31      	bgt.n	8003be8 <__ieee754_pow+0x188>
 8003b84:	f1a3 7354 	sub.w	r3, r3, #55574528	; 0x3500000
 8003b88:	429d      	cmp	r5, r3
 8003b8a:	dd98      	ble.n	8003abe <__ieee754_pow+0x5e>
 8003b8c:	152b      	asrs	r3, r5, #20
 8003b8e:	f2a3 33ff 	subw	r3, r3, #1023	; 0x3ff
 8003b92:	2b14      	cmp	r3, #20
 8003b94:	f340 83a1 	ble.w	80042da <__ieee754_pow+0x87a>
 8003b98:	f1c3 0334 	rsb	r3, r3, #52	; 0x34
 8003b9c:	fa2c f203 	lsr.w	r2, ip, r3
 8003ba0:	fa02 f303 	lsl.w	r3, r2, r3
 8003ba4:	4563      	cmp	r3, ip
 8003ba6:	d18a      	bne.n	8003abe <__ieee754_pow+0x5e>
 8003ba8:	f002 0201 	and.w	r2, r2, #1
 8003bac:	f1c2 0b02 	rsb	fp, r2, #2
 8003bb0:	e787      	b.n	8003ac2 <__ieee754_pow+0x62>
 8003bb2:	2f00      	cmp	r7, #0
 8003bb4:	da05      	bge.n	8003bc2 <__ieee754_pow+0x162>
 8003bb6:	4602      	mov	r2, r0
 8003bb8:	460b      	mov	r3, r1
 8003bba:	2000      	movs	r0, #0
 8003bbc:	491d      	ldr	r1, [pc, #116]	; (8003c34 <__ieee754_pow+0x1d4>)
 8003bbe:	f7fc fe05 	bl	80007cc <__aeabi_ddiv>
 8003bc2:	2e00      	cmp	r6, #0
 8003bc4:	f6bf af69 	bge.w	8003a9a <__ieee754_pow+0x3a>
 8003bc8:	f104 4440 	add.w	r4, r4, #3221225472	; 0xc0000000
 8003bcc:	f504 1480 	add.w	r4, r4, #1048576	; 0x100000
 8003bd0:	ea54 030b 	orrs.w	r3, r4, fp
 8003bd4:	f000 843a 	beq.w	800444c <__ieee754_pow+0x9ec>
 8003bd8:	f1bb 0f01 	cmp.w	fp, #1
 8003bdc:	f47f af5d 	bne.w	8003a9a <__ieee754_pow+0x3a>
 8003be0:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8003be4:	4619      	mov	r1, r3
 8003be6:	e758      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003be8:	f04f 0b02 	mov.w	fp, #2
 8003bec:	e769      	b.n	8003ac2 <__ieee754_pow+0x62>
 8003bee:	2f00      	cmp	r7, #0
 8003bf0:	f2c0 8344 	blt.w	800427c <__ieee754_pow+0x81c>
 8003bf4:	4640      	mov	r0, r8
 8003bf6:	4649      	mov	r1, r9
 8003bf8:	e74f      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003bfa:	4642      	mov	r2, r8
 8003bfc:	464b      	mov	r3, r9
 8003bfe:	4610      	mov	r0, r2
 8003c00:	4619      	mov	r1, r3
 8003c02:	f7fc fb01 	bl	8000208 <__aeabi_dsub>
 8003c06:	4602      	mov	r2, r0
 8003c08:	460b      	mov	r3, r1
 8003c0a:	f7fc fddf 	bl	80007cc <__aeabi_ddiv>
 8003c0e:	e744      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003c10:	2f00      	cmp	r7, #0
 8003c12:	db8c      	blt.n	8003b2e <__ieee754_pow+0xce>
 8003c14:	2000      	movs	r0, #0
 8003c16:	2100      	movs	r1, #0
 8003c18:	e73f      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003c1a:	4642      	mov	r2, r8
 8003c1c:	464b      	mov	r3, r9
 8003c1e:	4640      	mov	r0, r8
 8003c20:	4649      	mov	r1, r9
 8003c22:	f7fc fca9 	bl	8000578 <__aeabi_dmul>
 8003c26:	e738      	b.n	8003a9a <__ieee754_pow+0x3a>
 8003c28:	8800759c 	.word	0x8800759c
 8003c2c:	7e37e43c 	.word	0x7e37e43c
 8003c30:	7ff00000 	.word	0x7ff00000
 8003c34:	3ff00000 	.word	0x3ff00000
 8003c38:	3fe00000 	.word	0x3fe00000
 8003c3c:	41e00000 	.word	0x41e00000
 8003c40:	3fefffff 	.word	0x3fefffff
 8003c44:	0800abec 	.word	0x0800abec
 8003c48:	433fffff 	.word	0x433fffff
 8003c4c:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 8003c50:	f280 8360 	bge.w	8004314 <__ieee754_pow+0x8b4>
 8003c54:	2200      	movs	r2, #0
 8003c56:	4bd0      	ldr	r3, [pc, #832]	; (8003f98 <__ieee754_pow+0x538>)
 8003c58:	f7fc fc8e 	bl	8000578 <__aeabi_dmul>
 8003c5c:	f06f 0634 	mvn.w	r6, #52	; 0x34
 8003c60:	460c      	mov	r4, r1
 8003c62:	1523      	asrs	r3, r4, #20
 8003c64:	4acd      	ldr	r2, [pc, #820]	; (8003f9c <__ieee754_pow+0x53c>)
 8003c66:	f3c4 0413 	ubfx	r4, r4, #0, #20
 8003c6a:	f2a3 33ff 	subw	r3, r3, #1023	; 0x3ff
 8003c6e:	f044 557f 	orr.w	r5, r4, #1069547520	; 0x3fc00000
 8003c72:	199e      	adds	r6, r3, r6
 8003c74:	4294      	cmp	r4, r2
 8003c76:	960d      	str	r6, [sp, #52]	; 0x34
 8003c78:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 8003c7c:	f340 833d 	ble.w	80042fa <__ieee754_pow+0x89a>
 8003c80:	4bc7      	ldr	r3, [pc, #796]	; (8003fa0 <__ieee754_pow+0x540>)
 8003c82:	429c      	cmp	r4, r3
 8003c84:	f340 8401 	ble.w	800448a <__ieee754_pow+0xa2a>
 8003c88:	ed9f 7bad 	vldr	d7, [pc, #692]	; 8003f40 <__ieee754_pow+0x4e0>
 8003c8c:	ed8d 7b08 	vstr	d7, [sp, #32]
 8003c90:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8003c94:	ed9f 7bac 	vldr	d7, [pc, #688]	; 8003f48 <__ieee754_pow+0x4e8>
 8003c98:	ed8d 7b06 	vstr	d7, [sp, #24]
 8003c9c:	3601      	adds	r6, #1
 8003c9e:	960d      	str	r6, [sp, #52]	; 0x34
 8003ca0:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8003ca4:	f04f 0800 	mov.w	r8, #0
 8003ca8:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003cac:	4629      	mov	r1, r5
 8003cae:	4606      	mov	r6, r0
 8003cb0:	f7fc faaa 	bl	8000208 <__aeabi_dsub>
 8003cb4:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003cb8:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8003cbc:	4630      	mov	r0, r6
 8003cbe:	4629      	mov	r1, r5
 8003cc0:	f7fc faa4 	bl	800020c <__adddf3>
 8003cc4:	4602      	mov	r2, r0
 8003cc6:	460b      	mov	r3, r1
 8003cc8:	2000      	movs	r0, #0
 8003cca:	49b6      	ldr	r1, [pc, #728]	; (8003fa4 <__ieee754_pow+0x544>)
 8003ccc:	f7fc fd7e 	bl	80007cc <__aeabi_ddiv>
 8003cd0:	4603      	mov	r3, r0
 8003cd2:	460c      	mov	r4, r1
 8003cd4:	e9cd 340e 	strd	r3, r4, [sp, #56]	; 0x38
 8003cd8:	4602      	mov	r2, r0
 8003cda:	460b      	mov	r3, r1
 8003cdc:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8003ce0:	f7fc fc4a 	bl	8000578 <__aeabi_dmul>
 8003ce4:	106b      	asrs	r3, r5, #1
 8003ce6:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8003cea:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8003cee:	460a      	mov	r2, r1
 8003cf0:	462f      	mov	r7, r5
 8003cf2:	4601      	mov	r1, r0
 8003cf4:	eb03 0508 	add.w	r5, r3, r8
 8003cf8:	2300      	movs	r3, #0
 8003cfa:	e9cd 1202 	strd	r1, r2, [sp, #8]
 8003cfe:	9302      	str	r3, [sp, #8]
 8003d00:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
 8003d04:	2400      	movs	r4, #0
 8003d06:	e9cd 1204 	strd	r1, r2, [sp, #16]
 8003d0a:	462b      	mov	r3, r5
 8003d0c:	4622      	mov	r2, r4
 8003d0e:	4640      	mov	r0, r8
 8003d10:	4649      	mov	r1, r9
 8003d12:	f7fc fc31 	bl	8000578 <__aeabi_dmul>
 8003d16:	4602      	mov	r2, r0
 8003d18:	460b      	mov	r3, r1
 8003d1a:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8003d1e:	f7fc fa73 	bl	8000208 <__aeabi_dsub>
 8003d22:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003d26:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8003d2a:	4620      	mov	r0, r4
 8003d2c:	4629      	mov	r1, r5
 8003d2e:	f7fc fa6b 	bl	8000208 <__aeabi_dsub>
 8003d32:	4602      	mov	r2, r0
 8003d34:	460b      	mov	r3, r1
 8003d36:	4630      	mov	r0, r6
 8003d38:	4639      	mov	r1, r7
 8003d3a:	f7fc fa65 	bl	8000208 <__aeabi_dsub>
 8003d3e:	4642      	mov	r2, r8
 8003d40:	464b      	mov	r3, r9
 8003d42:	f7fc fc19 	bl	8000578 <__aeabi_dmul>
 8003d46:	4602      	mov	r2, r0
 8003d48:	460b      	mov	r3, r1
 8003d4a:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8003d4e:	f7fc fa5b 	bl	8000208 <__aeabi_dsub>
 8003d52:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 8003d56:	f7fc fc0f 	bl	8000578 <__aeabi_dmul>
 8003d5a:	e9dd 4504 	ldrd	r4, r5, [sp, #16]
 8003d5e:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003d62:	4622      	mov	r2, r4
 8003d64:	462b      	mov	r3, r5
 8003d66:	4620      	mov	r0, r4
 8003d68:	4629      	mov	r1, r5
 8003d6a:	f7fc fc05 	bl	8000578 <__aeabi_dmul>
 8003d6e:	a378      	add	r3, pc, #480	; (adr r3, 8003f50 <__ieee754_pow+0x4f0>)
 8003d70:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d74:	4604      	mov	r4, r0
 8003d76:	460d      	mov	r5, r1
 8003d78:	f7fc fbfe 	bl	8000578 <__aeabi_dmul>
 8003d7c:	a376      	add	r3, pc, #472	; (adr r3, 8003f58 <__ieee754_pow+0x4f8>)
 8003d7e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d82:	f7fc fa43 	bl	800020c <__adddf3>
 8003d86:	4622      	mov	r2, r4
 8003d88:	462b      	mov	r3, r5
 8003d8a:	f7fc fbf5 	bl	8000578 <__aeabi_dmul>
 8003d8e:	a374      	add	r3, pc, #464	; (adr r3, 8003f60 <__ieee754_pow+0x500>)
 8003d90:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d94:	f7fc fa3a 	bl	800020c <__adddf3>
 8003d98:	4622      	mov	r2, r4
 8003d9a:	462b      	mov	r3, r5
 8003d9c:	f7fc fbec 	bl	8000578 <__aeabi_dmul>
 8003da0:	a371      	add	r3, pc, #452	; (adr r3, 8003f68 <__ieee754_pow+0x508>)
 8003da2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003da6:	f7fc fa31 	bl	800020c <__adddf3>
 8003daa:	4622      	mov	r2, r4
 8003dac:	462b      	mov	r3, r5
 8003dae:	f7fc fbe3 	bl	8000578 <__aeabi_dmul>
 8003db2:	a36f      	add	r3, pc, #444	; (adr r3, 8003f70 <__ieee754_pow+0x510>)
 8003db4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003db8:	f7fc fa28 	bl	800020c <__adddf3>
 8003dbc:	4622      	mov	r2, r4
 8003dbe:	462b      	mov	r3, r5
 8003dc0:	f7fc fbda 	bl	8000578 <__aeabi_dmul>
 8003dc4:	a36c      	add	r3, pc, #432	; (adr r3, 8003f78 <__ieee754_pow+0x518>)
 8003dc6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003dca:	f7fc fa1f 	bl	800020c <__adddf3>
 8003dce:	4622      	mov	r2, r4
 8003dd0:	4606      	mov	r6, r0
 8003dd2:	460f      	mov	r7, r1
 8003dd4:	462b      	mov	r3, r5
 8003dd6:	4620      	mov	r0, r4
 8003dd8:	4629      	mov	r1, r5
 8003dda:	f7fc fbcd 	bl	8000578 <__aeabi_dmul>
 8003dde:	4602      	mov	r2, r0
 8003de0:	460b      	mov	r3, r1
 8003de2:	4630      	mov	r0, r6
 8003de4:	4639      	mov	r1, r7
 8003de6:	f7fc fbc7 	bl	8000578 <__aeabi_dmul>
 8003dea:	4642      	mov	r2, r8
 8003dec:	4604      	mov	r4, r0
 8003dee:	460d      	mov	r5, r1
 8003df0:	464b      	mov	r3, r9
 8003df2:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003df6:	f7fc fa09 	bl	800020c <__adddf3>
 8003dfa:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003dfe:	f7fc fbbb 	bl	8000578 <__aeabi_dmul>
 8003e02:	4622      	mov	r2, r4
 8003e04:	462b      	mov	r3, r5
 8003e06:	f7fc fa01 	bl	800020c <__adddf3>
 8003e0a:	4642      	mov	r2, r8
 8003e0c:	4606      	mov	r6, r0
 8003e0e:	460f      	mov	r7, r1
 8003e10:	464b      	mov	r3, r9
 8003e12:	4640      	mov	r0, r8
 8003e14:	4649      	mov	r1, r9
 8003e16:	f7fc fbaf 	bl	8000578 <__aeabi_dmul>
 8003e1a:	2200      	movs	r2, #0
 8003e1c:	4b62      	ldr	r3, [pc, #392]	; (8003fa8 <__ieee754_pow+0x548>)
 8003e1e:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8003e22:	f7fc f9f3 	bl	800020c <__adddf3>
 8003e26:	4632      	mov	r2, r6
 8003e28:	463b      	mov	r3, r7
 8003e2a:	f7fc f9ef 	bl	800020c <__adddf3>
 8003e2e:	9802      	ldr	r0, [sp, #8]
 8003e30:	460d      	mov	r5, r1
 8003e32:	4604      	mov	r4, r0
 8003e34:	4622      	mov	r2, r4
 8003e36:	462b      	mov	r3, r5
 8003e38:	4640      	mov	r0, r8
 8003e3a:	4649      	mov	r1, r9
 8003e3c:	f7fc fb9c 	bl	8000578 <__aeabi_dmul>
 8003e40:	2200      	movs	r2, #0
 8003e42:	4680      	mov	r8, r0
 8003e44:	4689      	mov	r9, r1
 8003e46:	4b58      	ldr	r3, [pc, #352]	; (8003fa8 <__ieee754_pow+0x548>)
 8003e48:	4620      	mov	r0, r4
 8003e4a:	4629      	mov	r1, r5
 8003e4c:	f7fc f9dc 	bl	8000208 <__aeabi_dsub>
 8003e50:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8003e54:	f7fc f9d8 	bl	8000208 <__aeabi_dsub>
 8003e58:	4602      	mov	r2, r0
 8003e5a:	460b      	mov	r3, r1
 8003e5c:	4630      	mov	r0, r6
 8003e5e:	4639      	mov	r1, r7
 8003e60:	f7fc f9d2 	bl	8000208 <__aeabi_dsub>
 8003e64:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003e68:	f7fc fb86 	bl	8000578 <__aeabi_dmul>
 8003e6c:	4622      	mov	r2, r4
 8003e6e:	4606      	mov	r6, r0
 8003e70:	460f      	mov	r7, r1
 8003e72:	462b      	mov	r3, r5
 8003e74:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003e78:	f7fc fb7e 	bl	8000578 <__aeabi_dmul>
 8003e7c:	4602      	mov	r2, r0
 8003e7e:	460b      	mov	r3, r1
 8003e80:	4630      	mov	r0, r6
 8003e82:	4639      	mov	r1, r7
 8003e84:	f7fc f9c2 	bl	800020c <__adddf3>
 8003e88:	4606      	mov	r6, r0
 8003e8a:	460f      	mov	r7, r1
 8003e8c:	4602      	mov	r2, r0
 8003e8e:	460b      	mov	r3, r1
 8003e90:	4640      	mov	r0, r8
 8003e92:	4649      	mov	r1, r9
 8003e94:	f7fc f9ba 	bl	800020c <__adddf3>
 8003e98:	9802      	ldr	r0, [sp, #8]
 8003e9a:	a339      	add	r3, pc, #228	; (adr r3, 8003f80 <__ieee754_pow+0x520>)
 8003e9c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003ea0:	4604      	mov	r4, r0
 8003ea2:	460d      	mov	r5, r1
 8003ea4:	f7fc fb68 	bl	8000578 <__aeabi_dmul>
 8003ea8:	4642      	mov	r2, r8
 8003eaa:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8003eae:	464b      	mov	r3, r9
 8003eb0:	4620      	mov	r0, r4
 8003eb2:	4629      	mov	r1, r5
 8003eb4:	f7fc f9a8 	bl	8000208 <__aeabi_dsub>
 8003eb8:	4602      	mov	r2, r0
 8003eba:	460b      	mov	r3, r1
 8003ebc:	4630      	mov	r0, r6
 8003ebe:	4639      	mov	r1, r7
 8003ec0:	f7fc f9a2 	bl	8000208 <__aeabi_dsub>
 8003ec4:	a330      	add	r3, pc, #192	; (adr r3, 8003f88 <__ieee754_pow+0x528>)
 8003ec6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003eca:	f7fc fb55 	bl	8000578 <__aeabi_dmul>
 8003ece:	a330      	add	r3, pc, #192	; (adr r3, 8003f90 <__ieee754_pow+0x530>)
 8003ed0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003ed4:	4606      	mov	r6, r0
 8003ed6:	460f      	mov	r7, r1
 8003ed8:	4620      	mov	r0, r4
 8003eda:	4629      	mov	r1, r5
 8003edc:	f7fc fb4c 	bl	8000578 <__aeabi_dmul>
 8003ee0:	4602      	mov	r2, r0
 8003ee2:	460b      	mov	r3, r1
 8003ee4:	4630      	mov	r0, r6
 8003ee6:	4639      	mov	r1, r7
 8003ee8:	f7fc f990 	bl	800020c <__adddf3>
 8003eec:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003ef0:	f7fc f98c 	bl	800020c <__adddf3>
 8003ef4:	4606      	mov	r6, r0
 8003ef6:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003ef8:	460f      	mov	r7, r1
 8003efa:	f7fc fad3 	bl	80004a4 <__aeabi_i2d>
 8003efe:	4632      	mov	r2, r6
 8003f00:	4680      	mov	r8, r0
 8003f02:	4689      	mov	r9, r1
 8003f04:	463b      	mov	r3, r7
 8003f06:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003f0a:	f7fc f97f 	bl	800020c <__adddf3>
 8003f0e:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 8003f12:	f7fc f97b 	bl	800020c <__adddf3>
 8003f16:	4642      	mov	r2, r8
 8003f18:	464b      	mov	r3, r9
 8003f1a:	f7fc f977 	bl	800020c <__adddf3>
 8003f1e:	9802      	ldr	r0, [sp, #8]
 8003f20:	4642      	mov	r2, r8
 8003f22:	464b      	mov	r3, r9
 8003f24:	4604      	mov	r4, r0
 8003f26:	460d      	mov	r5, r1
 8003f28:	f7fc f96e 	bl	8000208 <__aeabi_dsub>
 8003f2c:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 8003f30:	f7fc f96a 	bl	8000208 <__aeabi_dsub>
 8003f34:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003f38:	e038      	b.n	8003fac <__ieee754_pow+0x54c>
 8003f3a:	bf00      	nop
 8003f3c:	f3af 8000 	nop.w
	...
 8003f4c:	3ff00000 	.word	0x3ff00000
 8003f50:	4a454eef 	.word	0x4a454eef
 8003f54:	3fca7e28 	.word	0x3fca7e28
 8003f58:	93c9db65 	.word	0x93c9db65
 8003f5c:	3fcd864a 	.word	0x3fcd864a
 8003f60:	a91d4101 	.word	0xa91d4101
 8003f64:	3fd17460 	.word	0x3fd17460
 8003f68:	518f264d 	.word	0x518f264d
 8003f6c:	3fd55555 	.word	0x3fd55555
 8003f70:	db6fabff 	.word	0xdb6fabff
 8003f74:	3fdb6db6 	.word	0x3fdb6db6
 8003f78:	33333303 	.word	0x33333303
 8003f7c:	3fe33333 	.word	0x3fe33333
 8003f80:	e0000000 	.word	0xe0000000
 8003f84:	3feec709 	.word	0x3feec709
 8003f88:	dc3a03fd 	.word	0xdc3a03fd
 8003f8c:	3feec709 	.word	0x3feec709
 8003f90:	145b01f5 	.word	0x145b01f5
 8003f94:	be3e2fe0 	.word	0xbe3e2fe0
 8003f98:	43400000 	.word	0x43400000
 8003f9c:	0003988e 	.word	0x0003988e
 8003fa0:	000bb679 	.word	0x000bb679
 8003fa4:	3ff00000 	.word	0x3ff00000
 8003fa8:	40080000 	.word	0x40080000
 8003fac:	f7fc f92c 	bl	8000208 <__aeabi_dsub>
 8003fb0:	460b      	mov	r3, r1
 8003fb2:	4602      	mov	r2, r0
 8003fb4:	4639      	mov	r1, r7
 8003fb6:	4630      	mov	r0, r6
 8003fb8:	f7fc f926 	bl	8000208 <__aeabi_dsub>
 8003fbc:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8003fc0:	ea53 030a 	orrs.w	r3, r3, sl
 8003fc4:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8003fc8:	f000 815f 	beq.w	800428a <__ieee754_pow+0x82a>
 8003fcc:	ed9f 7bd2 	vldr	d7, [pc, #840]	; 8004318 <__ieee754_pow+0x8b8>
 8003fd0:	ed8d 7b02 	vstr	d7, [sp, #8]
 8003fd4:	e9dd ab00 	ldrd	sl, fp, [sp]
 8003fd8:	2300      	movs	r3, #0
 8003fda:	4656      	mov	r6, sl
 8003fdc:	465f      	mov	r7, fp
 8003fde:	e9cd 6700 	strd	r6, r7, [sp]
 8003fe2:	9300      	str	r3, [sp, #0]
 8003fe4:	e9dd 6700 	ldrd	r6, r7, [sp]
 8003fe8:	4650      	mov	r0, sl
 8003fea:	4632      	mov	r2, r6
 8003fec:	463b      	mov	r3, r7
 8003fee:	4659      	mov	r1, fp
 8003ff0:	f7fc f90a 	bl	8000208 <__aeabi_dsub>
 8003ff4:	4622      	mov	r2, r4
 8003ff6:	462b      	mov	r3, r5
 8003ff8:	f7fc fabe 	bl	8000578 <__aeabi_dmul>
 8003ffc:	4652      	mov	r2, sl
 8003ffe:	4680      	mov	r8, r0
 8004000:	4689      	mov	r9, r1
 8004002:	465b      	mov	r3, fp
 8004004:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8004008:	f7fc fab6 	bl	8000578 <__aeabi_dmul>
 800400c:	4602      	mov	r2, r0
 800400e:	460b      	mov	r3, r1
 8004010:	4640      	mov	r0, r8
 8004012:	4649      	mov	r1, r9
 8004014:	f7fc f8fa 	bl	800020c <__adddf3>
 8004018:	4632      	mov	r2, r6
 800401a:	4680      	mov	r8, r0
 800401c:	4689      	mov	r9, r1
 800401e:	463b      	mov	r3, r7
 8004020:	4620      	mov	r0, r4
 8004022:	4629      	mov	r1, r5
 8004024:	e9cd 8904 	strd	r8, r9, [sp, #16]
 8004028:	f7fc faa6 	bl	8000578 <__aeabi_dmul>
 800402c:	460b      	mov	r3, r1
 800402e:	4602      	mov	r2, r0
 8004030:	4606      	mov	r6, r0
 8004032:	460f      	mov	r7, r1
 8004034:	4640      	mov	r0, r8
 8004036:	4649      	mov	r1, r9
 8004038:	f7fc f8e8 	bl	800020c <__adddf3>
 800403c:	4bd0      	ldr	r3, [pc, #832]	; (8004380 <__ieee754_pow+0x920>)
 800403e:	4299      	cmp	r1, r3
 8004040:	4604      	mov	r4, r0
 8004042:	460d      	mov	r5, r1
 8004044:	468a      	mov	sl, r1
 8004046:	f340 8125 	ble.w	8004294 <__ieee754_pow+0x834>
 800404a:	f101 433f 	add.w	r3, r1, #3204448256	; 0xbf000000
 800404e:	f503 03e0 	add.w	r3, r3, #7340032	; 0x700000
 8004052:	4303      	orrs	r3, r0
 8004054:	f040 81fe 	bne.w	8004454 <__ieee754_pow+0x9f4>
 8004058:	a3b1      	add	r3, pc, #708	; (adr r3, 8004320 <__ieee754_pow+0x8c0>)
 800405a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800405e:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8004062:	f7fc f8d3 	bl	800020c <__adddf3>
 8004066:	4632      	mov	r2, r6
 8004068:	4680      	mov	r8, r0
 800406a:	4689      	mov	r9, r1
 800406c:	463b      	mov	r3, r7
 800406e:	4620      	mov	r0, r4
 8004070:	4629      	mov	r1, r5
 8004072:	f7fc f8c9 	bl	8000208 <__aeabi_dsub>
 8004076:	4602      	mov	r2, r0
 8004078:	460b      	mov	r3, r1
 800407a:	4640      	mov	r0, r8
 800407c:	4649      	mov	r1, r9
 800407e:	f7fc fd0b 	bl	8000a98 <__aeabi_dcmpgt>
 8004082:	2800      	cmp	r0, #0
 8004084:	f040 81e6 	bne.w	8004454 <__ieee754_pow+0x9f4>
 8004088:	46a8      	mov	r8, r5
 800408a:	ea4f 5328 	mov.w	r3, r8, asr #20
 800408e:	f2a3 32fe 	subw	r2, r3, #1022	; 0x3fe
 8004092:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 8004096:	4113      	asrs	r3, r2
 8004098:	4453      	add	r3, sl
 800409a:	f3c3 520a 	ubfx	r2, r3, #20, #11
 800409e:	4db9      	ldr	r5, [pc, #740]	; (8004384 <__ieee754_pow+0x924>)
 80040a0:	f2a2 32ff 	subw	r2, r2, #1023	; 0x3ff
 80040a4:	4115      	asrs	r5, r2
 80040a6:	f3c3 0413 	ubfx	r4, r3, #0, #20
 80040aa:	ea23 0105 	bic.w	r1, r3, r5
 80040ae:	2000      	movs	r0, #0
 80040b0:	f1c2 0b14 	rsb	fp, r2, #20
 80040b4:	f444 1480 	orr.w	r4, r4, #1048576	; 0x100000
 80040b8:	f1ba 0f00 	cmp.w	sl, #0
 80040bc:	4602      	mov	r2, r0
 80040be:	460b      	mov	r3, r1
 80040c0:	fa44 fb0b 	asr.w	fp, r4, fp
 80040c4:	4630      	mov	r0, r6
 80040c6:	4639      	mov	r1, r7
 80040c8:	bfb8      	it	lt
 80040ca:	f1cb 0b00 	rsblt	fp, fp, #0
 80040ce:	f7fc f89b 	bl	8000208 <__aeabi_dsub>
 80040d2:	4606      	mov	r6, r0
 80040d4:	460f      	mov	r7, r1
 80040d6:	4632      	mov	r2, r6
 80040d8:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 80040dc:	463b      	mov	r3, r7
 80040de:	f7fc f895 	bl	800020c <__adddf3>
 80040e2:	ea4f 5a0b 	mov.w	sl, fp, lsl #20
 80040e6:	460d      	mov	r5, r1
 80040e8:	2400      	movs	r4, #0
 80040ea:	a38f      	add	r3, pc, #572	; (adr r3, 8004328 <__ieee754_pow+0x8c8>)
 80040ec:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040f0:	4620      	mov	r0, r4
 80040f2:	4629      	mov	r1, r5
 80040f4:	f7fc fa40 	bl	8000578 <__aeabi_dmul>
 80040f8:	4632      	mov	r2, r6
 80040fa:	4680      	mov	r8, r0
 80040fc:	4689      	mov	r9, r1
 80040fe:	463b      	mov	r3, r7
 8004100:	4620      	mov	r0, r4
 8004102:	4629      	mov	r1, r5
 8004104:	f7fc f880 	bl	8000208 <__aeabi_dsub>
 8004108:	4602      	mov	r2, r0
 800410a:	460b      	mov	r3, r1
 800410c:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8004110:	f7fc f87a 	bl	8000208 <__aeabi_dsub>
 8004114:	a386      	add	r3, pc, #536	; (adr r3, 8004330 <__ieee754_pow+0x8d0>)
 8004116:	e9d3 2300 	ldrd	r2, r3, [r3]
 800411a:	f7fc fa2d 	bl	8000578 <__aeabi_dmul>
 800411e:	a386      	add	r3, pc, #536	; (adr r3, 8004338 <__ieee754_pow+0x8d8>)
 8004120:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004124:	4606      	mov	r6, r0
 8004126:	460f      	mov	r7, r1
 8004128:	4620      	mov	r0, r4
 800412a:	4629      	mov	r1, r5
 800412c:	f7fc fa24 	bl	8000578 <__aeabi_dmul>
 8004130:	4602      	mov	r2, r0
 8004132:	460b      	mov	r3, r1
 8004134:	4630      	mov	r0, r6
 8004136:	4639      	mov	r1, r7
 8004138:	f7fc f868 	bl	800020c <__adddf3>
 800413c:	4606      	mov	r6, r0
 800413e:	460f      	mov	r7, r1
 8004140:	4602      	mov	r2, r0
 8004142:	460b      	mov	r3, r1
 8004144:	4640      	mov	r0, r8
 8004146:	4649      	mov	r1, r9
 8004148:	f7fc f860 	bl	800020c <__adddf3>
 800414c:	4642      	mov	r2, r8
 800414e:	464b      	mov	r3, r9
 8004150:	4604      	mov	r4, r0
 8004152:	460d      	mov	r5, r1
 8004154:	f7fc f858 	bl	8000208 <__aeabi_dsub>
 8004158:	4602      	mov	r2, r0
 800415a:	460b      	mov	r3, r1
 800415c:	4630      	mov	r0, r6
 800415e:	4639      	mov	r1, r7
 8004160:	f7fc f852 	bl	8000208 <__aeabi_dsub>
 8004164:	4622      	mov	r2, r4
 8004166:	4680      	mov	r8, r0
 8004168:	4689      	mov	r9, r1
 800416a:	462b      	mov	r3, r5
 800416c:	4620      	mov	r0, r4
 800416e:	4629      	mov	r1, r5
 8004170:	f7fc fa02 	bl	8000578 <__aeabi_dmul>
 8004174:	a372      	add	r3, pc, #456	; (adr r3, 8004340 <__ieee754_pow+0x8e0>)
 8004176:	e9d3 2300 	ldrd	r2, r3, [r3]
 800417a:	4606      	mov	r6, r0
 800417c:	460f      	mov	r7, r1
 800417e:	f7fc f9fb 	bl	8000578 <__aeabi_dmul>
 8004182:	a371      	add	r3, pc, #452	; (adr r3, 8004348 <__ieee754_pow+0x8e8>)
 8004184:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004188:	f7fc f83e 	bl	8000208 <__aeabi_dsub>
 800418c:	4632      	mov	r2, r6
 800418e:	463b      	mov	r3, r7
 8004190:	f7fc f9f2 	bl	8000578 <__aeabi_dmul>
 8004194:	a36e      	add	r3, pc, #440	; (adr r3, 8004350 <__ieee754_pow+0x8f0>)
 8004196:	e9d3 2300 	ldrd	r2, r3, [r3]
 800419a:	f7fc f837 	bl	800020c <__adddf3>
 800419e:	4632      	mov	r2, r6
 80041a0:	463b      	mov	r3, r7
 80041a2:	f7fc f9e9 	bl	8000578 <__aeabi_dmul>
 80041a6:	a36c      	add	r3, pc, #432	; (adr r3, 8004358 <__ieee754_pow+0x8f8>)
 80041a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041ac:	f7fc f82c 	bl	8000208 <__aeabi_dsub>
 80041b0:	4632      	mov	r2, r6
 80041b2:	463b      	mov	r3, r7
 80041b4:	f7fc f9e0 	bl	8000578 <__aeabi_dmul>
 80041b8:	a369      	add	r3, pc, #420	; (adr r3, 8004360 <__ieee754_pow+0x900>)
 80041ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041be:	f7fc f825 	bl	800020c <__adddf3>
 80041c2:	4632      	mov	r2, r6
 80041c4:	463b      	mov	r3, r7
 80041c6:	f7fc f9d7 	bl	8000578 <__aeabi_dmul>
 80041ca:	4602      	mov	r2, r0
 80041cc:	460b      	mov	r3, r1
 80041ce:	4620      	mov	r0, r4
 80041d0:	4629      	mov	r1, r5
 80041d2:	f7fc f819 	bl	8000208 <__aeabi_dsub>
 80041d6:	4606      	mov	r6, r0
 80041d8:	460f      	mov	r7, r1
 80041da:	4602      	mov	r2, r0
 80041dc:	460b      	mov	r3, r1
 80041de:	4620      	mov	r0, r4
 80041e0:	4629      	mov	r1, r5
 80041e2:	f7fc f9c9 	bl	8000578 <__aeabi_dmul>
 80041e6:	2200      	movs	r2, #0
 80041e8:	e9cd 0100 	strd	r0, r1, [sp]
 80041ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80041f0:	4630      	mov	r0, r6
 80041f2:	4639      	mov	r1, r7
 80041f4:	f7fc f808 	bl	8000208 <__aeabi_dsub>
 80041f8:	4602      	mov	r2, r0
 80041fa:	460b      	mov	r3, r1
 80041fc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004200:	f7fc fae4 	bl	80007cc <__aeabi_ddiv>
 8004204:	4642      	mov	r2, r8
 8004206:	4606      	mov	r6, r0
 8004208:	460f      	mov	r7, r1
 800420a:	464b      	mov	r3, r9
 800420c:	4620      	mov	r0, r4
 800420e:	4629      	mov	r1, r5
 8004210:	f7fc f9b2 	bl	8000578 <__aeabi_dmul>
 8004214:	4642      	mov	r2, r8
 8004216:	464b      	mov	r3, r9
 8004218:	f7fb fff8 	bl	800020c <__adddf3>
 800421c:	4602      	mov	r2, r0
 800421e:	460b      	mov	r3, r1
 8004220:	4630      	mov	r0, r6
 8004222:	4639      	mov	r1, r7
 8004224:	f7fb fff0 	bl	8000208 <__aeabi_dsub>
 8004228:	4622      	mov	r2, r4
 800422a:	462b      	mov	r3, r5
 800422c:	f7fb ffec 	bl	8000208 <__aeabi_dsub>
 8004230:	4602      	mov	r2, r0
 8004232:	460b      	mov	r3, r1
 8004234:	2000      	movs	r0, #0
 8004236:	4954      	ldr	r1, [pc, #336]	; (8004388 <__ieee754_pow+0x928>)
 8004238:	f7fb ffe6 	bl	8000208 <__aeabi_dsub>
 800423c:	448a      	add	sl, r1
 800423e:	f5ba 1f80 	cmp.w	sl, #1048576	; 0x100000
 8004242:	4602      	mov	r2, r0
 8004244:	460b      	mov	r3, r1
 8004246:	f2c0 8130 	blt.w	80044aa <__ieee754_pow+0xa4a>
 800424a:	4651      	mov	r1, sl
 800424c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004250:	f7fc f992 	bl	8000578 <__aeabi_dmul>
 8004254:	e421      	b.n	8003a9a <__ieee754_pow+0x3a>
 8004256:	2e00      	cmp	r6, #0
 8004258:	f6ff ac45 	blt.w	8003ae6 <__ieee754_pow+0x86>
 800425c:	ec49 8b10 	vmov	d0, r8, r9
 8004260:	b013      	add	sp, #76	; 0x4c
 8004262:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004266:	f000 bb81 	b.w	800496c <__ieee754_sqrt>
 800426a:	2f00      	cmp	r7, #0
 800426c:	f6bf acd2 	bge.w	8003c14 <__ieee754_pow+0x1b4>
 8004270:	e9dd 3400 	ldrd	r3, r4, [sp]
 8004274:	4618      	mov	r0, r3
 8004276:	f104 4100 	add.w	r1, r4, #2147483648	; 0x80000000
 800427a:	e40e      	b.n	8003a9a <__ieee754_pow+0x3a>
 800427c:	4642      	mov	r2, r8
 800427e:	464b      	mov	r3, r9
 8004280:	2000      	movs	r0, #0
 8004282:	4941      	ldr	r1, [pc, #260]	; (8004388 <__ieee754_pow+0x928>)
 8004284:	f7fc faa2 	bl	80007cc <__aeabi_ddiv>
 8004288:	e407      	b.n	8003a9a <__ieee754_pow+0x3a>
 800428a:	ed9f 7b37 	vldr	d7, [pc, #220]	; 8004368 <__ieee754_pow+0x908>
 800428e:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004292:	e69f      	b.n	8003fd4 <__ieee754_pow+0x574>
 8004294:	4b3d      	ldr	r3, [pc, #244]	; (800438c <__ieee754_pow+0x92c>)
 8004296:	f021 4800 	bic.w	r8, r1, #2147483648	; 0x80000000
 800429a:	4598      	cmp	r8, r3
 800429c:	f340 80e8 	ble.w	8004470 <__ieee754_pow+0xa10>
 80042a0:	4b3b      	ldr	r3, [pc, #236]	; (8004390 <__ieee754_pow+0x930>)
 80042a2:	440b      	add	r3, r1
 80042a4:	4303      	orrs	r3, r0
 80042a6:	d10a      	bne.n	80042be <__ieee754_pow+0x85e>
 80042a8:	4632      	mov	r2, r6
 80042aa:	463b      	mov	r3, r7
 80042ac:	f7fb ffac 	bl	8000208 <__aeabi_dsub>
 80042b0:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 80042b4:	f7fc fbe6 	bl	8000a84 <__aeabi_dcmpge>
 80042b8:	2800      	cmp	r0, #0
 80042ba:	f43f aee6 	beq.w	800408a <__ieee754_pow+0x62a>
 80042be:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80042c2:	a32b      	add	r3, pc, #172	; (adr r3, 8004370 <__ieee754_pow+0x910>)
 80042c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042c8:	f7fc f956 	bl	8000578 <__aeabi_dmul>
 80042cc:	a328      	add	r3, pc, #160	; (adr r3, 8004370 <__ieee754_pow+0x910>)
 80042ce:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042d2:	f7fc f951 	bl	8000578 <__aeabi_dmul>
 80042d6:	f7ff bbe0 	b.w	8003a9a <__ieee754_pow+0x3a>
 80042da:	f1bc 0f00 	cmp.w	ip, #0
 80042de:	f040 80d0 	bne.w	8004482 <__ieee754_pow+0xa22>
 80042e2:	f1c3 0314 	rsb	r3, r3, #20
 80042e6:	fa45 f203 	asr.w	r2, r5, r3
 80042ea:	fa02 f303 	lsl.w	r3, r2, r3
 80042ee:	42ab      	cmp	r3, r5
 80042f0:	f000 80e3 	beq.w	80044ba <__ieee754_pow+0xa5a>
 80042f4:	46e3      	mov	fp, ip
 80042f6:	f7ff bbea 	b.w	8003ace <__ieee754_pow+0x6e>
 80042fa:	ed9f 7b1f 	vldr	d7, [pc, #124]	; 8004378 <__ieee754_pow+0x918>
 80042fe:	ed8d 7b08 	vstr	d7, [sp, #32]
 8004302:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004306:	ed9f 7b04 	vldr	d7, [pc, #16]	; 8004318 <__ieee754_pow+0x8b8>
 800430a:	f04f 0800 	mov.w	r8, #0
 800430e:	ed8d 7b06 	vstr	d7, [sp, #24]
 8004312:	e4c9      	b.n	8003ca8 <__ieee754_pow+0x248>
 8004314:	2600      	movs	r6, #0
 8004316:	e4a4      	b.n	8003c62 <__ieee754_pow+0x202>
 8004318:	00000000 	.word	0x00000000
 800431c:	3ff00000 	.word	0x3ff00000
 8004320:	652b82fe 	.word	0x652b82fe
 8004324:	3c971547 	.word	0x3c971547
 8004328:	00000000 	.word	0x00000000
 800432c:	3fe62e43 	.word	0x3fe62e43
 8004330:	fefa39ef 	.word	0xfefa39ef
 8004334:	3fe62e42 	.word	0x3fe62e42
 8004338:	0ca86c39 	.word	0x0ca86c39
 800433c:	be205c61 	.word	0xbe205c61
 8004340:	72bea4d0 	.word	0x72bea4d0
 8004344:	3e663769 	.word	0x3e663769
 8004348:	c5d26bf1 	.word	0xc5d26bf1
 800434c:	3ebbbd41 	.word	0x3ebbbd41
 8004350:	af25de2c 	.word	0xaf25de2c
 8004354:	3f11566a 	.word	0x3f11566a
 8004358:	16bebd93 	.word	0x16bebd93
 800435c:	3f66c16c 	.word	0x3f66c16c
 8004360:	5555553e 	.word	0x5555553e
 8004364:	3fc55555 	.word	0x3fc55555
 8004368:	00000000 	.word	0x00000000
 800436c:	bff00000 	.word	0xbff00000
 8004370:	c2f8f359 	.word	0xc2f8f359
 8004374:	01a56e1f 	.word	0x01a56e1f
	...
 8004380:	408fffff 	.word	0x408fffff
 8004384:	000fffff 	.word	0x000fffff
 8004388:	3ff00000 	.word	0x3ff00000
 800438c:	4090cbff 	.word	0x4090cbff
 8004390:	3f6f3400 	.word	0x3f6f3400
 8004394:	4b5c      	ldr	r3, [pc, #368]	; (8004508 <__ieee754_pow+0xaa8>)
 8004396:	429c      	cmp	r4, r3
 8004398:	f77f ac3a 	ble.w	8003c10 <__ieee754_pow+0x1b0>
 800439c:	4b5b      	ldr	r3, [pc, #364]	; (800450c <__ieee754_pow+0xaac>)
 800439e:	429c      	cmp	r4, r3
 80043a0:	f73f abc3 	bgt.w	8003b2a <__ieee754_pow+0xca>
 80043a4:	2200      	movs	r2, #0
 80043a6:	4b59      	ldr	r3, [pc, #356]	; (800450c <__ieee754_pow+0xaac>)
 80043a8:	f7fb ff2e 	bl	8000208 <__aeabi_dsub>
 80043ac:	a346      	add	r3, pc, #280	; (adr r3, 80044c8 <__ieee754_pow+0xa68>)
 80043ae:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043b2:	4604      	mov	r4, r0
 80043b4:	460d      	mov	r5, r1
 80043b6:	f7fc f8df 	bl	8000578 <__aeabi_dmul>
 80043ba:	a345      	add	r3, pc, #276	; (adr r3, 80044d0 <__ieee754_pow+0xa70>)
 80043bc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043c0:	4680      	mov	r8, r0
 80043c2:	4689      	mov	r9, r1
 80043c4:	4620      	mov	r0, r4
 80043c6:	4629      	mov	r1, r5
 80043c8:	f7fc f8d6 	bl	8000578 <__aeabi_dmul>
 80043cc:	2200      	movs	r2, #0
 80043ce:	e9cd 0102 	strd	r0, r1, [sp, #8]
 80043d2:	4b4f      	ldr	r3, [pc, #316]	; (8004510 <__ieee754_pow+0xab0>)
 80043d4:	4620      	mov	r0, r4
 80043d6:	4629      	mov	r1, r5
 80043d8:	f7fc f8ce 	bl	8000578 <__aeabi_dmul>
 80043dc:	4602      	mov	r2, r0
 80043de:	460b      	mov	r3, r1
 80043e0:	a13d      	add	r1, pc, #244	; (adr r1, 80044d8 <__ieee754_pow+0xa78>)
 80043e2:	e9d1 0100 	ldrd	r0, r1, [r1]
 80043e6:	f7fb ff0f 	bl	8000208 <__aeabi_dsub>
 80043ea:	4622      	mov	r2, r4
 80043ec:	462b      	mov	r3, r5
 80043ee:	f7fc f8c3 	bl	8000578 <__aeabi_dmul>
 80043f2:	4602      	mov	r2, r0
 80043f4:	460b      	mov	r3, r1
 80043f6:	2000      	movs	r0, #0
 80043f8:	4946      	ldr	r1, [pc, #280]	; (8004514 <__ieee754_pow+0xab4>)
 80043fa:	f7fb ff05 	bl	8000208 <__aeabi_dsub>
 80043fe:	4622      	mov	r2, r4
 8004400:	4606      	mov	r6, r0
 8004402:	460f      	mov	r7, r1
 8004404:	462b      	mov	r3, r5
 8004406:	4620      	mov	r0, r4
 8004408:	4629      	mov	r1, r5
 800440a:	f7fc f8b5 	bl	8000578 <__aeabi_dmul>
 800440e:	4602      	mov	r2, r0
 8004410:	460b      	mov	r3, r1
 8004412:	4630      	mov	r0, r6
 8004414:	4639      	mov	r1, r7
 8004416:	f7fc f8af 	bl	8000578 <__aeabi_dmul>
 800441a:	a331      	add	r3, pc, #196	; (adr r3, 80044e0 <__ieee754_pow+0xa80>)
 800441c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004420:	f7fc f8aa 	bl	8000578 <__aeabi_dmul>
 8004424:	4602      	mov	r2, r0
 8004426:	460b      	mov	r3, r1
 8004428:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 800442c:	f7fb feec 	bl	8000208 <__aeabi_dsub>
 8004430:	4602      	mov	r2, r0
 8004432:	460b      	mov	r3, r1
 8004434:	4606      	mov	r6, r0
 8004436:	460f      	mov	r7, r1
 8004438:	4640      	mov	r0, r8
 800443a:	4649      	mov	r1, r9
 800443c:	f7fb fee6 	bl	800020c <__adddf3>
 8004440:	2000      	movs	r0, #0
 8004442:	4604      	mov	r4, r0
 8004444:	460d      	mov	r5, r1
 8004446:	4642      	mov	r2, r8
 8004448:	464b      	mov	r3, r9
 800444a:	e5af      	b.n	8003fac <__ieee754_pow+0x54c>
 800444c:	4602      	mov	r2, r0
 800444e:	460b      	mov	r3, r1
 8004450:	f7ff bbd5 	b.w	8003bfe <__ieee754_pow+0x19e>
 8004454:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8004458:	a323      	add	r3, pc, #140	; (adr r3, 80044e8 <__ieee754_pow+0xa88>)
 800445a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800445e:	f7fc f88b 	bl	8000578 <__aeabi_dmul>
 8004462:	a321      	add	r3, pc, #132	; (adr r3, 80044e8 <__ieee754_pow+0xa88>)
 8004464:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004468:	f7fc f886 	bl	8000578 <__aeabi_dmul>
 800446c:	f7ff bb15 	b.w	8003a9a <__ieee754_pow+0x3a>
 8004470:	4b28      	ldr	r3, [pc, #160]	; (8004514 <__ieee754_pow+0xab4>)
 8004472:	4598      	cmp	r8, r3
 8004474:	f73f ae09 	bgt.w	800408a <__ieee754_pow+0x62a>
 8004478:	e9dd 2300 	ldrd	r2, r3, [sp]
 800447c:	4692      	mov	sl, r2
 800447e:	4693      	mov	fp, r2
 8004480:	e632      	b.n	80040e8 <__ieee754_pow+0x688>
 8004482:	f04f 0b00 	mov.w	fp, #0
 8004486:	f7ff bb2e 	b.w	8003ae6 <__ieee754_pow+0x86>
 800448a:	ed9f 7b19 	vldr	d7, [pc, #100]	; 80044f0 <__ieee754_pow+0xa90>
 800448e:	ed8d 7b08 	vstr	d7, [sp, #32]
 8004492:	ed9f 7b19 	vldr	d7, [pc, #100]	; 80044f8 <__ieee754_pow+0xa98>
 8004496:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 800449a:	ed9f 7b19 	vldr	d7, [pc, #100]	; 8004500 <__ieee754_pow+0xaa0>
 800449e:	f44f 2880 	mov.w	r8, #262144	; 0x40000
 80044a2:	ed8d 7b06 	vstr	d7, [sp, #24]
 80044a6:	f7ff bbff 	b.w	8003ca8 <__ieee754_pow+0x248>
 80044aa:	4658      	mov	r0, fp
 80044ac:	ec43 2b10 	vmov	d0, r2, r3
 80044b0:	f001 fa66 	bl	8005980 <scalbn>
 80044b4:	ec51 0b10 	vmov	r0, r1, d0
 80044b8:	e6c8      	b.n	800424c <__ieee754_pow+0x7ec>
 80044ba:	f002 0201 	and.w	r2, r2, #1
 80044be:	f1c2 0b02 	rsb	fp, r2, #2
 80044c2:	f7ff bb04 	b.w	8003ace <__ieee754_pow+0x6e>
 80044c6:	bf00      	nop
 80044c8:	60000000 	.word	0x60000000
 80044cc:	3ff71547 	.word	0x3ff71547
 80044d0:	f85ddf44 	.word	0xf85ddf44
 80044d4:	3e54ae0b 	.word	0x3e54ae0b
 80044d8:	55555555 	.word	0x55555555
 80044dc:	3fd55555 	.word	0x3fd55555
 80044e0:	652b82fe 	.word	0x652b82fe
 80044e4:	3ff71547 	.word	0x3ff71547
 80044e8:	8800759c 	.word	0x8800759c
 80044ec:	7e37e43c 	.word	0x7e37e43c
 80044f0:	40000000 	.word	0x40000000
 80044f4:	3fe2b803 	.word	0x3fe2b803
 80044f8:	43cfd006 	.word	0x43cfd006
 80044fc:	3e4cfdeb 	.word	0x3e4cfdeb
 8004500:	00000000 	.word	0x00000000
 8004504:	3ff80000 	.word	0x3ff80000
 8004508:	3feffffe 	.word	0x3feffffe
 800450c:	3ff00000 	.word	0x3ff00000
 8004510:	3fd00000 	.word	0x3fd00000
 8004514:	3fe00000 	.word	0x3fe00000

08004518 <__ieee754_rem_pio2>:
 8004518:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800451c:	ec53 2b10 	vmov	r2, r3, d0
 8004520:	49bf      	ldr	r1, [pc, #764]	; (8004820 <__ieee754_rem_pio2+0x308>)
 8004522:	f023 4700 	bic.w	r7, r3, #2147483648	; 0x80000000
 8004526:	428f      	cmp	r7, r1
 8004528:	b090      	sub	sp, #64	; 0x40
 800452a:	f340 8093 	ble.w	8004654 <__ieee754_rem_pio2+0x13c>
 800452e:	49bd      	ldr	r1, [pc, #756]	; (8004824 <__ieee754_rem_pio2+0x30c>)
 8004530:	428f      	cmp	r7, r1
 8004532:	461c      	mov	r4, r3
 8004534:	4682      	mov	sl, r0
 8004536:	dc29      	bgt.n	800458c <__ieee754_rem_pio2+0x74>
 8004538:	2c00      	cmp	r4, #0
 800453a:	4619      	mov	r1, r3
 800453c:	ee10 0a10 	vmov	r0, s0
 8004540:	a3ad      	add	r3, pc, #692	; (adr r3, 80047f8 <__ieee754_rem_pio2+0x2e0>)
 8004542:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004546:	f340 8090 	ble.w	800466a <__ieee754_rem_pio2+0x152>
 800454a:	f7fb fe5d 	bl	8000208 <__aeabi_dsub>
 800454e:	4bb6      	ldr	r3, [pc, #728]	; (8004828 <__ieee754_rem_pio2+0x310>)
 8004550:	429f      	cmp	r7, r3
 8004552:	4604      	mov	r4, r0
 8004554:	460d      	mov	r5, r1
 8004556:	f000 8173 	beq.w	8004840 <__ieee754_rem_pio2+0x328>
 800455a:	a3a9      	add	r3, pc, #676	; (adr r3, 8004800 <__ieee754_rem_pio2+0x2e8>)
 800455c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004560:	f7fb fe52 	bl	8000208 <__aeabi_dsub>
 8004564:	4602      	mov	r2, r0
 8004566:	460b      	mov	r3, r1
 8004568:	e9ca 2300 	strd	r2, r3, [sl]
 800456c:	4620      	mov	r0, r4
 800456e:	4629      	mov	r1, r5
 8004570:	f7fb fe4a 	bl	8000208 <__aeabi_dsub>
 8004574:	a3a2      	add	r3, pc, #648	; (adr r3, 8004800 <__ieee754_rem_pio2+0x2e8>)
 8004576:	e9d3 2300 	ldrd	r2, r3, [r3]
 800457a:	f7fb fe45 	bl	8000208 <__aeabi_dsub>
 800457e:	2501      	movs	r5, #1
 8004580:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004584:	4628      	mov	r0, r5
 8004586:	b010      	add	sp, #64	; 0x40
 8004588:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800458c:	49a7      	ldr	r1, [pc, #668]	; (800482c <__ieee754_rem_pio2+0x314>)
 800458e:	428f      	cmp	r7, r1
 8004590:	f340 808a 	ble.w	80046a8 <__ieee754_rem_pio2+0x190>
 8004594:	49a6      	ldr	r1, [pc, #664]	; (8004830 <__ieee754_rem_pio2+0x318>)
 8004596:	428f      	cmp	r7, r1
 8004598:	f300 8120 	bgt.w	80047dc <__ieee754_rem_pio2+0x2c4>
 800459c:	153d      	asrs	r5, r7, #20
 800459e:	f2a5 4516 	subw	r5, r5, #1046	; 0x416
 80045a2:	ee10 0a10 	vmov	r0, s0
 80045a6:	eba7 5105 	sub.w	r1, r7, r5, lsl #20
 80045aa:	4616      	mov	r6, r2
 80045ac:	460f      	mov	r7, r1
 80045ae:	f7fc fa93 	bl	8000ad8 <__aeabi_d2iz>
 80045b2:	f7fb ff77 	bl	80004a4 <__aeabi_i2d>
 80045b6:	4680      	mov	r8, r0
 80045b8:	4689      	mov	r9, r1
 80045ba:	4642      	mov	r2, r8
 80045bc:	464b      	mov	r3, r9
 80045be:	4630      	mov	r0, r6
 80045c0:	4639      	mov	r1, r7
 80045c2:	e9cd 890a 	strd	r8, r9, [sp, #40]	; 0x28
 80045c6:	f7fb fe1f 	bl	8000208 <__aeabi_dsub>
 80045ca:	2200      	movs	r2, #0
 80045cc:	4b99      	ldr	r3, [pc, #612]	; (8004834 <__ieee754_rem_pio2+0x31c>)
 80045ce:	f7fb ffd3 	bl	8000578 <__aeabi_dmul>
 80045d2:	4689      	mov	r9, r1
 80045d4:	4680      	mov	r8, r0
 80045d6:	f7fc fa7f 	bl	8000ad8 <__aeabi_d2iz>
 80045da:	f7fb ff63 	bl	80004a4 <__aeabi_i2d>
 80045de:	4606      	mov	r6, r0
 80045e0:	460f      	mov	r7, r1
 80045e2:	4632      	mov	r2, r6
 80045e4:	463b      	mov	r3, r7
 80045e6:	4640      	mov	r0, r8
 80045e8:	4649      	mov	r1, r9
 80045ea:	e9cd 670c 	strd	r6, r7, [sp, #48]	; 0x30
 80045ee:	f7fb fe0b 	bl	8000208 <__aeabi_dsub>
 80045f2:	2200      	movs	r2, #0
 80045f4:	4b8f      	ldr	r3, [pc, #572]	; (8004834 <__ieee754_rem_pio2+0x31c>)
 80045f6:	f7fb ffbf 	bl	8000578 <__aeabi_dmul>
 80045fa:	2200      	movs	r2, #0
 80045fc:	2300      	movs	r3, #0
 80045fe:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 8004602:	f7fc fa21 	bl	8000a48 <__aeabi_dcmpeq>
 8004606:	2800      	cmp	r0, #0
 8004608:	f000 8165 	beq.w	80048d6 <__ieee754_rem_pio2+0x3be>
 800460c:	2300      	movs	r3, #0
 800460e:	4630      	mov	r0, r6
 8004610:	4639      	mov	r1, r7
 8004612:	2200      	movs	r2, #0
 8004614:	f7fc fa18 	bl	8000a48 <__aeabi_dcmpeq>
 8004618:	2800      	cmp	r0, #0
 800461a:	bf14      	ite	ne
 800461c:	2301      	movne	r3, #1
 800461e:	2302      	moveq	r3, #2
 8004620:	4a85      	ldr	r2, [pc, #532]	; (8004838 <__ieee754_rem_pio2+0x320>)
 8004622:	9201      	str	r2, [sp, #4]
 8004624:	2102      	movs	r1, #2
 8004626:	462a      	mov	r2, r5
 8004628:	9100      	str	r1, [sp, #0]
 800462a:	a80a      	add	r0, sp, #40	; 0x28
 800462c:	4651      	mov	r1, sl
 800462e:	f000 fbab 	bl	8004d88 <__kernel_rem_pio2>
 8004632:	2c00      	cmp	r4, #0
 8004634:	4605      	mov	r5, r0
 8004636:	da14      	bge.n	8004662 <__ieee754_rem_pio2+0x14a>
 8004638:	f8da 2004 	ldr.w	r2, [sl, #4]
 800463c:	f8da 300c 	ldr.w	r3, [sl, #12]
 8004640:	f102 4200 	add.w	r2, r2, #2147483648	; 0x80000000
 8004644:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
 8004648:	4245      	negs	r5, r0
 800464a:	f8ca 2004 	str.w	r2, [sl, #4]
 800464e:	f8ca 300c 	str.w	r3, [sl, #12]
 8004652:	e006      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 8004654:	ed80 0b00 	vstr	d0, [r0]
 8004658:	2500      	movs	r5, #0
 800465a:	2400      	movs	r4, #0
 800465c:	e9c0 4502 	strd	r4, r5, [r0, #8]
 8004660:	2500      	movs	r5, #0
 8004662:	4628      	mov	r0, r5
 8004664:	b010      	add	sp, #64	; 0x40
 8004666:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800466a:	f7fb fdcf 	bl	800020c <__adddf3>
 800466e:	4b6e      	ldr	r3, [pc, #440]	; (8004828 <__ieee754_rem_pio2+0x310>)
 8004670:	429f      	cmp	r7, r3
 8004672:	4604      	mov	r4, r0
 8004674:	460d      	mov	r5, r1
 8004676:	f000 8110 	beq.w	800489a <__ieee754_rem_pio2+0x382>
 800467a:	a361      	add	r3, pc, #388	; (adr r3, 8004800 <__ieee754_rem_pio2+0x2e8>)
 800467c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004680:	f7fb fdc4 	bl	800020c <__adddf3>
 8004684:	4602      	mov	r2, r0
 8004686:	460b      	mov	r3, r1
 8004688:	e9ca 2300 	strd	r2, r3, [sl]
 800468c:	4629      	mov	r1, r5
 800468e:	4620      	mov	r0, r4
 8004690:	f7fb fdba 	bl	8000208 <__aeabi_dsub>
 8004694:	a35a      	add	r3, pc, #360	; (adr r3, 8004800 <__ieee754_rem_pio2+0x2e8>)
 8004696:	e9d3 2300 	ldrd	r2, r3, [r3]
 800469a:	f7fb fdb7 	bl	800020c <__adddf3>
 800469e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 80046a2:	e9ca 0102 	strd	r0, r1, [sl, #8]
 80046a6:	e7dc      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 80046a8:	f7fe fd0e 	bl	80030c8 <fabs>
 80046ac:	ec59 8b10 	vmov	r8, r9, d0
 80046b0:	ee10 0a10 	vmov	r0, s0
 80046b4:	a354      	add	r3, pc, #336	; (adr r3, 8004808 <__ieee754_rem_pio2+0x2f0>)
 80046b6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046ba:	4649      	mov	r1, r9
 80046bc:	f7fb ff5c 	bl	8000578 <__aeabi_dmul>
 80046c0:	2200      	movs	r2, #0
 80046c2:	4b5e      	ldr	r3, [pc, #376]	; (800483c <__ieee754_rem_pio2+0x324>)
 80046c4:	f7fb fda2 	bl	800020c <__adddf3>
 80046c8:	f7fc fa06 	bl	8000ad8 <__aeabi_d2iz>
 80046cc:	4605      	mov	r5, r0
 80046ce:	f7fb fee9 	bl	80004a4 <__aeabi_i2d>
 80046d2:	a349      	add	r3, pc, #292	; (adr r3, 80047f8 <__ieee754_rem_pio2+0x2e0>)
 80046d4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046d8:	e9cd 0106 	strd	r0, r1, [sp, #24]
 80046dc:	f7fb ff4c 	bl	8000578 <__aeabi_dmul>
 80046e0:	4602      	mov	r2, r0
 80046e2:	460b      	mov	r3, r1
 80046e4:	4640      	mov	r0, r8
 80046e6:	4649      	mov	r1, r9
 80046e8:	f7fb fd8e 	bl	8000208 <__aeabi_dsub>
 80046ec:	a344      	add	r3, pc, #272	; (adr r3, 8004800 <__ieee754_rem_pio2+0x2e8>)
 80046ee:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046f2:	4680      	mov	r8, r0
 80046f4:	4689      	mov	r9, r1
 80046f6:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 80046fa:	e9cd 8902 	strd	r8, r9, [sp, #8]
 80046fe:	f7fb ff3b 	bl	8000578 <__aeabi_dmul>
 8004702:	2d1f      	cmp	r5, #31
 8004704:	4602      	mov	r2, r0
 8004706:	460b      	mov	r3, r1
 8004708:	e9cd 2304 	strd	r2, r3, [sp, #16]
 800470c:	f340 80b5 	ble.w	800487a <__ieee754_rem_pio2+0x362>
 8004710:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8004714:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8004718:	f7fb fd76 	bl	8000208 <__aeabi_dsub>
 800471c:	4680      	mov	r8, r0
 800471e:	4689      	mov	r9, r1
 8004720:	153f      	asrs	r7, r7, #20
 8004722:	f3c9 530a 	ubfx	r3, r9, #20, #11
 8004726:	1afb      	subs	r3, r7, r3
 8004728:	2b10      	cmp	r3, #16
 800472a:	f340 80b3 	ble.w	8004894 <__ieee754_rem_pio2+0x37c>
 800472e:	a338      	add	r3, pc, #224	; (adr r3, 8004810 <__ieee754_rem_pio2+0x2f8>)
 8004730:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004734:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8004738:	f7fb ff1e 	bl	8000578 <__aeabi_dmul>
 800473c:	4680      	mov	r8, r0
 800473e:	4689      	mov	r9, r1
 8004740:	4602      	mov	r2, r0
 8004742:	460b      	mov	r3, r1
 8004744:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8004748:	f7fb fd5e 	bl	8000208 <__aeabi_dsub>
 800474c:	4602      	mov	r2, r0
 800474e:	460b      	mov	r3, r1
 8004750:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8004754:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8004758:	f7fb fd56 	bl	8000208 <__aeabi_dsub>
 800475c:	4642      	mov	r2, r8
 800475e:	464b      	mov	r3, r9
 8004760:	f7fb fd52 	bl	8000208 <__aeabi_dsub>
 8004764:	a32c      	add	r3, pc, #176	; (adr r3, 8004818 <__ieee754_rem_pio2+0x300>)
 8004766:	e9d3 2300 	ldrd	r2, r3, [r3]
 800476a:	4680      	mov	r8, r0
 800476c:	4689      	mov	r9, r1
 800476e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8004772:	f7fb ff01 	bl	8000578 <__aeabi_dmul>
 8004776:	4642      	mov	r2, r8
 8004778:	464b      	mov	r3, r9
 800477a:	f7fb fd45 	bl	8000208 <__aeabi_dsub>
 800477e:	460b      	mov	r3, r1
 8004780:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8004784:	4602      	mov	r2, r0
 8004786:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 800478a:	f7fb fd3d 	bl	8000208 <__aeabi_dsub>
 800478e:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8004792:	1aff      	subs	r7, r7, r3
 8004794:	2f31      	cmp	r7, #49	; 0x31
 8004796:	4680      	mov	r8, r0
 8004798:	4689      	mov	r9, r1
 800479a:	f300 809e 	bgt.w	80048da <__ieee754_rem_pio2+0x3c2>
 800479e:	ed9d 7b08 	vldr	d7, [sp, #32]
 80047a2:	e9ca 8900 	strd	r8, r9, [sl]
 80047a6:	ed8d 7b02 	vstr	d7, [sp, #8]
 80047aa:	4642      	mov	r2, r8
 80047ac:	464b      	mov	r3, r9
 80047ae:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80047b2:	f7fb fd29 	bl	8000208 <__aeabi_dsub>
 80047b6:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 80047ba:	f7fb fd25 	bl	8000208 <__aeabi_dsub>
 80047be:	2c00      	cmp	r4, #0
 80047c0:	e9ca 0102 	strd	r0, r1, [sl, #8]
 80047c4:	f6bf af4d 	bge.w	8004662 <__ieee754_rem_pio2+0x14a>
 80047c8:	f109 4400 	add.w	r4, r9, #2147483648	; 0x80000000
 80047cc:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80047d0:	426d      	negs	r5, r5
 80047d2:	e9ca 8400 	strd	r8, r4, [sl]
 80047d6:	e9ca 0302 	strd	r0, r3, [sl, #8]
 80047da:	e742      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 80047dc:	ee10 0a10 	vmov	r0, s0
 80047e0:	4619      	mov	r1, r3
 80047e2:	f7fb fd11 	bl	8000208 <__aeabi_dsub>
 80047e6:	2500      	movs	r5, #0
 80047e8:	e9ca 0102 	strd	r0, r1, [sl, #8]
 80047ec:	e9ca 0100 	strd	r0, r1, [sl]
 80047f0:	e737      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 80047f2:	bf00      	nop
 80047f4:	f3af 8000 	nop.w
 80047f8:	54400000 	.word	0x54400000
 80047fc:	3ff921fb 	.word	0x3ff921fb
 8004800:	1a626331 	.word	0x1a626331
 8004804:	3dd0b461 	.word	0x3dd0b461
 8004808:	6dc9c883 	.word	0x6dc9c883
 800480c:	3fe45f30 	.word	0x3fe45f30
 8004810:	1a600000 	.word	0x1a600000
 8004814:	3dd0b461 	.word	0x3dd0b461
 8004818:	2e037073 	.word	0x2e037073
 800481c:	3ba3198a 	.word	0x3ba3198a
 8004820:	3fe921fb 	.word	0x3fe921fb
 8004824:	4002d97b 	.word	0x4002d97b
 8004828:	3ff921fb 	.word	0x3ff921fb
 800482c:	413921fb 	.word	0x413921fb
 8004830:	7fefffff 	.word	0x7fefffff
 8004834:	41700000 	.word	0x41700000
 8004838:	0800aa44 	.word	0x0800aa44
 800483c:	3fe00000 	.word	0x3fe00000
 8004840:	a341      	add	r3, pc, #260	; (adr r3, 8004948 <__ieee754_rem_pio2+0x430>)
 8004842:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004846:	f7fb fcdf 	bl	8000208 <__aeabi_dsub>
 800484a:	a341      	add	r3, pc, #260	; (adr r3, 8004950 <__ieee754_rem_pio2+0x438>)
 800484c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004850:	460d      	mov	r5, r1
 8004852:	4604      	mov	r4, r0
 8004854:	f7fb fcd8 	bl	8000208 <__aeabi_dsub>
 8004858:	4602      	mov	r2, r0
 800485a:	460b      	mov	r3, r1
 800485c:	e9ca 2300 	strd	r2, r3, [sl]
 8004860:	4629      	mov	r1, r5
 8004862:	4620      	mov	r0, r4
 8004864:	f7fb fcd0 	bl	8000208 <__aeabi_dsub>
 8004868:	a339      	add	r3, pc, #228	; (adr r3, 8004950 <__ieee754_rem_pio2+0x438>)
 800486a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800486e:	f7fb fccb 	bl	8000208 <__aeabi_dsub>
 8004872:	2501      	movs	r5, #1
 8004874:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004878:	e6f3      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 800487a:	4640      	mov	r0, r8
 800487c:	4649      	mov	r1, r9
 800487e:	f7fb fcc3 	bl	8000208 <__aeabi_dsub>
 8004882:	4b39      	ldr	r3, [pc, #228]	; (8004968 <__ieee754_rem_pio2+0x450>)
 8004884:	1e6a      	subs	r2, r5, #1
 8004886:	4680      	mov	r8, r0
 8004888:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800488c:	42bb      	cmp	r3, r7
 800488e:	4689      	mov	r9, r1
 8004890:	f43f af46 	beq.w	8004720 <__ieee754_rem_pio2+0x208>
 8004894:	e9ca 8900 	strd	r8, r9, [sl]
 8004898:	e787      	b.n	80047aa <__ieee754_rem_pio2+0x292>
 800489a:	a32b      	add	r3, pc, #172	; (adr r3, 8004948 <__ieee754_rem_pio2+0x430>)
 800489c:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048a0:	f7fb fcb4 	bl	800020c <__adddf3>
 80048a4:	a32a      	add	r3, pc, #168	; (adr r3, 8004950 <__ieee754_rem_pio2+0x438>)
 80048a6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048aa:	460d      	mov	r5, r1
 80048ac:	4604      	mov	r4, r0
 80048ae:	f7fb fcad 	bl	800020c <__adddf3>
 80048b2:	4602      	mov	r2, r0
 80048b4:	460b      	mov	r3, r1
 80048b6:	e9ca 2300 	strd	r2, r3, [sl]
 80048ba:	4629      	mov	r1, r5
 80048bc:	4620      	mov	r0, r4
 80048be:	f7fb fca3 	bl	8000208 <__aeabi_dsub>
 80048c2:	a323      	add	r3, pc, #140	; (adr r3, 8004950 <__ieee754_rem_pio2+0x438>)
 80048c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048c8:	f7fb fca0 	bl	800020c <__adddf3>
 80048cc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 80048d0:	e9ca 0102 	strd	r0, r1, [sl, #8]
 80048d4:	e6c5      	b.n	8004662 <__ieee754_rem_pio2+0x14a>
 80048d6:	2303      	movs	r3, #3
 80048d8:	e6a2      	b.n	8004620 <__ieee754_rem_pio2+0x108>
 80048da:	a31f      	add	r3, pc, #124	; (adr r3, 8004958 <__ieee754_rem_pio2+0x440>)
 80048dc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048e0:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 80048e4:	f7fb fe48 	bl	8000578 <__aeabi_dmul>
 80048e8:	4606      	mov	r6, r0
 80048ea:	460f      	mov	r7, r1
 80048ec:	4602      	mov	r2, r0
 80048ee:	460b      	mov	r3, r1
 80048f0:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 80048f4:	f7fb fc88 	bl	8000208 <__aeabi_dsub>
 80048f8:	4680      	mov	r8, r0
 80048fa:	4689      	mov	r9, r1
 80048fc:	4602      	mov	r2, r0
 80048fe:	460b      	mov	r3, r1
 8004900:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8004904:	e9cd 8902 	strd	r8, r9, [sp, #8]
 8004908:	f7fb fc7e 	bl	8000208 <__aeabi_dsub>
 800490c:	4632      	mov	r2, r6
 800490e:	463b      	mov	r3, r7
 8004910:	f7fb fc7a 	bl	8000208 <__aeabi_dsub>
 8004914:	a312      	add	r3, pc, #72	; (adr r3, 8004960 <__ieee754_rem_pio2+0x448>)
 8004916:	e9d3 2300 	ldrd	r2, r3, [r3]
 800491a:	4606      	mov	r6, r0
 800491c:	460f      	mov	r7, r1
 800491e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8004922:	f7fb fe29 	bl	8000578 <__aeabi_dmul>
 8004926:	4632      	mov	r2, r6
 8004928:	463b      	mov	r3, r7
 800492a:	f7fb fc6d 	bl	8000208 <__aeabi_dsub>
 800492e:	4602      	mov	r2, r0
 8004930:	460b      	mov	r3, r1
 8004932:	4640      	mov	r0, r8
 8004934:	4649      	mov	r1, r9
 8004936:	e9cd 2304 	strd	r2, r3, [sp, #16]
 800493a:	f7fb fc65 	bl	8000208 <__aeabi_dsub>
 800493e:	4680      	mov	r8, r0
 8004940:	4689      	mov	r9, r1
 8004942:	e7a7      	b.n	8004894 <__ieee754_rem_pio2+0x37c>
 8004944:	f3af 8000 	nop.w
 8004948:	1a600000 	.word	0x1a600000
 800494c:	3dd0b461 	.word	0x3dd0b461
 8004950:	2e037073 	.word	0x2e037073
 8004954:	3ba3198a 	.word	0x3ba3198a
 8004958:	2e000000 	.word	0x2e000000
 800495c:	3ba3198a 	.word	0x3ba3198a
 8004960:	252049c1 	.word	0x252049c1
 8004964:	397b839a 	.word	0x397b839a
 8004968:	0800a9c4 	.word	0x0800a9c4

0800496c <__ieee754_sqrt>:
 800496c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004970:	4a62      	ldr	r2, [pc, #392]	; (8004afc <__ieee754_sqrt+0x190>)
 8004972:	ec57 6b10 	vmov	r6, r7, d0
 8004976:	43ba      	bics	r2, r7
 8004978:	f000 8095 	beq.w	8004aa6 <__ieee754_sqrt+0x13a>
 800497c:	2f00      	cmp	r7, #0
 800497e:	463b      	mov	r3, r7
 8004980:	ee10 1a10 	vmov	r1, s0
 8004984:	4634      	mov	r4, r6
 8004986:	dd54      	ble.n	8004a32 <__ieee754_sqrt+0xc6>
 8004988:	153f      	asrs	r7, r7, #20
 800498a:	f000 80af 	beq.w	8004aec <__ieee754_sqrt+0x180>
 800498e:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8004992:	f2a7 37ff 	subw	r7, r7, #1023	; 0x3ff
 8004996:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800499a:	0fe2      	lsrs	r2, r4, #31
 800499c:	07f9      	lsls	r1, r7, #31
 800499e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 80049a2:	ea4f 0544 	mov.w	r5, r4, lsl #1
 80049a6:	d503      	bpl.n	80049b0 <__ieee754_sqrt+0x44>
 80049a8:	0fed      	lsrs	r5, r5, #31
 80049aa:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 80049ae:	00a5      	lsls	r5, r4, #2
 80049b0:	2600      	movs	r6, #0
 80049b2:	107f      	asrs	r7, r7, #1
 80049b4:	46b4      	mov	ip, r6
 80049b6:	2216      	movs	r2, #22
 80049b8:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 80049bc:	eb0c 0001 	add.w	r0, ip, r1
 80049c0:	4298      	cmp	r0, r3
 80049c2:	ea4f 74d5 	mov.w	r4, r5, lsr #31
 80049c6:	ea4f 0545 	mov.w	r5, r5, lsl #1
 80049ca:	dc03      	bgt.n	80049d4 <__ieee754_sqrt+0x68>
 80049cc:	1a1b      	subs	r3, r3, r0
 80049ce:	eb00 0c01 	add.w	ip, r0, r1
 80049d2:	440e      	add	r6, r1
 80049d4:	3a01      	subs	r2, #1
 80049d6:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 80049da:	ea4f 0151 	mov.w	r1, r1, lsr #1
 80049de:	d1ed      	bne.n	80049bc <__ieee754_sqrt+0x50>
 80049e0:	4610      	mov	r0, r2
 80049e2:	4696      	mov	lr, r2
 80049e4:	2420      	movs	r4, #32
 80049e6:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 80049ea:	e009      	b.n	8004a00 <__ieee754_sqrt+0x94>
 80049ec:	d052      	beq.n	8004a94 <__ieee754_sqrt+0x128>
 80049ee:	005b      	lsls	r3, r3, #1
 80049f0:	3c01      	subs	r4, #1
 80049f2:	eb03 73d5 	add.w	r3, r3, r5, lsr #31
 80049f6:	ea4f 0252 	mov.w	r2, r2, lsr #1
 80049fa:	ea4f 0545 	mov.w	r5, r5, lsl #1
 80049fe:	d036      	beq.n	8004a6e <__ieee754_sqrt+0x102>
 8004a00:	4563      	cmp	r3, ip
 8004a02:	eb02 010e 	add.w	r1, r2, lr
 8004a06:	ddf1      	ble.n	80049ec <__ieee754_sqrt+0x80>
 8004a08:	2900      	cmp	r1, #0
 8004a0a:	eb01 0e02 	add.w	lr, r1, r2
 8004a0e:	db0a      	blt.n	8004a26 <__ieee754_sqrt+0xba>
 8004a10:	46e0      	mov	r8, ip
 8004a12:	eba3 030c 	sub.w	r3, r3, ip
 8004a16:	42a9      	cmp	r1, r5
 8004a18:	bf88      	it	hi
 8004a1a:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 8004a1e:	1a6d      	subs	r5, r5, r1
 8004a20:	4410      	add	r0, r2
 8004a22:	46c4      	mov	ip, r8
 8004a24:	e7e3      	b.n	80049ee <__ieee754_sqrt+0x82>
 8004a26:	f1be 0f00 	cmp.w	lr, #0
 8004a2a:	dbf1      	blt.n	8004a10 <__ieee754_sqrt+0xa4>
 8004a2c:	f10c 0801 	add.w	r8, ip, #1
 8004a30:	e7ef      	b.n	8004a12 <__ieee754_sqrt+0xa6>
 8004a32:	f027 4200 	bic.w	r2, r7, #2147483648	; 0x80000000
 8004a36:	4332      	orrs	r2, r6
 8004a38:	d02a      	beq.n	8004a90 <__ieee754_sqrt+0x124>
 8004a3a:	2f00      	cmp	r7, #0
 8004a3c:	d149      	bne.n	8004ad2 <__ieee754_sqrt+0x166>
 8004a3e:	0aca      	lsrs	r2, r1, #11
 8004a40:	3b15      	subs	r3, #21
 8004a42:	0549      	lsls	r1, r1, #21
 8004a44:	2a00      	cmp	r2, #0
 8004a46:	d0fa      	beq.n	8004a3e <__ieee754_sqrt+0xd2>
 8004a48:	f412 1080 	ands.w	r0, r2, #1048576	; 0x100000
 8004a4c:	d001      	beq.n	8004a52 <__ieee754_sqrt+0xe6>
 8004a4e:	e050      	b.n	8004af2 <__ieee754_sqrt+0x186>
 8004a50:	4620      	mov	r0, r4
 8004a52:	0052      	lsls	r2, r2, #1
 8004a54:	02d5      	lsls	r5, r2, #11
 8004a56:	f100 0401 	add.w	r4, r0, #1
 8004a5a:	d5f9      	bpl.n	8004a50 <__ieee754_sqrt+0xe4>
 8004a5c:	f1c4 0520 	rsb	r5, r4, #32
 8004a60:	fa01 f404 	lsl.w	r4, r1, r4
 8004a64:	40e9      	lsrs	r1, r5
 8004a66:	1a1f      	subs	r7, r3, r0
 8004a68:	ea41 0302 	orr.w	r3, r1, r2
 8004a6c:	e78f      	b.n	800498e <__ieee754_sqrt+0x22>
 8004a6e:	432b      	orrs	r3, r5
 8004a70:	d129      	bne.n	8004ac6 <__ieee754_sqrt+0x15a>
 8004a72:	0844      	lsrs	r4, r0, #1
 8004a74:	1071      	asrs	r1, r6, #1
 8004a76:	07f3      	lsls	r3, r6, #31
 8004a78:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 8004a7c:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 8004a80:	bf48      	it	mi
 8004a82:	f044 4400 	orrmi.w	r4, r4, #2147483648	; 0x80000000
 8004a86:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 8004a8a:	4622      	mov	r2, r4
 8004a8c:	ec43 2b10 	vmov	d0, r2, r3
 8004a90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004a94:	42a9      	cmp	r1, r5
 8004a96:	d8aa      	bhi.n	80049ee <__ieee754_sqrt+0x82>
 8004a98:	2900      	cmp	r1, #0
 8004a9a:	eb01 0e02 	add.w	lr, r1, r2
 8004a9e:	dbc2      	blt.n	8004a26 <__ieee754_sqrt+0xba>
 8004aa0:	4698      	mov	r8, r3
 8004aa2:	2300      	movs	r3, #0
 8004aa4:	e7bb      	b.n	8004a1e <__ieee754_sqrt+0xb2>
 8004aa6:	ee10 2a10 	vmov	r2, s0
 8004aaa:	463b      	mov	r3, r7
 8004aac:	ee10 0a10 	vmov	r0, s0
 8004ab0:	4639      	mov	r1, r7
 8004ab2:	f7fb fd61 	bl	8000578 <__aeabi_dmul>
 8004ab6:	4632      	mov	r2, r6
 8004ab8:	463b      	mov	r3, r7
 8004aba:	f7fb fba7 	bl	800020c <__adddf3>
 8004abe:	ec41 0b10 	vmov	d0, r0, r1
 8004ac2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004ac6:	1c42      	adds	r2, r0, #1
 8004ac8:	bf16      	itet	ne
 8004aca:	1c42      	addne	r2, r0, #1
 8004acc:	3601      	addeq	r6, #1
 8004ace:	0854      	lsrne	r4, r2, #1
 8004ad0:	e7d0      	b.n	8004a74 <__ieee754_sqrt+0x108>
 8004ad2:	ee10 2a10 	vmov	r2, s0
 8004ad6:	4630      	mov	r0, r6
 8004ad8:	4639      	mov	r1, r7
 8004ada:	f7fb fb95 	bl	8000208 <__aeabi_dsub>
 8004ade:	4602      	mov	r2, r0
 8004ae0:	460b      	mov	r3, r1
 8004ae2:	f7fb fe73 	bl	80007cc <__aeabi_ddiv>
 8004ae6:	ec41 0b10 	vmov	d0, r0, r1
 8004aea:	e7d1      	b.n	8004a90 <__ieee754_sqrt+0x124>
 8004aec:	461a      	mov	r2, r3
 8004aee:	463b      	mov	r3, r7
 8004af0:	e7aa      	b.n	8004a48 <__ieee754_sqrt+0xdc>
 8004af2:	460c      	mov	r4, r1
 8004af4:	2520      	movs	r5, #32
 8004af6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004afa:	e7b3      	b.n	8004a64 <__ieee754_sqrt+0xf8>
 8004afc:	7ff00000 	.word	0x7ff00000

08004b00 <__kernel_cos>:
 8004b00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004b04:	ec57 6b10 	vmov	r6, r7, d0
 8004b08:	ed2d 8b02 	vpush	{d8}
 8004b0c:	eeb0 8a41 	vmov.f32	s16, s2
 8004b10:	eef0 8a61 	vmov.f32	s17, s3
 8004b14:	f027 4900 	bic.w	r9, r7, #2147483648	; 0x80000000
 8004b18:	f1b9 5f79 	cmp.w	r9, #1044381696	; 0x3e400000
 8004b1c:	b083      	sub	sp, #12
 8004b1e:	da72      	bge.n	8004c06 <__kernel_cos+0x106>
 8004b20:	ee10 0a10 	vmov	r0, s0
 8004b24:	4639      	mov	r1, r7
 8004b26:	f7fb ffd7 	bl	8000ad8 <__aeabi_d2iz>
 8004b2a:	2800      	cmp	r0, #0
 8004b2c:	f000 80ed 	beq.w	8004d0a <__kernel_cos+0x20a>
 8004b30:	4632      	mov	r2, r6
 8004b32:	463b      	mov	r3, r7
 8004b34:	4630      	mov	r0, r6
 8004b36:	4639      	mov	r1, r7
 8004b38:	f7fb fd1e 	bl	8000578 <__aeabi_dmul>
 8004b3c:	a37c      	add	r3, pc, #496	; (adr r3, 8004d30 <__kernel_cos+0x230>)
 8004b3e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b42:	4604      	mov	r4, r0
 8004b44:	460d      	mov	r5, r1
 8004b46:	f7fb fd17 	bl	8000578 <__aeabi_dmul>
 8004b4a:	a37b      	add	r3, pc, #492	; (adr r3, 8004d38 <__kernel_cos+0x238>)
 8004b4c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b50:	f7fb fb5c 	bl	800020c <__adddf3>
 8004b54:	4622      	mov	r2, r4
 8004b56:	462b      	mov	r3, r5
 8004b58:	f7fb fd0e 	bl	8000578 <__aeabi_dmul>
 8004b5c:	a378      	add	r3, pc, #480	; (adr r3, 8004d40 <__kernel_cos+0x240>)
 8004b5e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b62:	f7fb fb51 	bl	8000208 <__aeabi_dsub>
 8004b66:	4622      	mov	r2, r4
 8004b68:	462b      	mov	r3, r5
 8004b6a:	f7fb fd05 	bl	8000578 <__aeabi_dmul>
 8004b6e:	a376      	add	r3, pc, #472	; (adr r3, 8004d48 <__kernel_cos+0x248>)
 8004b70:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b74:	f7fb fb4a 	bl	800020c <__adddf3>
 8004b78:	4622      	mov	r2, r4
 8004b7a:	462b      	mov	r3, r5
 8004b7c:	f7fb fcfc 	bl	8000578 <__aeabi_dmul>
 8004b80:	a373      	add	r3, pc, #460	; (adr r3, 8004d50 <__kernel_cos+0x250>)
 8004b82:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b86:	f7fb fb3f 	bl	8000208 <__aeabi_dsub>
 8004b8a:	4622      	mov	r2, r4
 8004b8c:	462b      	mov	r3, r5
 8004b8e:	f7fb fcf3 	bl	8000578 <__aeabi_dmul>
 8004b92:	a371      	add	r3, pc, #452	; (adr r3, 8004d58 <__kernel_cos+0x258>)
 8004b94:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b98:	f7fb fb38 	bl	800020c <__adddf3>
 8004b9c:	4622      	mov	r2, r4
 8004b9e:	462b      	mov	r3, r5
 8004ba0:	f7fb fcea 	bl	8000578 <__aeabi_dmul>
 8004ba4:	4682      	mov	sl, r0
 8004ba6:	468b      	mov	fp, r1
 8004ba8:	2200      	movs	r2, #0
 8004baa:	4b71      	ldr	r3, [pc, #452]	; (8004d70 <__kernel_cos+0x270>)
 8004bac:	4620      	mov	r0, r4
 8004bae:	4629      	mov	r1, r5
 8004bb0:	f7fb fce2 	bl	8000578 <__aeabi_dmul>
 8004bb4:	4652      	mov	r2, sl
 8004bb6:	4680      	mov	r8, r0
 8004bb8:	4689      	mov	r9, r1
 8004bba:	465b      	mov	r3, fp
 8004bbc:	4620      	mov	r0, r4
 8004bbe:	4629      	mov	r1, r5
 8004bc0:	f7fb fcda 	bl	8000578 <__aeabi_dmul>
 8004bc4:	ec53 2b18 	vmov	r2, r3, d8
 8004bc8:	4604      	mov	r4, r0
 8004bca:	460d      	mov	r5, r1
 8004bcc:	4630      	mov	r0, r6
 8004bce:	4639      	mov	r1, r7
 8004bd0:	f7fb fcd2 	bl	8000578 <__aeabi_dmul>
 8004bd4:	4602      	mov	r2, r0
 8004bd6:	460b      	mov	r3, r1
 8004bd8:	4620      	mov	r0, r4
 8004bda:	4629      	mov	r1, r5
 8004bdc:	f7fb fb14 	bl	8000208 <__aeabi_dsub>
 8004be0:	4602      	mov	r2, r0
 8004be2:	460b      	mov	r3, r1
 8004be4:	4640      	mov	r0, r8
 8004be6:	4649      	mov	r1, r9
 8004be8:	f7fb fb0e 	bl	8000208 <__aeabi_dsub>
 8004bec:	4602      	mov	r2, r0
 8004bee:	460b      	mov	r3, r1
 8004bf0:	2000      	movs	r0, #0
 8004bf2:	4960      	ldr	r1, [pc, #384]	; (8004d74 <__kernel_cos+0x274>)
 8004bf4:	f7fb fb08 	bl	8000208 <__aeabi_dsub>
 8004bf8:	ec41 0b10 	vmov	d0, r0, r1
 8004bfc:	b003      	add	sp, #12
 8004bfe:	ecbd 8b02 	vpop	{d8}
 8004c02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c06:	ee10 2a10 	vmov	r2, s0
 8004c0a:	ee10 0a10 	vmov	r0, s0
 8004c0e:	463b      	mov	r3, r7
 8004c10:	4639      	mov	r1, r7
 8004c12:	f7fb fcb1 	bl	8000578 <__aeabi_dmul>
 8004c16:	a346      	add	r3, pc, #280	; (adr r3, 8004d30 <__kernel_cos+0x230>)
 8004c18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c1c:	4604      	mov	r4, r0
 8004c1e:	460d      	mov	r5, r1
 8004c20:	f7fb fcaa 	bl	8000578 <__aeabi_dmul>
 8004c24:	a344      	add	r3, pc, #272	; (adr r3, 8004d38 <__kernel_cos+0x238>)
 8004c26:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c2a:	f7fb faef 	bl	800020c <__adddf3>
 8004c2e:	4622      	mov	r2, r4
 8004c30:	462b      	mov	r3, r5
 8004c32:	f7fb fca1 	bl	8000578 <__aeabi_dmul>
 8004c36:	a342      	add	r3, pc, #264	; (adr r3, 8004d40 <__kernel_cos+0x240>)
 8004c38:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c3c:	f7fb fae4 	bl	8000208 <__aeabi_dsub>
 8004c40:	4622      	mov	r2, r4
 8004c42:	462b      	mov	r3, r5
 8004c44:	f7fb fc98 	bl	8000578 <__aeabi_dmul>
 8004c48:	a33f      	add	r3, pc, #252	; (adr r3, 8004d48 <__kernel_cos+0x248>)
 8004c4a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c4e:	f7fb fadd 	bl	800020c <__adddf3>
 8004c52:	4622      	mov	r2, r4
 8004c54:	462b      	mov	r3, r5
 8004c56:	f7fb fc8f 	bl	8000578 <__aeabi_dmul>
 8004c5a:	a33d      	add	r3, pc, #244	; (adr r3, 8004d50 <__kernel_cos+0x250>)
 8004c5c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c60:	f7fb fad2 	bl	8000208 <__aeabi_dsub>
 8004c64:	4622      	mov	r2, r4
 8004c66:	462b      	mov	r3, r5
 8004c68:	f7fb fc86 	bl	8000578 <__aeabi_dmul>
 8004c6c:	a33a      	add	r3, pc, #232	; (adr r3, 8004d58 <__kernel_cos+0x258>)
 8004c6e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c72:	f7fb facb 	bl	800020c <__adddf3>
 8004c76:	462b      	mov	r3, r5
 8004c78:	4622      	mov	r2, r4
 8004c7a:	f7fb fc7d 	bl	8000578 <__aeabi_dmul>
 8004c7e:	4b3e      	ldr	r3, [pc, #248]	; (8004d78 <__kernel_cos+0x278>)
 8004c80:	4599      	cmp	r9, r3
 8004c82:	4682      	mov	sl, r0
 8004c84:	468b      	mov	fp, r1
 8004c86:	dd8f      	ble.n	8004ba8 <__kernel_cos+0xa8>
 8004c88:	4b3c      	ldr	r3, [pc, #240]	; (8004d7c <__kernel_cos+0x27c>)
 8004c8a:	4599      	cmp	r9, r3
 8004c8c:	dc44      	bgt.n	8004d18 <__kernel_cos+0x218>
 8004c8e:	2200      	movs	r2, #0
 8004c90:	f5a9 1300 	sub.w	r3, r9, #2097152	; 0x200000
 8004c94:	2000      	movs	r0, #0
 8004c96:	4937      	ldr	r1, [pc, #220]	; (8004d74 <__kernel_cos+0x274>)
 8004c98:	4690      	mov	r8, r2
 8004c9a:	4699      	mov	r9, r3
 8004c9c:	f7fb fab4 	bl	8000208 <__aeabi_dsub>
 8004ca0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ca4:	2200      	movs	r2, #0
 8004ca6:	4b32      	ldr	r3, [pc, #200]	; (8004d70 <__kernel_cos+0x270>)
 8004ca8:	4620      	mov	r0, r4
 8004caa:	4629      	mov	r1, r5
 8004cac:	f7fb fc64 	bl	8000578 <__aeabi_dmul>
 8004cb0:	4642      	mov	r2, r8
 8004cb2:	464b      	mov	r3, r9
 8004cb4:	f7fb faa8 	bl	8000208 <__aeabi_dsub>
 8004cb8:	4652      	mov	r2, sl
 8004cba:	4680      	mov	r8, r0
 8004cbc:	4689      	mov	r9, r1
 8004cbe:	465b      	mov	r3, fp
 8004cc0:	4620      	mov	r0, r4
 8004cc2:	4629      	mov	r1, r5
 8004cc4:	f7fb fc58 	bl	8000578 <__aeabi_dmul>
 8004cc8:	ec53 2b18 	vmov	r2, r3, d8
 8004ccc:	4604      	mov	r4, r0
 8004cce:	460d      	mov	r5, r1
 8004cd0:	4630      	mov	r0, r6
 8004cd2:	4639      	mov	r1, r7
 8004cd4:	f7fb fc50 	bl	8000578 <__aeabi_dmul>
 8004cd8:	4602      	mov	r2, r0
 8004cda:	460b      	mov	r3, r1
 8004cdc:	4620      	mov	r0, r4
 8004cde:	4629      	mov	r1, r5
 8004ce0:	f7fb fa92 	bl	8000208 <__aeabi_dsub>
 8004ce4:	4602      	mov	r2, r0
 8004ce6:	460b      	mov	r3, r1
 8004ce8:	4640      	mov	r0, r8
 8004cea:	4649      	mov	r1, r9
 8004cec:	f7fb fa8c 	bl	8000208 <__aeabi_dsub>
 8004cf0:	4602      	mov	r2, r0
 8004cf2:	460b      	mov	r3, r1
 8004cf4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cf8:	f7fb fa86 	bl	8000208 <__aeabi_dsub>
 8004cfc:	ec41 0b10 	vmov	d0, r0, r1
 8004d00:	b003      	add	sp, #12
 8004d02:	ecbd 8b02 	vpop	{d8}
 8004d06:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d0a:	ed9f 0b15 	vldr	d0, [pc, #84]	; 8004d60 <__kernel_cos+0x260>
 8004d0e:	b003      	add	sp, #12
 8004d10:	ecbd 8b02 	vpop	{d8}
 8004d14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d18:	ed9f 7b13 	vldr	d7, [pc, #76]	; 8004d68 <__kernel_cos+0x268>
 8004d1c:	f04f 0800 	mov.w	r8, #0
 8004d20:	ed8d 7b00 	vstr	d7, [sp]
 8004d24:	f8df 9058 	ldr.w	r9, [pc, #88]	; 8004d80 <__kernel_cos+0x280>
 8004d28:	e7bc      	b.n	8004ca4 <__kernel_cos+0x1a4>
 8004d2a:	bf00      	nop
 8004d2c:	f3af 8000 	nop.w
 8004d30:	be8838d4 	.word	0xbe8838d4
 8004d34:	bda8fae9 	.word	0xbda8fae9
 8004d38:	bdb4b1c4 	.word	0xbdb4b1c4
 8004d3c:	3e21ee9e 	.word	0x3e21ee9e
 8004d40:	809c52ad 	.word	0x809c52ad
 8004d44:	3e927e4f 	.word	0x3e927e4f
 8004d48:	19cb1590 	.word	0x19cb1590
 8004d4c:	3efa01a0 	.word	0x3efa01a0
 8004d50:	16c15177 	.word	0x16c15177
 8004d54:	3f56c16c 	.word	0x3f56c16c
 8004d58:	5555554c 	.word	0x5555554c
 8004d5c:	3fa55555 	.word	0x3fa55555
 8004d60:	00000000 	.word	0x00000000
 8004d64:	3ff00000 	.word	0x3ff00000
 8004d68:	00000000 	.word	0x00000000
 8004d6c:	3fe70000 	.word	0x3fe70000
 8004d70:	3fe00000 	.word	0x3fe00000
 8004d74:	3ff00000 	.word	0x3ff00000
 8004d78:	3fd33332 	.word	0x3fd33332
 8004d7c:	3fe90000 	.word	0x3fe90000
 8004d80:	3fd20000 	.word	0x3fd20000
 8004d84:	00000000 	.word	0x00000000

08004d88 <__kernel_rem_pio2>:
 8004d88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004d8c:	f5ad 7d19 	sub.w	sp, sp, #612	; 0x264
 8004d90:	4cc1      	ldr	r4, [pc, #772]	; (8005098 <__kernel_rem_pio2+0x310>)
 8004d92:	9ea2      	ldr	r6, [sp, #648]	; 0x288
 8004d94:	4dc1      	ldr	r5, [pc, #772]	; (800509c <__kernel_rem_pio2+0x314>)
 8004d96:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 8004d9a:	9307      	str	r3, [sp, #28]
 8004d9c:	1ed4      	subs	r4, r2, #3
 8004d9e:	fb85 7504 	smull	r7, r5, r5, r4
 8004da2:	17e4      	asrs	r4, r4, #31
 8004da4:	ebc4 04a5 	rsb	r4, r4, r5, asr #2
 8004da8:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
 8004dac:	461d      	mov	r5, r3
 8004dae:	1c63      	adds	r3, r4, #1
 8004db0:	eba3 0383 	sub.w	r3, r3, r3, lsl #2
 8004db4:	3d01      	subs	r5, #1
 8004db6:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 8004dba:	9305      	str	r3, [sp, #20]
 8004dbc:	1973      	adds	r3, r6, r5
 8004dbe:	9604      	str	r6, [sp, #16]
 8004dc0:	9409      	str	r4, [sp, #36]	; 0x24
 8004dc2:	9501      	str	r5, [sp, #4]
 8004dc4:	9003      	str	r0, [sp, #12]
 8004dc6:	910b      	str	r1, [sp, #44]	; 0x2c
 8004dc8:	eba4 0705 	sub.w	r7, r4, r5
 8004dcc:	d41a      	bmi.n	8004e04 <__kernel_rem_pio2+0x7c>
 8004dce:	443b      	add	r3, r7
 8004dd0:	2400      	movs	r4, #0
 8004dd2:	2500      	movs	r5, #0
 8004dd4:	1c5e      	adds	r6, r3, #1
 8004dd6:	f10d 0880 	add.w	r8, sp, #128	; 0x80
 8004dda:	f8dd 928c 	ldr.w	r9, [sp, #652]	; 0x28c
 8004dde:	e008      	b.n	8004df2 <__kernel_rem_pio2+0x6a>
 8004de0:	f859 0027 	ldr.w	r0, [r9, r7, lsl #2]
 8004de4:	f7fb fb5e 	bl	80004a4 <__aeabi_i2d>
 8004de8:	3701      	adds	r7, #1
 8004dea:	42b7      	cmp	r7, r6
 8004dec:	e8e8 0102 	strd	r0, r1, [r8], #8
 8004df0:	d008      	beq.n	8004e04 <__kernel_rem_pio2+0x7c>
 8004df2:	2f00      	cmp	r7, #0
 8004df4:	daf4      	bge.n	8004de0 <__kernel_rem_pio2+0x58>
 8004df6:	3701      	adds	r7, #1
 8004df8:	4620      	mov	r0, r4
 8004dfa:	4629      	mov	r1, r5
 8004dfc:	42b7      	cmp	r7, r6
 8004dfe:	e8e8 0102 	strd	r0, r1, [r8], #8
 8004e02:	d1f6      	bne.n	8004df2 <__kernel_rem_pio2+0x6a>
 8004e04:	9b04      	ldr	r3, [sp, #16]
 8004e06:	2b00      	cmp	r3, #0
 8004e08:	9b07      	ldr	r3, [sp, #28]
 8004e0a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8004e0e:	9302      	str	r3, [sp, #8]
 8004e10:	db2a      	blt.n	8004e68 <__kernel_rem_pio2+0xe0>
 8004e12:	9a03      	ldr	r2, [sp, #12]
 8004e14:	a920      	add	r1, sp, #128	; 0x80
 8004e16:	eb02 0803 	add.w	r8, r2, r3
 8004e1a:	eb01 0903 	add.w	r9, r1, r3
 8004e1e:	9b04      	ldr	r3, [sp, #16]
 8004e20:	aa72      	add	r2, sp, #456	; 0x1c8
 8004e22:	eb02 0bc3 	add.w	fp, r2, r3, lsl #3
 8004e26:	f50d 7ae0 	add.w	sl, sp, #448	; 0x1c0
 8004e2a:	9b01      	ldr	r3, [sp, #4]
 8004e2c:	2b00      	cmp	r3, #0
 8004e2e:	f04f 0600 	mov.w	r6, #0
 8004e32:	f04f 0700 	mov.w	r7, #0
 8004e36:	db11      	blt.n	8004e5c <__kernel_rem_pio2+0xd4>
 8004e38:	9c03      	ldr	r4, [sp, #12]
 8004e3a:	464d      	mov	r5, r9
 8004e3c:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 8004e40:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 8004e44:	f7fb fb98 	bl	8000578 <__aeabi_dmul>
 8004e48:	4602      	mov	r2, r0
 8004e4a:	460b      	mov	r3, r1
 8004e4c:	4630      	mov	r0, r6
 8004e4e:	4639      	mov	r1, r7
 8004e50:	f7fb f9dc 	bl	800020c <__adddf3>
 8004e54:	4544      	cmp	r4, r8
 8004e56:	4606      	mov	r6, r0
 8004e58:	460f      	mov	r7, r1
 8004e5a:	d1ef      	bne.n	8004e3c <__kernel_rem_pio2+0xb4>
 8004e5c:	e8ea 6702 	strd	r6, r7, [sl], #8
 8004e60:	45da      	cmp	sl, fp
 8004e62:	f109 0908 	add.w	r9, r9, #8
 8004e66:	d1e0      	bne.n	8004e2a <__kernel_rem_pio2+0xa2>
 8004e68:	e9dd 0402 	ldrd	r0, r4, [sp, #8]
 8004e6c:	9904      	ldr	r1, [sp, #16]
 8004e6e:	4420      	add	r0, r4
 8004e70:	008b      	lsls	r3, r1, #2
 8004e72:	4682      	mov	sl, r0
 8004e74:	a80b      	add	r0, sp, #44	; 0x2c
 8004e76:	f1a3 0208 	sub.w	r2, r3, #8
 8004e7a:	18c3      	adds	r3, r0, r3
 8004e7c:	9308      	str	r3, [sp, #32]
 8004e7e:	ab0c      	add	r3, sp, #48	; 0x30
 8004e80:	4413      	add	r3, r2
 8004e82:	930a      	str	r3, [sp, #40]	; 0x28
 8004e84:	468b      	mov	fp, r1
 8004e86:	ab98      	add	r3, sp, #608	; 0x260
 8004e88:	eb03 03cb 	add.w	r3, r3, fp, lsl #3
 8004e8c:	f1bb 0f00 	cmp.w	fp, #0
 8004e90:	e953 4528 	ldrd	r4, r5, [r3, #-160]	; 0xa0
 8004e94:	dd29      	ble.n	8004eea <__kernel_rem_pio2+0x162>
 8004e96:	ab70      	add	r3, sp, #448	; 0x1c0
 8004e98:	eb03 08cb 	add.w	r8, r3, fp, lsl #3
 8004e9c:	f10d 0930 	add.w	r9, sp, #48	; 0x30
 8004ea0:	2200      	movs	r2, #0
 8004ea2:	4b7f      	ldr	r3, [pc, #508]	; (80050a0 <__kernel_rem_pio2+0x318>)
 8004ea4:	4620      	mov	r0, r4
 8004ea6:	4629      	mov	r1, r5
 8004ea8:	f7fb fb66 	bl	8000578 <__aeabi_dmul>
 8004eac:	f7fb fe14 	bl	8000ad8 <__aeabi_d2iz>
 8004eb0:	f7fb faf8 	bl	80004a4 <__aeabi_i2d>
 8004eb4:	2200      	movs	r2, #0
 8004eb6:	4b7b      	ldr	r3, [pc, #492]	; (80050a4 <__kernel_rem_pio2+0x31c>)
 8004eb8:	4606      	mov	r6, r0
 8004eba:	460f      	mov	r7, r1
 8004ebc:	f7fb fb5c 	bl	8000578 <__aeabi_dmul>
 8004ec0:	4602      	mov	r2, r0
 8004ec2:	460b      	mov	r3, r1
 8004ec4:	4620      	mov	r0, r4
 8004ec6:	4629      	mov	r1, r5
 8004ec8:	f7fb f99e 	bl	8000208 <__aeabi_dsub>
 8004ecc:	f7fb fe04 	bl	8000ad8 <__aeabi_d2iz>
 8004ed0:	e978 2302 	ldrd	r2, r3, [r8, #-8]!
 8004ed4:	f849 0b04 	str.w	r0, [r9], #4
 8004ed8:	4639      	mov	r1, r7
 8004eda:	4630      	mov	r0, r6
 8004edc:	f7fb f996 	bl	800020c <__adddf3>
 8004ee0:	ab70      	add	r3, sp, #448	; 0x1c0
 8004ee2:	4598      	cmp	r8, r3
 8004ee4:	4604      	mov	r4, r0
 8004ee6:	460d      	mov	r5, r1
 8004ee8:	d1da      	bne.n	8004ea0 <__kernel_rem_pio2+0x118>
 8004eea:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8004eee:	ec45 4b10 	vmov	d0, r4, r5
 8004ef2:	4648      	mov	r0, r9
 8004ef4:	f000 fd44 	bl	8005980 <scalbn>
 8004ef8:	ec55 4b10 	vmov	r4, r5, d0
 8004efc:	2200      	movs	r2, #0
 8004efe:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004f02:	ee10 0a10 	vmov	r0, s0
 8004f06:	4629      	mov	r1, r5
 8004f08:	f7fb fb36 	bl	8000578 <__aeabi_dmul>
 8004f0c:	ec41 0b10 	vmov	d0, r0, r1
 8004f10:	f000 fc1a 	bl	8005748 <floor>
 8004f14:	2200      	movs	r2, #0
 8004f16:	ec51 0b10 	vmov	r0, r1, d0
 8004f1a:	4b63      	ldr	r3, [pc, #396]	; (80050a8 <__kernel_rem_pio2+0x320>)
 8004f1c:	f7fb fb2c 	bl	8000578 <__aeabi_dmul>
 8004f20:	4602      	mov	r2, r0
 8004f22:	460b      	mov	r3, r1
 8004f24:	4620      	mov	r0, r4
 8004f26:	4629      	mov	r1, r5
 8004f28:	f7fb f96e 	bl	8000208 <__aeabi_dsub>
 8004f2c:	460d      	mov	r5, r1
 8004f2e:	4604      	mov	r4, r0
 8004f30:	f7fb fdd2 	bl	8000ad8 <__aeabi_d2iz>
 8004f34:	4680      	mov	r8, r0
 8004f36:	f7fb fab5 	bl	80004a4 <__aeabi_i2d>
 8004f3a:	460b      	mov	r3, r1
 8004f3c:	4602      	mov	r2, r0
 8004f3e:	4629      	mov	r1, r5
 8004f40:	4620      	mov	r0, r4
 8004f42:	f7fb f961 	bl	8000208 <__aeabi_dsub>
 8004f46:	464b      	mov	r3, r9
 8004f48:	2b00      	cmp	r3, #0
 8004f4a:	4606      	mov	r6, r0
 8004f4c:	460f      	mov	r7, r1
 8004f4e:	f340 80e0 	ble.w	8005112 <__kernel_rem_pio2+0x38a>
 8004f52:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004f56:	a90c      	add	r1, sp, #48	; 0x30
 8004f58:	f1c9 0318 	rsb	r3, r9, #24
 8004f5c:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
 8004f60:	fa45 f103 	asr.w	r1, r5, r3
 8004f64:	fa01 f303 	lsl.w	r3, r1, r3
 8004f68:	a80c      	add	r0, sp, #48	; 0x30
 8004f6a:	1aeb      	subs	r3, r5, r3
 8004f6c:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
 8004f70:	f1c9 0517 	rsb	r5, r9, #23
 8004f74:	4488      	add	r8, r1
 8004f76:	fa43 f505 	asr.w	r5, r3, r5
 8004f7a:	2d00      	cmp	r5, #0
 8004f7c:	dd2c      	ble.n	8004fd8 <__kernel_rem_pio2+0x250>
 8004f7e:	f1bb 0f00 	cmp.w	fp, #0
 8004f82:	f108 0801 	add.w	r8, r8, #1
 8004f86:	f340 8286 	ble.w	8005496 <__kernel_rem_pio2+0x70e>
 8004f8a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8004f8c:	2c00      	cmp	r4, #0
 8004f8e:	f040 80a6 	bne.w	80050de <__kernel_rem_pio2+0x356>
 8004f92:	f1bb 0f01 	cmp.w	fp, #1
 8004f96:	d00a      	beq.n	8004fae <__kernel_rem_pio2+0x226>
 8004f98:	a90c      	add	r1, sp, #48	; 0x30
 8004f9a:	2201      	movs	r2, #1
 8004f9c:	f851 4f04 	ldr.w	r4, [r1, #4]!
 8004fa0:	1c53      	adds	r3, r2, #1
 8004fa2:	2c00      	cmp	r4, #0
 8004fa4:	f040 809d 	bne.w	80050e2 <__kernel_rem_pio2+0x35a>
 8004fa8:	459b      	cmp	fp, r3
 8004faa:	461a      	mov	r2, r3
 8004fac:	d1f6      	bne.n	8004f9c <__kernel_rem_pio2+0x214>
 8004fae:	9b05      	ldr	r3, [sp, #20]
 8004fb0:	2b00      	cmp	r3, #0
 8004fb2:	dd0e      	ble.n	8004fd2 <__kernel_rem_pio2+0x24a>
 8004fb4:	2b01      	cmp	r3, #1
 8004fb6:	f000 80d8 	beq.w	800516a <__kernel_rem_pio2+0x3e2>
 8004fba:	2b02      	cmp	r3, #2
 8004fbc:	d109      	bne.n	8004fd2 <__kernel_rem_pio2+0x24a>
 8004fbe:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004fc2:	ab0c      	add	r3, sp, #48	; 0x30
 8004fc4:	a90c      	add	r1, sp, #48	; 0x30
 8004fc6:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8004fca:	f3c3 0315 	ubfx	r3, r3, #0, #22
 8004fce:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 8004fd2:	2d02      	cmp	r5, #2
 8004fd4:	f000 80ae 	beq.w	8005134 <__kernel_rem_pio2+0x3ac>
 8004fd8:	2200      	movs	r2, #0
 8004fda:	2300      	movs	r3, #0
 8004fdc:	4630      	mov	r0, r6
 8004fde:	4639      	mov	r1, r7
 8004fe0:	f7fb fd32 	bl	8000a48 <__aeabi_dcmpeq>
 8004fe4:	2800      	cmp	r0, #0
 8004fe6:	f000 8258 	beq.w	800549a <__kernel_rem_pio2+0x712>
 8004fea:	9b04      	ldr	r3, [sp, #16]
 8004fec:	f10b 39ff 	add.w	r9, fp, #4294967295	; 0xffffffff
 8004ff0:	454b      	cmp	r3, r9
 8004ff2:	dc10      	bgt.n	8005016 <__kernel_rem_pio2+0x28e>
 8004ff4:	f10b 4380 	add.w	r3, fp, #1073741824	; 0x40000000
 8004ff8:	aa0c      	add	r2, sp, #48	; 0x30
 8004ffa:	3b01      	subs	r3, #1
 8004ffc:	9808      	ldr	r0, [sp, #32]
 8004ffe:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 8005002:	2200      	movs	r2, #0
 8005004:	f853 1904 	ldr.w	r1, [r3], #-4
 8005008:	4283      	cmp	r3, r0
 800500a:	ea42 0201 	orr.w	r2, r2, r1
 800500e:	d1f9      	bne.n	8005004 <__kernel_rem_pio2+0x27c>
 8005010:	2a00      	cmp	r2, #0
 8005012:	f040 80b5 	bne.w	8005180 <__kernel_rem_pio2+0x3f8>
 8005016:	9b04      	ldr	r3, [sp, #16]
 8005018:	aa0c      	add	r2, sp, #48	; 0x30
 800501a:	3b01      	subs	r3, #1
 800501c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8005020:	2b00      	cmp	r3, #0
 8005022:	f040 80a0 	bne.w	8005166 <__kernel_rem_pio2+0x3de>
 8005026:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005028:	2301      	movs	r3, #1
 800502a:	f852 1904 	ldr.w	r1, [r2], #-4
 800502e:	3301      	adds	r3, #1
 8005030:	2900      	cmp	r1, #0
 8005032:	d0fa      	beq.n	800502a <__kernel_rem_pio2+0x2a2>
 8005034:	445b      	add	r3, fp
 8005036:	f10b 0901 	add.w	r9, fp, #1
 800503a:	4599      	cmp	r9, r3
 800503c:	9306      	str	r3, [sp, #24]
 800503e:	dc4b      	bgt.n	80050d8 <__kernel_rem_pio2+0x350>
 8005040:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005042:	9907      	ldr	r1, [sp, #28]
 8005044:	eb09 0802 	add.w	r8, r9, r2
 8005048:	eb01 050b 	add.w	r5, r1, fp
 800504c:	f108 4880 	add.w	r8, r8, #1073741824	; 0x40000000
 8005050:	eb02 0b03 	add.w	fp, r2, r3
 8005054:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8005056:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 800505a:	eb03 0888 	add.w	r8, r3, r8, lsl #2
 800505e:	ab70      	add	r3, sp, #448	; 0x1c0
 8005060:	eb03 09c9 	add.w	r9, r3, r9, lsl #3
 8005064:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8005066:	a920      	add	r1, sp, #128	; 0x80
 8005068:	eb03 038b 	add.w	r3, r3, fp, lsl #2
 800506c:	eb01 05c5 	add.w	r5, r1, r5, lsl #3
 8005070:	9302      	str	r3, [sp, #8]
 8005072:	f858 0f04 	ldr.w	r0, [r8, #4]!
 8005076:	f7fb fa15 	bl	80004a4 <__aeabi_i2d>
 800507a:	460b      	mov	r3, r1
 800507c:	9901      	ldr	r1, [sp, #4]
 800507e:	4602      	mov	r2, r0
 8005080:	2900      	cmp	r1, #0
 8005082:	f105 0b08 	add.w	fp, r5, #8
 8005086:	e9c5 2300 	strd	r2, r3, [r5]
 800508a:	f04f 0600 	mov.w	r6, #0
 800508e:	f04f 0700 	mov.w	r7, #0
 8005092:	db1b      	blt.n	80050cc <__kernel_rem_pio2+0x344>
 8005094:	9c03      	ldr	r4, [sp, #12]
 8005096:	e00b      	b.n	80050b0 <__kernel_rem_pio2+0x328>
 8005098:	0800ab90 	.word	0x0800ab90
 800509c:	2aaaaaab 	.word	0x2aaaaaab
 80050a0:	3e700000 	.word	0x3e700000
 80050a4:	41700000 	.word	0x41700000
 80050a8:	40200000 	.word	0x40200000
 80050ac:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 80050b0:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 80050b4:	f7fb fa60 	bl	8000578 <__aeabi_dmul>
 80050b8:	4602      	mov	r2, r0
 80050ba:	460b      	mov	r3, r1
 80050bc:	4630      	mov	r0, r6
 80050be:	4639      	mov	r1, r7
 80050c0:	f7fb f8a4 	bl	800020c <__adddf3>
 80050c4:	4554      	cmp	r4, sl
 80050c6:	4606      	mov	r6, r0
 80050c8:	460f      	mov	r7, r1
 80050ca:	d1ef      	bne.n	80050ac <__kernel_rem_pio2+0x324>
 80050cc:	9b02      	ldr	r3, [sp, #8]
 80050ce:	4598      	cmp	r8, r3
 80050d0:	e8e9 6702 	strd	r6, r7, [r9], #8
 80050d4:	465d      	mov	r5, fp
 80050d6:	d1cc      	bne.n	8005072 <__kernel_rem_pio2+0x2ea>
 80050d8:	f8dd b018 	ldr.w	fp, [sp, #24]
 80050dc:	e6d3      	b.n	8004e86 <__kernel_rem_pio2+0xfe>
 80050de:	2301      	movs	r3, #1
 80050e0:	2200      	movs	r2, #0
 80050e2:	a90c      	add	r1, sp, #48	; 0x30
 80050e4:	f1c4 7480 	rsb	r4, r4, #16777216	; 0x1000000
 80050e8:	459b      	cmp	fp, r3
 80050ea:	f841 4022 	str.w	r4, [r1, r2, lsl #2]
 80050ee:	dd0e      	ble.n	800510e <__kernel_rem_pio2+0x386>
 80050f0:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80050f4:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 80050f8:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 80050fc:	f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
 8005100:	e000      	b.n	8005104 <__kernel_rem_pio2+0x37c>
 8005102:	681a      	ldr	r2, [r3, #0]
 8005104:	1a8a      	subs	r2, r1, r2
 8005106:	f843 2b04 	str.w	r2, [r3], #4
 800510a:	4283      	cmp	r3, r0
 800510c:	d1f9      	bne.n	8005102 <__kernel_rem_pio2+0x37a>
 800510e:	2401      	movs	r4, #1
 8005110:	e74d      	b.n	8004fae <__kernel_rem_pio2+0x226>
 8005112:	d106      	bne.n	8005122 <__kernel_rem_pio2+0x39a>
 8005114:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8005118:	aa0c      	add	r2, sp, #48	; 0x30
 800511a:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
 800511e:	15ed      	asrs	r5, r5, #23
 8005120:	e72b      	b.n	8004f7a <__kernel_rem_pio2+0x1f2>
 8005122:	2200      	movs	r2, #0
 8005124:	4b7e      	ldr	r3, [pc, #504]	; (8005320 <__kernel_rem_pio2+0x598>)
 8005126:	f7fb fcad 	bl	8000a84 <__aeabi_dcmpge>
 800512a:	2800      	cmp	r0, #0
 800512c:	f040 81a9 	bne.w	8005482 <__kernel_rem_pio2+0x6fa>
 8005130:	4605      	mov	r5, r0
 8005132:	e751      	b.n	8004fd8 <__kernel_rem_pio2+0x250>
 8005134:	4632      	mov	r2, r6
 8005136:	463b      	mov	r3, r7
 8005138:	2000      	movs	r0, #0
 800513a:	497a      	ldr	r1, [pc, #488]	; (8005324 <__kernel_rem_pio2+0x59c>)
 800513c:	f7fb f864 	bl	8000208 <__aeabi_dsub>
 8005140:	4606      	mov	r6, r0
 8005142:	460f      	mov	r7, r1
 8005144:	2c00      	cmp	r4, #0
 8005146:	f43f af47 	beq.w	8004fd8 <__kernel_rem_pio2+0x250>
 800514a:	9805      	ldr	r0, [sp, #20]
 800514c:	ed9f 0b70 	vldr	d0, [pc, #448]	; 8005310 <__kernel_rem_pio2+0x588>
 8005150:	f000 fc16 	bl	8005980 <scalbn>
 8005154:	4630      	mov	r0, r6
 8005156:	4639      	mov	r1, r7
 8005158:	ec53 2b10 	vmov	r2, r3, d0
 800515c:	f7fb f854 	bl	8000208 <__aeabi_dsub>
 8005160:	4606      	mov	r6, r0
 8005162:	460f      	mov	r7, r1
 8005164:	e738      	b.n	8004fd8 <__kernel_rem_pio2+0x250>
 8005166:	2301      	movs	r3, #1
 8005168:	e764      	b.n	8005034 <__kernel_rem_pio2+0x2ac>
 800516a:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 800516e:	ab0c      	add	r3, sp, #48	; 0x30
 8005170:	a90c      	add	r1, sp, #48	; 0x30
 8005172:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8005176:	f3c3 0316 	ubfx	r3, r3, #0, #23
 800517a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 800517e:	e728      	b.n	8004fd2 <__kernel_rem_pio2+0x24a>
 8005180:	ab0c      	add	r3, sp, #48	; 0x30
 8005182:	9a05      	ldr	r2, [sp, #20]
 8005184:	f853 3029 	ldr.w	r3, [r3, r9, lsl #2]
 8005188:	3a18      	subs	r2, #24
 800518a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 800518e:	9205      	str	r2, [sp, #20]
 8005190:	b96b      	cbnz	r3, 80051ae <__kernel_rem_pio2+0x426>
 8005192:	f109 4380 	add.w	r3, r9, #1073741824	; 0x40000000
 8005196:	3b01      	subs	r3, #1
 8005198:	a90c      	add	r1, sp, #48	; 0x30
 800519a:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 800519e:	f853 1904 	ldr.w	r1, [r3], #-4
 80051a2:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 80051a6:	3a18      	subs	r2, #24
 80051a8:	2900      	cmp	r1, #0
 80051aa:	d0f8      	beq.n	800519e <__kernel_rem_pio2+0x416>
 80051ac:	9205      	str	r2, [sp, #20]
 80051ae:	9805      	ldr	r0, [sp, #20]
 80051b0:	ed9f 0b57 	vldr	d0, [pc, #348]	; 8005310 <__kernel_rem_pio2+0x588>
 80051b4:	f000 fbe4 	bl	8005980 <scalbn>
 80051b8:	f1b9 0f00 	cmp.w	r9, #0
 80051bc:	ec55 4b10 	vmov	r4, r5, d0
 80051c0:	f2c0 81c9 	blt.w	8005556 <__kernel_rem_pio2+0x7ce>
 80051c4:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 80051c8:	aa70      	add	r2, sp, #448	; 0x1c0
 80051ca:	eb02 0803 	add.w	r8, r2, r3
 80051ce:	9308      	str	r3, [sp, #32]
 80051d0:	ab0c      	add	r3, sp, #48	; 0x30
 80051d2:	eb03 0689 	add.w	r6, r3, r9, lsl #2
 80051d6:	f8df b150 	ldr.w	fp, [pc, #336]	; 8005328 <__kernel_rem_pio2+0x5a0>
 80051da:	f04f 0a00 	mov.w	sl, #0
 80051de:	f108 0708 	add.w	r7, r8, #8
 80051e2:	3604      	adds	r6, #4
 80051e4:	f856 0d04 	ldr.w	r0, [r6, #-4]!
 80051e8:	f7fb f95c 	bl	80004a4 <__aeabi_i2d>
 80051ec:	4622      	mov	r2, r4
 80051ee:	462b      	mov	r3, r5
 80051f0:	f7fb f9c2 	bl	8000578 <__aeabi_dmul>
 80051f4:	465b      	mov	r3, fp
 80051f6:	e967 0102 	strd	r0, r1, [r7, #-8]!
 80051fa:	4652      	mov	r2, sl
 80051fc:	4620      	mov	r0, r4
 80051fe:	4629      	mov	r1, r5
 8005200:	f7fb f9ba 	bl	8000578 <__aeabi_dmul>
 8005204:	ab0c      	add	r3, sp, #48	; 0x30
 8005206:	429e      	cmp	r6, r3
 8005208:	4604      	mov	r4, r0
 800520a:	460d      	mov	r5, r1
 800520c:	d1ea      	bne.n	80051e4 <__kernel_rem_pio2+0x45c>
 800520e:	ab48      	add	r3, sp, #288	; 0x120
 8005210:	9303      	str	r3, [sp, #12]
 8005212:	9301      	str	r3, [sp, #4]
 8005214:	f8cd 9014 	str.w	r9, [sp, #20]
 8005218:	f109 0301 	add.w	r3, r9, #1
 800521c:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8005220:	9302      	str	r3, [sp, #8]
 8005222:	46c3      	mov	fp, r8
 8005224:	f04f 0a00 	mov.w	sl, #0
 8005228:	f1b9 0f00 	cmp.w	r9, #0
 800522c:	f2c0 8130 	blt.w	8005490 <__kernel_rem_pio2+0x708>
 8005230:	f8df 80f8 	ldr.w	r8, [pc, #248]	; 800532c <__kernel_rem_pio2+0x5a4>
 8005234:	465d      	mov	r5, fp
 8005236:	a338      	add	r3, pc, #224	; (adr r3, 8005318 <__kernel_rem_pio2+0x590>)
 8005238:	e9d3 2300 	ldrd	r2, r3, [r3]
 800523c:	2600      	movs	r6, #0
 800523e:	2700      	movs	r7, #0
 8005240:	2400      	movs	r4, #0
 8005242:	e003      	b.n	800524c <__kernel_rem_pio2+0x4c4>
 8005244:	4554      	cmp	r4, sl
 8005246:	dc10      	bgt.n	800526a <__kernel_rem_pio2+0x4e2>
 8005248:	e8f8 2302 	ldrd	r2, r3, [r8], #8
 800524c:	e8f5 0102 	ldrd	r0, r1, [r5], #8
 8005250:	f7fb f992 	bl	8000578 <__aeabi_dmul>
 8005254:	4602      	mov	r2, r0
 8005256:	460b      	mov	r3, r1
 8005258:	4630      	mov	r0, r6
 800525a:	4639      	mov	r1, r7
 800525c:	f7fa ffd6 	bl	800020c <__adddf3>
 8005260:	3401      	adds	r4, #1
 8005262:	45a1      	cmp	r9, r4
 8005264:	4606      	mov	r6, r0
 8005266:	460f      	mov	r7, r1
 8005268:	daec      	bge.n	8005244 <__kernel_rem_pio2+0x4bc>
 800526a:	9b01      	ldr	r3, [sp, #4]
 800526c:	e8e3 6702 	strd	r6, r7, [r3], #8
 8005270:	9301      	str	r3, [sp, #4]
 8005272:	9b02      	ldr	r3, [sp, #8]
 8005274:	f10a 0a01 	add.w	sl, sl, #1
 8005278:	459a      	cmp	sl, r3
 800527a:	f1ab 0b08 	sub.w	fp, fp, #8
 800527e:	d1d3      	bne.n	8005228 <__kernel_rem_pio2+0x4a0>
 8005280:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 8005282:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8005286:	2b03      	cmp	r3, #3
 8005288:	d839      	bhi.n	80052fe <__kernel_rem_pio2+0x576>
 800528a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800528e:	00df      	.short	0x00df
 8005290:	00060006 	.word	0x00060006
 8005294:	0053      	.short	0x0053
 8005296:	ab48      	add	r3, sp, #288	; 0x120
 8005298:	9303      	str	r3, [sp, #12]
 800529a:	f1b9 0f00 	cmp.w	r9, #0
 800529e:	f04f 0000 	mov.w	r0, #0
 80052a2:	f04f 0100 	mov.w	r1, #0
 80052a6:	db09      	blt.n	80052bc <__kernel_rem_pio2+0x534>
 80052a8:	9d03      	ldr	r5, [sp, #12]
 80052aa:	eb05 04c9 	add.w	r4, r5, r9, lsl #3
 80052ae:	3408      	adds	r4, #8
 80052b0:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 80052b4:	f7fa ffaa 	bl	800020c <__adddf3>
 80052b8:	42a5      	cmp	r5, r4
 80052ba:	d1f9      	bne.n	80052b0 <__kernel_rem_pio2+0x528>
 80052bc:	9b07      	ldr	r3, [sp, #28]
 80052be:	2b00      	cmp	r3, #0
 80052c0:	f040 8127 	bne.w	8005512 <__kernel_rem_pio2+0x78a>
 80052c4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80052c6:	e9c3 0100 	strd	r0, r1, [r3]
 80052ca:	460b      	mov	r3, r1
 80052cc:	9903      	ldr	r1, [sp, #12]
 80052ce:	4602      	mov	r2, r0
 80052d0:	e9d1 0100 	ldrd	r0, r1, [r1]
 80052d4:	f7fa ff98 	bl	8000208 <__aeabi_dsub>
 80052d8:	f1b9 0f00 	cmp.w	r9, #0
 80052dc:	dd0c      	ble.n	80052f8 <__kernel_rem_pio2+0x570>
 80052de:	ad4a      	add	r5, sp, #296	; 0x128
 80052e0:	2401      	movs	r4, #1
 80052e2:	3401      	adds	r4, #1
 80052e4:	e8f5 2302 	ldrd	r2, r3, [r5], #8
 80052e8:	f7fa ff90 	bl	800020c <__adddf3>
 80052ec:	45a1      	cmp	r9, r4
 80052ee:	daf8      	bge.n	80052e2 <__kernel_rem_pio2+0x55a>
 80052f0:	9b07      	ldr	r3, [sp, #28]
 80052f2:	2b00      	cmp	r3, #0
 80052f4:	f040 811d 	bne.w	8005532 <__kernel_rem_pio2+0x7aa>
 80052f8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80052fa:	e9c3 0102 	strd	r0, r1, [r3, #8]
 80052fe:	9b06      	ldr	r3, [sp, #24]
 8005300:	f003 0007 	and.w	r0, r3, #7
 8005304:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 8005308:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800530c:	f3af 8000 	nop.w
 8005310:	00000000 	.word	0x00000000
 8005314:	3ff00000 	.word	0x3ff00000
 8005318:	40000000 	.word	0x40000000
 800531c:	3ff921fb 	.word	0x3ff921fb
 8005320:	3fe00000 	.word	0x3fe00000
 8005324:	3ff00000 	.word	0x3ff00000
 8005328:	3e700000 	.word	0x3e700000
 800532c:	0800ab58 	.word	0x0800ab58
 8005330:	ab48      	add	r3, sp, #288	; 0x120
 8005332:	9303      	str	r3, [sp, #12]
 8005334:	f1b9 0f00 	cmp.w	r9, #0
 8005338:	f340 8129 	ble.w	800558e <__kernel_rem_pio2+0x806>
 800533c:	9a03      	ldr	r2, [sp, #12]
 800533e:	f8cd 9010 	str.w	r9, [sp, #16]
 8005342:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8005346:	9301      	str	r3, [sp, #4]
 8005348:	18d3      	adds	r3, r2, r3
 800534a:	e9d3 ab00 	ldrd	sl, fp, [r3]
 800534e:	f109 5300 	add.w	r3, r9, #536870912	; 0x20000000
 8005352:	3b01      	subs	r3, #1
 8005354:	eb02 08c9 	add.w	r8, r2, r9, lsl #3
 8005358:	9302      	str	r3, [sp, #8]
 800535a:	4691      	mov	r9, r2
 800535c:	e978 6702 	ldrd	r6, r7, [r8, #-8]!
 8005360:	4652      	mov	r2, sl
 8005362:	465b      	mov	r3, fp
 8005364:	4630      	mov	r0, r6
 8005366:	4639      	mov	r1, r7
 8005368:	f7fa ff50 	bl	800020c <__adddf3>
 800536c:	4604      	mov	r4, r0
 800536e:	460d      	mov	r5, r1
 8005370:	4602      	mov	r2, r0
 8005372:	460b      	mov	r3, r1
 8005374:	4630      	mov	r0, r6
 8005376:	4639      	mov	r1, r7
 8005378:	f7fa ff46 	bl	8000208 <__aeabi_dsub>
 800537c:	4652      	mov	r2, sl
 800537e:	465b      	mov	r3, fp
 8005380:	f7fa ff44 	bl	800020c <__adddf3>
 8005384:	45c1      	cmp	r9, r8
 8005386:	46a2      	mov	sl, r4
 8005388:	46ab      	mov	fp, r5
 800538a:	e9c8 0102 	strd	r0, r1, [r8, #8]
 800538e:	e9c8 4500 	strd	r4, r5, [r8]
 8005392:	d1e3      	bne.n	800535c <__kernel_rem_pio2+0x5d4>
 8005394:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8005398:	f1b9 0f01 	cmp.w	r9, #1
 800539c:	f340 80f7 	ble.w	800558e <__kernel_rem_pio2+0x806>
 80053a0:	9b01      	ldr	r3, [sp, #4]
 80053a2:	9a03      	ldr	r2, [sp, #12]
 80053a4:	9902      	ldr	r1, [sp, #8]
 80053a6:	4413      	add	r3, r2
 80053a8:	00c9      	lsls	r1, r1, #3
 80053aa:	e9d3 6700 	ldrd	r6, r7, [r3]
 80053ae:	f101 0a08 	add.w	sl, r1, #8
 80053b2:	9101      	str	r1, [sp, #4]
 80053b4:	4492      	add	sl, r2
 80053b6:	f50d 7b94 	add.w	fp, sp, #296	; 0x128
 80053ba:	e97a 8902 	ldrd	r8, r9, [sl, #-8]!
 80053be:	4632      	mov	r2, r6
 80053c0:	463b      	mov	r3, r7
 80053c2:	4640      	mov	r0, r8
 80053c4:	4649      	mov	r1, r9
 80053c6:	f7fa ff21 	bl	800020c <__adddf3>
 80053ca:	4604      	mov	r4, r0
 80053cc:	460d      	mov	r5, r1
 80053ce:	4602      	mov	r2, r0
 80053d0:	460b      	mov	r3, r1
 80053d2:	4640      	mov	r0, r8
 80053d4:	4649      	mov	r1, r9
 80053d6:	f7fa ff17 	bl	8000208 <__aeabi_dsub>
 80053da:	4632      	mov	r2, r6
 80053dc:	463b      	mov	r3, r7
 80053de:	f7fa ff15 	bl	800020c <__adddf3>
 80053e2:	45d3      	cmp	fp, sl
 80053e4:	4626      	mov	r6, r4
 80053e6:	462f      	mov	r7, r5
 80053e8:	e9ca 0102 	strd	r0, r1, [sl, #8]
 80053ec:	e9ca 4500 	strd	r4, r5, [sl]
 80053f0:	d1e3      	bne.n	80053ba <__kernel_rem_pio2+0x632>
 80053f2:	9c01      	ldr	r4, [sp, #4]
 80053f4:	9b03      	ldr	r3, [sp, #12]
 80053f6:	3410      	adds	r4, #16
 80053f8:	2000      	movs	r0, #0
 80053fa:	2100      	movs	r1, #0
 80053fc:	441c      	add	r4, r3
 80053fe:	f103 0510 	add.w	r5, r3, #16
 8005402:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 8005406:	f7fa ff01 	bl	800020c <__adddf3>
 800540a:	42a5      	cmp	r5, r4
 800540c:	d1f9      	bne.n	8005402 <__kernel_rem_pio2+0x67a>
 800540e:	9c03      	ldr	r4, [sp, #12]
 8005410:	9e07      	ldr	r6, [sp, #28]
 8005412:	e9d4 2300 	ldrd	r2, r3, [r4]
 8005416:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
 800541a:	2e00      	cmp	r6, #0
 800541c:	f000 808d 	beq.w	800553a <__kernel_rem_pio2+0x7b2>
 8005420:	f103 4700 	add.w	r7, r3, #2147483648	; 0x80000000
 8005424:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8005428:	990b      	ldr	r1, [sp, #44]	; 0x2c
 800542a:	e9c1 0304 	strd	r0, r3, [r1, #16]
 800542e:	9b06      	ldr	r3, [sp, #24]
 8005430:	4626      	mov	r6, r4
 8005432:	4694      	mov	ip, r2
 8005434:	f105 4400 	add.w	r4, r5, #2147483648	; 0x80000000
 8005438:	f003 0007 	and.w	r0, r3, #7
 800543c:	e9c1 c700 	strd	ip, r7, [r1]
 8005440:	e9c1 6402 	strd	r6, r4, [r1, #8]
 8005444:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 8005448:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800544c:	9c08      	ldr	r4, [sp, #32]
 800544e:	9d03      	ldr	r5, [sp, #12]
 8005450:	3408      	adds	r4, #8
 8005452:	2000      	movs	r0, #0
 8005454:	2100      	movs	r1, #0
 8005456:	442c      	add	r4, r5
 8005458:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 800545c:	f7fa fed6 	bl	800020c <__adddf3>
 8005460:	42a5      	cmp	r5, r4
 8005462:	d1f9      	bne.n	8005458 <__kernel_rem_pio2+0x6d0>
 8005464:	9b07      	ldr	r3, [sp, #28]
 8005466:	b113      	cbz	r3, 800546e <__kernel_rem_pio2+0x6e6>
 8005468:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 800546c:	4619      	mov	r1, r3
 800546e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005470:	e9c3 0100 	strd	r0, r1, [r3]
 8005474:	9b06      	ldr	r3, [sp, #24]
 8005476:	f003 0007 	and.w	r0, r3, #7
 800547a:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 800547e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005482:	f1bb 0f00 	cmp.w	fp, #0
 8005486:	f108 0801 	add.w	r8, r8, #1
 800548a:	dd76      	ble.n	800557a <__kernel_rem_pio2+0x7f2>
 800548c:	2502      	movs	r5, #2
 800548e:	e57c      	b.n	8004f8a <__kernel_rem_pio2+0x202>
 8005490:	2600      	movs	r6, #0
 8005492:	2700      	movs	r7, #0
 8005494:	e6e9      	b.n	800526a <__kernel_rem_pio2+0x4e2>
 8005496:	2400      	movs	r4, #0
 8005498:	e589      	b.n	8004fae <__kernel_rem_pio2+0x226>
 800549a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 800549e:	9d05      	ldr	r5, [sp, #20]
 80054a0:	ec47 6b10 	vmov	d0, r6, r7
 80054a4:	4268      	negs	r0, r5
 80054a6:	f000 fa6b 	bl	8005980 <scalbn>
 80054aa:	ec57 6b10 	vmov	r6, r7, d0
 80054ae:	2200      	movs	r2, #0
 80054b0:	4b38      	ldr	r3, [pc, #224]	; (8005594 <__kernel_rem_pio2+0x80c>)
 80054b2:	ee10 0a10 	vmov	r0, s0
 80054b6:	4639      	mov	r1, r7
 80054b8:	f7fb fae4 	bl	8000a84 <__aeabi_dcmpge>
 80054bc:	b300      	cbz	r0, 8005500 <__kernel_rem_pio2+0x778>
 80054be:	2200      	movs	r2, #0
 80054c0:	4b35      	ldr	r3, [pc, #212]	; (8005598 <__kernel_rem_pio2+0x810>)
 80054c2:	4630      	mov	r0, r6
 80054c4:	4639      	mov	r1, r7
 80054c6:	f7fb f857 	bl	8000578 <__aeabi_dmul>
 80054ca:	f7fb fb05 	bl	8000ad8 <__aeabi_d2iz>
 80054ce:	4604      	mov	r4, r0
 80054d0:	f7fa ffe8 	bl	80004a4 <__aeabi_i2d>
 80054d4:	2200      	movs	r2, #0
 80054d6:	4b2f      	ldr	r3, [pc, #188]	; (8005594 <__kernel_rem_pio2+0x80c>)
 80054d8:	f7fb f84e 	bl	8000578 <__aeabi_dmul>
 80054dc:	460b      	mov	r3, r1
 80054de:	4602      	mov	r2, r0
 80054e0:	4639      	mov	r1, r7
 80054e2:	4630      	mov	r0, r6
 80054e4:	f7fa fe90 	bl	8000208 <__aeabi_dsub>
 80054e8:	f7fb faf6 	bl	8000ad8 <__aeabi_d2iz>
 80054ec:	f10b 0901 	add.w	r9, fp, #1
 80054f0:	ab0c      	add	r3, sp, #48	; 0x30
 80054f2:	3518      	adds	r5, #24
 80054f4:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 80054f8:	9505      	str	r5, [sp, #20]
 80054fa:	f843 4029 	str.w	r4, [r3, r9, lsl #2]
 80054fe:	e656      	b.n	80051ae <__kernel_rem_pio2+0x426>
 8005500:	4630      	mov	r0, r6
 8005502:	4639      	mov	r1, r7
 8005504:	f7fb fae8 	bl	8000ad8 <__aeabi_d2iz>
 8005508:	ab0c      	add	r3, sp, #48	; 0x30
 800550a:	46d9      	mov	r9, fp
 800550c:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 8005510:	e64d      	b.n	80051ae <__kernel_rem_pio2+0x426>
 8005512:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 8005514:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8005518:	e9c4 0300 	strd	r0, r3, [r4]
 800551c:	460b      	mov	r3, r1
 800551e:	9903      	ldr	r1, [sp, #12]
 8005520:	4602      	mov	r2, r0
 8005522:	e9d1 0100 	ldrd	r0, r1, [r1]
 8005526:	f7fa fe6f 	bl	8000208 <__aeabi_dsub>
 800552a:	f1b9 0f00 	cmp.w	r9, #0
 800552e:	f73f aed6 	bgt.w	80052de <__kernel_rem_pio2+0x556>
 8005532:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8005536:	4619      	mov	r1, r3
 8005538:	e6de      	b.n	80052f8 <__kernel_rem_pio2+0x570>
 800553a:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 800553c:	e9c6 2300 	strd	r2, r3, [r6]
 8005540:	9b06      	ldr	r3, [sp, #24]
 8005542:	e9c6 0104 	strd	r0, r1, [r6, #16]
 8005546:	f003 0007 	and.w	r0, r3, #7
 800554a:	e9c6 4502 	strd	r4, r5, [r6, #8]
 800554e:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 8005552:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005556:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 8005558:	2b03      	cmp	r3, #3
 800555a:	f63f aed0 	bhi.w	80052fe <__kernel_rem_pio2+0x576>
 800555e:	a201      	add	r2, pc, #4	; (adr r2, 8005564 <__kernel_rem_pio2+0x7dc>)
 8005560:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8005564:	08005575 	.word	0x08005575
 8005568:	08005297 	.word	0x08005297
 800556c:	08005297 	.word	0x08005297
 8005570:	08005331 	.word	0x08005331
 8005574:	2000      	movs	r0, #0
 8005576:	2100      	movs	r1, #0
 8005578:	e774      	b.n	8005464 <__kernel_rem_pio2+0x6dc>
 800557a:	4632      	mov	r2, r6
 800557c:	463b      	mov	r3, r7
 800557e:	2000      	movs	r0, #0
 8005580:	4906      	ldr	r1, [pc, #24]	; (800559c <__kernel_rem_pio2+0x814>)
 8005582:	f7fa fe41 	bl	8000208 <__aeabi_dsub>
 8005586:	2502      	movs	r5, #2
 8005588:	4606      	mov	r6, r0
 800558a:	460f      	mov	r7, r1
 800558c:	e524      	b.n	8004fd8 <__kernel_rem_pio2+0x250>
 800558e:	2000      	movs	r0, #0
 8005590:	2100      	movs	r1, #0
 8005592:	e73c      	b.n	800540e <__kernel_rem_pio2+0x686>
 8005594:	41700000 	.word	0x41700000
 8005598:	3e700000 	.word	0x3e700000
 800559c:	3ff00000 	.word	0x3ff00000

080055a0 <__kernel_sin>:
 80055a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055a4:	ec55 4b10 	vmov	r4, r5, d0
 80055a8:	ed2d 8b02 	vpush	{d8}
 80055ac:	eeb0 8a41 	vmov.f32	s16, s2
 80055b0:	eef0 8a61 	vmov.f32	s17, s3
 80055b4:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 80055b8:	f1b3 5f79 	cmp.w	r3, #1044381696	; 0x3e400000
 80055bc:	b083      	sub	sp, #12
 80055be:	4682      	mov	sl, r0
 80055c0:	da07      	bge.n	80055d2 <__kernel_sin+0x32>
 80055c2:	ee10 0a10 	vmov	r0, s0
 80055c6:	4629      	mov	r1, r5
 80055c8:	f7fb fa86 	bl	8000ad8 <__aeabi_d2iz>
 80055cc:	2800      	cmp	r0, #0
 80055ce:	f000 808e 	beq.w	80056ee <__kernel_sin+0x14e>
 80055d2:	4622      	mov	r2, r4
 80055d4:	462b      	mov	r3, r5
 80055d6:	4620      	mov	r0, r4
 80055d8:	4629      	mov	r1, r5
 80055da:	f7fa ffcd 	bl	8000578 <__aeabi_dmul>
 80055de:	4606      	mov	r6, r0
 80055e0:	460f      	mov	r7, r1
 80055e2:	4602      	mov	r2, r0
 80055e4:	460b      	mov	r3, r1
 80055e6:	4620      	mov	r0, r4
 80055e8:	4629      	mov	r1, r5
 80055ea:	f7fa ffc5 	bl	8000578 <__aeabi_dmul>
 80055ee:	a347      	add	r3, pc, #284	; (adr r3, 800570c <__kernel_sin+0x16c>)
 80055f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80055f4:	4680      	mov	r8, r0
 80055f6:	4689      	mov	r9, r1
 80055f8:	4630      	mov	r0, r6
 80055fa:	4639      	mov	r1, r7
 80055fc:	f7fa ffbc 	bl	8000578 <__aeabi_dmul>
 8005600:	a344      	add	r3, pc, #272	; (adr r3, 8005714 <__kernel_sin+0x174>)
 8005602:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005606:	f7fa fdff 	bl	8000208 <__aeabi_dsub>
 800560a:	4632      	mov	r2, r6
 800560c:	463b      	mov	r3, r7
 800560e:	f7fa ffb3 	bl	8000578 <__aeabi_dmul>
 8005612:	a342      	add	r3, pc, #264	; (adr r3, 800571c <__kernel_sin+0x17c>)
 8005614:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005618:	f7fa fdf8 	bl	800020c <__adddf3>
 800561c:	4632      	mov	r2, r6
 800561e:	463b      	mov	r3, r7
 8005620:	f7fa ffaa 	bl	8000578 <__aeabi_dmul>
 8005624:	a33f      	add	r3, pc, #252	; (adr r3, 8005724 <__kernel_sin+0x184>)
 8005626:	e9d3 2300 	ldrd	r2, r3, [r3]
 800562a:	f7fa fded 	bl	8000208 <__aeabi_dsub>
 800562e:	4632      	mov	r2, r6
 8005630:	463b      	mov	r3, r7
 8005632:	f7fa ffa1 	bl	8000578 <__aeabi_dmul>
 8005636:	a33d      	add	r3, pc, #244	; (adr r3, 800572c <__kernel_sin+0x18c>)
 8005638:	e9d3 2300 	ldrd	r2, r3, [r3]
 800563c:	f7fa fde6 	bl	800020c <__adddf3>
 8005640:	e9cd 0100 	strd	r0, r1, [sp]
 8005644:	f1ba 0f00 	cmp.w	sl, #0
 8005648:	d037      	beq.n	80056ba <__kernel_sin+0x11a>
 800564a:	2200      	movs	r2, #0
 800564c:	4b2e      	ldr	r3, [pc, #184]	; (8005708 <__kernel_sin+0x168>)
 800564e:	ec51 0b18 	vmov	r0, r1, d8
 8005652:	f7fa ff91 	bl	8000578 <__aeabi_dmul>
 8005656:	e9dd 2300 	ldrd	r2, r3, [sp]
 800565a:	4682      	mov	sl, r0
 800565c:	468b      	mov	fp, r1
 800565e:	4640      	mov	r0, r8
 8005660:	4649      	mov	r1, r9
 8005662:	f7fa ff89 	bl	8000578 <__aeabi_dmul>
 8005666:	4602      	mov	r2, r0
 8005668:	460b      	mov	r3, r1
 800566a:	4650      	mov	r0, sl
 800566c:	4659      	mov	r1, fp
 800566e:	f7fa fdcb 	bl	8000208 <__aeabi_dsub>
 8005672:	4632      	mov	r2, r6
 8005674:	463b      	mov	r3, r7
 8005676:	f7fa ff7f 	bl	8000578 <__aeabi_dmul>
 800567a:	ec53 2b18 	vmov	r2, r3, d8
 800567e:	f7fa fdc3 	bl	8000208 <__aeabi_dsub>
 8005682:	a31f      	add	r3, pc, #124	; (adr r3, 8005700 <__kernel_sin+0x160>)
 8005684:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005688:	4606      	mov	r6, r0
 800568a:	460f      	mov	r7, r1
 800568c:	4640      	mov	r0, r8
 800568e:	4649      	mov	r1, r9
 8005690:	f7fa ff72 	bl	8000578 <__aeabi_dmul>
 8005694:	4602      	mov	r2, r0
 8005696:	460b      	mov	r3, r1
 8005698:	4630      	mov	r0, r6
 800569a:	4639      	mov	r1, r7
 800569c:	f7fa fdb6 	bl	800020c <__adddf3>
 80056a0:	4602      	mov	r2, r0
 80056a2:	460b      	mov	r3, r1
 80056a4:	4620      	mov	r0, r4
 80056a6:	4629      	mov	r1, r5
 80056a8:	f7fa fdae 	bl	8000208 <__aeabi_dsub>
 80056ac:	ec41 0b10 	vmov	d0, r0, r1
 80056b0:	b003      	add	sp, #12
 80056b2:	ecbd 8b02 	vpop	{d8}
 80056b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056ba:	4602      	mov	r2, r0
 80056bc:	460b      	mov	r3, r1
 80056be:	4630      	mov	r0, r6
 80056c0:	4639      	mov	r1, r7
 80056c2:	f7fa ff59 	bl	8000578 <__aeabi_dmul>
 80056c6:	a30e      	add	r3, pc, #56	; (adr r3, 8005700 <__kernel_sin+0x160>)
 80056c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056cc:	f7fa fd9c 	bl	8000208 <__aeabi_dsub>
 80056d0:	4642      	mov	r2, r8
 80056d2:	464b      	mov	r3, r9
 80056d4:	f7fa ff50 	bl	8000578 <__aeabi_dmul>
 80056d8:	4622      	mov	r2, r4
 80056da:	462b      	mov	r3, r5
 80056dc:	f7fa fd96 	bl	800020c <__adddf3>
 80056e0:	ec41 0b10 	vmov	d0, r0, r1
 80056e4:	b003      	add	sp, #12
 80056e6:	ecbd 8b02 	vpop	{d8}
 80056ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056ee:	ec45 4b10 	vmov	d0, r4, r5
 80056f2:	b003      	add	sp, #12
 80056f4:	ecbd 8b02 	vpop	{d8}
 80056f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056fc:	f3af 8000 	nop.w
 8005700:	55555549 	.word	0x55555549
 8005704:	3fc55555 	.word	0x3fc55555
 8005708:	3fe00000 	.word	0x3fe00000
 800570c:	5acfd57c 	.word	0x5acfd57c
 8005710:	3de5d93a 	.word	0x3de5d93a
 8005714:	8a2b9ceb 	.word	0x8a2b9ceb
 8005718:	3e5ae5e6 	.word	0x3e5ae5e6
 800571c:	57b1fe7d 	.word	0x57b1fe7d
 8005720:	3ec71de3 	.word	0x3ec71de3
 8005724:	19c161d5 	.word	0x19c161d5
 8005728:	3f2a01a0 	.word	0x3f2a01a0
 800572c:	1110f8a6 	.word	0x1110f8a6
 8005730:	3f811111 	.word	0x3f811111

08005734 <finite>:
 8005734:	ee10 3a90 	vmov	r3, s1
 8005738:	f043 4000 	orr.w	r0, r3, #2147483648	; 0x80000000
 800573c:	f500 1080 	add.w	r0, r0, #1048576	; 0x100000
 8005740:	0fc0      	lsrs	r0, r0, #31
 8005742:	4770      	bx	lr
 8005744:	0000      	movs	r0, r0
	...

08005748 <floor>:
 8005748:	ec51 0b10 	vmov	r0, r1, d0
 800574c:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8005750:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005754:	f2a3 35ff 	subw	r5, r3, #1023	; 0x3ff
 8005758:	2d13      	cmp	r5, #19
 800575a:	460c      	mov	r4, r1
 800575c:	460f      	mov	r7, r1
 800575e:	ee10 6a10 	vmov	r6, s0
 8005762:	dc1d      	bgt.n	80057a0 <floor+0x58>
 8005764:	2d00      	cmp	r5, #0
 8005766:	db3d      	blt.n	80057e4 <floor+0x9c>
 8005768:	4b39      	ldr	r3, [pc, #228]	; (8005850 <floor+0x108>)
 800576a:	fa43 f805 	asr.w	r8, r3, r5
 800576e:	ea01 0308 	and.w	r3, r1, r8
 8005772:	4303      	orrs	r3, r0
 8005774:	d019      	beq.n	80057aa <floor+0x62>
 8005776:	a334      	add	r3, pc, #208	; (adr r3, 8005848 <floor+0x100>)
 8005778:	e9d3 2300 	ldrd	r2, r3, [r3]
 800577c:	f7fa fd46 	bl	800020c <__adddf3>
 8005780:	2200      	movs	r2, #0
 8005782:	2300      	movs	r3, #0
 8005784:	f7fb f988 	bl	8000a98 <__aeabi_dcmpgt>
 8005788:	b3d0      	cbz	r0, 8005800 <floor+0xb8>
 800578a:	2c00      	cmp	r4, #0
 800578c:	da04      	bge.n	8005798 <floor+0x50>
 800578e:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 8005792:	fa43 f505 	asr.w	r5, r3, r5
 8005796:	442f      	add	r7, r5
 8005798:	ea27 0408 	bic.w	r4, r7, r8
 800579c:	2600      	movs	r6, #0
 800579e:	e02f      	b.n	8005800 <floor+0xb8>
 80057a0:	2d33      	cmp	r5, #51	; 0x33
 80057a2:	dd06      	ble.n	80057b2 <floor+0x6a>
 80057a4:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 80057a8:	d030      	beq.n	800580c <floor+0xc4>
 80057aa:	ec41 0b10 	vmov	d0, r0, r1
 80057ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80057b2:	f2a3 4313 	subw	r3, r3, #1043	; 0x413
 80057b6:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 80057ba:	fa28 f803 	lsr.w	r8, r8, r3
 80057be:	ea18 0f00 	tst.w	r8, r0
 80057c2:	d0f2      	beq.n	80057aa <floor+0x62>
 80057c4:	a320      	add	r3, pc, #128	; (adr r3, 8005848 <floor+0x100>)
 80057c6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057ca:	f7fa fd1f 	bl	800020c <__adddf3>
 80057ce:	2200      	movs	r2, #0
 80057d0:	2300      	movs	r3, #0
 80057d2:	f7fb f961 	bl	8000a98 <__aeabi_dcmpgt>
 80057d6:	b198      	cbz	r0, 8005800 <floor+0xb8>
 80057d8:	2c00      	cmp	r4, #0
 80057da:	db28      	blt.n	800582e <floor+0xe6>
 80057dc:	ea26 0608 	bic.w	r6, r6, r8
 80057e0:	463c      	mov	r4, r7
 80057e2:	e00d      	b.n	8005800 <floor+0xb8>
 80057e4:	a318      	add	r3, pc, #96	; (adr r3, 8005848 <floor+0x100>)
 80057e6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057ea:	f7fa fd0f 	bl	800020c <__adddf3>
 80057ee:	2200      	movs	r2, #0
 80057f0:	2300      	movs	r3, #0
 80057f2:	f7fb f951 	bl	8000a98 <__aeabi_dcmpgt>
 80057f6:	b118      	cbz	r0, 8005800 <floor+0xb8>
 80057f8:	2c00      	cmp	r4, #0
 80057fa:	db0f      	blt.n	800581c <floor+0xd4>
 80057fc:	2600      	movs	r6, #0
 80057fe:	4634      	mov	r4, r6
 8005800:	4623      	mov	r3, r4
 8005802:	4632      	mov	r2, r6
 8005804:	ec43 2b10 	vmov	d0, r2, r3
 8005808:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800580c:	ee10 2a10 	vmov	r2, s0
 8005810:	460b      	mov	r3, r1
 8005812:	f7fa fcfb 	bl	800020c <__adddf3>
 8005816:	ec41 0b10 	vmov	d0, r0, r1
 800581a:	e7c8      	b.n	80057ae <floor+0x66>
 800581c:	f024 4300 	bic.w	r3, r4, #2147483648	; 0x80000000
 8005820:	4a0c      	ldr	r2, [pc, #48]	; (8005854 <floor+0x10c>)
 8005822:	431e      	orrs	r6, r3
 8005824:	2e00      	cmp	r6, #0
 8005826:	bf18      	it	ne
 8005828:	4614      	movne	r4, r2
 800582a:	2600      	movs	r6, #0
 800582c:	e7e8      	b.n	8005800 <floor+0xb8>
 800582e:	2d14      	cmp	r5, #20
 8005830:	d008      	beq.n	8005844 <floor+0xfc>
 8005832:	2301      	movs	r3, #1
 8005834:	f1c5 0534 	rsb	r5, r5, #52	; 0x34
 8005838:	fa03 f505 	lsl.w	r5, r3, r5
 800583c:	19ae      	adds	r6, r5, r6
 800583e:	bf28      	it	cs
 8005840:	18ff      	addcs	r7, r7, r3
 8005842:	e7cb      	b.n	80057dc <floor+0x94>
 8005844:	3701      	adds	r7, #1
 8005846:	e7c9      	b.n	80057dc <floor+0x94>
 8005848:	8800759c 	.word	0x8800759c
 800584c:	7e37e43c 	.word	0x7e37e43c
 8005850:	000fffff 	.word	0x000fffff
 8005854:	bff00000 	.word	0xbff00000

08005858 <matherr>:
 8005858:	2000      	movs	r0, #0
 800585a:	4770      	bx	lr
 800585c:	0000      	movs	r0, r0
	...

08005860 <nan>:
 8005860:	ed9f 0b01 	vldr	d0, [pc, #4]	; 8005868 <nan+0x8>
 8005864:	4770      	bx	lr
 8005866:	bf00      	nop
 8005868:	00000000 	.word	0x00000000
 800586c:	7ff80000 	.word	0x7ff80000

08005870 <rint>:
 8005870:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005872:	ec51 0b10 	vmov	r0, r1, d0
 8005876:	f3c1 550a 	ubfx	r5, r1, #20, #11
 800587a:	f2a5 32ff 	subw	r2, r5, #1023	; 0x3ff
 800587e:	2a13      	cmp	r2, #19
 8005880:	b083      	sub	sp, #12
 8005882:	460b      	mov	r3, r1
 8005884:	ea4f 76d1 	mov.w	r6, r1, lsr #31
 8005888:	ee10 4a10 	vmov	r4, s0
 800588c:	dc2f      	bgt.n	80058ee <rint+0x7e>
 800588e:	2a00      	cmp	r2, #0
 8005890:	db4a      	blt.n	8005928 <rint+0xb8>
 8005892:	4d39      	ldr	r5, [pc, #228]	; (8005978 <rint+0x108>)
 8005894:	4115      	asrs	r5, r2
 8005896:	ea01 0705 	and.w	r7, r1, r5
 800589a:	4307      	orrs	r7, r0
 800589c:	d023      	beq.n	80058e6 <rint+0x76>
 800589e:	086d      	lsrs	r5, r5, #1
 80058a0:	4029      	ands	r1, r5
 80058a2:	430c      	orrs	r4, r1
 80058a4:	d00c      	beq.n	80058c0 <rint+0x50>
 80058a6:	f44f 2180 	mov.w	r1, #262144	; 0x40000
 80058aa:	2a13      	cmp	r2, #19
 80058ac:	ea23 0505 	bic.w	r5, r3, r5
 80058b0:	fa41 f302 	asr.w	r3, r1, r2
 80058b4:	ea43 0305 	orr.w	r3, r3, r5
 80058b8:	bf0c      	ite	eq
 80058ba:	f04f 4400 	moveq.w	r4, #2147483648	; 0x80000000
 80058be:	2400      	movne	r4, #0
 80058c0:	4a2e      	ldr	r2, [pc, #184]	; (800597c <rint+0x10c>)
 80058c2:	eb02 06c6 	add.w	r6, r2, r6, lsl #3
 80058c6:	4620      	mov	r0, r4
 80058c8:	e9d6 4500 	ldrd	r4, r5, [r6]
 80058cc:	4602      	mov	r2, r0
 80058ce:	4629      	mov	r1, r5
 80058d0:	4620      	mov	r0, r4
 80058d2:	f7fa fc9b 	bl	800020c <__adddf3>
 80058d6:	e9cd 0100 	strd	r0, r1, [sp]
 80058da:	4622      	mov	r2, r4
 80058dc:	462b      	mov	r3, r5
 80058de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80058e2:	f7fa fc91 	bl	8000208 <__aeabi_dsub>
 80058e6:	ec41 0b10 	vmov	d0, r0, r1
 80058ea:	b003      	add	sp, #12
 80058ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80058ee:	2a33      	cmp	r2, #51	; 0x33
 80058f0:	dd07      	ble.n	8005902 <rint+0x92>
 80058f2:	f5b2 6f80 	cmp.w	r2, #1024	; 0x400
 80058f6:	d1f6      	bne.n	80058e6 <rint+0x76>
 80058f8:	ee10 2a10 	vmov	r2, s0
 80058fc:	f7fa fc86 	bl	800020c <__adddf3>
 8005900:	e7f1      	b.n	80058e6 <rint+0x76>
 8005902:	f2a5 4513 	subw	r5, r5, #1043	; 0x413
 8005906:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800590a:	40ea      	lsrs	r2, r5
 800590c:	4210      	tst	r0, r2
 800590e:	d0ea      	beq.n	80058e6 <rint+0x76>
 8005910:	0852      	lsrs	r2, r2, #1
 8005912:	4210      	tst	r0, r2
 8005914:	d0d4      	beq.n	80058c0 <rint+0x50>
 8005916:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 800591a:	ea24 0202 	bic.w	r2, r4, r2
 800591e:	fa41 f505 	asr.w	r5, r1, r5
 8005922:	ea42 0405 	orr.w	r4, r2, r5
 8005926:	e7cb      	b.n	80058c0 <rint+0x50>
 8005928:	f021 4200 	bic.w	r2, r1, #2147483648	; 0x80000000
 800592c:	4302      	orrs	r2, r0
 800592e:	d0da      	beq.n	80058e6 <rint+0x76>
 8005930:	f3c1 0213 	ubfx	r2, r1, #0, #20
 8005934:	4302      	orrs	r2, r0
 8005936:	4254      	negs	r4, r2
 8005938:	4d10      	ldr	r5, [pc, #64]	; (800597c <rint+0x10c>)
 800593a:	4314      	orrs	r4, r2
 800593c:	0b24      	lsrs	r4, r4, #12
 800593e:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
 8005942:	0c4f      	lsrs	r7, r1, #17
 8005944:	f404 2100 	and.w	r1, r4, #524288	; 0x80000
 8005948:	e9d0 4500 	ldrd	r4, r5, [r0]
 800594c:	047f      	lsls	r7, r7, #17
 800594e:	ee10 2a10 	vmov	r2, s0
 8005952:	ea41 0307 	orr.w	r3, r1, r7
 8005956:	4620      	mov	r0, r4
 8005958:	4629      	mov	r1, r5
 800595a:	f7fa fc57 	bl	800020c <__adddf3>
 800595e:	e9cd 0100 	strd	r0, r1, [sp]
 8005962:	462b      	mov	r3, r5
 8005964:	4622      	mov	r2, r4
 8005966:	e9dd 0100 	ldrd	r0, r1, [sp]
 800596a:	f7fa fc4d 	bl	8000208 <__aeabi_dsub>
 800596e:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8005972:	ea43 71c6 	orr.w	r1, r3, r6, lsl #31
 8005976:	e7b6      	b.n	80058e6 <rint+0x76>
 8005978:	000fffff 	.word	0x000fffff
 800597c:	0800aba0 	.word	0x0800aba0

08005980 <scalbn>:
 8005980:	b538      	push	{r3, r4, r5, lr}
 8005982:	ec53 2b10 	vmov	r2, r3, d0
 8005986:	f3c3 510a 	ubfx	r1, r3, #20, #11
 800598a:	461c      	mov	r4, r3
 800598c:	4605      	mov	r5, r0
 800598e:	bb29      	cbnz	r1, 80059dc <scalbn+0x5c>
 8005990:	ee10 1a10 	vmov	r1, s0
 8005994:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
 8005998:	4321      	orrs	r1, r4
 800599a:	d01e      	beq.n	80059da <scalbn+0x5a>
 800599c:	4619      	mov	r1, r3
 800599e:	2200      	movs	r2, #0
 80059a0:	4b39      	ldr	r3, [pc, #228]	; (8005a88 <scalbn+0x108>)
 80059a2:	4c3a      	ldr	r4, [pc, #232]	; (8005a8c <scalbn+0x10c>)
 80059a4:	ee10 0a10 	vmov	r0, s0
 80059a8:	f7fa fde6 	bl	8000578 <__aeabi_dmul>
 80059ac:	42a5      	cmp	r5, r4
 80059ae:	4602      	mov	r2, r0
 80059b0:	460b      	mov	r3, r1
 80059b2:	db36      	blt.n	8005a22 <scalbn+0xa2>
 80059b4:	460c      	mov	r4, r1
 80059b6:	f3c1 510a 	ubfx	r1, r1, #20, #11
 80059ba:	3936      	subs	r1, #54	; 0x36
 80059bc:	4429      	add	r1, r5
 80059be:	f240 70fe 	movw	r0, #2046	; 0x7fe
 80059c2:	4281      	cmp	r1, r0
 80059c4:	dc35      	bgt.n	8005a32 <scalbn+0xb2>
 80059c6:	2900      	cmp	r1, #0
 80059c8:	dd14      	ble.n	80059f4 <scalbn+0x74>
 80059ca:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 80059ce:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 80059d2:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 80059d6:	ec43 2b10 	vmov	d0, r2, r3
 80059da:	bd38      	pop	{r3, r4, r5, pc}
 80059dc:	f240 70ff 	movw	r0, #2047	; 0x7ff
 80059e0:	4281      	cmp	r1, r0
 80059e2:	d1eb      	bne.n	80059bc <scalbn+0x3c>
 80059e4:	ee10 0a10 	vmov	r0, s0
 80059e8:	4619      	mov	r1, r3
 80059ea:	f7fa fc0f 	bl	800020c <__adddf3>
 80059ee:	ec41 0b10 	vmov	d0, r0, r1
 80059f2:	bd38      	pop	{r3, r4, r5, pc}
 80059f4:	f111 0f35 	cmn.w	r1, #53	; 0x35
 80059f8:	da1e      	bge.n	8005a38 <scalbn+0xb8>
 80059fa:	f24c 3150 	movw	r1, #50000	; 0xc350
 80059fe:	428d      	cmp	r5, r1
 8005a00:	ec43 2b11 	vmov	d1, r2, r3
 8005a04:	dd28      	ble.n	8005a58 <scalbn+0xd8>
 8005a06:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 8005a78 <scalbn+0xf8>
 8005a0a:	f000 f843 	bl	8005a94 <copysign>
 8005a0e:	a31a      	add	r3, pc, #104	; (adr r3, 8005a78 <scalbn+0xf8>)
 8005a10:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005a14:	ec51 0b10 	vmov	r0, r1, d0
 8005a18:	f7fa fdae 	bl	8000578 <__aeabi_dmul>
 8005a1c:	ec41 0b10 	vmov	d0, r0, r1
 8005a20:	bd38      	pop	{r3, r4, r5, pc}
 8005a22:	a317      	add	r3, pc, #92	; (adr r3, 8005a80 <scalbn+0x100>)
 8005a24:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005a28:	f7fa fda6 	bl	8000578 <__aeabi_dmul>
 8005a2c:	ec41 0b10 	vmov	d0, r0, r1
 8005a30:	bd38      	pop	{r3, r4, r5, pc}
 8005a32:	ec43 2b11 	vmov	d1, r2, r3
 8005a36:	e7e6      	b.n	8005a06 <scalbn+0x86>
 8005a38:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 8005a3c:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 8005a40:	3136      	adds	r1, #54	; 0x36
 8005a42:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 8005a46:	4610      	mov	r0, r2
 8005a48:	4619      	mov	r1, r3
 8005a4a:	2200      	movs	r2, #0
 8005a4c:	4b10      	ldr	r3, [pc, #64]	; (8005a90 <scalbn+0x110>)
 8005a4e:	f7fa fd93 	bl	8000578 <__aeabi_dmul>
 8005a52:	ec41 0b10 	vmov	d0, r0, r1
 8005a56:	bd38      	pop	{r3, r4, r5, pc}
 8005a58:	ed9f 0b09 	vldr	d0, [pc, #36]	; 8005a80 <scalbn+0x100>
 8005a5c:	f000 f81a 	bl	8005a94 <copysign>
 8005a60:	a307      	add	r3, pc, #28	; (adr r3, 8005a80 <scalbn+0x100>)
 8005a62:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005a66:	ec51 0b10 	vmov	r0, r1, d0
 8005a6a:	f7fa fd85 	bl	8000578 <__aeabi_dmul>
 8005a6e:	ec41 0b10 	vmov	d0, r0, r1
 8005a72:	bd38      	pop	{r3, r4, r5, pc}
 8005a74:	f3af 8000 	nop.w
 8005a78:	8800759c 	.word	0x8800759c
 8005a7c:	7e37e43c 	.word	0x7e37e43c
 8005a80:	c2f8f359 	.word	0xc2f8f359
 8005a84:	01a56e1f 	.word	0x01a56e1f
 8005a88:	43500000 	.word	0x43500000
 8005a8c:	ffff3cb0 	.word	0xffff3cb0
 8005a90:	3c900000 	.word	0x3c900000

08005a94 <copysign>:
 8005a94:	ec53 2b10 	vmov	r2, r3, d0
 8005a98:	ee11 0a90 	vmov	r0, s3
 8005a9c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8005aa0:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8005aa4:	ea41 0300 	orr.w	r3, r1, r0
 8005aa8:	ec43 2b10 	vmov	d0, r2, r3
 8005aac:	4770      	bx	lr
 8005aae:	bf00      	nop

08005ab0 <__aeabi_memclr>:
 8005ab0:	2200      	movs	r2, #0
 8005ab2:	f7fb b9b9 	b.w	8000e28 <__aeabi_memset>
 8005ab6:	bf00      	nop

08005ab8 <__errno>:
 8005ab8:	4b01      	ldr	r3, [pc, #4]	; (8005ac0 <__errno+0x8>)
 8005aba:	6818      	ldr	r0, [r3, #0]
 8005abc:	4770      	bx	lr
 8005abe:	bf00      	nop
 8005ac0:	2000001c 	.word	0x2000001c

08005ac4 <__libc_init_array>:
 8005ac4:	b570      	push	{r4, r5, r6, lr}
 8005ac6:	4e0d      	ldr	r6, [pc, #52]	; (8005afc <__libc_init_array+0x38>)
 8005ac8:	4d0d      	ldr	r5, [pc, #52]	; (8005b00 <__libc_init_array+0x3c>)
 8005aca:	1b76      	subs	r6, r6, r5
 8005acc:	10b6      	asrs	r6, r6, #2
 8005ace:	d006      	beq.n	8005ade <__libc_init_array+0x1a>
 8005ad0:	2400      	movs	r4, #0
 8005ad2:	3401      	adds	r4, #1
 8005ad4:	f855 3b04 	ldr.w	r3, [r5], #4
 8005ad8:	4798      	blx	r3
 8005ada:	42a6      	cmp	r6, r4
 8005adc:	d1f9      	bne.n	8005ad2 <__libc_init_array+0xe>
 8005ade:	4e09      	ldr	r6, [pc, #36]	; (8005b04 <__libc_init_array+0x40>)
 8005ae0:	4d09      	ldr	r5, [pc, #36]	; (8005b08 <__libc_init_array+0x44>)
 8005ae2:	1b76      	subs	r6, r6, r5
 8005ae4:	f004 feaa 	bl	800a83c <_init>
 8005ae8:	10b6      	asrs	r6, r6, #2
 8005aea:	d006      	beq.n	8005afa <__libc_init_array+0x36>
 8005aec:	2400      	movs	r4, #0
 8005aee:	3401      	adds	r4, #1
 8005af0:	f855 3b04 	ldr.w	r3, [r5], #4
 8005af4:	4798      	blx	r3
 8005af6:	42a6      	cmp	r6, r4
 8005af8:	d1f9      	bne.n	8005aee <__libc_init_array+0x2a>
 8005afa:	bd70      	pop	{r4, r5, r6, pc}
 8005afc:	0800ae48 	.word	0x0800ae48
 8005b00:	0800ae48 	.word	0x0800ae48
 8005b04:	0800ae50 	.word	0x0800ae50
 8005b08:	0800ae48 	.word	0x0800ae48

08005b0c <memset>:
 8005b0c:	b4f0      	push	{r4, r5, r6, r7}
 8005b0e:	0786      	lsls	r6, r0, #30
 8005b10:	d043      	beq.n	8005b9a <memset+0x8e>
 8005b12:	1e54      	subs	r4, r2, #1
 8005b14:	2a00      	cmp	r2, #0
 8005b16:	d03e      	beq.n	8005b96 <memset+0x8a>
 8005b18:	b2ca      	uxtb	r2, r1
 8005b1a:	4603      	mov	r3, r0
 8005b1c:	e002      	b.n	8005b24 <memset+0x18>
 8005b1e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8005b22:	d338      	bcc.n	8005b96 <memset+0x8a>
 8005b24:	f803 2b01 	strb.w	r2, [r3], #1
 8005b28:	079d      	lsls	r5, r3, #30
 8005b2a:	d1f8      	bne.n	8005b1e <memset+0x12>
 8005b2c:	2c03      	cmp	r4, #3
 8005b2e:	d92b      	bls.n	8005b88 <memset+0x7c>
 8005b30:	b2cd      	uxtb	r5, r1
 8005b32:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8005b36:	2c0f      	cmp	r4, #15
 8005b38:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8005b3c:	d916      	bls.n	8005b6c <memset+0x60>
 8005b3e:	f1a4 0710 	sub.w	r7, r4, #16
 8005b42:	093f      	lsrs	r7, r7, #4
 8005b44:	f103 0620 	add.w	r6, r3, #32
 8005b48:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8005b4c:	f103 0210 	add.w	r2, r3, #16
 8005b50:	e942 5504 	strd	r5, r5, [r2, #-16]
 8005b54:	e942 5502 	strd	r5, r5, [r2, #-8]
 8005b58:	3210      	adds	r2, #16
 8005b5a:	42b2      	cmp	r2, r6
 8005b5c:	d1f8      	bne.n	8005b50 <memset+0x44>
 8005b5e:	f004 040f 	and.w	r4, r4, #15
 8005b62:	3701      	adds	r7, #1
 8005b64:	2c03      	cmp	r4, #3
 8005b66:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8005b6a:	d90d      	bls.n	8005b88 <memset+0x7c>
 8005b6c:	461e      	mov	r6, r3
 8005b6e:	4622      	mov	r2, r4
 8005b70:	3a04      	subs	r2, #4
 8005b72:	2a03      	cmp	r2, #3
 8005b74:	f846 5b04 	str.w	r5, [r6], #4
 8005b78:	d8fa      	bhi.n	8005b70 <memset+0x64>
 8005b7a:	1f22      	subs	r2, r4, #4
 8005b7c:	f022 0203 	bic.w	r2, r2, #3
 8005b80:	3204      	adds	r2, #4
 8005b82:	4413      	add	r3, r2
 8005b84:	f004 0403 	and.w	r4, r4, #3
 8005b88:	b12c      	cbz	r4, 8005b96 <memset+0x8a>
 8005b8a:	b2c9      	uxtb	r1, r1
 8005b8c:	441c      	add	r4, r3
 8005b8e:	f803 1b01 	strb.w	r1, [r3], #1
 8005b92:	429c      	cmp	r4, r3
 8005b94:	d1fb      	bne.n	8005b8e <memset+0x82>
 8005b96:	bcf0      	pop	{r4, r5, r6, r7}
 8005b98:	4770      	bx	lr
 8005b9a:	4614      	mov	r4, r2
 8005b9c:	4603      	mov	r3, r0
 8005b9e:	e7c5      	b.n	8005b2c <memset+0x20>

08005ba0 <printf>:
 8005ba0:	b40f      	push	{r0, r1, r2, r3}
 8005ba2:	b500      	push	{lr}
 8005ba4:	4907      	ldr	r1, [pc, #28]	; (8005bc4 <printf+0x24>)
 8005ba6:	b083      	sub	sp, #12
 8005ba8:	ab04      	add	r3, sp, #16
 8005baa:	6808      	ldr	r0, [r1, #0]
 8005bac:	f853 2b04 	ldr.w	r2, [r3], #4
 8005bb0:	6881      	ldr	r1, [r0, #8]
 8005bb2:	9301      	str	r3, [sp, #4]
 8005bb4:	f000 f860 	bl	8005c78 <_vfprintf_r>
 8005bb8:	b003      	add	sp, #12
 8005bba:	f85d eb04 	ldr.w	lr, [sp], #4
 8005bbe:	b004      	add	sp, #16
 8005bc0:	4770      	bx	lr
 8005bc2:	bf00      	nop
 8005bc4:	2000001c 	.word	0x2000001c

08005bc8 <_puts_r>:
 8005bc8:	b570      	push	{r4, r5, r6, lr}
 8005bca:	4605      	mov	r5, r0
 8005bcc:	b088      	sub	sp, #32
 8005bce:	4608      	mov	r0, r1
 8005bd0:	460c      	mov	r4, r1
 8005bd2:	f7fb fa15 	bl	8001000 <strlen>
 8005bd6:	4a22      	ldr	r2, [pc, #136]	; (8005c60 <_puts_r+0x98>)
 8005bd8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005bda:	9404      	str	r4, [sp, #16]
 8005bdc:	2601      	movs	r6, #1
 8005bde:	1c44      	adds	r4, r0, #1
 8005be0:	a904      	add	r1, sp, #16
 8005be2:	9206      	str	r2, [sp, #24]
 8005be4:	2202      	movs	r2, #2
 8005be6:	9403      	str	r4, [sp, #12]
 8005be8:	9005      	str	r0, [sp, #20]
 8005bea:	68ac      	ldr	r4, [r5, #8]
 8005bec:	9607      	str	r6, [sp, #28]
 8005bee:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8005bf2:	b31b      	cbz	r3, 8005c3c <_puts_r+0x74>
 8005bf4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8005bf6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bfa:	07ce      	lsls	r6, r1, #31
 8005bfc:	b29a      	uxth	r2, r3
 8005bfe:	d401      	bmi.n	8005c04 <_puts_r+0x3c>
 8005c00:	0590      	lsls	r0, r2, #22
 8005c02:	d525      	bpl.n	8005c50 <_puts_r+0x88>
 8005c04:	0491      	lsls	r1, r2, #18
 8005c06:	d406      	bmi.n	8005c16 <_puts_r+0x4e>
 8005c08:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8005c0a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8005c0e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8005c12:	81a3      	strh	r3, [r4, #12]
 8005c14:	6662      	str	r2, [r4, #100]	; 0x64
 8005c16:	4628      	mov	r0, r5
 8005c18:	aa01      	add	r2, sp, #4
 8005c1a:	4621      	mov	r1, r4
 8005c1c:	f003 f860 	bl	8008ce0 <__sfvwrite_r>
 8005c20:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8005c22:	2800      	cmp	r0, #0
 8005c24:	bf0c      	ite	eq
 8005c26:	250a      	moveq	r5, #10
 8005c28:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005c2c:	07da      	lsls	r2, r3, #31
 8005c2e:	d402      	bmi.n	8005c36 <_puts_r+0x6e>
 8005c30:	89a3      	ldrh	r3, [r4, #12]
 8005c32:	059b      	lsls	r3, r3, #22
 8005c34:	d506      	bpl.n	8005c44 <_puts_r+0x7c>
 8005c36:	4628      	mov	r0, r5
 8005c38:	b008      	add	sp, #32
 8005c3a:	bd70      	pop	{r4, r5, r6, pc}
 8005c3c:	4628      	mov	r0, r5
 8005c3e:	f002 feb9 	bl	80089b4 <__sinit>
 8005c42:	e7d7      	b.n	8005bf4 <_puts_r+0x2c>
 8005c44:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8005c46:	f003 fa07 	bl	8009058 <__retarget_lock_release_recursive>
 8005c4a:	4628      	mov	r0, r5
 8005c4c:	b008      	add	sp, #32
 8005c4e:	bd70      	pop	{r4, r5, r6, pc}
 8005c50:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8005c52:	f003 f9ff 	bl	8009054 <__retarget_lock_acquire_recursive>
 8005c56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c5a:	b29a      	uxth	r2, r3
 8005c5c:	e7d2      	b.n	8005c04 <_puts_r+0x3c>
 8005c5e:	bf00      	nop
 8005c60:	0800abb4 	.word	0x0800abb4

08005c64 <puts>:
 8005c64:	4b02      	ldr	r3, [pc, #8]	; (8005c70 <puts+0xc>)
 8005c66:	4601      	mov	r1, r0
 8005c68:	6818      	ldr	r0, [r3, #0]
 8005c6a:	f7ff bfad 	b.w	8005bc8 <_puts_r>
 8005c6e:	bf00      	nop
 8005c70:	2000001c 	.word	0x2000001c
 8005c74:	00000000 	.word	0x00000000

08005c78 <_vfprintf_r>:
 8005c78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c7c:	b0d7      	sub	sp, #348	; 0x15c
 8005c7e:	461c      	mov	r4, r3
 8005c80:	4689      	mov	r9, r1
 8005c82:	4617      	mov	r7, r2
 8005c84:	4605      	mov	r5, r0
 8005c86:	9003      	str	r0, [sp, #12]
 8005c88:	f003 f9d2 	bl	8009030 <_localeconv_r>
 8005c8c:	6803      	ldr	r3, [r0, #0]
 8005c8e:	9316      	str	r3, [sp, #88]	; 0x58
 8005c90:	4618      	mov	r0, r3
 8005c92:	f7fb f9b5 	bl	8001000 <strlen>
 8005c96:	9408      	str	r4, [sp, #32]
 8005c98:	9015      	str	r0, [sp, #84]	; 0x54
 8005c9a:	b11d      	cbz	r5, 8005ca4 <_vfprintf_r+0x2c>
 8005c9c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005c9e:	2b00      	cmp	r3, #0
 8005ca0:	f000 8107 	beq.w	8005eb2 <_vfprintf_r+0x23a>
 8005ca4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005ca8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005cac:	07c8      	lsls	r0, r1, #31
 8005cae:	b293      	uxth	r3, r2
 8005cb0:	d402      	bmi.n	8005cb8 <_vfprintf_r+0x40>
 8005cb2:	0599      	lsls	r1, r3, #22
 8005cb4:	f140 811f 	bpl.w	8005ef6 <_vfprintf_r+0x27e>
 8005cb8:	049e      	lsls	r6, r3, #18
 8005cba:	d40a      	bmi.n	8005cd2 <_vfprintf_r+0x5a>
 8005cbc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005cc0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8005cc4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005cc8:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005ccc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005cd0:	b29b      	uxth	r3, r3
 8005cd2:	071d      	lsls	r5, r3, #28
 8005cd4:	f140 80b2 	bpl.w	8005e3c <_vfprintf_r+0x1c4>
 8005cd8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8005cdc:	2a00      	cmp	r2, #0
 8005cde:	f000 80ad 	beq.w	8005e3c <_vfprintf_r+0x1c4>
 8005ce2:	f003 021a 	and.w	r2, r3, #26
 8005ce6:	2a0a      	cmp	r2, #10
 8005ce8:	f000 80c9 	beq.w	8005e7e <_vfprintf_r+0x206>
 8005cec:	2300      	movs	r3, #0
 8005cee:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8005f08 <_vfprintf_r+0x290>
 8005cf2:	9310      	str	r3, [sp, #64]	; 0x40
 8005cf4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8005cf8:	9317      	str	r3, [sp, #92]	; 0x5c
 8005cfa:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8005cfe:	931b      	str	r3, [sp, #108]	; 0x6c
 8005d00:	9318      	str	r3, [sp, #96]	; 0x60
 8005d02:	9305      	str	r3, [sp, #20]
 8005d04:	ab2d      	add	r3, sp, #180	; 0xb4
 8005d06:	932a      	str	r3, [sp, #168]	; 0xa8
 8005d08:	469b      	mov	fp, r3
 8005d0a:	783b      	ldrb	r3, [r7, #0]
 8005d0c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005d10:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005d14:	2b00      	cmp	r3, #0
 8005d16:	f000 8259 	beq.w	80061cc <_vfprintf_r+0x554>
 8005d1a:	2b25      	cmp	r3, #37	; 0x25
 8005d1c:	463c      	mov	r4, r7
 8005d1e:	d102      	bne.n	8005d26 <_vfprintf_r+0xae>
 8005d20:	e01d      	b.n	8005d5e <_vfprintf_r+0xe6>
 8005d22:	2b25      	cmp	r3, #37	; 0x25
 8005d24:	d003      	beq.n	8005d2e <_vfprintf_r+0xb6>
 8005d26:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8005d2a:	2b00      	cmp	r3, #0
 8005d2c:	d1f9      	bne.n	8005d22 <_vfprintf_r+0xaa>
 8005d2e:	1be5      	subs	r5, r4, r7
 8005d30:	b18d      	cbz	r5, 8005d56 <_vfprintf_r+0xde>
 8005d32:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8005d36:	3301      	adds	r3, #1
 8005d38:	442a      	add	r2, r5
 8005d3a:	2b07      	cmp	r3, #7
 8005d3c:	f8cb 7000 	str.w	r7, [fp]
 8005d40:	f8cb 5004 	str.w	r5, [fp, #4]
 8005d44:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8005d48:	f300 80ca 	bgt.w	8005ee0 <_vfprintf_r+0x268>
 8005d4c:	f10b 0b08 	add.w	fp, fp, #8
 8005d50:	9b05      	ldr	r3, [sp, #20]
 8005d52:	442b      	add	r3, r5
 8005d54:	9305      	str	r3, [sp, #20]
 8005d56:	7823      	ldrb	r3, [r4, #0]
 8005d58:	2b00      	cmp	r3, #0
 8005d5a:	f000 8237 	beq.w	80061cc <_vfprintf_r+0x554>
 8005d5e:	2300      	movs	r3, #0
 8005d60:	7866      	ldrb	r6, [r4, #1]
 8005d62:	9306      	str	r3, [sp, #24]
 8005d64:	4698      	mov	r8, r3
 8005d66:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005d6a:	f104 0a01 	add.w	sl, r4, #1
 8005d6e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8005d72:	252b      	movs	r5, #43	; 0x2b
 8005d74:	f10a 0a01 	add.w	sl, sl, #1
 8005d78:	f1a6 0320 	sub.w	r3, r6, #32
 8005d7c:	2b5a      	cmp	r3, #90	; 0x5a
 8005d7e:	f200 842a 	bhi.w	80065d6 <_vfprintf_r+0x95e>
 8005d82:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005d86:	03aa      	.short	0x03aa
 8005d88:	04280428 	.word	0x04280428
 8005d8c:	0428029c 	.word	0x0428029c
 8005d90:	04280428 	.word	0x04280428
 8005d94:	042802a7 	.word	0x042802a7
 8005d98:	02c60428 	.word	0x02c60428
 8005d9c:	042802d2 	.word	0x042802d2
 8005da0:	02dc02d7 	.word	0x02dc02d7
 8005da4:	02f60428 	.word	0x02f60428
 8005da8:	026d026d 	.word	0x026d026d
 8005dac:	026d026d 	.word	0x026d026d
 8005db0:	026d026d 	.word	0x026d026d
 8005db4:	026d026d 	.word	0x026d026d
 8005db8:	0428026d 	.word	0x0428026d
 8005dbc:	04280428 	.word	0x04280428
 8005dc0:	04280428 	.word	0x04280428
 8005dc4:	04280428 	.word	0x04280428
 8005dc8:	042802fb 	.word	0x042802fb
 8005dcc:	03f3033c 	.word	0x03f3033c
 8005dd0:	02fb02fb 	.word	0x02fb02fb
 8005dd4:	042802fb 	.word	0x042802fb
 8005dd8:	04280428 	.word	0x04280428
 8005ddc:	03ee0428 	.word	0x03ee0428
 8005de0:	04280428 	.word	0x04280428
 8005de4:	0428009a 	.word	0x0428009a
 8005de8:	04280428 	.word	0x04280428
 8005dec:	04280350 	.word	0x04280350
 8005df0:	04280379 	.word	0x04280379
 8005df4:	03900428 	.word	0x03900428
 8005df8:	04280428 	.word	0x04280428
 8005dfc:	04280428 	.word	0x04280428
 8005e00:	04280428 	.word	0x04280428
 8005e04:	04280428 	.word	0x04280428
 8005e08:	042802fb 	.word	0x042802fb
 8005e0c:	00c5033c 	.word	0x00c5033c
 8005e10:	02fb02fb 	.word	0x02fb02fb
 8005e14:	03d102fb 	.word	0x03d102fb
 8005e18:	007000c5 	.word	0x007000c5
 8005e1c:	03b50428 	.word	0x03b50428
 8005e20:	03c20428 	.word	0x03c20428
 8005e24:	03de009c 	.word	0x03de009c
 8005e28:	04280070 	.word	0x04280070
 8005e2c:	00720350 	.word	0x00720350
 8005e30:	0428022c 	.word	0x0428022c
 8005e34:	027c0428 	.word	0x027c0428
 8005e38:	00720428 	.word	0x00720428
 8005e3c:	4649      	mov	r1, r9
 8005e3e:	9803      	ldr	r0, [sp, #12]
 8005e40:	f001 fc9a 	bl	8007778 <__swsetup_r>
 8005e44:	b1a0      	cbz	r0, 8005e70 <_vfprintf_r+0x1f8>
 8005e46:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8005e4a:	07d8      	lsls	r0, r3, #31
 8005e4c:	d404      	bmi.n	8005e58 <_vfprintf_r+0x1e0>
 8005e4e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005e52:	0599      	lsls	r1, r3, #22
 8005e54:	f140 83b7 	bpl.w	80065c6 <_vfprintf_r+0x94e>
 8005e58:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005e5c:	9305      	str	r3, [sp, #20]
 8005e5e:	9805      	ldr	r0, [sp, #20]
 8005e60:	b057      	add	sp, #348	; 0x15c
 8005e62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e66:	f048 0820 	orr.w	r8, r8, #32
 8005e6a:	f89a 6000 	ldrb.w	r6, [sl]
 8005e6e:	e781      	b.n	8005d74 <_vfprintf_r+0xfc>
 8005e70:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005e74:	f003 021a 	and.w	r2, r3, #26
 8005e78:	2a0a      	cmp	r2, #10
 8005e7a:	f47f af37 	bne.w	8005cec <_vfprintf_r+0x74>
 8005e7e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8005e82:	2a00      	cmp	r2, #0
 8005e84:	f6ff af32 	blt.w	8005cec <_vfprintf_r+0x74>
 8005e88:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005e8c:	07d2      	lsls	r2, r2, #31
 8005e8e:	d405      	bmi.n	8005e9c <_vfprintf_r+0x224>
 8005e90:	059b      	lsls	r3, r3, #22
 8005e92:	d403      	bmi.n	8005e9c <_vfprintf_r+0x224>
 8005e94:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005e98:	f003 f8de 	bl	8009058 <__retarget_lock_release_recursive>
 8005e9c:	4623      	mov	r3, r4
 8005e9e:	463a      	mov	r2, r7
 8005ea0:	4649      	mov	r1, r9
 8005ea2:	9803      	ldr	r0, [sp, #12]
 8005ea4:	f001 fc26 	bl	80076f4 <__sbprintf>
 8005ea8:	9005      	str	r0, [sp, #20]
 8005eaa:	9805      	ldr	r0, [sp, #20]
 8005eac:	b057      	add	sp, #348	; 0x15c
 8005eae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005eb2:	9803      	ldr	r0, [sp, #12]
 8005eb4:	f002 fd7e 	bl	80089b4 <__sinit>
 8005eb8:	e6f4      	b.n	8005ca4 <_vfprintf_r+0x2c>
 8005eba:	f048 0810 	orr.w	r8, r8, #16
 8005ebe:	f018 0f20 	tst.w	r8, #32
 8005ec2:	f000 836c 	beq.w	800659e <_vfprintf_r+0x926>
 8005ec6:	9c08      	ldr	r4, [sp, #32]
 8005ec8:	3407      	adds	r4, #7
 8005eca:	f024 0307 	bic.w	r3, r4, #7
 8005ece:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005ed2:	f103 0208 	add.w	r2, r3, #8
 8005ed6:	9208      	str	r2, [sp, #32]
 8005ed8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005edc:	2200      	movs	r2, #0
 8005ede:	e18c      	b.n	80061fa <_vfprintf_r+0x582>
 8005ee0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ee2:	9907      	ldr	r1, [sp, #28]
 8005ee4:	9803      	ldr	r0, [sp, #12]
 8005ee6:	f004 f9f5 	bl	800a2d4 <__sprint_r>
 8005eea:	2800      	cmp	r0, #0
 8005eec:	f041 8376 	bne.w	80075dc <_vfprintf_r+0x1964>
 8005ef0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005ef4:	e72c      	b.n	8005d50 <_vfprintf_r+0xd8>
 8005ef6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005efa:	f003 f8ab 	bl	8009054 <__retarget_lock_acquire_recursive>
 8005efe:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005f02:	b293      	uxth	r3, r2
 8005f04:	e6d8      	b.n	8005cb8 <_vfprintf_r+0x40>
 8005f06:	bf00      	nop
	...
 8005f10:	4643      	mov	r3, r8
 8005f12:	069f      	lsls	r7, r3, #26
 8005f14:	f140 832f 	bpl.w	8006576 <_vfprintf_r+0x8fe>
 8005f18:	9c08      	ldr	r4, [sp, #32]
 8005f1a:	3407      	adds	r4, #7
 8005f1c:	f024 0407 	bic.w	r4, r4, #7
 8005f20:	e9d4 0100 	ldrd	r0, r1, [r4]
 8005f24:	f104 0208 	add.w	r2, r4, #8
 8005f28:	9208      	str	r2, [sp, #32]
 8005f2a:	4604      	mov	r4, r0
 8005f2c:	460d      	mov	r5, r1
 8005f2e:	2800      	cmp	r0, #0
 8005f30:	f171 0200 	sbcs.w	r2, r1, #0
 8005f34:	da05      	bge.n	8005f42 <_vfprintf_r+0x2ca>
 8005f36:	222d      	movs	r2, #45	; 0x2d
 8005f38:	4264      	negs	r4, r4
 8005f3a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8005f3e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005f42:	aa56      	add	r2, sp, #344	; 0x158
 8005f44:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005f48:	9204      	str	r2, [sp, #16]
 8005f4a:	f000 84b2 	beq.w	80068b2 <_vfprintf_r+0xc3a>
 8005f4e:	2201      	movs	r2, #1
 8005f50:	ea54 0105 	orrs.w	r1, r4, r5
 8005f54:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8005f58:	f040 8159 	bne.w	800620e <_vfprintf_r+0x596>
 8005f5c:	f1b9 0f00 	cmp.w	r9, #0
 8005f60:	f040 8619 	bne.w	8006b96 <_vfprintf_r+0xf1e>
 8005f64:	2a00      	cmp	r2, #0
 8005f66:	f040 8508 	bne.w	800697a <_vfprintf_r+0xd02>
 8005f6a:	f013 0301 	ands.w	r3, r3, #1
 8005f6e:	af56      	add	r7, sp, #344	; 0x158
 8005f70:	9309      	str	r3, [sp, #36]	; 0x24
 8005f72:	d002      	beq.n	8005f7a <_vfprintf_r+0x302>
 8005f74:	2330      	movs	r3, #48	; 0x30
 8005f76:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005f7a:	2300      	movs	r3, #0
 8005f7c:	930a      	str	r3, [sp, #40]	; 0x28
 8005f7e:	930f      	str	r3, [sp, #60]	; 0x3c
 8005f80:	9314      	str	r3, [sp, #80]	; 0x50
 8005f82:	9311      	str	r3, [sp, #68]	; 0x44
 8005f84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005f86:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005f8a:	454b      	cmp	r3, r9
 8005f8c:	bfb8      	it	lt
 8005f8e:	464b      	movlt	r3, r9
 8005f90:	9304      	str	r3, [sp, #16]
 8005f92:	b112      	cbz	r2, 8005f9a <_vfprintf_r+0x322>
 8005f94:	9b04      	ldr	r3, [sp, #16]
 8005f96:	3301      	adds	r3, #1
 8005f98:	9304      	str	r3, [sp, #16]
 8005f9a:	f018 0302 	ands.w	r3, r8, #2
 8005f9e:	930b      	str	r3, [sp, #44]	; 0x2c
 8005fa0:	d002      	beq.n	8005fa8 <_vfprintf_r+0x330>
 8005fa2:	9b04      	ldr	r3, [sp, #16]
 8005fa4:	3302      	adds	r3, #2
 8005fa6:	9304      	str	r3, [sp, #16]
 8005fa8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005fac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005fae:	930e      	str	r3, [sp, #56]	; 0x38
 8005fb0:	d13f      	bne.n	8006032 <_vfprintf_r+0x3ba>
 8005fb2:	9b06      	ldr	r3, [sp, #24]
 8005fb4:	9904      	ldr	r1, [sp, #16]
 8005fb6:	1a5d      	subs	r5, r3, r1
 8005fb8:	2d00      	cmp	r5, #0
 8005fba:	dd3a      	ble.n	8006032 <_vfprintf_r+0x3ba>
 8005fbc:	2d10      	cmp	r5, #16
 8005fbe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005fc0:	dd29      	ble.n	8006016 <_vfprintf_r+0x39e>
 8005fc2:	4659      	mov	r1, fp
 8005fc4:	4620      	mov	r0, r4
 8005fc6:	9620      	str	r6, [sp, #128]	; 0x80
 8005fc8:	2310      	movs	r3, #16
 8005fca:	9c03      	ldr	r4, [sp, #12]
 8005fcc:	9e07      	ldr	r6, [sp, #28]
 8005fce:	46bb      	mov	fp, r7
 8005fd0:	e004      	b.n	8005fdc <_vfprintf_r+0x364>
 8005fd2:	3d10      	subs	r5, #16
 8005fd4:	2d10      	cmp	r5, #16
 8005fd6:	f101 0108 	add.w	r1, r1, #8
 8005fda:	dd18      	ble.n	800600e <_vfprintf_r+0x396>
 8005fdc:	3201      	adds	r2, #1
 8005fde:	4fba      	ldr	r7, [pc, #744]	; (80062c8 <_vfprintf_r+0x650>)
 8005fe0:	3010      	adds	r0, #16
 8005fe2:	2a07      	cmp	r2, #7
 8005fe4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005fe8:	e9c1 7300 	strd	r7, r3, [r1]
 8005fec:	ddf1      	ble.n	8005fd2 <_vfprintf_r+0x35a>
 8005fee:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ff0:	4631      	mov	r1, r6
 8005ff2:	4620      	mov	r0, r4
 8005ff4:	930c      	str	r3, [sp, #48]	; 0x30
 8005ff6:	f004 f96d 	bl	800a2d4 <__sprint_r>
 8005ffa:	2800      	cmp	r0, #0
 8005ffc:	f040 843d 	bne.w	800687a <_vfprintf_r+0xc02>
 8006000:	3d10      	subs	r5, #16
 8006002:	2d10      	cmp	r5, #16
 8006004:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006008:	a92d      	add	r1, sp, #180	; 0xb4
 800600a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800600c:	dce6      	bgt.n	8005fdc <_vfprintf_r+0x364>
 800600e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8006010:	465f      	mov	r7, fp
 8006012:	4604      	mov	r4, r0
 8006014:	468b      	mov	fp, r1
 8006016:	3201      	adds	r2, #1
 8006018:	4bab      	ldr	r3, [pc, #684]	; (80062c8 <_vfprintf_r+0x650>)
 800601a:	442c      	add	r4, r5
 800601c:	2a07      	cmp	r2, #7
 800601e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006022:	e9cb 3500 	strd	r3, r5, [fp]
 8006026:	f300 84ff 	bgt.w	8006a28 <_vfprintf_r+0xdb0>
 800602a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800602e:	f10b 0b08 	add.w	fp, fp, #8
 8006032:	b172      	cbz	r2, 8006052 <_vfprintf_r+0x3da>
 8006034:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006036:	3201      	adds	r2, #1
 8006038:	3401      	adds	r4, #1
 800603a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800603e:	2101      	movs	r1, #1
 8006040:	2a07      	cmp	r2, #7
 8006042:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006046:	e9cb 0100 	strd	r0, r1, [fp]
 800604a:	f300 8418 	bgt.w	800687e <_vfprintf_r+0xc06>
 800604e:	f10b 0b08 	add.w	fp, fp, #8
 8006052:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006054:	b16b      	cbz	r3, 8006072 <_vfprintf_r+0x3fa>
 8006056:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006058:	3301      	adds	r3, #1
 800605a:	3402      	adds	r4, #2
 800605c:	a923      	add	r1, sp, #140	; 0x8c
 800605e:	2202      	movs	r2, #2
 8006060:	2b07      	cmp	r3, #7
 8006062:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006066:	e9cb 1200 	strd	r1, r2, [fp]
 800606a:	f300 8415 	bgt.w	8006898 <_vfprintf_r+0xc20>
 800606e:	f10b 0b08 	add.w	fp, fp, #8
 8006072:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006074:	2b80      	cmp	r3, #128	; 0x80
 8006076:	f000 8331 	beq.w	80066dc <_vfprintf_r+0xa64>
 800607a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800607c:	eba9 0503 	sub.w	r5, r9, r3
 8006080:	2d00      	cmp	r5, #0
 8006082:	dd37      	ble.n	80060f4 <_vfprintf_r+0x47c>
 8006084:	2d10      	cmp	r5, #16
 8006086:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006088:	4b90      	ldr	r3, [pc, #576]	; (80062cc <_vfprintf_r+0x654>)
 800608a:	dd28      	ble.n	80060de <_vfprintf_r+0x466>
 800608c:	4659      	mov	r1, fp
 800608e:	4620      	mov	r0, r4
 8006090:	46bb      	mov	fp, r7
 8006092:	f04f 0910 	mov.w	r9, #16
 8006096:	4637      	mov	r7, r6
 8006098:	461c      	mov	r4, r3
 800609a:	9e07      	ldr	r6, [sp, #28]
 800609c:	e004      	b.n	80060a8 <_vfprintf_r+0x430>
 800609e:	3d10      	subs	r5, #16
 80060a0:	2d10      	cmp	r5, #16
 80060a2:	f101 0108 	add.w	r1, r1, #8
 80060a6:	dd15      	ble.n	80060d4 <_vfprintf_r+0x45c>
 80060a8:	3201      	adds	r2, #1
 80060aa:	3010      	adds	r0, #16
 80060ac:	2a07      	cmp	r2, #7
 80060ae:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80060b2:	e9c1 4900 	strd	r4, r9, [r1]
 80060b6:	ddf2      	ble.n	800609e <_vfprintf_r+0x426>
 80060b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80060ba:	4631      	mov	r1, r6
 80060bc:	9803      	ldr	r0, [sp, #12]
 80060be:	f004 f909 	bl	800a2d4 <__sprint_r>
 80060c2:	2800      	cmp	r0, #0
 80060c4:	f040 83d9 	bne.w	800687a <_vfprintf_r+0xc02>
 80060c8:	3d10      	subs	r5, #16
 80060ca:	2d10      	cmp	r5, #16
 80060cc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80060d0:	a92d      	add	r1, sp, #180	; 0xb4
 80060d2:	dce9      	bgt.n	80060a8 <_vfprintf_r+0x430>
 80060d4:	463e      	mov	r6, r7
 80060d6:	4623      	mov	r3, r4
 80060d8:	465f      	mov	r7, fp
 80060da:	4604      	mov	r4, r0
 80060dc:	468b      	mov	fp, r1
 80060de:	3201      	adds	r2, #1
 80060e0:	442c      	add	r4, r5
 80060e2:	2a07      	cmp	r2, #7
 80060e4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80060e8:	e9cb 3500 	strd	r3, r5, [fp]
 80060ec:	f300 83ef 	bgt.w	80068ce <_vfprintf_r+0xc56>
 80060f0:	f10b 0b08 	add.w	fp, fp, #8
 80060f4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80060f8:	f040 8280 	bne.w	80065fc <_vfprintf_r+0x984>
 80060fc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80060fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006100:	f8cb 7000 	str.w	r7, [fp]
 8006104:	3301      	adds	r3, #1
 8006106:	4414      	add	r4, r2
 8006108:	2b07      	cmp	r3, #7
 800610a:	942c      	str	r4, [sp, #176]	; 0xb0
 800610c:	f8cb 2004 	str.w	r2, [fp, #4]
 8006110:	932b      	str	r3, [sp, #172]	; 0xac
 8006112:	f300 8392 	bgt.w	800683a <_vfprintf_r+0xbc2>
 8006116:	f10b 0b08 	add.w	fp, fp, #8
 800611a:	f018 0f04 	tst.w	r8, #4
 800611e:	d03b      	beq.n	8006198 <_vfprintf_r+0x520>
 8006120:	9b06      	ldr	r3, [sp, #24]
 8006122:	9a04      	ldr	r2, [sp, #16]
 8006124:	1a9d      	subs	r5, r3, r2
 8006126:	2d00      	cmp	r5, #0
 8006128:	dd36      	ble.n	8006198 <_vfprintf_r+0x520>
 800612a:	2d10      	cmp	r5, #16
 800612c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800612e:	dd21      	ble.n	8006174 <_vfprintf_r+0x4fc>
 8006130:	2610      	movs	r6, #16
 8006132:	9f03      	ldr	r7, [sp, #12]
 8006134:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8006138:	e004      	b.n	8006144 <_vfprintf_r+0x4cc>
 800613a:	3d10      	subs	r5, #16
 800613c:	2d10      	cmp	r5, #16
 800613e:	f10b 0b08 	add.w	fp, fp, #8
 8006142:	dd17      	ble.n	8006174 <_vfprintf_r+0x4fc>
 8006144:	3301      	adds	r3, #1
 8006146:	4a60      	ldr	r2, [pc, #384]	; (80062c8 <_vfprintf_r+0x650>)
 8006148:	3410      	adds	r4, #16
 800614a:	2b07      	cmp	r3, #7
 800614c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006150:	e9cb 2600 	strd	r2, r6, [fp]
 8006154:	ddf1      	ble.n	800613a <_vfprintf_r+0x4c2>
 8006156:	aa2a      	add	r2, sp, #168	; 0xa8
 8006158:	4641      	mov	r1, r8
 800615a:	4638      	mov	r0, r7
 800615c:	f004 f8ba 	bl	800a2d4 <__sprint_r>
 8006160:	2800      	cmp	r0, #0
 8006162:	f040 856c 	bne.w	8006c3e <_vfprintf_r+0xfc6>
 8006166:	3d10      	subs	r5, #16
 8006168:	2d10      	cmp	r5, #16
 800616a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800616e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006172:	dce7      	bgt.n	8006144 <_vfprintf_r+0x4cc>
 8006174:	3301      	adds	r3, #1
 8006176:	4a54      	ldr	r2, [pc, #336]	; (80062c8 <_vfprintf_r+0x650>)
 8006178:	442c      	add	r4, r5
 800617a:	2b07      	cmp	r3, #7
 800617c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006180:	e9cb 2500 	strd	r2, r5, [fp]
 8006184:	dd08      	ble.n	8006198 <_vfprintf_r+0x520>
 8006186:	aa2a      	add	r2, sp, #168	; 0xa8
 8006188:	9907      	ldr	r1, [sp, #28]
 800618a:	9803      	ldr	r0, [sp, #12]
 800618c:	f004 f8a2 	bl	800a2d4 <__sprint_r>
 8006190:	2800      	cmp	r0, #0
 8006192:	f040 82e9 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006196:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006198:	9904      	ldr	r1, [sp, #16]
 800619a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800619e:	428a      	cmp	r2, r1
 80061a0:	bfac      	ite	ge
 80061a2:	189b      	addge	r3, r3, r2
 80061a4:	185b      	addlt	r3, r3, r1
 80061a6:	9305      	str	r3, [sp, #20]
 80061a8:	2c00      	cmp	r4, #0
 80061aa:	f040 82d5 	bne.w	8006758 <_vfprintf_r+0xae0>
 80061ae:	2300      	movs	r3, #0
 80061b0:	932b      	str	r3, [sp, #172]	; 0xac
 80061b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80061b4:	b11b      	cbz	r3, 80061be <_vfprintf_r+0x546>
 80061b6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80061b8:	9803      	ldr	r0, [sp, #12]
 80061ba:	f002 fc9d 	bl	8008af8 <_free_r>
 80061be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80061c2:	4657      	mov	r7, sl
 80061c4:	783b      	ldrb	r3, [r7, #0]
 80061c6:	2b00      	cmp	r3, #0
 80061c8:	f47f ada7 	bne.w	8005d1a <_vfprintf_r+0xa2>
 80061cc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80061ce:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80061d2:	2b00      	cmp	r3, #0
 80061d4:	f041 80e7 	bne.w	80073a6 <_vfprintf_r+0x172e>
 80061d8:	2300      	movs	r3, #0
 80061da:	932b      	str	r3, [sp, #172]	; 0xac
 80061dc:	e2cb      	b.n	8006776 <_vfprintf_r+0xafe>
 80061de:	4643      	mov	r3, r8
 80061e0:	069a      	lsls	r2, r3, #26
 80061e2:	f140 814e 	bpl.w	8006482 <_vfprintf_r+0x80a>
 80061e6:	9c08      	ldr	r4, [sp, #32]
 80061e8:	3407      	adds	r4, #7
 80061ea:	f024 0207 	bic.w	r2, r4, #7
 80061ee:	f102 0108 	add.w	r1, r2, #8
 80061f2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80061f6:	9108      	str	r1, [sp, #32]
 80061f8:	2201      	movs	r2, #1
 80061fa:	2100      	movs	r1, #0
 80061fc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8006200:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006204:	a956      	add	r1, sp, #344	; 0x158
 8006206:	9104      	str	r1, [sp, #16]
 8006208:	f47f aea2 	bne.w	8005f50 <_vfprintf_r+0x2d8>
 800620c:	4698      	mov	r8, r3
 800620e:	2a01      	cmp	r2, #1
 8006210:	f000 8350 	beq.w	80068b4 <_vfprintf_r+0xc3c>
 8006214:	2a02      	cmp	r2, #2
 8006216:	f000 831b 	beq.w	8006850 <_vfprintf_r+0xbd8>
 800621a:	a956      	add	r1, sp, #344	; 0x158
 800621c:	e000      	b.n	8006220 <_vfprintf_r+0x5a8>
 800621e:	4639      	mov	r1, r7
 8006220:	08e2      	lsrs	r2, r4, #3
 8006222:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8006226:	08e8      	lsrs	r0, r5, #3
 8006228:	f004 0307 	and.w	r3, r4, #7
 800622c:	4605      	mov	r5, r0
 800622e:	4614      	mov	r4, r2
 8006230:	3330      	adds	r3, #48	; 0x30
 8006232:	ea54 0205 	orrs.w	r2, r4, r5
 8006236:	f801 3c01 	strb.w	r3, [r1, #-1]
 800623a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800623e:	d1ee      	bne.n	800621e <_vfprintf_r+0x5a6>
 8006240:	f018 0f01 	tst.w	r8, #1
 8006244:	f000 8314 	beq.w	8006870 <_vfprintf_r+0xbf8>
 8006248:	2b30      	cmp	r3, #48	; 0x30
 800624a:	f000 8311 	beq.w	8006870 <_vfprintf_r+0xbf8>
 800624e:	9a04      	ldr	r2, [sp, #16]
 8006250:	3902      	subs	r1, #2
 8006252:	2330      	movs	r3, #48	; 0x30
 8006254:	1a52      	subs	r2, r2, r1
 8006256:	f807 3c01 	strb.w	r3, [r7, #-1]
 800625a:	9209      	str	r2, [sp, #36]	; 0x24
 800625c:	460f      	mov	r7, r1
 800625e:	e68c      	b.n	8005f7a <_vfprintf_r+0x302>
 8006260:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8006264:	2200      	movs	r2, #0
 8006266:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800626a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800626e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8006272:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8006276:	2b09      	cmp	r3, #9
 8006278:	d9f5      	bls.n	8006266 <_vfprintf_r+0x5ee>
 800627a:	9206      	str	r2, [sp, #24]
 800627c:	e57c      	b.n	8005d78 <_vfprintf_r+0x100>
 800627e:	4b14      	ldr	r3, [pc, #80]	; (80062d0 <_vfprintf_r+0x658>)
 8006280:	9317      	str	r3, [sp, #92]	; 0x5c
 8006282:	f018 0f20 	tst.w	r8, #32
 8006286:	f000 8114 	beq.w	80064b2 <_vfprintf_r+0x83a>
 800628a:	9c08      	ldr	r4, [sp, #32]
 800628c:	3407      	adds	r4, #7
 800628e:	f024 0307 	bic.w	r3, r4, #7
 8006292:	e9d3 4500 	ldrd	r4, r5, [r3]
 8006296:	f103 0208 	add.w	r2, r3, #8
 800629a:	9208      	str	r2, [sp, #32]
 800629c:	f018 0f01 	tst.w	r8, #1
 80062a0:	d009      	beq.n	80062b6 <_vfprintf_r+0x63e>
 80062a2:	ea54 0305 	orrs.w	r3, r4, r5
 80062a6:	d006      	beq.n	80062b6 <_vfprintf_r+0x63e>
 80062a8:	2330      	movs	r3, #48	; 0x30
 80062aa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80062ae:	f048 0802 	orr.w	r8, r8, #2
 80062b2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80062b6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80062ba:	2202      	movs	r2, #2
 80062bc:	e79d      	b.n	80061fa <_vfprintf_r+0x582>
 80062be:	f048 0801 	orr.w	r8, r8, #1
 80062c2:	f89a 6000 	ldrb.w	r6, [sl]
 80062c6:	e555      	b.n	8005d74 <_vfprintf_r+0xfc>
 80062c8:	0800abfc 	.word	0x0800abfc
 80062cc:	0800ac0c 	.word	0x0800ac0c
 80062d0:	0800abc8 	.word	0x0800abc8
 80062d4:	9e03      	ldr	r6, [sp, #12]
 80062d6:	4630      	mov	r0, r6
 80062d8:	f002 feaa 	bl	8009030 <_localeconv_r>
 80062dc:	6843      	ldr	r3, [r0, #4]
 80062de:	9318      	str	r3, [sp, #96]	; 0x60
 80062e0:	4618      	mov	r0, r3
 80062e2:	f7fa fe8d 	bl	8001000 <strlen>
 80062e6:	901b      	str	r0, [sp, #108]	; 0x6c
 80062e8:	4604      	mov	r4, r0
 80062ea:	4630      	mov	r0, r6
 80062ec:	f002 fea0 	bl	8009030 <_localeconv_r>
 80062f0:	6883      	ldr	r3, [r0, #8]
 80062f2:	931a      	str	r3, [sp, #104]	; 0x68
 80062f4:	2c00      	cmp	r4, #0
 80062f6:	f43f adb8 	beq.w	8005e6a <_vfprintf_r+0x1f2>
 80062fa:	f89a 6000 	ldrb.w	r6, [sl]
 80062fe:	2b00      	cmp	r3, #0
 8006300:	f43f ad38 	beq.w	8005d74 <_vfprintf_r+0xfc>
 8006304:	781b      	ldrb	r3, [r3, #0]
 8006306:	2b00      	cmp	r3, #0
 8006308:	f43f ad34 	beq.w	8005d74 <_vfprintf_r+0xfc>
 800630c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8006310:	e530      	b.n	8005d74 <_vfprintf_r+0xfc>
 8006312:	9b08      	ldr	r3, [sp, #32]
 8006314:	f89a 6000 	ldrb.w	r6, [sl]
 8006318:	681a      	ldr	r2, [r3, #0]
 800631a:	9206      	str	r2, [sp, #24]
 800631c:	2a00      	cmp	r2, #0
 800631e:	f103 0304 	add.w	r3, r3, #4
 8006322:	f2c0 8697 	blt.w	8007054 <_vfprintf_r+0x13dc>
 8006326:	9308      	str	r3, [sp, #32]
 8006328:	e524      	b.n	8005d74 <_vfprintf_r+0xfc>
 800632a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800632e:	f89a 6000 	ldrb.w	r6, [sl]
 8006332:	e51f      	b.n	8005d74 <_vfprintf_r+0xfc>
 8006334:	f89a 6000 	ldrb.w	r6, [sl]
 8006338:	f048 0804 	orr.w	r8, r8, #4
 800633c:	e51a      	b.n	8005d74 <_vfprintf_r+0xfc>
 800633e:	f89a 6000 	ldrb.w	r6, [sl]
 8006342:	2e2a      	cmp	r6, #42	; 0x2a
 8006344:	f10a 0201 	add.w	r2, sl, #1
 8006348:	f001 81b0 	beq.w	80076ac <_vfprintf_r+0x1a34>
 800634c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8006350:	2b09      	cmp	r3, #9
 8006352:	4692      	mov	sl, r2
 8006354:	f04f 0900 	mov.w	r9, #0
 8006358:	f63f ad0e 	bhi.w	8005d78 <_vfprintf_r+0x100>
 800635c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8006360:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8006364:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8006368:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800636c:	2b09      	cmp	r3, #9
 800636e:	d9f5      	bls.n	800635c <_vfprintf_r+0x6e4>
 8006370:	e502      	b.n	8005d78 <_vfprintf_r+0x100>
 8006372:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8006376:	f89a 6000 	ldrb.w	r6, [sl]
 800637a:	e4fb      	b.n	8005d74 <_vfprintf_r+0xfc>
 800637c:	9c08      	ldr	r4, [sp, #32]
 800637e:	3407      	adds	r4, #7
 8006380:	f024 0407 	bic.w	r4, r4, #7
 8006384:	ed94 7b00 	vldr	d7, [r4]
 8006388:	ec52 1b17 	vmov	r1, r2, d7
 800638c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006390:	931d      	str	r3, [sp, #116]	; 0x74
 8006392:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8006396:	3408      	adds	r4, #8
 8006398:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800639c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80063a0:	4bba      	ldr	r3, [pc, #744]	; (800668c <_vfprintf_r+0xa14>)
 80063a2:	9408      	str	r4, [sp, #32]
 80063a4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80063a8:	f7fa fb80 	bl	8000aac <__aeabi_dcmpun>
 80063ac:	2800      	cmp	r0, #0
 80063ae:	f040 846f 	bne.w	8006c90 <_vfprintf_r+0x1018>
 80063b2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80063b6:	4bb5      	ldr	r3, [pc, #724]	; (800668c <_vfprintf_r+0xa14>)
 80063b8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80063bc:	f7fa fb58 	bl	8000a70 <__aeabi_dcmple>
 80063c0:	2800      	cmp	r0, #0
 80063c2:	f040 8465 	bne.w	8006c90 <_vfprintf_r+0x1018>
 80063c6:	2200      	movs	r2, #0
 80063c8:	2300      	movs	r3, #0
 80063ca:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80063ce:	f7fa fb45 	bl	8000a5c <__aeabi_dcmplt>
 80063d2:	2800      	cmp	r0, #0
 80063d4:	f040 855b 	bne.w	8006e8e <_vfprintf_r+0x1216>
 80063d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80063dc:	4fac      	ldr	r7, [pc, #688]	; (8006690 <_vfprintf_r+0xa18>)
 80063de:	4bad      	ldr	r3, [pc, #692]	; (8006694 <_vfprintf_r+0xa1c>)
 80063e0:	2000      	movs	r0, #0
 80063e2:	2103      	movs	r1, #3
 80063e4:	9104      	str	r1, [sp, #16]
 80063e6:	900a      	str	r0, [sp, #40]	; 0x28
 80063e8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80063ec:	2e47      	cmp	r6, #71	; 0x47
 80063ee:	bfd8      	it	le
 80063f0:	461f      	movle	r7, r3
 80063f2:	9109      	str	r1, [sp, #36]	; 0x24
 80063f4:	4681      	mov	r9, r0
 80063f6:	900f      	str	r0, [sp, #60]	; 0x3c
 80063f8:	9014      	str	r0, [sp, #80]	; 0x50
 80063fa:	9011      	str	r0, [sp, #68]	; 0x44
 80063fc:	e5c9      	b.n	8005f92 <_vfprintf_r+0x31a>
 80063fe:	9808      	ldr	r0, [sp, #32]
 8006400:	2300      	movs	r3, #0
 8006402:	6801      	ldr	r1, [r0, #0]
 8006404:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8006408:	461a      	mov	r2, r3
 800640a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800640e:	2301      	movs	r3, #1
 8006410:	1d01      	adds	r1, r0, #4
 8006412:	9304      	str	r3, [sp, #16]
 8006414:	920a      	str	r2, [sp, #40]	; 0x28
 8006416:	4691      	mov	r9, r2
 8006418:	920f      	str	r2, [sp, #60]	; 0x3c
 800641a:	9214      	str	r2, [sp, #80]	; 0x50
 800641c:	9211      	str	r2, [sp, #68]	; 0x44
 800641e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8006422:	af3d      	add	r7, sp, #244	; 0xf4
 8006424:	e5b9      	b.n	8005f9a <_vfprintf_r+0x322>
 8006426:	9b08      	ldr	r3, [sp, #32]
 8006428:	681f      	ldr	r7, [r3, #0]
 800642a:	2500      	movs	r5, #0
 800642c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8006430:	1d1c      	adds	r4, r3, #4
 8006432:	2f00      	cmp	r7, #0
 8006434:	f000 8639 	beq.w	80070aa <_vfprintf_r+0x1432>
 8006438:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800643c:	f000 8711 	beq.w	8007262 <_vfprintf_r+0x15ea>
 8006440:	464a      	mov	r2, r9
 8006442:	4629      	mov	r1, r5
 8006444:	4638      	mov	r0, r7
 8006446:	f7fa fe4b 	bl	80010e0 <memchr>
 800644a:	900a      	str	r0, [sp, #40]	; 0x28
 800644c:	2800      	cmp	r0, #0
 800644e:	f000 85e7 	beq.w	8007020 <_vfprintf_r+0x13a8>
 8006452:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006454:	1bdb      	subs	r3, r3, r7
 8006456:	9309      	str	r3, [sp, #36]	; 0x24
 8006458:	46a9      	mov	r9, r5
 800645a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800645e:	9408      	str	r4, [sp, #32]
 8006460:	9304      	str	r3, [sp, #16]
 8006462:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006466:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800646a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800646e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8006472:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006476:	e58c      	b.n	8005f92 <_vfprintf_r+0x31a>
 8006478:	f048 0310 	orr.w	r3, r8, #16
 800647c:	069a      	lsls	r2, r3, #26
 800647e:	f53f aeb2 	bmi.w	80061e6 <_vfprintf_r+0x56e>
 8006482:	9a08      	ldr	r2, [sp, #32]
 8006484:	06df      	lsls	r7, r3, #27
 8006486:	f102 0104 	add.w	r1, r2, #4
 800648a:	f100 837e 	bmi.w	8006b8a <_vfprintf_r+0xf12>
 800648e:	065d      	lsls	r5, r3, #25
 8006490:	9a08      	ldr	r2, [sp, #32]
 8006492:	f100 84e4 	bmi.w	8006e5e <_vfprintf_r+0x11e6>
 8006496:	059c      	lsls	r4, r3, #22
 8006498:	f140 8377 	bpl.w	8006b8a <_vfprintf_r+0xf12>
 800649c:	7814      	ldrb	r4, [r2, #0]
 800649e:	9108      	str	r1, [sp, #32]
 80064a0:	2500      	movs	r5, #0
 80064a2:	2201      	movs	r2, #1
 80064a4:	e6a9      	b.n	80061fa <_vfprintf_r+0x582>
 80064a6:	4b7c      	ldr	r3, [pc, #496]	; (8006698 <_vfprintf_r+0xa20>)
 80064a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80064aa:	f018 0f20 	tst.w	r8, #32
 80064ae:	f47f aeec 	bne.w	800628a <_vfprintf_r+0x612>
 80064b2:	9a08      	ldr	r2, [sp, #32]
 80064b4:	f018 0f10 	tst.w	r8, #16
 80064b8:	f102 0304 	add.w	r3, r2, #4
 80064bc:	f040 8354 	bne.w	8006b68 <_vfprintf_r+0xef0>
 80064c0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80064c4:	9a08      	ldr	r2, [sp, #32]
 80064c6:	f040 84d0 	bne.w	8006e6a <_vfprintf_r+0x11f2>
 80064ca:	f418 7f00 	tst.w	r8, #512	; 0x200
 80064ce:	f000 834b 	beq.w	8006b68 <_vfprintf_r+0xef0>
 80064d2:	7814      	ldrb	r4, [r2, #0]
 80064d4:	9308      	str	r3, [sp, #32]
 80064d6:	2500      	movs	r5, #0
 80064d8:	e6e0      	b.n	800629c <_vfprintf_r+0x624>
 80064da:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80064de:	f89a 6000 	ldrb.w	r6, [sl]
 80064e2:	2b00      	cmp	r3, #0
 80064e4:	f47f ac46 	bne.w	8005d74 <_vfprintf_r+0xfc>
 80064e8:	2320      	movs	r3, #32
 80064ea:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80064ee:	e441      	b.n	8005d74 <_vfprintf_r+0xfc>
 80064f0:	f89a 6000 	ldrb.w	r6, [sl]
 80064f4:	2e6c      	cmp	r6, #108	; 0x6c
 80064f6:	bf03      	ittte	eq
 80064f8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80064fc:	f048 0820 	orreq.w	r8, r8, #32
 8006500:	f10a 0a01 	addeq.w	sl, sl, #1
 8006504:	f048 0810 	orrne.w	r8, r8, #16
 8006508:	e434      	b.n	8005d74 <_vfprintf_r+0xfc>
 800650a:	9a08      	ldr	r2, [sp, #32]
 800650c:	f018 0f20 	tst.w	r8, #32
 8006510:	f852 3b04 	ldr.w	r3, [r2], #4
 8006514:	9208      	str	r2, [sp, #32]
 8006516:	f000 83a1 	beq.w	8006c5c <_vfprintf_r+0xfe4>
 800651a:	9a05      	ldr	r2, [sp, #20]
 800651c:	4610      	mov	r0, r2
 800651e:	17d1      	asrs	r1, r2, #31
 8006520:	e9c3 0100 	strd	r0, r1, [r3]
 8006524:	4657      	mov	r7, sl
 8006526:	e64d      	b.n	80061c4 <_vfprintf_r+0x54c>
 8006528:	f89a 6000 	ldrb.w	r6, [sl]
 800652c:	2e68      	cmp	r6, #104	; 0x68
 800652e:	bf03      	ittte	eq
 8006530:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8006534:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8006538:	f10a 0a01 	addeq.w	sl, sl, #1
 800653c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8006540:	e418      	b.n	8005d74 <_vfprintf_r+0xfc>
 8006542:	9908      	ldr	r1, [sp, #32]
 8006544:	4b55      	ldr	r3, [pc, #340]	; (800669c <_vfprintf_r+0xa24>)
 8006546:	680c      	ldr	r4, [r1, #0]
 8006548:	9317      	str	r3, [sp, #92]	; 0x5c
 800654a:	f647 0230 	movw	r2, #30768	; 0x7830
 800654e:	3104      	adds	r1, #4
 8006550:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8006554:	f048 0302 	orr.w	r3, r8, #2
 8006558:	9108      	str	r1, [sp, #32]
 800655a:	2500      	movs	r5, #0
 800655c:	2202      	movs	r2, #2
 800655e:	2678      	movs	r6, #120	; 0x78
 8006560:	e64b      	b.n	80061fa <_vfprintf_r+0x582>
 8006562:	f048 0808 	orr.w	r8, r8, #8
 8006566:	f89a 6000 	ldrb.w	r6, [sl]
 800656a:	e403      	b.n	8005d74 <_vfprintf_r+0xfc>
 800656c:	f048 0310 	orr.w	r3, r8, #16
 8006570:	069f      	lsls	r7, r3, #26
 8006572:	f53f acd1 	bmi.w	8005f18 <_vfprintf_r+0x2a0>
 8006576:	9908      	ldr	r1, [sp, #32]
 8006578:	06dd      	lsls	r5, r3, #27
 800657a:	f101 0204 	add.w	r2, r1, #4
 800657e:	f100 82fd 	bmi.w	8006b7c <_vfprintf_r+0xf04>
 8006582:	065c      	lsls	r4, r3, #25
 8006584:	9908      	ldr	r1, [sp, #32]
 8006586:	f100 8475 	bmi.w	8006e74 <_vfprintf_r+0x11fc>
 800658a:	0598      	lsls	r0, r3, #22
 800658c:	f140 82f6 	bpl.w	8006b7c <_vfprintf_r+0xf04>
 8006590:	f991 4000 	ldrsb.w	r4, [r1]
 8006594:	9208      	str	r2, [sp, #32]
 8006596:	17e5      	asrs	r5, r4, #31
 8006598:	4620      	mov	r0, r4
 800659a:	4629      	mov	r1, r5
 800659c:	e4c7      	b.n	8005f2e <_vfprintf_r+0x2b6>
 800659e:	9a08      	ldr	r2, [sp, #32]
 80065a0:	f018 0f10 	tst.w	r8, #16
 80065a4:	f102 0304 	add.w	r3, r2, #4
 80065a8:	f040 82e3 	bne.w	8006b72 <_vfprintf_r+0xefa>
 80065ac:	f018 0f40 	tst.w	r8, #64	; 0x40
 80065b0:	9a08      	ldr	r2, [sp, #32]
 80065b2:	f040 8467 	bne.w	8006e84 <_vfprintf_r+0x120c>
 80065b6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80065ba:	f000 82da 	beq.w	8006b72 <_vfprintf_r+0xefa>
 80065be:	7814      	ldrb	r4, [r2, #0]
 80065c0:	9308      	str	r3, [sp, #32]
 80065c2:	2500      	movs	r5, #0
 80065c4:	e488      	b.n	8005ed8 <_vfprintf_r+0x260>
 80065c6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80065ca:	f002 fd45 	bl	8009058 <__retarget_lock_release_recursive>
 80065ce:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80065d2:	9305      	str	r3, [sp, #20]
 80065d4:	e443      	b.n	8005e5e <_vfprintf_r+0x1e6>
 80065d6:	2e00      	cmp	r6, #0
 80065d8:	f43f adf8 	beq.w	80061cc <_vfprintf_r+0x554>
 80065dc:	2300      	movs	r3, #0
 80065de:	2101      	movs	r1, #1
 80065e0:	461a      	mov	r2, r3
 80065e2:	9104      	str	r1, [sp, #16]
 80065e4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80065e8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80065ec:	930a      	str	r3, [sp, #40]	; 0x28
 80065ee:	4699      	mov	r9, r3
 80065f0:	930f      	str	r3, [sp, #60]	; 0x3c
 80065f2:	9314      	str	r3, [sp, #80]	; 0x50
 80065f4:	9311      	str	r3, [sp, #68]	; 0x44
 80065f6:	9109      	str	r1, [sp, #36]	; 0x24
 80065f8:	af3d      	add	r7, sp, #244	; 0xf4
 80065fa:	e4ce      	b.n	8005f9a <_vfprintf_r+0x322>
 80065fc:	2e65      	cmp	r6, #101	; 0x65
 80065fe:	f340 80ca 	ble.w	8006796 <_vfprintf_r+0xb1e>
 8006602:	2200      	movs	r2, #0
 8006604:	2300      	movs	r3, #0
 8006606:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800660a:	f7fa fa1d 	bl	8000a48 <__aeabi_dcmpeq>
 800660e:	2800      	cmp	r0, #0
 8006610:	f000 8169 	beq.w	80068e6 <_vfprintf_r+0xc6e>
 8006614:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006616:	4a22      	ldr	r2, [pc, #136]	; (80066a0 <_vfprintf_r+0xa28>)
 8006618:	f8cb 2000 	str.w	r2, [fp]
 800661c:	3301      	adds	r3, #1
 800661e:	3401      	adds	r4, #1
 8006620:	2201      	movs	r2, #1
 8006622:	2b07      	cmp	r3, #7
 8006624:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006628:	f8cb 2004 	str.w	r2, [fp, #4]
 800662c:	f300 8406 	bgt.w	8006e3c <_vfprintf_r+0x11c4>
 8006630:	f10b 0b08 	add.w	fp, fp, #8
 8006634:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006636:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006638:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800663a:	4293      	cmp	r3, r2
 800663c:	db03      	blt.n	8006646 <_vfprintf_r+0x9ce>
 800663e:	f018 0f01 	tst.w	r8, #1
 8006642:	f43f ad6a 	beq.w	800611a <_vfprintf_r+0x4a2>
 8006646:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006648:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800664a:	f8cb 2000 	str.w	r2, [fp]
 800664e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006650:	f8cb 2004 	str.w	r2, [fp, #4]
 8006654:	3301      	adds	r3, #1
 8006656:	4414      	add	r4, r2
 8006658:	2b07      	cmp	r3, #7
 800665a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800665e:	f300 8517 	bgt.w	8007090 <_vfprintf_r+0x1418>
 8006662:	f10b 0b08 	add.w	fp, fp, #8
 8006666:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006668:	1e5d      	subs	r5, r3, #1
 800666a:	2d00      	cmp	r5, #0
 800666c:	f77f ad55 	ble.w	800611a <_vfprintf_r+0x4a2>
 8006670:	2d10      	cmp	r5, #16
 8006672:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006674:	4b0b      	ldr	r3, [pc, #44]	; (80066a4 <_vfprintf_r+0xa2c>)
 8006676:	f340 82e7 	ble.w	8006c48 <_vfprintf_r+0xfd0>
 800667a:	4619      	mov	r1, r3
 800667c:	2610      	movs	r6, #16
 800667e:	4623      	mov	r3, r4
 8006680:	9f03      	ldr	r7, [sp, #12]
 8006682:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006686:	460c      	mov	r4, r1
 8006688:	e014      	b.n	80066b4 <_vfprintf_r+0xa3c>
 800668a:	bf00      	nop
 800668c:	7fefffff 	.word	0x7fefffff
 8006690:	0800abbc 	.word	0x0800abbc
 8006694:	0800abb8 	.word	0x0800abb8
 8006698:	0800abdc 	.word	0x0800abdc
 800669c:	0800abc8 	.word	0x0800abc8
 80066a0:	0800abf8 	.word	0x0800abf8
 80066a4:	0800ac0c 	.word	0x0800ac0c
 80066a8:	f10b 0b08 	add.w	fp, fp, #8
 80066ac:	3d10      	subs	r5, #16
 80066ae:	2d10      	cmp	r5, #16
 80066b0:	f340 82c7 	ble.w	8006c42 <_vfprintf_r+0xfca>
 80066b4:	3201      	adds	r2, #1
 80066b6:	3310      	adds	r3, #16
 80066b8:	2a07      	cmp	r2, #7
 80066ba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80066be:	e9cb 4600 	strd	r4, r6, [fp]
 80066c2:	ddf1      	ble.n	80066a8 <_vfprintf_r+0xa30>
 80066c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80066c6:	4649      	mov	r1, r9
 80066c8:	4638      	mov	r0, r7
 80066ca:	f003 fe03 	bl	800a2d4 <__sprint_r>
 80066ce:	2800      	cmp	r0, #0
 80066d0:	d14c      	bne.n	800676c <_vfprintf_r+0xaf4>
 80066d2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80066d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066da:	e7e7      	b.n	80066ac <_vfprintf_r+0xa34>
 80066dc:	9b06      	ldr	r3, [sp, #24]
 80066de:	9a04      	ldr	r2, [sp, #16]
 80066e0:	1a9d      	subs	r5, r3, r2
 80066e2:	2d00      	cmp	r5, #0
 80066e4:	f77f acc9 	ble.w	800607a <_vfprintf_r+0x402>
 80066e8:	2d10      	cmp	r5, #16
 80066ea:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80066ec:	4bbc      	ldr	r3, [pc, #752]	; (80069e0 <_vfprintf_r+0xd68>)
 80066ee:	dd27      	ble.n	8006740 <_vfprintf_r+0xac8>
 80066f0:	4659      	mov	r1, fp
 80066f2:	4620      	mov	r0, r4
 80066f4:	46bb      	mov	fp, r7
 80066f6:	461c      	mov	r4, r3
 80066f8:	4637      	mov	r7, r6
 80066fa:	9e07      	ldr	r6, [sp, #28]
 80066fc:	e004      	b.n	8006708 <_vfprintf_r+0xa90>
 80066fe:	3d10      	subs	r5, #16
 8006700:	2d10      	cmp	r5, #16
 8006702:	f101 0108 	add.w	r1, r1, #8
 8006706:	dd16      	ble.n	8006736 <_vfprintf_r+0xabe>
 8006708:	3201      	adds	r2, #1
 800670a:	3010      	adds	r0, #16
 800670c:	2310      	movs	r3, #16
 800670e:	2a07      	cmp	r2, #7
 8006710:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8006714:	600c      	str	r4, [r1, #0]
 8006716:	604b      	str	r3, [r1, #4]
 8006718:	ddf1      	ble.n	80066fe <_vfprintf_r+0xa86>
 800671a:	aa2a      	add	r2, sp, #168	; 0xa8
 800671c:	4631      	mov	r1, r6
 800671e:	9803      	ldr	r0, [sp, #12]
 8006720:	f003 fdd8 	bl	800a2d4 <__sprint_r>
 8006724:	2800      	cmp	r0, #0
 8006726:	f040 80a8 	bne.w	800687a <_vfprintf_r+0xc02>
 800672a:	3d10      	subs	r5, #16
 800672c:	2d10      	cmp	r5, #16
 800672e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006732:	a92d      	add	r1, sp, #180	; 0xb4
 8006734:	dce8      	bgt.n	8006708 <_vfprintf_r+0xa90>
 8006736:	463e      	mov	r6, r7
 8006738:	4623      	mov	r3, r4
 800673a:	465f      	mov	r7, fp
 800673c:	4604      	mov	r4, r0
 800673e:	468b      	mov	fp, r1
 8006740:	3201      	adds	r2, #1
 8006742:	442c      	add	r4, r5
 8006744:	2a07      	cmp	r2, #7
 8006746:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800674a:	e9cb 3500 	strd	r3, r5, [fp]
 800674e:	f300 8292 	bgt.w	8006c76 <_vfprintf_r+0xffe>
 8006752:	f10b 0b08 	add.w	fp, fp, #8
 8006756:	e490      	b.n	800607a <_vfprintf_r+0x402>
 8006758:	aa2a      	add	r2, sp, #168	; 0xa8
 800675a:	9907      	ldr	r1, [sp, #28]
 800675c:	9803      	ldr	r0, [sp, #12]
 800675e:	f003 fdb9 	bl	800a2d4 <__sprint_r>
 8006762:	2800      	cmp	r0, #0
 8006764:	f43f ad23 	beq.w	80061ae <_vfprintf_r+0x536>
 8006768:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800676c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800676e:	b111      	cbz	r1, 8006776 <_vfprintf_r+0xafe>
 8006770:	9803      	ldr	r0, [sp, #12]
 8006772:	f002 f9c1 	bl	8008af8 <_free_r>
 8006776:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800677a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800677e:	07d0      	lsls	r0, r2, #31
 8006780:	d402      	bmi.n	8006788 <_vfprintf_r+0xb10>
 8006782:	0599      	lsls	r1, r3, #22
 8006784:	f140 81d0 	bpl.w	8006b28 <_vfprintf_r+0xeb0>
 8006788:	065a      	lsls	r2, r3, #25
 800678a:	f53f ab65 	bmi.w	8005e58 <_vfprintf_r+0x1e0>
 800678e:	9805      	ldr	r0, [sp, #20]
 8006790:	b057      	add	sp, #348	; 0x15c
 8006792:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006796:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006798:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800679a:	2a01      	cmp	r2, #1
 800679c:	f104 0401 	add.w	r4, r4, #1
 80067a0:	f103 0501 	add.w	r5, r3, #1
 80067a4:	f10b 0608 	add.w	r6, fp, #8
 80067a8:	f340 811c 	ble.w	80069e4 <_vfprintf_r+0xd6c>
 80067ac:	2301      	movs	r3, #1
 80067ae:	2d07      	cmp	r5, #7
 80067b0:	f8cb 7000 	str.w	r7, [fp]
 80067b4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80067b8:	f8cb 3004 	str.w	r3, [fp, #4]
 80067bc:	f300 81bb 	bgt.w	8006b36 <_vfprintf_r+0xebe>
 80067c0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80067c2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80067c4:	1c69      	adds	r1, r5, #1
 80067c6:	441c      	add	r4, r3
 80067c8:	2907      	cmp	r1, #7
 80067ca:	910b      	str	r1, [sp, #44]	; 0x2c
 80067cc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80067d0:	e9c6 2300 	strd	r2, r3, [r6]
 80067d4:	f300 81bb 	bgt.w	8006b4e <_vfprintf_r+0xed6>
 80067d8:	3608      	adds	r6, #8
 80067da:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80067dc:	1c53      	adds	r3, r2, #1
 80067de:	461d      	mov	r5, r3
 80067e0:	9509      	str	r5, [sp, #36]	; 0x24
 80067e2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80067e4:	930e      	str	r3, [sp, #56]	; 0x38
 80067e6:	2200      	movs	r2, #0
 80067e8:	2300      	movs	r3, #0
 80067ea:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80067ee:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80067f2:	f106 0b08 	add.w	fp, r6, #8
 80067f6:	f7fa f927 	bl	8000a48 <__aeabi_dcmpeq>
 80067fa:	2800      	cmp	r0, #0
 80067fc:	f040 80c2 	bne.w	8006984 <_vfprintf_r+0xd0c>
 8006800:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8006802:	f8c6 9004 	str.w	r9, [r6, #4]
 8006806:	3701      	adds	r7, #1
 8006808:	444c      	add	r4, r9
 800680a:	2d07      	cmp	r5, #7
 800680c:	6037      	str	r7, [r6, #0]
 800680e:	942c      	str	r4, [sp, #176]	; 0xb0
 8006810:	952b      	str	r5, [sp, #172]	; 0xac
 8006812:	f300 80f9 	bgt.w	8006a08 <_vfprintf_r+0xd90>
 8006816:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006818:	f106 0310 	add.w	r3, r6, #16
 800681c:	3202      	adds	r2, #2
 800681e:	465e      	mov	r6, fp
 8006820:	9209      	str	r2, [sp, #36]	; 0x24
 8006822:	469b      	mov	fp, r3
 8006824:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8006826:	6072      	str	r2, [r6, #4]
 8006828:	4414      	add	r4, r2
 800682a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800682c:	942c      	str	r4, [sp, #176]	; 0xb0
 800682e:	ab26      	add	r3, sp, #152	; 0x98
 8006830:	2a07      	cmp	r2, #7
 8006832:	922b      	str	r2, [sp, #172]	; 0xac
 8006834:	6033      	str	r3, [r6, #0]
 8006836:	f77f ac70 	ble.w	800611a <_vfprintf_r+0x4a2>
 800683a:	aa2a      	add	r2, sp, #168	; 0xa8
 800683c:	9907      	ldr	r1, [sp, #28]
 800683e:	9803      	ldr	r0, [sp, #12]
 8006840:	f003 fd48 	bl	800a2d4 <__sprint_r>
 8006844:	2800      	cmp	r0, #0
 8006846:	d18f      	bne.n	8006768 <_vfprintf_r+0xaf0>
 8006848:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800684a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800684e:	e464      	b.n	800611a <_vfprintf_r+0x4a2>
 8006850:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8006852:	af56      	add	r7, sp, #344	; 0x158
 8006854:	0923      	lsrs	r3, r4, #4
 8006856:	f004 010f 	and.w	r1, r4, #15
 800685a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800685e:	092a      	lsrs	r2, r5, #4
 8006860:	461c      	mov	r4, r3
 8006862:	4615      	mov	r5, r2
 8006864:	5c43      	ldrb	r3, [r0, r1]
 8006866:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800686a:	ea54 0305 	orrs.w	r3, r4, r5
 800686e:	d1f1      	bne.n	8006854 <_vfprintf_r+0xbdc>
 8006870:	9b04      	ldr	r3, [sp, #16]
 8006872:	1bdb      	subs	r3, r3, r7
 8006874:	9309      	str	r3, [sp, #36]	; 0x24
 8006876:	f7ff bb80 	b.w	8005f7a <_vfprintf_r+0x302>
 800687a:	46b1      	mov	r9, r6
 800687c:	e776      	b.n	800676c <_vfprintf_r+0xaf4>
 800687e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006880:	9907      	ldr	r1, [sp, #28]
 8006882:	9803      	ldr	r0, [sp, #12]
 8006884:	f003 fd26 	bl	800a2d4 <__sprint_r>
 8006888:	2800      	cmp	r0, #0
 800688a:	f47f af6d 	bne.w	8006768 <_vfprintf_r+0xaf0>
 800688e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006890:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006894:	f7ff bbdd 	b.w	8006052 <_vfprintf_r+0x3da>
 8006898:	aa2a      	add	r2, sp, #168	; 0xa8
 800689a:	9907      	ldr	r1, [sp, #28]
 800689c:	9803      	ldr	r0, [sp, #12]
 800689e:	f003 fd19 	bl	800a2d4 <__sprint_r>
 80068a2:	2800      	cmp	r0, #0
 80068a4:	f47f af60 	bne.w	8006768 <_vfprintf_r+0xaf0>
 80068a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80068aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80068ae:	f7ff bbe0 	b.w	8006072 <_vfprintf_r+0x3fa>
 80068b2:	4698      	mov	r8, r3
 80068b4:	2d00      	cmp	r5, #0
 80068b6:	bf08      	it	eq
 80068b8:	2c0a      	cmpeq	r4, #10
 80068ba:	f080 8170 	bcs.w	8006b9e <_vfprintf_r+0xf26>
 80068be:	af56      	add	r7, sp, #344	; 0x158
 80068c0:	3430      	adds	r4, #48	; 0x30
 80068c2:	2301      	movs	r3, #1
 80068c4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80068c8:	9309      	str	r3, [sp, #36]	; 0x24
 80068ca:	f7ff bb56 	b.w	8005f7a <_vfprintf_r+0x302>
 80068ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80068d0:	9907      	ldr	r1, [sp, #28]
 80068d2:	9803      	ldr	r0, [sp, #12]
 80068d4:	f003 fcfe 	bl	800a2d4 <__sprint_r>
 80068d8:	2800      	cmp	r0, #0
 80068da:	f47f af45 	bne.w	8006768 <_vfprintf_r+0xaf0>
 80068de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80068e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80068e4:	e406      	b.n	80060f4 <_vfprintf_r+0x47c>
 80068e6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80068e8:	2b00      	cmp	r3, #0
 80068ea:	f340 8273 	ble.w	8006dd4 <_vfprintf_r+0x115c>
 80068ee:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80068f2:	4293      	cmp	r3, r2
 80068f4:	bfa8      	it	ge
 80068f6:	4613      	movge	r3, r2
 80068f8:	2b00      	cmp	r3, #0
 80068fa:	461d      	mov	r5, r3
 80068fc:	dd0d      	ble.n	800691a <_vfprintf_r+0xca2>
 80068fe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006900:	f8cb 7000 	str.w	r7, [fp]
 8006904:	3301      	adds	r3, #1
 8006906:	442c      	add	r4, r5
 8006908:	2b07      	cmp	r3, #7
 800690a:	942c      	str	r4, [sp, #176]	; 0xb0
 800690c:	f8cb 5004 	str.w	r5, [fp, #4]
 8006910:	932b      	str	r3, [sp, #172]	; 0xac
 8006912:	f300 82c1 	bgt.w	8006e98 <_vfprintf_r+0x1220>
 8006916:	f10b 0b08 	add.w	fp, fp, #8
 800691a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800691c:	2d00      	cmp	r5, #0
 800691e:	bfa8      	it	ge
 8006920:	1b5b      	subge	r3, r3, r5
 8006922:	2b00      	cmp	r3, #0
 8006924:	461d      	mov	r5, r3
 8006926:	f340 8099 	ble.w	8006a5c <_vfprintf_r+0xde4>
 800692a:	2d10      	cmp	r5, #16
 800692c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800692e:	4b2c      	ldr	r3, [pc, #176]	; (80069e0 <_vfprintf_r+0xd68>)
 8006930:	f340 83db 	ble.w	80070ea <_vfprintf_r+0x1472>
 8006934:	4618      	mov	r0, r3
 8006936:	4621      	mov	r1, r4
 8006938:	465b      	mov	r3, fp
 800693a:	2610      	movs	r6, #16
 800693c:	46bb      	mov	fp, r7
 800693e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006942:	9c07      	ldr	r4, [sp, #28]
 8006944:	4607      	mov	r7, r0
 8006946:	e004      	b.n	8006952 <_vfprintf_r+0xcda>
 8006948:	3308      	adds	r3, #8
 800694a:	3d10      	subs	r5, #16
 800694c:	2d10      	cmp	r5, #16
 800694e:	f340 83c7 	ble.w	80070e0 <_vfprintf_r+0x1468>
 8006952:	3201      	adds	r2, #1
 8006954:	3110      	adds	r1, #16
 8006956:	2a07      	cmp	r2, #7
 8006958:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800695c:	e9c3 7600 	strd	r7, r6, [r3]
 8006960:	ddf2      	ble.n	8006948 <_vfprintf_r+0xcd0>
 8006962:	aa2a      	add	r2, sp, #168	; 0xa8
 8006964:	4621      	mov	r1, r4
 8006966:	4648      	mov	r0, r9
 8006968:	f003 fcb4 	bl	800a2d4 <__sprint_r>
 800696c:	2800      	cmp	r0, #0
 800696e:	f040 84a5 	bne.w	80072bc <_vfprintf_r+0x1644>
 8006972:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8006976:	ab2d      	add	r3, sp, #180	; 0xb4
 8006978:	e7e7      	b.n	800694a <_vfprintf_r+0xcd2>
 800697a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800697e:	af56      	add	r7, sp, #344	; 0x158
 8006980:	f7ff bafb 	b.w	8005f7a <_vfprintf_r+0x302>
 8006984:	f1b9 0f00 	cmp.w	r9, #0
 8006988:	f77f af4c 	ble.w	8006824 <_vfprintf_r+0xbac>
 800698c:	f1b9 0f10 	cmp.w	r9, #16
 8006990:	4b13      	ldr	r3, [pc, #76]	; (80069e0 <_vfprintf_r+0xd68>)
 8006992:	f340 8659 	ble.w	8007648 <_vfprintf_r+0x19d0>
 8006996:	4619      	mov	r1, r3
 8006998:	4622      	mov	r2, r4
 800699a:	4633      	mov	r3, r6
 800699c:	2710      	movs	r7, #16
 800699e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80069a2:	9c07      	ldr	r4, [sp, #28]
 80069a4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80069a6:	460e      	mov	r6, r1
 80069a8:	e007      	b.n	80069ba <_vfprintf_r+0xd42>
 80069aa:	3308      	adds	r3, #8
 80069ac:	f1a9 0910 	sub.w	r9, r9, #16
 80069b0:	f1b9 0f10 	cmp.w	r9, #16
 80069b4:	f340 8353 	ble.w	800705e <_vfprintf_r+0x13e6>
 80069b8:	3501      	adds	r5, #1
 80069ba:	3210      	adds	r2, #16
 80069bc:	2d07      	cmp	r5, #7
 80069be:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80069c2:	e9c3 6700 	strd	r6, r7, [r3]
 80069c6:	ddf0      	ble.n	80069aa <_vfprintf_r+0xd32>
 80069c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80069ca:	4621      	mov	r1, r4
 80069cc:	4658      	mov	r0, fp
 80069ce:	f003 fc81 	bl	800a2d4 <__sprint_r>
 80069d2:	2800      	cmp	r0, #0
 80069d4:	f040 8472 	bne.w	80072bc <_vfprintf_r+0x1644>
 80069d8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80069dc:	ab2d      	add	r3, sp, #180	; 0xb4
 80069de:	e7e5      	b.n	80069ac <_vfprintf_r+0xd34>
 80069e0:	0800ac0c 	.word	0x0800ac0c
 80069e4:	f018 0f01 	tst.w	r8, #1
 80069e8:	f47f aee0 	bne.w	80067ac <_vfprintf_r+0xb34>
 80069ec:	2201      	movs	r2, #1
 80069ee:	2d07      	cmp	r5, #7
 80069f0:	f8cb 7000 	str.w	r7, [fp]
 80069f4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80069f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80069fc:	dc04      	bgt.n	8006a08 <_vfprintf_r+0xd90>
 80069fe:	3302      	adds	r3, #2
 8006a00:	9309      	str	r3, [sp, #36]	; 0x24
 8006a02:	f10b 0b10 	add.w	fp, fp, #16
 8006a06:	e70d      	b.n	8006824 <_vfprintf_r+0xbac>
 8006a08:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a0a:	9907      	ldr	r1, [sp, #28]
 8006a0c:	9803      	ldr	r0, [sp, #12]
 8006a0e:	f003 fc61 	bl	800a2d4 <__sprint_r>
 8006a12:	2800      	cmp	r0, #0
 8006a14:	f47f aea8 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006a18:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8006a1c:	3301      	adds	r3, #1
 8006a1e:	9309      	str	r3, [sp, #36]	; 0x24
 8006a20:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8006a24:	ae2d      	add	r6, sp, #180	; 0xb4
 8006a26:	e6fd      	b.n	8006824 <_vfprintf_r+0xbac>
 8006a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a2a:	9907      	ldr	r1, [sp, #28]
 8006a2c:	9803      	ldr	r0, [sp, #12]
 8006a2e:	f003 fc51 	bl	800a2d4 <__sprint_r>
 8006a32:	2800      	cmp	r0, #0
 8006a34:	f47f ae98 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006a38:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006a3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006a3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a42:	f7ff baf6 	b.w	8006032 <_vfprintf_r+0x3ba>
 8006a46:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a48:	9907      	ldr	r1, [sp, #28]
 8006a4a:	9803      	ldr	r0, [sp, #12]
 8006a4c:	f003 fc42 	bl	800a2d4 <__sprint_r>
 8006a50:	2800      	cmp	r0, #0
 8006a52:	f47f ae89 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006a56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006a58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a5c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006a5e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8006a62:	443b      	add	r3, r7
 8006a64:	4699      	mov	r9, r3
 8006a66:	f040 8357 	bne.w	8007118 <_vfprintf_r+0x14a0>
 8006a6a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006a6c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006a6e:	4293      	cmp	r3, r2
 8006a70:	db49      	blt.n	8006b06 <_vfprintf_r+0xe8e>
 8006a72:	f018 0f01 	tst.w	r8, #1
 8006a76:	d146      	bne.n	8006b06 <_vfprintf_r+0xe8e>
 8006a78:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006a7a:	18bd      	adds	r5, r7, r2
 8006a7c:	eba5 0509 	sub.w	r5, r5, r9
 8006a80:	1ad3      	subs	r3, r2, r3
 8006a82:	429d      	cmp	r5, r3
 8006a84:	bfa8      	it	ge
 8006a86:	461d      	movge	r5, r3
 8006a88:	2d00      	cmp	r5, #0
 8006a8a:	dd0d      	ble.n	8006aa8 <_vfprintf_r+0xe30>
 8006a8c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006a8e:	f8cb 9000 	str.w	r9, [fp]
 8006a92:	3201      	adds	r2, #1
 8006a94:	442c      	add	r4, r5
 8006a96:	2a07      	cmp	r2, #7
 8006a98:	942c      	str	r4, [sp, #176]	; 0xb0
 8006a9a:	f8cb 5004 	str.w	r5, [fp, #4]
 8006a9e:	922b      	str	r2, [sp, #172]	; 0xac
 8006aa0:	f300 8462 	bgt.w	8007368 <_vfprintf_r+0x16f0>
 8006aa4:	f10b 0b08 	add.w	fp, fp, #8
 8006aa8:	2d00      	cmp	r5, #0
 8006aaa:	bfac      	ite	ge
 8006aac:	1b5d      	subge	r5, r3, r5
 8006aae:	461d      	movlt	r5, r3
 8006ab0:	2d00      	cmp	r5, #0
 8006ab2:	f77f ab32 	ble.w	800611a <_vfprintf_r+0x4a2>
 8006ab6:	2d10      	cmp	r5, #16
 8006ab8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006aba:	4bc5      	ldr	r3, [pc, #788]	; (8006dd0 <_vfprintf_r+0x1158>)
 8006abc:	f340 80c4 	ble.w	8006c48 <_vfprintf_r+0xfd0>
 8006ac0:	4619      	mov	r1, r3
 8006ac2:	2610      	movs	r6, #16
 8006ac4:	4623      	mov	r3, r4
 8006ac6:	9f03      	ldr	r7, [sp, #12]
 8006ac8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006acc:	460c      	mov	r4, r1
 8006ace:	e005      	b.n	8006adc <_vfprintf_r+0xe64>
 8006ad0:	f10b 0b08 	add.w	fp, fp, #8
 8006ad4:	3d10      	subs	r5, #16
 8006ad6:	2d10      	cmp	r5, #16
 8006ad8:	f340 80b3 	ble.w	8006c42 <_vfprintf_r+0xfca>
 8006adc:	3201      	adds	r2, #1
 8006ade:	3310      	adds	r3, #16
 8006ae0:	2a07      	cmp	r2, #7
 8006ae2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8006ae6:	e9cb 4600 	strd	r4, r6, [fp]
 8006aea:	ddf1      	ble.n	8006ad0 <_vfprintf_r+0xe58>
 8006aec:	aa2a      	add	r2, sp, #168	; 0xa8
 8006aee:	4649      	mov	r1, r9
 8006af0:	4638      	mov	r0, r7
 8006af2:	f003 fbef 	bl	800a2d4 <__sprint_r>
 8006af6:	2800      	cmp	r0, #0
 8006af8:	f47f ae38 	bne.w	800676c <_vfprintf_r+0xaf4>
 8006afc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8006b00:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006b04:	e7e6      	b.n	8006ad4 <_vfprintf_r+0xe5c>
 8006b06:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006b08:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006b0a:	f8cb 1000 	str.w	r1, [fp]
 8006b0e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006b10:	f8cb 1004 	str.w	r1, [fp, #4]
 8006b14:	3201      	adds	r2, #1
 8006b16:	440c      	add	r4, r1
 8006b18:	2a07      	cmp	r2, #7
 8006b1a:	942c      	str	r4, [sp, #176]	; 0xb0
 8006b1c:	922b      	str	r2, [sp, #172]	; 0xac
 8006b1e:	f300 828c 	bgt.w	800703a <_vfprintf_r+0x13c2>
 8006b22:	f10b 0b08 	add.w	fp, fp, #8
 8006b26:	e7a7      	b.n	8006a78 <_vfprintf_r+0xe00>
 8006b28:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8006b2c:	f002 fa94 	bl	8009058 <__retarget_lock_release_recursive>
 8006b30:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006b34:	e628      	b.n	8006788 <_vfprintf_r+0xb10>
 8006b36:	aa2a      	add	r2, sp, #168	; 0xa8
 8006b38:	9907      	ldr	r1, [sp, #28]
 8006b3a:	9803      	ldr	r0, [sp, #12]
 8006b3c:	f003 fbca 	bl	800a2d4 <__sprint_r>
 8006b40:	2800      	cmp	r0, #0
 8006b42:	f47f ae11 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006b46:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8006b4a:	ae2d      	add	r6, sp, #180	; 0xb4
 8006b4c:	e638      	b.n	80067c0 <_vfprintf_r+0xb48>
 8006b4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006b50:	9907      	ldr	r1, [sp, #28]
 8006b52:	9803      	ldr	r0, [sp, #12]
 8006b54:	f003 fbbe 	bl	800a2d4 <__sprint_r>
 8006b58:	2800      	cmp	r0, #0
 8006b5a:	f47f ae05 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006b5e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8006b62:	ae2d      	add	r6, sp, #180	; 0xb4
 8006b64:	930b      	str	r3, [sp, #44]	; 0x2c
 8006b66:	e638      	b.n	80067da <_vfprintf_r+0xb62>
 8006b68:	6814      	ldr	r4, [r2, #0]
 8006b6a:	9308      	str	r3, [sp, #32]
 8006b6c:	2500      	movs	r5, #0
 8006b6e:	f7ff bb95 	b.w	800629c <_vfprintf_r+0x624>
 8006b72:	6814      	ldr	r4, [r2, #0]
 8006b74:	9308      	str	r3, [sp, #32]
 8006b76:	2500      	movs	r5, #0
 8006b78:	f7ff b9ae 	b.w	8005ed8 <_vfprintf_r+0x260>
 8006b7c:	680c      	ldr	r4, [r1, #0]
 8006b7e:	9208      	str	r2, [sp, #32]
 8006b80:	17e5      	asrs	r5, r4, #31
 8006b82:	4620      	mov	r0, r4
 8006b84:	4629      	mov	r1, r5
 8006b86:	f7ff b9d2 	b.w	8005f2e <_vfprintf_r+0x2b6>
 8006b8a:	6814      	ldr	r4, [r2, #0]
 8006b8c:	9108      	str	r1, [sp, #32]
 8006b8e:	2201      	movs	r2, #1
 8006b90:	2500      	movs	r5, #0
 8006b92:	f7ff bb32 	b.w	80061fa <_vfprintf_r+0x582>
 8006b96:	2a01      	cmp	r2, #1
 8006b98:	f47f ab3c 	bne.w	8006214 <_vfprintf_r+0x59c>
 8006b9c:	e68f      	b.n	80068be <_vfprintf_r+0xc46>
 8006b9e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8006ba2:	2200      	movs	r2, #0
 8006ba4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8006ba8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8006bac:	af56      	add	r7, sp, #344	; 0x158
 8006bae:	4692      	mov	sl, r2
 8006bb0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8006bb4:	461e      	mov	r6, r3
 8006bb6:	e00a      	b.n	8006bce <_vfprintf_r+0xf56>
 8006bb8:	2300      	movs	r3, #0
 8006bba:	4620      	mov	r0, r4
 8006bbc:	4629      	mov	r1, r5
 8006bbe:	220a      	movs	r2, #10
 8006bc0:	f7f9 ffb2 	bl	8000b28 <__aeabi_uldivmod>
 8006bc4:	4604      	mov	r4, r0
 8006bc6:	460d      	mov	r5, r1
 8006bc8:	ea54 0305 	orrs.w	r3, r4, r5
 8006bcc:	d029      	beq.n	8006c22 <_vfprintf_r+0xfaa>
 8006bce:	220a      	movs	r2, #10
 8006bd0:	2300      	movs	r3, #0
 8006bd2:	4620      	mov	r0, r4
 8006bd4:	4629      	mov	r1, r5
 8006bd6:	f7f9 ffa7 	bl	8000b28 <__aeabi_uldivmod>
 8006bda:	3230      	adds	r2, #48	; 0x30
 8006bdc:	f807 2c01 	strb.w	r2, [r7, #-1]
 8006be0:	f10a 0a01 	add.w	sl, sl, #1
 8006be4:	3f01      	subs	r7, #1
 8006be6:	2e00      	cmp	r6, #0
 8006be8:	d0e6      	beq.n	8006bb8 <_vfprintf_r+0xf40>
 8006bea:	f898 3000 	ldrb.w	r3, [r8]
 8006bee:	459a      	cmp	sl, r3
 8006bf0:	d1e2      	bne.n	8006bb8 <_vfprintf_r+0xf40>
 8006bf2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8006bf6:	d0df      	beq.n	8006bb8 <_vfprintf_r+0xf40>
 8006bf8:	2d00      	cmp	r5, #0
 8006bfa:	bf08      	it	eq
 8006bfc:	2c0a      	cmpeq	r4, #10
 8006bfe:	d3db      	bcc.n	8006bb8 <_vfprintf_r+0xf40>
 8006c00:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8006c02:	9918      	ldr	r1, [sp, #96]	; 0x60
 8006c04:	1aff      	subs	r7, r7, r3
 8006c06:	461a      	mov	r2, r3
 8006c08:	4638      	mov	r0, r7
 8006c0a:	f003 faf5 	bl	800a1f8 <strncpy>
 8006c0e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8006c12:	2b00      	cmp	r3, #0
 8006c14:	f000 8496 	beq.w	8007544 <_vfprintf_r+0x18cc>
 8006c18:	f108 0801 	add.w	r8, r8, #1
 8006c1c:	f04f 0a00 	mov.w	sl, #0
 8006c20:	e7ca      	b.n	8006bb8 <_vfprintf_r+0xf40>
 8006c22:	9b04      	ldr	r3, [sp, #16]
 8006c24:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8006c28:	1bdb      	subs	r3, r3, r7
 8006c2a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8006c2e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8006c30:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006c34:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8006c38:	9309      	str	r3, [sp, #36]	; 0x24
 8006c3a:	f7ff b99e 	b.w	8005f7a <_vfprintf_r+0x302>
 8006c3e:	46c1      	mov	r9, r8
 8006c40:	e594      	b.n	800676c <_vfprintf_r+0xaf4>
 8006c42:	4621      	mov	r1, r4
 8006c44:	461c      	mov	r4, r3
 8006c46:	460b      	mov	r3, r1
 8006c48:	3201      	adds	r2, #1
 8006c4a:	442c      	add	r4, r5
 8006c4c:	2a07      	cmp	r2, #7
 8006c4e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006c52:	e9cb 3500 	strd	r3, r5, [fp]
 8006c56:	f77f aa5e 	ble.w	8006116 <_vfprintf_r+0x49e>
 8006c5a:	e5ee      	b.n	800683a <_vfprintf_r+0xbc2>
 8006c5c:	f018 0f10 	tst.w	r8, #16
 8006c60:	f040 80f8 	bne.w	8006e54 <_vfprintf_r+0x11dc>
 8006c64:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006c68:	f000 8351 	beq.w	800730e <_vfprintf_r+0x1696>
 8006c6c:	9a05      	ldr	r2, [sp, #20]
 8006c6e:	801a      	strh	r2, [r3, #0]
 8006c70:	4657      	mov	r7, sl
 8006c72:	f7ff baa7 	b.w	80061c4 <_vfprintf_r+0x54c>
 8006c76:	aa2a      	add	r2, sp, #168	; 0xa8
 8006c78:	9907      	ldr	r1, [sp, #28]
 8006c7a:	9803      	ldr	r0, [sp, #12]
 8006c7c:	f003 fb2a 	bl	800a2d4 <__sprint_r>
 8006c80:	2800      	cmp	r0, #0
 8006c82:	f47f ad71 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006c86:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006c88:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006c8c:	f7ff b9f5 	b.w	800607a <_vfprintf_r+0x402>
 8006c90:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006c94:	4602      	mov	r2, r0
 8006c96:	460b      	mov	r3, r1
 8006c98:	f7f9 ff08 	bl	8000aac <__aeabi_dcmpun>
 8006c9c:	2800      	cmp	r0, #0
 8006c9e:	f040 8491 	bne.w	80075c4 <_vfprintf_r+0x194c>
 8006ca2:	2e61      	cmp	r6, #97	; 0x61
 8006ca4:	f000 8111 	beq.w	8006eca <_vfprintf_r+0x1252>
 8006ca8:	2e41      	cmp	r6, #65	; 0x41
 8006caa:	f000 8377 	beq.w	800739c <_vfprintf_r+0x1724>
 8006cae:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8006cb2:	f026 0220 	bic.w	r2, r6, #32
 8006cb6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006cba:	930e      	str	r3, [sp, #56]	; 0x38
 8006cbc:	9204      	str	r2, [sp, #16]
 8006cbe:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006cc0:	f000 842d 	beq.w	800751e <_vfprintf_r+0x18a6>
 8006cc4:	2a47      	cmp	r2, #71	; 0x47
 8006cc6:	f000 8424 	beq.w	8007512 <_vfprintf_r+0x189a>
 8006cca:	2b00      	cmp	r3, #0
 8006ccc:	f2c0 82f9 	blt.w	80072c2 <_vfprintf_r+0x164a>
 8006cd0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006cd4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006cd8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006cdc:	2e66      	cmp	r6, #102	; 0x66
 8006cde:	f000 83eb 	beq.w	80074b8 <_vfprintf_r+0x1840>
 8006ce2:	2e46      	cmp	r6, #70	; 0x46
 8006ce4:	f000 847e 	beq.w	80075e4 <_vfprintf_r+0x196c>
 8006ce8:	9b04      	ldr	r3, [sp, #16]
 8006cea:	9803      	ldr	r0, [sp, #12]
 8006cec:	2b45      	cmp	r3, #69	; 0x45
 8006cee:	bf0c      	ite	eq
 8006cf0:	f109 0501 	addeq.w	r5, r9, #1
 8006cf4:	464d      	movne	r5, r9
 8006cf6:	aa28      	add	r2, sp, #160	; 0xa0
 8006cf8:	ab25      	add	r3, sp, #148	; 0x94
 8006cfa:	e9cd 3200 	strd	r3, r2, [sp]
 8006cfe:	2102      	movs	r1, #2
 8006d00:	ab24      	add	r3, sp, #144	; 0x90
 8006d02:	462a      	mov	r2, r5
 8006d04:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006d08:	f000 fe3e 	bl	8007988 <_dtoa_r>
 8006d0c:	2e67      	cmp	r6, #103	; 0x67
 8006d0e:	4607      	mov	r7, r0
 8006d10:	f040 849c 	bne.w	800764c <_vfprintf_r+0x19d4>
 8006d14:	f018 0f01 	tst.w	r8, #1
 8006d18:	f040 83f9 	bne.w	800750e <_vfprintf_r+0x1896>
 8006d1c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006d1e:	4640      	mov	r0, r8
 8006d20:	1bdb      	subs	r3, r3, r7
 8006d22:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006d26:	9310      	str	r3, [sp, #64]	; 0x40
 8006d28:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006d2a:	9311      	str	r3, [sp, #68]	; 0x44
 8006d2c:	9b04      	ldr	r3, [sp, #16]
 8006d2e:	2b47      	cmp	r3, #71	; 0x47
 8006d30:	f000 81e7 	beq.w	8007102 <_vfprintf_r+0x148a>
 8006d34:	9b04      	ldr	r3, [sp, #16]
 8006d36:	2b46      	cmp	r3, #70	; 0x46
 8006d38:	f000 8300 	beq.w	800733c <_vfprintf_r+0x16c4>
 8006d3c:	9904      	ldr	r1, [sp, #16]
 8006d3e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006d40:	b2f2      	uxtb	r2, r6
 8006d42:	2941      	cmp	r1, #65	; 0x41
 8006d44:	bf08      	it	eq
 8006d46:	320f      	addeq	r2, #15
 8006d48:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8006d4c:	bf06      	itte	eq
 8006d4e:	b2d2      	uxtbeq	r2, r2
 8006d50:	2101      	moveq	r1, #1
 8006d52:	2100      	movne	r1, #0
 8006d54:	2b00      	cmp	r3, #0
 8006d56:	9324      	str	r3, [sp, #144]	; 0x90
 8006d58:	bfb8      	it	lt
 8006d5a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8006d5c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8006d60:	bfba      	itte	lt
 8006d62:	f1c3 0301 	rsblt	r3, r3, #1
 8006d66:	222d      	movlt	r2, #45	; 0x2d
 8006d68:	222b      	movge	r2, #43	; 0x2b
 8006d6a:	2b09      	cmp	r3, #9
 8006d6c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006d70:	f300 83f9 	bgt.w	8007566 <_vfprintf_r+0x18ee>
 8006d74:	2900      	cmp	r1, #0
 8006d76:	f040 8487 	bne.w	8007688 <_vfprintf_r+0x1a10>
 8006d7a:	2230      	movs	r2, #48	; 0x30
 8006d7c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006d80:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8006d84:	3330      	adds	r3, #48	; 0x30
 8006d86:	7013      	strb	r3, [r2, #0]
 8006d88:	1c53      	adds	r3, r2, #1
 8006d8a:	aa26      	add	r2, sp, #152	; 0x98
 8006d8c:	1a9b      	subs	r3, r3, r2
 8006d8e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006d90:	9319      	str	r3, [sp, #100]	; 0x64
 8006d92:	2a01      	cmp	r2, #1
 8006d94:	4413      	add	r3, r2
 8006d96:	9309      	str	r3, [sp, #36]	; 0x24
 8006d98:	f340 8442 	ble.w	8007620 <_vfprintf_r+0x19a8>
 8006d9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006d9e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006da0:	4413      	add	r3, r2
 8006da2:	9309      	str	r3, [sp, #36]	; 0x24
 8006da4:	2300      	movs	r3, #0
 8006da6:	930f      	str	r3, [sp, #60]	; 0x3c
 8006da8:	9314      	str	r3, [sp, #80]	; 0x50
 8006daa:	9311      	str	r3, [sp, #68]	; 0x44
 8006dac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006dae:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8006db2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006db6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8006dba:	9304      	str	r3, [sp, #16]
 8006dbc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006dbe:	2b00      	cmp	r3, #0
 8006dc0:	f040 8275 	bne.w	80072ae <_vfprintf_r+0x1636>
 8006dc4:	4699      	mov	r9, r3
 8006dc6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006dca:	f7ff b8e2 	b.w	8005f92 <_vfprintf_r+0x31a>
 8006dce:	bf00      	nop
 8006dd0:	0800ac0c 	.word	0x0800ac0c
 8006dd4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006dd6:	49bd      	ldr	r1, [pc, #756]	; (80070cc <_vfprintf_r+0x1454>)
 8006dd8:	f8cb 1000 	str.w	r1, [fp]
 8006ddc:	3201      	adds	r2, #1
 8006dde:	3401      	adds	r4, #1
 8006de0:	2101      	movs	r1, #1
 8006de2:	2a07      	cmp	r2, #7
 8006de4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006de8:	f8cb 1004 	str.w	r1, [fp, #4]
 8006dec:	dc60      	bgt.n	8006eb0 <_vfprintf_r+0x1238>
 8006dee:	f10b 0b08 	add.w	fp, fp, #8
 8006df2:	b92b      	cbnz	r3, 8006e00 <_vfprintf_r+0x1188>
 8006df4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006df6:	b91a      	cbnz	r2, 8006e00 <_vfprintf_r+0x1188>
 8006df8:	f018 0f01 	tst.w	r8, #1
 8006dfc:	f43f a98d 	beq.w	800611a <_vfprintf_r+0x4a2>
 8006e00:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006e02:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006e04:	f8cb 1000 	str.w	r1, [fp]
 8006e08:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006e0a:	f8cb 1004 	str.w	r1, [fp, #4]
 8006e0e:	3201      	adds	r2, #1
 8006e10:	440c      	add	r4, r1
 8006e12:	2a07      	cmp	r2, #7
 8006e14:	942c      	str	r4, [sp, #176]	; 0xb0
 8006e16:	922b      	str	r2, [sp, #172]	; 0xac
 8006e18:	f300 8282 	bgt.w	8007320 <_vfprintf_r+0x16a8>
 8006e1c:	f10b 0b08 	add.w	fp, fp, #8
 8006e20:	2b00      	cmp	r3, #0
 8006e22:	f2c0 82e7 	blt.w	80073f4 <_vfprintf_r+0x177c>
 8006e26:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006e28:	3201      	adds	r2, #1
 8006e2a:	441c      	add	r4, r3
 8006e2c:	2a07      	cmp	r2, #7
 8006e2e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006e32:	e9cb 7300 	strd	r7, r3, [fp]
 8006e36:	f77f a96e 	ble.w	8006116 <_vfprintf_r+0x49e>
 8006e3a:	e4fe      	b.n	800683a <_vfprintf_r+0xbc2>
 8006e3c:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e3e:	9907      	ldr	r1, [sp, #28]
 8006e40:	9803      	ldr	r0, [sp, #12]
 8006e42:	f003 fa47 	bl	800a2d4 <__sprint_r>
 8006e46:	2800      	cmp	r0, #0
 8006e48:	f47f ac8e 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006e4c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006e50:	f7ff bbf0 	b.w	8006634 <_vfprintf_r+0x9bc>
 8006e54:	9a05      	ldr	r2, [sp, #20]
 8006e56:	601a      	str	r2, [r3, #0]
 8006e58:	4657      	mov	r7, sl
 8006e5a:	f7ff b9b3 	b.w	80061c4 <_vfprintf_r+0x54c>
 8006e5e:	8814      	ldrh	r4, [r2, #0]
 8006e60:	9108      	str	r1, [sp, #32]
 8006e62:	2500      	movs	r5, #0
 8006e64:	2201      	movs	r2, #1
 8006e66:	f7ff b9c8 	b.w	80061fa <_vfprintf_r+0x582>
 8006e6a:	8814      	ldrh	r4, [r2, #0]
 8006e6c:	9308      	str	r3, [sp, #32]
 8006e6e:	2500      	movs	r5, #0
 8006e70:	f7ff ba14 	b.w	800629c <_vfprintf_r+0x624>
 8006e74:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006e78:	9208      	str	r2, [sp, #32]
 8006e7a:	17e5      	asrs	r5, r4, #31
 8006e7c:	4620      	mov	r0, r4
 8006e7e:	4629      	mov	r1, r5
 8006e80:	f7ff b855 	b.w	8005f2e <_vfprintf_r+0x2b6>
 8006e84:	8814      	ldrh	r4, [r2, #0]
 8006e86:	9308      	str	r3, [sp, #32]
 8006e88:	2500      	movs	r5, #0
 8006e8a:	f7ff b825 	b.w	8005ed8 <_vfprintf_r+0x260>
 8006e8e:	222d      	movs	r2, #45	; 0x2d
 8006e90:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006e94:	f7ff baa2 	b.w	80063dc <_vfprintf_r+0x764>
 8006e98:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e9a:	9907      	ldr	r1, [sp, #28]
 8006e9c:	9803      	ldr	r0, [sp, #12]
 8006e9e:	f003 fa19 	bl	800a2d4 <__sprint_r>
 8006ea2:	2800      	cmp	r0, #0
 8006ea4:	f47f ac60 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006ea8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006eaa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006eae:	e534      	b.n	800691a <_vfprintf_r+0xca2>
 8006eb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006eb2:	9907      	ldr	r1, [sp, #28]
 8006eb4:	9803      	ldr	r0, [sp, #12]
 8006eb6:	f003 fa0d 	bl	800a2d4 <__sprint_r>
 8006eba:	2800      	cmp	r0, #0
 8006ebc:	f47f ac54 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8006ec0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006ec2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006ec4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006ec8:	e793      	b.n	8006df2 <_vfprintf_r+0x117a>
 8006eca:	2330      	movs	r3, #48	; 0x30
 8006ecc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006ed0:	2378      	movs	r3, #120	; 0x78
 8006ed2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8006ed6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006eda:	f048 0402 	orr.w	r4, r8, #2
 8006ede:	f300 82b0 	bgt.w	8007442 <_vfprintf_r+0x17ca>
 8006ee2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006ee6:	930e      	str	r3, [sp, #56]	; 0x38
 8006ee8:	f026 0320 	bic.w	r3, r6, #32
 8006eec:	9304      	str	r3, [sp, #16]
 8006eee:	2200      	movs	r2, #0
 8006ef0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006ef2:	920a      	str	r2, [sp, #40]	; 0x28
 8006ef4:	46a0      	mov	r8, r4
 8006ef6:	af3d      	add	r7, sp, #244	; 0xf4
 8006ef8:	2b00      	cmp	r3, #0
 8006efa:	f2c0 81e3 	blt.w	80072c4 <_vfprintf_r+0x164c>
 8006efe:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006f02:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006f06:	2300      	movs	r3, #0
 8006f08:	930b      	str	r3, [sp, #44]	; 0x2c
 8006f0a:	2e61      	cmp	r6, #97	; 0x61
 8006f0c:	f000 8255 	beq.w	80073ba <_vfprintf_r+0x1742>
 8006f10:	2e41      	cmp	r6, #65	; 0x41
 8006f12:	f47f aee3 	bne.w	8006cdc <_vfprintf_r+0x1064>
 8006f16:	a824      	add	r0, sp, #144	; 0x90
 8006f18:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006f1c:	f003 f8e2 	bl	800a0e4 <frexp>
 8006f20:	2200      	movs	r2, #0
 8006f22:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006f26:	ec51 0b10 	vmov	r0, r1, d0
 8006f2a:	f7f9 fb25 	bl	8000578 <__aeabi_dmul>
 8006f2e:	2200      	movs	r2, #0
 8006f30:	2300      	movs	r3, #0
 8006f32:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006f36:	f7f9 fd87 	bl	8000a48 <__aeabi_dcmpeq>
 8006f3a:	2800      	cmp	r0, #0
 8006f3c:	f040 8305 	bne.w	800754a <_vfprintf_r+0x18d2>
 8006f40:	4b63      	ldr	r3, [pc, #396]	; (80070d0 <_vfprintf_r+0x1458>)
 8006f42:	9309      	str	r3, [sp, #36]	; 0x24
 8006f44:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8006f48:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8006f4c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006f50:	9721      	str	r7, [sp, #132]	; 0x84
 8006f52:	46b9      	mov	r9, r7
 8006f54:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8006f58:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8006f5c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006f60:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8006f64:	e003      	b.n	8006f6e <_vfprintf_r+0x12f6>
 8006f66:	f7f9 fd6f 	bl	8000a48 <__aeabi_dcmpeq>
 8006f6a:	bb20      	cbnz	r0, 8006fb6 <_vfprintf_r+0x133e>
 8006f6c:	46a9      	mov	r9, r5
 8006f6e:	2200      	movs	r2, #0
 8006f70:	4b58      	ldr	r3, [pc, #352]	; (80070d4 <_vfprintf_r+0x145c>)
 8006f72:	4630      	mov	r0, r6
 8006f74:	4639      	mov	r1, r7
 8006f76:	f7f9 faff 	bl	8000578 <__aeabi_dmul>
 8006f7a:	460f      	mov	r7, r1
 8006f7c:	4606      	mov	r6, r0
 8006f7e:	f7f9 fdab 	bl	8000ad8 <__aeabi_d2iz>
 8006f82:	4680      	mov	r8, r0
 8006f84:	f7f9 fa8e 	bl	80004a4 <__aeabi_i2d>
 8006f88:	4602      	mov	r2, r0
 8006f8a:	460b      	mov	r3, r1
 8006f8c:	4630      	mov	r0, r6
 8006f8e:	4639      	mov	r1, r7
 8006f90:	f7f9 f93a 	bl	8000208 <__aeabi_dsub>
 8006f94:	464d      	mov	r5, r9
 8006f96:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006f9a:	f805 cb01 	strb.w	ip, [r5], #1
 8006f9e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8006fa2:	46a3      	mov	fp, r4
 8006fa4:	4606      	mov	r6, r0
 8006fa6:	460f      	mov	r7, r1
 8006fa8:	f04f 0200 	mov.w	r2, #0
 8006fac:	f04f 0300 	mov.w	r3, #0
 8006fb0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8006fb4:	d1d7      	bne.n	8006f66 <_vfprintf_r+0x12ee>
 8006fb6:	4630      	mov	r0, r6
 8006fb8:	4639      	mov	r1, r7
 8006fba:	2200      	movs	r2, #0
 8006fbc:	4b46      	ldr	r3, [pc, #280]	; (80070d8 <_vfprintf_r+0x1460>)
 8006fbe:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8006fc2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8006fc4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006fc8:	4644      	mov	r4, r8
 8006fca:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006fce:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8006fd2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006fd6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006fda:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006fdc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006fe0:	f7f9 fd5a 	bl	8000a98 <__aeabi_dcmpgt>
 8006fe4:	2800      	cmp	r0, #0
 8006fe6:	f040 8176 	bne.w	80072d6 <_vfprintf_r+0x165e>
 8006fea:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006fee:	2200      	movs	r2, #0
 8006ff0:	4b39      	ldr	r3, [pc, #228]	; (80070d8 <_vfprintf_r+0x1460>)
 8006ff2:	f7f9 fd29 	bl	8000a48 <__aeabi_dcmpeq>
 8006ff6:	b110      	cbz	r0, 8006ffe <_vfprintf_r+0x1386>
 8006ff8:	07e2      	lsls	r2, r4, #31
 8006ffa:	f100 816c 	bmi.w	80072d6 <_vfprintf_r+0x165e>
 8006ffe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007000:	2b00      	cmp	r3, #0
 8007002:	db07      	blt.n	8007014 <_vfprintf_r+0x139c>
 8007004:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007006:	3301      	adds	r3, #1
 8007008:	442b      	add	r3, r5
 800700a:	2230      	movs	r2, #48	; 0x30
 800700c:	f805 2b01 	strb.w	r2, [r5], #1
 8007010:	42ab      	cmp	r3, r5
 8007012:	d1fb      	bne.n	800700c <_vfprintf_r+0x1394>
 8007014:	1beb      	subs	r3, r5, r7
 8007016:	4640      	mov	r0, r8
 8007018:	9310      	str	r3, [sp, #64]	; 0x40
 800701a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800701e:	e683      	b.n	8006d28 <_vfprintf_r+0x10b0>
 8007020:	f8cd 9010 	str.w	r9, [sp, #16]
 8007024:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8007028:	9408      	str	r4, [sp, #32]
 800702a:	4681      	mov	r9, r0
 800702c:	900f      	str	r0, [sp, #60]	; 0x3c
 800702e:	9014      	str	r0, [sp, #80]	; 0x50
 8007030:	9011      	str	r0, [sp, #68]	; 0x44
 8007032:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007036:	f7fe bfac 	b.w	8005f92 <_vfprintf_r+0x31a>
 800703a:	aa2a      	add	r2, sp, #168	; 0xa8
 800703c:	9907      	ldr	r1, [sp, #28]
 800703e:	9803      	ldr	r0, [sp, #12]
 8007040:	f003 f948 	bl	800a2d4 <__sprint_r>
 8007044:	2800      	cmp	r0, #0
 8007046:	f47f ab8f 	bne.w	8006768 <_vfprintf_r+0xaf0>
 800704a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800704c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800704e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007052:	e511      	b.n	8006a78 <_vfprintf_r+0xe00>
 8007054:	4252      	negs	r2, r2
 8007056:	9206      	str	r2, [sp, #24]
 8007058:	9308      	str	r3, [sp, #32]
 800705a:	f7ff b96d 	b.w	8006338 <_vfprintf_r+0x6c0>
 800705e:	4614      	mov	r4, r2
 8007060:	4632      	mov	r2, r6
 8007062:	461e      	mov	r6, r3
 8007064:	4613      	mov	r3, r2
 8007066:	462a      	mov	r2, r5
 8007068:	3201      	adds	r2, #1
 800706a:	9209      	str	r2, [sp, #36]	; 0x24
 800706c:	f106 0208 	add.w	r2, r6, #8
 8007070:	e9c6 3900 	strd	r3, r9, [r6]
 8007074:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007076:	932b      	str	r3, [sp, #172]	; 0xac
 8007078:	444c      	add	r4, r9
 800707a:	2b07      	cmp	r3, #7
 800707c:	942c      	str	r4, [sp, #176]	; 0xb0
 800707e:	f73f acc3 	bgt.w	8006a08 <_vfprintf_r+0xd90>
 8007082:	3301      	adds	r3, #1
 8007084:	9309      	str	r3, [sp, #36]	; 0x24
 8007086:	f102 0b08 	add.w	fp, r2, #8
 800708a:	4616      	mov	r6, r2
 800708c:	f7ff bbca 	b.w	8006824 <_vfprintf_r+0xbac>
 8007090:	aa2a      	add	r2, sp, #168	; 0xa8
 8007092:	9907      	ldr	r1, [sp, #28]
 8007094:	9803      	ldr	r0, [sp, #12]
 8007096:	f003 f91d 	bl	800a2d4 <__sprint_r>
 800709a:	2800      	cmp	r0, #0
 800709c:	f47f ab64 	bne.w	8006768 <_vfprintf_r+0xaf0>
 80070a0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80070a2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80070a6:	f7ff bade 	b.w	8006666 <_vfprintf_r+0x9ee>
 80070aa:	464b      	mov	r3, r9
 80070ac:	2b06      	cmp	r3, #6
 80070ae:	bf28      	it	cs
 80070b0:	2306      	movcs	r3, #6
 80070b2:	46b9      	mov	r9, r7
 80070b4:	970f      	str	r7, [sp, #60]	; 0x3c
 80070b6:	9714      	str	r7, [sp, #80]	; 0x50
 80070b8:	9711      	str	r7, [sp, #68]	; 0x44
 80070ba:	970a      	str	r7, [sp, #40]	; 0x28
 80070bc:	463a      	mov	r2, r7
 80070be:	9304      	str	r3, [sp, #16]
 80070c0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80070c4:	4f05      	ldr	r7, [pc, #20]	; (80070dc <_vfprintf_r+0x1464>)
 80070c6:	f7fe bf64 	b.w	8005f92 <_vfprintf_r+0x31a>
 80070ca:	bf00      	nop
 80070cc:	0800abf8 	.word	0x0800abf8
 80070d0:	0800abdc 	.word	0x0800abdc
 80070d4:	40300000 	.word	0x40300000
 80070d8:	3fe00000 	.word	0x3fe00000
 80070dc:	0800abf0 	.word	0x0800abf0
 80070e0:	460c      	mov	r4, r1
 80070e2:	4639      	mov	r1, r7
 80070e4:	465f      	mov	r7, fp
 80070e6:	469b      	mov	fp, r3
 80070e8:	460b      	mov	r3, r1
 80070ea:	3201      	adds	r2, #1
 80070ec:	442c      	add	r4, r5
 80070ee:	2a07      	cmp	r2, #7
 80070f0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80070f4:	e9cb 3500 	strd	r3, r5, [fp]
 80070f8:	f73f aca5 	bgt.w	8006a46 <_vfprintf_r+0xdce>
 80070fc:	f10b 0b08 	add.w	fp, fp, #8
 8007100:	e4ac      	b.n	8006a5c <_vfprintf_r+0xde4>
 8007102:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007104:	1cda      	adds	r2, r3, #3
 8007106:	db02      	blt.n	800710e <_vfprintf_r+0x1496>
 8007108:	4599      	cmp	r9, r3
 800710a:	f280 80b5 	bge.w	8007278 <_vfprintf_r+0x1600>
 800710e:	3e02      	subs	r6, #2
 8007110:	f026 0320 	bic.w	r3, r6, #32
 8007114:	9304      	str	r3, [sp, #16]
 8007116:	e611      	b.n	8006d3c <_vfprintf_r+0x10c4>
 8007118:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800711a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800711e:	465a      	mov	r2, fp
 8007120:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8007124:	18fb      	adds	r3, r7, r3
 8007126:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800712a:	970c      	str	r7, [sp, #48]	; 0x30
 800712c:	4eaf      	ldr	r6, [pc, #700]	; (80073ec <_vfprintf_r+0x1774>)
 800712e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8007132:	9309      	str	r3, [sp, #36]	; 0x24
 8007134:	464f      	mov	r7, r9
 8007136:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800713a:	4621      	mov	r1, r4
 800713c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800713e:	2b00      	cmp	r3, #0
 8007140:	d05b      	beq.n	80071fa <_vfprintf_r+0x1582>
 8007142:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007144:	2b00      	cmp	r3, #0
 8007146:	d154      	bne.n	80071f2 <_vfprintf_r+0x157a>
 8007148:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800714a:	3b01      	subs	r3, #1
 800714c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8007150:	9314      	str	r3, [sp, #80]	; 0x50
 8007152:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8007154:	9818      	ldr	r0, [sp, #96]	; 0x60
 8007156:	6010      	str	r0, [r2, #0]
 8007158:	3301      	adds	r3, #1
 800715a:	4459      	add	r1, fp
 800715c:	2b07      	cmp	r3, #7
 800715e:	912c      	str	r1, [sp, #176]	; 0xb0
 8007160:	f8c2 b004 	str.w	fp, [r2, #4]
 8007164:	932b      	str	r3, [sp, #172]	; 0xac
 8007166:	dc68      	bgt.n	800723a <_vfprintf_r+0x15c2>
 8007168:	3208      	adds	r2, #8
 800716a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800716c:	f898 3000 	ldrb.w	r3, [r8]
 8007170:	1bc5      	subs	r5, r0, r7
 8007172:	429d      	cmp	r5, r3
 8007174:	bfa8      	it	ge
 8007176:	461d      	movge	r5, r3
 8007178:	2d00      	cmp	r5, #0
 800717a:	dd0b      	ble.n	8007194 <_vfprintf_r+0x151c>
 800717c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800717e:	6017      	str	r7, [r2, #0]
 8007180:	3301      	adds	r3, #1
 8007182:	4429      	add	r1, r5
 8007184:	2b07      	cmp	r3, #7
 8007186:	912c      	str	r1, [sp, #176]	; 0xb0
 8007188:	6055      	str	r5, [r2, #4]
 800718a:	932b      	str	r3, [sp, #172]	; 0xac
 800718c:	dc5e      	bgt.n	800724c <_vfprintf_r+0x15d4>
 800718e:	f898 3000 	ldrb.w	r3, [r8]
 8007192:	3208      	adds	r2, #8
 8007194:	2d00      	cmp	r5, #0
 8007196:	bfac      	ite	ge
 8007198:	1b5d      	subge	r5, r3, r5
 800719a:	461d      	movlt	r5, r3
 800719c:	2d00      	cmp	r5, #0
 800719e:	dd26      	ble.n	80071ee <_vfprintf_r+0x1576>
 80071a0:	2d10      	cmp	r5, #16
 80071a2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80071a4:	dd3c      	ble.n	8007220 <_vfprintf_r+0x15a8>
 80071a6:	2410      	movs	r4, #16
 80071a8:	e003      	b.n	80071b2 <_vfprintf_r+0x153a>
 80071aa:	3208      	adds	r2, #8
 80071ac:	3d10      	subs	r5, #16
 80071ae:	2d10      	cmp	r5, #16
 80071b0:	dd36      	ble.n	8007220 <_vfprintf_r+0x15a8>
 80071b2:	3001      	adds	r0, #1
 80071b4:	3110      	adds	r1, #16
 80071b6:	2807      	cmp	r0, #7
 80071b8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80071bc:	e9c2 6400 	strd	r6, r4, [r2]
 80071c0:	ddf3      	ble.n	80071aa <_vfprintf_r+0x1532>
 80071c2:	aa2a      	add	r2, sp, #168	; 0xa8
 80071c4:	4651      	mov	r1, sl
 80071c6:	4648      	mov	r0, r9
 80071c8:	f003 f884 	bl	800a2d4 <__sprint_r>
 80071cc:	2800      	cmp	r0, #0
 80071ce:	d150      	bne.n	8007272 <_vfprintf_r+0x15fa>
 80071d0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80071d4:	aa2d      	add	r2, sp, #180	; 0xb4
 80071d6:	e7e9      	b.n	80071ac <_vfprintf_r+0x1534>
 80071d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80071da:	4651      	mov	r1, sl
 80071dc:	4648      	mov	r0, r9
 80071de:	f003 f879 	bl	800a2d4 <__sprint_r>
 80071e2:	2800      	cmp	r0, #0
 80071e4:	d145      	bne.n	8007272 <_vfprintf_r+0x15fa>
 80071e6:	f898 3000 	ldrb.w	r3, [r8]
 80071ea:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80071ec:	aa2d      	add	r2, sp, #180	; 0xb4
 80071ee:	441f      	add	r7, r3
 80071f0:	e7a4      	b.n	800713c <_vfprintf_r+0x14c4>
 80071f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80071f4:	3b01      	subs	r3, #1
 80071f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80071f8:	e7ab      	b.n	8007152 <_vfprintf_r+0x14da>
 80071fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80071fc:	2b00      	cmp	r3, #0
 80071fe:	d1f8      	bne.n	80071f2 <_vfprintf_r+0x157a>
 8007200:	46b9      	mov	r9, r7
 8007202:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007204:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007206:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800720a:	18fb      	adds	r3, r7, r3
 800720c:	4599      	cmp	r9, r3
 800720e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8007212:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8007216:	4693      	mov	fp, r2
 8007218:	460c      	mov	r4, r1
 800721a:	bf28      	it	cs
 800721c:	4699      	movcs	r9, r3
 800721e:	e424      	b.n	8006a6a <_vfprintf_r+0xdf2>
 8007220:	3001      	adds	r0, #1
 8007222:	4429      	add	r1, r5
 8007224:	2807      	cmp	r0, #7
 8007226:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800722a:	e9c2 6500 	strd	r6, r5, [r2]
 800722e:	dcd3      	bgt.n	80071d8 <_vfprintf_r+0x1560>
 8007230:	f898 3000 	ldrb.w	r3, [r8]
 8007234:	3208      	adds	r2, #8
 8007236:	441f      	add	r7, r3
 8007238:	e780      	b.n	800713c <_vfprintf_r+0x14c4>
 800723a:	aa2a      	add	r2, sp, #168	; 0xa8
 800723c:	4651      	mov	r1, sl
 800723e:	4648      	mov	r0, r9
 8007240:	f003 f848 	bl	800a2d4 <__sprint_r>
 8007244:	b9a8      	cbnz	r0, 8007272 <_vfprintf_r+0x15fa>
 8007246:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8007248:	aa2d      	add	r2, sp, #180	; 0xb4
 800724a:	e78e      	b.n	800716a <_vfprintf_r+0x14f2>
 800724c:	aa2a      	add	r2, sp, #168	; 0xa8
 800724e:	4651      	mov	r1, sl
 8007250:	4648      	mov	r0, r9
 8007252:	f003 f83f 	bl	800a2d4 <__sprint_r>
 8007256:	b960      	cbnz	r0, 8007272 <_vfprintf_r+0x15fa>
 8007258:	f898 3000 	ldrb.w	r3, [r8]
 800725c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800725e:	aa2d      	add	r2, sp, #180	; 0xb4
 8007260:	e798      	b.n	8007194 <_vfprintf_r+0x151c>
 8007262:	4638      	mov	r0, r7
 8007264:	f7f9 fecc 	bl	8001000 <strlen>
 8007268:	46a9      	mov	r9, r5
 800726a:	4603      	mov	r3, r0
 800726c:	9009      	str	r0, [sp, #36]	; 0x24
 800726e:	f7ff b8f4 	b.w	800645a <_vfprintf_r+0x7e2>
 8007272:	46d1      	mov	r9, sl
 8007274:	f7ff ba7a 	b.w	800676c <_vfprintf_r+0xaf4>
 8007278:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800727a:	4619      	mov	r1, r3
 800727c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800727e:	4299      	cmp	r1, r3
 8007280:	f300 8082 	bgt.w	8007388 <_vfprintf_r+0x1710>
 8007284:	07c4      	lsls	r4, r0, #31
 8007286:	f140 816b 	bpl.w	8007560 <_vfprintf_r+0x18e8>
 800728a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800728c:	4413      	add	r3, r2
 800728e:	9309      	str	r3, [sp, #36]	; 0x24
 8007290:	0541      	lsls	r1, r0, #21
 8007292:	d503      	bpl.n	800729c <_vfprintf_r+0x1624>
 8007294:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007296:	2b00      	cmp	r3, #0
 8007298:	f300 80e6 	bgt.w	8007468 <_vfprintf_r+0x17f0>
 800729c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800729e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80072a2:	9304      	str	r3, [sp, #16]
 80072a4:	2667      	movs	r6, #103	; 0x67
 80072a6:	2300      	movs	r3, #0
 80072a8:	930f      	str	r3, [sp, #60]	; 0x3c
 80072aa:	9314      	str	r3, [sp, #80]	; 0x50
 80072ac:	e586      	b.n	8006dbc <_vfprintf_r+0x1144>
 80072ae:	222d      	movs	r2, #45	; 0x2d
 80072b0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80072b4:	f04f 0900 	mov.w	r9, #0
 80072b8:	f7fe be6c 	b.w	8005f94 <_vfprintf_r+0x31c>
 80072bc:	46a1      	mov	r9, r4
 80072be:	f7ff ba55 	b.w	800676c <_vfprintf_r+0xaf4>
 80072c2:	900a      	str	r0, [sp, #40]	; 0x28
 80072c4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80072c8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80072cc:	931f      	str	r3, [sp, #124]	; 0x7c
 80072ce:	232d      	movs	r3, #45	; 0x2d
 80072d0:	911e      	str	r1, [sp, #120]	; 0x78
 80072d2:	930b      	str	r3, [sp, #44]	; 0x2c
 80072d4:	e619      	b.n	8006f0a <_vfprintf_r+0x1292>
 80072d6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80072d8:	9328      	str	r3, [sp, #160]	; 0xa0
 80072da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80072dc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80072e0:	7bd9      	ldrb	r1, [r3, #15]
 80072e2:	4291      	cmp	r1, r2
 80072e4:	462b      	mov	r3, r5
 80072e6:	d109      	bne.n	80072fc <_vfprintf_r+0x1684>
 80072e8:	2030      	movs	r0, #48	; 0x30
 80072ea:	f803 0c01 	strb.w	r0, [r3, #-1]
 80072ee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80072f0:	1e5a      	subs	r2, r3, #1
 80072f2:	9228      	str	r2, [sp, #160]	; 0xa0
 80072f4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80072f8:	4291      	cmp	r1, r2
 80072fa:	d0f6      	beq.n	80072ea <_vfprintf_r+0x1672>
 80072fc:	2a39      	cmp	r2, #57	; 0x39
 80072fe:	bf0b      	itete	eq
 8007300:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8007302:	3201      	addne	r2, #1
 8007304:	7a92      	ldrbeq	r2, [r2, #10]
 8007306:	b2d2      	uxtbne	r2, r2
 8007308:	f803 2c01 	strb.w	r2, [r3, #-1]
 800730c:	e682      	b.n	8007014 <_vfprintf_r+0x139c>
 800730e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8007312:	f43f ad9f 	beq.w	8006e54 <_vfprintf_r+0x11dc>
 8007316:	9a05      	ldr	r2, [sp, #20]
 8007318:	701a      	strb	r2, [r3, #0]
 800731a:	4657      	mov	r7, sl
 800731c:	f7fe bf52 	b.w	80061c4 <_vfprintf_r+0x54c>
 8007320:	aa2a      	add	r2, sp, #168	; 0xa8
 8007322:	9907      	ldr	r1, [sp, #28]
 8007324:	9803      	ldr	r0, [sp, #12]
 8007326:	f002 ffd5 	bl	800a2d4 <__sprint_r>
 800732a:	2800      	cmp	r0, #0
 800732c:	f47f aa1c 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8007330:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007332:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8007336:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800733a:	e571      	b.n	8006e20 <_vfprintf_r+0x11a8>
 800733c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800733e:	2b00      	cmp	r3, #0
 8007340:	f340 8164 	ble.w	800760c <_vfprintf_r+0x1994>
 8007344:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007346:	f1b9 0f00 	cmp.w	r9, #0
 800734a:	f040 8103 	bne.w	8007554 <_vfprintf_r+0x18dc>
 800734e:	07c6      	lsls	r6, r0, #31
 8007350:	f100 8100 	bmi.w	8007554 <_vfprintf_r+0x18dc>
 8007354:	9309      	str	r3, [sp, #36]	; 0x24
 8007356:	2666      	movs	r6, #102	; 0x66
 8007358:	0543      	lsls	r3, r0, #21
 800735a:	f100 8086 	bmi.w	800746a <_vfprintf_r+0x17f2>
 800735e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007360:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8007364:	9304      	str	r3, [sp, #16]
 8007366:	e79e      	b.n	80072a6 <_vfprintf_r+0x162e>
 8007368:	aa2a      	add	r2, sp, #168	; 0xa8
 800736a:	9907      	ldr	r1, [sp, #28]
 800736c:	9803      	ldr	r0, [sp, #12]
 800736e:	f002 ffb1 	bl	800a2d4 <__sprint_r>
 8007372:	2800      	cmp	r0, #0
 8007374:	f47f a9f8 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8007378:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800737a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800737c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800737e:	1ad3      	subs	r3, r2, r3
 8007380:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007384:	f7ff bb90 	b.w	8006aa8 <_vfprintf_r+0xe30>
 8007388:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800738a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800738c:	4413      	add	r3, r2
 800738e:	9309      	str	r3, [sp, #36]	; 0x24
 8007390:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007392:	2b00      	cmp	r3, #0
 8007394:	f340 8149 	ble.w	800762a <_vfprintf_r+0x19b2>
 8007398:	2667      	movs	r6, #103	; 0x67
 800739a:	e7dd      	b.n	8007358 <_vfprintf_r+0x16e0>
 800739c:	2330      	movs	r3, #48	; 0x30
 800739e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80073a2:	2358      	movs	r3, #88	; 0x58
 80073a4:	e595      	b.n	8006ed2 <_vfprintf_r+0x125a>
 80073a6:	9803      	ldr	r0, [sp, #12]
 80073a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80073aa:	4649      	mov	r1, r9
 80073ac:	f002 ff92 	bl	800a2d4 <__sprint_r>
 80073b0:	2800      	cmp	r0, #0
 80073b2:	f47f a9e0 	bne.w	8006776 <_vfprintf_r+0xafe>
 80073b6:	f7fe bf0f 	b.w	80061d8 <_vfprintf_r+0x560>
 80073ba:	a824      	add	r0, sp, #144	; 0x90
 80073bc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80073c0:	f002 fe90 	bl	800a0e4 <frexp>
 80073c4:	2200      	movs	r2, #0
 80073c6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80073ca:	ec51 0b10 	vmov	r0, r1, d0
 80073ce:	f7f9 f8d3 	bl	8000578 <__aeabi_dmul>
 80073d2:	2200      	movs	r2, #0
 80073d4:	2300      	movs	r3, #0
 80073d6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80073da:	f7f9 fb35 	bl	8000a48 <__aeabi_dcmpeq>
 80073de:	b108      	cbz	r0, 80073e4 <_vfprintf_r+0x176c>
 80073e0:	2301      	movs	r3, #1
 80073e2:	9324      	str	r3, [sp, #144]	; 0x90
 80073e4:	4b02      	ldr	r3, [pc, #8]	; (80073f0 <_vfprintf_r+0x1778>)
 80073e6:	9309      	str	r3, [sp, #36]	; 0x24
 80073e8:	e5ac      	b.n	8006f44 <_vfprintf_r+0x12cc>
 80073ea:	bf00      	nop
 80073ec:	0800ac0c 	.word	0x0800ac0c
 80073f0:	0800abc8 	.word	0x0800abc8
 80073f4:	425d      	negs	r5, r3
 80073f6:	3310      	adds	r3, #16
 80073f8:	4bb9      	ldr	r3, [pc, #740]	; (80076e0 <_vfprintf_r+0x1a68>)
 80073fa:	f280 8097 	bge.w	800752c <_vfprintf_r+0x18b4>
 80073fe:	4619      	mov	r1, r3
 8007400:	2610      	movs	r6, #16
 8007402:	4623      	mov	r3, r4
 8007404:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8007408:	460c      	mov	r4, r1
 800740a:	e005      	b.n	8007418 <_vfprintf_r+0x17a0>
 800740c:	f10b 0b08 	add.w	fp, fp, #8
 8007410:	3d10      	subs	r5, #16
 8007412:	2d10      	cmp	r5, #16
 8007414:	f340 8087 	ble.w	8007526 <_vfprintf_r+0x18ae>
 8007418:	3201      	adds	r2, #1
 800741a:	3310      	adds	r3, #16
 800741c:	2a07      	cmp	r2, #7
 800741e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8007422:	e9cb 4600 	strd	r4, r6, [fp]
 8007426:	ddf1      	ble.n	800740c <_vfprintf_r+0x1794>
 8007428:	aa2a      	add	r2, sp, #168	; 0xa8
 800742a:	9907      	ldr	r1, [sp, #28]
 800742c:	4648      	mov	r0, r9
 800742e:	f002 ff51 	bl	800a2d4 <__sprint_r>
 8007432:	2800      	cmp	r0, #0
 8007434:	f47f a998 	bne.w	8006768 <_vfprintf_r+0xaf0>
 8007438:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800743c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007440:	e7e6      	b.n	8007410 <_vfprintf_r+0x1798>
 8007442:	f109 0101 	add.w	r1, r9, #1
 8007446:	9803      	ldr	r0, [sp, #12]
 8007448:	f001 fe80 	bl	800914c <_malloc_r>
 800744c:	4607      	mov	r7, r0
 800744e:	2800      	cmp	r0, #0
 8007450:	f000 813b 	beq.w	80076ca <_vfprintf_r+0x1a52>
 8007454:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8007458:	930e      	str	r3, [sp, #56]	; 0x38
 800745a:	f026 0320 	bic.w	r3, r6, #32
 800745e:	9304      	str	r3, [sp, #16]
 8007460:	46a0      	mov	r8, r4
 8007462:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007464:	900a      	str	r0, [sp, #40]	; 0x28
 8007466:	e547      	b.n	8006ef8 <_vfprintf_r+0x1280>
 8007468:	2667      	movs	r6, #103	; 0x67
 800746a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800746c:	2200      	movs	r2, #0
 800746e:	920f      	str	r2, [sp, #60]	; 0x3c
 8007470:	9214      	str	r2, [sp, #80]	; 0x50
 8007472:	7803      	ldrb	r3, [r0, #0]
 8007474:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8007476:	2bff      	cmp	r3, #255	; 0xff
 8007478:	d00c      	beq.n	8007494 <_vfprintf_r+0x181c>
 800747a:	4293      	cmp	r3, r2
 800747c:	da0a      	bge.n	8007494 <_vfprintf_r+0x181c>
 800747e:	7841      	ldrb	r1, [r0, #1]
 8007480:	1ad2      	subs	r2, r2, r3
 8007482:	b1a9      	cbz	r1, 80074b0 <_vfprintf_r+0x1838>
 8007484:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007486:	3301      	adds	r3, #1
 8007488:	9314      	str	r3, [sp, #80]	; 0x50
 800748a:	460b      	mov	r3, r1
 800748c:	2bff      	cmp	r3, #255	; 0xff
 800748e:	f100 0001 	add.w	r0, r0, #1
 8007492:	d1f2      	bne.n	800747a <_vfprintf_r+0x1802>
 8007494:	9211      	str	r2, [sp, #68]	; 0x44
 8007496:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007498:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800749a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800749c:	901a      	str	r0, [sp, #104]	; 0x68
 800749e:	4413      	add	r3, r2
 80074a0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80074a2:	fb02 1303 	mla	r3, r2, r3, r1
 80074a6:	9309      	str	r3, [sp, #36]	; 0x24
 80074a8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80074ac:	9304      	str	r3, [sp, #16]
 80074ae:	e485      	b.n	8006dbc <_vfprintf_r+0x1144>
 80074b0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80074b2:	3101      	adds	r1, #1
 80074b4:	910f      	str	r1, [sp, #60]	; 0x3c
 80074b6:	e7de      	b.n	8007476 <_vfprintf_r+0x17fe>
 80074b8:	aa28      	add	r2, sp, #160	; 0xa0
 80074ba:	ab25      	add	r3, sp, #148	; 0x94
 80074bc:	e9cd 3200 	strd	r3, r2, [sp]
 80074c0:	2103      	movs	r1, #3
 80074c2:	ab24      	add	r3, sp, #144	; 0x90
 80074c4:	464a      	mov	r2, r9
 80074c6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80074ca:	9803      	ldr	r0, [sp, #12]
 80074cc:	f000 fa5c 	bl	8007988 <_dtoa_r>
 80074d0:	464d      	mov	r5, r9
 80074d2:	4607      	mov	r7, r0
 80074d4:	eb00 0409 	add.w	r4, r0, r9
 80074d8:	783b      	ldrb	r3, [r7, #0]
 80074da:	2b30      	cmp	r3, #48	; 0x30
 80074dc:	f000 80be 	beq.w	800765c <_vfprintf_r+0x19e4>
 80074e0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80074e2:	442c      	add	r4, r5
 80074e4:	2200      	movs	r2, #0
 80074e6:	2300      	movs	r3, #0
 80074e8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80074ec:	f7f9 faac 	bl	8000a48 <__aeabi_dcmpeq>
 80074f0:	b108      	cbz	r0, 80074f6 <_vfprintf_r+0x187e>
 80074f2:	4623      	mov	r3, r4
 80074f4:	e413      	b.n	8006d1e <_vfprintf_r+0x10a6>
 80074f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80074f8:	42a3      	cmp	r3, r4
 80074fa:	f4bf ac10 	bcs.w	8006d1e <_vfprintf_r+0x10a6>
 80074fe:	2130      	movs	r1, #48	; 0x30
 8007500:	1c5a      	adds	r2, r3, #1
 8007502:	9228      	str	r2, [sp, #160]	; 0xa0
 8007504:	7019      	strb	r1, [r3, #0]
 8007506:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007508:	429c      	cmp	r4, r3
 800750a:	d8f9      	bhi.n	8007500 <_vfprintf_r+0x1888>
 800750c:	e407      	b.n	8006d1e <_vfprintf_r+0x10a6>
 800750e:	197c      	adds	r4, r7, r5
 8007510:	e7e8      	b.n	80074e4 <_vfprintf_r+0x186c>
 8007512:	f1b9 0f00 	cmp.w	r9, #0
 8007516:	f000 8092 	beq.w	800763e <_vfprintf_r+0x19c6>
 800751a:	900a      	str	r0, [sp, #40]	; 0x28
 800751c:	e4ec      	b.n	8006ef8 <_vfprintf_r+0x1280>
 800751e:	900a      	str	r0, [sp, #40]	; 0x28
 8007520:	f04f 0906 	mov.w	r9, #6
 8007524:	e4e8      	b.n	8006ef8 <_vfprintf_r+0x1280>
 8007526:	4621      	mov	r1, r4
 8007528:	461c      	mov	r4, r3
 800752a:	460b      	mov	r3, r1
 800752c:	3201      	adds	r2, #1
 800752e:	442c      	add	r4, r5
 8007530:	2a07      	cmp	r2, #7
 8007532:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007536:	e9cb 3500 	strd	r3, r5, [fp]
 800753a:	f300 80a9 	bgt.w	8007690 <_vfprintf_r+0x1a18>
 800753e:	f10b 0b08 	add.w	fp, fp, #8
 8007542:	e470      	b.n	8006e26 <_vfprintf_r+0x11ae>
 8007544:	469a      	mov	sl, r3
 8007546:	f7ff bb37 	b.w	8006bb8 <_vfprintf_r+0xf40>
 800754a:	2301      	movs	r3, #1
 800754c:	9324      	str	r3, [sp, #144]	; 0x90
 800754e:	4b65      	ldr	r3, [pc, #404]	; (80076e4 <_vfprintf_r+0x1a6c>)
 8007550:	9309      	str	r3, [sp, #36]	; 0x24
 8007552:	e4f7      	b.n	8006f44 <_vfprintf_r+0x12cc>
 8007554:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8007556:	4413      	add	r3, r2
 8007558:	444b      	add	r3, r9
 800755a:	9309      	str	r3, [sp, #36]	; 0x24
 800755c:	2666      	movs	r6, #102	; 0x66
 800755e:	e6fb      	b.n	8007358 <_vfprintf_r+0x16e0>
 8007560:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007562:	9309      	str	r3, [sp, #36]	; 0x24
 8007564:	e694      	b.n	8007290 <_vfprintf_r+0x1618>
 8007566:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800756a:	4664      	mov	r4, ip
 800756c:	4d5e      	ldr	r5, [pc, #376]	; (80076e8 <_vfprintf_r+0x1a70>)
 800756e:	e000      	b.n	8007572 <_vfprintf_r+0x18fa>
 8007570:	4614      	mov	r4, r2
 8007572:	fba5 1203 	umull	r1, r2, r5, r3
 8007576:	08d2      	lsrs	r2, r2, #3
 8007578:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800757c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8007580:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8007584:	4613      	mov	r3, r2
 8007586:	2b09      	cmp	r3, #9
 8007588:	f804 1c01 	strb.w	r1, [r4, #-1]
 800758c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007590:	dcee      	bgt.n	8007570 <_vfprintf_r+0x18f8>
 8007592:	3330      	adds	r3, #48	; 0x30
 8007594:	3c02      	subs	r4, #2
 8007596:	b2db      	uxtb	r3, r3
 8007598:	45a4      	cmp	ip, r4
 800759a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800759e:	f240 8090 	bls.w	80076c2 <_vfprintf_r+0x1a4a>
 80075a2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80075a6:	4611      	mov	r1, r2
 80075a8:	e001      	b.n	80075ae <_vfprintf_r+0x1936>
 80075aa:	f811 3b01 	ldrb.w	r3, [r1], #1
 80075ae:	f804 3b01 	strb.w	r3, [r4], #1
 80075b2:	458c      	cmp	ip, r1
 80075b4:	d1f9      	bne.n	80075aa <_vfprintf_r+0x1932>
 80075b6:	ab2a      	add	r3, sp, #168	; 0xa8
 80075b8:	1a9b      	subs	r3, r3, r2
 80075ba:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80075be:	4413      	add	r3, r2
 80075c0:	f7ff bbe3 	b.w	8006d8a <_vfprintf_r+0x1112>
 80075c4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80075c6:	4f49      	ldr	r7, [pc, #292]	; (80076ec <_vfprintf_r+0x1a74>)
 80075c8:	2b00      	cmp	r3, #0
 80075ca:	bfb6      	itet	lt
 80075cc:	222d      	movlt	r2, #45	; 0x2d
 80075ce:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80075d2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80075d6:	4b46      	ldr	r3, [pc, #280]	; (80076f0 <_vfprintf_r+0x1a78>)
 80075d8:	f7fe bf02 	b.w	80063e0 <_vfprintf_r+0x768>
 80075dc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80075e0:	f7ff b8c9 	b.w	8006776 <_vfprintf_r+0xafe>
 80075e4:	aa28      	add	r2, sp, #160	; 0xa0
 80075e6:	ab25      	add	r3, sp, #148	; 0x94
 80075e8:	e9cd 3200 	strd	r3, r2, [sp]
 80075ec:	2103      	movs	r1, #3
 80075ee:	ab24      	add	r3, sp, #144	; 0x90
 80075f0:	464a      	mov	r2, r9
 80075f2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80075f6:	9803      	ldr	r0, [sp, #12]
 80075f8:	f000 f9c6 	bl	8007988 <_dtoa_r>
 80075fc:	464d      	mov	r5, r9
 80075fe:	4607      	mov	r7, r0
 8007600:	2e46      	cmp	r6, #70	; 0x46
 8007602:	eb07 0405 	add.w	r4, r7, r5
 8007606:	f43f af67 	beq.w	80074d8 <_vfprintf_r+0x1860>
 800760a:	e76b      	b.n	80074e4 <_vfprintf_r+0x186c>
 800760c:	f1b9 0f00 	cmp.w	r9, #0
 8007610:	d131      	bne.n	8007676 <_vfprintf_r+0x19fe>
 8007612:	07c5      	lsls	r5, r0, #31
 8007614:	d42f      	bmi.n	8007676 <_vfprintf_r+0x19fe>
 8007616:	2301      	movs	r3, #1
 8007618:	9304      	str	r3, [sp, #16]
 800761a:	9309      	str	r3, [sp, #36]	; 0x24
 800761c:	2666      	movs	r6, #102	; 0x66
 800761e:	e642      	b.n	80072a6 <_vfprintf_r+0x162e>
 8007620:	07c3      	lsls	r3, r0, #31
 8007622:	f57f abbf 	bpl.w	8006da4 <_vfprintf_r+0x112c>
 8007626:	f7ff bbb9 	b.w	8006d9c <_vfprintf_r+0x1124>
 800762a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800762c:	f1c3 0301 	rsb	r3, r3, #1
 8007630:	441a      	add	r2, r3
 8007632:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8007636:	9209      	str	r2, [sp, #36]	; 0x24
 8007638:	9304      	str	r3, [sp, #16]
 800763a:	2667      	movs	r6, #103	; 0x67
 800763c:	e633      	b.n	80072a6 <_vfprintf_r+0x162e>
 800763e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8007642:	f04f 0901 	mov.w	r9, #1
 8007646:	e457      	b.n	8006ef8 <_vfprintf_r+0x1280>
 8007648:	465a      	mov	r2, fp
 800764a:	e511      	b.n	8007070 <_vfprintf_r+0x13f8>
 800764c:	2e47      	cmp	r6, #71	; 0x47
 800764e:	f47f af5e 	bne.w	800750e <_vfprintf_r+0x1896>
 8007652:	f018 0f01 	tst.w	r8, #1
 8007656:	f43f ab61 	beq.w	8006d1c <_vfprintf_r+0x10a4>
 800765a:	e7d1      	b.n	8007600 <_vfprintf_r+0x1988>
 800765c:	2200      	movs	r2, #0
 800765e:	2300      	movs	r3, #0
 8007660:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8007664:	f7f9 f9f0 	bl	8000a48 <__aeabi_dcmpeq>
 8007668:	2800      	cmp	r0, #0
 800766a:	f47f af39 	bne.w	80074e0 <_vfprintf_r+0x1868>
 800766e:	f1c5 0501 	rsb	r5, r5, #1
 8007672:	9524      	str	r5, [sp, #144]	; 0x90
 8007674:	e735      	b.n	80074e2 <_vfprintf_r+0x186a>
 8007676:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8007678:	3301      	adds	r3, #1
 800767a:	444b      	add	r3, r9
 800767c:	9309      	str	r3, [sp, #36]	; 0x24
 800767e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8007682:	9304      	str	r3, [sp, #16]
 8007684:	2666      	movs	r6, #102	; 0x66
 8007686:	e60e      	b.n	80072a6 <_vfprintf_r+0x162e>
 8007688:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800768c:	f7ff bb7a 	b.w	8006d84 <_vfprintf_r+0x110c>
 8007690:	aa2a      	add	r2, sp, #168	; 0xa8
 8007692:	9907      	ldr	r1, [sp, #28]
 8007694:	9803      	ldr	r0, [sp, #12]
 8007696:	f002 fe1d 	bl	800a2d4 <__sprint_r>
 800769a:	2800      	cmp	r0, #0
 800769c:	f47f a864 	bne.w	8006768 <_vfprintf_r+0xaf0>
 80076a0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80076a4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80076a8:	f7ff bbbd 	b.w	8006e26 <_vfprintf_r+0x11ae>
 80076ac:	9908      	ldr	r1, [sp, #32]
 80076ae:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80076b2:	680b      	ldr	r3, [r1, #0]
 80076b4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80076b8:	1d0b      	adds	r3, r1, #4
 80076ba:	4692      	mov	sl, r2
 80076bc:	9308      	str	r3, [sp, #32]
 80076be:	f7fe bb59 	b.w	8005d74 <_vfprintf_r+0xfc>
 80076c2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80076c6:	f7ff bb60 	b.w	8006d8a <_vfprintf_r+0x1112>
 80076ca:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80076ce:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80076d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80076d6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80076da:	f7ff b84c 	b.w	8006776 <_vfprintf_r+0xafe>
 80076de:	bf00      	nop
 80076e0:	0800ac0c 	.word	0x0800ac0c
 80076e4:	0800abdc 	.word	0x0800abdc
 80076e8:	cccccccd 	.word	0xcccccccd
 80076ec:	0800abc4 	.word	0x0800abc4
 80076f0:	0800abc0 	.word	0x0800abc0

080076f4 <__sbprintf>:
 80076f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80076f8:	460c      	mov	r4, r1
 80076fa:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80076fe:	8989      	ldrh	r1, [r1, #12]
 8007700:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007702:	89e5      	ldrh	r5, [r4, #14]
 8007704:	9619      	str	r6, [sp, #100]	; 0x64
 8007706:	f021 0102 	bic.w	r1, r1, #2
 800770a:	4606      	mov	r6, r0
 800770c:	69e0      	ldr	r0, [r4, #28]
 800770e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8007712:	4617      	mov	r7, r2
 8007714:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8007718:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800771a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800771e:	4698      	mov	r8, r3
 8007720:	ad1a      	add	r5, sp, #104	; 0x68
 8007722:	2300      	movs	r3, #0
 8007724:	9007      	str	r0, [sp, #28]
 8007726:	a816      	add	r0, sp, #88	; 0x58
 8007728:	9209      	str	r2, [sp, #36]	; 0x24
 800772a:	9306      	str	r3, [sp, #24]
 800772c:	9500      	str	r5, [sp, #0]
 800772e:	9504      	str	r5, [sp, #16]
 8007730:	9102      	str	r1, [sp, #8]
 8007732:	9105      	str	r1, [sp, #20]
 8007734:	f001 fc8a 	bl	800904c <__retarget_lock_init_recursive>
 8007738:	4643      	mov	r3, r8
 800773a:	463a      	mov	r2, r7
 800773c:	4669      	mov	r1, sp
 800773e:	4630      	mov	r0, r6
 8007740:	f7fe fa9a 	bl	8005c78 <_vfprintf_r>
 8007744:	1e05      	subs	r5, r0, #0
 8007746:	db07      	blt.n	8007758 <__sbprintf+0x64>
 8007748:	4630      	mov	r0, r6
 800774a:	4669      	mov	r1, sp
 800774c:	f001 f8d6 	bl	80088fc <_fflush_r>
 8007750:	2800      	cmp	r0, #0
 8007752:	bf18      	it	ne
 8007754:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8007758:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800775c:	065b      	lsls	r3, r3, #25
 800775e:	d503      	bpl.n	8007768 <__sbprintf+0x74>
 8007760:	89a3      	ldrh	r3, [r4, #12]
 8007762:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007766:	81a3      	strh	r3, [r4, #12]
 8007768:	9816      	ldr	r0, [sp, #88]	; 0x58
 800776a:	f001 fc71 	bl	8009050 <__retarget_lock_close_recursive>
 800776e:	4628      	mov	r0, r5
 8007770:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8007774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007778 <__swsetup_r>:
 8007778:	b538      	push	{r3, r4, r5, lr}
 800777a:	4b31      	ldr	r3, [pc, #196]	; (8007840 <__swsetup_r+0xc8>)
 800777c:	681b      	ldr	r3, [r3, #0]
 800777e:	4605      	mov	r5, r0
 8007780:	460c      	mov	r4, r1
 8007782:	b113      	cbz	r3, 800778a <__swsetup_r+0x12>
 8007784:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8007786:	2a00      	cmp	r2, #0
 8007788:	d03a      	beq.n	8007800 <__swsetup_r+0x88>
 800778a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800778e:	b293      	uxth	r3, r2
 8007790:	0718      	lsls	r0, r3, #28
 8007792:	d50c      	bpl.n	80077ae <__swsetup_r+0x36>
 8007794:	6920      	ldr	r0, [r4, #16]
 8007796:	b1a8      	cbz	r0, 80077c4 <__swsetup_r+0x4c>
 8007798:	f013 0201 	ands.w	r2, r3, #1
 800779c:	d020      	beq.n	80077e0 <__swsetup_r+0x68>
 800779e:	6963      	ldr	r3, [r4, #20]
 80077a0:	2200      	movs	r2, #0
 80077a2:	425b      	negs	r3, r3
 80077a4:	61a3      	str	r3, [r4, #24]
 80077a6:	60a2      	str	r2, [r4, #8]
 80077a8:	b300      	cbz	r0, 80077ec <__swsetup_r+0x74>
 80077aa:	2000      	movs	r0, #0
 80077ac:	bd38      	pop	{r3, r4, r5, pc}
 80077ae:	06d9      	lsls	r1, r3, #27
 80077b0:	d53e      	bpl.n	8007830 <__swsetup_r+0xb8>
 80077b2:	0758      	lsls	r0, r3, #29
 80077b4:	d428      	bmi.n	8007808 <__swsetup_r+0x90>
 80077b6:	6920      	ldr	r0, [r4, #16]
 80077b8:	f042 0308 	orr.w	r3, r2, #8
 80077bc:	81a3      	strh	r3, [r4, #12]
 80077be:	b29b      	uxth	r3, r3
 80077c0:	2800      	cmp	r0, #0
 80077c2:	d1e9      	bne.n	8007798 <__swsetup_r+0x20>
 80077c4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80077c8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80077cc:	d0e4      	beq.n	8007798 <__swsetup_r+0x20>
 80077ce:	4628      	mov	r0, r5
 80077d0:	4621      	mov	r1, r4
 80077d2:	f001 fc71 	bl	80090b8 <__smakebuf_r>
 80077d6:	89a3      	ldrh	r3, [r4, #12]
 80077d8:	6920      	ldr	r0, [r4, #16]
 80077da:	f013 0201 	ands.w	r2, r3, #1
 80077de:	d1de      	bne.n	800779e <__swsetup_r+0x26>
 80077e0:	0799      	lsls	r1, r3, #30
 80077e2:	bf58      	it	pl
 80077e4:	6962      	ldrpl	r2, [r4, #20]
 80077e6:	60a2      	str	r2, [r4, #8]
 80077e8:	2800      	cmp	r0, #0
 80077ea:	d1de      	bne.n	80077aa <__swsetup_r+0x32>
 80077ec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80077f0:	061a      	lsls	r2, r3, #24
 80077f2:	d5db      	bpl.n	80077ac <__swsetup_r+0x34>
 80077f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80077f8:	81a3      	strh	r3, [r4, #12]
 80077fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80077fe:	bd38      	pop	{r3, r4, r5, pc}
 8007800:	4618      	mov	r0, r3
 8007802:	f001 f8d7 	bl	80089b4 <__sinit>
 8007806:	e7c0      	b.n	800778a <__swsetup_r+0x12>
 8007808:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800780a:	b151      	cbz	r1, 8007822 <__swsetup_r+0xaa>
 800780c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007810:	4299      	cmp	r1, r3
 8007812:	d004      	beq.n	800781e <__swsetup_r+0xa6>
 8007814:	4628      	mov	r0, r5
 8007816:	f001 f96f 	bl	8008af8 <_free_r>
 800781a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800781e:	2300      	movs	r3, #0
 8007820:	6323      	str	r3, [r4, #48]	; 0x30
 8007822:	2300      	movs	r3, #0
 8007824:	6920      	ldr	r0, [r4, #16]
 8007826:	6063      	str	r3, [r4, #4]
 8007828:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800782c:	6020      	str	r0, [r4, #0]
 800782e:	e7c3      	b.n	80077b8 <__swsetup_r+0x40>
 8007830:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007834:	2309      	movs	r3, #9
 8007836:	602b      	str	r3, [r5, #0]
 8007838:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800783c:	81a2      	strh	r2, [r4, #12]
 800783e:	bd38      	pop	{r3, r4, r5, pc}
 8007840:	2000001c 	.word	0x2000001c

08007844 <register_fini>:
 8007844:	4b02      	ldr	r3, [pc, #8]	; (8007850 <register_fini+0xc>)
 8007846:	b113      	cbz	r3, 800784e <register_fini+0xa>
 8007848:	4802      	ldr	r0, [pc, #8]	; (8007854 <register_fini+0x10>)
 800784a:	f000 b805 	b.w	8007858 <atexit>
 800784e:	4770      	bx	lr
 8007850:	00000000 	.word	0x00000000
 8007854:	08008a25 	.word	0x08008a25

08007858 <atexit>:
 8007858:	2300      	movs	r3, #0
 800785a:	4601      	mov	r1, r0
 800785c:	461a      	mov	r2, r3
 800785e:	4618      	mov	r0, r3
 8007860:	f002 bd58 	b.w	800a314 <__register_exitproc>

08007864 <quorem>:
 8007864:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007868:	6903      	ldr	r3, [r0, #16]
 800786a:	690f      	ldr	r7, [r1, #16]
 800786c:	42bb      	cmp	r3, r7
 800786e:	b083      	sub	sp, #12
 8007870:	f2c0 8086 	blt.w	8007980 <quorem+0x11c>
 8007874:	3f01      	subs	r7, #1
 8007876:	f101 0914 	add.w	r9, r1, #20
 800787a:	f100 0a14 	add.w	sl, r0, #20
 800787e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8007882:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8007886:	00bc      	lsls	r4, r7, #2
 8007888:	3201      	adds	r2, #1
 800788a:	fbb3 f8f2 	udiv	r8, r3, r2
 800788e:	eb0a 0304 	add.w	r3, sl, r4
 8007892:	9400      	str	r4, [sp, #0]
 8007894:	eb09 0b04 	add.w	fp, r9, r4
 8007898:	9301      	str	r3, [sp, #4]
 800789a:	f1b8 0f00 	cmp.w	r8, #0
 800789e:	d038      	beq.n	8007912 <quorem+0xae>
 80078a0:	2500      	movs	r5, #0
 80078a2:	462e      	mov	r6, r5
 80078a4:	46ce      	mov	lr, r9
 80078a6:	46d4      	mov	ip, sl
 80078a8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80078ac:	f8dc 3000 	ldr.w	r3, [ip]
 80078b0:	b2a2      	uxth	r2, r4
 80078b2:	fb08 5502 	mla	r5, r8, r2, r5
 80078b6:	0c22      	lsrs	r2, r4, #16
 80078b8:	0c2c      	lsrs	r4, r5, #16
 80078ba:	fb08 4202 	mla	r2, r8, r2, r4
 80078be:	b2ad      	uxth	r5, r5
 80078c0:	1b75      	subs	r5, r6, r5
 80078c2:	b296      	uxth	r6, r2
 80078c4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80078c8:	fa15 f383 	uxtah	r3, r5, r3
 80078cc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80078d0:	b29b      	uxth	r3, r3
 80078d2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80078d6:	45f3      	cmp	fp, lr
 80078d8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80078dc:	f84c 3b04 	str.w	r3, [ip], #4
 80078e0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80078e4:	d2e0      	bcs.n	80078a8 <quorem+0x44>
 80078e6:	9b00      	ldr	r3, [sp, #0]
 80078e8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80078ec:	b98b      	cbnz	r3, 8007912 <quorem+0xae>
 80078ee:	9a01      	ldr	r2, [sp, #4]
 80078f0:	1f13      	subs	r3, r2, #4
 80078f2:	459a      	cmp	sl, r3
 80078f4:	d20c      	bcs.n	8007910 <quorem+0xac>
 80078f6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80078fa:	b94b      	cbnz	r3, 8007910 <quorem+0xac>
 80078fc:	f1a2 0308 	sub.w	r3, r2, #8
 8007900:	e002      	b.n	8007908 <quorem+0xa4>
 8007902:	681a      	ldr	r2, [r3, #0]
 8007904:	3b04      	subs	r3, #4
 8007906:	b91a      	cbnz	r2, 8007910 <quorem+0xac>
 8007908:	459a      	cmp	sl, r3
 800790a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800790e:	d3f8      	bcc.n	8007902 <quorem+0x9e>
 8007910:	6107      	str	r7, [r0, #16]
 8007912:	4604      	mov	r4, r0
 8007914:	f002 f944 	bl	8009ba0 <__mcmp>
 8007918:	2800      	cmp	r0, #0
 800791a:	db2d      	blt.n	8007978 <quorem+0x114>
 800791c:	f108 0801 	add.w	r8, r8, #1
 8007920:	4655      	mov	r5, sl
 8007922:	2300      	movs	r3, #0
 8007924:	f859 1b04 	ldr.w	r1, [r9], #4
 8007928:	6828      	ldr	r0, [r5, #0]
 800792a:	b28a      	uxth	r2, r1
 800792c:	1a9a      	subs	r2, r3, r2
 800792e:	0c0b      	lsrs	r3, r1, #16
 8007930:	fa12 f280 	uxtah	r2, r2, r0
 8007934:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8007938:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800793c:	b292      	uxth	r2, r2
 800793e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007942:	45cb      	cmp	fp, r9
 8007944:	f845 2b04 	str.w	r2, [r5], #4
 8007948:	ea4f 4323 	mov.w	r3, r3, asr #16
 800794c:	d2ea      	bcs.n	8007924 <quorem+0xc0>
 800794e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8007952:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8007956:	b97a      	cbnz	r2, 8007978 <quorem+0x114>
 8007958:	1f1a      	subs	r2, r3, #4
 800795a:	4592      	cmp	sl, r2
 800795c:	d20b      	bcs.n	8007976 <quorem+0x112>
 800795e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8007962:	b942      	cbnz	r2, 8007976 <quorem+0x112>
 8007964:	3b08      	subs	r3, #8
 8007966:	e002      	b.n	800796e <quorem+0x10a>
 8007968:	681a      	ldr	r2, [r3, #0]
 800796a:	3b04      	subs	r3, #4
 800796c:	b91a      	cbnz	r2, 8007976 <quorem+0x112>
 800796e:	459a      	cmp	sl, r3
 8007970:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8007974:	d3f8      	bcc.n	8007968 <quorem+0x104>
 8007976:	6127      	str	r7, [r4, #16]
 8007978:	4640      	mov	r0, r8
 800797a:	b003      	add	sp, #12
 800797c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007980:	2000      	movs	r0, #0
 8007982:	b003      	add	sp, #12
 8007984:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08007988 <_dtoa_r>:
 8007988:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800798c:	ec55 4b10 	vmov	r4, r5, d0
 8007990:	b09b      	sub	sp, #108	; 0x6c
 8007992:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8007994:	9102      	str	r1, [sp, #8]
 8007996:	4681      	mov	r9, r0
 8007998:	9207      	str	r2, [sp, #28]
 800799a:	9305      	str	r3, [sp, #20]
 800799c:	e9cd 4500 	strd	r4, r5, [sp]
 80079a0:	b156      	cbz	r6, 80079b8 <_dtoa_r+0x30>
 80079a2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80079a4:	6072      	str	r2, [r6, #4]
 80079a6:	2301      	movs	r3, #1
 80079a8:	4093      	lsls	r3, r2
 80079aa:	60b3      	str	r3, [r6, #8]
 80079ac:	4631      	mov	r1, r6
 80079ae:	f001 ff07 	bl	80097c0 <_Bfree>
 80079b2:	2300      	movs	r3, #0
 80079b4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80079b8:	f1b5 0800 	subs.w	r8, r5, #0
 80079bc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80079be:	bfb4      	ite	lt
 80079c0:	2301      	movlt	r3, #1
 80079c2:	2300      	movge	r3, #0
 80079c4:	6013      	str	r3, [r2, #0]
 80079c6:	4b76      	ldr	r3, [pc, #472]	; (8007ba0 <_dtoa_r+0x218>)
 80079c8:	bfbc      	itt	lt
 80079ca:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80079ce:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80079d2:	ea33 0308 	bics.w	r3, r3, r8
 80079d6:	f000 80a6 	beq.w	8007b26 <_dtoa_r+0x19e>
 80079da:	e9dd 6700 	ldrd	r6, r7, [sp]
 80079de:	2200      	movs	r2, #0
 80079e0:	2300      	movs	r3, #0
 80079e2:	4630      	mov	r0, r6
 80079e4:	4639      	mov	r1, r7
 80079e6:	f7f9 f82f 	bl	8000a48 <__aeabi_dcmpeq>
 80079ea:	4605      	mov	r5, r0
 80079ec:	b178      	cbz	r0, 8007a0e <_dtoa_r+0x86>
 80079ee:	9a05      	ldr	r2, [sp, #20]
 80079f0:	2301      	movs	r3, #1
 80079f2:	6013      	str	r3, [r2, #0]
 80079f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80079f6:	2b00      	cmp	r3, #0
 80079f8:	f000 80c0 	beq.w	8007b7c <_dtoa_r+0x1f4>
 80079fc:	4b69      	ldr	r3, [pc, #420]	; (8007ba4 <_dtoa_r+0x21c>)
 80079fe:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8007a00:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8007a04:	6013      	str	r3, [r2, #0]
 8007a06:	4658      	mov	r0, fp
 8007a08:	b01b      	add	sp, #108	; 0x6c
 8007a0a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007a0e:	aa18      	add	r2, sp, #96	; 0x60
 8007a10:	a919      	add	r1, sp, #100	; 0x64
 8007a12:	ec47 6b10 	vmov	d0, r6, r7
 8007a16:	4648      	mov	r0, r9
 8007a18:	f002 f954 	bl	8009cc4 <__d2b>
 8007a1c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8007a20:	4682      	mov	sl, r0
 8007a22:	f040 80a0 	bne.w	8007b66 <_dtoa_r+0x1de>
 8007a26:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8007a2a:	442c      	add	r4, r5
 8007a2c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8007a30:	2b20      	cmp	r3, #32
 8007a32:	f340 842c 	ble.w	800828e <_dtoa_r+0x906>
 8007a36:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8007a3a:	fa08 f803 	lsl.w	r8, r8, r3
 8007a3e:	9b00      	ldr	r3, [sp, #0]
 8007a40:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8007a44:	fa23 f000 	lsr.w	r0, r3, r0
 8007a48:	ea48 0000 	orr.w	r0, r8, r0
 8007a4c:	f7f8 fd1a 	bl	8000484 <__aeabi_ui2d>
 8007a50:	2301      	movs	r3, #1
 8007a52:	4606      	mov	r6, r0
 8007a54:	3c01      	subs	r4, #1
 8007a56:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8007a5a:	930f      	str	r3, [sp, #60]	; 0x3c
 8007a5c:	4630      	mov	r0, r6
 8007a5e:	4639      	mov	r1, r7
 8007a60:	2200      	movs	r2, #0
 8007a62:	4b51      	ldr	r3, [pc, #324]	; (8007ba8 <_dtoa_r+0x220>)
 8007a64:	f7f8 fbd0 	bl	8000208 <__aeabi_dsub>
 8007a68:	a347      	add	r3, pc, #284	; (adr r3, 8007b88 <_dtoa_r+0x200>)
 8007a6a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007a6e:	f7f8 fd83 	bl	8000578 <__aeabi_dmul>
 8007a72:	a347      	add	r3, pc, #284	; (adr r3, 8007b90 <_dtoa_r+0x208>)
 8007a74:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007a78:	f7f8 fbc8 	bl	800020c <__adddf3>
 8007a7c:	4606      	mov	r6, r0
 8007a7e:	4620      	mov	r0, r4
 8007a80:	460f      	mov	r7, r1
 8007a82:	f7f8 fd0f 	bl	80004a4 <__aeabi_i2d>
 8007a86:	a344      	add	r3, pc, #272	; (adr r3, 8007b98 <_dtoa_r+0x210>)
 8007a88:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007a8c:	f7f8 fd74 	bl	8000578 <__aeabi_dmul>
 8007a90:	4602      	mov	r2, r0
 8007a92:	460b      	mov	r3, r1
 8007a94:	4630      	mov	r0, r6
 8007a96:	4639      	mov	r1, r7
 8007a98:	f7f8 fbb8 	bl	800020c <__adddf3>
 8007a9c:	4606      	mov	r6, r0
 8007a9e:	460f      	mov	r7, r1
 8007aa0:	f7f9 f81a 	bl	8000ad8 <__aeabi_d2iz>
 8007aa4:	2200      	movs	r2, #0
 8007aa6:	9006      	str	r0, [sp, #24]
 8007aa8:	2300      	movs	r3, #0
 8007aaa:	4630      	mov	r0, r6
 8007aac:	4639      	mov	r1, r7
 8007aae:	f7f8 ffd5 	bl	8000a5c <__aeabi_dcmplt>
 8007ab2:	2800      	cmp	r0, #0
 8007ab4:	f040 8273 	bne.w	8007f9e <_dtoa_r+0x616>
 8007ab8:	9e06      	ldr	r6, [sp, #24]
 8007aba:	2e16      	cmp	r6, #22
 8007abc:	f200 825d 	bhi.w	8007f7a <_dtoa_r+0x5f2>
 8007ac0:	4b3a      	ldr	r3, [pc, #232]	; (8007bac <_dtoa_r+0x224>)
 8007ac2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8007ac6:	e9d3 0100 	ldrd	r0, r1, [r3]
 8007aca:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007ace:	f7f8 ffe3 	bl	8000a98 <__aeabi_dcmpgt>
 8007ad2:	2800      	cmp	r0, #0
 8007ad4:	f000 83d7 	beq.w	8008286 <_dtoa_r+0x8fe>
 8007ad8:	1e73      	subs	r3, r6, #1
 8007ada:	9306      	str	r3, [sp, #24]
 8007adc:	2300      	movs	r3, #0
 8007ade:	930d      	str	r3, [sp, #52]	; 0x34
 8007ae0:	1b2c      	subs	r4, r5, r4
 8007ae2:	f1b4 0801 	subs.w	r8, r4, #1
 8007ae6:	f100 8254 	bmi.w	8007f92 <_dtoa_r+0x60a>
 8007aea:	2300      	movs	r3, #0
 8007aec:	9308      	str	r3, [sp, #32]
 8007aee:	9b06      	ldr	r3, [sp, #24]
 8007af0:	2b00      	cmp	r3, #0
 8007af2:	f2c0 8245 	blt.w	8007f80 <_dtoa_r+0x5f8>
 8007af6:	4498      	add	r8, r3
 8007af8:	930c      	str	r3, [sp, #48]	; 0x30
 8007afa:	2300      	movs	r3, #0
 8007afc:	930b      	str	r3, [sp, #44]	; 0x2c
 8007afe:	9b02      	ldr	r3, [sp, #8]
 8007b00:	2b09      	cmp	r3, #9
 8007b02:	d85b      	bhi.n	8007bbc <_dtoa_r+0x234>
 8007b04:	2b05      	cmp	r3, #5
 8007b06:	f340 83c0 	ble.w	800828a <_dtoa_r+0x902>
 8007b0a:	3b04      	subs	r3, #4
 8007b0c:	9302      	str	r3, [sp, #8]
 8007b0e:	2500      	movs	r5, #0
 8007b10:	9b02      	ldr	r3, [sp, #8]
 8007b12:	3b02      	subs	r3, #2
 8007b14:	2b03      	cmp	r3, #3
 8007b16:	f200 8498 	bhi.w	800844a <_dtoa_r+0xac2>
 8007b1a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8007b1e:	03df      	.short	0x03df
 8007b20:	03e803bf 	.word	0x03e803bf
 8007b24:	04f5      	.short	0x04f5
 8007b26:	9a05      	ldr	r2, [sp, #20]
 8007b28:	f242 730f 	movw	r3, #9999	; 0x270f
 8007b2c:	6013      	str	r3, [r2, #0]
 8007b2e:	9b00      	ldr	r3, [sp, #0]
 8007b30:	b983      	cbnz	r3, 8007b54 <_dtoa_r+0x1cc>
 8007b32:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8007b36:	b96b      	cbnz	r3, 8007b54 <_dtoa_r+0x1cc>
 8007b38:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007b3a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8007bb0 <_dtoa_r+0x228>
 8007b3e:	2b00      	cmp	r3, #0
 8007b40:	f43f af61 	beq.w	8007a06 <_dtoa_r+0x7e>
 8007b44:	f10b 0308 	add.w	r3, fp, #8
 8007b48:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8007b4a:	4658      	mov	r0, fp
 8007b4c:	6013      	str	r3, [r2, #0]
 8007b4e:	b01b      	add	sp, #108	; 0x6c
 8007b50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b54:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007b56:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8007bb4 <_dtoa_r+0x22c>
 8007b5a:	2b00      	cmp	r3, #0
 8007b5c:	f43f af53 	beq.w	8007a06 <_dtoa_r+0x7e>
 8007b60:	f10b 0303 	add.w	r3, fp, #3
 8007b64:	e7f0      	b.n	8007b48 <_dtoa_r+0x1c0>
 8007b66:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8007b6a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8007b6e:	950f      	str	r5, [sp, #60]	; 0x3c
 8007b70:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8007b74:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8007b78:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8007b7a:	e76f      	b.n	8007a5c <_dtoa_r+0xd4>
 8007b7c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007bb8 <_dtoa_r+0x230>
 8007b80:	4658      	mov	r0, fp
 8007b82:	b01b      	add	sp, #108	; 0x6c
 8007b84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b88:	636f4361 	.word	0x636f4361
 8007b8c:	3fd287a7 	.word	0x3fd287a7
 8007b90:	8b60c8b3 	.word	0x8b60c8b3
 8007b94:	3fc68a28 	.word	0x3fc68a28
 8007b98:	509f79fb 	.word	0x509f79fb
 8007b9c:	3fd34413 	.word	0x3fd34413
 8007ba0:	7ff00000 	.word	0x7ff00000
 8007ba4:	0800abf9 	.word	0x0800abf9
 8007ba8:	3ff80000 	.word	0x3ff80000
 8007bac:	0800ac58 	.word	0x0800ac58
 8007bb0:	0800ac1c 	.word	0x0800ac1c
 8007bb4:	0800ac28 	.word	0x0800ac28
 8007bb8:	0800abf8 	.word	0x0800abf8
 8007bbc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8007bc0:	2501      	movs	r5, #1
 8007bc2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8007bc6:	2300      	movs	r3, #0
 8007bc8:	9302      	str	r3, [sp, #8]
 8007bca:	9307      	str	r3, [sp, #28]
 8007bcc:	2100      	movs	r1, #0
 8007bce:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007bd2:	940e      	str	r4, [sp, #56]	; 0x38
 8007bd4:	4648      	mov	r0, r9
 8007bd6:	f001 fdcd 	bl	8009774 <_Balloc>
 8007bda:	2c0e      	cmp	r4, #14
 8007bdc:	4683      	mov	fp, r0
 8007bde:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007be2:	f200 80fb 	bhi.w	8007ddc <_dtoa_r+0x454>
 8007be6:	2d00      	cmp	r5, #0
 8007be8:	f000 80f8 	beq.w	8007ddc <_dtoa_r+0x454>
 8007bec:	ed9d 7b00 	vldr	d7, [sp]
 8007bf0:	9906      	ldr	r1, [sp, #24]
 8007bf2:	2900      	cmp	r1, #0
 8007bf4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8007bf8:	f340 83e5 	ble.w	80083c6 <_dtoa_r+0xa3e>
 8007bfc:	4b9d      	ldr	r3, [pc, #628]	; (8007e74 <_dtoa_r+0x4ec>)
 8007bfe:	f001 020f 	and.w	r2, r1, #15
 8007c02:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007c06:	ed93 7b00 	vldr	d7, [r3]
 8007c0a:	110c      	asrs	r4, r1, #4
 8007c0c:	06e2      	lsls	r2, r4, #27
 8007c0e:	ed8d 7b00 	vstr	d7, [sp]
 8007c12:	f140 849e 	bpl.w	8008552 <_dtoa_r+0xbca>
 8007c16:	4b98      	ldr	r3, [pc, #608]	; (8007e78 <_dtoa_r+0x4f0>)
 8007c18:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007c1c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8007c20:	f7f8 fdd4 	bl	80007cc <__aeabi_ddiv>
 8007c24:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8007c28:	f004 040f 	and.w	r4, r4, #15
 8007c2c:	2603      	movs	r6, #3
 8007c2e:	b17c      	cbz	r4, 8007c50 <_dtoa_r+0x2c8>
 8007c30:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007c34:	4d90      	ldr	r5, [pc, #576]	; (8007e78 <_dtoa_r+0x4f0>)
 8007c36:	07e3      	lsls	r3, r4, #31
 8007c38:	d504      	bpl.n	8007c44 <_dtoa_r+0x2bc>
 8007c3a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007c3e:	f7f8 fc9b 	bl	8000578 <__aeabi_dmul>
 8007c42:	3601      	adds	r6, #1
 8007c44:	1064      	asrs	r4, r4, #1
 8007c46:	f105 0508 	add.w	r5, r5, #8
 8007c4a:	d1f4      	bne.n	8007c36 <_dtoa_r+0x2ae>
 8007c4c:	e9cd 0100 	strd	r0, r1, [sp]
 8007c50:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007c54:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007c58:	f7f8 fdb8 	bl	80007cc <__aeabi_ddiv>
 8007c5c:	e9cd 0100 	strd	r0, r1, [sp]
 8007c60:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007c62:	b143      	cbz	r3, 8007c76 <_dtoa_r+0x2ee>
 8007c64:	2200      	movs	r2, #0
 8007c66:	4b85      	ldr	r3, [pc, #532]	; (8007e7c <_dtoa_r+0x4f4>)
 8007c68:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007c6c:	f7f8 fef6 	bl	8000a5c <__aeabi_dcmplt>
 8007c70:	2800      	cmp	r0, #0
 8007c72:	f040 84ff 	bne.w	8008674 <_dtoa_r+0xcec>
 8007c76:	4630      	mov	r0, r6
 8007c78:	f7f8 fc14 	bl	80004a4 <__aeabi_i2d>
 8007c7c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007c80:	f7f8 fc7a 	bl	8000578 <__aeabi_dmul>
 8007c84:	4b7e      	ldr	r3, [pc, #504]	; (8007e80 <_dtoa_r+0x4f8>)
 8007c86:	2200      	movs	r2, #0
 8007c88:	f7f8 fac0 	bl	800020c <__adddf3>
 8007c8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c8e:	4606      	mov	r6, r0
 8007c90:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007c94:	2b00      	cmp	r3, #0
 8007c96:	f000 841c 	beq.w	80084d2 <_dtoa_r+0xb4a>
 8007c9a:	9b06      	ldr	r3, [sp, #24]
 8007c9c:	9316      	str	r3, [sp, #88]	; 0x58
 8007c9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007ca0:	9312      	str	r3, [sp, #72]	; 0x48
 8007ca2:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007ca6:	f7f8 ff17 	bl	8000ad8 <__aeabi_d2iz>
 8007caa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007cac:	4b71      	ldr	r3, [pc, #452]	; (8007e74 <_dtoa_r+0x4ec>)
 8007cae:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007cb2:	ed13 7b02 	vldr	d7, [r3, #-8]
 8007cb6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8007cba:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8007cbe:	f7f8 fbf1 	bl	80004a4 <__aeabi_i2d>
 8007cc2:	460b      	mov	r3, r1
 8007cc4:	4602      	mov	r2, r0
 8007cc6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007cca:	e9cd 6700 	strd	r6, r7, [sp]
 8007cce:	f7f8 fa9b 	bl	8000208 <__aeabi_dsub>
 8007cd2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007cd4:	b2ed      	uxtb	r5, r5
 8007cd6:	4606      	mov	r6, r0
 8007cd8:	460f      	mov	r7, r1
 8007cda:	f10b 0401 	add.w	r4, fp, #1
 8007cde:	2b00      	cmp	r3, #0
 8007ce0:	f000 8458 	beq.w	8008594 <_dtoa_r+0xc0c>
 8007ce4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007ce8:	2000      	movs	r0, #0
 8007cea:	4966      	ldr	r1, [pc, #408]	; (8007e84 <_dtoa_r+0x4fc>)
 8007cec:	f7f8 fd6e 	bl	80007cc <__aeabi_ddiv>
 8007cf0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007cf4:	f7f8 fa88 	bl	8000208 <__aeabi_dsub>
 8007cf8:	f88b 5000 	strb.w	r5, [fp]
 8007cfc:	4632      	mov	r2, r6
 8007cfe:	463b      	mov	r3, r7
 8007d00:	e9cd 0100 	strd	r0, r1, [sp]
 8007d04:	f7f8 fec8 	bl	8000a98 <__aeabi_dcmpgt>
 8007d08:	2800      	cmp	r0, #0
 8007d0a:	f040 8502 	bne.w	8008712 <_dtoa_r+0xd8a>
 8007d0e:	4632      	mov	r2, r6
 8007d10:	463b      	mov	r3, r7
 8007d12:	2000      	movs	r0, #0
 8007d14:	4959      	ldr	r1, [pc, #356]	; (8007e7c <_dtoa_r+0x4f4>)
 8007d16:	f7f8 fa77 	bl	8000208 <__aeabi_dsub>
 8007d1a:	4602      	mov	r2, r0
 8007d1c:	460b      	mov	r3, r1
 8007d1e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007d22:	f7f8 feb9 	bl	8000a98 <__aeabi_dcmpgt>
 8007d26:	2800      	cmp	r0, #0
 8007d28:	f040 84fb 	bne.w	8008722 <_dtoa_r+0xd9a>
 8007d2c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007d2e:	2a01      	cmp	r2, #1
 8007d30:	d050      	beq.n	8007dd4 <_dtoa_r+0x44c>
 8007d32:	445a      	add	r2, fp
 8007d34:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8007d38:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8007d3c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8007d40:	4692      	mov	sl, r2
 8007d42:	46cb      	mov	fp, r9
 8007d44:	e9dd 8900 	ldrd	r8, r9, [sp]
 8007d48:	e00c      	b.n	8007d64 <_dtoa_r+0x3dc>
 8007d4a:	2000      	movs	r0, #0
 8007d4c:	494b      	ldr	r1, [pc, #300]	; (8007e7c <_dtoa_r+0x4f4>)
 8007d4e:	f7f8 fa5b 	bl	8000208 <__aeabi_dsub>
 8007d52:	4642      	mov	r2, r8
 8007d54:	464b      	mov	r3, r9
 8007d56:	f7f8 fe81 	bl	8000a5c <__aeabi_dcmplt>
 8007d5a:	2800      	cmp	r0, #0
 8007d5c:	f040 84dc 	bne.w	8008718 <_dtoa_r+0xd90>
 8007d60:	4554      	cmp	r4, sl
 8007d62:	d030      	beq.n	8007dc6 <_dtoa_r+0x43e>
 8007d64:	4640      	mov	r0, r8
 8007d66:	4649      	mov	r1, r9
 8007d68:	2200      	movs	r2, #0
 8007d6a:	4b47      	ldr	r3, [pc, #284]	; (8007e88 <_dtoa_r+0x500>)
 8007d6c:	f7f8 fc04 	bl	8000578 <__aeabi_dmul>
 8007d70:	2200      	movs	r2, #0
 8007d72:	4b45      	ldr	r3, [pc, #276]	; (8007e88 <_dtoa_r+0x500>)
 8007d74:	4680      	mov	r8, r0
 8007d76:	4689      	mov	r9, r1
 8007d78:	4630      	mov	r0, r6
 8007d7a:	4639      	mov	r1, r7
 8007d7c:	f7f8 fbfc 	bl	8000578 <__aeabi_dmul>
 8007d80:	460f      	mov	r7, r1
 8007d82:	4606      	mov	r6, r0
 8007d84:	f7f8 fea8 	bl	8000ad8 <__aeabi_d2iz>
 8007d88:	4605      	mov	r5, r0
 8007d8a:	f7f8 fb8b 	bl	80004a4 <__aeabi_i2d>
 8007d8e:	4602      	mov	r2, r0
 8007d90:	460b      	mov	r3, r1
 8007d92:	4630      	mov	r0, r6
 8007d94:	4639      	mov	r1, r7
 8007d96:	f7f8 fa37 	bl	8000208 <__aeabi_dsub>
 8007d9a:	3530      	adds	r5, #48	; 0x30
 8007d9c:	b2ed      	uxtb	r5, r5
 8007d9e:	4642      	mov	r2, r8
 8007da0:	464b      	mov	r3, r9
 8007da2:	f804 5b01 	strb.w	r5, [r4], #1
 8007da6:	4606      	mov	r6, r0
 8007da8:	460f      	mov	r7, r1
 8007daa:	f7f8 fe57 	bl	8000a5c <__aeabi_dcmplt>
 8007dae:	4632      	mov	r2, r6
 8007db0:	463b      	mov	r3, r7
 8007db2:	2800      	cmp	r0, #0
 8007db4:	d0c9      	beq.n	8007d4a <_dtoa_r+0x3c2>
 8007db6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007db8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007dbc:	9306      	str	r3, [sp, #24]
 8007dbe:	46d9      	mov	r9, fp
 8007dc0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007dc4:	e236      	b.n	8008234 <_dtoa_r+0x8ac>
 8007dc6:	46d9      	mov	r9, fp
 8007dc8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007dcc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007dd0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007dd4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007dd8:	e9cd 3400 	strd	r3, r4, [sp]
 8007ddc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007dde:	2b00      	cmp	r3, #0
 8007de0:	f2c0 80ae 	blt.w	8007f40 <_dtoa_r+0x5b8>
 8007de4:	9a06      	ldr	r2, [sp, #24]
 8007de6:	2a0e      	cmp	r2, #14
 8007de8:	f300 80aa 	bgt.w	8007f40 <_dtoa_r+0x5b8>
 8007dec:	4b21      	ldr	r3, [pc, #132]	; (8007e74 <_dtoa_r+0x4ec>)
 8007dee:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007df2:	ed93 7b00 	vldr	d7, [r3]
 8007df6:	9b07      	ldr	r3, [sp, #28]
 8007df8:	2b00      	cmp	r3, #0
 8007dfa:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007dfe:	f2c0 82be 	blt.w	800837e <_dtoa_r+0x9f6>
 8007e02:	e9dd 6700 	ldrd	r6, r7, [sp]
 8007e06:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007e0a:	4630      	mov	r0, r6
 8007e0c:	4639      	mov	r1, r7
 8007e0e:	f7f8 fcdd 	bl	80007cc <__aeabi_ddiv>
 8007e12:	f7f8 fe61 	bl	8000ad8 <__aeabi_d2iz>
 8007e16:	4605      	mov	r5, r0
 8007e18:	f7f8 fb44 	bl	80004a4 <__aeabi_i2d>
 8007e1c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007e20:	f7f8 fbaa 	bl	8000578 <__aeabi_dmul>
 8007e24:	460b      	mov	r3, r1
 8007e26:	4602      	mov	r2, r0
 8007e28:	4639      	mov	r1, r7
 8007e2a:	4630      	mov	r0, r6
 8007e2c:	f7f8 f9ec 	bl	8000208 <__aeabi_dsub>
 8007e30:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8007e34:	f88b 3000 	strb.w	r3, [fp]
 8007e38:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007e3a:	2b01      	cmp	r3, #1
 8007e3c:	4606      	mov	r6, r0
 8007e3e:	460f      	mov	r7, r1
 8007e40:	f10b 0401 	add.w	r4, fp, #1
 8007e44:	d053      	beq.n	8007eee <_dtoa_r+0x566>
 8007e46:	2200      	movs	r2, #0
 8007e48:	4b0f      	ldr	r3, [pc, #60]	; (8007e88 <_dtoa_r+0x500>)
 8007e4a:	f7f8 fb95 	bl	8000578 <__aeabi_dmul>
 8007e4e:	2200      	movs	r2, #0
 8007e50:	2300      	movs	r3, #0
 8007e52:	4606      	mov	r6, r0
 8007e54:	460f      	mov	r7, r1
 8007e56:	f7f8 fdf7 	bl	8000a48 <__aeabi_dcmpeq>
 8007e5a:	2800      	cmp	r0, #0
 8007e5c:	f040 81ea 	bne.w	8008234 <_dtoa_r+0x8ac>
 8007e60:	f8cd a000 	str.w	sl, [sp]
 8007e64:	f8cd 901c 	str.w	r9, [sp, #28]
 8007e68:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007e6c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007e70:	e017      	b.n	8007ea2 <_dtoa_r+0x51a>
 8007e72:	bf00      	nop
 8007e74:	0800ac58 	.word	0x0800ac58
 8007e78:	0800ac30 	.word	0x0800ac30
 8007e7c:	3ff00000 	.word	0x3ff00000
 8007e80:	401c0000 	.word	0x401c0000
 8007e84:	3fe00000 	.word	0x3fe00000
 8007e88:	40240000 	.word	0x40240000
 8007e8c:	f7f8 fb74 	bl	8000578 <__aeabi_dmul>
 8007e90:	2200      	movs	r2, #0
 8007e92:	2300      	movs	r3, #0
 8007e94:	4606      	mov	r6, r0
 8007e96:	460f      	mov	r7, r1
 8007e98:	f7f8 fdd6 	bl	8000a48 <__aeabi_dcmpeq>
 8007e9c:	2800      	cmp	r0, #0
 8007e9e:	f040 833d 	bne.w	800851c <_dtoa_r+0xb94>
 8007ea2:	464a      	mov	r2, r9
 8007ea4:	4653      	mov	r3, sl
 8007ea6:	4630      	mov	r0, r6
 8007ea8:	4639      	mov	r1, r7
 8007eaa:	f7f8 fc8f 	bl	80007cc <__aeabi_ddiv>
 8007eae:	f7f8 fe13 	bl	8000ad8 <__aeabi_d2iz>
 8007eb2:	4605      	mov	r5, r0
 8007eb4:	f7f8 faf6 	bl	80004a4 <__aeabi_i2d>
 8007eb8:	464a      	mov	r2, r9
 8007eba:	4653      	mov	r3, sl
 8007ebc:	f7f8 fb5c 	bl	8000578 <__aeabi_dmul>
 8007ec0:	4602      	mov	r2, r0
 8007ec2:	460b      	mov	r3, r1
 8007ec4:	4630      	mov	r0, r6
 8007ec6:	4639      	mov	r1, r7
 8007ec8:	f7f8 f99e 	bl	8000208 <__aeabi_dsub>
 8007ecc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007ed0:	f804 cb01 	strb.w	ip, [r4], #1
 8007ed4:	eba4 0c0b 	sub.w	ip, r4, fp
 8007ed8:	45e0      	cmp	r8, ip
 8007eda:	4606      	mov	r6, r0
 8007edc:	460f      	mov	r7, r1
 8007ede:	f04f 0200 	mov.w	r2, #0
 8007ee2:	4bc1      	ldr	r3, [pc, #772]	; (80081e8 <_dtoa_r+0x860>)
 8007ee4:	d1d2      	bne.n	8007e8c <_dtoa_r+0x504>
 8007ee6:	f8dd a000 	ldr.w	sl, [sp]
 8007eea:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007eee:	4632      	mov	r2, r6
 8007ef0:	463b      	mov	r3, r7
 8007ef2:	4630      	mov	r0, r6
 8007ef4:	4639      	mov	r1, r7
 8007ef6:	f7f8 f989 	bl	800020c <__adddf3>
 8007efa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007efe:	4606      	mov	r6, r0
 8007f00:	460f      	mov	r7, r1
 8007f02:	f7f8 fdc9 	bl	8000a98 <__aeabi_dcmpgt>
 8007f06:	b958      	cbnz	r0, 8007f20 <_dtoa_r+0x598>
 8007f08:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007f0c:	4630      	mov	r0, r6
 8007f0e:	4639      	mov	r1, r7
 8007f10:	f7f8 fd9a 	bl	8000a48 <__aeabi_dcmpeq>
 8007f14:	2800      	cmp	r0, #0
 8007f16:	f000 818d 	beq.w	8008234 <_dtoa_r+0x8ac>
 8007f1a:	07e9      	lsls	r1, r5, #31
 8007f1c:	f140 818a 	bpl.w	8008234 <_dtoa_r+0x8ac>
 8007f20:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007f24:	e005      	b.n	8007f32 <_dtoa_r+0x5aa>
 8007f26:	459b      	cmp	fp, r3
 8007f28:	f000 8373 	beq.w	8008612 <_dtoa_r+0xc8a>
 8007f2c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8007f30:	461c      	mov	r4, r3
 8007f32:	2d39      	cmp	r5, #57	; 0x39
 8007f34:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007f38:	d0f5      	beq.n	8007f26 <_dtoa_r+0x59e>
 8007f3a:	3501      	adds	r5, #1
 8007f3c:	701d      	strb	r5, [r3, #0]
 8007f3e:	e179      	b.n	8008234 <_dtoa_r+0x8ac>
 8007f40:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007f42:	2a00      	cmp	r2, #0
 8007f44:	d03b      	beq.n	8007fbe <_dtoa_r+0x636>
 8007f46:	9a02      	ldr	r2, [sp, #8]
 8007f48:	2a01      	cmp	r2, #1
 8007f4a:	f340 820b 	ble.w	8008364 <_dtoa_r+0x9dc>
 8007f4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007f50:	1e5f      	subs	r7, r3, #1
 8007f52:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007f54:	42bb      	cmp	r3, r7
 8007f56:	f2c0 82e6 	blt.w	8008526 <_dtoa_r+0xb9e>
 8007f5a:	1bdf      	subs	r7, r3, r7
 8007f5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007f5e:	2b00      	cmp	r3, #0
 8007f60:	f2c0 830b 	blt.w	800857a <_dtoa_r+0xbf2>
 8007f64:	9a08      	ldr	r2, [sp, #32]
 8007f66:	4614      	mov	r4, r2
 8007f68:	441a      	add	r2, r3
 8007f6a:	4498      	add	r8, r3
 8007f6c:	9208      	str	r2, [sp, #32]
 8007f6e:	2101      	movs	r1, #1
 8007f70:	4648      	mov	r0, r9
 8007f72:	f001 fcbf 	bl	80098f4 <__i2b>
 8007f76:	4605      	mov	r5, r0
 8007f78:	e024      	b.n	8007fc4 <_dtoa_r+0x63c>
 8007f7a:	2301      	movs	r3, #1
 8007f7c:	930d      	str	r3, [sp, #52]	; 0x34
 8007f7e:	e5af      	b.n	8007ae0 <_dtoa_r+0x158>
 8007f80:	9a08      	ldr	r2, [sp, #32]
 8007f82:	9b06      	ldr	r3, [sp, #24]
 8007f84:	1ad2      	subs	r2, r2, r3
 8007f86:	425b      	negs	r3, r3
 8007f88:	930b      	str	r3, [sp, #44]	; 0x2c
 8007f8a:	2300      	movs	r3, #0
 8007f8c:	9208      	str	r2, [sp, #32]
 8007f8e:	930c      	str	r3, [sp, #48]	; 0x30
 8007f90:	e5b5      	b.n	8007afe <_dtoa_r+0x176>
 8007f92:	f1c4 0301 	rsb	r3, r4, #1
 8007f96:	9308      	str	r3, [sp, #32]
 8007f98:	f04f 0800 	mov.w	r8, #0
 8007f9c:	e5a7      	b.n	8007aee <_dtoa_r+0x166>
 8007f9e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8007fa2:	4640      	mov	r0, r8
 8007fa4:	f7f8 fa7e 	bl	80004a4 <__aeabi_i2d>
 8007fa8:	4632      	mov	r2, r6
 8007faa:	463b      	mov	r3, r7
 8007fac:	f7f8 fd4c 	bl	8000a48 <__aeabi_dcmpeq>
 8007fb0:	2800      	cmp	r0, #0
 8007fb2:	f47f ad81 	bne.w	8007ab8 <_dtoa_r+0x130>
 8007fb6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007fba:	9306      	str	r3, [sp, #24]
 8007fbc:	e57c      	b.n	8007ab8 <_dtoa_r+0x130>
 8007fbe:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007fc0:	9c08      	ldr	r4, [sp, #32]
 8007fc2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007fc4:	2c00      	cmp	r4, #0
 8007fc6:	dd0c      	ble.n	8007fe2 <_dtoa_r+0x65a>
 8007fc8:	f1b8 0f00 	cmp.w	r8, #0
 8007fcc:	dd09      	ble.n	8007fe2 <_dtoa_r+0x65a>
 8007fce:	4544      	cmp	r4, r8
 8007fd0:	9a08      	ldr	r2, [sp, #32]
 8007fd2:	4623      	mov	r3, r4
 8007fd4:	bfa8      	it	ge
 8007fd6:	4643      	movge	r3, r8
 8007fd8:	1ad2      	subs	r2, r2, r3
 8007fda:	9208      	str	r2, [sp, #32]
 8007fdc:	1ae4      	subs	r4, r4, r3
 8007fde:	eba8 0803 	sub.w	r8, r8, r3
 8007fe2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007fe4:	b16b      	cbz	r3, 8008002 <_dtoa_r+0x67a>
 8007fe6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007fe8:	2a00      	cmp	r2, #0
 8007fea:	f000 8290 	beq.w	800850e <_dtoa_r+0xb86>
 8007fee:	1bde      	subs	r6, r3, r7
 8007ff0:	2f00      	cmp	r7, #0
 8007ff2:	f040 819b 	bne.w	800832c <_dtoa_r+0x9a4>
 8007ff6:	4651      	mov	r1, sl
 8007ff8:	4632      	mov	r2, r6
 8007ffa:	4648      	mov	r0, r9
 8007ffc:	f001 fd2a 	bl	8009a54 <__pow5mult>
 8008000:	4682      	mov	sl, r0
 8008002:	2101      	movs	r1, #1
 8008004:	4648      	mov	r0, r9
 8008006:	f001 fc75 	bl	80098f4 <__i2b>
 800800a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800800c:	4606      	mov	r6, r0
 800800e:	2a00      	cmp	r2, #0
 8008010:	f040 8125 	bne.w	800825e <_dtoa_r+0x8d6>
 8008014:	9b02      	ldr	r3, [sp, #8]
 8008016:	2b01      	cmp	r3, #1
 8008018:	f340 816c 	ble.w	80082f4 <_dtoa_r+0x96c>
 800801c:	2001      	movs	r0, #1
 800801e:	4440      	add	r0, r8
 8008020:	f010 001f 	ands.w	r0, r0, #31
 8008024:	f000 8119 	beq.w	800825a <_dtoa_r+0x8d2>
 8008028:	f1c0 0320 	rsb	r3, r0, #32
 800802c:	2b04      	cmp	r3, #4
 800802e:	f340 83ac 	ble.w	800878a <_dtoa_r+0xe02>
 8008032:	f1c0 001c 	rsb	r0, r0, #28
 8008036:	9b08      	ldr	r3, [sp, #32]
 8008038:	4403      	add	r3, r0
 800803a:	9308      	str	r3, [sp, #32]
 800803c:	4404      	add	r4, r0
 800803e:	4480      	add	r8, r0
 8008040:	9b08      	ldr	r3, [sp, #32]
 8008042:	2b00      	cmp	r3, #0
 8008044:	dd05      	ble.n	8008052 <_dtoa_r+0x6ca>
 8008046:	4651      	mov	r1, sl
 8008048:	461a      	mov	r2, r3
 800804a:	4648      	mov	r0, r9
 800804c:	f001 fd52 	bl	8009af4 <__lshift>
 8008050:	4682      	mov	sl, r0
 8008052:	f1b8 0f00 	cmp.w	r8, #0
 8008056:	dd05      	ble.n	8008064 <_dtoa_r+0x6dc>
 8008058:	4631      	mov	r1, r6
 800805a:	4642      	mov	r2, r8
 800805c:	4648      	mov	r0, r9
 800805e:	f001 fd49 	bl	8009af4 <__lshift>
 8008062:	4606      	mov	r6, r0
 8008064:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8008066:	2b00      	cmp	r3, #0
 8008068:	d177      	bne.n	800815a <_dtoa_r+0x7d2>
 800806a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800806c:	2b00      	cmp	r3, #0
 800806e:	f340 8209 	ble.w	8008484 <_dtoa_r+0xafc>
 8008072:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008074:	2b00      	cmp	r3, #0
 8008076:	f000 8089 	beq.w	800818c <_dtoa_r+0x804>
 800807a:	2c00      	cmp	r4, #0
 800807c:	f300 816b 	bgt.w	8008356 <_dtoa_r+0x9ce>
 8008080:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8008082:	2b00      	cmp	r3, #0
 8008084:	f040 81cd 	bne.w	8008422 <_dtoa_r+0xa9a>
 8008088:	46a8      	mov	r8, r5
 800808a:	9a00      	ldr	r2, [sp, #0]
 800808c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8008090:	f002 0201 	and.w	r2, r2, #1
 8008094:	920a      	str	r2, [sp, #40]	; 0x28
 8008096:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8008098:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800809c:	441a      	add	r2, r3
 800809e:	465f      	mov	r7, fp
 80080a0:	9209      	str	r2, [sp, #36]	; 0x24
 80080a2:	46b3      	mov	fp, r6
 80080a4:	4659      	mov	r1, fp
 80080a6:	4650      	mov	r0, sl
 80080a8:	f7ff fbdc 	bl	8007864 <quorem>
 80080ac:	4629      	mov	r1, r5
 80080ae:	4604      	mov	r4, r0
 80080b0:	4650      	mov	r0, sl
 80080b2:	f001 fd75 	bl	8009ba0 <__mcmp>
 80080b6:	4659      	mov	r1, fp
 80080b8:	4606      	mov	r6, r0
 80080ba:	4642      	mov	r2, r8
 80080bc:	4648      	mov	r0, r9
 80080be:	f001 fd8b 	bl	8009bd8 <__mdiff>
 80080c2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80080c6:	9300      	str	r3, [sp, #0]
 80080c8:	68c3      	ldr	r3, [r0, #12]
 80080ca:	4601      	mov	r1, r0
 80080cc:	2b00      	cmp	r3, #0
 80080ce:	f040 81d4 	bne.w	800847a <_dtoa_r+0xaf2>
 80080d2:	9008      	str	r0, [sp, #32]
 80080d4:	4650      	mov	r0, sl
 80080d6:	f001 fd63 	bl	8009ba0 <__mcmp>
 80080da:	9a08      	ldr	r2, [sp, #32]
 80080dc:	9007      	str	r0, [sp, #28]
 80080de:	4611      	mov	r1, r2
 80080e0:	4648      	mov	r0, r9
 80080e2:	f001 fb6d 	bl	80097c0 <_Bfree>
 80080e6:	9b07      	ldr	r3, [sp, #28]
 80080e8:	b933      	cbnz	r3, 80080f8 <_dtoa_r+0x770>
 80080ea:	9a02      	ldr	r2, [sp, #8]
 80080ec:	b922      	cbnz	r2, 80080f8 <_dtoa_r+0x770>
 80080ee:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80080f0:	2b00      	cmp	r3, #0
 80080f2:	f000 8319 	beq.w	8008728 <_dtoa_r+0xda0>
 80080f6:	9b02      	ldr	r3, [sp, #8]
 80080f8:	2e00      	cmp	r6, #0
 80080fa:	f2c0 821c 	blt.w	8008536 <_dtoa_r+0xbae>
 80080fe:	d105      	bne.n	800810c <_dtoa_r+0x784>
 8008100:	9a02      	ldr	r2, [sp, #8]
 8008102:	b91a      	cbnz	r2, 800810c <_dtoa_r+0x784>
 8008104:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8008106:	2a00      	cmp	r2, #0
 8008108:	f000 8215 	beq.w	8008536 <_dtoa_r+0xbae>
 800810c:	2b00      	cmp	r3, #0
 800810e:	f107 0401 	add.w	r4, r7, #1
 8008112:	f300 8225 	bgt.w	8008560 <_dtoa_r+0xbd8>
 8008116:	9b00      	ldr	r3, [sp, #0]
 8008118:	703b      	strb	r3, [r7, #0]
 800811a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800811c:	42bb      	cmp	r3, r7
 800811e:	f000 8230 	beq.w	8008582 <_dtoa_r+0xbfa>
 8008122:	4651      	mov	r1, sl
 8008124:	2300      	movs	r3, #0
 8008126:	220a      	movs	r2, #10
 8008128:	4648      	mov	r0, r9
 800812a:	f001 fb53 	bl	80097d4 <__multadd>
 800812e:	4545      	cmp	r5, r8
 8008130:	4682      	mov	sl, r0
 8008132:	4629      	mov	r1, r5
 8008134:	f04f 0300 	mov.w	r3, #0
 8008138:	f04f 020a 	mov.w	r2, #10
 800813c:	4648      	mov	r0, r9
 800813e:	f000 8196 	beq.w	800846e <_dtoa_r+0xae6>
 8008142:	f001 fb47 	bl	80097d4 <__multadd>
 8008146:	4641      	mov	r1, r8
 8008148:	4605      	mov	r5, r0
 800814a:	2300      	movs	r3, #0
 800814c:	220a      	movs	r2, #10
 800814e:	4648      	mov	r0, r9
 8008150:	f001 fb40 	bl	80097d4 <__multadd>
 8008154:	4627      	mov	r7, r4
 8008156:	4680      	mov	r8, r0
 8008158:	e7a4      	b.n	80080a4 <_dtoa_r+0x71c>
 800815a:	4631      	mov	r1, r6
 800815c:	4650      	mov	r0, sl
 800815e:	f001 fd1f 	bl	8009ba0 <__mcmp>
 8008162:	2800      	cmp	r0, #0
 8008164:	da81      	bge.n	800806a <_dtoa_r+0x6e2>
 8008166:	9f06      	ldr	r7, [sp, #24]
 8008168:	4651      	mov	r1, sl
 800816a:	2300      	movs	r3, #0
 800816c:	220a      	movs	r2, #10
 800816e:	4648      	mov	r0, r9
 8008170:	3f01      	subs	r7, #1
 8008172:	9706      	str	r7, [sp, #24]
 8008174:	f001 fb2e 	bl	80097d4 <__multadd>
 8008178:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800817a:	4682      	mov	sl, r0
 800817c:	2b00      	cmp	r3, #0
 800817e:	f040 82eb 	bne.w	8008758 <_dtoa_r+0xdd0>
 8008182:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008184:	2b00      	cmp	r3, #0
 8008186:	f340 82f3 	ble.w	8008770 <_dtoa_r+0xde8>
 800818a:	9309      	str	r3, [sp, #36]	; 0x24
 800818c:	465c      	mov	r4, fp
 800818e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8008192:	e002      	b.n	800819a <_dtoa_r+0x812>
 8008194:	f001 fb1e 	bl	80097d4 <__multadd>
 8008198:	4682      	mov	sl, r0
 800819a:	4631      	mov	r1, r6
 800819c:	4650      	mov	r0, sl
 800819e:	f7ff fb61 	bl	8007864 <quorem>
 80081a2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80081a6:	f804 7b01 	strb.w	r7, [r4], #1
 80081aa:	eba4 030b 	sub.w	r3, r4, fp
 80081ae:	4598      	cmp	r8, r3
 80081b0:	f04f 020a 	mov.w	r2, #10
 80081b4:	f04f 0300 	mov.w	r3, #0
 80081b8:	4651      	mov	r1, sl
 80081ba:	4648      	mov	r0, r9
 80081bc:	dcea      	bgt.n	8008194 <_dtoa_r+0x80c>
 80081be:	2300      	movs	r3, #0
 80081c0:	9700      	str	r7, [sp, #0]
 80081c2:	9302      	str	r3, [sp, #8]
 80081c4:	4651      	mov	r1, sl
 80081c6:	2201      	movs	r2, #1
 80081c8:	4648      	mov	r0, r9
 80081ca:	f001 fc93 	bl	8009af4 <__lshift>
 80081ce:	4631      	mov	r1, r6
 80081d0:	4682      	mov	sl, r0
 80081d2:	f001 fce5 	bl	8009ba0 <__mcmp>
 80081d6:	2800      	cmp	r0, #0
 80081d8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80081dc:	dc14      	bgt.n	8008208 <_dtoa_r+0x880>
 80081de:	d108      	bne.n	80081f2 <_dtoa_r+0x86a>
 80081e0:	9b00      	ldr	r3, [sp, #0]
 80081e2:	07db      	lsls	r3, r3, #31
 80081e4:	d410      	bmi.n	8008208 <_dtoa_r+0x880>
 80081e6:	e004      	b.n	80081f2 <_dtoa_r+0x86a>
 80081e8:	40240000 	.word	0x40240000
 80081ec:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80081f0:	461c      	mov	r4, r3
 80081f2:	2a30      	cmp	r2, #48	; 0x30
 80081f4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80081f8:	d0f8      	beq.n	80081ec <_dtoa_r+0x864>
 80081fa:	e00b      	b.n	8008214 <_dtoa_r+0x88c>
 80081fc:	459b      	cmp	fp, r3
 80081fe:	f000 814e 	beq.w	800849e <_dtoa_r+0xb16>
 8008202:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8008206:	461c      	mov	r4, r3
 8008208:	2a39      	cmp	r2, #57	; 0x39
 800820a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800820e:	d0f5      	beq.n	80081fc <_dtoa_r+0x874>
 8008210:	3201      	adds	r2, #1
 8008212:	701a      	strb	r2, [r3, #0]
 8008214:	4631      	mov	r1, r6
 8008216:	4648      	mov	r0, r9
 8008218:	f001 fad2 	bl	80097c0 <_Bfree>
 800821c:	b155      	cbz	r5, 8008234 <_dtoa_r+0x8ac>
 800821e:	9902      	ldr	r1, [sp, #8]
 8008220:	b121      	cbz	r1, 800822c <_dtoa_r+0x8a4>
 8008222:	42a9      	cmp	r1, r5
 8008224:	d002      	beq.n	800822c <_dtoa_r+0x8a4>
 8008226:	4648      	mov	r0, r9
 8008228:	f001 faca 	bl	80097c0 <_Bfree>
 800822c:	4629      	mov	r1, r5
 800822e:	4648      	mov	r0, r9
 8008230:	f001 fac6 	bl	80097c0 <_Bfree>
 8008234:	4651      	mov	r1, sl
 8008236:	4648      	mov	r0, r9
 8008238:	f001 fac2 	bl	80097c0 <_Bfree>
 800823c:	2200      	movs	r2, #0
 800823e:	9b06      	ldr	r3, [sp, #24]
 8008240:	7022      	strb	r2, [r4, #0]
 8008242:	9a05      	ldr	r2, [sp, #20]
 8008244:	3301      	adds	r3, #1
 8008246:	6013      	str	r3, [r2, #0]
 8008248:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800824a:	2b00      	cmp	r3, #0
 800824c:	f43f abdb 	beq.w	8007a06 <_dtoa_r+0x7e>
 8008250:	4658      	mov	r0, fp
 8008252:	601c      	str	r4, [r3, #0]
 8008254:	b01b      	add	sp, #108	; 0x6c
 8008256:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800825a:	201c      	movs	r0, #28
 800825c:	e6eb      	b.n	8008036 <_dtoa_r+0x6ae>
 800825e:	4601      	mov	r1, r0
 8008260:	4648      	mov	r0, r9
 8008262:	f001 fbf7 	bl	8009a54 <__pow5mult>
 8008266:	9b02      	ldr	r3, [sp, #8]
 8008268:	2b01      	cmp	r3, #1
 800826a:	4606      	mov	r6, r0
 800826c:	f340 80d4 	ble.w	8008418 <_dtoa_r+0xa90>
 8008270:	2300      	movs	r3, #0
 8008272:	930c      	str	r3, [sp, #48]	; 0x30
 8008274:	6933      	ldr	r3, [r6, #16]
 8008276:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800827a:	6918      	ldr	r0, [r3, #16]
 800827c:	f001 faea 	bl	8009854 <__hi0bits>
 8008280:	f1c0 0020 	rsb	r0, r0, #32
 8008284:	e6cb      	b.n	800801e <_dtoa_r+0x696>
 8008286:	900d      	str	r0, [sp, #52]	; 0x34
 8008288:	e42a      	b.n	8007ae0 <_dtoa_r+0x158>
 800828a:	2501      	movs	r5, #1
 800828c:	e440      	b.n	8007b10 <_dtoa_r+0x188>
 800828e:	f1c3 0820 	rsb	r8, r3, #32
 8008292:	9b00      	ldr	r3, [sp, #0]
 8008294:	fa03 f008 	lsl.w	r0, r3, r8
 8008298:	f7ff bbd8 	b.w	8007a4c <_dtoa_r+0xc4>
 800829c:	2300      	movs	r3, #0
 800829e:	930a      	str	r3, [sp, #40]	; 0x28
 80082a0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80082a4:	4413      	add	r3, r2
 80082a6:	930e      	str	r3, [sp, #56]	; 0x38
 80082a8:	3301      	adds	r3, #1
 80082aa:	2b01      	cmp	r3, #1
 80082ac:	461e      	mov	r6, r3
 80082ae:	9309      	str	r3, [sp, #36]	; 0x24
 80082b0:	bfb8      	it	lt
 80082b2:	2601      	movlt	r6, #1
 80082b4:	2100      	movs	r1, #0
 80082b6:	2e17      	cmp	r6, #23
 80082b8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80082bc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80082be:	f77f ac89 	ble.w	8007bd4 <_dtoa_r+0x24c>
 80082c2:	2201      	movs	r2, #1
 80082c4:	2304      	movs	r3, #4
 80082c6:	005b      	lsls	r3, r3, #1
 80082c8:	f103 0014 	add.w	r0, r3, #20
 80082cc:	42b0      	cmp	r0, r6
 80082ce:	4611      	mov	r1, r2
 80082d0:	f102 0201 	add.w	r2, r2, #1
 80082d4:	d9f7      	bls.n	80082c6 <_dtoa_r+0x93e>
 80082d6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80082da:	e47b      	b.n	8007bd4 <_dtoa_r+0x24c>
 80082dc:	2300      	movs	r3, #0
 80082de:	930a      	str	r3, [sp, #40]	; 0x28
 80082e0:	9e07      	ldr	r6, [sp, #28]
 80082e2:	2e00      	cmp	r6, #0
 80082e4:	f340 80e2 	ble.w	80084ac <_dtoa_r+0xb24>
 80082e8:	960e      	str	r6, [sp, #56]	; 0x38
 80082ea:	9609      	str	r6, [sp, #36]	; 0x24
 80082ec:	e7e2      	b.n	80082b4 <_dtoa_r+0x92c>
 80082ee:	2301      	movs	r3, #1
 80082f0:	930a      	str	r3, [sp, #40]	; 0x28
 80082f2:	e7f5      	b.n	80082e0 <_dtoa_r+0x958>
 80082f4:	9b00      	ldr	r3, [sp, #0]
 80082f6:	2b00      	cmp	r3, #0
 80082f8:	f47f ae90 	bne.w	800801c <_dtoa_r+0x694>
 80082fc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8008300:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8008304:	2b00      	cmp	r3, #0
 8008306:	f040 8192 	bne.w	800862e <_dtoa_r+0xca6>
 800830a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800830e:	0d1b      	lsrs	r3, r3, #20
 8008310:	051b      	lsls	r3, r3, #20
 8008312:	b12b      	cbz	r3, 8008320 <_dtoa_r+0x998>
 8008314:	9b08      	ldr	r3, [sp, #32]
 8008316:	3301      	adds	r3, #1
 8008318:	9308      	str	r3, [sp, #32]
 800831a:	f108 0801 	add.w	r8, r8, #1
 800831e:	2301      	movs	r3, #1
 8008320:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8008322:	930c      	str	r3, [sp, #48]	; 0x30
 8008324:	2a00      	cmp	r2, #0
 8008326:	f43f ae79 	beq.w	800801c <_dtoa_r+0x694>
 800832a:	e7a3      	b.n	8008274 <_dtoa_r+0x8ec>
 800832c:	463a      	mov	r2, r7
 800832e:	4629      	mov	r1, r5
 8008330:	4648      	mov	r0, r9
 8008332:	f001 fb8f 	bl	8009a54 <__pow5mult>
 8008336:	4652      	mov	r2, sl
 8008338:	4601      	mov	r1, r0
 800833a:	4605      	mov	r5, r0
 800833c:	4648      	mov	r0, r9
 800833e:	f001 fae3 	bl	8009908 <__multiply>
 8008342:	4651      	mov	r1, sl
 8008344:	4607      	mov	r7, r0
 8008346:	4648      	mov	r0, r9
 8008348:	f001 fa3a 	bl	80097c0 <_Bfree>
 800834c:	46ba      	mov	sl, r7
 800834e:	2e00      	cmp	r6, #0
 8008350:	f43f ae57 	beq.w	8008002 <_dtoa_r+0x67a>
 8008354:	e64f      	b.n	8007ff6 <_dtoa_r+0x66e>
 8008356:	4629      	mov	r1, r5
 8008358:	4622      	mov	r2, r4
 800835a:	4648      	mov	r0, r9
 800835c:	f001 fbca 	bl	8009af4 <__lshift>
 8008360:	4605      	mov	r5, r0
 8008362:	e68d      	b.n	8008080 <_dtoa_r+0x6f8>
 8008364:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8008366:	2a00      	cmp	r2, #0
 8008368:	f000 815d 	beq.w	8008626 <_dtoa_r+0xc9e>
 800836c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8008370:	9a08      	ldr	r2, [sp, #32]
 8008372:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8008374:	4614      	mov	r4, r2
 8008376:	441a      	add	r2, r3
 8008378:	4498      	add	r8, r3
 800837a:	9208      	str	r2, [sp, #32]
 800837c:	e5f7      	b.n	8007f6e <_dtoa_r+0x5e6>
 800837e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008380:	2b00      	cmp	r3, #0
 8008382:	f73f ad3e 	bgt.w	8007e02 <_dtoa_r+0x47a>
 8008386:	f040 80bc 	bne.w	8008502 <_dtoa_r+0xb7a>
 800838a:	ec51 0b17 	vmov	r0, r1, d7
 800838e:	2200      	movs	r2, #0
 8008390:	4bb2      	ldr	r3, [pc, #712]	; (800865c <_dtoa_r+0xcd4>)
 8008392:	f7f8 f8f1 	bl	8000578 <__aeabi_dmul>
 8008396:	e9dd 2300 	ldrd	r2, r3, [sp]
 800839a:	f7f8 fb73 	bl	8000a84 <__aeabi_dcmpge>
 800839e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80083a0:	4635      	mov	r5, r6
 80083a2:	2800      	cmp	r0, #0
 80083a4:	d176      	bne.n	8008494 <_dtoa_r+0xb0c>
 80083a6:	9a06      	ldr	r2, [sp, #24]
 80083a8:	2331      	movs	r3, #49	; 0x31
 80083aa:	3201      	adds	r2, #1
 80083ac:	9206      	str	r2, [sp, #24]
 80083ae:	f88b 3000 	strb.w	r3, [fp]
 80083b2:	f10b 0401 	add.w	r4, fp, #1
 80083b6:	4631      	mov	r1, r6
 80083b8:	4648      	mov	r0, r9
 80083ba:	f001 fa01 	bl	80097c0 <_Bfree>
 80083be:	2d00      	cmp	r5, #0
 80083c0:	f47f af34 	bne.w	800822c <_dtoa_r+0x8a4>
 80083c4:	e736      	b.n	8008234 <_dtoa_r+0x8ac>
 80083c6:	f000 8142 	beq.w	800864e <_dtoa_r+0xcc6>
 80083ca:	9b06      	ldr	r3, [sp, #24]
 80083cc:	425c      	negs	r4, r3
 80083ce:	4ba4      	ldr	r3, [pc, #656]	; (8008660 <_dtoa_r+0xcd8>)
 80083d0:	f004 020f 	and.w	r2, r4, #15
 80083d4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80083d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80083dc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80083e0:	f7f8 f8ca 	bl	8000578 <__aeabi_dmul>
 80083e4:	1124      	asrs	r4, r4, #4
 80083e6:	e9cd 0100 	strd	r0, r1, [sp]
 80083ea:	f000 81c6 	beq.w	800877a <_dtoa_r+0xdf2>
 80083ee:	4d9d      	ldr	r5, [pc, #628]	; (8008664 <_dtoa_r+0xcdc>)
 80083f0:	2300      	movs	r3, #0
 80083f2:	2602      	movs	r6, #2
 80083f4:	07e7      	lsls	r7, r4, #31
 80083f6:	d505      	bpl.n	8008404 <_dtoa_r+0xa7c>
 80083f8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80083fc:	f7f8 f8bc 	bl	8000578 <__aeabi_dmul>
 8008400:	3601      	adds	r6, #1
 8008402:	2301      	movs	r3, #1
 8008404:	1064      	asrs	r4, r4, #1
 8008406:	f105 0508 	add.w	r5, r5, #8
 800840a:	d1f3      	bne.n	80083f4 <_dtoa_r+0xa6c>
 800840c:	2b00      	cmp	r3, #0
 800840e:	f43f ac27 	beq.w	8007c60 <_dtoa_r+0x2d8>
 8008412:	e9cd 0100 	strd	r0, r1, [sp]
 8008416:	e423      	b.n	8007c60 <_dtoa_r+0x2d8>
 8008418:	9b00      	ldr	r3, [sp, #0]
 800841a:	2b00      	cmp	r3, #0
 800841c:	f43f af6e 	beq.w	80082fc <_dtoa_r+0x974>
 8008420:	e726      	b.n	8008270 <_dtoa_r+0x8e8>
 8008422:	6869      	ldr	r1, [r5, #4]
 8008424:	4648      	mov	r0, r9
 8008426:	f001 f9a5 	bl	8009774 <_Balloc>
 800842a:	692b      	ldr	r3, [r5, #16]
 800842c:	3302      	adds	r3, #2
 800842e:	009a      	lsls	r2, r3, #2
 8008430:	4604      	mov	r4, r0
 8008432:	f105 010c 	add.w	r1, r5, #12
 8008436:	300c      	adds	r0, #12
 8008438:	f7f8 fd44 	bl	8000ec4 <memcpy>
 800843c:	4621      	mov	r1, r4
 800843e:	2201      	movs	r2, #1
 8008440:	4648      	mov	r0, r9
 8008442:	f001 fb57 	bl	8009af4 <__lshift>
 8008446:	4680      	mov	r8, r0
 8008448:	e61f      	b.n	800808a <_dtoa_r+0x702>
 800844a:	2400      	movs	r4, #0
 800844c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8008450:	4621      	mov	r1, r4
 8008452:	4648      	mov	r0, r9
 8008454:	f001 f98e 	bl	8009774 <_Balloc>
 8008458:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800845c:	930e      	str	r3, [sp, #56]	; 0x38
 800845e:	9309      	str	r3, [sp, #36]	; 0x24
 8008460:	2301      	movs	r3, #1
 8008462:	4683      	mov	fp, r0
 8008464:	9407      	str	r4, [sp, #28]
 8008466:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800846a:	930a      	str	r3, [sp, #40]	; 0x28
 800846c:	e4b6      	b.n	8007ddc <_dtoa_r+0x454>
 800846e:	f001 f9b1 	bl	80097d4 <__multadd>
 8008472:	4627      	mov	r7, r4
 8008474:	4605      	mov	r5, r0
 8008476:	4680      	mov	r8, r0
 8008478:	e614      	b.n	80080a4 <_dtoa_r+0x71c>
 800847a:	4648      	mov	r0, r9
 800847c:	f001 f9a0 	bl	80097c0 <_Bfree>
 8008480:	2301      	movs	r3, #1
 8008482:	e639      	b.n	80080f8 <_dtoa_r+0x770>
 8008484:	9b02      	ldr	r3, [sp, #8]
 8008486:	2b02      	cmp	r3, #2
 8008488:	f77f adf3 	ble.w	8008072 <_dtoa_r+0x6ea>
 800848c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800848e:	2b00      	cmp	r3, #0
 8008490:	f000 80cf 	beq.w	8008632 <_dtoa_r+0xcaa>
 8008494:	9b07      	ldr	r3, [sp, #28]
 8008496:	43db      	mvns	r3, r3
 8008498:	9306      	str	r3, [sp, #24]
 800849a:	465c      	mov	r4, fp
 800849c:	e78b      	b.n	80083b6 <_dtoa_r+0xa2e>
 800849e:	9a06      	ldr	r2, [sp, #24]
 80084a0:	2331      	movs	r3, #49	; 0x31
 80084a2:	3201      	adds	r2, #1
 80084a4:	9206      	str	r2, [sp, #24]
 80084a6:	f88b 3000 	strb.w	r3, [fp]
 80084aa:	e6b3      	b.n	8008214 <_dtoa_r+0x88c>
 80084ac:	2401      	movs	r4, #1
 80084ae:	9409      	str	r4, [sp, #36]	; 0x24
 80084b0:	9407      	str	r4, [sp, #28]
 80084b2:	f7ff bb8b 	b.w	8007bcc <_dtoa_r+0x244>
 80084b6:	4630      	mov	r0, r6
 80084b8:	f7f7 fff4 	bl	80004a4 <__aeabi_i2d>
 80084bc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80084c0:	f7f8 f85a 	bl	8000578 <__aeabi_dmul>
 80084c4:	2200      	movs	r2, #0
 80084c6:	4b68      	ldr	r3, [pc, #416]	; (8008668 <_dtoa_r+0xce0>)
 80084c8:	f7f7 fea0 	bl	800020c <__adddf3>
 80084cc:	4606      	mov	r6, r0
 80084ce:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80084d2:	2200      	movs	r2, #0
 80084d4:	4b61      	ldr	r3, [pc, #388]	; (800865c <_dtoa_r+0xcd4>)
 80084d6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80084da:	f7f7 fe95 	bl	8000208 <__aeabi_dsub>
 80084de:	4632      	mov	r2, r6
 80084e0:	463b      	mov	r3, r7
 80084e2:	4604      	mov	r4, r0
 80084e4:	460d      	mov	r5, r1
 80084e6:	f7f8 fad7 	bl	8000a98 <__aeabi_dcmpgt>
 80084ea:	2800      	cmp	r0, #0
 80084ec:	d14f      	bne.n	800858e <_dtoa_r+0xc06>
 80084ee:	4632      	mov	r2, r6
 80084f0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80084f4:	4620      	mov	r0, r4
 80084f6:	4629      	mov	r1, r5
 80084f8:	f7f8 fab0 	bl	8000a5c <__aeabi_dcmplt>
 80084fc:	2800      	cmp	r0, #0
 80084fe:	f43f ac69 	beq.w	8007dd4 <_dtoa_r+0x44c>
 8008502:	2600      	movs	r6, #0
 8008504:	4635      	mov	r5, r6
 8008506:	e7c5      	b.n	8008494 <_dtoa_r+0xb0c>
 8008508:	2301      	movs	r3, #1
 800850a:	930a      	str	r3, [sp, #40]	; 0x28
 800850c:	e6c8      	b.n	80082a0 <_dtoa_r+0x918>
 800850e:	4651      	mov	r1, sl
 8008510:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8008512:	4648      	mov	r0, r9
 8008514:	f001 fa9e 	bl	8009a54 <__pow5mult>
 8008518:	4682      	mov	sl, r0
 800851a:	e572      	b.n	8008002 <_dtoa_r+0x67a>
 800851c:	f8dd a000 	ldr.w	sl, [sp]
 8008520:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008524:	e686      	b.n	8008234 <_dtoa_r+0x8ac>
 8008526:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008528:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800852a:	1afb      	subs	r3, r7, r3
 800852c:	441a      	add	r2, r3
 800852e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8008532:	2700      	movs	r7, #0
 8008534:	e512      	b.n	8007f5c <_dtoa_r+0x5d4>
 8008536:	2b00      	cmp	r3, #0
 8008538:	9402      	str	r4, [sp, #8]
 800853a:	465e      	mov	r6, fp
 800853c:	f107 0401 	add.w	r4, r7, #1
 8008540:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8008544:	f300 80ba 	bgt.w	80086bc <_dtoa_r+0xd34>
 8008548:	9b00      	ldr	r3, [sp, #0]
 800854a:	9502      	str	r5, [sp, #8]
 800854c:	703b      	strb	r3, [r7, #0]
 800854e:	4645      	mov	r5, r8
 8008550:	e660      	b.n	8008214 <_dtoa_r+0x88c>
 8008552:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8008556:	2602      	movs	r6, #2
 8008558:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800855c:	f7ff bb67 	b.w	8007c2e <_dtoa_r+0x2a6>
 8008560:	9b00      	ldr	r3, [sp, #0]
 8008562:	2b39      	cmp	r3, #57	; 0x39
 8008564:	465e      	mov	r6, fp
 8008566:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800856a:	f000 80b9 	beq.w	80086e0 <_dtoa_r+0xd58>
 800856e:	9b00      	ldr	r3, [sp, #0]
 8008570:	9502      	str	r5, [sp, #8]
 8008572:	3301      	adds	r3, #1
 8008574:	703b      	strb	r3, [r7, #0]
 8008576:	4645      	mov	r5, r8
 8008578:	e64c      	b.n	8008214 <_dtoa_r+0x88c>
 800857a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800857e:	1a9c      	subs	r4, r3, r2
 8008580:	e4f5      	b.n	8007f6e <_dtoa_r+0x5e6>
 8008582:	465e      	mov	r6, fp
 8008584:	9502      	str	r5, [sp, #8]
 8008586:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800858a:	4645      	mov	r5, r8
 800858c:	e61a      	b.n	80081c4 <_dtoa_r+0x83c>
 800858e:	2600      	movs	r6, #0
 8008590:	4635      	mov	r5, r6
 8008592:	e708      	b.n	80083a6 <_dtoa_r+0xa1e>
 8008594:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8008598:	e9dd 0100 	ldrd	r0, r1, [sp]
 800859c:	f7f7 ffec 	bl	8000578 <__aeabi_dmul>
 80085a0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80085a2:	f88b 5000 	strb.w	r5, [fp]
 80085a6:	2b01      	cmp	r3, #1
 80085a8:	e9cd 0100 	strd	r0, r1, [sp]
 80085ac:	d020      	beq.n	80085f0 <_dtoa_r+0xc68>
 80085ae:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80085b0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80085b4:	445b      	add	r3, fp
 80085b6:	4698      	mov	r8, r3
 80085b8:	2200      	movs	r2, #0
 80085ba:	4b2c      	ldr	r3, [pc, #176]	; (800866c <_dtoa_r+0xce4>)
 80085bc:	4630      	mov	r0, r6
 80085be:	4639      	mov	r1, r7
 80085c0:	f7f7 ffda 	bl	8000578 <__aeabi_dmul>
 80085c4:	460f      	mov	r7, r1
 80085c6:	4606      	mov	r6, r0
 80085c8:	f7f8 fa86 	bl	8000ad8 <__aeabi_d2iz>
 80085cc:	4605      	mov	r5, r0
 80085ce:	f7f7 ff69 	bl	80004a4 <__aeabi_i2d>
 80085d2:	3530      	adds	r5, #48	; 0x30
 80085d4:	4602      	mov	r2, r0
 80085d6:	460b      	mov	r3, r1
 80085d8:	4630      	mov	r0, r6
 80085da:	4639      	mov	r1, r7
 80085dc:	f7f7 fe14 	bl	8000208 <__aeabi_dsub>
 80085e0:	f804 5b01 	strb.w	r5, [r4], #1
 80085e4:	4544      	cmp	r4, r8
 80085e6:	4606      	mov	r6, r0
 80085e8:	460f      	mov	r7, r1
 80085ea:	d1e5      	bne.n	80085b8 <_dtoa_r+0xc30>
 80085ec:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80085f0:	4b1f      	ldr	r3, [pc, #124]	; (8008670 <_dtoa_r+0xce8>)
 80085f2:	2200      	movs	r2, #0
 80085f4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80085f8:	f7f7 fe08 	bl	800020c <__adddf3>
 80085fc:	4632      	mov	r2, r6
 80085fe:	463b      	mov	r3, r7
 8008600:	f7f8 fa2c 	bl	8000a5c <__aeabi_dcmplt>
 8008604:	2800      	cmp	r0, #0
 8008606:	d070      	beq.n	80086ea <_dtoa_r+0xd62>
 8008608:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800860a:	9306      	str	r3, [sp, #24]
 800860c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8008610:	e48f      	b.n	8007f32 <_dtoa_r+0x5aa>
 8008612:	2330      	movs	r3, #48	; 0x30
 8008614:	f88b 3000 	strb.w	r3, [fp]
 8008618:	9b06      	ldr	r3, [sp, #24]
 800861a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800861e:	3301      	adds	r3, #1
 8008620:	9306      	str	r3, [sp, #24]
 8008622:	465b      	mov	r3, fp
 8008624:	e489      	b.n	8007f3a <_dtoa_r+0x5b2>
 8008626:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8008628:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800862c:	e6a0      	b.n	8008370 <_dtoa_r+0x9e8>
 800862e:	2300      	movs	r3, #0
 8008630:	e676      	b.n	8008320 <_dtoa_r+0x998>
 8008632:	4631      	mov	r1, r6
 8008634:	2205      	movs	r2, #5
 8008636:	4648      	mov	r0, r9
 8008638:	f001 f8cc 	bl	80097d4 <__multadd>
 800863c:	4601      	mov	r1, r0
 800863e:	4606      	mov	r6, r0
 8008640:	4650      	mov	r0, sl
 8008642:	f001 faad 	bl	8009ba0 <__mcmp>
 8008646:	2800      	cmp	r0, #0
 8008648:	f73f aead 	bgt.w	80083a6 <_dtoa_r+0xa1e>
 800864c:	e722      	b.n	8008494 <_dtoa_r+0xb0c>
 800864e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8008652:	2602      	movs	r6, #2
 8008654:	ed8d 7b00 	vstr	d7, [sp]
 8008658:	f7ff bb02 	b.w	8007c60 <_dtoa_r+0x2d8>
 800865c:	40140000 	.word	0x40140000
 8008660:	0800ac58 	.word	0x0800ac58
 8008664:	0800ac30 	.word	0x0800ac30
 8008668:	401c0000 	.word	0x401c0000
 800866c:	40240000 	.word	0x40240000
 8008670:	3fe00000 	.word	0x3fe00000
 8008674:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008676:	2b00      	cmp	r3, #0
 8008678:	f43f af1d 	beq.w	80084b6 <_dtoa_r+0xb2e>
 800867c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800867e:	2c00      	cmp	r4, #0
 8008680:	f77f aba8 	ble.w	8007dd4 <_dtoa_r+0x44c>
 8008684:	2200      	movs	r2, #0
 8008686:	4b45      	ldr	r3, [pc, #276]	; (800879c <_dtoa_r+0xe14>)
 8008688:	e9dd 0100 	ldrd	r0, r1, [sp]
 800868c:	f7f7 ff74 	bl	8000578 <__aeabi_dmul>
 8008690:	e9cd 0100 	strd	r0, r1, [sp]
 8008694:	1c70      	adds	r0, r6, #1
 8008696:	f7f7 ff05 	bl	80004a4 <__aeabi_i2d>
 800869a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800869e:	f7f7 ff6b 	bl	8000578 <__aeabi_dmul>
 80086a2:	4b3f      	ldr	r3, [pc, #252]	; (80087a0 <_dtoa_r+0xe18>)
 80086a4:	2200      	movs	r2, #0
 80086a6:	f7f7 fdb1 	bl	800020c <__adddf3>
 80086aa:	9b06      	ldr	r3, [sp, #24]
 80086ac:	9412      	str	r4, [sp, #72]	; 0x48
 80086ae:	3b01      	subs	r3, #1
 80086b0:	4606      	mov	r6, r0
 80086b2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80086b6:	9316      	str	r3, [sp, #88]	; 0x58
 80086b8:	f7ff baf3 	b.w	8007ca2 <_dtoa_r+0x31a>
 80086bc:	4651      	mov	r1, sl
 80086be:	2201      	movs	r2, #1
 80086c0:	4648      	mov	r0, r9
 80086c2:	f001 fa17 	bl	8009af4 <__lshift>
 80086c6:	4631      	mov	r1, r6
 80086c8:	4682      	mov	sl, r0
 80086ca:	f001 fa69 	bl	8009ba0 <__mcmp>
 80086ce:	2800      	cmp	r0, #0
 80086d0:	dd3b      	ble.n	800874a <_dtoa_r+0xdc2>
 80086d2:	9b00      	ldr	r3, [sp, #0]
 80086d4:	2b39      	cmp	r3, #57	; 0x39
 80086d6:	d003      	beq.n	80086e0 <_dtoa_r+0xd58>
 80086d8:	9b02      	ldr	r3, [sp, #8]
 80086da:	3331      	adds	r3, #49	; 0x31
 80086dc:	9300      	str	r3, [sp, #0]
 80086de:	e733      	b.n	8008548 <_dtoa_r+0xbc0>
 80086e0:	2239      	movs	r2, #57	; 0x39
 80086e2:	9502      	str	r5, [sp, #8]
 80086e4:	703a      	strb	r2, [r7, #0]
 80086e6:	4645      	mov	r5, r8
 80086e8:	e58e      	b.n	8008208 <_dtoa_r+0x880>
 80086ea:	e9dd 2300 	ldrd	r2, r3, [sp]
 80086ee:	2000      	movs	r0, #0
 80086f0:	492c      	ldr	r1, [pc, #176]	; (80087a4 <_dtoa_r+0xe1c>)
 80086f2:	f7f7 fd89 	bl	8000208 <__aeabi_dsub>
 80086f6:	4632      	mov	r2, r6
 80086f8:	463b      	mov	r3, r7
 80086fa:	f7f8 f9cd 	bl	8000a98 <__aeabi_dcmpgt>
 80086fe:	b910      	cbnz	r0, 8008706 <_dtoa_r+0xd7e>
 8008700:	f7ff bb68 	b.w	8007dd4 <_dtoa_r+0x44c>
 8008704:	4614      	mov	r4, r2
 8008706:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800870a:	2b30      	cmp	r3, #48	; 0x30
 800870c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8008710:	d0f8      	beq.n	8008704 <_dtoa_r+0xd7c>
 8008712:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008714:	9306      	str	r3, [sp, #24]
 8008716:	e58d      	b.n	8008234 <_dtoa_r+0x8ac>
 8008718:	46d9      	mov	r9, fp
 800871a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800871e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8008722:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008724:	9306      	str	r3, [sp, #24]
 8008726:	e404      	b.n	8007f32 <_dtoa_r+0x5aa>
 8008728:	9b00      	ldr	r3, [sp, #0]
 800872a:	2b39      	cmp	r3, #57	; 0x39
 800872c:	4621      	mov	r1, r4
 800872e:	4632      	mov	r2, r6
 8008730:	f107 0401 	add.w	r4, r7, #1
 8008734:	465e      	mov	r6, fp
 8008736:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800873a:	d0d1      	beq.n	80086e0 <_dtoa_r+0xd58>
 800873c:	2a00      	cmp	r2, #0
 800873e:	f77f af03 	ble.w	8008548 <_dtoa_r+0xbc0>
 8008742:	460b      	mov	r3, r1
 8008744:	3331      	adds	r3, #49	; 0x31
 8008746:	9300      	str	r3, [sp, #0]
 8008748:	e6fe      	b.n	8008548 <_dtoa_r+0xbc0>
 800874a:	f47f aefd 	bne.w	8008548 <_dtoa_r+0xbc0>
 800874e:	9b00      	ldr	r3, [sp, #0]
 8008750:	07da      	lsls	r2, r3, #31
 8008752:	f57f aef9 	bpl.w	8008548 <_dtoa_r+0xbc0>
 8008756:	e7bc      	b.n	80086d2 <_dtoa_r+0xd4a>
 8008758:	4629      	mov	r1, r5
 800875a:	2300      	movs	r3, #0
 800875c:	220a      	movs	r2, #10
 800875e:	4648      	mov	r0, r9
 8008760:	f001 f838 	bl	80097d4 <__multadd>
 8008764:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008766:	2b00      	cmp	r3, #0
 8008768:	4605      	mov	r5, r0
 800876a:	dd09      	ble.n	8008780 <_dtoa_r+0xdf8>
 800876c:	9309      	str	r3, [sp, #36]	; 0x24
 800876e:	e484      	b.n	800807a <_dtoa_r+0x6f2>
 8008770:	9b02      	ldr	r3, [sp, #8]
 8008772:	2b02      	cmp	r3, #2
 8008774:	dc0e      	bgt.n	8008794 <_dtoa_r+0xe0c>
 8008776:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008778:	e507      	b.n	800818a <_dtoa_r+0x802>
 800877a:	2602      	movs	r6, #2
 800877c:	f7ff ba70 	b.w	8007c60 <_dtoa_r+0x2d8>
 8008780:	9b02      	ldr	r3, [sp, #8]
 8008782:	2b02      	cmp	r3, #2
 8008784:	dc06      	bgt.n	8008794 <_dtoa_r+0xe0c>
 8008786:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008788:	e7f0      	b.n	800876c <_dtoa_r+0xde4>
 800878a:	f43f ac59 	beq.w	8008040 <_dtoa_r+0x6b8>
 800878e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8008792:	e450      	b.n	8008036 <_dtoa_r+0x6ae>
 8008794:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008796:	9309      	str	r3, [sp, #36]	; 0x24
 8008798:	e678      	b.n	800848c <_dtoa_r+0xb04>
 800879a:	bf00      	nop
 800879c:	40240000 	.word	0x40240000
 80087a0:	401c0000 	.word	0x401c0000
 80087a4:	3fe00000 	.word	0x3fe00000

080087a8 <__sflush_r>:
 80087a8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80087ac:	b29a      	uxth	r2, r3
 80087ae:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80087b2:	460c      	mov	r4, r1
 80087b4:	0711      	lsls	r1, r2, #28
 80087b6:	4680      	mov	r8, r0
 80087b8:	d444      	bmi.n	8008844 <__sflush_r+0x9c>
 80087ba:	6862      	ldr	r2, [r4, #4]
 80087bc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80087c0:	2a00      	cmp	r2, #0
 80087c2:	81a3      	strh	r3, [r4, #12]
 80087c4:	dd59      	ble.n	800887a <__sflush_r+0xd2>
 80087c6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80087c8:	2d00      	cmp	r5, #0
 80087ca:	d053      	beq.n	8008874 <__sflush_r+0xcc>
 80087cc:	2200      	movs	r2, #0
 80087ce:	b29b      	uxth	r3, r3
 80087d0:	f8d8 6000 	ldr.w	r6, [r8]
 80087d4:	69e1      	ldr	r1, [r4, #28]
 80087d6:	f8c8 2000 	str.w	r2, [r8]
 80087da:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80087de:	f040 8083 	bne.w	80088e8 <__sflush_r+0x140>
 80087e2:	2301      	movs	r3, #1
 80087e4:	4640      	mov	r0, r8
 80087e6:	47a8      	blx	r5
 80087e8:	1c42      	adds	r2, r0, #1
 80087ea:	d04a      	beq.n	8008882 <__sflush_r+0xda>
 80087ec:	89a3      	ldrh	r3, [r4, #12]
 80087ee:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80087f0:	69e1      	ldr	r1, [r4, #28]
 80087f2:	075b      	lsls	r3, r3, #29
 80087f4:	d505      	bpl.n	8008802 <__sflush_r+0x5a>
 80087f6:	6862      	ldr	r2, [r4, #4]
 80087f8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80087fa:	1a80      	subs	r0, r0, r2
 80087fc:	b10b      	cbz	r3, 8008802 <__sflush_r+0x5a>
 80087fe:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8008800:	1ac0      	subs	r0, r0, r3
 8008802:	4602      	mov	r2, r0
 8008804:	2300      	movs	r3, #0
 8008806:	4640      	mov	r0, r8
 8008808:	47a8      	blx	r5
 800880a:	1c47      	adds	r7, r0, #1
 800880c:	d045      	beq.n	800889a <__sflush_r+0xf2>
 800880e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008812:	6922      	ldr	r2, [r4, #16]
 8008814:	6022      	str	r2, [r4, #0]
 8008816:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800881a:	2200      	movs	r2, #0
 800881c:	81a3      	strh	r3, [r4, #12]
 800881e:	04db      	lsls	r3, r3, #19
 8008820:	6062      	str	r2, [r4, #4]
 8008822:	d500      	bpl.n	8008826 <__sflush_r+0x7e>
 8008824:	6520      	str	r0, [r4, #80]	; 0x50
 8008826:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008828:	f8c8 6000 	str.w	r6, [r8]
 800882c:	b311      	cbz	r1, 8008874 <__sflush_r+0xcc>
 800882e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008832:	4299      	cmp	r1, r3
 8008834:	d002      	beq.n	800883c <__sflush_r+0x94>
 8008836:	4640      	mov	r0, r8
 8008838:	f000 f95e 	bl	8008af8 <_free_r>
 800883c:	2000      	movs	r0, #0
 800883e:	6320      	str	r0, [r4, #48]	; 0x30
 8008840:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008844:	6926      	ldr	r6, [r4, #16]
 8008846:	b1ae      	cbz	r6, 8008874 <__sflush_r+0xcc>
 8008848:	6825      	ldr	r5, [r4, #0]
 800884a:	6026      	str	r6, [r4, #0]
 800884c:	0792      	lsls	r2, r2, #30
 800884e:	bf0c      	ite	eq
 8008850:	6963      	ldreq	r3, [r4, #20]
 8008852:	2300      	movne	r3, #0
 8008854:	1bad      	subs	r5, r5, r6
 8008856:	60a3      	str	r3, [r4, #8]
 8008858:	e00a      	b.n	8008870 <__sflush_r+0xc8>
 800885a:	462b      	mov	r3, r5
 800885c:	4632      	mov	r2, r6
 800885e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008860:	69e1      	ldr	r1, [r4, #28]
 8008862:	4640      	mov	r0, r8
 8008864:	47b8      	blx	r7
 8008866:	2800      	cmp	r0, #0
 8008868:	eba5 0500 	sub.w	r5, r5, r0
 800886c:	4406      	add	r6, r0
 800886e:	dd2b      	ble.n	80088c8 <__sflush_r+0x120>
 8008870:	2d00      	cmp	r5, #0
 8008872:	dcf2      	bgt.n	800885a <__sflush_r+0xb2>
 8008874:	2000      	movs	r0, #0
 8008876:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800887a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800887c:	2a00      	cmp	r2, #0
 800887e:	dca2      	bgt.n	80087c6 <__sflush_r+0x1e>
 8008880:	e7f8      	b.n	8008874 <__sflush_r+0xcc>
 8008882:	f8d8 3000 	ldr.w	r3, [r8]
 8008886:	2b00      	cmp	r3, #0
 8008888:	d0b0      	beq.n	80087ec <__sflush_r+0x44>
 800888a:	2b1d      	cmp	r3, #29
 800888c:	d001      	beq.n	8008892 <__sflush_r+0xea>
 800888e:	2b16      	cmp	r3, #22
 8008890:	d12c      	bne.n	80088ec <__sflush_r+0x144>
 8008892:	f8c8 6000 	str.w	r6, [r8]
 8008896:	2000      	movs	r0, #0
 8008898:	e7ed      	b.n	8008876 <__sflush_r+0xce>
 800889a:	f8d8 1000 	ldr.w	r1, [r8]
 800889e:	291d      	cmp	r1, #29
 80088a0:	d81a      	bhi.n	80088d8 <__sflush_r+0x130>
 80088a2:	4b15      	ldr	r3, [pc, #84]	; (80088f8 <__sflush_r+0x150>)
 80088a4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80088a8:	40cb      	lsrs	r3, r1
 80088aa:	43db      	mvns	r3, r3
 80088ac:	f013 0301 	ands.w	r3, r3, #1
 80088b0:	d114      	bne.n	80088dc <__sflush_r+0x134>
 80088b2:	6925      	ldr	r5, [r4, #16]
 80088b4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80088b8:	e9c4 5300 	strd	r5, r3, [r4]
 80088bc:	04d5      	lsls	r5, r2, #19
 80088be:	81a2      	strh	r2, [r4, #12]
 80088c0:	d5b1      	bpl.n	8008826 <__sflush_r+0x7e>
 80088c2:	2900      	cmp	r1, #0
 80088c4:	d1af      	bne.n	8008826 <__sflush_r+0x7e>
 80088c6:	e7ad      	b.n	8008824 <__sflush_r+0x7c>
 80088c8:	89a3      	ldrh	r3, [r4, #12]
 80088ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80088ce:	81a3      	strh	r3, [r4, #12]
 80088d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80088d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80088d8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80088dc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80088e0:	81a2      	strh	r2, [r4, #12]
 80088e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80088e6:	e7c6      	b.n	8008876 <__sflush_r+0xce>
 80088e8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80088ea:	e782      	b.n	80087f2 <__sflush_r+0x4a>
 80088ec:	89a3      	ldrh	r3, [r4, #12]
 80088ee:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80088f2:	81a3      	strh	r3, [r4, #12]
 80088f4:	e7bf      	b.n	8008876 <__sflush_r+0xce>
 80088f6:	bf00      	nop
 80088f8:	20400001 	.word	0x20400001

080088fc <_fflush_r>:
 80088fc:	b538      	push	{r3, r4, r5, lr}
 80088fe:	460d      	mov	r5, r1
 8008900:	4604      	mov	r4, r0
 8008902:	b108      	cbz	r0, 8008908 <_fflush_r+0xc>
 8008904:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008906:	b1a3      	cbz	r3, 8008932 <_fflush_r+0x36>
 8008908:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800890c:	b1b8      	cbz	r0, 800893e <_fflush_r+0x42>
 800890e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8008910:	07db      	lsls	r3, r3, #31
 8008912:	d401      	bmi.n	8008918 <_fflush_r+0x1c>
 8008914:	0581      	lsls	r1, r0, #22
 8008916:	d51a      	bpl.n	800894e <_fflush_r+0x52>
 8008918:	4620      	mov	r0, r4
 800891a:	4629      	mov	r1, r5
 800891c:	f7ff ff44 	bl	80087a8 <__sflush_r>
 8008920:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8008922:	07da      	lsls	r2, r3, #31
 8008924:	4604      	mov	r4, r0
 8008926:	d402      	bmi.n	800892e <_fflush_r+0x32>
 8008928:	89ab      	ldrh	r3, [r5, #12]
 800892a:	059b      	lsls	r3, r3, #22
 800892c:	d50a      	bpl.n	8008944 <_fflush_r+0x48>
 800892e:	4620      	mov	r0, r4
 8008930:	bd38      	pop	{r3, r4, r5, pc}
 8008932:	f000 f83f 	bl	80089b4 <__sinit>
 8008936:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800893a:	2800      	cmp	r0, #0
 800893c:	d1e7      	bne.n	800890e <_fflush_r+0x12>
 800893e:	4604      	mov	r4, r0
 8008940:	4620      	mov	r0, r4
 8008942:	bd38      	pop	{r3, r4, r5, pc}
 8008944:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8008946:	f000 fb87 	bl	8009058 <__retarget_lock_release_recursive>
 800894a:	4620      	mov	r0, r4
 800894c:	bd38      	pop	{r3, r4, r5, pc}
 800894e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8008950:	f000 fb80 	bl	8009054 <__retarget_lock_acquire_recursive>
 8008954:	e7e0      	b.n	8008918 <_fflush_r+0x1c>
 8008956:	bf00      	nop

08008958 <std>:
 8008958:	b510      	push	{r4, lr}
 800895a:	2300      	movs	r3, #0
 800895c:	4604      	mov	r4, r0
 800895e:	8181      	strh	r1, [r0, #12]
 8008960:	81c2      	strh	r2, [r0, #14]
 8008962:	e9c0 3300 	strd	r3, r3, [r0]
 8008966:	6083      	str	r3, [r0, #8]
 8008968:	6643      	str	r3, [r0, #100]	; 0x64
 800896a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800896e:	6183      	str	r3, [r0, #24]
 8008970:	4619      	mov	r1, r3
 8008972:	2208      	movs	r2, #8
 8008974:	305c      	adds	r0, #92	; 0x5c
 8008976:	f7fd f8c9 	bl	8005b0c <memset>
 800897a:	4807      	ldr	r0, [pc, #28]	; (8008998 <std+0x40>)
 800897c:	4907      	ldr	r1, [pc, #28]	; (800899c <std+0x44>)
 800897e:	4a08      	ldr	r2, [pc, #32]	; (80089a0 <std+0x48>)
 8008980:	4b08      	ldr	r3, [pc, #32]	; (80089a4 <std+0x4c>)
 8008982:	62e3      	str	r3, [r4, #44]	; 0x2c
 8008984:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8008988:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800898c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8008990:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008994:	f000 bb5a 	b.w	800904c <__retarget_lock_init_recursive>
 8008998:	0800a171 	.word	0x0800a171
 800899c:	0800a195 	.word	0x0800a195
 80089a0:	0800a1d1 	.word	0x0800a1d1
 80089a4:	0800a1f1 	.word	0x0800a1f1

080089a8 <_cleanup_r>:
 80089a8:	4901      	ldr	r1, [pc, #4]	; (80089b0 <_cleanup_r+0x8>)
 80089aa:	f000 bb17 	b.w	8008fdc <_fwalk_reent>
 80089ae:	bf00      	nop
 80089b0:	0800a461 	.word	0x0800a461

080089b4 <__sinit>:
 80089b4:	b510      	push	{r4, lr}
 80089b6:	4604      	mov	r4, r0
 80089b8:	4812      	ldr	r0, [pc, #72]	; (8008a04 <__sinit+0x50>)
 80089ba:	f000 fb4b 	bl	8009054 <__retarget_lock_acquire_recursive>
 80089be:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80089c0:	b9d2      	cbnz	r2, 80089f8 <__sinit+0x44>
 80089c2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80089c6:	4810      	ldr	r0, [pc, #64]	; (8008a08 <__sinit+0x54>)
 80089c8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80089cc:	2103      	movs	r1, #3
 80089ce:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80089d2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80089d4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80089d8:	6860      	ldr	r0, [r4, #4]
 80089da:	2104      	movs	r1, #4
 80089dc:	f7ff ffbc 	bl	8008958 <std>
 80089e0:	2201      	movs	r2, #1
 80089e2:	2109      	movs	r1, #9
 80089e4:	68a0      	ldr	r0, [r4, #8]
 80089e6:	f7ff ffb7 	bl	8008958 <std>
 80089ea:	2202      	movs	r2, #2
 80089ec:	2112      	movs	r1, #18
 80089ee:	68e0      	ldr	r0, [r4, #12]
 80089f0:	f7ff ffb2 	bl	8008958 <std>
 80089f4:	2301      	movs	r3, #1
 80089f6:	63a3      	str	r3, [r4, #56]	; 0x38
 80089f8:	4802      	ldr	r0, [pc, #8]	; (8008a04 <__sinit+0x50>)
 80089fa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80089fe:	f000 bb2b 	b.w	8009058 <__retarget_lock_release_recursive>
 8008a02:	bf00      	nop
 8008a04:	20000af4 	.word	0x20000af4
 8008a08:	080089a9 	.word	0x080089a9

08008a0c <__sfp_lock_acquire>:
 8008a0c:	4801      	ldr	r0, [pc, #4]	; (8008a14 <__sfp_lock_acquire+0x8>)
 8008a0e:	f000 bb21 	b.w	8009054 <__retarget_lock_acquire_recursive>
 8008a12:	bf00      	nop
 8008a14:	20000b08 	.word	0x20000b08

08008a18 <__sfp_lock_release>:
 8008a18:	4801      	ldr	r0, [pc, #4]	; (8008a20 <__sfp_lock_release+0x8>)
 8008a1a:	f000 bb1d 	b.w	8009058 <__retarget_lock_release_recursive>
 8008a1e:	bf00      	nop
 8008a20:	20000b08 	.word	0x20000b08

08008a24 <__libc_fini_array>:
 8008a24:	b538      	push	{r3, r4, r5, lr}
 8008a26:	4c0a      	ldr	r4, [pc, #40]	; (8008a50 <__libc_fini_array+0x2c>)
 8008a28:	4d0a      	ldr	r5, [pc, #40]	; (8008a54 <__libc_fini_array+0x30>)
 8008a2a:	1b64      	subs	r4, r4, r5
 8008a2c:	10a4      	asrs	r4, r4, #2
 8008a2e:	d00a      	beq.n	8008a46 <__libc_fini_array+0x22>
 8008a30:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8008a34:	3b01      	subs	r3, #1
 8008a36:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8008a3a:	3c01      	subs	r4, #1
 8008a3c:	f855 3904 	ldr.w	r3, [r5], #-4
 8008a40:	4798      	blx	r3
 8008a42:	2c00      	cmp	r4, #0
 8008a44:	d1f9      	bne.n	8008a3a <__libc_fini_array+0x16>
 8008a46:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8008a4a:	f001 befd 	b.w	800a848 <_fini>
 8008a4e:	bf00      	nop
 8008a50:	0800ae54 	.word	0x0800ae54
 8008a54:	0800ae50 	.word	0x0800ae50

08008a58 <_malloc_trim_r>:
 8008a58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a5a:	4f24      	ldr	r7, [pc, #144]	; (8008aec <_malloc_trim_r+0x94>)
 8008a5c:	460c      	mov	r4, r1
 8008a5e:	4606      	mov	r6, r0
 8008a60:	f000 fe7c 	bl	800975c <__malloc_lock>
 8008a64:	68bb      	ldr	r3, [r7, #8]
 8008a66:	685d      	ldr	r5, [r3, #4]
 8008a68:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8008a6c:	310f      	adds	r1, #15
 8008a6e:	f025 0503 	bic.w	r5, r5, #3
 8008a72:	4429      	add	r1, r5
 8008a74:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8008a78:	f021 010f 	bic.w	r1, r1, #15
 8008a7c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8008a80:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8008a84:	db07      	blt.n	8008a96 <_malloc_trim_r+0x3e>
 8008a86:	2100      	movs	r1, #0
 8008a88:	4630      	mov	r0, r6
 8008a8a:	f001 fb5f 	bl	800a14c <_sbrk_r>
 8008a8e:	68bb      	ldr	r3, [r7, #8]
 8008a90:	442b      	add	r3, r5
 8008a92:	4298      	cmp	r0, r3
 8008a94:	d004      	beq.n	8008aa0 <_malloc_trim_r+0x48>
 8008a96:	4630      	mov	r0, r6
 8008a98:	f000 fe66 	bl	8009768 <__malloc_unlock>
 8008a9c:	2000      	movs	r0, #0
 8008a9e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008aa0:	4261      	negs	r1, r4
 8008aa2:	4630      	mov	r0, r6
 8008aa4:	f001 fb52 	bl	800a14c <_sbrk_r>
 8008aa8:	3001      	adds	r0, #1
 8008aaa:	d00d      	beq.n	8008ac8 <_malloc_trim_r+0x70>
 8008aac:	4b10      	ldr	r3, [pc, #64]	; (8008af0 <_malloc_trim_r+0x98>)
 8008aae:	68ba      	ldr	r2, [r7, #8]
 8008ab0:	6819      	ldr	r1, [r3, #0]
 8008ab2:	1b2d      	subs	r5, r5, r4
 8008ab4:	f045 0501 	orr.w	r5, r5, #1
 8008ab8:	4630      	mov	r0, r6
 8008aba:	1b09      	subs	r1, r1, r4
 8008abc:	6055      	str	r5, [r2, #4]
 8008abe:	6019      	str	r1, [r3, #0]
 8008ac0:	f000 fe52 	bl	8009768 <__malloc_unlock>
 8008ac4:	2001      	movs	r0, #1
 8008ac6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008ac8:	2100      	movs	r1, #0
 8008aca:	4630      	mov	r0, r6
 8008acc:	f001 fb3e 	bl	800a14c <_sbrk_r>
 8008ad0:	68ba      	ldr	r2, [r7, #8]
 8008ad2:	1a83      	subs	r3, r0, r2
 8008ad4:	2b0f      	cmp	r3, #15
 8008ad6:	ddde      	ble.n	8008a96 <_malloc_trim_r+0x3e>
 8008ad8:	4c06      	ldr	r4, [pc, #24]	; (8008af4 <_malloc_trim_r+0x9c>)
 8008ada:	4905      	ldr	r1, [pc, #20]	; (8008af0 <_malloc_trim_r+0x98>)
 8008adc:	6824      	ldr	r4, [r4, #0]
 8008ade:	f043 0301 	orr.w	r3, r3, #1
 8008ae2:	1b00      	subs	r0, r0, r4
 8008ae4:	6053      	str	r3, [r2, #4]
 8008ae6:	6008      	str	r0, [r1, #0]
 8008ae8:	e7d5      	b.n	8008a96 <_malloc_trim_r+0x3e>
 8008aea:	bf00      	nop
 8008aec:	2000044c 	.word	0x2000044c
 8008af0:	20000a6c 	.word	0x20000a6c
 8008af4:	20000854 	.word	0x20000854

08008af8 <_free_r>:
 8008af8:	2900      	cmp	r1, #0
 8008afa:	d053      	beq.n	8008ba4 <_free_r+0xac>
 8008afc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008afe:	460c      	mov	r4, r1
 8008b00:	4606      	mov	r6, r0
 8008b02:	f000 fe2b 	bl	800975c <__malloc_lock>
 8008b06:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8008b0a:	4f71      	ldr	r7, [pc, #452]	; (8008cd0 <_free_r+0x1d8>)
 8008b0c:	f02c 0101 	bic.w	r1, ip, #1
 8008b10:	f1a4 0508 	sub.w	r5, r4, #8
 8008b14:	186b      	adds	r3, r5, r1
 8008b16:	68b8      	ldr	r0, [r7, #8]
 8008b18:	685a      	ldr	r2, [r3, #4]
 8008b1a:	4298      	cmp	r0, r3
 8008b1c:	f022 0203 	bic.w	r2, r2, #3
 8008b20:	d053      	beq.n	8008bca <_free_r+0xd2>
 8008b22:	f01c 0f01 	tst.w	ip, #1
 8008b26:	605a      	str	r2, [r3, #4]
 8008b28:	eb03 0002 	add.w	r0, r3, r2
 8008b2c:	d13b      	bne.n	8008ba6 <_free_r+0xae>
 8008b2e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8008b32:	6840      	ldr	r0, [r0, #4]
 8008b34:	eba5 050c 	sub.w	r5, r5, ip
 8008b38:	f107 0e08 	add.w	lr, r7, #8
 8008b3c:	68ac      	ldr	r4, [r5, #8]
 8008b3e:	4574      	cmp	r4, lr
 8008b40:	4461      	add	r1, ip
 8008b42:	f000 0001 	and.w	r0, r0, #1
 8008b46:	d075      	beq.n	8008c34 <_free_r+0x13c>
 8008b48:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8008b4c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8008b50:	f8cc 4008 	str.w	r4, [ip, #8]
 8008b54:	b360      	cbz	r0, 8008bb0 <_free_r+0xb8>
 8008b56:	f041 0301 	orr.w	r3, r1, #1
 8008b5a:	606b      	str	r3, [r5, #4]
 8008b5c:	5069      	str	r1, [r5, r1]
 8008b5e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8008b62:	d350      	bcc.n	8008c06 <_free_r+0x10e>
 8008b64:	0a4b      	lsrs	r3, r1, #9
 8008b66:	2b04      	cmp	r3, #4
 8008b68:	d870      	bhi.n	8008c4c <_free_r+0x154>
 8008b6a:	098b      	lsrs	r3, r1, #6
 8008b6c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8008b70:	00e4      	lsls	r4, r4, #3
 8008b72:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8008b76:	1938      	adds	r0, r7, r4
 8008b78:	593b      	ldr	r3, [r7, r4]
 8008b7a:	3808      	subs	r0, #8
 8008b7c:	4298      	cmp	r0, r3
 8008b7e:	d078      	beq.n	8008c72 <_free_r+0x17a>
 8008b80:	685a      	ldr	r2, [r3, #4]
 8008b82:	f022 0203 	bic.w	r2, r2, #3
 8008b86:	428a      	cmp	r2, r1
 8008b88:	d971      	bls.n	8008c6e <_free_r+0x176>
 8008b8a:	689b      	ldr	r3, [r3, #8]
 8008b8c:	4298      	cmp	r0, r3
 8008b8e:	d1f7      	bne.n	8008b80 <_free_r+0x88>
 8008b90:	68c3      	ldr	r3, [r0, #12]
 8008b92:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8008b96:	609d      	str	r5, [r3, #8]
 8008b98:	60c5      	str	r5, [r0, #12]
 8008b9a:	4630      	mov	r0, r6
 8008b9c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008ba0:	f000 bde2 	b.w	8009768 <__malloc_unlock>
 8008ba4:	4770      	bx	lr
 8008ba6:	6840      	ldr	r0, [r0, #4]
 8008ba8:	f000 0001 	and.w	r0, r0, #1
 8008bac:	2800      	cmp	r0, #0
 8008bae:	d1d2      	bne.n	8008b56 <_free_r+0x5e>
 8008bb0:	6898      	ldr	r0, [r3, #8]
 8008bb2:	4c48      	ldr	r4, [pc, #288]	; (8008cd4 <_free_r+0x1dc>)
 8008bb4:	4411      	add	r1, r2
 8008bb6:	42a0      	cmp	r0, r4
 8008bb8:	f041 0201 	orr.w	r2, r1, #1
 8008bbc:	d062      	beq.n	8008c84 <_free_r+0x18c>
 8008bbe:	68db      	ldr	r3, [r3, #12]
 8008bc0:	60c3      	str	r3, [r0, #12]
 8008bc2:	6098      	str	r0, [r3, #8]
 8008bc4:	606a      	str	r2, [r5, #4]
 8008bc6:	5069      	str	r1, [r5, r1]
 8008bc8:	e7c9      	b.n	8008b5e <_free_r+0x66>
 8008bca:	f01c 0f01 	tst.w	ip, #1
 8008bce:	440a      	add	r2, r1
 8008bd0:	d107      	bne.n	8008be2 <_free_r+0xea>
 8008bd2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8008bd6:	1aed      	subs	r5, r5, r3
 8008bd8:	441a      	add	r2, r3
 8008bda:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8008bde:	60cb      	str	r3, [r1, #12]
 8008be0:	6099      	str	r1, [r3, #8]
 8008be2:	4b3d      	ldr	r3, [pc, #244]	; (8008cd8 <_free_r+0x1e0>)
 8008be4:	681b      	ldr	r3, [r3, #0]
 8008be6:	f042 0101 	orr.w	r1, r2, #1
 8008bea:	4293      	cmp	r3, r2
 8008bec:	6069      	str	r1, [r5, #4]
 8008bee:	60bd      	str	r5, [r7, #8]
 8008bf0:	d804      	bhi.n	8008bfc <_free_r+0x104>
 8008bf2:	4b3a      	ldr	r3, [pc, #232]	; (8008cdc <_free_r+0x1e4>)
 8008bf4:	4630      	mov	r0, r6
 8008bf6:	6819      	ldr	r1, [r3, #0]
 8008bf8:	f7ff ff2e 	bl	8008a58 <_malloc_trim_r>
 8008bfc:	4630      	mov	r0, r6
 8008bfe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008c02:	f000 bdb1 	b.w	8009768 <__malloc_unlock>
 8008c06:	08c9      	lsrs	r1, r1, #3
 8008c08:	6878      	ldr	r0, [r7, #4]
 8008c0a:	1c4a      	adds	r2, r1, #1
 8008c0c:	2301      	movs	r3, #1
 8008c0e:	1089      	asrs	r1, r1, #2
 8008c10:	408b      	lsls	r3, r1
 8008c12:	4303      	orrs	r3, r0
 8008c14:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8008c18:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8008c1c:	607b      	str	r3, [r7, #4]
 8008c1e:	3908      	subs	r1, #8
 8008c20:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8008c24:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8008c28:	60c5      	str	r5, [r0, #12]
 8008c2a:	4630      	mov	r0, r6
 8008c2c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008c30:	f000 bd9a 	b.w	8009768 <__malloc_unlock>
 8008c34:	2800      	cmp	r0, #0
 8008c36:	d145      	bne.n	8008cc4 <_free_r+0x1cc>
 8008c38:	440a      	add	r2, r1
 8008c3a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8008c3e:	f042 0001 	orr.w	r0, r2, #1
 8008c42:	60cb      	str	r3, [r1, #12]
 8008c44:	6099      	str	r1, [r3, #8]
 8008c46:	6068      	str	r0, [r5, #4]
 8008c48:	50aa      	str	r2, [r5, r2]
 8008c4a:	e7d7      	b.n	8008bfc <_free_r+0x104>
 8008c4c:	2b14      	cmp	r3, #20
 8008c4e:	d908      	bls.n	8008c62 <_free_r+0x16a>
 8008c50:	2b54      	cmp	r3, #84	; 0x54
 8008c52:	d81e      	bhi.n	8008c92 <_free_r+0x19a>
 8008c54:	0b0b      	lsrs	r3, r1, #12
 8008c56:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8008c5a:	00e4      	lsls	r4, r4, #3
 8008c5c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8008c60:	e789      	b.n	8008b76 <_free_r+0x7e>
 8008c62:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8008c66:	00e4      	lsls	r4, r4, #3
 8008c68:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8008c6c:	e783      	b.n	8008b76 <_free_r+0x7e>
 8008c6e:	4618      	mov	r0, r3
 8008c70:	e78e      	b.n	8008b90 <_free_r+0x98>
 8008c72:	1093      	asrs	r3, r2, #2
 8008c74:	6879      	ldr	r1, [r7, #4]
 8008c76:	2201      	movs	r2, #1
 8008c78:	fa02 f303 	lsl.w	r3, r2, r3
 8008c7c:	430b      	orrs	r3, r1
 8008c7e:	607b      	str	r3, [r7, #4]
 8008c80:	4603      	mov	r3, r0
 8008c82:	e786      	b.n	8008b92 <_free_r+0x9a>
 8008c84:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008c88:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8008c8c:	606a      	str	r2, [r5, #4]
 8008c8e:	5069      	str	r1, [r5, r1]
 8008c90:	e7b4      	b.n	8008bfc <_free_r+0x104>
 8008c92:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008c96:	d806      	bhi.n	8008ca6 <_free_r+0x1ae>
 8008c98:	0bcb      	lsrs	r3, r1, #15
 8008c9a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8008c9e:	00e4      	lsls	r4, r4, #3
 8008ca0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8008ca4:	e767      	b.n	8008b76 <_free_r+0x7e>
 8008ca6:	f240 5254 	movw	r2, #1364	; 0x554
 8008caa:	4293      	cmp	r3, r2
 8008cac:	d806      	bhi.n	8008cbc <_free_r+0x1c4>
 8008cae:	0c8b      	lsrs	r3, r1, #18
 8008cb0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8008cb4:	00e4      	lsls	r4, r4, #3
 8008cb6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8008cba:	e75c      	b.n	8008b76 <_free_r+0x7e>
 8008cbc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008cc0:	227e      	movs	r2, #126	; 0x7e
 8008cc2:	e758      	b.n	8008b76 <_free_r+0x7e>
 8008cc4:	f041 0201 	orr.w	r2, r1, #1
 8008cc8:	606a      	str	r2, [r5, #4]
 8008cca:	6019      	str	r1, [r3, #0]
 8008ccc:	e796      	b.n	8008bfc <_free_r+0x104>
 8008cce:	bf00      	nop
 8008cd0:	2000044c 	.word	0x2000044c
 8008cd4:	20000454 	.word	0x20000454
 8008cd8:	20000858 	.word	0x20000858
 8008cdc:	20000a9c 	.word	0x20000a9c

08008ce0 <__sfvwrite_r>:
 8008ce0:	6893      	ldr	r3, [r2, #8]
 8008ce2:	2b00      	cmp	r3, #0
 8008ce4:	f000 80e4 	beq.w	8008eb0 <__sfvwrite_r+0x1d0>
 8008ce8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008cec:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008cf0:	b29b      	uxth	r3, r3
 8008cf2:	460c      	mov	r4, r1
 8008cf4:	0719      	lsls	r1, r3, #28
 8008cf6:	b083      	sub	sp, #12
 8008cf8:	4682      	mov	sl, r0
 8008cfa:	4690      	mov	r8, r2
 8008cfc:	d535      	bpl.n	8008d6a <__sfvwrite_r+0x8a>
 8008cfe:	6922      	ldr	r2, [r4, #16]
 8008d00:	b39a      	cbz	r2, 8008d6a <__sfvwrite_r+0x8a>
 8008d02:	f013 0202 	ands.w	r2, r3, #2
 8008d06:	f8d8 6000 	ldr.w	r6, [r8]
 8008d0a:	d03d      	beq.n	8008d88 <__sfvwrite_r+0xa8>
 8008d0c:	2700      	movs	r7, #0
 8008d0e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008d12:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008d16:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008fd8 <__sfvwrite_r+0x2f8>
 8008d1a:	463d      	mov	r5, r7
 8008d1c:	454d      	cmp	r5, r9
 8008d1e:	462b      	mov	r3, r5
 8008d20:	463a      	mov	r2, r7
 8008d22:	bf28      	it	cs
 8008d24:	464b      	movcs	r3, r9
 8008d26:	4661      	mov	r1, ip
 8008d28:	4650      	mov	r0, sl
 8008d2a:	b1d5      	cbz	r5, 8008d62 <__sfvwrite_r+0x82>
 8008d2c:	47d8      	blx	fp
 8008d2e:	2800      	cmp	r0, #0
 8008d30:	f340 80c6 	ble.w	8008ec0 <__sfvwrite_r+0x1e0>
 8008d34:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008d38:	1a1b      	subs	r3, r3, r0
 8008d3a:	4407      	add	r7, r0
 8008d3c:	1a2d      	subs	r5, r5, r0
 8008d3e:	f8c8 3008 	str.w	r3, [r8, #8]
 8008d42:	2b00      	cmp	r3, #0
 8008d44:	f000 80b0 	beq.w	8008ea8 <__sfvwrite_r+0x1c8>
 8008d48:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008d4c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008d50:	454d      	cmp	r5, r9
 8008d52:	462b      	mov	r3, r5
 8008d54:	463a      	mov	r2, r7
 8008d56:	bf28      	it	cs
 8008d58:	464b      	movcs	r3, r9
 8008d5a:	4661      	mov	r1, ip
 8008d5c:	4650      	mov	r0, sl
 8008d5e:	2d00      	cmp	r5, #0
 8008d60:	d1e4      	bne.n	8008d2c <__sfvwrite_r+0x4c>
 8008d62:	e9d6 7500 	ldrd	r7, r5, [r6]
 8008d66:	3608      	adds	r6, #8
 8008d68:	e7d8      	b.n	8008d1c <__sfvwrite_r+0x3c>
 8008d6a:	4621      	mov	r1, r4
 8008d6c:	4650      	mov	r0, sl
 8008d6e:	f7fe fd03 	bl	8007778 <__swsetup_r>
 8008d72:	2800      	cmp	r0, #0
 8008d74:	f040 812a 	bne.w	8008fcc <__sfvwrite_r+0x2ec>
 8008d78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d7c:	f8d8 6000 	ldr.w	r6, [r8]
 8008d80:	b29b      	uxth	r3, r3
 8008d82:	f013 0202 	ands.w	r2, r3, #2
 8008d86:	d1c1      	bne.n	8008d0c <__sfvwrite_r+0x2c>
 8008d88:	f013 0901 	ands.w	r9, r3, #1
 8008d8c:	d15d      	bne.n	8008e4a <__sfvwrite_r+0x16a>
 8008d8e:	68a7      	ldr	r7, [r4, #8]
 8008d90:	6820      	ldr	r0, [r4, #0]
 8008d92:	464d      	mov	r5, r9
 8008d94:	2d00      	cmp	r5, #0
 8008d96:	d054      	beq.n	8008e42 <__sfvwrite_r+0x162>
 8008d98:	059a      	lsls	r2, r3, #22
 8008d9a:	f140 809b 	bpl.w	8008ed4 <__sfvwrite_r+0x1f4>
 8008d9e:	42af      	cmp	r7, r5
 8008da0:	46bb      	mov	fp, r7
 8008da2:	f200 80d8 	bhi.w	8008f56 <__sfvwrite_r+0x276>
 8008da6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8008daa:	d02f      	beq.n	8008e0c <__sfvwrite_r+0x12c>
 8008dac:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008db0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008db4:	eba0 0b01 	sub.w	fp, r0, r1
 8008db8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008dbc:	1c68      	adds	r0, r5, #1
 8008dbe:	107f      	asrs	r7, r7, #1
 8008dc0:	4458      	add	r0, fp
 8008dc2:	42b8      	cmp	r0, r7
 8008dc4:	463a      	mov	r2, r7
 8008dc6:	bf84      	itt	hi
 8008dc8:	4607      	movhi	r7, r0
 8008dca:	463a      	movhi	r2, r7
 8008dcc:	055b      	lsls	r3, r3, #21
 8008dce:	f140 80d3 	bpl.w	8008f78 <__sfvwrite_r+0x298>
 8008dd2:	4611      	mov	r1, r2
 8008dd4:	4650      	mov	r0, sl
 8008dd6:	f000 f9b9 	bl	800914c <_malloc_r>
 8008dda:	2800      	cmp	r0, #0
 8008ddc:	f000 80f0 	beq.w	8008fc0 <__sfvwrite_r+0x2e0>
 8008de0:	465a      	mov	r2, fp
 8008de2:	6921      	ldr	r1, [r4, #16]
 8008de4:	9001      	str	r0, [sp, #4]
 8008de6:	f7f8 f86d 	bl	8000ec4 <memcpy>
 8008dea:	89a2      	ldrh	r2, [r4, #12]
 8008dec:	9b01      	ldr	r3, [sp, #4]
 8008dee:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008df2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008df6:	81a2      	strh	r2, [r4, #12]
 8008df8:	eba7 020b 	sub.w	r2, r7, fp
 8008dfc:	eb03 000b 	add.w	r0, r3, fp
 8008e00:	6167      	str	r7, [r4, #20]
 8008e02:	6123      	str	r3, [r4, #16]
 8008e04:	6020      	str	r0, [r4, #0]
 8008e06:	60a2      	str	r2, [r4, #8]
 8008e08:	462f      	mov	r7, r5
 8008e0a:	46ab      	mov	fp, r5
 8008e0c:	465a      	mov	r2, fp
 8008e0e:	4649      	mov	r1, r9
 8008e10:	f000 fc40 	bl	8009694 <memmove>
 8008e14:	68a2      	ldr	r2, [r4, #8]
 8008e16:	6823      	ldr	r3, [r4, #0]
 8008e18:	1bd2      	subs	r2, r2, r7
 8008e1a:	445b      	add	r3, fp
 8008e1c:	462f      	mov	r7, r5
 8008e1e:	60a2      	str	r2, [r4, #8]
 8008e20:	6023      	str	r3, [r4, #0]
 8008e22:	2500      	movs	r5, #0
 8008e24:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008e28:	1bdb      	subs	r3, r3, r7
 8008e2a:	44b9      	add	r9, r7
 8008e2c:	f8c8 3008 	str.w	r3, [r8, #8]
 8008e30:	2b00      	cmp	r3, #0
 8008e32:	d039      	beq.n	8008ea8 <__sfvwrite_r+0x1c8>
 8008e34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008e38:	68a7      	ldr	r7, [r4, #8]
 8008e3a:	6820      	ldr	r0, [r4, #0]
 8008e3c:	b29b      	uxth	r3, r3
 8008e3e:	2d00      	cmp	r5, #0
 8008e40:	d1aa      	bne.n	8008d98 <__sfvwrite_r+0xb8>
 8008e42:	e9d6 9500 	ldrd	r9, r5, [r6]
 8008e46:	3608      	adds	r6, #8
 8008e48:	e7a4      	b.n	8008d94 <__sfvwrite_r+0xb4>
 8008e4a:	4633      	mov	r3, r6
 8008e4c:	4691      	mov	r9, r2
 8008e4e:	4610      	mov	r0, r2
 8008e50:	4617      	mov	r7, r2
 8008e52:	464e      	mov	r6, r9
 8008e54:	469b      	mov	fp, r3
 8008e56:	2f00      	cmp	r7, #0
 8008e58:	d06b      	beq.n	8008f32 <__sfvwrite_r+0x252>
 8008e5a:	2800      	cmp	r0, #0
 8008e5c:	d071      	beq.n	8008f42 <__sfvwrite_r+0x262>
 8008e5e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8008e62:	6820      	ldr	r0, [r4, #0]
 8008e64:	45b9      	cmp	r9, r7
 8008e66:	464b      	mov	r3, r9
 8008e68:	bf28      	it	cs
 8008e6a:	463b      	movcs	r3, r7
 8008e6c:	4288      	cmp	r0, r1
 8008e6e:	d903      	bls.n	8008e78 <__sfvwrite_r+0x198>
 8008e70:	68a5      	ldr	r5, [r4, #8]
 8008e72:	4415      	add	r5, r2
 8008e74:	42ab      	cmp	r3, r5
 8008e76:	dc71      	bgt.n	8008f5c <__sfvwrite_r+0x27c>
 8008e78:	429a      	cmp	r2, r3
 8008e7a:	f300 8093 	bgt.w	8008fa4 <__sfvwrite_r+0x2c4>
 8008e7e:	4613      	mov	r3, r2
 8008e80:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008e82:	69e1      	ldr	r1, [r4, #28]
 8008e84:	4632      	mov	r2, r6
 8008e86:	4650      	mov	r0, sl
 8008e88:	47a8      	blx	r5
 8008e8a:	1e05      	subs	r5, r0, #0
 8008e8c:	dd18      	ble.n	8008ec0 <__sfvwrite_r+0x1e0>
 8008e8e:	ebb9 0905 	subs.w	r9, r9, r5
 8008e92:	d00f      	beq.n	8008eb4 <__sfvwrite_r+0x1d4>
 8008e94:	2001      	movs	r0, #1
 8008e96:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008e9a:	1b5b      	subs	r3, r3, r5
 8008e9c:	442e      	add	r6, r5
 8008e9e:	1b7f      	subs	r7, r7, r5
 8008ea0:	f8c8 3008 	str.w	r3, [r8, #8]
 8008ea4:	2b00      	cmp	r3, #0
 8008ea6:	d1d6      	bne.n	8008e56 <__sfvwrite_r+0x176>
 8008ea8:	2000      	movs	r0, #0
 8008eaa:	b003      	add	sp, #12
 8008eac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008eb0:	2000      	movs	r0, #0
 8008eb2:	4770      	bx	lr
 8008eb4:	4621      	mov	r1, r4
 8008eb6:	4650      	mov	r0, sl
 8008eb8:	f7ff fd20 	bl	80088fc <_fflush_r>
 8008ebc:	2800      	cmp	r0, #0
 8008ebe:	d0ea      	beq.n	8008e96 <__sfvwrite_r+0x1b6>
 8008ec0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008ec4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008ec8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008ecc:	81a3      	strh	r3, [r4, #12]
 8008ece:	b003      	add	sp, #12
 8008ed0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008ed4:	6923      	ldr	r3, [r4, #16]
 8008ed6:	4283      	cmp	r3, r0
 8008ed8:	d315      	bcc.n	8008f06 <__sfvwrite_r+0x226>
 8008eda:	6961      	ldr	r1, [r4, #20]
 8008edc:	42a9      	cmp	r1, r5
 8008ede:	d812      	bhi.n	8008f06 <__sfvwrite_r+0x226>
 8008ee0:	4b3c      	ldr	r3, [pc, #240]	; (8008fd4 <__sfvwrite_r+0x2f4>)
 8008ee2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008ee4:	429d      	cmp	r5, r3
 8008ee6:	bf94      	ite	ls
 8008ee8:	462b      	movls	r3, r5
 8008eea:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008eee:	464a      	mov	r2, r9
 8008ef0:	fb93 f3f1 	sdiv	r3, r3, r1
 8008ef4:	4650      	mov	r0, sl
 8008ef6:	fb01 f303 	mul.w	r3, r1, r3
 8008efa:	69e1      	ldr	r1, [r4, #28]
 8008efc:	47b8      	blx	r7
 8008efe:	1e07      	subs	r7, r0, #0
 8008f00:	ddde      	ble.n	8008ec0 <__sfvwrite_r+0x1e0>
 8008f02:	1bed      	subs	r5, r5, r7
 8008f04:	e78e      	b.n	8008e24 <__sfvwrite_r+0x144>
 8008f06:	42af      	cmp	r7, r5
 8008f08:	bf28      	it	cs
 8008f0a:	462f      	movcs	r7, r5
 8008f0c:	463a      	mov	r2, r7
 8008f0e:	4649      	mov	r1, r9
 8008f10:	f000 fbc0 	bl	8009694 <memmove>
 8008f14:	68a3      	ldr	r3, [r4, #8]
 8008f16:	6822      	ldr	r2, [r4, #0]
 8008f18:	1bdb      	subs	r3, r3, r7
 8008f1a:	443a      	add	r2, r7
 8008f1c:	60a3      	str	r3, [r4, #8]
 8008f1e:	6022      	str	r2, [r4, #0]
 8008f20:	2b00      	cmp	r3, #0
 8008f22:	d1ee      	bne.n	8008f02 <__sfvwrite_r+0x222>
 8008f24:	4621      	mov	r1, r4
 8008f26:	4650      	mov	r0, sl
 8008f28:	f7ff fce8 	bl	80088fc <_fflush_r>
 8008f2c:	2800      	cmp	r0, #0
 8008f2e:	d0e8      	beq.n	8008f02 <__sfvwrite_r+0x222>
 8008f30:	e7c6      	b.n	8008ec0 <__sfvwrite_r+0x1e0>
 8008f32:	f10b 0308 	add.w	r3, fp, #8
 8008f36:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8008f3a:	469b      	mov	fp, r3
 8008f3c:	3308      	adds	r3, #8
 8008f3e:	2f00      	cmp	r7, #0
 8008f40:	d0f9      	beq.n	8008f36 <__sfvwrite_r+0x256>
 8008f42:	463a      	mov	r2, r7
 8008f44:	210a      	movs	r1, #10
 8008f46:	4630      	mov	r0, r6
 8008f48:	f7f8 f8ca 	bl	80010e0 <memchr>
 8008f4c:	b338      	cbz	r0, 8008f9e <__sfvwrite_r+0x2be>
 8008f4e:	3001      	adds	r0, #1
 8008f50:	eba0 0906 	sub.w	r9, r0, r6
 8008f54:	e783      	b.n	8008e5e <__sfvwrite_r+0x17e>
 8008f56:	462f      	mov	r7, r5
 8008f58:	46ab      	mov	fp, r5
 8008f5a:	e757      	b.n	8008e0c <__sfvwrite_r+0x12c>
 8008f5c:	4631      	mov	r1, r6
 8008f5e:	462a      	mov	r2, r5
 8008f60:	f000 fb98 	bl	8009694 <memmove>
 8008f64:	6823      	ldr	r3, [r4, #0]
 8008f66:	442b      	add	r3, r5
 8008f68:	6023      	str	r3, [r4, #0]
 8008f6a:	4621      	mov	r1, r4
 8008f6c:	4650      	mov	r0, sl
 8008f6e:	f7ff fcc5 	bl	80088fc <_fflush_r>
 8008f72:	2800      	cmp	r0, #0
 8008f74:	d08b      	beq.n	8008e8e <__sfvwrite_r+0x1ae>
 8008f76:	e7a3      	b.n	8008ec0 <__sfvwrite_r+0x1e0>
 8008f78:	4650      	mov	r0, sl
 8008f7a:	f000 ff05 	bl	8009d88 <_realloc_r>
 8008f7e:	4603      	mov	r3, r0
 8008f80:	2800      	cmp	r0, #0
 8008f82:	f47f af39 	bne.w	8008df8 <__sfvwrite_r+0x118>
 8008f86:	6921      	ldr	r1, [r4, #16]
 8008f88:	4650      	mov	r0, sl
 8008f8a:	f7ff fdb5 	bl	8008af8 <_free_r>
 8008f8e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008f92:	220c      	movs	r2, #12
 8008f94:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008f98:	f8ca 2000 	str.w	r2, [sl]
 8008f9c:	e792      	b.n	8008ec4 <__sfvwrite_r+0x1e4>
 8008f9e:	f107 0901 	add.w	r9, r7, #1
 8008fa2:	e75c      	b.n	8008e5e <__sfvwrite_r+0x17e>
 8008fa4:	461a      	mov	r2, r3
 8008fa6:	4631      	mov	r1, r6
 8008fa8:	9301      	str	r3, [sp, #4]
 8008faa:	f000 fb73 	bl	8009694 <memmove>
 8008fae:	9b01      	ldr	r3, [sp, #4]
 8008fb0:	68a1      	ldr	r1, [r4, #8]
 8008fb2:	6822      	ldr	r2, [r4, #0]
 8008fb4:	1ac9      	subs	r1, r1, r3
 8008fb6:	441a      	add	r2, r3
 8008fb8:	60a1      	str	r1, [r4, #8]
 8008fba:	6022      	str	r2, [r4, #0]
 8008fbc:	461d      	mov	r5, r3
 8008fbe:	e766      	b.n	8008e8e <__sfvwrite_r+0x1ae>
 8008fc0:	230c      	movs	r3, #12
 8008fc2:	f8ca 3000 	str.w	r3, [sl]
 8008fc6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008fca:	e77b      	b.n	8008ec4 <__sfvwrite_r+0x1e4>
 8008fcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008fd0:	e76b      	b.n	8008eaa <__sfvwrite_r+0x1ca>
 8008fd2:	bf00      	nop
 8008fd4:	7ffffffe 	.word	0x7ffffffe
 8008fd8:	7ffffc00 	.word	0x7ffffc00

08008fdc <_fwalk_reent>:
 8008fdc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008fe0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8008fe4:	d01f      	beq.n	8009026 <_fwalk_reent+0x4a>
 8008fe6:	4688      	mov	r8, r1
 8008fe8:	4606      	mov	r6, r0
 8008fea:	f04f 0900 	mov.w	r9, #0
 8008fee:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8008ff2:	3d01      	subs	r5, #1
 8008ff4:	d411      	bmi.n	800901a <_fwalk_reent+0x3e>
 8008ff6:	89a3      	ldrh	r3, [r4, #12]
 8008ff8:	2b01      	cmp	r3, #1
 8008ffa:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008ffe:	4621      	mov	r1, r4
 8009000:	4630      	mov	r0, r6
 8009002:	d906      	bls.n	8009012 <_fwalk_reent+0x36>
 8009004:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8009008:	3301      	adds	r3, #1
 800900a:	d002      	beq.n	8009012 <_fwalk_reent+0x36>
 800900c:	47c0      	blx	r8
 800900e:	ea49 0900 	orr.w	r9, r9, r0
 8009012:	1c6b      	adds	r3, r5, #1
 8009014:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8009018:	d1ed      	bne.n	8008ff6 <_fwalk_reent+0x1a>
 800901a:	683f      	ldr	r7, [r7, #0]
 800901c:	2f00      	cmp	r7, #0
 800901e:	d1e6      	bne.n	8008fee <_fwalk_reent+0x12>
 8009020:	4648      	mov	r0, r9
 8009022:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009026:	46b9      	mov	r9, r7
 8009028:	4648      	mov	r0, r9
 800902a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800902e:	bf00      	nop

08009030 <_localeconv_r>:
 8009030:	4a04      	ldr	r2, [pc, #16]	; (8009044 <_localeconv_r+0x14>)
 8009032:	4b05      	ldr	r3, [pc, #20]	; (8009048 <_localeconv_r+0x18>)
 8009034:	6812      	ldr	r2, [r2, #0]
 8009036:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8009038:	2800      	cmp	r0, #0
 800903a:	bf08      	it	eq
 800903c:	4618      	moveq	r0, r3
 800903e:	30f0      	adds	r0, #240	; 0xf0
 8009040:	4770      	bx	lr
 8009042:	bf00      	nop
 8009044:	2000001c 	.word	0x2000001c
 8009048:	2000085c 	.word	0x2000085c

0800904c <__retarget_lock_init_recursive>:
 800904c:	4770      	bx	lr
 800904e:	bf00      	nop

08009050 <__retarget_lock_close_recursive>:
 8009050:	4770      	bx	lr
 8009052:	bf00      	nop

08009054 <__retarget_lock_acquire_recursive>:
 8009054:	4770      	bx	lr
 8009056:	bf00      	nop

08009058 <__retarget_lock_release_recursive>:
 8009058:	4770      	bx	lr
 800905a:	bf00      	nop

0800905c <__swhatbuf_r>:
 800905c:	b570      	push	{r4, r5, r6, lr}
 800905e:	460c      	mov	r4, r1
 8009060:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009064:	2900      	cmp	r1, #0
 8009066:	b096      	sub	sp, #88	; 0x58
 8009068:	4615      	mov	r5, r2
 800906a:	461e      	mov	r6, r3
 800906c:	da0f      	bge.n	800908e <__swhatbuf_r+0x32>
 800906e:	89a2      	ldrh	r2, [r4, #12]
 8009070:	2300      	movs	r3, #0
 8009072:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8009076:	6033      	str	r3, [r6, #0]
 8009078:	d104      	bne.n	8009084 <__swhatbuf_r+0x28>
 800907a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800907e:	602b      	str	r3, [r5, #0]
 8009080:	b016      	add	sp, #88	; 0x58
 8009082:	bd70      	pop	{r4, r5, r6, pc}
 8009084:	2240      	movs	r2, #64	; 0x40
 8009086:	4618      	mov	r0, r3
 8009088:	602a      	str	r2, [r5, #0]
 800908a:	b016      	add	sp, #88	; 0x58
 800908c:	bd70      	pop	{r4, r5, r6, pc}
 800908e:	466a      	mov	r2, sp
 8009090:	f001 fad0 	bl	800a634 <_fstat_r>
 8009094:	2800      	cmp	r0, #0
 8009096:	dbea      	blt.n	800906e <__swhatbuf_r+0x12>
 8009098:	9b01      	ldr	r3, [sp, #4]
 800909a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800909e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80090a2:	fab3 f383 	clz	r3, r3
 80090a6:	095b      	lsrs	r3, r3, #5
 80090a8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80090ac:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80090b0:	6033      	str	r3, [r6, #0]
 80090b2:	602a      	str	r2, [r5, #0]
 80090b4:	b016      	add	sp, #88	; 0x58
 80090b6:	bd70      	pop	{r4, r5, r6, pc}

080090b8 <__smakebuf_r>:
 80090b8:	898a      	ldrh	r2, [r1, #12]
 80090ba:	0792      	lsls	r2, r2, #30
 80090bc:	460b      	mov	r3, r1
 80090be:	d506      	bpl.n	80090ce <__smakebuf_r+0x16>
 80090c0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80090c4:	2101      	movs	r1, #1
 80090c6:	601a      	str	r2, [r3, #0]
 80090c8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80090cc:	4770      	bx	lr
 80090ce:	b570      	push	{r4, r5, r6, lr}
 80090d0:	b082      	sub	sp, #8
 80090d2:	ab01      	add	r3, sp, #4
 80090d4:	466a      	mov	r2, sp
 80090d6:	460c      	mov	r4, r1
 80090d8:	4605      	mov	r5, r0
 80090da:	f7ff ffbf 	bl	800905c <__swhatbuf_r>
 80090de:	9900      	ldr	r1, [sp, #0]
 80090e0:	4606      	mov	r6, r0
 80090e2:	4628      	mov	r0, r5
 80090e4:	f000 f832 	bl	800914c <_malloc_r>
 80090e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80090ec:	b1d8      	cbz	r0, 8009126 <__smakebuf_r+0x6e>
 80090ee:	4916      	ldr	r1, [pc, #88]	; (8009148 <__smakebuf_r+0x90>)
 80090f0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80090f2:	9a01      	ldr	r2, [sp, #4]
 80090f4:	9900      	ldr	r1, [sp, #0]
 80090f6:	6020      	str	r0, [r4, #0]
 80090f8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80090fc:	81a3      	strh	r3, [r4, #12]
 80090fe:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8009102:	b91a      	cbnz	r2, 800910c <__smakebuf_r+0x54>
 8009104:	4333      	orrs	r3, r6
 8009106:	81a3      	strh	r3, [r4, #12]
 8009108:	b002      	add	sp, #8
 800910a:	bd70      	pop	{r4, r5, r6, pc}
 800910c:	4628      	mov	r0, r5
 800910e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009112:	f001 faa3 	bl	800a65c <_isatty_r>
 8009116:	b1a0      	cbz	r0, 8009142 <__smakebuf_r+0x8a>
 8009118:	89a3      	ldrh	r3, [r4, #12]
 800911a:	f023 0303 	bic.w	r3, r3, #3
 800911e:	f043 0301 	orr.w	r3, r3, #1
 8009122:	b21b      	sxth	r3, r3
 8009124:	e7ee      	b.n	8009104 <__smakebuf_r+0x4c>
 8009126:	059a      	lsls	r2, r3, #22
 8009128:	d4ee      	bmi.n	8009108 <__smakebuf_r+0x50>
 800912a:	f023 0303 	bic.w	r3, r3, #3
 800912e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8009132:	f043 0302 	orr.w	r3, r3, #2
 8009136:	2101      	movs	r1, #1
 8009138:	81a3      	strh	r3, [r4, #12]
 800913a:	6022      	str	r2, [r4, #0]
 800913c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8009140:	e7e2      	b.n	8009108 <__smakebuf_r+0x50>
 8009142:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009146:	e7dd      	b.n	8009104 <__smakebuf_r+0x4c>
 8009148:	080089a9 	.word	0x080089a9

0800914c <_malloc_r>:
 800914c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009150:	f101 050b 	add.w	r5, r1, #11
 8009154:	2d16      	cmp	r5, #22
 8009156:	b083      	sub	sp, #12
 8009158:	4606      	mov	r6, r0
 800915a:	d823      	bhi.n	80091a4 <_malloc_r+0x58>
 800915c:	2910      	cmp	r1, #16
 800915e:	f200 80b9 	bhi.w	80092d4 <_malloc_r+0x188>
 8009162:	f000 fafb 	bl	800975c <__malloc_lock>
 8009166:	2510      	movs	r5, #16
 8009168:	2318      	movs	r3, #24
 800916a:	2002      	movs	r0, #2
 800916c:	4fc5      	ldr	r7, [pc, #788]	; (8009484 <_malloc_r+0x338>)
 800916e:	443b      	add	r3, r7
 8009170:	f1a3 0208 	sub.w	r2, r3, #8
 8009174:	685c      	ldr	r4, [r3, #4]
 8009176:	4294      	cmp	r4, r2
 8009178:	f000 8166 	beq.w	8009448 <_malloc_r+0x2fc>
 800917c:	6863      	ldr	r3, [r4, #4]
 800917e:	f023 0303 	bic.w	r3, r3, #3
 8009182:	4423      	add	r3, r4
 8009184:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8009188:	685a      	ldr	r2, [r3, #4]
 800918a:	60e9      	str	r1, [r5, #12]
 800918c:	f042 0201 	orr.w	r2, r2, #1
 8009190:	608d      	str	r5, [r1, #8]
 8009192:	4630      	mov	r0, r6
 8009194:	605a      	str	r2, [r3, #4]
 8009196:	f000 fae7 	bl	8009768 <__malloc_unlock>
 800919a:	3408      	adds	r4, #8
 800919c:	4620      	mov	r0, r4
 800919e:	b003      	add	sp, #12
 80091a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80091a4:	f035 0507 	bics.w	r5, r5, #7
 80091a8:	f100 8094 	bmi.w	80092d4 <_malloc_r+0x188>
 80091ac:	42a9      	cmp	r1, r5
 80091ae:	f200 8091 	bhi.w	80092d4 <_malloc_r+0x188>
 80091b2:	f000 fad3 	bl	800975c <__malloc_lock>
 80091b6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80091ba:	f0c0 8183 	bcc.w	80094c4 <_malloc_r+0x378>
 80091be:	0a6b      	lsrs	r3, r5, #9
 80091c0:	f000 808f 	beq.w	80092e2 <_malloc_r+0x196>
 80091c4:	2b04      	cmp	r3, #4
 80091c6:	f200 8146 	bhi.w	8009456 <_malloc_r+0x30a>
 80091ca:	09ab      	lsrs	r3, r5, #6
 80091cc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80091d0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80091d4:	00c3      	lsls	r3, r0, #3
 80091d6:	4fab      	ldr	r7, [pc, #684]	; (8009484 <_malloc_r+0x338>)
 80091d8:	443b      	add	r3, r7
 80091da:	f1a3 0108 	sub.w	r1, r3, #8
 80091de:	685c      	ldr	r4, [r3, #4]
 80091e0:	42a1      	cmp	r1, r4
 80091e2:	d106      	bne.n	80091f2 <_malloc_r+0xa6>
 80091e4:	e00c      	b.n	8009200 <_malloc_r+0xb4>
 80091e6:	2a00      	cmp	r2, #0
 80091e8:	f280 811d 	bge.w	8009426 <_malloc_r+0x2da>
 80091ec:	68e4      	ldr	r4, [r4, #12]
 80091ee:	42a1      	cmp	r1, r4
 80091f0:	d006      	beq.n	8009200 <_malloc_r+0xb4>
 80091f2:	6863      	ldr	r3, [r4, #4]
 80091f4:	f023 0303 	bic.w	r3, r3, #3
 80091f8:	1b5a      	subs	r2, r3, r5
 80091fa:	2a0f      	cmp	r2, #15
 80091fc:	ddf3      	ble.n	80091e6 <_malloc_r+0x9a>
 80091fe:	4660      	mov	r0, ip
 8009200:	693c      	ldr	r4, [r7, #16]
 8009202:	f8df c294 	ldr.w	ip, [pc, #660]	; 8009498 <_malloc_r+0x34c>
 8009206:	4564      	cmp	r4, ip
 8009208:	d071      	beq.n	80092ee <_malloc_r+0x1a2>
 800920a:	6863      	ldr	r3, [r4, #4]
 800920c:	f023 0303 	bic.w	r3, r3, #3
 8009210:	1b5a      	subs	r2, r3, r5
 8009212:	2a0f      	cmp	r2, #15
 8009214:	f300 8144 	bgt.w	80094a0 <_malloc_r+0x354>
 8009218:	2a00      	cmp	r2, #0
 800921a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800921e:	f280 8126 	bge.w	800946e <_malloc_r+0x322>
 8009222:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8009226:	f080 8169 	bcs.w	80094fc <_malloc_r+0x3b0>
 800922a:	08db      	lsrs	r3, r3, #3
 800922c:	1c59      	adds	r1, r3, #1
 800922e:	687a      	ldr	r2, [r7, #4]
 8009230:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8009234:	f8c4 8008 	str.w	r8, [r4, #8]
 8009238:	f04f 0e01 	mov.w	lr, #1
 800923c:	109b      	asrs	r3, r3, #2
 800923e:	fa0e f303 	lsl.w	r3, lr, r3
 8009242:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8009246:	4313      	orrs	r3, r2
 8009248:	f1ae 0208 	sub.w	r2, lr, #8
 800924c:	60e2      	str	r2, [r4, #12]
 800924e:	607b      	str	r3, [r7, #4]
 8009250:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8009254:	f8c8 400c 	str.w	r4, [r8, #12]
 8009258:	1082      	asrs	r2, r0, #2
 800925a:	2401      	movs	r4, #1
 800925c:	4094      	lsls	r4, r2
 800925e:	429c      	cmp	r4, r3
 8009260:	d84b      	bhi.n	80092fa <_malloc_r+0x1ae>
 8009262:	421c      	tst	r4, r3
 8009264:	d106      	bne.n	8009274 <_malloc_r+0x128>
 8009266:	f020 0003 	bic.w	r0, r0, #3
 800926a:	0064      	lsls	r4, r4, #1
 800926c:	421c      	tst	r4, r3
 800926e:	f100 0004 	add.w	r0, r0, #4
 8009272:	d0fa      	beq.n	800926a <_malloc_r+0x11e>
 8009274:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8009278:	46ce      	mov	lr, r9
 800927a:	4680      	mov	r8, r0
 800927c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8009280:	459e      	cmp	lr, r3
 8009282:	d107      	bne.n	8009294 <_malloc_r+0x148>
 8009284:	e122      	b.n	80094cc <_malloc_r+0x380>
 8009286:	2a00      	cmp	r2, #0
 8009288:	f280 8129 	bge.w	80094de <_malloc_r+0x392>
 800928c:	68db      	ldr	r3, [r3, #12]
 800928e:	459e      	cmp	lr, r3
 8009290:	f000 811c 	beq.w	80094cc <_malloc_r+0x380>
 8009294:	6859      	ldr	r1, [r3, #4]
 8009296:	f021 0103 	bic.w	r1, r1, #3
 800929a:	1b4a      	subs	r2, r1, r5
 800929c:	2a0f      	cmp	r2, #15
 800929e:	ddf2      	ble.n	8009286 <_malloc_r+0x13a>
 80092a0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80092a4:	195c      	adds	r4, r3, r5
 80092a6:	f045 0501 	orr.w	r5, r5, #1
 80092aa:	605d      	str	r5, [r3, #4]
 80092ac:	f042 0501 	orr.w	r5, r2, #1
 80092b0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80092b4:	4630      	mov	r0, r6
 80092b6:	f8ce 8008 	str.w	r8, [lr, #8]
 80092ba:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80092be:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80092c2:	6065      	str	r5, [r4, #4]
 80092c4:	505a      	str	r2, [r3, r1]
 80092c6:	9301      	str	r3, [sp, #4]
 80092c8:	f000 fa4e 	bl	8009768 <__malloc_unlock>
 80092cc:	9b01      	ldr	r3, [sp, #4]
 80092ce:	f103 0408 	add.w	r4, r3, #8
 80092d2:	e763      	b.n	800919c <_malloc_r+0x50>
 80092d4:	2400      	movs	r4, #0
 80092d6:	230c      	movs	r3, #12
 80092d8:	4620      	mov	r0, r4
 80092da:	6033      	str	r3, [r6, #0]
 80092dc:	b003      	add	sp, #12
 80092de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80092e2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80092e6:	2040      	movs	r0, #64	; 0x40
 80092e8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80092ec:	e773      	b.n	80091d6 <_malloc_r+0x8a>
 80092ee:	687b      	ldr	r3, [r7, #4]
 80092f0:	1082      	asrs	r2, r0, #2
 80092f2:	2401      	movs	r4, #1
 80092f4:	4094      	lsls	r4, r2
 80092f6:	429c      	cmp	r4, r3
 80092f8:	d9b3      	bls.n	8009262 <_malloc_r+0x116>
 80092fa:	68bc      	ldr	r4, [r7, #8]
 80092fc:	6863      	ldr	r3, [r4, #4]
 80092fe:	f023 0903 	bic.w	r9, r3, #3
 8009302:	45a9      	cmp	r9, r5
 8009304:	d303      	bcc.n	800930e <_malloc_r+0x1c2>
 8009306:	eba9 0305 	sub.w	r3, r9, r5
 800930a:	2b0f      	cmp	r3, #15
 800930c:	dc7b      	bgt.n	8009406 <_malloc_r+0x2ba>
 800930e:	4b5e      	ldr	r3, [pc, #376]	; (8009488 <_malloc_r+0x33c>)
 8009310:	f8df a188 	ldr.w	sl, [pc, #392]	; 800949c <_malloc_r+0x350>
 8009314:	681a      	ldr	r2, [r3, #0]
 8009316:	f8da 3000 	ldr.w	r3, [sl]
 800931a:	3301      	adds	r3, #1
 800931c:	eb05 0802 	add.w	r8, r5, r2
 8009320:	f000 8148 	beq.w	80095b4 <_malloc_r+0x468>
 8009324:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8009328:	f108 080f 	add.w	r8, r8, #15
 800932c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8009330:	f028 080f 	bic.w	r8, r8, #15
 8009334:	4641      	mov	r1, r8
 8009336:	4630      	mov	r0, r6
 8009338:	f000 ff08 	bl	800a14c <_sbrk_r>
 800933c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8009340:	4683      	mov	fp, r0
 8009342:	f000 8104 	beq.w	800954e <_malloc_r+0x402>
 8009346:	eb04 0009 	add.w	r0, r4, r9
 800934a:	4558      	cmp	r0, fp
 800934c:	f200 80fd 	bhi.w	800954a <_malloc_r+0x3fe>
 8009350:	4a4e      	ldr	r2, [pc, #312]	; (800948c <_malloc_r+0x340>)
 8009352:	6813      	ldr	r3, [r2, #0]
 8009354:	4443      	add	r3, r8
 8009356:	6013      	str	r3, [r2, #0]
 8009358:	f000 814d 	beq.w	80095f6 <_malloc_r+0x4aa>
 800935c:	f8da 1000 	ldr.w	r1, [sl]
 8009360:	3101      	adds	r1, #1
 8009362:	bf1b      	ittet	ne
 8009364:	ebab 0000 	subne.w	r0, fp, r0
 8009368:	181b      	addne	r3, r3, r0
 800936a:	f8ca b000 	streq.w	fp, [sl]
 800936e:	6013      	strne	r3, [r2, #0]
 8009370:	f01b 0307 	ands.w	r3, fp, #7
 8009374:	f000 8134 	beq.w	80095e0 <_malloc_r+0x494>
 8009378:	f1c3 0108 	rsb	r1, r3, #8
 800937c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8009380:	448b      	add	fp, r1
 8009382:	3308      	adds	r3, #8
 8009384:	44d8      	add	r8, fp
 8009386:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800938a:	eba3 0808 	sub.w	r8, r3, r8
 800938e:	4641      	mov	r1, r8
 8009390:	4630      	mov	r0, r6
 8009392:	9201      	str	r2, [sp, #4]
 8009394:	f000 feda 	bl	800a14c <_sbrk_r>
 8009398:	1c43      	adds	r3, r0, #1
 800939a:	9a01      	ldr	r2, [sp, #4]
 800939c:	f000 8146 	beq.w	800962c <_malloc_r+0x4e0>
 80093a0:	eba0 010b 	sub.w	r1, r0, fp
 80093a4:	4441      	add	r1, r8
 80093a6:	f041 0101 	orr.w	r1, r1, #1
 80093aa:	6813      	ldr	r3, [r2, #0]
 80093ac:	f8c7 b008 	str.w	fp, [r7, #8]
 80093b0:	4443      	add	r3, r8
 80093b2:	42bc      	cmp	r4, r7
 80093b4:	f8cb 1004 	str.w	r1, [fp, #4]
 80093b8:	6013      	str	r3, [r2, #0]
 80093ba:	d015      	beq.n	80093e8 <_malloc_r+0x29c>
 80093bc:	f1b9 0f0f 	cmp.w	r9, #15
 80093c0:	f240 8130 	bls.w	8009624 <_malloc_r+0x4d8>
 80093c4:	6860      	ldr	r0, [r4, #4]
 80093c6:	f1a9 010c 	sub.w	r1, r9, #12
 80093ca:	f021 0107 	bic.w	r1, r1, #7
 80093ce:	f000 0001 	and.w	r0, r0, #1
 80093d2:	eb04 0c01 	add.w	ip, r4, r1
 80093d6:	4308      	orrs	r0, r1
 80093d8:	f04f 0e05 	mov.w	lr, #5
 80093dc:	290f      	cmp	r1, #15
 80093de:	6060      	str	r0, [r4, #4]
 80093e0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80093e4:	f200 813a 	bhi.w	800965c <_malloc_r+0x510>
 80093e8:	4a29      	ldr	r2, [pc, #164]	; (8009490 <_malloc_r+0x344>)
 80093ea:	482a      	ldr	r0, [pc, #168]	; (8009494 <_malloc_r+0x348>)
 80093ec:	6811      	ldr	r1, [r2, #0]
 80093ee:	68bc      	ldr	r4, [r7, #8]
 80093f0:	428b      	cmp	r3, r1
 80093f2:	6801      	ldr	r1, [r0, #0]
 80093f4:	bf88      	it	hi
 80093f6:	6013      	strhi	r3, [r2, #0]
 80093f8:	6862      	ldr	r2, [r4, #4]
 80093fa:	428b      	cmp	r3, r1
 80093fc:	f022 0203 	bic.w	r2, r2, #3
 8009400:	bf88      	it	hi
 8009402:	6003      	strhi	r3, [r0, #0]
 8009404:	e0a7      	b.n	8009556 <_malloc_r+0x40a>
 8009406:	1962      	adds	r2, r4, r5
 8009408:	f043 0301 	orr.w	r3, r3, #1
 800940c:	f045 0501 	orr.w	r5, r5, #1
 8009410:	6065      	str	r5, [r4, #4]
 8009412:	4630      	mov	r0, r6
 8009414:	60ba      	str	r2, [r7, #8]
 8009416:	6053      	str	r3, [r2, #4]
 8009418:	f000 f9a6 	bl	8009768 <__malloc_unlock>
 800941c:	3408      	adds	r4, #8
 800941e:	4620      	mov	r0, r4
 8009420:	b003      	add	sp, #12
 8009422:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009426:	4423      	add	r3, r4
 8009428:	68e1      	ldr	r1, [r4, #12]
 800942a:	685a      	ldr	r2, [r3, #4]
 800942c:	68a5      	ldr	r5, [r4, #8]
 800942e:	f042 0201 	orr.w	r2, r2, #1
 8009432:	60e9      	str	r1, [r5, #12]
 8009434:	4630      	mov	r0, r6
 8009436:	608d      	str	r5, [r1, #8]
 8009438:	605a      	str	r2, [r3, #4]
 800943a:	f000 f995 	bl	8009768 <__malloc_unlock>
 800943e:	3408      	adds	r4, #8
 8009440:	4620      	mov	r0, r4
 8009442:	b003      	add	sp, #12
 8009444:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009448:	68dc      	ldr	r4, [r3, #12]
 800944a:	42a3      	cmp	r3, r4
 800944c:	bf08      	it	eq
 800944e:	3002      	addeq	r0, #2
 8009450:	f43f aed6 	beq.w	8009200 <_malloc_r+0xb4>
 8009454:	e692      	b.n	800917c <_malloc_r+0x30>
 8009456:	2b14      	cmp	r3, #20
 8009458:	d971      	bls.n	800953e <_malloc_r+0x3f2>
 800945a:	2b54      	cmp	r3, #84	; 0x54
 800945c:	f200 80ad 	bhi.w	80095ba <_malloc_r+0x46e>
 8009460:	0b2b      	lsrs	r3, r5, #12
 8009462:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8009466:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800946a:	00c3      	lsls	r3, r0, #3
 800946c:	e6b3      	b.n	80091d6 <_malloc_r+0x8a>
 800946e:	4423      	add	r3, r4
 8009470:	4630      	mov	r0, r6
 8009472:	685a      	ldr	r2, [r3, #4]
 8009474:	f042 0201 	orr.w	r2, r2, #1
 8009478:	605a      	str	r2, [r3, #4]
 800947a:	3408      	adds	r4, #8
 800947c:	f000 f974 	bl	8009768 <__malloc_unlock>
 8009480:	e68c      	b.n	800919c <_malloc_r+0x50>
 8009482:	bf00      	nop
 8009484:	2000044c 	.word	0x2000044c
 8009488:	20000a9c 	.word	0x20000a9c
 800948c:	20000a6c 	.word	0x20000a6c
 8009490:	20000a94 	.word	0x20000a94
 8009494:	20000a98 	.word	0x20000a98
 8009498:	20000454 	.word	0x20000454
 800949c:	20000854 	.word	0x20000854
 80094a0:	1961      	adds	r1, r4, r5
 80094a2:	f045 0e01 	orr.w	lr, r5, #1
 80094a6:	f042 0501 	orr.w	r5, r2, #1
 80094aa:	f8c4 e004 	str.w	lr, [r4, #4]
 80094ae:	4630      	mov	r0, r6
 80094b0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80094b4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80094b8:	604d      	str	r5, [r1, #4]
 80094ba:	50e2      	str	r2, [r4, r3]
 80094bc:	f000 f954 	bl	8009768 <__malloc_unlock>
 80094c0:	3408      	adds	r4, #8
 80094c2:	e66b      	b.n	800919c <_malloc_r+0x50>
 80094c4:	08e8      	lsrs	r0, r5, #3
 80094c6:	f105 0308 	add.w	r3, r5, #8
 80094ca:	e64f      	b.n	800916c <_malloc_r+0x20>
 80094cc:	f108 0801 	add.w	r8, r8, #1
 80094d0:	f018 0f03 	tst.w	r8, #3
 80094d4:	f10e 0e08 	add.w	lr, lr, #8
 80094d8:	f47f aed0 	bne.w	800927c <_malloc_r+0x130>
 80094dc:	e052      	b.n	8009584 <_malloc_r+0x438>
 80094de:	4419      	add	r1, r3
 80094e0:	461c      	mov	r4, r3
 80094e2:	684a      	ldr	r2, [r1, #4]
 80094e4:	68db      	ldr	r3, [r3, #12]
 80094e6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80094ea:	f042 0201 	orr.w	r2, r2, #1
 80094ee:	604a      	str	r2, [r1, #4]
 80094f0:	4630      	mov	r0, r6
 80094f2:	60eb      	str	r3, [r5, #12]
 80094f4:	609d      	str	r5, [r3, #8]
 80094f6:	f000 f937 	bl	8009768 <__malloc_unlock>
 80094fa:	e64f      	b.n	800919c <_malloc_r+0x50>
 80094fc:	0a5a      	lsrs	r2, r3, #9
 80094fe:	2a04      	cmp	r2, #4
 8009500:	d935      	bls.n	800956e <_malloc_r+0x422>
 8009502:	2a14      	cmp	r2, #20
 8009504:	d86f      	bhi.n	80095e6 <_malloc_r+0x49a>
 8009506:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800950a:	00c9      	lsls	r1, r1, #3
 800950c:	325b      	adds	r2, #91	; 0x5b
 800950e:	eb07 0e01 	add.w	lr, r7, r1
 8009512:	5879      	ldr	r1, [r7, r1]
 8009514:	f1ae 0e08 	sub.w	lr, lr, #8
 8009518:	458e      	cmp	lr, r1
 800951a:	d058      	beq.n	80095ce <_malloc_r+0x482>
 800951c:	684a      	ldr	r2, [r1, #4]
 800951e:	f022 0203 	bic.w	r2, r2, #3
 8009522:	429a      	cmp	r2, r3
 8009524:	d902      	bls.n	800952c <_malloc_r+0x3e0>
 8009526:	6889      	ldr	r1, [r1, #8]
 8009528:	458e      	cmp	lr, r1
 800952a:	d1f7      	bne.n	800951c <_malloc_r+0x3d0>
 800952c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8009530:	687b      	ldr	r3, [r7, #4]
 8009532:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8009536:	f8ce 4008 	str.w	r4, [lr, #8]
 800953a:	60cc      	str	r4, [r1, #12]
 800953c:	e68c      	b.n	8009258 <_malloc_r+0x10c>
 800953e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8009542:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8009546:	00c3      	lsls	r3, r0, #3
 8009548:	e645      	b.n	80091d6 <_malloc_r+0x8a>
 800954a:	42bc      	cmp	r4, r7
 800954c:	d072      	beq.n	8009634 <_malloc_r+0x4e8>
 800954e:	68bc      	ldr	r4, [r7, #8]
 8009550:	6862      	ldr	r2, [r4, #4]
 8009552:	f022 0203 	bic.w	r2, r2, #3
 8009556:	4295      	cmp	r5, r2
 8009558:	eba2 0305 	sub.w	r3, r2, r5
 800955c:	d802      	bhi.n	8009564 <_malloc_r+0x418>
 800955e:	2b0f      	cmp	r3, #15
 8009560:	f73f af51 	bgt.w	8009406 <_malloc_r+0x2ba>
 8009564:	4630      	mov	r0, r6
 8009566:	f000 f8ff 	bl	8009768 <__malloc_unlock>
 800956a:	2400      	movs	r4, #0
 800956c:	e616      	b.n	800919c <_malloc_r+0x50>
 800956e:	099a      	lsrs	r2, r3, #6
 8009570:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8009574:	00c9      	lsls	r1, r1, #3
 8009576:	3238      	adds	r2, #56	; 0x38
 8009578:	e7c9      	b.n	800950e <_malloc_r+0x3c2>
 800957a:	f8d9 9000 	ldr.w	r9, [r9]
 800957e:	4599      	cmp	r9, r3
 8009580:	f040 8083 	bne.w	800968a <_malloc_r+0x53e>
 8009584:	f010 0f03 	tst.w	r0, #3
 8009588:	f1a9 0308 	sub.w	r3, r9, #8
 800958c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8009590:	d1f3      	bne.n	800957a <_malloc_r+0x42e>
 8009592:	687b      	ldr	r3, [r7, #4]
 8009594:	ea23 0304 	bic.w	r3, r3, r4
 8009598:	607b      	str	r3, [r7, #4]
 800959a:	0064      	lsls	r4, r4, #1
 800959c:	429c      	cmp	r4, r3
 800959e:	f63f aeac 	bhi.w	80092fa <_malloc_r+0x1ae>
 80095a2:	b91c      	cbnz	r4, 80095ac <_malloc_r+0x460>
 80095a4:	e6a9      	b.n	80092fa <_malloc_r+0x1ae>
 80095a6:	0064      	lsls	r4, r4, #1
 80095a8:	f108 0804 	add.w	r8, r8, #4
 80095ac:	421c      	tst	r4, r3
 80095ae:	d0fa      	beq.n	80095a6 <_malloc_r+0x45a>
 80095b0:	4640      	mov	r0, r8
 80095b2:	e65f      	b.n	8009274 <_malloc_r+0x128>
 80095b4:	f108 0810 	add.w	r8, r8, #16
 80095b8:	e6bc      	b.n	8009334 <_malloc_r+0x1e8>
 80095ba:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80095be:	d826      	bhi.n	800960e <_malloc_r+0x4c2>
 80095c0:	0beb      	lsrs	r3, r5, #15
 80095c2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80095c6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80095ca:	00c3      	lsls	r3, r0, #3
 80095cc:	e603      	b.n	80091d6 <_malloc_r+0x8a>
 80095ce:	687b      	ldr	r3, [r7, #4]
 80095d0:	1092      	asrs	r2, r2, #2
 80095d2:	f04f 0801 	mov.w	r8, #1
 80095d6:	fa08 f202 	lsl.w	r2, r8, r2
 80095da:	4313      	orrs	r3, r2
 80095dc:	607b      	str	r3, [r7, #4]
 80095de:	e7a8      	b.n	8009532 <_malloc_r+0x3e6>
 80095e0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80095e4:	e6ce      	b.n	8009384 <_malloc_r+0x238>
 80095e6:	2a54      	cmp	r2, #84	; 0x54
 80095e8:	d829      	bhi.n	800963e <_malloc_r+0x4f2>
 80095ea:	0b1a      	lsrs	r2, r3, #12
 80095ec:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80095f0:	00c9      	lsls	r1, r1, #3
 80095f2:	326e      	adds	r2, #110	; 0x6e
 80095f4:	e78b      	b.n	800950e <_malloc_r+0x3c2>
 80095f6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80095fa:	2900      	cmp	r1, #0
 80095fc:	f47f aeae 	bne.w	800935c <_malloc_r+0x210>
 8009600:	eb09 0208 	add.w	r2, r9, r8
 8009604:	68b9      	ldr	r1, [r7, #8]
 8009606:	f042 0201 	orr.w	r2, r2, #1
 800960a:	604a      	str	r2, [r1, #4]
 800960c:	e6ec      	b.n	80093e8 <_malloc_r+0x29c>
 800960e:	f240 5254 	movw	r2, #1364	; 0x554
 8009612:	4293      	cmp	r3, r2
 8009614:	d81c      	bhi.n	8009650 <_malloc_r+0x504>
 8009616:	0cab      	lsrs	r3, r5, #18
 8009618:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800961c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8009620:	00c3      	lsls	r3, r0, #3
 8009622:	e5d8      	b.n	80091d6 <_malloc_r+0x8a>
 8009624:	2301      	movs	r3, #1
 8009626:	f8cb 3004 	str.w	r3, [fp, #4]
 800962a:	e79b      	b.n	8009564 <_malloc_r+0x418>
 800962c:	2101      	movs	r1, #1
 800962e:	f04f 0800 	mov.w	r8, #0
 8009632:	e6ba      	b.n	80093aa <_malloc_r+0x25e>
 8009634:	4a16      	ldr	r2, [pc, #88]	; (8009690 <_malloc_r+0x544>)
 8009636:	6813      	ldr	r3, [r2, #0]
 8009638:	4443      	add	r3, r8
 800963a:	6013      	str	r3, [r2, #0]
 800963c:	e68e      	b.n	800935c <_malloc_r+0x210>
 800963e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8009642:	d814      	bhi.n	800966e <_malloc_r+0x522>
 8009644:	0bda      	lsrs	r2, r3, #15
 8009646:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800964a:	00c9      	lsls	r1, r1, #3
 800964c:	3277      	adds	r2, #119	; 0x77
 800964e:	e75e      	b.n	800950e <_malloc_r+0x3c2>
 8009650:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8009654:	207f      	movs	r0, #127	; 0x7f
 8009656:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800965a:	e5bc      	b.n	80091d6 <_malloc_r+0x8a>
 800965c:	f104 0108 	add.w	r1, r4, #8
 8009660:	4630      	mov	r0, r6
 8009662:	9201      	str	r2, [sp, #4]
 8009664:	f7ff fa48 	bl	8008af8 <_free_r>
 8009668:	9a01      	ldr	r2, [sp, #4]
 800966a:	6813      	ldr	r3, [r2, #0]
 800966c:	e6bc      	b.n	80093e8 <_malloc_r+0x29c>
 800966e:	f240 5154 	movw	r1, #1364	; 0x554
 8009672:	428a      	cmp	r2, r1
 8009674:	d805      	bhi.n	8009682 <_malloc_r+0x536>
 8009676:	0c9a      	lsrs	r2, r3, #18
 8009678:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800967c:	00c9      	lsls	r1, r1, #3
 800967e:	327c      	adds	r2, #124	; 0x7c
 8009680:	e745      	b.n	800950e <_malloc_r+0x3c2>
 8009682:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8009686:	227e      	movs	r2, #126	; 0x7e
 8009688:	e741      	b.n	800950e <_malloc_r+0x3c2>
 800968a:	687b      	ldr	r3, [r7, #4]
 800968c:	e785      	b.n	800959a <_malloc_r+0x44e>
 800968e:	bf00      	nop
 8009690:	20000a6c 	.word	0x20000a6c

08009694 <memmove>:
 8009694:	4288      	cmp	r0, r1
 8009696:	b4f0      	push	{r4, r5, r6, r7}
 8009698:	d90d      	bls.n	80096b6 <memmove+0x22>
 800969a:	188b      	adds	r3, r1, r2
 800969c:	4283      	cmp	r3, r0
 800969e:	d90a      	bls.n	80096b6 <memmove+0x22>
 80096a0:	1884      	adds	r4, r0, r2
 80096a2:	b132      	cbz	r2, 80096b2 <memmove+0x1e>
 80096a4:	4622      	mov	r2, r4
 80096a6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80096aa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80096ae:	4299      	cmp	r1, r3
 80096b0:	d1f9      	bne.n	80096a6 <memmove+0x12>
 80096b2:	bcf0      	pop	{r4, r5, r6, r7}
 80096b4:	4770      	bx	lr
 80096b6:	2a0f      	cmp	r2, #15
 80096b8:	d949      	bls.n	800974e <memmove+0xba>
 80096ba:	ea40 0301 	orr.w	r3, r0, r1
 80096be:	079b      	lsls	r3, r3, #30
 80096c0:	d147      	bne.n	8009752 <memmove+0xbe>
 80096c2:	f1a2 0310 	sub.w	r3, r2, #16
 80096c6:	091b      	lsrs	r3, r3, #4
 80096c8:	f101 0720 	add.w	r7, r1, #32
 80096cc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80096d0:	f101 0410 	add.w	r4, r1, #16
 80096d4:	f100 0510 	add.w	r5, r0, #16
 80096d8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80096dc:	f845 6c10 	str.w	r6, [r5, #-16]
 80096e0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80096e4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80096e8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80096ec:	f845 6c08 	str.w	r6, [r5, #-8]
 80096f0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80096f4:	f845 6c04 	str.w	r6, [r5, #-4]
 80096f8:	3410      	adds	r4, #16
 80096fa:	42bc      	cmp	r4, r7
 80096fc:	f105 0510 	add.w	r5, r5, #16
 8009700:	d1ea      	bne.n	80096d8 <memmove+0x44>
 8009702:	3301      	adds	r3, #1
 8009704:	f002 050f 	and.w	r5, r2, #15
 8009708:	011b      	lsls	r3, r3, #4
 800970a:	2d03      	cmp	r5, #3
 800970c:	4419      	add	r1, r3
 800970e:	4403      	add	r3, r0
 8009710:	d921      	bls.n	8009756 <memmove+0xc2>
 8009712:	1f1f      	subs	r7, r3, #4
 8009714:	460e      	mov	r6, r1
 8009716:	462c      	mov	r4, r5
 8009718:	3c04      	subs	r4, #4
 800971a:	f856 cb04 	ldr.w	ip, [r6], #4
 800971e:	f847 cf04 	str.w	ip, [r7, #4]!
 8009722:	2c03      	cmp	r4, #3
 8009724:	d8f8      	bhi.n	8009718 <memmove+0x84>
 8009726:	1f2c      	subs	r4, r5, #4
 8009728:	f024 0403 	bic.w	r4, r4, #3
 800972c:	3404      	adds	r4, #4
 800972e:	4423      	add	r3, r4
 8009730:	4421      	add	r1, r4
 8009732:	f002 0203 	and.w	r2, r2, #3
 8009736:	2a00      	cmp	r2, #0
 8009738:	d0bb      	beq.n	80096b2 <memmove+0x1e>
 800973a:	3b01      	subs	r3, #1
 800973c:	440a      	add	r2, r1
 800973e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8009742:	f803 4f01 	strb.w	r4, [r3, #1]!
 8009746:	4291      	cmp	r1, r2
 8009748:	d1f9      	bne.n	800973e <memmove+0xaa>
 800974a:	bcf0      	pop	{r4, r5, r6, r7}
 800974c:	4770      	bx	lr
 800974e:	4603      	mov	r3, r0
 8009750:	e7f1      	b.n	8009736 <memmove+0xa2>
 8009752:	4603      	mov	r3, r0
 8009754:	e7f1      	b.n	800973a <memmove+0xa6>
 8009756:	462a      	mov	r2, r5
 8009758:	e7ed      	b.n	8009736 <memmove+0xa2>
 800975a:	bf00      	nop

0800975c <__malloc_lock>:
 800975c:	4801      	ldr	r0, [pc, #4]	; (8009764 <__malloc_lock+0x8>)
 800975e:	f7ff bc79 	b.w	8009054 <__retarget_lock_acquire_recursive>
 8009762:	bf00      	nop
 8009764:	20000af8 	.word	0x20000af8

08009768 <__malloc_unlock>:
 8009768:	4801      	ldr	r0, [pc, #4]	; (8009770 <__malloc_unlock+0x8>)
 800976a:	f7ff bc75 	b.w	8009058 <__retarget_lock_release_recursive>
 800976e:	bf00      	nop
 8009770:	20000af8 	.word	0x20000af8

08009774 <_Balloc>:
 8009774:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8009776:	b570      	push	{r4, r5, r6, lr}
 8009778:	4605      	mov	r5, r0
 800977a:	460c      	mov	r4, r1
 800977c:	b14b      	cbz	r3, 8009792 <_Balloc+0x1e>
 800977e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8009782:	b180      	cbz	r0, 80097a6 <_Balloc+0x32>
 8009784:	6802      	ldr	r2, [r0, #0]
 8009786:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800978a:	2300      	movs	r3, #0
 800978c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8009790:	bd70      	pop	{r4, r5, r6, pc}
 8009792:	2221      	movs	r2, #33	; 0x21
 8009794:	2104      	movs	r1, #4
 8009796:	f000 fe1d 	bl	800a3d4 <_calloc_r>
 800979a:	4603      	mov	r3, r0
 800979c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800979e:	2800      	cmp	r0, #0
 80097a0:	d1ed      	bne.n	800977e <_Balloc+0xa>
 80097a2:	2000      	movs	r0, #0
 80097a4:	bd70      	pop	{r4, r5, r6, pc}
 80097a6:	2101      	movs	r1, #1
 80097a8:	fa01 f604 	lsl.w	r6, r1, r4
 80097ac:	1d72      	adds	r2, r6, #5
 80097ae:	4628      	mov	r0, r5
 80097b0:	0092      	lsls	r2, r2, #2
 80097b2:	f000 fe0f 	bl	800a3d4 <_calloc_r>
 80097b6:	2800      	cmp	r0, #0
 80097b8:	d0f3      	beq.n	80097a2 <_Balloc+0x2e>
 80097ba:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80097be:	e7e4      	b.n	800978a <_Balloc+0x16>

080097c0 <_Bfree>:
 80097c0:	b131      	cbz	r1, 80097d0 <_Bfree+0x10>
 80097c2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80097c4:	684a      	ldr	r2, [r1, #4]
 80097c6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80097ca:	6008      	str	r0, [r1, #0]
 80097cc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80097d0:	4770      	bx	lr
 80097d2:	bf00      	nop

080097d4 <__multadd>:
 80097d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80097d6:	690c      	ldr	r4, [r1, #16]
 80097d8:	b083      	sub	sp, #12
 80097da:	460d      	mov	r5, r1
 80097dc:	4606      	mov	r6, r0
 80097de:	f101 0c14 	add.w	ip, r1, #20
 80097e2:	2700      	movs	r7, #0
 80097e4:	f8dc 0000 	ldr.w	r0, [ip]
 80097e8:	b281      	uxth	r1, r0
 80097ea:	fb02 3301 	mla	r3, r2, r1, r3
 80097ee:	0c01      	lsrs	r1, r0, #16
 80097f0:	0c18      	lsrs	r0, r3, #16
 80097f2:	fb02 0101 	mla	r1, r2, r1, r0
 80097f6:	b29b      	uxth	r3, r3
 80097f8:	3701      	adds	r7, #1
 80097fa:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80097fe:	42bc      	cmp	r4, r7
 8009800:	f84c 3b04 	str.w	r3, [ip], #4
 8009804:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8009808:	dcec      	bgt.n	80097e4 <__multadd+0x10>
 800980a:	b13b      	cbz	r3, 800981c <__multadd+0x48>
 800980c:	68aa      	ldr	r2, [r5, #8]
 800980e:	42a2      	cmp	r2, r4
 8009810:	dd07      	ble.n	8009822 <__multadd+0x4e>
 8009812:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8009816:	3401      	adds	r4, #1
 8009818:	6153      	str	r3, [r2, #20]
 800981a:	612c      	str	r4, [r5, #16]
 800981c:	4628      	mov	r0, r5
 800981e:	b003      	add	sp, #12
 8009820:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009822:	6869      	ldr	r1, [r5, #4]
 8009824:	9301      	str	r3, [sp, #4]
 8009826:	3101      	adds	r1, #1
 8009828:	4630      	mov	r0, r6
 800982a:	f7ff ffa3 	bl	8009774 <_Balloc>
 800982e:	692a      	ldr	r2, [r5, #16]
 8009830:	3202      	adds	r2, #2
 8009832:	f105 010c 	add.w	r1, r5, #12
 8009836:	4607      	mov	r7, r0
 8009838:	0092      	lsls	r2, r2, #2
 800983a:	300c      	adds	r0, #12
 800983c:	f7f7 fb42 	bl	8000ec4 <memcpy>
 8009840:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8009842:	6869      	ldr	r1, [r5, #4]
 8009844:	9b01      	ldr	r3, [sp, #4]
 8009846:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800984a:	6028      	str	r0, [r5, #0]
 800984c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8009850:	463d      	mov	r5, r7
 8009852:	e7de      	b.n	8009812 <__multadd+0x3e>

08009854 <__hi0bits>:
 8009854:	0c02      	lsrs	r2, r0, #16
 8009856:	0412      	lsls	r2, r2, #16
 8009858:	4603      	mov	r3, r0
 800985a:	b9c2      	cbnz	r2, 800988e <__hi0bits+0x3a>
 800985c:	0403      	lsls	r3, r0, #16
 800985e:	2010      	movs	r0, #16
 8009860:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8009864:	bf04      	itt	eq
 8009866:	021b      	lsleq	r3, r3, #8
 8009868:	3008      	addeq	r0, #8
 800986a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800986e:	bf04      	itt	eq
 8009870:	011b      	lsleq	r3, r3, #4
 8009872:	3004      	addeq	r0, #4
 8009874:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8009878:	bf04      	itt	eq
 800987a:	009b      	lsleq	r3, r3, #2
 800987c:	3002      	addeq	r0, #2
 800987e:	2b00      	cmp	r3, #0
 8009880:	db04      	blt.n	800988c <__hi0bits+0x38>
 8009882:	005b      	lsls	r3, r3, #1
 8009884:	d501      	bpl.n	800988a <__hi0bits+0x36>
 8009886:	3001      	adds	r0, #1
 8009888:	4770      	bx	lr
 800988a:	2020      	movs	r0, #32
 800988c:	4770      	bx	lr
 800988e:	2000      	movs	r0, #0
 8009890:	e7e6      	b.n	8009860 <__hi0bits+0xc>
 8009892:	bf00      	nop

08009894 <__lo0bits>:
 8009894:	6803      	ldr	r3, [r0, #0]
 8009896:	f013 0207 	ands.w	r2, r3, #7
 800989a:	4601      	mov	r1, r0
 800989c:	d007      	beq.n	80098ae <__lo0bits+0x1a>
 800989e:	07da      	lsls	r2, r3, #31
 80098a0:	d41f      	bmi.n	80098e2 <__lo0bits+0x4e>
 80098a2:	0798      	lsls	r0, r3, #30
 80098a4:	d51f      	bpl.n	80098e6 <__lo0bits+0x52>
 80098a6:	085b      	lsrs	r3, r3, #1
 80098a8:	600b      	str	r3, [r1, #0]
 80098aa:	2001      	movs	r0, #1
 80098ac:	4770      	bx	lr
 80098ae:	b298      	uxth	r0, r3
 80098b0:	b1a0      	cbz	r0, 80098dc <__lo0bits+0x48>
 80098b2:	4610      	mov	r0, r2
 80098b4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80098b8:	bf04      	itt	eq
 80098ba:	0a1b      	lsreq	r3, r3, #8
 80098bc:	3008      	addeq	r0, #8
 80098be:	071a      	lsls	r2, r3, #28
 80098c0:	bf04      	itt	eq
 80098c2:	091b      	lsreq	r3, r3, #4
 80098c4:	3004      	addeq	r0, #4
 80098c6:	079a      	lsls	r2, r3, #30
 80098c8:	bf04      	itt	eq
 80098ca:	089b      	lsreq	r3, r3, #2
 80098cc:	3002      	addeq	r0, #2
 80098ce:	07da      	lsls	r2, r3, #31
 80098d0:	d402      	bmi.n	80098d8 <__lo0bits+0x44>
 80098d2:	085b      	lsrs	r3, r3, #1
 80098d4:	d00b      	beq.n	80098ee <__lo0bits+0x5a>
 80098d6:	3001      	adds	r0, #1
 80098d8:	600b      	str	r3, [r1, #0]
 80098da:	4770      	bx	lr
 80098dc:	0c1b      	lsrs	r3, r3, #16
 80098de:	2010      	movs	r0, #16
 80098e0:	e7e8      	b.n	80098b4 <__lo0bits+0x20>
 80098e2:	2000      	movs	r0, #0
 80098e4:	4770      	bx	lr
 80098e6:	089b      	lsrs	r3, r3, #2
 80098e8:	600b      	str	r3, [r1, #0]
 80098ea:	2002      	movs	r0, #2
 80098ec:	4770      	bx	lr
 80098ee:	2020      	movs	r0, #32
 80098f0:	4770      	bx	lr
 80098f2:	bf00      	nop

080098f4 <__i2b>:
 80098f4:	b510      	push	{r4, lr}
 80098f6:	460c      	mov	r4, r1
 80098f8:	2101      	movs	r1, #1
 80098fa:	f7ff ff3b 	bl	8009774 <_Balloc>
 80098fe:	2201      	movs	r2, #1
 8009900:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8009904:	bd10      	pop	{r4, pc}
 8009906:	bf00      	nop

08009908 <__multiply>:
 8009908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800990c:	690e      	ldr	r6, [r1, #16]
 800990e:	6914      	ldr	r4, [r2, #16]
 8009910:	42a6      	cmp	r6, r4
 8009912:	b083      	sub	sp, #12
 8009914:	460f      	mov	r7, r1
 8009916:	4615      	mov	r5, r2
 8009918:	da04      	bge.n	8009924 <__multiply+0x1c>
 800991a:	4632      	mov	r2, r6
 800991c:	462f      	mov	r7, r5
 800991e:	4626      	mov	r6, r4
 8009920:	460d      	mov	r5, r1
 8009922:	4614      	mov	r4, r2
 8009924:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8009928:	eb06 0804 	add.w	r8, r6, r4
 800992c:	4543      	cmp	r3, r8
 800992e:	bfb8      	it	lt
 8009930:	3101      	addlt	r1, #1
 8009932:	f7ff ff1f 	bl	8009774 <_Balloc>
 8009936:	f100 0914 	add.w	r9, r0, #20
 800993a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800993e:	45f1      	cmp	r9, lr
 8009940:	9000      	str	r0, [sp, #0]
 8009942:	d205      	bcs.n	8009950 <__multiply+0x48>
 8009944:	464b      	mov	r3, r9
 8009946:	2200      	movs	r2, #0
 8009948:	f843 2b04 	str.w	r2, [r3], #4
 800994c:	459e      	cmp	lr, r3
 800994e:	d8fb      	bhi.n	8009948 <__multiply+0x40>
 8009950:	f105 0a14 	add.w	sl, r5, #20
 8009954:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8009958:	f107 0314 	add.w	r3, r7, #20
 800995c:	45a2      	cmp	sl, r4
 800995e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8009962:	d261      	bcs.n	8009a28 <__multiply+0x120>
 8009964:	1b64      	subs	r4, r4, r5
 8009966:	3c15      	subs	r4, #21
 8009968:	f024 0403 	bic.w	r4, r4, #3
 800996c:	f8cd e004 	str.w	lr, [sp, #4]
 8009970:	44a2      	add	sl, r4
 8009972:	f105 0210 	add.w	r2, r5, #16
 8009976:	469e      	mov	lr, r3
 8009978:	e005      	b.n	8009986 <__multiply+0x7e>
 800997a:	0c2d      	lsrs	r5, r5, #16
 800997c:	d12b      	bne.n	80099d6 <__multiply+0xce>
 800997e:	4592      	cmp	sl, r2
 8009980:	f109 0904 	add.w	r9, r9, #4
 8009984:	d04e      	beq.n	8009a24 <__multiply+0x11c>
 8009986:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800998a:	fa1f fb85 	uxth.w	fp, r5
 800998e:	f1bb 0f00 	cmp.w	fp, #0
 8009992:	d0f2      	beq.n	800997a <__multiply+0x72>
 8009994:	4677      	mov	r7, lr
 8009996:	464e      	mov	r6, r9
 8009998:	2000      	movs	r0, #0
 800999a:	e000      	b.n	800999e <__multiply+0x96>
 800999c:	4626      	mov	r6, r4
 800999e:	f857 1b04 	ldr.w	r1, [r7], #4
 80099a2:	6834      	ldr	r4, [r6, #0]
 80099a4:	b28b      	uxth	r3, r1
 80099a6:	b2a5      	uxth	r5, r4
 80099a8:	0c09      	lsrs	r1, r1, #16
 80099aa:	0c24      	lsrs	r4, r4, #16
 80099ac:	fb0b 5303 	mla	r3, fp, r3, r5
 80099b0:	4403      	add	r3, r0
 80099b2:	fb0b 4001 	mla	r0, fp, r1, r4
 80099b6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80099ba:	4634      	mov	r4, r6
 80099bc:	b29b      	uxth	r3, r3
 80099be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80099c2:	45bc      	cmp	ip, r7
 80099c4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80099c8:	f844 3b04 	str.w	r3, [r4], #4
 80099cc:	d8e6      	bhi.n	800999c <__multiply+0x94>
 80099ce:	6070      	str	r0, [r6, #4]
 80099d0:	6815      	ldr	r5, [r2, #0]
 80099d2:	0c2d      	lsrs	r5, r5, #16
 80099d4:	d0d3      	beq.n	800997e <__multiply+0x76>
 80099d6:	f8d9 3000 	ldr.w	r3, [r9]
 80099da:	4676      	mov	r6, lr
 80099dc:	4618      	mov	r0, r3
 80099de:	46cb      	mov	fp, r9
 80099e0:	2100      	movs	r1, #0
 80099e2:	e000      	b.n	80099e6 <__multiply+0xde>
 80099e4:	46a3      	mov	fp, r4
 80099e6:	8834      	ldrh	r4, [r6, #0]
 80099e8:	0c00      	lsrs	r0, r0, #16
 80099ea:	fb05 0004 	mla	r0, r5, r4, r0
 80099ee:	4401      	add	r1, r0
 80099f0:	b29b      	uxth	r3, r3
 80099f2:	465c      	mov	r4, fp
 80099f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80099f8:	f844 3b04 	str.w	r3, [r4], #4
 80099fc:	f856 3b04 	ldr.w	r3, [r6], #4
 8009a00:	f8db 0004 	ldr.w	r0, [fp, #4]
 8009a04:	0c1b      	lsrs	r3, r3, #16
 8009a06:	b287      	uxth	r7, r0
 8009a08:	fb05 7303 	mla	r3, r5, r3, r7
 8009a0c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8009a10:	45b4      	cmp	ip, r6
 8009a12:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8009a16:	d8e5      	bhi.n	80099e4 <__multiply+0xdc>
 8009a18:	4592      	cmp	sl, r2
 8009a1a:	f8cb 3004 	str.w	r3, [fp, #4]
 8009a1e:	f109 0904 	add.w	r9, r9, #4
 8009a22:	d1b0      	bne.n	8009986 <__multiply+0x7e>
 8009a24:	f8dd e004 	ldr.w	lr, [sp, #4]
 8009a28:	f1b8 0f00 	cmp.w	r8, #0
 8009a2c:	dd0b      	ble.n	8009a46 <__multiply+0x13e>
 8009a2e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8009a32:	f1ae 0e04 	sub.w	lr, lr, #4
 8009a36:	b11b      	cbz	r3, 8009a40 <__multiply+0x138>
 8009a38:	e005      	b.n	8009a46 <__multiply+0x13e>
 8009a3a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8009a3e:	b913      	cbnz	r3, 8009a46 <__multiply+0x13e>
 8009a40:	f1b8 0801 	subs.w	r8, r8, #1
 8009a44:	d1f9      	bne.n	8009a3a <__multiply+0x132>
 8009a46:	9800      	ldr	r0, [sp, #0]
 8009a48:	f8c0 8010 	str.w	r8, [r0, #16]
 8009a4c:	b003      	add	sp, #12
 8009a4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009a52:	bf00      	nop

08009a54 <__pow5mult>:
 8009a54:	f012 0303 	ands.w	r3, r2, #3
 8009a58:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009a5c:	4614      	mov	r4, r2
 8009a5e:	4607      	mov	r7, r0
 8009a60:	d12e      	bne.n	8009ac0 <__pow5mult+0x6c>
 8009a62:	460d      	mov	r5, r1
 8009a64:	10a4      	asrs	r4, r4, #2
 8009a66:	d01c      	beq.n	8009aa2 <__pow5mult+0x4e>
 8009a68:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8009a6a:	b396      	cbz	r6, 8009ad2 <__pow5mult+0x7e>
 8009a6c:	07e3      	lsls	r3, r4, #31
 8009a6e:	f04f 0800 	mov.w	r8, #0
 8009a72:	d406      	bmi.n	8009a82 <__pow5mult+0x2e>
 8009a74:	1064      	asrs	r4, r4, #1
 8009a76:	d014      	beq.n	8009aa2 <__pow5mult+0x4e>
 8009a78:	6830      	ldr	r0, [r6, #0]
 8009a7a:	b1a8      	cbz	r0, 8009aa8 <__pow5mult+0x54>
 8009a7c:	4606      	mov	r6, r0
 8009a7e:	07e3      	lsls	r3, r4, #31
 8009a80:	d5f8      	bpl.n	8009a74 <__pow5mult+0x20>
 8009a82:	4632      	mov	r2, r6
 8009a84:	4629      	mov	r1, r5
 8009a86:	4638      	mov	r0, r7
 8009a88:	f7ff ff3e 	bl	8009908 <__multiply>
 8009a8c:	b1b5      	cbz	r5, 8009abc <__pow5mult+0x68>
 8009a8e:	686a      	ldr	r2, [r5, #4]
 8009a90:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009a92:	1064      	asrs	r4, r4, #1
 8009a94:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009a98:	6029      	str	r1, [r5, #0]
 8009a9a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8009a9e:	4605      	mov	r5, r0
 8009aa0:	d1ea      	bne.n	8009a78 <__pow5mult+0x24>
 8009aa2:	4628      	mov	r0, r5
 8009aa4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009aa8:	4632      	mov	r2, r6
 8009aaa:	4631      	mov	r1, r6
 8009aac:	4638      	mov	r0, r7
 8009aae:	f7ff ff2b 	bl	8009908 <__multiply>
 8009ab2:	6030      	str	r0, [r6, #0]
 8009ab4:	f8c0 8000 	str.w	r8, [r0]
 8009ab8:	4606      	mov	r6, r0
 8009aba:	e7e0      	b.n	8009a7e <__pow5mult+0x2a>
 8009abc:	4605      	mov	r5, r0
 8009abe:	e7d9      	b.n	8009a74 <__pow5mult+0x20>
 8009ac0:	3b01      	subs	r3, #1
 8009ac2:	4a0b      	ldr	r2, [pc, #44]	; (8009af0 <__pow5mult+0x9c>)
 8009ac4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8009ac8:	2300      	movs	r3, #0
 8009aca:	f7ff fe83 	bl	80097d4 <__multadd>
 8009ace:	4605      	mov	r5, r0
 8009ad0:	e7c8      	b.n	8009a64 <__pow5mult+0x10>
 8009ad2:	2101      	movs	r1, #1
 8009ad4:	4638      	mov	r0, r7
 8009ad6:	f7ff fe4d 	bl	8009774 <_Balloc>
 8009ada:	f240 2371 	movw	r3, #625	; 0x271
 8009ade:	6143      	str	r3, [r0, #20]
 8009ae0:	2201      	movs	r2, #1
 8009ae2:	2300      	movs	r3, #0
 8009ae4:	6102      	str	r2, [r0, #16]
 8009ae6:	4606      	mov	r6, r0
 8009ae8:	64b8      	str	r0, [r7, #72]	; 0x48
 8009aea:	6003      	str	r3, [r0, #0]
 8009aec:	e7be      	b.n	8009a6c <__pow5mult+0x18>
 8009aee:	bf00      	nop
 8009af0:	0800ad20 	.word	0x0800ad20

08009af4 <__lshift>:
 8009af4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009af8:	4691      	mov	r9, r2
 8009afa:	690a      	ldr	r2, [r1, #16]
 8009afc:	460e      	mov	r6, r1
 8009afe:	ea4f 1469 	mov.w	r4, r9, asr #5
 8009b02:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8009b06:	eb04 0802 	add.w	r8, r4, r2
 8009b0a:	f108 0501 	add.w	r5, r8, #1
 8009b0e:	429d      	cmp	r5, r3
 8009b10:	4607      	mov	r7, r0
 8009b12:	dd04      	ble.n	8009b1e <__lshift+0x2a>
 8009b14:	005b      	lsls	r3, r3, #1
 8009b16:	429d      	cmp	r5, r3
 8009b18:	f101 0101 	add.w	r1, r1, #1
 8009b1c:	dcfa      	bgt.n	8009b14 <__lshift+0x20>
 8009b1e:	4638      	mov	r0, r7
 8009b20:	f7ff fe28 	bl	8009774 <_Balloc>
 8009b24:	2c00      	cmp	r4, #0
 8009b26:	f100 0314 	add.w	r3, r0, #20
 8009b2a:	dd37      	ble.n	8009b9c <__lshift+0xa8>
 8009b2c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8009b30:	2200      	movs	r2, #0
 8009b32:	f843 2b04 	str.w	r2, [r3], #4
 8009b36:	428b      	cmp	r3, r1
 8009b38:	d1fb      	bne.n	8009b32 <__lshift+0x3e>
 8009b3a:	6934      	ldr	r4, [r6, #16]
 8009b3c:	f106 0314 	add.w	r3, r6, #20
 8009b40:	f019 091f 	ands.w	r9, r9, #31
 8009b44:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8009b48:	d020      	beq.n	8009b8c <__lshift+0x98>
 8009b4a:	f1c9 0e20 	rsb	lr, r9, #32
 8009b4e:	2200      	movs	r2, #0
 8009b50:	e000      	b.n	8009b54 <__lshift+0x60>
 8009b52:	4651      	mov	r1, sl
 8009b54:	681c      	ldr	r4, [r3, #0]
 8009b56:	468a      	mov	sl, r1
 8009b58:	fa04 f409 	lsl.w	r4, r4, r9
 8009b5c:	4314      	orrs	r4, r2
 8009b5e:	f84a 4b04 	str.w	r4, [sl], #4
 8009b62:	f853 2b04 	ldr.w	r2, [r3], #4
 8009b66:	4563      	cmp	r3, ip
 8009b68:	fa22 f20e 	lsr.w	r2, r2, lr
 8009b6c:	d3f1      	bcc.n	8009b52 <__lshift+0x5e>
 8009b6e:	604a      	str	r2, [r1, #4]
 8009b70:	b10a      	cbz	r2, 8009b76 <__lshift+0x82>
 8009b72:	f108 0502 	add.w	r5, r8, #2
 8009b76:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009b78:	6872      	ldr	r2, [r6, #4]
 8009b7a:	3d01      	subs	r5, #1
 8009b7c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009b80:	6105      	str	r5, [r0, #16]
 8009b82:	6031      	str	r1, [r6, #0]
 8009b84:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8009b88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009b8c:	3904      	subs	r1, #4
 8009b8e:	f853 2b04 	ldr.w	r2, [r3], #4
 8009b92:	f841 2f04 	str.w	r2, [r1, #4]!
 8009b96:	459c      	cmp	ip, r3
 8009b98:	d8f9      	bhi.n	8009b8e <__lshift+0x9a>
 8009b9a:	e7ec      	b.n	8009b76 <__lshift+0x82>
 8009b9c:	4619      	mov	r1, r3
 8009b9e:	e7cc      	b.n	8009b3a <__lshift+0x46>

08009ba0 <__mcmp>:
 8009ba0:	b430      	push	{r4, r5}
 8009ba2:	690b      	ldr	r3, [r1, #16]
 8009ba4:	4605      	mov	r5, r0
 8009ba6:	6900      	ldr	r0, [r0, #16]
 8009ba8:	1ac0      	subs	r0, r0, r3
 8009baa:	d10f      	bne.n	8009bcc <__mcmp+0x2c>
 8009bac:	009b      	lsls	r3, r3, #2
 8009bae:	3514      	adds	r5, #20
 8009bb0:	3114      	adds	r1, #20
 8009bb2:	4419      	add	r1, r3
 8009bb4:	442b      	add	r3, r5
 8009bb6:	e001      	b.n	8009bbc <__mcmp+0x1c>
 8009bb8:	429d      	cmp	r5, r3
 8009bba:	d207      	bcs.n	8009bcc <__mcmp+0x2c>
 8009bbc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8009bc0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8009bc4:	4294      	cmp	r4, r2
 8009bc6:	d0f7      	beq.n	8009bb8 <__mcmp+0x18>
 8009bc8:	d302      	bcc.n	8009bd0 <__mcmp+0x30>
 8009bca:	2001      	movs	r0, #1
 8009bcc:	bc30      	pop	{r4, r5}
 8009bce:	4770      	bx	lr
 8009bd0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009bd4:	e7fa      	b.n	8009bcc <__mcmp+0x2c>
 8009bd6:	bf00      	nop

08009bd8 <__mdiff>:
 8009bd8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009bdc:	6913      	ldr	r3, [r2, #16]
 8009bde:	690d      	ldr	r5, [r1, #16]
 8009be0:	1aed      	subs	r5, r5, r3
 8009be2:	2d00      	cmp	r5, #0
 8009be4:	460e      	mov	r6, r1
 8009be6:	4690      	mov	r8, r2
 8009be8:	f101 0414 	add.w	r4, r1, #20
 8009bec:	f102 0714 	add.w	r7, r2, #20
 8009bf0:	d114      	bne.n	8009c1c <__mdiff+0x44>
 8009bf2:	009b      	lsls	r3, r3, #2
 8009bf4:	18e2      	adds	r2, r4, r3
 8009bf6:	443b      	add	r3, r7
 8009bf8:	e001      	b.n	8009bfe <__mdiff+0x26>
 8009bfa:	42a2      	cmp	r2, r4
 8009bfc:	d959      	bls.n	8009cb2 <__mdiff+0xda>
 8009bfe:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8009c02:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8009c06:	458c      	cmp	ip, r1
 8009c08:	d0f7      	beq.n	8009bfa <__mdiff+0x22>
 8009c0a:	d209      	bcs.n	8009c20 <__mdiff+0x48>
 8009c0c:	4622      	mov	r2, r4
 8009c0e:	4633      	mov	r3, r6
 8009c10:	463c      	mov	r4, r7
 8009c12:	4646      	mov	r6, r8
 8009c14:	4617      	mov	r7, r2
 8009c16:	4698      	mov	r8, r3
 8009c18:	2501      	movs	r5, #1
 8009c1a:	e001      	b.n	8009c20 <__mdiff+0x48>
 8009c1c:	dbf6      	blt.n	8009c0c <__mdiff+0x34>
 8009c1e:	2500      	movs	r5, #0
 8009c20:	6871      	ldr	r1, [r6, #4]
 8009c22:	f7ff fda7 	bl	8009774 <_Balloc>
 8009c26:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8009c2a:	6936      	ldr	r6, [r6, #16]
 8009c2c:	60c5      	str	r5, [r0, #12]
 8009c2e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8009c32:	46bc      	mov	ip, r7
 8009c34:	f100 0514 	add.w	r5, r0, #20
 8009c38:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8009c3c:	2300      	movs	r3, #0
 8009c3e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8009c42:	f854 8b04 	ldr.w	r8, [r4], #4
 8009c46:	b28a      	uxth	r2, r1
 8009c48:	fa13 f388 	uxtah	r3, r3, r8
 8009c4c:	0c09      	lsrs	r1, r1, #16
 8009c4e:	1a9a      	subs	r2, r3, r2
 8009c50:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8009c54:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8009c58:	b292      	uxth	r2, r2
 8009c5a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8009c5e:	45e6      	cmp	lr, ip
 8009c60:	f845 2b04 	str.w	r2, [r5], #4
 8009c64:	ea4f 4323 	mov.w	r3, r3, asr #16
 8009c68:	d8e9      	bhi.n	8009c3e <__mdiff+0x66>
 8009c6a:	42a7      	cmp	r7, r4
 8009c6c:	d917      	bls.n	8009c9e <__mdiff+0xc6>
 8009c6e:	46ae      	mov	lr, r5
 8009c70:	46a4      	mov	ip, r4
 8009c72:	f85c 2b04 	ldr.w	r2, [ip], #4
 8009c76:	fa13 f382 	uxtah	r3, r3, r2
 8009c7a:	1419      	asrs	r1, r3, #16
 8009c7c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8009c80:	b29b      	uxth	r3, r3
 8009c82:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8009c86:	4567      	cmp	r7, ip
 8009c88:	f84e 2b04 	str.w	r2, [lr], #4
 8009c8c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8009c90:	d8ef      	bhi.n	8009c72 <__mdiff+0x9a>
 8009c92:	43e4      	mvns	r4, r4
 8009c94:	4427      	add	r7, r4
 8009c96:	f027 0703 	bic.w	r7, r7, #3
 8009c9a:	3704      	adds	r7, #4
 8009c9c:	443d      	add	r5, r7
 8009c9e:	3d04      	subs	r5, #4
 8009ca0:	b922      	cbnz	r2, 8009cac <__mdiff+0xd4>
 8009ca2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8009ca6:	3e01      	subs	r6, #1
 8009ca8:	2b00      	cmp	r3, #0
 8009caa:	d0fa      	beq.n	8009ca2 <__mdiff+0xca>
 8009cac:	6106      	str	r6, [r0, #16]
 8009cae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009cb2:	2100      	movs	r1, #0
 8009cb4:	f7ff fd5e 	bl	8009774 <_Balloc>
 8009cb8:	2201      	movs	r2, #1
 8009cba:	2300      	movs	r3, #0
 8009cbc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8009cc0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009cc4 <__d2b>:
 8009cc4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009cc8:	460f      	mov	r7, r1
 8009cca:	b083      	sub	sp, #12
 8009ccc:	2101      	movs	r1, #1
 8009cce:	ec55 4b10 	vmov	r4, r5, d0
 8009cd2:	4616      	mov	r6, r2
 8009cd4:	f7ff fd4e 	bl	8009774 <_Balloc>
 8009cd8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8009cdc:	4681      	mov	r9, r0
 8009cde:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8009ce2:	f1b8 0f00 	cmp.w	r8, #0
 8009ce6:	d001      	beq.n	8009cec <__d2b+0x28>
 8009ce8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009cec:	2c00      	cmp	r4, #0
 8009cee:	9301      	str	r3, [sp, #4]
 8009cf0:	d024      	beq.n	8009d3c <__d2b+0x78>
 8009cf2:	a802      	add	r0, sp, #8
 8009cf4:	f840 4d08 	str.w	r4, [r0, #-8]!
 8009cf8:	f7ff fdcc 	bl	8009894 <__lo0bits>
 8009cfc:	2800      	cmp	r0, #0
 8009cfe:	d136      	bne.n	8009d6e <__d2b+0xaa>
 8009d00:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009d04:	f8c9 2014 	str.w	r2, [r9, #20]
 8009d08:	2b00      	cmp	r3, #0
 8009d0a:	bf0c      	ite	eq
 8009d0c:	2101      	moveq	r1, #1
 8009d0e:	2102      	movne	r1, #2
 8009d10:	f8c9 3018 	str.w	r3, [r9, #24]
 8009d14:	f8c9 1010 	str.w	r1, [r9, #16]
 8009d18:	f1b8 0f00 	cmp.w	r8, #0
 8009d1c:	d11b      	bne.n	8009d56 <__d2b+0x92>
 8009d1e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8009d22:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8009d26:	6038      	str	r0, [r7, #0]
 8009d28:	6918      	ldr	r0, [r3, #16]
 8009d2a:	f7ff fd93 	bl	8009854 <__hi0bits>
 8009d2e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8009d32:	6030      	str	r0, [r6, #0]
 8009d34:	4648      	mov	r0, r9
 8009d36:	b003      	add	sp, #12
 8009d38:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009d3c:	a801      	add	r0, sp, #4
 8009d3e:	f7ff fda9 	bl	8009894 <__lo0bits>
 8009d42:	9b01      	ldr	r3, [sp, #4]
 8009d44:	f8c9 3014 	str.w	r3, [r9, #20]
 8009d48:	2101      	movs	r1, #1
 8009d4a:	3020      	adds	r0, #32
 8009d4c:	f8c9 1010 	str.w	r1, [r9, #16]
 8009d50:	f1b8 0f00 	cmp.w	r8, #0
 8009d54:	d0e3      	beq.n	8009d1e <__d2b+0x5a>
 8009d56:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8009d5a:	eb08 0300 	add.w	r3, r8, r0
 8009d5e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8009d62:	603b      	str	r3, [r7, #0]
 8009d64:	6030      	str	r0, [r6, #0]
 8009d66:	4648      	mov	r0, r9
 8009d68:	b003      	add	sp, #12
 8009d6a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009d6e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8009d72:	f1c0 0220 	rsb	r2, r0, #32
 8009d76:	fa03 f202 	lsl.w	r2, r3, r2
 8009d7a:	430a      	orrs	r2, r1
 8009d7c:	40c3      	lsrs	r3, r0
 8009d7e:	9301      	str	r3, [sp, #4]
 8009d80:	f8c9 2014 	str.w	r2, [r9, #20]
 8009d84:	e7c0      	b.n	8009d08 <__d2b+0x44>
 8009d86:	bf00      	nop

08009d88 <_realloc_r>:
 8009d88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009d8c:	4692      	mov	sl, r2
 8009d8e:	b083      	sub	sp, #12
 8009d90:	2900      	cmp	r1, #0
 8009d92:	f000 80a1 	beq.w	8009ed8 <_realloc_r+0x150>
 8009d96:	460d      	mov	r5, r1
 8009d98:	4680      	mov	r8, r0
 8009d9a:	f10a 040b 	add.w	r4, sl, #11
 8009d9e:	f7ff fcdd 	bl	800975c <__malloc_lock>
 8009da2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8009da6:	2c16      	cmp	r4, #22
 8009da8:	f022 0603 	bic.w	r6, r2, #3
 8009dac:	f1a5 0708 	sub.w	r7, r5, #8
 8009db0:	d83e      	bhi.n	8009e30 <_realloc_r+0xa8>
 8009db2:	2410      	movs	r4, #16
 8009db4:	4621      	mov	r1, r4
 8009db6:	45a2      	cmp	sl, r4
 8009db8:	d83f      	bhi.n	8009e3a <_realloc_r+0xb2>
 8009dba:	428e      	cmp	r6, r1
 8009dbc:	eb07 0906 	add.w	r9, r7, r6
 8009dc0:	da74      	bge.n	8009eac <_realloc_r+0x124>
 8009dc2:	4bc7      	ldr	r3, [pc, #796]	; (800a0e0 <_realloc_r+0x358>)
 8009dc4:	6898      	ldr	r0, [r3, #8]
 8009dc6:	4548      	cmp	r0, r9
 8009dc8:	f000 80aa 	beq.w	8009f20 <_realloc_r+0x198>
 8009dcc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8009dd0:	f020 0301 	bic.w	r3, r0, #1
 8009dd4:	444b      	add	r3, r9
 8009dd6:	685b      	ldr	r3, [r3, #4]
 8009dd8:	07db      	lsls	r3, r3, #31
 8009dda:	f140 8083 	bpl.w	8009ee4 <_realloc_r+0x15c>
 8009dde:	07d2      	lsls	r2, r2, #31
 8009de0:	d534      	bpl.n	8009e4c <_realloc_r+0xc4>
 8009de2:	4651      	mov	r1, sl
 8009de4:	4640      	mov	r0, r8
 8009de6:	f7ff f9b1 	bl	800914c <_malloc_r>
 8009dea:	4682      	mov	sl, r0
 8009dec:	b1e0      	cbz	r0, 8009e28 <_realloc_r+0xa0>
 8009dee:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009df2:	f023 0301 	bic.w	r3, r3, #1
 8009df6:	443b      	add	r3, r7
 8009df8:	f1a0 0208 	sub.w	r2, r0, #8
 8009dfc:	4293      	cmp	r3, r2
 8009dfe:	f000 80f9 	beq.w	8009ff4 <_realloc_r+0x26c>
 8009e02:	1f32      	subs	r2, r6, #4
 8009e04:	2a24      	cmp	r2, #36	; 0x24
 8009e06:	f200 8107 	bhi.w	800a018 <_realloc_r+0x290>
 8009e0a:	2a13      	cmp	r2, #19
 8009e0c:	6829      	ldr	r1, [r5, #0]
 8009e0e:	f200 80e6 	bhi.w	8009fde <_realloc_r+0x256>
 8009e12:	4603      	mov	r3, r0
 8009e14:	462a      	mov	r2, r5
 8009e16:	6019      	str	r1, [r3, #0]
 8009e18:	6851      	ldr	r1, [r2, #4]
 8009e1a:	6059      	str	r1, [r3, #4]
 8009e1c:	6892      	ldr	r2, [r2, #8]
 8009e1e:	609a      	str	r2, [r3, #8]
 8009e20:	4629      	mov	r1, r5
 8009e22:	4640      	mov	r0, r8
 8009e24:	f7fe fe68 	bl	8008af8 <_free_r>
 8009e28:	4640      	mov	r0, r8
 8009e2a:	f7ff fc9d 	bl	8009768 <__malloc_unlock>
 8009e2e:	e04f      	b.n	8009ed0 <_realloc_r+0x148>
 8009e30:	f024 0407 	bic.w	r4, r4, #7
 8009e34:	2c00      	cmp	r4, #0
 8009e36:	4621      	mov	r1, r4
 8009e38:	dabd      	bge.n	8009db6 <_realloc_r+0x2e>
 8009e3a:	f04f 0a00 	mov.w	sl, #0
 8009e3e:	230c      	movs	r3, #12
 8009e40:	4650      	mov	r0, sl
 8009e42:	f8c8 3000 	str.w	r3, [r8]
 8009e46:	b003      	add	sp, #12
 8009e48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009e4c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009e50:	eba7 0b03 	sub.w	fp, r7, r3
 8009e54:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009e58:	f022 0203 	bic.w	r2, r2, #3
 8009e5c:	18b3      	adds	r3, r6, r2
 8009e5e:	428b      	cmp	r3, r1
 8009e60:	dbbf      	blt.n	8009de2 <_realloc_r+0x5a>
 8009e62:	46da      	mov	sl, fp
 8009e64:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009e68:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009e6c:	1f32      	subs	r2, r6, #4
 8009e6e:	2a24      	cmp	r2, #36	; 0x24
 8009e70:	60c1      	str	r1, [r0, #12]
 8009e72:	eb0b 0903 	add.w	r9, fp, r3
 8009e76:	6088      	str	r0, [r1, #8]
 8009e78:	f200 80c6 	bhi.w	800a008 <_realloc_r+0x280>
 8009e7c:	2a13      	cmp	r2, #19
 8009e7e:	6829      	ldr	r1, [r5, #0]
 8009e80:	f240 80c0 	bls.w	800a004 <_realloc_r+0x27c>
 8009e84:	f8cb 1008 	str.w	r1, [fp, #8]
 8009e88:	6869      	ldr	r1, [r5, #4]
 8009e8a:	f8cb 100c 	str.w	r1, [fp, #12]
 8009e8e:	2a1b      	cmp	r2, #27
 8009e90:	68a9      	ldr	r1, [r5, #8]
 8009e92:	f200 80d8 	bhi.w	800a046 <_realloc_r+0x2be>
 8009e96:	f10b 0210 	add.w	r2, fp, #16
 8009e9a:	3508      	adds	r5, #8
 8009e9c:	6011      	str	r1, [r2, #0]
 8009e9e:	6869      	ldr	r1, [r5, #4]
 8009ea0:	6051      	str	r1, [r2, #4]
 8009ea2:	68a9      	ldr	r1, [r5, #8]
 8009ea4:	6091      	str	r1, [r2, #8]
 8009ea6:	461e      	mov	r6, r3
 8009ea8:	465f      	mov	r7, fp
 8009eaa:	4655      	mov	r5, sl
 8009eac:	687b      	ldr	r3, [r7, #4]
 8009eae:	1b32      	subs	r2, r6, r4
 8009eb0:	2a0f      	cmp	r2, #15
 8009eb2:	f003 0301 	and.w	r3, r3, #1
 8009eb6:	d822      	bhi.n	8009efe <_realloc_r+0x176>
 8009eb8:	4333      	orrs	r3, r6
 8009eba:	607b      	str	r3, [r7, #4]
 8009ebc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009ec0:	f043 0301 	orr.w	r3, r3, #1
 8009ec4:	f8c9 3004 	str.w	r3, [r9, #4]
 8009ec8:	4640      	mov	r0, r8
 8009eca:	f7ff fc4d 	bl	8009768 <__malloc_unlock>
 8009ece:	46aa      	mov	sl, r5
 8009ed0:	4650      	mov	r0, sl
 8009ed2:	b003      	add	sp, #12
 8009ed4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009ed8:	4611      	mov	r1, r2
 8009eda:	b003      	add	sp, #12
 8009edc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009ee0:	f7ff b934 	b.w	800914c <_malloc_r>
 8009ee4:	f020 0003 	bic.w	r0, r0, #3
 8009ee8:	1833      	adds	r3, r6, r0
 8009eea:	428b      	cmp	r3, r1
 8009eec:	db61      	blt.n	8009fb2 <_realloc_r+0x22a>
 8009eee:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009ef2:	461e      	mov	r6, r3
 8009ef4:	60ca      	str	r2, [r1, #12]
 8009ef6:	eb07 0903 	add.w	r9, r7, r3
 8009efa:	6091      	str	r1, [r2, #8]
 8009efc:	e7d6      	b.n	8009eac <_realloc_r+0x124>
 8009efe:	1939      	adds	r1, r7, r4
 8009f00:	4323      	orrs	r3, r4
 8009f02:	f042 0201 	orr.w	r2, r2, #1
 8009f06:	607b      	str	r3, [r7, #4]
 8009f08:	604a      	str	r2, [r1, #4]
 8009f0a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009f0e:	f043 0301 	orr.w	r3, r3, #1
 8009f12:	3108      	adds	r1, #8
 8009f14:	f8c9 3004 	str.w	r3, [r9, #4]
 8009f18:	4640      	mov	r0, r8
 8009f1a:	f7fe fded 	bl	8008af8 <_free_r>
 8009f1e:	e7d3      	b.n	8009ec8 <_realloc_r+0x140>
 8009f20:	6840      	ldr	r0, [r0, #4]
 8009f22:	f020 0903 	bic.w	r9, r0, #3
 8009f26:	44b1      	add	r9, r6
 8009f28:	f104 0010 	add.w	r0, r4, #16
 8009f2c:	4581      	cmp	r9, r0
 8009f2e:	da77      	bge.n	800a020 <_realloc_r+0x298>
 8009f30:	07d2      	lsls	r2, r2, #31
 8009f32:	f53f af56 	bmi.w	8009de2 <_realloc_r+0x5a>
 8009f36:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8009f3a:	eba7 0b02 	sub.w	fp, r7, r2
 8009f3e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009f42:	f022 0203 	bic.w	r2, r2, #3
 8009f46:	4491      	add	r9, r2
 8009f48:	4548      	cmp	r0, r9
 8009f4a:	dc87      	bgt.n	8009e5c <_realloc_r+0xd4>
 8009f4c:	46da      	mov	sl, fp
 8009f4e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009f52:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009f56:	1f32      	subs	r2, r6, #4
 8009f58:	2a24      	cmp	r2, #36	; 0x24
 8009f5a:	60c1      	str	r1, [r0, #12]
 8009f5c:	6088      	str	r0, [r1, #8]
 8009f5e:	f200 80a1 	bhi.w	800a0a4 <_realloc_r+0x31c>
 8009f62:	2a13      	cmp	r2, #19
 8009f64:	6829      	ldr	r1, [r5, #0]
 8009f66:	f240 809b 	bls.w	800a0a0 <_realloc_r+0x318>
 8009f6a:	f8cb 1008 	str.w	r1, [fp, #8]
 8009f6e:	6869      	ldr	r1, [r5, #4]
 8009f70:	f8cb 100c 	str.w	r1, [fp, #12]
 8009f74:	2a1b      	cmp	r2, #27
 8009f76:	68a9      	ldr	r1, [r5, #8]
 8009f78:	f200 809b 	bhi.w	800a0b2 <_realloc_r+0x32a>
 8009f7c:	f10b 0210 	add.w	r2, fp, #16
 8009f80:	3508      	adds	r5, #8
 8009f82:	6011      	str	r1, [r2, #0]
 8009f84:	6869      	ldr	r1, [r5, #4]
 8009f86:	6051      	str	r1, [r2, #4]
 8009f88:	68a9      	ldr	r1, [r5, #8]
 8009f8a:	6091      	str	r1, [r2, #8]
 8009f8c:	eb0b 0104 	add.w	r1, fp, r4
 8009f90:	eba9 0204 	sub.w	r2, r9, r4
 8009f94:	f042 0201 	orr.w	r2, r2, #1
 8009f98:	6099      	str	r1, [r3, #8]
 8009f9a:	604a      	str	r2, [r1, #4]
 8009f9c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8009fa0:	f003 0301 	and.w	r3, r3, #1
 8009fa4:	431c      	orrs	r4, r3
 8009fa6:	4640      	mov	r0, r8
 8009fa8:	f8cb 4004 	str.w	r4, [fp, #4]
 8009fac:	f7ff fbdc 	bl	8009768 <__malloc_unlock>
 8009fb0:	e78e      	b.n	8009ed0 <_realloc_r+0x148>
 8009fb2:	07d3      	lsls	r3, r2, #31
 8009fb4:	f53f af15 	bmi.w	8009de2 <_realloc_r+0x5a>
 8009fb8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009fbc:	eba7 0b03 	sub.w	fp, r7, r3
 8009fc0:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009fc4:	f022 0203 	bic.w	r2, r2, #3
 8009fc8:	4410      	add	r0, r2
 8009fca:	1983      	adds	r3, r0, r6
 8009fcc:	428b      	cmp	r3, r1
 8009fce:	f6ff af45 	blt.w	8009e5c <_realloc_r+0xd4>
 8009fd2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009fd6:	46da      	mov	sl, fp
 8009fd8:	60ca      	str	r2, [r1, #12]
 8009fda:	6091      	str	r1, [r2, #8]
 8009fdc:	e742      	b.n	8009e64 <_realloc_r+0xdc>
 8009fde:	6001      	str	r1, [r0, #0]
 8009fe0:	686b      	ldr	r3, [r5, #4]
 8009fe2:	6043      	str	r3, [r0, #4]
 8009fe4:	2a1b      	cmp	r2, #27
 8009fe6:	d83a      	bhi.n	800a05e <_realloc_r+0x2d6>
 8009fe8:	f105 0208 	add.w	r2, r5, #8
 8009fec:	f100 0308 	add.w	r3, r0, #8
 8009ff0:	68a9      	ldr	r1, [r5, #8]
 8009ff2:	e710      	b.n	8009e16 <_realloc_r+0x8e>
 8009ff4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009ff8:	f023 0303 	bic.w	r3, r3, #3
 8009ffc:	441e      	add	r6, r3
 8009ffe:	eb07 0906 	add.w	r9, r7, r6
 800a002:	e753      	b.n	8009eac <_realloc_r+0x124>
 800a004:	4652      	mov	r2, sl
 800a006:	e749      	b.n	8009e9c <_realloc_r+0x114>
 800a008:	4629      	mov	r1, r5
 800a00a:	4650      	mov	r0, sl
 800a00c:	461e      	mov	r6, r3
 800a00e:	465f      	mov	r7, fp
 800a010:	f7ff fb40 	bl	8009694 <memmove>
 800a014:	4655      	mov	r5, sl
 800a016:	e749      	b.n	8009eac <_realloc_r+0x124>
 800a018:	4629      	mov	r1, r5
 800a01a:	f7ff fb3b 	bl	8009694 <memmove>
 800a01e:	e6ff      	b.n	8009e20 <_realloc_r+0x98>
 800a020:	4427      	add	r7, r4
 800a022:	eba9 0904 	sub.w	r9, r9, r4
 800a026:	f049 0201 	orr.w	r2, r9, #1
 800a02a:	609f      	str	r7, [r3, #8]
 800a02c:	607a      	str	r2, [r7, #4]
 800a02e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800a032:	f003 0301 	and.w	r3, r3, #1
 800a036:	431c      	orrs	r4, r3
 800a038:	4640      	mov	r0, r8
 800a03a:	f845 4c04 	str.w	r4, [r5, #-4]
 800a03e:	f7ff fb93 	bl	8009768 <__malloc_unlock>
 800a042:	46aa      	mov	sl, r5
 800a044:	e744      	b.n	8009ed0 <_realloc_r+0x148>
 800a046:	f8cb 1010 	str.w	r1, [fp, #16]
 800a04a:	68e9      	ldr	r1, [r5, #12]
 800a04c:	f8cb 1014 	str.w	r1, [fp, #20]
 800a050:	2a24      	cmp	r2, #36	; 0x24
 800a052:	d010      	beq.n	800a076 <_realloc_r+0x2ee>
 800a054:	6929      	ldr	r1, [r5, #16]
 800a056:	f10b 0218 	add.w	r2, fp, #24
 800a05a:	3510      	adds	r5, #16
 800a05c:	e71e      	b.n	8009e9c <_realloc_r+0x114>
 800a05e:	68ab      	ldr	r3, [r5, #8]
 800a060:	6083      	str	r3, [r0, #8]
 800a062:	68eb      	ldr	r3, [r5, #12]
 800a064:	60c3      	str	r3, [r0, #12]
 800a066:	2a24      	cmp	r2, #36	; 0x24
 800a068:	d010      	beq.n	800a08c <_realloc_r+0x304>
 800a06a:	f105 0210 	add.w	r2, r5, #16
 800a06e:	f100 0310 	add.w	r3, r0, #16
 800a072:	6929      	ldr	r1, [r5, #16]
 800a074:	e6cf      	b.n	8009e16 <_realloc_r+0x8e>
 800a076:	692a      	ldr	r2, [r5, #16]
 800a078:	f8cb 2018 	str.w	r2, [fp, #24]
 800a07c:	696a      	ldr	r2, [r5, #20]
 800a07e:	f8cb 201c 	str.w	r2, [fp, #28]
 800a082:	69a9      	ldr	r1, [r5, #24]
 800a084:	f10b 0220 	add.w	r2, fp, #32
 800a088:	3518      	adds	r5, #24
 800a08a:	e707      	b.n	8009e9c <_realloc_r+0x114>
 800a08c:	692b      	ldr	r3, [r5, #16]
 800a08e:	6103      	str	r3, [r0, #16]
 800a090:	696b      	ldr	r3, [r5, #20]
 800a092:	6143      	str	r3, [r0, #20]
 800a094:	69a9      	ldr	r1, [r5, #24]
 800a096:	f105 0218 	add.w	r2, r5, #24
 800a09a:	f100 0318 	add.w	r3, r0, #24
 800a09e:	e6ba      	b.n	8009e16 <_realloc_r+0x8e>
 800a0a0:	4652      	mov	r2, sl
 800a0a2:	e76e      	b.n	8009f82 <_realloc_r+0x1fa>
 800a0a4:	4629      	mov	r1, r5
 800a0a6:	4650      	mov	r0, sl
 800a0a8:	9301      	str	r3, [sp, #4]
 800a0aa:	f7ff faf3 	bl	8009694 <memmove>
 800a0ae:	9b01      	ldr	r3, [sp, #4]
 800a0b0:	e76c      	b.n	8009f8c <_realloc_r+0x204>
 800a0b2:	f8cb 1010 	str.w	r1, [fp, #16]
 800a0b6:	68e9      	ldr	r1, [r5, #12]
 800a0b8:	f8cb 1014 	str.w	r1, [fp, #20]
 800a0bc:	2a24      	cmp	r2, #36	; 0x24
 800a0be:	d004      	beq.n	800a0ca <_realloc_r+0x342>
 800a0c0:	6929      	ldr	r1, [r5, #16]
 800a0c2:	f10b 0218 	add.w	r2, fp, #24
 800a0c6:	3510      	adds	r5, #16
 800a0c8:	e75b      	b.n	8009f82 <_realloc_r+0x1fa>
 800a0ca:	692a      	ldr	r2, [r5, #16]
 800a0cc:	f8cb 2018 	str.w	r2, [fp, #24]
 800a0d0:	696a      	ldr	r2, [r5, #20]
 800a0d2:	f8cb 201c 	str.w	r2, [fp, #28]
 800a0d6:	69a9      	ldr	r1, [r5, #24]
 800a0d8:	f10b 0220 	add.w	r2, fp, #32
 800a0dc:	3518      	adds	r5, #24
 800a0de:	e750      	b.n	8009f82 <_realloc_r+0x1fa>
 800a0e0:	2000044c 	.word	0x2000044c

0800a0e4 <frexp>:
 800a0e4:	ec53 2b10 	vmov	r2, r3, d0
 800a0e8:	b570      	push	{r4, r5, r6, lr}
 800a0ea:	4e16      	ldr	r6, [pc, #88]	; (800a144 <frexp+0x60>)
 800a0ec:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 800a0f0:	2500      	movs	r5, #0
 800a0f2:	42b1      	cmp	r1, r6
 800a0f4:	4604      	mov	r4, r0
 800a0f6:	6005      	str	r5, [r0, #0]
 800a0f8:	dc21      	bgt.n	800a13e <frexp+0x5a>
 800a0fa:	ee10 6a10 	vmov	r6, s0
 800a0fe:	430e      	orrs	r6, r1
 800a100:	d01d      	beq.n	800a13e <frexp+0x5a>
 800a102:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800a106:	4618      	mov	r0, r3
 800a108:	da0c      	bge.n	800a124 <frexp+0x40>
 800a10a:	4619      	mov	r1, r3
 800a10c:	2200      	movs	r2, #0
 800a10e:	ee10 0a10 	vmov	r0, s0
 800a112:	4b0d      	ldr	r3, [pc, #52]	; (800a148 <frexp+0x64>)
 800a114:	f7f6 fa30 	bl	8000578 <__aeabi_dmul>
 800a118:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800a11c:	4602      	mov	r2, r0
 800a11e:	4608      	mov	r0, r1
 800a120:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800a124:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 800a128:	1509      	asrs	r1, r1, #20
 800a12a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800a12e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800a132:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800a136:	4429      	add	r1, r5
 800a138:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800a13c:	6021      	str	r1, [r4, #0]
 800a13e:	ec43 2b10 	vmov	d0, r2, r3
 800a142:	bd70      	pop	{r4, r5, r6, pc}
 800a144:	7fefffff 	.word	0x7fefffff
 800a148:	43500000 	.word	0x43500000

0800a14c <_sbrk_r>:
 800a14c:	b538      	push	{r3, r4, r5, lr}
 800a14e:	4c07      	ldr	r4, [pc, #28]	; (800a16c <_sbrk_r+0x20>)
 800a150:	2300      	movs	r3, #0
 800a152:	4605      	mov	r5, r0
 800a154:	4608      	mov	r0, r1
 800a156:	6023      	str	r3, [r4, #0]
 800a158:	f7f8 fd26 	bl	8002ba8 <_sbrk>
 800a15c:	1c43      	adds	r3, r0, #1
 800a15e:	d000      	beq.n	800a162 <_sbrk_r+0x16>
 800a160:	bd38      	pop	{r3, r4, r5, pc}
 800a162:	6823      	ldr	r3, [r4, #0]
 800a164:	2b00      	cmp	r3, #0
 800a166:	d0fb      	beq.n	800a160 <_sbrk_r+0x14>
 800a168:	602b      	str	r3, [r5, #0]
 800a16a:	bd38      	pop	{r3, r4, r5, pc}
 800a16c:	20000b0c 	.word	0x20000b0c

0800a170 <__sread>:
 800a170:	b510      	push	{r4, lr}
 800a172:	460c      	mov	r4, r1
 800a174:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800a178:	f000 fabc 	bl	800a6f4 <_read_r>
 800a17c:	2800      	cmp	r0, #0
 800a17e:	db03      	blt.n	800a188 <__sread+0x18>
 800a180:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800a182:	4403      	add	r3, r0
 800a184:	6523      	str	r3, [r4, #80]	; 0x50
 800a186:	bd10      	pop	{r4, pc}
 800a188:	89a3      	ldrh	r3, [r4, #12]
 800a18a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800a18e:	81a3      	strh	r3, [r4, #12]
 800a190:	bd10      	pop	{r4, pc}
 800a192:	bf00      	nop

0800a194 <__swrite>:
 800a194:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a198:	4616      	mov	r6, r2
 800a19a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800a19e:	461f      	mov	r7, r3
 800a1a0:	05d3      	lsls	r3, r2, #23
 800a1a2:	460c      	mov	r4, r1
 800a1a4:	4605      	mov	r5, r0
 800a1a6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800a1aa:	d507      	bpl.n	800a1bc <__swrite+0x28>
 800a1ac:	2200      	movs	r2, #0
 800a1ae:	2302      	movs	r3, #2
 800a1b0:	f000 fa74 	bl	800a69c <_lseek_r>
 800a1b4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a1b8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800a1bc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800a1c0:	81a2      	strh	r2, [r4, #12]
 800a1c2:	463b      	mov	r3, r7
 800a1c4:	4632      	mov	r2, r6
 800a1c6:	4628      	mov	r0, r5
 800a1c8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800a1cc:	f000 b88c 	b.w	800a2e8 <_write_r>

0800a1d0 <__sseek>:
 800a1d0:	b510      	push	{r4, lr}
 800a1d2:	460c      	mov	r4, r1
 800a1d4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800a1d8:	f000 fa60 	bl	800a69c <_lseek_r>
 800a1dc:	89a3      	ldrh	r3, [r4, #12]
 800a1de:	1c42      	adds	r2, r0, #1
 800a1e0:	bf0e      	itee	eq
 800a1e2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800a1e6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800a1ea:	6520      	strne	r0, [r4, #80]	; 0x50
 800a1ec:	81a3      	strh	r3, [r4, #12]
 800a1ee:	bd10      	pop	{r4, pc}

0800a1f0 <__sclose>:
 800a1f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800a1f4:	f000 b922 	b.w	800a43c <_close_r>

0800a1f8 <strncpy>:
 800a1f8:	ea40 0301 	orr.w	r3, r0, r1
 800a1fc:	079b      	lsls	r3, r3, #30
 800a1fe:	b470      	push	{r4, r5, r6}
 800a200:	d12a      	bne.n	800a258 <strncpy+0x60>
 800a202:	2a03      	cmp	r2, #3
 800a204:	d928      	bls.n	800a258 <strncpy+0x60>
 800a206:	460c      	mov	r4, r1
 800a208:	4603      	mov	r3, r0
 800a20a:	4621      	mov	r1, r4
 800a20c:	f854 6b04 	ldr.w	r6, [r4], #4
 800a210:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800a214:	ea25 0506 	bic.w	r5, r5, r6
 800a218:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800a21c:	d106      	bne.n	800a22c <strncpy+0x34>
 800a21e:	3a04      	subs	r2, #4
 800a220:	2a03      	cmp	r2, #3
 800a222:	f843 6b04 	str.w	r6, [r3], #4
 800a226:	4621      	mov	r1, r4
 800a228:	d8ef      	bhi.n	800a20a <strncpy+0x12>
 800a22a:	b19a      	cbz	r2, 800a254 <strncpy+0x5c>
 800a22c:	780c      	ldrb	r4, [r1, #0]
 800a22e:	701c      	strb	r4, [r3, #0]
 800a230:	3a01      	subs	r2, #1
 800a232:	3301      	adds	r3, #1
 800a234:	b13c      	cbz	r4, 800a246 <strncpy+0x4e>
 800a236:	b16a      	cbz	r2, 800a254 <strncpy+0x5c>
 800a238:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800a23c:	f803 4b01 	strb.w	r4, [r3], #1
 800a240:	3a01      	subs	r2, #1
 800a242:	2c00      	cmp	r4, #0
 800a244:	d1f7      	bne.n	800a236 <strncpy+0x3e>
 800a246:	b12a      	cbz	r2, 800a254 <strncpy+0x5c>
 800a248:	441a      	add	r2, r3
 800a24a:	2100      	movs	r1, #0
 800a24c:	f803 1b01 	strb.w	r1, [r3], #1
 800a250:	4293      	cmp	r3, r2
 800a252:	d1fb      	bne.n	800a24c <strncpy+0x54>
 800a254:	bc70      	pop	{r4, r5, r6}
 800a256:	4770      	bx	lr
 800a258:	4603      	mov	r3, r0
 800a25a:	e7e6      	b.n	800a22a <strncpy+0x32>

0800a25c <__sprint_r.part.0>:
 800a25c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a260:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800a262:	049c      	lsls	r4, r3, #18
 800a264:	4692      	mov	sl, r2
 800a266:	d52d      	bpl.n	800a2c4 <__sprint_r.part.0+0x68>
 800a268:	6893      	ldr	r3, [r2, #8]
 800a26a:	6812      	ldr	r2, [r2, #0]
 800a26c:	b343      	cbz	r3, 800a2c0 <__sprint_r.part.0+0x64>
 800a26e:	460e      	mov	r6, r1
 800a270:	4607      	mov	r7, r0
 800a272:	f102 0908 	add.w	r9, r2, #8
 800a276:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800a27a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800a27e:	d015      	beq.n	800a2ac <__sprint_r.part.0+0x50>
 800a280:	3d04      	subs	r5, #4
 800a282:	2400      	movs	r4, #0
 800a284:	e001      	b.n	800a28a <__sprint_r.part.0+0x2e>
 800a286:	45a0      	cmp	r8, r4
 800a288:	d00e      	beq.n	800a2a8 <__sprint_r.part.0+0x4c>
 800a28a:	4632      	mov	r2, r6
 800a28c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 800a290:	4638      	mov	r0, r7
 800a292:	f000 f99d 	bl	800a5d0 <_fputwc_r>
 800a296:	1c43      	adds	r3, r0, #1
 800a298:	f104 0401 	add.w	r4, r4, #1
 800a29c:	d1f3      	bne.n	800a286 <__sprint_r.part.0+0x2a>
 800a29e:	2300      	movs	r3, #0
 800a2a0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800a2a4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a2a8:	f8da 3008 	ldr.w	r3, [sl, #8]
 800a2ac:	f02b 0b03 	bic.w	fp, fp, #3
 800a2b0:	eba3 030b 	sub.w	r3, r3, fp
 800a2b4:	f8ca 3008 	str.w	r3, [sl, #8]
 800a2b8:	f109 0908 	add.w	r9, r9, #8
 800a2bc:	2b00      	cmp	r3, #0
 800a2be:	d1da      	bne.n	800a276 <__sprint_r.part.0+0x1a>
 800a2c0:	2000      	movs	r0, #0
 800a2c2:	e7ec      	b.n	800a29e <__sprint_r.part.0+0x42>
 800a2c4:	f7fe fd0c 	bl	8008ce0 <__sfvwrite_r>
 800a2c8:	2300      	movs	r3, #0
 800a2ca:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800a2ce:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a2d2:	bf00      	nop

0800a2d4 <__sprint_r>:
 800a2d4:	6893      	ldr	r3, [r2, #8]
 800a2d6:	b10b      	cbz	r3, 800a2dc <__sprint_r+0x8>
 800a2d8:	f7ff bfc0 	b.w	800a25c <__sprint_r.part.0>
 800a2dc:	b410      	push	{r4}
 800a2de:	4618      	mov	r0, r3
 800a2e0:	6053      	str	r3, [r2, #4]
 800a2e2:	f85d 4b04 	ldr.w	r4, [sp], #4
 800a2e6:	4770      	bx	lr

0800a2e8 <_write_r>:
 800a2e8:	b570      	push	{r4, r5, r6, lr}
 800a2ea:	460d      	mov	r5, r1
 800a2ec:	4c08      	ldr	r4, [pc, #32]	; (800a310 <_write_r+0x28>)
 800a2ee:	4611      	mov	r1, r2
 800a2f0:	4606      	mov	r6, r0
 800a2f2:	461a      	mov	r2, r3
 800a2f4:	4628      	mov	r0, r5
 800a2f6:	2300      	movs	r3, #0
 800a2f8:	6023      	str	r3, [r4, #0]
 800a2fa:	f7f8 fc37 	bl	8002b6c <_write>
 800a2fe:	1c43      	adds	r3, r0, #1
 800a300:	d000      	beq.n	800a304 <_write_r+0x1c>
 800a302:	bd70      	pop	{r4, r5, r6, pc}
 800a304:	6823      	ldr	r3, [r4, #0]
 800a306:	2b00      	cmp	r3, #0
 800a308:	d0fb      	beq.n	800a302 <_write_r+0x1a>
 800a30a:	6033      	str	r3, [r6, #0]
 800a30c:	bd70      	pop	{r4, r5, r6, pc}
 800a30e:	bf00      	nop
 800a310:	20000b0c 	.word	0x20000b0c

0800a314 <__register_exitproc>:
 800a314:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800a318:	4d2b      	ldr	r5, [pc, #172]	; (800a3c8 <__register_exitproc+0xb4>)
 800a31a:	4606      	mov	r6, r0
 800a31c:	6828      	ldr	r0, [r5, #0]
 800a31e:	4698      	mov	r8, r3
 800a320:	460f      	mov	r7, r1
 800a322:	4691      	mov	r9, r2
 800a324:	f7fe fe96 	bl	8009054 <__retarget_lock_acquire_recursive>
 800a328:	4b28      	ldr	r3, [pc, #160]	; (800a3cc <__register_exitproc+0xb8>)
 800a32a:	681c      	ldr	r4, [r3, #0]
 800a32c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 800a330:	2b00      	cmp	r3, #0
 800a332:	d03d      	beq.n	800a3b0 <__register_exitproc+0x9c>
 800a334:	685a      	ldr	r2, [r3, #4]
 800a336:	2a1f      	cmp	r2, #31
 800a338:	dc0d      	bgt.n	800a356 <__register_exitproc+0x42>
 800a33a:	f102 0c01 	add.w	ip, r2, #1
 800a33e:	bb16      	cbnz	r6, 800a386 <__register_exitproc+0x72>
 800a340:	3202      	adds	r2, #2
 800a342:	f8c3 c004 	str.w	ip, [r3, #4]
 800a346:	6828      	ldr	r0, [r5, #0]
 800a348:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800a34c:	f7fe fe84 	bl	8009058 <__retarget_lock_release_recursive>
 800a350:	2000      	movs	r0, #0
 800a352:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800a356:	4b1e      	ldr	r3, [pc, #120]	; (800a3d0 <__register_exitproc+0xbc>)
 800a358:	b37b      	cbz	r3, 800a3ba <__register_exitproc+0xa6>
 800a35a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800a35e:	f3af 8000 	nop.w
 800a362:	4603      	mov	r3, r0
 800a364:	b348      	cbz	r0, 800a3ba <__register_exitproc+0xa6>
 800a366:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800a36a:	2100      	movs	r1, #0
 800a36c:	e9c0 2100 	strd	r2, r1, [r0]
 800a370:	f04f 0c01 	mov.w	ip, #1
 800a374:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 800a378:	460a      	mov	r2, r1
 800a37a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800a37e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800a382:	2e00      	cmp	r6, #0
 800a384:	d0dc      	beq.n	800a340 <__register_exitproc+0x2c>
 800a386:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800a38a:	2401      	movs	r4, #1
 800a38c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800a390:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800a394:	4094      	lsls	r4, r2
 800a396:	4320      	orrs	r0, r4
 800a398:	2e02      	cmp	r6, #2
 800a39a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800a39e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800a3a2:	d1cd      	bne.n	800a340 <__register_exitproc+0x2c>
 800a3a4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 800a3a8:	430c      	orrs	r4, r1
 800a3aa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800a3ae:	e7c7      	b.n	800a340 <__register_exitproc+0x2c>
 800a3b0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800a3b4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 800a3b8:	e7bc      	b.n	800a334 <__register_exitproc+0x20>
 800a3ba:	6828      	ldr	r0, [r5, #0]
 800a3bc:	f7fe fe4c 	bl	8009058 <__retarget_lock_release_recursive>
 800a3c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a3c4:	e7c5      	b.n	800a352 <__register_exitproc+0x3e>
 800a3c6:	bf00      	nop
 800a3c8:	20000448 	.word	0x20000448
 800a3cc:	0800abb0 	.word	0x0800abb0
 800a3d0:	00000000 	.word	0x00000000

0800a3d4 <_calloc_r>:
 800a3d4:	b510      	push	{r4, lr}
 800a3d6:	fb02 f101 	mul.w	r1, r2, r1
 800a3da:	f7fe feb7 	bl	800914c <_malloc_r>
 800a3de:	4604      	mov	r4, r0
 800a3e0:	b1d8      	cbz	r0, 800a41a <_calloc_r+0x46>
 800a3e2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800a3e6:	f022 0203 	bic.w	r2, r2, #3
 800a3ea:	3a04      	subs	r2, #4
 800a3ec:	2a24      	cmp	r2, #36	; 0x24
 800a3ee:	d81d      	bhi.n	800a42c <_calloc_r+0x58>
 800a3f0:	2a13      	cmp	r2, #19
 800a3f2:	d914      	bls.n	800a41e <_calloc_r+0x4a>
 800a3f4:	2300      	movs	r3, #0
 800a3f6:	2a1b      	cmp	r2, #27
 800a3f8:	e9c0 3300 	strd	r3, r3, [r0]
 800a3fc:	d91b      	bls.n	800a436 <_calloc_r+0x62>
 800a3fe:	2a24      	cmp	r2, #36	; 0x24
 800a400:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800a404:	bf0a      	itet	eq
 800a406:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800a40a:	f100 0210 	addne.w	r2, r0, #16
 800a40e:	f100 0218 	addeq.w	r2, r0, #24
 800a412:	2300      	movs	r3, #0
 800a414:	e9c2 3300 	strd	r3, r3, [r2]
 800a418:	6093      	str	r3, [r2, #8]
 800a41a:	4620      	mov	r0, r4
 800a41c:	bd10      	pop	{r4, pc}
 800a41e:	4602      	mov	r2, r0
 800a420:	2300      	movs	r3, #0
 800a422:	e9c2 3300 	strd	r3, r3, [r2]
 800a426:	6093      	str	r3, [r2, #8]
 800a428:	4620      	mov	r0, r4
 800a42a:	bd10      	pop	{r4, pc}
 800a42c:	2100      	movs	r1, #0
 800a42e:	f7fb fb6d 	bl	8005b0c <memset>
 800a432:	4620      	mov	r0, r4
 800a434:	bd10      	pop	{r4, pc}
 800a436:	f100 0208 	add.w	r2, r0, #8
 800a43a:	e7f1      	b.n	800a420 <_calloc_r+0x4c>

0800a43c <_close_r>:
 800a43c:	b538      	push	{r3, r4, r5, lr}
 800a43e:	4c07      	ldr	r4, [pc, #28]	; (800a45c <_close_r+0x20>)
 800a440:	2300      	movs	r3, #0
 800a442:	4605      	mov	r5, r0
 800a444:	4608      	mov	r0, r1
 800a446:	6023      	str	r3, [r4, #0]
 800a448:	f7f8 fbd1 	bl	8002bee <_close>
 800a44c:	1c43      	adds	r3, r0, #1
 800a44e:	d000      	beq.n	800a452 <_close_r+0x16>
 800a450:	bd38      	pop	{r3, r4, r5, pc}
 800a452:	6823      	ldr	r3, [r4, #0]
 800a454:	2b00      	cmp	r3, #0
 800a456:	d0fb      	beq.n	800a450 <_close_r+0x14>
 800a458:	602b      	str	r3, [r5, #0]
 800a45a:	bd38      	pop	{r3, r4, r5, pc}
 800a45c:	20000b0c 	.word	0x20000b0c

0800a460 <_fclose_r>:
 800a460:	b570      	push	{r4, r5, r6, lr}
 800a462:	2900      	cmp	r1, #0
 800a464:	d048      	beq.n	800a4f8 <_fclose_r+0x98>
 800a466:	4605      	mov	r5, r0
 800a468:	460c      	mov	r4, r1
 800a46a:	b110      	cbz	r0, 800a472 <_fclose_r+0x12>
 800a46c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a46e:	2b00      	cmp	r3, #0
 800a470:	d048      	beq.n	800a504 <_fclose_r+0xa4>
 800a472:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a474:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a478:	07d0      	lsls	r0, r2, #31
 800a47a:	d440      	bmi.n	800a4fe <_fclose_r+0x9e>
 800a47c:	0599      	lsls	r1, r3, #22
 800a47e:	d530      	bpl.n	800a4e2 <_fclose_r+0x82>
 800a480:	4621      	mov	r1, r4
 800a482:	4628      	mov	r0, r5
 800a484:	f7fe f990 	bl	80087a8 <__sflush_r>
 800a488:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800a48a:	4606      	mov	r6, r0
 800a48c:	b133      	cbz	r3, 800a49c <_fclose_r+0x3c>
 800a48e:	69e1      	ldr	r1, [r4, #28]
 800a490:	4628      	mov	r0, r5
 800a492:	4798      	blx	r3
 800a494:	2800      	cmp	r0, #0
 800a496:	bfb8      	it	lt
 800a498:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800a49c:	89a3      	ldrh	r3, [r4, #12]
 800a49e:	061a      	lsls	r2, r3, #24
 800a4a0:	d43c      	bmi.n	800a51c <_fclose_r+0xbc>
 800a4a2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800a4a4:	b141      	cbz	r1, 800a4b8 <_fclose_r+0x58>
 800a4a6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800a4aa:	4299      	cmp	r1, r3
 800a4ac:	d002      	beq.n	800a4b4 <_fclose_r+0x54>
 800a4ae:	4628      	mov	r0, r5
 800a4b0:	f7fe fb22 	bl	8008af8 <_free_r>
 800a4b4:	2300      	movs	r3, #0
 800a4b6:	6323      	str	r3, [r4, #48]	; 0x30
 800a4b8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800a4ba:	b121      	cbz	r1, 800a4c6 <_fclose_r+0x66>
 800a4bc:	4628      	mov	r0, r5
 800a4be:	f7fe fb1b 	bl	8008af8 <_free_r>
 800a4c2:	2300      	movs	r3, #0
 800a4c4:	6463      	str	r3, [r4, #68]	; 0x44
 800a4c6:	f7fe faa1 	bl	8008a0c <__sfp_lock_acquire>
 800a4ca:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a4cc:	2200      	movs	r2, #0
 800a4ce:	07db      	lsls	r3, r3, #31
 800a4d0:	81a2      	strh	r2, [r4, #12]
 800a4d2:	d51f      	bpl.n	800a514 <_fclose_r+0xb4>
 800a4d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a4d6:	f7fe fdbb 	bl	8009050 <__retarget_lock_close_recursive>
 800a4da:	f7fe fa9d 	bl	8008a18 <__sfp_lock_release>
 800a4de:	4630      	mov	r0, r6
 800a4e0:	bd70      	pop	{r4, r5, r6, pc}
 800a4e2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a4e4:	f7fe fdb6 	bl	8009054 <__retarget_lock_acquire_recursive>
 800a4e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a4ec:	2b00      	cmp	r3, #0
 800a4ee:	d1c7      	bne.n	800a480 <_fclose_r+0x20>
 800a4f0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800a4f2:	f016 0601 	ands.w	r6, r6, #1
 800a4f6:	d016      	beq.n	800a526 <_fclose_r+0xc6>
 800a4f8:	2600      	movs	r6, #0
 800a4fa:	4630      	mov	r0, r6
 800a4fc:	bd70      	pop	{r4, r5, r6, pc}
 800a4fe:	2b00      	cmp	r3, #0
 800a500:	d0fa      	beq.n	800a4f8 <_fclose_r+0x98>
 800a502:	e7bd      	b.n	800a480 <_fclose_r+0x20>
 800a504:	f7fe fa56 	bl	80089b4 <__sinit>
 800a508:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a50a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a50e:	07d0      	lsls	r0, r2, #31
 800a510:	d4f5      	bmi.n	800a4fe <_fclose_r+0x9e>
 800a512:	e7b3      	b.n	800a47c <_fclose_r+0x1c>
 800a514:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a516:	f7fe fd9f 	bl	8009058 <__retarget_lock_release_recursive>
 800a51a:	e7db      	b.n	800a4d4 <_fclose_r+0x74>
 800a51c:	6921      	ldr	r1, [r4, #16]
 800a51e:	4628      	mov	r0, r5
 800a520:	f7fe faea 	bl	8008af8 <_free_r>
 800a524:	e7bd      	b.n	800a4a2 <_fclose_r+0x42>
 800a526:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a528:	f7fe fd96 	bl	8009058 <__retarget_lock_release_recursive>
 800a52c:	4630      	mov	r0, r6
 800a52e:	bd70      	pop	{r4, r5, r6, pc}

0800a530 <__fputwc>:
 800a530:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800a534:	b082      	sub	sp, #8
 800a536:	4681      	mov	r9, r0
 800a538:	4688      	mov	r8, r1
 800a53a:	4614      	mov	r4, r2
 800a53c:	f000 f8a0 	bl	800a680 <__locale_mb_cur_max>
 800a540:	2801      	cmp	r0, #1
 800a542:	d103      	bne.n	800a54c <__fputwc+0x1c>
 800a544:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800a548:	2bfe      	cmp	r3, #254	; 0xfe
 800a54a:	d933      	bls.n	800a5b4 <__fputwc+0x84>
 800a54c:	4642      	mov	r2, r8
 800a54e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800a552:	a901      	add	r1, sp, #4
 800a554:	4648      	mov	r0, r9
 800a556:	f000 f93b 	bl	800a7d0 <_wcrtomb_r>
 800a55a:	1c42      	adds	r2, r0, #1
 800a55c:	4606      	mov	r6, r0
 800a55e:	d02f      	beq.n	800a5c0 <__fputwc+0x90>
 800a560:	b320      	cbz	r0, 800a5ac <__fputwc+0x7c>
 800a562:	f89d c004 	ldrb.w	ip, [sp, #4]
 800a566:	2500      	movs	r5, #0
 800a568:	f10d 0a04 	add.w	sl, sp, #4
 800a56c:	e009      	b.n	800a582 <__fputwc+0x52>
 800a56e:	6823      	ldr	r3, [r4, #0]
 800a570:	1c5a      	adds	r2, r3, #1
 800a572:	6022      	str	r2, [r4, #0]
 800a574:	f883 c000 	strb.w	ip, [r3]
 800a578:	3501      	adds	r5, #1
 800a57a:	42b5      	cmp	r5, r6
 800a57c:	d216      	bcs.n	800a5ac <__fputwc+0x7c>
 800a57e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800a582:	68a3      	ldr	r3, [r4, #8]
 800a584:	3b01      	subs	r3, #1
 800a586:	2b00      	cmp	r3, #0
 800a588:	60a3      	str	r3, [r4, #8]
 800a58a:	daf0      	bge.n	800a56e <__fputwc+0x3e>
 800a58c:	69a7      	ldr	r7, [r4, #24]
 800a58e:	42bb      	cmp	r3, r7
 800a590:	4661      	mov	r1, ip
 800a592:	4622      	mov	r2, r4
 800a594:	4648      	mov	r0, r9
 800a596:	db02      	blt.n	800a59e <__fputwc+0x6e>
 800a598:	f1bc 0f0a 	cmp.w	ip, #10
 800a59c:	d1e7      	bne.n	800a56e <__fputwc+0x3e>
 800a59e:	f000 f8bf 	bl	800a720 <__swbuf_r>
 800a5a2:	1c43      	adds	r3, r0, #1
 800a5a4:	d1e8      	bne.n	800a578 <__fputwc+0x48>
 800a5a6:	b002      	add	sp, #8
 800a5a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a5ac:	4640      	mov	r0, r8
 800a5ae:	b002      	add	sp, #8
 800a5b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a5b4:	fa5f fc88 	uxtb.w	ip, r8
 800a5b8:	4606      	mov	r6, r0
 800a5ba:	f88d c004 	strb.w	ip, [sp, #4]
 800a5be:	e7d2      	b.n	800a566 <__fputwc+0x36>
 800a5c0:	89a3      	ldrh	r3, [r4, #12]
 800a5c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a5c6:	81a3      	strh	r3, [r4, #12]
 800a5c8:	b002      	add	sp, #8
 800a5ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a5ce:	bf00      	nop

0800a5d0 <_fputwc_r>:
 800a5d0:	b530      	push	{r4, r5, lr}
 800a5d2:	4605      	mov	r5, r0
 800a5d4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800a5d6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800a5da:	07c0      	lsls	r0, r0, #31
 800a5dc:	4614      	mov	r4, r2
 800a5de:	b083      	sub	sp, #12
 800a5e0:	b29a      	uxth	r2, r3
 800a5e2:	d401      	bmi.n	800a5e8 <_fputwc_r+0x18>
 800a5e4:	0590      	lsls	r0, r2, #22
 800a5e6:	d51c      	bpl.n	800a622 <_fputwc_r+0x52>
 800a5e8:	0490      	lsls	r0, r2, #18
 800a5ea:	d406      	bmi.n	800a5fa <_fputwc_r+0x2a>
 800a5ec:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a5ee:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800a5f2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a5f6:	81a3      	strh	r3, [r4, #12]
 800a5f8:	6662      	str	r2, [r4, #100]	; 0x64
 800a5fa:	4628      	mov	r0, r5
 800a5fc:	4622      	mov	r2, r4
 800a5fe:	f7ff ff97 	bl	800a530 <__fputwc>
 800a602:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a604:	07da      	lsls	r2, r3, #31
 800a606:	4605      	mov	r5, r0
 800a608:	d402      	bmi.n	800a610 <_fputwc_r+0x40>
 800a60a:	89a3      	ldrh	r3, [r4, #12]
 800a60c:	059b      	lsls	r3, r3, #22
 800a60e:	d502      	bpl.n	800a616 <_fputwc_r+0x46>
 800a610:	4628      	mov	r0, r5
 800a612:	b003      	add	sp, #12
 800a614:	bd30      	pop	{r4, r5, pc}
 800a616:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a618:	f7fe fd1e 	bl	8009058 <__retarget_lock_release_recursive>
 800a61c:	4628      	mov	r0, r5
 800a61e:	b003      	add	sp, #12
 800a620:	bd30      	pop	{r4, r5, pc}
 800a622:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a624:	9101      	str	r1, [sp, #4]
 800a626:	f7fe fd15 	bl	8009054 <__retarget_lock_acquire_recursive>
 800a62a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a62e:	9901      	ldr	r1, [sp, #4]
 800a630:	b29a      	uxth	r2, r3
 800a632:	e7d9      	b.n	800a5e8 <_fputwc_r+0x18>

0800a634 <_fstat_r>:
 800a634:	b538      	push	{r3, r4, r5, lr}
 800a636:	460b      	mov	r3, r1
 800a638:	4c07      	ldr	r4, [pc, #28]	; (800a658 <_fstat_r+0x24>)
 800a63a:	4605      	mov	r5, r0
 800a63c:	4611      	mov	r1, r2
 800a63e:	4618      	mov	r0, r3
 800a640:	2300      	movs	r3, #0
 800a642:	6023      	str	r3, [r4, #0]
 800a644:	f7f8 fad6 	bl	8002bf4 <_fstat>
 800a648:	1c43      	adds	r3, r0, #1
 800a64a:	d000      	beq.n	800a64e <_fstat_r+0x1a>
 800a64c:	bd38      	pop	{r3, r4, r5, pc}
 800a64e:	6823      	ldr	r3, [r4, #0]
 800a650:	2b00      	cmp	r3, #0
 800a652:	d0fb      	beq.n	800a64c <_fstat_r+0x18>
 800a654:	602b      	str	r3, [r5, #0]
 800a656:	bd38      	pop	{r3, r4, r5, pc}
 800a658:	20000b0c 	.word	0x20000b0c

0800a65c <_isatty_r>:
 800a65c:	b538      	push	{r3, r4, r5, lr}
 800a65e:	4c07      	ldr	r4, [pc, #28]	; (800a67c <_isatty_r+0x20>)
 800a660:	2300      	movs	r3, #0
 800a662:	4605      	mov	r5, r0
 800a664:	4608      	mov	r0, r1
 800a666:	6023      	str	r3, [r4, #0]
 800a668:	f7f8 faca 	bl	8002c00 <_isatty>
 800a66c:	1c43      	adds	r3, r0, #1
 800a66e:	d000      	beq.n	800a672 <_isatty_r+0x16>
 800a670:	bd38      	pop	{r3, r4, r5, pc}
 800a672:	6823      	ldr	r3, [r4, #0]
 800a674:	2b00      	cmp	r3, #0
 800a676:	d0fb      	beq.n	800a670 <_isatty_r+0x14>
 800a678:	602b      	str	r3, [r5, #0]
 800a67a:	bd38      	pop	{r3, r4, r5, pc}
 800a67c:	20000b0c 	.word	0x20000b0c

0800a680 <__locale_mb_cur_max>:
 800a680:	4b04      	ldr	r3, [pc, #16]	; (800a694 <__locale_mb_cur_max+0x14>)
 800a682:	4a05      	ldr	r2, [pc, #20]	; (800a698 <__locale_mb_cur_max+0x18>)
 800a684:	681b      	ldr	r3, [r3, #0]
 800a686:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800a688:	2b00      	cmp	r3, #0
 800a68a:	bf08      	it	eq
 800a68c:	4613      	moveq	r3, r2
 800a68e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800a692:	4770      	bx	lr
 800a694:	2000001c 	.word	0x2000001c
 800a698:	2000085c 	.word	0x2000085c

0800a69c <_lseek_r>:
 800a69c:	b570      	push	{r4, r5, r6, lr}
 800a69e:	460d      	mov	r5, r1
 800a6a0:	4c08      	ldr	r4, [pc, #32]	; (800a6c4 <_lseek_r+0x28>)
 800a6a2:	4611      	mov	r1, r2
 800a6a4:	4606      	mov	r6, r0
 800a6a6:	461a      	mov	r2, r3
 800a6a8:	4628      	mov	r0, r5
 800a6aa:	2300      	movs	r3, #0
 800a6ac:	6023      	str	r3, [r4, #0]
 800a6ae:	f7f8 faa9 	bl	8002c04 <_lseek>
 800a6b2:	1c43      	adds	r3, r0, #1
 800a6b4:	d000      	beq.n	800a6b8 <_lseek_r+0x1c>
 800a6b6:	bd70      	pop	{r4, r5, r6, pc}
 800a6b8:	6823      	ldr	r3, [r4, #0]
 800a6ba:	2b00      	cmp	r3, #0
 800a6bc:	d0fb      	beq.n	800a6b6 <_lseek_r+0x1a>
 800a6be:	6033      	str	r3, [r6, #0]
 800a6c0:	bd70      	pop	{r4, r5, r6, pc}
 800a6c2:	bf00      	nop
 800a6c4:	20000b0c 	.word	0x20000b0c

0800a6c8 <__ascii_mbtowc>:
 800a6c8:	b082      	sub	sp, #8
 800a6ca:	b149      	cbz	r1, 800a6e0 <__ascii_mbtowc+0x18>
 800a6cc:	b15a      	cbz	r2, 800a6e6 <__ascii_mbtowc+0x1e>
 800a6ce:	b16b      	cbz	r3, 800a6ec <__ascii_mbtowc+0x24>
 800a6d0:	7813      	ldrb	r3, [r2, #0]
 800a6d2:	600b      	str	r3, [r1, #0]
 800a6d4:	7812      	ldrb	r2, [r2, #0]
 800a6d6:	1c10      	adds	r0, r2, #0
 800a6d8:	bf18      	it	ne
 800a6da:	2001      	movne	r0, #1
 800a6dc:	b002      	add	sp, #8
 800a6de:	4770      	bx	lr
 800a6e0:	a901      	add	r1, sp, #4
 800a6e2:	2a00      	cmp	r2, #0
 800a6e4:	d1f3      	bne.n	800a6ce <__ascii_mbtowc+0x6>
 800a6e6:	4610      	mov	r0, r2
 800a6e8:	b002      	add	sp, #8
 800a6ea:	4770      	bx	lr
 800a6ec:	f06f 0001 	mvn.w	r0, #1
 800a6f0:	e7f4      	b.n	800a6dc <__ascii_mbtowc+0x14>
 800a6f2:	bf00      	nop

0800a6f4 <_read_r>:
 800a6f4:	b570      	push	{r4, r5, r6, lr}
 800a6f6:	460d      	mov	r5, r1
 800a6f8:	4c08      	ldr	r4, [pc, #32]	; (800a71c <_read_r+0x28>)
 800a6fa:	4611      	mov	r1, r2
 800a6fc:	4606      	mov	r6, r0
 800a6fe:	461a      	mov	r2, r3
 800a700:	4628      	mov	r0, r5
 800a702:	2300      	movs	r3, #0
 800a704:	6023      	str	r3, [r4, #0]
 800a706:	f7f8 fa11 	bl	8002b2c <_read>
 800a70a:	1c43      	adds	r3, r0, #1
 800a70c:	d000      	beq.n	800a710 <_read_r+0x1c>
 800a70e:	bd70      	pop	{r4, r5, r6, pc}
 800a710:	6823      	ldr	r3, [r4, #0]
 800a712:	2b00      	cmp	r3, #0
 800a714:	d0fb      	beq.n	800a70e <_read_r+0x1a>
 800a716:	6033      	str	r3, [r6, #0]
 800a718:	bd70      	pop	{r4, r5, r6, pc}
 800a71a:	bf00      	nop
 800a71c:	20000b0c 	.word	0x20000b0c

0800a720 <__swbuf_r>:
 800a720:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a722:	460d      	mov	r5, r1
 800a724:	4614      	mov	r4, r2
 800a726:	4606      	mov	r6, r0
 800a728:	b110      	cbz	r0, 800a730 <__swbuf_r+0x10>
 800a72a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a72c:	2b00      	cmp	r3, #0
 800a72e:	d043      	beq.n	800a7b8 <__swbuf_r+0x98>
 800a730:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a734:	69a3      	ldr	r3, [r4, #24]
 800a736:	60a3      	str	r3, [r4, #8]
 800a738:	b291      	uxth	r1, r2
 800a73a:	0708      	lsls	r0, r1, #28
 800a73c:	d51b      	bpl.n	800a776 <__swbuf_r+0x56>
 800a73e:	6923      	ldr	r3, [r4, #16]
 800a740:	b1cb      	cbz	r3, 800a776 <__swbuf_r+0x56>
 800a742:	b2ed      	uxtb	r5, r5
 800a744:	0489      	lsls	r1, r1, #18
 800a746:	462f      	mov	r7, r5
 800a748:	d522      	bpl.n	800a790 <__swbuf_r+0x70>
 800a74a:	6822      	ldr	r2, [r4, #0]
 800a74c:	6961      	ldr	r1, [r4, #20]
 800a74e:	1ad3      	subs	r3, r2, r3
 800a750:	4299      	cmp	r1, r3
 800a752:	dd29      	ble.n	800a7a8 <__swbuf_r+0x88>
 800a754:	3301      	adds	r3, #1
 800a756:	68a1      	ldr	r1, [r4, #8]
 800a758:	1c50      	adds	r0, r2, #1
 800a75a:	3901      	subs	r1, #1
 800a75c:	60a1      	str	r1, [r4, #8]
 800a75e:	6020      	str	r0, [r4, #0]
 800a760:	7015      	strb	r5, [r2, #0]
 800a762:	6962      	ldr	r2, [r4, #20]
 800a764:	429a      	cmp	r2, r3
 800a766:	d02a      	beq.n	800a7be <__swbuf_r+0x9e>
 800a768:	89a3      	ldrh	r3, [r4, #12]
 800a76a:	07db      	lsls	r3, r3, #31
 800a76c:	d501      	bpl.n	800a772 <__swbuf_r+0x52>
 800a76e:	2d0a      	cmp	r5, #10
 800a770:	d025      	beq.n	800a7be <__swbuf_r+0x9e>
 800a772:	4638      	mov	r0, r7
 800a774:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a776:	4621      	mov	r1, r4
 800a778:	4630      	mov	r0, r6
 800a77a:	f7fc fffd 	bl	8007778 <__swsetup_r>
 800a77e:	bb20      	cbnz	r0, 800a7ca <__swbuf_r+0xaa>
 800a780:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a784:	6923      	ldr	r3, [r4, #16]
 800a786:	b291      	uxth	r1, r2
 800a788:	b2ed      	uxtb	r5, r5
 800a78a:	0489      	lsls	r1, r1, #18
 800a78c:	462f      	mov	r7, r5
 800a78e:	d4dc      	bmi.n	800a74a <__swbuf_r+0x2a>
 800a790:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800a792:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a796:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800a79a:	81a2      	strh	r2, [r4, #12]
 800a79c:	6822      	ldr	r2, [r4, #0]
 800a79e:	6661      	str	r1, [r4, #100]	; 0x64
 800a7a0:	6961      	ldr	r1, [r4, #20]
 800a7a2:	1ad3      	subs	r3, r2, r3
 800a7a4:	4299      	cmp	r1, r3
 800a7a6:	dcd5      	bgt.n	800a754 <__swbuf_r+0x34>
 800a7a8:	4621      	mov	r1, r4
 800a7aa:	4630      	mov	r0, r6
 800a7ac:	f7fe f8a6 	bl	80088fc <_fflush_r>
 800a7b0:	b958      	cbnz	r0, 800a7ca <__swbuf_r+0xaa>
 800a7b2:	6822      	ldr	r2, [r4, #0]
 800a7b4:	2301      	movs	r3, #1
 800a7b6:	e7ce      	b.n	800a756 <__swbuf_r+0x36>
 800a7b8:	f7fe f8fc 	bl	80089b4 <__sinit>
 800a7bc:	e7b8      	b.n	800a730 <__swbuf_r+0x10>
 800a7be:	4621      	mov	r1, r4
 800a7c0:	4630      	mov	r0, r6
 800a7c2:	f7fe f89b 	bl	80088fc <_fflush_r>
 800a7c6:	2800      	cmp	r0, #0
 800a7c8:	d0d3      	beq.n	800a772 <__swbuf_r+0x52>
 800a7ca:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800a7ce:	e7d0      	b.n	800a772 <__swbuf_r+0x52>

0800a7d0 <_wcrtomb_r>:
 800a7d0:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a7d2:	4c11      	ldr	r4, [pc, #68]	; (800a818 <_wcrtomb_r+0x48>)
 800a7d4:	6824      	ldr	r4, [r4, #0]
 800a7d6:	b085      	sub	sp, #20
 800a7d8:	4606      	mov	r6, r0
 800a7da:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800a7dc:	461f      	mov	r7, r3
 800a7de:	b151      	cbz	r1, 800a7f6 <_wcrtomb_r+0x26>
 800a7e0:	4d0e      	ldr	r5, [pc, #56]	; (800a81c <_wcrtomb_r+0x4c>)
 800a7e2:	2c00      	cmp	r4, #0
 800a7e4:	bf08      	it	eq
 800a7e6:	462c      	moveq	r4, r5
 800a7e8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a7ec:	47a0      	blx	r4
 800a7ee:	1c43      	adds	r3, r0, #1
 800a7f0:	d00c      	beq.n	800a80c <_wcrtomb_r+0x3c>
 800a7f2:	b005      	add	sp, #20
 800a7f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a7f6:	4a09      	ldr	r2, [pc, #36]	; (800a81c <_wcrtomb_r+0x4c>)
 800a7f8:	2c00      	cmp	r4, #0
 800a7fa:	bf08      	it	eq
 800a7fc:	4614      	moveq	r4, r2
 800a7fe:	460a      	mov	r2, r1
 800a800:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a804:	a901      	add	r1, sp, #4
 800a806:	47a0      	blx	r4
 800a808:	1c43      	adds	r3, r0, #1
 800a80a:	d1f2      	bne.n	800a7f2 <_wcrtomb_r+0x22>
 800a80c:	2200      	movs	r2, #0
 800a80e:	238a      	movs	r3, #138	; 0x8a
 800a810:	603a      	str	r2, [r7, #0]
 800a812:	6033      	str	r3, [r6, #0]
 800a814:	b005      	add	sp, #20
 800a816:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a818:	2000001c 	.word	0x2000001c
 800a81c:	2000085c 	.word	0x2000085c

0800a820 <__ascii_wctomb>:
 800a820:	b121      	cbz	r1, 800a82c <__ascii_wctomb+0xc>
 800a822:	2aff      	cmp	r2, #255	; 0xff
 800a824:	d804      	bhi.n	800a830 <__ascii_wctomb+0x10>
 800a826:	700a      	strb	r2, [r1, #0]
 800a828:	2001      	movs	r0, #1
 800a82a:	4770      	bx	lr
 800a82c:	4608      	mov	r0, r1
 800a82e:	4770      	bx	lr
 800a830:	238a      	movs	r3, #138	; 0x8a
 800a832:	6003      	str	r3, [r0, #0]
 800a834:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a838:	4770      	bx	lr
 800a83a:	bf00      	nop

0800a83c <_init>:
 800a83c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a83e:	bf00      	nop
 800a840:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a842:	bc08      	pop	{r3}
 800a844:	469e      	mov	lr, r3
 800a846:	4770      	bx	lr

0800a848 <_fini>:
 800a848:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a84a:	bf00      	nop
 800a84c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a84e:	bc08      	pop	{r3}
 800a850:	469e      	mov	lr, r3
 800a852:	4770      	bx	lr
 800a854:	0000      	movs	r0, r0
	...
