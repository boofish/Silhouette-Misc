
dtoa.elf:     file format elf32-littlearm


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
 80001d8:	200009e0 	.word	0x200009e0
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08009700 	.word	0x08009700

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009e4 	.word	0x200009e4
 80001fc:	08009700 	.word	0x08009700

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

08000aac <__aeabi_d2iz>:
 8000aac:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000ab0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8000ab4:	d215      	bcs.n	8000ae2 <__aeabi_d2iz+0x36>
 8000ab6:	d511      	bpl.n	8000adc <__aeabi_d2iz+0x30>
 8000ab8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8000abc:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8000ac0:	d912      	bls.n	8000ae8 <__aeabi_d2iz+0x3c>
 8000ac2:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000ac6:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000aca:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8000ace:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000ad2:	fa23 f002 	lsr.w	r0, r3, r2
 8000ad6:	bf18      	it	ne
 8000ad8:	4240      	negne	r0, r0
 8000ada:	4770      	bx	lr
 8000adc:	f04f 0000 	mov.w	r0, #0
 8000ae0:	4770      	bx	lr
 8000ae2:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8000ae6:	d105      	bne.n	8000af4 <__aeabi_d2iz+0x48>
 8000ae8:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8000aec:	bf08      	it	eq
 8000aee:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8000af2:	4770      	bx	lr
 8000af4:	f04f 0000 	mov.w	r0, #0
 8000af8:	4770      	bx	lr
 8000afa:	bf00      	nop

08000afc <__aeabi_uldivmod>:
 8000afc:	b953      	cbnz	r3, 8000b14 <__aeabi_uldivmod+0x18>
 8000afe:	b94a      	cbnz	r2, 8000b14 <__aeabi_uldivmod+0x18>
 8000b00:	2900      	cmp	r1, #0
 8000b02:	bf08      	it	eq
 8000b04:	2800      	cmpeq	r0, #0
 8000b06:	bf1c      	itt	ne
 8000b08:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000b0c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000b10:	f000 b972 	b.w	8000df8 <__aeabi_idiv0>
 8000b14:	f1ad 0c08 	sub.w	ip, sp, #8
 8000b18:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000b1c:	f000 f806 	bl	8000b2c <__udivmoddi4>
 8000b20:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b24:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b28:	b004      	add	sp, #16
 8000b2a:	4770      	bx	lr

08000b2c <__udivmoddi4>:
 8000b2c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b30:	9e08      	ldr	r6, [sp, #32]
 8000b32:	4604      	mov	r4, r0
 8000b34:	4688      	mov	r8, r1
 8000b36:	2b00      	cmp	r3, #0
 8000b38:	d14b      	bne.n	8000bd2 <__udivmoddi4+0xa6>
 8000b3a:	428a      	cmp	r2, r1
 8000b3c:	4615      	mov	r5, r2
 8000b3e:	d967      	bls.n	8000c10 <__udivmoddi4+0xe4>
 8000b40:	fab2 f282 	clz	r2, r2
 8000b44:	b14a      	cbz	r2, 8000b5a <__udivmoddi4+0x2e>
 8000b46:	f1c2 0720 	rsb	r7, r2, #32
 8000b4a:	fa01 f302 	lsl.w	r3, r1, r2
 8000b4e:	fa20 f707 	lsr.w	r7, r0, r7
 8000b52:	4095      	lsls	r5, r2
 8000b54:	ea47 0803 	orr.w	r8, r7, r3
 8000b58:	4094      	lsls	r4, r2
 8000b5a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b5e:	0c23      	lsrs	r3, r4, #16
 8000b60:	fbb8 f7fe 	udiv	r7, r8, lr
 8000b64:	fa1f fc85 	uxth.w	ip, r5
 8000b68:	fb0e 8817 	mls	r8, lr, r7, r8
 8000b6c:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000b70:	fb07 f10c 	mul.w	r1, r7, ip
 8000b74:	4299      	cmp	r1, r3
 8000b76:	d909      	bls.n	8000b8c <__udivmoddi4+0x60>
 8000b78:	18eb      	adds	r3, r5, r3
 8000b7a:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000b7e:	f080 811b 	bcs.w	8000db8 <__udivmoddi4+0x28c>
 8000b82:	4299      	cmp	r1, r3
 8000b84:	f240 8118 	bls.w	8000db8 <__udivmoddi4+0x28c>
 8000b88:	3f02      	subs	r7, #2
 8000b8a:	442b      	add	r3, r5
 8000b8c:	1a5b      	subs	r3, r3, r1
 8000b8e:	b2a4      	uxth	r4, r4
 8000b90:	fbb3 f0fe 	udiv	r0, r3, lr
 8000b94:	fb0e 3310 	mls	r3, lr, r0, r3
 8000b98:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000b9c:	fb00 fc0c 	mul.w	ip, r0, ip
 8000ba0:	45a4      	cmp	ip, r4
 8000ba2:	d909      	bls.n	8000bb8 <__udivmoddi4+0x8c>
 8000ba4:	192c      	adds	r4, r5, r4
 8000ba6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000baa:	f080 8107 	bcs.w	8000dbc <__udivmoddi4+0x290>
 8000bae:	45a4      	cmp	ip, r4
 8000bb0:	f240 8104 	bls.w	8000dbc <__udivmoddi4+0x290>
 8000bb4:	3802      	subs	r0, #2
 8000bb6:	442c      	add	r4, r5
 8000bb8:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000bbc:	eba4 040c 	sub.w	r4, r4, ip
 8000bc0:	2700      	movs	r7, #0
 8000bc2:	b11e      	cbz	r6, 8000bcc <__udivmoddi4+0xa0>
 8000bc4:	40d4      	lsrs	r4, r2
 8000bc6:	2300      	movs	r3, #0
 8000bc8:	e9c6 4300 	strd	r4, r3, [r6]
 8000bcc:	4639      	mov	r1, r7
 8000bce:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bd2:	428b      	cmp	r3, r1
 8000bd4:	d909      	bls.n	8000bea <__udivmoddi4+0xbe>
 8000bd6:	2e00      	cmp	r6, #0
 8000bd8:	f000 80eb 	beq.w	8000db2 <__udivmoddi4+0x286>
 8000bdc:	2700      	movs	r7, #0
 8000bde:	e9c6 0100 	strd	r0, r1, [r6]
 8000be2:	4638      	mov	r0, r7
 8000be4:	4639      	mov	r1, r7
 8000be6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bea:	fab3 f783 	clz	r7, r3
 8000bee:	2f00      	cmp	r7, #0
 8000bf0:	d147      	bne.n	8000c82 <__udivmoddi4+0x156>
 8000bf2:	428b      	cmp	r3, r1
 8000bf4:	d302      	bcc.n	8000bfc <__udivmoddi4+0xd0>
 8000bf6:	4282      	cmp	r2, r0
 8000bf8:	f200 80fa 	bhi.w	8000df0 <__udivmoddi4+0x2c4>
 8000bfc:	1a84      	subs	r4, r0, r2
 8000bfe:	eb61 0303 	sbc.w	r3, r1, r3
 8000c02:	2001      	movs	r0, #1
 8000c04:	4698      	mov	r8, r3
 8000c06:	2e00      	cmp	r6, #0
 8000c08:	d0e0      	beq.n	8000bcc <__udivmoddi4+0xa0>
 8000c0a:	e9c6 4800 	strd	r4, r8, [r6]
 8000c0e:	e7dd      	b.n	8000bcc <__udivmoddi4+0xa0>
 8000c10:	b902      	cbnz	r2, 8000c14 <__udivmoddi4+0xe8>
 8000c12:	deff      	udf	#255	; 0xff
 8000c14:	fab2 f282 	clz	r2, r2
 8000c18:	2a00      	cmp	r2, #0
 8000c1a:	f040 808f 	bne.w	8000d3c <__udivmoddi4+0x210>
 8000c1e:	1b49      	subs	r1, r1, r5
 8000c20:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c24:	fa1f f885 	uxth.w	r8, r5
 8000c28:	2701      	movs	r7, #1
 8000c2a:	fbb1 fcfe 	udiv	ip, r1, lr
 8000c2e:	0c23      	lsrs	r3, r4, #16
 8000c30:	fb0e 111c 	mls	r1, lr, ip, r1
 8000c34:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000c38:	fb08 f10c 	mul.w	r1, r8, ip
 8000c3c:	4299      	cmp	r1, r3
 8000c3e:	d907      	bls.n	8000c50 <__udivmoddi4+0x124>
 8000c40:	18eb      	adds	r3, r5, r3
 8000c42:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000c46:	d202      	bcs.n	8000c4e <__udivmoddi4+0x122>
 8000c48:	4299      	cmp	r1, r3
 8000c4a:	f200 80cd 	bhi.w	8000de8 <__udivmoddi4+0x2bc>
 8000c4e:	4684      	mov	ip, r0
 8000c50:	1a59      	subs	r1, r3, r1
 8000c52:	b2a3      	uxth	r3, r4
 8000c54:	fbb1 f0fe 	udiv	r0, r1, lr
 8000c58:	fb0e 1410 	mls	r4, lr, r0, r1
 8000c5c:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000c60:	fb08 f800 	mul.w	r8, r8, r0
 8000c64:	45a0      	cmp	r8, r4
 8000c66:	d907      	bls.n	8000c78 <__udivmoddi4+0x14c>
 8000c68:	192c      	adds	r4, r5, r4
 8000c6a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c6e:	d202      	bcs.n	8000c76 <__udivmoddi4+0x14a>
 8000c70:	45a0      	cmp	r8, r4
 8000c72:	f200 80b6 	bhi.w	8000de2 <__udivmoddi4+0x2b6>
 8000c76:	4618      	mov	r0, r3
 8000c78:	eba4 0408 	sub.w	r4, r4, r8
 8000c7c:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000c80:	e79f      	b.n	8000bc2 <__udivmoddi4+0x96>
 8000c82:	f1c7 0c20 	rsb	ip, r7, #32
 8000c86:	40bb      	lsls	r3, r7
 8000c88:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000c8c:	ea4e 0e03 	orr.w	lr, lr, r3
 8000c90:	fa01 f407 	lsl.w	r4, r1, r7
 8000c94:	fa20 f50c 	lsr.w	r5, r0, ip
 8000c98:	fa21 f30c 	lsr.w	r3, r1, ip
 8000c9c:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000ca0:	4325      	orrs	r5, r4
 8000ca2:	fbb3 f9f8 	udiv	r9, r3, r8
 8000ca6:	0c2c      	lsrs	r4, r5, #16
 8000ca8:	fb08 3319 	mls	r3, r8, r9, r3
 8000cac:	fa1f fa8e 	uxth.w	sl, lr
 8000cb0:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000cb4:	fb09 f40a 	mul.w	r4, r9, sl
 8000cb8:	429c      	cmp	r4, r3
 8000cba:	fa02 f207 	lsl.w	r2, r2, r7
 8000cbe:	fa00 f107 	lsl.w	r1, r0, r7
 8000cc2:	d90b      	bls.n	8000cdc <__udivmoddi4+0x1b0>
 8000cc4:	eb1e 0303 	adds.w	r3, lr, r3
 8000cc8:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000ccc:	f080 8087 	bcs.w	8000dde <__udivmoddi4+0x2b2>
 8000cd0:	429c      	cmp	r4, r3
 8000cd2:	f240 8084 	bls.w	8000dde <__udivmoddi4+0x2b2>
 8000cd6:	f1a9 0902 	sub.w	r9, r9, #2
 8000cda:	4473      	add	r3, lr
 8000cdc:	1b1b      	subs	r3, r3, r4
 8000cde:	b2ad      	uxth	r5, r5
 8000ce0:	fbb3 f0f8 	udiv	r0, r3, r8
 8000ce4:	fb08 3310 	mls	r3, r8, r0, r3
 8000ce8:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000cec:	fb00 fa0a 	mul.w	sl, r0, sl
 8000cf0:	45a2      	cmp	sl, r4
 8000cf2:	d908      	bls.n	8000d06 <__udivmoddi4+0x1da>
 8000cf4:	eb1e 0404 	adds.w	r4, lr, r4
 8000cf8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000cfc:	d26b      	bcs.n	8000dd6 <__udivmoddi4+0x2aa>
 8000cfe:	45a2      	cmp	sl, r4
 8000d00:	d969      	bls.n	8000dd6 <__udivmoddi4+0x2aa>
 8000d02:	3802      	subs	r0, #2
 8000d04:	4474      	add	r4, lr
 8000d06:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000d0a:	fba0 8902 	umull	r8, r9, r0, r2
 8000d0e:	eba4 040a 	sub.w	r4, r4, sl
 8000d12:	454c      	cmp	r4, r9
 8000d14:	46c2      	mov	sl, r8
 8000d16:	464b      	mov	r3, r9
 8000d18:	d354      	bcc.n	8000dc4 <__udivmoddi4+0x298>
 8000d1a:	d051      	beq.n	8000dc0 <__udivmoddi4+0x294>
 8000d1c:	2e00      	cmp	r6, #0
 8000d1e:	d069      	beq.n	8000df4 <__udivmoddi4+0x2c8>
 8000d20:	ebb1 050a 	subs.w	r5, r1, sl
 8000d24:	eb64 0403 	sbc.w	r4, r4, r3
 8000d28:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000d2c:	40fd      	lsrs	r5, r7
 8000d2e:	40fc      	lsrs	r4, r7
 8000d30:	ea4c 0505 	orr.w	r5, ip, r5
 8000d34:	e9c6 5400 	strd	r5, r4, [r6]
 8000d38:	2700      	movs	r7, #0
 8000d3a:	e747      	b.n	8000bcc <__udivmoddi4+0xa0>
 8000d3c:	f1c2 0320 	rsb	r3, r2, #32
 8000d40:	fa20 f703 	lsr.w	r7, r0, r3
 8000d44:	4095      	lsls	r5, r2
 8000d46:	fa01 f002 	lsl.w	r0, r1, r2
 8000d4a:	fa21 f303 	lsr.w	r3, r1, r3
 8000d4e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000d52:	4338      	orrs	r0, r7
 8000d54:	0c01      	lsrs	r1, r0, #16
 8000d56:	fbb3 f7fe 	udiv	r7, r3, lr
 8000d5a:	fa1f f885 	uxth.w	r8, r5
 8000d5e:	fb0e 3317 	mls	r3, lr, r7, r3
 8000d62:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d66:	fb07 f308 	mul.w	r3, r7, r8
 8000d6a:	428b      	cmp	r3, r1
 8000d6c:	fa04 f402 	lsl.w	r4, r4, r2
 8000d70:	d907      	bls.n	8000d82 <__udivmoddi4+0x256>
 8000d72:	1869      	adds	r1, r5, r1
 8000d74:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000d78:	d22f      	bcs.n	8000dda <__udivmoddi4+0x2ae>
 8000d7a:	428b      	cmp	r3, r1
 8000d7c:	d92d      	bls.n	8000dda <__udivmoddi4+0x2ae>
 8000d7e:	3f02      	subs	r7, #2
 8000d80:	4429      	add	r1, r5
 8000d82:	1acb      	subs	r3, r1, r3
 8000d84:	b281      	uxth	r1, r0
 8000d86:	fbb3 f0fe 	udiv	r0, r3, lr
 8000d8a:	fb0e 3310 	mls	r3, lr, r0, r3
 8000d8e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d92:	fb00 f308 	mul.w	r3, r0, r8
 8000d96:	428b      	cmp	r3, r1
 8000d98:	d907      	bls.n	8000daa <__udivmoddi4+0x27e>
 8000d9a:	1869      	adds	r1, r5, r1
 8000d9c:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000da0:	d217      	bcs.n	8000dd2 <__udivmoddi4+0x2a6>
 8000da2:	428b      	cmp	r3, r1
 8000da4:	d915      	bls.n	8000dd2 <__udivmoddi4+0x2a6>
 8000da6:	3802      	subs	r0, #2
 8000da8:	4429      	add	r1, r5
 8000daa:	1ac9      	subs	r1, r1, r3
 8000dac:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000db0:	e73b      	b.n	8000c2a <__udivmoddi4+0xfe>
 8000db2:	4637      	mov	r7, r6
 8000db4:	4630      	mov	r0, r6
 8000db6:	e709      	b.n	8000bcc <__udivmoddi4+0xa0>
 8000db8:	4607      	mov	r7, r0
 8000dba:	e6e7      	b.n	8000b8c <__udivmoddi4+0x60>
 8000dbc:	4618      	mov	r0, r3
 8000dbe:	e6fb      	b.n	8000bb8 <__udivmoddi4+0x8c>
 8000dc0:	4541      	cmp	r1, r8
 8000dc2:	d2ab      	bcs.n	8000d1c <__udivmoddi4+0x1f0>
 8000dc4:	ebb8 0a02 	subs.w	sl, r8, r2
 8000dc8:	eb69 020e 	sbc.w	r2, r9, lr
 8000dcc:	3801      	subs	r0, #1
 8000dce:	4613      	mov	r3, r2
 8000dd0:	e7a4      	b.n	8000d1c <__udivmoddi4+0x1f0>
 8000dd2:	4660      	mov	r0, ip
 8000dd4:	e7e9      	b.n	8000daa <__udivmoddi4+0x27e>
 8000dd6:	4618      	mov	r0, r3
 8000dd8:	e795      	b.n	8000d06 <__udivmoddi4+0x1da>
 8000dda:	4667      	mov	r7, ip
 8000ddc:	e7d1      	b.n	8000d82 <__udivmoddi4+0x256>
 8000dde:	4681      	mov	r9, r0
 8000de0:	e77c      	b.n	8000cdc <__udivmoddi4+0x1b0>
 8000de2:	3802      	subs	r0, #2
 8000de4:	442c      	add	r4, r5
 8000de6:	e747      	b.n	8000c78 <__udivmoddi4+0x14c>
 8000de8:	f1ac 0c02 	sub.w	ip, ip, #2
 8000dec:	442b      	add	r3, r5
 8000dee:	e72f      	b.n	8000c50 <__udivmoddi4+0x124>
 8000df0:	4638      	mov	r0, r7
 8000df2:	e708      	b.n	8000c06 <__udivmoddi4+0xda>
 8000df4:	4637      	mov	r7, r6
 8000df6:	e6e9      	b.n	8000bcc <__udivmoddi4+0xa0>

08000df8 <__aeabi_idiv0>:
 8000df8:	4770      	bx	lr
 8000dfa:	bf00      	nop

08000dfc <__aeabi_memset>:
 8000dfc:	b470      	push	{r4, r5, r6}
 8000dfe:	0784      	lsls	r4, r0, #30
 8000e00:	d046      	beq.n	8000e90 <__aeabi_memset+0x94>
 8000e02:	1e4c      	subs	r4, r1, #1
 8000e04:	2900      	cmp	r1, #0
 8000e06:	d041      	beq.n	8000e8c <__aeabi_memset+0x90>
 8000e08:	b2d5      	uxtb	r5, r2
 8000e0a:	4603      	mov	r3, r0
 8000e0c:	e002      	b.n	8000e14 <__aeabi_memset+0x18>
 8000e0e:	1e61      	subs	r1, r4, #1
 8000e10:	b3e4      	cbz	r4, 8000e8c <__aeabi_memset+0x90>
 8000e12:	460c      	mov	r4, r1
 8000e14:	f803 5b01 	strb.w	r5, [r3], #1
 8000e18:	0799      	lsls	r1, r3, #30
 8000e1a:	d1f8      	bne.n	8000e0e <__aeabi_memset+0x12>
 8000e1c:	2c03      	cmp	r4, #3
 8000e1e:	d92e      	bls.n	8000e7e <__aeabi_memset+0x82>
 8000e20:	b2d5      	uxtb	r5, r2
 8000e22:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8000e26:	2c0f      	cmp	r4, #15
 8000e28:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000e2c:	d919      	bls.n	8000e62 <__aeabi_memset+0x66>
 8000e2e:	4626      	mov	r6, r4
 8000e30:	f103 0110 	add.w	r1, r3, #16
 8000e34:	3e10      	subs	r6, #16
 8000e36:	2e0f      	cmp	r6, #15
 8000e38:	f841 5c10 	str.w	r5, [r1, #-16]
 8000e3c:	f841 5c0c 	str.w	r5, [r1, #-12]
 8000e40:	f841 5c08 	str.w	r5, [r1, #-8]
 8000e44:	f841 5c04 	str.w	r5, [r1, #-4]
 8000e48:	f101 0110 	add.w	r1, r1, #16
 8000e4c:	d8f2      	bhi.n	8000e34 <__aeabi_memset+0x38>
 8000e4e:	f1a4 0110 	sub.w	r1, r4, #16
 8000e52:	f021 010f 	bic.w	r1, r1, #15
 8000e56:	f004 040f 	and.w	r4, r4, #15
 8000e5a:	3110      	adds	r1, #16
 8000e5c:	2c03      	cmp	r4, #3
 8000e5e:	440b      	add	r3, r1
 8000e60:	d90d      	bls.n	8000e7e <__aeabi_memset+0x82>
 8000e62:	461e      	mov	r6, r3
 8000e64:	4621      	mov	r1, r4
 8000e66:	3904      	subs	r1, #4
 8000e68:	2903      	cmp	r1, #3
 8000e6a:	f846 5b04 	str.w	r5, [r6], #4
 8000e6e:	d8fa      	bhi.n	8000e66 <__aeabi_memset+0x6a>
 8000e70:	1f21      	subs	r1, r4, #4
 8000e72:	f021 0103 	bic.w	r1, r1, #3
 8000e76:	3104      	adds	r1, #4
 8000e78:	440b      	add	r3, r1
 8000e7a:	f004 0403 	and.w	r4, r4, #3
 8000e7e:	b12c      	cbz	r4, 8000e8c <__aeabi_memset+0x90>
 8000e80:	b2d2      	uxtb	r2, r2
 8000e82:	441c      	add	r4, r3
 8000e84:	f803 2b01 	strb.w	r2, [r3], #1
 8000e88:	42a3      	cmp	r3, r4
 8000e8a:	d1fb      	bne.n	8000e84 <__aeabi_memset+0x88>
 8000e8c:	bc70      	pop	{r4, r5, r6}
 8000e8e:	4770      	bx	lr
 8000e90:	460c      	mov	r4, r1
 8000e92:	4603      	mov	r3, r0
 8000e94:	e7c2      	b.n	8000e1c <__aeabi_memset+0x20>
	...

08000e98 <memcpy>:
 8000e98:	4684      	mov	ip, r0
 8000e9a:	ea41 0300 	orr.w	r3, r1, r0
 8000e9e:	f013 0303 	ands.w	r3, r3, #3
 8000ea2:	d16d      	bne.n	8000f80 <memcpy+0xe8>
 8000ea4:	3a40      	subs	r2, #64	; 0x40
 8000ea6:	d341      	bcc.n	8000f2c <memcpy+0x94>
 8000ea8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eac:	f840 3b04 	str.w	r3, [r0], #4
 8000eb0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eb4:	f840 3b04 	str.w	r3, [r0], #4
 8000eb8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ebc:	f840 3b04 	str.w	r3, [r0], #4
 8000ec0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ec4:	f840 3b04 	str.w	r3, [r0], #4
 8000ec8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ecc:	f840 3b04 	str.w	r3, [r0], #4
 8000ed0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ed4:	f840 3b04 	str.w	r3, [r0], #4
 8000ed8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000edc:	f840 3b04 	str.w	r3, [r0], #4
 8000ee0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ee4:	f840 3b04 	str.w	r3, [r0], #4
 8000ee8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eec:	f840 3b04 	str.w	r3, [r0], #4
 8000ef0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ef4:	f840 3b04 	str.w	r3, [r0], #4
 8000ef8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000efc:	f840 3b04 	str.w	r3, [r0], #4
 8000f00:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f04:	f840 3b04 	str.w	r3, [r0], #4
 8000f08:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f0c:	f840 3b04 	str.w	r3, [r0], #4
 8000f10:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f14:	f840 3b04 	str.w	r3, [r0], #4
 8000f18:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f1c:	f840 3b04 	str.w	r3, [r0], #4
 8000f20:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f24:	f840 3b04 	str.w	r3, [r0], #4
 8000f28:	3a40      	subs	r2, #64	; 0x40
 8000f2a:	d2bd      	bcs.n	8000ea8 <memcpy+0x10>
 8000f2c:	3230      	adds	r2, #48	; 0x30
 8000f2e:	d311      	bcc.n	8000f54 <memcpy+0xbc>
 8000f30:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f34:	f840 3b04 	str.w	r3, [r0], #4
 8000f38:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f3c:	f840 3b04 	str.w	r3, [r0], #4
 8000f40:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f44:	f840 3b04 	str.w	r3, [r0], #4
 8000f48:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f4c:	f840 3b04 	str.w	r3, [r0], #4
 8000f50:	3a10      	subs	r2, #16
 8000f52:	d2ed      	bcs.n	8000f30 <memcpy+0x98>
 8000f54:	320c      	adds	r2, #12
 8000f56:	d305      	bcc.n	8000f64 <memcpy+0xcc>
 8000f58:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f5c:	f840 3b04 	str.w	r3, [r0], #4
 8000f60:	3a04      	subs	r2, #4
 8000f62:	d2f9      	bcs.n	8000f58 <memcpy+0xc0>
 8000f64:	3204      	adds	r2, #4
 8000f66:	d008      	beq.n	8000f7a <memcpy+0xe2>
 8000f68:	07d2      	lsls	r2, r2, #31
 8000f6a:	bf1c      	itt	ne
 8000f6c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f70:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f74:	d301      	bcc.n	8000f7a <memcpy+0xe2>
 8000f76:	880b      	ldrh	r3, [r1, #0]
 8000f78:	8003      	strh	r3, [r0, #0]
 8000f7a:	4660      	mov	r0, ip
 8000f7c:	4770      	bx	lr
 8000f7e:	bf00      	nop
 8000f80:	2a08      	cmp	r2, #8
 8000f82:	d313      	bcc.n	8000fac <memcpy+0x114>
 8000f84:	078b      	lsls	r3, r1, #30
 8000f86:	d08d      	beq.n	8000ea4 <memcpy+0xc>
 8000f88:	f010 0303 	ands.w	r3, r0, #3
 8000f8c:	d08a      	beq.n	8000ea4 <memcpy+0xc>
 8000f8e:	f1c3 0304 	rsb	r3, r3, #4
 8000f92:	1ad2      	subs	r2, r2, r3
 8000f94:	07db      	lsls	r3, r3, #31
 8000f96:	bf1c      	itt	ne
 8000f98:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f9c:	f800 3b01 	strbne.w	r3, [r0], #1
 8000fa0:	d380      	bcc.n	8000ea4 <memcpy+0xc>
 8000fa2:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000fa6:	f820 3b02 	strh.w	r3, [r0], #2
 8000faa:	e77b      	b.n	8000ea4 <memcpy+0xc>
 8000fac:	3a04      	subs	r2, #4
 8000fae:	d3d9      	bcc.n	8000f64 <memcpy+0xcc>
 8000fb0:	3a01      	subs	r2, #1
 8000fb2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000fb6:	f800 3b01 	strb.w	r3, [r0], #1
 8000fba:	d2f9      	bcs.n	8000fb0 <memcpy+0x118>
 8000fbc:	780b      	ldrb	r3, [r1, #0]
 8000fbe:	7003      	strb	r3, [r0, #0]
 8000fc0:	784b      	ldrb	r3, [r1, #1]
 8000fc2:	7043      	strb	r3, [r0, #1]
 8000fc4:	788b      	ldrb	r3, [r1, #2]
 8000fc6:	7083      	strb	r3, [r0, #2]
 8000fc8:	4660      	mov	r0, ip
 8000fca:	4770      	bx	lr
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

08001180 <__aeabi_dcmpun>:
 8001180:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001184:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001188:	d102      	bne.n	8001190 <__aeabi_dcmpun+0x10>
 800118a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800118e:	d10a      	bne.n	80011a6 <__aeabi_dcmpun+0x26>
 8001190:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001194:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001198:	d102      	bne.n	80011a0 <__aeabi_dcmpun+0x20>
 800119a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800119e:	d102      	bne.n	80011a6 <__aeabi_dcmpun+0x26>
 80011a0:	f04f 0000 	mov.w	r0, #0
 80011a4:	4770      	bx	lr
 80011a6:	f04f 0001 	mov.w	r0, #1
 80011aa:	4770      	bx	lr

080011ac <HAL_Init>:
 80011ac:	b580      	push	{r7, lr}
 80011ae:	466f      	mov	r7, sp
 80011b0:	2003      	movs	r0, #3
 80011b2:	f000 f819 	bl	80011e8 <HAL_NVIC_SetPriorityGrouping>
 80011b6:	200f      	movs	r0, #15
 80011b8:	f000 fb84 	bl	80018c4 <HAL_InitTick>
 80011bc:	2800      	cmp	r0, #0
 80011be:	bf1c      	itt	ne
 80011c0:	2001      	movne	r0, #1
 80011c2:	bd80      	popne	{r7, pc}
 80011c4:	f000 f94b 	bl	800145e <HAL_MspInit>
 80011c8:	2000      	movs	r0, #0
 80011ca:	bd80      	pop	{r7, pc}

080011cc <HAL_IncTick>:
 80011cc:	f241 30e8 	movw	r0, #5096	; 0x13e8
 80011d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d4:	6801      	ldr	r1, [r0, #0]
 80011d6:	3101      	adds	r1, #1
 80011d8:	6001      	str	r1, [r0, #0]
 80011da:	4770      	bx	lr

080011dc <HAL_GetTick>:
 80011dc:	f241 30e8 	movw	r0, #5096	; 0x13e8
 80011e0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011e4:	6800      	ldr	r0, [r0, #0]
 80011e6:	4770      	bx	lr

080011e8 <HAL_NVIC_SetPriorityGrouping>:
 80011e8:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011ec:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011f0:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011f4:	680a      	ldr	r2, [r1, #0]
 80011f6:	401a      	ands	r2, r3
 80011f8:	f360 220a 	bfi	r2, r0, #8, #3
 80011fc:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001200:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001204:	6008      	str	r0, [r1, #0]
 8001206:	4770      	bx	lr

08001208 <HAL_NVIC_SetPriority>:
 8001208:	b580      	push	{r7, lr}
 800120a:	466f      	mov	r7, sp
 800120c:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001210:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001214:	2800      	cmp	r0, #0
 8001216:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800121a:	f000 030f 	and.w	r3, r0, #15
 800121e:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001222:	f1a3 0304 	sub.w	r3, r3, #4
 8001226:	4473      	add	r3, lr
 8001228:	bfb8      	it	lt
 800122a:	f103 0c0c 	addlt.w	ip, r3, #12
 800122e:	f8de 0000 	ldr.w	r0, [lr]
 8001232:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001236:	f100 0e04 	add.w	lr, r0, #4
 800123a:	1ec3      	subs	r3, r0, #3
 800123c:	f080 0007 	eor.w	r0, r0, #7
 8001240:	f1be 0f07 	cmp.w	lr, #7
 8001244:	f04f 0e01 	mov.w	lr, #1
 8001248:	bf38      	it	cc
 800124a:	2300      	movcc	r3, #0
 800124c:	2804      	cmp	r0, #4
 800124e:	bf28      	it	cs
 8001250:	2004      	movcs	r0, #4
 8001252:	fa0e f000 	lsl.w	r0, lr, r0
 8001256:	3801      	subs	r0, #1
 8001258:	4008      	ands	r0, r1
 800125a:	fa0e f103 	lsl.w	r1, lr, r3
 800125e:	310f      	adds	r1, #15
 8001260:	4098      	lsls	r0, r3
 8001262:	4011      	ands	r1, r2
 8001264:	4308      	orrs	r0, r1
 8001266:	0100      	lsls	r0, r0, #4
 8001268:	f88c 0000 	strb.w	r0, [ip]
 800126c:	bd80      	pop	{r7, pc}

0800126e <HAL_NVIC_EnableIRQ>:
 800126e:	f000 011f 	and.w	r1, r0, #31
 8001272:	2201      	movs	r2, #1
 8001274:	0940      	lsrs	r0, r0, #5
 8001276:	fa02 f101 	lsl.w	r1, r2, r1
 800127a:	f24e 1200 	movw	r2, #57600	; 0xe100
 800127e:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001282:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001286:	4770      	bx	lr

08001288 <HAL_SYSTICK_IRQHandler>:
 8001288:	f000 b800 	b.w	800128c <HAL_SYSTICK_Callback>

0800128c <HAL_SYSTICK_Callback>:
 800128c:	4770      	bx	lr

0800128e <HAL_GPIO_Init>:
 800128e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001290:	af03      	add	r7, sp, #12
 8001292:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001296:	b082      	sub	sp, #8
 8001298:	680e      	ldr	r6, [r1, #0]
 800129a:	2e00      	cmp	r6, #0
 800129c:	f000 80db 	beq.w	8001456 <HAL_GPIO_Init+0x1c8>
 80012a0:	f641 0200 	movw	r2, #6144	; 0x1800
 80012a4:	2507      	movs	r5, #7
 80012a6:	f04f 0801 	mov.w	r8, #1
 80012aa:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012ae:	4290      	cmp	r0, r2
 80012b0:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012b4:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012b8:	bf08      	it	eq
 80012ba:	2506      	moveq	r5, #6
 80012bc:	2b06      	cmp	r3, #6
 80012be:	bf38      	it	cc
 80012c0:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012c4:	2200      	movs	r2, #0
 80012c6:	9500      	str	r5, [sp, #0]
 80012c8:	2500      	movs	r5, #0
 80012ca:	f1a8 0a01 	sub.w	sl, r8, #1
 80012ce:	2301      	movs	r3, #1
 80012d0:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012d4:	ea16 090b 	ands.w	r9, r6, fp
 80012d8:	f000 80b4 	beq.w	8001444 <HAL_GPIO_Init+0x1b6>
 80012dc:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012e0:	f04e 0610 	orr.w	r6, lr, #16
 80012e4:	2e12      	cmp	r6, #18
 80012e6:	d115      	bne.n	8001314 <HAL_GPIO_Init+0x86>
 80012e8:	f005 061c 	and.w	r6, r5, #28
 80012ec:	230f      	movs	r3, #15
 80012ee:	fa03 fc06 	lsl.w	ip, r3, r6
 80012f2:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012f6:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012fa:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012fe:	4404      	add	r4, r0
 8001300:	6a23      	ldr	r3, [r4, #32]
 8001302:	ea23 0c0c 	bic.w	ip, r3, ip
 8001306:	690b      	ldr	r3, [r1, #16]
 8001308:	40b3      	lsls	r3, r6
 800130a:	ea43 030c 	orr.w	r3, r3, ip
 800130e:	6223      	str	r3, [r4, #32]
 8001310:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001314:	6806      	ldr	r6, [r0, #0]
 8001316:	2403      	movs	r4, #3
 8001318:	f00e 0c03 	and.w	ip, lr, #3
 800131c:	f1be 0f12 	cmp.w	lr, #18
 8001320:	fa04 f402 	lsl.w	r4, r4, r2
 8001324:	fa0c f302 	lsl.w	r3, ip, r2
 8001328:	ea26 0604 	bic.w	r6, r6, r4
 800132c:	ea43 0306 	orr.w	r3, r3, r6
 8001330:	ea6f 0604 	mvn.w	r6, r4
 8001334:	6003      	str	r3, [r0, #0]
 8001336:	d816      	bhi.n	8001366 <HAL_GPIO_Init+0xd8>
 8001338:	2301      	movs	r3, #1
 800133a:	fa03 f30e 	lsl.w	r3, r3, lr
 800133e:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001342:	bf1f      	itttt	ne
 8001344:	6883      	ldrne	r3, [r0, #8]
 8001346:	4033      	andne	r3, r6
 8001348:	68cc      	ldrne	r4, [r1, #12]
 800134a:	4094      	lslne	r4, r2
 800134c:	bf1f      	itttt	ne
 800134e:	4323      	orrne	r3, r4
 8001350:	6083      	strne	r3, [r0, #8]
 8001352:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001356:	fa03 f30a 	lslne.w	r3, r3, sl
 800135a:	bf1f      	itttt	ne
 800135c:	6844      	ldrne	r4, [r0, #4]
 800135e:	ea24 040b 	bicne.w	r4, r4, fp
 8001362:	4323      	orrne	r3, r4
 8001364:	6043      	strne	r3, [r0, #4]
 8001366:	f1bc 0f03 	cmp.w	ip, #3
 800136a:	d108      	bne.n	800137e <HAL_GPIO_Init+0xf0>
 800136c:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001370:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001372:	fa03 f30a 	lsl.w	r3, r3, sl
 8001376:	ea24 040b 	bic.w	r4, r4, fp
 800137a:	4323      	orrs	r3, r4
 800137c:	62c3      	str	r3, [r0, #44]	; 0x2c
 800137e:	68c3      	ldr	r3, [r0, #12]
 8001380:	4033      	ands	r3, r6
 8001382:	688e      	ldr	r6, [r1, #8]
 8001384:	4096      	lsls	r6, r2
 8001386:	4333      	orrs	r3, r6
 8001388:	60c3      	str	r3, [r0, #12]
 800138a:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800138e:	d559      	bpl.n	8001444 <HAL_GPIO_Init+0x1b6>
 8001390:	f241 0360 	movw	r3, #4192	; 0x1060
 8001394:	f005 040c 	and.w	r4, r5, #12
 8001398:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800139c:	461e      	mov	r6, r3
 800139e:	6833      	ldr	r3, [r6, #0]
 80013a0:	f043 0301 	orr.w	r3, r3, #1
 80013a4:	6033      	str	r3, [r6, #0]
 80013a6:	6833      	ldr	r3, [r6, #0]
 80013a8:	f240 4600 	movw	r6, #1024	; 0x400
 80013ac:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013b0:	46b6      	mov	lr, r6
 80013b2:	f003 0301 	and.w	r3, r3, #1
 80013b6:	9301      	str	r3, [sp, #4]
 80013b8:	f02a 0303 	bic.w	r3, sl, #3
 80013bc:	9e01      	ldr	r6, [sp, #4]
 80013be:	4473      	add	r3, lr
 80013c0:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013c4:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013c8:	46b2      	mov	sl, r6
 80013ca:	260f      	movs	r6, #15
 80013cc:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013d0:	40a6      	lsls	r6, r4
 80013d2:	ea2c 0c06 	bic.w	ip, ip, r6
 80013d6:	9e00      	ldr	r6, [sp, #0]
 80013d8:	fa06 f404 	lsl.w	r4, r6, r4
 80013dc:	ea4c 0604 	orr.w	r6, ip, r4
 80013e0:	f843 600a 	str.w	r6, [r3, sl]
 80013e4:	f8de 3000 	ldr.w	r3, [lr]
 80013e8:	684e      	ldr	r6, [r1, #4]
 80013ea:	ea23 0309 	bic.w	r3, r3, r9
 80013ee:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013f2:	bf18      	it	ne
 80013f4:	ea43 0309 	orrne.w	r3, r3, r9
 80013f8:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013fc:	f8ce 3000 	str.w	r3, [lr]
 8001400:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001404:	ea23 0309 	bic.w	r3, r3, r9
 8001408:	bf18      	it	ne
 800140a:	ea43 0309 	orrne.w	r3, r3, r9
 800140e:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001412:	f8ce 3004 	str.w	r3, [lr, #4]
 8001416:	f8de 3008 	ldr.w	r3, [lr, #8]
 800141a:	ea23 0309 	bic.w	r3, r3, r9
 800141e:	bf18      	it	ne
 8001420:	ea43 0309 	orrne.w	r3, r3, r9
 8001424:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001428:	f8ce 3008 	str.w	r3, [lr, #8]
 800142c:	f240 430c 	movw	r3, #1036	; 0x40c
 8001430:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001434:	461c      	mov	r4, r3
 8001436:	6823      	ldr	r3, [r4, #0]
 8001438:	ea23 0309 	bic.w	r3, r3, r9
 800143c:	bf18      	it	ne
 800143e:	ea43 0309 	orrne.w	r3, r3, r9
 8001442:	6023      	str	r3, [r4, #0]
 8001444:	680e      	ldr	r6, [r1, #0]
 8001446:	3202      	adds	r2, #2
 8001448:	3504      	adds	r5, #4
 800144a:	fa36 f308 	lsrs.w	r3, r6, r8
 800144e:	f108 0801 	add.w	r8, r8, #1
 8001452:	f47f af3a 	bne.w	80012ca <HAL_GPIO_Init+0x3c>
 8001456:	b002      	add	sp, #8
 8001458:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800145c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800145e <HAL_MspInit>:
 800145e:	4770      	bx	lr

08001460 <HAL_RCC_GetSysClockFreq>:
 8001460:	b580      	push	{r7, lr}
 8001462:	466f      	mov	r7, sp
 8001464:	f241 010c 	movw	r1, #4108	; 0x100c
 8001468:	f241 2e00 	movw	lr, #4608	; 0x1200
 800146c:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001470:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001474:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001478:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 800147c:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001480:	6808      	ldr	r0, [r1, #0]
 8001482:	f012 030c 	ands.w	r3, r2, #12
 8001486:	d005      	beq.n	8001494 <HAL_RCC_GetSysClockFreq+0x34>
 8001488:	2b0c      	cmp	r3, #12
 800148a:	bf04      	itt	eq
 800148c:	f000 0003 	andeq.w	r0, r0, #3
 8001490:	2801      	cmpeq	r0, #1
 8001492:	d118      	bne.n	80014c6 <HAL_RCC_GetSysClockFreq+0x66>
 8001494:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001498:	f010 0f08 	tst.w	r0, #8
 800149c:	d103      	bne.n	80014a6 <HAL_RCC_GetSysClockFreq+0x46>
 800149e:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80014a2:	0a00      	lsrs	r0, r0, #8
 80014a4:	e002      	b.n	80014ac <HAL_RCC_GetSysClockFreq+0x4c>
 80014a6:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014aa:	0900      	lsrs	r0, r0, #4
 80014ac:	f649 02f4 	movw	r2, #39156	; 0x98f4
 80014b0:	f000 000f 	and.w	r0, r0, #15
 80014b4:	2b00      	cmp	r3, #0
 80014b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ba:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014be:	4610      	mov	r0, r2
 80014c0:	bf18      	it	ne
 80014c2:	2000      	movne	r0, #0
 80014c4:	e00b      	b.n	80014de <HAL_RCC_GetSysClockFreq+0x7e>
 80014c6:	f003 000f 	and.w	r0, r3, #15
 80014ca:	2804      	cmp	r0, #4
 80014cc:	bf04      	itt	eq
 80014ce:	4660      	moveq	r0, ip
 80014d0:	bd80      	popeq	{r7, pc}
 80014d2:	2808      	cmp	r0, #8
 80014d4:	bf04      	itt	eq
 80014d6:	4670      	moveq	r0, lr
 80014d8:	bd80      	popeq	{r7, pc}
 80014da:	2000      	movs	r0, #0
 80014dc:	2200      	movs	r2, #0
 80014de:	2b0c      	cmp	r3, #12
 80014e0:	bf18      	it	ne
 80014e2:	bd80      	popne	{r7, pc}
 80014e4:	6808      	ldr	r0, [r1, #0]
 80014e6:	f000 0303 	and.w	r3, r0, #3
 80014ea:	6808      	ldr	r0, [r1, #0]
 80014ec:	2b03      	cmp	r3, #3
 80014ee:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014f2:	f100 0001 	add.w	r0, r0, #1
 80014f6:	d003      	beq.n	8001500 <HAL_RCC_GetSysClockFreq+0xa0>
 80014f8:	2b02      	cmp	r3, #2
 80014fa:	46e6      	mov	lr, ip
 80014fc:	bf18      	it	ne
 80014fe:	4696      	movne	lr, r2
 8001500:	680a      	ldr	r2, [r1, #0]
 8001502:	fbbe f0f0 	udiv	r0, lr, r0
 8001506:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800150a:	6809      	ldr	r1, [r1, #0]
 800150c:	4350      	muls	r0, r2
 800150e:	2202      	movs	r2, #2
 8001510:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001514:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001518:	fbb0 f0f1 	udiv	r0, r0, r1
 800151c:	bd80      	pop	{r7, pc}

0800151e <HAL_RCC_GetPCLK1Freq>:
 800151e:	f240 002c 	movw	r0, #44	; 0x2c
 8001522:	f241 0108 	movw	r1, #4104	; 0x1008
 8001526:	f649 02ec 	movw	r2, #39148	; 0x98ec
 800152a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800152e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001532:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001536:	6800      	ldr	r0, [r0, #0]
 8001538:	6809      	ldr	r1, [r1, #0]
 800153a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800153e:	5c51      	ldrb	r1, [r2, r1]
 8001540:	f001 011f 	and.w	r1, r1, #31
 8001544:	40c8      	lsrs	r0, r1
 8001546:	4770      	bx	lr

08001548 <HAL_RCC_GetPCLK2Freq>:
 8001548:	f240 002c 	movw	r0, #44	; 0x2c
 800154c:	f241 0108 	movw	r1, #4104	; 0x1008
 8001550:	f649 02ec 	movw	r2, #39148	; 0x98ec
 8001554:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001558:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800155c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001560:	6800      	ldr	r0, [r0, #0]
 8001562:	6809      	ldr	r1, [r1, #0]
 8001564:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001568:	5c51      	ldrb	r1, [r2, r1]
 800156a:	f001 011f 	and.w	r1, r1, #31
 800156e:	40c8      	lsrs	r0, r1
 8001570:	4770      	bx	lr

08001572 <HAL_RCC_GetClockConfig>:
 8001572:	220f      	movs	r2, #15
 8001574:	6002      	str	r2, [r0, #0]
 8001576:	f241 0208 	movw	r2, #4104	; 0x1008
 800157a:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800157e:	6813      	ldr	r3, [r2, #0]
 8001580:	f003 0303 	and.w	r3, r3, #3
 8001584:	6043      	str	r3, [r0, #4]
 8001586:	6813      	ldr	r3, [r2, #0]
 8001588:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800158c:	6083      	str	r3, [r0, #8]
 800158e:	6813      	ldr	r3, [r2, #0]
 8001590:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001594:	60c3      	str	r3, [r0, #12]
 8001596:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800159a:	6812      	ldr	r2, [r2, #0]
 800159c:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80015a0:	6102      	str	r2, [r0, #16]
 80015a2:	f242 0000 	movw	r0, #8192	; 0x2000
 80015a6:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015aa:	6800      	ldr	r0, [r0, #0]
 80015ac:	f000 0007 	and.w	r0, r0, #7
 80015b0:	6008      	str	r0, [r1, #0]
 80015b2:	4770      	bx	lr

080015b4 <HAL_TIM_Base_Init>:
 80015b4:	b5d0      	push	{r4, r6, r7, lr}
 80015b6:	af02      	add	r7, sp, #8
 80015b8:	4604      	mov	r4, r0
 80015ba:	2c00      	cmp	r4, #0
 80015bc:	bf04      	itt	eq
 80015be:	2001      	moveq	r0, #1
 80015c0:	bdd0      	popeq	{r4, r6, r7, pc}
 80015c2:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015c4:	b920      	cbnz	r0, 80015d0 <HAL_TIM_Base_Init+0x1c>
 80015c6:	2000      	movs	r0, #0
 80015c8:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015ca:	4620      	mov	r0, r4
 80015cc:	f000 f892 	bl	80016f4 <HAL_TIM_Base_MspInit>
 80015d0:	2002      	movs	r0, #2
 80015d2:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015d6:	6420      	str	r0, [r4, #64]	; 0x40
 80015d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015dc:	6820      	ldr	r0, [r4, #0]
 80015de:	6801      	ldr	r1, [r0, #0]
 80015e0:	4290      	cmp	r0, r2
 80015e2:	dc0f      	bgt.n	8001604 <HAL_TIM_Base_Init+0x50>
 80015e4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015e8:	bf1e      	ittt	ne
 80015ea:	f240 4200 	movwne	r2, #1024	; 0x400
 80015ee:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015f2:	4290      	cmpne	r0, r2
 80015f4:	d018      	beq.n	8001628 <HAL_TIM_Base_Init+0x74>
 80015f6:	f640 0200 	movw	r2, #2048	; 0x800
 80015fa:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015fe:	4290      	cmp	r0, r2
 8001600:	d012      	beq.n	8001628 <HAL_TIM_Base_Init+0x74>
 8001602:	e015      	b.n	8001630 <HAL_TIM_Base_Init+0x7c>
 8001604:	f640 4200 	movw	r2, #3072	; 0xc00
 8001608:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800160c:	4290      	cmp	r0, r2
 800160e:	bf1e      	ittt	ne
 8001610:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001614:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001618:	4290      	cmpne	r0, r2
 800161a:	d005      	beq.n	8001628 <HAL_TIM_Base_Init+0x74>
 800161c:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001620:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001624:	4290      	cmp	r0, r2
 8001626:	d103      	bne.n	8001630 <HAL_TIM_Base_Init+0x7c>
 8001628:	68a2      	ldr	r2, [r4, #8]
 800162a:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800162e:	4311      	orrs	r1, r2
 8001630:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001634:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001638:	4290      	cmp	r0, r2
 800163a:	dd14      	ble.n	8001666 <HAL_TIM_Base_Init+0xb2>
 800163c:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001640:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001644:	4290      	cmp	r0, r2
 8001646:	dd1a      	ble.n	800167e <HAL_TIM_Base_Init+0xca>
 8001648:	f244 0200 	movw	r2, #16384	; 0x4000
 800164c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001650:	4290      	cmp	r0, r2
 8001652:	bf1e      	ittt	ne
 8001654:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001658:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800165c:	4290      	cmpne	r0, r2
 800165e:	d027      	beq.n	80016b0 <HAL_TIM_Base_Init+0xfc>
 8001660:	f244 4200 	movw	r2, #17408	; 0x4400
 8001664:	e013      	b.n	800168e <HAL_TIM_Base_Init+0xda>
 8001666:	f240 72ff 	movw	r2, #2047	; 0x7ff
 800166a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800166e:	4290      	cmp	r0, r2
 8001670:	dc12      	bgt.n	8001698 <HAL_TIM_Base_Init+0xe4>
 8001672:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001676:	d01b      	beq.n	80016b0 <HAL_TIM_Base_Init+0xfc>
 8001678:	f240 4200 	movw	r2, #1024	; 0x400
 800167c:	e014      	b.n	80016a8 <HAL_TIM_Base_Init+0xf4>
 800167e:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001682:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001686:	4290      	cmp	r0, r2
 8001688:	d012      	beq.n	80016b0 <HAL_TIM_Base_Init+0xfc>
 800168a:	f243 4200 	movw	r2, #13312	; 0x3400
 800168e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001692:	4290      	cmp	r0, r2
 8001694:	d00c      	beq.n	80016b0 <HAL_TIM_Base_Init+0xfc>
 8001696:	e00f      	b.n	80016b8 <HAL_TIM_Base_Init+0x104>
 8001698:	f640 0200 	movw	r2, #2048	; 0x800
 800169c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016a0:	4290      	cmp	r0, r2
 80016a2:	d005      	beq.n	80016b0 <HAL_TIM_Base_Init+0xfc>
 80016a4:	f640 4200 	movw	r2, #3072	; 0xc00
 80016a8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016ac:	4290      	cmp	r0, r2
 80016ae:	d103      	bne.n	80016b8 <HAL_TIM_Base_Init+0x104>
 80016b0:	6922      	ldr	r2, [r4, #16]
 80016b2:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016b6:	4311      	orrs	r1, r2
 80016b8:	69a2      	ldr	r2, [r4, #24]
 80016ba:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016be:	4311      	orrs	r1, r2
 80016c0:	6001      	str	r1, [r0, #0]
 80016c2:	68e1      	ldr	r1, [r4, #12]
 80016c4:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016c6:	6861      	ldr	r1, [r4, #4]
 80016c8:	6281      	str	r1, [r0, #40]	; 0x28
 80016ca:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016ce:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016d2:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016d6:	2907      	cmp	r1, #7
 80016d8:	d807      	bhi.n	80016ea <HAL_TIM_Base_Init+0x136>
 80016da:	2201      	movs	r2, #1
 80016dc:	fa02 f101 	lsl.w	r1, r2, r1
 80016e0:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016e4:	bf1c      	itt	ne
 80016e6:	6961      	ldrne	r1, [r4, #20]
 80016e8:	6301      	strne	r1, [r0, #48]	; 0x30
 80016ea:	2101      	movs	r1, #1
 80016ec:	6141      	str	r1, [r0, #20]
 80016ee:	2000      	movs	r0, #0
 80016f0:	6421      	str	r1, [r4, #64]	; 0x40
 80016f2:	bdd0      	pop	{r4, r6, r7, pc}

080016f4 <HAL_TIM_Base_MspInit>:
 80016f4:	4770      	bx	lr

080016f6 <HAL_TIM_Base_Start_IT>:
 80016f6:	6800      	ldr	r0, [r0, #0]
 80016f8:	68c1      	ldr	r1, [r0, #12]
 80016fa:	f041 0101 	orr.w	r1, r1, #1
 80016fe:	60c1      	str	r1, [r0, #12]
 8001700:	2107      	movs	r1, #7
 8001702:	6882      	ldr	r2, [r0, #8]
 8001704:	f2c0 0101 	movt	r1, #1
 8001708:	400a      	ands	r2, r1
 800170a:	2a06      	cmp	r2, #6
 800170c:	d008      	beq.n	8001720 <HAL_TIM_Base_Start_IT+0x2a>
 800170e:	6882      	ldr	r2, [r0, #8]
 8001710:	4011      	ands	r1, r2
 8001712:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001716:	bf1e      	ittt	ne
 8001718:	6801      	ldrne	r1, [r0, #0]
 800171a:	f041 0101 	orrne.w	r1, r1, #1
 800171e:	6001      	strne	r1, [r0, #0]
 8001720:	2000      	movs	r0, #0
 8001722:	4770      	bx	lr

08001724 <HAL_TIM_IRQHandler>:
 8001724:	b5d0      	push	{r4, r6, r7, lr}
 8001726:	af02      	add	r7, sp, #8
 8001728:	4604      	mov	r4, r0
 800172a:	6820      	ldr	r0, [r4, #0]
 800172c:	6901      	ldr	r1, [r0, #16]
 800172e:	f011 0f02 	tst.w	r1, #2
 8001732:	bf1c      	itt	ne
 8001734:	68c1      	ldrne	r1, [r0, #12]
 8001736:	f011 0f02 	tstne.w	r1, #2
 800173a:	d015      	beq.n	8001768 <HAL_TIM_IRQHandler+0x44>
 800173c:	f06f 0102 	mvn.w	r1, #2
 8001740:	6101      	str	r1, [r0, #16]
 8001742:	2101      	movs	r1, #1
 8001744:	61e1      	str	r1, [r4, #28]
 8001746:	6980      	ldr	r0, [r0, #24]
 8001748:	f010 0f03 	tst.w	r0, #3
 800174c:	d003      	beq.n	8001756 <HAL_TIM_IRQHandler+0x32>
 800174e:	4620      	mov	r0, r4
 8001750:	f000 f8b1 	bl	80018b6 <HAL_TIM_IC_CaptureCallback>
 8001754:	e005      	b.n	8001762 <HAL_TIM_IRQHandler+0x3e>
 8001756:	4620      	mov	r0, r4
 8001758:	f000 f8ae 	bl	80018b8 <HAL_TIM_OC_DelayElapsedCallback>
 800175c:	4620      	mov	r0, r4
 800175e:	f000 f8ac 	bl	80018ba <HAL_TIM_PWM_PulseFinishedCallback>
 8001762:	2000      	movs	r0, #0
 8001764:	61e0      	str	r0, [r4, #28]
 8001766:	6820      	ldr	r0, [r4, #0]
 8001768:	6901      	ldr	r1, [r0, #16]
 800176a:	f011 0f04 	tst.w	r1, #4
 800176e:	bf1c      	itt	ne
 8001770:	68c1      	ldrne	r1, [r0, #12]
 8001772:	f011 0f04 	tstne.w	r1, #4
 8001776:	d015      	beq.n	80017a4 <HAL_TIM_IRQHandler+0x80>
 8001778:	f06f 0104 	mvn.w	r1, #4
 800177c:	6101      	str	r1, [r0, #16]
 800177e:	2102      	movs	r1, #2
 8001780:	61e1      	str	r1, [r4, #28]
 8001782:	6980      	ldr	r0, [r0, #24]
 8001784:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001788:	d003      	beq.n	8001792 <HAL_TIM_IRQHandler+0x6e>
 800178a:	4620      	mov	r0, r4
 800178c:	f000 f893 	bl	80018b6 <HAL_TIM_IC_CaptureCallback>
 8001790:	e005      	b.n	800179e <HAL_TIM_IRQHandler+0x7a>
 8001792:	4620      	mov	r0, r4
 8001794:	f000 f890 	bl	80018b8 <HAL_TIM_OC_DelayElapsedCallback>
 8001798:	4620      	mov	r0, r4
 800179a:	f000 f88e 	bl	80018ba <HAL_TIM_PWM_PulseFinishedCallback>
 800179e:	2000      	movs	r0, #0
 80017a0:	61e0      	str	r0, [r4, #28]
 80017a2:	6820      	ldr	r0, [r4, #0]
 80017a4:	6901      	ldr	r1, [r0, #16]
 80017a6:	f011 0f08 	tst.w	r1, #8
 80017aa:	bf1c      	itt	ne
 80017ac:	68c1      	ldrne	r1, [r0, #12]
 80017ae:	f011 0f08 	tstne.w	r1, #8
 80017b2:	d015      	beq.n	80017e0 <HAL_TIM_IRQHandler+0xbc>
 80017b4:	f06f 0108 	mvn.w	r1, #8
 80017b8:	6101      	str	r1, [r0, #16]
 80017ba:	2104      	movs	r1, #4
 80017bc:	61e1      	str	r1, [r4, #28]
 80017be:	69c0      	ldr	r0, [r0, #28]
 80017c0:	f010 0f03 	tst.w	r0, #3
 80017c4:	d003      	beq.n	80017ce <HAL_TIM_IRQHandler+0xaa>
 80017c6:	4620      	mov	r0, r4
 80017c8:	f000 f875 	bl	80018b6 <HAL_TIM_IC_CaptureCallback>
 80017cc:	e005      	b.n	80017da <HAL_TIM_IRQHandler+0xb6>
 80017ce:	4620      	mov	r0, r4
 80017d0:	f000 f872 	bl	80018b8 <HAL_TIM_OC_DelayElapsedCallback>
 80017d4:	4620      	mov	r0, r4
 80017d6:	f000 f870 	bl	80018ba <HAL_TIM_PWM_PulseFinishedCallback>
 80017da:	2000      	movs	r0, #0
 80017dc:	61e0      	str	r0, [r4, #28]
 80017de:	6820      	ldr	r0, [r4, #0]
 80017e0:	6901      	ldr	r1, [r0, #16]
 80017e2:	f011 0f10 	tst.w	r1, #16
 80017e6:	bf1c      	itt	ne
 80017e8:	68c1      	ldrne	r1, [r0, #12]
 80017ea:	f011 0f10 	tstne.w	r1, #16
 80017ee:	d015      	beq.n	800181c <HAL_TIM_IRQHandler+0xf8>
 80017f0:	f06f 0110 	mvn.w	r1, #16
 80017f4:	6101      	str	r1, [r0, #16]
 80017f6:	2108      	movs	r1, #8
 80017f8:	61e1      	str	r1, [r4, #28]
 80017fa:	69c0      	ldr	r0, [r0, #28]
 80017fc:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001800:	d003      	beq.n	800180a <HAL_TIM_IRQHandler+0xe6>
 8001802:	4620      	mov	r0, r4
 8001804:	f000 f857 	bl	80018b6 <HAL_TIM_IC_CaptureCallback>
 8001808:	e005      	b.n	8001816 <HAL_TIM_IRQHandler+0xf2>
 800180a:	4620      	mov	r0, r4
 800180c:	f000 f854 	bl	80018b8 <HAL_TIM_OC_DelayElapsedCallback>
 8001810:	4620      	mov	r0, r4
 8001812:	f000 f852 	bl	80018ba <HAL_TIM_PWM_PulseFinishedCallback>
 8001816:	2000      	movs	r0, #0
 8001818:	61e0      	str	r0, [r4, #28]
 800181a:	6820      	ldr	r0, [r4, #0]
 800181c:	6901      	ldr	r1, [r0, #16]
 800181e:	f011 0f01 	tst.w	r1, #1
 8001822:	bf1c      	itt	ne
 8001824:	68c1      	ldrne	r1, [r0, #12]
 8001826:	f011 0f01 	tstne.w	r1, #1
 800182a:	d006      	beq.n	800183a <HAL_TIM_IRQHandler+0x116>
 800182c:	f06f 0101 	mvn.w	r1, #1
 8001830:	6101      	str	r1, [r0, #16]
 8001832:	4620      	mov	r0, r4
 8001834:	f000 f894 	bl	8001960 <HAL_TIM_PeriodElapsedCallback>
 8001838:	6820      	ldr	r0, [r4, #0]
 800183a:	6901      	ldr	r1, [r0, #16]
 800183c:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001840:	bf1c      	itt	ne
 8001842:	68c1      	ldrne	r1, [r0, #12]
 8001844:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001848:	d006      	beq.n	8001858 <HAL_TIM_IRQHandler+0x134>
 800184a:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800184e:	6101      	str	r1, [r0, #16]
 8001850:	4620      	mov	r0, r4
 8001852:	f000 f835 	bl	80018c0 <HAL_TIMEx_BreakCallback>
 8001856:	6820      	ldr	r0, [r4, #0]
 8001858:	6901      	ldr	r1, [r0, #16]
 800185a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800185e:	bf1c      	itt	ne
 8001860:	68c1      	ldrne	r1, [r0, #12]
 8001862:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001866:	d006      	beq.n	8001876 <HAL_TIM_IRQHandler+0x152>
 8001868:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800186c:	6101      	str	r1, [r0, #16]
 800186e:	4620      	mov	r0, r4
 8001870:	f000 f827 	bl	80018c2 <HAL_TIMEx_Break2Callback>
 8001874:	6820      	ldr	r0, [r4, #0]
 8001876:	6901      	ldr	r1, [r0, #16]
 8001878:	f011 0f40 	tst.w	r1, #64	; 0x40
 800187c:	bf1c      	itt	ne
 800187e:	68c1      	ldrne	r1, [r0, #12]
 8001880:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001884:	d006      	beq.n	8001894 <HAL_TIM_IRQHandler+0x170>
 8001886:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800188a:	6101      	str	r1, [r0, #16]
 800188c:	4620      	mov	r0, r4
 800188e:	f000 f815 	bl	80018bc <HAL_TIM_TriggerCallback>
 8001892:	6820      	ldr	r0, [r4, #0]
 8001894:	6901      	ldr	r1, [r0, #16]
 8001896:	f011 0f20 	tst.w	r1, #32
 800189a:	bf1c      	itt	ne
 800189c:	68c1      	ldrne	r1, [r0, #12]
 800189e:	f011 0f20 	tstne.w	r1, #32
 80018a2:	d100      	bne.n	80018a6 <HAL_TIM_IRQHandler+0x182>
 80018a4:	bdd0      	pop	{r4, r6, r7, pc}
 80018a6:	f06f 0120 	mvn.w	r1, #32
 80018aa:	6101      	str	r1, [r0, #16]
 80018ac:	4620      	mov	r0, r4
 80018ae:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80018b2:	f000 b804 	b.w	80018be <HAL_TIMEx_CommutationCallback>

080018b6 <HAL_TIM_IC_CaptureCallback>:
 80018b6:	4770      	bx	lr

080018b8 <HAL_TIM_OC_DelayElapsedCallback>:
 80018b8:	4770      	bx	lr

080018ba <HAL_TIM_PWM_PulseFinishedCallback>:
 80018ba:	4770      	bx	lr

080018bc <HAL_TIM_TriggerCallback>:
 80018bc:	4770      	bx	lr

080018be <HAL_TIMEx_CommutationCallback>:
 80018be:	4770      	bx	lr

080018c0 <HAL_TIMEx_BreakCallback>:
 80018c0:	4770      	bx	lr

080018c2 <HAL_TIMEx_Break2Callback>:
 80018c2:	4770      	bx	lr

080018c4 <HAL_InitTick>:
 80018c4:	b5b0      	push	{r4, r5, r7, lr}
 80018c6:	af02      	add	r7, sp, #8
 80018c8:	b086      	sub	sp, #24
 80018ca:	4601      	mov	r1, r0
 80018cc:	2036      	movs	r0, #54	; 0x36
 80018ce:	2200      	movs	r2, #0
 80018d0:	2400      	movs	r4, #0
 80018d2:	f7ff fc99 	bl	8001208 <HAL_NVIC_SetPriority>
 80018d6:	2036      	movs	r0, #54	; 0x36
 80018d8:	f7ff fcc9 	bl	800126e <HAL_NVIC_EnableIRQ>
 80018dc:	f241 0058 	movw	r0, #4184	; 0x1058
 80018e0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018e4:	6801      	ldr	r1, [r0, #0]
 80018e6:	f041 0110 	orr.w	r1, r1, #16
 80018ea:	6001      	str	r1, [r0, #0]
 80018ec:	4669      	mov	r1, sp
 80018ee:	6800      	ldr	r0, [r0, #0]
 80018f0:	f000 0010 	and.w	r0, r0, #16
 80018f4:	9001      	str	r0, [sp, #4]
 80018f6:	9801      	ldr	r0, [sp, #4]
 80018f8:	a801      	add	r0, sp, #4
 80018fa:	f7ff fe3a 	bl	8001572 <HAL_RCC_GetClockConfig>
 80018fe:	9d04      	ldr	r5, [sp, #16]
 8001900:	f7ff fe0d 	bl	800151e <HAL_RCC_GetPCLK1Freq>
 8001904:	2d00      	cmp	r5, #0
 8001906:	f241 31ec 	movw	r1, #5100	; 0x13ec
 800190a:	f241 0200 	movw	r2, #4096	; 0x1000
 800190e:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001912:	bf18      	it	ne
 8001914:	2501      	movne	r5, #1
 8001916:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800191a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800191e:	40a8      	lsls	r0, r5
 8001920:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001924:	618c      	str	r4, [r1, #24]
 8001926:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800192a:	fba0 0505 	umull	r0, r5, r0, r5
 800192e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001932:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001936:	e9c1 2000 	strd	r2, r0, [r1]
 800193a:	4608      	mov	r0, r1
 800193c:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001940:	610c      	str	r4, [r1, #16]
 8001942:	f7ff fe37 	bl	80015b4 <HAL_TIM_Base_Init>
 8001946:	2800      	cmp	r0, #0
 8001948:	bf1e      	ittt	ne
 800194a:	2001      	movne	r0, #1
 800194c:	b006      	addne	sp, #24
 800194e:	bdb0      	popne	{r4, r5, r7, pc}
 8001950:	f241 30ec 	movw	r0, #5100	; 0x13ec
 8001954:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001958:	f7ff fecd 	bl	80016f6 <HAL_TIM_Base_Start_IT>
 800195c:	b006      	add	sp, #24
 800195e:	bdb0      	pop	{r4, r5, r7, pc}

08001960 <HAL_TIM_PeriodElapsedCallback>:
 8001960:	f7ff bc34 	b.w	80011cc <HAL_IncTick>

08001964 <TIM6_DAC_IRQHandler>:
 8001964:	f241 30ec 	movw	r0, #5100	; 0x13ec
 8001968:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800196c:	f7ff beda 	b.w	8001724 <HAL_TIM_IRQHandler>

08001970 <HAL_UART_Init>:
 8001970:	b5d0      	push	{r4, r6, r7, lr}
 8001972:	af02      	add	r7, sp, #8
 8001974:	4604      	mov	r4, r0
 8001976:	b194      	cbz	r4, 800199e <HAL_UART_Init+0x2e>
 8001978:	6f60      	ldr	r0, [r4, #116]	; 0x74
 800197a:	b920      	cbnz	r0, 8001986 <HAL_UART_Init+0x16>
 800197c:	2000      	movs	r0, #0
 800197e:	6720      	str	r0, [r4, #112]	; 0x70
 8001980:	4620      	mov	r0, r4
 8001982:	f000 f826 	bl	80019d2 <HAL_UART_MspInit>
 8001986:	2024      	movs	r0, #36	; 0x24
 8001988:	6760      	str	r0, [r4, #116]	; 0x74
 800198a:	6820      	ldr	r0, [r4, #0]
 800198c:	6801      	ldr	r1, [r0, #0]
 800198e:	f021 0101 	bic.w	r1, r1, #1
 8001992:	6001      	str	r1, [r0, #0]
 8001994:	4620      	mov	r0, r4
 8001996:	f000 f81d 	bl	80019d4 <UART_SetConfig>
 800199a:	2801      	cmp	r0, #1
 800199c:	d101      	bne.n	80019a2 <HAL_UART_Init+0x32>
 800199e:	2001      	movs	r0, #1
 80019a0:	bdd0      	pop	{r4, r6, r7, pc}
 80019a2:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80019a4:	2800      	cmp	r0, #0
 80019a6:	bf1c      	itt	ne
 80019a8:	4620      	movne	r0, r4
 80019aa:	f000 f944 	blne	8001c36 <UART_AdvFeatureConfig>
 80019ae:	6820      	ldr	r0, [r4, #0]
 80019b0:	6841      	ldr	r1, [r0, #4]
 80019b2:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80019b6:	6041      	str	r1, [r0, #4]
 80019b8:	6881      	ldr	r1, [r0, #8]
 80019ba:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80019be:	6081      	str	r1, [r0, #8]
 80019c0:	6801      	ldr	r1, [r0, #0]
 80019c2:	f041 0101 	orr.w	r1, r1, #1
 80019c6:	6001      	str	r1, [r0, #0]
 80019c8:	4620      	mov	r0, r4
 80019ca:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019ce:	f000 b99d 	b.w	8001d0c <UART_CheckIdleState>

080019d2 <HAL_UART_MspInit>:
 80019d2:	4770      	bx	lr

080019d4 <UART_SetConfig>:
 80019d4:	b5b0      	push	{r4, r5, r7, lr}
 80019d6:	af02      	add	r7, sp, #8
 80019d8:	4604      	mov	r4, r0
 80019da:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019de:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019e2:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019e6:	6821      	ldr	r1, [r4, #0]
 80019e8:	68a0      	ldr	r0, [r4, #8]
 80019ea:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019ee:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019f2:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019f6:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019fa:	4310      	orrs	r0, r2
 80019fc:	69e2      	ldr	r2, [r4, #28]
 80019fe:	4571      	cmp	r1, lr
 8001a00:	ea40 0003 	orr.w	r0, r0, r3
 8001a04:	680b      	ldr	r3, [r1, #0]
 8001a06:	ea40 0002 	orr.w	r0, r0, r2
 8001a0a:	ea03 0305 	and.w	r3, r3, r5
 8001a0e:	f04f 0510 	mov.w	r5, #16
 8001a12:	ea40 0003 	orr.w	r0, r0, r3
 8001a16:	6008      	str	r0, [r1, #0]
 8001a18:	6848      	ldr	r0, [r1, #4]
 8001a1a:	68e3      	ldr	r3, [r4, #12]
 8001a1c:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a20:	ea40 0003 	orr.w	r0, r0, r3
 8001a24:	6048      	str	r0, [r1, #4]
 8001a26:	69a0      	ldr	r0, [r4, #24]
 8001a28:	bf1c      	itt	ne
 8001a2a:	6a23      	ldrne	r3, [r4, #32]
 8001a2c:	4318      	orrne	r0, r3
 8001a2e:	688b      	ldr	r3, [r1, #8]
 8001a30:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a34:	4318      	orrs	r0, r3
 8001a36:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a3a:	6088      	str	r0, [r1, #8]
 8001a3c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a40:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a44:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a48:	4299      	cmp	r1, r3
 8001a4a:	dc15      	bgt.n	8001a78 <UART_SetConfig+0xa4>
 8001a4c:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a50:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a54:	4299      	cmp	r1, r3
 8001a56:	d024      	beq.n	8001aa2 <UART_SetConfig+0xce>
 8001a58:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a5c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a60:	4299      	cmp	r1, r3
 8001a62:	d022      	beq.n	8001aaa <UART_SetConfig+0xd6>
 8001a64:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a68:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6c:	4299      	cmp	r1, r3
 8001a6e:	d131      	bne.n	8001ad4 <UART_SetConfig+0x100>
 8001a70:	f8dc 3000 	ldr.w	r3, [ip]
 8001a74:	099d      	lsrs	r5, r3, #6
 8001a76:	e023      	b.n	8001ac0 <UART_SetConfig+0xec>
 8001a78:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a7c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a80:	4299      	cmp	r1, r3
 8001a82:	d016      	beq.n	8001ab2 <UART_SetConfig+0xde>
 8001a84:	4571      	cmp	r1, lr
 8001a86:	d018      	beq.n	8001aba <UART_SetConfig+0xe6>
 8001a88:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a8c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a90:	4299      	cmp	r1, r3
 8001a92:	d11f      	bne.n	8001ad4 <UART_SetConfig+0x100>
 8001a94:	f8dc 5000 	ldr.w	r5, [ip]
 8001a98:	f649 1324 	movw	r3, #39204	; 0x9924
 8001a9c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001aa0:	e012      	b.n	8001ac8 <UART_SetConfig+0xf4>
 8001aa2:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa6:	089d      	lsrs	r5, r3, #2
 8001aa8:	e00a      	b.n	8001ac0 <UART_SetConfig+0xec>
 8001aaa:	f8dc 3000 	ldr.w	r3, [ip]
 8001aae:	091d      	lsrs	r5, r3, #4
 8001ab0:	e006      	b.n	8001ac0 <UART_SetConfig+0xec>
 8001ab2:	f8dc 3000 	ldr.w	r3, [ip]
 8001ab6:	0a1d      	lsrs	r5, r3, #8
 8001ab8:	e002      	b.n	8001ac0 <UART_SetConfig+0xec>
 8001aba:	f8dc 3000 	ldr.w	r3, [ip]
 8001abe:	0a9d      	lsrs	r5, r3, #10
 8001ac0:	f649 1334 	movw	r3, #39220	; 0x9934
 8001ac4:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ac8:	f005 0503 	and.w	r5, r5, #3
 8001acc:	f085 0502 	eor.w	r5, r5, #2
 8001ad0:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001ad4:	4571      	cmp	r1, lr
 8001ad6:	d012      	beq.n	8001afe <UART_SetConfig+0x12a>
 8001ad8:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001adc:	d11d      	bne.n	8001b1a <UART_SetConfig+0x146>
 8001ade:	f005 001f 	and.w	r0, r5, #31
 8001ae2:	2101      	movs	r1, #1
 8001ae4:	2808      	cmp	r0, #8
 8001ae6:	f200 809f 	bhi.w	8001c28 <UART_SetConfig+0x254>
 8001aea:	e8df f000 	tbb	[pc, r0]
 8001aee:	4005      	.short	0x4005
 8001af0:	9d499d43 	.word	0x9d499d43
 8001af4:	004f9d9d 	.word	0x004f9d9d
 8001af8:	f7ff fd11 	bl	800151e <HAL_RCC_GetPCLK1Freq>
 8001afc:	e042      	b.n	8001b84 <UART_SetConfig+0x1b0>
 8001afe:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001b02:	2101      	movs	r1, #1
 8001b04:	2d04      	cmp	r5, #4
 8001b06:	f200 808f 	bhi.w	8001c28 <UART_SetConfig+0x254>
 8001b0a:	e8df f005 	tbb	[pc, r5]
 8001b0e:	1c03      	.short	0x1c03
 8001b10:	001a8d16 	.word	0x001a8d16
 8001b14:	f7ff fd03 	bl	800151e <HAL_RCC_GetPCLK1Freq>
 8001b18:	e011      	b.n	8001b3e <UART_SetConfig+0x16a>
 8001b1a:	f005 021f 	and.w	r2, r5, #31
 8001b1e:	2101      	movs	r1, #1
 8001b20:	2a08      	cmp	r2, #8
 8001b22:	f200 8081 	bhi.w	8001c28 <UART_SetConfig+0x254>
 8001b26:	e8df f002 	tbb	[pc, r2]
 8001b2a:	4305      	.short	0x4305
 8001b2c:	7f487f46 	.word	0x7f487f46
 8001b30:	004e7f7f 	.word	0x004e7f7f
 8001b34:	f7ff fcf3 	bl	800151e <HAL_RCC_GetPCLK1Freq>
 8001b38:	e041      	b.n	8001bbe <UART_SetConfig+0x1ea>
 8001b3a:	f7ff fc91 	bl	8001460 <HAL_RCC_GetSysClockFreq>
 8001b3e:	b910      	cbnz	r0, 8001b46 <UART_SetConfig+0x172>
 8001b40:	e071      	b.n	8001c26 <UART_SetConfig+0x252>
 8001b42:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b46:	6862      	ldr	r2, [r4, #4]
 8001b48:	2101      	movs	r1, #1
 8001b4a:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b4e:	4298      	cmp	r0, r3
 8001b50:	d36a      	bcc.n	8001c28 <UART_SetConfig+0x254>
 8001b52:	0313      	lsls	r3, r2, #12
 8001b54:	4298      	cmp	r0, r3
 8001b56:	bf9c      	itt	ls
 8001b58:	2101      	movls	r1, #1
 8001b5a:	2d04      	cmpls	r5, #4
 8001b5c:	d864      	bhi.n	8001c28 <UART_SetConfig+0x254>
 8001b5e:	e8df f005 	tbb	[pc, r5]
 8001b62:	3e03      	.short	0x3e03
 8001b64:	00526345 	.word	0x00526345
 8001b68:	f7ff fcd9 	bl	800151e <HAL_RCC_GetPCLK1Freq>
 8001b6c:	e040      	b.n	8001bf0 <UART_SetConfig+0x21c>
 8001b6e:	f7ff fceb 	bl	8001548 <HAL_RCC_GetPCLK2Freq>
 8001b72:	e007      	b.n	8001b84 <UART_SetConfig+0x1b0>
 8001b74:	6861      	ldr	r1, [r4, #4]
 8001b76:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b7a:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b7e:	e008      	b.n	8001b92 <UART_SetConfig+0x1be>
 8001b80:	f7ff fc6e 	bl	8001460 <HAL_RCC_GetSysClockFreq>
 8001b84:	6861      	ldr	r1, [r4, #4]
 8001b86:	0040      	lsls	r0, r0, #1
 8001b88:	084a      	lsrs	r2, r1, #1
 8001b8a:	e003      	b.n	8001b94 <UART_SetConfig+0x1c0>
 8001b8c:	6861      	ldr	r1, [r4, #4]
 8001b8e:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b92:	0848      	lsrs	r0, r1, #1
 8001b94:	4410      	add	r0, r2
 8001b96:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b9a:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b9e:	4001      	ands	r1, r0
 8001ba0:	2910      	cmp	r1, #16
 8001ba2:	d303      	bcc.n	8001bac <UART_SetConfig+0x1d8>
 8001ba4:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ba8:	4308      	orrs	r0, r1
 8001baa:	e03a      	b.n	8001c22 <UART_SetConfig+0x24e>
 8001bac:	2101      	movs	r1, #1
 8001bae:	e03b      	b.n	8001c28 <UART_SetConfig+0x254>
 8001bb0:	f7ff fcca 	bl	8001548 <HAL_RCC_GetPCLK2Freq>
 8001bb4:	e003      	b.n	8001bbe <UART_SetConfig+0x1ea>
 8001bb6:	6862      	ldr	r2, [r4, #4]
 8001bb8:	e008      	b.n	8001bcc <UART_SetConfig+0x1f8>
 8001bba:	f7ff fc51 	bl	8001460 <HAL_RCC_GetSysClockFreq>
 8001bbe:	6862      	ldr	r2, [r4, #4]
 8001bc0:	4601      	mov	r1, r0
 8001bc2:	0850      	lsrs	r0, r2, #1
 8001bc4:	e003      	b.n	8001bce <UART_SetConfig+0x1fa>
 8001bc6:	6862      	ldr	r2, [r4, #4]
 8001bc8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bcc:	0851      	lsrs	r1, r2, #1
 8001bce:	4408      	add	r0, r1
 8001bd0:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bd4:	b280      	uxth	r0, r0
 8001bd6:	2810      	cmp	r0, #16
 8001bd8:	d223      	bcs.n	8001c22 <UART_SetConfig+0x24e>
 8001bda:	2101      	movs	r1, #1
 8001bdc:	e024      	b.n	8001c28 <UART_SetConfig+0x254>
 8001bde:	2000      	movs	r0, #0
 8001be0:	2100      	movs	r1, #0
 8001be2:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001be6:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bea:	e006      	b.n	8001bfa <UART_SetConfig+0x226>
 8001bec:	f7ff fc38 	bl	8001460 <HAL_RCC_GetSysClockFreq>
 8001bf0:	6862      	ldr	r2, [r4, #4]
 8001bf2:	0e01      	lsrs	r1, r0, #24
 8001bf4:	0853      	lsrs	r3, r2, #1
 8001bf6:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bfa:	f141 0100 	adc.w	r1, r1, #0
 8001bfe:	2300      	movs	r3, #0
 8001c00:	f7fe ff7c 	bl	8000afc <__aeabi_uldivmod>
 8001c04:	e005      	b.n	8001c12 <UART_SetConfig+0x23e>
 8001c06:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c0a:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c0e:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c12:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c16:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c1a:	f2c0 020f 	movt	r2, #15
 8001c1e:	4291      	cmp	r1, r2
 8001c20:	d807      	bhi.n	8001c32 <UART_SetConfig+0x25e>
 8001c22:	6821      	ldr	r1, [r4, #0]
 8001c24:	60c8      	str	r0, [r1, #12]
 8001c26:	2100      	movs	r1, #0
 8001c28:	2000      	movs	r0, #0
 8001c2a:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c2e:	4608      	mov	r0, r1
 8001c30:	bdb0      	pop	{r4, r5, r7, pc}
 8001c32:	2101      	movs	r1, #1
 8001c34:	e7f8      	b.n	8001c28 <UART_SetConfig+0x254>

08001c36 <UART_AdvFeatureConfig>:
 8001c36:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c38:	f011 0f01 	tst.w	r1, #1
 8001c3c:	d008      	beq.n	8001c50 <UART_AdvFeatureConfig+0x1a>
 8001c3e:	6802      	ldr	r2, [r0, #0]
 8001c40:	6853      	ldr	r3, [r2, #4]
 8001c42:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c46:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c4a:	ea43 030c 	orr.w	r3, r3, ip
 8001c4e:	6053      	str	r3, [r2, #4]
 8001c50:	078a      	lsls	r2, r1, #30
 8001c52:	d508      	bpl.n	8001c66 <UART_AdvFeatureConfig+0x30>
 8001c54:	6802      	ldr	r2, [r0, #0]
 8001c56:	6853      	ldr	r3, [r2, #4]
 8001c58:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c5c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c60:	ea43 030c 	orr.w	r3, r3, ip
 8001c64:	6053      	str	r3, [r2, #4]
 8001c66:	074a      	lsls	r2, r1, #29
 8001c68:	d508      	bpl.n	8001c7c <UART_AdvFeatureConfig+0x46>
 8001c6a:	6802      	ldr	r2, [r0, #0]
 8001c6c:	6853      	ldr	r3, [r2, #4]
 8001c6e:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c72:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c76:	ea43 030c 	orr.w	r3, r3, ip
 8001c7a:	6053      	str	r3, [r2, #4]
 8001c7c:	070a      	lsls	r2, r1, #28
 8001c7e:	d508      	bpl.n	8001c92 <UART_AdvFeatureConfig+0x5c>
 8001c80:	6802      	ldr	r2, [r0, #0]
 8001c82:	6853      	ldr	r3, [r2, #4]
 8001c84:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c88:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c8c:	ea43 030c 	orr.w	r3, r3, ip
 8001c90:	6053      	str	r3, [r2, #4]
 8001c92:	06ca      	lsls	r2, r1, #27
 8001c94:	d508      	bpl.n	8001ca8 <UART_AdvFeatureConfig+0x72>
 8001c96:	6802      	ldr	r2, [r0, #0]
 8001c98:	6893      	ldr	r3, [r2, #8]
 8001c9a:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c9e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001ca2:	ea43 030c 	orr.w	r3, r3, ip
 8001ca6:	6093      	str	r3, [r2, #8]
 8001ca8:	068a      	lsls	r2, r1, #26
 8001caa:	d508      	bpl.n	8001cbe <UART_AdvFeatureConfig+0x88>
 8001cac:	6802      	ldr	r2, [r0, #0]
 8001cae:	6893      	ldr	r3, [r2, #8]
 8001cb0:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cb4:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb8:	ea43 030c 	orr.w	r3, r3, ip
 8001cbc:	6093      	str	r3, [r2, #8]
 8001cbe:	b580      	push	{r7, lr}
 8001cc0:	466f      	mov	r7, sp
 8001cc2:	064a      	lsls	r2, r1, #25
 8001cc4:	d515      	bpl.n	8001cf2 <UART_AdvFeatureConfig+0xbc>
 8001cc6:	f8d0 e000 	ldr.w	lr, [r0]
 8001cca:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cce:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd0:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd4:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cd8:	ea42 0203 	orr.w	r2, r2, r3
 8001cdc:	f8ce 2004 	str.w	r2, [lr, #4]
 8001ce0:	d107      	bne.n	8001cf2 <UART_AdvFeatureConfig+0xbc>
 8001ce2:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001ce6:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001ce8:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cec:	431a      	orrs	r2, r3
 8001cee:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cf2:	0609      	lsls	r1, r1, #24
 8001cf4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cf8:	bf58      	it	pl
 8001cfa:	4770      	bxpl	lr
 8001cfc:	6801      	ldr	r1, [r0, #0]
 8001cfe:	684a      	ldr	r2, [r1, #4]
 8001d00:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d02:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d06:	4310      	orrs	r0, r2
 8001d08:	6048      	str	r0, [r1, #4]
 8001d0a:	4770      	bx	lr

08001d0c <UART_CheckIdleState>:
 8001d0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d0e:	af03      	add	r7, sp, #12
 8001d10:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001d14:	4604      	mov	r4, r0
 8001d16:	2000      	movs	r0, #0
 8001d18:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d1a:	f7ff fa5f 	bl	80011dc <HAL_GetTick>
 8001d1e:	4605      	mov	r5, r0
 8001d20:	6820      	ldr	r0, [r4, #0]
 8001d22:	6801      	ldr	r1, [r0, #0]
 8001d24:	f011 0f08 	tst.w	r1, #8
 8001d28:	d00f      	beq.n	8001d4a <UART_CheckIdleState+0x3e>
 8001d2a:	69c1      	ldr	r1, [r0, #28]
 8001d2c:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d30:	d10b      	bne.n	8001d4a <UART_CheckIdleState+0x3e>
 8001d32:	2600      	movs	r6, #0
 8001d34:	f7ff fa52 	bl	80011dc <HAL_GetTick>
 8001d38:	1b41      	subs	r1, r0, r5
 8001d3a:	6820      	ldr	r0, [r4, #0]
 8001d3c:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d40:	d11b      	bne.n	8001d7a <UART_CheckIdleState+0x6e>
 8001d42:	69c1      	ldr	r1, [r0, #28]
 8001d44:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d48:	d0f4      	beq.n	8001d34 <UART_CheckIdleState+0x28>
 8001d4a:	6801      	ldr	r1, [r0, #0]
 8001d4c:	f011 0f04 	tst.w	r1, #4
 8001d50:	d101      	bne.n	8001d56 <UART_CheckIdleState+0x4a>
 8001d52:	2600      	movs	r6, #0
 8001d54:	e01a      	b.n	8001d8c <UART_CheckIdleState+0x80>
 8001d56:	69c0      	ldr	r0, [r0, #28]
 8001d58:	2600      	movs	r6, #0
 8001d5a:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d5e:	d115      	bne.n	8001d8c <UART_CheckIdleState+0x80>
 8001d60:	f7ff fa3c 	bl	80011dc <HAL_GetTick>
 8001d64:	1b41      	subs	r1, r0, r5
 8001d66:	6820      	ldr	r0, [r4, #0]
 8001d68:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d6c:	d105      	bne.n	8001d7a <UART_CheckIdleState+0x6e>
 8001d6e:	69c0      	ldr	r0, [r0, #28]
 8001d70:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d74:	d0f4      	beq.n	8001d60 <UART_CheckIdleState+0x54>
 8001d76:	2600      	movs	r6, #0
 8001d78:	e008      	b.n	8001d8c <UART_CheckIdleState+0x80>
 8001d7a:	6801      	ldr	r1, [r0, #0]
 8001d7c:	2603      	movs	r6, #3
 8001d7e:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d82:	6001      	str	r1, [r0, #0]
 8001d84:	6881      	ldr	r1, [r0, #8]
 8001d86:	f021 0101 	bic.w	r1, r1, #1
 8001d8a:	6081      	str	r1, [r0, #8]
 8001d8c:	2020      	movs	r0, #32
 8001d8e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d90:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d92:	2000      	movs	r0, #0
 8001d94:	6720      	str	r0, [r4, #112]	; 0x70
 8001d96:	4630      	mov	r0, r6
 8001d98:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d9c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d9e <HAL_UART_Transmit>:
 8001d9e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001da0:	af03      	add	r7, sp, #12
 8001da2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001da6:	b081      	sub	sp, #4
 8001da8:	4604      	mov	r4, r0
 8001daa:	461d      	mov	r5, r3
 8001dac:	4616      	mov	r6, r2
 8001dae:	4689      	mov	r9, r1
 8001db0:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001db2:	2820      	cmp	r0, #32
 8001db4:	d109      	bne.n	8001dca <HAL_UART_Transmit+0x2c>
 8001db6:	f1b9 0f00 	cmp.w	r9, #0
 8001dba:	f04f 0001 	mov.w	r0, #1
 8001dbe:	bf18      	it	ne
 8001dc0:	2e00      	cmpne	r6, #0
 8001dc2:	d003      	beq.n	8001dcc <HAL_UART_Transmit+0x2e>
 8001dc4:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001dc6:	2801      	cmp	r0, #1
 8001dc8:	d104      	bne.n	8001dd4 <HAL_UART_Transmit+0x36>
 8001dca:	2002      	movs	r0, #2
 8001dcc:	b001      	add	sp, #4
 8001dce:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001dd2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001dd4:	2001      	movs	r0, #1
 8001dd6:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd8:	2000      	movs	r0, #0
 8001dda:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001ddc:	2021      	movs	r0, #33	; 0x21
 8001dde:	6760      	str	r0, [r4, #116]	; 0x74
 8001de0:	f7ff f9fc 	bl	80011dc <HAL_GetTick>
 8001de4:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001de8:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001dec:	4680      	mov	r8, r0
 8001dee:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001df2:	f8d4 b000 	ldr.w	fp, [r4]
 8001df6:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001dfa:	2900      	cmp	r1, #0
 8001dfc:	d040      	beq.n	8001e80 <HAL_UART_Transmit+0xe2>
 8001dfe:	f105 0a01 	add.w	sl, r5, #1
 8001e02:	0600      	lsls	r0, r0, #24
 8001e04:	d410      	bmi.n	8001e28 <HAL_UART_Transmit+0x8a>
 8001e06:	465e      	mov	r6, fp
 8001e08:	f1ba 0f00 	cmp.w	sl, #0
 8001e0c:	d007      	beq.n	8001e1e <HAL_UART_Transmit+0x80>
 8001e0e:	b33d      	cbz	r5, 8001e60 <HAL_UART_Transmit+0xc2>
 8001e10:	f7ff f9e4 	bl	80011dc <HAL_GetTick>
 8001e14:	6826      	ldr	r6, [r4, #0]
 8001e16:	eba0 0008 	sub.w	r0, r0, r8
 8001e1a:	42a8      	cmp	r0, r5
 8001e1c:	d821      	bhi.n	8001e62 <HAL_UART_Transmit+0xc4>
 8001e1e:	69f0      	ldr	r0, [r6, #28]
 8001e20:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e24:	d0f0      	beq.n	8001e08 <HAL_UART_Transmit+0x6a>
 8001e26:	e000      	b.n	8001e2a <HAL_UART_Transmit+0x8c>
 8001e28:	465e      	mov	r6, fp
 8001e2a:	68a0      	ldr	r0, [r4, #8]
 8001e2c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e30:	bf04      	itt	eq
 8001e32:	6920      	ldreq	r0, [r4, #16]
 8001e34:	2800      	cmpeq	r0, #0
 8001e36:	d002      	beq.n	8001e3e <HAL_UART_Transmit+0xa0>
 8001e38:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e3c:	e003      	b.n	8001e46 <HAL_UART_Transmit+0xa8>
 8001e3e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e42:	f36f 205f 	bfc	r0, #9, #23
 8001e46:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e48:	46b3      	mov	fp, r6
 8001e4a:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e4e:	3801      	subs	r0, #1
 8001e50:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e54:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e58:	69f0      	ldr	r0, [r6, #28]
 8001e5a:	2900      	cmp	r1, #0
 8001e5c:	d1d1      	bne.n	8001e02 <HAL_UART_Transmit+0x64>
 8001e5e:	e010      	b.n	8001e82 <HAL_UART_Transmit+0xe4>
 8001e60:	465e      	mov	r6, fp
 8001e62:	6830      	ldr	r0, [r6, #0]
 8001e64:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e68:	6030      	str	r0, [r6, #0]
 8001e6a:	68b0      	ldr	r0, [r6, #8]
 8001e6c:	f020 0001 	bic.w	r0, r0, #1
 8001e70:	60b0      	str	r0, [r6, #8]
 8001e72:	2020      	movs	r0, #32
 8001e74:	6760      	str	r0, [r4, #116]	; 0x74
 8001e76:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e78:	2000      	movs	r0, #0
 8001e7a:	6720      	str	r0, [r4, #112]	; 0x70
 8001e7c:	2003      	movs	r0, #3
 8001e7e:	e7a5      	b.n	8001dcc <HAL_UART_Transmit+0x2e>
 8001e80:	465e      	mov	r6, fp
 8001e82:	0640      	lsls	r0, r0, #25
 8001e84:	d411      	bmi.n	8001eaa <HAL_UART_Transmit+0x10c>
 8001e86:	f105 0901 	add.w	r9, r5, #1
 8001e8a:	4630      	mov	r0, r6
 8001e8c:	f1b9 0f00 	cmp.w	r9, #0
 8001e90:	d007      	beq.n	8001ea2 <HAL_UART_Transmit+0x104>
 8001e92:	b17d      	cbz	r5, 8001eb4 <HAL_UART_Transmit+0x116>
 8001e94:	f7ff f9a2 	bl	80011dc <HAL_GetTick>
 8001e98:	eba0 0108 	sub.w	r1, r0, r8
 8001e9c:	6820      	ldr	r0, [r4, #0]
 8001e9e:	42a9      	cmp	r1, r5
 8001ea0:	d809      	bhi.n	8001eb6 <HAL_UART_Transmit+0x118>
 8001ea2:	69c1      	ldr	r1, [r0, #28]
 8001ea4:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001ea8:	d0f0      	beq.n	8001e8c <HAL_UART_Transmit+0xee>
 8001eaa:	2020      	movs	r0, #32
 8001eac:	6760      	str	r0, [r4, #116]	; 0x74
 8001eae:	2000      	movs	r0, #0
 8001eb0:	6720      	str	r0, [r4, #112]	; 0x70
 8001eb2:	e78b      	b.n	8001dcc <HAL_UART_Transmit+0x2e>
 8001eb4:	4630      	mov	r0, r6
 8001eb6:	6801      	ldr	r1, [r0, #0]
 8001eb8:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001ebc:	6001      	str	r1, [r0, #0]
 8001ebe:	6881      	ldr	r1, [r0, #8]
 8001ec0:	f021 0101 	bic.w	r1, r1, #1
 8001ec4:	6081      	str	r1, [r0, #8]
 8001ec6:	e7d4      	b.n	8001e72 <HAL_UART_Transmit+0xd4>

08001ec8 <BSP_COM_Init>:
 8001ec8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eca:	af03      	add	r7, sp, #12
 8001ecc:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ed0:	b086      	sub	sp, #24
 8001ed2:	4605      	mov	r5, r0
 8001ed4:	4688      	mov	r8, r1
 8001ed6:	b9f5      	cbnz	r5, 8001f16 <BSP_COM_Init+0x4e>
 8001ed8:	f241 004c 	movw	r0, #4172	; 0x104c
 8001edc:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001ee0:	6801      	ldr	r1, [r0, #0]
 8001ee2:	f041 0102 	orr.w	r1, r1, #2
 8001ee6:	6001      	str	r1, [r0, #0]
 8001ee8:	6801      	ldr	r1, [r0, #0]
 8001eea:	f001 0102 	and.w	r1, r1, #2
 8001eee:	9101      	str	r1, [sp, #4]
 8001ef0:	9901      	ldr	r1, [sp, #4]
 8001ef2:	6801      	ldr	r1, [r0, #0]
 8001ef4:	f041 0102 	orr.w	r1, r1, #2
 8001ef8:	6001      	str	r1, [r0, #0]
 8001efa:	6801      	ldr	r1, [r0, #0]
 8001efc:	f001 0102 	and.w	r1, r1, #2
 8001f00:	9101      	str	r1, [sp, #4]
 8001f02:	9901      	ldr	r1, [sp, #4]
 8001f04:	6941      	ldr	r1, [r0, #20]
 8001f06:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f0a:	6141      	str	r1, [r0, #20]
 8001f0c:	6940      	ldr	r0, [r0, #20]
 8001f0e:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f12:	9001      	str	r0, [sp, #4]
 8001f14:	9801      	ldr	r0, [sp, #4]
 8001f16:	2040      	movs	r0, #64	; 0x40
 8001f18:	2402      	movs	r4, #2
 8001f1a:	ae01      	add	r6, sp, #4
 8001f1c:	f04f 0907 	mov.w	r9, #7
 8001f20:	9001      	str	r0, [sp, #4]
 8001f22:	2000      	movs	r0, #0
 8001f24:	9402      	str	r4, [sp, #8]
 8001f26:	9404      	str	r4, [sp, #16]
 8001f28:	4631      	mov	r1, r6
 8001f2a:	9003      	str	r0, [sp, #12]
 8001f2c:	f240 000c 	movw	r0, #12
 8001f30:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f34:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f38:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f3c:	f7ff f9a7 	bl	800128e <HAL_GPIO_Init>
 8001f40:	2080      	movs	r0, #128	; 0x80
 8001f42:	4631      	mov	r1, r6
 8001f44:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f48:	f240 0010 	movw	r0, #16
 8001f4c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f50:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f54:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f58:	f7ff f999 	bl	800128e <HAL_GPIO_Init>
 8001f5c:	f240 0008 	movw	r0, #8
 8001f60:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f64:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f68:	f8c8 0000 	str.w	r0, [r8]
 8001f6c:	4640      	mov	r0, r8
 8001f6e:	f7ff fcff 	bl	8001970 <HAL_UART_Init>
 8001f72:	b006      	add	sp, #24
 8001f74:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f78:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f7a <gethex>:
 8001f7a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f7c:	af03      	add	r7, sp, #12
 8001f7e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f82:	b085      	sub	sp, #20
 8001f84:	6805      	ldr	r5, [r0, #0]
 8001f86:	468c      	mov	ip, r1
 8001f88:	2100      	movs	r1, #0
 8001f8a:	186e      	adds	r6, r5, r1
 8001f8c:	3101      	adds	r1, #1
 8001f8e:	78b4      	ldrb	r4, [r6, #2]
 8001f90:	2c30      	cmp	r4, #48	; 0x30
 8001f92:	d0fa      	beq.n	8001f8a <gethex+0x10>
 8001f94:	f249 7a18 	movw	sl, #38680	; 0x9718
 8001f98:	440d      	add	r5, r1
 8001f9a:	e9cd 3203 	strd	r3, r2, [sp, #12]
 8001f9e:	f6c0 0a00 	movt	sl, #2048	; 0x800
 8001fa2:	f105 0b01 	add.w	fp, r5, #1
 8001fa6:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8001faa:	b196      	cbz	r6, 8001fd2 <gethex+0x58>
 8001fac:	46e0      	mov	r8, ip
 8001fae:	f04f 0e00 	mov.w	lr, #0
 8001fb2:	f04f 0c00 	mov.w	ip, #0
 8001fb6:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8001fba:	f10b 0501 	add.w	r5, fp, #1
 8001fbe:	b33e      	cbz	r6, 8002010 <gethex+0x96>
 8001fc0:	f815 4b01 	ldrb.w	r4, [r5], #1
 8001fc4:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8001fc8:	2e00      	cmp	r6, #0
 8001fca:	d1f9      	bne.n	8001fc0 <gethex+0x46>
 8001fcc:	f1a5 0901 	sub.w	r9, r5, #1
 8001fd0:	e01f      	b.n	8002012 <gethex+0x98>
 8001fd2:	3901      	subs	r1, #1
 8001fd4:	2c2e      	cmp	r4, #46	; 0x2e
 8001fd6:	d136      	bne.n	8002046 <gethex+0xcc>
 8001fd8:	46ae      	mov	lr, r5
 8001fda:	f81e 4f02 	ldrb.w	r4, [lr, #2]!
 8001fde:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8001fe2:	b3b6      	cbz	r6, 8002052 <gethex+0xd8>
 8001fe4:	2c30      	cmp	r4, #48	; 0x30
 8001fe6:	46f3      	mov	fp, lr
 8001fe8:	d106      	bne.n	8001ff8 <gethex+0x7e>
 8001fea:	1ce9      	adds	r1, r5, #3
 8001fec:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001ff0:	2c30      	cmp	r4, #48	; 0x30
 8001ff2:	d0fb      	beq.n	8001fec <gethex+0x72>
 8001ff4:	f1a1 0b01 	sub.w	fp, r1, #1
 8001ff8:	f81a 1004 	ldrb.w	r1, [sl, r4]
 8001ffc:	46e0      	mov	r8, ip
 8001ffe:	f04f 0c00 	mov.w	ip, #0
 8002002:	2900      	cmp	r1, #0
 8002004:	f04f 0101 	mov.w	r1, #1
 8002008:	bf08      	it	eq
 800200a:	f04f 0c01 	moveq.w	ip, #1
 800200e:	e7d2      	b.n	8001fb6 <gethex+0x3c>
 8002010:	46d9      	mov	r9, fp
 8002012:	f1be 0f00 	cmp.w	lr, #0
 8002016:	4663      	mov	r3, ip
 8002018:	46c4      	mov	ip, r8
 800201a:	bf08      	it	eq
 800201c:	2c2e      	cmpeq	r4, #46	; 0x2e
 800201e:	d109      	bne.n	8002034 <gethex+0xba>
 8002020:	f1a5 0901 	sub.w	r9, r5, #1
 8002024:	f819 4f01 	ldrb.w	r4, [r9, #1]!
 8002028:	f81a 6004 	ldrb.w	r6, [sl, r4]
 800202c:	2e00      	cmp	r6, #0
 800202e:	d1f9      	bne.n	8002024 <gethex+0xaa>
 8002030:	46ae      	mov	lr, r5
 8002032:	e002      	b.n	800203a <gethex+0xc0>
 8002034:	f1be 0f00 	cmp.w	lr, #0
 8002038:	d009      	beq.n	800204e <gethex+0xd4>
 800203a:	eba9 020e 	sub.w	r2, r9, lr
 800203e:	2600      	movs	r6, #0
 8002040:	eba6 0682 	sub.w	r6, r6, r2, lsl #2
 8002044:	e008      	b.n	8002058 <gethex+0xde>
 8002046:	2301      	movs	r3, #1
 8002048:	2600      	movs	r6, #0
 800204a:	46d9      	mov	r9, fp
 800204c:	e004      	b.n	8002058 <gethex+0xde>
 800204e:	2600      	movs	r6, #0
 8002050:	e002      	b.n	8002058 <gethex+0xde>
 8002052:	2301      	movs	r3, #1
 8002054:	2600      	movs	r6, #0
 8002056:	46f1      	mov	r9, lr
 8002058:	f044 0220 	orr.w	r2, r4, #32
 800205c:	2a70      	cmp	r2, #112	; 0x70
 800205e:	d10b      	bne.n	8002078 <gethex+0xfe>
 8002060:	f899 2001 	ldrb.w	r2, [r9, #1]
 8002064:	2500      	movs	r5, #0
 8002066:	2a2b      	cmp	r2, #43	; 0x2b
 8002068:	d002      	beq.n	8002070 <gethex+0xf6>
 800206a:	2a2d      	cmp	r2, #45	; 0x2d
 800206c:	d109      	bne.n	8002082 <gethex+0x108>
 800206e:	2501      	movs	r5, #1
 8002070:	f899 2002 	ldrb.w	r2, [r9, #2]
 8002074:	2402      	movs	r4, #2
 8002076:	e005      	b.n	8002084 <gethex+0x10a>
 8002078:	f04f 0800 	mov.w	r8, #0
 800207c:	464c      	mov	r4, r9
 800207e:	2500      	movs	r5, #0
 8002080:	e045      	b.n	800210e <gethex+0x194>
 8002082:	2401      	movs	r4, #1
 8002084:	f81a e002 	ldrb.w	lr, [sl, r2]
 8002088:	f1ae 0201 	sub.w	r2, lr, #1
 800208c:	b2d2      	uxtb	r2, r2
 800208e:	2a18      	cmp	r2, #24
 8002090:	d903      	bls.n	800209a <gethex+0x120>
 8002092:	f04f 0800 	mov.w	r8, #0
 8002096:	464c      	mov	r4, r9
 8002098:	e039      	b.n	800210e <gethex+0x194>
 800209a:	9602      	str	r6, [sp, #8]
 800209c:	e9cd 5c00 	strd	r5, ip, [sp]
 80020a0:	eb09 0504 	add.w	r5, r9, r4
 80020a4:	f04f 0800 	mov.w	r8, #0
 80020a8:	462c      	mov	r4, r5
 80020aa:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 80020ae:	f81a 6002 	ldrb.w	r6, [sl, r2]
 80020b2:	1e72      	subs	r2, r6, #1
 80020b4:	fa5f fc82 	uxtb.w	ip, r2
 80020b8:	f1ae 0210 	sub.w	r2, lr, #16
 80020bc:	f1bc 0f18 	cmp.w	ip, #24
 80020c0:	d81c      	bhi.n	80020fc <gethex+0x182>
 80020c2:	1cac      	adds	r4, r5, #2
 80020c4:	469c      	mov	ip, r3
 80020c6:	2500      	movs	r5, #0
 80020c8:	ebb8 6fd2 	cmp.w	r8, r2, lsr #27
 80020cc:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80020d0:	ea4f 0242 	mov.w	r2, r2, lsl #1
 80020d4:	bf18      	it	ne
 80020d6:	2501      	movne	r5, #1
 80020d8:	fa52 fe86 	uxtab	lr, r2, r6
 80020dc:	f814 6b01 	ldrb.w	r6, [r4], #1
 80020e0:	f1ae 0210 	sub.w	r2, lr, #16
 80020e4:	f81a 6006 	ldrb.w	r6, [sl, r6]
 80020e8:	1e73      	subs	r3, r6, #1
 80020ea:	b2db      	uxtb	r3, r3
 80020ec:	2b19      	cmp	r3, #25
 80020ee:	d3eb      	bcc.n	80020c8 <gethex+0x14e>
 80020f0:	46a8      	mov	r8, r5
 80020f2:	9d01      	ldr	r5, [sp, #4]
 80020f4:	4663      	mov	r3, ip
 80020f6:	3c01      	subs	r4, #1
 80020f8:	46ac      	mov	ip, r5
 80020fa:	e001      	b.n	8002100 <gethex+0x186>
 80020fc:	f8dd c004 	ldr.w	ip, [sp, #4]
 8002100:	9d00      	ldr	r5, [sp, #0]
 8002102:	2d00      	cmp	r5, #0
 8002104:	bf18      	it	ne
 8002106:	f1ce 0210 	rsbne	r2, lr, #16
 800210a:	9e02      	ldr	r6, [sp, #8]
 800210c:	4416      	add	r6, r2
 800210e:	2900      	cmp	r1, #0
 8002110:	bf08      	it	eq
 8002112:	f1ab 0401 	subeq.w	r4, fp, #1
 8002116:	2b00      	cmp	r3, #0
 8002118:	6004      	str	r4, [r0, #0]
 800211a:	d109      	bne.n	8002130 <gethex+0x1b6>
 800211c:	f1b8 0f00 	cmp.w	r8, #0
 8002120:	d00d      	beq.n	800213e <gethex+0x1c4>
 8002122:	b335      	cbz	r5, 8002172 <gethex+0x1f8>
 8002124:	4664      	mov	r4, ip
 8002126:	f002 fb83 	bl	8004830 <__errno>
 800212a:	46a4      	mov	ip, r4
 800212c:	2122      	movs	r1, #34	; 0x22
 800212e:	6001      	str	r1, [r0, #0]
 8002130:	2000      	movs	r0, #0
 8002132:	e9cc 0000 	strd	r0, r0, [ip]
 8002136:	b005      	add	sp, #20
 8002138:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800213c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800213e:	ea6f 000b 	mvn.w	r0, fp
 8002142:	2500      	movs	r5, #0
 8002144:	9602      	str	r6, [sp, #8]
 8002146:	4448      	add	r0, r9
 8002148:	2808      	cmp	r0, #8
 800214a:	db07      	blt.n	800215c <gethex+0x1e2>
 800214c:	0841      	lsrs	r1, r0, #1
 800214e:	280f      	cmp	r0, #15
 8002150:	f105 0501 	add.w	r5, r5, #1
 8002154:	4608      	mov	r0, r1
 8002156:	d8f9      	bhi.n	800214c <gethex+0x1d2>
 8002158:	2d07      	cmp	r5, #7
 800215a:	dc30      	bgt.n	80021be <gethex+0x244>
 800215c:	f640 2004 	movw	r0, #2564	; 0xa04
 8002160:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002164:	f850 4025 	ldr.w	r4, [r0, r5, lsl #2]
 8002168:	b174      	cbz	r4, 8002188 <gethex+0x20e>
 800216a:	6821      	ldr	r1, [r4, #0]
 800216c:	f840 1025 	str.w	r1, [r0, r5, lsl #2]
 8002170:	e042      	b.n	80021f8 <gethex+0x27e>
 8002172:	9904      	ldr	r1, [sp, #16]
 8002174:	9803      	ldr	r0, [sp, #12]
 8002176:	2901      	cmp	r1, #1
 8002178:	f000 8131 	beq.w	80023de <gethex+0x464>
 800217c:	2903      	cmp	r1, #3
 800217e:	d027      	beq.n	80021d0 <gethex+0x256>
 8002180:	2902      	cmp	r1, #2
 8002182:	d128      	bne.n	80021d6 <gethex+0x25c>
 8002184:	bb38      	cbnz	r0, 80021d6 <gethex+0x25c>
 8002186:	e12a      	b.n	80023de <gethex+0x464>
 8002188:	f240 0128 	movw	r1, #40	; 0x28
 800218c:	f640 2228 	movw	r2, #2600	; 0xa28
 8002190:	2001      	movs	r0, #1
 8002192:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002196:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800219a:	fa00 f805 	lsl.w	r8, r0, r5
 800219e:	201b      	movs	r0, #27
 80021a0:	680c      	ldr	r4, [r1, #0]
 80021a2:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80021a6:	1aa2      	subs	r2, r4, r2
 80021a8:	10d2      	asrs	r2, r2, #3
 80021aa:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80021ae:	08c0      	lsrs	r0, r0, #3
 80021b0:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80021b4:	d818      	bhi.n	80021e8 <gethex+0x26e>
 80021b6:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 80021ba:	6008      	str	r0, [r1, #0]
 80021bc:	e01a      	b.n	80021f4 <gethex+0x27a>
 80021be:	2001      	movs	r0, #1
 80021c0:	4666      	mov	r6, ip
 80021c2:	fa00 f805 	lsl.w	r8, r0, r5
 80021c6:	201b      	movs	r0, #27
 80021c8:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80021cc:	08c0      	lsrs	r0, r0, #3
 80021ce:	e00c      	b.n	80021ea <gethex+0x270>
 80021d0:	2800      	cmp	r0, #0
 80021d2:	f040 8104 	bne.w	80023de <gethex+0x464>
 80021d6:	f244 007f 	movw	r0, #16511	; 0x407f
 80021da:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80021de:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 80021e2:	e9cc 1000 	strd	r1, r0, [ip]
 80021e6:	e7a6      	b.n	8002136 <gethex+0x1bc>
 80021e8:	4666      	mov	r6, ip
 80021ea:	00c0      	lsls	r0, r0, #3
 80021ec:	f002 fb6e 	bl	80048cc <malloc>
 80021f0:	4604      	mov	r4, r0
 80021f2:	46b4      	mov	ip, r6
 80021f4:	e9c4 5801 	strd	r5, r8, [r4, #4]
 80021f8:	f104 0814 	add.w	r8, r4, #20
 80021fc:	2100      	movs	r1, #0
 80021fe:	2200      	movs	r2, #0
 8002200:	4640      	mov	r0, r8
 8002202:	e9c4 1103 	strd	r1, r1, [r4, #12]
 8002206:	45d9      	cmp	r9, fp
 8002208:	d811      	bhi.n	800222e <gethex+0x2b4>
 800220a:	e015      	b.n	8002238 <gethex+0x2be>
 800220c:	2a20      	cmp	r2, #32
 800220e:	bf01      	itttt	eq
 8002210:	f840 1b04 	streq.w	r1, [r0], #4
 8002214:	f899 3000 	ldrbeq.w	r3, [r9]
 8002218:	2100      	moveq	r1, #0
 800221a:	2200      	moveq	r2, #0
 800221c:	f81a 3003 	ldrb.w	r3, [sl, r3]
 8002220:	f003 030f 	and.w	r3, r3, #15
 8002224:	4093      	lsls	r3, r2
 8002226:	3204      	adds	r2, #4
 8002228:	4319      	orrs	r1, r3
 800222a:	45d9      	cmp	r9, fp
 800222c:	d904      	bls.n	8002238 <gethex+0x2be>
 800222e:	f819 3d01 	ldrb.w	r3, [r9, #-1]!
 8002232:	2b2e      	cmp	r3, #46	; 0x2e
 8002234:	d0f9      	beq.n	800222a <gethex+0x2b0>
 8002236:	e7e9      	b.n	800220c <gethex+0x292>
 8002238:	f840 1b04 	str.w	r1, [r0], #4
 800223c:	2600      	movs	r6, #0
 800223e:	2210      	movs	r2, #16
 8002240:	eba0 0308 	sub.w	r3, r0, r8
 8002244:	ebb6 4f11 	cmp.w	r6, r1, lsr #16
 8002248:	ea4f 00a3 	mov.w	r0, r3, asr #2
 800224c:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8002250:	6120      	str	r0, [r4, #16]
 8002252:	bf08      	it	eq
 8002254:	0409      	lsleq	r1, r1, #16
 8002256:	bf18      	it	ne
 8002258:	2200      	movne	r2, #0
 800225a:	ebb6 6f11 	cmp.w	r6, r1, lsr #24
 800225e:	bf04      	itt	eq
 8002260:	f042 0208 	orreq.w	r2, r2, #8
 8002264:	0209      	lsleq	r1, r1, #8
 8002266:	ebb6 7f11 	cmp.w	r6, r1, lsr #28
 800226a:	bf04      	itt	eq
 800226c:	f042 0204 	orreq.w	r2, r2, #4
 8002270:	0109      	lsleq	r1, r1, #4
 8002272:	ebb6 7f91 	cmp.w	r6, r1, lsr #30
 8002276:	bf04      	itt	eq
 8002278:	f042 0202 	orreq.w	r2, r2, #2
 800227c:	0089      	lsleq	r1, r1, #2
 800227e:	2900      	cmp	r1, #0
 8002280:	db03      	blt.n	800228a <gethex+0x310>
 8002282:	0049      	lsls	r1, r1, #1
 8002284:	bf4c      	ite	mi
 8002286:	3201      	addmi	r2, #1
 8002288:	2220      	movpl	r2, #32
 800228a:	1a99      	subs	r1, r3, r2
 800228c:	2939      	cmp	r1, #57	; 0x39
 800228e:	db17      	blt.n	80022c0 <gethex+0x346>
 8002290:	f1a1 0638 	sub.w	r6, r1, #56	; 0x38
 8002294:	4603      	mov	r3, r0
 8002296:	1172      	asrs	r2, r6, #5
 8002298:	4282      	cmp	r2, r0
 800229a:	dc2a      	bgt.n	80022f2 <gethex+0x378>
 800229c:	da28      	bge.n	80022f0 <gethex+0x376>
 800229e:	f016 031f 	ands.w	r3, r6, #31
 80022a2:	d025      	beq.n	80022f0 <gethex+0x376>
 80022a4:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 80022a8:	46e6      	mov	lr, ip
 80022aa:	f8d5 c014 	ldr.w	ip, [r5, #20]
 80022ae:	fa2c f503 	lsr.w	r5, ip, r3
 80022b2:	fa05 f303 	lsl.w	r3, r5, r3
 80022b6:	4563      	cmp	r3, ip
 80022b8:	46f4      	mov	ip, lr
 80022ba:	4613      	mov	r3, r2
 80022bc:	d019      	beq.n	80022f2 <gethex+0x378>
 80022be:	e022      	b.n	8002306 <gethex+0x38c>
 80022c0:	2938      	cmp	r1, #56	; 0x38
 80022c2:	d105      	bne.n	80022d0 <gethex+0x356>
 80022c4:	9e02      	ldr	r6, [sp, #8]
 80022c6:	f04f 0900 	mov.w	r9, #0
 80022ca:	2e7f      	cmp	r6, #127	; 0x7f
 80022cc:	da59      	bge.n	8002382 <gethex+0x408>
 80022ce:	e062      	b.n	8002396 <gethex+0x41c>
 80022d0:	f1c1 0638 	rsb	r6, r1, #56	; 0x38
 80022d4:	4620      	mov	r0, r4
 80022d6:	4664      	mov	r4, ip
 80022d8:	4631      	mov	r1, r6
 80022da:	f000 fab4 	bl	8002846 <lshift>
 80022de:	46a4      	mov	ip, r4
 80022e0:	4604      	mov	r4, r0
 80022e2:	9802      	ldr	r0, [sp, #8]
 80022e4:	f04f 0900 	mov.w	r9, #0
 80022e8:	f104 0814 	add.w	r8, r4, #20
 80022ec:	1b80      	subs	r0, r0, r6
 80022ee:	e045      	b.n	800237c <gethex+0x402>
 80022f0:	4613      	mov	r3, r2
 80022f2:	eb04 0283 	add.w	r2, r4, r3, lsl #2
 80022f6:	3210      	adds	r2, #16
 80022f8:	1d13      	adds	r3, r2, #4
 80022fa:	4543      	cmp	r3, r8
 80022fc:	d923      	bls.n	8002346 <gethex+0x3cc>
 80022fe:	f852 3904 	ldr.w	r3, [r2], #-4
 8002302:	2b00      	cmp	r3, #0
 8002304:	d0f8      	beq.n	80022f8 <gethex+0x37e>
 8002306:	f1a1 0239 	sub.w	r2, r1, #57	; 0x39
 800230a:	46e2      	mov	sl, ip
 800230c:	f04f 0901 	mov.w	r9, #1
 8002310:	f002 0c1f 	and.w	ip, r2, #31
 8002314:	1152      	asrs	r2, r2, #5
 8002316:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 800231a:	fa09 f30c 	lsl.w	r3, r9, ip
 800231e:	696d      	ldr	r5, [r5, #20]
 8002320:	421d      	tst	r5, r3
 8002322:	d024      	beq.n	800236e <gethex+0x3f4>
 8002324:	293a      	cmp	r1, #58	; 0x3a
 8002326:	db20      	blt.n	800236a <gethex+0x3f0>
 8002328:	4282      	cmp	r2, r0
 800232a:	dc11      	bgt.n	8002350 <gethex+0x3d6>
 800232c:	f1bc 0f00 	cmp.w	ip, #0
 8002330:	d00d      	beq.n	800234e <gethex+0x3d4>
 8002332:	4282      	cmp	r2, r0
 8002334:	da0b      	bge.n	800234e <gethex+0x3d4>
 8002336:	fa25 f00c 	lsr.w	r0, r5, ip
 800233a:	fa00 f00c 	lsl.w	r0, r0, ip
 800233e:	42a8      	cmp	r0, r5
 8002340:	4610      	mov	r0, r2
 8002342:	d005      	beq.n	8002350 <gethex+0x3d6>
 8002344:	e00e      	b.n	8002364 <gethex+0x3ea>
 8002346:	46e2      	mov	sl, ip
 8002348:	f04f 0900 	mov.w	r9, #0
 800234c:	e00f      	b.n	800236e <gethex+0x3f4>
 800234e:	4610      	mov	r0, r2
 8002350:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002354:	3010      	adds	r0, #16
 8002356:	1d01      	adds	r1, r0, #4
 8002358:	4541      	cmp	r1, r8
 800235a:	d906      	bls.n	800236a <gethex+0x3f0>
 800235c:	f850 1904 	ldr.w	r1, [r0], #-4
 8002360:	2900      	cmp	r1, #0
 8002362:	d0f8      	beq.n	8002356 <gethex+0x3dc>
 8002364:	f04f 0903 	mov.w	r9, #3
 8002368:	e001      	b.n	800236e <gethex+0x3f4>
 800236a:	f04f 0902 	mov.w	r9, #2
 800236e:	4620      	mov	r0, r4
 8002370:	4631      	mov	r1, r6
 8002372:	f000 fa01 	bl	8002778 <rshift>
 8002376:	9802      	ldr	r0, [sp, #8]
 8002378:	46d4      	mov	ip, sl
 800237a:	4430      	add	r0, r6
 800237c:	4606      	mov	r6, r0
 800237e:	2e7f      	cmp	r6, #127	; 0x7f
 8002380:	db09      	blt.n	8002396 <gethex+0x41c>
 8002382:	b364      	cbz	r4, 80023de <gethex+0x464>
 8002384:	6860      	ldr	r0, [r4, #4]
 8002386:	2808      	cmp	r0, #8
 8002388:	db20      	blt.n	80023cc <gethex+0x452>
 800238a:	4620      	mov	r0, r4
 800238c:	4664      	mov	r4, ip
 800238e:	f002 faa5 	bl	80048dc <free>
 8002392:	46a4      	mov	ip, r4
 8002394:	e023      	b.n	80023de <gethex+0x464>
 8002396:	f116 0fba 	cmn.w	r6, #186	; 0xba
 800239a:	dc10      	bgt.n	80023be <gethex+0x444>
 800239c:	f06f 00b8 	mvn.w	r0, #184	; 0xb8
 80023a0:	1b86      	subs	r6, r0, r6
 80023a2:	2e38      	cmp	r6, #56	; 0x38
 80023a4:	db26      	blt.n	80023f4 <gethex+0x47a>
 80023a6:	2c00      	cmp	r4, #0
 80023a8:	f43f aebc 	beq.w	8002124 <gethex+0x1aa>
 80023ac:	6860      	ldr	r0, [r4, #4]
 80023ae:	2808      	cmp	r0, #8
 80023b0:	db3f      	blt.n	8002432 <gethex+0x4b8>
 80023b2:	4620      	mov	r0, r4
 80023b4:	4664      	mov	r4, ip
 80023b6:	f002 fa91 	bl	80048dc <free>
 80023ba:	46a4      	mov	ip, r4
 80023bc:	e6b2      	b.n	8002124 <gethex+0x1aa>
 80023be:	f04f 0b18 	mov.w	fp, #24
 80023c2:	2500      	movs	r5, #0
 80023c4:	f1b9 0f00 	cmp.w	r9, #0
 80023c8:	d173      	bne.n	80024b2 <gethex+0x538>
 80023ca:	e0ec      	b.n	80025a6 <gethex+0x62c>
 80023cc:	f640 2104 	movw	r1, #2564	; 0xa04
 80023d0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023d4:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80023d8:	6022      	str	r2, [r4, #0]
 80023da:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 80023de:	4664      	mov	r4, ip
 80023e0:	f002 fa26 	bl	8004830 <__errno>
 80023e4:	2122      	movs	r1, #34	; 0x22
 80023e6:	6001      	str	r1, [r0, #0]
 80023e8:	f44f 40ff 	mov.w	r0, #32640	; 0x7f80
 80023ec:	2100      	movs	r1, #0
 80023ee:	e9c4 1000 	strd	r1, r0, [r4]
 80023f2:	e6a0      	b.n	8002136 <gethex+0x1bc>
 80023f4:	f1b9 0f00 	cmp.w	r9, #0
 80023f8:	f1a6 0a01 	sub.w	sl, r6, #1
 80023fc:	f04f 0b01 	mov.w	fp, #1
 8002400:	f04f 0901 	mov.w	r9, #1
 8002404:	d133      	bne.n	800246e <gethex+0x4f4>
 8002406:	2e02      	cmp	r6, #2
 8002408:	db2d      	blt.n	8002466 <gethex+0x4ec>
 800240a:	6921      	ldr	r1, [r4, #16]
 800240c:	ea4f 106a 	mov.w	r0, sl, asr #5
 8002410:	4288      	cmp	r0, r1
 8002412:	dc19      	bgt.n	8002448 <gethex+0x4ce>
 8002414:	da17      	bge.n	8002446 <gethex+0x4cc>
 8002416:	f01a 011f 	ands.w	r1, sl, #31
 800241a:	d014      	beq.n	8002446 <gethex+0x4cc>
 800241c:	eb04 0280 	add.w	r2, r4, r0, lsl #2
 8002420:	6952      	ldr	r2, [r2, #20]
 8002422:	fa22 f301 	lsr.w	r3, r2, r1
 8002426:	fa03 f101 	lsl.w	r1, r3, r1
 800242a:	4291      	cmp	r1, r2
 800242c:	4601      	mov	r1, r0
 800242e:	d00b      	beq.n	8002448 <gethex+0x4ce>
 8002430:	e016      	b.n	8002460 <gethex+0x4e6>
 8002432:	f640 2104 	movw	r1, #2564	; 0xa04
 8002436:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800243a:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800243e:	6022      	str	r2, [r4, #0]
 8002440:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 8002444:	e66e      	b.n	8002124 <gethex+0x1aa>
 8002446:	4601      	mov	r1, r0
 8002448:	eb04 0181 	add.w	r1, r4, r1, lsl #2
 800244c:	f104 0014 	add.w	r0, r4, #20
 8002450:	3110      	adds	r1, #16
 8002452:	1d0a      	adds	r2, r1, #4
 8002454:	4282      	cmp	r2, r0
 8002456:	d906      	bls.n	8002466 <gethex+0x4ec>
 8002458:	f851 2904 	ldr.w	r2, [r1], #-4
 800245c:	2a00      	cmp	r2, #0
 800245e:	d0f8      	beq.n	8002452 <gethex+0x4d8>
 8002460:	f04f 0901 	mov.w	r9, #1
 8002464:	e001      	b.n	800246a <gethex+0x4f0>
 8002466:	f04f 0900 	mov.w	r9, #0
 800246a:	f04f 0b01 	mov.w	fp, #1
 800246e:	f8cd c004 	str.w	ip, [sp, #4]
 8002472:	ea4f 106a 	mov.w	r0, sl, asr #5
 8002476:	4631      	mov	r1, r6
 8002478:	f858 5020 	ldr.w	r5, [r8, r0, lsl #2]
 800247c:	4620      	mov	r0, r4
 800247e:	f000 f97b 	bl	8002778 <rshift>
 8002482:	f00a 001f 	and.w	r0, sl, #31
 8002486:	f1c6 0138 	rsb	r1, r6, #56	; 0x38
 800248a:	f06f 06b8 	mvn.w	r6, #184	; 0xb8
 800248e:	fa0b f000 	lsl.w	r0, fp, r0
 8002492:	f001 0b1f 	and.w	fp, r1, #31
 8002496:	4205      	tst	r5, r0
 8002498:	f04f 0501 	mov.w	r5, #1
 800249c:	d004      	beq.n	80024a8 <gethex+0x52e>
 800249e:	f8dd c004 	ldr.w	ip, [sp, #4]
 80024a2:	f049 0902 	orr.w	r9, r9, #2
 80024a6:	e004      	b.n	80024b2 <gethex+0x538>
 80024a8:	f8dd c004 	ldr.w	ip, [sp, #4]
 80024ac:	f1b9 0f00 	cmp.w	r9, #0
 80024b0:	d079      	beq.n	80025a6 <gethex+0x62c>
 80024b2:	9804      	ldr	r0, [sp, #16]
 80024b4:	2803      	cmp	r0, #3
 80024b6:	d012      	beq.n	80024de <gethex+0x564>
 80024b8:	2802      	cmp	r0, #2
 80024ba:	d00b      	beq.n	80024d4 <gethex+0x55a>
 80024bc:	2801      	cmp	r0, #1
 80024be:	d172      	bne.n	80025a6 <gethex+0x62c>
 80024c0:	ea5f 7089 	movs.w	r0, r9, lsl #30
 80024c4:	d56f      	bpl.n	80025a6 <gethex+0x62c>
 80024c6:	f8d8 0000 	ldr.w	r0, [r8]
 80024ca:	ea40 0009 	orr.w	r0, r0, r9
 80024ce:	07c0      	lsls	r0, r0, #31
 80024d0:	d108      	bne.n	80024e4 <gethex+0x56a>
 80024d2:	e068      	b.n	80025a6 <gethex+0x62c>
 80024d4:	9803      	ldr	r0, [sp, #12]
 80024d6:	f1c0 0001 	rsb	r0, r0, #1
 80024da:	b918      	cbnz	r0, 80024e4 <gethex+0x56a>
 80024dc:	e063      	b.n	80025a6 <gethex+0x62c>
 80024de:	9803      	ldr	r0, [sp, #12]
 80024e0:	2800      	cmp	r0, #0
 80024e2:	d060      	beq.n	80025a6 <gethex+0x62c>
 80024e4:	f8d4 8010 	ldr.w	r8, [r4, #16]
 80024e8:	f104 0014 	add.w	r0, r4, #20
 80024ec:	2200      	movs	r2, #0
 80024ee:	eb00 0188 	add.w	r1, r0, r8, lsl #2
 80024f2:	6803      	ldr	r3, [r0, #0]
 80024f4:	3301      	adds	r3, #1
 80024f6:	d11c      	bne.n	8002532 <gethex+0x5b8>
 80024f8:	f840 2b04 	str.w	r2, [r0], #4
 80024fc:	4288      	cmp	r0, r1
 80024fe:	d3f8      	bcc.n	80024f2 <gethex+0x578>
 8002500:	68a0      	ldr	r0, [r4, #8]
 8002502:	4580      	cmp	r8, r0
 8002504:	db47      	blt.n	8002596 <gethex+0x61c>
 8002506:	6860      	ldr	r0, [r4, #4]
 8002508:	e9cd b601 	strd	fp, r6, [sp, #4]
 800250c:	f100 0a01 	add.w	sl, r0, #1
 8002510:	f1ba 0f07 	cmp.w	sl, #7
 8002514:	dc10      	bgt.n	8002538 <gethex+0x5be>
 8002516:	f640 2004 	movw	r0, #2564	; 0xa04
 800251a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800251e:	f850 602a 	ldr.w	r6, [r0, sl, lsl #2]
 8002522:	2e00      	cmp	r6, #0
 8002524:	f000 80d0 	beq.w	80026c8 <gethex+0x74e>
 8002528:	6831      	ldr	r1, [r6, #0]
 800252a:	46e3      	mov	fp, ip
 800252c:	f840 102a 	str.w	r1, [r0, sl, lsl #2]
 8002530:	e010      	b.n	8002554 <gethex+0x5da>
 8002532:	6003      	str	r3, [r0, #0]
 8002534:	bbbd      	cbnz	r5, 80025a6 <gethex+0x62c>
 8002536:	e04e      	b.n	80025d6 <gethex+0x65c>
 8002538:	2001      	movs	r0, #1
 800253a:	46e3      	mov	fp, ip
 800253c:	fa00 f90a 	lsl.w	r9, r0, sl
 8002540:	201b      	movs	r0, #27
 8002542:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8002546:	08c0      	lsrs	r0, r0, #3
 8002548:	00c0      	lsls	r0, r0, #3
 800254a:	f002 f9bf 	bl	80048cc <malloc>
 800254e:	4606      	mov	r6, r0
 8002550:	e9c6 a901 	strd	sl, r9, [r6, #4]
 8002554:	2100      	movs	r1, #0
 8002556:	4630      	mov	r0, r6
 8002558:	2208      	movs	r2, #8
 800255a:	6131      	str	r1, [r6, #16]
 800255c:	f840 1f0c 	str.w	r1, [r0, #12]!
 8002560:	6921      	ldr	r1, [r4, #16]
 8002562:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8002566:	f104 010c 	add.w	r1, r4, #12
 800256a:	f002 f95f 	bl	800482c <__aeabi_memcpy>
 800256e:	6860      	ldr	r0, [r4, #4]
 8002570:	2808      	cmp	r0, #8
 8002572:	db03      	blt.n	800257c <gethex+0x602>
 8002574:	4620      	mov	r0, r4
 8002576:	f002 f9b1 	bl	80048dc <free>
 800257a:	e008      	b.n	800258e <gethex+0x614>
 800257c:	f640 2104 	movw	r1, #2564	; 0xa04
 8002580:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002584:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8002588:	6022      	str	r2, [r4, #0]
 800258a:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 800258e:	4634      	mov	r4, r6
 8002590:	46dc      	mov	ip, fp
 8002592:	e9dd b601 	ldrd	fp, r6, [sp, #4]
 8002596:	6920      	ldr	r0, [r4, #16]
 8002598:	1c41      	adds	r1, r0, #1
 800259a:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 800259e:	6121      	str	r1, [r4, #16]
 80025a0:	2101      	movs	r1, #1
 80025a2:	6141      	str	r1, [r0, #20]
 80025a4:	b1bd      	cbz	r5, 80025d6 <gethex+0x65c>
 80025a6:	2c00      	cmp	r4, #0
 80025a8:	f43f adc5 	beq.w	8002136 <gethex+0x1bc>
 80025ac:	6860      	ldr	r0, [r4, #4]
 80025ae:	2808      	cmp	r0, #8
 80025b0:	db07      	blt.n	80025c2 <gethex+0x648>
 80025b2:	4620      	mov	r0, r4
 80025b4:	b005      	add	sp, #20
 80025b6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80025ba:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80025be:	f002 b98d 	b.w	80048dc <free>
 80025c2:	f640 2104 	movw	r1, #2564	; 0xa04
 80025c6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80025ca:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80025ce:	6022      	str	r2, [r4, #0]
 80025d0:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 80025d4:	e5af      	b.n	8002136 <gethex+0x1bc>
 80025d6:	6920      	ldr	r0, [r4, #16]
 80025d8:	4540      	cmp	r0, r8
 80025da:	dc3e      	bgt.n	800265a <gethex+0x6e0>
 80025dc:	f1bb 0f00 	cmp.w	fp, #0
 80025e0:	d0e4      	beq.n	80025ac <gethex+0x632>
 80025e2:	eb04 0188 	add.w	r1, r4, r8, lsl #2
 80025e6:	46e1      	mov	r9, ip
 80025e8:	f04f 0c00 	mov.w	ip, #0
 80025ec:	46b2      	mov	sl, r6
 80025ee:	f8d1 e010 	ldr.w	lr, [r1, #16]
 80025f2:	2110      	movs	r1, #16
 80025f4:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 80025f8:	4673      	mov	r3, lr
 80025fa:	bf08      	it	eq
 80025fc:	041b      	lsleq	r3, r3, #16
 80025fe:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 8002602:	461e      	mov	r6, r3
 8002604:	bf08      	it	eq
 8002606:	0236      	lsleq	r6, r6, #8
 8002608:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 800260c:	4635      	mov	r5, r6
 800260e:	bf08      	it	eq
 8002610:	012d      	lsleq	r5, r5, #4
 8002612:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 8002616:	462a      	mov	r2, r5
 8002618:	bf08      	it	eq
 800261a:	0092      	lsleq	r2, r2, #2
 800261c:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 8002620:	bf18      	it	ne
 8002622:	2100      	movne	r1, #0
 8002624:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 8002628:	bf08      	it	eq
 800262a:	f041 0108 	orreq.w	r1, r1, #8
 800262e:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 8002632:	bf08      	it	eq
 8002634:	f041 0104 	orreq.w	r1, r1, #4
 8002638:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 800263c:	bf08      	it	eq
 800263e:	f041 0102 	orreq.w	r1, r1, #2
 8002642:	2a00      	cmp	r2, #0
 8002644:	db03      	blt.n	800264e <gethex+0x6d4>
 8002646:	0052      	lsls	r2, r2, #1
 8002648:	bf4c      	ite	mi
 800264a:	3101      	addmi	r1, #1
 800264c:	2120      	movpl	r1, #32
 800264e:	f1cb 0220 	rsb	r2, fp, #32
 8002652:	46cc      	mov	ip, r9
 8002654:	4656      	mov	r6, sl
 8002656:	4291      	cmp	r1, r2
 8002658:	daa5      	bge.n	80025a6 <gethex+0x62c>
 800265a:	f104 0114 	add.w	r1, r4, #20
 800265e:	2801      	cmp	r0, #1
 8002660:	460b      	mov	r3, r1
 8002662:	db25      	blt.n	80026b0 <gethex+0x736>
 8002664:	4623      	mov	r3, r4
 8002666:	2801      	cmp	r0, #1
 8002668:	f853 2f14 	ldr.w	r2, [r3, #20]!
 800266c:	ea4f 0252 	mov.w	r2, r2, lsr #1
 8002670:	d101      	bne.n	8002676 <gethex+0x6fc>
 8002672:	4608      	mov	r0, r1
 8002674:	e016      	b.n	80026a4 <gethex+0x72a>
 8002676:	46b6      	mov	lr, r6
 8002678:	f06f 0604 	mvn.w	r6, #4
 800267c:	eb03 0380 	add.w	r3, r3, r0, lsl #2
 8002680:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002684:	f104 0618 	add.w	r6, r4, #24
 8002688:	0880      	lsrs	r0, r0, #2
 800268a:	6835      	ldr	r5, [r6, #0]
 800268c:	ea42 72c5 	orr.w	r2, r2, r5, lsl #31
 8002690:	f846 2c04 	str.w	r2, [r6, #-4]
 8002694:	3604      	adds	r6, #4
 8002696:	086a      	lsrs	r2, r5, #1
 8002698:	429e      	cmp	r6, r3
 800269a:	d3f6      	bcc.n	800268a <gethex+0x710>
 800269c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80026a0:	4676      	mov	r6, lr
 80026a2:	3018      	adds	r0, #24
 80026a4:	4603      	mov	r3, r0
 80026a6:	2a00      	cmp	r2, #0
 80026a8:	f843 2b04 	str.w	r2, [r3], #4
 80026ac:	bf08      	it	eq
 80026ae:	4603      	moveq	r3, r0
 80026b0:	1a5a      	subs	r2, r3, r1
 80026b2:	1090      	asrs	r0, r2, #2
 80026b4:	6120      	str	r0, [r4, #16]
 80026b6:	2000      	movs	r0, #0
 80026b8:	ebb0 0fa2 	cmp.w	r0, r2, asr #2
 80026bc:	bf08      	it	eq
 80026be:	6008      	streq	r0, [r1, #0]
 80026c0:	2e7d      	cmp	r6, #125	; 0x7d
 80026c2:	f73f ae5f 	bgt.w	8002384 <gethex+0x40a>
 80026c6:	e771      	b.n	80025ac <gethex+0x632>
 80026c8:	f240 0128 	movw	r1, #40	; 0x28
 80026cc:	f640 2228 	movw	r2, #2600	; 0xa28
 80026d0:	2001      	movs	r0, #1
 80026d2:	46e3      	mov	fp, ip
 80026d4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80026d8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80026dc:	fa00 f90a 	lsl.w	r9, r0, sl
 80026e0:	201b      	movs	r0, #27
 80026e2:	680e      	ldr	r6, [r1, #0]
 80026e4:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 80026e8:	1ab2      	subs	r2, r6, r2
 80026ea:	10d2      	asrs	r2, r2, #3
 80026ec:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80026f0:	08c0      	lsrs	r0, r0, #3
 80026f2:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80026f6:	f63f af27 	bhi.w	8002548 <gethex+0x5ce>
 80026fa:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 80026fe:	6008      	str	r0, [r1, #0]
 8002700:	e726      	b.n	8002550 <gethex+0x5d6>

08002702 <Balloc>:
 8002702:	b5b0      	push	{r4, r5, r7, lr}
 8002704:	af02      	add	r7, sp, #8
 8002706:	4604      	mov	r4, r0
 8002708:	2c07      	cmp	r4, #7
 800270a:	dc0a      	bgt.n	8002722 <Balloc+0x20>
 800270c:	f640 2104 	movw	r1, #2564	; 0xa04
 8002710:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002714:	f851 0024 	ldr.w	r0, [r1, r4, lsl #2]
 8002718:	b198      	cbz	r0, 8002742 <Balloc+0x40>
 800271a:	6802      	ldr	r2, [r0, #0]
 800271c:	f841 2024 	str.w	r2, [r1, r4, lsl #2]
 8002720:	e00b      	b.n	800273a <Balloc+0x38>
 8002722:	2001      	movs	r0, #1
 8002724:	fa00 f504 	lsl.w	r5, r0, r4
 8002728:	201b      	movs	r0, #27
 800272a:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 800272e:	08c1      	lsrs	r1, r0, #3
 8002730:	00c8      	lsls	r0, r1, #3
 8002732:	f002 f8cb 	bl	80048cc <malloc>
 8002736:	e9c0 4501 	strd	r4, r5, [r0, #4]
 800273a:	2100      	movs	r1, #0
 800273c:	e9c0 1103 	strd	r1, r1, [r0, #12]
 8002740:	bdb0      	pop	{r4, r5, r7, pc}
 8002742:	f240 0228 	movw	r2, #40	; 0x28
 8002746:	2001      	movs	r0, #1
 8002748:	f640 2328 	movw	r3, #2600	; 0xa28
 800274c:	fa00 f504 	lsl.w	r5, r0, r4
 8002750:	201b      	movs	r0, #27
 8002752:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002756:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800275a:	eb00 0185 	add.w	r1, r0, r5, lsl #2
 800275e:	6810      	ldr	r0, [r2, #0]
 8002760:	1ac3      	subs	r3, r0, r3
 8002762:	10db      	asrs	r3, r3, #3
 8002764:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 8002768:	08c9      	lsrs	r1, r1, #3
 800276a:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 800276e:	d8df      	bhi.n	8002730 <Balloc+0x2e>
 8002770:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 8002774:	6011      	str	r1, [r2, #0]
 8002776:	e7de      	b.n	8002736 <Balloc+0x34>

08002778 <rshift>:
 8002778:	b5f0      	push	{r4, r5, r6, r7, lr}
 800277a:	af03      	add	r7, sp, #12
 800277c:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8002780:	6904      	ldr	r4, [r0, #16]
 8002782:	ea4f 1e61 	mov.w	lr, r1, asr #5
 8002786:	f100 0c14 	add.w	ip, r0, #20
 800278a:	4662      	mov	r2, ip
 800278c:	45a6      	cmp	lr, r4
 800278e:	da4d      	bge.n	800282c <rshift+0xb4>
 8002790:	eb0c 0384 	add.w	r3, ip, r4, lsl #2
 8002794:	f011 091f 	ands.w	r9, r1, #31
 8002798:	d024      	beq.n	80027e4 <rshift+0x6c>
 800279a:	eb0c 058e 	add.w	r5, ip, lr, lsl #2
 800279e:	f855 1b04 	ldr.w	r1, [r5], #4
 80027a2:	fa21 f109 	lsr.w	r1, r1, r9
 80027a6:	429d      	cmp	r5, r3
 80027a8:	d239      	bcs.n	800281e <rshift+0xa6>
 80027aa:	f06f 0604 	mvn.w	r6, #4
 80027ae:	f1c9 0520 	rsb	r5, r9, #32
 80027b2:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 80027b6:	f100 0618 	add.w	r6, r0, #24
 80027ba:	eba4 048e 	sub.w	r4, r4, lr, lsl #2
 80027be:	f024 0403 	bic.w	r4, r4, #3
 80027c2:	eb06 0804 	add.w	r8, r6, r4
 80027c6:	ea4f 048e 	mov.w	r4, lr, lsl #2
 80027ca:	59a2      	ldr	r2, [r4, r6]
 80027cc:	40aa      	lsls	r2, r5
 80027ce:	4311      	orrs	r1, r2
 80027d0:	f846 1c04 	str.w	r1, [r6, #-4]
 80027d4:	59a1      	ldr	r1, [r4, r6]
 80027d6:	3604      	adds	r6, #4
 80027d8:	1932      	adds	r2, r6, r4
 80027da:	429a      	cmp	r2, r3
 80027dc:	fa21 f109 	lsr.w	r1, r1, r9
 80027e0:	d3f3      	bcc.n	80027ca <rshift+0x52>
 80027e2:	e01d      	b.n	8002820 <rshift+0xa8>
 80027e4:	eb00 0484 	add.w	r4, r0, r4, lsl #2
 80027e8:	f100 0118 	add.w	r1, r0, #24
 80027ec:	4666      	mov	r6, ip
 80027ee:	eb01 028e 	add.w	r2, r1, lr, lsl #2
 80027f2:	3414      	adds	r4, #20
 80027f4:	42a2      	cmp	r2, r4
 80027f6:	bf88      	it	hi
 80027f8:	4614      	movhi	r4, r2
 80027fa:	f06f 0214 	mvn.w	r2, #20
 80027fe:	1a12      	subs	r2, r2, r0
 8002800:	eba2 028e 	sub.w	r2, r2, lr, lsl #2
 8002804:	4422      	add	r2, r4
 8002806:	f022 0203 	bic.w	r2, r2, #3
 800280a:	440a      	add	r2, r1
 800280c:	ea4f 018e 	mov.w	r1, lr, lsl #2
 8002810:	598d      	ldr	r5, [r1, r6]
 8002812:	f846 5b04 	str.w	r5, [r6], #4
 8002816:	1875      	adds	r5, r6, r1
 8002818:	429d      	cmp	r5, r3
 800281a:	d3f9      	bcc.n	8002810 <rshift+0x98>
 800281c:	e006      	b.n	800282c <rshift+0xb4>
 800281e:	46e0      	mov	r8, ip
 8002820:	4642      	mov	r2, r8
 8002822:	2900      	cmp	r1, #0
 8002824:	f842 1b04 	str.w	r1, [r2], #4
 8002828:	bf08      	it	eq
 800282a:	4642      	moveq	r2, r8
 800282c:	eba2 010c 	sub.w	r1, r2, ip
 8002830:	108a      	asrs	r2, r1, #2
 8002832:	6102      	str	r2, [r0, #16]
 8002834:	2000      	movs	r0, #0
 8002836:	ebb0 0fa1 	cmp.w	r0, r1, asr #2
 800283a:	bf08      	it	eq
 800283c:	f8cc 0000 	streq.w	r0, [ip]
 8002840:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002844:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002846 <lshift>:
 8002846:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002848:	af03      	add	r7, sp, #12
 800284a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800284e:	b081      	sub	sp, #4
 8002850:	4682      	mov	sl, r0
 8002852:	4689      	mov	r9, r1
 8002854:	e9da 0101 	ldrd	r0, r1, [sl, #4]
 8002858:	f8da 2010 	ldr.w	r2, [sl, #16]
 800285c:	ea4f 1669 	mov.w	r6, r9, asr #5
 8002860:	eb02 1b69 	add.w	fp, r2, r9, asr #5
 8002864:	458b      	cmp	fp, r1
 8002866:	db06      	blt.n	8002876 <lshift+0x30>
 8002868:	004a      	lsls	r2, r1, #1
 800286a:	ebbb 0f41 	cmp.w	fp, r1, lsl #1
 800286e:	f100 0001 	add.w	r0, r0, #1
 8002872:	4611      	mov	r1, r2
 8002874:	daf8      	bge.n	8002868 <lshift+0x22>
 8002876:	f7ff ff44 	bl	8002702 <Balloc>
 800287a:	4680      	mov	r8, r0
 800287c:	2e01      	cmp	r6, #1
 800287e:	f108 0014 	add.w	r0, r8, #20
 8002882:	db05      	blt.n	8002890 <lshift+0x4a>
 8002884:	00b1      	lsls	r1, r6, #2
 8002886:	f001 ffcd 	bl	8004824 <__aeabi_memclr>
 800288a:	eb08 0086 	add.w	r0, r8, r6, lsl #2
 800288e:	3014      	adds	r0, #20
 8002890:	f8da 1010 	ldr.w	r1, [sl, #16]
 8002894:	f10a 0214 	add.w	r2, sl, #20
 8002898:	f10b 0e01 	add.w	lr, fp, #1
 800289c:	f019 091f 	ands.w	r9, r9, #31
 80028a0:	eb02 0381 	add.w	r3, r2, r1, lsl #2
 80028a4:	d025      	beq.n	80028f2 <lshift+0xac>
 80028a6:	eb0a 0181 	add.w	r1, sl, r1, lsl #2
 80028aa:	f10a 0418 	add.w	r4, sl, #24
 80028ae:	f06f 0514 	mvn.w	r5, #20
 80028b2:	3114      	adds	r1, #20
 80028b4:	eba5 050a 	sub.w	r5, r5, sl
 80028b8:	42a1      	cmp	r1, r4
 80028ba:	bf88      	it	hi
 80028bc:	460c      	movhi	r4, r1
 80028be:	1961      	adds	r1, r4, r5
 80028c0:	2501      	movs	r5, #1
 80028c2:	2400      	movs	r4, #0
 80028c4:	eb05 0c91 	add.w	ip, r5, r1, lsr #2
 80028c8:	f1c9 0120 	rsb	r1, r9, #32
 80028cc:	4605      	mov	r5, r0
 80028ce:	6816      	ldr	r6, [r2, #0]
 80028d0:	fa06 f609 	lsl.w	r6, r6, r9
 80028d4:	4334      	orrs	r4, r6
 80028d6:	f845 4b04 	str.w	r4, [r5], #4
 80028da:	f852 4b04 	ldr.w	r4, [r2], #4
 80028de:	40cc      	lsrs	r4, r1
 80028e0:	429a      	cmp	r2, r3
 80028e2:	d3f4      	bcc.n	80028ce <lshift+0x88>
 80028e4:	2c00      	cmp	r4, #0
 80028e6:	f840 402c 	str.w	r4, [r0, ip, lsl #2]
 80028ea:	bf18      	it	ne
 80028ec:	f10b 0e02 	addne.w	lr, fp, #2
 80028f0:	e005      	b.n	80028fe <lshift+0xb8>
 80028f2:	f852 1b04 	ldr.w	r1, [r2], #4
 80028f6:	f840 1b04 	str.w	r1, [r0], #4
 80028fa:	429a      	cmp	r2, r3
 80028fc:	d3f9      	bcc.n	80028f2 <lshift+0xac>
 80028fe:	f1ae 0001 	sub.w	r0, lr, #1
 8002902:	f8c8 0010 	str.w	r0, [r8, #16]
 8002906:	4650      	mov	r0, sl
 8002908:	f000 f805 	bl	8002916 <Bfree>
 800290c:	4640      	mov	r0, r8
 800290e:	b001      	add	sp, #4
 8002910:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002914:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002916 <Bfree>:
 8002916:	2800      	cmp	r0, #0
 8002918:	bf08      	it	eq
 800291a:	4770      	bxeq	lr
 800291c:	6841      	ldr	r1, [r0, #4]
 800291e:	2908      	cmp	r1, #8
 8002920:	bfa8      	it	ge
 8002922:	f001 bfdb 	bge.w	80048dc <free>
 8002926:	f640 2204 	movw	r2, #2564	; 0xa04
 800292a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800292e:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 8002932:	6003      	str	r3, [r0, #0]
 8002934:	f842 0021 	str.w	r0, [r2, r1, lsl #2]
 8002938:	4770      	bx	lr
 800293a:	0000      	movs	r0, r0
 800293c:	0000      	movs	r0, r0
	...

08002940 <strtod>:
 8002940:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002942:	af03      	add	r7, sp, #12
 8002944:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002948:	b081      	sub	sp, #4
 800294a:	ed2d 8b10 	vpush	{d8-d15}
 800294e:	b098      	sub	sp, #96	; 0x60
 8002950:	4689      	mov	r9, r1
 8002952:	2100      	movs	r1, #0
 8002954:	f100 0b01 	add.w	fp, r0, #1
 8002958:	e9cd 110c 	strd	r1, r1, [sp, #48]	; 0x30
 800295c:	f1ab 0101 	sub.w	r1, fp, #1
 8002960:	910f      	str	r1, [sp, #60]	; 0x3c
 8002962:	f81b 6c01 	ldrb.w	r6, [fp, #-1]
 8002966:	2e2d      	cmp	r6, #45	; 0x2d
 8002968:	d834      	bhi.n	80029d4 <strtod+0x94>
 800296a:	e8df f016 	tbh	[pc, r6, lsl #1]
 800296e:	01f6      	.short	0x01f6
 8002970:	00330033 	.word	0x00330033
 8002974:	00330033 	.word	0x00330033
 8002978:	00330033 	.word	0x00330033
 800297c:	00330033 	.word	0x00330033
 8002980:	002e002e 	.word	0x002e002e
 8002984:	002e002e 	.word	0x002e002e
 8002988:	0033002e 	.word	0x0033002e
 800298c:	00330033 	.word	0x00330033
 8002990:	00330033 	.word	0x00330033
 8002994:	00330033 	.word	0x00330033
 8002998:	00330033 	.word	0x00330033
 800299c:	00330033 	.word	0x00330033
 80029a0:	00330033 	.word	0x00330033
 80029a4:	00330033 	.word	0x00330033
 80029a8:	00330033 	.word	0x00330033
 80029ac:	002e0033 	.word	0x002e0033
 80029b0:	00330033 	.word	0x00330033
 80029b4:	00330033 	.word	0x00330033
 80029b8:	00330033 	.word	0x00330033
 80029bc:	00330033 	.word	0x00330033
 80029c0:	00330033 	.word	0x00330033
 80029c4:	00330031 	.word	0x00330031
 80029c8:	0036      	.short	0x0036
 80029ca:	f10b 0b01 	add.w	fp, fp, #1
 80029ce:	e7c5      	b.n	800295c <strtod+0x1c>
 80029d0:	2300      	movs	r3, #0
 80029d2:	e003      	b.n	80029dc <strtod+0x9c>
 80029d4:	2300      	movs	r3, #0
 80029d6:	468b      	mov	fp, r1
 80029d8:	e007      	b.n	80029ea <strtod+0xaa>
 80029da:	2301      	movs	r3, #1
 80029dc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80029e0:	f89b 6000 	ldrb.w	r6, [fp]
 80029e4:	2e00      	cmp	r6, #0
 80029e6:	f000 81b8 	beq.w	8002d5a <strtod+0x41a>
 80029ea:	2e30      	cmp	r6, #48	; 0x30
 80029ec:	9308      	str	r3, [sp, #32]
 80029ee:	d10b      	bne.n	8002a08 <strtod+0xc8>
 80029f0:	f89b 1001 	ldrb.w	r1, [fp, #1]
 80029f4:	f041 0120 	orr.w	r1, r1, #32
 80029f8:	2978      	cmp	r1, #120	; 0x78
 80029fa:	d166      	bne.n	8002aca <strtod+0x18a>
 80029fc:	a80f      	add	r0, sp, #60	; 0x3c
 80029fe:	a90c      	add	r1, sp, #48	; 0x30
 8002a00:	2201      	movs	r2, #1
 8002a02:	f7ff faba 	bl	8001f7a <gethex>
 8002a06:	e1ab      	b.n	8002d60 <strtod+0x420>
 8002a08:	f04f 0e00 	mov.w	lr, #0
 8002a0c:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002a10:	2400      	movs	r4, #0
 8002a12:	b2c9      	uxtb	r1, r1
 8002a14:	2909      	cmp	r1, #9
 8002a16:	d830      	bhi.n	8002a7a <strtod+0x13a>
 8002a18:	f04f 0a00 	mov.w	sl, #0
 8002a1c:	2500      	movs	r5, #0
 8002a1e:	2d08      	cmp	r5, #8
 8002a20:	dc06      	bgt.n	8002a30 <strtod+0xf0>
 8002a22:	eb0a 018a 	add.w	r1, sl, sl, lsl #2
 8002a26:	eb06 0141 	add.w	r1, r6, r1, lsl #1
 8002a2a:	f1a1 0a30 	sub.w	sl, r1, #48	; 0x30
 8002a2e:	e007      	b.n	8002a40 <strtod+0x100>
 8002a30:	2d10      	cmp	r5, #16
 8002a32:	bfde      	ittt	le
 8002a34:	eb04 0184 	addle.w	r1, r4, r4, lsl #2
 8002a38:	eb06 0141 	addle.w	r1, r6, r1, lsl #1
 8002a3c:	f1a1 0430 	suble.w	r4, r1, #48	; 0x30
 8002a40:	eb0b 0105 	add.w	r1, fp, r5
 8002a44:	3501      	adds	r5, #1
 8002a46:	1c4a      	adds	r2, r1, #1
 8002a48:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a4a:	784e      	ldrb	r6, [r1, #1]
 8002a4c:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002a50:	b2c9      	uxtb	r1, r1
 8002a52:	290a      	cmp	r1, #10
 8002a54:	d3e3      	bcc.n	8002a1e <strtod+0xde>
 8002a56:	eb0b 0c05 	add.w	ip, fp, r5
 8002a5a:	45dc      	cmp	ip, fp
 8002a5c:	d911      	bls.n	8002a82 <strtod+0x142>
 8002a5e:	2100      	movs	r1, #0
 8002a60:	910b      	str	r1, [sp, #44]	; 0x2c
 8002a62:	4661      	mov	r1, ip
 8002a64:	f811 2d01 	ldrb.w	r2, [r1, #-1]!
 8002a68:	2a30      	cmp	r2, #48	; 0x30
 8002a6a:	d10c      	bne.n	8002a86 <strtod+0x146>
 8002a6c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002a6e:	4559      	cmp	r1, fp
 8002a70:	f102 0201 	add.w	r2, r2, #1
 8002a74:	920b      	str	r2, [sp, #44]	; 0x2c
 8002a76:	d8f5      	bhi.n	8002a64 <strtod+0x124>
 8002a78:	e005      	b.n	8002a86 <strtod+0x146>
 8002a7a:	46dc      	mov	ip, fp
 8002a7c:	f04f 0a00 	mov.w	sl, #0
 8002a80:	2500      	movs	r5, #0
 8002a82:	2100      	movs	r1, #0
 8002a84:	910b      	str	r1, [sp, #44]	; 0x2c
 8002a86:	2e2e      	cmp	r6, #46	; 0x2e
 8002a88:	d118      	bne.n	8002abc <strtod+0x17c>
 8002a8a:	f10c 0301 	add.w	r3, ip, #1
 8002a8e:	f8cd e018 	str.w	lr, [sp, #24]
 8002a92:	ebab 010c 	sub.w	r1, fp, ip
 8002a96:	2d00      	cmp	r5, #0
 8002a98:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a9a:	eba3 020b 	sub.w	r2, r3, fp
 8002a9e:	f89c 6001 	ldrb.w	r6, [ip, #1]
 8002aa2:	eb02 0e01 	add.w	lr, r2, r1
 8002aa6:	f04f 0100 	mov.w	r1, #0
 8002aaa:	950a      	str	r5, [sp, #40]	; 0x28
 8002aac:	f8cd e014 	str.w	lr, [sp, #20]
 8002ab0:	d01a      	beq.n	8002ae8 <strtod+0x1a8>
 8002ab2:	46a8      	mov	r8, r5
 8002ab4:	2200      	movs	r2, #0
 8002ab6:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
 8002aba:	e02f      	b.n	8002b1c <strtod+0x1dc>
 8002abc:	2100      	movs	r1, #0
 8002abe:	2200      	movs	r2, #0
 8002ac0:	46a8      	mov	r8, r5
 8002ac2:	9107      	str	r1, [sp, #28]
 8002ac4:	2100      	movs	r1, #0
 8002ac6:	9205      	str	r2, [sp, #20]
 8002ac8:	e067      	b.n	8002b9a <strtod+0x25a>
 8002aca:	f10b 0101 	add.w	r1, fp, #1
 8002ace:	910f      	str	r1, [sp, #60]	; 0x3c
 8002ad0:	f811 6b01 	ldrb.w	r6, [r1], #1
 8002ad4:	2e30      	cmp	r6, #48	; 0x30
 8002ad6:	d0fa      	beq.n	8002ace <strtod+0x18e>
 8002ad8:	2e00      	cmp	r6, #0
 8002ada:	f000 8141 	beq.w	8002d60 <strtod+0x420>
 8002ade:	f1a1 0b01 	sub.w	fp, r1, #1
 8002ae2:	f04f 0e01 	mov.w	lr, #1
 8002ae6:	e791      	b.n	8002a0c <strtod+0xcc>
 8002ae8:	2e30      	cmp	r6, #48	; 0x30
 8002aea:	d10a      	bne.n	8002b02 <strtod+0x1c2>
 8002aec:	eb0c 0201 	add.w	r2, ip, r1
 8002af0:	3101      	adds	r1, #1
 8002af2:	1c93      	adds	r3, r2, #2
 8002af4:	930f      	str	r3, [sp, #60]	; 0x3c
 8002af6:	7896      	ldrb	r6, [r2, #2]
 8002af8:	2e30      	cmp	r6, #48	; 0x30
 8002afa:	d0f7      	beq.n	8002aec <strtod+0x1ac>
 8002afc:	eb0c 0201 	add.w	r2, ip, r1
 8002b00:	1c53      	adds	r3, r2, #1
 8002b02:	f1a6 0231 	sub.w	r2, r6, #49	; 0x31
 8002b06:	f04f 0800 	mov.w	r8, #0
 8002b0a:	9309      	str	r3, [sp, #36]	; 0x24
 8002b0c:	2a09      	cmp	r2, #9
 8002b0e:	f04f 0200 	mov.w	r2, #0
 8002b12:	d307      	bcc.n	8002b24 <strtod+0x1e4>
 8002b14:	469c      	mov	ip, r3
 8002b16:	2200      	movs	r2, #0
 8002b18:	9207      	str	r2, [sp, #28]
 8002b1a:	e03b      	b.n	8002b94 <strtod+0x254>
 8002b1c:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
 8002b20:	2d09      	cmp	r5, #9
 8002b22:	d832      	bhi.n	8002b8a <strtod+0x24a>
 8002b24:	4645      	mov	r5, r8
 8002b26:	469e      	mov	lr, r3
 8002b28:	f1b6 0830 	subs.w	r8, r6, #48	; 0x30
 8002b2c:	f102 0301 	add.w	r3, r2, #1
 8002b30:	f000 80a3 	beq.w	8002c7a <strtod+0x33a>
 8002b34:	f04f 0c00 	mov.w	ip, #0
 8002b38:	2d09      	cmp	r5, #9
 8002b3a:	4419      	add	r1, r3
 8002b3c:	f105 0301 	add.w	r3, r5, #1
 8002b40:	bfb8      	it	lt
 8002b42:	f04f 0c01 	movlt.w	ip, #1
 8002b46:	2a01      	cmp	r2, #1
 8002b48:	f2c0 809a 	blt.w	8002c80 <strtod+0x340>
 8002b4c:	eb05 0b02 	add.w	fp, r5, r2
 8002b50:	461e      	mov	r6, r3
 8002b52:	ea5f 73cc 	movs.w	r3, ip, lsl #31
 8002b56:	d004      	beq.n	8002b62 <strtod+0x222>
 8002b58:	eb0a 038a 	add.w	r3, sl, sl, lsl #2
 8002b5c:	ea4f 0a43 	mov.w	sl, r3, lsl #1
 8002b60:	e004      	b.n	8002b6c <strtod+0x22c>
 8002b62:	eb04 0384 	add.w	r3, r4, r4, lsl #2
 8002b66:	2e12      	cmp	r6, #18
 8002b68:	bfb8      	it	lt
 8002b6a:	005c      	lsllt	r4, r3, #1
 8002b6c:	2e09      	cmp	r6, #9
 8002b6e:	f04f 0c00 	mov.w	ip, #0
 8002b72:	f106 0301 	add.w	r3, r6, #1
 8002b76:	bfb8      	it	lt
 8002b78:	f04f 0c01 	movlt.w	ip, #1
 8002b7c:	3a01      	subs	r2, #1
 8002b7e:	d1e7      	bne.n	8002b50 <strtod+0x210>
 8002b80:	f10b 0301 	add.w	r3, fp, #1
 8002b84:	2e09      	cmp	r6, #9
 8002b86:	db7d      	blt.n	8002c84 <strtod+0x344>
 8002b88:	e081      	b.n	8002c8e <strtod+0x34e>
 8002b8a:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002b8e:	9107      	str	r1, [sp, #28]
 8002b90:	469c      	mov	ip, r3
 8002b92:	4611      	mov	r1, r2
 8002b94:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002b96:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002b9a:	f046 0220 	orr.w	r2, r6, #32
 8002b9e:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
 8002ba2:	2a65      	cmp	r2, #101	; 0x65
 8002ba4:	d163      	bne.n	8002c6e <strtod+0x32e>
 8002ba6:	ea48 020e 	orr.w	r2, r8, lr
 8002baa:	430a      	orrs	r2, r1
 8002bac:	f000 80d5 	beq.w	8002d5a <strtod+0x41a>
 8002bb0:	f10c 0801 	add.w	r8, ip, #1
 8002bb4:	2200      	movs	r2, #0
 8002bb6:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
 8002bba:	f89c 3001 	ldrb.w	r3, [ip, #1]
 8002bbe:	2b2b      	cmp	r3, #43	; 0x2b
 8002bc0:	d002      	beq.n	8002bc8 <strtod+0x288>
 8002bc2:	2b2d      	cmp	r3, #45	; 0x2d
 8002bc4:	d106      	bne.n	8002bd4 <strtod+0x294>
 8002bc6:	2201      	movs	r2, #1
 8002bc8:	f10c 0802 	add.w	r8, ip, #2
 8002bcc:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
 8002bd0:	f89c 3002 	ldrb.w	r3, [ip, #2]
 8002bd4:	f1a3 0030 	sub.w	r0, r3, #48	; 0x30
 8002bd8:	2809      	cmp	r0, #9
 8002bda:	d868      	bhi.n	8002cae <strtod+0x36e>
 8002bdc:	2b30      	cmp	r3, #48	; 0x30
 8002bde:	d108      	bne.n	8002bf2 <strtod+0x2b2>
 8002be0:	f108 0001 	add.w	r0, r8, #1
 8002be4:	900f      	str	r0, [sp, #60]	; 0x3c
 8002be6:	f810 3b01 	ldrb.w	r3, [r0], #1
 8002bea:	2b30      	cmp	r3, #48	; 0x30
 8002bec:	d0fa      	beq.n	8002be4 <strtod+0x2a4>
 8002bee:	f1a0 0801 	sub.w	r8, r0, #1
 8002bf2:	f1a3 0031 	sub.w	r0, r3, #49	; 0x31
 8002bf6:	2808      	cmp	r0, #8
 8002bf8:	d85b      	bhi.n	8002cb2 <strtod+0x372>
 8002bfa:	f8cd e018 	str.w	lr, [sp, #24]
 8002bfe:	f108 0e01 	add.w	lr, r8, #1
 8002c02:	3b30      	subs	r3, #48	; 0x30
 8002c04:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
 8002c08:	f898 6001 	ldrb.w	r6, [r8, #1]
 8002c0c:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
 8002c10:	b2c0      	uxtb	r0, r0
 8002c12:	2809      	cmp	r0, #9
 8002c14:	d813      	bhi.n	8002c3e <strtod+0x2fe>
 8002c16:	f108 0002 	add.w	r0, r8, #2
 8002c1a:	9204      	str	r2, [sp, #16]
 8002c1c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8002c20:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c22:	005b      	lsls	r3, r3, #1
 8002c24:	fa53 f386 	uxtab	r3, r3, r6
 8002c28:	f810 6b01 	ldrb.w	r6, [r0], #1
 8002c2c:	3b30      	subs	r3, #48	; 0x30
 8002c2e:	f1a6 0230 	sub.w	r2, r6, #48	; 0x30
 8002c32:	b2d2      	uxtb	r2, r2
 8002c34:	2a0a      	cmp	r2, #10
 8002c36:	d3f1      	bcc.n	8002c1c <strtod+0x2dc>
 8002c38:	9a04      	ldr	r2, [sp, #16]
 8002c3a:	f1a0 0e01 	sub.w	lr, r0, #1
 8002c3e:	ebae 0008 	sub.w	r0, lr, r8
 8002c42:	461e      	mov	r6, r3
 8002c44:	2808      	cmp	r0, #8
 8002c46:	f644 601f 	movw	r0, #19999	; 0x4e1f
 8002c4a:	bfc8      	it	gt
 8002c4c:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 8002c50:	4283      	cmp	r3, r0
 8002c52:	bfc8      	it	gt
 8002c54:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 8002c58:	2a00      	cmp	r2, #0
 8002c5a:	bf18      	it	ne
 8002c5c:	4276      	negne	r6, r6
 8002c5e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002c62:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002c66:	f1b8 0f00 	cmp.w	r8, #0
 8002c6a:	d128      	bne.n	8002cbe <strtod+0x37e>
 8002c6c:	e071      	b.n	8002d52 <strtod+0x412>
 8002c6e:	2600      	movs	r6, #0
 8002c70:	4684      	mov	ip, r0
 8002c72:	f1b8 0f00 	cmp.w	r8, #0
 8002c76:	d122      	bne.n	8002cbe <strtod+0x37e>
 8002c78:	e06b      	b.n	8002d52 <strtod+0x412>
 8002c7a:	461a      	mov	r2, r3
 8002c7c:	46a8      	mov	r8, r5
 8002c7e:	e010      	b.n	8002ca2 <strtod+0x362>
 8002c80:	2d08      	cmp	r5, #8
 8002c82:	dc04      	bgt.n	8002c8e <strtod+0x34e>
 8002c84:	eb0a 028a 	add.w	r2, sl, sl, lsl #2
 8002c88:	eb08 0a42 	add.w	sl, r8, r2, lsl #1
 8002c8c:	e005      	b.n	8002c9a <strtod+0x35a>
 8002c8e:	2b11      	cmp	r3, #17
 8002c90:	bfdc      	itt	le
 8002c92:	eb04 0284 	addle.w	r2, r4, r4, lsl #2
 8002c96:	eb08 0442 	addle.w	r4, r8, r2, lsl #1
 8002c9a:	4698      	mov	r8, r3
 8002c9c:	2200      	movs	r2, #0
 8002c9e:	2300      	movs	r3, #0
 8002ca0:	930b      	str	r3, [sp, #44]	; 0x2c
 8002ca2:	f10e 0301 	add.w	r3, lr, #1
 8002ca6:	930f      	str	r3, [sp, #60]	; 0x3c
 8002ca8:	f89e 6001 	ldrb.w	r6, [lr, #1]
 8002cac:	e736      	b.n	8002b1c <strtod+0x1dc>
 8002cae:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8002cb2:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002cb6:	2600      	movs	r6, #0
 8002cb8:	f1b8 0f00 	cmp.w	r8, #0
 8002cbc:	d049      	beq.n	8002d52 <strtod+0x412>
 8002cbe:	4650      	mov	r0, sl
 8002cc0:	f7fd fbe0 	bl	8000484 <__aeabi_ui2d>
 8002cc4:	46ac      	mov	ip, r5
 8002cc6:	ec41 0b10 	vmov	d0, r0, r1
 8002cca:	f1b8 0f11 	cmp.w	r8, #17
 8002cce:	4645      	mov	r5, r8
 8002cd0:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002cd4:	bfa8      	it	ge
 8002cd6:	2511      	movge	r5, #17
 8002cd8:	f1bc 0f00 	cmp.w	ip, #0
 8002cdc:	bf08      	it	eq
 8002cde:	46c4      	moveq	ip, r8
 8002ce0:	2d0a      	cmp	r5, #10
 8002ce2:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
 8002ce6:	db1c      	blt.n	8002d22 <strtod+0x3e2>
 8002ce8:	f649 0218 	movw	r2, #38936	; 0x9818
 8002cec:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002cf0:	eb02 02c5 	add.w	r2, r2, r5, lsl #3
 8002cf4:	ed12 0b12 	vldr	d0, [r2, #-72]	; 0xffffffb8
 8002cf8:	ec53 2b10 	vmov	r2, r3, d0
 8002cfc:	f7fd fc3c 	bl	8000578 <__aeabi_dmul>
 8002d00:	9006      	str	r0, [sp, #24]
 8002d02:	4620      	mov	r0, r4
 8002d04:	4688      	mov	r8, r1
 8002d06:	f7fd fbbd 	bl	8000484 <__aeabi_ui2d>
 8002d0a:	9a06      	ldr	r2, [sp, #24]
 8002d0c:	4643      	mov	r3, r8
 8002d0e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002d12:	f7fd fa7b 	bl	800020c <__adddf3>
 8002d16:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8002d1a:	ec41 0b10 	vmov	d0, r0, r1
 8002d1e:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002d22:	9807      	ldr	r0, [sp, #28]
 8002d24:	f1b8 0f0f 	cmp.w	r8, #15
 8002d28:	eba6 0000 	sub.w	r0, r6, r0
 8002d2c:	dc52      	bgt.n	8002dd4 <strtod+0x494>
 8002d2e:	b1b8      	cbz	r0, 8002d60 <strtod+0x420>
 8002d30:	2801      	cmp	r0, #1
 8002d32:	db35      	blt.n	8002da0 <strtod+0x460>
 8002d34:	2818      	cmp	r0, #24
 8002d36:	4602      	mov	r2, r0
 8002d38:	dc46      	bgt.n	8002dc8 <strtod+0x488>
 8002d3a:	f649 0018 	movw	r0, #38936	; 0x9818
 8002d3e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002d42:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
 8002d46:	ed90 1b00 	vldr	d1, [r0]
 8002d4a:	ec51 0b11 	vmov	r0, r1, d1
 8002d4e:	f000 bd6e 	b.w	800382e <strtod+0xeee>
 8002d52:	ea51 000e 	orrs.w	r0, r1, lr
 8002d56:	4660      	mov	r0, ip
 8002d58:	d102      	bne.n	8002d60 <strtod+0x420>
 8002d5a:	900f      	str	r0, [sp, #60]	; 0x3c
 8002d5c:	2000      	movs	r0, #0
 8002d5e:	9008      	str	r0, [sp, #32]
 8002d60:	f1b9 0f00 	cmp.w	r9, #0
 8002d64:	ed9f 0bea 	vldr	d0, [pc, #936]	; 8003110 <strtod+0x7d0>
 8002d68:	bf1c      	itt	ne
 8002d6a:	980f      	ldrne	r0, [sp, #60]	; 0x3c
 8002d6c:	f8c9 0000 	strne.w	r0, [r9]
 8002d70:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 8002d74:	ec51 0b10 	vmov	r0, r1, d0
 8002d78:	ec55 4b11 	vmov	r4, r5, d1
 8002d7c:	4622      	mov	r2, r4
 8002d7e:	462b      	mov	r3, r5
 8002d80:	f7fd fa42 	bl	8000208 <__aeabi_dsub>
 8002d84:	9a08      	ldr	r2, [sp, #32]
 8002d86:	2a00      	cmp	r2, #0
 8002d88:	bf04      	itt	eq
 8002d8a:	4629      	moveq	r1, r5
 8002d8c:	4620      	moveq	r0, r4
 8002d8e:	ec41 0b10 	vmov	d0, r0, r1
 8002d92:	b018      	add	sp, #96	; 0x60
 8002d94:	ecbd 8b10 	vpop	{d8-d15}
 8002d98:	b001      	add	sp, #4
 8002d9a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002d9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002da0:	f110 0f18 	cmn.w	r0, #24
 8002da4:	db16      	blt.n	8002dd4 <strtod+0x494>
 8002da6:	4601      	mov	r1, r0
 8002da8:	f649 0018 	movw	r0, #38936	; 0x9818
 8002dac:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002db0:	eba0 00c1 	sub.w	r0, r0, r1, lsl #3
 8002db4:	ed90 1b00 	vldr	d1, [r0]
 8002db8:	ec51 0b10 	vmov	r0, r1, d0
 8002dbc:	ec53 2b11 	vmov	r2, r3, d1
 8002dc0:	f7fd fd04 	bl	80007cc <__aeabi_ddiv>
 8002dc4:	f000 bd37 	b.w	8003836 <strtod+0xef6>
 8002dc8:	f1c8 0027 	rsb	r0, r8, #39	; 0x27
 8002dcc:	4282      	cmp	r2, r0
 8002dce:	4610      	mov	r0, r2
 8002dd0:	f340 8517 	ble.w	8003802 <strtod+0xec2>
 8002dd4:	4602      	mov	r2, r0
 8002dd6:	eba8 0005 	sub.w	r0, r8, r5
 8002dda:	f8cd 9004 	str.w	r9, [sp, #4]
 8002dde:	1814      	adds	r4, r2, r0
 8002de0:	9204      	str	r2, [sp, #16]
 8002de2:	2c01      	cmp	r4, #1
 8002de4:	db21      	blt.n	8002e2a <strtod+0x4ea>
 8002de6:	f014 000f 	ands.w	r0, r4, #15
 8002dea:	d013      	beq.n	8002e14 <strtod+0x4d4>
 8002dec:	f649 0118 	movw	r1, #38936	; 0x9818
 8002df0:	ec53 2b10 	vmov	r2, r3, d0
 8002df4:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002df8:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8002dfc:	ed90 1b00 	vldr	d1, [r0]
 8002e00:	ec51 0b11 	vmov	r0, r1, d1
 8002e04:	f7fd fbb8 	bl	8000578 <__aeabi_dmul>
 8002e08:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8002e0c:	ec41 0b10 	vmov	d0, r0, r1
 8002e10:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002e14:	f024 000f 	bic.w	r0, r4, #15
 8002e18:	2800      	cmp	r0, #0
 8002e1a:	d069      	beq.n	8002ef0 <strtod+0x5b0>
 8002e1c:	f5b0 7f9a 	cmp.w	r0, #308	; 0x134
 8002e20:	dd2a      	ble.n	8002e78 <strtod+0x538>
 8002e22:	f04f 0900 	mov.w	r9, #0
 8002e26:	f000 bcc7 	b.w	80037b8 <strtod+0xe78>
 8002e2a:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8002e2e:	dc5f      	bgt.n	8002ef0 <strtod+0x5b0>
 8002e30:	4264      	negs	r4, r4
 8002e32:	f014 000f 	ands.w	r0, r4, #15
 8002e36:	d013      	beq.n	8002e60 <strtod+0x520>
 8002e38:	f649 0118 	movw	r1, #38936	; 0x9818
 8002e3c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002e40:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8002e44:	ed90 1b00 	vldr	d1, [r0]
 8002e48:	ec51 0b10 	vmov	r0, r1, d0
 8002e4c:	ec53 2b11 	vmov	r2, r3, d1
 8002e50:	f7fd fcbc 	bl	80007cc <__aeabi_ddiv>
 8002e54:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8002e58:	ec41 0b10 	vmov	d0, r0, r1
 8002e5c:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002e60:	2000      	movs	r0, #0
 8002e62:	ebb0 1f24 	cmp.w	r0, r4, asr #4
 8002e66:	d043      	beq.n	8002ef0 <strtod+0x5b0>
 8002e68:	1125      	asrs	r5, r4, #4
 8002e6a:	2d03      	cmp	r5, #3
 8002e6c:	f340 851d 	ble.w	80038aa <strtod+0xf6a>
 8002e70:	f04f 0900 	mov.w	r9, #0
 8002e74:	f000 bdfd 	b.w	8003a72 <strtod+0x1132>
 8002e78:	2c20      	cmp	r4, #32
 8002e7a:	d31c      	bcc.n	8002eb6 <strtod+0x576>
 8002e7c:	f649 1548 	movw	r5, #39240	; 0x9948
 8002e80:	0926      	lsrs	r6, r4, #4
 8002e82:	2400      	movs	r4, #0
 8002e84:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002e88:	07f0      	lsls	r0, r6, #31
 8002e8a:	d00b      	beq.n	8002ea4 <strtod+0x564>
 8002e8c:	ed95 1b00 	vldr	d1, [r5]
 8002e90:	ec53 2b10 	vmov	r2, r3, d0
 8002e94:	ec51 0b11 	vmov	r0, r1, d1
 8002e98:	f7fd fb6e 	bl	8000578 <__aeabi_dmul>
 8002e9c:	ec41 0b10 	vmov	d0, r0, r1
 8002ea0:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002ea4:	0870      	lsrs	r0, r6, #1
 8002ea6:	2e03      	cmp	r6, #3
 8002ea8:	f105 0508 	add.w	r5, r5, #8
 8002eac:	f104 0401 	add.w	r4, r4, #1
 8002eb0:	4606      	mov	r6, r0
 8002eb2:	d8e9      	bhi.n	8002e88 <strtod+0x548>
 8002eb4:	e000      	b.n	8002eb8 <strtod+0x578>
 8002eb6:	2400      	movs	r4, #0
 8002eb8:	f649 1048 	movw	r0, #39240	; 0x9948
 8002ebc:	f5a1 51e0 	sub.w	r1, r1, #7168	; 0x1c00
 8002ec0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002ec4:	910d      	str	r1, [sp, #52]	; 0x34
 8002ec6:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 8002eca:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 8002ece:	ed90 0b00 	vldr	d0, [r0]
 8002ed2:	ec53 2b11 	vmov	r2, r3, d1
 8002ed6:	ec51 0b10 	vmov	r0, r1, d0
 8002eda:	f7fd fb4d 	bl	8000578 <__aeabi_dmul>
 8002ede:	ec41 0b10 	vmov	d0, r0, r1
 8002ee2:	f501 50e0 	add.w	r0, r1, #7168	; 0x1c00
 8002ee6:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8002eea:	900d      	str	r0, [sp, #52]	; 0x34
 8002eec:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8002ef0:	f108 0008 	add.w	r0, r8, #8
 8002ef4:	2812      	cmp	r0, #18
 8002ef6:	db1b      	blt.n	8002f30 <strtod+0x5f0>
 8002ef8:	f648 6139 	movw	r1, #36409	; 0x8e39
 8002efc:	2400      	movs	r4, #0
 8002efe:	f6c3 01e3 	movt	r1, #14563	; 0x38e3
 8002f02:	fb50 f001 	smmul	r0, r0, r1
 8002f06:	1041      	asrs	r1, r0, #1
 8002f08:	eb01 70d0 	add.w	r0, r1, r0, lsr #31
 8002f0c:	2101      	movs	r1, #1
 8002f0e:	004a      	lsls	r2, r1, #1
 8002f10:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
 8002f14:	f104 0401 	add.w	r4, r4, #1
 8002f18:	4611      	mov	r1, r2
 8002f1a:	dcf8      	bgt.n	8002f0e <strtod+0x5ce>
 8002f1c:	2c07      	cmp	r4, #7
 8002f1e:	dd08      	ble.n	8002f32 <strtod+0x5f2>
 8002f20:	2001      	movs	r0, #1
 8002f22:	fa00 f504 	lsl.w	r5, r0, r4
 8002f26:	201b      	movs	r0, #27
 8002f28:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8002f2c:	08c0      	lsrs	r0, r0, #3
 8002f2e:	e02b      	b.n	8002f88 <strtod+0x648>
 8002f30:	2400      	movs	r4, #0
 8002f32:	f640 2004 	movw	r0, #2564	; 0xa04
 8002f36:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f3a:	f850 9024 	ldr.w	r9, [r0, r4, lsl #2]
 8002f3e:	f1b9 0f00 	cmp.w	r9, #0
 8002f42:	d004      	beq.n	8002f4e <strtod+0x60e>
 8002f44:	f8d9 1000 	ldr.w	r1, [r9]
 8002f48:	f840 1024 	str.w	r1, [r0, r4, lsl #2]
 8002f4c:	e024      	b.n	8002f98 <strtod+0x658>
 8002f4e:	f240 0128 	movw	r1, #40	; 0x28
 8002f52:	f640 2228 	movw	r2, #2600	; 0xa28
 8002f56:	2001      	movs	r0, #1
 8002f58:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002f5c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002f60:	fa00 f504 	lsl.w	r5, r0, r4
 8002f64:	201b      	movs	r0, #27
 8002f66:	f8d1 9000 	ldr.w	r9, [r1]
 8002f6a:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8002f6e:	eba9 0202 	sub.w	r2, r9, r2
 8002f72:	10d2      	asrs	r2, r2, #3
 8002f74:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 8002f78:	08c0      	lsrs	r0, r0, #3
 8002f7a:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8002f7e:	d803      	bhi.n	8002f88 <strtod+0x648>
 8002f80:	eb09 00c0 	add.w	r0, r9, r0, lsl #3
 8002f84:	6008      	str	r0, [r1, #0]
 8002f86:	e005      	b.n	8002f94 <strtod+0x654>
 8002f88:	00c0      	lsls	r0, r0, #3
 8002f8a:	f001 fc9f 	bl	80048cc <malloc>
 8002f8e:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8002f92:	4681      	mov	r9, r0
 8002f94:	e9c9 4501 	strd	r4, r5, [r9, #4]
 8002f98:	f1bc 0f0a 	cmp.w	ip, #10
 8002f9c:	f04f 0000 	mov.w	r0, #0
 8002fa0:	f04f 0101 	mov.w	r1, #1
 8002fa4:	f109 020c 	add.w	r2, r9, #12
 8002fa8:	e882 0403 	stmia.w	r2, {r0, r1, sl}
 8002fac:	f2c0 809e 	blt.w	80030ec <strtod+0x7ac>
 8002fb0:	f10b 0e09 	add.w	lr, fp, #9
 8002fb4:	f04f 0809 	mov.w	r8, #9
 8002fb8:	f04f 0a0a 	mov.w	sl, #10
 8002fbc:	2501      	movs	r5, #1
 8002fbe:	e021      	b.n	8003004 <strtod+0x6c4>
 8002fc0:	f240 0228 	movw	r2, #40	; 0x28
 8002fc4:	2001      	movs	r0, #1
 8002fc6:	f640 2128 	movw	r1, #2600	; 0xa28
 8002fca:	fa00 f306 	lsl.w	r3, r0, r6
 8002fce:	201b      	movs	r0, #27
 8002fd0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002fd4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002fd8:	eb00 0c83 	add.w	ip, r0, r3, lsl #2
 8002fdc:	6810      	ldr	r0, [r2, #0]
 8002fde:	ea4f 02dc 	mov.w	r2, ip, lsr #3
 8002fe2:	1a41      	subs	r1, r0, r1
 8002fe4:	10c9      	asrs	r1, r1, #3
 8002fe6:	eb01 01dc 	add.w	r1, r1, ip, lsr #3
 8002fea:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8002fee:	d807      	bhi.n	8003000 <strtod+0x6c0>
 8002ff0:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 8002ff4:	f240 0228 	movw	r2, #40	; 0x28
 8002ff8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002ffc:	6011      	str	r1, [r2, #0]
 8002ffe:	e03a      	b.n	8003076 <strtod+0x736>
 8003000:	9306      	str	r3, [sp, #24]
 8003002:	e034      	b.n	800306e <strtod+0x72e>
 8003004:	f89e 0000 	ldrb.w	r0, [lr]
 8003008:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 800300c:	2000      	movs	r0, #0
 800300e:	17d1      	asrs	r1, r2, #31
 8003010:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 8003014:	460c      	mov	r4, r1
 8003016:	3001      	adds	r0, #1
 8003018:	2100      	movs	r1, #0
 800301a:	695e      	ldr	r6, [r3, #20]
 800301c:	42a8      	cmp	r0, r5
 800301e:	fbe6 240a 	umlal	r2, r4, r6, sl
 8003022:	615a      	str	r2, [r3, #20]
 8003024:	4622      	mov	r2, r4
 8003026:	dbf3      	blt.n	8003010 <strtod+0x6d0>
 8003028:	f10e 0e01 	add.w	lr, lr, #1
 800302c:	2c00      	cmp	r4, #0
 800302e:	d050      	beq.n	80030d2 <strtod+0x792>
 8003030:	f8d9 0008 	ldr.w	r0, [r9, #8]
 8003034:	4285      	cmp	r5, r0
 8003036:	db46      	blt.n	80030c6 <strtod+0x786>
 8003038:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800303c:	f8cd e01c 	str.w	lr, [sp, #28]
 8003040:	1c46      	adds	r6, r0, #1
 8003042:	2e07      	cmp	r6, #7
 8003044:	dc0b      	bgt.n	800305e <strtod+0x71e>
 8003046:	f640 2104 	movw	r1, #2564	; 0xa04
 800304a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800304e:	f851 0026 	ldr.w	r0, [r1, r6, lsl #2]
 8003052:	2800      	cmp	r0, #0
 8003054:	d0b4      	beq.n	8002fc0 <strtod+0x680>
 8003056:	6802      	ldr	r2, [r0, #0]
 8003058:	f841 2026 	str.w	r2, [r1, r6, lsl #2]
 800305c:	e00d      	b.n	800307a <strtod+0x73a>
 800305e:	2001      	movs	r0, #1
 8003060:	fa00 f106 	lsl.w	r1, r0, r6
 8003064:	201b      	movs	r0, #27
 8003066:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800306a:	9106      	str	r1, [sp, #24]
 800306c:	08c2      	lsrs	r2, r0, #3
 800306e:	00d0      	lsls	r0, r2, #3
 8003070:	f001 fc2c 	bl	80048cc <malloc>
 8003074:	9b06      	ldr	r3, [sp, #24]
 8003076:	e9c0 6301 	strd	r6, r3, [r0, #4]
 800307a:	2100      	movs	r1, #0
 800307c:	4606      	mov	r6, r0
 800307e:	2208      	movs	r2, #8
 8003080:	6101      	str	r1, [r0, #16]
 8003082:	f840 1f0c 	str.w	r1, [r0, #12]!
 8003086:	f8d9 1010 	ldr.w	r1, [r9, #16]
 800308a:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 800308e:	f109 010c 	add.w	r1, r9, #12
 8003092:	f001 fbcb 	bl	800482c <__aeabi_memcpy>
 8003096:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800309a:	2808      	cmp	r0, #8
 800309c:	db03      	blt.n	80030a6 <strtod+0x766>
 800309e:	4648      	mov	r0, r9
 80030a0:	f001 fc1c 	bl	80048dc <free>
 80030a4:	e00a      	b.n	80030bc <strtod+0x77c>
 80030a6:	f640 2104 	movw	r1, #2564	; 0xa04
 80030aa:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80030ae:	460a      	mov	r2, r1
 80030b0:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80030b4:	f8c9 1000 	str.w	r1, [r9]
 80030b8:	f842 9020 	str.w	r9, [r2, r0, lsl #2]
 80030bc:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80030c0:	f8dd e01c 	ldr.w	lr, [sp, #28]
 80030c4:	46b1      	mov	r9, r6
 80030c6:	eb09 0085 	add.w	r0, r9, r5, lsl #2
 80030ca:	3501      	adds	r5, #1
 80030cc:	6144      	str	r4, [r0, #20]
 80030ce:	f8c9 5010 	str.w	r5, [r9, #16]
 80030d2:	f108 0801 	add.w	r8, r8, #1
 80030d6:	45e0      	cmp	r8, ip
 80030d8:	d194      	bne.n	8003004 <strtod+0x6c4>
 80030da:	9905      	ldr	r1, [sp, #20]
 80030dc:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80030e0:	eb0b 000c 	add.w	r0, fp, ip
 80030e4:	1844      	adds	r4, r0, r1
 80030e6:	45c4      	cmp	ip, r8
 80030e8:	db09      	blt.n	80030fe <strtod+0x7be>
 80030ea:	e0c0      	b.n	800326e <strtod+0x92e>
 80030ec:	9805      	ldr	r0, [sp, #20]
 80030ee:	f04f 0c09 	mov.w	ip, #9
 80030f2:	4458      	add	r0, fp
 80030f4:	f100 0409 	add.w	r4, r0, #9
 80030f8:	45c4      	cmp	ip, r8
 80030fa:	f280 80b8 	bge.w	800326e <strtod+0x92e>
 80030fe:	f640 2e04 	movw	lr, #2564	; 0xa04
 8003102:	250a      	movs	r5, #10
 8003104:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003108:	e03d      	b.n	8003186 <strtod+0x846>
 800310a:	bf00      	nop
 800310c:	bf00      	nop
 800310e:	bf00      	nop
 8003110:	00000000 	.word	0x00000000
 8003114:	80000000 	.word	0x80000000
 8003118:	00000000 	.word	0x00000000
 800311c:	40000000 	.word	0x40000000
 8003120:	00000000 	.word	0x00000000
 8003124:	3fe00000 	.word	0x3fe00000
 8003128:	94a03595 	.word	0x94a03595
 800312c:	3fdfffff 	.word	0x3fdfffff
 8003130:	35afe535 	.word	0x35afe535
 8003134:	3fe00000 	.word	0x3fe00000
 8003138:	00000000 	.word	0x00000000
 800313c:	3ff00000 	.word	0x3ff00000
 8003140:	00000000 	.word	0x00000000
 8003144:	bff00000 	.word	0xbff00000
 8003148:	f240 0228 	movw	r2, #40	; 0x28
 800314c:	f640 2128 	movw	r1, #2600	; 0xa28
 8003150:	2001      	movs	r0, #1
 8003152:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003156:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800315a:	fa00 f308 	lsl.w	r3, r0, r8
 800315e:	201b      	movs	r0, #27
 8003160:	6816      	ldr	r6, [r2, #0]
 8003162:	eb00 0083 	add.w	r0, r0, r3, lsl #2
 8003166:	1a71      	subs	r1, r6, r1
 8003168:	10c9      	asrs	r1, r1, #3
 800316a:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 800316e:	08c0      	lsrs	r0, r0, #3
 8003170:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8003174:	d804      	bhi.n	8003180 <strtod+0x840>
 8003176:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 800317a:	4664      	mov	r4, ip
 800317c:	6010      	str	r0, [r2, #0]
 800317e:	e03c      	b.n	80031fa <strtod+0x8ba>
 8003180:	9307      	str	r3, [sp, #28]
 8003182:	4664      	mov	r4, ip
 8003184:	e034      	b.n	80031f0 <strtod+0x8b0>
 8003186:	7820      	ldrb	r0, [r4, #0]
 8003188:	f8d9 a010 	ldr.w	sl, [r9, #16]
 800318c:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 8003190:	2000      	movs	r0, #0
 8003192:	17d1      	asrs	r1, r2, #31
 8003194:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 8003198:	468b      	mov	fp, r1
 800319a:	3001      	adds	r0, #1
 800319c:	2100      	movs	r1, #0
 800319e:	695e      	ldr	r6, [r3, #20]
 80031a0:	4550      	cmp	r0, sl
 80031a2:	fbe6 2b05 	umlal	r2, fp, r6, r5
 80031a6:	615a      	str	r2, [r3, #20]
 80031a8:	465a      	mov	r2, fp
 80031aa:	dbf3      	blt.n	8003194 <strtod+0x854>
 80031ac:	3401      	adds	r4, #1
 80031ae:	f1bb 0f00 	cmp.w	fp, #0
 80031b2:	d058      	beq.n	8003266 <strtod+0x926>
 80031b4:	f8d9 0008 	ldr.w	r0, [r9, #8]
 80031b8:	4582      	cmp	sl, r0
 80031ba:	db4c      	blt.n	8003256 <strtod+0x916>
 80031bc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80031c0:	940a      	str	r4, [sp, #40]	; 0x28
 80031c2:	f100 0801 	add.w	r8, r0, #1
 80031c6:	f1b8 0f07 	cmp.w	r8, #7
 80031ca:	dc08      	bgt.n	80031de <strtod+0x89e>
 80031cc:	f85e 6028 	ldr.w	r6, [lr, r8, lsl #2]
 80031d0:	2e00      	cmp	r6, #0
 80031d2:	d0b9      	beq.n	8003148 <strtod+0x808>
 80031d4:	6830      	ldr	r0, [r6, #0]
 80031d6:	4664      	mov	r4, ip
 80031d8:	f84e 0028 	str.w	r0, [lr, r8, lsl #2]
 80031dc:	e00f      	b.n	80031fe <strtod+0x8be>
 80031de:	2001      	movs	r0, #1
 80031e0:	4664      	mov	r4, ip
 80031e2:	fa00 f108 	lsl.w	r1, r0, r8
 80031e6:	201b      	movs	r0, #27
 80031e8:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80031ec:	9107      	str	r1, [sp, #28]
 80031ee:	08c0      	lsrs	r0, r0, #3
 80031f0:	00c0      	lsls	r0, r0, #3
 80031f2:	f001 fb6b 	bl	80048cc <malloc>
 80031f6:	9b07      	ldr	r3, [sp, #28]
 80031f8:	4606      	mov	r6, r0
 80031fa:	e9c6 8301 	strd	r8, r3, [r6, #4]
 80031fe:	2100      	movs	r1, #0
 8003200:	4630      	mov	r0, r6
 8003202:	2208      	movs	r2, #8
 8003204:	6131      	str	r1, [r6, #16]
 8003206:	f840 1f0c 	str.w	r1, [r0, #12]!
 800320a:	f8d9 1010 	ldr.w	r1, [r9, #16]
 800320e:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8003212:	f109 010c 	add.w	r1, r9, #12
 8003216:	f001 fb09 	bl	800482c <__aeabi_memcpy>
 800321a:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800321e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8003222:	2808      	cmp	r0, #8
 8003224:	db0a      	blt.n	800323c <strtod+0x8fc>
 8003226:	4648      	mov	r0, r9
 8003228:	f001 fb58 	bl	80048dc <free>
 800322c:	46a4      	mov	ip, r4
 800322e:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8003230:	f640 2e04 	movw	lr, #2564	; 0xa04
 8003234:	46b1      	mov	r9, r6
 8003236:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800323a:	e00c      	b.n	8003256 <strtod+0x916>
 800323c:	f640 2e04 	movw	lr, #2564	; 0xa04
 8003240:	46a4      	mov	ip, r4
 8003242:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003246:	f85e 1020 	ldr.w	r1, [lr, r0, lsl #2]
 800324a:	f8c9 1000 	str.w	r1, [r9]
 800324e:	f84e 9020 	str.w	r9, [lr, r0, lsl #2]
 8003252:	46b1      	mov	r9, r6
 8003254:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8003256:	eb09 008a 	add.w	r0, r9, sl, lsl #2
 800325a:	f8c0 b014 	str.w	fp, [r0, #20]
 800325e:	f10a 0001 	add.w	r0, sl, #1
 8003262:	f8c9 0010 	str.w	r0, [r9, #16]
 8003266:	f10c 0c01 	add.w	ip, ip, #1
 800326a:	45c4      	cmp	ip, r8
 800326c:	d18b      	bne.n	8003186 <strtod+0x846>
 800326e:	9804      	ldr	r0, [sp, #16]
 8003270:	2100      	movs	r1, #0
 8003272:	ed1f 9b57 	vldr	d9, [pc, #-348]	; 8003118 <strtod+0x7d8>
 8003276:	ed1f ab56 	vldr	d10, [pc, #-344]	; 8003120 <strtod+0x7e0>
 800327a:	ed1f bb5b 	vldr	d11, [pc, #-364]	; 8003110 <strtod+0x7d0>
 800327e:	ed1f db56 	vldr	d13, [pc, #-344]	; 8003128 <strtod+0x7e8>
 8003282:	ed1f eb55 	vldr	d14, [pc, #-340]	; 8003130 <strtod+0x7f0>
 8003286:	ed1f fb54 	vldr	d15, [pc, #-336]	; 8003138 <strtod+0x7f8>
 800328a:	ed1f cb53 	vldr	d12, [pc, #-332]	; 8003140 <strtod+0x800>
 800328e:	f640 2604 	movw	r6, #2564	; 0xa04
 8003292:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003296:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800329a:	bfc8      	it	gt
 800329c:	4601      	movgt	r1, r0
 800329e:	f1c0 0000 	rsb	r0, r0, #0
 80032a2:	9107      	str	r1, [sp, #28]
 80032a4:	bfc8      	it	gt
 80032a6:	2000      	movgt	r0, #0
 80032a8:	9004      	str	r0, [sp, #16]
 80032aa:	f109 000c 	add.w	r0, r9, #12
 80032ae:	9005      	str	r0, [sp, #20]
 80032b0:	e005      	b.n	80032be <strtod+0x97e>
 80032b2:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80032b6:	f8cb 1000 	str.w	r1, [fp]
 80032ba:	f846 b020 	str.w	fp, [r6, r0, lsl #2]
 80032be:	f8d9 4004 	ldr.w	r4, [r9, #4]
 80032c2:	2c07      	cmp	r4, #7
 80032c4:	dc0a      	bgt.n	80032dc <strtod+0x99c>
 80032c6:	f856 0024 	ldr.w	r0, [r6, r4, lsl #2]
 80032ca:	4632      	mov	r2, r6
 80032cc:	2601      	movs	r6, #1
 80032ce:	2800      	cmp	r0, #0
 80032d0:	d045      	beq.n	800335e <strtod+0xa1e>
 80032d2:	6801      	ldr	r1, [r0, #0]
 80032d4:	4693      	mov	fp, r2
 80032d6:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
 80032da:	e00c      	b.n	80032f6 <strtod+0x9b6>
 80032dc:	46b3      	mov	fp, r6
 80032de:	2601      	movs	r6, #1
 80032e0:	201b      	movs	r0, #27
 80032e2:	fa06 f504 	lsl.w	r5, r6, r4
 80032e6:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 80032ea:	08c2      	lsrs	r2, r0, #3
 80032ec:	00d0      	lsls	r0, r2, #3
 80032ee:	f001 faed 	bl	80048cc <malloc>
 80032f2:	e9c0 4501 	strd	r4, r5, [r0, #4]
 80032f6:	2100      	movs	r1, #0
 80032f8:	2208      	movs	r2, #8
 80032fa:	6101      	str	r1, [r0, #16]
 80032fc:	900a      	str	r0, [sp, #40]	; 0x28
 80032fe:	f840 1f0c 	str.w	r1, [r0, #12]!
 8003302:	f8d9 1010 	ldr.w	r1, [r9, #16]
 8003306:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 800330a:	9905      	ldr	r1, [sp, #20]
 800330c:	f001 fa8e 	bl	800482c <__aeabi_memcpy>
 8003310:	a80c      	add	r0, sp, #48	; 0x30
 8003312:	a911      	add	r1, sp, #68	; 0x44
 8003314:	aa10      	add	r2, sp, #64	; 0x40
 8003316:	f000 fcd7 	bl	8003cc8 <d2b>
 800331a:	f8db 8004 	ldr.w	r8, [fp, #4]
 800331e:	4682      	mov	sl, r0
 8003320:	f1b8 0f00 	cmp.w	r8, #0
 8003324:	d005      	beq.n	8003332 <strtod+0x9f2>
 8003326:	f8d8 0000 	ldr.w	r0, [r8]
 800332a:	9904      	ldr	r1, [sp, #16]
 800332c:	f8cb 0004 	str.w	r0, [fp, #4]
 8003330:	e03c      	b.n	80033ac <strtod+0xa6c>
 8003332:	f240 0228 	movw	r2, #40	; 0x28
 8003336:	f640 2028 	movw	r0, #2600	; 0xa28
 800333a:	2104      	movs	r1, #4
 800333c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003340:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003344:	f8d2 8000 	ldr.w	r8, [r2]
 8003348:	eba8 0000 	sub.w	r0, r8, r0
 800334c:	eb01 00e0 	add.w	r0, r1, r0, asr #3
 8003350:	f5b0 7f90 	cmp.w	r0, #288	; 0x120
 8003354:	d820      	bhi.n	8003398 <strtod+0xa58>
 8003356:	f108 0020 	add.w	r0, r8, #32
 800335a:	6010      	str	r0, [r2, #0]
 800335c:	e020      	b.n	80033a0 <strtod+0xa60>
 800335e:	f240 0828 	movw	r8, #40	; 0x28
 8003362:	fa06 f504 	lsl.w	r5, r6, r4
 8003366:	201b      	movs	r0, #27
 8003368:	4693      	mov	fp, r2
 800336a:	f640 2128 	movw	r1, #2600	; 0xa28
 800336e:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8003372:	eb00 0285 	add.w	r2, r0, r5, lsl #2
 8003376:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800337a:	f8d8 0000 	ldr.w	r0, [r8]
 800337e:	1a41      	subs	r1, r0, r1
 8003380:	10c9      	asrs	r1, r1, #3
 8003382:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 8003386:	08d2      	lsrs	r2, r2, #3
 8003388:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 800338c:	d8ae      	bhi.n	80032ec <strtod+0x9ac>
 800338e:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 8003392:	f8c8 1000 	str.w	r1, [r8]
 8003396:	e7ac      	b.n	80032f2 <strtod+0x9b2>
 8003398:	2020      	movs	r0, #32
 800339a:	f001 fa97 	bl	80048cc <malloc>
 800339e:	4680      	mov	r8, r0
 80033a0:	9904      	ldr	r1, [sp, #16]
 80033a2:	2002      	movs	r0, #2
 80033a4:	f8c8 6004 	str.w	r6, [r8, #4]
 80033a8:	f8c8 0008 	str.w	r0, [r8, #8]
 80033ac:	2000      	movs	r0, #0
 80033ae:	460d      	mov	r5, r1
 80033b0:	e9c8 0603 	strd	r0, r6, [r8, #12]
 80033b4:	f8c8 6014 	str.w	r6, [r8, #20]
 80033b8:	9811      	ldr	r0, [sp, #68]	; 0x44
 80033ba:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80033be:	bfc8      	it	gt
 80033c0:	4405      	addgt	r5, r0
 80033c2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80033c4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80033c8:	f1c3 0239 	rsb	r2, r3, #57	; 0x39
 80033cc:	bfd8      	it	le
 80033ce:	4403      	addle	r3, r0
 80033d0:	9807      	ldr	r0, [sp, #28]
 80033d2:	eb05 0b02 	add.w	fp, r5, r2
 80033d6:	3039      	adds	r0, #57	; 0x39
 80033d8:	1ac4      	subs	r4, r0, r3
 80033da:	45a3      	cmp	fp, r4
 80033dc:	4620      	mov	r0, r4
 80033de:	bfb8      	it	lt
 80033e0:	4658      	movlt	r0, fp
 80033e2:	42a8      	cmp	r0, r5
 80033e4:	bfc8      	it	gt
 80033e6:	4628      	movgt	r0, r5
 80033e8:	2801      	cmp	r0, #1
 80033ea:	bfa2      	ittt	ge
 80033ec:	1a2d      	subge	r5, r5, r0
 80033ee:	1a24      	subge	r4, r4, r0
 80033f0:	ebab 0b00 	subge.w	fp, fp, r0
 80033f4:	2901      	cmp	r1, #1
 80033f6:	db1e      	blt.n	8003436 <strtod+0xaf6>
 80033f8:	4640      	mov	r0, r8
 80033fa:	f000 fd27 	bl	8003e4c <pow5mult>
 80033fe:	4651      	mov	r1, sl
 8003400:	4680      	mov	r8, r0
 8003402:	f000 fe29 	bl	8004058 <mult>
 8003406:	4606      	mov	r6, r0
 8003408:	f1ba 0f00 	cmp.w	sl, #0
 800340c:	d012      	beq.n	8003434 <strtod+0xaf4>
 800340e:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003412:	2808      	cmp	r0, #8
 8003414:	db03      	blt.n	800341e <strtod+0xade>
 8003416:	4650      	mov	r0, sl
 8003418:	f001 fa60 	bl	80048dc <free>
 800341c:	e00a      	b.n	8003434 <strtod+0xaf4>
 800341e:	f640 2104 	movw	r1, #2564	; 0xa04
 8003422:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003426:	460a      	mov	r2, r1
 8003428:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 800342c:	f8ca 1000 	str.w	r1, [sl]
 8003430:	f842 a020 	str.w	sl, [r2, r0, lsl #2]
 8003434:	46b2      	mov	sl, r6
 8003436:	f1bb 0f01 	cmp.w	fp, #1
 800343a:	db04      	blt.n	8003446 <strtod+0xb06>
 800343c:	4650      	mov	r0, sl
 800343e:	4659      	mov	r1, fp
 8003440:	f7ff fa01 	bl	8002846 <lshift>
 8003444:	4682      	mov	sl, r0
 8003446:	9907      	ldr	r1, [sp, #28]
 8003448:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800344a:	2901      	cmp	r1, #1
 800344c:	db03      	blt.n	8003456 <strtod+0xb16>
 800344e:	4610      	mov	r0, r2
 8003450:	f000 fcfc 	bl	8003e4c <pow5mult>
 8003454:	4602      	mov	r2, r0
 8003456:	2c01      	cmp	r4, #1
 8003458:	db04      	blt.n	8003464 <strtod+0xb24>
 800345a:	4610      	mov	r0, r2
 800345c:	4621      	mov	r1, r4
 800345e:	f7ff f9f2 	bl	8002846 <lshift>
 8003462:	4602      	mov	r2, r0
 8003464:	2d01      	cmp	r5, #1
 8003466:	db06      	blt.n	8003476 <strtod+0xb36>
 8003468:	4640      	mov	r0, r8
 800346a:	4629      	mov	r1, r5
 800346c:	4614      	mov	r4, r2
 800346e:	f7ff f9ea 	bl	8002846 <lshift>
 8003472:	4622      	mov	r2, r4
 8003474:	4680      	mov	r8, r0
 8003476:	4650      	mov	r0, sl
 8003478:	4611      	mov	r1, r2
 800347a:	4615      	mov	r5, r2
 800347c:	f000 feaf 	bl	80041de <diff>
 8003480:	4683      	mov	fp, r0
 8003482:	4641      	mov	r1, r8
 8003484:	f8db 000c 	ldr.w	r0, [fp, #12]
 8003488:	9009      	str	r0, [sp, #36]	; 0x24
 800348a:	2000      	movs	r0, #0
 800348c:	f8cb 000c 	str.w	r0, [fp, #12]
 8003490:	4658      	mov	r0, fp
 8003492:	f000 ff78 	bl	8004386 <cmp>
 8003496:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800349a:	f8cd 8018 	str.w	r8, [sp, #24]
 800349e:	f340 8169 	ble.w	8003774 <strtod+0xe34>
 80034a2:	2800      	cmp	r0, #0
 80034a4:	f000 8170 	beq.w	8003788 <strtod+0xe48>
 80034a8:	4658      	mov	r0, fp
 80034aa:	a913      	add	r1, sp, #76	; 0x4c
 80034ac:	f001 f82e 	bl	800450c <b2d>
 80034b0:	eeb0 8a40 	vmov.f32	s16, s0
 80034b4:	4640      	mov	r0, r8
 80034b6:	a912      	add	r1, sp, #72	; 0x48
 80034b8:	eef0 8a60 	vmov.f32	s17, s1
 80034bc:	ed8d 8b16 	vstr	d8, [sp, #88]	; 0x58
 80034c0:	f001 f824 	bl	800450c <b2d>
 80034c4:	ed8d 0b14 	vstr	d0, [sp, #80]	; 0x50
 80034c8:	ac14      	add	r4, sp, #80	; 0x50
 80034ca:	f8d8 0010 	ldr.w	r0, [r8, #16]
 80034ce:	f8db 1010 	ldr.w	r1, [fp, #16]
 80034d2:	1a08      	subs	r0, r1, r0
 80034d4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80034d8:	1a51      	subs	r1, r2, r1
 80034da:	ec53 2b10 	vmov	r2, r3, d0
 80034de:	eb01 1040 	add.w	r0, r1, r0, lsl #5
 80034e2:	a916      	add	r1, sp, #88	; 0x58
 80034e4:	2800      	cmp	r0, #0
 80034e6:	bfc8      	it	gt
 80034e8:	460c      	movgt	r4, r1
 80034ea:	950a      	str	r5, [sp, #40]	; 0x28
 80034ec:	6861      	ldr	r1, [r4, #4]
 80034ee:	bf48      	it	mi
 80034f0:	4240      	negmi	r0, r0
 80034f2:	eb01 16c0 	add.w	r6, r1, r0, lsl #7
 80034f6:	ec51 0b18 	vmov	r0, r1, d8
 80034fa:	f7fd f967 	bl	80007cc <__aeabi_ddiv>
 80034fe:	ec53 2b19 	vmov	r2, r3, d9
 8003502:	4605      	mov	r5, r0
 8003504:	4688      	mov	r8, r1
 8003506:	6066      	str	r6, [r4, #4]
 8003508:	f7fd fab2 	bl	8000a70 <__aeabi_dcmple>
 800350c:	b9d8      	cbnz	r0, 8003546 <strtod+0xc06>
 800350e:	ec53 2b1a 	vmov	r2, r3, d10
 8003512:	4628      	mov	r0, r5
 8003514:	4641      	mov	r1, r8
 8003516:	f7fd f82f 	bl	8000578 <__aeabi_dmul>
 800351a:	4604      	mov	r4, r0
 800351c:	460d      	mov	r5, r1
 800351e:	ec51 0b1b 	vmov	r0, r1, d11
 8003522:	4622      	mov	r2, r4
 8003524:	462b      	mov	r3, r5
 8003526:	ec45 4b18 	vmov	d8, r4, r5
 800352a:	f7fc fe6d 	bl	8000208 <__aeabi_dsub>
 800352e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003530:	f640 2604 	movw	r6, #2564	; 0xa04
 8003534:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003538:	2a00      	cmp	r2, #0
 800353a:	bf1c      	itt	ne
 800353c:	4629      	movne	r1, r5
 800353e:	4620      	movne	r0, r4
 8003540:	ec41 0b10 	vmov	d0, r0, r1
 8003544:	e026      	b.n	8003594 <strtod+0xc54>
 8003546:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003548:	f640 2604 	movw	r6, #2564	; 0xa04
 800354c:	eeb0 8a4f 	vmov.f32	s16, s30
 8003550:	eeb0 0a4f 	vmov.f32	s0, s30
 8003554:	eef0 8a6f 	vmov.f32	s17, s31
 8003558:	eef0 0a6f 	vmov.f32	s1, s31
 800355c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003560:	b9c0      	cbnz	r0, 8003594 <strtod+0xc54>
 8003562:	980c      	ldr	r0, [sp, #48]	; 0x30
 8003564:	eeb0 8a4f 	vmov.f32	s16, s30
 8003568:	eeb0 0a4c 	vmov.f32	s0, s24
 800356c:	eef0 8a6f 	vmov.f32	s17, s31
 8003570:	eef0 0a6c 	vmov.f32	s1, s25
 8003574:	b970      	cbnz	r0, 8003594 <strtod+0xc54>
 8003576:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003578:	217f      	movs	r1, #127	; 0x7f
 800357a:	eeb0 8a4f 	vmov.f32	s16, s30
 800357e:	eeb0 0a4c 	vmov.f32	s0, s24
 8003582:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003586:	eef0 8a6f 	vmov.f32	s17, s31
 800358a:	eef0 0a6c 	vmov.f32	s1, s25
 800358e:	4208      	tst	r0, r1
 8003590:	f000 80c7 	beq.w	8003722 <strtod+0xde2>
 8003594:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003596:	f400 44ff 	and.w	r4, r0, #32640	; 0x7f80
 800359a:	f5b4 5fe0 	cmp.w	r4, #7168	; 0x1c00
 800359e:	d829      	bhi.n	80035f4 <strtod+0xcb4>
 80035a0:	f500 50e0 	add.w	r0, r0, #7168	; 0x1c00
 80035a4:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 80035a6:	2200      	movs	r2, #0
 80035a8:	f400 41ff 	and.w	r1, r0, #32640	; 0x7f80
 80035ac:	f5a1 53dc 	sub.w	r3, r1, #7040	; 0x1b80
 80035b0:	990c      	ldr	r1, [sp, #48]	; 0x30
 80035b2:	900d      	str	r0, [sp, #52]	; 0x34
 80035b4:	9103      	str	r1, [sp, #12]
 80035b6:	ec51 0b10 	vmov	r0, r1, d0
 80035ba:	f7fc ffdd 	bl	8000578 <__aeabi_dmul>
 80035be:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 80035c2:	ec53 2b10 	vmov	r2, r3, d0
 80035c6:	f7fc fe21 	bl	800020c <__adddf3>
 80035ca:	4680      	mov	r8, r0
 80035cc:	f401 40ff 	and.w	r0, r1, #32640	; 0x7f80
 80035d0:	ec41 8b10 	vmov	d0, r8, r1
 80035d4:	f5b0 5fe0 	cmp.w	r0, #7168	; 0x1c00
 80035d8:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 80035dc:	d81e      	bhi.n	800361c <strtod+0xcdc>
 80035de:	9903      	ldr	r1, [sp, #12]
 80035e0:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80035e4:	4308      	orrs	r0, r1
 80035e6:	f000 812c 	beq.w	8003842 <strtod+0xf02>
 80035ea:	2080      	movs	r0, #128	; 0x80
 80035ec:	900d      	str	r0, [sp, #52]	; 0x34
 80035ee:	2000      	movs	r0, #0
 80035f0:	900c      	str	r0, [sp, #48]	; 0x30
 80035f2:	e04d      	b.n	8003690 <strtod+0xd50>
 80035f4:	f5a4 53dc 	sub.w	r3, r4, #7040	; 0x1b80
 80035f8:	ec51 0b10 	vmov	r0, r1, d0
 80035fc:	2200      	movs	r2, #0
 80035fe:	f7fc ffbb 	bl	8000578 <__aeabi_dmul>
 8003602:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003606:	ec53 2b10 	vmov	r2, r3, d0
 800360a:	f7fc fdff 	bl	800020c <__adddf3>
 800360e:	4680      	mov	r8, r0
 8003610:	460d      	mov	r5, r1
 8003612:	ec45 8b10 	vmov	d0, r8, r5
 8003616:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800361a:	e002      	b.n	8003622 <strtod+0xce2>
 800361c:	f5a1 55e0 	sub.w	r5, r1, #7168	; 0x1c00
 8003620:	950d      	str	r5, [sp, #52]	; 0x34
 8003622:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003624:	2800      	cmp	r0, #0
 8003626:	bf04      	itt	eq
 8003628:	f405 40ff 	andeq.w	r0, r5, #32640	; 0x7f80
 800362c:	4284      	cmpeq	r4, r0
 800362e:	d12f      	bne.n	8003690 <strtod+0xd50>
 8003630:	e9cd ba02 	strd	fp, sl, [sp, #8]
 8003634:	ec5a 4b18 	vmov	r4, sl, d8
 8003638:	4620      	mov	r0, r4
 800363a:	4651      	mov	r1, sl
 800363c:	f7fd fa36 	bl	8000aac <__aeabi_d2iz>
 8003640:	f7fc ff30 	bl	80004a4 <__aeabi_i2d>
 8003644:	4602      	mov	r2, r0
 8003646:	460b      	mov	r3, r1
 8003648:	4620      	mov	r0, r4
 800364a:	4651      	mov	r1, sl
 800364c:	f7fc fddc 	bl	8000208 <__aeabi_dsub>
 8003650:	4682      	mov	sl, r0
 8003652:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003654:	468b      	mov	fp, r1
 8003656:	2800      	cmp	r0, #0
 8003658:	bf02      	ittt	eq
 800365a:	f64f 7080 	movweq	r0, #65408	; 0xff80
 800365e:	ea25 0000 	biceq.w	r0, r5, r0
 8003662:	ea50 0008 	orrseq.w	r0, r0, r8
 8003666:	d053      	beq.n	8003710 <strtod+0xdd0>
 8003668:	ec53 2b1d 	vmov	r2, r3, d13
 800366c:	4650      	mov	r0, sl
 800366e:	4659      	mov	r1, fp
 8003670:	f7fd f9f4 	bl	8000a5c <__aeabi_dcmplt>
 8003674:	2800      	cmp	r0, #0
 8003676:	f040 80f3 	bne.w	8003860 <strtod+0xf20>
 800367a:	ec53 2b1e 	vmov	r2, r3, d14
 800367e:	4650      	mov	r0, sl
 8003680:	4659      	mov	r1, fp
 8003682:	f7fd fa09 	bl	8000a98 <__aeabi_dcmpgt>
 8003686:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 800368a:	2800      	cmp	r0, #0
 800368c:	f040 80e0 	bne.w	8003850 <strtod+0xf10>
 8003690:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8003692:	9d06      	ldr	r5, [sp, #24]
 8003694:	f1ba 0f00 	cmp.w	sl, #0
 8003698:	d00e      	beq.n	80036b8 <strtod+0xd78>
 800369a:	f8da 0004 	ldr.w	r0, [sl, #4]
 800369e:	2808      	cmp	r0, #8
 80036a0:	db04      	blt.n	80036ac <strtod+0xd6c>
 80036a2:	4650      	mov	r0, sl
 80036a4:	f001 f91a 	bl	80048dc <free>
 80036a8:	b93c      	cbnz	r4, 80036ba <strtod+0xd7a>
 80036aa:	e013      	b.n	80036d4 <strtod+0xd94>
 80036ac:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80036b0:	f8ca 1000 	str.w	r1, [sl]
 80036b4:	f846 a020 	str.w	sl, [r6, r0, lsl #2]
 80036b8:	b164      	cbz	r4, 80036d4 <strtod+0xd94>
 80036ba:	6860      	ldr	r0, [r4, #4]
 80036bc:	2808      	cmp	r0, #8
 80036be:	db04      	blt.n	80036ca <strtod+0xd8a>
 80036c0:	4620      	mov	r0, r4
 80036c2:	f001 f90b 	bl	80048dc <free>
 80036c6:	b935      	cbnz	r5, 80036d6 <strtod+0xd96>
 80036c8:	e015      	b.n	80036f6 <strtod+0xdb6>
 80036ca:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80036ce:	6021      	str	r1, [r4, #0]
 80036d0:	f846 4020 	str.w	r4, [r6, r0, lsl #2]
 80036d4:	b17d      	cbz	r5, 80036f6 <strtod+0xdb6>
 80036d6:	6868      	ldr	r0, [r5, #4]
 80036d8:	2808      	cmp	r0, #8
 80036da:	db07      	blt.n	80036ec <strtod+0xdac>
 80036dc:	4628      	mov	r0, r5
 80036de:	f001 f8fd 	bl	80048dc <free>
 80036e2:	f1bb 0f00 	cmp.w	fp, #0
 80036e6:	f43f adea 	beq.w	80032be <strtod+0x97e>
 80036ea:	e008      	b.n	80036fe <strtod+0xdbe>
 80036ec:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80036f0:	6029      	str	r1, [r5, #0]
 80036f2:	f846 5020 	str.w	r5, [r6, r0, lsl #2]
 80036f6:	f1bb 0f00 	cmp.w	fp, #0
 80036fa:	f43f ade0 	beq.w	80032be <strtod+0x97e>
 80036fe:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003702:	2808      	cmp	r0, #8
 8003704:	f6ff add5 	blt.w	80032b2 <strtod+0x972>
 8003708:	4658      	mov	r0, fp
 800370a:	f001 f8e7 	bl	80048dc <free>
 800370e:	e5d6      	b.n	80032be <strtod+0x97e>
 8003710:	ed9f 0be3 	vldr	d0, [pc, #908]	; 8003aa0 <strtod+0x1160>
 8003714:	4650      	mov	r0, sl
 8003716:	4659      	mov	r1, fp
 8003718:	ec53 2b10 	vmov	r2, r3, d0
 800371c:	f7fd f99e 	bl	8000a5c <__aeabi_dcmplt>
 8003720:	e7b1      	b.n	8003686 <strtod+0xd46>
 8003722:	ec56 4b1a 	vmov	r4, r6, d10
 8003726:	4628      	mov	r0, r5
 8003728:	4641      	mov	r1, r8
 800372a:	4622      	mov	r2, r4
 800372c:	4633      	mov	r3, r6
 800372e:	f7fc ff23 	bl	8000578 <__aeabi_dmul>
 8003732:	f8cd a00c 	str.w	sl, [sp, #12]
 8003736:	4682      	mov	sl, r0
 8003738:	f8cd b008 	str.w	fp, [sp, #8]
 800373c:	468b      	mov	fp, r1
 800373e:	ec53 2b1f 	vmov	r2, r3, d15
 8003742:	4628      	mov	r0, r5
 8003744:	4641      	mov	r1, r8
 8003746:	f7fd f989 	bl	8000a5c <__aeabi_dcmplt>
 800374a:	2800      	cmp	r0, #0
 800374c:	ec51 0b1b 	vmov	r0, r1, d11
 8003750:	bf1c      	itt	ne
 8003752:	46b3      	movne	fp, r6
 8003754:	46a2      	movne	sl, r4
 8003756:	f640 2604 	movw	r6, #2564	; 0xa04
 800375a:	ec4b ab18 	vmov	d8, sl, fp
 800375e:	4652      	mov	r2, sl
 8003760:	465b      	mov	r3, fp
 8003762:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8003766:	f8dd b008 	ldr.w	fp, [sp, #8]
 800376a:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800376e:	f7fc fd4b 	bl	8000208 <__aeabi_dsub>
 8003772:	e6e5      	b.n	8003540 <strtod+0xc00>
 8003774:	980c      	ldr	r0, [sp, #48]	; 0x30
 8003776:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003778:	4308      	orrs	r0, r1
 800377a:	d026      	beq.n	80037ca <strtod+0xe8a>
 800377c:	462b      	mov	r3, r5
 800377e:	f1ba 0f00 	cmp.w	sl, #0
 8003782:	f040 8209 	bne.w	8003b98 <strtod+0x1258>
 8003786:	e21d      	b.n	8003bc4 <strtod+0x1284>
 8003788:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800378a:	980d      	ldr	r0, [sp, #52]	; 0x34
 800378c:	f64f 7180 	movw	r1, #65408	; 0xff80
 8003790:	ea20 0101 	bic.w	r1, r0, r1
 8003794:	b37a      	cbz	r2, 80037f6 <strtod+0xeb6>
 8003796:	227f      	movs	r2, #127	; 0x7f
 8003798:	f6cf 72ff 	movt	r2, #65535	; 0xffff
 800379c:	4291      	cmp	r1, r2
 800379e:	bf04      	itt	eq
 80037a0:	990c      	ldreq	r1, [sp, #48]	; 0x30
 80037a2:	f111 0101 	addseq.w	r1, r1, #1
 80037a6:	d165      	bne.n	8003874 <strtod+0xf34>
 80037a8:	217f      	movs	r1, #127	; 0x7f
 80037aa:	462b      	mov	r3, r5
 80037ac:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 80037b0:	f501 4180 	add.w	r1, r1, #16384	; 0x4000
 80037b4:	4288      	cmp	r0, r1
 80037b6:	d172      	bne.n	800389e <strtod+0xf5e>
 80037b8:	207f      	movs	r0, #127	; 0x7f
 80037ba:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 80037be:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 80037c2:	900d      	str	r0, [sp, #52]	; 0x34
 80037c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80037c8:	e155      	b.n	8003a76 <strtod+0x1136>
 80037ca:	980d      	ldr	r0, [sp, #52]	; 0x34
 80037cc:	217f      	movs	r1, #127	; 0x7f
 80037ce:	462b      	mov	r3, r5
 80037d0:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 80037d4:	4208      	tst	r0, r1
 80037d6:	f040 81dc 	bne.w	8003b92 <strtod+0x1252>
 80037da:	4658      	mov	r0, fp
 80037dc:	461e      	mov	r6, r3
 80037de:	e9d0 8004 	ldrd	r8, r0, [r0, #16]
 80037e2:	2800      	cmp	r0, #0
 80037e4:	f040 80bd 	bne.w	8003962 <strtod+0x1022>
 80037e8:	f1b8 0f02 	cmp.w	r8, #2
 80037ec:	f280 80b9 	bge.w	8003962 <strtod+0x1022>
 80037f0:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80037f4:	e244      	b.n	8003c80 <strtod+0x1340>
 80037f6:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80037f8:	462b      	mov	r3, r5
 80037fa:	4311      	orrs	r1, r2
 80037fc:	f040 81c9 	bne.w	8003b92 <strtod+0x1252>
 8003800:	e12e      	b.n	8003a60 <strtod+0x1120>
 8003802:	f649 0418 	movw	r4, #38936	; 0x9818
 8003806:	4602      	mov	r2, r0
 8003808:	f1c8 000f 	rsb	r0, r8, #15
 800380c:	f6c0 0400 	movt	r4, #2048	; 0x800
 8003810:	1a15      	subs	r5, r2, r0
 8003812:	ec53 2b10 	vmov	r2, r3, d0
 8003816:	eb04 01c0 	add.w	r1, r4, r0, lsl #3
 800381a:	ed91 1b00 	vldr	d1, [r1]
 800381e:	ec51 0b11 	vmov	r0, r1, d1
 8003822:	f7fc fea9 	bl	8000578 <__aeabi_dmul>
 8003826:	eb04 02c5 	add.w	r2, r4, r5, lsl #3
 800382a:	ed92 0b00 	vldr	d0, [r2]
 800382e:	ec53 2b10 	vmov	r2, r3, d0
 8003832:	f7fc fea1 	bl	8000578 <__aeabi_dmul>
 8003836:	ec41 0b10 	vmov	d0, r0, r1
 800383a:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800383e:	f7ff ba8f 	b.w	8002d60 <strtod+0x420>
 8003842:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003844:	2800      	cmp	r0, #0
 8003846:	db03      	blt.n	8003850 <strtod+0xf10>
 8003848:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800384a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800384e:	e110      	b.n	8003a72 <strtod+0x1132>
 8003850:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003852:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003856:	f1ba 0f00 	cmp.w	sl, #0
 800385a:	f040 819d 	bne.w	8003b98 <strtod+0x1258>
 800385e:	e1b1      	b.n	8003bc4 <strtod+0x1284>
 8003860:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003862:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003866:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 800386a:	f1ba 0f00 	cmp.w	sl, #0
 800386e:	f040 8193 	bne.w	8003b98 <strtod+0x1258>
 8003872:	e1a7      	b.n	8003bc4 <strtod+0x1284>
 8003874:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003878:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 800387c:	2200      	movs	r2, #0
 800387e:	f5a0 53dc 	sub.w	r3, r0, #7040	; 0x1b80
 8003882:	ec51 0b10 	vmov	r0, r1, d0
 8003886:	f7fc fcc1 	bl	800020c <__adddf3>
 800388a:	ec41 0b10 	vmov	d0, r0, r1
 800388e:	462b      	mov	r3, r5
 8003890:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003894:	f1ba 0f00 	cmp.w	sl, #0
 8003898:	f040 817e 	bne.w	8003b98 <strtod+0x1258>
 800389c:	e192      	b.n	8003bc4 <strtod+0x1284>
 800389e:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 80038a2:	3080      	adds	r0, #128	; 0x80
 80038a4:	900d      	str	r0, [sp, #52]	; 0x34
 80038a6:	2000      	movs	r0, #0
 80038a8:	e172      	b.n	8003b90 <strtod+0x1250>
 80038aa:	2400      	movs	r4, #0
 80038ac:	2d02      	cmp	r5, #2
 80038ae:	db19      	blt.n	80038e4 <strtod+0xfa4>
 80038b0:	f649 1658 	movw	r6, #39256	; 0x9958
 80038b4:	f6c0 0600 	movt	r6, #2048	; 0x800
 80038b8:	07e8      	lsls	r0, r5, #31
 80038ba:	d00b      	beq.n	80038d4 <strtod+0xf94>
 80038bc:	ed96 1b00 	vldr	d1, [r6]
 80038c0:	ec53 2b10 	vmov	r2, r3, d0
 80038c4:	ec51 0b11 	vmov	r0, r1, d1
 80038c8:	f7fc fe56 	bl	8000578 <__aeabi_dmul>
 80038cc:	ec41 0b10 	vmov	d0, r0, r1
 80038d0:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 80038d4:	0868      	lsrs	r0, r5, #1
 80038d6:	2d03      	cmp	r5, #3
 80038d8:	f106 0608 	add.w	r6, r6, #8
 80038dc:	f104 0401 	add.w	r4, r4, #1
 80038e0:	4605      	mov	r5, r0
 80038e2:	d8e9      	bhi.n	80038b8 <strtod+0xf78>
 80038e4:	f649 1058 	movw	r0, #39256	; 0x9958
 80038e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80038ec:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 80038f0:	ec54 6b10 	vmov	r6, r4, d0
 80038f4:	ed90 1b00 	vldr	d1, [r0]
 80038f8:	4630      	mov	r0, r6
 80038fa:	4621      	mov	r1, r4
 80038fc:	ec55 2b11 	vmov	r2, r5, d1
 8003900:	462b      	mov	r3, r5
 8003902:	9207      	str	r2, [sp, #28]
 8003904:	f7fc fe38 	bl	8000578 <__aeabi_dmul>
 8003908:	ed9f 1b67 	vldr	d1, [pc, #412]	; 8003aa8 <strtod+0x1168>
 800390c:	ec41 0b10 	vmov	d0, r0, r1
 8003910:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003914:	ec53 2b11 	vmov	r2, r3, d1
 8003918:	9203      	str	r2, [sp, #12]
 800391a:	9306      	str	r3, [sp, #24]
 800391c:	f7fd f894 	bl	8000a48 <__aeabi_dcmpeq>
 8003920:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003924:	2800      	cmp	r0, #0
 8003926:	f43f aae3 	beq.w	8002ef0 <strtod+0x5b0>
 800392a:	4630      	mov	r0, r6
 800392c:	4621      	mov	r1, r4
 800392e:	4632      	mov	r2, r6
 8003930:	4623      	mov	r3, r4
 8003932:	f7fc fc6b 	bl	800020c <__adddf3>
 8003936:	9a07      	ldr	r2, [sp, #28]
 8003938:	462b      	mov	r3, r5
 800393a:	f7fc fe1d 	bl	8000578 <__aeabi_dmul>
 800393e:	9a03      	ldr	r2, [sp, #12]
 8003940:	9b06      	ldr	r3, [sp, #24]
 8003942:	ec41 0b10 	vmov	d0, r0, r1
 8003946:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800394a:	f7fd f87d 	bl	8000a48 <__aeabi_dcmpeq>
 800394e:	f04f 0900 	mov.w	r9, #0
 8003952:	2800      	cmp	r0, #0
 8003954:	f47f aa8e 	bne.w	8002e74 <strtod+0x534>
 8003958:	2080      	movs	r0, #128	; 0x80
 800395a:	e9cd 900c 	strd	r9, r0, [sp, #48]	; 0x30
 800395e:	f7ff bac5 	b.w	8002eec <strtod+0x5ac>
 8003962:	4658      	mov	r0, fp
 8003964:	e9d0 5001 	ldrd	r5, r0, [r0, #4]
 8003968:	4580      	cmp	r8, r0
 800396a:	db06      	blt.n	800397a <strtod+0x103a>
 800396c:	0041      	lsls	r1, r0, #1
 800396e:	ebb8 0f40 	cmp.w	r8, r0, lsl #1
 8003972:	f105 0501 	add.w	r5, r5, #1
 8003976:	4608      	mov	r0, r1
 8003978:	daf8      	bge.n	800396c <strtod+0x102c>
 800397a:	2d07      	cmp	r5, #7
 800397c:	dc0c      	bgt.n	8003998 <strtod+0x1058>
 800397e:	f640 2104 	movw	r1, #2564	; 0xa04
 8003982:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003986:	f851 4025 	ldr.w	r4, [r1, r5, lsl #2]
 800398a:	2c00      	cmp	r4, #0
 800398c:	f000 817e 	beq.w	8003c8c <strtod+0x134c>
 8003990:	6820      	ldr	r0, [r4, #0]
 8003992:	f841 0025 	str.w	r0, [r1, r5, lsl #2]
 8003996:	e010      	b.n	80039ba <strtod+0x107a>
 8003998:	2001      	movs	r0, #1
 800399a:	f8cd a00c 	str.w	sl, [sp, #12]
 800399e:	fa00 fa05 	lsl.w	sl, r0, r5
 80039a2:	201b      	movs	r0, #27
 80039a4:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 80039a8:	08c0      	lsrs	r0, r0, #3
 80039aa:	00c0      	lsls	r0, r0, #3
 80039ac:	f000 ff8e 	bl	80048cc <malloc>
 80039b0:	4604      	mov	r4, r0
 80039b2:	e9c4 5a01 	strd	r5, sl, [r4, #4]
 80039b6:	f8dd a00c 	ldr.w	sl, [sp, #12]
 80039ba:	2000      	movs	r0, #0
 80039bc:	f06f 0114 	mvn.w	r1, #20
 80039c0:	f10b 0318 	add.w	r3, fp, #24
 80039c4:	e9c4 0003 	strd	r0, r0, [r4, #12]
 80039c8:	eba1 020b 	sub.w	r2, r1, fp
 80039cc:	f8db 1010 	ldr.w	r1, [fp, #16]
 80039d0:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 80039d4:	3114      	adds	r1, #20
 80039d6:	4299      	cmp	r1, r3
 80039d8:	bf88      	it	hi
 80039da:	460b      	movhi	r3, r1
 80039dc:	441a      	add	r2, r3
 80039de:	2314      	movs	r3, #20
 80039e0:	ea4f 0c92 	mov.w	ip, r2, lsr #2
 80039e4:	f85b 5003 	ldr.w	r5, [fp, r3]
 80039e8:	ea40 0045 	orr.w	r0, r0, r5, lsl #1
 80039ec:	1d1d      	adds	r5, r3, #4
 80039ee:	50e0      	str	r0, [r4, r3]
 80039f0:	eb0b 0205 	add.w	r2, fp, r5
 80039f4:	f85b 0003 	ldr.w	r0, [fp, r3]
 80039f8:	428a      	cmp	r2, r1
 80039fa:	462b      	mov	r3, r5
 80039fc:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 8003a00:	d3f0      	bcc.n	80039e4 <strtod+0x10a4>
 8003a02:	eb04 018c 	add.w	r1, r4, ip, lsl #2
 8003a06:	2800      	cmp	r0, #0
 8003a08:	6188      	str	r0, [r1, #24]
 8003a0a:	f04f 0102 	mov.w	r1, #2
 8003a0e:	bf08      	it	eq
 8003a10:	2101      	moveq	r1, #1
 8003a12:	f1bb 0f00 	cmp.w	fp, #0
 8003a16:	eb08 0001 	add.w	r0, r8, r1
 8003a1a:	f1a0 0001 	sub.w	r0, r0, #1
 8003a1e:	6120      	str	r0, [r4, #16]
 8003a20:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003a24:	d012      	beq.n	8003a4c <strtod+0x110c>
 8003a26:	f8db 3004 	ldr.w	r3, [fp, #4]
 8003a2a:	2b08      	cmp	r3, #8
 8003a2c:	db03      	blt.n	8003a36 <strtod+0x10f6>
 8003a2e:	4658      	mov	r0, fp
 8003a30:	f000 ff54 	bl	80048dc <free>
 8003a34:	e00a      	b.n	8003a4c <strtod+0x110c>
 8003a36:	f640 2104 	movw	r1, #2564	; 0xa04
 8003a3a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a3e:	460a      	mov	r2, r1
 8003a40:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8003a44:	f8cb 1000 	str.w	r1, [fp]
 8003a48:	f842 b023 	str.w	fp, [r2, r3, lsl #2]
 8003a4c:	4620      	mov	r0, r4
 8003a4e:	4641      	mov	r1, r8
 8003a50:	f000 fc99 	bl	8004386 <cmp>
 8003a54:	2801      	cmp	r0, #1
 8003a56:	f2c0 8112 	blt.w	8003c7e <strtod+0x133e>
 8003a5a:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003a5c:	46a3      	mov	fp, r4
 8003a5e:	4633      	mov	r3, r6
 8003a60:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003a64:	2880      	cmp	r0, #128	; 0x80
 8003a66:	f200 8089 	bhi.w	8003b7c <strtod+0x123c>
 8003a6a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003a6c:	2800      	cmp	r0, #0
 8003a6e:	f2c0 8090 	blt.w	8003b92 <strtod+0x1252>
 8003a72:	2000      	movs	r0, #0
 8003a74:	900d      	str	r0, [sp, #52]	; 0x34
 8003a76:	f1b9 0f00 	cmp.w	r9, #0
 8003a7a:	900c      	str	r0, [sp, #48]	; 0x30
 8003a7c:	d076      	beq.n	8003b6c <strtod+0x122c>
 8003a7e:	f1ba 0f00 	cmp.w	sl, #0
 8003a82:	d01f      	beq.n	8003ac4 <strtod+0x1184>
 8003a84:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003a88:	2808      	cmp	r0, #8
 8003a8a:	db11      	blt.n	8003ab0 <strtod+0x1170>
 8003a8c:	4650      	mov	r0, sl
 8003a8e:	461c      	mov	r4, r3
 8003a90:	f000 ff24 	bl	80048dc <free>
 8003a94:	4623      	mov	r3, r4
 8003a96:	2b00      	cmp	r3, #0
 8003a98:	d116      	bne.n	8003ac8 <strtod+0x1188>
 8003a9a:	e028      	b.n	8003aee <strtod+0x11ae>
 8003a9c:	bf00      	nop
 8003a9e:	bf00      	nop
 8003aa0:	94a03595 	.word	0x94a03595
 8003aa4:	3fcfffff 	.word	0x3fcfffff
	...
 8003ab0:	f640 2104 	movw	r1, #2564	; 0xa04
 8003ab4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ab8:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003abc:	f8ca 2000 	str.w	r2, [sl]
 8003ac0:	f841 a020 	str.w	sl, [r1, r0, lsl #2]
 8003ac4:	2b00      	cmp	r3, #0
 8003ac6:	d012      	beq.n	8003aee <strtod+0x11ae>
 8003ac8:	6858      	ldr	r0, [r3, #4]
 8003aca:	2808      	cmp	r0, #8
 8003acc:	db06      	blt.n	8003adc <strtod+0x119c>
 8003ace:	4618      	mov	r0, r3
 8003ad0:	f000 ff04 	bl	80048dc <free>
 8003ad4:	f1b8 0f00 	cmp.w	r8, #0
 8003ad8:	d10c      	bne.n	8003af4 <strtod+0x11b4>
 8003ada:	e01d      	b.n	8003b18 <strtod+0x11d8>
 8003adc:	f640 2104 	movw	r1, #2564	; 0xa04
 8003ae0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ae4:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003ae8:	601a      	str	r2, [r3, #0]
 8003aea:	f841 3020 	str.w	r3, [r1, r0, lsl #2]
 8003aee:	f1b8 0f00 	cmp.w	r8, #0
 8003af2:	d011      	beq.n	8003b18 <strtod+0x11d8>
 8003af4:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8003af8:	2808      	cmp	r0, #8
 8003afa:	db03      	blt.n	8003b04 <strtod+0x11c4>
 8003afc:	4640      	mov	r0, r8
 8003afe:	f000 feed 	bl	80048dc <free>
 8003b02:	e009      	b.n	8003b18 <strtod+0x11d8>
 8003b04:	f640 2104 	movw	r1, #2564	; 0xa04
 8003b08:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b0c:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003b10:	f8c8 2000 	str.w	r2, [r8]
 8003b14:	f841 8020 	str.w	r8, [r1, r0, lsl #2]
 8003b18:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003b1c:	2808      	cmp	r0, #8
 8003b1e:	db06      	blt.n	8003b2e <strtod+0x11ee>
 8003b20:	4648      	mov	r0, r9
 8003b22:	f000 fedb 	bl	80048dc <free>
 8003b26:	f1bb 0f00 	cmp.w	fp, #0
 8003b2a:	d10d      	bne.n	8003b48 <strtod+0x1208>
 8003b2c:	e01e      	b.n	8003b6c <strtod+0x122c>
 8003b2e:	f640 2104 	movw	r1, #2564	; 0xa04
 8003b32:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b36:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003b3a:	f8c9 2000 	str.w	r2, [r9]
 8003b3e:	f841 9020 	str.w	r9, [r1, r0, lsl #2]
 8003b42:	f1bb 0f00 	cmp.w	fp, #0
 8003b46:	d011      	beq.n	8003b6c <strtod+0x122c>
 8003b48:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003b4c:	2808      	cmp	r0, #8
 8003b4e:	db03      	blt.n	8003b58 <strtod+0x1218>
 8003b50:	4658      	mov	r0, fp
 8003b52:	f000 fec3 	bl	80048dc <free>
 8003b56:	e009      	b.n	8003b6c <strtod+0x122c>
 8003b58:	f640 2104 	movw	r1, #2564	; 0xa04
 8003b5c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b60:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003b64:	f8cb 2000 	str.w	r2, [fp]
 8003b68:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
 8003b6c:	f000 fe60 	bl	8004830 <__errno>
 8003b70:	2122      	movs	r1, #34	; 0x22
 8003b72:	6001      	str	r1, [r0, #0]
 8003b74:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003b78:	f7ff b8f2 	b.w	8002d60 <strtod+0x420>
 8003b7c:	f64f 7180 	movw	r1, #65408	; 0xff80
 8003b80:	4408      	add	r0, r1
 8003b82:	217f      	movs	r1, #127	; 0x7f
 8003b84:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003b88:	4308      	orrs	r0, r1
 8003b8a:	900d      	str	r0, [sp, #52]	; 0x34
 8003b8c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003b90:	900c      	str	r0, [sp, #48]	; 0x30
 8003b92:	f1ba 0f00 	cmp.w	sl, #0
 8003b96:	d015      	beq.n	8003bc4 <strtod+0x1284>
 8003b98:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003b9c:	2808      	cmp	r0, #8
 8003b9e:	db06      	blt.n	8003bae <strtod+0x126e>
 8003ba0:	4650      	mov	r0, sl
 8003ba2:	461c      	mov	r4, r3
 8003ba4:	f000 fe9a 	bl	80048dc <free>
 8003ba8:	4623      	mov	r3, r4
 8003baa:	b963      	cbnz	r3, 8003bc6 <strtod+0x1286>
 8003bac:	e01f      	b.n	8003bee <strtod+0x12ae>
 8003bae:	f640 2104 	movw	r1, #2564	; 0xa04
 8003bb2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003bb6:	460a      	mov	r2, r1
 8003bb8:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003bbc:	f8ca 1000 	str.w	r1, [sl]
 8003bc0:	f842 a020 	str.w	sl, [r2, r0, lsl #2]
 8003bc4:	b19b      	cbz	r3, 8003bee <strtod+0x12ae>
 8003bc6:	6858      	ldr	r0, [r3, #4]
 8003bc8:	2808      	cmp	r0, #8
 8003bca:	db06      	blt.n	8003bda <strtod+0x129a>
 8003bcc:	4618      	mov	r0, r3
 8003bce:	f000 fe85 	bl	80048dc <free>
 8003bd2:	f1b8 0f00 	cmp.w	r8, #0
 8003bd6:	d10d      	bne.n	8003bf4 <strtod+0x12b4>
 8003bd8:	e01f      	b.n	8003c1a <strtod+0x12da>
 8003bda:	f640 2104 	movw	r1, #2564	; 0xa04
 8003bde:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003be2:	460a      	mov	r2, r1
 8003be4:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003be8:	6019      	str	r1, [r3, #0]
 8003bea:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
 8003bee:	f1b8 0f00 	cmp.w	r8, #0
 8003bf2:	d012      	beq.n	8003c1a <strtod+0x12da>
 8003bf4:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8003bf8:	2808      	cmp	r0, #8
 8003bfa:	db03      	blt.n	8003c04 <strtod+0x12c4>
 8003bfc:	4640      	mov	r0, r8
 8003bfe:	f000 fe6d 	bl	80048dc <free>
 8003c02:	e00a      	b.n	8003c1a <strtod+0x12da>
 8003c04:	f640 2104 	movw	r1, #2564	; 0xa04
 8003c08:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003c0c:	460a      	mov	r2, r1
 8003c0e:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003c12:	f8c8 1000 	str.w	r1, [r8]
 8003c16:	f842 8020 	str.w	r8, [r2, r0, lsl #2]
 8003c1a:	f640 2404 	movw	r4, #2564	; 0xa04
 8003c1e:	f1b9 0f00 	cmp.w	r9, #0
 8003c22:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003c26:	d010      	beq.n	8003c4a <strtod+0x130a>
 8003c28:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003c2c:	2808      	cmp	r0, #8
 8003c2e:	db06      	blt.n	8003c3e <strtod+0x12fe>
 8003c30:	4648      	mov	r0, r9
 8003c32:	f000 fe53 	bl	80048dc <free>
 8003c36:	f1bb 0f00 	cmp.w	fp, #0
 8003c3a:	d109      	bne.n	8003c50 <strtod+0x1310>
 8003c3c:	e013      	b.n	8003c66 <strtod+0x1326>
 8003c3e:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8003c42:	f8c9 1000 	str.w	r1, [r9]
 8003c46:	f844 9020 	str.w	r9, [r4, r0, lsl #2]
 8003c4a:	f1bb 0f00 	cmp.w	fp, #0
 8003c4e:	d00a      	beq.n	8003c66 <strtod+0x1326>
 8003c50:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003c54:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003c58:	2808      	cmp	r0, #8
 8003c5a:	db08      	blt.n	8003c6e <strtod+0x132e>
 8003c5c:	4658      	mov	r0, fp
 8003c5e:	f000 fe3d 	bl	80048dc <free>
 8003c62:	f7ff b87d 	b.w	8002d60 <strtod+0x420>
 8003c66:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003c6a:	f7ff b879 	b.w	8002d60 <strtod+0x420>
 8003c6e:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8003c72:	f8cb 1000 	str.w	r1, [fp]
 8003c76:	f844 b020 	str.w	fp, [r4, r0, lsl #2]
 8003c7a:	f7ff b871 	b.w	8002d60 <strtod+0x420>
 8003c7e:	46a3      	mov	fp, r4
 8003c80:	4633      	mov	r3, r6
 8003c82:	f1ba 0f00 	cmp.w	sl, #0
 8003c86:	f47f af87 	bne.w	8003b98 <strtod+0x1258>
 8003c8a:	e79b      	b.n	8003bc4 <strtod+0x1284>
 8003c8c:	f240 0228 	movw	r2, #40	; 0x28
 8003c90:	f640 2128 	movw	r1, #2600	; 0xa28
 8003c94:	2001      	movs	r0, #1
 8003c96:	f8cd a00c 	str.w	sl, [sp, #12]
 8003c9a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003c9e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ca2:	fa00 fa05 	lsl.w	sl, r0, r5
 8003ca6:	201b      	movs	r0, #27
 8003ca8:	6814      	ldr	r4, [r2, #0]
 8003caa:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 8003cae:	1a61      	subs	r1, r4, r1
 8003cb0:	10c9      	asrs	r1, r1, #3
 8003cb2:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 8003cb6:	08c0      	lsrs	r0, r0, #3
 8003cb8:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8003cbc:	f63f ae75 	bhi.w	80039aa <strtod+0x106a>
 8003cc0:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 8003cc4:	6010      	str	r0, [r2, #0]
 8003cc6:	e674      	b.n	80039b2 <strtod+0x1072>

08003cc8 <d2b>:
 8003cc8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003cca:	af03      	add	r7, sp, #12
 8003ccc:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8003cd0:	4689      	mov	r9, r1
 8003cd2:	f640 2104 	movw	r1, #2564	; 0xa04
 8003cd6:	4606      	mov	r6, r0
 8003cd8:	4690      	mov	r8, r2
 8003cda:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003cde:	6848      	ldr	r0, [r1, #4]
 8003ce0:	b110      	cbz	r0, 8003ce8 <d2b+0x20>
 8003ce2:	6802      	ldr	r2, [r0, #0]
 8003ce4:	604a      	str	r2, [r1, #4]
 8003ce6:	e01a      	b.n	8003d1e <d2b+0x56>
 8003ce8:	f240 0128 	movw	r1, #40	; 0x28
 8003cec:	f640 2228 	movw	r2, #2600	; 0xa28
 8003cf0:	2304      	movs	r3, #4
 8003cf2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003cf6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003cfa:	6808      	ldr	r0, [r1, #0]
 8003cfc:	1a82      	subs	r2, r0, r2
 8003cfe:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8003d02:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8003d06:	d803      	bhi.n	8003d10 <d2b+0x48>
 8003d08:	f100 0220 	add.w	r2, r0, #32
 8003d0c:	600a      	str	r2, [r1, #0]
 8003d0e:	e002      	b.n	8003d16 <d2b+0x4e>
 8003d10:	2020      	movs	r0, #32
 8003d12:	f000 fddb 	bl	80048cc <malloc>
 8003d16:	2101      	movs	r1, #1
 8003d18:	2202      	movs	r2, #2
 8003d1a:	e9c0 1201 	strd	r1, r2, [r0, #4]
 8003d1e:	2100      	movs	r1, #0
 8003d20:	2301      	movs	r3, #1
 8003d22:	e9c0 1103 	strd	r1, r1, [r0, #12]
 8003d26:	6872      	ldr	r2, [r6, #4]
 8003d28:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
 8003d2c:	4615      	mov	r5, r2
 8003d2e:	6071      	str	r1, [r6, #4]
 8003d30:	f363 55df 	bfi	r5, r3, #23, #9
 8003d34:	0dc9      	lsrs	r1, r1, #23
 8003d36:	6836      	ldr	r6, [r6, #0]
 8003d38:	b146      	cbz	r6, 8003d4c <d2b+0x84>
 8003d3a:	0772      	lsls	r2, r6, #29
 8003d3c:	d00f      	beq.n	8003d5e <d2b+0x96>
 8003d3e:	07f2      	lsls	r2, r6, #31
 8003d40:	d133      	bne.n	8003daa <d2b+0xe2>
 8003d42:	07b2      	lsls	r2, r6, #30
 8003d44:	d45c      	bmi.n	8003e00 <d2b+0x138>
 8003d46:	08b4      	lsrs	r4, r6, #2
 8003d48:	2302      	movs	r3, #2
 8003d4a:	e067      	b.n	8003e1c <d2b+0x154>
 8003d4c:	0753      	lsls	r3, r2, #29
 8003d4e:	d030      	beq.n	8003db2 <d2b+0xea>
 8003d50:	07d3      	lsls	r3, r2, #31
 8003d52:	d153      	bne.n	8003dfc <d2b+0x134>
 8003d54:	0792      	lsls	r2, r2, #30
 8003d56:	d458      	bmi.n	8003e0a <d2b+0x142>
 8003d58:	08ad      	lsrs	r5, r5, #2
 8003d5a:	2302      	movs	r3, #2
 8003d5c:	e057      	b.n	8003e0e <d2b+0x146>
 8003d5e:	b2b2      	uxth	r2, r6
 8003d60:	4634      	mov	r4, r6
 8003d62:	2300      	movs	r3, #0
 8003d64:	f04f 0c00 	mov.w	ip, #0
 8003d68:	2a00      	cmp	r2, #0
 8003d6a:	bf08      	it	eq
 8003d6c:	0c24      	lsreq	r4, r4, #16
 8003d6e:	bf08      	it	eq
 8003d70:	2310      	moveq	r3, #16
 8003d72:	b2e2      	uxtb	r2, r4
 8003d74:	2a00      	cmp	r2, #0
 8003d76:	bf04      	itt	eq
 8003d78:	f043 0308 	orreq.w	r3, r3, #8
 8003d7c:	0a24      	lsreq	r4, r4, #8
 8003d7e:	f014 020f 	ands.w	r2, r4, #15
 8003d82:	bf04      	itt	eq
 8003d84:	f043 0304 	orreq.w	r3, r3, #4
 8003d88:	0924      	lsreq	r4, r4, #4
 8003d8a:	f014 0203 	ands.w	r2, r4, #3
 8003d8e:	bf04      	itt	eq
 8003d90:	f043 0302 	orreq.w	r3, r3, #2
 8003d94:	08a4      	lsreq	r4, r4, #2
 8003d96:	f014 0f01 	tst.w	r4, #1
 8003d9a:	d104      	bne.n	8003da6 <d2b+0xde>
 8003d9c:	ebbc 0f54 	cmp.w	ip, r4, lsr #1
 8003da0:	d03a      	beq.n	8003e18 <d2b+0x150>
 8003da2:	0864      	lsrs	r4, r4, #1
 8003da4:	3301      	adds	r3, #1
 8003da6:	bbcb      	cbnz	r3, 8003e1c <d2b+0x154>
 8003da8:	e000      	b.n	8003dac <d2b+0xe4>
 8003daa:	4634      	mov	r4, r6
 8003dac:	6144      	str	r4, [r0, #20]
 8003dae:	2300      	movs	r3, #0
 8003db0:	e03b      	b.n	8003e2a <d2b+0x162>
 8003db2:	b292      	uxth	r2, r2
 8003db4:	2300      	movs	r3, #0
 8003db6:	2600      	movs	r6, #0
 8003db8:	2a00      	cmp	r2, #0
 8003dba:	462a      	mov	r2, r5
 8003dbc:	bf08      	it	eq
 8003dbe:	0c12      	lsreq	r2, r2, #16
 8003dc0:	bf08      	it	eq
 8003dc2:	2310      	moveq	r3, #16
 8003dc4:	b2d4      	uxtb	r4, r2
 8003dc6:	2c00      	cmp	r4, #0
 8003dc8:	bf04      	itt	eq
 8003dca:	f043 0308 	orreq.w	r3, r3, #8
 8003dce:	0a12      	lsreq	r2, r2, #8
 8003dd0:	f012 040f 	ands.w	r4, r2, #15
 8003dd4:	bf04      	itt	eq
 8003dd6:	f043 0304 	orreq.w	r3, r3, #4
 8003dda:	0912      	lsreq	r2, r2, #4
 8003ddc:	f012 0403 	ands.w	r4, r2, #3
 8003de0:	bf04      	itt	eq
 8003de2:	f043 0302 	orreq.w	r3, r3, #2
 8003de6:	0892      	lsreq	r2, r2, #2
 8003de8:	f012 0f01 	tst.w	r2, #1
 8003dec:	d10b      	bne.n	8003e06 <d2b+0x13e>
 8003dee:	ebb6 0f52 	cmp.w	r6, r2, lsr #1
 8003df2:	bf1a      	itte	ne
 8003df4:	0855      	lsrne	r5, r2, #1
 8003df6:	3301      	addne	r3, #1
 8003df8:	2320      	moveq	r3, #32
 8003dfa:	e008      	b.n	8003e0e <d2b+0x146>
 8003dfc:	2300      	movs	r3, #0
 8003dfe:	e006      	b.n	8003e0e <d2b+0x146>
 8003e00:	0874      	lsrs	r4, r6, #1
 8003e02:	2301      	movs	r3, #1
 8003e04:	e00a      	b.n	8003e1c <d2b+0x154>
 8003e06:	4615      	mov	r5, r2
 8003e08:	e001      	b.n	8003e0e <d2b+0x146>
 8003e0a:	086d      	lsrs	r5, r5, #1
 8003e0c:	2301      	movs	r3, #1
 8003e0e:	2201      	movs	r2, #1
 8003e10:	3320      	adds	r3, #32
 8003e12:	e9c0 2504 	strd	r2, r5, [r0, #16]
 8003e16:	e00e      	b.n	8003e36 <d2b+0x16e>
 8003e18:	2320      	movs	r3, #32
 8003e1a:	4634      	mov	r4, r6
 8003e1c:	f1c3 0220 	rsb	r2, r3, #32
 8003e20:	fa05 f202 	lsl.w	r2, r5, r2
 8003e24:	40dd      	lsrs	r5, r3
 8003e26:	4322      	orrs	r2, r4
 8003e28:	6142      	str	r2, [r0, #20]
 8003e2a:	2201      	movs	r2, #1
 8003e2c:	2d00      	cmp	r5, #0
 8003e2e:	6185      	str	r5, [r0, #24]
 8003e30:	bf18      	it	ne
 8003e32:	2202      	movne	r2, #2
 8003e34:	6102      	str	r2, [r0, #16]
 8003e36:	4419      	add	r1, r3
 8003e38:	39b8      	subs	r1, #184	; 0xb8
 8003e3a:	f8c9 1000 	str.w	r1, [r9]
 8003e3e:	f1c3 0138 	rsb	r1, r3, #56	; 0x38
 8003e42:	f8c8 1000 	str.w	r1, [r8]
 8003e46:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8003e4a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003e4c <pow5mult>:
 8003e4c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003e4e:	af03      	add	r7, sp, #12
 8003e50:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8003e54:	b081      	sub	sp, #4
 8003e56:	4688      	mov	r8, r1
 8003e58:	4683      	mov	fp, r0
 8003e5a:	f018 0003 	ands.w	r0, r8, #3
 8003e5e:	d024      	beq.n	8003eaa <pow5mult+0x5e>
 8003e60:	f649 01d0 	movw	r1, #39120	; 0x98d0
 8003e64:	f8db 9010 	ldr.w	r9, [fp, #16]
 8003e68:	2500      	movs	r5, #0
 8003e6a:	2300      	movs	r3, #0
 8003e6c:	2200      	movs	r2, #0
 8003e6e:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003e72:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8003e76:	f850 cc04 	ldr.w	ip, [r0, #-4]
 8003e7a:	ea4f 7eec 	mov.w	lr, ip, asr #31
 8003e7e:	eb0b 0482 	add.w	r4, fp, r2, lsl #2
 8003e82:	3201      	adds	r2, #1
 8003e84:	6966      	ldr	r6, [r4, #20]
 8003e86:	fba6 010c 	umull	r0, r1, r6, ip
 8003e8a:	1940      	adds	r0, r0, r5
 8003e8c:	6160      	str	r0, [r4, #20]
 8003e8e:	fb06 100e 	mla	r0, r6, lr, r1
 8003e92:	eb40 0503 	adc.w	r5, r0, r3
 8003e96:	2300      	movs	r3, #0
 8003e98:	454a      	cmp	r2, r9
 8003e9a:	dbf0      	blt.n	8003e7e <pow5mult+0x32>
 8003e9c:	b12d      	cbz	r5, 8003eaa <pow5mult+0x5e>
 8003e9e:	f8db 0008 	ldr.w	r0, [fp, #8]
 8003ea2:	4581      	cmp	r9, r0
 8003ea4:	da03      	bge.n	8003eae <pow5mult+0x62>
 8003ea6:	46da      	mov	sl, fp
 8003ea8:	e043      	b.n	8003f32 <pow5mult+0xe6>
 8003eaa:	46da      	mov	sl, fp
 8003eac:	e048      	b.n	8003f40 <pow5mult+0xf4>
 8003eae:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003eb2:	1c44      	adds	r4, r0, #1
 8003eb4:	2c07      	cmp	r4, #7
 8003eb6:	dc0e      	bgt.n	8003ed6 <pow5mult+0x8a>
 8003eb8:	f640 2004 	movw	r0, #2564	; 0xa04
 8003ebc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ec0:	f850 a024 	ldr.w	sl, [r0, r4, lsl #2]
 8003ec4:	f1ba 0f00 	cmp.w	sl, #0
 8003ec8:	f000 80a8 	beq.w	800401c <pow5mult+0x1d0>
 8003ecc:	f8da 1000 	ldr.w	r1, [sl]
 8003ed0:	f840 1024 	str.w	r1, [r0, r4, lsl #2]
 8003ed4:	e00c      	b.n	8003ef0 <pow5mult+0xa4>
 8003ed6:	2001      	movs	r0, #1
 8003ed8:	fa00 f604 	lsl.w	r6, r0, r4
 8003edc:	201b      	movs	r0, #27
 8003ede:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 8003ee2:	08c0      	lsrs	r0, r0, #3
 8003ee4:	00c0      	lsls	r0, r0, #3
 8003ee6:	f000 fcf1 	bl	80048cc <malloc>
 8003eea:	4682      	mov	sl, r0
 8003eec:	e9ca 4601 	strd	r4, r6, [sl, #4]
 8003ef0:	2100      	movs	r1, #0
 8003ef2:	4650      	mov	r0, sl
 8003ef4:	2208      	movs	r2, #8
 8003ef6:	f8ca 1010 	str.w	r1, [sl, #16]
 8003efa:	f840 1f0c 	str.w	r1, [r0, #12]!
 8003efe:	f8db 1010 	ldr.w	r1, [fp, #16]
 8003f02:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8003f06:	f10b 010c 	add.w	r1, fp, #12
 8003f0a:	f000 fc8f 	bl	800482c <__aeabi_memcpy>
 8003f0e:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003f12:	2808      	cmp	r0, #8
 8003f14:	db03      	blt.n	8003f1e <pow5mult+0xd2>
 8003f16:	4658      	mov	r0, fp
 8003f18:	f000 fce0 	bl	80048dc <free>
 8003f1c:	e009      	b.n	8003f32 <pow5mult+0xe6>
 8003f1e:	f640 2104 	movw	r1, #2564	; 0xa04
 8003f22:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f26:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003f2a:	f8cb 2000 	str.w	r2, [fp]
 8003f2e:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
 8003f32:	eb0a 0089 	add.w	r0, sl, r9, lsl #2
 8003f36:	6145      	str	r5, [r0, #20]
 8003f38:	f109 0001 	add.w	r0, r9, #1
 8003f3c:	f8ca 0010 	str.w	r0, [sl, #16]
 8003f40:	2000      	movs	r0, #0
 8003f42:	ebb0 0fa8 	cmp.w	r0, r8, asr #2
 8003f46:	d064      	beq.n	8004012 <pow5mult+0x1c6>
 8003f48:	f241 3528 	movw	r5, #4904	; 0x1328
 8003f4c:	ea4f 04a8 	mov.w	r4, r8, asr #2
 8003f50:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8003f54:	6828      	ldr	r0, [r5, #0]
 8003f56:	bb60      	cbnz	r0, 8003fb2 <pow5mult+0x166>
 8003f58:	f640 2104 	movw	r1, #2564	; 0xa04
 8003f5c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f60:	6848      	ldr	r0, [r1, #4]
 8003f62:	b110      	cbz	r0, 8003f6a <pow5mult+0x11e>
 8003f64:	6802      	ldr	r2, [r0, #0]
 8003f66:	604a      	str	r2, [r1, #4]
 8003f68:	e01a      	b.n	8003fa0 <pow5mult+0x154>
 8003f6a:	f240 0128 	movw	r1, #40	; 0x28
 8003f6e:	f640 2228 	movw	r2, #2600	; 0xa28
 8003f72:	2304      	movs	r3, #4
 8003f74:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f78:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003f7c:	6808      	ldr	r0, [r1, #0]
 8003f7e:	1a82      	subs	r2, r0, r2
 8003f80:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8003f84:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8003f88:	d803      	bhi.n	8003f92 <pow5mult+0x146>
 8003f8a:	f100 0220 	add.w	r2, r0, #32
 8003f8e:	600a      	str	r2, [r1, #0]
 8003f90:	e002      	b.n	8003f98 <pow5mult+0x14c>
 8003f92:	2020      	movs	r0, #32
 8003f94:	f000 fc9a 	bl	80048cc <malloc>
 8003f98:	2101      	movs	r1, #1
 8003f9a:	2202      	movs	r2, #2
 8003f9c:	e9c0 1201 	strd	r1, r2, [r0, #4]
 8003fa0:	2100      	movs	r1, #0
 8003fa2:	2301      	movs	r3, #1
 8003fa4:	f240 2271 	movw	r2, #625	; 0x271
 8003fa8:	e9c0 1303 	strd	r1, r3, [r0, #12]
 8003fac:	6142      	str	r2, [r0, #20]
 8003fae:	6028      	str	r0, [r5, #0]
 8003fb0:	6001      	str	r1, [r0, #0]
 8003fb2:	f640 2904 	movw	r9, #2564	; 0xa04
 8003fb6:	f04f 0800 	mov.w	r8, #0
 8003fba:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8003fbe:	e006      	b.n	8003fce <pow5mult+0x182>
 8003fc0:	4628      	mov	r0, r5
 8003fc2:	4629      	mov	r1, r5
 8003fc4:	f000 f848 	bl	8004058 <mult>
 8003fc8:	6028      	str	r0, [r5, #0]
 8003fca:	f8c0 8000 	str.w	r8, [r0]
 8003fce:	4605      	mov	r5, r0
 8003fd0:	07e0      	lsls	r0, r4, #31
 8003fd2:	d016      	beq.n	8004002 <pow5mult+0x1b6>
 8003fd4:	4650      	mov	r0, sl
 8003fd6:	4629      	mov	r1, r5
 8003fd8:	f000 f83e 	bl	8004058 <mult>
 8003fdc:	4606      	mov	r6, r0
 8003fde:	f1ba 0f00 	cmp.w	sl, #0
 8003fe2:	d00d      	beq.n	8004000 <pow5mult+0x1b4>
 8003fe4:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003fe8:	2808      	cmp	r0, #8
 8003fea:	db03      	blt.n	8003ff4 <pow5mult+0x1a8>
 8003fec:	4650      	mov	r0, sl
 8003fee:	f000 fc75 	bl	80048dc <free>
 8003ff2:	e005      	b.n	8004000 <pow5mult+0x1b4>
 8003ff4:	f859 1020 	ldr.w	r1, [r9, r0, lsl #2]
 8003ff8:	f8ca 1000 	str.w	r1, [sl]
 8003ffc:	f849 a020 	str.w	sl, [r9, r0, lsl #2]
 8004000:	46b2      	mov	sl, r6
 8004002:	ebb8 0f64 	cmp.w	r8, r4, asr #1
 8004006:	d004      	beq.n	8004012 <pow5mult+0x1c6>
 8004008:	6828      	ldr	r0, [r5, #0]
 800400a:	1064      	asrs	r4, r4, #1
 800400c:	2800      	cmp	r0, #0
 800400e:	d1de      	bne.n	8003fce <pow5mult+0x182>
 8004010:	e7d6      	b.n	8003fc0 <pow5mult+0x174>
 8004012:	4650      	mov	r0, sl
 8004014:	b001      	add	sp, #4
 8004016:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800401a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800401c:	f240 0128 	movw	r1, #40	; 0x28
 8004020:	f640 2228 	movw	r2, #2600	; 0xa28
 8004024:	2001      	movs	r0, #1
 8004026:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800402a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800402e:	fa00 f604 	lsl.w	r6, r0, r4
 8004032:	201b      	movs	r0, #27
 8004034:	f8d1 a000 	ldr.w	sl, [r1]
 8004038:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 800403c:	ebaa 0202 	sub.w	r2, sl, r2
 8004040:	10d2      	asrs	r2, r2, #3
 8004042:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 8004046:	08c0      	lsrs	r0, r0, #3
 8004048:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 800404c:	f63f af4a 	bhi.w	8003ee4 <pow5mult+0x98>
 8004050:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 8004054:	6008      	str	r0, [r1, #0]
 8004056:	e749      	b.n	8003eec <pow5mult+0xa0>

08004058 <mult>:
 8004058:	b5f0      	push	{r4, r5, r6, r7, lr}
 800405a:	af03      	add	r7, sp, #12
 800405c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8004060:	b083      	sub	sp, #12
 8004062:	690b      	ldr	r3, [r1, #16]
 8004064:	6902      	ldr	r2, [r0, #16]
 8004066:	4605      	mov	r5, r0
 8004068:	429a      	cmp	r2, r3
 800406a:	bfb8      	it	lt
 800406c:	460d      	movlt	r5, r1
 800406e:	e9d5 6301 	ldrd	r6, r3, [r5, #4]
 8004072:	692c      	ldr	r4, [r5, #16]
 8004074:	bfb8      	it	lt
 8004076:	4601      	movlt	r1, r0
 8004078:	f8d1 b010 	ldr.w	fp, [r1, #16]
 800407c:	eb0b 0204 	add.w	r2, fp, r4
 8004080:	429a      	cmp	r2, r3
 8004082:	bfc8      	it	gt
 8004084:	3601      	addgt	r6, #1
 8004086:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800408a:	2e07      	cmp	r6, #7
 800408c:	dc0e      	bgt.n	80040ac <mult+0x54>
 800408e:	f640 2004 	movw	r0, #2564	; 0xa04
 8004092:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004096:	f850 a026 	ldr.w	sl, [r0, r6, lsl #2]
 800409a:	f1ba 0f00 	cmp.w	sl, #0
 800409e:	f000 8080 	beq.w	80041a2 <mult+0x14a>
 80040a2:	f8da 1000 	ldr.w	r1, [sl]
 80040a6:	f840 1026 	str.w	r1, [r0, r6, lsl #2]
 80040aa:	e00d      	b.n	80040c8 <mult+0x70>
 80040ac:	2001      	movs	r0, #1
 80040ae:	fa00 f806 	lsl.w	r8, r0, r6
 80040b2:	201b      	movs	r0, #27
 80040b4:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80040b8:	08c0      	lsrs	r0, r0, #3
 80040ba:	00c0      	lsls	r0, r0, #3
 80040bc:	f000 fc06 	bl	80048cc <malloc>
 80040c0:	4682      	mov	sl, r0
 80040c2:	e9ca 6801 	strd	r6, r8, [sl, #4]
 80040c6:	9a02      	ldr	r2, [sp, #8]
 80040c8:	2000      	movs	r0, #0
 80040ca:	f10a 0914 	add.w	r9, sl, #20
 80040ce:	2a01      	cmp	r2, #1
 80040d0:	e9ca 0003 	strd	r0, r0, [sl, #12]
 80040d4:	db12      	blt.n	80040fc <mult+0xa4>
 80040d6:	eb0a 0182 	add.w	r1, sl, r2, lsl #2
 80040da:	f10a 0218 	add.w	r2, sl, #24
 80040de:	f06f 0014 	mvn.w	r0, #20
 80040e2:	3114      	adds	r1, #20
 80040e4:	eba0 000a 	sub.w	r0, r0, sl
 80040e8:	4291      	cmp	r1, r2
 80040ea:	bf88      	it	hi
 80040ec:	460a      	movhi	r2, r1
 80040ee:	4410      	add	r0, r2
 80040f0:	3004      	adds	r0, #4
 80040f2:	f020 0103 	bic.w	r1, r0, #3
 80040f6:	4648      	mov	r0, r9
 80040f8:	f000 fb94 	bl	8004824 <__aeabi_memclr>
 80040fc:	f1bb 0f01 	cmp.w	fp, #1
 8004100:	db39      	blt.n	8004176 <mult+0x11e>
 8004102:	9901      	ldr	r1, [sp, #4]
 8004104:	f105 0218 	add.w	r2, r5, #24
 8004108:	f105 0314 	add.w	r3, r5, #20
 800410c:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 8004110:	f101 0e14 	add.w	lr, r1, #20
 8004114:	f100 0c14 	add.w	ip, r0, #20
 8004118:	eb05 0084 	add.w	r0, r5, r4, lsl #2
 800411c:	f100 0814 	add.w	r8, r0, #20
 8004120:	f06f 0014 	mvn.w	r0, #20
 8004124:	4590      	cmp	r8, r2
 8004126:	eba0 0005 	sub.w	r0, r0, r5
 800412a:	bf88      	it	hi
 800412c:	4642      	movhi	r2, r8
 800412e:	4410      	add	r0, r2
 8004130:	f020 0003 	bic.w	r0, r0, #3
 8004134:	4450      	add	r0, sl
 8004136:	f100 0b18 	add.w	fp, r0, #24
 800413a:	f85e 4b04 	ldr.w	r4, [lr], #4
 800413e:	2c00      	cmp	r4, #0
 8004140:	d013      	beq.n	800416a <mult+0x112>
 8004142:	2000      	movs	r0, #0
 8004144:	2500      	movs	r5, #0
 8004146:	2200      	movs	r2, #0
 8004148:	f859 6000 	ldr.w	r6, [r9, r0]
 800414c:	5819      	ldr	r1, [r3, r0]
 800414e:	1976      	adds	r6, r6, r5
 8004150:	f142 0500 	adc.w	r5, r2, #0
 8004154:	2200      	movs	r2, #0
 8004156:	fbe1 6504 	umlal	r6, r5, r1, r4
 800415a:	f849 6000 	str.w	r6, [r9, r0]
 800415e:	3004      	adds	r0, #4
 8004160:	1819      	adds	r1, r3, r0
 8004162:	4541      	cmp	r1, r8
 8004164:	d3f0      	bcc.n	8004148 <mult+0xf0>
 8004166:	f8cb 5000 	str.w	r5, [fp]
 800416a:	f10b 0b04 	add.w	fp, fp, #4
 800416e:	f109 0904 	add.w	r9, r9, #4
 8004172:	45e6      	cmp	lr, ip
 8004174:	d3e1      	bcc.n	800413a <mult+0xe2>
 8004176:	9802      	ldr	r0, [sp, #8]
 8004178:	2801      	cmp	r0, #1
 800417a:	db0b      	blt.n	8004194 <mult+0x13c>
 800417c:	3004      	adds	r0, #4
 800417e:	f85a 1020 	ldr.w	r1, [sl, r0, lsl #2]
 8004182:	b931      	cbnz	r1, 8004192 <mult+0x13a>
 8004184:	1e41      	subs	r1, r0, #1
 8004186:	3804      	subs	r0, #4
 8004188:	2801      	cmp	r0, #1
 800418a:	4608      	mov	r0, r1
 800418c:	dcf7      	bgt.n	800417e <mult+0x126>
 800418e:	1f08      	subs	r0, r1, #4
 8004190:	e000      	b.n	8004194 <mult+0x13c>
 8004192:	3804      	subs	r0, #4
 8004194:	f8ca 0010 	str.w	r0, [sl, #16]
 8004198:	4650      	mov	r0, sl
 800419a:	b003      	add	sp, #12
 800419c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80041a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80041a2:	f240 0328 	movw	r3, #40	; 0x28
 80041a6:	f640 2228 	movw	r2, #2600	; 0xa28
 80041aa:	2001      	movs	r0, #1
 80041ac:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80041b0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80041b4:	fa00 f806 	lsl.w	r8, r0, r6
 80041b8:	201b      	movs	r0, #27
 80041ba:	f8d3 a000 	ldr.w	sl, [r3]
 80041be:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80041c2:	ebaa 0202 	sub.w	r2, sl, r2
 80041c6:	10d2      	asrs	r2, r2, #3
 80041c8:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80041cc:	08c0      	lsrs	r0, r0, #3
 80041ce:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80041d2:	f63f af72 	bhi.w	80040ba <mult+0x62>
 80041d6:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 80041da:	6018      	str	r0, [r3, #0]
 80041dc:	e771      	b.n	80040c2 <mult+0x6a>

080041de <diff>:
 80041de:	b5f0      	push	{r4, r5, r6, r7, lr}
 80041e0:	af03      	add	r7, sp, #12
 80041e2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80041e6:	b081      	sub	sp, #4
 80041e8:	460d      	mov	r5, r1
 80041ea:	4682      	mov	sl, r0
 80041ec:	f000 f8cb 	bl	8004386 <cmp>
 80041f0:	2800      	cmp	r0, #0
 80041f2:	d016      	beq.n	8004222 <diff+0x44>
 80041f4:	46ab      	mov	fp, r5
 80041f6:	ea4f 78d0 	mov.w	r8, r0, lsr #31
 80041fa:	bfbc      	itt	lt
 80041fc:	46d3      	movlt	fp, sl
 80041fe:	46aa      	movlt	sl, r5
 8004200:	f8da 5004 	ldr.w	r5, [sl, #4]
 8004204:	2d07      	cmp	r5, #7
 8004206:	dc16      	bgt.n	8004236 <diff+0x58>
 8004208:	f640 2104 	movw	r1, #2564	; 0xa04
 800420c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004210:	f851 0025 	ldr.w	r0, [r1, r5, lsl #2]
 8004214:	2800      	cmp	r0, #0
 8004216:	f000 808a 	beq.w	800432e <diff+0x150>
 800421a:	6802      	ldr	r2, [r0, #0]
 800421c:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
 8004220:	e015      	b.n	800424e <diff+0x70>
 8004222:	f640 2104 	movw	r1, #2564	; 0xa04
 8004226:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800422a:	6808      	ldr	r0, [r1, #0]
 800422c:	2800      	cmp	r0, #0
 800422e:	d06a      	beq.n	8004306 <diff+0x128>
 8004230:	6802      	ldr	r2, [r0, #0]
 8004232:	600a      	str	r2, [r1, #0]
 8004234:	e09e      	b.n	8004374 <diff+0x196>
 8004236:	2001      	movs	r0, #1
 8004238:	fa00 f905 	lsl.w	r9, r0, r5
 800423c:	201b      	movs	r0, #27
 800423e:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8004242:	08c1      	lsrs	r1, r0, #3
 8004244:	00c8      	lsls	r0, r1, #3
 8004246:	f000 fb41 	bl	80048cc <malloc>
 800424a:	e9c0 5901 	strd	r5, r9, [r0, #4]
 800424e:	2100      	movs	r1, #0
 8004250:	f10b 0518 	add.w	r5, fp, #24
 8004254:	f06f 0214 	mvn.w	r2, #20
 8004258:	2414      	movs	r4, #20
 800425a:	e9c0 8103 	strd	r8, r1, [r0, #12]
 800425e:	eba2 020b 	sub.w	r2, r2, fp
 8004262:	f8db 3010 	ldr.w	r3, [fp, #16]
 8004266:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
 800426a:	f103 0814 	add.w	r8, r3, #20
 800426e:	45a8      	cmp	r8, r5
 8004270:	bf88      	it	hi
 8004272:	4645      	movhi	r5, r8
 8004274:	f8da e010 	ldr.w	lr, [sl, #16]
 8004278:	442a      	add	r2, r5
 800427a:	f022 0203 	bic.w	r2, r2, #3
 800427e:	1885      	adds	r5, r0, r2
 8004280:	4452      	add	r2, sl
 8004282:	f105 0c18 	add.w	ip, r5, #24
 8004286:	f102 0518 	add.w	r5, r2, #24
 800428a:	2200      	movs	r2, #0
 800428c:	f85b 6004 	ldr.w	r6, [fp, r4]
 8004290:	f85a 3004 	ldr.w	r3, [sl, r4]
 8004294:	1b9b      	subs	r3, r3, r6
 8004296:	f161 0600 	sbc.w	r6, r1, #0
 800429a:	1a9a      	subs	r2, r3, r2
 800429c:	5102      	str	r2, [r0, r4]
 800429e:	f104 0404 	add.w	r4, r4, #4
 80042a2:	eb66 0201 	sbc.w	r2, r6, r1
 80042a6:	eb0b 0304 	add.w	r3, fp, r4
 80042aa:	f002 0201 	and.w	r2, r2, #1
 80042ae:	4543      	cmp	r3, r8
 80042b0:	d3ec      	bcc.n	800428c <diff+0xae>
 80042b2:	eb0a 038e 	add.w	r3, sl, lr, lsl #2
 80042b6:	3314      	adds	r3, #20
 80042b8:	429d      	cmp	r5, r3
 80042ba:	d219      	bcs.n	80042f0 <diff+0x112>
 80042bc:	2413      	movs	r4, #19
 80042be:	2601      	movs	r6, #1
 80042c0:	eb04 048e 	add.w	r4, r4, lr, lsl #2
 80042c4:	1b64      	subs	r4, r4, r5
 80042c6:	4454      	add	r4, sl
 80042c8:	eb06 0894 	add.w	r8, r6, r4, lsr #2
 80042cc:	4666      	mov	r6, ip
 80042ce:	f855 4b04 	ldr.w	r4, [r5], #4
 80042d2:	1aa2      	subs	r2, r4, r2
 80042d4:	f846 2b04 	str.w	r2, [r6], #4
 80042d8:	f04f 0200 	mov.w	r2, #0
 80042dc:	eb62 0101 	sbc.w	r1, r2, r1
 80042e0:	429d      	cmp	r5, r3
 80042e2:	f001 0201 	and.w	r2, r1, #1
 80042e6:	f04f 0100 	mov.w	r1, #0
 80042ea:	d3f0      	bcc.n	80042ce <diff+0xf0>
 80042ec:	eb0c 0c88 	add.w	ip, ip, r8, lsl #2
 80042f0:	f1ac 0204 	sub.w	r2, ip, #4
 80042f4:	f10e 0101 	add.w	r1, lr, #1
 80042f8:	f852 3904 	ldr.w	r3, [r2], #-4
 80042fc:	3901      	subs	r1, #1
 80042fe:	2b00      	cmp	r3, #0
 8004300:	d0fa      	beq.n	80042f8 <diff+0x11a>
 8004302:	6101      	str	r1, [r0, #16]
 8004304:	e03b      	b.n	800437e <diff+0x1a0>
 8004306:	f240 0128 	movw	r1, #40	; 0x28
 800430a:	f640 2228 	movw	r2, #2600	; 0xa28
 800430e:	2303      	movs	r3, #3
 8004310:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004314:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004318:	6808      	ldr	r0, [r1, #0]
 800431a:	1a82      	subs	r2, r0, r2
 800431c:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8004320:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8004324:	d81f      	bhi.n	8004366 <diff+0x188>
 8004326:	f100 0218 	add.w	r2, r0, #24
 800432a:	600a      	str	r2, [r1, #0]
 800432c:	e01e      	b.n	800436c <diff+0x18e>
 800432e:	f240 0228 	movw	r2, #40	; 0x28
 8004332:	2001      	movs	r0, #1
 8004334:	f640 2328 	movw	r3, #2600	; 0xa28
 8004338:	fa00 f905 	lsl.w	r9, r0, r5
 800433c:	201b      	movs	r0, #27
 800433e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004342:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004346:	eb00 0189 	add.w	r1, r0, r9, lsl #2
 800434a:	6810      	ldr	r0, [r2, #0]
 800434c:	1ac3      	subs	r3, r0, r3
 800434e:	10db      	asrs	r3, r3, #3
 8004350:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 8004354:	08c9      	lsrs	r1, r1, #3
 8004356:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 800435a:	f63f af73 	bhi.w	8004244 <diff+0x66>
 800435e:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 8004362:	6011      	str	r1, [r2, #0]
 8004364:	e771      	b.n	800424a <diff+0x6c>
 8004366:	2018      	movs	r0, #24
 8004368:	f000 fab0 	bl	80048cc <malloc>
 800436c:	2100      	movs	r1, #0
 800436e:	2201      	movs	r2, #1
 8004370:	e9c0 1201 	strd	r1, r2, [r0, #4]
 8004374:	2100      	movs	r1, #0
 8004376:	2201      	movs	r2, #1
 8004378:	e9c0 1203 	strd	r1, r2, [r0, #12]
 800437c:	6141      	str	r1, [r0, #20]
 800437e:	b001      	add	sp, #4
 8004380:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8004384:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004386 <cmp>:
 8004386:	b580      	push	{r7, lr}
 8004388:	466f      	mov	r7, sp
 800438a:	6902      	ldr	r2, [r0, #16]
 800438c:	f8d1 c010 	ldr.w	ip, [r1, #16]
 8004390:	2a02      	cmp	r2, #2
 8004392:	db03      	blt.n	800439c <cmp+0x16>
 8004394:	eb00 0382 	add.w	r3, r0, r2, lsl #2
 8004398:	691b      	ldr	r3, [r3, #16]
 800439a:	b323      	cbz	r3, 80043e6 <cmp+0x60>
 800439c:	f1bc 0f02 	cmp.w	ip, #2
 80043a0:	db03      	blt.n	80043aa <cmp+0x24>
 80043a2:	eb01 038c 	add.w	r3, r1, ip, lsl #2
 80043a6:	691b      	ldr	r3, [r3, #16]
 80043a8:	b353      	cbz	r3, 8004400 <cmp+0x7a>
 80043aa:	ebb2 020c 	subs.w	r2, r2, ip
 80043ae:	d111      	bne.n	80043d4 <cmp+0x4e>
 80043b0:	2210      	movs	r2, #16
 80043b2:	eb02 038c 	add.w	r3, r2, ip, lsl #2
 80043b6:	f100 0c14 	add.w	ip, r0, #20
 80043ba:	18c2      	adds	r2, r0, r3
 80043bc:	4419      	add	r1, r3
 80043be:	680b      	ldr	r3, [r1, #0]
 80043c0:	6810      	ldr	r0, [r2, #0]
 80043c2:	4298      	cmp	r0, r3
 80043c4:	d108      	bne.n	80043d8 <cmp+0x52>
 80043c6:	1f10      	subs	r0, r2, #4
 80043c8:	4562      	cmp	r2, ip
 80043ca:	f1a1 0104 	sub.w	r1, r1, #4
 80043ce:	4602      	mov	r2, r0
 80043d0:	d8f5      	bhi.n	80043be <cmp+0x38>
 80043d2:	2200      	movs	r2, #0
 80043d4:	4610      	mov	r0, r2
 80043d6:	bd80      	pop	{r7, pc}
 80043d8:	f04f 0201 	mov.w	r2, #1
 80043dc:	bf38      	it	cc
 80043de:	f04f 32ff 	movcc.w	r2, #4294967295	; 0xffffffff
 80043e2:	4610      	mov	r0, r2
 80043e4:	bd80      	pop	{r7, pc}
 80043e6:	f240 0030 	movw	r0, #48	; 0x30
 80043ea:	f649 11aa 	movw	r1, #39338	; 0x99aa
 80043ee:	f649 12ae 	movw	r2, #39342	; 0x99ae
 80043f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80043f6:	f6c0 0100 	movt	r1, #2048	; 0x800
 80043fa:	f6c0 0200 	movt	r2, #2048	; 0x800
 80043fe:	e00b      	b.n	8004418 <cmp+0x92>
 8004400:	f240 0030 	movw	r0, #48	; 0x30
 8004404:	f649 11aa 	movw	r1, #39338	; 0x99aa
 8004408:	f649 12d2 	movw	r2, #39378	; 0x99d2
 800440c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004410:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004414:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004418:	6800      	ldr	r0, [r0, #0]
 800441a:	68c0      	ldr	r0, [r0, #12]
 800441c:	f000 fa1e 	bl	800485c <fprintf>
 8004420:	2001      	movs	r0, #1
 8004422:	f000 fa0b 	bl	800483c <exit>

08004426 <initialise_benchmark>:
 8004426:	4770      	bx	lr

08004428 <benchmark>:
 8004428:	b5d0      	push	{r4, r6, r7, lr}
 800442a:	af02      	add	r7, sp, #8
 800442c:	b082      	sub	sp, #8
 800442e:	ed9f 0b30 	vldr	d0, [pc, #192]	; 80044f0 <benchmark+0xc8>
 8004432:	f240 0414 	movw	r4, #20
 8004436:	2100      	movs	r1, #0
 8004438:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800443c:	ed8d 0b00 	vstr	d0, [sp]
 8004440:	6820      	ldr	r0, [r4, #0]
 8004442:	f7fe fa7d 	bl	8002940 <strtod>
 8004446:	ed9d 1b00 	vldr	d1, [sp]
 800444a:	ec51 0b10 	vmov	r0, r1, d0
 800444e:	ec53 2b11 	vmov	r2, r3, d1
 8004452:	f7fb fedb 	bl	800020c <__adddf3>
 8004456:	ec41 0b10 	vmov	d0, r0, r1
 800445a:	2100      	movs	r1, #0
 800445c:	ed8d 0b00 	vstr	d0, [sp]
 8004460:	6860      	ldr	r0, [r4, #4]
 8004462:	f7fe fa6d 	bl	8002940 <strtod>
 8004466:	ed9d 1b00 	vldr	d1, [sp]
 800446a:	ec51 0b10 	vmov	r0, r1, d0
 800446e:	ec53 2b11 	vmov	r2, r3, d1
 8004472:	f7fb fecb 	bl	800020c <__adddf3>
 8004476:	ec41 0b10 	vmov	d0, r0, r1
 800447a:	2100      	movs	r1, #0
 800447c:	ed8d 0b00 	vstr	d0, [sp]
 8004480:	68a0      	ldr	r0, [r4, #8]
 8004482:	f7fe fa5d 	bl	8002940 <strtod>
 8004486:	ed9d 1b00 	vldr	d1, [sp]
 800448a:	ec51 0b10 	vmov	r0, r1, d0
 800448e:	ec53 2b11 	vmov	r2, r3, d1
 8004492:	f7fb febb 	bl	800020c <__adddf3>
 8004496:	ec41 0b10 	vmov	d0, r0, r1
 800449a:	2100      	movs	r1, #0
 800449c:	ed8d 0b00 	vstr	d0, [sp]
 80044a0:	68e0      	ldr	r0, [r4, #12]
 80044a2:	f7fe fa4d 	bl	8002940 <strtod>
 80044a6:	ed9d 1b00 	vldr	d1, [sp]
 80044aa:	ec51 0b10 	vmov	r0, r1, d0
 80044ae:	ec53 2b11 	vmov	r2, r3, d1
 80044b2:	f7fb feab 	bl	800020c <__adddf3>
 80044b6:	ec41 0b10 	vmov	d0, r0, r1
 80044ba:	2100      	movs	r1, #0
 80044bc:	ed8d 0b00 	vstr	d0, [sp]
 80044c0:	6920      	ldr	r0, [r4, #16]
 80044c2:	f7fe fa3d 	bl	8002940 <strtod>
 80044c6:	ed9d 1b00 	vldr	d1, [sp]
 80044ca:	ec51 0b10 	vmov	r0, r1, d0
 80044ce:	ec53 2b11 	vmov	r2, r3, d1
 80044d2:	f7fb fe9b 	bl	800020c <__adddf3>
 80044d6:	ec41 0b10 	vmov	d0, r0, r1
 80044da:	ed8d 0b00 	vstr	d0, [sp]
 80044de:	ed9d 0b00 	vldr	d0, [sp]
 80044e2:	ec51 0b10 	vmov	r0, r1, d0
 80044e6:	f7fc fae1 	bl	8000aac <__aeabi_d2iz>
 80044ea:	b002      	add	sp, #8
 80044ec:	bdd0      	pop	{r4, r6, r7, pc}
 80044ee:	bf00      	nop
	...

080044f8 <verify_benchmark>:
 80044f8:	f241 62a9 	movw	r2, #5801	; 0x16a9
 80044fc:	2100      	movs	r1, #0
 80044fe:	f2c0 0204 	movt	r2, #4
 8004502:	4290      	cmp	r0, r2
 8004504:	bf08      	it	eq
 8004506:	2101      	moveq	r1, #1
 8004508:	4608      	mov	r0, r1
 800450a:	4770      	bx	lr

0800450c <b2d>:
 800450c:	b5b0      	push	{r4, r5, r7, lr}
 800450e:	af02      	add	r7, sp, #8
 8004510:	6902      	ldr	r2, [r0, #16]
 8004512:	f100 0c14 	add.w	ip, r0, #20
 8004516:	eb0c 0e82 	add.w	lr, ip, r2, lsl #2
 800451a:	4673      	mov	r3, lr
 800451c:	f853 0d04 	ldr.w	r0, [r3, #-4]!
 8004520:	2800      	cmp	r0, #0
 8004522:	d05c      	beq.n	80045de <b2d+0xd2>
 8004524:	2500      	movs	r5, #0
 8004526:	4604      	mov	r4, r0
 8004528:	2210      	movs	r2, #16
 800452a:	ebb5 4f10 	cmp.w	r5, r0, lsr #16
 800452e:	bf08      	it	eq
 8004530:	0424      	lsleq	r4, r4, #16
 8004532:	bf18      	it	ne
 8004534:	2200      	movne	r2, #0
 8004536:	ebb5 6f14 	cmp.w	r5, r4, lsr #24
 800453a:	bf04      	itt	eq
 800453c:	f042 0208 	orreq.w	r2, r2, #8
 8004540:	0224      	lsleq	r4, r4, #8
 8004542:	ebb5 7f14 	cmp.w	r5, r4, lsr #28
 8004546:	bf04      	itt	eq
 8004548:	f042 0204 	orreq.w	r2, r2, #4
 800454c:	0124      	lsleq	r4, r4, #4
 800454e:	ebb5 7f94 	cmp.w	r5, r4, lsr #30
 8004552:	bf04      	itt	eq
 8004554:	f042 0202 	orreq.w	r2, r2, #2
 8004558:	00a4      	lsleq	r4, r4, #2
 800455a:	2c00      	cmp	r4, #0
 800455c:	db06      	blt.n	800456c <b2d+0x60>
 800455e:	0064      	lsls	r4, r4, #1
 8004560:	d403      	bmi.n	800456a <b2d+0x5e>
 8004562:	2200      	movs	r2, #0
 8004564:	600a      	str	r2, [r1, #0]
 8004566:	2220      	movs	r2, #32
 8004568:	e016      	b.n	8004598 <b2d+0x8c>
 800456a:	3201      	adds	r2, #1
 800456c:	f1c2 0420 	rsb	r4, r2, #32
 8004570:	2a07      	cmp	r2, #7
 8004572:	600c      	str	r4, [r1, #0]
 8004574:	dc10      	bgt.n	8004598 <b2d+0x8c>
 8004576:	4563      	cmp	r3, ip
 8004578:	f1c2 0108 	rsb	r1, r2, #8
 800457c:	f102 0218 	add.w	r2, r2, #24
 8004580:	bf8c      	ite	hi
 8004582:	f85e 3c08 	ldrhi.w	r3, [lr, #-8]
 8004586:	2300      	movls	r3, #0
 8004588:	fa20 f501 	lsr.w	r5, r0, r1
 800458c:	4090      	lsls	r0, r2
 800458e:	fa23 f101 	lsr.w	r1, r3, r1
 8004592:	ea41 0400 	orr.w	r4, r1, r0
 8004596:	e01d      	b.n	80045d4 <b2d+0xc8>
 8004598:	4563      	cmp	r3, ip
 800459a:	bf86      	itte	hi
 800459c:	f85e 4d08 	ldrhi.w	r4, [lr, #-8]!
 80045a0:	4673      	movhi	r3, lr
 80045a2:	2400      	movls	r4, #0
 80045a4:	f1b2 0108 	subs.w	r1, r2, #8
 80045a8:	d013      	beq.n	80045d2 <b2d+0xc6>
 80045aa:	fa00 f501 	lsl.w	r5, r0, r1
 80045ae:	f1c2 0028 	rsb	r0, r2, #40	; 0x28
 80045b2:	4563      	cmp	r3, ip
 80045b4:	fa04 f101 	lsl.w	r1, r4, r1
 80045b8:	fa24 f200 	lsr.w	r2, r4, r0
 80045bc:	ea45 0502 	orr.w	r5, r5, r2
 80045c0:	bf8c      	ite	hi
 80045c2:	f853 2c04 	ldrhi.w	r2, [r3, #-4]
 80045c6:	2200      	movls	r2, #0
 80045c8:	fa22 f000 	lsr.w	r0, r2, r0
 80045cc:	ea40 0401 	orr.w	r4, r0, r1
 80045d0:	e000      	b.n	80045d4 <b2d+0xc8>
 80045d2:	4605      	mov	r5, r0
 80045d4:	f045 4081 	orr.w	r0, r5, #1082130432	; 0x40800000
 80045d8:	ec40 4b10 	vmov	d0, r4, r0
 80045dc:	bdb0      	pop	{r4, r5, r7, pc}
 80045de:	f240 0030 	movw	r0, #48	; 0x30
 80045e2:	f649 11aa 	movw	r1, #39338	; 0x99aa
 80045e6:	f649 12f6 	movw	r2, #39414	; 0x99f6
 80045ea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80045ee:	f6c0 0100 	movt	r1, #2048	; 0x800
 80045f2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80045f6:	6800      	ldr	r0, [r0, #0]
 80045f8:	68c0      	ldr	r0, [r0, #12]
 80045fa:	f000 f92f 	bl	800485c <fprintf>
 80045fe:	2001      	movs	r0, #1
 8004600:	f000 f91c 	bl	800483c <exit>

08004604 <__io_putchar>:
 8004604:	b580      	push	{r7, lr}
 8004606:	466f      	mov	r7, sp
 8004608:	b082      	sub	sp, #8
 800460a:	9001      	str	r0, [sp, #4]
 800460c:	f241 302c 	movw	r0, #4908	; 0x132c
 8004610:	a901      	add	r1, sp, #4
 8004612:	2201      	movs	r2, #1
 8004614:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8004618:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800461c:	f7fd fbbf 	bl	8001d9e <HAL_UART_Transmit>
 8004620:	9801      	ldr	r0, [sp, #4]
 8004622:	b002      	add	sp, #8
 8004624:	bd80      	pop	{r7, pc}

08004626 <main>:
 8004626:	b5b0      	push	{r4, r5, r7, lr}
 8004628:	af02      	add	r7, sp, #8
 800462a:	f241 312c 	movw	r1, #4908	; 0x132c
 800462e:	f643 0000 	movw	r0, #14336	; 0x3800
 8004632:	220c      	movs	r2, #12
 8004634:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004638:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800463c:	6008      	str	r0, [r1, #0]
 800463e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8004642:	6048      	str	r0, [r1, #4]
 8004644:	2000      	movs	r0, #0
 8004646:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800464a:	6108      	str	r0, [r1, #16]
 800464c:	6248      	str	r0, [r1, #36]	; 0x24
 800464e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8004652:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8004656:	2000      	movs	r0, #0
 8004658:	f7fd fc36 	bl	8001ec8 <BSP_COM_Init>
 800465c:	f7ff fee3 	bl	8004426 <initialise_benchmark>
 8004660:	f649 2036 	movw	r0, #39478	; 0x9a36
 8004664:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004668:	f000 fc3a 	bl	8004ee0 <printf>
 800466c:	f649 20dd 	movw	r0, #39645	; 0x9add
 8004670:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004674:	f000 fc96 	bl	8004fa4 <puts>
 8004678:	f7fc fd98 	bl	80011ac <HAL_Init>
 800467c:	f7fc fdae 	bl	80011dc <HAL_GetTick>
 8004680:	4604      	mov	r4, r0
 8004682:	f7ff fed1 	bl	8004428 <benchmark>
 8004686:	4605      	mov	r5, r0
 8004688:	f7fc fda8 	bl	80011dc <HAL_GetTick>
 800468c:	1b04      	subs	r4, r0, r4
 800468e:	4628      	mov	r0, r5
 8004690:	f7ff ff32 	bl	80044f8 <verify_benchmark>
 8004694:	1c41      	adds	r1, r0, #1
 8004696:	d006      	beq.n	80046a6 <main+0x80>
 8004698:	2801      	cmp	r0, #1
 800469a:	d109      	bne.n	80046b0 <main+0x8a>
 800469c:	f649 2049 	movw	r0, #39497	; 0x9a49
 80046a0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80046a4:	e008      	b.n	80046b8 <main+0x92>
 80046a6:	f649 206d 	movw	r0, #39533	; 0x9a6d
 80046aa:	f6c0 0000 	movt	r0, #2048	; 0x800
 80046ae:	e003      	b.n	80046b8 <main+0x92>
 80046b0:	f649 20a2 	movw	r0, #39586	; 0x9aa2
 80046b4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80046b8:	4621      	mov	r1, r4
 80046ba:	f000 fc11 	bl	8004ee0 <printf>
 80046be:	2000      	movs	r0, #0
 80046c0:	bdb0      	pop	{r4, r5, r7, pc}

080046c2 <SysTick_Handler>:
 80046c2:	b580      	push	{r7, lr}
 80046c4:	466f      	mov	r7, sp
 80046c6:	f7fc fd81 	bl	80011cc <HAL_IncTick>
 80046ca:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80046ce:	f7fc bddb 	b.w	8001288 <HAL_SYSTICK_IRQHandler>

080046d2 <_exit>:
 80046d2:	b580      	push	{r7, lr}
 80046d4:	466f      	mov	r7, sp
 80046d6:	f000 f8ab 	bl	8004830 <__errno>
 80046da:	2116      	movs	r1, #22
 80046dc:	6001      	str	r1, [r0, #0]
 80046de:	e7fe      	b.n	80046de <_exit+0xc>

080046e0 <_read>:
 80046e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80046e2:	af03      	add	r7, sp, #12
 80046e4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80046e8:	4614      	mov	r4, r2
 80046ea:	460d      	mov	r5, r1
 80046ec:	2c01      	cmp	r4, #1
 80046ee:	db06      	blt.n	80046fe <_read+0x1e>
 80046f0:	4626      	mov	r6, r4
 80046f2:	f3af 8000 	nop.w
 80046f6:	f805 0b01 	strb.w	r0, [r5], #1
 80046fa:	3e01      	subs	r6, #1
 80046fc:	d1f9      	bne.n	80046f2 <_read+0x12>
 80046fe:	4620      	mov	r0, r4
 8004700:	f85d bb04 	ldr.w	fp, [sp], #4
 8004704:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004706 <_write>:
 8004706:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004708:	af03      	add	r7, sp, #12
 800470a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800470e:	4614      	mov	r4, r2
 8004710:	460d      	mov	r5, r1
 8004712:	2c01      	cmp	r4, #1
 8004714:	db06      	blt.n	8004724 <_write+0x1e>
 8004716:	4626      	mov	r6, r4
 8004718:	f815 0b01 	ldrb.w	r0, [r5], #1
 800471c:	f7ff ff72 	bl	8004604 <__io_putchar>
 8004720:	3e01      	subs	r6, #1
 8004722:	d1f9      	bne.n	8004718 <_write+0x12>
 8004724:	4620      	mov	r0, r4
 8004726:	f85d bb04 	ldr.w	fp, [sp], #4
 800472a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800472c <_sbrk>:
 800472c:	f241 32b0 	movw	r2, #5040	; 0x13b0
 8004730:	4601      	mov	r1, r0
 8004732:	466b      	mov	r3, sp
 8004734:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004738:	6810      	ldr	r0, [r2, #0]
 800473a:	2800      	cmp	r0, #0
 800473c:	bf02      	ittt	eq
 800473e:	f241 4058 	movweq	r0, #5208	; 0x1458
 8004742:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8004746:	6010      	streq	r0, [r2, #0]
 8004748:	4401      	add	r1, r0
 800474a:	4299      	cmp	r1, r3
 800474c:	bf9c      	itt	ls
 800474e:	6011      	strls	r1, [r2, #0]
 8004750:	4770      	bxls	lr
 8004752:	b580      	push	{r7, lr}
 8004754:	466f      	mov	r7, sp
 8004756:	f000 f86b 	bl	8004830 <__errno>
 800475a:	210c      	movs	r1, #12
 800475c:	6001      	str	r1, [r0, #0]
 800475e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004762:	bd80      	pop	{r7, pc}

08004764 <_close>:
 8004764:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004768:	4770      	bx	lr

0800476a <_fstat>:
 800476a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800476e:	6048      	str	r0, [r1, #4]
 8004770:	2000      	movs	r0, #0
 8004772:	4770      	bx	lr

08004774 <_isatty>:
 8004774:	2001      	movs	r0, #1
 8004776:	4770      	bx	lr

08004778 <_lseek>:
 8004778:	2000      	movs	r0, #0
 800477a:	4770      	bx	lr

0800477c <SystemInit>:
 800477c:	f64e 5088 	movw	r0, #60808	; 0xed88
 8004780:	f04f 0c00 	mov.w	ip, #0
 8004784:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8004788:	6801      	ldr	r1, [r0, #0]
 800478a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800478e:	6001      	str	r1, [r0, #0]
 8004790:	f241 0100 	movw	r1, #4096	; 0x1000
 8004794:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8004798:	680a      	ldr	r2, [r1, #0]
 800479a:	f042 0201 	orr.w	r2, r2, #1
 800479e:	600a      	str	r2, [r1, #0]
 80047a0:	f8c1 c008 	str.w	ip, [r1, #8]
 80047a4:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80047a8:	680b      	ldr	r3, [r1, #0]
 80047aa:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80047ae:	401a      	ands	r2, r3
 80047b0:	600a      	str	r2, [r1, #0]
 80047b2:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80047b6:	60ca      	str	r2, [r1, #12]
 80047b8:	680a      	ldr	r2, [r1, #0]
 80047ba:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80047be:	600a      	str	r2, [r1, #0]
 80047c0:	f8c1 c018 	str.w	ip, [r1, #24]
 80047c4:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80047c8:	f840 1c80 	str.w	r1, [r0, #-128]
 80047cc:	4770      	bx	lr
	...

080047d0 <Reset_Handler>:
 80047d0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8004808 <LoopForever+0x2>
 80047d4:	2100      	movs	r1, #0
 80047d6:	e003      	b.n	80047e0 <LoopCopyDataInit>

080047d8 <CopyDataInit>:
 80047d8:	4b0c      	ldr	r3, [pc, #48]	; (800480c <LoopForever+0x6>)
 80047da:	585b      	ldr	r3, [r3, r1]
 80047dc:	5043      	str	r3, [r0, r1]
 80047de:	3104      	adds	r1, #4

080047e0 <LoopCopyDataInit>:
 80047e0:	480b      	ldr	r0, [pc, #44]	; (8004810 <LoopForever+0xa>)
 80047e2:	4b0c      	ldr	r3, [pc, #48]	; (8004814 <LoopForever+0xe>)
 80047e4:	1842      	adds	r2, r0, r1
 80047e6:	429a      	cmp	r2, r3
 80047e8:	d3f6      	bcc.n	80047d8 <CopyDataInit>
 80047ea:	4a0b      	ldr	r2, [pc, #44]	; (8004818 <LoopForever+0x12>)
 80047ec:	e002      	b.n	80047f4 <LoopFillZerobss>

080047ee <FillZerobss>:
 80047ee:	2300      	movs	r3, #0
 80047f0:	f842 3b04 	str.w	r3, [r2], #4

080047f4 <LoopFillZerobss>:
 80047f4:	4b09      	ldr	r3, [pc, #36]	; (800481c <LoopForever+0x16>)
 80047f6:	429a      	cmp	r2, r3
 80047f8:	d3f9      	bcc.n	80047ee <FillZerobss>
 80047fa:	f7ff ffbf 	bl	800477c <SystemInit>
 80047fe:	f000 f841 	bl	8004884 <__libc_init_array>
 8004802:	f7ff ff10 	bl	8004626 <main>

08004806 <LoopForever>:
 8004806:	e7fe      	b.n	8004806 <LoopForever>
 8004808:	20018000 	.word	0x20018000
 800480c:	08009d88 	.word	0x08009d88
 8004810:	20000000 	.word	0x20000000
 8004814:	200009e0 	.word	0x200009e0
 8004818:	200009e0 	.word	0x200009e0
 800481c:	20001458 	.word	0x20001458

08004820 <ADC1_2_IRQHandler>:
 8004820:	e7fe      	b.n	8004820 <ADC1_2_IRQHandler>
	...

08004824 <__aeabi_memclr>:
 8004824:	2200      	movs	r2, #0
 8004826:	f7fc bae9 	b.w	8000dfc <__aeabi_memset>
 800482a:	bf00      	nop

0800482c <__aeabi_memcpy>:
 800482c:	f7fc bb34 	b.w	8000e98 <memcpy>

08004830 <__errno>:
 8004830:	4b01      	ldr	r3, [pc, #4]	; (8004838 <__errno+0x8>)
 8004832:	6818      	ldr	r0, [r3, #0]
 8004834:	4770      	bx	lr
 8004836:	bf00      	nop
 8004838:	20000030 	.word	0x20000030

0800483c <exit>:
 800483c:	b508      	push	{r3, lr}
 800483e:	2100      	movs	r1, #0
 8004840:	4604      	mov	r4, r0
 8004842:	f002 f9b9 	bl	8006bb8 <__call_exitprocs>
 8004846:	4b04      	ldr	r3, [pc, #16]	; (8004858 <exit+0x1c>)
 8004848:	6818      	ldr	r0, [r3, #0]
 800484a:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 800484c:	b103      	cbz	r3, 8004850 <exit+0x14>
 800484e:	4798      	blx	r3
 8004850:	4620      	mov	r0, r4
 8004852:	f7ff ff3e 	bl	80046d2 <_exit>
 8004856:	bf00      	nop
 8004858:	08009ae0 	.word	0x08009ae0

0800485c <fprintf>:
 800485c:	b40e      	push	{r1, r2, r3}
 800485e:	b510      	push	{r4, lr}
 8004860:	b083      	sub	sp, #12
 8004862:	ab05      	add	r3, sp, #20
 8004864:	4c06      	ldr	r4, [pc, #24]	; (8004880 <fprintf+0x24>)
 8004866:	f853 2b04 	ldr.w	r2, [r3], #4
 800486a:	9301      	str	r3, [sp, #4]
 800486c:	4601      	mov	r1, r0
 800486e:	6820      	ldr	r0, [r4, #0]
 8004870:	f000 fbb2 	bl	8004fd8 <_vfprintf_r>
 8004874:	b003      	add	sp, #12
 8004876:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800487a:	b003      	add	sp, #12
 800487c:	4770      	bx	lr
 800487e:	bf00      	nop
 8004880:	20000030 	.word	0x20000030

08004884 <__libc_init_array>:
 8004884:	b570      	push	{r4, r5, r6, lr}
 8004886:	4e0d      	ldr	r6, [pc, #52]	; (80048bc <__libc_init_array+0x38>)
 8004888:	4d0d      	ldr	r5, [pc, #52]	; (80048c0 <__libc_init_array+0x3c>)
 800488a:	1b76      	subs	r6, r6, r5
 800488c:	10b6      	asrs	r6, r6, #2
 800488e:	d006      	beq.n	800489e <__libc_init_array+0x1a>
 8004890:	2400      	movs	r4, #0
 8004892:	3401      	adds	r4, #1
 8004894:	f855 3b04 	ldr.w	r3, [r5], #4
 8004898:	4798      	blx	r3
 800489a:	42a6      	cmp	r6, r4
 800489c:	d1f9      	bne.n	8004892 <__libc_init_array+0xe>
 800489e:	4e09      	ldr	r6, [pc, #36]	; (80048c4 <__libc_init_array+0x40>)
 80048a0:	4d09      	ldr	r5, [pc, #36]	; (80048c8 <__libc_init_array+0x44>)
 80048a2:	1b76      	subs	r6, r6, r5
 80048a4:	f004 ff2c 	bl	8009700 <_init>
 80048a8:	10b6      	asrs	r6, r6, #2
 80048aa:	d006      	beq.n	80048ba <__libc_init_array+0x36>
 80048ac:	2400      	movs	r4, #0
 80048ae:	3401      	adds	r4, #1
 80048b0:	f855 3b04 	ldr.w	r3, [r5], #4
 80048b4:	4798      	blx	r3
 80048b6:	42a6      	cmp	r6, r4
 80048b8:	d1f9      	bne.n	80048ae <__libc_init_array+0x2a>
 80048ba:	bd70      	pop	{r4, r5, r6, pc}
 80048bc:	08009d78 	.word	0x08009d78
 80048c0:	08009d78 	.word	0x08009d78
 80048c4:	08009d80 	.word	0x08009d80
 80048c8:	08009d78 	.word	0x08009d78

080048cc <malloc>:
 80048cc:	4b02      	ldr	r3, [pc, #8]	; (80048d8 <malloc+0xc>)
 80048ce:	4601      	mov	r1, r0
 80048d0:	6818      	ldr	r0, [r3, #0]
 80048d2:	f000 b80b 	b.w	80048ec <_malloc_r>
 80048d6:	bf00      	nop
 80048d8:	20000030 	.word	0x20000030

080048dc <free>:
 80048dc:	4b02      	ldr	r3, [pc, #8]	; (80048e8 <free+0xc>)
 80048de:	4601      	mov	r1, r0
 80048e0:	6818      	ldr	r0, [r3, #0]
 80048e2:	f003 bb2d 	b.w	8007f40 <_free_r>
 80048e6:	bf00      	nop
 80048e8:	20000030 	.word	0x20000030

080048ec <_malloc_r>:
 80048ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80048f0:	f101 050b 	add.w	r5, r1, #11
 80048f4:	2d16      	cmp	r5, #22
 80048f6:	b083      	sub	sp, #12
 80048f8:	4606      	mov	r6, r0
 80048fa:	d823      	bhi.n	8004944 <_malloc_r+0x58>
 80048fc:	2910      	cmp	r1, #16
 80048fe:	f200 80b9 	bhi.w	8004a74 <_malloc_r+0x188>
 8004902:	f000 fae1 	bl	8004ec8 <__malloc_lock>
 8004906:	2510      	movs	r5, #16
 8004908:	2318      	movs	r3, #24
 800490a:	2002      	movs	r0, #2
 800490c:	4fc5      	ldr	r7, [pc, #788]	; (8004c24 <_malloc_r+0x338>)
 800490e:	443b      	add	r3, r7
 8004910:	f1a3 0208 	sub.w	r2, r3, #8
 8004914:	685c      	ldr	r4, [r3, #4]
 8004916:	4294      	cmp	r4, r2
 8004918:	f000 8166 	beq.w	8004be8 <_malloc_r+0x2fc>
 800491c:	6863      	ldr	r3, [r4, #4]
 800491e:	f023 0303 	bic.w	r3, r3, #3
 8004922:	4423      	add	r3, r4
 8004924:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8004928:	685a      	ldr	r2, [r3, #4]
 800492a:	60e9      	str	r1, [r5, #12]
 800492c:	f042 0201 	orr.w	r2, r2, #1
 8004930:	608d      	str	r5, [r1, #8]
 8004932:	4630      	mov	r0, r6
 8004934:	605a      	str	r2, [r3, #4]
 8004936:	f000 facd 	bl	8004ed4 <__malloc_unlock>
 800493a:	3408      	adds	r4, #8
 800493c:	4620      	mov	r0, r4
 800493e:	b003      	add	sp, #12
 8004940:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004944:	f035 0507 	bics.w	r5, r5, #7
 8004948:	f100 8094 	bmi.w	8004a74 <_malloc_r+0x188>
 800494c:	42a9      	cmp	r1, r5
 800494e:	f200 8091 	bhi.w	8004a74 <_malloc_r+0x188>
 8004952:	f000 fab9 	bl	8004ec8 <__malloc_lock>
 8004956:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800495a:	f0c0 8183 	bcc.w	8004c64 <_malloc_r+0x378>
 800495e:	0a6b      	lsrs	r3, r5, #9
 8004960:	f000 808f 	beq.w	8004a82 <_malloc_r+0x196>
 8004964:	2b04      	cmp	r3, #4
 8004966:	f200 8146 	bhi.w	8004bf6 <_malloc_r+0x30a>
 800496a:	09ab      	lsrs	r3, r5, #6
 800496c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8004970:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8004974:	00c3      	lsls	r3, r0, #3
 8004976:	4fab      	ldr	r7, [pc, #684]	; (8004c24 <_malloc_r+0x338>)
 8004978:	443b      	add	r3, r7
 800497a:	f1a3 0108 	sub.w	r1, r3, #8
 800497e:	685c      	ldr	r4, [r3, #4]
 8004980:	42a1      	cmp	r1, r4
 8004982:	d106      	bne.n	8004992 <_malloc_r+0xa6>
 8004984:	e00c      	b.n	80049a0 <_malloc_r+0xb4>
 8004986:	2a00      	cmp	r2, #0
 8004988:	f280 811d 	bge.w	8004bc6 <_malloc_r+0x2da>
 800498c:	68e4      	ldr	r4, [r4, #12]
 800498e:	42a1      	cmp	r1, r4
 8004990:	d006      	beq.n	80049a0 <_malloc_r+0xb4>
 8004992:	6863      	ldr	r3, [r4, #4]
 8004994:	f023 0303 	bic.w	r3, r3, #3
 8004998:	1b5a      	subs	r2, r3, r5
 800499a:	2a0f      	cmp	r2, #15
 800499c:	ddf3      	ble.n	8004986 <_malloc_r+0x9a>
 800499e:	4660      	mov	r0, ip
 80049a0:	693c      	ldr	r4, [r7, #16]
 80049a2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8004c38 <_malloc_r+0x34c>
 80049a6:	4564      	cmp	r4, ip
 80049a8:	d071      	beq.n	8004a8e <_malloc_r+0x1a2>
 80049aa:	6863      	ldr	r3, [r4, #4]
 80049ac:	f023 0303 	bic.w	r3, r3, #3
 80049b0:	1b5a      	subs	r2, r3, r5
 80049b2:	2a0f      	cmp	r2, #15
 80049b4:	f300 8144 	bgt.w	8004c40 <_malloc_r+0x354>
 80049b8:	2a00      	cmp	r2, #0
 80049ba:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80049be:	f280 8126 	bge.w	8004c0e <_malloc_r+0x322>
 80049c2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80049c6:	f080 8169 	bcs.w	8004c9c <_malloc_r+0x3b0>
 80049ca:	08db      	lsrs	r3, r3, #3
 80049cc:	1c59      	adds	r1, r3, #1
 80049ce:	687a      	ldr	r2, [r7, #4]
 80049d0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80049d4:	f8c4 8008 	str.w	r8, [r4, #8]
 80049d8:	f04f 0e01 	mov.w	lr, #1
 80049dc:	109b      	asrs	r3, r3, #2
 80049de:	fa0e f303 	lsl.w	r3, lr, r3
 80049e2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80049e6:	4313      	orrs	r3, r2
 80049e8:	f1ae 0208 	sub.w	r2, lr, #8
 80049ec:	60e2      	str	r2, [r4, #12]
 80049ee:	607b      	str	r3, [r7, #4]
 80049f0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80049f4:	f8c8 400c 	str.w	r4, [r8, #12]
 80049f8:	1082      	asrs	r2, r0, #2
 80049fa:	2401      	movs	r4, #1
 80049fc:	4094      	lsls	r4, r2
 80049fe:	429c      	cmp	r4, r3
 8004a00:	d84b      	bhi.n	8004a9a <_malloc_r+0x1ae>
 8004a02:	421c      	tst	r4, r3
 8004a04:	d106      	bne.n	8004a14 <_malloc_r+0x128>
 8004a06:	f020 0003 	bic.w	r0, r0, #3
 8004a0a:	0064      	lsls	r4, r4, #1
 8004a0c:	421c      	tst	r4, r3
 8004a0e:	f100 0004 	add.w	r0, r0, #4
 8004a12:	d0fa      	beq.n	8004a0a <_malloc_r+0x11e>
 8004a14:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8004a18:	46ce      	mov	lr, r9
 8004a1a:	4680      	mov	r8, r0
 8004a1c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8004a20:	459e      	cmp	lr, r3
 8004a22:	d107      	bne.n	8004a34 <_malloc_r+0x148>
 8004a24:	e122      	b.n	8004c6c <_malloc_r+0x380>
 8004a26:	2a00      	cmp	r2, #0
 8004a28:	f280 8129 	bge.w	8004c7e <_malloc_r+0x392>
 8004a2c:	68db      	ldr	r3, [r3, #12]
 8004a2e:	459e      	cmp	lr, r3
 8004a30:	f000 811c 	beq.w	8004c6c <_malloc_r+0x380>
 8004a34:	6859      	ldr	r1, [r3, #4]
 8004a36:	f021 0103 	bic.w	r1, r1, #3
 8004a3a:	1b4a      	subs	r2, r1, r5
 8004a3c:	2a0f      	cmp	r2, #15
 8004a3e:	ddf2      	ble.n	8004a26 <_malloc_r+0x13a>
 8004a40:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8004a44:	195c      	adds	r4, r3, r5
 8004a46:	f045 0501 	orr.w	r5, r5, #1
 8004a4a:	605d      	str	r5, [r3, #4]
 8004a4c:	f042 0501 	orr.w	r5, r2, #1
 8004a50:	f8c8 e00c 	str.w	lr, [r8, #12]
 8004a54:	4630      	mov	r0, r6
 8004a56:	f8ce 8008 	str.w	r8, [lr, #8]
 8004a5a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8004a5e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8004a62:	6065      	str	r5, [r4, #4]
 8004a64:	505a      	str	r2, [r3, r1]
 8004a66:	9301      	str	r3, [sp, #4]
 8004a68:	f000 fa34 	bl	8004ed4 <__malloc_unlock>
 8004a6c:	9b01      	ldr	r3, [sp, #4]
 8004a6e:	f103 0408 	add.w	r4, r3, #8
 8004a72:	e763      	b.n	800493c <_malloc_r+0x50>
 8004a74:	2400      	movs	r4, #0
 8004a76:	230c      	movs	r3, #12
 8004a78:	4620      	mov	r0, r4
 8004a7a:	6033      	str	r3, [r6, #0]
 8004a7c:	b003      	add	sp, #12
 8004a7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a82:	f44f 7300 	mov.w	r3, #512	; 0x200
 8004a86:	2040      	movs	r0, #64	; 0x40
 8004a88:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8004a8c:	e773      	b.n	8004976 <_malloc_r+0x8a>
 8004a8e:	687b      	ldr	r3, [r7, #4]
 8004a90:	1082      	asrs	r2, r0, #2
 8004a92:	2401      	movs	r4, #1
 8004a94:	4094      	lsls	r4, r2
 8004a96:	429c      	cmp	r4, r3
 8004a98:	d9b3      	bls.n	8004a02 <_malloc_r+0x116>
 8004a9a:	68bc      	ldr	r4, [r7, #8]
 8004a9c:	6863      	ldr	r3, [r4, #4]
 8004a9e:	f023 0903 	bic.w	r9, r3, #3
 8004aa2:	45a9      	cmp	r9, r5
 8004aa4:	d303      	bcc.n	8004aae <_malloc_r+0x1c2>
 8004aa6:	eba9 0305 	sub.w	r3, r9, r5
 8004aaa:	2b0f      	cmp	r3, #15
 8004aac:	dc7b      	bgt.n	8004ba6 <_malloc_r+0x2ba>
 8004aae:	4b5e      	ldr	r3, [pc, #376]	; (8004c28 <_malloc_r+0x33c>)
 8004ab0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8004c3c <_malloc_r+0x350>
 8004ab4:	681a      	ldr	r2, [r3, #0]
 8004ab6:	f8da 3000 	ldr.w	r3, [sl]
 8004aba:	3301      	adds	r3, #1
 8004abc:	eb05 0802 	add.w	r8, r5, r2
 8004ac0:	f000 8148 	beq.w	8004d54 <_malloc_r+0x468>
 8004ac4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8004ac8:	f108 080f 	add.w	r8, r8, #15
 8004acc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8004ad0:	f028 080f 	bic.w	r8, r8, #15
 8004ad4:	4641      	mov	r1, r8
 8004ad6:	4630      	mov	r0, r6
 8004ad8:	f000 fa6c 	bl	8004fb4 <_sbrk_r>
 8004adc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8004ae0:	4683      	mov	fp, r0
 8004ae2:	f000 8104 	beq.w	8004cee <_malloc_r+0x402>
 8004ae6:	eb04 0009 	add.w	r0, r4, r9
 8004aea:	4558      	cmp	r0, fp
 8004aec:	f200 80fd 	bhi.w	8004cea <_malloc_r+0x3fe>
 8004af0:	4a4e      	ldr	r2, [pc, #312]	; (8004c2c <_malloc_r+0x340>)
 8004af2:	6813      	ldr	r3, [r2, #0]
 8004af4:	4443      	add	r3, r8
 8004af6:	6013      	str	r3, [r2, #0]
 8004af8:	f000 814d 	beq.w	8004d96 <_malloc_r+0x4aa>
 8004afc:	f8da 1000 	ldr.w	r1, [sl]
 8004b00:	3101      	adds	r1, #1
 8004b02:	bf1b      	ittet	ne
 8004b04:	ebab 0000 	subne.w	r0, fp, r0
 8004b08:	181b      	addne	r3, r3, r0
 8004b0a:	f8ca b000 	streq.w	fp, [sl]
 8004b0e:	6013      	strne	r3, [r2, #0]
 8004b10:	f01b 0307 	ands.w	r3, fp, #7
 8004b14:	f000 8134 	beq.w	8004d80 <_malloc_r+0x494>
 8004b18:	f1c3 0108 	rsb	r1, r3, #8
 8004b1c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8004b20:	448b      	add	fp, r1
 8004b22:	3308      	adds	r3, #8
 8004b24:	44d8      	add	r8, fp
 8004b26:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8004b2a:	eba3 0808 	sub.w	r8, r3, r8
 8004b2e:	4641      	mov	r1, r8
 8004b30:	4630      	mov	r0, r6
 8004b32:	9201      	str	r2, [sp, #4]
 8004b34:	f000 fa3e 	bl	8004fb4 <_sbrk_r>
 8004b38:	1c43      	adds	r3, r0, #1
 8004b3a:	9a01      	ldr	r2, [sp, #4]
 8004b3c:	f000 8146 	beq.w	8004dcc <_malloc_r+0x4e0>
 8004b40:	eba0 010b 	sub.w	r1, r0, fp
 8004b44:	4441      	add	r1, r8
 8004b46:	f041 0101 	orr.w	r1, r1, #1
 8004b4a:	6813      	ldr	r3, [r2, #0]
 8004b4c:	f8c7 b008 	str.w	fp, [r7, #8]
 8004b50:	4443      	add	r3, r8
 8004b52:	42bc      	cmp	r4, r7
 8004b54:	f8cb 1004 	str.w	r1, [fp, #4]
 8004b58:	6013      	str	r3, [r2, #0]
 8004b5a:	d015      	beq.n	8004b88 <_malloc_r+0x29c>
 8004b5c:	f1b9 0f0f 	cmp.w	r9, #15
 8004b60:	f240 8130 	bls.w	8004dc4 <_malloc_r+0x4d8>
 8004b64:	6860      	ldr	r0, [r4, #4]
 8004b66:	f1a9 010c 	sub.w	r1, r9, #12
 8004b6a:	f021 0107 	bic.w	r1, r1, #7
 8004b6e:	f000 0001 	and.w	r0, r0, #1
 8004b72:	eb04 0c01 	add.w	ip, r4, r1
 8004b76:	4308      	orrs	r0, r1
 8004b78:	f04f 0e05 	mov.w	lr, #5
 8004b7c:	290f      	cmp	r1, #15
 8004b7e:	6060      	str	r0, [r4, #4]
 8004b80:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8004b84:	f200 813a 	bhi.w	8004dfc <_malloc_r+0x510>
 8004b88:	4a29      	ldr	r2, [pc, #164]	; (8004c30 <_malloc_r+0x344>)
 8004b8a:	482a      	ldr	r0, [pc, #168]	; (8004c34 <_malloc_r+0x348>)
 8004b8c:	6811      	ldr	r1, [r2, #0]
 8004b8e:	68bc      	ldr	r4, [r7, #8]
 8004b90:	428b      	cmp	r3, r1
 8004b92:	6801      	ldr	r1, [r0, #0]
 8004b94:	bf88      	it	hi
 8004b96:	6013      	strhi	r3, [r2, #0]
 8004b98:	6862      	ldr	r2, [r4, #4]
 8004b9a:	428b      	cmp	r3, r1
 8004b9c:	f022 0203 	bic.w	r2, r2, #3
 8004ba0:	bf88      	it	hi
 8004ba2:	6003      	strhi	r3, [r0, #0]
 8004ba4:	e0a7      	b.n	8004cf6 <_malloc_r+0x40a>
 8004ba6:	1962      	adds	r2, r4, r5
 8004ba8:	f043 0301 	orr.w	r3, r3, #1
 8004bac:	f045 0501 	orr.w	r5, r5, #1
 8004bb0:	6065      	str	r5, [r4, #4]
 8004bb2:	4630      	mov	r0, r6
 8004bb4:	60ba      	str	r2, [r7, #8]
 8004bb6:	6053      	str	r3, [r2, #4]
 8004bb8:	f000 f98c 	bl	8004ed4 <__malloc_unlock>
 8004bbc:	3408      	adds	r4, #8
 8004bbe:	4620      	mov	r0, r4
 8004bc0:	b003      	add	sp, #12
 8004bc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004bc6:	4423      	add	r3, r4
 8004bc8:	68e1      	ldr	r1, [r4, #12]
 8004bca:	685a      	ldr	r2, [r3, #4]
 8004bcc:	68a5      	ldr	r5, [r4, #8]
 8004bce:	f042 0201 	orr.w	r2, r2, #1
 8004bd2:	60e9      	str	r1, [r5, #12]
 8004bd4:	4630      	mov	r0, r6
 8004bd6:	608d      	str	r5, [r1, #8]
 8004bd8:	605a      	str	r2, [r3, #4]
 8004bda:	f000 f97b 	bl	8004ed4 <__malloc_unlock>
 8004bde:	3408      	adds	r4, #8
 8004be0:	4620      	mov	r0, r4
 8004be2:	b003      	add	sp, #12
 8004be4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004be8:	68dc      	ldr	r4, [r3, #12]
 8004bea:	42a3      	cmp	r3, r4
 8004bec:	bf08      	it	eq
 8004bee:	3002      	addeq	r0, #2
 8004bf0:	f43f aed6 	beq.w	80049a0 <_malloc_r+0xb4>
 8004bf4:	e692      	b.n	800491c <_malloc_r+0x30>
 8004bf6:	2b14      	cmp	r3, #20
 8004bf8:	d971      	bls.n	8004cde <_malloc_r+0x3f2>
 8004bfa:	2b54      	cmp	r3, #84	; 0x54
 8004bfc:	f200 80ad 	bhi.w	8004d5a <_malloc_r+0x46e>
 8004c00:	0b2b      	lsrs	r3, r5, #12
 8004c02:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8004c06:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8004c0a:	00c3      	lsls	r3, r0, #3
 8004c0c:	e6b3      	b.n	8004976 <_malloc_r+0x8a>
 8004c0e:	4423      	add	r3, r4
 8004c10:	4630      	mov	r0, r6
 8004c12:	685a      	ldr	r2, [r3, #4]
 8004c14:	f042 0201 	orr.w	r2, r2, #1
 8004c18:	605a      	str	r2, [r3, #4]
 8004c1a:	3408      	adds	r4, #8
 8004c1c:	f000 f95a 	bl	8004ed4 <__malloc_unlock>
 8004c20:	e68c      	b.n	800493c <_malloc_r+0x50>
 8004c22:	bf00      	nop
 8004c24:	20000460 	.word	0x20000460
 8004c28:	200013e4 	.word	0x200013e4
 8004c2c:	200013b4 	.word	0x200013b4
 8004c30:	200013dc 	.word	0x200013dc
 8004c34:	200013e0 	.word	0x200013e0
 8004c38:	20000468 	.word	0x20000468
 8004c3c:	20000868 	.word	0x20000868
 8004c40:	1961      	adds	r1, r4, r5
 8004c42:	f045 0e01 	orr.w	lr, r5, #1
 8004c46:	f042 0501 	orr.w	r5, r2, #1
 8004c4a:	f8c4 e004 	str.w	lr, [r4, #4]
 8004c4e:	4630      	mov	r0, r6
 8004c50:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8004c54:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8004c58:	604d      	str	r5, [r1, #4]
 8004c5a:	50e2      	str	r2, [r4, r3]
 8004c5c:	f000 f93a 	bl	8004ed4 <__malloc_unlock>
 8004c60:	3408      	adds	r4, #8
 8004c62:	e66b      	b.n	800493c <_malloc_r+0x50>
 8004c64:	08e8      	lsrs	r0, r5, #3
 8004c66:	f105 0308 	add.w	r3, r5, #8
 8004c6a:	e64f      	b.n	800490c <_malloc_r+0x20>
 8004c6c:	f108 0801 	add.w	r8, r8, #1
 8004c70:	f018 0f03 	tst.w	r8, #3
 8004c74:	f10e 0e08 	add.w	lr, lr, #8
 8004c78:	f47f aed0 	bne.w	8004a1c <_malloc_r+0x130>
 8004c7c:	e052      	b.n	8004d24 <_malloc_r+0x438>
 8004c7e:	4419      	add	r1, r3
 8004c80:	461c      	mov	r4, r3
 8004c82:	684a      	ldr	r2, [r1, #4]
 8004c84:	68db      	ldr	r3, [r3, #12]
 8004c86:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8004c8a:	f042 0201 	orr.w	r2, r2, #1
 8004c8e:	604a      	str	r2, [r1, #4]
 8004c90:	4630      	mov	r0, r6
 8004c92:	60eb      	str	r3, [r5, #12]
 8004c94:	609d      	str	r5, [r3, #8]
 8004c96:	f000 f91d 	bl	8004ed4 <__malloc_unlock>
 8004c9a:	e64f      	b.n	800493c <_malloc_r+0x50>
 8004c9c:	0a5a      	lsrs	r2, r3, #9
 8004c9e:	2a04      	cmp	r2, #4
 8004ca0:	d935      	bls.n	8004d0e <_malloc_r+0x422>
 8004ca2:	2a14      	cmp	r2, #20
 8004ca4:	d86f      	bhi.n	8004d86 <_malloc_r+0x49a>
 8004ca6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8004caa:	00c9      	lsls	r1, r1, #3
 8004cac:	325b      	adds	r2, #91	; 0x5b
 8004cae:	eb07 0e01 	add.w	lr, r7, r1
 8004cb2:	5879      	ldr	r1, [r7, r1]
 8004cb4:	f1ae 0e08 	sub.w	lr, lr, #8
 8004cb8:	458e      	cmp	lr, r1
 8004cba:	d058      	beq.n	8004d6e <_malloc_r+0x482>
 8004cbc:	684a      	ldr	r2, [r1, #4]
 8004cbe:	f022 0203 	bic.w	r2, r2, #3
 8004cc2:	429a      	cmp	r2, r3
 8004cc4:	d902      	bls.n	8004ccc <_malloc_r+0x3e0>
 8004cc6:	6889      	ldr	r1, [r1, #8]
 8004cc8:	458e      	cmp	lr, r1
 8004cca:	d1f7      	bne.n	8004cbc <_malloc_r+0x3d0>
 8004ccc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8004cd0:	687b      	ldr	r3, [r7, #4]
 8004cd2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8004cd6:	f8ce 4008 	str.w	r4, [lr, #8]
 8004cda:	60cc      	str	r4, [r1, #12]
 8004cdc:	e68c      	b.n	80049f8 <_malloc_r+0x10c>
 8004cde:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8004ce2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8004ce6:	00c3      	lsls	r3, r0, #3
 8004ce8:	e645      	b.n	8004976 <_malloc_r+0x8a>
 8004cea:	42bc      	cmp	r4, r7
 8004cec:	d072      	beq.n	8004dd4 <_malloc_r+0x4e8>
 8004cee:	68bc      	ldr	r4, [r7, #8]
 8004cf0:	6862      	ldr	r2, [r4, #4]
 8004cf2:	f022 0203 	bic.w	r2, r2, #3
 8004cf6:	4295      	cmp	r5, r2
 8004cf8:	eba2 0305 	sub.w	r3, r2, r5
 8004cfc:	d802      	bhi.n	8004d04 <_malloc_r+0x418>
 8004cfe:	2b0f      	cmp	r3, #15
 8004d00:	f73f af51 	bgt.w	8004ba6 <_malloc_r+0x2ba>
 8004d04:	4630      	mov	r0, r6
 8004d06:	f000 f8e5 	bl	8004ed4 <__malloc_unlock>
 8004d0a:	2400      	movs	r4, #0
 8004d0c:	e616      	b.n	800493c <_malloc_r+0x50>
 8004d0e:	099a      	lsrs	r2, r3, #6
 8004d10:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8004d14:	00c9      	lsls	r1, r1, #3
 8004d16:	3238      	adds	r2, #56	; 0x38
 8004d18:	e7c9      	b.n	8004cae <_malloc_r+0x3c2>
 8004d1a:	f8d9 9000 	ldr.w	r9, [r9]
 8004d1e:	4599      	cmp	r9, r3
 8004d20:	f040 8083 	bne.w	8004e2a <_malloc_r+0x53e>
 8004d24:	f010 0f03 	tst.w	r0, #3
 8004d28:	f1a9 0308 	sub.w	r3, r9, #8
 8004d2c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8004d30:	d1f3      	bne.n	8004d1a <_malloc_r+0x42e>
 8004d32:	687b      	ldr	r3, [r7, #4]
 8004d34:	ea23 0304 	bic.w	r3, r3, r4
 8004d38:	607b      	str	r3, [r7, #4]
 8004d3a:	0064      	lsls	r4, r4, #1
 8004d3c:	429c      	cmp	r4, r3
 8004d3e:	f63f aeac 	bhi.w	8004a9a <_malloc_r+0x1ae>
 8004d42:	b91c      	cbnz	r4, 8004d4c <_malloc_r+0x460>
 8004d44:	e6a9      	b.n	8004a9a <_malloc_r+0x1ae>
 8004d46:	0064      	lsls	r4, r4, #1
 8004d48:	f108 0804 	add.w	r8, r8, #4
 8004d4c:	421c      	tst	r4, r3
 8004d4e:	d0fa      	beq.n	8004d46 <_malloc_r+0x45a>
 8004d50:	4640      	mov	r0, r8
 8004d52:	e65f      	b.n	8004a14 <_malloc_r+0x128>
 8004d54:	f108 0810 	add.w	r8, r8, #16
 8004d58:	e6bc      	b.n	8004ad4 <_malloc_r+0x1e8>
 8004d5a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8004d5e:	d826      	bhi.n	8004dae <_malloc_r+0x4c2>
 8004d60:	0beb      	lsrs	r3, r5, #15
 8004d62:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8004d66:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8004d6a:	00c3      	lsls	r3, r0, #3
 8004d6c:	e603      	b.n	8004976 <_malloc_r+0x8a>
 8004d6e:	687b      	ldr	r3, [r7, #4]
 8004d70:	1092      	asrs	r2, r2, #2
 8004d72:	f04f 0801 	mov.w	r8, #1
 8004d76:	fa08 f202 	lsl.w	r2, r8, r2
 8004d7a:	4313      	orrs	r3, r2
 8004d7c:	607b      	str	r3, [r7, #4]
 8004d7e:	e7a8      	b.n	8004cd2 <_malloc_r+0x3e6>
 8004d80:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8004d84:	e6ce      	b.n	8004b24 <_malloc_r+0x238>
 8004d86:	2a54      	cmp	r2, #84	; 0x54
 8004d88:	d829      	bhi.n	8004dde <_malloc_r+0x4f2>
 8004d8a:	0b1a      	lsrs	r2, r3, #12
 8004d8c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8004d90:	00c9      	lsls	r1, r1, #3
 8004d92:	326e      	adds	r2, #110	; 0x6e
 8004d94:	e78b      	b.n	8004cae <_malloc_r+0x3c2>
 8004d96:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8004d9a:	2900      	cmp	r1, #0
 8004d9c:	f47f aeae 	bne.w	8004afc <_malloc_r+0x210>
 8004da0:	eb09 0208 	add.w	r2, r9, r8
 8004da4:	68b9      	ldr	r1, [r7, #8]
 8004da6:	f042 0201 	orr.w	r2, r2, #1
 8004daa:	604a      	str	r2, [r1, #4]
 8004dac:	e6ec      	b.n	8004b88 <_malloc_r+0x29c>
 8004dae:	f240 5254 	movw	r2, #1364	; 0x554
 8004db2:	4293      	cmp	r3, r2
 8004db4:	d81c      	bhi.n	8004df0 <_malloc_r+0x504>
 8004db6:	0cab      	lsrs	r3, r5, #18
 8004db8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8004dbc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8004dc0:	00c3      	lsls	r3, r0, #3
 8004dc2:	e5d8      	b.n	8004976 <_malloc_r+0x8a>
 8004dc4:	2301      	movs	r3, #1
 8004dc6:	f8cb 3004 	str.w	r3, [fp, #4]
 8004dca:	e79b      	b.n	8004d04 <_malloc_r+0x418>
 8004dcc:	2101      	movs	r1, #1
 8004dce:	f04f 0800 	mov.w	r8, #0
 8004dd2:	e6ba      	b.n	8004b4a <_malloc_r+0x25e>
 8004dd4:	4a16      	ldr	r2, [pc, #88]	; (8004e30 <_malloc_r+0x544>)
 8004dd6:	6813      	ldr	r3, [r2, #0]
 8004dd8:	4443      	add	r3, r8
 8004dda:	6013      	str	r3, [r2, #0]
 8004ddc:	e68e      	b.n	8004afc <_malloc_r+0x210>
 8004dde:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8004de2:	d814      	bhi.n	8004e0e <_malloc_r+0x522>
 8004de4:	0bda      	lsrs	r2, r3, #15
 8004de6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8004dea:	00c9      	lsls	r1, r1, #3
 8004dec:	3277      	adds	r2, #119	; 0x77
 8004dee:	e75e      	b.n	8004cae <_malloc_r+0x3c2>
 8004df0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8004df4:	207f      	movs	r0, #127	; 0x7f
 8004df6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8004dfa:	e5bc      	b.n	8004976 <_malloc_r+0x8a>
 8004dfc:	f104 0108 	add.w	r1, r4, #8
 8004e00:	4630      	mov	r0, r6
 8004e02:	9201      	str	r2, [sp, #4]
 8004e04:	f003 f89c 	bl	8007f40 <_free_r>
 8004e08:	9a01      	ldr	r2, [sp, #4]
 8004e0a:	6813      	ldr	r3, [r2, #0]
 8004e0c:	e6bc      	b.n	8004b88 <_malloc_r+0x29c>
 8004e0e:	f240 5154 	movw	r1, #1364	; 0x554
 8004e12:	428a      	cmp	r2, r1
 8004e14:	d805      	bhi.n	8004e22 <_malloc_r+0x536>
 8004e16:	0c9a      	lsrs	r2, r3, #18
 8004e18:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8004e1c:	00c9      	lsls	r1, r1, #3
 8004e1e:	327c      	adds	r2, #124	; 0x7c
 8004e20:	e745      	b.n	8004cae <_malloc_r+0x3c2>
 8004e22:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8004e26:	227e      	movs	r2, #126	; 0x7e
 8004e28:	e741      	b.n	8004cae <_malloc_r+0x3c2>
 8004e2a:	687b      	ldr	r3, [r7, #4]
 8004e2c:	e785      	b.n	8004d3a <_malloc_r+0x44e>
 8004e2e:	bf00      	nop
 8004e30:	200013b4 	.word	0x200013b4

08004e34 <memset>:
 8004e34:	b4f0      	push	{r4, r5, r6, r7}
 8004e36:	0786      	lsls	r6, r0, #30
 8004e38:	d043      	beq.n	8004ec2 <memset+0x8e>
 8004e3a:	1e54      	subs	r4, r2, #1
 8004e3c:	2a00      	cmp	r2, #0
 8004e3e:	d03e      	beq.n	8004ebe <memset+0x8a>
 8004e40:	b2ca      	uxtb	r2, r1
 8004e42:	4603      	mov	r3, r0
 8004e44:	e002      	b.n	8004e4c <memset+0x18>
 8004e46:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8004e4a:	d338      	bcc.n	8004ebe <memset+0x8a>
 8004e4c:	f803 2b01 	strb.w	r2, [r3], #1
 8004e50:	079d      	lsls	r5, r3, #30
 8004e52:	d1f8      	bne.n	8004e46 <memset+0x12>
 8004e54:	2c03      	cmp	r4, #3
 8004e56:	d92b      	bls.n	8004eb0 <memset+0x7c>
 8004e58:	b2cd      	uxtb	r5, r1
 8004e5a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8004e5e:	2c0f      	cmp	r4, #15
 8004e60:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8004e64:	d916      	bls.n	8004e94 <memset+0x60>
 8004e66:	f1a4 0710 	sub.w	r7, r4, #16
 8004e6a:	093f      	lsrs	r7, r7, #4
 8004e6c:	f103 0620 	add.w	r6, r3, #32
 8004e70:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8004e74:	f103 0210 	add.w	r2, r3, #16
 8004e78:	e942 5504 	strd	r5, r5, [r2, #-16]
 8004e7c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8004e80:	3210      	adds	r2, #16
 8004e82:	42b2      	cmp	r2, r6
 8004e84:	d1f8      	bne.n	8004e78 <memset+0x44>
 8004e86:	f004 040f 	and.w	r4, r4, #15
 8004e8a:	3701      	adds	r7, #1
 8004e8c:	2c03      	cmp	r4, #3
 8004e8e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8004e92:	d90d      	bls.n	8004eb0 <memset+0x7c>
 8004e94:	461e      	mov	r6, r3
 8004e96:	4622      	mov	r2, r4
 8004e98:	3a04      	subs	r2, #4
 8004e9a:	2a03      	cmp	r2, #3
 8004e9c:	f846 5b04 	str.w	r5, [r6], #4
 8004ea0:	d8fa      	bhi.n	8004e98 <memset+0x64>
 8004ea2:	1f22      	subs	r2, r4, #4
 8004ea4:	f022 0203 	bic.w	r2, r2, #3
 8004ea8:	3204      	adds	r2, #4
 8004eaa:	4413      	add	r3, r2
 8004eac:	f004 0403 	and.w	r4, r4, #3
 8004eb0:	b12c      	cbz	r4, 8004ebe <memset+0x8a>
 8004eb2:	b2c9      	uxtb	r1, r1
 8004eb4:	441c      	add	r4, r3
 8004eb6:	f803 1b01 	strb.w	r1, [r3], #1
 8004eba:	429c      	cmp	r4, r3
 8004ebc:	d1fb      	bne.n	8004eb6 <memset+0x82>
 8004ebe:	bcf0      	pop	{r4, r5, r6, r7}
 8004ec0:	4770      	bx	lr
 8004ec2:	4614      	mov	r4, r2
 8004ec4:	4603      	mov	r3, r0
 8004ec6:	e7c5      	b.n	8004e54 <memset+0x20>

08004ec8 <__malloc_lock>:
 8004ec8:	4801      	ldr	r0, [pc, #4]	; (8004ed0 <__malloc_lock+0x8>)
 8004eca:	f003 bae7 	b.w	800849c <__retarget_lock_acquire_recursive>
 8004ece:	bf00      	nop
 8004ed0:	20001440 	.word	0x20001440

08004ed4 <__malloc_unlock>:
 8004ed4:	4801      	ldr	r0, [pc, #4]	; (8004edc <__malloc_unlock+0x8>)
 8004ed6:	f003 bae3 	b.w	80084a0 <__retarget_lock_release_recursive>
 8004eda:	bf00      	nop
 8004edc:	20001440 	.word	0x20001440

08004ee0 <printf>:
 8004ee0:	b40f      	push	{r0, r1, r2, r3}
 8004ee2:	b500      	push	{lr}
 8004ee4:	4907      	ldr	r1, [pc, #28]	; (8004f04 <printf+0x24>)
 8004ee6:	b083      	sub	sp, #12
 8004ee8:	ab04      	add	r3, sp, #16
 8004eea:	6808      	ldr	r0, [r1, #0]
 8004eec:	f853 2b04 	ldr.w	r2, [r3], #4
 8004ef0:	6881      	ldr	r1, [r0, #8]
 8004ef2:	9301      	str	r3, [sp, #4]
 8004ef4:	f000 f870 	bl	8004fd8 <_vfprintf_r>
 8004ef8:	b003      	add	sp, #12
 8004efa:	f85d eb04 	ldr.w	lr, [sp], #4
 8004efe:	b004      	add	sp, #16
 8004f00:	4770      	bx	lr
 8004f02:	bf00      	nop
 8004f04:	20000030 	.word	0x20000030

08004f08 <_puts_r>:
 8004f08:	b570      	push	{r4, r5, r6, lr}
 8004f0a:	4605      	mov	r5, r0
 8004f0c:	b088      	sub	sp, #32
 8004f0e:	4608      	mov	r0, r1
 8004f10:	460c      	mov	r4, r1
 8004f12:	f7fc f875 	bl	8001000 <strlen>
 8004f16:	4a22      	ldr	r2, [pc, #136]	; (8004fa0 <_puts_r+0x98>)
 8004f18:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004f1a:	9404      	str	r4, [sp, #16]
 8004f1c:	2601      	movs	r6, #1
 8004f1e:	1c44      	adds	r4, r0, #1
 8004f20:	a904      	add	r1, sp, #16
 8004f22:	9206      	str	r2, [sp, #24]
 8004f24:	2202      	movs	r2, #2
 8004f26:	9403      	str	r4, [sp, #12]
 8004f28:	9005      	str	r0, [sp, #20]
 8004f2a:	68ac      	ldr	r4, [r5, #8]
 8004f2c:	9607      	str	r6, [sp, #28]
 8004f2e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8004f32:	b31b      	cbz	r3, 8004f7c <_puts_r+0x74>
 8004f34:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8004f36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f3a:	07ce      	lsls	r6, r1, #31
 8004f3c:	b29a      	uxth	r2, r3
 8004f3e:	d401      	bmi.n	8004f44 <_puts_r+0x3c>
 8004f40:	0590      	lsls	r0, r2, #22
 8004f42:	d525      	bpl.n	8004f90 <_puts_r+0x88>
 8004f44:	0491      	lsls	r1, r2, #18
 8004f46:	d406      	bmi.n	8004f56 <_puts_r+0x4e>
 8004f48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8004f4a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8004f4e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8004f52:	81a3      	strh	r3, [r4, #12]
 8004f54:	6662      	str	r2, [r4, #100]	; 0x64
 8004f56:	4628      	mov	r0, r5
 8004f58:	aa01      	add	r2, sp, #4
 8004f5a:	4621      	mov	r1, r4
 8004f5c:	f003 f8e4 	bl	8008128 <__sfvwrite_r>
 8004f60:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8004f62:	2800      	cmp	r0, #0
 8004f64:	bf0c      	ite	eq
 8004f66:	250a      	moveq	r5, #10
 8004f68:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004f6c:	07da      	lsls	r2, r3, #31
 8004f6e:	d402      	bmi.n	8004f76 <_puts_r+0x6e>
 8004f70:	89a3      	ldrh	r3, [r4, #12]
 8004f72:	059b      	lsls	r3, r3, #22
 8004f74:	d506      	bpl.n	8004f84 <_puts_r+0x7c>
 8004f76:	4628      	mov	r0, r5
 8004f78:	b008      	add	sp, #32
 8004f7a:	bd70      	pop	{r4, r5, r6, pc}
 8004f7c:	4628      	mov	r0, r5
 8004f7e:	f002 ff3d 	bl	8007dfc <__sinit>
 8004f82:	e7d7      	b.n	8004f34 <_puts_r+0x2c>
 8004f84:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004f86:	f003 fa8b 	bl	80084a0 <__retarget_lock_release_recursive>
 8004f8a:	4628      	mov	r0, r5
 8004f8c:	b008      	add	sp, #32
 8004f8e:	bd70      	pop	{r4, r5, r6, pc}
 8004f90:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004f92:	f003 fa83 	bl	800849c <__retarget_lock_acquire_recursive>
 8004f96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f9a:	b29a      	uxth	r2, r3
 8004f9c:	e7d2      	b.n	8004f44 <_puts_r+0x3c>
 8004f9e:	bf00      	nop
 8004fa0:	08009ae4 	.word	0x08009ae4

08004fa4 <puts>:
 8004fa4:	4b02      	ldr	r3, [pc, #8]	; (8004fb0 <puts+0xc>)
 8004fa6:	4601      	mov	r1, r0
 8004fa8:	6818      	ldr	r0, [r3, #0]
 8004faa:	f7ff bfad 	b.w	8004f08 <_puts_r>
 8004fae:	bf00      	nop
 8004fb0:	20000030 	.word	0x20000030

08004fb4 <_sbrk_r>:
 8004fb4:	b538      	push	{r3, r4, r5, lr}
 8004fb6:	4c07      	ldr	r4, [pc, #28]	; (8004fd4 <_sbrk_r+0x20>)
 8004fb8:	2300      	movs	r3, #0
 8004fba:	4605      	mov	r5, r0
 8004fbc:	4608      	mov	r0, r1
 8004fbe:	6023      	str	r3, [r4, #0]
 8004fc0:	f7ff fbb4 	bl	800472c <_sbrk>
 8004fc4:	1c43      	adds	r3, r0, #1
 8004fc6:	d000      	beq.n	8004fca <_sbrk_r+0x16>
 8004fc8:	bd38      	pop	{r3, r4, r5, pc}
 8004fca:	6823      	ldr	r3, [r4, #0]
 8004fcc:	2b00      	cmp	r3, #0
 8004fce:	d0fb      	beq.n	8004fc8 <_sbrk_r+0x14>
 8004fd0:	602b      	str	r3, [r5, #0]
 8004fd2:	bd38      	pop	{r3, r4, r5, pc}
 8004fd4:	20001454 	.word	0x20001454

08004fd8 <_vfprintf_r>:
 8004fd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004fdc:	b0d7      	sub	sp, #348	; 0x15c
 8004fde:	461c      	mov	r4, r3
 8004fe0:	4689      	mov	r9, r1
 8004fe2:	4617      	mov	r7, r2
 8004fe4:	4605      	mov	r5, r0
 8004fe6:	9003      	str	r0, [sp, #12]
 8004fe8:	f003 fa46 	bl	8008478 <_localeconv_r>
 8004fec:	6803      	ldr	r3, [r0, #0]
 8004fee:	9316      	str	r3, [sp, #88]	; 0x58
 8004ff0:	4618      	mov	r0, r3
 8004ff2:	f7fc f805 	bl	8001000 <strlen>
 8004ff6:	9408      	str	r4, [sp, #32]
 8004ff8:	9015      	str	r0, [sp, #84]	; 0x54
 8004ffa:	b11d      	cbz	r5, 8005004 <_vfprintf_r+0x2c>
 8004ffc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004ffe:	2b00      	cmp	r3, #0
 8005000:	f000 8107 	beq.w	8005212 <_vfprintf_r+0x23a>
 8005004:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005008:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800500c:	07c8      	lsls	r0, r1, #31
 800500e:	b293      	uxth	r3, r2
 8005010:	d402      	bmi.n	8005018 <_vfprintf_r+0x40>
 8005012:	0599      	lsls	r1, r3, #22
 8005014:	f140 811f 	bpl.w	8005256 <_vfprintf_r+0x27e>
 8005018:	049e      	lsls	r6, r3, #18
 800501a:	d40a      	bmi.n	8005032 <_vfprintf_r+0x5a>
 800501c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005020:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8005024:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005028:	f8a9 300c 	strh.w	r3, [r9, #12]
 800502c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005030:	b29b      	uxth	r3, r3
 8005032:	071d      	lsls	r5, r3, #28
 8005034:	f140 80b2 	bpl.w	800519c <_vfprintf_r+0x1c4>
 8005038:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800503c:	2a00      	cmp	r2, #0
 800503e:	f000 80ad 	beq.w	800519c <_vfprintf_r+0x1c4>
 8005042:	f003 021a 	and.w	r2, r3, #26
 8005046:	2a0a      	cmp	r2, #10
 8005048:	f000 80c9 	beq.w	80051de <_vfprintf_r+0x206>
 800504c:	2300      	movs	r3, #0
 800504e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8005268 <_vfprintf_r+0x290>
 8005052:	9310      	str	r3, [sp, #64]	; 0x40
 8005054:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8005058:	9317      	str	r3, [sp, #92]	; 0x5c
 800505a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800505e:	931b      	str	r3, [sp, #108]	; 0x6c
 8005060:	9318      	str	r3, [sp, #96]	; 0x60
 8005062:	9305      	str	r3, [sp, #20]
 8005064:	ab2d      	add	r3, sp, #180	; 0xb4
 8005066:	932a      	str	r3, [sp, #168]	; 0xa8
 8005068:	469b      	mov	fp, r3
 800506a:	783b      	ldrb	r3, [r7, #0]
 800506c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005070:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005074:	2b00      	cmp	r3, #0
 8005076:	f000 8259 	beq.w	800552c <_vfprintf_r+0x554>
 800507a:	2b25      	cmp	r3, #37	; 0x25
 800507c:	463c      	mov	r4, r7
 800507e:	d102      	bne.n	8005086 <_vfprintf_r+0xae>
 8005080:	e01d      	b.n	80050be <_vfprintf_r+0xe6>
 8005082:	2b25      	cmp	r3, #37	; 0x25
 8005084:	d003      	beq.n	800508e <_vfprintf_r+0xb6>
 8005086:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800508a:	2b00      	cmp	r3, #0
 800508c:	d1f9      	bne.n	8005082 <_vfprintf_r+0xaa>
 800508e:	1be5      	subs	r5, r4, r7
 8005090:	b18d      	cbz	r5, 80050b6 <_vfprintf_r+0xde>
 8005092:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8005096:	3301      	adds	r3, #1
 8005098:	442a      	add	r2, r5
 800509a:	2b07      	cmp	r3, #7
 800509c:	f8cb 7000 	str.w	r7, [fp]
 80050a0:	f8cb 5004 	str.w	r5, [fp, #4]
 80050a4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80050a8:	f300 80ca 	bgt.w	8005240 <_vfprintf_r+0x268>
 80050ac:	f10b 0b08 	add.w	fp, fp, #8
 80050b0:	9b05      	ldr	r3, [sp, #20]
 80050b2:	442b      	add	r3, r5
 80050b4:	9305      	str	r3, [sp, #20]
 80050b6:	7823      	ldrb	r3, [r4, #0]
 80050b8:	2b00      	cmp	r3, #0
 80050ba:	f000 8237 	beq.w	800552c <_vfprintf_r+0x554>
 80050be:	2300      	movs	r3, #0
 80050c0:	7866      	ldrb	r6, [r4, #1]
 80050c2:	9306      	str	r3, [sp, #24]
 80050c4:	4698      	mov	r8, r3
 80050c6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80050ca:	f104 0a01 	add.w	sl, r4, #1
 80050ce:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80050d2:	252b      	movs	r5, #43	; 0x2b
 80050d4:	f10a 0a01 	add.w	sl, sl, #1
 80050d8:	f1a6 0320 	sub.w	r3, r6, #32
 80050dc:	2b5a      	cmp	r3, #90	; 0x5a
 80050de:	f200 842a 	bhi.w	8005936 <_vfprintf_r+0x95e>
 80050e2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80050e6:	03aa      	.short	0x03aa
 80050e8:	04280428 	.word	0x04280428
 80050ec:	0428029c 	.word	0x0428029c
 80050f0:	04280428 	.word	0x04280428
 80050f4:	042802a7 	.word	0x042802a7
 80050f8:	02c60428 	.word	0x02c60428
 80050fc:	042802d2 	.word	0x042802d2
 8005100:	02dc02d7 	.word	0x02dc02d7
 8005104:	02f60428 	.word	0x02f60428
 8005108:	026d026d 	.word	0x026d026d
 800510c:	026d026d 	.word	0x026d026d
 8005110:	026d026d 	.word	0x026d026d
 8005114:	026d026d 	.word	0x026d026d
 8005118:	0428026d 	.word	0x0428026d
 800511c:	04280428 	.word	0x04280428
 8005120:	04280428 	.word	0x04280428
 8005124:	04280428 	.word	0x04280428
 8005128:	042802fb 	.word	0x042802fb
 800512c:	03f3033c 	.word	0x03f3033c
 8005130:	02fb02fb 	.word	0x02fb02fb
 8005134:	042802fb 	.word	0x042802fb
 8005138:	04280428 	.word	0x04280428
 800513c:	03ee0428 	.word	0x03ee0428
 8005140:	04280428 	.word	0x04280428
 8005144:	0428009a 	.word	0x0428009a
 8005148:	04280428 	.word	0x04280428
 800514c:	04280350 	.word	0x04280350
 8005150:	04280379 	.word	0x04280379
 8005154:	03900428 	.word	0x03900428
 8005158:	04280428 	.word	0x04280428
 800515c:	04280428 	.word	0x04280428
 8005160:	04280428 	.word	0x04280428
 8005164:	04280428 	.word	0x04280428
 8005168:	042802fb 	.word	0x042802fb
 800516c:	00c5033c 	.word	0x00c5033c
 8005170:	02fb02fb 	.word	0x02fb02fb
 8005174:	03d102fb 	.word	0x03d102fb
 8005178:	007000c5 	.word	0x007000c5
 800517c:	03b50428 	.word	0x03b50428
 8005180:	03c20428 	.word	0x03c20428
 8005184:	03de009c 	.word	0x03de009c
 8005188:	04280070 	.word	0x04280070
 800518c:	00720350 	.word	0x00720350
 8005190:	0428022c 	.word	0x0428022c
 8005194:	027c0428 	.word	0x027c0428
 8005198:	00720428 	.word	0x00720428
 800519c:	4649      	mov	r1, r9
 800519e:	9803      	ldr	r0, [sp, #12]
 80051a0:	f001 fc9a 	bl	8006ad8 <__swsetup_r>
 80051a4:	b1a0      	cbz	r0, 80051d0 <_vfprintf_r+0x1f8>
 80051a6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80051aa:	07d8      	lsls	r0, r3, #31
 80051ac:	d404      	bmi.n	80051b8 <_vfprintf_r+0x1e0>
 80051ae:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80051b2:	0599      	lsls	r1, r3, #22
 80051b4:	f140 83b7 	bpl.w	8005926 <_vfprintf_r+0x94e>
 80051b8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80051bc:	9305      	str	r3, [sp, #20]
 80051be:	9805      	ldr	r0, [sp, #20]
 80051c0:	b057      	add	sp, #348	; 0x15c
 80051c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80051c6:	f048 0820 	orr.w	r8, r8, #32
 80051ca:	f89a 6000 	ldrb.w	r6, [sl]
 80051ce:	e781      	b.n	80050d4 <_vfprintf_r+0xfc>
 80051d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80051d4:	f003 021a 	and.w	r2, r3, #26
 80051d8:	2a0a      	cmp	r2, #10
 80051da:	f47f af37 	bne.w	800504c <_vfprintf_r+0x74>
 80051de:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80051e2:	2a00      	cmp	r2, #0
 80051e4:	f6ff af32 	blt.w	800504c <_vfprintf_r+0x74>
 80051e8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80051ec:	07d2      	lsls	r2, r2, #31
 80051ee:	d405      	bmi.n	80051fc <_vfprintf_r+0x224>
 80051f0:	059b      	lsls	r3, r3, #22
 80051f2:	d403      	bmi.n	80051fc <_vfprintf_r+0x224>
 80051f4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80051f8:	f003 f952 	bl	80084a0 <__retarget_lock_release_recursive>
 80051fc:	4623      	mov	r3, r4
 80051fe:	463a      	mov	r2, r7
 8005200:	4649      	mov	r1, r9
 8005202:	9803      	ldr	r0, [sp, #12]
 8005204:	f001 fc26 	bl	8006a54 <__sbprintf>
 8005208:	9005      	str	r0, [sp, #20]
 800520a:	9805      	ldr	r0, [sp, #20]
 800520c:	b057      	add	sp, #348	; 0x15c
 800520e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005212:	9803      	ldr	r0, [sp, #12]
 8005214:	f002 fdf2 	bl	8007dfc <__sinit>
 8005218:	e6f4      	b.n	8005004 <_vfprintf_r+0x2c>
 800521a:	f048 0810 	orr.w	r8, r8, #16
 800521e:	f018 0f20 	tst.w	r8, #32
 8005222:	f000 836c 	beq.w	80058fe <_vfprintf_r+0x926>
 8005226:	9c08      	ldr	r4, [sp, #32]
 8005228:	3407      	adds	r4, #7
 800522a:	f024 0307 	bic.w	r3, r4, #7
 800522e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005232:	f103 0208 	add.w	r2, r3, #8
 8005236:	9208      	str	r2, [sp, #32]
 8005238:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800523c:	2200      	movs	r2, #0
 800523e:	e18c      	b.n	800555a <_vfprintf_r+0x582>
 8005240:	aa2a      	add	r2, sp, #168	; 0xa8
 8005242:	9907      	ldr	r1, [sp, #28]
 8005244:	9803      	ldr	r0, [sp, #12]
 8005246:	f003 ffa7 	bl	8009198 <__sprint_r>
 800524a:	2800      	cmp	r0, #0
 800524c:	f041 8376 	bne.w	800693c <_vfprintf_r+0x1964>
 8005250:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005254:	e72c      	b.n	80050b0 <_vfprintf_r+0xd8>
 8005256:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800525a:	f003 f91f 	bl	800849c <__retarget_lock_acquire_recursive>
 800525e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005262:	b293      	uxth	r3, r2
 8005264:	e6d8      	b.n	8005018 <_vfprintf_r+0x40>
 8005266:	bf00      	nop
	...
 8005270:	4643      	mov	r3, r8
 8005272:	069f      	lsls	r7, r3, #26
 8005274:	f140 832f 	bpl.w	80058d6 <_vfprintf_r+0x8fe>
 8005278:	9c08      	ldr	r4, [sp, #32]
 800527a:	3407      	adds	r4, #7
 800527c:	f024 0407 	bic.w	r4, r4, #7
 8005280:	e9d4 0100 	ldrd	r0, r1, [r4]
 8005284:	f104 0208 	add.w	r2, r4, #8
 8005288:	9208      	str	r2, [sp, #32]
 800528a:	4604      	mov	r4, r0
 800528c:	460d      	mov	r5, r1
 800528e:	2800      	cmp	r0, #0
 8005290:	f171 0200 	sbcs.w	r2, r1, #0
 8005294:	da05      	bge.n	80052a2 <_vfprintf_r+0x2ca>
 8005296:	222d      	movs	r2, #45	; 0x2d
 8005298:	4264      	negs	r4, r4
 800529a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800529e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80052a2:	aa56      	add	r2, sp, #344	; 0x158
 80052a4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80052a8:	9204      	str	r2, [sp, #16]
 80052aa:	f000 84b2 	beq.w	8005c12 <_vfprintf_r+0xc3a>
 80052ae:	2201      	movs	r2, #1
 80052b0:	ea54 0105 	orrs.w	r1, r4, r5
 80052b4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80052b8:	f040 8159 	bne.w	800556e <_vfprintf_r+0x596>
 80052bc:	f1b9 0f00 	cmp.w	r9, #0
 80052c0:	f040 8619 	bne.w	8005ef6 <_vfprintf_r+0xf1e>
 80052c4:	2a00      	cmp	r2, #0
 80052c6:	f040 8508 	bne.w	8005cda <_vfprintf_r+0xd02>
 80052ca:	f013 0301 	ands.w	r3, r3, #1
 80052ce:	af56      	add	r7, sp, #344	; 0x158
 80052d0:	9309      	str	r3, [sp, #36]	; 0x24
 80052d2:	d002      	beq.n	80052da <_vfprintf_r+0x302>
 80052d4:	2330      	movs	r3, #48	; 0x30
 80052d6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80052da:	2300      	movs	r3, #0
 80052dc:	930a      	str	r3, [sp, #40]	; 0x28
 80052de:	930f      	str	r3, [sp, #60]	; 0x3c
 80052e0:	9314      	str	r3, [sp, #80]	; 0x50
 80052e2:	9311      	str	r3, [sp, #68]	; 0x44
 80052e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052e6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80052ea:	454b      	cmp	r3, r9
 80052ec:	bfb8      	it	lt
 80052ee:	464b      	movlt	r3, r9
 80052f0:	9304      	str	r3, [sp, #16]
 80052f2:	b112      	cbz	r2, 80052fa <_vfprintf_r+0x322>
 80052f4:	9b04      	ldr	r3, [sp, #16]
 80052f6:	3301      	adds	r3, #1
 80052f8:	9304      	str	r3, [sp, #16]
 80052fa:	f018 0302 	ands.w	r3, r8, #2
 80052fe:	930b      	str	r3, [sp, #44]	; 0x2c
 8005300:	d002      	beq.n	8005308 <_vfprintf_r+0x330>
 8005302:	9b04      	ldr	r3, [sp, #16]
 8005304:	3302      	adds	r3, #2
 8005306:	9304      	str	r3, [sp, #16]
 8005308:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800530c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800530e:	930e      	str	r3, [sp, #56]	; 0x38
 8005310:	d13f      	bne.n	8005392 <_vfprintf_r+0x3ba>
 8005312:	9b06      	ldr	r3, [sp, #24]
 8005314:	9904      	ldr	r1, [sp, #16]
 8005316:	1a5d      	subs	r5, r3, r1
 8005318:	2d00      	cmp	r5, #0
 800531a:	dd3a      	ble.n	8005392 <_vfprintf_r+0x3ba>
 800531c:	2d10      	cmp	r5, #16
 800531e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005320:	dd29      	ble.n	8005376 <_vfprintf_r+0x39e>
 8005322:	4659      	mov	r1, fp
 8005324:	4620      	mov	r0, r4
 8005326:	9620      	str	r6, [sp, #128]	; 0x80
 8005328:	2310      	movs	r3, #16
 800532a:	9c03      	ldr	r4, [sp, #12]
 800532c:	9e07      	ldr	r6, [sp, #28]
 800532e:	46bb      	mov	fp, r7
 8005330:	e004      	b.n	800533c <_vfprintf_r+0x364>
 8005332:	3d10      	subs	r5, #16
 8005334:	2d10      	cmp	r5, #16
 8005336:	f101 0108 	add.w	r1, r1, #8
 800533a:	dd18      	ble.n	800536e <_vfprintf_r+0x396>
 800533c:	3201      	adds	r2, #1
 800533e:	4fba      	ldr	r7, [pc, #744]	; (8005628 <_vfprintf_r+0x650>)
 8005340:	3010      	adds	r0, #16
 8005342:	2a07      	cmp	r2, #7
 8005344:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005348:	e9c1 7300 	strd	r7, r3, [r1]
 800534c:	ddf1      	ble.n	8005332 <_vfprintf_r+0x35a>
 800534e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005350:	4631      	mov	r1, r6
 8005352:	4620      	mov	r0, r4
 8005354:	930c      	str	r3, [sp, #48]	; 0x30
 8005356:	f003 ff1f 	bl	8009198 <__sprint_r>
 800535a:	2800      	cmp	r0, #0
 800535c:	f040 843d 	bne.w	8005bda <_vfprintf_r+0xc02>
 8005360:	3d10      	subs	r5, #16
 8005362:	2d10      	cmp	r5, #16
 8005364:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005368:	a92d      	add	r1, sp, #180	; 0xb4
 800536a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800536c:	dce6      	bgt.n	800533c <_vfprintf_r+0x364>
 800536e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8005370:	465f      	mov	r7, fp
 8005372:	4604      	mov	r4, r0
 8005374:	468b      	mov	fp, r1
 8005376:	3201      	adds	r2, #1
 8005378:	4bab      	ldr	r3, [pc, #684]	; (8005628 <_vfprintf_r+0x650>)
 800537a:	442c      	add	r4, r5
 800537c:	2a07      	cmp	r2, #7
 800537e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005382:	e9cb 3500 	strd	r3, r5, [fp]
 8005386:	f300 84ff 	bgt.w	8005d88 <_vfprintf_r+0xdb0>
 800538a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800538e:	f10b 0b08 	add.w	fp, fp, #8
 8005392:	b172      	cbz	r2, 80053b2 <_vfprintf_r+0x3da>
 8005394:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005396:	3201      	adds	r2, #1
 8005398:	3401      	adds	r4, #1
 800539a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800539e:	2101      	movs	r1, #1
 80053a0:	2a07      	cmp	r2, #7
 80053a2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80053a6:	e9cb 0100 	strd	r0, r1, [fp]
 80053aa:	f300 8418 	bgt.w	8005bde <_vfprintf_r+0xc06>
 80053ae:	f10b 0b08 	add.w	fp, fp, #8
 80053b2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80053b4:	b16b      	cbz	r3, 80053d2 <_vfprintf_r+0x3fa>
 80053b6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80053b8:	3301      	adds	r3, #1
 80053ba:	3402      	adds	r4, #2
 80053bc:	a923      	add	r1, sp, #140	; 0x8c
 80053be:	2202      	movs	r2, #2
 80053c0:	2b07      	cmp	r3, #7
 80053c2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80053c6:	e9cb 1200 	strd	r1, r2, [fp]
 80053ca:	f300 8415 	bgt.w	8005bf8 <_vfprintf_r+0xc20>
 80053ce:	f10b 0b08 	add.w	fp, fp, #8
 80053d2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80053d4:	2b80      	cmp	r3, #128	; 0x80
 80053d6:	f000 8331 	beq.w	8005a3c <_vfprintf_r+0xa64>
 80053da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80053dc:	eba9 0503 	sub.w	r5, r9, r3
 80053e0:	2d00      	cmp	r5, #0
 80053e2:	dd37      	ble.n	8005454 <_vfprintf_r+0x47c>
 80053e4:	2d10      	cmp	r5, #16
 80053e6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80053e8:	4b90      	ldr	r3, [pc, #576]	; (800562c <_vfprintf_r+0x654>)
 80053ea:	dd28      	ble.n	800543e <_vfprintf_r+0x466>
 80053ec:	4659      	mov	r1, fp
 80053ee:	4620      	mov	r0, r4
 80053f0:	46bb      	mov	fp, r7
 80053f2:	f04f 0910 	mov.w	r9, #16
 80053f6:	4637      	mov	r7, r6
 80053f8:	461c      	mov	r4, r3
 80053fa:	9e07      	ldr	r6, [sp, #28]
 80053fc:	e004      	b.n	8005408 <_vfprintf_r+0x430>
 80053fe:	3d10      	subs	r5, #16
 8005400:	2d10      	cmp	r5, #16
 8005402:	f101 0108 	add.w	r1, r1, #8
 8005406:	dd15      	ble.n	8005434 <_vfprintf_r+0x45c>
 8005408:	3201      	adds	r2, #1
 800540a:	3010      	adds	r0, #16
 800540c:	2a07      	cmp	r2, #7
 800540e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005412:	e9c1 4900 	strd	r4, r9, [r1]
 8005416:	ddf2      	ble.n	80053fe <_vfprintf_r+0x426>
 8005418:	aa2a      	add	r2, sp, #168	; 0xa8
 800541a:	4631      	mov	r1, r6
 800541c:	9803      	ldr	r0, [sp, #12]
 800541e:	f003 febb 	bl	8009198 <__sprint_r>
 8005422:	2800      	cmp	r0, #0
 8005424:	f040 83d9 	bne.w	8005bda <_vfprintf_r+0xc02>
 8005428:	3d10      	subs	r5, #16
 800542a:	2d10      	cmp	r5, #16
 800542c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005430:	a92d      	add	r1, sp, #180	; 0xb4
 8005432:	dce9      	bgt.n	8005408 <_vfprintf_r+0x430>
 8005434:	463e      	mov	r6, r7
 8005436:	4623      	mov	r3, r4
 8005438:	465f      	mov	r7, fp
 800543a:	4604      	mov	r4, r0
 800543c:	468b      	mov	fp, r1
 800543e:	3201      	adds	r2, #1
 8005440:	442c      	add	r4, r5
 8005442:	2a07      	cmp	r2, #7
 8005444:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005448:	e9cb 3500 	strd	r3, r5, [fp]
 800544c:	f300 83ef 	bgt.w	8005c2e <_vfprintf_r+0xc56>
 8005450:	f10b 0b08 	add.w	fp, fp, #8
 8005454:	f418 7f80 	tst.w	r8, #256	; 0x100
 8005458:	f040 8280 	bne.w	800595c <_vfprintf_r+0x984>
 800545c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800545e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005460:	f8cb 7000 	str.w	r7, [fp]
 8005464:	3301      	adds	r3, #1
 8005466:	4414      	add	r4, r2
 8005468:	2b07      	cmp	r3, #7
 800546a:	942c      	str	r4, [sp, #176]	; 0xb0
 800546c:	f8cb 2004 	str.w	r2, [fp, #4]
 8005470:	932b      	str	r3, [sp, #172]	; 0xac
 8005472:	f300 8392 	bgt.w	8005b9a <_vfprintf_r+0xbc2>
 8005476:	f10b 0b08 	add.w	fp, fp, #8
 800547a:	f018 0f04 	tst.w	r8, #4
 800547e:	d03b      	beq.n	80054f8 <_vfprintf_r+0x520>
 8005480:	9b06      	ldr	r3, [sp, #24]
 8005482:	9a04      	ldr	r2, [sp, #16]
 8005484:	1a9d      	subs	r5, r3, r2
 8005486:	2d00      	cmp	r5, #0
 8005488:	dd36      	ble.n	80054f8 <_vfprintf_r+0x520>
 800548a:	2d10      	cmp	r5, #16
 800548c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800548e:	dd21      	ble.n	80054d4 <_vfprintf_r+0x4fc>
 8005490:	2610      	movs	r6, #16
 8005492:	9f03      	ldr	r7, [sp, #12]
 8005494:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8005498:	e004      	b.n	80054a4 <_vfprintf_r+0x4cc>
 800549a:	3d10      	subs	r5, #16
 800549c:	2d10      	cmp	r5, #16
 800549e:	f10b 0b08 	add.w	fp, fp, #8
 80054a2:	dd17      	ble.n	80054d4 <_vfprintf_r+0x4fc>
 80054a4:	3301      	adds	r3, #1
 80054a6:	4a60      	ldr	r2, [pc, #384]	; (8005628 <_vfprintf_r+0x650>)
 80054a8:	3410      	adds	r4, #16
 80054aa:	2b07      	cmp	r3, #7
 80054ac:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80054b0:	e9cb 2600 	strd	r2, r6, [fp]
 80054b4:	ddf1      	ble.n	800549a <_vfprintf_r+0x4c2>
 80054b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80054b8:	4641      	mov	r1, r8
 80054ba:	4638      	mov	r0, r7
 80054bc:	f003 fe6c 	bl	8009198 <__sprint_r>
 80054c0:	2800      	cmp	r0, #0
 80054c2:	f040 856c 	bne.w	8005f9e <_vfprintf_r+0xfc6>
 80054c6:	3d10      	subs	r5, #16
 80054c8:	2d10      	cmp	r5, #16
 80054ca:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80054ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80054d2:	dce7      	bgt.n	80054a4 <_vfprintf_r+0x4cc>
 80054d4:	3301      	adds	r3, #1
 80054d6:	4a54      	ldr	r2, [pc, #336]	; (8005628 <_vfprintf_r+0x650>)
 80054d8:	442c      	add	r4, r5
 80054da:	2b07      	cmp	r3, #7
 80054dc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80054e0:	e9cb 2500 	strd	r2, r5, [fp]
 80054e4:	dd08      	ble.n	80054f8 <_vfprintf_r+0x520>
 80054e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80054e8:	9907      	ldr	r1, [sp, #28]
 80054ea:	9803      	ldr	r0, [sp, #12]
 80054ec:	f003 fe54 	bl	8009198 <__sprint_r>
 80054f0:	2800      	cmp	r0, #0
 80054f2:	f040 82e9 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 80054f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80054f8:	9904      	ldr	r1, [sp, #16]
 80054fa:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80054fe:	428a      	cmp	r2, r1
 8005500:	bfac      	ite	ge
 8005502:	189b      	addge	r3, r3, r2
 8005504:	185b      	addlt	r3, r3, r1
 8005506:	9305      	str	r3, [sp, #20]
 8005508:	2c00      	cmp	r4, #0
 800550a:	f040 82d5 	bne.w	8005ab8 <_vfprintf_r+0xae0>
 800550e:	2300      	movs	r3, #0
 8005510:	932b      	str	r3, [sp, #172]	; 0xac
 8005512:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005514:	b11b      	cbz	r3, 800551e <_vfprintf_r+0x546>
 8005516:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005518:	9803      	ldr	r0, [sp, #12]
 800551a:	f002 fd11 	bl	8007f40 <_free_r>
 800551e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005522:	4657      	mov	r7, sl
 8005524:	783b      	ldrb	r3, [r7, #0]
 8005526:	2b00      	cmp	r3, #0
 8005528:	f47f ada7 	bne.w	800507a <_vfprintf_r+0xa2>
 800552c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800552e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005532:	2b00      	cmp	r3, #0
 8005534:	f041 80e7 	bne.w	8006706 <_vfprintf_r+0x172e>
 8005538:	2300      	movs	r3, #0
 800553a:	932b      	str	r3, [sp, #172]	; 0xac
 800553c:	e2cb      	b.n	8005ad6 <_vfprintf_r+0xafe>
 800553e:	4643      	mov	r3, r8
 8005540:	069a      	lsls	r2, r3, #26
 8005542:	f140 814e 	bpl.w	80057e2 <_vfprintf_r+0x80a>
 8005546:	9c08      	ldr	r4, [sp, #32]
 8005548:	3407      	adds	r4, #7
 800554a:	f024 0207 	bic.w	r2, r4, #7
 800554e:	f102 0108 	add.w	r1, r2, #8
 8005552:	e9d2 4500 	ldrd	r4, r5, [r2]
 8005556:	9108      	str	r1, [sp, #32]
 8005558:	2201      	movs	r2, #1
 800555a:	2100      	movs	r1, #0
 800555c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8005560:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005564:	a956      	add	r1, sp, #344	; 0x158
 8005566:	9104      	str	r1, [sp, #16]
 8005568:	f47f aea2 	bne.w	80052b0 <_vfprintf_r+0x2d8>
 800556c:	4698      	mov	r8, r3
 800556e:	2a01      	cmp	r2, #1
 8005570:	f000 8350 	beq.w	8005c14 <_vfprintf_r+0xc3c>
 8005574:	2a02      	cmp	r2, #2
 8005576:	f000 831b 	beq.w	8005bb0 <_vfprintf_r+0xbd8>
 800557a:	a956      	add	r1, sp, #344	; 0x158
 800557c:	e000      	b.n	8005580 <_vfprintf_r+0x5a8>
 800557e:	4639      	mov	r1, r7
 8005580:	08e2      	lsrs	r2, r4, #3
 8005582:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8005586:	08e8      	lsrs	r0, r5, #3
 8005588:	f004 0307 	and.w	r3, r4, #7
 800558c:	4605      	mov	r5, r0
 800558e:	4614      	mov	r4, r2
 8005590:	3330      	adds	r3, #48	; 0x30
 8005592:	ea54 0205 	orrs.w	r2, r4, r5
 8005596:	f801 3c01 	strb.w	r3, [r1, #-1]
 800559a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800559e:	d1ee      	bne.n	800557e <_vfprintf_r+0x5a6>
 80055a0:	f018 0f01 	tst.w	r8, #1
 80055a4:	f000 8314 	beq.w	8005bd0 <_vfprintf_r+0xbf8>
 80055a8:	2b30      	cmp	r3, #48	; 0x30
 80055aa:	f000 8311 	beq.w	8005bd0 <_vfprintf_r+0xbf8>
 80055ae:	9a04      	ldr	r2, [sp, #16]
 80055b0:	3902      	subs	r1, #2
 80055b2:	2330      	movs	r3, #48	; 0x30
 80055b4:	1a52      	subs	r2, r2, r1
 80055b6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80055ba:	9209      	str	r2, [sp, #36]	; 0x24
 80055bc:	460f      	mov	r7, r1
 80055be:	e68c      	b.n	80052da <_vfprintf_r+0x302>
 80055c0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80055c4:	2200      	movs	r2, #0
 80055c6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80055ca:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80055ce:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80055d2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80055d6:	2b09      	cmp	r3, #9
 80055d8:	d9f5      	bls.n	80055c6 <_vfprintf_r+0x5ee>
 80055da:	9206      	str	r2, [sp, #24]
 80055dc:	e57c      	b.n	80050d8 <_vfprintf_r+0x100>
 80055de:	4b14      	ldr	r3, [pc, #80]	; (8005630 <_vfprintf_r+0x658>)
 80055e0:	9317      	str	r3, [sp, #92]	; 0x5c
 80055e2:	f018 0f20 	tst.w	r8, #32
 80055e6:	f000 8114 	beq.w	8005812 <_vfprintf_r+0x83a>
 80055ea:	9c08      	ldr	r4, [sp, #32]
 80055ec:	3407      	adds	r4, #7
 80055ee:	f024 0307 	bic.w	r3, r4, #7
 80055f2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80055f6:	f103 0208 	add.w	r2, r3, #8
 80055fa:	9208      	str	r2, [sp, #32]
 80055fc:	f018 0f01 	tst.w	r8, #1
 8005600:	d009      	beq.n	8005616 <_vfprintf_r+0x63e>
 8005602:	ea54 0305 	orrs.w	r3, r4, r5
 8005606:	d006      	beq.n	8005616 <_vfprintf_r+0x63e>
 8005608:	2330      	movs	r3, #48	; 0x30
 800560a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800560e:	f048 0802 	orr.w	r8, r8, #2
 8005612:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005616:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800561a:	2202      	movs	r2, #2
 800561c:	e79d      	b.n	800555a <_vfprintf_r+0x582>
 800561e:	f048 0801 	orr.w	r8, r8, #1
 8005622:	f89a 6000 	ldrb.w	r6, [sl]
 8005626:	e555      	b.n	80050d4 <_vfprintf_r+0xfc>
 8005628:	08009b2c 	.word	0x08009b2c
 800562c:	08009b3c 	.word	0x08009b3c
 8005630:	08009af8 	.word	0x08009af8
 8005634:	9e03      	ldr	r6, [sp, #12]
 8005636:	4630      	mov	r0, r6
 8005638:	f002 ff1e 	bl	8008478 <_localeconv_r>
 800563c:	6843      	ldr	r3, [r0, #4]
 800563e:	9318      	str	r3, [sp, #96]	; 0x60
 8005640:	4618      	mov	r0, r3
 8005642:	f7fb fcdd 	bl	8001000 <strlen>
 8005646:	901b      	str	r0, [sp, #108]	; 0x6c
 8005648:	4604      	mov	r4, r0
 800564a:	4630      	mov	r0, r6
 800564c:	f002 ff14 	bl	8008478 <_localeconv_r>
 8005650:	6883      	ldr	r3, [r0, #8]
 8005652:	931a      	str	r3, [sp, #104]	; 0x68
 8005654:	2c00      	cmp	r4, #0
 8005656:	f43f adb8 	beq.w	80051ca <_vfprintf_r+0x1f2>
 800565a:	f89a 6000 	ldrb.w	r6, [sl]
 800565e:	2b00      	cmp	r3, #0
 8005660:	f43f ad38 	beq.w	80050d4 <_vfprintf_r+0xfc>
 8005664:	781b      	ldrb	r3, [r3, #0]
 8005666:	2b00      	cmp	r3, #0
 8005668:	f43f ad34 	beq.w	80050d4 <_vfprintf_r+0xfc>
 800566c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8005670:	e530      	b.n	80050d4 <_vfprintf_r+0xfc>
 8005672:	9b08      	ldr	r3, [sp, #32]
 8005674:	f89a 6000 	ldrb.w	r6, [sl]
 8005678:	681a      	ldr	r2, [r3, #0]
 800567a:	9206      	str	r2, [sp, #24]
 800567c:	2a00      	cmp	r2, #0
 800567e:	f103 0304 	add.w	r3, r3, #4
 8005682:	f2c0 8697 	blt.w	80063b4 <_vfprintf_r+0x13dc>
 8005686:	9308      	str	r3, [sp, #32]
 8005688:	e524      	b.n	80050d4 <_vfprintf_r+0xfc>
 800568a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800568e:	f89a 6000 	ldrb.w	r6, [sl]
 8005692:	e51f      	b.n	80050d4 <_vfprintf_r+0xfc>
 8005694:	f89a 6000 	ldrb.w	r6, [sl]
 8005698:	f048 0804 	orr.w	r8, r8, #4
 800569c:	e51a      	b.n	80050d4 <_vfprintf_r+0xfc>
 800569e:	f89a 6000 	ldrb.w	r6, [sl]
 80056a2:	2e2a      	cmp	r6, #42	; 0x2a
 80056a4:	f10a 0201 	add.w	r2, sl, #1
 80056a8:	f001 81b0 	beq.w	8006a0c <_vfprintf_r+0x1a34>
 80056ac:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80056b0:	2b09      	cmp	r3, #9
 80056b2:	4692      	mov	sl, r2
 80056b4:	f04f 0900 	mov.w	r9, #0
 80056b8:	f63f ad0e 	bhi.w	80050d8 <_vfprintf_r+0x100>
 80056bc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80056c0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80056c4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80056c8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80056cc:	2b09      	cmp	r3, #9
 80056ce:	d9f5      	bls.n	80056bc <_vfprintf_r+0x6e4>
 80056d0:	e502      	b.n	80050d8 <_vfprintf_r+0x100>
 80056d2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80056d6:	f89a 6000 	ldrb.w	r6, [sl]
 80056da:	e4fb      	b.n	80050d4 <_vfprintf_r+0xfc>
 80056dc:	9c08      	ldr	r4, [sp, #32]
 80056de:	3407      	adds	r4, #7
 80056e0:	f024 0407 	bic.w	r4, r4, #7
 80056e4:	ed94 7b00 	vldr	d7, [r4]
 80056e8:	ec52 1b17 	vmov	r1, r2, d7
 80056ec:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80056f0:	931d      	str	r3, [sp, #116]	; 0x74
 80056f2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80056f6:	3408      	adds	r4, #8
 80056f8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80056fc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005700:	4bba      	ldr	r3, [pc, #744]	; (80059ec <_vfprintf_r+0xa14>)
 8005702:	9408      	str	r4, [sp, #32]
 8005704:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005708:	f7fb fd3a 	bl	8001180 <__aeabi_dcmpun>
 800570c:	2800      	cmp	r0, #0
 800570e:	f040 846f 	bne.w	8005ff0 <_vfprintf_r+0x1018>
 8005712:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005716:	4bb5      	ldr	r3, [pc, #724]	; (80059ec <_vfprintf_r+0xa14>)
 8005718:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800571c:	f7fb f9a8 	bl	8000a70 <__aeabi_dcmple>
 8005720:	2800      	cmp	r0, #0
 8005722:	f040 8465 	bne.w	8005ff0 <_vfprintf_r+0x1018>
 8005726:	2200      	movs	r2, #0
 8005728:	2300      	movs	r3, #0
 800572a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800572e:	f7fb f995 	bl	8000a5c <__aeabi_dcmplt>
 8005732:	2800      	cmp	r0, #0
 8005734:	f040 855b 	bne.w	80061ee <_vfprintf_r+0x1216>
 8005738:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800573c:	4fac      	ldr	r7, [pc, #688]	; (80059f0 <_vfprintf_r+0xa18>)
 800573e:	4bad      	ldr	r3, [pc, #692]	; (80059f4 <_vfprintf_r+0xa1c>)
 8005740:	2000      	movs	r0, #0
 8005742:	2103      	movs	r1, #3
 8005744:	9104      	str	r1, [sp, #16]
 8005746:	900a      	str	r0, [sp, #40]	; 0x28
 8005748:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800574c:	2e47      	cmp	r6, #71	; 0x47
 800574e:	bfd8      	it	le
 8005750:	461f      	movle	r7, r3
 8005752:	9109      	str	r1, [sp, #36]	; 0x24
 8005754:	4681      	mov	r9, r0
 8005756:	900f      	str	r0, [sp, #60]	; 0x3c
 8005758:	9014      	str	r0, [sp, #80]	; 0x50
 800575a:	9011      	str	r0, [sp, #68]	; 0x44
 800575c:	e5c9      	b.n	80052f2 <_vfprintf_r+0x31a>
 800575e:	9808      	ldr	r0, [sp, #32]
 8005760:	2300      	movs	r3, #0
 8005762:	6801      	ldr	r1, [r0, #0]
 8005764:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005768:	461a      	mov	r2, r3
 800576a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800576e:	2301      	movs	r3, #1
 8005770:	1d01      	adds	r1, r0, #4
 8005772:	9304      	str	r3, [sp, #16]
 8005774:	920a      	str	r2, [sp, #40]	; 0x28
 8005776:	4691      	mov	r9, r2
 8005778:	920f      	str	r2, [sp, #60]	; 0x3c
 800577a:	9214      	str	r2, [sp, #80]	; 0x50
 800577c:	9211      	str	r2, [sp, #68]	; 0x44
 800577e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8005782:	af3d      	add	r7, sp, #244	; 0xf4
 8005784:	e5b9      	b.n	80052fa <_vfprintf_r+0x322>
 8005786:	9b08      	ldr	r3, [sp, #32]
 8005788:	681f      	ldr	r7, [r3, #0]
 800578a:	2500      	movs	r5, #0
 800578c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8005790:	1d1c      	adds	r4, r3, #4
 8005792:	2f00      	cmp	r7, #0
 8005794:	f000 8639 	beq.w	800640a <_vfprintf_r+0x1432>
 8005798:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800579c:	f000 8711 	beq.w	80065c2 <_vfprintf_r+0x15ea>
 80057a0:	464a      	mov	r2, r9
 80057a2:	4629      	mov	r1, r5
 80057a4:	4638      	mov	r0, r7
 80057a6:	f7fb fc9b 	bl	80010e0 <memchr>
 80057aa:	900a      	str	r0, [sp, #40]	; 0x28
 80057ac:	2800      	cmp	r0, #0
 80057ae:	f000 85e7 	beq.w	8006380 <_vfprintf_r+0x13a8>
 80057b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80057b4:	1bdb      	subs	r3, r3, r7
 80057b6:	9309      	str	r3, [sp, #36]	; 0x24
 80057b8:	46a9      	mov	r9, r5
 80057ba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80057be:	9408      	str	r4, [sp, #32]
 80057c0:	9304      	str	r3, [sp, #16]
 80057c2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80057c6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80057ca:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80057ce:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80057d2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80057d6:	e58c      	b.n	80052f2 <_vfprintf_r+0x31a>
 80057d8:	f048 0310 	orr.w	r3, r8, #16
 80057dc:	069a      	lsls	r2, r3, #26
 80057de:	f53f aeb2 	bmi.w	8005546 <_vfprintf_r+0x56e>
 80057e2:	9a08      	ldr	r2, [sp, #32]
 80057e4:	06df      	lsls	r7, r3, #27
 80057e6:	f102 0104 	add.w	r1, r2, #4
 80057ea:	f100 837e 	bmi.w	8005eea <_vfprintf_r+0xf12>
 80057ee:	065d      	lsls	r5, r3, #25
 80057f0:	9a08      	ldr	r2, [sp, #32]
 80057f2:	f100 84e4 	bmi.w	80061be <_vfprintf_r+0x11e6>
 80057f6:	059c      	lsls	r4, r3, #22
 80057f8:	f140 8377 	bpl.w	8005eea <_vfprintf_r+0xf12>
 80057fc:	7814      	ldrb	r4, [r2, #0]
 80057fe:	9108      	str	r1, [sp, #32]
 8005800:	2500      	movs	r5, #0
 8005802:	2201      	movs	r2, #1
 8005804:	e6a9      	b.n	800555a <_vfprintf_r+0x582>
 8005806:	4b7c      	ldr	r3, [pc, #496]	; (80059f8 <_vfprintf_r+0xa20>)
 8005808:	9317      	str	r3, [sp, #92]	; 0x5c
 800580a:	f018 0f20 	tst.w	r8, #32
 800580e:	f47f aeec 	bne.w	80055ea <_vfprintf_r+0x612>
 8005812:	9a08      	ldr	r2, [sp, #32]
 8005814:	f018 0f10 	tst.w	r8, #16
 8005818:	f102 0304 	add.w	r3, r2, #4
 800581c:	f040 8354 	bne.w	8005ec8 <_vfprintf_r+0xef0>
 8005820:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005824:	9a08      	ldr	r2, [sp, #32]
 8005826:	f040 84d0 	bne.w	80061ca <_vfprintf_r+0x11f2>
 800582a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800582e:	f000 834b 	beq.w	8005ec8 <_vfprintf_r+0xef0>
 8005832:	7814      	ldrb	r4, [r2, #0]
 8005834:	9308      	str	r3, [sp, #32]
 8005836:	2500      	movs	r5, #0
 8005838:	e6e0      	b.n	80055fc <_vfprintf_r+0x624>
 800583a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800583e:	f89a 6000 	ldrb.w	r6, [sl]
 8005842:	2b00      	cmp	r3, #0
 8005844:	f47f ac46 	bne.w	80050d4 <_vfprintf_r+0xfc>
 8005848:	2320      	movs	r3, #32
 800584a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800584e:	e441      	b.n	80050d4 <_vfprintf_r+0xfc>
 8005850:	f89a 6000 	ldrb.w	r6, [sl]
 8005854:	2e6c      	cmp	r6, #108	; 0x6c
 8005856:	bf03      	ittte	eq
 8005858:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800585c:	f048 0820 	orreq.w	r8, r8, #32
 8005860:	f10a 0a01 	addeq.w	sl, sl, #1
 8005864:	f048 0810 	orrne.w	r8, r8, #16
 8005868:	e434      	b.n	80050d4 <_vfprintf_r+0xfc>
 800586a:	9a08      	ldr	r2, [sp, #32]
 800586c:	f018 0f20 	tst.w	r8, #32
 8005870:	f852 3b04 	ldr.w	r3, [r2], #4
 8005874:	9208      	str	r2, [sp, #32]
 8005876:	f000 83a1 	beq.w	8005fbc <_vfprintf_r+0xfe4>
 800587a:	9a05      	ldr	r2, [sp, #20]
 800587c:	4610      	mov	r0, r2
 800587e:	17d1      	asrs	r1, r2, #31
 8005880:	e9c3 0100 	strd	r0, r1, [r3]
 8005884:	4657      	mov	r7, sl
 8005886:	e64d      	b.n	8005524 <_vfprintf_r+0x54c>
 8005888:	f89a 6000 	ldrb.w	r6, [sl]
 800588c:	2e68      	cmp	r6, #104	; 0x68
 800588e:	bf03      	ittte	eq
 8005890:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8005894:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8005898:	f10a 0a01 	addeq.w	sl, sl, #1
 800589c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80058a0:	e418      	b.n	80050d4 <_vfprintf_r+0xfc>
 80058a2:	9908      	ldr	r1, [sp, #32]
 80058a4:	4b55      	ldr	r3, [pc, #340]	; (80059fc <_vfprintf_r+0xa24>)
 80058a6:	680c      	ldr	r4, [r1, #0]
 80058a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80058aa:	f647 0230 	movw	r2, #30768	; 0x7830
 80058ae:	3104      	adds	r1, #4
 80058b0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80058b4:	f048 0302 	orr.w	r3, r8, #2
 80058b8:	9108      	str	r1, [sp, #32]
 80058ba:	2500      	movs	r5, #0
 80058bc:	2202      	movs	r2, #2
 80058be:	2678      	movs	r6, #120	; 0x78
 80058c0:	e64b      	b.n	800555a <_vfprintf_r+0x582>
 80058c2:	f048 0808 	orr.w	r8, r8, #8
 80058c6:	f89a 6000 	ldrb.w	r6, [sl]
 80058ca:	e403      	b.n	80050d4 <_vfprintf_r+0xfc>
 80058cc:	f048 0310 	orr.w	r3, r8, #16
 80058d0:	069f      	lsls	r7, r3, #26
 80058d2:	f53f acd1 	bmi.w	8005278 <_vfprintf_r+0x2a0>
 80058d6:	9908      	ldr	r1, [sp, #32]
 80058d8:	06dd      	lsls	r5, r3, #27
 80058da:	f101 0204 	add.w	r2, r1, #4
 80058de:	f100 82fd 	bmi.w	8005edc <_vfprintf_r+0xf04>
 80058e2:	065c      	lsls	r4, r3, #25
 80058e4:	9908      	ldr	r1, [sp, #32]
 80058e6:	f100 8475 	bmi.w	80061d4 <_vfprintf_r+0x11fc>
 80058ea:	0598      	lsls	r0, r3, #22
 80058ec:	f140 82f6 	bpl.w	8005edc <_vfprintf_r+0xf04>
 80058f0:	f991 4000 	ldrsb.w	r4, [r1]
 80058f4:	9208      	str	r2, [sp, #32]
 80058f6:	17e5      	asrs	r5, r4, #31
 80058f8:	4620      	mov	r0, r4
 80058fa:	4629      	mov	r1, r5
 80058fc:	e4c7      	b.n	800528e <_vfprintf_r+0x2b6>
 80058fe:	9a08      	ldr	r2, [sp, #32]
 8005900:	f018 0f10 	tst.w	r8, #16
 8005904:	f102 0304 	add.w	r3, r2, #4
 8005908:	f040 82e3 	bne.w	8005ed2 <_vfprintf_r+0xefa>
 800590c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005910:	9a08      	ldr	r2, [sp, #32]
 8005912:	f040 8467 	bne.w	80061e4 <_vfprintf_r+0x120c>
 8005916:	f418 7f00 	tst.w	r8, #512	; 0x200
 800591a:	f000 82da 	beq.w	8005ed2 <_vfprintf_r+0xefa>
 800591e:	7814      	ldrb	r4, [r2, #0]
 8005920:	9308      	str	r3, [sp, #32]
 8005922:	2500      	movs	r5, #0
 8005924:	e488      	b.n	8005238 <_vfprintf_r+0x260>
 8005926:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800592a:	f002 fdb9 	bl	80084a0 <__retarget_lock_release_recursive>
 800592e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005932:	9305      	str	r3, [sp, #20]
 8005934:	e443      	b.n	80051be <_vfprintf_r+0x1e6>
 8005936:	2e00      	cmp	r6, #0
 8005938:	f43f adf8 	beq.w	800552c <_vfprintf_r+0x554>
 800593c:	2300      	movs	r3, #0
 800593e:	2101      	movs	r1, #1
 8005940:	461a      	mov	r2, r3
 8005942:	9104      	str	r1, [sp, #16]
 8005944:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8005948:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800594c:	930a      	str	r3, [sp, #40]	; 0x28
 800594e:	4699      	mov	r9, r3
 8005950:	930f      	str	r3, [sp, #60]	; 0x3c
 8005952:	9314      	str	r3, [sp, #80]	; 0x50
 8005954:	9311      	str	r3, [sp, #68]	; 0x44
 8005956:	9109      	str	r1, [sp, #36]	; 0x24
 8005958:	af3d      	add	r7, sp, #244	; 0xf4
 800595a:	e4ce      	b.n	80052fa <_vfprintf_r+0x322>
 800595c:	2e65      	cmp	r6, #101	; 0x65
 800595e:	f340 80ca 	ble.w	8005af6 <_vfprintf_r+0xb1e>
 8005962:	2200      	movs	r2, #0
 8005964:	2300      	movs	r3, #0
 8005966:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800596a:	f7fb f86d 	bl	8000a48 <__aeabi_dcmpeq>
 800596e:	2800      	cmp	r0, #0
 8005970:	f000 8169 	beq.w	8005c46 <_vfprintf_r+0xc6e>
 8005974:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005976:	4a22      	ldr	r2, [pc, #136]	; (8005a00 <_vfprintf_r+0xa28>)
 8005978:	f8cb 2000 	str.w	r2, [fp]
 800597c:	3301      	adds	r3, #1
 800597e:	3401      	adds	r4, #1
 8005980:	2201      	movs	r2, #1
 8005982:	2b07      	cmp	r3, #7
 8005984:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005988:	f8cb 2004 	str.w	r2, [fp, #4]
 800598c:	f300 8406 	bgt.w	800619c <_vfprintf_r+0x11c4>
 8005990:	f10b 0b08 	add.w	fp, fp, #8
 8005994:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005996:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005998:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800599a:	4293      	cmp	r3, r2
 800599c:	db03      	blt.n	80059a6 <_vfprintf_r+0x9ce>
 800599e:	f018 0f01 	tst.w	r8, #1
 80059a2:	f43f ad6a 	beq.w	800547a <_vfprintf_r+0x4a2>
 80059a6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80059a8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80059aa:	f8cb 2000 	str.w	r2, [fp]
 80059ae:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80059b0:	f8cb 2004 	str.w	r2, [fp, #4]
 80059b4:	3301      	adds	r3, #1
 80059b6:	4414      	add	r4, r2
 80059b8:	2b07      	cmp	r3, #7
 80059ba:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80059be:	f300 8517 	bgt.w	80063f0 <_vfprintf_r+0x1418>
 80059c2:	f10b 0b08 	add.w	fp, fp, #8
 80059c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80059c8:	1e5d      	subs	r5, r3, #1
 80059ca:	2d00      	cmp	r5, #0
 80059cc:	f77f ad55 	ble.w	800547a <_vfprintf_r+0x4a2>
 80059d0:	2d10      	cmp	r5, #16
 80059d2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80059d4:	4b0b      	ldr	r3, [pc, #44]	; (8005a04 <_vfprintf_r+0xa2c>)
 80059d6:	f340 82e7 	ble.w	8005fa8 <_vfprintf_r+0xfd0>
 80059da:	4619      	mov	r1, r3
 80059dc:	2610      	movs	r6, #16
 80059de:	4623      	mov	r3, r4
 80059e0:	9f03      	ldr	r7, [sp, #12]
 80059e2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80059e6:	460c      	mov	r4, r1
 80059e8:	e014      	b.n	8005a14 <_vfprintf_r+0xa3c>
 80059ea:	bf00      	nop
 80059ec:	7fefffff 	.word	0x7fefffff
 80059f0:	08009aec 	.word	0x08009aec
 80059f4:	08009ae8 	.word	0x08009ae8
 80059f8:	08009b0c 	.word	0x08009b0c
 80059fc:	08009af8 	.word	0x08009af8
 8005a00:	08009b28 	.word	0x08009b28
 8005a04:	08009b3c 	.word	0x08009b3c
 8005a08:	f10b 0b08 	add.w	fp, fp, #8
 8005a0c:	3d10      	subs	r5, #16
 8005a0e:	2d10      	cmp	r5, #16
 8005a10:	f340 82c7 	ble.w	8005fa2 <_vfprintf_r+0xfca>
 8005a14:	3201      	adds	r2, #1
 8005a16:	3310      	adds	r3, #16
 8005a18:	2a07      	cmp	r2, #7
 8005a1a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005a1e:	e9cb 4600 	strd	r4, r6, [fp]
 8005a22:	ddf1      	ble.n	8005a08 <_vfprintf_r+0xa30>
 8005a24:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a26:	4649      	mov	r1, r9
 8005a28:	4638      	mov	r0, r7
 8005a2a:	f003 fbb5 	bl	8009198 <__sprint_r>
 8005a2e:	2800      	cmp	r0, #0
 8005a30:	d14c      	bne.n	8005acc <_vfprintf_r+0xaf4>
 8005a32:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005a36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005a3a:	e7e7      	b.n	8005a0c <_vfprintf_r+0xa34>
 8005a3c:	9b06      	ldr	r3, [sp, #24]
 8005a3e:	9a04      	ldr	r2, [sp, #16]
 8005a40:	1a9d      	subs	r5, r3, r2
 8005a42:	2d00      	cmp	r5, #0
 8005a44:	f77f acc9 	ble.w	80053da <_vfprintf_r+0x402>
 8005a48:	2d10      	cmp	r5, #16
 8005a4a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a4c:	4bbc      	ldr	r3, [pc, #752]	; (8005d40 <_vfprintf_r+0xd68>)
 8005a4e:	dd27      	ble.n	8005aa0 <_vfprintf_r+0xac8>
 8005a50:	4659      	mov	r1, fp
 8005a52:	4620      	mov	r0, r4
 8005a54:	46bb      	mov	fp, r7
 8005a56:	461c      	mov	r4, r3
 8005a58:	4637      	mov	r7, r6
 8005a5a:	9e07      	ldr	r6, [sp, #28]
 8005a5c:	e004      	b.n	8005a68 <_vfprintf_r+0xa90>
 8005a5e:	3d10      	subs	r5, #16
 8005a60:	2d10      	cmp	r5, #16
 8005a62:	f101 0108 	add.w	r1, r1, #8
 8005a66:	dd16      	ble.n	8005a96 <_vfprintf_r+0xabe>
 8005a68:	3201      	adds	r2, #1
 8005a6a:	3010      	adds	r0, #16
 8005a6c:	2310      	movs	r3, #16
 8005a6e:	2a07      	cmp	r2, #7
 8005a70:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005a74:	600c      	str	r4, [r1, #0]
 8005a76:	604b      	str	r3, [r1, #4]
 8005a78:	ddf1      	ble.n	8005a5e <_vfprintf_r+0xa86>
 8005a7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a7c:	4631      	mov	r1, r6
 8005a7e:	9803      	ldr	r0, [sp, #12]
 8005a80:	f003 fb8a 	bl	8009198 <__sprint_r>
 8005a84:	2800      	cmp	r0, #0
 8005a86:	f040 80a8 	bne.w	8005bda <_vfprintf_r+0xc02>
 8005a8a:	3d10      	subs	r5, #16
 8005a8c:	2d10      	cmp	r5, #16
 8005a8e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005a92:	a92d      	add	r1, sp, #180	; 0xb4
 8005a94:	dce8      	bgt.n	8005a68 <_vfprintf_r+0xa90>
 8005a96:	463e      	mov	r6, r7
 8005a98:	4623      	mov	r3, r4
 8005a9a:	465f      	mov	r7, fp
 8005a9c:	4604      	mov	r4, r0
 8005a9e:	468b      	mov	fp, r1
 8005aa0:	3201      	adds	r2, #1
 8005aa2:	442c      	add	r4, r5
 8005aa4:	2a07      	cmp	r2, #7
 8005aa6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005aaa:	e9cb 3500 	strd	r3, r5, [fp]
 8005aae:	f300 8292 	bgt.w	8005fd6 <_vfprintf_r+0xffe>
 8005ab2:	f10b 0b08 	add.w	fp, fp, #8
 8005ab6:	e490      	b.n	80053da <_vfprintf_r+0x402>
 8005ab8:	aa2a      	add	r2, sp, #168	; 0xa8
 8005aba:	9907      	ldr	r1, [sp, #28]
 8005abc:	9803      	ldr	r0, [sp, #12]
 8005abe:	f003 fb6b 	bl	8009198 <__sprint_r>
 8005ac2:	2800      	cmp	r0, #0
 8005ac4:	f43f ad23 	beq.w	800550e <_vfprintf_r+0x536>
 8005ac8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005acc:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005ace:	b111      	cbz	r1, 8005ad6 <_vfprintf_r+0xafe>
 8005ad0:	9803      	ldr	r0, [sp, #12]
 8005ad2:	f002 fa35 	bl	8007f40 <_free_r>
 8005ad6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005ada:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005ade:	07d0      	lsls	r0, r2, #31
 8005ae0:	d402      	bmi.n	8005ae8 <_vfprintf_r+0xb10>
 8005ae2:	0599      	lsls	r1, r3, #22
 8005ae4:	f140 81d0 	bpl.w	8005e88 <_vfprintf_r+0xeb0>
 8005ae8:	065a      	lsls	r2, r3, #25
 8005aea:	f53f ab65 	bmi.w	80051b8 <_vfprintf_r+0x1e0>
 8005aee:	9805      	ldr	r0, [sp, #20]
 8005af0:	b057      	add	sp, #348	; 0x15c
 8005af2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005af6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005af8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005afa:	2a01      	cmp	r2, #1
 8005afc:	f104 0401 	add.w	r4, r4, #1
 8005b00:	f103 0501 	add.w	r5, r3, #1
 8005b04:	f10b 0608 	add.w	r6, fp, #8
 8005b08:	f340 811c 	ble.w	8005d44 <_vfprintf_r+0xd6c>
 8005b0c:	2301      	movs	r3, #1
 8005b0e:	2d07      	cmp	r5, #7
 8005b10:	f8cb 7000 	str.w	r7, [fp]
 8005b14:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005b18:	f8cb 3004 	str.w	r3, [fp, #4]
 8005b1c:	f300 81bb 	bgt.w	8005e96 <_vfprintf_r+0xebe>
 8005b20:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005b22:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005b24:	1c69      	adds	r1, r5, #1
 8005b26:	441c      	add	r4, r3
 8005b28:	2907      	cmp	r1, #7
 8005b2a:	910b      	str	r1, [sp, #44]	; 0x2c
 8005b2c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8005b30:	e9c6 2300 	strd	r2, r3, [r6]
 8005b34:	f300 81bb 	bgt.w	8005eae <_vfprintf_r+0xed6>
 8005b38:	3608      	adds	r6, #8
 8005b3a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005b3c:	1c53      	adds	r3, r2, #1
 8005b3e:	461d      	mov	r5, r3
 8005b40:	9509      	str	r5, [sp, #36]	; 0x24
 8005b42:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005b44:	930e      	str	r3, [sp, #56]	; 0x38
 8005b46:	2200      	movs	r2, #0
 8005b48:	2300      	movs	r3, #0
 8005b4a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005b4e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005b52:	f106 0b08 	add.w	fp, r6, #8
 8005b56:	f7fa ff77 	bl	8000a48 <__aeabi_dcmpeq>
 8005b5a:	2800      	cmp	r0, #0
 8005b5c:	f040 80c2 	bne.w	8005ce4 <_vfprintf_r+0xd0c>
 8005b60:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005b62:	f8c6 9004 	str.w	r9, [r6, #4]
 8005b66:	3701      	adds	r7, #1
 8005b68:	444c      	add	r4, r9
 8005b6a:	2d07      	cmp	r5, #7
 8005b6c:	6037      	str	r7, [r6, #0]
 8005b6e:	942c      	str	r4, [sp, #176]	; 0xb0
 8005b70:	952b      	str	r5, [sp, #172]	; 0xac
 8005b72:	f300 80f9 	bgt.w	8005d68 <_vfprintf_r+0xd90>
 8005b76:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005b78:	f106 0310 	add.w	r3, r6, #16
 8005b7c:	3202      	adds	r2, #2
 8005b7e:	465e      	mov	r6, fp
 8005b80:	9209      	str	r2, [sp, #36]	; 0x24
 8005b82:	469b      	mov	fp, r3
 8005b84:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8005b86:	6072      	str	r2, [r6, #4]
 8005b88:	4414      	add	r4, r2
 8005b8a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005b8c:	942c      	str	r4, [sp, #176]	; 0xb0
 8005b8e:	ab26      	add	r3, sp, #152	; 0x98
 8005b90:	2a07      	cmp	r2, #7
 8005b92:	922b      	str	r2, [sp, #172]	; 0xac
 8005b94:	6033      	str	r3, [r6, #0]
 8005b96:	f77f ac70 	ble.w	800547a <_vfprintf_r+0x4a2>
 8005b9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8005b9c:	9907      	ldr	r1, [sp, #28]
 8005b9e:	9803      	ldr	r0, [sp, #12]
 8005ba0:	f003 fafa 	bl	8009198 <__sprint_r>
 8005ba4:	2800      	cmp	r0, #0
 8005ba6:	d18f      	bne.n	8005ac8 <_vfprintf_r+0xaf0>
 8005ba8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005baa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005bae:	e464      	b.n	800547a <_vfprintf_r+0x4a2>
 8005bb0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8005bb2:	af56      	add	r7, sp, #344	; 0x158
 8005bb4:	0923      	lsrs	r3, r4, #4
 8005bb6:	f004 010f 	and.w	r1, r4, #15
 8005bba:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8005bbe:	092a      	lsrs	r2, r5, #4
 8005bc0:	461c      	mov	r4, r3
 8005bc2:	4615      	mov	r5, r2
 8005bc4:	5c43      	ldrb	r3, [r0, r1]
 8005bc6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005bca:	ea54 0305 	orrs.w	r3, r4, r5
 8005bce:	d1f1      	bne.n	8005bb4 <_vfprintf_r+0xbdc>
 8005bd0:	9b04      	ldr	r3, [sp, #16]
 8005bd2:	1bdb      	subs	r3, r3, r7
 8005bd4:	9309      	str	r3, [sp, #36]	; 0x24
 8005bd6:	f7ff bb80 	b.w	80052da <_vfprintf_r+0x302>
 8005bda:	46b1      	mov	r9, r6
 8005bdc:	e776      	b.n	8005acc <_vfprintf_r+0xaf4>
 8005bde:	aa2a      	add	r2, sp, #168	; 0xa8
 8005be0:	9907      	ldr	r1, [sp, #28]
 8005be2:	9803      	ldr	r0, [sp, #12]
 8005be4:	f003 fad8 	bl	8009198 <__sprint_r>
 8005be8:	2800      	cmp	r0, #0
 8005bea:	f47f af6d 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005bee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005bf0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005bf4:	f7ff bbdd 	b.w	80053b2 <_vfprintf_r+0x3da>
 8005bf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8005bfa:	9907      	ldr	r1, [sp, #28]
 8005bfc:	9803      	ldr	r0, [sp, #12]
 8005bfe:	f003 facb 	bl	8009198 <__sprint_r>
 8005c02:	2800      	cmp	r0, #0
 8005c04:	f47f af60 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005c08:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c0a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c0e:	f7ff bbe0 	b.w	80053d2 <_vfprintf_r+0x3fa>
 8005c12:	4698      	mov	r8, r3
 8005c14:	2d00      	cmp	r5, #0
 8005c16:	bf08      	it	eq
 8005c18:	2c0a      	cmpeq	r4, #10
 8005c1a:	f080 8170 	bcs.w	8005efe <_vfprintf_r+0xf26>
 8005c1e:	af56      	add	r7, sp, #344	; 0x158
 8005c20:	3430      	adds	r4, #48	; 0x30
 8005c22:	2301      	movs	r3, #1
 8005c24:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8005c28:	9309      	str	r3, [sp, #36]	; 0x24
 8005c2a:	f7ff bb56 	b.w	80052da <_vfprintf_r+0x302>
 8005c2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c30:	9907      	ldr	r1, [sp, #28]
 8005c32:	9803      	ldr	r0, [sp, #12]
 8005c34:	f003 fab0 	bl	8009198 <__sprint_r>
 8005c38:	2800      	cmp	r0, #0
 8005c3a:	f47f af45 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005c3e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c44:	e406      	b.n	8005454 <_vfprintf_r+0x47c>
 8005c46:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005c48:	2b00      	cmp	r3, #0
 8005c4a:	f340 8273 	ble.w	8006134 <_vfprintf_r+0x115c>
 8005c4e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8005c52:	4293      	cmp	r3, r2
 8005c54:	bfa8      	it	ge
 8005c56:	4613      	movge	r3, r2
 8005c58:	2b00      	cmp	r3, #0
 8005c5a:	461d      	mov	r5, r3
 8005c5c:	dd0d      	ble.n	8005c7a <_vfprintf_r+0xca2>
 8005c5e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005c60:	f8cb 7000 	str.w	r7, [fp]
 8005c64:	3301      	adds	r3, #1
 8005c66:	442c      	add	r4, r5
 8005c68:	2b07      	cmp	r3, #7
 8005c6a:	942c      	str	r4, [sp, #176]	; 0xb0
 8005c6c:	f8cb 5004 	str.w	r5, [fp, #4]
 8005c70:	932b      	str	r3, [sp, #172]	; 0xac
 8005c72:	f300 82c1 	bgt.w	80061f8 <_vfprintf_r+0x1220>
 8005c76:	f10b 0b08 	add.w	fp, fp, #8
 8005c7a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005c7c:	2d00      	cmp	r5, #0
 8005c7e:	bfa8      	it	ge
 8005c80:	1b5b      	subge	r3, r3, r5
 8005c82:	2b00      	cmp	r3, #0
 8005c84:	461d      	mov	r5, r3
 8005c86:	f340 8099 	ble.w	8005dbc <_vfprintf_r+0xde4>
 8005c8a:	2d10      	cmp	r5, #16
 8005c8c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005c8e:	4b2c      	ldr	r3, [pc, #176]	; (8005d40 <_vfprintf_r+0xd68>)
 8005c90:	f340 83db 	ble.w	800644a <_vfprintf_r+0x1472>
 8005c94:	4618      	mov	r0, r3
 8005c96:	4621      	mov	r1, r4
 8005c98:	465b      	mov	r3, fp
 8005c9a:	2610      	movs	r6, #16
 8005c9c:	46bb      	mov	fp, r7
 8005c9e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005ca2:	9c07      	ldr	r4, [sp, #28]
 8005ca4:	4607      	mov	r7, r0
 8005ca6:	e004      	b.n	8005cb2 <_vfprintf_r+0xcda>
 8005ca8:	3308      	adds	r3, #8
 8005caa:	3d10      	subs	r5, #16
 8005cac:	2d10      	cmp	r5, #16
 8005cae:	f340 83c7 	ble.w	8006440 <_vfprintf_r+0x1468>
 8005cb2:	3201      	adds	r2, #1
 8005cb4:	3110      	adds	r1, #16
 8005cb6:	2a07      	cmp	r2, #7
 8005cb8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8005cbc:	e9c3 7600 	strd	r7, r6, [r3]
 8005cc0:	ddf2      	ble.n	8005ca8 <_vfprintf_r+0xcd0>
 8005cc2:	aa2a      	add	r2, sp, #168	; 0xa8
 8005cc4:	4621      	mov	r1, r4
 8005cc6:	4648      	mov	r0, r9
 8005cc8:	f003 fa66 	bl	8009198 <__sprint_r>
 8005ccc:	2800      	cmp	r0, #0
 8005cce:	f040 84a5 	bne.w	800661c <_vfprintf_r+0x1644>
 8005cd2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8005cd6:	ab2d      	add	r3, sp, #180	; 0xb4
 8005cd8:	e7e7      	b.n	8005caa <_vfprintf_r+0xcd2>
 8005cda:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005cde:	af56      	add	r7, sp, #344	; 0x158
 8005ce0:	f7ff bafb 	b.w	80052da <_vfprintf_r+0x302>
 8005ce4:	f1b9 0f00 	cmp.w	r9, #0
 8005ce8:	f77f af4c 	ble.w	8005b84 <_vfprintf_r+0xbac>
 8005cec:	f1b9 0f10 	cmp.w	r9, #16
 8005cf0:	4b13      	ldr	r3, [pc, #76]	; (8005d40 <_vfprintf_r+0xd68>)
 8005cf2:	f340 8659 	ble.w	80069a8 <_vfprintf_r+0x19d0>
 8005cf6:	4619      	mov	r1, r3
 8005cf8:	4622      	mov	r2, r4
 8005cfa:	4633      	mov	r3, r6
 8005cfc:	2710      	movs	r7, #16
 8005cfe:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8005d02:	9c07      	ldr	r4, [sp, #28]
 8005d04:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005d06:	460e      	mov	r6, r1
 8005d08:	e007      	b.n	8005d1a <_vfprintf_r+0xd42>
 8005d0a:	3308      	adds	r3, #8
 8005d0c:	f1a9 0910 	sub.w	r9, r9, #16
 8005d10:	f1b9 0f10 	cmp.w	r9, #16
 8005d14:	f340 8353 	ble.w	80063be <_vfprintf_r+0x13e6>
 8005d18:	3501      	adds	r5, #1
 8005d1a:	3210      	adds	r2, #16
 8005d1c:	2d07      	cmp	r5, #7
 8005d1e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8005d22:	e9c3 6700 	strd	r6, r7, [r3]
 8005d26:	ddf0      	ble.n	8005d0a <_vfprintf_r+0xd32>
 8005d28:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d2a:	4621      	mov	r1, r4
 8005d2c:	4658      	mov	r0, fp
 8005d2e:	f003 fa33 	bl	8009198 <__sprint_r>
 8005d32:	2800      	cmp	r0, #0
 8005d34:	f040 8472 	bne.w	800661c <_vfprintf_r+0x1644>
 8005d38:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8005d3c:	ab2d      	add	r3, sp, #180	; 0xb4
 8005d3e:	e7e5      	b.n	8005d0c <_vfprintf_r+0xd34>
 8005d40:	08009b3c 	.word	0x08009b3c
 8005d44:	f018 0f01 	tst.w	r8, #1
 8005d48:	f47f aee0 	bne.w	8005b0c <_vfprintf_r+0xb34>
 8005d4c:	2201      	movs	r2, #1
 8005d4e:	2d07      	cmp	r5, #7
 8005d50:	f8cb 7000 	str.w	r7, [fp]
 8005d54:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005d58:	f8cb 2004 	str.w	r2, [fp, #4]
 8005d5c:	dc04      	bgt.n	8005d68 <_vfprintf_r+0xd90>
 8005d5e:	3302      	adds	r3, #2
 8005d60:	9309      	str	r3, [sp, #36]	; 0x24
 8005d62:	f10b 0b10 	add.w	fp, fp, #16
 8005d66:	e70d      	b.n	8005b84 <_vfprintf_r+0xbac>
 8005d68:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d6a:	9907      	ldr	r1, [sp, #28]
 8005d6c:	9803      	ldr	r0, [sp, #12]
 8005d6e:	f003 fa13 	bl	8009198 <__sprint_r>
 8005d72:	2800      	cmp	r0, #0
 8005d74:	f47f aea8 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005d78:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005d7c:	3301      	adds	r3, #1
 8005d7e:	9309      	str	r3, [sp, #36]	; 0x24
 8005d80:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8005d84:	ae2d      	add	r6, sp, #180	; 0xb4
 8005d86:	e6fd      	b.n	8005b84 <_vfprintf_r+0xbac>
 8005d88:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d8a:	9907      	ldr	r1, [sp, #28]
 8005d8c:	9803      	ldr	r0, [sp, #12]
 8005d8e:	f003 fa03 	bl	8009198 <__sprint_r>
 8005d92:	2800      	cmp	r0, #0
 8005d94:	f47f ae98 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005d98:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005d9c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005d9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005da2:	f7ff baf6 	b.w	8005392 <_vfprintf_r+0x3ba>
 8005da6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005da8:	9907      	ldr	r1, [sp, #28]
 8005daa:	9803      	ldr	r0, [sp, #12]
 8005dac:	f003 f9f4 	bl	8009198 <__sprint_r>
 8005db0:	2800      	cmp	r0, #0
 8005db2:	f47f ae89 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005db6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005db8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005dbc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005dbe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8005dc2:	443b      	add	r3, r7
 8005dc4:	4699      	mov	r9, r3
 8005dc6:	f040 8357 	bne.w	8006478 <_vfprintf_r+0x14a0>
 8005dca:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005dcc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005dce:	4293      	cmp	r3, r2
 8005dd0:	db49      	blt.n	8005e66 <_vfprintf_r+0xe8e>
 8005dd2:	f018 0f01 	tst.w	r8, #1
 8005dd6:	d146      	bne.n	8005e66 <_vfprintf_r+0xe8e>
 8005dd8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005dda:	18bd      	adds	r5, r7, r2
 8005ddc:	eba5 0509 	sub.w	r5, r5, r9
 8005de0:	1ad3      	subs	r3, r2, r3
 8005de2:	429d      	cmp	r5, r3
 8005de4:	bfa8      	it	ge
 8005de6:	461d      	movge	r5, r3
 8005de8:	2d00      	cmp	r5, #0
 8005dea:	dd0d      	ble.n	8005e08 <_vfprintf_r+0xe30>
 8005dec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005dee:	f8cb 9000 	str.w	r9, [fp]
 8005df2:	3201      	adds	r2, #1
 8005df4:	442c      	add	r4, r5
 8005df6:	2a07      	cmp	r2, #7
 8005df8:	942c      	str	r4, [sp, #176]	; 0xb0
 8005dfa:	f8cb 5004 	str.w	r5, [fp, #4]
 8005dfe:	922b      	str	r2, [sp, #172]	; 0xac
 8005e00:	f300 8462 	bgt.w	80066c8 <_vfprintf_r+0x16f0>
 8005e04:	f10b 0b08 	add.w	fp, fp, #8
 8005e08:	2d00      	cmp	r5, #0
 8005e0a:	bfac      	ite	ge
 8005e0c:	1b5d      	subge	r5, r3, r5
 8005e0e:	461d      	movlt	r5, r3
 8005e10:	2d00      	cmp	r5, #0
 8005e12:	f77f ab32 	ble.w	800547a <_vfprintf_r+0x4a2>
 8005e16:	2d10      	cmp	r5, #16
 8005e18:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005e1a:	4bc5      	ldr	r3, [pc, #788]	; (8006130 <_vfprintf_r+0x1158>)
 8005e1c:	f340 80c4 	ble.w	8005fa8 <_vfprintf_r+0xfd0>
 8005e20:	4619      	mov	r1, r3
 8005e22:	2610      	movs	r6, #16
 8005e24:	4623      	mov	r3, r4
 8005e26:	9f03      	ldr	r7, [sp, #12]
 8005e28:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005e2c:	460c      	mov	r4, r1
 8005e2e:	e005      	b.n	8005e3c <_vfprintf_r+0xe64>
 8005e30:	f10b 0b08 	add.w	fp, fp, #8
 8005e34:	3d10      	subs	r5, #16
 8005e36:	2d10      	cmp	r5, #16
 8005e38:	f340 80b3 	ble.w	8005fa2 <_vfprintf_r+0xfca>
 8005e3c:	3201      	adds	r2, #1
 8005e3e:	3310      	adds	r3, #16
 8005e40:	2a07      	cmp	r2, #7
 8005e42:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005e46:	e9cb 4600 	strd	r4, r6, [fp]
 8005e4a:	ddf1      	ble.n	8005e30 <_vfprintf_r+0xe58>
 8005e4c:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e4e:	4649      	mov	r1, r9
 8005e50:	4638      	mov	r0, r7
 8005e52:	f003 f9a1 	bl	8009198 <__sprint_r>
 8005e56:	2800      	cmp	r0, #0
 8005e58:	f47f ae38 	bne.w	8005acc <_vfprintf_r+0xaf4>
 8005e5c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005e60:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e64:	e7e6      	b.n	8005e34 <_vfprintf_r+0xe5c>
 8005e66:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005e68:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005e6a:	f8cb 1000 	str.w	r1, [fp]
 8005e6e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005e70:	f8cb 1004 	str.w	r1, [fp, #4]
 8005e74:	3201      	adds	r2, #1
 8005e76:	440c      	add	r4, r1
 8005e78:	2a07      	cmp	r2, #7
 8005e7a:	942c      	str	r4, [sp, #176]	; 0xb0
 8005e7c:	922b      	str	r2, [sp, #172]	; 0xac
 8005e7e:	f300 828c 	bgt.w	800639a <_vfprintf_r+0x13c2>
 8005e82:	f10b 0b08 	add.w	fp, fp, #8
 8005e86:	e7a7      	b.n	8005dd8 <_vfprintf_r+0xe00>
 8005e88:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005e8c:	f002 fb08 	bl	80084a0 <__retarget_lock_release_recursive>
 8005e90:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005e94:	e628      	b.n	8005ae8 <_vfprintf_r+0xb10>
 8005e96:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e98:	9907      	ldr	r1, [sp, #28]
 8005e9a:	9803      	ldr	r0, [sp, #12]
 8005e9c:	f003 f97c 	bl	8009198 <__sprint_r>
 8005ea0:	2800      	cmp	r0, #0
 8005ea2:	f47f ae11 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005ea6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8005eaa:	ae2d      	add	r6, sp, #180	; 0xb4
 8005eac:	e638      	b.n	8005b20 <_vfprintf_r+0xb48>
 8005eae:	aa2a      	add	r2, sp, #168	; 0xa8
 8005eb0:	9907      	ldr	r1, [sp, #28]
 8005eb2:	9803      	ldr	r0, [sp, #12]
 8005eb4:	f003 f970 	bl	8009198 <__sprint_r>
 8005eb8:	2800      	cmp	r0, #0
 8005eba:	f47f ae05 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005ebe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005ec2:	ae2d      	add	r6, sp, #180	; 0xb4
 8005ec4:	930b      	str	r3, [sp, #44]	; 0x2c
 8005ec6:	e638      	b.n	8005b3a <_vfprintf_r+0xb62>
 8005ec8:	6814      	ldr	r4, [r2, #0]
 8005eca:	9308      	str	r3, [sp, #32]
 8005ecc:	2500      	movs	r5, #0
 8005ece:	f7ff bb95 	b.w	80055fc <_vfprintf_r+0x624>
 8005ed2:	6814      	ldr	r4, [r2, #0]
 8005ed4:	9308      	str	r3, [sp, #32]
 8005ed6:	2500      	movs	r5, #0
 8005ed8:	f7ff b9ae 	b.w	8005238 <_vfprintf_r+0x260>
 8005edc:	680c      	ldr	r4, [r1, #0]
 8005ede:	9208      	str	r2, [sp, #32]
 8005ee0:	17e5      	asrs	r5, r4, #31
 8005ee2:	4620      	mov	r0, r4
 8005ee4:	4629      	mov	r1, r5
 8005ee6:	f7ff b9d2 	b.w	800528e <_vfprintf_r+0x2b6>
 8005eea:	6814      	ldr	r4, [r2, #0]
 8005eec:	9108      	str	r1, [sp, #32]
 8005eee:	2201      	movs	r2, #1
 8005ef0:	2500      	movs	r5, #0
 8005ef2:	f7ff bb32 	b.w	800555a <_vfprintf_r+0x582>
 8005ef6:	2a01      	cmp	r2, #1
 8005ef8:	f47f ab3c 	bne.w	8005574 <_vfprintf_r+0x59c>
 8005efc:	e68f      	b.n	8005c1e <_vfprintf_r+0xc46>
 8005efe:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8005f02:	2200      	movs	r2, #0
 8005f04:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8005f08:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8005f0c:	af56      	add	r7, sp, #344	; 0x158
 8005f0e:	4692      	mov	sl, r2
 8005f10:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8005f14:	461e      	mov	r6, r3
 8005f16:	e00a      	b.n	8005f2e <_vfprintf_r+0xf56>
 8005f18:	2300      	movs	r3, #0
 8005f1a:	4620      	mov	r0, r4
 8005f1c:	4629      	mov	r1, r5
 8005f1e:	220a      	movs	r2, #10
 8005f20:	f7fa fdec 	bl	8000afc <__aeabi_uldivmod>
 8005f24:	4604      	mov	r4, r0
 8005f26:	460d      	mov	r5, r1
 8005f28:	ea54 0305 	orrs.w	r3, r4, r5
 8005f2c:	d029      	beq.n	8005f82 <_vfprintf_r+0xfaa>
 8005f2e:	220a      	movs	r2, #10
 8005f30:	2300      	movs	r3, #0
 8005f32:	4620      	mov	r0, r4
 8005f34:	4629      	mov	r1, r5
 8005f36:	f7fa fde1 	bl	8000afc <__aeabi_uldivmod>
 8005f3a:	3230      	adds	r2, #48	; 0x30
 8005f3c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8005f40:	f10a 0a01 	add.w	sl, sl, #1
 8005f44:	3f01      	subs	r7, #1
 8005f46:	2e00      	cmp	r6, #0
 8005f48:	d0e6      	beq.n	8005f18 <_vfprintf_r+0xf40>
 8005f4a:	f898 3000 	ldrb.w	r3, [r8]
 8005f4e:	459a      	cmp	sl, r3
 8005f50:	d1e2      	bne.n	8005f18 <_vfprintf_r+0xf40>
 8005f52:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8005f56:	d0df      	beq.n	8005f18 <_vfprintf_r+0xf40>
 8005f58:	2d00      	cmp	r5, #0
 8005f5a:	bf08      	it	eq
 8005f5c:	2c0a      	cmpeq	r4, #10
 8005f5e:	d3db      	bcc.n	8005f18 <_vfprintf_r+0xf40>
 8005f60:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8005f62:	9918      	ldr	r1, [sp, #96]	; 0x60
 8005f64:	1aff      	subs	r7, r7, r3
 8005f66:	461a      	mov	r2, r3
 8005f68:	4638      	mov	r0, r7
 8005f6a:	f003 f8a7 	bl	80090bc <strncpy>
 8005f6e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8005f72:	2b00      	cmp	r3, #0
 8005f74:	f000 8496 	beq.w	80068a4 <_vfprintf_r+0x18cc>
 8005f78:	f108 0801 	add.w	r8, r8, #1
 8005f7c:	f04f 0a00 	mov.w	sl, #0
 8005f80:	e7ca      	b.n	8005f18 <_vfprintf_r+0xf40>
 8005f82:	9b04      	ldr	r3, [sp, #16]
 8005f84:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005f88:	1bdb      	subs	r3, r3, r7
 8005f8a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8005f8e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8005f90:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005f94:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8005f98:	9309      	str	r3, [sp, #36]	; 0x24
 8005f9a:	f7ff b99e 	b.w	80052da <_vfprintf_r+0x302>
 8005f9e:	46c1      	mov	r9, r8
 8005fa0:	e594      	b.n	8005acc <_vfprintf_r+0xaf4>
 8005fa2:	4621      	mov	r1, r4
 8005fa4:	461c      	mov	r4, r3
 8005fa6:	460b      	mov	r3, r1
 8005fa8:	3201      	adds	r2, #1
 8005faa:	442c      	add	r4, r5
 8005fac:	2a07      	cmp	r2, #7
 8005fae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005fb2:	e9cb 3500 	strd	r3, r5, [fp]
 8005fb6:	f77f aa5e 	ble.w	8005476 <_vfprintf_r+0x49e>
 8005fba:	e5ee      	b.n	8005b9a <_vfprintf_r+0xbc2>
 8005fbc:	f018 0f10 	tst.w	r8, #16
 8005fc0:	f040 80f8 	bne.w	80061b4 <_vfprintf_r+0x11dc>
 8005fc4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005fc8:	f000 8351 	beq.w	800666e <_vfprintf_r+0x1696>
 8005fcc:	9a05      	ldr	r2, [sp, #20]
 8005fce:	801a      	strh	r2, [r3, #0]
 8005fd0:	4657      	mov	r7, sl
 8005fd2:	f7ff baa7 	b.w	8005524 <_vfprintf_r+0x54c>
 8005fd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005fd8:	9907      	ldr	r1, [sp, #28]
 8005fda:	9803      	ldr	r0, [sp, #12]
 8005fdc:	f003 f8dc 	bl	8009198 <__sprint_r>
 8005fe0:	2800      	cmp	r0, #0
 8005fe2:	f47f ad71 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8005fe6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005fe8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005fec:	f7ff b9f5 	b.w	80053da <_vfprintf_r+0x402>
 8005ff0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005ff4:	4602      	mov	r2, r0
 8005ff6:	460b      	mov	r3, r1
 8005ff8:	f7fb f8c2 	bl	8001180 <__aeabi_dcmpun>
 8005ffc:	2800      	cmp	r0, #0
 8005ffe:	f040 8491 	bne.w	8006924 <_vfprintf_r+0x194c>
 8006002:	2e61      	cmp	r6, #97	; 0x61
 8006004:	f000 8111 	beq.w	800622a <_vfprintf_r+0x1252>
 8006008:	2e41      	cmp	r6, #65	; 0x41
 800600a:	f000 8377 	beq.w	80066fc <_vfprintf_r+0x1724>
 800600e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8006012:	f026 0220 	bic.w	r2, r6, #32
 8006016:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800601a:	930e      	str	r3, [sp, #56]	; 0x38
 800601c:	9204      	str	r2, [sp, #16]
 800601e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006020:	f000 842d 	beq.w	800687e <_vfprintf_r+0x18a6>
 8006024:	2a47      	cmp	r2, #71	; 0x47
 8006026:	f000 8424 	beq.w	8006872 <_vfprintf_r+0x189a>
 800602a:	2b00      	cmp	r3, #0
 800602c:	f2c0 82f9 	blt.w	8006622 <_vfprintf_r+0x164a>
 8006030:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006034:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006038:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800603c:	2e66      	cmp	r6, #102	; 0x66
 800603e:	f000 83eb 	beq.w	8006818 <_vfprintf_r+0x1840>
 8006042:	2e46      	cmp	r6, #70	; 0x46
 8006044:	f000 847e 	beq.w	8006944 <_vfprintf_r+0x196c>
 8006048:	9b04      	ldr	r3, [sp, #16]
 800604a:	9803      	ldr	r0, [sp, #12]
 800604c:	2b45      	cmp	r3, #69	; 0x45
 800604e:	bf0c      	ite	eq
 8006050:	f109 0501 	addeq.w	r5, r9, #1
 8006054:	464d      	movne	r5, r9
 8006056:	aa28      	add	r2, sp, #160	; 0xa0
 8006058:	ab25      	add	r3, sp, #148	; 0x94
 800605a:	e9cd 3200 	strd	r3, r2, [sp]
 800605e:	2102      	movs	r1, #2
 8006060:	ab24      	add	r3, sp, #144	; 0x90
 8006062:	462a      	mov	r2, r5
 8006064:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006068:	f000 feb2 	bl	8006dd0 <_dtoa_r>
 800606c:	2e67      	cmp	r6, #103	; 0x67
 800606e:	4607      	mov	r7, r0
 8006070:	f040 849c 	bne.w	80069ac <_vfprintf_r+0x19d4>
 8006074:	f018 0f01 	tst.w	r8, #1
 8006078:	f040 83f9 	bne.w	800686e <_vfprintf_r+0x1896>
 800607c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800607e:	4640      	mov	r0, r8
 8006080:	1bdb      	subs	r3, r3, r7
 8006082:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006086:	9310      	str	r3, [sp, #64]	; 0x40
 8006088:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800608a:	9311      	str	r3, [sp, #68]	; 0x44
 800608c:	9b04      	ldr	r3, [sp, #16]
 800608e:	2b47      	cmp	r3, #71	; 0x47
 8006090:	f000 81e7 	beq.w	8006462 <_vfprintf_r+0x148a>
 8006094:	9b04      	ldr	r3, [sp, #16]
 8006096:	2b46      	cmp	r3, #70	; 0x46
 8006098:	f000 8300 	beq.w	800669c <_vfprintf_r+0x16c4>
 800609c:	9904      	ldr	r1, [sp, #16]
 800609e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80060a0:	b2f2      	uxtb	r2, r6
 80060a2:	2941      	cmp	r1, #65	; 0x41
 80060a4:	bf08      	it	eq
 80060a6:	320f      	addeq	r2, #15
 80060a8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80060ac:	bf06      	itte	eq
 80060ae:	b2d2      	uxtbeq	r2, r2
 80060b0:	2101      	moveq	r1, #1
 80060b2:	2100      	movne	r1, #0
 80060b4:	2b00      	cmp	r3, #0
 80060b6:	9324      	str	r3, [sp, #144]	; 0x90
 80060b8:	bfb8      	it	lt
 80060ba:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80060bc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80060c0:	bfba      	itte	lt
 80060c2:	f1c3 0301 	rsblt	r3, r3, #1
 80060c6:	222d      	movlt	r2, #45	; 0x2d
 80060c8:	222b      	movge	r2, #43	; 0x2b
 80060ca:	2b09      	cmp	r3, #9
 80060cc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80060d0:	f300 83f9 	bgt.w	80068c6 <_vfprintf_r+0x18ee>
 80060d4:	2900      	cmp	r1, #0
 80060d6:	f040 8487 	bne.w	80069e8 <_vfprintf_r+0x1a10>
 80060da:	2230      	movs	r2, #48	; 0x30
 80060dc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80060e0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80060e4:	3330      	adds	r3, #48	; 0x30
 80060e6:	7013      	strb	r3, [r2, #0]
 80060e8:	1c53      	adds	r3, r2, #1
 80060ea:	aa26      	add	r2, sp, #152	; 0x98
 80060ec:	1a9b      	subs	r3, r3, r2
 80060ee:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80060f0:	9319      	str	r3, [sp, #100]	; 0x64
 80060f2:	2a01      	cmp	r2, #1
 80060f4:	4413      	add	r3, r2
 80060f6:	9309      	str	r3, [sp, #36]	; 0x24
 80060f8:	f340 8442 	ble.w	8006980 <_vfprintf_r+0x19a8>
 80060fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80060fe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006100:	4413      	add	r3, r2
 8006102:	9309      	str	r3, [sp, #36]	; 0x24
 8006104:	2300      	movs	r3, #0
 8006106:	930f      	str	r3, [sp, #60]	; 0x3c
 8006108:	9314      	str	r3, [sp, #80]	; 0x50
 800610a:	9311      	str	r3, [sp, #68]	; 0x44
 800610c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800610e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8006112:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006116:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800611a:	9304      	str	r3, [sp, #16]
 800611c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800611e:	2b00      	cmp	r3, #0
 8006120:	f040 8275 	bne.w	800660e <_vfprintf_r+0x1636>
 8006124:	4699      	mov	r9, r3
 8006126:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800612a:	f7ff b8e2 	b.w	80052f2 <_vfprintf_r+0x31a>
 800612e:	bf00      	nop
 8006130:	08009b3c 	.word	0x08009b3c
 8006134:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006136:	49bd      	ldr	r1, [pc, #756]	; (800642c <_vfprintf_r+0x1454>)
 8006138:	f8cb 1000 	str.w	r1, [fp]
 800613c:	3201      	adds	r2, #1
 800613e:	3401      	adds	r4, #1
 8006140:	2101      	movs	r1, #1
 8006142:	2a07      	cmp	r2, #7
 8006144:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006148:	f8cb 1004 	str.w	r1, [fp, #4]
 800614c:	dc60      	bgt.n	8006210 <_vfprintf_r+0x1238>
 800614e:	f10b 0b08 	add.w	fp, fp, #8
 8006152:	b92b      	cbnz	r3, 8006160 <_vfprintf_r+0x1188>
 8006154:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006156:	b91a      	cbnz	r2, 8006160 <_vfprintf_r+0x1188>
 8006158:	f018 0f01 	tst.w	r8, #1
 800615c:	f43f a98d 	beq.w	800547a <_vfprintf_r+0x4a2>
 8006160:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006162:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006164:	f8cb 1000 	str.w	r1, [fp]
 8006168:	9915      	ldr	r1, [sp, #84]	; 0x54
 800616a:	f8cb 1004 	str.w	r1, [fp, #4]
 800616e:	3201      	adds	r2, #1
 8006170:	440c      	add	r4, r1
 8006172:	2a07      	cmp	r2, #7
 8006174:	942c      	str	r4, [sp, #176]	; 0xb0
 8006176:	922b      	str	r2, [sp, #172]	; 0xac
 8006178:	f300 8282 	bgt.w	8006680 <_vfprintf_r+0x16a8>
 800617c:	f10b 0b08 	add.w	fp, fp, #8
 8006180:	2b00      	cmp	r3, #0
 8006182:	f2c0 82e7 	blt.w	8006754 <_vfprintf_r+0x177c>
 8006186:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006188:	3201      	adds	r2, #1
 800618a:	441c      	add	r4, r3
 800618c:	2a07      	cmp	r2, #7
 800618e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006192:	e9cb 7300 	strd	r7, r3, [fp]
 8006196:	f77f a96e 	ble.w	8005476 <_vfprintf_r+0x49e>
 800619a:	e4fe      	b.n	8005b9a <_vfprintf_r+0xbc2>
 800619c:	aa2a      	add	r2, sp, #168	; 0xa8
 800619e:	9907      	ldr	r1, [sp, #28]
 80061a0:	9803      	ldr	r0, [sp, #12]
 80061a2:	f002 fff9 	bl	8009198 <__sprint_r>
 80061a6:	2800      	cmp	r0, #0
 80061a8:	f47f ac8e 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 80061ac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80061b0:	f7ff bbf0 	b.w	8005994 <_vfprintf_r+0x9bc>
 80061b4:	9a05      	ldr	r2, [sp, #20]
 80061b6:	601a      	str	r2, [r3, #0]
 80061b8:	4657      	mov	r7, sl
 80061ba:	f7ff b9b3 	b.w	8005524 <_vfprintf_r+0x54c>
 80061be:	8814      	ldrh	r4, [r2, #0]
 80061c0:	9108      	str	r1, [sp, #32]
 80061c2:	2500      	movs	r5, #0
 80061c4:	2201      	movs	r2, #1
 80061c6:	f7ff b9c8 	b.w	800555a <_vfprintf_r+0x582>
 80061ca:	8814      	ldrh	r4, [r2, #0]
 80061cc:	9308      	str	r3, [sp, #32]
 80061ce:	2500      	movs	r5, #0
 80061d0:	f7ff ba14 	b.w	80055fc <_vfprintf_r+0x624>
 80061d4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80061d8:	9208      	str	r2, [sp, #32]
 80061da:	17e5      	asrs	r5, r4, #31
 80061dc:	4620      	mov	r0, r4
 80061de:	4629      	mov	r1, r5
 80061e0:	f7ff b855 	b.w	800528e <_vfprintf_r+0x2b6>
 80061e4:	8814      	ldrh	r4, [r2, #0]
 80061e6:	9308      	str	r3, [sp, #32]
 80061e8:	2500      	movs	r5, #0
 80061ea:	f7ff b825 	b.w	8005238 <_vfprintf_r+0x260>
 80061ee:	222d      	movs	r2, #45	; 0x2d
 80061f0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80061f4:	f7ff baa2 	b.w	800573c <_vfprintf_r+0x764>
 80061f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80061fa:	9907      	ldr	r1, [sp, #28]
 80061fc:	9803      	ldr	r0, [sp, #12]
 80061fe:	f002 ffcb 	bl	8009198 <__sprint_r>
 8006202:	2800      	cmp	r0, #0
 8006204:	f47f ac60 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006208:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800620a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800620e:	e534      	b.n	8005c7a <_vfprintf_r+0xca2>
 8006210:	aa2a      	add	r2, sp, #168	; 0xa8
 8006212:	9907      	ldr	r1, [sp, #28]
 8006214:	9803      	ldr	r0, [sp, #12]
 8006216:	f002 ffbf 	bl	8009198 <__sprint_r>
 800621a:	2800      	cmp	r0, #0
 800621c:	f47f ac54 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006220:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006222:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006224:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006228:	e793      	b.n	8006152 <_vfprintf_r+0x117a>
 800622a:	2330      	movs	r3, #48	; 0x30
 800622c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006230:	2378      	movs	r3, #120	; 0x78
 8006232:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8006236:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800623a:	f048 0402 	orr.w	r4, r8, #2
 800623e:	f300 82b0 	bgt.w	80067a2 <_vfprintf_r+0x17ca>
 8006242:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006246:	930e      	str	r3, [sp, #56]	; 0x38
 8006248:	f026 0320 	bic.w	r3, r6, #32
 800624c:	9304      	str	r3, [sp, #16]
 800624e:	2200      	movs	r2, #0
 8006250:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006252:	920a      	str	r2, [sp, #40]	; 0x28
 8006254:	46a0      	mov	r8, r4
 8006256:	af3d      	add	r7, sp, #244	; 0xf4
 8006258:	2b00      	cmp	r3, #0
 800625a:	f2c0 81e3 	blt.w	8006624 <_vfprintf_r+0x164c>
 800625e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006262:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006266:	2300      	movs	r3, #0
 8006268:	930b      	str	r3, [sp, #44]	; 0x2c
 800626a:	2e61      	cmp	r6, #97	; 0x61
 800626c:	f000 8255 	beq.w	800671a <_vfprintf_r+0x1742>
 8006270:	2e41      	cmp	r6, #65	; 0x41
 8006272:	f47f aee3 	bne.w	800603c <_vfprintf_r+0x1064>
 8006276:	a824      	add	r0, sp, #144	; 0x90
 8006278:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800627c:	f002 fea6 	bl	8008fcc <frexp>
 8006280:	2200      	movs	r2, #0
 8006282:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006286:	ec51 0b10 	vmov	r0, r1, d0
 800628a:	f7fa f975 	bl	8000578 <__aeabi_dmul>
 800628e:	2200      	movs	r2, #0
 8006290:	2300      	movs	r3, #0
 8006292:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006296:	f7fa fbd7 	bl	8000a48 <__aeabi_dcmpeq>
 800629a:	2800      	cmp	r0, #0
 800629c:	f040 8305 	bne.w	80068aa <_vfprintf_r+0x18d2>
 80062a0:	4b63      	ldr	r3, [pc, #396]	; (8006430 <_vfprintf_r+0x1458>)
 80062a2:	9309      	str	r3, [sp, #36]	; 0x24
 80062a4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80062a8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80062ac:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80062b0:	9721      	str	r7, [sp, #132]	; 0x84
 80062b2:	46b9      	mov	r9, r7
 80062b4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80062b8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80062bc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80062c0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80062c4:	e003      	b.n	80062ce <_vfprintf_r+0x12f6>
 80062c6:	f7fa fbbf 	bl	8000a48 <__aeabi_dcmpeq>
 80062ca:	bb20      	cbnz	r0, 8006316 <_vfprintf_r+0x133e>
 80062cc:	46a9      	mov	r9, r5
 80062ce:	2200      	movs	r2, #0
 80062d0:	4b58      	ldr	r3, [pc, #352]	; (8006434 <_vfprintf_r+0x145c>)
 80062d2:	4630      	mov	r0, r6
 80062d4:	4639      	mov	r1, r7
 80062d6:	f7fa f94f 	bl	8000578 <__aeabi_dmul>
 80062da:	460f      	mov	r7, r1
 80062dc:	4606      	mov	r6, r0
 80062de:	f7fa fbe5 	bl	8000aac <__aeabi_d2iz>
 80062e2:	4680      	mov	r8, r0
 80062e4:	f7fa f8de 	bl	80004a4 <__aeabi_i2d>
 80062e8:	4602      	mov	r2, r0
 80062ea:	460b      	mov	r3, r1
 80062ec:	4630      	mov	r0, r6
 80062ee:	4639      	mov	r1, r7
 80062f0:	f7f9 ff8a 	bl	8000208 <__aeabi_dsub>
 80062f4:	464d      	mov	r5, r9
 80062f6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80062fa:	f805 cb01 	strb.w	ip, [r5], #1
 80062fe:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8006302:	46a3      	mov	fp, r4
 8006304:	4606      	mov	r6, r0
 8006306:	460f      	mov	r7, r1
 8006308:	f04f 0200 	mov.w	r2, #0
 800630c:	f04f 0300 	mov.w	r3, #0
 8006310:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8006314:	d1d7      	bne.n	80062c6 <_vfprintf_r+0x12ee>
 8006316:	4630      	mov	r0, r6
 8006318:	4639      	mov	r1, r7
 800631a:	2200      	movs	r2, #0
 800631c:	4b46      	ldr	r3, [pc, #280]	; (8006438 <_vfprintf_r+0x1460>)
 800631e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8006322:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8006324:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006328:	4644      	mov	r4, r8
 800632a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800632e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8006332:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006336:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800633a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800633c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006340:	f7fa fbaa 	bl	8000a98 <__aeabi_dcmpgt>
 8006344:	2800      	cmp	r0, #0
 8006346:	f040 8176 	bne.w	8006636 <_vfprintf_r+0x165e>
 800634a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800634e:	2200      	movs	r2, #0
 8006350:	4b39      	ldr	r3, [pc, #228]	; (8006438 <_vfprintf_r+0x1460>)
 8006352:	f7fa fb79 	bl	8000a48 <__aeabi_dcmpeq>
 8006356:	b110      	cbz	r0, 800635e <_vfprintf_r+0x1386>
 8006358:	07e2      	lsls	r2, r4, #31
 800635a:	f100 816c 	bmi.w	8006636 <_vfprintf_r+0x165e>
 800635e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006360:	2b00      	cmp	r3, #0
 8006362:	db07      	blt.n	8006374 <_vfprintf_r+0x139c>
 8006364:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006366:	3301      	adds	r3, #1
 8006368:	442b      	add	r3, r5
 800636a:	2230      	movs	r2, #48	; 0x30
 800636c:	f805 2b01 	strb.w	r2, [r5], #1
 8006370:	42ab      	cmp	r3, r5
 8006372:	d1fb      	bne.n	800636c <_vfprintf_r+0x1394>
 8006374:	1beb      	subs	r3, r5, r7
 8006376:	4640      	mov	r0, r8
 8006378:	9310      	str	r3, [sp, #64]	; 0x40
 800637a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800637e:	e683      	b.n	8006088 <_vfprintf_r+0x10b0>
 8006380:	f8cd 9010 	str.w	r9, [sp, #16]
 8006384:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006388:	9408      	str	r4, [sp, #32]
 800638a:	4681      	mov	r9, r0
 800638c:	900f      	str	r0, [sp, #60]	; 0x3c
 800638e:	9014      	str	r0, [sp, #80]	; 0x50
 8006390:	9011      	str	r0, [sp, #68]	; 0x44
 8006392:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006396:	f7fe bfac 	b.w	80052f2 <_vfprintf_r+0x31a>
 800639a:	aa2a      	add	r2, sp, #168	; 0xa8
 800639c:	9907      	ldr	r1, [sp, #28]
 800639e:	9803      	ldr	r0, [sp, #12]
 80063a0:	f002 fefa 	bl	8009198 <__sprint_r>
 80063a4:	2800      	cmp	r0, #0
 80063a6:	f47f ab8f 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 80063aa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80063ac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80063ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80063b2:	e511      	b.n	8005dd8 <_vfprintf_r+0xe00>
 80063b4:	4252      	negs	r2, r2
 80063b6:	9206      	str	r2, [sp, #24]
 80063b8:	9308      	str	r3, [sp, #32]
 80063ba:	f7ff b96d 	b.w	8005698 <_vfprintf_r+0x6c0>
 80063be:	4614      	mov	r4, r2
 80063c0:	4632      	mov	r2, r6
 80063c2:	461e      	mov	r6, r3
 80063c4:	4613      	mov	r3, r2
 80063c6:	462a      	mov	r2, r5
 80063c8:	3201      	adds	r2, #1
 80063ca:	9209      	str	r2, [sp, #36]	; 0x24
 80063cc:	f106 0208 	add.w	r2, r6, #8
 80063d0:	e9c6 3900 	strd	r3, r9, [r6]
 80063d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80063d6:	932b      	str	r3, [sp, #172]	; 0xac
 80063d8:	444c      	add	r4, r9
 80063da:	2b07      	cmp	r3, #7
 80063dc:	942c      	str	r4, [sp, #176]	; 0xb0
 80063de:	f73f acc3 	bgt.w	8005d68 <_vfprintf_r+0xd90>
 80063e2:	3301      	adds	r3, #1
 80063e4:	9309      	str	r3, [sp, #36]	; 0x24
 80063e6:	f102 0b08 	add.w	fp, r2, #8
 80063ea:	4616      	mov	r6, r2
 80063ec:	f7ff bbca 	b.w	8005b84 <_vfprintf_r+0xbac>
 80063f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80063f2:	9907      	ldr	r1, [sp, #28]
 80063f4:	9803      	ldr	r0, [sp, #12]
 80063f6:	f002 fecf 	bl	8009198 <__sprint_r>
 80063fa:	2800      	cmp	r0, #0
 80063fc:	f47f ab64 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006400:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006402:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006406:	f7ff bade 	b.w	80059c6 <_vfprintf_r+0x9ee>
 800640a:	464b      	mov	r3, r9
 800640c:	2b06      	cmp	r3, #6
 800640e:	bf28      	it	cs
 8006410:	2306      	movcs	r3, #6
 8006412:	46b9      	mov	r9, r7
 8006414:	970f      	str	r7, [sp, #60]	; 0x3c
 8006416:	9714      	str	r7, [sp, #80]	; 0x50
 8006418:	9711      	str	r7, [sp, #68]	; 0x44
 800641a:	970a      	str	r7, [sp, #40]	; 0x28
 800641c:	463a      	mov	r2, r7
 800641e:	9304      	str	r3, [sp, #16]
 8006420:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8006424:	4f05      	ldr	r7, [pc, #20]	; (800643c <_vfprintf_r+0x1464>)
 8006426:	f7fe bf64 	b.w	80052f2 <_vfprintf_r+0x31a>
 800642a:	bf00      	nop
 800642c:	08009b28 	.word	0x08009b28
 8006430:	08009b0c 	.word	0x08009b0c
 8006434:	40300000 	.word	0x40300000
 8006438:	3fe00000 	.word	0x3fe00000
 800643c:	08009b20 	.word	0x08009b20
 8006440:	460c      	mov	r4, r1
 8006442:	4639      	mov	r1, r7
 8006444:	465f      	mov	r7, fp
 8006446:	469b      	mov	fp, r3
 8006448:	460b      	mov	r3, r1
 800644a:	3201      	adds	r2, #1
 800644c:	442c      	add	r4, r5
 800644e:	2a07      	cmp	r2, #7
 8006450:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006454:	e9cb 3500 	strd	r3, r5, [fp]
 8006458:	f73f aca5 	bgt.w	8005da6 <_vfprintf_r+0xdce>
 800645c:	f10b 0b08 	add.w	fp, fp, #8
 8006460:	e4ac      	b.n	8005dbc <_vfprintf_r+0xde4>
 8006462:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006464:	1cda      	adds	r2, r3, #3
 8006466:	db02      	blt.n	800646e <_vfprintf_r+0x1496>
 8006468:	4599      	cmp	r9, r3
 800646a:	f280 80b5 	bge.w	80065d8 <_vfprintf_r+0x1600>
 800646e:	3e02      	subs	r6, #2
 8006470:	f026 0320 	bic.w	r3, r6, #32
 8006474:	9304      	str	r3, [sp, #16]
 8006476:	e611      	b.n	800609c <_vfprintf_r+0x10c4>
 8006478:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800647a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800647e:	465a      	mov	r2, fp
 8006480:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8006484:	18fb      	adds	r3, r7, r3
 8006486:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800648a:	970c      	str	r7, [sp, #48]	; 0x30
 800648c:	4eaf      	ldr	r6, [pc, #700]	; (800674c <_vfprintf_r+0x1774>)
 800648e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8006492:	9309      	str	r3, [sp, #36]	; 0x24
 8006494:	464f      	mov	r7, r9
 8006496:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800649a:	4621      	mov	r1, r4
 800649c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800649e:	2b00      	cmp	r3, #0
 80064a0:	d05b      	beq.n	800655a <_vfprintf_r+0x1582>
 80064a2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80064a4:	2b00      	cmp	r3, #0
 80064a6:	d154      	bne.n	8006552 <_vfprintf_r+0x157a>
 80064a8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80064aa:	3b01      	subs	r3, #1
 80064ac:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80064b0:	9314      	str	r3, [sp, #80]	; 0x50
 80064b2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80064b4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80064b6:	6010      	str	r0, [r2, #0]
 80064b8:	3301      	adds	r3, #1
 80064ba:	4459      	add	r1, fp
 80064bc:	2b07      	cmp	r3, #7
 80064be:	912c      	str	r1, [sp, #176]	; 0xb0
 80064c0:	f8c2 b004 	str.w	fp, [r2, #4]
 80064c4:	932b      	str	r3, [sp, #172]	; 0xac
 80064c6:	dc68      	bgt.n	800659a <_vfprintf_r+0x15c2>
 80064c8:	3208      	adds	r2, #8
 80064ca:	9809      	ldr	r0, [sp, #36]	; 0x24
 80064cc:	f898 3000 	ldrb.w	r3, [r8]
 80064d0:	1bc5      	subs	r5, r0, r7
 80064d2:	429d      	cmp	r5, r3
 80064d4:	bfa8      	it	ge
 80064d6:	461d      	movge	r5, r3
 80064d8:	2d00      	cmp	r5, #0
 80064da:	dd0b      	ble.n	80064f4 <_vfprintf_r+0x151c>
 80064dc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80064de:	6017      	str	r7, [r2, #0]
 80064e0:	3301      	adds	r3, #1
 80064e2:	4429      	add	r1, r5
 80064e4:	2b07      	cmp	r3, #7
 80064e6:	912c      	str	r1, [sp, #176]	; 0xb0
 80064e8:	6055      	str	r5, [r2, #4]
 80064ea:	932b      	str	r3, [sp, #172]	; 0xac
 80064ec:	dc5e      	bgt.n	80065ac <_vfprintf_r+0x15d4>
 80064ee:	f898 3000 	ldrb.w	r3, [r8]
 80064f2:	3208      	adds	r2, #8
 80064f4:	2d00      	cmp	r5, #0
 80064f6:	bfac      	ite	ge
 80064f8:	1b5d      	subge	r5, r3, r5
 80064fa:	461d      	movlt	r5, r3
 80064fc:	2d00      	cmp	r5, #0
 80064fe:	dd26      	ble.n	800654e <_vfprintf_r+0x1576>
 8006500:	2d10      	cmp	r5, #16
 8006502:	982b      	ldr	r0, [sp, #172]	; 0xac
 8006504:	dd3c      	ble.n	8006580 <_vfprintf_r+0x15a8>
 8006506:	2410      	movs	r4, #16
 8006508:	e003      	b.n	8006512 <_vfprintf_r+0x153a>
 800650a:	3208      	adds	r2, #8
 800650c:	3d10      	subs	r5, #16
 800650e:	2d10      	cmp	r5, #16
 8006510:	dd36      	ble.n	8006580 <_vfprintf_r+0x15a8>
 8006512:	3001      	adds	r0, #1
 8006514:	3110      	adds	r1, #16
 8006516:	2807      	cmp	r0, #7
 8006518:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800651c:	e9c2 6400 	strd	r6, r4, [r2]
 8006520:	ddf3      	ble.n	800650a <_vfprintf_r+0x1532>
 8006522:	aa2a      	add	r2, sp, #168	; 0xa8
 8006524:	4651      	mov	r1, sl
 8006526:	4648      	mov	r0, r9
 8006528:	f002 fe36 	bl	8009198 <__sprint_r>
 800652c:	2800      	cmp	r0, #0
 800652e:	d150      	bne.n	80065d2 <_vfprintf_r+0x15fa>
 8006530:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8006534:	aa2d      	add	r2, sp, #180	; 0xb4
 8006536:	e7e9      	b.n	800650c <_vfprintf_r+0x1534>
 8006538:	aa2a      	add	r2, sp, #168	; 0xa8
 800653a:	4651      	mov	r1, sl
 800653c:	4648      	mov	r0, r9
 800653e:	f002 fe2b 	bl	8009198 <__sprint_r>
 8006542:	2800      	cmp	r0, #0
 8006544:	d145      	bne.n	80065d2 <_vfprintf_r+0x15fa>
 8006546:	f898 3000 	ldrb.w	r3, [r8]
 800654a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800654c:	aa2d      	add	r2, sp, #180	; 0xb4
 800654e:	441f      	add	r7, r3
 8006550:	e7a4      	b.n	800649c <_vfprintf_r+0x14c4>
 8006552:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006554:	3b01      	subs	r3, #1
 8006556:	930f      	str	r3, [sp, #60]	; 0x3c
 8006558:	e7ab      	b.n	80064b2 <_vfprintf_r+0x14da>
 800655a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800655c:	2b00      	cmp	r3, #0
 800655e:	d1f8      	bne.n	8006552 <_vfprintf_r+0x157a>
 8006560:	46b9      	mov	r9, r7
 8006562:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006564:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006566:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800656a:	18fb      	adds	r3, r7, r3
 800656c:	4599      	cmp	r9, r3
 800656e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8006572:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006576:	4693      	mov	fp, r2
 8006578:	460c      	mov	r4, r1
 800657a:	bf28      	it	cs
 800657c:	4699      	movcs	r9, r3
 800657e:	e424      	b.n	8005dca <_vfprintf_r+0xdf2>
 8006580:	3001      	adds	r0, #1
 8006582:	4429      	add	r1, r5
 8006584:	2807      	cmp	r0, #7
 8006586:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800658a:	e9c2 6500 	strd	r6, r5, [r2]
 800658e:	dcd3      	bgt.n	8006538 <_vfprintf_r+0x1560>
 8006590:	f898 3000 	ldrb.w	r3, [r8]
 8006594:	3208      	adds	r2, #8
 8006596:	441f      	add	r7, r3
 8006598:	e780      	b.n	800649c <_vfprintf_r+0x14c4>
 800659a:	aa2a      	add	r2, sp, #168	; 0xa8
 800659c:	4651      	mov	r1, sl
 800659e:	4648      	mov	r0, r9
 80065a0:	f002 fdfa 	bl	8009198 <__sprint_r>
 80065a4:	b9a8      	cbnz	r0, 80065d2 <_vfprintf_r+0x15fa>
 80065a6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80065a8:	aa2d      	add	r2, sp, #180	; 0xb4
 80065aa:	e78e      	b.n	80064ca <_vfprintf_r+0x14f2>
 80065ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80065ae:	4651      	mov	r1, sl
 80065b0:	4648      	mov	r0, r9
 80065b2:	f002 fdf1 	bl	8009198 <__sprint_r>
 80065b6:	b960      	cbnz	r0, 80065d2 <_vfprintf_r+0x15fa>
 80065b8:	f898 3000 	ldrb.w	r3, [r8]
 80065bc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80065be:	aa2d      	add	r2, sp, #180	; 0xb4
 80065c0:	e798      	b.n	80064f4 <_vfprintf_r+0x151c>
 80065c2:	4638      	mov	r0, r7
 80065c4:	f7fa fd1c 	bl	8001000 <strlen>
 80065c8:	46a9      	mov	r9, r5
 80065ca:	4603      	mov	r3, r0
 80065cc:	9009      	str	r0, [sp, #36]	; 0x24
 80065ce:	f7ff b8f4 	b.w	80057ba <_vfprintf_r+0x7e2>
 80065d2:	46d1      	mov	r9, sl
 80065d4:	f7ff ba7a 	b.w	8005acc <_vfprintf_r+0xaf4>
 80065d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80065da:	4619      	mov	r1, r3
 80065dc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80065de:	4299      	cmp	r1, r3
 80065e0:	f300 8082 	bgt.w	80066e8 <_vfprintf_r+0x1710>
 80065e4:	07c4      	lsls	r4, r0, #31
 80065e6:	f140 816b 	bpl.w	80068c0 <_vfprintf_r+0x18e8>
 80065ea:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80065ec:	4413      	add	r3, r2
 80065ee:	9309      	str	r3, [sp, #36]	; 0x24
 80065f0:	0541      	lsls	r1, r0, #21
 80065f2:	d503      	bpl.n	80065fc <_vfprintf_r+0x1624>
 80065f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80065f6:	2b00      	cmp	r3, #0
 80065f8:	f300 80e6 	bgt.w	80067c8 <_vfprintf_r+0x17f0>
 80065fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80065fe:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006602:	9304      	str	r3, [sp, #16]
 8006604:	2667      	movs	r6, #103	; 0x67
 8006606:	2300      	movs	r3, #0
 8006608:	930f      	str	r3, [sp, #60]	; 0x3c
 800660a:	9314      	str	r3, [sp, #80]	; 0x50
 800660c:	e586      	b.n	800611c <_vfprintf_r+0x1144>
 800660e:	222d      	movs	r2, #45	; 0x2d
 8006610:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006614:	f04f 0900 	mov.w	r9, #0
 8006618:	f7fe be6c 	b.w	80052f4 <_vfprintf_r+0x31c>
 800661c:	46a1      	mov	r9, r4
 800661e:	f7ff ba55 	b.w	8005acc <_vfprintf_r+0xaf4>
 8006622:	900a      	str	r0, [sp, #40]	; 0x28
 8006624:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006628:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800662c:	931f      	str	r3, [sp, #124]	; 0x7c
 800662e:	232d      	movs	r3, #45	; 0x2d
 8006630:	911e      	str	r1, [sp, #120]	; 0x78
 8006632:	930b      	str	r3, [sp, #44]	; 0x2c
 8006634:	e619      	b.n	800626a <_vfprintf_r+0x1292>
 8006636:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006638:	9328      	str	r3, [sp, #160]	; 0xa0
 800663a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800663c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006640:	7bd9      	ldrb	r1, [r3, #15]
 8006642:	4291      	cmp	r1, r2
 8006644:	462b      	mov	r3, r5
 8006646:	d109      	bne.n	800665c <_vfprintf_r+0x1684>
 8006648:	2030      	movs	r0, #48	; 0x30
 800664a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800664e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006650:	1e5a      	subs	r2, r3, #1
 8006652:	9228      	str	r2, [sp, #160]	; 0xa0
 8006654:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006658:	4291      	cmp	r1, r2
 800665a:	d0f6      	beq.n	800664a <_vfprintf_r+0x1672>
 800665c:	2a39      	cmp	r2, #57	; 0x39
 800665e:	bf0b      	itete	eq
 8006660:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8006662:	3201      	addne	r2, #1
 8006664:	7a92      	ldrbeq	r2, [r2, #10]
 8006666:	b2d2      	uxtbne	r2, r2
 8006668:	f803 2c01 	strb.w	r2, [r3, #-1]
 800666c:	e682      	b.n	8006374 <_vfprintf_r+0x139c>
 800666e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8006672:	f43f ad9f 	beq.w	80061b4 <_vfprintf_r+0x11dc>
 8006676:	9a05      	ldr	r2, [sp, #20]
 8006678:	701a      	strb	r2, [r3, #0]
 800667a:	4657      	mov	r7, sl
 800667c:	f7fe bf52 	b.w	8005524 <_vfprintf_r+0x54c>
 8006680:	aa2a      	add	r2, sp, #168	; 0xa8
 8006682:	9907      	ldr	r1, [sp, #28]
 8006684:	9803      	ldr	r0, [sp, #12]
 8006686:	f002 fd87 	bl	8009198 <__sprint_r>
 800668a:	2800      	cmp	r0, #0
 800668c:	f47f aa1c 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006690:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006692:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006696:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800669a:	e571      	b.n	8006180 <_vfprintf_r+0x11a8>
 800669c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800669e:	2b00      	cmp	r3, #0
 80066a0:	f340 8164 	ble.w	800696c <_vfprintf_r+0x1994>
 80066a4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80066a6:	f1b9 0f00 	cmp.w	r9, #0
 80066aa:	f040 8103 	bne.w	80068b4 <_vfprintf_r+0x18dc>
 80066ae:	07c6      	lsls	r6, r0, #31
 80066b0:	f100 8100 	bmi.w	80068b4 <_vfprintf_r+0x18dc>
 80066b4:	9309      	str	r3, [sp, #36]	; 0x24
 80066b6:	2666      	movs	r6, #102	; 0x66
 80066b8:	0543      	lsls	r3, r0, #21
 80066ba:	f100 8086 	bmi.w	80067ca <_vfprintf_r+0x17f2>
 80066be:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80066c0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80066c4:	9304      	str	r3, [sp, #16]
 80066c6:	e79e      	b.n	8006606 <_vfprintf_r+0x162e>
 80066c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80066ca:	9907      	ldr	r1, [sp, #28]
 80066cc:	9803      	ldr	r0, [sp, #12]
 80066ce:	f002 fd63 	bl	8009198 <__sprint_r>
 80066d2:	2800      	cmp	r0, #0
 80066d4:	f47f a9f8 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 80066d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80066da:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80066dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80066de:	1ad3      	subs	r3, r2, r3
 80066e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066e4:	f7ff bb90 	b.w	8005e08 <_vfprintf_r+0xe30>
 80066e8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80066ea:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80066ec:	4413      	add	r3, r2
 80066ee:	9309      	str	r3, [sp, #36]	; 0x24
 80066f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80066f2:	2b00      	cmp	r3, #0
 80066f4:	f340 8149 	ble.w	800698a <_vfprintf_r+0x19b2>
 80066f8:	2667      	movs	r6, #103	; 0x67
 80066fa:	e7dd      	b.n	80066b8 <_vfprintf_r+0x16e0>
 80066fc:	2330      	movs	r3, #48	; 0x30
 80066fe:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006702:	2358      	movs	r3, #88	; 0x58
 8006704:	e595      	b.n	8006232 <_vfprintf_r+0x125a>
 8006706:	9803      	ldr	r0, [sp, #12]
 8006708:	aa2a      	add	r2, sp, #168	; 0xa8
 800670a:	4649      	mov	r1, r9
 800670c:	f002 fd44 	bl	8009198 <__sprint_r>
 8006710:	2800      	cmp	r0, #0
 8006712:	f47f a9e0 	bne.w	8005ad6 <_vfprintf_r+0xafe>
 8006716:	f7fe bf0f 	b.w	8005538 <_vfprintf_r+0x560>
 800671a:	a824      	add	r0, sp, #144	; 0x90
 800671c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006720:	f002 fc54 	bl	8008fcc <frexp>
 8006724:	2200      	movs	r2, #0
 8006726:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800672a:	ec51 0b10 	vmov	r0, r1, d0
 800672e:	f7f9 ff23 	bl	8000578 <__aeabi_dmul>
 8006732:	2200      	movs	r2, #0
 8006734:	2300      	movs	r3, #0
 8006736:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800673a:	f7fa f985 	bl	8000a48 <__aeabi_dcmpeq>
 800673e:	b108      	cbz	r0, 8006744 <_vfprintf_r+0x176c>
 8006740:	2301      	movs	r3, #1
 8006742:	9324      	str	r3, [sp, #144]	; 0x90
 8006744:	4b02      	ldr	r3, [pc, #8]	; (8006750 <_vfprintf_r+0x1778>)
 8006746:	9309      	str	r3, [sp, #36]	; 0x24
 8006748:	e5ac      	b.n	80062a4 <_vfprintf_r+0x12cc>
 800674a:	bf00      	nop
 800674c:	08009b3c 	.word	0x08009b3c
 8006750:	08009af8 	.word	0x08009af8
 8006754:	425d      	negs	r5, r3
 8006756:	3310      	adds	r3, #16
 8006758:	4bb9      	ldr	r3, [pc, #740]	; (8006a40 <_vfprintf_r+0x1a68>)
 800675a:	f280 8097 	bge.w	800688c <_vfprintf_r+0x18b4>
 800675e:	4619      	mov	r1, r3
 8006760:	2610      	movs	r6, #16
 8006762:	4623      	mov	r3, r4
 8006764:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006768:	460c      	mov	r4, r1
 800676a:	e005      	b.n	8006778 <_vfprintf_r+0x17a0>
 800676c:	f10b 0b08 	add.w	fp, fp, #8
 8006770:	3d10      	subs	r5, #16
 8006772:	2d10      	cmp	r5, #16
 8006774:	f340 8087 	ble.w	8006886 <_vfprintf_r+0x18ae>
 8006778:	3201      	adds	r2, #1
 800677a:	3310      	adds	r3, #16
 800677c:	2a07      	cmp	r2, #7
 800677e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8006782:	e9cb 4600 	strd	r4, r6, [fp]
 8006786:	ddf1      	ble.n	800676c <_vfprintf_r+0x1794>
 8006788:	aa2a      	add	r2, sp, #168	; 0xa8
 800678a:	9907      	ldr	r1, [sp, #28]
 800678c:	4648      	mov	r0, r9
 800678e:	f002 fd03 	bl	8009198 <__sprint_r>
 8006792:	2800      	cmp	r0, #0
 8006794:	f47f a998 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006798:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800679c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80067a0:	e7e6      	b.n	8006770 <_vfprintf_r+0x1798>
 80067a2:	f109 0101 	add.w	r1, r9, #1
 80067a6:	9803      	ldr	r0, [sp, #12]
 80067a8:	f7fe f8a0 	bl	80048ec <_malloc_r>
 80067ac:	4607      	mov	r7, r0
 80067ae:	2800      	cmp	r0, #0
 80067b0:	f000 813b 	beq.w	8006a2a <_vfprintf_r+0x1a52>
 80067b4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80067b8:	930e      	str	r3, [sp, #56]	; 0x38
 80067ba:	f026 0320 	bic.w	r3, r6, #32
 80067be:	9304      	str	r3, [sp, #16]
 80067c0:	46a0      	mov	r8, r4
 80067c2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80067c4:	900a      	str	r0, [sp, #40]	; 0x28
 80067c6:	e547      	b.n	8006258 <_vfprintf_r+0x1280>
 80067c8:	2667      	movs	r6, #103	; 0x67
 80067ca:	981a      	ldr	r0, [sp, #104]	; 0x68
 80067cc:	2200      	movs	r2, #0
 80067ce:	920f      	str	r2, [sp, #60]	; 0x3c
 80067d0:	9214      	str	r2, [sp, #80]	; 0x50
 80067d2:	7803      	ldrb	r3, [r0, #0]
 80067d4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80067d6:	2bff      	cmp	r3, #255	; 0xff
 80067d8:	d00c      	beq.n	80067f4 <_vfprintf_r+0x181c>
 80067da:	4293      	cmp	r3, r2
 80067dc:	da0a      	bge.n	80067f4 <_vfprintf_r+0x181c>
 80067de:	7841      	ldrb	r1, [r0, #1]
 80067e0:	1ad2      	subs	r2, r2, r3
 80067e2:	b1a9      	cbz	r1, 8006810 <_vfprintf_r+0x1838>
 80067e4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80067e6:	3301      	adds	r3, #1
 80067e8:	9314      	str	r3, [sp, #80]	; 0x50
 80067ea:	460b      	mov	r3, r1
 80067ec:	2bff      	cmp	r3, #255	; 0xff
 80067ee:	f100 0001 	add.w	r0, r0, #1
 80067f2:	d1f2      	bne.n	80067da <_vfprintf_r+0x1802>
 80067f4:	9211      	str	r2, [sp, #68]	; 0x44
 80067f6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80067f8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80067fa:	9909      	ldr	r1, [sp, #36]	; 0x24
 80067fc:	901a      	str	r0, [sp, #104]	; 0x68
 80067fe:	4413      	add	r3, r2
 8006800:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8006802:	fb02 1303 	mla	r3, r2, r3, r1
 8006806:	9309      	str	r3, [sp, #36]	; 0x24
 8006808:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800680c:	9304      	str	r3, [sp, #16]
 800680e:	e485      	b.n	800611c <_vfprintf_r+0x1144>
 8006810:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8006812:	3101      	adds	r1, #1
 8006814:	910f      	str	r1, [sp, #60]	; 0x3c
 8006816:	e7de      	b.n	80067d6 <_vfprintf_r+0x17fe>
 8006818:	aa28      	add	r2, sp, #160	; 0xa0
 800681a:	ab25      	add	r3, sp, #148	; 0x94
 800681c:	e9cd 3200 	strd	r3, r2, [sp]
 8006820:	2103      	movs	r1, #3
 8006822:	ab24      	add	r3, sp, #144	; 0x90
 8006824:	464a      	mov	r2, r9
 8006826:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800682a:	9803      	ldr	r0, [sp, #12]
 800682c:	f000 fad0 	bl	8006dd0 <_dtoa_r>
 8006830:	464d      	mov	r5, r9
 8006832:	4607      	mov	r7, r0
 8006834:	eb00 0409 	add.w	r4, r0, r9
 8006838:	783b      	ldrb	r3, [r7, #0]
 800683a:	2b30      	cmp	r3, #48	; 0x30
 800683c:	f000 80be 	beq.w	80069bc <_vfprintf_r+0x19e4>
 8006840:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8006842:	442c      	add	r4, r5
 8006844:	2200      	movs	r2, #0
 8006846:	2300      	movs	r3, #0
 8006848:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800684c:	f7fa f8fc 	bl	8000a48 <__aeabi_dcmpeq>
 8006850:	b108      	cbz	r0, 8006856 <_vfprintf_r+0x187e>
 8006852:	4623      	mov	r3, r4
 8006854:	e413      	b.n	800607e <_vfprintf_r+0x10a6>
 8006856:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006858:	42a3      	cmp	r3, r4
 800685a:	f4bf ac10 	bcs.w	800607e <_vfprintf_r+0x10a6>
 800685e:	2130      	movs	r1, #48	; 0x30
 8006860:	1c5a      	adds	r2, r3, #1
 8006862:	9228      	str	r2, [sp, #160]	; 0xa0
 8006864:	7019      	strb	r1, [r3, #0]
 8006866:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006868:	429c      	cmp	r4, r3
 800686a:	d8f9      	bhi.n	8006860 <_vfprintf_r+0x1888>
 800686c:	e407      	b.n	800607e <_vfprintf_r+0x10a6>
 800686e:	197c      	adds	r4, r7, r5
 8006870:	e7e8      	b.n	8006844 <_vfprintf_r+0x186c>
 8006872:	f1b9 0f00 	cmp.w	r9, #0
 8006876:	f000 8092 	beq.w	800699e <_vfprintf_r+0x19c6>
 800687a:	900a      	str	r0, [sp, #40]	; 0x28
 800687c:	e4ec      	b.n	8006258 <_vfprintf_r+0x1280>
 800687e:	900a      	str	r0, [sp, #40]	; 0x28
 8006880:	f04f 0906 	mov.w	r9, #6
 8006884:	e4e8      	b.n	8006258 <_vfprintf_r+0x1280>
 8006886:	4621      	mov	r1, r4
 8006888:	461c      	mov	r4, r3
 800688a:	460b      	mov	r3, r1
 800688c:	3201      	adds	r2, #1
 800688e:	442c      	add	r4, r5
 8006890:	2a07      	cmp	r2, #7
 8006892:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006896:	e9cb 3500 	strd	r3, r5, [fp]
 800689a:	f300 80a9 	bgt.w	80069f0 <_vfprintf_r+0x1a18>
 800689e:	f10b 0b08 	add.w	fp, fp, #8
 80068a2:	e470      	b.n	8006186 <_vfprintf_r+0x11ae>
 80068a4:	469a      	mov	sl, r3
 80068a6:	f7ff bb37 	b.w	8005f18 <_vfprintf_r+0xf40>
 80068aa:	2301      	movs	r3, #1
 80068ac:	9324      	str	r3, [sp, #144]	; 0x90
 80068ae:	4b65      	ldr	r3, [pc, #404]	; (8006a44 <_vfprintf_r+0x1a6c>)
 80068b0:	9309      	str	r3, [sp, #36]	; 0x24
 80068b2:	e4f7      	b.n	80062a4 <_vfprintf_r+0x12cc>
 80068b4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80068b6:	4413      	add	r3, r2
 80068b8:	444b      	add	r3, r9
 80068ba:	9309      	str	r3, [sp, #36]	; 0x24
 80068bc:	2666      	movs	r6, #102	; 0x66
 80068be:	e6fb      	b.n	80066b8 <_vfprintf_r+0x16e0>
 80068c0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80068c2:	9309      	str	r3, [sp, #36]	; 0x24
 80068c4:	e694      	b.n	80065f0 <_vfprintf_r+0x1618>
 80068c6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80068ca:	4664      	mov	r4, ip
 80068cc:	4d5e      	ldr	r5, [pc, #376]	; (8006a48 <_vfprintf_r+0x1a70>)
 80068ce:	e000      	b.n	80068d2 <_vfprintf_r+0x18fa>
 80068d0:	4614      	mov	r4, r2
 80068d2:	fba5 1203 	umull	r1, r2, r5, r3
 80068d6:	08d2      	lsrs	r2, r2, #3
 80068d8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80068dc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80068e0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80068e4:	4613      	mov	r3, r2
 80068e6:	2b09      	cmp	r3, #9
 80068e8:	f804 1c01 	strb.w	r1, [r4, #-1]
 80068ec:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80068f0:	dcee      	bgt.n	80068d0 <_vfprintf_r+0x18f8>
 80068f2:	3330      	adds	r3, #48	; 0x30
 80068f4:	3c02      	subs	r4, #2
 80068f6:	b2db      	uxtb	r3, r3
 80068f8:	45a4      	cmp	ip, r4
 80068fa:	f802 3c01 	strb.w	r3, [r2, #-1]
 80068fe:	f240 8090 	bls.w	8006a22 <_vfprintf_r+0x1a4a>
 8006902:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8006906:	4611      	mov	r1, r2
 8006908:	e001      	b.n	800690e <_vfprintf_r+0x1936>
 800690a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800690e:	f804 3b01 	strb.w	r3, [r4], #1
 8006912:	458c      	cmp	ip, r1
 8006914:	d1f9      	bne.n	800690a <_vfprintf_r+0x1932>
 8006916:	ab2a      	add	r3, sp, #168	; 0xa8
 8006918:	1a9b      	subs	r3, r3, r2
 800691a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800691e:	4413      	add	r3, r2
 8006920:	f7ff bbe3 	b.w	80060ea <_vfprintf_r+0x1112>
 8006924:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006926:	4f49      	ldr	r7, [pc, #292]	; (8006a4c <_vfprintf_r+0x1a74>)
 8006928:	2b00      	cmp	r3, #0
 800692a:	bfb6      	itet	lt
 800692c:	222d      	movlt	r2, #45	; 0x2d
 800692e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8006932:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8006936:	4b46      	ldr	r3, [pc, #280]	; (8006a50 <_vfprintf_r+0x1a78>)
 8006938:	f7fe bf02 	b.w	8005740 <_vfprintf_r+0x768>
 800693c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006940:	f7ff b8c9 	b.w	8005ad6 <_vfprintf_r+0xafe>
 8006944:	aa28      	add	r2, sp, #160	; 0xa0
 8006946:	ab25      	add	r3, sp, #148	; 0x94
 8006948:	e9cd 3200 	strd	r3, r2, [sp]
 800694c:	2103      	movs	r1, #3
 800694e:	ab24      	add	r3, sp, #144	; 0x90
 8006950:	464a      	mov	r2, r9
 8006952:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006956:	9803      	ldr	r0, [sp, #12]
 8006958:	f000 fa3a 	bl	8006dd0 <_dtoa_r>
 800695c:	464d      	mov	r5, r9
 800695e:	4607      	mov	r7, r0
 8006960:	2e46      	cmp	r6, #70	; 0x46
 8006962:	eb07 0405 	add.w	r4, r7, r5
 8006966:	f43f af67 	beq.w	8006838 <_vfprintf_r+0x1860>
 800696a:	e76b      	b.n	8006844 <_vfprintf_r+0x186c>
 800696c:	f1b9 0f00 	cmp.w	r9, #0
 8006970:	d131      	bne.n	80069d6 <_vfprintf_r+0x19fe>
 8006972:	07c5      	lsls	r5, r0, #31
 8006974:	d42f      	bmi.n	80069d6 <_vfprintf_r+0x19fe>
 8006976:	2301      	movs	r3, #1
 8006978:	9304      	str	r3, [sp, #16]
 800697a:	9309      	str	r3, [sp, #36]	; 0x24
 800697c:	2666      	movs	r6, #102	; 0x66
 800697e:	e642      	b.n	8006606 <_vfprintf_r+0x162e>
 8006980:	07c3      	lsls	r3, r0, #31
 8006982:	f57f abbf 	bpl.w	8006104 <_vfprintf_r+0x112c>
 8006986:	f7ff bbb9 	b.w	80060fc <_vfprintf_r+0x1124>
 800698a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800698c:	f1c3 0301 	rsb	r3, r3, #1
 8006990:	441a      	add	r2, r3
 8006992:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8006996:	9209      	str	r2, [sp, #36]	; 0x24
 8006998:	9304      	str	r3, [sp, #16]
 800699a:	2667      	movs	r6, #103	; 0x67
 800699c:	e633      	b.n	8006606 <_vfprintf_r+0x162e>
 800699e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80069a2:	f04f 0901 	mov.w	r9, #1
 80069a6:	e457      	b.n	8006258 <_vfprintf_r+0x1280>
 80069a8:	465a      	mov	r2, fp
 80069aa:	e511      	b.n	80063d0 <_vfprintf_r+0x13f8>
 80069ac:	2e47      	cmp	r6, #71	; 0x47
 80069ae:	f47f af5e 	bne.w	800686e <_vfprintf_r+0x1896>
 80069b2:	f018 0f01 	tst.w	r8, #1
 80069b6:	f43f ab61 	beq.w	800607c <_vfprintf_r+0x10a4>
 80069ba:	e7d1      	b.n	8006960 <_vfprintf_r+0x1988>
 80069bc:	2200      	movs	r2, #0
 80069be:	2300      	movs	r3, #0
 80069c0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80069c4:	f7fa f840 	bl	8000a48 <__aeabi_dcmpeq>
 80069c8:	2800      	cmp	r0, #0
 80069ca:	f47f af39 	bne.w	8006840 <_vfprintf_r+0x1868>
 80069ce:	f1c5 0501 	rsb	r5, r5, #1
 80069d2:	9524      	str	r5, [sp, #144]	; 0x90
 80069d4:	e735      	b.n	8006842 <_vfprintf_r+0x186a>
 80069d6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80069d8:	3301      	adds	r3, #1
 80069da:	444b      	add	r3, r9
 80069dc:	9309      	str	r3, [sp, #36]	; 0x24
 80069de:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80069e2:	9304      	str	r3, [sp, #16]
 80069e4:	2666      	movs	r6, #102	; 0x66
 80069e6:	e60e      	b.n	8006606 <_vfprintf_r+0x162e>
 80069e8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80069ec:	f7ff bb7a 	b.w	80060e4 <_vfprintf_r+0x110c>
 80069f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80069f2:	9907      	ldr	r1, [sp, #28]
 80069f4:	9803      	ldr	r0, [sp, #12]
 80069f6:	f002 fbcf 	bl	8009198 <__sprint_r>
 80069fa:	2800      	cmp	r0, #0
 80069fc:	f47f a864 	bne.w	8005ac8 <_vfprintf_r+0xaf0>
 8006a00:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006a04:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a08:	f7ff bbbd 	b.w	8006186 <_vfprintf_r+0x11ae>
 8006a0c:	9908      	ldr	r1, [sp, #32]
 8006a0e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8006a12:	680b      	ldr	r3, [r1, #0]
 8006a14:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8006a18:	1d0b      	adds	r3, r1, #4
 8006a1a:	4692      	mov	sl, r2
 8006a1c:	9308      	str	r3, [sp, #32]
 8006a1e:	f7fe bb59 	b.w	80050d4 <_vfprintf_r+0xfc>
 8006a22:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8006a26:	f7ff bb60 	b.w	80060ea <_vfprintf_r+0x1112>
 8006a2a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006a2e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006a32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006a36:	f8a9 300c 	strh.w	r3, [r9, #12]
 8006a3a:	f7ff b84c 	b.w	8005ad6 <_vfprintf_r+0xafe>
 8006a3e:	bf00      	nop
 8006a40:	08009b3c 	.word	0x08009b3c
 8006a44:	08009b0c 	.word	0x08009b0c
 8006a48:	cccccccd 	.word	0xcccccccd
 8006a4c:	08009af4 	.word	0x08009af4
 8006a50:	08009af0 	.word	0x08009af0

08006a54 <__sbprintf>:
 8006a54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a58:	460c      	mov	r4, r1
 8006a5a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8006a5e:	8989      	ldrh	r1, [r1, #12]
 8006a60:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006a62:	89e5      	ldrh	r5, [r4, #14]
 8006a64:	9619      	str	r6, [sp, #100]	; 0x64
 8006a66:	f021 0102 	bic.w	r1, r1, #2
 8006a6a:	4606      	mov	r6, r0
 8006a6c:	69e0      	ldr	r0, [r4, #28]
 8006a6e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8006a72:	4617      	mov	r7, r2
 8006a74:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8006a78:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8006a7a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8006a7e:	4698      	mov	r8, r3
 8006a80:	ad1a      	add	r5, sp, #104	; 0x68
 8006a82:	2300      	movs	r3, #0
 8006a84:	9007      	str	r0, [sp, #28]
 8006a86:	a816      	add	r0, sp, #88	; 0x58
 8006a88:	9209      	str	r2, [sp, #36]	; 0x24
 8006a8a:	9306      	str	r3, [sp, #24]
 8006a8c:	9500      	str	r5, [sp, #0]
 8006a8e:	9504      	str	r5, [sp, #16]
 8006a90:	9102      	str	r1, [sp, #8]
 8006a92:	9105      	str	r1, [sp, #20]
 8006a94:	f001 fcfe 	bl	8008494 <__retarget_lock_init_recursive>
 8006a98:	4643      	mov	r3, r8
 8006a9a:	463a      	mov	r2, r7
 8006a9c:	4669      	mov	r1, sp
 8006a9e:	4630      	mov	r0, r6
 8006aa0:	f7fe fa9a 	bl	8004fd8 <_vfprintf_r>
 8006aa4:	1e05      	subs	r5, r0, #0
 8006aa6:	db07      	blt.n	8006ab8 <__sbprintf+0x64>
 8006aa8:	4630      	mov	r0, r6
 8006aaa:	4669      	mov	r1, sp
 8006aac:	f001 f94a 	bl	8007d44 <_fflush_r>
 8006ab0:	2800      	cmp	r0, #0
 8006ab2:	bf18      	it	ne
 8006ab4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8006ab8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8006abc:	065b      	lsls	r3, r3, #25
 8006abe:	d503      	bpl.n	8006ac8 <__sbprintf+0x74>
 8006ac0:	89a3      	ldrh	r3, [r4, #12]
 8006ac2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006ac6:	81a3      	strh	r3, [r4, #12]
 8006ac8:	9816      	ldr	r0, [sp, #88]	; 0x58
 8006aca:	f001 fce5 	bl	8008498 <__retarget_lock_close_recursive>
 8006ace:	4628      	mov	r0, r5
 8006ad0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8006ad4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006ad8 <__swsetup_r>:
 8006ad8:	b538      	push	{r3, r4, r5, lr}
 8006ada:	4b31      	ldr	r3, [pc, #196]	; (8006ba0 <__swsetup_r+0xc8>)
 8006adc:	681b      	ldr	r3, [r3, #0]
 8006ade:	4605      	mov	r5, r0
 8006ae0:	460c      	mov	r4, r1
 8006ae2:	b113      	cbz	r3, 8006aea <__swsetup_r+0x12>
 8006ae4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006ae6:	2a00      	cmp	r2, #0
 8006ae8:	d03a      	beq.n	8006b60 <__swsetup_r+0x88>
 8006aea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006aee:	b293      	uxth	r3, r2
 8006af0:	0718      	lsls	r0, r3, #28
 8006af2:	d50c      	bpl.n	8006b0e <__swsetup_r+0x36>
 8006af4:	6920      	ldr	r0, [r4, #16]
 8006af6:	b1a8      	cbz	r0, 8006b24 <__swsetup_r+0x4c>
 8006af8:	f013 0201 	ands.w	r2, r3, #1
 8006afc:	d020      	beq.n	8006b40 <__swsetup_r+0x68>
 8006afe:	6963      	ldr	r3, [r4, #20]
 8006b00:	2200      	movs	r2, #0
 8006b02:	425b      	negs	r3, r3
 8006b04:	61a3      	str	r3, [r4, #24]
 8006b06:	60a2      	str	r2, [r4, #8]
 8006b08:	b300      	cbz	r0, 8006b4c <__swsetup_r+0x74>
 8006b0a:	2000      	movs	r0, #0
 8006b0c:	bd38      	pop	{r3, r4, r5, pc}
 8006b0e:	06d9      	lsls	r1, r3, #27
 8006b10:	d53e      	bpl.n	8006b90 <__swsetup_r+0xb8>
 8006b12:	0758      	lsls	r0, r3, #29
 8006b14:	d428      	bmi.n	8006b68 <__swsetup_r+0x90>
 8006b16:	6920      	ldr	r0, [r4, #16]
 8006b18:	f042 0308 	orr.w	r3, r2, #8
 8006b1c:	81a3      	strh	r3, [r4, #12]
 8006b1e:	b29b      	uxth	r3, r3
 8006b20:	2800      	cmp	r0, #0
 8006b22:	d1e9      	bne.n	8006af8 <__swsetup_r+0x20>
 8006b24:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8006b28:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8006b2c:	d0e4      	beq.n	8006af8 <__swsetup_r+0x20>
 8006b2e:	4628      	mov	r0, r5
 8006b30:	4621      	mov	r1, r4
 8006b32:	f001 fce5 	bl	8008500 <__smakebuf_r>
 8006b36:	89a3      	ldrh	r3, [r4, #12]
 8006b38:	6920      	ldr	r0, [r4, #16]
 8006b3a:	f013 0201 	ands.w	r2, r3, #1
 8006b3e:	d1de      	bne.n	8006afe <__swsetup_r+0x26>
 8006b40:	0799      	lsls	r1, r3, #30
 8006b42:	bf58      	it	pl
 8006b44:	6962      	ldrpl	r2, [r4, #20]
 8006b46:	60a2      	str	r2, [r4, #8]
 8006b48:	2800      	cmp	r0, #0
 8006b4a:	d1de      	bne.n	8006b0a <__swsetup_r+0x32>
 8006b4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b50:	061a      	lsls	r2, r3, #24
 8006b52:	d5db      	bpl.n	8006b0c <__swsetup_r+0x34>
 8006b54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006b58:	81a3      	strh	r3, [r4, #12]
 8006b5a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b5e:	bd38      	pop	{r3, r4, r5, pc}
 8006b60:	4618      	mov	r0, r3
 8006b62:	f001 f94b 	bl	8007dfc <__sinit>
 8006b66:	e7c0      	b.n	8006aea <__swsetup_r+0x12>
 8006b68:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b6a:	b151      	cbz	r1, 8006b82 <__swsetup_r+0xaa>
 8006b6c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b70:	4299      	cmp	r1, r3
 8006b72:	d004      	beq.n	8006b7e <__swsetup_r+0xa6>
 8006b74:	4628      	mov	r0, r5
 8006b76:	f001 f9e3 	bl	8007f40 <_free_r>
 8006b7a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b7e:	2300      	movs	r3, #0
 8006b80:	6323      	str	r3, [r4, #48]	; 0x30
 8006b82:	2300      	movs	r3, #0
 8006b84:	6920      	ldr	r0, [r4, #16]
 8006b86:	6063      	str	r3, [r4, #4]
 8006b88:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8006b8c:	6020      	str	r0, [r4, #0]
 8006b8e:	e7c3      	b.n	8006b18 <__swsetup_r+0x40>
 8006b90:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006b94:	2309      	movs	r3, #9
 8006b96:	602b      	str	r3, [r5, #0]
 8006b98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b9c:	81a2      	strh	r2, [r4, #12]
 8006b9e:	bd38      	pop	{r3, r4, r5, pc}
 8006ba0:	20000030 	.word	0x20000030

08006ba4 <register_fini>:
 8006ba4:	4b02      	ldr	r3, [pc, #8]	; (8006bb0 <register_fini+0xc>)
 8006ba6:	b113      	cbz	r3, 8006bae <register_fini+0xa>
 8006ba8:	4802      	ldr	r0, [pc, #8]	; (8006bb4 <register_fini+0x10>)
 8006baa:	f000 b879 	b.w	8006ca0 <atexit>
 8006bae:	4770      	bx	lr
 8006bb0:	00000000 	.word	0x00000000
 8006bb4:	08007e6d 	.word	0x08007e6d

08006bb8 <__call_exitprocs>:
 8006bb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bbc:	4b35      	ldr	r3, [pc, #212]	; (8006c94 <__call_exitprocs+0xdc>)
 8006bbe:	b085      	sub	sp, #20
 8006bc0:	460f      	mov	r7, r1
 8006bc2:	9003      	str	r0, [sp, #12]
 8006bc4:	6818      	ldr	r0, [r3, #0]
 8006bc6:	f001 fc69 	bl	800849c <__retarget_lock_acquire_recursive>
 8006bca:	4b33      	ldr	r3, [pc, #204]	; (8006c98 <__call_exitprocs+0xe0>)
 8006bcc:	681b      	ldr	r3, [r3, #0]
 8006bce:	9301      	str	r3, [sp, #4]
 8006bd0:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 8006bd4:	9302      	str	r3, [sp, #8]
 8006bd6:	46b9      	mov	r9, r7
 8006bd8:	9b01      	ldr	r3, [sp, #4]
 8006bda:	f8d3 6148 	ldr.w	r6, [r3, #328]	; 0x148
 8006bde:	b33e      	cbz	r6, 8006c30 <__call_exitprocs+0x78>
 8006be0:	f8dd a008 	ldr.w	sl, [sp, #8]
 8006be4:	f04f 0801 	mov.w	r8, #1
 8006be8:	6874      	ldr	r4, [r6, #4]
 8006bea:	1e65      	subs	r5, r4, #1
 8006bec:	d40f      	bmi.n	8006c0e <__call_exitprocs+0x56>
 8006bee:	3401      	adds	r4, #1
 8006bf0:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8006bf4:	2700      	movs	r7, #0
 8006bf6:	f1b9 0f00 	cmp.w	r9, #0
 8006bfa:	d020      	beq.n	8006c3e <__call_exitprocs+0x86>
 8006bfc:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 8006c00:	454b      	cmp	r3, r9
 8006c02:	d01c      	beq.n	8006c3e <__call_exitprocs+0x86>
 8006c04:	3d01      	subs	r5, #1
 8006c06:	1c6b      	adds	r3, r5, #1
 8006c08:	f1a4 0404 	sub.w	r4, r4, #4
 8006c0c:	d1f3      	bne.n	8006bf6 <__call_exitprocs+0x3e>
 8006c0e:	4b23      	ldr	r3, [pc, #140]	; (8006c9c <__call_exitprocs+0xe4>)
 8006c10:	b173      	cbz	r3, 8006c30 <__call_exitprocs+0x78>
 8006c12:	e9d6 3200 	ldrd	r3, r2, [r6]
 8006c16:	2a00      	cmp	r2, #0
 8006c18:	d134      	bne.n	8006c84 <__call_exitprocs+0xcc>
 8006c1a:	2b00      	cmp	r3, #0
 8006c1c:	d032      	beq.n	8006c84 <__call_exitprocs+0xcc>
 8006c1e:	4630      	mov	r0, r6
 8006c20:	f8ca 3000 	str.w	r3, [sl]
 8006c24:	f7fd fe5a 	bl	80048dc <free>
 8006c28:	f8da 6000 	ldr.w	r6, [sl]
 8006c2c:	2e00      	cmp	r6, #0
 8006c2e:	d1db      	bne.n	8006be8 <__call_exitprocs+0x30>
 8006c30:	4b18      	ldr	r3, [pc, #96]	; (8006c94 <__call_exitprocs+0xdc>)
 8006c32:	6818      	ldr	r0, [r3, #0]
 8006c34:	b005      	add	sp, #20
 8006c36:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c3a:	f001 bc31 	b.w	80084a0 <__retarget_lock_release_recursive>
 8006c3e:	6873      	ldr	r3, [r6, #4]
 8006c40:	6822      	ldr	r2, [r4, #0]
 8006c42:	3b01      	subs	r3, #1
 8006c44:	42ab      	cmp	r3, r5
 8006c46:	bf0c      	ite	eq
 8006c48:	6075      	streq	r5, [r6, #4]
 8006c4a:	6027      	strne	r7, [r4, #0]
 8006c4c:	2a00      	cmp	r2, #0
 8006c4e:	d0d9      	beq.n	8006c04 <__call_exitprocs+0x4c>
 8006c50:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
 8006c54:	f8d6 b004 	ldr.w	fp, [r6, #4]
 8006c58:	fa08 f305 	lsl.w	r3, r8, r5
 8006c5c:	420b      	tst	r3, r1
 8006c5e:	d108      	bne.n	8006c72 <__call_exitprocs+0xba>
 8006c60:	4790      	blx	r2
 8006c62:	6873      	ldr	r3, [r6, #4]
 8006c64:	455b      	cmp	r3, fp
 8006c66:	d1b7      	bne.n	8006bd8 <__call_exitprocs+0x20>
 8006c68:	f8da 3000 	ldr.w	r3, [sl]
 8006c6c:	42b3      	cmp	r3, r6
 8006c6e:	d0c9      	beq.n	8006c04 <__call_exitprocs+0x4c>
 8006c70:	e7b2      	b.n	8006bd8 <__call_exitprocs+0x20>
 8006c72:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 8006c76:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 8006c7a:	4203      	tst	r3, r0
 8006c7c:	d107      	bne.n	8006c8e <__call_exitprocs+0xd6>
 8006c7e:	9803      	ldr	r0, [sp, #12]
 8006c80:	4790      	blx	r2
 8006c82:	e7ee      	b.n	8006c62 <__call_exitprocs+0xaa>
 8006c84:	46b2      	mov	sl, r6
 8006c86:	461e      	mov	r6, r3
 8006c88:	2e00      	cmp	r6, #0
 8006c8a:	d1ad      	bne.n	8006be8 <__call_exitprocs+0x30>
 8006c8c:	e7d0      	b.n	8006c30 <__call_exitprocs+0x78>
 8006c8e:	4608      	mov	r0, r1
 8006c90:	4790      	blx	r2
 8006c92:	e7e6      	b.n	8006c62 <__call_exitprocs+0xaa>
 8006c94:	20000870 	.word	0x20000870
 8006c98:	08009ae0 	.word	0x08009ae0
 8006c9c:	080048dd 	.word	0x080048dd

08006ca0 <atexit>:
 8006ca0:	2300      	movs	r3, #0
 8006ca2:	4601      	mov	r1, r0
 8006ca4:	461a      	mov	r2, r3
 8006ca6:	4618      	mov	r0, r3
 8006ca8:	f002 ba96 	b.w	80091d8 <__register_exitproc>

08006cac <quorem>:
 8006cac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006cb0:	6903      	ldr	r3, [r0, #16]
 8006cb2:	690f      	ldr	r7, [r1, #16]
 8006cb4:	42bb      	cmp	r3, r7
 8006cb6:	b083      	sub	sp, #12
 8006cb8:	f2c0 8086 	blt.w	8006dc8 <quorem+0x11c>
 8006cbc:	3f01      	subs	r7, #1
 8006cbe:	f101 0914 	add.w	r9, r1, #20
 8006cc2:	f100 0a14 	add.w	sl, r0, #20
 8006cc6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8006cca:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8006cce:	00bc      	lsls	r4, r7, #2
 8006cd0:	3201      	adds	r2, #1
 8006cd2:	fbb3 f8f2 	udiv	r8, r3, r2
 8006cd6:	eb0a 0304 	add.w	r3, sl, r4
 8006cda:	9400      	str	r4, [sp, #0]
 8006cdc:	eb09 0b04 	add.w	fp, r9, r4
 8006ce0:	9301      	str	r3, [sp, #4]
 8006ce2:	f1b8 0f00 	cmp.w	r8, #0
 8006ce6:	d038      	beq.n	8006d5a <quorem+0xae>
 8006ce8:	2500      	movs	r5, #0
 8006cea:	462e      	mov	r6, r5
 8006cec:	46ce      	mov	lr, r9
 8006cee:	46d4      	mov	ip, sl
 8006cf0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8006cf4:	f8dc 3000 	ldr.w	r3, [ip]
 8006cf8:	b2a2      	uxth	r2, r4
 8006cfa:	fb08 5502 	mla	r5, r8, r2, r5
 8006cfe:	0c22      	lsrs	r2, r4, #16
 8006d00:	0c2c      	lsrs	r4, r5, #16
 8006d02:	fb08 4202 	mla	r2, r8, r2, r4
 8006d06:	b2ad      	uxth	r5, r5
 8006d08:	1b75      	subs	r5, r6, r5
 8006d0a:	b296      	uxth	r6, r2
 8006d0c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8006d10:	fa15 f383 	uxtah	r3, r5, r3
 8006d14:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8006d18:	b29b      	uxth	r3, r3
 8006d1a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8006d1e:	45f3      	cmp	fp, lr
 8006d20:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8006d24:	f84c 3b04 	str.w	r3, [ip], #4
 8006d28:	ea4f 4626 	mov.w	r6, r6, asr #16
 8006d2c:	d2e0      	bcs.n	8006cf0 <quorem+0x44>
 8006d2e:	9b00      	ldr	r3, [sp, #0]
 8006d30:	f85a 3003 	ldr.w	r3, [sl, r3]
 8006d34:	b98b      	cbnz	r3, 8006d5a <quorem+0xae>
 8006d36:	9a01      	ldr	r2, [sp, #4]
 8006d38:	1f13      	subs	r3, r2, #4
 8006d3a:	459a      	cmp	sl, r3
 8006d3c:	d20c      	bcs.n	8006d58 <quorem+0xac>
 8006d3e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8006d42:	b94b      	cbnz	r3, 8006d58 <quorem+0xac>
 8006d44:	f1a2 0308 	sub.w	r3, r2, #8
 8006d48:	e002      	b.n	8006d50 <quorem+0xa4>
 8006d4a:	681a      	ldr	r2, [r3, #0]
 8006d4c:	3b04      	subs	r3, #4
 8006d4e:	b91a      	cbnz	r2, 8006d58 <quorem+0xac>
 8006d50:	459a      	cmp	sl, r3
 8006d52:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006d56:	d3f8      	bcc.n	8006d4a <quorem+0x9e>
 8006d58:	6107      	str	r7, [r0, #16]
 8006d5a:	4604      	mov	r4, r0
 8006d5c:	f001 fe94 	bl	8008a88 <__mcmp>
 8006d60:	2800      	cmp	r0, #0
 8006d62:	db2d      	blt.n	8006dc0 <quorem+0x114>
 8006d64:	f108 0801 	add.w	r8, r8, #1
 8006d68:	4655      	mov	r5, sl
 8006d6a:	2300      	movs	r3, #0
 8006d6c:	f859 1b04 	ldr.w	r1, [r9], #4
 8006d70:	6828      	ldr	r0, [r5, #0]
 8006d72:	b28a      	uxth	r2, r1
 8006d74:	1a9a      	subs	r2, r3, r2
 8006d76:	0c0b      	lsrs	r3, r1, #16
 8006d78:	fa12 f280 	uxtah	r2, r2, r0
 8006d7c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8006d80:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006d84:	b292      	uxth	r2, r2
 8006d86:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006d8a:	45cb      	cmp	fp, r9
 8006d8c:	f845 2b04 	str.w	r2, [r5], #4
 8006d90:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006d94:	d2ea      	bcs.n	8006d6c <quorem+0xc0>
 8006d96:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8006d9a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8006d9e:	b97a      	cbnz	r2, 8006dc0 <quorem+0x114>
 8006da0:	1f1a      	subs	r2, r3, #4
 8006da2:	4592      	cmp	sl, r2
 8006da4:	d20b      	bcs.n	8006dbe <quorem+0x112>
 8006da6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8006daa:	b942      	cbnz	r2, 8006dbe <quorem+0x112>
 8006dac:	3b08      	subs	r3, #8
 8006dae:	e002      	b.n	8006db6 <quorem+0x10a>
 8006db0:	681a      	ldr	r2, [r3, #0]
 8006db2:	3b04      	subs	r3, #4
 8006db4:	b91a      	cbnz	r2, 8006dbe <quorem+0x112>
 8006db6:	459a      	cmp	sl, r3
 8006db8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006dbc:	d3f8      	bcc.n	8006db0 <quorem+0x104>
 8006dbe:	6127      	str	r7, [r4, #16]
 8006dc0:	4640      	mov	r0, r8
 8006dc2:	b003      	add	sp, #12
 8006dc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006dc8:	2000      	movs	r0, #0
 8006dca:	b003      	add	sp, #12
 8006dcc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006dd0 <_dtoa_r>:
 8006dd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006dd4:	ec55 4b10 	vmov	r4, r5, d0
 8006dd8:	b09b      	sub	sp, #108	; 0x6c
 8006dda:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8006ddc:	9102      	str	r1, [sp, #8]
 8006dde:	4681      	mov	r9, r0
 8006de0:	9207      	str	r2, [sp, #28]
 8006de2:	9305      	str	r3, [sp, #20]
 8006de4:	e9cd 4500 	strd	r4, r5, [sp]
 8006de8:	b156      	cbz	r6, 8006e00 <_dtoa_r+0x30>
 8006dea:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8006dec:	6072      	str	r2, [r6, #4]
 8006dee:	2301      	movs	r3, #1
 8006df0:	4093      	lsls	r3, r2
 8006df2:	60b3      	str	r3, [r6, #8]
 8006df4:	4631      	mov	r1, r6
 8006df6:	f001 fc57 	bl	80086a8 <_Bfree>
 8006dfa:	2300      	movs	r3, #0
 8006dfc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8006e00:	f1b5 0800 	subs.w	r8, r5, #0
 8006e04:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8006e06:	bfb4      	ite	lt
 8006e08:	2301      	movlt	r3, #1
 8006e0a:	2300      	movge	r3, #0
 8006e0c:	6013      	str	r3, [r2, #0]
 8006e0e:	4b76      	ldr	r3, [pc, #472]	; (8006fe8 <_dtoa_r+0x218>)
 8006e10:	bfbc      	itt	lt
 8006e12:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8006e16:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8006e1a:	ea33 0308 	bics.w	r3, r3, r8
 8006e1e:	f000 80a6 	beq.w	8006f6e <_dtoa_r+0x19e>
 8006e22:	e9dd 6700 	ldrd	r6, r7, [sp]
 8006e26:	2200      	movs	r2, #0
 8006e28:	2300      	movs	r3, #0
 8006e2a:	4630      	mov	r0, r6
 8006e2c:	4639      	mov	r1, r7
 8006e2e:	f7f9 fe0b 	bl	8000a48 <__aeabi_dcmpeq>
 8006e32:	4605      	mov	r5, r0
 8006e34:	b178      	cbz	r0, 8006e56 <_dtoa_r+0x86>
 8006e36:	9a05      	ldr	r2, [sp, #20]
 8006e38:	2301      	movs	r3, #1
 8006e3a:	6013      	str	r3, [r2, #0]
 8006e3c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006e3e:	2b00      	cmp	r3, #0
 8006e40:	f000 80c0 	beq.w	8006fc4 <_dtoa_r+0x1f4>
 8006e44:	4b69      	ldr	r3, [pc, #420]	; (8006fec <_dtoa_r+0x21c>)
 8006e46:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006e48:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8006e4c:	6013      	str	r3, [r2, #0]
 8006e4e:	4658      	mov	r0, fp
 8006e50:	b01b      	add	sp, #108	; 0x6c
 8006e52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e56:	aa18      	add	r2, sp, #96	; 0x60
 8006e58:	a919      	add	r1, sp, #100	; 0x64
 8006e5a:	ec47 6b10 	vmov	d0, r6, r7
 8006e5e:	4648      	mov	r0, r9
 8006e60:	f001 fea4 	bl	8008bac <__d2b>
 8006e64:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8006e68:	4682      	mov	sl, r0
 8006e6a:	f040 80a0 	bne.w	8006fae <_dtoa_r+0x1de>
 8006e6e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8006e72:	442c      	add	r4, r5
 8006e74:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8006e78:	2b20      	cmp	r3, #32
 8006e7a:	f340 842c 	ble.w	80076d6 <_dtoa_r+0x906>
 8006e7e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8006e82:	fa08 f803 	lsl.w	r8, r8, r3
 8006e86:	9b00      	ldr	r3, [sp, #0]
 8006e88:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8006e8c:	fa23 f000 	lsr.w	r0, r3, r0
 8006e90:	ea48 0000 	orr.w	r0, r8, r0
 8006e94:	f7f9 faf6 	bl	8000484 <__aeabi_ui2d>
 8006e98:	2301      	movs	r3, #1
 8006e9a:	4606      	mov	r6, r0
 8006e9c:	3c01      	subs	r4, #1
 8006e9e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8006ea2:	930f      	str	r3, [sp, #60]	; 0x3c
 8006ea4:	4630      	mov	r0, r6
 8006ea6:	4639      	mov	r1, r7
 8006ea8:	2200      	movs	r2, #0
 8006eaa:	4b51      	ldr	r3, [pc, #324]	; (8006ff0 <_dtoa_r+0x220>)
 8006eac:	f7f9 f9ac 	bl	8000208 <__aeabi_dsub>
 8006eb0:	a347      	add	r3, pc, #284	; (adr r3, 8006fd0 <_dtoa_r+0x200>)
 8006eb2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006eb6:	f7f9 fb5f 	bl	8000578 <__aeabi_dmul>
 8006eba:	a347      	add	r3, pc, #284	; (adr r3, 8006fd8 <_dtoa_r+0x208>)
 8006ebc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006ec0:	f7f9 f9a4 	bl	800020c <__adddf3>
 8006ec4:	4606      	mov	r6, r0
 8006ec6:	4620      	mov	r0, r4
 8006ec8:	460f      	mov	r7, r1
 8006eca:	f7f9 faeb 	bl	80004a4 <__aeabi_i2d>
 8006ece:	a344      	add	r3, pc, #272	; (adr r3, 8006fe0 <_dtoa_r+0x210>)
 8006ed0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006ed4:	f7f9 fb50 	bl	8000578 <__aeabi_dmul>
 8006ed8:	4602      	mov	r2, r0
 8006eda:	460b      	mov	r3, r1
 8006edc:	4630      	mov	r0, r6
 8006ede:	4639      	mov	r1, r7
 8006ee0:	f7f9 f994 	bl	800020c <__adddf3>
 8006ee4:	4606      	mov	r6, r0
 8006ee6:	460f      	mov	r7, r1
 8006ee8:	f7f9 fde0 	bl	8000aac <__aeabi_d2iz>
 8006eec:	2200      	movs	r2, #0
 8006eee:	9006      	str	r0, [sp, #24]
 8006ef0:	2300      	movs	r3, #0
 8006ef2:	4630      	mov	r0, r6
 8006ef4:	4639      	mov	r1, r7
 8006ef6:	f7f9 fdb1 	bl	8000a5c <__aeabi_dcmplt>
 8006efa:	2800      	cmp	r0, #0
 8006efc:	f040 8273 	bne.w	80073e6 <_dtoa_r+0x616>
 8006f00:	9e06      	ldr	r6, [sp, #24]
 8006f02:	2e16      	cmp	r6, #22
 8006f04:	f200 825d 	bhi.w	80073c2 <_dtoa_r+0x5f2>
 8006f08:	4b3a      	ldr	r3, [pc, #232]	; (8006ff4 <_dtoa_r+0x224>)
 8006f0a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8006f0e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8006f12:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006f16:	f7f9 fdbf 	bl	8000a98 <__aeabi_dcmpgt>
 8006f1a:	2800      	cmp	r0, #0
 8006f1c:	f000 83d7 	beq.w	80076ce <_dtoa_r+0x8fe>
 8006f20:	1e73      	subs	r3, r6, #1
 8006f22:	9306      	str	r3, [sp, #24]
 8006f24:	2300      	movs	r3, #0
 8006f26:	930d      	str	r3, [sp, #52]	; 0x34
 8006f28:	1b2c      	subs	r4, r5, r4
 8006f2a:	f1b4 0801 	subs.w	r8, r4, #1
 8006f2e:	f100 8254 	bmi.w	80073da <_dtoa_r+0x60a>
 8006f32:	2300      	movs	r3, #0
 8006f34:	9308      	str	r3, [sp, #32]
 8006f36:	9b06      	ldr	r3, [sp, #24]
 8006f38:	2b00      	cmp	r3, #0
 8006f3a:	f2c0 8245 	blt.w	80073c8 <_dtoa_r+0x5f8>
 8006f3e:	4498      	add	r8, r3
 8006f40:	930c      	str	r3, [sp, #48]	; 0x30
 8006f42:	2300      	movs	r3, #0
 8006f44:	930b      	str	r3, [sp, #44]	; 0x2c
 8006f46:	9b02      	ldr	r3, [sp, #8]
 8006f48:	2b09      	cmp	r3, #9
 8006f4a:	d85b      	bhi.n	8007004 <_dtoa_r+0x234>
 8006f4c:	2b05      	cmp	r3, #5
 8006f4e:	f340 83c0 	ble.w	80076d2 <_dtoa_r+0x902>
 8006f52:	3b04      	subs	r3, #4
 8006f54:	9302      	str	r3, [sp, #8]
 8006f56:	2500      	movs	r5, #0
 8006f58:	9b02      	ldr	r3, [sp, #8]
 8006f5a:	3b02      	subs	r3, #2
 8006f5c:	2b03      	cmp	r3, #3
 8006f5e:	f200 8498 	bhi.w	8007892 <_dtoa_r+0xac2>
 8006f62:	e8df f013 	tbh	[pc, r3, lsl #1]
 8006f66:	03df      	.short	0x03df
 8006f68:	03e803bf 	.word	0x03e803bf
 8006f6c:	04f5      	.short	0x04f5
 8006f6e:	9a05      	ldr	r2, [sp, #20]
 8006f70:	f242 730f 	movw	r3, #9999	; 0x270f
 8006f74:	6013      	str	r3, [r2, #0]
 8006f76:	9b00      	ldr	r3, [sp, #0]
 8006f78:	b983      	cbnz	r3, 8006f9c <_dtoa_r+0x1cc>
 8006f7a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8006f7e:	b96b      	cbnz	r3, 8006f9c <_dtoa_r+0x1cc>
 8006f80:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006f82:	f8df b074 	ldr.w	fp, [pc, #116]	; 8006ff8 <_dtoa_r+0x228>
 8006f86:	2b00      	cmp	r3, #0
 8006f88:	f43f af61 	beq.w	8006e4e <_dtoa_r+0x7e>
 8006f8c:	f10b 0308 	add.w	r3, fp, #8
 8006f90:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006f92:	4658      	mov	r0, fp
 8006f94:	6013      	str	r3, [r2, #0]
 8006f96:	b01b      	add	sp, #108	; 0x6c
 8006f98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f9c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006f9e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8006ffc <_dtoa_r+0x22c>
 8006fa2:	2b00      	cmp	r3, #0
 8006fa4:	f43f af53 	beq.w	8006e4e <_dtoa_r+0x7e>
 8006fa8:	f10b 0303 	add.w	r3, fp, #3
 8006fac:	e7f0      	b.n	8006f90 <_dtoa_r+0x1c0>
 8006fae:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8006fb2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8006fb6:	950f      	str	r5, [sp, #60]	; 0x3c
 8006fb8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8006fbc:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006fc0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8006fc2:	e76f      	b.n	8006ea4 <_dtoa_r+0xd4>
 8006fc4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007000 <_dtoa_r+0x230>
 8006fc8:	4658      	mov	r0, fp
 8006fca:	b01b      	add	sp, #108	; 0x6c
 8006fcc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006fd0:	636f4361 	.word	0x636f4361
 8006fd4:	3fd287a7 	.word	0x3fd287a7
 8006fd8:	8b60c8b3 	.word	0x8b60c8b3
 8006fdc:	3fc68a28 	.word	0x3fc68a28
 8006fe0:	509f79fb 	.word	0x509f79fb
 8006fe4:	3fd34413 	.word	0x3fd34413
 8006fe8:	7ff00000 	.word	0x7ff00000
 8006fec:	08009b29 	.word	0x08009b29
 8006ff0:	3ff80000 	.word	0x3ff80000
 8006ff4:	08009b88 	.word	0x08009b88
 8006ff8:	08009b4c 	.word	0x08009b4c
 8006ffc:	08009b58 	.word	0x08009b58
 8007000:	08009b28 	.word	0x08009b28
 8007004:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8007008:	2501      	movs	r5, #1
 800700a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800700e:	2300      	movs	r3, #0
 8007010:	9302      	str	r3, [sp, #8]
 8007012:	9307      	str	r3, [sp, #28]
 8007014:	2100      	movs	r1, #0
 8007016:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800701a:	940e      	str	r4, [sp, #56]	; 0x38
 800701c:	4648      	mov	r0, r9
 800701e:	f001 fb1d 	bl	800865c <_Balloc>
 8007022:	2c0e      	cmp	r4, #14
 8007024:	4683      	mov	fp, r0
 8007026:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800702a:	f200 80fb 	bhi.w	8007224 <_dtoa_r+0x454>
 800702e:	2d00      	cmp	r5, #0
 8007030:	f000 80f8 	beq.w	8007224 <_dtoa_r+0x454>
 8007034:	ed9d 7b00 	vldr	d7, [sp]
 8007038:	9906      	ldr	r1, [sp, #24]
 800703a:	2900      	cmp	r1, #0
 800703c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8007040:	f340 83e5 	ble.w	800780e <_dtoa_r+0xa3e>
 8007044:	4b9d      	ldr	r3, [pc, #628]	; (80072bc <_dtoa_r+0x4ec>)
 8007046:	f001 020f 	and.w	r2, r1, #15
 800704a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800704e:	ed93 7b00 	vldr	d7, [r3]
 8007052:	110c      	asrs	r4, r1, #4
 8007054:	06e2      	lsls	r2, r4, #27
 8007056:	ed8d 7b00 	vstr	d7, [sp]
 800705a:	f140 849e 	bpl.w	800799a <_dtoa_r+0xbca>
 800705e:	4b98      	ldr	r3, [pc, #608]	; (80072c0 <_dtoa_r+0x4f0>)
 8007060:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007064:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8007068:	f7f9 fbb0 	bl	80007cc <__aeabi_ddiv>
 800706c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8007070:	f004 040f 	and.w	r4, r4, #15
 8007074:	2603      	movs	r6, #3
 8007076:	b17c      	cbz	r4, 8007098 <_dtoa_r+0x2c8>
 8007078:	e9dd 0100 	ldrd	r0, r1, [sp]
 800707c:	4d90      	ldr	r5, [pc, #576]	; (80072c0 <_dtoa_r+0x4f0>)
 800707e:	07e3      	lsls	r3, r4, #31
 8007080:	d504      	bpl.n	800708c <_dtoa_r+0x2bc>
 8007082:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007086:	f7f9 fa77 	bl	8000578 <__aeabi_dmul>
 800708a:	3601      	adds	r6, #1
 800708c:	1064      	asrs	r4, r4, #1
 800708e:	f105 0508 	add.w	r5, r5, #8
 8007092:	d1f4      	bne.n	800707e <_dtoa_r+0x2ae>
 8007094:	e9cd 0100 	strd	r0, r1, [sp]
 8007098:	e9dd 2300 	ldrd	r2, r3, [sp]
 800709c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80070a0:	f7f9 fb94 	bl	80007cc <__aeabi_ddiv>
 80070a4:	e9cd 0100 	strd	r0, r1, [sp]
 80070a8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80070aa:	b143      	cbz	r3, 80070be <_dtoa_r+0x2ee>
 80070ac:	2200      	movs	r2, #0
 80070ae:	4b85      	ldr	r3, [pc, #532]	; (80072c4 <_dtoa_r+0x4f4>)
 80070b0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80070b4:	f7f9 fcd2 	bl	8000a5c <__aeabi_dcmplt>
 80070b8:	2800      	cmp	r0, #0
 80070ba:	f040 84ff 	bne.w	8007abc <_dtoa_r+0xcec>
 80070be:	4630      	mov	r0, r6
 80070c0:	f7f9 f9f0 	bl	80004a4 <__aeabi_i2d>
 80070c4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80070c8:	f7f9 fa56 	bl	8000578 <__aeabi_dmul>
 80070cc:	4b7e      	ldr	r3, [pc, #504]	; (80072c8 <_dtoa_r+0x4f8>)
 80070ce:	2200      	movs	r2, #0
 80070d0:	f7f9 f89c 	bl	800020c <__adddf3>
 80070d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80070d6:	4606      	mov	r6, r0
 80070d8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80070dc:	2b00      	cmp	r3, #0
 80070de:	f000 841c 	beq.w	800791a <_dtoa_r+0xb4a>
 80070e2:	9b06      	ldr	r3, [sp, #24]
 80070e4:	9316      	str	r3, [sp, #88]	; 0x58
 80070e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80070e8:	9312      	str	r3, [sp, #72]	; 0x48
 80070ea:	e9dd 0100 	ldrd	r0, r1, [sp]
 80070ee:	f7f9 fcdd 	bl	8000aac <__aeabi_d2iz>
 80070f2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80070f4:	4b71      	ldr	r3, [pc, #452]	; (80072bc <_dtoa_r+0x4ec>)
 80070f6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80070fa:	ed13 7b02 	vldr	d7, [r3, #-8]
 80070fe:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8007102:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8007106:	f7f9 f9cd 	bl	80004a4 <__aeabi_i2d>
 800710a:	460b      	mov	r3, r1
 800710c:	4602      	mov	r2, r0
 800710e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007112:	e9cd 6700 	strd	r6, r7, [sp]
 8007116:	f7f9 f877 	bl	8000208 <__aeabi_dsub>
 800711a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800711c:	b2ed      	uxtb	r5, r5
 800711e:	4606      	mov	r6, r0
 8007120:	460f      	mov	r7, r1
 8007122:	f10b 0401 	add.w	r4, fp, #1
 8007126:	2b00      	cmp	r3, #0
 8007128:	f000 8458 	beq.w	80079dc <_dtoa_r+0xc0c>
 800712c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007130:	2000      	movs	r0, #0
 8007132:	4966      	ldr	r1, [pc, #408]	; (80072cc <_dtoa_r+0x4fc>)
 8007134:	f7f9 fb4a 	bl	80007cc <__aeabi_ddiv>
 8007138:	e9dd 2300 	ldrd	r2, r3, [sp]
 800713c:	f7f9 f864 	bl	8000208 <__aeabi_dsub>
 8007140:	f88b 5000 	strb.w	r5, [fp]
 8007144:	4632      	mov	r2, r6
 8007146:	463b      	mov	r3, r7
 8007148:	e9cd 0100 	strd	r0, r1, [sp]
 800714c:	f7f9 fca4 	bl	8000a98 <__aeabi_dcmpgt>
 8007150:	2800      	cmp	r0, #0
 8007152:	f040 8502 	bne.w	8007b5a <_dtoa_r+0xd8a>
 8007156:	4632      	mov	r2, r6
 8007158:	463b      	mov	r3, r7
 800715a:	2000      	movs	r0, #0
 800715c:	4959      	ldr	r1, [pc, #356]	; (80072c4 <_dtoa_r+0x4f4>)
 800715e:	f7f9 f853 	bl	8000208 <__aeabi_dsub>
 8007162:	4602      	mov	r2, r0
 8007164:	460b      	mov	r3, r1
 8007166:	e9dd 0100 	ldrd	r0, r1, [sp]
 800716a:	f7f9 fc95 	bl	8000a98 <__aeabi_dcmpgt>
 800716e:	2800      	cmp	r0, #0
 8007170:	f040 84fb 	bne.w	8007b6a <_dtoa_r+0xd9a>
 8007174:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007176:	2a01      	cmp	r2, #1
 8007178:	d050      	beq.n	800721c <_dtoa_r+0x44c>
 800717a:	445a      	add	r2, fp
 800717c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8007180:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8007184:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8007188:	4692      	mov	sl, r2
 800718a:	46cb      	mov	fp, r9
 800718c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8007190:	e00c      	b.n	80071ac <_dtoa_r+0x3dc>
 8007192:	2000      	movs	r0, #0
 8007194:	494b      	ldr	r1, [pc, #300]	; (80072c4 <_dtoa_r+0x4f4>)
 8007196:	f7f9 f837 	bl	8000208 <__aeabi_dsub>
 800719a:	4642      	mov	r2, r8
 800719c:	464b      	mov	r3, r9
 800719e:	f7f9 fc5d 	bl	8000a5c <__aeabi_dcmplt>
 80071a2:	2800      	cmp	r0, #0
 80071a4:	f040 84dc 	bne.w	8007b60 <_dtoa_r+0xd90>
 80071a8:	4554      	cmp	r4, sl
 80071aa:	d030      	beq.n	800720e <_dtoa_r+0x43e>
 80071ac:	4640      	mov	r0, r8
 80071ae:	4649      	mov	r1, r9
 80071b0:	2200      	movs	r2, #0
 80071b2:	4b47      	ldr	r3, [pc, #284]	; (80072d0 <_dtoa_r+0x500>)
 80071b4:	f7f9 f9e0 	bl	8000578 <__aeabi_dmul>
 80071b8:	2200      	movs	r2, #0
 80071ba:	4b45      	ldr	r3, [pc, #276]	; (80072d0 <_dtoa_r+0x500>)
 80071bc:	4680      	mov	r8, r0
 80071be:	4689      	mov	r9, r1
 80071c0:	4630      	mov	r0, r6
 80071c2:	4639      	mov	r1, r7
 80071c4:	f7f9 f9d8 	bl	8000578 <__aeabi_dmul>
 80071c8:	460f      	mov	r7, r1
 80071ca:	4606      	mov	r6, r0
 80071cc:	f7f9 fc6e 	bl	8000aac <__aeabi_d2iz>
 80071d0:	4605      	mov	r5, r0
 80071d2:	f7f9 f967 	bl	80004a4 <__aeabi_i2d>
 80071d6:	4602      	mov	r2, r0
 80071d8:	460b      	mov	r3, r1
 80071da:	4630      	mov	r0, r6
 80071dc:	4639      	mov	r1, r7
 80071de:	f7f9 f813 	bl	8000208 <__aeabi_dsub>
 80071e2:	3530      	adds	r5, #48	; 0x30
 80071e4:	b2ed      	uxtb	r5, r5
 80071e6:	4642      	mov	r2, r8
 80071e8:	464b      	mov	r3, r9
 80071ea:	f804 5b01 	strb.w	r5, [r4], #1
 80071ee:	4606      	mov	r6, r0
 80071f0:	460f      	mov	r7, r1
 80071f2:	f7f9 fc33 	bl	8000a5c <__aeabi_dcmplt>
 80071f6:	4632      	mov	r2, r6
 80071f8:	463b      	mov	r3, r7
 80071fa:	2800      	cmp	r0, #0
 80071fc:	d0c9      	beq.n	8007192 <_dtoa_r+0x3c2>
 80071fe:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007200:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007204:	9306      	str	r3, [sp, #24]
 8007206:	46d9      	mov	r9, fp
 8007208:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800720c:	e236      	b.n	800767c <_dtoa_r+0x8ac>
 800720e:	46d9      	mov	r9, fp
 8007210:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007214:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007218:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800721c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007220:	e9cd 3400 	strd	r3, r4, [sp]
 8007224:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007226:	2b00      	cmp	r3, #0
 8007228:	f2c0 80ae 	blt.w	8007388 <_dtoa_r+0x5b8>
 800722c:	9a06      	ldr	r2, [sp, #24]
 800722e:	2a0e      	cmp	r2, #14
 8007230:	f300 80aa 	bgt.w	8007388 <_dtoa_r+0x5b8>
 8007234:	4b21      	ldr	r3, [pc, #132]	; (80072bc <_dtoa_r+0x4ec>)
 8007236:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800723a:	ed93 7b00 	vldr	d7, [r3]
 800723e:	9b07      	ldr	r3, [sp, #28]
 8007240:	2b00      	cmp	r3, #0
 8007242:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007246:	f2c0 82be 	blt.w	80077c6 <_dtoa_r+0x9f6>
 800724a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800724e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007252:	4630      	mov	r0, r6
 8007254:	4639      	mov	r1, r7
 8007256:	f7f9 fab9 	bl	80007cc <__aeabi_ddiv>
 800725a:	f7f9 fc27 	bl	8000aac <__aeabi_d2iz>
 800725e:	4605      	mov	r5, r0
 8007260:	f7f9 f920 	bl	80004a4 <__aeabi_i2d>
 8007264:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007268:	f7f9 f986 	bl	8000578 <__aeabi_dmul>
 800726c:	460b      	mov	r3, r1
 800726e:	4602      	mov	r2, r0
 8007270:	4639      	mov	r1, r7
 8007272:	4630      	mov	r0, r6
 8007274:	f7f8 ffc8 	bl	8000208 <__aeabi_dsub>
 8007278:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800727c:	f88b 3000 	strb.w	r3, [fp]
 8007280:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007282:	2b01      	cmp	r3, #1
 8007284:	4606      	mov	r6, r0
 8007286:	460f      	mov	r7, r1
 8007288:	f10b 0401 	add.w	r4, fp, #1
 800728c:	d053      	beq.n	8007336 <_dtoa_r+0x566>
 800728e:	2200      	movs	r2, #0
 8007290:	4b0f      	ldr	r3, [pc, #60]	; (80072d0 <_dtoa_r+0x500>)
 8007292:	f7f9 f971 	bl	8000578 <__aeabi_dmul>
 8007296:	2200      	movs	r2, #0
 8007298:	2300      	movs	r3, #0
 800729a:	4606      	mov	r6, r0
 800729c:	460f      	mov	r7, r1
 800729e:	f7f9 fbd3 	bl	8000a48 <__aeabi_dcmpeq>
 80072a2:	2800      	cmp	r0, #0
 80072a4:	f040 81ea 	bne.w	800767c <_dtoa_r+0x8ac>
 80072a8:	f8cd a000 	str.w	sl, [sp]
 80072ac:	f8cd 901c 	str.w	r9, [sp, #28]
 80072b0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80072b4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80072b8:	e017      	b.n	80072ea <_dtoa_r+0x51a>
 80072ba:	bf00      	nop
 80072bc:	08009b88 	.word	0x08009b88
 80072c0:	08009b60 	.word	0x08009b60
 80072c4:	3ff00000 	.word	0x3ff00000
 80072c8:	401c0000 	.word	0x401c0000
 80072cc:	3fe00000 	.word	0x3fe00000
 80072d0:	40240000 	.word	0x40240000
 80072d4:	f7f9 f950 	bl	8000578 <__aeabi_dmul>
 80072d8:	2200      	movs	r2, #0
 80072da:	2300      	movs	r3, #0
 80072dc:	4606      	mov	r6, r0
 80072de:	460f      	mov	r7, r1
 80072e0:	f7f9 fbb2 	bl	8000a48 <__aeabi_dcmpeq>
 80072e4:	2800      	cmp	r0, #0
 80072e6:	f040 833d 	bne.w	8007964 <_dtoa_r+0xb94>
 80072ea:	464a      	mov	r2, r9
 80072ec:	4653      	mov	r3, sl
 80072ee:	4630      	mov	r0, r6
 80072f0:	4639      	mov	r1, r7
 80072f2:	f7f9 fa6b 	bl	80007cc <__aeabi_ddiv>
 80072f6:	f7f9 fbd9 	bl	8000aac <__aeabi_d2iz>
 80072fa:	4605      	mov	r5, r0
 80072fc:	f7f9 f8d2 	bl	80004a4 <__aeabi_i2d>
 8007300:	464a      	mov	r2, r9
 8007302:	4653      	mov	r3, sl
 8007304:	f7f9 f938 	bl	8000578 <__aeabi_dmul>
 8007308:	4602      	mov	r2, r0
 800730a:	460b      	mov	r3, r1
 800730c:	4630      	mov	r0, r6
 800730e:	4639      	mov	r1, r7
 8007310:	f7f8 ff7a 	bl	8000208 <__aeabi_dsub>
 8007314:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007318:	f804 cb01 	strb.w	ip, [r4], #1
 800731c:	eba4 0c0b 	sub.w	ip, r4, fp
 8007320:	45e0      	cmp	r8, ip
 8007322:	4606      	mov	r6, r0
 8007324:	460f      	mov	r7, r1
 8007326:	f04f 0200 	mov.w	r2, #0
 800732a:	4bc1      	ldr	r3, [pc, #772]	; (8007630 <_dtoa_r+0x860>)
 800732c:	d1d2      	bne.n	80072d4 <_dtoa_r+0x504>
 800732e:	f8dd a000 	ldr.w	sl, [sp]
 8007332:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007336:	4632      	mov	r2, r6
 8007338:	463b      	mov	r3, r7
 800733a:	4630      	mov	r0, r6
 800733c:	4639      	mov	r1, r7
 800733e:	f7f8 ff65 	bl	800020c <__adddf3>
 8007342:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007346:	4606      	mov	r6, r0
 8007348:	460f      	mov	r7, r1
 800734a:	f7f9 fba5 	bl	8000a98 <__aeabi_dcmpgt>
 800734e:	b958      	cbnz	r0, 8007368 <_dtoa_r+0x598>
 8007350:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007354:	4630      	mov	r0, r6
 8007356:	4639      	mov	r1, r7
 8007358:	f7f9 fb76 	bl	8000a48 <__aeabi_dcmpeq>
 800735c:	2800      	cmp	r0, #0
 800735e:	f000 818d 	beq.w	800767c <_dtoa_r+0x8ac>
 8007362:	07e9      	lsls	r1, r5, #31
 8007364:	f140 818a 	bpl.w	800767c <_dtoa_r+0x8ac>
 8007368:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800736c:	e005      	b.n	800737a <_dtoa_r+0x5aa>
 800736e:	459b      	cmp	fp, r3
 8007370:	f000 8373 	beq.w	8007a5a <_dtoa_r+0xc8a>
 8007374:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8007378:	461c      	mov	r4, r3
 800737a:	2d39      	cmp	r5, #57	; 0x39
 800737c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007380:	d0f5      	beq.n	800736e <_dtoa_r+0x59e>
 8007382:	3501      	adds	r5, #1
 8007384:	701d      	strb	r5, [r3, #0]
 8007386:	e179      	b.n	800767c <_dtoa_r+0x8ac>
 8007388:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800738a:	2a00      	cmp	r2, #0
 800738c:	d03b      	beq.n	8007406 <_dtoa_r+0x636>
 800738e:	9a02      	ldr	r2, [sp, #8]
 8007390:	2a01      	cmp	r2, #1
 8007392:	f340 820b 	ble.w	80077ac <_dtoa_r+0x9dc>
 8007396:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007398:	1e5f      	subs	r7, r3, #1
 800739a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800739c:	42bb      	cmp	r3, r7
 800739e:	f2c0 82e6 	blt.w	800796e <_dtoa_r+0xb9e>
 80073a2:	1bdf      	subs	r7, r3, r7
 80073a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80073a6:	2b00      	cmp	r3, #0
 80073a8:	f2c0 830b 	blt.w	80079c2 <_dtoa_r+0xbf2>
 80073ac:	9a08      	ldr	r2, [sp, #32]
 80073ae:	4614      	mov	r4, r2
 80073b0:	441a      	add	r2, r3
 80073b2:	4498      	add	r8, r3
 80073b4:	9208      	str	r2, [sp, #32]
 80073b6:	2101      	movs	r1, #1
 80073b8:	4648      	mov	r0, r9
 80073ba:	f001 fa0f 	bl	80087dc <__i2b>
 80073be:	4605      	mov	r5, r0
 80073c0:	e024      	b.n	800740c <_dtoa_r+0x63c>
 80073c2:	2301      	movs	r3, #1
 80073c4:	930d      	str	r3, [sp, #52]	; 0x34
 80073c6:	e5af      	b.n	8006f28 <_dtoa_r+0x158>
 80073c8:	9a08      	ldr	r2, [sp, #32]
 80073ca:	9b06      	ldr	r3, [sp, #24]
 80073cc:	1ad2      	subs	r2, r2, r3
 80073ce:	425b      	negs	r3, r3
 80073d0:	930b      	str	r3, [sp, #44]	; 0x2c
 80073d2:	2300      	movs	r3, #0
 80073d4:	9208      	str	r2, [sp, #32]
 80073d6:	930c      	str	r3, [sp, #48]	; 0x30
 80073d8:	e5b5      	b.n	8006f46 <_dtoa_r+0x176>
 80073da:	f1c4 0301 	rsb	r3, r4, #1
 80073de:	9308      	str	r3, [sp, #32]
 80073e0:	f04f 0800 	mov.w	r8, #0
 80073e4:	e5a7      	b.n	8006f36 <_dtoa_r+0x166>
 80073e6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80073ea:	4640      	mov	r0, r8
 80073ec:	f7f9 f85a 	bl	80004a4 <__aeabi_i2d>
 80073f0:	4632      	mov	r2, r6
 80073f2:	463b      	mov	r3, r7
 80073f4:	f7f9 fb28 	bl	8000a48 <__aeabi_dcmpeq>
 80073f8:	2800      	cmp	r0, #0
 80073fa:	f47f ad81 	bne.w	8006f00 <_dtoa_r+0x130>
 80073fe:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007402:	9306      	str	r3, [sp, #24]
 8007404:	e57c      	b.n	8006f00 <_dtoa_r+0x130>
 8007406:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007408:	9c08      	ldr	r4, [sp, #32]
 800740a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800740c:	2c00      	cmp	r4, #0
 800740e:	dd0c      	ble.n	800742a <_dtoa_r+0x65a>
 8007410:	f1b8 0f00 	cmp.w	r8, #0
 8007414:	dd09      	ble.n	800742a <_dtoa_r+0x65a>
 8007416:	4544      	cmp	r4, r8
 8007418:	9a08      	ldr	r2, [sp, #32]
 800741a:	4623      	mov	r3, r4
 800741c:	bfa8      	it	ge
 800741e:	4643      	movge	r3, r8
 8007420:	1ad2      	subs	r2, r2, r3
 8007422:	9208      	str	r2, [sp, #32]
 8007424:	1ae4      	subs	r4, r4, r3
 8007426:	eba8 0803 	sub.w	r8, r8, r3
 800742a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800742c:	b16b      	cbz	r3, 800744a <_dtoa_r+0x67a>
 800742e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007430:	2a00      	cmp	r2, #0
 8007432:	f000 8290 	beq.w	8007956 <_dtoa_r+0xb86>
 8007436:	1bde      	subs	r6, r3, r7
 8007438:	2f00      	cmp	r7, #0
 800743a:	f040 819b 	bne.w	8007774 <_dtoa_r+0x9a4>
 800743e:	4651      	mov	r1, sl
 8007440:	4632      	mov	r2, r6
 8007442:	4648      	mov	r0, r9
 8007444:	f001 fa7a 	bl	800893c <__pow5mult>
 8007448:	4682      	mov	sl, r0
 800744a:	2101      	movs	r1, #1
 800744c:	4648      	mov	r0, r9
 800744e:	f001 f9c5 	bl	80087dc <__i2b>
 8007452:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007454:	4606      	mov	r6, r0
 8007456:	2a00      	cmp	r2, #0
 8007458:	f040 8125 	bne.w	80076a6 <_dtoa_r+0x8d6>
 800745c:	9b02      	ldr	r3, [sp, #8]
 800745e:	2b01      	cmp	r3, #1
 8007460:	f340 816c 	ble.w	800773c <_dtoa_r+0x96c>
 8007464:	2001      	movs	r0, #1
 8007466:	4440      	add	r0, r8
 8007468:	f010 001f 	ands.w	r0, r0, #31
 800746c:	f000 8119 	beq.w	80076a2 <_dtoa_r+0x8d2>
 8007470:	f1c0 0320 	rsb	r3, r0, #32
 8007474:	2b04      	cmp	r3, #4
 8007476:	f340 83ac 	ble.w	8007bd2 <_dtoa_r+0xe02>
 800747a:	f1c0 001c 	rsb	r0, r0, #28
 800747e:	9b08      	ldr	r3, [sp, #32]
 8007480:	4403      	add	r3, r0
 8007482:	9308      	str	r3, [sp, #32]
 8007484:	4404      	add	r4, r0
 8007486:	4480      	add	r8, r0
 8007488:	9b08      	ldr	r3, [sp, #32]
 800748a:	2b00      	cmp	r3, #0
 800748c:	dd05      	ble.n	800749a <_dtoa_r+0x6ca>
 800748e:	4651      	mov	r1, sl
 8007490:	461a      	mov	r2, r3
 8007492:	4648      	mov	r0, r9
 8007494:	f001 faa2 	bl	80089dc <__lshift>
 8007498:	4682      	mov	sl, r0
 800749a:	f1b8 0f00 	cmp.w	r8, #0
 800749e:	dd05      	ble.n	80074ac <_dtoa_r+0x6dc>
 80074a0:	4631      	mov	r1, r6
 80074a2:	4642      	mov	r2, r8
 80074a4:	4648      	mov	r0, r9
 80074a6:	f001 fa99 	bl	80089dc <__lshift>
 80074aa:	4606      	mov	r6, r0
 80074ac:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80074ae:	2b00      	cmp	r3, #0
 80074b0:	d177      	bne.n	80075a2 <_dtoa_r+0x7d2>
 80074b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80074b4:	2b00      	cmp	r3, #0
 80074b6:	f340 8209 	ble.w	80078cc <_dtoa_r+0xafc>
 80074ba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80074bc:	2b00      	cmp	r3, #0
 80074be:	f000 8089 	beq.w	80075d4 <_dtoa_r+0x804>
 80074c2:	2c00      	cmp	r4, #0
 80074c4:	f300 816b 	bgt.w	800779e <_dtoa_r+0x9ce>
 80074c8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80074ca:	2b00      	cmp	r3, #0
 80074cc:	f040 81cd 	bne.w	800786a <_dtoa_r+0xa9a>
 80074d0:	46a8      	mov	r8, r5
 80074d2:	9a00      	ldr	r2, [sp, #0]
 80074d4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80074d8:	f002 0201 	and.w	r2, r2, #1
 80074dc:	920a      	str	r2, [sp, #40]	; 0x28
 80074de:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80074e0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80074e4:	441a      	add	r2, r3
 80074e6:	465f      	mov	r7, fp
 80074e8:	9209      	str	r2, [sp, #36]	; 0x24
 80074ea:	46b3      	mov	fp, r6
 80074ec:	4659      	mov	r1, fp
 80074ee:	4650      	mov	r0, sl
 80074f0:	f7ff fbdc 	bl	8006cac <quorem>
 80074f4:	4629      	mov	r1, r5
 80074f6:	4604      	mov	r4, r0
 80074f8:	4650      	mov	r0, sl
 80074fa:	f001 fac5 	bl	8008a88 <__mcmp>
 80074fe:	4659      	mov	r1, fp
 8007500:	4606      	mov	r6, r0
 8007502:	4642      	mov	r2, r8
 8007504:	4648      	mov	r0, r9
 8007506:	f001 fadb 	bl	8008ac0 <__mdiff>
 800750a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800750e:	9300      	str	r3, [sp, #0]
 8007510:	68c3      	ldr	r3, [r0, #12]
 8007512:	4601      	mov	r1, r0
 8007514:	2b00      	cmp	r3, #0
 8007516:	f040 81d4 	bne.w	80078c2 <_dtoa_r+0xaf2>
 800751a:	9008      	str	r0, [sp, #32]
 800751c:	4650      	mov	r0, sl
 800751e:	f001 fab3 	bl	8008a88 <__mcmp>
 8007522:	9a08      	ldr	r2, [sp, #32]
 8007524:	9007      	str	r0, [sp, #28]
 8007526:	4611      	mov	r1, r2
 8007528:	4648      	mov	r0, r9
 800752a:	f001 f8bd 	bl	80086a8 <_Bfree>
 800752e:	9b07      	ldr	r3, [sp, #28]
 8007530:	b933      	cbnz	r3, 8007540 <_dtoa_r+0x770>
 8007532:	9a02      	ldr	r2, [sp, #8]
 8007534:	b922      	cbnz	r2, 8007540 <_dtoa_r+0x770>
 8007536:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007538:	2b00      	cmp	r3, #0
 800753a:	f000 8319 	beq.w	8007b70 <_dtoa_r+0xda0>
 800753e:	9b02      	ldr	r3, [sp, #8]
 8007540:	2e00      	cmp	r6, #0
 8007542:	f2c0 821c 	blt.w	800797e <_dtoa_r+0xbae>
 8007546:	d105      	bne.n	8007554 <_dtoa_r+0x784>
 8007548:	9a02      	ldr	r2, [sp, #8]
 800754a:	b91a      	cbnz	r2, 8007554 <_dtoa_r+0x784>
 800754c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800754e:	2a00      	cmp	r2, #0
 8007550:	f000 8215 	beq.w	800797e <_dtoa_r+0xbae>
 8007554:	2b00      	cmp	r3, #0
 8007556:	f107 0401 	add.w	r4, r7, #1
 800755a:	f300 8225 	bgt.w	80079a8 <_dtoa_r+0xbd8>
 800755e:	9b00      	ldr	r3, [sp, #0]
 8007560:	703b      	strb	r3, [r7, #0]
 8007562:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007564:	42bb      	cmp	r3, r7
 8007566:	f000 8230 	beq.w	80079ca <_dtoa_r+0xbfa>
 800756a:	4651      	mov	r1, sl
 800756c:	2300      	movs	r3, #0
 800756e:	220a      	movs	r2, #10
 8007570:	4648      	mov	r0, r9
 8007572:	f001 f8a3 	bl	80086bc <__multadd>
 8007576:	4545      	cmp	r5, r8
 8007578:	4682      	mov	sl, r0
 800757a:	4629      	mov	r1, r5
 800757c:	f04f 0300 	mov.w	r3, #0
 8007580:	f04f 020a 	mov.w	r2, #10
 8007584:	4648      	mov	r0, r9
 8007586:	f000 8196 	beq.w	80078b6 <_dtoa_r+0xae6>
 800758a:	f001 f897 	bl	80086bc <__multadd>
 800758e:	4641      	mov	r1, r8
 8007590:	4605      	mov	r5, r0
 8007592:	2300      	movs	r3, #0
 8007594:	220a      	movs	r2, #10
 8007596:	4648      	mov	r0, r9
 8007598:	f001 f890 	bl	80086bc <__multadd>
 800759c:	4627      	mov	r7, r4
 800759e:	4680      	mov	r8, r0
 80075a0:	e7a4      	b.n	80074ec <_dtoa_r+0x71c>
 80075a2:	4631      	mov	r1, r6
 80075a4:	4650      	mov	r0, sl
 80075a6:	f001 fa6f 	bl	8008a88 <__mcmp>
 80075aa:	2800      	cmp	r0, #0
 80075ac:	da81      	bge.n	80074b2 <_dtoa_r+0x6e2>
 80075ae:	9f06      	ldr	r7, [sp, #24]
 80075b0:	4651      	mov	r1, sl
 80075b2:	2300      	movs	r3, #0
 80075b4:	220a      	movs	r2, #10
 80075b6:	4648      	mov	r0, r9
 80075b8:	3f01      	subs	r7, #1
 80075ba:	9706      	str	r7, [sp, #24]
 80075bc:	f001 f87e 	bl	80086bc <__multadd>
 80075c0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80075c2:	4682      	mov	sl, r0
 80075c4:	2b00      	cmp	r3, #0
 80075c6:	f040 82eb 	bne.w	8007ba0 <_dtoa_r+0xdd0>
 80075ca:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80075cc:	2b00      	cmp	r3, #0
 80075ce:	f340 82f3 	ble.w	8007bb8 <_dtoa_r+0xde8>
 80075d2:	9309      	str	r3, [sp, #36]	; 0x24
 80075d4:	465c      	mov	r4, fp
 80075d6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80075da:	e002      	b.n	80075e2 <_dtoa_r+0x812>
 80075dc:	f001 f86e 	bl	80086bc <__multadd>
 80075e0:	4682      	mov	sl, r0
 80075e2:	4631      	mov	r1, r6
 80075e4:	4650      	mov	r0, sl
 80075e6:	f7ff fb61 	bl	8006cac <quorem>
 80075ea:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80075ee:	f804 7b01 	strb.w	r7, [r4], #1
 80075f2:	eba4 030b 	sub.w	r3, r4, fp
 80075f6:	4598      	cmp	r8, r3
 80075f8:	f04f 020a 	mov.w	r2, #10
 80075fc:	f04f 0300 	mov.w	r3, #0
 8007600:	4651      	mov	r1, sl
 8007602:	4648      	mov	r0, r9
 8007604:	dcea      	bgt.n	80075dc <_dtoa_r+0x80c>
 8007606:	2300      	movs	r3, #0
 8007608:	9700      	str	r7, [sp, #0]
 800760a:	9302      	str	r3, [sp, #8]
 800760c:	4651      	mov	r1, sl
 800760e:	2201      	movs	r2, #1
 8007610:	4648      	mov	r0, r9
 8007612:	f001 f9e3 	bl	80089dc <__lshift>
 8007616:	4631      	mov	r1, r6
 8007618:	4682      	mov	sl, r0
 800761a:	f001 fa35 	bl	8008a88 <__mcmp>
 800761e:	2800      	cmp	r0, #0
 8007620:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8007624:	dc14      	bgt.n	8007650 <_dtoa_r+0x880>
 8007626:	d108      	bne.n	800763a <_dtoa_r+0x86a>
 8007628:	9b00      	ldr	r3, [sp, #0]
 800762a:	07db      	lsls	r3, r3, #31
 800762c:	d410      	bmi.n	8007650 <_dtoa_r+0x880>
 800762e:	e004      	b.n	800763a <_dtoa_r+0x86a>
 8007630:	40240000 	.word	0x40240000
 8007634:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007638:	461c      	mov	r4, r3
 800763a:	2a30      	cmp	r2, #48	; 0x30
 800763c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007640:	d0f8      	beq.n	8007634 <_dtoa_r+0x864>
 8007642:	e00b      	b.n	800765c <_dtoa_r+0x88c>
 8007644:	459b      	cmp	fp, r3
 8007646:	f000 814e 	beq.w	80078e6 <_dtoa_r+0xb16>
 800764a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800764e:	461c      	mov	r4, r3
 8007650:	2a39      	cmp	r2, #57	; 0x39
 8007652:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007656:	d0f5      	beq.n	8007644 <_dtoa_r+0x874>
 8007658:	3201      	adds	r2, #1
 800765a:	701a      	strb	r2, [r3, #0]
 800765c:	4631      	mov	r1, r6
 800765e:	4648      	mov	r0, r9
 8007660:	f001 f822 	bl	80086a8 <_Bfree>
 8007664:	b155      	cbz	r5, 800767c <_dtoa_r+0x8ac>
 8007666:	9902      	ldr	r1, [sp, #8]
 8007668:	b121      	cbz	r1, 8007674 <_dtoa_r+0x8a4>
 800766a:	42a9      	cmp	r1, r5
 800766c:	d002      	beq.n	8007674 <_dtoa_r+0x8a4>
 800766e:	4648      	mov	r0, r9
 8007670:	f001 f81a 	bl	80086a8 <_Bfree>
 8007674:	4629      	mov	r1, r5
 8007676:	4648      	mov	r0, r9
 8007678:	f001 f816 	bl	80086a8 <_Bfree>
 800767c:	4651      	mov	r1, sl
 800767e:	4648      	mov	r0, r9
 8007680:	f001 f812 	bl	80086a8 <_Bfree>
 8007684:	2200      	movs	r2, #0
 8007686:	9b06      	ldr	r3, [sp, #24]
 8007688:	7022      	strb	r2, [r4, #0]
 800768a:	9a05      	ldr	r2, [sp, #20]
 800768c:	3301      	adds	r3, #1
 800768e:	6013      	str	r3, [r2, #0]
 8007690:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007692:	2b00      	cmp	r3, #0
 8007694:	f43f abdb 	beq.w	8006e4e <_dtoa_r+0x7e>
 8007698:	4658      	mov	r0, fp
 800769a:	601c      	str	r4, [r3, #0]
 800769c:	b01b      	add	sp, #108	; 0x6c
 800769e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80076a2:	201c      	movs	r0, #28
 80076a4:	e6eb      	b.n	800747e <_dtoa_r+0x6ae>
 80076a6:	4601      	mov	r1, r0
 80076a8:	4648      	mov	r0, r9
 80076aa:	f001 f947 	bl	800893c <__pow5mult>
 80076ae:	9b02      	ldr	r3, [sp, #8]
 80076b0:	2b01      	cmp	r3, #1
 80076b2:	4606      	mov	r6, r0
 80076b4:	f340 80d4 	ble.w	8007860 <_dtoa_r+0xa90>
 80076b8:	2300      	movs	r3, #0
 80076ba:	930c      	str	r3, [sp, #48]	; 0x30
 80076bc:	6933      	ldr	r3, [r6, #16]
 80076be:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80076c2:	6918      	ldr	r0, [r3, #16]
 80076c4:	f001 f83a 	bl	800873c <__hi0bits>
 80076c8:	f1c0 0020 	rsb	r0, r0, #32
 80076cc:	e6cb      	b.n	8007466 <_dtoa_r+0x696>
 80076ce:	900d      	str	r0, [sp, #52]	; 0x34
 80076d0:	e42a      	b.n	8006f28 <_dtoa_r+0x158>
 80076d2:	2501      	movs	r5, #1
 80076d4:	e440      	b.n	8006f58 <_dtoa_r+0x188>
 80076d6:	f1c3 0820 	rsb	r8, r3, #32
 80076da:	9b00      	ldr	r3, [sp, #0]
 80076dc:	fa03 f008 	lsl.w	r0, r3, r8
 80076e0:	f7ff bbd8 	b.w	8006e94 <_dtoa_r+0xc4>
 80076e4:	2300      	movs	r3, #0
 80076e6:	930a      	str	r3, [sp, #40]	; 0x28
 80076e8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80076ec:	4413      	add	r3, r2
 80076ee:	930e      	str	r3, [sp, #56]	; 0x38
 80076f0:	3301      	adds	r3, #1
 80076f2:	2b01      	cmp	r3, #1
 80076f4:	461e      	mov	r6, r3
 80076f6:	9309      	str	r3, [sp, #36]	; 0x24
 80076f8:	bfb8      	it	lt
 80076fa:	2601      	movlt	r6, #1
 80076fc:	2100      	movs	r1, #0
 80076fe:	2e17      	cmp	r6, #23
 8007700:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007704:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8007706:	f77f ac89 	ble.w	800701c <_dtoa_r+0x24c>
 800770a:	2201      	movs	r2, #1
 800770c:	2304      	movs	r3, #4
 800770e:	005b      	lsls	r3, r3, #1
 8007710:	f103 0014 	add.w	r0, r3, #20
 8007714:	42b0      	cmp	r0, r6
 8007716:	4611      	mov	r1, r2
 8007718:	f102 0201 	add.w	r2, r2, #1
 800771c:	d9f7      	bls.n	800770e <_dtoa_r+0x93e>
 800771e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007722:	e47b      	b.n	800701c <_dtoa_r+0x24c>
 8007724:	2300      	movs	r3, #0
 8007726:	930a      	str	r3, [sp, #40]	; 0x28
 8007728:	9e07      	ldr	r6, [sp, #28]
 800772a:	2e00      	cmp	r6, #0
 800772c:	f340 80e2 	ble.w	80078f4 <_dtoa_r+0xb24>
 8007730:	960e      	str	r6, [sp, #56]	; 0x38
 8007732:	9609      	str	r6, [sp, #36]	; 0x24
 8007734:	e7e2      	b.n	80076fc <_dtoa_r+0x92c>
 8007736:	2301      	movs	r3, #1
 8007738:	930a      	str	r3, [sp, #40]	; 0x28
 800773a:	e7f5      	b.n	8007728 <_dtoa_r+0x958>
 800773c:	9b00      	ldr	r3, [sp, #0]
 800773e:	2b00      	cmp	r3, #0
 8007740:	f47f ae90 	bne.w	8007464 <_dtoa_r+0x694>
 8007744:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007748:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800774c:	2b00      	cmp	r3, #0
 800774e:	f040 8192 	bne.w	8007a76 <_dtoa_r+0xca6>
 8007752:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8007756:	0d1b      	lsrs	r3, r3, #20
 8007758:	051b      	lsls	r3, r3, #20
 800775a:	b12b      	cbz	r3, 8007768 <_dtoa_r+0x998>
 800775c:	9b08      	ldr	r3, [sp, #32]
 800775e:	3301      	adds	r3, #1
 8007760:	9308      	str	r3, [sp, #32]
 8007762:	f108 0801 	add.w	r8, r8, #1
 8007766:	2301      	movs	r3, #1
 8007768:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800776a:	930c      	str	r3, [sp, #48]	; 0x30
 800776c:	2a00      	cmp	r2, #0
 800776e:	f43f ae79 	beq.w	8007464 <_dtoa_r+0x694>
 8007772:	e7a3      	b.n	80076bc <_dtoa_r+0x8ec>
 8007774:	463a      	mov	r2, r7
 8007776:	4629      	mov	r1, r5
 8007778:	4648      	mov	r0, r9
 800777a:	f001 f8df 	bl	800893c <__pow5mult>
 800777e:	4652      	mov	r2, sl
 8007780:	4601      	mov	r1, r0
 8007782:	4605      	mov	r5, r0
 8007784:	4648      	mov	r0, r9
 8007786:	f001 f833 	bl	80087f0 <__multiply>
 800778a:	4651      	mov	r1, sl
 800778c:	4607      	mov	r7, r0
 800778e:	4648      	mov	r0, r9
 8007790:	f000 ff8a 	bl	80086a8 <_Bfree>
 8007794:	46ba      	mov	sl, r7
 8007796:	2e00      	cmp	r6, #0
 8007798:	f43f ae57 	beq.w	800744a <_dtoa_r+0x67a>
 800779c:	e64f      	b.n	800743e <_dtoa_r+0x66e>
 800779e:	4629      	mov	r1, r5
 80077a0:	4622      	mov	r2, r4
 80077a2:	4648      	mov	r0, r9
 80077a4:	f001 f91a 	bl	80089dc <__lshift>
 80077a8:	4605      	mov	r5, r0
 80077aa:	e68d      	b.n	80074c8 <_dtoa_r+0x6f8>
 80077ac:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80077ae:	2a00      	cmp	r2, #0
 80077b0:	f000 815d 	beq.w	8007a6e <_dtoa_r+0xc9e>
 80077b4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80077b8:	9a08      	ldr	r2, [sp, #32]
 80077ba:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80077bc:	4614      	mov	r4, r2
 80077be:	441a      	add	r2, r3
 80077c0:	4498      	add	r8, r3
 80077c2:	9208      	str	r2, [sp, #32]
 80077c4:	e5f7      	b.n	80073b6 <_dtoa_r+0x5e6>
 80077c6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80077c8:	2b00      	cmp	r3, #0
 80077ca:	f73f ad3e 	bgt.w	800724a <_dtoa_r+0x47a>
 80077ce:	f040 80bc 	bne.w	800794a <_dtoa_r+0xb7a>
 80077d2:	ec51 0b17 	vmov	r0, r1, d7
 80077d6:	2200      	movs	r2, #0
 80077d8:	4bb2      	ldr	r3, [pc, #712]	; (8007aa4 <_dtoa_r+0xcd4>)
 80077da:	f7f8 fecd 	bl	8000578 <__aeabi_dmul>
 80077de:	e9dd 2300 	ldrd	r2, r3, [sp]
 80077e2:	f7f9 f94f 	bl	8000a84 <__aeabi_dcmpge>
 80077e6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80077e8:	4635      	mov	r5, r6
 80077ea:	2800      	cmp	r0, #0
 80077ec:	d176      	bne.n	80078dc <_dtoa_r+0xb0c>
 80077ee:	9a06      	ldr	r2, [sp, #24]
 80077f0:	2331      	movs	r3, #49	; 0x31
 80077f2:	3201      	adds	r2, #1
 80077f4:	9206      	str	r2, [sp, #24]
 80077f6:	f88b 3000 	strb.w	r3, [fp]
 80077fa:	f10b 0401 	add.w	r4, fp, #1
 80077fe:	4631      	mov	r1, r6
 8007800:	4648      	mov	r0, r9
 8007802:	f000 ff51 	bl	80086a8 <_Bfree>
 8007806:	2d00      	cmp	r5, #0
 8007808:	f47f af34 	bne.w	8007674 <_dtoa_r+0x8a4>
 800780c:	e736      	b.n	800767c <_dtoa_r+0x8ac>
 800780e:	f000 8142 	beq.w	8007a96 <_dtoa_r+0xcc6>
 8007812:	9b06      	ldr	r3, [sp, #24]
 8007814:	425c      	negs	r4, r3
 8007816:	4ba4      	ldr	r3, [pc, #656]	; (8007aa8 <_dtoa_r+0xcd8>)
 8007818:	f004 020f 	and.w	r2, r4, #15
 800781c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007820:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007824:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007828:	f7f8 fea6 	bl	8000578 <__aeabi_dmul>
 800782c:	1124      	asrs	r4, r4, #4
 800782e:	e9cd 0100 	strd	r0, r1, [sp]
 8007832:	f000 81c6 	beq.w	8007bc2 <_dtoa_r+0xdf2>
 8007836:	4d9d      	ldr	r5, [pc, #628]	; (8007aac <_dtoa_r+0xcdc>)
 8007838:	2300      	movs	r3, #0
 800783a:	2602      	movs	r6, #2
 800783c:	07e7      	lsls	r7, r4, #31
 800783e:	d505      	bpl.n	800784c <_dtoa_r+0xa7c>
 8007840:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007844:	f7f8 fe98 	bl	8000578 <__aeabi_dmul>
 8007848:	3601      	adds	r6, #1
 800784a:	2301      	movs	r3, #1
 800784c:	1064      	asrs	r4, r4, #1
 800784e:	f105 0508 	add.w	r5, r5, #8
 8007852:	d1f3      	bne.n	800783c <_dtoa_r+0xa6c>
 8007854:	2b00      	cmp	r3, #0
 8007856:	f43f ac27 	beq.w	80070a8 <_dtoa_r+0x2d8>
 800785a:	e9cd 0100 	strd	r0, r1, [sp]
 800785e:	e423      	b.n	80070a8 <_dtoa_r+0x2d8>
 8007860:	9b00      	ldr	r3, [sp, #0]
 8007862:	2b00      	cmp	r3, #0
 8007864:	f43f af6e 	beq.w	8007744 <_dtoa_r+0x974>
 8007868:	e726      	b.n	80076b8 <_dtoa_r+0x8e8>
 800786a:	6869      	ldr	r1, [r5, #4]
 800786c:	4648      	mov	r0, r9
 800786e:	f000 fef5 	bl	800865c <_Balloc>
 8007872:	692b      	ldr	r3, [r5, #16]
 8007874:	3302      	adds	r3, #2
 8007876:	009a      	lsls	r2, r3, #2
 8007878:	4604      	mov	r4, r0
 800787a:	f105 010c 	add.w	r1, r5, #12
 800787e:	300c      	adds	r0, #12
 8007880:	f7f9 fb0a 	bl	8000e98 <memcpy>
 8007884:	4621      	mov	r1, r4
 8007886:	2201      	movs	r2, #1
 8007888:	4648      	mov	r0, r9
 800788a:	f001 f8a7 	bl	80089dc <__lshift>
 800788e:	4680      	mov	r8, r0
 8007890:	e61f      	b.n	80074d2 <_dtoa_r+0x702>
 8007892:	2400      	movs	r4, #0
 8007894:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8007898:	4621      	mov	r1, r4
 800789a:	4648      	mov	r0, r9
 800789c:	f000 fede 	bl	800865c <_Balloc>
 80078a0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80078a4:	930e      	str	r3, [sp, #56]	; 0x38
 80078a6:	9309      	str	r3, [sp, #36]	; 0x24
 80078a8:	2301      	movs	r3, #1
 80078aa:	4683      	mov	fp, r0
 80078ac:	9407      	str	r4, [sp, #28]
 80078ae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80078b2:	930a      	str	r3, [sp, #40]	; 0x28
 80078b4:	e4b6      	b.n	8007224 <_dtoa_r+0x454>
 80078b6:	f000 ff01 	bl	80086bc <__multadd>
 80078ba:	4627      	mov	r7, r4
 80078bc:	4605      	mov	r5, r0
 80078be:	4680      	mov	r8, r0
 80078c0:	e614      	b.n	80074ec <_dtoa_r+0x71c>
 80078c2:	4648      	mov	r0, r9
 80078c4:	f000 fef0 	bl	80086a8 <_Bfree>
 80078c8:	2301      	movs	r3, #1
 80078ca:	e639      	b.n	8007540 <_dtoa_r+0x770>
 80078cc:	9b02      	ldr	r3, [sp, #8]
 80078ce:	2b02      	cmp	r3, #2
 80078d0:	f77f adf3 	ble.w	80074ba <_dtoa_r+0x6ea>
 80078d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80078d6:	2b00      	cmp	r3, #0
 80078d8:	f000 80cf 	beq.w	8007a7a <_dtoa_r+0xcaa>
 80078dc:	9b07      	ldr	r3, [sp, #28]
 80078de:	43db      	mvns	r3, r3
 80078e0:	9306      	str	r3, [sp, #24]
 80078e2:	465c      	mov	r4, fp
 80078e4:	e78b      	b.n	80077fe <_dtoa_r+0xa2e>
 80078e6:	9a06      	ldr	r2, [sp, #24]
 80078e8:	2331      	movs	r3, #49	; 0x31
 80078ea:	3201      	adds	r2, #1
 80078ec:	9206      	str	r2, [sp, #24]
 80078ee:	f88b 3000 	strb.w	r3, [fp]
 80078f2:	e6b3      	b.n	800765c <_dtoa_r+0x88c>
 80078f4:	2401      	movs	r4, #1
 80078f6:	9409      	str	r4, [sp, #36]	; 0x24
 80078f8:	9407      	str	r4, [sp, #28]
 80078fa:	f7ff bb8b 	b.w	8007014 <_dtoa_r+0x244>
 80078fe:	4630      	mov	r0, r6
 8007900:	f7f8 fdd0 	bl	80004a4 <__aeabi_i2d>
 8007904:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007908:	f7f8 fe36 	bl	8000578 <__aeabi_dmul>
 800790c:	2200      	movs	r2, #0
 800790e:	4b68      	ldr	r3, [pc, #416]	; (8007ab0 <_dtoa_r+0xce0>)
 8007910:	f7f8 fc7c 	bl	800020c <__adddf3>
 8007914:	4606      	mov	r6, r0
 8007916:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800791a:	2200      	movs	r2, #0
 800791c:	4b61      	ldr	r3, [pc, #388]	; (8007aa4 <_dtoa_r+0xcd4>)
 800791e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007922:	f7f8 fc71 	bl	8000208 <__aeabi_dsub>
 8007926:	4632      	mov	r2, r6
 8007928:	463b      	mov	r3, r7
 800792a:	4604      	mov	r4, r0
 800792c:	460d      	mov	r5, r1
 800792e:	f7f9 f8b3 	bl	8000a98 <__aeabi_dcmpgt>
 8007932:	2800      	cmp	r0, #0
 8007934:	d14f      	bne.n	80079d6 <_dtoa_r+0xc06>
 8007936:	4632      	mov	r2, r6
 8007938:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800793c:	4620      	mov	r0, r4
 800793e:	4629      	mov	r1, r5
 8007940:	f7f9 f88c 	bl	8000a5c <__aeabi_dcmplt>
 8007944:	2800      	cmp	r0, #0
 8007946:	f43f ac69 	beq.w	800721c <_dtoa_r+0x44c>
 800794a:	2600      	movs	r6, #0
 800794c:	4635      	mov	r5, r6
 800794e:	e7c5      	b.n	80078dc <_dtoa_r+0xb0c>
 8007950:	2301      	movs	r3, #1
 8007952:	930a      	str	r3, [sp, #40]	; 0x28
 8007954:	e6c8      	b.n	80076e8 <_dtoa_r+0x918>
 8007956:	4651      	mov	r1, sl
 8007958:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800795a:	4648      	mov	r0, r9
 800795c:	f000 ffee 	bl	800893c <__pow5mult>
 8007960:	4682      	mov	sl, r0
 8007962:	e572      	b.n	800744a <_dtoa_r+0x67a>
 8007964:	f8dd a000 	ldr.w	sl, [sp]
 8007968:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800796c:	e686      	b.n	800767c <_dtoa_r+0x8ac>
 800796e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007970:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007972:	1afb      	subs	r3, r7, r3
 8007974:	441a      	add	r2, r3
 8007976:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800797a:	2700      	movs	r7, #0
 800797c:	e512      	b.n	80073a4 <_dtoa_r+0x5d4>
 800797e:	2b00      	cmp	r3, #0
 8007980:	9402      	str	r4, [sp, #8]
 8007982:	465e      	mov	r6, fp
 8007984:	f107 0401 	add.w	r4, r7, #1
 8007988:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800798c:	f300 80ba 	bgt.w	8007b04 <_dtoa_r+0xd34>
 8007990:	9b00      	ldr	r3, [sp, #0]
 8007992:	9502      	str	r5, [sp, #8]
 8007994:	703b      	strb	r3, [r7, #0]
 8007996:	4645      	mov	r5, r8
 8007998:	e660      	b.n	800765c <_dtoa_r+0x88c>
 800799a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800799e:	2602      	movs	r6, #2
 80079a0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80079a4:	f7ff bb67 	b.w	8007076 <_dtoa_r+0x2a6>
 80079a8:	9b00      	ldr	r3, [sp, #0]
 80079aa:	2b39      	cmp	r3, #57	; 0x39
 80079ac:	465e      	mov	r6, fp
 80079ae:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80079b2:	f000 80b9 	beq.w	8007b28 <_dtoa_r+0xd58>
 80079b6:	9b00      	ldr	r3, [sp, #0]
 80079b8:	9502      	str	r5, [sp, #8]
 80079ba:	3301      	adds	r3, #1
 80079bc:	703b      	strb	r3, [r7, #0]
 80079be:	4645      	mov	r5, r8
 80079c0:	e64c      	b.n	800765c <_dtoa_r+0x88c>
 80079c2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80079c6:	1a9c      	subs	r4, r3, r2
 80079c8:	e4f5      	b.n	80073b6 <_dtoa_r+0x5e6>
 80079ca:	465e      	mov	r6, fp
 80079cc:	9502      	str	r5, [sp, #8]
 80079ce:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80079d2:	4645      	mov	r5, r8
 80079d4:	e61a      	b.n	800760c <_dtoa_r+0x83c>
 80079d6:	2600      	movs	r6, #0
 80079d8:	4635      	mov	r5, r6
 80079da:	e708      	b.n	80077ee <_dtoa_r+0xa1e>
 80079dc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80079e0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80079e4:	f7f8 fdc8 	bl	8000578 <__aeabi_dmul>
 80079e8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80079ea:	f88b 5000 	strb.w	r5, [fp]
 80079ee:	2b01      	cmp	r3, #1
 80079f0:	e9cd 0100 	strd	r0, r1, [sp]
 80079f4:	d020      	beq.n	8007a38 <_dtoa_r+0xc68>
 80079f6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80079f8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80079fc:	445b      	add	r3, fp
 80079fe:	4698      	mov	r8, r3
 8007a00:	2200      	movs	r2, #0
 8007a02:	4b2c      	ldr	r3, [pc, #176]	; (8007ab4 <_dtoa_r+0xce4>)
 8007a04:	4630      	mov	r0, r6
 8007a06:	4639      	mov	r1, r7
 8007a08:	f7f8 fdb6 	bl	8000578 <__aeabi_dmul>
 8007a0c:	460f      	mov	r7, r1
 8007a0e:	4606      	mov	r6, r0
 8007a10:	f7f9 f84c 	bl	8000aac <__aeabi_d2iz>
 8007a14:	4605      	mov	r5, r0
 8007a16:	f7f8 fd45 	bl	80004a4 <__aeabi_i2d>
 8007a1a:	3530      	adds	r5, #48	; 0x30
 8007a1c:	4602      	mov	r2, r0
 8007a1e:	460b      	mov	r3, r1
 8007a20:	4630      	mov	r0, r6
 8007a22:	4639      	mov	r1, r7
 8007a24:	f7f8 fbf0 	bl	8000208 <__aeabi_dsub>
 8007a28:	f804 5b01 	strb.w	r5, [r4], #1
 8007a2c:	4544      	cmp	r4, r8
 8007a2e:	4606      	mov	r6, r0
 8007a30:	460f      	mov	r7, r1
 8007a32:	d1e5      	bne.n	8007a00 <_dtoa_r+0xc30>
 8007a34:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8007a38:	4b1f      	ldr	r3, [pc, #124]	; (8007ab8 <_dtoa_r+0xce8>)
 8007a3a:	2200      	movs	r2, #0
 8007a3c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007a40:	f7f8 fbe4 	bl	800020c <__adddf3>
 8007a44:	4632      	mov	r2, r6
 8007a46:	463b      	mov	r3, r7
 8007a48:	f7f9 f808 	bl	8000a5c <__aeabi_dcmplt>
 8007a4c:	2800      	cmp	r0, #0
 8007a4e:	d070      	beq.n	8007b32 <_dtoa_r+0xd62>
 8007a50:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007a52:	9306      	str	r3, [sp, #24]
 8007a54:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007a58:	e48f      	b.n	800737a <_dtoa_r+0x5aa>
 8007a5a:	2330      	movs	r3, #48	; 0x30
 8007a5c:	f88b 3000 	strb.w	r3, [fp]
 8007a60:	9b06      	ldr	r3, [sp, #24]
 8007a62:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007a66:	3301      	adds	r3, #1
 8007a68:	9306      	str	r3, [sp, #24]
 8007a6a:	465b      	mov	r3, fp
 8007a6c:	e489      	b.n	8007382 <_dtoa_r+0x5b2>
 8007a6e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8007a70:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8007a74:	e6a0      	b.n	80077b8 <_dtoa_r+0x9e8>
 8007a76:	2300      	movs	r3, #0
 8007a78:	e676      	b.n	8007768 <_dtoa_r+0x998>
 8007a7a:	4631      	mov	r1, r6
 8007a7c:	2205      	movs	r2, #5
 8007a7e:	4648      	mov	r0, r9
 8007a80:	f000 fe1c 	bl	80086bc <__multadd>
 8007a84:	4601      	mov	r1, r0
 8007a86:	4606      	mov	r6, r0
 8007a88:	4650      	mov	r0, sl
 8007a8a:	f000 fffd 	bl	8008a88 <__mcmp>
 8007a8e:	2800      	cmp	r0, #0
 8007a90:	f73f aead 	bgt.w	80077ee <_dtoa_r+0xa1e>
 8007a94:	e722      	b.n	80078dc <_dtoa_r+0xb0c>
 8007a96:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8007a9a:	2602      	movs	r6, #2
 8007a9c:	ed8d 7b00 	vstr	d7, [sp]
 8007aa0:	f7ff bb02 	b.w	80070a8 <_dtoa_r+0x2d8>
 8007aa4:	40140000 	.word	0x40140000
 8007aa8:	08009b88 	.word	0x08009b88
 8007aac:	08009b60 	.word	0x08009b60
 8007ab0:	401c0000 	.word	0x401c0000
 8007ab4:	40240000 	.word	0x40240000
 8007ab8:	3fe00000 	.word	0x3fe00000
 8007abc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007abe:	2b00      	cmp	r3, #0
 8007ac0:	f43f af1d 	beq.w	80078fe <_dtoa_r+0xb2e>
 8007ac4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8007ac6:	2c00      	cmp	r4, #0
 8007ac8:	f77f aba8 	ble.w	800721c <_dtoa_r+0x44c>
 8007acc:	2200      	movs	r2, #0
 8007ace:	4b45      	ldr	r3, [pc, #276]	; (8007be4 <_dtoa_r+0xe14>)
 8007ad0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007ad4:	f7f8 fd50 	bl	8000578 <__aeabi_dmul>
 8007ad8:	e9cd 0100 	strd	r0, r1, [sp]
 8007adc:	1c70      	adds	r0, r6, #1
 8007ade:	f7f8 fce1 	bl	80004a4 <__aeabi_i2d>
 8007ae2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007ae6:	f7f8 fd47 	bl	8000578 <__aeabi_dmul>
 8007aea:	4b3f      	ldr	r3, [pc, #252]	; (8007be8 <_dtoa_r+0xe18>)
 8007aec:	2200      	movs	r2, #0
 8007aee:	f7f8 fb8d 	bl	800020c <__adddf3>
 8007af2:	9b06      	ldr	r3, [sp, #24]
 8007af4:	9412      	str	r4, [sp, #72]	; 0x48
 8007af6:	3b01      	subs	r3, #1
 8007af8:	4606      	mov	r6, r0
 8007afa:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007afe:	9316      	str	r3, [sp, #88]	; 0x58
 8007b00:	f7ff baf3 	b.w	80070ea <_dtoa_r+0x31a>
 8007b04:	4651      	mov	r1, sl
 8007b06:	2201      	movs	r2, #1
 8007b08:	4648      	mov	r0, r9
 8007b0a:	f000 ff67 	bl	80089dc <__lshift>
 8007b0e:	4631      	mov	r1, r6
 8007b10:	4682      	mov	sl, r0
 8007b12:	f000 ffb9 	bl	8008a88 <__mcmp>
 8007b16:	2800      	cmp	r0, #0
 8007b18:	dd3b      	ble.n	8007b92 <_dtoa_r+0xdc2>
 8007b1a:	9b00      	ldr	r3, [sp, #0]
 8007b1c:	2b39      	cmp	r3, #57	; 0x39
 8007b1e:	d003      	beq.n	8007b28 <_dtoa_r+0xd58>
 8007b20:	9b02      	ldr	r3, [sp, #8]
 8007b22:	3331      	adds	r3, #49	; 0x31
 8007b24:	9300      	str	r3, [sp, #0]
 8007b26:	e733      	b.n	8007990 <_dtoa_r+0xbc0>
 8007b28:	2239      	movs	r2, #57	; 0x39
 8007b2a:	9502      	str	r5, [sp, #8]
 8007b2c:	703a      	strb	r2, [r7, #0]
 8007b2e:	4645      	mov	r5, r8
 8007b30:	e58e      	b.n	8007650 <_dtoa_r+0x880>
 8007b32:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007b36:	2000      	movs	r0, #0
 8007b38:	492c      	ldr	r1, [pc, #176]	; (8007bec <_dtoa_r+0xe1c>)
 8007b3a:	f7f8 fb65 	bl	8000208 <__aeabi_dsub>
 8007b3e:	4632      	mov	r2, r6
 8007b40:	463b      	mov	r3, r7
 8007b42:	f7f8 ffa9 	bl	8000a98 <__aeabi_dcmpgt>
 8007b46:	b910      	cbnz	r0, 8007b4e <_dtoa_r+0xd7e>
 8007b48:	f7ff bb68 	b.w	800721c <_dtoa_r+0x44c>
 8007b4c:	4614      	mov	r4, r2
 8007b4e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8007b52:	2b30      	cmp	r3, #48	; 0x30
 8007b54:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007b58:	d0f8      	beq.n	8007b4c <_dtoa_r+0xd7c>
 8007b5a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007b5c:	9306      	str	r3, [sp, #24]
 8007b5e:	e58d      	b.n	800767c <_dtoa_r+0x8ac>
 8007b60:	46d9      	mov	r9, fp
 8007b62:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007b66:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007b6a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007b6c:	9306      	str	r3, [sp, #24]
 8007b6e:	e404      	b.n	800737a <_dtoa_r+0x5aa>
 8007b70:	9b00      	ldr	r3, [sp, #0]
 8007b72:	2b39      	cmp	r3, #57	; 0x39
 8007b74:	4621      	mov	r1, r4
 8007b76:	4632      	mov	r2, r6
 8007b78:	f107 0401 	add.w	r4, r7, #1
 8007b7c:	465e      	mov	r6, fp
 8007b7e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007b82:	d0d1      	beq.n	8007b28 <_dtoa_r+0xd58>
 8007b84:	2a00      	cmp	r2, #0
 8007b86:	f77f af03 	ble.w	8007990 <_dtoa_r+0xbc0>
 8007b8a:	460b      	mov	r3, r1
 8007b8c:	3331      	adds	r3, #49	; 0x31
 8007b8e:	9300      	str	r3, [sp, #0]
 8007b90:	e6fe      	b.n	8007990 <_dtoa_r+0xbc0>
 8007b92:	f47f aefd 	bne.w	8007990 <_dtoa_r+0xbc0>
 8007b96:	9b00      	ldr	r3, [sp, #0]
 8007b98:	07da      	lsls	r2, r3, #31
 8007b9a:	f57f aef9 	bpl.w	8007990 <_dtoa_r+0xbc0>
 8007b9e:	e7bc      	b.n	8007b1a <_dtoa_r+0xd4a>
 8007ba0:	4629      	mov	r1, r5
 8007ba2:	2300      	movs	r3, #0
 8007ba4:	220a      	movs	r2, #10
 8007ba6:	4648      	mov	r0, r9
 8007ba8:	f000 fd88 	bl	80086bc <__multadd>
 8007bac:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007bae:	2b00      	cmp	r3, #0
 8007bb0:	4605      	mov	r5, r0
 8007bb2:	dd09      	ble.n	8007bc8 <_dtoa_r+0xdf8>
 8007bb4:	9309      	str	r3, [sp, #36]	; 0x24
 8007bb6:	e484      	b.n	80074c2 <_dtoa_r+0x6f2>
 8007bb8:	9b02      	ldr	r3, [sp, #8]
 8007bba:	2b02      	cmp	r3, #2
 8007bbc:	dc0e      	bgt.n	8007bdc <_dtoa_r+0xe0c>
 8007bbe:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007bc0:	e507      	b.n	80075d2 <_dtoa_r+0x802>
 8007bc2:	2602      	movs	r6, #2
 8007bc4:	f7ff ba70 	b.w	80070a8 <_dtoa_r+0x2d8>
 8007bc8:	9b02      	ldr	r3, [sp, #8]
 8007bca:	2b02      	cmp	r3, #2
 8007bcc:	dc06      	bgt.n	8007bdc <_dtoa_r+0xe0c>
 8007bce:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007bd0:	e7f0      	b.n	8007bb4 <_dtoa_r+0xde4>
 8007bd2:	f43f ac59 	beq.w	8007488 <_dtoa_r+0x6b8>
 8007bd6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8007bda:	e450      	b.n	800747e <_dtoa_r+0x6ae>
 8007bdc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007bde:	9309      	str	r3, [sp, #36]	; 0x24
 8007be0:	e678      	b.n	80078d4 <_dtoa_r+0xb04>
 8007be2:	bf00      	nop
 8007be4:	40240000 	.word	0x40240000
 8007be8:	401c0000 	.word	0x401c0000
 8007bec:	3fe00000 	.word	0x3fe00000

08007bf0 <__sflush_r>:
 8007bf0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007bf4:	b29a      	uxth	r2, r3
 8007bf6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007bfa:	460c      	mov	r4, r1
 8007bfc:	0711      	lsls	r1, r2, #28
 8007bfe:	4680      	mov	r8, r0
 8007c00:	d444      	bmi.n	8007c8c <__sflush_r+0x9c>
 8007c02:	6862      	ldr	r2, [r4, #4]
 8007c04:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007c08:	2a00      	cmp	r2, #0
 8007c0a:	81a3      	strh	r3, [r4, #12]
 8007c0c:	dd59      	ble.n	8007cc2 <__sflush_r+0xd2>
 8007c0e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007c10:	2d00      	cmp	r5, #0
 8007c12:	d053      	beq.n	8007cbc <__sflush_r+0xcc>
 8007c14:	2200      	movs	r2, #0
 8007c16:	b29b      	uxth	r3, r3
 8007c18:	f8d8 6000 	ldr.w	r6, [r8]
 8007c1c:	69e1      	ldr	r1, [r4, #28]
 8007c1e:	f8c8 2000 	str.w	r2, [r8]
 8007c22:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8007c26:	f040 8083 	bne.w	8007d30 <__sflush_r+0x140>
 8007c2a:	2301      	movs	r3, #1
 8007c2c:	4640      	mov	r0, r8
 8007c2e:	47a8      	blx	r5
 8007c30:	1c42      	adds	r2, r0, #1
 8007c32:	d04a      	beq.n	8007cca <__sflush_r+0xda>
 8007c34:	89a3      	ldrh	r3, [r4, #12]
 8007c36:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007c38:	69e1      	ldr	r1, [r4, #28]
 8007c3a:	075b      	lsls	r3, r3, #29
 8007c3c:	d505      	bpl.n	8007c4a <__sflush_r+0x5a>
 8007c3e:	6862      	ldr	r2, [r4, #4]
 8007c40:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8007c42:	1a80      	subs	r0, r0, r2
 8007c44:	b10b      	cbz	r3, 8007c4a <__sflush_r+0x5a>
 8007c46:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007c48:	1ac0      	subs	r0, r0, r3
 8007c4a:	4602      	mov	r2, r0
 8007c4c:	2300      	movs	r3, #0
 8007c4e:	4640      	mov	r0, r8
 8007c50:	47a8      	blx	r5
 8007c52:	1c47      	adds	r7, r0, #1
 8007c54:	d045      	beq.n	8007ce2 <__sflush_r+0xf2>
 8007c56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c5a:	6922      	ldr	r2, [r4, #16]
 8007c5c:	6022      	str	r2, [r4, #0]
 8007c5e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007c62:	2200      	movs	r2, #0
 8007c64:	81a3      	strh	r3, [r4, #12]
 8007c66:	04db      	lsls	r3, r3, #19
 8007c68:	6062      	str	r2, [r4, #4]
 8007c6a:	d500      	bpl.n	8007c6e <__sflush_r+0x7e>
 8007c6c:	6520      	str	r0, [r4, #80]	; 0x50
 8007c6e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007c70:	f8c8 6000 	str.w	r6, [r8]
 8007c74:	b311      	cbz	r1, 8007cbc <__sflush_r+0xcc>
 8007c76:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007c7a:	4299      	cmp	r1, r3
 8007c7c:	d002      	beq.n	8007c84 <__sflush_r+0x94>
 8007c7e:	4640      	mov	r0, r8
 8007c80:	f000 f95e 	bl	8007f40 <_free_r>
 8007c84:	2000      	movs	r0, #0
 8007c86:	6320      	str	r0, [r4, #48]	; 0x30
 8007c88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007c8c:	6926      	ldr	r6, [r4, #16]
 8007c8e:	b1ae      	cbz	r6, 8007cbc <__sflush_r+0xcc>
 8007c90:	6825      	ldr	r5, [r4, #0]
 8007c92:	6026      	str	r6, [r4, #0]
 8007c94:	0792      	lsls	r2, r2, #30
 8007c96:	bf0c      	ite	eq
 8007c98:	6963      	ldreq	r3, [r4, #20]
 8007c9a:	2300      	movne	r3, #0
 8007c9c:	1bad      	subs	r5, r5, r6
 8007c9e:	60a3      	str	r3, [r4, #8]
 8007ca0:	e00a      	b.n	8007cb8 <__sflush_r+0xc8>
 8007ca2:	462b      	mov	r3, r5
 8007ca4:	4632      	mov	r2, r6
 8007ca6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007ca8:	69e1      	ldr	r1, [r4, #28]
 8007caa:	4640      	mov	r0, r8
 8007cac:	47b8      	blx	r7
 8007cae:	2800      	cmp	r0, #0
 8007cb0:	eba5 0500 	sub.w	r5, r5, r0
 8007cb4:	4406      	add	r6, r0
 8007cb6:	dd2b      	ble.n	8007d10 <__sflush_r+0x120>
 8007cb8:	2d00      	cmp	r5, #0
 8007cba:	dcf2      	bgt.n	8007ca2 <__sflush_r+0xb2>
 8007cbc:	2000      	movs	r0, #0
 8007cbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007cc2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8007cc4:	2a00      	cmp	r2, #0
 8007cc6:	dca2      	bgt.n	8007c0e <__sflush_r+0x1e>
 8007cc8:	e7f8      	b.n	8007cbc <__sflush_r+0xcc>
 8007cca:	f8d8 3000 	ldr.w	r3, [r8]
 8007cce:	2b00      	cmp	r3, #0
 8007cd0:	d0b0      	beq.n	8007c34 <__sflush_r+0x44>
 8007cd2:	2b1d      	cmp	r3, #29
 8007cd4:	d001      	beq.n	8007cda <__sflush_r+0xea>
 8007cd6:	2b16      	cmp	r3, #22
 8007cd8:	d12c      	bne.n	8007d34 <__sflush_r+0x144>
 8007cda:	f8c8 6000 	str.w	r6, [r8]
 8007cde:	2000      	movs	r0, #0
 8007ce0:	e7ed      	b.n	8007cbe <__sflush_r+0xce>
 8007ce2:	f8d8 1000 	ldr.w	r1, [r8]
 8007ce6:	291d      	cmp	r1, #29
 8007ce8:	d81a      	bhi.n	8007d20 <__sflush_r+0x130>
 8007cea:	4b15      	ldr	r3, [pc, #84]	; (8007d40 <__sflush_r+0x150>)
 8007cec:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007cf0:	40cb      	lsrs	r3, r1
 8007cf2:	43db      	mvns	r3, r3
 8007cf4:	f013 0301 	ands.w	r3, r3, #1
 8007cf8:	d114      	bne.n	8007d24 <__sflush_r+0x134>
 8007cfa:	6925      	ldr	r5, [r4, #16]
 8007cfc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8007d00:	e9c4 5300 	strd	r5, r3, [r4]
 8007d04:	04d5      	lsls	r5, r2, #19
 8007d06:	81a2      	strh	r2, [r4, #12]
 8007d08:	d5b1      	bpl.n	8007c6e <__sflush_r+0x7e>
 8007d0a:	2900      	cmp	r1, #0
 8007d0c:	d1af      	bne.n	8007c6e <__sflush_r+0x7e>
 8007d0e:	e7ad      	b.n	8007c6c <__sflush_r+0x7c>
 8007d10:	89a3      	ldrh	r3, [r4, #12]
 8007d12:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007d16:	81a3      	strh	r3, [r4, #12]
 8007d18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007d1c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007d20:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007d24:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007d28:	81a2      	strh	r2, [r4, #12]
 8007d2a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007d2e:	e7c6      	b.n	8007cbe <__sflush_r+0xce>
 8007d30:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8007d32:	e782      	b.n	8007c3a <__sflush_r+0x4a>
 8007d34:	89a3      	ldrh	r3, [r4, #12]
 8007d36:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007d3a:	81a3      	strh	r3, [r4, #12]
 8007d3c:	e7bf      	b.n	8007cbe <__sflush_r+0xce>
 8007d3e:	bf00      	nop
 8007d40:	20400001 	.word	0x20400001

08007d44 <_fflush_r>:
 8007d44:	b538      	push	{r3, r4, r5, lr}
 8007d46:	460d      	mov	r5, r1
 8007d48:	4604      	mov	r4, r0
 8007d4a:	b108      	cbz	r0, 8007d50 <_fflush_r+0xc>
 8007d4c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007d4e:	b1a3      	cbz	r3, 8007d7a <_fflush_r+0x36>
 8007d50:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007d54:	b1b8      	cbz	r0, 8007d86 <_fflush_r+0x42>
 8007d56:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007d58:	07db      	lsls	r3, r3, #31
 8007d5a:	d401      	bmi.n	8007d60 <_fflush_r+0x1c>
 8007d5c:	0581      	lsls	r1, r0, #22
 8007d5e:	d51a      	bpl.n	8007d96 <_fflush_r+0x52>
 8007d60:	4620      	mov	r0, r4
 8007d62:	4629      	mov	r1, r5
 8007d64:	f7ff ff44 	bl	8007bf0 <__sflush_r>
 8007d68:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007d6a:	07da      	lsls	r2, r3, #31
 8007d6c:	4604      	mov	r4, r0
 8007d6e:	d402      	bmi.n	8007d76 <_fflush_r+0x32>
 8007d70:	89ab      	ldrh	r3, [r5, #12]
 8007d72:	059b      	lsls	r3, r3, #22
 8007d74:	d50a      	bpl.n	8007d8c <_fflush_r+0x48>
 8007d76:	4620      	mov	r0, r4
 8007d78:	bd38      	pop	{r3, r4, r5, pc}
 8007d7a:	f000 f83f 	bl	8007dfc <__sinit>
 8007d7e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007d82:	2800      	cmp	r0, #0
 8007d84:	d1e7      	bne.n	8007d56 <_fflush_r+0x12>
 8007d86:	4604      	mov	r4, r0
 8007d88:	4620      	mov	r0, r4
 8007d8a:	bd38      	pop	{r3, r4, r5, pc}
 8007d8c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007d8e:	f000 fb87 	bl	80084a0 <__retarget_lock_release_recursive>
 8007d92:	4620      	mov	r0, r4
 8007d94:	bd38      	pop	{r3, r4, r5, pc}
 8007d96:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007d98:	f000 fb80 	bl	800849c <__retarget_lock_acquire_recursive>
 8007d9c:	e7e0      	b.n	8007d60 <_fflush_r+0x1c>
 8007d9e:	bf00      	nop

08007da0 <std>:
 8007da0:	b510      	push	{r4, lr}
 8007da2:	2300      	movs	r3, #0
 8007da4:	4604      	mov	r4, r0
 8007da6:	8181      	strh	r1, [r0, #12]
 8007da8:	81c2      	strh	r2, [r0, #14]
 8007daa:	e9c0 3300 	strd	r3, r3, [r0]
 8007dae:	6083      	str	r3, [r0, #8]
 8007db0:	6643      	str	r3, [r0, #100]	; 0x64
 8007db2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8007db6:	6183      	str	r3, [r0, #24]
 8007db8:	4619      	mov	r1, r3
 8007dba:	2208      	movs	r2, #8
 8007dbc:	305c      	adds	r0, #92	; 0x5c
 8007dbe:	f7fd f839 	bl	8004e34 <memset>
 8007dc2:	4807      	ldr	r0, [pc, #28]	; (8007de0 <std+0x40>)
 8007dc4:	4907      	ldr	r1, [pc, #28]	; (8007de4 <std+0x44>)
 8007dc6:	4a08      	ldr	r2, [pc, #32]	; (8007de8 <std+0x48>)
 8007dc8:	4b08      	ldr	r3, [pc, #32]	; (8007dec <std+0x4c>)
 8007dca:	62e3      	str	r3, [r4, #44]	; 0x2c
 8007dcc:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8007dd0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8007dd4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8007dd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007ddc:	f000 bb5a 	b.w	8008494 <__retarget_lock_init_recursive>
 8007de0:	08009035 	.word	0x08009035
 8007de4:	08009059 	.word	0x08009059
 8007de8:	08009095 	.word	0x08009095
 8007dec:	080090b5 	.word	0x080090b5

08007df0 <_cleanup_r>:
 8007df0:	4901      	ldr	r1, [pc, #4]	; (8007df8 <_cleanup_r+0x8>)
 8007df2:	f000 bb17 	b.w	8008424 <_fwalk_reent>
 8007df6:	bf00      	nop
 8007df8:	08009325 	.word	0x08009325

08007dfc <__sinit>:
 8007dfc:	b510      	push	{r4, lr}
 8007dfe:	4604      	mov	r4, r0
 8007e00:	4812      	ldr	r0, [pc, #72]	; (8007e4c <__sinit+0x50>)
 8007e02:	f000 fb4b 	bl	800849c <__retarget_lock_acquire_recursive>
 8007e06:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8007e08:	b9d2      	cbnz	r2, 8007e40 <__sinit+0x44>
 8007e0a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8007e0e:	4810      	ldr	r0, [pc, #64]	; (8007e50 <__sinit+0x54>)
 8007e10:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8007e14:	2103      	movs	r1, #3
 8007e16:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8007e1a:	63e0      	str	r0, [r4, #60]	; 0x3c
 8007e1c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8007e20:	6860      	ldr	r0, [r4, #4]
 8007e22:	2104      	movs	r1, #4
 8007e24:	f7ff ffbc 	bl	8007da0 <std>
 8007e28:	2201      	movs	r2, #1
 8007e2a:	2109      	movs	r1, #9
 8007e2c:	68a0      	ldr	r0, [r4, #8]
 8007e2e:	f7ff ffb7 	bl	8007da0 <std>
 8007e32:	2202      	movs	r2, #2
 8007e34:	2112      	movs	r1, #18
 8007e36:	68e0      	ldr	r0, [r4, #12]
 8007e38:	f7ff ffb2 	bl	8007da0 <std>
 8007e3c:	2301      	movs	r3, #1
 8007e3e:	63a3      	str	r3, [r4, #56]	; 0x38
 8007e40:	4802      	ldr	r0, [pc, #8]	; (8007e4c <__sinit+0x50>)
 8007e42:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007e46:	f000 bb2b 	b.w	80084a0 <__retarget_lock_release_recursive>
 8007e4a:	bf00      	nop
 8007e4c:	2000143c 	.word	0x2000143c
 8007e50:	08007df1 	.word	0x08007df1

08007e54 <__sfp_lock_acquire>:
 8007e54:	4801      	ldr	r0, [pc, #4]	; (8007e5c <__sfp_lock_acquire+0x8>)
 8007e56:	f000 bb21 	b.w	800849c <__retarget_lock_acquire_recursive>
 8007e5a:	bf00      	nop
 8007e5c:	20001450 	.word	0x20001450

08007e60 <__sfp_lock_release>:
 8007e60:	4801      	ldr	r0, [pc, #4]	; (8007e68 <__sfp_lock_release+0x8>)
 8007e62:	f000 bb1d 	b.w	80084a0 <__retarget_lock_release_recursive>
 8007e66:	bf00      	nop
 8007e68:	20001450 	.word	0x20001450

08007e6c <__libc_fini_array>:
 8007e6c:	b538      	push	{r3, r4, r5, lr}
 8007e6e:	4c0a      	ldr	r4, [pc, #40]	; (8007e98 <__libc_fini_array+0x2c>)
 8007e70:	4d0a      	ldr	r5, [pc, #40]	; (8007e9c <__libc_fini_array+0x30>)
 8007e72:	1b64      	subs	r4, r4, r5
 8007e74:	10a4      	asrs	r4, r4, #2
 8007e76:	d00a      	beq.n	8007e8e <__libc_fini_array+0x22>
 8007e78:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8007e7c:	3b01      	subs	r3, #1
 8007e7e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8007e82:	3c01      	subs	r4, #1
 8007e84:	f855 3904 	ldr.w	r3, [r5], #-4
 8007e88:	4798      	blx	r3
 8007e8a:	2c00      	cmp	r4, #0
 8007e8c:	d1f9      	bne.n	8007e82 <__libc_fini_array+0x16>
 8007e8e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8007e92:	f001 bc3b 	b.w	800970c <_fini>
 8007e96:	bf00      	nop
 8007e98:	08009d84 	.word	0x08009d84
 8007e9c:	08009d80 	.word	0x08009d80

08007ea0 <_malloc_trim_r>:
 8007ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007ea2:	4f24      	ldr	r7, [pc, #144]	; (8007f34 <_malloc_trim_r+0x94>)
 8007ea4:	460c      	mov	r4, r1
 8007ea6:	4606      	mov	r6, r0
 8007ea8:	f7fd f80e 	bl	8004ec8 <__malloc_lock>
 8007eac:	68bb      	ldr	r3, [r7, #8]
 8007eae:	685d      	ldr	r5, [r3, #4]
 8007eb0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8007eb4:	310f      	adds	r1, #15
 8007eb6:	f025 0503 	bic.w	r5, r5, #3
 8007eba:	4429      	add	r1, r5
 8007ebc:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8007ec0:	f021 010f 	bic.w	r1, r1, #15
 8007ec4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8007ec8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8007ecc:	db07      	blt.n	8007ede <_malloc_trim_r+0x3e>
 8007ece:	2100      	movs	r1, #0
 8007ed0:	4630      	mov	r0, r6
 8007ed2:	f7fd f86f 	bl	8004fb4 <_sbrk_r>
 8007ed6:	68bb      	ldr	r3, [r7, #8]
 8007ed8:	442b      	add	r3, r5
 8007eda:	4298      	cmp	r0, r3
 8007edc:	d004      	beq.n	8007ee8 <_malloc_trim_r+0x48>
 8007ede:	4630      	mov	r0, r6
 8007ee0:	f7fc fff8 	bl	8004ed4 <__malloc_unlock>
 8007ee4:	2000      	movs	r0, #0
 8007ee6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007ee8:	4261      	negs	r1, r4
 8007eea:	4630      	mov	r0, r6
 8007eec:	f7fd f862 	bl	8004fb4 <_sbrk_r>
 8007ef0:	3001      	adds	r0, #1
 8007ef2:	d00d      	beq.n	8007f10 <_malloc_trim_r+0x70>
 8007ef4:	4b10      	ldr	r3, [pc, #64]	; (8007f38 <_malloc_trim_r+0x98>)
 8007ef6:	68ba      	ldr	r2, [r7, #8]
 8007ef8:	6819      	ldr	r1, [r3, #0]
 8007efa:	1b2d      	subs	r5, r5, r4
 8007efc:	f045 0501 	orr.w	r5, r5, #1
 8007f00:	4630      	mov	r0, r6
 8007f02:	1b09      	subs	r1, r1, r4
 8007f04:	6055      	str	r5, [r2, #4]
 8007f06:	6019      	str	r1, [r3, #0]
 8007f08:	f7fc ffe4 	bl	8004ed4 <__malloc_unlock>
 8007f0c:	2001      	movs	r0, #1
 8007f0e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007f10:	2100      	movs	r1, #0
 8007f12:	4630      	mov	r0, r6
 8007f14:	f7fd f84e 	bl	8004fb4 <_sbrk_r>
 8007f18:	68ba      	ldr	r2, [r7, #8]
 8007f1a:	1a83      	subs	r3, r0, r2
 8007f1c:	2b0f      	cmp	r3, #15
 8007f1e:	ddde      	ble.n	8007ede <_malloc_trim_r+0x3e>
 8007f20:	4c06      	ldr	r4, [pc, #24]	; (8007f3c <_malloc_trim_r+0x9c>)
 8007f22:	4905      	ldr	r1, [pc, #20]	; (8007f38 <_malloc_trim_r+0x98>)
 8007f24:	6824      	ldr	r4, [r4, #0]
 8007f26:	f043 0301 	orr.w	r3, r3, #1
 8007f2a:	1b00      	subs	r0, r0, r4
 8007f2c:	6053      	str	r3, [r2, #4]
 8007f2e:	6008      	str	r0, [r1, #0]
 8007f30:	e7d5      	b.n	8007ede <_malloc_trim_r+0x3e>
 8007f32:	bf00      	nop
 8007f34:	20000460 	.word	0x20000460
 8007f38:	200013b4 	.word	0x200013b4
 8007f3c:	20000868 	.word	0x20000868

08007f40 <_free_r>:
 8007f40:	2900      	cmp	r1, #0
 8007f42:	d053      	beq.n	8007fec <_free_r+0xac>
 8007f44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007f46:	460c      	mov	r4, r1
 8007f48:	4606      	mov	r6, r0
 8007f4a:	f7fc ffbd 	bl	8004ec8 <__malloc_lock>
 8007f4e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8007f52:	4f71      	ldr	r7, [pc, #452]	; (8008118 <_free_r+0x1d8>)
 8007f54:	f02c 0101 	bic.w	r1, ip, #1
 8007f58:	f1a4 0508 	sub.w	r5, r4, #8
 8007f5c:	186b      	adds	r3, r5, r1
 8007f5e:	68b8      	ldr	r0, [r7, #8]
 8007f60:	685a      	ldr	r2, [r3, #4]
 8007f62:	4298      	cmp	r0, r3
 8007f64:	f022 0203 	bic.w	r2, r2, #3
 8007f68:	d053      	beq.n	8008012 <_free_r+0xd2>
 8007f6a:	f01c 0f01 	tst.w	ip, #1
 8007f6e:	605a      	str	r2, [r3, #4]
 8007f70:	eb03 0002 	add.w	r0, r3, r2
 8007f74:	d13b      	bne.n	8007fee <_free_r+0xae>
 8007f76:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8007f7a:	6840      	ldr	r0, [r0, #4]
 8007f7c:	eba5 050c 	sub.w	r5, r5, ip
 8007f80:	f107 0e08 	add.w	lr, r7, #8
 8007f84:	68ac      	ldr	r4, [r5, #8]
 8007f86:	4574      	cmp	r4, lr
 8007f88:	4461      	add	r1, ip
 8007f8a:	f000 0001 	and.w	r0, r0, #1
 8007f8e:	d075      	beq.n	800807c <_free_r+0x13c>
 8007f90:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8007f94:	f8c4 c00c 	str.w	ip, [r4, #12]
 8007f98:	f8cc 4008 	str.w	r4, [ip, #8]
 8007f9c:	b360      	cbz	r0, 8007ff8 <_free_r+0xb8>
 8007f9e:	f041 0301 	orr.w	r3, r1, #1
 8007fa2:	606b      	str	r3, [r5, #4]
 8007fa4:	5069      	str	r1, [r5, r1]
 8007fa6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8007faa:	d350      	bcc.n	800804e <_free_r+0x10e>
 8007fac:	0a4b      	lsrs	r3, r1, #9
 8007fae:	2b04      	cmp	r3, #4
 8007fb0:	d870      	bhi.n	8008094 <_free_r+0x154>
 8007fb2:	098b      	lsrs	r3, r1, #6
 8007fb4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007fb8:	00e4      	lsls	r4, r4, #3
 8007fba:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8007fbe:	1938      	adds	r0, r7, r4
 8007fc0:	593b      	ldr	r3, [r7, r4]
 8007fc2:	3808      	subs	r0, #8
 8007fc4:	4298      	cmp	r0, r3
 8007fc6:	d078      	beq.n	80080ba <_free_r+0x17a>
 8007fc8:	685a      	ldr	r2, [r3, #4]
 8007fca:	f022 0203 	bic.w	r2, r2, #3
 8007fce:	428a      	cmp	r2, r1
 8007fd0:	d971      	bls.n	80080b6 <_free_r+0x176>
 8007fd2:	689b      	ldr	r3, [r3, #8]
 8007fd4:	4298      	cmp	r0, r3
 8007fd6:	d1f7      	bne.n	8007fc8 <_free_r+0x88>
 8007fd8:	68c3      	ldr	r3, [r0, #12]
 8007fda:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8007fde:	609d      	str	r5, [r3, #8]
 8007fe0:	60c5      	str	r5, [r0, #12]
 8007fe2:	4630      	mov	r0, r6
 8007fe4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007fe8:	f7fc bf74 	b.w	8004ed4 <__malloc_unlock>
 8007fec:	4770      	bx	lr
 8007fee:	6840      	ldr	r0, [r0, #4]
 8007ff0:	f000 0001 	and.w	r0, r0, #1
 8007ff4:	2800      	cmp	r0, #0
 8007ff6:	d1d2      	bne.n	8007f9e <_free_r+0x5e>
 8007ff8:	6898      	ldr	r0, [r3, #8]
 8007ffa:	4c48      	ldr	r4, [pc, #288]	; (800811c <_free_r+0x1dc>)
 8007ffc:	4411      	add	r1, r2
 8007ffe:	42a0      	cmp	r0, r4
 8008000:	f041 0201 	orr.w	r2, r1, #1
 8008004:	d062      	beq.n	80080cc <_free_r+0x18c>
 8008006:	68db      	ldr	r3, [r3, #12]
 8008008:	60c3      	str	r3, [r0, #12]
 800800a:	6098      	str	r0, [r3, #8]
 800800c:	606a      	str	r2, [r5, #4]
 800800e:	5069      	str	r1, [r5, r1]
 8008010:	e7c9      	b.n	8007fa6 <_free_r+0x66>
 8008012:	f01c 0f01 	tst.w	ip, #1
 8008016:	440a      	add	r2, r1
 8008018:	d107      	bne.n	800802a <_free_r+0xea>
 800801a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800801e:	1aed      	subs	r5, r5, r3
 8008020:	441a      	add	r2, r3
 8008022:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8008026:	60cb      	str	r3, [r1, #12]
 8008028:	6099      	str	r1, [r3, #8]
 800802a:	4b3d      	ldr	r3, [pc, #244]	; (8008120 <_free_r+0x1e0>)
 800802c:	681b      	ldr	r3, [r3, #0]
 800802e:	f042 0101 	orr.w	r1, r2, #1
 8008032:	4293      	cmp	r3, r2
 8008034:	6069      	str	r1, [r5, #4]
 8008036:	60bd      	str	r5, [r7, #8]
 8008038:	d804      	bhi.n	8008044 <_free_r+0x104>
 800803a:	4b3a      	ldr	r3, [pc, #232]	; (8008124 <_free_r+0x1e4>)
 800803c:	4630      	mov	r0, r6
 800803e:	6819      	ldr	r1, [r3, #0]
 8008040:	f7ff ff2e 	bl	8007ea0 <_malloc_trim_r>
 8008044:	4630      	mov	r0, r6
 8008046:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800804a:	f7fc bf43 	b.w	8004ed4 <__malloc_unlock>
 800804e:	08c9      	lsrs	r1, r1, #3
 8008050:	6878      	ldr	r0, [r7, #4]
 8008052:	1c4a      	adds	r2, r1, #1
 8008054:	2301      	movs	r3, #1
 8008056:	1089      	asrs	r1, r1, #2
 8008058:	408b      	lsls	r3, r1
 800805a:	4303      	orrs	r3, r0
 800805c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8008060:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8008064:	607b      	str	r3, [r7, #4]
 8008066:	3908      	subs	r1, #8
 8008068:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800806c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8008070:	60c5      	str	r5, [r0, #12]
 8008072:	4630      	mov	r0, r6
 8008074:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008078:	f7fc bf2c 	b.w	8004ed4 <__malloc_unlock>
 800807c:	2800      	cmp	r0, #0
 800807e:	d145      	bne.n	800810c <_free_r+0x1cc>
 8008080:	440a      	add	r2, r1
 8008082:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8008086:	f042 0001 	orr.w	r0, r2, #1
 800808a:	60cb      	str	r3, [r1, #12]
 800808c:	6099      	str	r1, [r3, #8]
 800808e:	6068      	str	r0, [r5, #4]
 8008090:	50aa      	str	r2, [r5, r2]
 8008092:	e7d7      	b.n	8008044 <_free_r+0x104>
 8008094:	2b14      	cmp	r3, #20
 8008096:	d908      	bls.n	80080aa <_free_r+0x16a>
 8008098:	2b54      	cmp	r3, #84	; 0x54
 800809a:	d81e      	bhi.n	80080da <_free_r+0x19a>
 800809c:	0b0b      	lsrs	r3, r1, #12
 800809e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80080a2:	00e4      	lsls	r4, r4, #3
 80080a4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80080a8:	e789      	b.n	8007fbe <_free_r+0x7e>
 80080aa:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80080ae:	00e4      	lsls	r4, r4, #3
 80080b0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80080b4:	e783      	b.n	8007fbe <_free_r+0x7e>
 80080b6:	4618      	mov	r0, r3
 80080b8:	e78e      	b.n	8007fd8 <_free_r+0x98>
 80080ba:	1093      	asrs	r3, r2, #2
 80080bc:	6879      	ldr	r1, [r7, #4]
 80080be:	2201      	movs	r2, #1
 80080c0:	fa02 f303 	lsl.w	r3, r2, r3
 80080c4:	430b      	orrs	r3, r1
 80080c6:	607b      	str	r3, [r7, #4]
 80080c8:	4603      	mov	r3, r0
 80080ca:	e786      	b.n	8007fda <_free_r+0x9a>
 80080cc:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80080d0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80080d4:	606a      	str	r2, [r5, #4]
 80080d6:	5069      	str	r1, [r5, r1]
 80080d8:	e7b4      	b.n	8008044 <_free_r+0x104>
 80080da:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80080de:	d806      	bhi.n	80080ee <_free_r+0x1ae>
 80080e0:	0bcb      	lsrs	r3, r1, #15
 80080e2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80080e6:	00e4      	lsls	r4, r4, #3
 80080e8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80080ec:	e767      	b.n	8007fbe <_free_r+0x7e>
 80080ee:	f240 5254 	movw	r2, #1364	; 0x554
 80080f2:	4293      	cmp	r3, r2
 80080f4:	d806      	bhi.n	8008104 <_free_r+0x1c4>
 80080f6:	0c8b      	lsrs	r3, r1, #18
 80080f8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80080fc:	00e4      	lsls	r4, r4, #3
 80080fe:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8008102:	e75c      	b.n	8007fbe <_free_r+0x7e>
 8008104:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008108:	227e      	movs	r2, #126	; 0x7e
 800810a:	e758      	b.n	8007fbe <_free_r+0x7e>
 800810c:	f041 0201 	orr.w	r2, r1, #1
 8008110:	606a      	str	r2, [r5, #4]
 8008112:	6019      	str	r1, [r3, #0]
 8008114:	e796      	b.n	8008044 <_free_r+0x104>
 8008116:	bf00      	nop
 8008118:	20000460 	.word	0x20000460
 800811c:	20000468 	.word	0x20000468
 8008120:	2000086c 	.word	0x2000086c
 8008124:	200013e4 	.word	0x200013e4

08008128 <__sfvwrite_r>:
 8008128:	6893      	ldr	r3, [r2, #8]
 800812a:	2b00      	cmp	r3, #0
 800812c:	f000 80e4 	beq.w	80082f8 <__sfvwrite_r+0x1d0>
 8008130:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008134:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008138:	b29b      	uxth	r3, r3
 800813a:	460c      	mov	r4, r1
 800813c:	0719      	lsls	r1, r3, #28
 800813e:	b083      	sub	sp, #12
 8008140:	4682      	mov	sl, r0
 8008142:	4690      	mov	r8, r2
 8008144:	d535      	bpl.n	80081b2 <__sfvwrite_r+0x8a>
 8008146:	6922      	ldr	r2, [r4, #16]
 8008148:	b39a      	cbz	r2, 80081b2 <__sfvwrite_r+0x8a>
 800814a:	f013 0202 	ands.w	r2, r3, #2
 800814e:	f8d8 6000 	ldr.w	r6, [r8]
 8008152:	d03d      	beq.n	80081d0 <__sfvwrite_r+0xa8>
 8008154:	2700      	movs	r7, #0
 8008156:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800815a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800815e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008420 <__sfvwrite_r+0x2f8>
 8008162:	463d      	mov	r5, r7
 8008164:	454d      	cmp	r5, r9
 8008166:	462b      	mov	r3, r5
 8008168:	463a      	mov	r2, r7
 800816a:	bf28      	it	cs
 800816c:	464b      	movcs	r3, r9
 800816e:	4661      	mov	r1, ip
 8008170:	4650      	mov	r0, sl
 8008172:	b1d5      	cbz	r5, 80081aa <__sfvwrite_r+0x82>
 8008174:	47d8      	blx	fp
 8008176:	2800      	cmp	r0, #0
 8008178:	f340 80c6 	ble.w	8008308 <__sfvwrite_r+0x1e0>
 800817c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008180:	1a1b      	subs	r3, r3, r0
 8008182:	4407      	add	r7, r0
 8008184:	1a2d      	subs	r5, r5, r0
 8008186:	f8c8 3008 	str.w	r3, [r8, #8]
 800818a:	2b00      	cmp	r3, #0
 800818c:	f000 80b0 	beq.w	80082f0 <__sfvwrite_r+0x1c8>
 8008190:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008194:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008198:	454d      	cmp	r5, r9
 800819a:	462b      	mov	r3, r5
 800819c:	463a      	mov	r2, r7
 800819e:	bf28      	it	cs
 80081a0:	464b      	movcs	r3, r9
 80081a2:	4661      	mov	r1, ip
 80081a4:	4650      	mov	r0, sl
 80081a6:	2d00      	cmp	r5, #0
 80081a8:	d1e4      	bne.n	8008174 <__sfvwrite_r+0x4c>
 80081aa:	e9d6 7500 	ldrd	r7, r5, [r6]
 80081ae:	3608      	adds	r6, #8
 80081b0:	e7d8      	b.n	8008164 <__sfvwrite_r+0x3c>
 80081b2:	4621      	mov	r1, r4
 80081b4:	4650      	mov	r0, sl
 80081b6:	f7fe fc8f 	bl	8006ad8 <__swsetup_r>
 80081ba:	2800      	cmp	r0, #0
 80081bc:	f040 812a 	bne.w	8008414 <__sfvwrite_r+0x2ec>
 80081c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80081c4:	f8d8 6000 	ldr.w	r6, [r8]
 80081c8:	b29b      	uxth	r3, r3
 80081ca:	f013 0202 	ands.w	r2, r3, #2
 80081ce:	d1c1      	bne.n	8008154 <__sfvwrite_r+0x2c>
 80081d0:	f013 0901 	ands.w	r9, r3, #1
 80081d4:	d15d      	bne.n	8008292 <__sfvwrite_r+0x16a>
 80081d6:	68a7      	ldr	r7, [r4, #8]
 80081d8:	6820      	ldr	r0, [r4, #0]
 80081da:	464d      	mov	r5, r9
 80081dc:	2d00      	cmp	r5, #0
 80081de:	d054      	beq.n	800828a <__sfvwrite_r+0x162>
 80081e0:	059a      	lsls	r2, r3, #22
 80081e2:	f140 809b 	bpl.w	800831c <__sfvwrite_r+0x1f4>
 80081e6:	42af      	cmp	r7, r5
 80081e8:	46bb      	mov	fp, r7
 80081ea:	f200 80d8 	bhi.w	800839e <__sfvwrite_r+0x276>
 80081ee:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80081f2:	d02f      	beq.n	8008254 <__sfvwrite_r+0x12c>
 80081f4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80081f8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80081fc:	eba0 0b01 	sub.w	fp, r0, r1
 8008200:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008204:	1c68      	adds	r0, r5, #1
 8008206:	107f      	asrs	r7, r7, #1
 8008208:	4458      	add	r0, fp
 800820a:	42b8      	cmp	r0, r7
 800820c:	463a      	mov	r2, r7
 800820e:	bf84      	itt	hi
 8008210:	4607      	movhi	r7, r0
 8008212:	463a      	movhi	r2, r7
 8008214:	055b      	lsls	r3, r3, #21
 8008216:	f140 80d3 	bpl.w	80083c0 <__sfvwrite_r+0x298>
 800821a:	4611      	mov	r1, r2
 800821c:	4650      	mov	r0, sl
 800821e:	f7fc fb65 	bl	80048ec <_malloc_r>
 8008222:	2800      	cmp	r0, #0
 8008224:	f000 80f0 	beq.w	8008408 <__sfvwrite_r+0x2e0>
 8008228:	465a      	mov	r2, fp
 800822a:	6921      	ldr	r1, [r4, #16]
 800822c:	9001      	str	r0, [sp, #4]
 800822e:	f7f8 fe33 	bl	8000e98 <memcpy>
 8008232:	89a2      	ldrh	r2, [r4, #12]
 8008234:	9b01      	ldr	r3, [sp, #4]
 8008236:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800823a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800823e:	81a2      	strh	r2, [r4, #12]
 8008240:	eba7 020b 	sub.w	r2, r7, fp
 8008244:	eb03 000b 	add.w	r0, r3, fp
 8008248:	6167      	str	r7, [r4, #20]
 800824a:	6123      	str	r3, [r4, #16]
 800824c:	6020      	str	r0, [r4, #0]
 800824e:	60a2      	str	r2, [r4, #8]
 8008250:	462f      	mov	r7, r5
 8008252:	46ab      	mov	fp, r5
 8008254:	465a      	mov	r2, fp
 8008256:	4649      	mov	r1, r9
 8008258:	f000 f99c 	bl	8008594 <memmove>
 800825c:	68a2      	ldr	r2, [r4, #8]
 800825e:	6823      	ldr	r3, [r4, #0]
 8008260:	1bd2      	subs	r2, r2, r7
 8008262:	445b      	add	r3, fp
 8008264:	462f      	mov	r7, r5
 8008266:	60a2      	str	r2, [r4, #8]
 8008268:	6023      	str	r3, [r4, #0]
 800826a:	2500      	movs	r5, #0
 800826c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008270:	1bdb      	subs	r3, r3, r7
 8008272:	44b9      	add	r9, r7
 8008274:	f8c8 3008 	str.w	r3, [r8, #8]
 8008278:	2b00      	cmp	r3, #0
 800827a:	d039      	beq.n	80082f0 <__sfvwrite_r+0x1c8>
 800827c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008280:	68a7      	ldr	r7, [r4, #8]
 8008282:	6820      	ldr	r0, [r4, #0]
 8008284:	b29b      	uxth	r3, r3
 8008286:	2d00      	cmp	r5, #0
 8008288:	d1aa      	bne.n	80081e0 <__sfvwrite_r+0xb8>
 800828a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800828e:	3608      	adds	r6, #8
 8008290:	e7a4      	b.n	80081dc <__sfvwrite_r+0xb4>
 8008292:	4633      	mov	r3, r6
 8008294:	4691      	mov	r9, r2
 8008296:	4610      	mov	r0, r2
 8008298:	4617      	mov	r7, r2
 800829a:	464e      	mov	r6, r9
 800829c:	469b      	mov	fp, r3
 800829e:	2f00      	cmp	r7, #0
 80082a0:	d06b      	beq.n	800837a <__sfvwrite_r+0x252>
 80082a2:	2800      	cmp	r0, #0
 80082a4:	d071      	beq.n	800838a <__sfvwrite_r+0x262>
 80082a6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80082aa:	6820      	ldr	r0, [r4, #0]
 80082ac:	45b9      	cmp	r9, r7
 80082ae:	464b      	mov	r3, r9
 80082b0:	bf28      	it	cs
 80082b2:	463b      	movcs	r3, r7
 80082b4:	4288      	cmp	r0, r1
 80082b6:	d903      	bls.n	80082c0 <__sfvwrite_r+0x198>
 80082b8:	68a5      	ldr	r5, [r4, #8]
 80082ba:	4415      	add	r5, r2
 80082bc:	42ab      	cmp	r3, r5
 80082be:	dc71      	bgt.n	80083a4 <__sfvwrite_r+0x27c>
 80082c0:	429a      	cmp	r2, r3
 80082c2:	f300 8093 	bgt.w	80083ec <__sfvwrite_r+0x2c4>
 80082c6:	4613      	mov	r3, r2
 80082c8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80082ca:	69e1      	ldr	r1, [r4, #28]
 80082cc:	4632      	mov	r2, r6
 80082ce:	4650      	mov	r0, sl
 80082d0:	47a8      	blx	r5
 80082d2:	1e05      	subs	r5, r0, #0
 80082d4:	dd18      	ble.n	8008308 <__sfvwrite_r+0x1e0>
 80082d6:	ebb9 0905 	subs.w	r9, r9, r5
 80082da:	d00f      	beq.n	80082fc <__sfvwrite_r+0x1d4>
 80082dc:	2001      	movs	r0, #1
 80082de:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80082e2:	1b5b      	subs	r3, r3, r5
 80082e4:	442e      	add	r6, r5
 80082e6:	1b7f      	subs	r7, r7, r5
 80082e8:	f8c8 3008 	str.w	r3, [r8, #8]
 80082ec:	2b00      	cmp	r3, #0
 80082ee:	d1d6      	bne.n	800829e <__sfvwrite_r+0x176>
 80082f0:	2000      	movs	r0, #0
 80082f2:	b003      	add	sp, #12
 80082f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80082f8:	2000      	movs	r0, #0
 80082fa:	4770      	bx	lr
 80082fc:	4621      	mov	r1, r4
 80082fe:	4650      	mov	r0, sl
 8008300:	f7ff fd20 	bl	8007d44 <_fflush_r>
 8008304:	2800      	cmp	r0, #0
 8008306:	d0ea      	beq.n	80082de <__sfvwrite_r+0x1b6>
 8008308:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800830c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008310:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008314:	81a3      	strh	r3, [r4, #12]
 8008316:	b003      	add	sp, #12
 8008318:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800831c:	6923      	ldr	r3, [r4, #16]
 800831e:	4283      	cmp	r3, r0
 8008320:	d315      	bcc.n	800834e <__sfvwrite_r+0x226>
 8008322:	6961      	ldr	r1, [r4, #20]
 8008324:	42a9      	cmp	r1, r5
 8008326:	d812      	bhi.n	800834e <__sfvwrite_r+0x226>
 8008328:	4b3c      	ldr	r3, [pc, #240]	; (800841c <__sfvwrite_r+0x2f4>)
 800832a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800832c:	429d      	cmp	r5, r3
 800832e:	bf94      	ite	ls
 8008330:	462b      	movls	r3, r5
 8008332:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008336:	464a      	mov	r2, r9
 8008338:	fb93 f3f1 	sdiv	r3, r3, r1
 800833c:	4650      	mov	r0, sl
 800833e:	fb01 f303 	mul.w	r3, r1, r3
 8008342:	69e1      	ldr	r1, [r4, #28]
 8008344:	47b8      	blx	r7
 8008346:	1e07      	subs	r7, r0, #0
 8008348:	ddde      	ble.n	8008308 <__sfvwrite_r+0x1e0>
 800834a:	1bed      	subs	r5, r5, r7
 800834c:	e78e      	b.n	800826c <__sfvwrite_r+0x144>
 800834e:	42af      	cmp	r7, r5
 8008350:	bf28      	it	cs
 8008352:	462f      	movcs	r7, r5
 8008354:	463a      	mov	r2, r7
 8008356:	4649      	mov	r1, r9
 8008358:	f000 f91c 	bl	8008594 <memmove>
 800835c:	68a3      	ldr	r3, [r4, #8]
 800835e:	6822      	ldr	r2, [r4, #0]
 8008360:	1bdb      	subs	r3, r3, r7
 8008362:	443a      	add	r2, r7
 8008364:	60a3      	str	r3, [r4, #8]
 8008366:	6022      	str	r2, [r4, #0]
 8008368:	2b00      	cmp	r3, #0
 800836a:	d1ee      	bne.n	800834a <__sfvwrite_r+0x222>
 800836c:	4621      	mov	r1, r4
 800836e:	4650      	mov	r0, sl
 8008370:	f7ff fce8 	bl	8007d44 <_fflush_r>
 8008374:	2800      	cmp	r0, #0
 8008376:	d0e8      	beq.n	800834a <__sfvwrite_r+0x222>
 8008378:	e7c6      	b.n	8008308 <__sfvwrite_r+0x1e0>
 800837a:	f10b 0308 	add.w	r3, fp, #8
 800837e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8008382:	469b      	mov	fp, r3
 8008384:	3308      	adds	r3, #8
 8008386:	2f00      	cmp	r7, #0
 8008388:	d0f9      	beq.n	800837e <__sfvwrite_r+0x256>
 800838a:	463a      	mov	r2, r7
 800838c:	210a      	movs	r1, #10
 800838e:	4630      	mov	r0, r6
 8008390:	f7f8 fea6 	bl	80010e0 <memchr>
 8008394:	b338      	cbz	r0, 80083e6 <__sfvwrite_r+0x2be>
 8008396:	3001      	adds	r0, #1
 8008398:	eba0 0906 	sub.w	r9, r0, r6
 800839c:	e783      	b.n	80082a6 <__sfvwrite_r+0x17e>
 800839e:	462f      	mov	r7, r5
 80083a0:	46ab      	mov	fp, r5
 80083a2:	e757      	b.n	8008254 <__sfvwrite_r+0x12c>
 80083a4:	4631      	mov	r1, r6
 80083a6:	462a      	mov	r2, r5
 80083a8:	f000 f8f4 	bl	8008594 <memmove>
 80083ac:	6823      	ldr	r3, [r4, #0]
 80083ae:	442b      	add	r3, r5
 80083b0:	6023      	str	r3, [r4, #0]
 80083b2:	4621      	mov	r1, r4
 80083b4:	4650      	mov	r0, sl
 80083b6:	f7ff fcc5 	bl	8007d44 <_fflush_r>
 80083ba:	2800      	cmp	r0, #0
 80083bc:	d08b      	beq.n	80082d6 <__sfvwrite_r+0x1ae>
 80083be:	e7a3      	b.n	8008308 <__sfvwrite_r+0x1e0>
 80083c0:	4650      	mov	r0, sl
 80083c2:	f000 fc55 	bl	8008c70 <_realloc_r>
 80083c6:	4603      	mov	r3, r0
 80083c8:	2800      	cmp	r0, #0
 80083ca:	f47f af39 	bne.w	8008240 <__sfvwrite_r+0x118>
 80083ce:	6921      	ldr	r1, [r4, #16]
 80083d0:	4650      	mov	r0, sl
 80083d2:	f7ff fdb5 	bl	8007f40 <_free_r>
 80083d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80083da:	220c      	movs	r2, #12
 80083dc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80083e0:	f8ca 2000 	str.w	r2, [sl]
 80083e4:	e792      	b.n	800830c <__sfvwrite_r+0x1e4>
 80083e6:	f107 0901 	add.w	r9, r7, #1
 80083ea:	e75c      	b.n	80082a6 <__sfvwrite_r+0x17e>
 80083ec:	461a      	mov	r2, r3
 80083ee:	4631      	mov	r1, r6
 80083f0:	9301      	str	r3, [sp, #4]
 80083f2:	f000 f8cf 	bl	8008594 <memmove>
 80083f6:	9b01      	ldr	r3, [sp, #4]
 80083f8:	68a1      	ldr	r1, [r4, #8]
 80083fa:	6822      	ldr	r2, [r4, #0]
 80083fc:	1ac9      	subs	r1, r1, r3
 80083fe:	441a      	add	r2, r3
 8008400:	60a1      	str	r1, [r4, #8]
 8008402:	6022      	str	r2, [r4, #0]
 8008404:	461d      	mov	r5, r3
 8008406:	e766      	b.n	80082d6 <__sfvwrite_r+0x1ae>
 8008408:	230c      	movs	r3, #12
 800840a:	f8ca 3000 	str.w	r3, [sl]
 800840e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008412:	e77b      	b.n	800830c <__sfvwrite_r+0x1e4>
 8008414:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008418:	e76b      	b.n	80082f2 <__sfvwrite_r+0x1ca>
 800841a:	bf00      	nop
 800841c:	7ffffffe 	.word	0x7ffffffe
 8008420:	7ffffc00 	.word	0x7ffffc00

08008424 <_fwalk_reent>:
 8008424:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008428:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800842c:	d01f      	beq.n	800846e <_fwalk_reent+0x4a>
 800842e:	4688      	mov	r8, r1
 8008430:	4606      	mov	r6, r0
 8008432:	f04f 0900 	mov.w	r9, #0
 8008436:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800843a:	3d01      	subs	r5, #1
 800843c:	d411      	bmi.n	8008462 <_fwalk_reent+0x3e>
 800843e:	89a3      	ldrh	r3, [r4, #12]
 8008440:	2b01      	cmp	r3, #1
 8008442:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008446:	4621      	mov	r1, r4
 8008448:	4630      	mov	r0, r6
 800844a:	d906      	bls.n	800845a <_fwalk_reent+0x36>
 800844c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8008450:	3301      	adds	r3, #1
 8008452:	d002      	beq.n	800845a <_fwalk_reent+0x36>
 8008454:	47c0      	blx	r8
 8008456:	ea49 0900 	orr.w	r9, r9, r0
 800845a:	1c6b      	adds	r3, r5, #1
 800845c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8008460:	d1ed      	bne.n	800843e <_fwalk_reent+0x1a>
 8008462:	683f      	ldr	r7, [r7, #0]
 8008464:	2f00      	cmp	r7, #0
 8008466:	d1e6      	bne.n	8008436 <_fwalk_reent+0x12>
 8008468:	4648      	mov	r0, r9
 800846a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800846e:	46b9      	mov	r9, r7
 8008470:	4648      	mov	r0, r9
 8008472:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008476:	bf00      	nop

08008478 <_localeconv_r>:
 8008478:	4a04      	ldr	r2, [pc, #16]	; (800848c <_localeconv_r+0x14>)
 800847a:	4b05      	ldr	r3, [pc, #20]	; (8008490 <_localeconv_r+0x18>)
 800847c:	6812      	ldr	r2, [r2, #0]
 800847e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8008480:	2800      	cmp	r0, #0
 8008482:	bf08      	it	eq
 8008484:	4618      	moveq	r0, r3
 8008486:	30f0      	adds	r0, #240	; 0xf0
 8008488:	4770      	bx	lr
 800848a:	bf00      	nop
 800848c:	20000030 	.word	0x20000030
 8008490:	20000874 	.word	0x20000874

08008494 <__retarget_lock_init_recursive>:
 8008494:	4770      	bx	lr
 8008496:	bf00      	nop

08008498 <__retarget_lock_close_recursive>:
 8008498:	4770      	bx	lr
 800849a:	bf00      	nop

0800849c <__retarget_lock_acquire_recursive>:
 800849c:	4770      	bx	lr
 800849e:	bf00      	nop

080084a0 <__retarget_lock_release_recursive>:
 80084a0:	4770      	bx	lr
 80084a2:	bf00      	nop

080084a4 <__swhatbuf_r>:
 80084a4:	b570      	push	{r4, r5, r6, lr}
 80084a6:	460c      	mov	r4, r1
 80084a8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80084ac:	2900      	cmp	r1, #0
 80084ae:	b096      	sub	sp, #88	; 0x58
 80084b0:	4615      	mov	r5, r2
 80084b2:	461e      	mov	r6, r3
 80084b4:	da0f      	bge.n	80084d6 <__swhatbuf_r+0x32>
 80084b6:	89a2      	ldrh	r2, [r4, #12]
 80084b8:	2300      	movs	r3, #0
 80084ba:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80084be:	6033      	str	r3, [r6, #0]
 80084c0:	d104      	bne.n	80084cc <__swhatbuf_r+0x28>
 80084c2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80084c6:	602b      	str	r3, [r5, #0]
 80084c8:	b016      	add	sp, #88	; 0x58
 80084ca:	bd70      	pop	{r4, r5, r6, pc}
 80084cc:	2240      	movs	r2, #64	; 0x40
 80084ce:	4618      	mov	r0, r3
 80084d0:	602a      	str	r2, [r5, #0]
 80084d2:	b016      	add	sp, #88	; 0x58
 80084d4:	bd70      	pop	{r4, r5, r6, pc}
 80084d6:	466a      	mov	r2, sp
 80084d8:	f001 f80e 	bl	80094f8 <_fstat_r>
 80084dc:	2800      	cmp	r0, #0
 80084de:	dbea      	blt.n	80084b6 <__swhatbuf_r+0x12>
 80084e0:	9b01      	ldr	r3, [sp, #4]
 80084e2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80084e6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80084ea:	fab3 f383 	clz	r3, r3
 80084ee:	095b      	lsrs	r3, r3, #5
 80084f0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80084f4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80084f8:	6033      	str	r3, [r6, #0]
 80084fa:	602a      	str	r2, [r5, #0]
 80084fc:	b016      	add	sp, #88	; 0x58
 80084fe:	bd70      	pop	{r4, r5, r6, pc}

08008500 <__smakebuf_r>:
 8008500:	898a      	ldrh	r2, [r1, #12]
 8008502:	0792      	lsls	r2, r2, #30
 8008504:	460b      	mov	r3, r1
 8008506:	d506      	bpl.n	8008516 <__smakebuf_r+0x16>
 8008508:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800850c:	2101      	movs	r1, #1
 800850e:	601a      	str	r2, [r3, #0]
 8008510:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8008514:	4770      	bx	lr
 8008516:	b570      	push	{r4, r5, r6, lr}
 8008518:	b082      	sub	sp, #8
 800851a:	ab01      	add	r3, sp, #4
 800851c:	466a      	mov	r2, sp
 800851e:	460c      	mov	r4, r1
 8008520:	4605      	mov	r5, r0
 8008522:	f7ff ffbf 	bl	80084a4 <__swhatbuf_r>
 8008526:	9900      	ldr	r1, [sp, #0]
 8008528:	4606      	mov	r6, r0
 800852a:	4628      	mov	r0, r5
 800852c:	f7fc f9de 	bl	80048ec <_malloc_r>
 8008530:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008534:	b1d8      	cbz	r0, 800856e <__smakebuf_r+0x6e>
 8008536:	4916      	ldr	r1, [pc, #88]	; (8008590 <__smakebuf_r+0x90>)
 8008538:	63e9      	str	r1, [r5, #60]	; 0x3c
 800853a:	9a01      	ldr	r2, [sp, #4]
 800853c:	9900      	ldr	r1, [sp, #0]
 800853e:	6020      	str	r0, [r4, #0]
 8008540:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008544:	81a3      	strh	r3, [r4, #12]
 8008546:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800854a:	b91a      	cbnz	r2, 8008554 <__smakebuf_r+0x54>
 800854c:	4333      	orrs	r3, r6
 800854e:	81a3      	strh	r3, [r4, #12]
 8008550:	b002      	add	sp, #8
 8008552:	bd70      	pop	{r4, r5, r6, pc}
 8008554:	4628      	mov	r0, r5
 8008556:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800855a:	f000 ffe1 	bl	8009520 <_isatty_r>
 800855e:	b1a0      	cbz	r0, 800858a <__smakebuf_r+0x8a>
 8008560:	89a3      	ldrh	r3, [r4, #12]
 8008562:	f023 0303 	bic.w	r3, r3, #3
 8008566:	f043 0301 	orr.w	r3, r3, #1
 800856a:	b21b      	sxth	r3, r3
 800856c:	e7ee      	b.n	800854c <__smakebuf_r+0x4c>
 800856e:	059a      	lsls	r2, r3, #22
 8008570:	d4ee      	bmi.n	8008550 <__smakebuf_r+0x50>
 8008572:	f023 0303 	bic.w	r3, r3, #3
 8008576:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800857a:	f043 0302 	orr.w	r3, r3, #2
 800857e:	2101      	movs	r1, #1
 8008580:	81a3      	strh	r3, [r4, #12]
 8008582:	6022      	str	r2, [r4, #0]
 8008584:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8008588:	e7e2      	b.n	8008550 <__smakebuf_r+0x50>
 800858a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800858e:	e7dd      	b.n	800854c <__smakebuf_r+0x4c>
 8008590:	08007df1 	.word	0x08007df1

08008594 <memmove>:
 8008594:	4288      	cmp	r0, r1
 8008596:	b4f0      	push	{r4, r5, r6, r7}
 8008598:	d90d      	bls.n	80085b6 <memmove+0x22>
 800859a:	188b      	adds	r3, r1, r2
 800859c:	4283      	cmp	r3, r0
 800859e:	d90a      	bls.n	80085b6 <memmove+0x22>
 80085a0:	1884      	adds	r4, r0, r2
 80085a2:	b132      	cbz	r2, 80085b2 <memmove+0x1e>
 80085a4:	4622      	mov	r2, r4
 80085a6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80085aa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80085ae:	4299      	cmp	r1, r3
 80085b0:	d1f9      	bne.n	80085a6 <memmove+0x12>
 80085b2:	bcf0      	pop	{r4, r5, r6, r7}
 80085b4:	4770      	bx	lr
 80085b6:	2a0f      	cmp	r2, #15
 80085b8:	d949      	bls.n	800864e <memmove+0xba>
 80085ba:	ea40 0301 	orr.w	r3, r0, r1
 80085be:	079b      	lsls	r3, r3, #30
 80085c0:	d147      	bne.n	8008652 <memmove+0xbe>
 80085c2:	f1a2 0310 	sub.w	r3, r2, #16
 80085c6:	091b      	lsrs	r3, r3, #4
 80085c8:	f101 0720 	add.w	r7, r1, #32
 80085cc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80085d0:	f101 0410 	add.w	r4, r1, #16
 80085d4:	f100 0510 	add.w	r5, r0, #16
 80085d8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80085dc:	f845 6c10 	str.w	r6, [r5, #-16]
 80085e0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80085e4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80085e8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80085ec:	f845 6c08 	str.w	r6, [r5, #-8]
 80085f0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80085f4:	f845 6c04 	str.w	r6, [r5, #-4]
 80085f8:	3410      	adds	r4, #16
 80085fa:	42bc      	cmp	r4, r7
 80085fc:	f105 0510 	add.w	r5, r5, #16
 8008600:	d1ea      	bne.n	80085d8 <memmove+0x44>
 8008602:	3301      	adds	r3, #1
 8008604:	f002 050f 	and.w	r5, r2, #15
 8008608:	011b      	lsls	r3, r3, #4
 800860a:	2d03      	cmp	r5, #3
 800860c:	4419      	add	r1, r3
 800860e:	4403      	add	r3, r0
 8008610:	d921      	bls.n	8008656 <memmove+0xc2>
 8008612:	1f1f      	subs	r7, r3, #4
 8008614:	460e      	mov	r6, r1
 8008616:	462c      	mov	r4, r5
 8008618:	3c04      	subs	r4, #4
 800861a:	f856 cb04 	ldr.w	ip, [r6], #4
 800861e:	f847 cf04 	str.w	ip, [r7, #4]!
 8008622:	2c03      	cmp	r4, #3
 8008624:	d8f8      	bhi.n	8008618 <memmove+0x84>
 8008626:	1f2c      	subs	r4, r5, #4
 8008628:	f024 0403 	bic.w	r4, r4, #3
 800862c:	3404      	adds	r4, #4
 800862e:	4423      	add	r3, r4
 8008630:	4421      	add	r1, r4
 8008632:	f002 0203 	and.w	r2, r2, #3
 8008636:	2a00      	cmp	r2, #0
 8008638:	d0bb      	beq.n	80085b2 <memmove+0x1e>
 800863a:	3b01      	subs	r3, #1
 800863c:	440a      	add	r2, r1
 800863e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8008642:	f803 4f01 	strb.w	r4, [r3, #1]!
 8008646:	4291      	cmp	r1, r2
 8008648:	d1f9      	bne.n	800863e <memmove+0xaa>
 800864a:	bcf0      	pop	{r4, r5, r6, r7}
 800864c:	4770      	bx	lr
 800864e:	4603      	mov	r3, r0
 8008650:	e7f1      	b.n	8008636 <memmove+0xa2>
 8008652:	4603      	mov	r3, r0
 8008654:	e7f1      	b.n	800863a <memmove+0xa6>
 8008656:	462a      	mov	r2, r5
 8008658:	e7ed      	b.n	8008636 <memmove+0xa2>
 800865a:	bf00      	nop

0800865c <_Balloc>:
 800865c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800865e:	b570      	push	{r4, r5, r6, lr}
 8008660:	4605      	mov	r5, r0
 8008662:	460c      	mov	r4, r1
 8008664:	b14b      	cbz	r3, 800867a <_Balloc+0x1e>
 8008666:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800866a:	b180      	cbz	r0, 800868e <_Balloc+0x32>
 800866c:	6802      	ldr	r2, [r0, #0]
 800866e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8008672:	2300      	movs	r3, #0
 8008674:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8008678:	bd70      	pop	{r4, r5, r6, pc}
 800867a:	2221      	movs	r2, #33	; 0x21
 800867c:	2104      	movs	r1, #4
 800867e:	f000 fe0b 	bl	8009298 <_calloc_r>
 8008682:	4603      	mov	r3, r0
 8008684:	64e8      	str	r0, [r5, #76]	; 0x4c
 8008686:	2800      	cmp	r0, #0
 8008688:	d1ed      	bne.n	8008666 <_Balloc+0xa>
 800868a:	2000      	movs	r0, #0
 800868c:	bd70      	pop	{r4, r5, r6, pc}
 800868e:	2101      	movs	r1, #1
 8008690:	fa01 f604 	lsl.w	r6, r1, r4
 8008694:	1d72      	adds	r2, r6, #5
 8008696:	4628      	mov	r0, r5
 8008698:	0092      	lsls	r2, r2, #2
 800869a:	f000 fdfd 	bl	8009298 <_calloc_r>
 800869e:	2800      	cmp	r0, #0
 80086a0:	d0f3      	beq.n	800868a <_Balloc+0x2e>
 80086a2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80086a6:	e7e4      	b.n	8008672 <_Balloc+0x16>

080086a8 <_Bfree>:
 80086a8:	b131      	cbz	r1, 80086b8 <_Bfree+0x10>
 80086aa:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80086ac:	684a      	ldr	r2, [r1, #4]
 80086ae:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80086b2:	6008      	str	r0, [r1, #0]
 80086b4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80086b8:	4770      	bx	lr
 80086ba:	bf00      	nop

080086bc <__multadd>:
 80086bc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80086be:	690c      	ldr	r4, [r1, #16]
 80086c0:	b083      	sub	sp, #12
 80086c2:	460d      	mov	r5, r1
 80086c4:	4606      	mov	r6, r0
 80086c6:	f101 0c14 	add.w	ip, r1, #20
 80086ca:	2700      	movs	r7, #0
 80086cc:	f8dc 0000 	ldr.w	r0, [ip]
 80086d0:	b281      	uxth	r1, r0
 80086d2:	fb02 3301 	mla	r3, r2, r1, r3
 80086d6:	0c01      	lsrs	r1, r0, #16
 80086d8:	0c18      	lsrs	r0, r3, #16
 80086da:	fb02 0101 	mla	r1, r2, r1, r0
 80086de:	b29b      	uxth	r3, r3
 80086e0:	3701      	adds	r7, #1
 80086e2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80086e6:	42bc      	cmp	r4, r7
 80086e8:	f84c 3b04 	str.w	r3, [ip], #4
 80086ec:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80086f0:	dcec      	bgt.n	80086cc <__multadd+0x10>
 80086f2:	b13b      	cbz	r3, 8008704 <__multadd+0x48>
 80086f4:	68aa      	ldr	r2, [r5, #8]
 80086f6:	42a2      	cmp	r2, r4
 80086f8:	dd07      	ble.n	800870a <__multadd+0x4e>
 80086fa:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80086fe:	3401      	adds	r4, #1
 8008700:	6153      	str	r3, [r2, #20]
 8008702:	612c      	str	r4, [r5, #16]
 8008704:	4628      	mov	r0, r5
 8008706:	b003      	add	sp, #12
 8008708:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800870a:	6869      	ldr	r1, [r5, #4]
 800870c:	9301      	str	r3, [sp, #4]
 800870e:	3101      	adds	r1, #1
 8008710:	4630      	mov	r0, r6
 8008712:	f7ff ffa3 	bl	800865c <_Balloc>
 8008716:	692a      	ldr	r2, [r5, #16]
 8008718:	3202      	adds	r2, #2
 800871a:	f105 010c 	add.w	r1, r5, #12
 800871e:	4607      	mov	r7, r0
 8008720:	0092      	lsls	r2, r2, #2
 8008722:	300c      	adds	r0, #12
 8008724:	f7f8 fbb8 	bl	8000e98 <memcpy>
 8008728:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800872a:	6869      	ldr	r1, [r5, #4]
 800872c:	9b01      	ldr	r3, [sp, #4]
 800872e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8008732:	6028      	str	r0, [r5, #0]
 8008734:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8008738:	463d      	mov	r5, r7
 800873a:	e7de      	b.n	80086fa <__multadd+0x3e>

0800873c <__hi0bits>:
 800873c:	0c02      	lsrs	r2, r0, #16
 800873e:	0412      	lsls	r2, r2, #16
 8008740:	4603      	mov	r3, r0
 8008742:	b9c2      	cbnz	r2, 8008776 <__hi0bits+0x3a>
 8008744:	0403      	lsls	r3, r0, #16
 8008746:	2010      	movs	r0, #16
 8008748:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800874c:	bf04      	itt	eq
 800874e:	021b      	lsleq	r3, r3, #8
 8008750:	3008      	addeq	r0, #8
 8008752:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8008756:	bf04      	itt	eq
 8008758:	011b      	lsleq	r3, r3, #4
 800875a:	3004      	addeq	r0, #4
 800875c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8008760:	bf04      	itt	eq
 8008762:	009b      	lsleq	r3, r3, #2
 8008764:	3002      	addeq	r0, #2
 8008766:	2b00      	cmp	r3, #0
 8008768:	db04      	blt.n	8008774 <__hi0bits+0x38>
 800876a:	005b      	lsls	r3, r3, #1
 800876c:	d501      	bpl.n	8008772 <__hi0bits+0x36>
 800876e:	3001      	adds	r0, #1
 8008770:	4770      	bx	lr
 8008772:	2020      	movs	r0, #32
 8008774:	4770      	bx	lr
 8008776:	2000      	movs	r0, #0
 8008778:	e7e6      	b.n	8008748 <__hi0bits+0xc>
 800877a:	bf00      	nop

0800877c <__lo0bits>:
 800877c:	6803      	ldr	r3, [r0, #0]
 800877e:	f013 0207 	ands.w	r2, r3, #7
 8008782:	4601      	mov	r1, r0
 8008784:	d007      	beq.n	8008796 <__lo0bits+0x1a>
 8008786:	07da      	lsls	r2, r3, #31
 8008788:	d41f      	bmi.n	80087ca <__lo0bits+0x4e>
 800878a:	0798      	lsls	r0, r3, #30
 800878c:	d51f      	bpl.n	80087ce <__lo0bits+0x52>
 800878e:	085b      	lsrs	r3, r3, #1
 8008790:	600b      	str	r3, [r1, #0]
 8008792:	2001      	movs	r0, #1
 8008794:	4770      	bx	lr
 8008796:	b298      	uxth	r0, r3
 8008798:	b1a0      	cbz	r0, 80087c4 <__lo0bits+0x48>
 800879a:	4610      	mov	r0, r2
 800879c:	f013 0fff 	tst.w	r3, #255	; 0xff
 80087a0:	bf04      	itt	eq
 80087a2:	0a1b      	lsreq	r3, r3, #8
 80087a4:	3008      	addeq	r0, #8
 80087a6:	071a      	lsls	r2, r3, #28
 80087a8:	bf04      	itt	eq
 80087aa:	091b      	lsreq	r3, r3, #4
 80087ac:	3004      	addeq	r0, #4
 80087ae:	079a      	lsls	r2, r3, #30
 80087b0:	bf04      	itt	eq
 80087b2:	089b      	lsreq	r3, r3, #2
 80087b4:	3002      	addeq	r0, #2
 80087b6:	07da      	lsls	r2, r3, #31
 80087b8:	d402      	bmi.n	80087c0 <__lo0bits+0x44>
 80087ba:	085b      	lsrs	r3, r3, #1
 80087bc:	d00b      	beq.n	80087d6 <__lo0bits+0x5a>
 80087be:	3001      	adds	r0, #1
 80087c0:	600b      	str	r3, [r1, #0]
 80087c2:	4770      	bx	lr
 80087c4:	0c1b      	lsrs	r3, r3, #16
 80087c6:	2010      	movs	r0, #16
 80087c8:	e7e8      	b.n	800879c <__lo0bits+0x20>
 80087ca:	2000      	movs	r0, #0
 80087cc:	4770      	bx	lr
 80087ce:	089b      	lsrs	r3, r3, #2
 80087d0:	600b      	str	r3, [r1, #0]
 80087d2:	2002      	movs	r0, #2
 80087d4:	4770      	bx	lr
 80087d6:	2020      	movs	r0, #32
 80087d8:	4770      	bx	lr
 80087da:	bf00      	nop

080087dc <__i2b>:
 80087dc:	b510      	push	{r4, lr}
 80087de:	460c      	mov	r4, r1
 80087e0:	2101      	movs	r1, #1
 80087e2:	f7ff ff3b 	bl	800865c <_Balloc>
 80087e6:	2201      	movs	r2, #1
 80087e8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80087ec:	bd10      	pop	{r4, pc}
 80087ee:	bf00      	nop

080087f0 <__multiply>:
 80087f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80087f4:	690e      	ldr	r6, [r1, #16]
 80087f6:	6914      	ldr	r4, [r2, #16]
 80087f8:	42a6      	cmp	r6, r4
 80087fa:	b083      	sub	sp, #12
 80087fc:	460f      	mov	r7, r1
 80087fe:	4615      	mov	r5, r2
 8008800:	da04      	bge.n	800880c <__multiply+0x1c>
 8008802:	4632      	mov	r2, r6
 8008804:	462f      	mov	r7, r5
 8008806:	4626      	mov	r6, r4
 8008808:	460d      	mov	r5, r1
 800880a:	4614      	mov	r4, r2
 800880c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8008810:	eb06 0804 	add.w	r8, r6, r4
 8008814:	4543      	cmp	r3, r8
 8008816:	bfb8      	it	lt
 8008818:	3101      	addlt	r1, #1
 800881a:	f7ff ff1f 	bl	800865c <_Balloc>
 800881e:	f100 0914 	add.w	r9, r0, #20
 8008822:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8008826:	45f1      	cmp	r9, lr
 8008828:	9000      	str	r0, [sp, #0]
 800882a:	d205      	bcs.n	8008838 <__multiply+0x48>
 800882c:	464b      	mov	r3, r9
 800882e:	2200      	movs	r2, #0
 8008830:	f843 2b04 	str.w	r2, [r3], #4
 8008834:	459e      	cmp	lr, r3
 8008836:	d8fb      	bhi.n	8008830 <__multiply+0x40>
 8008838:	f105 0a14 	add.w	sl, r5, #20
 800883c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8008840:	f107 0314 	add.w	r3, r7, #20
 8008844:	45a2      	cmp	sl, r4
 8008846:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800884a:	d261      	bcs.n	8008910 <__multiply+0x120>
 800884c:	1b64      	subs	r4, r4, r5
 800884e:	3c15      	subs	r4, #21
 8008850:	f024 0403 	bic.w	r4, r4, #3
 8008854:	f8cd e004 	str.w	lr, [sp, #4]
 8008858:	44a2      	add	sl, r4
 800885a:	f105 0210 	add.w	r2, r5, #16
 800885e:	469e      	mov	lr, r3
 8008860:	e005      	b.n	800886e <__multiply+0x7e>
 8008862:	0c2d      	lsrs	r5, r5, #16
 8008864:	d12b      	bne.n	80088be <__multiply+0xce>
 8008866:	4592      	cmp	sl, r2
 8008868:	f109 0904 	add.w	r9, r9, #4
 800886c:	d04e      	beq.n	800890c <__multiply+0x11c>
 800886e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8008872:	fa1f fb85 	uxth.w	fp, r5
 8008876:	f1bb 0f00 	cmp.w	fp, #0
 800887a:	d0f2      	beq.n	8008862 <__multiply+0x72>
 800887c:	4677      	mov	r7, lr
 800887e:	464e      	mov	r6, r9
 8008880:	2000      	movs	r0, #0
 8008882:	e000      	b.n	8008886 <__multiply+0x96>
 8008884:	4626      	mov	r6, r4
 8008886:	f857 1b04 	ldr.w	r1, [r7], #4
 800888a:	6834      	ldr	r4, [r6, #0]
 800888c:	b28b      	uxth	r3, r1
 800888e:	b2a5      	uxth	r5, r4
 8008890:	0c09      	lsrs	r1, r1, #16
 8008892:	0c24      	lsrs	r4, r4, #16
 8008894:	fb0b 5303 	mla	r3, fp, r3, r5
 8008898:	4403      	add	r3, r0
 800889a:	fb0b 4001 	mla	r0, fp, r1, r4
 800889e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80088a2:	4634      	mov	r4, r6
 80088a4:	b29b      	uxth	r3, r3
 80088a6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80088aa:	45bc      	cmp	ip, r7
 80088ac:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80088b0:	f844 3b04 	str.w	r3, [r4], #4
 80088b4:	d8e6      	bhi.n	8008884 <__multiply+0x94>
 80088b6:	6070      	str	r0, [r6, #4]
 80088b8:	6815      	ldr	r5, [r2, #0]
 80088ba:	0c2d      	lsrs	r5, r5, #16
 80088bc:	d0d3      	beq.n	8008866 <__multiply+0x76>
 80088be:	f8d9 3000 	ldr.w	r3, [r9]
 80088c2:	4676      	mov	r6, lr
 80088c4:	4618      	mov	r0, r3
 80088c6:	46cb      	mov	fp, r9
 80088c8:	2100      	movs	r1, #0
 80088ca:	e000      	b.n	80088ce <__multiply+0xde>
 80088cc:	46a3      	mov	fp, r4
 80088ce:	8834      	ldrh	r4, [r6, #0]
 80088d0:	0c00      	lsrs	r0, r0, #16
 80088d2:	fb05 0004 	mla	r0, r5, r4, r0
 80088d6:	4401      	add	r1, r0
 80088d8:	b29b      	uxth	r3, r3
 80088da:	465c      	mov	r4, fp
 80088dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80088e0:	f844 3b04 	str.w	r3, [r4], #4
 80088e4:	f856 3b04 	ldr.w	r3, [r6], #4
 80088e8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80088ec:	0c1b      	lsrs	r3, r3, #16
 80088ee:	b287      	uxth	r7, r0
 80088f0:	fb05 7303 	mla	r3, r5, r3, r7
 80088f4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80088f8:	45b4      	cmp	ip, r6
 80088fa:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80088fe:	d8e5      	bhi.n	80088cc <__multiply+0xdc>
 8008900:	4592      	cmp	sl, r2
 8008902:	f8cb 3004 	str.w	r3, [fp, #4]
 8008906:	f109 0904 	add.w	r9, r9, #4
 800890a:	d1b0      	bne.n	800886e <__multiply+0x7e>
 800890c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8008910:	f1b8 0f00 	cmp.w	r8, #0
 8008914:	dd0b      	ble.n	800892e <__multiply+0x13e>
 8008916:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800891a:	f1ae 0e04 	sub.w	lr, lr, #4
 800891e:	b11b      	cbz	r3, 8008928 <__multiply+0x138>
 8008920:	e005      	b.n	800892e <__multiply+0x13e>
 8008922:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8008926:	b913      	cbnz	r3, 800892e <__multiply+0x13e>
 8008928:	f1b8 0801 	subs.w	r8, r8, #1
 800892c:	d1f9      	bne.n	8008922 <__multiply+0x132>
 800892e:	9800      	ldr	r0, [sp, #0]
 8008930:	f8c0 8010 	str.w	r8, [r0, #16]
 8008934:	b003      	add	sp, #12
 8008936:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800893a:	bf00      	nop

0800893c <__pow5mult>:
 800893c:	f012 0303 	ands.w	r3, r2, #3
 8008940:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008944:	4614      	mov	r4, r2
 8008946:	4607      	mov	r7, r0
 8008948:	d12e      	bne.n	80089a8 <__pow5mult+0x6c>
 800894a:	460d      	mov	r5, r1
 800894c:	10a4      	asrs	r4, r4, #2
 800894e:	d01c      	beq.n	800898a <__pow5mult+0x4e>
 8008950:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8008952:	b396      	cbz	r6, 80089ba <__pow5mult+0x7e>
 8008954:	07e3      	lsls	r3, r4, #31
 8008956:	f04f 0800 	mov.w	r8, #0
 800895a:	d406      	bmi.n	800896a <__pow5mult+0x2e>
 800895c:	1064      	asrs	r4, r4, #1
 800895e:	d014      	beq.n	800898a <__pow5mult+0x4e>
 8008960:	6830      	ldr	r0, [r6, #0]
 8008962:	b1a8      	cbz	r0, 8008990 <__pow5mult+0x54>
 8008964:	4606      	mov	r6, r0
 8008966:	07e3      	lsls	r3, r4, #31
 8008968:	d5f8      	bpl.n	800895c <__pow5mult+0x20>
 800896a:	4632      	mov	r2, r6
 800896c:	4629      	mov	r1, r5
 800896e:	4638      	mov	r0, r7
 8008970:	f7ff ff3e 	bl	80087f0 <__multiply>
 8008974:	b1b5      	cbz	r5, 80089a4 <__pow5mult+0x68>
 8008976:	686a      	ldr	r2, [r5, #4]
 8008978:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800897a:	1064      	asrs	r4, r4, #1
 800897c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008980:	6029      	str	r1, [r5, #0]
 8008982:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8008986:	4605      	mov	r5, r0
 8008988:	d1ea      	bne.n	8008960 <__pow5mult+0x24>
 800898a:	4628      	mov	r0, r5
 800898c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008990:	4632      	mov	r2, r6
 8008992:	4631      	mov	r1, r6
 8008994:	4638      	mov	r0, r7
 8008996:	f7ff ff2b 	bl	80087f0 <__multiply>
 800899a:	6030      	str	r0, [r6, #0]
 800899c:	f8c0 8000 	str.w	r8, [r0]
 80089a0:	4606      	mov	r6, r0
 80089a2:	e7e0      	b.n	8008966 <__pow5mult+0x2a>
 80089a4:	4605      	mov	r5, r0
 80089a6:	e7d9      	b.n	800895c <__pow5mult+0x20>
 80089a8:	3b01      	subs	r3, #1
 80089aa:	4a0b      	ldr	r2, [pc, #44]	; (80089d8 <__pow5mult+0x9c>)
 80089ac:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80089b0:	2300      	movs	r3, #0
 80089b2:	f7ff fe83 	bl	80086bc <__multadd>
 80089b6:	4605      	mov	r5, r0
 80089b8:	e7c8      	b.n	800894c <__pow5mult+0x10>
 80089ba:	2101      	movs	r1, #1
 80089bc:	4638      	mov	r0, r7
 80089be:	f7ff fe4d 	bl	800865c <_Balloc>
 80089c2:	f240 2371 	movw	r3, #625	; 0x271
 80089c6:	6143      	str	r3, [r0, #20]
 80089c8:	2201      	movs	r2, #1
 80089ca:	2300      	movs	r3, #0
 80089cc:	6102      	str	r2, [r0, #16]
 80089ce:	4606      	mov	r6, r0
 80089d0:	64b8      	str	r0, [r7, #72]	; 0x48
 80089d2:	6003      	str	r3, [r0, #0]
 80089d4:	e7be      	b.n	8008954 <__pow5mult+0x18>
 80089d6:	bf00      	nop
 80089d8:	08009c50 	.word	0x08009c50

080089dc <__lshift>:
 80089dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80089e0:	4691      	mov	r9, r2
 80089e2:	690a      	ldr	r2, [r1, #16]
 80089e4:	460e      	mov	r6, r1
 80089e6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80089ea:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80089ee:	eb04 0802 	add.w	r8, r4, r2
 80089f2:	f108 0501 	add.w	r5, r8, #1
 80089f6:	429d      	cmp	r5, r3
 80089f8:	4607      	mov	r7, r0
 80089fa:	dd04      	ble.n	8008a06 <__lshift+0x2a>
 80089fc:	005b      	lsls	r3, r3, #1
 80089fe:	429d      	cmp	r5, r3
 8008a00:	f101 0101 	add.w	r1, r1, #1
 8008a04:	dcfa      	bgt.n	80089fc <__lshift+0x20>
 8008a06:	4638      	mov	r0, r7
 8008a08:	f7ff fe28 	bl	800865c <_Balloc>
 8008a0c:	2c00      	cmp	r4, #0
 8008a0e:	f100 0314 	add.w	r3, r0, #20
 8008a12:	dd37      	ble.n	8008a84 <__lshift+0xa8>
 8008a14:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008a18:	2200      	movs	r2, #0
 8008a1a:	f843 2b04 	str.w	r2, [r3], #4
 8008a1e:	428b      	cmp	r3, r1
 8008a20:	d1fb      	bne.n	8008a1a <__lshift+0x3e>
 8008a22:	6934      	ldr	r4, [r6, #16]
 8008a24:	f106 0314 	add.w	r3, r6, #20
 8008a28:	f019 091f 	ands.w	r9, r9, #31
 8008a2c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8008a30:	d020      	beq.n	8008a74 <__lshift+0x98>
 8008a32:	f1c9 0e20 	rsb	lr, r9, #32
 8008a36:	2200      	movs	r2, #0
 8008a38:	e000      	b.n	8008a3c <__lshift+0x60>
 8008a3a:	4651      	mov	r1, sl
 8008a3c:	681c      	ldr	r4, [r3, #0]
 8008a3e:	468a      	mov	sl, r1
 8008a40:	fa04 f409 	lsl.w	r4, r4, r9
 8008a44:	4314      	orrs	r4, r2
 8008a46:	f84a 4b04 	str.w	r4, [sl], #4
 8008a4a:	f853 2b04 	ldr.w	r2, [r3], #4
 8008a4e:	4563      	cmp	r3, ip
 8008a50:	fa22 f20e 	lsr.w	r2, r2, lr
 8008a54:	d3f1      	bcc.n	8008a3a <__lshift+0x5e>
 8008a56:	604a      	str	r2, [r1, #4]
 8008a58:	b10a      	cbz	r2, 8008a5e <__lshift+0x82>
 8008a5a:	f108 0502 	add.w	r5, r8, #2
 8008a5e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008a60:	6872      	ldr	r2, [r6, #4]
 8008a62:	3d01      	subs	r5, #1
 8008a64:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008a68:	6105      	str	r5, [r0, #16]
 8008a6a:	6031      	str	r1, [r6, #0]
 8008a6c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8008a70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008a74:	3904      	subs	r1, #4
 8008a76:	f853 2b04 	ldr.w	r2, [r3], #4
 8008a7a:	f841 2f04 	str.w	r2, [r1, #4]!
 8008a7e:	459c      	cmp	ip, r3
 8008a80:	d8f9      	bhi.n	8008a76 <__lshift+0x9a>
 8008a82:	e7ec      	b.n	8008a5e <__lshift+0x82>
 8008a84:	4619      	mov	r1, r3
 8008a86:	e7cc      	b.n	8008a22 <__lshift+0x46>

08008a88 <__mcmp>:
 8008a88:	b430      	push	{r4, r5}
 8008a8a:	690b      	ldr	r3, [r1, #16]
 8008a8c:	4605      	mov	r5, r0
 8008a8e:	6900      	ldr	r0, [r0, #16]
 8008a90:	1ac0      	subs	r0, r0, r3
 8008a92:	d10f      	bne.n	8008ab4 <__mcmp+0x2c>
 8008a94:	009b      	lsls	r3, r3, #2
 8008a96:	3514      	adds	r5, #20
 8008a98:	3114      	adds	r1, #20
 8008a9a:	4419      	add	r1, r3
 8008a9c:	442b      	add	r3, r5
 8008a9e:	e001      	b.n	8008aa4 <__mcmp+0x1c>
 8008aa0:	429d      	cmp	r5, r3
 8008aa2:	d207      	bcs.n	8008ab4 <__mcmp+0x2c>
 8008aa4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8008aa8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8008aac:	4294      	cmp	r4, r2
 8008aae:	d0f7      	beq.n	8008aa0 <__mcmp+0x18>
 8008ab0:	d302      	bcc.n	8008ab8 <__mcmp+0x30>
 8008ab2:	2001      	movs	r0, #1
 8008ab4:	bc30      	pop	{r4, r5}
 8008ab6:	4770      	bx	lr
 8008ab8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008abc:	e7fa      	b.n	8008ab4 <__mcmp+0x2c>
 8008abe:	bf00      	nop

08008ac0 <__mdiff>:
 8008ac0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008ac4:	6913      	ldr	r3, [r2, #16]
 8008ac6:	690d      	ldr	r5, [r1, #16]
 8008ac8:	1aed      	subs	r5, r5, r3
 8008aca:	2d00      	cmp	r5, #0
 8008acc:	460e      	mov	r6, r1
 8008ace:	4690      	mov	r8, r2
 8008ad0:	f101 0414 	add.w	r4, r1, #20
 8008ad4:	f102 0714 	add.w	r7, r2, #20
 8008ad8:	d114      	bne.n	8008b04 <__mdiff+0x44>
 8008ada:	009b      	lsls	r3, r3, #2
 8008adc:	18e2      	adds	r2, r4, r3
 8008ade:	443b      	add	r3, r7
 8008ae0:	e001      	b.n	8008ae6 <__mdiff+0x26>
 8008ae2:	42a2      	cmp	r2, r4
 8008ae4:	d959      	bls.n	8008b9a <__mdiff+0xda>
 8008ae6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8008aea:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8008aee:	458c      	cmp	ip, r1
 8008af0:	d0f7      	beq.n	8008ae2 <__mdiff+0x22>
 8008af2:	d209      	bcs.n	8008b08 <__mdiff+0x48>
 8008af4:	4622      	mov	r2, r4
 8008af6:	4633      	mov	r3, r6
 8008af8:	463c      	mov	r4, r7
 8008afa:	4646      	mov	r6, r8
 8008afc:	4617      	mov	r7, r2
 8008afe:	4698      	mov	r8, r3
 8008b00:	2501      	movs	r5, #1
 8008b02:	e001      	b.n	8008b08 <__mdiff+0x48>
 8008b04:	dbf6      	blt.n	8008af4 <__mdiff+0x34>
 8008b06:	2500      	movs	r5, #0
 8008b08:	6871      	ldr	r1, [r6, #4]
 8008b0a:	f7ff fda7 	bl	800865c <_Balloc>
 8008b0e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8008b12:	6936      	ldr	r6, [r6, #16]
 8008b14:	60c5      	str	r5, [r0, #12]
 8008b16:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8008b1a:	46bc      	mov	ip, r7
 8008b1c:	f100 0514 	add.w	r5, r0, #20
 8008b20:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8008b24:	2300      	movs	r3, #0
 8008b26:	f85c 1b04 	ldr.w	r1, [ip], #4
 8008b2a:	f854 8b04 	ldr.w	r8, [r4], #4
 8008b2e:	b28a      	uxth	r2, r1
 8008b30:	fa13 f388 	uxtah	r3, r3, r8
 8008b34:	0c09      	lsrs	r1, r1, #16
 8008b36:	1a9a      	subs	r2, r3, r2
 8008b38:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8008b3c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8008b40:	b292      	uxth	r2, r2
 8008b42:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8008b46:	45e6      	cmp	lr, ip
 8008b48:	f845 2b04 	str.w	r2, [r5], #4
 8008b4c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8008b50:	d8e9      	bhi.n	8008b26 <__mdiff+0x66>
 8008b52:	42a7      	cmp	r7, r4
 8008b54:	d917      	bls.n	8008b86 <__mdiff+0xc6>
 8008b56:	46ae      	mov	lr, r5
 8008b58:	46a4      	mov	ip, r4
 8008b5a:	f85c 2b04 	ldr.w	r2, [ip], #4
 8008b5e:	fa13 f382 	uxtah	r3, r3, r2
 8008b62:	1419      	asrs	r1, r3, #16
 8008b64:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8008b68:	b29b      	uxth	r3, r3
 8008b6a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8008b6e:	4567      	cmp	r7, ip
 8008b70:	f84e 2b04 	str.w	r2, [lr], #4
 8008b74:	ea4f 4321 	mov.w	r3, r1, asr #16
 8008b78:	d8ef      	bhi.n	8008b5a <__mdiff+0x9a>
 8008b7a:	43e4      	mvns	r4, r4
 8008b7c:	4427      	add	r7, r4
 8008b7e:	f027 0703 	bic.w	r7, r7, #3
 8008b82:	3704      	adds	r7, #4
 8008b84:	443d      	add	r5, r7
 8008b86:	3d04      	subs	r5, #4
 8008b88:	b922      	cbnz	r2, 8008b94 <__mdiff+0xd4>
 8008b8a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8008b8e:	3e01      	subs	r6, #1
 8008b90:	2b00      	cmp	r3, #0
 8008b92:	d0fa      	beq.n	8008b8a <__mdiff+0xca>
 8008b94:	6106      	str	r6, [r0, #16]
 8008b96:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008b9a:	2100      	movs	r1, #0
 8008b9c:	f7ff fd5e 	bl	800865c <_Balloc>
 8008ba0:	2201      	movs	r2, #1
 8008ba2:	2300      	movs	r3, #0
 8008ba4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8008ba8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08008bac <__d2b>:
 8008bac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8008bb0:	460f      	mov	r7, r1
 8008bb2:	b083      	sub	sp, #12
 8008bb4:	2101      	movs	r1, #1
 8008bb6:	ec55 4b10 	vmov	r4, r5, d0
 8008bba:	4616      	mov	r6, r2
 8008bbc:	f7ff fd4e 	bl	800865c <_Balloc>
 8008bc0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8008bc4:	4681      	mov	r9, r0
 8008bc6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8008bca:	f1b8 0f00 	cmp.w	r8, #0
 8008bce:	d001      	beq.n	8008bd4 <__d2b+0x28>
 8008bd0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8008bd4:	2c00      	cmp	r4, #0
 8008bd6:	9301      	str	r3, [sp, #4]
 8008bd8:	d024      	beq.n	8008c24 <__d2b+0x78>
 8008bda:	a802      	add	r0, sp, #8
 8008bdc:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008be0:	f7ff fdcc 	bl	800877c <__lo0bits>
 8008be4:	2800      	cmp	r0, #0
 8008be6:	d136      	bne.n	8008c56 <__d2b+0xaa>
 8008be8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008bec:	f8c9 2014 	str.w	r2, [r9, #20]
 8008bf0:	2b00      	cmp	r3, #0
 8008bf2:	bf0c      	ite	eq
 8008bf4:	2101      	moveq	r1, #1
 8008bf6:	2102      	movne	r1, #2
 8008bf8:	f8c9 3018 	str.w	r3, [r9, #24]
 8008bfc:	f8c9 1010 	str.w	r1, [r9, #16]
 8008c00:	f1b8 0f00 	cmp.w	r8, #0
 8008c04:	d11b      	bne.n	8008c3e <__d2b+0x92>
 8008c06:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8008c0a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8008c0e:	6038      	str	r0, [r7, #0]
 8008c10:	6918      	ldr	r0, [r3, #16]
 8008c12:	f7ff fd93 	bl	800873c <__hi0bits>
 8008c16:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8008c1a:	6030      	str	r0, [r6, #0]
 8008c1c:	4648      	mov	r0, r9
 8008c1e:	b003      	add	sp, #12
 8008c20:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008c24:	a801      	add	r0, sp, #4
 8008c26:	f7ff fda9 	bl	800877c <__lo0bits>
 8008c2a:	9b01      	ldr	r3, [sp, #4]
 8008c2c:	f8c9 3014 	str.w	r3, [r9, #20]
 8008c30:	2101      	movs	r1, #1
 8008c32:	3020      	adds	r0, #32
 8008c34:	f8c9 1010 	str.w	r1, [r9, #16]
 8008c38:	f1b8 0f00 	cmp.w	r8, #0
 8008c3c:	d0e3      	beq.n	8008c06 <__d2b+0x5a>
 8008c3e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8008c42:	eb08 0300 	add.w	r3, r8, r0
 8008c46:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8008c4a:	603b      	str	r3, [r7, #0]
 8008c4c:	6030      	str	r0, [r6, #0]
 8008c4e:	4648      	mov	r0, r9
 8008c50:	b003      	add	sp, #12
 8008c52:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008c56:	e9dd 1300 	ldrd	r1, r3, [sp]
 8008c5a:	f1c0 0220 	rsb	r2, r0, #32
 8008c5e:	fa03 f202 	lsl.w	r2, r3, r2
 8008c62:	430a      	orrs	r2, r1
 8008c64:	40c3      	lsrs	r3, r0
 8008c66:	9301      	str	r3, [sp, #4]
 8008c68:	f8c9 2014 	str.w	r2, [r9, #20]
 8008c6c:	e7c0      	b.n	8008bf0 <__d2b+0x44>
 8008c6e:	bf00      	nop

08008c70 <_realloc_r>:
 8008c70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008c74:	4692      	mov	sl, r2
 8008c76:	b083      	sub	sp, #12
 8008c78:	2900      	cmp	r1, #0
 8008c7a:	f000 80a1 	beq.w	8008dc0 <_realloc_r+0x150>
 8008c7e:	460d      	mov	r5, r1
 8008c80:	4680      	mov	r8, r0
 8008c82:	f10a 040b 	add.w	r4, sl, #11
 8008c86:	f7fc f91f 	bl	8004ec8 <__malloc_lock>
 8008c8a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8008c8e:	2c16      	cmp	r4, #22
 8008c90:	f022 0603 	bic.w	r6, r2, #3
 8008c94:	f1a5 0708 	sub.w	r7, r5, #8
 8008c98:	d83e      	bhi.n	8008d18 <_realloc_r+0xa8>
 8008c9a:	2410      	movs	r4, #16
 8008c9c:	4621      	mov	r1, r4
 8008c9e:	45a2      	cmp	sl, r4
 8008ca0:	d83f      	bhi.n	8008d22 <_realloc_r+0xb2>
 8008ca2:	428e      	cmp	r6, r1
 8008ca4:	eb07 0906 	add.w	r9, r7, r6
 8008ca8:	da74      	bge.n	8008d94 <_realloc_r+0x124>
 8008caa:	4bc7      	ldr	r3, [pc, #796]	; (8008fc8 <_realloc_r+0x358>)
 8008cac:	6898      	ldr	r0, [r3, #8]
 8008cae:	4548      	cmp	r0, r9
 8008cb0:	f000 80aa 	beq.w	8008e08 <_realloc_r+0x198>
 8008cb4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8008cb8:	f020 0301 	bic.w	r3, r0, #1
 8008cbc:	444b      	add	r3, r9
 8008cbe:	685b      	ldr	r3, [r3, #4]
 8008cc0:	07db      	lsls	r3, r3, #31
 8008cc2:	f140 8083 	bpl.w	8008dcc <_realloc_r+0x15c>
 8008cc6:	07d2      	lsls	r2, r2, #31
 8008cc8:	d534      	bpl.n	8008d34 <_realloc_r+0xc4>
 8008cca:	4651      	mov	r1, sl
 8008ccc:	4640      	mov	r0, r8
 8008cce:	f7fb fe0d 	bl	80048ec <_malloc_r>
 8008cd2:	4682      	mov	sl, r0
 8008cd4:	b1e0      	cbz	r0, 8008d10 <_realloc_r+0xa0>
 8008cd6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008cda:	f023 0301 	bic.w	r3, r3, #1
 8008cde:	443b      	add	r3, r7
 8008ce0:	f1a0 0208 	sub.w	r2, r0, #8
 8008ce4:	4293      	cmp	r3, r2
 8008ce6:	f000 80f9 	beq.w	8008edc <_realloc_r+0x26c>
 8008cea:	1f32      	subs	r2, r6, #4
 8008cec:	2a24      	cmp	r2, #36	; 0x24
 8008cee:	f200 8107 	bhi.w	8008f00 <_realloc_r+0x290>
 8008cf2:	2a13      	cmp	r2, #19
 8008cf4:	6829      	ldr	r1, [r5, #0]
 8008cf6:	f200 80e6 	bhi.w	8008ec6 <_realloc_r+0x256>
 8008cfa:	4603      	mov	r3, r0
 8008cfc:	462a      	mov	r2, r5
 8008cfe:	6019      	str	r1, [r3, #0]
 8008d00:	6851      	ldr	r1, [r2, #4]
 8008d02:	6059      	str	r1, [r3, #4]
 8008d04:	6892      	ldr	r2, [r2, #8]
 8008d06:	609a      	str	r2, [r3, #8]
 8008d08:	4629      	mov	r1, r5
 8008d0a:	4640      	mov	r0, r8
 8008d0c:	f7ff f918 	bl	8007f40 <_free_r>
 8008d10:	4640      	mov	r0, r8
 8008d12:	f7fc f8df 	bl	8004ed4 <__malloc_unlock>
 8008d16:	e04f      	b.n	8008db8 <_realloc_r+0x148>
 8008d18:	f024 0407 	bic.w	r4, r4, #7
 8008d1c:	2c00      	cmp	r4, #0
 8008d1e:	4621      	mov	r1, r4
 8008d20:	dabd      	bge.n	8008c9e <_realloc_r+0x2e>
 8008d22:	f04f 0a00 	mov.w	sl, #0
 8008d26:	230c      	movs	r3, #12
 8008d28:	4650      	mov	r0, sl
 8008d2a:	f8c8 3000 	str.w	r3, [r8]
 8008d2e:	b003      	add	sp, #12
 8008d30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008d34:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008d38:	eba7 0b03 	sub.w	fp, r7, r3
 8008d3c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008d40:	f022 0203 	bic.w	r2, r2, #3
 8008d44:	18b3      	adds	r3, r6, r2
 8008d46:	428b      	cmp	r3, r1
 8008d48:	dbbf      	blt.n	8008cca <_realloc_r+0x5a>
 8008d4a:	46da      	mov	sl, fp
 8008d4c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008d50:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008d54:	1f32      	subs	r2, r6, #4
 8008d56:	2a24      	cmp	r2, #36	; 0x24
 8008d58:	60c1      	str	r1, [r0, #12]
 8008d5a:	eb0b 0903 	add.w	r9, fp, r3
 8008d5e:	6088      	str	r0, [r1, #8]
 8008d60:	f200 80c6 	bhi.w	8008ef0 <_realloc_r+0x280>
 8008d64:	2a13      	cmp	r2, #19
 8008d66:	6829      	ldr	r1, [r5, #0]
 8008d68:	f240 80c0 	bls.w	8008eec <_realloc_r+0x27c>
 8008d6c:	f8cb 1008 	str.w	r1, [fp, #8]
 8008d70:	6869      	ldr	r1, [r5, #4]
 8008d72:	f8cb 100c 	str.w	r1, [fp, #12]
 8008d76:	2a1b      	cmp	r2, #27
 8008d78:	68a9      	ldr	r1, [r5, #8]
 8008d7a:	f200 80d8 	bhi.w	8008f2e <_realloc_r+0x2be>
 8008d7e:	f10b 0210 	add.w	r2, fp, #16
 8008d82:	3508      	adds	r5, #8
 8008d84:	6011      	str	r1, [r2, #0]
 8008d86:	6869      	ldr	r1, [r5, #4]
 8008d88:	6051      	str	r1, [r2, #4]
 8008d8a:	68a9      	ldr	r1, [r5, #8]
 8008d8c:	6091      	str	r1, [r2, #8]
 8008d8e:	461e      	mov	r6, r3
 8008d90:	465f      	mov	r7, fp
 8008d92:	4655      	mov	r5, sl
 8008d94:	687b      	ldr	r3, [r7, #4]
 8008d96:	1b32      	subs	r2, r6, r4
 8008d98:	2a0f      	cmp	r2, #15
 8008d9a:	f003 0301 	and.w	r3, r3, #1
 8008d9e:	d822      	bhi.n	8008de6 <_realloc_r+0x176>
 8008da0:	4333      	orrs	r3, r6
 8008da2:	607b      	str	r3, [r7, #4]
 8008da4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008da8:	f043 0301 	orr.w	r3, r3, #1
 8008dac:	f8c9 3004 	str.w	r3, [r9, #4]
 8008db0:	4640      	mov	r0, r8
 8008db2:	f7fc f88f 	bl	8004ed4 <__malloc_unlock>
 8008db6:	46aa      	mov	sl, r5
 8008db8:	4650      	mov	r0, sl
 8008dba:	b003      	add	sp, #12
 8008dbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008dc0:	4611      	mov	r1, r2
 8008dc2:	b003      	add	sp, #12
 8008dc4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008dc8:	f7fb bd90 	b.w	80048ec <_malloc_r>
 8008dcc:	f020 0003 	bic.w	r0, r0, #3
 8008dd0:	1833      	adds	r3, r6, r0
 8008dd2:	428b      	cmp	r3, r1
 8008dd4:	db61      	blt.n	8008e9a <_realloc_r+0x22a>
 8008dd6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008dda:	461e      	mov	r6, r3
 8008ddc:	60ca      	str	r2, [r1, #12]
 8008dde:	eb07 0903 	add.w	r9, r7, r3
 8008de2:	6091      	str	r1, [r2, #8]
 8008de4:	e7d6      	b.n	8008d94 <_realloc_r+0x124>
 8008de6:	1939      	adds	r1, r7, r4
 8008de8:	4323      	orrs	r3, r4
 8008dea:	f042 0201 	orr.w	r2, r2, #1
 8008dee:	607b      	str	r3, [r7, #4]
 8008df0:	604a      	str	r2, [r1, #4]
 8008df2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008df6:	f043 0301 	orr.w	r3, r3, #1
 8008dfa:	3108      	adds	r1, #8
 8008dfc:	f8c9 3004 	str.w	r3, [r9, #4]
 8008e00:	4640      	mov	r0, r8
 8008e02:	f7ff f89d 	bl	8007f40 <_free_r>
 8008e06:	e7d3      	b.n	8008db0 <_realloc_r+0x140>
 8008e08:	6840      	ldr	r0, [r0, #4]
 8008e0a:	f020 0903 	bic.w	r9, r0, #3
 8008e0e:	44b1      	add	r9, r6
 8008e10:	f104 0010 	add.w	r0, r4, #16
 8008e14:	4581      	cmp	r9, r0
 8008e16:	da77      	bge.n	8008f08 <_realloc_r+0x298>
 8008e18:	07d2      	lsls	r2, r2, #31
 8008e1a:	f53f af56 	bmi.w	8008cca <_realloc_r+0x5a>
 8008e1e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8008e22:	eba7 0b02 	sub.w	fp, r7, r2
 8008e26:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008e2a:	f022 0203 	bic.w	r2, r2, #3
 8008e2e:	4491      	add	r9, r2
 8008e30:	4548      	cmp	r0, r9
 8008e32:	dc87      	bgt.n	8008d44 <_realloc_r+0xd4>
 8008e34:	46da      	mov	sl, fp
 8008e36:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008e3a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008e3e:	1f32      	subs	r2, r6, #4
 8008e40:	2a24      	cmp	r2, #36	; 0x24
 8008e42:	60c1      	str	r1, [r0, #12]
 8008e44:	6088      	str	r0, [r1, #8]
 8008e46:	f200 80a1 	bhi.w	8008f8c <_realloc_r+0x31c>
 8008e4a:	2a13      	cmp	r2, #19
 8008e4c:	6829      	ldr	r1, [r5, #0]
 8008e4e:	f240 809b 	bls.w	8008f88 <_realloc_r+0x318>
 8008e52:	f8cb 1008 	str.w	r1, [fp, #8]
 8008e56:	6869      	ldr	r1, [r5, #4]
 8008e58:	f8cb 100c 	str.w	r1, [fp, #12]
 8008e5c:	2a1b      	cmp	r2, #27
 8008e5e:	68a9      	ldr	r1, [r5, #8]
 8008e60:	f200 809b 	bhi.w	8008f9a <_realloc_r+0x32a>
 8008e64:	f10b 0210 	add.w	r2, fp, #16
 8008e68:	3508      	adds	r5, #8
 8008e6a:	6011      	str	r1, [r2, #0]
 8008e6c:	6869      	ldr	r1, [r5, #4]
 8008e6e:	6051      	str	r1, [r2, #4]
 8008e70:	68a9      	ldr	r1, [r5, #8]
 8008e72:	6091      	str	r1, [r2, #8]
 8008e74:	eb0b 0104 	add.w	r1, fp, r4
 8008e78:	eba9 0204 	sub.w	r2, r9, r4
 8008e7c:	f042 0201 	orr.w	r2, r2, #1
 8008e80:	6099      	str	r1, [r3, #8]
 8008e82:	604a      	str	r2, [r1, #4]
 8008e84:	f8db 3004 	ldr.w	r3, [fp, #4]
 8008e88:	f003 0301 	and.w	r3, r3, #1
 8008e8c:	431c      	orrs	r4, r3
 8008e8e:	4640      	mov	r0, r8
 8008e90:	f8cb 4004 	str.w	r4, [fp, #4]
 8008e94:	f7fc f81e 	bl	8004ed4 <__malloc_unlock>
 8008e98:	e78e      	b.n	8008db8 <_realloc_r+0x148>
 8008e9a:	07d3      	lsls	r3, r2, #31
 8008e9c:	f53f af15 	bmi.w	8008cca <_realloc_r+0x5a>
 8008ea0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008ea4:	eba7 0b03 	sub.w	fp, r7, r3
 8008ea8:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008eac:	f022 0203 	bic.w	r2, r2, #3
 8008eb0:	4410      	add	r0, r2
 8008eb2:	1983      	adds	r3, r0, r6
 8008eb4:	428b      	cmp	r3, r1
 8008eb6:	f6ff af45 	blt.w	8008d44 <_realloc_r+0xd4>
 8008eba:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008ebe:	46da      	mov	sl, fp
 8008ec0:	60ca      	str	r2, [r1, #12]
 8008ec2:	6091      	str	r1, [r2, #8]
 8008ec4:	e742      	b.n	8008d4c <_realloc_r+0xdc>
 8008ec6:	6001      	str	r1, [r0, #0]
 8008ec8:	686b      	ldr	r3, [r5, #4]
 8008eca:	6043      	str	r3, [r0, #4]
 8008ecc:	2a1b      	cmp	r2, #27
 8008ece:	d83a      	bhi.n	8008f46 <_realloc_r+0x2d6>
 8008ed0:	f105 0208 	add.w	r2, r5, #8
 8008ed4:	f100 0308 	add.w	r3, r0, #8
 8008ed8:	68a9      	ldr	r1, [r5, #8]
 8008eda:	e710      	b.n	8008cfe <_realloc_r+0x8e>
 8008edc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008ee0:	f023 0303 	bic.w	r3, r3, #3
 8008ee4:	441e      	add	r6, r3
 8008ee6:	eb07 0906 	add.w	r9, r7, r6
 8008eea:	e753      	b.n	8008d94 <_realloc_r+0x124>
 8008eec:	4652      	mov	r2, sl
 8008eee:	e749      	b.n	8008d84 <_realloc_r+0x114>
 8008ef0:	4629      	mov	r1, r5
 8008ef2:	4650      	mov	r0, sl
 8008ef4:	461e      	mov	r6, r3
 8008ef6:	465f      	mov	r7, fp
 8008ef8:	f7ff fb4c 	bl	8008594 <memmove>
 8008efc:	4655      	mov	r5, sl
 8008efe:	e749      	b.n	8008d94 <_realloc_r+0x124>
 8008f00:	4629      	mov	r1, r5
 8008f02:	f7ff fb47 	bl	8008594 <memmove>
 8008f06:	e6ff      	b.n	8008d08 <_realloc_r+0x98>
 8008f08:	4427      	add	r7, r4
 8008f0a:	eba9 0904 	sub.w	r9, r9, r4
 8008f0e:	f049 0201 	orr.w	r2, r9, #1
 8008f12:	609f      	str	r7, [r3, #8]
 8008f14:	607a      	str	r2, [r7, #4]
 8008f16:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008f1a:	f003 0301 	and.w	r3, r3, #1
 8008f1e:	431c      	orrs	r4, r3
 8008f20:	4640      	mov	r0, r8
 8008f22:	f845 4c04 	str.w	r4, [r5, #-4]
 8008f26:	f7fb ffd5 	bl	8004ed4 <__malloc_unlock>
 8008f2a:	46aa      	mov	sl, r5
 8008f2c:	e744      	b.n	8008db8 <_realloc_r+0x148>
 8008f2e:	f8cb 1010 	str.w	r1, [fp, #16]
 8008f32:	68e9      	ldr	r1, [r5, #12]
 8008f34:	f8cb 1014 	str.w	r1, [fp, #20]
 8008f38:	2a24      	cmp	r2, #36	; 0x24
 8008f3a:	d010      	beq.n	8008f5e <_realloc_r+0x2ee>
 8008f3c:	6929      	ldr	r1, [r5, #16]
 8008f3e:	f10b 0218 	add.w	r2, fp, #24
 8008f42:	3510      	adds	r5, #16
 8008f44:	e71e      	b.n	8008d84 <_realloc_r+0x114>
 8008f46:	68ab      	ldr	r3, [r5, #8]
 8008f48:	6083      	str	r3, [r0, #8]
 8008f4a:	68eb      	ldr	r3, [r5, #12]
 8008f4c:	60c3      	str	r3, [r0, #12]
 8008f4e:	2a24      	cmp	r2, #36	; 0x24
 8008f50:	d010      	beq.n	8008f74 <_realloc_r+0x304>
 8008f52:	f105 0210 	add.w	r2, r5, #16
 8008f56:	f100 0310 	add.w	r3, r0, #16
 8008f5a:	6929      	ldr	r1, [r5, #16]
 8008f5c:	e6cf      	b.n	8008cfe <_realloc_r+0x8e>
 8008f5e:	692a      	ldr	r2, [r5, #16]
 8008f60:	f8cb 2018 	str.w	r2, [fp, #24]
 8008f64:	696a      	ldr	r2, [r5, #20]
 8008f66:	f8cb 201c 	str.w	r2, [fp, #28]
 8008f6a:	69a9      	ldr	r1, [r5, #24]
 8008f6c:	f10b 0220 	add.w	r2, fp, #32
 8008f70:	3518      	adds	r5, #24
 8008f72:	e707      	b.n	8008d84 <_realloc_r+0x114>
 8008f74:	692b      	ldr	r3, [r5, #16]
 8008f76:	6103      	str	r3, [r0, #16]
 8008f78:	696b      	ldr	r3, [r5, #20]
 8008f7a:	6143      	str	r3, [r0, #20]
 8008f7c:	69a9      	ldr	r1, [r5, #24]
 8008f7e:	f105 0218 	add.w	r2, r5, #24
 8008f82:	f100 0318 	add.w	r3, r0, #24
 8008f86:	e6ba      	b.n	8008cfe <_realloc_r+0x8e>
 8008f88:	4652      	mov	r2, sl
 8008f8a:	e76e      	b.n	8008e6a <_realloc_r+0x1fa>
 8008f8c:	4629      	mov	r1, r5
 8008f8e:	4650      	mov	r0, sl
 8008f90:	9301      	str	r3, [sp, #4]
 8008f92:	f7ff faff 	bl	8008594 <memmove>
 8008f96:	9b01      	ldr	r3, [sp, #4]
 8008f98:	e76c      	b.n	8008e74 <_realloc_r+0x204>
 8008f9a:	f8cb 1010 	str.w	r1, [fp, #16]
 8008f9e:	68e9      	ldr	r1, [r5, #12]
 8008fa0:	f8cb 1014 	str.w	r1, [fp, #20]
 8008fa4:	2a24      	cmp	r2, #36	; 0x24
 8008fa6:	d004      	beq.n	8008fb2 <_realloc_r+0x342>
 8008fa8:	6929      	ldr	r1, [r5, #16]
 8008faa:	f10b 0218 	add.w	r2, fp, #24
 8008fae:	3510      	adds	r5, #16
 8008fb0:	e75b      	b.n	8008e6a <_realloc_r+0x1fa>
 8008fb2:	692a      	ldr	r2, [r5, #16]
 8008fb4:	f8cb 2018 	str.w	r2, [fp, #24]
 8008fb8:	696a      	ldr	r2, [r5, #20]
 8008fba:	f8cb 201c 	str.w	r2, [fp, #28]
 8008fbe:	69a9      	ldr	r1, [r5, #24]
 8008fc0:	f10b 0220 	add.w	r2, fp, #32
 8008fc4:	3518      	adds	r5, #24
 8008fc6:	e750      	b.n	8008e6a <_realloc_r+0x1fa>
 8008fc8:	20000460 	.word	0x20000460

08008fcc <frexp>:
 8008fcc:	ec53 2b10 	vmov	r2, r3, d0
 8008fd0:	b570      	push	{r4, r5, r6, lr}
 8008fd2:	4e16      	ldr	r6, [pc, #88]	; (800902c <frexp+0x60>)
 8008fd4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8008fd8:	2500      	movs	r5, #0
 8008fda:	42b1      	cmp	r1, r6
 8008fdc:	4604      	mov	r4, r0
 8008fde:	6005      	str	r5, [r0, #0]
 8008fe0:	dc21      	bgt.n	8009026 <frexp+0x5a>
 8008fe2:	ee10 6a10 	vmov	r6, s0
 8008fe6:	430e      	orrs	r6, r1
 8008fe8:	d01d      	beq.n	8009026 <frexp+0x5a>
 8008fea:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8008fee:	4618      	mov	r0, r3
 8008ff0:	da0c      	bge.n	800900c <frexp+0x40>
 8008ff2:	4619      	mov	r1, r3
 8008ff4:	2200      	movs	r2, #0
 8008ff6:	ee10 0a10 	vmov	r0, s0
 8008ffa:	4b0d      	ldr	r3, [pc, #52]	; (8009030 <frexp+0x64>)
 8008ffc:	f7f7 fabc 	bl	8000578 <__aeabi_dmul>
 8009000:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8009004:	4602      	mov	r2, r0
 8009006:	4608      	mov	r0, r1
 8009008:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800900c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8009010:	1509      	asrs	r1, r1, #20
 8009012:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8009016:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800901a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800901e:	4429      	add	r1, r5
 8009020:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8009024:	6021      	str	r1, [r4, #0]
 8009026:	ec43 2b10 	vmov	d0, r2, r3
 800902a:	bd70      	pop	{r4, r5, r6, pc}
 800902c:	7fefffff 	.word	0x7fefffff
 8009030:	43500000 	.word	0x43500000

08009034 <__sread>:
 8009034:	b510      	push	{r4, lr}
 8009036:	460c      	mov	r4, r1
 8009038:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800903c:	f000 fabc 	bl	80095b8 <_read_r>
 8009040:	2800      	cmp	r0, #0
 8009042:	db03      	blt.n	800904c <__sread+0x18>
 8009044:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8009046:	4403      	add	r3, r0
 8009048:	6523      	str	r3, [r4, #80]	; 0x50
 800904a:	bd10      	pop	{r4, pc}
 800904c:	89a3      	ldrh	r3, [r4, #12]
 800904e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8009052:	81a3      	strh	r3, [r4, #12]
 8009054:	bd10      	pop	{r4, pc}
 8009056:	bf00      	nop

08009058 <__swrite>:
 8009058:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800905c:	4616      	mov	r6, r2
 800905e:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8009062:	461f      	mov	r7, r3
 8009064:	05d3      	lsls	r3, r2, #23
 8009066:	460c      	mov	r4, r1
 8009068:	4605      	mov	r5, r0
 800906a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800906e:	d507      	bpl.n	8009080 <__swrite+0x28>
 8009070:	2200      	movs	r2, #0
 8009072:	2302      	movs	r3, #2
 8009074:	f000 fa74 	bl	8009560 <_lseek_r>
 8009078:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800907c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009080:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8009084:	81a2      	strh	r2, [r4, #12]
 8009086:	463b      	mov	r3, r7
 8009088:	4632      	mov	r2, r6
 800908a:	4628      	mov	r0, r5
 800908c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8009090:	f000 b88c 	b.w	80091ac <_write_r>

08009094 <__sseek>:
 8009094:	b510      	push	{r4, lr}
 8009096:	460c      	mov	r4, r1
 8009098:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800909c:	f000 fa60 	bl	8009560 <_lseek_r>
 80090a0:	89a3      	ldrh	r3, [r4, #12]
 80090a2:	1c42      	adds	r2, r0, #1
 80090a4:	bf0e      	itee	eq
 80090a6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80090aa:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80090ae:	6520      	strne	r0, [r4, #80]	; 0x50
 80090b0:	81a3      	strh	r3, [r4, #12]
 80090b2:	bd10      	pop	{r4, pc}

080090b4 <__sclose>:
 80090b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80090b8:	f000 b922 	b.w	8009300 <_close_r>

080090bc <strncpy>:
 80090bc:	ea40 0301 	orr.w	r3, r0, r1
 80090c0:	079b      	lsls	r3, r3, #30
 80090c2:	b470      	push	{r4, r5, r6}
 80090c4:	d12a      	bne.n	800911c <strncpy+0x60>
 80090c6:	2a03      	cmp	r2, #3
 80090c8:	d928      	bls.n	800911c <strncpy+0x60>
 80090ca:	460c      	mov	r4, r1
 80090cc:	4603      	mov	r3, r0
 80090ce:	4621      	mov	r1, r4
 80090d0:	f854 6b04 	ldr.w	r6, [r4], #4
 80090d4:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80090d8:	ea25 0506 	bic.w	r5, r5, r6
 80090dc:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80090e0:	d106      	bne.n	80090f0 <strncpy+0x34>
 80090e2:	3a04      	subs	r2, #4
 80090e4:	2a03      	cmp	r2, #3
 80090e6:	f843 6b04 	str.w	r6, [r3], #4
 80090ea:	4621      	mov	r1, r4
 80090ec:	d8ef      	bhi.n	80090ce <strncpy+0x12>
 80090ee:	b19a      	cbz	r2, 8009118 <strncpy+0x5c>
 80090f0:	780c      	ldrb	r4, [r1, #0]
 80090f2:	701c      	strb	r4, [r3, #0]
 80090f4:	3a01      	subs	r2, #1
 80090f6:	3301      	adds	r3, #1
 80090f8:	b13c      	cbz	r4, 800910a <strncpy+0x4e>
 80090fa:	b16a      	cbz	r2, 8009118 <strncpy+0x5c>
 80090fc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8009100:	f803 4b01 	strb.w	r4, [r3], #1
 8009104:	3a01      	subs	r2, #1
 8009106:	2c00      	cmp	r4, #0
 8009108:	d1f7      	bne.n	80090fa <strncpy+0x3e>
 800910a:	b12a      	cbz	r2, 8009118 <strncpy+0x5c>
 800910c:	441a      	add	r2, r3
 800910e:	2100      	movs	r1, #0
 8009110:	f803 1b01 	strb.w	r1, [r3], #1
 8009114:	4293      	cmp	r3, r2
 8009116:	d1fb      	bne.n	8009110 <strncpy+0x54>
 8009118:	bc70      	pop	{r4, r5, r6}
 800911a:	4770      	bx	lr
 800911c:	4603      	mov	r3, r0
 800911e:	e7e6      	b.n	80090ee <strncpy+0x32>

08009120 <__sprint_r.part.0>:
 8009120:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009124:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8009126:	049c      	lsls	r4, r3, #18
 8009128:	4692      	mov	sl, r2
 800912a:	d52d      	bpl.n	8009188 <__sprint_r.part.0+0x68>
 800912c:	6893      	ldr	r3, [r2, #8]
 800912e:	6812      	ldr	r2, [r2, #0]
 8009130:	b343      	cbz	r3, 8009184 <__sprint_r.part.0+0x64>
 8009132:	460e      	mov	r6, r1
 8009134:	4607      	mov	r7, r0
 8009136:	f102 0908 	add.w	r9, r2, #8
 800913a:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800913e:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8009142:	d015      	beq.n	8009170 <__sprint_r.part.0+0x50>
 8009144:	3d04      	subs	r5, #4
 8009146:	2400      	movs	r4, #0
 8009148:	e001      	b.n	800914e <__sprint_r.part.0+0x2e>
 800914a:	45a0      	cmp	r8, r4
 800914c:	d00e      	beq.n	800916c <__sprint_r.part.0+0x4c>
 800914e:	4632      	mov	r2, r6
 8009150:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8009154:	4638      	mov	r0, r7
 8009156:	f000 f99d 	bl	8009494 <_fputwc_r>
 800915a:	1c43      	adds	r3, r0, #1
 800915c:	f104 0401 	add.w	r4, r4, #1
 8009160:	d1f3      	bne.n	800914a <__sprint_r.part.0+0x2a>
 8009162:	2300      	movs	r3, #0
 8009164:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009168:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800916c:	f8da 3008 	ldr.w	r3, [sl, #8]
 8009170:	f02b 0b03 	bic.w	fp, fp, #3
 8009174:	eba3 030b 	sub.w	r3, r3, fp
 8009178:	f8ca 3008 	str.w	r3, [sl, #8]
 800917c:	f109 0908 	add.w	r9, r9, #8
 8009180:	2b00      	cmp	r3, #0
 8009182:	d1da      	bne.n	800913a <__sprint_r.part.0+0x1a>
 8009184:	2000      	movs	r0, #0
 8009186:	e7ec      	b.n	8009162 <__sprint_r.part.0+0x42>
 8009188:	f7fe ffce 	bl	8008128 <__sfvwrite_r>
 800918c:	2300      	movs	r3, #0
 800918e:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009192:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009196:	bf00      	nop

08009198 <__sprint_r>:
 8009198:	6893      	ldr	r3, [r2, #8]
 800919a:	b10b      	cbz	r3, 80091a0 <__sprint_r+0x8>
 800919c:	f7ff bfc0 	b.w	8009120 <__sprint_r.part.0>
 80091a0:	b410      	push	{r4}
 80091a2:	4618      	mov	r0, r3
 80091a4:	6053      	str	r3, [r2, #4]
 80091a6:	f85d 4b04 	ldr.w	r4, [sp], #4
 80091aa:	4770      	bx	lr

080091ac <_write_r>:
 80091ac:	b570      	push	{r4, r5, r6, lr}
 80091ae:	460d      	mov	r5, r1
 80091b0:	4c08      	ldr	r4, [pc, #32]	; (80091d4 <_write_r+0x28>)
 80091b2:	4611      	mov	r1, r2
 80091b4:	4606      	mov	r6, r0
 80091b6:	461a      	mov	r2, r3
 80091b8:	4628      	mov	r0, r5
 80091ba:	2300      	movs	r3, #0
 80091bc:	6023      	str	r3, [r4, #0]
 80091be:	f7fb faa2 	bl	8004706 <_write>
 80091c2:	1c43      	adds	r3, r0, #1
 80091c4:	d000      	beq.n	80091c8 <_write_r+0x1c>
 80091c6:	bd70      	pop	{r4, r5, r6, pc}
 80091c8:	6823      	ldr	r3, [r4, #0]
 80091ca:	2b00      	cmp	r3, #0
 80091cc:	d0fb      	beq.n	80091c6 <_write_r+0x1a>
 80091ce:	6033      	str	r3, [r6, #0]
 80091d0:	bd70      	pop	{r4, r5, r6, pc}
 80091d2:	bf00      	nop
 80091d4:	20001454 	.word	0x20001454

080091d8 <__register_exitproc>:
 80091d8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80091dc:	4d2b      	ldr	r5, [pc, #172]	; (800928c <__register_exitproc+0xb4>)
 80091de:	4606      	mov	r6, r0
 80091e0:	6828      	ldr	r0, [r5, #0]
 80091e2:	4698      	mov	r8, r3
 80091e4:	460f      	mov	r7, r1
 80091e6:	4691      	mov	r9, r2
 80091e8:	f7ff f958 	bl	800849c <__retarget_lock_acquire_recursive>
 80091ec:	4b28      	ldr	r3, [pc, #160]	; (8009290 <__register_exitproc+0xb8>)
 80091ee:	681c      	ldr	r4, [r3, #0]
 80091f0:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80091f4:	2b00      	cmp	r3, #0
 80091f6:	d03d      	beq.n	8009274 <__register_exitproc+0x9c>
 80091f8:	685a      	ldr	r2, [r3, #4]
 80091fa:	2a1f      	cmp	r2, #31
 80091fc:	dc0d      	bgt.n	800921a <__register_exitproc+0x42>
 80091fe:	f102 0c01 	add.w	ip, r2, #1
 8009202:	bb16      	cbnz	r6, 800924a <__register_exitproc+0x72>
 8009204:	3202      	adds	r2, #2
 8009206:	f8c3 c004 	str.w	ip, [r3, #4]
 800920a:	6828      	ldr	r0, [r5, #0]
 800920c:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8009210:	f7ff f946 	bl	80084a0 <__retarget_lock_release_recursive>
 8009214:	2000      	movs	r0, #0
 8009216:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800921a:	4b1e      	ldr	r3, [pc, #120]	; (8009294 <__register_exitproc+0xbc>)
 800921c:	b37b      	cbz	r3, 800927e <__register_exitproc+0xa6>
 800921e:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8009222:	f7fb fb53 	bl	80048cc <malloc>
 8009226:	4603      	mov	r3, r0
 8009228:	b348      	cbz	r0, 800927e <__register_exitproc+0xa6>
 800922a:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800922e:	2100      	movs	r1, #0
 8009230:	e9c0 2100 	strd	r2, r1, [r0]
 8009234:	f04f 0c01 	mov.w	ip, #1
 8009238:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 800923c:	460a      	mov	r2, r1
 800923e:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8009242:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8009246:	2e00      	cmp	r6, #0
 8009248:	d0dc      	beq.n	8009204 <__register_exitproc+0x2c>
 800924a:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800924e:	2401      	movs	r4, #1
 8009250:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8009254:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8009258:	4094      	lsls	r4, r2
 800925a:	4320      	orrs	r0, r4
 800925c:	2e02      	cmp	r6, #2
 800925e:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8009262:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8009266:	d1cd      	bne.n	8009204 <__register_exitproc+0x2c>
 8009268:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 800926c:	430c      	orrs	r4, r1
 800926e:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8009272:	e7c7      	b.n	8009204 <__register_exitproc+0x2c>
 8009274:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8009278:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 800927c:	e7bc      	b.n	80091f8 <__register_exitproc+0x20>
 800927e:	6828      	ldr	r0, [r5, #0]
 8009280:	f7ff f90e 	bl	80084a0 <__retarget_lock_release_recursive>
 8009284:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009288:	e7c5      	b.n	8009216 <__register_exitproc+0x3e>
 800928a:	bf00      	nop
 800928c:	20000870 	.word	0x20000870
 8009290:	08009ae0 	.word	0x08009ae0
 8009294:	080048cd 	.word	0x080048cd

08009298 <_calloc_r>:
 8009298:	b510      	push	{r4, lr}
 800929a:	fb02 f101 	mul.w	r1, r2, r1
 800929e:	f7fb fb25 	bl	80048ec <_malloc_r>
 80092a2:	4604      	mov	r4, r0
 80092a4:	b1d8      	cbz	r0, 80092de <_calloc_r+0x46>
 80092a6:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80092aa:	f022 0203 	bic.w	r2, r2, #3
 80092ae:	3a04      	subs	r2, #4
 80092b0:	2a24      	cmp	r2, #36	; 0x24
 80092b2:	d81d      	bhi.n	80092f0 <_calloc_r+0x58>
 80092b4:	2a13      	cmp	r2, #19
 80092b6:	d914      	bls.n	80092e2 <_calloc_r+0x4a>
 80092b8:	2300      	movs	r3, #0
 80092ba:	2a1b      	cmp	r2, #27
 80092bc:	e9c0 3300 	strd	r3, r3, [r0]
 80092c0:	d91b      	bls.n	80092fa <_calloc_r+0x62>
 80092c2:	2a24      	cmp	r2, #36	; 0x24
 80092c4:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80092c8:	bf0a      	itet	eq
 80092ca:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80092ce:	f100 0210 	addne.w	r2, r0, #16
 80092d2:	f100 0218 	addeq.w	r2, r0, #24
 80092d6:	2300      	movs	r3, #0
 80092d8:	e9c2 3300 	strd	r3, r3, [r2]
 80092dc:	6093      	str	r3, [r2, #8]
 80092de:	4620      	mov	r0, r4
 80092e0:	bd10      	pop	{r4, pc}
 80092e2:	4602      	mov	r2, r0
 80092e4:	2300      	movs	r3, #0
 80092e6:	e9c2 3300 	strd	r3, r3, [r2]
 80092ea:	6093      	str	r3, [r2, #8]
 80092ec:	4620      	mov	r0, r4
 80092ee:	bd10      	pop	{r4, pc}
 80092f0:	2100      	movs	r1, #0
 80092f2:	f7fb fd9f 	bl	8004e34 <memset>
 80092f6:	4620      	mov	r0, r4
 80092f8:	bd10      	pop	{r4, pc}
 80092fa:	f100 0208 	add.w	r2, r0, #8
 80092fe:	e7f1      	b.n	80092e4 <_calloc_r+0x4c>

08009300 <_close_r>:
 8009300:	b538      	push	{r3, r4, r5, lr}
 8009302:	4c07      	ldr	r4, [pc, #28]	; (8009320 <_close_r+0x20>)
 8009304:	2300      	movs	r3, #0
 8009306:	4605      	mov	r5, r0
 8009308:	4608      	mov	r0, r1
 800930a:	6023      	str	r3, [r4, #0]
 800930c:	f7fb fa2a 	bl	8004764 <_close>
 8009310:	1c43      	adds	r3, r0, #1
 8009312:	d000      	beq.n	8009316 <_close_r+0x16>
 8009314:	bd38      	pop	{r3, r4, r5, pc}
 8009316:	6823      	ldr	r3, [r4, #0]
 8009318:	2b00      	cmp	r3, #0
 800931a:	d0fb      	beq.n	8009314 <_close_r+0x14>
 800931c:	602b      	str	r3, [r5, #0]
 800931e:	bd38      	pop	{r3, r4, r5, pc}
 8009320:	20001454 	.word	0x20001454

08009324 <_fclose_r>:
 8009324:	b570      	push	{r4, r5, r6, lr}
 8009326:	2900      	cmp	r1, #0
 8009328:	d048      	beq.n	80093bc <_fclose_r+0x98>
 800932a:	4605      	mov	r5, r0
 800932c:	460c      	mov	r4, r1
 800932e:	b110      	cbz	r0, 8009336 <_fclose_r+0x12>
 8009330:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009332:	2b00      	cmp	r3, #0
 8009334:	d048      	beq.n	80093c8 <_fclose_r+0xa4>
 8009336:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009338:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800933c:	07d0      	lsls	r0, r2, #31
 800933e:	d440      	bmi.n	80093c2 <_fclose_r+0x9e>
 8009340:	0599      	lsls	r1, r3, #22
 8009342:	d530      	bpl.n	80093a6 <_fclose_r+0x82>
 8009344:	4621      	mov	r1, r4
 8009346:	4628      	mov	r0, r5
 8009348:	f7fe fc52 	bl	8007bf0 <__sflush_r>
 800934c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800934e:	4606      	mov	r6, r0
 8009350:	b133      	cbz	r3, 8009360 <_fclose_r+0x3c>
 8009352:	69e1      	ldr	r1, [r4, #28]
 8009354:	4628      	mov	r0, r5
 8009356:	4798      	blx	r3
 8009358:	2800      	cmp	r0, #0
 800935a:	bfb8      	it	lt
 800935c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8009360:	89a3      	ldrh	r3, [r4, #12]
 8009362:	061a      	lsls	r2, r3, #24
 8009364:	d43c      	bmi.n	80093e0 <_fclose_r+0xbc>
 8009366:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8009368:	b141      	cbz	r1, 800937c <_fclose_r+0x58>
 800936a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800936e:	4299      	cmp	r1, r3
 8009370:	d002      	beq.n	8009378 <_fclose_r+0x54>
 8009372:	4628      	mov	r0, r5
 8009374:	f7fe fde4 	bl	8007f40 <_free_r>
 8009378:	2300      	movs	r3, #0
 800937a:	6323      	str	r3, [r4, #48]	; 0x30
 800937c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800937e:	b121      	cbz	r1, 800938a <_fclose_r+0x66>
 8009380:	4628      	mov	r0, r5
 8009382:	f7fe fddd 	bl	8007f40 <_free_r>
 8009386:	2300      	movs	r3, #0
 8009388:	6463      	str	r3, [r4, #68]	; 0x44
 800938a:	f7fe fd63 	bl	8007e54 <__sfp_lock_acquire>
 800938e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009390:	2200      	movs	r2, #0
 8009392:	07db      	lsls	r3, r3, #31
 8009394:	81a2      	strh	r2, [r4, #12]
 8009396:	d51f      	bpl.n	80093d8 <_fclose_r+0xb4>
 8009398:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800939a:	f7ff f87d 	bl	8008498 <__retarget_lock_close_recursive>
 800939e:	f7fe fd5f 	bl	8007e60 <__sfp_lock_release>
 80093a2:	4630      	mov	r0, r6
 80093a4:	bd70      	pop	{r4, r5, r6, pc}
 80093a6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80093a8:	f7ff f878 	bl	800849c <__retarget_lock_acquire_recursive>
 80093ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80093b0:	2b00      	cmp	r3, #0
 80093b2:	d1c7      	bne.n	8009344 <_fclose_r+0x20>
 80093b4:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80093b6:	f016 0601 	ands.w	r6, r6, #1
 80093ba:	d016      	beq.n	80093ea <_fclose_r+0xc6>
 80093bc:	2600      	movs	r6, #0
 80093be:	4630      	mov	r0, r6
 80093c0:	bd70      	pop	{r4, r5, r6, pc}
 80093c2:	2b00      	cmp	r3, #0
 80093c4:	d0fa      	beq.n	80093bc <_fclose_r+0x98>
 80093c6:	e7bd      	b.n	8009344 <_fclose_r+0x20>
 80093c8:	f7fe fd18 	bl	8007dfc <__sinit>
 80093cc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80093ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80093d2:	07d0      	lsls	r0, r2, #31
 80093d4:	d4f5      	bmi.n	80093c2 <_fclose_r+0x9e>
 80093d6:	e7b3      	b.n	8009340 <_fclose_r+0x1c>
 80093d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80093da:	f7ff f861 	bl	80084a0 <__retarget_lock_release_recursive>
 80093de:	e7db      	b.n	8009398 <_fclose_r+0x74>
 80093e0:	6921      	ldr	r1, [r4, #16]
 80093e2:	4628      	mov	r0, r5
 80093e4:	f7fe fdac 	bl	8007f40 <_free_r>
 80093e8:	e7bd      	b.n	8009366 <_fclose_r+0x42>
 80093ea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80093ec:	f7ff f858 	bl	80084a0 <__retarget_lock_release_recursive>
 80093f0:	4630      	mov	r0, r6
 80093f2:	bd70      	pop	{r4, r5, r6, pc}

080093f4 <__fputwc>:
 80093f4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80093f8:	b082      	sub	sp, #8
 80093fa:	4681      	mov	r9, r0
 80093fc:	4688      	mov	r8, r1
 80093fe:	4614      	mov	r4, r2
 8009400:	f000 f8a0 	bl	8009544 <__locale_mb_cur_max>
 8009404:	2801      	cmp	r0, #1
 8009406:	d103      	bne.n	8009410 <__fputwc+0x1c>
 8009408:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800940c:	2bfe      	cmp	r3, #254	; 0xfe
 800940e:	d933      	bls.n	8009478 <__fputwc+0x84>
 8009410:	4642      	mov	r2, r8
 8009412:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8009416:	a901      	add	r1, sp, #4
 8009418:	4648      	mov	r0, r9
 800941a:	f000 f93b 	bl	8009694 <_wcrtomb_r>
 800941e:	1c42      	adds	r2, r0, #1
 8009420:	4606      	mov	r6, r0
 8009422:	d02f      	beq.n	8009484 <__fputwc+0x90>
 8009424:	b320      	cbz	r0, 8009470 <__fputwc+0x7c>
 8009426:	f89d c004 	ldrb.w	ip, [sp, #4]
 800942a:	2500      	movs	r5, #0
 800942c:	f10d 0a04 	add.w	sl, sp, #4
 8009430:	e009      	b.n	8009446 <__fputwc+0x52>
 8009432:	6823      	ldr	r3, [r4, #0]
 8009434:	1c5a      	adds	r2, r3, #1
 8009436:	6022      	str	r2, [r4, #0]
 8009438:	f883 c000 	strb.w	ip, [r3]
 800943c:	3501      	adds	r5, #1
 800943e:	42b5      	cmp	r5, r6
 8009440:	d216      	bcs.n	8009470 <__fputwc+0x7c>
 8009442:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8009446:	68a3      	ldr	r3, [r4, #8]
 8009448:	3b01      	subs	r3, #1
 800944a:	2b00      	cmp	r3, #0
 800944c:	60a3      	str	r3, [r4, #8]
 800944e:	daf0      	bge.n	8009432 <__fputwc+0x3e>
 8009450:	69a7      	ldr	r7, [r4, #24]
 8009452:	42bb      	cmp	r3, r7
 8009454:	4661      	mov	r1, ip
 8009456:	4622      	mov	r2, r4
 8009458:	4648      	mov	r0, r9
 800945a:	db02      	blt.n	8009462 <__fputwc+0x6e>
 800945c:	f1bc 0f0a 	cmp.w	ip, #10
 8009460:	d1e7      	bne.n	8009432 <__fputwc+0x3e>
 8009462:	f000 f8bf 	bl	80095e4 <__swbuf_r>
 8009466:	1c43      	adds	r3, r0, #1
 8009468:	d1e8      	bne.n	800943c <__fputwc+0x48>
 800946a:	b002      	add	sp, #8
 800946c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009470:	4640      	mov	r0, r8
 8009472:	b002      	add	sp, #8
 8009474:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009478:	fa5f fc88 	uxtb.w	ip, r8
 800947c:	4606      	mov	r6, r0
 800947e:	f88d c004 	strb.w	ip, [sp, #4]
 8009482:	e7d2      	b.n	800942a <__fputwc+0x36>
 8009484:	89a3      	ldrh	r3, [r4, #12]
 8009486:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800948a:	81a3      	strh	r3, [r4, #12]
 800948c:	b002      	add	sp, #8
 800948e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009492:	bf00      	nop

08009494 <_fputwc_r>:
 8009494:	b530      	push	{r4, r5, lr}
 8009496:	4605      	mov	r5, r0
 8009498:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800949a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800949e:	07c0      	lsls	r0, r0, #31
 80094a0:	4614      	mov	r4, r2
 80094a2:	b083      	sub	sp, #12
 80094a4:	b29a      	uxth	r2, r3
 80094a6:	d401      	bmi.n	80094ac <_fputwc_r+0x18>
 80094a8:	0590      	lsls	r0, r2, #22
 80094aa:	d51c      	bpl.n	80094e6 <_fputwc_r+0x52>
 80094ac:	0490      	lsls	r0, r2, #18
 80094ae:	d406      	bmi.n	80094be <_fputwc_r+0x2a>
 80094b0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80094b2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80094b6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80094ba:	81a3      	strh	r3, [r4, #12]
 80094bc:	6662      	str	r2, [r4, #100]	; 0x64
 80094be:	4628      	mov	r0, r5
 80094c0:	4622      	mov	r2, r4
 80094c2:	f7ff ff97 	bl	80093f4 <__fputwc>
 80094c6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80094c8:	07da      	lsls	r2, r3, #31
 80094ca:	4605      	mov	r5, r0
 80094cc:	d402      	bmi.n	80094d4 <_fputwc_r+0x40>
 80094ce:	89a3      	ldrh	r3, [r4, #12]
 80094d0:	059b      	lsls	r3, r3, #22
 80094d2:	d502      	bpl.n	80094da <_fputwc_r+0x46>
 80094d4:	4628      	mov	r0, r5
 80094d6:	b003      	add	sp, #12
 80094d8:	bd30      	pop	{r4, r5, pc}
 80094da:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80094dc:	f7fe ffe0 	bl	80084a0 <__retarget_lock_release_recursive>
 80094e0:	4628      	mov	r0, r5
 80094e2:	b003      	add	sp, #12
 80094e4:	bd30      	pop	{r4, r5, pc}
 80094e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80094e8:	9101      	str	r1, [sp, #4]
 80094ea:	f7fe ffd7 	bl	800849c <__retarget_lock_acquire_recursive>
 80094ee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80094f2:	9901      	ldr	r1, [sp, #4]
 80094f4:	b29a      	uxth	r2, r3
 80094f6:	e7d9      	b.n	80094ac <_fputwc_r+0x18>

080094f8 <_fstat_r>:
 80094f8:	b538      	push	{r3, r4, r5, lr}
 80094fa:	460b      	mov	r3, r1
 80094fc:	4c07      	ldr	r4, [pc, #28]	; (800951c <_fstat_r+0x24>)
 80094fe:	4605      	mov	r5, r0
 8009500:	4611      	mov	r1, r2
 8009502:	4618      	mov	r0, r3
 8009504:	2300      	movs	r3, #0
 8009506:	6023      	str	r3, [r4, #0]
 8009508:	f7fb f92f 	bl	800476a <_fstat>
 800950c:	1c43      	adds	r3, r0, #1
 800950e:	d000      	beq.n	8009512 <_fstat_r+0x1a>
 8009510:	bd38      	pop	{r3, r4, r5, pc}
 8009512:	6823      	ldr	r3, [r4, #0]
 8009514:	2b00      	cmp	r3, #0
 8009516:	d0fb      	beq.n	8009510 <_fstat_r+0x18>
 8009518:	602b      	str	r3, [r5, #0]
 800951a:	bd38      	pop	{r3, r4, r5, pc}
 800951c:	20001454 	.word	0x20001454

08009520 <_isatty_r>:
 8009520:	b538      	push	{r3, r4, r5, lr}
 8009522:	4c07      	ldr	r4, [pc, #28]	; (8009540 <_isatty_r+0x20>)
 8009524:	2300      	movs	r3, #0
 8009526:	4605      	mov	r5, r0
 8009528:	4608      	mov	r0, r1
 800952a:	6023      	str	r3, [r4, #0]
 800952c:	f7fb f922 	bl	8004774 <_isatty>
 8009530:	1c43      	adds	r3, r0, #1
 8009532:	d000      	beq.n	8009536 <_isatty_r+0x16>
 8009534:	bd38      	pop	{r3, r4, r5, pc}
 8009536:	6823      	ldr	r3, [r4, #0]
 8009538:	2b00      	cmp	r3, #0
 800953a:	d0fb      	beq.n	8009534 <_isatty_r+0x14>
 800953c:	602b      	str	r3, [r5, #0]
 800953e:	bd38      	pop	{r3, r4, r5, pc}
 8009540:	20001454 	.word	0x20001454

08009544 <__locale_mb_cur_max>:
 8009544:	4b04      	ldr	r3, [pc, #16]	; (8009558 <__locale_mb_cur_max+0x14>)
 8009546:	4a05      	ldr	r2, [pc, #20]	; (800955c <__locale_mb_cur_max+0x18>)
 8009548:	681b      	ldr	r3, [r3, #0]
 800954a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800954c:	2b00      	cmp	r3, #0
 800954e:	bf08      	it	eq
 8009550:	4613      	moveq	r3, r2
 8009552:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8009556:	4770      	bx	lr
 8009558:	20000030 	.word	0x20000030
 800955c:	20000874 	.word	0x20000874

08009560 <_lseek_r>:
 8009560:	b570      	push	{r4, r5, r6, lr}
 8009562:	460d      	mov	r5, r1
 8009564:	4c08      	ldr	r4, [pc, #32]	; (8009588 <_lseek_r+0x28>)
 8009566:	4611      	mov	r1, r2
 8009568:	4606      	mov	r6, r0
 800956a:	461a      	mov	r2, r3
 800956c:	4628      	mov	r0, r5
 800956e:	2300      	movs	r3, #0
 8009570:	6023      	str	r3, [r4, #0]
 8009572:	f7fb f901 	bl	8004778 <_lseek>
 8009576:	1c43      	adds	r3, r0, #1
 8009578:	d000      	beq.n	800957c <_lseek_r+0x1c>
 800957a:	bd70      	pop	{r4, r5, r6, pc}
 800957c:	6823      	ldr	r3, [r4, #0]
 800957e:	2b00      	cmp	r3, #0
 8009580:	d0fb      	beq.n	800957a <_lseek_r+0x1a>
 8009582:	6033      	str	r3, [r6, #0]
 8009584:	bd70      	pop	{r4, r5, r6, pc}
 8009586:	bf00      	nop
 8009588:	20001454 	.word	0x20001454

0800958c <__ascii_mbtowc>:
 800958c:	b082      	sub	sp, #8
 800958e:	b149      	cbz	r1, 80095a4 <__ascii_mbtowc+0x18>
 8009590:	b15a      	cbz	r2, 80095aa <__ascii_mbtowc+0x1e>
 8009592:	b16b      	cbz	r3, 80095b0 <__ascii_mbtowc+0x24>
 8009594:	7813      	ldrb	r3, [r2, #0]
 8009596:	600b      	str	r3, [r1, #0]
 8009598:	7812      	ldrb	r2, [r2, #0]
 800959a:	1c10      	adds	r0, r2, #0
 800959c:	bf18      	it	ne
 800959e:	2001      	movne	r0, #1
 80095a0:	b002      	add	sp, #8
 80095a2:	4770      	bx	lr
 80095a4:	a901      	add	r1, sp, #4
 80095a6:	2a00      	cmp	r2, #0
 80095a8:	d1f3      	bne.n	8009592 <__ascii_mbtowc+0x6>
 80095aa:	4610      	mov	r0, r2
 80095ac:	b002      	add	sp, #8
 80095ae:	4770      	bx	lr
 80095b0:	f06f 0001 	mvn.w	r0, #1
 80095b4:	e7f4      	b.n	80095a0 <__ascii_mbtowc+0x14>
 80095b6:	bf00      	nop

080095b8 <_read_r>:
 80095b8:	b570      	push	{r4, r5, r6, lr}
 80095ba:	460d      	mov	r5, r1
 80095bc:	4c08      	ldr	r4, [pc, #32]	; (80095e0 <_read_r+0x28>)
 80095be:	4611      	mov	r1, r2
 80095c0:	4606      	mov	r6, r0
 80095c2:	461a      	mov	r2, r3
 80095c4:	4628      	mov	r0, r5
 80095c6:	2300      	movs	r3, #0
 80095c8:	6023      	str	r3, [r4, #0]
 80095ca:	f7fb f889 	bl	80046e0 <_read>
 80095ce:	1c43      	adds	r3, r0, #1
 80095d0:	d000      	beq.n	80095d4 <_read_r+0x1c>
 80095d2:	bd70      	pop	{r4, r5, r6, pc}
 80095d4:	6823      	ldr	r3, [r4, #0]
 80095d6:	2b00      	cmp	r3, #0
 80095d8:	d0fb      	beq.n	80095d2 <_read_r+0x1a>
 80095da:	6033      	str	r3, [r6, #0]
 80095dc:	bd70      	pop	{r4, r5, r6, pc}
 80095de:	bf00      	nop
 80095e0:	20001454 	.word	0x20001454

080095e4 <__swbuf_r>:
 80095e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80095e6:	460d      	mov	r5, r1
 80095e8:	4614      	mov	r4, r2
 80095ea:	4606      	mov	r6, r0
 80095ec:	b110      	cbz	r0, 80095f4 <__swbuf_r+0x10>
 80095ee:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80095f0:	2b00      	cmp	r3, #0
 80095f2:	d043      	beq.n	800967c <__swbuf_r+0x98>
 80095f4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80095f8:	69a3      	ldr	r3, [r4, #24]
 80095fa:	60a3      	str	r3, [r4, #8]
 80095fc:	b291      	uxth	r1, r2
 80095fe:	0708      	lsls	r0, r1, #28
 8009600:	d51b      	bpl.n	800963a <__swbuf_r+0x56>
 8009602:	6923      	ldr	r3, [r4, #16]
 8009604:	b1cb      	cbz	r3, 800963a <__swbuf_r+0x56>
 8009606:	b2ed      	uxtb	r5, r5
 8009608:	0489      	lsls	r1, r1, #18
 800960a:	462f      	mov	r7, r5
 800960c:	d522      	bpl.n	8009654 <__swbuf_r+0x70>
 800960e:	6822      	ldr	r2, [r4, #0]
 8009610:	6961      	ldr	r1, [r4, #20]
 8009612:	1ad3      	subs	r3, r2, r3
 8009614:	4299      	cmp	r1, r3
 8009616:	dd29      	ble.n	800966c <__swbuf_r+0x88>
 8009618:	3301      	adds	r3, #1
 800961a:	68a1      	ldr	r1, [r4, #8]
 800961c:	1c50      	adds	r0, r2, #1
 800961e:	3901      	subs	r1, #1
 8009620:	60a1      	str	r1, [r4, #8]
 8009622:	6020      	str	r0, [r4, #0]
 8009624:	7015      	strb	r5, [r2, #0]
 8009626:	6962      	ldr	r2, [r4, #20]
 8009628:	429a      	cmp	r2, r3
 800962a:	d02a      	beq.n	8009682 <__swbuf_r+0x9e>
 800962c:	89a3      	ldrh	r3, [r4, #12]
 800962e:	07db      	lsls	r3, r3, #31
 8009630:	d501      	bpl.n	8009636 <__swbuf_r+0x52>
 8009632:	2d0a      	cmp	r5, #10
 8009634:	d025      	beq.n	8009682 <__swbuf_r+0x9e>
 8009636:	4638      	mov	r0, r7
 8009638:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800963a:	4621      	mov	r1, r4
 800963c:	4630      	mov	r0, r6
 800963e:	f7fd fa4b 	bl	8006ad8 <__swsetup_r>
 8009642:	bb20      	cbnz	r0, 800968e <__swbuf_r+0xaa>
 8009644:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009648:	6923      	ldr	r3, [r4, #16]
 800964a:	b291      	uxth	r1, r2
 800964c:	b2ed      	uxtb	r5, r5
 800964e:	0489      	lsls	r1, r1, #18
 8009650:	462f      	mov	r7, r5
 8009652:	d4dc      	bmi.n	800960e <__swbuf_r+0x2a>
 8009654:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009656:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800965a:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800965e:	81a2      	strh	r2, [r4, #12]
 8009660:	6822      	ldr	r2, [r4, #0]
 8009662:	6661      	str	r1, [r4, #100]	; 0x64
 8009664:	6961      	ldr	r1, [r4, #20]
 8009666:	1ad3      	subs	r3, r2, r3
 8009668:	4299      	cmp	r1, r3
 800966a:	dcd5      	bgt.n	8009618 <__swbuf_r+0x34>
 800966c:	4621      	mov	r1, r4
 800966e:	4630      	mov	r0, r6
 8009670:	f7fe fb68 	bl	8007d44 <_fflush_r>
 8009674:	b958      	cbnz	r0, 800968e <__swbuf_r+0xaa>
 8009676:	6822      	ldr	r2, [r4, #0]
 8009678:	2301      	movs	r3, #1
 800967a:	e7ce      	b.n	800961a <__swbuf_r+0x36>
 800967c:	f7fe fbbe 	bl	8007dfc <__sinit>
 8009680:	e7b8      	b.n	80095f4 <__swbuf_r+0x10>
 8009682:	4621      	mov	r1, r4
 8009684:	4630      	mov	r0, r6
 8009686:	f7fe fb5d 	bl	8007d44 <_fflush_r>
 800968a:	2800      	cmp	r0, #0
 800968c:	d0d3      	beq.n	8009636 <__swbuf_r+0x52>
 800968e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8009692:	e7d0      	b.n	8009636 <__swbuf_r+0x52>

08009694 <_wcrtomb_r>:
 8009694:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009696:	4c11      	ldr	r4, [pc, #68]	; (80096dc <_wcrtomb_r+0x48>)
 8009698:	6824      	ldr	r4, [r4, #0]
 800969a:	b085      	sub	sp, #20
 800969c:	4606      	mov	r6, r0
 800969e:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80096a0:	461f      	mov	r7, r3
 80096a2:	b151      	cbz	r1, 80096ba <_wcrtomb_r+0x26>
 80096a4:	4d0e      	ldr	r5, [pc, #56]	; (80096e0 <_wcrtomb_r+0x4c>)
 80096a6:	2c00      	cmp	r4, #0
 80096a8:	bf08      	it	eq
 80096aa:	462c      	moveq	r4, r5
 80096ac:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80096b0:	47a0      	blx	r4
 80096b2:	1c43      	adds	r3, r0, #1
 80096b4:	d00c      	beq.n	80096d0 <_wcrtomb_r+0x3c>
 80096b6:	b005      	add	sp, #20
 80096b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80096ba:	4a09      	ldr	r2, [pc, #36]	; (80096e0 <_wcrtomb_r+0x4c>)
 80096bc:	2c00      	cmp	r4, #0
 80096be:	bf08      	it	eq
 80096c0:	4614      	moveq	r4, r2
 80096c2:	460a      	mov	r2, r1
 80096c4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80096c8:	a901      	add	r1, sp, #4
 80096ca:	47a0      	blx	r4
 80096cc:	1c43      	adds	r3, r0, #1
 80096ce:	d1f2      	bne.n	80096b6 <_wcrtomb_r+0x22>
 80096d0:	2200      	movs	r2, #0
 80096d2:	238a      	movs	r3, #138	; 0x8a
 80096d4:	603a      	str	r2, [r7, #0]
 80096d6:	6033      	str	r3, [r6, #0]
 80096d8:	b005      	add	sp, #20
 80096da:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80096dc:	20000030 	.word	0x20000030
 80096e0:	20000874 	.word	0x20000874

080096e4 <__ascii_wctomb>:
 80096e4:	b121      	cbz	r1, 80096f0 <__ascii_wctomb+0xc>
 80096e6:	2aff      	cmp	r2, #255	; 0xff
 80096e8:	d804      	bhi.n	80096f4 <__ascii_wctomb+0x10>
 80096ea:	700a      	strb	r2, [r1, #0]
 80096ec:	2001      	movs	r0, #1
 80096ee:	4770      	bx	lr
 80096f0:	4608      	mov	r0, r1
 80096f2:	4770      	bx	lr
 80096f4:	238a      	movs	r3, #138	; 0x8a
 80096f6:	6003      	str	r3, [r0, #0]
 80096f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80096fc:	4770      	bx	lr
 80096fe:	bf00      	nop

08009700 <_init>:
 8009700:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009702:	bf00      	nop
 8009704:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009706:	bc08      	pop	{r3}
 8009708:	469e      	mov	lr, r3
 800970a:	4770      	bx	lr

0800970c <_fini>:
 800970c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800970e:	bf00      	nop
 8009710:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009712:	bc08      	pop	{r3}
 8009714:	469e      	mov	lr, r3
 8009716:	4770      	bx	lr
