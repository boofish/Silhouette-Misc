
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
 80001e0:	0800a4dc 	.word	0x0800a4dc

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
 80001fc:	0800a4dc 	.word	0x0800a4dc

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
 8001186:	f000 f819 	bl	80011bc <HAL_NVIC_SetPriorityGrouping>
 800118a:	200f      	movs	r0, #15
 800118c:	f000 fb84 	bl	8001898 <HAL_InitTick>
 8001190:	2800      	cmp	r0, #0
 8001192:	bf1c      	itt	ne
 8001194:	2001      	movne	r0, #1
 8001196:	bd80      	popne	{r7, pc}
 8001198:	f000 f94b 	bl	8001432 <HAL_MspInit>
 800119c:	2000      	movs	r0, #0
 800119e:	bd80      	pop	{r7, pc}

080011a0 <HAL_IncTick>:
 80011a0:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011a8:	6801      	ldr	r1, [r0, #0]
 80011aa:	3101      	adds	r1, #1
 80011ac:	6001      	str	r1, [r0, #0]
 80011ae:	4770      	bx	lr

080011b0 <HAL_GetTick>:
 80011b0:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011b4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011b8:	6800      	ldr	r0, [r0, #0]
 80011ba:	4770      	bx	lr

080011bc <HAL_NVIC_SetPriorityGrouping>:
 80011bc:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011c0:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011c4:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011c8:	680a      	ldr	r2, [r1, #0]
 80011ca:	401a      	ands	r2, r3
 80011cc:	f360 220a 	bfi	r2, r0, #8, #3
 80011d0:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011d4:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011d8:	6008      	str	r0, [r1, #0]
 80011da:	4770      	bx	lr

080011dc <HAL_NVIC_SetPriority>:
 80011dc:	b580      	push	{r7, lr}
 80011de:	466f      	mov	r7, sp
 80011e0:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011e4:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011e8:	2800      	cmp	r0, #0
 80011ea:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011ee:	f000 030f 	and.w	r3, r0, #15
 80011f2:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 80011f6:	f1a3 0304 	sub.w	r3, r3, #4
 80011fa:	4473      	add	r3, lr
 80011fc:	bfb8      	it	lt
 80011fe:	f103 0c0c 	addlt.w	ip, r3, #12
 8001202:	f8de 0000 	ldr.w	r0, [lr]
 8001206:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800120a:	f100 0e04 	add.w	lr, r0, #4
 800120e:	1ec3      	subs	r3, r0, #3
 8001210:	f080 0007 	eor.w	r0, r0, #7
 8001214:	f1be 0f07 	cmp.w	lr, #7
 8001218:	f04f 0e01 	mov.w	lr, #1
 800121c:	bf38      	it	cc
 800121e:	2300      	movcc	r3, #0
 8001220:	2804      	cmp	r0, #4
 8001222:	bf28      	it	cs
 8001224:	2004      	movcs	r0, #4
 8001226:	fa0e f000 	lsl.w	r0, lr, r0
 800122a:	3801      	subs	r0, #1
 800122c:	4008      	ands	r0, r1
 800122e:	fa0e f103 	lsl.w	r1, lr, r3
 8001232:	310f      	adds	r1, #15
 8001234:	4098      	lsls	r0, r3
 8001236:	4011      	ands	r1, r2
 8001238:	4308      	orrs	r0, r1
 800123a:	0100      	lsls	r0, r0, #4
 800123c:	f88c 0000 	strb.w	r0, [ip]
 8001240:	bd80      	pop	{r7, pc}

08001242 <HAL_NVIC_EnableIRQ>:
 8001242:	f000 011f 	and.w	r1, r0, #31
 8001246:	2201      	movs	r2, #1
 8001248:	0940      	lsrs	r0, r0, #5
 800124a:	fa02 f101 	lsl.w	r1, r2, r1
 800124e:	f24e 1200 	movw	r2, #57600	; 0xe100
 8001252:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001256:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 800125a:	4770      	bx	lr

0800125c <HAL_SYSTICK_IRQHandler>:
 800125c:	f000 b800 	b.w	8001260 <HAL_SYSTICK_Callback>

08001260 <HAL_SYSTICK_Callback>:
 8001260:	4770      	bx	lr

08001262 <HAL_GPIO_Init>:
 8001262:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001264:	af03      	add	r7, sp, #12
 8001266:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800126a:	b082      	sub	sp, #8
 800126c:	680e      	ldr	r6, [r1, #0]
 800126e:	2e00      	cmp	r6, #0
 8001270:	f000 80db 	beq.w	800142a <HAL_GPIO_Init+0x1c8>
 8001274:	f641 0200 	movw	r2, #6144	; 0x1800
 8001278:	2507      	movs	r5, #7
 800127a:	f04f 0801 	mov.w	r8, #1
 800127e:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001282:	4290      	cmp	r0, r2
 8001284:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001288:	ea4f 23b2 	mov.w	r3, r2, ror #10
 800128c:	bf08      	it	eq
 800128e:	2506      	moveq	r5, #6
 8001290:	2b06      	cmp	r3, #6
 8001292:	bf38      	it	cc
 8001294:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001298:	2200      	movs	r2, #0
 800129a:	9500      	str	r5, [sp, #0]
 800129c:	2500      	movs	r5, #0
 800129e:	f1a8 0a01 	sub.w	sl, r8, #1
 80012a2:	2301      	movs	r3, #1
 80012a4:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012a8:	ea16 090b 	ands.w	r9, r6, fp
 80012ac:	f000 80b4 	beq.w	8001418 <HAL_GPIO_Init+0x1b6>
 80012b0:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012b4:	f04e 0610 	orr.w	r6, lr, #16
 80012b8:	2e12      	cmp	r6, #18
 80012ba:	d115      	bne.n	80012e8 <HAL_GPIO_Init+0x86>
 80012bc:	f005 061c 	and.w	r6, r5, #28
 80012c0:	230f      	movs	r3, #15
 80012c2:	fa03 fc06 	lsl.w	ip, r3, r6
 80012c6:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012ca:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012ce:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012d2:	4404      	add	r4, r0
 80012d4:	6a23      	ldr	r3, [r4, #32]
 80012d6:	ea23 0c0c 	bic.w	ip, r3, ip
 80012da:	690b      	ldr	r3, [r1, #16]
 80012dc:	40b3      	lsls	r3, r6
 80012de:	ea43 030c 	orr.w	r3, r3, ip
 80012e2:	6223      	str	r3, [r4, #32]
 80012e4:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012e8:	6806      	ldr	r6, [r0, #0]
 80012ea:	2403      	movs	r4, #3
 80012ec:	f00e 0c03 	and.w	ip, lr, #3
 80012f0:	f1be 0f12 	cmp.w	lr, #18
 80012f4:	fa04 f402 	lsl.w	r4, r4, r2
 80012f8:	fa0c f302 	lsl.w	r3, ip, r2
 80012fc:	ea26 0604 	bic.w	r6, r6, r4
 8001300:	ea43 0306 	orr.w	r3, r3, r6
 8001304:	ea6f 0604 	mvn.w	r6, r4
 8001308:	6003      	str	r3, [r0, #0]
 800130a:	d816      	bhi.n	800133a <HAL_GPIO_Init+0xd8>
 800130c:	2301      	movs	r3, #1
 800130e:	fa03 f30e 	lsl.w	r3, r3, lr
 8001312:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001316:	bf1f      	itttt	ne
 8001318:	6883      	ldrne	r3, [r0, #8]
 800131a:	4033      	andne	r3, r6
 800131c:	68cc      	ldrne	r4, [r1, #12]
 800131e:	4094      	lslne	r4, r2
 8001320:	bf1f      	itttt	ne
 8001322:	4323      	orrne	r3, r4
 8001324:	6083      	strne	r3, [r0, #8]
 8001326:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 800132a:	fa03 f30a 	lslne.w	r3, r3, sl
 800132e:	bf1f      	itttt	ne
 8001330:	6844      	ldrne	r4, [r0, #4]
 8001332:	ea24 040b 	bicne.w	r4, r4, fp
 8001336:	4323      	orrne	r3, r4
 8001338:	6043      	strne	r3, [r0, #4]
 800133a:	f1bc 0f03 	cmp.w	ip, #3
 800133e:	d108      	bne.n	8001352 <HAL_GPIO_Init+0xf0>
 8001340:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001344:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001346:	fa03 f30a 	lsl.w	r3, r3, sl
 800134a:	ea24 040b 	bic.w	r4, r4, fp
 800134e:	4323      	orrs	r3, r4
 8001350:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001352:	68c3      	ldr	r3, [r0, #12]
 8001354:	4033      	ands	r3, r6
 8001356:	688e      	ldr	r6, [r1, #8]
 8001358:	4096      	lsls	r6, r2
 800135a:	4333      	orrs	r3, r6
 800135c:	60c3      	str	r3, [r0, #12]
 800135e:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 8001362:	d559      	bpl.n	8001418 <HAL_GPIO_Init+0x1b6>
 8001364:	f241 0360 	movw	r3, #4192	; 0x1060
 8001368:	f005 040c 	and.w	r4, r5, #12
 800136c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001370:	461e      	mov	r6, r3
 8001372:	6833      	ldr	r3, [r6, #0]
 8001374:	f043 0301 	orr.w	r3, r3, #1
 8001378:	6033      	str	r3, [r6, #0]
 800137a:	6833      	ldr	r3, [r6, #0]
 800137c:	f240 4600 	movw	r6, #1024	; 0x400
 8001380:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001384:	46b6      	mov	lr, r6
 8001386:	f003 0301 	and.w	r3, r3, #1
 800138a:	9301      	str	r3, [sp, #4]
 800138c:	f02a 0303 	bic.w	r3, sl, #3
 8001390:	9e01      	ldr	r6, [sp, #4]
 8001392:	4473      	add	r3, lr
 8001394:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001398:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800139c:	46b2      	mov	sl, r6
 800139e:	260f      	movs	r6, #15
 80013a0:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013a4:	40a6      	lsls	r6, r4
 80013a6:	ea2c 0c06 	bic.w	ip, ip, r6
 80013aa:	9e00      	ldr	r6, [sp, #0]
 80013ac:	fa06 f404 	lsl.w	r4, r6, r4
 80013b0:	ea4c 0604 	orr.w	r6, ip, r4
 80013b4:	f843 600a 	str.w	r6, [r3, sl]
 80013b8:	f8de 3000 	ldr.w	r3, [lr]
 80013bc:	684e      	ldr	r6, [r1, #4]
 80013be:	ea23 0309 	bic.w	r3, r3, r9
 80013c2:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013c6:	bf18      	it	ne
 80013c8:	ea43 0309 	orrne.w	r3, r3, r9
 80013cc:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013d0:	f8ce 3000 	str.w	r3, [lr]
 80013d4:	f8de 3004 	ldr.w	r3, [lr, #4]
 80013d8:	ea23 0309 	bic.w	r3, r3, r9
 80013dc:	bf18      	it	ne
 80013de:	ea43 0309 	orrne.w	r3, r3, r9
 80013e2:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 80013e6:	f8ce 3004 	str.w	r3, [lr, #4]
 80013ea:	f8de 3008 	ldr.w	r3, [lr, #8]
 80013ee:	ea23 0309 	bic.w	r3, r3, r9
 80013f2:	bf18      	it	ne
 80013f4:	ea43 0309 	orrne.w	r3, r3, r9
 80013f8:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013fc:	f8ce 3008 	str.w	r3, [lr, #8]
 8001400:	f240 430c 	movw	r3, #1036	; 0x40c
 8001404:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001408:	461c      	mov	r4, r3
 800140a:	6823      	ldr	r3, [r4, #0]
 800140c:	ea23 0309 	bic.w	r3, r3, r9
 8001410:	bf18      	it	ne
 8001412:	ea43 0309 	orrne.w	r3, r3, r9
 8001416:	6023      	str	r3, [r4, #0]
 8001418:	680e      	ldr	r6, [r1, #0]
 800141a:	3202      	adds	r2, #2
 800141c:	3504      	adds	r5, #4
 800141e:	fa36 f308 	lsrs.w	r3, r6, r8
 8001422:	f108 0801 	add.w	r8, r8, #1
 8001426:	f47f af3a 	bne.w	800129e <HAL_GPIO_Init+0x3c>
 800142a:	b002      	add	sp, #8
 800142c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001430:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001432 <HAL_MspInit>:
 8001432:	4770      	bx	lr

08001434 <HAL_RCC_GetSysClockFreq>:
 8001434:	b580      	push	{r7, lr}
 8001436:	466f      	mov	r7, sp
 8001438:	f241 010c 	movw	r1, #4108	; 0x100c
 800143c:	f241 2e00 	movw	lr, #4608	; 0x1200
 8001440:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001444:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001448:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 800144c:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001450:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001454:	6808      	ldr	r0, [r1, #0]
 8001456:	f012 030c 	ands.w	r3, r2, #12
 800145a:	d005      	beq.n	8001468 <HAL_RCC_GetSysClockFreq+0x34>
 800145c:	2b0c      	cmp	r3, #12
 800145e:	bf04      	itt	eq
 8001460:	f000 0003 	andeq.w	r0, r0, #3
 8001464:	2801      	cmpeq	r0, #1
 8001466:	d118      	bne.n	800149a <HAL_RCC_GetSysClockFreq+0x66>
 8001468:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800146c:	f010 0f08 	tst.w	r0, #8
 8001470:	d103      	bne.n	800147a <HAL_RCC_GetSysClockFreq+0x46>
 8001472:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001476:	0a00      	lsrs	r0, r0, #8
 8001478:	e002      	b.n	8001480 <HAL_RCC_GetSysClockFreq+0x4c>
 800147a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800147e:	0900      	lsrs	r0, r0, #4
 8001480:	f24a 5210 	movw	r2, #42256	; 0xa510
 8001484:	f000 000f 	and.w	r0, r0, #15
 8001488:	2b00      	cmp	r3, #0
 800148a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800148e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001492:	4610      	mov	r0, r2
 8001494:	bf18      	it	ne
 8001496:	2000      	movne	r0, #0
 8001498:	e00b      	b.n	80014b2 <HAL_RCC_GetSysClockFreq+0x7e>
 800149a:	f003 000f 	and.w	r0, r3, #15
 800149e:	2804      	cmp	r0, #4
 80014a0:	bf04      	itt	eq
 80014a2:	4660      	moveq	r0, ip
 80014a4:	bd80      	popeq	{r7, pc}
 80014a6:	2808      	cmp	r0, #8
 80014a8:	bf04      	itt	eq
 80014aa:	4670      	moveq	r0, lr
 80014ac:	bd80      	popeq	{r7, pc}
 80014ae:	2000      	movs	r0, #0
 80014b0:	2200      	movs	r2, #0
 80014b2:	2b0c      	cmp	r3, #12
 80014b4:	bf18      	it	ne
 80014b6:	bd80      	popne	{r7, pc}
 80014b8:	6808      	ldr	r0, [r1, #0]
 80014ba:	f000 0303 	and.w	r3, r0, #3
 80014be:	6808      	ldr	r0, [r1, #0]
 80014c0:	2b03      	cmp	r3, #3
 80014c2:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014c6:	f100 0001 	add.w	r0, r0, #1
 80014ca:	d003      	beq.n	80014d4 <HAL_RCC_GetSysClockFreq+0xa0>
 80014cc:	2b02      	cmp	r3, #2
 80014ce:	46e6      	mov	lr, ip
 80014d0:	bf18      	it	ne
 80014d2:	4696      	movne	lr, r2
 80014d4:	680a      	ldr	r2, [r1, #0]
 80014d6:	fbbe f0f0 	udiv	r0, lr, r0
 80014da:	f3c2 2206 	ubfx	r2, r2, #8, #7
 80014de:	6809      	ldr	r1, [r1, #0]
 80014e0:	4350      	muls	r0, r2
 80014e2:	2202      	movs	r2, #2
 80014e4:	f3c1 6141 	ubfx	r1, r1, #25, #2
 80014e8:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80014ec:	fbb0 f0f1 	udiv	r0, r0, r1
 80014f0:	bd80      	pop	{r7, pc}

080014f2 <HAL_RCC_GetPCLK1Freq>:
 80014f2:	f240 0014 	movw	r0, #20
 80014f6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014fa:	f24a 5208 	movw	r2, #42248	; 0xa508
 80014fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001502:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001506:	f6c0 0200 	movt	r2, #2048	; 0x800
 800150a:	6800      	ldr	r0, [r0, #0]
 800150c:	6809      	ldr	r1, [r1, #0]
 800150e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001512:	5c51      	ldrb	r1, [r2, r1]
 8001514:	f001 011f 	and.w	r1, r1, #31
 8001518:	40c8      	lsrs	r0, r1
 800151a:	4770      	bx	lr

0800151c <HAL_RCC_GetPCLK2Freq>:
 800151c:	f240 0014 	movw	r0, #20
 8001520:	f241 0108 	movw	r1, #4104	; 0x1008
 8001524:	f24a 5208 	movw	r2, #42248	; 0xa508
 8001528:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800152c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001530:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001534:	6800      	ldr	r0, [r0, #0]
 8001536:	6809      	ldr	r1, [r1, #0]
 8001538:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 800153c:	5c51      	ldrb	r1, [r2, r1]
 800153e:	f001 011f 	and.w	r1, r1, #31
 8001542:	40c8      	lsrs	r0, r1
 8001544:	4770      	bx	lr

08001546 <HAL_RCC_GetClockConfig>:
 8001546:	220f      	movs	r2, #15
 8001548:	6002      	str	r2, [r0, #0]
 800154a:	f241 0208 	movw	r2, #4104	; 0x1008
 800154e:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001552:	6813      	ldr	r3, [r2, #0]
 8001554:	f003 0303 	and.w	r3, r3, #3
 8001558:	6043      	str	r3, [r0, #4]
 800155a:	6813      	ldr	r3, [r2, #0]
 800155c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001560:	6083      	str	r3, [r0, #8]
 8001562:	6813      	ldr	r3, [r2, #0]
 8001564:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001568:	60c3      	str	r3, [r0, #12]
 800156a:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800156e:	6812      	ldr	r2, [r2, #0]
 8001570:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001574:	6102      	str	r2, [r0, #16]
 8001576:	f242 0000 	movw	r0, #8192	; 0x2000
 800157a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800157e:	6800      	ldr	r0, [r0, #0]
 8001580:	f000 0007 	and.w	r0, r0, #7
 8001584:	6008      	str	r0, [r1, #0]
 8001586:	4770      	bx	lr

08001588 <HAL_TIM_Base_Init>:
 8001588:	b5d0      	push	{r4, r6, r7, lr}
 800158a:	af02      	add	r7, sp, #8
 800158c:	4604      	mov	r4, r0
 800158e:	2c00      	cmp	r4, #0
 8001590:	bf04      	itt	eq
 8001592:	2001      	moveq	r0, #1
 8001594:	bdd0      	popeq	{r4, r6, r7, pc}
 8001596:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001598:	b920      	cbnz	r0, 80015a4 <HAL_TIM_Base_Init+0x1c>
 800159a:	2000      	movs	r0, #0
 800159c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800159e:	4620      	mov	r0, r4
 80015a0:	f000 f892 	bl	80016c8 <HAL_TIM_Base_MspInit>
 80015a4:	2002      	movs	r0, #2
 80015a6:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015aa:	6420      	str	r0, [r4, #64]	; 0x40
 80015ac:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015b0:	6820      	ldr	r0, [r4, #0]
 80015b2:	6801      	ldr	r1, [r0, #0]
 80015b4:	4290      	cmp	r0, r2
 80015b6:	dc0f      	bgt.n	80015d8 <HAL_TIM_Base_Init+0x50>
 80015b8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015bc:	bf1e      	ittt	ne
 80015be:	f240 4200 	movwne	r2, #1024	; 0x400
 80015c2:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015c6:	4290      	cmpne	r0, r2
 80015c8:	d018      	beq.n	80015fc <HAL_TIM_Base_Init+0x74>
 80015ca:	f640 0200 	movw	r2, #2048	; 0x800
 80015ce:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015d2:	4290      	cmp	r0, r2
 80015d4:	d012      	beq.n	80015fc <HAL_TIM_Base_Init+0x74>
 80015d6:	e015      	b.n	8001604 <HAL_TIM_Base_Init+0x7c>
 80015d8:	f640 4200 	movw	r2, #3072	; 0xc00
 80015dc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e0:	4290      	cmp	r0, r2
 80015e2:	bf1e      	ittt	ne
 80015e4:	f243 4200 	movwne	r2, #13312	; 0x3400
 80015e8:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015ec:	4290      	cmpne	r0, r2
 80015ee:	d005      	beq.n	80015fc <HAL_TIM_Base_Init+0x74>
 80015f0:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015f4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015f8:	4290      	cmp	r0, r2
 80015fa:	d103      	bne.n	8001604 <HAL_TIM_Base_Init+0x7c>
 80015fc:	68a2      	ldr	r2, [r4, #8]
 80015fe:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001602:	4311      	orrs	r1, r2
 8001604:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001608:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160c:	4290      	cmp	r0, r2
 800160e:	dd14      	ble.n	800163a <HAL_TIM_Base_Init+0xb2>
 8001610:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001614:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001618:	4290      	cmp	r0, r2
 800161a:	dd1a      	ble.n	8001652 <HAL_TIM_Base_Init+0xca>
 800161c:	f244 0200 	movw	r2, #16384	; 0x4000
 8001620:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001624:	4290      	cmp	r0, r2
 8001626:	bf1e      	ittt	ne
 8001628:	f644 0200 	movwne	r2, #18432	; 0x4800
 800162c:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001630:	4290      	cmpne	r0, r2
 8001632:	d027      	beq.n	8001684 <HAL_TIM_Base_Init+0xfc>
 8001634:	f244 4200 	movw	r2, #17408	; 0x4400
 8001638:	e013      	b.n	8001662 <HAL_TIM_Base_Init+0xda>
 800163a:	f240 72ff 	movw	r2, #2047	; 0x7ff
 800163e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001642:	4290      	cmp	r0, r2
 8001644:	dc12      	bgt.n	800166c <HAL_TIM_Base_Init+0xe4>
 8001646:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800164a:	d01b      	beq.n	8001684 <HAL_TIM_Base_Init+0xfc>
 800164c:	f240 4200 	movw	r2, #1024	; 0x400
 8001650:	e014      	b.n	800167c <HAL_TIM_Base_Init+0xf4>
 8001652:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001656:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800165a:	4290      	cmp	r0, r2
 800165c:	d012      	beq.n	8001684 <HAL_TIM_Base_Init+0xfc>
 800165e:	f243 4200 	movw	r2, #13312	; 0x3400
 8001662:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001666:	4290      	cmp	r0, r2
 8001668:	d00c      	beq.n	8001684 <HAL_TIM_Base_Init+0xfc>
 800166a:	e00f      	b.n	800168c <HAL_TIM_Base_Init+0x104>
 800166c:	f640 0200 	movw	r2, #2048	; 0x800
 8001670:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001674:	4290      	cmp	r0, r2
 8001676:	d005      	beq.n	8001684 <HAL_TIM_Base_Init+0xfc>
 8001678:	f640 4200 	movw	r2, #3072	; 0xc00
 800167c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001680:	4290      	cmp	r0, r2
 8001682:	d103      	bne.n	800168c <HAL_TIM_Base_Init+0x104>
 8001684:	6922      	ldr	r2, [r4, #16]
 8001686:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800168a:	4311      	orrs	r1, r2
 800168c:	69a2      	ldr	r2, [r4, #24]
 800168e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001692:	4311      	orrs	r1, r2
 8001694:	6001      	str	r1, [r0, #0]
 8001696:	68e1      	ldr	r1, [r4, #12]
 8001698:	62c1      	str	r1, [r0, #44]	; 0x2c
 800169a:	6861      	ldr	r1, [r4, #4]
 800169c:	6281      	str	r1, [r0, #40]	; 0x28
 800169e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016a2:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016a6:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016aa:	2907      	cmp	r1, #7
 80016ac:	d807      	bhi.n	80016be <HAL_TIM_Base_Init+0x136>
 80016ae:	2201      	movs	r2, #1
 80016b0:	fa02 f101 	lsl.w	r1, r2, r1
 80016b4:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016b8:	bf1c      	itt	ne
 80016ba:	6961      	ldrne	r1, [r4, #20]
 80016bc:	6301      	strne	r1, [r0, #48]	; 0x30
 80016be:	2101      	movs	r1, #1
 80016c0:	6141      	str	r1, [r0, #20]
 80016c2:	2000      	movs	r0, #0
 80016c4:	6421      	str	r1, [r4, #64]	; 0x40
 80016c6:	bdd0      	pop	{r4, r6, r7, pc}

080016c8 <HAL_TIM_Base_MspInit>:
 80016c8:	4770      	bx	lr

080016ca <HAL_TIM_Base_Start_IT>:
 80016ca:	6800      	ldr	r0, [r0, #0]
 80016cc:	68c1      	ldr	r1, [r0, #12]
 80016ce:	f041 0101 	orr.w	r1, r1, #1
 80016d2:	60c1      	str	r1, [r0, #12]
 80016d4:	2107      	movs	r1, #7
 80016d6:	6882      	ldr	r2, [r0, #8]
 80016d8:	f2c0 0101 	movt	r1, #1
 80016dc:	400a      	ands	r2, r1
 80016de:	2a06      	cmp	r2, #6
 80016e0:	d008      	beq.n	80016f4 <HAL_TIM_Base_Start_IT+0x2a>
 80016e2:	6882      	ldr	r2, [r0, #8]
 80016e4:	4011      	ands	r1, r2
 80016e6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016ea:	bf1e      	ittt	ne
 80016ec:	6801      	ldrne	r1, [r0, #0]
 80016ee:	f041 0101 	orrne.w	r1, r1, #1
 80016f2:	6001      	strne	r1, [r0, #0]
 80016f4:	2000      	movs	r0, #0
 80016f6:	4770      	bx	lr

080016f8 <HAL_TIM_IRQHandler>:
 80016f8:	b5d0      	push	{r4, r6, r7, lr}
 80016fa:	af02      	add	r7, sp, #8
 80016fc:	4604      	mov	r4, r0
 80016fe:	6820      	ldr	r0, [r4, #0]
 8001700:	6901      	ldr	r1, [r0, #16]
 8001702:	f011 0f02 	tst.w	r1, #2
 8001706:	bf1c      	itt	ne
 8001708:	68c1      	ldrne	r1, [r0, #12]
 800170a:	f011 0f02 	tstne.w	r1, #2
 800170e:	d015      	beq.n	800173c <HAL_TIM_IRQHandler+0x44>
 8001710:	f06f 0102 	mvn.w	r1, #2
 8001714:	6101      	str	r1, [r0, #16]
 8001716:	2101      	movs	r1, #1
 8001718:	61e1      	str	r1, [r4, #28]
 800171a:	6980      	ldr	r0, [r0, #24]
 800171c:	f010 0f03 	tst.w	r0, #3
 8001720:	d003      	beq.n	800172a <HAL_TIM_IRQHandler+0x32>
 8001722:	4620      	mov	r0, r4
 8001724:	f000 f8b1 	bl	800188a <HAL_TIM_IC_CaptureCallback>
 8001728:	e005      	b.n	8001736 <HAL_TIM_IRQHandler+0x3e>
 800172a:	4620      	mov	r0, r4
 800172c:	f000 f8ae 	bl	800188c <HAL_TIM_OC_DelayElapsedCallback>
 8001730:	4620      	mov	r0, r4
 8001732:	f000 f8ac 	bl	800188e <HAL_TIM_PWM_PulseFinishedCallback>
 8001736:	2000      	movs	r0, #0
 8001738:	61e0      	str	r0, [r4, #28]
 800173a:	6820      	ldr	r0, [r4, #0]
 800173c:	6901      	ldr	r1, [r0, #16]
 800173e:	f011 0f04 	tst.w	r1, #4
 8001742:	bf1c      	itt	ne
 8001744:	68c1      	ldrne	r1, [r0, #12]
 8001746:	f011 0f04 	tstne.w	r1, #4
 800174a:	d015      	beq.n	8001778 <HAL_TIM_IRQHandler+0x80>
 800174c:	f06f 0104 	mvn.w	r1, #4
 8001750:	6101      	str	r1, [r0, #16]
 8001752:	2102      	movs	r1, #2
 8001754:	61e1      	str	r1, [r4, #28]
 8001756:	6980      	ldr	r0, [r0, #24]
 8001758:	f410 7f40 	tst.w	r0, #768	; 0x300
 800175c:	d003      	beq.n	8001766 <HAL_TIM_IRQHandler+0x6e>
 800175e:	4620      	mov	r0, r4
 8001760:	f000 f893 	bl	800188a <HAL_TIM_IC_CaptureCallback>
 8001764:	e005      	b.n	8001772 <HAL_TIM_IRQHandler+0x7a>
 8001766:	4620      	mov	r0, r4
 8001768:	f000 f890 	bl	800188c <HAL_TIM_OC_DelayElapsedCallback>
 800176c:	4620      	mov	r0, r4
 800176e:	f000 f88e 	bl	800188e <HAL_TIM_PWM_PulseFinishedCallback>
 8001772:	2000      	movs	r0, #0
 8001774:	61e0      	str	r0, [r4, #28]
 8001776:	6820      	ldr	r0, [r4, #0]
 8001778:	6901      	ldr	r1, [r0, #16]
 800177a:	f011 0f08 	tst.w	r1, #8
 800177e:	bf1c      	itt	ne
 8001780:	68c1      	ldrne	r1, [r0, #12]
 8001782:	f011 0f08 	tstne.w	r1, #8
 8001786:	d015      	beq.n	80017b4 <HAL_TIM_IRQHandler+0xbc>
 8001788:	f06f 0108 	mvn.w	r1, #8
 800178c:	6101      	str	r1, [r0, #16]
 800178e:	2104      	movs	r1, #4
 8001790:	61e1      	str	r1, [r4, #28]
 8001792:	69c0      	ldr	r0, [r0, #28]
 8001794:	f010 0f03 	tst.w	r0, #3
 8001798:	d003      	beq.n	80017a2 <HAL_TIM_IRQHandler+0xaa>
 800179a:	4620      	mov	r0, r4
 800179c:	f000 f875 	bl	800188a <HAL_TIM_IC_CaptureCallback>
 80017a0:	e005      	b.n	80017ae <HAL_TIM_IRQHandler+0xb6>
 80017a2:	4620      	mov	r0, r4
 80017a4:	f000 f872 	bl	800188c <HAL_TIM_OC_DelayElapsedCallback>
 80017a8:	4620      	mov	r0, r4
 80017aa:	f000 f870 	bl	800188e <HAL_TIM_PWM_PulseFinishedCallback>
 80017ae:	2000      	movs	r0, #0
 80017b0:	61e0      	str	r0, [r4, #28]
 80017b2:	6820      	ldr	r0, [r4, #0]
 80017b4:	6901      	ldr	r1, [r0, #16]
 80017b6:	f011 0f10 	tst.w	r1, #16
 80017ba:	bf1c      	itt	ne
 80017bc:	68c1      	ldrne	r1, [r0, #12]
 80017be:	f011 0f10 	tstne.w	r1, #16
 80017c2:	d015      	beq.n	80017f0 <HAL_TIM_IRQHandler+0xf8>
 80017c4:	f06f 0110 	mvn.w	r1, #16
 80017c8:	6101      	str	r1, [r0, #16]
 80017ca:	2108      	movs	r1, #8
 80017cc:	61e1      	str	r1, [r4, #28]
 80017ce:	69c0      	ldr	r0, [r0, #28]
 80017d0:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017d4:	d003      	beq.n	80017de <HAL_TIM_IRQHandler+0xe6>
 80017d6:	4620      	mov	r0, r4
 80017d8:	f000 f857 	bl	800188a <HAL_TIM_IC_CaptureCallback>
 80017dc:	e005      	b.n	80017ea <HAL_TIM_IRQHandler+0xf2>
 80017de:	4620      	mov	r0, r4
 80017e0:	f000 f854 	bl	800188c <HAL_TIM_OC_DelayElapsedCallback>
 80017e4:	4620      	mov	r0, r4
 80017e6:	f000 f852 	bl	800188e <HAL_TIM_PWM_PulseFinishedCallback>
 80017ea:	2000      	movs	r0, #0
 80017ec:	61e0      	str	r0, [r4, #28]
 80017ee:	6820      	ldr	r0, [r4, #0]
 80017f0:	6901      	ldr	r1, [r0, #16]
 80017f2:	f011 0f01 	tst.w	r1, #1
 80017f6:	bf1c      	itt	ne
 80017f8:	68c1      	ldrne	r1, [r0, #12]
 80017fa:	f011 0f01 	tstne.w	r1, #1
 80017fe:	d006      	beq.n	800180e <HAL_TIM_IRQHandler+0x116>
 8001800:	f06f 0101 	mvn.w	r1, #1
 8001804:	6101      	str	r1, [r0, #16]
 8001806:	4620      	mov	r0, r4
 8001808:	f000 f894 	bl	8001934 <HAL_TIM_PeriodElapsedCallback>
 800180c:	6820      	ldr	r0, [r4, #0]
 800180e:	6901      	ldr	r1, [r0, #16]
 8001810:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001814:	bf1c      	itt	ne
 8001816:	68c1      	ldrne	r1, [r0, #12]
 8001818:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800181c:	d006      	beq.n	800182c <HAL_TIM_IRQHandler+0x134>
 800181e:	f06f 0180 	mvn.w	r1, #128	; 0x80
 8001822:	6101      	str	r1, [r0, #16]
 8001824:	4620      	mov	r0, r4
 8001826:	f000 f835 	bl	8001894 <HAL_TIMEx_BreakCallback>
 800182a:	6820      	ldr	r0, [r4, #0]
 800182c:	6901      	ldr	r1, [r0, #16]
 800182e:	f411 7f80 	tst.w	r1, #256	; 0x100
 8001832:	bf1c      	itt	ne
 8001834:	68c1      	ldrne	r1, [r0, #12]
 8001836:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800183a:	d006      	beq.n	800184a <HAL_TIM_IRQHandler+0x152>
 800183c:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001840:	6101      	str	r1, [r0, #16]
 8001842:	4620      	mov	r0, r4
 8001844:	f000 f827 	bl	8001896 <HAL_TIMEx_Break2Callback>
 8001848:	6820      	ldr	r0, [r4, #0]
 800184a:	6901      	ldr	r1, [r0, #16]
 800184c:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001850:	bf1c      	itt	ne
 8001852:	68c1      	ldrne	r1, [r0, #12]
 8001854:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001858:	d006      	beq.n	8001868 <HAL_TIM_IRQHandler+0x170>
 800185a:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800185e:	6101      	str	r1, [r0, #16]
 8001860:	4620      	mov	r0, r4
 8001862:	f000 f815 	bl	8001890 <HAL_TIM_TriggerCallback>
 8001866:	6820      	ldr	r0, [r4, #0]
 8001868:	6901      	ldr	r1, [r0, #16]
 800186a:	f011 0f20 	tst.w	r1, #32
 800186e:	bf1c      	itt	ne
 8001870:	68c1      	ldrne	r1, [r0, #12]
 8001872:	f011 0f20 	tstne.w	r1, #32
 8001876:	d100      	bne.n	800187a <HAL_TIM_IRQHandler+0x182>
 8001878:	bdd0      	pop	{r4, r6, r7, pc}
 800187a:	f06f 0120 	mvn.w	r1, #32
 800187e:	6101      	str	r1, [r0, #16]
 8001880:	4620      	mov	r0, r4
 8001882:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001886:	f000 b804 	b.w	8001892 <HAL_TIMEx_CommutationCallback>

0800188a <HAL_TIM_IC_CaptureCallback>:
 800188a:	4770      	bx	lr

0800188c <HAL_TIM_OC_DelayElapsedCallback>:
 800188c:	4770      	bx	lr

0800188e <HAL_TIM_PWM_PulseFinishedCallback>:
 800188e:	4770      	bx	lr

08001890 <HAL_TIM_TriggerCallback>:
 8001890:	4770      	bx	lr

08001892 <HAL_TIMEx_CommutationCallback>:
 8001892:	4770      	bx	lr

08001894 <HAL_TIMEx_BreakCallback>:
 8001894:	4770      	bx	lr

08001896 <HAL_TIMEx_Break2Callback>:
 8001896:	4770      	bx	lr

08001898 <HAL_InitTick>:
 8001898:	b5b0      	push	{r4, r5, r7, lr}
 800189a:	af02      	add	r7, sp, #8
 800189c:	b086      	sub	sp, #24
 800189e:	4601      	mov	r1, r0
 80018a0:	2036      	movs	r0, #54	; 0x36
 80018a2:	2200      	movs	r2, #0
 80018a4:	2400      	movs	r4, #0
 80018a6:	f7ff fc99 	bl	80011dc <HAL_NVIC_SetPriority>
 80018aa:	2036      	movs	r0, #54	; 0x36
 80018ac:	f7ff fcc9 	bl	8001242 <HAL_NVIC_EnableIRQ>
 80018b0:	f241 0058 	movw	r0, #4184	; 0x1058
 80018b4:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018b8:	6801      	ldr	r1, [r0, #0]
 80018ba:	f041 0110 	orr.w	r1, r1, #16
 80018be:	6001      	str	r1, [r0, #0]
 80018c0:	4669      	mov	r1, sp
 80018c2:	6800      	ldr	r0, [r0, #0]
 80018c4:	f000 0010 	and.w	r0, r0, #16
 80018c8:	9001      	str	r0, [sp, #4]
 80018ca:	9801      	ldr	r0, [sp, #4]
 80018cc:	a801      	add	r0, sp, #4
 80018ce:	f7ff fe3a 	bl	8001546 <HAL_RCC_GetClockConfig>
 80018d2:	9d04      	ldr	r5, [sp, #16]
 80018d4:	f7ff fe0d 	bl	80014f2 <HAL_RCC_GetPCLK1Freq>
 80018d8:	2d00      	cmp	r5, #0
 80018da:	f640 21a4 	movw	r1, #2724	; 0xaa4
 80018de:	f241 0200 	movw	r2, #4096	; 0x1000
 80018e2:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018e6:	bf18      	it	ne
 80018e8:	2501      	movne	r5, #1
 80018ea:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018ee:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018f2:	40a8      	lsls	r0, r5
 80018f4:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018f8:	618c      	str	r4, [r1, #24]
 80018fa:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018fe:	fba0 0505 	umull	r0, r5, r0, r5
 8001902:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001906:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 800190a:	e9c1 2000 	strd	r2, r0, [r1]
 800190e:	4608      	mov	r0, r1
 8001910:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001914:	610c      	str	r4, [r1, #16]
 8001916:	f7ff fe37 	bl	8001588 <HAL_TIM_Base_Init>
 800191a:	2800      	cmp	r0, #0
 800191c:	bf1e      	ittt	ne
 800191e:	2001      	movne	r0, #1
 8001920:	b006      	addne	sp, #24
 8001922:	bdb0      	popne	{r4, r5, r7, pc}
 8001924:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001928:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800192c:	f7ff fecd 	bl	80016ca <HAL_TIM_Base_Start_IT>
 8001930:	b006      	add	sp, #24
 8001932:	bdb0      	pop	{r4, r5, r7, pc}

08001934 <HAL_TIM_PeriodElapsedCallback>:
 8001934:	f7ff bc34 	b.w	80011a0 <HAL_IncTick>

08001938 <TIM6_DAC_IRQHandler>:
 8001938:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800193c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001940:	f7ff beda 	b.w	80016f8 <HAL_TIM_IRQHandler>

08001944 <HAL_UART_Init>:
 8001944:	b5d0      	push	{r4, r6, r7, lr}
 8001946:	af02      	add	r7, sp, #8
 8001948:	4604      	mov	r4, r0
 800194a:	b194      	cbz	r4, 8001972 <HAL_UART_Init+0x2e>
 800194c:	6f60      	ldr	r0, [r4, #116]	; 0x74
 800194e:	b920      	cbnz	r0, 800195a <HAL_UART_Init+0x16>
 8001950:	2000      	movs	r0, #0
 8001952:	6720      	str	r0, [r4, #112]	; 0x70
 8001954:	4620      	mov	r0, r4
 8001956:	f000 f826 	bl	80019a6 <HAL_UART_MspInit>
 800195a:	2024      	movs	r0, #36	; 0x24
 800195c:	6760      	str	r0, [r4, #116]	; 0x74
 800195e:	6820      	ldr	r0, [r4, #0]
 8001960:	6801      	ldr	r1, [r0, #0]
 8001962:	f021 0101 	bic.w	r1, r1, #1
 8001966:	6001      	str	r1, [r0, #0]
 8001968:	4620      	mov	r0, r4
 800196a:	f000 f81d 	bl	80019a8 <UART_SetConfig>
 800196e:	2801      	cmp	r0, #1
 8001970:	d101      	bne.n	8001976 <HAL_UART_Init+0x32>
 8001972:	2001      	movs	r0, #1
 8001974:	bdd0      	pop	{r4, r6, r7, pc}
 8001976:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001978:	2800      	cmp	r0, #0
 800197a:	bf1c      	itt	ne
 800197c:	4620      	movne	r0, r4
 800197e:	f000 f944 	blne	8001c0a <UART_AdvFeatureConfig>
 8001982:	6820      	ldr	r0, [r4, #0]
 8001984:	6841      	ldr	r1, [r0, #4]
 8001986:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 800198a:	6041      	str	r1, [r0, #4]
 800198c:	6881      	ldr	r1, [r0, #8]
 800198e:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001992:	6081      	str	r1, [r0, #8]
 8001994:	6801      	ldr	r1, [r0, #0]
 8001996:	f041 0101 	orr.w	r1, r1, #1
 800199a:	6001      	str	r1, [r0, #0]
 800199c:	4620      	mov	r0, r4
 800199e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a2:	f000 b99d 	b.w	8001ce0 <UART_CheckIdleState>

080019a6 <HAL_UART_MspInit>:
 80019a6:	4770      	bx	lr

080019a8 <UART_SetConfig>:
 80019a8:	b5b0      	push	{r4, r5, r7, lr}
 80019aa:	af02      	add	r7, sp, #8
 80019ac:	4604      	mov	r4, r0
 80019ae:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019b2:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019b6:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ba:	6821      	ldr	r1, [r4, #0]
 80019bc:	68a0      	ldr	r0, [r4, #8]
 80019be:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019c2:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019c6:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019ca:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019ce:	4310      	orrs	r0, r2
 80019d0:	69e2      	ldr	r2, [r4, #28]
 80019d2:	4571      	cmp	r1, lr
 80019d4:	ea40 0003 	orr.w	r0, r0, r3
 80019d8:	680b      	ldr	r3, [r1, #0]
 80019da:	ea40 0002 	orr.w	r0, r0, r2
 80019de:	ea03 0305 	and.w	r3, r3, r5
 80019e2:	f04f 0510 	mov.w	r5, #16
 80019e6:	ea40 0003 	orr.w	r0, r0, r3
 80019ea:	6008      	str	r0, [r1, #0]
 80019ec:	6848      	ldr	r0, [r1, #4]
 80019ee:	68e3      	ldr	r3, [r4, #12]
 80019f0:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 80019f4:	ea40 0003 	orr.w	r0, r0, r3
 80019f8:	6048      	str	r0, [r1, #4]
 80019fa:	69a0      	ldr	r0, [r4, #24]
 80019fc:	bf1c      	itt	ne
 80019fe:	6a23      	ldrne	r3, [r4, #32]
 8001a00:	4318      	orrne	r0, r3
 8001a02:	688b      	ldr	r3, [r1, #8]
 8001a04:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a08:	4318      	orrs	r0, r3
 8001a0a:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a0e:	6088      	str	r0, [r1, #8]
 8001a10:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a14:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a18:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a1c:	4299      	cmp	r1, r3
 8001a1e:	dc15      	bgt.n	8001a4c <UART_SetConfig+0xa4>
 8001a20:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a24:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a28:	4299      	cmp	r1, r3
 8001a2a:	d024      	beq.n	8001a76 <UART_SetConfig+0xce>
 8001a2c:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a30:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a34:	4299      	cmp	r1, r3
 8001a36:	d022      	beq.n	8001a7e <UART_SetConfig+0xd6>
 8001a38:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a3c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a40:	4299      	cmp	r1, r3
 8001a42:	d131      	bne.n	8001aa8 <UART_SetConfig+0x100>
 8001a44:	f8dc 3000 	ldr.w	r3, [ip]
 8001a48:	099d      	lsrs	r5, r3, #6
 8001a4a:	e023      	b.n	8001a94 <UART_SetConfig+0xec>
 8001a4c:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a50:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a54:	4299      	cmp	r1, r3
 8001a56:	d016      	beq.n	8001a86 <UART_SetConfig+0xde>
 8001a58:	4571      	cmp	r1, lr
 8001a5a:	d018      	beq.n	8001a8e <UART_SetConfig+0xe6>
 8001a5c:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a60:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a64:	4299      	cmp	r1, r3
 8001a66:	d11f      	bne.n	8001aa8 <UART_SetConfig+0x100>
 8001a68:	f8dc 5000 	ldr.w	r5, [ip]
 8001a6c:	f24a 5340 	movw	r3, #42304	; 0xa540
 8001a70:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a74:	e012      	b.n	8001a9c <UART_SetConfig+0xf4>
 8001a76:	f8dc 3000 	ldr.w	r3, [ip]
 8001a7a:	089d      	lsrs	r5, r3, #2
 8001a7c:	e00a      	b.n	8001a94 <UART_SetConfig+0xec>
 8001a7e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a82:	091d      	lsrs	r5, r3, #4
 8001a84:	e006      	b.n	8001a94 <UART_SetConfig+0xec>
 8001a86:	f8dc 3000 	ldr.w	r3, [ip]
 8001a8a:	0a1d      	lsrs	r5, r3, #8
 8001a8c:	e002      	b.n	8001a94 <UART_SetConfig+0xec>
 8001a8e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a92:	0a9d      	lsrs	r5, r3, #10
 8001a94:	f24a 5350 	movw	r3, #42320	; 0xa550
 8001a98:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a9c:	f005 0503 	and.w	r5, r5, #3
 8001aa0:	f085 0502 	eor.w	r5, r5, #2
 8001aa4:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001aa8:	4571      	cmp	r1, lr
 8001aaa:	d012      	beq.n	8001ad2 <UART_SetConfig+0x12a>
 8001aac:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ab0:	d11d      	bne.n	8001aee <UART_SetConfig+0x146>
 8001ab2:	f005 001f 	and.w	r0, r5, #31
 8001ab6:	2101      	movs	r1, #1
 8001ab8:	2808      	cmp	r0, #8
 8001aba:	f200 809f 	bhi.w	8001bfc <UART_SetConfig+0x254>
 8001abe:	e8df f000 	tbb	[pc, r0]
 8001ac2:	4005      	.short	0x4005
 8001ac4:	9d499d43 	.word	0x9d499d43
 8001ac8:	004f9d9d 	.word	0x004f9d9d
 8001acc:	f7ff fd11 	bl	80014f2 <HAL_RCC_GetPCLK1Freq>
 8001ad0:	e042      	b.n	8001b58 <UART_SetConfig+0x1b0>
 8001ad2:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001ad6:	2101      	movs	r1, #1
 8001ad8:	2d04      	cmp	r5, #4
 8001ada:	f200 808f 	bhi.w	8001bfc <UART_SetConfig+0x254>
 8001ade:	e8df f005 	tbb	[pc, r5]
 8001ae2:	1c03      	.short	0x1c03
 8001ae4:	001a8d16 	.word	0x001a8d16
 8001ae8:	f7ff fd03 	bl	80014f2 <HAL_RCC_GetPCLK1Freq>
 8001aec:	e011      	b.n	8001b12 <UART_SetConfig+0x16a>
 8001aee:	f005 021f 	and.w	r2, r5, #31
 8001af2:	2101      	movs	r1, #1
 8001af4:	2a08      	cmp	r2, #8
 8001af6:	f200 8081 	bhi.w	8001bfc <UART_SetConfig+0x254>
 8001afa:	e8df f002 	tbb	[pc, r2]
 8001afe:	4305      	.short	0x4305
 8001b00:	7f487f46 	.word	0x7f487f46
 8001b04:	004e7f7f 	.word	0x004e7f7f
 8001b08:	f7ff fcf3 	bl	80014f2 <HAL_RCC_GetPCLK1Freq>
 8001b0c:	e041      	b.n	8001b92 <UART_SetConfig+0x1ea>
 8001b0e:	f7ff fc91 	bl	8001434 <HAL_RCC_GetSysClockFreq>
 8001b12:	b910      	cbnz	r0, 8001b1a <UART_SetConfig+0x172>
 8001b14:	e071      	b.n	8001bfa <UART_SetConfig+0x252>
 8001b16:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b1a:	6862      	ldr	r2, [r4, #4]
 8001b1c:	2101      	movs	r1, #1
 8001b1e:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b22:	4298      	cmp	r0, r3
 8001b24:	d36a      	bcc.n	8001bfc <UART_SetConfig+0x254>
 8001b26:	0313      	lsls	r3, r2, #12
 8001b28:	4298      	cmp	r0, r3
 8001b2a:	bf9c      	itt	ls
 8001b2c:	2101      	movls	r1, #1
 8001b2e:	2d04      	cmpls	r5, #4
 8001b30:	d864      	bhi.n	8001bfc <UART_SetConfig+0x254>
 8001b32:	e8df f005 	tbb	[pc, r5]
 8001b36:	3e03      	.short	0x3e03
 8001b38:	00526345 	.word	0x00526345
 8001b3c:	f7ff fcd9 	bl	80014f2 <HAL_RCC_GetPCLK1Freq>
 8001b40:	e040      	b.n	8001bc4 <UART_SetConfig+0x21c>
 8001b42:	f7ff fceb 	bl	800151c <HAL_RCC_GetPCLK2Freq>
 8001b46:	e007      	b.n	8001b58 <UART_SetConfig+0x1b0>
 8001b48:	6861      	ldr	r1, [r4, #4]
 8001b4a:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b4e:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b52:	e008      	b.n	8001b66 <UART_SetConfig+0x1be>
 8001b54:	f7ff fc6e 	bl	8001434 <HAL_RCC_GetSysClockFreq>
 8001b58:	6861      	ldr	r1, [r4, #4]
 8001b5a:	0040      	lsls	r0, r0, #1
 8001b5c:	084a      	lsrs	r2, r1, #1
 8001b5e:	e003      	b.n	8001b68 <UART_SetConfig+0x1c0>
 8001b60:	6861      	ldr	r1, [r4, #4]
 8001b62:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b66:	0848      	lsrs	r0, r1, #1
 8001b68:	4410      	add	r0, r2
 8001b6a:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b6e:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b72:	4001      	ands	r1, r0
 8001b74:	2910      	cmp	r1, #16
 8001b76:	d303      	bcc.n	8001b80 <UART_SetConfig+0x1d8>
 8001b78:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b7c:	4308      	orrs	r0, r1
 8001b7e:	e03a      	b.n	8001bf6 <UART_SetConfig+0x24e>
 8001b80:	2101      	movs	r1, #1
 8001b82:	e03b      	b.n	8001bfc <UART_SetConfig+0x254>
 8001b84:	f7ff fcca 	bl	800151c <HAL_RCC_GetPCLK2Freq>
 8001b88:	e003      	b.n	8001b92 <UART_SetConfig+0x1ea>
 8001b8a:	6862      	ldr	r2, [r4, #4]
 8001b8c:	e008      	b.n	8001ba0 <UART_SetConfig+0x1f8>
 8001b8e:	f7ff fc51 	bl	8001434 <HAL_RCC_GetSysClockFreq>
 8001b92:	6862      	ldr	r2, [r4, #4]
 8001b94:	4601      	mov	r1, r0
 8001b96:	0850      	lsrs	r0, r2, #1
 8001b98:	e003      	b.n	8001ba2 <UART_SetConfig+0x1fa>
 8001b9a:	6862      	ldr	r2, [r4, #4]
 8001b9c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001ba0:	0851      	lsrs	r1, r2, #1
 8001ba2:	4408      	add	r0, r1
 8001ba4:	fbb0 f0f2 	udiv	r0, r0, r2
 8001ba8:	b280      	uxth	r0, r0
 8001baa:	2810      	cmp	r0, #16
 8001bac:	d223      	bcs.n	8001bf6 <UART_SetConfig+0x24e>
 8001bae:	2101      	movs	r1, #1
 8001bb0:	e024      	b.n	8001bfc <UART_SetConfig+0x254>
 8001bb2:	2000      	movs	r0, #0
 8001bb4:	2100      	movs	r1, #0
 8001bb6:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bba:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bbe:	e006      	b.n	8001bce <UART_SetConfig+0x226>
 8001bc0:	f7ff fc38 	bl	8001434 <HAL_RCC_GetSysClockFreq>
 8001bc4:	6862      	ldr	r2, [r4, #4]
 8001bc6:	0e01      	lsrs	r1, r0, #24
 8001bc8:	0853      	lsrs	r3, r2, #1
 8001bca:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bce:	f141 0100 	adc.w	r1, r1, #0
 8001bd2:	2300      	movs	r3, #0
 8001bd4:	f7fe ffa8 	bl	8000b28 <__aeabi_uldivmod>
 8001bd8:	e005      	b.n	8001be6 <UART_SetConfig+0x23e>
 8001bda:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bde:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001be2:	fbb0 f0f2 	udiv	r0, r0, r2
 8001be6:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001bea:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001bee:	f2c0 020f 	movt	r2, #15
 8001bf2:	4291      	cmp	r1, r2
 8001bf4:	d807      	bhi.n	8001c06 <UART_SetConfig+0x25e>
 8001bf6:	6821      	ldr	r1, [r4, #0]
 8001bf8:	60c8      	str	r0, [r1, #12]
 8001bfa:	2100      	movs	r1, #0
 8001bfc:	2000      	movs	r0, #0
 8001bfe:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c02:	4608      	mov	r0, r1
 8001c04:	bdb0      	pop	{r4, r5, r7, pc}
 8001c06:	2101      	movs	r1, #1
 8001c08:	e7f8      	b.n	8001bfc <UART_SetConfig+0x254>

08001c0a <UART_AdvFeatureConfig>:
 8001c0a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c0c:	f011 0f01 	tst.w	r1, #1
 8001c10:	d008      	beq.n	8001c24 <UART_AdvFeatureConfig+0x1a>
 8001c12:	6802      	ldr	r2, [r0, #0]
 8001c14:	6853      	ldr	r3, [r2, #4]
 8001c16:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c1a:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c1e:	ea43 030c 	orr.w	r3, r3, ip
 8001c22:	6053      	str	r3, [r2, #4]
 8001c24:	078a      	lsls	r2, r1, #30
 8001c26:	d508      	bpl.n	8001c3a <UART_AdvFeatureConfig+0x30>
 8001c28:	6802      	ldr	r2, [r0, #0]
 8001c2a:	6853      	ldr	r3, [r2, #4]
 8001c2c:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c30:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c34:	ea43 030c 	orr.w	r3, r3, ip
 8001c38:	6053      	str	r3, [r2, #4]
 8001c3a:	074a      	lsls	r2, r1, #29
 8001c3c:	d508      	bpl.n	8001c50 <UART_AdvFeatureConfig+0x46>
 8001c3e:	6802      	ldr	r2, [r0, #0]
 8001c40:	6853      	ldr	r3, [r2, #4]
 8001c42:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c46:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c4a:	ea43 030c 	orr.w	r3, r3, ip
 8001c4e:	6053      	str	r3, [r2, #4]
 8001c50:	070a      	lsls	r2, r1, #28
 8001c52:	d508      	bpl.n	8001c66 <UART_AdvFeatureConfig+0x5c>
 8001c54:	6802      	ldr	r2, [r0, #0]
 8001c56:	6853      	ldr	r3, [r2, #4]
 8001c58:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c5c:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c60:	ea43 030c 	orr.w	r3, r3, ip
 8001c64:	6053      	str	r3, [r2, #4]
 8001c66:	06ca      	lsls	r2, r1, #27
 8001c68:	d508      	bpl.n	8001c7c <UART_AdvFeatureConfig+0x72>
 8001c6a:	6802      	ldr	r2, [r0, #0]
 8001c6c:	6893      	ldr	r3, [r2, #8]
 8001c6e:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c72:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c76:	ea43 030c 	orr.w	r3, r3, ip
 8001c7a:	6093      	str	r3, [r2, #8]
 8001c7c:	068a      	lsls	r2, r1, #26
 8001c7e:	d508      	bpl.n	8001c92 <UART_AdvFeatureConfig+0x88>
 8001c80:	6802      	ldr	r2, [r0, #0]
 8001c82:	6893      	ldr	r3, [r2, #8]
 8001c84:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c88:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c8c:	ea43 030c 	orr.w	r3, r3, ip
 8001c90:	6093      	str	r3, [r2, #8]
 8001c92:	b580      	push	{r7, lr}
 8001c94:	466f      	mov	r7, sp
 8001c96:	064a      	lsls	r2, r1, #25
 8001c98:	d515      	bpl.n	8001cc6 <UART_AdvFeatureConfig+0xbc>
 8001c9a:	f8d0 e000 	ldr.w	lr, [r0]
 8001c9e:	f8de c004 	ldr.w	ip, [lr, #4]
 8001ca2:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001ca4:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001ca8:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cac:	ea42 0203 	orr.w	r2, r2, r3
 8001cb0:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cb4:	d107      	bne.n	8001cc6 <UART_AdvFeatureConfig+0xbc>
 8001cb6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cba:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cbc:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cc0:	431a      	orrs	r2, r3
 8001cc2:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cc6:	0609      	lsls	r1, r1, #24
 8001cc8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001ccc:	bf58      	it	pl
 8001cce:	4770      	bxpl	lr
 8001cd0:	6801      	ldr	r1, [r0, #0]
 8001cd2:	684a      	ldr	r2, [r1, #4]
 8001cd4:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001cd6:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001cda:	4310      	orrs	r0, r2
 8001cdc:	6048      	str	r0, [r1, #4]
 8001cde:	4770      	bx	lr

08001ce0 <UART_CheckIdleState>:
 8001ce0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ce2:	af03      	add	r7, sp, #12
 8001ce4:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ce8:	4604      	mov	r4, r0
 8001cea:	2000      	movs	r0, #0
 8001cec:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001cee:	f7ff fa5f 	bl	80011b0 <HAL_GetTick>
 8001cf2:	4605      	mov	r5, r0
 8001cf4:	6820      	ldr	r0, [r4, #0]
 8001cf6:	6801      	ldr	r1, [r0, #0]
 8001cf8:	f011 0f08 	tst.w	r1, #8
 8001cfc:	d00f      	beq.n	8001d1e <UART_CheckIdleState+0x3e>
 8001cfe:	69c1      	ldr	r1, [r0, #28]
 8001d00:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d04:	d10b      	bne.n	8001d1e <UART_CheckIdleState+0x3e>
 8001d06:	2600      	movs	r6, #0
 8001d08:	f7ff fa52 	bl	80011b0 <HAL_GetTick>
 8001d0c:	1b41      	subs	r1, r0, r5
 8001d0e:	6820      	ldr	r0, [r4, #0]
 8001d10:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d14:	d11b      	bne.n	8001d4e <UART_CheckIdleState+0x6e>
 8001d16:	69c1      	ldr	r1, [r0, #28]
 8001d18:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d1c:	d0f4      	beq.n	8001d08 <UART_CheckIdleState+0x28>
 8001d1e:	6801      	ldr	r1, [r0, #0]
 8001d20:	f011 0f04 	tst.w	r1, #4
 8001d24:	d101      	bne.n	8001d2a <UART_CheckIdleState+0x4a>
 8001d26:	2600      	movs	r6, #0
 8001d28:	e01a      	b.n	8001d60 <UART_CheckIdleState+0x80>
 8001d2a:	69c0      	ldr	r0, [r0, #28]
 8001d2c:	2600      	movs	r6, #0
 8001d2e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d32:	d115      	bne.n	8001d60 <UART_CheckIdleState+0x80>
 8001d34:	f7ff fa3c 	bl	80011b0 <HAL_GetTick>
 8001d38:	1b41      	subs	r1, r0, r5
 8001d3a:	6820      	ldr	r0, [r4, #0]
 8001d3c:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d40:	d105      	bne.n	8001d4e <UART_CheckIdleState+0x6e>
 8001d42:	69c0      	ldr	r0, [r0, #28]
 8001d44:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d48:	d0f4      	beq.n	8001d34 <UART_CheckIdleState+0x54>
 8001d4a:	2600      	movs	r6, #0
 8001d4c:	e008      	b.n	8001d60 <UART_CheckIdleState+0x80>
 8001d4e:	6801      	ldr	r1, [r0, #0]
 8001d50:	2603      	movs	r6, #3
 8001d52:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d56:	6001      	str	r1, [r0, #0]
 8001d58:	6881      	ldr	r1, [r0, #8]
 8001d5a:	f021 0101 	bic.w	r1, r1, #1
 8001d5e:	6081      	str	r1, [r0, #8]
 8001d60:	2020      	movs	r0, #32
 8001d62:	6760      	str	r0, [r4, #116]	; 0x74
 8001d64:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d66:	2000      	movs	r0, #0
 8001d68:	6720      	str	r0, [r4, #112]	; 0x70
 8001d6a:	4630      	mov	r0, r6
 8001d6c:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d70:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d72 <HAL_UART_Transmit>:
 8001d72:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d74:	af03      	add	r7, sp, #12
 8001d76:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d7a:	b081      	sub	sp, #4
 8001d7c:	4604      	mov	r4, r0
 8001d7e:	461d      	mov	r5, r3
 8001d80:	4616      	mov	r6, r2
 8001d82:	4689      	mov	r9, r1
 8001d84:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d86:	2820      	cmp	r0, #32
 8001d88:	d109      	bne.n	8001d9e <HAL_UART_Transmit+0x2c>
 8001d8a:	f1b9 0f00 	cmp.w	r9, #0
 8001d8e:	f04f 0001 	mov.w	r0, #1
 8001d92:	bf18      	it	ne
 8001d94:	2e00      	cmpne	r6, #0
 8001d96:	d003      	beq.n	8001da0 <HAL_UART_Transmit+0x2e>
 8001d98:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d9a:	2801      	cmp	r0, #1
 8001d9c:	d104      	bne.n	8001da8 <HAL_UART_Transmit+0x36>
 8001d9e:	2002      	movs	r0, #2
 8001da0:	b001      	add	sp, #4
 8001da2:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001da6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001da8:	2001      	movs	r0, #1
 8001daa:	6720      	str	r0, [r4, #112]	; 0x70
 8001dac:	2000      	movs	r0, #0
 8001dae:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001db0:	2021      	movs	r0, #33	; 0x21
 8001db2:	6760      	str	r0, [r4, #116]	; 0x74
 8001db4:	f7ff f9fc 	bl	80011b0 <HAL_GetTick>
 8001db8:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001dbc:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001dc0:	4680      	mov	r8, r0
 8001dc2:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dc6:	f8d4 b000 	ldr.w	fp, [r4]
 8001dca:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001dce:	2900      	cmp	r1, #0
 8001dd0:	d040      	beq.n	8001e54 <HAL_UART_Transmit+0xe2>
 8001dd2:	f105 0a01 	add.w	sl, r5, #1
 8001dd6:	0600      	lsls	r0, r0, #24
 8001dd8:	d410      	bmi.n	8001dfc <HAL_UART_Transmit+0x8a>
 8001dda:	465e      	mov	r6, fp
 8001ddc:	f1ba 0f00 	cmp.w	sl, #0
 8001de0:	d007      	beq.n	8001df2 <HAL_UART_Transmit+0x80>
 8001de2:	b33d      	cbz	r5, 8001e34 <HAL_UART_Transmit+0xc2>
 8001de4:	f7ff f9e4 	bl	80011b0 <HAL_GetTick>
 8001de8:	6826      	ldr	r6, [r4, #0]
 8001dea:	eba0 0008 	sub.w	r0, r0, r8
 8001dee:	42a8      	cmp	r0, r5
 8001df0:	d821      	bhi.n	8001e36 <HAL_UART_Transmit+0xc4>
 8001df2:	69f0      	ldr	r0, [r6, #28]
 8001df4:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001df8:	d0f0      	beq.n	8001ddc <HAL_UART_Transmit+0x6a>
 8001dfa:	e000      	b.n	8001dfe <HAL_UART_Transmit+0x8c>
 8001dfc:	465e      	mov	r6, fp
 8001dfe:	68a0      	ldr	r0, [r4, #8]
 8001e00:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e04:	bf04      	itt	eq
 8001e06:	6920      	ldreq	r0, [r4, #16]
 8001e08:	2800      	cmpeq	r0, #0
 8001e0a:	d002      	beq.n	8001e12 <HAL_UART_Transmit+0xa0>
 8001e0c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e10:	e003      	b.n	8001e1a <HAL_UART_Transmit+0xa8>
 8001e12:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e16:	f36f 205f 	bfc	r0, #9, #23
 8001e1a:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e1c:	46b3      	mov	fp, r6
 8001e1e:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e22:	3801      	subs	r0, #1
 8001e24:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e28:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e2c:	69f0      	ldr	r0, [r6, #28]
 8001e2e:	2900      	cmp	r1, #0
 8001e30:	d1d1      	bne.n	8001dd6 <HAL_UART_Transmit+0x64>
 8001e32:	e010      	b.n	8001e56 <HAL_UART_Transmit+0xe4>
 8001e34:	465e      	mov	r6, fp
 8001e36:	6830      	ldr	r0, [r6, #0]
 8001e38:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e3c:	6030      	str	r0, [r6, #0]
 8001e3e:	68b0      	ldr	r0, [r6, #8]
 8001e40:	f020 0001 	bic.w	r0, r0, #1
 8001e44:	60b0      	str	r0, [r6, #8]
 8001e46:	2020      	movs	r0, #32
 8001e48:	6760      	str	r0, [r4, #116]	; 0x74
 8001e4a:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e4c:	2000      	movs	r0, #0
 8001e4e:	6720      	str	r0, [r4, #112]	; 0x70
 8001e50:	2003      	movs	r0, #3
 8001e52:	e7a5      	b.n	8001da0 <HAL_UART_Transmit+0x2e>
 8001e54:	465e      	mov	r6, fp
 8001e56:	0640      	lsls	r0, r0, #25
 8001e58:	d411      	bmi.n	8001e7e <HAL_UART_Transmit+0x10c>
 8001e5a:	f105 0901 	add.w	r9, r5, #1
 8001e5e:	4630      	mov	r0, r6
 8001e60:	f1b9 0f00 	cmp.w	r9, #0
 8001e64:	d007      	beq.n	8001e76 <HAL_UART_Transmit+0x104>
 8001e66:	b17d      	cbz	r5, 8001e88 <HAL_UART_Transmit+0x116>
 8001e68:	f7ff f9a2 	bl	80011b0 <HAL_GetTick>
 8001e6c:	eba0 0108 	sub.w	r1, r0, r8
 8001e70:	6820      	ldr	r0, [r4, #0]
 8001e72:	42a9      	cmp	r1, r5
 8001e74:	d809      	bhi.n	8001e8a <HAL_UART_Transmit+0x118>
 8001e76:	69c1      	ldr	r1, [r0, #28]
 8001e78:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e7c:	d0f0      	beq.n	8001e60 <HAL_UART_Transmit+0xee>
 8001e7e:	2020      	movs	r0, #32
 8001e80:	6760      	str	r0, [r4, #116]	; 0x74
 8001e82:	2000      	movs	r0, #0
 8001e84:	6720      	str	r0, [r4, #112]	; 0x70
 8001e86:	e78b      	b.n	8001da0 <HAL_UART_Transmit+0x2e>
 8001e88:	4630      	mov	r0, r6
 8001e8a:	6801      	ldr	r1, [r0, #0]
 8001e8c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e90:	6001      	str	r1, [r0, #0]
 8001e92:	6881      	ldr	r1, [r0, #8]
 8001e94:	f021 0101 	bic.w	r1, r1, #1
 8001e98:	6081      	str	r1, [r0, #8]
 8001e9a:	e7d4      	b.n	8001e46 <HAL_UART_Transmit+0xd4>

08001e9c <BSP_COM_Init>:
 8001e9c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e9e:	af03      	add	r7, sp, #12
 8001ea0:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ea4:	b086      	sub	sp, #24
 8001ea6:	4605      	mov	r5, r0
 8001ea8:	4688      	mov	r8, r1
 8001eaa:	b9f5      	cbnz	r5, 8001eea <BSP_COM_Init+0x4e>
 8001eac:	f241 004c 	movw	r0, #4172	; 0x104c
 8001eb0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001eb4:	6801      	ldr	r1, [r0, #0]
 8001eb6:	f041 0102 	orr.w	r1, r1, #2
 8001eba:	6001      	str	r1, [r0, #0]
 8001ebc:	6801      	ldr	r1, [r0, #0]
 8001ebe:	f001 0102 	and.w	r1, r1, #2
 8001ec2:	9101      	str	r1, [sp, #4]
 8001ec4:	9901      	ldr	r1, [sp, #4]
 8001ec6:	6801      	ldr	r1, [r0, #0]
 8001ec8:	f041 0102 	orr.w	r1, r1, #2
 8001ecc:	6001      	str	r1, [r0, #0]
 8001ece:	6801      	ldr	r1, [r0, #0]
 8001ed0:	f001 0102 	and.w	r1, r1, #2
 8001ed4:	9101      	str	r1, [sp, #4]
 8001ed6:	9901      	ldr	r1, [sp, #4]
 8001ed8:	6941      	ldr	r1, [r0, #20]
 8001eda:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001ede:	6141      	str	r1, [r0, #20]
 8001ee0:	6940      	ldr	r0, [r0, #20]
 8001ee2:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001ee6:	9001      	str	r0, [sp, #4]
 8001ee8:	9801      	ldr	r0, [sp, #4]
 8001eea:	2040      	movs	r0, #64	; 0x40
 8001eec:	2402      	movs	r4, #2
 8001eee:	ae01      	add	r6, sp, #4
 8001ef0:	f04f 0907 	mov.w	r9, #7
 8001ef4:	9001      	str	r0, [sp, #4]
 8001ef6:	2000      	movs	r0, #0
 8001ef8:	9402      	str	r4, [sp, #8]
 8001efa:	9404      	str	r4, [sp, #16]
 8001efc:	4631      	mov	r1, r6
 8001efe:	9003      	str	r0, [sp, #12]
 8001f00:	f240 000c 	movw	r0, #12
 8001f04:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f08:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f0c:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f10:	f7ff f9a7 	bl	8001262 <HAL_GPIO_Init>
 8001f14:	2080      	movs	r0, #128	; 0x80
 8001f16:	4631      	mov	r1, r6
 8001f18:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f1c:	f240 0010 	movw	r0, #16
 8001f20:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f24:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f28:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f2c:	f7ff f999 	bl	8001262 <HAL_GPIO_Init>
 8001f30:	f240 0008 	movw	r0, #8
 8001f34:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f38:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f3c:	f8c8 0000 	str.w	r0, [r8]
 8001f40:	4640      	mov	r0, r8
 8001f42:	f7ff fcff 	bl	8001944 <HAL_UART_Init>
 8001f46:	b006      	add	sp, #24
 8001f48:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f4c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f4e <verify_benchmark>:
 8001f4e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001f52:	4770      	bx	lr

08001f54 <initialise_benchmark>:
 8001f54:	4770      	bx	lr
	...

08001f58 <benchmark>:
 8001f58:	b5b0      	push	{r4, r5, r7, lr}
 8001f5a:	af02      	add	r7, sp, #8
 8001f5c:	ed2d 8b0e 	vpush	{d8-d14}
 8001f60:	b0e2      	sub	sp, #392	; 0x188
 8001f62:	466c      	mov	r4, sp
 8001f64:	f44f 71c0 	mov.w	r1, #384	; 0x180
 8001f68:	4620      	mov	r0, r4
 8001f6a:	f003 fbf1 	bl	8005750 <__aeabi_memclr>
 8001f6e:	ed9f cbcc 	vldr	d12, [pc, #816]	; 80022a0 <benchmark+0x348>
 8001f72:	ed9f 8bd1 	vldr	d8, [pc, #836]	; 80022b8 <benchmark+0x360>
 8001f76:	ed9f 1bcc 	vldr	d1, [pc, #816]	; 80022a8 <benchmark+0x350>
 8001f7a:	ed9f 2bcd 	vldr	d2, [pc, #820]	; 80022b0 <benchmark+0x358>
 8001f7e:	ad61      	add	r5, sp, #388	; 0x184
 8001f80:	4621      	mov	r1, r4
 8001f82:	4628      	mov	r0, r5
 8001f84:	eeb0 0a4c 	vmov.f32	s0, s24
 8001f88:	eeb0 3a48 	vmov.f32	s6, s16
 8001f8c:	eef0 0a6c 	vmov.f32	s1, s25
 8001f90:	eef0 3a68 	vmov.f32	s7, s17
 8001f94:	f000 f9cc 	bl	8002330 <SolveCubic>
 8001f98:	ed9f 1bc9 	vldr	d1, [pc, #804]	; 80022c0 <benchmark+0x368>
 8001f9c:	ed9f 2bca 	vldr	d2, [pc, #808]	; 80022c8 <benchmark+0x370>
 8001fa0:	eeb0 0a4c 	vmov.f32	s0, s24
 8001fa4:	eeb0 3a48 	vmov.f32	s6, s16
 8001fa8:	4628      	mov	r0, r5
 8001faa:	4621      	mov	r1, r4
 8001fac:	eef0 0a6c 	vmov.f32	s1, s25
 8001fb0:	eef0 3a68 	vmov.f32	s7, s17
 8001fb4:	f000 f9bc 	bl	8002330 <SolveCubic>
 8001fb8:	ed9f 1bc5 	vldr	d1, [pc, #788]	; 80022d0 <benchmark+0x378>
 8001fbc:	ed9f 2bc6 	vldr	d2, [pc, #792]	; 80022d8 <benchmark+0x380>
 8001fc0:	ed9f 3bc7 	vldr	d3, [pc, #796]	; 80022e0 <benchmark+0x388>
 8001fc4:	eeb0 0a4c 	vmov.f32	s0, s24
 8001fc8:	4628      	mov	r0, r5
 8001fca:	4621      	mov	r1, r4
 8001fcc:	eef0 0a6c 	vmov.f32	s1, s25
 8001fd0:	f000 f9ae 	bl	8002330 <SolveCubic>
 8001fd4:	ed9f 1bc4 	vldr	d1, [pc, #784]	; 80022e8 <benchmark+0x390>
 8001fd8:	ed9f 3bc5 	vldr	d3, [pc, #788]	; 80022f0 <benchmark+0x398>
 8001fdc:	eeb0 0a4c 	vmov.f32	s0, s24
 8001fe0:	eeb0 2a4c 	vmov.f32	s4, s24
 8001fe4:	4628      	mov	r0, r5
 8001fe6:	4621      	mov	r1, r4
 8001fe8:	eef0 0a6c 	vmov.f32	s1, s25
 8001fec:	eef0 2a6c 	vmov.f32	s5, s25
 8001ff0:	f000 f99e 	bl	8002330 <SolveCubic>
 8001ff4:	ed9f dbc0 	vldr	d13, [pc, #768]	; 80022f8 <benchmark+0x3a0>
 8001ff8:	ed9f abc1 	vldr	d10, [pc, #772]	; 8002300 <benchmark+0x3a8>
 8001ffc:	ed9f 8bc2 	vldr	d8, [pc, #776]	; 8002308 <benchmark+0x3b0>
 8002000:	eeb0 0a4c 	vmov.f32	s0, s24
 8002004:	4628      	mov	r0, r5
 8002006:	4621      	mov	r1, r4
 8002008:	eef0 0a6c 	vmov.f32	s1, s25
 800200c:	eeb0 1a4d 	vmov.f32	s2, s26
 8002010:	eeb0 2a4a 	vmov.f32	s4, s20
 8002014:	eeb0 3a48 	vmov.f32	s6, s16
 8002018:	eef0 1a6d 	vmov.f32	s3, s27
 800201c:	eef0 2a6a 	vmov.f32	s5, s21
 8002020:	eef0 3a68 	vmov.f32	s7, s17
 8002024:	f000 f984 	bl	8002330 <SolveCubic>
 8002028:	ed9f 9bb9 	vldr	d9, [pc, #740]	; 8002310 <benchmark+0x3b8>
 800202c:	eeb0 0a4c 	vmov.f32	s0, s24
 8002030:	eeb0 1a4d 	vmov.f32	s2, s26
 8002034:	eeb0 2a4a 	vmov.f32	s4, s20
 8002038:	4628      	mov	r0, r5
 800203a:	4621      	mov	r1, r4
 800203c:	eef0 0a6c 	vmov.f32	s1, s25
 8002040:	eef0 1a6d 	vmov.f32	s3, s27
 8002044:	eef0 2a6a 	vmov.f32	s5, s21
 8002048:	eeb0 3a49 	vmov.f32	s6, s18
 800204c:	eef0 3a69 	vmov.f32	s7, s19
 8002050:	f000 f96e 	bl	8002330 <SolveCubic>
 8002054:	ed9f bbb0 	vldr	d11, [pc, #704]	; 8002318 <benchmark+0x3c0>
 8002058:	eeb0 0a4c 	vmov.f32	s0, s24
 800205c:	eeb0 1a4d 	vmov.f32	s2, s26
 8002060:	eeb0 3a48 	vmov.f32	s6, s16
 8002064:	4628      	mov	r0, r5
 8002066:	4621      	mov	r1, r4
 8002068:	eef0 0a6c 	vmov.f32	s1, s25
 800206c:	eef0 1a6d 	vmov.f32	s3, s27
 8002070:	eef0 3a68 	vmov.f32	s7, s17
 8002074:	eeb0 2a4b 	vmov.f32	s4, s22
 8002078:	eef0 2a6b 	vmov.f32	s5, s23
 800207c:	f000 f958 	bl	8002330 <SolveCubic>
 8002080:	eeb0 0a4c 	vmov.f32	s0, s24
 8002084:	eeb0 1a4d 	vmov.f32	s2, s26
 8002088:	eeb0 2a4b 	vmov.f32	s4, s22
 800208c:	eeb0 3a49 	vmov.f32	s6, s18
 8002090:	4628      	mov	r0, r5
 8002092:	4621      	mov	r1, r4
 8002094:	eef0 0a6c 	vmov.f32	s1, s25
 8002098:	eef0 1a6d 	vmov.f32	s3, s27
 800209c:	eef0 2a6b 	vmov.f32	s5, s23
 80020a0:	eef0 3a69 	vmov.f32	s7, s19
 80020a4:	f000 f944 	bl	8002330 <SolveCubic>
 80020a8:	ed9f eb9d 	vldr	d14, [pc, #628]	; 8002320 <benchmark+0x3c8>
 80020ac:	eeb0 0a4c 	vmov.f32	s0, s24
 80020b0:	eeb0 2a4a 	vmov.f32	s4, s20
 80020b4:	eeb0 3a48 	vmov.f32	s6, s16
 80020b8:	4628      	mov	r0, r5
 80020ba:	4621      	mov	r1, r4
 80020bc:	eef0 0a6c 	vmov.f32	s1, s25
 80020c0:	eef0 2a6a 	vmov.f32	s5, s21
 80020c4:	eef0 3a68 	vmov.f32	s7, s17
 80020c8:	eeb0 1a4e 	vmov.f32	s2, s28
 80020cc:	eef0 1a6e 	vmov.f32	s3, s29
 80020d0:	f000 f92e 	bl	8002330 <SolveCubic>
 80020d4:	eeb0 0a4c 	vmov.f32	s0, s24
 80020d8:	eeb0 1a4e 	vmov.f32	s2, s28
 80020dc:	eeb0 2a4a 	vmov.f32	s4, s20
 80020e0:	eeb0 3a49 	vmov.f32	s6, s18
 80020e4:	4628      	mov	r0, r5
 80020e6:	4621      	mov	r1, r4
 80020e8:	eef0 0a6c 	vmov.f32	s1, s25
 80020ec:	eef0 1a6e 	vmov.f32	s3, s29
 80020f0:	eef0 2a6a 	vmov.f32	s5, s21
 80020f4:	eef0 3a69 	vmov.f32	s7, s19
 80020f8:	f000 f91a 	bl	8002330 <SolveCubic>
 80020fc:	eeb0 0a4c 	vmov.f32	s0, s24
 8002100:	eeb0 1a4e 	vmov.f32	s2, s28
 8002104:	eeb0 2a4b 	vmov.f32	s4, s22
 8002108:	eeb0 3a48 	vmov.f32	s6, s16
 800210c:	4628      	mov	r0, r5
 800210e:	4621      	mov	r1, r4
 8002110:	eef0 0a6c 	vmov.f32	s1, s25
 8002114:	eef0 1a6e 	vmov.f32	s3, s29
 8002118:	eef0 2a6b 	vmov.f32	s5, s23
 800211c:	eef0 3a68 	vmov.f32	s7, s17
 8002120:	f000 f906 	bl	8002330 <SolveCubic>
 8002124:	eeb0 0a4c 	vmov.f32	s0, s24
 8002128:	eeb0 1a4e 	vmov.f32	s2, s28
 800212c:	eeb0 2a4b 	vmov.f32	s4, s22
 8002130:	eeb0 3a49 	vmov.f32	s6, s18
 8002134:	4628      	mov	r0, r5
 8002136:	4621      	mov	r1, r4
 8002138:	eef0 0a6c 	vmov.f32	s1, s25
 800213c:	eef0 1a6e 	vmov.f32	s3, s29
 8002140:	eef0 2a6b 	vmov.f32	s5, s23
 8002144:	eef0 3a69 	vmov.f32	s7, s19
 8002148:	f000 f8f2 	bl	8002330 <SolveCubic>
 800214c:	ed9f cb76 	vldr	d12, [pc, #472]	; 8002328 <benchmark+0x3d0>
 8002150:	eeb0 1a4d 	vmov.f32	s2, s26
 8002154:	eeb0 2a4a 	vmov.f32	s4, s20
 8002158:	eeb0 3a48 	vmov.f32	s6, s16
 800215c:	4628      	mov	r0, r5
 800215e:	4621      	mov	r1, r4
 8002160:	eef0 1a6d 	vmov.f32	s3, s27
 8002164:	eef0 2a6a 	vmov.f32	s5, s21
 8002168:	eef0 3a68 	vmov.f32	s7, s17
 800216c:	eeb0 0a4c 	vmov.f32	s0, s24
 8002170:	eef0 0a6c 	vmov.f32	s1, s25
 8002174:	f000 f8dc 	bl	8002330 <SolveCubic>
 8002178:	eeb0 0a4c 	vmov.f32	s0, s24
 800217c:	eeb0 1a4d 	vmov.f32	s2, s26
 8002180:	eeb0 2a4a 	vmov.f32	s4, s20
 8002184:	eeb0 3a49 	vmov.f32	s6, s18
 8002188:	4628      	mov	r0, r5
 800218a:	4621      	mov	r1, r4
 800218c:	eef0 0a6c 	vmov.f32	s1, s25
 8002190:	eef0 1a6d 	vmov.f32	s3, s27
 8002194:	eef0 2a6a 	vmov.f32	s5, s21
 8002198:	eef0 3a69 	vmov.f32	s7, s19
 800219c:	f000 f8c8 	bl	8002330 <SolveCubic>
 80021a0:	eeb0 0a4c 	vmov.f32	s0, s24
 80021a4:	eeb0 1a4d 	vmov.f32	s2, s26
 80021a8:	eeb0 2a4b 	vmov.f32	s4, s22
 80021ac:	eeb0 3a48 	vmov.f32	s6, s16
 80021b0:	4628      	mov	r0, r5
 80021b2:	4621      	mov	r1, r4
 80021b4:	eef0 0a6c 	vmov.f32	s1, s25
 80021b8:	eef0 1a6d 	vmov.f32	s3, s27
 80021bc:	eef0 2a6b 	vmov.f32	s5, s23
 80021c0:	eef0 3a68 	vmov.f32	s7, s17
 80021c4:	f000 f8b4 	bl	8002330 <SolveCubic>
 80021c8:	eeb0 0a4c 	vmov.f32	s0, s24
 80021cc:	eeb0 1a4d 	vmov.f32	s2, s26
 80021d0:	eeb0 2a4b 	vmov.f32	s4, s22
 80021d4:	eeb0 3a49 	vmov.f32	s6, s18
 80021d8:	4628      	mov	r0, r5
 80021da:	4621      	mov	r1, r4
 80021dc:	eef0 0a6c 	vmov.f32	s1, s25
 80021e0:	eef0 1a6d 	vmov.f32	s3, s27
 80021e4:	eef0 2a6b 	vmov.f32	s5, s23
 80021e8:	eef0 3a69 	vmov.f32	s7, s19
 80021ec:	f000 f8a0 	bl	8002330 <SolveCubic>
 80021f0:	eeb0 0a4c 	vmov.f32	s0, s24
 80021f4:	eeb0 1a4e 	vmov.f32	s2, s28
 80021f8:	eeb0 2a4a 	vmov.f32	s4, s20
 80021fc:	eeb0 3a48 	vmov.f32	s6, s16
 8002200:	4628      	mov	r0, r5
 8002202:	4621      	mov	r1, r4
 8002204:	eef0 0a6c 	vmov.f32	s1, s25
 8002208:	eef0 1a6e 	vmov.f32	s3, s29
 800220c:	eef0 2a6a 	vmov.f32	s5, s21
 8002210:	eef0 3a68 	vmov.f32	s7, s17
 8002214:	f000 f88c 	bl	8002330 <SolveCubic>
 8002218:	eeb0 0a4c 	vmov.f32	s0, s24
 800221c:	eeb0 1a4e 	vmov.f32	s2, s28
 8002220:	eeb0 2a4a 	vmov.f32	s4, s20
 8002224:	eeb0 3a49 	vmov.f32	s6, s18
 8002228:	4628      	mov	r0, r5
 800222a:	4621      	mov	r1, r4
 800222c:	eef0 0a6c 	vmov.f32	s1, s25
 8002230:	eef0 1a6e 	vmov.f32	s3, s29
 8002234:	eef0 2a6a 	vmov.f32	s5, s21
 8002238:	eef0 3a69 	vmov.f32	s7, s19
 800223c:	f000 f878 	bl	8002330 <SolveCubic>
 8002240:	eeb0 0a4c 	vmov.f32	s0, s24
 8002244:	eeb0 1a4e 	vmov.f32	s2, s28
 8002248:	eeb0 2a4b 	vmov.f32	s4, s22
 800224c:	eeb0 3a48 	vmov.f32	s6, s16
 8002250:	4628      	mov	r0, r5
 8002252:	4621      	mov	r1, r4
 8002254:	eef0 0a6c 	vmov.f32	s1, s25
 8002258:	eef0 1a6e 	vmov.f32	s3, s29
 800225c:	eef0 2a6b 	vmov.f32	s5, s23
 8002260:	eef0 3a68 	vmov.f32	s7, s17
 8002264:	f000 f864 	bl	8002330 <SolveCubic>
 8002268:	eeb0 0a4c 	vmov.f32	s0, s24
 800226c:	eeb0 1a4e 	vmov.f32	s2, s28
 8002270:	eeb0 2a4b 	vmov.f32	s4, s22
 8002274:	eeb0 3a49 	vmov.f32	s6, s18
 8002278:	4628      	mov	r0, r5
 800227a:	4621      	mov	r1, r4
 800227c:	eef0 0a6c 	vmov.f32	s1, s25
 8002280:	eef0 1a6e 	vmov.f32	s3, s29
 8002284:	eef0 2a6b 	vmov.f32	s5, s23
 8002288:	eef0 3a69 	vmov.f32	s7, s19
 800228c:	f000 f850 	bl	8002330 <SolveCubic>
 8002290:	2000      	movs	r0, #0
 8002292:	b062      	add	sp, #392	; 0x188
 8002294:	ecbd 8b0e 	vpop	{d8-d14}
 8002298:	bdb0      	pop	{r4, r5, r7, pc}
 800229a:	bf00      	nop
 800229c:	bf00      	nop
 800229e:	bf00      	nop
 80022a0:	00000000 	.word	0x00000000
 80022a4:	3ff00000 	.word	0x3ff00000
 80022a8:	00000000 	.word	0x00000000
 80022ac:	c0250000 	.word	0xc0250000
 80022b0:	00000000 	.word	0x00000000
 80022b4:	40400000 	.word	0x40400000
 80022b8:	00000000 	.word	0x00000000
 80022bc:	c03e0000 	.word	0xc03e0000
 80022c0:	00000000 	.word	0x00000000
 80022c4:	c0120000 	.word	0xc0120000
 80022c8:	00000000 	.word	0x00000000
 80022cc:	40310000 	.word	0x40310000
 80022d0:	00000000 	.word	0x00000000
 80022d4:	c00c0000 	.word	0xc00c0000
 80022d8:	00000000 	.word	0x00000000
 80022dc:	40360000 	.word	0x40360000
 80022e0:	00000000 	.word	0x00000000
 80022e4:	c03f0000 	.word	0xc03f0000
 80022e8:	66666666 	.word	0x66666666
 80022ec:	c02b6666 	.word	0xc02b6666
 80022f0:	00000000 	.word	0x00000000
 80022f4:	c0418000 	.word	0xc0418000
 80022f8:	00000000 	.word	0x00000000
 80022fc:	40240000 	.word	0x40240000
 8002300:	00000000 	.word	0x00000000
 8002304:	40140000 	.word	0x40140000
 8002308:	00000000 	.word	0x00000000
 800230c:	bff00000 	.word	0xbff00000
 8002310:	00000000 	.word	0x00000000
 8002314:	c0000000 	.word	0xc0000000
 8002318:	00000000 	.word	0x00000000
 800231c:	40160000 	.word	0x40160000
 8002320:	00000000 	.word	0x00000000
 8002324:	40220000 	.word	0x40220000
 8002328:	00000000 	.word	0x00000000
 800232c:	40000000 	.word	0x40000000

08002330 <SolveCubic>:
 8002330:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002332:	af03      	add	r7, sp, #12
 8002334:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002338:	b081      	sub	sp, #4
 800233a:	ed2d 8b06 	vpush	{d8-d10}
 800233e:	b08a      	sub	sp, #40	; 0x28
 8002340:	ec5b 5b10 	vmov	r5, fp, d0
 8002344:	eeb0 8a43 	vmov.f32	s16, s6
 8002348:	eeb0 9a42 	vmov.f32	s18, s4
 800234c:	9109      	str	r1, [sp, #36]	; 0x24
 800234e:	9006      	str	r0, [sp, #24]
 8002350:	ec51 0b11 	vmov	r0, r1, d1
 8002354:	462a      	mov	r2, r5
 8002356:	465b      	mov	r3, fp
 8002358:	eef0 8a63 	vmov.f32	s17, s7
 800235c:	eef0 9a62 	vmov.f32	s19, s5
 8002360:	f7fe fa34 	bl	80007cc <__aeabi_ddiv>
 8002364:	4681      	mov	r9, r0
 8002366:	4688      	mov	r8, r1
 8002368:	464a      	mov	r2, r9
 800236a:	4643      	mov	r3, r8
 800236c:	f7fd ff4e 	bl	800020c <__adddf3>
 8002370:	4602      	mov	r2, r0
 8002372:	460b      	mov	r3, r1
 8002374:	4648      	mov	r0, r9
 8002376:	4641      	mov	r1, r8
 8002378:	f7fe f8fe 	bl	8000578 <__aeabi_dmul>
 800237c:	4602      	mov	r2, r0
 800237e:	460b      	mov	r3, r1
 8002380:	4648      	mov	r0, r9
 8002382:	4641      	mov	r1, r8
 8002384:	f7fe f8f8 	bl	8000578 <__aeabi_dmul>
 8002388:	9008      	str	r0, [sp, #32]
 800238a:	468a      	mov	sl, r1
 800238c:	ec51 0b19 	vmov	r0, r1, d9
 8002390:	462a      	mov	r2, r5
 8002392:	465b      	mov	r3, fp
 8002394:	f7fe fa1a 	bl	80007cc <__aeabi_ddiv>
 8002398:	ed9f 0bcf 	vldr	d0, [pc, #828]	; 80026d8 <SolveCubic+0x3a8>
 800239c:	4604      	mov	r4, r0
 800239e:	460e      	mov	r6, r1
 80023a0:	4648      	mov	r0, r9
 80023a2:	4641      	mov	r1, r8
 80023a4:	9403      	str	r4, [sp, #12]
 80023a6:	9602      	str	r6, [sp, #8]
 80023a8:	ec53 2b10 	vmov	r2, r3, d0
 80023ac:	e9cd 2304 	strd	r2, r3, [sp, #16]
 80023b0:	f7fe f8e2 	bl	8000578 <__aeabi_dmul>
 80023b4:	4622      	mov	r2, r4
 80023b6:	4633      	mov	r3, r6
 80023b8:	f7fe f8de 	bl	8000578 <__aeabi_dmul>
 80023bc:	4602      	mov	r2, r0
 80023be:	9808      	ldr	r0, [sp, #32]
 80023c0:	460b      	mov	r3, r1
 80023c2:	4651      	mov	r1, sl
 80023c4:	f7fd ff20 	bl	8000208 <__aeabi_dsub>
 80023c8:	4606      	mov	r6, r0
 80023ca:	460c      	mov	r4, r1
 80023cc:	ec51 0b18 	vmov	r0, r1, d8
 80023d0:	462a      	mov	r2, r5
 80023d2:	465b      	mov	r3, fp
 80023d4:	f7fe f9fa 	bl	80007cc <__aeabi_ddiv>
 80023d8:	ed9f 0bc1 	vldr	d0, [pc, #772]	; 80026e0 <SolveCubic+0x3b0>
 80023dc:	ec53 2b10 	vmov	r2, r3, d0
 80023e0:	f7fe f8ca 	bl	8000578 <__aeabi_dmul>
 80023e4:	4632      	mov	r2, r6
 80023e6:	4623      	mov	r3, r4
 80023e8:	f7fd ff10 	bl	800020c <__adddf3>
 80023ec:	ed9f 0bbe 	vldr	d0, [pc, #760]	; 80026e8 <SolveCubic+0x3b8>
 80023f0:	ec53 2b10 	vmov	r2, r3, d0
 80023f4:	f7fe f9ea 	bl	80007cc <__aeabi_ddiv>
 80023f8:	4683      	mov	fp, r0
 80023fa:	468a      	mov	sl, r1
 80023fc:	465a      	mov	r2, fp
 80023fe:	4653      	mov	r3, sl
 8002400:	f7fe f8ba 	bl	8000578 <__aeabi_dmul>
 8002404:	e9cd 1000 	strd	r1, r0, [sp]
 8002408:	4648      	mov	r0, r9
 800240a:	4641      	mov	r1, r8
 800240c:	464a      	mov	r2, r9
 800240e:	4643      	mov	r3, r8
 8002410:	f8cd 901c 	str.w	r9, [sp, #28]
 8002414:	f8cd 8020 	str.w	r8, [sp, #32]
 8002418:	f7fe f8ae 	bl	8000578 <__aeabi_dmul>
 800241c:	ed9f 0bb4 	vldr	d0, [pc, #720]	; 80026f0 <SolveCubic+0x3c0>
 8002420:	4604      	mov	r4, r0
 8002422:	460d      	mov	r5, r1
 8002424:	e9dd 1002 	ldrd	r1, r0, [sp, #8]
 8002428:	ec53 2b10 	vmov	r2, r3, d0
 800242c:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8002430:	f7fe f8a2 	bl	8000578 <__aeabi_dmul>
 8002434:	4602      	mov	r2, r0
 8002436:	460b      	mov	r3, r1
 8002438:	4620      	mov	r0, r4
 800243a:	4629      	mov	r1, r5
 800243c:	f7fd fee6 	bl	800020c <__adddf3>
 8002440:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8002444:	f7fe f9c2 	bl	80007cc <__aeabi_ddiv>
 8002448:	4606      	mov	r6, r0
 800244a:	460c      	mov	r4, r1
 800244c:	4632      	mov	r2, r6
 800244e:	4623      	mov	r3, r4
 8002450:	ec44 6b18 	vmov	d8, r6, r4
 8002454:	f7fe f890 	bl	8000578 <__aeabi_dmul>
 8002458:	4602      	mov	r2, r0
 800245a:	460b      	mov	r3, r1
 800245c:	4630      	mov	r0, r6
 800245e:	4621      	mov	r1, r4
 8002460:	f7fe f88a 	bl	8000578 <__aeabi_dmul>
 8002464:	4602      	mov	r2, r0
 8002466:	460b      	mov	r3, r1
 8002468:	e9dd 1000 	ldrd	r1, r0, [sp]
 800246c:	ec43 2b19 	vmov	d9, r2, r3
 8002470:	f7fd feca 	bl	8000208 <__aeabi_dsub>
 8002474:	ed9f 0ba0 	vldr	d0, [pc, #640]	; 80026f8 <SolveCubic+0x3c8>
 8002478:	ec41 0b1a 	vmov	d10, r0, r1
 800247c:	ec59 8b10 	vmov	r8, r9, d0
 8002480:	4642      	mov	r2, r8
 8002482:	464b      	mov	r3, r9
 8002484:	f7fe faf4 	bl	8000a70 <__aeabi_dcmple>
 8002488:	2800      	cmp	r0, #0
 800248a:	d151      	bne.n	8002530 <SolveCubic+0x200>
 800248c:	9906      	ldr	r1, [sp, #24]
 800248e:	2001      	movs	r0, #1
 8002490:	eeb0 0a4a 	vmov.f32	s0, s20
 8002494:	4655      	mov	r5, sl
 8002496:	eef0 0a6a 	vmov.f32	s1, s21
 800249a:	6008      	str	r0, [r1, #0]
 800249c:	ea4f 70d9 	mov.w	r0, r9, lsr #31
 80024a0:	f360 75df 	bfi	r5, r0, #31, #1
 80024a4:	f000 fe64 	bl	8003170 <sqrt>
 80024a8:	ec51 0b10 	vmov	r0, r1, d0
 80024ac:	465a      	mov	r2, fp
 80024ae:	462b      	mov	r3, r5
 80024b0:	f7fd feac 	bl	800020c <__adddf3>
 80024b4:	ed9f 1b9c 	vldr	d1, [pc, #624]	; 8002728 <SolveCubic+0x3f8>
 80024b8:	ec41 0b10 	vmov	d0, r0, r1
 80024bc:	f000 fcbc 	bl	8002e38 <pow>
 80024c0:	f8cd a018 	str.w	sl, [sp, #24]
 80024c4:	ec5a 5b10 	vmov	r5, sl, d0
 80024c8:	4630      	mov	r0, r6
 80024ca:	4621      	mov	r1, r4
 80024cc:	462a      	mov	r2, r5
 80024ce:	4653      	mov	r3, sl
 80024d0:	f7fe f97c 	bl	80007cc <__aeabi_ddiv>
 80024d4:	4602      	mov	r2, r0
 80024d6:	460b      	mov	r3, r1
 80024d8:	4628      	mov	r0, r5
 80024da:	4651      	mov	r1, sl
 80024dc:	f7fd fe96 	bl	800020c <__adddf3>
 80024e0:	460d      	mov	r5, r1
 80024e2:	9906      	ldr	r1, [sp, #24]
 80024e4:	4604      	mov	r4, r0
 80024e6:	4658      	mov	r0, fp
 80024e8:	4642      	mov	r2, r8
 80024ea:	464b      	mov	r3, r9
 80024ec:	f7fe fab6 	bl	8000a5c <__aeabi_dcmplt>
 80024f0:	a18f      	add	r1, pc, #572	; (adr r1, 8002730 <SolveCubic+0x400>)
 80024f2:	2800      	cmp	r0, #0
 80024f4:	4622      	mov	r2, r4
 80024f6:	462b      	mov	r3, r5
 80024f8:	bf18      	it	ne
 80024fa:	3108      	addne	r1, #8
 80024fc:	ed91 0b00 	vldr	d0, [r1]
 8002500:	ec51 0b10 	vmov	r0, r1, d0
 8002504:	f7fe f838 	bl	8000578 <__aeabi_dmul>
 8002508:	4604      	mov	r4, r0
 800250a:	460d      	mov	r5, r1
 800250c:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 8002510:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002514:	f7fe f95a 	bl	80007cc <__aeabi_ddiv>
 8002518:	4602      	mov	r2, r0
 800251a:	460b      	mov	r3, r1
 800251c:	4620      	mov	r0, r4
 800251e:	4629      	mov	r1, r5
 8002520:	f7fd fe74 	bl	800020c <__adddf3>
 8002524:	ec41 0b10 	vmov	d0, r0, r1
 8002528:	9809      	ldr	r0, [sp, #36]	; 0x24
 800252a:	ed80 0b00 	vstr	d0, [r0]
 800252e:	e0ca      	b.n	80026c6 <SolveCubic+0x396>
 8002530:	9906      	ldr	r1, [sp, #24]
 8002532:	eeb0 0a49 	vmov.f32	s0, s18
 8002536:	2003      	movs	r0, #3
 8002538:	eef0 0a69 	vmov.f32	s1, s19
 800253c:	6008      	str	r0, [r1, #0]
 800253e:	f000 fe17 	bl	8003170 <sqrt>
 8002542:	ec53 2b10 	vmov	r2, r3, d0
 8002546:	4658      	mov	r0, fp
 8002548:	4651      	mov	r1, sl
 800254a:	f7fe f93f 	bl	80007cc <__aeabi_ddiv>
 800254e:	ec41 0b10 	vmov	d0, r0, r1
 8002552:	f000 fc13 	bl	8002d7c <acos>
 8002556:	eeb0 9a40 	vmov.f32	s18, s0
 800255a:	eeb0 0a48 	vmov.f32	s0, s16
 800255e:	eef0 9a60 	vmov.f32	s19, s1
 8002562:	eef0 0a68 	vmov.f32	s1, s17
 8002566:	f000 fe03 	bl	8003170 <sqrt>
 800256a:	ed9f 1b65 	vldr	d1, [pc, #404]	; 8002700 <SolveCubic+0x3d0>
 800256e:	ec51 0b10 	vmov	r0, r1, d0
 8002572:	ec5b 2b11 	vmov	r2, fp, d1
 8002576:	465b      	mov	r3, fp
 8002578:	9206      	str	r2, [sp, #24]
 800257a:	f7fd fffd 	bl	8000578 <__aeabi_dmul>
 800257e:	ed9f 0b62 	vldr	d0, [pc, #392]	; 8002708 <SolveCubic+0x3d8>
 8002582:	460e      	mov	r6, r1
 8002584:	ec51 9b19 	vmov	r9, r1, d9
 8002588:	4604      	mov	r4, r0
 800258a:	4648      	mov	r0, r9
 800258c:	9105      	str	r1, [sp, #20]
 800258e:	ec55 8b10 	vmov	r8, r5, d0
 8002592:	4642      	mov	r2, r8
 8002594:	462b      	mov	r3, r5
 8002596:	f7fe f919 	bl	80007cc <__aeabi_ddiv>
 800259a:	ec41 0b10 	vmov	d0, r0, r1
 800259e:	f000 fb83 	bl	8002ca8 <cos>
 80025a2:	ec53 2b10 	vmov	r2, r3, d0
 80025a6:	4620      	mov	r0, r4
 80025a8:	4631      	mov	r1, r6
 80025aa:	f7fd ffe5 	bl	8000578 <__aeabi_dmul>
 80025ae:	4604      	mov	r4, r0
 80025b0:	460e      	mov	r6, r1
 80025b2:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 80025b6:	4642      	mov	r2, r8
 80025b8:	462b      	mov	r3, r5
 80025ba:	f8cd 8010 	str.w	r8, [sp, #16]
 80025be:	f7fe f905 	bl	80007cc <__aeabi_ddiv>
 80025c2:	4602      	mov	r2, r0
 80025c4:	460b      	mov	r3, r1
 80025c6:	4620      	mov	r0, r4
 80025c8:	4631      	mov	r1, r6
 80025ca:	9208      	str	r2, [sp, #32]
 80025cc:	9307      	str	r3, [sp, #28]
 80025ce:	f7fd fe1b 	bl	8000208 <__aeabi_dsub>
 80025d2:	ec41 0b10 	vmov	d0, r0, r1
 80025d6:	9809      	ldr	r0, [sp, #36]	; 0x24
 80025d8:	ed80 0b00 	vstr	d0, [r0]
 80025dc:	eeb0 0a48 	vmov.f32	s0, s16
 80025e0:	4606      	mov	r6, r0
 80025e2:	eef0 0a68 	vmov.f32	s1, s17
 80025e6:	f000 fdc3 	bl	8003170 <sqrt>
 80025ea:	ed9f 9b49 	vldr	d9, [pc, #292]	; 8002710 <SolveCubic+0x3e0>
 80025ee:	eeb0 aa40 	vmov.f32	s20, s0
 80025f2:	eef0 aa60 	vmov.f32	s21, s1
 80025f6:	eeb0 0a49 	vmov.f32	s0, s18
 80025fa:	eef0 0a69 	vmov.f32	s1, s19
 80025fe:	f000 f9a7 	bl	8002950 <atan>
 8002602:	9a06      	ldr	r2, [sp, #24]
 8002604:	ec51 0b1a 	vmov	r0, r1, d10
 8002608:	465b      	mov	r3, fp
 800260a:	465c      	mov	r4, fp
 800260c:	f7fd ffb4 	bl	8000578 <__aeabi_dmul>
 8002610:	ed9f 0b41 	vldr	d0, [pc, #260]	; 8002718 <SolveCubic+0x3e8>
 8002614:	468b      	mov	fp, r1
 8002616:	9905      	ldr	r1, [sp, #20]
 8002618:	4682      	mov	sl, r0
 800261a:	4648      	mov	r0, r9
 800261c:	ec53 2b10 	vmov	r2, r3, d0
 8002620:	f7fd fdf4 	bl	800020c <__adddf3>
 8002624:	4642      	mov	r2, r8
 8002626:	462b      	mov	r3, r5
 8002628:	46a8      	mov	r8, r5
 800262a:	f7fe f8cf 	bl	80007cc <__aeabi_ddiv>
 800262e:	ec41 0b10 	vmov	d0, r0, r1
 8002632:	f000 fb39 	bl	8002ca8 <cos>
 8002636:	ec53 2b10 	vmov	r2, r3, d0
 800263a:	4650      	mov	r0, sl
 800263c:	4659      	mov	r1, fp
 800263e:	f7fd ff9b 	bl	8000578 <__aeabi_dmul>
 8002642:	9d08      	ldr	r5, [sp, #32]
 8002644:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8002648:	462a      	mov	r2, r5
 800264a:	4653      	mov	r3, sl
 800264c:	f7fd fddc 	bl	8000208 <__aeabi_dsub>
 8002650:	ec41 0b10 	vmov	d0, r0, r1
 8002654:	46b3      	mov	fp, r6
 8002656:	ed8b 0b02 	vstr	d0, [fp, #8]
 800265a:	eeb0 0a48 	vmov.f32	s0, s16
 800265e:	eef0 0a68 	vmov.f32	s1, s17
 8002662:	f000 fd85 	bl	8003170 <sqrt>
 8002666:	eeb0 8a40 	vmov.f32	s16, s0
 800266a:	eeb0 0a49 	vmov.f32	s0, s18
 800266e:	eef0 8a60 	vmov.f32	s17, s1
 8002672:	eef0 0a69 	vmov.f32	s1, s19
 8002676:	f000 f96b 	bl	8002950 <atan>
 800267a:	9a06      	ldr	r2, [sp, #24]
 800267c:	ec51 0b18 	vmov	r0, r1, d8
 8002680:	4623      	mov	r3, r4
 8002682:	f7fd ff79 	bl	8000578 <__aeabi_dmul>
 8002686:	ed9f 0b26 	vldr	d0, [pc, #152]	; 8002720 <SolveCubic+0x3f0>
 800268a:	460c      	mov	r4, r1
 800268c:	9905      	ldr	r1, [sp, #20]
 800268e:	4606      	mov	r6, r0
 8002690:	4648      	mov	r0, r9
 8002692:	ec53 2b10 	vmov	r2, r3, d0
 8002696:	f7fd fdb9 	bl	800020c <__adddf3>
 800269a:	9a04      	ldr	r2, [sp, #16]
 800269c:	4643      	mov	r3, r8
 800269e:	f7fe f895 	bl	80007cc <__aeabi_ddiv>
 80026a2:	ec41 0b10 	vmov	d0, r0, r1
 80026a6:	f000 faff 	bl	8002ca8 <cos>
 80026aa:	ec53 2b10 	vmov	r2, r3, d0
 80026ae:	4630      	mov	r0, r6
 80026b0:	4621      	mov	r1, r4
 80026b2:	f7fd ff61 	bl	8000578 <__aeabi_dmul>
 80026b6:	462a      	mov	r2, r5
 80026b8:	4653      	mov	r3, sl
 80026ba:	f7fd fda5 	bl	8000208 <__aeabi_dsub>
 80026be:	ec41 0b10 	vmov	d0, r0, r1
 80026c2:	ed8b 0b04 	vstr	d0, [fp, #16]
 80026c6:	b00a      	add	sp, #40	; 0x28
 80026c8:	ecbd 8b06 	vpop	{d8-d10}
 80026cc:	b001      	add	sp, #4
 80026ce:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80026d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80026d4:	bf00      	nop
 80026d6:	bf00      	nop
 80026d8:	00000000 	.word	0x00000000
 80026dc:	40220000 	.word	0x40220000
 80026e0:	00000000 	.word	0x00000000
 80026e4:	403b0000 	.word	0x403b0000
 80026e8:	00000000 	.word	0x00000000
 80026ec:	404b0000 	.word	0x404b0000
 80026f0:	00000000 	.word	0x00000000
 80026f4:	c0080000 	.word	0xc0080000
	...
 8002704:	c0000000 	.word	0xc0000000
 8002708:	00000000 	.word	0x00000000
 800270c:	40080000 	.word	0x40080000
 8002710:	00000000 	.word	0x00000000
 8002714:	3ff00000 	.word	0x3ff00000
 8002718:	54442d18 	.word	0x54442d18
 800271c:	401921fb 	.word	0x401921fb
 8002720:	54442d18 	.word	0x54442d18
 8002724:	402921fb 	.word	0x402921fb
 8002728:	55555555 	.word	0x55555555
 800272c:	3fd55555 	.word	0x3fd55555
 8002730:	00000000 	.word	0x00000000
 8002734:	bff00000 	.word	0xbff00000
 8002738:	00000000 	.word	0x00000000
 800273c:	3ff00000 	.word	0x3ff00000

08002740 <__io_putchar>:
 8002740:	b580      	push	{r7, lr}
 8002742:	466f      	mov	r7, sp
 8002744:	b082      	sub	sp, #8
 8002746:	9001      	str	r0, [sp, #4]
 8002748:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800274c:	a901      	add	r1, sp, #4
 800274e:	2201      	movs	r2, #1
 8002750:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002754:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002758:	f7ff fb0b 	bl	8001d72 <HAL_UART_Transmit>
 800275c:	9801      	ldr	r0, [sp, #4]
 800275e:	b002      	add	sp, #8
 8002760:	bd80      	pop	{r7, pc}

08002762 <main>:
 8002762:	b5b0      	push	{r4, r5, r7, lr}
 8002764:	af02      	add	r7, sp, #8
 8002766:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800276a:	f643 0000 	movw	r0, #14336	; 0x3800
 800276e:	220c      	movs	r2, #12
 8002770:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002774:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002778:	6008      	str	r0, [r1, #0]
 800277a:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800277e:	6048      	str	r0, [r1, #4]
 8002780:	2000      	movs	r0, #0
 8002782:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002786:	6108      	str	r0, [r1, #16]
 8002788:	6248      	str	r0, [r1, #36]	; 0x24
 800278a:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800278e:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002792:	2000      	movs	r0, #0
 8002794:	f7ff fb82 	bl	8001e9c <BSP_COM_Init>
 8002798:	f7ff fbdc 	bl	8001f54 <initialise_benchmark>
 800279c:	f24a 5060 	movw	r0, #42336	; 0xa560
 80027a0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80027a4:	f003 f84c 	bl	8005840 <printf>
 80027a8:	f24a 6008 	movw	r0, #42504	; 0xa608
 80027ac:	f6c0 0000 	movt	r0, #2048	; 0x800
 80027b0:	f003 f8a8 	bl	8005904 <puts>
 80027b4:	f7fe fce4 	bl	8001180 <HAL_Init>
 80027b8:	f7fe fcfa 	bl	80011b0 <HAL_GetTick>
 80027bc:	4604      	mov	r4, r0
 80027be:	f7ff fbcb 	bl	8001f58 <benchmark>
 80027c2:	4605      	mov	r5, r0
 80027c4:	f7fe fcf4 	bl	80011b0 <HAL_GetTick>
 80027c8:	1b04      	subs	r4, r0, r4
 80027ca:	4628      	mov	r0, r5
 80027cc:	f7ff fbbf 	bl	8001f4e <verify_benchmark>
 80027d0:	1c41      	adds	r1, r0, #1
 80027d2:	d006      	beq.n	80027e2 <main+0x80>
 80027d4:	2801      	cmp	r0, #1
 80027d6:	d109      	bne.n	80027ec <main+0x8a>
 80027d8:	f24a 5074 	movw	r0, #42356	; 0xa574
 80027dc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80027e0:	e008      	b.n	80027f4 <main+0x92>
 80027e2:	f24a 5098 	movw	r0, #42392	; 0xa598
 80027e6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80027ea:	e003      	b.n	80027f4 <main+0x92>
 80027ec:	f24a 50cd 	movw	r0, #42445	; 0xa5cd
 80027f0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80027f4:	4621      	mov	r1, r4
 80027f6:	f003 f823 	bl	8005840 <printf>
 80027fa:	2000      	movs	r0, #0
 80027fc:	bdb0      	pop	{r4, r5, r7, pc}

080027fe <SysTick_Handler>:
 80027fe:	b580      	push	{r7, lr}
 8002800:	466f      	mov	r7, sp
 8002802:	f7fe fccd 	bl	80011a0 <HAL_IncTick>
 8002806:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800280a:	f7fe bd27 	b.w	800125c <HAL_SYSTICK_IRQHandler>

0800280e <_read>:
 800280e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002810:	af03      	add	r7, sp, #12
 8002812:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002816:	4614      	mov	r4, r2
 8002818:	460d      	mov	r5, r1
 800281a:	2c01      	cmp	r4, #1
 800281c:	db06      	blt.n	800282c <_read+0x1e>
 800281e:	4626      	mov	r6, r4
 8002820:	f3af 8000 	nop.w
 8002824:	f805 0b01 	strb.w	r0, [r5], #1
 8002828:	3e01      	subs	r6, #1
 800282a:	d1f9      	bne.n	8002820 <_read+0x12>
 800282c:	4620      	mov	r0, r4
 800282e:	f85d bb04 	ldr.w	fp, [sp], #4
 8002832:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002834 <_write>:
 8002834:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002836:	af03      	add	r7, sp, #12
 8002838:	f84d bd04 	str.w	fp, [sp, #-4]!
 800283c:	4614      	mov	r4, r2
 800283e:	460d      	mov	r5, r1
 8002840:	2c01      	cmp	r4, #1
 8002842:	db06      	blt.n	8002852 <_write+0x1e>
 8002844:	4626      	mov	r6, r4
 8002846:	f815 0b01 	ldrb.w	r0, [r5], #1
 800284a:	f7ff ff79 	bl	8002740 <__io_putchar>
 800284e:	3e01      	subs	r6, #1
 8002850:	d1f9      	bne.n	8002846 <_write+0x12>
 8002852:	4620      	mov	r0, r4
 8002854:	f85d bb04 	ldr.w	fp, [sp], #4
 8002858:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800285a <_sbrk>:
 800285a:	f640 2268 	movw	r2, #2664	; 0xa68
 800285e:	4601      	mov	r1, r0
 8002860:	466b      	mov	r3, sp
 8002862:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002866:	6810      	ldr	r0, [r2, #0]
 8002868:	2800      	cmp	r0, #0
 800286a:	bf02      	ittt	eq
 800286c:	f640 3010 	movweq	r0, #2832	; 0xb10
 8002870:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002874:	6010      	streq	r0, [r2, #0]
 8002876:	4401      	add	r1, r0
 8002878:	4299      	cmp	r1, r3
 800287a:	bf9c      	itt	ls
 800287c:	6011      	strls	r1, [r2, #0]
 800287e:	4770      	bxls	lr
 8002880:	b580      	push	{r7, lr}
 8002882:	466f      	mov	r7, sp
 8002884:	f002 ff68 	bl	8005758 <__errno>
 8002888:	210c      	movs	r1, #12
 800288a:	6001      	str	r1, [r0, #0]
 800288c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002890:	bd80      	pop	{r7, pc}

08002892 <_close>:
 8002892:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002896:	4770      	bx	lr

08002898 <_fstat>:
 8002898:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800289c:	6048      	str	r0, [r1, #4]
 800289e:	2000      	movs	r0, #0
 80028a0:	4770      	bx	lr

080028a2 <_isatty>:
 80028a2:	2001      	movs	r0, #1
 80028a4:	4770      	bx	lr

080028a6 <_lseek>:
 80028a6:	2000      	movs	r0, #0
 80028a8:	4770      	bx	lr

080028aa <SystemInit>:
 80028aa:	f64e 5088 	movw	r0, #60808	; 0xed88
 80028ae:	f04f 0c00 	mov.w	ip, #0
 80028b2:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80028b6:	6801      	ldr	r1, [r0, #0]
 80028b8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80028bc:	6001      	str	r1, [r0, #0]
 80028be:	f241 0100 	movw	r1, #4096	; 0x1000
 80028c2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80028c6:	680a      	ldr	r2, [r1, #0]
 80028c8:	f042 0201 	orr.w	r2, r2, #1
 80028cc:	600a      	str	r2, [r1, #0]
 80028ce:	f8c1 c008 	str.w	ip, [r1, #8]
 80028d2:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80028d6:	680b      	ldr	r3, [r1, #0]
 80028d8:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80028dc:	401a      	ands	r2, r3
 80028de:	600a      	str	r2, [r1, #0]
 80028e0:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80028e4:	60ca      	str	r2, [r1, #12]
 80028e6:	680a      	ldr	r2, [r1, #0]
 80028e8:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80028ec:	600a      	str	r2, [r1, #0]
 80028ee:	f8c1 c018 	str.w	ip, [r1, #24]
 80028f2:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80028f6:	f840 1c80 	str.w	r1, [r0, #-128]
 80028fa:	4770      	bx	lr

080028fc <Reset_Handler>:
 80028fc:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002934 <LoopForever+0x2>
 8002900:	2100      	movs	r1, #0
 8002902:	e003      	b.n	800290c <LoopCopyDataInit>

08002904 <CopyDataInit>:
 8002904:	4b0c      	ldr	r3, [pc, #48]	; (8002938 <LoopForever+0x6>)
 8002906:	585b      	ldr	r3, [r3, r1]
 8002908:	5043      	str	r3, [r0, r1]
 800290a:	3104      	adds	r1, #4

0800290c <LoopCopyDataInit>:
 800290c:	480b      	ldr	r0, [pc, #44]	; (800293c <LoopForever+0xa>)
 800290e:	4b0c      	ldr	r3, [pc, #48]	; (8002940 <LoopForever+0xe>)
 8002910:	1842      	adds	r2, r0, r1
 8002912:	429a      	cmp	r2, r3
 8002914:	d3f6      	bcc.n	8002904 <CopyDataInit>
 8002916:	4a0b      	ldr	r2, [pc, #44]	; (8002944 <LoopForever+0x12>)
 8002918:	e002      	b.n	8002920 <LoopFillZerobss>

0800291a <FillZerobss>:
 800291a:	2300      	movs	r3, #0
 800291c:	f842 3b04 	str.w	r3, [r2], #4

08002920 <LoopFillZerobss>:
 8002920:	4b09      	ldr	r3, [pc, #36]	; (8002948 <LoopForever+0x16>)
 8002922:	429a      	cmp	r2, r3
 8002924:	d3f9      	bcc.n	800291a <FillZerobss>
 8002926:	f7ff ffc0 	bl	80028aa <SystemInit>
 800292a:	f002 ff1b 	bl	8005764 <__libc_init_array>
 800292e:	f7ff ff18 	bl	8002762 <main>

08002932 <LoopForever>:
 8002932:	e7fe      	b.n	8002932 <LoopForever>
 8002934:	20018000 	.word	0x20018000
 8002938:	0800aaf8 	.word	0x0800aaf8
 800293c:	20000000 	.word	0x20000000
 8002940:	200009c8 	.word	0x200009c8
 8002944:	200009c8 	.word	0x200009c8
 8002948:	20000b10 	.word	0x20000b10

0800294c <ADC1_2_IRQHandler>:
 800294c:	e7fe      	b.n	800294c <ADC1_2_IRQHandler>
	...

08002950 <atan>:
 8002950:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002954:	ec55 4b10 	vmov	r4, r5, d0
 8002958:	4bc9      	ldr	r3, [pc, #804]	; (8002c80 <atan+0x330>)
 800295a:	f025 4600 	bic.w	r6, r5, #2147483648	; 0x80000000
 800295e:	429e      	cmp	r6, r3
 8002960:	46aa      	mov	sl, r5
 8002962:	dd10      	ble.n	8002986 <atan+0x36>
 8002964:	4bc7      	ldr	r3, [pc, #796]	; (8002c84 <atan+0x334>)
 8002966:	429e      	cmp	r6, r3
 8002968:	f300 80b5 	bgt.w	8002ad6 <atan+0x186>
 800296c:	f000 80b0 	beq.w	8002ad0 <atan+0x180>
 8002970:	f1ba 0f00 	cmp.w	sl, #0
 8002974:	f340 80f9 	ble.w	8002b6a <atan+0x21a>
 8002978:	a1a5      	add	r1, pc, #660	; (adr r1, 8002c10 <atan+0x2c0>)
 800297a:	e9d1 0100 	ldrd	r0, r1, [r1]
 800297e:	ec41 0b10 	vmov	d0, r0, r1
 8002982:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002986:	4bc0      	ldr	r3, [pc, #768]	; (8002c88 <atan+0x338>)
 8002988:	429e      	cmp	r6, r3
 800298a:	f300 80c3 	bgt.w	8002b14 <atan+0x1c4>
 800298e:	f1a3 73de 	sub.w	r3, r3, #29097984	; 0x1bc0000
 8002992:	429e      	cmp	r6, r3
 8002994:	f340 80a9 	ble.w	8002aea <atan+0x19a>
 8002998:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
 800299c:	4622      	mov	r2, r4
 800299e:	462b      	mov	r3, r5
 80029a0:	4620      	mov	r0, r4
 80029a2:	4629      	mov	r1, r5
 80029a4:	f7fd fde8 	bl	8000578 <__aeabi_dmul>
 80029a8:	4602      	mov	r2, r0
 80029aa:	460b      	mov	r3, r1
 80029ac:	4680      	mov	r8, r0
 80029ae:	4689      	mov	r9, r1
 80029b0:	f7fd fde2 	bl	8000578 <__aeabi_dmul>
 80029b4:	a398      	add	r3, pc, #608	; (adr r3, 8002c18 <atan+0x2c8>)
 80029b6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80029ba:	4606      	mov	r6, r0
 80029bc:	460f      	mov	r7, r1
 80029be:	f7fd fddb 	bl	8000578 <__aeabi_dmul>
 80029c2:	a397      	add	r3, pc, #604	; (adr r3, 8002c20 <atan+0x2d0>)
 80029c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80029c8:	f7fd fc20 	bl	800020c <__adddf3>
 80029cc:	4632      	mov	r2, r6
 80029ce:	463b      	mov	r3, r7
 80029d0:	f7fd fdd2 	bl	8000578 <__aeabi_dmul>
 80029d4:	a394      	add	r3, pc, #592	; (adr r3, 8002c28 <atan+0x2d8>)
 80029d6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80029da:	f7fd fc17 	bl	800020c <__adddf3>
 80029de:	4632      	mov	r2, r6
 80029e0:	463b      	mov	r3, r7
 80029e2:	f7fd fdc9 	bl	8000578 <__aeabi_dmul>
 80029e6:	a392      	add	r3, pc, #584	; (adr r3, 8002c30 <atan+0x2e0>)
 80029e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80029ec:	f7fd fc0e 	bl	800020c <__adddf3>
 80029f0:	4632      	mov	r2, r6
 80029f2:	463b      	mov	r3, r7
 80029f4:	f7fd fdc0 	bl	8000578 <__aeabi_dmul>
 80029f8:	a38f      	add	r3, pc, #572	; (adr r3, 8002c38 <atan+0x2e8>)
 80029fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80029fe:	f7fd fc05 	bl	800020c <__adddf3>
 8002a02:	4632      	mov	r2, r6
 8002a04:	463b      	mov	r3, r7
 8002a06:	f7fd fdb7 	bl	8000578 <__aeabi_dmul>
 8002a0a:	a38d      	add	r3, pc, #564	; (adr r3, 8002c40 <atan+0x2f0>)
 8002a0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a10:	f7fd fbfc 	bl	800020c <__adddf3>
 8002a14:	4642      	mov	r2, r8
 8002a16:	464b      	mov	r3, r9
 8002a18:	f7fd fdae 	bl	8000578 <__aeabi_dmul>
 8002a1c:	a38a      	add	r3, pc, #552	; (adr r3, 8002c48 <atan+0x2f8>)
 8002a1e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a22:	4680      	mov	r8, r0
 8002a24:	4689      	mov	r9, r1
 8002a26:	4630      	mov	r0, r6
 8002a28:	4639      	mov	r1, r7
 8002a2a:	f7fd fda5 	bl	8000578 <__aeabi_dmul>
 8002a2e:	a388      	add	r3, pc, #544	; (adr r3, 8002c50 <atan+0x300>)
 8002a30:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a34:	f7fd fbe8 	bl	8000208 <__aeabi_dsub>
 8002a38:	4632      	mov	r2, r6
 8002a3a:	463b      	mov	r3, r7
 8002a3c:	f7fd fd9c 	bl	8000578 <__aeabi_dmul>
 8002a40:	a385      	add	r3, pc, #532	; (adr r3, 8002c58 <atan+0x308>)
 8002a42:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a46:	f7fd fbdf 	bl	8000208 <__aeabi_dsub>
 8002a4a:	4632      	mov	r2, r6
 8002a4c:	463b      	mov	r3, r7
 8002a4e:	f7fd fd93 	bl	8000578 <__aeabi_dmul>
 8002a52:	a383      	add	r3, pc, #524	; (adr r3, 8002c60 <atan+0x310>)
 8002a54:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a58:	f7fd fbd6 	bl	8000208 <__aeabi_dsub>
 8002a5c:	4632      	mov	r2, r6
 8002a5e:	463b      	mov	r3, r7
 8002a60:	f7fd fd8a 	bl	8000578 <__aeabi_dmul>
 8002a64:	a380      	add	r3, pc, #512	; (adr r3, 8002c68 <atan+0x318>)
 8002a66:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002a6a:	f7fd fbcd 	bl	8000208 <__aeabi_dsub>
 8002a6e:	4632      	mov	r2, r6
 8002a70:	463b      	mov	r3, r7
 8002a72:	f7fd fd81 	bl	8000578 <__aeabi_dmul>
 8002a76:	4602      	mov	r2, r0
 8002a78:	460b      	mov	r3, r1
 8002a7a:	4640      	mov	r0, r8
 8002a7c:	4649      	mov	r1, r9
 8002a7e:	f7fd fbc5 	bl	800020c <__adddf3>
 8002a82:	4622      	mov	r2, r4
 8002a84:	462b      	mov	r3, r5
 8002a86:	f7fd fd77 	bl	8000578 <__aeabi_dmul>
 8002a8a:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8002a8e:	4602      	mov	r2, r0
 8002a90:	460b      	mov	r3, r1
 8002a92:	d06e      	beq.n	8002b72 <atan+0x222>
 8002a94:	4b7d      	ldr	r3, [pc, #500]	; (8002c8c <atan+0x33c>)
 8002a96:	4e7e      	ldr	r6, [pc, #504]	; (8002c90 <atan+0x340>)
 8002a98:	ea4f 0bcb 	mov.w	fp, fp, lsl #3
 8002a9c:	445b      	add	r3, fp
 8002a9e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002aa2:	f7fd fbb1 	bl	8000208 <__aeabi_dsub>
 8002aa6:	4622      	mov	r2, r4
 8002aa8:	462b      	mov	r3, r5
 8002aaa:	f7fd fbad 	bl	8000208 <__aeabi_dsub>
 8002aae:	44b3      	add	fp, r6
 8002ab0:	4602      	mov	r2, r0
 8002ab2:	460b      	mov	r3, r1
 8002ab4:	e9db 0100 	ldrd	r0, r1, [fp]
 8002ab8:	f7fd fba6 	bl	8000208 <__aeabi_dsub>
 8002abc:	f1ba 0f00 	cmp.w	sl, #0
 8002ac0:	da0f      	bge.n	8002ae2 <atan+0x192>
 8002ac2:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8002ac6:	4619      	mov	r1, r3
 8002ac8:	ec41 0b10 	vmov	d0, r0, r1
 8002acc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ad0:	2c00      	cmp	r4, #0
 8002ad2:	f43f af4d 	beq.w	8002970 <atan+0x20>
 8002ad6:	4622      	mov	r2, r4
 8002ad8:	462b      	mov	r3, r5
 8002ada:	4620      	mov	r0, r4
 8002adc:	4629      	mov	r1, r5
 8002ade:	f7fd fb95 	bl	800020c <__adddf3>
 8002ae2:	ec41 0b10 	vmov	d0, r0, r1
 8002ae6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002aea:	a361      	add	r3, pc, #388	; (adr r3, 8002c70 <atan+0x320>)
 8002aec:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002af0:	ee10 0a10 	vmov	r0, s0
 8002af4:	4629      	mov	r1, r5
 8002af6:	f7fd fb89 	bl	800020c <__adddf3>
 8002afa:	2200      	movs	r2, #0
 8002afc:	4b65      	ldr	r3, [pc, #404]	; (8002c94 <atan+0x344>)
 8002afe:	f7fd ffcb 	bl	8000a98 <__aeabi_dcmpgt>
 8002b02:	2800      	cmp	r0, #0
 8002b04:	f43f af48 	beq.w	8002998 <atan+0x48>
 8002b08:	4620      	mov	r0, r4
 8002b0a:	4629      	mov	r1, r5
 8002b0c:	ec41 0b10 	vmov	d0, r0, r1
 8002b10:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b14:	f000 f928 	bl	8002d68 <fabs>
 8002b18:	4b5f      	ldr	r3, [pc, #380]	; (8002c98 <atan+0x348>)
 8002b1a:	429e      	cmp	r6, r3
 8002b1c:	ec55 4b10 	vmov	r4, r5, d0
 8002b20:	dc2f      	bgt.n	8002b82 <atan+0x232>
 8002b22:	f5a3 2350 	sub.w	r3, r3, #851968	; 0xd0000
 8002b26:	429e      	cmp	r6, r3
 8002b28:	dc58      	bgt.n	8002bdc <atan+0x28c>
 8002b2a:	ee10 2a10 	vmov	r2, s0
 8002b2e:	ee10 0a10 	vmov	r0, s0
 8002b32:	462b      	mov	r3, r5
 8002b34:	4629      	mov	r1, r5
 8002b36:	f7fd fb69 	bl	800020c <__adddf3>
 8002b3a:	2200      	movs	r2, #0
 8002b3c:	4b55      	ldr	r3, [pc, #340]	; (8002c94 <atan+0x344>)
 8002b3e:	f7fd fb63 	bl	8000208 <__aeabi_dsub>
 8002b42:	2200      	movs	r2, #0
 8002b44:	4606      	mov	r6, r0
 8002b46:	460f      	mov	r7, r1
 8002b48:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8002b4c:	4620      	mov	r0, r4
 8002b4e:	4629      	mov	r1, r5
 8002b50:	f7fd fb5c 	bl	800020c <__adddf3>
 8002b54:	4602      	mov	r2, r0
 8002b56:	460b      	mov	r3, r1
 8002b58:	4630      	mov	r0, r6
 8002b5a:	4639      	mov	r1, r7
 8002b5c:	f7fd fe36 	bl	80007cc <__aeabi_ddiv>
 8002b60:	f04f 0b00 	mov.w	fp, #0
 8002b64:	4604      	mov	r4, r0
 8002b66:	460d      	mov	r5, r1
 8002b68:	e718      	b.n	800299c <atan+0x4c>
 8002b6a:	a143      	add	r1, pc, #268	; (adr r1, 8002c78 <atan+0x328>)
 8002b6c:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002b70:	e7b7      	b.n	8002ae2 <atan+0x192>
 8002b72:	4620      	mov	r0, r4
 8002b74:	4629      	mov	r1, r5
 8002b76:	f7fd fb47 	bl	8000208 <__aeabi_dsub>
 8002b7a:	ec41 0b10 	vmov	d0, r0, r1
 8002b7e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b82:	4b46      	ldr	r3, [pc, #280]	; (8002c9c <atan+0x34c>)
 8002b84:	429e      	cmp	r6, r3
 8002b86:	dc1d      	bgt.n	8002bc4 <atan+0x274>
 8002b88:	ee10 0a10 	vmov	r0, s0
 8002b8c:	2200      	movs	r2, #0
 8002b8e:	4b44      	ldr	r3, [pc, #272]	; (8002ca0 <atan+0x350>)
 8002b90:	4629      	mov	r1, r5
 8002b92:	f7fd fb39 	bl	8000208 <__aeabi_dsub>
 8002b96:	2200      	movs	r2, #0
 8002b98:	4606      	mov	r6, r0
 8002b9a:	460f      	mov	r7, r1
 8002b9c:	4b40      	ldr	r3, [pc, #256]	; (8002ca0 <atan+0x350>)
 8002b9e:	4620      	mov	r0, r4
 8002ba0:	4629      	mov	r1, r5
 8002ba2:	f7fd fce9 	bl	8000578 <__aeabi_dmul>
 8002ba6:	2200      	movs	r2, #0
 8002ba8:	4b3a      	ldr	r3, [pc, #232]	; (8002c94 <atan+0x344>)
 8002baa:	f7fd fb2f 	bl	800020c <__adddf3>
 8002bae:	4602      	mov	r2, r0
 8002bb0:	460b      	mov	r3, r1
 8002bb2:	4630      	mov	r0, r6
 8002bb4:	4639      	mov	r1, r7
 8002bb6:	f7fd fe09 	bl	80007cc <__aeabi_ddiv>
 8002bba:	f04f 0b02 	mov.w	fp, #2
 8002bbe:	4604      	mov	r4, r0
 8002bc0:	460d      	mov	r5, r1
 8002bc2:	e6eb      	b.n	800299c <atan+0x4c>
 8002bc4:	462b      	mov	r3, r5
 8002bc6:	ee10 2a10 	vmov	r2, s0
 8002bca:	2000      	movs	r0, #0
 8002bcc:	4935      	ldr	r1, [pc, #212]	; (8002ca4 <atan+0x354>)
 8002bce:	f7fd fdfd 	bl	80007cc <__aeabi_ddiv>
 8002bd2:	f04f 0b03 	mov.w	fp, #3
 8002bd6:	4604      	mov	r4, r0
 8002bd8:	460d      	mov	r5, r1
 8002bda:	e6df      	b.n	800299c <atan+0x4c>
 8002bdc:	ee10 0a10 	vmov	r0, s0
 8002be0:	2200      	movs	r2, #0
 8002be2:	4b2c      	ldr	r3, [pc, #176]	; (8002c94 <atan+0x344>)
 8002be4:	4629      	mov	r1, r5
 8002be6:	f7fd fb0f 	bl	8000208 <__aeabi_dsub>
 8002bea:	2200      	movs	r2, #0
 8002bec:	4606      	mov	r6, r0
 8002bee:	460f      	mov	r7, r1
 8002bf0:	4b28      	ldr	r3, [pc, #160]	; (8002c94 <atan+0x344>)
 8002bf2:	4620      	mov	r0, r4
 8002bf4:	4629      	mov	r1, r5
 8002bf6:	f7fd fb09 	bl	800020c <__adddf3>
 8002bfa:	4602      	mov	r2, r0
 8002bfc:	460b      	mov	r3, r1
 8002bfe:	4630      	mov	r0, r6
 8002c00:	4639      	mov	r1, r7
 8002c02:	f7fd fde3 	bl	80007cc <__aeabi_ddiv>
 8002c06:	f04f 0b01 	mov.w	fp, #1
 8002c0a:	4604      	mov	r4, r0
 8002c0c:	460d      	mov	r5, r1
 8002c0e:	e6c5      	b.n	800299c <atan+0x4c>
 8002c10:	54442d18 	.word	0x54442d18
 8002c14:	3ff921fb 	.word	0x3ff921fb
 8002c18:	e322da11 	.word	0xe322da11
 8002c1c:	3f90ad3a 	.word	0x3f90ad3a
 8002c20:	24760deb 	.word	0x24760deb
 8002c24:	3fa97b4b 	.word	0x3fa97b4b
 8002c28:	a0d03d51 	.word	0xa0d03d51
 8002c2c:	3fb10d66 	.word	0x3fb10d66
 8002c30:	c54c206e 	.word	0xc54c206e
 8002c34:	3fb745cd 	.word	0x3fb745cd
 8002c38:	920083ff 	.word	0x920083ff
 8002c3c:	3fc24924 	.word	0x3fc24924
 8002c40:	5555550d 	.word	0x5555550d
 8002c44:	3fd55555 	.word	0x3fd55555
 8002c48:	2c6a6c2f 	.word	0x2c6a6c2f
 8002c4c:	bfa2b444 	.word	0xbfa2b444
 8002c50:	52defd9a 	.word	0x52defd9a
 8002c54:	3fadde2d 	.word	0x3fadde2d
 8002c58:	af749a6d 	.word	0xaf749a6d
 8002c5c:	3fb3b0f2 	.word	0x3fb3b0f2
 8002c60:	fe231671 	.word	0xfe231671
 8002c64:	3fbc71c6 	.word	0x3fbc71c6
 8002c68:	9998ebc4 	.word	0x9998ebc4
 8002c6c:	3fc99999 	.word	0x3fc99999
 8002c70:	8800759c 	.word	0x8800759c
 8002c74:	7e37e43c 	.word	0x7e37e43c
 8002c78:	54442d18 	.word	0x54442d18
 8002c7c:	bff921fb 	.word	0xbff921fb
 8002c80:	440fffff 	.word	0x440fffff
 8002c84:	7ff00000 	.word	0x7ff00000
 8002c88:	3fdbffff 	.word	0x3fdbffff
 8002c8c:	0800a630 	.word	0x0800a630
 8002c90:	0800a610 	.word	0x0800a610
 8002c94:	3ff00000 	.word	0x3ff00000
 8002c98:	3ff2ffff 	.word	0x3ff2ffff
 8002c9c:	40037fff 	.word	0x40037fff
 8002ca0:	3ff80000 	.word	0x3ff80000
 8002ca4:	bff00000 	.word	0xbff00000

08002ca8 <cos>:
 8002ca8:	b500      	push	{lr}
 8002caa:	ec51 0b10 	vmov	r0, r1, d0
 8002cae:	4a2c      	ldr	r2, [pc, #176]	; (8002d60 <cos+0xb8>)
 8002cb0:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002cb4:	4293      	cmp	r3, r2
 8002cb6:	b085      	sub	sp, #20
 8002cb8:	dd20      	ble.n	8002cfc <cos+0x54>
 8002cba:	4a2a      	ldr	r2, [pc, #168]	; (8002d64 <cos+0xbc>)
 8002cbc:	4293      	cmp	r3, r2
 8002cbe:	dd09      	ble.n	8002cd4 <cos+0x2c>
 8002cc0:	ee10 2a10 	vmov	r2, s0
 8002cc4:	460b      	mov	r3, r1
 8002cc6:	f7fd fa9f 	bl	8000208 <__aeabi_dsub>
 8002cca:	ec41 0b10 	vmov	d0, r0, r1
 8002cce:	b005      	add	sp, #20
 8002cd0:	f85d fb04 	ldr.w	pc, [sp], #4
 8002cd4:	4668      	mov	r0, sp
 8002cd6:	f001 fa6f 	bl	80041b8 <__ieee754_rem_pio2>
 8002cda:	f000 0003 	and.w	r0, r0, #3
 8002cde:	2801      	cmp	r0, #1
 8002ce0:	d017      	beq.n	8002d12 <cos+0x6a>
 8002ce2:	2802      	cmp	r0, #2
 8002ce4:	d02f      	beq.n	8002d46 <cos+0x9e>
 8002ce6:	b328      	cbz	r0, 8002d34 <cos+0x8c>
 8002ce8:	2001      	movs	r0, #1
 8002cea:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002cee:	ed9d 0b00 	vldr	d0, [sp]
 8002cf2:	f002 faa5 	bl	8005240 <__kernel_sin>
 8002cf6:	ec51 0b10 	vmov	r0, r1, d0
 8002cfa:	e7e6      	b.n	8002cca <cos+0x22>
 8002cfc:	ed9f 1b16 	vldr	d1, [pc, #88]	; 8002d58 <cos+0xb0>
 8002d00:	f001 fd4e 	bl	80047a0 <__kernel_cos>
 8002d04:	ec51 0b10 	vmov	r0, r1, d0
 8002d08:	ec41 0b10 	vmov	d0, r0, r1
 8002d0c:	b005      	add	sp, #20
 8002d0e:	f85d fb04 	ldr.w	pc, [sp], #4
 8002d12:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002d16:	ed9d 0b00 	vldr	d0, [sp]
 8002d1a:	f002 fa91 	bl	8005240 <__kernel_sin>
 8002d1e:	ec53 2b10 	vmov	r2, r3, d0
 8002d22:	ee10 0a10 	vmov	r0, s0
 8002d26:	f103 4100 	add.w	r1, r3, #2147483648	; 0x80000000
 8002d2a:	ec41 0b10 	vmov	d0, r0, r1
 8002d2e:	b005      	add	sp, #20
 8002d30:	f85d fb04 	ldr.w	pc, [sp], #4
 8002d34:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002d38:	ed9d 0b00 	vldr	d0, [sp]
 8002d3c:	f001 fd30 	bl	80047a0 <__kernel_cos>
 8002d40:	ec51 0b10 	vmov	r0, r1, d0
 8002d44:	e7c1      	b.n	8002cca <cos+0x22>
 8002d46:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002d4a:	ed9d 0b00 	vldr	d0, [sp]
 8002d4e:	f001 fd27 	bl	80047a0 <__kernel_cos>
 8002d52:	e7e4      	b.n	8002d1e <cos+0x76>
 8002d54:	f3af 8000 	nop.w
	...
 8002d60:	3fe921fb 	.word	0x3fe921fb
 8002d64:	7fefffff 	.word	0x7fefffff

08002d68 <fabs>:
 8002d68:	ec51 0b10 	vmov	r0, r1, d0
 8002d6c:	ee10 2a10 	vmov	r2, s0
 8002d70:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002d74:	ec43 2b10 	vmov	d0, r2, r3
 8002d78:	4770      	bx	lr
 8002d7a:	bf00      	nop

08002d7c <acos>:
 8002d7c:	b530      	push	{r4, r5, lr}
 8002d7e:	ed2d 8b04 	vpush	{d8-d9}
 8002d82:	eeb0 8a40 	vmov.f32	s16, s0
 8002d86:	eef0 8a60 	vmov.f32	s17, s1
 8002d8a:	4c26      	ldr	r4, [pc, #152]	; (8002e24 <acos+0xa8>)
 8002d8c:	b08b      	sub	sp, #44	; 0x2c
 8002d8e:	f000 fa4b 	bl	8003228 <__ieee754_acos>
 8002d92:	f994 3000 	ldrsb.w	r3, [r4]
 8002d96:	eeb0 9a40 	vmov.f32	s18, s0
 8002d9a:	eef0 9a60 	vmov.f32	s19, s1
 8002d9e:	3301      	adds	r3, #1
 8002da0:	d02e      	beq.n	8002e00 <acos+0x84>
 8002da2:	ec53 2b18 	vmov	r2, r3, d8
 8002da6:	ec51 0b18 	vmov	r0, r1, d8
 8002daa:	f7fd fe7f 	bl	8000aac <__aeabi_dcmpun>
 8002dae:	4605      	mov	r5, r0
 8002db0:	bb30      	cbnz	r0, 8002e00 <acos+0x84>
 8002db2:	eeb0 0a48 	vmov.f32	s0, s16
 8002db6:	eef0 0a68 	vmov.f32	s1, s17
 8002dba:	f7ff ffd5 	bl	8002d68 <fabs>
 8002dbe:	2200      	movs	r2, #0
 8002dc0:	4b19      	ldr	r3, [pc, #100]	; (8002e28 <acos+0xac>)
 8002dc2:	ec51 0b10 	vmov	r0, r1, d0
 8002dc6:	f7fd fe67 	bl	8000a98 <__aeabi_dcmpgt>
 8002dca:	b1c8      	cbz	r0, 8002e00 <acos+0x84>
 8002dcc:	4b17      	ldr	r3, [pc, #92]	; (8002e2c <acos+0xb0>)
 8002dce:	4818      	ldr	r0, [pc, #96]	; (8002e30 <acos+0xb4>)
 8002dd0:	9508      	str	r5, [sp, #32]
 8002dd2:	2201      	movs	r2, #1
 8002dd4:	e9cd 2300 	strd	r2, r3, [sp]
 8002dd8:	ed8d 8b04 	vstr	d8, [sp, #16]
 8002ddc:	ed8d 8b02 	vstr	d8, [sp, #8]
 8002de0:	f002 fb8e 	bl	8005500 <nan>
 8002de4:	f994 3000 	ldrsb.w	r3, [r4]
 8002de8:	2b02      	cmp	r3, #2
 8002dea:	ed8d 0b06 	vstr	d0, [sp, #24]
 8002dee:	d00f      	beq.n	8002e10 <acos+0x94>
 8002df0:	4668      	mov	r0, sp
 8002df2:	f002 fb81 	bl	80054f8 <matherr>
 8002df6:	b158      	cbz	r0, 8002e10 <acos+0x94>
 8002df8:	9b08      	ldr	r3, [sp, #32]
 8002dfa:	b973      	cbnz	r3, 8002e1a <acos+0x9e>
 8002dfc:	ed9d 9b06 	vldr	d9, [sp, #24]
 8002e00:	eeb0 0a49 	vmov.f32	s0, s18
 8002e04:	eef0 0a69 	vmov.f32	s1, s19
 8002e08:	b00b      	add	sp, #44	; 0x2c
 8002e0a:	ecbd 8b04 	vpop	{d8-d9}
 8002e0e:	bd30      	pop	{r4, r5, pc}
 8002e10:	f002 fca2 	bl	8005758 <__errno>
 8002e14:	2321      	movs	r3, #33	; 0x21
 8002e16:	6003      	str	r3, [r0, #0]
 8002e18:	e7ee      	b.n	8002df8 <acos+0x7c>
 8002e1a:	f002 fc9d 	bl	8005758 <__errno>
 8002e1e:	9b08      	ldr	r3, [sp, #32]
 8002e20:	6003      	str	r3, [r0, #0]
 8002e22:	e7eb      	b.n	8002dfc <acos+0x80>
 8002e24:	20000018 	.word	0x20000018
 8002e28:	3ff00000 	.word	0x3ff00000
 8002e2c:	0800a650 	.word	0x0800a650
 8002e30:	0800a88c 	.word	0x0800a88c
 8002e34:	00000000 	.word	0x00000000

08002e38 <pow>:
 8002e38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002e3c:	ed2d 8b02 	vpush	{d8}
 8002e40:	f8df a324 	ldr.w	sl, [pc, #804]	; 8003168 <pow+0x330>
 8002e44:	b08b      	sub	sp, #44	; 0x2c
 8002e46:	ec57 6b10 	vmov	r6, r7, d0
 8002e4a:	ec55 4b11 	vmov	r4, r5, d1
 8002e4e:	f000 fc57 	bl	8003700 <__ieee754_pow>
 8002e52:	f99a 8000 	ldrsb.w	r8, [sl]
 8002e56:	eeb0 8a40 	vmov.f32	s16, s0
 8002e5a:	eef0 8a60 	vmov.f32	s17, s1
 8002e5e:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 8002e62:	d033      	beq.n	8002ecc <pow+0x94>
 8002e64:	4622      	mov	r2, r4
 8002e66:	462b      	mov	r3, r5
 8002e68:	4620      	mov	r0, r4
 8002e6a:	4629      	mov	r1, r5
 8002e6c:	f7fd fe1e 	bl	8000aac <__aeabi_dcmpun>
 8002e70:	4683      	mov	fp, r0
 8002e72:	bb58      	cbnz	r0, 8002ecc <pow+0x94>
 8002e74:	4632      	mov	r2, r6
 8002e76:	463b      	mov	r3, r7
 8002e78:	4630      	mov	r0, r6
 8002e7a:	4639      	mov	r1, r7
 8002e7c:	f7fd fe16 	bl	8000aac <__aeabi_dcmpun>
 8002e80:	4681      	mov	r9, r0
 8002e82:	2800      	cmp	r0, #0
 8002e84:	d166      	bne.n	8002f54 <pow+0x11c>
 8002e86:	4630      	mov	r0, r6
 8002e88:	4639      	mov	r1, r7
 8002e8a:	2200      	movs	r2, #0
 8002e8c:	2300      	movs	r3, #0
 8002e8e:	f7fd fddb 	bl	8000a48 <__aeabi_dcmpeq>
 8002e92:	b320      	cbz	r0, 8002ede <pow+0xa6>
 8002e94:	2200      	movs	r2, #0
 8002e96:	2300      	movs	r3, #0
 8002e98:	4620      	mov	r0, r4
 8002e9a:	4629      	mov	r1, r5
 8002e9c:	f7fd fdd4 	bl	8000a48 <__aeabi_dcmpeq>
 8002ea0:	4683      	mov	fp, r0
 8002ea2:	2800      	cmp	r0, #0
 8002ea4:	d07d      	beq.n	8002fa2 <pow+0x16a>
 8002ea6:	ed9f 7ba6 	vldr	d7, [pc, #664]	; 8003140 <pow+0x308>
 8002eaa:	2201      	movs	r2, #1
 8002eac:	4baa      	ldr	r3, [pc, #680]	; (8003158 <pow+0x320>)
 8002eae:	f8cd 9020 	str.w	r9, [sp, #32]
 8002eb2:	9200      	str	r2, [sp, #0]
 8002eb4:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8002eb8:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002ebc:	ed8d 7b06 	vstr	d7, [sp, #24]
 8002ec0:	9301      	str	r3, [sp, #4]
 8002ec2:	f1b8 0f00 	cmp.w	r8, #0
 8002ec6:	d05e      	beq.n	8002f86 <pow+0x14e>
 8002ec8:	ed9f 8b9f 	vldr	d8, [pc, #636]	; 8003148 <pow+0x310>
 8002ecc:	eeb0 0a48 	vmov.f32	s0, s16
 8002ed0:	eef0 0a68 	vmov.f32	s1, s17
 8002ed4:	b00b      	add	sp, #44	; 0x2c
 8002ed6:	ecbd 8b02 	vpop	{d8}
 8002eda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ede:	eeb0 0a48 	vmov.f32	s0, s16
 8002ee2:	eef0 0a68 	vmov.f32	s1, s17
 8002ee6:	f002 fa75 	bl	80053d4 <finite>
 8002eea:	4680      	mov	r8, r0
 8002eec:	2800      	cmp	r0, #0
 8002eee:	f000 8082 	beq.w	8002ff6 <pow+0x1be>
 8002ef2:	f04f 0800 	mov.w	r8, #0
 8002ef6:	f04f 0900 	mov.w	r9, #0
 8002efa:	ec51 0b18 	vmov	r0, r1, d8
 8002efe:	4642      	mov	r2, r8
 8002f00:	464b      	mov	r3, r9
 8002f02:	f7fd fda1 	bl	8000a48 <__aeabi_dcmpeq>
 8002f06:	2800      	cmp	r0, #0
 8002f08:	d0e0      	beq.n	8002ecc <pow+0x94>
 8002f0a:	ec47 6b10 	vmov	d0, r6, r7
 8002f0e:	f002 fa61 	bl	80053d4 <finite>
 8002f12:	2800      	cmp	r0, #0
 8002f14:	d0da      	beq.n	8002ecc <pow+0x94>
 8002f16:	ec45 4b10 	vmov	d0, r4, r5
 8002f1a:	f002 fa5b 	bl	80053d4 <finite>
 8002f1e:	2800      	cmp	r0, #0
 8002f20:	d0d4      	beq.n	8002ecc <pow+0x94>
 8002f22:	f99a 3000 	ldrsb.w	r3, [sl]
 8002f26:	4a8c      	ldr	r2, [pc, #560]	; (8003158 <pow+0x320>)
 8002f28:	9201      	str	r2, [sp, #4]
 8002f2a:	2104      	movs	r1, #4
 8002f2c:	2200      	movs	r2, #0
 8002f2e:	2b02      	cmp	r3, #2
 8002f30:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8002f34:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002f38:	e9cd 8906 	strd	r8, r9, [sp, #24]
 8002f3c:	9100      	str	r1, [sp, #0]
 8002f3e:	9208      	str	r2, [sp, #32]
 8002f40:	d003      	beq.n	8002f4a <pow+0x112>
 8002f42:	4668      	mov	r0, sp
 8002f44:	f002 fad8 	bl	80054f8 <matherr>
 8002f48:	bb10      	cbnz	r0, 8002f90 <pow+0x158>
 8002f4a:	f002 fc05 	bl	8005758 <__errno>
 8002f4e:	2322      	movs	r3, #34	; 0x22
 8002f50:	6003      	str	r3, [r0, #0]
 8002f52:	e01d      	b.n	8002f90 <pow+0x158>
 8002f54:	2200      	movs	r2, #0
 8002f56:	2300      	movs	r3, #0
 8002f58:	4620      	mov	r0, r4
 8002f5a:	4629      	mov	r1, r5
 8002f5c:	f7fd fd74 	bl	8000a48 <__aeabi_dcmpeq>
 8002f60:	2800      	cmp	r0, #0
 8002f62:	d0b3      	beq.n	8002ecc <pow+0x94>
 8002f64:	ed9f 8b78 	vldr	d8, [pc, #480]	; 8003148 <pow+0x310>
 8002f68:	2201      	movs	r2, #1
 8002f6a:	4b7b      	ldr	r3, [pc, #492]	; (8003158 <pow+0x320>)
 8002f6c:	f8cd b020 	str.w	fp, [sp, #32]
 8002f70:	f1b8 0f02 	cmp.w	r8, #2
 8002f74:	9200      	str	r2, [sp, #0]
 8002f76:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8002f7a:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002f7e:	ed8d 8b06 	vstr	d8, [sp, #24]
 8002f82:	9301      	str	r3, [sp, #4]
 8002f84:	d0a2      	beq.n	8002ecc <pow+0x94>
 8002f86:	4668      	mov	r0, sp
 8002f88:	f002 fab6 	bl	80054f8 <matherr>
 8002f8c:	2800      	cmp	r0, #0
 8002f8e:	d078      	beq.n	8003082 <pow+0x24a>
 8002f90:	9b08      	ldr	r3, [sp, #32]
 8002f92:	b11b      	cbz	r3, 8002f9c <pow+0x164>
 8002f94:	f002 fbe0 	bl	8005758 <__errno>
 8002f98:	9b08      	ldr	r3, [sp, #32]
 8002f9a:	6003      	str	r3, [r0, #0]
 8002f9c:	ed9d 8b06 	vldr	d8, [sp, #24]
 8002fa0:	e794      	b.n	8002ecc <pow+0x94>
 8002fa2:	ec45 4b10 	vmov	d0, r4, r5
 8002fa6:	f002 fa15 	bl	80053d4 <finite>
 8002faa:	2800      	cmp	r0, #0
 8002fac:	d08e      	beq.n	8002ecc <pow+0x94>
 8002fae:	2200      	movs	r2, #0
 8002fb0:	2300      	movs	r3, #0
 8002fb2:	4620      	mov	r0, r4
 8002fb4:	4629      	mov	r1, r5
 8002fb6:	f7fd fd51 	bl	8000a5c <__aeabi_dcmplt>
 8002fba:	2800      	cmp	r0, #0
 8002fbc:	d086      	beq.n	8002ecc <pow+0x94>
 8002fbe:	4a66      	ldr	r2, [pc, #408]	; (8003158 <pow+0x320>)
 8002fc0:	f99a 3000 	ldrsb.w	r3, [sl]
 8002fc4:	f8cd b020 	str.w	fp, [sp, #32]
 8002fc8:	2101      	movs	r1, #1
 8002fca:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8002fce:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002fd2:	e9cd 1200 	strd	r1, r2, [sp]
 8002fd6:	2b00      	cmp	r3, #0
 8002fd8:	d058      	beq.n	800308c <pow+0x254>
 8002fda:	4960      	ldr	r1, [pc, #384]	; (800315c <pow+0x324>)
 8002fdc:	2000      	movs	r0, #0
 8002fde:	2b02      	cmp	r3, #2
 8002fe0:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8002fe4:	d156      	bne.n	8003094 <pow+0x25c>
 8002fe6:	f002 fbb7 	bl	8005758 <__errno>
 8002fea:	2321      	movs	r3, #33	; 0x21
 8002fec:	6003      	str	r3, [r0, #0]
 8002fee:	9b08      	ldr	r3, [sp, #32]
 8002ff0:	2b00      	cmp	r3, #0
 8002ff2:	d0d3      	beq.n	8002f9c <pow+0x164>
 8002ff4:	e7ce      	b.n	8002f94 <pow+0x15c>
 8002ff6:	ec47 6b10 	vmov	d0, r6, r7
 8002ffa:	f002 f9eb 	bl	80053d4 <finite>
 8002ffe:	2800      	cmp	r0, #0
 8003000:	f43f af77 	beq.w	8002ef2 <pow+0xba>
 8003004:	ec45 4b10 	vmov	d0, r4, r5
 8003008:	f002 f9e4 	bl	80053d4 <finite>
 800300c:	2800      	cmp	r0, #0
 800300e:	f43f af70 	beq.w	8002ef2 <pow+0xba>
 8003012:	ec53 2b18 	vmov	r2, r3, d8
 8003016:	ee18 0a10 	vmov	r0, s16
 800301a:	4619      	mov	r1, r3
 800301c:	f7fd fd46 	bl	8000aac <__aeabi_dcmpun>
 8003020:	f99a 9000 	ldrsb.w	r9, [sl]
 8003024:	2800      	cmp	r0, #0
 8003026:	d16f      	bne.n	8003108 <pow+0x2d0>
 8003028:	2303      	movs	r3, #3
 800302a:	f8df c12c 	ldr.w	ip, [pc, #300]	; 8003158 <pow+0x320>
 800302e:	9008      	str	r0, [sp, #32]
 8003030:	4629      	mov	r1, r5
 8003032:	4620      	mov	r0, r4
 8003034:	9300      	str	r3, [sp, #0]
 8003036:	2200      	movs	r2, #0
 8003038:	4b49      	ldr	r3, [pc, #292]	; (8003160 <pow+0x328>)
 800303a:	f8cd c004 	str.w	ip, [sp, #4]
 800303e:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003042:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003046:	f7fd fa97 	bl	8000578 <__aeabi_dmul>
 800304a:	4604      	mov	r4, r0
 800304c:	460d      	mov	r5, r1
 800304e:	f1b9 0f00 	cmp.w	r9, #0
 8003052:	d125      	bne.n	80030a0 <pow+0x268>
 8003054:	f8df 9114 	ldr.w	r9, [pc, #276]	; 800316c <pow+0x334>
 8003058:	f04f 4860 	mov.w	r8, #3758096384	; 0xe0000000
 800305c:	2200      	movs	r2, #0
 800305e:	2300      	movs	r3, #0
 8003060:	4630      	mov	r0, r6
 8003062:	4639      	mov	r1, r7
 8003064:	e9cd 8906 	strd	r8, r9, [sp, #24]
 8003068:	f7fd fcf8 	bl	8000a5c <__aeabi_dcmplt>
 800306c:	bb38      	cbnz	r0, 80030be <pow+0x286>
 800306e:	4668      	mov	r0, sp
 8003070:	f002 fa42 	bl	80054f8 <matherr>
 8003074:	2800      	cmp	r0, #0
 8003076:	d1ba      	bne.n	8002fee <pow+0x1b6>
 8003078:	f002 fb6e 	bl	8005758 <__errno>
 800307c:	2322      	movs	r3, #34	; 0x22
 800307e:	6003      	str	r3, [r0, #0]
 8003080:	e7b5      	b.n	8002fee <pow+0x1b6>
 8003082:	f002 fb69 	bl	8005758 <__errno>
 8003086:	2321      	movs	r3, #33	; 0x21
 8003088:	6003      	str	r3, [r0, #0]
 800308a:	e781      	b.n	8002f90 <pow+0x158>
 800308c:	ed9f 7b2c 	vldr	d7, [pc, #176]	; 8003140 <pow+0x308>
 8003090:	ed8d 7b06 	vstr	d7, [sp, #24]
 8003094:	4668      	mov	r0, sp
 8003096:	f002 fa2f 	bl	80054f8 <matherr>
 800309a:	2800      	cmp	r0, #0
 800309c:	d1a7      	bne.n	8002fee <pow+0x1b6>
 800309e:	e7a2      	b.n	8002fe6 <pow+0x1ae>
 80030a0:	ed9f 7b2b 	vldr	d7, [pc, #172]	; 8003150 <pow+0x318>
 80030a4:	2200      	movs	r2, #0
 80030a6:	2300      	movs	r3, #0
 80030a8:	4630      	mov	r0, r6
 80030aa:	4639      	mov	r1, r7
 80030ac:	ed8d 7b06 	vstr	d7, [sp, #24]
 80030b0:	f7fd fcd4 	bl	8000a5c <__aeabi_dcmplt>
 80030b4:	b9b0      	cbnz	r0, 80030e4 <pow+0x2ac>
 80030b6:	f1b9 0f02 	cmp.w	r9, #2
 80030ba:	d0dd      	beq.n	8003078 <pow+0x240>
 80030bc:	e7d7      	b.n	800306e <pow+0x236>
 80030be:	ec45 4b10 	vmov	d0, r4, r5
 80030c2:	f002 fa25 	bl	8005510 <rint>
 80030c6:	4622      	mov	r2, r4
 80030c8:	462b      	mov	r3, r5
 80030ca:	ec51 0b10 	vmov	r0, r1, d0
 80030ce:	f7fd fcbb 	bl	8000a48 <__aeabi_dcmpeq>
 80030d2:	b9b0      	cbnz	r0, 8003102 <pow+0x2ca>
 80030d4:	4b23      	ldr	r3, [pc, #140]	; (8003164 <pow+0x32c>)
 80030d6:	f99a 9000 	ldrsb.w	r9, [sl]
 80030da:	f04f 4260 	mov.w	r2, #3758096384	; 0xe0000000
 80030de:	e9cd 2306 	strd	r2, r3, [sp, #24]
 80030e2:	e7e8      	b.n	80030b6 <pow+0x27e>
 80030e4:	ec45 4b10 	vmov	d0, r4, r5
 80030e8:	f002 fa12 	bl	8005510 <rint>
 80030ec:	4622      	mov	r2, r4
 80030ee:	462b      	mov	r3, r5
 80030f0:	ec51 0b10 	vmov	r0, r1, d0
 80030f4:	f7fd fca8 	bl	8000a48 <__aeabi_dcmpeq>
 80030f8:	b918      	cbnz	r0, 8003102 <pow+0x2ca>
 80030fa:	4b18      	ldr	r3, [pc, #96]	; (800315c <pow+0x324>)
 80030fc:	2200      	movs	r2, #0
 80030fe:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8003102:	f99a 9000 	ldrsb.w	r9, [sl]
 8003106:	e7d6      	b.n	80030b6 <pow+0x27e>
 8003108:	2201      	movs	r2, #1
 800310a:	4b13      	ldr	r3, [pc, #76]	; (8003158 <pow+0x320>)
 800310c:	f8cd 8020 	str.w	r8, [sp, #32]
 8003110:	9200      	str	r2, [sp, #0]
 8003112:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003116:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800311a:	9301      	str	r3, [sp, #4]
 800311c:	f1b9 0f00 	cmp.w	r9, #0
 8003120:	d0b4      	beq.n	800308c <pow+0x254>
 8003122:	2200      	movs	r2, #0
 8003124:	2300      	movs	r3, #0
 8003126:	4610      	mov	r0, r2
 8003128:	4619      	mov	r1, r3
 800312a:	f7fd fb4f 	bl	80007cc <__aeabi_ddiv>
 800312e:	f1b9 0f02 	cmp.w	r9, #2
 8003132:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003136:	f43f af56 	beq.w	8002fe6 <pow+0x1ae>
 800313a:	e7ab      	b.n	8003094 <pow+0x25c>
 800313c:	f3af 8000 	nop.w
	...
 800314c:	3ff00000 	.word	0x3ff00000
 8003150:	00000000 	.word	0x00000000
 8003154:	7ff00000 	.word	0x7ff00000
 8003158:	0800a658 	.word	0x0800a658
 800315c:	fff00000 	.word	0xfff00000
 8003160:	3fe00000 	.word	0x3fe00000
 8003164:	c7efffff 	.word	0xc7efffff
 8003168:	20000018 	.word	0x20000018
 800316c:	47efffff 	.word	0x47efffff

08003170 <sqrt>:
 8003170:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8003174:	ed2d 8b02 	vpush	{d8}
 8003178:	b08b      	sub	sp, #44	; 0x2c
 800317a:	ec55 4b10 	vmov	r4, r5, d0
 800317e:	f001 fa45 	bl	800460c <__ieee754_sqrt>
 8003182:	4b27      	ldr	r3, [pc, #156]	; (8003220 <sqrt+0xb0>)
 8003184:	eeb0 8a40 	vmov.f32	s16, s0
 8003188:	eef0 8a60 	vmov.f32	s17, s1
 800318c:	f993 6000 	ldrsb.w	r6, [r3]
 8003190:	1c73      	adds	r3, r6, #1
 8003192:	d012      	beq.n	80031ba <sqrt+0x4a>
 8003194:	4622      	mov	r2, r4
 8003196:	462b      	mov	r3, r5
 8003198:	4620      	mov	r0, r4
 800319a:	4629      	mov	r1, r5
 800319c:	f7fd fc86 	bl	8000aac <__aeabi_dcmpun>
 80031a0:	4607      	mov	r7, r0
 80031a2:	b950      	cbnz	r0, 80031ba <sqrt+0x4a>
 80031a4:	f04f 0800 	mov.w	r8, #0
 80031a8:	f04f 0900 	mov.w	r9, #0
 80031ac:	4620      	mov	r0, r4
 80031ae:	4629      	mov	r1, r5
 80031b0:	4642      	mov	r2, r8
 80031b2:	464b      	mov	r3, r9
 80031b4:	f7fd fc52 	bl	8000a5c <__aeabi_dcmplt>
 80031b8:	b940      	cbnz	r0, 80031cc <sqrt+0x5c>
 80031ba:	eeb0 0a48 	vmov.f32	s0, s16
 80031be:	eef0 0a68 	vmov.f32	s1, s17
 80031c2:	b00b      	add	sp, #44	; 0x2c
 80031c4:	ecbd 8b02 	vpop	{d8}
 80031c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80031cc:	2201      	movs	r2, #1
 80031ce:	4b15      	ldr	r3, [pc, #84]	; (8003224 <sqrt+0xb4>)
 80031d0:	9708      	str	r7, [sp, #32]
 80031d2:	9200      	str	r2, [sp, #0]
 80031d4:	e9cd 4504 	strd	r4, r5, [sp, #16]
 80031d8:	e9cd 4502 	strd	r4, r5, [sp, #8]
 80031dc:	9301      	str	r3, [sp, #4]
 80031de:	b196      	cbz	r6, 8003206 <sqrt+0x96>
 80031e0:	4642      	mov	r2, r8
 80031e2:	464b      	mov	r3, r9
 80031e4:	4640      	mov	r0, r8
 80031e6:	4649      	mov	r1, r9
 80031e8:	f7fd faf0 	bl	80007cc <__aeabi_ddiv>
 80031ec:	2e02      	cmp	r6, #2
 80031ee:	e9cd 0106 	strd	r0, r1, [sp, #24]
 80031f2:	d10a      	bne.n	800320a <sqrt+0x9a>
 80031f4:	f002 fab0 	bl	8005758 <__errno>
 80031f8:	2321      	movs	r3, #33	; 0x21
 80031fa:	6003      	str	r3, [r0, #0]
 80031fc:	9b08      	ldr	r3, [sp, #32]
 80031fe:	b953      	cbnz	r3, 8003216 <sqrt+0xa6>
 8003200:	ed9d 8b06 	vldr	d8, [sp, #24]
 8003204:	e7d9      	b.n	80031ba <sqrt+0x4a>
 8003206:	e9cd 8906 	strd	r8, r9, [sp, #24]
 800320a:	4668      	mov	r0, sp
 800320c:	f002 f974 	bl	80054f8 <matherr>
 8003210:	2800      	cmp	r0, #0
 8003212:	d1f3      	bne.n	80031fc <sqrt+0x8c>
 8003214:	e7ee      	b.n	80031f4 <sqrt+0x84>
 8003216:	f002 fa9f 	bl	8005758 <__errno>
 800321a:	9b08      	ldr	r3, [sp, #32]
 800321c:	6003      	str	r3, [r0, #0]
 800321e:	e7ef      	b.n	8003200 <sqrt+0x90>
 8003220:	20000018 	.word	0x20000018
 8003224:	0800a65c 	.word	0x0800a65c

08003228 <__ieee754_acos>:
 8003228:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800322c:	ec55 4b10 	vmov	r4, r5, d0
 8003230:	49cd      	ldr	r1, [pc, #820]	; (8003568 <__ieee754_acos+0x340>)
 8003232:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 8003236:	428b      	cmp	r3, r1
 8003238:	dd0d      	ble.n	8003256 <__ieee754_acos+0x2e>
 800323a:	f103 4340 	add.w	r3, r3, #3221225472	; 0xc0000000
 800323e:	f503 1380 	add.w	r3, r3, #1048576	; 0x100000
 8003242:	4323      	orrs	r3, r4
 8003244:	f040 80bd 	bne.w	80033c2 <__ieee754_acos+0x19a>
 8003248:	2d00      	cmp	r5, #0
 800324a:	f340 814f 	ble.w	80034ec <__ieee754_acos+0x2c4>
 800324e:	ed9f 0baa 	vldr	d0, [pc, #680]	; 80034f8 <__ieee754_acos+0x2d0>
 8003252:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003256:	49c5      	ldr	r1, [pc, #788]	; (800356c <__ieee754_acos+0x344>)
 8003258:	428b      	cmp	r3, r1
 800325a:	dc07      	bgt.n	800326c <__ieee754_acos+0x44>
 800325c:	4ac4      	ldr	r2, [pc, #784]	; (8003570 <__ieee754_acos+0x348>)
 800325e:	4293      	cmp	r3, r2
 8003260:	f300 80be 	bgt.w	80033e0 <__ieee754_acos+0x1b8>
 8003264:	ed9f 0ba6 	vldr	d0, [pc, #664]	; 8003500 <__ieee754_acos+0x2d8>
 8003268:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800326c:	2d00      	cmp	r5, #0
 800326e:	f2c0 8185 	blt.w	800357c <__ieee754_acos+0x354>
 8003272:	ee10 2a10 	vmov	r2, s0
 8003276:	462b      	mov	r3, r5
 8003278:	2000      	movs	r0, #0
 800327a:	49be      	ldr	r1, [pc, #760]	; (8003574 <__ieee754_acos+0x34c>)
 800327c:	f7fc ffc4 	bl	8000208 <__aeabi_dsub>
 8003280:	2200      	movs	r2, #0
 8003282:	4bbd      	ldr	r3, [pc, #756]	; (8003578 <__ieee754_acos+0x350>)
 8003284:	f7fd f978 	bl	8000578 <__aeabi_dmul>
 8003288:	4604      	mov	r4, r0
 800328a:	460d      	mov	r5, r1
 800328c:	ec45 4b10 	vmov	d0, r4, r5
 8003290:	f001 f9bc 	bl	800460c <__ieee754_sqrt>
 8003294:	4620      	mov	r0, r4
 8003296:	4629      	mov	r1, r5
 8003298:	a39b      	add	r3, pc, #620	; (adr r3, 8003508 <__ieee754_acos+0x2e0>)
 800329a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800329e:	ec59 8b10 	vmov	r8, r9, d0
 80032a2:	f7fd f969 	bl	8000578 <__aeabi_dmul>
 80032a6:	a39a      	add	r3, pc, #616	; (adr r3, 8003510 <__ieee754_acos+0x2e8>)
 80032a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80032ac:	f7fc ffae 	bl	800020c <__adddf3>
 80032b0:	4622      	mov	r2, r4
 80032b2:	462b      	mov	r3, r5
 80032b4:	f7fd f960 	bl	8000578 <__aeabi_dmul>
 80032b8:	a397      	add	r3, pc, #604	; (adr r3, 8003518 <__ieee754_acos+0x2f0>)
 80032ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80032be:	f7fc ffa3 	bl	8000208 <__aeabi_dsub>
 80032c2:	4622      	mov	r2, r4
 80032c4:	462b      	mov	r3, r5
 80032c6:	f7fd f957 	bl	8000578 <__aeabi_dmul>
 80032ca:	a395      	add	r3, pc, #596	; (adr r3, 8003520 <__ieee754_acos+0x2f8>)
 80032cc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80032d0:	f7fc ff9c 	bl	800020c <__adddf3>
 80032d4:	4622      	mov	r2, r4
 80032d6:	462b      	mov	r3, r5
 80032d8:	f7fd f94e 	bl	8000578 <__aeabi_dmul>
 80032dc:	a392      	add	r3, pc, #584	; (adr r3, 8003528 <__ieee754_acos+0x300>)
 80032de:	e9d3 2300 	ldrd	r2, r3, [r3]
 80032e2:	f7fc ff91 	bl	8000208 <__aeabi_dsub>
 80032e6:	4622      	mov	r2, r4
 80032e8:	462b      	mov	r3, r5
 80032ea:	f7fd f945 	bl	8000578 <__aeabi_dmul>
 80032ee:	a390      	add	r3, pc, #576	; (adr r3, 8003530 <__ieee754_acos+0x308>)
 80032f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80032f4:	f7fc ff8a 	bl	800020c <__adddf3>
 80032f8:	4622      	mov	r2, r4
 80032fa:	462b      	mov	r3, r5
 80032fc:	f7fd f93c 	bl	8000578 <__aeabi_dmul>
 8003300:	a38d      	add	r3, pc, #564	; (adr r3, 8003538 <__ieee754_acos+0x310>)
 8003302:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003306:	4682      	mov	sl, r0
 8003308:	468b      	mov	fp, r1
 800330a:	4620      	mov	r0, r4
 800330c:	4629      	mov	r1, r5
 800330e:	f7fd f933 	bl	8000578 <__aeabi_dmul>
 8003312:	a38b      	add	r3, pc, #556	; (adr r3, 8003540 <__ieee754_acos+0x318>)
 8003314:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003318:	f7fc ff76 	bl	8000208 <__aeabi_dsub>
 800331c:	4622      	mov	r2, r4
 800331e:	462b      	mov	r3, r5
 8003320:	f7fd f92a 	bl	8000578 <__aeabi_dmul>
 8003324:	a388      	add	r3, pc, #544	; (adr r3, 8003548 <__ieee754_acos+0x320>)
 8003326:	e9d3 2300 	ldrd	r2, r3, [r3]
 800332a:	f7fc ff6f 	bl	800020c <__adddf3>
 800332e:	4622      	mov	r2, r4
 8003330:	462b      	mov	r3, r5
 8003332:	f7fd f921 	bl	8000578 <__aeabi_dmul>
 8003336:	a386      	add	r3, pc, #536	; (adr r3, 8003550 <__ieee754_acos+0x328>)
 8003338:	e9d3 2300 	ldrd	r2, r3, [r3]
 800333c:	f7fc ff64 	bl	8000208 <__aeabi_dsub>
 8003340:	4622      	mov	r2, r4
 8003342:	462b      	mov	r3, r5
 8003344:	f7fd f918 	bl	8000578 <__aeabi_dmul>
 8003348:	2200      	movs	r2, #0
 800334a:	4b8a      	ldr	r3, [pc, #552]	; (8003574 <__ieee754_acos+0x34c>)
 800334c:	f7fc ff5e 	bl	800020c <__adddf3>
 8003350:	4602      	mov	r2, r0
 8003352:	460b      	mov	r3, r1
 8003354:	4650      	mov	r0, sl
 8003356:	4659      	mov	r1, fp
 8003358:	f7fd fa38 	bl	80007cc <__aeabi_ddiv>
 800335c:	4642      	mov	r2, r8
 800335e:	464b      	mov	r3, r9
 8003360:	f7fd f90a 	bl	8000578 <__aeabi_dmul>
 8003364:	2600      	movs	r6, #0
 8003366:	4682      	mov	sl, r0
 8003368:	468b      	mov	fp, r1
 800336a:	4632      	mov	r2, r6
 800336c:	464b      	mov	r3, r9
 800336e:	4630      	mov	r0, r6
 8003370:	4649      	mov	r1, r9
 8003372:	f7fd f901 	bl	8000578 <__aeabi_dmul>
 8003376:	4602      	mov	r2, r0
 8003378:	460b      	mov	r3, r1
 800337a:	4620      	mov	r0, r4
 800337c:	4629      	mov	r1, r5
 800337e:	f7fc ff43 	bl	8000208 <__aeabi_dsub>
 8003382:	4632      	mov	r2, r6
 8003384:	4604      	mov	r4, r0
 8003386:	460d      	mov	r5, r1
 8003388:	464b      	mov	r3, r9
 800338a:	4640      	mov	r0, r8
 800338c:	4649      	mov	r1, r9
 800338e:	f7fc ff3d 	bl	800020c <__adddf3>
 8003392:	4602      	mov	r2, r0
 8003394:	460b      	mov	r3, r1
 8003396:	4620      	mov	r0, r4
 8003398:	4629      	mov	r1, r5
 800339a:	f7fd fa17 	bl	80007cc <__aeabi_ddiv>
 800339e:	4602      	mov	r2, r0
 80033a0:	460b      	mov	r3, r1
 80033a2:	4650      	mov	r0, sl
 80033a4:	4659      	mov	r1, fp
 80033a6:	f7fc ff31 	bl	800020c <__adddf3>
 80033aa:	4632      	mov	r2, r6
 80033ac:	464b      	mov	r3, r9
 80033ae:	f7fc ff2d 	bl	800020c <__adddf3>
 80033b2:	4602      	mov	r2, r0
 80033b4:	460b      	mov	r3, r1
 80033b6:	f7fc ff29 	bl	800020c <__adddf3>
 80033ba:	ec41 0b10 	vmov	d0, r0, r1
 80033be:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80033c2:	ee10 2a10 	vmov	r2, s0
 80033c6:	462b      	mov	r3, r5
 80033c8:	4620      	mov	r0, r4
 80033ca:	4629      	mov	r1, r5
 80033cc:	f7fc ff1c 	bl	8000208 <__aeabi_dsub>
 80033d0:	4602      	mov	r2, r0
 80033d2:	460b      	mov	r3, r1
 80033d4:	f7fd f9fa 	bl	80007cc <__aeabi_ddiv>
 80033d8:	ec41 0b10 	vmov	d0, r0, r1
 80033dc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80033e0:	ee10 2a10 	vmov	r2, s0
 80033e4:	ee10 0a10 	vmov	r0, s0
 80033e8:	462b      	mov	r3, r5
 80033ea:	4629      	mov	r1, r5
 80033ec:	f7fd f8c4 	bl	8000578 <__aeabi_dmul>
 80033f0:	a345      	add	r3, pc, #276	; (adr r3, 8003508 <__ieee754_acos+0x2e0>)
 80033f2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80033f6:	4606      	mov	r6, r0
 80033f8:	460f      	mov	r7, r1
 80033fa:	f7fd f8bd 	bl	8000578 <__aeabi_dmul>
 80033fe:	a344      	add	r3, pc, #272	; (adr r3, 8003510 <__ieee754_acos+0x2e8>)
 8003400:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003404:	f7fc ff02 	bl	800020c <__adddf3>
 8003408:	4632      	mov	r2, r6
 800340a:	463b      	mov	r3, r7
 800340c:	f7fd f8b4 	bl	8000578 <__aeabi_dmul>
 8003410:	a341      	add	r3, pc, #260	; (adr r3, 8003518 <__ieee754_acos+0x2f0>)
 8003412:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003416:	f7fc fef7 	bl	8000208 <__aeabi_dsub>
 800341a:	4632      	mov	r2, r6
 800341c:	463b      	mov	r3, r7
 800341e:	f7fd f8ab 	bl	8000578 <__aeabi_dmul>
 8003422:	a33f      	add	r3, pc, #252	; (adr r3, 8003520 <__ieee754_acos+0x2f8>)
 8003424:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003428:	f7fc fef0 	bl	800020c <__adddf3>
 800342c:	4632      	mov	r2, r6
 800342e:	463b      	mov	r3, r7
 8003430:	f7fd f8a2 	bl	8000578 <__aeabi_dmul>
 8003434:	a33c      	add	r3, pc, #240	; (adr r3, 8003528 <__ieee754_acos+0x300>)
 8003436:	e9d3 2300 	ldrd	r2, r3, [r3]
 800343a:	f7fc fee5 	bl	8000208 <__aeabi_dsub>
 800343e:	4632      	mov	r2, r6
 8003440:	463b      	mov	r3, r7
 8003442:	f7fd f899 	bl	8000578 <__aeabi_dmul>
 8003446:	a33a      	add	r3, pc, #232	; (adr r3, 8003530 <__ieee754_acos+0x308>)
 8003448:	e9d3 2300 	ldrd	r2, r3, [r3]
 800344c:	f7fc fede 	bl	800020c <__adddf3>
 8003450:	4632      	mov	r2, r6
 8003452:	463b      	mov	r3, r7
 8003454:	f7fd f890 	bl	8000578 <__aeabi_dmul>
 8003458:	a337      	add	r3, pc, #220	; (adr r3, 8003538 <__ieee754_acos+0x310>)
 800345a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800345e:	4680      	mov	r8, r0
 8003460:	4689      	mov	r9, r1
 8003462:	4630      	mov	r0, r6
 8003464:	4639      	mov	r1, r7
 8003466:	f7fd f887 	bl	8000578 <__aeabi_dmul>
 800346a:	a335      	add	r3, pc, #212	; (adr r3, 8003540 <__ieee754_acos+0x318>)
 800346c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003470:	f7fc feca 	bl	8000208 <__aeabi_dsub>
 8003474:	4632      	mov	r2, r6
 8003476:	463b      	mov	r3, r7
 8003478:	f7fd f87e 	bl	8000578 <__aeabi_dmul>
 800347c:	a332      	add	r3, pc, #200	; (adr r3, 8003548 <__ieee754_acos+0x320>)
 800347e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003482:	f7fc fec3 	bl	800020c <__adddf3>
 8003486:	4632      	mov	r2, r6
 8003488:	463b      	mov	r3, r7
 800348a:	f7fd f875 	bl	8000578 <__aeabi_dmul>
 800348e:	a330      	add	r3, pc, #192	; (adr r3, 8003550 <__ieee754_acos+0x328>)
 8003490:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003494:	f7fc feb8 	bl	8000208 <__aeabi_dsub>
 8003498:	4632      	mov	r2, r6
 800349a:	463b      	mov	r3, r7
 800349c:	f7fd f86c 	bl	8000578 <__aeabi_dmul>
 80034a0:	2200      	movs	r2, #0
 80034a2:	4b34      	ldr	r3, [pc, #208]	; (8003574 <__ieee754_acos+0x34c>)
 80034a4:	f7fc feb2 	bl	800020c <__adddf3>
 80034a8:	4602      	mov	r2, r0
 80034aa:	460b      	mov	r3, r1
 80034ac:	4640      	mov	r0, r8
 80034ae:	4649      	mov	r1, r9
 80034b0:	f7fd f98c 	bl	80007cc <__aeabi_ddiv>
 80034b4:	4622      	mov	r2, r4
 80034b6:	462b      	mov	r3, r5
 80034b8:	f7fd f85e 	bl	8000578 <__aeabi_dmul>
 80034bc:	4602      	mov	r2, r0
 80034be:	460b      	mov	r3, r1
 80034c0:	a125      	add	r1, pc, #148	; (adr r1, 8003558 <__ieee754_acos+0x330>)
 80034c2:	e9d1 0100 	ldrd	r0, r1, [r1]
 80034c6:	f7fc fe9f 	bl	8000208 <__aeabi_dsub>
 80034ca:	4602      	mov	r2, r0
 80034cc:	460b      	mov	r3, r1
 80034ce:	4620      	mov	r0, r4
 80034d0:	4629      	mov	r1, r5
 80034d2:	f7fc fe99 	bl	8000208 <__aeabi_dsub>
 80034d6:	4602      	mov	r2, r0
 80034d8:	460b      	mov	r3, r1
 80034da:	a109      	add	r1, pc, #36	; (adr r1, 8003500 <__ieee754_acos+0x2d8>)
 80034dc:	e9d1 0100 	ldrd	r0, r1, [r1]
 80034e0:	f7fc fe92 	bl	8000208 <__aeabi_dsub>
 80034e4:	ec41 0b10 	vmov	d0, r0, r1
 80034e8:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80034ec:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 8003560 <__ieee754_acos+0x338>
 80034f0:	e774      	b.n	80033dc <__ieee754_acos+0x1b4>
 80034f2:	bf00      	nop
 80034f4:	f3af 8000 	nop.w
	...
 8003500:	54442d18 	.word	0x54442d18
 8003504:	3ff921fb 	.word	0x3ff921fb
 8003508:	0dfdf709 	.word	0x0dfdf709
 800350c:	3f023de1 	.word	0x3f023de1
 8003510:	7501b288 	.word	0x7501b288
 8003514:	3f49efe0 	.word	0x3f49efe0
 8003518:	b5688f3b 	.word	0xb5688f3b
 800351c:	3fa48228 	.word	0x3fa48228
 8003520:	0e884455 	.word	0x0e884455
 8003524:	3fc9c155 	.word	0x3fc9c155
 8003528:	03eb6f7d 	.word	0x03eb6f7d
 800352c:	3fd4d612 	.word	0x3fd4d612
 8003530:	55555555 	.word	0x55555555
 8003534:	3fc55555 	.word	0x3fc55555
 8003538:	b12e9282 	.word	0xb12e9282
 800353c:	3fb3b8c5 	.word	0x3fb3b8c5
 8003540:	1b8d0159 	.word	0x1b8d0159
 8003544:	3fe6066c 	.word	0x3fe6066c
 8003548:	9c598ac8 	.word	0x9c598ac8
 800354c:	40002ae5 	.word	0x40002ae5
 8003550:	1c8a2d4b 	.word	0x1c8a2d4b
 8003554:	40033a27 	.word	0x40033a27
 8003558:	33145c07 	.word	0x33145c07
 800355c:	3c91a626 	.word	0x3c91a626
 8003560:	54442d18 	.word	0x54442d18
 8003564:	400921fb 	.word	0x400921fb
 8003568:	3fefffff 	.word	0x3fefffff
 800356c:	3fdfffff 	.word	0x3fdfffff
 8003570:	3c600000 	.word	0x3c600000
 8003574:	3ff00000 	.word	0x3ff00000
 8003578:	3fe00000 	.word	0x3fe00000
 800357c:	ee10 0a10 	vmov	r0, s0
 8003580:	4629      	mov	r1, r5
 8003582:	2200      	movs	r2, #0
 8003584:	4b5c      	ldr	r3, [pc, #368]	; (80036f8 <__ieee754_acos+0x4d0>)
 8003586:	f7fc fe41 	bl	800020c <__adddf3>
 800358a:	2200      	movs	r2, #0
 800358c:	4b5b      	ldr	r3, [pc, #364]	; (80036fc <__ieee754_acos+0x4d4>)
 800358e:	f7fc fff3 	bl	8000578 <__aeabi_dmul>
 8003592:	a341      	add	r3, pc, #260	; (adr r3, 8003698 <__ieee754_acos+0x470>)
 8003594:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003598:	4604      	mov	r4, r0
 800359a:	460d      	mov	r5, r1
 800359c:	f7fc ffec 	bl	8000578 <__aeabi_dmul>
 80035a0:	a33f      	add	r3, pc, #252	; (adr r3, 80036a0 <__ieee754_acos+0x478>)
 80035a2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035a6:	f7fc fe31 	bl	800020c <__adddf3>
 80035aa:	4622      	mov	r2, r4
 80035ac:	462b      	mov	r3, r5
 80035ae:	f7fc ffe3 	bl	8000578 <__aeabi_dmul>
 80035b2:	a33d      	add	r3, pc, #244	; (adr r3, 80036a8 <__ieee754_acos+0x480>)
 80035b4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035b8:	f7fc fe26 	bl	8000208 <__aeabi_dsub>
 80035bc:	4622      	mov	r2, r4
 80035be:	462b      	mov	r3, r5
 80035c0:	f7fc ffda 	bl	8000578 <__aeabi_dmul>
 80035c4:	a33a      	add	r3, pc, #232	; (adr r3, 80036b0 <__ieee754_acos+0x488>)
 80035c6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035ca:	f7fc fe1f 	bl	800020c <__adddf3>
 80035ce:	4622      	mov	r2, r4
 80035d0:	462b      	mov	r3, r5
 80035d2:	f7fc ffd1 	bl	8000578 <__aeabi_dmul>
 80035d6:	a338      	add	r3, pc, #224	; (adr r3, 80036b8 <__ieee754_acos+0x490>)
 80035d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035dc:	f7fc fe14 	bl	8000208 <__aeabi_dsub>
 80035e0:	4622      	mov	r2, r4
 80035e2:	462b      	mov	r3, r5
 80035e4:	f7fc ffc8 	bl	8000578 <__aeabi_dmul>
 80035e8:	a335      	add	r3, pc, #212	; (adr r3, 80036c0 <__ieee754_acos+0x498>)
 80035ea:	e9d3 2300 	ldrd	r2, r3, [r3]
 80035ee:	f7fc fe0d 	bl	800020c <__adddf3>
 80035f2:	4622      	mov	r2, r4
 80035f4:	462b      	mov	r3, r5
 80035f6:	f7fc ffbf 	bl	8000578 <__aeabi_dmul>
 80035fa:	ec45 4b10 	vmov	d0, r4, r5
 80035fe:	4680      	mov	r8, r0
 8003600:	4689      	mov	r9, r1
 8003602:	f001 f803 	bl	800460c <__ieee754_sqrt>
 8003606:	a330      	add	r3, pc, #192	; (adr r3, 80036c8 <__ieee754_acos+0x4a0>)
 8003608:	e9d3 2300 	ldrd	r2, r3, [r3]
 800360c:	4620      	mov	r0, r4
 800360e:	4629      	mov	r1, r5
 8003610:	ec57 6b10 	vmov	r6, r7, d0
 8003614:	f7fc ffb0 	bl	8000578 <__aeabi_dmul>
 8003618:	a32d      	add	r3, pc, #180	; (adr r3, 80036d0 <__ieee754_acos+0x4a8>)
 800361a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800361e:	f7fc fdf3 	bl	8000208 <__aeabi_dsub>
 8003622:	4622      	mov	r2, r4
 8003624:	462b      	mov	r3, r5
 8003626:	f7fc ffa7 	bl	8000578 <__aeabi_dmul>
 800362a:	a32b      	add	r3, pc, #172	; (adr r3, 80036d8 <__ieee754_acos+0x4b0>)
 800362c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003630:	f7fc fdec 	bl	800020c <__adddf3>
 8003634:	4622      	mov	r2, r4
 8003636:	462b      	mov	r3, r5
 8003638:	f7fc ff9e 	bl	8000578 <__aeabi_dmul>
 800363c:	a328      	add	r3, pc, #160	; (adr r3, 80036e0 <__ieee754_acos+0x4b8>)
 800363e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003642:	f7fc fde1 	bl	8000208 <__aeabi_dsub>
 8003646:	4622      	mov	r2, r4
 8003648:	462b      	mov	r3, r5
 800364a:	f7fc ff95 	bl	8000578 <__aeabi_dmul>
 800364e:	2200      	movs	r2, #0
 8003650:	4b29      	ldr	r3, [pc, #164]	; (80036f8 <__ieee754_acos+0x4d0>)
 8003652:	f7fc fddb 	bl	800020c <__adddf3>
 8003656:	4602      	mov	r2, r0
 8003658:	460b      	mov	r3, r1
 800365a:	4640      	mov	r0, r8
 800365c:	4649      	mov	r1, r9
 800365e:	f7fd f8b5 	bl	80007cc <__aeabi_ddiv>
 8003662:	4632      	mov	r2, r6
 8003664:	463b      	mov	r3, r7
 8003666:	f7fc ff87 	bl	8000578 <__aeabi_dmul>
 800366a:	a31f      	add	r3, pc, #124	; (adr r3, 80036e8 <__ieee754_acos+0x4c0>)
 800366c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003670:	f7fc fdca 	bl	8000208 <__aeabi_dsub>
 8003674:	4632      	mov	r2, r6
 8003676:	463b      	mov	r3, r7
 8003678:	f7fc fdc8 	bl	800020c <__adddf3>
 800367c:	4602      	mov	r2, r0
 800367e:	460b      	mov	r3, r1
 8003680:	f7fc fdc4 	bl	800020c <__adddf3>
 8003684:	4602      	mov	r2, r0
 8003686:	460b      	mov	r3, r1
 8003688:	a119      	add	r1, pc, #100	; (adr r1, 80036f0 <__ieee754_acos+0x4c8>)
 800368a:	e9d1 0100 	ldrd	r0, r1, [r1]
 800368e:	f7fc fdbb 	bl	8000208 <__aeabi_dsub>
 8003692:	ec41 0b10 	vmov	d0, r0, r1
 8003696:	e6a1      	b.n	80033dc <__ieee754_acos+0x1b4>
 8003698:	0dfdf709 	.word	0x0dfdf709
 800369c:	3f023de1 	.word	0x3f023de1
 80036a0:	7501b288 	.word	0x7501b288
 80036a4:	3f49efe0 	.word	0x3f49efe0
 80036a8:	b5688f3b 	.word	0xb5688f3b
 80036ac:	3fa48228 	.word	0x3fa48228
 80036b0:	0e884455 	.word	0x0e884455
 80036b4:	3fc9c155 	.word	0x3fc9c155
 80036b8:	03eb6f7d 	.word	0x03eb6f7d
 80036bc:	3fd4d612 	.word	0x3fd4d612
 80036c0:	55555555 	.word	0x55555555
 80036c4:	3fc55555 	.word	0x3fc55555
 80036c8:	b12e9282 	.word	0xb12e9282
 80036cc:	3fb3b8c5 	.word	0x3fb3b8c5
 80036d0:	1b8d0159 	.word	0x1b8d0159
 80036d4:	3fe6066c 	.word	0x3fe6066c
 80036d8:	9c598ac8 	.word	0x9c598ac8
 80036dc:	40002ae5 	.word	0x40002ae5
 80036e0:	1c8a2d4b 	.word	0x1c8a2d4b
 80036e4:	40033a27 	.word	0x40033a27
 80036e8:	33145c07 	.word	0x33145c07
 80036ec:	3c91a626 	.word	0x3c91a626
 80036f0:	54442d18 	.word	0x54442d18
 80036f4:	400921fb 	.word	0x400921fb
 80036f8:	3ff00000 	.word	0x3ff00000
 80036fc:	3fe00000 	.word	0x3fe00000

08003700 <__ieee754_pow>:
 8003700:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003704:	ec51 0b11 	vmov	r0, r1, d1
 8003708:	f021 4500 	bic.w	r5, r1, #2147483648	; 0x80000000
 800370c:	ea55 0300 	orrs.w	r3, r5, r0
 8003710:	b093      	sub	sp, #76	; 0x4c
 8003712:	d010      	beq.n	8003736 <__ieee754_pow+0x36>
 8003714:	ec59 8b10 	vmov	r8, r9, d0
 8003718:	4b6d      	ldr	r3, [pc, #436]	; (80038d0 <__ieee754_pow+0x1d0>)
 800371a:	f029 4400 	bic.w	r4, r9, #2147483648	; 0x80000000
 800371e:	429c      	cmp	r4, r3
 8003720:	464e      	mov	r6, r9
 8003722:	ee10 aa10 	vmov	sl, s0
 8003726:	dd0d      	ble.n	8003744 <__ieee754_pow+0x44>
 8003728:	f104 4440 	add.w	r4, r4, #3221225472	; 0xc0000000
 800372c:	f504 1480 	add.w	r4, r4, #1048576	; 0x100000
 8003730:	ea54 030a 	orrs.w	r3, r4, sl
 8003734:	d156      	bne.n	80037e4 <__ieee754_pow+0xe4>
 8003736:	4967      	ldr	r1, [pc, #412]	; (80038d4 <__ieee754_pow+0x1d4>)
 8003738:	2000      	movs	r0, #0
 800373a:	ec41 0b10 	vmov	d0, r0, r1
 800373e:	b013      	add	sp, #76	; 0x4c
 8003740:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003744:	460f      	mov	r7, r1
 8003746:	ee11 ca10 	vmov	ip, s2
 800374a:	d048      	beq.n	80037de <__ieee754_pow+0xde>
 800374c:	429d      	cmp	r5, r3
 800374e:	dceb      	bgt.n	8003728 <__ieee754_pow+0x28>
 8003750:	4b5f      	ldr	r3, [pc, #380]	; (80038d0 <__ieee754_pow+0x1d0>)
 8003752:	429d      	cmp	r5, r3
 8003754:	d05f      	beq.n	8003816 <__ieee754_pow+0x116>
 8003756:	2e00      	cmp	r6, #0
 8003758:	e9cd 0100 	strd	r0, r1, [sp]
 800375c:	db5f      	blt.n	800381e <__ieee754_pow+0x11e>
 800375e:	f04f 0b00 	mov.w	fp, #0
 8003762:	f1bc 0f00 	cmp.w	ip, #0
 8003766:	d10e      	bne.n	8003786 <__ieee754_pow+0x86>
 8003768:	4b59      	ldr	r3, [pc, #356]	; (80038d0 <__ieee754_pow+0x1d0>)
 800376a:	429d      	cmp	r5, r3
 800376c:	d043      	beq.n	80037f6 <__ieee754_pow+0xf6>
 800376e:	4b59      	ldr	r3, [pc, #356]	; (80038d4 <__ieee754_pow+0x1d4>)
 8003770:	429d      	cmp	r5, r3
 8003772:	f000 808c 	beq.w	800388e <__ieee754_pow+0x18e>
 8003776:	f1b7 4f80 	cmp.w	r7, #1073741824	; 0x40000000
 800377a:	f000 809e 	beq.w	80038ba <__ieee754_pow+0x1ba>
 800377e:	4b56      	ldr	r3, [pc, #344]	; (80038d8 <__ieee754_pow+0x1d8>)
 8003780:	429f      	cmp	r7, r3
 8003782:	f000 83b8 	beq.w	8003ef6 <__ieee754_pow+0x7f6>
 8003786:	ec49 8b10 	vmov	d0, r8, r9
 800378a:	f7ff faed 	bl	8002d68 <fabs>
 800378e:	ec51 0b10 	vmov	r0, r1, d0
 8003792:	f1ba 0f00 	cmp.w	sl, #0
 8003796:	d106      	bne.n	80037a6 <__ieee754_pow+0xa6>
 8003798:	2c00      	cmp	r4, #0
 800379a:	d05a      	beq.n	8003852 <__ieee754_pow+0x152>
 800379c:	4b4d      	ldr	r3, [pc, #308]	; (80038d4 <__ieee754_pow+0x1d4>)
 800379e:	f026 4240 	bic.w	r2, r6, #3221225472	; 0xc0000000
 80037a2:	429a      	cmp	r2, r3
 80037a4:	d055      	beq.n	8003852 <__ieee754_pow+0x152>
 80037a6:	0ff6      	lsrs	r6, r6, #31
 80037a8:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
 80037ac:	ea5b 030a 	orrs.w	r3, fp, sl
 80037b0:	d073      	beq.n	800389a <__ieee754_pow+0x19a>
 80037b2:	4b4a      	ldr	r3, [pc, #296]	; (80038dc <__ieee754_pow+0x1dc>)
 80037b4:	429d      	cmp	r5, r3
 80037b6:	f340 8099 	ble.w	80038ec <__ieee754_pow+0x1ec>
 80037ba:	f103 7304 	add.w	r3, r3, #34603008	; 0x2100000
 80037be:	429d      	cmp	r5, r3
 80037c0:	f340 8438 	ble.w	8004034 <__ieee754_pow+0x934>
 80037c4:	4b46      	ldr	r3, [pc, #280]	; (80038e0 <__ieee754_pow+0x1e0>)
 80037c6:	429c      	cmp	r4, r3
 80037c8:	dd72      	ble.n	80038b0 <__ieee754_pow+0x1b0>
 80037ca:	2f00      	cmp	r7, #0
 80037cc:	dd72      	ble.n	80038b4 <__ieee754_pow+0x1b4>
 80037ce:	a33e      	add	r3, pc, #248	; (adr r3, 80038c8 <__ieee754_pow+0x1c8>)
 80037d0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80037d4:	4610      	mov	r0, r2
 80037d6:	4619      	mov	r1, r3
 80037d8:	f7fc fece 	bl	8000578 <__aeabi_dmul>
 80037dc:	e7ad      	b.n	800373a <__ieee754_pow+0x3a>
 80037de:	f1b8 0f00 	cmp.w	r8, #0
 80037e2:	d005      	beq.n	80037f0 <__ieee754_pow+0xf0>
 80037e4:	483f      	ldr	r0, [pc, #252]	; (80038e4 <__ieee754_pow+0x1e4>)
 80037e6:	b013      	add	sp, #76	; 0x4c
 80037e8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80037ec:	f001 be88 	b.w	8005500 <nan>
 80037f0:	42a5      	cmp	r5, r4
 80037f2:	dcf7      	bgt.n	80037e4 <__ieee754_pow+0xe4>
 80037f4:	e7ac      	b.n	8003750 <__ieee754_pow+0x50>
 80037f6:	f104 4340 	add.w	r3, r4, #3221225472	; 0xc0000000
 80037fa:	f503 1380 	add.w	r3, r3, #1048576	; 0x100000
 80037fe:	ea53 030a 	orrs.w	r3, r3, sl
 8003802:	d098      	beq.n	8003736 <__ieee754_pow+0x36>
 8003804:	4b36      	ldr	r3, [pc, #216]	; (80038e0 <__ieee754_pow+0x1e0>)
 8003806:	429c      	cmp	r4, r3
 8003808:	f340 837f 	ble.w	8003f0a <__ieee754_pow+0x80a>
 800380c:	2f00      	cmp	r7, #0
 800380e:	db51      	blt.n	80038b4 <__ieee754_pow+0x1b4>
 8003810:	e9dd 0100 	ldrd	r0, r1, [sp]
 8003814:	e791      	b.n	800373a <__ieee754_pow+0x3a>
 8003816:	f1bc 0f00 	cmp.w	ip, #0
 800381a:	d09c      	beq.n	8003756 <__ieee754_pow+0x56>
 800381c:	e784      	b.n	8003728 <__ieee754_pow+0x28>
 800381e:	4b32      	ldr	r3, [pc, #200]	; (80038e8 <__ieee754_pow+0x1e8>)
 8003820:	429d      	cmp	r5, r3
 8003822:	dc31      	bgt.n	8003888 <__ieee754_pow+0x188>
 8003824:	f1a3 7354 	sub.w	r3, r3, #55574528	; 0x3500000
 8003828:	429d      	cmp	r5, r3
 800382a:	dd98      	ble.n	800375e <__ieee754_pow+0x5e>
 800382c:	152b      	asrs	r3, r5, #20
 800382e:	f2a3 33ff 	subw	r3, r3, #1023	; 0x3ff
 8003832:	2b14      	cmp	r3, #20
 8003834:	f340 83a1 	ble.w	8003f7a <__ieee754_pow+0x87a>
 8003838:	f1c3 0334 	rsb	r3, r3, #52	; 0x34
 800383c:	fa2c f203 	lsr.w	r2, ip, r3
 8003840:	fa02 f303 	lsl.w	r3, r2, r3
 8003844:	4563      	cmp	r3, ip
 8003846:	d18a      	bne.n	800375e <__ieee754_pow+0x5e>
 8003848:	f002 0201 	and.w	r2, r2, #1
 800384c:	f1c2 0b02 	rsb	fp, r2, #2
 8003850:	e787      	b.n	8003762 <__ieee754_pow+0x62>
 8003852:	2f00      	cmp	r7, #0
 8003854:	da05      	bge.n	8003862 <__ieee754_pow+0x162>
 8003856:	4602      	mov	r2, r0
 8003858:	460b      	mov	r3, r1
 800385a:	2000      	movs	r0, #0
 800385c:	491d      	ldr	r1, [pc, #116]	; (80038d4 <__ieee754_pow+0x1d4>)
 800385e:	f7fc ffb5 	bl	80007cc <__aeabi_ddiv>
 8003862:	2e00      	cmp	r6, #0
 8003864:	f6bf af69 	bge.w	800373a <__ieee754_pow+0x3a>
 8003868:	f104 4440 	add.w	r4, r4, #3221225472	; 0xc0000000
 800386c:	f504 1480 	add.w	r4, r4, #1048576	; 0x100000
 8003870:	ea54 030b 	orrs.w	r3, r4, fp
 8003874:	f000 843a 	beq.w	80040ec <__ieee754_pow+0x9ec>
 8003878:	f1bb 0f01 	cmp.w	fp, #1
 800387c:	f47f af5d 	bne.w	800373a <__ieee754_pow+0x3a>
 8003880:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8003884:	4619      	mov	r1, r3
 8003886:	e758      	b.n	800373a <__ieee754_pow+0x3a>
 8003888:	f04f 0b02 	mov.w	fp, #2
 800388c:	e769      	b.n	8003762 <__ieee754_pow+0x62>
 800388e:	2f00      	cmp	r7, #0
 8003890:	f2c0 8344 	blt.w	8003f1c <__ieee754_pow+0x81c>
 8003894:	4640      	mov	r0, r8
 8003896:	4649      	mov	r1, r9
 8003898:	e74f      	b.n	800373a <__ieee754_pow+0x3a>
 800389a:	4642      	mov	r2, r8
 800389c:	464b      	mov	r3, r9
 800389e:	4610      	mov	r0, r2
 80038a0:	4619      	mov	r1, r3
 80038a2:	f7fc fcb1 	bl	8000208 <__aeabi_dsub>
 80038a6:	4602      	mov	r2, r0
 80038a8:	460b      	mov	r3, r1
 80038aa:	f7fc ff8f 	bl	80007cc <__aeabi_ddiv>
 80038ae:	e744      	b.n	800373a <__ieee754_pow+0x3a>
 80038b0:	2f00      	cmp	r7, #0
 80038b2:	db8c      	blt.n	80037ce <__ieee754_pow+0xce>
 80038b4:	2000      	movs	r0, #0
 80038b6:	2100      	movs	r1, #0
 80038b8:	e73f      	b.n	800373a <__ieee754_pow+0x3a>
 80038ba:	4642      	mov	r2, r8
 80038bc:	464b      	mov	r3, r9
 80038be:	4640      	mov	r0, r8
 80038c0:	4649      	mov	r1, r9
 80038c2:	f7fc fe59 	bl	8000578 <__aeabi_dmul>
 80038c6:	e738      	b.n	800373a <__ieee754_pow+0x3a>
 80038c8:	8800759c 	.word	0x8800759c
 80038cc:	7e37e43c 	.word	0x7e37e43c
 80038d0:	7ff00000 	.word	0x7ff00000
 80038d4:	3ff00000 	.word	0x3ff00000
 80038d8:	3fe00000 	.word	0x3fe00000
 80038dc:	41e00000 	.word	0x41e00000
 80038e0:	3fefffff 	.word	0x3fefffff
 80038e4:	0800a88c 	.word	0x0800a88c
 80038e8:	433fffff 	.word	0x433fffff
 80038ec:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 80038f0:	f280 8360 	bge.w	8003fb4 <__ieee754_pow+0x8b4>
 80038f4:	2200      	movs	r2, #0
 80038f6:	4bd0      	ldr	r3, [pc, #832]	; (8003c38 <__ieee754_pow+0x538>)
 80038f8:	f7fc fe3e 	bl	8000578 <__aeabi_dmul>
 80038fc:	f06f 0634 	mvn.w	r6, #52	; 0x34
 8003900:	460c      	mov	r4, r1
 8003902:	1523      	asrs	r3, r4, #20
 8003904:	4acd      	ldr	r2, [pc, #820]	; (8003c3c <__ieee754_pow+0x53c>)
 8003906:	f3c4 0413 	ubfx	r4, r4, #0, #20
 800390a:	f2a3 33ff 	subw	r3, r3, #1023	; 0x3ff
 800390e:	f044 557f 	orr.w	r5, r4, #1069547520	; 0x3fc00000
 8003912:	199e      	adds	r6, r3, r6
 8003914:	4294      	cmp	r4, r2
 8003916:	960d      	str	r6, [sp, #52]	; 0x34
 8003918:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 800391c:	f340 833d 	ble.w	8003f9a <__ieee754_pow+0x89a>
 8003920:	4bc7      	ldr	r3, [pc, #796]	; (8003c40 <__ieee754_pow+0x540>)
 8003922:	429c      	cmp	r4, r3
 8003924:	f340 8401 	ble.w	800412a <__ieee754_pow+0xa2a>
 8003928:	ed9f 7bad 	vldr	d7, [pc, #692]	; 8003be0 <__ieee754_pow+0x4e0>
 800392c:	ed8d 7b08 	vstr	d7, [sp, #32]
 8003930:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8003934:	ed9f 7bac 	vldr	d7, [pc, #688]	; 8003be8 <__ieee754_pow+0x4e8>
 8003938:	ed8d 7b06 	vstr	d7, [sp, #24]
 800393c:	3601      	adds	r6, #1
 800393e:	960d      	str	r6, [sp, #52]	; 0x34
 8003940:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8003944:	f04f 0800 	mov.w	r8, #0
 8003948:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 800394c:	4629      	mov	r1, r5
 800394e:	4606      	mov	r6, r0
 8003950:	f7fc fc5a 	bl	8000208 <__aeabi_dsub>
 8003954:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003958:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 800395c:	4630      	mov	r0, r6
 800395e:	4629      	mov	r1, r5
 8003960:	f7fc fc54 	bl	800020c <__adddf3>
 8003964:	4602      	mov	r2, r0
 8003966:	460b      	mov	r3, r1
 8003968:	2000      	movs	r0, #0
 800396a:	49b6      	ldr	r1, [pc, #728]	; (8003c44 <__ieee754_pow+0x544>)
 800396c:	f7fc ff2e 	bl	80007cc <__aeabi_ddiv>
 8003970:	4603      	mov	r3, r0
 8003972:	460c      	mov	r4, r1
 8003974:	e9cd 340e 	strd	r3, r4, [sp, #56]	; 0x38
 8003978:	4602      	mov	r2, r0
 800397a:	460b      	mov	r3, r1
 800397c:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8003980:	f7fc fdfa 	bl	8000578 <__aeabi_dmul>
 8003984:	106b      	asrs	r3, r5, #1
 8003986:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 800398a:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 800398e:	460a      	mov	r2, r1
 8003990:	462f      	mov	r7, r5
 8003992:	4601      	mov	r1, r0
 8003994:	eb03 0508 	add.w	r5, r3, r8
 8003998:	2300      	movs	r3, #0
 800399a:	e9cd 1202 	strd	r1, r2, [sp, #8]
 800399e:	9302      	str	r3, [sp, #8]
 80039a0:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
 80039a4:	2400      	movs	r4, #0
 80039a6:	e9cd 1204 	strd	r1, r2, [sp, #16]
 80039aa:	462b      	mov	r3, r5
 80039ac:	4622      	mov	r2, r4
 80039ae:	4640      	mov	r0, r8
 80039b0:	4649      	mov	r1, r9
 80039b2:	f7fc fde1 	bl	8000578 <__aeabi_dmul>
 80039b6:	4602      	mov	r2, r0
 80039b8:	460b      	mov	r3, r1
 80039ba:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 80039be:	f7fc fc23 	bl	8000208 <__aeabi_dsub>
 80039c2:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 80039c6:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 80039ca:	4620      	mov	r0, r4
 80039cc:	4629      	mov	r1, r5
 80039ce:	f7fc fc1b 	bl	8000208 <__aeabi_dsub>
 80039d2:	4602      	mov	r2, r0
 80039d4:	460b      	mov	r3, r1
 80039d6:	4630      	mov	r0, r6
 80039d8:	4639      	mov	r1, r7
 80039da:	f7fc fc15 	bl	8000208 <__aeabi_dsub>
 80039de:	4642      	mov	r2, r8
 80039e0:	464b      	mov	r3, r9
 80039e2:	f7fc fdc9 	bl	8000578 <__aeabi_dmul>
 80039e6:	4602      	mov	r2, r0
 80039e8:	460b      	mov	r3, r1
 80039ea:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 80039ee:	f7fc fc0b 	bl	8000208 <__aeabi_dsub>
 80039f2:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 80039f6:	f7fc fdbf 	bl	8000578 <__aeabi_dmul>
 80039fa:	e9dd 4504 	ldrd	r4, r5, [sp, #16]
 80039fe:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003a02:	4622      	mov	r2, r4
 8003a04:	462b      	mov	r3, r5
 8003a06:	4620      	mov	r0, r4
 8003a08:	4629      	mov	r1, r5
 8003a0a:	f7fc fdb5 	bl	8000578 <__aeabi_dmul>
 8003a0e:	a378      	add	r3, pc, #480	; (adr r3, 8003bf0 <__ieee754_pow+0x4f0>)
 8003a10:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a14:	4604      	mov	r4, r0
 8003a16:	460d      	mov	r5, r1
 8003a18:	f7fc fdae 	bl	8000578 <__aeabi_dmul>
 8003a1c:	a376      	add	r3, pc, #472	; (adr r3, 8003bf8 <__ieee754_pow+0x4f8>)
 8003a1e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a22:	f7fc fbf3 	bl	800020c <__adddf3>
 8003a26:	4622      	mov	r2, r4
 8003a28:	462b      	mov	r3, r5
 8003a2a:	f7fc fda5 	bl	8000578 <__aeabi_dmul>
 8003a2e:	a374      	add	r3, pc, #464	; (adr r3, 8003c00 <__ieee754_pow+0x500>)
 8003a30:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a34:	f7fc fbea 	bl	800020c <__adddf3>
 8003a38:	4622      	mov	r2, r4
 8003a3a:	462b      	mov	r3, r5
 8003a3c:	f7fc fd9c 	bl	8000578 <__aeabi_dmul>
 8003a40:	a371      	add	r3, pc, #452	; (adr r3, 8003c08 <__ieee754_pow+0x508>)
 8003a42:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a46:	f7fc fbe1 	bl	800020c <__adddf3>
 8003a4a:	4622      	mov	r2, r4
 8003a4c:	462b      	mov	r3, r5
 8003a4e:	f7fc fd93 	bl	8000578 <__aeabi_dmul>
 8003a52:	a36f      	add	r3, pc, #444	; (adr r3, 8003c10 <__ieee754_pow+0x510>)
 8003a54:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a58:	f7fc fbd8 	bl	800020c <__adddf3>
 8003a5c:	4622      	mov	r2, r4
 8003a5e:	462b      	mov	r3, r5
 8003a60:	f7fc fd8a 	bl	8000578 <__aeabi_dmul>
 8003a64:	a36c      	add	r3, pc, #432	; (adr r3, 8003c18 <__ieee754_pow+0x518>)
 8003a66:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a6a:	f7fc fbcf 	bl	800020c <__adddf3>
 8003a6e:	4622      	mov	r2, r4
 8003a70:	4606      	mov	r6, r0
 8003a72:	460f      	mov	r7, r1
 8003a74:	462b      	mov	r3, r5
 8003a76:	4620      	mov	r0, r4
 8003a78:	4629      	mov	r1, r5
 8003a7a:	f7fc fd7d 	bl	8000578 <__aeabi_dmul>
 8003a7e:	4602      	mov	r2, r0
 8003a80:	460b      	mov	r3, r1
 8003a82:	4630      	mov	r0, r6
 8003a84:	4639      	mov	r1, r7
 8003a86:	f7fc fd77 	bl	8000578 <__aeabi_dmul>
 8003a8a:	4642      	mov	r2, r8
 8003a8c:	4604      	mov	r4, r0
 8003a8e:	460d      	mov	r5, r1
 8003a90:	464b      	mov	r3, r9
 8003a92:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003a96:	f7fc fbb9 	bl	800020c <__adddf3>
 8003a9a:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8003a9e:	f7fc fd6b 	bl	8000578 <__aeabi_dmul>
 8003aa2:	4622      	mov	r2, r4
 8003aa4:	462b      	mov	r3, r5
 8003aa6:	f7fc fbb1 	bl	800020c <__adddf3>
 8003aaa:	4642      	mov	r2, r8
 8003aac:	4606      	mov	r6, r0
 8003aae:	460f      	mov	r7, r1
 8003ab0:	464b      	mov	r3, r9
 8003ab2:	4640      	mov	r0, r8
 8003ab4:	4649      	mov	r1, r9
 8003ab6:	f7fc fd5f 	bl	8000578 <__aeabi_dmul>
 8003aba:	2200      	movs	r2, #0
 8003abc:	4b62      	ldr	r3, [pc, #392]	; (8003c48 <__ieee754_pow+0x548>)
 8003abe:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8003ac2:	f7fc fba3 	bl	800020c <__adddf3>
 8003ac6:	4632      	mov	r2, r6
 8003ac8:	463b      	mov	r3, r7
 8003aca:	f7fc fb9f 	bl	800020c <__adddf3>
 8003ace:	9802      	ldr	r0, [sp, #8]
 8003ad0:	460d      	mov	r5, r1
 8003ad2:	4604      	mov	r4, r0
 8003ad4:	4622      	mov	r2, r4
 8003ad6:	462b      	mov	r3, r5
 8003ad8:	4640      	mov	r0, r8
 8003ada:	4649      	mov	r1, r9
 8003adc:	f7fc fd4c 	bl	8000578 <__aeabi_dmul>
 8003ae0:	2200      	movs	r2, #0
 8003ae2:	4680      	mov	r8, r0
 8003ae4:	4689      	mov	r9, r1
 8003ae6:	4b58      	ldr	r3, [pc, #352]	; (8003c48 <__ieee754_pow+0x548>)
 8003ae8:	4620      	mov	r0, r4
 8003aea:	4629      	mov	r1, r5
 8003aec:	f7fc fb8c 	bl	8000208 <__aeabi_dsub>
 8003af0:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8003af4:	f7fc fb88 	bl	8000208 <__aeabi_dsub>
 8003af8:	4602      	mov	r2, r0
 8003afa:	460b      	mov	r3, r1
 8003afc:	4630      	mov	r0, r6
 8003afe:	4639      	mov	r1, r7
 8003b00:	f7fc fb82 	bl	8000208 <__aeabi_dsub>
 8003b04:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003b08:	f7fc fd36 	bl	8000578 <__aeabi_dmul>
 8003b0c:	4622      	mov	r2, r4
 8003b0e:	4606      	mov	r6, r0
 8003b10:	460f      	mov	r7, r1
 8003b12:	462b      	mov	r3, r5
 8003b14:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003b18:	f7fc fd2e 	bl	8000578 <__aeabi_dmul>
 8003b1c:	4602      	mov	r2, r0
 8003b1e:	460b      	mov	r3, r1
 8003b20:	4630      	mov	r0, r6
 8003b22:	4639      	mov	r1, r7
 8003b24:	f7fc fb72 	bl	800020c <__adddf3>
 8003b28:	4606      	mov	r6, r0
 8003b2a:	460f      	mov	r7, r1
 8003b2c:	4602      	mov	r2, r0
 8003b2e:	460b      	mov	r3, r1
 8003b30:	4640      	mov	r0, r8
 8003b32:	4649      	mov	r1, r9
 8003b34:	f7fc fb6a 	bl	800020c <__adddf3>
 8003b38:	9802      	ldr	r0, [sp, #8]
 8003b3a:	a339      	add	r3, pc, #228	; (adr r3, 8003c20 <__ieee754_pow+0x520>)
 8003b3c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b40:	4604      	mov	r4, r0
 8003b42:	460d      	mov	r5, r1
 8003b44:	f7fc fd18 	bl	8000578 <__aeabi_dmul>
 8003b48:	4642      	mov	r2, r8
 8003b4a:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8003b4e:	464b      	mov	r3, r9
 8003b50:	4620      	mov	r0, r4
 8003b52:	4629      	mov	r1, r5
 8003b54:	f7fc fb58 	bl	8000208 <__aeabi_dsub>
 8003b58:	4602      	mov	r2, r0
 8003b5a:	460b      	mov	r3, r1
 8003b5c:	4630      	mov	r0, r6
 8003b5e:	4639      	mov	r1, r7
 8003b60:	f7fc fb52 	bl	8000208 <__aeabi_dsub>
 8003b64:	a330      	add	r3, pc, #192	; (adr r3, 8003c28 <__ieee754_pow+0x528>)
 8003b66:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b6a:	f7fc fd05 	bl	8000578 <__aeabi_dmul>
 8003b6e:	a330      	add	r3, pc, #192	; (adr r3, 8003c30 <__ieee754_pow+0x530>)
 8003b70:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b74:	4606      	mov	r6, r0
 8003b76:	460f      	mov	r7, r1
 8003b78:	4620      	mov	r0, r4
 8003b7a:	4629      	mov	r1, r5
 8003b7c:	f7fc fcfc 	bl	8000578 <__aeabi_dmul>
 8003b80:	4602      	mov	r2, r0
 8003b82:	460b      	mov	r3, r1
 8003b84:	4630      	mov	r0, r6
 8003b86:	4639      	mov	r1, r7
 8003b88:	f7fc fb40 	bl	800020c <__adddf3>
 8003b8c:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003b90:	f7fc fb3c 	bl	800020c <__adddf3>
 8003b94:	4606      	mov	r6, r0
 8003b96:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003b98:	460f      	mov	r7, r1
 8003b9a:	f7fc fc83 	bl	80004a4 <__aeabi_i2d>
 8003b9e:	4632      	mov	r2, r6
 8003ba0:	4680      	mov	r8, r0
 8003ba2:	4689      	mov	r9, r1
 8003ba4:	463b      	mov	r3, r7
 8003ba6:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003baa:	f7fc fb2f 	bl	800020c <__adddf3>
 8003bae:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 8003bb2:	f7fc fb2b 	bl	800020c <__adddf3>
 8003bb6:	4642      	mov	r2, r8
 8003bb8:	464b      	mov	r3, r9
 8003bba:	f7fc fb27 	bl	800020c <__adddf3>
 8003bbe:	9802      	ldr	r0, [sp, #8]
 8003bc0:	4642      	mov	r2, r8
 8003bc2:	464b      	mov	r3, r9
 8003bc4:	4604      	mov	r4, r0
 8003bc6:	460d      	mov	r5, r1
 8003bc8:	f7fc fb1e 	bl	8000208 <__aeabi_dsub>
 8003bcc:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 8003bd0:	f7fc fb1a 	bl	8000208 <__aeabi_dsub>
 8003bd4:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003bd8:	e038      	b.n	8003c4c <__ieee754_pow+0x54c>
 8003bda:	bf00      	nop
 8003bdc:	f3af 8000 	nop.w
	...
 8003bec:	3ff00000 	.word	0x3ff00000
 8003bf0:	4a454eef 	.word	0x4a454eef
 8003bf4:	3fca7e28 	.word	0x3fca7e28
 8003bf8:	93c9db65 	.word	0x93c9db65
 8003bfc:	3fcd864a 	.word	0x3fcd864a
 8003c00:	a91d4101 	.word	0xa91d4101
 8003c04:	3fd17460 	.word	0x3fd17460
 8003c08:	518f264d 	.word	0x518f264d
 8003c0c:	3fd55555 	.word	0x3fd55555
 8003c10:	db6fabff 	.word	0xdb6fabff
 8003c14:	3fdb6db6 	.word	0x3fdb6db6
 8003c18:	33333303 	.word	0x33333303
 8003c1c:	3fe33333 	.word	0x3fe33333
 8003c20:	e0000000 	.word	0xe0000000
 8003c24:	3feec709 	.word	0x3feec709
 8003c28:	dc3a03fd 	.word	0xdc3a03fd
 8003c2c:	3feec709 	.word	0x3feec709
 8003c30:	145b01f5 	.word	0x145b01f5
 8003c34:	be3e2fe0 	.word	0xbe3e2fe0
 8003c38:	43400000 	.word	0x43400000
 8003c3c:	0003988e 	.word	0x0003988e
 8003c40:	000bb679 	.word	0x000bb679
 8003c44:	3ff00000 	.word	0x3ff00000
 8003c48:	40080000 	.word	0x40080000
 8003c4c:	f7fc fadc 	bl	8000208 <__aeabi_dsub>
 8003c50:	460b      	mov	r3, r1
 8003c52:	4602      	mov	r2, r0
 8003c54:	4639      	mov	r1, r7
 8003c56:	4630      	mov	r0, r6
 8003c58:	f7fc fad6 	bl	8000208 <__aeabi_dsub>
 8003c5c:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8003c60:	ea53 030a 	orrs.w	r3, r3, sl
 8003c64:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8003c68:	f000 815f 	beq.w	8003f2a <__ieee754_pow+0x82a>
 8003c6c:	ed9f 7bd2 	vldr	d7, [pc, #840]	; 8003fb8 <__ieee754_pow+0x8b8>
 8003c70:	ed8d 7b02 	vstr	d7, [sp, #8]
 8003c74:	e9dd ab00 	ldrd	sl, fp, [sp]
 8003c78:	2300      	movs	r3, #0
 8003c7a:	4656      	mov	r6, sl
 8003c7c:	465f      	mov	r7, fp
 8003c7e:	e9cd 6700 	strd	r6, r7, [sp]
 8003c82:	9300      	str	r3, [sp, #0]
 8003c84:	e9dd 6700 	ldrd	r6, r7, [sp]
 8003c88:	4650      	mov	r0, sl
 8003c8a:	4632      	mov	r2, r6
 8003c8c:	463b      	mov	r3, r7
 8003c8e:	4659      	mov	r1, fp
 8003c90:	f7fc faba 	bl	8000208 <__aeabi_dsub>
 8003c94:	4622      	mov	r2, r4
 8003c96:	462b      	mov	r3, r5
 8003c98:	f7fc fc6e 	bl	8000578 <__aeabi_dmul>
 8003c9c:	4652      	mov	r2, sl
 8003c9e:	4680      	mov	r8, r0
 8003ca0:	4689      	mov	r9, r1
 8003ca2:	465b      	mov	r3, fp
 8003ca4:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003ca8:	f7fc fc66 	bl	8000578 <__aeabi_dmul>
 8003cac:	4602      	mov	r2, r0
 8003cae:	460b      	mov	r3, r1
 8003cb0:	4640      	mov	r0, r8
 8003cb2:	4649      	mov	r1, r9
 8003cb4:	f7fc faaa 	bl	800020c <__adddf3>
 8003cb8:	4632      	mov	r2, r6
 8003cba:	4680      	mov	r8, r0
 8003cbc:	4689      	mov	r9, r1
 8003cbe:	463b      	mov	r3, r7
 8003cc0:	4620      	mov	r0, r4
 8003cc2:	4629      	mov	r1, r5
 8003cc4:	e9cd 8904 	strd	r8, r9, [sp, #16]
 8003cc8:	f7fc fc56 	bl	8000578 <__aeabi_dmul>
 8003ccc:	460b      	mov	r3, r1
 8003cce:	4602      	mov	r2, r0
 8003cd0:	4606      	mov	r6, r0
 8003cd2:	460f      	mov	r7, r1
 8003cd4:	4640      	mov	r0, r8
 8003cd6:	4649      	mov	r1, r9
 8003cd8:	f7fc fa98 	bl	800020c <__adddf3>
 8003cdc:	4bd0      	ldr	r3, [pc, #832]	; (8004020 <__ieee754_pow+0x920>)
 8003cde:	4299      	cmp	r1, r3
 8003ce0:	4604      	mov	r4, r0
 8003ce2:	460d      	mov	r5, r1
 8003ce4:	468a      	mov	sl, r1
 8003ce6:	f340 8125 	ble.w	8003f34 <__ieee754_pow+0x834>
 8003cea:	f101 433f 	add.w	r3, r1, #3204448256	; 0xbf000000
 8003cee:	f503 03e0 	add.w	r3, r3, #7340032	; 0x700000
 8003cf2:	4303      	orrs	r3, r0
 8003cf4:	f040 81fe 	bne.w	80040f4 <__ieee754_pow+0x9f4>
 8003cf8:	a3b1      	add	r3, pc, #708	; (adr r3, 8003fc0 <__ieee754_pow+0x8c0>)
 8003cfa:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003cfe:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003d02:	f7fc fa83 	bl	800020c <__adddf3>
 8003d06:	4632      	mov	r2, r6
 8003d08:	4680      	mov	r8, r0
 8003d0a:	4689      	mov	r9, r1
 8003d0c:	463b      	mov	r3, r7
 8003d0e:	4620      	mov	r0, r4
 8003d10:	4629      	mov	r1, r5
 8003d12:	f7fc fa79 	bl	8000208 <__aeabi_dsub>
 8003d16:	4602      	mov	r2, r0
 8003d18:	460b      	mov	r3, r1
 8003d1a:	4640      	mov	r0, r8
 8003d1c:	4649      	mov	r1, r9
 8003d1e:	f7fc febb 	bl	8000a98 <__aeabi_dcmpgt>
 8003d22:	2800      	cmp	r0, #0
 8003d24:	f040 81e6 	bne.w	80040f4 <__ieee754_pow+0x9f4>
 8003d28:	46a8      	mov	r8, r5
 8003d2a:	ea4f 5328 	mov.w	r3, r8, asr #20
 8003d2e:	f2a3 32fe 	subw	r2, r3, #1022	; 0x3fe
 8003d32:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 8003d36:	4113      	asrs	r3, r2
 8003d38:	4453      	add	r3, sl
 8003d3a:	f3c3 520a 	ubfx	r2, r3, #20, #11
 8003d3e:	4db9      	ldr	r5, [pc, #740]	; (8004024 <__ieee754_pow+0x924>)
 8003d40:	f2a2 32ff 	subw	r2, r2, #1023	; 0x3ff
 8003d44:	4115      	asrs	r5, r2
 8003d46:	f3c3 0413 	ubfx	r4, r3, #0, #20
 8003d4a:	ea23 0105 	bic.w	r1, r3, r5
 8003d4e:	2000      	movs	r0, #0
 8003d50:	f1c2 0b14 	rsb	fp, r2, #20
 8003d54:	f444 1480 	orr.w	r4, r4, #1048576	; 0x100000
 8003d58:	f1ba 0f00 	cmp.w	sl, #0
 8003d5c:	4602      	mov	r2, r0
 8003d5e:	460b      	mov	r3, r1
 8003d60:	fa44 fb0b 	asr.w	fp, r4, fp
 8003d64:	4630      	mov	r0, r6
 8003d66:	4639      	mov	r1, r7
 8003d68:	bfb8      	it	lt
 8003d6a:	f1cb 0b00 	rsblt	fp, fp, #0
 8003d6e:	f7fc fa4b 	bl	8000208 <__aeabi_dsub>
 8003d72:	4606      	mov	r6, r0
 8003d74:	460f      	mov	r7, r1
 8003d76:	4632      	mov	r2, r6
 8003d78:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003d7c:	463b      	mov	r3, r7
 8003d7e:	f7fc fa45 	bl	800020c <__adddf3>
 8003d82:	ea4f 5a0b 	mov.w	sl, fp, lsl #20
 8003d86:	460d      	mov	r5, r1
 8003d88:	2400      	movs	r4, #0
 8003d8a:	a38f      	add	r3, pc, #572	; (adr r3, 8003fc8 <__ieee754_pow+0x8c8>)
 8003d8c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d90:	4620      	mov	r0, r4
 8003d92:	4629      	mov	r1, r5
 8003d94:	f7fc fbf0 	bl	8000578 <__aeabi_dmul>
 8003d98:	4632      	mov	r2, r6
 8003d9a:	4680      	mov	r8, r0
 8003d9c:	4689      	mov	r9, r1
 8003d9e:	463b      	mov	r3, r7
 8003da0:	4620      	mov	r0, r4
 8003da2:	4629      	mov	r1, r5
 8003da4:	f7fc fa30 	bl	8000208 <__aeabi_dsub>
 8003da8:	4602      	mov	r2, r0
 8003daa:	460b      	mov	r3, r1
 8003dac:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8003db0:	f7fc fa2a 	bl	8000208 <__aeabi_dsub>
 8003db4:	a386      	add	r3, pc, #536	; (adr r3, 8003fd0 <__ieee754_pow+0x8d0>)
 8003db6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003dba:	f7fc fbdd 	bl	8000578 <__aeabi_dmul>
 8003dbe:	a386      	add	r3, pc, #536	; (adr r3, 8003fd8 <__ieee754_pow+0x8d8>)
 8003dc0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003dc4:	4606      	mov	r6, r0
 8003dc6:	460f      	mov	r7, r1
 8003dc8:	4620      	mov	r0, r4
 8003dca:	4629      	mov	r1, r5
 8003dcc:	f7fc fbd4 	bl	8000578 <__aeabi_dmul>
 8003dd0:	4602      	mov	r2, r0
 8003dd2:	460b      	mov	r3, r1
 8003dd4:	4630      	mov	r0, r6
 8003dd6:	4639      	mov	r1, r7
 8003dd8:	f7fc fa18 	bl	800020c <__adddf3>
 8003ddc:	4606      	mov	r6, r0
 8003dde:	460f      	mov	r7, r1
 8003de0:	4602      	mov	r2, r0
 8003de2:	460b      	mov	r3, r1
 8003de4:	4640      	mov	r0, r8
 8003de6:	4649      	mov	r1, r9
 8003de8:	f7fc fa10 	bl	800020c <__adddf3>
 8003dec:	4642      	mov	r2, r8
 8003dee:	464b      	mov	r3, r9
 8003df0:	4604      	mov	r4, r0
 8003df2:	460d      	mov	r5, r1
 8003df4:	f7fc fa08 	bl	8000208 <__aeabi_dsub>
 8003df8:	4602      	mov	r2, r0
 8003dfa:	460b      	mov	r3, r1
 8003dfc:	4630      	mov	r0, r6
 8003dfe:	4639      	mov	r1, r7
 8003e00:	f7fc fa02 	bl	8000208 <__aeabi_dsub>
 8003e04:	4622      	mov	r2, r4
 8003e06:	4680      	mov	r8, r0
 8003e08:	4689      	mov	r9, r1
 8003e0a:	462b      	mov	r3, r5
 8003e0c:	4620      	mov	r0, r4
 8003e0e:	4629      	mov	r1, r5
 8003e10:	f7fc fbb2 	bl	8000578 <__aeabi_dmul>
 8003e14:	a372      	add	r3, pc, #456	; (adr r3, 8003fe0 <__ieee754_pow+0x8e0>)
 8003e16:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003e1a:	4606      	mov	r6, r0
 8003e1c:	460f      	mov	r7, r1
 8003e1e:	f7fc fbab 	bl	8000578 <__aeabi_dmul>
 8003e22:	a371      	add	r3, pc, #452	; (adr r3, 8003fe8 <__ieee754_pow+0x8e8>)
 8003e24:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003e28:	f7fc f9ee 	bl	8000208 <__aeabi_dsub>
 8003e2c:	4632      	mov	r2, r6
 8003e2e:	463b      	mov	r3, r7
 8003e30:	f7fc fba2 	bl	8000578 <__aeabi_dmul>
 8003e34:	a36e      	add	r3, pc, #440	; (adr r3, 8003ff0 <__ieee754_pow+0x8f0>)
 8003e36:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003e3a:	f7fc f9e7 	bl	800020c <__adddf3>
 8003e3e:	4632      	mov	r2, r6
 8003e40:	463b      	mov	r3, r7
 8003e42:	f7fc fb99 	bl	8000578 <__aeabi_dmul>
 8003e46:	a36c      	add	r3, pc, #432	; (adr r3, 8003ff8 <__ieee754_pow+0x8f8>)
 8003e48:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003e4c:	f7fc f9dc 	bl	8000208 <__aeabi_dsub>
 8003e50:	4632      	mov	r2, r6
 8003e52:	463b      	mov	r3, r7
 8003e54:	f7fc fb90 	bl	8000578 <__aeabi_dmul>
 8003e58:	a369      	add	r3, pc, #420	; (adr r3, 8004000 <__ieee754_pow+0x900>)
 8003e5a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003e5e:	f7fc f9d5 	bl	800020c <__adddf3>
 8003e62:	4632      	mov	r2, r6
 8003e64:	463b      	mov	r3, r7
 8003e66:	f7fc fb87 	bl	8000578 <__aeabi_dmul>
 8003e6a:	4602      	mov	r2, r0
 8003e6c:	460b      	mov	r3, r1
 8003e6e:	4620      	mov	r0, r4
 8003e70:	4629      	mov	r1, r5
 8003e72:	f7fc f9c9 	bl	8000208 <__aeabi_dsub>
 8003e76:	4606      	mov	r6, r0
 8003e78:	460f      	mov	r7, r1
 8003e7a:	4602      	mov	r2, r0
 8003e7c:	460b      	mov	r3, r1
 8003e7e:	4620      	mov	r0, r4
 8003e80:	4629      	mov	r1, r5
 8003e82:	f7fc fb79 	bl	8000578 <__aeabi_dmul>
 8003e86:	2200      	movs	r2, #0
 8003e88:	e9cd 0100 	strd	r0, r1, [sp]
 8003e8c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8003e90:	4630      	mov	r0, r6
 8003e92:	4639      	mov	r1, r7
 8003e94:	f7fc f9b8 	bl	8000208 <__aeabi_dsub>
 8003e98:	4602      	mov	r2, r0
 8003e9a:	460b      	mov	r3, r1
 8003e9c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8003ea0:	f7fc fc94 	bl	80007cc <__aeabi_ddiv>
 8003ea4:	4642      	mov	r2, r8
 8003ea6:	4606      	mov	r6, r0
 8003ea8:	460f      	mov	r7, r1
 8003eaa:	464b      	mov	r3, r9
 8003eac:	4620      	mov	r0, r4
 8003eae:	4629      	mov	r1, r5
 8003eb0:	f7fc fb62 	bl	8000578 <__aeabi_dmul>
 8003eb4:	4642      	mov	r2, r8
 8003eb6:	464b      	mov	r3, r9
 8003eb8:	f7fc f9a8 	bl	800020c <__adddf3>
 8003ebc:	4602      	mov	r2, r0
 8003ebe:	460b      	mov	r3, r1
 8003ec0:	4630      	mov	r0, r6
 8003ec2:	4639      	mov	r1, r7
 8003ec4:	f7fc f9a0 	bl	8000208 <__aeabi_dsub>
 8003ec8:	4622      	mov	r2, r4
 8003eca:	462b      	mov	r3, r5
 8003ecc:	f7fc f99c 	bl	8000208 <__aeabi_dsub>
 8003ed0:	4602      	mov	r2, r0
 8003ed2:	460b      	mov	r3, r1
 8003ed4:	2000      	movs	r0, #0
 8003ed6:	4954      	ldr	r1, [pc, #336]	; (8004028 <__ieee754_pow+0x928>)
 8003ed8:	f7fc f996 	bl	8000208 <__aeabi_dsub>
 8003edc:	448a      	add	sl, r1
 8003ede:	f5ba 1f80 	cmp.w	sl, #1048576	; 0x100000
 8003ee2:	4602      	mov	r2, r0
 8003ee4:	460b      	mov	r3, r1
 8003ee6:	f2c0 8130 	blt.w	800414a <__ieee754_pow+0xa4a>
 8003eea:	4651      	mov	r1, sl
 8003eec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003ef0:	f7fc fb42 	bl	8000578 <__aeabi_dmul>
 8003ef4:	e421      	b.n	800373a <__ieee754_pow+0x3a>
 8003ef6:	2e00      	cmp	r6, #0
 8003ef8:	f6ff ac45 	blt.w	8003786 <__ieee754_pow+0x86>
 8003efc:	ec49 8b10 	vmov	d0, r8, r9
 8003f00:	b013      	add	sp, #76	; 0x4c
 8003f02:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003f06:	f000 bb81 	b.w	800460c <__ieee754_sqrt>
 8003f0a:	2f00      	cmp	r7, #0
 8003f0c:	f6bf acd2 	bge.w	80038b4 <__ieee754_pow+0x1b4>
 8003f10:	e9dd 3400 	ldrd	r3, r4, [sp]
 8003f14:	4618      	mov	r0, r3
 8003f16:	f104 4100 	add.w	r1, r4, #2147483648	; 0x80000000
 8003f1a:	e40e      	b.n	800373a <__ieee754_pow+0x3a>
 8003f1c:	4642      	mov	r2, r8
 8003f1e:	464b      	mov	r3, r9
 8003f20:	2000      	movs	r0, #0
 8003f22:	4941      	ldr	r1, [pc, #260]	; (8004028 <__ieee754_pow+0x928>)
 8003f24:	f7fc fc52 	bl	80007cc <__aeabi_ddiv>
 8003f28:	e407      	b.n	800373a <__ieee754_pow+0x3a>
 8003f2a:	ed9f 7b37 	vldr	d7, [pc, #220]	; 8004008 <__ieee754_pow+0x908>
 8003f2e:	ed8d 7b02 	vstr	d7, [sp, #8]
 8003f32:	e69f      	b.n	8003c74 <__ieee754_pow+0x574>
 8003f34:	4b3d      	ldr	r3, [pc, #244]	; (800402c <__ieee754_pow+0x92c>)
 8003f36:	f021 4800 	bic.w	r8, r1, #2147483648	; 0x80000000
 8003f3a:	4598      	cmp	r8, r3
 8003f3c:	f340 80e8 	ble.w	8004110 <__ieee754_pow+0xa10>
 8003f40:	4b3b      	ldr	r3, [pc, #236]	; (8004030 <__ieee754_pow+0x930>)
 8003f42:	440b      	add	r3, r1
 8003f44:	4303      	orrs	r3, r0
 8003f46:	d10a      	bne.n	8003f5e <__ieee754_pow+0x85e>
 8003f48:	4632      	mov	r2, r6
 8003f4a:	463b      	mov	r3, r7
 8003f4c:	f7fc f95c 	bl	8000208 <__aeabi_dsub>
 8003f50:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003f54:	f7fc fd96 	bl	8000a84 <__aeabi_dcmpge>
 8003f58:	2800      	cmp	r0, #0
 8003f5a:	f43f aee6 	beq.w	8003d2a <__ieee754_pow+0x62a>
 8003f5e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8003f62:	a32b      	add	r3, pc, #172	; (adr r3, 8004010 <__ieee754_pow+0x910>)
 8003f64:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003f68:	f7fc fb06 	bl	8000578 <__aeabi_dmul>
 8003f6c:	a328      	add	r3, pc, #160	; (adr r3, 8004010 <__ieee754_pow+0x910>)
 8003f6e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003f72:	f7fc fb01 	bl	8000578 <__aeabi_dmul>
 8003f76:	f7ff bbe0 	b.w	800373a <__ieee754_pow+0x3a>
 8003f7a:	f1bc 0f00 	cmp.w	ip, #0
 8003f7e:	f040 80d0 	bne.w	8004122 <__ieee754_pow+0xa22>
 8003f82:	f1c3 0314 	rsb	r3, r3, #20
 8003f86:	fa45 f203 	asr.w	r2, r5, r3
 8003f8a:	fa02 f303 	lsl.w	r3, r2, r3
 8003f8e:	42ab      	cmp	r3, r5
 8003f90:	f000 80e3 	beq.w	800415a <__ieee754_pow+0xa5a>
 8003f94:	46e3      	mov	fp, ip
 8003f96:	f7ff bbea 	b.w	800376e <__ieee754_pow+0x6e>
 8003f9a:	ed9f 7b1f 	vldr	d7, [pc, #124]	; 8004018 <__ieee754_pow+0x918>
 8003f9e:	ed8d 7b08 	vstr	d7, [sp, #32]
 8003fa2:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8003fa6:	ed9f 7b04 	vldr	d7, [pc, #16]	; 8003fb8 <__ieee754_pow+0x8b8>
 8003faa:	f04f 0800 	mov.w	r8, #0
 8003fae:	ed8d 7b06 	vstr	d7, [sp, #24]
 8003fb2:	e4c9      	b.n	8003948 <__ieee754_pow+0x248>
 8003fb4:	2600      	movs	r6, #0
 8003fb6:	e4a4      	b.n	8003902 <__ieee754_pow+0x202>
 8003fb8:	00000000 	.word	0x00000000
 8003fbc:	3ff00000 	.word	0x3ff00000
 8003fc0:	652b82fe 	.word	0x652b82fe
 8003fc4:	3c971547 	.word	0x3c971547
 8003fc8:	00000000 	.word	0x00000000
 8003fcc:	3fe62e43 	.word	0x3fe62e43
 8003fd0:	fefa39ef 	.word	0xfefa39ef
 8003fd4:	3fe62e42 	.word	0x3fe62e42
 8003fd8:	0ca86c39 	.word	0x0ca86c39
 8003fdc:	be205c61 	.word	0xbe205c61
 8003fe0:	72bea4d0 	.word	0x72bea4d0
 8003fe4:	3e663769 	.word	0x3e663769
 8003fe8:	c5d26bf1 	.word	0xc5d26bf1
 8003fec:	3ebbbd41 	.word	0x3ebbbd41
 8003ff0:	af25de2c 	.word	0xaf25de2c
 8003ff4:	3f11566a 	.word	0x3f11566a
 8003ff8:	16bebd93 	.word	0x16bebd93
 8003ffc:	3f66c16c 	.word	0x3f66c16c
 8004000:	5555553e 	.word	0x5555553e
 8004004:	3fc55555 	.word	0x3fc55555
 8004008:	00000000 	.word	0x00000000
 800400c:	bff00000 	.word	0xbff00000
 8004010:	c2f8f359 	.word	0xc2f8f359
 8004014:	01a56e1f 	.word	0x01a56e1f
	...
 8004020:	408fffff 	.word	0x408fffff
 8004024:	000fffff 	.word	0x000fffff
 8004028:	3ff00000 	.word	0x3ff00000
 800402c:	4090cbff 	.word	0x4090cbff
 8004030:	3f6f3400 	.word	0x3f6f3400
 8004034:	4b5c      	ldr	r3, [pc, #368]	; (80041a8 <__ieee754_pow+0xaa8>)
 8004036:	429c      	cmp	r4, r3
 8004038:	f77f ac3a 	ble.w	80038b0 <__ieee754_pow+0x1b0>
 800403c:	4b5b      	ldr	r3, [pc, #364]	; (80041ac <__ieee754_pow+0xaac>)
 800403e:	429c      	cmp	r4, r3
 8004040:	f73f abc3 	bgt.w	80037ca <__ieee754_pow+0xca>
 8004044:	2200      	movs	r2, #0
 8004046:	4b59      	ldr	r3, [pc, #356]	; (80041ac <__ieee754_pow+0xaac>)
 8004048:	f7fc f8de 	bl	8000208 <__aeabi_dsub>
 800404c:	a346      	add	r3, pc, #280	; (adr r3, 8004168 <__ieee754_pow+0xa68>)
 800404e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004052:	4604      	mov	r4, r0
 8004054:	460d      	mov	r5, r1
 8004056:	f7fc fa8f 	bl	8000578 <__aeabi_dmul>
 800405a:	a345      	add	r3, pc, #276	; (adr r3, 8004170 <__ieee754_pow+0xa70>)
 800405c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004060:	4680      	mov	r8, r0
 8004062:	4689      	mov	r9, r1
 8004064:	4620      	mov	r0, r4
 8004066:	4629      	mov	r1, r5
 8004068:	f7fc fa86 	bl	8000578 <__aeabi_dmul>
 800406c:	2200      	movs	r2, #0
 800406e:	e9cd 0102 	strd	r0, r1, [sp, #8]
 8004072:	4b4f      	ldr	r3, [pc, #316]	; (80041b0 <__ieee754_pow+0xab0>)
 8004074:	4620      	mov	r0, r4
 8004076:	4629      	mov	r1, r5
 8004078:	f7fc fa7e 	bl	8000578 <__aeabi_dmul>
 800407c:	4602      	mov	r2, r0
 800407e:	460b      	mov	r3, r1
 8004080:	a13d      	add	r1, pc, #244	; (adr r1, 8004178 <__ieee754_pow+0xa78>)
 8004082:	e9d1 0100 	ldrd	r0, r1, [r1]
 8004086:	f7fc f8bf 	bl	8000208 <__aeabi_dsub>
 800408a:	4622      	mov	r2, r4
 800408c:	462b      	mov	r3, r5
 800408e:	f7fc fa73 	bl	8000578 <__aeabi_dmul>
 8004092:	4602      	mov	r2, r0
 8004094:	460b      	mov	r3, r1
 8004096:	2000      	movs	r0, #0
 8004098:	4946      	ldr	r1, [pc, #280]	; (80041b4 <__ieee754_pow+0xab4>)
 800409a:	f7fc f8b5 	bl	8000208 <__aeabi_dsub>
 800409e:	4622      	mov	r2, r4
 80040a0:	4606      	mov	r6, r0
 80040a2:	460f      	mov	r7, r1
 80040a4:	462b      	mov	r3, r5
 80040a6:	4620      	mov	r0, r4
 80040a8:	4629      	mov	r1, r5
 80040aa:	f7fc fa65 	bl	8000578 <__aeabi_dmul>
 80040ae:	4602      	mov	r2, r0
 80040b0:	460b      	mov	r3, r1
 80040b2:	4630      	mov	r0, r6
 80040b4:	4639      	mov	r1, r7
 80040b6:	f7fc fa5f 	bl	8000578 <__aeabi_dmul>
 80040ba:	a331      	add	r3, pc, #196	; (adr r3, 8004180 <__ieee754_pow+0xa80>)
 80040bc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040c0:	f7fc fa5a 	bl	8000578 <__aeabi_dmul>
 80040c4:	4602      	mov	r2, r0
 80040c6:	460b      	mov	r3, r1
 80040c8:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80040cc:	f7fc f89c 	bl	8000208 <__aeabi_dsub>
 80040d0:	4602      	mov	r2, r0
 80040d2:	460b      	mov	r3, r1
 80040d4:	4606      	mov	r6, r0
 80040d6:	460f      	mov	r7, r1
 80040d8:	4640      	mov	r0, r8
 80040da:	4649      	mov	r1, r9
 80040dc:	f7fc f896 	bl	800020c <__adddf3>
 80040e0:	2000      	movs	r0, #0
 80040e2:	4604      	mov	r4, r0
 80040e4:	460d      	mov	r5, r1
 80040e6:	4642      	mov	r2, r8
 80040e8:	464b      	mov	r3, r9
 80040ea:	e5af      	b.n	8003c4c <__ieee754_pow+0x54c>
 80040ec:	4602      	mov	r2, r0
 80040ee:	460b      	mov	r3, r1
 80040f0:	f7ff bbd5 	b.w	800389e <__ieee754_pow+0x19e>
 80040f4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80040f8:	a323      	add	r3, pc, #140	; (adr r3, 8004188 <__ieee754_pow+0xa88>)
 80040fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040fe:	f7fc fa3b 	bl	8000578 <__aeabi_dmul>
 8004102:	a321      	add	r3, pc, #132	; (adr r3, 8004188 <__ieee754_pow+0xa88>)
 8004104:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004108:	f7fc fa36 	bl	8000578 <__aeabi_dmul>
 800410c:	f7ff bb15 	b.w	800373a <__ieee754_pow+0x3a>
 8004110:	4b28      	ldr	r3, [pc, #160]	; (80041b4 <__ieee754_pow+0xab4>)
 8004112:	4598      	cmp	r8, r3
 8004114:	f73f ae09 	bgt.w	8003d2a <__ieee754_pow+0x62a>
 8004118:	e9dd 2300 	ldrd	r2, r3, [sp]
 800411c:	4692      	mov	sl, r2
 800411e:	4693      	mov	fp, r2
 8004120:	e632      	b.n	8003d88 <__ieee754_pow+0x688>
 8004122:	f04f 0b00 	mov.w	fp, #0
 8004126:	f7ff bb2e 	b.w	8003786 <__ieee754_pow+0x86>
 800412a:	ed9f 7b19 	vldr	d7, [pc, #100]	; 8004190 <__ieee754_pow+0xa90>
 800412e:	ed8d 7b08 	vstr	d7, [sp, #32]
 8004132:	ed9f 7b19 	vldr	d7, [pc, #100]	; 8004198 <__ieee754_pow+0xa98>
 8004136:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 800413a:	ed9f 7b19 	vldr	d7, [pc, #100]	; 80041a0 <__ieee754_pow+0xaa0>
 800413e:	f44f 2880 	mov.w	r8, #262144	; 0x40000
 8004142:	ed8d 7b06 	vstr	d7, [sp, #24]
 8004146:	f7ff bbff 	b.w	8003948 <__ieee754_pow+0x248>
 800414a:	4658      	mov	r0, fp
 800414c:	ec43 2b10 	vmov	d0, r2, r3
 8004150:	f001 fa66 	bl	8005620 <scalbn>
 8004154:	ec51 0b10 	vmov	r0, r1, d0
 8004158:	e6c8      	b.n	8003eec <__ieee754_pow+0x7ec>
 800415a:	f002 0201 	and.w	r2, r2, #1
 800415e:	f1c2 0b02 	rsb	fp, r2, #2
 8004162:	f7ff bb04 	b.w	800376e <__ieee754_pow+0x6e>
 8004166:	bf00      	nop
 8004168:	60000000 	.word	0x60000000
 800416c:	3ff71547 	.word	0x3ff71547
 8004170:	f85ddf44 	.word	0xf85ddf44
 8004174:	3e54ae0b 	.word	0x3e54ae0b
 8004178:	55555555 	.word	0x55555555
 800417c:	3fd55555 	.word	0x3fd55555
 8004180:	652b82fe 	.word	0x652b82fe
 8004184:	3ff71547 	.word	0x3ff71547
 8004188:	8800759c 	.word	0x8800759c
 800418c:	7e37e43c 	.word	0x7e37e43c
 8004190:	40000000 	.word	0x40000000
 8004194:	3fe2b803 	.word	0x3fe2b803
 8004198:	43cfd006 	.word	0x43cfd006
 800419c:	3e4cfdeb 	.word	0x3e4cfdeb
 80041a0:	00000000 	.word	0x00000000
 80041a4:	3ff80000 	.word	0x3ff80000
 80041a8:	3feffffe 	.word	0x3feffffe
 80041ac:	3ff00000 	.word	0x3ff00000
 80041b0:	3fd00000 	.word	0x3fd00000
 80041b4:	3fe00000 	.word	0x3fe00000

080041b8 <__ieee754_rem_pio2>:
 80041b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80041bc:	ec53 2b10 	vmov	r2, r3, d0
 80041c0:	49bf      	ldr	r1, [pc, #764]	; (80044c0 <__ieee754_rem_pio2+0x308>)
 80041c2:	f023 4700 	bic.w	r7, r3, #2147483648	; 0x80000000
 80041c6:	428f      	cmp	r7, r1
 80041c8:	b090      	sub	sp, #64	; 0x40
 80041ca:	f340 8093 	ble.w	80042f4 <__ieee754_rem_pio2+0x13c>
 80041ce:	49bd      	ldr	r1, [pc, #756]	; (80044c4 <__ieee754_rem_pio2+0x30c>)
 80041d0:	428f      	cmp	r7, r1
 80041d2:	461c      	mov	r4, r3
 80041d4:	4682      	mov	sl, r0
 80041d6:	dc29      	bgt.n	800422c <__ieee754_rem_pio2+0x74>
 80041d8:	2c00      	cmp	r4, #0
 80041da:	4619      	mov	r1, r3
 80041dc:	ee10 0a10 	vmov	r0, s0
 80041e0:	a3ad      	add	r3, pc, #692	; (adr r3, 8004498 <__ieee754_rem_pio2+0x2e0>)
 80041e2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041e6:	f340 8090 	ble.w	800430a <__ieee754_rem_pio2+0x152>
 80041ea:	f7fc f80d 	bl	8000208 <__aeabi_dsub>
 80041ee:	4bb6      	ldr	r3, [pc, #728]	; (80044c8 <__ieee754_rem_pio2+0x310>)
 80041f0:	429f      	cmp	r7, r3
 80041f2:	4604      	mov	r4, r0
 80041f4:	460d      	mov	r5, r1
 80041f6:	f000 8173 	beq.w	80044e0 <__ieee754_rem_pio2+0x328>
 80041fa:	a3a9      	add	r3, pc, #676	; (adr r3, 80044a0 <__ieee754_rem_pio2+0x2e8>)
 80041fc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004200:	f7fc f802 	bl	8000208 <__aeabi_dsub>
 8004204:	4602      	mov	r2, r0
 8004206:	460b      	mov	r3, r1
 8004208:	e9ca 2300 	strd	r2, r3, [sl]
 800420c:	4620      	mov	r0, r4
 800420e:	4629      	mov	r1, r5
 8004210:	f7fb fffa 	bl	8000208 <__aeabi_dsub>
 8004214:	a3a2      	add	r3, pc, #648	; (adr r3, 80044a0 <__ieee754_rem_pio2+0x2e8>)
 8004216:	e9d3 2300 	ldrd	r2, r3, [r3]
 800421a:	f7fb fff5 	bl	8000208 <__aeabi_dsub>
 800421e:	2501      	movs	r5, #1
 8004220:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004224:	4628      	mov	r0, r5
 8004226:	b010      	add	sp, #64	; 0x40
 8004228:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800422c:	49a7      	ldr	r1, [pc, #668]	; (80044cc <__ieee754_rem_pio2+0x314>)
 800422e:	428f      	cmp	r7, r1
 8004230:	f340 808a 	ble.w	8004348 <__ieee754_rem_pio2+0x190>
 8004234:	49a6      	ldr	r1, [pc, #664]	; (80044d0 <__ieee754_rem_pio2+0x318>)
 8004236:	428f      	cmp	r7, r1
 8004238:	f300 8120 	bgt.w	800447c <__ieee754_rem_pio2+0x2c4>
 800423c:	153d      	asrs	r5, r7, #20
 800423e:	f2a5 4516 	subw	r5, r5, #1046	; 0x416
 8004242:	ee10 0a10 	vmov	r0, s0
 8004246:	eba7 5105 	sub.w	r1, r7, r5, lsl #20
 800424a:	4616      	mov	r6, r2
 800424c:	460f      	mov	r7, r1
 800424e:	f7fc fc43 	bl	8000ad8 <__aeabi_d2iz>
 8004252:	f7fc f927 	bl	80004a4 <__aeabi_i2d>
 8004256:	4680      	mov	r8, r0
 8004258:	4689      	mov	r9, r1
 800425a:	4642      	mov	r2, r8
 800425c:	464b      	mov	r3, r9
 800425e:	4630      	mov	r0, r6
 8004260:	4639      	mov	r1, r7
 8004262:	e9cd 890a 	strd	r8, r9, [sp, #40]	; 0x28
 8004266:	f7fb ffcf 	bl	8000208 <__aeabi_dsub>
 800426a:	2200      	movs	r2, #0
 800426c:	4b99      	ldr	r3, [pc, #612]	; (80044d4 <__ieee754_rem_pio2+0x31c>)
 800426e:	f7fc f983 	bl	8000578 <__aeabi_dmul>
 8004272:	4689      	mov	r9, r1
 8004274:	4680      	mov	r8, r0
 8004276:	f7fc fc2f 	bl	8000ad8 <__aeabi_d2iz>
 800427a:	f7fc f913 	bl	80004a4 <__aeabi_i2d>
 800427e:	4606      	mov	r6, r0
 8004280:	460f      	mov	r7, r1
 8004282:	4632      	mov	r2, r6
 8004284:	463b      	mov	r3, r7
 8004286:	4640      	mov	r0, r8
 8004288:	4649      	mov	r1, r9
 800428a:	e9cd 670c 	strd	r6, r7, [sp, #48]	; 0x30
 800428e:	f7fb ffbb 	bl	8000208 <__aeabi_dsub>
 8004292:	2200      	movs	r2, #0
 8004294:	4b8f      	ldr	r3, [pc, #572]	; (80044d4 <__ieee754_rem_pio2+0x31c>)
 8004296:	f7fc f96f 	bl	8000578 <__aeabi_dmul>
 800429a:	2200      	movs	r2, #0
 800429c:	2300      	movs	r3, #0
 800429e:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 80042a2:	f7fc fbd1 	bl	8000a48 <__aeabi_dcmpeq>
 80042a6:	2800      	cmp	r0, #0
 80042a8:	f000 8165 	beq.w	8004576 <__ieee754_rem_pio2+0x3be>
 80042ac:	2300      	movs	r3, #0
 80042ae:	4630      	mov	r0, r6
 80042b0:	4639      	mov	r1, r7
 80042b2:	2200      	movs	r2, #0
 80042b4:	f7fc fbc8 	bl	8000a48 <__aeabi_dcmpeq>
 80042b8:	2800      	cmp	r0, #0
 80042ba:	bf14      	ite	ne
 80042bc:	2301      	movne	r3, #1
 80042be:	2302      	moveq	r3, #2
 80042c0:	4a85      	ldr	r2, [pc, #532]	; (80044d8 <__ieee754_rem_pio2+0x320>)
 80042c2:	9201      	str	r2, [sp, #4]
 80042c4:	2102      	movs	r1, #2
 80042c6:	462a      	mov	r2, r5
 80042c8:	9100      	str	r1, [sp, #0]
 80042ca:	a80a      	add	r0, sp, #40	; 0x28
 80042cc:	4651      	mov	r1, sl
 80042ce:	f000 fbab 	bl	8004a28 <__kernel_rem_pio2>
 80042d2:	2c00      	cmp	r4, #0
 80042d4:	4605      	mov	r5, r0
 80042d6:	da14      	bge.n	8004302 <__ieee754_rem_pio2+0x14a>
 80042d8:	f8da 2004 	ldr.w	r2, [sl, #4]
 80042dc:	f8da 300c 	ldr.w	r3, [sl, #12]
 80042e0:	f102 4200 	add.w	r2, r2, #2147483648	; 0x80000000
 80042e4:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
 80042e8:	4245      	negs	r5, r0
 80042ea:	f8ca 2004 	str.w	r2, [sl, #4]
 80042ee:	f8ca 300c 	str.w	r3, [sl, #12]
 80042f2:	e006      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 80042f4:	ed80 0b00 	vstr	d0, [r0]
 80042f8:	2500      	movs	r5, #0
 80042fa:	2400      	movs	r4, #0
 80042fc:	e9c0 4502 	strd	r4, r5, [r0, #8]
 8004300:	2500      	movs	r5, #0
 8004302:	4628      	mov	r0, r5
 8004304:	b010      	add	sp, #64	; 0x40
 8004306:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800430a:	f7fb ff7f 	bl	800020c <__adddf3>
 800430e:	4b6e      	ldr	r3, [pc, #440]	; (80044c8 <__ieee754_rem_pio2+0x310>)
 8004310:	429f      	cmp	r7, r3
 8004312:	4604      	mov	r4, r0
 8004314:	460d      	mov	r5, r1
 8004316:	f000 8110 	beq.w	800453a <__ieee754_rem_pio2+0x382>
 800431a:	a361      	add	r3, pc, #388	; (adr r3, 80044a0 <__ieee754_rem_pio2+0x2e8>)
 800431c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004320:	f7fb ff74 	bl	800020c <__adddf3>
 8004324:	4602      	mov	r2, r0
 8004326:	460b      	mov	r3, r1
 8004328:	e9ca 2300 	strd	r2, r3, [sl]
 800432c:	4629      	mov	r1, r5
 800432e:	4620      	mov	r0, r4
 8004330:	f7fb ff6a 	bl	8000208 <__aeabi_dsub>
 8004334:	a35a      	add	r3, pc, #360	; (adr r3, 80044a0 <__ieee754_rem_pio2+0x2e8>)
 8004336:	e9d3 2300 	ldrd	r2, r3, [r3]
 800433a:	f7fb ff67 	bl	800020c <__adddf3>
 800433e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 8004342:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004346:	e7dc      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 8004348:	f7fe fd0e 	bl	8002d68 <fabs>
 800434c:	ec59 8b10 	vmov	r8, r9, d0
 8004350:	ee10 0a10 	vmov	r0, s0
 8004354:	a354      	add	r3, pc, #336	; (adr r3, 80044a8 <__ieee754_rem_pio2+0x2f0>)
 8004356:	e9d3 2300 	ldrd	r2, r3, [r3]
 800435a:	4649      	mov	r1, r9
 800435c:	f7fc f90c 	bl	8000578 <__aeabi_dmul>
 8004360:	2200      	movs	r2, #0
 8004362:	4b5e      	ldr	r3, [pc, #376]	; (80044dc <__ieee754_rem_pio2+0x324>)
 8004364:	f7fb ff52 	bl	800020c <__adddf3>
 8004368:	f7fc fbb6 	bl	8000ad8 <__aeabi_d2iz>
 800436c:	4605      	mov	r5, r0
 800436e:	f7fc f899 	bl	80004a4 <__aeabi_i2d>
 8004372:	a349      	add	r3, pc, #292	; (adr r3, 8004498 <__ieee754_rem_pio2+0x2e0>)
 8004374:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004378:	e9cd 0106 	strd	r0, r1, [sp, #24]
 800437c:	f7fc f8fc 	bl	8000578 <__aeabi_dmul>
 8004380:	4602      	mov	r2, r0
 8004382:	460b      	mov	r3, r1
 8004384:	4640      	mov	r0, r8
 8004386:	4649      	mov	r1, r9
 8004388:	f7fb ff3e 	bl	8000208 <__aeabi_dsub>
 800438c:	a344      	add	r3, pc, #272	; (adr r3, 80044a0 <__ieee754_rem_pio2+0x2e8>)
 800438e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004392:	4680      	mov	r8, r0
 8004394:	4689      	mov	r9, r1
 8004396:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 800439a:	e9cd 8902 	strd	r8, r9, [sp, #8]
 800439e:	f7fc f8eb 	bl	8000578 <__aeabi_dmul>
 80043a2:	2d1f      	cmp	r5, #31
 80043a4:	4602      	mov	r2, r0
 80043a6:	460b      	mov	r3, r1
 80043a8:	e9cd 2304 	strd	r2, r3, [sp, #16]
 80043ac:	f340 80b5 	ble.w	800451a <__ieee754_rem_pio2+0x362>
 80043b0:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 80043b4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80043b8:	f7fb ff26 	bl	8000208 <__aeabi_dsub>
 80043bc:	4680      	mov	r8, r0
 80043be:	4689      	mov	r9, r1
 80043c0:	153f      	asrs	r7, r7, #20
 80043c2:	f3c9 530a 	ubfx	r3, r9, #20, #11
 80043c6:	1afb      	subs	r3, r7, r3
 80043c8:	2b10      	cmp	r3, #16
 80043ca:	f340 80b3 	ble.w	8004534 <__ieee754_rem_pio2+0x37c>
 80043ce:	a338      	add	r3, pc, #224	; (adr r3, 80044b0 <__ieee754_rem_pio2+0x2f8>)
 80043d0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80043d4:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 80043d8:	f7fc f8ce 	bl	8000578 <__aeabi_dmul>
 80043dc:	4680      	mov	r8, r0
 80043de:	4689      	mov	r9, r1
 80043e0:	4602      	mov	r2, r0
 80043e2:	460b      	mov	r3, r1
 80043e4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80043e8:	f7fb ff0e 	bl	8000208 <__aeabi_dsub>
 80043ec:	4602      	mov	r2, r0
 80043ee:	460b      	mov	r3, r1
 80043f0:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80043f4:	e9cd 2308 	strd	r2, r3, [sp, #32]
 80043f8:	f7fb ff06 	bl	8000208 <__aeabi_dsub>
 80043fc:	4642      	mov	r2, r8
 80043fe:	464b      	mov	r3, r9
 8004400:	f7fb ff02 	bl	8000208 <__aeabi_dsub>
 8004404:	a32c      	add	r3, pc, #176	; (adr r3, 80044b8 <__ieee754_rem_pio2+0x300>)
 8004406:	e9d3 2300 	ldrd	r2, r3, [r3]
 800440a:	4680      	mov	r8, r0
 800440c:	4689      	mov	r9, r1
 800440e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8004412:	f7fc f8b1 	bl	8000578 <__aeabi_dmul>
 8004416:	4642      	mov	r2, r8
 8004418:	464b      	mov	r3, r9
 800441a:	f7fb fef5 	bl	8000208 <__aeabi_dsub>
 800441e:	460b      	mov	r3, r1
 8004420:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8004424:	4602      	mov	r2, r0
 8004426:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 800442a:	f7fb feed 	bl	8000208 <__aeabi_dsub>
 800442e:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8004432:	1aff      	subs	r7, r7, r3
 8004434:	2f31      	cmp	r7, #49	; 0x31
 8004436:	4680      	mov	r8, r0
 8004438:	4689      	mov	r9, r1
 800443a:	f300 809e 	bgt.w	800457a <__ieee754_rem_pio2+0x3c2>
 800443e:	ed9d 7b08 	vldr	d7, [sp, #32]
 8004442:	e9ca 8900 	strd	r8, r9, [sl]
 8004446:	ed8d 7b02 	vstr	d7, [sp, #8]
 800444a:	4642      	mov	r2, r8
 800444c:	464b      	mov	r3, r9
 800444e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8004452:	f7fb fed9 	bl	8000208 <__aeabi_dsub>
 8004456:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 800445a:	f7fb fed5 	bl	8000208 <__aeabi_dsub>
 800445e:	2c00      	cmp	r4, #0
 8004460:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004464:	f6bf af4d 	bge.w	8004302 <__ieee754_rem_pio2+0x14a>
 8004468:	f109 4400 	add.w	r4, r9, #2147483648	; 0x80000000
 800446c:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8004470:	426d      	negs	r5, r5
 8004472:	e9ca 8400 	strd	r8, r4, [sl]
 8004476:	e9ca 0302 	strd	r0, r3, [sl, #8]
 800447a:	e742      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 800447c:	ee10 0a10 	vmov	r0, s0
 8004480:	4619      	mov	r1, r3
 8004482:	f7fb fec1 	bl	8000208 <__aeabi_dsub>
 8004486:	2500      	movs	r5, #0
 8004488:	e9ca 0102 	strd	r0, r1, [sl, #8]
 800448c:	e9ca 0100 	strd	r0, r1, [sl]
 8004490:	e737      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 8004492:	bf00      	nop
 8004494:	f3af 8000 	nop.w
 8004498:	54400000 	.word	0x54400000
 800449c:	3ff921fb 	.word	0x3ff921fb
 80044a0:	1a626331 	.word	0x1a626331
 80044a4:	3dd0b461 	.word	0x3dd0b461
 80044a8:	6dc9c883 	.word	0x6dc9c883
 80044ac:	3fe45f30 	.word	0x3fe45f30
 80044b0:	1a600000 	.word	0x1a600000
 80044b4:	3dd0b461 	.word	0x3dd0b461
 80044b8:	2e037073 	.word	0x2e037073
 80044bc:	3ba3198a 	.word	0x3ba3198a
 80044c0:	3fe921fb 	.word	0x3fe921fb
 80044c4:	4002d97b 	.word	0x4002d97b
 80044c8:	3ff921fb 	.word	0x3ff921fb
 80044cc:	413921fb 	.word	0x413921fb
 80044d0:	7fefffff 	.word	0x7fefffff
 80044d4:	41700000 	.word	0x41700000
 80044d8:	0800a6e4 	.word	0x0800a6e4
 80044dc:	3fe00000 	.word	0x3fe00000
 80044e0:	a341      	add	r3, pc, #260	; (adr r3, 80045e8 <__ieee754_rem_pio2+0x430>)
 80044e2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044e6:	f7fb fe8f 	bl	8000208 <__aeabi_dsub>
 80044ea:	a341      	add	r3, pc, #260	; (adr r3, 80045f0 <__ieee754_rem_pio2+0x438>)
 80044ec:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044f0:	460d      	mov	r5, r1
 80044f2:	4604      	mov	r4, r0
 80044f4:	f7fb fe88 	bl	8000208 <__aeabi_dsub>
 80044f8:	4602      	mov	r2, r0
 80044fa:	460b      	mov	r3, r1
 80044fc:	e9ca 2300 	strd	r2, r3, [sl]
 8004500:	4629      	mov	r1, r5
 8004502:	4620      	mov	r0, r4
 8004504:	f7fb fe80 	bl	8000208 <__aeabi_dsub>
 8004508:	a339      	add	r3, pc, #228	; (adr r3, 80045f0 <__ieee754_rem_pio2+0x438>)
 800450a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800450e:	f7fb fe7b 	bl	8000208 <__aeabi_dsub>
 8004512:	2501      	movs	r5, #1
 8004514:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004518:	e6f3      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 800451a:	4640      	mov	r0, r8
 800451c:	4649      	mov	r1, r9
 800451e:	f7fb fe73 	bl	8000208 <__aeabi_dsub>
 8004522:	4b39      	ldr	r3, [pc, #228]	; (8004608 <__ieee754_rem_pio2+0x450>)
 8004524:	1e6a      	subs	r2, r5, #1
 8004526:	4680      	mov	r8, r0
 8004528:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800452c:	42bb      	cmp	r3, r7
 800452e:	4689      	mov	r9, r1
 8004530:	f43f af46 	beq.w	80043c0 <__ieee754_rem_pio2+0x208>
 8004534:	e9ca 8900 	strd	r8, r9, [sl]
 8004538:	e787      	b.n	800444a <__ieee754_rem_pio2+0x292>
 800453a:	a32b      	add	r3, pc, #172	; (adr r3, 80045e8 <__ieee754_rem_pio2+0x430>)
 800453c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004540:	f7fb fe64 	bl	800020c <__adddf3>
 8004544:	a32a      	add	r3, pc, #168	; (adr r3, 80045f0 <__ieee754_rem_pio2+0x438>)
 8004546:	e9d3 2300 	ldrd	r2, r3, [r3]
 800454a:	460d      	mov	r5, r1
 800454c:	4604      	mov	r4, r0
 800454e:	f7fb fe5d 	bl	800020c <__adddf3>
 8004552:	4602      	mov	r2, r0
 8004554:	460b      	mov	r3, r1
 8004556:	e9ca 2300 	strd	r2, r3, [sl]
 800455a:	4629      	mov	r1, r5
 800455c:	4620      	mov	r0, r4
 800455e:	f7fb fe53 	bl	8000208 <__aeabi_dsub>
 8004562:	a323      	add	r3, pc, #140	; (adr r3, 80045f0 <__ieee754_rem_pio2+0x438>)
 8004564:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004568:	f7fb fe50 	bl	800020c <__adddf3>
 800456c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 8004570:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8004574:	e6c5      	b.n	8004302 <__ieee754_rem_pio2+0x14a>
 8004576:	2303      	movs	r3, #3
 8004578:	e6a2      	b.n	80042c0 <__ieee754_rem_pio2+0x108>
 800457a:	a31f      	add	r3, pc, #124	; (adr r3, 80045f8 <__ieee754_rem_pio2+0x440>)
 800457c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004580:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8004584:	f7fb fff8 	bl	8000578 <__aeabi_dmul>
 8004588:	4606      	mov	r6, r0
 800458a:	460f      	mov	r7, r1
 800458c:	4602      	mov	r2, r0
 800458e:	460b      	mov	r3, r1
 8004590:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8004594:	f7fb fe38 	bl	8000208 <__aeabi_dsub>
 8004598:	4680      	mov	r8, r0
 800459a:	4689      	mov	r9, r1
 800459c:	4602      	mov	r2, r0
 800459e:	460b      	mov	r3, r1
 80045a0:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 80045a4:	e9cd 8902 	strd	r8, r9, [sp, #8]
 80045a8:	f7fb fe2e 	bl	8000208 <__aeabi_dsub>
 80045ac:	4632      	mov	r2, r6
 80045ae:	463b      	mov	r3, r7
 80045b0:	f7fb fe2a 	bl	8000208 <__aeabi_dsub>
 80045b4:	a312      	add	r3, pc, #72	; (adr r3, 8004600 <__ieee754_rem_pio2+0x448>)
 80045b6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80045ba:	4606      	mov	r6, r0
 80045bc:	460f      	mov	r7, r1
 80045be:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 80045c2:	f7fb ffd9 	bl	8000578 <__aeabi_dmul>
 80045c6:	4632      	mov	r2, r6
 80045c8:	463b      	mov	r3, r7
 80045ca:	f7fb fe1d 	bl	8000208 <__aeabi_dsub>
 80045ce:	4602      	mov	r2, r0
 80045d0:	460b      	mov	r3, r1
 80045d2:	4640      	mov	r0, r8
 80045d4:	4649      	mov	r1, r9
 80045d6:	e9cd 2304 	strd	r2, r3, [sp, #16]
 80045da:	f7fb fe15 	bl	8000208 <__aeabi_dsub>
 80045de:	4680      	mov	r8, r0
 80045e0:	4689      	mov	r9, r1
 80045e2:	e7a7      	b.n	8004534 <__ieee754_rem_pio2+0x37c>
 80045e4:	f3af 8000 	nop.w
 80045e8:	1a600000 	.word	0x1a600000
 80045ec:	3dd0b461 	.word	0x3dd0b461
 80045f0:	2e037073 	.word	0x2e037073
 80045f4:	3ba3198a 	.word	0x3ba3198a
 80045f8:	2e000000 	.word	0x2e000000
 80045fc:	3ba3198a 	.word	0x3ba3198a
 8004600:	252049c1 	.word	0x252049c1
 8004604:	397b839a 	.word	0x397b839a
 8004608:	0800a664 	.word	0x0800a664

0800460c <__ieee754_sqrt>:
 800460c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004610:	4a62      	ldr	r2, [pc, #392]	; (800479c <__ieee754_sqrt+0x190>)
 8004612:	ec57 6b10 	vmov	r6, r7, d0
 8004616:	43ba      	bics	r2, r7
 8004618:	f000 8095 	beq.w	8004746 <__ieee754_sqrt+0x13a>
 800461c:	2f00      	cmp	r7, #0
 800461e:	463b      	mov	r3, r7
 8004620:	ee10 1a10 	vmov	r1, s0
 8004624:	4634      	mov	r4, r6
 8004626:	dd54      	ble.n	80046d2 <__ieee754_sqrt+0xc6>
 8004628:	153f      	asrs	r7, r7, #20
 800462a:	f000 80af 	beq.w	800478c <__ieee754_sqrt+0x180>
 800462e:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8004632:	f2a7 37ff 	subw	r7, r7, #1023	; 0x3ff
 8004636:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800463a:	0fe2      	lsrs	r2, r4, #31
 800463c:	07f9      	lsls	r1, r7, #31
 800463e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 8004642:	ea4f 0544 	mov.w	r5, r4, lsl #1
 8004646:	d503      	bpl.n	8004650 <__ieee754_sqrt+0x44>
 8004648:	0fed      	lsrs	r5, r5, #31
 800464a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 800464e:	00a5      	lsls	r5, r4, #2
 8004650:	2600      	movs	r6, #0
 8004652:	107f      	asrs	r7, r7, #1
 8004654:	46b4      	mov	ip, r6
 8004656:	2216      	movs	r2, #22
 8004658:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 800465c:	eb0c 0001 	add.w	r0, ip, r1
 8004660:	4298      	cmp	r0, r3
 8004662:	ea4f 74d5 	mov.w	r4, r5, lsr #31
 8004666:	ea4f 0545 	mov.w	r5, r5, lsl #1
 800466a:	dc03      	bgt.n	8004674 <__ieee754_sqrt+0x68>
 800466c:	1a1b      	subs	r3, r3, r0
 800466e:	eb00 0c01 	add.w	ip, r0, r1
 8004672:	440e      	add	r6, r1
 8004674:	3a01      	subs	r2, #1
 8004676:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 800467a:	ea4f 0151 	mov.w	r1, r1, lsr #1
 800467e:	d1ed      	bne.n	800465c <__ieee754_sqrt+0x50>
 8004680:	4610      	mov	r0, r2
 8004682:	4696      	mov	lr, r2
 8004684:	2420      	movs	r4, #32
 8004686:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 800468a:	e009      	b.n	80046a0 <__ieee754_sqrt+0x94>
 800468c:	d052      	beq.n	8004734 <__ieee754_sqrt+0x128>
 800468e:	005b      	lsls	r3, r3, #1
 8004690:	3c01      	subs	r4, #1
 8004692:	eb03 73d5 	add.w	r3, r3, r5, lsr #31
 8004696:	ea4f 0252 	mov.w	r2, r2, lsr #1
 800469a:	ea4f 0545 	mov.w	r5, r5, lsl #1
 800469e:	d036      	beq.n	800470e <__ieee754_sqrt+0x102>
 80046a0:	4563      	cmp	r3, ip
 80046a2:	eb02 010e 	add.w	r1, r2, lr
 80046a6:	ddf1      	ble.n	800468c <__ieee754_sqrt+0x80>
 80046a8:	2900      	cmp	r1, #0
 80046aa:	eb01 0e02 	add.w	lr, r1, r2
 80046ae:	db0a      	blt.n	80046c6 <__ieee754_sqrt+0xba>
 80046b0:	46e0      	mov	r8, ip
 80046b2:	eba3 030c 	sub.w	r3, r3, ip
 80046b6:	42a9      	cmp	r1, r5
 80046b8:	bf88      	it	hi
 80046ba:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 80046be:	1a6d      	subs	r5, r5, r1
 80046c0:	4410      	add	r0, r2
 80046c2:	46c4      	mov	ip, r8
 80046c4:	e7e3      	b.n	800468e <__ieee754_sqrt+0x82>
 80046c6:	f1be 0f00 	cmp.w	lr, #0
 80046ca:	dbf1      	blt.n	80046b0 <__ieee754_sqrt+0xa4>
 80046cc:	f10c 0801 	add.w	r8, ip, #1
 80046d0:	e7ef      	b.n	80046b2 <__ieee754_sqrt+0xa6>
 80046d2:	f027 4200 	bic.w	r2, r7, #2147483648	; 0x80000000
 80046d6:	4332      	orrs	r2, r6
 80046d8:	d02a      	beq.n	8004730 <__ieee754_sqrt+0x124>
 80046da:	2f00      	cmp	r7, #0
 80046dc:	d149      	bne.n	8004772 <__ieee754_sqrt+0x166>
 80046de:	0aca      	lsrs	r2, r1, #11
 80046e0:	3b15      	subs	r3, #21
 80046e2:	0549      	lsls	r1, r1, #21
 80046e4:	2a00      	cmp	r2, #0
 80046e6:	d0fa      	beq.n	80046de <__ieee754_sqrt+0xd2>
 80046e8:	f412 1080 	ands.w	r0, r2, #1048576	; 0x100000
 80046ec:	d001      	beq.n	80046f2 <__ieee754_sqrt+0xe6>
 80046ee:	e050      	b.n	8004792 <__ieee754_sqrt+0x186>
 80046f0:	4620      	mov	r0, r4
 80046f2:	0052      	lsls	r2, r2, #1
 80046f4:	02d5      	lsls	r5, r2, #11
 80046f6:	f100 0401 	add.w	r4, r0, #1
 80046fa:	d5f9      	bpl.n	80046f0 <__ieee754_sqrt+0xe4>
 80046fc:	f1c4 0520 	rsb	r5, r4, #32
 8004700:	fa01 f404 	lsl.w	r4, r1, r4
 8004704:	40e9      	lsrs	r1, r5
 8004706:	1a1f      	subs	r7, r3, r0
 8004708:	ea41 0302 	orr.w	r3, r1, r2
 800470c:	e78f      	b.n	800462e <__ieee754_sqrt+0x22>
 800470e:	432b      	orrs	r3, r5
 8004710:	d129      	bne.n	8004766 <__ieee754_sqrt+0x15a>
 8004712:	0844      	lsrs	r4, r0, #1
 8004714:	1071      	asrs	r1, r6, #1
 8004716:	07f3      	lsls	r3, r6, #31
 8004718:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 800471c:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 8004720:	bf48      	it	mi
 8004722:	f044 4400 	orrmi.w	r4, r4, #2147483648	; 0x80000000
 8004726:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 800472a:	4622      	mov	r2, r4
 800472c:	ec43 2b10 	vmov	d0, r2, r3
 8004730:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004734:	42a9      	cmp	r1, r5
 8004736:	d8aa      	bhi.n	800468e <__ieee754_sqrt+0x82>
 8004738:	2900      	cmp	r1, #0
 800473a:	eb01 0e02 	add.w	lr, r1, r2
 800473e:	dbc2      	blt.n	80046c6 <__ieee754_sqrt+0xba>
 8004740:	4698      	mov	r8, r3
 8004742:	2300      	movs	r3, #0
 8004744:	e7bb      	b.n	80046be <__ieee754_sqrt+0xb2>
 8004746:	ee10 2a10 	vmov	r2, s0
 800474a:	463b      	mov	r3, r7
 800474c:	ee10 0a10 	vmov	r0, s0
 8004750:	4639      	mov	r1, r7
 8004752:	f7fb ff11 	bl	8000578 <__aeabi_dmul>
 8004756:	4632      	mov	r2, r6
 8004758:	463b      	mov	r3, r7
 800475a:	f7fb fd57 	bl	800020c <__adddf3>
 800475e:	ec41 0b10 	vmov	d0, r0, r1
 8004762:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004766:	1c42      	adds	r2, r0, #1
 8004768:	bf16      	itet	ne
 800476a:	1c42      	addne	r2, r0, #1
 800476c:	3601      	addeq	r6, #1
 800476e:	0854      	lsrne	r4, r2, #1
 8004770:	e7d0      	b.n	8004714 <__ieee754_sqrt+0x108>
 8004772:	ee10 2a10 	vmov	r2, s0
 8004776:	4630      	mov	r0, r6
 8004778:	4639      	mov	r1, r7
 800477a:	f7fb fd45 	bl	8000208 <__aeabi_dsub>
 800477e:	4602      	mov	r2, r0
 8004780:	460b      	mov	r3, r1
 8004782:	f7fc f823 	bl	80007cc <__aeabi_ddiv>
 8004786:	ec41 0b10 	vmov	d0, r0, r1
 800478a:	e7d1      	b.n	8004730 <__ieee754_sqrt+0x124>
 800478c:	461a      	mov	r2, r3
 800478e:	463b      	mov	r3, r7
 8004790:	e7aa      	b.n	80046e8 <__ieee754_sqrt+0xdc>
 8004792:	460c      	mov	r4, r1
 8004794:	2520      	movs	r5, #32
 8004796:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800479a:	e7b3      	b.n	8004704 <__ieee754_sqrt+0xf8>
 800479c:	7ff00000 	.word	0x7ff00000

080047a0 <__kernel_cos>:
 80047a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80047a4:	ec57 6b10 	vmov	r6, r7, d0
 80047a8:	ed2d 8b02 	vpush	{d8}
 80047ac:	eeb0 8a41 	vmov.f32	s16, s2
 80047b0:	eef0 8a61 	vmov.f32	s17, s3
 80047b4:	f027 4900 	bic.w	r9, r7, #2147483648	; 0x80000000
 80047b8:	f1b9 5f79 	cmp.w	r9, #1044381696	; 0x3e400000
 80047bc:	b083      	sub	sp, #12
 80047be:	da72      	bge.n	80048a6 <__kernel_cos+0x106>
 80047c0:	ee10 0a10 	vmov	r0, s0
 80047c4:	4639      	mov	r1, r7
 80047c6:	f7fc f987 	bl	8000ad8 <__aeabi_d2iz>
 80047ca:	2800      	cmp	r0, #0
 80047cc:	f000 80ed 	beq.w	80049aa <__kernel_cos+0x20a>
 80047d0:	4632      	mov	r2, r6
 80047d2:	463b      	mov	r3, r7
 80047d4:	4630      	mov	r0, r6
 80047d6:	4639      	mov	r1, r7
 80047d8:	f7fb fece 	bl	8000578 <__aeabi_dmul>
 80047dc:	a37c      	add	r3, pc, #496	; (adr r3, 80049d0 <__kernel_cos+0x230>)
 80047de:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047e2:	4604      	mov	r4, r0
 80047e4:	460d      	mov	r5, r1
 80047e6:	f7fb fec7 	bl	8000578 <__aeabi_dmul>
 80047ea:	a37b      	add	r3, pc, #492	; (adr r3, 80049d8 <__kernel_cos+0x238>)
 80047ec:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047f0:	f7fb fd0c 	bl	800020c <__adddf3>
 80047f4:	4622      	mov	r2, r4
 80047f6:	462b      	mov	r3, r5
 80047f8:	f7fb febe 	bl	8000578 <__aeabi_dmul>
 80047fc:	a378      	add	r3, pc, #480	; (adr r3, 80049e0 <__kernel_cos+0x240>)
 80047fe:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004802:	f7fb fd01 	bl	8000208 <__aeabi_dsub>
 8004806:	4622      	mov	r2, r4
 8004808:	462b      	mov	r3, r5
 800480a:	f7fb feb5 	bl	8000578 <__aeabi_dmul>
 800480e:	a376      	add	r3, pc, #472	; (adr r3, 80049e8 <__kernel_cos+0x248>)
 8004810:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004814:	f7fb fcfa 	bl	800020c <__adddf3>
 8004818:	4622      	mov	r2, r4
 800481a:	462b      	mov	r3, r5
 800481c:	f7fb feac 	bl	8000578 <__aeabi_dmul>
 8004820:	a373      	add	r3, pc, #460	; (adr r3, 80049f0 <__kernel_cos+0x250>)
 8004822:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004826:	f7fb fcef 	bl	8000208 <__aeabi_dsub>
 800482a:	4622      	mov	r2, r4
 800482c:	462b      	mov	r3, r5
 800482e:	f7fb fea3 	bl	8000578 <__aeabi_dmul>
 8004832:	a371      	add	r3, pc, #452	; (adr r3, 80049f8 <__kernel_cos+0x258>)
 8004834:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004838:	f7fb fce8 	bl	800020c <__adddf3>
 800483c:	4622      	mov	r2, r4
 800483e:	462b      	mov	r3, r5
 8004840:	f7fb fe9a 	bl	8000578 <__aeabi_dmul>
 8004844:	4682      	mov	sl, r0
 8004846:	468b      	mov	fp, r1
 8004848:	2200      	movs	r2, #0
 800484a:	4b71      	ldr	r3, [pc, #452]	; (8004a10 <__kernel_cos+0x270>)
 800484c:	4620      	mov	r0, r4
 800484e:	4629      	mov	r1, r5
 8004850:	f7fb fe92 	bl	8000578 <__aeabi_dmul>
 8004854:	4652      	mov	r2, sl
 8004856:	4680      	mov	r8, r0
 8004858:	4689      	mov	r9, r1
 800485a:	465b      	mov	r3, fp
 800485c:	4620      	mov	r0, r4
 800485e:	4629      	mov	r1, r5
 8004860:	f7fb fe8a 	bl	8000578 <__aeabi_dmul>
 8004864:	ec53 2b18 	vmov	r2, r3, d8
 8004868:	4604      	mov	r4, r0
 800486a:	460d      	mov	r5, r1
 800486c:	4630      	mov	r0, r6
 800486e:	4639      	mov	r1, r7
 8004870:	f7fb fe82 	bl	8000578 <__aeabi_dmul>
 8004874:	4602      	mov	r2, r0
 8004876:	460b      	mov	r3, r1
 8004878:	4620      	mov	r0, r4
 800487a:	4629      	mov	r1, r5
 800487c:	f7fb fcc4 	bl	8000208 <__aeabi_dsub>
 8004880:	4602      	mov	r2, r0
 8004882:	460b      	mov	r3, r1
 8004884:	4640      	mov	r0, r8
 8004886:	4649      	mov	r1, r9
 8004888:	f7fb fcbe 	bl	8000208 <__aeabi_dsub>
 800488c:	4602      	mov	r2, r0
 800488e:	460b      	mov	r3, r1
 8004890:	2000      	movs	r0, #0
 8004892:	4960      	ldr	r1, [pc, #384]	; (8004a14 <__kernel_cos+0x274>)
 8004894:	f7fb fcb8 	bl	8000208 <__aeabi_dsub>
 8004898:	ec41 0b10 	vmov	d0, r0, r1
 800489c:	b003      	add	sp, #12
 800489e:	ecbd 8b02 	vpop	{d8}
 80048a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048a6:	ee10 2a10 	vmov	r2, s0
 80048aa:	ee10 0a10 	vmov	r0, s0
 80048ae:	463b      	mov	r3, r7
 80048b0:	4639      	mov	r1, r7
 80048b2:	f7fb fe61 	bl	8000578 <__aeabi_dmul>
 80048b6:	a346      	add	r3, pc, #280	; (adr r3, 80049d0 <__kernel_cos+0x230>)
 80048b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048bc:	4604      	mov	r4, r0
 80048be:	460d      	mov	r5, r1
 80048c0:	f7fb fe5a 	bl	8000578 <__aeabi_dmul>
 80048c4:	a344      	add	r3, pc, #272	; (adr r3, 80049d8 <__kernel_cos+0x238>)
 80048c6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048ca:	f7fb fc9f 	bl	800020c <__adddf3>
 80048ce:	4622      	mov	r2, r4
 80048d0:	462b      	mov	r3, r5
 80048d2:	f7fb fe51 	bl	8000578 <__aeabi_dmul>
 80048d6:	a342      	add	r3, pc, #264	; (adr r3, 80049e0 <__kernel_cos+0x240>)
 80048d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048dc:	f7fb fc94 	bl	8000208 <__aeabi_dsub>
 80048e0:	4622      	mov	r2, r4
 80048e2:	462b      	mov	r3, r5
 80048e4:	f7fb fe48 	bl	8000578 <__aeabi_dmul>
 80048e8:	a33f      	add	r3, pc, #252	; (adr r3, 80049e8 <__kernel_cos+0x248>)
 80048ea:	e9d3 2300 	ldrd	r2, r3, [r3]
 80048ee:	f7fb fc8d 	bl	800020c <__adddf3>
 80048f2:	4622      	mov	r2, r4
 80048f4:	462b      	mov	r3, r5
 80048f6:	f7fb fe3f 	bl	8000578 <__aeabi_dmul>
 80048fa:	a33d      	add	r3, pc, #244	; (adr r3, 80049f0 <__kernel_cos+0x250>)
 80048fc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004900:	f7fb fc82 	bl	8000208 <__aeabi_dsub>
 8004904:	4622      	mov	r2, r4
 8004906:	462b      	mov	r3, r5
 8004908:	f7fb fe36 	bl	8000578 <__aeabi_dmul>
 800490c:	a33a      	add	r3, pc, #232	; (adr r3, 80049f8 <__kernel_cos+0x258>)
 800490e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004912:	f7fb fc7b 	bl	800020c <__adddf3>
 8004916:	462b      	mov	r3, r5
 8004918:	4622      	mov	r2, r4
 800491a:	f7fb fe2d 	bl	8000578 <__aeabi_dmul>
 800491e:	4b3e      	ldr	r3, [pc, #248]	; (8004a18 <__kernel_cos+0x278>)
 8004920:	4599      	cmp	r9, r3
 8004922:	4682      	mov	sl, r0
 8004924:	468b      	mov	fp, r1
 8004926:	dd8f      	ble.n	8004848 <__kernel_cos+0xa8>
 8004928:	4b3c      	ldr	r3, [pc, #240]	; (8004a1c <__kernel_cos+0x27c>)
 800492a:	4599      	cmp	r9, r3
 800492c:	dc44      	bgt.n	80049b8 <__kernel_cos+0x218>
 800492e:	2200      	movs	r2, #0
 8004930:	f5a9 1300 	sub.w	r3, r9, #2097152	; 0x200000
 8004934:	2000      	movs	r0, #0
 8004936:	4937      	ldr	r1, [pc, #220]	; (8004a14 <__kernel_cos+0x274>)
 8004938:	4690      	mov	r8, r2
 800493a:	4699      	mov	r9, r3
 800493c:	f7fb fc64 	bl	8000208 <__aeabi_dsub>
 8004940:	e9cd 0100 	strd	r0, r1, [sp]
 8004944:	2200      	movs	r2, #0
 8004946:	4b32      	ldr	r3, [pc, #200]	; (8004a10 <__kernel_cos+0x270>)
 8004948:	4620      	mov	r0, r4
 800494a:	4629      	mov	r1, r5
 800494c:	f7fb fe14 	bl	8000578 <__aeabi_dmul>
 8004950:	4642      	mov	r2, r8
 8004952:	464b      	mov	r3, r9
 8004954:	f7fb fc58 	bl	8000208 <__aeabi_dsub>
 8004958:	4652      	mov	r2, sl
 800495a:	4680      	mov	r8, r0
 800495c:	4689      	mov	r9, r1
 800495e:	465b      	mov	r3, fp
 8004960:	4620      	mov	r0, r4
 8004962:	4629      	mov	r1, r5
 8004964:	f7fb fe08 	bl	8000578 <__aeabi_dmul>
 8004968:	ec53 2b18 	vmov	r2, r3, d8
 800496c:	4604      	mov	r4, r0
 800496e:	460d      	mov	r5, r1
 8004970:	4630      	mov	r0, r6
 8004972:	4639      	mov	r1, r7
 8004974:	f7fb fe00 	bl	8000578 <__aeabi_dmul>
 8004978:	4602      	mov	r2, r0
 800497a:	460b      	mov	r3, r1
 800497c:	4620      	mov	r0, r4
 800497e:	4629      	mov	r1, r5
 8004980:	f7fb fc42 	bl	8000208 <__aeabi_dsub>
 8004984:	4602      	mov	r2, r0
 8004986:	460b      	mov	r3, r1
 8004988:	4640      	mov	r0, r8
 800498a:	4649      	mov	r1, r9
 800498c:	f7fb fc3c 	bl	8000208 <__aeabi_dsub>
 8004990:	4602      	mov	r2, r0
 8004992:	460b      	mov	r3, r1
 8004994:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004998:	f7fb fc36 	bl	8000208 <__aeabi_dsub>
 800499c:	ec41 0b10 	vmov	d0, r0, r1
 80049a0:	b003      	add	sp, #12
 80049a2:	ecbd 8b02 	vpop	{d8}
 80049a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80049aa:	ed9f 0b15 	vldr	d0, [pc, #84]	; 8004a00 <__kernel_cos+0x260>
 80049ae:	b003      	add	sp, #12
 80049b0:	ecbd 8b02 	vpop	{d8}
 80049b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80049b8:	ed9f 7b13 	vldr	d7, [pc, #76]	; 8004a08 <__kernel_cos+0x268>
 80049bc:	f04f 0800 	mov.w	r8, #0
 80049c0:	ed8d 7b00 	vstr	d7, [sp]
 80049c4:	f8df 9058 	ldr.w	r9, [pc, #88]	; 8004a20 <__kernel_cos+0x280>
 80049c8:	e7bc      	b.n	8004944 <__kernel_cos+0x1a4>
 80049ca:	bf00      	nop
 80049cc:	f3af 8000 	nop.w
 80049d0:	be8838d4 	.word	0xbe8838d4
 80049d4:	bda8fae9 	.word	0xbda8fae9
 80049d8:	bdb4b1c4 	.word	0xbdb4b1c4
 80049dc:	3e21ee9e 	.word	0x3e21ee9e
 80049e0:	809c52ad 	.word	0x809c52ad
 80049e4:	3e927e4f 	.word	0x3e927e4f
 80049e8:	19cb1590 	.word	0x19cb1590
 80049ec:	3efa01a0 	.word	0x3efa01a0
 80049f0:	16c15177 	.word	0x16c15177
 80049f4:	3f56c16c 	.word	0x3f56c16c
 80049f8:	5555554c 	.word	0x5555554c
 80049fc:	3fa55555 	.word	0x3fa55555
 8004a00:	00000000 	.word	0x00000000
 8004a04:	3ff00000 	.word	0x3ff00000
 8004a08:	00000000 	.word	0x00000000
 8004a0c:	3fe70000 	.word	0x3fe70000
 8004a10:	3fe00000 	.word	0x3fe00000
 8004a14:	3ff00000 	.word	0x3ff00000
 8004a18:	3fd33332 	.word	0x3fd33332
 8004a1c:	3fe90000 	.word	0x3fe90000
 8004a20:	3fd20000 	.word	0x3fd20000
 8004a24:	00000000 	.word	0x00000000

08004a28 <__kernel_rem_pio2>:
 8004a28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a2c:	f5ad 7d19 	sub.w	sp, sp, #612	; 0x264
 8004a30:	4cc1      	ldr	r4, [pc, #772]	; (8004d38 <__kernel_rem_pio2+0x310>)
 8004a32:	9ea2      	ldr	r6, [sp, #648]	; 0x288
 8004a34:	4dc1      	ldr	r5, [pc, #772]	; (8004d3c <__kernel_rem_pio2+0x314>)
 8004a36:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 8004a3a:	9307      	str	r3, [sp, #28]
 8004a3c:	1ed4      	subs	r4, r2, #3
 8004a3e:	fb85 7504 	smull	r7, r5, r5, r4
 8004a42:	17e4      	asrs	r4, r4, #31
 8004a44:	ebc4 04a5 	rsb	r4, r4, r5, asr #2
 8004a48:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
 8004a4c:	461d      	mov	r5, r3
 8004a4e:	1c63      	adds	r3, r4, #1
 8004a50:	eba3 0383 	sub.w	r3, r3, r3, lsl #2
 8004a54:	3d01      	subs	r5, #1
 8004a56:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 8004a5a:	9305      	str	r3, [sp, #20]
 8004a5c:	1973      	adds	r3, r6, r5
 8004a5e:	9604      	str	r6, [sp, #16]
 8004a60:	9409      	str	r4, [sp, #36]	; 0x24
 8004a62:	9501      	str	r5, [sp, #4]
 8004a64:	9003      	str	r0, [sp, #12]
 8004a66:	910b      	str	r1, [sp, #44]	; 0x2c
 8004a68:	eba4 0705 	sub.w	r7, r4, r5
 8004a6c:	d41a      	bmi.n	8004aa4 <__kernel_rem_pio2+0x7c>
 8004a6e:	443b      	add	r3, r7
 8004a70:	2400      	movs	r4, #0
 8004a72:	2500      	movs	r5, #0
 8004a74:	1c5e      	adds	r6, r3, #1
 8004a76:	f10d 0880 	add.w	r8, sp, #128	; 0x80
 8004a7a:	f8dd 928c 	ldr.w	r9, [sp, #652]	; 0x28c
 8004a7e:	e008      	b.n	8004a92 <__kernel_rem_pio2+0x6a>
 8004a80:	f859 0027 	ldr.w	r0, [r9, r7, lsl #2]
 8004a84:	f7fb fd0e 	bl	80004a4 <__aeabi_i2d>
 8004a88:	3701      	adds	r7, #1
 8004a8a:	42b7      	cmp	r7, r6
 8004a8c:	e8e8 0102 	strd	r0, r1, [r8], #8
 8004a90:	d008      	beq.n	8004aa4 <__kernel_rem_pio2+0x7c>
 8004a92:	2f00      	cmp	r7, #0
 8004a94:	daf4      	bge.n	8004a80 <__kernel_rem_pio2+0x58>
 8004a96:	3701      	adds	r7, #1
 8004a98:	4620      	mov	r0, r4
 8004a9a:	4629      	mov	r1, r5
 8004a9c:	42b7      	cmp	r7, r6
 8004a9e:	e8e8 0102 	strd	r0, r1, [r8], #8
 8004aa2:	d1f6      	bne.n	8004a92 <__kernel_rem_pio2+0x6a>
 8004aa4:	9b04      	ldr	r3, [sp, #16]
 8004aa6:	2b00      	cmp	r3, #0
 8004aa8:	9b07      	ldr	r3, [sp, #28]
 8004aaa:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8004aae:	9302      	str	r3, [sp, #8]
 8004ab0:	db2a      	blt.n	8004b08 <__kernel_rem_pio2+0xe0>
 8004ab2:	9a03      	ldr	r2, [sp, #12]
 8004ab4:	a920      	add	r1, sp, #128	; 0x80
 8004ab6:	eb02 0803 	add.w	r8, r2, r3
 8004aba:	eb01 0903 	add.w	r9, r1, r3
 8004abe:	9b04      	ldr	r3, [sp, #16]
 8004ac0:	aa72      	add	r2, sp, #456	; 0x1c8
 8004ac2:	eb02 0bc3 	add.w	fp, r2, r3, lsl #3
 8004ac6:	f50d 7ae0 	add.w	sl, sp, #448	; 0x1c0
 8004aca:	9b01      	ldr	r3, [sp, #4]
 8004acc:	2b00      	cmp	r3, #0
 8004ace:	f04f 0600 	mov.w	r6, #0
 8004ad2:	f04f 0700 	mov.w	r7, #0
 8004ad6:	db11      	blt.n	8004afc <__kernel_rem_pio2+0xd4>
 8004ad8:	9c03      	ldr	r4, [sp, #12]
 8004ada:	464d      	mov	r5, r9
 8004adc:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 8004ae0:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 8004ae4:	f7fb fd48 	bl	8000578 <__aeabi_dmul>
 8004ae8:	4602      	mov	r2, r0
 8004aea:	460b      	mov	r3, r1
 8004aec:	4630      	mov	r0, r6
 8004aee:	4639      	mov	r1, r7
 8004af0:	f7fb fb8c 	bl	800020c <__adddf3>
 8004af4:	4544      	cmp	r4, r8
 8004af6:	4606      	mov	r6, r0
 8004af8:	460f      	mov	r7, r1
 8004afa:	d1ef      	bne.n	8004adc <__kernel_rem_pio2+0xb4>
 8004afc:	e8ea 6702 	strd	r6, r7, [sl], #8
 8004b00:	45da      	cmp	sl, fp
 8004b02:	f109 0908 	add.w	r9, r9, #8
 8004b06:	d1e0      	bne.n	8004aca <__kernel_rem_pio2+0xa2>
 8004b08:	e9dd 0402 	ldrd	r0, r4, [sp, #8]
 8004b0c:	9904      	ldr	r1, [sp, #16]
 8004b0e:	4420      	add	r0, r4
 8004b10:	008b      	lsls	r3, r1, #2
 8004b12:	4682      	mov	sl, r0
 8004b14:	a80b      	add	r0, sp, #44	; 0x2c
 8004b16:	f1a3 0208 	sub.w	r2, r3, #8
 8004b1a:	18c3      	adds	r3, r0, r3
 8004b1c:	9308      	str	r3, [sp, #32]
 8004b1e:	ab0c      	add	r3, sp, #48	; 0x30
 8004b20:	4413      	add	r3, r2
 8004b22:	930a      	str	r3, [sp, #40]	; 0x28
 8004b24:	468b      	mov	fp, r1
 8004b26:	ab98      	add	r3, sp, #608	; 0x260
 8004b28:	eb03 03cb 	add.w	r3, r3, fp, lsl #3
 8004b2c:	f1bb 0f00 	cmp.w	fp, #0
 8004b30:	e953 4528 	ldrd	r4, r5, [r3, #-160]	; 0xa0
 8004b34:	dd29      	ble.n	8004b8a <__kernel_rem_pio2+0x162>
 8004b36:	ab70      	add	r3, sp, #448	; 0x1c0
 8004b38:	eb03 08cb 	add.w	r8, r3, fp, lsl #3
 8004b3c:	f10d 0930 	add.w	r9, sp, #48	; 0x30
 8004b40:	2200      	movs	r2, #0
 8004b42:	4b7f      	ldr	r3, [pc, #508]	; (8004d40 <__kernel_rem_pio2+0x318>)
 8004b44:	4620      	mov	r0, r4
 8004b46:	4629      	mov	r1, r5
 8004b48:	f7fb fd16 	bl	8000578 <__aeabi_dmul>
 8004b4c:	f7fb ffc4 	bl	8000ad8 <__aeabi_d2iz>
 8004b50:	f7fb fca8 	bl	80004a4 <__aeabi_i2d>
 8004b54:	2200      	movs	r2, #0
 8004b56:	4b7b      	ldr	r3, [pc, #492]	; (8004d44 <__kernel_rem_pio2+0x31c>)
 8004b58:	4606      	mov	r6, r0
 8004b5a:	460f      	mov	r7, r1
 8004b5c:	f7fb fd0c 	bl	8000578 <__aeabi_dmul>
 8004b60:	4602      	mov	r2, r0
 8004b62:	460b      	mov	r3, r1
 8004b64:	4620      	mov	r0, r4
 8004b66:	4629      	mov	r1, r5
 8004b68:	f7fb fb4e 	bl	8000208 <__aeabi_dsub>
 8004b6c:	f7fb ffb4 	bl	8000ad8 <__aeabi_d2iz>
 8004b70:	e978 2302 	ldrd	r2, r3, [r8, #-8]!
 8004b74:	f849 0b04 	str.w	r0, [r9], #4
 8004b78:	4639      	mov	r1, r7
 8004b7a:	4630      	mov	r0, r6
 8004b7c:	f7fb fb46 	bl	800020c <__adddf3>
 8004b80:	ab70      	add	r3, sp, #448	; 0x1c0
 8004b82:	4598      	cmp	r8, r3
 8004b84:	4604      	mov	r4, r0
 8004b86:	460d      	mov	r5, r1
 8004b88:	d1da      	bne.n	8004b40 <__kernel_rem_pio2+0x118>
 8004b8a:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8004b8e:	ec45 4b10 	vmov	d0, r4, r5
 8004b92:	4648      	mov	r0, r9
 8004b94:	f000 fd44 	bl	8005620 <scalbn>
 8004b98:	ec55 4b10 	vmov	r4, r5, d0
 8004b9c:	2200      	movs	r2, #0
 8004b9e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004ba2:	ee10 0a10 	vmov	r0, s0
 8004ba6:	4629      	mov	r1, r5
 8004ba8:	f7fb fce6 	bl	8000578 <__aeabi_dmul>
 8004bac:	ec41 0b10 	vmov	d0, r0, r1
 8004bb0:	f000 fc1a 	bl	80053e8 <floor>
 8004bb4:	2200      	movs	r2, #0
 8004bb6:	ec51 0b10 	vmov	r0, r1, d0
 8004bba:	4b63      	ldr	r3, [pc, #396]	; (8004d48 <__kernel_rem_pio2+0x320>)
 8004bbc:	f7fb fcdc 	bl	8000578 <__aeabi_dmul>
 8004bc0:	4602      	mov	r2, r0
 8004bc2:	460b      	mov	r3, r1
 8004bc4:	4620      	mov	r0, r4
 8004bc6:	4629      	mov	r1, r5
 8004bc8:	f7fb fb1e 	bl	8000208 <__aeabi_dsub>
 8004bcc:	460d      	mov	r5, r1
 8004bce:	4604      	mov	r4, r0
 8004bd0:	f7fb ff82 	bl	8000ad8 <__aeabi_d2iz>
 8004bd4:	4680      	mov	r8, r0
 8004bd6:	f7fb fc65 	bl	80004a4 <__aeabi_i2d>
 8004bda:	460b      	mov	r3, r1
 8004bdc:	4602      	mov	r2, r0
 8004bde:	4629      	mov	r1, r5
 8004be0:	4620      	mov	r0, r4
 8004be2:	f7fb fb11 	bl	8000208 <__aeabi_dsub>
 8004be6:	464b      	mov	r3, r9
 8004be8:	2b00      	cmp	r3, #0
 8004bea:	4606      	mov	r6, r0
 8004bec:	460f      	mov	r7, r1
 8004bee:	f340 80e0 	ble.w	8004db2 <__kernel_rem_pio2+0x38a>
 8004bf2:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004bf6:	a90c      	add	r1, sp, #48	; 0x30
 8004bf8:	f1c9 0318 	rsb	r3, r9, #24
 8004bfc:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
 8004c00:	fa45 f103 	asr.w	r1, r5, r3
 8004c04:	fa01 f303 	lsl.w	r3, r1, r3
 8004c08:	a80c      	add	r0, sp, #48	; 0x30
 8004c0a:	1aeb      	subs	r3, r5, r3
 8004c0c:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
 8004c10:	f1c9 0517 	rsb	r5, r9, #23
 8004c14:	4488      	add	r8, r1
 8004c16:	fa43 f505 	asr.w	r5, r3, r5
 8004c1a:	2d00      	cmp	r5, #0
 8004c1c:	dd2c      	ble.n	8004c78 <__kernel_rem_pio2+0x250>
 8004c1e:	f1bb 0f00 	cmp.w	fp, #0
 8004c22:	f108 0801 	add.w	r8, r8, #1
 8004c26:	f340 8286 	ble.w	8005136 <__kernel_rem_pio2+0x70e>
 8004c2a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8004c2c:	2c00      	cmp	r4, #0
 8004c2e:	f040 80a6 	bne.w	8004d7e <__kernel_rem_pio2+0x356>
 8004c32:	f1bb 0f01 	cmp.w	fp, #1
 8004c36:	d00a      	beq.n	8004c4e <__kernel_rem_pio2+0x226>
 8004c38:	a90c      	add	r1, sp, #48	; 0x30
 8004c3a:	2201      	movs	r2, #1
 8004c3c:	f851 4f04 	ldr.w	r4, [r1, #4]!
 8004c40:	1c53      	adds	r3, r2, #1
 8004c42:	2c00      	cmp	r4, #0
 8004c44:	f040 809d 	bne.w	8004d82 <__kernel_rem_pio2+0x35a>
 8004c48:	459b      	cmp	fp, r3
 8004c4a:	461a      	mov	r2, r3
 8004c4c:	d1f6      	bne.n	8004c3c <__kernel_rem_pio2+0x214>
 8004c4e:	9b05      	ldr	r3, [sp, #20]
 8004c50:	2b00      	cmp	r3, #0
 8004c52:	dd0e      	ble.n	8004c72 <__kernel_rem_pio2+0x24a>
 8004c54:	2b01      	cmp	r3, #1
 8004c56:	f000 80d8 	beq.w	8004e0a <__kernel_rem_pio2+0x3e2>
 8004c5a:	2b02      	cmp	r3, #2
 8004c5c:	d109      	bne.n	8004c72 <__kernel_rem_pio2+0x24a>
 8004c5e:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004c62:	ab0c      	add	r3, sp, #48	; 0x30
 8004c64:	a90c      	add	r1, sp, #48	; 0x30
 8004c66:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8004c6a:	f3c3 0315 	ubfx	r3, r3, #0, #22
 8004c6e:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 8004c72:	2d02      	cmp	r5, #2
 8004c74:	f000 80ae 	beq.w	8004dd4 <__kernel_rem_pio2+0x3ac>
 8004c78:	2200      	movs	r2, #0
 8004c7a:	2300      	movs	r3, #0
 8004c7c:	4630      	mov	r0, r6
 8004c7e:	4639      	mov	r1, r7
 8004c80:	f7fb fee2 	bl	8000a48 <__aeabi_dcmpeq>
 8004c84:	2800      	cmp	r0, #0
 8004c86:	f000 8258 	beq.w	800513a <__kernel_rem_pio2+0x712>
 8004c8a:	9b04      	ldr	r3, [sp, #16]
 8004c8c:	f10b 39ff 	add.w	r9, fp, #4294967295	; 0xffffffff
 8004c90:	454b      	cmp	r3, r9
 8004c92:	dc10      	bgt.n	8004cb6 <__kernel_rem_pio2+0x28e>
 8004c94:	f10b 4380 	add.w	r3, fp, #1073741824	; 0x40000000
 8004c98:	aa0c      	add	r2, sp, #48	; 0x30
 8004c9a:	3b01      	subs	r3, #1
 8004c9c:	9808      	ldr	r0, [sp, #32]
 8004c9e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 8004ca2:	2200      	movs	r2, #0
 8004ca4:	f853 1904 	ldr.w	r1, [r3], #-4
 8004ca8:	4283      	cmp	r3, r0
 8004caa:	ea42 0201 	orr.w	r2, r2, r1
 8004cae:	d1f9      	bne.n	8004ca4 <__kernel_rem_pio2+0x27c>
 8004cb0:	2a00      	cmp	r2, #0
 8004cb2:	f040 80b5 	bne.w	8004e20 <__kernel_rem_pio2+0x3f8>
 8004cb6:	9b04      	ldr	r3, [sp, #16]
 8004cb8:	aa0c      	add	r2, sp, #48	; 0x30
 8004cba:	3b01      	subs	r3, #1
 8004cbc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8004cc0:	2b00      	cmp	r3, #0
 8004cc2:	f040 80a0 	bne.w	8004e06 <__kernel_rem_pio2+0x3de>
 8004cc6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004cc8:	2301      	movs	r3, #1
 8004cca:	f852 1904 	ldr.w	r1, [r2], #-4
 8004cce:	3301      	adds	r3, #1
 8004cd0:	2900      	cmp	r1, #0
 8004cd2:	d0fa      	beq.n	8004cca <__kernel_rem_pio2+0x2a2>
 8004cd4:	445b      	add	r3, fp
 8004cd6:	f10b 0901 	add.w	r9, fp, #1
 8004cda:	4599      	cmp	r9, r3
 8004cdc:	9306      	str	r3, [sp, #24]
 8004cde:	dc4b      	bgt.n	8004d78 <__kernel_rem_pio2+0x350>
 8004ce0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004ce2:	9907      	ldr	r1, [sp, #28]
 8004ce4:	eb09 0802 	add.w	r8, r9, r2
 8004ce8:	eb01 050b 	add.w	r5, r1, fp
 8004cec:	f108 4880 	add.w	r8, r8, #1073741824	; 0x40000000
 8004cf0:	eb02 0b03 	add.w	fp, r2, r3
 8004cf4:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8004cf6:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004cfa:	eb03 0888 	add.w	r8, r3, r8, lsl #2
 8004cfe:	ab70      	add	r3, sp, #448	; 0x1c0
 8004d00:	eb03 09c9 	add.w	r9, r3, r9, lsl #3
 8004d04:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8004d06:	a920      	add	r1, sp, #128	; 0x80
 8004d08:	eb03 038b 	add.w	r3, r3, fp, lsl #2
 8004d0c:	eb01 05c5 	add.w	r5, r1, r5, lsl #3
 8004d10:	9302      	str	r3, [sp, #8]
 8004d12:	f858 0f04 	ldr.w	r0, [r8, #4]!
 8004d16:	f7fb fbc5 	bl	80004a4 <__aeabi_i2d>
 8004d1a:	460b      	mov	r3, r1
 8004d1c:	9901      	ldr	r1, [sp, #4]
 8004d1e:	4602      	mov	r2, r0
 8004d20:	2900      	cmp	r1, #0
 8004d22:	f105 0b08 	add.w	fp, r5, #8
 8004d26:	e9c5 2300 	strd	r2, r3, [r5]
 8004d2a:	f04f 0600 	mov.w	r6, #0
 8004d2e:	f04f 0700 	mov.w	r7, #0
 8004d32:	db1b      	blt.n	8004d6c <__kernel_rem_pio2+0x344>
 8004d34:	9c03      	ldr	r4, [sp, #12]
 8004d36:	e00b      	b.n	8004d50 <__kernel_rem_pio2+0x328>
 8004d38:	0800a830 	.word	0x0800a830
 8004d3c:	2aaaaaab 	.word	0x2aaaaaab
 8004d40:	3e700000 	.word	0x3e700000
 8004d44:	41700000 	.word	0x41700000
 8004d48:	40200000 	.word	0x40200000
 8004d4c:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 8004d50:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 8004d54:	f7fb fc10 	bl	8000578 <__aeabi_dmul>
 8004d58:	4602      	mov	r2, r0
 8004d5a:	460b      	mov	r3, r1
 8004d5c:	4630      	mov	r0, r6
 8004d5e:	4639      	mov	r1, r7
 8004d60:	f7fb fa54 	bl	800020c <__adddf3>
 8004d64:	4554      	cmp	r4, sl
 8004d66:	4606      	mov	r6, r0
 8004d68:	460f      	mov	r7, r1
 8004d6a:	d1ef      	bne.n	8004d4c <__kernel_rem_pio2+0x324>
 8004d6c:	9b02      	ldr	r3, [sp, #8]
 8004d6e:	4598      	cmp	r8, r3
 8004d70:	e8e9 6702 	strd	r6, r7, [r9], #8
 8004d74:	465d      	mov	r5, fp
 8004d76:	d1cc      	bne.n	8004d12 <__kernel_rem_pio2+0x2ea>
 8004d78:	f8dd b018 	ldr.w	fp, [sp, #24]
 8004d7c:	e6d3      	b.n	8004b26 <__kernel_rem_pio2+0xfe>
 8004d7e:	2301      	movs	r3, #1
 8004d80:	2200      	movs	r2, #0
 8004d82:	a90c      	add	r1, sp, #48	; 0x30
 8004d84:	f1c4 7480 	rsb	r4, r4, #16777216	; 0x1000000
 8004d88:	459b      	cmp	fp, r3
 8004d8a:	f841 4022 	str.w	r4, [r1, r2, lsl #2]
 8004d8e:	dd0e      	ble.n	8004dae <__kernel_rem_pio2+0x386>
 8004d90:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8004d94:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 8004d98:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 8004d9c:	f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
 8004da0:	e000      	b.n	8004da4 <__kernel_rem_pio2+0x37c>
 8004da2:	681a      	ldr	r2, [r3, #0]
 8004da4:	1a8a      	subs	r2, r1, r2
 8004da6:	f843 2b04 	str.w	r2, [r3], #4
 8004daa:	4283      	cmp	r3, r0
 8004dac:	d1f9      	bne.n	8004da2 <__kernel_rem_pio2+0x37a>
 8004dae:	2401      	movs	r4, #1
 8004db0:	e74d      	b.n	8004c4e <__kernel_rem_pio2+0x226>
 8004db2:	d106      	bne.n	8004dc2 <__kernel_rem_pio2+0x39a>
 8004db4:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004db8:	aa0c      	add	r2, sp, #48	; 0x30
 8004dba:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
 8004dbe:	15ed      	asrs	r5, r5, #23
 8004dc0:	e72b      	b.n	8004c1a <__kernel_rem_pio2+0x1f2>
 8004dc2:	2200      	movs	r2, #0
 8004dc4:	4b7e      	ldr	r3, [pc, #504]	; (8004fc0 <__kernel_rem_pio2+0x598>)
 8004dc6:	f7fb fe5d 	bl	8000a84 <__aeabi_dcmpge>
 8004dca:	2800      	cmp	r0, #0
 8004dcc:	f040 81a9 	bne.w	8005122 <__kernel_rem_pio2+0x6fa>
 8004dd0:	4605      	mov	r5, r0
 8004dd2:	e751      	b.n	8004c78 <__kernel_rem_pio2+0x250>
 8004dd4:	4632      	mov	r2, r6
 8004dd6:	463b      	mov	r3, r7
 8004dd8:	2000      	movs	r0, #0
 8004dda:	497a      	ldr	r1, [pc, #488]	; (8004fc4 <__kernel_rem_pio2+0x59c>)
 8004ddc:	f7fb fa14 	bl	8000208 <__aeabi_dsub>
 8004de0:	4606      	mov	r6, r0
 8004de2:	460f      	mov	r7, r1
 8004de4:	2c00      	cmp	r4, #0
 8004de6:	f43f af47 	beq.w	8004c78 <__kernel_rem_pio2+0x250>
 8004dea:	9805      	ldr	r0, [sp, #20]
 8004dec:	ed9f 0b70 	vldr	d0, [pc, #448]	; 8004fb0 <__kernel_rem_pio2+0x588>
 8004df0:	f000 fc16 	bl	8005620 <scalbn>
 8004df4:	4630      	mov	r0, r6
 8004df6:	4639      	mov	r1, r7
 8004df8:	ec53 2b10 	vmov	r2, r3, d0
 8004dfc:	f7fb fa04 	bl	8000208 <__aeabi_dsub>
 8004e00:	4606      	mov	r6, r0
 8004e02:	460f      	mov	r7, r1
 8004e04:	e738      	b.n	8004c78 <__kernel_rem_pio2+0x250>
 8004e06:	2301      	movs	r3, #1
 8004e08:	e764      	b.n	8004cd4 <__kernel_rem_pio2+0x2ac>
 8004e0a:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004e0e:	ab0c      	add	r3, sp, #48	; 0x30
 8004e10:	a90c      	add	r1, sp, #48	; 0x30
 8004e12:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8004e16:	f3c3 0316 	ubfx	r3, r3, #0, #23
 8004e1a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 8004e1e:	e728      	b.n	8004c72 <__kernel_rem_pio2+0x24a>
 8004e20:	ab0c      	add	r3, sp, #48	; 0x30
 8004e22:	9a05      	ldr	r2, [sp, #20]
 8004e24:	f853 3029 	ldr.w	r3, [r3, r9, lsl #2]
 8004e28:	3a18      	subs	r2, #24
 8004e2a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 8004e2e:	9205      	str	r2, [sp, #20]
 8004e30:	b96b      	cbnz	r3, 8004e4e <__kernel_rem_pio2+0x426>
 8004e32:	f109 4380 	add.w	r3, r9, #1073741824	; 0x40000000
 8004e36:	3b01      	subs	r3, #1
 8004e38:	a90c      	add	r1, sp, #48	; 0x30
 8004e3a:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 8004e3e:	f853 1904 	ldr.w	r1, [r3], #-4
 8004e42:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 8004e46:	3a18      	subs	r2, #24
 8004e48:	2900      	cmp	r1, #0
 8004e4a:	d0f8      	beq.n	8004e3e <__kernel_rem_pio2+0x416>
 8004e4c:	9205      	str	r2, [sp, #20]
 8004e4e:	9805      	ldr	r0, [sp, #20]
 8004e50:	ed9f 0b57 	vldr	d0, [pc, #348]	; 8004fb0 <__kernel_rem_pio2+0x588>
 8004e54:	f000 fbe4 	bl	8005620 <scalbn>
 8004e58:	f1b9 0f00 	cmp.w	r9, #0
 8004e5c:	ec55 4b10 	vmov	r4, r5, d0
 8004e60:	f2c0 81c9 	blt.w	80051f6 <__kernel_rem_pio2+0x7ce>
 8004e64:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8004e68:	aa70      	add	r2, sp, #448	; 0x1c0
 8004e6a:	eb02 0803 	add.w	r8, r2, r3
 8004e6e:	9308      	str	r3, [sp, #32]
 8004e70:	ab0c      	add	r3, sp, #48	; 0x30
 8004e72:	eb03 0689 	add.w	r6, r3, r9, lsl #2
 8004e76:	f8df b150 	ldr.w	fp, [pc, #336]	; 8004fc8 <__kernel_rem_pio2+0x5a0>
 8004e7a:	f04f 0a00 	mov.w	sl, #0
 8004e7e:	f108 0708 	add.w	r7, r8, #8
 8004e82:	3604      	adds	r6, #4
 8004e84:	f856 0d04 	ldr.w	r0, [r6, #-4]!
 8004e88:	f7fb fb0c 	bl	80004a4 <__aeabi_i2d>
 8004e8c:	4622      	mov	r2, r4
 8004e8e:	462b      	mov	r3, r5
 8004e90:	f7fb fb72 	bl	8000578 <__aeabi_dmul>
 8004e94:	465b      	mov	r3, fp
 8004e96:	e967 0102 	strd	r0, r1, [r7, #-8]!
 8004e9a:	4652      	mov	r2, sl
 8004e9c:	4620      	mov	r0, r4
 8004e9e:	4629      	mov	r1, r5
 8004ea0:	f7fb fb6a 	bl	8000578 <__aeabi_dmul>
 8004ea4:	ab0c      	add	r3, sp, #48	; 0x30
 8004ea6:	429e      	cmp	r6, r3
 8004ea8:	4604      	mov	r4, r0
 8004eaa:	460d      	mov	r5, r1
 8004eac:	d1ea      	bne.n	8004e84 <__kernel_rem_pio2+0x45c>
 8004eae:	ab48      	add	r3, sp, #288	; 0x120
 8004eb0:	9303      	str	r3, [sp, #12]
 8004eb2:	9301      	str	r3, [sp, #4]
 8004eb4:	f8cd 9014 	str.w	r9, [sp, #20]
 8004eb8:	f109 0301 	add.w	r3, r9, #1
 8004ebc:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8004ec0:	9302      	str	r3, [sp, #8]
 8004ec2:	46c3      	mov	fp, r8
 8004ec4:	f04f 0a00 	mov.w	sl, #0
 8004ec8:	f1b9 0f00 	cmp.w	r9, #0
 8004ecc:	f2c0 8130 	blt.w	8005130 <__kernel_rem_pio2+0x708>
 8004ed0:	f8df 80f8 	ldr.w	r8, [pc, #248]	; 8004fcc <__kernel_rem_pio2+0x5a4>
 8004ed4:	465d      	mov	r5, fp
 8004ed6:	a338      	add	r3, pc, #224	; (adr r3, 8004fb8 <__kernel_rem_pio2+0x590>)
 8004ed8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004edc:	2600      	movs	r6, #0
 8004ede:	2700      	movs	r7, #0
 8004ee0:	2400      	movs	r4, #0
 8004ee2:	e003      	b.n	8004eec <__kernel_rem_pio2+0x4c4>
 8004ee4:	4554      	cmp	r4, sl
 8004ee6:	dc10      	bgt.n	8004f0a <__kernel_rem_pio2+0x4e2>
 8004ee8:	e8f8 2302 	ldrd	r2, r3, [r8], #8
 8004eec:	e8f5 0102 	ldrd	r0, r1, [r5], #8
 8004ef0:	f7fb fb42 	bl	8000578 <__aeabi_dmul>
 8004ef4:	4602      	mov	r2, r0
 8004ef6:	460b      	mov	r3, r1
 8004ef8:	4630      	mov	r0, r6
 8004efa:	4639      	mov	r1, r7
 8004efc:	f7fb f986 	bl	800020c <__adddf3>
 8004f00:	3401      	adds	r4, #1
 8004f02:	45a1      	cmp	r9, r4
 8004f04:	4606      	mov	r6, r0
 8004f06:	460f      	mov	r7, r1
 8004f08:	daec      	bge.n	8004ee4 <__kernel_rem_pio2+0x4bc>
 8004f0a:	9b01      	ldr	r3, [sp, #4]
 8004f0c:	e8e3 6702 	strd	r6, r7, [r3], #8
 8004f10:	9301      	str	r3, [sp, #4]
 8004f12:	9b02      	ldr	r3, [sp, #8]
 8004f14:	f10a 0a01 	add.w	sl, sl, #1
 8004f18:	459a      	cmp	sl, r3
 8004f1a:	f1ab 0b08 	sub.w	fp, fp, #8
 8004f1e:	d1d3      	bne.n	8004ec8 <__kernel_rem_pio2+0x4a0>
 8004f20:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 8004f22:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8004f26:	2b03      	cmp	r3, #3
 8004f28:	d839      	bhi.n	8004f9e <__kernel_rem_pio2+0x576>
 8004f2a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004f2e:	00df      	.short	0x00df
 8004f30:	00060006 	.word	0x00060006
 8004f34:	0053      	.short	0x0053
 8004f36:	ab48      	add	r3, sp, #288	; 0x120
 8004f38:	9303      	str	r3, [sp, #12]
 8004f3a:	f1b9 0f00 	cmp.w	r9, #0
 8004f3e:	f04f 0000 	mov.w	r0, #0
 8004f42:	f04f 0100 	mov.w	r1, #0
 8004f46:	db09      	blt.n	8004f5c <__kernel_rem_pio2+0x534>
 8004f48:	9d03      	ldr	r5, [sp, #12]
 8004f4a:	eb05 04c9 	add.w	r4, r5, r9, lsl #3
 8004f4e:	3408      	adds	r4, #8
 8004f50:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 8004f54:	f7fb f95a 	bl	800020c <__adddf3>
 8004f58:	42a5      	cmp	r5, r4
 8004f5a:	d1f9      	bne.n	8004f50 <__kernel_rem_pio2+0x528>
 8004f5c:	9b07      	ldr	r3, [sp, #28]
 8004f5e:	2b00      	cmp	r3, #0
 8004f60:	f040 8127 	bne.w	80051b2 <__kernel_rem_pio2+0x78a>
 8004f64:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004f66:	e9c3 0100 	strd	r0, r1, [r3]
 8004f6a:	460b      	mov	r3, r1
 8004f6c:	9903      	ldr	r1, [sp, #12]
 8004f6e:	4602      	mov	r2, r0
 8004f70:	e9d1 0100 	ldrd	r0, r1, [r1]
 8004f74:	f7fb f948 	bl	8000208 <__aeabi_dsub>
 8004f78:	f1b9 0f00 	cmp.w	r9, #0
 8004f7c:	dd0c      	ble.n	8004f98 <__kernel_rem_pio2+0x570>
 8004f7e:	ad4a      	add	r5, sp, #296	; 0x128
 8004f80:	2401      	movs	r4, #1
 8004f82:	3401      	adds	r4, #1
 8004f84:	e8f5 2302 	ldrd	r2, r3, [r5], #8
 8004f88:	f7fb f940 	bl	800020c <__adddf3>
 8004f8c:	45a1      	cmp	r9, r4
 8004f8e:	daf8      	bge.n	8004f82 <__kernel_rem_pio2+0x55a>
 8004f90:	9b07      	ldr	r3, [sp, #28]
 8004f92:	2b00      	cmp	r3, #0
 8004f94:	f040 811d 	bne.w	80051d2 <__kernel_rem_pio2+0x7aa>
 8004f98:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004f9a:	e9c3 0102 	strd	r0, r1, [r3, #8]
 8004f9e:	9b06      	ldr	r3, [sp, #24]
 8004fa0:	f003 0007 	and.w	r0, r3, #7
 8004fa4:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 8004fa8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004fac:	f3af 8000 	nop.w
 8004fb0:	00000000 	.word	0x00000000
 8004fb4:	3ff00000 	.word	0x3ff00000
 8004fb8:	40000000 	.word	0x40000000
 8004fbc:	3ff921fb 	.word	0x3ff921fb
 8004fc0:	3fe00000 	.word	0x3fe00000
 8004fc4:	3ff00000 	.word	0x3ff00000
 8004fc8:	3e700000 	.word	0x3e700000
 8004fcc:	0800a7f8 	.word	0x0800a7f8
 8004fd0:	ab48      	add	r3, sp, #288	; 0x120
 8004fd2:	9303      	str	r3, [sp, #12]
 8004fd4:	f1b9 0f00 	cmp.w	r9, #0
 8004fd8:	f340 8129 	ble.w	800522e <__kernel_rem_pio2+0x806>
 8004fdc:	9a03      	ldr	r2, [sp, #12]
 8004fde:	f8cd 9010 	str.w	r9, [sp, #16]
 8004fe2:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8004fe6:	9301      	str	r3, [sp, #4]
 8004fe8:	18d3      	adds	r3, r2, r3
 8004fea:	e9d3 ab00 	ldrd	sl, fp, [r3]
 8004fee:	f109 5300 	add.w	r3, r9, #536870912	; 0x20000000
 8004ff2:	3b01      	subs	r3, #1
 8004ff4:	eb02 08c9 	add.w	r8, r2, r9, lsl #3
 8004ff8:	9302      	str	r3, [sp, #8]
 8004ffa:	4691      	mov	r9, r2
 8004ffc:	e978 6702 	ldrd	r6, r7, [r8, #-8]!
 8005000:	4652      	mov	r2, sl
 8005002:	465b      	mov	r3, fp
 8005004:	4630      	mov	r0, r6
 8005006:	4639      	mov	r1, r7
 8005008:	f7fb f900 	bl	800020c <__adddf3>
 800500c:	4604      	mov	r4, r0
 800500e:	460d      	mov	r5, r1
 8005010:	4602      	mov	r2, r0
 8005012:	460b      	mov	r3, r1
 8005014:	4630      	mov	r0, r6
 8005016:	4639      	mov	r1, r7
 8005018:	f7fb f8f6 	bl	8000208 <__aeabi_dsub>
 800501c:	4652      	mov	r2, sl
 800501e:	465b      	mov	r3, fp
 8005020:	f7fb f8f4 	bl	800020c <__adddf3>
 8005024:	45c1      	cmp	r9, r8
 8005026:	46a2      	mov	sl, r4
 8005028:	46ab      	mov	fp, r5
 800502a:	e9c8 0102 	strd	r0, r1, [r8, #8]
 800502e:	e9c8 4500 	strd	r4, r5, [r8]
 8005032:	d1e3      	bne.n	8004ffc <__kernel_rem_pio2+0x5d4>
 8005034:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8005038:	f1b9 0f01 	cmp.w	r9, #1
 800503c:	f340 80f7 	ble.w	800522e <__kernel_rem_pio2+0x806>
 8005040:	9b01      	ldr	r3, [sp, #4]
 8005042:	9a03      	ldr	r2, [sp, #12]
 8005044:	9902      	ldr	r1, [sp, #8]
 8005046:	4413      	add	r3, r2
 8005048:	00c9      	lsls	r1, r1, #3
 800504a:	e9d3 6700 	ldrd	r6, r7, [r3]
 800504e:	f101 0a08 	add.w	sl, r1, #8
 8005052:	9101      	str	r1, [sp, #4]
 8005054:	4492      	add	sl, r2
 8005056:	f50d 7b94 	add.w	fp, sp, #296	; 0x128
 800505a:	e97a 8902 	ldrd	r8, r9, [sl, #-8]!
 800505e:	4632      	mov	r2, r6
 8005060:	463b      	mov	r3, r7
 8005062:	4640      	mov	r0, r8
 8005064:	4649      	mov	r1, r9
 8005066:	f7fb f8d1 	bl	800020c <__adddf3>
 800506a:	4604      	mov	r4, r0
 800506c:	460d      	mov	r5, r1
 800506e:	4602      	mov	r2, r0
 8005070:	460b      	mov	r3, r1
 8005072:	4640      	mov	r0, r8
 8005074:	4649      	mov	r1, r9
 8005076:	f7fb f8c7 	bl	8000208 <__aeabi_dsub>
 800507a:	4632      	mov	r2, r6
 800507c:	463b      	mov	r3, r7
 800507e:	f7fb f8c5 	bl	800020c <__adddf3>
 8005082:	45d3      	cmp	fp, sl
 8005084:	4626      	mov	r6, r4
 8005086:	462f      	mov	r7, r5
 8005088:	e9ca 0102 	strd	r0, r1, [sl, #8]
 800508c:	e9ca 4500 	strd	r4, r5, [sl]
 8005090:	d1e3      	bne.n	800505a <__kernel_rem_pio2+0x632>
 8005092:	9c01      	ldr	r4, [sp, #4]
 8005094:	9b03      	ldr	r3, [sp, #12]
 8005096:	3410      	adds	r4, #16
 8005098:	2000      	movs	r0, #0
 800509a:	2100      	movs	r1, #0
 800509c:	441c      	add	r4, r3
 800509e:	f103 0510 	add.w	r5, r3, #16
 80050a2:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 80050a6:	f7fb f8b1 	bl	800020c <__adddf3>
 80050aa:	42a5      	cmp	r5, r4
 80050ac:	d1f9      	bne.n	80050a2 <__kernel_rem_pio2+0x67a>
 80050ae:	9c03      	ldr	r4, [sp, #12]
 80050b0:	9e07      	ldr	r6, [sp, #28]
 80050b2:	e9d4 2300 	ldrd	r2, r3, [r4]
 80050b6:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
 80050ba:	2e00      	cmp	r6, #0
 80050bc:	f000 808d 	beq.w	80051da <__kernel_rem_pio2+0x7b2>
 80050c0:	f103 4700 	add.w	r7, r3, #2147483648	; 0x80000000
 80050c4:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80050c8:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80050ca:	e9c1 0304 	strd	r0, r3, [r1, #16]
 80050ce:	9b06      	ldr	r3, [sp, #24]
 80050d0:	4626      	mov	r6, r4
 80050d2:	4694      	mov	ip, r2
 80050d4:	f105 4400 	add.w	r4, r5, #2147483648	; 0x80000000
 80050d8:	f003 0007 	and.w	r0, r3, #7
 80050dc:	e9c1 c700 	strd	ip, r7, [r1]
 80050e0:	e9c1 6402 	strd	r6, r4, [r1, #8]
 80050e4:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 80050e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80050ec:	9c08      	ldr	r4, [sp, #32]
 80050ee:	9d03      	ldr	r5, [sp, #12]
 80050f0:	3408      	adds	r4, #8
 80050f2:	2000      	movs	r0, #0
 80050f4:	2100      	movs	r1, #0
 80050f6:	442c      	add	r4, r5
 80050f8:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 80050fc:	f7fb f886 	bl	800020c <__adddf3>
 8005100:	42a5      	cmp	r5, r4
 8005102:	d1f9      	bne.n	80050f8 <__kernel_rem_pio2+0x6d0>
 8005104:	9b07      	ldr	r3, [sp, #28]
 8005106:	b113      	cbz	r3, 800510e <__kernel_rem_pio2+0x6e6>
 8005108:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 800510c:	4619      	mov	r1, r3
 800510e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005110:	e9c3 0100 	strd	r0, r1, [r3]
 8005114:	9b06      	ldr	r3, [sp, #24]
 8005116:	f003 0007 	and.w	r0, r3, #7
 800511a:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 800511e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005122:	f1bb 0f00 	cmp.w	fp, #0
 8005126:	f108 0801 	add.w	r8, r8, #1
 800512a:	dd76      	ble.n	800521a <__kernel_rem_pio2+0x7f2>
 800512c:	2502      	movs	r5, #2
 800512e:	e57c      	b.n	8004c2a <__kernel_rem_pio2+0x202>
 8005130:	2600      	movs	r6, #0
 8005132:	2700      	movs	r7, #0
 8005134:	e6e9      	b.n	8004f0a <__kernel_rem_pio2+0x4e2>
 8005136:	2400      	movs	r4, #0
 8005138:	e589      	b.n	8004c4e <__kernel_rem_pio2+0x226>
 800513a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 800513e:	9d05      	ldr	r5, [sp, #20]
 8005140:	ec47 6b10 	vmov	d0, r6, r7
 8005144:	4268      	negs	r0, r5
 8005146:	f000 fa6b 	bl	8005620 <scalbn>
 800514a:	ec57 6b10 	vmov	r6, r7, d0
 800514e:	2200      	movs	r2, #0
 8005150:	4b38      	ldr	r3, [pc, #224]	; (8005234 <__kernel_rem_pio2+0x80c>)
 8005152:	ee10 0a10 	vmov	r0, s0
 8005156:	4639      	mov	r1, r7
 8005158:	f7fb fc94 	bl	8000a84 <__aeabi_dcmpge>
 800515c:	b300      	cbz	r0, 80051a0 <__kernel_rem_pio2+0x778>
 800515e:	2200      	movs	r2, #0
 8005160:	4b35      	ldr	r3, [pc, #212]	; (8005238 <__kernel_rem_pio2+0x810>)
 8005162:	4630      	mov	r0, r6
 8005164:	4639      	mov	r1, r7
 8005166:	f7fb fa07 	bl	8000578 <__aeabi_dmul>
 800516a:	f7fb fcb5 	bl	8000ad8 <__aeabi_d2iz>
 800516e:	4604      	mov	r4, r0
 8005170:	f7fb f998 	bl	80004a4 <__aeabi_i2d>
 8005174:	2200      	movs	r2, #0
 8005176:	4b2f      	ldr	r3, [pc, #188]	; (8005234 <__kernel_rem_pio2+0x80c>)
 8005178:	f7fb f9fe 	bl	8000578 <__aeabi_dmul>
 800517c:	460b      	mov	r3, r1
 800517e:	4602      	mov	r2, r0
 8005180:	4639      	mov	r1, r7
 8005182:	4630      	mov	r0, r6
 8005184:	f7fb f840 	bl	8000208 <__aeabi_dsub>
 8005188:	f7fb fca6 	bl	8000ad8 <__aeabi_d2iz>
 800518c:	f10b 0901 	add.w	r9, fp, #1
 8005190:	ab0c      	add	r3, sp, #48	; 0x30
 8005192:	3518      	adds	r5, #24
 8005194:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 8005198:	9505      	str	r5, [sp, #20]
 800519a:	f843 4029 	str.w	r4, [r3, r9, lsl #2]
 800519e:	e656      	b.n	8004e4e <__kernel_rem_pio2+0x426>
 80051a0:	4630      	mov	r0, r6
 80051a2:	4639      	mov	r1, r7
 80051a4:	f7fb fc98 	bl	8000ad8 <__aeabi_d2iz>
 80051a8:	ab0c      	add	r3, sp, #48	; 0x30
 80051aa:	46d9      	mov	r9, fp
 80051ac:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 80051b0:	e64d      	b.n	8004e4e <__kernel_rem_pio2+0x426>
 80051b2:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80051b4:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80051b8:	e9c4 0300 	strd	r0, r3, [r4]
 80051bc:	460b      	mov	r3, r1
 80051be:	9903      	ldr	r1, [sp, #12]
 80051c0:	4602      	mov	r2, r0
 80051c2:	e9d1 0100 	ldrd	r0, r1, [r1]
 80051c6:	f7fb f81f 	bl	8000208 <__aeabi_dsub>
 80051ca:	f1b9 0f00 	cmp.w	r9, #0
 80051ce:	f73f aed6 	bgt.w	8004f7e <__kernel_rem_pio2+0x556>
 80051d2:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80051d6:	4619      	mov	r1, r3
 80051d8:	e6de      	b.n	8004f98 <__kernel_rem_pio2+0x570>
 80051da:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 80051dc:	e9c6 2300 	strd	r2, r3, [r6]
 80051e0:	9b06      	ldr	r3, [sp, #24]
 80051e2:	e9c6 0104 	strd	r0, r1, [r6, #16]
 80051e6:	f003 0007 	and.w	r0, r3, #7
 80051ea:	e9c6 4502 	strd	r4, r5, [r6, #8]
 80051ee:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 80051f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80051f6:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 80051f8:	2b03      	cmp	r3, #3
 80051fa:	f63f aed0 	bhi.w	8004f9e <__kernel_rem_pio2+0x576>
 80051fe:	a201      	add	r2, pc, #4	; (adr r2, 8005204 <__kernel_rem_pio2+0x7dc>)
 8005200:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8005204:	08005215 	.word	0x08005215
 8005208:	08004f37 	.word	0x08004f37
 800520c:	08004f37 	.word	0x08004f37
 8005210:	08004fd1 	.word	0x08004fd1
 8005214:	2000      	movs	r0, #0
 8005216:	2100      	movs	r1, #0
 8005218:	e774      	b.n	8005104 <__kernel_rem_pio2+0x6dc>
 800521a:	4632      	mov	r2, r6
 800521c:	463b      	mov	r3, r7
 800521e:	2000      	movs	r0, #0
 8005220:	4906      	ldr	r1, [pc, #24]	; (800523c <__kernel_rem_pio2+0x814>)
 8005222:	f7fa fff1 	bl	8000208 <__aeabi_dsub>
 8005226:	2502      	movs	r5, #2
 8005228:	4606      	mov	r6, r0
 800522a:	460f      	mov	r7, r1
 800522c:	e524      	b.n	8004c78 <__kernel_rem_pio2+0x250>
 800522e:	2000      	movs	r0, #0
 8005230:	2100      	movs	r1, #0
 8005232:	e73c      	b.n	80050ae <__kernel_rem_pio2+0x686>
 8005234:	41700000 	.word	0x41700000
 8005238:	3e700000 	.word	0x3e700000
 800523c:	3ff00000 	.word	0x3ff00000

08005240 <__kernel_sin>:
 8005240:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005244:	ec55 4b10 	vmov	r4, r5, d0
 8005248:	ed2d 8b02 	vpush	{d8}
 800524c:	eeb0 8a41 	vmov.f32	s16, s2
 8005250:	eef0 8a61 	vmov.f32	s17, s3
 8005254:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 8005258:	f1b3 5f79 	cmp.w	r3, #1044381696	; 0x3e400000
 800525c:	b083      	sub	sp, #12
 800525e:	4682      	mov	sl, r0
 8005260:	da07      	bge.n	8005272 <__kernel_sin+0x32>
 8005262:	ee10 0a10 	vmov	r0, s0
 8005266:	4629      	mov	r1, r5
 8005268:	f7fb fc36 	bl	8000ad8 <__aeabi_d2iz>
 800526c:	2800      	cmp	r0, #0
 800526e:	f000 808e 	beq.w	800538e <__kernel_sin+0x14e>
 8005272:	4622      	mov	r2, r4
 8005274:	462b      	mov	r3, r5
 8005276:	4620      	mov	r0, r4
 8005278:	4629      	mov	r1, r5
 800527a:	f7fb f97d 	bl	8000578 <__aeabi_dmul>
 800527e:	4606      	mov	r6, r0
 8005280:	460f      	mov	r7, r1
 8005282:	4602      	mov	r2, r0
 8005284:	460b      	mov	r3, r1
 8005286:	4620      	mov	r0, r4
 8005288:	4629      	mov	r1, r5
 800528a:	f7fb f975 	bl	8000578 <__aeabi_dmul>
 800528e:	a347      	add	r3, pc, #284	; (adr r3, 80053ac <__kernel_sin+0x16c>)
 8005290:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005294:	4680      	mov	r8, r0
 8005296:	4689      	mov	r9, r1
 8005298:	4630      	mov	r0, r6
 800529a:	4639      	mov	r1, r7
 800529c:	f7fb f96c 	bl	8000578 <__aeabi_dmul>
 80052a0:	a344      	add	r3, pc, #272	; (adr r3, 80053b4 <__kernel_sin+0x174>)
 80052a2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052a6:	f7fa ffaf 	bl	8000208 <__aeabi_dsub>
 80052aa:	4632      	mov	r2, r6
 80052ac:	463b      	mov	r3, r7
 80052ae:	f7fb f963 	bl	8000578 <__aeabi_dmul>
 80052b2:	a342      	add	r3, pc, #264	; (adr r3, 80053bc <__kernel_sin+0x17c>)
 80052b4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052b8:	f7fa ffa8 	bl	800020c <__adddf3>
 80052bc:	4632      	mov	r2, r6
 80052be:	463b      	mov	r3, r7
 80052c0:	f7fb f95a 	bl	8000578 <__aeabi_dmul>
 80052c4:	a33f      	add	r3, pc, #252	; (adr r3, 80053c4 <__kernel_sin+0x184>)
 80052c6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052ca:	f7fa ff9d 	bl	8000208 <__aeabi_dsub>
 80052ce:	4632      	mov	r2, r6
 80052d0:	463b      	mov	r3, r7
 80052d2:	f7fb f951 	bl	8000578 <__aeabi_dmul>
 80052d6:	a33d      	add	r3, pc, #244	; (adr r3, 80053cc <__kernel_sin+0x18c>)
 80052d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052dc:	f7fa ff96 	bl	800020c <__adddf3>
 80052e0:	e9cd 0100 	strd	r0, r1, [sp]
 80052e4:	f1ba 0f00 	cmp.w	sl, #0
 80052e8:	d037      	beq.n	800535a <__kernel_sin+0x11a>
 80052ea:	2200      	movs	r2, #0
 80052ec:	4b2e      	ldr	r3, [pc, #184]	; (80053a8 <__kernel_sin+0x168>)
 80052ee:	ec51 0b18 	vmov	r0, r1, d8
 80052f2:	f7fb f941 	bl	8000578 <__aeabi_dmul>
 80052f6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052fa:	4682      	mov	sl, r0
 80052fc:	468b      	mov	fp, r1
 80052fe:	4640      	mov	r0, r8
 8005300:	4649      	mov	r1, r9
 8005302:	f7fb f939 	bl	8000578 <__aeabi_dmul>
 8005306:	4602      	mov	r2, r0
 8005308:	460b      	mov	r3, r1
 800530a:	4650      	mov	r0, sl
 800530c:	4659      	mov	r1, fp
 800530e:	f7fa ff7b 	bl	8000208 <__aeabi_dsub>
 8005312:	4632      	mov	r2, r6
 8005314:	463b      	mov	r3, r7
 8005316:	f7fb f92f 	bl	8000578 <__aeabi_dmul>
 800531a:	ec53 2b18 	vmov	r2, r3, d8
 800531e:	f7fa ff73 	bl	8000208 <__aeabi_dsub>
 8005322:	a31f      	add	r3, pc, #124	; (adr r3, 80053a0 <__kernel_sin+0x160>)
 8005324:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005328:	4606      	mov	r6, r0
 800532a:	460f      	mov	r7, r1
 800532c:	4640      	mov	r0, r8
 800532e:	4649      	mov	r1, r9
 8005330:	f7fb f922 	bl	8000578 <__aeabi_dmul>
 8005334:	4602      	mov	r2, r0
 8005336:	460b      	mov	r3, r1
 8005338:	4630      	mov	r0, r6
 800533a:	4639      	mov	r1, r7
 800533c:	f7fa ff66 	bl	800020c <__adddf3>
 8005340:	4602      	mov	r2, r0
 8005342:	460b      	mov	r3, r1
 8005344:	4620      	mov	r0, r4
 8005346:	4629      	mov	r1, r5
 8005348:	f7fa ff5e 	bl	8000208 <__aeabi_dsub>
 800534c:	ec41 0b10 	vmov	d0, r0, r1
 8005350:	b003      	add	sp, #12
 8005352:	ecbd 8b02 	vpop	{d8}
 8005356:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800535a:	4602      	mov	r2, r0
 800535c:	460b      	mov	r3, r1
 800535e:	4630      	mov	r0, r6
 8005360:	4639      	mov	r1, r7
 8005362:	f7fb f909 	bl	8000578 <__aeabi_dmul>
 8005366:	a30e      	add	r3, pc, #56	; (adr r3, 80053a0 <__kernel_sin+0x160>)
 8005368:	e9d3 2300 	ldrd	r2, r3, [r3]
 800536c:	f7fa ff4c 	bl	8000208 <__aeabi_dsub>
 8005370:	4642      	mov	r2, r8
 8005372:	464b      	mov	r3, r9
 8005374:	f7fb f900 	bl	8000578 <__aeabi_dmul>
 8005378:	4622      	mov	r2, r4
 800537a:	462b      	mov	r3, r5
 800537c:	f7fa ff46 	bl	800020c <__adddf3>
 8005380:	ec41 0b10 	vmov	d0, r0, r1
 8005384:	b003      	add	sp, #12
 8005386:	ecbd 8b02 	vpop	{d8}
 800538a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800538e:	ec45 4b10 	vmov	d0, r4, r5
 8005392:	b003      	add	sp, #12
 8005394:	ecbd 8b02 	vpop	{d8}
 8005398:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800539c:	f3af 8000 	nop.w
 80053a0:	55555549 	.word	0x55555549
 80053a4:	3fc55555 	.word	0x3fc55555
 80053a8:	3fe00000 	.word	0x3fe00000
 80053ac:	5acfd57c 	.word	0x5acfd57c
 80053b0:	3de5d93a 	.word	0x3de5d93a
 80053b4:	8a2b9ceb 	.word	0x8a2b9ceb
 80053b8:	3e5ae5e6 	.word	0x3e5ae5e6
 80053bc:	57b1fe7d 	.word	0x57b1fe7d
 80053c0:	3ec71de3 	.word	0x3ec71de3
 80053c4:	19c161d5 	.word	0x19c161d5
 80053c8:	3f2a01a0 	.word	0x3f2a01a0
 80053cc:	1110f8a6 	.word	0x1110f8a6
 80053d0:	3f811111 	.word	0x3f811111

080053d4 <finite>:
 80053d4:	ee10 3a90 	vmov	r3, s1
 80053d8:	f043 4000 	orr.w	r0, r3, #2147483648	; 0x80000000
 80053dc:	f500 1080 	add.w	r0, r0, #1048576	; 0x100000
 80053e0:	0fc0      	lsrs	r0, r0, #31
 80053e2:	4770      	bx	lr
 80053e4:	0000      	movs	r0, r0
	...

080053e8 <floor>:
 80053e8:	ec51 0b10 	vmov	r0, r1, d0
 80053ec:	f3c1 530a 	ubfx	r3, r1, #20, #11
 80053f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80053f4:	f2a3 35ff 	subw	r5, r3, #1023	; 0x3ff
 80053f8:	2d13      	cmp	r5, #19
 80053fa:	460c      	mov	r4, r1
 80053fc:	460f      	mov	r7, r1
 80053fe:	ee10 6a10 	vmov	r6, s0
 8005402:	dc1d      	bgt.n	8005440 <floor+0x58>
 8005404:	2d00      	cmp	r5, #0
 8005406:	db3d      	blt.n	8005484 <floor+0x9c>
 8005408:	4b39      	ldr	r3, [pc, #228]	; (80054f0 <floor+0x108>)
 800540a:	fa43 f805 	asr.w	r8, r3, r5
 800540e:	ea01 0308 	and.w	r3, r1, r8
 8005412:	4303      	orrs	r3, r0
 8005414:	d019      	beq.n	800544a <floor+0x62>
 8005416:	a334      	add	r3, pc, #208	; (adr r3, 80054e8 <floor+0x100>)
 8005418:	e9d3 2300 	ldrd	r2, r3, [r3]
 800541c:	f7fa fef6 	bl	800020c <__adddf3>
 8005420:	2200      	movs	r2, #0
 8005422:	2300      	movs	r3, #0
 8005424:	f7fb fb38 	bl	8000a98 <__aeabi_dcmpgt>
 8005428:	b3d0      	cbz	r0, 80054a0 <floor+0xb8>
 800542a:	2c00      	cmp	r4, #0
 800542c:	da04      	bge.n	8005438 <floor+0x50>
 800542e:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 8005432:	fa43 f505 	asr.w	r5, r3, r5
 8005436:	442f      	add	r7, r5
 8005438:	ea27 0408 	bic.w	r4, r7, r8
 800543c:	2600      	movs	r6, #0
 800543e:	e02f      	b.n	80054a0 <floor+0xb8>
 8005440:	2d33      	cmp	r5, #51	; 0x33
 8005442:	dd06      	ble.n	8005452 <floor+0x6a>
 8005444:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 8005448:	d030      	beq.n	80054ac <floor+0xc4>
 800544a:	ec41 0b10 	vmov	d0, r0, r1
 800544e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005452:	f2a3 4313 	subw	r3, r3, #1043	; 0x413
 8005456:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 800545a:	fa28 f803 	lsr.w	r8, r8, r3
 800545e:	ea18 0f00 	tst.w	r8, r0
 8005462:	d0f2      	beq.n	800544a <floor+0x62>
 8005464:	a320      	add	r3, pc, #128	; (adr r3, 80054e8 <floor+0x100>)
 8005466:	e9d3 2300 	ldrd	r2, r3, [r3]
 800546a:	f7fa fecf 	bl	800020c <__adddf3>
 800546e:	2200      	movs	r2, #0
 8005470:	2300      	movs	r3, #0
 8005472:	f7fb fb11 	bl	8000a98 <__aeabi_dcmpgt>
 8005476:	b198      	cbz	r0, 80054a0 <floor+0xb8>
 8005478:	2c00      	cmp	r4, #0
 800547a:	db28      	blt.n	80054ce <floor+0xe6>
 800547c:	ea26 0608 	bic.w	r6, r6, r8
 8005480:	463c      	mov	r4, r7
 8005482:	e00d      	b.n	80054a0 <floor+0xb8>
 8005484:	a318      	add	r3, pc, #96	; (adr r3, 80054e8 <floor+0x100>)
 8005486:	e9d3 2300 	ldrd	r2, r3, [r3]
 800548a:	f7fa febf 	bl	800020c <__adddf3>
 800548e:	2200      	movs	r2, #0
 8005490:	2300      	movs	r3, #0
 8005492:	f7fb fb01 	bl	8000a98 <__aeabi_dcmpgt>
 8005496:	b118      	cbz	r0, 80054a0 <floor+0xb8>
 8005498:	2c00      	cmp	r4, #0
 800549a:	db0f      	blt.n	80054bc <floor+0xd4>
 800549c:	2600      	movs	r6, #0
 800549e:	4634      	mov	r4, r6
 80054a0:	4623      	mov	r3, r4
 80054a2:	4632      	mov	r2, r6
 80054a4:	ec43 2b10 	vmov	d0, r2, r3
 80054a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80054ac:	ee10 2a10 	vmov	r2, s0
 80054b0:	460b      	mov	r3, r1
 80054b2:	f7fa feab 	bl	800020c <__adddf3>
 80054b6:	ec41 0b10 	vmov	d0, r0, r1
 80054ba:	e7c8      	b.n	800544e <floor+0x66>
 80054bc:	f024 4300 	bic.w	r3, r4, #2147483648	; 0x80000000
 80054c0:	4a0c      	ldr	r2, [pc, #48]	; (80054f4 <floor+0x10c>)
 80054c2:	431e      	orrs	r6, r3
 80054c4:	2e00      	cmp	r6, #0
 80054c6:	bf18      	it	ne
 80054c8:	4614      	movne	r4, r2
 80054ca:	2600      	movs	r6, #0
 80054cc:	e7e8      	b.n	80054a0 <floor+0xb8>
 80054ce:	2d14      	cmp	r5, #20
 80054d0:	d008      	beq.n	80054e4 <floor+0xfc>
 80054d2:	2301      	movs	r3, #1
 80054d4:	f1c5 0534 	rsb	r5, r5, #52	; 0x34
 80054d8:	fa03 f505 	lsl.w	r5, r3, r5
 80054dc:	19ae      	adds	r6, r5, r6
 80054de:	bf28      	it	cs
 80054e0:	18ff      	addcs	r7, r7, r3
 80054e2:	e7cb      	b.n	800547c <floor+0x94>
 80054e4:	3701      	adds	r7, #1
 80054e6:	e7c9      	b.n	800547c <floor+0x94>
 80054e8:	8800759c 	.word	0x8800759c
 80054ec:	7e37e43c 	.word	0x7e37e43c
 80054f0:	000fffff 	.word	0x000fffff
 80054f4:	bff00000 	.word	0xbff00000

080054f8 <matherr>:
 80054f8:	2000      	movs	r0, #0
 80054fa:	4770      	bx	lr
 80054fc:	0000      	movs	r0, r0
	...

08005500 <nan>:
 8005500:	ed9f 0b01 	vldr	d0, [pc, #4]	; 8005508 <nan+0x8>
 8005504:	4770      	bx	lr
 8005506:	bf00      	nop
 8005508:	00000000 	.word	0x00000000
 800550c:	7ff80000 	.word	0x7ff80000

08005510 <rint>:
 8005510:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005512:	ec51 0b10 	vmov	r0, r1, d0
 8005516:	f3c1 550a 	ubfx	r5, r1, #20, #11
 800551a:	f2a5 32ff 	subw	r2, r5, #1023	; 0x3ff
 800551e:	2a13      	cmp	r2, #19
 8005520:	b083      	sub	sp, #12
 8005522:	460b      	mov	r3, r1
 8005524:	ea4f 76d1 	mov.w	r6, r1, lsr #31
 8005528:	ee10 4a10 	vmov	r4, s0
 800552c:	dc2f      	bgt.n	800558e <rint+0x7e>
 800552e:	2a00      	cmp	r2, #0
 8005530:	db4a      	blt.n	80055c8 <rint+0xb8>
 8005532:	4d39      	ldr	r5, [pc, #228]	; (8005618 <rint+0x108>)
 8005534:	4115      	asrs	r5, r2
 8005536:	ea01 0705 	and.w	r7, r1, r5
 800553a:	4307      	orrs	r7, r0
 800553c:	d023      	beq.n	8005586 <rint+0x76>
 800553e:	086d      	lsrs	r5, r5, #1
 8005540:	4029      	ands	r1, r5
 8005542:	430c      	orrs	r4, r1
 8005544:	d00c      	beq.n	8005560 <rint+0x50>
 8005546:	f44f 2180 	mov.w	r1, #262144	; 0x40000
 800554a:	2a13      	cmp	r2, #19
 800554c:	ea23 0505 	bic.w	r5, r3, r5
 8005550:	fa41 f302 	asr.w	r3, r1, r2
 8005554:	ea43 0305 	orr.w	r3, r3, r5
 8005558:	bf0c      	ite	eq
 800555a:	f04f 4400 	moveq.w	r4, #2147483648	; 0x80000000
 800555e:	2400      	movne	r4, #0
 8005560:	4a2e      	ldr	r2, [pc, #184]	; (800561c <rint+0x10c>)
 8005562:	eb02 06c6 	add.w	r6, r2, r6, lsl #3
 8005566:	4620      	mov	r0, r4
 8005568:	e9d6 4500 	ldrd	r4, r5, [r6]
 800556c:	4602      	mov	r2, r0
 800556e:	4629      	mov	r1, r5
 8005570:	4620      	mov	r0, r4
 8005572:	f7fa fe4b 	bl	800020c <__adddf3>
 8005576:	e9cd 0100 	strd	r0, r1, [sp]
 800557a:	4622      	mov	r2, r4
 800557c:	462b      	mov	r3, r5
 800557e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005582:	f7fa fe41 	bl	8000208 <__aeabi_dsub>
 8005586:	ec41 0b10 	vmov	d0, r0, r1
 800558a:	b003      	add	sp, #12
 800558c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800558e:	2a33      	cmp	r2, #51	; 0x33
 8005590:	dd07      	ble.n	80055a2 <rint+0x92>
 8005592:	f5b2 6f80 	cmp.w	r2, #1024	; 0x400
 8005596:	d1f6      	bne.n	8005586 <rint+0x76>
 8005598:	ee10 2a10 	vmov	r2, s0
 800559c:	f7fa fe36 	bl	800020c <__adddf3>
 80055a0:	e7f1      	b.n	8005586 <rint+0x76>
 80055a2:	f2a5 4513 	subw	r5, r5, #1043	; 0x413
 80055a6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80055aa:	40ea      	lsrs	r2, r5
 80055ac:	4210      	tst	r0, r2
 80055ae:	d0ea      	beq.n	8005586 <rint+0x76>
 80055b0:	0852      	lsrs	r2, r2, #1
 80055b2:	4210      	tst	r0, r2
 80055b4:	d0d4      	beq.n	8005560 <rint+0x50>
 80055b6:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 80055ba:	ea24 0202 	bic.w	r2, r4, r2
 80055be:	fa41 f505 	asr.w	r5, r1, r5
 80055c2:	ea42 0405 	orr.w	r4, r2, r5
 80055c6:	e7cb      	b.n	8005560 <rint+0x50>
 80055c8:	f021 4200 	bic.w	r2, r1, #2147483648	; 0x80000000
 80055cc:	4302      	orrs	r2, r0
 80055ce:	d0da      	beq.n	8005586 <rint+0x76>
 80055d0:	f3c1 0213 	ubfx	r2, r1, #0, #20
 80055d4:	4302      	orrs	r2, r0
 80055d6:	4254      	negs	r4, r2
 80055d8:	4d10      	ldr	r5, [pc, #64]	; (800561c <rint+0x10c>)
 80055da:	4314      	orrs	r4, r2
 80055dc:	0b24      	lsrs	r4, r4, #12
 80055de:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
 80055e2:	0c4f      	lsrs	r7, r1, #17
 80055e4:	f404 2100 	and.w	r1, r4, #524288	; 0x80000
 80055e8:	e9d0 4500 	ldrd	r4, r5, [r0]
 80055ec:	047f      	lsls	r7, r7, #17
 80055ee:	ee10 2a10 	vmov	r2, s0
 80055f2:	ea41 0307 	orr.w	r3, r1, r7
 80055f6:	4620      	mov	r0, r4
 80055f8:	4629      	mov	r1, r5
 80055fa:	f7fa fe07 	bl	800020c <__adddf3>
 80055fe:	e9cd 0100 	strd	r0, r1, [sp]
 8005602:	462b      	mov	r3, r5
 8005604:	4622      	mov	r2, r4
 8005606:	e9dd 0100 	ldrd	r0, r1, [sp]
 800560a:	f7fa fdfd 	bl	8000208 <__aeabi_dsub>
 800560e:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8005612:	ea43 71c6 	orr.w	r1, r3, r6, lsl #31
 8005616:	e7b6      	b.n	8005586 <rint+0x76>
 8005618:	000fffff 	.word	0x000fffff
 800561c:	0800a840 	.word	0x0800a840

08005620 <scalbn>:
 8005620:	b538      	push	{r3, r4, r5, lr}
 8005622:	ec53 2b10 	vmov	r2, r3, d0
 8005626:	f3c3 510a 	ubfx	r1, r3, #20, #11
 800562a:	461c      	mov	r4, r3
 800562c:	4605      	mov	r5, r0
 800562e:	bb29      	cbnz	r1, 800567c <scalbn+0x5c>
 8005630:	ee10 1a10 	vmov	r1, s0
 8005634:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
 8005638:	4321      	orrs	r1, r4
 800563a:	d01e      	beq.n	800567a <scalbn+0x5a>
 800563c:	4619      	mov	r1, r3
 800563e:	2200      	movs	r2, #0
 8005640:	4b39      	ldr	r3, [pc, #228]	; (8005728 <scalbn+0x108>)
 8005642:	4c3a      	ldr	r4, [pc, #232]	; (800572c <scalbn+0x10c>)
 8005644:	ee10 0a10 	vmov	r0, s0
 8005648:	f7fa ff96 	bl	8000578 <__aeabi_dmul>
 800564c:	42a5      	cmp	r5, r4
 800564e:	4602      	mov	r2, r0
 8005650:	460b      	mov	r3, r1
 8005652:	db36      	blt.n	80056c2 <scalbn+0xa2>
 8005654:	460c      	mov	r4, r1
 8005656:	f3c1 510a 	ubfx	r1, r1, #20, #11
 800565a:	3936      	subs	r1, #54	; 0x36
 800565c:	4429      	add	r1, r5
 800565e:	f240 70fe 	movw	r0, #2046	; 0x7fe
 8005662:	4281      	cmp	r1, r0
 8005664:	dc35      	bgt.n	80056d2 <scalbn+0xb2>
 8005666:	2900      	cmp	r1, #0
 8005668:	dd14      	ble.n	8005694 <scalbn+0x74>
 800566a:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 800566e:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 8005672:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 8005676:	ec43 2b10 	vmov	d0, r2, r3
 800567a:	bd38      	pop	{r3, r4, r5, pc}
 800567c:	f240 70ff 	movw	r0, #2047	; 0x7ff
 8005680:	4281      	cmp	r1, r0
 8005682:	d1eb      	bne.n	800565c <scalbn+0x3c>
 8005684:	ee10 0a10 	vmov	r0, s0
 8005688:	4619      	mov	r1, r3
 800568a:	f7fa fdbf 	bl	800020c <__adddf3>
 800568e:	ec41 0b10 	vmov	d0, r0, r1
 8005692:	bd38      	pop	{r3, r4, r5, pc}
 8005694:	f111 0f35 	cmn.w	r1, #53	; 0x35
 8005698:	da1e      	bge.n	80056d8 <scalbn+0xb8>
 800569a:	f24c 3150 	movw	r1, #50000	; 0xc350
 800569e:	428d      	cmp	r5, r1
 80056a0:	ec43 2b11 	vmov	d1, r2, r3
 80056a4:	dd28      	ble.n	80056f8 <scalbn+0xd8>
 80056a6:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 8005718 <scalbn+0xf8>
 80056aa:	f000 f843 	bl	8005734 <copysign>
 80056ae:	a31a      	add	r3, pc, #104	; (adr r3, 8005718 <scalbn+0xf8>)
 80056b0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056b4:	ec51 0b10 	vmov	r0, r1, d0
 80056b8:	f7fa ff5e 	bl	8000578 <__aeabi_dmul>
 80056bc:	ec41 0b10 	vmov	d0, r0, r1
 80056c0:	bd38      	pop	{r3, r4, r5, pc}
 80056c2:	a317      	add	r3, pc, #92	; (adr r3, 8005720 <scalbn+0x100>)
 80056c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056c8:	f7fa ff56 	bl	8000578 <__aeabi_dmul>
 80056cc:	ec41 0b10 	vmov	d0, r0, r1
 80056d0:	bd38      	pop	{r3, r4, r5, pc}
 80056d2:	ec43 2b11 	vmov	d1, r2, r3
 80056d6:	e7e6      	b.n	80056a6 <scalbn+0x86>
 80056d8:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 80056dc:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 80056e0:	3136      	adds	r1, #54	; 0x36
 80056e2:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 80056e6:	4610      	mov	r0, r2
 80056e8:	4619      	mov	r1, r3
 80056ea:	2200      	movs	r2, #0
 80056ec:	4b10      	ldr	r3, [pc, #64]	; (8005730 <scalbn+0x110>)
 80056ee:	f7fa ff43 	bl	8000578 <__aeabi_dmul>
 80056f2:	ec41 0b10 	vmov	d0, r0, r1
 80056f6:	bd38      	pop	{r3, r4, r5, pc}
 80056f8:	ed9f 0b09 	vldr	d0, [pc, #36]	; 8005720 <scalbn+0x100>
 80056fc:	f000 f81a 	bl	8005734 <copysign>
 8005700:	a307      	add	r3, pc, #28	; (adr r3, 8005720 <scalbn+0x100>)
 8005702:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005706:	ec51 0b10 	vmov	r0, r1, d0
 800570a:	f7fa ff35 	bl	8000578 <__aeabi_dmul>
 800570e:	ec41 0b10 	vmov	d0, r0, r1
 8005712:	bd38      	pop	{r3, r4, r5, pc}
 8005714:	f3af 8000 	nop.w
 8005718:	8800759c 	.word	0x8800759c
 800571c:	7e37e43c 	.word	0x7e37e43c
 8005720:	c2f8f359 	.word	0xc2f8f359
 8005724:	01a56e1f 	.word	0x01a56e1f
 8005728:	43500000 	.word	0x43500000
 800572c:	ffff3cb0 	.word	0xffff3cb0
 8005730:	3c900000 	.word	0x3c900000

08005734 <copysign>:
 8005734:	ec53 2b10 	vmov	r2, r3, d0
 8005738:	ee11 0a90 	vmov	r0, s3
 800573c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8005740:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8005744:	ea41 0300 	orr.w	r3, r1, r0
 8005748:	ec43 2b10 	vmov	d0, r2, r3
 800574c:	4770      	bx	lr
 800574e:	bf00      	nop

08005750 <__aeabi_memclr>:
 8005750:	2200      	movs	r2, #0
 8005752:	f7fb bb69 	b.w	8000e28 <__aeabi_memset>
 8005756:	bf00      	nop

08005758 <__errno>:
 8005758:	4b01      	ldr	r3, [pc, #4]	; (8005760 <__errno+0x8>)
 800575a:	6818      	ldr	r0, [r3, #0]
 800575c:	4770      	bx	lr
 800575e:	bf00      	nop
 8005760:	2000001c 	.word	0x2000001c

08005764 <__libc_init_array>:
 8005764:	b570      	push	{r4, r5, r6, lr}
 8005766:	4e0d      	ldr	r6, [pc, #52]	; (800579c <__libc_init_array+0x38>)
 8005768:	4d0d      	ldr	r5, [pc, #52]	; (80057a0 <__libc_init_array+0x3c>)
 800576a:	1b76      	subs	r6, r6, r5
 800576c:	10b6      	asrs	r6, r6, #2
 800576e:	d006      	beq.n	800577e <__libc_init_array+0x1a>
 8005770:	2400      	movs	r4, #0
 8005772:	3401      	adds	r4, #1
 8005774:	f855 3b04 	ldr.w	r3, [r5], #4
 8005778:	4798      	blx	r3
 800577a:	42a6      	cmp	r6, r4
 800577c:	d1f9      	bne.n	8005772 <__libc_init_array+0xe>
 800577e:	4e09      	ldr	r6, [pc, #36]	; (80057a4 <__libc_init_array+0x40>)
 8005780:	4d09      	ldr	r5, [pc, #36]	; (80057a8 <__libc_init_array+0x44>)
 8005782:	1b76      	subs	r6, r6, r5
 8005784:	f004 feaa 	bl	800a4dc <_init>
 8005788:	10b6      	asrs	r6, r6, #2
 800578a:	d006      	beq.n	800579a <__libc_init_array+0x36>
 800578c:	2400      	movs	r4, #0
 800578e:	3401      	adds	r4, #1
 8005790:	f855 3b04 	ldr.w	r3, [r5], #4
 8005794:	4798      	blx	r3
 8005796:	42a6      	cmp	r6, r4
 8005798:	d1f9      	bne.n	800578e <__libc_init_array+0x2a>
 800579a:	bd70      	pop	{r4, r5, r6, pc}
 800579c:	0800aae8 	.word	0x0800aae8
 80057a0:	0800aae8 	.word	0x0800aae8
 80057a4:	0800aaf0 	.word	0x0800aaf0
 80057a8:	0800aae8 	.word	0x0800aae8

080057ac <memset>:
 80057ac:	b4f0      	push	{r4, r5, r6, r7}
 80057ae:	0786      	lsls	r6, r0, #30
 80057b0:	d043      	beq.n	800583a <memset+0x8e>
 80057b2:	1e54      	subs	r4, r2, #1
 80057b4:	2a00      	cmp	r2, #0
 80057b6:	d03e      	beq.n	8005836 <memset+0x8a>
 80057b8:	b2ca      	uxtb	r2, r1
 80057ba:	4603      	mov	r3, r0
 80057bc:	e002      	b.n	80057c4 <memset+0x18>
 80057be:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80057c2:	d338      	bcc.n	8005836 <memset+0x8a>
 80057c4:	f803 2b01 	strb.w	r2, [r3], #1
 80057c8:	079d      	lsls	r5, r3, #30
 80057ca:	d1f8      	bne.n	80057be <memset+0x12>
 80057cc:	2c03      	cmp	r4, #3
 80057ce:	d92b      	bls.n	8005828 <memset+0x7c>
 80057d0:	b2cd      	uxtb	r5, r1
 80057d2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80057d6:	2c0f      	cmp	r4, #15
 80057d8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80057dc:	d916      	bls.n	800580c <memset+0x60>
 80057de:	f1a4 0710 	sub.w	r7, r4, #16
 80057e2:	093f      	lsrs	r7, r7, #4
 80057e4:	f103 0620 	add.w	r6, r3, #32
 80057e8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80057ec:	f103 0210 	add.w	r2, r3, #16
 80057f0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80057f4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80057f8:	3210      	adds	r2, #16
 80057fa:	42b2      	cmp	r2, r6
 80057fc:	d1f8      	bne.n	80057f0 <memset+0x44>
 80057fe:	f004 040f 	and.w	r4, r4, #15
 8005802:	3701      	adds	r7, #1
 8005804:	2c03      	cmp	r4, #3
 8005806:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800580a:	d90d      	bls.n	8005828 <memset+0x7c>
 800580c:	461e      	mov	r6, r3
 800580e:	4622      	mov	r2, r4
 8005810:	3a04      	subs	r2, #4
 8005812:	2a03      	cmp	r2, #3
 8005814:	f846 5b04 	str.w	r5, [r6], #4
 8005818:	d8fa      	bhi.n	8005810 <memset+0x64>
 800581a:	1f22      	subs	r2, r4, #4
 800581c:	f022 0203 	bic.w	r2, r2, #3
 8005820:	3204      	adds	r2, #4
 8005822:	4413      	add	r3, r2
 8005824:	f004 0403 	and.w	r4, r4, #3
 8005828:	b12c      	cbz	r4, 8005836 <memset+0x8a>
 800582a:	b2c9      	uxtb	r1, r1
 800582c:	441c      	add	r4, r3
 800582e:	f803 1b01 	strb.w	r1, [r3], #1
 8005832:	429c      	cmp	r4, r3
 8005834:	d1fb      	bne.n	800582e <memset+0x82>
 8005836:	bcf0      	pop	{r4, r5, r6, r7}
 8005838:	4770      	bx	lr
 800583a:	4614      	mov	r4, r2
 800583c:	4603      	mov	r3, r0
 800583e:	e7c5      	b.n	80057cc <memset+0x20>

08005840 <printf>:
 8005840:	b40f      	push	{r0, r1, r2, r3}
 8005842:	b500      	push	{lr}
 8005844:	4907      	ldr	r1, [pc, #28]	; (8005864 <printf+0x24>)
 8005846:	b083      	sub	sp, #12
 8005848:	ab04      	add	r3, sp, #16
 800584a:	6808      	ldr	r0, [r1, #0]
 800584c:	f853 2b04 	ldr.w	r2, [r3], #4
 8005850:	6881      	ldr	r1, [r0, #8]
 8005852:	9301      	str	r3, [sp, #4]
 8005854:	f000 f860 	bl	8005918 <_vfprintf_r>
 8005858:	b003      	add	sp, #12
 800585a:	f85d eb04 	ldr.w	lr, [sp], #4
 800585e:	b004      	add	sp, #16
 8005860:	4770      	bx	lr
 8005862:	bf00      	nop
 8005864:	2000001c 	.word	0x2000001c

08005868 <_puts_r>:
 8005868:	b570      	push	{r4, r5, r6, lr}
 800586a:	4605      	mov	r5, r0
 800586c:	b088      	sub	sp, #32
 800586e:	4608      	mov	r0, r1
 8005870:	460c      	mov	r4, r1
 8005872:	f7fb fbc5 	bl	8001000 <strlen>
 8005876:	4a22      	ldr	r2, [pc, #136]	; (8005900 <_puts_r+0x98>)
 8005878:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800587a:	9404      	str	r4, [sp, #16]
 800587c:	2601      	movs	r6, #1
 800587e:	1c44      	adds	r4, r0, #1
 8005880:	a904      	add	r1, sp, #16
 8005882:	9206      	str	r2, [sp, #24]
 8005884:	2202      	movs	r2, #2
 8005886:	9403      	str	r4, [sp, #12]
 8005888:	9005      	str	r0, [sp, #20]
 800588a:	68ac      	ldr	r4, [r5, #8]
 800588c:	9607      	str	r6, [sp, #28]
 800588e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8005892:	b31b      	cbz	r3, 80058dc <_puts_r+0x74>
 8005894:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8005896:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800589a:	07ce      	lsls	r6, r1, #31
 800589c:	b29a      	uxth	r2, r3
 800589e:	d401      	bmi.n	80058a4 <_puts_r+0x3c>
 80058a0:	0590      	lsls	r0, r2, #22
 80058a2:	d525      	bpl.n	80058f0 <_puts_r+0x88>
 80058a4:	0491      	lsls	r1, r2, #18
 80058a6:	d406      	bmi.n	80058b6 <_puts_r+0x4e>
 80058a8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80058aa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80058ae:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80058b2:	81a3      	strh	r3, [r4, #12]
 80058b4:	6662      	str	r2, [r4, #100]	; 0x64
 80058b6:	4628      	mov	r0, r5
 80058b8:	aa01      	add	r2, sp, #4
 80058ba:	4621      	mov	r1, r4
 80058bc:	f003 f860 	bl	8008980 <__sfvwrite_r>
 80058c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80058c2:	2800      	cmp	r0, #0
 80058c4:	bf0c      	ite	eq
 80058c6:	250a      	moveq	r5, #10
 80058c8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80058cc:	07da      	lsls	r2, r3, #31
 80058ce:	d402      	bmi.n	80058d6 <_puts_r+0x6e>
 80058d0:	89a3      	ldrh	r3, [r4, #12]
 80058d2:	059b      	lsls	r3, r3, #22
 80058d4:	d506      	bpl.n	80058e4 <_puts_r+0x7c>
 80058d6:	4628      	mov	r0, r5
 80058d8:	b008      	add	sp, #32
 80058da:	bd70      	pop	{r4, r5, r6, pc}
 80058dc:	4628      	mov	r0, r5
 80058de:	f002 feb9 	bl	8008654 <__sinit>
 80058e2:	e7d7      	b.n	8005894 <_puts_r+0x2c>
 80058e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80058e6:	f003 fa07 	bl	8008cf8 <__retarget_lock_release_recursive>
 80058ea:	4628      	mov	r0, r5
 80058ec:	b008      	add	sp, #32
 80058ee:	bd70      	pop	{r4, r5, r6, pc}
 80058f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80058f2:	f003 f9ff 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 80058f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058fa:	b29a      	uxth	r2, r3
 80058fc:	e7d2      	b.n	80058a4 <_puts_r+0x3c>
 80058fe:	bf00      	nop
 8005900:	0800a854 	.word	0x0800a854

08005904 <puts>:
 8005904:	4b02      	ldr	r3, [pc, #8]	; (8005910 <puts+0xc>)
 8005906:	4601      	mov	r1, r0
 8005908:	6818      	ldr	r0, [r3, #0]
 800590a:	f7ff bfad 	b.w	8005868 <_puts_r>
 800590e:	bf00      	nop
 8005910:	2000001c 	.word	0x2000001c
 8005914:	00000000 	.word	0x00000000

08005918 <_vfprintf_r>:
 8005918:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800591c:	b0d7      	sub	sp, #348	; 0x15c
 800591e:	461c      	mov	r4, r3
 8005920:	4689      	mov	r9, r1
 8005922:	4617      	mov	r7, r2
 8005924:	4605      	mov	r5, r0
 8005926:	9003      	str	r0, [sp, #12]
 8005928:	f003 f9d2 	bl	8008cd0 <_localeconv_r>
 800592c:	6803      	ldr	r3, [r0, #0]
 800592e:	9316      	str	r3, [sp, #88]	; 0x58
 8005930:	4618      	mov	r0, r3
 8005932:	f7fb fb65 	bl	8001000 <strlen>
 8005936:	9408      	str	r4, [sp, #32]
 8005938:	9015      	str	r0, [sp, #84]	; 0x54
 800593a:	b11d      	cbz	r5, 8005944 <_vfprintf_r+0x2c>
 800593c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800593e:	2b00      	cmp	r3, #0
 8005940:	f000 8107 	beq.w	8005b52 <_vfprintf_r+0x23a>
 8005944:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005948:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800594c:	07c8      	lsls	r0, r1, #31
 800594e:	b293      	uxth	r3, r2
 8005950:	d402      	bmi.n	8005958 <_vfprintf_r+0x40>
 8005952:	0599      	lsls	r1, r3, #22
 8005954:	f140 811f 	bpl.w	8005b96 <_vfprintf_r+0x27e>
 8005958:	049e      	lsls	r6, r3, #18
 800595a:	d40a      	bmi.n	8005972 <_vfprintf_r+0x5a>
 800595c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005960:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8005964:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005968:	f8a9 300c 	strh.w	r3, [r9, #12]
 800596c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005970:	b29b      	uxth	r3, r3
 8005972:	071d      	lsls	r5, r3, #28
 8005974:	f140 80b2 	bpl.w	8005adc <_vfprintf_r+0x1c4>
 8005978:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800597c:	2a00      	cmp	r2, #0
 800597e:	f000 80ad 	beq.w	8005adc <_vfprintf_r+0x1c4>
 8005982:	f003 021a 	and.w	r2, r3, #26
 8005986:	2a0a      	cmp	r2, #10
 8005988:	f000 80c9 	beq.w	8005b1e <_vfprintf_r+0x206>
 800598c:	2300      	movs	r3, #0
 800598e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8005ba8 <_vfprintf_r+0x290>
 8005992:	9310      	str	r3, [sp, #64]	; 0x40
 8005994:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8005998:	9317      	str	r3, [sp, #92]	; 0x5c
 800599a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800599e:	931b      	str	r3, [sp, #108]	; 0x6c
 80059a0:	9318      	str	r3, [sp, #96]	; 0x60
 80059a2:	9305      	str	r3, [sp, #20]
 80059a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80059a6:	932a      	str	r3, [sp, #168]	; 0xa8
 80059a8:	469b      	mov	fp, r3
 80059aa:	783b      	ldrb	r3, [r7, #0]
 80059ac:	f8cd 901c 	str.w	r9, [sp, #28]
 80059b0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80059b4:	2b00      	cmp	r3, #0
 80059b6:	f000 8259 	beq.w	8005e6c <_vfprintf_r+0x554>
 80059ba:	2b25      	cmp	r3, #37	; 0x25
 80059bc:	463c      	mov	r4, r7
 80059be:	d102      	bne.n	80059c6 <_vfprintf_r+0xae>
 80059c0:	e01d      	b.n	80059fe <_vfprintf_r+0xe6>
 80059c2:	2b25      	cmp	r3, #37	; 0x25
 80059c4:	d003      	beq.n	80059ce <_vfprintf_r+0xb6>
 80059c6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80059ca:	2b00      	cmp	r3, #0
 80059cc:	d1f9      	bne.n	80059c2 <_vfprintf_r+0xaa>
 80059ce:	1be5      	subs	r5, r4, r7
 80059d0:	b18d      	cbz	r5, 80059f6 <_vfprintf_r+0xde>
 80059d2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80059d6:	3301      	adds	r3, #1
 80059d8:	442a      	add	r2, r5
 80059da:	2b07      	cmp	r3, #7
 80059dc:	f8cb 7000 	str.w	r7, [fp]
 80059e0:	f8cb 5004 	str.w	r5, [fp, #4]
 80059e4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80059e8:	f300 80ca 	bgt.w	8005b80 <_vfprintf_r+0x268>
 80059ec:	f10b 0b08 	add.w	fp, fp, #8
 80059f0:	9b05      	ldr	r3, [sp, #20]
 80059f2:	442b      	add	r3, r5
 80059f4:	9305      	str	r3, [sp, #20]
 80059f6:	7823      	ldrb	r3, [r4, #0]
 80059f8:	2b00      	cmp	r3, #0
 80059fa:	f000 8237 	beq.w	8005e6c <_vfprintf_r+0x554>
 80059fe:	2300      	movs	r3, #0
 8005a00:	7866      	ldrb	r6, [r4, #1]
 8005a02:	9306      	str	r3, [sp, #24]
 8005a04:	4698      	mov	r8, r3
 8005a06:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005a0a:	f104 0a01 	add.w	sl, r4, #1
 8005a0e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8005a12:	252b      	movs	r5, #43	; 0x2b
 8005a14:	f10a 0a01 	add.w	sl, sl, #1
 8005a18:	f1a6 0320 	sub.w	r3, r6, #32
 8005a1c:	2b5a      	cmp	r3, #90	; 0x5a
 8005a1e:	f200 842a 	bhi.w	8006276 <_vfprintf_r+0x95e>
 8005a22:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005a26:	03aa      	.short	0x03aa
 8005a28:	04280428 	.word	0x04280428
 8005a2c:	0428029c 	.word	0x0428029c
 8005a30:	04280428 	.word	0x04280428
 8005a34:	042802a7 	.word	0x042802a7
 8005a38:	02c60428 	.word	0x02c60428
 8005a3c:	042802d2 	.word	0x042802d2
 8005a40:	02dc02d7 	.word	0x02dc02d7
 8005a44:	02f60428 	.word	0x02f60428
 8005a48:	026d026d 	.word	0x026d026d
 8005a4c:	026d026d 	.word	0x026d026d
 8005a50:	026d026d 	.word	0x026d026d
 8005a54:	026d026d 	.word	0x026d026d
 8005a58:	0428026d 	.word	0x0428026d
 8005a5c:	04280428 	.word	0x04280428
 8005a60:	04280428 	.word	0x04280428
 8005a64:	04280428 	.word	0x04280428
 8005a68:	042802fb 	.word	0x042802fb
 8005a6c:	03f3033c 	.word	0x03f3033c
 8005a70:	02fb02fb 	.word	0x02fb02fb
 8005a74:	042802fb 	.word	0x042802fb
 8005a78:	04280428 	.word	0x04280428
 8005a7c:	03ee0428 	.word	0x03ee0428
 8005a80:	04280428 	.word	0x04280428
 8005a84:	0428009a 	.word	0x0428009a
 8005a88:	04280428 	.word	0x04280428
 8005a8c:	04280350 	.word	0x04280350
 8005a90:	04280379 	.word	0x04280379
 8005a94:	03900428 	.word	0x03900428
 8005a98:	04280428 	.word	0x04280428
 8005a9c:	04280428 	.word	0x04280428
 8005aa0:	04280428 	.word	0x04280428
 8005aa4:	04280428 	.word	0x04280428
 8005aa8:	042802fb 	.word	0x042802fb
 8005aac:	00c5033c 	.word	0x00c5033c
 8005ab0:	02fb02fb 	.word	0x02fb02fb
 8005ab4:	03d102fb 	.word	0x03d102fb
 8005ab8:	007000c5 	.word	0x007000c5
 8005abc:	03b50428 	.word	0x03b50428
 8005ac0:	03c20428 	.word	0x03c20428
 8005ac4:	03de009c 	.word	0x03de009c
 8005ac8:	04280070 	.word	0x04280070
 8005acc:	00720350 	.word	0x00720350
 8005ad0:	0428022c 	.word	0x0428022c
 8005ad4:	027c0428 	.word	0x027c0428
 8005ad8:	00720428 	.word	0x00720428
 8005adc:	4649      	mov	r1, r9
 8005ade:	9803      	ldr	r0, [sp, #12]
 8005ae0:	f001 fc9a 	bl	8007418 <__swsetup_r>
 8005ae4:	b1a0      	cbz	r0, 8005b10 <_vfprintf_r+0x1f8>
 8005ae6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8005aea:	07d8      	lsls	r0, r3, #31
 8005aec:	d404      	bmi.n	8005af8 <_vfprintf_r+0x1e0>
 8005aee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005af2:	0599      	lsls	r1, r3, #22
 8005af4:	f140 83b7 	bpl.w	8006266 <_vfprintf_r+0x94e>
 8005af8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005afc:	9305      	str	r3, [sp, #20]
 8005afe:	9805      	ldr	r0, [sp, #20]
 8005b00:	b057      	add	sp, #348	; 0x15c
 8005b02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b06:	f048 0820 	orr.w	r8, r8, #32
 8005b0a:	f89a 6000 	ldrb.w	r6, [sl]
 8005b0e:	e781      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005b10:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005b14:	f003 021a 	and.w	r2, r3, #26
 8005b18:	2a0a      	cmp	r2, #10
 8005b1a:	f47f af37 	bne.w	800598c <_vfprintf_r+0x74>
 8005b1e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8005b22:	2a00      	cmp	r2, #0
 8005b24:	f6ff af32 	blt.w	800598c <_vfprintf_r+0x74>
 8005b28:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005b2c:	07d2      	lsls	r2, r2, #31
 8005b2e:	d405      	bmi.n	8005b3c <_vfprintf_r+0x224>
 8005b30:	059b      	lsls	r3, r3, #22
 8005b32:	d403      	bmi.n	8005b3c <_vfprintf_r+0x224>
 8005b34:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005b38:	f003 f8de 	bl	8008cf8 <__retarget_lock_release_recursive>
 8005b3c:	4623      	mov	r3, r4
 8005b3e:	463a      	mov	r2, r7
 8005b40:	4649      	mov	r1, r9
 8005b42:	9803      	ldr	r0, [sp, #12]
 8005b44:	f001 fc26 	bl	8007394 <__sbprintf>
 8005b48:	9005      	str	r0, [sp, #20]
 8005b4a:	9805      	ldr	r0, [sp, #20]
 8005b4c:	b057      	add	sp, #348	; 0x15c
 8005b4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b52:	9803      	ldr	r0, [sp, #12]
 8005b54:	f002 fd7e 	bl	8008654 <__sinit>
 8005b58:	e6f4      	b.n	8005944 <_vfprintf_r+0x2c>
 8005b5a:	f048 0810 	orr.w	r8, r8, #16
 8005b5e:	f018 0f20 	tst.w	r8, #32
 8005b62:	f000 836c 	beq.w	800623e <_vfprintf_r+0x926>
 8005b66:	9c08      	ldr	r4, [sp, #32]
 8005b68:	3407      	adds	r4, #7
 8005b6a:	f024 0307 	bic.w	r3, r4, #7
 8005b6e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005b72:	f103 0208 	add.w	r2, r3, #8
 8005b76:	9208      	str	r2, [sp, #32]
 8005b78:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005b7c:	2200      	movs	r2, #0
 8005b7e:	e18c      	b.n	8005e9a <_vfprintf_r+0x582>
 8005b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8005b82:	9907      	ldr	r1, [sp, #28]
 8005b84:	9803      	ldr	r0, [sp, #12]
 8005b86:	f004 f9f5 	bl	8009f74 <__sprint_r>
 8005b8a:	2800      	cmp	r0, #0
 8005b8c:	f041 8376 	bne.w	800727c <_vfprintf_r+0x1964>
 8005b90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005b94:	e72c      	b.n	80059f0 <_vfprintf_r+0xd8>
 8005b96:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005b9a:	f003 f8ab 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 8005b9e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005ba2:	b293      	uxth	r3, r2
 8005ba4:	e6d8      	b.n	8005958 <_vfprintf_r+0x40>
 8005ba6:	bf00      	nop
	...
 8005bb0:	4643      	mov	r3, r8
 8005bb2:	069f      	lsls	r7, r3, #26
 8005bb4:	f140 832f 	bpl.w	8006216 <_vfprintf_r+0x8fe>
 8005bb8:	9c08      	ldr	r4, [sp, #32]
 8005bba:	3407      	adds	r4, #7
 8005bbc:	f024 0407 	bic.w	r4, r4, #7
 8005bc0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8005bc4:	f104 0208 	add.w	r2, r4, #8
 8005bc8:	9208      	str	r2, [sp, #32]
 8005bca:	4604      	mov	r4, r0
 8005bcc:	460d      	mov	r5, r1
 8005bce:	2800      	cmp	r0, #0
 8005bd0:	f171 0200 	sbcs.w	r2, r1, #0
 8005bd4:	da05      	bge.n	8005be2 <_vfprintf_r+0x2ca>
 8005bd6:	222d      	movs	r2, #45	; 0x2d
 8005bd8:	4264      	negs	r4, r4
 8005bda:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8005bde:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005be2:	aa56      	add	r2, sp, #344	; 0x158
 8005be4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005be8:	9204      	str	r2, [sp, #16]
 8005bea:	f000 84b2 	beq.w	8006552 <_vfprintf_r+0xc3a>
 8005bee:	2201      	movs	r2, #1
 8005bf0:	ea54 0105 	orrs.w	r1, r4, r5
 8005bf4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8005bf8:	f040 8159 	bne.w	8005eae <_vfprintf_r+0x596>
 8005bfc:	f1b9 0f00 	cmp.w	r9, #0
 8005c00:	f040 8619 	bne.w	8006836 <_vfprintf_r+0xf1e>
 8005c04:	2a00      	cmp	r2, #0
 8005c06:	f040 8508 	bne.w	800661a <_vfprintf_r+0xd02>
 8005c0a:	f013 0301 	ands.w	r3, r3, #1
 8005c0e:	af56      	add	r7, sp, #344	; 0x158
 8005c10:	9309      	str	r3, [sp, #36]	; 0x24
 8005c12:	d002      	beq.n	8005c1a <_vfprintf_r+0x302>
 8005c14:	2330      	movs	r3, #48	; 0x30
 8005c16:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005c1a:	2300      	movs	r3, #0
 8005c1c:	930a      	str	r3, [sp, #40]	; 0x28
 8005c1e:	930f      	str	r3, [sp, #60]	; 0x3c
 8005c20:	9314      	str	r3, [sp, #80]	; 0x50
 8005c22:	9311      	str	r3, [sp, #68]	; 0x44
 8005c24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005c26:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005c2a:	454b      	cmp	r3, r9
 8005c2c:	bfb8      	it	lt
 8005c2e:	464b      	movlt	r3, r9
 8005c30:	9304      	str	r3, [sp, #16]
 8005c32:	b112      	cbz	r2, 8005c3a <_vfprintf_r+0x322>
 8005c34:	9b04      	ldr	r3, [sp, #16]
 8005c36:	3301      	adds	r3, #1
 8005c38:	9304      	str	r3, [sp, #16]
 8005c3a:	f018 0302 	ands.w	r3, r8, #2
 8005c3e:	930b      	str	r3, [sp, #44]	; 0x2c
 8005c40:	d002      	beq.n	8005c48 <_vfprintf_r+0x330>
 8005c42:	9b04      	ldr	r3, [sp, #16]
 8005c44:	3302      	adds	r3, #2
 8005c46:	9304      	str	r3, [sp, #16]
 8005c48:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005c4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c4e:	930e      	str	r3, [sp, #56]	; 0x38
 8005c50:	d13f      	bne.n	8005cd2 <_vfprintf_r+0x3ba>
 8005c52:	9b06      	ldr	r3, [sp, #24]
 8005c54:	9904      	ldr	r1, [sp, #16]
 8005c56:	1a5d      	subs	r5, r3, r1
 8005c58:	2d00      	cmp	r5, #0
 8005c5a:	dd3a      	ble.n	8005cd2 <_vfprintf_r+0x3ba>
 8005c5c:	2d10      	cmp	r5, #16
 8005c5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005c60:	dd29      	ble.n	8005cb6 <_vfprintf_r+0x39e>
 8005c62:	4659      	mov	r1, fp
 8005c64:	4620      	mov	r0, r4
 8005c66:	9620      	str	r6, [sp, #128]	; 0x80
 8005c68:	2310      	movs	r3, #16
 8005c6a:	9c03      	ldr	r4, [sp, #12]
 8005c6c:	9e07      	ldr	r6, [sp, #28]
 8005c6e:	46bb      	mov	fp, r7
 8005c70:	e004      	b.n	8005c7c <_vfprintf_r+0x364>
 8005c72:	3d10      	subs	r5, #16
 8005c74:	2d10      	cmp	r5, #16
 8005c76:	f101 0108 	add.w	r1, r1, #8
 8005c7a:	dd18      	ble.n	8005cae <_vfprintf_r+0x396>
 8005c7c:	3201      	adds	r2, #1
 8005c7e:	4fba      	ldr	r7, [pc, #744]	; (8005f68 <_vfprintf_r+0x650>)
 8005c80:	3010      	adds	r0, #16
 8005c82:	2a07      	cmp	r2, #7
 8005c84:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005c88:	e9c1 7300 	strd	r7, r3, [r1]
 8005c8c:	ddf1      	ble.n	8005c72 <_vfprintf_r+0x35a>
 8005c8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c90:	4631      	mov	r1, r6
 8005c92:	4620      	mov	r0, r4
 8005c94:	930c      	str	r3, [sp, #48]	; 0x30
 8005c96:	f004 f96d 	bl	8009f74 <__sprint_r>
 8005c9a:	2800      	cmp	r0, #0
 8005c9c:	f040 843d 	bne.w	800651a <_vfprintf_r+0xc02>
 8005ca0:	3d10      	subs	r5, #16
 8005ca2:	2d10      	cmp	r5, #16
 8005ca4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005ca8:	a92d      	add	r1, sp, #180	; 0xb4
 8005caa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005cac:	dce6      	bgt.n	8005c7c <_vfprintf_r+0x364>
 8005cae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8005cb0:	465f      	mov	r7, fp
 8005cb2:	4604      	mov	r4, r0
 8005cb4:	468b      	mov	fp, r1
 8005cb6:	3201      	adds	r2, #1
 8005cb8:	4bab      	ldr	r3, [pc, #684]	; (8005f68 <_vfprintf_r+0x650>)
 8005cba:	442c      	add	r4, r5
 8005cbc:	2a07      	cmp	r2, #7
 8005cbe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005cc2:	e9cb 3500 	strd	r3, r5, [fp]
 8005cc6:	f300 84ff 	bgt.w	80066c8 <_vfprintf_r+0xdb0>
 8005cca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005cce:	f10b 0b08 	add.w	fp, fp, #8
 8005cd2:	b172      	cbz	r2, 8005cf2 <_vfprintf_r+0x3da>
 8005cd4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005cd6:	3201      	adds	r2, #1
 8005cd8:	3401      	adds	r4, #1
 8005cda:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8005cde:	2101      	movs	r1, #1
 8005ce0:	2a07      	cmp	r2, #7
 8005ce2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005ce6:	e9cb 0100 	strd	r0, r1, [fp]
 8005cea:	f300 8418 	bgt.w	800651e <_vfprintf_r+0xc06>
 8005cee:	f10b 0b08 	add.w	fp, fp, #8
 8005cf2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005cf4:	b16b      	cbz	r3, 8005d12 <_vfprintf_r+0x3fa>
 8005cf6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005cf8:	3301      	adds	r3, #1
 8005cfa:	3402      	adds	r4, #2
 8005cfc:	a923      	add	r1, sp, #140	; 0x8c
 8005cfe:	2202      	movs	r2, #2
 8005d00:	2b07      	cmp	r3, #7
 8005d02:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005d06:	e9cb 1200 	strd	r1, r2, [fp]
 8005d0a:	f300 8415 	bgt.w	8006538 <_vfprintf_r+0xc20>
 8005d0e:	f10b 0b08 	add.w	fp, fp, #8
 8005d12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005d14:	2b80      	cmp	r3, #128	; 0x80
 8005d16:	f000 8331 	beq.w	800637c <_vfprintf_r+0xa64>
 8005d1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d1c:	eba9 0503 	sub.w	r5, r9, r3
 8005d20:	2d00      	cmp	r5, #0
 8005d22:	dd37      	ble.n	8005d94 <_vfprintf_r+0x47c>
 8005d24:	2d10      	cmp	r5, #16
 8005d26:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005d28:	4b90      	ldr	r3, [pc, #576]	; (8005f6c <_vfprintf_r+0x654>)
 8005d2a:	dd28      	ble.n	8005d7e <_vfprintf_r+0x466>
 8005d2c:	4659      	mov	r1, fp
 8005d2e:	4620      	mov	r0, r4
 8005d30:	46bb      	mov	fp, r7
 8005d32:	f04f 0910 	mov.w	r9, #16
 8005d36:	4637      	mov	r7, r6
 8005d38:	461c      	mov	r4, r3
 8005d3a:	9e07      	ldr	r6, [sp, #28]
 8005d3c:	e004      	b.n	8005d48 <_vfprintf_r+0x430>
 8005d3e:	3d10      	subs	r5, #16
 8005d40:	2d10      	cmp	r5, #16
 8005d42:	f101 0108 	add.w	r1, r1, #8
 8005d46:	dd15      	ble.n	8005d74 <_vfprintf_r+0x45c>
 8005d48:	3201      	adds	r2, #1
 8005d4a:	3010      	adds	r0, #16
 8005d4c:	2a07      	cmp	r2, #7
 8005d4e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005d52:	e9c1 4900 	strd	r4, r9, [r1]
 8005d56:	ddf2      	ble.n	8005d3e <_vfprintf_r+0x426>
 8005d58:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d5a:	4631      	mov	r1, r6
 8005d5c:	9803      	ldr	r0, [sp, #12]
 8005d5e:	f004 f909 	bl	8009f74 <__sprint_r>
 8005d62:	2800      	cmp	r0, #0
 8005d64:	f040 83d9 	bne.w	800651a <_vfprintf_r+0xc02>
 8005d68:	3d10      	subs	r5, #16
 8005d6a:	2d10      	cmp	r5, #16
 8005d6c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005d70:	a92d      	add	r1, sp, #180	; 0xb4
 8005d72:	dce9      	bgt.n	8005d48 <_vfprintf_r+0x430>
 8005d74:	463e      	mov	r6, r7
 8005d76:	4623      	mov	r3, r4
 8005d78:	465f      	mov	r7, fp
 8005d7a:	4604      	mov	r4, r0
 8005d7c:	468b      	mov	fp, r1
 8005d7e:	3201      	adds	r2, #1
 8005d80:	442c      	add	r4, r5
 8005d82:	2a07      	cmp	r2, #7
 8005d84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005d88:	e9cb 3500 	strd	r3, r5, [fp]
 8005d8c:	f300 83ef 	bgt.w	800656e <_vfprintf_r+0xc56>
 8005d90:	f10b 0b08 	add.w	fp, fp, #8
 8005d94:	f418 7f80 	tst.w	r8, #256	; 0x100
 8005d98:	f040 8280 	bne.w	800629c <_vfprintf_r+0x984>
 8005d9c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005d9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005da0:	f8cb 7000 	str.w	r7, [fp]
 8005da4:	3301      	adds	r3, #1
 8005da6:	4414      	add	r4, r2
 8005da8:	2b07      	cmp	r3, #7
 8005daa:	942c      	str	r4, [sp, #176]	; 0xb0
 8005dac:	f8cb 2004 	str.w	r2, [fp, #4]
 8005db0:	932b      	str	r3, [sp, #172]	; 0xac
 8005db2:	f300 8392 	bgt.w	80064da <_vfprintf_r+0xbc2>
 8005db6:	f10b 0b08 	add.w	fp, fp, #8
 8005dba:	f018 0f04 	tst.w	r8, #4
 8005dbe:	d03b      	beq.n	8005e38 <_vfprintf_r+0x520>
 8005dc0:	9b06      	ldr	r3, [sp, #24]
 8005dc2:	9a04      	ldr	r2, [sp, #16]
 8005dc4:	1a9d      	subs	r5, r3, r2
 8005dc6:	2d00      	cmp	r5, #0
 8005dc8:	dd36      	ble.n	8005e38 <_vfprintf_r+0x520>
 8005dca:	2d10      	cmp	r5, #16
 8005dcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005dce:	dd21      	ble.n	8005e14 <_vfprintf_r+0x4fc>
 8005dd0:	2610      	movs	r6, #16
 8005dd2:	9f03      	ldr	r7, [sp, #12]
 8005dd4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8005dd8:	e004      	b.n	8005de4 <_vfprintf_r+0x4cc>
 8005dda:	3d10      	subs	r5, #16
 8005ddc:	2d10      	cmp	r5, #16
 8005dde:	f10b 0b08 	add.w	fp, fp, #8
 8005de2:	dd17      	ble.n	8005e14 <_vfprintf_r+0x4fc>
 8005de4:	3301      	adds	r3, #1
 8005de6:	4a60      	ldr	r2, [pc, #384]	; (8005f68 <_vfprintf_r+0x650>)
 8005de8:	3410      	adds	r4, #16
 8005dea:	2b07      	cmp	r3, #7
 8005dec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005df0:	e9cb 2600 	strd	r2, r6, [fp]
 8005df4:	ddf1      	ble.n	8005dda <_vfprintf_r+0x4c2>
 8005df6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005df8:	4641      	mov	r1, r8
 8005dfa:	4638      	mov	r0, r7
 8005dfc:	f004 f8ba 	bl	8009f74 <__sprint_r>
 8005e00:	2800      	cmp	r0, #0
 8005e02:	f040 856c 	bne.w	80068de <_vfprintf_r+0xfc6>
 8005e06:	3d10      	subs	r5, #16
 8005e08:	2d10      	cmp	r5, #16
 8005e0a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005e0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e12:	dce7      	bgt.n	8005de4 <_vfprintf_r+0x4cc>
 8005e14:	3301      	adds	r3, #1
 8005e16:	4a54      	ldr	r2, [pc, #336]	; (8005f68 <_vfprintf_r+0x650>)
 8005e18:	442c      	add	r4, r5
 8005e1a:	2b07      	cmp	r3, #7
 8005e1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005e20:	e9cb 2500 	strd	r2, r5, [fp]
 8005e24:	dd08      	ble.n	8005e38 <_vfprintf_r+0x520>
 8005e26:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e28:	9907      	ldr	r1, [sp, #28]
 8005e2a:	9803      	ldr	r0, [sp, #12]
 8005e2c:	f004 f8a2 	bl	8009f74 <__sprint_r>
 8005e30:	2800      	cmp	r0, #0
 8005e32:	f040 82e9 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8005e36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005e38:	9904      	ldr	r1, [sp, #16]
 8005e3a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8005e3e:	428a      	cmp	r2, r1
 8005e40:	bfac      	ite	ge
 8005e42:	189b      	addge	r3, r3, r2
 8005e44:	185b      	addlt	r3, r3, r1
 8005e46:	9305      	str	r3, [sp, #20]
 8005e48:	2c00      	cmp	r4, #0
 8005e4a:	f040 82d5 	bne.w	80063f8 <_vfprintf_r+0xae0>
 8005e4e:	2300      	movs	r3, #0
 8005e50:	932b      	str	r3, [sp, #172]	; 0xac
 8005e52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005e54:	b11b      	cbz	r3, 8005e5e <_vfprintf_r+0x546>
 8005e56:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005e58:	9803      	ldr	r0, [sp, #12]
 8005e5a:	f002 fc9d 	bl	8008798 <_free_r>
 8005e5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e62:	4657      	mov	r7, sl
 8005e64:	783b      	ldrb	r3, [r7, #0]
 8005e66:	2b00      	cmp	r3, #0
 8005e68:	f47f ada7 	bne.w	80059ba <_vfprintf_r+0xa2>
 8005e6c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005e6e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005e72:	2b00      	cmp	r3, #0
 8005e74:	f041 80e7 	bne.w	8007046 <_vfprintf_r+0x172e>
 8005e78:	2300      	movs	r3, #0
 8005e7a:	932b      	str	r3, [sp, #172]	; 0xac
 8005e7c:	e2cb      	b.n	8006416 <_vfprintf_r+0xafe>
 8005e7e:	4643      	mov	r3, r8
 8005e80:	069a      	lsls	r2, r3, #26
 8005e82:	f140 814e 	bpl.w	8006122 <_vfprintf_r+0x80a>
 8005e86:	9c08      	ldr	r4, [sp, #32]
 8005e88:	3407      	adds	r4, #7
 8005e8a:	f024 0207 	bic.w	r2, r4, #7
 8005e8e:	f102 0108 	add.w	r1, r2, #8
 8005e92:	e9d2 4500 	ldrd	r4, r5, [r2]
 8005e96:	9108      	str	r1, [sp, #32]
 8005e98:	2201      	movs	r2, #1
 8005e9a:	2100      	movs	r1, #0
 8005e9c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8005ea0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005ea4:	a956      	add	r1, sp, #344	; 0x158
 8005ea6:	9104      	str	r1, [sp, #16]
 8005ea8:	f47f aea2 	bne.w	8005bf0 <_vfprintf_r+0x2d8>
 8005eac:	4698      	mov	r8, r3
 8005eae:	2a01      	cmp	r2, #1
 8005eb0:	f000 8350 	beq.w	8006554 <_vfprintf_r+0xc3c>
 8005eb4:	2a02      	cmp	r2, #2
 8005eb6:	f000 831b 	beq.w	80064f0 <_vfprintf_r+0xbd8>
 8005eba:	a956      	add	r1, sp, #344	; 0x158
 8005ebc:	e000      	b.n	8005ec0 <_vfprintf_r+0x5a8>
 8005ebe:	4639      	mov	r1, r7
 8005ec0:	08e2      	lsrs	r2, r4, #3
 8005ec2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8005ec6:	08e8      	lsrs	r0, r5, #3
 8005ec8:	f004 0307 	and.w	r3, r4, #7
 8005ecc:	4605      	mov	r5, r0
 8005ece:	4614      	mov	r4, r2
 8005ed0:	3330      	adds	r3, #48	; 0x30
 8005ed2:	ea54 0205 	orrs.w	r2, r4, r5
 8005ed6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8005eda:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8005ede:	d1ee      	bne.n	8005ebe <_vfprintf_r+0x5a6>
 8005ee0:	f018 0f01 	tst.w	r8, #1
 8005ee4:	f000 8314 	beq.w	8006510 <_vfprintf_r+0xbf8>
 8005ee8:	2b30      	cmp	r3, #48	; 0x30
 8005eea:	f000 8311 	beq.w	8006510 <_vfprintf_r+0xbf8>
 8005eee:	9a04      	ldr	r2, [sp, #16]
 8005ef0:	3902      	subs	r1, #2
 8005ef2:	2330      	movs	r3, #48	; 0x30
 8005ef4:	1a52      	subs	r2, r2, r1
 8005ef6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8005efa:	9209      	str	r2, [sp, #36]	; 0x24
 8005efc:	460f      	mov	r7, r1
 8005efe:	e68c      	b.n	8005c1a <_vfprintf_r+0x302>
 8005f00:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005f04:	2200      	movs	r2, #0
 8005f06:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005f0a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8005f0e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8005f12:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005f16:	2b09      	cmp	r3, #9
 8005f18:	d9f5      	bls.n	8005f06 <_vfprintf_r+0x5ee>
 8005f1a:	9206      	str	r2, [sp, #24]
 8005f1c:	e57c      	b.n	8005a18 <_vfprintf_r+0x100>
 8005f1e:	4b14      	ldr	r3, [pc, #80]	; (8005f70 <_vfprintf_r+0x658>)
 8005f20:	9317      	str	r3, [sp, #92]	; 0x5c
 8005f22:	f018 0f20 	tst.w	r8, #32
 8005f26:	f000 8114 	beq.w	8006152 <_vfprintf_r+0x83a>
 8005f2a:	9c08      	ldr	r4, [sp, #32]
 8005f2c:	3407      	adds	r4, #7
 8005f2e:	f024 0307 	bic.w	r3, r4, #7
 8005f32:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005f36:	f103 0208 	add.w	r2, r3, #8
 8005f3a:	9208      	str	r2, [sp, #32]
 8005f3c:	f018 0f01 	tst.w	r8, #1
 8005f40:	d009      	beq.n	8005f56 <_vfprintf_r+0x63e>
 8005f42:	ea54 0305 	orrs.w	r3, r4, r5
 8005f46:	d006      	beq.n	8005f56 <_vfprintf_r+0x63e>
 8005f48:	2330      	movs	r3, #48	; 0x30
 8005f4a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8005f4e:	f048 0802 	orr.w	r8, r8, #2
 8005f52:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005f56:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005f5a:	2202      	movs	r2, #2
 8005f5c:	e79d      	b.n	8005e9a <_vfprintf_r+0x582>
 8005f5e:	f048 0801 	orr.w	r8, r8, #1
 8005f62:	f89a 6000 	ldrb.w	r6, [sl]
 8005f66:	e555      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005f68:	0800a89c 	.word	0x0800a89c
 8005f6c:	0800a8ac 	.word	0x0800a8ac
 8005f70:	0800a868 	.word	0x0800a868
 8005f74:	9e03      	ldr	r6, [sp, #12]
 8005f76:	4630      	mov	r0, r6
 8005f78:	f002 feaa 	bl	8008cd0 <_localeconv_r>
 8005f7c:	6843      	ldr	r3, [r0, #4]
 8005f7e:	9318      	str	r3, [sp, #96]	; 0x60
 8005f80:	4618      	mov	r0, r3
 8005f82:	f7fb f83d 	bl	8001000 <strlen>
 8005f86:	901b      	str	r0, [sp, #108]	; 0x6c
 8005f88:	4604      	mov	r4, r0
 8005f8a:	4630      	mov	r0, r6
 8005f8c:	f002 fea0 	bl	8008cd0 <_localeconv_r>
 8005f90:	6883      	ldr	r3, [r0, #8]
 8005f92:	931a      	str	r3, [sp, #104]	; 0x68
 8005f94:	2c00      	cmp	r4, #0
 8005f96:	f43f adb8 	beq.w	8005b0a <_vfprintf_r+0x1f2>
 8005f9a:	f89a 6000 	ldrb.w	r6, [sl]
 8005f9e:	2b00      	cmp	r3, #0
 8005fa0:	f43f ad38 	beq.w	8005a14 <_vfprintf_r+0xfc>
 8005fa4:	781b      	ldrb	r3, [r3, #0]
 8005fa6:	2b00      	cmp	r3, #0
 8005fa8:	f43f ad34 	beq.w	8005a14 <_vfprintf_r+0xfc>
 8005fac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8005fb0:	e530      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005fb2:	9b08      	ldr	r3, [sp, #32]
 8005fb4:	f89a 6000 	ldrb.w	r6, [sl]
 8005fb8:	681a      	ldr	r2, [r3, #0]
 8005fba:	9206      	str	r2, [sp, #24]
 8005fbc:	2a00      	cmp	r2, #0
 8005fbe:	f103 0304 	add.w	r3, r3, #4
 8005fc2:	f2c0 8697 	blt.w	8006cf4 <_vfprintf_r+0x13dc>
 8005fc6:	9308      	str	r3, [sp, #32]
 8005fc8:	e524      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005fca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8005fce:	f89a 6000 	ldrb.w	r6, [sl]
 8005fd2:	e51f      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005fd4:	f89a 6000 	ldrb.w	r6, [sl]
 8005fd8:	f048 0804 	orr.w	r8, r8, #4
 8005fdc:	e51a      	b.n	8005a14 <_vfprintf_r+0xfc>
 8005fde:	f89a 6000 	ldrb.w	r6, [sl]
 8005fe2:	2e2a      	cmp	r6, #42	; 0x2a
 8005fe4:	f10a 0201 	add.w	r2, sl, #1
 8005fe8:	f001 81b0 	beq.w	800734c <_vfprintf_r+0x1a34>
 8005fec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005ff0:	2b09      	cmp	r3, #9
 8005ff2:	4692      	mov	sl, r2
 8005ff4:	f04f 0900 	mov.w	r9, #0
 8005ff8:	f63f ad0e 	bhi.w	8005a18 <_vfprintf_r+0x100>
 8005ffc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8006000:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8006004:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8006008:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800600c:	2b09      	cmp	r3, #9
 800600e:	d9f5      	bls.n	8005ffc <_vfprintf_r+0x6e4>
 8006010:	e502      	b.n	8005a18 <_vfprintf_r+0x100>
 8006012:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8006016:	f89a 6000 	ldrb.w	r6, [sl]
 800601a:	e4fb      	b.n	8005a14 <_vfprintf_r+0xfc>
 800601c:	9c08      	ldr	r4, [sp, #32]
 800601e:	3407      	adds	r4, #7
 8006020:	f024 0407 	bic.w	r4, r4, #7
 8006024:	ed94 7b00 	vldr	d7, [r4]
 8006028:	ec52 1b17 	vmov	r1, r2, d7
 800602c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006030:	931d      	str	r3, [sp, #116]	; 0x74
 8006032:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8006036:	3408      	adds	r4, #8
 8006038:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800603c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8006040:	4bba      	ldr	r3, [pc, #744]	; (800632c <_vfprintf_r+0xa14>)
 8006042:	9408      	str	r4, [sp, #32]
 8006044:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8006048:	f7fa fd30 	bl	8000aac <__aeabi_dcmpun>
 800604c:	2800      	cmp	r0, #0
 800604e:	f040 846f 	bne.w	8006930 <_vfprintf_r+0x1018>
 8006052:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8006056:	4bb5      	ldr	r3, [pc, #724]	; (800632c <_vfprintf_r+0xa14>)
 8006058:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800605c:	f7fa fd08 	bl	8000a70 <__aeabi_dcmple>
 8006060:	2800      	cmp	r0, #0
 8006062:	f040 8465 	bne.w	8006930 <_vfprintf_r+0x1018>
 8006066:	2200      	movs	r2, #0
 8006068:	2300      	movs	r3, #0
 800606a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800606e:	f7fa fcf5 	bl	8000a5c <__aeabi_dcmplt>
 8006072:	2800      	cmp	r0, #0
 8006074:	f040 855b 	bne.w	8006b2e <_vfprintf_r+0x1216>
 8006078:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800607c:	4fac      	ldr	r7, [pc, #688]	; (8006330 <_vfprintf_r+0xa18>)
 800607e:	4bad      	ldr	r3, [pc, #692]	; (8006334 <_vfprintf_r+0xa1c>)
 8006080:	2000      	movs	r0, #0
 8006082:	2103      	movs	r1, #3
 8006084:	9104      	str	r1, [sp, #16]
 8006086:	900a      	str	r0, [sp, #40]	; 0x28
 8006088:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800608c:	2e47      	cmp	r6, #71	; 0x47
 800608e:	bfd8      	it	le
 8006090:	461f      	movle	r7, r3
 8006092:	9109      	str	r1, [sp, #36]	; 0x24
 8006094:	4681      	mov	r9, r0
 8006096:	900f      	str	r0, [sp, #60]	; 0x3c
 8006098:	9014      	str	r0, [sp, #80]	; 0x50
 800609a:	9011      	str	r0, [sp, #68]	; 0x44
 800609c:	e5c9      	b.n	8005c32 <_vfprintf_r+0x31a>
 800609e:	9808      	ldr	r0, [sp, #32]
 80060a0:	2300      	movs	r3, #0
 80060a2:	6801      	ldr	r1, [r0, #0]
 80060a4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80060a8:	461a      	mov	r2, r3
 80060aa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80060ae:	2301      	movs	r3, #1
 80060b0:	1d01      	adds	r1, r0, #4
 80060b2:	9304      	str	r3, [sp, #16]
 80060b4:	920a      	str	r2, [sp, #40]	; 0x28
 80060b6:	4691      	mov	r9, r2
 80060b8:	920f      	str	r2, [sp, #60]	; 0x3c
 80060ba:	9214      	str	r2, [sp, #80]	; 0x50
 80060bc:	9211      	str	r2, [sp, #68]	; 0x44
 80060be:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80060c2:	af3d      	add	r7, sp, #244	; 0xf4
 80060c4:	e5b9      	b.n	8005c3a <_vfprintf_r+0x322>
 80060c6:	9b08      	ldr	r3, [sp, #32]
 80060c8:	681f      	ldr	r7, [r3, #0]
 80060ca:	2500      	movs	r5, #0
 80060cc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80060d0:	1d1c      	adds	r4, r3, #4
 80060d2:	2f00      	cmp	r7, #0
 80060d4:	f000 8639 	beq.w	8006d4a <_vfprintf_r+0x1432>
 80060d8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80060dc:	f000 8711 	beq.w	8006f02 <_vfprintf_r+0x15ea>
 80060e0:	464a      	mov	r2, r9
 80060e2:	4629      	mov	r1, r5
 80060e4:	4638      	mov	r0, r7
 80060e6:	f7fa fffb 	bl	80010e0 <memchr>
 80060ea:	900a      	str	r0, [sp, #40]	; 0x28
 80060ec:	2800      	cmp	r0, #0
 80060ee:	f000 85e7 	beq.w	8006cc0 <_vfprintf_r+0x13a8>
 80060f2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80060f4:	1bdb      	subs	r3, r3, r7
 80060f6:	9309      	str	r3, [sp, #36]	; 0x24
 80060f8:	46a9      	mov	r9, r5
 80060fa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80060fe:	9408      	str	r4, [sp, #32]
 8006100:	9304      	str	r3, [sp, #16]
 8006102:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006106:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800610a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800610e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8006112:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006116:	e58c      	b.n	8005c32 <_vfprintf_r+0x31a>
 8006118:	f048 0310 	orr.w	r3, r8, #16
 800611c:	069a      	lsls	r2, r3, #26
 800611e:	f53f aeb2 	bmi.w	8005e86 <_vfprintf_r+0x56e>
 8006122:	9a08      	ldr	r2, [sp, #32]
 8006124:	06df      	lsls	r7, r3, #27
 8006126:	f102 0104 	add.w	r1, r2, #4
 800612a:	f100 837e 	bmi.w	800682a <_vfprintf_r+0xf12>
 800612e:	065d      	lsls	r5, r3, #25
 8006130:	9a08      	ldr	r2, [sp, #32]
 8006132:	f100 84e4 	bmi.w	8006afe <_vfprintf_r+0x11e6>
 8006136:	059c      	lsls	r4, r3, #22
 8006138:	f140 8377 	bpl.w	800682a <_vfprintf_r+0xf12>
 800613c:	7814      	ldrb	r4, [r2, #0]
 800613e:	9108      	str	r1, [sp, #32]
 8006140:	2500      	movs	r5, #0
 8006142:	2201      	movs	r2, #1
 8006144:	e6a9      	b.n	8005e9a <_vfprintf_r+0x582>
 8006146:	4b7c      	ldr	r3, [pc, #496]	; (8006338 <_vfprintf_r+0xa20>)
 8006148:	9317      	str	r3, [sp, #92]	; 0x5c
 800614a:	f018 0f20 	tst.w	r8, #32
 800614e:	f47f aeec 	bne.w	8005f2a <_vfprintf_r+0x612>
 8006152:	9a08      	ldr	r2, [sp, #32]
 8006154:	f018 0f10 	tst.w	r8, #16
 8006158:	f102 0304 	add.w	r3, r2, #4
 800615c:	f040 8354 	bne.w	8006808 <_vfprintf_r+0xef0>
 8006160:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006164:	9a08      	ldr	r2, [sp, #32]
 8006166:	f040 84d0 	bne.w	8006b0a <_vfprintf_r+0x11f2>
 800616a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800616e:	f000 834b 	beq.w	8006808 <_vfprintf_r+0xef0>
 8006172:	7814      	ldrb	r4, [r2, #0]
 8006174:	9308      	str	r3, [sp, #32]
 8006176:	2500      	movs	r5, #0
 8006178:	e6e0      	b.n	8005f3c <_vfprintf_r+0x624>
 800617a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800617e:	f89a 6000 	ldrb.w	r6, [sl]
 8006182:	2b00      	cmp	r3, #0
 8006184:	f47f ac46 	bne.w	8005a14 <_vfprintf_r+0xfc>
 8006188:	2320      	movs	r3, #32
 800618a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800618e:	e441      	b.n	8005a14 <_vfprintf_r+0xfc>
 8006190:	f89a 6000 	ldrb.w	r6, [sl]
 8006194:	2e6c      	cmp	r6, #108	; 0x6c
 8006196:	bf03      	ittte	eq
 8006198:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800619c:	f048 0820 	orreq.w	r8, r8, #32
 80061a0:	f10a 0a01 	addeq.w	sl, sl, #1
 80061a4:	f048 0810 	orrne.w	r8, r8, #16
 80061a8:	e434      	b.n	8005a14 <_vfprintf_r+0xfc>
 80061aa:	9a08      	ldr	r2, [sp, #32]
 80061ac:	f018 0f20 	tst.w	r8, #32
 80061b0:	f852 3b04 	ldr.w	r3, [r2], #4
 80061b4:	9208      	str	r2, [sp, #32]
 80061b6:	f000 83a1 	beq.w	80068fc <_vfprintf_r+0xfe4>
 80061ba:	9a05      	ldr	r2, [sp, #20]
 80061bc:	4610      	mov	r0, r2
 80061be:	17d1      	asrs	r1, r2, #31
 80061c0:	e9c3 0100 	strd	r0, r1, [r3]
 80061c4:	4657      	mov	r7, sl
 80061c6:	e64d      	b.n	8005e64 <_vfprintf_r+0x54c>
 80061c8:	f89a 6000 	ldrb.w	r6, [sl]
 80061cc:	2e68      	cmp	r6, #104	; 0x68
 80061ce:	bf03      	ittte	eq
 80061d0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80061d4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80061d8:	f10a 0a01 	addeq.w	sl, sl, #1
 80061dc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80061e0:	e418      	b.n	8005a14 <_vfprintf_r+0xfc>
 80061e2:	9908      	ldr	r1, [sp, #32]
 80061e4:	4b55      	ldr	r3, [pc, #340]	; (800633c <_vfprintf_r+0xa24>)
 80061e6:	680c      	ldr	r4, [r1, #0]
 80061e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80061ea:	f647 0230 	movw	r2, #30768	; 0x7830
 80061ee:	3104      	adds	r1, #4
 80061f0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80061f4:	f048 0302 	orr.w	r3, r8, #2
 80061f8:	9108      	str	r1, [sp, #32]
 80061fa:	2500      	movs	r5, #0
 80061fc:	2202      	movs	r2, #2
 80061fe:	2678      	movs	r6, #120	; 0x78
 8006200:	e64b      	b.n	8005e9a <_vfprintf_r+0x582>
 8006202:	f048 0808 	orr.w	r8, r8, #8
 8006206:	f89a 6000 	ldrb.w	r6, [sl]
 800620a:	e403      	b.n	8005a14 <_vfprintf_r+0xfc>
 800620c:	f048 0310 	orr.w	r3, r8, #16
 8006210:	069f      	lsls	r7, r3, #26
 8006212:	f53f acd1 	bmi.w	8005bb8 <_vfprintf_r+0x2a0>
 8006216:	9908      	ldr	r1, [sp, #32]
 8006218:	06dd      	lsls	r5, r3, #27
 800621a:	f101 0204 	add.w	r2, r1, #4
 800621e:	f100 82fd 	bmi.w	800681c <_vfprintf_r+0xf04>
 8006222:	065c      	lsls	r4, r3, #25
 8006224:	9908      	ldr	r1, [sp, #32]
 8006226:	f100 8475 	bmi.w	8006b14 <_vfprintf_r+0x11fc>
 800622a:	0598      	lsls	r0, r3, #22
 800622c:	f140 82f6 	bpl.w	800681c <_vfprintf_r+0xf04>
 8006230:	f991 4000 	ldrsb.w	r4, [r1]
 8006234:	9208      	str	r2, [sp, #32]
 8006236:	17e5      	asrs	r5, r4, #31
 8006238:	4620      	mov	r0, r4
 800623a:	4629      	mov	r1, r5
 800623c:	e4c7      	b.n	8005bce <_vfprintf_r+0x2b6>
 800623e:	9a08      	ldr	r2, [sp, #32]
 8006240:	f018 0f10 	tst.w	r8, #16
 8006244:	f102 0304 	add.w	r3, r2, #4
 8006248:	f040 82e3 	bne.w	8006812 <_vfprintf_r+0xefa>
 800624c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006250:	9a08      	ldr	r2, [sp, #32]
 8006252:	f040 8467 	bne.w	8006b24 <_vfprintf_r+0x120c>
 8006256:	f418 7f00 	tst.w	r8, #512	; 0x200
 800625a:	f000 82da 	beq.w	8006812 <_vfprintf_r+0xefa>
 800625e:	7814      	ldrb	r4, [r2, #0]
 8006260:	9308      	str	r3, [sp, #32]
 8006262:	2500      	movs	r5, #0
 8006264:	e488      	b.n	8005b78 <_vfprintf_r+0x260>
 8006266:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800626a:	f002 fd45 	bl	8008cf8 <__retarget_lock_release_recursive>
 800626e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006272:	9305      	str	r3, [sp, #20]
 8006274:	e443      	b.n	8005afe <_vfprintf_r+0x1e6>
 8006276:	2e00      	cmp	r6, #0
 8006278:	f43f adf8 	beq.w	8005e6c <_vfprintf_r+0x554>
 800627c:	2300      	movs	r3, #0
 800627e:	2101      	movs	r1, #1
 8006280:	461a      	mov	r2, r3
 8006282:	9104      	str	r1, [sp, #16]
 8006284:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8006288:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800628c:	930a      	str	r3, [sp, #40]	; 0x28
 800628e:	4699      	mov	r9, r3
 8006290:	930f      	str	r3, [sp, #60]	; 0x3c
 8006292:	9314      	str	r3, [sp, #80]	; 0x50
 8006294:	9311      	str	r3, [sp, #68]	; 0x44
 8006296:	9109      	str	r1, [sp, #36]	; 0x24
 8006298:	af3d      	add	r7, sp, #244	; 0xf4
 800629a:	e4ce      	b.n	8005c3a <_vfprintf_r+0x322>
 800629c:	2e65      	cmp	r6, #101	; 0x65
 800629e:	f340 80ca 	ble.w	8006436 <_vfprintf_r+0xb1e>
 80062a2:	2200      	movs	r2, #0
 80062a4:	2300      	movs	r3, #0
 80062a6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80062aa:	f7fa fbcd 	bl	8000a48 <__aeabi_dcmpeq>
 80062ae:	2800      	cmp	r0, #0
 80062b0:	f000 8169 	beq.w	8006586 <_vfprintf_r+0xc6e>
 80062b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80062b6:	4a22      	ldr	r2, [pc, #136]	; (8006340 <_vfprintf_r+0xa28>)
 80062b8:	f8cb 2000 	str.w	r2, [fp]
 80062bc:	3301      	adds	r3, #1
 80062be:	3401      	adds	r4, #1
 80062c0:	2201      	movs	r2, #1
 80062c2:	2b07      	cmp	r3, #7
 80062c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80062c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80062cc:	f300 8406 	bgt.w	8006adc <_vfprintf_r+0x11c4>
 80062d0:	f10b 0b08 	add.w	fp, fp, #8
 80062d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80062d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80062d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80062da:	4293      	cmp	r3, r2
 80062dc:	db03      	blt.n	80062e6 <_vfprintf_r+0x9ce>
 80062de:	f018 0f01 	tst.w	r8, #1
 80062e2:	f43f ad6a 	beq.w	8005dba <_vfprintf_r+0x4a2>
 80062e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80062e8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80062ea:	f8cb 2000 	str.w	r2, [fp]
 80062ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80062f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80062f4:	3301      	adds	r3, #1
 80062f6:	4414      	add	r4, r2
 80062f8:	2b07      	cmp	r3, #7
 80062fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80062fe:	f300 8517 	bgt.w	8006d30 <_vfprintf_r+0x1418>
 8006302:	f10b 0b08 	add.w	fp, fp, #8
 8006306:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006308:	1e5d      	subs	r5, r3, #1
 800630a:	2d00      	cmp	r5, #0
 800630c:	f77f ad55 	ble.w	8005dba <_vfprintf_r+0x4a2>
 8006310:	2d10      	cmp	r5, #16
 8006312:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006314:	4b0b      	ldr	r3, [pc, #44]	; (8006344 <_vfprintf_r+0xa2c>)
 8006316:	f340 82e7 	ble.w	80068e8 <_vfprintf_r+0xfd0>
 800631a:	4619      	mov	r1, r3
 800631c:	2610      	movs	r6, #16
 800631e:	4623      	mov	r3, r4
 8006320:	9f03      	ldr	r7, [sp, #12]
 8006322:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006326:	460c      	mov	r4, r1
 8006328:	e014      	b.n	8006354 <_vfprintf_r+0xa3c>
 800632a:	bf00      	nop
 800632c:	7fefffff 	.word	0x7fefffff
 8006330:	0800a85c 	.word	0x0800a85c
 8006334:	0800a858 	.word	0x0800a858
 8006338:	0800a87c 	.word	0x0800a87c
 800633c:	0800a868 	.word	0x0800a868
 8006340:	0800a898 	.word	0x0800a898
 8006344:	0800a8ac 	.word	0x0800a8ac
 8006348:	f10b 0b08 	add.w	fp, fp, #8
 800634c:	3d10      	subs	r5, #16
 800634e:	2d10      	cmp	r5, #16
 8006350:	f340 82c7 	ble.w	80068e2 <_vfprintf_r+0xfca>
 8006354:	3201      	adds	r2, #1
 8006356:	3310      	adds	r3, #16
 8006358:	2a07      	cmp	r2, #7
 800635a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800635e:	e9cb 4600 	strd	r4, r6, [fp]
 8006362:	ddf1      	ble.n	8006348 <_vfprintf_r+0xa30>
 8006364:	aa2a      	add	r2, sp, #168	; 0xa8
 8006366:	4649      	mov	r1, r9
 8006368:	4638      	mov	r0, r7
 800636a:	f003 fe03 	bl	8009f74 <__sprint_r>
 800636e:	2800      	cmp	r0, #0
 8006370:	d14c      	bne.n	800640c <_vfprintf_r+0xaf4>
 8006372:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8006376:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800637a:	e7e7      	b.n	800634c <_vfprintf_r+0xa34>
 800637c:	9b06      	ldr	r3, [sp, #24]
 800637e:	9a04      	ldr	r2, [sp, #16]
 8006380:	1a9d      	subs	r5, r3, r2
 8006382:	2d00      	cmp	r5, #0
 8006384:	f77f acc9 	ble.w	8005d1a <_vfprintf_r+0x402>
 8006388:	2d10      	cmp	r5, #16
 800638a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800638c:	4bbc      	ldr	r3, [pc, #752]	; (8006680 <_vfprintf_r+0xd68>)
 800638e:	dd27      	ble.n	80063e0 <_vfprintf_r+0xac8>
 8006390:	4659      	mov	r1, fp
 8006392:	4620      	mov	r0, r4
 8006394:	46bb      	mov	fp, r7
 8006396:	461c      	mov	r4, r3
 8006398:	4637      	mov	r7, r6
 800639a:	9e07      	ldr	r6, [sp, #28]
 800639c:	e004      	b.n	80063a8 <_vfprintf_r+0xa90>
 800639e:	3d10      	subs	r5, #16
 80063a0:	2d10      	cmp	r5, #16
 80063a2:	f101 0108 	add.w	r1, r1, #8
 80063a6:	dd16      	ble.n	80063d6 <_vfprintf_r+0xabe>
 80063a8:	3201      	adds	r2, #1
 80063aa:	3010      	adds	r0, #16
 80063ac:	2310      	movs	r3, #16
 80063ae:	2a07      	cmp	r2, #7
 80063b0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80063b4:	600c      	str	r4, [r1, #0]
 80063b6:	604b      	str	r3, [r1, #4]
 80063b8:	ddf1      	ble.n	800639e <_vfprintf_r+0xa86>
 80063ba:	aa2a      	add	r2, sp, #168	; 0xa8
 80063bc:	4631      	mov	r1, r6
 80063be:	9803      	ldr	r0, [sp, #12]
 80063c0:	f003 fdd8 	bl	8009f74 <__sprint_r>
 80063c4:	2800      	cmp	r0, #0
 80063c6:	f040 80a8 	bne.w	800651a <_vfprintf_r+0xc02>
 80063ca:	3d10      	subs	r5, #16
 80063cc:	2d10      	cmp	r5, #16
 80063ce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80063d2:	a92d      	add	r1, sp, #180	; 0xb4
 80063d4:	dce8      	bgt.n	80063a8 <_vfprintf_r+0xa90>
 80063d6:	463e      	mov	r6, r7
 80063d8:	4623      	mov	r3, r4
 80063da:	465f      	mov	r7, fp
 80063dc:	4604      	mov	r4, r0
 80063de:	468b      	mov	fp, r1
 80063e0:	3201      	adds	r2, #1
 80063e2:	442c      	add	r4, r5
 80063e4:	2a07      	cmp	r2, #7
 80063e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80063ea:	e9cb 3500 	strd	r3, r5, [fp]
 80063ee:	f300 8292 	bgt.w	8006916 <_vfprintf_r+0xffe>
 80063f2:	f10b 0b08 	add.w	fp, fp, #8
 80063f6:	e490      	b.n	8005d1a <_vfprintf_r+0x402>
 80063f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80063fa:	9907      	ldr	r1, [sp, #28]
 80063fc:	9803      	ldr	r0, [sp, #12]
 80063fe:	f003 fdb9 	bl	8009f74 <__sprint_r>
 8006402:	2800      	cmp	r0, #0
 8006404:	f43f ad23 	beq.w	8005e4e <_vfprintf_r+0x536>
 8006408:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800640c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800640e:	b111      	cbz	r1, 8006416 <_vfprintf_r+0xafe>
 8006410:	9803      	ldr	r0, [sp, #12]
 8006412:	f002 f9c1 	bl	8008798 <_free_r>
 8006416:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800641a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800641e:	07d0      	lsls	r0, r2, #31
 8006420:	d402      	bmi.n	8006428 <_vfprintf_r+0xb10>
 8006422:	0599      	lsls	r1, r3, #22
 8006424:	f140 81d0 	bpl.w	80067c8 <_vfprintf_r+0xeb0>
 8006428:	065a      	lsls	r2, r3, #25
 800642a:	f53f ab65 	bmi.w	8005af8 <_vfprintf_r+0x1e0>
 800642e:	9805      	ldr	r0, [sp, #20]
 8006430:	b057      	add	sp, #348	; 0x15c
 8006432:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006436:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006438:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800643a:	2a01      	cmp	r2, #1
 800643c:	f104 0401 	add.w	r4, r4, #1
 8006440:	f103 0501 	add.w	r5, r3, #1
 8006444:	f10b 0608 	add.w	r6, fp, #8
 8006448:	f340 811c 	ble.w	8006684 <_vfprintf_r+0xd6c>
 800644c:	2301      	movs	r3, #1
 800644e:	2d07      	cmp	r5, #7
 8006450:	f8cb 7000 	str.w	r7, [fp]
 8006454:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8006458:	f8cb 3004 	str.w	r3, [fp, #4]
 800645c:	f300 81bb 	bgt.w	80067d6 <_vfprintf_r+0xebe>
 8006460:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006462:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8006464:	1c69      	adds	r1, r5, #1
 8006466:	441c      	add	r4, r3
 8006468:	2907      	cmp	r1, #7
 800646a:	910b      	str	r1, [sp, #44]	; 0x2c
 800646c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8006470:	e9c6 2300 	strd	r2, r3, [r6]
 8006474:	f300 81bb 	bgt.w	80067ee <_vfprintf_r+0xed6>
 8006478:	3608      	adds	r6, #8
 800647a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800647c:	1c53      	adds	r3, r2, #1
 800647e:	461d      	mov	r5, r3
 8006480:	9509      	str	r5, [sp, #36]	; 0x24
 8006482:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8006484:	930e      	str	r3, [sp, #56]	; 0x38
 8006486:	2200      	movs	r2, #0
 8006488:	2300      	movs	r3, #0
 800648a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800648e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8006492:	f106 0b08 	add.w	fp, r6, #8
 8006496:	f7fa fad7 	bl	8000a48 <__aeabi_dcmpeq>
 800649a:	2800      	cmp	r0, #0
 800649c:	f040 80c2 	bne.w	8006624 <_vfprintf_r+0xd0c>
 80064a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80064a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80064a6:	3701      	adds	r7, #1
 80064a8:	444c      	add	r4, r9
 80064aa:	2d07      	cmp	r5, #7
 80064ac:	6037      	str	r7, [r6, #0]
 80064ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80064b0:	952b      	str	r5, [sp, #172]	; 0xac
 80064b2:	f300 80f9 	bgt.w	80066a8 <_vfprintf_r+0xd90>
 80064b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80064b8:	f106 0310 	add.w	r3, r6, #16
 80064bc:	3202      	adds	r2, #2
 80064be:	465e      	mov	r6, fp
 80064c0:	9209      	str	r2, [sp, #36]	; 0x24
 80064c2:	469b      	mov	fp, r3
 80064c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80064c6:	6072      	str	r2, [r6, #4]
 80064c8:	4414      	add	r4, r2
 80064ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80064cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80064ce:	ab26      	add	r3, sp, #152	; 0x98
 80064d0:	2a07      	cmp	r2, #7
 80064d2:	922b      	str	r2, [sp, #172]	; 0xac
 80064d4:	6033      	str	r3, [r6, #0]
 80064d6:	f77f ac70 	ble.w	8005dba <_vfprintf_r+0x4a2>
 80064da:	aa2a      	add	r2, sp, #168	; 0xa8
 80064dc:	9907      	ldr	r1, [sp, #28]
 80064de:	9803      	ldr	r0, [sp, #12]
 80064e0:	f003 fd48 	bl	8009f74 <__sprint_r>
 80064e4:	2800      	cmp	r0, #0
 80064e6:	d18f      	bne.n	8006408 <_vfprintf_r+0xaf0>
 80064e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80064ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80064ee:	e464      	b.n	8005dba <_vfprintf_r+0x4a2>
 80064f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80064f2:	af56      	add	r7, sp, #344	; 0x158
 80064f4:	0923      	lsrs	r3, r4, #4
 80064f6:	f004 010f 	and.w	r1, r4, #15
 80064fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80064fe:	092a      	lsrs	r2, r5, #4
 8006500:	461c      	mov	r4, r3
 8006502:	4615      	mov	r5, r2
 8006504:	5c43      	ldrb	r3, [r0, r1]
 8006506:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800650a:	ea54 0305 	orrs.w	r3, r4, r5
 800650e:	d1f1      	bne.n	80064f4 <_vfprintf_r+0xbdc>
 8006510:	9b04      	ldr	r3, [sp, #16]
 8006512:	1bdb      	subs	r3, r3, r7
 8006514:	9309      	str	r3, [sp, #36]	; 0x24
 8006516:	f7ff bb80 	b.w	8005c1a <_vfprintf_r+0x302>
 800651a:	46b1      	mov	r9, r6
 800651c:	e776      	b.n	800640c <_vfprintf_r+0xaf4>
 800651e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006520:	9907      	ldr	r1, [sp, #28]
 8006522:	9803      	ldr	r0, [sp, #12]
 8006524:	f003 fd26 	bl	8009f74 <__sprint_r>
 8006528:	2800      	cmp	r0, #0
 800652a:	f47f af6d 	bne.w	8006408 <_vfprintf_r+0xaf0>
 800652e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006530:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006534:	f7ff bbdd 	b.w	8005cf2 <_vfprintf_r+0x3da>
 8006538:	aa2a      	add	r2, sp, #168	; 0xa8
 800653a:	9907      	ldr	r1, [sp, #28]
 800653c:	9803      	ldr	r0, [sp, #12]
 800653e:	f003 fd19 	bl	8009f74 <__sprint_r>
 8006542:	2800      	cmp	r0, #0
 8006544:	f47f af60 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006548:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800654a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800654e:	f7ff bbe0 	b.w	8005d12 <_vfprintf_r+0x3fa>
 8006552:	4698      	mov	r8, r3
 8006554:	2d00      	cmp	r5, #0
 8006556:	bf08      	it	eq
 8006558:	2c0a      	cmpeq	r4, #10
 800655a:	f080 8170 	bcs.w	800683e <_vfprintf_r+0xf26>
 800655e:	af56      	add	r7, sp, #344	; 0x158
 8006560:	3430      	adds	r4, #48	; 0x30
 8006562:	2301      	movs	r3, #1
 8006564:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8006568:	9309      	str	r3, [sp, #36]	; 0x24
 800656a:	f7ff bb56 	b.w	8005c1a <_vfprintf_r+0x302>
 800656e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006570:	9907      	ldr	r1, [sp, #28]
 8006572:	9803      	ldr	r0, [sp, #12]
 8006574:	f003 fcfe 	bl	8009f74 <__sprint_r>
 8006578:	2800      	cmp	r0, #0
 800657a:	f47f af45 	bne.w	8006408 <_vfprintf_r+0xaf0>
 800657e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006580:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006584:	e406      	b.n	8005d94 <_vfprintf_r+0x47c>
 8006586:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006588:	2b00      	cmp	r3, #0
 800658a:	f340 8273 	ble.w	8006a74 <_vfprintf_r+0x115c>
 800658e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8006592:	4293      	cmp	r3, r2
 8006594:	bfa8      	it	ge
 8006596:	4613      	movge	r3, r2
 8006598:	2b00      	cmp	r3, #0
 800659a:	461d      	mov	r5, r3
 800659c:	dd0d      	ble.n	80065ba <_vfprintf_r+0xca2>
 800659e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80065a0:	f8cb 7000 	str.w	r7, [fp]
 80065a4:	3301      	adds	r3, #1
 80065a6:	442c      	add	r4, r5
 80065a8:	2b07      	cmp	r3, #7
 80065aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80065ac:	f8cb 5004 	str.w	r5, [fp, #4]
 80065b0:	932b      	str	r3, [sp, #172]	; 0xac
 80065b2:	f300 82c1 	bgt.w	8006b38 <_vfprintf_r+0x1220>
 80065b6:	f10b 0b08 	add.w	fp, fp, #8
 80065ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80065bc:	2d00      	cmp	r5, #0
 80065be:	bfa8      	it	ge
 80065c0:	1b5b      	subge	r3, r3, r5
 80065c2:	2b00      	cmp	r3, #0
 80065c4:	461d      	mov	r5, r3
 80065c6:	f340 8099 	ble.w	80066fc <_vfprintf_r+0xde4>
 80065ca:	2d10      	cmp	r5, #16
 80065cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80065ce:	4b2c      	ldr	r3, [pc, #176]	; (8006680 <_vfprintf_r+0xd68>)
 80065d0:	f340 83db 	ble.w	8006d8a <_vfprintf_r+0x1472>
 80065d4:	4618      	mov	r0, r3
 80065d6:	4621      	mov	r1, r4
 80065d8:	465b      	mov	r3, fp
 80065da:	2610      	movs	r6, #16
 80065dc:	46bb      	mov	fp, r7
 80065de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80065e2:	9c07      	ldr	r4, [sp, #28]
 80065e4:	4607      	mov	r7, r0
 80065e6:	e004      	b.n	80065f2 <_vfprintf_r+0xcda>
 80065e8:	3308      	adds	r3, #8
 80065ea:	3d10      	subs	r5, #16
 80065ec:	2d10      	cmp	r5, #16
 80065ee:	f340 83c7 	ble.w	8006d80 <_vfprintf_r+0x1468>
 80065f2:	3201      	adds	r2, #1
 80065f4:	3110      	adds	r1, #16
 80065f6:	2a07      	cmp	r2, #7
 80065f8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80065fc:	e9c3 7600 	strd	r7, r6, [r3]
 8006600:	ddf2      	ble.n	80065e8 <_vfprintf_r+0xcd0>
 8006602:	aa2a      	add	r2, sp, #168	; 0xa8
 8006604:	4621      	mov	r1, r4
 8006606:	4648      	mov	r0, r9
 8006608:	f003 fcb4 	bl	8009f74 <__sprint_r>
 800660c:	2800      	cmp	r0, #0
 800660e:	f040 84a5 	bne.w	8006f5c <_vfprintf_r+0x1644>
 8006612:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8006616:	ab2d      	add	r3, sp, #180	; 0xb4
 8006618:	e7e7      	b.n	80065ea <_vfprintf_r+0xcd2>
 800661a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800661e:	af56      	add	r7, sp, #344	; 0x158
 8006620:	f7ff bafb 	b.w	8005c1a <_vfprintf_r+0x302>
 8006624:	f1b9 0f00 	cmp.w	r9, #0
 8006628:	f77f af4c 	ble.w	80064c4 <_vfprintf_r+0xbac>
 800662c:	f1b9 0f10 	cmp.w	r9, #16
 8006630:	4b13      	ldr	r3, [pc, #76]	; (8006680 <_vfprintf_r+0xd68>)
 8006632:	f340 8659 	ble.w	80072e8 <_vfprintf_r+0x19d0>
 8006636:	4619      	mov	r1, r3
 8006638:	4622      	mov	r2, r4
 800663a:	4633      	mov	r3, r6
 800663c:	2710      	movs	r7, #16
 800663e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8006642:	9c07      	ldr	r4, [sp, #28]
 8006644:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8006646:	460e      	mov	r6, r1
 8006648:	e007      	b.n	800665a <_vfprintf_r+0xd42>
 800664a:	3308      	adds	r3, #8
 800664c:	f1a9 0910 	sub.w	r9, r9, #16
 8006650:	f1b9 0f10 	cmp.w	r9, #16
 8006654:	f340 8353 	ble.w	8006cfe <_vfprintf_r+0x13e6>
 8006658:	3501      	adds	r5, #1
 800665a:	3210      	adds	r2, #16
 800665c:	2d07      	cmp	r5, #7
 800665e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8006662:	e9c3 6700 	strd	r6, r7, [r3]
 8006666:	ddf0      	ble.n	800664a <_vfprintf_r+0xd32>
 8006668:	aa2a      	add	r2, sp, #168	; 0xa8
 800666a:	4621      	mov	r1, r4
 800666c:	4658      	mov	r0, fp
 800666e:	f003 fc81 	bl	8009f74 <__sprint_r>
 8006672:	2800      	cmp	r0, #0
 8006674:	f040 8472 	bne.w	8006f5c <_vfprintf_r+0x1644>
 8006678:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800667c:	ab2d      	add	r3, sp, #180	; 0xb4
 800667e:	e7e5      	b.n	800664c <_vfprintf_r+0xd34>
 8006680:	0800a8ac 	.word	0x0800a8ac
 8006684:	f018 0f01 	tst.w	r8, #1
 8006688:	f47f aee0 	bne.w	800644c <_vfprintf_r+0xb34>
 800668c:	2201      	movs	r2, #1
 800668e:	2d07      	cmp	r5, #7
 8006690:	f8cb 7000 	str.w	r7, [fp]
 8006694:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8006698:	f8cb 2004 	str.w	r2, [fp, #4]
 800669c:	dc04      	bgt.n	80066a8 <_vfprintf_r+0xd90>
 800669e:	3302      	adds	r3, #2
 80066a0:	9309      	str	r3, [sp, #36]	; 0x24
 80066a2:	f10b 0b10 	add.w	fp, fp, #16
 80066a6:	e70d      	b.n	80064c4 <_vfprintf_r+0xbac>
 80066a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80066aa:	9907      	ldr	r1, [sp, #28]
 80066ac:	9803      	ldr	r0, [sp, #12]
 80066ae:	f003 fc61 	bl	8009f74 <__sprint_r>
 80066b2:	2800      	cmp	r0, #0
 80066b4:	f47f aea8 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80066b8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80066bc:	3301      	adds	r3, #1
 80066be:	9309      	str	r3, [sp, #36]	; 0x24
 80066c0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80066c4:	ae2d      	add	r6, sp, #180	; 0xb4
 80066c6:	e6fd      	b.n	80064c4 <_vfprintf_r+0xbac>
 80066c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80066ca:	9907      	ldr	r1, [sp, #28]
 80066cc:	9803      	ldr	r0, [sp, #12]
 80066ce:	f003 fc51 	bl	8009f74 <__sprint_r>
 80066d2:	2800      	cmp	r0, #0
 80066d4:	f47f ae98 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80066d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80066dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80066de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066e2:	f7ff baf6 	b.w	8005cd2 <_vfprintf_r+0x3ba>
 80066e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80066e8:	9907      	ldr	r1, [sp, #28]
 80066ea:	9803      	ldr	r0, [sp, #12]
 80066ec:	f003 fc42 	bl	8009f74 <__sprint_r>
 80066f0:	2800      	cmp	r0, #0
 80066f2:	f47f ae89 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80066f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80066f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80066fe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8006702:	443b      	add	r3, r7
 8006704:	4699      	mov	r9, r3
 8006706:	f040 8357 	bne.w	8006db8 <_vfprintf_r+0x14a0>
 800670a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800670c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800670e:	4293      	cmp	r3, r2
 8006710:	db49      	blt.n	80067a6 <_vfprintf_r+0xe8e>
 8006712:	f018 0f01 	tst.w	r8, #1
 8006716:	d146      	bne.n	80067a6 <_vfprintf_r+0xe8e>
 8006718:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800671a:	18bd      	adds	r5, r7, r2
 800671c:	eba5 0509 	sub.w	r5, r5, r9
 8006720:	1ad3      	subs	r3, r2, r3
 8006722:	429d      	cmp	r5, r3
 8006724:	bfa8      	it	ge
 8006726:	461d      	movge	r5, r3
 8006728:	2d00      	cmp	r5, #0
 800672a:	dd0d      	ble.n	8006748 <_vfprintf_r+0xe30>
 800672c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800672e:	f8cb 9000 	str.w	r9, [fp]
 8006732:	3201      	adds	r2, #1
 8006734:	442c      	add	r4, r5
 8006736:	2a07      	cmp	r2, #7
 8006738:	942c      	str	r4, [sp, #176]	; 0xb0
 800673a:	f8cb 5004 	str.w	r5, [fp, #4]
 800673e:	922b      	str	r2, [sp, #172]	; 0xac
 8006740:	f300 8462 	bgt.w	8007008 <_vfprintf_r+0x16f0>
 8006744:	f10b 0b08 	add.w	fp, fp, #8
 8006748:	2d00      	cmp	r5, #0
 800674a:	bfac      	ite	ge
 800674c:	1b5d      	subge	r5, r3, r5
 800674e:	461d      	movlt	r5, r3
 8006750:	2d00      	cmp	r5, #0
 8006752:	f77f ab32 	ble.w	8005dba <_vfprintf_r+0x4a2>
 8006756:	2d10      	cmp	r5, #16
 8006758:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800675a:	4bc5      	ldr	r3, [pc, #788]	; (8006a70 <_vfprintf_r+0x1158>)
 800675c:	f340 80c4 	ble.w	80068e8 <_vfprintf_r+0xfd0>
 8006760:	4619      	mov	r1, r3
 8006762:	2610      	movs	r6, #16
 8006764:	4623      	mov	r3, r4
 8006766:	9f03      	ldr	r7, [sp, #12]
 8006768:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800676c:	460c      	mov	r4, r1
 800676e:	e005      	b.n	800677c <_vfprintf_r+0xe64>
 8006770:	f10b 0b08 	add.w	fp, fp, #8
 8006774:	3d10      	subs	r5, #16
 8006776:	2d10      	cmp	r5, #16
 8006778:	f340 80b3 	ble.w	80068e2 <_vfprintf_r+0xfca>
 800677c:	3201      	adds	r2, #1
 800677e:	3310      	adds	r3, #16
 8006780:	2a07      	cmp	r2, #7
 8006782:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8006786:	e9cb 4600 	strd	r4, r6, [fp]
 800678a:	ddf1      	ble.n	8006770 <_vfprintf_r+0xe58>
 800678c:	aa2a      	add	r2, sp, #168	; 0xa8
 800678e:	4649      	mov	r1, r9
 8006790:	4638      	mov	r0, r7
 8006792:	f003 fbef 	bl	8009f74 <__sprint_r>
 8006796:	2800      	cmp	r0, #0
 8006798:	f47f ae38 	bne.w	800640c <_vfprintf_r+0xaf4>
 800679c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80067a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80067a4:	e7e6      	b.n	8006774 <_vfprintf_r+0xe5c>
 80067a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80067a8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80067aa:	f8cb 1000 	str.w	r1, [fp]
 80067ae:	9915      	ldr	r1, [sp, #84]	; 0x54
 80067b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80067b4:	3201      	adds	r2, #1
 80067b6:	440c      	add	r4, r1
 80067b8:	2a07      	cmp	r2, #7
 80067ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80067bc:	922b      	str	r2, [sp, #172]	; 0xac
 80067be:	f300 828c 	bgt.w	8006cda <_vfprintf_r+0x13c2>
 80067c2:	f10b 0b08 	add.w	fp, fp, #8
 80067c6:	e7a7      	b.n	8006718 <_vfprintf_r+0xe00>
 80067c8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80067cc:	f002 fa94 	bl	8008cf8 <__retarget_lock_release_recursive>
 80067d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80067d4:	e628      	b.n	8006428 <_vfprintf_r+0xb10>
 80067d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80067d8:	9907      	ldr	r1, [sp, #28]
 80067da:	9803      	ldr	r0, [sp, #12]
 80067dc:	f003 fbca 	bl	8009f74 <__sprint_r>
 80067e0:	2800      	cmp	r0, #0
 80067e2:	f47f ae11 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80067e6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80067ea:	ae2d      	add	r6, sp, #180	; 0xb4
 80067ec:	e638      	b.n	8006460 <_vfprintf_r+0xb48>
 80067ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80067f0:	9907      	ldr	r1, [sp, #28]
 80067f2:	9803      	ldr	r0, [sp, #12]
 80067f4:	f003 fbbe 	bl	8009f74 <__sprint_r>
 80067f8:	2800      	cmp	r0, #0
 80067fa:	f47f ae05 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80067fe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8006802:	ae2d      	add	r6, sp, #180	; 0xb4
 8006804:	930b      	str	r3, [sp, #44]	; 0x2c
 8006806:	e638      	b.n	800647a <_vfprintf_r+0xb62>
 8006808:	6814      	ldr	r4, [r2, #0]
 800680a:	9308      	str	r3, [sp, #32]
 800680c:	2500      	movs	r5, #0
 800680e:	f7ff bb95 	b.w	8005f3c <_vfprintf_r+0x624>
 8006812:	6814      	ldr	r4, [r2, #0]
 8006814:	9308      	str	r3, [sp, #32]
 8006816:	2500      	movs	r5, #0
 8006818:	f7ff b9ae 	b.w	8005b78 <_vfprintf_r+0x260>
 800681c:	680c      	ldr	r4, [r1, #0]
 800681e:	9208      	str	r2, [sp, #32]
 8006820:	17e5      	asrs	r5, r4, #31
 8006822:	4620      	mov	r0, r4
 8006824:	4629      	mov	r1, r5
 8006826:	f7ff b9d2 	b.w	8005bce <_vfprintf_r+0x2b6>
 800682a:	6814      	ldr	r4, [r2, #0]
 800682c:	9108      	str	r1, [sp, #32]
 800682e:	2201      	movs	r2, #1
 8006830:	2500      	movs	r5, #0
 8006832:	f7ff bb32 	b.w	8005e9a <_vfprintf_r+0x582>
 8006836:	2a01      	cmp	r2, #1
 8006838:	f47f ab3c 	bne.w	8005eb4 <_vfprintf_r+0x59c>
 800683c:	e68f      	b.n	800655e <_vfprintf_r+0xc46>
 800683e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8006842:	2200      	movs	r2, #0
 8006844:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8006848:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800684c:	af56      	add	r7, sp, #344	; 0x158
 800684e:	4692      	mov	sl, r2
 8006850:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8006854:	461e      	mov	r6, r3
 8006856:	e00a      	b.n	800686e <_vfprintf_r+0xf56>
 8006858:	2300      	movs	r3, #0
 800685a:	4620      	mov	r0, r4
 800685c:	4629      	mov	r1, r5
 800685e:	220a      	movs	r2, #10
 8006860:	f7fa f962 	bl	8000b28 <__aeabi_uldivmod>
 8006864:	4604      	mov	r4, r0
 8006866:	460d      	mov	r5, r1
 8006868:	ea54 0305 	orrs.w	r3, r4, r5
 800686c:	d029      	beq.n	80068c2 <_vfprintf_r+0xfaa>
 800686e:	220a      	movs	r2, #10
 8006870:	2300      	movs	r3, #0
 8006872:	4620      	mov	r0, r4
 8006874:	4629      	mov	r1, r5
 8006876:	f7fa f957 	bl	8000b28 <__aeabi_uldivmod>
 800687a:	3230      	adds	r2, #48	; 0x30
 800687c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8006880:	f10a 0a01 	add.w	sl, sl, #1
 8006884:	3f01      	subs	r7, #1
 8006886:	2e00      	cmp	r6, #0
 8006888:	d0e6      	beq.n	8006858 <_vfprintf_r+0xf40>
 800688a:	f898 3000 	ldrb.w	r3, [r8]
 800688e:	459a      	cmp	sl, r3
 8006890:	d1e2      	bne.n	8006858 <_vfprintf_r+0xf40>
 8006892:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8006896:	d0df      	beq.n	8006858 <_vfprintf_r+0xf40>
 8006898:	2d00      	cmp	r5, #0
 800689a:	bf08      	it	eq
 800689c:	2c0a      	cmpeq	r4, #10
 800689e:	d3db      	bcc.n	8006858 <_vfprintf_r+0xf40>
 80068a0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80068a2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80068a4:	1aff      	subs	r7, r7, r3
 80068a6:	461a      	mov	r2, r3
 80068a8:	4638      	mov	r0, r7
 80068aa:	f003 faf5 	bl	8009e98 <strncpy>
 80068ae:	f898 3001 	ldrb.w	r3, [r8, #1]
 80068b2:	2b00      	cmp	r3, #0
 80068b4:	f000 8496 	beq.w	80071e4 <_vfprintf_r+0x18cc>
 80068b8:	f108 0801 	add.w	r8, r8, #1
 80068bc:	f04f 0a00 	mov.w	sl, #0
 80068c0:	e7ca      	b.n	8006858 <_vfprintf_r+0xf40>
 80068c2:	9b04      	ldr	r3, [sp, #16]
 80068c4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80068c8:	1bdb      	subs	r3, r3, r7
 80068ca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80068ce:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80068d0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80068d4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80068d8:	9309      	str	r3, [sp, #36]	; 0x24
 80068da:	f7ff b99e 	b.w	8005c1a <_vfprintf_r+0x302>
 80068de:	46c1      	mov	r9, r8
 80068e0:	e594      	b.n	800640c <_vfprintf_r+0xaf4>
 80068e2:	4621      	mov	r1, r4
 80068e4:	461c      	mov	r4, r3
 80068e6:	460b      	mov	r3, r1
 80068e8:	3201      	adds	r2, #1
 80068ea:	442c      	add	r4, r5
 80068ec:	2a07      	cmp	r2, #7
 80068ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80068f2:	e9cb 3500 	strd	r3, r5, [fp]
 80068f6:	f77f aa5e 	ble.w	8005db6 <_vfprintf_r+0x49e>
 80068fa:	e5ee      	b.n	80064da <_vfprintf_r+0xbc2>
 80068fc:	f018 0f10 	tst.w	r8, #16
 8006900:	f040 80f8 	bne.w	8006af4 <_vfprintf_r+0x11dc>
 8006904:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006908:	f000 8351 	beq.w	8006fae <_vfprintf_r+0x1696>
 800690c:	9a05      	ldr	r2, [sp, #20]
 800690e:	801a      	strh	r2, [r3, #0]
 8006910:	4657      	mov	r7, sl
 8006912:	f7ff baa7 	b.w	8005e64 <_vfprintf_r+0x54c>
 8006916:	aa2a      	add	r2, sp, #168	; 0xa8
 8006918:	9907      	ldr	r1, [sp, #28]
 800691a:	9803      	ldr	r0, [sp, #12]
 800691c:	f003 fb2a 	bl	8009f74 <__sprint_r>
 8006920:	2800      	cmp	r0, #0
 8006922:	f47f ad71 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006926:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006928:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800692c:	f7ff b9f5 	b.w	8005d1a <_vfprintf_r+0x402>
 8006930:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006934:	4602      	mov	r2, r0
 8006936:	460b      	mov	r3, r1
 8006938:	f7fa f8b8 	bl	8000aac <__aeabi_dcmpun>
 800693c:	2800      	cmp	r0, #0
 800693e:	f040 8491 	bne.w	8007264 <_vfprintf_r+0x194c>
 8006942:	2e61      	cmp	r6, #97	; 0x61
 8006944:	f000 8111 	beq.w	8006b6a <_vfprintf_r+0x1252>
 8006948:	2e41      	cmp	r6, #65	; 0x41
 800694a:	f000 8377 	beq.w	800703c <_vfprintf_r+0x1724>
 800694e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8006952:	f026 0220 	bic.w	r2, r6, #32
 8006956:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800695a:	930e      	str	r3, [sp, #56]	; 0x38
 800695c:	9204      	str	r2, [sp, #16]
 800695e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006960:	f000 842d 	beq.w	80071be <_vfprintf_r+0x18a6>
 8006964:	2a47      	cmp	r2, #71	; 0x47
 8006966:	f000 8424 	beq.w	80071b2 <_vfprintf_r+0x189a>
 800696a:	2b00      	cmp	r3, #0
 800696c:	f2c0 82f9 	blt.w	8006f62 <_vfprintf_r+0x164a>
 8006970:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006974:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006978:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800697c:	2e66      	cmp	r6, #102	; 0x66
 800697e:	f000 83eb 	beq.w	8007158 <_vfprintf_r+0x1840>
 8006982:	2e46      	cmp	r6, #70	; 0x46
 8006984:	f000 847e 	beq.w	8007284 <_vfprintf_r+0x196c>
 8006988:	9b04      	ldr	r3, [sp, #16]
 800698a:	9803      	ldr	r0, [sp, #12]
 800698c:	2b45      	cmp	r3, #69	; 0x45
 800698e:	bf0c      	ite	eq
 8006990:	f109 0501 	addeq.w	r5, r9, #1
 8006994:	464d      	movne	r5, r9
 8006996:	aa28      	add	r2, sp, #160	; 0xa0
 8006998:	ab25      	add	r3, sp, #148	; 0x94
 800699a:	e9cd 3200 	strd	r3, r2, [sp]
 800699e:	2102      	movs	r1, #2
 80069a0:	ab24      	add	r3, sp, #144	; 0x90
 80069a2:	462a      	mov	r2, r5
 80069a4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80069a8:	f000 fe3e 	bl	8007628 <_dtoa_r>
 80069ac:	2e67      	cmp	r6, #103	; 0x67
 80069ae:	4607      	mov	r7, r0
 80069b0:	f040 849c 	bne.w	80072ec <_vfprintf_r+0x19d4>
 80069b4:	f018 0f01 	tst.w	r8, #1
 80069b8:	f040 83f9 	bne.w	80071ae <_vfprintf_r+0x1896>
 80069bc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80069be:	4640      	mov	r0, r8
 80069c0:	1bdb      	subs	r3, r3, r7
 80069c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80069c6:	9310      	str	r3, [sp, #64]	; 0x40
 80069c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80069ca:	9311      	str	r3, [sp, #68]	; 0x44
 80069cc:	9b04      	ldr	r3, [sp, #16]
 80069ce:	2b47      	cmp	r3, #71	; 0x47
 80069d0:	f000 81e7 	beq.w	8006da2 <_vfprintf_r+0x148a>
 80069d4:	9b04      	ldr	r3, [sp, #16]
 80069d6:	2b46      	cmp	r3, #70	; 0x46
 80069d8:	f000 8300 	beq.w	8006fdc <_vfprintf_r+0x16c4>
 80069dc:	9904      	ldr	r1, [sp, #16]
 80069de:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80069e0:	b2f2      	uxtb	r2, r6
 80069e2:	2941      	cmp	r1, #65	; 0x41
 80069e4:	bf08      	it	eq
 80069e6:	320f      	addeq	r2, #15
 80069e8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80069ec:	bf06      	itte	eq
 80069ee:	b2d2      	uxtbeq	r2, r2
 80069f0:	2101      	moveq	r1, #1
 80069f2:	2100      	movne	r1, #0
 80069f4:	2b00      	cmp	r3, #0
 80069f6:	9324      	str	r3, [sp, #144]	; 0x90
 80069f8:	bfb8      	it	lt
 80069fa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80069fc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8006a00:	bfba      	itte	lt
 8006a02:	f1c3 0301 	rsblt	r3, r3, #1
 8006a06:	222d      	movlt	r2, #45	; 0x2d
 8006a08:	222b      	movge	r2, #43	; 0x2b
 8006a0a:	2b09      	cmp	r3, #9
 8006a0c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006a10:	f300 83f9 	bgt.w	8007206 <_vfprintf_r+0x18ee>
 8006a14:	2900      	cmp	r1, #0
 8006a16:	f040 8487 	bne.w	8007328 <_vfprintf_r+0x1a10>
 8006a1a:	2230      	movs	r2, #48	; 0x30
 8006a1c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006a20:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8006a24:	3330      	adds	r3, #48	; 0x30
 8006a26:	7013      	strb	r3, [r2, #0]
 8006a28:	1c53      	adds	r3, r2, #1
 8006a2a:	aa26      	add	r2, sp, #152	; 0x98
 8006a2c:	1a9b      	subs	r3, r3, r2
 8006a2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006a30:	9319      	str	r3, [sp, #100]	; 0x64
 8006a32:	2a01      	cmp	r2, #1
 8006a34:	4413      	add	r3, r2
 8006a36:	9309      	str	r3, [sp, #36]	; 0x24
 8006a38:	f340 8442 	ble.w	80072c0 <_vfprintf_r+0x19a8>
 8006a3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006a3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006a40:	4413      	add	r3, r2
 8006a42:	9309      	str	r3, [sp, #36]	; 0x24
 8006a44:	2300      	movs	r3, #0
 8006a46:	930f      	str	r3, [sp, #60]	; 0x3c
 8006a48:	9314      	str	r3, [sp, #80]	; 0x50
 8006a4a:	9311      	str	r3, [sp, #68]	; 0x44
 8006a4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006a4e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8006a52:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006a56:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8006a5a:	9304      	str	r3, [sp, #16]
 8006a5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006a5e:	2b00      	cmp	r3, #0
 8006a60:	f040 8275 	bne.w	8006f4e <_vfprintf_r+0x1636>
 8006a64:	4699      	mov	r9, r3
 8006a66:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006a6a:	f7ff b8e2 	b.w	8005c32 <_vfprintf_r+0x31a>
 8006a6e:	bf00      	nop
 8006a70:	0800a8ac 	.word	0x0800a8ac
 8006a74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006a76:	49bd      	ldr	r1, [pc, #756]	; (8006d6c <_vfprintf_r+0x1454>)
 8006a78:	f8cb 1000 	str.w	r1, [fp]
 8006a7c:	3201      	adds	r2, #1
 8006a7e:	3401      	adds	r4, #1
 8006a80:	2101      	movs	r1, #1
 8006a82:	2a07      	cmp	r2, #7
 8006a84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006a88:	f8cb 1004 	str.w	r1, [fp, #4]
 8006a8c:	dc60      	bgt.n	8006b50 <_vfprintf_r+0x1238>
 8006a8e:	f10b 0b08 	add.w	fp, fp, #8
 8006a92:	b92b      	cbnz	r3, 8006aa0 <_vfprintf_r+0x1188>
 8006a94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006a96:	b91a      	cbnz	r2, 8006aa0 <_vfprintf_r+0x1188>
 8006a98:	f018 0f01 	tst.w	r8, #1
 8006a9c:	f43f a98d 	beq.w	8005dba <_vfprintf_r+0x4a2>
 8006aa0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006aa2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006aa4:	f8cb 1000 	str.w	r1, [fp]
 8006aa8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006aaa:	f8cb 1004 	str.w	r1, [fp, #4]
 8006aae:	3201      	adds	r2, #1
 8006ab0:	440c      	add	r4, r1
 8006ab2:	2a07      	cmp	r2, #7
 8006ab4:	942c      	str	r4, [sp, #176]	; 0xb0
 8006ab6:	922b      	str	r2, [sp, #172]	; 0xac
 8006ab8:	f300 8282 	bgt.w	8006fc0 <_vfprintf_r+0x16a8>
 8006abc:	f10b 0b08 	add.w	fp, fp, #8
 8006ac0:	2b00      	cmp	r3, #0
 8006ac2:	f2c0 82e7 	blt.w	8007094 <_vfprintf_r+0x177c>
 8006ac6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006ac8:	3201      	adds	r2, #1
 8006aca:	441c      	add	r4, r3
 8006acc:	2a07      	cmp	r2, #7
 8006ace:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006ad2:	e9cb 7300 	strd	r7, r3, [fp]
 8006ad6:	f77f a96e 	ble.w	8005db6 <_vfprintf_r+0x49e>
 8006ada:	e4fe      	b.n	80064da <_vfprintf_r+0xbc2>
 8006adc:	aa2a      	add	r2, sp, #168	; 0xa8
 8006ade:	9907      	ldr	r1, [sp, #28]
 8006ae0:	9803      	ldr	r0, [sp, #12]
 8006ae2:	f003 fa47 	bl	8009f74 <__sprint_r>
 8006ae6:	2800      	cmp	r0, #0
 8006ae8:	f47f ac8e 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006aec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006af0:	f7ff bbf0 	b.w	80062d4 <_vfprintf_r+0x9bc>
 8006af4:	9a05      	ldr	r2, [sp, #20]
 8006af6:	601a      	str	r2, [r3, #0]
 8006af8:	4657      	mov	r7, sl
 8006afa:	f7ff b9b3 	b.w	8005e64 <_vfprintf_r+0x54c>
 8006afe:	8814      	ldrh	r4, [r2, #0]
 8006b00:	9108      	str	r1, [sp, #32]
 8006b02:	2500      	movs	r5, #0
 8006b04:	2201      	movs	r2, #1
 8006b06:	f7ff b9c8 	b.w	8005e9a <_vfprintf_r+0x582>
 8006b0a:	8814      	ldrh	r4, [r2, #0]
 8006b0c:	9308      	str	r3, [sp, #32]
 8006b0e:	2500      	movs	r5, #0
 8006b10:	f7ff ba14 	b.w	8005f3c <_vfprintf_r+0x624>
 8006b14:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006b18:	9208      	str	r2, [sp, #32]
 8006b1a:	17e5      	asrs	r5, r4, #31
 8006b1c:	4620      	mov	r0, r4
 8006b1e:	4629      	mov	r1, r5
 8006b20:	f7ff b855 	b.w	8005bce <_vfprintf_r+0x2b6>
 8006b24:	8814      	ldrh	r4, [r2, #0]
 8006b26:	9308      	str	r3, [sp, #32]
 8006b28:	2500      	movs	r5, #0
 8006b2a:	f7ff b825 	b.w	8005b78 <_vfprintf_r+0x260>
 8006b2e:	222d      	movs	r2, #45	; 0x2d
 8006b30:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006b34:	f7ff baa2 	b.w	800607c <_vfprintf_r+0x764>
 8006b38:	aa2a      	add	r2, sp, #168	; 0xa8
 8006b3a:	9907      	ldr	r1, [sp, #28]
 8006b3c:	9803      	ldr	r0, [sp, #12]
 8006b3e:	f003 fa19 	bl	8009f74 <__sprint_r>
 8006b42:	2800      	cmp	r0, #0
 8006b44:	f47f ac60 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006b48:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006b4a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006b4e:	e534      	b.n	80065ba <_vfprintf_r+0xca2>
 8006b50:	aa2a      	add	r2, sp, #168	; 0xa8
 8006b52:	9907      	ldr	r1, [sp, #28]
 8006b54:	9803      	ldr	r0, [sp, #12]
 8006b56:	f003 fa0d 	bl	8009f74 <__sprint_r>
 8006b5a:	2800      	cmp	r0, #0
 8006b5c:	f47f ac54 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006b60:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006b62:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006b64:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006b68:	e793      	b.n	8006a92 <_vfprintf_r+0x117a>
 8006b6a:	2330      	movs	r3, #48	; 0x30
 8006b6c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006b70:	2378      	movs	r3, #120	; 0x78
 8006b72:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8006b76:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006b7a:	f048 0402 	orr.w	r4, r8, #2
 8006b7e:	f300 82b0 	bgt.w	80070e2 <_vfprintf_r+0x17ca>
 8006b82:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006b86:	930e      	str	r3, [sp, #56]	; 0x38
 8006b88:	f026 0320 	bic.w	r3, r6, #32
 8006b8c:	9304      	str	r3, [sp, #16]
 8006b8e:	2200      	movs	r2, #0
 8006b90:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006b92:	920a      	str	r2, [sp, #40]	; 0x28
 8006b94:	46a0      	mov	r8, r4
 8006b96:	af3d      	add	r7, sp, #244	; 0xf4
 8006b98:	2b00      	cmp	r3, #0
 8006b9a:	f2c0 81e3 	blt.w	8006f64 <_vfprintf_r+0x164c>
 8006b9e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006ba2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006ba6:	2300      	movs	r3, #0
 8006ba8:	930b      	str	r3, [sp, #44]	; 0x2c
 8006baa:	2e61      	cmp	r6, #97	; 0x61
 8006bac:	f000 8255 	beq.w	800705a <_vfprintf_r+0x1742>
 8006bb0:	2e41      	cmp	r6, #65	; 0x41
 8006bb2:	f47f aee3 	bne.w	800697c <_vfprintf_r+0x1064>
 8006bb6:	a824      	add	r0, sp, #144	; 0x90
 8006bb8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006bbc:	f003 f8e2 	bl	8009d84 <frexp>
 8006bc0:	2200      	movs	r2, #0
 8006bc2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006bc6:	ec51 0b10 	vmov	r0, r1, d0
 8006bca:	f7f9 fcd5 	bl	8000578 <__aeabi_dmul>
 8006bce:	2200      	movs	r2, #0
 8006bd0:	2300      	movs	r3, #0
 8006bd2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006bd6:	f7f9 ff37 	bl	8000a48 <__aeabi_dcmpeq>
 8006bda:	2800      	cmp	r0, #0
 8006bdc:	f040 8305 	bne.w	80071ea <_vfprintf_r+0x18d2>
 8006be0:	4b63      	ldr	r3, [pc, #396]	; (8006d70 <_vfprintf_r+0x1458>)
 8006be2:	9309      	str	r3, [sp, #36]	; 0x24
 8006be4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8006be8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8006bec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006bf0:	9721      	str	r7, [sp, #132]	; 0x84
 8006bf2:	46b9      	mov	r9, r7
 8006bf4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8006bf8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8006bfc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006c00:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8006c04:	e003      	b.n	8006c0e <_vfprintf_r+0x12f6>
 8006c06:	f7f9 ff1f 	bl	8000a48 <__aeabi_dcmpeq>
 8006c0a:	bb20      	cbnz	r0, 8006c56 <_vfprintf_r+0x133e>
 8006c0c:	46a9      	mov	r9, r5
 8006c0e:	2200      	movs	r2, #0
 8006c10:	4b58      	ldr	r3, [pc, #352]	; (8006d74 <_vfprintf_r+0x145c>)
 8006c12:	4630      	mov	r0, r6
 8006c14:	4639      	mov	r1, r7
 8006c16:	f7f9 fcaf 	bl	8000578 <__aeabi_dmul>
 8006c1a:	460f      	mov	r7, r1
 8006c1c:	4606      	mov	r6, r0
 8006c1e:	f7f9 ff5b 	bl	8000ad8 <__aeabi_d2iz>
 8006c22:	4680      	mov	r8, r0
 8006c24:	f7f9 fc3e 	bl	80004a4 <__aeabi_i2d>
 8006c28:	4602      	mov	r2, r0
 8006c2a:	460b      	mov	r3, r1
 8006c2c:	4630      	mov	r0, r6
 8006c2e:	4639      	mov	r1, r7
 8006c30:	f7f9 faea 	bl	8000208 <__aeabi_dsub>
 8006c34:	464d      	mov	r5, r9
 8006c36:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006c3a:	f805 cb01 	strb.w	ip, [r5], #1
 8006c3e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8006c42:	46a3      	mov	fp, r4
 8006c44:	4606      	mov	r6, r0
 8006c46:	460f      	mov	r7, r1
 8006c48:	f04f 0200 	mov.w	r2, #0
 8006c4c:	f04f 0300 	mov.w	r3, #0
 8006c50:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8006c54:	d1d7      	bne.n	8006c06 <_vfprintf_r+0x12ee>
 8006c56:	4630      	mov	r0, r6
 8006c58:	4639      	mov	r1, r7
 8006c5a:	2200      	movs	r2, #0
 8006c5c:	4b46      	ldr	r3, [pc, #280]	; (8006d78 <_vfprintf_r+0x1460>)
 8006c5e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8006c62:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8006c64:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006c68:	4644      	mov	r4, r8
 8006c6a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006c6e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8006c72:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006c76:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006c7a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006c7c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006c80:	f7f9 ff0a 	bl	8000a98 <__aeabi_dcmpgt>
 8006c84:	2800      	cmp	r0, #0
 8006c86:	f040 8176 	bne.w	8006f76 <_vfprintf_r+0x165e>
 8006c8a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006c8e:	2200      	movs	r2, #0
 8006c90:	4b39      	ldr	r3, [pc, #228]	; (8006d78 <_vfprintf_r+0x1460>)
 8006c92:	f7f9 fed9 	bl	8000a48 <__aeabi_dcmpeq>
 8006c96:	b110      	cbz	r0, 8006c9e <_vfprintf_r+0x1386>
 8006c98:	07e2      	lsls	r2, r4, #31
 8006c9a:	f100 816c 	bmi.w	8006f76 <_vfprintf_r+0x165e>
 8006c9e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006ca0:	2b00      	cmp	r3, #0
 8006ca2:	db07      	blt.n	8006cb4 <_vfprintf_r+0x139c>
 8006ca4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006ca6:	3301      	adds	r3, #1
 8006ca8:	442b      	add	r3, r5
 8006caa:	2230      	movs	r2, #48	; 0x30
 8006cac:	f805 2b01 	strb.w	r2, [r5], #1
 8006cb0:	42ab      	cmp	r3, r5
 8006cb2:	d1fb      	bne.n	8006cac <_vfprintf_r+0x1394>
 8006cb4:	1beb      	subs	r3, r5, r7
 8006cb6:	4640      	mov	r0, r8
 8006cb8:	9310      	str	r3, [sp, #64]	; 0x40
 8006cba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006cbe:	e683      	b.n	80069c8 <_vfprintf_r+0x10b0>
 8006cc0:	f8cd 9010 	str.w	r9, [sp, #16]
 8006cc4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006cc8:	9408      	str	r4, [sp, #32]
 8006cca:	4681      	mov	r9, r0
 8006ccc:	900f      	str	r0, [sp, #60]	; 0x3c
 8006cce:	9014      	str	r0, [sp, #80]	; 0x50
 8006cd0:	9011      	str	r0, [sp, #68]	; 0x44
 8006cd2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006cd6:	f7fe bfac 	b.w	8005c32 <_vfprintf_r+0x31a>
 8006cda:	aa2a      	add	r2, sp, #168	; 0xa8
 8006cdc:	9907      	ldr	r1, [sp, #28]
 8006cde:	9803      	ldr	r0, [sp, #12]
 8006ce0:	f003 f948 	bl	8009f74 <__sprint_r>
 8006ce4:	2800      	cmp	r0, #0
 8006ce6:	f47f ab8f 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006cea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006cec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006cee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006cf2:	e511      	b.n	8006718 <_vfprintf_r+0xe00>
 8006cf4:	4252      	negs	r2, r2
 8006cf6:	9206      	str	r2, [sp, #24]
 8006cf8:	9308      	str	r3, [sp, #32]
 8006cfa:	f7ff b96d 	b.w	8005fd8 <_vfprintf_r+0x6c0>
 8006cfe:	4614      	mov	r4, r2
 8006d00:	4632      	mov	r2, r6
 8006d02:	461e      	mov	r6, r3
 8006d04:	4613      	mov	r3, r2
 8006d06:	462a      	mov	r2, r5
 8006d08:	3201      	adds	r2, #1
 8006d0a:	9209      	str	r2, [sp, #36]	; 0x24
 8006d0c:	f106 0208 	add.w	r2, r6, #8
 8006d10:	e9c6 3900 	strd	r3, r9, [r6]
 8006d14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006d16:	932b      	str	r3, [sp, #172]	; 0xac
 8006d18:	444c      	add	r4, r9
 8006d1a:	2b07      	cmp	r3, #7
 8006d1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8006d1e:	f73f acc3 	bgt.w	80066a8 <_vfprintf_r+0xd90>
 8006d22:	3301      	adds	r3, #1
 8006d24:	9309      	str	r3, [sp, #36]	; 0x24
 8006d26:	f102 0b08 	add.w	fp, r2, #8
 8006d2a:	4616      	mov	r6, r2
 8006d2c:	f7ff bbca 	b.w	80064c4 <_vfprintf_r+0xbac>
 8006d30:	aa2a      	add	r2, sp, #168	; 0xa8
 8006d32:	9907      	ldr	r1, [sp, #28]
 8006d34:	9803      	ldr	r0, [sp, #12]
 8006d36:	f003 f91d 	bl	8009f74 <__sprint_r>
 8006d3a:	2800      	cmp	r0, #0
 8006d3c:	f47f ab64 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006d40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006d42:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006d46:	f7ff bade 	b.w	8006306 <_vfprintf_r+0x9ee>
 8006d4a:	464b      	mov	r3, r9
 8006d4c:	2b06      	cmp	r3, #6
 8006d4e:	bf28      	it	cs
 8006d50:	2306      	movcs	r3, #6
 8006d52:	46b9      	mov	r9, r7
 8006d54:	970f      	str	r7, [sp, #60]	; 0x3c
 8006d56:	9714      	str	r7, [sp, #80]	; 0x50
 8006d58:	9711      	str	r7, [sp, #68]	; 0x44
 8006d5a:	970a      	str	r7, [sp, #40]	; 0x28
 8006d5c:	463a      	mov	r2, r7
 8006d5e:	9304      	str	r3, [sp, #16]
 8006d60:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8006d64:	4f05      	ldr	r7, [pc, #20]	; (8006d7c <_vfprintf_r+0x1464>)
 8006d66:	f7fe bf64 	b.w	8005c32 <_vfprintf_r+0x31a>
 8006d6a:	bf00      	nop
 8006d6c:	0800a898 	.word	0x0800a898
 8006d70:	0800a87c 	.word	0x0800a87c
 8006d74:	40300000 	.word	0x40300000
 8006d78:	3fe00000 	.word	0x3fe00000
 8006d7c:	0800a890 	.word	0x0800a890
 8006d80:	460c      	mov	r4, r1
 8006d82:	4639      	mov	r1, r7
 8006d84:	465f      	mov	r7, fp
 8006d86:	469b      	mov	fp, r3
 8006d88:	460b      	mov	r3, r1
 8006d8a:	3201      	adds	r2, #1
 8006d8c:	442c      	add	r4, r5
 8006d8e:	2a07      	cmp	r2, #7
 8006d90:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006d94:	e9cb 3500 	strd	r3, r5, [fp]
 8006d98:	f73f aca5 	bgt.w	80066e6 <_vfprintf_r+0xdce>
 8006d9c:	f10b 0b08 	add.w	fp, fp, #8
 8006da0:	e4ac      	b.n	80066fc <_vfprintf_r+0xde4>
 8006da2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006da4:	1cda      	adds	r2, r3, #3
 8006da6:	db02      	blt.n	8006dae <_vfprintf_r+0x1496>
 8006da8:	4599      	cmp	r9, r3
 8006daa:	f280 80b5 	bge.w	8006f18 <_vfprintf_r+0x1600>
 8006dae:	3e02      	subs	r6, #2
 8006db0:	f026 0320 	bic.w	r3, r6, #32
 8006db4:	9304      	str	r3, [sp, #16]
 8006db6:	e611      	b.n	80069dc <_vfprintf_r+0x10c4>
 8006db8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006dba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8006dbe:	465a      	mov	r2, fp
 8006dc0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8006dc4:	18fb      	adds	r3, r7, r3
 8006dc6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8006dca:	970c      	str	r7, [sp, #48]	; 0x30
 8006dcc:	4eaf      	ldr	r6, [pc, #700]	; (800708c <_vfprintf_r+0x1774>)
 8006dce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8006dd2:	9309      	str	r3, [sp, #36]	; 0x24
 8006dd4:	464f      	mov	r7, r9
 8006dd6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006dda:	4621      	mov	r1, r4
 8006ddc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006dde:	2b00      	cmp	r3, #0
 8006de0:	d05b      	beq.n	8006e9a <_vfprintf_r+0x1582>
 8006de2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006de4:	2b00      	cmp	r3, #0
 8006de6:	d154      	bne.n	8006e92 <_vfprintf_r+0x157a>
 8006de8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006dea:	3b01      	subs	r3, #1
 8006dec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8006df0:	9314      	str	r3, [sp, #80]	; 0x50
 8006df2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006df4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8006df6:	6010      	str	r0, [r2, #0]
 8006df8:	3301      	adds	r3, #1
 8006dfa:	4459      	add	r1, fp
 8006dfc:	2b07      	cmp	r3, #7
 8006dfe:	912c      	str	r1, [sp, #176]	; 0xb0
 8006e00:	f8c2 b004 	str.w	fp, [r2, #4]
 8006e04:	932b      	str	r3, [sp, #172]	; 0xac
 8006e06:	dc68      	bgt.n	8006eda <_vfprintf_r+0x15c2>
 8006e08:	3208      	adds	r2, #8
 8006e0a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8006e0c:	f898 3000 	ldrb.w	r3, [r8]
 8006e10:	1bc5      	subs	r5, r0, r7
 8006e12:	429d      	cmp	r5, r3
 8006e14:	bfa8      	it	ge
 8006e16:	461d      	movge	r5, r3
 8006e18:	2d00      	cmp	r5, #0
 8006e1a:	dd0b      	ble.n	8006e34 <_vfprintf_r+0x151c>
 8006e1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006e1e:	6017      	str	r7, [r2, #0]
 8006e20:	3301      	adds	r3, #1
 8006e22:	4429      	add	r1, r5
 8006e24:	2b07      	cmp	r3, #7
 8006e26:	912c      	str	r1, [sp, #176]	; 0xb0
 8006e28:	6055      	str	r5, [r2, #4]
 8006e2a:	932b      	str	r3, [sp, #172]	; 0xac
 8006e2c:	dc5e      	bgt.n	8006eec <_vfprintf_r+0x15d4>
 8006e2e:	f898 3000 	ldrb.w	r3, [r8]
 8006e32:	3208      	adds	r2, #8
 8006e34:	2d00      	cmp	r5, #0
 8006e36:	bfac      	ite	ge
 8006e38:	1b5d      	subge	r5, r3, r5
 8006e3a:	461d      	movlt	r5, r3
 8006e3c:	2d00      	cmp	r5, #0
 8006e3e:	dd26      	ble.n	8006e8e <_vfprintf_r+0x1576>
 8006e40:	2d10      	cmp	r5, #16
 8006e42:	982b      	ldr	r0, [sp, #172]	; 0xac
 8006e44:	dd3c      	ble.n	8006ec0 <_vfprintf_r+0x15a8>
 8006e46:	2410      	movs	r4, #16
 8006e48:	e003      	b.n	8006e52 <_vfprintf_r+0x153a>
 8006e4a:	3208      	adds	r2, #8
 8006e4c:	3d10      	subs	r5, #16
 8006e4e:	2d10      	cmp	r5, #16
 8006e50:	dd36      	ble.n	8006ec0 <_vfprintf_r+0x15a8>
 8006e52:	3001      	adds	r0, #1
 8006e54:	3110      	adds	r1, #16
 8006e56:	2807      	cmp	r0, #7
 8006e58:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006e5c:	e9c2 6400 	strd	r6, r4, [r2]
 8006e60:	ddf3      	ble.n	8006e4a <_vfprintf_r+0x1532>
 8006e62:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e64:	4651      	mov	r1, sl
 8006e66:	4648      	mov	r0, r9
 8006e68:	f003 f884 	bl	8009f74 <__sprint_r>
 8006e6c:	2800      	cmp	r0, #0
 8006e6e:	d150      	bne.n	8006f12 <_vfprintf_r+0x15fa>
 8006e70:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8006e74:	aa2d      	add	r2, sp, #180	; 0xb4
 8006e76:	e7e9      	b.n	8006e4c <_vfprintf_r+0x1534>
 8006e78:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e7a:	4651      	mov	r1, sl
 8006e7c:	4648      	mov	r0, r9
 8006e7e:	f003 f879 	bl	8009f74 <__sprint_r>
 8006e82:	2800      	cmp	r0, #0
 8006e84:	d145      	bne.n	8006f12 <_vfprintf_r+0x15fa>
 8006e86:	f898 3000 	ldrb.w	r3, [r8]
 8006e8a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006e8c:	aa2d      	add	r2, sp, #180	; 0xb4
 8006e8e:	441f      	add	r7, r3
 8006e90:	e7a4      	b.n	8006ddc <_vfprintf_r+0x14c4>
 8006e92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006e94:	3b01      	subs	r3, #1
 8006e96:	930f      	str	r3, [sp, #60]	; 0x3c
 8006e98:	e7ab      	b.n	8006df2 <_vfprintf_r+0x14da>
 8006e9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006e9c:	2b00      	cmp	r3, #0
 8006e9e:	d1f8      	bne.n	8006e92 <_vfprintf_r+0x157a>
 8006ea0:	46b9      	mov	r9, r7
 8006ea2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006ea4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006ea6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8006eaa:	18fb      	adds	r3, r7, r3
 8006eac:	4599      	cmp	r9, r3
 8006eae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8006eb2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006eb6:	4693      	mov	fp, r2
 8006eb8:	460c      	mov	r4, r1
 8006eba:	bf28      	it	cs
 8006ebc:	4699      	movcs	r9, r3
 8006ebe:	e424      	b.n	800670a <_vfprintf_r+0xdf2>
 8006ec0:	3001      	adds	r0, #1
 8006ec2:	4429      	add	r1, r5
 8006ec4:	2807      	cmp	r0, #7
 8006ec6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006eca:	e9c2 6500 	strd	r6, r5, [r2]
 8006ece:	dcd3      	bgt.n	8006e78 <_vfprintf_r+0x1560>
 8006ed0:	f898 3000 	ldrb.w	r3, [r8]
 8006ed4:	3208      	adds	r2, #8
 8006ed6:	441f      	add	r7, r3
 8006ed8:	e780      	b.n	8006ddc <_vfprintf_r+0x14c4>
 8006eda:	aa2a      	add	r2, sp, #168	; 0xa8
 8006edc:	4651      	mov	r1, sl
 8006ede:	4648      	mov	r0, r9
 8006ee0:	f003 f848 	bl	8009f74 <__sprint_r>
 8006ee4:	b9a8      	cbnz	r0, 8006f12 <_vfprintf_r+0x15fa>
 8006ee6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006ee8:	aa2d      	add	r2, sp, #180	; 0xb4
 8006eea:	e78e      	b.n	8006e0a <_vfprintf_r+0x14f2>
 8006eec:	aa2a      	add	r2, sp, #168	; 0xa8
 8006eee:	4651      	mov	r1, sl
 8006ef0:	4648      	mov	r0, r9
 8006ef2:	f003 f83f 	bl	8009f74 <__sprint_r>
 8006ef6:	b960      	cbnz	r0, 8006f12 <_vfprintf_r+0x15fa>
 8006ef8:	f898 3000 	ldrb.w	r3, [r8]
 8006efc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006efe:	aa2d      	add	r2, sp, #180	; 0xb4
 8006f00:	e798      	b.n	8006e34 <_vfprintf_r+0x151c>
 8006f02:	4638      	mov	r0, r7
 8006f04:	f7fa f87c 	bl	8001000 <strlen>
 8006f08:	46a9      	mov	r9, r5
 8006f0a:	4603      	mov	r3, r0
 8006f0c:	9009      	str	r0, [sp, #36]	; 0x24
 8006f0e:	f7ff b8f4 	b.w	80060fa <_vfprintf_r+0x7e2>
 8006f12:	46d1      	mov	r9, sl
 8006f14:	f7ff ba7a 	b.w	800640c <_vfprintf_r+0xaf4>
 8006f18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006f1a:	4619      	mov	r1, r3
 8006f1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006f1e:	4299      	cmp	r1, r3
 8006f20:	f300 8082 	bgt.w	8007028 <_vfprintf_r+0x1710>
 8006f24:	07c4      	lsls	r4, r0, #31
 8006f26:	f140 816b 	bpl.w	8007200 <_vfprintf_r+0x18e8>
 8006f2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006f2c:	4413      	add	r3, r2
 8006f2e:	9309      	str	r3, [sp, #36]	; 0x24
 8006f30:	0541      	lsls	r1, r0, #21
 8006f32:	d503      	bpl.n	8006f3c <_vfprintf_r+0x1624>
 8006f34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006f36:	2b00      	cmp	r3, #0
 8006f38:	f300 80e6 	bgt.w	8007108 <_vfprintf_r+0x17f0>
 8006f3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006f3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006f42:	9304      	str	r3, [sp, #16]
 8006f44:	2667      	movs	r6, #103	; 0x67
 8006f46:	2300      	movs	r3, #0
 8006f48:	930f      	str	r3, [sp, #60]	; 0x3c
 8006f4a:	9314      	str	r3, [sp, #80]	; 0x50
 8006f4c:	e586      	b.n	8006a5c <_vfprintf_r+0x1144>
 8006f4e:	222d      	movs	r2, #45	; 0x2d
 8006f50:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006f54:	f04f 0900 	mov.w	r9, #0
 8006f58:	f7fe be6c 	b.w	8005c34 <_vfprintf_r+0x31c>
 8006f5c:	46a1      	mov	r9, r4
 8006f5e:	f7ff ba55 	b.w	800640c <_vfprintf_r+0xaf4>
 8006f62:	900a      	str	r0, [sp, #40]	; 0x28
 8006f64:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006f68:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8006f6c:	931f      	str	r3, [sp, #124]	; 0x7c
 8006f6e:	232d      	movs	r3, #45	; 0x2d
 8006f70:	911e      	str	r1, [sp, #120]	; 0x78
 8006f72:	930b      	str	r3, [sp, #44]	; 0x2c
 8006f74:	e619      	b.n	8006baa <_vfprintf_r+0x1292>
 8006f76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006f78:	9328      	str	r3, [sp, #160]	; 0xa0
 8006f7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006f7c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006f80:	7bd9      	ldrb	r1, [r3, #15]
 8006f82:	4291      	cmp	r1, r2
 8006f84:	462b      	mov	r3, r5
 8006f86:	d109      	bne.n	8006f9c <_vfprintf_r+0x1684>
 8006f88:	2030      	movs	r0, #48	; 0x30
 8006f8a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8006f8e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006f90:	1e5a      	subs	r2, r3, #1
 8006f92:	9228      	str	r2, [sp, #160]	; 0xa0
 8006f94:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006f98:	4291      	cmp	r1, r2
 8006f9a:	d0f6      	beq.n	8006f8a <_vfprintf_r+0x1672>
 8006f9c:	2a39      	cmp	r2, #57	; 0x39
 8006f9e:	bf0b      	itete	eq
 8006fa0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8006fa2:	3201      	addne	r2, #1
 8006fa4:	7a92      	ldrbeq	r2, [r2, #10]
 8006fa6:	b2d2      	uxtbne	r2, r2
 8006fa8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8006fac:	e682      	b.n	8006cb4 <_vfprintf_r+0x139c>
 8006fae:	f418 7f00 	tst.w	r8, #512	; 0x200
 8006fb2:	f43f ad9f 	beq.w	8006af4 <_vfprintf_r+0x11dc>
 8006fb6:	9a05      	ldr	r2, [sp, #20]
 8006fb8:	701a      	strb	r2, [r3, #0]
 8006fba:	4657      	mov	r7, sl
 8006fbc:	f7fe bf52 	b.w	8005e64 <_vfprintf_r+0x54c>
 8006fc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006fc2:	9907      	ldr	r1, [sp, #28]
 8006fc4:	9803      	ldr	r0, [sp, #12]
 8006fc6:	f002 ffd5 	bl	8009f74 <__sprint_r>
 8006fca:	2800      	cmp	r0, #0
 8006fcc:	f47f aa1c 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8006fd0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006fd2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006fd6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006fda:	e571      	b.n	8006ac0 <_vfprintf_r+0x11a8>
 8006fdc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006fde:	2b00      	cmp	r3, #0
 8006fe0:	f340 8164 	ble.w	80072ac <_vfprintf_r+0x1994>
 8006fe4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006fe6:	f1b9 0f00 	cmp.w	r9, #0
 8006fea:	f040 8103 	bne.w	80071f4 <_vfprintf_r+0x18dc>
 8006fee:	07c6      	lsls	r6, r0, #31
 8006ff0:	f100 8100 	bmi.w	80071f4 <_vfprintf_r+0x18dc>
 8006ff4:	9309      	str	r3, [sp, #36]	; 0x24
 8006ff6:	2666      	movs	r6, #102	; 0x66
 8006ff8:	0543      	lsls	r3, r0, #21
 8006ffa:	f100 8086 	bmi.w	800710a <_vfprintf_r+0x17f2>
 8006ffe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007000:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8007004:	9304      	str	r3, [sp, #16]
 8007006:	e79e      	b.n	8006f46 <_vfprintf_r+0x162e>
 8007008:	aa2a      	add	r2, sp, #168	; 0xa8
 800700a:	9907      	ldr	r1, [sp, #28]
 800700c:	9803      	ldr	r0, [sp, #12]
 800700e:	f002 ffb1 	bl	8009f74 <__sprint_r>
 8007012:	2800      	cmp	r0, #0
 8007014:	f47f a9f8 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8007018:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800701a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800701c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800701e:	1ad3      	subs	r3, r2, r3
 8007020:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007024:	f7ff bb90 	b.w	8006748 <_vfprintf_r+0xe30>
 8007028:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800702a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800702c:	4413      	add	r3, r2
 800702e:	9309      	str	r3, [sp, #36]	; 0x24
 8007030:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007032:	2b00      	cmp	r3, #0
 8007034:	f340 8149 	ble.w	80072ca <_vfprintf_r+0x19b2>
 8007038:	2667      	movs	r6, #103	; 0x67
 800703a:	e7dd      	b.n	8006ff8 <_vfprintf_r+0x16e0>
 800703c:	2330      	movs	r3, #48	; 0x30
 800703e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8007042:	2358      	movs	r3, #88	; 0x58
 8007044:	e595      	b.n	8006b72 <_vfprintf_r+0x125a>
 8007046:	9803      	ldr	r0, [sp, #12]
 8007048:	aa2a      	add	r2, sp, #168	; 0xa8
 800704a:	4649      	mov	r1, r9
 800704c:	f002 ff92 	bl	8009f74 <__sprint_r>
 8007050:	2800      	cmp	r0, #0
 8007052:	f47f a9e0 	bne.w	8006416 <_vfprintf_r+0xafe>
 8007056:	f7fe bf0f 	b.w	8005e78 <_vfprintf_r+0x560>
 800705a:	a824      	add	r0, sp, #144	; 0x90
 800705c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007060:	f002 fe90 	bl	8009d84 <frexp>
 8007064:	2200      	movs	r2, #0
 8007066:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800706a:	ec51 0b10 	vmov	r0, r1, d0
 800706e:	f7f9 fa83 	bl	8000578 <__aeabi_dmul>
 8007072:	2200      	movs	r2, #0
 8007074:	2300      	movs	r3, #0
 8007076:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800707a:	f7f9 fce5 	bl	8000a48 <__aeabi_dcmpeq>
 800707e:	b108      	cbz	r0, 8007084 <_vfprintf_r+0x176c>
 8007080:	2301      	movs	r3, #1
 8007082:	9324      	str	r3, [sp, #144]	; 0x90
 8007084:	4b02      	ldr	r3, [pc, #8]	; (8007090 <_vfprintf_r+0x1778>)
 8007086:	9309      	str	r3, [sp, #36]	; 0x24
 8007088:	e5ac      	b.n	8006be4 <_vfprintf_r+0x12cc>
 800708a:	bf00      	nop
 800708c:	0800a8ac 	.word	0x0800a8ac
 8007090:	0800a868 	.word	0x0800a868
 8007094:	425d      	negs	r5, r3
 8007096:	3310      	adds	r3, #16
 8007098:	4bb9      	ldr	r3, [pc, #740]	; (8007380 <_vfprintf_r+0x1a68>)
 800709a:	f280 8097 	bge.w	80071cc <_vfprintf_r+0x18b4>
 800709e:	4619      	mov	r1, r3
 80070a0:	2610      	movs	r6, #16
 80070a2:	4623      	mov	r3, r4
 80070a4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80070a8:	460c      	mov	r4, r1
 80070aa:	e005      	b.n	80070b8 <_vfprintf_r+0x17a0>
 80070ac:	f10b 0b08 	add.w	fp, fp, #8
 80070b0:	3d10      	subs	r5, #16
 80070b2:	2d10      	cmp	r5, #16
 80070b4:	f340 8087 	ble.w	80071c6 <_vfprintf_r+0x18ae>
 80070b8:	3201      	adds	r2, #1
 80070ba:	3310      	adds	r3, #16
 80070bc:	2a07      	cmp	r2, #7
 80070be:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80070c2:	e9cb 4600 	strd	r4, r6, [fp]
 80070c6:	ddf1      	ble.n	80070ac <_vfprintf_r+0x1794>
 80070c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80070ca:	9907      	ldr	r1, [sp, #28]
 80070cc:	4648      	mov	r0, r9
 80070ce:	f002 ff51 	bl	8009f74 <__sprint_r>
 80070d2:	2800      	cmp	r0, #0
 80070d4:	f47f a998 	bne.w	8006408 <_vfprintf_r+0xaf0>
 80070d8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80070dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80070e0:	e7e6      	b.n	80070b0 <_vfprintf_r+0x1798>
 80070e2:	f109 0101 	add.w	r1, r9, #1
 80070e6:	9803      	ldr	r0, [sp, #12]
 80070e8:	f001 fe80 	bl	8008dec <_malloc_r>
 80070ec:	4607      	mov	r7, r0
 80070ee:	2800      	cmp	r0, #0
 80070f0:	f000 813b 	beq.w	800736a <_vfprintf_r+0x1a52>
 80070f4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80070f8:	930e      	str	r3, [sp, #56]	; 0x38
 80070fa:	f026 0320 	bic.w	r3, r6, #32
 80070fe:	9304      	str	r3, [sp, #16]
 8007100:	46a0      	mov	r8, r4
 8007102:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007104:	900a      	str	r0, [sp, #40]	; 0x28
 8007106:	e547      	b.n	8006b98 <_vfprintf_r+0x1280>
 8007108:	2667      	movs	r6, #103	; 0x67
 800710a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800710c:	2200      	movs	r2, #0
 800710e:	920f      	str	r2, [sp, #60]	; 0x3c
 8007110:	9214      	str	r2, [sp, #80]	; 0x50
 8007112:	7803      	ldrb	r3, [r0, #0]
 8007114:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8007116:	2bff      	cmp	r3, #255	; 0xff
 8007118:	d00c      	beq.n	8007134 <_vfprintf_r+0x181c>
 800711a:	4293      	cmp	r3, r2
 800711c:	da0a      	bge.n	8007134 <_vfprintf_r+0x181c>
 800711e:	7841      	ldrb	r1, [r0, #1]
 8007120:	1ad2      	subs	r2, r2, r3
 8007122:	b1a9      	cbz	r1, 8007150 <_vfprintf_r+0x1838>
 8007124:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007126:	3301      	adds	r3, #1
 8007128:	9314      	str	r3, [sp, #80]	; 0x50
 800712a:	460b      	mov	r3, r1
 800712c:	2bff      	cmp	r3, #255	; 0xff
 800712e:	f100 0001 	add.w	r0, r0, #1
 8007132:	d1f2      	bne.n	800711a <_vfprintf_r+0x1802>
 8007134:	9211      	str	r2, [sp, #68]	; 0x44
 8007136:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007138:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800713a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800713c:	901a      	str	r0, [sp, #104]	; 0x68
 800713e:	4413      	add	r3, r2
 8007140:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8007142:	fb02 1303 	mla	r3, r2, r3, r1
 8007146:	9309      	str	r3, [sp, #36]	; 0x24
 8007148:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800714c:	9304      	str	r3, [sp, #16]
 800714e:	e485      	b.n	8006a5c <_vfprintf_r+0x1144>
 8007150:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8007152:	3101      	adds	r1, #1
 8007154:	910f      	str	r1, [sp, #60]	; 0x3c
 8007156:	e7de      	b.n	8007116 <_vfprintf_r+0x17fe>
 8007158:	aa28      	add	r2, sp, #160	; 0xa0
 800715a:	ab25      	add	r3, sp, #148	; 0x94
 800715c:	e9cd 3200 	strd	r3, r2, [sp]
 8007160:	2103      	movs	r1, #3
 8007162:	ab24      	add	r3, sp, #144	; 0x90
 8007164:	464a      	mov	r2, r9
 8007166:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800716a:	9803      	ldr	r0, [sp, #12]
 800716c:	f000 fa5c 	bl	8007628 <_dtoa_r>
 8007170:	464d      	mov	r5, r9
 8007172:	4607      	mov	r7, r0
 8007174:	eb00 0409 	add.w	r4, r0, r9
 8007178:	783b      	ldrb	r3, [r7, #0]
 800717a:	2b30      	cmp	r3, #48	; 0x30
 800717c:	f000 80be 	beq.w	80072fc <_vfprintf_r+0x19e4>
 8007180:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8007182:	442c      	add	r4, r5
 8007184:	2200      	movs	r2, #0
 8007186:	2300      	movs	r3, #0
 8007188:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800718c:	f7f9 fc5c 	bl	8000a48 <__aeabi_dcmpeq>
 8007190:	b108      	cbz	r0, 8007196 <_vfprintf_r+0x187e>
 8007192:	4623      	mov	r3, r4
 8007194:	e413      	b.n	80069be <_vfprintf_r+0x10a6>
 8007196:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007198:	42a3      	cmp	r3, r4
 800719a:	f4bf ac10 	bcs.w	80069be <_vfprintf_r+0x10a6>
 800719e:	2130      	movs	r1, #48	; 0x30
 80071a0:	1c5a      	adds	r2, r3, #1
 80071a2:	9228      	str	r2, [sp, #160]	; 0xa0
 80071a4:	7019      	strb	r1, [r3, #0]
 80071a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80071a8:	429c      	cmp	r4, r3
 80071aa:	d8f9      	bhi.n	80071a0 <_vfprintf_r+0x1888>
 80071ac:	e407      	b.n	80069be <_vfprintf_r+0x10a6>
 80071ae:	197c      	adds	r4, r7, r5
 80071b0:	e7e8      	b.n	8007184 <_vfprintf_r+0x186c>
 80071b2:	f1b9 0f00 	cmp.w	r9, #0
 80071b6:	f000 8092 	beq.w	80072de <_vfprintf_r+0x19c6>
 80071ba:	900a      	str	r0, [sp, #40]	; 0x28
 80071bc:	e4ec      	b.n	8006b98 <_vfprintf_r+0x1280>
 80071be:	900a      	str	r0, [sp, #40]	; 0x28
 80071c0:	f04f 0906 	mov.w	r9, #6
 80071c4:	e4e8      	b.n	8006b98 <_vfprintf_r+0x1280>
 80071c6:	4621      	mov	r1, r4
 80071c8:	461c      	mov	r4, r3
 80071ca:	460b      	mov	r3, r1
 80071cc:	3201      	adds	r2, #1
 80071ce:	442c      	add	r4, r5
 80071d0:	2a07      	cmp	r2, #7
 80071d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80071d6:	e9cb 3500 	strd	r3, r5, [fp]
 80071da:	f300 80a9 	bgt.w	8007330 <_vfprintf_r+0x1a18>
 80071de:	f10b 0b08 	add.w	fp, fp, #8
 80071e2:	e470      	b.n	8006ac6 <_vfprintf_r+0x11ae>
 80071e4:	469a      	mov	sl, r3
 80071e6:	f7ff bb37 	b.w	8006858 <_vfprintf_r+0xf40>
 80071ea:	2301      	movs	r3, #1
 80071ec:	9324      	str	r3, [sp, #144]	; 0x90
 80071ee:	4b65      	ldr	r3, [pc, #404]	; (8007384 <_vfprintf_r+0x1a6c>)
 80071f0:	9309      	str	r3, [sp, #36]	; 0x24
 80071f2:	e4f7      	b.n	8006be4 <_vfprintf_r+0x12cc>
 80071f4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80071f6:	4413      	add	r3, r2
 80071f8:	444b      	add	r3, r9
 80071fa:	9309      	str	r3, [sp, #36]	; 0x24
 80071fc:	2666      	movs	r6, #102	; 0x66
 80071fe:	e6fb      	b.n	8006ff8 <_vfprintf_r+0x16e0>
 8007200:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007202:	9309      	str	r3, [sp, #36]	; 0x24
 8007204:	e694      	b.n	8006f30 <_vfprintf_r+0x1618>
 8007206:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800720a:	4664      	mov	r4, ip
 800720c:	4d5e      	ldr	r5, [pc, #376]	; (8007388 <_vfprintf_r+0x1a70>)
 800720e:	e000      	b.n	8007212 <_vfprintf_r+0x18fa>
 8007210:	4614      	mov	r4, r2
 8007212:	fba5 1203 	umull	r1, r2, r5, r3
 8007216:	08d2      	lsrs	r2, r2, #3
 8007218:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800721c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8007220:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8007224:	4613      	mov	r3, r2
 8007226:	2b09      	cmp	r3, #9
 8007228:	f804 1c01 	strb.w	r1, [r4, #-1]
 800722c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007230:	dcee      	bgt.n	8007210 <_vfprintf_r+0x18f8>
 8007232:	3330      	adds	r3, #48	; 0x30
 8007234:	3c02      	subs	r4, #2
 8007236:	b2db      	uxtb	r3, r3
 8007238:	45a4      	cmp	ip, r4
 800723a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800723e:	f240 8090 	bls.w	8007362 <_vfprintf_r+0x1a4a>
 8007242:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8007246:	4611      	mov	r1, r2
 8007248:	e001      	b.n	800724e <_vfprintf_r+0x1936>
 800724a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800724e:	f804 3b01 	strb.w	r3, [r4], #1
 8007252:	458c      	cmp	ip, r1
 8007254:	d1f9      	bne.n	800724a <_vfprintf_r+0x1932>
 8007256:	ab2a      	add	r3, sp, #168	; 0xa8
 8007258:	1a9b      	subs	r3, r3, r2
 800725a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800725e:	4413      	add	r3, r2
 8007260:	f7ff bbe3 	b.w	8006a2a <_vfprintf_r+0x1112>
 8007264:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007266:	4f49      	ldr	r7, [pc, #292]	; (800738c <_vfprintf_r+0x1a74>)
 8007268:	2b00      	cmp	r3, #0
 800726a:	bfb6      	itet	lt
 800726c:	222d      	movlt	r2, #45	; 0x2d
 800726e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8007272:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8007276:	4b46      	ldr	r3, [pc, #280]	; (8007390 <_vfprintf_r+0x1a78>)
 8007278:	f7fe bf02 	b.w	8006080 <_vfprintf_r+0x768>
 800727c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007280:	f7ff b8c9 	b.w	8006416 <_vfprintf_r+0xafe>
 8007284:	aa28      	add	r2, sp, #160	; 0xa0
 8007286:	ab25      	add	r3, sp, #148	; 0x94
 8007288:	e9cd 3200 	strd	r3, r2, [sp]
 800728c:	2103      	movs	r1, #3
 800728e:	ab24      	add	r3, sp, #144	; 0x90
 8007290:	464a      	mov	r2, r9
 8007292:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007296:	9803      	ldr	r0, [sp, #12]
 8007298:	f000 f9c6 	bl	8007628 <_dtoa_r>
 800729c:	464d      	mov	r5, r9
 800729e:	4607      	mov	r7, r0
 80072a0:	2e46      	cmp	r6, #70	; 0x46
 80072a2:	eb07 0405 	add.w	r4, r7, r5
 80072a6:	f43f af67 	beq.w	8007178 <_vfprintf_r+0x1860>
 80072aa:	e76b      	b.n	8007184 <_vfprintf_r+0x186c>
 80072ac:	f1b9 0f00 	cmp.w	r9, #0
 80072b0:	d131      	bne.n	8007316 <_vfprintf_r+0x19fe>
 80072b2:	07c5      	lsls	r5, r0, #31
 80072b4:	d42f      	bmi.n	8007316 <_vfprintf_r+0x19fe>
 80072b6:	2301      	movs	r3, #1
 80072b8:	9304      	str	r3, [sp, #16]
 80072ba:	9309      	str	r3, [sp, #36]	; 0x24
 80072bc:	2666      	movs	r6, #102	; 0x66
 80072be:	e642      	b.n	8006f46 <_vfprintf_r+0x162e>
 80072c0:	07c3      	lsls	r3, r0, #31
 80072c2:	f57f abbf 	bpl.w	8006a44 <_vfprintf_r+0x112c>
 80072c6:	f7ff bbb9 	b.w	8006a3c <_vfprintf_r+0x1124>
 80072ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80072cc:	f1c3 0301 	rsb	r3, r3, #1
 80072d0:	441a      	add	r2, r3
 80072d2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80072d6:	9209      	str	r2, [sp, #36]	; 0x24
 80072d8:	9304      	str	r3, [sp, #16]
 80072da:	2667      	movs	r6, #103	; 0x67
 80072dc:	e633      	b.n	8006f46 <_vfprintf_r+0x162e>
 80072de:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80072e2:	f04f 0901 	mov.w	r9, #1
 80072e6:	e457      	b.n	8006b98 <_vfprintf_r+0x1280>
 80072e8:	465a      	mov	r2, fp
 80072ea:	e511      	b.n	8006d10 <_vfprintf_r+0x13f8>
 80072ec:	2e47      	cmp	r6, #71	; 0x47
 80072ee:	f47f af5e 	bne.w	80071ae <_vfprintf_r+0x1896>
 80072f2:	f018 0f01 	tst.w	r8, #1
 80072f6:	f43f ab61 	beq.w	80069bc <_vfprintf_r+0x10a4>
 80072fa:	e7d1      	b.n	80072a0 <_vfprintf_r+0x1988>
 80072fc:	2200      	movs	r2, #0
 80072fe:	2300      	movs	r3, #0
 8007300:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8007304:	f7f9 fba0 	bl	8000a48 <__aeabi_dcmpeq>
 8007308:	2800      	cmp	r0, #0
 800730a:	f47f af39 	bne.w	8007180 <_vfprintf_r+0x1868>
 800730e:	f1c5 0501 	rsb	r5, r5, #1
 8007312:	9524      	str	r5, [sp, #144]	; 0x90
 8007314:	e735      	b.n	8007182 <_vfprintf_r+0x186a>
 8007316:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8007318:	3301      	adds	r3, #1
 800731a:	444b      	add	r3, r9
 800731c:	9309      	str	r3, [sp, #36]	; 0x24
 800731e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8007322:	9304      	str	r3, [sp, #16]
 8007324:	2666      	movs	r6, #102	; 0x66
 8007326:	e60e      	b.n	8006f46 <_vfprintf_r+0x162e>
 8007328:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800732c:	f7ff bb7a 	b.w	8006a24 <_vfprintf_r+0x110c>
 8007330:	aa2a      	add	r2, sp, #168	; 0xa8
 8007332:	9907      	ldr	r1, [sp, #28]
 8007334:	9803      	ldr	r0, [sp, #12]
 8007336:	f002 fe1d 	bl	8009f74 <__sprint_r>
 800733a:	2800      	cmp	r0, #0
 800733c:	f47f a864 	bne.w	8006408 <_vfprintf_r+0xaf0>
 8007340:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8007344:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007348:	f7ff bbbd 	b.w	8006ac6 <_vfprintf_r+0x11ae>
 800734c:	9908      	ldr	r1, [sp, #32]
 800734e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8007352:	680b      	ldr	r3, [r1, #0]
 8007354:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8007358:	1d0b      	adds	r3, r1, #4
 800735a:	4692      	mov	sl, r2
 800735c:	9308      	str	r3, [sp, #32]
 800735e:	f7fe bb59 	b.w	8005a14 <_vfprintf_r+0xfc>
 8007362:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8007366:	f7ff bb60 	b.w	8006a2a <_vfprintf_r+0x1112>
 800736a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800736e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8007372:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007376:	f8a9 300c 	strh.w	r3, [r9, #12]
 800737a:	f7ff b84c 	b.w	8006416 <_vfprintf_r+0xafe>
 800737e:	bf00      	nop
 8007380:	0800a8ac 	.word	0x0800a8ac
 8007384:	0800a87c 	.word	0x0800a87c
 8007388:	cccccccd 	.word	0xcccccccd
 800738c:	0800a864 	.word	0x0800a864
 8007390:	0800a860 	.word	0x0800a860

08007394 <__sbprintf>:
 8007394:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007398:	460c      	mov	r4, r1
 800739a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800739e:	8989      	ldrh	r1, [r1, #12]
 80073a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80073a2:	89e5      	ldrh	r5, [r4, #14]
 80073a4:	9619      	str	r6, [sp, #100]	; 0x64
 80073a6:	f021 0102 	bic.w	r1, r1, #2
 80073aa:	4606      	mov	r6, r0
 80073ac:	69e0      	ldr	r0, [r4, #28]
 80073ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80073b2:	4617      	mov	r7, r2
 80073b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80073b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80073ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80073be:	4698      	mov	r8, r3
 80073c0:	ad1a      	add	r5, sp, #104	; 0x68
 80073c2:	2300      	movs	r3, #0
 80073c4:	9007      	str	r0, [sp, #28]
 80073c6:	a816      	add	r0, sp, #88	; 0x58
 80073c8:	9209      	str	r2, [sp, #36]	; 0x24
 80073ca:	9306      	str	r3, [sp, #24]
 80073cc:	9500      	str	r5, [sp, #0]
 80073ce:	9504      	str	r5, [sp, #16]
 80073d0:	9102      	str	r1, [sp, #8]
 80073d2:	9105      	str	r1, [sp, #20]
 80073d4:	f001 fc8a 	bl	8008cec <__retarget_lock_init_recursive>
 80073d8:	4643      	mov	r3, r8
 80073da:	463a      	mov	r2, r7
 80073dc:	4669      	mov	r1, sp
 80073de:	4630      	mov	r0, r6
 80073e0:	f7fe fa9a 	bl	8005918 <_vfprintf_r>
 80073e4:	1e05      	subs	r5, r0, #0
 80073e6:	db07      	blt.n	80073f8 <__sbprintf+0x64>
 80073e8:	4630      	mov	r0, r6
 80073ea:	4669      	mov	r1, sp
 80073ec:	f001 f8d6 	bl	800859c <_fflush_r>
 80073f0:	2800      	cmp	r0, #0
 80073f2:	bf18      	it	ne
 80073f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80073f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80073fc:	065b      	lsls	r3, r3, #25
 80073fe:	d503      	bpl.n	8007408 <__sbprintf+0x74>
 8007400:	89a3      	ldrh	r3, [r4, #12]
 8007402:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007406:	81a3      	strh	r3, [r4, #12]
 8007408:	9816      	ldr	r0, [sp, #88]	; 0x58
 800740a:	f001 fc71 	bl	8008cf0 <__retarget_lock_close_recursive>
 800740e:	4628      	mov	r0, r5
 8007410:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8007414:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007418 <__swsetup_r>:
 8007418:	b538      	push	{r3, r4, r5, lr}
 800741a:	4b31      	ldr	r3, [pc, #196]	; (80074e0 <__swsetup_r+0xc8>)
 800741c:	681b      	ldr	r3, [r3, #0]
 800741e:	4605      	mov	r5, r0
 8007420:	460c      	mov	r4, r1
 8007422:	b113      	cbz	r3, 800742a <__swsetup_r+0x12>
 8007424:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8007426:	2a00      	cmp	r2, #0
 8007428:	d03a      	beq.n	80074a0 <__swsetup_r+0x88>
 800742a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800742e:	b293      	uxth	r3, r2
 8007430:	0718      	lsls	r0, r3, #28
 8007432:	d50c      	bpl.n	800744e <__swsetup_r+0x36>
 8007434:	6920      	ldr	r0, [r4, #16]
 8007436:	b1a8      	cbz	r0, 8007464 <__swsetup_r+0x4c>
 8007438:	f013 0201 	ands.w	r2, r3, #1
 800743c:	d020      	beq.n	8007480 <__swsetup_r+0x68>
 800743e:	6963      	ldr	r3, [r4, #20]
 8007440:	2200      	movs	r2, #0
 8007442:	425b      	negs	r3, r3
 8007444:	61a3      	str	r3, [r4, #24]
 8007446:	60a2      	str	r2, [r4, #8]
 8007448:	b300      	cbz	r0, 800748c <__swsetup_r+0x74>
 800744a:	2000      	movs	r0, #0
 800744c:	bd38      	pop	{r3, r4, r5, pc}
 800744e:	06d9      	lsls	r1, r3, #27
 8007450:	d53e      	bpl.n	80074d0 <__swsetup_r+0xb8>
 8007452:	0758      	lsls	r0, r3, #29
 8007454:	d428      	bmi.n	80074a8 <__swsetup_r+0x90>
 8007456:	6920      	ldr	r0, [r4, #16]
 8007458:	f042 0308 	orr.w	r3, r2, #8
 800745c:	81a3      	strh	r3, [r4, #12]
 800745e:	b29b      	uxth	r3, r3
 8007460:	2800      	cmp	r0, #0
 8007462:	d1e9      	bne.n	8007438 <__swsetup_r+0x20>
 8007464:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8007468:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800746c:	d0e4      	beq.n	8007438 <__swsetup_r+0x20>
 800746e:	4628      	mov	r0, r5
 8007470:	4621      	mov	r1, r4
 8007472:	f001 fc71 	bl	8008d58 <__smakebuf_r>
 8007476:	89a3      	ldrh	r3, [r4, #12]
 8007478:	6920      	ldr	r0, [r4, #16]
 800747a:	f013 0201 	ands.w	r2, r3, #1
 800747e:	d1de      	bne.n	800743e <__swsetup_r+0x26>
 8007480:	0799      	lsls	r1, r3, #30
 8007482:	bf58      	it	pl
 8007484:	6962      	ldrpl	r2, [r4, #20]
 8007486:	60a2      	str	r2, [r4, #8]
 8007488:	2800      	cmp	r0, #0
 800748a:	d1de      	bne.n	800744a <__swsetup_r+0x32>
 800748c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007490:	061a      	lsls	r2, r3, #24
 8007492:	d5db      	bpl.n	800744c <__swsetup_r+0x34>
 8007494:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007498:	81a3      	strh	r3, [r4, #12]
 800749a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800749e:	bd38      	pop	{r3, r4, r5, pc}
 80074a0:	4618      	mov	r0, r3
 80074a2:	f001 f8d7 	bl	8008654 <__sinit>
 80074a6:	e7c0      	b.n	800742a <__swsetup_r+0x12>
 80074a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80074aa:	b151      	cbz	r1, 80074c2 <__swsetup_r+0xaa>
 80074ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80074b0:	4299      	cmp	r1, r3
 80074b2:	d004      	beq.n	80074be <__swsetup_r+0xa6>
 80074b4:	4628      	mov	r0, r5
 80074b6:	f001 f96f 	bl	8008798 <_free_r>
 80074ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80074be:	2300      	movs	r3, #0
 80074c0:	6323      	str	r3, [r4, #48]	; 0x30
 80074c2:	2300      	movs	r3, #0
 80074c4:	6920      	ldr	r0, [r4, #16]
 80074c6:	6063      	str	r3, [r4, #4]
 80074c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80074cc:	6020      	str	r0, [r4, #0]
 80074ce:	e7c3      	b.n	8007458 <__swsetup_r+0x40>
 80074d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80074d4:	2309      	movs	r3, #9
 80074d6:	602b      	str	r3, [r5, #0]
 80074d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80074dc:	81a2      	strh	r2, [r4, #12]
 80074de:	bd38      	pop	{r3, r4, r5, pc}
 80074e0:	2000001c 	.word	0x2000001c

080074e4 <register_fini>:
 80074e4:	4b02      	ldr	r3, [pc, #8]	; (80074f0 <register_fini+0xc>)
 80074e6:	b113      	cbz	r3, 80074ee <register_fini+0xa>
 80074e8:	4802      	ldr	r0, [pc, #8]	; (80074f4 <register_fini+0x10>)
 80074ea:	f000 b805 	b.w	80074f8 <atexit>
 80074ee:	4770      	bx	lr
 80074f0:	00000000 	.word	0x00000000
 80074f4:	080086c5 	.word	0x080086c5

080074f8 <atexit>:
 80074f8:	2300      	movs	r3, #0
 80074fa:	4601      	mov	r1, r0
 80074fc:	461a      	mov	r2, r3
 80074fe:	4618      	mov	r0, r3
 8007500:	f002 bd58 	b.w	8009fb4 <__register_exitproc>

08007504 <quorem>:
 8007504:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007508:	6903      	ldr	r3, [r0, #16]
 800750a:	690f      	ldr	r7, [r1, #16]
 800750c:	42bb      	cmp	r3, r7
 800750e:	b083      	sub	sp, #12
 8007510:	f2c0 8086 	blt.w	8007620 <quorem+0x11c>
 8007514:	3f01      	subs	r7, #1
 8007516:	f101 0914 	add.w	r9, r1, #20
 800751a:	f100 0a14 	add.w	sl, r0, #20
 800751e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8007522:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8007526:	00bc      	lsls	r4, r7, #2
 8007528:	3201      	adds	r2, #1
 800752a:	fbb3 f8f2 	udiv	r8, r3, r2
 800752e:	eb0a 0304 	add.w	r3, sl, r4
 8007532:	9400      	str	r4, [sp, #0]
 8007534:	eb09 0b04 	add.w	fp, r9, r4
 8007538:	9301      	str	r3, [sp, #4]
 800753a:	f1b8 0f00 	cmp.w	r8, #0
 800753e:	d038      	beq.n	80075b2 <quorem+0xae>
 8007540:	2500      	movs	r5, #0
 8007542:	462e      	mov	r6, r5
 8007544:	46ce      	mov	lr, r9
 8007546:	46d4      	mov	ip, sl
 8007548:	f85e 4b04 	ldr.w	r4, [lr], #4
 800754c:	f8dc 3000 	ldr.w	r3, [ip]
 8007550:	b2a2      	uxth	r2, r4
 8007552:	fb08 5502 	mla	r5, r8, r2, r5
 8007556:	0c22      	lsrs	r2, r4, #16
 8007558:	0c2c      	lsrs	r4, r5, #16
 800755a:	fb08 4202 	mla	r2, r8, r2, r4
 800755e:	b2ad      	uxth	r5, r5
 8007560:	1b75      	subs	r5, r6, r5
 8007562:	b296      	uxth	r6, r2
 8007564:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8007568:	fa15 f383 	uxtah	r3, r5, r3
 800756c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8007570:	b29b      	uxth	r3, r3
 8007572:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8007576:	45f3      	cmp	fp, lr
 8007578:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800757c:	f84c 3b04 	str.w	r3, [ip], #4
 8007580:	ea4f 4626 	mov.w	r6, r6, asr #16
 8007584:	d2e0      	bcs.n	8007548 <quorem+0x44>
 8007586:	9b00      	ldr	r3, [sp, #0]
 8007588:	f85a 3003 	ldr.w	r3, [sl, r3]
 800758c:	b98b      	cbnz	r3, 80075b2 <quorem+0xae>
 800758e:	9a01      	ldr	r2, [sp, #4]
 8007590:	1f13      	subs	r3, r2, #4
 8007592:	459a      	cmp	sl, r3
 8007594:	d20c      	bcs.n	80075b0 <quorem+0xac>
 8007596:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800759a:	b94b      	cbnz	r3, 80075b0 <quorem+0xac>
 800759c:	f1a2 0308 	sub.w	r3, r2, #8
 80075a0:	e002      	b.n	80075a8 <quorem+0xa4>
 80075a2:	681a      	ldr	r2, [r3, #0]
 80075a4:	3b04      	subs	r3, #4
 80075a6:	b91a      	cbnz	r2, 80075b0 <quorem+0xac>
 80075a8:	459a      	cmp	sl, r3
 80075aa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80075ae:	d3f8      	bcc.n	80075a2 <quorem+0x9e>
 80075b0:	6107      	str	r7, [r0, #16]
 80075b2:	4604      	mov	r4, r0
 80075b4:	f002 f944 	bl	8009840 <__mcmp>
 80075b8:	2800      	cmp	r0, #0
 80075ba:	db2d      	blt.n	8007618 <quorem+0x114>
 80075bc:	f108 0801 	add.w	r8, r8, #1
 80075c0:	4655      	mov	r5, sl
 80075c2:	2300      	movs	r3, #0
 80075c4:	f859 1b04 	ldr.w	r1, [r9], #4
 80075c8:	6828      	ldr	r0, [r5, #0]
 80075ca:	b28a      	uxth	r2, r1
 80075cc:	1a9a      	subs	r2, r3, r2
 80075ce:	0c0b      	lsrs	r3, r1, #16
 80075d0:	fa12 f280 	uxtah	r2, r2, r0
 80075d4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80075d8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80075dc:	b292      	uxth	r2, r2
 80075de:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80075e2:	45cb      	cmp	fp, r9
 80075e4:	f845 2b04 	str.w	r2, [r5], #4
 80075e8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80075ec:	d2ea      	bcs.n	80075c4 <quorem+0xc0>
 80075ee:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80075f2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80075f6:	b97a      	cbnz	r2, 8007618 <quorem+0x114>
 80075f8:	1f1a      	subs	r2, r3, #4
 80075fa:	4592      	cmp	sl, r2
 80075fc:	d20b      	bcs.n	8007616 <quorem+0x112>
 80075fe:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8007602:	b942      	cbnz	r2, 8007616 <quorem+0x112>
 8007604:	3b08      	subs	r3, #8
 8007606:	e002      	b.n	800760e <quorem+0x10a>
 8007608:	681a      	ldr	r2, [r3, #0]
 800760a:	3b04      	subs	r3, #4
 800760c:	b91a      	cbnz	r2, 8007616 <quorem+0x112>
 800760e:	459a      	cmp	sl, r3
 8007610:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8007614:	d3f8      	bcc.n	8007608 <quorem+0x104>
 8007616:	6127      	str	r7, [r4, #16]
 8007618:	4640      	mov	r0, r8
 800761a:	b003      	add	sp, #12
 800761c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007620:	2000      	movs	r0, #0
 8007622:	b003      	add	sp, #12
 8007624:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08007628 <_dtoa_r>:
 8007628:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800762c:	ec55 4b10 	vmov	r4, r5, d0
 8007630:	b09b      	sub	sp, #108	; 0x6c
 8007632:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8007634:	9102      	str	r1, [sp, #8]
 8007636:	4681      	mov	r9, r0
 8007638:	9207      	str	r2, [sp, #28]
 800763a:	9305      	str	r3, [sp, #20]
 800763c:	e9cd 4500 	strd	r4, r5, [sp]
 8007640:	b156      	cbz	r6, 8007658 <_dtoa_r+0x30>
 8007642:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8007644:	6072      	str	r2, [r6, #4]
 8007646:	2301      	movs	r3, #1
 8007648:	4093      	lsls	r3, r2
 800764a:	60b3      	str	r3, [r6, #8]
 800764c:	4631      	mov	r1, r6
 800764e:	f001 ff07 	bl	8009460 <_Bfree>
 8007652:	2300      	movs	r3, #0
 8007654:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8007658:	f1b5 0800 	subs.w	r8, r5, #0
 800765c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800765e:	bfb4      	ite	lt
 8007660:	2301      	movlt	r3, #1
 8007662:	2300      	movge	r3, #0
 8007664:	6013      	str	r3, [r2, #0]
 8007666:	4b76      	ldr	r3, [pc, #472]	; (8007840 <_dtoa_r+0x218>)
 8007668:	bfbc      	itt	lt
 800766a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800766e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8007672:	ea33 0308 	bics.w	r3, r3, r8
 8007676:	f000 80a6 	beq.w	80077c6 <_dtoa_r+0x19e>
 800767a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800767e:	2200      	movs	r2, #0
 8007680:	2300      	movs	r3, #0
 8007682:	4630      	mov	r0, r6
 8007684:	4639      	mov	r1, r7
 8007686:	f7f9 f9df 	bl	8000a48 <__aeabi_dcmpeq>
 800768a:	4605      	mov	r5, r0
 800768c:	b178      	cbz	r0, 80076ae <_dtoa_r+0x86>
 800768e:	9a05      	ldr	r2, [sp, #20]
 8007690:	2301      	movs	r3, #1
 8007692:	6013      	str	r3, [r2, #0]
 8007694:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007696:	2b00      	cmp	r3, #0
 8007698:	f000 80c0 	beq.w	800781c <_dtoa_r+0x1f4>
 800769c:	4b69      	ldr	r3, [pc, #420]	; (8007844 <_dtoa_r+0x21c>)
 800769e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80076a0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80076a4:	6013      	str	r3, [r2, #0]
 80076a6:	4658      	mov	r0, fp
 80076a8:	b01b      	add	sp, #108	; 0x6c
 80076aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80076ae:	aa18      	add	r2, sp, #96	; 0x60
 80076b0:	a919      	add	r1, sp, #100	; 0x64
 80076b2:	ec47 6b10 	vmov	d0, r6, r7
 80076b6:	4648      	mov	r0, r9
 80076b8:	f002 f954 	bl	8009964 <__d2b>
 80076bc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80076c0:	4682      	mov	sl, r0
 80076c2:	f040 80a0 	bne.w	8007806 <_dtoa_r+0x1de>
 80076c6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80076ca:	442c      	add	r4, r5
 80076cc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80076d0:	2b20      	cmp	r3, #32
 80076d2:	f340 842c 	ble.w	8007f2e <_dtoa_r+0x906>
 80076d6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80076da:	fa08 f803 	lsl.w	r8, r8, r3
 80076de:	9b00      	ldr	r3, [sp, #0]
 80076e0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80076e4:	fa23 f000 	lsr.w	r0, r3, r0
 80076e8:	ea48 0000 	orr.w	r0, r8, r0
 80076ec:	f7f8 feca 	bl	8000484 <__aeabi_ui2d>
 80076f0:	2301      	movs	r3, #1
 80076f2:	4606      	mov	r6, r0
 80076f4:	3c01      	subs	r4, #1
 80076f6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80076fa:	930f      	str	r3, [sp, #60]	; 0x3c
 80076fc:	4630      	mov	r0, r6
 80076fe:	4639      	mov	r1, r7
 8007700:	2200      	movs	r2, #0
 8007702:	4b51      	ldr	r3, [pc, #324]	; (8007848 <_dtoa_r+0x220>)
 8007704:	f7f8 fd80 	bl	8000208 <__aeabi_dsub>
 8007708:	a347      	add	r3, pc, #284	; (adr r3, 8007828 <_dtoa_r+0x200>)
 800770a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800770e:	f7f8 ff33 	bl	8000578 <__aeabi_dmul>
 8007712:	a347      	add	r3, pc, #284	; (adr r3, 8007830 <_dtoa_r+0x208>)
 8007714:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007718:	f7f8 fd78 	bl	800020c <__adddf3>
 800771c:	4606      	mov	r6, r0
 800771e:	4620      	mov	r0, r4
 8007720:	460f      	mov	r7, r1
 8007722:	f7f8 febf 	bl	80004a4 <__aeabi_i2d>
 8007726:	a344      	add	r3, pc, #272	; (adr r3, 8007838 <_dtoa_r+0x210>)
 8007728:	e9d3 2300 	ldrd	r2, r3, [r3]
 800772c:	f7f8 ff24 	bl	8000578 <__aeabi_dmul>
 8007730:	4602      	mov	r2, r0
 8007732:	460b      	mov	r3, r1
 8007734:	4630      	mov	r0, r6
 8007736:	4639      	mov	r1, r7
 8007738:	f7f8 fd68 	bl	800020c <__adddf3>
 800773c:	4606      	mov	r6, r0
 800773e:	460f      	mov	r7, r1
 8007740:	f7f9 f9ca 	bl	8000ad8 <__aeabi_d2iz>
 8007744:	2200      	movs	r2, #0
 8007746:	9006      	str	r0, [sp, #24]
 8007748:	2300      	movs	r3, #0
 800774a:	4630      	mov	r0, r6
 800774c:	4639      	mov	r1, r7
 800774e:	f7f9 f985 	bl	8000a5c <__aeabi_dcmplt>
 8007752:	2800      	cmp	r0, #0
 8007754:	f040 8273 	bne.w	8007c3e <_dtoa_r+0x616>
 8007758:	9e06      	ldr	r6, [sp, #24]
 800775a:	2e16      	cmp	r6, #22
 800775c:	f200 825d 	bhi.w	8007c1a <_dtoa_r+0x5f2>
 8007760:	4b3a      	ldr	r3, [pc, #232]	; (800784c <_dtoa_r+0x224>)
 8007762:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8007766:	e9d3 0100 	ldrd	r0, r1, [r3]
 800776a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800776e:	f7f9 f993 	bl	8000a98 <__aeabi_dcmpgt>
 8007772:	2800      	cmp	r0, #0
 8007774:	f000 83d7 	beq.w	8007f26 <_dtoa_r+0x8fe>
 8007778:	1e73      	subs	r3, r6, #1
 800777a:	9306      	str	r3, [sp, #24]
 800777c:	2300      	movs	r3, #0
 800777e:	930d      	str	r3, [sp, #52]	; 0x34
 8007780:	1b2c      	subs	r4, r5, r4
 8007782:	f1b4 0801 	subs.w	r8, r4, #1
 8007786:	f100 8254 	bmi.w	8007c32 <_dtoa_r+0x60a>
 800778a:	2300      	movs	r3, #0
 800778c:	9308      	str	r3, [sp, #32]
 800778e:	9b06      	ldr	r3, [sp, #24]
 8007790:	2b00      	cmp	r3, #0
 8007792:	f2c0 8245 	blt.w	8007c20 <_dtoa_r+0x5f8>
 8007796:	4498      	add	r8, r3
 8007798:	930c      	str	r3, [sp, #48]	; 0x30
 800779a:	2300      	movs	r3, #0
 800779c:	930b      	str	r3, [sp, #44]	; 0x2c
 800779e:	9b02      	ldr	r3, [sp, #8]
 80077a0:	2b09      	cmp	r3, #9
 80077a2:	d85b      	bhi.n	800785c <_dtoa_r+0x234>
 80077a4:	2b05      	cmp	r3, #5
 80077a6:	f340 83c0 	ble.w	8007f2a <_dtoa_r+0x902>
 80077aa:	3b04      	subs	r3, #4
 80077ac:	9302      	str	r3, [sp, #8]
 80077ae:	2500      	movs	r5, #0
 80077b0:	9b02      	ldr	r3, [sp, #8]
 80077b2:	3b02      	subs	r3, #2
 80077b4:	2b03      	cmp	r3, #3
 80077b6:	f200 8498 	bhi.w	80080ea <_dtoa_r+0xac2>
 80077ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80077be:	03df      	.short	0x03df
 80077c0:	03e803bf 	.word	0x03e803bf
 80077c4:	04f5      	.short	0x04f5
 80077c6:	9a05      	ldr	r2, [sp, #20]
 80077c8:	f242 730f 	movw	r3, #9999	; 0x270f
 80077cc:	6013      	str	r3, [r2, #0]
 80077ce:	9b00      	ldr	r3, [sp, #0]
 80077d0:	b983      	cbnz	r3, 80077f4 <_dtoa_r+0x1cc>
 80077d2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80077d6:	b96b      	cbnz	r3, 80077f4 <_dtoa_r+0x1cc>
 80077d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80077da:	f8df b074 	ldr.w	fp, [pc, #116]	; 8007850 <_dtoa_r+0x228>
 80077de:	2b00      	cmp	r3, #0
 80077e0:	f43f af61 	beq.w	80076a6 <_dtoa_r+0x7e>
 80077e4:	f10b 0308 	add.w	r3, fp, #8
 80077e8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80077ea:	4658      	mov	r0, fp
 80077ec:	6013      	str	r3, [r2, #0]
 80077ee:	b01b      	add	sp, #108	; 0x6c
 80077f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80077f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80077f6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8007854 <_dtoa_r+0x22c>
 80077fa:	2b00      	cmp	r3, #0
 80077fc:	f43f af53 	beq.w	80076a6 <_dtoa_r+0x7e>
 8007800:	f10b 0303 	add.w	r3, fp, #3
 8007804:	e7f0      	b.n	80077e8 <_dtoa_r+0x1c0>
 8007806:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800780a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800780e:	950f      	str	r5, [sp, #60]	; 0x3c
 8007810:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8007814:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8007818:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800781a:	e76f      	b.n	80076fc <_dtoa_r+0xd4>
 800781c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007858 <_dtoa_r+0x230>
 8007820:	4658      	mov	r0, fp
 8007822:	b01b      	add	sp, #108	; 0x6c
 8007824:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007828:	636f4361 	.word	0x636f4361
 800782c:	3fd287a7 	.word	0x3fd287a7
 8007830:	8b60c8b3 	.word	0x8b60c8b3
 8007834:	3fc68a28 	.word	0x3fc68a28
 8007838:	509f79fb 	.word	0x509f79fb
 800783c:	3fd34413 	.word	0x3fd34413
 8007840:	7ff00000 	.word	0x7ff00000
 8007844:	0800a899 	.word	0x0800a899
 8007848:	3ff80000 	.word	0x3ff80000
 800784c:	0800a8f8 	.word	0x0800a8f8
 8007850:	0800a8bc 	.word	0x0800a8bc
 8007854:	0800a8c8 	.word	0x0800a8c8
 8007858:	0800a898 	.word	0x0800a898
 800785c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8007860:	2501      	movs	r5, #1
 8007862:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8007866:	2300      	movs	r3, #0
 8007868:	9302      	str	r3, [sp, #8]
 800786a:	9307      	str	r3, [sp, #28]
 800786c:	2100      	movs	r1, #0
 800786e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007872:	940e      	str	r4, [sp, #56]	; 0x38
 8007874:	4648      	mov	r0, r9
 8007876:	f001 fdcd 	bl	8009414 <_Balloc>
 800787a:	2c0e      	cmp	r4, #14
 800787c:	4683      	mov	fp, r0
 800787e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007882:	f200 80fb 	bhi.w	8007a7c <_dtoa_r+0x454>
 8007886:	2d00      	cmp	r5, #0
 8007888:	f000 80f8 	beq.w	8007a7c <_dtoa_r+0x454>
 800788c:	ed9d 7b00 	vldr	d7, [sp]
 8007890:	9906      	ldr	r1, [sp, #24]
 8007892:	2900      	cmp	r1, #0
 8007894:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8007898:	f340 83e5 	ble.w	8008066 <_dtoa_r+0xa3e>
 800789c:	4b9d      	ldr	r3, [pc, #628]	; (8007b14 <_dtoa_r+0x4ec>)
 800789e:	f001 020f 	and.w	r2, r1, #15
 80078a2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80078a6:	ed93 7b00 	vldr	d7, [r3]
 80078aa:	110c      	asrs	r4, r1, #4
 80078ac:	06e2      	lsls	r2, r4, #27
 80078ae:	ed8d 7b00 	vstr	d7, [sp]
 80078b2:	f140 849e 	bpl.w	80081f2 <_dtoa_r+0xbca>
 80078b6:	4b98      	ldr	r3, [pc, #608]	; (8007b18 <_dtoa_r+0x4f0>)
 80078b8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80078bc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80078c0:	f7f8 ff84 	bl	80007cc <__aeabi_ddiv>
 80078c4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80078c8:	f004 040f 	and.w	r4, r4, #15
 80078cc:	2603      	movs	r6, #3
 80078ce:	b17c      	cbz	r4, 80078f0 <_dtoa_r+0x2c8>
 80078d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80078d4:	4d90      	ldr	r5, [pc, #576]	; (8007b18 <_dtoa_r+0x4f0>)
 80078d6:	07e3      	lsls	r3, r4, #31
 80078d8:	d504      	bpl.n	80078e4 <_dtoa_r+0x2bc>
 80078da:	e9d5 2300 	ldrd	r2, r3, [r5]
 80078de:	f7f8 fe4b 	bl	8000578 <__aeabi_dmul>
 80078e2:	3601      	adds	r6, #1
 80078e4:	1064      	asrs	r4, r4, #1
 80078e6:	f105 0508 	add.w	r5, r5, #8
 80078ea:	d1f4      	bne.n	80078d6 <_dtoa_r+0x2ae>
 80078ec:	e9cd 0100 	strd	r0, r1, [sp]
 80078f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80078f4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80078f8:	f7f8 ff68 	bl	80007cc <__aeabi_ddiv>
 80078fc:	e9cd 0100 	strd	r0, r1, [sp]
 8007900:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007902:	b143      	cbz	r3, 8007916 <_dtoa_r+0x2ee>
 8007904:	2200      	movs	r2, #0
 8007906:	4b85      	ldr	r3, [pc, #532]	; (8007b1c <_dtoa_r+0x4f4>)
 8007908:	e9dd 0100 	ldrd	r0, r1, [sp]
 800790c:	f7f9 f8a6 	bl	8000a5c <__aeabi_dcmplt>
 8007910:	2800      	cmp	r0, #0
 8007912:	f040 84ff 	bne.w	8008314 <_dtoa_r+0xcec>
 8007916:	4630      	mov	r0, r6
 8007918:	f7f8 fdc4 	bl	80004a4 <__aeabi_i2d>
 800791c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007920:	f7f8 fe2a 	bl	8000578 <__aeabi_dmul>
 8007924:	4b7e      	ldr	r3, [pc, #504]	; (8007b20 <_dtoa_r+0x4f8>)
 8007926:	2200      	movs	r2, #0
 8007928:	f7f8 fc70 	bl	800020c <__adddf3>
 800792c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800792e:	4606      	mov	r6, r0
 8007930:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007934:	2b00      	cmp	r3, #0
 8007936:	f000 841c 	beq.w	8008172 <_dtoa_r+0xb4a>
 800793a:	9b06      	ldr	r3, [sp, #24]
 800793c:	9316      	str	r3, [sp, #88]	; 0x58
 800793e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007940:	9312      	str	r3, [sp, #72]	; 0x48
 8007942:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007946:	f7f9 f8c7 	bl	8000ad8 <__aeabi_d2iz>
 800794a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800794c:	4b71      	ldr	r3, [pc, #452]	; (8007b14 <_dtoa_r+0x4ec>)
 800794e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007952:	ed13 7b02 	vldr	d7, [r3, #-8]
 8007956:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800795a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800795e:	f7f8 fda1 	bl	80004a4 <__aeabi_i2d>
 8007962:	460b      	mov	r3, r1
 8007964:	4602      	mov	r2, r0
 8007966:	e9dd 0100 	ldrd	r0, r1, [sp]
 800796a:	e9cd 6700 	strd	r6, r7, [sp]
 800796e:	f7f8 fc4b 	bl	8000208 <__aeabi_dsub>
 8007972:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007974:	b2ed      	uxtb	r5, r5
 8007976:	4606      	mov	r6, r0
 8007978:	460f      	mov	r7, r1
 800797a:	f10b 0401 	add.w	r4, fp, #1
 800797e:	2b00      	cmp	r3, #0
 8007980:	f000 8458 	beq.w	8008234 <_dtoa_r+0xc0c>
 8007984:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007988:	2000      	movs	r0, #0
 800798a:	4966      	ldr	r1, [pc, #408]	; (8007b24 <_dtoa_r+0x4fc>)
 800798c:	f7f8 ff1e 	bl	80007cc <__aeabi_ddiv>
 8007990:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007994:	f7f8 fc38 	bl	8000208 <__aeabi_dsub>
 8007998:	f88b 5000 	strb.w	r5, [fp]
 800799c:	4632      	mov	r2, r6
 800799e:	463b      	mov	r3, r7
 80079a0:	e9cd 0100 	strd	r0, r1, [sp]
 80079a4:	f7f9 f878 	bl	8000a98 <__aeabi_dcmpgt>
 80079a8:	2800      	cmp	r0, #0
 80079aa:	f040 8502 	bne.w	80083b2 <_dtoa_r+0xd8a>
 80079ae:	4632      	mov	r2, r6
 80079b0:	463b      	mov	r3, r7
 80079b2:	2000      	movs	r0, #0
 80079b4:	4959      	ldr	r1, [pc, #356]	; (8007b1c <_dtoa_r+0x4f4>)
 80079b6:	f7f8 fc27 	bl	8000208 <__aeabi_dsub>
 80079ba:	4602      	mov	r2, r0
 80079bc:	460b      	mov	r3, r1
 80079be:	e9dd 0100 	ldrd	r0, r1, [sp]
 80079c2:	f7f9 f869 	bl	8000a98 <__aeabi_dcmpgt>
 80079c6:	2800      	cmp	r0, #0
 80079c8:	f040 84fb 	bne.w	80083c2 <_dtoa_r+0xd9a>
 80079cc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80079ce:	2a01      	cmp	r2, #1
 80079d0:	d050      	beq.n	8007a74 <_dtoa_r+0x44c>
 80079d2:	445a      	add	r2, fp
 80079d4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80079d8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80079dc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80079e0:	4692      	mov	sl, r2
 80079e2:	46cb      	mov	fp, r9
 80079e4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80079e8:	e00c      	b.n	8007a04 <_dtoa_r+0x3dc>
 80079ea:	2000      	movs	r0, #0
 80079ec:	494b      	ldr	r1, [pc, #300]	; (8007b1c <_dtoa_r+0x4f4>)
 80079ee:	f7f8 fc0b 	bl	8000208 <__aeabi_dsub>
 80079f2:	4642      	mov	r2, r8
 80079f4:	464b      	mov	r3, r9
 80079f6:	f7f9 f831 	bl	8000a5c <__aeabi_dcmplt>
 80079fa:	2800      	cmp	r0, #0
 80079fc:	f040 84dc 	bne.w	80083b8 <_dtoa_r+0xd90>
 8007a00:	4554      	cmp	r4, sl
 8007a02:	d030      	beq.n	8007a66 <_dtoa_r+0x43e>
 8007a04:	4640      	mov	r0, r8
 8007a06:	4649      	mov	r1, r9
 8007a08:	2200      	movs	r2, #0
 8007a0a:	4b47      	ldr	r3, [pc, #284]	; (8007b28 <_dtoa_r+0x500>)
 8007a0c:	f7f8 fdb4 	bl	8000578 <__aeabi_dmul>
 8007a10:	2200      	movs	r2, #0
 8007a12:	4b45      	ldr	r3, [pc, #276]	; (8007b28 <_dtoa_r+0x500>)
 8007a14:	4680      	mov	r8, r0
 8007a16:	4689      	mov	r9, r1
 8007a18:	4630      	mov	r0, r6
 8007a1a:	4639      	mov	r1, r7
 8007a1c:	f7f8 fdac 	bl	8000578 <__aeabi_dmul>
 8007a20:	460f      	mov	r7, r1
 8007a22:	4606      	mov	r6, r0
 8007a24:	f7f9 f858 	bl	8000ad8 <__aeabi_d2iz>
 8007a28:	4605      	mov	r5, r0
 8007a2a:	f7f8 fd3b 	bl	80004a4 <__aeabi_i2d>
 8007a2e:	4602      	mov	r2, r0
 8007a30:	460b      	mov	r3, r1
 8007a32:	4630      	mov	r0, r6
 8007a34:	4639      	mov	r1, r7
 8007a36:	f7f8 fbe7 	bl	8000208 <__aeabi_dsub>
 8007a3a:	3530      	adds	r5, #48	; 0x30
 8007a3c:	b2ed      	uxtb	r5, r5
 8007a3e:	4642      	mov	r2, r8
 8007a40:	464b      	mov	r3, r9
 8007a42:	f804 5b01 	strb.w	r5, [r4], #1
 8007a46:	4606      	mov	r6, r0
 8007a48:	460f      	mov	r7, r1
 8007a4a:	f7f9 f807 	bl	8000a5c <__aeabi_dcmplt>
 8007a4e:	4632      	mov	r2, r6
 8007a50:	463b      	mov	r3, r7
 8007a52:	2800      	cmp	r0, #0
 8007a54:	d0c9      	beq.n	80079ea <_dtoa_r+0x3c2>
 8007a56:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007a58:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007a5c:	9306      	str	r3, [sp, #24]
 8007a5e:	46d9      	mov	r9, fp
 8007a60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007a64:	e236      	b.n	8007ed4 <_dtoa_r+0x8ac>
 8007a66:	46d9      	mov	r9, fp
 8007a68:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007a6c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007a70:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007a74:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007a78:	e9cd 3400 	strd	r3, r4, [sp]
 8007a7c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007a7e:	2b00      	cmp	r3, #0
 8007a80:	f2c0 80ae 	blt.w	8007be0 <_dtoa_r+0x5b8>
 8007a84:	9a06      	ldr	r2, [sp, #24]
 8007a86:	2a0e      	cmp	r2, #14
 8007a88:	f300 80aa 	bgt.w	8007be0 <_dtoa_r+0x5b8>
 8007a8c:	4b21      	ldr	r3, [pc, #132]	; (8007b14 <_dtoa_r+0x4ec>)
 8007a8e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007a92:	ed93 7b00 	vldr	d7, [r3]
 8007a96:	9b07      	ldr	r3, [sp, #28]
 8007a98:	2b00      	cmp	r3, #0
 8007a9a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007a9e:	f2c0 82be 	blt.w	800801e <_dtoa_r+0x9f6>
 8007aa2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8007aa6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007aaa:	4630      	mov	r0, r6
 8007aac:	4639      	mov	r1, r7
 8007aae:	f7f8 fe8d 	bl	80007cc <__aeabi_ddiv>
 8007ab2:	f7f9 f811 	bl	8000ad8 <__aeabi_d2iz>
 8007ab6:	4605      	mov	r5, r0
 8007ab8:	f7f8 fcf4 	bl	80004a4 <__aeabi_i2d>
 8007abc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007ac0:	f7f8 fd5a 	bl	8000578 <__aeabi_dmul>
 8007ac4:	460b      	mov	r3, r1
 8007ac6:	4602      	mov	r2, r0
 8007ac8:	4639      	mov	r1, r7
 8007aca:	4630      	mov	r0, r6
 8007acc:	f7f8 fb9c 	bl	8000208 <__aeabi_dsub>
 8007ad0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8007ad4:	f88b 3000 	strb.w	r3, [fp]
 8007ad8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007ada:	2b01      	cmp	r3, #1
 8007adc:	4606      	mov	r6, r0
 8007ade:	460f      	mov	r7, r1
 8007ae0:	f10b 0401 	add.w	r4, fp, #1
 8007ae4:	d053      	beq.n	8007b8e <_dtoa_r+0x566>
 8007ae6:	2200      	movs	r2, #0
 8007ae8:	4b0f      	ldr	r3, [pc, #60]	; (8007b28 <_dtoa_r+0x500>)
 8007aea:	f7f8 fd45 	bl	8000578 <__aeabi_dmul>
 8007aee:	2200      	movs	r2, #0
 8007af0:	2300      	movs	r3, #0
 8007af2:	4606      	mov	r6, r0
 8007af4:	460f      	mov	r7, r1
 8007af6:	f7f8 ffa7 	bl	8000a48 <__aeabi_dcmpeq>
 8007afa:	2800      	cmp	r0, #0
 8007afc:	f040 81ea 	bne.w	8007ed4 <_dtoa_r+0x8ac>
 8007b00:	f8cd a000 	str.w	sl, [sp]
 8007b04:	f8cd 901c 	str.w	r9, [sp, #28]
 8007b08:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007b0c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007b10:	e017      	b.n	8007b42 <_dtoa_r+0x51a>
 8007b12:	bf00      	nop
 8007b14:	0800a8f8 	.word	0x0800a8f8
 8007b18:	0800a8d0 	.word	0x0800a8d0
 8007b1c:	3ff00000 	.word	0x3ff00000
 8007b20:	401c0000 	.word	0x401c0000
 8007b24:	3fe00000 	.word	0x3fe00000
 8007b28:	40240000 	.word	0x40240000
 8007b2c:	f7f8 fd24 	bl	8000578 <__aeabi_dmul>
 8007b30:	2200      	movs	r2, #0
 8007b32:	2300      	movs	r3, #0
 8007b34:	4606      	mov	r6, r0
 8007b36:	460f      	mov	r7, r1
 8007b38:	f7f8 ff86 	bl	8000a48 <__aeabi_dcmpeq>
 8007b3c:	2800      	cmp	r0, #0
 8007b3e:	f040 833d 	bne.w	80081bc <_dtoa_r+0xb94>
 8007b42:	464a      	mov	r2, r9
 8007b44:	4653      	mov	r3, sl
 8007b46:	4630      	mov	r0, r6
 8007b48:	4639      	mov	r1, r7
 8007b4a:	f7f8 fe3f 	bl	80007cc <__aeabi_ddiv>
 8007b4e:	f7f8 ffc3 	bl	8000ad8 <__aeabi_d2iz>
 8007b52:	4605      	mov	r5, r0
 8007b54:	f7f8 fca6 	bl	80004a4 <__aeabi_i2d>
 8007b58:	464a      	mov	r2, r9
 8007b5a:	4653      	mov	r3, sl
 8007b5c:	f7f8 fd0c 	bl	8000578 <__aeabi_dmul>
 8007b60:	4602      	mov	r2, r0
 8007b62:	460b      	mov	r3, r1
 8007b64:	4630      	mov	r0, r6
 8007b66:	4639      	mov	r1, r7
 8007b68:	f7f8 fb4e 	bl	8000208 <__aeabi_dsub>
 8007b6c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007b70:	f804 cb01 	strb.w	ip, [r4], #1
 8007b74:	eba4 0c0b 	sub.w	ip, r4, fp
 8007b78:	45e0      	cmp	r8, ip
 8007b7a:	4606      	mov	r6, r0
 8007b7c:	460f      	mov	r7, r1
 8007b7e:	f04f 0200 	mov.w	r2, #0
 8007b82:	4bc1      	ldr	r3, [pc, #772]	; (8007e88 <_dtoa_r+0x860>)
 8007b84:	d1d2      	bne.n	8007b2c <_dtoa_r+0x504>
 8007b86:	f8dd a000 	ldr.w	sl, [sp]
 8007b8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007b8e:	4632      	mov	r2, r6
 8007b90:	463b      	mov	r3, r7
 8007b92:	4630      	mov	r0, r6
 8007b94:	4639      	mov	r1, r7
 8007b96:	f7f8 fb39 	bl	800020c <__adddf3>
 8007b9a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007b9e:	4606      	mov	r6, r0
 8007ba0:	460f      	mov	r7, r1
 8007ba2:	f7f8 ff79 	bl	8000a98 <__aeabi_dcmpgt>
 8007ba6:	b958      	cbnz	r0, 8007bc0 <_dtoa_r+0x598>
 8007ba8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007bac:	4630      	mov	r0, r6
 8007bae:	4639      	mov	r1, r7
 8007bb0:	f7f8 ff4a 	bl	8000a48 <__aeabi_dcmpeq>
 8007bb4:	2800      	cmp	r0, #0
 8007bb6:	f000 818d 	beq.w	8007ed4 <_dtoa_r+0x8ac>
 8007bba:	07e9      	lsls	r1, r5, #31
 8007bbc:	f140 818a 	bpl.w	8007ed4 <_dtoa_r+0x8ac>
 8007bc0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007bc4:	e005      	b.n	8007bd2 <_dtoa_r+0x5aa>
 8007bc6:	459b      	cmp	fp, r3
 8007bc8:	f000 8373 	beq.w	80082b2 <_dtoa_r+0xc8a>
 8007bcc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8007bd0:	461c      	mov	r4, r3
 8007bd2:	2d39      	cmp	r5, #57	; 0x39
 8007bd4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007bd8:	d0f5      	beq.n	8007bc6 <_dtoa_r+0x59e>
 8007bda:	3501      	adds	r5, #1
 8007bdc:	701d      	strb	r5, [r3, #0]
 8007bde:	e179      	b.n	8007ed4 <_dtoa_r+0x8ac>
 8007be0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007be2:	2a00      	cmp	r2, #0
 8007be4:	d03b      	beq.n	8007c5e <_dtoa_r+0x636>
 8007be6:	9a02      	ldr	r2, [sp, #8]
 8007be8:	2a01      	cmp	r2, #1
 8007bea:	f340 820b 	ble.w	8008004 <_dtoa_r+0x9dc>
 8007bee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007bf0:	1e5f      	subs	r7, r3, #1
 8007bf2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007bf4:	42bb      	cmp	r3, r7
 8007bf6:	f2c0 82e6 	blt.w	80081c6 <_dtoa_r+0xb9e>
 8007bfa:	1bdf      	subs	r7, r3, r7
 8007bfc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007bfe:	2b00      	cmp	r3, #0
 8007c00:	f2c0 830b 	blt.w	800821a <_dtoa_r+0xbf2>
 8007c04:	9a08      	ldr	r2, [sp, #32]
 8007c06:	4614      	mov	r4, r2
 8007c08:	441a      	add	r2, r3
 8007c0a:	4498      	add	r8, r3
 8007c0c:	9208      	str	r2, [sp, #32]
 8007c0e:	2101      	movs	r1, #1
 8007c10:	4648      	mov	r0, r9
 8007c12:	f001 fcbf 	bl	8009594 <__i2b>
 8007c16:	4605      	mov	r5, r0
 8007c18:	e024      	b.n	8007c64 <_dtoa_r+0x63c>
 8007c1a:	2301      	movs	r3, #1
 8007c1c:	930d      	str	r3, [sp, #52]	; 0x34
 8007c1e:	e5af      	b.n	8007780 <_dtoa_r+0x158>
 8007c20:	9a08      	ldr	r2, [sp, #32]
 8007c22:	9b06      	ldr	r3, [sp, #24]
 8007c24:	1ad2      	subs	r2, r2, r3
 8007c26:	425b      	negs	r3, r3
 8007c28:	930b      	str	r3, [sp, #44]	; 0x2c
 8007c2a:	2300      	movs	r3, #0
 8007c2c:	9208      	str	r2, [sp, #32]
 8007c2e:	930c      	str	r3, [sp, #48]	; 0x30
 8007c30:	e5b5      	b.n	800779e <_dtoa_r+0x176>
 8007c32:	f1c4 0301 	rsb	r3, r4, #1
 8007c36:	9308      	str	r3, [sp, #32]
 8007c38:	f04f 0800 	mov.w	r8, #0
 8007c3c:	e5a7      	b.n	800778e <_dtoa_r+0x166>
 8007c3e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8007c42:	4640      	mov	r0, r8
 8007c44:	f7f8 fc2e 	bl	80004a4 <__aeabi_i2d>
 8007c48:	4632      	mov	r2, r6
 8007c4a:	463b      	mov	r3, r7
 8007c4c:	f7f8 fefc 	bl	8000a48 <__aeabi_dcmpeq>
 8007c50:	2800      	cmp	r0, #0
 8007c52:	f47f ad81 	bne.w	8007758 <_dtoa_r+0x130>
 8007c56:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007c5a:	9306      	str	r3, [sp, #24]
 8007c5c:	e57c      	b.n	8007758 <_dtoa_r+0x130>
 8007c5e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007c60:	9c08      	ldr	r4, [sp, #32]
 8007c62:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007c64:	2c00      	cmp	r4, #0
 8007c66:	dd0c      	ble.n	8007c82 <_dtoa_r+0x65a>
 8007c68:	f1b8 0f00 	cmp.w	r8, #0
 8007c6c:	dd09      	ble.n	8007c82 <_dtoa_r+0x65a>
 8007c6e:	4544      	cmp	r4, r8
 8007c70:	9a08      	ldr	r2, [sp, #32]
 8007c72:	4623      	mov	r3, r4
 8007c74:	bfa8      	it	ge
 8007c76:	4643      	movge	r3, r8
 8007c78:	1ad2      	subs	r2, r2, r3
 8007c7a:	9208      	str	r2, [sp, #32]
 8007c7c:	1ae4      	subs	r4, r4, r3
 8007c7e:	eba8 0803 	sub.w	r8, r8, r3
 8007c82:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007c84:	b16b      	cbz	r3, 8007ca2 <_dtoa_r+0x67a>
 8007c86:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007c88:	2a00      	cmp	r2, #0
 8007c8a:	f000 8290 	beq.w	80081ae <_dtoa_r+0xb86>
 8007c8e:	1bde      	subs	r6, r3, r7
 8007c90:	2f00      	cmp	r7, #0
 8007c92:	f040 819b 	bne.w	8007fcc <_dtoa_r+0x9a4>
 8007c96:	4651      	mov	r1, sl
 8007c98:	4632      	mov	r2, r6
 8007c9a:	4648      	mov	r0, r9
 8007c9c:	f001 fd2a 	bl	80096f4 <__pow5mult>
 8007ca0:	4682      	mov	sl, r0
 8007ca2:	2101      	movs	r1, #1
 8007ca4:	4648      	mov	r0, r9
 8007ca6:	f001 fc75 	bl	8009594 <__i2b>
 8007caa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007cac:	4606      	mov	r6, r0
 8007cae:	2a00      	cmp	r2, #0
 8007cb0:	f040 8125 	bne.w	8007efe <_dtoa_r+0x8d6>
 8007cb4:	9b02      	ldr	r3, [sp, #8]
 8007cb6:	2b01      	cmp	r3, #1
 8007cb8:	f340 816c 	ble.w	8007f94 <_dtoa_r+0x96c>
 8007cbc:	2001      	movs	r0, #1
 8007cbe:	4440      	add	r0, r8
 8007cc0:	f010 001f 	ands.w	r0, r0, #31
 8007cc4:	f000 8119 	beq.w	8007efa <_dtoa_r+0x8d2>
 8007cc8:	f1c0 0320 	rsb	r3, r0, #32
 8007ccc:	2b04      	cmp	r3, #4
 8007cce:	f340 83ac 	ble.w	800842a <_dtoa_r+0xe02>
 8007cd2:	f1c0 001c 	rsb	r0, r0, #28
 8007cd6:	9b08      	ldr	r3, [sp, #32]
 8007cd8:	4403      	add	r3, r0
 8007cda:	9308      	str	r3, [sp, #32]
 8007cdc:	4404      	add	r4, r0
 8007cde:	4480      	add	r8, r0
 8007ce0:	9b08      	ldr	r3, [sp, #32]
 8007ce2:	2b00      	cmp	r3, #0
 8007ce4:	dd05      	ble.n	8007cf2 <_dtoa_r+0x6ca>
 8007ce6:	4651      	mov	r1, sl
 8007ce8:	461a      	mov	r2, r3
 8007cea:	4648      	mov	r0, r9
 8007cec:	f001 fd52 	bl	8009794 <__lshift>
 8007cf0:	4682      	mov	sl, r0
 8007cf2:	f1b8 0f00 	cmp.w	r8, #0
 8007cf6:	dd05      	ble.n	8007d04 <_dtoa_r+0x6dc>
 8007cf8:	4631      	mov	r1, r6
 8007cfa:	4642      	mov	r2, r8
 8007cfc:	4648      	mov	r0, r9
 8007cfe:	f001 fd49 	bl	8009794 <__lshift>
 8007d02:	4606      	mov	r6, r0
 8007d04:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007d06:	2b00      	cmp	r3, #0
 8007d08:	d177      	bne.n	8007dfa <_dtoa_r+0x7d2>
 8007d0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007d0c:	2b00      	cmp	r3, #0
 8007d0e:	f340 8209 	ble.w	8008124 <_dtoa_r+0xafc>
 8007d12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007d14:	2b00      	cmp	r3, #0
 8007d16:	f000 8089 	beq.w	8007e2c <_dtoa_r+0x804>
 8007d1a:	2c00      	cmp	r4, #0
 8007d1c:	f300 816b 	bgt.w	8007ff6 <_dtoa_r+0x9ce>
 8007d20:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007d22:	2b00      	cmp	r3, #0
 8007d24:	f040 81cd 	bne.w	80080c2 <_dtoa_r+0xa9a>
 8007d28:	46a8      	mov	r8, r5
 8007d2a:	9a00      	ldr	r2, [sp, #0]
 8007d2c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007d30:	f002 0201 	and.w	r2, r2, #1
 8007d34:	920a      	str	r2, [sp, #40]	; 0x28
 8007d36:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007d38:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8007d3c:	441a      	add	r2, r3
 8007d3e:	465f      	mov	r7, fp
 8007d40:	9209      	str	r2, [sp, #36]	; 0x24
 8007d42:	46b3      	mov	fp, r6
 8007d44:	4659      	mov	r1, fp
 8007d46:	4650      	mov	r0, sl
 8007d48:	f7ff fbdc 	bl	8007504 <quorem>
 8007d4c:	4629      	mov	r1, r5
 8007d4e:	4604      	mov	r4, r0
 8007d50:	4650      	mov	r0, sl
 8007d52:	f001 fd75 	bl	8009840 <__mcmp>
 8007d56:	4659      	mov	r1, fp
 8007d58:	4606      	mov	r6, r0
 8007d5a:	4642      	mov	r2, r8
 8007d5c:	4648      	mov	r0, r9
 8007d5e:	f001 fd8b 	bl	8009878 <__mdiff>
 8007d62:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8007d66:	9300      	str	r3, [sp, #0]
 8007d68:	68c3      	ldr	r3, [r0, #12]
 8007d6a:	4601      	mov	r1, r0
 8007d6c:	2b00      	cmp	r3, #0
 8007d6e:	f040 81d4 	bne.w	800811a <_dtoa_r+0xaf2>
 8007d72:	9008      	str	r0, [sp, #32]
 8007d74:	4650      	mov	r0, sl
 8007d76:	f001 fd63 	bl	8009840 <__mcmp>
 8007d7a:	9a08      	ldr	r2, [sp, #32]
 8007d7c:	9007      	str	r0, [sp, #28]
 8007d7e:	4611      	mov	r1, r2
 8007d80:	4648      	mov	r0, r9
 8007d82:	f001 fb6d 	bl	8009460 <_Bfree>
 8007d86:	9b07      	ldr	r3, [sp, #28]
 8007d88:	b933      	cbnz	r3, 8007d98 <_dtoa_r+0x770>
 8007d8a:	9a02      	ldr	r2, [sp, #8]
 8007d8c:	b922      	cbnz	r2, 8007d98 <_dtoa_r+0x770>
 8007d8e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007d90:	2b00      	cmp	r3, #0
 8007d92:	f000 8319 	beq.w	80083c8 <_dtoa_r+0xda0>
 8007d96:	9b02      	ldr	r3, [sp, #8]
 8007d98:	2e00      	cmp	r6, #0
 8007d9a:	f2c0 821c 	blt.w	80081d6 <_dtoa_r+0xbae>
 8007d9e:	d105      	bne.n	8007dac <_dtoa_r+0x784>
 8007da0:	9a02      	ldr	r2, [sp, #8]
 8007da2:	b91a      	cbnz	r2, 8007dac <_dtoa_r+0x784>
 8007da4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007da6:	2a00      	cmp	r2, #0
 8007da8:	f000 8215 	beq.w	80081d6 <_dtoa_r+0xbae>
 8007dac:	2b00      	cmp	r3, #0
 8007dae:	f107 0401 	add.w	r4, r7, #1
 8007db2:	f300 8225 	bgt.w	8008200 <_dtoa_r+0xbd8>
 8007db6:	9b00      	ldr	r3, [sp, #0]
 8007db8:	703b      	strb	r3, [r7, #0]
 8007dba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007dbc:	42bb      	cmp	r3, r7
 8007dbe:	f000 8230 	beq.w	8008222 <_dtoa_r+0xbfa>
 8007dc2:	4651      	mov	r1, sl
 8007dc4:	2300      	movs	r3, #0
 8007dc6:	220a      	movs	r2, #10
 8007dc8:	4648      	mov	r0, r9
 8007dca:	f001 fb53 	bl	8009474 <__multadd>
 8007dce:	4545      	cmp	r5, r8
 8007dd0:	4682      	mov	sl, r0
 8007dd2:	4629      	mov	r1, r5
 8007dd4:	f04f 0300 	mov.w	r3, #0
 8007dd8:	f04f 020a 	mov.w	r2, #10
 8007ddc:	4648      	mov	r0, r9
 8007dde:	f000 8196 	beq.w	800810e <_dtoa_r+0xae6>
 8007de2:	f001 fb47 	bl	8009474 <__multadd>
 8007de6:	4641      	mov	r1, r8
 8007de8:	4605      	mov	r5, r0
 8007dea:	2300      	movs	r3, #0
 8007dec:	220a      	movs	r2, #10
 8007dee:	4648      	mov	r0, r9
 8007df0:	f001 fb40 	bl	8009474 <__multadd>
 8007df4:	4627      	mov	r7, r4
 8007df6:	4680      	mov	r8, r0
 8007df8:	e7a4      	b.n	8007d44 <_dtoa_r+0x71c>
 8007dfa:	4631      	mov	r1, r6
 8007dfc:	4650      	mov	r0, sl
 8007dfe:	f001 fd1f 	bl	8009840 <__mcmp>
 8007e02:	2800      	cmp	r0, #0
 8007e04:	da81      	bge.n	8007d0a <_dtoa_r+0x6e2>
 8007e06:	9f06      	ldr	r7, [sp, #24]
 8007e08:	4651      	mov	r1, sl
 8007e0a:	2300      	movs	r3, #0
 8007e0c:	220a      	movs	r2, #10
 8007e0e:	4648      	mov	r0, r9
 8007e10:	3f01      	subs	r7, #1
 8007e12:	9706      	str	r7, [sp, #24]
 8007e14:	f001 fb2e 	bl	8009474 <__multadd>
 8007e18:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007e1a:	4682      	mov	sl, r0
 8007e1c:	2b00      	cmp	r3, #0
 8007e1e:	f040 82eb 	bne.w	80083f8 <_dtoa_r+0xdd0>
 8007e22:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007e24:	2b00      	cmp	r3, #0
 8007e26:	f340 82f3 	ble.w	8008410 <_dtoa_r+0xde8>
 8007e2a:	9309      	str	r3, [sp, #36]	; 0x24
 8007e2c:	465c      	mov	r4, fp
 8007e2e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007e32:	e002      	b.n	8007e3a <_dtoa_r+0x812>
 8007e34:	f001 fb1e 	bl	8009474 <__multadd>
 8007e38:	4682      	mov	sl, r0
 8007e3a:	4631      	mov	r1, r6
 8007e3c:	4650      	mov	r0, sl
 8007e3e:	f7ff fb61 	bl	8007504 <quorem>
 8007e42:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8007e46:	f804 7b01 	strb.w	r7, [r4], #1
 8007e4a:	eba4 030b 	sub.w	r3, r4, fp
 8007e4e:	4598      	cmp	r8, r3
 8007e50:	f04f 020a 	mov.w	r2, #10
 8007e54:	f04f 0300 	mov.w	r3, #0
 8007e58:	4651      	mov	r1, sl
 8007e5a:	4648      	mov	r0, r9
 8007e5c:	dcea      	bgt.n	8007e34 <_dtoa_r+0x80c>
 8007e5e:	2300      	movs	r3, #0
 8007e60:	9700      	str	r7, [sp, #0]
 8007e62:	9302      	str	r3, [sp, #8]
 8007e64:	4651      	mov	r1, sl
 8007e66:	2201      	movs	r2, #1
 8007e68:	4648      	mov	r0, r9
 8007e6a:	f001 fc93 	bl	8009794 <__lshift>
 8007e6e:	4631      	mov	r1, r6
 8007e70:	4682      	mov	sl, r0
 8007e72:	f001 fce5 	bl	8009840 <__mcmp>
 8007e76:	2800      	cmp	r0, #0
 8007e78:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8007e7c:	dc14      	bgt.n	8007ea8 <_dtoa_r+0x880>
 8007e7e:	d108      	bne.n	8007e92 <_dtoa_r+0x86a>
 8007e80:	9b00      	ldr	r3, [sp, #0]
 8007e82:	07db      	lsls	r3, r3, #31
 8007e84:	d410      	bmi.n	8007ea8 <_dtoa_r+0x880>
 8007e86:	e004      	b.n	8007e92 <_dtoa_r+0x86a>
 8007e88:	40240000 	.word	0x40240000
 8007e8c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007e90:	461c      	mov	r4, r3
 8007e92:	2a30      	cmp	r2, #48	; 0x30
 8007e94:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007e98:	d0f8      	beq.n	8007e8c <_dtoa_r+0x864>
 8007e9a:	e00b      	b.n	8007eb4 <_dtoa_r+0x88c>
 8007e9c:	459b      	cmp	fp, r3
 8007e9e:	f000 814e 	beq.w	800813e <_dtoa_r+0xb16>
 8007ea2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8007ea6:	461c      	mov	r4, r3
 8007ea8:	2a39      	cmp	r2, #57	; 0x39
 8007eaa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007eae:	d0f5      	beq.n	8007e9c <_dtoa_r+0x874>
 8007eb0:	3201      	adds	r2, #1
 8007eb2:	701a      	strb	r2, [r3, #0]
 8007eb4:	4631      	mov	r1, r6
 8007eb6:	4648      	mov	r0, r9
 8007eb8:	f001 fad2 	bl	8009460 <_Bfree>
 8007ebc:	b155      	cbz	r5, 8007ed4 <_dtoa_r+0x8ac>
 8007ebe:	9902      	ldr	r1, [sp, #8]
 8007ec0:	b121      	cbz	r1, 8007ecc <_dtoa_r+0x8a4>
 8007ec2:	42a9      	cmp	r1, r5
 8007ec4:	d002      	beq.n	8007ecc <_dtoa_r+0x8a4>
 8007ec6:	4648      	mov	r0, r9
 8007ec8:	f001 faca 	bl	8009460 <_Bfree>
 8007ecc:	4629      	mov	r1, r5
 8007ece:	4648      	mov	r0, r9
 8007ed0:	f001 fac6 	bl	8009460 <_Bfree>
 8007ed4:	4651      	mov	r1, sl
 8007ed6:	4648      	mov	r0, r9
 8007ed8:	f001 fac2 	bl	8009460 <_Bfree>
 8007edc:	2200      	movs	r2, #0
 8007ede:	9b06      	ldr	r3, [sp, #24]
 8007ee0:	7022      	strb	r2, [r4, #0]
 8007ee2:	9a05      	ldr	r2, [sp, #20]
 8007ee4:	3301      	adds	r3, #1
 8007ee6:	6013      	str	r3, [r2, #0]
 8007ee8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007eea:	2b00      	cmp	r3, #0
 8007eec:	f43f abdb 	beq.w	80076a6 <_dtoa_r+0x7e>
 8007ef0:	4658      	mov	r0, fp
 8007ef2:	601c      	str	r4, [r3, #0]
 8007ef4:	b01b      	add	sp, #108	; 0x6c
 8007ef6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007efa:	201c      	movs	r0, #28
 8007efc:	e6eb      	b.n	8007cd6 <_dtoa_r+0x6ae>
 8007efe:	4601      	mov	r1, r0
 8007f00:	4648      	mov	r0, r9
 8007f02:	f001 fbf7 	bl	80096f4 <__pow5mult>
 8007f06:	9b02      	ldr	r3, [sp, #8]
 8007f08:	2b01      	cmp	r3, #1
 8007f0a:	4606      	mov	r6, r0
 8007f0c:	f340 80d4 	ble.w	80080b8 <_dtoa_r+0xa90>
 8007f10:	2300      	movs	r3, #0
 8007f12:	930c      	str	r3, [sp, #48]	; 0x30
 8007f14:	6933      	ldr	r3, [r6, #16]
 8007f16:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8007f1a:	6918      	ldr	r0, [r3, #16]
 8007f1c:	f001 faea 	bl	80094f4 <__hi0bits>
 8007f20:	f1c0 0020 	rsb	r0, r0, #32
 8007f24:	e6cb      	b.n	8007cbe <_dtoa_r+0x696>
 8007f26:	900d      	str	r0, [sp, #52]	; 0x34
 8007f28:	e42a      	b.n	8007780 <_dtoa_r+0x158>
 8007f2a:	2501      	movs	r5, #1
 8007f2c:	e440      	b.n	80077b0 <_dtoa_r+0x188>
 8007f2e:	f1c3 0820 	rsb	r8, r3, #32
 8007f32:	9b00      	ldr	r3, [sp, #0]
 8007f34:	fa03 f008 	lsl.w	r0, r3, r8
 8007f38:	f7ff bbd8 	b.w	80076ec <_dtoa_r+0xc4>
 8007f3c:	2300      	movs	r3, #0
 8007f3e:	930a      	str	r3, [sp, #40]	; 0x28
 8007f40:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8007f44:	4413      	add	r3, r2
 8007f46:	930e      	str	r3, [sp, #56]	; 0x38
 8007f48:	3301      	adds	r3, #1
 8007f4a:	2b01      	cmp	r3, #1
 8007f4c:	461e      	mov	r6, r3
 8007f4e:	9309      	str	r3, [sp, #36]	; 0x24
 8007f50:	bfb8      	it	lt
 8007f52:	2601      	movlt	r6, #1
 8007f54:	2100      	movs	r1, #0
 8007f56:	2e17      	cmp	r6, #23
 8007f58:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007f5c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8007f5e:	f77f ac89 	ble.w	8007874 <_dtoa_r+0x24c>
 8007f62:	2201      	movs	r2, #1
 8007f64:	2304      	movs	r3, #4
 8007f66:	005b      	lsls	r3, r3, #1
 8007f68:	f103 0014 	add.w	r0, r3, #20
 8007f6c:	42b0      	cmp	r0, r6
 8007f6e:	4611      	mov	r1, r2
 8007f70:	f102 0201 	add.w	r2, r2, #1
 8007f74:	d9f7      	bls.n	8007f66 <_dtoa_r+0x93e>
 8007f76:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007f7a:	e47b      	b.n	8007874 <_dtoa_r+0x24c>
 8007f7c:	2300      	movs	r3, #0
 8007f7e:	930a      	str	r3, [sp, #40]	; 0x28
 8007f80:	9e07      	ldr	r6, [sp, #28]
 8007f82:	2e00      	cmp	r6, #0
 8007f84:	f340 80e2 	ble.w	800814c <_dtoa_r+0xb24>
 8007f88:	960e      	str	r6, [sp, #56]	; 0x38
 8007f8a:	9609      	str	r6, [sp, #36]	; 0x24
 8007f8c:	e7e2      	b.n	8007f54 <_dtoa_r+0x92c>
 8007f8e:	2301      	movs	r3, #1
 8007f90:	930a      	str	r3, [sp, #40]	; 0x28
 8007f92:	e7f5      	b.n	8007f80 <_dtoa_r+0x958>
 8007f94:	9b00      	ldr	r3, [sp, #0]
 8007f96:	2b00      	cmp	r3, #0
 8007f98:	f47f ae90 	bne.w	8007cbc <_dtoa_r+0x694>
 8007f9c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007fa0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8007fa4:	2b00      	cmp	r3, #0
 8007fa6:	f040 8192 	bne.w	80082ce <_dtoa_r+0xca6>
 8007faa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8007fae:	0d1b      	lsrs	r3, r3, #20
 8007fb0:	051b      	lsls	r3, r3, #20
 8007fb2:	b12b      	cbz	r3, 8007fc0 <_dtoa_r+0x998>
 8007fb4:	9b08      	ldr	r3, [sp, #32]
 8007fb6:	3301      	adds	r3, #1
 8007fb8:	9308      	str	r3, [sp, #32]
 8007fba:	f108 0801 	add.w	r8, r8, #1
 8007fbe:	2301      	movs	r3, #1
 8007fc0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007fc2:	930c      	str	r3, [sp, #48]	; 0x30
 8007fc4:	2a00      	cmp	r2, #0
 8007fc6:	f43f ae79 	beq.w	8007cbc <_dtoa_r+0x694>
 8007fca:	e7a3      	b.n	8007f14 <_dtoa_r+0x8ec>
 8007fcc:	463a      	mov	r2, r7
 8007fce:	4629      	mov	r1, r5
 8007fd0:	4648      	mov	r0, r9
 8007fd2:	f001 fb8f 	bl	80096f4 <__pow5mult>
 8007fd6:	4652      	mov	r2, sl
 8007fd8:	4601      	mov	r1, r0
 8007fda:	4605      	mov	r5, r0
 8007fdc:	4648      	mov	r0, r9
 8007fde:	f001 fae3 	bl	80095a8 <__multiply>
 8007fe2:	4651      	mov	r1, sl
 8007fe4:	4607      	mov	r7, r0
 8007fe6:	4648      	mov	r0, r9
 8007fe8:	f001 fa3a 	bl	8009460 <_Bfree>
 8007fec:	46ba      	mov	sl, r7
 8007fee:	2e00      	cmp	r6, #0
 8007ff0:	f43f ae57 	beq.w	8007ca2 <_dtoa_r+0x67a>
 8007ff4:	e64f      	b.n	8007c96 <_dtoa_r+0x66e>
 8007ff6:	4629      	mov	r1, r5
 8007ff8:	4622      	mov	r2, r4
 8007ffa:	4648      	mov	r0, r9
 8007ffc:	f001 fbca 	bl	8009794 <__lshift>
 8008000:	4605      	mov	r5, r0
 8008002:	e68d      	b.n	8007d20 <_dtoa_r+0x6f8>
 8008004:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8008006:	2a00      	cmp	r2, #0
 8008008:	f000 815d 	beq.w	80082c6 <_dtoa_r+0xc9e>
 800800c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8008010:	9a08      	ldr	r2, [sp, #32]
 8008012:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8008014:	4614      	mov	r4, r2
 8008016:	441a      	add	r2, r3
 8008018:	4498      	add	r8, r3
 800801a:	9208      	str	r2, [sp, #32]
 800801c:	e5f7      	b.n	8007c0e <_dtoa_r+0x5e6>
 800801e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008020:	2b00      	cmp	r3, #0
 8008022:	f73f ad3e 	bgt.w	8007aa2 <_dtoa_r+0x47a>
 8008026:	f040 80bc 	bne.w	80081a2 <_dtoa_r+0xb7a>
 800802a:	ec51 0b17 	vmov	r0, r1, d7
 800802e:	2200      	movs	r2, #0
 8008030:	4bb2      	ldr	r3, [pc, #712]	; (80082fc <_dtoa_r+0xcd4>)
 8008032:	f7f8 faa1 	bl	8000578 <__aeabi_dmul>
 8008036:	e9dd 2300 	ldrd	r2, r3, [sp]
 800803a:	f7f8 fd23 	bl	8000a84 <__aeabi_dcmpge>
 800803e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8008040:	4635      	mov	r5, r6
 8008042:	2800      	cmp	r0, #0
 8008044:	d176      	bne.n	8008134 <_dtoa_r+0xb0c>
 8008046:	9a06      	ldr	r2, [sp, #24]
 8008048:	2331      	movs	r3, #49	; 0x31
 800804a:	3201      	adds	r2, #1
 800804c:	9206      	str	r2, [sp, #24]
 800804e:	f88b 3000 	strb.w	r3, [fp]
 8008052:	f10b 0401 	add.w	r4, fp, #1
 8008056:	4631      	mov	r1, r6
 8008058:	4648      	mov	r0, r9
 800805a:	f001 fa01 	bl	8009460 <_Bfree>
 800805e:	2d00      	cmp	r5, #0
 8008060:	f47f af34 	bne.w	8007ecc <_dtoa_r+0x8a4>
 8008064:	e736      	b.n	8007ed4 <_dtoa_r+0x8ac>
 8008066:	f000 8142 	beq.w	80082ee <_dtoa_r+0xcc6>
 800806a:	9b06      	ldr	r3, [sp, #24]
 800806c:	425c      	negs	r4, r3
 800806e:	4ba4      	ldr	r3, [pc, #656]	; (8008300 <_dtoa_r+0xcd8>)
 8008070:	f004 020f 	and.w	r2, r4, #15
 8008074:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8008078:	e9d3 2300 	ldrd	r2, r3, [r3]
 800807c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8008080:	f7f8 fa7a 	bl	8000578 <__aeabi_dmul>
 8008084:	1124      	asrs	r4, r4, #4
 8008086:	e9cd 0100 	strd	r0, r1, [sp]
 800808a:	f000 81c6 	beq.w	800841a <_dtoa_r+0xdf2>
 800808e:	4d9d      	ldr	r5, [pc, #628]	; (8008304 <_dtoa_r+0xcdc>)
 8008090:	2300      	movs	r3, #0
 8008092:	2602      	movs	r6, #2
 8008094:	07e7      	lsls	r7, r4, #31
 8008096:	d505      	bpl.n	80080a4 <_dtoa_r+0xa7c>
 8008098:	e9d5 2300 	ldrd	r2, r3, [r5]
 800809c:	f7f8 fa6c 	bl	8000578 <__aeabi_dmul>
 80080a0:	3601      	adds	r6, #1
 80080a2:	2301      	movs	r3, #1
 80080a4:	1064      	asrs	r4, r4, #1
 80080a6:	f105 0508 	add.w	r5, r5, #8
 80080aa:	d1f3      	bne.n	8008094 <_dtoa_r+0xa6c>
 80080ac:	2b00      	cmp	r3, #0
 80080ae:	f43f ac27 	beq.w	8007900 <_dtoa_r+0x2d8>
 80080b2:	e9cd 0100 	strd	r0, r1, [sp]
 80080b6:	e423      	b.n	8007900 <_dtoa_r+0x2d8>
 80080b8:	9b00      	ldr	r3, [sp, #0]
 80080ba:	2b00      	cmp	r3, #0
 80080bc:	f43f af6e 	beq.w	8007f9c <_dtoa_r+0x974>
 80080c0:	e726      	b.n	8007f10 <_dtoa_r+0x8e8>
 80080c2:	6869      	ldr	r1, [r5, #4]
 80080c4:	4648      	mov	r0, r9
 80080c6:	f001 f9a5 	bl	8009414 <_Balloc>
 80080ca:	692b      	ldr	r3, [r5, #16]
 80080cc:	3302      	adds	r3, #2
 80080ce:	009a      	lsls	r2, r3, #2
 80080d0:	4604      	mov	r4, r0
 80080d2:	f105 010c 	add.w	r1, r5, #12
 80080d6:	300c      	adds	r0, #12
 80080d8:	f7f8 fef4 	bl	8000ec4 <memcpy>
 80080dc:	4621      	mov	r1, r4
 80080de:	2201      	movs	r2, #1
 80080e0:	4648      	mov	r0, r9
 80080e2:	f001 fb57 	bl	8009794 <__lshift>
 80080e6:	4680      	mov	r8, r0
 80080e8:	e61f      	b.n	8007d2a <_dtoa_r+0x702>
 80080ea:	2400      	movs	r4, #0
 80080ec:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80080f0:	4621      	mov	r1, r4
 80080f2:	4648      	mov	r0, r9
 80080f4:	f001 f98e 	bl	8009414 <_Balloc>
 80080f8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80080fc:	930e      	str	r3, [sp, #56]	; 0x38
 80080fe:	9309      	str	r3, [sp, #36]	; 0x24
 8008100:	2301      	movs	r3, #1
 8008102:	4683      	mov	fp, r0
 8008104:	9407      	str	r4, [sp, #28]
 8008106:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800810a:	930a      	str	r3, [sp, #40]	; 0x28
 800810c:	e4b6      	b.n	8007a7c <_dtoa_r+0x454>
 800810e:	f001 f9b1 	bl	8009474 <__multadd>
 8008112:	4627      	mov	r7, r4
 8008114:	4605      	mov	r5, r0
 8008116:	4680      	mov	r8, r0
 8008118:	e614      	b.n	8007d44 <_dtoa_r+0x71c>
 800811a:	4648      	mov	r0, r9
 800811c:	f001 f9a0 	bl	8009460 <_Bfree>
 8008120:	2301      	movs	r3, #1
 8008122:	e639      	b.n	8007d98 <_dtoa_r+0x770>
 8008124:	9b02      	ldr	r3, [sp, #8]
 8008126:	2b02      	cmp	r3, #2
 8008128:	f77f adf3 	ble.w	8007d12 <_dtoa_r+0x6ea>
 800812c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800812e:	2b00      	cmp	r3, #0
 8008130:	f000 80cf 	beq.w	80082d2 <_dtoa_r+0xcaa>
 8008134:	9b07      	ldr	r3, [sp, #28]
 8008136:	43db      	mvns	r3, r3
 8008138:	9306      	str	r3, [sp, #24]
 800813a:	465c      	mov	r4, fp
 800813c:	e78b      	b.n	8008056 <_dtoa_r+0xa2e>
 800813e:	9a06      	ldr	r2, [sp, #24]
 8008140:	2331      	movs	r3, #49	; 0x31
 8008142:	3201      	adds	r2, #1
 8008144:	9206      	str	r2, [sp, #24]
 8008146:	f88b 3000 	strb.w	r3, [fp]
 800814a:	e6b3      	b.n	8007eb4 <_dtoa_r+0x88c>
 800814c:	2401      	movs	r4, #1
 800814e:	9409      	str	r4, [sp, #36]	; 0x24
 8008150:	9407      	str	r4, [sp, #28]
 8008152:	f7ff bb8b 	b.w	800786c <_dtoa_r+0x244>
 8008156:	4630      	mov	r0, r6
 8008158:	f7f8 f9a4 	bl	80004a4 <__aeabi_i2d>
 800815c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008160:	f7f8 fa0a 	bl	8000578 <__aeabi_dmul>
 8008164:	2200      	movs	r2, #0
 8008166:	4b68      	ldr	r3, [pc, #416]	; (8008308 <_dtoa_r+0xce0>)
 8008168:	f7f8 f850 	bl	800020c <__adddf3>
 800816c:	4606      	mov	r6, r0
 800816e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008172:	2200      	movs	r2, #0
 8008174:	4b61      	ldr	r3, [pc, #388]	; (80082fc <_dtoa_r+0xcd4>)
 8008176:	e9dd 0100 	ldrd	r0, r1, [sp]
 800817a:	f7f8 f845 	bl	8000208 <__aeabi_dsub>
 800817e:	4632      	mov	r2, r6
 8008180:	463b      	mov	r3, r7
 8008182:	4604      	mov	r4, r0
 8008184:	460d      	mov	r5, r1
 8008186:	f7f8 fc87 	bl	8000a98 <__aeabi_dcmpgt>
 800818a:	2800      	cmp	r0, #0
 800818c:	d14f      	bne.n	800822e <_dtoa_r+0xc06>
 800818e:	4632      	mov	r2, r6
 8008190:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8008194:	4620      	mov	r0, r4
 8008196:	4629      	mov	r1, r5
 8008198:	f7f8 fc60 	bl	8000a5c <__aeabi_dcmplt>
 800819c:	2800      	cmp	r0, #0
 800819e:	f43f ac69 	beq.w	8007a74 <_dtoa_r+0x44c>
 80081a2:	2600      	movs	r6, #0
 80081a4:	4635      	mov	r5, r6
 80081a6:	e7c5      	b.n	8008134 <_dtoa_r+0xb0c>
 80081a8:	2301      	movs	r3, #1
 80081aa:	930a      	str	r3, [sp, #40]	; 0x28
 80081ac:	e6c8      	b.n	8007f40 <_dtoa_r+0x918>
 80081ae:	4651      	mov	r1, sl
 80081b0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80081b2:	4648      	mov	r0, r9
 80081b4:	f001 fa9e 	bl	80096f4 <__pow5mult>
 80081b8:	4682      	mov	sl, r0
 80081ba:	e572      	b.n	8007ca2 <_dtoa_r+0x67a>
 80081bc:	f8dd a000 	ldr.w	sl, [sp]
 80081c0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80081c4:	e686      	b.n	8007ed4 <_dtoa_r+0x8ac>
 80081c6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80081c8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80081ca:	1afb      	subs	r3, r7, r3
 80081cc:	441a      	add	r2, r3
 80081ce:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80081d2:	2700      	movs	r7, #0
 80081d4:	e512      	b.n	8007bfc <_dtoa_r+0x5d4>
 80081d6:	2b00      	cmp	r3, #0
 80081d8:	9402      	str	r4, [sp, #8]
 80081da:	465e      	mov	r6, fp
 80081dc:	f107 0401 	add.w	r4, r7, #1
 80081e0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80081e4:	f300 80ba 	bgt.w	800835c <_dtoa_r+0xd34>
 80081e8:	9b00      	ldr	r3, [sp, #0]
 80081ea:	9502      	str	r5, [sp, #8]
 80081ec:	703b      	strb	r3, [r7, #0]
 80081ee:	4645      	mov	r5, r8
 80081f0:	e660      	b.n	8007eb4 <_dtoa_r+0x88c>
 80081f2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80081f6:	2602      	movs	r6, #2
 80081f8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80081fc:	f7ff bb67 	b.w	80078ce <_dtoa_r+0x2a6>
 8008200:	9b00      	ldr	r3, [sp, #0]
 8008202:	2b39      	cmp	r3, #57	; 0x39
 8008204:	465e      	mov	r6, fp
 8008206:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800820a:	f000 80b9 	beq.w	8008380 <_dtoa_r+0xd58>
 800820e:	9b00      	ldr	r3, [sp, #0]
 8008210:	9502      	str	r5, [sp, #8]
 8008212:	3301      	adds	r3, #1
 8008214:	703b      	strb	r3, [r7, #0]
 8008216:	4645      	mov	r5, r8
 8008218:	e64c      	b.n	8007eb4 <_dtoa_r+0x88c>
 800821a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800821e:	1a9c      	subs	r4, r3, r2
 8008220:	e4f5      	b.n	8007c0e <_dtoa_r+0x5e6>
 8008222:	465e      	mov	r6, fp
 8008224:	9502      	str	r5, [sp, #8]
 8008226:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800822a:	4645      	mov	r5, r8
 800822c:	e61a      	b.n	8007e64 <_dtoa_r+0x83c>
 800822e:	2600      	movs	r6, #0
 8008230:	4635      	mov	r5, r6
 8008232:	e708      	b.n	8008046 <_dtoa_r+0xa1e>
 8008234:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8008238:	e9dd 0100 	ldrd	r0, r1, [sp]
 800823c:	f7f8 f99c 	bl	8000578 <__aeabi_dmul>
 8008240:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8008242:	f88b 5000 	strb.w	r5, [fp]
 8008246:	2b01      	cmp	r3, #1
 8008248:	e9cd 0100 	strd	r0, r1, [sp]
 800824c:	d020      	beq.n	8008290 <_dtoa_r+0xc68>
 800824e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8008250:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8008254:	445b      	add	r3, fp
 8008256:	4698      	mov	r8, r3
 8008258:	2200      	movs	r2, #0
 800825a:	4b2c      	ldr	r3, [pc, #176]	; (800830c <_dtoa_r+0xce4>)
 800825c:	4630      	mov	r0, r6
 800825e:	4639      	mov	r1, r7
 8008260:	f7f8 f98a 	bl	8000578 <__aeabi_dmul>
 8008264:	460f      	mov	r7, r1
 8008266:	4606      	mov	r6, r0
 8008268:	f7f8 fc36 	bl	8000ad8 <__aeabi_d2iz>
 800826c:	4605      	mov	r5, r0
 800826e:	f7f8 f919 	bl	80004a4 <__aeabi_i2d>
 8008272:	3530      	adds	r5, #48	; 0x30
 8008274:	4602      	mov	r2, r0
 8008276:	460b      	mov	r3, r1
 8008278:	4630      	mov	r0, r6
 800827a:	4639      	mov	r1, r7
 800827c:	f7f7 ffc4 	bl	8000208 <__aeabi_dsub>
 8008280:	f804 5b01 	strb.w	r5, [r4], #1
 8008284:	4544      	cmp	r4, r8
 8008286:	4606      	mov	r6, r0
 8008288:	460f      	mov	r7, r1
 800828a:	d1e5      	bne.n	8008258 <_dtoa_r+0xc30>
 800828c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8008290:	4b1f      	ldr	r3, [pc, #124]	; (8008310 <_dtoa_r+0xce8>)
 8008292:	2200      	movs	r2, #0
 8008294:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008298:	f7f7 ffb8 	bl	800020c <__adddf3>
 800829c:	4632      	mov	r2, r6
 800829e:	463b      	mov	r3, r7
 80082a0:	f7f8 fbdc 	bl	8000a5c <__aeabi_dcmplt>
 80082a4:	2800      	cmp	r0, #0
 80082a6:	d070      	beq.n	800838a <_dtoa_r+0xd62>
 80082a8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80082aa:	9306      	str	r3, [sp, #24]
 80082ac:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80082b0:	e48f      	b.n	8007bd2 <_dtoa_r+0x5aa>
 80082b2:	2330      	movs	r3, #48	; 0x30
 80082b4:	f88b 3000 	strb.w	r3, [fp]
 80082b8:	9b06      	ldr	r3, [sp, #24]
 80082ba:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80082be:	3301      	adds	r3, #1
 80082c0:	9306      	str	r3, [sp, #24]
 80082c2:	465b      	mov	r3, fp
 80082c4:	e489      	b.n	8007bda <_dtoa_r+0x5b2>
 80082c6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80082c8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80082cc:	e6a0      	b.n	8008010 <_dtoa_r+0x9e8>
 80082ce:	2300      	movs	r3, #0
 80082d0:	e676      	b.n	8007fc0 <_dtoa_r+0x998>
 80082d2:	4631      	mov	r1, r6
 80082d4:	2205      	movs	r2, #5
 80082d6:	4648      	mov	r0, r9
 80082d8:	f001 f8cc 	bl	8009474 <__multadd>
 80082dc:	4601      	mov	r1, r0
 80082de:	4606      	mov	r6, r0
 80082e0:	4650      	mov	r0, sl
 80082e2:	f001 faad 	bl	8009840 <__mcmp>
 80082e6:	2800      	cmp	r0, #0
 80082e8:	f73f aead 	bgt.w	8008046 <_dtoa_r+0xa1e>
 80082ec:	e722      	b.n	8008134 <_dtoa_r+0xb0c>
 80082ee:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80082f2:	2602      	movs	r6, #2
 80082f4:	ed8d 7b00 	vstr	d7, [sp]
 80082f8:	f7ff bb02 	b.w	8007900 <_dtoa_r+0x2d8>
 80082fc:	40140000 	.word	0x40140000
 8008300:	0800a8f8 	.word	0x0800a8f8
 8008304:	0800a8d0 	.word	0x0800a8d0
 8008308:	401c0000 	.word	0x401c0000
 800830c:	40240000 	.word	0x40240000
 8008310:	3fe00000 	.word	0x3fe00000
 8008314:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008316:	2b00      	cmp	r3, #0
 8008318:	f43f af1d 	beq.w	8008156 <_dtoa_r+0xb2e>
 800831c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800831e:	2c00      	cmp	r4, #0
 8008320:	f77f aba8 	ble.w	8007a74 <_dtoa_r+0x44c>
 8008324:	2200      	movs	r2, #0
 8008326:	4b45      	ldr	r3, [pc, #276]	; (800843c <_dtoa_r+0xe14>)
 8008328:	e9dd 0100 	ldrd	r0, r1, [sp]
 800832c:	f7f8 f924 	bl	8000578 <__aeabi_dmul>
 8008330:	e9cd 0100 	strd	r0, r1, [sp]
 8008334:	1c70      	adds	r0, r6, #1
 8008336:	f7f8 f8b5 	bl	80004a4 <__aeabi_i2d>
 800833a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800833e:	f7f8 f91b 	bl	8000578 <__aeabi_dmul>
 8008342:	4b3f      	ldr	r3, [pc, #252]	; (8008440 <_dtoa_r+0xe18>)
 8008344:	2200      	movs	r2, #0
 8008346:	f7f7 ff61 	bl	800020c <__adddf3>
 800834a:	9b06      	ldr	r3, [sp, #24]
 800834c:	9412      	str	r4, [sp, #72]	; 0x48
 800834e:	3b01      	subs	r3, #1
 8008350:	4606      	mov	r6, r0
 8008352:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008356:	9316      	str	r3, [sp, #88]	; 0x58
 8008358:	f7ff baf3 	b.w	8007942 <_dtoa_r+0x31a>
 800835c:	4651      	mov	r1, sl
 800835e:	2201      	movs	r2, #1
 8008360:	4648      	mov	r0, r9
 8008362:	f001 fa17 	bl	8009794 <__lshift>
 8008366:	4631      	mov	r1, r6
 8008368:	4682      	mov	sl, r0
 800836a:	f001 fa69 	bl	8009840 <__mcmp>
 800836e:	2800      	cmp	r0, #0
 8008370:	dd3b      	ble.n	80083ea <_dtoa_r+0xdc2>
 8008372:	9b00      	ldr	r3, [sp, #0]
 8008374:	2b39      	cmp	r3, #57	; 0x39
 8008376:	d003      	beq.n	8008380 <_dtoa_r+0xd58>
 8008378:	9b02      	ldr	r3, [sp, #8]
 800837a:	3331      	adds	r3, #49	; 0x31
 800837c:	9300      	str	r3, [sp, #0]
 800837e:	e733      	b.n	80081e8 <_dtoa_r+0xbc0>
 8008380:	2239      	movs	r2, #57	; 0x39
 8008382:	9502      	str	r5, [sp, #8]
 8008384:	703a      	strb	r2, [r7, #0]
 8008386:	4645      	mov	r5, r8
 8008388:	e58e      	b.n	8007ea8 <_dtoa_r+0x880>
 800838a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800838e:	2000      	movs	r0, #0
 8008390:	492c      	ldr	r1, [pc, #176]	; (8008444 <_dtoa_r+0xe1c>)
 8008392:	f7f7 ff39 	bl	8000208 <__aeabi_dsub>
 8008396:	4632      	mov	r2, r6
 8008398:	463b      	mov	r3, r7
 800839a:	f7f8 fb7d 	bl	8000a98 <__aeabi_dcmpgt>
 800839e:	b910      	cbnz	r0, 80083a6 <_dtoa_r+0xd7e>
 80083a0:	f7ff bb68 	b.w	8007a74 <_dtoa_r+0x44c>
 80083a4:	4614      	mov	r4, r2
 80083a6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80083aa:	2b30      	cmp	r3, #48	; 0x30
 80083ac:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80083b0:	d0f8      	beq.n	80083a4 <_dtoa_r+0xd7c>
 80083b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80083b4:	9306      	str	r3, [sp, #24]
 80083b6:	e58d      	b.n	8007ed4 <_dtoa_r+0x8ac>
 80083b8:	46d9      	mov	r9, fp
 80083ba:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80083be:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80083c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80083c4:	9306      	str	r3, [sp, #24]
 80083c6:	e404      	b.n	8007bd2 <_dtoa_r+0x5aa>
 80083c8:	9b00      	ldr	r3, [sp, #0]
 80083ca:	2b39      	cmp	r3, #57	; 0x39
 80083cc:	4621      	mov	r1, r4
 80083ce:	4632      	mov	r2, r6
 80083d0:	f107 0401 	add.w	r4, r7, #1
 80083d4:	465e      	mov	r6, fp
 80083d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80083da:	d0d1      	beq.n	8008380 <_dtoa_r+0xd58>
 80083dc:	2a00      	cmp	r2, #0
 80083de:	f77f af03 	ble.w	80081e8 <_dtoa_r+0xbc0>
 80083e2:	460b      	mov	r3, r1
 80083e4:	3331      	adds	r3, #49	; 0x31
 80083e6:	9300      	str	r3, [sp, #0]
 80083e8:	e6fe      	b.n	80081e8 <_dtoa_r+0xbc0>
 80083ea:	f47f aefd 	bne.w	80081e8 <_dtoa_r+0xbc0>
 80083ee:	9b00      	ldr	r3, [sp, #0]
 80083f0:	07da      	lsls	r2, r3, #31
 80083f2:	f57f aef9 	bpl.w	80081e8 <_dtoa_r+0xbc0>
 80083f6:	e7bc      	b.n	8008372 <_dtoa_r+0xd4a>
 80083f8:	4629      	mov	r1, r5
 80083fa:	2300      	movs	r3, #0
 80083fc:	220a      	movs	r2, #10
 80083fe:	4648      	mov	r0, r9
 8008400:	f001 f838 	bl	8009474 <__multadd>
 8008404:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008406:	2b00      	cmp	r3, #0
 8008408:	4605      	mov	r5, r0
 800840a:	dd09      	ble.n	8008420 <_dtoa_r+0xdf8>
 800840c:	9309      	str	r3, [sp, #36]	; 0x24
 800840e:	e484      	b.n	8007d1a <_dtoa_r+0x6f2>
 8008410:	9b02      	ldr	r3, [sp, #8]
 8008412:	2b02      	cmp	r3, #2
 8008414:	dc0e      	bgt.n	8008434 <_dtoa_r+0xe0c>
 8008416:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008418:	e507      	b.n	8007e2a <_dtoa_r+0x802>
 800841a:	2602      	movs	r6, #2
 800841c:	f7ff ba70 	b.w	8007900 <_dtoa_r+0x2d8>
 8008420:	9b02      	ldr	r3, [sp, #8]
 8008422:	2b02      	cmp	r3, #2
 8008424:	dc06      	bgt.n	8008434 <_dtoa_r+0xe0c>
 8008426:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008428:	e7f0      	b.n	800840c <_dtoa_r+0xde4>
 800842a:	f43f ac59 	beq.w	8007ce0 <_dtoa_r+0x6b8>
 800842e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8008432:	e450      	b.n	8007cd6 <_dtoa_r+0x6ae>
 8008434:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008436:	9309      	str	r3, [sp, #36]	; 0x24
 8008438:	e678      	b.n	800812c <_dtoa_r+0xb04>
 800843a:	bf00      	nop
 800843c:	40240000 	.word	0x40240000
 8008440:	401c0000 	.word	0x401c0000
 8008444:	3fe00000 	.word	0x3fe00000

08008448 <__sflush_r>:
 8008448:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800844c:	b29a      	uxth	r2, r3
 800844e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008452:	460c      	mov	r4, r1
 8008454:	0711      	lsls	r1, r2, #28
 8008456:	4680      	mov	r8, r0
 8008458:	d444      	bmi.n	80084e4 <__sflush_r+0x9c>
 800845a:	6862      	ldr	r2, [r4, #4]
 800845c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8008460:	2a00      	cmp	r2, #0
 8008462:	81a3      	strh	r3, [r4, #12]
 8008464:	dd59      	ble.n	800851a <__sflush_r+0xd2>
 8008466:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8008468:	2d00      	cmp	r5, #0
 800846a:	d053      	beq.n	8008514 <__sflush_r+0xcc>
 800846c:	2200      	movs	r2, #0
 800846e:	b29b      	uxth	r3, r3
 8008470:	f8d8 6000 	ldr.w	r6, [r8]
 8008474:	69e1      	ldr	r1, [r4, #28]
 8008476:	f8c8 2000 	str.w	r2, [r8]
 800847a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800847e:	f040 8083 	bne.w	8008588 <__sflush_r+0x140>
 8008482:	2301      	movs	r3, #1
 8008484:	4640      	mov	r0, r8
 8008486:	47a8      	blx	r5
 8008488:	1c42      	adds	r2, r0, #1
 800848a:	d04a      	beq.n	8008522 <__sflush_r+0xda>
 800848c:	89a3      	ldrh	r3, [r4, #12]
 800848e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8008490:	69e1      	ldr	r1, [r4, #28]
 8008492:	075b      	lsls	r3, r3, #29
 8008494:	d505      	bpl.n	80084a2 <__sflush_r+0x5a>
 8008496:	6862      	ldr	r2, [r4, #4]
 8008498:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800849a:	1a80      	subs	r0, r0, r2
 800849c:	b10b      	cbz	r3, 80084a2 <__sflush_r+0x5a>
 800849e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80084a0:	1ac0      	subs	r0, r0, r3
 80084a2:	4602      	mov	r2, r0
 80084a4:	2300      	movs	r3, #0
 80084a6:	4640      	mov	r0, r8
 80084a8:	47a8      	blx	r5
 80084aa:	1c47      	adds	r7, r0, #1
 80084ac:	d045      	beq.n	800853a <__sflush_r+0xf2>
 80084ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80084b2:	6922      	ldr	r2, [r4, #16]
 80084b4:	6022      	str	r2, [r4, #0]
 80084b6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80084ba:	2200      	movs	r2, #0
 80084bc:	81a3      	strh	r3, [r4, #12]
 80084be:	04db      	lsls	r3, r3, #19
 80084c0:	6062      	str	r2, [r4, #4]
 80084c2:	d500      	bpl.n	80084c6 <__sflush_r+0x7e>
 80084c4:	6520      	str	r0, [r4, #80]	; 0x50
 80084c6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80084c8:	f8c8 6000 	str.w	r6, [r8]
 80084cc:	b311      	cbz	r1, 8008514 <__sflush_r+0xcc>
 80084ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80084d2:	4299      	cmp	r1, r3
 80084d4:	d002      	beq.n	80084dc <__sflush_r+0x94>
 80084d6:	4640      	mov	r0, r8
 80084d8:	f000 f95e 	bl	8008798 <_free_r>
 80084dc:	2000      	movs	r0, #0
 80084de:	6320      	str	r0, [r4, #48]	; 0x30
 80084e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80084e4:	6926      	ldr	r6, [r4, #16]
 80084e6:	b1ae      	cbz	r6, 8008514 <__sflush_r+0xcc>
 80084e8:	6825      	ldr	r5, [r4, #0]
 80084ea:	6026      	str	r6, [r4, #0]
 80084ec:	0792      	lsls	r2, r2, #30
 80084ee:	bf0c      	ite	eq
 80084f0:	6963      	ldreq	r3, [r4, #20]
 80084f2:	2300      	movne	r3, #0
 80084f4:	1bad      	subs	r5, r5, r6
 80084f6:	60a3      	str	r3, [r4, #8]
 80084f8:	e00a      	b.n	8008510 <__sflush_r+0xc8>
 80084fa:	462b      	mov	r3, r5
 80084fc:	4632      	mov	r2, r6
 80084fe:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008500:	69e1      	ldr	r1, [r4, #28]
 8008502:	4640      	mov	r0, r8
 8008504:	47b8      	blx	r7
 8008506:	2800      	cmp	r0, #0
 8008508:	eba5 0500 	sub.w	r5, r5, r0
 800850c:	4406      	add	r6, r0
 800850e:	dd2b      	ble.n	8008568 <__sflush_r+0x120>
 8008510:	2d00      	cmp	r5, #0
 8008512:	dcf2      	bgt.n	80084fa <__sflush_r+0xb2>
 8008514:	2000      	movs	r0, #0
 8008516:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800851a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800851c:	2a00      	cmp	r2, #0
 800851e:	dca2      	bgt.n	8008466 <__sflush_r+0x1e>
 8008520:	e7f8      	b.n	8008514 <__sflush_r+0xcc>
 8008522:	f8d8 3000 	ldr.w	r3, [r8]
 8008526:	2b00      	cmp	r3, #0
 8008528:	d0b0      	beq.n	800848c <__sflush_r+0x44>
 800852a:	2b1d      	cmp	r3, #29
 800852c:	d001      	beq.n	8008532 <__sflush_r+0xea>
 800852e:	2b16      	cmp	r3, #22
 8008530:	d12c      	bne.n	800858c <__sflush_r+0x144>
 8008532:	f8c8 6000 	str.w	r6, [r8]
 8008536:	2000      	movs	r0, #0
 8008538:	e7ed      	b.n	8008516 <__sflush_r+0xce>
 800853a:	f8d8 1000 	ldr.w	r1, [r8]
 800853e:	291d      	cmp	r1, #29
 8008540:	d81a      	bhi.n	8008578 <__sflush_r+0x130>
 8008542:	4b15      	ldr	r3, [pc, #84]	; (8008598 <__sflush_r+0x150>)
 8008544:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008548:	40cb      	lsrs	r3, r1
 800854a:	43db      	mvns	r3, r3
 800854c:	f013 0301 	ands.w	r3, r3, #1
 8008550:	d114      	bne.n	800857c <__sflush_r+0x134>
 8008552:	6925      	ldr	r5, [r4, #16]
 8008554:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8008558:	e9c4 5300 	strd	r5, r3, [r4]
 800855c:	04d5      	lsls	r5, r2, #19
 800855e:	81a2      	strh	r2, [r4, #12]
 8008560:	d5b1      	bpl.n	80084c6 <__sflush_r+0x7e>
 8008562:	2900      	cmp	r1, #0
 8008564:	d1af      	bne.n	80084c6 <__sflush_r+0x7e>
 8008566:	e7ad      	b.n	80084c4 <__sflush_r+0x7c>
 8008568:	89a3      	ldrh	r3, [r4, #12]
 800856a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800856e:	81a3      	strh	r3, [r4, #12]
 8008570:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008574:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008578:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800857c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8008580:	81a2      	strh	r2, [r4, #12]
 8008582:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008586:	e7c6      	b.n	8008516 <__sflush_r+0xce>
 8008588:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800858a:	e782      	b.n	8008492 <__sflush_r+0x4a>
 800858c:	89a3      	ldrh	r3, [r4, #12]
 800858e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008592:	81a3      	strh	r3, [r4, #12]
 8008594:	e7bf      	b.n	8008516 <__sflush_r+0xce>
 8008596:	bf00      	nop
 8008598:	20400001 	.word	0x20400001

0800859c <_fflush_r>:
 800859c:	b538      	push	{r3, r4, r5, lr}
 800859e:	460d      	mov	r5, r1
 80085a0:	4604      	mov	r4, r0
 80085a2:	b108      	cbz	r0, 80085a8 <_fflush_r+0xc>
 80085a4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80085a6:	b1a3      	cbz	r3, 80085d2 <_fflush_r+0x36>
 80085a8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80085ac:	b1b8      	cbz	r0, 80085de <_fflush_r+0x42>
 80085ae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80085b0:	07db      	lsls	r3, r3, #31
 80085b2:	d401      	bmi.n	80085b8 <_fflush_r+0x1c>
 80085b4:	0581      	lsls	r1, r0, #22
 80085b6:	d51a      	bpl.n	80085ee <_fflush_r+0x52>
 80085b8:	4620      	mov	r0, r4
 80085ba:	4629      	mov	r1, r5
 80085bc:	f7ff ff44 	bl	8008448 <__sflush_r>
 80085c0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80085c2:	07da      	lsls	r2, r3, #31
 80085c4:	4604      	mov	r4, r0
 80085c6:	d402      	bmi.n	80085ce <_fflush_r+0x32>
 80085c8:	89ab      	ldrh	r3, [r5, #12]
 80085ca:	059b      	lsls	r3, r3, #22
 80085cc:	d50a      	bpl.n	80085e4 <_fflush_r+0x48>
 80085ce:	4620      	mov	r0, r4
 80085d0:	bd38      	pop	{r3, r4, r5, pc}
 80085d2:	f000 f83f 	bl	8008654 <__sinit>
 80085d6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80085da:	2800      	cmp	r0, #0
 80085dc:	d1e7      	bne.n	80085ae <_fflush_r+0x12>
 80085de:	4604      	mov	r4, r0
 80085e0:	4620      	mov	r0, r4
 80085e2:	bd38      	pop	{r3, r4, r5, pc}
 80085e4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80085e6:	f000 fb87 	bl	8008cf8 <__retarget_lock_release_recursive>
 80085ea:	4620      	mov	r0, r4
 80085ec:	bd38      	pop	{r3, r4, r5, pc}
 80085ee:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80085f0:	f000 fb80 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 80085f4:	e7e0      	b.n	80085b8 <_fflush_r+0x1c>
 80085f6:	bf00      	nop

080085f8 <std>:
 80085f8:	b510      	push	{r4, lr}
 80085fa:	2300      	movs	r3, #0
 80085fc:	4604      	mov	r4, r0
 80085fe:	8181      	strh	r1, [r0, #12]
 8008600:	81c2      	strh	r2, [r0, #14]
 8008602:	e9c0 3300 	strd	r3, r3, [r0]
 8008606:	6083      	str	r3, [r0, #8]
 8008608:	6643      	str	r3, [r0, #100]	; 0x64
 800860a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800860e:	6183      	str	r3, [r0, #24]
 8008610:	4619      	mov	r1, r3
 8008612:	2208      	movs	r2, #8
 8008614:	305c      	adds	r0, #92	; 0x5c
 8008616:	f7fd f8c9 	bl	80057ac <memset>
 800861a:	4807      	ldr	r0, [pc, #28]	; (8008638 <std+0x40>)
 800861c:	4907      	ldr	r1, [pc, #28]	; (800863c <std+0x44>)
 800861e:	4a08      	ldr	r2, [pc, #32]	; (8008640 <std+0x48>)
 8008620:	4b08      	ldr	r3, [pc, #32]	; (8008644 <std+0x4c>)
 8008622:	62e3      	str	r3, [r4, #44]	; 0x2c
 8008624:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8008628:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800862c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8008630:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008634:	f000 bb5a 	b.w	8008cec <__retarget_lock_init_recursive>
 8008638:	08009e11 	.word	0x08009e11
 800863c:	08009e35 	.word	0x08009e35
 8008640:	08009e71 	.word	0x08009e71
 8008644:	08009e91 	.word	0x08009e91

08008648 <_cleanup_r>:
 8008648:	4901      	ldr	r1, [pc, #4]	; (8008650 <_cleanup_r+0x8>)
 800864a:	f000 bb17 	b.w	8008c7c <_fwalk_reent>
 800864e:	bf00      	nop
 8008650:	0800a101 	.word	0x0800a101

08008654 <__sinit>:
 8008654:	b510      	push	{r4, lr}
 8008656:	4604      	mov	r4, r0
 8008658:	4812      	ldr	r0, [pc, #72]	; (80086a4 <__sinit+0x50>)
 800865a:	f000 fb4b 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 800865e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8008660:	b9d2      	cbnz	r2, 8008698 <__sinit+0x44>
 8008662:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8008666:	4810      	ldr	r0, [pc, #64]	; (80086a8 <__sinit+0x54>)
 8008668:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800866c:	2103      	movs	r1, #3
 800866e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8008672:	63e0      	str	r0, [r4, #60]	; 0x3c
 8008674:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8008678:	6860      	ldr	r0, [r4, #4]
 800867a:	2104      	movs	r1, #4
 800867c:	f7ff ffbc 	bl	80085f8 <std>
 8008680:	2201      	movs	r2, #1
 8008682:	2109      	movs	r1, #9
 8008684:	68a0      	ldr	r0, [r4, #8]
 8008686:	f7ff ffb7 	bl	80085f8 <std>
 800868a:	2202      	movs	r2, #2
 800868c:	2112      	movs	r1, #18
 800868e:	68e0      	ldr	r0, [r4, #12]
 8008690:	f7ff ffb2 	bl	80085f8 <std>
 8008694:	2301      	movs	r3, #1
 8008696:	63a3      	str	r3, [r4, #56]	; 0x38
 8008698:	4802      	ldr	r0, [pc, #8]	; (80086a4 <__sinit+0x50>)
 800869a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800869e:	f000 bb2b 	b.w	8008cf8 <__retarget_lock_release_recursive>
 80086a2:	bf00      	nop
 80086a4:	20000af4 	.word	0x20000af4
 80086a8:	08008649 	.word	0x08008649

080086ac <__sfp_lock_acquire>:
 80086ac:	4801      	ldr	r0, [pc, #4]	; (80086b4 <__sfp_lock_acquire+0x8>)
 80086ae:	f000 bb21 	b.w	8008cf4 <__retarget_lock_acquire_recursive>
 80086b2:	bf00      	nop
 80086b4:	20000b08 	.word	0x20000b08

080086b8 <__sfp_lock_release>:
 80086b8:	4801      	ldr	r0, [pc, #4]	; (80086c0 <__sfp_lock_release+0x8>)
 80086ba:	f000 bb1d 	b.w	8008cf8 <__retarget_lock_release_recursive>
 80086be:	bf00      	nop
 80086c0:	20000b08 	.word	0x20000b08

080086c4 <__libc_fini_array>:
 80086c4:	b538      	push	{r3, r4, r5, lr}
 80086c6:	4c0a      	ldr	r4, [pc, #40]	; (80086f0 <__libc_fini_array+0x2c>)
 80086c8:	4d0a      	ldr	r5, [pc, #40]	; (80086f4 <__libc_fini_array+0x30>)
 80086ca:	1b64      	subs	r4, r4, r5
 80086cc:	10a4      	asrs	r4, r4, #2
 80086ce:	d00a      	beq.n	80086e6 <__libc_fini_array+0x22>
 80086d0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80086d4:	3b01      	subs	r3, #1
 80086d6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80086da:	3c01      	subs	r4, #1
 80086dc:	f855 3904 	ldr.w	r3, [r5], #-4
 80086e0:	4798      	blx	r3
 80086e2:	2c00      	cmp	r4, #0
 80086e4:	d1f9      	bne.n	80086da <__libc_fini_array+0x16>
 80086e6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80086ea:	f001 befd 	b.w	800a4e8 <_fini>
 80086ee:	bf00      	nop
 80086f0:	0800aaf4 	.word	0x0800aaf4
 80086f4:	0800aaf0 	.word	0x0800aaf0

080086f8 <_malloc_trim_r>:
 80086f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80086fa:	4f24      	ldr	r7, [pc, #144]	; (800878c <_malloc_trim_r+0x94>)
 80086fc:	460c      	mov	r4, r1
 80086fe:	4606      	mov	r6, r0
 8008700:	f000 fe7c 	bl	80093fc <__malloc_lock>
 8008704:	68bb      	ldr	r3, [r7, #8]
 8008706:	685d      	ldr	r5, [r3, #4]
 8008708:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800870c:	310f      	adds	r1, #15
 800870e:	f025 0503 	bic.w	r5, r5, #3
 8008712:	4429      	add	r1, r5
 8008714:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8008718:	f021 010f 	bic.w	r1, r1, #15
 800871c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8008720:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8008724:	db07      	blt.n	8008736 <_malloc_trim_r+0x3e>
 8008726:	2100      	movs	r1, #0
 8008728:	4630      	mov	r0, r6
 800872a:	f001 fb5f 	bl	8009dec <_sbrk_r>
 800872e:	68bb      	ldr	r3, [r7, #8]
 8008730:	442b      	add	r3, r5
 8008732:	4298      	cmp	r0, r3
 8008734:	d004      	beq.n	8008740 <_malloc_trim_r+0x48>
 8008736:	4630      	mov	r0, r6
 8008738:	f000 fe66 	bl	8009408 <__malloc_unlock>
 800873c:	2000      	movs	r0, #0
 800873e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008740:	4261      	negs	r1, r4
 8008742:	4630      	mov	r0, r6
 8008744:	f001 fb52 	bl	8009dec <_sbrk_r>
 8008748:	3001      	adds	r0, #1
 800874a:	d00d      	beq.n	8008768 <_malloc_trim_r+0x70>
 800874c:	4b10      	ldr	r3, [pc, #64]	; (8008790 <_malloc_trim_r+0x98>)
 800874e:	68ba      	ldr	r2, [r7, #8]
 8008750:	6819      	ldr	r1, [r3, #0]
 8008752:	1b2d      	subs	r5, r5, r4
 8008754:	f045 0501 	orr.w	r5, r5, #1
 8008758:	4630      	mov	r0, r6
 800875a:	1b09      	subs	r1, r1, r4
 800875c:	6055      	str	r5, [r2, #4]
 800875e:	6019      	str	r1, [r3, #0]
 8008760:	f000 fe52 	bl	8009408 <__malloc_unlock>
 8008764:	2001      	movs	r0, #1
 8008766:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008768:	2100      	movs	r1, #0
 800876a:	4630      	mov	r0, r6
 800876c:	f001 fb3e 	bl	8009dec <_sbrk_r>
 8008770:	68ba      	ldr	r2, [r7, #8]
 8008772:	1a83      	subs	r3, r0, r2
 8008774:	2b0f      	cmp	r3, #15
 8008776:	ddde      	ble.n	8008736 <_malloc_trim_r+0x3e>
 8008778:	4c06      	ldr	r4, [pc, #24]	; (8008794 <_malloc_trim_r+0x9c>)
 800877a:	4905      	ldr	r1, [pc, #20]	; (8008790 <_malloc_trim_r+0x98>)
 800877c:	6824      	ldr	r4, [r4, #0]
 800877e:	f043 0301 	orr.w	r3, r3, #1
 8008782:	1b00      	subs	r0, r0, r4
 8008784:	6053      	str	r3, [r2, #4]
 8008786:	6008      	str	r0, [r1, #0]
 8008788:	e7d5      	b.n	8008736 <_malloc_trim_r+0x3e>
 800878a:	bf00      	nop
 800878c:	2000044c 	.word	0x2000044c
 8008790:	20000a6c 	.word	0x20000a6c
 8008794:	20000854 	.word	0x20000854

08008798 <_free_r>:
 8008798:	2900      	cmp	r1, #0
 800879a:	d053      	beq.n	8008844 <_free_r+0xac>
 800879c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800879e:	460c      	mov	r4, r1
 80087a0:	4606      	mov	r6, r0
 80087a2:	f000 fe2b 	bl	80093fc <__malloc_lock>
 80087a6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80087aa:	4f71      	ldr	r7, [pc, #452]	; (8008970 <_free_r+0x1d8>)
 80087ac:	f02c 0101 	bic.w	r1, ip, #1
 80087b0:	f1a4 0508 	sub.w	r5, r4, #8
 80087b4:	186b      	adds	r3, r5, r1
 80087b6:	68b8      	ldr	r0, [r7, #8]
 80087b8:	685a      	ldr	r2, [r3, #4]
 80087ba:	4298      	cmp	r0, r3
 80087bc:	f022 0203 	bic.w	r2, r2, #3
 80087c0:	d053      	beq.n	800886a <_free_r+0xd2>
 80087c2:	f01c 0f01 	tst.w	ip, #1
 80087c6:	605a      	str	r2, [r3, #4]
 80087c8:	eb03 0002 	add.w	r0, r3, r2
 80087cc:	d13b      	bne.n	8008846 <_free_r+0xae>
 80087ce:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80087d2:	6840      	ldr	r0, [r0, #4]
 80087d4:	eba5 050c 	sub.w	r5, r5, ip
 80087d8:	f107 0e08 	add.w	lr, r7, #8
 80087dc:	68ac      	ldr	r4, [r5, #8]
 80087de:	4574      	cmp	r4, lr
 80087e0:	4461      	add	r1, ip
 80087e2:	f000 0001 	and.w	r0, r0, #1
 80087e6:	d075      	beq.n	80088d4 <_free_r+0x13c>
 80087e8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80087ec:	f8c4 c00c 	str.w	ip, [r4, #12]
 80087f0:	f8cc 4008 	str.w	r4, [ip, #8]
 80087f4:	b360      	cbz	r0, 8008850 <_free_r+0xb8>
 80087f6:	f041 0301 	orr.w	r3, r1, #1
 80087fa:	606b      	str	r3, [r5, #4]
 80087fc:	5069      	str	r1, [r5, r1]
 80087fe:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8008802:	d350      	bcc.n	80088a6 <_free_r+0x10e>
 8008804:	0a4b      	lsrs	r3, r1, #9
 8008806:	2b04      	cmp	r3, #4
 8008808:	d870      	bhi.n	80088ec <_free_r+0x154>
 800880a:	098b      	lsrs	r3, r1, #6
 800880c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8008810:	00e4      	lsls	r4, r4, #3
 8008812:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8008816:	1938      	adds	r0, r7, r4
 8008818:	593b      	ldr	r3, [r7, r4]
 800881a:	3808      	subs	r0, #8
 800881c:	4298      	cmp	r0, r3
 800881e:	d078      	beq.n	8008912 <_free_r+0x17a>
 8008820:	685a      	ldr	r2, [r3, #4]
 8008822:	f022 0203 	bic.w	r2, r2, #3
 8008826:	428a      	cmp	r2, r1
 8008828:	d971      	bls.n	800890e <_free_r+0x176>
 800882a:	689b      	ldr	r3, [r3, #8]
 800882c:	4298      	cmp	r0, r3
 800882e:	d1f7      	bne.n	8008820 <_free_r+0x88>
 8008830:	68c3      	ldr	r3, [r0, #12]
 8008832:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8008836:	609d      	str	r5, [r3, #8]
 8008838:	60c5      	str	r5, [r0, #12]
 800883a:	4630      	mov	r0, r6
 800883c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008840:	f000 bde2 	b.w	8009408 <__malloc_unlock>
 8008844:	4770      	bx	lr
 8008846:	6840      	ldr	r0, [r0, #4]
 8008848:	f000 0001 	and.w	r0, r0, #1
 800884c:	2800      	cmp	r0, #0
 800884e:	d1d2      	bne.n	80087f6 <_free_r+0x5e>
 8008850:	6898      	ldr	r0, [r3, #8]
 8008852:	4c48      	ldr	r4, [pc, #288]	; (8008974 <_free_r+0x1dc>)
 8008854:	4411      	add	r1, r2
 8008856:	42a0      	cmp	r0, r4
 8008858:	f041 0201 	orr.w	r2, r1, #1
 800885c:	d062      	beq.n	8008924 <_free_r+0x18c>
 800885e:	68db      	ldr	r3, [r3, #12]
 8008860:	60c3      	str	r3, [r0, #12]
 8008862:	6098      	str	r0, [r3, #8]
 8008864:	606a      	str	r2, [r5, #4]
 8008866:	5069      	str	r1, [r5, r1]
 8008868:	e7c9      	b.n	80087fe <_free_r+0x66>
 800886a:	f01c 0f01 	tst.w	ip, #1
 800886e:	440a      	add	r2, r1
 8008870:	d107      	bne.n	8008882 <_free_r+0xea>
 8008872:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8008876:	1aed      	subs	r5, r5, r3
 8008878:	441a      	add	r2, r3
 800887a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800887e:	60cb      	str	r3, [r1, #12]
 8008880:	6099      	str	r1, [r3, #8]
 8008882:	4b3d      	ldr	r3, [pc, #244]	; (8008978 <_free_r+0x1e0>)
 8008884:	681b      	ldr	r3, [r3, #0]
 8008886:	f042 0101 	orr.w	r1, r2, #1
 800888a:	4293      	cmp	r3, r2
 800888c:	6069      	str	r1, [r5, #4]
 800888e:	60bd      	str	r5, [r7, #8]
 8008890:	d804      	bhi.n	800889c <_free_r+0x104>
 8008892:	4b3a      	ldr	r3, [pc, #232]	; (800897c <_free_r+0x1e4>)
 8008894:	4630      	mov	r0, r6
 8008896:	6819      	ldr	r1, [r3, #0]
 8008898:	f7ff ff2e 	bl	80086f8 <_malloc_trim_r>
 800889c:	4630      	mov	r0, r6
 800889e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80088a2:	f000 bdb1 	b.w	8009408 <__malloc_unlock>
 80088a6:	08c9      	lsrs	r1, r1, #3
 80088a8:	6878      	ldr	r0, [r7, #4]
 80088aa:	1c4a      	adds	r2, r1, #1
 80088ac:	2301      	movs	r3, #1
 80088ae:	1089      	asrs	r1, r1, #2
 80088b0:	408b      	lsls	r3, r1
 80088b2:	4303      	orrs	r3, r0
 80088b4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80088b8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80088bc:	607b      	str	r3, [r7, #4]
 80088be:	3908      	subs	r1, #8
 80088c0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80088c4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80088c8:	60c5      	str	r5, [r0, #12]
 80088ca:	4630      	mov	r0, r6
 80088cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80088d0:	f000 bd9a 	b.w	8009408 <__malloc_unlock>
 80088d4:	2800      	cmp	r0, #0
 80088d6:	d145      	bne.n	8008964 <_free_r+0x1cc>
 80088d8:	440a      	add	r2, r1
 80088da:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80088de:	f042 0001 	orr.w	r0, r2, #1
 80088e2:	60cb      	str	r3, [r1, #12]
 80088e4:	6099      	str	r1, [r3, #8]
 80088e6:	6068      	str	r0, [r5, #4]
 80088e8:	50aa      	str	r2, [r5, r2]
 80088ea:	e7d7      	b.n	800889c <_free_r+0x104>
 80088ec:	2b14      	cmp	r3, #20
 80088ee:	d908      	bls.n	8008902 <_free_r+0x16a>
 80088f0:	2b54      	cmp	r3, #84	; 0x54
 80088f2:	d81e      	bhi.n	8008932 <_free_r+0x19a>
 80088f4:	0b0b      	lsrs	r3, r1, #12
 80088f6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80088fa:	00e4      	lsls	r4, r4, #3
 80088fc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8008900:	e789      	b.n	8008816 <_free_r+0x7e>
 8008902:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8008906:	00e4      	lsls	r4, r4, #3
 8008908:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800890c:	e783      	b.n	8008816 <_free_r+0x7e>
 800890e:	4618      	mov	r0, r3
 8008910:	e78e      	b.n	8008830 <_free_r+0x98>
 8008912:	1093      	asrs	r3, r2, #2
 8008914:	6879      	ldr	r1, [r7, #4]
 8008916:	2201      	movs	r2, #1
 8008918:	fa02 f303 	lsl.w	r3, r2, r3
 800891c:	430b      	orrs	r3, r1
 800891e:	607b      	str	r3, [r7, #4]
 8008920:	4603      	mov	r3, r0
 8008922:	e786      	b.n	8008832 <_free_r+0x9a>
 8008924:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008928:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800892c:	606a      	str	r2, [r5, #4]
 800892e:	5069      	str	r1, [r5, r1]
 8008930:	e7b4      	b.n	800889c <_free_r+0x104>
 8008932:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008936:	d806      	bhi.n	8008946 <_free_r+0x1ae>
 8008938:	0bcb      	lsrs	r3, r1, #15
 800893a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800893e:	00e4      	lsls	r4, r4, #3
 8008940:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8008944:	e767      	b.n	8008816 <_free_r+0x7e>
 8008946:	f240 5254 	movw	r2, #1364	; 0x554
 800894a:	4293      	cmp	r3, r2
 800894c:	d806      	bhi.n	800895c <_free_r+0x1c4>
 800894e:	0c8b      	lsrs	r3, r1, #18
 8008950:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8008954:	00e4      	lsls	r4, r4, #3
 8008956:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800895a:	e75c      	b.n	8008816 <_free_r+0x7e>
 800895c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008960:	227e      	movs	r2, #126	; 0x7e
 8008962:	e758      	b.n	8008816 <_free_r+0x7e>
 8008964:	f041 0201 	orr.w	r2, r1, #1
 8008968:	606a      	str	r2, [r5, #4]
 800896a:	6019      	str	r1, [r3, #0]
 800896c:	e796      	b.n	800889c <_free_r+0x104>
 800896e:	bf00      	nop
 8008970:	2000044c 	.word	0x2000044c
 8008974:	20000454 	.word	0x20000454
 8008978:	20000858 	.word	0x20000858
 800897c:	20000a9c 	.word	0x20000a9c

08008980 <__sfvwrite_r>:
 8008980:	6893      	ldr	r3, [r2, #8]
 8008982:	2b00      	cmp	r3, #0
 8008984:	f000 80e4 	beq.w	8008b50 <__sfvwrite_r+0x1d0>
 8008988:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800898c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008990:	b29b      	uxth	r3, r3
 8008992:	460c      	mov	r4, r1
 8008994:	0719      	lsls	r1, r3, #28
 8008996:	b083      	sub	sp, #12
 8008998:	4682      	mov	sl, r0
 800899a:	4690      	mov	r8, r2
 800899c:	d535      	bpl.n	8008a0a <__sfvwrite_r+0x8a>
 800899e:	6922      	ldr	r2, [r4, #16]
 80089a0:	b39a      	cbz	r2, 8008a0a <__sfvwrite_r+0x8a>
 80089a2:	f013 0202 	ands.w	r2, r3, #2
 80089a6:	f8d8 6000 	ldr.w	r6, [r8]
 80089aa:	d03d      	beq.n	8008a28 <__sfvwrite_r+0xa8>
 80089ac:	2700      	movs	r7, #0
 80089ae:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80089b2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80089b6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008c78 <__sfvwrite_r+0x2f8>
 80089ba:	463d      	mov	r5, r7
 80089bc:	454d      	cmp	r5, r9
 80089be:	462b      	mov	r3, r5
 80089c0:	463a      	mov	r2, r7
 80089c2:	bf28      	it	cs
 80089c4:	464b      	movcs	r3, r9
 80089c6:	4661      	mov	r1, ip
 80089c8:	4650      	mov	r0, sl
 80089ca:	b1d5      	cbz	r5, 8008a02 <__sfvwrite_r+0x82>
 80089cc:	47d8      	blx	fp
 80089ce:	2800      	cmp	r0, #0
 80089d0:	f340 80c6 	ble.w	8008b60 <__sfvwrite_r+0x1e0>
 80089d4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80089d8:	1a1b      	subs	r3, r3, r0
 80089da:	4407      	add	r7, r0
 80089dc:	1a2d      	subs	r5, r5, r0
 80089de:	f8c8 3008 	str.w	r3, [r8, #8]
 80089e2:	2b00      	cmp	r3, #0
 80089e4:	f000 80b0 	beq.w	8008b48 <__sfvwrite_r+0x1c8>
 80089e8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80089ec:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80089f0:	454d      	cmp	r5, r9
 80089f2:	462b      	mov	r3, r5
 80089f4:	463a      	mov	r2, r7
 80089f6:	bf28      	it	cs
 80089f8:	464b      	movcs	r3, r9
 80089fa:	4661      	mov	r1, ip
 80089fc:	4650      	mov	r0, sl
 80089fe:	2d00      	cmp	r5, #0
 8008a00:	d1e4      	bne.n	80089cc <__sfvwrite_r+0x4c>
 8008a02:	e9d6 7500 	ldrd	r7, r5, [r6]
 8008a06:	3608      	adds	r6, #8
 8008a08:	e7d8      	b.n	80089bc <__sfvwrite_r+0x3c>
 8008a0a:	4621      	mov	r1, r4
 8008a0c:	4650      	mov	r0, sl
 8008a0e:	f7fe fd03 	bl	8007418 <__swsetup_r>
 8008a12:	2800      	cmp	r0, #0
 8008a14:	f040 812a 	bne.w	8008c6c <__sfvwrite_r+0x2ec>
 8008a18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008a1c:	f8d8 6000 	ldr.w	r6, [r8]
 8008a20:	b29b      	uxth	r3, r3
 8008a22:	f013 0202 	ands.w	r2, r3, #2
 8008a26:	d1c1      	bne.n	80089ac <__sfvwrite_r+0x2c>
 8008a28:	f013 0901 	ands.w	r9, r3, #1
 8008a2c:	d15d      	bne.n	8008aea <__sfvwrite_r+0x16a>
 8008a2e:	68a7      	ldr	r7, [r4, #8]
 8008a30:	6820      	ldr	r0, [r4, #0]
 8008a32:	464d      	mov	r5, r9
 8008a34:	2d00      	cmp	r5, #0
 8008a36:	d054      	beq.n	8008ae2 <__sfvwrite_r+0x162>
 8008a38:	059a      	lsls	r2, r3, #22
 8008a3a:	f140 809b 	bpl.w	8008b74 <__sfvwrite_r+0x1f4>
 8008a3e:	42af      	cmp	r7, r5
 8008a40:	46bb      	mov	fp, r7
 8008a42:	f200 80d8 	bhi.w	8008bf6 <__sfvwrite_r+0x276>
 8008a46:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8008a4a:	d02f      	beq.n	8008aac <__sfvwrite_r+0x12c>
 8008a4c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008a50:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008a54:	eba0 0b01 	sub.w	fp, r0, r1
 8008a58:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008a5c:	1c68      	adds	r0, r5, #1
 8008a5e:	107f      	asrs	r7, r7, #1
 8008a60:	4458      	add	r0, fp
 8008a62:	42b8      	cmp	r0, r7
 8008a64:	463a      	mov	r2, r7
 8008a66:	bf84      	itt	hi
 8008a68:	4607      	movhi	r7, r0
 8008a6a:	463a      	movhi	r2, r7
 8008a6c:	055b      	lsls	r3, r3, #21
 8008a6e:	f140 80d3 	bpl.w	8008c18 <__sfvwrite_r+0x298>
 8008a72:	4611      	mov	r1, r2
 8008a74:	4650      	mov	r0, sl
 8008a76:	f000 f9b9 	bl	8008dec <_malloc_r>
 8008a7a:	2800      	cmp	r0, #0
 8008a7c:	f000 80f0 	beq.w	8008c60 <__sfvwrite_r+0x2e0>
 8008a80:	465a      	mov	r2, fp
 8008a82:	6921      	ldr	r1, [r4, #16]
 8008a84:	9001      	str	r0, [sp, #4]
 8008a86:	f7f8 fa1d 	bl	8000ec4 <memcpy>
 8008a8a:	89a2      	ldrh	r2, [r4, #12]
 8008a8c:	9b01      	ldr	r3, [sp, #4]
 8008a8e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008a92:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008a96:	81a2      	strh	r2, [r4, #12]
 8008a98:	eba7 020b 	sub.w	r2, r7, fp
 8008a9c:	eb03 000b 	add.w	r0, r3, fp
 8008aa0:	6167      	str	r7, [r4, #20]
 8008aa2:	6123      	str	r3, [r4, #16]
 8008aa4:	6020      	str	r0, [r4, #0]
 8008aa6:	60a2      	str	r2, [r4, #8]
 8008aa8:	462f      	mov	r7, r5
 8008aaa:	46ab      	mov	fp, r5
 8008aac:	465a      	mov	r2, fp
 8008aae:	4649      	mov	r1, r9
 8008ab0:	f000 fc40 	bl	8009334 <memmove>
 8008ab4:	68a2      	ldr	r2, [r4, #8]
 8008ab6:	6823      	ldr	r3, [r4, #0]
 8008ab8:	1bd2      	subs	r2, r2, r7
 8008aba:	445b      	add	r3, fp
 8008abc:	462f      	mov	r7, r5
 8008abe:	60a2      	str	r2, [r4, #8]
 8008ac0:	6023      	str	r3, [r4, #0]
 8008ac2:	2500      	movs	r5, #0
 8008ac4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008ac8:	1bdb      	subs	r3, r3, r7
 8008aca:	44b9      	add	r9, r7
 8008acc:	f8c8 3008 	str.w	r3, [r8, #8]
 8008ad0:	2b00      	cmp	r3, #0
 8008ad2:	d039      	beq.n	8008b48 <__sfvwrite_r+0x1c8>
 8008ad4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008ad8:	68a7      	ldr	r7, [r4, #8]
 8008ada:	6820      	ldr	r0, [r4, #0]
 8008adc:	b29b      	uxth	r3, r3
 8008ade:	2d00      	cmp	r5, #0
 8008ae0:	d1aa      	bne.n	8008a38 <__sfvwrite_r+0xb8>
 8008ae2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8008ae6:	3608      	adds	r6, #8
 8008ae8:	e7a4      	b.n	8008a34 <__sfvwrite_r+0xb4>
 8008aea:	4633      	mov	r3, r6
 8008aec:	4691      	mov	r9, r2
 8008aee:	4610      	mov	r0, r2
 8008af0:	4617      	mov	r7, r2
 8008af2:	464e      	mov	r6, r9
 8008af4:	469b      	mov	fp, r3
 8008af6:	2f00      	cmp	r7, #0
 8008af8:	d06b      	beq.n	8008bd2 <__sfvwrite_r+0x252>
 8008afa:	2800      	cmp	r0, #0
 8008afc:	d071      	beq.n	8008be2 <__sfvwrite_r+0x262>
 8008afe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8008b02:	6820      	ldr	r0, [r4, #0]
 8008b04:	45b9      	cmp	r9, r7
 8008b06:	464b      	mov	r3, r9
 8008b08:	bf28      	it	cs
 8008b0a:	463b      	movcs	r3, r7
 8008b0c:	4288      	cmp	r0, r1
 8008b0e:	d903      	bls.n	8008b18 <__sfvwrite_r+0x198>
 8008b10:	68a5      	ldr	r5, [r4, #8]
 8008b12:	4415      	add	r5, r2
 8008b14:	42ab      	cmp	r3, r5
 8008b16:	dc71      	bgt.n	8008bfc <__sfvwrite_r+0x27c>
 8008b18:	429a      	cmp	r2, r3
 8008b1a:	f300 8093 	bgt.w	8008c44 <__sfvwrite_r+0x2c4>
 8008b1e:	4613      	mov	r3, r2
 8008b20:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008b22:	69e1      	ldr	r1, [r4, #28]
 8008b24:	4632      	mov	r2, r6
 8008b26:	4650      	mov	r0, sl
 8008b28:	47a8      	blx	r5
 8008b2a:	1e05      	subs	r5, r0, #0
 8008b2c:	dd18      	ble.n	8008b60 <__sfvwrite_r+0x1e0>
 8008b2e:	ebb9 0905 	subs.w	r9, r9, r5
 8008b32:	d00f      	beq.n	8008b54 <__sfvwrite_r+0x1d4>
 8008b34:	2001      	movs	r0, #1
 8008b36:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008b3a:	1b5b      	subs	r3, r3, r5
 8008b3c:	442e      	add	r6, r5
 8008b3e:	1b7f      	subs	r7, r7, r5
 8008b40:	f8c8 3008 	str.w	r3, [r8, #8]
 8008b44:	2b00      	cmp	r3, #0
 8008b46:	d1d6      	bne.n	8008af6 <__sfvwrite_r+0x176>
 8008b48:	2000      	movs	r0, #0
 8008b4a:	b003      	add	sp, #12
 8008b4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008b50:	2000      	movs	r0, #0
 8008b52:	4770      	bx	lr
 8008b54:	4621      	mov	r1, r4
 8008b56:	4650      	mov	r0, sl
 8008b58:	f7ff fd20 	bl	800859c <_fflush_r>
 8008b5c:	2800      	cmp	r0, #0
 8008b5e:	d0ea      	beq.n	8008b36 <__sfvwrite_r+0x1b6>
 8008b60:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008b64:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008b68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008b6c:	81a3      	strh	r3, [r4, #12]
 8008b6e:	b003      	add	sp, #12
 8008b70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008b74:	6923      	ldr	r3, [r4, #16]
 8008b76:	4283      	cmp	r3, r0
 8008b78:	d315      	bcc.n	8008ba6 <__sfvwrite_r+0x226>
 8008b7a:	6961      	ldr	r1, [r4, #20]
 8008b7c:	42a9      	cmp	r1, r5
 8008b7e:	d812      	bhi.n	8008ba6 <__sfvwrite_r+0x226>
 8008b80:	4b3c      	ldr	r3, [pc, #240]	; (8008c74 <__sfvwrite_r+0x2f4>)
 8008b82:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008b84:	429d      	cmp	r5, r3
 8008b86:	bf94      	ite	ls
 8008b88:	462b      	movls	r3, r5
 8008b8a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008b8e:	464a      	mov	r2, r9
 8008b90:	fb93 f3f1 	sdiv	r3, r3, r1
 8008b94:	4650      	mov	r0, sl
 8008b96:	fb01 f303 	mul.w	r3, r1, r3
 8008b9a:	69e1      	ldr	r1, [r4, #28]
 8008b9c:	47b8      	blx	r7
 8008b9e:	1e07      	subs	r7, r0, #0
 8008ba0:	ddde      	ble.n	8008b60 <__sfvwrite_r+0x1e0>
 8008ba2:	1bed      	subs	r5, r5, r7
 8008ba4:	e78e      	b.n	8008ac4 <__sfvwrite_r+0x144>
 8008ba6:	42af      	cmp	r7, r5
 8008ba8:	bf28      	it	cs
 8008baa:	462f      	movcs	r7, r5
 8008bac:	463a      	mov	r2, r7
 8008bae:	4649      	mov	r1, r9
 8008bb0:	f000 fbc0 	bl	8009334 <memmove>
 8008bb4:	68a3      	ldr	r3, [r4, #8]
 8008bb6:	6822      	ldr	r2, [r4, #0]
 8008bb8:	1bdb      	subs	r3, r3, r7
 8008bba:	443a      	add	r2, r7
 8008bbc:	60a3      	str	r3, [r4, #8]
 8008bbe:	6022      	str	r2, [r4, #0]
 8008bc0:	2b00      	cmp	r3, #0
 8008bc2:	d1ee      	bne.n	8008ba2 <__sfvwrite_r+0x222>
 8008bc4:	4621      	mov	r1, r4
 8008bc6:	4650      	mov	r0, sl
 8008bc8:	f7ff fce8 	bl	800859c <_fflush_r>
 8008bcc:	2800      	cmp	r0, #0
 8008bce:	d0e8      	beq.n	8008ba2 <__sfvwrite_r+0x222>
 8008bd0:	e7c6      	b.n	8008b60 <__sfvwrite_r+0x1e0>
 8008bd2:	f10b 0308 	add.w	r3, fp, #8
 8008bd6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8008bda:	469b      	mov	fp, r3
 8008bdc:	3308      	adds	r3, #8
 8008bde:	2f00      	cmp	r7, #0
 8008be0:	d0f9      	beq.n	8008bd6 <__sfvwrite_r+0x256>
 8008be2:	463a      	mov	r2, r7
 8008be4:	210a      	movs	r1, #10
 8008be6:	4630      	mov	r0, r6
 8008be8:	f7f8 fa7a 	bl	80010e0 <memchr>
 8008bec:	b338      	cbz	r0, 8008c3e <__sfvwrite_r+0x2be>
 8008bee:	3001      	adds	r0, #1
 8008bf0:	eba0 0906 	sub.w	r9, r0, r6
 8008bf4:	e783      	b.n	8008afe <__sfvwrite_r+0x17e>
 8008bf6:	462f      	mov	r7, r5
 8008bf8:	46ab      	mov	fp, r5
 8008bfa:	e757      	b.n	8008aac <__sfvwrite_r+0x12c>
 8008bfc:	4631      	mov	r1, r6
 8008bfe:	462a      	mov	r2, r5
 8008c00:	f000 fb98 	bl	8009334 <memmove>
 8008c04:	6823      	ldr	r3, [r4, #0]
 8008c06:	442b      	add	r3, r5
 8008c08:	6023      	str	r3, [r4, #0]
 8008c0a:	4621      	mov	r1, r4
 8008c0c:	4650      	mov	r0, sl
 8008c0e:	f7ff fcc5 	bl	800859c <_fflush_r>
 8008c12:	2800      	cmp	r0, #0
 8008c14:	d08b      	beq.n	8008b2e <__sfvwrite_r+0x1ae>
 8008c16:	e7a3      	b.n	8008b60 <__sfvwrite_r+0x1e0>
 8008c18:	4650      	mov	r0, sl
 8008c1a:	f000 ff05 	bl	8009a28 <_realloc_r>
 8008c1e:	4603      	mov	r3, r0
 8008c20:	2800      	cmp	r0, #0
 8008c22:	f47f af39 	bne.w	8008a98 <__sfvwrite_r+0x118>
 8008c26:	6921      	ldr	r1, [r4, #16]
 8008c28:	4650      	mov	r0, sl
 8008c2a:	f7ff fdb5 	bl	8008798 <_free_r>
 8008c2e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008c32:	220c      	movs	r2, #12
 8008c34:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008c38:	f8ca 2000 	str.w	r2, [sl]
 8008c3c:	e792      	b.n	8008b64 <__sfvwrite_r+0x1e4>
 8008c3e:	f107 0901 	add.w	r9, r7, #1
 8008c42:	e75c      	b.n	8008afe <__sfvwrite_r+0x17e>
 8008c44:	461a      	mov	r2, r3
 8008c46:	4631      	mov	r1, r6
 8008c48:	9301      	str	r3, [sp, #4]
 8008c4a:	f000 fb73 	bl	8009334 <memmove>
 8008c4e:	9b01      	ldr	r3, [sp, #4]
 8008c50:	68a1      	ldr	r1, [r4, #8]
 8008c52:	6822      	ldr	r2, [r4, #0]
 8008c54:	1ac9      	subs	r1, r1, r3
 8008c56:	441a      	add	r2, r3
 8008c58:	60a1      	str	r1, [r4, #8]
 8008c5a:	6022      	str	r2, [r4, #0]
 8008c5c:	461d      	mov	r5, r3
 8008c5e:	e766      	b.n	8008b2e <__sfvwrite_r+0x1ae>
 8008c60:	230c      	movs	r3, #12
 8008c62:	f8ca 3000 	str.w	r3, [sl]
 8008c66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008c6a:	e77b      	b.n	8008b64 <__sfvwrite_r+0x1e4>
 8008c6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008c70:	e76b      	b.n	8008b4a <__sfvwrite_r+0x1ca>
 8008c72:	bf00      	nop
 8008c74:	7ffffffe 	.word	0x7ffffffe
 8008c78:	7ffffc00 	.word	0x7ffffc00

08008c7c <_fwalk_reent>:
 8008c7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008c80:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8008c84:	d01f      	beq.n	8008cc6 <_fwalk_reent+0x4a>
 8008c86:	4688      	mov	r8, r1
 8008c88:	4606      	mov	r6, r0
 8008c8a:	f04f 0900 	mov.w	r9, #0
 8008c8e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8008c92:	3d01      	subs	r5, #1
 8008c94:	d411      	bmi.n	8008cba <_fwalk_reent+0x3e>
 8008c96:	89a3      	ldrh	r3, [r4, #12]
 8008c98:	2b01      	cmp	r3, #1
 8008c9a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008c9e:	4621      	mov	r1, r4
 8008ca0:	4630      	mov	r0, r6
 8008ca2:	d906      	bls.n	8008cb2 <_fwalk_reent+0x36>
 8008ca4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8008ca8:	3301      	adds	r3, #1
 8008caa:	d002      	beq.n	8008cb2 <_fwalk_reent+0x36>
 8008cac:	47c0      	blx	r8
 8008cae:	ea49 0900 	orr.w	r9, r9, r0
 8008cb2:	1c6b      	adds	r3, r5, #1
 8008cb4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8008cb8:	d1ed      	bne.n	8008c96 <_fwalk_reent+0x1a>
 8008cba:	683f      	ldr	r7, [r7, #0]
 8008cbc:	2f00      	cmp	r7, #0
 8008cbe:	d1e6      	bne.n	8008c8e <_fwalk_reent+0x12>
 8008cc0:	4648      	mov	r0, r9
 8008cc2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008cc6:	46b9      	mov	r9, r7
 8008cc8:	4648      	mov	r0, r9
 8008cca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008cce:	bf00      	nop

08008cd0 <_localeconv_r>:
 8008cd0:	4a04      	ldr	r2, [pc, #16]	; (8008ce4 <_localeconv_r+0x14>)
 8008cd2:	4b05      	ldr	r3, [pc, #20]	; (8008ce8 <_localeconv_r+0x18>)
 8008cd4:	6812      	ldr	r2, [r2, #0]
 8008cd6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8008cd8:	2800      	cmp	r0, #0
 8008cda:	bf08      	it	eq
 8008cdc:	4618      	moveq	r0, r3
 8008cde:	30f0      	adds	r0, #240	; 0xf0
 8008ce0:	4770      	bx	lr
 8008ce2:	bf00      	nop
 8008ce4:	2000001c 	.word	0x2000001c
 8008ce8:	2000085c 	.word	0x2000085c

08008cec <__retarget_lock_init_recursive>:
 8008cec:	4770      	bx	lr
 8008cee:	bf00      	nop

08008cf0 <__retarget_lock_close_recursive>:
 8008cf0:	4770      	bx	lr
 8008cf2:	bf00      	nop

08008cf4 <__retarget_lock_acquire_recursive>:
 8008cf4:	4770      	bx	lr
 8008cf6:	bf00      	nop

08008cf8 <__retarget_lock_release_recursive>:
 8008cf8:	4770      	bx	lr
 8008cfa:	bf00      	nop

08008cfc <__swhatbuf_r>:
 8008cfc:	b570      	push	{r4, r5, r6, lr}
 8008cfe:	460c      	mov	r4, r1
 8008d00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008d04:	2900      	cmp	r1, #0
 8008d06:	b096      	sub	sp, #88	; 0x58
 8008d08:	4615      	mov	r5, r2
 8008d0a:	461e      	mov	r6, r3
 8008d0c:	da0f      	bge.n	8008d2e <__swhatbuf_r+0x32>
 8008d0e:	89a2      	ldrh	r2, [r4, #12]
 8008d10:	2300      	movs	r3, #0
 8008d12:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8008d16:	6033      	str	r3, [r6, #0]
 8008d18:	d104      	bne.n	8008d24 <__swhatbuf_r+0x28>
 8008d1a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8008d1e:	602b      	str	r3, [r5, #0]
 8008d20:	b016      	add	sp, #88	; 0x58
 8008d22:	bd70      	pop	{r4, r5, r6, pc}
 8008d24:	2240      	movs	r2, #64	; 0x40
 8008d26:	4618      	mov	r0, r3
 8008d28:	602a      	str	r2, [r5, #0]
 8008d2a:	b016      	add	sp, #88	; 0x58
 8008d2c:	bd70      	pop	{r4, r5, r6, pc}
 8008d2e:	466a      	mov	r2, sp
 8008d30:	f001 fad0 	bl	800a2d4 <_fstat_r>
 8008d34:	2800      	cmp	r0, #0
 8008d36:	dbea      	blt.n	8008d0e <__swhatbuf_r+0x12>
 8008d38:	9b01      	ldr	r3, [sp, #4]
 8008d3a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8008d3e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8008d42:	fab3 f383 	clz	r3, r3
 8008d46:	095b      	lsrs	r3, r3, #5
 8008d48:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8008d4c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008d50:	6033      	str	r3, [r6, #0]
 8008d52:	602a      	str	r2, [r5, #0]
 8008d54:	b016      	add	sp, #88	; 0x58
 8008d56:	bd70      	pop	{r4, r5, r6, pc}

08008d58 <__smakebuf_r>:
 8008d58:	898a      	ldrh	r2, [r1, #12]
 8008d5a:	0792      	lsls	r2, r2, #30
 8008d5c:	460b      	mov	r3, r1
 8008d5e:	d506      	bpl.n	8008d6e <__smakebuf_r+0x16>
 8008d60:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8008d64:	2101      	movs	r1, #1
 8008d66:	601a      	str	r2, [r3, #0]
 8008d68:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8008d6c:	4770      	bx	lr
 8008d6e:	b570      	push	{r4, r5, r6, lr}
 8008d70:	b082      	sub	sp, #8
 8008d72:	ab01      	add	r3, sp, #4
 8008d74:	466a      	mov	r2, sp
 8008d76:	460c      	mov	r4, r1
 8008d78:	4605      	mov	r5, r0
 8008d7a:	f7ff ffbf 	bl	8008cfc <__swhatbuf_r>
 8008d7e:	9900      	ldr	r1, [sp, #0]
 8008d80:	4606      	mov	r6, r0
 8008d82:	4628      	mov	r0, r5
 8008d84:	f000 f832 	bl	8008dec <_malloc_r>
 8008d88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d8c:	b1d8      	cbz	r0, 8008dc6 <__smakebuf_r+0x6e>
 8008d8e:	4916      	ldr	r1, [pc, #88]	; (8008de8 <__smakebuf_r+0x90>)
 8008d90:	63e9      	str	r1, [r5, #60]	; 0x3c
 8008d92:	9a01      	ldr	r2, [sp, #4]
 8008d94:	9900      	ldr	r1, [sp, #0]
 8008d96:	6020      	str	r0, [r4, #0]
 8008d98:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008d9c:	81a3      	strh	r3, [r4, #12]
 8008d9e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8008da2:	b91a      	cbnz	r2, 8008dac <__smakebuf_r+0x54>
 8008da4:	4333      	orrs	r3, r6
 8008da6:	81a3      	strh	r3, [r4, #12]
 8008da8:	b002      	add	sp, #8
 8008daa:	bd70      	pop	{r4, r5, r6, pc}
 8008dac:	4628      	mov	r0, r5
 8008dae:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008db2:	f001 faa3 	bl	800a2fc <_isatty_r>
 8008db6:	b1a0      	cbz	r0, 8008de2 <__smakebuf_r+0x8a>
 8008db8:	89a3      	ldrh	r3, [r4, #12]
 8008dba:	f023 0303 	bic.w	r3, r3, #3
 8008dbe:	f043 0301 	orr.w	r3, r3, #1
 8008dc2:	b21b      	sxth	r3, r3
 8008dc4:	e7ee      	b.n	8008da4 <__smakebuf_r+0x4c>
 8008dc6:	059a      	lsls	r2, r3, #22
 8008dc8:	d4ee      	bmi.n	8008da8 <__smakebuf_r+0x50>
 8008dca:	f023 0303 	bic.w	r3, r3, #3
 8008dce:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8008dd2:	f043 0302 	orr.w	r3, r3, #2
 8008dd6:	2101      	movs	r1, #1
 8008dd8:	81a3      	strh	r3, [r4, #12]
 8008dda:	6022      	str	r2, [r4, #0]
 8008ddc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8008de0:	e7e2      	b.n	8008da8 <__smakebuf_r+0x50>
 8008de2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008de6:	e7dd      	b.n	8008da4 <__smakebuf_r+0x4c>
 8008de8:	08008649 	.word	0x08008649

08008dec <_malloc_r>:
 8008dec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008df0:	f101 050b 	add.w	r5, r1, #11
 8008df4:	2d16      	cmp	r5, #22
 8008df6:	b083      	sub	sp, #12
 8008df8:	4606      	mov	r6, r0
 8008dfa:	d823      	bhi.n	8008e44 <_malloc_r+0x58>
 8008dfc:	2910      	cmp	r1, #16
 8008dfe:	f200 80b9 	bhi.w	8008f74 <_malloc_r+0x188>
 8008e02:	f000 fafb 	bl	80093fc <__malloc_lock>
 8008e06:	2510      	movs	r5, #16
 8008e08:	2318      	movs	r3, #24
 8008e0a:	2002      	movs	r0, #2
 8008e0c:	4fc5      	ldr	r7, [pc, #788]	; (8009124 <_malloc_r+0x338>)
 8008e0e:	443b      	add	r3, r7
 8008e10:	f1a3 0208 	sub.w	r2, r3, #8
 8008e14:	685c      	ldr	r4, [r3, #4]
 8008e16:	4294      	cmp	r4, r2
 8008e18:	f000 8166 	beq.w	80090e8 <_malloc_r+0x2fc>
 8008e1c:	6863      	ldr	r3, [r4, #4]
 8008e1e:	f023 0303 	bic.w	r3, r3, #3
 8008e22:	4423      	add	r3, r4
 8008e24:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8008e28:	685a      	ldr	r2, [r3, #4]
 8008e2a:	60e9      	str	r1, [r5, #12]
 8008e2c:	f042 0201 	orr.w	r2, r2, #1
 8008e30:	608d      	str	r5, [r1, #8]
 8008e32:	4630      	mov	r0, r6
 8008e34:	605a      	str	r2, [r3, #4]
 8008e36:	f000 fae7 	bl	8009408 <__malloc_unlock>
 8008e3a:	3408      	adds	r4, #8
 8008e3c:	4620      	mov	r0, r4
 8008e3e:	b003      	add	sp, #12
 8008e40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008e44:	f035 0507 	bics.w	r5, r5, #7
 8008e48:	f100 8094 	bmi.w	8008f74 <_malloc_r+0x188>
 8008e4c:	42a9      	cmp	r1, r5
 8008e4e:	f200 8091 	bhi.w	8008f74 <_malloc_r+0x188>
 8008e52:	f000 fad3 	bl	80093fc <__malloc_lock>
 8008e56:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8008e5a:	f0c0 8183 	bcc.w	8009164 <_malloc_r+0x378>
 8008e5e:	0a6b      	lsrs	r3, r5, #9
 8008e60:	f000 808f 	beq.w	8008f82 <_malloc_r+0x196>
 8008e64:	2b04      	cmp	r3, #4
 8008e66:	f200 8146 	bhi.w	80090f6 <_malloc_r+0x30a>
 8008e6a:	09ab      	lsrs	r3, r5, #6
 8008e6c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8008e70:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8008e74:	00c3      	lsls	r3, r0, #3
 8008e76:	4fab      	ldr	r7, [pc, #684]	; (8009124 <_malloc_r+0x338>)
 8008e78:	443b      	add	r3, r7
 8008e7a:	f1a3 0108 	sub.w	r1, r3, #8
 8008e7e:	685c      	ldr	r4, [r3, #4]
 8008e80:	42a1      	cmp	r1, r4
 8008e82:	d106      	bne.n	8008e92 <_malloc_r+0xa6>
 8008e84:	e00c      	b.n	8008ea0 <_malloc_r+0xb4>
 8008e86:	2a00      	cmp	r2, #0
 8008e88:	f280 811d 	bge.w	80090c6 <_malloc_r+0x2da>
 8008e8c:	68e4      	ldr	r4, [r4, #12]
 8008e8e:	42a1      	cmp	r1, r4
 8008e90:	d006      	beq.n	8008ea0 <_malloc_r+0xb4>
 8008e92:	6863      	ldr	r3, [r4, #4]
 8008e94:	f023 0303 	bic.w	r3, r3, #3
 8008e98:	1b5a      	subs	r2, r3, r5
 8008e9a:	2a0f      	cmp	r2, #15
 8008e9c:	ddf3      	ble.n	8008e86 <_malloc_r+0x9a>
 8008e9e:	4660      	mov	r0, ip
 8008ea0:	693c      	ldr	r4, [r7, #16]
 8008ea2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8009138 <_malloc_r+0x34c>
 8008ea6:	4564      	cmp	r4, ip
 8008ea8:	d071      	beq.n	8008f8e <_malloc_r+0x1a2>
 8008eaa:	6863      	ldr	r3, [r4, #4]
 8008eac:	f023 0303 	bic.w	r3, r3, #3
 8008eb0:	1b5a      	subs	r2, r3, r5
 8008eb2:	2a0f      	cmp	r2, #15
 8008eb4:	f300 8144 	bgt.w	8009140 <_malloc_r+0x354>
 8008eb8:	2a00      	cmp	r2, #0
 8008eba:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8008ebe:	f280 8126 	bge.w	800910e <_malloc_r+0x322>
 8008ec2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8008ec6:	f080 8169 	bcs.w	800919c <_malloc_r+0x3b0>
 8008eca:	08db      	lsrs	r3, r3, #3
 8008ecc:	1c59      	adds	r1, r3, #1
 8008ece:	687a      	ldr	r2, [r7, #4]
 8008ed0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8008ed4:	f8c4 8008 	str.w	r8, [r4, #8]
 8008ed8:	f04f 0e01 	mov.w	lr, #1
 8008edc:	109b      	asrs	r3, r3, #2
 8008ede:	fa0e f303 	lsl.w	r3, lr, r3
 8008ee2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8008ee6:	4313      	orrs	r3, r2
 8008ee8:	f1ae 0208 	sub.w	r2, lr, #8
 8008eec:	60e2      	str	r2, [r4, #12]
 8008eee:	607b      	str	r3, [r7, #4]
 8008ef0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8008ef4:	f8c8 400c 	str.w	r4, [r8, #12]
 8008ef8:	1082      	asrs	r2, r0, #2
 8008efa:	2401      	movs	r4, #1
 8008efc:	4094      	lsls	r4, r2
 8008efe:	429c      	cmp	r4, r3
 8008f00:	d84b      	bhi.n	8008f9a <_malloc_r+0x1ae>
 8008f02:	421c      	tst	r4, r3
 8008f04:	d106      	bne.n	8008f14 <_malloc_r+0x128>
 8008f06:	f020 0003 	bic.w	r0, r0, #3
 8008f0a:	0064      	lsls	r4, r4, #1
 8008f0c:	421c      	tst	r4, r3
 8008f0e:	f100 0004 	add.w	r0, r0, #4
 8008f12:	d0fa      	beq.n	8008f0a <_malloc_r+0x11e>
 8008f14:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8008f18:	46ce      	mov	lr, r9
 8008f1a:	4680      	mov	r8, r0
 8008f1c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8008f20:	459e      	cmp	lr, r3
 8008f22:	d107      	bne.n	8008f34 <_malloc_r+0x148>
 8008f24:	e122      	b.n	800916c <_malloc_r+0x380>
 8008f26:	2a00      	cmp	r2, #0
 8008f28:	f280 8129 	bge.w	800917e <_malloc_r+0x392>
 8008f2c:	68db      	ldr	r3, [r3, #12]
 8008f2e:	459e      	cmp	lr, r3
 8008f30:	f000 811c 	beq.w	800916c <_malloc_r+0x380>
 8008f34:	6859      	ldr	r1, [r3, #4]
 8008f36:	f021 0103 	bic.w	r1, r1, #3
 8008f3a:	1b4a      	subs	r2, r1, r5
 8008f3c:	2a0f      	cmp	r2, #15
 8008f3e:	ddf2      	ble.n	8008f26 <_malloc_r+0x13a>
 8008f40:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8008f44:	195c      	adds	r4, r3, r5
 8008f46:	f045 0501 	orr.w	r5, r5, #1
 8008f4a:	605d      	str	r5, [r3, #4]
 8008f4c:	f042 0501 	orr.w	r5, r2, #1
 8008f50:	f8c8 e00c 	str.w	lr, [r8, #12]
 8008f54:	4630      	mov	r0, r6
 8008f56:	f8ce 8008 	str.w	r8, [lr, #8]
 8008f5a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8008f5e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8008f62:	6065      	str	r5, [r4, #4]
 8008f64:	505a      	str	r2, [r3, r1]
 8008f66:	9301      	str	r3, [sp, #4]
 8008f68:	f000 fa4e 	bl	8009408 <__malloc_unlock>
 8008f6c:	9b01      	ldr	r3, [sp, #4]
 8008f6e:	f103 0408 	add.w	r4, r3, #8
 8008f72:	e763      	b.n	8008e3c <_malloc_r+0x50>
 8008f74:	2400      	movs	r4, #0
 8008f76:	230c      	movs	r3, #12
 8008f78:	4620      	mov	r0, r4
 8008f7a:	6033      	str	r3, [r6, #0]
 8008f7c:	b003      	add	sp, #12
 8008f7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f82:	f44f 7300 	mov.w	r3, #512	; 0x200
 8008f86:	2040      	movs	r0, #64	; 0x40
 8008f88:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8008f8c:	e773      	b.n	8008e76 <_malloc_r+0x8a>
 8008f8e:	687b      	ldr	r3, [r7, #4]
 8008f90:	1082      	asrs	r2, r0, #2
 8008f92:	2401      	movs	r4, #1
 8008f94:	4094      	lsls	r4, r2
 8008f96:	429c      	cmp	r4, r3
 8008f98:	d9b3      	bls.n	8008f02 <_malloc_r+0x116>
 8008f9a:	68bc      	ldr	r4, [r7, #8]
 8008f9c:	6863      	ldr	r3, [r4, #4]
 8008f9e:	f023 0903 	bic.w	r9, r3, #3
 8008fa2:	45a9      	cmp	r9, r5
 8008fa4:	d303      	bcc.n	8008fae <_malloc_r+0x1c2>
 8008fa6:	eba9 0305 	sub.w	r3, r9, r5
 8008faa:	2b0f      	cmp	r3, #15
 8008fac:	dc7b      	bgt.n	80090a6 <_malloc_r+0x2ba>
 8008fae:	4b5e      	ldr	r3, [pc, #376]	; (8009128 <_malloc_r+0x33c>)
 8008fb0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800913c <_malloc_r+0x350>
 8008fb4:	681a      	ldr	r2, [r3, #0]
 8008fb6:	f8da 3000 	ldr.w	r3, [sl]
 8008fba:	3301      	adds	r3, #1
 8008fbc:	eb05 0802 	add.w	r8, r5, r2
 8008fc0:	f000 8148 	beq.w	8009254 <_malloc_r+0x468>
 8008fc4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8008fc8:	f108 080f 	add.w	r8, r8, #15
 8008fcc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8008fd0:	f028 080f 	bic.w	r8, r8, #15
 8008fd4:	4641      	mov	r1, r8
 8008fd6:	4630      	mov	r0, r6
 8008fd8:	f000 ff08 	bl	8009dec <_sbrk_r>
 8008fdc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8008fe0:	4683      	mov	fp, r0
 8008fe2:	f000 8104 	beq.w	80091ee <_malloc_r+0x402>
 8008fe6:	eb04 0009 	add.w	r0, r4, r9
 8008fea:	4558      	cmp	r0, fp
 8008fec:	f200 80fd 	bhi.w	80091ea <_malloc_r+0x3fe>
 8008ff0:	4a4e      	ldr	r2, [pc, #312]	; (800912c <_malloc_r+0x340>)
 8008ff2:	6813      	ldr	r3, [r2, #0]
 8008ff4:	4443      	add	r3, r8
 8008ff6:	6013      	str	r3, [r2, #0]
 8008ff8:	f000 814d 	beq.w	8009296 <_malloc_r+0x4aa>
 8008ffc:	f8da 1000 	ldr.w	r1, [sl]
 8009000:	3101      	adds	r1, #1
 8009002:	bf1b      	ittet	ne
 8009004:	ebab 0000 	subne.w	r0, fp, r0
 8009008:	181b      	addne	r3, r3, r0
 800900a:	f8ca b000 	streq.w	fp, [sl]
 800900e:	6013      	strne	r3, [r2, #0]
 8009010:	f01b 0307 	ands.w	r3, fp, #7
 8009014:	f000 8134 	beq.w	8009280 <_malloc_r+0x494>
 8009018:	f1c3 0108 	rsb	r1, r3, #8
 800901c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8009020:	448b      	add	fp, r1
 8009022:	3308      	adds	r3, #8
 8009024:	44d8      	add	r8, fp
 8009026:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800902a:	eba3 0808 	sub.w	r8, r3, r8
 800902e:	4641      	mov	r1, r8
 8009030:	4630      	mov	r0, r6
 8009032:	9201      	str	r2, [sp, #4]
 8009034:	f000 feda 	bl	8009dec <_sbrk_r>
 8009038:	1c43      	adds	r3, r0, #1
 800903a:	9a01      	ldr	r2, [sp, #4]
 800903c:	f000 8146 	beq.w	80092cc <_malloc_r+0x4e0>
 8009040:	eba0 010b 	sub.w	r1, r0, fp
 8009044:	4441      	add	r1, r8
 8009046:	f041 0101 	orr.w	r1, r1, #1
 800904a:	6813      	ldr	r3, [r2, #0]
 800904c:	f8c7 b008 	str.w	fp, [r7, #8]
 8009050:	4443      	add	r3, r8
 8009052:	42bc      	cmp	r4, r7
 8009054:	f8cb 1004 	str.w	r1, [fp, #4]
 8009058:	6013      	str	r3, [r2, #0]
 800905a:	d015      	beq.n	8009088 <_malloc_r+0x29c>
 800905c:	f1b9 0f0f 	cmp.w	r9, #15
 8009060:	f240 8130 	bls.w	80092c4 <_malloc_r+0x4d8>
 8009064:	6860      	ldr	r0, [r4, #4]
 8009066:	f1a9 010c 	sub.w	r1, r9, #12
 800906a:	f021 0107 	bic.w	r1, r1, #7
 800906e:	f000 0001 	and.w	r0, r0, #1
 8009072:	eb04 0c01 	add.w	ip, r4, r1
 8009076:	4308      	orrs	r0, r1
 8009078:	f04f 0e05 	mov.w	lr, #5
 800907c:	290f      	cmp	r1, #15
 800907e:	6060      	str	r0, [r4, #4]
 8009080:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8009084:	f200 813a 	bhi.w	80092fc <_malloc_r+0x510>
 8009088:	4a29      	ldr	r2, [pc, #164]	; (8009130 <_malloc_r+0x344>)
 800908a:	482a      	ldr	r0, [pc, #168]	; (8009134 <_malloc_r+0x348>)
 800908c:	6811      	ldr	r1, [r2, #0]
 800908e:	68bc      	ldr	r4, [r7, #8]
 8009090:	428b      	cmp	r3, r1
 8009092:	6801      	ldr	r1, [r0, #0]
 8009094:	bf88      	it	hi
 8009096:	6013      	strhi	r3, [r2, #0]
 8009098:	6862      	ldr	r2, [r4, #4]
 800909a:	428b      	cmp	r3, r1
 800909c:	f022 0203 	bic.w	r2, r2, #3
 80090a0:	bf88      	it	hi
 80090a2:	6003      	strhi	r3, [r0, #0]
 80090a4:	e0a7      	b.n	80091f6 <_malloc_r+0x40a>
 80090a6:	1962      	adds	r2, r4, r5
 80090a8:	f043 0301 	orr.w	r3, r3, #1
 80090ac:	f045 0501 	orr.w	r5, r5, #1
 80090b0:	6065      	str	r5, [r4, #4]
 80090b2:	4630      	mov	r0, r6
 80090b4:	60ba      	str	r2, [r7, #8]
 80090b6:	6053      	str	r3, [r2, #4]
 80090b8:	f000 f9a6 	bl	8009408 <__malloc_unlock>
 80090bc:	3408      	adds	r4, #8
 80090be:	4620      	mov	r0, r4
 80090c0:	b003      	add	sp, #12
 80090c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80090c6:	4423      	add	r3, r4
 80090c8:	68e1      	ldr	r1, [r4, #12]
 80090ca:	685a      	ldr	r2, [r3, #4]
 80090cc:	68a5      	ldr	r5, [r4, #8]
 80090ce:	f042 0201 	orr.w	r2, r2, #1
 80090d2:	60e9      	str	r1, [r5, #12]
 80090d4:	4630      	mov	r0, r6
 80090d6:	608d      	str	r5, [r1, #8]
 80090d8:	605a      	str	r2, [r3, #4]
 80090da:	f000 f995 	bl	8009408 <__malloc_unlock>
 80090de:	3408      	adds	r4, #8
 80090e0:	4620      	mov	r0, r4
 80090e2:	b003      	add	sp, #12
 80090e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80090e8:	68dc      	ldr	r4, [r3, #12]
 80090ea:	42a3      	cmp	r3, r4
 80090ec:	bf08      	it	eq
 80090ee:	3002      	addeq	r0, #2
 80090f0:	f43f aed6 	beq.w	8008ea0 <_malloc_r+0xb4>
 80090f4:	e692      	b.n	8008e1c <_malloc_r+0x30>
 80090f6:	2b14      	cmp	r3, #20
 80090f8:	d971      	bls.n	80091de <_malloc_r+0x3f2>
 80090fa:	2b54      	cmp	r3, #84	; 0x54
 80090fc:	f200 80ad 	bhi.w	800925a <_malloc_r+0x46e>
 8009100:	0b2b      	lsrs	r3, r5, #12
 8009102:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8009106:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800910a:	00c3      	lsls	r3, r0, #3
 800910c:	e6b3      	b.n	8008e76 <_malloc_r+0x8a>
 800910e:	4423      	add	r3, r4
 8009110:	4630      	mov	r0, r6
 8009112:	685a      	ldr	r2, [r3, #4]
 8009114:	f042 0201 	orr.w	r2, r2, #1
 8009118:	605a      	str	r2, [r3, #4]
 800911a:	3408      	adds	r4, #8
 800911c:	f000 f974 	bl	8009408 <__malloc_unlock>
 8009120:	e68c      	b.n	8008e3c <_malloc_r+0x50>
 8009122:	bf00      	nop
 8009124:	2000044c 	.word	0x2000044c
 8009128:	20000a9c 	.word	0x20000a9c
 800912c:	20000a6c 	.word	0x20000a6c
 8009130:	20000a94 	.word	0x20000a94
 8009134:	20000a98 	.word	0x20000a98
 8009138:	20000454 	.word	0x20000454
 800913c:	20000854 	.word	0x20000854
 8009140:	1961      	adds	r1, r4, r5
 8009142:	f045 0e01 	orr.w	lr, r5, #1
 8009146:	f042 0501 	orr.w	r5, r2, #1
 800914a:	f8c4 e004 	str.w	lr, [r4, #4]
 800914e:	4630      	mov	r0, r6
 8009150:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8009154:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8009158:	604d      	str	r5, [r1, #4]
 800915a:	50e2      	str	r2, [r4, r3]
 800915c:	f000 f954 	bl	8009408 <__malloc_unlock>
 8009160:	3408      	adds	r4, #8
 8009162:	e66b      	b.n	8008e3c <_malloc_r+0x50>
 8009164:	08e8      	lsrs	r0, r5, #3
 8009166:	f105 0308 	add.w	r3, r5, #8
 800916a:	e64f      	b.n	8008e0c <_malloc_r+0x20>
 800916c:	f108 0801 	add.w	r8, r8, #1
 8009170:	f018 0f03 	tst.w	r8, #3
 8009174:	f10e 0e08 	add.w	lr, lr, #8
 8009178:	f47f aed0 	bne.w	8008f1c <_malloc_r+0x130>
 800917c:	e052      	b.n	8009224 <_malloc_r+0x438>
 800917e:	4419      	add	r1, r3
 8009180:	461c      	mov	r4, r3
 8009182:	684a      	ldr	r2, [r1, #4]
 8009184:	68db      	ldr	r3, [r3, #12]
 8009186:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800918a:	f042 0201 	orr.w	r2, r2, #1
 800918e:	604a      	str	r2, [r1, #4]
 8009190:	4630      	mov	r0, r6
 8009192:	60eb      	str	r3, [r5, #12]
 8009194:	609d      	str	r5, [r3, #8]
 8009196:	f000 f937 	bl	8009408 <__malloc_unlock>
 800919a:	e64f      	b.n	8008e3c <_malloc_r+0x50>
 800919c:	0a5a      	lsrs	r2, r3, #9
 800919e:	2a04      	cmp	r2, #4
 80091a0:	d935      	bls.n	800920e <_malloc_r+0x422>
 80091a2:	2a14      	cmp	r2, #20
 80091a4:	d86f      	bhi.n	8009286 <_malloc_r+0x49a>
 80091a6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80091aa:	00c9      	lsls	r1, r1, #3
 80091ac:	325b      	adds	r2, #91	; 0x5b
 80091ae:	eb07 0e01 	add.w	lr, r7, r1
 80091b2:	5879      	ldr	r1, [r7, r1]
 80091b4:	f1ae 0e08 	sub.w	lr, lr, #8
 80091b8:	458e      	cmp	lr, r1
 80091ba:	d058      	beq.n	800926e <_malloc_r+0x482>
 80091bc:	684a      	ldr	r2, [r1, #4]
 80091be:	f022 0203 	bic.w	r2, r2, #3
 80091c2:	429a      	cmp	r2, r3
 80091c4:	d902      	bls.n	80091cc <_malloc_r+0x3e0>
 80091c6:	6889      	ldr	r1, [r1, #8]
 80091c8:	458e      	cmp	lr, r1
 80091ca:	d1f7      	bne.n	80091bc <_malloc_r+0x3d0>
 80091cc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80091d0:	687b      	ldr	r3, [r7, #4]
 80091d2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80091d6:	f8ce 4008 	str.w	r4, [lr, #8]
 80091da:	60cc      	str	r4, [r1, #12]
 80091dc:	e68c      	b.n	8008ef8 <_malloc_r+0x10c>
 80091de:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80091e2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80091e6:	00c3      	lsls	r3, r0, #3
 80091e8:	e645      	b.n	8008e76 <_malloc_r+0x8a>
 80091ea:	42bc      	cmp	r4, r7
 80091ec:	d072      	beq.n	80092d4 <_malloc_r+0x4e8>
 80091ee:	68bc      	ldr	r4, [r7, #8]
 80091f0:	6862      	ldr	r2, [r4, #4]
 80091f2:	f022 0203 	bic.w	r2, r2, #3
 80091f6:	4295      	cmp	r5, r2
 80091f8:	eba2 0305 	sub.w	r3, r2, r5
 80091fc:	d802      	bhi.n	8009204 <_malloc_r+0x418>
 80091fe:	2b0f      	cmp	r3, #15
 8009200:	f73f af51 	bgt.w	80090a6 <_malloc_r+0x2ba>
 8009204:	4630      	mov	r0, r6
 8009206:	f000 f8ff 	bl	8009408 <__malloc_unlock>
 800920a:	2400      	movs	r4, #0
 800920c:	e616      	b.n	8008e3c <_malloc_r+0x50>
 800920e:	099a      	lsrs	r2, r3, #6
 8009210:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8009214:	00c9      	lsls	r1, r1, #3
 8009216:	3238      	adds	r2, #56	; 0x38
 8009218:	e7c9      	b.n	80091ae <_malloc_r+0x3c2>
 800921a:	f8d9 9000 	ldr.w	r9, [r9]
 800921e:	4599      	cmp	r9, r3
 8009220:	f040 8083 	bne.w	800932a <_malloc_r+0x53e>
 8009224:	f010 0f03 	tst.w	r0, #3
 8009228:	f1a9 0308 	sub.w	r3, r9, #8
 800922c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8009230:	d1f3      	bne.n	800921a <_malloc_r+0x42e>
 8009232:	687b      	ldr	r3, [r7, #4]
 8009234:	ea23 0304 	bic.w	r3, r3, r4
 8009238:	607b      	str	r3, [r7, #4]
 800923a:	0064      	lsls	r4, r4, #1
 800923c:	429c      	cmp	r4, r3
 800923e:	f63f aeac 	bhi.w	8008f9a <_malloc_r+0x1ae>
 8009242:	b91c      	cbnz	r4, 800924c <_malloc_r+0x460>
 8009244:	e6a9      	b.n	8008f9a <_malloc_r+0x1ae>
 8009246:	0064      	lsls	r4, r4, #1
 8009248:	f108 0804 	add.w	r8, r8, #4
 800924c:	421c      	tst	r4, r3
 800924e:	d0fa      	beq.n	8009246 <_malloc_r+0x45a>
 8009250:	4640      	mov	r0, r8
 8009252:	e65f      	b.n	8008f14 <_malloc_r+0x128>
 8009254:	f108 0810 	add.w	r8, r8, #16
 8009258:	e6bc      	b.n	8008fd4 <_malloc_r+0x1e8>
 800925a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800925e:	d826      	bhi.n	80092ae <_malloc_r+0x4c2>
 8009260:	0beb      	lsrs	r3, r5, #15
 8009262:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8009266:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800926a:	00c3      	lsls	r3, r0, #3
 800926c:	e603      	b.n	8008e76 <_malloc_r+0x8a>
 800926e:	687b      	ldr	r3, [r7, #4]
 8009270:	1092      	asrs	r2, r2, #2
 8009272:	f04f 0801 	mov.w	r8, #1
 8009276:	fa08 f202 	lsl.w	r2, r8, r2
 800927a:	4313      	orrs	r3, r2
 800927c:	607b      	str	r3, [r7, #4]
 800927e:	e7a8      	b.n	80091d2 <_malloc_r+0x3e6>
 8009280:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8009284:	e6ce      	b.n	8009024 <_malloc_r+0x238>
 8009286:	2a54      	cmp	r2, #84	; 0x54
 8009288:	d829      	bhi.n	80092de <_malloc_r+0x4f2>
 800928a:	0b1a      	lsrs	r2, r3, #12
 800928c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8009290:	00c9      	lsls	r1, r1, #3
 8009292:	326e      	adds	r2, #110	; 0x6e
 8009294:	e78b      	b.n	80091ae <_malloc_r+0x3c2>
 8009296:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800929a:	2900      	cmp	r1, #0
 800929c:	f47f aeae 	bne.w	8008ffc <_malloc_r+0x210>
 80092a0:	eb09 0208 	add.w	r2, r9, r8
 80092a4:	68b9      	ldr	r1, [r7, #8]
 80092a6:	f042 0201 	orr.w	r2, r2, #1
 80092aa:	604a      	str	r2, [r1, #4]
 80092ac:	e6ec      	b.n	8009088 <_malloc_r+0x29c>
 80092ae:	f240 5254 	movw	r2, #1364	; 0x554
 80092b2:	4293      	cmp	r3, r2
 80092b4:	d81c      	bhi.n	80092f0 <_malloc_r+0x504>
 80092b6:	0cab      	lsrs	r3, r5, #18
 80092b8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80092bc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80092c0:	00c3      	lsls	r3, r0, #3
 80092c2:	e5d8      	b.n	8008e76 <_malloc_r+0x8a>
 80092c4:	2301      	movs	r3, #1
 80092c6:	f8cb 3004 	str.w	r3, [fp, #4]
 80092ca:	e79b      	b.n	8009204 <_malloc_r+0x418>
 80092cc:	2101      	movs	r1, #1
 80092ce:	f04f 0800 	mov.w	r8, #0
 80092d2:	e6ba      	b.n	800904a <_malloc_r+0x25e>
 80092d4:	4a16      	ldr	r2, [pc, #88]	; (8009330 <_malloc_r+0x544>)
 80092d6:	6813      	ldr	r3, [r2, #0]
 80092d8:	4443      	add	r3, r8
 80092da:	6013      	str	r3, [r2, #0]
 80092dc:	e68e      	b.n	8008ffc <_malloc_r+0x210>
 80092de:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80092e2:	d814      	bhi.n	800930e <_malloc_r+0x522>
 80092e4:	0bda      	lsrs	r2, r3, #15
 80092e6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80092ea:	00c9      	lsls	r1, r1, #3
 80092ec:	3277      	adds	r2, #119	; 0x77
 80092ee:	e75e      	b.n	80091ae <_malloc_r+0x3c2>
 80092f0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80092f4:	207f      	movs	r0, #127	; 0x7f
 80092f6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80092fa:	e5bc      	b.n	8008e76 <_malloc_r+0x8a>
 80092fc:	f104 0108 	add.w	r1, r4, #8
 8009300:	4630      	mov	r0, r6
 8009302:	9201      	str	r2, [sp, #4]
 8009304:	f7ff fa48 	bl	8008798 <_free_r>
 8009308:	9a01      	ldr	r2, [sp, #4]
 800930a:	6813      	ldr	r3, [r2, #0]
 800930c:	e6bc      	b.n	8009088 <_malloc_r+0x29c>
 800930e:	f240 5154 	movw	r1, #1364	; 0x554
 8009312:	428a      	cmp	r2, r1
 8009314:	d805      	bhi.n	8009322 <_malloc_r+0x536>
 8009316:	0c9a      	lsrs	r2, r3, #18
 8009318:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800931c:	00c9      	lsls	r1, r1, #3
 800931e:	327c      	adds	r2, #124	; 0x7c
 8009320:	e745      	b.n	80091ae <_malloc_r+0x3c2>
 8009322:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8009326:	227e      	movs	r2, #126	; 0x7e
 8009328:	e741      	b.n	80091ae <_malloc_r+0x3c2>
 800932a:	687b      	ldr	r3, [r7, #4]
 800932c:	e785      	b.n	800923a <_malloc_r+0x44e>
 800932e:	bf00      	nop
 8009330:	20000a6c 	.word	0x20000a6c

08009334 <memmove>:
 8009334:	4288      	cmp	r0, r1
 8009336:	b4f0      	push	{r4, r5, r6, r7}
 8009338:	d90d      	bls.n	8009356 <memmove+0x22>
 800933a:	188b      	adds	r3, r1, r2
 800933c:	4283      	cmp	r3, r0
 800933e:	d90a      	bls.n	8009356 <memmove+0x22>
 8009340:	1884      	adds	r4, r0, r2
 8009342:	b132      	cbz	r2, 8009352 <memmove+0x1e>
 8009344:	4622      	mov	r2, r4
 8009346:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800934a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800934e:	4299      	cmp	r1, r3
 8009350:	d1f9      	bne.n	8009346 <memmove+0x12>
 8009352:	bcf0      	pop	{r4, r5, r6, r7}
 8009354:	4770      	bx	lr
 8009356:	2a0f      	cmp	r2, #15
 8009358:	d949      	bls.n	80093ee <memmove+0xba>
 800935a:	ea40 0301 	orr.w	r3, r0, r1
 800935e:	079b      	lsls	r3, r3, #30
 8009360:	d147      	bne.n	80093f2 <memmove+0xbe>
 8009362:	f1a2 0310 	sub.w	r3, r2, #16
 8009366:	091b      	lsrs	r3, r3, #4
 8009368:	f101 0720 	add.w	r7, r1, #32
 800936c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8009370:	f101 0410 	add.w	r4, r1, #16
 8009374:	f100 0510 	add.w	r5, r0, #16
 8009378:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800937c:	f845 6c10 	str.w	r6, [r5, #-16]
 8009380:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8009384:	f845 6c0c 	str.w	r6, [r5, #-12]
 8009388:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800938c:	f845 6c08 	str.w	r6, [r5, #-8]
 8009390:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8009394:	f845 6c04 	str.w	r6, [r5, #-4]
 8009398:	3410      	adds	r4, #16
 800939a:	42bc      	cmp	r4, r7
 800939c:	f105 0510 	add.w	r5, r5, #16
 80093a0:	d1ea      	bne.n	8009378 <memmove+0x44>
 80093a2:	3301      	adds	r3, #1
 80093a4:	f002 050f 	and.w	r5, r2, #15
 80093a8:	011b      	lsls	r3, r3, #4
 80093aa:	2d03      	cmp	r5, #3
 80093ac:	4419      	add	r1, r3
 80093ae:	4403      	add	r3, r0
 80093b0:	d921      	bls.n	80093f6 <memmove+0xc2>
 80093b2:	1f1f      	subs	r7, r3, #4
 80093b4:	460e      	mov	r6, r1
 80093b6:	462c      	mov	r4, r5
 80093b8:	3c04      	subs	r4, #4
 80093ba:	f856 cb04 	ldr.w	ip, [r6], #4
 80093be:	f847 cf04 	str.w	ip, [r7, #4]!
 80093c2:	2c03      	cmp	r4, #3
 80093c4:	d8f8      	bhi.n	80093b8 <memmove+0x84>
 80093c6:	1f2c      	subs	r4, r5, #4
 80093c8:	f024 0403 	bic.w	r4, r4, #3
 80093cc:	3404      	adds	r4, #4
 80093ce:	4423      	add	r3, r4
 80093d0:	4421      	add	r1, r4
 80093d2:	f002 0203 	and.w	r2, r2, #3
 80093d6:	2a00      	cmp	r2, #0
 80093d8:	d0bb      	beq.n	8009352 <memmove+0x1e>
 80093da:	3b01      	subs	r3, #1
 80093dc:	440a      	add	r2, r1
 80093de:	f811 4b01 	ldrb.w	r4, [r1], #1
 80093e2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80093e6:	4291      	cmp	r1, r2
 80093e8:	d1f9      	bne.n	80093de <memmove+0xaa>
 80093ea:	bcf0      	pop	{r4, r5, r6, r7}
 80093ec:	4770      	bx	lr
 80093ee:	4603      	mov	r3, r0
 80093f0:	e7f1      	b.n	80093d6 <memmove+0xa2>
 80093f2:	4603      	mov	r3, r0
 80093f4:	e7f1      	b.n	80093da <memmove+0xa6>
 80093f6:	462a      	mov	r2, r5
 80093f8:	e7ed      	b.n	80093d6 <memmove+0xa2>
 80093fa:	bf00      	nop

080093fc <__malloc_lock>:
 80093fc:	4801      	ldr	r0, [pc, #4]	; (8009404 <__malloc_lock+0x8>)
 80093fe:	f7ff bc79 	b.w	8008cf4 <__retarget_lock_acquire_recursive>
 8009402:	bf00      	nop
 8009404:	20000af8 	.word	0x20000af8

08009408 <__malloc_unlock>:
 8009408:	4801      	ldr	r0, [pc, #4]	; (8009410 <__malloc_unlock+0x8>)
 800940a:	f7ff bc75 	b.w	8008cf8 <__retarget_lock_release_recursive>
 800940e:	bf00      	nop
 8009410:	20000af8 	.word	0x20000af8

08009414 <_Balloc>:
 8009414:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8009416:	b570      	push	{r4, r5, r6, lr}
 8009418:	4605      	mov	r5, r0
 800941a:	460c      	mov	r4, r1
 800941c:	b14b      	cbz	r3, 8009432 <_Balloc+0x1e>
 800941e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8009422:	b180      	cbz	r0, 8009446 <_Balloc+0x32>
 8009424:	6802      	ldr	r2, [r0, #0]
 8009426:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800942a:	2300      	movs	r3, #0
 800942c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8009430:	bd70      	pop	{r4, r5, r6, pc}
 8009432:	2221      	movs	r2, #33	; 0x21
 8009434:	2104      	movs	r1, #4
 8009436:	f000 fe1d 	bl	800a074 <_calloc_r>
 800943a:	4603      	mov	r3, r0
 800943c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800943e:	2800      	cmp	r0, #0
 8009440:	d1ed      	bne.n	800941e <_Balloc+0xa>
 8009442:	2000      	movs	r0, #0
 8009444:	bd70      	pop	{r4, r5, r6, pc}
 8009446:	2101      	movs	r1, #1
 8009448:	fa01 f604 	lsl.w	r6, r1, r4
 800944c:	1d72      	adds	r2, r6, #5
 800944e:	4628      	mov	r0, r5
 8009450:	0092      	lsls	r2, r2, #2
 8009452:	f000 fe0f 	bl	800a074 <_calloc_r>
 8009456:	2800      	cmp	r0, #0
 8009458:	d0f3      	beq.n	8009442 <_Balloc+0x2e>
 800945a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800945e:	e7e4      	b.n	800942a <_Balloc+0x16>

08009460 <_Bfree>:
 8009460:	b131      	cbz	r1, 8009470 <_Bfree+0x10>
 8009462:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8009464:	684a      	ldr	r2, [r1, #4]
 8009466:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800946a:	6008      	str	r0, [r1, #0]
 800946c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8009470:	4770      	bx	lr
 8009472:	bf00      	nop

08009474 <__multadd>:
 8009474:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009476:	690c      	ldr	r4, [r1, #16]
 8009478:	b083      	sub	sp, #12
 800947a:	460d      	mov	r5, r1
 800947c:	4606      	mov	r6, r0
 800947e:	f101 0c14 	add.w	ip, r1, #20
 8009482:	2700      	movs	r7, #0
 8009484:	f8dc 0000 	ldr.w	r0, [ip]
 8009488:	b281      	uxth	r1, r0
 800948a:	fb02 3301 	mla	r3, r2, r1, r3
 800948e:	0c01      	lsrs	r1, r0, #16
 8009490:	0c18      	lsrs	r0, r3, #16
 8009492:	fb02 0101 	mla	r1, r2, r1, r0
 8009496:	b29b      	uxth	r3, r3
 8009498:	3701      	adds	r7, #1
 800949a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800949e:	42bc      	cmp	r4, r7
 80094a0:	f84c 3b04 	str.w	r3, [ip], #4
 80094a4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80094a8:	dcec      	bgt.n	8009484 <__multadd+0x10>
 80094aa:	b13b      	cbz	r3, 80094bc <__multadd+0x48>
 80094ac:	68aa      	ldr	r2, [r5, #8]
 80094ae:	42a2      	cmp	r2, r4
 80094b0:	dd07      	ble.n	80094c2 <__multadd+0x4e>
 80094b2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80094b6:	3401      	adds	r4, #1
 80094b8:	6153      	str	r3, [r2, #20]
 80094ba:	612c      	str	r4, [r5, #16]
 80094bc:	4628      	mov	r0, r5
 80094be:	b003      	add	sp, #12
 80094c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80094c2:	6869      	ldr	r1, [r5, #4]
 80094c4:	9301      	str	r3, [sp, #4]
 80094c6:	3101      	adds	r1, #1
 80094c8:	4630      	mov	r0, r6
 80094ca:	f7ff ffa3 	bl	8009414 <_Balloc>
 80094ce:	692a      	ldr	r2, [r5, #16]
 80094d0:	3202      	adds	r2, #2
 80094d2:	f105 010c 	add.w	r1, r5, #12
 80094d6:	4607      	mov	r7, r0
 80094d8:	0092      	lsls	r2, r2, #2
 80094da:	300c      	adds	r0, #12
 80094dc:	f7f7 fcf2 	bl	8000ec4 <memcpy>
 80094e0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80094e2:	6869      	ldr	r1, [r5, #4]
 80094e4:	9b01      	ldr	r3, [sp, #4]
 80094e6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80094ea:	6028      	str	r0, [r5, #0]
 80094ec:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80094f0:	463d      	mov	r5, r7
 80094f2:	e7de      	b.n	80094b2 <__multadd+0x3e>

080094f4 <__hi0bits>:
 80094f4:	0c02      	lsrs	r2, r0, #16
 80094f6:	0412      	lsls	r2, r2, #16
 80094f8:	4603      	mov	r3, r0
 80094fa:	b9c2      	cbnz	r2, 800952e <__hi0bits+0x3a>
 80094fc:	0403      	lsls	r3, r0, #16
 80094fe:	2010      	movs	r0, #16
 8009500:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8009504:	bf04      	itt	eq
 8009506:	021b      	lsleq	r3, r3, #8
 8009508:	3008      	addeq	r0, #8
 800950a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800950e:	bf04      	itt	eq
 8009510:	011b      	lsleq	r3, r3, #4
 8009512:	3004      	addeq	r0, #4
 8009514:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8009518:	bf04      	itt	eq
 800951a:	009b      	lsleq	r3, r3, #2
 800951c:	3002      	addeq	r0, #2
 800951e:	2b00      	cmp	r3, #0
 8009520:	db04      	blt.n	800952c <__hi0bits+0x38>
 8009522:	005b      	lsls	r3, r3, #1
 8009524:	d501      	bpl.n	800952a <__hi0bits+0x36>
 8009526:	3001      	adds	r0, #1
 8009528:	4770      	bx	lr
 800952a:	2020      	movs	r0, #32
 800952c:	4770      	bx	lr
 800952e:	2000      	movs	r0, #0
 8009530:	e7e6      	b.n	8009500 <__hi0bits+0xc>
 8009532:	bf00      	nop

08009534 <__lo0bits>:
 8009534:	6803      	ldr	r3, [r0, #0]
 8009536:	f013 0207 	ands.w	r2, r3, #7
 800953a:	4601      	mov	r1, r0
 800953c:	d007      	beq.n	800954e <__lo0bits+0x1a>
 800953e:	07da      	lsls	r2, r3, #31
 8009540:	d41f      	bmi.n	8009582 <__lo0bits+0x4e>
 8009542:	0798      	lsls	r0, r3, #30
 8009544:	d51f      	bpl.n	8009586 <__lo0bits+0x52>
 8009546:	085b      	lsrs	r3, r3, #1
 8009548:	600b      	str	r3, [r1, #0]
 800954a:	2001      	movs	r0, #1
 800954c:	4770      	bx	lr
 800954e:	b298      	uxth	r0, r3
 8009550:	b1a0      	cbz	r0, 800957c <__lo0bits+0x48>
 8009552:	4610      	mov	r0, r2
 8009554:	f013 0fff 	tst.w	r3, #255	; 0xff
 8009558:	bf04      	itt	eq
 800955a:	0a1b      	lsreq	r3, r3, #8
 800955c:	3008      	addeq	r0, #8
 800955e:	071a      	lsls	r2, r3, #28
 8009560:	bf04      	itt	eq
 8009562:	091b      	lsreq	r3, r3, #4
 8009564:	3004      	addeq	r0, #4
 8009566:	079a      	lsls	r2, r3, #30
 8009568:	bf04      	itt	eq
 800956a:	089b      	lsreq	r3, r3, #2
 800956c:	3002      	addeq	r0, #2
 800956e:	07da      	lsls	r2, r3, #31
 8009570:	d402      	bmi.n	8009578 <__lo0bits+0x44>
 8009572:	085b      	lsrs	r3, r3, #1
 8009574:	d00b      	beq.n	800958e <__lo0bits+0x5a>
 8009576:	3001      	adds	r0, #1
 8009578:	600b      	str	r3, [r1, #0]
 800957a:	4770      	bx	lr
 800957c:	0c1b      	lsrs	r3, r3, #16
 800957e:	2010      	movs	r0, #16
 8009580:	e7e8      	b.n	8009554 <__lo0bits+0x20>
 8009582:	2000      	movs	r0, #0
 8009584:	4770      	bx	lr
 8009586:	089b      	lsrs	r3, r3, #2
 8009588:	600b      	str	r3, [r1, #0]
 800958a:	2002      	movs	r0, #2
 800958c:	4770      	bx	lr
 800958e:	2020      	movs	r0, #32
 8009590:	4770      	bx	lr
 8009592:	bf00      	nop

08009594 <__i2b>:
 8009594:	b510      	push	{r4, lr}
 8009596:	460c      	mov	r4, r1
 8009598:	2101      	movs	r1, #1
 800959a:	f7ff ff3b 	bl	8009414 <_Balloc>
 800959e:	2201      	movs	r2, #1
 80095a0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80095a4:	bd10      	pop	{r4, pc}
 80095a6:	bf00      	nop

080095a8 <__multiply>:
 80095a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80095ac:	690e      	ldr	r6, [r1, #16]
 80095ae:	6914      	ldr	r4, [r2, #16]
 80095b0:	42a6      	cmp	r6, r4
 80095b2:	b083      	sub	sp, #12
 80095b4:	460f      	mov	r7, r1
 80095b6:	4615      	mov	r5, r2
 80095b8:	da04      	bge.n	80095c4 <__multiply+0x1c>
 80095ba:	4632      	mov	r2, r6
 80095bc:	462f      	mov	r7, r5
 80095be:	4626      	mov	r6, r4
 80095c0:	460d      	mov	r5, r1
 80095c2:	4614      	mov	r4, r2
 80095c4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80095c8:	eb06 0804 	add.w	r8, r6, r4
 80095cc:	4543      	cmp	r3, r8
 80095ce:	bfb8      	it	lt
 80095d0:	3101      	addlt	r1, #1
 80095d2:	f7ff ff1f 	bl	8009414 <_Balloc>
 80095d6:	f100 0914 	add.w	r9, r0, #20
 80095da:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80095de:	45f1      	cmp	r9, lr
 80095e0:	9000      	str	r0, [sp, #0]
 80095e2:	d205      	bcs.n	80095f0 <__multiply+0x48>
 80095e4:	464b      	mov	r3, r9
 80095e6:	2200      	movs	r2, #0
 80095e8:	f843 2b04 	str.w	r2, [r3], #4
 80095ec:	459e      	cmp	lr, r3
 80095ee:	d8fb      	bhi.n	80095e8 <__multiply+0x40>
 80095f0:	f105 0a14 	add.w	sl, r5, #20
 80095f4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80095f8:	f107 0314 	add.w	r3, r7, #20
 80095fc:	45a2      	cmp	sl, r4
 80095fe:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8009602:	d261      	bcs.n	80096c8 <__multiply+0x120>
 8009604:	1b64      	subs	r4, r4, r5
 8009606:	3c15      	subs	r4, #21
 8009608:	f024 0403 	bic.w	r4, r4, #3
 800960c:	f8cd e004 	str.w	lr, [sp, #4]
 8009610:	44a2      	add	sl, r4
 8009612:	f105 0210 	add.w	r2, r5, #16
 8009616:	469e      	mov	lr, r3
 8009618:	e005      	b.n	8009626 <__multiply+0x7e>
 800961a:	0c2d      	lsrs	r5, r5, #16
 800961c:	d12b      	bne.n	8009676 <__multiply+0xce>
 800961e:	4592      	cmp	sl, r2
 8009620:	f109 0904 	add.w	r9, r9, #4
 8009624:	d04e      	beq.n	80096c4 <__multiply+0x11c>
 8009626:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800962a:	fa1f fb85 	uxth.w	fp, r5
 800962e:	f1bb 0f00 	cmp.w	fp, #0
 8009632:	d0f2      	beq.n	800961a <__multiply+0x72>
 8009634:	4677      	mov	r7, lr
 8009636:	464e      	mov	r6, r9
 8009638:	2000      	movs	r0, #0
 800963a:	e000      	b.n	800963e <__multiply+0x96>
 800963c:	4626      	mov	r6, r4
 800963e:	f857 1b04 	ldr.w	r1, [r7], #4
 8009642:	6834      	ldr	r4, [r6, #0]
 8009644:	b28b      	uxth	r3, r1
 8009646:	b2a5      	uxth	r5, r4
 8009648:	0c09      	lsrs	r1, r1, #16
 800964a:	0c24      	lsrs	r4, r4, #16
 800964c:	fb0b 5303 	mla	r3, fp, r3, r5
 8009650:	4403      	add	r3, r0
 8009652:	fb0b 4001 	mla	r0, fp, r1, r4
 8009656:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800965a:	4634      	mov	r4, r6
 800965c:	b29b      	uxth	r3, r3
 800965e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8009662:	45bc      	cmp	ip, r7
 8009664:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8009668:	f844 3b04 	str.w	r3, [r4], #4
 800966c:	d8e6      	bhi.n	800963c <__multiply+0x94>
 800966e:	6070      	str	r0, [r6, #4]
 8009670:	6815      	ldr	r5, [r2, #0]
 8009672:	0c2d      	lsrs	r5, r5, #16
 8009674:	d0d3      	beq.n	800961e <__multiply+0x76>
 8009676:	f8d9 3000 	ldr.w	r3, [r9]
 800967a:	4676      	mov	r6, lr
 800967c:	4618      	mov	r0, r3
 800967e:	46cb      	mov	fp, r9
 8009680:	2100      	movs	r1, #0
 8009682:	e000      	b.n	8009686 <__multiply+0xde>
 8009684:	46a3      	mov	fp, r4
 8009686:	8834      	ldrh	r4, [r6, #0]
 8009688:	0c00      	lsrs	r0, r0, #16
 800968a:	fb05 0004 	mla	r0, r5, r4, r0
 800968e:	4401      	add	r1, r0
 8009690:	b29b      	uxth	r3, r3
 8009692:	465c      	mov	r4, fp
 8009694:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8009698:	f844 3b04 	str.w	r3, [r4], #4
 800969c:	f856 3b04 	ldr.w	r3, [r6], #4
 80096a0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80096a4:	0c1b      	lsrs	r3, r3, #16
 80096a6:	b287      	uxth	r7, r0
 80096a8:	fb05 7303 	mla	r3, r5, r3, r7
 80096ac:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80096b0:	45b4      	cmp	ip, r6
 80096b2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80096b6:	d8e5      	bhi.n	8009684 <__multiply+0xdc>
 80096b8:	4592      	cmp	sl, r2
 80096ba:	f8cb 3004 	str.w	r3, [fp, #4]
 80096be:	f109 0904 	add.w	r9, r9, #4
 80096c2:	d1b0      	bne.n	8009626 <__multiply+0x7e>
 80096c4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80096c8:	f1b8 0f00 	cmp.w	r8, #0
 80096cc:	dd0b      	ble.n	80096e6 <__multiply+0x13e>
 80096ce:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80096d2:	f1ae 0e04 	sub.w	lr, lr, #4
 80096d6:	b11b      	cbz	r3, 80096e0 <__multiply+0x138>
 80096d8:	e005      	b.n	80096e6 <__multiply+0x13e>
 80096da:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80096de:	b913      	cbnz	r3, 80096e6 <__multiply+0x13e>
 80096e0:	f1b8 0801 	subs.w	r8, r8, #1
 80096e4:	d1f9      	bne.n	80096da <__multiply+0x132>
 80096e6:	9800      	ldr	r0, [sp, #0]
 80096e8:	f8c0 8010 	str.w	r8, [r0, #16]
 80096ec:	b003      	add	sp, #12
 80096ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80096f2:	bf00      	nop

080096f4 <__pow5mult>:
 80096f4:	f012 0303 	ands.w	r3, r2, #3
 80096f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80096fc:	4614      	mov	r4, r2
 80096fe:	4607      	mov	r7, r0
 8009700:	d12e      	bne.n	8009760 <__pow5mult+0x6c>
 8009702:	460d      	mov	r5, r1
 8009704:	10a4      	asrs	r4, r4, #2
 8009706:	d01c      	beq.n	8009742 <__pow5mult+0x4e>
 8009708:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800970a:	b396      	cbz	r6, 8009772 <__pow5mult+0x7e>
 800970c:	07e3      	lsls	r3, r4, #31
 800970e:	f04f 0800 	mov.w	r8, #0
 8009712:	d406      	bmi.n	8009722 <__pow5mult+0x2e>
 8009714:	1064      	asrs	r4, r4, #1
 8009716:	d014      	beq.n	8009742 <__pow5mult+0x4e>
 8009718:	6830      	ldr	r0, [r6, #0]
 800971a:	b1a8      	cbz	r0, 8009748 <__pow5mult+0x54>
 800971c:	4606      	mov	r6, r0
 800971e:	07e3      	lsls	r3, r4, #31
 8009720:	d5f8      	bpl.n	8009714 <__pow5mult+0x20>
 8009722:	4632      	mov	r2, r6
 8009724:	4629      	mov	r1, r5
 8009726:	4638      	mov	r0, r7
 8009728:	f7ff ff3e 	bl	80095a8 <__multiply>
 800972c:	b1b5      	cbz	r5, 800975c <__pow5mult+0x68>
 800972e:	686a      	ldr	r2, [r5, #4]
 8009730:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009732:	1064      	asrs	r4, r4, #1
 8009734:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009738:	6029      	str	r1, [r5, #0]
 800973a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800973e:	4605      	mov	r5, r0
 8009740:	d1ea      	bne.n	8009718 <__pow5mult+0x24>
 8009742:	4628      	mov	r0, r5
 8009744:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009748:	4632      	mov	r2, r6
 800974a:	4631      	mov	r1, r6
 800974c:	4638      	mov	r0, r7
 800974e:	f7ff ff2b 	bl	80095a8 <__multiply>
 8009752:	6030      	str	r0, [r6, #0]
 8009754:	f8c0 8000 	str.w	r8, [r0]
 8009758:	4606      	mov	r6, r0
 800975a:	e7e0      	b.n	800971e <__pow5mult+0x2a>
 800975c:	4605      	mov	r5, r0
 800975e:	e7d9      	b.n	8009714 <__pow5mult+0x20>
 8009760:	3b01      	subs	r3, #1
 8009762:	4a0b      	ldr	r2, [pc, #44]	; (8009790 <__pow5mult+0x9c>)
 8009764:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8009768:	2300      	movs	r3, #0
 800976a:	f7ff fe83 	bl	8009474 <__multadd>
 800976e:	4605      	mov	r5, r0
 8009770:	e7c8      	b.n	8009704 <__pow5mult+0x10>
 8009772:	2101      	movs	r1, #1
 8009774:	4638      	mov	r0, r7
 8009776:	f7ff fe4d 	bl	8009414 <_Balloc>
 800977a:	f240 2371 	movw	r3, #625	; 0x271
 800977e:	6143      	str	r3, [r0, #20]
 8009780:	2201      	movs	r2, #1
 8009782:	2300      	movs	r3, #0
 8009784:	6102      	str	r2, [r0, #16]
 8009786:	4606      	mov	r6, r0
 8009788:	64b8      	str	r0, [r7, #72]	; 0x48
 800978a:	6003      	str	r3, [r0, #0]
 800978c:	e7be      	b.n	800970c <__pow5mult+0x18>
 800978e:	bf00      	nop
 8009790:	0800a9c0 	.word	0x0800a9c0

08009794 <__lshift>:
 8009794:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009798:	4691      	mov	r9, r2
 800979a:	690a      	ldr	r2, [r1, #16]
 800979c:	460e      	mov	r6, r1
 800979e:	ea4f 1469 	mov.w	r4, r9, asr #5
 80097a2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80097a6:	eb04 0802 	add.w	r8, r4, r2
 80097aa:	f108 0501 	add.w	r5, r8, #1
 80097ae:	429d      	cmp	r5, r3
 80097b0:	4607      	mov	r7, r0
 80097b2:	dd04      	ble.n	80097be <__lshift+0x2a>
 80097b4:	005b      	lsls	r3, r3, #1
 80097b6:	429d      	cmp	r5, r3
 80097b8:	f101 0101 	add.w	r1, r1, #1
 80097bc:	dcfa      	bgt.n	80097b4 <__lshift+0x20>
 80097be:	4638      	mov	r0, r7
 80097c0:	f7ff fe28 	bl	8009414 <_Balloc>
 80097c4:	2c00      	cmp	r4, #0
 80097c6:	f100 0314 	add.w	r3, r0, #20
 80097ca:	dd37      	ble.n	800983c <__lshift+0xa8>
 80097cc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80097d0:	2200      	movs	r2, #0
 80097d2:	f843 2b04 	str.w	r2, [r3], #4
 80097d6:	428b      	cmp	r3, r1
 80097d8:	d1fb      	bne.n	80097d2 <__lshift+0x3e>
 80097da:	6934      	ldr	r4, [r6, #16]
 80097dc:	f106 0314 	add.w	r3, r6, #20
 80097e0:	f019 091f 	ands.w	r9, r9, #31
 80097e4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80097e8:	d020      	beq.n	800982c <__lshift+0x98>
 80097ea:	f1c9 0e20 	rsb	lr, r9, #32
 80097ee:	2200      	movs	r2, #0
 80097f0:	e000      	b.n	80097f4 <__lshift+0x60>
 80097f2:	4651      	mov	r1, sl
 80097f4:	681c      	ldr	r4, [r3, #0]
 80097f6:	468a      	mov	sl, r1
 80097f8:	fa04 f409 	lsl.w	r4, r4, r9
 80097fc:	4314      	orrs	r4, r2
 80097fe:	f84a 4b04 	str.w	r4, [sl], #4
 8009802:	f853 2b04 	ldr.w	r2, [r3], #4
 8009806:	4563      	cmp	r3, ip
 8009808:	fa22 f20e 	lsr.w	r2, r2, lr
 800980c:	d3f1      	bcc.n	80097f2 <__lshift+0x5e>
 800980e:	604a      	str	r2, [r1, #4]
 8009810:	b10a      	cbz	r2, 8009816 <__lshift+0x82>
 8009812:	f108 0502 	add.w	r5, r8, #2
 8009816:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009818:	6872      	ldr	r2, [r6, #4]
 800981a:	3d01      	subs	r5, #1
 800981c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009820:	6105      	str	r5, [r0, #16]
 8009822:	6031      	str	r1, [r6, #0]
 8009824:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8009828:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800982c:	3904      	subs	r1, #4
 800982e:	f853 2b04 	ldr.w	r2, [r3], #4
 8009832:	f841 2f04 	str.w	r2, [r1, #4]!
 8009836:	459c      	cmp	ip, r3
 8009838:	d8f9      	bhi.n	800982e <__lshift+0x9a>
 800983a:	e7ec      	b.n	8009816 <__lshift+0x82>
 800983c:	4619      	mov	r1, r3
 800983e:	e7cc      	b.n	80097da <__lshift+0x46>

08009840 <__mcmp>:
 8009840:	b430      	push	{r4, r5}
 8009842:	690b      	ldr	r3, [r1, #16]
 8009844:	4605      	mov	r5, r0
 8009846:	6900      	ldr	r0, [r0, #16]
 8009848:	1ac0      	subs	r0, r0, r3
 800984a:	d10f      	bne.n	800986c <__mcmp+0x2c>
 800984c:	009b      	lsls	r3, r3, #2
 800984e:	3514      	adds	r5, #20
 8009850:	3114      	adds	r1, #20
 8009852:	4419      	add	r1, r3
 8009854:	442b      	add	r3, r5
 8009856:	e001      	b.n	800985c <__mcmp+0x1c>
 8009858:	429d      	cmp	r5, r3
 800985a:	d207      	bcs.n	800986c <__mcmp+0x2c>
 800985c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8009860:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8009864:	4294      	cmp	r4, r2
 8009866:	d0f7      	beq.n	8009858 <__mcmp+0x18>
 8009868:	d302      	bcc.n	8009870 <__mcmp+0x30>
 800986a:	2001      	movs	r0, #1
 800986c:	bc30      	pop	{r4, r5}
 800986e:	4770      	bx	lr
 8009870:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009874:	e7fa      	b.n	800986c <__mcmp+0x2c>
 8009876:	bf00      	nop

08009878 <__mdiff>:
 8009878:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800987c:	6913      	ldr	r3, [r2, #16]
 800987e:	690d      	ldr	r5, [r1, #16]
 8009880:	1aed      	subs	r5, r5, r3
 8009882:	2d00      	cmp	r5, #0
 8009884:	460e      	mov	r6, r1
 8009886:	4690      	mov	r8, r2
 8009888:	f101 0414 	add.w	r4, r1, #20
 800988c:	f102 0714 	add.w	r7, r2, #20
 8009890:	d114      	bne.n	80098bc <__mdiff+0x44>
 8009892:	009b      	lsls	r3, r3, #2
 8009894:	18e2      	adds	r2, r4, r3
 8009896:	443b      	add	r3, r7
 8009898:	e001      	b.n	800989e <__mdiff+0x26>
 800989a:	42a2      	cmp	r2, r4
 800989c:	d959      	bls.n	8009952 <__mdiff+0xda>
 800989e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80098a2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80098a6:	458c      	cmp	ip, r1
 80098a8:	d0f7      	beq.n	800989a <__mdiff+0x22>
 80098aa:	d209      	bcs.n	80098c0 <__mdiff+0x48>
 80098ac:	4622      	mov	r2, r4
 80098ae:	4633      	mov	r3, r6
 80098b0:	463c      	mov	r4, r7
 80098b2:	4646      	mov	r6, r8
 80098b4:	4617      	mov	r7, r2
 80098b6:	4698      	mov	r8, r3
 80098b8:	2501      	movs	r5, #1
 80098ba:	e001      	b.n	80098c0 <__mdiff+0x48>
 80098bc:	dbf6      	blt.n	80098ac <__mdiff+0x34>
 80098be:	2500      	movs	r5, #0
 80098c0:	6871      	ldr	r1, [r6, #4]
 80098c2:	f7ff fda7 	bl	8009414 <_Balloc>
 80098c6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80098ca:	6936      	ldr	r6, [r6, #16]
 80098cc:	60c5      	str	r5, [r0, #12]
 80098ce:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80098d2:	46bc      	mov	ip, r7
 80098d4:	f100 0514 	add.w	r5, r0, #20
 80098d8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80098dc:	2300      	movs	r3, #0
 80098de:	f85c 1b04 	ldr.w	r1, [ip], #4
 80098e2:	f854 8b04 	ldr.w	r8, [r4], #4
 80098e6:	b28a      	uxth	r2, r1
 80098e8:	fa13 f388 	uxtah	r3, r3, r8
 80098ec:	0c09      	lsrs	r1, r1, #16
 80098ee:	1a9a      	subs	r2, r3, r2
 80098f0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80098f4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80098f8:	b292      	uxth	r2, r2
 80098fa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80098fe:	45e6      	cmp	lr, ip
 8009900:	f845 2b04 	str.w	r2, [r5], #4
 8009904:	ea4f 4323 	mov.w	r3, r3, asr #16
 8009908:	d8e9      	bhi.n	80098de <__mdiff+0x66>
 800990a:	42a7      	cmp	r7, r4
 800990c:	d917      	bls.n	800993e <__mdiff+0xc6>
 800990e:	46ae      	mov	lr, r5
 8009910:	46a4      	mov	ip, r4
 8009912:	f85c 2b04 	ldr.w	r2, [ip], #4
 8009916:	fa13 f382 	uxtah	r3, r3, r2
 800991a:	1419      	asrs	r1, r3, #16
 800991c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8009920:	b29b      	uxth	r3, r3
 8009922:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8009926:	4567      	cmp	r7, ip
 8009928:	f84e 2b04 	str.w	r2, [lr], #4
 800992c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8009930:	d8ef      	bhi.n	8009912 <__mdiff+0x9a>
 8009932:	43e4      	mvns	r4, r4
 8009934:	4427      	add	r7, r4
 8009936:	f027 0703 	bic.w	r7, r7, #3
 800993a:	3704      	adds	r7, #4
 800993c:	443d      	add	r5, r7
 800993e:	3d04      	subs	r5, #4
 8009940:	b922      	cbnz	r2, 800994c <__mdiff+0xd4>
 8009942:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8009946:	3e01      	subs	r6, #1
 8009948:	2b00      	cmp	r3, #0
 800994a:	d0fa      	beq.n	8009942 <__mdiff+0xca>
 800994c:	6106      	str	r6, [r0, #16]
 800994e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009952:	2100      	movs	r1, #0
 8009954:	f7ff fd5e 	bl	8009414 <_Balloc>
 8009958:	2201      	movs	r2, #1
 800995a:	2300      	movs	r3, #0
 800995c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8009960:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009964 <__d2b>:
 8009964:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009968:	460f      	mov	r7, r1
 800996a:	b083      	sub	sp, #12
 800996c:	2101      	movs	r1, #1
 800996e:	ec55 4b10 	vmov	r4, r5, d0
 8009972:	4616      	mov	r6, r2
 8009974:	f7ff fd4e 	bl	8009414 <_Balloc>
 8009978:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800997c:	4681      	mov	r9, r0
 800997e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8009982:	f1b8 0f00 	cmp.w	r8, #0
 8009986:	d001      	beq.n	800998c <__d2b+0x28>
 8009988:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800998c:	2c00      	cmp	r4, #0
 800998e:	9301      	str	r3, [sp, #4]
 8009990:	d024      	beq.n	80099dc <__d2b+0x78>
 8009992:	a802      	add	r0, sp, #8
 8009994:	f840 4d08 	str.w	r4, [r0, #-8]!
 8009998:	f7ff fdcc 	bl	8009534 <__lo0bits>
 800999c:	2800      	cmp	r0, #0
 800999e:	d136      	bne.n	8009a0e <__d2b+0xaa>
 80099a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80099a4:	f8c9 2014 	str.w	r2, [r9, #20]
 80099a8:	2b00      	cmp	r3, #0
 80099aa:	bf0c      	ite	eq
 80099ac:	2101      	moveq	r1, #1
 80099ae:	2102      	movne	r1, #2
 80099b0:	f8c9 3018 	str.w	r3, [r9, #24]
 80099b4:	f8c9 1010 	str.w	r1, [r9, #16]
 80099b8:	f1b8 0f00 	cmp.w	r8, #0
 80099bc:	d11b      	bne.n	80099f6 <__d2b+0x92>
 80099be:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80099c2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80099c6:	6038      	str	r0, [r7, #0]
 80099c8:	6918      	ldr	r0, [r3, #16]
 80099ca:	f7ff fd93 	bl	80094f4 <__hi0bits>
 80099ce:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80099d2:	6030      	str	r0, [r6, #0]
 80099d4:	4648      	mov	r0, r9
 80099d6:	b003      	add	sp, #12
 80099d8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80099dc:	a801      	add	r0, sp, #4
 80099de:	f7ff fda9 	bl	8009534 <__lo0bits>
 80099e2:	9b01      	ldr	r3, [sp, #4]
 80099e4:	f8c9 3014 	str.w	r3, [r9, #20]
 80099e8:	2101      	movs	r1, #1
 80099ea:	3020      	adds	r0, #32
 80099ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80099f0:	f1b8 0f00 	cmp.w	r8, #0
 80099f4:	d0e3      	beq.n	80099be <__d2b+0x5a>
 80099f6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80099fa:	eb08 0300 	add.w	r3, r8, r0
 80099fe:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8009a02:	603b      	str	r3, [r7, #0]
 8009a04:	6030      	str	r0, [r6, #0]
 8009a06:	4648      	mov	r0, r9
 8009a08:	b003      	add	sp, #12
 8009a0a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009a0e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8009a12:	f1c0 0220 	rsb	r2, r0, #32
 8009a16:	fa03 f202 	lsl.w	r2, r3, r2
 8009a1a:	430a      	orrs	r2, r1
 8009a1c:	40c3      	lsrs	r3, r0
 8009a1e:	9301      	str	r3, [sp, #4]
 8009a20:	f8c9 2014 	str.w	r2, [r9, #20]
 8009a24:	e7c0      	b.n	80099a8 <__d2b+0x44>
 8009a26:	bf00      	nop

08009a28 <_realloc_r>:
 8009a28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009a2c:	4692      	mov	sl, r2
 8009a2e:	b083      	sub	sp, #12
 8009a30:	2900      	cmp	r1, #0
 8009a32:	f000 80a1 	beq.w	8009b78 <_realloc_r+0x150>
 8009a36:	460d      	mov	r5, r1
 8009a38:	4680      	mov	r8, r0
 8009a3a:	f10a 040b 	add.w	r4, sl, #11
 8009a3e:	f7ff fcdd 	bl	80093fc <__malloc_lock>
 8009a42:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8009a46:	2c16      	cmp	r4, #22
 8009a48:	f022 0603 	bic.w	r6, r2, #3
 8009a4c:	f1a5 0708 	sub.w	r7, r5, #8
 8009a50:	d83e      	bhi.n	8009ad0 <_realloc_r+0xa8>
 8009a52:	2410      	movs	r4, #16
 8009a54:	4621      	mov	r1, r4
 8009a56:	45a2      	cmp	sl, r4
 8009a58:	d83f      	bhi.n	8009ada <_realloc_r+0xb2>
 8009a5a:	428e      	cmp	r6, r1
 8009a5c:	eb07 0906 	add.w	r9, r7, r6
 8009a60:	da74      	bge.n	8009b4c <_realloc_r+0x124>
 8009a62:	4bc7      	ldr	r3, [pc, #796]	; (8009d80 <_realloc_r+0x358>)
 8009a64:	6898      	ldr	r0, [r3, #8]
 8009a66:	4548      	cmp	r0, r9
 8009a68:	f000 80aa 	beq.w	8009bc0 <_realloc_r+0x198>
 8009a6c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8009a70:	f020 0301 	bic.w	r3, r0, #1
 8009a74:	444b      	add	r3, r9
 8009a76:	685b      	ldr	r3, [r3, #4]
 8009a78:	07db      	lsls	r3, r3, #31
 8009a7a:	f140 8083 	bpl.w	8009b84 <_realloc_r+0x15c>
 8009a7e:	07d2      	lsls	r2, r2, #31
 8009a80:	d534      	bpl.n	8009aec <_realloc_r+0xc4>
 8009a82:	4651      	mov	r1, sl
 8009a84:	4640      	mov	r0, r8
 8009a86:	f7ff f9b1 	bl	8008dec <_malloc_r>
 8009a8a:	4682      	mov	sl, r0
 8009a8c:	b1e0      	cbz	r0, 8009ac8 <_realloc_r+0xa0>
 8009a8e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009a92:	f023 0301 	bic.w	r3, r3, #1
 8009a96:	443b      	add	r3, r7
 8009a98:	f1a0 0208 	sub.w	r2, r0, #8
 8009a9c:	4293      	cmp	r3, r2
 8009a9e:	f000 80f9 	beq.w	8009c94 <_realloc_r+0x26c>
 8009aa2:	1f32      	subs	r2, r6, #4
 8009aa4:	2a24      	cmp	r2, #36	; 0x24
 8009aa6:	f200 8107 	bhi.w	8009cb8 <_realloc_r+0x290>
 8009aaa:	2a13      	cmp	r2, #19
 8009aac:	6829      	ldr	r1, [r5, #0]
 8009aae:	f200 80e6 	bhi.w	8009c7e <_realloc_r+0x256>
 8009ab2:	4603      	mov	r3, r0
 8009ab4:	462a      	mov	r2, r5
 8009ab6:	6019      	str	r1, [r3, #0]
 8009ab8:	6851      	ldr	r1, [r2, #4]
 8009aba:	6059      	str	r1, [r3, #4]
 8009abc:	6892      	ldr	r2, [r2, #8]
 8009abe:	609a      	str	r2, [r3, #8]
 8009ac0:	4629      	mov	r1, r5
 8009ac2:	4640      	mov	r0, r8
 8009ac4:	f7fe fe68 	bl	8008798 <_free_r>
 8009ac8:	4640      	mov	r0, r8
 8009aca:	f7ff fc9d 	bl	8009408 <__malloc_unlock>
 8009ace:	e04f      	b.n	8009b70 <_realloc_r+0x148>
 8009ad0:	f024 0407 	bic.w	r4, r4, #7
 8009ad4:	2c00      	cmp	r4, #0
 8009ad6:	4621      	mov	r1, r4
 8009ad8:	dabd      	bge.n	8009a56 <_realloc_r+0x2e>
 8009ada:	f04f 0a00 	mov.w	sl, #0
 8009ade:	230c      	movs	r3, #12
 8009ae0:	4650      	mov	r0, sl
 8009ae2:	f8c8 3000 	str.w	r3, [r8]
 8009ae6:	b003      	add	sp, #12
 8009ae8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009aec:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009af0:	eba7 0b03 	sub.w	fp, r7, r3
 8009af4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009af8:	f022 0203 	bic.w	r2, r2, #3
 8009afc:	18b3      	adds	r3, r6, r2
 8009afe:	428b      	cmp	r3, r1
 8009b00:	dbbf      	blt.n	8009a82 <_realloc_r+0x5a>
 8009b02:	46da      	mov	sl, fp
 8009b04:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009b08:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009b0c:	1f32      	subs	r2, r6, #4
 8009b0e:	2a24      	cmp	r2, #36	; 0x24
 8009b10:	60c1      	str	r1, [r0, #12]
 8009b12:	eb0b 0903 	add.w	r9, fp, r3
 8009b16:	6088      	str	r0, [r1, #8]
 8009b18:	f200 80c6 	bhi.w	8009ca8 <_realloc_r+0x280>
 8009b1c:	2a13      	cmp	r2, #19
 8009b1e:	6829      	ldr	r1, [r5, #0]
 8009b20:	f240 80c0 	bls.w	8009ca4 <_realloc_r+0x27c>
 8009b24:	f8cb 1008 	str.w	r1, [fp, #8]
 8009b28:	6869      	ldr	r1, [r5, #4]
 8009b2a:	f8cb 100c 	str.w	r1, [fp, #12]
 8009b2e:	2a1b      	cmp	r2, #27
 8009b30:	68a9      	ldr	r1, [r5, #8]
 8009b32:	f200 80d8 	bhi.w	8009ce6 <_realloc_r+0x2be>
 8009b36:	f10b 0210 	add.w	r2, fp, #16
 8009b3a:	3508      	adds	r5, #8
 8009b3c:	6011      	str	r1, [r2, #0]
 8009b3e:	6869      	ldr	r1, [r5, #4]
 8009b40:	6051      	str	r1, [r2, #4]
 8009b42:	68a9      	ldr	r1, [r5, #8]
 8009b44:	6091      	str	r1, [r2, #8]
 8009b46:	461e      	mov	r6, r3
 8009b48:	465f      	mov	r7, fp
 8009b4a:	4655      	mov	r5, sl
 8009b4c:	687b      	ldr	r3, [r7, #4]
 8009b4e:	1b32      	subs	r2, r6, r4
 8009b50:	2a0f      	cmp	r2, #15
 8009b52:	f003 0301 	and.w	r3, r3, #1
 8009b56:	d822      	bhi.n	8009b9e <_realloc_r+0x176>
 8009b58:	4333      	orrs	r3, r6
 8009b5a:	607b      	str	r3, [r7, #4]
 8009b5c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009b60:	f043 0301 	orr.w	r3, r3, #1
 8009b64:	f8c9 3004 	str.w	r3, [r9, #4]
 8009b68:	4640      	mov	r0, r8
 8009b6a:	f7ff fc4d 	bl	8009408 <__malloc_unlock>
 8009b6e:	46aa      	mov	sl, r5
 8009b70:	4650      	mov	r0, sl
 8009b72:	b003      	add	sp, #12
 8009b74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009b78:	4611      	mov	r1, r2
 8009b7a:	b003      	add	sp, #12
 8009b7c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009b80:	f7ff b934 	b.w	8008dec <_malloc_r>
 8009b84:	f020 0003 	bic.w	r0, r0, #3
 8009b88:	1833      	adds	r3, r6, r0
 8009b8a:	428b      	cmp	r3, r1
 8009b8c:	db61      	blt.n	8009c52 <_realloc_r+0x22a>
 8009b8e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009b92:	461e      	mov	r6, r3
 8009b94:	60ca      	str	r2, [r1, #12]
 8009b96:	eb07 0903 	add.w	r9, r7, r3
 8009b9a:	6091      	str	r1, [r2, #8]
 8009b9c:	e7d6      	b.n	8009b4c <_realloc_r+0x124>
 8009b9e:	1939      	adds	r1, r7, r4
 8009ba0:	4323      	orrs	r3, r4
 8009ba2:	f042 0201 	orr.w	r2, r2, #1
 8009ba6:	607b      	str	r3, [r7, #4]
 8009ba8:	604a      	str	r2, [r1, #4]
 8009baa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009bae:	f043 0301 	orr.w	r3, r3, #1
 8009bb2:	3108      	adds	r1, #8
 8009bb4:	f8c9 3004 	str.w	r3, [r9, #4]
 8009bb8:	4640      	mov	r0, r8
 8009bba:	f7fe fded 	bl	8008798 <_free_r>
 8009bbe:	e7d3      	b.n	8009b68 <_realloc_r+0x140>
 8009bc0:	6840      	ldr	r0, [r0, #4]
 8009bc2:	f020 0903 	bic.w	r9, r0, #3
 8009bc6:	44b1      	add	r9, r6
 8009bc8:	f104 0010 	add.w	r0, r4, #16
 8009bcc:	4581      	cmp	r9, r0
 8009bce:	da77      	bge.n	8009cc0 <_realloc_r+0x298>
 8009bd0:	07d2      	lsls	r2, r2, #31
 8009bd2:	f53f af56 	bmi.w	8009a82 <_realloc_r+0x5a>
 8009bd6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8009bda:	eba7 0b02 	sub.w	fp, r7, r2
 8009bde:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009be2:	f022 0203 	bic.w	r2, r2, #3
 8009be6:	4491      	add	r9, r2
 8009be8:	4548      	cmp	r0, r9
 8009bea:	dc87      	bgt.n	8009afc <_realloc_r+0xd4>
 8009bec:	46da      	mov	sl, fp
 8009bee:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009bf2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009bf6:	1f32      	subs	r2, r6, #4
 8009bf8:	2a24      	cmp	r2, #36	; 0x24
 8009bfa:	60c1      	str	r1, [r0, #12]
 8009bfc:	6088      	str	r0, [r1, #8]
 8009bfe:	f200 80a1 	bhi.w	8009d44 <_realloc_r+0x31c>
 8009c02:	2a13      	cmp	r2, #19
 8009c04:	6829      	ldr	r1, [r5, #0]
 8009c06:	f240 809b 	bls.w	8009d40 <_realloc_r+0x318>
 8009c0a:	f8cb 1008 	str.w	r1, [fp, #8]
 8009c0e:	6869      	ldr	r1, [r5, #4]
 8009c10:	f8cb 100c 	str.w	r1, [fp, #12]
 8009c14:	2a1b      	cmp	r2, #27
 8009c16:	68a9      	ldr	r1, [r5, #8]
 8009c18:	f200 809b 	bhi.w	8009d52 <_realloc_r+0x32a>
 8009c1c:	f10b 0210 	add.w	r2, fp, #16
 8009c20:	3508      	adds	r5, #8
 8009c22:	6011      	str	r1, [r2, #0]
 8009c24:	6869      	ldr	r1, [r5, #4]
 8009c26:	6051      	str	r1, [r2, #4]
 8009c28:	68a9      	ldr	r1, [r5, #8]
 8009c2a:	6091      	str	r1, [r2, #8]
 8009c2c:	eb0b 0104 	add.w	r1, fp, r4
 8009c30:	eba9 0204 	sub.w	r2, r9, r4
 8009c34:	f042 0201 	orr.w	r2, r2, #1
 8009c38:	6099      	str	r1, [r3, #8]
 8009c3a:	604a      	str	r2, [r1, #4]
 8009c3c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8009c40:	f003 0301 	and.w	r3, r3, #1
 8009c44:	431c      	orrs	r4, r3
 8009c46:	4640      	mov	r0, r8
 8009c48:	f8cb 4004 	str.w	r4, [fp, #4]
 8009c4c:	f7ff fbdc 	bl	8009408 <__malloc_unlock>
 8009c50:	e78e      	b.n	8009b70 <_realloc_r+0x148>
 8009c52:	07d3      	lsls	r3, r2, #31
 8009c54:	f53f af15 	bmi.w	8009a82 <_realloc_r+0x5a>
 8009c58:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009c5c:	eba7 0b03 	sub.w	fp, r7, r3
 8009c60:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009c64:	f022 0203 	bic.w	r2, r2, #3
 8009c68:	4410      	add	r0, r2
 8009c6a:	1983      	adds	r3, r0, r6
 8009c6c:	428b      	cmp	r3, r1
 8009c6e:	f6ff af45 	blt.w	8009afc <_realloc_r+0xd4>
 8009c72:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009c76:	46da      	mov	sl, fp
 8009c78:	60ca      	str	r2, [r1, #12]
 8009c7a:	6091      	str	r1, [r2, #8]
 8009c7c:	e742      	b.n	8009b04 <_realloc_r+0xdc>
 8009c7e:	6001      	str	r1, [r0, #0]
 8009c80:	686b      	ldr	r3, [r5, #4]
 8009c82:	6043      	str	r3, [r0, #4]
 8009c84:	2a1b      	cmp	r2, #27
 8009c86:	d83a      	bhi.n	8009cfe <_realloc_r+0x2d6>
 8009c88:	f105 0208 	add.w	r2, r5, #8
 8009c8c:	f100 0308 	add.w	r3, r0, #8
 8009c90:	68a9      	ldr	r1, [r5, #8]
 8009c92:	e710      	b.n	8009ab6 <_realloc_r+0x8e>
 8009c94:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009c98:	f023 0303 	bic.w	r3, r3, #3
 8009c9c:	441e      	add	r6, r3
 8009c9e:	eb07 0906 	add.w	r9, r7, r6
 8009ca2:	e753      	b.n	8009b4c <_realloc_r+0x124>
 8009ca4:	4652      	mov	r2, sl
 8009ca6:	e749      	b.n	8009b3c <_realloc_r+0x114>
 8009ca8:	4629      	mov	r1, r5
 8009caa:	4650      	mov	r0, sl
 8009cac:	461e      	mov	r6, r3
 8009cae:	465f      	mov	r7, fp
 8009cb0:	f7ff fb40 	bl	8009334 <memmove>
 8009cb4:	4655      	mov	r5, sl
 8009cb6:	e749      	b.n	8009b4c <_realloc_r+0x124>
 8009cb8:	4629      	mov	r1, r5
 8009cba:	f7ff fb3b 	bl	8009334 <memmove>
 8009cbe:	e6ff      	b.n	8009ac0 <_realloc_r+0x98>
 8009cc0:	4427      	add	r7, r4
 8009cc2:	eba9 0904 	sub.w	r9, r9, r4
 8009cc6:	f049 0201 	orr.w	r2, r9, #1
 8009cca:	609f      	str	r7, [r3, #8]
 8009ccc:	607a      	str	r2, [r7, #4]
 8009cce:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009cd2:	f003 0301 	and.w	r3, r3, #1
 8009cd6:	431c      	orrs	r4, r3
 8009cd8:	4640      	mov	r0, r8
 8009cda:	f845 4c04 	str.w	r4, [r5, #-4]
 8009cde:	f7ff fb93 	bl	8009408 <__malloc_unlock>
 8009ce2:	46aa      	mov	sl, r5
 8009ce4:	e744      	b.n	8009b70 <_realloc_r+0x148>
 8009ce6:	f8cb 1010 	str.w	r1, [fp, #16]
 8009cea:	68e9      	ldr	r1, [r5, #12]
 8009cec:	f8cb 1014 	str.w	r1, [fp, #20]
 8009cf0:	2a24      	cmp	r2, #36	; 0x24
 8009cf2:	d010      	beq.n	8009d16 <_realloc_r+0x2ee>
 8009cf4:	6929      	ldr	r1, [r5, #16]
 8009cf6:	f10b 0218 	add.w	r2, fp, #24
 8009cfa:	3510      	adds	r5, #16
 8009cfc:	e71e      	b.n	8009b3c <_realloc_r+0x114>
 8009cfe:	68ab      	ldr	r3, [r5, #8]
 8009d00:	6083      	str	r3, [r0, #8]
 8009d02:	68eb      	ldr	r3, [r5, #12]
 8009d04:	60c3      	str	r3, [r0, #12]
 8009d06:	2a24      	cmp	r2, #36	; 0x24
 8009d08:	d010      	beq.n	8009d2c <_realloc_r+0x304>
 8009d0a:	f105 0210 	add.w	r2, r5, #16
 8009d0e:	f100 0310 	add.w	r3, r0, #16
 8009d12:	6929      	ldr	r1, [r5, #16]
 8009d14:	e6cf      	b.n	8009ab6 <_realloc_r+0x8e>
 8009d16:	692a      	ldr	r2, [r5, #16]
 8009d18:	f8cb 2018 	str.w	r2, [fp, #24]
 8009d1c:	696a      	ldr	r2, [r5, #20]
 8009d1e:	f8cb 201c 	str.w	r2, [fp, #28]
 8009d22:	69a9      	ldr	r1, [r5, #24]
 8009d24:	f10b 0220 	add.w	r2, fp, #32
 8009d28:	3518      	adds	r5, #24
 8009d2a:	e707      	b.n	8009b3c <_realloc_r+0x114>
 8009d2c:	692b      	ldr	r3, [r5, #16]
 8009d2e:	6103      	str	r3, [r0, #16]
 8009d30:	696b      	ldr	r3, [r5, #20]
 8009d32:	6143      	str	r3, [r0, #20]
 8009d34:	69a9      	ldr	r1, [r5, #24]
 8009d36:	f105 0218 	add.w	r2, r5, #24
 8009d3a:	f100 0318 	add.w	r3, r0, #24
 8009d3e:	e6ba      	b.n	8009ab6 <_realloc_r+0x8e>
 8009d40:	4652      	mov	r2, sl
 8009d42:	e76e      	b.n	8009c22 <_realloc_r+0x1fa>
 8009d44:	4629      	mov	r1, r5
 8009d46:	4650      	mov	r0, sl
 8009d48:	9301      	str	r3, [sp, #4]
 8009d4a:	f7ff faf3 	bl	8009334 <memmove>
 8009d4e:	9b01      	ldr	r3, [sp, #4]
 8009d50:	e76c      	b.n	8009c2c <_realloc_r+0x204>
 8009d52:	f8cb 1010 	str.w	r1, [fp, #16]
 8009d56:	68e9      	ldr	r1, [r5, #12]
 8009d58:	f8cb 1014 	str.w	r1, [fp, #20]
 8009d5c:	2a24      	cmp	r2, #36	; 0x24
 8009d5e:	d004      	beq.n	8009d6a <_realloc_r+0x342>
 8009d60:	6929      	ldr	r1, [r5, #16]
 8009d62:	f10b 0218 	add.w	r2, fp, #24
 8009d66:	3510      	adds	r5, #16
 8009d68:	e75b      	b.n	8009c22 <_realloc_r+0x1fa>
 8009d6a:	692a      	ldr	r2, [r5, #16]
 8009d6c:	f8cb 2018 	str.w	r2, [fp, #24]
 8009d70:	696a      	ldr	r2, [r5, #20]
 8009d72:	f8cb 201c 	str.w	r2, [fp, #28]
 8009d76:	69a9      	ldr	r1, [r5, #24]
 8009d78:	f10b 0220 	add.w	r2, fp, #32
 8009d7c:	3518      	adds	r5, #24
 8009d7e:	e750      	b.n	8009c22 <_realloc_r+0x1fa>
 8009d80:	2000044c 	.word	0x2000044c

08009d84 <frexp>:
 8009d84:	ec53 2b10 	vmov	r2, r3, d0
 8009d88:	b570      	push	{r4, r5, r6, lr}
 8009d8a:	4e16      	ldr	r6, [pc, #88]	; (8009de4 <frexp+0x60>)
 8009d8c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8009d90:	2500      	movs	r5, #0
 8009d92:	42b1      	cmp	r1, r6
 8009d94:	4604      	mov	r4, r0
 8009d96:	6005      	str	r5, [r0, #0]
 8009d98:	dc21      	bgt.n	8009dde <frexp+0x5a>
 8009d9a:	ee10 6a10 	vmov	r6, s0
 8009d9e:	430e      	orrs	r6, r1
 8009da0:	d01d      	beq.n	8009dde <frexp+0x5a>
 8009da2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8009da6:	4618      	mov	r0, r3
 8009da8:	da0c      	bge.n	8009dc4 <frexp+0x40>
 8009daa:	4619      	mov	r1, r3
 8009dac:	2200      	movs	r2, #0
 8009dae:	ee10 0a10 	vmov	r0, s0
 8009db2:	4b0d      	ldr	r3, [pc, #52]	; (8009de8 <frexp+0x64>)
 8009db4:	f7f6 fbe0 	bl	8000578 <__aeabi_dmul>
 8009db8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8009dbc:	4602      	mov	r2, r0
 8009dbe:	4608      	mov	r0, r1
 8009dc0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8009dc4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8009dc8:	1509      	asrs	r1, r1, #20
 8009dca:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8009dce:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8009dd2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8009dd6:	4429      	add	r1, r5
 8009dd8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8009ddc:	6021      	str	r1, [r4, #0]
 8009dde:	ec43 2b10 	vmov	d0, r2, r3
 8009de2:	bd70      	pop	{r4, r5, r6, pc}
 8009de4:	7fefffff 	.word	0x7fefffff
 8009de8:	43500000 	.word	0x43500000

08009dec <_sbrk_r>:
 8009dec:	b538      	push	{r3, r4, r5, lr}
 8009dee:	4c07      	ldr	r4, [pc, #28]	; (8009e0c <_sbrk_r+0x20>)
 8009df0:	2300      	movs	r3, #0
 8009df2:	4605      	mov	r5, r0
 8009df4:	4608      	mov	r0, r1
 8009df6:	6023      	str	r3, [r4, #0]
 8009df8:	f7f8 fd2f 	bl	800285a <_sbrk>
 8009dfc:	1c43      	adds	r3, r0, #1
 8009dfe:	d000      	beq.n	8009e02 <_sbrk_r+0x16>
 8009e00:	bd38      	pop	{r3, r4, r5, pc}
 8009e02:	6823      	ldr	r3, [r4, #0]
 8009e04:	2b00      	cmp	r3, #0
 8009e06:	d0fb      	beq.n	8009e00 <_sbrk_r+0x14>
 8009e08:	602b      	str	r3, [r5, #0]
 8009e0a:	bd38      	pop	{r3, r4, r5, pc}
 8009e0c:	20000b0c 	.word	0x20000b0c

08009e10 <__sread>:
 8009e10:	b510      	push	{r4, lr}
 8009e12:	460c      	mov	r4, r1
 8009e14:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009e18:	f000 fabc 	bl	800a394 <_read_r>
 8009e1c:	2800      	cmp	r0, #0
 8009e1e:	db03      	blt.n	8009e28 <__sread+0x18>
 8009e20:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8009e22:	4403      	add	r3, r0
 8009e24:	6523      	str	r3, [r4, #80]	; 0x50
 8009e26:	bd10      	pop	{r4, pc}
 8009e28:	89a3      	ldrh	r3, [r4, #12]
 8009e2a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8009e2e:	81a3      	strh	r3, [r4, #12]
 8009e30:	bd10      	pop	{r4, pc}
 8009e32:	bf00      	nop

08009e34 <__swrite>:
 8009e34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009e38:	4616      	mov	r6, r2
 8009e3a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8009e3e:	461f      	mov	r7, r3
 8009e40:	05d3      	lsls	r3, r2, #23
 8009e42:	460c      	mov	r4, r1
 8009e44:	4605      	mov	r5, r0
 8009e46:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009e4a:	d507      	bpl.n	8009e5c <__swrite+0x28>
 8009e4c:	2200      	movs	r2, #0
 8009e4e:	2302      	movs	r3, #2
 8009e50:	f000 fa74 	bl	800a33c <_lseek_r>
 8009e54:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009e58:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009e5c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8009e60:	81a2      	strh	r2, [r4, #12]
 8009e62:	463b      	mov	r3, r7
 8009e64:	4632      	mov	r2, r6
 8009e66:	4628      	mov	r0, r5
 8009e68:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8009e6c:	f000 b88c 	b.w	8009f88 <_write_r>

08009e70 <__sseek>:
 8009e70:	b510      	push	{r4, lr}
 8009e72:	460c      	mov	r4, r1
 8009e74:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009e78:	f000 fa60 	bl	800a33c <_lseek_r>
 8009e7c:	89a3      	ldrh	r3, [r4, #12]
 8009e7e:	1c42      	adds	r2, r0, #1
 8009e80:	bf0e      	itee	eq
 8009e82:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8009e86:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8009e8a:	6520      	strne	r0, [r4, #80]	; 0x50
 8009e8c:	81a3      	strh	r3, [r4, #12]
 8009e8e:	bd10      	pop	{r4, pc}

08009e90 <__sclose>:
 8009e90:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009e94:	f000 b922 	b.w	800a0dc <_close_r>

08009e98 <strncpy>:
 8009e98:	ea40 0301 	orr.w	r3, r0, r1
 8009e9c:	079b      	lsls	r3, r3, #30
 8009e9e:	b470      	push	{r4, r5, r6}
 8009ea0:	d12a      	bne.n	8009ef8 <strncpy+0x60>
 8009ea2:	2a03      	cmp	r2, #3
 8009ea4:	d928      	bls.n	8009ef8 <strncpy+0x60>
 8009ea6:	460c      	mov	r4, r1
 8009ea8:	4603      	mov	r3, r0
 8009eaa:	4621      	mov	r1, r4
 8009eac:	f854 6b04 	ldr.w	r6, [r4], #4
 8009eb0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8009eb4:	ea25 0506 	bic.w	r5, r5, r6
 8009eb8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8009ebc:	d106      	bne.n	8009ecc <strncpy+0x34>
 8009ebe:	3a04      	subs	r2, #4
 8009ec0:	2a03      	cmp	r2, #3
 8009ec2:	f843 6b04 	str.w	r6, [r3], #4
 8009ec6:	4621      	mov	r1, r4
 8009ec8:	d8ef      	bhi.n	8009eaa <strncpy+0x12>
 8009eca:	b19a      	cbz	r2, 8009ef4 <strncpy+0x5c>
 8009ecc:	780c      	ldrb	r4, [r1, #0]
 8009ece:	701c      	strb	r4, [r3, #0]
 8009ed0:	3a01      	subs	r2, #1
 8009ed2:	3301      	adds	r3, #1
 8009ed4:	b13c      	cbz	r4, 8009ee6 <strncpy+0x4e>
 8009ed6:	b16a      	cbz	r2, 8009ef4 <strncpy+0x5c>
 8009ed8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8009edc:	f803 4b01 	strb.w	r4, [r3], #1
 8009ee0:	3a01      	subs	r2, #1
 8009ee2:	2c00      	cmp	r4, #0
 8009ee4:	d1f7      	bne.n	8009ed6 <strncpy+0x3e>
 8009ee6:	b12a      	cbz	r2, 8009ef4 <strncpy+0x5c>
 8009ee8:	441a      	add	r2, r3
 8009eea:	2100      	movs	r1, #0
 8009eec:	f803 1b01 	strb.w	r1, [r3], #1
 8009ef0:	4293      	cmp	r3, r2
 8009ef2:	d1fb      	bne.n	8009eec <strncpy+0x54>
 8009ef4:	bc70      	pop	{r4, r5, r6}
 8009ef6:	4770      	bx	lr
 8009ef8:	4603      	mov	r3, r0
 8009efa:	e7e6      	b.n	8009eca <strncpy+0x32>

08009efc <__sprint_r.part.0>:
 8009efc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009f00:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8009f02:	049c      	lsls	r4, r3, #18
 8009f04:	4692      	mov	sl, r2
 8009f06:	d52d      	bpl.n	8009f64 <__sprint_r.part.0+0x68>
 8009f08:	6893      	ldr	r3, [r2, #8]
 8009f0a:	6812      	ldr	r2, [r2, #0]
 8009f0c:	b343      	cbz	r3, 8009f60 <__sprint_r.part.0+0x64>
 8009f0e:	460e      	mov	r6, r1
 8009f10:	4607      	mov	r7, r0
 8009f12:	f102 0908 	add.w	r9, r2, #8
 8009f16:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8009f1a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8009f1e:	d015      	beq.n	8009f4c <__sprint_r.part.0+0x50>
 8009f20:	3d04      	subs	r5, #4
 8009f22:	2400      	movs	r4, #0
 8009f24:	e001      	b.n	8009f2a <__sprint_r.part.0+0x2e>
 8009f26:	45a0      	cmp	r8, r4
 8009f28:	d00e      	beq.n	8009f48 <__sprint_r.part.0+0x4c>
 8009f2a:	4632      	mov	r2, r6
 8009f2c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8009f30:	4638      	mov	r0, r7
 8009f32:	f000 f99d 	bl	800a270 <_fputwc_r>
 8009f36:	1c43      	adds	r3, r0, #1
 8009f38:	f104 0401 	add.w	r4, r4, #1
 8009f3c:	d1f3      	bne.n	8009f26 <__sprint_r.part.0+0x2a>
 8009f3e:	2300      	movs	r3, #0
 8009f40:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009f44:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009f48:	f8da 3008 	ldr.w	r3, [sl, #8]
 8009f4c:	f02b 0b03 	bic.w	fp, fp, #3
 8009f50:	eba3 030b 	sub.w	r3, r3, fp
 8009f54:	f8ca 3008 	str.w	r3, [sl, #8]
 8009f58:	f109 0908 	add.w	r9, r9, #8
 8009f5c:	2b00      	cmp	r3, #0
 8009f5e:	d1da      	bne.n	8009f16 <__sprint_r.part.0+0x1a>
 8009f60:	2000      	movs	r0, #0
 8009f62:	e7ec      	b.n	8009f3e <__sprint_r.part.0+0x42>
 8009f64:	f7fe fd0c 	bl	8008980 <__sfvwrite_r>
 8009f68:	2300      	movs	r3, #0
 8009f6a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009f6e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009f72:	bf00      	nop

08009f74 <__sprint_r>:
 8009f74:	6893      	ldr	r3, [r2, #8]
 8009f76:	b10b      	cbz	r3, 8009f7c <__sprint_r+0x8>
 8009f78:	f7ff bfc0 	b.w	8009efc <__sprint_r.part.0>
 8009f7c:	b410      	push	{r4}
 8009f7e:	4618      	mov	r0, r3
 8009f80:	6053      	str	r3, [r2, #4]
 8009f82:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009f86:	4770      	bx	lr

08009f88 <_write_r>:
 8009f88:	b570      	push	{r4, r5, r6, lr}
 8009f8a:	460d      	mov	r5, r1
 8009f8c:	4c08      	ldr	r4, [pc, #32]	; (8009fb0 <_write_r+0x28>)
 8009f8e:	4611      	mov	r1, r2
 8009f90:	4606      	mov	r6, r0
 8009f92:	461a      	mov	r2, r3
 8009f94:	4628      	mov	r0, r5
 8009f96:	2300      	movs	r3, #0
 8009f98:	6023      	str	r3, [r4, #0]
 8009f9a:	f7f8 fc4b 	bl	8002834 <_write>
 8009f9e:	1c43      	adds	r3, r0, #1
 8009fa0:	d000      	beq.n	8009fa4 <_write_r+0x1c>
 8009fa2:	bd70      	pop	{r4, r5, r6, pc}
 8009fa4:	6823      	ldr	r3, [r4, #0]
 8009fa6:	2b00      	cmp	r3, #0
 8009fa8:	d0fb      	beq.n	8009fa2 <_write_r+0x1a>
 8009faa:	6033      	str	r3, [r6, #0]
 8009fac:	bd70      	pop	{r4, r5, r6, pc}
 8009fae:	bf00      	nop
 8009fb0:	20000b0c 	.word	0x20000b0c

08009fb4 <__register_exitproc>:
 8009fb4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8009fb8:	4d2b      	ldr	r5, [pc, #172]	; (800a068 <__register_exitproc+0xb4>)
 8009fba:	4606      	mov	r6, r0
 8009fbc:	6828      	ldr	r0, [r5, #0]
 8009fbe:	4698      	mov	r8, r3
 8009fc0:	460f      	mov	r7, r1
 8009fc2:	4691      	mov	r9, r2
 8009fc4:	f7fe fe96 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 8009fc8:	4b28      	ldr	r3, [pc, #160]	; (800a06c <__register_exitproc+0xb8>)
 8009fca:	681c      	ldr	r4, [r3, #0]
 8009fcc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8009fd0:	2b00      	cmp	r3, #0
 8009fd2:	d03d      	beq.n	800a050 <__register_exitproc+0x9c>
 8009fd4:	685a      	ldr	r2, [r3, #4]
 8009fd6:	2a1f      	cmp	r2, #31
 8009fd8:	dc0d      	bgt.n	8009ff6 <__register_exitproc+0x42>
 8009fda:	f102 0c01 	add.w	ip, r2, #1
 8009fde:	bb16      	cbnz	r6, 800a026 <__register_exitproc+0x72>
 8009fe0:	3202      	adds	r2, #2
 8009fe2:	f8c3 c004 	str.w	ip, [r3, #4]
 8009fe6:	6828      	ldr	r0, [r5, #0]
 8009fe8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8009fec:	f7fe fe84 	bl	8008cf8 <__retarget_lock_release_recursive>
 8009ff0:	2000      	movs	r0, #0
 8009ff2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009ff6:	4b1e      	ldr	r3, [pc, #120]	; (800a070 <__register_exitproc+0xbc>)
 8009ff8:	b37b      	cbz	r3, 800a05a <__register_exitproc+0xa6>
 8009ffa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8009ffe:	f3af 8000 	nop.w
 800a002:	4603      	mov	r3, r0
 800a004:	b348      	cbz	r0, 800a05a <__register_exitproc+0xa6>
 800a006:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800a00a:	2100      	movs	r1, #0
 800a00c:	e9c0 2100 	strd	r2, r1, [r0]
 800a010:	f04f 0c01 	mov.w	ip, #1
 800a014:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 800a018:	460a      	mov	r2, r1
 800a01a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800a01e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800a022:	2e00      	cmp	r6, #0
 800a024:	d0dc      	beq.n	8009fe0 <__register_exitproc+0x2c>
 800a026:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800a02a:	2401      	movs	r4, #1
 800a02c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800a030:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800a034:	4094      	lsls	r4, r2
 800a036:	4320      	orrs	r0, r4
 800a038:	2e02      	cmp	r6, #2
 800a03a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800a03e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800a042:	d1cd      	bne.n	8009fe0 <__register_exitproc+0x2c>
 800a044:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 800a048:	430c      	orrs	r4, r1
 800a04a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800a04e:	e7c7      	b.n	8009fe0 <__register_exitproc+0x2c>
 800a050:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800a054:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 800a058:	e7bc      	b.n	8009fd4 <__register_exitproc+0x20>
 800a05a:	6828      	ldr	r0, [r5, #0]
 800a05c:	f7fe fe4c 	bl	8008cf8 <__retarget_lock_release_recursive>
 800a060:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a064:	e7c5      	b.n	8009ff2 <__register_exitproc+0x3e>
 800a066:	bf00      	nop
 800a068:	20000448 	.word	0x20000448
 800a06c:	0800a850 	.word	0x0800a850
 800a070:	00000000 	.word	0x00000000

0800a074 <_calloc_r>:
 800a074:	b510      	push	{r4, lr}
 800a076:	fb02 f101 	mul.w	r1, r2, r1
 800a07a:	f7fe feb7 	bl	8008dec <_malloc_r>
 800a07e:	4604      	mov	r4, r0
 800a080:	b1d8      	cbz	r0, 800a0ba <_calloc_r+0x46>
 800a082:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800a086:	f022 0203 	bic.w	r2, r2, #3
 800a08a:	3a04      	subs	r2, #4
 800a08c:	2a24      	cmp	r2, #36	; 0x24
 800a08e:	d81d      	bhi.n	800a0cc <_calloc_r+0x58>
 800a090:	2a13      	cmp	r2, #19
 800a092:	d914      	bls.n	800a0be <_calloc_r+0x4a>
 800a094:	2300      	movs	r3, #0
 800a096:	2a1b      	cmp	r2, #27
 800a098:	e9c0 3300 	strd	r3, r3, [r0]
 800a09c:	d91b      	bls.n	800a0d6 <_calloc_r+0x62>
 800a09e:	2a24      	cmp	r2, #36	; 0x24
 800a0a0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800a0a4:	bf0a      	itet	eq
 800a0a6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800a0aa:	f100 0210 	addne.w	r2, r0, #16
 800a0ae:	f100 0218 	addeq.w	r2, r0, #24
 800a0b2:	2300      	movs	r3, #0
 800a0b4:	e9c2 3300 	strd	r3, r3, [r2]
 800a0b8:	6093      	str	r3, [r2, #8]
 800a0ba:	4620      	mov	r0, r4
 800a0bc:	bd10      	pop	{r4, pc}
 800a0be:	4602      	mov	r2, r0
 800a0c0:	2300      	movs	r3, #0
 800a0c2:	e9c2 3300 	strd	r3, r3, [r2]
 800a0c6:	6093      	str	r3, [r2, #8]
 800a0c8:	4620      	mov	r0, r4
 800a0ca:	bd10      	pop	{r4, pc}
 800a0cc:	2100      	movs	r1, #0
 800a0ce:	f7fb fb6d 	bl	80057ac <memset>
 800a0d2:	4620      	mov	r0, r4
 800a0d4:	bd10      	pop	{r4, pc}
 800a0d6:	f100 0208 	add.w	r2, r0, #8
 800a0da:	e7f1      	b.n	800a0c0 <_calloc_r+0x4c>

0800a0dc <_close_r>:
 800a0dc:	b538      	push	{r3, r4, r5, lr}
 800a0de:	4c07      	ldr	r4, [pc, #28]	; (800a0fc <_close_r+0x20>)
 800a0e0:	2300      	movs	r3, #0
 800a0e2:	4605      	mov	r5, r0
 800a0e4:	4608      	mov	r0, r1
 800a0e6:	6023      	str	r3, [r4, #0]
 800a0e8:	f7f8 fbd3 	bl	8002892 <_close>
 800a0ec:	1c43      	adds	r3, r0, #1
 800a0ee:	d000      	beq.n	800a0f2 <_close_r+0x16>
 800a0f0:	bd38      	pop	{r3, r4, r5, pc}
 800a0f2:	6823      	ldr	r3, [r4, #0]
 800a0f4:	2b00      	cmp	r3, #0
 800a0f6:	d0fb      	beq.n	800a0f0 <_close_r+0x14>
 800a0f8:	602b      	str	r3, [r5, #0]
 800a0fa:	bd38      	pop	{r3, r4, r5, pc}
 800a0fc:	20000b0c 	.word	0x20000b0c

0800a100 <_fclose_r>:
 800a100:	b570      	push	{r4, r5, r6, lr}
 800a102:	2900      	cmp	r1, #0
 800a104:	d048      	beq.n	800a198 <_fclose_r+0x98>
 800a106:	4605      	mov	r5, r0
 800a108:	460c      	mov	r4, r1
 800a10a:	b110      	cbz	r0, 800a112 <_fclose_r+0x12>
 800a10c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a10e:	2b00      	cmp	r3, #0
 800a110:	d048      	beq.n	800a1a4 <_fclose_r+0xa4>
 800a112:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a114:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a118:	07d0      	lsls	r0, r2, #31
 800a11a:	d440      	bmi.n	800a19e <_fclose_r+0x9e>
 800a11c:	0599      	lsls	r1, r3, #22
 800a11e:	d530      	bpl.n	800a182 <_fclose_r+0x82>
 800a120:	4621      	mov	r1, r4
 800a122:	4628      	mov	r0, r5
 800a124:	f7fe f990 	bl	8008448 <__sflush_r>
 800a128:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800a12a:	4606      	mov	r6, r0
 800a12c:	b133      	cbz	r3, 800a13c <_fclose_r+0x3c>
 800a12e:	69e1      	ldr	r1, [r4, #28]
 800a130:	4628      	mov	r0, r5
 800a132:	4798      	blx	r3
 800a134:	2800      	cmp	r0, #0
 800a136:	bfb8      	it	lt
 800a138:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800a13c:	89a3      	ldrh	r3, [r4, #12]
 800a13e:	061a      	lsls	r2, r3, #24
 800a140:	d43c      	bmi.n	800a1bc <_fclose_r+0xbc>
 800a142:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800a144:	b141      	cbz	r1, 800a158 <_fclose_r+0x58>
 800a146:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800a14a:	4299      	cmp	r1, r3
 800a14c:	d002      	beq.n	800a154 <_fclose_r+0x54>
 800a14e:	4628      	mov	r0, r5
 800a150:	f7fe fb22 	bl	8008798 <_free_r>
 800a154:	2300      	movs	r3, #0
 800a156:	6323      	str	r3, [r4, #48]	; 0x30
 800a158:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800a15a:	b121      	cbz	r1, 800a166 <_fclose_r+0x66>
 800a15c:	4628      	mov	r0, r5
 800a15e:	f7fe fb1b 	bl	8008798 <_free_r>
 800a162:	2300      	movs	r3, #0
 800a164:	6463      	str	r3, [r4, #68]	; 0x44
 800a166:	f7fe faa1 	bl	80086ac <__sfp_lock_acquire>
 800a16a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a16c:	2200      	movs	r2, #0
 800a16e:	07db      	lsls	r3, r3, #31
 800a170:	81a2      	strh	r2, [r4, #12]
 800a172:	d51f      	bpl.n	800a1b4 <_fclose_r+0xb4>
 800a174:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a176:	f7fe fdbb 	bl	8008cf0 <__retarget_lock_close_recursive>
 800a17a:	f7fe fa9d 	bl	80086b8 <__sfp_lock_release>
 800a17e:	4630      	mov	r0, r6
 800a180:	bd70      	pop	{r4, r5, r6, pc}
 800a182:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a184:	f7fe fdb6 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 800a188:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a18c:	2b00      	cmp	r3, #0
 800a18e:	d1c7      	bne.n	800a120 <_fclose_r+0x20>
 800a190:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800a192:	f016 0601 	ands.w	r6, r6, #1
 800a196:	d016      	beq.n	800a1c6 <_fclose_r+0xc6>
 800a198:	2600      	movs	r6, #0
 800a19a:	4630      	mov	r0, r6
 800a19c:	bd70      	pop	{r4, r5, r6, pc}
 800a19e:	2b00      	cmp	r3, #0
 800a1a0:	d0fa      	beq.n	800a198 <_fclose_r+0x98>
 800a1a2:	e7bd      	b.n	800a120 <_fclose_r+0x20>
 800a1a4:	f7fe fa56 	bl	8008654 <__sinit>
 800a1a8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a1aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a1ae:	07d0      	lsls	r0, r2, #31
 800a1b0:	d4f5      	bmi.n	800a19e <_fclose_r+0x9e>
 800a1b2:	e7b3      	b.n	800a11c <_fclose_r+0x1c>
 800a1b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a1b6:	f7fe fd9f 	bl	8008cf8 <__retarget_lock_release_recursive>
 800a1ba:	e7db      	b.n	800a174 <_fclose_r+0x74>
 800a1bc:	6921      	ldr	r1, [r4, #16]
 800a1be:	4628      	mov	r0, r5
 800a1c0:	f7fe faea 	bl	8008798 <_free_r>
 800a1c4:	e7bd      	b.n	800a142 <_fclose_r+0x42>
 800a1c6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a1c8:	f7fe fd96 	bl	8008cf8 <__retarget_lock_release_recursive>
 800a1cc:	4630      	mov	r0, r6
 800a1ce:	bd70      	pop	{r4, r5, r6, pc}

0800a1d0 <__fputwc>:
 800a1d0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800a1d4:	b082      	sub	sp, #8
 800a1d6:	4681      	mov	r9, r0
 800a1d8:	4688      	mov	r8, r1
 800a1da:	4614      	mov	r4, r2
 800a1dc:	f000 f8a0 	bl	800a320 <__locale_mb_cur_max>
 800a1e0:	2801      	cmp	r0, #1
 800a1e2:	d103      	bne.n	800a1ec <__fputwc+0x1c>
 800a1e4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800a1e8:	2bfe      	cmp	r3, #254	; 0xfe
 800a1ea:	d933      	bls.n	800a254 <__fputwc+0x84>
 800a1ec:	4642      	mov	r2, r8
 800a1ee:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800a1f2:	a901      	add	r1, sp, #4
 800a1f4:	4648      	mov	r0, r9
 800a1f6:	f000 f93b 	bl	800a470 <_wcrtomb_r>
 800a1fa:	1c42      	adds	r2, r0, #1
 800a1fc:	4606      	mov	r6, r0
 800a1fe:	d02f      	beq.n	800a260 <__fputwc+0x90>
 800a200:	b320      	cbz	r0, 800a24c <__fputwc+0x7c>
 800a202:	f89d c004 	ldrb.w	ip, [sp, #4]
 800a206:	2500      	movs	r5, #0
 800a208:	f10d 0a04 	add.w	sl, sp, #4
 800a20c:	e009      	b.n	800a222 <__fputwc+0x52>
 800a20e:	6823      	ldr	r3, [r4, #0]
 800a210:	1c5a      	adds	r2, r3, #1
 800a212:	6022      	str	r2, [r4, #0]
 800a214:	f883 c000 	strb.w	ip, [r3]
 800a218:	3501      	adds	r5, #1
 800a21a:	42b5      	cmp	r5, r6
 800a21c:	d216      	bcs.n	800a24c <__fputwc+0x7c>
 800a21e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800a222:	68a3      	ldr	r3, [r4, #8]
 800a224:	3b01      	subs	r3, #1
 800a226:	2b00      	cmp	r3, #0
 800a228:	60a3      	str	r3, [r4, #8]
 800a22a:	daf0      	bge.n	800a20e <__fputwc+0x3e>
 800a22c:	69a7      	ldr	r7, [r4, #24]
 800a22e:	42bb      	cmp	r3, r7
 800a230:	4661      	mov	r1, ip
 800a232:	4622      	mov	r2, r4
 800a234:	4648      	mov	r0, r9
 800a236:	db02      	blt.n	800a23e <__fputwc+0x6e>
 800a238:	f1bc 0f0a 	cmp.w	ip, #10
 800a23c:	d1e7      	bne.n	800a20e <__fputwc+0x3e>
 800a23e:	f000 f8bf 	bl	800a3c0 <__swbuf_r>
 800a242:	1c43      	adds	r3, r0, #1
 800a244:	d1e8      	bne.n	800a218 <__fputwc+0x48>
 800a246:	b002      	add	sp, #8
 800a248:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a24c:	4640      	mov	r0, r8
 800a24e:	b002      	add	sp, #8
 800a250:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a254:	fa5f fc88 	uxtb.w	ip, r8
 800a258:	4606      	mov	r6, r0
 800a25a:	f88d c004 	strb.w	ip, [sp, #4]
 800a25e:	e7d2      	b.n	800a206 <__fputwc+0x36>
 800a260:	89a3      	ldrh	r3, [r4, #12]
 800a262:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a266:	81a3      	strh	r3, [r4, #12]
 800a268:	b002      	add	sp, #8
 800a26a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800a26e:	bf00      	nop

0800a270 <_fputwc_r>:
 800a270:	b530      	push	{r4, r5, lr}
 800a272:	4605      	mov	r5, r0
 800a274:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800a276:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800a27a:	07c0      	lsls	r0, r0, #31
 800a27c:	4614      	mov	r4, r2
 800a27e:	b083      	sub	sp, #12
 800a280:	b29a      	uxth	r2, r3
 800a282:	d401      	bmi.n	800a288 <_fputwc_r+0x18>
 800a284:	0590      	lsls	r0, r2, #22
 800a286:	d51c      	bpl.n	800a2c2 <_fputwc_r+0x52>
 800a288:	0490      	lsls	r0, r2, #18
 800a28a:	d406      	bmi.n	800a29a <_fputwc_r+0x2a>
 800a28c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800a28e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800a292:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a296:	81a3      	strh	r3, [r4, #12]
 800a298:	6662      	str	r2, [r4, #100]	; 0x64
 800a29a:	4628      	mov	r0, r5
 800a29c:	4622      	mov	r2, r4
 800a29e:	f7ff ff97 	bl	800a1d0 <__fputwc>
 800a2a2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a2a4:	07da      	lsls	r2, r3, #31
 800a2a6:	4605      	mov	r5, r0
 800a2a8:	d402      	bmi.n	800a2b0 <_fputwc_r+0x40>
 800a2aa:	89a3      	ldrh	r3, [r4, #12]
 800a2ac:	059b      	lsls	r3, r3, #22
 800a2ae:	d502      	bpl.n	800a2b6 <_fputwc_r+0x46>
 800a2b0:	4628      	mov	r0, r5
 800a2b2:	b003      	add	sp, #12
 800a2b4:	bd30      	pop	{r4, r5, pc}
 800a2b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a2b8:	f7fe fd1e 	bl	8008cf8 <__retarget_lock_release_recursive>
 800a2bc:	4628      	mov	r0, r5
 800a2be:	b003      	add	sp, #12
 800a2c0:	bd30      	pop	{r4, r5, pc}
 800a2c2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800a2c4:	9101      	str	r1, [sp, #4]
 800a2c6:	f7fe fd15 	bl	8008cf4 <__retarget_lock_acquire_recursive>
 800a2ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a2ce:	9901      	ldr	r1, [sp, #4]
 800a2d0:	b29a      	uxth	r2, r3
 800a2d2:	e7d9      	b.n	800a288 <_fputwc_r+0x18>

0800a2d4 <_fstat_r>:
 800a2d4:	b538      	push	{r3, r4, r5, lr}
 800a2d6:	460b      	mov	r3, r1
 800a2d8:	4c07      	ldr	r4, [pc, #28]	; (800a2f8 <_fstat_r+0x24>)
 800a2da:	4605      	mov	r5, r0
 800a2dc:	4611      	mov	r1, r2
 800a2de:	4618      	mov	r0, r3
 800a2e0:	2300      	movs	r3, #0
 800a2e2:	6023      	str	r3, [r4, #0]
 800a2e4:	f7f8 fad8 	bl	8002898 <_fstat>
 800a2e8:	1c43      	adds	r3, r0, #1
 800a2ea:	d000      	beq.n	800a2ee <_fstat_r+0x1a>
 800a2ec:	bd38      	pop	{r3, r4, r5, pc}
 800a2ee:	6823      	ldr	r3, [r4, #0]
 800a2f0:	2b00      	cmp	r3, #0
 800a2f2:	d0fb      	beq.n	800a2ec <_fstat_r+0x18>
 800a2f4:	602b      	str	r3, [r5, #0]
 800a2f6:	bd38      	pop	{r3, r4, r5, pc}
 800a2f8:	20000b0c 	.word	0x20000b0c

0800a2fc <_isatty_r>:
 800a2fc:	b538      	push	{r3, r4, r5, lr}
 800a2fe:	4c07      	ldr	r4, [pc, #28]	; (800a31c <_isatty_r+0x20>)
 800a300:	2300      	movs	r3, #0
 800a302:	4605      	mov	r5, r0
 800a304:	4608      	mov	r0, r1
 800a306:	6023      	str	r3, [r4, #0]
 800a308:	f7f8 facb 	bl	80028a2 <_isatty>
 800a30c:	1c43      	adds	r3, r0, #1
 800a30e:	d000      	beq.n	800a312 <_isatty_r+0x16>
 800a310:	bd38      	pop	{r3, r4, r5, pc}
 800a312:	6823      	ldr	r3, [r4, #0]
 800a314:	2b00      	cmp	r3, #0
 800a316:	d0fb      	beq.n	800a310 <_isatty_r+0x14>
 800a318:	602b      	str	r3, [r5, #0]
 800a31a:	bd38      	pop	{r3, r4, r5, pc}
 800a31c:	20000b0c 	.word	0x20000b0c

0800a320 <__locale_mb_cur_max>:
 800a320:	4b04      	ldr	r3, [pc, #16]	; (800a334 <__locale_mb_cur_max+0x14>)
 800a322:	4a05      	ldr	r2, [pc, #20]	; (800a338 <__locale_mb_cur_max+0x18>)
 800a324:	681b      	ldr	r3, [r3, #0]
 800a326:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800a328:	2b00      	cmp	r3, #0
 800a32a:	bf08      	it	eq
 800a32c:	4613      	moveq	r3, r2
 800a32e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800a332:	4770      	bx	lr
 800a334:	2000001c 	.word	0x2000001c
 800a338:	2000085c 	.word	0x2000085c

0800a33c <_lseek_r>:
 800a33c:	b570      	push	{r4, r5, r6, lr}
 800a33e:	460d      	mov	r5, r1
 800a340:	4c08      	ldr	r4, [pc, #32]	; (800a364 <_lseek_r+0x28>)
 800a342:	4611      	mov	r1, r2
 800a344:	4606      	mov	r6, r0
 800a346:	461a      	mov	r2, r3
 800a348:	4628      	mov	r0, r5
 800a34a:	2300      	movs	r3, #0
 800a34c:	6023      	str	r3, [r4, #0]
 800a34e:	f7f8 faaa 	bl	80028a6 <_lseek>
 800a352:	1c43      	adds	r3, r0, #1
 800a354:	d000      	beq.n	800a358 <_lseek_r+0x1c>
 800a356:	bd70      	pop	{r4, r5, r6, pc}
 800a358:	6823      	ldr	r3, [r4, #0]
 800a35a:	2b00      	cmp	r3, #0
 800a35c:	d0fb      	beq.n	800a356 <_lseek_r+0x1a>
 800a35e:	6033      	str	r3, [r6, #0]
 800a360:	bd70      	pop	{r4, r5, r6, pc}
 800a362:	bf00      	nop
 800a364:	20000b0c 	.word	0x20000b0c

0800a368 <__ascii_mbtowc>:
 800a368:	b082      	sub	sp, #8
 800a36a:	b149      	cbz	r1, 800a380 <__ascii_mbtowc+0x18>
 800a36c:	b15a      	cbz	r2, 800a386 <__ascii_mbtowc+0x1e>
 800a36e:	b16b      	cbz	r3, 800a38c <__ascii_mbtowc+0x24>
 800a370:	7813      	ldrb	r3, [r2, #0]
 800a372:	600b      	str	r3, [r1, #0]
 800a374:	7812      	ldrb	r2, [r2, #0]
 800a376:	1c10      	adds	r0, r2, #0
 800a378:	bf18      	it	ne
 800a37a:	2001      	movne	r0, #1
 800a37c:	b002      	add	sp, #8
 800a37e:	4770      	bx	lr
 800a380:	a901      	add	r1, sp, #4
 800a382:	2a00      	cmp	r2, #0
 800a384:	d1f3      	bne.n	800a36e <__ascii_mbtowc+0x6>
 800a386:	4610      	mov	r0, r2
 800a388:	b002      	add	sp, #8
 800a38a:	4770      	bx	lr
 800a38c:	f06f 0001 	mvn.w	r0, #1
 800a390:	e7f4      	b.n	800a37c <__ascii_mbtowc+0x14>
 800a392:	bf00      	nop

0800a394 <_read_r>:
 800a394:	b570      	push	{r4, r5, r6, lr}
 800a396:	460d      	mov	r5, r1
 800a398:	4c08      	ldr	r4, [pc, #32]	; (800a3bc <_read_r+0x28>)
 800a39a:	4611      	mov	r1, r2
 800a39c:	4606      	mov	r6, r0
 800a39e:	461a      	mov	r2, r3
 800a3a0:	4628      	mov	r0, r5
 800a3a2:	2300      	movs	r3, #0
 800a3a4:	6023      	str	r3, [r4, #0]
 800a3a6:	f7f8 fa32 	bl	800280e <_read>
 800a3aa:	1c43      	adds	r3, r0, #1
 800a3ac:	d000      	beq.n	800a3b0 <_read_r+0x1c>
 800a3ae:	bd70      	pop	{r4, r5, r6, pc}
 800a3b0:	6823      	ldr	r3, [r4, #0]
 800a3b2:	2b00      	cmp	r3, #0
 800a3b4:	d0fb      	beq.n	800a3ae <_read_r+0x1a>
 800a3b6:	6033      	str	r3, [r6, #0]
 800a3b8:	bd70      	pop	{r4, r5, r6, pc}
 800a3ba:	bf00      	nop
 800a3bc:	20000b0c 	.word	0x20000b0c

0800a3c0 <__swbuf_r>:
 800a3c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a3c2:	460d      	mov	r5, r1
 800a3c4:	4614      	mov	r4, r2
 800a3c6:	4606      	mov	r6, r0
 800a3c8:	b110      	cbz	r0, 800a3d0 <__swbuf_r+0x10>
 800a3ca:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a3cc:	2b00      	cmp	r3, #0
 800a3ce:	d043      	beq.n	800a458 <__swbuf_r+0x98>
 800a3d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a3d4:	69a3      	ldr	r3, [r4, #24]
 800a3d6:	60a3      	str	r3, [r4, #8]
 800a3d8:	b291      	uxth	r1, r2
 800a3da:	0708      	lsls	r0, r1, #28
 800a3dc:	d51b      	bpl.n	800a416 <__swbuf_r+0x56>
 800a3de:	6923      	ldr	r3, [r4, #16]
 800a3e0:	b1cb      	cbz	r3, 800a416 <__swbuf_r+0x56>
 800a3e2:	b2ed      	uxtb	r5, r5
 800a3e4:	0489      	lsls	r1, r1, #18
 800a3e6:	462f      	mov	r7, r5
 800a3e8:	d522      	bpl.n	800a430 <__swbuf_r+0x70>
 800a3ea:	6822      	ldr	r2, [r4, #0]
 800a3ec:	6961      	ldr	r1, [r4, #20]
 800a3ee:	1ad3      	subs	r3, r2, r3
 800a3f0:	4299      	cmp	r1, r3
 800a3f2:	dd29      	ble.n	800a448 <__swbuf_r+0x88>
 800a3f4:	3301      	adds	r3, #1
 800a3f6:	68a1      	ldr	r1, [r4, #8]
 800a3f8:	1c50      	adds	r0, r2, #1
 800a3fa:	3901      	subs	r1, #1
 800a3fc:	60a1      	str	r1, [r4, #8]
 800a3fe:	6020      	str	r0, [r4, #0]
 800a400:	7015      	strb	r5, [r2, #0]
 800a402:	6962      	ldr	r2, [r4, #20]
 800a404:	429a      	cmp	r2, r3
 800a406:	d02a      	beq.n	800a45e <__swbuf_r+0x9e>
 800a408:	89a3      	ldrh	r3, [r4, #12]
 800a40a:	07db      	lsls	r3, r3, #31
 800a40c:	d501      	bpl.n	800a412 <__swbuf_r+0x52>
 800a40e:	2d0a      	cmp	r5, #10
 800a410:	d025      	beq.n	800a45e <__swbuf_r+0x9e>
 800a412:	4638      	mov	r0, r7
 800a414:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a416:	4621      	mov	r1, r4
 800a418:	4630      	mov	r0, r6
 800a41a:	f7fc fffd 	bl	8007418 <__swsetup_r>
 800a41e:	bb20      	cbnz	r0, 800a46a <__swbuf_r+0xaa>
 800a420:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a424:	6923      	ldr	r3, [r4, #16]
 800a426:	b291      	uxth	r1, r2
 800a428:	b2ed      	uxtb	r5, r5
 800a42a:	0489      	lsls	r1, r1, #18
 800a42c:	462f      	mov	r7, r5
 800a42e:	d4dc      	bmi.n	800a3ea <__swbuf_r+0x2a>
 800a430:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800a432:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a436:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800a43a:	81a2      	strh	r2, [r4, #12]
 800a43c:	6822      	ldr	r2, [r4, #0]
 800a43e:	6661      	str	r1, [r4, #100]	; 0x64
 800a440:	6961      	ldr	r1, [r4, #20]
 800a442:	1ad3      	subs	r3, r2, r3
 800a444:	4299      	cmp	r1, r3
 800a446:	dcd5      	bgt.n	800a3f4 <__swbuf_r+0x34>
 800a448:	4621      	mov	r1, r4
 800a44a:	4630      	mov	r0, r6
 800a44c:	f7fe f8a6 	bl	800859c <_fflush_r>
 800a450:	b958      	cbnz	r0, 800a46a <__swbuf_r+0xaa>
 800a452:	6822      	ldr	r2, [r4, #0]
 800a454:	2301      	movs	r3, #1
 800a456:	e7ce      	b.n	800a3f6 <__swbuf_r+0x36>
 800a458:	f7fe f8fc 	bl	8008654 <__sinit>
 800a45c:	e7b8      	b.n	800a3d0 <__swbuf_r+0x10>
 800a45e:	4621      	mov	r1, r4
 800a460:	4630      	mov	r0, r6
 800a462:	f7fe f89b 	bl	800859c <_fflush_r>
 800a466:	2800      	cmp	r0, #0
 800a468:	d0d3      	beq.n	800a412 <__swbuf_r+0x52>
 800a46a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800a46e:	e7d0      	b.n	800a412 <__swbuf_r+0x52>

0800a470 <_wcrtomb_r>:
 800a470:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a472:	4c11      	ldr	r4, [pc, #68]	; (800a4b8 <_wcrtomb_r+0x48>)
 800a474:	6824      	ldr	r4, [r4, #0]
 800a476:	b085      	sub	sp, #20
 800a478:	4606      	mov	r6, r0
 800a47a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800a47c:	461f      	mov	r7, r3
 800a47e:	b151      	cbz	r1, 800a496 <_wcrtomb_r+0x26>
 800a480:	4d0e      	ldr	r5, [pc, #56]	; (800a4bc <_wcrtomb_r+0x4c>)
 800a482:	2c00      	cmp	r4, #0
 800a484:	bf08      	it	eq
 800a486:	462c      	moveq	r4, r5
 800a488:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a48c:	47a0      	blx	r4
 800a48e:	1c43      	adds	r3, r0, #1
 800a490:	d00c      	beq.n	800a4ac <_wcrtomb_r+0x3c>
 800a492:	b005      	add	sp, #20
 800a494:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a496:	4a09      	ldr	r2, [pc, #36]	; (800a4bc <_wcrtomb_r+0x4c>)
 800a498:	2c00      	cmp	r4, #0
 800a49a:	bf08      	it	eq
 800a49c:	4614      	moveq	r4, r2
 800a49e:	460a      	mov	r2, r1
 800a4a0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a4a4:	a901      	add	r1, sp, #4
 800a4a6:	47a0      	blx	r4
 800a4a8:	1c43      	adds	r3, r0, #1
 800a4aa:	d1f2      	bne.n	800a492 <_wcrtomb_r+0x22>
 800a4ac:	2200      	movs	r2, #0
 800a4ae:	238a      	movs	r3, #138	; 0x8a
 800a4b0:	603a      	str	r2, [r7, #0]
 800a4b2:	6033      	str	r3, [r6, #0]
 800a4b4:	b005      	add	sp, #20
 800a4b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a4b8:	2000001c 	.word	0x2000001c
 800a4bc:	2000085c 	.word	0x2000085c

0800a4c0 <__ascii_wctomb>:
 800a4c0:	b121      	cbz	r1, 800a4cc <__ascii_wctomb+0xc>
 800a4c2:	2aff      	cmp	r2, #255	; 0xff
 800a4c4:	d804      	bhi.n	800a4d0 <__ascii_wctomb+0x10>
 800a4c6:	700a      	strb	r2, [r1, #0]
 800a4c8:	2001      	movs	r0, #1
 800a4ca:	4770      	bx	lr
 800a4cc:	4608      	mov	r0, r1
 800a4ce:	4770      	bx	lr
 800a4d0:	238a      	movs	r3, #138	; 0x8a
 800a4d2:	6003      	str	r3, [r0, #0]
 800a4d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a4d8:	4770      	bx	lr
 800a4da:	bf00      	nop

0800a4dc <_init>:
 800a4dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a4de:	bf00      	nop
 800a4e0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a4e2:	bc08      	pop	{r3}
 800a4e4:	469e      	mov	lr, r3
 800a4e6:	4770      	bx	lr

0800a4e8 <_fini>:
 800a4e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a4ea:	bf00      	nop
 800a4ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a4ee:	bc08      	pop	{r3}
 800a4f0:	469e      	mov	lr, r3
 800a4f2:	4770      	bx	lr
 800a4f4:	0000      	movs	r0, r0
	...
