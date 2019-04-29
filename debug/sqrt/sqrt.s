
sqrt.elf:     file format elf32-littlearm


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
 80001e0:	0800700c 	.word	0x0800700c

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
 80001fc:	0800700c 	.word	0x0800700c

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

08000aac <__aeabi_d2f>:
 8000aac:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000ab0:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8000ab4:	bf24      	itt	cs
 8000ab6:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8000aba:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8000abe:	d90d      	bls.n	8000adc <__aeabi_d2f+0x30>
 8000ac0:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8000ac4:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8000ac8:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8000acc:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8000ad0:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8000ad4:	bf08      	it	eq
 8000ad6:	f020 0001 	biceq.w	r0, r0, #1
 8000ada:	4770      	bx	lr
 8000adc:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8000ae0:	d121      	bne.n	8000b26 <__aeabi_d2f+0x7a>
 8000ae2:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8000ae6:	bfbc      	itt	lt
 8000ae8:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8000aec:	4770      	bxlt	lr
 8000aee:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000af2:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8000af6:	f1c2 0218 	rsb	r2, r2, #24
 8000afa:	f1c2 0c20 	rsb	ip, r2, #32
 8000afe:	fa10 f30c 	lsls.w	r3, r0, ip
 8000b02:	fa20 f002 	lsr.w	r0, r0, r2
 8000b06:	bf18      	it	ne
 8000b08:	f040 0001 	orrne.w	r0, r0, #1
 8000b0c:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000b10:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8000b14:	fa03 fc0c 	lsl.w	ip, r3, ip
 8000b18:	ea40 000c 	orr.w	r0, r0, ip
 8000b1c:	fa23 f302 	lsr.w	r3, r3, r2
 8000b20:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8000b24:	e7cc      	b.n	8000ac0 <__aeabi_d2f+0x14>
 8000b26:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8000b2a:	d107      	bne.n	8000b3c <__aeabi_d2f+0x90>
 8000b2c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8000b30:	bf1e      	ittt	ne
 8000b32:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8000b36:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8000b3a:	4770      	bxne	lr
 8000b3c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8000b40:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8000b44:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8000b48:	4770      	bx	lr
 8000b4a:	bf00      	nop

08000b4c <__aeabi_uldivmod>:
 8000b4c:	b953      	cbnz	r3, 8000b64 <__aeabi_uldivmod+0x18>
 8000b4e:	b94a      	cbnz	r2, 8000b64 <__aeabi_uldivmod+0x18>
 8000b50:	2900      	cmp	r1, #0
 8000b52:	bf08      	it	eq
 8000b54:	2800      	cmpeq	r0, #0
 8000b56:	bf1c      	itt	ne
 8000b58:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000b5c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000b60:	f000 b972 	b.w	8000e48 <__aeabi_idiv0>
 8000b64:	f1ad 0c08 	sub.w	ip, sp, #8
 8000b68:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000b6c:	f000 f806 	bl	8000b7c <__udivmoddi4>
 8000b70:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b74:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b78:	b004      	add	sp, #16
 8000b7a:	4770      	bx	lr

08000b7c <__udivmoddi4>:
 8000b7c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b80:	9e08      	ldr	r6, [sp, #32]
 8000b82:	4604      	mov	r4, r0
 8000b84:	4688      	mov	r8, r1
 8000b86:	2b00      	cmp	r3, #0
 8000b88:	d14b      	bne.n	8000c22 <__udivmoddi4+0xa6>
 8000b8a:	428a      	cmp	r2, r1
 8000b8c:	4615      	mov	r5, r2
 8000b8e:	d967      	bls.n	8000c60 <__udivmoddi4+0xe4>
 8000b90:	fab2 f282 	clz	r2, r2
 8000b94:	b14a      	cbz	r2, 8000baa <__udivmoddi4+0x2e>
 8000b96:	f1c2 0720 	rsb	r7, r2, #32
 8000b9a:	fa01 f302 	lsl.w	r3, r1, r2
 8000b9e:	fa20 f707 	lsr.w	r7, r0, r7
 8000ba2:	4095      	lsls	r5, r2
 8000ba4:	ea47 0803 	orr.w	r8, r7, r3
 8000ba8:	4094      	lsls	r4, r2
 8000baa:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000bae:	0c23      	lsrs	r3, r4, #16
 8000bb0:	fbb8 f7fe 	udiv	r7, r8, lr
 8000bb4:	fa1f fc85 	uxth.w	ip, r5
 8000bb8:	fb0e 8817 	mls	r8, lr, r7, r8
 8000bbc:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000bc0:	fb07 f10c 	mul.w	r1, r7, ip
 8000bc4:	4299      	cmp	r1, r3
 8000bc6:	d909      	bls.n	8000bdc <__udivmoddi4+0x60>
 8000bc8:	18eb      	adds	r3, r5, r3
 8000bca:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000bce:	f080 811b 	bcs.w	8000e08 <__udivmoddi4+0x28c>
 8000bd2:	4299      	cmp	r1, r3
 8000bd4:	f240 8118 	bls.w	8000e08 <__udivmoddi4+0x28c>
 8000bd8:	3f02      	subs	r7, #2
 8000bda:	442b      	add	r3, r5
 8000bdc:	1a5b      	subs	r3, r3, r1
 8000bde:	b2a4      	uxth	r4, r4
 8000be0:	fbb3 f0fe 	udiv	r0, r3, lr
 8000be4:	fb0e 3310 	mls	r3, lr, r0, r3
 8000be8:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000bec:	fb00 fc0c 	mul.w	ip, r0, ip
 8000bf0:	45a4      	cmp	ip, r4
 8000bf2:	d909      	bls.n	8000c08 <__udivmoddi4+0x8c>
 8000bf4:	192c      	adds	r4, r5, r4
 8000bf6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000bfa:	f080 8107 	bcs.w	8000e0c <__udivmoddi4+0x290>
 8000bfe:	45a4      	cmp	ip, r4
 8000c00:	f240 8104 	bls.w	8000e0c <__udivmoddi4+0x290>
 8000c04:	3802      	subs	r0, #2
 8000c06:	442c      	add	r4, r5
 8000c08:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000c0c:	eba4 040c 	sub.w	r4, r4, ip
 8000c10:	2700      	movs	r7, #0
 8000c12:	b11e      	cbz	r6, 8000c1c <__udivmoddi4+0xa0>
 8000c14:	40d4      	lsrs	r4, r2
 8000c16:	2300      	movs	r3, #0
 8000c18:	e9c6 4300 	strd	r4, r3, [r6]
 8000c1c:	4639      	mov	r1, r7
 8000c1e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000c22:	428b      	cmp	r3, r1
 8000c24:	d909      	bls.n	8000c3a <__udivmoddi4+0xbe>
 8000c26:	2e00      	cmp	r6, #0
 8000c28:	f000 80eb 	beq.w	8000e02 <__udivmoddi4+0x286>
 8000c2c:	2700      	movs	r7, #0
 8000c2e:	e9c6 0100 	strd	r0, r1, [r6]
 8000c32:	4638      	mov	r0, r7
 8000c34:	4639      	mov	r1, r7
 8000c36:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000c3a:	fab3 f783 	clz	r7, r3
 8000c3e:	2f00      	cmp	r7, #0
 8000c40:	d147      	bne.n	8000cd2 <__udivmoddi4+0x156>
 8000c42:	428b      	cmp	r3, r1
 8000c44:	d302      	bcc.n	8000c4c <__udivmoddi4+0xd0>
 8000c46:	4282      	cmp	r2, r0
 8000c48:	f200 80fa 	bhi.w	8000e40 <__udivmoddi4+0x2c4>
 8000c4c:	1a84      	subs	r4, r0, r2
 8000c4e:	eb61 0303 	sbc.w	r3, r1, r3
 8000c52:	2001      	movs	r0, #1
 8000c54:	4698      	mov	r8, r3
 8000c56:	2e00      	cmp	r6, #0
 8000c58:	d0e0      	beq.n	8000c1c <__udivmoddi4+0xa0>
 8000c5a:	e9c6 4800 	strd	r4, r8, [r6]
 8000c5e:	e7dd      	b.n	8000c1c <__udivmoddi4+0xa0>
 8000c60:	b902      	cbnz	r2, 8000c64 <__udivmoddi4+0xe8>
 8000c62:	deff      	udf	#255	; 0xff
 8000c64:	fab2 f282 	clz	r2, r2
 8000c68:	2a00      	cmp	r2, #0
 8000c6a:	f040 808f 	bne.w	8000d8c <__udivmoddi4+0x210>
 8000c6e:	1b49      	subs	r1, r1, r5
 8000c70:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c74:	fa1f f885 	uxth.w	r8, r5
 8000c78:	2701      	movs	r7, #1
 8000c7a:	fbb1 fcfe 	udiv	ip, r1, lr
 8000c7e:	0c23      	lsrs	r3, r4, #16
 8000c80:	fb0e 111c 	mls	r1, lr, ip, r1
 8000c84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000c88:	fb08 f10c 	mul.w	r1, r8, ip
 8000c8c:	4299      	cmp	r1, r3
 8000c8e:	d907      	bls.n	8000ca0 <__udivmoddi4+0x124>
 8000c90:	18eb      	adds	r3, r5, r3
 8000c92:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000c96:	d202      	bcs.n	8000c9e <__udivmoddi4+0x122>
 8000c98:	4299      	cmp	r1, r3
 8000c9a:	f200 80cd 	bhi.w	8000e38 <__udivmoddi4+0x2bc>
 8000c9e:	4684      	mov	ip, r0
 8000ca0:	1a59      	subs	r1, r3, r1
 8000ca2:	b2a3      	uxth	r3, r4
 8000ca4:	fbb1 f0fe 	udiv	r0, r1, lr
 8000ca8:	fb0e 1410 	mls	r4, lr, r0, r1
 8000cac:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000cb0:	fb08 f800 	mul.w	r8, r8, r0
 8000cb4:	45a0      	cmp	r8, r4
 8000cb6:	d907      	bls.n	8000cc8 <__udivmoddi4+0x14c>
 8000cb8:	192c      	adds	r4, r5, r4
 8000cba:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000cbe:	d202      	bcs.n	8000cc6 <__udivmoddi4+0x14a>
 8000cc0:	45a0      	cmp	r8, r4
 8000cc2:	f200 80b6 	bhi.w	8000e32 <__udivmoddi4+0x2b6>
 8000cc6:	4618      	mov	r0, r3
 8000cc8:	eba4 0408 	sub.w	r4, r4, r8
 8000ccc:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000cd0:	e79f      	b.n	8000c12 <__udivmoddi4+0x96>
 8000cd2:	f1c7 0c20 	rsb	ip, r7, #32
 8000cd6:	40bb      	lsls	r3, r7
 8000cd8:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000cdc:	ea4e 0e03 	orr.w	lr, lr, r3
 8000ce0:	fa01 f407 	lsl.w	r4, r1, r7
 8000ce4:	fa20 f50c 	lsr.w	r5, r0, ip
 8000ce8:	fa21 f30c 	lsr.w	r3, r1, ip
 8000cec:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000cf0:	4325      	orrs	r5, r4
 8000cf2:	fbb3 f9f8 	udiv	r9, r3, r8
 8000cf6:	0c2c      	lsrs	r4, r5, #16
 8000cf8:	fb08 3319 	mls	r3, r8, r9, r3
 8000cfc:	fa1f fa8e 	uxth.w	sl, lr
 8000d00:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000d04:	fb09 f40a 	mul.w	r4, r9, sl
 8000d08:	429c      	cmp	r4, r3
 8000d0a:	fa02 f207 	lsl.w	r2, r2, r7
 8000d0e:	fa00 f107 	lsl.w	r1, r0, r7
 8000d12:	d90b      	bls.n	8000d2c <__udivmoddi4+0x1b0>
 8000d14:	eb1e 0303 	adds.w	r3, lr, r3
 8000d18:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000d1c:	f080 8087 	bcs.w	8000e2e <__udivmoddi4+0x2b2>
 8000d20:	429c      	cmp	r4, r3
 8000d22:	f240 8084 	bls.w	8000e2e <__udivmoddi4+0x2b2>
 8000d26:	f1a9 0902 	sub.w	r9, r9, #2
 8000d2a:	4473      	add	r3, lr
 8000d2c:	1b1b      	subs	r3, r3, r4
 8000d2e:	b2ad      	uxth	r5, r5
 8000d30:	fbb3 f0f8 	udiv	r0, r3, r8
 8000d34:	fb08 3310 	mls	r3, r8, r0, r3
 8000d38:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000d3c:	fb00 fa0a 	mul.w	sl, r0, sl
 8000d40:	45a2      	cmp	sl, r4
 8000d42:	d908      	bls.n	8000d56 <__udivmoddi4+0x1da>
 8000d44:	eb1e 0404 	adds.w	r4, lr, r4
 8000d48:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000d4c:	d26b      	bcs.n	8000e26 <__udivmoddi4+0x2aa>
 8000d4e:	45a2      	cmp	sl, r4
 8000d50:	d969      	bls.n	8000e26 <__udivmoddi4+0x2aa>
 8000d52:	3802      	subs	r0, #2
 8000d54:	4474      	add	r4, lr
 8000d56:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000d5a:	fba0 8902 	umull	r8, r9, r0, r2
 8000d5e:	eba4 040a 	sub.w	r4, r4, sl
 8000d62:	454c      	cmp	r4, r9
 8000d64:	46c2      	mov	sl, r8
 8000d66:	464b      	mov	r3, r9
 8000d68:	d354      	bcc.n	8000e14 <__udivmoddi4+0x298>
 8000d6a:	d051      	beq.n	8000e10 <__udivmoddi4+0x294>
 8000d6c:	2e00      	cmp	r6, #0
 8000d6e:	d069      	beq.n	8000e44 <__udivmoddi4+0x2c8>
 8000d70:	ebb1 050a 	subs.w	r5, r1, sl
 8000d74:	eb64 0403 	sbc.w	r4, r4, r3
 8000d78:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000d7c:	40fd      	lsrs	r5, r7
 8000d7e:	40fc      	lsrs	r4, r7
 8000d80:	ea4c 0505 	orr.w	r5, ip, r5
 8000d84:	e9c6 5400 	strd	r5, r4, [r6]
 8000d88:	2700      	movs	r7, #0
 8000d8a:	e747      	b.n	8000c1c <__udivmoddi4+0xa0>
 8000d8c:	f1c2 0320 	rsb	r3, r2, #32
 8000d90:	fa20 f703 	lsr.w	r7, r0, r3
 8000d94:	4095      	lsls	r5, r2
 8000d96:	fa01 f002 	lsl.w	r0, r1, r2
 8000d9a:	fa21 f303 	lsr.w	r3, r1, r3
 8000d9e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000da2:	4338      	orrs	r0, r7
 8000da4:	0c01      	lsrs	r1, r0, #16
 8000da6:	fbb3 f7fe 	udiv	r7, r3, lr
 8000daa:	fa1f f885 	uxth.w	r8, r5
 8000dae:	fb0e 3317 	mls	r3, lr, r7, r3
 8000db2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000db6:	fb07 f308 	mul.w	r3, r7, r8
 8000dba:	428b      	cmp	r3, r1
 8000dbc:	fa04 f402 	lsl.w	r4, r4, r2
 8000dc0:	d907      	bls.n	8000dd2 <__udivmoddi4+0x256>
 8000dc2:	1869      	adds	r1, r5, r1
 8000dc4:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000dc8:	d22f      	bcs.n	8000e2a <__udivmoddi4+0x2ae>
 8000dca:	428b      	cmp	r3, r1
 8000dcc:	d92d      	bls.n	8000e2a <__udivmoddi4+0x2ae>
 8000dce:	3f02      	subs	r7, #2
 8000dd0:	4429      	add	r1, r5
 8000dd2:	1acb      	subs	r3, r1, r3
 8000dd4:	b281      	uxth	r1, r0
 8000dd6:	fbb3 f0fe 	udiv	r0, r3, lr
 8000dda:	fb0e 3310 	mls	r3, lr, r0, r3
 8000dde:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000de2:	fb00 f308 	mul.w	r3, r0, r8
 8000de6:	428b      	cmp	r3, r1
 8000de8:	d907      	bls.n	8000dfa <__udivmoddi4+0x27e>
 8000dea:	1869      	adds	r1, r5, r1
 8000dec:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000df0:	d217      	bcs.n	8000e22 <__udivmoddi4+0x2a6>
 8000df2:	428b      	cmp	r3, r1
 8000df4:	d915      	bls.n	8000e22 <__udivmoddi4+0x2a6>
 8000df6:	3802      	subs	r0, #2
 8000df8:	4429      	add	r1, r5
 8000dfa:	1ac9      	subs	r1, r1, r3
 8000dfc:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000e00:	e73b      	b.n	8000c7a <__udivmoddi4+0xfe>
 8000e02:	4637      	mov	r7, r6
 8000e04:	4630      	mov	r0, r6
 8000e06:	e709      	b.n	8000c1c <__udivmoddi4+0xa0>
 8000e08:	4607      	mov	r7, r0
 8000e0a:	e6e7      	b.n	8000bdc <__udivmoddi4+0x60>
 8000e0c:	4618      	mov	r0, r3
 8000e0e:	e6fb      	b.n	8000c08 <__udivmoddi4+0x8c>
 8000e10:	4541      	cmp	r1, r8
 8000e12:	d2ab      	bcs.n	8000d6c <__udivmoddi4+0x1f0>
 8000e14:	ebb8 0a02 	subs.w	sl, r8, r2
 8000e18:	eb69 020e 	sbc.w	r2, r9, lr
 8000e1c:	3801      	subs	r0, #1
 8000e1e:	4613      	mov	r3, r2
 8000e20:	e7a4      	b.n	8000d6c <__udivmoddi4+0x1f0>
 8000e22:	4660      	mov	r0, ip
 8000e24:	e7e9      	b.n	8000dfa <__udivmoddi4+0x27e>
 8000e26:	4618      	mov	r0, r3
 8000e28:	e795      	b.n	8000d56 <__udivmoddi4+0x1da>
 8000e2a:	4667      	mov	r7, ip
 8000e2c:	e7d1      	b.n	8000dd2 <__udivmoddi4+0x256>
 8000e2e:	4681      	mov	r9, r0
 8000e30:	e77c      	b.n	8000d2c <__udivmoddi4+0x1b0>
 8000e32:	3802      	subs	r0, #2
 8000e34:	442c      	add	r4, r5
 8000e36:	e747      	b.n	8000cc8 <__udivmoddi4+0x14c>
 8000e38:	f1ac 0c02 	sub.w	ip, ip, #2
 8000e3c:	442b      	add	r3, r5
 8000e3e:	e72f      	b.n	8000ca0 <__udivmoddi4+0x124>
 8000e40:	4638      	mov	r0, r7
 8000e42:	e708      	b.n	8000c56 <__udivmoddi4+0xda>
 8000e44:	4637      	mov	r7, r6
 8000e46:	e6e9      	b.n	8000c1c <__udivmoddi4+0xa0>

08000e48 <__aeabi_idiv0>:
 8000e48:	4770      	bx	lr
 8000e4a:	bf00      	nop

08000e4c <memcpy>:
 8000e4c:	4684      	mov	ip, r0
 8000e4e:	ea41 0300 	orr.w	r3, r1, r0
 8000e52:	f013 0303 	ands.w	r3, r3, #3
 8000e56:	d16d      	bne.n	8000f34 <memcpy+0xe8>
 8000e58:	3a40      	subs	r2, #64	; 0x40
 8000e5a:	d341      	bcc.n	8000ee0 <memcpy+0x94>
 8000e5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e60:	f840 3b04 	str.w	r3, [r0], #4
 8000e64:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e68:	f840 3b04 	str.w	r3, [r0], #4
 8000e6c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e70:	f840 3b04 	str.w	r3, [r0], #4
 8000e74:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e78:	f840 3b04 	str.w	r3, [r0], #4
 8000e7c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e80:	f840 3b04 	str.w	r3, [r0], #4
 8000e84:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e88:	f840 3b04 	str.w	r3, [r0], #4
 8000e8c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e90:	f840 3b04 	str.w	r3, [r0], #4
 8000e94:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e98:	f840 3b04 	str.w	r3, [r0], #4
 8000e9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ea0:	f840 3b04 	str.w	r3, [r0], #4
 8000ea4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ea8:	f840 3b04 	str.w	r3, [r0], #4
 8000eac:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eb0:	f840 3b04 	str.w	r3, [r0], #4
 8000eb4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eb8:	f840 3b04 	str.w	r3, [r0], #4
 8000ebc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ec0:	f840 3b04 	str.w	r3, [r0], #4
 8000ec4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ec8:	f840 3b04 	str.w	r3, [r0], #4
 8000ecc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ed0:	f840 3b04 	str.w	r3, [r0], #4
 8000ed4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ed8:	f840 3b04 	str.w	r3, [r0], #4
 8000edc:	3a40      	subs	r2, #64	; 0x40
 8000ede:	d2bd      	bcs.n	8000e5c <memcpy+0x10>
 8000ee0:	3230      	adds	r2, #48	; 0x30
 8000ee2:	d311      	bcc.n	8000f08 <memcpy+0xbc>
 8000ee4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ee8:	f840 3b04 	str.w	r3, [r0], #4
 8000eec:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ef0:	f840 3b04 	str.w	r3, [r0], #4
 8000ef4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ef8:	f840 3b04 	str.w	r3, [r0], #4
 8000efc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f00:	f840 3b04 	str.w	r3, [r0], #4
 8000f04:	3a10      	subs	r2, #16
 8000f06:	d2ed      	bcs.n	8000ee4 <memcpy+0x98>
 8000f08:	320c      	adds	r2, #12
 8000f0a:	d305      	bcc.n	8000f18 <memcpy+0xcc>
 8000f0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f10:	f840 3b04 	str.w	r3, [r0], #4
 8000f14:	3a04      	subs	r2, #4
 8000f16:	d2f9      	bcs.n	8000f0c <memcpy+0xc0>
 8000f18:	3204      	adds	r2, #4
 8000f1a:	d008      	beq.n	8000f2e <memcpy+0xe2>
 8000f1c:	07d2      	lsls	r2, r2, #31
 8000f1e:	bf1c      	itt	ne
 8000f20:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f24:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f28:	d301      	bcc.n	8000f2e <memcpy+0xe2>
 8000f2a:	880b      	ldrh	r3, [r1, #0]
 8000f2c:	8003      	strh	r3, [r0, #0]
 8000f2e:	4660      	mov	r0, ip
 8000f30:	4770      	bx	lr
 8000f32:	bf00      	nop
 8000f34:	2a08      	cmp	r2, #8
 8000f36:	d313      	bcc.n	8000f60 <memcpy+0x114>
 8000f38:	078b      	lsls	r3, r1, #30
 8000f3a:	d08d      	beq.n	8000e58 <memcpy+0xc>
 8000f3c:	f010 0303 	ands.w	r3, r0, #3
 8000f40:	d08a      	beq.n	8000e58 <memcpy+0xc>
 8000f42:	f1c3 0304 	rsb	r3, r3, #4
 8000f46:	1ad2      	subs	r2, r2, r3
 8000f48:	07db      	lsls	r3, r3, #31
 8000f4a:	bf1c      	itt	ne
 8000f4c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f50:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f54:	d380      	bcc.n	8000e58 <memcpy+0xc>
 8000f56:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000f5a:	f820 3b02 	strh.w	r3, [r0], #2
 8000f5e:	e77b      	b.n	8000e58 <memcpy+0xc>
 8000f60:	3a04      	subs	r2, #4
 8000f62:	d3d9      	bcc.n	8000f18 <memcpy+0xcc>
 8000f64:	3a01      	subs	r2, #1
 8000f66:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000f6a:	f800 3b01 	strb.w	r3, [r0], #1
 8000f6e:	d2f9      	bcs.n	8000f64 <memcpy+0x118>
 8000f70:	780b      	ldrb	r3, [r1, #0]
 8000f72:	7003      	strb	r3, [r0, #0]
 8000f74:	784b      	ldrb	r3, [r1, #1]
 8000f76:	7043      	strb	r3, [r0, #1]
 8000f78:	788b      	ldrb	r3, [r1, #2]
 8000f7a:	7083      	strb	r3, [r0, #2]
 8000f7c:	4660      	mov	r0, ip
 8000f7e:	4770      	bx	lr

08000f80 <strlen>:
 8000f80:	f890 f000 	pld	[r0]
 8000f84:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000f88:	f020 0107 	bic.w	r1, r0, #7
 8000f8c:	f06f 0c00 	mvn.w	ip, #0
 8000f90:	f010 0407 	ands.w	r4, r0, #7
 8000f94:	f891 f020 	pld	[r1, #32]
 8000f98:	f040 8049 	bne.w	800102e <strlen+0xae>
 8000f9c:	f04f 0400 	mov.w	r4, #0
 8000fa0:	f06f 0007 	mvn.w	r0, #7
 8000fa4:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000fa8:	f891 f040 	pld	[r1, #64]	; 0x40
 8000fac:	f100 0008 	add.w	r0, r0, #8
 8000fb0:	fa82 f24c 	uadd8	r2, r2, ip
 8000fb4:	faa4 f28c 	sel	r2, r4, ip
 8000fb8:	fa83 f34c 	uadd8	r3, r3, ip
 8000fbc:	faa2 f38c 	sel	r3, r2, ip
 8000fc0:	bb4b      	cbnz	r3, 8001016 <strlen+0x96>
 8000fc2:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000fc6:	fa82 f24c 	uadd8	r2, r2, ip
 8000fca:	f100 0008 	add.w	r0, r0, #8
 8000fce:	faa4 f28c 	sel	r2, r4, ip
 8000fd2:	fa83 f34c 	uadd8	r3, r3, ip
 8000fd6:	faa2 f38c 	sel	r3, r2, ip
 8000fda:	b9e3      	cbnz	r3, 8001016 <strlen+0x96>
 8000fdc:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000fe0:	fa82 f24c 	uadd8	r2, r2, ip
 8000fe4:	f100 0008 	add.w	r0, r0, #8
 8000fe8:	faa4 f28c 	sel	r2, r4, ip
 8000fec:	fa83 f34c 	uadd8	r3, r3, ip
 8000ff0:	faa2 f38c 	sel	r3, r2, ip
 8000ff4:	b97b      	cbnz	r3, 8001016 <strlen+0x96>
 8000ff6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8000ffa:	f101 0120 	add.w	r1, r1, #32
 8000ffe:	fa82 f24c 	uadd8	r2, r2, ip
 8001002:	f100 0008 	add.w	r0, r0, #8
 8001006:	faa4 f28c 	sel	r2, r4, ip
 800100a:	fa83 f34c 	uadd8	r3, r3, ip
 800100e:	faa2 f38c 	sel	r3, r2, ip
 8001012:	2b00      	cmp	r3, #0
 8001014:	d0c6      	beq.n	8000fa4 <strlen+0x24>
 8001016:	2a00      	cmp	r2, #0
 8001018:	bf04      	itt	eq
 800101a:	3004      	addeq	r0, #4
 800101c:	461a      	moveq	r2, r3
 800101e:	ba12      	rev	r2, r2
 8001020:	fab2 f282 	clz	r2, r2
 8001024:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8001028:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 800102c:	4770      	bx	lr
 800102e:	e9d1 2300 	ldrd	r2, r3, [r1]
 8001032:	f004 0503 	and.w	r5, r4, #3
 8001036:	f1c4 0000 	rsb	r0, r4, #0
 800103a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 800103e:	f014 0f04 	tst.w	r4, #4
 8001042:	f891 f040 	pld	[r1, #64]	; 0x40
 8001046:	fa0c f505 	lsl.w	r5, ip, r5
 800104a:	ea62 0205 	orn	r2, r2, r5
 800104e:	bf1c      	itt	ne
 8001050:	ea63 0305 	ornne	r3, r3, r5
 8001054:	4662      	movne	r2, ip
 8001056:	f04f 0400 	mov.w	r4, #0
 800105a:	e7a9      	b.n	8000fb0 <strlen+0x30>
 800105c:	0000      	movs	r0, r0
	...

08001060 <memchr>:
 8001060:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8001064:	2a10      	cmp	r2, #16
 8001066:	db2b      	blt.n	80010c0 <memchr+0x60>
 8001068:	f010 0f07 	tst.w	r0, #7
 800106c:	d008      	beq.n	8001080 <memchr+0x20>
 800106e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001072:	3a01      	subs	r2, #1
 8001074:	428b      	cmp	r3, r1
 8001076:	d02d      	beq.n	80010d4 <memchr+0x74>
 8001078:	f010 0f07 	tst.w	r0, #7
 800107c:	b342      	cbz	r2, 80010d0 <memchr+0x70>
 800107e:	d1f6      	bne.n	800106e <memchr+0xe>
 8001080:	b4f0      	push	{r4, r5, r6, r7}
 8001082:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8001086:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800108a:	f022 0407 	bic.w	r4, r2, #7
 800108e:	f07f 0700 	mvns.w	r7, #0
 8001092:	2300      	movs	r3, #0
 8001094:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8001098:	3c08      	subs	r4, #8
 800109a:	ea85 0501 	eor.w	r5, r5, r1
 800109e:	ea86 0601 	eor.w	r6, r6, r1
 80010a2:	fa85 f547 	uadd8	r5, r5, r7
 80010a6:	faa3 f587 	sel	r5, r3, r7
 80010aa:	fa86 f647 	uadd8	r6, r6, r7
 80010ae:	faa5 f687 	sel	r6, r5, r7
 80010b2:	b98e      	cbnz	r6, 80010d8 <memchr+0x78>
 80010b4:	d1ee      	bne.n	8001094 <memchr+0x34>
 80010b6:	bcf0      	pop	{r4, r5, r6, r7}
 80010b8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80010bc:	f002 0207 	and.w	r2, r2, #7
 80010c0:	b132      	cbz	r2, 80010d0 <memchr+0x70>
 80010c2:	f810 3b01 	ldrb.w	r3, [r0], #1
 80010c6:	3a01      	subs	r2, #1
 80010c8:	ea83 0301 	eor.w	r3, r3, r1
 80010cc:	b113      	cbz	r3, 80010d4 <memchr+0x74>
 80010ce:	d1f8      	bne.n	80010c2 <memchr+0x62>
 80010d0:	2000      	movs	r0, #0
 80010d2:	4770      	bx	lr
 80010d4:	3801      	subs	r0, #1
 80010d6:	4770      	bx	lr
 80010d8:	2d00      	cmp	r5, #0
 80010da:	bf06      	itte	eq
 80010dc:	4635      	moveq	r5, r6
 80010de:	3803      	subeq	r0, #3
 80010e0:	3807      	subne	r0, #7
 80010e2:	f015 0f01 	tst.w	r5, #1
 80010e6:	d107      	bne.n	80010f8 <memchr+0x98>
 80010e8:	3001      	adds	r0, #1
 80010ea:	f415 7f80 	tst.w	r5, #256	; 0x100
 80010ee:	bf02      	ittt	eq
 80010f0:	3001      	addeq	r0, #1
 80010f2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80010f6:	3001      	addeq	r0, #1
 80010f8:	bcf0      	pop	{r4, r5, r6, r7}
 80010fa:	3801      	subs	r0, #1
 80010fc:	4770      	bx	lr
 80010fe:	bf00      	nop

08001100 <__aeabi_dcmpun>:
 8001100:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001104:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001108:	d102      	bne.n	8001110 <__aeabi_dcmpun+0x10>
 800110a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800110e:	d10a      	bne.n	8001126 <__aeabi_dcmpun+0x26>
 8001110:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001114:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001118:	d102      	bne.n	8001120 <__aeabi_dcmpun+0x20>
 800111a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800111e:	d102      	bne.n	8001126 <__aeabi_dcmpun+0x26>
 8001120:	f04f 0000 	mov.w	r0, #0
 8001124:	4770      	bx	lr
 8001126:	f04f 0001 	mov.w	r0, #1
 800112a:	4770      	bx	lr

0800112c <__aeabi_d2iz>:
 800112c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8001130:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8001134:	d215      	bcs.n	8001162 <__aeabi_d2iz+0x36>
 8001136:	d511      	bpl.n	800115c <__aeabi_d2iz+0x30>
 8001138:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 800113c:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8001140:	d912      	bls.n	8001168 <__aeabi_d2iz+0x3c>
 8001142:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8001146:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 800114a:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800114e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8001152:	fa23 f002 	lsr.w	r0, r3, r2
 8001156:	bf18      	it	ne
 8001158:	4240      	negne	r0, r0
 800115a:	4770      	bx	lr
 800115c:	f04f 0000 	mov.w	r0, #0
 8001160:	4770      	bx	lr
 8001162:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8001166:	d105      	bne.n	8001174 <__aeabi_d2iz+0x48>
 8001168:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 800116c:	bf08      	it	eq
 800116e:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8001172:	4770      	bx	lr
 8001174:	f04f 0000 	mov.w	r0, #0
 8001178:	4770      	bx	lr
 800117a:	bf00      	nop

0800117c <HAL_Init>:
 800117c:	b580      	push	{r7, lr}
 800117e:	466f      	mov	r7, sp
 8001180:	2003      	movs	r0, #3
 8001182:	f000 f819 	bl	80011b8 <HAL_NVIC_SetPriorityGrouping>
 8001186:	200f      	movs	r0, #15
 8001188:	f000 fb84 	bl	8001894 <HAL_InitTick>
 800118c:	2800      	cmp	r0, #0
 800118e:	bf1c      	itt	ne
 8001190:	2001      	movne	r0, #1
 8001192:	bd80      	popne	{r7, pc}
 8001194:	f000 f94b 	bl	800142e <HAL_MspInit>
 8001198:	2000      	movs	r0, #0
 800119a:	bd80      	pop	{r7, pc}

0800119c <HAL_IncTick>:
 800119c:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011a4:	6801      	ldr	r1, [r0, #0]
 80011a6:	3101      	adds	r1, #1
 80011a8:	6001      	str	r1, [r0, #0]
 80011aa:	4770      	bx	lr

080011ac <HAL_GetTick>:
 80011ac:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011b4:	6800      	ldr	r0, [r0, #0]
 80011b6:	4770      	bx	lr

080011b8 <HAL_NVIC_SetPriorityGrouping>:
 80011b8:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011bc:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011c0:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011c4:	680a      	ldr	r2, [r1, #0]
 80011c6:	401a      	ands	r2, r3
 80011c8:	f360 220a 	bfi	r2, r0, #8, #3
 80011cc:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011d0:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011d4:	6008      	str	r0, [r1, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_NVIC_SetPriority>:
 80011d8:	b580      	push	{r7, lr}
 80011da:	466f      	mov	r7, sp
 80011dc:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011e0:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011e4:	2800      	cmp	r0, #0
 80011e6:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011ea:	f000 030f 	and.w	r3, r0, #15
 80011ee:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 80011f2:	f1a3 0304 	sub.w	r3, r3, #4
 80011f6:	4473      	add	r3, lr
 80011f8:	bfb8      	it	lt
 80011fa:	f103 0c0c 	addlt.w	ip, r3, #12
 80011fe:	f8de 0000 	ldr.w	r0, [lr]
 8001202:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001206:	f100 0e04 	add.w	lr, r0, #4
 800120a:	1ec3      	subs	r3, r0, #3
 800120c:	f080 0007 	eor.w	r0, r0, #7
 8001210:	f1be 0f07 	cmp.w	lr, #7
 8001214:	f04f 0e01 	mov.w	lr, #1
 8001218:	bf38      	it	cc
 800121a:	2300      	movcc	r3, #0
 800121c:	2804      	cmp	r0, #4
 800121e:	bf28      	it	cs
 8001220:	2004      	movcs	r0, #4
 8001222:	fa0e f000 	lsl.w	r0, lr, r0
 8001226:	3801      	subs	r0, #1
 8001228:	4008      	ands	r0, r1
 800122a:	fa0e f103 	lsl.w	r1, lr, r3
 800122e:	310f      	adds	r1, #15
 8001230:	4098      	lsls	r0, r3
 8001232:	4011      	ands	r1, r2
 8001234:	4308      	orrs	r0, r1
 8001236:	0100      	lsls	r0, r0, #4
 8001238:	f88c 0000 	strb.w	r0, [ip]
 800123c:	bd80      	pop	{r7, pc}

0800123e <HAL_NVIC_EnableIRQ>:
 800123e:	f000 011f 	and.w	r1, r0, #31
 8001242:	2201      	movs	r2, #1
 8001244:	0940      	lsrs	r0, r0, #5
 8001246:	fa02 f101 	lsl.w	r1, r2, r1
 800124a:	f24e 1200 	movw	r2, #57600	; 0xe100
 800124e:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001252:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001256:	4770      	bx	lr

08001258 <HAL_SYSTICK_IRQHandler>:
 8001258:	f000 b800 	b.w	800125c <HAL_SYSTICK_Callback>

0800125c <HAL_SYSTICK_Callback>:
 800125c:	4770      	bx	lr

0800125e <HAL_GPIO_Init>:
 800125e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001260:	af03      	add	r7, sp, #12
 8001262:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001266:	b082      	sub	sp, #8
 8001268:	680e      	ldr	r6, [r1, #0]
 800126a:	2e00      	cmp	r6, #0
 800126c:	f000 80db 	beq.w	8001426 <HAL_GPIO_Init+0x1c8>
 8001270:	f641 0200 	movw	r2, #6144	; 0x1800
 8001274:	2507      	movs	r5, #7
 8001276:	f04f 0801 	mov.w	r8, #1
 800127a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800127e:	4290      	cmp	r0, r2
 8001280:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001284:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001288:	bf08      	it	eq
 800128a:	2506      	moveq	r5, #6
 800128c:	2b06      	cmp	r3, #6
 800128e:	bf38      	it	cc
 8001290:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001294:	2200      	movs	r2, #0
 8001296:	9500      	str	r5, [sp, #0]
 8001298:	2500      	movs	r5, #0
 800129a:	f1a8 0a01 	sub.w	sl, r8, #1
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012a4:	ea16 090b 	ands.w	r9, r6, fp
 80012a8:	f000 80b4 	beq.w	8001414 <HAL_GPIO_Init+0x1b6>
 80012ac:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012b0:	f04e 0610 	orr.w	r6, lr, #16
 80012b4:	2e12      	cmp	r6, #18
 80012b6:	d115      	bne.n	80012e4 <HAL_GPIO_Init+0x86>
 80012b8:	f005 061c 	and.w	r6, r5, #28
 80012bc:	230f      	movs	r3, #15
 80012be:	fa03 fc06 	lsl.w	ip, r3, r6
 80012c2:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012c6:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012ca:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012ce:	4404      	add	r4, r0
 80012d0:	6a23      	ldr	r3, [r4, #32]
 80012d2:	ea23 0c0c 	bic.w	ip, r3, ip
 80012d6:	690b      	ldr	r3, [r1, #16]
 80012d8:	40b3      	lsls	r3, r6
 80012da:	ea43 030c 	orr.w	r3, r3, ip
 80012de:	6223      	str	r3, [r4, #32]
 80012e0:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012e4:	6806      	ldr	r6, [r0, #0]
 80012e6:	2403      	movs	r4, #3
 80012e8:	f00e 0c03 	and.w	ip, lr, #3
 80012ec:	f1be 0f12 	cmp.w	lr, #18
 80012f0:	fa04 f402 	lsl.w	r4, r4, r2
 80012f4:	fa0c f302 	lsl.w	r3, ip, r2
 80012f8:	ea26 0604 	bic.w	r6, r6, r4
 80012fc:	ea43 0306 	orr.w	r3, r3, r6
 8001300:	ea6f 0604 	mvn.w	r6, r4
 8001304:	6003      	str	r3, [r0, #0]
 8001306:	d816      	bhi.n	8001336 <HAL_GPIO_Init+0xd8>
 8001308:	2301      	movs	r3, #1
 800130a:	fa03 f30e 	lsl.w	r3, r3, lr
 800130e:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001312:	bf1f      	itttt	ne
 8001314:	6883      	ldrne	r3, [r0, #8]
 8001316:	4033      	andne	r3, r6
 8001318:	68cc      	ldrne	r4, [r1, #12]
 800131a:	4094      	lslne	r4, r2
 800131c:	bf1f      	itttt	ne
 800131e:	4323      	orrne	r3, r4
 8001320:	6083      	strne	r3, [r0, #8]
 8001322:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001326:	fa03 f30a 	lslne.w	r3, r3, sl
 800132a:	bf1f      	itttt	ne
 800132c:	6844      	ldrne	r4, [r0, #4]
 800132e:	ea24 040b 	bicne.w	r4, r4, fp
 8001332:	4323      	orrne	r3, r4
 8001334:	6043      	strne	r3, [r0, #4]
 8001336:	f1bc 0f03 	cmp.w	ip, #3
 800133a:	d108      	bne.n	800134e <HAL_GPIO_Init+0xf0>
 800133c:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001340:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001342:	fa03 f30a 	lsl.w	r3, r3, sl
 8001346:	ea24 040b 	bic.w	r4, r4, fp
 800134a:	4323      	orrs	r3, r4
 800134c:	62c3      	str	r3, [r0, #44]	; 0x2c
 800134e:	68c3      	ldr	r3, [r0, #12]
 8001350:	4033      	ands	r3, r6
 8001352:	688e      	ldr	r6, [r1, #8]
 8001354:	4096      	lsls	r6, r2
 8001356:	4333      	orrs	r3, r6
 8001358:	60c3      	str	r3, [r0, #12]
 800135a:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800135e:	d559      	bpl.n	8001414 <HAL_GPIO_Init+0x1b6>
 8001360:	f241 0360 	movw	r3, #4192	; 0x1060
 8001364:	f005 040c 	and.w	r4, r5, #12
 8001368:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800136c:	461e      	mov	r6, r3
 800136e:	6833      	ldr	r3, [r6, #0]
 8001370:	f043 0301 	orr.w	r3, r3, #1
 8001374:	6033      	str	r3, [r6, #0]
 8001376:	6833      	ldr	r3, [r6, #0]
 8001378:	f240 4600 	movw	r6, #1024	; 0x400
 800137c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001380:	46b6      	mov	lr, r6
 8001382:	f003 0301 	and.w	r3, r3, #1
 8001386:	9301      	str	r3, [sp, #4]
 8001388:	f02a 0303 	bic.w	r3, sl, #3
 800138c:	9e01      	ldr	r6, [sp, #4]
 800138e:	4473      	add	r3, lr
 8001390:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001394:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001398:	46b2      	mov	sl, r6
 800139a:	260f      	movs	r6, #15
 800139c:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013a0:	40a6      	lsls	r6, r4
 80013a2:	ea2c 0c06 	bic.w	ip, ip, r6
 80013a6:	9e00      	ldr	r6, [sp, #0]
 80013a8:	fa06 f404 	lsl.w	r4, r6, r4
 80013ac:	ea4c 0604 	orr.w	r6, ip, r4
 80013b0:	f843 600a 	str.w	r6, [r3, sl]
 80013b4:	f8de 3000 	ldr.w	r3, [lr]
 80013b8:	684e      	ldr	r6, [r1, #4]
 80013ba:	ea23 0309 	bic.w	r3, r3, r9
 80013be:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013c2:	bf18      	it	ne
 80013c4:	ea43 0309 	orrne.w	r3, r3, r9
 80013c8:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013cc:	f8ce 3000 	str.w	r3, [lr]
 80013d0:	f8de 3004 	ldr.w	r3, [lr, #4]
 80013d4:	ea23 0309 	bic.w	r3, r3, r9
 80013d8:	bf18      	it	ne
 80013da:	ea43 0309 	orrne.w	r3, r3, r9
 80013de:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 80013e2:	f8ce 3004 	str.w	r3, [lr, #4]
 80013e6:	f8de 3008 	ldr.w	r3, [lr, #8]
 80013ea:	ea23 0309 	bic.w	r3, r3, r9
 80013ee:	bf18      	it	ne
 80013f0:	ea43 0309 	orrne.w	r3, r3, r9
 80013f4:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013f8:	f8ce 3008 	str.w	r3, [lr, #8]
 80013fc:	f240 430c 	movw	r3, #1036	; 0x40c
 8001400:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001404:	461c      	mov	r4, r3
 8001406:	6823      	ldr	r3, [r4, #0]
 8001408:	ea23 0309 	bic.w	r3, r3, r9
 800140c:	bf18      	it	ne
 800140e:	ea43 0309 	orrne.w	r3, r3, r9
 8001412:	6023      	str	r3, [r4, #0]
 8001414:	680e      	ldr	r6, [r1, #0]
 8001416:	3202      	adds	r2, #2
 8001418:	3504      	adds	r5, #4
 800141a:	fa36 f308 	lsrs.w	r3, r6, r8
 800141e:	f108 0801 	add.w	r8, r8, #1
 8001422:	f47f af3a 	bne.w	800129a <HAL_GPIO_Init+0x3c>
 8001426:	b002      	add	sp, #8
 8001428:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800142c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800142e <HAL_MspInit>:
 800142e:	4770      	bx	lr

08001430 <HAL_RCC_GetSysClockFreq>:
 8001430:	b580      	push	{r7, lr}
 8001432:	466f      	mov	r7, sp
 8001434:	f241 010c 	movw	r1, #4108	; 0x100c
 8001438:	f241 2e00 	movw	lr, #4608	; 0x1200
 800143c:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001440:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001444:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001448:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 800144c:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001450:	6808      	ldr	r0, [r1, #0]
 8001452:	f012 030c 	ands.w	r3, r2, #12
 8001456:	d005      	beq.n	8001464 <HAL_RCC_GetSysClockFreq+0x34>
 8001458:	2b0c      	cmp	r3, #12
 800145a:	bf04      	itt	eq
 800145c:	f000 0003 	andeq.w	r0, r0, #3
 8001460:	2801      	cmpeq	r0, #1
 8001462:	d118      	bne.n	8001496 <HAL_RCC_GetSysClockFreq+0x66>
 8001464:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001468:	f010 0f08 	tst.w	r0, #8
 800146c:	d103      	bne.n	8001476 <HAL_RCC_GetSysClockFreq+0x46>
 800146e:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001472:	0a00      	lsrs	r0, r0, #8
 8001474:	e002      	b.n	800147c <HAL_RCC_GetSysClockFreq+0x4c>
 8001476:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800147a:	0900      	lsrs	r0, r0, #4
 800147c:	f247 0240 	movw	r2, #28736	; 0x7040
 8001480:	f000 000f 	and.w	r0, r0, #15
 8001484:	2b00      	cmp	r3, #0
 8001486:	f6c0 0200 	movt	r2, #2048	; 0x800
 800148a:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 800148e:	4610      	mov	r0, r2
 8001490:	bf18      	it	ne
 8001492:	2000      	movne	r0, #0
 8001494:	e00b      	b.n	80014ae <HAL_RCC_GetSysClockFreq+0x7e>
 8001496:	f003 000f 	and.w	r0, r3, #15
 800149a:	2804      	cmp	r0, #4
 800149c:	bf04      	itt	eq
 800149e:	4660      	moveq	r0, ip
 80014a0:	bd80      	popeq	{r7, pc}
 80014a2:	2808      	cmp	r0, #8
 80014a4:	bf04      	itt	eq
 80014a6:	4670      	moveq	r0, lr
 80014a8:	bd80      	popeq	{r7, pc}
 80014aa:	2000      	movs	r0, #0
 80014ac:	2200      	movs	r2, #0
 80014ae:	2b0c      	cmp	r3, #12
 80014b0:	bf18      	it	ne
 80014b2:	bd80      	popne	{r7, pc}
 80014b4:	6808      	ldr	r0, [r1, #0]
 80014b6:	f000 0303 	and.w	r3, r0, #3
 80014ba:	6808      	ldr	r0, [r1, #0]
 80014bc:	2b03      	cmp	r3, #3
 80014be:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014c2:	f100 0001 	add.w	r0, r0, #1
 80014c6:	d003      	beq.n	80014d0 <HAL_RCC_GetSysClockFreq+0xa0>
 80014c8:	2b02      	cmp	r3, #2
 80014ca:	46e6      	mov	lr, ip
 80014cc:	bf18      	it	ne
 80014ce:	4696      	movne	lr, r2
 80014d0:	680a      	ldr	r2, [r1, #0]
 80014d2:	fbbe f0f0 	udiv	r0, lr, r0
 80014d6:	f3c2 2206 	ubfx	r2, r2, #8, #7
 80014da:	6809      	ldr	r1, [r1, #0]
 80014dc:	4350      	muls	r0, r2
 80014de:	2202      	movs	r2, #2
 80014e0:	f3c1 6141 	ubfx	r1, r1, #25, #2
 80014e4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80014e8:	fbb0 f0f1 	udiv	r0, r0, r1
 80014ec:	bd80      	pop	{r7, pc}

080014ee <HAL_RCC_GetPCLK1Freq>:
 80014ee:	f240 0014 	movw	r0, #20
 80014f2:	f241 0108 	movw	r1, #4104	; 0x1008
 80014f6:	f247 0238 	movw	r2, #28728	; 0x7038
 80014fa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014fe:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001502:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001506:	6800      	ldr	r0, [r0, #0]
 8001508:	6809      	ldr	r1, [r1, #0]
 800150a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800150e:	5c51      	ldrb	r1, [r2, r1]
 8001510:	f001 011f 	and.w	r1, r1, #31
 8001514:	40c8      	lsrs	r0, r1
 8001516:	4770      	bx	lr

08001518 <HAL_RCC_GetPCLK2Freq>:
 8001518:	f240 0014 	movw	r0, #20
 800151c:	f241 0108 	movw	r1, #4104	; 0x1008
 8001520:	f247 0238 	movw	r2, #28728	; 0x7038
 8001524:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001528:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800152c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001530:	6800      	ldr	r0, [r0, #0]
 8001532:	6809      	ldr	r1, [r1, #0]
 8001534:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001538:	5c51      	ldrb	r1, [r2, r1]
 800153a:	f001 011f 	and.w	r1, r1, #31
 800153e:	40c8      	lsrs	r0, r1
 8001540:	4770      	bx	lr

08001542 <HAL_RCC_GetClockConfig>:
 8001542:	220f      	movs	r2, #15
 8001544:	6002      	str	r2, [r0, #0]
 8001546:	f241 0208 	movw	r2, #4104	; 0x1008
 800154a:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800154e:	6813      	ldr	r3, [r2, #0]
 8001550:	f003 0303 	and.w	r3, r3, #3
 8001554:	6043      	str	r3, [r0, #4]
 8001556:	6813      	ldr	r3, [r2, #0]
 8001558:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800155c:	6083      	str	r3, [r0, #8]
 800155e:	6813      	ldr	r3, [r2, #0]
 8001560:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001564:	60c3      	str	r3, [r0, #12]
 8001566:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800156a:	6812      	ldr	r2, [r2, #0]
 800156c:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001570:	6102      	str	r2, [r0, #16]
 8001572:	f242 0000 	movw	r0, #8192	; 0x2000
 8001576:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800157a:	6800      	ldr	r0, [r0, #0]
 800157c:	f000 0007 	and.w	r0, r0, #7
 8001580:	6008      	str	r0, [r1, #0]
 8001582:	4770      	bx	lr

08001584 <HAL_TIM_Base_Init>:
 8001584:	b5d0      	push	{r4, r6, r7, lr}
 8001586:	af02      	add	r7, sp, #8
 8001588:	4604      	mov	r4, r0
 800158a:	2c00      	cmp	r4, #0
 800158c:	bf04      	itt	eq
 800158e:	2001      	moveq	r0, #1
 8001590:	bdd0      	popeq	{r4, r6, r7, pc}
 8001592:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001594:	b920      	cbnz	r0, 80015a0 <HAL_TIM_Base_Init+0x1c>
 8001596:	2000      	movs	r0, #0
 8001598:	63e0      	str	r0, [r4, #60]	; 0x3c
 800159a:	4620      	mov	r0, r4
 800159c:	f000 f892 	bl	80016c4 <HAL_TIM_Base_MspInit>
 80015a0:	2002      	movs	r0, #2
 80015a2:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015a6:	6420      	str	r0, [r4, #64]	; 0x40
 80015a8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ac:	6820      	ldr	r0, [r4, #0]
 80015ae:	6801      	ldr	r1, [r0, #0]
 80015b0:	4290      	cmp	r0, r2
 80015b2:	dc0f      	bgt.n	80015d4 <HAL_TIM_Base_Init+0x50>
 80015b4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015b8:	bf1e      	ittt	ne
 80015ba:	f240 4200 	movwne	r2, #1024	; 0x400
 80015be:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015c2:	4290      	cmpne	r0, r2
 80015c4:	d018      	beq.n	80015f8 <HAL_TIM_Base_Init+0x74>
 80015c6:	f640 0200 	movw	r2, #2048	; 0x800
 80015ca:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ce:	4290      	cmp	r0, r2
 80015d0:	d012      	beq.n	80015f8 <HAL_TIM_Base_Init+0x74>
 80015d2:	e015      	b.n	8001600 <HAL_TIM_Base_Init+0x7c>
 80015d4:	f640 4200 	movw	r2, #3072	; 0xc00
 80015d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015dc:	4290      	cmp	r0, r2
 80015de:	bf1e      	ittt	ne
 80015e0:	f243 4200 	movwne	r2, #13312	; 0x3400
 80015e4:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e8:	4290      	cmpne	r0, r2
 80015ea:	d005      	beq.n	80015f8 <HAL_TIM_Base_Init+0x74>
 80015ec:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015f0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015f4:	4290      	cmp	r0, r2
 80015f6:	d103      	bne.n	8001600 <HAL_TIM_Base_Init+0x7c>
 80015f8:	68a2      	ldr	r2, [r4, #8]
 80015fa:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015fe:	4311      	orrs	r1, r2
 8001600:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001604:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001608:	4290      	cmp	r0, r2
 800160a:	dd14      	ble.n	8001636 <HAL_TIM_Base_Init+0xb2>
 800160c:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001610:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001614:	4290      	cmp	r0, r2
 8001616:	dd1a      	ble.n	800164e <HAL_TIM_Base_Init+0xca>
 8001618:	f244 0200 	movw	r2, #16384	; 0x4000
 800161c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001620:	4290      	cmp	r0, r2
 8001622:	bf1e      	ittt	ne
 8001624:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001628:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800162c:	4290      	cmpne	r0, r2
 800162e:	d027      	beq.n	8001680 <HAL_TIM_Base_Init+0xfc>
 8001630:	f244 4200 	movw	r2, #17408	; 0x4400
 8001634:	e013      	b.n	800165e <HAL_TIM_Base_Init+0xda>
 8001636:	f240 72ff 	movw	r2, #2047	; 0x7ff
 800163a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800163e:	4290      	cmp	r0, r2
 8001640:	dc12      	bgt.n	8001668 <HAL_TIM_Base_Init+0xe4>
 8001642:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001646:	d01b      	beq.n	8001680 <HAL_TIM_Base_Init+0xfc>
 8001648:	f240 4200 	movw	r2, #1024	; 0x400
 800164c:	e014      	b.n	8001678 <HAL_TIM_Base_Init+0xf4>
 800164e:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001652:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001656:	4290      	cmp	r0, r2
 8001658:	d012      	beq.n	8001680 <HAL_TIM_Base_Init+0xfc>
 800165a:	f243 4200 	movw	r2, #13312	; 0x3400
 800165e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001662:	4290      	cmp	r0, r2
 8001664:	d00c      	beq.n	8001680 <HAL_TIM_Base_Init+0xfc>
 8001666:	e00f      	b.n	8001688 <HAL_TIM_Base_Init+0x104>
 8001668:	f640 0200 	movw	r2, #2048	; 0x800
 800166c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001670:	4290      	cmp	r0, r2
 8001672:	d005      	beq.n	8001680 <HAL_TIM_Base_Init+0xfc>
 8001674:	f640 4200 	movw	r2, #3072	; 0xc00
 8001678:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800167c:	4290      	cmp	r0, r2
 800167e:	d103      	bne.n	8001688 <HAL_TIM_Base_Init+0x104>
 8001680:	6922      	ldr	r2, [r4, #16]
 8001682:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001686:	4311      	orrs	r1, r2
 8001688:	69a2      	ldr	r2, [r4, #24]
 800168a:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 800168e:	4311      	orrs	r1, r2
 8001690:	6001      	str	r1, [r0, #0]
 8001692:	68e1      	ldr	r1, [r4, #12]
 8001694:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001696:	6861      	ldr	r1, [r4, #4]
 8001698:	6281      	str	r1, [r0, #40]	; 0x28
 800169a:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800169e:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016a2:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016a6:	2907      	cmp	r1, #7
 80016a8:	d807      	bhi.n	80016ba <HAL_TIM_Base_Init+0x136>
 80016aa:	2201      	movs	r2, #1
 80016ac:	fa02 f101 	lsl.w	r1, r2, r1
 80016b0:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016b4:	bf1c      	itt	ne
 80016b6:	6961      	ldrne	r1, [r4, #20]
 80016b8:	6301      	strne	r1, [r0, #48]	; 0x30
 80016ba:	2101      	movs	r1, #1
 80016bc:	6141      	str	r1, [r0, #20]
 80016be:	2000      	movs	r0, #0
 80016c0:	6421      	str	r1, [r4, #64]	; 0x40
 80016c2:	bdd0      	pop	{r4, r6, r7, pc}

080016c4 <HAL_TIM_Base_MspInit>:
 80016c4:	4770      	bx	lr

080016c6 <HAL_TIM_Base_Start_IT>:
 80016c6:	6800      	ldr	r0, [r0, #0]
 80016c8:	68c1      	ldr	r1, [r0, #12]
 80016ca:	f041 0101 	orr.w	r1, r1, #1
 80016ce:	60c1      	str	r1, [r0, #12]
 80016d0:	2107      	movs	r1, #7
 80016d2:	6882      	ldr	r2, [r0, #8]
 80016d4:	f2c0 0101 	movt	r1, #1
 80016d8:	400a      	ands	r2, r1
 80016da:	2a06      	cmp	r2, #6
 80016dc:	d008      	beq.n	80016f0 <HAL_TIM_Base_Start_IT+0x2a>
 80016de:	6882      	ldr	r2, [r0, #8]
 80016e0:	4011      	ands	r1, r2
 80016e2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016e6:	bf1e      	ittt	ne
 80016e8:	6801      	ldrne	r1, [r0, #0]
 80016ea:	f041 0101 	orrne.w	r1, r1, #1
 80016ee:	6001      	strne	r1, [r0, #0]
 80016f0:	2000      	movs	r0, #0
 80016f2:	4770      	bx	lr

080016f4 <HAL_TIM_IRQHandler>:
 80016f4:	b5d0      	push	{r4, r6, r7, lr}
 80016f6:	af02      	add	r7, sp, #8
 80016f8:	4604      	mov	r4, r0
 80016fa:	6820      	ldr	r0, [r4, #0]
 80016fc:	6901      	ldr	r1, [r0, #16]
 80016fe:	f011 0f02 	tst.w	r1, #2
 8001702:	bf1c      	itt	ne
 8001704:	68c1      	ldrne	r1, [r0, #12]
 8001706:	f011 0f02 	tstne.w	r1, #2
 800170a:	d015      	beq.n	8001738 <HAL_TIM_IRQHandler+0x44>
 800170c:	f06f 0102 	mvn.w	r1, #2
 8001710:	6101      	str	r1, [r0, #16]
 8001712:	2101      	movs	r1, #1
 8001714:	61e1      	str	r1, [r4, #28]
 8001716:	6980      	ldr	r0, [r0, #24]
 8001718:	f010 0f03 	tst.w	r0, #3
 800171c:	d003      	beq.n	8001726 <HAL_TIM_IRQHandler+0x32>
 800171e:	4620      	mov	r0, r4
 8001720:	f000 f8b1 	bl	8001886 <HAL_TIM_IC_CaptureCallback>
 8001724:	e005      	b.n	8001732 <HAL_TIM_IRQHandler+0x3e>
 8001726:	4620      	mov	r0, r4
 8001728:	f000 f8ae 	bl	8001888 <HAL_TIM_OC_DelayElapsedCallback>
 800172c:	4620      	mov	r0, r4
 800172e:	f000 f8ac 	bl	800188a <HAL_TIM_PWM_PulseFinishedCallback>
 8001732:	2000      	movs	r0, #0
 8001734:	61e0      	str	r0, [r4, #28]
 8001736:	6820      	ldr	r0, [r4, #0]
 8001738:	6901      	ldr	r1, [r0, #16]
 800173a:	f011 0f04 	tst.w	r1, #4
 800173e:	bf1c      	itt	ne
 8001740:	68c1      	ldrne	r1, [r0, #12]
 8001742:	f011 0f04 	tstne.w	r1, #4
 8001746:	d015      	beq.n	8001774 <HAL_TIM_IRQHandler+0x80>
 8001748:	f06f 0104 	mvn.w	r1, #4
 800174c:	6101      	str	r1, [r0, #16]
 800174e:	2102      	movs	r1, #2
 8001750:	61e1      	str	r1, [r4, #28]
 8001752:	6980      	ldr	r0, [r0, #24]
 8001754:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001758:	d003      	beq.n	8001762 <HAL_TIM_IRQHandler+0x6e>
 800175a:	4620      	mov	r0, r4
 800175c:	f000 f893 	bl	8001886 <HAL_TIM_IC_CaptureCallback>
 8001760:	e005      	b.n	800176e <HAL_TIM_IRQHandler+0x7a>
 8001762:	4620      	mov	r0, r4
 8001764:	f000 f890 	bl	8001888 <HAL_TIM_OC_DelayElapsedCallback>
 8001768:	4620      	mov	r0, r4
 800176a:	f000 f88e 	bl	800188a <HAL_TIM_PWM_PulseFinishedCallback>
 800176e:	2000      	movs	r0, #0
 8001770:	61e0      	str	r0, [r4, #28]
 8001772:	6820      	ldr	r0, [r4, #0]
 8001774:	6901      	ldr	r1, [r0, #16]
 8001776:	f011 0f08 	tst.w	r1, #8
 800177a:	bf1c      	itt	ne
 800177c:	68c1      	ldrne	r1, [r0, #12]
 800177e:	f011 0f08 	tstne.w	r1, #8
 8001782:	d015      	beq.n	80017b0 <HAL_TIM_IRQHandler+0xbc>
 8001784:	f06f 0108 	mvn.w	r1, #8
 8001788:	6101      	str	r1, [r0, #16]
 800178a:	2104      	movs	r1, #4
 800178c:	61e1      	str	r1, [r4, #28]
 800178e:	69c0      	ldr	r0, [r0, #28]
 8001790:	f010 0f03 	tst.w	r0, #3
 8001794:	d003      	beq.n	800179e <HAL_TIM_IRQHandler+0xaa>
 8001796:	4620      	mov	r0, r4
 8001798:	f000 f875 	bl	8001886 <HAL_TIM_IC_CaptureCallback>
 800179c:	e005      	b.n	80017aa <HAL_TIM_IRQHandler+0xb6>
 800179e:	4620      	mov	r0, r4
 80017a0:	f000 f872 	bl	8001888 <HAL_TIM_OC_DelayElapsedCallback>
 80017a4:	4620      	mov	r0, r4
 80017a6:	f000 f870 	bl	800188a <HAL_TIM_PWM_PulseFinishedCallback>
 80017aa:	2000      	movs	r0, #0
 80017ac:	61e0      	str	r0, [r4, #28]
 80017ae:	6820      	ldr	r0, [r4, #0]
 80017b0:	6901      	ldr	r1, [r0, #16]
 80017b2:	f011 0f10 	tst.w	r1, #16
 80017b6:	bf1c      	itt	ne
 80017b8:	68c1      	ldrne	r1, [r0, #12]
 80017ba:	f011 0f10 	tstne.w	r1, #16
 80017be:	d015      	beq.n	80017ec <HAL_TIM_IRQHandler+0xf8>
 80017c0:	f06f 0110 	mvn.w	r1, #16
 80017c4:	6101      	str	r1, [r0, #16]
 80017c6:	2108      	movs	r1, #8
 80017c8:	61e1      	str	r1, [r4, #28]
 80017ca:	69c0      	ldr	r0, [r0, #28]
 80017cc:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017d0:	d003      	beq.n	80017da <HAL_TIM_IRQHandler+0xe6>
 80017d2:	4620      	mov	r0, r4
 80017d4:	f000 f857 	bl	8001886 <HAL_TIM_IC_CaptureCallback>
 80017d8:	e005      	b.n	80017e6 <HAL_TIM_IRQHandler+0xf2>
 80017da:	4620      	mov	r0, r4
 80017dc:	f000 f854 	bl	8001888 <HAL_TIM_OC_DelayElapsedCallback>
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f852 	bl	800188a <HAL_TIM_PWM_PulseFinishedCallback>
 80017e6:	2000      	movs	r0, #0
 80017e8:	61e0      	str	r0, [r4, #28]
 80017ea:	6820      	ldr	r0, [r4, #0]
 80017ec:	6901      	ldr	r1, [r0, #16]
 80017ee:	f011 0f01 	tst.w	r1, #1
 80017f2:	bf1c      	itt	ne
 80017f4:	68c1      	ldrne	r1, [r0, #12]
 80017f6:	f011 0f01 	tstne.w	r1, #1
 80017fa:	d006      	beq.n	800180a <HAL_TIM_IRQHandler+0x116>
 80017fc:	f06f 0101 	mvn.w	r1, #1
 8001800:	6101      	str	r1, [r0, #16]
 8001802:	4620      	mov	r0, r4
 8001804:	f000 f894 	bl	8001930 <HAL_TIM_PeriodElapsedCallback>
 8001808:	6820      	ldr	r0, [r4, #0]
 800180a:	6901      	ldr	r1, [r0, #16]
 800180c:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001810:	bf1c      	itt	ne
 8001812:	68c1      	ldrne	r1, [r0, #12]
 8001814:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001818:	d006      	beq.n	8001828 <HAL_TIM_IRQHandler+0x134>
 800181a:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800181e:	6101      	str	r1, [r0, #16]
 8001820:	4620      	mov	r0, r4
 8001822:	f000 f835 	bl	8001890 <HAL_TIMEx_BreakCallback>
 8001826:	6820      	ldr	r0, [r4, #0]
 8001828:	6901      	ldr	r1, [r0, #16]
 800182a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800182e:	bf1c      	itt	ne
 8001830:	68c1      	ldrne	r1, [r0, #12]
 8001832:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001836:	d006      	beq.n	8001846 <HAL_TIM_IRQHandler+0x152>
 8001838:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800183c:	6101      	str	r1, [r0, #16]
 800183e:	4620      	mov	r0, r4
 8001840:	f000 f827 	bl	8001892 <HAL_TIMEx_Break2Callback>
 8001844:	6820      	ldr	r0, [r4, #0]
 8001846:	6901      	ldr	r1, [r0, #16]
 8001848:	f011 0f40 	tst.w	r1, #64	; 0x40
 800184c:	bf1c      	itt	ne
 800184e:	68c1      	ldrne	r1, [r0, #12]
 8001850:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001854:	d006      	beq.n	8001864 <HAL_TIM_IRQHandler+0x170>
 8001856:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800185a:	6101      	str	r1, [r0, #16]
 800185c:	4620      	mov	r0, r4
 800185e:	f000 f815 	bl	800188c <HAL_TIM_TriggerCallback>
 8001862:	6820      	ldr	r0, [r4, #0]
 8001864:	6901      	ldr	r1, [r0, #16]
 8001866:	f011 0f20 	tst.w	r1, #32
 800186a:	bf1c      	itt	ne
 800186c:	68c1      	ldrne	r1, [r0, #12]
 800186e:	f011 0f20 	tstne.w	r1, #32
 8001872:	d100      	bne.n	8001876 <HAL_TIM_IRQHandler+0x182>
 8001874:	bdd0      	pop	{r4, r6, r7, pc}
 8001876:	f06f 0120 	mvn.w	r1, #32
 800187a:	6101      	str	r1, [r0, #16]
 800187c:	4620      	mov	r0, r4
 800187e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001882:	f000 b804 	b.w	800188e <HAL_TIMEx_CommutationCallback>

08001886 <HAL_TIM_IC_CaptureCallback>:
 8001886:	4770      	bx	lr

08001888 <HAL_TIM_OC_DelayElapsedCallback>:
 8001888:	4770      	bx	lr

0800188a <HAL_TIM_PWM_PulseFinishedCallback>:
 800188a:	4770      	bx	lr

0800188c <HAL_TIM_TriggerCallback>:
 800188c:	4770      	bx	lr

0800188e <HAL_TIMEx_CommutationCallback>:
 800188e:	4770      	bx	lr

08001890 <HAL_TIMEx_BreakCallback>:
 8001890:	4770      	bx	lr

08001892 <HAL_TIMEx_Break2Callback>:
 8001892:	4770      	bx	lr

08001894 <HAL_InitTick>:
 8001894:	b5b0      	push	{r4, r5, r7, lr}
 8001896:	af02      	add	r7, sp, #8
 8001898:	b086      	sub	sp, #24
 800189a:	4601      	mov	r1, r0
 800189c:	2036      	movs	r0, #54	; 0x36
 800189e:	2200      	movs	r2, #0
 80018a0:	2400      	movs	r4, #0
 80018a2:	f7ff fc99 	bl	80011d8 <HAL_NVIC_SetPriority>
 80018a6:	2036      	movs	r0, #54	; 0x36
 80018a8:	f7ff fcc9 	bl	800123e <HAL_NVIC_EnableIRQ>
 80018ac:	f241 0058 	movw	r0, #4184	; 0x1058
 80018b0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018b4:	6801      	ldr	r1, [r0, #0]
 80018b6:	f041 0110 	orr.w	r1, r1, #16
 80018ba:	6001      	str	r1, [r0, #0]
 80018bc:	4669      	mov	r1, sp
 80018be:	6800      	ldr	r0, [r0, #0]
 80018c0:	f000 0010 	and.w	r0, r0, #16
 80018c4:	9001      	str	r0, [sp, #4]
 80018c6:	9801      	ldr	r0, [sp, #4]
 80018c8:	a801      	add	r0, sp, #4
 80018ca:	f7ff fe3a 	bl	8001542 <HAL_RCC_GetClockConfig>
 80018ce:	9d04      	ldr	r5, [sp, #16]
 80018d0:	f7ff fe0d 	bl	80014ee <HAL_RCC_GetPCLK1Freq>
 80018d4:	2d00      	cmp	r5, #0
 80018d6:	f640 21a4 	movw	r1, #2724	; 0xaa4
 80018da:	f241 0200 	movw	r2, #4096	; 0x1000
 80018de:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018e2:	bf18      	it	ne
 80018e4:	2501      	movne	r5, #1
 80018e6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018ea:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018ee:	40a8      	lsls	r0, r5
 80018f0:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018f4:	618c      	str	r4, [r1, #24]
 80018f6:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018fa:	fba0 0505 	umull	r0, r5, r0, r5
 80018fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001902:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001906:	e9c1 2000 	strd	r2, r0, [r1]
 800190a:	4608      	mov	r0, r1
 800190c:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001910:	610c      	str	r4, [r1, #16]
 8001912:	f7ff fe37 	bl	8001584 <HAL_TIM_Base_Init>
 8001916:	2800      	cmp	r0, #0
 8001918:	bf1e      	ittt	ne
 800191a:	2001      	movne	r0, #1
 800191c:	b006      	addne	sp, #24
 800191e:	bdb0      	popne	{r4, r5, r7, pc}
 8001920:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001924:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001928:	f7ff fecd 	bl	80016c6 <HAL_TIM_Base_Start_IT>
 800192c:	b006      	add	sp, #24
 800192e:	bdb0      	pop	{r4, r5, r7, pc}

08001930 <HAL_TIM_PeriodElapsedCallback>:
 8001930:	f7ff bc34 	b.w	800119c <HAL_IncTick>

08001934 <TIM6_DAC_IRQHandler>:
 8001934:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001938:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800193c:	f7ff beda 	b.w	80016f4 <HAL_TIM_IRQHandler>

08001940 <HAL_UART_Init>:
 8001940:	b5d0      	push	{r4, r6, r7, lr}
 8001942:	af02      	add	r7, sp, #8
 8001944:	4604      	mov	r4, r0
 8001946:	b194      	cbz	r4, 800196e <HAL_UART_Init+0x2e>
 8001948:	6f60      	ldr	r0, [r4, #116]	; 0x74
 800194a:	b920      	cbnz	r0, 8001956 <HAL_UART_Init+0x16>
 800194c:	2000      	movs	r0, #0
 800194e:	6720      	str	r0, [r4, #112]	; 0x70
 8001950:	4620      	mov	r0, r4
 8001952:	f000 f826 	bl	80019a2 <HAL_UART_MspInit>
 8001956:	2024      	movs	r0, #36	; 0x24
 8001958:	6760      	str	r0, [r4, #116]	; 0x74
 800195a:	6820      	ldr	r0, [r4, #0]
 800195c:	6801      	ldr	r1, [r0, #0]
 800195e:	f021 0101 	bic.w	r1, r1, #1
 8001962:	6001      	str	r1, [r0, #0]
 8001964:	4620      	mov	r0, r4
 8001966:	f000 f81d 	bl	80019a4 <UART_SetConfig>
 800196a:	2801      	cmp	r0, #1
 800196c:	d101      	bne.n	8001972 <HAL_UART_Init+0x32>
 800196e:	2001      	movs	r0, #1
 8001970:	bdd0      	pop	{r4, r6, r7, pc}
 8001972:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001974:	2800      	cmp	r0, #0
 8001976:	bf1c      	itt	ne
 8001978:	4620      	movne	r0, r4
 800197a:	f000 f944 	blne	8001c06 <UART_AdvFeatureConfig>
 800197e:	6820      	ldr	r0, [r4, #0]
 8001980:	6841      	ldr	r1, [r0, #4]
 8001982:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001986:	6041      	str	r1, [r0, #4]
 8001988:	6881      	ldr	r1, [r0, #8]
 800198a:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800198e:	6081      	str	r1, [r0, #8]
 8001990:	6801      	ldr	r1, [r0, #0]
 8001992:	f041 0101 	orr.w	r1, r1, #1
 8001996:	6001      	str	r1, [r0, #0]
 8001998:	4620      	mov	r0, r4
 800199a:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800199e:	f000 b99d 	b.w	8001cdc <UART_CheckIdleState>

080019a2 <HAL_UART_MspInit>:
 80019a2:	4770      	bx	lr

080019a4 <UART_SetConfig>:
 80019a4:	b5b0      	push	{r4, r5, r7, lr}
 80019a6:	af02      	add	r7, sp, #8
 80019a8:	4604      	mov	r4, r0
 80019aa:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019ae:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019b2:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019b6:	6821      	ldr	r1, [r4, #0]
 80019b8:	68a0      	ldr	r0, [r4, #8]
 80019ba:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019be:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019c2:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019c6:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019ca:	4310      	orrs	r0, r2
 80019cc:	69e2      	ldr	r2, [r4, #28]
 80019ce:	4571      	cmp	r1, lr
 80019d0:	ea40 0003 	orr.w	r0, r0, r3
 80019d4:	680b      	ldr	r3, [r1, #0]
 80019d6:	ea40 0002 	orr.w	r0, r0, r2
 80019da:	ea03 0305 	and.w	r3, r3, r5
 80019de:	f04f 0510 	mov.w	r5, #16
 80019e2:	ea40 0003 	orr.w	r0, r0, r3
 80019e6:	6008      	str	r0, [r1, #0]
 80019e8:	6848      	ldr	r0, [r1, #4]
 80019ea:	68e3      	ldr	r3, [r4, #12]
 80019ec:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 80019f0:	ea40 0003 	orr.w	r0, r0, r3
 80019f4:	6048      	str	r0, [r1, #4]
 80019f6:	69a0      	ldr	r0, [r4, #24]
 80019f8:	bf1c      	itt	ne
 80019fa:	6a23      	ldrne	r3, [r4, #32]
 80019fc:	4318      	orrne	r0, r3
 80019fe:	688b      	ldr	r3, [r1, #8]
 8001a00:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a04:	4318      	orrs	r0, r3
 8001a06:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a0a:	6088      	str	r0, [r1, #8]
 8001a0c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a10:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a14:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a18:	4299      	cmp	r1, r3
 8001a1a:	dc15      	bgt.n	8001a48 <UART_SetConfig+0xa4>
 8001a1c:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a20:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a24:	4299      	cmp	r1, r3
 8001a26:	d024      	beq.n	8001a72 <UART_SetConfig+0xce>
 8001a28:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a2c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a30:	4299      	cmp	r1, r3
 8001a32:	d022      	beq.n	8001a7a <UART_SetConfig+0xd6>
 8001a34:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a38:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3c:	4299      	cmp	r1, r3
 8001a3e:	d131      	bne.n	8001aa4 <UART_SetConfig+0x100>
 8001a40:	f8dc 3000 	ldr.w	r3, [ip]
 8001a44:	099d      	lsrs	r5, r3, #6
 8001a46:	e023      	b.n	8001a90 <UART_SetConfig+0xec>
 8001a48:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a4c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a50:	4299      	cmp	r1, r3
 8001a52:	d016      	beq.n	8001a82 <UART_SetConfig+0xde>
 8001a54:	4571      	cmp	r1, lr
 8001a56:	d018      	beq.n	8001a8a <UART_SetConfig+0xe6>
 8001a58:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a5c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a60:	4299      	cmp	r1, r3
 8001a62:	d11f      	bne.n	8001aa4 <UART_SetConfig+0x100>
 8001a64:	f8dc 5000 	ldr.w	r5, [ip]
 8001a68:	f247 0370 	movw	r3, #28784	; 0x7070
 8001a6c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a70:	e012      	b.n	8001a98 <UART_SetConfig+0xf4>
 8001a72:	f8dc 3000 	ldr.w	r3, [ip]
 8001a76:	089d      	lsrs	r5, r3, #2
 8001a78:	e00a      	b.n	8001a90 <UART_SetConfig+0xec>
 8001a7a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a7e:	091d      	lsrs	r5, r3, #4
 8001a80:	e006      	b.n	8001a90 <UART_SetConfig+0xec>
 8001a82:	f8dc 3000 	ldr.w	r3, [ip]
 8001a86:	0a1d      	lsrs	r5, r3, #8
 8001a88:	e002      	b.n	8001a90 <UART_SetConfig+0xec>
 8001a8a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a8e:	0a9d      	lsrs	r5, r3, #10
 8001a90:	f247 0380 	movw	r3, #28800	; 0x7080
 8001a94:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a98:	f005 0503 	and.w	r5, r5, #3
 8001a9c:	f085 0502 	eor.w	r5, r5, #2
 8001aa0:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001aa4:	4571      	cmp	r1, lr
 8001aa6:	d012      	beq.n	8001ace <UART_SetConfig+0x12a>
 8001aa8:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001aac:	d11d      	bne.n	8001aea <UART_SetConfig+0x146>
 8001aae:	f005 001f 	and.w	r0, r5, #31
 8001ab2:	2101      	movs	r1, #1
 8001ab4:	2808      	cmp	r0, #8
 8001ab6:	f200 809f 	bhi.w	8001bf8 <UART_SetConfig+0x254>
 8001aba:	e8df f000 	tbb	[pc, r0]
 8001abe:	4005      	.short	0x4005
 8001ac0:	9d499d43 	.word	0x9d499d43
 8001ac4:	004f9d9d 	.word	0x004f9d9d
 8001ac8:	f7ff fd11 	bl	80014ee <HAL_RCC_GetPCLK1Freq>
 8001acc:	e042      	b.n	8001b54 <UART_SetConfig+0x1b0>
 8001ace:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001ad2:	2101      	movs	r1, #1
 8001ad4:	2d04      	cmp	r5, #4
 8001ad6:	f200 808f 	bhi.w	8001bf8 <UART_SetConfig+0x254>
 8001ada:	e8df f005 	tbb	[pc, r5]
 8001ade:	1c03      	.short	0x1c03
 8001ae0:	001a8d16 	.word	0x001a8d16
 8001ae4:	f7ff fd03 	bl	80014ee <HAL_RCC_GetPCLK1Freq>
 8001ae8:	e011      	b.n	8001b0e <UART_SetConfig+0x16a>
 8001aea:	f005 021f 	and.w	r2, r5, #31
 8001aee:	2101      	movs	r1, #1
 8001af0:	2a08      	cmp	r2, #8
 8001af2:	f200 8081 	bhi.w	8001bf8 <UART_SetConfig+0x254>
 8001af6:	e8df f002 	tbb	[pc, r2]
 8001afa:	4305      	.short	0x4305
 8001afc:	7f487f46 	.word	0x7f487f46
 8001b00:	004e7f7f 	.word	0x004e7f7f
 8001b04:	f7ff fcf3 	bl	80014ee <HAL_RCC_GetPCLK1Freq>
 8001b08:	e041      	b.n	8001b8e <UART_SetConfig+0x1ea>
 8001b0a:	f7ff fc91 	bl	8001430 <HAL_RCC_GetSysClockFreq>
 8001b0e:	b910      	cbnz	r0, 8001b16 <UART_SetConfig+0x172>
 8001b10:	e071      	b.n	8001bf6 <UART_SetConfig+0x252>
 8001b12:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b16:	6862      	ldr	r2, [r4, #4]
 8001b18:	2101      	movs	r1, #1
 8001b1a:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b1e:	4298      	cmp	r0, r3
 8001b20:	d36a      	bcc.n	8001bf8 <UART_SetConfig+0x254>
 8001b22:	0313      	lsls	r3, r2, #12
 8001b24:	4298      	cmp	r0, r3
 8001b26:	bf9c      	itt	ls
 8001b28:	2101      	movls	r1, #1
 8001b2a:	2d04      	cmpls	r5, #4
 8001b2c:	d864      	bhi.n	8001bf8 <UART_SetConfig+0x254>
 8001b2e:	e8df f005 	tbb	[pc, r5]
 8001b32:	3e03      	.short	0x3e03
 8001b34:	00526345 	.word	0x00526345
 8001b38:	f7ff fcd9 	bl	80014ee <HAL_RCC_GetPCLK1Freq>
 8001b3c:	e040      	b.n	8001bc0 <UART_SetConfig+0x21c>
 8001b3e:	f7ff fceb 	bl	8001518 <HAL_RCC_GetPCLK2Freq>
 8001b42:	e007      	b.n	8001b54 <UART_SetConfig+0x1b0>
 8001b44:	6861      	ldr	r1, [r4, #4]
 8001b46:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b4a:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b4e:	e008      	b.n	8001b62 <UART_SetConfig+0x1be>
 8001b50:	f7ff fc6e 	bl	8001430 <HAL_RCC_GetSysClockFreq>
 8001b54:	6861      	ldr	r1, [r4, #4]
 8001b56:	0040      	lsls	r0, r0, #1
 8001b58:	084a      	lsrs	r2, r1, #1
 8001b5a:	e003      	b.n	8001b64 <UART_SetConfig+0x1c0>
 8001b5c:	6861      	ldr	r1, [r4, #4]
 8001b5e:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b62:	0848      	lsrs	r0, r1, #1
 8001b64:	4410      	add	r0, r2
 8001b66:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b6a:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b6e:	4001      	ands	r1, r0
 8001b70:	2910      	cmp	r1, #16
 8001b72:	d303      	bcc.n	8001b7c <UART_SetConfig+0x1d8>
 8001b74:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b78:	4308      	orrs	r0, r1
 8001b7a:	e03a      	b.n	8001bf2 <UART_SetConfig+0x24e>
 8001b7c:	2101      	movs	r1, #1
 8001b7e:	e03b      	b.n	8001bf8 <UART_SetConfig+0x254>
 8001b80:	f7ff fcca 	bl	8001518 <HAL_RCC_GetPCLK2Freq>
 8001b84:	e003      	b.n	8001b8e <UART_SetConfig+0x1ea>
 8001b86:	6862      	ldr	r2, [r4, #4]
 8001b88:	e008      	b.n	8001b9c <UART_SetConfig+0x1f8>
 8001b8a:	f7ff fc51 	bl	8001430 <HAL_RCC_GetSysClockFreq>
 8001b8e:	6862      	ldr	r2, [r4, #4]
 8001b90:	4601      	mov	r1, r0
 8001b92:	0850      	lsrs	r0, r2, #1
 8001b94:	e003      	b.n	8001b9e <UART_SetConfig+0x1fa>
 8001b96:	6862      	ldr	r2, [r4, #4]
 8001b98:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b9c:	0851      	lsrs	r1, r2, #1
 8001b9e:	4408      	add	r0, r1
 8001ba0:	fbb0 f0f2 	udiv	r0, r0, r2
 8001ba4:	b280      	uxth	r0, r0
 8001ba6:	2810      	cmp	r0, #16
 8001ba8:	d223      	bcs.n	8001bf2 <UART_SetConfig+0x24e>
 8001baa:	2101      	movs	r1, #1
 8001bac:	e024      	b.n	8001bf8 <UART_SetConfig+0x254>
 8001bae:	2000      	movs	r0, #0
 8001bb0:	2100      	movs	r1, #0
 8001bb2:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bb6:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bba:	e006      	b.n	8001bca <UART_SetConfig+0x226>
 8001bbc:	f7ff fc38 	bl	8001430 <HAL_RCC_GetSysClockFreq>
 8001bc0:	6862      	ldr	r2, [r4, #4]
 8001bc2:	0e01      	lsrs	r1, r0, #24
 8001bc4:	0853      	lsrs	r3, r2, #1
 8001bc6:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bca:	f141 0100 	adc.w	r1, r1, #0
 8001bce:	2300      	movs	r3, #0
 8001bd0:	f7fe ffbc 	bl	8000b4c <__aeabi_uldivmod>
 8001bd4:	e005      	b.n	8001be2 <UART_SetConfig+0x23e>
 8001bd6:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bda:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bde:	fbb0 f0f2 	udiv	r0, r0, r2
 8001be2:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001be6:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001bea:	f2c0 020f 	movt	r2, #15
 8001bee:	4291      	cmp	r1, r2
 8001bf0:	d807      	bhi.n	8001c02 <UART_SetConfig+0x25e>
 8001bf2:	6821      	ldr	r1, [r4, #0]
 8001bf4:	60c8      	str	r0, [r1, #12]
 8001bf6:	2100      	movs	r1, #0
 8001bf8:	2000      	movs	r0, #0
 8001bfa:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001bfe:	4608      	mov	r0, r1
 8001c00:	bdb0      	pop	{r4, r5, r7, pc}
 8001c02:	2101      	movs	r1, #1
 8001c04:	e7f8      	b.n	8001bf8 <UART_SetConfig+0x254>

08001c06 <UART_AdvFeatureConfig>:
 8001c06:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c08:	f011 0f01 	tst.w	r1, #1
 8001c0c:	d008      	beq.n	8001c20 <UART_AdvFeatureConfig+0x1a>
 8001c0e:	6802      	ldr	r2, [r0, #0]
 8001c10:	6853      	ldr	r3, [r2, #4]
 8001c12:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c16:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c1a:	ea43 030c 	orr.w	r3, r3, ip
 8001c1e:	6053      	str	r3, [r2, #4]
 8001c20:	078a      	lsls	r2, r1, #30
 8001c22:	d508      	bpl.n	8001c36 <UART_AdvFeatureConfig+0x30>
 8001c24:	6802      	ldr	r2, [r0, #0]
 8001c26:	6853      	ldr	r3, [r2, #4]
 8001c28:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c2c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c30:	ea43 030c 	orr.w	r3, r3, ip
 8001c34:	6053      	str	r3, [r2, #4]
 8001c36:	074a      	lsls	r2, r1, #29
 8001c38:	d508      	bpl.n	8001c4c <UART_AdvFeatureConfig+0x46>
 8001c3a:	6802      	ldr	r2, [r0, #0]
 8001c3c:	6853      	ldr	r3, [r2, #4]
 8001c3e:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c42:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c46:	ea43 030c 	orr.w	r3, r3, ip
 8001c4a:	6053      	str	r3, [r2, #4]
 8001c4c:	070a      	lsls	r2, r1, #28
 8001c4e:	d508      	bpl.n	8001c62 <UART_AdvFeatureConfig+0x5c>
 8001c50:	6802      	ldr	r2, [r0, #0]
 8001c52:	6853      	ldr	r3, [r2, #4]
 8001c54:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c58:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c5c:	ea43 030c 	orr.w	r3, r3, ip
 8001c60:	6053      	str	r3, [r2, #4]
 8001c62:	06ca      	lsls	r2, r1, #27
 8001c64:	d508      	bpl.n	8001c78 <UART_AdvFeatureConfig+0x72>
 8001c66:	6802      	ldr	r2, [r0, #0]
 8001c68:	6893      	ldr	r3, [r2, #8]
 8001c6a:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c6e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c72:	ea43 030c 	orr.w	r3, r3, ip
 8001c76:	6093      	str	r3, [r2, #8]
 8001c78:	068a      	lsls	r2, r1, #26
 8001c7a:	d508      	bpl.n	8001c8e <UART_AdvFeatureConfig+0x88>
 8001c7c:	6802      	ldr	r2, [r0, #0]
 8001c7e:	6893      	ldr	r3, [r2, #8]
 8001c80:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c84:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c88:	ea43 030c 	orr.w	r3, r3, ip
 8001c8c:	6093      	str	r3, [r2, #8]
 8001c8e:	b580      	push	{r7, lr}
 8001c90:	466f      	mov	r7, sp
 8001c92:	064a      	lsls	r2, r1, #25
 8001c94:	d515      	bpl.n	8001cc2 <UART_AdvFeatureConfig+0xbc>
 8001c96:	f8d0 e000 	ldr.w	lr, [r0]
 8001c9a:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c9e:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001ca0:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001ca4:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001ca8:	ea42 0203 	orr.w	r2, r2, r3
 8001cac:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cb0:	d107      	bne.n	8001cc2 <UART_AdvFeatureConfig+0xbc>
 8001cb2:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cb6:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cb8:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cbc:	431a      	orrs	r2, r3
 8001cbe:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cc2:	0609      	lsls	r1, r1, #24
 8001cc4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cc8:	bf58      	it	pl
 8001cca:	4770      	bxpl	lr
 8001ccc:	6801      	ldr	r1, [r0, #0]
 8001cce:	684a      	ldr	r2, [r1, #4]
 8001cd0:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001cd2:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001cd6:	4310      	orrs	r0, r2
 8001cd8:	6048      	str	r0, [r1, #4]
 8001cda:	4770      	bx	lr

08001cdc <UART_CheckIdleState>:
 8001cdc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cde:	af03      	add	r7, sp, #12
 8001ce0:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ce4:	4604      	mov	r4, r0
 8001ce6:	2000      	movs	r0, #0
 8001ce8:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001cea:	f7ff fa5f 	bl	80011ac <HAL_GetTick>
 8001cee:	4605      	mov	r5, r0
 8001cf0:	6820      	ldr	r0, [r4, #0]
 8001cf2:	6801      	ldr	r1, [r0, #0]
 8001cf4:	f011 0f08 	tst.w	r1, #8
 8001cf8:	d00f      	beq.n	8001d1a <UART_CheckIdleState+0x3e>
 8001cfa:	69c1      	ldr	r1, [r0, #28]
 8001cfc:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d00:	d10b      	bne.n	8001d1a <UART_CheckIdleState+0x3e>
 8001d02:	2600      	movs	r6, #0
 8001d04:	f7ff fa52 	bl	80011ac <HAL_GetTick>
 8001d08:	1b41      	subs	r1, r0, r5
 8001d0a:	6820      	ldr	r0, [r4, #0]
 8001d0c:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d10:	d11b      	bne.n	8001d4a <UART_CheckIdleState+0x6e>
 8001d12:	69c1      	ldr	r1, [r0, #28]
 8001d14:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d18:	d0f4      	beq.n	8001d04 <UART_CheckIdleState+0x28>
 8001d1a:	6801      	ldr	r1, [r0, #0]
 8001d1c:	f011 0f04 	tst.w	r1, #4
 8001d20:	d101      	bne.n	8001d26 <UART_CheckIdleState+0x4a>
 8001d22:	2600      	movs	r6, #0
 8001d24:	e01a      	b.n	8001d5c <UART_CheckIdleState+0x80>
 8001d26:	69c0      	ldr	r0, [r0, #28]
 8001d28:	2600      	movs	r6, #0
 8001d2a:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d2e:	d115      	bne.n	8001d5c <UART_CheckIdleState+0x80>
 8001d30:	f7ff fa3c 	bl	80011ac <HAL_GetTick>
 8001d34:	1b41      	subs	r1, r0, r5
 8001d36:	6820      	ldr	r0, [r4, #0]
 8001d38:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d3c:	d105      	bne.n	8001d4a <UART_CheckIdleState+0x6e>
 8001d3e:	69c0      	ldr	r0, [r0, #28]
 8001d40:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d44:	d0f4      	beq.n	8001d30 <UART_CheckIdleState+0x54>
 8001d46:	2600      	movs	r6, #0
 8001d48:	e008      	b.n	8001d5c <UART_CheckIdleState+0x80>
 8001d4a:	6801      	ldr	r1, [r0, #0]
 8001d4c:	2603      	movs	r6, #3
 8001d4e:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d52:	6001      	str	r1, [r0, #0]
 8001d54:	6881      	ldr	r1, [r0, #8]
 8001d56:	f021 0101 	bic.w	r1, r1, #1
 8001d5a:	6081      	str	r1, [r0, #8]
 8001d5c:	2020      	movs	r0, #32
 8001d5e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d60:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d62:	2000      	movs	r0, #0
 8001d64:	6720      	str	r0, [r4, #112]	; 0x70
 8001d66:	4630      	mov	r0, r6
 8001d68:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d6c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d6e <HAL_UART_Transmit>:
 8001d6e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d70:	af03      	add	r7, sp, #12
 8001d72:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d76:	b081      	sub	sp, #4
 8001d78:	4604      	mov	r4, r0
 8001d7a:	461d      	mov	r5, r3
 8001d7c:	4616      	mov	r6, r2
 8001d7e:	4689      	mov	r9, r1
 8001d80:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d82:	2820      	cmp	r0, #32
 8001d84:	d109      	bne.n	8001d9a <HAL_UART_Transmit+0x2c>
 8001d86:	f1b9 0f00 	cmp.w	r9, #0
 8001d8a:	f04f 0001 	mov.w	r0, #1
 8001d8e:	bf18      	it	ne
 8001d90:	2e00      	cmpne	r6, #0
 8001d92:	d003      	beq.n	8001d9c <HAL_UART_Transmit+0x2e>
 8001d94:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d96:	2801      	cmp	r0, #1
 8001d98:	d104      	bne.n	8001da4 <HAL_UART_Transmit+0x36>
 8001d9a:	2002      	movs	r0, #2
 8001d9c:	b001      	add	sp, #4
 8001d9e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001da2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001da4:	2001      	movs	r0, #1
 8001da6:	6720      	str	r0, [r4, #112]	; 0x70
 8001da8:	2000      	movs	r0, #0
 8001daa:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001dac:	2021      	movs	r0, #33	; 0x21
 8001dae:	6760      	str	r0, [r4, #116]	; 0x74
 8001db0:	f7ff f9fc 	bl	80011ac <HAL_GetTick>
 8001db4:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001db8:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001dbc:	4680      	mov	r8, r0
 8001dbe:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dc2:	f8d4 b000 	ldr.w	fp, [r4]
 8001dc6:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001dca:	2900      	cmp	r1, #0
 8001dcc:	d040      	beq.n	8001e50 <HAL_UART_Transmit+0xe2>
 8001dce:	f105 0a01 	add.w	sl, r5, #1
 8001dd2:	0600      	lsls	r0, r0, #24
 8001dd4:	d410      	bmi.n	8001df8 <HAL_UART_Transmit+0x8a>
 8001dd6:	465e      	mov	r6, fp
 8001dd8:	f1ba 0f00 	cmp.w	sl, #0
 8001ddc:	d007      	beq.n	8001dee <HAL_UART_Transmit+0x80>
 8001dde:	b33d      	cbz	r5, 8001e30 <HAL_UART_Transmit+0xc2>
 8001de0:	f7ff f9e4 	bl	80011ac <HAL_GetTick>
 8001de4:	6826      	ldr	r6, [r4, #0]
 8001de6:	eba0 0008 	sub.w	r0, r0, r8
 8001dea:	42a8      	cmp	r0, r5
 8001dec:	d821      	bhi.n	8001e32 <HAL_UART_Transmit+0xc4>
 8001dee:	69f0      	ldr	r0, [r6, #28]
 8001df0:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001df4:	d0f0      	beq.n	8001dd8 <HAL_UART_Transmit+0x6a>
 8001df6:	e000      	b.n	8001dfa <HAL_UART_Transmit+0x8c>
 8001df8:	465e      	mov	r6, fp
 8001dfa:	68a0      	ldr	r0, [r4, #8]
 8001dfc:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e00:	bf04      	itt	eq
 8001e02:	6920      	ldreq	r0, [r4, #16]
 8001e04:	2800      	cmpeq	r0, #0
 8001e06:	d002      	beq.n	8001e0e <HAL_UART_Transmit+0xa0>
 8001e08:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e0c:	e003      	b.n	8001e16 <HAL_UART_Transmit+0xa8>
 8001e0e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e12:	f36f 205f 	bfc	r0, #9, #23
 8001e16:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e18:	46b3      	mov	fp, r6
 8001e1a:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e1e:	3801      	subs	r0, #1
 8001e20:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e24:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e28:	69f0      	ldr	r0, [r6, #28]
 8001e2a:	2900      	cmp	r1, #0
 8001e2c:	d1d1      	bne.n	8001dd2 <HAL_UART_Transmit+0x64>
 8001e2e:	e010      	b.n	8001e52 <HAL_UART_Transmit+0xe4>
 8001e30:	465e      	mov	r6, fp
 8001e32:	6830      	ldr	r0, [r6, #0]
 8001e34:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e38:	6030      	str	r0, [r6, #0]
 8001e3a:	68b0      	ldr	r0, [r6, #8]
 8001e3c:	f020 0001 	bic.w	r0, r0, #1
 8001e40:	60b0      	str	r0, [r6, #8]
 8001e42:	2020      	movs	r0, #32
 8001e44:	6760      	str	r0, [r4, #116]	; 0x74
 8001e46:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e48:	2000      	movs	r0, #0
 8001e4a:	6720      	str	r0, [r4, #112]	; 0x70
 8001e4c:	2003      	movs	r0, #3
 8001e4e:	e7a5      	b.n	8001d9c <HAL_UART_Transmit+0x2e>
 8001e50:	465e      	mov	r6, fp
 8001e52:	0640      	lsls	r0, r0, #25
 8001e54:	d411      	bmi.n	8001e7a <HAL_UART_Transmit+0x10c>
 8001e56:	f105 0901 	add.w	r9, r5, #1
 8001e5a:	4630      	mov	r0, r6
 8001e5c:	f1b9 0f00 	cmp.w	r9, #0
 8001e60:	d007      	beq.n	8001e72 <HAL_UART_Transmit+0x104>
 8001e62:	b17d      	cbz	r5, 8001e84 <HAL_UART_Transmit+0x116>
 8001e64:	f7ff f9a2 	bl	80011ac <HAL_GetTick>
 8001e68:	eba0 0108 	sub.w	r1, r0, r8
 8001e6c:	6820      	ldr	r0, [r4, #0]
 8001e6e:	42a9      	cmp	r1, r5
 8001e70:	d809      	bhi.n	8001e86 <HAL_UART_Transmit+0x118>
 8001e72:	69c1      	ldr	r1, [r0, #28]
 8001e74:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e78:	d0f0      	beq.n	8001e5c <HAL_UART_Transmit+0xee>
 8001e7a:	2020      	movs	r0, #32
 8001e7c:	6760      	str	r0, [r4, #116]	; 0x74
 8001e7e:	2000      	movs	r0, #0
 8001e80:	6720      	str	r0, [r4, #112]	; 0x70
 8001e82:	e78b      	b.n	8001d9c <HAL_UART_Transmit+0x2e>
 8001e84:	4630      	mov	r0, r6
 8001e86:	6801      	ldr	r1, [r0, #0]
 8001e88:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e8c:	6001      	str	r1, [r0, #0]
 8001e8e:	6881      	ldr	r1, [r0, #8]
 8001e90:	f021 0101 	bic.w	r1, r1, #1
 8001e94:	6081      	str	r1, [r0, #8]
 8001e96:	e7d4      	b.n	8001e42 <HAL_UART_Transmit+0xd4>

08001e98 <BSP_COM_Init>:
 8001e98:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e9a:	af03      	add	r7, sp, #12
 8001e9c:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ea0:	b086      	sub	sp, #24
 8001ea2:	4605      	mov	r5, r0
 8001ea4:	4688      	mov	r8, r1
 8001ea6:	b9f5      	cbnz	r5, 8001ee6 <BSP_COM_Init+0x4e>
 8001ea8:	f241 004c 	movw	r0, #4172	; 0x104c
 8001eac:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001eb0:	6801      	ldr	r1, [r0, #0]
 8001eb2:	f041 0102 	orr.w	r1, r1, #2
 8001eb6:	6001      	str	r1, [r0, #0]
 8001eb8:	6801      	ldr	r1, [r0, #0]
 8001eba:	f001 0102 	and.w	r1, r1, #2
 8001ebe:	9101      	str	r1, [sp, #4]
 8001ec0:	9901      	ldr	r1, [sp, #4]
 8001ec2:	6801      	ldr	r1, [r0, #0]
 8001ec4:	f041 0102 	orr.w	r1, r1, #2
 8001ec8:	6001      	str	r1, [r0, #0]
 8001eca:	6801      	ldr	r1, [r0, #0]
 8001ecc:	f001 0102 	and.w	r1, r1, #2
 8001ed0:	9101      	str	r1, [sp, #4]
 8001ed2:	9901      	ldr	r1, [sp, #4]
 8001ed4:	6941      	ldr	r1, [r0, #20]
 8001ed6:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001eda:	6141      	str	r1, [r0, #20]
 8001edc:	6940      	ldr	r0, [r0, #20]
 8001ede:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001ee2:	9001      	str	r0, [sp, #4]
 8001ee4:	9801      	ldr	r0, [sp, #4]
 8001ee6:	2040      	movs	r0, #64	; 0x40
 8001ee8:	2402      	movs	r4, #2
 8001eea:	ae01      	add	r6, sp, #4
 8001eec:	f04f 0907 	mov.w	r9, #7
 8001ef0:	9001      	str	r0, [sp, #4]
 8001ef2:	2000      	movs	r0, #0
 8001ef4:	9402      	str	r4, [sp, #8]
 8001ef6:	9404      	str	r4, [sp, #16]
 8001ef8:	4631      	mov	r1, r6
 8001efa:	9003      	str	r0, [sp, #12]
 8001efc:	f240 000c 	movw	r0, #12
 8001f00:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f04:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f08:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f0c:	f7ff f9a7 	bl	800125e <HAL_GPIO_Init>
 8001f10:	2080      	movs	r0, #128	; 0x80
 8001f12:	4631      	mov	r1, r6
 8001f14:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f18:	f240 0010 	movw	r0, #16
 8001f1c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f20:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f24:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f28:	f7ff f999 	bl	800125e <HAL_GPIO_Init>
 8001f2c:	f240 0008 	movw	r0, #8
 8001f30:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f34:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f38:	f8c8 0000 	str.w	r0, [r8]
 8001f3c:	4640      	mov	r0, r8
 8001f3e:	f7ff fcff 	bl	8001940 <HAL_UART_Init>
 8001f42:	b006      	add	sp, #24
 8001f44:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f48:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f4a <initialise_benchmark>:
 8001f4a:	4770      	bx	lr
 8001f4c:	0000      	movs	r0, r0
	...

08001f50 <benchmark>:
 8001f50:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f52:	af03      	add	r7, sp, #12
 8001f54:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f58:	b081      	sub	sp, #4
 8001f5a:	ed2d 8b08 	vpush	{d8-d11}
 8001f5e:	b082      	sub	sp, #8
 8001f60:	ed9f 0b3d 	vldr	d0, [pc, #244]	; 8002058 <benchmark+0x108>
 8001f64:	ed9f 8a3f 	vldr	s16, [pc, #252]	; 8002064 <benchmark+0x114>
 8001f68:	f04f 0900 	mov.w	r9, #0
 8001f6c:	eeb2 9a04 	vmov.f32	s18, #36	; 0x41200000  10.0
 8001f70:	f242 7a10 	movw	sl, #10000	; 0x2710
 8001f74:	f8cd 9004 	str.w	r9, [sp, #4]
 8001f78:	ec5b 8b10 	vmov	r8, fp, d0
 8001f7c:	e012      	b.n	8001fa4 <benchmark+0x54>
 8001f7e:	ed9d 0a01 	vldr	s0, [sp, #4]
 8001f82:	f109 0964 	add.w	r9, r9, #100	; 0x64
 8001f86:	45d1      	cmp	r9, sl
 8001f88:	ee3b 0a00 	vadd.f32	s0, s22, s0
 8001f8c:	ed8d 0a01 	vstr	s0, [sp, #4]
 8001f90:	db08      	blt.n	8001fa4 <benchmark+0x54>
 8001f92:	e04d      	b.n	8002030 <benchmark+0xe0>
 8001f94:	ed9d 0a01 	vldr	s0, [sp, #4]
 8001f98:	f04f 0964 	mov.w	r9, #100	; 0x64
 8001f9c:	ee30 0a08 	vadd.f32	s0, s0, s16
 8001fa0:	ed8d 0a01 	vstr	s0, [sp, #4]
 8001fa4:	ee00 9a10 	vmov	s0, r9
 8001fa8:	f1b9 0f00 	cmp.w	r9, #0
 8001fac:	eeb8 aac0 	vcvt.f32.s32	s20, s0
 8001fb0:	d0f0      	beq.n	8001f94 <benchmark+0x44>
 8001fb2:	2000      	movs	r0, #0
 8001fb4:	ee8a ba09 	vdiv.f32	s22, s20, s18
 8001fb8:	2513      	movs	r5, #19
 8001fba:	bbb0      	cbnz	r0, 800202a <benchmark+0xda>
 8001fbc:	eeb0 0a4a 	vmov.f32	s0, s20
 8001fc0:	ee0b 0a4b 	vmls.f32	s0, s22, s22
 8001fc4:	ee10 0a10 	vmov	r0, s0
 8001fc8:	f7fe fa7e 	bl	80004c8 <__aeabi_f2d>
 8001fcc:	4606      	mov	r6, r0
 8001fce:	ee1b 0a10 	vmov	r0, s22
 8001fd2:	460c      	mov	r4, r1
 8001fd4:	f7fe fa78 	bl	80004c8 <__aeabi_f2d>
 8001fd8:	4602      	mov	r2, r0
 8001fda:	460b      	mov	r3, r1
 8001fdc:	f7fe f916 	bl	800020c <__adddf3>
 8001fe0:	4602      	mov	r2, r0
 8001fe2:	460b      	mov	r3, r1
 8001fe4:	4630      	mov	r0, r6
 8001fe6:	4621      	mov	r1, r4
 8001fe8:	f7fe fbf0 	bl	80007cc <__aeabi_ddiv>
 8001fec:	f7fe fd5e 	bl	8000aac <__aeabi_d2f>
 8001ff0:	ee00 0a10 	vmov	s0, r0
 8001ff4:	ee3b ba00 	vadd.f32	s22, s22, s0
 8001ff8:	eeb0 0a4a 	vmov.f32	s0, s20
 8001ffc:	ee0b 0a4b 	vmls.f32	s0, s22, s22
 8002000:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8002004:	eeb1 1a40 	vneg.f32	s2, s0
 8002008:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800200c:	bf48      	it	mi
 800200e:	eeb0 0a41 	vmovmi.f32	s0, s2
 8002012:	ee10 0a10 	vmov	r0, s0
 8002016:	f7fe fa57 	bl	80004c8 <__aeabi_f2d>
 800201a:	4642      	mov	r2, r8
 800201c:	465b      	mov	r3, fp
 800201e:	f7fe fd27 	bl	8000a70 <__aeabi_dcmple>
 8002022:	2800      	cmp	r0, #0
 8002024:	bf14      	ite	ne
 8002026:	2001      	movne	r0, #1
 8002028:	2000      	moveq	r0, #0
 800202a:	3d01      	subs	r5, #1
 800202c:	d1c5      	bne.n	8001fba <benchmark+0x6a>
 800202e:	e7a6      	b.n	8001f7e <benchmark+0x2e>
 8002030:	ed9f 0a0b 	vldr	s0, [pc, #44]	; 8002060 <benchmark+0x110>
 8002034:	ed9d 1a01 	vldr	s2, [sp, #4]
 8002038:	ee21 0a00 	vmul.f32	s0, s2, s0
 800203c:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8002040:	ee10 0a10 	vmov	r0, s0
 8002044:	b002      	add	sp, #8
 8002046:	ecbd 8b08 	vpop	{d8-d11}
 800204a:	b001      	add	sp, #4
 800204c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002050:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002052:	bf00      	nop
 8002054:	bf00      	nop
 8002056:	bf00      	nop
 8002058:	88e368f1 	.word	0x88e368f1
 800205c:	3ee4f8b5 	.word	0x3ee4f8b5
 8002060:	47c35000 	.word	0x47c35000
 8002064:	00000000 	.word	0x00000000

08002068 <verify_benchmark>:
 8002068:	f641 7280 	movw	r2, #8064	; 0x1f80
 800206c:	2100      	movs	r1, #0
 800206e:	f2c2 726d 	movt	r2, #10093	; 0x276d
 8002072:	4290      	cmp	r0, r2
 8002074:	bf08      	it	eq
 8002076:	2101      	moveq	r1, #1
 8002078:	4608      	mov	r0, r1
 800207a:	4770      	bx	lr

0800207c <__io_putchar>:
 800207c:	b580      	push	{r7, lr}
 800207e:	466f      	mov	r7, sp
 8002080:	b082      	sub	sp, #8
 8002082:	9001      	str	r0, [sp, #4]
 8002084:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002088:	a901      	add	r1, sp, #4
 800208a:	2201      	movs	r2, #1
 800208c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002090:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002094:	f7ff fe6b 	bl	8001d6e <HAL_UART_Transmit>
 8002098:	9801      	ldr	r0, [sp, #4]
 800209a:	b002      	add	sp, #8
 800209c:	bd80      	pop	{r7, pc}

0800209e <main>:
 800209e:	b5b0      	push	{r4, r5, r7, lr}
 80020a0:	af02      	add	r7, sp, #8
 80020a2:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80020a6:	f643 0000 	movw	r0, #14336	; 0x3800
 80020aa:	220c      	movs	r2, #12
 80020ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020b0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020b4:	6008      	str	r0, [r1, #0]
 80020b6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020ba:	6048      	str	r0, [r1, #4]
 80020bc:	2000      	movs	r0, #0
 80020be:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020c2:	6108      	str	r0, [r1, #16]
 80020c4:	6248      	str	r0, [r1, #36]	; 0x24
 80020c6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020ca:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020ce:	2000      	movs	r0, #0
 80020d0:	f7ff fee2 	bl	8001e98 <BSP_COM_Init>
 80020d4:	f7ff ff39 	bl	8001f4a <initialise_benchmark>
 80020d8:	f247 0090 	movw	r0, #28816	; 0x7090
 80020dc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e0:	f000 f948 	bl	8002374 <printf>
 80020e4:	f247 1037 	movw	r0, #28983	; 0x7137
 80020e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020ec:	f000 f9a4 	bl	8002438 <puts>
 80020f0:	f7ff f844 	bl	800117c <HAL_Init>
 80020f4:	f7ff f85a 	bl	80011ac <HAL_GetTick>
 80020f8:	4604      	mov	r4, r0
 80020fa:	f7ff ff29 	bl	8001f50 <benchmark>
 80020fe:	4605      	mov	r5, r0
 8002100:	f7ff f854 	bl	80011ac <HAL_GetTick>
 8002104:	1b04      	subs	r4, r0, r4
 8002106:	4628      	mov	r0, r5
 8002108:	f7ff ffae 	bl	8002068 <verify_benchmark>
 800210c:	1c41      	adds	r1, r0, #1
 800210e:	d006      	beq.n	800211e <main+0x80>
 8002110:	2801      	cmp	r0, #1
 8002112:	d109      	bne.n	8002128 <main+0x8a>
 8002114:	f247 00a3 	movw	r0, #28835	; 0x70a3
 8002118:	f6c0 0000 	movt	r0, #2048	; 0x800
 800211c:	e008      	b.n	8002130 <main+0x92>
 800211e:	f247 00c7 	movw	r0, #28871	; 0x70c7
 8002122:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002126:	e003      	b.n	8002130 <main+0x92>
 8002128:	f247 00fc 	movw	r0, #28924	; 0x70fc
 800212c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002130:	4621      	mov	r1, r4
 8002132:	f000 f91f 	bl	8002374 <printf>
 8002136:	2000      	movs	r0, #0
 8002138:	bdb0      	pop	{r4, r5, r7, pc}

0800213a <SysTick_Handler>:
 800213a:	b580      	push	{r7, lr}
 800213c:	466f      	mov	r7, sp
 800213e:	f7ff f82d 	bl	800119c <HAL_IncTick>
 8002142:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002146:	f7ff b887 	b.w	8001258 <HAL_SYSTICK_IRQHandler>

0800214a <_read>:
 800214a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800214c:	af03      	add	r7, sp, #12
 800214e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002152:	4614      	mov	r4, r2
 8002154:	460d      	mov	r5, r1
 8002156:	2c01      	cmp	r4, #1
 8002158:	db06      	blt.n	8002168 <_read+0x1e>
 800215a:	4626      	mov	r6, r4
 800215c:	f3af 8000 	nop.w
 8002160:	f805 0b01 	strb.w	r0, [r5], #1
 8002164:	3e01      	subs	r6, #1
 8002166:	d1f9      	bne.n	800215c <_read+0x12>
 8002168:	4620      	mov	r0, r4
 800216a:	f85d bb04 	ldr.w	fp, [sp], #4
 800216e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002170 <_write>:
 8002170:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002172:	af03      	add	r7, sp, #12
 8002174:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002178:	4614      	mov	r4, r2
 800217a:	460d      	mov	r5, r1
 800217c:	2c01      	cmp	r4, #1
 800217e:	db06      	blt.n	800218e <_write+0x1e>
 8002180:	4626      	mov	r6, r4
 8002182:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002186:	f7ff ff79 	bl	800207c <__io_putchar>
 800218a:	3e01      	subs	r6, #1
 800218c:	d1f9      	bne.n	8002182 <_write+0x12>
 800218e:	4620      	mov	r0, r4
 8002190:	f85d bb04 	ldr.w	fp, [sp], #4
 8002194:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002196 <_sbrk>:
 8002196:	f640 2268 	movw	r2, #2664	; 0xa68
 800219a:	4601      	mov	r1, r0
 800219c:	466b      	mov	r3, sp
 800219e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021a2:	6810      	ldr	r0, [r2, #0]
 80021a4:	2800      	cmp	r0, #0
 80021a6:	bf02      	ittt	eq
 80021a8:	f640 3010 	movweq	r0, #2832	; 0xb10
 80021ac:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021b0:	6010      	streq	r0, [r2, #0]
 80021b2:	4401      	add	r1, r0
 80021b4:	4299      	cmp	r1, r3
 80021b6:	bf9c      	itt	ls
 80021b8:	6011      	strls	r1, [r2, #0]
 80021ba:	4770      	bxls	lr
 80021bc:	b580      	push	{r7, lr}
 80021be:	466f      	mov	r7, sp
 80021c0:	f000 f864 	bl	800228c <__errno>
 80021c4:	210c      	movs	r1, #12
 80021c6:	6001      	str	r1, [r0, #0]
 80021c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021cc:	bd80      	pop	{r7, pc}

080021ce <_close>:
 80021ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021d2:	4770      	bx	lr

080021d4 <_fstat>:
 80021d4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021d8:	6048      	str	r0, [r1, #4]
 80021da:	2000      	movs	r0, #0
 80021dc:	4770      	bx	lr

080021de <_isatty>:
 80021de:	2001      	movs	r0, #1
 80021e0:	4770      	bx	lr

080021e2 <_lseek>:
 80021e2:	2000      	movs	r0, #0
 80021e4:	4770      	bx	lr

080021e6 <SystemInit>:
 80021e6:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021ea:	f04f 0c00 	mov.w	ip, #0
 80021ee:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80021f2:	6801      	ldr	r1, [r0, #0]
 80021f4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80021f8:	6001      	str	r1, [r0, #0]
 80021fa:	f241 0100 	movw	r1, #4096	; 0x1000
 80021fe:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002202:	680a      	ldr	r2, [r1, #0]
 8002204:	f042 0201 	orr.w	r2, r2, #1
 8002208:	600a      	str	r2, [r1, #0]
 800220a:	f8c1 c008 	str.w	ip, [r1, #8]
 800220e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002212:	680b      	ldr	r3, [r1, #0]
 8002214:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002218:	401a      	ands	r2, r3
 800221a:	600a      	str	r2, [r1, #0]
 800221c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002220:	60ca      	str	r2, [r1, #12]
 8002222:	680a      	ldr	r2, [r1, #0]
 8002224:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002228:	600a      	str	r2, [r1, #0]
 800222a:	f8c1 c018 	str.w	ip, [r1, #24]
 800222e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002232:	f840 1c80 	str.w	r1, [r0, #-128]
 8002236:	4770      	bx	lr

08002238 <Reset_Handler>:
 8002238:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002270 <LoopForever+0x2>
 800223c:	2100      	movs	r1, #0
 800223e:	e003      	b.n	8002248 <LoopCopyDataInit>

08002240 <CopyDataInit>:
 8002240:	4b0c      	ldr	r3, [pc, #48]	; (8002274 <LoopForever+0x6>)
 8002242:	585b      	ldr	r3, [r3, r1]
 8002244:	5043      	str	r3, [r0, r1]
 8002246:	3104      	adds	r1, #4

08002248 <LoopCopyDataInit>:
 8002248:	480b      	ldr	r0, [pc, #44]	; (8002278 <LoopForever+0xa>)
 800224a:	4b0c      	ldr	r3, [pc, #48]	; (800227c <LoopForever+0xe>)
 800224c:	1842      	adds	r2, r0, r1
 800224e:	429a      	cmp	r2, r3
 8002250:	d3f6      	bcc.n	8002240 <CopyDataInit>
 8002252:	4a0b      	ldr	r2, [pc, #44]	; (8002280 <LoopForever+0x12>)
 8002254:	e002      	b.n	800225c <LoopFillZerobss>

08002256 <FillZerobss>:
 8002256:	2300      	movs	r3, #0
 8002258:	f842 3b04 	str.w	r3, [r2], #4

0800225c <LoopFillZerobss>:
 800225c:	4b09      	ldr	r3, [pc, #36]	; (8002284 <LoopForever+0x16>)
 800225e:	429a      	cmp	r2, r3
 8002260:	d3f9      	bcc.n	8002256 <FillZerobss>
 8002262:	f7ff ffc0 	bl	80021e6 <SystemInit>
 8002266:	f000 f817 	bl	8002298 <__libc_init_array>
 800226a:	f7ff ff18 	bl	800209e <main>

0800226e <LoopForever>:
 800226e:	e7fe      	b.n	800226e <LoopForever>
 8002270:	20018000 	.word	0x20018000
 8002274:	080073e0 	.word	0x080073e0
 8002278:	20000000 	.word	0x20000000
 800227c:	200009c8 	.word	0x200009c8
 8002280:	200009c8 	.word	0x200009c8
 8002284:	20000b10 	.word	0x20000b10

08002288 <ADC1_2_IRQHandler>:
 8002288:	e7fe      	b.n	8002288 <ADC1_2_IRQHandler>
	...

0800228c <__errno>:
 800228c:	4b01      	ldr	r3, [pc, #4]	; (8002294 <__errno+0x8>)
 800228e:	6818      	ldr	r0, [r3, #0]
 8002290:	4770      	bx	lr
 8002292:	bf00      	nop
 8002294:	20000018 	.word	0x20000018

08002298 <__libc_init_array>:
 8002298:	b570      	push	{r4, r5, r6, lr}
 800229a:	4e0d      	ldr	r6, [pc, #52]	; (80022d0 <__libc_init_array+0x38>)
 800229c:	4d0d      	ldr	r5, [pc, #52]	; (80022d4 <__libc_init_array+0x3c>)
 800229e:	1b76      	subs	r6, r6, r5
 80022a0:	10b6      	asrs	r6, r6, #2
 80022a2:	d006      	beq.n	80022b2 <__libc_init_array+0x1a>
 80022a4:	2400      	movs	r4, #0
 80022a6:	3401      	adds	r4, #1
 80022a8:	f855 3b04 	ldr.w	r3, [r5], #4
 80022ac:	4798      	blx	r3
 80022ae:	42a6      	cmp	r6, r4
 80022b0:	d1f9      	bne.n	80022a6 <__libc_init_array+0xe>
 80022b2:	4e09      	ldr	r6, [pc, #36]	; (80022d8 <__libc_init_array+0x40>)
 80022b4:	4d09      	ldr	r5, [pc, #36]	; (80022dc <__libc_init_array+0x44>)
 80022b6:	1b76      	subs	r6, r6, r5
 80022b8:	f004 fea8 	bl	800700c <_init>
 80022bc:	10b6      	asrs	r6, r6, #2
 80022be:	d006      	beq.n	80022ce <__libc_init_array+0x36>
 80022c0:	2400      	movs	r4, #0
 80022c2:	3401      	adds	r4, #1
 80022c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80022c8:	4798      	blx	r3
 80022ca:	42a6      	cmp	r6, r4
 80022cc:	d1f9      	bne.n	80022c2 <__libc_init_array+0x2a>
 80022ce:	bd70      	pop	{r4, r5, r6, pc}
 80022d0:	080073d0 	.word	0x080073d0
 80022d4:	080073d0 	.word	0x080073d0
 80022d8:	080073d8 	.word	0x080073d8
 80022dc:	080073d0 	.word	0x080073d0

080022e0 <memset>:
 80022e0:	b4f0      	push	{r4, r5, r6, r7}
 80022e2:	0786      	lsls	r6, r0, #30
 80022e4:	d043      	beq.n	800236e <memset+0x8e>
 80022e6:	1e54      	subs	r4, r2, #1
 80022e8:	2a00      	cmp	r2, #0
 80022ea:	d03e      	beq.n	800236a <memset+0x8a>
 80022ec:	b2ca      	uxtb	r2, r1
 80022ee:	4603      	mov	r3, r0
 80022f0:	e002      	b.n	80022f8 <memset+0x18>
 80022f2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80022f6:	d338      	bcc.n	800236a <memset+0x8a>
 80022f8:	f803 2b01 	strb.w	r2, [r3], #1
 80022fc:	079d      	lsls	r5, r3, #30
 80022fe:	d1f8      	bne.n	80022f2 <memset+0x12>
 8002300:	2c03      	cmp	r4, #3
 8002302:	d92b      	bls.n	800235c <memset+0x7c>
 8002304:	b2cd      	uxtb	r5, r1
 8002306:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800230a:	2c0f      	cmp	r4, #15
 800230c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002310:	d916      	bls.n	8002340 <memset+0x60>
 8002312:	f1a4 0710 	sub.w	r7, r4, #16
 8002316:	093f      	lsrs	r7, r7, #4
 8002318:	f103 0620 	add.w	r6, r3, #32
 800231c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002320:	f103 0210 	add.w	r2, r3, #16
 8002324:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002328:	e942 5502 	strd	r5, r5, [r2, #-8]
 800232c:	3210      	adds	r2, #16
 800232e:	42b2      	cmp	r2, r6
 8002330:	d1f8      	bne.n	8002324 <memset+0x44>
 8002332:	f004 040f 	and.w	r4, r4, #15
 8002336:	3701      	adds	r7, #1
 8002338:	2c03      	cmp	r4, #3
 800233a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800233e:	d90d      	bls.n	800235c <memset+0x7c>
 8002340:	461e      	mov	r6, r3
 8002342:	4622      	mov	r2, r4
 8002344:	3a04      	subs	r2, #4
 8002346:	2a03      	cmp	r2, #3
 8002348:	f846 5b04 	str.w	r5, [r6], #4
 800234c:	d8fa      	bhi.n	8002344 <memset+0x64>
 800234e:	1f22      	subs	r2, r4, #4
 8002350:	f022 0203 	bic.w	r2, r2, #3
 8002354:	3204      	adds	r2, #4
 8002356:	4413      	add	r3, r2
 8002358:	f004 0403 	and.w	r4, r4, #3
 800235c:	b12c      	cbz	r4, 800236a <memset+0x8a>
 800235e:	b2c9      	uxtb	r1, r1
 8002360:	441c      	add	r4, r3
 8002362:	f803 1b01 	strb.w	r1, [r3], #1
 8002366:	429c      	cmp	r4, r3
 8002368:	d1fb      	bne.n	8002362 <memset+0x82>
 800236a:	bcf0      	pop	{r4, r5, r6, r7}
 800236c:	4770      	bx	lr
 800236e:	4614      	mov	r4, r2
 8002370:	4603      	mov	r3, r0
 8002372:	e7c5      	b.n	8002300 <memset+0x20>

08002374 <printf>:
 8002374:	b40f      	push	{r0, r1, r2, r3}
 8002376:	b500      	push	{lr}
 8002378:	4907      	ldr	r1, [pc, #28]	; (8002398 <printf+0x24>)
 800237a:	b083      	sub	sp, #12
 800237c:	ab04      	add	r3, sp, #16
 800237e:	6808      	ldr	r0, [r1, #0]
 8002380:	f853 2b04 	ldr.w	r2, [r3], #4
 8002384:	6881      	ldr	r1, [r0, #8]
 8002386:	9301      	str	r3, [sp, #4]
 8002388:	f000 f85e 	bl	8002448 <_vfprintf_r>
 800238c:	b003      	add	sp, #12
 800238e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002392:	b004      	add	sp, #16
 8002394:	4770      	bx	lr
 8002396:	bf00      	nop
 8002398:	20000018 	.word	0x20000018

0800239c <_puts_r>:
 800239c:	b570      	push	{r4, r5, r6, lr}
 800239e:	4605      	mov	r5, r0
 80023a0:	b088      	sub	sp, #32
 80023a2:	4608      	mov	r0, r1
 80023a4:	460c      	mov	r4, r1
 80023a6:	f7fe fdeb 	bl	8000f80 <strlen>
 80023aa:	4a22      	ldr	r2, [pc, #136]	; (8002434 <_puts_r+0x98>)
 80023ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023ae:	9404      	str	r4, [sp, #16]
 80023b0:	2601      	movs	r6, #1
 80023b2:	1c44      	adds	r4, r0, #1
 80023b4:	a904      	add	r1, sp, #16
 80023b6:	9206      	str	r2, [sp, #24]
 80023b8:	2202      	movs	r2, #2
 80023ba:	9403      	str	r4, [sp, #12]
 80023bc:	9005      	str	r0, [sp, #20]
 80023be:	68ac      	ldr	r4, [r5, #8]
 80023c0:	9607      	str	r6, [sp, #28]
 80023c2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80023c6:	b31b      	cbz	r3, 8002410 <_puts_r+0x74>
 80023c8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80023ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023ce:	07ce      	lsls	r6, r1, #31
 80023d0:	b29a      	uxth	r2, r3
 80023d2:	d401      	bmi.n	80023d8 <_puts_r+0x3c>
 80023d4:	0590      	lsls	r0, r2, #22
 80023d6:	d525      	bpl.n	8002424 <_puts_r+0x88>
 80023d8:	0491      	lsls	r1, r2, #18
 80023da:	d406      	bmi.n	80023ea <_puts_r+0x4e>
 80023dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80023de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80023e2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80023e6:	81a3      	strh	r3, [r4, #12]
 80023e8:	6662      	str	r2, [r4, #100]	; 0x64
 80023ea:	4628      	mov	r0, r5
 80023ec:	aa01      	add	r2, sp, #4
 80023ee:	4621      	mov	r1, r4
 80023f0:	f003 f85e 	bl	80054b0 <__sfvwrite_r>
 80023f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80023f6:	2800      	cmp	r0, #0
 80023f8:	bf0c      	ite	eq
 80023fa:	250a      	moveq	r5, #10
 80023fc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002400:	07da      	lsls	r2, r3, #31
 8002402:	d402      	bmi.n	800240a <_puts_r+0x6e>
 8002404:	89a3      	ldrh	r3, [r4, #12]
 8002406:	059b      	lsls	r3, r3, #22
 8002408:	d506      	bpl.n	8002418 <_puts_r+0x7c>
 800240a:	4628      	mov	r0, r5
 800240c:	b008      	add	sp, #32
 800240e:	bd70      	pop	{r4, r5, r6, pc}
 8002410:	4628      	mov	r0, r5
 8002412:	f002 feb7 	bl	8005184 <__sinit>
 8002416:	e7d7      	b.n	80023c8 <_puts_r+0x2c>
 8002418:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800241a:	f003 fa05 	bl	8005828 <__retarget_lock_release_recursive>
 800241e:	4628      	mov	r0, r5
 8002420:	b008      	add	sp, #32
 8002422:	bd70      	pop	{r4, r5, r6, pc}
 8002424:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002426:	f003 f9fd 	bl	8005824 <__retarget_lock_acquire_recursive>
 800242a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800242e:	b29a      	uxth	r2, r3
 8002430:	e7d2      	b.n	80023d8 <_puts_r+0x3c>
 8002432:	bf00      	nop
 8002434:	08007140 	.word	0x08007140

08002438 <puts>:
 8002438:	4b02      	ldr	r3, [pc, #8]	; (8002444 <puts+0xc>)
 800243a:	4601      	mov	r1, r0
 800243c:	6818      	ldr	r0, [r3, #0]
 800243e:	f7ff bfad 	b.w	800239c <_puts_r>
 8002442:	bf00      	nop
 8002444:	20000018 	.word	0x20000018

08002448 <_vfprintf_r>:
 8002448:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800244c:	b0d7      	sub	sp, #348	; 0x15c
 800244e:	461c      	mov	r4, r3
 8002450:	4689      	mov	r9, r1
 8002452:	4617      	mov	r7, r2
 8002454:	4605      	mov	r5, r0
 8002456:	9003      	str	r0, [sp, #12]
 8002458:	f003 f9d2 	bl	8005800 <_localeconv_r>
 800245c:	6803      	ldr	r3, [r0, #0]
 800245e:	9316      	str	r3, [sp, #88]	; 0x58
 8002460:	4618      	mov	r0, r3
 8002462:	f7fe fd8d 	bl	8000f80 <strlen>
 8002466:	9408      	str	r4, [sp, #32]
 8002468:	9015      	str	r0, [sp, #84]	; 0x54
 800246a:	b11d      	cbz	r5, 8002474 <_vfprintf_r+0x2c>
 800246c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800246e:	2b00      	cmp	r3, #0
 8002470:	f000 8107 	beq.w	8002682 <_vfprintf_r+0x23a>
 8002474:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002478:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800247c:	07c8      	lsls	r0, r1, #31
 800247e:	b293      	uxth	r3, r2
 8002480:	d402      	bmi.n	8002488 <_vfprintf_r+0x40>
 8002482:	0599      	lsls	r1, r3, #22
 8002484:	f140 811f 	bpl.w	80026c6 <_vfprintf_r+0x27e>
 8002488:	049e      	lsls	r6, r3, #18
 800248a:	d40a      	bmi.n	80024a2 <_vfprintf_r+0x5a>
 800248c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002490:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002494:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002498:	f8a9 300c 	strh.w	r3, [r9, #12]
 800249c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80024a0:	b29b      	uxth	r3, r3
 80024a2:	071d      	lsls	r5, r3, #28
 80024a4:	f140 80b2 	bpl.w	800260c <_vfprintf_r+0x1c4>
 80024a8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024ac:	2a00      	cmp	r2, #0
 80024ae:	f000 80ad 	beq.w	800260c <_vfprintf_r+0x1c4>
 80024b2:	f003 021a 	and.w	r2, r3, #26
 80024b6:	2a0a      	cmp	r2, #10
 80024b8:	f000 80c9 	beq.w	800264e <_vfprintf_r+0x206>
 80024bc:	2300      	movs	r3, #0
 80024be:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80026d8 <_vfprintf_r+0x290>
 80024c2:	9310      	str	r3, [sp, #64]	; 0x40
 80024c4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80024c8:	9317      	str	r3, [sp, #92]	; 0x5c
 80024ca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80024ce:	931b      	str	r3, [sp, #108]	; 0x6c
 80024d0:	9318      	str	r3, [sp, #96]	; 0x60
 80024d2:	9305      	str	r3, [sp, #20]
 80024d4:	ab2d      	add	r3, sp, #180	; 0xb4
 80024d6:	932a      	str	r3, [sp, #168]	; 0xa8
 80024d8:	469b      	mov	fp, r3
 80024da:	783b      	ldrb	r3, [r7, #0]
 80024dc:	f8cd 901c 	str.w	r9, [sp, #28]
 80024e0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80024e4:	2b00      	cmp	r3, #0
 80024e6:	f000 8259 	beq.w	800299c <_vfprintf_r+0x554>
 80024ea:	2b25      	cmp	r3, #37	; 0x25
 80024ec:	463c      	mov	r4, r7
 80024ee:	d102      	bne.n	80024f6 <_vfprintf_r+0xae>
 80024f0:	e01d      	b.n	800252e <_vfprintf_r+0xe6>
 80024f2:	2b25      	cmp	r3, #37	; 0x25
 80024f4:	d003      	beq.n	80024fe <_vfprintf_r+0xb6>
 80024f6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80024fa:	2b00      	cmp	r3, #0
 80024fc:	d1f9      	bne.n	80024f2 <_vfprintf_r+0xaa>
 80024fe:	1be5      	subs	r5, r4, r7
 8002500:	b18d      	cbz	r5, 8002526 <_vfprintf_r+0xde>
 8002502:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002506:	3301      	adds	r3, #1
 8002508:	442a      	add	r2, r5
 800250a:	2b07      	cmp	r3, #7
 800250c:	f8cb 7000 	str.w	r7, [fp]
 8002510:	f8cb 5004 	str.w	r5, [fp, #4]
 8002514:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002518:	f300 80ca 	bgt.w	80026b0 <_vfprintf_r+0x268>
 800251c:	f10b 0b08 	add.w	fp, fp, #8
 8002520:	9b05      	ldr	r3, [sp, #20]
 8002522:	442b      	add	r3, r5
 8002524:	9305      	str	r3, [sp, #20]
 8002526:	7823      	ldrb	r3, [r4, #0]
 8002528:	2b00      	cmp	r3, #0
 800252a:	f000 8237 	beq.w	800299c <_vfprintf_r+0x554>
 800252e:	2300      	movs	r3, #0
 8002530:	7866      	ldrb	r6, [r4, #1]
 8002532:	9306      	str	r3, [sp, #24]
 8002534:	4698      	mov	r8, r3
 8002536:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800253a:	f104 0a01 	add.w	sl, r4, #1
 800253e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002542:	252b      	movs	r5, #43	; 0x2b
 8002544:	f10a 0a01 	add.w	sl, sl, #1
 8002548:	f1a6 0320 	sub.w	r3, r6, #32
 800254c:	2b5a      	cmp	r3, #90	; 0x5a
 800254e:	f200 842a 	bhi.w	8002da6 <_vfprintf_r+0x95e>
 8002552:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002556:	03aa      	.short	0x03aa
 8002558:	04280428 	.word	0x04280428
 800255c:	0428029c 	.word	0x0428029c
 8002560:	04280428 	.word	0x04280428
 8002564:	042802a7 	.word	0x042802a7
 8002568:	02c60428 	.word	0x02c60428
 800256c:	042802d2 	.word	0x042802d2
 8002570:	02dc02d7 	.word	0x02dc02d7
 8002574:	02f60428 	.word	0x02f60428
 8002578:	026d026d 	.word	0x026d026d
 800257c:	026d026d 	.word	0x026d026d
 8002580:	026d026d 	.word	0x026d026d
 8002584:	026d026d 	.word	0x026d026d
 8002588:	0428026d 	.word	0x0428026d
 800258c:	04280428 	.word	0x04280428
 8002590:	04280428 	.word	0x04280428
 8002594:	04280428 	.word	0x04280428
 8002598:	042802fb 	.word	0x042802fb
 800259c:	03f3033c 	.word	0x03f3033c
 80025a0:	02fb02fb 	.word	0x02fb02fb
 80025a4:	042802fb 	.word	0x042802fb
 80025a8:	04280428 	.word	0x04280428
 80025ac:	03ee0428 	.word	0x03ee0428
 80025b0:	04280428 	.word	0x04280428
 80025b4:	0428009a 	.word	0x0428009a
 80025b8:	04280428 	.word	0x04280428
 80025bc:	04280350 	.word	0x04280350
 80025c0:	04280379 	.word	0x04280379
 80025c4:	03900428 	.word	0x03900428
 80025c8:	04280428 	.word	0x04280428
 80025cc:	04280428 	.word	0x04280428
 80025d0:	04280428 	.word	0x04280428
 80025d4:	04280428 	.word	0x04280428
 80025d8:	042802fb 	.word	0x042802fb
 80025dc:	00c5033c 	.word	0x00c5033c
 80025e0:	02fb02fb 	.word	0x02fb02fb
 80025e4:	03d102fb 	.word	0x03d102fb
 80025e8:	007000c5 	.word	0x007000c5
 80025ec:	03b50428 	.word	0x03b50428
 80025f0:	03c20428 	.word	0x03c20428
 80025f4:	03de009c 	.word	0x03de009c
 80025f8:	04280070 	.word	0x04280070
 80025fc:	00720350 	.word	0x00720350
 8002600:	0428022c 	.word	0x0428022c
 8002604:	027c0428 	.word	0x027c0428
 8002608:	00720428 	.word	0x00720428
 800260c:	4649      	mov	r1, r9
 800260e:	9803      	ldr	r0, [sp, #12]
 8002610:	f001 fc9a 	bl	8003f48 <__swsetup_r>
 8002614:	b1a0      	cbz	r0, 8002640 <_vfprintf_r+0x1f8>
 8002616:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800261a:	07d8      	lsls	r0, r3, #31
 800261c:	d404      	bmi.n	8002628 <_vfprintf_r+0x1e0>
 800261e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002622:	0599      	lsls	r1, r3, #22
 8002624:	f140 83b7 	bpl.w	8002d96 <_vfprintf_r+0x94e>
 8002628:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800262c:	9305      	str	r3, [sp, #20]
 800262e:	9805      	ldr	r0, [sp, #20]
 8002630:	b057      	add	sp, #348	; 0x15c
 8002632:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002636:	f048 0820 	orr.w	r8, r8, #32
 800263a:	f89a 6000 	ldrb.w	r6, [sl]
 800263e:	e781      	b.n	8002544 <_vfprintf_r+0xfc>
 8002640:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002644:	f003 021a 	and.w	r2, r3, #26
 8002648:	2a0a      	cmp	r2, #10
 800264a:	f47f af37 	bne.w	80024bc <_vfprintf_r+0x74>
 800264e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002652:	2a00      	cmp	r2, #0
 8002654:	f6ff af32 	blt.w	80024bc <_vfprintf_r+0x74>
 8002658:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800265c:	07d2      	lsls	r2, r2, #31
 800265e:	d405      	bmi.n	800266c <_vfprintf_r+0x224>
 8002660:	059b      	lsls	r3, r3, #22
 8002662:	d403      	bmi.n	800266c <_vfprintf_r+0x224>
 8002664:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002668:	f003 f8de 	bl	8005828 <__retarget_lock_release_recursive>
 800266c:	4623      	mov	r3, r4
 800266e:	463a      	mov	r2, r7
 8002670:	4649      	mov	r1, r9
 8002672:	9803      	ldr	r0, [sp, #12]
 8002674:	f001 fc26 	bl	8003ec4 <__sbprintf>
 8002678:	9005      	str	r0, [sp, #20]
 800267a:	9805      	ldr	r0, [sp, #20]
 800267c:	b057      	add	sp, #348	; 0x15c
 800267e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002682:	9803      	ldr	r0, [sp, #12]
 8002684:	f002 fd7e 	bl	8005184 <__sinit>
 8002688:	e6f4      	b.n	8002474 <_vfprintf_r+0x2c>
 800268a:	f048 0810 	orr.w	r8, r8, #16
 800268e:	f018 0f20 	tst.w	r8, #32
 8002692:	f000 836c 	beq.w	8002d6e <_vfprintf_r+0x926>
 8002696:	9c08      	ldr	r4, [sp, #32]
 8002698:	3407      	adds	r4, #7
 800269a:	f024 0307 	bic.w	r3, r4, #7
 800269e:	e9d3 4500 	ldrd	r4, r5, [r3]
 80026a2:	f103 0208 	add.w	r2, r3, #8
 80026a6:	9208      	str	r2, [sp, #32]
 80026a8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026ac:	2200      	movs	r2, #0
 80026ae:	e18c      	b.n	80029ca <_vfprintf_r+0x582>
 80026b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80026b2:	9907      	ldr	r1, [sp, #28]
 80026b4:	9803      	ldr	r0, [sp, #12]
 80026b6:	f004 f9f5 	bl	8006aa4 <__sprint_r>
 80026ba:	2800      	cmp	r0, #0
 80026bc:	f041 8376 	bne.w	8003dac <_vfprintf_r+0x1964>
 80026c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80026c4:	e72c      	b.n	8002520 <_vfprintf_r+0xd8>
 80026c6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026ca:	f003 f8ab 	bl	8005824 <__retarget_lock_acquire_recursive>
 80026ce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80026d2:	b293      	uxth	r3, r2
 80026d4:	e6d8      	b.n	8002488 <_vfprintf_r+0x40>
 80026d6:	bf00      	nop
	...
 80026e0:	4643      	mov	r3, r8
 80026e2:	069f      	lsls	r7, r3, #26
 80026e4:	f140 832f 	bpl.w	8002d46 <_vfprintf_r+0x8fe>
 80026e8:	9c08      	ldr	r4, [sp, #32]
 80026ea:	3407      	adds	r4, #7
 80026ec:	f024 0407 	bic.w	r4, r4, #7
 80026f0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80026f4:	f104 0208 	add.w	r2, r4, #8
 80026f8:	9208      	str	r2, [sp, #32]
 80026fa:	4604      	mov	r4, r0
 80026fc:	460d      	mov	r5, r1
 80026fe:	2800      	cmp	r0, #0
 8002700:	f171 0200 	sbcs.w	r2, r1, #0
 8002704:	da05      	bge.n	8002712 <_vfprintf_r+0x2ca>
 8002706:	222d      	movs	r2, #45	; 0x2d
 8002708:	4264      	negs	r4, r4
 800270a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800270e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002712:	aa56      	add	r2, sp, #344	; 0x158
 8002714:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002718:	9204      	str	r2, [sp, #16]
 800271a:	f000 84b2 	beq.w	8003082 <_vfprintf_r+0xc3a>
 800271e:	2201      	movs	r2, #1
 8002720:	ea54 0105 	orrs.w	r1, r4, r5
 8002724:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002728:	f040 8159 	bne.w	80029de <_vfprintf_r+0x596>
 800272c:	f1b9 0f00 	cmp.w	r9, #0
 8002730:	f040 8619 	bne.w	8003366 <_vfprintf_r+0xf1e>
 8002734:	2a00      	cmp	r2, #0
 8002736:	f040 8508 	bne.w	800314a <_vfprintf_r+0xd02>
 800273a:	f013 0301 	ands.w	r3, r3, #1
 800273e:	af56      	add	r7, sp, #344	; 0x158
 8002740:	9309      	str	r3, [sp, #36]	; 0x24
 8002742:	d002      	beq.n	800274a <_vfprintf_r+0x302>
 8002744:	2330      	movs	r3, #48	; 0x30
 8002746:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800274a:	2300      	movs	r3, #0
 800274c:	930a      	str	r3, [sp, #40]	; 0x28
 800274e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002750:	9314      	str	r3, [sp, #80]	; 0x50
 8002752:	9311      	str	r3, [sp, #68]	; 0x44
 8002754:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002756:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800275a:	454b      	cmp	r3, r9
 800275c:	bfb8      	it	lt
 800275e:	464b      	movlt	r3, r9
 8002760:	9304      	str	r3, [sp, #16]
 8002762:	b112      	cbz	r2, 800276a <_vfprintf_r+0x322>
 8002764:	9b04      	ldr	r3, [sp, #16]
 8002766:	3301      	adds	r3, #1
 8002768:	9304      	str	r3, [sp, #16]
 800276a:	f018 0302 	ands.w	r3, r8, #2
 800276e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002770:	d002      	beq.n	8002778 <_vfprintf_r+0x330>
 8002772:	9b04      	ldr	r3, [sp, #16]
 8002774:	3302      	adds	r3, #2
 8002776:	9304      	str	r3, [sp, #16]
 8002778:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800277c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800277e:	930e      	str	r3, [sp, #56]	; 0x38
 8002780:	d13f      	bne.n	8002802 <_vfprintf_r+0x3ba>
 8002782:	9b06      	ldr	r3, [sp, #24]
 8002784:	9904      	ldr	r1, [sp, #16]
 8002786:	1a5d      	subs	r5, r3, r1
 8002788:	2d00      	cmp	r5, #0
 800278a:	dd3a      	ble.n	8002802 <_vfprintf_r+0x3ba>
 800278c:	2d10      	cmp	r5, #16
 800278e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002790:	dd29      	ble.n	80027e6 <_vfprintf_r+0x39e>
 8002792:	4659      	mov	r1, fp
 8002794:	4620      	mov	r0, r4
 8002796:	9620      	str	r6, [sp, #128]	; 0x80
 8002798:	2310      	movs	r3, #16
 800279a:	9c03      	ldr	r4, [sp, #12]
 800279c:	9e07      	ldr	r6, [sp, #28]
 800279e:	46bb      	mov	fp, r7
 80027a0:	e004      	b.n	80027ac <_vfprintf_r+0x364>
 80027a2:	3d10      	subs	r5, #16
 80027a4:	2d10      	cmp	r5, #16
 80027a6:	f101 0108 	add.w	r1, r1, #8
 80027aa:	dd18      	ble.n	80027de <_vfprintf_r+0x396>
 80027ac:	3201      	adds	r2, #1
 80027ae:	4fba      	ldr	r7, [pc, #744]	; (8002a98 <_vfprintf_r+0x650>)
 80027b0:	3010      	adds	r0, #16
 80027b2:	2a07      	cmp	r2, #7
 80027b4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027b8:	e9c1 7300 	strd	r7, r3, [r1]
 80027bc:	ddf1      	ble.n	80027a2 <_vfprintf_r+0x35a>
 80027be:	aa2a      	add	r2, sp, #168	; 0xa8
 80027c0:	4631      	mov	r1, r6
 80027c2:	4620      	mov	r0, r4
 80027c4:	930c      	str	r3, [sp, #48]	; 0x30
 80027c6:	f004 f96d 	bl	8006aa4 <__sprint_r>
 80027ca:	2800      	cmp	r0, #0
 80027cc:	f040 843d 	bne.w	800304a <_vfprintf_r+0xc02>
 80027d0:	3d10      	subs	r5, #16
 80027d2:	2d10      	cmp	r5, #16
 80027d4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027d8:	a92d      	add	r1, sp, #180	; 0xb4
 80027da:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80027dc:	dce6      	bgt.n	80027ac <_vfprintf_r+0x364>
 80027de:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80027e0:	465f      	mov	r7, fp
 80027e2:	4604      	mov	r4, r0
 80027e4:	468b      	mov	fp, r1
 80027e6:	3201      	adds	r2, #1
 80027e8:	4bab      	ldr	r3, [pc, #684]	; (8002a98 <_vfprintf_r+0x650>)
 80027ea:	442c      	add	r4, r5
 80027ec:	2a07      	cmp	r2, #7
 80027ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027f2:	e9cb 3500 	strd	r3, r5, [fp]
 80027f6:	f300 84ff 	bgt.w	80031f8 <_vfprintf_r+0xdb0>
 80027fa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027fe:	f10b 0b08 	add.w	fp, fp, #8
 8002802:	b172      	cbz	r2, 8002822 <_vfprintf_r+0x3da>
 8002804:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002806:	3201      	adds	r2, #1
 8002808:	3401      	adds	r4, #1
 800280a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800280e:	2101      	movs	r1, #1
 8002810:	2a07      	cmp	r2, #7
 8002812:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002816:	e9cb 0100 	strd	r0, r1, [fp]
 800281a:	f300 8418 	bgt.w	800304e <_vfprintf_r+0xc06>
 800281e:	f10b 0b08 	add.w	fp, fp, #8
 8002822:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002824:	b16b      	cbz	r3, 8002842 <_vfprintf_r+0x3fa>
 8002826:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002828:	3301      	adds	r3, #1
 800282a:	3402      	adds	r4, #2
 800282c:	a923      	add	r1, sp, #140	; 0x8c
 800282e:	2202      	movs	r2, #2
 8002830:	2b07      	cmp	r3, #7
 8002832:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002836:	e9cb 1200 	strd	r1, r2, [fp]
 800283a:	f300 8415 	bgt.w	8003068 <_vfprintf_r+0xc20>
 800283e:	f10b 0b08 	add.w	fp, fp, #8
 8002842:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002844:	2b80      	cmp	r3, #128	; 0x80
 8002846:	f000 8331 	beq.w	8002eac <_vfprintf_r+0xa64>
 800284a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800284c:	eba9 0503 	sub.w	r5, r9, r3
 8002850:	2d00      	cmp	r5, #0
 8002852:	dd37      	ble.n	80028c4 <_vfprintf_r+0x47c>
 8002854:	2d10      	cmp	r5, #16
 8002856:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002858:	4b90      	ldr	r3, [pc, #576]	; (8002a9c <_vfprintf_r+0x654>)
 800285a:	dd28      	ble.n	80028ae <_vfprintf_r+0x466>
 800285c:	4659      	mov	r1, fp
 800285e:	4620      	mov	r0, r4
 8002860:	46bb      	mov	fp, r7
 8002862:	f04f 0910 	mov.w	r9, #16
 8002866:	4637      	mov	r7, r6
 8002868:	461c      	mov	r4, r3
 800286a:	9e07      	ldr	r6, [sp, #28]
 800286c:	e004      	b.n	8002878 <_vfprintf_r+0x430>
 800286e:	3d10      	subs	r5, #16
 8002870:	2d10      	cmp	r5, #16
 8002872:	f101 0108 	add.w	r1, r1, #8
 8002876:	dd15      	ble.n	80028a4 <_vfprintf_r+0x45c>
 8002878:	3201      	adds	r2, #1
 800287a:	3010      	adds	r0, #16
 800287c:	2a07      	cmp	r2, #7
 800287e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002882:	e9c1 4900 	strd	r4, r9, [r1]
 8002886:	ddf2      	ble.n	800286e <_vfprintf_r+0x426>
 8002888:	aa2a      	add	r2, sp, #168	; 0xa8
 800288a:	4631      	mov	r1, r6
 800288c:	9803      	ldr	r0, [sp, #12]
 800288e:	f004 f909 	bl	8006aa4 <__sprint_r>
 8002892:	2800      	cmp	r0, #0
 8002894:	f040 83d9 	bne.w	800304a <_vfprintf_r+0xc02>
 8002898:	3d10      	subs	r5, #16
 800289a:	2d10      	cmp	r5, #16
 800289c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028a0:	a92d      	add	r1, sp, #180	; 0xb4
 80028a2:	dce9      	bgt.n	8002878 <_vfprintf_r+0x430>
 80028a4:	463e      	mov	r6, r7
 80028a6:	4623      	mov	r3, r4
 80028a8:	465f      	mov	r7, fp
 80028aa:	4604      	mov	r4, r0
 80028ac:	468b      	mov	fp, r1
 80028ae:	3201      	adds	r2, #1
 80028b0:	442c      	add	r4, r5
 80028b2:	2a07      	cmp	r2, #7
 80028b4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028b8:	e9cb 3500 	strd	r3, r5, [fp]
 80028bc:	f300 83ef 	bgt.w	800309e <_vfprintf_r+0xc56>
 80028c0:	f10b 0b08 	add.w	fp, fp, #8
 80028c4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80028c8:	f040 8280 	bne.w	8002dcc <_vfprintf_r+0x984>
 80028cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028ce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80028d0:	f8cb 7000 	str.w	r7, [fp]
 80028d4:	3301      	adds	r3, #1
 80028d6:	4414      	add	r4, r2
 80028d8:	2b07      	cmp	r3, #7
 80028da:	942c      	str	r4, [sp, #176]	; 0xb0
 80028dc:	f8cb 2004 	str.w	r2, [fp, #4]
 80028e0:	932b      	str	r3, [sp, #172]	; 0xac
 80028e2:	f300 8392 	bgt.w	800300a <_vfprintf_r+0xbc2>
 80028e6:	f10b 0b08 	add.w	fp, fp, #8
 80028ea:	f018 0f04 	tst.w	r8, #4
 80028ee:	d03b      	beq.n	8002968 <_vfprintf_r+0x520>
 80028f0:	9b06      	ldr	r3, [sp, #24]
 80028f2:	9a04      	ldr	r2, [sp, #16]
 80028f4:	1a9d      	subs	r5, r3, r2
 80028f6:	2d00      	cmp	r5, #0
 80028f8:	dd36      	ble.n	8002968 <_vfprintf_r+0x520>
 80028fa:	2d10      	cmp	r5, #16
 80028fc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028fe:	dd21      	ble.n	8002944 <_vfprintf_r+0x4fc>
 8002900:	2610      	movs	r6, #16
 8002902:	9f03      	ldr	r7, [sp, #12]
 8002904:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002908:	e004      	b.n	8002914 <_vfprintf_r+0x4cc>
 800290a:	3d10      	subs	r5, #16
 800290c:	2d10      	cmp	r5, #16
 800290e:	f10b 0b08 	add.w	fp, fp, #8
 8002912:	dd17      	ble.n	8002944 <_vfprintf_r+0x4fc>
 8002914:	3301      	adds	r3, #1
 8002916:	4a60      	ldr	r2, [pc, #384]	; (8002a98 <_vfprintf_r+0x650>)
 8002918:	3410      	adds	r4, #16
 800291a:	2b07      	cmp	r3, #7
 800291c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002920:	e9cb 2600 	strd	r2, r6, [fp]
 8002924:	ddf1      	ble.n	800290a <_vfprintf_r+0x4c2>
 8002926:	aa2a      	add	r2, sp, #168	; 0xa8
 8002928:	4641      	mov	r1, r8
 800292a:	4638      	mov	r0, r7
 800292c:	f004 f8ba 	bl	8006aa4 <__sprint_r>
 8002930:	2800      	cmp	r0, #0
 8002932:	f040 856c 	bne.w	800340e <_vfprintf_r+0xfc6>
 8002936:	3d10      	subs	r5, #16
 8002938:	2d10      	cmp	r5, #16
 800293a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800293e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002942:	dce7      	bgt.n	8002914 <_vfprintf_r+0x4cc>
 8002944:	3301      	adds	r3, #1
 8002946:	4a54      	ldr	r2, [pc, #336]	; (8002a98 <_vfprintf_r+0x650>)
 8002948:	442c      	add	r4, r5
 800294a:	2b07      	cmp	r3, #7
 800294c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002950:	e9cb 2500 	strd	r2, r5, [fp]
 8002954:	dd08      	ble.n	8002968 <_vfprintf_r+0x520>
 8002956:	aa2a      	add	r2, sp, #168	; 0xa8
 8002958:	9907      	ldr	r1, [sp, #28]
 800295a:	9803      	ldr	r0, [sp, #12]
 800295c:	f004 f8a2 	bl	8006aa4 <__sprint_r>
 8002960:	2800      	cmp	r0, #0
 8002962:	f040 82e9 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8002966:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002968:	9904      	ldr	r1, [sp, #16]
 800296a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800296e:	428a      	cmp	r2, r1
 8002970:	bfac      	ite	ge
 8002972:	189b      	addge	r3, r3, r2
 8002974:	185b      	addlt	r3, r3, r1
 8002976:	9305      	str	r3, [sp, #20]
 8002978:	2c00      	cmp	r4, #0
 800297a:	f040 82d5 	bne.w	8002f28 <_vfprintf_r+0xae0>
 800297e:	2300      	movs	r3, #0
 8002980:	932b      	str	r3, [sp, #172]	; 0xac
 8002982:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002984:	b11b      	cbz	r3, 800298e <_vfprintf_r+0x546>
 8002986:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002988:	9803      	ldr	r0, [sp, #12]
 800298a:	f002 fc9d 	bl	80052c8 <_free_r>
 800298e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002992:	4657      	mov	r7, sl
 8002994:	783b      	ldrb	r3, [r7, #0]
 8002996:	2b00      	cmp	r3, #0
 8002998:	f47f ada7 	bne.w	80024ea <_vfprintf_r+0xa2>
 800299c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800299e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80029a2:	2b00      	cmp	r3, #0
 80029a4:	f041 80e7 	bne.w	8003b76 <_vfprintf_r+0x172e>
 80029a8:	2300      	movs	r3, #0
 80029aa:	932b      	str	r3, [sp, #172]	; 0xac
 80029ac:	e2cb      	b.n	8002f46 <_vfprintf_r+0xafe>
 80029ae:	4643      	mov	r3, r8
 80029b0:	069a      	lsls	r2, r3, #26
 80029b2:	f140 814e 	bpl.w	8002c52 <_vfprintf_r+0x80a>
 80029b6:	9c08      	ldr	r4, [sp, #32]
 80029b8:	3407      	adds	r4, #7
 80029ba:	f024 0207 	bic.w	r2, r4, #7
 80029be:	f102 0108 	add.w	r1, r2, #8
 80029c2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80029c6:	9108      	str	r1, [sp, #32]
 80029c8:	2201      	movs	r2, #1
 80029ca:	2100      	movs	r1, #0
 80029cc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80029d0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029d4:	a956      	add	r1, sp, #344	; 0x158
 80029d6:	9104      	str	r1, [sp, #16]
 80029d8:	f47f aea2 	bne.w	8002720 <_vfprintf_r+0x2d8>
 80029dc:	4698      	mov	r8, r3
 80029de:	2a01      	cmp	r2, #1
 80029e0:	f000 8350 	beq.w	8003084 <_vfprintf_r+0xc3c>
 80029e4:	2a02      	cmp	r2, #2
 80029e6:	f000 831b 	beq.w	8003020 <_vfprintf_r+0xbd8>
 80029ea:	a956      	add	r1, sp, #344	; 0x158
 80029ec:	e000      	b.n	80029f0 <_vfprintf_r+0x5a8>
 80029ee:	4639      	mov	r1, r7
 80029f0:	08e2      	lsrs	r2, r4, #3
 80029f2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80029f6:	08e8      	lsrs	r0, r5, #3
 80029f8:	f004 0307 	and.w	r3, r4, #7
 80029fc:	4605      	mov	r5, r0
 80029fe:	4614      	mov	r4, r2
 8002a00:	3330      	adds	r3, #48	; 0x30
 8002a02:	ea54 0205 	orrs.w	r2, r4, r5
 8002a06:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a0a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a0e:	d1ee      	bne.n	80029ee <_vfprintf_r+0x5a6>
 8002a10:	f018 0f01 	tst.w	r8, #1
 8002a14:	f000 8314 	beq.w	8003040 <_vfprintf_r+0xbf8>
 8002a18:	2b30      	cmp	r3, #48	; 0x30
 8002a1a:	f000 8311 	beq.w	8003040 <_vfprintf_r+0xbf8>
 8002a1e:	9a04      	ldr	r2, [sp, #16]
 8002a20:	3902      	subs	r1, #2
 8002a22:	2330      	movs	r3, #48	; 0x30
 8002a24:	1a52      	subs	r2, r2, r1
 8002a26:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a2a:	9209      	str	r2, [sp, #36]	; 0x24
 8002a2c:	460f      	mov	r7, r1
 8002a2e:	e68c      	b.n	800274a <_vfprintf_r+0x302>
 8002a30:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a34:	2200      	movs	r2, #0
 8002a36:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a3a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a3e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a42:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a46:	2b09      	cmp	r3, #9
 8002a48:	d9f5      	bls.n	8002a36 <_vfprintf_r+0x5ee>
 8002a4a:	9206      	str	r2, [sp, #24]
 8002a4c:	e57c      	b.n	8002548 <_vfprintf_r+0x100>
 8002a4e:	4b14      	ldr	r3, [pc, #80]	; (8002aa0 <_vfprintf_r+0x658>)
 8002a50:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a52:	f018 0f20 	tst.w	r8, #32
 8002a56:	f000 8114 	beq.w	8002c82 <_vfprintf_r+0x83a>
 8002a5a:	9c08      	ldr	r4, [sp, #32]
 8002a5c:	3407      	adds	r4, #7
 8002a5e:	f024 0307 	bic.w	r3, r4, #7
 8002a62:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a66:	f103 0208 	add.w	r2, r3, #8
 8002a6a:	9208      	str	r2, [sp, #32]
 8002a6c:	f018 0f01 	tst.w	r8, #1
 8002a70:	d009      	beq.n	8002a86 <_vfprintf_r+0x63e>
 8002a72:	ea54 0305 	orrs.w	r3, r4, r5
 8002a76:	d006      	beq.n	8002a86 <_vfprintf_r+0x63e>
 8002a78:	2330      	movs	r3, #48	; 0x30
 8002a7a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a7e:	f048 0802 	orr.w	r8, r8, #2
 8002a82:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a86:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a8a:	2202      	movs	r2, #2
 8002a8c:	e79d      	b.n	80029ca <_vfprintf_r+0x582>
 8002a8e:	f048 0801 	orr.w	r8, r8, #1
 8002a92:	f89a 6000 	ldrb.w	r6, [sl]
 8002a96:	e555      	b.n	8002544 <_vfprintf_r+0xfc>
 8002a98:	08007188 	.word	0x08007188
 8002a9c:	08007198 	.word	0x08007198
 8002aa0:	08007154 	.word	0x08007154
 8002aa4:	9e03      	ldr	r6, [sp, #12]
 8002aa6:	4630      	mov	r0, r6
 8002aa8:	f002 feaa 	bl	8005800 <_localeconv_r>
 8002aac:	6843      	ldr	r3, [r0, #4]
 8002aae:	9318      	str	r3, [sp, #96]	; 0x60
 8002ab0:	4618      	mov	r0, r3
 8002ab2:	f7fe fa65 	bl	8000f80 <strlen>
 8002ab6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ab8:	4604      	mov	r4, r0
 8002aba:	4630      	mov	r0, r6
 8002abc:	f002 fea0 	bl	8005800 <_localeconv_r>
 8002ac0:	6883      	ldr	r3, [r0, #8]
 8002ac2:	931a      	str	r3, [sp, #104]	; 0x68
 8002ac4:	2c00      	cmp	r4, #0
 8002ac6:	f43f adb8 	beq.w	800263a <_vfprintf_r+0x1f2>
 8002aca:	f89a 6000 	ldrb.w	r6, [sl]
 8002ace:	2b00      	cmp	r3, #0
 8002ad0:	f43f ad38 	beq.w	8002544 <_vfprintf_r+0xfc>
 8002ad4:	781b      	ldrb	r3, [r3, #0]
 8002ad6:	2b00      	cmp	r3, #0
 8002ad8:	f43f ad34 	beq.w	8002544 <_vfprintf_r+0xfc>
 8002adc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ae0:	e530      	b.n	8002544 <_vfprintf_r+0xfc>
 8002ae2:	9b08      	ldr	r3, [sp, #32]
 8002ae4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ae8:	681a      	ldr	r2, [r3, #0]
 8002aea:	9206      	str	r2, [sp, #24]
 8002aec:	2a00      	cmp	r2, #0
 8002aee:	f103 0304 	add.w	r3, r3, #4
 8002af2:	f2c0 8697 	blt.w	8003824 <_vfprintf_r+0x13dc>
 8002af6:	9308      	str	r3, [sp, #32]
 8002af8:	e524      	b.n	8002544 <_vfprintf_r+0xfc>
 8002afa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002afe:	f89a 6000 	ldrb.w	r6, [sl]
 8002b02:	e51f      	b.n	8002544 <_vfprintf_r+0xfc>
 8002b04:	f89a 6000 	ldrb.w	r6, [sl]
 8002b08:	f048 0804 	orr.w	r8, r8, #4
 8002b0c:	e51a      	b.n	8002544 <_vfprintf_r+0xfc>
 8002b0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b12:	2e2a      	cmp	r6, #42	; 0x2a
 8002b14:	f10a 0201 	add.w	r2, sl, #1
 8002b18:	f001 81b0 	beq.w	8003e7c <_vfprintf_r+0x1a34>
 8002b1c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b20:	2b09      	cmp	r3, #9
 8002b22:	4692      	mov	sl, r2
 8002b24:	f04f 0900 	mov.w	r9, #0
 8002b28:	f63f ad0e 	bhi.w	8002548 <_vfprintf_r+0x100>
 8002b2c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b30:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b34:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b38:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b3c:	2b09      	cmp	r3, #9
 8002b3e:	d9f5      	bls.n	8002b2c <_vfprintf_r+0x6e4>
 8002b40:	e502      	b.n	8002548 <_vfprintf_r+0x100>
 8002b42:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b46:	f89a 6000 	ldrb.w	r6, [sl]
 8002b4a:	e4fb      	b.n	8002544 <_vfprintf_r+0xfc>
 8002b4c:	9c08      	ldr	r4, [sp, #32]
 8002b4e:	3407      	adds	r4, #7
 8002b50:	f024 0407 	bic.w	r4, r4, #7
 8002b54:	ed94 7b00 	vldr	d7, [r4]
 8002b58:	ec52 1b17 	vmov	r1, r2, d7
 8002b5c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b60:	931d      	str	r3, [sp, #116]	; 0x74
 8002b62:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b66:	3408      	adds	r4, #8
 8002b68:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b6c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b70:	4bba      	ldr	r3, [pc, #744]	; (8002e5c <_vfprintf_r+0xa14>)
 8002b72:	9408      	str	r4, [sp, #32]
 8002b74:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b78:	f7fe fac2 	bl	8001100 <__aeabi_dcmpun>
 8002b7c:	2800      	cmp	r0, #0
 8002b7e:	f040 846f 	bne.w	8003460 <_vfprintf_r+0x1018>
 8002b82:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b86:	4bb5      	ldr	r3, [pc, #724]	; (8002e5c <_vfprintf_r+0xa14>)
 8002b88:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b8c:	f7fd ff70 	bl	8000a70 <__aeabi_dcmple>
 8002b90:	2800      	cmp	r0, #0
 8002b92:	f040 8465 	bne.w	8003460 <_vfprintf_r+0x1018>
 8002b96:	2200      	movs	r2, #0
 8002b98:	2300      	movs	r3, #0
 8002b9a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b9e:	f7fd ff5d 	bl	8000a5c <__aeabi_dcmplt>
 8002ba2:	2800      	cmp	r0, #0
 8002ba4:	f040 855b 	bne.w	800365e <_vfprintf_r+0x1216>
 8002ba8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bac:	4fac      	ldr	r7, [pc, #688]	; (8002e60 <_vfprintf_r+0xa18>)
 8002bae:	4bad      	ldr	r3, [pc, #692]	; (8002e64 <_vfprintf_r+0xa1c>)
 8002bb0:	2000      	movs	r0, #0
 8002bb2:	2103      	movs	r1, #3
 8002bb4:	9104      	str	r1, [sp, #16]
 8002bb6:	900a      	str	r0, [sp, #40]	; 0x28
 8002bb8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bbc:	2e47      	cmp	r6, #71	; 0x47
 8002bbe:	bfd8      	it	le
 8002bc0:	461f      	movle	r7, r3
 8002bc2:	9109      	str	r1, [sp, #36]	; 0x24
 8002bc4:	4681      	mov	r9, r0
 8002bc6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002bc8:	9014      	str	r0, [sp, #80]	; 0x50
 8002bca:	9011      	str	r0, [sp, #68]	; 0x44
 8002bcc:	e5c9      	b.n	8002762 <_vfprintf_r+0x31a>
 8002bce:	9808      	ldr	r0, [sp, #32]
 8002bd0:	2300      	movs	r3, #0
 8002bd2:	6801      	ldr	r1, [r0, #0]
 8002bd4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002bd8:	461a      	mov	r2, r3
 8002bda:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002bde:	2301      	movs	r3, #1
 8002be0:	1d01      	adds	r1, r0, #4
 8002be2:	9304      	str	r3, [sp, #16]
 8002be4:	920a      	str	r2, [sp, #40]	; 0x28
 8002be6:	4691      	mov	r9, r2
 8002be8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002bea:	9214      	str	r2, [sp, #80]	; 0x50
 8002bec:	9211      	str	r2, [sp, #68]	; 0x44
 8002bee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002bf2:	af3d      	add	r7, sp, #244	; 0xf4
 8002bf4:	e5b9      	b.n	800276a <_vfprintf_r+0x322>
 8002bf6:	9b08      	ldr	r3, [sp, #32]
 8002bf8:	681f      	ldr	r7, [r3, #0]
 8002bfa:	2500      	movs	r5, #0
 8002bfc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c00:	1d1c      	adds	r4, r3, #4
 8002c02:	2f00      	cmp	r7, #0
 8002c04:	f000 8639 	beq.w	800387a <_vfprintf_r+0x1432>
 8002c08:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c0c:	f000 8711 	beq.w	8003a32 <_vfprintf_r+0x15ea>
 8002c10:	464a      	mov	r2, r9
 8002c12:	4629      	mov	r1, r5
 8002c14:	4638      	mov	r0, r7
 8002c16:	f7fe fa23 	bl	8001060 <memchr>
 8002c1a:	900a      	str	r0, [sp, #40]	; 0x28
 8002c1c:	2800      	cmp	r0, #0
 8002c1e:	f000 85e7 	beq.w	80037f0 <_vfprintf_r+0x13a8>
 8002c22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c24:	1bdb      	subs	r3, r3, r7
 8002c26:	9309      	str	r3, [sp, #36]	; 0x24
 8002c28:	46a9      	mov	r9, r5
 8002c2a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c2e:	9408      	str	r4, [sp, #32]
 8002c30:	9304      	str	r3, [sp, #16]
 8002c32:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c36:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c3a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c3e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c42:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c46:	e58c      	b.n	8002762 <_vfprintf_r+0x31a>
 8002c48:	f048 0310 	orr.w	r3, r8, #16
 8002c4c:	069a      	lsls	r2, r3, #26
 8002c4e:	f53f aeb2 	bmi.w	80029b6 <_vfprintf_r+0x56e>
 8002c52:	9a08      	ldr	r2, [sp, #32]
 8002c54:	06df      	lsls	r7, r3, #27
 8002c56:	f102 0104 	add.w	r1, r2, #4
 8002c5a:	f100 837e 	bmi.w	800335a <_vfprintf_r+0xf12>
 8002c5e:	065d      	lsls	r5, r3, #25
 8002c60:	9a08      	ldr	r2, [sp, #32]
 8002c62:	f100 84e4 	bmi.w	800362e <_vfprintf_r+0x11e6>
 8002c66:	059c      	lsls	r4, r3, #22
 8002c68:	f140 8377 	bpl.w	800335a <_vfprintf_r+0xf12>
 8002c6c:	7814      	ldrb	r4, [r2, #0]
 8002c6e:	9108      	str	r1, [sp, #32]
 8002c70:	2500      	movs	r5, #0
 8002c72:	2201      	movs	r2, #1
 8002c74:	e6a9      	b.n	80029ca <_vfprintf_r+0x582>
 8002c76:	4b7c      	ldr	r3, [pc, #496]	; (8002e68 <_vfprintf_r+0xa20>)
 8002c78:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c7a:	f018 0f20 	tst.w	r8, #32
 8002c7e:	f47f aeec 	bne.w	8002a5a <_vfprintf_r+0x612>
 8002c82:	9a08      	ldr	r2, [sp, #32]
 8002c84:	f018 0f10 	tst.w	r8, #16
 8002c88:	f102 0304 	add.w	r3, r2, #4
 8002c8c:	f040 8354 	bne.w	8003338 <_vfprintf_r+0xef0>
 8002c90:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c94:	9a08      	ldr	r2, [sp, #32]
 8002c96:	f040 84d0 	bne.w	800363a <_vfprintf_r+0x11f2>
 8002c9a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c9e:	f000 834b 	beq.w	8003338 <_vfprintf_r+0xef0>
 8002ca2:	7814      	ldrb	r4, [r2, #0]
 8002ca4:	9308      	str	r3, [sp, #32]
 8002ca6:	2500      	movs	r5, #0
 8002ca8:	e6e0      	b.n	8002a6c <_vfprintf_r+0x624>
 8002caa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002cae:	f89a 6000 	ldrb.w	r6, [sl]
 8002cb2:	2b00      	cmp	r3, #0
 8002cb4:	f47f ac46 	bne.w	8002544 <_vfprintf_r+0xfc>
 8002cb8:	2320      	movs	r3, #32
 8002cba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cbe:	e441      	b.n	8002544 <_vfprintf_r+0xfc>
 8002cc0:	f89a 6000 	ldrb.w	r6, [sl]
 8002cc4:	2e6c      	cmp	r6, #108	; 0x6c
 8002cc6:	bf03      	ittte	eq
 8002cc8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002ccc:	f048 0820 	orreq.w	r8, r8, #32
 8002cd0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002cd4:	f048 0810 	orrne.w	r8, r8, #16
 8002cd8:	e434      	b.n	8002544 <_vfprintf_r+0xfc>
 8002cda:	9a08      	ldr	r2, [sp, #32]
 8002cdc:	f018 0f20 	tst.w	r8, #32
 8002ce0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002ce4:	9208      	str	r2, [sp, #32]
 8002ce6:	f000 83a1 	beq.w	800342c <_vfprintf_r+0xfe4>
 8002cea:	9a05      	ldr	r2, [sp, #20]
 8002cec:	4610      	mov	r0, r2
 8002cee:	17d1      	asrs	r1, r2, #31
 8002cf0:	e9c3 0100 	strd	r0, r1, [r3]
 8002cf4:	4657      	mov	r7, sl
 8002cf6:	e64d      	b.n	8002994 <_vfprintf_r+0x54c>
 8002cf8:	f89a 6000 	ldrb.w	r6, [sl]
 8002cfc:	2e68      	cmp	r6, #104	; 0x68
 8002cfe:	bf03      	ittte	eq
 8002d00:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d04:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d08:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d0c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d10:	e418      	b.n	8002544 <_vfprintf_r+0xfc>
 8002d12:	9908      	ldr	r1, [sp, #32]
 8002d14:	4b55      	ldr	r3, [pc, #340]	; (8002e6c <_vfprintf_r+0xa24>)
 8002d16:	680c      	ldr	r4, [r1, #0]
 8002d18:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d1a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d1e:	3104      	adds	r1, #4
 8002d20:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d24:	f048 0302 	orr.w	r3, r8, #2
 8002d28:	9108      	str	r1, [sp, #32]
 8002d2a:	2500      	movs	r5, #0
 8002d2c:	2202      	movs	r2, #2
 8002d2e:	2678      	movs	r6, #120	; 0x78
 8002d30:	e64b      	b.n	80029ca <_vfprintf_r+0x582>
 8002d32:	f048 0808 	orr.w	r8, r8, #8
 8002d36:	f89a 6000 	ldrb.w	r6, [sl]
 8002d3a:	e403      	b.n	8002544 <_vfprintf_r+0xfc>
 8002d3c:	f048 0310 	orr.w	r3, r8, #16
 8002d40:	069f      	lsls	r7, r3, #26
 8002d42:	f53f acd1 	bmi.w	80026e8 <_vfprintf_r+0x2a0>
 8002d46:	9908      	ldr	r1, [sp, #32]
 8002d48:	06dd      	lsls	r5, r3, #27
 8002d4a:	f101 0204 	add.w	r2, r1, #4
 8002d4e:	f100 82fd 	bmi.w	800334c <_vfprintf_r+0xf04>
 8002d52:	065c      	lsls	r4, r3, #25
 8002d54:	9908      	ldr	r1, [sp, #32]
 8002d56:	f100 8475 	bmi.w	8003644 <_vfprintf_r+0x11fc>
 8002d5a:	0598      	lsls	r0, r3, #22
 8002d5c:	f140 82f6 	bpl.w	800334c <_vfprintf_r+0xf04>
 8002d60:	f991 4000 	ldrsb.w	r4, [r1]
 8002d64:	9208      	str	r2, [sp, #32]
 8002d66:	17e5      	asrs	r5, r4, #31
 8002d68:	4620      	mov	r0, r4
 8002d6a:	4629      	mov	r1, r5
 8002d6c:	e4c7      	b.n	80026fe <_vfprintf_r+0x2b6>
 8002d6e:	9a08      	ldr	r2, [sp, #32]
 8002d70:	f018 0f10 	tst.w	r8, #16
 8002d74:	f102 0304 	add.w	r3, r2, #4
 8002d78:	f040 82e3 	bne.w	8003342 <_vfprintf_r+0xefa>
 8002d7c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d80:	9a08      	ldr	r2, [sp, #32]
 8002d82:	f040 8467 	bne.w	8003654 <_vfprintf_r+0x120c>
 8002d86:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d8a:	f000 82da 	beq.w	8003342 <_vfprintf_r+0xefa>
 8002d8e:	7814      	ldrb	r4, [r2, #0]
 8002d90:	9308      	str	r3, [sp, #32]
 8002d92:	2500      	movs	r5, #0
 8002d94:	e488      	b.n	80026a8 <_vfprintf_r+0x260>
 8002d96:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d9a:	f002 fd45 	bl	8005828 <__retarget_lock_release_recursive>
 8002d9e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002da2:	9305      	str	r3, [sp, #20]
 8002da4:	e443      	b.n	800262e <_vfprintf_r+0x1e6>
 8002da6:	2e00      	cmp	r6, #0
 8002da8:	f43f adf8 	beq.w	800299c <_vfprintf_r+0x554>
 8002dac:	2300      	movs	r3, #0
 8002dae:	2101      	movs	r1, #1
 8002db0:	461a      	mov	r2, r3
 8002db2:	9104      	str	r1, [sp, #16]
 8002db4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002db8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dbc:	930a      	str	r3, [sp, #40]	; 0x28
 8002dbe:	4699      	mov	r9, r3
 8002dc0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002dc2:	9314      	str	r3, [sp, #80]	; 0x50
 8002dc4:	9311      	str	r3, [sp, #68]	; 0x44
 8002dc6:	9109      	str	r1, [sp, #36]	; 0x24
 8002dc8:	af3d      	add	r7, sp, #244	; 0xf4
 8002dca:	e4ce      	b.n	800276a <_vfprintf_r+0x322>
 8002dcc:	2e65      	cmp	r6, #101	; 0x65
 8002dce:	f340 80ca 	ble.w	8002f66 <_vfprintf_r+0xb1e>
 8002dd2:	2200      	movs	r2, #0
 8002dd4:	2300      	movs	r3, #0
 8002dd6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002dda:	f7fd fe35 	bl	8000a48 <__aeabi_dcmpeq>
 8002dde:	2800      	cmp	r0, #0
 8002de0:	f000 8169 	beq.w	80030b6 <_vfprintf_r+0xc6e>
 8002de4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002de6:	4a22      	ldr	r2, [pc, #136]	; (8002e70 <_vfprintf_r+0xa28>)
 8002de8:	f8cb 2000 	str.w	r2, [fp]
 8002dec:	3301      	adds	r3, #1
 8002dee:	3401      	adds	r4, #1
 8002df0:	2201      	movs	r2, #1
 8002df2:	2b07      	cmp	r3, #7
 8002df4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002df8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002dfc:	f300 8406 	bgt.w	800360c <_vfprintf_r+0x11c4>
 8002e00:	f10b 0b08 	add.w	fp, fp, #8
 8002e04:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e06:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e08:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e0a:	4293      	cmp	r3, r2
 8002e0c:	db03      	blt.n	8002e16 <_vfprintf_r+0x9ce>
 8002e0e:	f018 0f01 	tst.w	r8, #1
 8002e12:	f43f ad6a 	beq.w	80028ea <_vfprintf_r+0x4a2>
 8002e16:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e18:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e1a:	f8cb 2000 	str.w	r2, [fp]
 8002e1e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e20:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e24:	3301      	adds	r3, #1
 8002e26:	4414      	add	r4, r2
 8002e28:	2b07      	cmp	r3, #7
 8002e2a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e2e:	f300 8517 	bgt.w	8003860 <_vfprintf_r+0x1418>
 8002e32:	f10b 0b08 	add.w	fp, fp, #8
 8002e36:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e38:	1e5d      	subs	r5, r3, #1
 8002e3a:	2d00      	cmp	r5, #0
 8002e3c:	f77f ad55 	ble.w	80028ea <_vfprintf_r+0x4a2>
 8002e40:	2d10      	cmp	r5, #16
 8002e42:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e44:	4b0b      	ldr	r3, [pc, #44]	; (8002e74 <_vfprintf_r+0xa2c>)
 8002e46:	f340 82e7 	ble.w	8003418 <_vfprintf_r+0xfd0>
 8002e4a:	4619      	mov	r1, r3
 8002e4c:	2610      	movs	r6, #16
 8002e4e:	4623      	mov	r3, r4
 8002e50:	9f03      	ldr	r7, [sp, #12]
 8002e52:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e56:	460c      	mov	r4, r1
 8002e58:	e014      	b.n	8002e84 <_vfprintf_r+0xa3c>
 8002e5a:	bf00      	nop
 8002e5c:	7fefffff 	.word	0x7fefffff
 8002e60:	08007148 	.word	0x08007148
 8002e64:	08007144 	.word	0x08007144
 8002e68:	08007168 	.word	0x08007168
 8002e6c:	08007154 	.word	0x08007154
 8002e70:	08007184 	.word	0x08007184
 8002e74:	08007198 	.word	0x08007198
 8002e78:	f10b 0b08 	add.w	fp, fp, #8
 8002e7c:	3d10      	subs	r5, #16
 8002e7e:	2d10      	cmp	r5, #16
 8002e80:	f340 82c7 	ble.w	8003412 <_vfprintf_r+0xfca>
 8002e84:	3201      	adds	r2, #1
 8002e86:	3310      	adds	r3, #16
 8002e88:	2a07      	cmp	r2, #7
 8002e8a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e8e:	e9cb 4600 	strd	r4, r6, [fp]
 8002e92:	ddf1      	ble.n	8002e78 <_vfprintf_r+0xa30>
 8002e94:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e96:	4649      	mov	r1, r9
 8002e98:	4638      	mov	r0, r7
 8002e9a:	f003 fe03 	bl	8006aa4 <__sprint_r>
 8002e9e:	2800      	cmp	r0, #0
 8002ea0:	d14c      	bne.n	8002f3c <_vfprintf_r+0xaf4>
 8002ea2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002ea6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eaa:	e7e7      	b.n	8002e7c <_vfprintf_r+0xa34>
 8002eac:	9b06      	ldr	r3, [sp, #24]
 8002eae:	9a04      	ldr	r2, [sp, #16]
 8002eb0:	1a9d      	subs	r5, r3, r2
 8002eb2:	2d00      	cmp	r5, #0
 8002eb4:	f77f acc9 	ble.w	800284a <_vfprintf_r+0x402>
 8002eb8:	2d10      	cmp	r5, #16
 8002eba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ebc:	4bbc      	ldr	r3, [pc, #752]	; (80031b0 <_vfprintf_r+0xd68>)
 8002ebe:	dd27      	ble.n	8002f10 <_vfprintf_r+0xac8>
 8002ec0:	4659      	mov	r1, fp
 8002ec2:	4620      	mov	r0, r4
 8002ec4:	46bb      	mov	fp, r7
 8002ec6:	461c      	mov	r4, r3
 8002ec8:	4637      	mov	r7, r6
 8002eca:	9e07      	ldr	r6, [sp, #28]
 8002ecc:	e004      	b.n	8002ed8 <_vfprintf_r+0xa90>
 8002ece:	3d10      	subs	r5, #16
 8002ed0:	2d10      	cmp	r5, #16
 8002ed2:	f101 0108 	add.w	r1, r1, #8
 8002ed6:	dd16      	ble.n	8002f06 <_vfprintf_r+0xabe>
 8002ed8:	3201      	adds	r2, #1
 8002eda:	3010      	adds	r0, #16
 8002edc:	2310      	movs	r3, #16
 8002ede:	2a07      	cmp	r2, #7
 8002ee0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ee4:	600c      	str	r4, [r1, #0]
 8002ee6:	604b      	str	r3, [r1, #4]
 8002ee8:	ddf1      	ble.n	8002ece <_vfprintf_r+0xa86>
 8002eea:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eec:	4631      	mov	r1, r6
 8002eee:	9803      	ldr	r0, [sp, #12]
 8002ef0:	f003 fdd8 	bl	8006aa4 <__sprint_r>
 8002ef4:	2800      	cmp	r0, #0
 8002ef6:	f040 80a8 	bne.w	800304a <_vfprintf_r+0xc02>
 8002efa:	3d10      	subs	r5, #16
 8002efc:	2d10      	cmp	r5, #16
 8002efe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f02:	a92d      	add	r1, sp, #180	; 0xb4
 8002f04:	dce8      	bgt.n	8002ed8 <_vfprintf_r+0xa90>
 8002f06:	463e      	mov	r6, r7
 8002f08:	4623      	mov	r3, r4
 8002f0a:	465f      	mov	r7, fp
 8002f0c:	4604      	mov	r4, r0
 8002f0e:	468b      	mov	fp, r1
 8002f10:	3201      	adds	r2, #1
 8002f12:	442c      	add	r4, r5
 8002f14:	2a07      	cmp	r2, #7
 8002f16:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f1a:	e9cb 3500 	strd	r3, r5, [fp]
 8002f1e:	f300 8292 	bgt.w	8003446 <_vfprintf_r+0xffe>
 8002f22:	f10b 0b08 	add.w	fp, fp, #8
 8002f26:	e490      	b.n	800284a <_vfprintf_r+0x402>
 8002f28:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f2a:	9907      	ldr	r1, [sp, #28]
 8002f2c:	9803      	ldr	r0, [sp, #12]
 8002f2e:	f003 fdb9 	bl	8006aa4 <__sprint_r>
 8002f32:	2800      	cmp	r0, #0
 8002f34:	f43f ad23 	beq.w	800297e <_vfprintf_r+0x536>
 8002f38:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f3c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f3e:	b111      	cbz	r1, 8002f46 <_vfprintf_r+0xafe>
 8002f40:	9803      	ldr	r0, [sp, #12]
 8002f42:	f002 f9c1 	bl	80052c8 <_free_r>
 8002f46:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f4a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f4e:	07d0      	lsls	r0, r2, #31
 8002f50:	d402      	bmi.n	8002f58 <_vfprintf_r+0xb10>
 8002f52:	0599      	lsls	r1, r3, #22
 8002f54:	f140 81d0 	bpl.w	80032f8 <_vfprintf_r+0xeb0>
 8002f58:	065a      	lsls	r2, r3, #25
 8002f5a:	f53f ab65 	bmi.w	8002628 <_vfprintf_r+0x1e0>
 8002f5e:	9805      	ldr	r0, [sp, #20]
 8002f60:	b057      	add	sp, #348	; 0x15c
 8002f62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f66:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f68:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f6a:	2a01      	cmp	r2, #1
 8002f6c:	f104 0401 	add.w	r4, r4, #1
 8002f70:	f103 0501 	add.w	r5, r3, #1
 8002f74:	f10b 0608 	add.w	r6, fp, #8
 8002f78:	f340 811c 	ble.w	80031b4 <_vfprintf_r+0xd6c>
 8002f7c:	2301      	movs	r3, #1
 8002f7e:	2d07      	cmp	r5, #7
 8002f80:	f8cb 7000 	str.w	r7, [fp]
 8002f84:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f88:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f8c:	f300 81bb 	bgt.w	8003306 <_vfprintf_r+0xebe>
 8002f90:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f92:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f94:	1c69      	adds	r1, r5, #1
 8002f96:	441c      	add	r4, r3
 8002f98:	2907      	cmp	r1, #7
 8002f9a:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f9c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002fa0:	e9c6 2300 	strd	r2, r3, [r6]
 8002fa4:	f300 81bb 	bgt.w	800331e <_vfprintf_r+0xed6>
 8002fa8:	3608      	adds	r6, #8
 8002faa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fac:	1c53      	adds	r3, r2, #1
 8002fae:	461d      	mov	r5, r3
 8002fb0:	9509      	str	r5, [sp, #36]	; 0x24
 8002fb2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002fb4:	930e      	str	r3, [sp, #56]	; 0x38
 8002fb6:	2200      	movs	r2, #0
 8002fb8:	2300      	movs	r3, #0
 8002fba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fbe:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002fc2:	f106 0b08 	add.w	fp, r6, #8
 8002fc6:	f7fd fd3f 	bl	8000a48 <__aeabi_dcmpeq>
 8002fca:	2800      	cmp	r0, #0
 8002fcc:	f040 80c2 	bne.w	8003154 <_vfprintf_r+0xd0c>
 8002fd0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002fd2:	f8c6 9004 	str.w	r9, [r6, #4]
 8002fd6:	3701      	adds	r7, #1
 8002fd8:	444c      	add	r4, r9
 8002fda:	2d07      	cmp	r5, #7
 8002fdc:	6037      	str	r7, [r6, #0]
 8002fde:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fe0:	952b      	str	r5, [sp, #172]	; 0xac
 8002fe2:	f300 80f9 	bgt.w	80031d8 <_vfprintf_r+0xd90>
 8002fe6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fe8:	f106 0310 	add.w	r3, r6, #16
 8002fec:	3202      	adds	r2, #2
 8002fee:	465e      	mov	r6, fp
 8002ff0:	9209      	str	r2, [sp, #36]	; 0x24
 8002ff2:	469b      	mov	fp, r3
 8002ff4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002ff6:	6072      	str	r2, [r6, #4]
 8002ff8:	4414      	add	r4, r2
 8002ffa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ffc:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ffe:	ab26      	add	r3, sp, #152	; 0x98
 8003000:	2a07      	cmp	r2, #7
 8003002:	922b      	str	r2, [sp, #172]	; 0xac
 8003004:	6033      	str	r3, [r6, #0]
 8003006:	f77f ac70 	ble.w	80028ea <_vfprintf_r+0x4a2>
 800300a:	aa2a      	add	r2, sp, #168	; 0xa8
 800300c:	9907      	ldr	r1, [sp, #28]
 800300e:	9803      	ldr	r0, [sp, #12]
 8003010:	f003 fd48 	bl	8006aa4 <__sprint_r>
 8003014:	2800      	cmp	r0, #0
 8003016:	d18f      	bne.n	8002f38 <_vfprintf_r+0xaf0>
 8003018:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800301a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800301e:	e464      	b.n	80028ea <_vfprintf_r+0x4a2>
 8003020:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003022:	af56      	add	r7, sp, #344	; 0x158
 8003024:	0923      	lsrs	r3, r4, #4
 8003026:	f004 010f 	and.w	r1, r4, #15
 800302a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800302e:	092a      	lsrs	r2, r5, #4
 8003030:	461c      	mov	r4, r3
 8003032:	4615      	mov	r5, r2
 8003034:	5c43      	ldrb	r3, [r0, r1]
 8003036:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800303a:	ea54 0305 	orrs.w	r3, r4, r5
 800303e:	d1f1      	bne.n	8003024 <_vfprintf_r+0xbdc>
 8003040:	9b04      	ldr	r3, [sp, #16]
 8003042:	1bdb      	subs	r3, r3, r7
 8003044:	9309      	str	r3, [sp, #36]	; 0x24
 8003046:	f7ff bb80 	b.w	800274a <_vfprintf_r+0x302>
 800304a:	46b1      	mov	r9, r6
 800304c:	e776      	b.n	8002f3c <_vfprintf_r+0xaf4>
 800304e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003050:	9907      	ldr	r1, [sp, #28]
 8003052:	9803      	ldr	r0, [sp, #12]
 8003054:	f003 fd26 	bl	8006aa4 <__sprint_r>
 8003058:	2800      	cmp	r0, #0
 800305a:	f47f af6d 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 800305e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003060:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003064:	f7ff bbdd 	b.w	8002822 <_vfprintf_r+0x3da>
 8003068:	aa2a      	add	r2, sp, #168	; 0xa8
 800306a:	9907      	ldr	r1, [sp, #28]
 800306c:	9803      	ldr	r0, [sp, #12]
 800306e:	f003 fd19 	bl	8006aa4 <__sprint_r>
 8003072:	2800      	cmp	r0, #0
 8003074:	f47f af60 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003078:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800307a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800307e:	f7ff bbe0 	b.w	8002842 <_vfprintf_r+0x3fa>
 8003082:	4698      	mov	r8, r3
 8003084:	2d00      	cmp	r5, #0
 8003086:	bf08      	it	eq
 8003088:	2c0a      	cmpeq	r4, #10
 800308a:	f080 8170 	bcs.w	800336e <_vfprintf_r+0xf26>
 800308e:	af56      	add	r7, sp, #344	; 0x158
 8003090:	3430      	adds	r4, #48	; 0x30
 8003092:	2301      	movs	r3, #1
 8003094:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003098:	9309      	str	r3, [sp, #36]	; 0x24
 800309a:	f7ff bb56 	b.w	800274a <_vfprintf_r+0x302>
 800309e:	aa2a      	add	r2, sp, #168	; 0xa8
 80030a0:	9907      	ldr	r1, [sp, #28]
 80030a2:	9803      	ldr	r0, [sp, #12]
 80030a4:	f003 fcfe 	bl	8006aa4 <__sprint_r>
 80030a8:	2800      	cmp	r0, #0
 80030aa:	f47f af45 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 80030ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030b4:	e406      	b.n	80028c4 <_vfprintf_r+0x47c>
 80030b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030b8:	2b00      	cmp	r3, #0
 80030ba:	f340 8273 	ble.w	80035a4 <_vfprintf_r+0x115c>
 80030be:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80030c2:	4293      	cmp	r3, r2
 80030c4:	bfa8      	it	ge
 80030c6:	4613      	movge	r3, r2
 80030c8:	2b00      	cmp	r3, #0
 80030ca:	461d      	mov	r5, r3
 80030cc:	dd0d      	ble.n	80030ea <_vfprintf_r+0xca2>
 80030ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030d0:	f8cb 7000 	str.w	r7, [fp]
 80030d4:	3301      	adds	r3, #1
 80030d6:	442c      	add	r4, r5
 80030d8:	2b07      	cmp	r3, #7
 80030da:	942c      	str	r4, [sp, #176]	; 0xb0
 80030dc:	f8cb 5004 	str.w	r5, [fp, #4]
 80030e0:	932b      	str	r3, [sp, #172]	; 0xac
 80030e2:	f300 82c1 	bgt.w	8003668 <_vfprintf_r+0x1220>
 80030e6:	f10b 0b08 	add.w	fp, fp, #8
 80030ea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030ec:	2d00      	cmp	r5, #0
 80030ee:	bfa8      	it	ge
 80030f0:	1b5b      	subge	r3, r3, r5
 80030f2:	2b00      	cmp	r3, #0
 80030f4:	461d      	mov	r5, r3
 80030f6:	f340 8099 	ble.w	800322c <_vfprintf_r+0xde4>
 80030fa:	2d10      	cmp	r5, #16
 80030fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030fe:	4b2c      	ldr	r3, [pc, #176]	; (80031b0 <_vfprintf_r+0xd68>)
 8003100:	f340 83db 	ble.w	80038ba <_vfprintf_r+0x1472>
 8003104:	4618      	mov	r0, r3
 8003106:	4621      	mov	r1, r4
 8003108:	465b      	mov	r3, fp
 800310a:	2610      	movs	r6, #16
 800310c:	46bb      	mov	fp, r7
 800310e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003112:	9c07      	ldr	r4, [sp, #28]
 8003114:	4607      	mov	r7, r0
 8003116:	e004      	b.n	8003122 <_vfprintf_r+0xcda>
 8003118:	3308      	adds	r3, #8
 800311a:	3d10      	subs	r5, #16
 800311c:	2d10      	cmp	r5, #16
 800311e:	f340 83c7 	ble.w	80038b0 <_vfprintf_r+0x1468>
 8003122:	3201      	adds	r2, #1
 8003124:	3110      	adds	r1, #16
 8003126:	2a07      	cmp	r2, #7
 8003128:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800312c:	e9c3 7600 	strd	r7, r6, [r3]
 8003130:	ddf2      	ble.n	8003118 <_vfprintf_r+0xcd0>
 8003132:	aa2a      	add	r2, sp, #168	; 0xa8
 8003134:	4621      	mov	r1, r4
 8003136:	4648      	mov	r0, r9
 8003138:	f003 fcb4 	bl	8006aa4 <__sprint_r>
 800313c:	2800      	cmp	r0, #0
 800313e:	f040 84a5 	bne.w	8003a8c <_vfprintf_r+0x1644>
 8003142:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003146:	ab2d      	add	r3, sp, #180	; 0xb4
 8003148:	e7e7      	b.n	800311a <_vfprintf_r+0xcd2>
 800314a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800314e:	af56      	add	r7, sp, #344	; 0x158
 8003150:	f7ff bafb 	b.w	800274a <_vfprintf_r+0x302>
 8003154:	f1b9 0f00 	cmp.w	r9, #0
 8003158:	f77f af4c 	ble.w	8002ff4 <_vfprintf_r+0xbac>
 800315c:	f1b9 0f10 	cmp.w	r9, #16
 8003160:	4b13      	ldr	r3, [pc, #76]	; (80031b0 <_vfprintf_r+0xd68>)
 8003162:	f340 8659 	ble.w	8003e18 <_vfprintf_r+0x19d0>
 8003166:	4619      	mov	r1, r3
 8003168:	4622      	mov	r2, r4
 800316a:	4633      	mov	r3, r6
 800316c:	2710      	movs	r7, #16
 800316e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003172:	9c07      	ldr	r4, [sp, #28]
 8003174:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003176:	460e      	mov	r6, r1
 8003178:	e007      	b.n	800318a <_vfprintf_r+0xd42>
 800317a:	3308      	adds	r3, #8
 800317c:	f1a9 0910 	sub.w	r9, r9, #16
 8003180:	f1b9 0f10 	cmp.w	r9, #16
 8003184:	f340 8353 	ble.w	800382e <_vfprintf_r+0x13e6>
 8003188:	3501      	adds	r5, #1
 800318a:	3210      	adds	r2, #16
 800318c:	2d07      	cmp	r5, #7
 800318e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003192:	e9c3 6700 	strd	r6, r7, [r3]
 8003196:	ddf0      	ble.n	800317a <_vfprintf_r+0xd32>
 8003198:	aa2a      	add	r2, sp, #168	; 0xa8
 800319a:	4621      	mov	r1, r4
 800319c:	4658      	mov	r0, fp
 800319e:	f003 fc81 	bl	8006aa4 <__sprint_r>
 80031a2:	2800      	cmp	r0, #0
 80031a4:	f040 8472 	bne.w	8003a8c <_vfprintf_r+0x1644>
 80031a8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80031ae:	e7e5      	b.n	800317c <_vfprintf_r+0xd34>
 80031b0:	08007198 	.word	0x08007198
 80031b4:	f018 0f01 	tst.w	r8, #1
 80031b8:	f47f aee0 	bne.w	8002f7c <_vfprintf_r+0xb34>
 80031bc:	2201      	movs	r2, #1
 80031be:	2d07      	cmp	r5, #7
 80031c0:	f8cb 7000 	str.w	r7, [fp]
 80031c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80031cc:	dc04      	bgt.n	80031d8 <_vfprintf_r+0xd90>
 80031ce:	3302      	adds	r3, #2
 80031d0:	9309      	str	r3, [sp, #36]	; 0x24
 80031d2:	f10b 0b10 	add.w	fp, fp, #16
 80031d6:	e70d      	b.n	8002ff4 <_vfprintf_r+0xbac>
 80031d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031da:	9907      	ldr	r1, [sp, #28]
 80031dc:	9803      	ldr	r0, [sp, #12]
 80031de:	f003 fc61 	bl	8006aa4 <__sprint_r>
 80031e2:	2800      	cmp	r0, #0
 80031e4:	f47f aea8 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 80031e8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031ec:	3301      	adds	r3, #1
 80031ee:	9309      	str	r3, [sp, #36]	; 0x24
 80031f0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80031f4:	ae2d      	add	r6, sp, #180	; 0xb4
 80031f6:	e6fd      	b.n	8002ff4 <_vfprintf_r+0xbac>
 80031f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031fa:	9907      	ldr	r1, [sp, #28]
 80031fc:	9803      	ldr	r0, [sp, #12]
 80031fe:	f003 fc51 	bl	8006aa4 <__sprint_r>
 8003202:	2800      	cmp	r0, #0
 8003204:	f47f ae98 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003208:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800320c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800320e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003212:	f7ff baf6 	b.w	8002802 <_vfprintf_r+0x3ba>
 8003216:	aa2a      	add	r2, sp, #168	; 0xa8
 8003218:	9907      	ldr	r1, [sp, #28]
 800321a:	9803      	ldr	r0, [sp, #12]
 800321c:	f003 fc42 	bl	8006aa4 <__sprint_r>
 8003220:	2800      	cmp	r0, #0
 8003222:	f47f ae89 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003226:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003228:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800322c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800322e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003232:	443b      	add	r3, r7
 8003234:	4699      	mov	r9, r3
 8003236:	f040 8357 	bne.w	80038e8 <_vfprintf_r+0x14a0>
 800323a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800323c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800323e:	4293      	cmp	r3, r2
 8003240:	db49      	blt.n	80032d6 <_vfprintf_r+0xe8e>
 8003242:	f018 0f01 	tst.w	r8, #1
 8003246:	d146      	bne.n	80032d6 <_vfprintf_r+0xe8e>
 8003248:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800324a:	18bd      	adds	r5, r7, r2
 800324c:	eba5 0509 	sub.w	r5, r5, r9
 8003250:	1ad3      	subs	r3, r2, r3
 8003252:	429d      	cmp	r5, r3
 8003254:	bfa8      	it	ge
 8003256:	461d      	movge	r5, r3
 8003258:	2d00      	cmp	r5, #0
 800325a:	dd0d      	ble.n	8003278 <_vfprintf_r+0xe30>
 800325c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800325e:	f8cb 9000 	str.w	r9, [fp]
 8003262:	3201      	adds	r2, #1
 8003264:	442c      	add	r4, r5
 8003266:	2a07      	cmp	r2, #7
 8003268:	942c      	str	r4, [sp, #176]	; 0xb0
 800326a:	f8cb 5004 	str.w	r5, [fp, #4]
 800326e:	922b      	str	r2, [sp, #172]	; 0xac
 8003270:	f300 8462 	bgt.w	8003b38 <_vfprintf_r+0x16f0>
 8003274:	f10b 0b08 	add.w	fp, fp, #8
 8003278:	2d00      	cmp	r5, #0
 800327a:	bfac      	ite	ge
 800327c:	1b5d      	subge	r5, r3, r5
 800327e:	461d      	movlt	r5, r3
 8003280:	2d00      	cmp	r5, #0
 8003282:	f77f ab32 	ble.w	80028ea <_vfprintf_r+0x4a2>
 8003286:	2d10      	cmp	r5, #16
 8003288:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800328a:	4bc5      	ldr	r3, [pc, #788]	; (80035a0 <_vfprintf_r+0x1158>)
 800328c:	f340 80c4 	ble.w	8003418 <_vfprintf_r+0xfd0>
 8003290:	4619      	mov	r1, r3
 8003292:	2610      	movs	r6, #16
 8003294:	4623      	mov	r3, r4
 8003296:	9f03      	ldr	r7, [sp, #12]
 8003298:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800329c:	460c      	mov	r4, r1
 800329e:	e005      	b.n	80032ac <_vfprintf_r+0xe64>
 80032a0:	f10b 0b08 	add.w	fp, fp, #8
 80032a4:	3d10      	subs	r5, #16
 80032a6:	2d10      	cmp	r5, #16
 80032a8:	f340 80b3 	ble.w	8003412 <_vfprintf_r+0xfca>
 80032ac:	3201      	adds	r2, #1
 80032ae:	3310      	adds	r3, #16
 80032b0:	2a07      	cmp	r2, #7
 80032b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032b6:	e9cb 4600 	strd	r4, r6, [fp]
 80032ba:	ddf1      	ble.n	80032a0 <_vfprintf_r+0xe58>
 80032bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80032be:	4649      	mov	r1, r9
 80032c0:	4638      	mov	r0, r7
 80032c2:	f003 fbef 	bl	8006aa4 <__sprint_r>
 80032c6:	2800      	cmp	r0, #0
 80032c8:	f47f ae38 	bne.w	8002f3c <_vfprintf_r+0xaf4>
 80032cc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80032d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032d4:	e7e6      	b.n	80032a4 <_vfprintf_r+0xe5c>
 80032d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032d8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80032da:	f8cb 1000 	str.w	r1, [fp]
 80032de:	9915      	ldr	r1, [sp, #84]	; 0x54
 80032e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80032e4:	3201      	adds	r2, #1
 80032e6:	440c      	add	r4, r1
 80032e8:	2a07      	cmp	r2, #7
 80032ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80032ec:	922b      	str	r2, [sp, #172]	; 0xac
 80032ee:	f300 828c 	bgt.w	800380a <_vfprintf_r+0x13c2>
 80032f2:	f10b 0b08 	add.w	fp, fp, #8
 80032f6:	e7a7      	b.n	8003248 <_vfprintf_r+0xe00>
 80032f8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032fc:	f002 fa94 	bl	8005828 <__retarget_lock_release_recursive>
 8003300:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003304:	e628      	b.n	8002f58 <_vfprintf_r+0xb10>
 8003306:	aa2a      	add	r2, sp, #168	; 0xa8
 8003308:	9907      	ldr	r1, [sp, #28]
 800330a:	9803      	ldr	r0, [sp, #12]
 800330c:	f003 fbca 	bl	8006aa4 <__sprint_r>
 8003310:	2800      	cmp	r0, #0
 8003312:	f47f ae11 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003316:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800331a:	ae2d      	add	r6, sp, #180	; 0xb4
 800331c:	e638      	b.n	8002f90 <_vfprintf_r+0xb48>
 800331e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003320:	9907      	ldr	r1, [sp, #28]
 8003322:	9803      	ldr	r0, [sp, #12]
 8003324:	f003 fbbe 	bl	8006aa4 <__sprint_r>
 8003328:	2800      	cmp	r0, #0
 800332a:	f47f ae05 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 800332e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003332:	ae2d      	add	r6, sp, #180	; 0xb4
 8003334:	930b      	str	r3, [sp, #44]	; 0x2c
 8003336:	e638      	b.n	8002faa <_vfprintf_r+0xb62>
 8003338:	6814      	ldr	r4, [r2, #0]
 800333a:	9308      	str	r3, [sp, #32]
 800333c:	2500      	movs	r5, #0
 800333e:	f7ff bb95 	b.w	8002a6c <_vfprintf_r+0x624>
 8003342:	6814      	ldr	r4, [r2, #0]
 8003344:	9308      	str	r3, [sp, #32]
 8003346:	2500      	movs	r5, #0
 8003348:	f7ff b9ae 	b.w	80026a8 <_vfprintf_r+0x260>
 800334c:	680c      	ldr	r4, [r1, #0]
 800334e:	9208      	str	r2, [sp, #32]
 8003350:	17e5      	asrs	r5, r4, #31
 8003352:	4620      	mov	r0, r4
 8003354:	4629      	mov	r1, r5
 8003356:	f7ff b9d2 	b.w	80026fe <_vfprintf_r+0x2b6>
 800335a:	6814      	ldr	r4, [r2, #0]
 800335c:	9108      	str	r1, [sp, #32]
 800335e:	2201      	movs	r2, #1
 8003360:	2500      	movs	r5, #0
 8003362:	f7ff bb32 	b.w	80029ca <_vfprintf_r+0x582>
 8003366:	2a01      	cmp	r2, #1
 8003368:	f47f ab3c 	bne.w	80029e4 <_vfprintf_r+0x59c>
 800336c:	e68f      	b.n	800308e <_vfprintf_r+0xc46>
 800336e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003372:	2200      	movs	r2, #0
 8003374:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003378:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800337c:	af56      	add	r7, sp, #344	; 0x158
 800337e:	4692      	mov	sl, r2
 8003380:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003384:	461e      	mov	r6, r3
 8003386:	e00a      	b.n	800339e <_vfprintf_r+0xf56>
 8003388:	2300      	movs	r3, #0
 800338a:	4620      	mov	r0, r4
 800338c:	4629      	mov	r1, r5
 800338e:	220a      	movs	r2, #10
 8003390:	f7fd fbdc 	bl	8000b4c <__aeabi_uldivmod>
 8003394:	4604      	mov	r4, r0
 8003396:	460d      	mov	r5, r1
 8003398:	ea54 0305 	orrs.w	r3, r4, r5
 800339c:	d029      	beq.n	80033f2 <_vfprintf_r+0xfaa>
 800339e:	220a      	movs	r2, #10
 80033a0:	2300      	movs	r3, #0
 80033a2:	4620      	mov	r0, r4
 80033a4:	4629      	mov	r1, r5
 80033a6:	f7fd fbd1 	bl	8000b4c <__aeabi_uldivmod>
 80033aa:	3230      	adds	r2, #48	; 0x30
 80033ac:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033b0:	f10a 0a01 	add.w	sl, sl, #1
 80033b4:	3f01      	subs	r7, #1
 80033b6:	2e00      	cmp	r6, #0
 80033b8:	d0e6      	beq.n	8003388 <_vfprintf_r+0xf40>
 80033ba:	f898 3000 	ldrb.w	r3, [r8]
 80033be:	459a      	cmp	sl, r3
 80033c0:	d1e2      	bne.n	8003388 <_vfprintf_r+0xf40>
 80033c2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80033c6:	d0df      	beq.n	8003388 <_vfprintf_r+0xf40>
 80033c8:	2d00      	cmp	r5, #0
 80033ca:	bf08      	it	eq
 80033cc:	2c0a      	cmpeq	r4, #10
 80033ce:	d3db      	bcc.n	8003388 <_vfprintf_r+0xf40>
 80033d0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80033d2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80033d4:	1aff      	subs	r7, r7, r3
 80033d6:	461a      	mov	r2, r3
 80033d8:	4638      	mov	r0, r7
 80033da:	f003 faf5 	bl	80069c8 <strncpy>
 80033de:	f898 3001 	ldrb.w	r3, [r8, #1]
 80033e2:	2b00      	cmp	r3, #0
 80033e4:	f000 8496 	beq.w	8003d14 <_vfprintf_r+0x18cc>
 80033e8:	f108 0801 	add.w	r8, r8, #1
 80033ec:	f04f 0a00 	mov.w	sl, #0
 80033f0:	e7ca      	b.n	8003388 <_vfprintf_r+0xf40>
 80033f2:	9b04      	ldr	r3, [sp, #16]
 80033f4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80033f8:	1bdb      	subs	r3, r3, r7
 80033fa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80033fe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003400:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003404:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003408:	9309      	str	r3, [sp, #36]	; 0x24
 800340a:	f7ff b99e 	b.w	800274a <_vfprintf_r+0x302>
 800340e:	46c1      	mov	r9, r8
 8003410:	e594      	b.n	8002f3c <_vfprintf_r+0xaf4>
 8003412:	4621      	mov	r1, r4
 8003414:	461c      	mov	r4, r3
 8003416:	460b      	mov	r3, r1
 8003418:	3201      	adds	r2, #1
 800341a:	442c      	add	r4, r5
 800341c:	2a07      	cmp	r2, #7
 800341e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003422:	e9cb 3500 	strd	r3, r5, [fp]
 8003426:	f77f aa5e 	ble.w	80028e6 <_vfprintf_r+0x49e>
 800342a:	e5ee      	b.n	800300a <_vfprintf_r+0xbc2>
 800342c:	f018 0f10 	tst.w	r8, #16
 8003430:	f040 80f8 	bne.w	8003624 <_vfprintf_r+0x11dc>
 8003434:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003438:	f000 8351 	beq.w	8003ade <_vfprintf_r+0x1696>
 800343c:	9a05      	ldr	r2, [sp, #20]
 800343e:	801a      	strh	r2, [r3, #0]
 8003440:	4657      	mov	r7, sl
 8003442:	f7ff baa7 	b.w	8002994 <_vfprintf_r+0x54c>
 8003446:	aa2a      	add	r2, sp, #168	; 0xa8
 8003448:	9907      	ldr	r1, [sp, #28]
 800344a:	9803      	ldr	r0, [sp, #12]
 800344c:	f003 fb2a 	bl	8006aa4 <__sprint_r>
 8003450:	2800      	cmp	r0, #0
 8003452:	f47f ad71 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003456:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003458:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800345c:	f7ff b9f5 	b.w	800284a <_vfprintf_r+0x402>
 8003460:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003464:	4602      	mov	r2, r0
 8003466:	460b      	mov	r3, r1
 8003468:	f7fd fe4a 	bl	8001100 <__aeabi_dcmpun>
 800346c:	2800      	cmp	r0, #0
 800346e:	f040 8491 	bne.w	8003d94 <_vfprintf_r+0x194c>
 8003472:	2e61      	cmp	r6, #97	; 0x61
 8003474:	f000 8111 	beq.w	800369a <_vfprintf_r+0x1252>
 8003478:	2e41      	cmp	r6, #65	; 0x41
 800347a:	f000 8377 	beq.w	8003b6c <_vfprintf_r+0x1724>
 800347e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003482:	f026 0220 	bic.w	r2, r6, #32
 8003486:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800348a:	930e      	str	r3, [sp, #56]	; 0x38
 800348c:	9204      	str	r2, [sp, #16]
 800348e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003490:	f000 842d 	beq.w	8003cee <_vfprintf_r+0x18a6>
 8003494:	2a47      	cmp	r2, #71	; 0x47
 8003496:	f000 8424 	beq.w	8003ce2 <_vfprintf_r+0x189a>
 800349a:	2b00      	cmp	r3, #0
 800349c:	f2c0 82f9 	blt.w	8003a92 <_vfprintf_r+0x164a>
 80034a0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80034a4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034a8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034ac:	2e66      	cmp	r6, #102	; 0x66
 80034ae:	f000 83eb 	beq.w	8003c88 <_vfprintf_r+0x1840>
 80034b2:	2e46      	cmp	r6, #70	; 0x46
 80034b4:	f000 847e 	beq.w	8003db4 <_vfprintf_r+0x196c>
 80034b8:	9b04      	ldr	r3, [sp, #16]
 80034ba:	9803      	ldr	r0, [sp, #12]
 80034bc:	2b45      	cmp	r3, #69	; 0x45
 80034be:	bf0c      	ite	eq
 80034c0:	f109 0501 	addeq.w	r5, r9, #1
 80034c4:	464d      	movne	r5, r9
 80034c6:	aa28      	add	r2, sp, #160	; 0xa0
 80034c8:	ab25      	add	r3, sp, #148	; 0x94
 80034ca:	e9cd 3200 	strd	r3, r2, [sp]
 80034ce:	2102      	movs	r1, #2
 80034d0:	ab24      	add	r3, sp, #144	; 0x90
 80034d2:	462a      	mov	r2, r5
 80034d4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80034d8:	f000 fe3e 	bl	8004158 <_dtoa_r>
 80034dc:	2e67      	cmp	r6, #103	; 0x67
 80034de:	4607      	mov	r7, r0
 80034e0:	f040 849c 	bne.w	8003e1c <_vfprintf_r+0x19d4>
 80034e4:	f018 0f01 	tst.w	r8, #1
 80034e8:	f040 83f9 	bne.w	8003cde <_vfprintf_r+0x1896>
 80034ec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80034ee:	4640      	mov	r0, r8
 80034f0:	1bdb      	subs	r3, r3, r7
 80034f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80034f6:	9310      	str	r3, [sp, #64]	; 0x40
 80034f8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034fa:	9311      	str	r3, [sp, #68]	; 0x44
 80034fc:	9b04      	ldr	r3, [sp, #16]
 80034fe:	2b47      	cmp	r3, #71	; 0x47
 8003500:	f000 81e7 	beq.w	80038d2 <_vfprintf_r+0x148a>
 8003504:	9b04      	ldr	r3, [sp, #16]
 8003506:	2b46      	cmp	r3, #70	; 0x46
 8003508:	f000 8300 	beq.w	8003b0c <_vfprintf_r+0x16c4>
 800350c:	9904      	ldr	r1, [sp, #16]
 800350e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003510:	b2f2      	uxtb	r2, r6
 8003512:	2941      	cmp	r1, #65	; 0x41
 8003514:	bf08      	it	eq
 8003516:	320f      	addeq	r2, #15
 8003518:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800351c:	bf06      	itte	eq
 800351e:	b2d2      	uxtbeq	r2, r2
 8003520:	2101      	moveq	r1, #1
 8003522:	2100      	movne	r1, #0
 8003524:	2b00      	cmp	r3, #0
 8003526:	9324      	str	r3, [sp, #144]	; 0x90
 8003528:	bfb8      	it	lt
 800352a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800352c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003530:	bfba      	itte	lt
 8003532:	f1c3 0301 	rsblt	r3, r3, #1
 8003536:	222d      	movlt	r2, #45	; 0x2d
 8003538:	222b      	movge	r2, #43	; 0x2b
 800353a:	2b09      	cmp	r3, #9
 800353c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003540:	f300 83f9 	bgt.w	8003d36 <_vfprintf_r+0x18ee>
 8003544:	2900      	cmp	r1, #0
 8003546:	f040 8487 	bne.w	8003e58 <_vfprintf_r+0x1a10>
 800354a:	2230      	movs	r2, #48	; 0x30
 800354c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003550:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003554:	3330      	adds	r3, #48	; 0x30
 8003556:	7013      	strb	r3, [r2, #0]
 8003558:	1c53      	adds	r3, r2, #1
 800355a:	aa26      	add	r2, sp, #152	; 0x98
 800355c:	1a9b      	subs	r3, r3, r2
 800355e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003560:	9319      	str	r3, [sp, #100]	; 0x64
 8003562:	2a01      	cmp	r2, #1
 8003564:	4413      	add	r3, r2
 8003566:	9309      	str	r3, [sp, #36]	; 0x24
 8003568:	f340 8442 	ble.w	8003df0 <_vfprintf_r+0x19a8>
 800356c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800356e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003570:	4413      	add	r3, r2
 8003572:	9309      	str	r3, [sp, #36]	; 0x24
 8003574:	2300      	movs	r3, #0
 8003576:	930f      	str	r3, [sp, #60]	; 0x3c
 8003578:	9314      	str	r3, [sp, #80]	; 0x50
 800357a:	9311      	str	r3, [sp, #68]	; 0x44
 800357c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800357e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003582:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003586:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800358a:	9304      	str	r3, [sp, #16]
 800358c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800358e:	2b00      	cmp	r3, #0
 8003590:	f040 8275 	bne.w	8003a7e <_vfprintf_r+0x1636>
 8003594:	4699      	mov	r9, r3
 8003596:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800359a:	f7ff b8e2 	b.w	8002762 <_vfprintf_r+0x31a>
 800359e:	bf00      	nop
 80035a0:	08007198 	.word	0x08007198
 80035a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035a6:	49bd      	ldr	r1, [pc, #756]	; (800389c <_vfprintf_r+0x1454>)
 80035a8:	f8cb 1000 	str.w	r1, [fp]
 80035ac:	3201      	adds	r2, #1
 80035ae:	3401      	adds	r4, #1
 80035b0:	2101      	movs	r1, #1
 80035b2:	2a07      	cmp	r2, #7
 80035b4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035b8:	f8cb 1004 	str.w	r1, [fp, #4]
 80035bc:	dc60      	bgt.n	8003680 <_vfprintf_r+0x1238>
 80035be:	f10b 0b08 	add.w	fp, fp, #8
 80035c2:	b92b      	cbnz	r3, 80035d0 <_vfprintf_r+0x1188>
 80035c4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035c6:	b91a      	cbnz	r2, 80035d0 <_vfprintf_r+0x1188>
 80035c8:	f018 0f01 	tst.w	r8, #1
 80035cc:	f43f a98d 	beq.w	80028ea <_vfprintf_r+0x4a2>
 80035d0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035d2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035d4:	f8cb 1000 	str.w	r1, [fp]
 80035d8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035da:	f8cb 1004 	str.w	r1, [fp, #4]
 80035de:	3201      	adds	r2, #1
 80035e0:	440c      	add	r4, r1
 80035e2:	2a07      	cmp	r2, #7
 80035e4:	942c      	str	r4, [sp, #176]	; 0xb0
 80035e6:	922b      	str	r2, [sp, #172]	; 0xac
 80035e8:	f300 8282 	bgt.w	8003af0 <_vfprintf_r+0x16a8>
 80035ec:	f10b 0b08 	add.w	fp, fp, #8
 80035f0:	2b00      	cmp	r3, #0
 80035f2:	f2c0 82e7 	blt.w	8003bc4 <_vfprintf_r+0x177c>
 80035f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80035f8:	3201      	adds	r2, #1
 80035fa:	441c      	add	r4, r3
 80035fc:	2a07      	cmp	r2, #7
 80035fe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003602:	e9cb 7300 	strd	r7, r3, [fp]
 8003606:	f77f a96e 	ble.w	80028e6 <_vfprintf_r+0x49e>
 800360a:	e4fe      	b.n	800300a <_vfprintf_r+0xbc2>
 800360c:	aa2a      	add	r2, sp, #168	; 0xa8
 800360e:	9907      	ldr	r1, [sp, #28]
 8003610:	9803      	ldr	r0, [sp, #12]
 8003612:	f003 fa47 	bl	8006aa4 <__sprint_r>
 8003616:	2800      	cmp	r0, #0
 8003618:	f47f ac8e 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 800361c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003620:	f7ff bbf0 	b.w	8002e04 <_vfprintf_r+0x9bc>
 8003624:	9a05      	ldr	r2, [sp, #20]
 8003626:	601a      	str	r2, [r3, #0]
 8003628:	4657      	mov	r7, sl
 800362a:	f7ff b9b3 	b.w	8002994 <_vfprintf_r+0x54c>
 800362e:	8814      	ldrh	r4, [r2, #0]
 8003630:	9108      	str	r1, [sp, #32]
 8003632:	2500      	movs	r5, #0
 8003634:	2201      	movs	r2, #1
 8003636:	f7ff b9c8 	b.w	80029ca <_vfprintf_r+0x582>
 800363a:	8814      	ldrh	r4, [r2, #0]
 800363c:	9308      	str	r3, [sp, #32]
 800363e:	2500      	movs	r5, #0
 8003640:	f7ff ba14 	b.w	8002a6c <_vfprintf_r+0x624>
 8003644:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003648:	9208      	str	r2, [sp, #32]
 800364a:	17e5      	asrs	r5, r4, #31
 800364c:	4620      	mov	r0, r4
 800364e:	4629      	mov	r1, r5
 8003650:	f7ff b855 	b.w	80026fe <_vfprintf_r+0x2b6>
 8003654:	8814      	ldrh	r4, [r2, #0]
 8003656:	9308      	str	r3, [sp, #32]
 8003658:	2500      	movs	r5, #0
 800365a:	f7ff b825 	b.w	80026a8 <_vfprintf_r+0x260>
 800365e:	222d      	movs	r2, #45	; 0x2d
 8003660:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003664:	f7ff baa2 	b.w	8002bac <_vfprintf_r+0x764>
 8003668:	aa2a      	add	r2, sp, #168	; 0xa8
 800366a:	9907      	ldr	r1, [sp, #28]
 800366c:	9803      	ldr	r0, [sp, #12]
 800366e:	f003 fa19 	bl	8006aa4 <__sprint_r>
 8003672:	2800      	cmp	r0, #0
 8003674:	f47f ac60 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003678:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800367a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800367e:	e534      	b.n	80030ea <_vfprintf_r+0xca2>
 8003680:	aa2a      	add	r2, sp, #168	; 0xa8
 8003682:	9907      	ldr	r1, [sp, #28]
 8003684:	9803      	ldr	r0, [sp, #12]
 8003686:	f003 fa0d 	bl	8006aa4 <__sprint_r>
 800368a:	2800      	cmp	r0, #0
 800368c:	f47f ac54 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003690:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003692:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003694:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003698:	e793      	b.n	80035c2 <_vfprintf_r+0x117a>
 800369a:	2330      	movs	r3, #48	; 0x30
 800369c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036a0:	2378      	movs	r3, #120	; 0x78
 80036a2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80036a6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036aa:	f048 0402 	orr.w	r4, r8, #2
 80036ae:	f300 82b0 	bgt.w	8003c12 <_vfprintf_r+0x17ca>
 80036b2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036b6:	930e      	str	r3, [sp, #56]	; 0x38
 80036b8:	f026 0320 	bic.w	r3, r6, #32
 80036bc:	9304      	str	r3, [sp, #16]
 80036be:	2200      	movs	r2, #0
 80036c0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036c2:	920a      	str	r2, [sp, #40]	; 0x28
 80036c4:	46a0      	mov	r8, r4
 80036c6:	af3d      	add	r7, sp, #244	; 0xf4
 80036c8:	2b00      	cmp	r3, #0
 80036ca:	f2c0 81e3 	blt.w	8003a94 <_vfprintf_r+0x164c>
 80036ce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036d2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036d6:	2300      	movs	r3, #0
 80036d8:	930b      	str	r3, [sp, #44]	; 0x2c
 80036da:	2e61      	cmp	r6, #97	; 0x61
 80036dc:	f000 8255 	beq.w	8003b8a <_vfprintf_r+0x1742>
 80036e0:	2e41      	cmp	r6, #65	; 0x41
 80036e2:	f47f aee3 	bne.w	80034ac <_vfprintf_r+0x1064>
 80036e6:	a824      	add	r0, sp, #144	; 0x90
 80036e8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036ec:	f003 f8e2 	bl	80068b4 <frexp>
 80036f0:	2200      	movs	r2, #0
 80036f2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80036f6:	ec51 0b10 	vmov	r0, r1, d0
 80036fa:	f7fc ff3d 	bl	8000578 <__aeabi_dmul>
 80036fe:	2200      	movs	r2, #0
 8003700:	2300      	movs	r3, #0
 8003702:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003706:	f7fd f99f 	bl	8000a48 <__aeabi_dcmpeq>
 800370a:	2800      	cmp	r0, #0
 800370c:	f040 8305 	bne.w	8003d1a <_vfprintf_r+0x18d2>
 8003710:	4b63      	ldr	r3, [pc, #396]	; (80038a0 <_vfprintf_r+0x1458>)
 8003712:	9309      	str	r3, [sp, #36]	; 0x24
 8003714:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003718:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800371c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003720:	9721      	str	r7, [sp, #132]	; 0x84
 8003722:	46b9      	mov	r9, r7
 8003724:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003728:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800372c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003730:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003734:	e003      	b.n	800373e <_vfprintf_r+0x12f6>
 8003736:	f7fd f987 	bl	8000a48 <__aeabi_dcmpeq>
 800373a:	bb20      	cbnz	r0, 8003786 <_vfprintf_r+0x133e>
 800373c:	46a9      	mov	r9, r5
 800373e:	2200      	movs	r2, #0
 8003740:	4b58      	ldr	r3, [pc, #352]	; (80038a4 <_vfprintf_r+0x145c>)
 8003742:	4630      	mov	r0, r6
 8003744:	4639      	mov	r1, r7
 8003746:	f7fc ff17 	bl	8000578 <__aeabi_dmul>
 800374a:	460f      	mov	r7, r1
 800374c:	4606      	mov	r6, r0
 800374e:	f7fd fced 	bl	800112c <__aeabi_d2iz>
 8003752:	4680      	mov	r8, r0
 8003754:	f7fc fea6 	bl	80004a4 <__aeabi_i2d>
 8003758:	4602      	mov	r2, r0
 800375a:	460b      	mov	r3, r1
 800375c:	4630      	mov	r0, r6
 800375e:	4639      	mov	r1, r7
 8003760:	f7fc fd52 	bl	8000208 <__aeabi_dsub>
 8003764:	464d      	mov	r5, r9
 8003766:	f81a c008 	ldrb.w	ip, [sl, r8]
 800376a:	f805 cb01 	strb.w	ip, [r5], #1
 800376e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003772:	46a3      	mov	fp, r4
 8003774:	4606      	mov	r6, r0
 8003776:	460f      	mov	r7, r1
 8003778:	f04f 0200 	mov.w	r2, #0
 800377c:	f04f 0300 	mov.w	r3, #0
 8003780:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003784:	d1d7      	bne.n	8003736 <_vfprintf_r+0x12ee>
 8003786:	4630      	mov	r0, r6
 8003788:	4639      	mov	r1, r7
 800378a:	2200      	movs	r2, #0
 800378c:	4b46      	ldr	r3, [pc, #280]	; (80038a8 <_vfprintf_r+0x1460>)
 800378e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003792:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003794:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003798:	4644      	mov	r4, r8
 800379a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800379e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80037a2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80037a6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037aa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037ac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037b0:	f7fd f972 	bl	8000a98 <__aeabi_dcmpgt>
 80037b4:	2800      	cmp	r0, #0
 80037b6:	f040 8176 	bne.w	8003aa6 <_vfprintf_r+0x165e>
 80037ba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037be:	2200      	movs	r2, #0
 80037c0:	4b39      	ldr	r3, [pc, #228]	; (80038a8 <_vfprintf_r+0x1460>)
 80037c2:	f7fd f941 	bl	8000a48 <__aeabi_dcmpeq>
 80037c6:	b110      	cbz	r0, 80037ce <_vfprintf_r+0x1386>
 80037c8:	07e2      	lsls	r2, r4, #31
 80037ca:	f100 816c 	bmi.w	8003aa6 <_vfprintf_r+0x165e>
 80037ce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037d0:	2b00      	cmp	r3, #0
 80037d2:	db07      	blt.n	80037e4 <_vfprintf_r+0x139c>
 80037d4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037d6:	3301      	adds	r3, #1
 80037d8:	442b      	add	r3, r5
 80037da:	2230      	movs	r2, #48	; 0x30
 80037dc:	f805 2b01 	strb.w	r2, [r5], #1
 80037e0:	42ab      	cmp	r3, r5
 80037e2:	d1fb      	bne.n	80037dc <_vfprintf_r+0x1394>
 80037e4:	1beb      	subs	r3, r5, r7
 80037e6:	4640      	mov	r0, r8
 80037e8:	9310      	str	r3, [sp, #64]	; 0x40
 80037ea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037ee:	e683      	b.n	80034f8 <_vfprintf_r+0x10b0>
 80037f0:	f8cd 9010 	str.w	r9, [sp, #16]
 80037f4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80037f8:	9408      	str	r4, [sp, #32]
 80037fa:	4681      	mov	r9, r0
 80037fc:	900f      	str	r0, [sp, #60]	; 0x3c
 80037fe:	9014      	str	r0, [sp, #80]	; 0x50
 8003800:	9011      	str	r0, [sp, #68]	; 0x44
 8003802:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003806:	f7fe bfac 	b.w	8002762 <_vfprintf_r+0x31a>
 800380a:	aa2a      	add	r2, sp, #168	; 0xa8
 800380c:	9907      	ldr	r1, [sp, #28]
 800380e:	9803      	ldr	r0, [sp, #12]
 8003810:	f003 f948 	bl	8006aa4 <__sprint_r>
 8003814:	2800      	cmp	r0, #0
 8003816:	f47f ab8f 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 800381a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800381c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800381e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003822:	e511      	b.n	8003248 <_vfprintf_r+0xe00>
 8003824:	4252      	negs	r2, r2
 8003826:	9206      	str	r2, [sp, #24]
 8003828:	9308      	str	r3, [sp, #32]
 800382a:	f7ff b96d 	b.w	8002b08 <_vfprintf_r+0x6c0>
 800382e:	4614      	mov	r4, r2
 8003830:	4632      	mov	r2, r6
 8003832:	461e      	mov	r6, r3
 8003834:	4613      	mov	r3, r2
 8003836:	462a      	mov	r2, r5
 8003838:	3201      	adds	r2, #1
 800383a:	9209      	str	r2, [sp, #36]	; 0x24
 800383c:	f106 0208 	add.w	r2, r6, #8
 8003840:	e9c6 3900 	strd	r3, r9, [r6]
 8003844:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003846:	932b      	str	r3, [sp, #172]	; 0xac
 8003848:	444c      	add	r4, r9
 800384a:	2b07      	cmp	r3, #7
 800384c:	942c      	str	r4, [sp, #176]	; 0xb0
 800384e:	f73f acc3 	bgt.w	80031d8 <_vfprintf_r+0xd90>
 8003852:	3301      	adds	r3, #1
 8003854:	9309      	str	r3, [sp, #36]	; 0x24
 8003856:	f102 0b08 	add.w	fp, r2, #8
 800385a:	4616      	mov	r6, r2
 800385c:	f7ff bbca 	b.w	8002ff4 <_vfprintf_r+0xbac>
 8003860:	aa2a      	add	r2, sp, #168	; 0xa8
 8003862:	9907      	ldr	r1, [sp, #28]
 8003864:	9803      	ldr	r0, [sp, #12]
 8003866:	f003 f91d 	bl	8006aa4 <__sprint_r>
 800386a:	2800      	cmp	r0, #0
 800386c:	f47f ab64 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003870:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003872:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003876:	f7ff bade 	b.w	8002e36 <_vfprintf_r+0x9ee>
 800387a:	464b      	mov	r3, r9
 800387c:	2b06      	cmp	r3, #6
 800387e:	bf28      	it	cs
 8003880:	2306      	movcs	r3, #6
 8003882:	46b9      	mov	r9, r7
 8003884:	970f      	str	r7, [sp, #60]	; 0x3c
 8003886:	9714      	str	r7, [sp, #80]	; 0x50
 8003888:	9711      	str	r7, [sp, #68]	; 0x44
 800388a:	970a      	str	r7, [sp, #40]	; 0x28
 800388c:	463a      	mov	r2, r7
 800388e:	9304      	str	r3, [sp, #16]
 8003890:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003894:	4f05      	ldr	r7, [pc, #20]	; (80038ac <_vfprintf_r+0x1464>)
 8003896:	f7fe bf64 	b.w	8002762 <_vfprintf_r+0x31a>
 800389a:	bf00      	nop
 800389c:	08007184 	.word	0x08007184
 80038a0:	08007168 	.word	0x08007168
 80038a4:	40300000 	.word	0x40300000
 80038a8:	3fe00000 	.word	0x3fe00000
 80038ac:	0800717c 	.word	0x0800717c
 80038b0:	460c      	mov	r4, r1
 80038b2:	4639      	mov	r1, r7
 80038b4:	465f      	mov	r7, fp
 80038b6:	469b      	mov	fp, r3
 80038b8:	460b      	mov	r3, r1
 80038ba:	3201      	adds	r2, #1
 80038bc:	442c      	add	r4, r5
 80038be:	2a07      	cmp	r2, #7
 80038c0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038c4:	e9cb 3500 	strd	r3, r5, [fp]
 80038c8:	f73f aca5 	bgt.w	8003216 <_vfprintf_r+0xdce>
 80038cc:	f10b 0b08 	add.w	fp, fp, #8
 80038d0:	e4ac      	b.n	800322c <_vfprintf_r+0xde4>
 80038d2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038d4:	1cda      	adds	r2, r3, #3
 80038d6:	db02      	blt.n	80038de <_vfprintf_r+0x1496>
 80038d8:	4599      	cmp	r9, r3
 80038da:	f280 80b5 	bge.w	8003a48 <_vfprintf_r+0x1600>
 80038de:	3e02      	subs	r6, #2
 80038e0:	f026 0320 	bic.w	r3, r6, #32
 80038e4:	9304      	str	r3, [sp, #16]
 80038e6:	e611      	b.n	800350c <_vfprintf_r+0x10c4>
 80038e8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038ea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80038ee:	465a      	mov	r2, fp
 80038f0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80038f4:	18fb      	adds	r3, r7, r3
 80038f6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80038fa:	970c      	str	r7, [sp, #48]	; 0x30
 80038fc:	4eaf      	ldr	r6, [pc, #700]	; (8003bbc <_vfprintf_r+0x1774>)
 80038fe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003902:	9309      	str	r3, [sp, #36]	; 0x24
 8003904:	464f      	mov	r7, r9
 8003906:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800390a:	4621      	mov	r1, r4
 800390c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800390e:	2b00      	cmp	r3, #0
 8003910:	d05b      	beq.n	80039ca <_vfprintf_r+0x1582>
 8003912:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003914:	2b00      	cmp	r3, #0
 8003916:	d154      	bne.n	80039c2 <_vfprintf_r+0x157a>
 8003918:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800391a:	3b01      	subs	r3, #1
 800391c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003920:	9314      	str	r3, [sp, #80]	; 0x50
 8003922:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003924:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003926:	6010      	str	r0, [r2, #0]
 8003928:	3301      	adds	r3, #1
 800392a:	4459      	add	r1, fp
 800392c:	2b07      	cmp	r3, #7
 800392e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003930:	f8c2 b004 	str.w	fp, [r2, #4]
 8003934:	932b      	str	r3, [sp, #172]	; 0xac
 8003936:	dc68      	bgt.n	8003a0a <_vfprintf_r+0x15c2>
 8003938:	3208      	adds	r2, #8
 800393a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800393c:	f898 3000 	ldrb.w	r3, [r8]
 8003940:	1bc5      	subs	r5, r0, r7
 8003942:	429d      	cmp	r5, r3
 8003944:	bfa8      	it	ge
 8003946:	461d      	movge	r5, r3
 8003948:	2d00      	cmp	r5, #0
 800394a:	dd0b      	ble.n	8003964 <_vfprintf_r+0x151c>
 800394c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800394e:	6017      	str	r7, [r2, #0]
 8003950:	3301      	adds	r3, #1
 8003952:	4429      	add	r1, r5
 8003954:	2b07      	cmp	r3, #7
 8003956:	912c      	str	r1, [sp, #176]	; 0xb0
 8003958:	6055      	str	r5, [r2, #4]
 800395a:	932b      	str	r3, [sp, #172]	; 0xac
 800395c:	dc5e      	bgt.n	8003a1c <_vfprintf_r+0x15d4>
 800395e:	f898 3000 	ldrb.w	r3, [r8]
 8003962:	3208      	adds	r2, #8
 8003964:	2d00      	cmp	r5, #0
 8003966:	bfac      	ite	ge
 8003968:	1b5d      	subge	r5, r3, r5
 800396a:	461d      	movlt	r5, r3
 800396c:	2d00      	cmp	r5, #0
 800396e:	dd26      	ble.n	80039be <_vfprintf_r+0x1576>
 8003970:	2d10      	cmp	r5, #16
 8003972:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003974:	dd3c      	ble.n	80039f0 <_vfprintf_r+0x15a8>
 8003976:	2410      	movs	r4, #16
 8003978:	e003      	b.n	8003982 <_vfprintf_r+0x153a>
 800397a:	3208      	adds	r2, #8
 800397c:	3d10      	subs	r5, #16
 800397e:	2d10      	cmp	r5, #16
 8003980:	dd36      	ble.n	80039f0 <_vfprintf_r+0x15a8>
 8003982:	3001      	adds	r0, #1
 8003984:	3110      	adds	r1, #16
 8003986:	2807      	cmp	r0, #7
 8003988:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800398c:	e9c2 6400 	strd	r6, r4, [r2]
 8003990:	ddf3      	ble.n	800397a <_vfprintf_r+0x1532>
 8003992:	aa2a      	add	r2, sp, #168	; 0xa8
 8003994:	4651      	mov	r1, sl
 8003996:	4648      	mov	r0, r9
 8003998:	f003 f884 	bl	8006aa4 <__sprint_r>
 800399c:	2800      	cmp	r0, #0
 800399e:	d150      	bne.n	8003a42 <_vfprintf_r+0x15fa>
 80039a0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80039a4:	aa2d      	add	r2, sp, #180	; 0xb4
 80039a6:	e7e9      	b.n	800397c <_vfprintf_r+0x1534>
 80039a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039aa:	4651      	mov	r1, sl
 80039ac:	4648      	mov	r0, r9
 80039ae:	f003 f879 	bl	8006aa4 <__sprint_r>
 80039b2:	2800      	cmp	r0, #0
 80039b4:	d145      	bne.n	8003a42 <_vfprintf_r+0x15fa>
 80039b6:	f898 3000 	ldrb.w	r3, [r8]
 80039ba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039bc:	aa2d      	add	r2, sp, #180	; 0xb4
 80039be:	441f      	add	r7, r3
 80039c0:	e7a4      	b.n	800390c <_vfprintf_r+0x14c4>
 80039c2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039c4:	3b01      	subs	r3, #1
 80039c6:	930f      	str	r3, [sp, #60]	; 0x3c
 80039c8:	e7ab      	b.n	8003922 <_vfprintf_r+0x14da>
 80039ca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039cc:	2b00      	cmp	r3, #0
 80039ce:	d1f8      	bne.n	80039c2 <_vfprintf_r+0x157a>
 80039d0:	46b9      	mov	r9, r7
 80039d2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039d4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80039d6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039da:	18fb      	adds	r3, r7, r3
 80039dc:	4599      	cmp	r9, r3
 80039de:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80039e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039e6:	4693      	mov	fp, r2
 80039e8:	460c      	mov	r4, r1
 80039ea:	bf28      	it	cs
 80039ec:	4699      	movcs	r9, r3
 80039ee:	e424      	b.n	800323a <_vfprintf_r+0xdf2>
 80039f0:	3001      	adds	r0, #1
 80039f2:	4429      	add	r1, r5
 80039f4:	2807      	cmp	r0, #7
 80039f6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039fa:	e9c2 6500 	strd	r6, r5, [r2]
 80039fe:	dcd3      	bgt.n	80039a8 <_vfprintf_r+0x1560>
 8003a00:	f898 3000 	ldrb.w	r3, [r8]
 8003a04:	3208      	adds	r2, #8
 8003a06:	441f      	add	r7, r3
 8003a08:	e780      	b.n	800390c <_vfprintf_r+0x14c4>
 8003a0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a0c:	4651      	mov	r1, sl
 8003a0e:	4648      	mov	r0, r9
 8003a10:	f003 f848 	bl	8006aa4 <__sprint_r>
 8003a14:	b9a8      	cbnz	r0, 8003a42 <_vfprintf_r+0x15fa>
 8003a16:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a18:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a1a:	e78e      	b.n	800393a <_vfprintf_r+0x14f2>
 8003a1c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a1e:	4651      	mov	r1, sl
 8003a20:	4648      	mov	r0, r9
 8003a22:	f003 f83f 	bl	8006aa4 <__sprint_r>
 8003a26:	b960      	cbnz	r0, 8003a42 <_vfprintf_r+0x15fa>
 8003a28:	f898 3000 	ldrb.w	r3, [r8]
 8003a2c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a2e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a30:	e798      	b.n	8003964 <_vfprintf_r+0x151c>
 8003a32:	4638      	mov	r0, r7
 8003a34:	f7fd faa4 	bl	8000f80 <strlen>
 8003a38:	46a9      	mov	r9, r5
 8003a3a:	4603      	mov	r3, r0
 8003a3c:	9009      	str	r0, [sp, #36]	; 0x24
 8003a3e:	f7ff b8f4 	b.w	8002c2a <_vfprintf_r+0x7e2>
 8003a42:	46d1      	mov	r9, sl
 8003a44:	f7ff ba7a 	b.w	8002f3c <_vfprintf_r+0xaf4>
 8003a48:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a4a:	4619      	mov	r1, r3
 8003a4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a4e:	4299      	cmp	r1, r3
 8003a50:	f300 8082 	bgt.w	8003b58 <_vfprintf_r+0x1710>
 8003a54:	07c4      	lsls	r4, r0, #31
 8003a56:	f140 816b 	bpl.w	8003d30 <_vfprintf_r+0x18e8>
 8003a5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a5c:	4413      	add	r3, r2
 8003a5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a60:	0541      	lsls	r1, r0, #21
 8003a62:	d503      	bpl.n	8003a6c <_vfprintf_r+0x1624>
 8003a64:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a66:	2b00      	cmp	r3, #0
 8003a68:	f300 80e6 	bgt.w	8003c38 <_vfprintf_r+0x17f0>
 8003a6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a6e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a72:	9304      	str	r3, [sp, #16]
 8003a74:	2667      	movs	r6, #103	; 0x67
 8003a76:	2300      	movs	r3, #0
 8003a78:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a7a:	9314      	str	r3, [sp, #80]	; 0x50
 8003a7c:	e586      	b.n	800358c <_vfprintf_r+0x1144>
 8003a7e:	222d      	movs	r2, #45	; 0x2d
 8003a80:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a84:	f04f 0900 	mov.w	r9, #0
 8003a88:	f7fe be6c 	b.w	8002764 <_vfprintf_r+0x31c>
 8003a8c:	46a1      	mov	r9, r4
 8003a8e:	f7ff ba55 	b.w	8002f3c <_vfprintf_r+0xaf4>
 8003a92:	900a      	str	r0, [sp, #40]	; 0x28
 8003a94:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a98:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a9c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a9e:	232d      	movs	r3, #45	; 0x2d
 8003aa0:	911e      	str	r1, [sp, #120]	; 0x78
 8003aa2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003aa4:	e619      	b.n	80036da <_vfprintf_r+0x1292>
 8003aa6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003aa8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003aaa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ab0:	7bd9      	ldrb	r1, [r3, #15]
 8003ab2:	4291      	cmp	r1, r2
 8003ab4:	462b      	mov	r3, r5
 8003ab6:	d109      	bne.n	8003acc <_vfprintf_r+0x1684>
 8003ab8:	2030      	movs	r0, #48	; 0x30
 8003aba:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003abe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ac0:	1e5a      	subs	r2, r3, #1
 8003ac2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ac4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ac8:	4291      	cmp	r1, r2
 8003aca:	d0f6      	beq.n	8003aba <_vfprintf_r+0x1672>
 8003acc:	2a39      	cmp	r2, #57	; 0x39
 8003ace:	bf0b      	itete	eq
 8003ad0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003ad2:	3201      	addne	r2, #1
 8003ad4:	7a92      	ldrbeq	r2, [r2, #10]
 8003ad6:	b2d2      	uxtbne	r2, r2
 8003ad8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003adc:	e682      	b.n	80037e4 <_vfprintf_r+0x139c>
 8003ade:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003ae2:	f43f ad9f 	beq.w	8003624 <_vfprintf_r+0x11dc>
 8003ae6:	9a05      	ldr	r2, [sp, #20]
 8003ae8:	701a      	strb	r2, [r3, #0]
 8003aea:	4657      	mov	r7, sl
 8003aec:	f7fe bf52 	b.w	8002994 <_vfprintf_r+0x54c>
 8003af0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003af2:	9907      	ldr	r1, [sp, #28]
 8003af4:	9803      	ldr	r0, [sp, #12]
 8003af6:	f002 ffd5 	bl	8006aa4 <__sprint_r>
 8003afa:	2800      	cmp	r0, #0
 8003afc:	f47f aa1c 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003b00:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b02:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b06:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b0a:	e571      	b.n	80035f0 <_vfprintf_r+0x11a8>
 8003b0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b0e:	2b00      	cmp	r3, #0
 8003b10:	f340 8164 	ble.w	8003ddc <_vfprintf_r+0x1994>
 8003b14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b16:	f1b9 0f00 	cmp.w	r9, #0
 8003b1a:	f040 8103 	bne.w	8003d24 <_vfprintf_r+0x18dc>
 8003b1e:	07c6      	lsls	r6, r0, #31
 8003b20:	f100 8100 	bmi.w	8003d24 <_vfprintf_r+0x18dc>
 8003b24:	9309      	str	r3, [sp, #36]	; 0x24
 8003b26:	2666      	movs	r6, #102	; 0x66
 8003b28:	0543      	lsls	r3, r0, #21
 8003b2a:	f100 8086 	bmi.w	8003c3a <_vfprintf_r+0x17f2>
 8003b2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b30:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b34:	9304      	str	r3, [sp, #16]
 8003b36:	e79e      	b.n	8003a76 <_vfprintf_r+0x162e>
 8003b38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b3a:	9907      	ldr	r1, [sp, #28]
 8003b3c:	9803      	ldr	r0, [sp, #12]
 8003b3e:	f002 ffb1 	bl	8006aa4 <__sprint_r>
 8003b42:	2800      	cmp	r0, #0
 8003b44:	f47f a9f8 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003b48:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b4a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b4e:	1ad3      	subs	r3, r2, r3
 8003b50:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b54:	f7ff bb90 	b.w	8003278 <_vfprintf_r+0xe30>
 8003b58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b5c:	4413      	add	r3, r2
 8003b5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b60:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b62:	2b00      	cmp	r3, #0
 8003b64:	f340 8149 	ble.w	8003dfa <_vfprintf_r+0x19b2>
 8003b68:	2667      	movs	r6, #103	; 0x67
 8003b6a:	e7dd      	b.n	8003b28 <_vfprintf_r+0x16e0>
 8003b6c:	2330      	movs	r3, #48	; 0x30
 8003b6e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b72:	2358      	movs	r3, #88	; 0x58
 8003b74:	e595      	b.n	80036a2 <_vfprintf_r+0x125a>
 8003b76:	9803      	ldr	r0, [sp, #12]
 8003b78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b7a:	4649      	mov	r1, r9
 8003b7c:	f002 ff92 	bl	8006aa4 <__sprint_r>
 8003b80:	2800      	cmp	r0, #0
 8003b82:	f47f a9e0 	bne.w	8002f46 <_vfprintf_r+0xafe>
 8003b86:	f7fe bf0f 	b.w	80029a8 <_vfprintf_r+0x560>
 8003b8a:	a824      	add	r0, sp, #144	; 0x90
 8003b8c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b90:	f002 fe90 	bl	80068b4 <frexp>
 8003b94:	2200      	movs	r2, #0
 8003b96:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b9a:	ec51 0b10 	vmov	r0, r1, d0
 8003b9e:	f7fc fceb 	bl	8000578 <__aeabi_dmul>
 8003ba2:	2200      	movs	r2, #0
 8003ba4:	2300      	movs	r3, #0
 8003ba6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003baa:	f7fc ff4d 	bl	8000a48 <__aeabi_dcmpeq>
 8003bae:	b108      	cbz	r0, 8003bb4 <_vfprintf_r+0x176c>
 8003bb0:	2301      	movs	r3, #1
 8003bb2:	9324      	str	r3, [sp, #144]	; 0x90
 8003bb4:	4b02      	ldr	r3, [pc, #8]	; (8003bc0 <_vfprintf_r+0x1778>)
 8003bb6:	9309      	str	r3, [sp, #36]	; 0x24
 8003bb8:	e5ac      	b.n	8003714 <_vfprintf_r+0x12cc>
 8003bba:	bf00      	nop
 8003bbc:	08007198 	.word	0x08007198
 8003bc0:	08007154 	.word	0x08007154
 8003bc4:	425d      	negs	r5, r3
 8003bc6:	3310      	adds	r3, #16
 8003bc8:	4bb9      	ldr	r3, [pc, #740]	; (8003eb0 <_vfprintf_r+0x1a68>)
 8003bca:	f280 8097 	bge.w	8003cfc <_vfprintf_r+0x18b4>
 8003bce:	4619      	mov	r1, r3
 8003bd0:	2610      	movs	r6, #16
 8003bd2:	4623      	mov	r3, r4
 8003bd4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bd8:	460c      	mov	r4, r1
 8003bda:	e005      	b.n	8003be8 <_vfprintf_r+0x17a0>
 8003bdc:	f10b 0b08 	add.w	fp, fp, #8
 8003be0:	3d10      	subs	r5, #16
 8003be2:	2d10      	cmp	r5, #16
 8003be4:	f340 8087 	ble.w	8003cf6 <_vfprintf_r+0x18ae>
 8003be8:	3201      	adds	r2, #1
 8003bea:	3310      	adds	r3, #16
 8003bec:	2a07      	cmp	r2, #7
 8003bee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003bf2:	e9cb 4600 	strd	r4, r6, [fp]
 8003bf6:	ddf1      	ble.n	8003bdc <_vfprintf_r+0x1794>
 8003bf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bfa:	9907      	ldr	r1, [sp, #28]
 8003bfc:	4648      	mov	r0, r9
 8003bfe:	f002 ff51 	bl	8006aa4 <__sprint_r>
 8003c02:	2800      	cmp	r0, #0
 8003c04:	f47f a998 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003c08:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c0c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c10:	e7e6      	b.n	8003be0 <_vfprintf_r+0x1798>
 8003c12:	f109 0101 	add.w	r1, r9, #1
 8003c16:	9803      	ldr	r0, [sp, #12]
 8003c18:	f001 fe80 	bl	800591c <_malloc_r>
 8003c1c:	4607      	mov	r7, r0
 8003c1e:	2800      	cmp	r0, #0
 8003c20:	f000 813b 	beq.w	8003e9a <_vfprintf_r+0x1a52>
 8003c24:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c28:	930e      	str	r3, [sp, #56]	; 0x38
 8003c2a:	f026 0320 	bic.w	r3, r6, #32
 8003c2e:	9304      	str	r3, [sp, #16]
 8003c30:	46a0      	mov	r8, r4
 8003c32:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c34:	900a      	str	r0, [sp, #40]	; 0x28
 8003c36:	e547      	b.n	80036c8 <_vfprintf_r+0x1280>
 8003c38:	2667      	movs	r6, #103	; 0x67
 8003c3a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c3c:	2200      	movs	r2, #0
 8003c3e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c40:	9214      	str	r2, [sp, #80]	; 0x50
 8003c42:	7803      	ldrb	r3, [r0, #0]
 8003c44:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c46:	2bff      	cmp	r3, #255	; 0xff
 8003c48:	d00c      	beq.n	8003c64 <_vfprintf_r+0x181c>
 8003c4a:	4293      	cmp	r3, r2
 8003c4c:	da0a      	bge.n	8003c64 <_vfprintf_r+0x181c>
 8003c4e:	7841      	ldrb	r1, [r0, #1]
 8003c50:	1ad2      	subs	r2, r2, r3
 8003c52:	b1a9      	cbz	r1, 8003c80 <_vfprintf_r+0x1838>
 8003c54:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c56:	3301      	adds	r3, #1
 8003c58:	9314      	str	r3, [sp, #80]	; 0x50
 8003c5a:	460b      	mov	r3, r1
 8003c5c:	2bff      	cmp	r3, #255	; 0xff
 8003c5e:	f100 0001 	add.w	r0, r0, #1
 8003c62:	d1f2      	bne.n	8003c4a <_vfprintf_r+0x1802>
 8003c64:	9211      	str	r2, [sp, #68]	; 0x44
 8003c66:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c68:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c6a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c6c:	901a      	str	r0, [sp, #104]	; 0x68
 8003c6e:	4413      	add	r3, r2
 8003c70:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c72:	fb02 1303 	mla	r3, r2, r3, r1
 8003c76:	9309      	str	r3, [sp, #36]	; 0x24
 8003c78:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c7c:	9304      	str	r3, [sp, #16]
 8003c7e:	e485      	b.n	800358c <_vfprintf_r+0x1144>
 8003c80:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c82:	3101      	adds	r1, #1
 8003c84:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c86:	e7de      	b.n	8003c46 <_vfprintf_r+0x17fe>
 8003c88:	aa28      	add	r2, sp, #160	; 0xa0
 8003c8a:	ab25      	add	r3, sp, #148	; 0x94
 8003c8c:	e9cd 3200 	strd	r3, r2, [sp]
 8003c90:	2103      	movs	r1, #3
 8003c92:	ab24      	add	r3, sp, #144	; 0x90
 8003c94:	464a      	mov	r2, r9
 8003c96:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c9a:	9803      	ldr	r0, [sp, #12]
 8003c9c:	f000 fa5c 	bl	8004158 <_dtoa_r>
 8003ca0:	464d      	mov	r5, r9
 8003ca2:	4607      	mov	r7, r0
 8003ca4:	eb00 0409 	add.w	r4, r0, r9
 8003ca8:	783b      	ldrb	r3, [r7, #0]
 8003caa:	2b30      	cmp	r3, #48	; 0x30
 8003cac:	f000 80be 	beq.w	8003e2c <_vfprintf_r+0x19e4>
 8003cb0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003cb2:	442c      	add	r4, r5
 8003cb4:	2200      	movs	r2, #0
 8003cb6:	2300      	movs	r3, #0
 8003cb8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cbc:	f7fc fec4 	bl	8000a48 <__aeabi_dcmpeq>
 8003cc0:	b108      	cbz	r0, 8003cc6 <_vfprintf_r+0x187e>
 8003cc2:	4623      	mov	r3, r4
 8003cc4:	e413      	b.n	80034ee <_vfprintf_r+0x10a6>
 8003cc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cc8:	42a3      	cmp	r3, r4
 8003cca:	f4bf ac10 	bcs.w	80034ee <_vfprintf_r+0x10a6>
 8003cce:	2130      	movs	r1, #48	; 0x30
 8003cd0:	1c5a      	adds	r2, r3, #1
 8003cd2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003cd4:	7019      	strb	r1, [r3, #0]
 8003cd6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cd8:	429c      	cmp	r4, r3
 8003cda:	d8f9      	bhi.n	8003cd0 <_vfprintf_r+0x1888>
 8003cdc:	e407      	b.n	80034ee <_vfprintf_r+0x10a6>
 8003cde:	197c      	adds	r4, r7, r5
 8003ce0:	e7e8      	b.n	8003cb4 <_vfprintf_r+0x186c>
 8003ce2:	f1b9 0f00 	cmp.w	r9, #0
 8003ce6:	f000 8092 	beq.w	8003e0e <_vfprintf_r+0x19c6>
 8003cea:	900a      	str	r0, [sp, #40]	; 0x28
 8003cec:	e4ec      	b.n	80036c8 <_vfprintf_r+0x1280>
 8003cee:	900a      	str	r0, [sp, #40]	; 0x28
 8003cf0:	f04f 0906 	mov.w	r9, #6
 8003cf4:	e4e8      	b.n	80036c8 <_vfprintf_r+0x1280>
 8003cf6:	4621      	mov	r1, r4
 8003cf8:	461c      	mov	r4, r3
 8003cfa:	460b      	mov	r3, r1
 8003cfc:	3201      	adds	r2, #1
 8003cfe:	442c      	add	r4, r5
 8003d00:	2a07      	cmp	r2, #7
 8003d02:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d06:	e9cb 3500 	strd	r3, r5, [fp]
 8003d0a:	f300 80a9 	bgt.w	8003e60 <_vfprintf_r+0x1a18>
 8003d0e:	f10b 0b08 	add.w	fp, fp, #8
 8003d12:	e470      	b.n	80035f6 <_vfprintf_r+0x11ae>
 8003d14:	469a      	mov	sl, r3
 8003d16:	f7ff bb37 	b.w	8003388 <_vfprintf_r+0xf40>
 8003d1a:	2301      	movs	r3, #1
 8003d1c:	9324      	str	r3, [sp, #144]	; 0x90
 8003d1e:	4b65      	ldr	r3, [pc, #404]	; (8003eb4 <_vfprintf_r+0x1a6c>)
 8003d20:	9309      	str	r3, [sp, #36]	; 0x24
 8003d22:	e4f7      	b.n	8003714 <_vfprintf_r+0x12cc>
 8003d24:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d26:	4413      	add	r3, r2
 8003d28:	444b      	add	r3, r9
 8003d2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d2c:	2666      	movs	r6, #102	; 0x66
 8003d2e:	e6fb      	b.n	8003b28 <_vfprintf_r+0x16e0>
 8003d30:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d32:	9309      	str	r3, [sp, #36]	; 0x24
 8003d34:	e694      	b.n	8003a60 <_vfprintf_r+0x1618>
 8003d36:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d3a:	4664      	mov	r4, ip
 8003d3c:	4d5e      	ldr	r5, [pc, #376]	; (8003eb8 <_vfprintf_r+0x1a70>)
 8003d3e:	e000      	b.n	8003d42 <_vfprintf_r+0x18fa>
 8003d40:	4614      	mov	r4, r2
 8003d42:	fba5 1203 	umull	r1, r2, r5, r3
 8003d46:	08d2      	lsrs	r2, r2, #3
 8003d48:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d4c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d50:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d54:	4613      	mov	r3, r2
 8003d56:	2b09      	cmp	r3, #9
 8003d58:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d5c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d60:	dcee      	bgt.n	8003d40 <_vfprintf_r+0x18f8>
 8003d62:	3330      	adds	r3, #48	; 0x30
 8003d64:	3c02      	subs	r4, #2
 8003d66:	b2db      	uxtb	r3, r3
 8003d68:	45a4      	cmp	ip, r4
 8003d6a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d6e:	f240 8090 	bls.w	8003e92 <_vfprintf_r+0x1a4a>
 8003d72:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d76:	4611      	mov	r1, r2
 8003d78:	e001      	b.n	8003d7e <_vfprintf_r+0x1936>
 8003d7a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d7e:	f804 3b01 	strb.w	r3, [r4], #1
 8003d82:	458c      	cmp	ip, r1
 8003d84:	d1f9      	bne.n	8003d7a <_vfprintf_r+0x1932>
 8003d86:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d88:	1a9b      	subs	r3, r3, r2
 8003d8a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d8e:	4413      	add	r3, r2
 8003d90:	f7ff bbe3 	b.w	800355a <_vfprintf_r+0x1112>
 8003d94:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d96:	4f49      	ldr	r7, [pc, #292]	; (8003ebc <_vfprintf_r+0x1a74>)
 8003d98:	2b00      	cmp	r3, #0
 8003d9a:	bfb6      	itet	lt
 8003d9c:	222d      	movlt	r2, #45	; 0x2d
 8003d9e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003da2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003da6:	4b46      	ldr	r3, [pc, #280]	; (8003ec0 <_vfprintf_r+0x1a78>)
 8003da8:	f7fe bf02 	b.w	8002bb0 <_vfprintf_r+0x768>
 8003dac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003db0:	f7ff b8c9 	b.w	8002f46 <_vfprintf_r+0xafe>
 8003db4:	aa28      	add	r2, sp, #160	; 0xa0
 8003db6:	ab25      	add	r3, sp, #148	; 0x94
 8003db8:	e9cd 3200 	strd	r3, r2, [sp]
 8003dbc:	2103      	movs	r1, #3
 8003dbe:	ab24      	add	r3, sp, #144	; 0x90
 8003dc0:	464a      	mov	r2, r9
 8003dc2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003dc6:	9803      	ldr	r0, [sp, #12]
 8003dc8:	f000 f9c6 	bl	8004158 <_dtoa_r>
 8003dcc:	464d      	mov	r5, r9
 8003dce:	4607      	mov	r7, r0
 8003dd0:	2e46      	cmp	r6, #70	; 0x46
 8003dd2:	eb07 0405 	add.w	r4, r7, r5
 8003dd6:	f43f af67 	beq.w	8003ca8 <_vfprintf_r+0x1860>
 8003dda:	e76b      	b.n	8003cb4 <_vfprintf_r+0x186c>
 8003ddc:	f1b9 0f00 	cmp.w	r9, #0
 8003de0:	d131      	bne.n	8003e46 <_vfprintf_r+0x19fe>
 8003de2:	07c5      	lsls	r5, r0, #31
 8003de4:	d42f      	bmi.n	8003e46 <_vfprintf_r+0x19fe>
 8003de6:	2301      	movs	r3, #1
 8003de8:	9304      	str	r3, [sp, #16]
 8003dea:	9309      	str	r3, [sp, #36]	; 0x24
 8003dec:	2666      	movs	r6, #102	; 0x66
 8003dee:	e642      	b.n	8003a76 <_vfprintf_r+0x162e>
 8003df0:	07c3      	lsls	r3, r0, #31
 8003df2:	f57f abbf 	bpl.w	8003574 <_vfprintf_r+0x112c>
 8003df6:	f7ff bbb9 	b.w	800356c <_vfprintf_r+0x1124>
 8003dfa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003dfc:	f1c3 0301 	rsb	r3, r3, #1
 8003e00:	441a      	add	r2, r3
 8003e02:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e06:	9209      	str	r2, [sp, #36]	; 0x24
 8003e08:	9304      	str	r3, [sp, #16]
 8003e0a:	2667      	movs	r6, #103	; 0x67
 8003e0c:	e633      	b.n	8003a76 <_vfprintf_r+0x162e>
 8003e0e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e12:	f04f 0901 	mov.w	r9, #1
 8003e16:	e457      	b.n	80036c8 <_vfprintf_r+0x1280>
 8003e18:	465a      	mov	r2, fp
 8003e1a:	e511      	b.n	8003840 <_vfprintf_r+0x13f8>
 8003e1c:	2e47      	cmp	r6, #71	; 0x47
 8003e1e:	f47f af5e 	bne.w	8003cde <_vfprintf_r+0x1896>
 8003e22:	f018 0f01 	tst.w	r8, #1
 8003e26:	f43f ab61 	beq.w	80034ec <_vfprintf_r+0x10a4>
 8003e2a:	e7d1      	b.n	8003dd0 <_vfprintf_r+0x1988>
 8003e2c:	2200      	movs	r2, #0
 8003e2e:	2300      	movs	r3, #0
 8003e30:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e34:	f7fc fe08 	bl	8000a48 <__aeabi_dcmpeq>
 8003e38:	2800      	cmp	r0, #0
 8003e3a:	f47f af39 	bne.w	8003cb0 <_vfprintf_r+0x1868>
 8003e3e:	f1c5 0501 	rsb	r5, r5, #1
 8003e42:	9524      	str	r5, [sp, #144]	; 0x90
 8003e44:	e735      	b.n	8003cb2 <_vfprintf_r+0x186a>
 8003e46:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e48:	3301      	adds	r3, #1
 8003e4a:	444b      	add	r3, r9
 8003e4c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e4e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e52:	9304      	str	r3, [sp, #16]
 8003e54:	2666      	movs	r6, #102	; 0x66
 8003e56:	e60e      	b.n	8003a76 <_vfprintf_r+0x162e>
 8003e58:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e5c:	f7ff bb7a 	b.w	8003554 <_vfprintf_r+0x110c>
 8003e60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e62:	9907      	ldr	r1, [sp, #28]
 8003e64:	9803      	ldr	r0, [sp, #12]
 8003e66:	f002 fe1d 	bl	8006aa4 <__sprint_r>
 8003e6a:	2800      	cmp	r0, #0
 8003e6c:	f47f a864 	bne.w	8002f38 <_vfprintf_r+0xaf0>
 8003e70:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e74:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e78:	f7ff bbbd 	b.w	80035f6 <_vfprintf_r+0x11ae>
 8003e7c:	9908      	ldr	r1, [sp, #32]
 8003e7e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e82:	680b      	ldr	r3, [r1, #0]
 8003e84:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e88:	1d0b      	adds	r3, r1, #4
 8003e8a:	4692      	mov	sl, r2
 8003e8c:	9308      	str	r3, [sp, #32]
 8003e8e:	f7fe bb59 	b.w	8002544 <_vfprintf_r+0xfc>
 8003e92:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e96:	f7ff bb60 	b.w	800355a <_vfprintf_r+0x1112>
 8003e9a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e9e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003ea2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ea6:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003eaa:	f7ff b84c 	b.w	8002f46 <_vfprintf_r+0xafe>
 8003eae:	bf00      	nop
 8003eb0:	08007198 	.word	0x08007198
 8003eb4:	08007168 	.word	0x08007168
 8003eb8:	cccccccd 	.word	0xcccccccd
 8003ebc:	08007150 	.word	0x08007150
 8003ec0:	0800714c 	.word	0x0800714c

08003ec4 <__sbprintf>:
 8003ec4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003ec8:	460c      	mov	r4, r1
 8003eca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003ece:	8989      	ldrh	r1, [r1, #12]
 8003ed0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003ed2:	89e5      	ldrh	r5, [r4, #14]
 8003ed4:	9619      	str	r6, [sp, #100]	; 0x64
 8003ed6:	f021 0102 	bic.w	r1, r1, #2
 8003eda:	4606      	mov	r6, r0
 8003edc:	69e0      	ldr	r0, [r4, #28]
 8003ede:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003ee2:	4617      	mov	r7, r2
 8003ee4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003ee8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003eea:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003eee:	4698      	mov	r8, r3
 8003ef0:	ad1a      	add	r5, sp, #104	; 0x68
 8003ef2:	2300      	movs	r3, #0
 8003ef4:	9007      	str	r0, [sp, #28]
 8003ef6:	a816      	add	r0, sp, #88	; 0x58
 8003ef8:	9209      	str	r2, [sp, #36]	; 0x24
 8003efa:	9306      	str	r3, [sp, #24]
 8003efc:	9500      	str	r5, [sp, #0]
 8003efe:	9504      	str	r5, [sp, #16]
 8003f00:	9102      	str	r1, [sp, #8]
 8003f02:	9105      	str	r1, [sp, #20]
 8003f04:	f001 fc8a 	bl	800581c <__retarget_lock_init_recursive>
 8003f08:	4643      	mov	r3, r8
 8003f0a:	463a      	mov	r2, r7
 8003f0c:	4669      	mov	r1, sp
 8003f0e:	4630      	mov	r0, r6
 8003f10:	f7fe fa9a 	bl	8002448 <_vfprintf_r>
 8003f14:	1e05      	subs	r5, r0, #0
 8003f16:	db07      	blt.n	8003f28 <__sbprintf+0x64>
 8003f18:	4630      	mov	r0, r6
 8003f1a:	4669      	mov	r1, sp
 8003f1c:	f001 f8d6 	bl	80050cc <_fflush_r>
 8003f20:	2800      	cmp	r0, #0
 8003f22:	bf18      	it	ne
 8003f24:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f28:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f2c:	065b      	lsls	r3, r3, #25
 8003f2e:	d503      	bpl.n	8003f38 <__sbprintf+0x74>
 8003f30:	89a3      	ldrh	r3, [r4, #12]
 8003f32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f36:	81a3      	strh	r3, [r4, #12]
 8003f38:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f3a:	f001 fc71 	bl	8005820 <__retarget_lock_close_recursive>
 8003f3e:	4628      	mov	r0, r5
 8003f40:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f44:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f48 <__swsetup_r>:
 8003f48:	b538      	push	{r3, r4, r5, lr}
 8003f4a:	4b31      	ldr	r3, [pc, #196]	; (8004010 <__swsetup_r+0xc8>)
 8003f4c:	681b      	ldr	r3, [r3, #0]
 8003f4e:	4605      	mov	r5, r0
 8003f50:	460c      	mov	r4, r1
 8003f52:	b113      	cbz	r3, 8003f5a <__swsetup_r+0x12>
 8003f54:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f56:	2a00      	cmp	r2, #0
 8003f58:	d03a      	beq.n	8003fd0 <__swsetup_r+0x88>
 8003f5a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f5e:	b293      	uxth	r3, r2
 8003f60:	0718      	lsls	r0, r3, #28
 8003f62:	d50c      	bpl.n	8003f7e <__swsetup_r+0x36>
 8003f64:	6920      	ldr	r0, [r4, #16]
 8003f66:	b1a8      	cbz	r0, 8003f94 <__swsetup_r+0x4c>
 8003f68:	f013 0201 	ands.w	r2, r3, #1
 8003f6c:	d020      	beq.n	8003fb0 <__swsetup_r+0x68>
 8003f6e:	6963      	ldr	r3, [r4, #20]
 8003f70:	2200      	movs	r2, #0
 8003f72:	425b      	negs	r3, r3
 8003f74:	61a3      	str	r3, [r4, #24]
 8003f76:	60a2      	str	r2, [r4, #8]
 8003f78:	b300      	cbz	r0, 8003fbc <__swsetup_r+0x74>
 8003f7a:	2000      	movs	r0, #0
 8003f7c:	bd38      	pop	{r3, r4, r5, pc}
 8003f7e:	06d9      	lsls	r1, r3, #27
 8003f80:	d53e      	bpl.n	8004000 <__swsetup_r+0xb8>
 8003f82:	0758      	lsls	r0, r3, #29
 8003f84:	d428      	bmi.n	8003fd8 <__swsetup_r+0x90>
 8003f86:	6920      	ldr	r0, [r4, #16]
 8003f88:	f042 0308 	orr.w	r3, r2, #8
 8003f8c:	81a3      	strh	r3, [r4, #12]
 8003f8e:	b29b      	uxth	r3, r3
 8003f90:	2800      	cmp	r0, #0
 8003f92:	d1e9      	bne.n	8003f68 <__swsetup_r+0x20>
 8003f94:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f98:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f9c:	d0e4      	beq.n	8003f68 <__swsetup_r+0x20>
 8003f9e:	4628      	mov	r0, r5
 8003fa0:	4621      	mov	r1, r4
 8003fa2:	f001 fc71 	bl	8005888 <__smakebuf_r>
 8003fa6:	89a3      	ldrh	r3, [r4, #12]
 8003fa8:	6920      	ldr	r0, [r4, #16]
 8003faa:	f013 0201 	ands.w	r2, r3, #1
 8003fae:	d1de      	bne.n	8003f6e <__swsetup_r+0x26>
 8003fb0:	0799      	lsls	r1, r3, #30
 8003fb2:	bf58      	it	pl
 8003fb4:	6962      	ldrpl	r2, [r4, #20]
 8003fb6:	60a2      	str	r2, [r4, #8]
 8003fb8:	2800      	cmp	r0, #0
 8003fba:	d1de      	bne.n	8003f7a <__swsetup_r+0x32>
 8003fbc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003fc0:	061a      	lsls	r2, r3, #24
 8003fc2:	d5db      	bpl.n	8003f7c <__swsetup_r+0x34>
 8003fc4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fc8:	81a3      	strh	r3, [r4, #12]
 8003fca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fce:	bd38      	pop	{r3, r4, r5, pc}
 8003fd0:	4618      	mov	r0, r3
 8003fd2:	f001 f8d7 	bl	8005184 <__sinit>
 8003fd6:	e7c0      	b.n	8003f5a <__swsetup_r+0x12>
 8003fd8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003fda:	b151      	cbz	r1, 8003ff2 <__swsetup_r+0xaa>
 8003fdc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003fe0:	4299      	cmp	r1, r3
 8003fe2:	d004      	beq.n	8003fee <__swsetup_r+0xa6>
 8003fe4:	4628      	mov	r0, r5
 8003fe6:	f001 f96f 	bl	80052c8 <_free_r>
 8003fea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fee:	2300      	movs	r3, #0
 8003ff0:	6323      	str	r3, [r4, #48]	; 0x30
 8003ff2:	2300      	movs	r3, #0
 8003ff4:	6920      	ldr	r0, [r4, #16]
 8003ff6:	6063      	str	r3, [r4, #4]
 8003ff8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003ffc:	6020      	str	r0, [r4, #0]
 8003ffe:	e7c3      	b.n	8003f88 <__swsetup_r+0x40>
 8004000:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004004:	2309      	movs	r3, #9
 8004006:	602b      	str	r3, [r5, #0]
 8004008:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800400c:	81a2      	strh	r2, [r4, #12]
 800400e:	bd38      	pop	{r3, r4, r5, pc}
 8004010:	20000018 	.word	0x20000018

08004014 <register_fini>:
 8004014:	4b02      	ldr	r3, [pc, #8]	; (8004020 <register_fini+0xc>)
 8004016:	b113      	cbz	r3, 800401e <register_fini+0xa>
 8004018:	4802      	ldr	r0, [pc, #8]	; (8004024 <register_fini+0x10>)
 800401a:	f000 b805 	b.w	8004028 <atexit>
 800401e:	4770      	bx	lr
 8004020:	00000000 	.word	0x00000000
 8004024:	080051f5 	.word	0x080051f5

08004028 <atexit>:
 8004028:	2300      	movs	r3, #0
 800402a:	4601      	mov	r1, r0
 800402c:	461a      	mov	r2, r3
 800402e:	4618      	mov	r0, r3
 8004030:	f002 bd58 	b.w	8006ae4 <__register_exitproc>

08004034 <quorem>:
 8004034:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004038:	6903      	ldr	r3, [r0, #16]
 800403a:	690f      	ldr	r7, [r1, #16]
 800403c:	42bb      	cmp	r3, r7
 800403e:	b083      	sub	sp, #12
 8004040:	f2c0 8086 	blt.w	8004150 <quorem+0x11c>
 8004044:	3f01      	subs	r7, #1
 8004046:	f101 0914 	add.w	r9, r1, #20
 800404a:	f100 0a14 	add.w	sl, r0, #20
 800404e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004052:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004056:	00bc      	lsls	r4, r7, #2
 8004058:	3201      	adds	r2, #1
 800405a:	fbb3 f8f2 	udiv	r8, r3, r2
 800405e:	eb0a 0304 	add.w	r3, sl, r4
 8004062:	9400      	str	r4, [sp, #0]
 8004064:	eb09 0b04 	add.w	fp, r9, r4
 8004068:	9301      	str	r3, [sp, #4]
 800406a:	f1b8 0f00 	cmp.w	r8, #0
 800406e:	d038      	beq.n	80040e2 <quorem+0xae>
 8004070:	2500      	movs	r5, #0
 8004072:	462e      	mov	r6, r5
 8004074:	46ce      	mov	lr, r9
 8004076:	46d4      	mov	ip, sl
 8004078:	f85e 4b04 	ldr.w	r4, [lr], #4
 800407c:	f8dc 3000 	ldr.w	r3, [ip]
 8004080:	b2a2      	uxth	r2, r4
 8004082:	fb08 5502 	mla	r5, r8, r2, r5
 8004086:	0c22      	lsrs	r2, r4, #16
 8004088:	0c2c      	lsrs	r4, r5, #16
 800408a:	fb08 4202 	mla	r2, r8, r2, r4
 800408e:	b2ad      	uxth	r5, r5
 8004090:	1b75      	subs	r5, r6, r5
 8004092:	b296      	uxth	r6, r2
 8004094:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004098:	fa15 f383 	uxtah	r3, r5, r3
 800409c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80040a0:	b29b      	uxth	r3, r3
 80040a2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80040a6:	45f3      	cmp	fp, lr
 80040a8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040ac:	f84c 3b04 	str.w	r3, [ip], #4
 80040b0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040b4:	d2e0      	bcs.n	8004078 <quorem+0x44>
 80040b6:	9b00      	ldr	r3, [sp, #0]
 80040b8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040bc:	b98b      	cbnz	r3, 80040e2 <quorem+0xae>
 80040be:	9a01      	ldr	r2, [sp, #4]
 80040c0:	1f13      	subs	r3, r2, #4
 80040c2:	459a      	cmp	sl, r3
 80040c4:	d20c      	bcs.n	80040e0 <quorem+0xac>
 80040c6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80040ca:	b94b      	cbnz	r3, 80040e0 <quorem+0xac>
 80040cc:	f1a2 0308 	sub.w	r3, r2, #8
 80040d0:	e002      	b.n	80040d8 <quorem+0xa4>
 80040d2:	681a      	ldr	r2, [r3, #0]
 80040d4:	3b04      	subs	r3, #4
 80040d6:	b91a      	cbnz	r2, 80040e0 <quorem+0xac>
 80040d8:	459a      	cmp	sl, r3
 80040da:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040de:	d3f8      	bcc.n	80040d2 <quorem+0x9e>
 80040e0:	6107      	str	r7, [r0, #16]
 80040e2:	4604      	mov	r4, r0
 80040e4:	f002 f944 	bl	8006370 <__mcmp>
 80040e8:	2800      	cmp	r0, #0
 80040ea:	db2d      	blt.n	8004148 <quorem+0x114>
 80040ec:	f108 0801 	add.w	r8, r8, #1
 80040f0:	4655      	mov	r5, sl
 80040f2:	2300      	movs	r3, #0
 80040f4:	f859 1b04 	ldr.w	r1, [r9], #4
 80040f8:	6828      	ldr	r0, [r5, #0]
 80040fa:	b28a      	uxth	r2, r1
 80040fc:	1a9a      	subs	r2, r3, r2
 80040fe:	0c0b      	lsrs	r3, r1, #16
 8004100:	fa12 f280 	uxtah	r2, r2, r0
 8004104:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004108:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800410c:	b292      	uxth	r2, r2
 800410e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004112:	45cb      	cmp	fp, r9
 8004114:	f845 2b04 	str.w	r2, [r5], #4
 8004118:	ea4f 4323 	mov.w	r3, r3, asr #16
 800411c:	d2ea      	bcs.n	80040f4 <quorem+0xc0>
 800411e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004122:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004126:	b97a      	cbnz	r2, 8004148 <quorem+0x114>
 8004128:	1f1a      	subs	r2, r3, #4
 800412a:	4592      	cmp	sl, r2
 800412c:	d20b      	bcs.n	8004146 <quorem+0x112>
 800412e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004132:	b942      	cbnz	r2, 8004146 <quorem+0x112>
 8004134:	3b08      	subs	r3, #8
 8004136:	e002      	b.n	800413e <quorem+0x10a>
 8004138:	681a      	ldr	r2, [r3, #0]
 800413a:	3b04      	subs	r3, #4
 800413c:	b91a      	cbnz	r2, 8004146 <quorem+0x112>
 800413e:	459a      	cmp	sl, r3
 8004140:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004144:	d3f8      	bcc.n	8004138 <quorem+0x104>
 8004146:	6127      	str	r7, [r4, #16]
 8004148:	4640      	mov	r0, r8
 800414a:	b003      	add	sp, #12
 800414c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004150:	2000      	movs	r0, #0
 8004152:	b003      	add	sp, #12
 8004154:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004158 <_dtoa_r>:
 8004158:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800415c:	ec55 4b10 	vmov	r4, r5, d0
 8004160:	b09b      	sub	sp, #108	; 0x6c
 8004162:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004164:	9102      	str	r1, [sp, #8]
 8004166:	4681      	mov	r9, r0
 8004168:	9207      	str	r2, [sp, #28]
 800416a:	9305      	str	r3, [sp, #20]
 800416c:	e9cd 4500 	strd	r4, r5, [sp]
 8004170:	b156      	cbz	r6, 8004188 <_dtoa_r+0x30>
 8004172:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004174:	6072      	str	r2, [r6, #4]
 8004176:	2301      	movs	r3, #1
 8004178:	4093      	lsls	r3, r2
 800417a:	60b3      	str	r3, [r6, #8]
 800417c:	4631      	mov	r1, r6
 800417e:	f001 ff07 	bl	8005f90 <_Bfree>
 8004182:	2300      	movs	r3, #0
 8004184:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004188:	f1b5 0800 	subs.w	r8, r5, #0
 800418c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800418e:	bfb4      	ite	lt
 8004190:	2301      	movlt	r3, #1
 8004192:	2300      	movge	r3, #0
 8004194:	6013      	str	r3, [r2, #0]
 8004196:	4b76      	ldr	r3, [pc, #472]	; (8004370 <_dtoa_r+0x218>)
 8004198:	bfbc      	itt	lt
 800419a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800419e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80041a2:	ea33 0308 	bics.w	r3, r3, r8
 80041a6:	f000 80a6 	beq.w	80042f6 <_dtoa_r+0x19e>
 80041aa:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041ae:	2200      	movs	r2, #0
 80041b0:	2300      	movs	r3, #0
 80041b2:	4630      	mov	r0, r6
 80041b4:	4639      	mov	r1, r7
 80041b6:	f7fc fc47 	bl	8000a48 <__aeabi_dcmpeq>
 80041ba:	4605      	mov	r5, r0
 80041bc:	b178      	cbz	r0, 80041de <_dtoa_r+0x86>
 80041be:	9a05      	ldr	r2, [sp, #20]
 80041c0:	2301      	movs	r3, #1
 80041c2:	6013      	str	r3, [r2, #0]
 80041c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041c6:	2b00      	cmp	r3, #0
 80041c8:	f000 80c0 	beq.w	800434c <_dtoa_r+0x1f4>
 80041cc:	4b69      	ldr	r3, [pc, #420]	; (8004374 <_dtoa_r+0x21c>)
 80041ce:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041d0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80041d4:	6013      	str	r3, [r2, #0]
 80041d6:	4658      	mov	r0, fp
 80041d8:	b01b      	add	sp, #108	; 0x6c
 80041da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041de:	aa18      	add	r2, sp, #96	; 0x60
 80041e0:	a919      	add	r1, sp, #100	; 0x64
 80041e2:	ec47 6b10 	vmov	d0, r6, r7
 80041e6:	4648      	mov	r0, r9
 80041e8:	f002 f954 	bl	8006494 <__d2b>
 80041ec:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80041f0:	4682      	mov	sl, r0
 80041f2:	f040 80a0 	bne.w	8004336 <_dtoa_r+0x1de>
 80041f6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80041fa:	442c      	add	r4, r5
 80041fc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004200:	2b20      	cmp	r3, #32
 8004202:	f340 842c 	ble.w	8004a5e <_dtoa_r+0x906>
 8004206:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800420a:	fa08 f803 	lsl.w	r8, r8, r3
 800420e:	9b00      	ldr	r3, [sp, #0]
 8004210:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004214:	fa23 f000 	lsr.w	r0, r3, r0
 8004218:	ea48 0000 	orr.w	r0, r8, r0
 800421c:	f7fc f932 	bl	8000484 <__aeabi_ui2d>
 8004220:	2301      	movs	r3, #1
 8004222:	4606      	mov	r6, r0
 8004224:	3c01      	subs	r4, #1
 8004226:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800422a:	930f      	str	r3, [sp, #60]	; 0x3c
 800422c:	4630      	mov	r0, r6
 800422e:	4639      	mov	r1, r7
 8004230:	2200      	movs	r2, #0
 8004232:	4b51      	ldr	r3, [pc, #324]	; (8004378 <_dtoa_r+0x220>)
 8004234:	f7fb ffe8 	bl	8000208 <__aeabi_dsub>
 8004238:	a347      	add	r3, pc, #284	; (adr r3, 8004358 <_dtoa_r+0x200>)
 800423a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800423e:	f7fc f99b 	bl	8000578 <__aeabi_dmul>
 8004242:	a347      	add	r3, pc, #284	; (adr r3, 8004360 <_dtoa_r+0x208>)
 8004244:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004248:	f7fb ffe0 	bl	800020c <__adddf3>
 800424c:	4606      	mov	r6, r0
 800424e:	4620      	mov	r0, r4
 8004250:	460f      	mov	r7, r1
 8004252:	f7fc f927 	bl	80004a4 <__aeabi_i2d>
 8004256:	a344      	add	r3, pc, #272	; (adr r3, 8004368 <_dtoa_r+0x210>)
 8004258:	e9d3 2300 	ldrd	r2, r3, [r3]
 800425c:	f7fc f98c 	bl	8000578 <__aeabi_dmul>
 8004260:	4602      	mov	r2, r0
 8004262:	460b      	mov	r3, r1
 8004264:	4630      	mov	r0, r6
 8004266:	4639      	mov	r1, r7
 8004268:	f7fb ffd0 	bl	800020c <__adddf3>
 800426c:	4606      	mov	r6, r0
 800426e:	460f      	mov	r7, r1
 8004270:	f7fc ff5c 	bl	800112c <__aeabi_d2iz>
 8004274:	2200      	movs	r2, #0
 8004276:	9006      	str	r0, [sp, #24]
 8004278:	2300      	movs	r3, #0
 800427a:	4630      	mov	r0, r6
 800427c:	4639      	mov	r1, r7
 800427e:	f7fc fbed 	bl	8000a5c <__aeabi_dcmplt>
 8004282:	2800      	cmp	r0, #0
 8004284:	f040 8273 	bne.w	800476e <_dtoa_r+0x616>
 8004288:	9e06      	ldr	r6, [sp, #24]
 800428a:	2e16      	cmp	r6, #22
 800428c:	f200 825d 	bhi.w	800474a <_dtoa_r+0x5f2>
 8004290:	4b3a      	ldr	r3, [pc, #232]	; (800437c <_dtoa_r+0x224>)
 8004292:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004296:	e9d3 0100 	ldrd	r0, r1, [r3]
 800429a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800429e:	f7fc fbfb 	bl	8000a98 <__aeabi_dcmpgt>
 80042a2:	2800      	cmp	r0, #0
 80042a4:	f000 83d7 	beq.w	8004a56 <_dtoa_r+0x8fe>
 80042a8:	1e73      	subs	r3, r6, #1
 80042aa:	9306      	str	r3, [sp, #24]
 80042ac:	2300      	movs	r3, #0
 80042ae:	930d      	str	r3, [sp, #52]	; 0x34
 80042b0:	1b2c      	subs	r4, r5, r4
 80042b2:	f1b4 0801 	subs.w	r8, r4, #1
 80042b6:	f100 8254 	bmi.w	8004762 <_dtoa_r+0x60a>
 80042ba:	2300      	movs	r3, #0
 80042bc:	9308      	str	r3, [sp, #32]
 80042be:	9b06      	ldr	r3, [sp, #24]
 80042c0:	2b00      	cmp	r3, #0
 80042c2:	f2c0 8245 	blt.w	8004750 <_dtoa_r+0x5f8>
 80042c6:	4498      	add	r8, r3
 80042c8:	930c      	str	r3, [sp, #48]	; 0x30
 80042ca:	2300      	movs	r3, #0
 80042cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80042ce:	9b02      	ldr	r3, [sp, #8]
 80042d0:	2b09      	cmp	r3, #9
 80042d2:	d85b      	bhi.n	800438c <_dtoa_r+0x234>
 80042d4:	2b05      	cmp	r3, #5
 80042d6:	f340 83c0 	ble.w	8004a5a <_dtoa_r+0x902>
 80042da:	3b04      	subs	r3, #4
 80042dc:	9302      	str	r3, [sp, #8]
 80042de:	2500      	movs	r5, #0
 80042e0:	9b02      	ldr	r3, [sp, #8]
 80042e2:	3b02      	subs	r3, #2
 80042e4:	2b03      	cmp	r3, #3
 80042e6:	f200 8498 	bhi.w	8004c1a <_dtoa_r+0xac2>
 80042ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80042ee:	03df      	.short	0x03df
 80042f0:	03e803bf 	.word	0x03e803bf
 80042f4:	04f5      	.short	0x04f5
 80042f6:	9a05      	ldr	r2, [sp, #20]
 80042f8:	f242 730f 	movw	r3, #9999	; 0x270f
 80042fc:	6013      	str	r3, [r2, #0]
 80042fe:	9b00      	ldr	r3, [sp, #0]
 8004300:	b983      	cbnz	r3, 8004324 <_dtoa_r+0x1cc>
 8004302:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004306:	b96b      	cbnz	r3, 8004324 <_dtoa_r+0x1cc>
 8004308:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800430a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004380 <_dtoa_r+0x228>
 800430e:	2b00      	cmp	r3, #0
 8004310:	f43f af61 	beq.w	80041d6 <_dtoa_r+0x7e>
 8004314:	f10b 0308 	add.w	r3, fp, #8
 8004318:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800431a:	4658      	mov	r0, fp
 800431c:	6013      	str	r3, [r2, #0]
 800431e:	b01b      	add	sp, #108	; 0x6c
 8004320:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004324:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004326:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004384 <_dtoa_r+0x22c>
 800432a:	2b00      	cmp	r3, #0
 800432c:	f43f af53 	beq.w	80041d6 <_dtoa_r+0x7e>
 8004330:	f10b 0303 	add.w	r3, fp, #3
 8004334:	e7f0      	b.n	8004318 <_dtoa_r+0x1c0>
 8004336:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800433a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800433e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004340:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004344:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004348:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800434a:	e76f      	b.n	800422c <_dtoa_r+0xd4>
 800434c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004388 <_dtoa_r+0x230>
 8004350:	4658      	mov	r0, fp
 8004352:	b01b      	add	sp, #108	; 0x6c
 8004354:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004358:	636f4361 	.word	0x636f4361
 800435c:	3fd287a7 	.word	0x3fd287a7
 8004360:	8b60c8b3 	.word	0x8b60c8b3
 8004364:	3fc68a28 	.word	0x3fc68a28
 8004368:	509f79fb 	.word	0x509f79fb
 800436c:	3fd34413 	.word	0x3fd34413
 8004370:	7ff00000 	.word	0x7ff00000
 8004374:	08007185 	.word	0x08007185
 8004378:	3ff80000 	.word	0x3ff80000
 800437c:	080071e0 	.word	0x080071e0
 8004380:	080071a8 	.word	0x080071a8
 8004384:	080071b4 	.word	0x080071b4
 8004388:	08007184 	.word	0x08007184
 800438c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004390:	2501      	movs	r5, #1
 8004392:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004396:	2300      	movs	r3, #0
 8004398:	9302      	str	r3, [sp, #8]
 800439a:	9307      	str	r3, [sp, #28]
 800439c:	2100      	movs	r1, #0
 800439e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80043a2:	940e      	str	r4, [sp, #56]	; 0x38
 80043a4:	4648      	mov	r0, r9
 80043a6:	f001 fdcd 	bl	8005f44 <_Balloc>
 80043aa:	2c0e      	cmp	r4, #14
 80043ac:	4683      	mov	fp, r0
 80043ae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043b2:	f200 80fb 	bhi.w	80045ac <_dtoa_r+0x454>
 80043b6:	2d00      	cmp	r5, #0
 80043b8:	f000 80f8 	beq.w	80045ac <_dtoa_r+0x454>
 80043bc:	ed9d 7b00 	vldr	d7, [sp]
 80043c0:	9906      	ldr	r1, [sp, #24]
 80043c2:	2900      	cmp	r1, #0
 80043c4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80043c8:	f340 83e5 	ble.w	8004b96 <_dtoa_r+0xa3e>
 80043cc:	4b9d      	ldr	r3, [pc, #628]	; (8004644 <_dtoa_r+0x4ec>)
 80043ce:	f001 020f 	and.w	r2, r1, #15
 80043d2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043d6:	ed93 7b00 	vldr	d7, [r3]
 80043da:	110c      	asrs	r4, r1, #4
 80043dc:	06e2      	lsls	r2, r4, #27
 80043de:	ed8d 7b00 	vstr	d7, [sp]
 80043e2:	f140 849e 	bpl.w	8004d22 <_dtoa_r+0xbca>
 80043e6:	4b98      	ldr	r3, [pc, #608]	; (8004648 <_dtoa_r+0x4f0>)
 80043e8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80043ec:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80043f0:	f7fc f9ec 	bl	80007cc <__aeabi_ddiv>
 80043f4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80043f8:	f004 040f 	and.w	r4, r4, #15
 80043fc:	2603      	movs	r6, #3
 80043fe:	b17c      	cbz	r4, 8004420 <_dtoa_r+0x2c8>
 8004400:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004404:	4d90      	ldr	r5, [pc, #576]	; (8004648 <_dtoa_r+0x4f0>)
 8004406:	07e3      	lsls	r3, r4, #31
 8004408:	d504      	bpl.n	8004414 <_dtoa_r+0x2bc>
 800440a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800440e:	f7fc f8b3 	bl	8000578 <__aeabi_dmul>
 8004412:	3601      	adds	r6, #1
 8004414:	1064      	asrs	r4, r4, #1
 8004416:	f105 0508 	add.w	r5, r5, #8
 800441a:	d1f4      	bne.n	8004406 <_dtoa_r+0x2ae>
 800441c:	e9cd 0100 	strd	r0, r1, [sp]
 8004420:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004424:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004428:	f7fc f9d0 	bl	80007cc <__aeabi_ddiv>
 800442c:	e9cd 0100 	strd	r0, r1, [sp]
 8004430:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004432:	b143      	cbz	r3, 8004446 <_dtoa_r+0x2ee>
 8004434:	2200      	movs	r2, #0
 8004436:	4b85      	ldr	r3, [pc, #532]	; (800464c <_dtoa_r+0x4f4>)
 8004438:	e9dd 0100 	ldrd	r0, r1, [sp]
 800443c:	f7fc fb0e 	bl	8000a5c <__aeabi_dcmplt>
 8004440:	2800      	cmp	r0, #0
 8004442:	f040 84ff 	bne.w	8004e44 <_dtoa_r+0xcec>
 8004446:	4630      	mov	r0, r6
 8004448:	f7fc f82c 	bl	80004a4 <__aeabi_i2d>
 800444c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004450:	f7fc f892 	bl	8000578 <__aeabi_dmul>
 8004454:	4b7e      	ldr	r3, [pc, #504]	; (8004650 <_dtoa_r+0x4f8>)
 8004456:	2200      	movs	r2, #0
 8004458:	f7fb fed8 	bl	800020c <__adddf3>
 800445c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800445e:	4606      	mov	r6, r0
 8004460:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004464:	2b00      	cmp	r3, #0
 8004466:	f000 841c 	beq.w	8004ca2 <_dtoa_r+0xb4a>
 800446a:	9b06      	ldr	r3, [sp, #24]
 800446c:	9316      	str	r3, [sp, #88]	; 0x58
 800446e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004470:	9312      	str	r3, [sp, #72]	; 0x48
 8004472:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004476:	f7fc fe59 	bl	800112c <__aeabi_d2iz>
 800447a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800447c:	4b71      	ldr	r3, [pc, #452]	; (8004644 <_dtoa_r+0x4ec>)
 800447e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004482:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004486:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800448a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800448e:	f7fc f809 	bl	80004a4 <__aeabi_i2d>
 8004492:	460b      	mov	r3, r1
 8004494:	4602      	mov	r2, r0
 8004496:	e9dd 0100 	ldrd	r0, r1, [sp]
 800449a:	e9cd 6700 	strd	r6, r7, [sp]
 800449e:	f7fb feb3 	bl	8000208 <__aeabi_dsub>
 80044a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044a4:	b2ed      	uxtb	r5, r5
 80044a6:	4606      	mov	r6, r0
 80044a8:	460f      	mov	r7, r1
 80044aa:	f10b 0401 	add.w	r4, fp, #1
 80044ae:	2b00      	cmp	r3, #0
 80044b0:	f000 8458 	beq.w	8004d64 <_dtoa_r+0xc0c>
 80044b4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044b8:	2000      	movs	r0, #0
 80044ba:	4966      	ldr	r1, [pc, #408]	; (8004654 <_dtoa_r+0x4fc>)
 80044bc:	f7fc f986 	bl	80007cc <__aeabi_ddiv>
 80044c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044c4:	f7fb fea0 	bl	8000208 <__aeabi_dsub>
 80044c8:	f88b 5000 	strb.w	r5, [fp]
 80044cc:	4632      	mov	r2, r6
 80044ce:	463b      	mov	r3, r7
 80044d0:	e9cd 0100 	strd	r0, r1, [sp]
 80044d4:	f7fc fae0 	bl	8000a98 <__aeabi_dcmpgt>
 80044d8:	2800      	cmp	r0, #0
 80044da:	f040 8502 	bne.w	8004ee2 <_dtoa_r+0xd8a>
 80044de:	4632      	mov	r2, r6
 80044e0:	463b      	mov	r3, r7
 80044e2:	2000      	movs	r0, #0
 80044e4:	4959      	ldr	r1, [pc, #356]	; (800464c <_dtoa_r+0x4f4>)
 80044e6:	f7fb fe8f 	bl	8000208 <__aeabi_dsub>
 80044ea:	4602      	mov	r2, r0
 80044ec:	460b      	mov	r3, r1
 80044ee:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044f2:	f7fc fad1 	bl	8000a98 <__aeabi_dcmpgt>
 80044f6:	2800      	cmp	r0, #0
 80044f8:	f040 84fb 	bne.w	8004ef2 <_dtoa_r+0xd9a>
 80044fc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044fe:	2a01      	cmp	r2, #1
 8004500:	d050      	beq.n	80045a4 <_dtoa_r+0x44c>
 8004502:	445a      	add	r2, fp
 8004504:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004508:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800450c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004510:	4692      	mov	sl, r2
 8004512:	46cb      	mov	fp, r9
 8004514:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004518:	e00c      	b.n	8004534 <_dtoa_r+0x3dc>
 800451a:	2000      	movs	r0, #0
 800451c:	494b      	ldr	r1, [pc, #300]	; (800464c <_dtoa_r+0x4f4>)
 800451e:	f7fb fe73 	bl	8000208 <__aeabi_dsub>
 8004522:	4642      	mov	r2, r8
 8004524:	464b      	mov	r3, r9
 8004526:	f7fc fa99 	bl	8000a5c <__aeabi_dcmplt>
 800452a:	2800      	cmp	r0, #0
 800452c:	f040 84dc 	bne.w	8004ee8 <_dtoa_r+0xd90>
 8004530:	4554      	cmp	r4, sl
 8004532:	d030      	beq.n	8004596 <_dtoa_r+0x43e>
 8004534:	4640      	mov	r0, r8
 8004536:	4649      	mov	r1, r9
 8004538:	2200      	movs	r2, #0
 800453a:	4b47      	ldr	r3, [pc, #284]	; (8004658 <_dtoa_r+0x500>)
 800453c:	f7fc f81c 	bl	8000578 <__aeabi_dmul>
 8004540:	2200      	movs	r2, #0
 8004542:	4b45      	ldr	r3, [pc, #276]	; (8004658 <_dtoa_r+0x500>)
 8004544:	4680      	mov	r8, r0
 8004546:	4689      	mov	r9, r1
 8004548:	4630      	mov	r0, r6
 800454a:	4639      	mov	r1, r7
 800454c:	f7fc f814 	bl	8000578 <__aeabi_dmul>
 8004550:	460f      	mov	r7, r1
 8004552:	4606      	mov	r6, r0
 8004554:	f7fc fdea 	bl	800112c <__aeabi_d2iz>
 8004558:	4605      	mov	r5, r0
 800455a:	f7fb ffa3 	bl	80004a4 <__aeabi_i2d>
 800455e:	4602      	mov	r2, r0
 8004560:	460b      	mov	r3, r1
 8004562:	4630      	mov	r0, r6
 8004564:	4639      	mov	r1, r7
 8004566:	f7fb fe4f 	bl	8000208 <__aeabi_dsub>
 800456a:	3530      	adds	r5, #48	; 0x30
 800456c:	b2ed      	uxtb	r5, r5
 800456e:	4642      	mov	r2, r8
 8004570:	464b      	mov	r3, r9
 8004572:	f804 5b01 	strb.w	r5, [r4], #1
 8004576:	4606      	mov	r6, r0
 8004578:	460f      	mov	r7, r1
 800457a:	f7fc fa6f 	bl	8000a5c <__aeabi_dcmplt>
 800457e:	4632      	mov	r2, r6
 8004580:	463b      	mov	r3, r7
 8004582:	2800      	cmp	r0, #0
 8004584:	d0c9      	beq.n	800451a <_dtoa_r+0x3c2>
 8004586:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004588:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800458c:	9306      	str	r3, [sp, #24]
 800458e:	46d9      	mov	r9, fp
 8004590:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004594:	e236      	b.n	8004a04 <_dtoa_r+0x8ac>
 8004596:	46d9      	mov	r9, fp
 8004598:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800459c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045a0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045a4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045a8:	e9cd 3400 	strd	r3, r4, [sp]
 80045ac:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045ae:	2b00      	cmp	r3, #0
 80045b0:	f2c0 80ae 	blt.w	8004710 <_dtoa_r+0x5b8>
 80045b4:	9a06      	ldr	r2, [sp, #24]
 80045b6:	2a0e      	cmp	r2, #14
 80045b8:	f300 80aa 	bgt.w	8004710 <_dtoa_r+0x5b8>
 80045bc:	4b21      	ldr	r3, [pc, #132]	; (8004644 <_dtoa_r+0x4ec>)
 80045be:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045c2:	ed93 7b00 	vldr	d7, [r3]
 80045c6:	9b07      	ldr	r3, [sp, #28]
 80045c8:	2b00      	cmp	r3, #0
 80045ca:	ed8d 7b02 	vstr	d7, [sp, #8]
 80045ce:	f2c0 82be 	blt.w	8004b4e <_dtoa_r+0x9f6>
 80045d2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80045d6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045da:	4630      	mov	r0, r6
 80045dc:	4639      	mov	r1, r7
 80045de:	f7fc f8f5 	bl	80007cc <__aeabi_ddiv>
 80045e2:	f7fc fda3 	bl	800112c <__aeabi_d2iz>
 80045e6:	4605      	mov	r5, r0
 80045e8:	f7fb ff5c 	bl	80004a4 <__aeabi_i2d>
 80045ec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045f0:	f7fb ffc2 	bl	8000578 <__aeabi_dmul>
 80045f4:	460b      	mov	r3, r1
 80045f6:	4602      	mov	r2, r0
 80045f8:	4639      	mov	r1, r7
 80045fa:	4630      	mov	r0, r6
 80045fc:	f7fb fe04 	bl	8000208 <__aeabi_dsub>
 8004600:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004604:	f88b 3000 	strb.w	r3, [fp]
 8004608:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800460a:	2b01      	cmp	r3, #1
 800460c:	4606      	mov	r6, r0
 800460e:	460f      	mov	r7, r1
 8004610:	f10b 0401 	add.w	r4, fp, #1
 8004614:	d053      	beq.n	80046be <_dtoa_r+0x566>
 8004616:	2200      	movs	r2, #0
 8004618:	4b0f      	ldr	r3, [pc, #60]	; (8004658 <_dtoa_r+0x500>)
 800461a:	f7fb ffad 	bl	8000578 <__aeabi_dmul>
 800461e:	2200      	movs	r2, #0
 8004620:	2300      	movs	r3, #0
 8004622:	4606      	mov	r6, r0
 8004624:	460f      	mov	r7, r1
 8004626:	f7fc fa0f 	bl	8000a48 <__aeabi_dcmpeq>
 800462a:	2800      	cmp	r0, #0
 800462c:	f040 81ea 	bne.w	8004a04 <_dtoa_r+0x8ac>
 8004630:	f8cd a000 	str.w	sl, [sp]
 8004634:	f8cd 901c 	str.w	r9, [sp, #28]
 8004638:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800463c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004640:	e017      	b.n	8004672 <_dtoa_r+0x51a>
 8004642:	bf00      	nop
 8004644:	080071e0 	.word	0x080071e0
 8004648:	080071b8 	.word	0x080071b8
 800464c:	3ff00000 	.word	0x3ff00000
 8004650:	401c0000 	.word	0x401c0000
 8004654:	3fe00000 	.word	0x3fe00000
 8004658:	40240000 	.word	0x40240000
 800465c:	f7fb ff8c 	bl	8000578 <__aeabi_dmul>
 8004660:	2200      	movs	r2, #0
 8004662:	2300      	movs	r3, #0
 8004664:	4606      	mov	r6, r0
 8004666:	460f      	mov	r7, r1
 8004668:	f7fc f9ee 	bl	8000a48 <__aeabi_dcmpeq>
 800466c:	2800      	cmp	r0, #0
 800466e:	f040 833d 	bne.w	8004cec <_dtoa_r+0xb94>
 8004672:	464a      	mov	r2, r9
 8004674:	4653      	mov	r3, sl
 8004676:	4630      	mov	r0, r6
 8004678:	4639      	mov	r1, r7
 800467a:	f7fc f8a7 	bl	80007cc <__aeabi_ddiv>
 800467e:	f7fc fd55 	bl	800112c <__aeabi_d2iz>
 8004682:	4605      	mov	r5, r0
 8004684:	f7fb ff0e 	bl	80004a4 <__aeabi_i2d>
 8004688:	464a      	mov	r2, r9
 800468a:	4653      	mov	r3, sl
 800468c:	f7fb ff74 	bl	8000578 <__aeabi_dmul>
 8004690:	4602      	mov	r2, r0
 8004692:	460b      	mov	r3, r1
 8004694:	4630      	mov	r0, r6
 8004696:	4639      	mov	r1, r7
 8004698:	f7fb fdb6 	bl	8000208 <__aeabi_dsub>
 800469c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80046a0:	f804 cb01 	strb.w	ip, [r4], #1
 80046a4:	eba4 0c0b 	sub.w	ip, r4, fp
 80046a8:	45e0      	cmp	r8, ip
 80046aa:	4606      	mov	r6, r0
 80046ac:	460f      	mov	r7, r1
 80046ae:	f04f 0200 	mov.w	r2, #0
 80046b2:	4bc1      	ldr	r3, [pc, #772]	; (80049b8 <_dtoa_r+0x860>)
 80046b4:	d1d2      	bne.n	800465c <_dtoa_r+0x504>
 80046b6:	f8dd a000 	ldr.w	sl, [sp]
 80046ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046be:	4632      	mov	r2, r6
 80046c0:	463b      	mov	r3, r7
 80046c2:	4630      	mov	r0, r6
 80046c4:	4639      	mov	r1, r7
 80046c6:	f7fb fda1 	bl	800020c <__adddf3>
 80046ca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046ce:	4606      	mov	r6, r0
 80046d0:	460f      	mov	r7, r1
 80046d2:	f7fc f9e1 	bl	8000a98 <__aeabi_dcmpgt>
 80046d6:	b958      	cbnz	r0, 80046f0 <_dtoa_r+0x598>
 80046d8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046dc:	4630      	mov	r0, r6
 80046de:	4639      	mov	r1, r7
 80046e0:	f7fc f9b2 	bl	8000a48 <__aeabi_dcmpeq>
 80046e4:	2800      	cmp	r0, #0
 80046e6:	f000 818d 	beq.w	8004a04 <_dtoa_r+0x8ac>
 80046ea:	07e9      	lsls	r1, r5, #31
 80046ec:	f140 818a 	bpl.w	8004a04 <_dtoa_r+0x8ac>
 80046f0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80046f4:	e005      	b.n	8004702 <_dtoa_r+0x5aa>
 80046f6:	459b      	cmp	fp, r3
 80046f8:	f000 8373 	beq.w	8004de2 <_dtoa_r+0xc8a>
 80046fc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004700:	461c      	mov	r4, r3
 8004702:	2d39      	cmp	r5, #57	; 0x39
 8004704:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004708:	d0f5      	beq.n	80046f6 <_dtoa_r+0x59e>
 800470a:	3501      	adds	r5, #1
 800470c:	701d      	strb	r5, [r3, #0]
 800470e:	e179      	b.n	8004a04 <_dtoa_r+0x8ac>
 8004710:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004712:	2a00      	cmp	r2, #0
 8004714:	d03b      	beq.n	800478e <_dtoa_r+0x636>
 8004716:	9a02      	ldr	r2, [sp, #8]
 8004718:	2a01      	cmp	r2, #1
 800471a:	f340 820b 	ble.w	8004b34 <_dtoa_r+0x9dc>
 800471e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004720:	1e5f      	subs	r7, r3, #1
 8004722:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004724:	42bb      	cmp	r3, r7
 8004726:	f2c0 82e6 	blt.w	8004cf6 <_dtoa_r+0xb9e>
 800472a:	1bdf      	subs	r7, r3, r7
 800472c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800472e:	2b00      	cmp	r3, #0
 8004730:	f2c0 830b 	blt.w	8004d4a <_dtoa_r+0xbf2>
 8004734:	9a08      	ldr	r2, [sp, #32]
 8004736:	4614      	mov	r4, r2
 8004738:	441a      	add	r2, r3
 800473a:	4498      	add	r8, r3
 800473c:	9208      	str	r2, [sp, #32]
 800473e:	2101      	movs	r1, #1
 8004740:	4648      	mov	r0, r9
 8004742:	f001 fcbf 	bl	80060c4 <__i2b>
 8004746:	4605      	mov	r5, r0
 8004748:	e024      	b.n	8004794 <_dtoa_r+0x63c>
 800474a:	2301      	movs	r3, #1
 800474c:	930d      	str	r3, [sp, #52]	; 0x34
 800474e:	e5af      	b.n	80042b0 <_dtoa_r+0x158>
 8004750:	9a08      	ldr	r2, [sp, #32]
 8004752:	9b06      	ldr	r3, [sp, #24]
 8004754:	1ad2      	subs	r2, r2, r3
 8004756:	425b      	negs	r3, r3
 8004758:	930b      	str	r3, [sp, #44]	; 0x2c
 800475a:	2300      	movs	r3, #0
 800475c:	9208      	str	r2, [sp, #32]
 800475e:	930c      	str	r3, [sp, #48]	; 0x30
 8004760:	e5b5      	b.n	80042ce <_dtoa_r+0x176>
 8004762:	f1c4 0301 	rsb	r3, r4, #1
 8004766:	9308      	str	r3, [sp, #32]
 8004768:	f04f 0800 	mov.w	r8, #0
 800476c:	e5a7      	b.n	80042be <_dtoa_r+0x166>
 800476e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004772:	4640      	mov	r0, r8
 8004774:	f7fb fe96 	bl	80004a4 <__aeabi_i2d>
 8004778:	4632      	mov	r2, r6
 800477a:	463b      	mov	r3, r7
 800477c:	f7fc f964 	bl	8000a48 <__aeabi_dcmpeq>
 8004780:	2800      	cmp	r0, #0
 8004782:	f47f ad81 	bne.w	8004288 <_dtoa_r+0x130>
 8004786:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800478a:	9306      	str	r3, [sp, #24]
 800478c:	e57c      	b.n	8004288 <_dtoa_r+0x130>
 800478e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004790:	9c08      	ldr	r4, [sp, #32]
 8004792:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004794:	2c00      	cmp	r4, #0
 8004796:	dd0c      	ble.n	80047b2 <_dtoa_r+0x65a>
 8004798:	f1b8 0f00 	cmp.w	r8, #0
 800479c:	dd09      	ble.n	80047b2 <_dtoa_r+0x65a>
 800479e:	4544      	cmp	r4, r8
 80047a0:	9a08      	ldr	r2, [sp, #32]
 80047a2:	4623      	mov	r3, r4
 80047a4:	bfa8      	it	ge
 80047a6:	4643      	movge	r3, r8
 80047a8:	1ad2      	subs	r2, r2, r3
 80047aa:	9208      	str	r2, [sp, #32]
 80047ac:	1ae4      	subs	r4, r4, r3
 80047ae:	eba8 0803 	sub.w	r8, r8, r3
 80047b2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047b4:	b16b      	cbz	r3, 80047d2 <_dtoa_r+0x67a>
 80047b6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047b8:	2a00      	cmp	r2, #0
 80047ba:	f000 8290 	beq.w	8004cde <_dtoa_r+0xb86>
 80047be:	1bde      	subs	r6, r3, r7
 80047c0:	2f00      	cmp	r7, #0
 80047c2:	f040 819b 	bne.w	8004afc <_dtoa_r+0x9a4>
 80047c6:	4651      	mov	r1, sl
 80047c8:	4632      	mov	r2, r6
 80047ca:	4648      	mov	r0, r9
 80047cc:	f001 fd2a 	bl	8006224 <__pow5mult>
 80047d0:	4682      	mov	sl, r0
 80047d2:	2101      	movs	r1, #1
 80047d4:	4648      	mov	r0, r9
 80047d6:	f001 fc75 	bl	80060c4 <__i2b>
 80047da:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80047dc:	4606      	mov	r6, r0
 80047de:	2a00      	cmp	r2, #0
 80047e0:	f040 8125 	bne.w	8004a2e <_dtoa_r+0x8d6>
 80047e4:	9b02      	ldr	r3, [sp, #8]
 80047e6:	2b01      	cmp	r3, #1
 80047e8:	f340 816c 	ble.w	8004ac4 <_dtoa_r+0x96c>
 80047ec:	2001      	movs	r0, #1
 80047ee:	4440      	add	r0, r8
 80047f0:	f010 001f 	ands.w	r0, r0, #31
 80047f4:	f000 8119 	beq.w	8004a2a <_dtoa_r+0x8d2>
 80047f8:	f1c0 0320 	rsb	r3, r0, #32
 80047fc:	2b04      	cmp	r3, #4
 80047fe:	f340 83ac 	ble.w	8004f5a <_dtoa_r+0xe02>
 8004802:	f1c0 001c 	rsb	r0, r0, #28
 8004806:	9b08      	ldr	r3, [sp, #32]
 8004808:	4403      	add	r3, r0
 800480a:	9308      	str	r3, [sp, #32]
 800480c:	4404      	add	r4, r0
 800480e:	4480      	add	r8, r0
 8004810:	9b08      	ldr	r3, [sp, #32]
 8004812:	2b00      	cmp	r3, #0
 8004814:	dd05      	ble.n	8004822 <_dtoa_r+0x6ca>
 8004816:	4651      	mov	r1, sl
 8004818:	461a      	mov	r2, r3
 800481a:	4648      	mov	r0, r9
 800481c:	f001 fd52 	bl	80062c4 <__lshift>
 8004820:	4682      	mov	sl, r0
 8004822:	f1b8 0f00 	cmp.w	r8, #0
 8004826:	dd05      	ble.n	8004834 <_dtoa_r+0x6dc>
 8004828:	4631      	mov	r1, r6
 800482a:	4642      	mov	r2, r8
 800482c:	4648      	mov	r0, r9
 800482e:	f001 fd49 	bl	80062c4 <__lshift>
 8004832:	4606      	mov	r6, r0
 8004834:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004836:	2b00      	cmp	r3, #0
 8004838:	d177      	bne.n	800492a <_dtoa_r+0x7d2>
 800483a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800483c:	2b00      	cmp	r3, #0
 800483e:	f340 8209 	ble.w	8004c54 <_dtoa_r+0xafc>
 8004842:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004844:	2b00      	cmp	r3, #0
 8004846:	f000 8089 	beq.w	800495c <_dtoa_r+0x804>
 800484a:	2c00      	cmp	r4, #0
 800484c:	f300 816b 	bgt.w	8004b26 <_dtoa_r+0x9ce>
 8004850:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004852:	2b00      	cmp	r3, #0
 8004854:	f040 81cd 	bne.w	8004bf2 <_dtoa_r+0xa9a>
 8004858:	46a8      	mov	r8, r5
 800485a:	9a00      	ldr	r2, [sp, #0]
 800485c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004860:	f002 0201 	and.w	r2, r2, #1
 8004864:	920a      	str	r2, [sp, #40]	; 0x28
 8004866:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004868:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800486c:	441a      	add	r2, r3
 800486e:	465f      	mov	r7, fp
 8004870:	9209      	str	r2, [sp, #36]	; 0x24
 8004872:	46b3      	mov	fp, r6
 8004874:	4659      	mov	r1, fp
 8004876:	4650      	mov	r0, sl
 8004878:	f7ff fbdc 	bl	8004034 <quorem>
 800487c:	4629      	mov	r1, r5
 800487e:	4604      	mov	r4, r0
 8004880:	4650      	mov	r0, sl
 8004882:	f001 fd75 	bl	8006370 <__mcmp>
 8004886:	4659      	mov	r1, fp
 8004888:	4606      	mov	r6, r0
 800488a:	4642      	mov	r2, r8
 800488c:	4648      	mov	r0, r9
 800488e:	f001 fd8b 	bl	80063a8 <__mdiff>
 8004892:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004896:	9300      	str	r3, [sp, #0]
 8004898:	68c3      	ldr	r3, [r0, #12]
 800489a:	4601      	mov	r1, r0
 800489c:	2b00      	cmp	r3, #0
 800489e:	f040 81d4 	bne.w	8004c4a <_dtoa_r+0xaf2>
 80048a2:	9008      	str	r0, [sp, #32]
 80048a4:	4650      	mov	r0, sl
 80048a6:	f001 fd63 	bl	8006370 <__mcmp>
 80048aa:	9a08      	ldr	r2, [sp, #32]
 80048ac:	9007      	str	r0, [sp, #28]
 80048ae:	4611      	mov	r1, r2
 80048b0:	4648      	mov	r0, r9
 80048b2:	f001 fb6d 	bl	8005f90 <_Bfree>
 80048b6:	9b07      	ldr	r3, [sp, #28]
 80048b8:	b933      	cbnz	r3, 80048c8 <_dtoa_r+0x770>
 80048ba:	9a02      	ldr	r2, [sp, #8]
 80048bc:	b922      	cbnz	r2, 80048c8 <_dtoa_r+0x770>
 80048be:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048c0:	2b00      	cmp	r3, #0
 80048c2:	f000 8319 	beq.w	8004ef8 <_dtoa_r+0xda0>
 80048c6:	9b02      	ldr	r3, [sp, #8]
 80048c8:	2e00      	cmp	r6, #0
 80048ca:	f2c0 821c 	blt.w	8004d06 <_dtoa_r+0xbae>
 80048ce:	d105      	bne.n	80048dc <_dtoa_r+0x784>
 80048d0:	9a02      	ldr	r2, [sp, #8]
 80048d2:	b91a      	cbnz	r2, 80048dc <_dtoa_r+0x784>
 80048d4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048d6:	2a00      	cmp	r2, #0
 80048d8:	f000 8215 	beq.w	8004d06 <_dtoa_r+0xbae>
 80048dc:	2b00      	cmp	r3, #0
 80048de:	f107 0401 	add.w	r4, r7, #1
 80048e2:	f300 8225 	bgt.w	8004d30 <_dtoa_r+0xbd8>
 80048e6:	9b00      	ldr	r3, [sp, #0]
 80048e8:	703b      	strb	r3, [r7, #0]
 80048ea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048ec:	42bb      	cmp	r3, r7
 80048ee:	f000 8230 	beq.w	8004d52 <_dtoa_r+0xbfa>
 80048f2:	4651      	mov	r1, sl
 80048f4:	2300      	movs	r3, #0
 80048f6:	220a      	movs	r2, #10
 80048f8:	4648      	mov	r0, r9
 80048fa:	f001 fb53 	bl	8005fa4 <__multadd>
 80048fe:	4545      	cmp	r5, r8
 8004900:	4682      	mov	sl, r0
 8004902:	4629      	mov	r1, r5
 8004904:	f04f 0300 	mov.w	r3, #0
 8004908:	f04f 020a 	mov.w	r2, #10
 800490c:	4648      	mov	r0, r9
 800490e:	f000 8196 	beq.w	8004c3e <_dtoa_r+0xae6>
 8004912:	f001 fb47 	bl	8005fa4 <__multadd>
 8004916:	4641      	mov	r1, r8
 8004918:	4605      	mov	r5, r0
 800491a:	2300      	movs	r3, #0
 800491c:	220a      	movs	r2, #10
 800491e:	4648      	mov	r0, r9
 8004920:	f001 fb40 	bl	8005fa4 <__multadd>
 8004924:	4627      	mov	r7, r4
 8004926:	4680      	mov	r8, r0
 8004928:	e7a4      	b.n	8004874 <_dtoa_r+0x71c>
 800492a:	4631      	mov	r1, r6
 800492c:	4650      	mov	r0, sl
 800492e:	f001 fd1f 	bl	8006370 <__mcmp>
 8004932:	2800      	cmp	r0, #0
 8004934:	da81      	bge.n	800483a <_dtoa_r+0x6e2>
 8004936:	9f06      	ldr	r7, [sp, #24]
 8004938:	4651      	mov	r1, sl
 800493a:	2300      	movs	r3, #0
 800493c:	220a      	movs	r2, #10
 800493e:	4648      	mov	r0, r9
 8004940:	3f01      	subs	r7, #1
 8004942:	9706      	str	r7, [sp, #24]
 8004944:	f001 fb2e 	bl	8005fa4 <__multadd>
 8004948:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800494a:	4682      	mov	sl, r0
 800494c:	2b00      	cmp	r3, #0
 800494e:	f040 82eb 	bne.w	8004f28 <_dtoa_r+0xdd0>
 8004952:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004954:	2b00      	cmp	r3, #0
 8004956:	f340 82f3 	ble.w	8004f40 <_dtoa_r+0xde8>
 800495a:	9309      	str	r3, [sp, #36]	; 0x24
 800495c:	465c      	mov	r4, fp
 800495e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004962:	e002      	b.n	800496a <_dtoa_r+0x812>
 8004964:	f001 fb1e 	bl	8005fa4 <__multadd>
 8004968:	4682      	mov	sl, r0
 800496a:	4631      	mov	r1, r6
 800496c:	4650      	mov	r0, sl
 800496e:	f7ff fb61 	bl	8004034 <quorem>
 8004972:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004976:	f804 7b01 	strb.w	r7, [r4], #1
 800497a:	eba4 030b 	sub.w	r3, r4, fp
 800497e:	4598      	cmp	r8, r3
 8004980:	f04f 020a 	mov.w	r2, #10
 8004984:	f04f 0300 	mov.w	r3, #0
 8004988:	4651      	mov	r1, sl
 800498a:	4648      	mov	r0, r9
 800498c:	dcea      	bgt.n	8004964 <_dtoa_r+0x80c>
 800498e:	2300      	movs	r3, #0
 8004990:	9700      	str	r7, [sp, #0]
 8004992:	9302      	str	r3, [sp, #8]
 8004994:	4651      	mov	r1, sl
 8004996:	2201      	movs	r2, #1
 8004998:	4648      	mov	r0, r9
 800499a:	f001 fc93 	bl	80062c4 <__lshift>
 800499e:	4631      	mov	r1, r6
 80049a0:	4682      	mov	sl, r0
 80049a2:	f001 fce5 	bl	8006370 <__mcmp>
 80049a6:	2800      	cmp	r0, #0
 80049a8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049ac:	dc14      	bgt.n	80049d8 <_dtoa_r+0x880>
 80049ae:	d108      	bne.n	80049c2 <_dtoa_r+0x86a>
 80049b0:	9b00      	ldr	r3, [sp, #0]
 80049b2:	07db      	lsls	r3, r3, #31
 80049b4:	d410      	bmi.n	80049d8 <_dtoa_r+0x880>
 80049b6:	e004      	b.n	80049c2 <_dtoa_r+0x86a>
 80049b8:	40240000 	.word	0x40240000
 80049bc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80049c0:	461c      	mov	r4, r3
 80049c2:	2a30      	cmp	r2, #48	; 0x30
 80049c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049c8:	d0f8      	beq.n	80049bc <_dtoa_r+0x864>
 80049ca:	e00b      	b.n	80049e4 <_dtoa_r+0x88c>
 80049cc:	459b      	cmp	fp, r3
 80049ce:	f000 814e 	beq.w	8004c6e <_dtoa_r+0xb16>
 80049d2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80049d6:	461c      	mov	r4, r3
 80049d8:	2a39      	cmp	r2, #57	; 0x39
 80049da:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049de:	d0f5      	beq.n	80049cc <_dtoa_r+0x874>
 80049e0:	3201      	adds	r2, #1
 80049e2:	701a      	strb	r2, [r3, #0]
 80049e4:	4631      	mov	r1, r6
 80049e6:	4648      	mov	r0, r9
 80049e8:	f001 fad2 	bl	8005f90 <_Bfree>
 80049ec:	b155      	cbz	r5, 8004a04 <_dtoa_r+0x8ac>
 80049ee:	9902      	ldr	r1, [sp, #8]
 80049f0:	b121      	cbz	r1, 80049fc <_dtoa_r+0x8a4>
 80049f2:	42a9      	cmp	r1, r5
 80049f4:	d002      	beq.n	80049fc <_dtoa_r+0x8a4>
 80049f6:	4648      	mov	r0, r9
 80049f8:	f001 faca 	bl	8005f90 <_Bfree>
 80049fc:	4629      	mov	r1, r5
 80049fe:	4648      	mov	r0, r9
 8004a00:	f001 fac6 	bl	8005f90 <_Bfree>
 8004a04:	4651      	mov	r1, sl
 8004a06:	4648      	mov	r0, r9
 8004a08:	f001 fac2 	bl	8005f90 <_Bfree>
 8004a0c:	2200      	movs	r2, #0
 8004a0e:	9b06      	ldr	r3, [sp, #24]
 8004a10:	7022      	strb	r2, [r4, #0]
 8004a12:	9a05      	ldr	r2, [sp, #20]
 8004a14:	3301      	adds	r3, #1
 8004a16:	6013      	str	r3, [r2, #0]
 8004a18:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a1a:	2b00      	cmp	r3, #0
 8004a1c:	f43f abdb 	beq.w	80041d6 <_dtoa_r+0x7e>
 8004a20:	4658      	mov	r0, fp
 8004a22:	601c      	str	r4, [r3, #0]
 8004a24:	b01b      	add	sp, #108	; 0x6c
 8004a26:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a2a:	201c      	movs	r0, #28
 8004a2c:	e6eb      	b.n	8004806 <_dtoa_r+0x6ae>
 8004a2e:	4601      	mov	r1, r0
 8004a30:	4648      	mov	r0, r9
 8004a32:	f001 fbf7 	bl	8006224 <__pow5mult>
 8004a36:	9b02      	ldr	r3, [sp, #8]
 8004a38:	2b01      	cmp	r3, #1
 8004a3a:	4606      	mov	r6, r0
 8004a3c:	f340 80d4 	ble.w	8004be8 <_dtoa_r+0xa90>
 8004a40:	2300      	movs	r3, #0
 8004a42:	930c      	str	r3, [sp, #48]	; 0x30
 8004a44:	6933      	ldr	r3, [r6, #16]
 8004a46:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a4a:	6918      	ldr	r0, [r3, #16]
 8004a4c:	f001 faea 	bl	8006024 <__hi0bits>
 8004a50:	f1c0 0020 	rsb	r0, r0, #32
 8004a54:	e6cb      	b.n	80047ee <_dtoa_r+0x696>
 8004a56:	900d      	str	r0, [sp, #52]	; 0x34
 8004a58:	e42a      	b.n	80042b0 <_dtoa_r+0x158>
 8004a5a:	2501      	movs	r5, #1
 8004a5c:	e440      	b.n	80042e0 <_dtoa_r+0x188>
 8004a5e:	f1c3 0820 	rsb	r8, r3, #32
 8004a62:	9b00      	ldr	r3, [sp, #0]
 8004a64:	fa03 f008 	lsl.w	r0, r3, r8
 8004a68:	f7ff bbd8 	b.w	800421c <_dtoa_r+0xc4>
 8004a6c:	2300      	movs	r3, #0
 8004a6e:	930a      	str	r3, [sp, #40]	; 0x28
 8004a70:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a74:	4413      	add	r3, r2
 8004a76:	930e      	str	r3, [sp, #56]	; 0x38
 8004a78:	3301      	adds	r3, #1
 8004a7a:	2b01      	cmp	r3, #1
 8004a7c:	461e      	mov	r6, r3
 8004a7e:	9309      	str	r3, [sp, #36]	; 0x24
 8004a80:	bfb8      	it	lt
 8004a82:	2601      	movlt	r6, #1
 8004a84:	2100      	movs	r1, #0
 8004a86:	2e17      	cmp	r6, #23
 8004a88:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a8c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a8e:	f77f ac89 	ble.w	80043a4 <_dtoa_r+0x24c>
 8004a92:	2201      	movs	r2, #1
 8004a94:	2304      	movs	r3, #4
 8004a96:	005b      	lsls	r3, r3, #1
 8004a98:	f103 0014 	add.w	r0, r3, #20
 8004a9c:	42b0      	cmp	r0, r6
 8004a9e:	4611      	mov	r1, r2
 8004aa0:	f102 0201 	add.w	r2, r2, #1
 8004aa4:	d9f7      	bls.n	8004a96 <_dtoa_r+0x93e>
 8004aa6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004aaa:	e47b      	b.n	80043a4 <_dtoa_r+0x24c>
 8004aac:	2300      	movs	r3, #0
 8004aae:	930a      	str	r3, [sp, #40]	; 0x28
 8004ab0:	9e07      	ldr	r6, [sp, #28]
 8004ab2:	2e00      	cmp	r6, #0
 8004ab4:	f340 80e2 	ble.w	8004c7c <_dtoa_r+0xb24>
 8004ab8:	960e      	str	r6, [sp, #56]	; 0x38
 8004aba:	9609      	str	r6, [sp, #36]	; 0x24
 8004abc:	e7e2      	b.n	8004a84 <_dtoa_r+0x92c>
 8004abe:	2301      	movs	r3, #1
 8004ac0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ac2:	e7f5      	b.n	8004ab0 <_dtoa_r+0x958>
 8004ac4:	9b00      	ldr	r3, [sp, #0]
 8004ac6:	2b00      	cmp	r3, #0
 8004ac8:	f47f ae90 	bne.w	80047ec <_dtoa_r+0x694>
 8004acc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ad0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004ad4:	2b00      	cmp	r3, #0
 8004ad6:	f040 8192 	bne.w	8004dfe <_dtoa_r+0xca6>
 8004ada:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004ade:	0d1b      	lsrs	r3, r3, #20
 8004ae0:	051b      	lsls	r3, r3, #20
 8004ae2:	b12b      	cbz	r3, 8004af0 <_dtoa_r+0x998>
 8004ae4:	9b08      	ldr	r3, [sp, #32]
 8004ae6:	3301      	adds	r3, #1
 8004ae8:	9308      	str	r3, [sp, #32]
 8004aea:	f108 0801 	add.w	r8, r8, #1
 8004aee:	2301      	movs	r3, #1
 8004af0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004af2:	930c      	str	r3, [sp, #48]	; 0x30
 8004af4:	2a00      	cmp	r2, #0
 8004af6:	f43f ae79 	beq.w	80047ec <_dtoa_r+0x694>
 8004afa:	e7a3      	b.n	8004a44 <_dtoa_r+0x8ec>
 8004afc:	463a      	mov	r2, r7
 8004afe:	4629      	mov	r1, r5
 8004b00:	4648      	mov	r0, r9
 8004b02:	f001 fb8f 	bl	8006224 <__pow5mult>
 8004b06:	4652      	mov	r2, sl
 8004b08:	4601      	mov	r1, r0
 8004b0a:	4605      	mov	r5, r0
 8004b0c:	4648      	mov	r0, r9
 8004b0e:	f001 fae3 	bl	80060d8 <__multiply>
 8004b12:	4651      	mov	r1, sl
 8004b14:	4607      	mov	r7, r0
 8004b16:	4648      	mov	r0, r9
 8004b18:	f001 fa3a 	bl	8005f90 <_Bfree>
 8004b1c:	46ba      	mov	sl, r7
 8004b1e:	2e00      	cmp	r6, #0
 8004b20:	f43f ae57 	beq.w	80047d2 <_dtoa_r+0x67a>
 8004b24:	e64f      	b.n	80047c6 <_dtoa_r+0x66e>
 8004b26:	4629      	mov	r1, r5
 8004b28:	4622      	mov	r2, r4
 8004b2a:	4648      	mov	r0, r9
 8004b2c:	f001 fbca 	bl	80062c4 <__lshift>
 8004b30:	4605      	mov	r5, r0
 8004b32:	e68d      	b.n	8004850 <_dtoa_r+0x6f8>
 8004b34:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b36:	2a00      	cmp	r2, #0
 8004b38:	f000 815d 	beq.w	8004df6 <_dtoa_r+0xc9e>
 8004b3c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b40:	9a08      	ldr	r2, [sp, #32]
 8004b42:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b44:	4614      	mov	r4, r2
 8004b46:	441a      	add	r2, r3
 8004b48:	4498      	add	r8, r3
 8004b4a:	9208      	str	r2, [sp, #32]
 8004b4c:	e5f7      	b.n	800473e <_dtoa_r+0x5e6>
 8004b4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b50:	2b00      	cmp	r3, #0
 8004b52:	f73f ad3e 	bgt.w	80045d2 <_dtoa_r+0x47a>
 8004b56:	f040 80bc 	bne.w	8004cd2 <_dtoa_r+0xb7a>
 8004b5a:	ec51 0b17 	vmov	r0, r1, d7
 8004b5e:	2200      	movs	r2, #0
 8004b60:	4bb2      	ldr	r3, [pc, #712]	; (8004e2c <_dtoa_r+0xcd4>)
 8004b62:	f7fb fd09 	bl	8000578 <__aeabi_dmul>
 8004b66:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b6a:	f7fb ff8b 	bl	8000a84 <__aeabi_dcmpge>
 8004b6e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b70:	4635      	mov	r5, r6
 8004b72:	2800      	cmp	r0, #0
 8004b74:	d176      	bne.n	8004c64 <_dtoa_r+0xb0c>
 8004b76:	9a06      	ldr	r2, [sp, #24]
 8004b78:	2331      	movs	r3, #49	; 0x31
 8004b7a:	3201      	adds	r2, #1
 8004b7c:	9206      	str	r2, [sp, #24]
 8004b7e:	f88b 3000 	strb.w	r3, [fp]
 8004b82:	f10b 0401 	add.w	r4, fp, #1
 8004b86:	4631      	mov	r1, r6
 8004b88:	4648      	mov	r0, r9
 8004b8a:	f001 fa01 	bl	8005f90 <_Bfree>
 8004b8e:	2d00      	cmp	r5, #0
 8004b90:	f47f af34 	bne.w	80049fc <_dtoa_r+0x8a4>
 8004b94:	e736      	b.n	8004a04 <_dtoa_r+0x8ac>
 8004b96:	f000 8142 	beq.w	8004e1e <_dtoa_r+0xcc6>
 8004b9a:	9b06      	ldr	r3, [sp, #24]
 8004b9c:	425c      	negs	r4, r3
 8004b9e:	4ba4      	ldr	r3, [pc, #656]	; (8004e30 <_dtoa_r+0xcd8>)
 8004ba0:	f004 020f 	and.w	r2, r4, #15
 8004ba4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ba8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bac:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004bb0:	f7fb fce2 	bl	8000578 <__aeabi_dmul>
 8004bb4:	1124      	asrs	r4, r4, #4
 8004bb6:	e9cd 0100 	strd	r0, r1, [sp]
 8004bba:	f000 81c6 	beq.w	8004f4a <_dtoa_r+0xdf2>
 8004bbe:	4d9d      	ldr	r5, [pc, #628]	; (8004e34 <_dtoa_r+0xcdc>)
 8004bc0:	2300      	movs	r3, #0
 8004bc2:	2602      	movs	r6, #2
 8004bc4:	07e7      	lsls	r7, r4, #31
 8004bc6:	d505      	bpl.n	8004bd4 <_dtoa_r+0xa7c>
 8004bc8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004bcc:	f7fb fcd4 	bl	8000578 <__aeabi_dmul>
 8004bd0:	3601      	adds	r6, #1
 8004bd2:	2301      	movs	r3, #1
 8004bd4:	1064      	asrs	r4, r4, #1
 8004bd6:	f105 0508 	add.w	r5, r5, #8
 8004bda:	d1f3      	bne.n	8004bc4 <_dtoa_r+0xa6c>
 8004bdc:	2b00      	cmp	r3, #0
 8004bde:	f43f ac27 	beq.w	8004430 <_dtoa_r+0x2d8>
 8004be2:	e9cd 0100 	strd	r0, r1, [sp]
 8004be6:	e423      	b.n	8004430 <_dtoa_r+0x2d8>
 8004be8:	9b00      	ldr	r3, [sp, #0]
 8004bea:	2b00      	cmp	r3, #0
 8004bec:	f43f af6e 	beq.w	8004acc <_dtoa_r+0x974>
 8004bf0:	e726      	b.n	8004a40 <_dtoa_r+0x8e8>
 8004bf2:	6869      	ldr	r1, [r5, #4]
 8004bf4:	4648      	mov	r0, r9
 8004bf6:	f001 f9a5 	bl	8005f44 <_Balloc>
 8004bfa:	692b      	ldr	r3, [r5, #16]
 8004bfc:	3302      	adds	r3, #2
 8004bfe:	009a      	lsls	r2, r3, #2
 8004c00:	4604      	mov	r4, r0
 8004c02:	f105 010c 	add.w	r1, r5, #12
 8004c06:	300c      	adds	r0, #12
 8004c08:	f7fc f920 	bl	8000e4c <memcpy>
 8004c0c:	4621      	mov	r1, r4
 8004c0e:	2201      	movs	r2, #1
 8004c10:	4648      	mov	r0, r9
 8004c12:	f001 fb57 	bl	80062c4 <__lshift>
 8004c16:	4680      	mov	r8, r0
 8004c18:	e61f      	b.n	800485a <_dtoa_r+0x702>
 8004c1a:	2400      	movs	r4, #0
 8004c1c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c20:	4621      	mov	r1, r4
 8004c22:	4648      	mov	r0, r9
 8004c24:	f001 f98e 	bl	8005f44 <_Balloc>
 8004c28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c2c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c2e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c30:	2301      	movs	r3, #1
 8004c32:	4683      	mov	fp, r0
 8004c34:	9407      	str	r4, [sp, #28]
 8004c36:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c3a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c3c:	e4b6      	b.n	80045ac <_dtoa_r+0x454>
 8004c3e:	f001 f9b1 	bl	8005fa4 <__multadd>
 8004c42:	4627      	mov	r7, r4
 8004c44:	4605      	mov	r5, r0
 8004c46:	4680      	mov	r8, r0
 8004c48:	e614      	b.n	8004874 <_dtoa_r+0x71c>
 8004c4a:	4648      	mov	r0, r9
 8004c4c:	f001 f9a0 	bl	8005f90 <_Bfree>
 8004c50:	2301      	movs	r3, #1
 8004c52:	e639      	b.n	80048c8 <_dtoa_r+0x770>
 8004c54:	9b02      	ldr	r3, [sp, #8]
 8004c56:	2b02      	cmp	r3, #2
 8004c58:	f77f adf3 	ble.w	8004842 <_dtoa_r+0x6ea>
 8004c5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c5e:	2b00      	cmp	r3, #0
 8004c60:	f000 80cf 	beq.w	8004e02 <_dtoa_r+0xcaa>
 8004c64:	9b07      	ldr	r3, [sp, #28]
 8004c66:	43db      	mvns	r3, r3
 8004c68:	9306      	str	r3, [sp, #24]
 8004c6a:	465c      	mov	r4, fp
 8004c6c:	e78b      	b.n	8004b86 <_dtoa_r+0xa2e>
 8004c6e:	9a06      	ldr	r2, [sp, #24]
 8004c70:	2331      	movs	r3, #49	; 0x31
 8004c72:	3201      	adds	r2, #1
 8004c74:	9206      	str	r2, [sp, #24]
 8004c76:	f88b 3000 	strb.w	r3, [fp]
 8004c7a:	e6b3      	b.n	80049e4 <_dtoa_r+0x88c>
 8004c7c:	2401      	movs	r4, #1
 8004c7e:	9409      	str	r4, [sp, #36]	; 0x24
 8004c80:	9407      	str	r4, [sp, #28]
 8004c82:	f7ff bb8b 	b.w	800439c <_dtoa_r+0x244>
 8004c86:	4630      	mov	r0, r6
 8004c88:	f7fb fc0c 	bl	80004a4 <__aeabi_i2d>
 8004c8c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c90:	f7fb fc72 	bl	8000578 <__aeabi_dmul>
 8004c94:	2200      	movs	r2, #0
 8004c96:	4b68      	ldr	r3, [pc, #416]	; (8004e38 <_dtoa_r+0xce0>)
 8004c98:	f7fb fab8 	bl	800020c <__adddf3>
 8004c9c:	4606      	mov	r6, r0
 8004c9e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ca2:	2200      	movs	r2, #0
 8004ca4:	4b61      	ldr	r3, [pc, #388]	; (8004e2c <_dtoa_r+0xcd4>)
 8004ca6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004caa:	f7fb faad 	bl	8000208 <__aeabi_dsub>
 8004cae:	4632      	mov	r2, r6
 8004cb0:	463b      	mov	r3, r7
 8004cb2:	4604      	mov	r4, r0
 8004cb4:	460d      	mov	r5, r1
 8004cb6:	f7fb feef 	bl	8000a98 <__aeabi_dcmpgt>
 8004cba:	2800      	cmp	r0, #0
 8004cbc:	d14f      	bne.n	8004d5e <_dtoa_r+0xc06>
 8004cbe:	4632      	mov	r2, r6
 8004cc0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004cc4:	4620      	mov	r0, r4
 8004cc6:	4629      	mov	r1, r5
 8004cc8:	f7fb fec8 	bl	8000a5c <__aeabi_dcmplt>
 8004ccc:	2800      	cmp	r0, #0
 8004cce:	f43f ac69 	beq.w	80045a4 <_dtoa_r+0x44c>
 8004cd2:	2600      	movs	r6, #0
 8004cd4:	4635      	mov	r5, r6
 8004cd6:	e7c5      	b.n	8004c64 <_dtoa_r+0xb0c>
 8004cd8:	2301      	movs	r3, #1
 8004cda:	930a      	str	r3, [sp, #40]	; 0x28
 8004cdc:	e6c8      	b.n	8004a70 <_dtoa_r+0x918>
 8004cde:	4651      	mov	r1, sl
 8004ce0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004ce2:	4648      	mov	r0, r9
 8004ce4:	f001 fa9e 	bl	8006224 <__pow5mult>
 8004ce8:	4682      	mov	sl, r0
 8004cea:	e572      	b.n	80047d2 <_dtoa_r+0x67a>
 8004cec:	f8dd a000 	ldr.w	sl, [sp]
 8004cf0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cf4:	e686      	b.n	8004a04 <_dtoa_r+0x8ac>
 8004cf6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cf8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004cfa:	1afb      	subs	r3, r7, r3
 8004cfc:	441a      	add	r2, r3
 8004cfe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d02:	2700      	movs	r7, #0
 8004d04:	e512      	b.n	800472c <_dtoa_r+0x5d4>
 8004d06:	2b00      	cmp	r3, #0
 8004d08:	9402      	str	r4, [sp, #8]
 8004d0a:	465e      	mov	r6, fp
 8004d0c:	f107 0401 	add.w	r4, r7, #1
 8004d10:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d14:	f300 80ba 	bgt.w	8004e8c <_dtoa_r+0xd34>
 8004d18:	9b00      	ldr	r3, [sp, #0]
 8004d1a:	9502      	str	r5, [sp, #8]
 8004d1c:	703b      	strb	r3, [r7, #0]
 8004d1e:	4645      	mov	r5, r8
 8004d20:	e660      	b.n	80049e4 <_dtoa_r+0x88c>
 8004d22:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d26:	2602      	movs	r6, #2
 8004d28:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d2c:	f7ff bb67 	b.w	80043fe <_dtoa_r+0x2a6>
 8004d30:	9b00      	ldr	r3, [sp, #0]
 8004d32:	2b39      	cmp	r3, #57	; 0x39
 8004d34:	465e      	mov	r6, fp
 8004d36:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d3a:	f000 80b9 	beq.w	8004eb0 <_dtoa_r+0xd58>
 8004d3e:	9b00      	ldr	r3, [sp, #0]
 8004d40:	9502      	str	r5, [sp, #8]
 8004d42:	3301      	adds	r3, #1
 8004d44:	703b      	strb	r3, [r7, #0]
 8004d46:	4645      	mov	r5, r8
 8004d48:	e64c      	b.n	80049e4 <_dtoa_r+0x88c>
 8004d4a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d4e:	1a9c      	subs	r4, r3, r2
 8004d50:	e4f5      	b.n	800473e <_dtoa_r+0x5e6>
 8004d52:	465e      	mov	r6, fp
 8004d54:	9502      	str	r5, [sp, #8]
 8004d56:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d5a:	4645      	mov	r5, r8
 8004d5c:	e61a      	b.n	8004994 <_dtoa_r+0x83c>
 8004d5e:	2600      	movs	r6, #0
 8004d60:	4635      	mov	r5, r6
 8004d62:	e708      	b.n	8004b76 <_dtoa_r+0xa1e>
 8004d64:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d68:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d6c:	f7fb fc04 	bl	8000578 <__aeabi_dmul>
 8004d70:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d72:	f88b 5000 	strb.w	r5, [fp]
 8004d76:	2b01      	cmp	r3, #1
 8004d78:	e9cd 0100 	strd	r0, r1, [sp]
 8004d7c:	d020      	beq.n	8004dc0 <_dtoa_r+0xc68>
 8004d7e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d80:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d84:	445b      	add	r3, fp
 8004d86:	4698      	mov	r8, r3
 8004d88:	2200      	movs	r2, #0
 8004d8a:	4b2c      	ldr	r3, [pc, #176]	; (8004e3c <_dtoa_r+0xce4>)
 8004d8c:	4630      	mov	r0, r6
 8004d8e:	4639      	mov	r1, r7
 8004d90:	f7fb fbf2 	bl	8000578 <__aeabi_dmul>
 8004d94:	460f      	mov	r7, r1
 8004d96:	4606      	mov	r6, r0
 8004d98:	f7fc f9c8 	bl	800112c <__aeabi_d2iz>
 8004d9c:	4605      	mov	r5, r0
 8004d9e:	f7fb fb81 	bl	80004a4 <__aeabi_i2d>
 8004da2:	3530      	adds	r5, #48	; 0x30
 8004da4:	4602      	mov	r2, r0
 8004da6:	460b      	mov	r3, r1
 8004da8:	4630      	mov	r0, r6
 8004daa:	4639      	mov	r1, r7
 8004dac:	f7fb fa2c 	bl	8000208 <__aeabi_dsub>
 8004db0:	f804 5b01 	strb.w	r5, [r4], #1
 8004db4:	4544      	cmp	r4, r8
 8004db6:	4606      	mov	r6, r0
 8004db8:	460f      	mov	r7, r1
 8004dba:	d1e5      	bne.n	8004d88 <_dtoa_r+0xc30>
 8004dbc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004dc0:	4b1f      	ldr	r3, [pc, #124]	; (8004e40 <_dtoa_r+0xce8>)
 8004dc2:	2200      	movs	r2, #0
 8004dc4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dc8:	f7fb fa20 	bl	800020c <__adddf3>
 8004dcc:	4632      	mov	r2, r6
 8004dce:	463b      	mov	r3, r7
 8004dd0:	f7fb fe44 	bl	8000a5c <__aeabi_dcmplt>
 8004dd4:	2800      	cmp	r0, #0
 8004dd6:	d070      	beq.n	8004eba <_dtoa_r+0xd62>
 8004dd8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004dda:	9306      	str	r3, [sp, #24]
 8004ddc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004de0:	e48f      	b.n	8004702 <_dtoa_r+0x5aa>
 8004de2:	2330      	movs	r3, #48	; 0x30
 8004de4:	f88b 3000 	strb.w	r3, [fp]
 8004de8:	9b06      	ldr	r3, [sp, #24]
 8004dea:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004dee:	3301      	adds	r3, #1
 8004df0:	9306      	str	r3, [sp, #24]
 8004df2:	465b      	mov	r3, fp
 8004df4:	e489      	b.n	800470a <_dtoa_r+0x5b2>
 8004df6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004df8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004dfc:	e6a0      	b.n	8004b40 <_dtoa_r+0x9e8>
 8004dfe:	2300      	movs	r3, #0
 8004e00:	e676      	b.n	8004af0 <_dtoa_r+0x998>
 8004e02:	4631      	mov	r1, r6
 8004e04:	2205      	movs	r2, #5
 8004e06:	4648      	mov	r0, r9
 8004e08:	f001 f8cc 	bl	8005fa4 <__multadd>
 8004e0c:	4601      	mov	r1, r0
 8004e0e:	4606      	mov	r6, r0
 8004e10:	4650      	mov	r0, sl
 8004e12:	f001 faad 	bl	8006370 <__mcmp>
 8004e16:	2800      	cmp	r0, #0
 8004e18:	f73f aead 	bgt.w	8004b76 <_dtoa_r+0xa1e>
 8004e1c:	e722      	b.n	8004c64 <_dtoa_r+0xb0c>
 8004e1e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e22:	2602      	movs	r6, #2
 8004e24:	ed8d 7b00 	vstr	d7, [sp]
 8004e28:	f7ff bb02 	b.w	8004430 <_dtoa_r+0x2d8>
 8004e2c:	40140000 	.word	0x40140000
 8004e30:	080071e0 	.word	0x080071e0
 8004e34:	080071b8 	.word	0x080071b8
 8004e38:	401c0000 	.word	0x401c0000
 8004e3c:	40240000 	.word	0x40240000
 8004e40:	3fe00000 	.word	0x3fe00000
 8004e44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e46:	2b00      	cmp	r3, #0
 8004e48:	f43f af1d 	beq.w	8004c86 <_dtoa_r+0xb2e>
 8004e4c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e4e:	2c00      	cmp	r4, #0
 8004e50:	f77f aba8 	ble.w	80045a4 <_dtoa_r+0x44c>
 8004e54:	2200      	movs	r2, #0
 8004e56:	4b45      	ldr	r3, [pc, #276]	; (8004f6c <_dtoa_r+0xe14>)
 8004e58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e5c:	f7fb fb8c 	bl	8000578 <__aeabi_dmul>
 8004e60:	e9cd 0100 	strd	r0, r1, [sp]
 8004e64:	1c70      	adds	r0, r6, #1
 8004e66:	f7fb fb1d 	bl	80004a4 <__aeabi_i2d>
 8004e6a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e6e:	f7fb fb83 	bl	8000578 <__aeabi_dmul>
 8004e72:	4b3f      	ldr	r3, [pc, #252]	; (8004f70 <_dtoa_r+0xe18>)
 8004e74:	2200      	movs	r2, #0
 8004e76:	f7fb f9c9 	bl	800020c <__adddf3>
 8004e7a:	9b06      	ldr	r3, [sp, #24]
 8004e7c:	9412      	str	r4, [sp, #72]	; 0x48
 8004e7e:	3b01      	subs	r3, #1
 8004e80:	4606      	mov	r6, r0
 8004e82:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e86:	9316      	str	r3, [sp, #88]	; 0x58
 8004e88:	f7ff baf3 	b.w	8004472 <_dtoa_r+0x31a>
 8004e8c:	4651      	mov	r1, sl
 8004e8e:	2201      	movs	r2, #1
 8004e90:	4648      	mov	r0, r9
 8004e92:	f001 fa17 	bl	80062c4 <__lshift>
 8004e96:	4631      	mov	r1, r6
 8004e98:	4682      	mov	sl, r0
 8004e9a:	f001 fa69 	bl	8006370 <__mcmp>
 8004e9e:	2800      	cmp	r0, #0
 8004ea0:	dd3b      	ble.n	8004f1a <_dtoa_r+0xdc2>
 8004ea2:	9b00      	ldr	r3, [sp, #0]
 8004ea4:	2b39      	cmp	r3, #57	; 0x39
 8004ea6:	d003      	beq.n	8004eb0 <_dtoa_r+0xd58>
 8004ea8:	9b02      	ldr	r3, [sp, #8]
 8004eaa:	3331      	adds	r3, #49	; 0x31
 8004eac:	9300      	str	r3, [sp, #0]
 8004eae:	e733      	b.n	8004d18 <_dtoa_r+0xbc0>
 8004eb0:	2239      	movs	r2, #57	; 0x39
 8004eb2:	9502      	str	r5, [sp, #8]
 8004eb4:	703a      	strb	r2, [r7, #0]
 8004eb6:	4645      	mov	r5, r8
 8004eb8:	e58e      	b.n	80049d8 <_dtoa_r+0x880>
 8004eba:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ebe:	2000      	movs	r0, #0
 8004ec0:	492c      	ldr	r1, [pc, #176]	; (8004f74 <_dtoa_r+0xe1c>)
 8004ec2:	f7fb f9a1 	bl	8000208 <__aeabi_dsub>
 8004ec6:	4632      	mov	r2, r6
 8004ec8:	463b      	mov	r3, r7
 8004eca:	f7fb fde5 	bl	8000a98 <__aeabi_dcmpgt>
 8004ece:	b910      	cbnz	r0, 8004ed6 <_dtoa_r+0xd7e>
 8004ed0:	f7ff bb68 	b.w	80045a4 <_dtoa_r+0x44c>
 8004ed4:	4614      	mov	r4, r2
 8004ed6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004eda:	2b30      	cmp	r3, #48	; 0x30
 8004edc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004ee0:	d0f8      	beq.n	8004ed4 <_dtoa_r+0xd7c>
 8004ee2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ee4:	9306      	str	r3, [sp, #24]
 8004ee6:	e58d      	b.n	8004a04 <_dtoa_r+0x8ac>
 8004ee8:	46d9      	mov	r9, fp
 8004eea:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004eee:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ef2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ef4:	9306      	str	r3, [sp, #24]
 8004ef6:	e404      	b.n	8004702 <_dtoa_r+0x5aa>
 8004ef8:	9b00      	ldr	r3, [sp, #0]
 8004efa:	2b39      	cmp	r3, #57	; 0x39
 8004efc:	4621      	mov	r1, r4
 8004efe:	4632      	mov	r2, r6
 8004f00:	f107 0401 	add.w	r4, r7, #1
 8004f04:	465e      	mov	r6, fp
 8004f06:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f0a:	d0d1      	beq.n	8004eb0 <_dtoa_r+0xd58>
 8004f0c:	2a00      	cmp	r2, #0
 8004f0e:	f77f af03 	ble.w	8004d18 <_dtoa_r+0xbc0>
 8004f12:	460b      	mov	r3, r1
 8004f14:	3331      	adds	r3, #49	; 0x31
 8004f16:	9300      	str	r3, [sp, #0]
 8004f18:	e6fe      	b.n	8004d18 <_dtoa_r+0xbc0>
 8004f1a:	f47f aefd 	bne.w	8004d18 <_dtoa_r+0xbc0>
 8004f1e:	9b00      	ldr	r3, [sp, #0]
 8004f20:	07da      	lsls	r2, r3, #31
 8004f22:	f57f aef9 	bpl.w	8004d18 <_dtoa_r+0xbc0>
 8004f26:	e7bc      	b.n	8004ea2 <_dtoa_r+0xd4a>
 8004f28:	4629      	mov	r1, r5
 8004f2a:	2300      	movs	r3, #0
 8004f2c:	220a      	movs	r2, #10
 8004f2e:	4648      	mov	r0, r9
 8004f30:	f001 f838 	bl	8005fa4 <__multadd>
 8004f34:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f36:	2b00      	cmp	r3, #0
 8004f38:	4605      	mov	r5, r0
 8004f3a:	dd09      	ble.n	8004f50 <_dtoa_r+0xdf8>
 8004f3c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f3e:	e484      	b.n	800484a <_dtoa_r+0x6f2>
 8004f40:	9b02      	ldr	r3, [sp, #8]
 8004f42:	2b02      	cmp	r3, #2
 8004f44:	dc0e      	bgt.n	8004f64 <_dtoa_r+0xe0c>
 8004f46:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f48:	e507      	b.n	800495a <_dtoa_r+0x802>
 8004f4a:	2602      	movs	r6, #2
 8004f4c:	f7ff ba70 	b.w	8004430 <_dtoa_r+0x2d8>
 8004f50:	9b02      	ldr	r3, [sp, #8]
 8004f52:	2b02      	cmp	r3, #2
 8004f54:	dc06      	bgt.n	8004f64 <_dtoa_r+0xe0c>
 8004f56:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f58:	e7f0      	b.n	8004f3c <_dtoa_r+0xde4>
 8004f5a:	f43f ac59 	beq.w	8004810 <_dtoa_r+0x6b8>
 8004f5e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f62:	e450      	b.n	8004806 <_dtoa_r+0x6ae>
 8004f64:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f66:	9309      	str	r3, [sp, #36]	; 0x24
 8004f68:	e678      	b.n	8004c5c <_dtoa_r+0xb04>
 8004f6a:	bf00      	nop
 8004f6c:	40240000 	.word	0x40240000
 8004f70:	401c0000 	.word	0x401c0000
 8004f74:	3fe00000 	.word	0x3fe00000

08004f78 <__sflush_r>:
 8004f78:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f7c:	b29a      	uxth	r2, r3
 8004f7e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f82:	460c      	mov	r4, r1
 8004f84:	0711      	lsls	r1, r2, #28
 8004f86:	4680      	mov	r8, r0
 8004f88:	d444      	bmi.n	8005014 <__sflush_r+0x9c>
 8004f8a:	6862      	ldr	r2, [r4, #4]
 8004f8c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f90:	2a00      	cmp	r2, #0
 8004f92:	81a3      	strh	r3, [r4, #12]
 8004f94:	dd59      	ble.n	800504a <__sflush_r+0xd2>
 8004f96:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f98:	2d00      	cmp	r5, #0
 8004f9a:	d053      	beq.n	8005044 <__sflush_r+0xcc>
 8004f9c:	2200      	movs	r2, #0
 8004f9e:	b29b      	uxth	r3, r3
 8004fa0:	f8d8 6000 	ldr.w	r6, [r8]
 8004fa4:	69e1      	ldr	r1, [r4, #28]
 8004fa6:	f8c8 2000 	str.w	r2, [r8]
 8004faa:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004fae:	f040 8083 	bne.w	80050b8 <__sflush_r+0x140>
 8004fb2:	2301      	movs	r3, #1
 8004fb4:	4640      	mov	r0, r8
 8004fb6:	47a8      	blx	r5
 8004fb8:	1c42      	adds	r2, r0, #1
 8004fba:	d04a      	beq.n	8005052 <__sflush_r+0xda>
 8004fbc:	89a3      	ldrh	r3, [r4, #12]
 8004fbe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fc0:	69e1      	ldr	r1, [r4, #28]
 8004fc2:	075b      	lsls	r3, r3, #29
 8004fc4:	d505      	bpl.n	8004fd2 <__sflush_r+0x5a>
 8004fc6:	6862      	ldr	r2, [r4, #4]
 8004fc8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004fca:	1a80      	subs	r0, r0, r2
 8004fcc:	b10b      	cbz	r3, 8004fd2 <__sflush_r+0x5a>
 8004fce:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004fd0:	1ac0      	subs	r0, r0, r3
 8004fd2:	4602      	mov	r2, r0
 8004fd4:	2300      	movs	r3, #0
 8004fd6:	4640      	mov	r0, r8
 8004fd8:	47a8      	blx	r5
 8004fda:	1c47      	adds	r7, r0, #1
 8004fdc:	d045      	beq.n	800506a <__sflush_r+0xf2>
 8004fde:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004fe2:	6922      	ldr	r2, [r4, #16]
 8004fe4:	6022      	str	r2, [r4, #0]
 8004fe6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004fea:	2200      	movs	r2, #0
 8004fec:	81a3      	strh	r3, [r4, #12]
 8004fee:	04db      	lsls	r3, r3, #19
 8004ff0:	6062      	str	r2, [r4, #4]
 8004ff2:	d500      	bpl.n	8004ff6 <__sflush_r+0x7e>
 8004ff4:	6520      	str	r0, [r4, #80]	; 0x50
 8004ff6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004ff8:	f8c8 6000 	str.w	r6, [r8]
 8004ffc:	b311      	cbz	r1, 8005044 <__sflush_r+0xcc>
 8004ffe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005002:	4299      	cmp	r1, r3
 8005004:	d002      	beq.n	800500c <__sflush_r+0x94>
 8005006:	4640      	mov	r0, r8
 8005008:	f000 f95e 	bl	80052c8 <_free_r>
 800500c:	2000      	movs	r0, #0
 800500e:	6320      	str	r0, [r4, #48]	; 0x30
 8005010:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005014:	6926      	ldr	r6, [r4, #16]
 8005016:	b1ae      	cbz	r6, 8005044 <__sflush_r+0xcc>
 8005018:	6825      	ldr	r5, [r4, #0]
 800501a:	6026      	str	r6, [r4, #0]
 800501c:	0792      	lsls	r2, r2, #30
 800501e:	bf0c      	ite	eq
 8005020:	6963      	ldreq	r3, [r4, #20]
 8005022:	2300      	movne	r3, #0
 8005024:	1bad      	subs	r5, r5, r6
 8005026:	60a3      	str	r3, [r4, #8]
 8005028:	e00a      	b.n	8005040 <__sflush_r+0xc8>
 800502a:	462b      	mov	r3, r5
 800502c:	4632      	mov	r2, r6
 800502e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005030:	69e1      	ldr	r1, [r4, #28]
 8005032:	4640      	mov	r0, r8
 8005034:	47b8      	blx	r7
 8005036:	2800      	cmp	r0, #0
 8005038:	eba5 0500 	sub.w	r5, r5, r0
 800503c:	4406      	add	r6, r0
 800503e:	dd2b      	ble.n	8005098 <__sflush_r+0x120>
 8005040:	2d00      	cmp	r5, #0
 8005042:	dcf2      	bgt.n	800502a <__sflush_r+0xb2>
 8005044:	2000      	movs	r0, #0
 8005046:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800504a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800504c:	2a00      	cmp	r2, #0
 800504e:	dca2      	bgt.n	8004f96 <__sflush_r+0x1e>
 8005050:	e7f8      	b.n	8005044 <__sflush_r+0xcc>
 8005052:	f8d8 3000 	ldr.w	r3, [r8]
 8005056:	2b00      	cmp	r3, #0
 8005058:	d0b0      	beq.n	8004fbc <__sflush_r+0x44>
 800505a:	2b1d      	cmp	r3, #29
 800505c:	d001      	beq.n	8005062 <__sflush_r+0xea>
 800505e:	2b16      	cmp	r3, #22
 8005060:	d12c      	bne.n	80050bc <__sflush_r+0x144>
 8005062:	f8c8 6000 	str.w	r6, [r8]
 8005066:	2000      	movs	r0, #0
 8005068:	e7ed      	b.n	8005046 <__sflush_r+0xce>
 800506a:	f8d8 1000 	ldr.w	r1, [r8]
 800506e:	291d      	cmp	r1, #29
 8005070:	d81a      	bhi.n	80050a8 <__sflush_r+0x130>
 8005072:	4b15      	ldr	r3, [pc, #84]	; (80050c8 <__sflush_r+0x150>)
 8005074:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005078:	40cb      	lsrs	r3, r1
 800507a:	43db      	mvns	r3, r3
 800507c:	f013 0301 	ands.w	r3, r3, #1
 8005080:	d114      	bne.n	80050ac <__sflush_r+0x134>
 8005082:	6925      	ldr	r5, [r4, #16]
 8005084:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005088:	e9c4 5300 	strd	r5, r3, [r4]
 800508c:	04d5      	lsls	r5, r2, #19
 800508e:	81a2      	strh	r2, [r4, #12]
 8005090:	d5b1      	bpl.n	8004ff6 <__sflush_r+0x7e>
 8005092:	2900      	cmp	r1, #0
 8005094:	d1af      	bne.n	8004ff6 <__sflush_r+0x7e>
 8005096:	e7ad      	b.n	8004ff4 <__sflush_r+0x7c>
 8005098:	89a3      	ldrh	r3, [r4, #12]
 800509a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800509e:	81a3      	strh	r3, [r4, #12]
 80050a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050b0:	81a2      	strh	r2, [r4, #12]
 80050b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050b6:	e7c6      	b.n	8005046 <__sflush_r+0xce>
 80050b8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050ba:	e782      	b.n	8004fc2 <__sflush_r+0x4a>
 80050bc:	89a3      	ldrh	r3, [r4, #12]
 80050be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050c2:	81a3      	strh	r3, [r4, #12]
 80050c4:	e7bf      	b.n	8005046 <__sflush_r+0xce>
 80050c6:	bf00      	nop
 80050c8:	20400001 	.word	0x20400001

080050cc <_fflush_r>:
 80050cc:	b538      	push	{r3, r4, r5, lr}
 80050ce:	460d      	mov	r5, r1
 80050d0:	4604      	mov	r4, r0
 80050d2:	b108      	cbz	r0, 80050d8 <_fflush_r+0xc>
 80050d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80050d6:	b1a3      	cbz	r3, 8005102 <_fflush_r+0x36>
 80050d8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050dc:	b1b8      	cbz	r0, 800510e <_fflush_r+0x42>
 80050de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050e0:	07db      	lsls	r3, r3, #31
 80050e2:	d401      	bmi.n	80050e8 <_fflush_r+0x1c>
 80050e4:	0581      	lsls	r1, r0, #22
 80050e6:	d51a      	bpl.n	800511e <_fflush_r+0x52>
 80050e8:	4620      	mov	r0, r4
 80050ea:	4629      	mov	r1, r5
 80050ec:	f7ff ff44 	bl	8004f78 <__sflush_r>
 80050f0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050f2:	07da      	lsls	r2, r3, #31
 80050f4:	4604      	mov	r4, r0
 80050f6:	d402      	bmi.n	80050fe <_fflush_r+0x32>
 80050f8:	89ab      	ldrh	r3, [r5, #12]
 80050fa:	059b      	lsls	r3, r3, #22
 80050fc:	d50a      	bpl.n	8005114 <_fflush_r+0x48>
 80050fe:	4620      	mov	r0, r4
 8005100:	bd38      	pop	{r3, r4, r5, pc}
 8005102:	f000 f83f 	bl	8005184 <__sinit>
 8005106:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800510a:	2800      	cmp	r0, #0
 800510c:	d1e7      	bne.n	80050de <_fflush_r+0x12>
 800510e:	4604      	mov	r4, r0
 8005110:	4620      	mov	r0, r4
 8005112:	bd38      	pop	{r3, r4, r5, pc}
 8005114:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005116:	f000 fb87 	bl	8005828 <__retarget_lock_release_recursive>
 800511a:	4620      	mov	r0, r4
 800511c:	bd38      	pop	{r3, r4, r5, pc}
 800511e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005120:	f000 fb80 	bl	8005824 <__retarget_lock_acquire_recursive>
 8005124:	e7e0      	b.n	80050e8 <_fflush_r+0x1c>
 8005126:	bf00      	nop

08005128 <std>:
 8005128:	b510      	push	{r4, lr}
 800512a:	2300      	movs	r3, #0
 800512c:	4604      	mov	r4, r0
 800512e:	8181      	strh	r1, [r0, #12]
 8005130:	81c2      	strh	r2, [r0, #14]
 8005132:	e9c0 3300 	strd	r3, r3, [r0]
 8005136:	6083      	str	r3, [r0, #8]
 8005138:	6643      	str	r3, [r0, #100]	; 0x64
 800513a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800513e:	6183      	str	r3, [r0, #24]
 8005140:	4619      	mov	r1, r3
 8005142:	2208      	movs	r2, #8
 8005144:	305c      	adds	r0, #92	; 0x5c
 8005146:	f7fd f8cb 	bl	80022e0 <memset>
 800514a:	4807      	ldr	r0, [pc, #28]	; (8005168 <std+0x40>)
 800514c:	4907      	ldr	r1, [pc, #28]	; (800516c <std+0x44>)
 800514e:	4a08      	ldr	r2, [pc, #32]	; (8005170 <std+0x48>)
 8005150:	4b08      	ldr	r3, [pc, #32]	; (8005174 <std+0x4c>)
 8005152:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005154:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005158:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800515c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005160:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005164:	f000 bb5a 	b.w	800581c <__retarget_lock_init_recursive>
 8005168:	08006941 	.word	0x08006941
 800516c:	08006965 	.word	0x08006965
 8005170:	080069a1 	.word	0x080069a1
 8005174:	080069c1 	.word	0x080069c1

08005178 <_cleanup_r>:
 8005178:	4901      	ldr	r1, [pc, #4]	; (8005180 <_cleanup_r+0x8>)
 800517a:	f000 bb17 	b.w	80057ac <_fwalk_reent>
 800517e:	bf00      	nop
 8005180:	08006c31 	.word	0x08006c31

08005184 <__sinit>:
 8005184:	b510      	push	{r4, lr}
 8005186:	4604      	mov	r4, r0
 8005188:	4812      	ldr	r0, [pc, #72]	; (80051d4 <__sinit+0x50>)
 800518a:	f000 fb4b 	bl	8005824 <__retarget_lock_acquire_recursive>
 800518e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005190:	b9d2      	cbnz	r2, 80051c8 <__sinit+0x44>
 8005192:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005196:	4810      	ldr	r0, [pc, #64]	; (80051d8 <__sinit+0x54>)
 8005198:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800519c:	2103      	movs	r1, #3
 800519e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80051a2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80051a4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051a8:	6860      	ldr	r0, [r4, #4]
 80051aa:	2104      	movs	r1, #4
 80051ac:	f7ff ffbc 	bl	8005128 <std>
 80051b0:	2201      	movs	r2, #1
 80051b2:	2109      	movs	r1, #9
 80051b4:	68a0      	ldr	r0, [r4, #8]
 80051b6:	f7ff ffb7 	bl	8005128 <std>
 80051ba:	2202      	movs	r2, #2
 80051bc:	2112      	movs	r1, #18
 80051be:	68e0      	ldr	r0, [r4, #12]
 80051c0:	f7ff ffb2 	bl	8005128 <std>
 80051c4:	2301      	movs	r3, #1
 80051c6:	63a3      	str	r3, [r4, #56]	; 0x38
 80051c8:	4802      	ldr	r0, [pc, #8]	; (80051d4 <__sinit+0x50>)
 80051ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051ce:	f000 bb2b 	b.w	8005828 <__retarget_lock_release_recursive>
 80051d2:	bf00      	nop
 80051d4:	20000af4 	.word	0x20000af4
 80051d8:	08005179 	.word	0x08005179

080051dc <__sfp_lock_acquire>:
 80051dc:	4801      	ldr	r0, [pc, #4]	; (80051e4 <__sfp_lock_acquire+0x8>)
 80051de:	f000 bb21 	b.w	8005824 <__retarget_lock_acquire_recursive>
 80051e2:	bf00      	nop
 80051e4:	20000b08 	.word	0x20000b08

080051e8 <__sfp_lock_release>:
 80051e8:	4801      	ldr	r0, [pc, #4]	; (80051f0 <__sfp_lock_release+0x8>)
 80051ea:	f000 bb1d 	b.w	8005828 <__retarget_lock_release_recursive>
 80051ee:	bf00      	nop
 80051f0:	20000b08 	.word	0x20000b08

080051f4 <__libc_fini_array>:
 80051f4:	b538      	push	{r3, r4, r5, lr}
 80051f6:	4c0a      	ldr	r4, [pc, #40]	; (8005220 <__libc_fini_array+0x2c>)
 80051f8:	4d0a      	ldr	r5, [pc, #40]	; (8005224 <__libc_fini_array+0x30>)
 80051fa:	1b64      	subs	r4, r4, r5
 80051fc:	10a4      	asrs	r4, r4, #2
 80051fe:	d00a      	beq.n	8005216 <__libc_fini_array+0x22>
 8005200:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005204:	3b01      	subs	r3, #1
 8005206:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800520a:	3c01      	subs	r4, #1
 800520c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005210:	4798      	blx	r3
 8005212:	2c00      	cmp	r4, #0
 8005214:	d1f9      	bne.n	800520a <__libc_fini_array+0x16>
 8005216:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800521a:	f001 befd 	b.w	8007018 <_fini>
 800521e:	bf00      	nop
 8005220:	080073dc 	.word	0x080073dc
 8005224:	080073d8 	.word	0x080073d8

08005228 <_malloc_trim_r>:
 8005228:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800522a:	4f24      	ldr	r7, [pc, #144]	; (80052bc <_malloc_trim_r+0x94>)
 800522c:	460c      	mov	r4, r1
 800522e:	4606      	mov	r6, r0
 8005230:	f000 fe7c 	bl	8005f2c <__malloc_lock>
 8005234:	68bb      	ldr	r3, [r7, #8]
 8005236:	685d      	ldr	r5, [r3, #4]
 8005238:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800523c:	310f      	adds	r1, #15
 800523e:	f025 0503 	bic.w	r5, r5, #3
 8005242:	4429      	add	r1, r5
 8005244:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005248:	f021 010f 	bic.w	r1, r1, #15
 800524c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005250:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005254:	db07      	blt.n	8005266 <_malloc_trim_r+0x3e>
 8005256:	2100      	movs	r1, #0
 8005258:	4630      	mov	r0, r6
 800525a:	f001 fb5f 	bl	800691c <_sbrk_r>
 800525e:	68bb      	ldr	r3, [r7, #8]
 8005260:	442b      	add	r3, r5
 8005262:	4298      	cmp	r0, r3
 8005264:	d004      	beq.n	8005270 <_malloc_trim_r+0x48>
 8005266:	4630      	mov	r0, r6
 8005268:	f000 fe66 	bl	8005f38 <__malloc_unlock>
 800526c:	2000      	movs	r0, #0
 800526e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005270:	4261      	negs	r1, r4
 8005272:	4630      	mov	r0, r6
 8005274:	f001 fb52 	bl	800691c <_sbrk_r>
 8005278:	3001      	adds	r0, #1
 800527a:	d00d      	beq.n	8005298 <_malloc_trim_r+0x70>
 800527c:	4b10      	ldr	r3, [pc, #64]	; (80052c0 <_malloc_trim_r+0x98>)
 800527e:	68ba      	ldr	r2, [r7, #8]
 8005280:	6819      	ldr	r1, [r3, #0]
 8005282:	1b2d      	subs	r5, r5, r4
 8005284:	f045 0501 	orr.w	r5, r5, #1
 8005288:	4630      	mov	r0, r6
 800528a:	1b09      	subs	r1, r1, r4
 800528c:	6055      	str	r5, [r2, #4]
 800528e:	6019      	str	r1, [r3, #0]
 8005290:	f000 fe52 	bl	8005f38 <__malloc_unlock>
 8005294:	2001      	movs	r0, #1
 8005296:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005298:	2100      	movs	r1, #0
 800529a:	4630      	mov	r0, r6
 800529c:	f001 fb3e 	bl	800691c <_sbrk_r>
 80052a0:	68ba      	ldr	r2, [r7, #8]
 80052a2:	1a83      	subs	r3, r0, r2
 80052a4:	2b0f      	cmp	r3, #15
 80052a6:	ddde      	ble.n	8005266 <_malloc_trim_r+0x3e>
 80052a8:	4c06      	ldr	r4, [pc, #24]	; (80052c4 <_malloc_trim_r+0x9c>)
 80052aa:	4905      	ldr	r1, [pc, #20]	; (80052c0 <_malloc_trim_r+0x98>)
 80052ac:	6824      	ldr	r4, [r4, #0]
 80052ae:	f043 0301 	orr.w	r3, r3, #1
 80052b2:	1b00      	subs	r0, r0, r4
 80052b4:	6053      	str	r3, [r2, #4]
 80052b6:	6008      	str	r0, [r1, #0]
 80052b8:	e7d5      	b.n	8005266 <_malloc_trim_r+0x3e>
 80052ba:	bf00      	nop
 80052bc:	2000044c 	.word	0x2000044c
 80052c0:	20000a6c 	.word	0x20000a6c
 80052c4:	20000854 	.word	0x20000854

080052c8 <_free_r>:
 80052c8:	2900      	cmp	r1, #0
 80052ca:	d053      	beq.n	8005374 <_free_r+0xac>
 80052cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052ce:	460c      	mov	r4, r1
 80052d0:	4606      	mov	r6, r0
 80052d2:	f000 fe2b 	bl	8005f2c <__malloc_lock>
 80052d6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80052da:	4f71      	ldr	r7, [pc, #452]	; (80054a0 <_free_r+0x1d8>)
 80052dc:	f02c 0101 	bic.w	r1, ip, #1
 80052e0:	f1a4 0508 	sub.w	r5, r4, #8
 80052e4:	186b      	adds	r3, r5, r1
 80052e6:	68b8      	ldr	r0, [r7, #8]
 80052e8:	685a      	ldr	r2, [r3, #4]
 80052ea:	4298      	cmp	r0, r3
 80052ec:	f022 0203 	bic.w	r2, r2, #3
 80052f0:	d053      	beq.n	800539a <_free_r+0xd2>
 80052f2:	f01c 0f01 	tst.w	ip, #1
 80052f6:	605a      	str	r2, [r3, #4]
 80052f8:	eb03 0002 	add.w	r0, r3, r2
 80052fc:	d13b      	bne.n	8005376 <_free_r+0xae>
 80052fe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005302:	6840      	ldr	r0, [r0, #4]
 8005304:	eba5 050c 	sub.w	r5, r5, ip
 8005308:	f107 0e08 	add.w	lr, r7, #8
 800530c:	68ac      	ldr	r4, [r5, #8]
 800530e:	4574      	cmp	r4, lr
 8005310:	4461      	add	r1, ip
 8005312:	f000 0001 	and.w	r0, r0, #1
 8005316:	d075      	beq.n	8005404 <_free_r+0x13c>
 8005318:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800531c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005320:	f8cc 4008 	str.w	r4, [ip, #8]
 8005324:	b360      	cbz	r0, 8005380 <_free_r+0xb8>
 8005326:	f041 0301 	orr.w	r3, r1, #1
 800532a:	606b      	str	r3, [r5, #4]
 800532c:	5069      	str	r1, [r5, r1]
 800532e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005332:	d350      	bcc.n	80053d6 <_free_r+0x10e>
 8005334:	0a4b      	lsrs	r3, r1, #9
 8005336:	2b04      	cmp	r3, #4
 8005338:	d870      	bhi.n	800541c <_free_r+0x154>
 800533a:	098b      	lsrs	r3, r1, #6
 800533c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005340:	00e4      	lsls	r4, r4, #3
 8005342:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005346:	1938      	adds	r0, r7, r4
 8005348:	593b      	ldr	r3, [r7, r4]
 800534a:	3808      	subs	r0, #8
 800534c:	4298      	cmp	r0, r3
 800534e:	d078      	beq.n	8005442 <_free_r+0x17a>
 8005350:	685a      	ldr	r2, [r3, #4]
 8005352:	f022 0203 	bic.w	r2, r2, #3
 8005356:	428a      	cmp	r2, r1
 8005358:	d971      	bls.n	800543e <_free_r+0x176>
 800535a:	689b      	ldr	r3, [r3, #8]
 800535c:	4298      	cmp	r0, r3
 800535e:	d1f7      	bne.n	8005350 <_free_r+0x88>
 8005360:	68c3      	ldr	r3, [r0, #12]
 8005362:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005366:	609d      	str	r5, [r3, #8]
 8005368:	60c5      	str	r5, [r0, #12]
 800536a:	4630      	mov	r0, r6
 800536c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005370:	f000 bde2 	b.w	8005f38 <__malloc_unlock>
 8005374:	4770      	bx	lr
 8005376:	6840      	ldr	r0, [r0, #4]
 8005378:	f000 0001 	and.w	r0, r0, #1
 800537c:	2800      	cmp	r0, #0
 800537e:	d1d2      	bne.n	8005326 <_free_r+0x5e>
 8005380:	6898      	ldr	r0, [r3, #8]
 8005382:	4c48      	ldr	r4, [pc, #288]	; (80054a4 <_free_r+0x1dc>)
 8005384:	4411      	add	r1, r2
 8005386:	42a0      	cmp	r0, r4
 8005388:	f041 0201 	orr.w	r2, r1, #1
 800538c:	d062      	beq.n	8005454 <_free_r+0x18c>
 800538e:	68db      	ldr	r3, [r3, #12]
 8005390:	60c3      	str	r3, [r0, #12]
 8005392:	6098      	str	r0, [r3, #8]
 8005394:	606a      	str	r2, [r5, #4]
 8005396:	5069      	str	r1, [r5, r1]
 8005398:	e7c9      	b.n	800532e <_free_r+0x66>
 800539a:	f01c 0f01 	tst.w	ip, #1
 800539e:	440a      	add	r2, r1
 80053a0:	d107      	bne.n	80053b2 <_free_r+0xea>
 80053a2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80053a6:	1aed      	subs	r5, r5, r3
 80053a8:	441a      	add	r2, r3
 80053aa:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053ae:	60cb      	str	r3, [r1, #12]
 80053b0:	6099      	str	r1, [r3, #8]
 80053b2:	4b3d      	ldr	r3, [pc, #244]	; (80054a8 <_free_r+0x1e0>)
 80053b4:	681b      	ldr	r3, [r3, #0]
 80053b6:	f042 0101 	orr.w	r1, r2, #1
 80053ba:	4293      	cmp	r3, r2
 80053bc:	6069      	str	r1, [r5, #4]
 80053be:	60bd      	str	r5, [r7, #8]
 80053c0:	d804      	bhi.n	80053cc <_free_r+0x104>
 80053c2:	4b3a      	ldr	r3, [pc, #232]	; (80054ac <_free_r+0x1e4>)
 80053c4:	4630      	mov	r0, r6
 80053c6:	6819      	ldr	r1, [r3, #0]
 80053c8:	f7ff ff2e 	bl	8005228 <_malloc_trim_r>
 80053cc:	4630      	mov	r0, r6
 80053ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053d2:	f000 bdb1 	b.w	8005f38 <__malloc_unlock>
 80053d6:	08c9      	lsrs	r1, r1, #3
 80053d8:	6878      	ldr	r0, [r7, #4]
 80053da:	1c4a      	adds	r2, r1, #1
 80053dc:	2301      	movs	r3, #1
 80053de:	1089      	asrs	r1, r1, #2
 80053e0:	408b      	lsls	r3, r1
 80053e2:	4303      	orrs	r3, r0
 80053e4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80053e8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80053ec:	607b      	str	r3, [r7, #4]
 80053ee:	3908      	subs	r1, #8
 80053f0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80053f4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80053f8:	60c5      	str	r5, [r0, #12]
 80053fa:	4630      	mov	r0, r6
 80053fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005400:	f000 bd9a 	b.w	8005f38 <__malloc_unlock>
 8005404:	2800      	cmp	r0, #0
 8005406:	d145      	bne.n	8005494 <_free_r+0x1cc>
 8005408:	440a      	add	r2, r1
 800540a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800540e:	f042 0001 	orr.w	r0, r2, #1
 8005412:	60cb      	str	r3, [r1, #12]
 8005414:	6099      	str	r1, [r3, #8]
 8005416:	6068      	str	r0, [r5, #4]
 8005418:	50aa      	str	r2, [r5, r2]
 800541a:	e7d7      	b.n	80053cc <_free_r+0x104>
 800541c:	2b14      	cmp	r3, #20
 800541e:	d908      	bls.n	8005432 <_free_r+0x16a>
 8005420:	2b54      	cmp	r3, #84	; 0x54
 8005422:	d81e      	bhi.n	8005462 <_free_r+0x19a>
 8005424:	0b0b      	lsrs	r3, r1, #12
 8005426:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800542a:	00e4      	lsls	r4, r4, #3
 800542c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005430:	e789      	b.n	8005346 <_free_r+0x7e>
 8005432:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005436:	00e4      	lsls	r4, r4, #3
 8005438:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800543c:	e783      	b.n	8005346 <_free_r+0x7e>
 800543e:	4618      	mov	r0, r3
 8005440:	e78e      	b.n	8005360 <_free_r+0x98>
 8005442:	1093      	asrs	r3, r2, #2
 8005444:	6879      	ldr	r1, [r7, #4]
 8005446:	2201      	movs	r2, #1
 8005448:	fa02 f303 	lsl.w	r3, r2, r3
 800544c:	430b      	orrs	r3, r1
 800544e:	607b      	str	r3, [r7, #4]
 8005450:	4603      	mov	r3, r0
 8005452:	e786      	b.n	8005362 <_free_r+0x9a>
 8005454:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005458:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800545c:	606a      	str	r2, [r5, #4]
 800545e:	5069      	str	r1, [r5, r1]
 8005460:	e7b4      	b.n	80053cc <_free_r+0x104>
 8005462:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005466:	d806      	bhi.n	8005476 <_free_r+0x1ae>
 8005468:	0bcb      	lsrs	r3, r1, #15
 800546a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800546e:	00e4      	lsls	r4, r4, #3
 8005470:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005474:	e767      	b.n	8005346 <_free_r+0x7e>
 8005476:	f240 5254 	movw	r2, #1364	; 0x554
 800547a:	4293      	cmp	r3, r2
 800547c:	d806      	bhi.n	800548c <_free_r+0x1c4>
 800547e:	0c8b      	lsrs	r3, r1, #18
 8005480:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005484:	00e4      	lsls	r4, r4, #3
 8005486:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800548a:	e75c      	b.n	8005346 <_free_r+0x7e>
 800548c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005490:	227e      	movs	r2, #126	; 0x7e
 8005492:	e758      	b.n	8005346 <_free_r+0x7e>
 8005494:	f041 0201 	orr.w	r2, r1, #1
 8005498:	606a      	str	r2, [r5, #4]
 800549a:	6019      	str	r1, [r3, #0]
 800549c:	e796      	b.n	80053cc <_free_r+0x104>
 800549e:	bf00      	nop
 80054a0:	2000044c 	.word	0x2000044c
 80054a4:	20000454 	.word	0x20000454
 80054a8:	20000858 	.word	0x20000858
 80054ac:	20000a9c 	.word	0x20000a9c

080054b0 <__sfvwrite_r>:
 80054b0:	6893      	ldr	r3, [r2, #8]
 80054b2:	2b00      	cmp	r3, #0
 80054b4:	f000 80e4 	beq.w	8005680 <__sfvwrite_r+0x1d0>
 80054b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054bc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054c0:	b29b      	uxth	r3, r3
 80054c2:	460c      	mov	r4, r1
 80054c4:	0719      	lsls	r1, r3, #28
 80054c6:	b083      	sub	sp, #12
 80054c8:	4682      	mov	sl, r0
 80054ca:	4690      	mov	r8, r2
 80054cc:	d535      	bpl.n	800553a <__sfvwrite_r+0x8a>
 80054ce:	6922      	ldr	r2, [r4, #16]
 80054d0:	b39a      	cbz	r2, 800553a <__sfvwrite_r+0x8a>
 80054d2:	f013 0202 	ands.w	r2, r3, #2
 80054d6:	f8d8 6000 	ldr.w	r6, [r8]
 80054da:	d03d      	beq.n	8005558 <__sfvwrite_r+0xa8>
 80054dc:	2700      	movs	r7, #0
 80054de:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054e2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054e6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057a8 <__sfvwrite_r+0x2f8>
 80054ea:	463d      	mov	r5, r7
 80054ec:	454d      	cmp	r5, r9
 80054ee:	462b      	mov	r3, r5
 80054f0:	463a      	mov	r2, r7
 80054f2:	bf28      	it	cs
 80054f4:	464b      	movcs	r3, r9
 80054f6:	4661      	mov	r1, ip
 80054f8:	4650      	mov	r0, sl
 80054fa:	b1d5      	cbz	r5, 8005532 <__sfvwrite_r+0x82>
 80054fc:	47d8      	blx	fp
 80054fe:	2800      	cmp	r0, #0
 8005500:	f340 80c6 	ble.w	8005690 <__sfvwrite_r+0x1e0>
 8005504:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005508:	1a1b      	subs	r3, r3, r0
 800550a:	4407      	add	r7, r0
 800550c:	1a2d      	subs	r5, r5, r0
 800550e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005512:	2b00      	cmp	r3, #0
 8005514:	f000 80b0 	beq.w	8005678 <__sfvwrite_r+0x1c8>
 8005518:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800551c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005520:	454d      	cmp	r5, r9
 8005522:	462b      	mov	r3, r5
 8005524:	463a      	mov	r2, r7
 8005526:	bf28      	it	cs
 8005528:	464b      	movcs	r3, r9
 800552a:	4661      	mov	r1, ip
 800552c:	4650      	mov	r0, sl
 800552e:	2d00      	cmp	r5, #0
 8005530:	d1e4      	bne.n	80054fc <__sfvwrite_r+0x4c>
 8005532:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005536:	3608      	adds	r6, #8
 8005538:	e7d8      	b.n	80054ec <__sfvwrite_r+0x3c>
 800553a:	4621      	mov	r1, r4
 800553c:	4650      	mov	r0, sl
 800553e:	f7fe fd03 	bl	8003f48 <__swsetup_r>
 8005542:	2800      	cmp	r0, #0
 8005544:	f040 812a 	bne.w	800579c <__sfvwrite_r+0x2ec>
 8005548:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800554c:	f8d8 6000 	ldr.w	r6, [r8]
 8005550:	b29b      	uxth	r3, r3
 8005552:	f013 0202 	ands.w	r2, r3, #2
 8005556:	d1c1      	bne.n	80054dc <__sfvwrite_r+0x2c>
 8005558:	f013 0901 	ands.w	r9, r3, #1
 800555c:	d15d      	bne.n	800561a <__sfvwrite_r+0x16a>
 800555e:	68a7      	ldr	r7, [r4, #8]
 8005560:	6820      	ldr	r0, [r4, #0]
 8005562:	464d      	mov	r5, r9
 8005564:	2d00      	cmp	r5, #0
 8005566:	d054      	beq.n	8005612 <__sfvwrite_r+0x162>
 8005568:	059a      	lsls	r2, r3, #22
 800556a:	f140 809b 	bpl.w	80056a4 <__sfvwrite_r+0x1f4>
 800556e:	42af      	cmp	r7, r5
 8005570:	46bb      	mov	fp, r7
 8005572:	f200 80d8 	bhi.w	8005726 <__sfvwrite_r+0x276>
 8005576:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800557a:	d02f      	beq.n	80055dc <__sfvwrite_r+0x12c>
 800557c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005580:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005584:	eba0 0b01 	sub.w	fp, r0, r1
 8005588:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800558c:	1c68      	adds	r0, r5, #1
 800558e:	107f      	asrs	r7, r7, #1
 8005590:	4458      	add	r0, fp
 8005592:	42b8      	cmp	r0, r7
 8005594:	463a      	mov	r2, r7
 8005596:	bf84      	itt	hi
 8005598:	4607      	movhi	r7, r0
 800559a:	463a      	movhi	r2, r7
 800559c:	055b      	lsls	r3, r3, #21
 800559e:	f140 80d3 	bpl.w	8005748 <__sfvwrite_r+0x298>
 80055a2:	4611      	mov	r1, r2
 80055a4:	4650      	mov	r0, sl
 80055a6:	f000 f9b9 	bl	800591c <_malloc_r>
 80055aa:	2800      	cmp	r0, #0
 80055ac:	f000 80f0 	beq.w	8005790 <__sfvwrite_r+0x2e0>
 80055b0:	465a      	mov	r2, fp
 80055b2:	6921      	ldr	r1, [r4, #16]
 80055b4:	9001      	str	r0, [sp, #4]
 80055b6:	f7fb fc49 	bl	8000e4c <memcpy>
 80055ba:	89a2      	ldrh	r2, [r4, #12]
 80055bc:	9b01      	ldr	r3, [sp, #4]
 80055be:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80055c2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80055c6:	81a2      	strh	r2, [r4, #12]
 80055c8:	eba7 020b 	sub.w	r2, r7, fp
 80055cc:	eb03 000b 	add.w	r0, r3, fp
 80055d0:	6167      	str	r7, [r4, #20]
 80055d2:	6123      	str	r3, [r4, #16]
 80055d4:	6020      	str	r0, [r4, #0]
 80055d6:	60a2      	str	r2, [r4, #8]
 80055d8:	462f      	mov	r7, r5
 80055da:	46ab      	mov	fp, r5
 80055dc:	465a      	mov	r2, fp
 80055de:	4649      	mov	r1, r9
 80055e0:	f000 fc40 	bl	8005e64 <memmove>
 80055e4:	68a2      	ldr	r2, [r4, #8]
 80055e6:	6823      	ldr	r3, [r4, #0]
 80055e8:	1bd2      	subs	r2, r2, r7
 80055ea:	445b      	add	r3, fp
 80055ec:	462f      	mov	r7, r5
 80055ee:	60a2      	str	r2, [r4, #8]
 80055f0:	6023      	str	r3, [r4, #0]
 80055f2:	2500      	movs	r5, #0
 80055f4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055f8:	1bdb      	subs	r3, r3, r7
 80055fa:	44b9      	add	r9, r7
 80055fc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005600:	2b00      	cmp	r3, #0
 8005602:	d039      	beq.n	8005678 <__sfvwrite_r+0x1c8>
 8005604:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005608:	68a7      	ldr	r7, [r4, #8]
 800560a:	6820      	ldr	r0, [r4, #0]
 800560c:	b29b      	uxth	r3, r3
 800560e:	2d00      	cmp	r5, #0
 8005610:	d1aa      	bne.n	8005568 <__sfvwrite_r+0xb8>
 8005612:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005616:	3608      	adds	r6, #8
 8005618:	e7a4      	b.n	8005564 <__sfvwrite_r+0xb4>
 800561a:	4633      	mov	r3, r6
 800561c:	4691      	mov	r9, r2
 800561e:	4610      	mov	r0, r2
 8005620:	4617      	mov	r7, r2
 8005622:	464e      	mov	r6, r9
 8005624:	469b      	mov	fp, r3
 8005626:	2f00      	cmp	r7, #0
 8005628:	d06b      	beq.n	8005702 <__sfvwrite_r+0x252>
 800562a:	2800      	cmp	r0, #0
 800562c:	d071      	beq.n	8005712 <__sfvwrite_r+0x262>
 800562e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005632:	6820      	ldr	r0, [r4, #0]
 8005634:	45b9      	cmp	r9, r7
 8005636:	464b      	mov	r3, r9
 8005638:	bf28      	it	cs
 800563a:	463b      	movcs	r3, r7
 800563c:	4288      	cmp	r0, r1
 800563e:	d903      	bls.n	8005648 <__sfvwrite_r+0x198>
 8005640:	68a5      	ldr	r5, [r4, #8]
 8005642:	4415      	add	r5, r2
 8005644:	42ab      	cmp	r3, r5
 8005646:	dc71      	bgt.n	800572c <__sfvwrite_r+0x27c>
 8005648:	429a      	cmp	r2, r3
 800564a:	f300 8093 	bgt.w	8005774 <__sfvwrite_r+0x2c4>
 800564e:	4613      	mov	r3, r2
 8005650:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005652:	69e1      	ldr	r1, [r4, #28]
 8005654:	4632      	mov	r2, r6
 8005656:	4650      	mov	r0, sl
 8005658:	47a8      	blx	r5
 800565a:	1e05      	subs	r5, r0, #0
 800565c:	dd18      	ble.n	8005690 <__sfvwrite_r+0x1e0>
 800565e:	ebb9 0905 	subs.w	r9, r9, r5
 8005662:	d00f      	beq.n	8005684 <__sfvwrite_r+0x1d4>
 8005664:	2001      	movs	r0, #1
 8005666:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800566a:	1b5b      	subs	r3, r3, r5
 800566c:	442e      	add	r6, r5
 800566e:	1b7f      	subs	r7, r7, r5
 8005670:	f8c8 3008 	str.w	r3, [r8, #8]
 8005674:	2b00      	cmp	r3, #0
 8005676:	d1d6      	bne.n	8005626 <__sfvwrite_r+0x176>
 8005678:	2000      	movs	r0, #0
 800567a:	b003      	add	sp, #12
 800567c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005680:	2000      	movs	r0, #0
 8005682:	4770      	bx	lr
 8005684:	4621      	mov	r1, r4
 8005686:	4650      	mov	r0, sl
 8005688:	f7ff fd20 	bl	80050cc <_fflush_r>
 800568c:	2800      	cmp	r0, #0
 800568e:	d0ea      	beq.n	8005666 <__sfvwrite_r+0x1b6>
 8005690:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005694:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005698:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800569c:	81a3      	strh	r3, [r4, #12]
 800569e:	b003      	add	sp, #12
 80056a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056a4:	6923      	ldr	r3, [r4, #16]
 80056a6:	4283      	cmp	r3, r0
 80056a8:	d315      	bcc.n	80056d6 <__sfvwrite_r+0x226>
 80056aa:	6961      	ldr	r1, [r4, #20]
 80056ac:	42a9      	cmp	r1, r5
 80056ae:	d812      	bhi.n	80056d6 <__sfvwrite_r+0x226>
 80056b0:	4b3c      	ldr	r3, [pc, #240]	; (80057a4 <__sfvwrite_r+0x2f4>)
 80056b2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056b4:	429d      	cmp	r5, r3
 80056b6:	bf94      	ite	ls
 80056b8:	462b      	movls	r3, r5
 80056ba:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056be:	464a      	mov	r2, r9
 80056c0:	fb93 f3f1 	sdiv	r3, r3, r1
 80056c4:	4650      	mov	r0, sl
 80056c6:	fb01 f303 	mul.w	r3, r1, r3
 80056ca:	69e1      	ldr	r1, [r4, #28]
 80056cc:	47b8      	blx	r7
 80056ce:	1e07      	subs	r7, r0, #0
 80056d0:	ddde      	ble.n	8005690 <__sfvwrite_r+0x1e0>
 80056d2:	1bed      	subs	r5, r5, r7
 80056d4:	e78e      	b.n	80055f4 <__sfvwrite_r+0x144>
 80056d6:	42af      	cmp	r7, r5
 80056d8:	bf28      	it	cs
 80056da:	462f      	movcs	r7, r5
 80056dc:	463a      	mov	r2, r7
 80056de:	4649      	mov	r1, r9
 80056e0:	f000 fbc0 	bl	8005e64 <memmove>
 80056e4:	68a3      	ldr	r3, [r4, #8]
 80056e6:	6822      	ldr	r2, [r4, #0]
 80056e8:	1bdb      	subs	r3, r3, r7
 80056ea:	443a      	add	r2, r7
 80056ec:	60a3      	str	r3, [r4, #8]
 80056ee:	6022      	str	r2, [r4, #0]
 80056f0:	2b00      	cmp	r3, #0
 80056f2:	d1ee      	bne.n	80056d2 <__sfvwrite_r+0x222>
 80056f4:	4621      	mov	r1, r4
 80056f6:	4650      	mov	r0, sl
 80056f8:	f7ff fce8 	bl	80050cc <_fflush_r>
 80056fc:	2800      	cmp	r0, #0
 80056fe:	d0e8      	beq.n	80056d2 <__sfvwrite_r+0x222>
 8005700:	e7c6      	b.n	8005690 <__sfvwrite_r+0x1e0>
 8005702:	f10b 0308 	add.w	r3, fp, #8
 8005706:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800570a:	469b      	mov	fp, r3
 800570c:	3308      	adds	r3, #8
 800570e:	2f00      	cmp	r7, #0
 8005710:	d0f9      	beq.n	8005706 <__sfvwrite_r+0x256>
 8005712:	463a      	mov	r2, r7
 8005714:	210a      	movs	r1, #10
 8005716:	4630      	mov	r0, r6
 8005718:	f7fb fca2 	bl	8001060 <memchr>
 800571c:	b338      	cbz	r0, 800576e <__sfvwrite_r+0x2be>
 800571e:	3001      	adds	r0, #1
 8005720:	eba0 0906 	sub.w	r9, r0, r6
 8005724:	e783      	b.n	800562e <__sfvwrite_r+0x17e>
 8005726:	462f      	mov	r7, r5
 8005728:	46ab      	mov	fp, r5
 800572a:	e757      	b.n	80055dc <__sfvwrite_r+0x12c>
 800572c:	4631      	mov	r1, r6
 800572e:	462a      	mov	r2, r5
 8005730:	f000 fb98 	bl	8005e64 <memmove>
 8005734:	6823      	ldr	r3, [r4, #0]
 8005736:	442b      	add	r3, r5
 8005738:	6023      	str	r3, [r4, #0]
 800573a:	4621      	mov	r1, r4
 800573c:	4650      	mov	r0, sl
 800573e:	f7ff fcc5 	bl	80050cc <_fflush_r>
 8005742:	2800      	cmp	r0, #0
 8005744:	d08b      	beq.n	800565e <__sfvwrite_r+0x1ae>
 8005746:	e7a3      	b.n	8005690 <__sfvwrite_r+0x1e0>
 8005748:	4650      	mov	r0, sl
 800574a:	f000 ff05 	bl	8006558 <_realloc_r>
 800574e:	4603      	mov	r3, r0
 8005750:	2800      	cmp	r0, #0
 8005752:	f47f af39 	bne.w	80055c8 <__sfvwrite_r+0x118>
 8005756:	6921      	ldr	r1, [r4, #16]
 8005758:	4650      	mov	r0, sl
 800575a:	f7ff fdb5 	bl	80052c8 <_free_r>
 800575e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005762:	220c      	movs	r2, #12
 8005764:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005768:	f8ca 2000 	str.w	r2, [sl]
 800576c:	e792      	b.n	8005694 <__sfvwrite_r+0x1e4>
 800576e:	f107 0901 	add.w	r9, r7, #1
 8005772:	e75c      	b.n	800562e <__sfvwrite_r+0x17e>
 8005774:	461a      	mov	r2, r3
 8005776:	4631      	mov	r1, r6
 8005778:	9301      	str	r3, [sp, #4]
 800577a:	f000 fb73 	bl	8005e64 <memmove>
 800577e:	9b01      	ldr	r3, [sp, #4]
 8005780:	68a1      	ldr	r1, [r4, #8]
 8005782:	6822      	ldr	r2, [r4, #0]
 8005784:	1ac9      	subs	r1, r1, r3
 8005786:	441a      	add	r2, r3
 8005788:	60a1      	str	r1, [r4, #8]
 800578a:	6022      	str	r2, [r4, #0]
 800578c:	461d      	mov	r5, r3
 800578e:	e766      	b.n	800565e <__sfvwrite_r+0x1ae>
 8005790:	230c      	movs	r3, #12
 8005792:	f8ca 3000 	str.w	r3, [sl]
 8005796:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800579a:	e77b      	b.n	8005694 <__sfvwrite_r+0x1e4>
 800579c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057a0:	e76b      	b.n	800567a <__sfvwrite_r+0x1ca>
 80057a2:	bf00      	nop
 80057a4:	7ffffffe 	.word	0x7ffffffe
 80057a8:	7ffffc00 	.word	0x7ffffc00

080057ac <_fwalk_reent>:
 80057ac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057b0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057b4:	d01f      	beq.n	80057f6 <_fwalk_reent+0x4a>
 80057b6:	4688      	mov	r8, r1
 80057b8:	4606      	mov	r6, r0
 80057ba:	f04f 0900 	mov.w	r9, #0
 80057be:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80057c2:	3d01      	subs	r5, #1
 80057c4:	d411      	bmi.n	80057ea <_fwalk_reent+0x3e>
 80057c6:	89a3      	ldrh	r3, [r4, #12]
 80057c8:	2b01      	cmp	r3, #1
 80057ca:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80057ce:	4621      	mov	r1, r4
 80057d0:	4630      	mov	r0, r6
 80057d2:	d906      	bls.n	80057e2 <_fwalk_reent+0x36>
 80057d4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80057d8:	3301      	adds	r3, #1
 80057da:	d002      	beq.n	80057e2 <_fwalk_reent+0x36>
 80057dc:	47c0      	blx	r8
 80057de:	ea49 0900 	orr.w	r9, r9, r0
 80057e2:	1c6b      	adds	r3, r5, #1
 80057e4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80057e8:	d1ed      	bne.n	80057c6 <_fwalk_reent+0x1a>
 80057ea:	683f      	ldr	r7, [r7, #0]
 80057ec:	2f00      	cmp	r7, #0
 80057ee:	d1e6      	bne.n	80057be <_fwalk_reent+0x12>
 80057f0:	4648      	mov	r0, r9
 80057f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057f6:	46b9      	mov	r9, r7
 80057f8:	4648      	mov	r0, r9
 80057fa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057fe:	bf00      	nop

08005800 <_localeconv_r>:
 8005800:	4a04      	ldr	r2, [pc, #16]	; (8005814 <_localeconv_r+0x14>)
 8005802:	4b05      	ldr	r3, [pc, #20]	; (8005818 <_localeconv_r+0x18>)
 8005804:	6812      	ldr	r2, [r2, #0]
 8005806:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005808:	2800      	cmp	r0, #0
 800580a:	bf08      	it	eq
 800580c:	4618      	moveq	r0, r3
 800580e:	30f0      	adds	r0, #240	; 0xf0
 8005810:	4770      	bx	lr
 8005812:	bf00      	nop
 8005814:	20000018 	.word	0x20000018
 8005818:	2000085c 	.word	0x2000085c

0800581c <__retarget_lock_init_recursive>:
 800581c:	4770      	bx	lr
 800581e:	bf00      	nop

08005820 <__retarget_lock_close_recursive>:
 8005820:	4770      	bx	lr
 8005822:	bf00      	nop

08005824 <__retarget_lock_acquire_recursive>:
 8005824:	4770      	bx	lr
 8005826:	bf00      	nop

08005828 <__retarget_lock_release_recursive>:
 8005828:	4770      	bx	lr
 800582a:	bf00      	nop

0800582c <__swhatbuf_r>:
 800582c:	b570      	push	{r4, r5, r6, lr}
 800582e:	460c      	mov	r4, r1
 8005830:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005834:	2900      	cmp	r1, #0
 8005836:	b096      	sub	sp, #88	; 0x58
 8005838:	4615      	mov	r5, r2
 800583a:	461e      	mov	r6, r3
 800583c:	da0f      	bge.n	800585e <__swhatbuf_r+0x32>
 800583e:	89a2      	ldrh	r2, [r4, #12]
 8005840:	2300      	movs	r3, #0
 8005842:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005846:	6033      	str	r3, [r6, #0]
 8005848:	d104      	bne.n	8005854 <__swhatbuf_r+0x28>
 800584a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800584e:	602b      	str	r3, [r5, #0]
 8005850:	b016      	add	sp, #88	; 0x58
 8005852:	bd70      	pop	{r4, r5, r6, pc}
 8005854:	2240      	movs	r2, #64	; 0x40
 8005856:	4618      	mov	r0, r3
 8005858:	602a      	str	r2, [r5, #0]
 800585a:	b016      	add	sp, #88	; 0x58
 800585c:	bd70      	pop	{r4, r5, r6, pc}
 800585e:	466a      	mov	r2, sp
 8005860:	f001 fad0 	bl	8006e04 <_fstat_r>
 8005864:	2800      	cmp	r0, #0
 8005866:	dbea      	blt.n	800583e <__swhatbuf_r+0x12>
 8005868:	9b01      	ldr	r3, [sp, #4]
 800586a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800586e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005872:	fab3 f383 	clz	r3, r3
 8005876:	095b      	lsrs	r3, r3, #5
 8005878:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800587c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005880:	6033      	str	r3, [r6, #0]
 8005882:	602a      	str	r2, [r5, #0]
 8005884:	b016      	add	sp, #88	; 0x58
 8005886:	bd70      	pop	{r4, r5, r6, pc}

08005888 <__smakebuf_r>:
 8005888:	898a      	ldrh	r2, [r1, #12]
 800588a:	0792      	lsls	r2, r2, #30
 800588c:	460b      	mov	r3, r1
 800588e:	d506      	bpl.n	800589e <__smakebuf_r+0x16>
 8005890:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005894:	2101      	movs	r1, #1
 8005896:	601a      	str	r2, [r3, #0]
 8005898:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800589c:	4770      	bx	lr
 800589e:	b570      	push	{r4, r5, r6, lr}
 80058a0:	b082      	sub	sp, #8
 80058a2:	ab01      	add	r3, sp, #4
 80058a4:	466a      	mov	r2, sp
 80058a6:	460c      	mov	r4, r1
 80058a8:	4605      	mov	r5, r0
 80058aa:	f7ff ffbf 	bl	800582c <__swhatbuf_r>
 80058ae:	9900      	ldr	r1, [sp, #0]
 80058b0:	4606      	mov	r6, r0
 80058b2:	4628      	mov	r0, r5
 80058b4:	f000 f832 	bl	800591c <_malloc_r>
 80058b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058bc:	b1d8      	cbz	r0, 80058f6 <__smakebuf_r+0x6e>
 80058be:	4916      	ldr	r1, [pc, #88]	; (8005918 <__smakebuf_r+0x90>)
 80058c0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80058c2:	9a01      	ldr	r2, [sp, #4]
 80058c4:	9900      	ldr	r1, [sp, #0]
 80058c6:	6020      	str	r0, [r4, #0]
 80058c8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80058cc:	81a3      	strh	r3, [r4, #12]
 80058ce:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80058d2:	b91a      	cbnz	r2, 80058dc <__smakebuf_r+0x54>
 80058d4:	4333      	orrs	r3, r6
 80058d6:	81a3      	strh	r3, [r4, #12]
 80058d8:	b002      	add	sp, #8
 80058da:	bd70      	pop	{r4, r5, r6, pc}
 80058dc:	4628      	mov	r0, r5
 80058de:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80058e2:	f001 faa3 	bl	8006e2c <_isatty_r>
 80058e6:	b1a0      	cbz	r0, 8005912 <__smakebuf_r+0x8a>
 80058e8:	89a3      	ldrh	r3, [r4, #12]
 80058ea:	f023 0303 	bic.w	r3, r3, #3
 80058ee:	f043 0301 	orr.w	r3, r3, #1
 80058f2:	b21b      	sxth	r3, r3
 80058f4:	e7ee      	b.n	80058d4 <__smakebuf_r+0x4c>
 80058f6:	059a      	lsls	r2, r3, #22
 80058f8:	d4ee      	bmi.n	80058d8 <__smakebuf_r+0x50>
 80058fa:	f023 0303 	bic.w	r3, r3, #3
 80058fe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005902:	f043 0302 	orr.w	r3, r3, #2
 8005906:	2101      	movs	r1, #1
 8005908:	81a3      	strh	r3, [r4, #12]
 800590a:	6022      	str	r2, [r4, #0]
 800590c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005910:	e7e2      	b.n	80058d8 <__smakebuf_r+0x50>
 8005912:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005916:	e7dd      	b.n	80058d4 <__smakebuf_r+0x4c>
 8005918:	08005179 	.word	0x08005179

0800591c <_malloc_r>:
 800591c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005920:	f101 050b 	add.w	r5, r1, #11
 8005924:	2d16      	cmp	r5, #22
 8005926:	b083      	sub	sp, #12
 8005928:	4606      	mov	r6, r0
 800592a:	d823      	bhi.n	8005974 <_malloc_r+0x58>
 800592c:	2910      	cmp	r1, #16
 800592e:	f200 80b9 	bhi.w	8005aa4 <_malloc_r+0x188>
 8005932:	f000 fafb 	bl	8005f2c <__malloc_lock>
 8005936:	2510      	movs	r5, #16
 8005938:	2318      	movs	r3, #24
 800593a:	2002      	movs	r0, #2
 800593c:	4fc5      	ldr	r7, [pc, #788]	; (8005c54 <_malloc_r+0x338>)
 800593e:	443b      	add	r3, r7
 8005940:	f1a3 0208 	sub.w	r2, r3, #8
 8005944:	685c      	ldr	r4, [r3, #4]
 8005946:	4294      	cmp	r4, r2
 8005948:	f000 8166 	beq.w	8005c18 <_malloc_r+0x2fc>
 800594c:	6863      	ldr	r3, [r4, #4]
 800594e:	f023 0303 	bic.w	r3, r3, #3
 8005952:	4423      	add	r3, r4
 8005954:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005958:	685a      	ldr	r2, [r3, #4]
 800595a:	60e9      	str	r1, [r5, #12]
 800595c:	f042 0201 	orr.w	r2, r2, #1
 8005960:	608d      	str	r5, [r1, #8]
 8005962:	4630      	mov	r0, r6
 8005964:	605a      	str	r2, [r3, #4]
 8005966:	f000 fae7 	bl	8005f38 <__malloc_unlock>
 800596a:	3408      	adds	r4, #8
 800596c:	4620      	mov	r0, r4
 800596e:	b003      	add	sp, #12
 8005970:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005974:	f035 0507 	bics.w	r5, r5, #7
 8005978:	f100 8094 	bmi.w	8005aa4 <_malloc_r+0x188>
 800597c:	42a9      	cmp	r1, r5
 800597e:	f200 8091 	bhi.w	8005aa4 <_malloc_r+0x188>
 8005982:	f000 fad3 	bl	8005f2c <__malloc_lock>
 8005986:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800598a:	f0c0 8183 	bcc.w	8005c94 <_malloc_r+0x378>
 800598e:	0a6b      	lsrs	r3, r5, #9
 8005990:	f000 808f 	beq.w	8005ab2 <_malloc_r+0x196>
 8005994:	2b04      	cmp	r3, #4
 8005996:	f200 8146 	bhi.w	8005c26 <_malloc_r+0x30a>
 800599a:	09ab      	lsrs	r3, r5, #6
 800599c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80059a0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80059a4:	00c3      	lsls	r3, r0, #3
 80059a6:	4fab      	ldr	r7, [pc, #684]	; (8005c54 <_malloc_r+0x338>)
 80059a8:	443b      	add	r3, r7
 80059aa:	f1a3 0108 	sub.w	r1, r3, #8
 80059ae:	685c      	ldr	r4, [r3, #4]
 80059b0:	42a1      	cmp	r1, r4
 80059b2:	d106      	bne.n	80059c2 <_malloc_r+0xa6>
 80059b4:	e00c      	b.n	80059d0 <_malloc_r+0xb4>
 80059b6:	2a00      	cmp	r2, #0
 80059b8:	f280 811d 	bge.w	8005bf6 <_malloc_r+0x2da>
 80059bc:	68e4      	ldr	r4, [r4, #12]
 80059be:	42a1      	cmp	r1, r4
 80059c0:	d006      	beq.n	80059d0 <_malloc_r+0xb4>
 80059c2:	6863      	ldr	r3, [r4, #4]
 80059c4:	f023 0303 	bic.w	r3, r3, #3
 80059c8:	1b5a      	subs	r2, r3, r5
 80059ca:	2a0f      	cmp	r2, #15
 80059cc:	ddf3      	ble.n	80059b6 <_malloc_r+0x9a>
 80059ce:	4660      	mov	r0, ip
 80059d0:	693c      	ldr	r4, [r7, #16]
 80059d2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c68 <_malloc_r+0x34c>
 80059d6:	4564      	cmp	r4, ip
 80059d8:	d071      	beq.n	8005abe <_malloc_r+0x1a2>
 80059da:	6863      	ldr	r3, [r4, #4]
 80059dc:	f023 0303 	bic.w	r3, r3, #3
 80059e0:	1b5a      	subs	r2, r3, r5
 80059e2:	2a0f      	cmp	r2, #15
 80059e4:	f300 8144 	bgt.w	8005c70 <_malloc_r+0x354>
 80059e8:	2a00      	cmp	r2, #0
 80059ea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80059ee:	f280 8126 	bge.w	8005c3e <_malloc_r+0x322>
 80059f2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80059f6:	f080 8169 	bcs.w	8005ccc <_malloc_r+0x3b0>
 80059fa:	08db      	lsrs	r3, r3, #3
 80059fc:	1c59      	adds	r1, r3, #1
 80059fe:	687a      	ldr	r2, [r7, #4]
 8005a00:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a04:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a08:	f04f 0e01 	mov.w	lr, #1
 8005a0c:	109b      	asrs	r3, r3, #2
 8005a0e:	fa0e f303 	lsl.w	r3, lr, r3
 8005a12:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a16:	4313      	orrs	r3, r2
 8005a18:	f1ae 0208 	sub.w	r2, lr, #8
 8005a1c:	60e2      	str	r2, [r4, #12]
 8005a1e:	607b      	str	r3, [r7, #4]
 8005a20:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a24:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a28:	1082      	asrs	r2, r0, #2
 8005a2a:	2401      	movs	r4, #1
 8005a2c:	4094      	lsls	r4, r2
 8005a2e:	429c      	cmp	r4, r3
 8005a30:	d84b      	bhi.n	8005aca <_malloc_r+0x1ae>
 8005a32:	421c      	tst	r4, r3
 8005a34:	d106      	bne.n	8005a44 <_malloc_r+0x128>
 8005a36:	f020 0003 	bic.w	r0, r0, #3
 8005a3a:	0064      	lsls	r4, r4, #1
 8005a3c:	421c      	tst	r4, r3
 8005a3e:	f100 0004 	add.w	r0, r0, #4
 8005a42:	d0fa      	beq.n	8005a3a <_malloc_r+0x11e>
 8005a44:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a48:	46ce      	mov	lr, r9
 8005a4a:	4680      	mov	r8, r0
 8005a4c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a50:	459e      	cmp	lr, r3
 8005a52:	d107      	bne.n	8005a64 <_malloc_r+0x148>
 8005a54:	e122      	b.n	8005c9c <_malloc_r+0x380>
 8005a56:	2a00      	cmp	r2, #0
 8005a58:	f280 8129 	bge.w	8005cae <_malloc_r+0x392>
 8005a5c:	68db      	ldr	r3, [r3, #12]
 8005a5e:	459e      	cmp	lr, r3
 8005a60:	f000 811c 	beq.w	8005c9c <_malloc_r+0x380>
 8005a64:	6859      	ldr	r1, [r3, #4]
 8005a66:	f021 0103 	bic.w	r1, r1, #3
 8005a6a:	1b4a      	subs	r2, r1, r5
 8005a6c:	2a0f      	cmp	r2, #15
 8005a6e:	ddf2      	ble.n	8005a56 <_malloc_r+0x13a>
 8005a70:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a74:	195c      	adds	r4, r3, r5
 8005a76:	f045 0501 	orr.w	r5, r5, #1
 8005a7a:	605d      	str	r5, [r3, #4]
 8005a7c:	f042 0501 	orr.w	r5, r2, #1
 8005a80:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a84:	4630      	mov	r0, r6
 8005a86:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a8a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a8e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a92:	6065      	str	r5, [r4, #4]
 8005a94:	505a      	str	r2, [r3, r1]
 8005a96:	9301      	str	r3, [sp, #4]
 8005a98:	f000 fa4e 	bl	8005f38 <__malloc_unlock>
 8005a9c:	9b01      	ldr	r3, [sp, #4]
 8005a9e:	f103 0408 	add.w	r4, r3, #8
 8005aa2:	e763      	b.n	800596c <_malloc_r+0x50>
 8005aa4:	2400      	movs	r4, #0
 8005aa6:	230c      	movs	r3, #12
 8005aa8:	4620      	mov	r0, r4
 8005aaa:	6033      	str	r3, [r6, #0]
 8005aac:	b003      	add	sp, #12
 8005aae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ab2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005ab6:	2040      	movs	r0, #64	; 0x40
 8005ab8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005abc:	e773      	b.n	80059a6 <_malloc_r+0x8a>
 8005abe:	687b      	ldr	r3, [r7, #4]
 8005ac0:	1082      	asrs	r2, r0, #2
 8005ac2:	2401      	movs	r4, #1
 8005ac4:	4094      	lsls	r4, r2
 8005ac6:	429c      	cmp	r4, r3
 8005ac8:	d9b3      	bls.n	8005a32 <_malloc_r+0x116>
 8005aca:	68bc      	ldr	r4, [r7, #8]
 8005acc:	6863      	ldr	r3, [r4, #4]
 8005ace:	f023 0903 	bic.w	r9, r3, #3
 8005ad2:	45a9      	cmp	r9, r5
 8005ad4:	d303      	bcc.n	8005ade <_malloc_r+0x1c2>
 8005ad6:	eba9 0305 	sub.w	r3, r9, r5
 8005ada:	2b0f      	cmp	r3, #15
 8005adc:	dc7b      	bgt.n	8005bd6 <_malloc_r+0x2ba>
 8005ade:	4b5e      	ldr	r3, [pc, #376]	; (8005c58 <_malloc_r+0x33c>)
 8005ae0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c6c <_malloc_r+0x350>
 8005ae4:	681a      	ldr	r2, [r3, #0]
 8005ae6:	f8da 3000 	ldr.w	r3, [sl]
 8005aea:	3301      	adds	r3, #1
 8005aec:	eb05 0802 	add.w	r8, r5, r2
 8005af0:	f000 8148 	beq.w	8005d84 <_malloc_r+0x468>
 8005af4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005af8:	f108 080f 	add.w	r8, r8, #15
 8005afc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b00:	f028 080f 	bic.w	r8, r8, #15
 8005b04:	4641      	mov	r1, r8
 8005b06:	4630      	mov	r0, r6
 8005b08:	f000 ff08 	bl	800691c <_sbrk_r>
 8005b0c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b10:	4683      	mov	fp, r0
 8005b12:	f000 8104 	beq.w	8005d1e <_malloc_r+0x402>
 8005b16:	eb04 0009 	add.w	r0, r4, r9
 8005b1a:	4558      	cmp	r0, fp
 8005b1c:	f200 80fd 	bhi.w	8005d1a <_malloc_r+0x3fe>
 8005b20:	4a4e      	ldr	r2, [pc, #312]	; (8005c5c <_malloc_r+0x340>)
 8005b22:	6813      	ldr	r3, [r2, #0]
 8005b24:	4443      	add	r3, r8
 8005b26:	6013      	str	r3, [r2, #0]
 8005b28:	f000 814d 	beq.w	8005dc6 <_malloc_r+0x4aa>
 8005b2c:	f8da 1000 	ldr.w	r1, [sl]
 8005b30:	3101      	adds	r1, #1
 8005b32:	bf1b      	ittet	ne
 8005b34:	ebab 0000 	subne.w	r0, fp, r0
 8005b38:	181b      	addne	r3, r3, r0
 8005b3a:	f8ca b000 	streq.w	fp, [sl]
 8005b3e:	6013      	strne	r3, [r2, #0]
 8005b40:	f01b 0307 	ands.w	r3, fp, #7
 8005b44:	f000 8134 	beq.w	8005db0 <_malloc_r+0x494>
 8005b48:	f1c3 0108 	rsb	r1, r3, #8
 8005b4c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b50:	448b      	add	fp, r1
 8005b52:	3308      	adds	r3, #8
 8005b54:	44d8      	add	r8, fp
 8005b56:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b5a:	eba3 0808 	sub.w	r8, r3, r8
 8005b5e:	4641      	mov	r1, r8
 8005b60:	4630      	mov	r0, r6
 8005b62:	9201      	str	r2, [sp, #4]
 8005b64:	f000 feda 	bl	800691c <_sbrk_r>
 8005b68:	1c43      	adds	r3, r0, #1
 8005b6a:	9a01      	ldr	r2, [sp, #4]
 8005b6c:	f000 8146 	beq.w	8005dfc <_malloc_r+0x4e0>
 8005b70:	eba0 010b 	sub.w	r1, r0, fp
 8005b74:	4441      	add	r1, r8
 8005b76:	f041 0101 	orr.w	r1, r1, #1
 8005b7a:	6813      	ldr	r3, [r2, #0]
 8005b7c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b80:	4443      	add	r3, r8
 8005b82:	42bc      	cmp	r4, r7
 8005b84:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b88:	6013      	str	r3, [r2, #0]
 8005b8a:	d015      	beq.n	8005bb8 <_malloc_r+0x29c>
 8005b8c:	f1b9 0f0f 	cmp.w	r9, #15
 8005b90:	f240 8130 	bls.w	8005df4 <_malloc_r+0x4d8>
 8005b94:	6860      	ldr	r0, [r4, #4]
 8005b96:	f1a9 010c 	sub.w	r1, r9, #12
 8005b9a:	f021 0107 	bic.w	r1, r1, #7
 8005b9e:	f000 0001 	and.w	r0, r0, #1
 8005ba2:	eb04 0c01 	add.w	ip, r4, r1
 8005ba6:	4308      	orrs	r0, r1
 8005ba8:	f04f 0e05 	mov.w	lr, #5
 8005bac:	290f      	cmp	r1, #15
 8005bae:	6060      	str	r0, [r4, #4]
 8005bb0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005bb4:	f200 813a 	bhi.w	8005e2c <_malloc_r+0x510>
 8005bb8:	4a29      	ldr	r2, [pc, #164]	; (8005c60 <_malloc_r+0x344>)
 8005bba:	482a      	ldr	r0, [pc, #168]	; (8005c64 <_malloc_r+0x348>)
 8005bbc:	6811      	ldr	r1, [r2, #0]
 8005bbe:	68bc      	ldr	r4, [r7, #8]
 8005bc0:	428b      	cmp	r3, r1
 8005bc2:	6801      	ldr	r1, [r0, #0]
 8005bc4:	bf88      	it	hi
 8005bc6:	6013      	strhi	r3, [r2, #0]
 8005bc8:	6862      	ldr	r2, [r4, #4]
 8005bca:	428b      	cmp	r3, r1
 8005bcc:	f022 0203 	bic.w	r2, r2, #3
 8005bd0:	bf88      	it	hi
 8005bd2:	6003      	strhi	r3, [r0, #0]
 8005bd4:	e0a7      	b.n	8005d26 <_malloc_r+0x40a>
 8005bd6:	1962      	adds	r2, r4, r5
 8005bd8:	f043 0301 	orr.w	r3, r3, #1
 8005bdc:	f045 0501 	orr.w	r5, r5, #1
 8005be0:	6065      	str	r5, [r4, #4]
 8005be2:	4630      	mov	r0, r6
 8005be4:	60ba      	str	r2, [r7, #8]
 8005be6:	6053      	str	r3, [r2, #4]
 8005be8:	f000 f9a6 	bl	8005f38 <__malloc_unlock>
 8005bec:	3408      	adds	r4, #8
 8005bee:	4620      	mov	r0, r4
 8005bf0:	b003      	add	sp, #12
 8005bf2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bf6:	4423      	add	r3, r4
 8005bf8:	68e1      	ldr	r1, [r4, #12]
 8005bfa:	685a      	ldr	r2, [r3, #4]
 8005bfc:	68a5      	ldr	r5, [r4, #8]
 8005bfe:	f042 0201 	orr.w	r2, r2, #1
 8005c02:	60e9      	str	r1, [r5, #12]
 8005c04:	4630      	mov	r0, r6
 8005c06:	608d      	str	r5, [r1, #8]
 8005c08:	605a      	str	r2, [r3, #4]
 8005c0a:	f000 f995 	bl	8005f38 <__malloc_unlock>
 8005c0e:	3408      	adds	r4, #8
 8005c10:	4620      	mov	r0, r4
 8005c12:	b003      	add	sp, #12
 8005c14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c18:	68dc      	ldr	r4, [r3, #12]
 8005c1a:	42a3      	cmp	r3, r4
 8005c1c:	bf08      	it	eq
 8005c1e:	3002      	addeq	r0, #2
 8005c20:	f43f aed6 	beq.w	80059d0 <_malloc_r+0xb4>
 8005c24:	e692      	b.n	800594c <_malloc_r+0x30>
 8005c26:	2b14      	cmp	r3, #20
 8005c28:	d971      	bls.n	8005d0e <_malloc_r+0x3f2>
 8005c2a:	2b54      	cmp	r3, #84	; 0x54
 8005c2c:	f200 80ad 	bhi.w	8005d8a <_malloc_r+0x46e>
 8005c30:	0b2b      	lsrs	r3, r5, #12
 8005c32:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c36:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c3a:	00c3      	lsls	r3, r0, #3
 8005c3c:	e6b3      	b.n	80059a6 <_malloc_r+0x8a>
 8005c3e:	4423      	add	r3, r4
 8005c40:	4630      	mov	r0, r6
 8005c42:	685a      	ldr	r2, [r3, #4]
 8005c44:	f042 0201 	orr.w	r2, r2, #1
 8005c48:	605a      	str	r2, [r3, #4]
 8005c4a:	3408      	adds	r4, #8
 8005c4c:	f000 f974 	bl	8005f38 <__malloc_unlock>
 8005c50:	e68c      	b.n	800596c <_malloc_r+0x50>
 8005c52:	bf00      	nop
 8005c54:	2000044c 	.word	0x2000044c
 8005c58:	20000a9c 	.word	0x20000a9c
 8005c5c:	20000a6c 	.word	0x20000a6c
 8005c60:	20000a94 	.word	0x20000a94
 8005c64:	20000a98 	.word	0x20000a98
 8005c68:	20000454 	.word	0x20000454
 8005c6c:	20000854 	.word	0x20000854
 8005c70:	1961      	adds	r1, r4, r5
 8005c72:	f045 0e01 	orr.w	lr, r5, #1
 8005c76:	f042 0501 	orr.w	r5, r2, #1
 8005c7a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c7e:	4630      	mov	r0, r6
 8005c80:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c84:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c88:	604d      	str	r5, [r1, #4]
 8005c8a:	50e2      	str	r2, [r4, r3]
 8005c8c:	f000 f954 	bl	8005f38 <__malloc_unlock>
 8005c90:	3408      	adds	r4, #8
 8005c92:	e66b      	b.n	800596c <_malloc_r+0x50>
 8005c94:	08e8      	lsrs	r0, r5, #3
 8005c96:	f105 0308 	add.w	r3, r5, #8
 8005c9a:	e64f      	b.n	800593c <_malloc_r+0x20>
 8005c9c:	f108 0801 	add.w	r8, r8, #1
 8005ca0:	f018 0f03 	tst.w	r8, #3
 8005ca4:	f10e 0e08 	add.w	lr, lr, #8
 8005ca8:	f47f aed0 	bne.w	8005a4c <_malloc_r+0x130>
 8005cac:	e052      	b.n	8005d54 <_malloc_r+0x438>
 8005cae:	4419      	add	r1, r3
 8005cb0:	461c      	mov	r4, r3
 8005cb2:	684a      	ldr	r2, [r1, #4]
 8005cb4:	68db      	ldr	r3, [r3, #12]
 8005cb6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005cba:	f042 0201 	orr.w	r2, r2, #1
 8005cbe:	604a      	str	r2, [r1, #4]
 8005cc0:	4630      	mov	r0, r6
 8005cc2:	60eb      	str	r3, [r5, #12]
 8005cc4:	609d      	str	r5, [r3, #8]
 8005cc6:	f000 f937 	bl	8005f38 <__malloc_unlock>
 8005cca:	e64f      	b.n	800596c <_malloc_r+0x50>
 8005ccc:	0a5a      	lsrs	r2, r3, #9
 8005cce:	2a04      	cmp	r2, #4
 8005cd0:	d935      	bls.n	8005d3e <_malloc_r+0x422>
 8005cd2:	2a14      	cmp	r2, #20
 8005cd4:	d86f      	bhi.n	8005db6 <_malloc_r+0x49a>
 8005cd6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005cda:	00c9      	lsls	r1, r1, #3
 8005cdc:	325b      	adds	r2, #91	; 0x5b
 8005cde:	eb07 0e01 	add.w	lr, r7, r1
 8005ce2:	5879      	ldr	r1, [r7, r1]
 8005ce4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005ce8:	458e      	cmp	lr, r1
 8005cea:	d058      	beq.n	8005d9e <_malloc_r+0x482>
 8005cec:	684a      	ldr	r2, [r1, #4]
 8005cee:	f022 0203 	bic.w	r2, r2, #3
 8005cf2:	429a      	cmp	r2, r3
 8005cf4:	d902      	bls.n	8005cfc <_malloc_r+0x3e0>
 8005cf6:	6889      	ldr	r1, [r1, #8]
 8005cf8:	458e      	cmp	lr, r1
 8005cfa:	d1f7      	bne.n	8005cec <_malloc_r+0x3d0>
 8005cfc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d00:	687b      	ldr	r3, [r7, #4]
 8005d02:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d06:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d0a:	60cc      	str	r4, [r1, #12]
 8005d0c:	e68c      	b.n	8005a28 <_malloc_r+0x10c>
 8005d0e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d12:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d16:	00c3      	lsls	r3, r0, #3
 8005d18:	e645      	b.n	80059a6 <_malloc_r+0x8a>
 8005d1a:	42bc      	cmp	r4, r7
 8005d1c:	d072      	beq.n	8005e04 <_malloc_r+0x4e8>
 8005d1e:	68bc      	ldr	r4, [r7, #8]
 8005d20:	6862      	ldr	r2, [r4, #4]
 8005d22:	f022 0203 	bic.w	r2, r2, #3
 8005d26:	4295      	cmp	r5, r2
 8005d28:	eba2 0305 	sub.w	r3, r2, r5
 8005d2c:	d802      	bhi.n	8005d34 <_malloc_r+0x418>
 8005d2e:	2b0f      	cmp	r3, #15
 8005d30:	f73f af51 	bgt.w	8005bd6 <_malloc_r+0x2ba>
 8005d34:	4630      	mov	r0, r6
 8005d36:	f000 f8ff 	bl	8005f38 <__malloc_unlock>
 8005d3a:	2400      	movs	r4, #0
 8005d3c:	e616      	b.n	800596c <_malloc_r+0x50>
 8005d3e:	099a      	lsrs	r2, r3, #6
 8005d40:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d44:	00c9      	lsls	r1, r1, #3
 8005d46:	3238      	adds	r2, #56	; 0x38
 8005d48:	e7c9      	b.n	8005cde <_malloc_r+0x3c2>
 8005d4a:	f8d9 9000 	ldr.w	r9, [r9]
 8005d4e:	4599      	cmp	r9, r3
 8005d50:	f040 8083 	bne.w	8005e5a <_malloc_r+0x53e>
 8005d54:	f010 0f03 	tst.w	r0, #3
 8005d58:	f1a9 0308 	sub.w	r3, r9, #8
 8005d5c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d60:	d1f3      	bne.n	8005d4a <_malloc_r+0x42e>
 8005d62:	687b      	ldr	r3, [r7, #4]
 8005d64:	ea23 0304 	bic.w	r3, r3, r4
 8005d68:	607b      	str	r3, [r7, #4]
 8005d6a:	0064      	lsls	r4, r4, #1
 8005d6c:	429c      	cmp	r4, r3
 8005d6e:	f63f aeac 	bhi.w	8005aca <_malloc_r+0x1ae>
 8005d72:	b91c      	cbnz	r4, 8005d7c <_malloc_r+0x460>
 8005d74:	e6a9      	b.n	8005aca <_malloc_r+0x1ae>
 8005d76:	0064      	lsls	r4, r4, #1
 8005d78:	f108 0804 	add.w	r8, r8, #4
 8005d7c:	421c      	tst	r4, r3
 8005d7e:	d0fa      	beq.n	8005d76 <_malloc_r+0x45a>
 8005d80:	4640      	mov	r0, r8
 8005d82:	e65f      	b.n	8005a44 <_malloc_r+0x128>
 8005d84:	f108 0810 	add.w	r8, r8, #16
 8005d88:	e6bc      	b.n	8005b04 <_malloc_r+0x1e8>
 8005d8a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d8e:	d826      	bhi.n	8005dde <_malloc_r+0x4c2>
 8005d90:	0beb      	lsrs	r3, r5, #15
 8005d92:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d96:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d9a:	00c3      	lsls	r3, r0, #3
 8005d9c:	e603      	b.n	80059a6 <_malloc_r+0x8a>
 8005d9e:	687b      	ldr	r3, [r7, #4]
 8005da0:	1092      	asrs	r2, r2, #2
 8005da2:	f04f 0801 	mov.w	r8, #1
 8005da6:	fa08 f202 	lsl.w	r2, r8, r2
 8005daa:	4313      	orrs	r3, r2
 8005dac:	607b      	str	r3, [r7, #4]
 8005dae:	e7a8      	b.n	8005d02 <_malloc_r+0x3e6>
 8005db0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005db4:	e6ce      	b.n	8005b54 <_malloc_r+0x238>
 8005db6:	2a54      	cmp	r2, #84	; 0x54
 8005db8:	d829      	bhi.n	8005e0e <_malloc_r+0x4f2>
 8005dba:	0b1a      	lsrs	r2, r3, #12
 8005dbc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005dc0:	00c9      	lsls	r1, r1, #3
 8005dc2:	326e      	adds	r2, #110	; 0x6e
 8005dc4:	e78b      	b.n	8005cde <_malloc_r+0x3c2>
 8005dc6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005dca:	2900      	cmp	r1, #0
 8005dcc:	f47f aeae 	bne.w	8005b2c <_malloc_r+0x210>
 8005dd0:	eb09 0208 	add.w	r2, r9, r8
 8005dd4:	68b9      	ldr	r1, [r7, #8]
 8005dd6:	f042 0201 	orr.w	r2, r2, #1
 8005dda:	604a      	str	r2, [r1, #4]
 8005ddc:	e6ec      	b.n	8005bb8 <_malloc_r+0x29c>
 8005dde:	f240 5254 	movw	r2, #1364	; 0x554
 8005de2:	4293      	cmp	r3, r2
 8005de4:	d81c      	bhi.n	8005e20 <_malloc_r+0x504>
 8005de6:	0cab      	lsrs	r3, r5, #18
 8005de8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005dec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005df0:	00c3      	lsls	r3, r0, #3
 8005df2:	e5d8      	b.n	80059a6 <_malloc_r+0x8a>
 8005df4:	2301      	movs	r3, #1
 8005df6:	f8cb 3004 	str.w	r3, [fp, #4]
 8005dfa:	e79b      	b.n	8005d34 <_malloc_r+0x418>
 8005dfc:	2101      	movs	r1, #1
 8005dfe:	f04f 0800 	mov.w	r8, #0
 8005e02:	e6ba      	b.n	8005b7a <_malloc_r+0x25e>
 8005e04:	4a16      	ldr	r2, [pc, #88]	; (8005e60 <_malloc_r+0x544>)
 8005e06:	6813      	ldr	r3, [r2, #0]
 8005e08:	4443      	add	r3, r8
 8005e0a:	6013      	str	r3, [r2, #0]
 8005e0c:	e68e      	b.n	8005b2c <_malloc_r+0x210>
 8005e0e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e12:	d814      	bhi.n	8005e3e <_malloc_r+0x522>
 8005e14:	0bda      	lsrs	r2, r3, #15
 8005e16:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e1a:	00c9      	lsls	r1, r1, #3
 8005e1c:	3277      	adds	r2, #119	; 0x77
 8005e1e:	e75e      	b.n	8005cde <_malloc_r+0x3c2>
 8005e20:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e24:	207f      	movs	r0, #127	; 0x7f
 8005e26:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e2a:	e5bc      	b.n	80059a6 <_malloc_r+0x8a>
 8005e2c:	f104 0108 	add.w	r1, r4, #8
 8005e30:	4630      	mov	r0, r6
 8005e32:	9201      	str	r2, [sp, #4]
 8005e34:	f7ff fa48 	bl	80052c8 <_free_r>
 8005e38:	9a01      	ldr	r2, [sp, #4]
 8005e3a:	6813      	ldr	r3, [r2, #0]
 8005e3c:	e6bc      	b.n	8005bb8 <_malloc_r+0x29c>
 8005e3e:	f240 5154 	movw	r1, #1364	; 0x554
 8005e42:	428a      	cmp	r2, r1
 8005e44:	d805      	bhi.n	8005e52 <_malloc_r+0x536>
 8005e46:	0c9a      	lsrs	r2, r3, #18
 8005e48:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e4c:	00c9      	lsls	r1, r1, #3
 8005e4e:	327c      	adds	r2, #124	; 0x7c
 8005e50:	e745      	b.n	8005cde <_malloc_r+0x3c2>
 8005e52:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e56:	227e      	movs	r2, #126	; 0x7e
 8005e58:	e741      	b.n	8005cde <_malloc_r+0x3c2>
 8005e5a:	687b      	ldr	r3, [r7, #4]
 8005e5c:	e785      	b.n	8005d6a <_malloc_r+0x44e>
 8005e5e:	bf00      	nop
 8005e60:	20000a6c 	.word	0x20000a6c

08005e64 <memmove>:
 8005e64:	4288      	cmp	r0, r1
 8005e66:	b4f0      	push	{r4, r5, r6, r7}
 8005e68:	d90d      	bls.n	8005e86 <memmove+0x22>
 8005e6a:	188b      	adds	r3, r1, r2
 8005e6c:	4283      	cmp	r3, r0
 8005e6e:	d90a      	bls.n	8005e86 <memmove+0x22>
 8005e70:	1884      	adds	r4, r0, r2
 8005e72:	b132      	cbz	r2, 8005e82 <memmove+0x1e>
 8005e74:	4622      	mov	r2, r4
 8005e76:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e7a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e7e:	4299      	cmp	r1, r3
 8005e80:	d1f9      	bne.n	8005e76 <memmove+0x12>
 8005e82:	bcf0      	pop	{r4, r5, r6, r7}
 8005e84:	4770      	bx	lr
 8005e86:	2a0f      	cmp	r2, #15
 8005e88:	d949      	bls.n	8005f1e <memmove+0xba>
 8005e8a:	ea40 0301 	orr.w	r3, r0, r1
 8005e8e:	079b      	lsls	r3, r3, #30
 8005e90:	d147      	bne.n	8005f22 <memmove+0xbe>
 8005e92:	f1a2 0310 	sub.w	r3, r2, #16
 8005e96:	091b      	lsrs	r3, r3, #4
 8005e98:	f101 0720 	add.w	r7, r1, #32
 8005e9c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ea0:	f101 0410 	add.w	r4, r1, #16
 8005ea4:	f100 0510 	add.w	r5, r0, #16
 8005ea8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005eac:	f845 6c10 	str.w	r6, [r5, #-16]
 8005eb0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005eb4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005eb8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005ebc:	f845 6c08 	str.w	r6, [r5, #-8]
 8005ec0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005ec4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005ec8:	3410      	adds	r4, #16
 8005eca:	42bc      	cmp	r4, r7
 8005ecc:	f105 0510 	add.w	r5, r5, #16
 8005ed0:	d1ea      	bne.n	8005ea8 <memmove+0x44>
 8005ed2:	3301      	adds	r3, #1
 8005ed4:	f002 050f 	and.w	r5, r2, #15
 8005ed8:	011b      	lsls	r3, r3, #4
 8005eda:	2d03      	cmp	r5, #3
 8005edc:	4419      	add	r1, r3
 8005ede:	4403      	add	r3, r0
 8005ee0:	d921      	bls.n	8005f26 <memmove+0xc2>
 8005ee2:	1f1f      	subs	r7, r3, #4
 8005ee4:	460e      	mov	r6, r1
 8005ee6:	462c      	mov	r4, r5
 8005ee8:	3c04      	subs	r4, #4
 8005eea:	f856 cb04 	ldr.w	ip, [r6], #4
 8005eee:	f847 cf04 	str.w	ip, [r7, #4]!
 8005ef2:	2c03      	cmp	r4, #3
 8005ef4:	d8f8      	bhi.n	8005ee8 <memmove+0x84>
 8005ef6:	1f2c      	subs	r4, r5, #4
 8005ef8:	f024 0403 	bic.w	r4, r4, #3
 8005efc:	3404      	adds	r4, #4
 8005efe:	4423      	add	r3, r4
 8005f00:	4421      	add	r1, r4
 8005f02:	f002 0203 	and.w	r2, r2, #3
 8005f06:	2a00      	cmp	r2, #0
 8005f08:	d0bb      	beq.n	8005e82 <memmove+0x1e>
 8005f0a:	3b01      	subs	r3, #1
 8005f0c:	440a      	add	r2, r1
 8005f0e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f12:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f16:	4291      	cmp	r1, r2
 8005f18:	d1f9      	bne.n	8005f0e <memmove+0xaa>
 8005f1a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f1c:	4770      	bx	lr
 8005f1e:	4603      	mov	r3, r0
 8005f20:	e7f1      	b.n	8005f06 <memmove+0xa2>
 8005f22:	4603      	mov	r3, r0
 8005f24:	e7f1      	b.n	8005f0a <memmove+0xa6>
 8005f26:	462a      	mov	r2, r5
 8005f28:	e7ed      	b.n	8005f06 <memmove+0xa2>
 8005f2a:	bf00      	nop

08005f2c <__malloc_lock>:
 8005f2c:	4801      	ldr	r0, [pc, #4]	; (8005f34 <__malloc_lock+0x8>)
 8005f2e:	f7ff bc79 	b.w	8005824 <__retarget_lock_acquire_recursive>
 8005f32:	bf00      	nop
 8005f34:	20000af8 	.word	0x20000af8

08005f38 <__malloc_unlock>:
 8005f38:	4801      	ldr	r0, [pc, #4]	; (8005f40 <__malloc_unlock+0x8>)
 8005f3a:	f7ff bc75 	b.w	8005828 <__retarget_lock_release_recursive>
 8005f3e:	bf00      	nop
 8005f40:	20000af8 	.word	0x20000af8

08005f44 <_Balloc>:
 8005f44:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f46:	b570      	push	{r4, r5, r6, lr}
 8005f48:	4605      	mov	r5, r0
 8005f4a:	460c      	mov	r4, r1
 8005f4c:	b14b      	cbz	r3, 8005f62 <_Balloc+0x1e>
 8005f4e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f52:	b180      	cbz	r0, 8005f76 <_Balloc+0x32>
 8005f54:	6802      	ldr	r2, [r0, #0]
 8005f56:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f5a:	2300      	movs	r3, #0
 8005f5c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f60:	bd70      	pop	{r4, r5, r6, pc}
 8005f62:	2221      	movs	r2, #33	; 0x21
 8005f64:	2104      	movs	r1, #4
 8005f66:	f000 fe1d 	bl	8006ba4 <_calloc_r>
 8005f6a:	4603      	mov	r3, r0
 8005f6c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f6e:	2800      	cmp	r0, #0
 8005f70:	d1ed      	bne.n	8005f4e <_Balloc+0xa>
 8005f72:	2000      	movs	r0, #0
 8005f74:	bd70      	pop	{r4, r5, r6, pc}
 8005f76:	2101      	movs	r1, #1
 8005f78:	fa01 f604 	lsl.w	r6, r1, r4
 8005f7c:	1d72      	adds	r2, r6, #5
 8005f7e:	4628      	mov	r0, r5
 8005f80:	0092      	lsls	r2, r2, #2
 8005f82:	f000 fe0f 	bl	8006ba4 <_calloc_r>
 8005f86:	2800      	cmp	r0, #0
 8005f88:	d0f3      	beq.n	8005f72 <_Balloc+0x2e>
 8005f8a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f8e:	e7e4      	b.n	8005f5a <_Balloc+0x16>

08005f90 <_Bfree>:
 8005f90:	b131      	cbz	r1, 8005fa0 <_Bfree+0x10>
 8005f92:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f94:	684a      	ldr	r2, [r1, #4]
 8005f96:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f9a:	6008      	str	r0, [r1, #0]
 8005f9c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005fa0:	4770      	bx	lr
 8005fa2:	bf00      	nop

08005fa4 <__multadd>:
 8005fa4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fa6:	690c      	ldr	r4, [r1, #16]
 8005fa8:	b083      	sub	sp, #12
 8005faa:	460d      	mov	r5, r1
 8005fac:	4606      	mov	r6, r0
 8005fae:	f101 0c14 	add.w	ip, r1, #20
 8005fb2:	2700      	movs	r7, #0
 8005fb4:	f8dc 0000 	ldr.w	r0, [ip]
 8005fb8:	b281      	uxth	r1, r0
 8005fba:	fb02 3301 	mla	r3, r2, r1, r3
 8005fbe:	0c01      	lsrs	r1, r0, #16
 8005fc0:	0c18      	lsrs	r0, r3, #16
 8005fc2:	fb02 0101 	mla	r1, r2, r1, r0
 8005fc6:	b29b      	uxth	r3, r3
 8005fc8:	3701      	adds	r7, #1
 8005fca:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005fce:	42bc      	cmp	r4, r7
 8005fd0:	f84c 3b04 	str.w	r3, [ip], #4
 8005fd4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fd8:	dcec      	bgt.n	8005fb4 <__multadd+0x10>
 8005fda:	b13b      	cbz	r3, 8005fec <__multadd+0x48>
 8005fdc:	68aa      	ldr	r2, [r5, #8]
 8005fde:	42a2      	cmp	r2, r4
 8005fe0:	dd07      	ble.n	8005ff2 <__multadd+0x4e>
 8005fe2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fe6:	3401      	adds	r4, #1
 8005fe8:	6153      	str	r3, [r2, #20]
 8005fea:	612c      	str	r4, [r5, #16]
 8005fec:	4628      	mov	r0, r5
 8005fee:	b003      	add	sp, #12
 8005ff0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005ff2:	6869      	ldr	r1, [r5, #4]
 8005ff4:	9301      	str	r3, [sp, #4]
 8005ff6:	3101      	adds	r1, #1
 8005ff8:	4630      	mov	r0, r6
 8005ffa:	f7ff ffa3 	bl	8005f44 <_Balloc>
 8005ffe:	692a      	ldr	r2, [r5, #16]
 8006000:	3202      	adds	r2, #2
 8006002:	f105 010c 	add.w	r1, r5, #12
 8006006:	4607      	mov	r7, r0
 8006008:	0092      	lsls	r2, r2, #2
 800600a:	300c      	adds	r0, #12
 800600c:	f7fa ff1e 	bl	8000e4c <memcpy>
 8006010:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006012:	6869      	ldr	r1, [r5, #4]
 8006014:	9b01      	ldr	r3, [sp, #4]
 8006016:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800601a:	6028      	str	r0, [r5, #0]
 800601c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006020:	463d      	mov	r5, r7
 8006022:	e7de      	b.n	8005fe2 <__multadd+0x3e>

08006024 <__hi0bits>:
 8006024:	0c02      	lsrs	r2, r0, #16
 8006026:	0412      	lsls	r2, r2, #16
 8006028:	4603      	mov	r3, r0
 800602a:	b9c2      	cbnz	r2, 800605e <__hi0bits+0x3a>
 800602c:	0403      	lsls	r3, r0, #16
 800602e:	2010      	movs	r0, #16
 8006030:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006034:	bf04      	itt	eq
 8006036:	021b      	lsleq	r3, r3, #8
 8006038:	3008      	addeq	r0, #8
 800603a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800603e:	bf04      	itt	eq
 8006040:	011b      	lsleq	r3, r3, #4
 8006042:	3004      	addeq	r0, #4
 8006044:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006048:	bf04      	itt	eq
 800604a:	009b      	lsleq	r3, r3, #2
 800604c:	3002      	addeq	r0, #2
 800604e:	2b00      	cmp	r3, #0
 8006050:	db04      	blt.n	800605c <__hi0bits+0x38>
 8006052:	005b      	lsls	r3, r3, #1
 8006054:	d501      	bpl.n	800605a <__hi0bits+0x36>
 8006056:	3001      	adds	r0, #1
 8006058:	4770      	bx	lr
 800605a:	2020      	movs	r0, #32
 800605c:	4770      	bx	lr
 800605e:	2000      	movs	r0, #0
 8006060:	e7e6      	b.n	8006030 <__hi0bits+0xc>
 8006062:	bf00      	nop

08006064 <__lo0bits>:
 8006064:	6803      	ldr	r3, [r0, #0]
 8006066:	f013 0207 	ands.w	r2, r3, #7
 800606a:	4601      	mov	r1, r0
 800606c:	d007      	beq.n	800607e <__lo0bits+0x1a>
 800606e:	07da      	lsls	r2, r3, #31
 8006070:	d41f      	bmi.n	80060b2 <__lo0bits+0x4e>
 8006072:	0798      	lsls	r0, r3, #30
 8006074:	d51f      	bpl.n	80060b6 <__lo0bits+0x52>
 8006076:	085b      	lsrs	r3, r3, #1
 8006078:	600b      	str	r3, [r1, #0]
 800607a:	2001      	movs	r0, #1
 800607c:	4770      	bx	lr
 800607e:	b298      	uxth	r0, r3
 8006080:	b1a0      	cbz	r0, 80060ac <__lo0bits+0x48>
 8006082:	4610      	mov	r0, r2
 8006084:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006088:	bf04      	itt	eq
 800608a:	0a1b      	lsreq	r3, r3, #8
 800608c:	3008      	addeq	r0, #8
 800608e:	071a      	lsls	r2, r3, #28
 8006090:	bf04      	itt	eq
 8006092:	091b      	lsreq	r3, r3, #4
 8006094:	3004      	addeq	r0, #4
 8006096:	079a      	lsls	r2, r3, #30
 8006098:	bf04      	itt	eq
 800609a:	089b      	lsreq	r3, r3, #2
 800609c:	3002      	addeq	r0, #2
 800609e:	07da      	lsls	r2, r3, #31
 80060a0:	d402      	bmi.n	80060a8 <__lo0bits+0x44>
 80060a2:	085b      	lsrs	r3, r3, #1
 80060a4:	d00b      	beq.n	80060be <__lo0bits+0x5a>
 80060a6:	3001      	adds	r0, #1
 80060a8:	600b      	str	r3, [r1, #0]
 80060aa:	4770      	bx	lr
 80060ac:	0c1b      	lsrs	r3, r3, #16
 80060ae:	2010      	movs	r0, #16
 80060b0:	e7e8      	b.n	8006084 <__lo0bits+0x20>
 80060b2:	2000      	movs	r0, #0
 80060b4:	4770      	bx	lr
 80060b6:	089b      	lsrs	r3, r3, #2
 80060b8:	600b      	str	r3, [r1, #0]
 80060ba:	2002      	movs	r0, #2
 80060bc:	4770      	bx	lr
 80060be:	2020      	movs	r0, #32
 80060c0:	4770      	bx	lr
 80060c2:	bf00      	nop

080060c4 <__i2b>:
 80060c4:	b510      	push	{r4, lr}
 80060c6:	460c      	mov	r4, r1
 80060c8:	2101      	movs	r1, #1
 80060ca:	f7ff ff3b 	bl	8005f44 <_Balloc>
 80060ce:	2201      	movs	r2, #1
 80060d0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80060d4:	bd10      	pop	{r4, pc}
 80060d6:	bf00      	nop

080060d8 <__multiply>:
 80060d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060dc:	690e      	ldr	r6, [r1, #16]
 80060de:	6914      	ldr	r4, [r2, #16]
 80060e0:	42a6      	cmp	r6, r4
 80060e2:	b083      	sub	sp, #12
 80060e4:	460f      	mov	r7, r1
 80060e6:	4615      	mov	r5, r2
 80060e8:	da04      	bge.n	80060f4 <__multiply+0x1c>
 80060ea:	4632      	mov	r2, r6
 80060ec:	462f      	mov	r7, r5
 80060ee:	4626      	mov	r6, r4
 80060f0:	460d      	mov	r5, r1
 80060f2:	4614      	mov	r4, r2
 80060f4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80060f8:	eb06 0804 	add.w	r8, r6, r4
 80060fc:	4543      	cmp	r3, r8
 80060fe:	bfb8      	it	lt
 8006100:	3101      	addlt	r1, #1
 8006102:	f7ff ff1f 	bl	8005f44 <_Balloc>
 8006106:	f100 0914 	add.w	r9, r0, #20
 800610a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800610e:	45f1      	cmp	r9, lr
 8006110:	9000      	str	r0, [sp, #0]
 8006112:	d205      	bcs.n	8006120 <__multiply+0x48>
 8006114:	464b      	mov	r3, r9
 8006116:	2200      	movs	r2, #0
 8006118:	f843 2b04 	str.w	r2, [r3], #4
 800611c:	459e      	cmp	lr, r3
 800611e:	d8fb      	bhi.n	8006118 <__multiply+0x40>
 8006120:	f105 0a14 	add.w	sl, r5, #20
 8006124:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006128:	f107 0314 	add.w	r3, r7, #20
 800612c:	45a2      	cmp	sl, r4
 800612e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006132:	d261      	bcs.n	80061f8 <__multiply+0x120>
 8006134:	1b64      	subs	r4, r4, r5
 8006136:	3c15      	subs	r4, #21
 8006138:	f024 0403 	bic.w	r4, r4, #3
 800613c:	f8cd e004 	str.w	lr, [sp, #4]
 8006140:	44a2      	add	sl, r4
 8006142:	f105 0210 	add.w	r2, r5, #16
 8006146:	469e      	mov	lr, r3
 8006148:	e005      	b.n	8006156 <__multiply+0x7e>
 800614a:	0c2d      	lsrs	r5, r5, #16
 800614c:	d12b      	bne.n	80061a6 <__multiply+0xce>
 800614e:	4592      	cmp	sl, r2
 8006150:	f109 0904 	add.w	r9, r9, #4
 8006154:	d04e      	beq.n	80061f4 <__multiply+0x11c>
 8006156:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800615a:	fa1f fb85 	uxth.w	fp, r5
 800615e:	f1bb 0f00 	cmp.w	fp, #0
 8006162:	d0f2      	beq.n	800614a <__multiply+0x72>
 8006164:	4677      	mov	r7, lr
 8006166:	464e      	mov	r6, r9
 8006168:	2000      	movs	r0, #0
 800616a:	e000      	b.n	800616e <__multiply+0x96>
 800616c:	4626      	mov	r6, r4
 800616e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006172:	6834      	ldr	r4, [r6, #0]
 8006174:	b28b      	uxth	r3, r1
 8006176:	b2a5      	uxth	r5, r4
 8006178:	0c09      	lsrs	r1, r1, #16
 800617a:	0c24      	lsrs	r4, r4, #16
 800617c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006180:	4403      	add	r3, r0
 8006182:	fb0b 4001 	mla	r0, fp, r1, r4
 8006186:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800618a:	4634      	mov	r4, r6
 800618c:	b29b      	uxth	r3, r3
 800618e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006192:	45bc      	cmp	ip, r7
 8006194:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006198:	f844 3b04 	str.w	r3, [r4], #4
 800619c:	d8e6      	bhi.n	800616c <__multiply+0x94>
 800619e:	6070      	str	r0, [r6, #4]
 80061a0:	6815      	ldr	r5, [r2, #0]
 80061a2:	0c2d      	lsrs	r5, r5, #16
 80061a4:	d0d3      	beq.n	800614e <__multiply+0x76>
 80061a6:	f8d9 3000 	ldr.w	r3, [r9]
 80061aa:	4676      	mov	r6, lr
 80061ac:	4618      	mov	r0, r3
 80061ae:	46cb      	mov	fp, r9
 80061b0:	2100      	movs	r1, #0
 80061b2:	e000      	b.n	80061b6 <__multiply+0xde>
 80061b4:	46a3      	mov	fp, r4
 80061b6:	8834      	ldrh	r4, [r6, #0]
 80061b8:	0c00      	lsrs	r0, r0, #16
 80061ba:	fb05 0004 	mla	r0, r5, r4, r0
 80061be:	4401      	add	r1, r0
 80061c0:	b29b      	uxth	r3, r3
 80061c2:	465c      	mov	r4, fp
 80061c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061c8:	f844 3b04 	str.w	r3, [r4], #4
 80061cc:	f856 3b04 	ldr.w	r3, [r6], #4
 80061d0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80061d4:	0c1b      	lsrs	r3, r3, #16
 80061d6:	b287      	uxth	r7, r0
 80061d8:	fb05 7303 	mla	r3, r5, r3, r7
 80061dc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061e0:	45b4      	cmp	ip, r6
 80061e2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061e6:	d8e5      	bhi.n	80061b4 <__multiply+0xdc>
 80061e8:	4592      	cmp	sl, r2
 80061ea:	f8cb 3004 	str.w	r3, [fp, #4]
 80061ee:	f109 0904 	add.w	r9, r9, #4
 80061f2:	d1b0      	bne.n	8006156 <__multiply+0x7e>
 80061f4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80061f8:	f1b8 0f00 	cmp.w	r8, #0
 80061fc:	dd0b      	ble.n	8006216 <__multiply+0x13e>
 80061fe:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006202:	f1ae 0e04 	sub.w	lr, lr, #4
 8006206:	b11b      	cbz	r3, 8006210 <__multiply+0x138>
 8006208:	e005      	b.n	8006216 <__multiply+0x13e>
 800620a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800620e:	b913      	cbnz	r3, 8006216 <__multiply+0x13e>
 8006210:	f1b8 0801 	subs.w	r8, r8, #1
 8006214:	d1f9      	bne.n	800620a <__multiply+0x132>
 8006216:	9800      	ldr	r0, [sp, #0]
 8006218:	f8c0 8010 	str.w	r8, [r0, #16]
 800621c:	b003      	add	sp, #12
 800621e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006222:	bf00      	nop

08006224 <__pow5mult>:
 8006224:	f012 0303 	ands.w	r3, r2, #3
 8006228:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800622c:	4614      	mov	r4, r2
 800622e:	4607      	mov	r7, r0
 8006230:	d12e      	bne.n	8006290 <__pow5mult+0x6c>
 8006232:	460d      	mov	r5, r1
 8006234:	10a4      	asrs	r4, r4, #2
 8006236:	d01c      	beq.n	8006272 <__pow5mult+0x4e>
 8006238:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800623a:	b396      	cbz	r6, 80062a2 <__pow5mult+0x7e>
 800623c:	07e3      	lsls	r3, r4, #31
 800623e:	f04f 0800 	mov.w	r8, #0
 8006242:	d406      	bmi.n	8006252 <__pow5mult+0x2e>
 8006244:	1064      	asrs	r4, r4, #1
 8006246:	d014      	beq.n	8006272 <__pow5mult+0x4e>
 8006248:	6830      	ldr	r0, [r6, #0]
 800624a:	b1a8      	cbz	r0, 8006278 <__pow5mult+0x54>
 800624c:	4606      	mov	r6, r0
 800624e:	07e3      	lsls	r3, r4, #31
 8006250:	d5f8      	bpl.n	8006244 <__pow5mult+0x20>
 8006252:	4632      	mov	r2, r6
 8006254:	4629      	mov	r1, r5
 8006256:	4638      	mov	r0, r7
 8006258:	f7ff ff3e 	bl	80060d8 <__multiply>
 800625c:	b1b5      	cbz	r5, 800628c <__pow5mult+0x68>
 800625e:	686a      	ldr	r2, [r5, #4]
 8006260:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006262:	1064      	asrs	r4, r4, #1
 8006264:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006268:	6029      	str	r1, [r5, #0]
 800626a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800626e:	4605      	mov	r5, r0
 8006270:	d1ea      	bne.n	8006248 <__pow5mult+0x24>
 8006272:	4628      	mov	r0, r5
 8006274:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006278:	4632      	mov	r2, r6
 800627a:	4631      	mov	r1, r6
 800627c:	4638      	mov	r0, r7
 800627e:	f7ff ff2b 	bl	80060d8 <__multiply>
 8006282:	6030      	str	r0, [r6, #0]
 8006284:	f8c0 8000 	str.w	r8, [r0]
 8006288:	4606      	mov	r6, r0
 800628a:	e7e0      	b.n	800624e <__pow5mult+0x2a>
 800628c:	4605      	mov	r5, r0
 800628e:	e7d9      	b.n	8006244 <__pow5mult+0x20>
 8006290:	3b01      	subs	r3, #1
 8006292:	4a0b      	ldr	r2, [pc, #44]	; (80062c0 <__pow5mult+0x9c>)
 8006294:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006298:	2300      	movs	r3, #0
 800629a:	f7ff fe83 	bl	8005fa4 <__multadd>
 800629e:	4605      	mov	r5, r0
 80062a0:	e7c8      	b.n	8006234 <__pow5mult+0x10>
 80062a2:	2101      	movs	r1, #1
 80062a4:	4638      	mov	r0, r7
 80062a6:	f7ff fe4d 	bl	8005f44 <_Balloc>
 80062aa:	f240 2371 	movw	r3, #625	; 0x271
 80062ae:	6143      	str	r3, [r0, #20]
 80062b0:	2201      	movs	r2, #1
 80062b2:	2300      	movs	r3, #0
 80062b4:	6102      	str	r2, [r0, #16]
 80062b6:	4606      	mov	r6, r0
 80062b8:	64b8      	str	r0, [r7, #72]	; 0x48
 80062ba:	6003      	str	r3, [r0, #0]
 80062bc:	e7be      	b.n	800623c <__pow5mult+0x18>
 80062be:	bf00      	nop
 80062c0:	080072a8 	.word	0x080072a8

080062c4 <__lshift>:
 80062c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062c8:	4691      	mov	r9, r2
 80062ca:	690a      	ldr	r2, [r1, #16]
 80062cc:	460e      	mov	r6, r1
 80062ce:	ea4f 1469 	mov.w	r4, r9, asr #5
 80062d2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80062d6:	eb04 0802 	add.w	r8, r4, r2
 80062da:	f108 0501 	add.w	r5, r8, #1
 80062de:	429d      	cmp	r5, r3
 80062e0:	4607      	mov	r7, r0
 80062e2:	dd04      	ble.n	80062ee <__lshift+0x2a>
 80062e4:	005b      	lsls	r3, r3, #1
 80062e6:	429d      	cmp	r5, r3
 80062e8:	f101 0101 	add.w	r1, r1, #1
 80062ec:	dcfa      	bgt.n	80062e4 <__lshift+0x20>
 80062ee:	4638      	mov	r0, r7
 80062f0:	f7ff fe28 	bl	8005f44 <_Balloc>
 80062f4:	2c00      	cmp	r4, #0
 80062f6:	f100 0314 	add.w	r3, r0, #20
 80062fa:	dd37      	ble.n	800636c <__lshift+0xa8>
 80062fc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006300:	2200      	movs	r2, #0
 8006302:	f843 2b04 	str.w	r2, [r3], #4
 8006306:	428b      	cmp	r3, r1
 8006308:	d1fb      	bne.n	8006302 <__lshift+0x3e>
 800630a:	6934      	ldr	r4, [r6, #16]
 800630c:	f106 0314 	add.w	r3, r6, #20
 8006310:	f019 091f 	ands.w	r9, r9, #31
 8006314:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006318:	d020      	beq.n	800635c <__lshift+0x98>
 800631a:	f1c9 0e20 	rsb	lr, r9, #32
 800631e:	2200      	movs	r2, #0
 8006320:	e000      	b.n	8006324 <__lshift+0x60>
 8006322:	4651      	mov	r1, sl
 8006324:	681c      	ldr	r4, [r3, #0]
 8006326:	468a      	mov	sl, r1
 8006328:	fa04 f409 	lsl.w	r4, r4, r9
 800632c:	4314      	orrs	r4, r2
 800632e:	f84a 4b04 	str.w	r4, [sl], #4
 8006332:	f853 2b04 	ldr.w	r2, [r3], #4
 8006336:	4563      	cmp	r3, ip
 8006338:	fa22 f20e 	lsr.w	r2, r2, lr
 800633c:	d3f1      	bcc.n	8006322 <__lshift+0x5e>
 800633e:	604a      	str	r2, [r1, #4]
 8006340:	b10a      	cbz	r2, 8006346 <__lshift+0x82>
 8006342:	f108 0502 	add.w	r5, r8, #2
 8006346:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006348:	6872      	ldr	r2, [r6, #4]
 800634a:	3d01      	subs	r5, #1
 800634c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006350:	6105      	str	r5, [r0, #16]
 8006352:	6031      	str	r1, [r6, #0]
 8006354:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006358:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800635c:	3904      	subs	r1, #4
 800635e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006362:	f841 2f04 	str.w	r2, [r1, #4]!
 8006366:	459c      	cmp	ip, r3
 8006368:	d8f9      	bhi.n	800635e <__lshift+0x9a>
 800636a:	e7ec      	b.n	8006346 <__lshift+0x82>
 800636c:	4619      	mov	r1, r3
 800636e:	e7cc      	b.n	800630a <__lshift+0x46>

08006370 <__mcmp>:
 8006370:	b430      	push	{r4, r5}
 8006372:	690b      	ldr	r3, [r1, #16]
 8006374:	4605      	mov	r5, r0
 8006376:	6900      	ldr	r0, [r0, #16]
 8006378:	1ac0      	subs	r0, r0, r3
 800637a:	d10f      	bne.n	800639c <__mcmp+0x2c>
 800637c:	009b      	lsls	r3, r3, #2
 800637e:	3514      	adds	r5, #20
 8006380:	3114      	adds	r1, #20
 8006382:	4419      	add	r1, r3
 8006384:	442b      	add	r3, r5
 8006386:	e001      	b.n	800638c <__mcmp+0x1c>
 8006388:	429d      	cmp	r5, r3
 800638a:	d207      	bcs.n	800639c <__mcmp+0x2c>
 800638c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006390:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006394:	4294      	cmp	r4, r2
 8006396:	d0f7      	beq.n	8006388 <__mcmp+0x18>
 8006398:	d302      	bcc.n	80063a0 <__mcmp+0x30>
 800639a:	2001      	movs	r0, #1
 800639c:	bc30      	pop	{r4, r5}
 800639e:	4770      	bx	lr
 80063a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063a4:	e7fa      	b.n	800639c <__mcmp+0x2c>
 80063a6:	bf00      	nop

080063a8 <__mdiff>:
 80063a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063ac:	6913      	ldr	r3, [r2, #16]
 80063ae:	690d      	ldr	r5, [r1, #16]
 80063b0:	1aed      	subs	r5, r5, r3
 80063b2:	2d00      	cmp	r5, #0
 80063b4:	460e      	mov	r6, r1
 80063b6:	4690      	mov	r8, r2
 80063b8:	f101 0414 	add.w	r4, r1, #20
 80063bc:	f102 0714 	add.w	r7, r2, #20
 80063c0:	d114      	bne.n	80063ec <__mdiff+0x44>
 80063c2:	009b      	lsls	r3, r3, #2
 80063c4:	18e2      	adds	r2, r4, r3
 80063c6:	443b      	add	r3, r7
 80063c8:	e001      	b.n	80063ce <__mdiff+0x26>
 80063ca:	42a2      	cmp	r2, r4
 80063cc:	d959      	bls.n	8006482 <__mdiff+0xda>
 80063ce:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80063d2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80063d6:	458c      	cmp	ip, r1
 80063d8:	d0f7      	beq.n	80063ca <__mdiff+0x22>
 80063da:	d209      	bcs.n	80063f0 <__mdiff+0x48>
 80063dc:	4622      	mov	r2, r4
 80063de:	4633      	mov	r3, r6
 80063e0:	463c      	mov	r4, r7
 80063e2:	4646      	mov	r6, r8
 80063e4:	4617      	mov	r7, r2
 80063e6:	4698      	mov	r8, r3
 80063e8:	2501      	movs	r5, #1
 80063ea:	e001      	b.n	80063f0 <__mdiff+0x48>
 80063ec:	dbf6      	blt.n	80063dc <__mdiff+0x34>
 80063ee:	2500      	movs	r5, #0
 80063f0:	6871      	ldr	r1, [r6, #4]
 80063f2:	f7ff fda7 	bl	8005f44 <_Balloc>
 80063f6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80063fa:	6936      	ldr	r6, [r6, #16]
 80063fc:	60c5      	str	r5, [r0, #12]
 80063fe:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006402:	46bc      	mov	ip, r7
 8006404:	f100 0514 	add.w	r5, r0, #20
 8006408:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800640c:	2300      	movs	r3, #0
 800640e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006412:	f854 8b04 	ldr.w	r8, [r4], #4
 8006416:	b28a      	uxth	r2, r1
 8006418:	fa13 f388 	uxtah	r3, r3, r8
 800641c:	0c09      	lsrs	r1, r1, #16
 800641e:	1a9a      	subs	r2, r3, r2
 8006420:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006424:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006428:	b292      	uxth	r2, r2
 800642a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800642e:	45e6      	cmp	lr, ip
 8006430:	f845 2b04 	str.w	r2, [r5], #4
 8006434:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006438:	d8e9      	bhi.n	800640e <__mdiff+0x66>
 800643a:	42a7      	cmp	r7, r4
 800643c:	d917      	bls.n	800646e <__mdiff+0xc6>
 800643e:	46ae      	mov	lr, r5
 8006440:	46a4      	mov	ip, r4
 8006442:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006446:	fa13 f382 	uxtah	r3, r3, r2
 800644a:	1419      	asrs	r1, r3, #16
 800644c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006450:	b29b      	uxth	r3, r3
 8006452:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006456:	4567      	cmp	r7, ip
 8006458:	f84e 2b04 	str.w	r2, [lr], #4
 800645c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006460:	d8ef      	bhi.n	8006442 <__mdiff+0x9a>
 8006462:	43e4      	mvns	r4, r4
 8006464:	4427      	add	r7, r4
 8006466:	f027 0703 	bic.w	r7, r7, #3
 800646a:	3704      	adds	r7, #4
 800646c:	443d      	add	r5, r7
 800646e:	3d04      	subs	r5, #4
 8006470:	b922      	cbnz	r2, 800647c <__mdiff+0xd4>
 8006472:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006476:	3e01      	subs	r6, #1
 8006478:	2b00      	cmp	r3, #0
 800647a:	d0fa      	beq.n	8006472 <__mdiff+0xca>
 800647c:	6106      	str	r6, [r0, #16]
 800647e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006482:	2100      	movs	r1, #0
 8006484:	f7ff fd5e 	bl	8005f44 <_Balloc>
 8006488:	2201      	movs	r2, #1
 800648a:	2300      	movs	r3, #0
 800648c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006490:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006494 <__d2b>:
 8006494:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006498:	460f      	mov	r7, r1
 800649a:	b083      	sub	sp, #12
 800649c:	2101      	movs	r1, #1
 800649e:	ec55 4b10 	vmov	r4, r5, d0
 80064a2:	4616      	mov	r6, r2
 80064a4:	f7ff fd4e 	bl	8005f44 <_Balloc>
 80064a8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064ac:	4681      	mov	r9, r0
 80064ae:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064b2:	f1b8 0f00 	cmp.w	r8, #0
 80064b6:	d001      	beq.n	80064bc <__d2b+0x28>
 80064b8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064bc:	2c00      	cmp	r4, #0
 80064be:	9301      	str	r3, [sp, #4]
 80064c0:	d024      	beq.n	800650c <__d2b+0x78>
 80064c2:	a802      	add	r0, sp, #8
 80064c4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064c8:	f7ff fdcc 	bl	8006064 <__lo0bits>
 80064cc:	2800      	cmp	r0, #0
 80064ce:	d136      	bne.n	800653e <__d2b+0xaa>
 80064d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80064d4:	f8c9 2014 	str.w	r2, [r9, #20]
 80064d8:	2b00      	cmp	r3, #0
 80064da:	bf0c      	ite	eq
 80064dc:	2101      	moveq	r1, #1
 80064de:	2102      	movne	r1, #2
 80064e0:	f8c9 3018 	str.w	r3, [r9, #24]
 80064e4:	f8c9 1010 	str.w	r1, [r9, #16]
 80064e8:	f1b8 0f00 	cmp.w	r8, #0
 80064ec:	d11b      	bne.n	8006526 <__d2b+0x92>
 80064ee:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064f2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064f6:	6038      	str	r0, [r7, #0]
 80064f8:	6918      	ldr	r0, [r3, #16]
 80064fa:	f7ff fd93 	bl	8006024 <__hi0bits>
 80064fe:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006502:	6030      	str	r0, [r6, #0]
 8006504:	4648      	mov	r0, r9
 8006506:	b003      	add	sp, #12
 8006508:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800650c:	a801      	add	r0, sp, #4
 800650e:	f7ff fda9 	bl	8006064 <__lo0bits>
 8006512:	9b01      	ldr	r3, [sp, #4]
 8006514:	f8c9 3014 	str.w	r3, [r9, #20]
 8006518:	2101      	movs	r1, #1
 800651a:	3020      	adds	r0, #32
 800651c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006520:	f1b8 0f00 	cmp.w	r8, #0
 8006524:	d0e3      	beq.n	80064ee <__d2b+0x5a>
 8006526:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800652a:	eb08 0300 	add.w	r3, r8, r0
 800652e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006532:	603b      	str	r3, [r7, #0]
 8006534:	6030      	str	r0, [r6, #0]
 8006536:	4648      	mov	r0, r9
 8006538:	b003      	add	sp, #12
 800653a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800653e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006542:	f1c0 0220 	rsb	r2, r0, #32
 8006546:	fa03 f202 	lsl.w	r2, r3, r2
 800654a:	430a      	orrs	r2, r1
 800654c:	40c3      	lsrs	r3, r0
 800654e:	9301      	str	r3, [sp, #4]
 8006550:	f8c9 2014 	str.w	r2, [r9, #20]
 8006554:	e7c0      	b.n	80064d8 <__d2b+0x44>
 8006556:	bf00      	nop

08006558 <_realloc_r>:
 8006558:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800655c:	4692      	mov	sl, r2
 800655e:	b083      	sub	sp, #12
 8006560:	2900      	cmp	r1, #0
 8006562:	f000 80a1 	beq.w	80066a8 <_realloc_r+0x150>
 8006566:	460d      	mov	r5, r1
 8006568:	4680      	mov	r8, r0
 800656a:	f10a 040b 	add.w	r4, sl, #11
 800656e:	f7ff fcdd 	bl	8005f2c <__malloc_lock>
 8006572:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006576:	2c16      	cmp	r4, #22
 8006578:	f022 0603 	bic.w	r6, r2, #3
 800657c:	f1a5 0708 	sub.w	r7, r5, #8
 8006580:	d83e      	bhi.n	8006600 <_realloc_r+0xa8>
 8006582:	2410      	movs	r4, #16
 8006584:	4621      	mov	r1, r4
 8006586:	45a2      	cmp	sl, r4
 8006588:	d83f      	bhi.n	800660a <_realloc_r+0xb2>
 800658a:	428e      	cmp	r6, r1
 800658c:	eb07 0906 	add.w	r9, r7, r6
 8006590:	da74      	bge.n	800667c <_realloc_r+0x124>
 8006592:	4bc7      	ldr	r3, [pc, #796]	; (80068b0 <_realloc_r+0x358>)
 8006594:	6898      	ldr	r0, [r3, #8]
 8006596:	4548      	cmp	r0, r9
 8006598:	f000 80aa 	beq.w	80066f0 <_realloc_r+0x198>
 800659c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80065a0:	f020 0301 	bic.w	r3, r0, #1
 80065a4:	444b      	add	r3, r9
 80065a6:	685b      	ldr	r3, [r3, #4]
 80065a8:	07db      	lsls	r3, r3, #31
 80065aa:	f140 8083 	bpl.w	80066b4 <_realloc_r+0x15c>
 80065ae:	07d2      	lsls	r2, r2, #31
 80065b0:	d534      	bpl.n	800661c <_realloc_r+0xc4>
 80065b2:	4651      	mov	r1, sl
 80065b4:	4640      	mov	r0, r8
 80065b6:	f7ff f9b1 	bl	800591c <_malloc_r>
 80065ba:	4682      	mov	sl, r0
 80065bc:	b1e0      	cbz	r0, 80065f8 <_realloc_r+0xa0>
 80065be:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065c2:	f023 0301 	bic.w	r3, r3, #1
 80065c6:	443b      	add	r3, r7
 80065c8:	f1a0 0208 	sub.w	r2, r0, #8
 80065cc:	4293      	cmp	r3, r2
 80065ce:	f000 80f9 	beq.w	80067c4 <_realloc_r+0x26c>
 80065d2:	1f32      	subs	r2, r6, #4
 80065d4:	2a24      	cmp	r2, #36	; 0x24
 80065d6:	f200 8107 	bhi.w	80067e8 <_realloc_r+0x290>
 80065da:	2a13      	cmp	r2, #19
 80065dc:	6829      	ldr	r1, [r5, #0]
 80065de:	f200 80e6 	bhi.w	80067ae <_realloc_r+0x256>
 80065e2:	4603      	mov	r3, r0
 80065e4:	462a      	mov	r2, r5
 80065e6:	6019      	str	r1, [r3, #0]
 80065e8:	6851      	ldr	r1, [r2, #4]
 80065ea:	6059      	str	r1, [r3, #4]
 80065ec:	6892      	ldr	r2, [r2, #8]
 80065ee:	609a      	str	r2, [r3, #8]
 80065f0:	4629      	mov	r1, r5
 80065f2:	4640      	mov	r0, r8
 80065f4:	f7fe fe68 	bl	80052c8 <_free_r>
 80065f8:	4640      	mov	r0, r8
 80065fa:	f7ff fc9d 	bl	8005f38 <__malloc_unlock>
 80065fe:	e04f      	b.n	80066a0 <_realloc_r+0x148>
 8006600:	f024 0407 	bic.w	r4, r4, #7
 8006604:	2c00      	cmp	r4, #0
 8006606:	4621      	mov	r1, r4
 8006608:	dabd      	bge.n	8006586 <_realloc_r+0x2e>
 800660a:	f04f 0a00 	mov.w	sl, #0
 800660e:	230c      	movs	r3, #12
 8006610:	4650      	mov	r0, sl
 8006612:	f8c8 3000 	str.w	r3, [r8]
 8006616:	b003      	add	sp, #12
 8006618:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800661c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006620:	eba7 0b03 	sub.w	fp, r7, r3
 8006624:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006628:	f022 0203 	bic.w	r2, r2, #3
 800662c:	18b3      	adds	r3, r6, r2
 800662e:	428b      	cmp	r3, r1
 8006630:	dbbf      	blt.n	80065b2 <_realloc_r+0x5a>
 8006632:	46da      	mov	sl, fp
 8006634:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006638:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800663c:	1f32      	subs	r2, r6, #4
 800663e:	2a24      	cmp	r2, #36	; 0x24
 8006640:	60c1      	str	r1, [r0, #12]
 8006642:	eb0b 0903 	add.w	r9, fp, r3
 8006646:	6088      	str	r0, [r1, #8]
 8006648:	f200 80c6 	bhi.w	80067d8 <_realloc_r+0x280>
 800664c:	2a13      	cmp	r2, #19
 800664e:	6829      	ldr	r1, [r5, #0]
 8006650:	f240 80c0 	bls.w	80067d4 <_realloc_r+0x27c>
 8006654:	f8cb 1008 	str.w	r1, [fp, #8]
 8006658:	6869      	ldr	r1, [r5, #4]
 800665a:	f8cb 100c 	str.w	r1, [fp, #12]
 800665e:	2a1b      	cmp	r2, #27
 8006660:	68a9      	ldr	r1, [r5, #8]
 8006662:	f200 80d8 	bhi.w	8006816 <_realloc_r+0x2be>
 8006666:	f10b 0210 	add.w	r2, fp, #16
 800666a:	3508      	adds	r5, #8
 800666c:	6011      	str	r1, [r2, #0]
 800666e:	6869      	ldr	r1, [r5, #4]
 8006670:	6051      	str	r1, [r2, #4]
 8006672:	68a9      	ldr	r1, [r5, #8]
 8006674:	6091      	str	r1, [r2, #8]
 8006676:	461e      	mov	r6, r3
 8006678:	465f      	mov	r7, fp
 800667a:	4655      	mov	r5, sl
 800667c:	687b      	ldr	r3, [r7, #4]
 800667e:	1b32      	subs	r2, r6, r4
 8006680:	2a0f      	cmp	r2, #15
 8006682:	f003 0301 	and.w	r3, r3, #1
 8006686:	d822      	bhi.n	80066ce <_realloc_r+0x176>
 8006688:	4333      	orrs	r3, r6
 800668a:	607b      	str	r3, [r7, #4]
 800668c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006690:	f043 0301 	orr.w	r3, r3, #1
 8006694:	f8c9 3004 	str.w	r3, [r9, #4]
 8006698:	4640      	mov	r0, r8
 800669a:	f7ff fc4d 	bl	8005f38 <__malloc_unlock>
 800669e:	46aa      	mov	sl, r5
 80066a0:	4650      	mov	r0, sl
 80066a2:	b003      	add	sp, #12
 80066a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066a8:	4611      	mov	r1, r2
 80066aa:	b003      	add	sp, #12
 80066ac:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066b0:	f7ff b934 	b.w	800591c <_malloc_r>
 80066b4:	f020 0003 	bic.w	r0, r0, #3
 80066b8:	1833      	adds	r3, r6, r0
 80066ba:	428b      	cmp	r3, r1
 80066bc:	db61      	blt.n	8006782 <_realloc_r+0x22a>
 80066be:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066c2:	461e      	mov	r6, r3
 80066c4:	60ca      	str	r2, [r1, #12]
 80066c6:	eb07 0903 	add.w	r9, r7, r3
 80066ca:	6091      	str	r1, [r2, #8]
 80066cc:	e7d6      	b.n	800667c <_realloc_r+0x124>
 80066ce:	1939      	adds	r1, r7, r4
 80066d0:	4323      	orrs	r3, r4
 80066d2:	f042 0201 	orr.w	r2, r2, #1
 80066d6:	607b      	str	r3, [r7, #4]
 80066d8:	604a      	str	r2, [r1, #4]
 80066da:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066de:	f043 0301 	orr.w	r3, r3, #1
 80066e2:	3108      	adds	r1, #8
 80066e4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066e8:	4640      	mov	r0, r8
 80066ea:	f7fe fded 	bl	80052c8 <_free_r>
 80066ee:	e7d3      	b.n	8006698 <_realloc_r+0x140>
 80066f0:	6840      	ldr	r0, [r0, #4]
 80066f2:	f020 0903 	bic.w	r9, r0, #3
 80066f6:	44b1      	add	r9, r6
 80066f8:	f104 0010 	add.w	r0, r4, #16
 80066fc:	4581      	cmp	r9, r0
 80066fe:	da77      	bge.n	80067f0 <_realloc_r+0x298>
 8006700:	07d2      	lsls	r2, r2, #31
 8006702:	f53f af56 	bmi.w	80065b2 <_realloc_r+0x5a>
 8006706:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800670a:	eba7 0b02 	sub.w	fp, r7, r2
 800670e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006712:	f022 0203 	bic.w	r2, r2, #3
 8006716:	4491      	add	r9, r2
 8006718:	4548      	cmp	r0, r9
 800671a:	dc87      	bgt.n	800662c <_realloc_r+0xd4>
 800671c:	46da      	mov	sl, fp
 800671e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006722:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006726:	1f32      	subs	r2, r6, #4
 8006728:	2a24      	cmp	r2, #36	; 0x24
 800672a:	60c1      	str	r1, [r0, #12]
 800672c:	6088      	str	r0, [r1, #8]
 800672e:	f200 80a1 	bhi.w	8006874 <_realloc_r+0x31c>
 8006732:	2a13      	cmp	r2, #19
 8006734:	6829      	ldr	r1, [r5, #0]
 8006736:	f240 809b 	bls.w	8006870 <_realloc_r+0x318>
 800673a:	f8cb 1008 	str.w	r1, [fp, #8]
 800673e:	6869      	ldr	r1, [r5, #4]
 8006740:	f8cb 100c 	str.w	r1, [fp, #12]
 8006744:	2a1b      	cmp	r2, #27
 8006746:	68a9      	ldr	r1, [r5, #8]
 8006748:	f200 809b 	bhi.w	8006882 <_realloc_r+0x32a>
 800674c:	f10b 0210 	add.w	r2, fp, #16
 8006750:	3508      	adds	r5, #8
 8006752:	6011      	str	r1, [r2, #0]
 8006754:	6869      	ldr	r1, [r5, #4]
 8006756:	6051      	str	r1, [r2, #4]
 8006758:	68a9      	ldr	r1, [r5, #8]
 800675a:	6091      	str	r1, [r2, #8]
 800675c:	eb0b 0104 	add.w	r1, fp, r4
 8006760:	eba9 0204 	sub.w	r2, r9, r4
 8006764:	f042 0201 	orr.w	r2, r2, #1
 8006768:	6099      	str	r1, [r3, #8]
 800676a:	604a      	str	r2, [r1, #4]
 800676c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006770:	f003 0301 	and.w	r3, r3, #1
 8006774:	431c      	orrs	r4, r3
 8006776:	4640      	mov	r0, r8
 8006778:	f8cb 4004 	str.w	r4, [fp, #4]
 800677c:	f7ff fbdc 	bl	8005f38 <__malloc_unlock>
 8006780:	e78e      	b.n	80066a0 <_realloc_r+0x148>
 8006782:	07d3      	lsls	r3, r2, #31
 8006784:	f53f af15 	bmi.w	80065b2 <_realloc_r+0x5a>
 8006788:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800678c:	eba7 0b03 	sub.w	fp, r7, r3
 8006790:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006794:	f022 0203 	bic.w	r2, r2, #3
 8006798:	4410      	add	r0, r2
 800679a:	1983      	adds	r3, r0, r6
 800679c:	428b      	cmp	r3, r1
 800679e:	f6ff af45 	blt.w	800662c <_realloc_r+0xd4>
 80067a2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067a6:	46da      	mov	sl, fp
 80067a8:	60ca      	str	r2, [r1, #12]
 80067aa:	6091      	str	r1, [r2, #8]
 80067ac:	e742      	b.n	8006634 <_realloc_r+0xdc>
 80067ae:	6001      	str	r1, [r0, #0]
 80067b0:	686b      	ldr	r3, [r5, #4]
 80067b2:	6043      	str	r3, [r0, #4]
 80067b4:	2a1b      	cmp	r2, #27
 80067b6:	d83a      	bhi.n	800682e <_realloc_r+0x2d6>
 80067b8:	f105 0208 	add.w	r2, r5, #8
 80067bc:	f100 0308 	add.w	r3, r0, #8
 80067c0:	68a9      	ldr	r1, [r5, #8]
 80067c2:	e710      	b.n	80065e6 <_realloc_r+0x8e>
 80067c4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067c8:	f023 0303 	bic.w	r3, r3, #3
 80067cc:	441e      	add	r6, r3
 80067ce:	eb07 0906 	add.w	r9, r7, r6
 80067d2:	e753      	b.n	800667c <_realloc_r+0x124>
 80067d4:	4652      	mov	r2, sl
 80067d6:	e749      	b.n	800666c <_realloc_r+0x114>
 80067d8:	4629      	mov	r1, r5
 80067da:	4650      	mov	r0, sl
 80067dc:	461e      	mov	r6, r3
 80067de:	465f      	mov	r7, fp
 80067e0:	f7ff fb40 	bl	8005e64 <memmove>
 80067e4:	4655      	mov	r5, sl
 80067e6:	e749      	b.n	800667c <_realloc_r+0x124>
 80067e8:	4629      	mov	r1, r5
 80067ea:	f7ff fb3b 	bl	8005e64 <memmove>
 80067ee:	e6ff      	b.n	80065f0 <_realloc_r+0x98>
 80067f0:	4427      	add	r7, r4
 80067f2:	eba9 0904 	sub.w	r9, r9, r4
 80067f6:	f049 0201 	orr.w	r2, r9, #1
 80067fa:	609f      	str	r7, [r3, #8]
 80067fc:	607a      	str	r2, [r7, #4]
 80067fe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006802:	f003 0301 	and.w	r3, r3, #1
 8006806:	431c      	orrs	r4, r3
 8006808:	4640      	mov	r0, r8
 800680a:	f845 4c04 	str.w	r4, [r5, #-4]
 800680e:	f7ff fb93 	bl	8005f38 <__malloc_unlock>
 8006812:	46aa      	mov	sl, r5
 8006814:	e744      	b.n	80066a0 <_realloc_r+0x148>
 8006816:	f8cb 1010 	str.w	r1, [fp, #16]
 800681a:	68e9      	ldr	r1, [r5, #12]
 800681c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006820:	2a24      	cmp	r2, #36	; 0x24
 8006822:	d010      	beq.n	8006846 <_realloc_r+0x2ee>
 8006824:	6929      	ldr	r1, [r5, #16]
 8006826:	f10b 0218 	add.w	r2, fp, #24
 800682a:	3510      	adds	r5, #16
 800682c:	e71e      	b.n	800666c <_realloc_r+0x114>
 800682e:	68ab      	ldr	r3, [r5, #8]
 8006830:	6083      	str	r3, [r0, #8]
 8006832:	68eb      	ldr	r3, [r5, #12]
 8006834:	60c3      	str	r3, [r0, #12]
 8006836:	2a24      	cmp	r2, #36	; 0x24
 8006838:	d010      	beq.n	800685c <_realloc_r+0x304>
 800683a:	f105 0210 	add.w	r2, r5, #16
 800683e:	f100 0310 	add.w	r3, r0, #16
 8006842:	6929      	ldr	r1, [r5, #16]
 8006844:	e6cf      	b.n	80065e6 <_realloc_r+0x8e>
 8006846:	692a      	ldr	r2, [r5, #16]
 8006848:	f8cb 2018 	str.w	r2, [fp, #24]
 800684c:	696a      	ldr	r2, [r5, #20]
 800684e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006852:	69a9      	ldr	r1, [r5, #24]
 8006854:	f10b 0220 	add.w	r2, fp, #32
 8006858:	3518      	adds	r5, #24
 800685a:	e707      	b.n	800666c <_realloc_r+0x114>
 800685c:	692b      	ldr	r3, [r5, #16]
 800685e:	6103      	str	r3, [r0, #16]
 8006860:	696b      	ldr	r3, [r5, #20]
 8006862:	6143      	str	r3, [r0, #20]
 8006864:	69a9      	ldr	r1, [r5, #24]
 8006866:	f105 0218 	add.w	r2, r5, #24
 800686a:	f100 0318 	add.w	r3, r0, #24
 800686e:	e6ba      	b.n	80065e6 <_realloc_r+0x8e>
 8006870:	4652      	mov	r2, sl
 8006872:	e76e      	b.n	8006752 <_realloc_r+0x1fa>
 8006874:	4629      	mov	r1, r5
 8006876:	4650      	mov	r0, sl
 8006878:	9301      	str	r3, [sp, #4]
 800687a:	f7ff faf3 	bl	8005e64 <memmove>
 800687e:	9b01      	ldr	r3, [sp, #4]
 8006880:	e76c      	b.n	800675c <_realloc_r+0x204>
 8006882:	f8cb 1010 	str.w	r1, [fp, #16]
 8006886:	68e9      	ldr	r1, [r5, #12]
 8006888:	f8cb 1014 	str.w	r1, [fp, #20]
 800688c:	2a24      	cmp	r2, #36	; 0x24
 800688e:	d004      	beq.n	800689a <_realloc_r+0x342>
 8006890:	6929      	ldr	r1, [r5, #16]
 8006892:	f10b 0218 	add.w	r2, fp, #24
 8006896:	3510      	adds	r5, #16
 8006898:	e75b      	b.n	8006752 <_realloc_r+0x1fa>
 800689a:	692a      	ldr	r2, [r5, #16]
 800689c:	f8cb 2018 	str.w	r2, [fp, #24]
 80068a0:	696a      	ldr	r2, [r5, #20]
 80068a2:	f8cb 201c 	str.w	r2, [fp, #28]
 80068a6:	69a9      	ldr	r1, [r5, #24]
 80068a8:	f10b 0220 	add.w	r2, fp, #32
 80068ac:	3518      	adds	r5, #24
 80068ae:	e750      	b.n	8006752 <_realloc_r+0x1fa>
 80068b0:	2000044c 	.word	0x2000044c

080068b4 <frexp>:
 80068b4:	ec53 2b10 	vmov	r2, r3, d0
 80068b8:	b570      	push	{r4, r5, r6, lr}
 80068ba:	4e16      	ldr	r6, [pc, #88]	; (8006914 <frexp+0x60>)
 80068bc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068c0:	2500      	movs	r5, #0
 80068c2:	42b1      	cmp	r1, r6
 80068c4:	4604      	mov	r4, r0
 80068c6:	6005      	str	r5, [r0, #0]
 80068c8:	dc21      	bgt.n	800690e <frexp+0x5a>
 80068ca:	ee10 6a10 	vmov	r6, s0
 80068ce:	430e      	orrs	r6, r1
 80068d0:	d01d      	beq.n	800690e <frexp+0x5a>
 80068d2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80068d6:	4618      	mov	r0, r3
 80068d8:	da0c      	bge.n	80068f4 <frexp+0x40>
 80068da:	4619      	mov	r1, r3
 80068dc:	2200      	movs	r2, #0
 80068de:	ee10 0a10 	vmov	r0, s0
 80068e2:	4b0d      	ldr	r3, [pc, #52]	; (8006918 <frexp+0x64>)
 80068e4:	f7f9 fe48 	bl	8000578 <__aeabi_dmul>
 80068e8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068ec:	4602      	mov	r2, r0
 80068ee:	4608      	mov	r0, r1
 80068f0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068f4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80068f8:	1509      	asrs	r1, r1, #20
 80068fa:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80068fe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006902:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006906:	4429      	add	r1, r5
 8006908:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800690c:	6021      	str	r1, [r4, #0]
 800690e:	ec43 2b10 	vmov	d0, r2, r3
 8006912:	bd70      	pop	{r4, r5, r6, pc}
 8006914:	7fefffff 	.word	0x7fefffff
 8006918:	43500000 	.word	0x43500000

0800691c <_sbrk_r>:
 800691c:	b538      	push	{r3, r4, r5, lr}
 800691e:	4c07      	ldr	r4, [pc, #28]	; (800693c <_sbrk_r+0x20>)
 8006920:	2300      	movs	r3, #0
 8006922:	4605      	mov	r5, r0
 8006924:	4608      	mov	r0, r1
 8006926:	6023      	str	r3, [r4, #0]
 8006928:	f7fb fc35 	bl	8002196 <_sbrk>
 800692c:	1c43      	adds	r3, r0, #1
 800692e:	d000      	beq.n	8006932 <_sbrk_r+0x16>
 8006930:	bd38      	pop	{r3, r4, r5, pc}
 8006932:	6823      	ldr	r3, [r4, #0]
 8006934:	2b00      	cmp	r3, #0
 8006936:	d0fb      	beq.n	8006930 <_sbrk_r+0x14>
 8006938:	602b      	str	r3, [r5, #0]
 800693a:	bd38      	pop	{r3, r4, r5, pc}
 800693c:	20000b0c 	.word	0x20000b0c

08006940 <__sread>:
 8006940:	b510      	push	{r4, lr}
 8006942:	460c      	mov	r4, r1
 8006944:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006948:	f000 fabc 	bl	8006ec4 <_read_r>
 800694c:	2800      	cmp	r0, #0
 800694e:	db03      	blt.n	8006958 <__sread+0x18>
 8006950:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006952:	4403      	add	r3, r0
 8006954:	6523      	str	r3, [r4, #80]	; 0x50
 8006956:	bd10      	pop	{r4, pc}
 8006958:	89a3      	ldrh	r3, [r4, #12]
 800695a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800695e:	81a3      	strh	r3, [r4, #12]
 8006960:	bd10      	pop	{r4, pc}
 8006962:	bf00      	nop

08006964 <__swrite>:
 8006964:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006968:	4616      	mov	r6, r2
 800696a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800696e:	461f      	mov	r7, r3
 8006970:	05d3      	lsls	r3, r2, #23
 8006972:	460c      	mov	r4, r1
 8006974:	4605      	mov	r5, r0
 8006976:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800697a:	d507      	bpl.n	800698c <__swrite+0x28>
 800697c:	2200      	movs	r2, #0
 800697e:	2302      	movs	r3, #2
 8006980:	f000 fa74 	bl	8006e6c <_lseek_r>
 8006984:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006988:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800698c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006990:	81a2      	strh	r2, [r4, #12]
 8006992:	463b      	mov	r3, r7
 8006994:	4632      	mov	r2, r6
 8006996:	4628      	mov	r0, r5
 8006998:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800699c:	f000 b88c 	b.w	8006ab8 <_write_r>

080069a0 <__sseek>:
 80069a0:	b510      	push	{r4, lr}
 80069a2:	460c      	mov	r4, r1
 80069a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069a8:	f000 fa60 	bl	8006e6c <_lseek_r>
 80069ac:	89a3      	ldrh	r3, [r4, #12]
 80069ae:	1c42      	adds	r2, r0, #1
 80069b0:	bf0e      	itee	eq
 80069b2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069b6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069ba:	6520      	strne	r0, [r4, #80]	; 0x50
 80069bc:	81a3      	strh	r3, [r4, #12]
 80069be:	bd10      	pop	{r4, pc}

080069c0 <__sclose>:
 80069c0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069c4:	f000 b922 	b.w	8006c0c <_close_r>

080069c8 <strncpy>:
 80069c8:	ea40 0301 	orr.w	r3, r0, r1
 80069cc:	079b      	lsls	r3, r3, #30
 80069ce:	b470      	push	{r4, r5, r6}
 80069d0:	d12a      	bne.n	8006a28 <strncpy+0x60>
 80069d2:	2a03      	cmp	r2, #3
 80069d4:	d928      	bls.n	8006a28 <strncpy+0x60>
 80069d6:	460c      	mov	r4, r1
 80069d8:	4603      	mov	r3, r0
 80069da:	4621      	mov	r1, r4
 80069dc:	f854 6b04 	ldr.w	r6, [r4], #4
 80069e0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069e4:	ea25 0506 	bic.w	r5, r5, r6
 80069e8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069ec:	d106      	bne.n	80069fc <strncpy+0x34>
 80069ee:	3a04      	subs	r2, #4
 80069f0:	2a03      	cmp	r2, #3
 80069f2:	f843 6b04 	str.w	r6, [r3], #4
 80069f6:	4621      	mov	r1, r4
 80069f8:	d8ef      	bhi.n	80069da <strncpy+0x12>
 80069fa:	b19a      	cbz	r2, 8006a24 <strncpy+0x5c>
 80069fc:	780c      	ldrb	r4, [r1, #0]
 80069fe:	701c      	strb	r4, [r3, #0]
 8006a00:	3a01      	subs	r2, #1
 8006a02:	3301      	adds	r3, #1
 8006a04:	b13c      	cbz	r4, 8006a16 <strncpy+0x4e>
 8006a06:	b16a      	cbz	r2, 8006a24 <strncpy+0x5c>
 8006a08:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a0c:	f803 4b01 	strb.w	r4, [r3], #1
 8006a10:	3a01      	subs	r2, #1
 8006a12:	2c00      	cmp	r4, #0
 8006a14:	d1f7      	bne.n	8006a06 <strncpy+0x3e>
 8006a16:	b12a      	cbz	r2, 8006a24 <strncpy+0x5c>
 8006a18:	441a      	add	r2, r3
 8006a1a:	2100      	movs	r1, #0
 8006a1c:	f803 1b01 	strb.w	r1, [r3], #1
 8006a20:	4293      	cmp	r3, r2
 8006a22:	d1fb      	bne.n	8006a1c <strncpy+0x54>
 8006a24:	bc70      	pop	{r4, r5, r6}
 8006a26:	4770      	bx	lr
 8006a28:	4603      	mov	r3, r0
 8006a2a:	e7e6      	b.n	80069fa <strncpy+0x32>

08006a2c <__sprint_r.part.0>:
 8006a2c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a30:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a32:	049c      	lsls	r4, r3, #18
 8006a34:	4692      	mov	sl, r2
 8006a36:	d52d      	bpl.n	8006a94 <__sprint_r.part.0+0x68>
 8006a38:	6893      	ldr	r3, [r2, #8]
 8006a3a:	6812      	ldr	r2, [r2, #0]
 8006a3c:	b343      	cbz	r3, 8006a90 <__sprint_r.part.0+0x64>
 8006a3e:	460e      	mov	r6, r1
 8006a40:	4607      	mov	r7, r0
 8006a42:	f102 0908 	add.w	r9, r2, #8
 8006a46:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a4a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a4e:	d015      	beq.n	8006a7c <__sprint_r.part.0+0x50>
 8006a50:	3d04      	subs	r5, #4
 8006a52:	2400      	movs	r4, #0
 8006a54:	e001      	b.n	8006a5a <__sprint_r.part.0+0x2e>
 8006a56:	45a0      	cmp	r8, r4
 8006a58:	d00e      	beq.n	8006a78 <__sprint_r.part.0+0x4c>
 8006a5a:	4632      	mov	r2, r6
 8006a5c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a60:	4638      	mov	r0, r7
 8006a62:	f000 f99d 	bl	8006da0 <_fputwc_r>
 8006a66:	1c43      	adds	r3, r0, #1
 8006a68:	f104 0401 	add.w	r4, r4, #1
 8006a6c:	d1f3      	bne.n	8006a56 <__sprint_r.part.0+0x2a>
 8006a6e:	2300      	movs	r3, #0
 8006a70:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a74:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a78:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a7c:	f02b 0b03 	bic.w	fp, fp, #3
 8006a80:	eba3 030b 	sub.w	r3, r3, fp
 8006a84:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a88:	f109 0908 	add.w	r9, r9, #8
 8006a8c:	2b00      	cmp	r3, #0
 8006a8e:	d1da      	bne.n	8006a46 <__sprint_r.part.0+0x1a>
 8006a90:	2000      	movs	r0, #0
 8006a92:	e7ec      	b.n	8006a6e <__sprint_r.part.0+0x42>
 8006a94:	f7fe fd0c 	bl	80054b0 <__sfvwrite_r>
 8006a98:	2300      	movs	r3, #0
 8006a9a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a9e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aa2:	bf00      	nop

08006aa4 <__sprint_r>:
 8006aa4:	6893      	ldr	r3, [r2, #8]
 8006aa6:	b10b      	cbz	r3, 8006aac <__sprint_r+0x8>
 8006aa8:	f7ff bfc0 	b.w	8006a2c <__sprint_r.part.0>
 8006aac:	b410      	push	{r4}
 8006aae:	4618      	mov	r0, r3
 8006ab0:	6053      	str	r3, [r2, #4]
 8006ab2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006ab6:	4770      	bx	lr

08006ab8 <_write_r>:
 8006ab8:	b570      	push	{r4, r5, r6, lr}
 8006aba:	460d      	mov	r5, r1
 8006abc:	4c08      	ldr	r4, [pc, #32]	; (8006ae0 <_write_r+0x28>)
 8006abe:	4611      	mov	r1, r2
 8006ac0:	4606      	mov	r6, r0
 8006ac2:	461a      	mov	r2, r3
 8006ac4:	4628      	mov	r0, r5
 8006ac6:	2300      	movs	r3, #0
 8006ac8:	6023      	str	r3, [r4, #0]
 8006aca:	f7fb fb51 	bl	8002170 <_write>
 8006ace:	1c43      	adds	r3, r0, #1
 8006ad0:	d000      	beq.n	8006ad4 <_write_r+0x1c>
 8006ad2:	bd70      	pop	{r4, r5, r6, pc}
 8006ad4:	6823      	ldr	r3, [r4, #0]
 8006ad6:	2b00      	cmp	r3, #0
 8006ad8:	d0fb      	beq.n	8006ad2 <_write_r+0x1a>
 8006ada:	6033      	str	r3, [r6, #0]
 8006adc:	bd70      	pop	{r4, r5, r6, pc}
 8006ade:	bf00      	nop
 8006ae0:	20000b0c 	.word	0x20000b0c

08006ae4 <__register_exitproc>:
 8006ae4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ae8:	4d2b      	ldr	r5, [pc, #172]	; (8006b98 <__register_exitproc+0xb4>)
 8006aea:	4606      	mov	r6, r0
 8006aec:	6828      	ldr	r0, [r5, #0]
 8006aee:	4698      	mov	r8, r3
 8006af0:	460f      	mov	r7, r1
 8006af2:	4691      	mov	r9, r2
 8006af4:	f7fe fe96 	bl	8005824 <__retarget_lock_acquire_recursive>
 8006af8:	4b28      	ldr	r3, [pc, #160]	; (8006b9c <__register_exitproc+0xb8>)
 8006afa:	681c      	ldr	r4, [r3, #0]
 8006afc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b00:	2b00      	cmp	r3, #0
 8006b02:	d03d      	beq.n	8006b80 <__register_exitproc+0x9c>
 8006b04:	685a      	ldr	r2, [r3, #4]
 8006b06:	2a1f      	cmp	r2, #31
 8006b08:	dc0d      	bgt.n	8006b26 <__register_exitproc+0x42>
 8006b0a:	f102 0c01 	add.w	ip, r2, #1
 8006b0e:	bb16      	cbnz	r6, 8006b56 <__register_exitproc+0x72>
 8006b10:	3202      	adds	r2, #2
 8006b12:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b16:	6828      	ldr	r0, [r5, #0]
 8006b18:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b1c:	f7fe fe84 	bl	8005828 <__retarget_lock_release_recursive>
 8006b20:	2000      	movs	r0, #0
 8006b22:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b26:	4b1e      	ldr	r3, [pc, #120]	; (8006ba0 <__register_exitproc+0xbc>)
 8006b28:	b37b      	cbz	r3, 8006b8a <__register_exitproc+0xa6>
 8006b2a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b2e:	f3af 8000 	nop.w
 8006b32:	4603      	mov	r3, r0
 8006b34:	b348      	cbz	r0, 8006b8a <__register_exitproc+0xa6>
 8006b36:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b3a:	2100      	movs	r1, #0
 8006b3c:	e9c0 2100 	strd	r2, r1, [r0]
 8006b40:	f04f 0c01 	mov.w	ip, #1
 8006b44:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b48:	460a      	mov	r2, r1
 8006b4a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b4e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b52:	2e00      	cmp	r6, #0
 8006b54:	d0dc      	beq.n	8006b10 <__register_exitproc+0x2c>
 8006b56:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b5a:	2401      	movs	r4, #1
 8006b5c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b60:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b64:	4094      	lsls	r4, r2
 8006b66:	4320      	orrs	r0, r4
 8006b68:	2e02      	cmp	r6, #2
 8006b6a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b6e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b72:	d1cd      	bne.n	8006b10 <__register_exitproc+0x2c>
 8006b74:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b78:	430c      	orrs	r4, r1
 8006b7a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b7e:	e7c7      	b.n	8006b10 <__register_exitproc+0x2c>
 8006b80:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b84:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b88:	e7bc      	b.n	8006b04 <__register_exitproc+0x20>
 8006b8a:	6828      	ldr	r0, [r5, #0]
 8006b8c:	f7fe fe4c 	bl	8005828 <__retarget_lock_release_recursive>
 8006b90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b94:	e7c5      	b.n	8006b22 <__register_exitproc+0x3e>
 8006b96:	bf00      	nop
 8006b98:	20000448 	.word	0x20000448
 8006b9c:	0800713c 	.word	0x0800713c
 8006ba0:	00000000 	.word	0x00000000

08006ba4 <_calloc_r>:
 8006ba4:	b510      	push	{r4, lr}
 8006ba6:	fb02 f101 	mul.w	r1, r2, r1
 8006baa:	f7fe feb7 	bl	800591c <_malloc_r>
 8006bae:	4604      	mov	r4, r0
 8006bb0:	b1d8      	cbz	r0, 8006bea <_calloc_r+0x46>
 8006bb2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bb6:	f022 0203 	bic.w	r2, r2, #3
 8006bba:	3a04      	subs	r2, #4
 8006bbc:	2a24      	cmp	r2, #36	; 0x24
 8006bbe:	d81d      	bhi.n	8006bfc <_calloc_r+0x58>
 8006bc0:	2a13      	cmp	r2, #19
 8006bc2:	d914      	bls.n	8006bee <_calloc_r+0x4a>
 8006bc4:	2300      	movs	r3, #0
 8006bc6:	2a1b      	cmp	r2, #27
 8006bc8:	e9c0 3300 	strd	r3, r3, [r0]
 8006bcc:	d91b      	bls.n	8006c06 <_calloc_r+0x62>
 8006bce:	2a24      	cmp	r2, #36	; 0x24
 8006bd0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006bd4:	bf0a      	itet	eq
 8006bd6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006bda:	f100 0210 	addne.w	r2, r0, #16
 8006bde:	f100 0218 	addeq.w	r2, r0, #24
 8006be2:	2300      	movs	r3, #0
 8006be4:	e9c2 3300 	strd	r3, r3, [r2]
 8006be8:	6093      	str	r3, [r2, #8]
 8006bea:	4620      	mov	r0, r4
 8006bec:	bd10      	pop	{r4, pc}
 8006bee:	4602      	mov	r2, r0
 8006bf0:	2300      	movs	r3, #0
 8006bf2:	e9c2 3300 	strd	r3, r3, [r2]
 8006bf6:	6093      	str	r3, [r2, #8]
 8006bf8:	4620      	mov	r0, r4
 8006bfa:	bd10      	pop	{r4, pc}
 8006bfc:	2100      	movs	r1, #0
 8006bfe:	f7fb fb6f 	bl	80022e0 <memset>
 8006c02:	4620      	mov	r0, r4
 8006c04:	bd10      	pop	{r4, pc}
 8006c06:	f100 0208 	add.w	r2, r0, #8
 8006c0a:	e7f1      	b.n	8006bf0 <_calloc_r+0x4c>

08006c0c <_close_r>:
 8006c0c:	b538      	push	{r3, r4, r5, lr}
 8006c0e:	4c07      	ldr	r4, [pc, #28]	; (8006c2c <_close_r+0x20>)
 8006c10:	2300      	movs	r3, #0
 8006c12:	4605      	mov	r5, r0
 8006c14:	4608      	mov	r0, r1
 8006c16:	6023      	str	r3, [r4, #0]
 8006c18:	f7fb fad9 	bl	80021ce <_close>
 8006c1c:	1c43      	adds	r3, r0, #1
 8006c1e:	d000      	beq.n	8006c22 <_close_r+0x16>
 8006c20:	bd38      	pop	{r3, r4, r5, pc}
 8006c22:	6823      	ldr	r3, [r4, #0]
 8006c24:	2b00      	cmp	r3, #0
 8006c26:	d0fb      	beq.n	8006c20 <_close_r+0x14>
 8006c28:	602b      	str	r3, [r5, #0]
 8006c2a:	bd38      	pop	{r3, r4, r5, pc}
 8006c2c:	20000b0c 	.word	0x20000b0c

08006c30 <_fclose_r>:
 8006c30:	b570      	push	{r4, r5, r6, lr}
 8006c32:	2900      	cmp	r1, #0
 8006c34:	d048      	beq.n	8006cc8 <_fclose_r+0x98>
 8006c36:	4605      	mov	r5, r0
 8006c38:	460c      	mov	r4, r1
 8006c3a:	b110      	cbz	r0, 8006c42 <_fclose_r+0x12>
 8006c3c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c3e:	2b00      	cmp	r3, #0
 8006c40:	d048      	beq.n	8006cd4 <_fclose_r+0xa4>
 8006c42:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c48:	07d0      	lsls	r0, r2, #31
 8006c4a:	d440      	bmi.n	8006cce <_fclose_r+0x9e>
 8006c4c:	0599      	lsls	r1, r3, #22
 8006c4e:	d530      	bpl.n	8006cb2 <_fclose_r+0x82>
 8006c50:	4621      	mov	r1, r4
 8006c52:	4628      	mov	r0, r5
 8006c54:	f7fe f990 	bl	8004f78 <__sflush_r>
 8006c58:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c5a:	4606      	mov	r6, r0
 8006c5c:	b133      	cbz	r3, 8006c6c <_fclose_r+0x3c>
 8006c5e:	69e1      	ldr	r1, [r4, #28]
 8006c60:	4628      	mov	r0, r5
 8006c62:	4798      	blx	r3
 8006c64:	2800      	cmp	r0, #0
 8006c66:	bfb8      	it	lt
 8006c68:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c6c:	89a3      	ldrh	r3, [r4, #12]
 8006c6e:	061a      	lsls	r2, r3, #24
 8006c70:	d43c      	bmi.n	8006cec <_fclose_r+0xbc>
 8006c72:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c74:	b141      	cbz	r1, 8006c88 <_fclose_r+0x58>
 8006c76:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c7a:	4299      	cmp	r1, r3
 8006c7c:	d002      	beq.n	8006c84 <_fclose_r+0x54>
 8006c7e:	4628      	mov	r0, r5
 8006c80:	f7fe fb22 	bl	80052c8 <_free_r>
 8006c84:	2300      	movs	r3, #0
 8006c86:	6323      	str	r3, [r4, #48]	; 0x30
 8006c88:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c8a:	b121      	cbz	r1, 8006c96 <_fclose_r+0x66>
 8006c8c:	4628      	mov	r0, r5
 8006c8e:	f7fe fb1b 	bl	80052c8 <_free_r>
 8006c92:	2300      	movs	r3, #0
 8006c94:	6463      	str	r3, [r4, #68]	; 0x44
 8006c96:	f7fe faa1 	bl	80051dc <__sfp_lock_acquire>
 8006c9a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c9c:	2200      	movs	r2, #0
 8006c9e:	07db      	lsls	r3, r3, #31
 8006ca0:	81a2      	strh	r2, [r4, #12]
 8006ca2:	d51f      	bpl.n	8006ce4 <_fclose_r+0xb4>
 8006ca4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ca6:	f7fe fdbb 	bl	8005820 <__retarget_lock_close_recursive>
 8006caa:	f7fe fa9d 	bl	80051e8 <__sfp_lock_release>
 8006cae:	4630      	mov	r0, r6
 8006cb0:	bd70      	pop	{r4, r5, r6, pc}
 8006cb2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cb4:	f7fe fdb6 	bl	8005824 <__retarget_lock_acquire_recursive>
 8006cb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cbc:	2b00      	cmp	r3, #0
 8006cbe:	d1c7      	bne.n	8006c50 <_fclose_r+0x20>
 8006cc0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cc2:	f016 0601 	ands.w	r6, r6, #1
 8006cc6:	d016      	beq.n	8006cf6 <_fclose_r+0xc6>
 8006cc8:	2600      	movs	r6, #0
 8006cca:	4630      	mov	r0, r6
 8006ccc:	bd70      	pop	{r4, r5, r6, pc}
 8006cce:	2b00      	cmp	r3, #0
 8006cd0:	d0fa      	beq.n	8006cc8 <_fclose_r+0x98>
 8006cd2:	e7bd      	b.n	8006c50 <_fclose_r+0x20>
 8006cd4:	f7fe fa56 	bl	8005184 <__sinit>
 8006cd8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cda:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cde:	07d0      	lsls	r0, r2, #31
 8006ce0:	d4f5      	bmi.n	8006cce <_fclose_r+0x9e>
 8006ce2:	e7b3      	b.n	8006c4c <_fclose_r+0x1c>
 8006ce4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ce6:	f7fe fd9f 	bl	8005828 <__retarget_lock_release_recursive>
 8006cea:	e7db      	b.n	8006ca4 <_fclose_r+0x74>
 8006cec:	6921      	ldr	r1, [r4, #16]
 8006cee:	4628      	mov	r0, r5
 8006cf0:	f7fe faea 	bl	80052c8 <_free_r>
 8006cf4:	e7bd      	b.n	8006c72 <_fclose_r+0x42>
 8006cf6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cf8:	f7fe fd96 	bl	8005828 <__retarget_lock_release_recursive>
 8006cfc:	4630      	mov	r0, r6
 8006cfe:	bd70      	pop	{r4, r5, r6, pc}

08006d00 <__fputwc>:
 8006d00:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d04:	b082      	sub	sp, #8
 8006d06:	4681      	mov	r9, r0
 8006d08:	4688      	mov	r8, r1
 8006d0a:	4614      	mov	r4, r2
 8006d0c:	f000 f8a0 	bl	8006e50 <__locale_mb_cur_max>
 8006d10:	2801      	cmp	r0, #1
 8006d12:	d103      	bne.n	8006d1c <__fputwc+0x1c>
 8006d14:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d18:	2bfe      	cmp	r3, #254	; 0xfe
 8006d1a:	d933      	bls.n	8006d84 <__fputwc+0x84>
 8006d1c:	4642      	mov	r2, r8
 8006d1e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d22:	a901      	add	r1, sp, #4
 8006d24:	4648      	mov	r0, r9
 8006d26:	f000 f93b 	bl	8006fa0 <_wcrtomb_r>
 8006d2a:	1c42      	adds	r2, r0, #1
 8006d2c:	4606      	mov	r6, r0
 8006d2e:	d02f      	beq.n	8006d90 <__fputwc+0x90>
 8006d30:	b320      	cbz	r0, 8006d7c <__fputwc+0x7c>
 8006d32:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d36:	2500      	movs	r5, #0
 8006d38:	f10d 0a04 	add.w	sl, sp, #4
 8006d3c:	e009      	b.n	8006d52 <__fputwc+0x52>
 8006d3e:	6823      	ldr	r3, [r4, #0]
 8006d40:	1c5a      	adds	r2, r3, #1
 8006d42:	6022      	str	r2, [r4, #0]
 8006d44:	f883 c000 	strb.w	ip, [r3]
 8006d48:	3501      	adds	r5, #1
 8006d4a:	42b5      	cmp	r5, r6
 8006d4c:	d216      	bcs.n	8006d7c <__fputwc+0x7c>
 8006d4e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d52:	68a3      	ldr	r3, [r4, #8]
 8006d54:	3b01      	subs	r3, #1
 8006d56:	2b00      	cmp	r3, #0
 8006d58:	60a3      	str	r3, [r4, #8]
 8006d5a:	daf0      	bge.n	8006d3e <__fputwc+0x3e>
 8006d5c:	69a7      	ldr	r7, [r4, #24]
 8006d5e:	42bb      	cmp	r3, r7
 8006d60:	4661      	mov	r1, ip
 8006d62:	4622      	mov	r2, r4
 8006d64:	4648      	mov	r0, r9
 8006d66:	db02      	blt.n	8006d6e <__fputwc+0x6e>
 8006d68:	f1bc 0f0a 	cmp.w	ip, #10
 8006d6c:	d1e7      	bne.n	8006d3e <__fputwc+0x3e>
 8006d6e:	f000 f8bf 	bl	8006ef0 <__swbuf_r>
 8006d72:	1c43      	adds	r3, r0, #1
 8006d74:	d1e8      	bne.n	8006d48 <__fputwc+0x48>
 8006d76:	b002      	add	sp, #8
 8006d78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d7c:	4640      	mov	r0, r8
 8006d7e:	b002      	add	sp, #8
 8006d80:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d84:	fa5f fc88 	uxtb.w	ip, r8
 8006d88:	4606      	mov	r6, r0
 8006d8a:	f88d c004 	strb.w	ip, [sp, #4]
 8006d8e:	e7d2      	b.n	8006d36 <__fputwc+0x36>
 8006d90:	89a3      	ldrh	r3, [r4, #12]
 8006d92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d96:	81a3      	strh	r3, [r4, #12]
 8006d98:	b002      	add	sp, #8
 8006d9a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d9e:	bf00      	nop

08006da0 <_fputwc_r>:
 8006da0:	b530      	push	{r4, r5, lr}
 8006da2:	4605      	mov	r5, r0
 8006da4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006da6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006daa:	07c0      	lsls	r0, r0, #31
 8006dac:	4614      	mov	r4, r2
 8006dae:	b083      	sub	sp, #12
 8006db0:	b29a      	uxth	r2, r3
 8006db2:	d401      	bmi.n	8006db8 <_fputwc_r+0x18>
 8006db4:	0590      	lsls	r0, r2, #22
 8006db6:	d51c      	bpl.n	8006df2 <_fputwc_r+0x52>
 8006db8:	0490      	lsls	r0, r2, #18
 8006dba:	d406      	bmi.n	8006dca <_fputwc_r+0x2a>
 8006dbc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dbe:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006dc2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dc6:	81a3      	strh	r3, [r4, #12]
 8006dc8:	6662      	str	r2, [r4, #100]	; 0x64
 8006dca:	4628      	mov	r0, r5
 8006dcc:	4622      	mov	r2, r4
 8006dce:	f7ff ff97 	bl	8006d00 <__fputwc>
 8006dd2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006dd4:	07da      	lsls	r2, r3, #31
 8006dd6:	4605      	mov	r5, r0
 8006dd8:	d402      	bmi.n	8006de0 <_fputwc_r+0x40>
 8006dda:	89a3      	ldrh	r3, [r4, #12]
 8006ddc:	059b      	lsls	r3, r3, #22
 8006dde:	d502      	bpl.n	8006de6 <_fputwc_r+0x46>
 8006de0:	4628      	mov	r0, r5
 8006de2:	b003      	add	sp, #12
 8006de4:	bd30      	pop	{r4, r5, pc}
 8006de6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006de8:	f7fe fd1e 	bl	8005828 <__retarget_lock_release_recursive>
 8006dec:	4628      	mov	r0, r5
 8006dee:	b003      	add	sp, #12
 8006df0:	bd30      	pop	{r4, r5, pc}
 8006df2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006df4:	9101      	str	r1, [sp, #4]
 8006df6:	f7fe fd15 	bl	8005824 <__retarget_lock_acquire_recursive>
 8006dfa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dfe:	9901      	ldr	r1, [sp, #4]
 8006e00:	b29a      	uxth	r2, r3
 8006e02:	e7d9      	b.n	8006db8 <_fputwc_r+0x18>

08006e04 <_fstat_r>:
 8006e04:	b538      	push	{r3, r4, r5, lr}
 8006e06:	460b      	mov	r3, r1
 8006e08:	4c07      	ldr	r4, [pc, #28]	; (8006e28 <_fstat_r+0x24>)
 8006e0a:	4605      	mov	r5, r0
 8006e0c:	4611      	mov	r1, r2
 8006e0e:	4618      	mov	r0, r3
 8006e10:	2300      	movs	r3, #0
 8006e12:	6023      	str	r3, [r4, #0]
 8006e14:	f7fb f9de 	bl	80021d4 <_fstat>
 8006e18:	1c43      	adds	r3, r0, #1
 8006e1a:	d000      	beq.n	8006e1e <_fstat_r+0x1a>
 8006e1c:	bd38      	pop	{r3, r4, r5, pc}
 8006e1e:	6823      	ldr	r3, [r4, #0]
 8006e20:	2b00      	cmp	r3, #0
 8006e22:	d0fb      	beq.n	8006e1c <_fstat_r+0x18>
 8006e24:	602b      	str	r3, [r5, #0]
 8006e26:	bd38      	pop	{r3, r4, r5, pc}
 8006e28:	20000b0c 	.word	0x20000b0c

08006e2c <_isatty_r>:
 8006e2c:	b538      	push	{r3, r4, r5, lr}
 8006e2e:	4c07      	ldr	r4, [pc, #28]	; (8006e4c <_isatty_r+0x20>)
 8006e30:	2300      	movs	r3, #0
 8006e32:	4605      	mov	r5, r0
 8006e34:	4608      	mov	r0, r1
 8006e36:	6023      	str	r3, [r4, #0]
 8006e38:	f7fb f9d1 	bl	80021de <_isatty>
 8006e3c:	1c43      	adds	r3, r0, #1
 8006e3e:	d000      	beq.n	8006e42 <_isatty_r+0x16>
 8006e40:	bd38      	pop	{r3, r4, r5, pc}
 8006e42:	6823      	ldr	r3, [r4, #0]
 8006e44:	2b00      	cmp	r3, #0
 8006e46:	d0fb      	beq.n	8006e40 <_isatty_r+0x14>
 8006e48:	602b      	str	r3, [r5, #0]
 8006e4a:	bd38      	pop	{r3, r4, r5, pc}
 8006e4c:	20000b0c 	.word	0x20000b0c

08006e50 <__locale_mb_cur_max>:
 8006e50:	4b04      	ldr	r3, [pc, #16]	; (8006e64 <__locale_mb_cur_max+0x14>)
 8006e52:	4a05      	ldr	r2, [pc, #20]	; (8006e68 <__locale_mb_cur_max+0x18>)
 8006e54:	681b      	ldr	r3, [r3, #0]
 8006e56:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e58:	2b00      	cmp	r3, #0
 8006e5a:	bf08      	it	eq
 8006e5c:	4613      	moveq	r3, r2
 8006e5e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e62:	4770      	bx	lr
 8006e64:	20000018 	.word	0x20000018
 8006e68:	2000085c 	.word	0x2000085c

08006e6c <_lseek_r>:
 8006e6c:	b570      	push	{r4, r5, r6, lr}
 8006e6e:	460d      	mov	r5, r1
 8006e70:	4c08      	ldr	r4, [pc, #32]	; (8006e94 <_lseek_r+0x28>)
 8006e72:	4611      	mov	r1, r2
 8006e74:	4606      	mov	r6, r0
 8006e76:	461a      	mov	r2, r3
 8006e78:	4628      	mov	r0, r5
 8006e7a:	2300      	movs	r3, #0
 8006e7c:	6023      	str	r3, [r4, #0]
 8006e7e:	f7fb f9b0 	bl	80021e2 <_lseek>
 8006e82:	1c43      	adds	r3, r0, #1
 8006e84:	d000      	beq.n	8006e88 <_lseek_r+0x1c>
 8006e86:	bd70      	pop	{r4, r5, r6, pc}
 8006e88:	6823      	ldr	r3, [r4, #0]
 8006e8a:	2b00      	cmp	r3, #0
 8006e8c:	d0fb      	beq.n	8006e86 <_lseek_r+0x1a>
 8006e8e:	6033      	str	r3, [r6, #0]
 8006e90:	bd70      	pop	{r4, r5, r6, pc}
 8006e92:	bf00      	nop
 8006e94:	20000b0c 	.word	0x20000b0c

08006e98 <__ascii_mbtowc>:
 8006e98:	b082      	sub	sp, #8
 8006e9a:	b149      	cbz	r1, 8006eb0 <__ascii_mbtowc+0x18>
 8006e9c:	b15a      	cbz	r2, 8006eb6 <__ascii_mbtowc+0x1e>
 8006e9e:	b16b      	cbz	r3, 8006ebc <__ascii_mbtowc+0x24>
 8006ea0:	7813      	ldrb	r3, [r2, #0]
 8006ea2:	600b      	str	r3, [r1, #0]
 8006ea4:	7812      	ldrb	r2, [r2, #0]
 8006ea6:	1c10      	adds	r0, r2, #0
 8006ea8:	bf18      	it	ne
 8006eaa:	2001      	movne	r0, #1
 8006eac:	b002      	add	sp, #8
 8006eae:	4770      	bx	lr
 8006eb0:	a901      	add	r1, sp, #4
 8006eb2:	2a00      	cmp	r2, #0
 8006eb4:	d1f3      	bne.n	8006e9e <__ascii_mbtowc+0x6>
 8006eb6:	4610      	mov	r0, r2
 8006eb8:	b002      	add	sp, #8
 8006eba:	4770      	bx	lr
 8006ebc:	f06f 0001 	mvn.w	r0, #1
 8006ec0:	e7f4      	b.n	8006eac <__ascii_mbtowc+0x14>
 8006ec2:	bf00      	nop

08006ec4 <_read_r>:
 8006ec4:	b570      	push	{r4, r5, r6, lr}
 8006ec6:	460d      	mov	r5, r1
 8006ec8:	4c08      	ldr	r4, [pc, #32]	; (8006eec <_read_r+0x28>)
 8006eca:	4611      	mov	r1, r2
 8006ecc:	4606      	mov	r6, r0
 8006ece:	461a      	mov	r2, r3
 8006ed0:	4628      	mov	r0, r5
 8006ed2:	2300      	movs	r3, #0
 8006ed4:	6023      	str	r3, [r4, #0]
 8006ed6:	f7fb f938 	bl	800214a <_read>
 8006eda:	1c43      	adds	r3, r0, #1
 8006edc:	d000      	beq.n	8006ee0 <_read_r+0x1c>
 8006ede:	bd70      	pop	{r4, r5, r6, pc}
 8006ee0:	6823      	ldr	r3, [r4, #0]
 8006ee2:	2b00      	cmp	r3, #0
 8006ee4:	d0fb      	beq.n	8006ede <_read_r+0x1a>
 8006ee6:	6033      	str	r3, [r6, #0]
 8006ee8:	bd70      	pop	{r4, r5, r6, pc}
 8006eea:	bf00      	nop
 8006eec:	20000b0c 	.word	0x20000b0c

08006ef0 <__swbuf_r>:
 8006ef0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ef2:	460d      	mov	r5, r1
 8006ef4:	4614      	mov	r4, r2
 8006ef6:	4606      	mov	r6, r0
 8006ef8:	b110      	cbz	r0, 8006f00 <__swbuf_r+0x10>
 8006efa:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006efc:	2b00      	cmp	r3, #0
 8006efe:	d043      	beq.n	8006f88 <__swbuf_r+0x98>
 8006f00:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f04:	69a3      	ldr	r3, [r4, #24]
 8006f06:	60a3      	str	r3, [r4, #8]
 8006f08:	b291      	uxth	r1, r2
 8006f0a:	0708      	lsls	r0, r1, #28
 8006f0c:	d51b      	bpl.n	8006f46 <__swbuf_r+0x56>
 8006f0e:	6923      	ldr	r3, [r4, #16]
 8006f10:	b1cb      	cbz	r3, 8006f46 <__swbuf_r+0x56>
 8006f12:	b2ed      	uxtb	r5, r5
 8006f14:	0489      	lsls	r1, r1, #18
 8006f16:	462f      	mov	r7, r5
 8006f18:	d522      	bpl.n	8006f60 <__swbuf_r+0x70>
 8006f1a:	6822      	ldr	r2, [r4, #0]
 8006f1c:	6961      	ldr	r1, [r4, #20]
 8006f1e:	1ad3      	subs	r3, r2, r3
 8006f20:	4299      	cmp	r1, r3
 8006f22:	dd29      	ble.n	8006f78 <__swbuf_r+0x88>
 8006f24:	3301      	adds	r3, #1
 8006f26:	68a1      	ldr	r1, [r4, #8]
 8006f28:	1c50      	adds	r0, r2, #1
 8006f2a:	3901      	subs	r1, #1
 8006f2c:	60a1      	str	r1, [r4, #8]
 8006f2e:	6020      	str	r0, [r4, #0]
 8006f30:	7015      	strb	r5, [r2, #0]
 8006f32:	6962      	ldr	r2, [r4, #20]
 8006f34:	429a      	cmp	r2, r3
 8006f36:	d02a      	beq.n	8006f8e <__swbuf_r+0x9e>
 8006f38:	89a3      	ldrh	r3, [r4, #12]
 8006f3a:	07db      	lsls	r3, r3, #31
 8006f3c:	d501      	bpl.n	8006f42 <__swbuf_r+0x52>
 8006f3e:	2d0a      	cmp	r5, #10
 8006f40:	d025      	beq.n	8006f8e <__swbuf_r+0x9e>
 8006f42:	4638      	mov	r0, r7
 8006f44:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f46:	4621      	mov	r1, r4
 8006f48:	4630      	mov	r0, r6
 8006f4a:	f7fc fffd 	bl	8003f48 <__swsetup_r>
 8006f4e:	bb20      	cbnz	r0, 8006f9a <__swbuf_r+0xaa>
 8006f50:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f54:	6923      	ldr	r3, [r4, #16]
 8006f56:	b291      	uxth	r1, r2
 8006f58:	b2ed      	uxtb	r5, r5
 8006f5a:	0489      	lsls	r1, r1, #18
 8006f5c:	462f      	mov	r7, r5
 8006f5e:	d4dc      	bmi.n	8006f1a <__swbuf_r+0x2a>
 8006f60:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f62:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f66:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f6a:	81a2      	strh	r2, [r4, #12]
 8006f6c:	6822      	ldr	r2, [r4, #0]
 8006f6e:	6661      	str	r1, [r4, #100]	; 0x64
 8006f70:	6961      	ldr	r1, [r4, #20]
 8006f72:	1ad3      	subs	r3, r2, r3
 8006f74:	4299      	cmp	r1, r3
 8006f76:	dcd5      	bgt.n	8006f24 <__swbuf_r+0x34>
 8006f78:	4621      	mov	r1, r4
 8006f7a:	4630      	mov	r0, r6
 8006f7c:	f7fe f8a6 	bl	80050cc <_fflush_r>
 8006f80:	b958      	cbnz	r0, 8006f9a <__swbuf_r+0xaa>
 8006f82:	6822      	ldr	r2, [r4, #0]
 8006f84:	2301      	movs	r3, #1
 8006f86:	e7ce      	b.n	8006f26 <__swbuf_r+0x36>
 8006f88:	f7fe f8fc 	bl	8005184 <__sinit>
 8006f8c:	e7b8      	b.n	8006f00 <__swbuf_r+0x10>
 8006f8e:	4621      	mov	r1, r4
 8006f90:	4630      	mov	r0, r6
 8006f92:	f7fe f89b 	bl	80050cc <_fflush_r>
 8006f96:	2800      	cmp	r0, #0
 8006f98:	d0d3      	beq.n	8006f42 <__swbuf_r+0x52>
 8006f9a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f9e:	e7d0      	b.n	8006f42 <__swbuf_r+0x52>

08006fa0 <_wcrtomb_r>:
 8006fa0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006fa2:	4c11      	ldr	r4, [pc, #68]	; (8006fe8 <_wcrtomb_r+0x48>)
 8006fa4:	6824      	ldr	r4, [r4, #0]
 8006fa6:	b085      	sub	sp, #20
 8006fa8:	4606      	mov	r6, r0
 8006faa:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fac:	461f      	mov	r7, r3
 8006fae:	b151      	cbz	r1, 8006fc6 <_wcrtomb_r+0x26>
 8006fb0:	4d0e      	ldr	r5, [pc, #56]	; (8006fec <_wcrtomb_r+0x4c>)
 8006fb2:	2c00      	cmp	r4, #0
 8006fb4:	bf08      	it	eq
 8006fb6:	462c      	moveq	r4, r5
 8006fb8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fbc:	47a0      	blx	r4
 8006fbe:	1c43      	adds	r3, r0, #1
 8006fc0:	d00c      	beq.n	8006fdc <_wcrtomb_r+0x3c>
 8006fc2:	b005      	add	sp, #20
 8006fc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fc6:	4a09      	ldr	r2, [pc, #36]	; (8006fec <_wcrtomb_r+0x4c>)
 8006fc8:	2c00      	cmp	r4, #0
 8006fca:	bf08      	it	eq
 8006fcc:	4614      	moveq	r4, r2
 8006fce:	460a      	mov	r2, r1
 8006fd0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fd4:	a901      	add	r1, sp, #4
 8006fd6:	47a0      	blx	r4
 8006fd8:	1c43      	adds	r3, r0, #1
 8006fda:	d1f2      	bne.n	8006fc2 <_wcrtomb_r+0x22>
 8006fdc:	2200      	movs	r2, #0
 8006fde:	238a      	movs	r3, #138	; 0x8a
 8006fe0:	603a      	str	r2, [r7, #0]
 8006fe2:	6033      	str	r3, [r6, #0]
 8006fe4:	b005      	add	sp, #20
 8006fe6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fe8:	20000018 	.word	0x20000018
 8006fec:	2000085c 	.word	0x2000085c

08006ff0 <__ascii_wctomb>:
 8006ff0:	b121      	cbz	r1, 8006ffc <__ascii_wctomb+0xc>
 8006ff2:	2aff      	cmp	r2, #255	; 0xff
 8006ff4:	d804      	bhi.n	8007000 <__ascii_wctomb+0x10>
 8006ff6:	700a      	strb	r2, [r1, #0]
 8006ff8:	2001      	movs	r0, #1
 8006ffa:	4770      	bx	lr
 8006ffc:	4608      	mov	r0, r1
 8006ffe:	4770      	bx	lr
 8007000:	238a      	movs	r3, #138	; 0x8a
 8007002:	6003      	str	r3, [r0, #0]
 8007004:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007008:	4770      	bx	lr
 800700a:	bf00      	nop

0800700c <_init>:
 800700c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800700e:	bf00      	nop
 8007010:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007012:	bc08      	pop	{r3}
 8007014:	469e      	mov	lr, r3
 8007016:	4770      	bx	lr

08007018 <_fini>:
 8007018:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800701a:	bf00      	nop
 800701c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800701e:	bc08      	pop	{r3}
 8007020:	469e      	mov	lr, r3
 8007022:	4770      	bx	lr
 8007024:	0000      	movs	r0, r0
	...
