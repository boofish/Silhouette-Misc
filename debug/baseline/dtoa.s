
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
 80001e0:	08009f98 	.word	0x08009f98

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
 80001fc:	08009f98 	.word	0x08009f98

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
 80011b2:	f000 f81a 	bl	80011ea <HAL_NVIC_SetPriorityGrouping>
 80011b6:	200f      	movs	r0, #15
 80011b8:	f000 fbc1 	bl	800193e <HAL_InitTick>
 80011bc:	2800      	cmp	r0, #0
 80011be:	bf1c      	itt	ne
 80011c0:	2001      	movne	r0, #1
 80011c2:	bd80      	popne	{r7, pc}
 80011c4:	f000 f96b 	bl	800149e <HAL_MspInit>
 80011c8:	2000      	movs	r0, #0
 80011ca:	bd80      	pop	{r7, pc}

080011cc <HAL_IncTick>:
 80011cc:	f241 30e8 	movw	r0, #5096	; 0x13e8
 80011d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d4:	6801      	ldr	r1, [r0, #0]
 80011d6:	3101      	adds	r1, #1
 80011d8:	f840 1e00 	strt	r1, [r0]
 80011dc:	4770      	bx	lr

080011de <HAL_GetTick>:
 80011de:	f241 30e8 	movw	r0, #5096	; 0x13e8
 80011e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011e6:	6800      	ldr	r0, [r0, #0]
 80011e8:	4770      	bx	lr

080011ea <HAL_NVIC_SetPriorityGrouping>:
 80011ea:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011ee:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011f2:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011f6:	680a      	ldr	r2, [r1, #0]
 80011f8:	401a      	ands	r2, r3
 80011fa:	f360 220a 	bfi	r2, r0, #8, #3
 80011fe:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001202:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001206:	6008      	str	r0, [r1, #0]
 8001208:	4770      	bx	lr

0800120a <HAL_NVIC_SetPriority>:
 800120a:	b580      	push	{r7, lr}
 800120c:	466f      	mov	r7, sp
 800120e:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001212:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001216:	2800      	cmp	r0, #0
 8001218:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800121c:	f000 030f 	and.w	r3, r0, #15
 8001220:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001224:	f1a3 0304 	sub.w	r3, r3, #4
 8001228:	4473      	add	r3, lr
 800122a:	bfb8      	it	lt
 800122c:	f103 0c0c 	addlt.w	ip, r3, #12
 8001230:	f8de 0000 	ldr.w	r0, [lr]
 8001234:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001238:	f100 0e04 	add.w	lr, r0, #4
 800123c:	1ec3      	subs	r3, r0, #3
 800123e:	f080 0007 	eor.w	r0, r0, #7
 8001242:	f1be 0f07 	cmp.w	lr, #7
 8001246:	f04f 0e01 	mov.w	lr, #1
 800124a:	bf38      	it	cc
 800124c:	2300      	movcc	r3, #0
 800124e:	2804      	cmp	r0, #4
 8001250:	bf28      	it	cs
 8001252:	2004      	movcs	r0, #4
 8001254:	fa0e f000 	lsl.w	r0, lr, r0
 8001258:	3801      	subs	r0, #1
 800125a:	4008      	ands	r0, r1
 800125c:	fa0e f103 	lsl.w	r1, lr, r3
 8001260:	310f      	adds	r1, #15
 8001262:	4098      	lsls	r0, r3
 8001264:	4011      	ands	r1, r2
 8001266:	4308      	orrs	r0, r1
 8001268:	0100      	lsls	r0, r0, #4
 800126a:	f88c 0000 	strb.w	r0, [ip]
 800126e:	bd80      	pop	{r7, pc}

08001270 <HAL_NVIC_EnableIRQ>:
 8001270:	f000 011f 	and.w	r1, r0, #31
 8001274:	2201      	movs	r2, #1
 8001276:	0940      	lsrs	r0, r0, #5
 8001278:	fa02 f101 	lsl.w	r1, r2, r1
 800127c:	f24e 1200 	movw	r2, #57600	; 0xe100
 8001280:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001284:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001288:	4770      	bx	lr

0800128a <HAL_SYSTICK_IRQHandler>:
 800128a:	f000 b800 	b.w	800128e <HAL_SYSTICK_Callback>

0800128e <HAL_SYSTICK_Callback>:
 800128e:	4770      	bx	lr

08001290 <HAL_GPIO_Init>:
 8001290:	b085      	sub	sp, #20
 8001292:	f84d 4e00 	strt	r4, [sp]
 8001296:	f84d 5e04 	strt	r5, [sp, #4]
 800129a:	f84d 6e08 	strt	r6, [sp, #8]
 800129e:	f84d 7e0c 	strt	r7, [sp, #12]
 80012a2:	f84d ee10 	strt	lr, [sp, #16]
 80012a6:	af03      	add	r7, sp, #12
 80012a8:	b084      	sub	sp, #16
 80012aa:	f84d 8e00 	strt	r8, [sp]
 80012ae:	f84d 9e04 	strt	r9, [sp, #4]
 80012b2:	f84d ae08 	strt	sl, [sp, #8]
 80012b6:	f84d be0c 	strt	fp, [sp, #12]
 80012ba:	b082      	sub	sp, #8
 80012bc:	680e      	ldr	r6, [r1, #0]
 80012be:	2e00      	cmp	r6, #0
 80012c0:	f000 80e9 	beq.w	8001496 <HAL_GPIO_Init+0x206>
 80012c4:	f641 0200 	movw	r2, #6144	; 0x1800
 80012c8:	2507      	movs	r5, #7
 80012ca:	f04f 0801 	mov.w	r8, #1
 80012ce:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012d2:	4290      	cmp	r0, r2
 80012d4:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012d8:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012dc:	bf08      	it	eq
 80012de:	2506      	moveq	r5, #6
 80012e0:	2b06      	cmp	r3, #6
 80012e2:	bf38      	it	cc
 80012e4:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012e8:	2200      	movs	r2, #0
 80012ea:	f84d 5e00 	strt	r5, [sp]
 80012ee:	2500      	movs	r5, #0
 80012f0:	f1a8 0a01 	sub.w	sl, r8, #1
 80012f4:	2301      	movs	r3, #1
 80012f6:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012fa:	ea16 090b 	ands.w	r9, r6, fp
 80012fe:	f000 80c1 	beq.w	8001484 <HAL_GPIO_Init+0x1f4>
 8001302:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001306:	f04e 0610 	orr.w	r6, lr, #16
 800130a:	2e12      	cmp	r6, #18
 800130c:	d116      	bne.n	800133c <HAL_GPIO_Init+0xac>
 800130e:	f005 061c 	and.w	r6, r5, #28
 8001312:	230f      	movs	r3, #15
 8001314:	fa03 fc06 	lsl.w	ip, r3, r6
 8001318:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 800131c:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001320:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001324:	4404      	add	r4, r0
 8001326:	6a23      	ldr	r3, [r4, #32]
 8001328:	ea23 0c0c 	bic.w	ip, r3, ip
 800132c:	690b      	ldr	r3, [r1, #16]
 800132e:	40b3      	lsls	r3, r6
 8001330:	ea43 030c 	orr.w	r3, r3, ip
 8001334:	f844 3e20 	strt	r3, [r4, #32]
 8001338:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800133c:	6806      	ldr	r6, [r0, #0]
 800133e:	2403      	movs	r4, #3
 8001340:	f00e 0c03 	and.w	ip, lr, #3
 8001344:	f1be 0f12 	cmp.w	lr, #18
 8001348:	fa04 f402 	lsl.w	r4, r4, r2
 800134c:	fa0c f302 	lsl.w	r3, ip, r2
 8001350:	ea26 0604 	bic.w	r6, r6, r4
 8001354:	ea43 0306 	orr.w	r3, r3, r6
 8001358:	ea6f 0604 	mvn.w	r6, r4
 800135c:	f840 3e00 	strt	r3, [r0]
 8001360:	d818      	bhi.n	8001394 <HAL_GPIO_Init+0x104>
 8001362:	2301      	movs	r3, #1
 8001364:	fa03 f30e 	lsl.w	r3, r3, lr
 8001368:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800136c:	bf1f      	itttt	ne
 800136e:	6883      	ldrne	r3, [r0, #8]
 8001370:	4033      	andne	r3, r6
 8001372:	68cc      	ldrne	r4, [r1, #12]
 8001374:	4094      	lslne	r4, r2
 8001376:	bf1f      	itttt	ne
 8001378:	4323      	orrne	r3, r4
 800137a:	f840 3e08 	strtne	r3, [r0, #8]
 800137e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001382:	fa03 f30a 	lslne.w	r3, r3, sl
 8001386:	bf1f      	itttt	ne
 8001388:	6844      	ldrne	r4, [r0, #4]
 800138a:	ea24 040b 	bicne.w	r4, r4, fp
 800138e:	4323      	orrne	r3, r4
 8001390:	f840 3e04 	strtne	r3, [r0, #4]
 8001394:	f1bc 0f03 	cmp.w	ip, #3
 8001398:	d109      	bne.n	80013ae <HAL_GPIO_Init+0x11e>
 800139a:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 800139e:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80013a0:	fa03 f30a 	lsl.w	r3, r3, sl
 80013a4:	ea24 040b 	bic.w	r4, r4, fp
 80013a8:	4323      	orrs	r3, r4
 80013aa:	f840 3e2c 	strt	r3, [r0, #44]
 80013ae:	68c3      	ldr	r3, [r0, #12]
 80013b0:	4033      	ands	r3, r6
 80013b2:	688e      	ldr	r6, [r1, #8]
 80013b4:	4096      	lsls	r6, r2
 80013b6:	4333      	orrs	r3, r6
 80013b8:	f840 3e0c 	strt	r3, [r0, #12]
 80013bc:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80013c0:	d560      	bpl.n	8001484 <HAL_GPIO_Init+0x1f4>
 80013c2:	f241 0360 	movw	r3, #4192	; 0x1060
 80013c6:	f005 040c 	and.w	r4, r5, #12
 80013ca:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80013ce:	461e      	mov	r6, r3
 80013d0:	6833      	ldr	r3, [r6, #0]
 80013d2:	f043 0301 	orr.w	r3, r3, #1
 80013d6:	f846 3e00 	strt	r3, [r6]
 80013da:	6833      	ldr	r3, [r6, #0]
 80013dc:	f240 4600 	movw	r6, #1024	; 0x400
 80013e0:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013e4:	46b6      	mov	lr, r6
 80013e6:	f003 0301 	and.w	r3, r3, #1
 80013ea:	f84d 3e04 	strt	r3, [sp, #4]
 80013ee:	f02a 0303 	bic.w	r3, sl, #3
 80013f2:	9e01      	ldr	r6, [sp, #4]
 80013f4:	4473      	add	r3, lr
 80013f6:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013fa:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013fe:	46b2      	mov	sl, r6
 8001400:	260f      	movs	r6, #15
 8001402:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001406:	40a6      	lsls	r6, r4
 8001408:	ea2c 0c06 	bic.w	ip, ip, r6
 800140c:	9e00      	ldr	r6, [sp, #0]
 800140e:	fa06 f404 	lsl.w	r4, r6, r4
 8001412:	ea4c 0604 	orr.w	r6, ip, r4
 8001416:	eb03 030a 	add.w	r3, r3, sl
 800141a:	f843 6e00 	strt	r6, [r3]
 800141e:	eba3 030a 	sub.w	r3, r3, sl
 8001422:	f8de 3000 	ldr.w	r3, [lr]
 8001426:	684e      	ldr	r6, [r1, #4]
 8001428:	ea23 0309 	bic.w	r3, r3, r9
 800142c:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001430:	bf18      	it	ne
 8001432:	ea43 0309 	orrne.w	r3, r3, r9
 8001436:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 800143a:	f84e 3e00 	strt	r3, [lr]
 800143e:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001442:	ea23 0309 	bic.w	r3, r3, r9
 8001446:	bf18      	it	ne
 8001448:	ea43 0309 	orrne.w	r3, r3, r9
 800144c:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001450:	f84e 3e04 	strt	r3, [lr, #4]
 8001454:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001458:	ea23 0309 	bic.w	r3, r3, r9
 800145c:	bf18      	it	ne
 800145e:	ea43 0309 	orrne.w	r3, r3, r9
 8001462:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001466:	f84e 3e08 	strt	r3, [lr, #8]
 800146a:	f240 430c 	movw	r3, #1036	; 0x40c
 800146e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001472:	461c      	mov	r4, r3
 8001474:	6823      	ldr	r3, [r4, #0]
 8001476:	ea23 0309 	bic.w	r3, r3, r9
 800147a:	bf18      	it	ne
 800147c:	ea43 0309 	orrne.w	r3, r3, r9
 8001480:	f844 3e00 	strt	r3, [r4]
 8001484:	680e      	ldr	r6, [r1, #0]
 8001486:	3202      	adds	r2, #2
 8001488:	3504      	adds	r5, #4
 800148a:	fa36 f308 	lsrs.w	r3, r6, r8
 800148e:	f108 0801 	add.w	r8, r8, #1
 8001492:	f47f af2d 	bne.w	80012f0 <HAL_GPIO_Init+0x60>
 8001496:	b002      	add	sp, #8
 8001498:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800149c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800149e <HAL_MspInit>:
 800149e:	4770      	bx	lr

080014a0 <HAL_RCC_GetSysClockFreq>:
 80014a0:	b082      	sub	sp, #8
 80014a2:	f84d 7e00 	strt	r7, [sp]
 80014a6:	f84d ee04 	strt	lr, [sp, #4]
 80014aa:	466f      	mov	r7, sp
 80014ac:	f241 010c 	movw	r1, #4108	; 0x100c
 80014b0:	f241 2e00 	movw	lr, #4608	; 0x1200
 80014b4:	f242 4c00 	movw	ip, #9216	; 0x2400
 80014b8:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014bc:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80014c0:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80014c4:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80014c8:	6808      	ldr	r0, [r1, #0]
 80014ca:	f012 030c 	ands.w	r3, r2, #12
 80014ce:	d005      	beq.n	80014dc <HAL_RCC_GetSysClockFreq+0x3c>
 80014d0:	2b0c      	cmp	r3, #12
 80014d2:	bf04      	itt	eq
 80014d4:	f000 0003 	andeq.w	r0, r0, #3
 80014d8:	2801      	cmpeq	r0, #1
 80014da:	d118      	bne.n	800150e <HAL_RCC_GetSysClockFreq+0x6e>
 80014dc:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014e0:	f010 0f08 	tst.w	r0, #8
 80014e4:	d103      	bne.n	80014ee <HAL_RCC_GetSysClockFreq+0x4e>
 80014e6:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80014ea:	0a00      	lsrs	r0, r0, #8
 80014ec:	e002      	b.n	80014f4 <HAL_RCC_GetSysClockFreq+0x54>
 80014ee:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014f2:	0900      	lsrs	r0, r0, #4
 80014f4:	f24a 128c 	movw	r2, #41356	; 0xa18c
 80014f8:	f000 000f 	and.w	r0, r0, #15
 80014fc:	2b00      	cmp	r3, #0
 80014fe:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001502:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001506:	4610      	mov	r0, r2
 8001508:	bf18      	it	ne
 800150a:	2000      	movne	r0, #0
 800150c:	e00b      	b.n	8001526 <HAL_RCC_GetSysClockFreq+0x86>
 800150e:	f003 000f 	and.w	r0, r3, #15
 8001512:	2804      	cmp	r0, #4
 8001514:	bf04      	itt	eq
 8001516:	4660      	moveq	r0, ip
 8001518:	bd80      	popeq	{r7, pc}
 800151a:	2808      	cmp	r0, #8
 800151c:	bf04      	itt	eq
 800151e:	4670      	moveq	r0, lr
 8001520:	bd80      	popeq	{r7, pc}
 8001522:	2000      	movs	r0, #0
 8001524:	2200      	movs	r2, #0
 8001526:	2b0c      	cmp	r3, #12
 8001528:	bf18      	it	ne
 800152a:	bd80      	popne	{r7, pc}
 800152c:	6808      	ldr	r0, [r1, #0]
 800152e:	f000 0303 	and.w	r3, r0, #3
 8001532:	6808      	ldr	r0, [r1, #0]
 8001534:	2b03      	cmp	r3, #3
 8001536:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800153a:	f100 0001 	add.w	r0, r0, #1
 800153e:	d003      	beq.n	8001548 <HAL_RCC_GetSysClockFreq+0xa8>
 8001540:	2b02      	cmp	r3, #2
 8001542:	46e6      	mov	lr, ip
 8001544:	bf18      	it	ne
 8001546:	4696      	movne	lr, r2
 8001548:	680a      	ldr	r2, [r1, #0]
 800154a:	fbbe f0f0 	udiv	r0, lr, r0
 800154e:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001552:	6809      	ldr	r1, [r1, #0]
 8001554:	4350      	muls	r0, r2
 8001556:	2202      	movs	r2, #2
 8001558:	f3c1 6141 	ubfx	r1, r1, #25, #2
 800155c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001560:	fbb0 f0f1 	udiv	r0, r0, r1
 8001564:	bd80      	pop	{r7, pc}

08001566 <HAL_RCC_GetPCLK1Freq>:
 8001566:	f240 002c 	movw	r0, #44	; 0x2c
 800156a:	f241 0108 	movw	r1, #4104	; 0x1008
 800156e:	f24a 1284 	movw	r2, #41348	; 0xa184
 8001572:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001576:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800157a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800157e:	6800      	ldr	r0, [r0, #0]
 8001580:	6809      	ldr	r1, [r1, #0]
 8001582:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001586:	5c51      	ldrb	r1, [r2, r1]
 8001588:	f001 011f 	and.w	r1, r1, #31
 800158c:	40c8      	lsrs	r0, r1
 800158e:	4770      	bx	lr

08001590 <HAL_RCC_GetPCLK2Freq>:
 8001590:	f240 002c 	movw	r0, #44	; 0x2c
 8001594:	f241 0108 	movw	r1, #4104	; 0x1008
 8001598:	f24a 1284 	movw	r2, #41348	; 0xa184
 800159c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80015a0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80015a4:	f6c0 0200 	movt	r2, #2048	; 0x800
 80015a8:	6800      	ldr	r0, [r0, #0]
 80015aa:	6809      	ldr	r1, [r1, #0]
 80015ac:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80015b0:	5c51      	ldrb	r1, [r2, r1]
 80015b2:	f001 011f 	and.w	r1, r1, #31
 80015b6:	40c8      	lsrs	r0, r1
 80015b8:	4770      	bx	lr

080015ba <HAL_RCC_GetClockConfig>:
 80015ba:	220f      	movs	r2, #15
 80015bc:	6002      	str	r2, [r0, #0]
 80015be:	f241 0208 	movw	r2, #4104	; 0x1008
 80015c2:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80015c6:	6813      	ldr	r3, [r2, #0]
 80015c8:	f003 0303 	and.w	r3, r3, #3
 80015cc:	6043      	str	r3, [r0, #4]
 80015ce:	6813      	ldr	r3, [r2, #0]
 80015d0:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80015d4:	6083      	str	r3, [r0, #8]
 80015d6:	6813      	ldr	r3, [r2, #0]
 80015d8:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80015dc:	60c3      	str	r3, [r0, #12]
 80015de:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80015e2:	6812      	ldr	r2, [r2, #0]
 80015e4:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80015e8:	6102      	str	r2, [r0, #16]
 80015ea:	f242 0000 	movw	r0, #8192	; 0x2000
 80015ee:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015f2:	6800      	ldr	r0, [r0, #0]
 80015f4:	f000 0007 	and.w	r0, r0, #7
 80015f8:	6008      	str	r0, [r1, #0]
 80015fa:	4770      	bx	lr

080015fc <HAL_TIM_Base_Init>:
 80015fc:	b5d0      	push	{r4, r6, r7, lr}
 80015fe:	af02      	add	r7, sp, #8
 8001600:	4604      	mov	r4, r0
 8001602:	2c00      	cmp	r4, #0
 8001604:	bf04      	itt	eq
 8001606:	2001      	moveq	r0, #1
 8001608:	bdd0      	popeq	{r4, r6, r7, pc}
 800160a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800160c:	b920      	cbnz	r0, 8001618 <HAL_TIM_Base_Init+0x1c>
 800160e:	2000      	movs	r0, #0
 8001610:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001612:	4620      	mov	r0, r4
 8001614:	f000 f892 	bl	800173c <HAL_TIM_Base_MspInit>
 8001618:	2002      	movs	r0, #2
 800161a:	f640 32ff 	movw	r2, #3071	; 0xbff
 800161e:	6420      	str	r0, [r4, #64]	; 0x40
 8001620:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001624:	6820      	ldr	r0, [r4, #0]
 8001626:	6801      	ldr	r1, [r0, #0]
 8001628:	4290      	cmp	r0, r2
 800162a:	dc0f      	bgt.n	800164c <HAL_TIM_Base_Init+0x50>
 800162c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001630:	bf1e      	ittt	ne
 8001632:	f240 4200 	movwne	r2, #1024	; 0x400
 8001636:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800163a:	4290      	cmpne	r0, r2
 800163c:	d018      	beq.n	8001670 <HAL_TIM_Base_Init+0x74>
 800163e:	f640 0200 	movw	r2, #2048	; 0x800
 8001642:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001646:	4290      	cmp	r0, r2
 8001648:	d012      	beq.n	8001670 <HAL_TIM_Base_Init+0x74>
 800164a:	e015      	b.n	8001678 <HAL_TIM_Base_Init+0x7c>
 800164c:	f640 4200 	movw	r2, #3072	; 0xc00
 8001650:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001654:	4290      	cmp	r0, r2
 8001656:	bf1e      	ittt	ne
 8001658:	f243 4200 	movwne	r2, #13312	; 0x3400
 800165c:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001660:	4290      	cmpne	r0, r2
 8001662:	d005      	beq.n	8001670 <HAL_TIM_Base_Init+0x74>
 8001664:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001668:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800166c:	4290      	cmp	r0, r2
 800166e:	d103      	bne.n	8001678 <HAL_TIM_Base_Init+0x7c>
 8001670:	68a2      	ldr	r2, [r4, #8]
 8001672:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001676:	4311      	orrs	r1, r2
 8001678:	f642 32ff 	movw	r2, #11263	; 0x2bff
 800167c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001680:	4290      	cmp	r0, r2
 8001682:	dd14      	ble.n	80016ae <HAL_TIM_Base_Init+0xb2>
 8001684:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001688:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800168c:	4290      	cmp	r0, r2
 800168e:	dd1a      	ble.n	80016c6 <HAL_TIM_Base_Init+0xca>
 8001690:	f244 0200 	movw	r2, #16384	; 0x4000
 8001694:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001698:	4290      	cmp	r0, r2
 800169a:	bf1e      	ittt	ne
 800169c:	f644 0200 	movwne	r2, #18432	; 0x4800
 80016a0:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80016a4:	4290      	cmpne	r0, r2
 80016a6:	d027      	beq.n	80016f8 <HAL_TIM_Base_Init+0xfc>
 80016a8:	f244 4200 	movw	r2, #17408	; 0x4400
 80016ac:	e013      	b.n	80016d6 <HAL_TIM_Base_Init+0xda>
 80016ae:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80016b2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016b6:	4290      	cmp	r0, r2
 80016b8:	dc12      	bgt.n	80016e0 <HAL_TIM_Base_Init+0xe4>
 80016ba:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80016be:	d01b      	beq.n	80016f8 <HAL_TIM_Base_Init+0xfc>
 80016c0:	f240 4200 	movw	r2, #1024	; 0x400
 80016c4:	e014      	b.n	80016f0 <HAL_TIM_Base_Init+0xf4>
 80016c6:	f642 4200 	movw	r2, #11264	; 0x2c00
 80016ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016ce:	4290      	cmp	r0, r2
 80016d0:	d012      	beq.n	80016f8 <HAL_TIM_Base_Init+0xfc>
 80016d2:	f243 4200 	movw	r2, #13312	; 0x3400
 80016d6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016da:	4290      	cmp	r0, r2
 80016dc:	d00c      	beq.n	80016f8 <HAL_TIM_Base_Init+0xfc>
 80016de:	e00f      	b.n	8001700 <HAL_TIM_Base_Init+0x104>
 80016e0:	f640 0200 	movw	r2, #2048	; 0x800
 80016e4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016e8:	4290      	cmp	r0, r2
 80016ea:	d005      	beq.n	80016f8 <HAL_TIM_Base_Init+0xfc>
 80016ec:	f640 4200 	movw	r2, #3072	; 0xc00
 80016f0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016f4:	4290      	cmp	r0, r2
 80016f6:	d103      	bne.n	8001700 <HAL_TIM_Base_Init+0x104>
 80016f8:	6922      	ldr	r2, [r4, #16]
 80016fa:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016fe:	4311      	orrs	r1, r2
 8001700:	69a2      	ldr	r2, [r4, #24]
 8001702:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001706:	4311      	orrs	r1, r2
 8001708:	6001      	str	r1, [r0, #0]
 800170a:	68e1      	ldr	r1, [r4, #12]
 800170c:	62c1      	str	r1, [r0, #44]	; 0x2c
 800170e:	6861      	ldr	r1, [r4, #4]
 8001710:	6281      	str	r1, [r0, #40]	; 0x28
 8001712:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001716:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800171a:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800171e:	2907      	cmp	r1, #7
 8001720:	d807      	bhi.n	8001732 <HAL_TIM_Base_Init+0x136>
 8001722:	2201      	movs	r2, #1
 8001724:	fa02 f101 	lsl.w	r1, r2, r1
 8001728:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 800172c:	bf1c      	itt	ne
 800172e:	6961      	ldrne	r1, [r4, #20]
 8001730:	6301      	strne	r1, [r0, #48]	; 0x30
 8001732:	2101      	movs	r1, #1
 8001734:	6141      	str	r1, [r0, #20]
 8001736:	2000      	movs	r0, #0
 8001738:	6421      	str	r1, [r4, #64]	; 0x40
 800173a:	bdd0      	pop	{r4, r6, r7, pc}

0800173c <HAL_TIM_Base_MspInit>:
 800173c:	4770      	bx	lr

0800173e <HAL_TIM_Base_Start_IT>:
 800173e:	6800      	ldr	r0, [r0, #0]
 8001740:	68c1      	ldr	r1, [r0, #12]
 8001742:	f041 0101 	orr.w	r1, r1, #1
 8001746:	60c1      	str	r1, [r0, #12]
 8001748:	2107      	movs	r1, #7
 800174a:	6882      	ldr	r2, [r0, #8]
 800174c:	f2c0 0101 	movt	r1, #1
 8001750:	400a      	ands	r2, r1
 8001752:	2a06      	cmp	r2, #6
 8001754:	d008      	beq.n	8001768 <HAL_TIM_Base_Start_IT+0x2a>
 8001756:	6882      	ldr	r2, [r0, #8]
 8001758:	4011      	ands	r1, r2
 800175a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800175e:	bf1e      	ittt	ne
 8001760:	6801      	ldrne	r1, [r0, #0]
 8001762:	f041 0101 	orrne.w	r1, r1, #1
 8001766:	6001      	strne	r1, [r0, #0]
 8001768:	2000      	movs	r0, #0
 800176a:	4770      	bx	lr

0800176c <HAL_TIM_IRQHandler>:
 800176c:	b084      	sub	sp, #16
 800176e:	f84d 4e00 	strt	r4, [sp]
 8001772:	f84d 6e04 	strt	r6, [sp, #4]
 8001776:	f84d 7e08 	strt	r7, [sp, #8]
 800177a:	f84d ee0c 	strt	lr, [sp, #12]
 800177e:	af02      	add	r7, sp, #8
 8001780:	4604      	mov	r4, r0
 8001782:	6820      	ldr	r0, [r4, #0]
 8001784:	6901      	ldr	r1, [r0, #16]
 8001786:	f011 0f02 	tst.w	r1, #2
 800178a:	bf1c      	itt	ne
 800178c:	68c1      	ldrne	r1, [r0, #12]
 800178e:	f011 0f02 	tstne.w	r1, #2
 8001792:	d018      	beq.n	80017c6 <HAL_TIM_IRQHandler+0x5a>
 8001794:	f06f 0102 	mvn.w	r1, #2
 8001798:	f840 1e10 	strt	r1, [r0, #16]
 800179c:	2101      	movs	r1, #1
 800179e:	f844 1e1c 	strt	r1, [r4, #28]
 80017a2:	6980      	ldr	r0, [r0, #24]
 80017a4:	f010 0f03 	tst.w	r0, #3
 80017a8:	d003      	beq.n	80017b2 <HAL_TIM_IRQHandler+0x46>
 80017aa:	4620      	mov	r0, r4
 80017ac:	f000 f8c0 	bl	8001930 <HAL_TIM_IC_CaptureCallback>
 80017b0:	e005      	b.n	80017be <HAL_TIM_IRQHandler+0x52>
 80017b2:	4620      	mov	r0, r4
 80017b4:	f000 f8bd 	bl	8001932 <HAL_TIM_OC_DelayElapsedCallback>
 80017b8:	4620      	mov	r0, r4
 80017ba:	f000 f8bb 	bl	8001934 <HAL_TIM_PWM_PulseFinishedCallback>
 80017be:	2000      	movs	r0, #0
 80017c0:	f844 0e1c 	strt	r0, [r4, #28]
 80017c4:	6820      	ldr	r0, [r4, #0]
 80017c6:	6901      	ldr	r1, [r0, #16]
 80017c8:	f011 0f04 	tst.w	r1, #4
 80017cc:	bf1c      	itt	ne
 80017ce:	68c1      	ldrne	r1, [r0, #12]
 80017d0:	f011 0f04 	tstne.w	r1, #4
 80017d4:	d018      	beq.n	8001808 <HAL_TIM_IRQHandler+0x9c>
 80017d6:	f06f 0104 	mvn.w	r1, #4
 80017da:	f840 1e10 	strt	r1, [r0, #16]
 80017de:	2102      	movs	r1, #2
 80017e0:	f844 1e1c 	strt	r1, [r4, #28]
 80017e4:	6980      	ldr	r0, [r0, #24]
 80017e6:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017ea:	d003      	beq.n	80017f4 <HAL_TIM_IRQHandler+0x88>
 80017ec:	4620      	mov	r0, r4
 80017ee:	f000 f89f 	bl	8001930 <HAL_TIM_IC_CaptureCallback>
 80017f2:	e005      	b.n	8001800 <HAL_TIM_IRQHandler+0x94>
 80017f4:	4620      	mov	r0, r4
 80017f6:	f000 f89c 	bl	8001932 <HAL_TIM_OC_DelayElapsedCallback>
 80017fa:	4620      	mov	r0, r4
 80017fc:	f000 f89a 	bl	8001934 <HAL_TIM_PWM_PulseFinishedCallback>
 8001800:	2000      	movs	r0, #0
 8001802:	f844 0e1c 	strt	r0, [r4, #28]
 8001806:	6820      	ldr	r0, [r4, #0]
 8001808:	6901      	ldr	r1, [r0, #16]
 800180a:	f011 0f08 	tst.w	r1, #8
 800180e:	bf1c      	itt	ne
 8001810:	68c1      	ldrne	r1, [r0, #12]
 8001812:	f011 0f08 	tstne.w	r1, #8
 8001816:	d018      	beq.n	800184a <HAL_TIM_IRQHandler+0xde>
 8001818:	f06f 0108 	mvn.w	r1, #8
 800181c:	f840 1e10 	strt	r1, [r0, #16]
 8001820:	2104      	movs	r1, #4
 8001822:	f844 1e1c 	strt	r1, [r4, #28]
 8001826:	69c0      	ldr	r0, [r0, #28]
 8001828:	f010 0f03 	tst.w	r0, #3
 800182c:	d003      	beq.n	8001836 <HAL_TIM_IRQHandler+0xca>
 800182e:	4620      	mov	r0, r4
 8001830:	f000 f87e 	bl	8001930 <HAL_TIM_IC_CaptureCallback>
 8001834:	e005      	b.n	8001842 <HAL_TIM_IRQHandler+0xd6>
 8001836:	4620      	mov	r0, r4
 8001838:	f000 f87b 	bl	8001932 <HAL_TIM_OC_DelayElapsedCallback>
 800183c:	4620      	mov	r0, r4
 800183e:	f000 f879 	bl	8001934 <HAL_TIM_PWM_PulseFinishedCallback>
 8001842:	2000      	movs	r0, #0
 8001844:	f844 0e1c 	strt	r0, [r4, #28]
 8001848:	6820      	ldr	r0, [r4, #0]
 800184a:	6901      	ldr	r1, [r0, #16]
 800184c:	f011 0f10 	tst.w	r1, #16
 8001850:	bf1c      	itt	ne
 8001852:	68c1      	ldrne	r1, [r0, #12]
 8001854:	f011 0f10 	tstne.w	r1, #16
 8001858:	d018      	beq.n	800188c <HAL_TIM_IRQHandler+0x120>
 800185a:	f06f 0110 	mvn.w	r1, #16
 800185e:	f840 1e10 	strt	r1, [r0, #16]
 8001862:	2108      	movs	r1, #8
 8001864:	f844 1e1c 	strt	r1, [r4, #28]
 8001868:	69c0      	ldr	r0, [r0, #28]
 800186a:	f410 7f40 	tst.w	r0, #768	; 0x300
 800186e:	d003      	beq.n	8001878 <HAL_TIM_IRQHandler+0x10c>
 8001870:	4620      	mov	r0, r4
 8001872:	f000 f85d 	bl	8001930 <HAL_TIM_IC_CaptureCallback>
 8001876:	e005      	b.n	8001884 <HAL_TIM_IRQHandler+0x118>
 8001878:	4620      	mov	r0, r4
 800187a:	f000 f85a 	bl	8001932 <HAL_TIM_OC_DelayElapsedCallback>
 800187e:	4620      	mov	r0, r4
 8001880:	f000 f858 	bl	8001934 <HAL_TIM_PWM_PulseFinishedCallback>
 8001884:	2000      	movs	r0, #0
 8001886:	f844 0e1c 	strt	r0, [r4, #28]
 800188a:	6820      	ldr	r0, [r4, #0]
 800188c:	6901      	ldr	r1, [r0, #16]
 800188e:	f011 0f01 	tst.w	r1, #1
 8001892:	bf1c      	itt	ne
 8001894:	68c1      	ldrne	r1, [r0, #12]
 8001896:	f011 0f01 	tstne.w	r1, #1
 800189a:	d007      	beq.n	80018ac <HAL_TIM_IRQHandler+0x140>
 800189c:	f06f 0101 	mvn.w	r1, #1
 80018a0:	f840 1e10 	strt	r1, [r0, #16]
 80018a4:	4620      	mov	r0, r4
 80018a6:	f000 f898 	bl	80019da <HAL_TIM_PeriodElapsedCallback>
 80018aa:	6820      	ldr	r0, [r4, #0]
 80018ac:	6901      	ldr	r1, [r0, #16]
 80018ae:	f011 0f80 	tst.w	r1, #128	; 0x80
 80018b2:	bf1c      	itt	ne
 80018b4:	68c1      	ldrne	r1, [r0, #12]
 80018b6:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018ba:	d007      	beq.n	80018cc <HAL_TIM_IRQHandler+0x160>
 80018bc:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80018c0:	f840 1e10 	strt	r1, [r0, #16]
 80018c4:	4620      	mov	r0, r4
 80018c6:	f000 f838 	bl	800193a <HAL_TIMEx_BreakCallback>
 80018ca:	6820      	ldr	r0, [r4, #0]
 80018cc:	6901      	ldr	r1, [r0, #16]
 80018ce:	f411 7f80 	tst.w	r1, #256	; 0x100
 80018d2:	bf1c      	itt	ne
 80018d4:	68c1      	ldrne	r1, [r0, #12]
 80018d6:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018da:	d007      	beq.n	80018ec <HAL_TIM_IRQHandler+0x180>
 80018dc:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80018e0:	f840 1e10 	strt	r1, [r0, #16]
 80018e4:	4620      	mov	r0, r4
 80018e6:	f000 f829 	bl	800193c <HAL_TIMEx_Break2Callback>
 80018ea:	6820      	ldr	r0, [r4, #0]
 80018ec:	6901      	ldr	r1, [r0, #16]
 80018ee:	f011 0f40 	tst.w	r1, #64	; 0x40
 80018f2:	bf1c      	itt	ne
 80018f4:	68c1      	ldrne	r1, [r0, #12]
 80018f6:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80018fa:	d007      	beq.n	800190c <HAL_TIM_IRQHandler+0x1a0>
 80018fc:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001900:	f840 1e10 	strt	r1, [r0, #16]
 8001904:	4620      	mov	r0, r4
 8001906:	f000 f816 	bl	8001936 <HAL_TIM_TriggerCallback>
 800190a:	6820      	ldr	r0, [r4, #0]
 800190c:	6901      	ldr	r1, [r0, #16]
 800190e:	f011 0f20 	tst.w	r1, #32
 8001912:	bf1c      	itt	ne
 8001914:	68c1      	ldrne	r1, [r0, #12]
 8001916:	f011 0f20 	tstne.w	r1, #32
 800191a:	d100      	bne.n	800191e <HAL_TIM_IRQHandler+0x1b2>
 800191c:	bdd0      	pop	{r4, r6, r7, pc}
 800191e:	f06f 0120 	mvn.w	r1, #32
 8001922:	f840 1e10 	strt	r1, [r0, #16]
 8001926:	4620      	mov	r0, r4
 8001928:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800192c:	f000 b804 	b.w	8001938 <HAL_TIMEx_CommutationCallback>

08001930 <HAL_TIM_IC_CaptureCallback>:
 8001930:	4770      	bx	lr

08001932 <HAL_TIM_OC_DelayElapsedCallback>:
 8001932:	4770      	bx	lr

08001934 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001934:	4770      	bx	lr

08001936 <HAL_TIM_TriggerCallback>:
 8001936:	4770      	bx	lr

08001938 <HAL_TIMEx_CommutationCallback>:
 8001938:	4770      	bx	lr

0800193a <HAL_TIMEx_BreakCallback>:
 800193a:	4770      	bx	lr

0800193c <HAL_TIMEx_Break2Callback>:
 800193c:	4770      	bx	lr

0800193e <HAL_InitTick>:
 800193e:	b5b0      	push	{r4, r5, r7, lr}
 8001940:	af02      	add	r7, sp, #8
 8001942:	b086      	sub	sp, #24
 8001944:	4601      	mov	r1, r0
 8001946:	2036      	movs	r0, #54	; 0x36
 8001948:	2200      	movs	r2, #0
 800194a:	2400      	movs	r4, #0
 800194c:	f7ff fc5d 	bl	800120a <HAL_NVIC_SetPriority>
 8001950:	2036      	movs	r0, #54	; 0x36
 8001952:	f7ff fc8d 	bl	8001270 <HAL_NVIC_EnableIRQ>
 8001956:	f241 0058 	movw	r0, #4184	; 0x1058
 800195a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800195e:	6801      	ldr	r1, [r0, #0]
 8001960:	f041 0110 	orr.w	r1, r1, #16
 8001964:	6001      	str	r1, [r0, #0]
 8001966:	4669      	mov	r1, sp
 8001968:	6800      	ldr	r0, [r0, #0]
 800196a:	f000 0010 	and.w	r0, r0, #16
 800196e:	9001      	str	r0, [sp, #4]
 8001970:	9801      	ldr	r0, [sp, #4]
 8001972:	a801      	add	r0, sp, #4
 8001974:	f7ff fe21 	bl	80015ba <HAL_RCC_GetClockConfig>
 8001978:	9d04      	ldr	r5, [sp, #16]
 800197a:	f7ff fdf4 	bl	8001566 <HAL_RCC_GetPCLK1Freq>
 800197e:	2d00      	cmp	r5, #0
 8001980:	f241 31ec 	movw	r1, #5100	; 0x13ec
 8001984:	f241 0200 	movw	r2, #4096	; 0x1000
 8001988:	f240 33e7 	movw	r3, #999	; 0x3e7
 800198c:	bf18      	it	ne
 800198e:	2501      	movne	r5, #1
 8001990:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001994:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001998:	40a8      	lsls	r0, r5
 800199a:	f64d 6583 	movw	r5, #56963	; 0xde83
 800199e:	618c      	str	r4, [r1, #24]
 80019a0:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80019a4:	fba0 0505 	umull	r0, r5, r0, r5
 80019a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80019ac:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80019b0:	e9c1 2000 	strd	r2, r0, [r1]
 80019b4:	4608      	mov	r0, r1
 80019b6:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80019ba:	610c      	str	r4, [r1, #16]
 80019bc:	f7ff fe1e 	bl	80015fc <HAL_TIM_Base_Init>
 80019c0:	2800      	cmp	r0, #0
 80019c2:	bf1e      	ittt	ne
 80019c4:	2001      	movne	r0, #1
 80019c6:	b006      	addne	sp, #24
 80019c8:	bdb0      	popne	{r4, r5, r7, pc}
 80019ca:	f241 30ec 	movw	r0, #5100	; 0x13ec
 80019ce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019d2:	f7ff feb4 	bl	800173e <HAL_TIM_Base_Start_IT>
 80019d6:	b006      	add	sp, #24
 80019d8:	bdb0      	pop	{r4, r5, r7, pc}

080019da <HAL_TIM_PeriodElapsedCallback>:
 80019da:	f7ff bbf7 	b.w	80011cc <HAL_IncTick>

080019de <TIM6_DAC_IRQHandler>:
 80019de:	f241 30ec 	movw	r0, #5100	; 0x13ec
 80019e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019e6:	f7ff bec1 	b.w	800176c <HAL_TIM_IRQHandler>

080019ea <HAL_UART_Init>:
 80019ea:	b084      	sub	sp, #16
 80019ec:	f84d 4e00 	strt	r4, [sp]
 80019f0:	f84d 6e04 	strt	r6, [sp, #4]
 80019f4:	f84d 7e08 	strt	r7, [sp, #8]
 80019f8:	f84d ee0c 	strt	lr, [sp, #12]
 80019fc:	af02      	add	r7, sp, #8
 80019fe:	4604      	mov	r4, r0
 8001a00:	b1ac      	cbz	r4, 8001a2e <HAL_UART_Init+0x44>
 8001a02:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001a04:	b928      	cbnz	r0, 8001a12 <HAL_UART_Init+0x28>
 8001a06:	2000      	movs	r0, #0
 8001a08:	f844 0e70 	strt	r0, [r4, #112]
 8001a0c:	4620      	mov	r0, r4
 8001a0e:	f000 f82b 	bl	8001a68 <HAL_UART_MspInit>
 8001a12:	2024      	movs	r0, #36	; 0x24
 8001a14:	f844 0e74 	strt	r0, [r4, #116]
 8001a18:	6820      	ldr	r0, [r4, #0]
 8001a1a:	6801      	ldr	r1, [r0, #0]
 8001a1c:	f021 0101 	bic.w	r1, r1, #1
 8001a20:	f840 1e00 	strt	r1, [r0]
 8001a24:	4620      	mov	r0, r4
 8001a26:	f000 f821 	bl	8001a6c <UART_SetConfig>
 8001a2a:	2801      	cmp	r0, #1
 8001a2c:	d101      	bne.n	8001a32 <HAL_UART_Init+0x48>
 8001a2e:	2001      	movs	r0, #1
 8001a30:	bdd0      	pop	{r4, r6, r7, pc}
 8001a32:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001a34:	2800      	cmp	r0, #0
 8001a36:	bf1c      	itt	ne
 8001a38:	4620      	movne	r0, r4
 8001a3a:	f000 f956 	blne	8001cea <UART_AdvFeatureConfig>
 8001a3e:	6820      	ldr	r0, [r4, #0]
 8001a40:	6841      	ldr	r1, [r0, #4]
 8001a42:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001a46:	f840 1e04 	strt	r1, [r0, #4]
 8001a4a:	6881      	ldr	r1, [r0, #8]
 8001a4c:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001a50:	f840 1e08 	strt	r1, [r0, #8]
 8001a54:	6801      	ldr	r1, [r0, #0]
 8001a56:	f041 0101 	orr.w	r1, r1, #1
 8001a5a:	f840 1e00 	strt	r1, [r0]
 8001a5e:	4620      	mov	r0, r4
 8001a60:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001a64:	f000 b9b7 	b.w	8001dd6 <UART_CheckIdleState>

08001a68 <HAL_UART_MspInit>:
 8001a68:	4770      	bx	lr
	...

08001a6c <UART_SetConfig>:
 8001a6c:	b084      	sub	sp, #16
 8001a6e:	f84d 4e00 	strt	r4, [sp]
 8001a72:	f84d 5e04 	strt	r5, [sp, #4]
 8001a76:	f84d 7e08 	strt	r7, [sp, #8]
 8001a7a:	f84d ee0c 	strt	lr, [sp, #12]
 8001a7e:	af02      	add	r7, sp, #8
 8001a80:	4604      	mov	r4, r0
 8001a82:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001a86:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001a8a:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001a8e:	6821      	ldr	r1, [r4, #0]
 8001a90:	68a0      	ldr	r0, [r4, #8]
 8001a92:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001a96:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001a9a:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001a9e:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001aa2:	4310      	orrs	r0, r2
 8001aa4:	69e2      	ldr	r2, [r4, #28]
 8001aa6:	4571      	cmp	r1, lr
 8001aa8:	ea40 0003 	orr.w	r0, r0, r3
 8001aac:	680b      	ldr	r3, [r1, #0]
 8001aae:	ea40 0002 	orr.w	r0, r0, r2
 8001ab2:	ea03 0305 	and.w	r3, r3, r5
 8001ab6:	f04f 0510 	mov.w	r5, #16
 8001aba:	ea40 0003 	orr.w	r0, r0, r3
 8001abe:	f841 0e00 	strt	r0, [r1]
 8001ac2:	6848      	ldr	r0, [r1, #4]
 8001ac4:	68e3      	ldr	r3, [r4, #12]
 8001ac6:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001aca:	ea40 0003 	orr.w	r0, r0, r3
 8001ace:	f841 0e04 	strt	r0, [r1, #4]
 8001ad2:	69a0      	ldr	r0, [r4, #24]
 8001ad4:	bf1c      	itt	ne
 8001ad6:	6a23      	ldrne	r3, [r4, #32]
 8001ad8:	4318      	orrne	r0, r3
 8001ada:	688b      	ldr	r3, [r1, #8]
 8001adc:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001ae0:	4318      	orrs	r0, r3
 8001ae2:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001ae6:	f841 0e08 	strt	r0, [r1, #8]
 8001aea:	f242 4000 	movw	r0, #9216	; 0x2400
 8001aee:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001af2:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001af6:	4299      	cmp	r1, r3
 8001af8:	dc15      	bgt.n	8001b26 <UART_SetConfig+0xba>
 8001afa:	f244 4300 	movw	r3, #17408	; 0x4400
 8001afe:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b02:	4299      	cmp	r1, r3
 8001b04:	d024      	beq.n	8001b50 <UART_SetConfig+0xe4>
 8001b06:	f644 0300 	movw	r3, #18432	; 0x4800
 8001b0a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b0e:	4299      	cmp	r1, r3
 8001b10:	d022      	beq.n	8001b58 <UART_SetConfig+0xec>
 8001b12:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001b16:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b1a:	4299      	cmp	r1, r3
 8001b1c:	d131      	bne.n	8001b82 <UART_SetConfig+0x116>
 8001b1e:	f8dc 3000 	ldr.w	r3, [ip]
 8001b22:	099d      	lsrs	r5, r3, #6
 8001b24:	e023      	b.n	8001b6e <UART_SetConfig+0x102>
 8001b26:	f245 0300 	movw	r3, #20480	; 0x5000
 8001b2a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b2e:	4299      	cmp	r1, r3
 8001b30:	d016      	beq.n	8001b60 <UART_SetConfig+0xf4>
 8001b32:	4571      	cmp	r1, lr
 8001b34:	d018      	beq.n	8001b68 <UART_SetConfig+0xfc>
 8001b36:	f643 0300 	movw	r3, #14336	; 0x3800
 8001b3a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001b3e:	4299      	cmp	r1, r3
 8001b40:	d11f      	bne.n	8001b82 <UART_SetConfig+0x116>
 8001b42:	f8dc 5000 	ldr.w	r5, [ip]
 8001b46:	f24a 13bc 	movw	r3, #41404	; 0xa1bc
 8001b4a:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b4e:	e012      	b.n	8001b76 <UART_SetConfig+0x10a>
 8001b50:	f8dc 3000 	ldr.w	r3, [ip]
 8001b54:	089d      	lsrs	r5, r3, #2
 8001b56:	e00a      	b.n	8001b6e <UART_SetConfig+0x102>
 8001b58:	f8dc 3000 	ldr.w	r3, [ip]
 8001b5c:	091d      	lsrs	r5, r3, #4
 8001b5e:	e006      	b.n	8001b6e <UART_SetConfig+0x102>
 8001b60:	f8dc 3000 	ldr.w	r3, [ip]
 8001b64:	0a1d      	lsrs	r5, r3, #8
 8001b66:	e002      	b.n	8001b6e <UART_SetConfig+0x102>
 8001b68:	f8dc 3000 	ldr.w	r3, [ip]
 8001b6c:	0a9d      	lsrs	r5, r3, #10
 8001b6e:	f24a 13cc 	movw	r3, #41420	; 0xa1cc
 8001b72:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b76:	f005 0503 	and.w	r5, r5, #3
 8001b7a:	f085 0502 	eor.w	r5, r5, #2
 8001b7e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001b82:	4571      	cmp	r1, lr
 8001b84:	d012      	beq.n	8001bac <UART_SetConfig+0x140>
 8001b86:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001b8a:	d11d      	bne.n	8001bc8 <UART_SetConfig+0x15c>
 8001b8c:	f005 001f 	and.w	r0, r5, #31
 8001b90:	2101      	movs	r1, #1
 8001b92:	2808      	cmp	r0, #8
 8001b94:	f200 80a0 	bhi.w	8001cd8 <UART_SetConfig+0x26c>
 8001b98:	e8df f000 	tbb	[pc, r0]
 8001b9c:	9e434005 	.word	0x9e434005
 8001ba0:	9e9e9e49 	.word	0x9e9e9e49
 8001ba4:	004f      	.short	0x004f
 8001ba6:	f7ff fcde 	bl	8001566 <HAL_RCC_GetPCLK1Freq>
 8001baa:	e042      	b.n	8001c32 <UART_SetConfig+0x1c6>
 8001bac:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001bb0:	2101      	movs	r1, #1
 8001bb2:	2d04      	cmp	r5, #4
 8001bb4:	f200 8090 	bhi.w	8001cd8 <UART_SetConfig+0x26c>
 8001bb8:	e8df f005 	tbb	[pc, r5]
 8001bbc:	8e161c03 	.word	0x8e161c03
 8001bc0:	001a      	.short	0x001a
 8001bc2:	f7ff fcd0 	bl	8001566 <HAL_RCC_GetPCLK1Freq>
 8001bc6:	e011      	b.n	8001bec <UART_SetConfig+0x180>
 8001bc8:	f005 021f 	and.w	r2, r5, #31
 8001bcc:	2101      	movs	r1, #1
 8001bce:	2a08      	cmp	r2, #8
 8001bd0:	f200 8082 	bhi.w	8001cd8 <UART_SetConfig+0x26c>
 8001bd4:	e8df f002 	tbb	[pc, r2]
 8001bd8:	80464305 	.word	0x80464305
 8001bdc:	80808048 	.word	0x80808048
 8001be0:	004e      	.short	0x004e
 8001be2:	f7ff fcc0 	bl	8001566 <HAL_RCC_GetPCLK1Freq>
 8001be6:	e041      	b.n	8001c6c <UART_SetConfig+0x200>
 8001be8:	f7ff fc5a 	bl	80014a0 <HAL_RCC_GetSysClockFreq>
 8001bec:	b910      	cbnz	r0, 8001bf4 <UART_SetConfig+0x188>
 8001bee:	e072      	b.n	8001cd6 <UART_SetConfig+0x26a>
 8001bf0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bf4:	6862      	ldr	r2, [r4, #4]
 8001bf6:	2101      	movs	r1, #1
 8001bf8:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001bfc:	4298      	cmp	r0, r3
 8001bfe:	d36b      	bcc.n	8001cd8 <UART_SetConfig+0x26c>
 8001c00:	0313      	lsls	r3, r2, #12
 8001c02:	4298      	cmp	r0, r3
 8001c04:	bf9c      	itt	ls
 8001c06:	2101      	movls	r1, #1
 8001c08:	2d04      	cmpls	r5, #4
 8001c0a:	d865      	bhi.n	8001cd8 <UART_SetConfig+0x26c>
 8001c0c:	e8df f005 	tbb	[pc, r5]
 8001c10:	64453e03 	.word	0x64453e03
 8001c14:	0052      	.short	0x0052
 8001c16:	f7ff fca6 	bl	8001566 <HAL_RCC_GetPCLK1Freq>
 8001c1a:	e040      	b.n	8001c9e <UART_SetConfig+0x232>
 8001c1c:	f7ff fcb8 	bl	8001590 <HAL_RCC_GetPCLK2Freq>
 8001c20:	e007      	b.n	8001c32 <UART_SetConfig+0x1c6>
 8001c22:	6861      	ldr	r1, [r4, #4]
 8001c24:	f644 0200 	movw	r2, #18432	; 0x4800
 8001c28:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001c2c:	e008      	b.n	8001c40 <UART_SetConfig+0x1d4>
 8001c2e:	f7ff fc37 	bl	80014a0 <HAL_RCC_GetSysClockFreq>
 8001c32:	6861      	ldr	r1, [r4, #4]
 8001c34:	0040      	lsls	r0, r0, #1
 8001c36:	084a      	lsrs	r2, r1, #1
 8001c38:	e003      	b.n	8001c42 <UART_SetConfig+0x1d6>
 8001c3a:	6861      	ldr	r1, [r4, #4]
 8001c3c:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001c40:	0848      	lsrs	r0, r1, #1
 8001c42:	4410      	add	r0, r2
 8001c44:	fbb0 f0f1 	udiv	r0, r0, r1
 8001c48:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001c4c:	4001      	ands	r1, r0
 8001c4e:	2910      	cmp	r1, #16
 8001c50:	d303      	bcc.n	8001c5a <UART_SetConfig+0x1ee>
 8001c52:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001c56:	4308      	orrs	r0, r1
 8001c58:	e03a      	b.n	8001cd0 <UART_SetConfig+0x264>
 8001c5a:	2101      	movs	r1, #1
 8001c5c:	e03c      	b.n	8001cd8 <UART_SetConfig+0x26c>
 8001c5e:	f7ff fc97 	bl	8001590 <HAL_RCC_GetPCLK2Freq>
 8001c62:	e003      	b.n	8001c6c <UART_SetConfig+0x200>
 8001c64:	6862      	ldr	r2, [r4, #4]
 8001c66:	e008      	b.n	8001c7a <UART_SetConfig+0x20e>
 8001c68:	f7ff fc1a 	bl	80014a0 <HAL_RCC_GetSysClockFreq>
 8001c6c:	6862      	ldr	r2, [r4, #4]
 8001c6e:	4601      	mov	r1, r0
 8001c70:	0850      	lsrs	r0, r2, #1
 8001c72:	e003      	b.n	8001c7c <UART_SetConfig+0x210>
 8001c74:	6862      	ldr	r2, [r4, #4]
 8001c76:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c7a:	0851      	lsrs	r1, r2, #1
 8001c7c:	4408      	add	r0, r1
 8001c7e:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c82:	b280      	uxth	r0, r0
 8001c84:	2810      	cmp	r0, #16
 8001c86:	d223      	bcs.n	8001cd0 <UART_SetConfig+0x264>
 8001c88:	2101      	movs	r1, #1
 8001c8a:	e025      	b.n	8001cd8 <UART_SetConfig+0x26c>
 8001c8c:	2000      	movs	r0, #0
 8001c8e:	2100      	movs	r1, #0
 8001c90:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001c94:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001c98:	e006      	b.n	8001ca8 <UART_SetConfig+0x23c>
 8001c9a:	f7ff fc01 	bl	80014a0 <HAL_RCC_GetSysClockFreq>
 8001c9e:	6862      	ldr	r2, [r4, #4]
 8001ca0:	0e01      	lsrs	r1, r0, #24
 8001ca2:	0853      	lsrs	r3, r2, #1
 8001ca4:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001ca8:	f141 0100 	adc.w	r1, r1, #0
 8001cac:	2300      	movs	r3, #0
 8001cae:	f7fe ff25 	bl	8000afc <__aeabi_uldivmod>
 8001cb2:	e005      	b.n	8001cc0 <UART_SetConfig+0x254>
 8001cb4:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001cb8:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001cbc:	fbb0 f0f2 	udiv	r0, r0, r2
 8001cc0:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001cc4:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001cc8:	f2c0 020f 	movt	r2, #15
 8001ccc:	4291      	cmp	r1, r2
 8001cce:	d80a      	bhi.n	8001ce6 <UART_SetConfig+0x27a>
 8001cd0:	6821      	ldr	r1, [r4, #0]
 8001cd2:	f841 0e0c 	strt	r0, [r1, #12]
 8001cd6:	2100      	movs	r1, #0
 8001cd8:	2000      	movs	r0, #0
 8001cda:	f844 0e60 	strt	r0, [r4, #96]
 8001cde:	f844 0e64 	strt	r0, [r4, #100]
 8001ce2:	4608      	mov	r0, r1
 8001ce4:	bdb0      	pop	{r4, r5, r7, pc}
 8001ce6:	2101      	movs	r1, #1
 8001ce8:	e7f6      	b.n	8001cd8 <UART_SetConfig+0x26c>

08001cea <UART_AdvFeatureConfig>:
 8001cea:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001cec:	f011 0f01 	tst.w	r1, #1
 8001cf0:	d009      	beq.n	8001d06 <UART_AdvFeatureConfig+0x1c>
 8001cf2:	6802      	ldr	r2, [r0, #0]
 8001cf4:	6853      	ldr	r3, [r2, #4]
 8001cf6:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001cfa:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001cfe:	ea43 030c 	orr.w	r3, r3, ip
 8001d02:	f842 3e04 	strt	r3, [r2, #4]
 8001d06:	078a      	lsls	r2, r1, #30
 8001d08:	d509      	bpl.n	8001d1e <UART_AdvFeatureConfig+0x34>
 8001d0a:	6802      	ldr	r2, [r0, #0]
 8001d0c:	6853      	ldr	r3, [r2, #4]
 8001d0e:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001d12:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001d16:	ea43 030c 	orr.w	r3, r3, ip
 8001d1a:	f842 3e04 	strt	r3, [r2, #4]
 8001d1e:	074a      	lsls	r2, r1, #29
 8001d20:	d509      	bpl.n	8001d36 <UART_AdvFeatureConfig+0x4c>
 8001d22:	6802      	ldr	r2, [r0, #0]
 8001d24:	6853      	ldr	r3, [r2, #4]
 8001d26:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001d2a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001d2e:	ea43 030c 	orr.w	r3, r3, ip
 8001d32:	f842 3e04 	strt	r3, [r2, #4]
 8001d36:	070a      	lsls	r2, r1, #28
 8001d38:	d509      	bpl.n	8001d4e <UART_AdvFeatureConfig+0x64>
 8001d3a:	6802      	ldr	r2, [r0, #0]
 8001d3c:	6853      	ldr	r3, [r2, #4]
 8001d3e:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001d42:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001d46:	ea43 030c 	orr.w	r3, r3, ip
 8001d4a:	f842 3e04 	strt	r3, [r2, #4]
 8001d4e:	06ca      	lsls	r2, r1, #27
 8001d50:	d509      	bpl.n	8001d66 <UART_AdvFeatureConfig+0x7c>
 8001d52:	6802      	ldr	r2, [r0, #0]
 8001d54:	6893      	ldr	r3, [r2, #8]
 8001d56:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001d5a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001d5e:	ea43 030c 	orr.w	r3, r3, ip
 8001d62:	f842 3e08 	strt	r3, [r2, #8]
 8001d66:	068a      	lsls	r2, r1, #26
 8001d68:	d509      	bpl.n	8001d7e <UART_AdvFeatureConfig+0x94>
 8001d6a:	6802      	ldr	r2, [r0, #0]
 8001d6c:	6893      	ldr	r3, [r2, #8]
 8001d6e:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001d72:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001d76:	ea43 030c 	orr.w	r3, r3, ip
 8001d7a:	f842 3e08 	strt	r3, [r2, #8]
 8001d7e:	b082      	sub	sp, #8
 8001d80:	f84d 7e00 	strt	r7, [sp]
 8001d84:	f84d ee04 	strt	lr, [sp, #4]
 8001d88:	466f      	mov	r7, sp
 8001d8a:	064a      	lsls	r2, r1, #25
 8001d8c:	d515      	bpl.n	8001dba <UART_AdvFeatureConfig+0xd0>
 8001d8e:	f8d0 e000 	ldr.w	lr, [r0]
 8001d92:	f8de c004 	ldr.w	ip, [lr, #4]
 8001d96:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001d98:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001d9c:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001da0:	ea42 0203 	orr.w	r2, r2, r3
 8001da4:	f84e 2e04 	strt	r2, [lr, #4]
 8001da8:	d107      	bne.n	8001dba <UART_AdvFeatureConfig+0xd0>
 8001daa:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001dae:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001db0:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001db4:	431a      	orrs	r2, r3
 8001db6:	f84e 2e04 	strt	r2, [lr, #4]
 8001dba:	0609      	lsls	r1, r1, #24
 8001dbc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001dc0:	bf58      	it	pl
 8001dc2:	4770      	bxpl	lr
 8001dc4:	6801      	ldr	r1, [r0, #0]
 8001dc6:	684a      	ldr	r2, [r1, #4]
 8001dc8:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001dca:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001dce:	4310      	orrs	r0, r2
 8001dd0:	f841 0e04 	strt	r0, [r1, #4]
 8001dd4:	4770      	bx	lr

08001dd6 <UART_CheckIdleState>:
 8001dd6:	b085      	sub	sp, #20
 8001dd8:	f84d 4e00 	strt	r4, [sp]
 8001ddc:	f84d 5e04 	strt	r5, [sp, #4]
 8001de0:	f84d 6e08 	strt	r6, [sp, #8]
 8001de4:	f84d 7e0c 	strt	r7, [sp, #12]
 8001de8:	f84d ee10 	strt	lr, [sp, #16]
 8001dec:	af03      	add	r7, sp, #12
 8001dee:	b081      	sub	sp, #4
 8001df0:	f84d be00 	strt	fp, [sp]
 8001df4:	4604      	mov	r4, r0
 8001df6:	2000      	movs	r0, #0
 8001df8:	f844 0e7c 	strt	r0, [r4, #124]
 8001dfc:	f7ff f9ef 	bl	80011de <HAL_GetTick>
 8001e00:	4605      	mov	r5, r0
 8001e02:	6820      	ldr	r0, [r4, #0]
 8001e04:	6801      	ldr	r1, [r0, #0]
 8001e06:	f011 0f08 	tst.w	r1, #8
 8001e0a:	d00f      	beq.n	8001e2c <UART_CheckIdleState+0x56>
 8001e0c:	69c1      	ldr	r1, [r0, #28]
 8001e0e:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001e12:	d10b      	bne.n	8001e2c <UART_CheckIdleState+0x56>
 8001e14:	2600      	movs	r6, #0
 8001e16:	f7ff f9e2 	bl	80011de <HAL_GetTick>
 8001e1a:	1b41      	subs	r1, r0, r5
 8001e1c:	6820      	ldr	r0, [r4, #0]
 8001e1e:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001e22:	d11b      	bne.n	8001e5c <UART_CheckIdleState+0x86>
 8001e24:	69c1      	ldr	r1, [r0, #28]
 8001e26:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001e2a:	d0f4      	beq.n	8001e16 <UART_CheckIdleState+0x40>
 8001e2c:	6801      	ldr	r1, [r0, #0]
 8001e2e:	f011 0f04 	tst.w	r1, #4
 8001e32:	d101      	bne.n	8001e38 <UART_CheckIdleState+0x62>
 8001e34:	2600      	movs	r6, #0
 8001e36:	e01c      	b.n	8001e72 <UART_CheckIdleState+0x9c>
 8001e38:	69c0      	ldr	r0, [r0, #28]
 8001e3a:	2600      	movs	r6, #0
 8001e3c:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e40:	d117      	bne.n	8001e72 <UART_CheckIdleState+0x9c>
 8001e42:	f7ff f9cc 	bl	80011de <HAL_GetTick>
 8001e46:	1b41      	subs	r1, r0, r5
 8001e48:	6820      	ldr	r0, [r4, #0]
 8001e4a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001e4e:	d105      	bne.n	8001e5c <UART_CheckIdleState+0x86>
 8001e50:	69c0      	ldr	r0, [r0, #28]
 8001e52:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001e56:	d0f4      	beq.n	8001e42 <UART_CheckIdleState+0x6c>
 8001e58:	2600      	movs	r6, #0
 8001e5a:	e00a      	b.n	8001e72 <UART_CheckIdleState+0x9c>
 8001e5c:	6801      	ldr	r1, [r0, #0]
 8001e5e:	2603      	movs	r6, #3
 8001e60:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e64:	f840 1e00 	strt	r1, [r0]
 8001e68:	6881      	ldr	r1, [r0, #8]
 8001e6a:	f021 0101 	bic.w	r1, r1, #1
 8001e6e:	f840 1e08 	strt	r1, [r0, #8]
 8001e72:	2020      	movs	r0, #32
 8001e74:	f844 0e74 	strt	r0, [r4, #116]
 8001e78:	f844 0e78 	strt	r0, [r4, #120]
 8001e7c:	2000      	movs	r0, #0
 8001e7e:	f844 0e70 	strt	r0, [r4, #112]
 8001e82:	4630      	mov	r0, r6
 8001e84:	f85d bb04 	ldr.w	fp, [sp], #4
 8001e88:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001e8a <HAL_UART_Transmit>:
 8001e8a:	b085      	sub	sp, #20
 8001e8c:	f84d 4e00 	strt	r4, [sp]
 8001e90:	f84d 5e04 	strt	r5, [sp, #4]
 8001e94:	f84d 6e08 	strt	r6, [sp, #8]
 8001e98:	f84d 7e0c 	strt	r7, [sp, #12]
 8001e9c:	f84d ee10 	strt	lr, [sp, #16]
 8001ea0:	af03      	add	r7, sp, #12
 8001ea2:	b084      	sub	sp, #16
 8001ea4:	f84d 8e00 	strt	r8, [sp]
 8001ea8:	f84d 9e04 	strt	r9, [sp, #4]
 8001eac:	f84d ae08 	strt	sl, [sp, #8]
 8001eb0:	f84d be0c 	strt	fp, [sp, #12]
 8001eb4:	b081      	sub	sp, #4
 8001eb6:	4604      	mov	r4, r0
 8001eb8:	461d      	mov	r5, r3
 8001eba:	4616      	mov	r6, r2
 8001ebc:	4689      	mov	r9, r1
 8001ebe:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001ec0:	2820      	cmp	r0, #32
 8001ec2:	d109      	bne.n	8001ed8 <HAL_UART_Transmit+0x4e>
 8001ec4:	f1b9 0f00 	cmp.w	r9, #0
 8001ec8:	f04f 0001 	mov.w	r0, #1
 8001ecc:	bf18      	it	ne
 8001ece:	2e00      	cmpne	r6, #0
 8001ed0:	d003      	beq.n	8001eda <HAL_UART_Transmit+0x50>
 8001ed2:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001ed4:	2801      	cmp	r0, #1
 8001ed6:	d104      	bne.n	8001ee2 <HAL_UART_Transmit+0x58>
 8001ed8:	2002      	movs	r0, #2
 8001eda:	b001      	add	sp, #4
 8001edc:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001ee0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001ee2:	2001      	movs	r0, #1
 8001ee4:	f844 0e70 	strt	r0, [r4, #112]
 8001ee8:	2000      	movs	r0, #0
 8001eea:	f844 0e7c 	strt	r0, [r4, #124]
 8001eee:	2021      	movs	r0, #33	; 0x21
 8001ef0:	f844 0e74 	strt	r0, [r4, #116]
 8001ef4:	f7ff f973 	bl	80011de <HAL_GetTick>
 8001ef8:	f824 6e50 	strht	r6, [r4, #80]
 8001efc:	f824 6e52 	strht	r6, [r4, #82]
 8001f00:	4680      	mov	r8, r0
 8001f02:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f06:	f8d4 b000 	ldr.w	fp, [r4]
 8001f0a:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001f0e:	2900      	cmp	r1, #0
 8001f10:	d046      	beq.n	8001fa0 <HAL_UART_Transmit+0x116>
 8001f12:	f105 0a01 	add.w	sl, r5, #1
 8001f16:	0600      	lsls	r0, r0, #24
 8001f18:	d410      	bmi.n	8001f3c <HAL_UART_Transmit+0xb2>
 8001f1a:	465e      	mov	r6, fp
 8001f1c:	f1ba 0f00 	cmp.w	sl, #0
 8001f20:	d007      	beq.n	8001f32 <HAL_UART_Transmit+0xa8>
 8001f22:	b345      	cbz	r5, 8001f76 <HAL_UART_Transmit+0xec>
 8001f24:	f7ff f95b 	bl	80011de <HAL_GetTick>
 8001f28:	6826      	ldr	r6, [r4, #0]
 8001f2a:	eba0 0008 	sub.w	r0, r0, r8
 8001f2e:	42a8      	cmp	r0, r5
 8001f30:	d822      	bhi.n	8001f78 <HAL_UART_Transmit+0xee>
 8001f32:	69f0      	ldr	r0, [r6, #28]
 8001f34:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001f38:	d0f0      	beq.n	8001f1c <HAL_UART_Transmit+0x92>
 8001f3a:	e000      	b.n	8001f3e <HAL_UART_Transmit+0xb4>
 8001f3c:	465e      	mov	r6, fp
 8001f3e:	68a0      	ldr	r0, [r4, #8]
 8001f40:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001f44:	bf04      	itt	eq
 8001f46:	6920      	ldreq	r0, [r4, #16]
 8001f48:	2800      	cmpeq	r0, #0
 8001f4a:	d002      	beq.n	8001f52 <HAL_UART_Transmit+0xc8>
 8001f4c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001f50:	e003      	b.n	8001f5a <HAL_UART_Transmit+0xd0>
 8001f52:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001f56:	f36f 205f 	bfc	r0, #9, #23
 8001f5a:	f826 0e28 	strht	r0, [r6, #40]
 8001f5e:	46b3      	mov	fp, r6
 8001f60:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001f64:	3801      	subs	r0, #1
 8001f66:	f824 0e52 	strht	r0, [r4, #82]
 8001f6a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f6e:	69f0      	ldr	r0, [r6, #28]
 8001f70:	2900      	cmp	r1, #0
 8001f72:	d1d0      	bne.n	8001f16 <HAL_UART_Transmit+0x8c>
 8001f74:	e015      	b.n	8001fa2 <HAL_UART_Transmit+0x118>
 8001f76:	465e      	mov	r6, fp
 8001f78:	6830      	ldr	r0, [r6, #0]
 8001f7a:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001f7e:	f846 0e00 	strt	r0, [r6]
 8001f82:	68b0      	ldr	r0, [r6, #8]
 8001f84:	f020 0001 	bic.w	r0, r0, #1
 8001f88:	f846 0e08 	strt	r0, [r6, #8]
 8001f8c:	2020      	movs	r0, #32
 8001f8e:	f844 0e74 	strt	r0, [r4, #116]
 8001f92:	f844 0e78 	strt	r0, [r4, #120]
 8001f96:	2000      	movs	r0, #0
 8001f98:	f844 0e70 	strt	r0, [r4, #112]
 8001f9c:	2003      	movs	r0, #3
 8001f9e:	e79c      	b.n	8001eda <HAL_UART_Transmit+0x50>
 8001fa0:	465e      	mov	r6, fp
 8001fa2:	0640      	lsls	r0, r0, #25
 8001fa4:	d411      	bmi.n	8001fca <HAL_UART_Transmit+0x140>
 8001fa6:	f105 0901 	add.w	r9, r5, #1
 8001faa:	4630      	mov	r0, r6
 8001fac:	f1b9 0f00 	cmp.w	r9, #0
 8001fb0:	d007      	beq.n	8001fc2 <HAL_UART_Transmit+0x138>
 8001fb2:	b18d      	cbz	r5, 8001fd8 <HAL_UART_Transmit+0x14e>
 8001fb4:	f7ff f913 	bl	80011de <HAL_GetTick>
 8001fb8:	eba0 0108 	sub.w	r1, r0, r8
 8001fbc:	6820      	ldr	r0, [r4, #0]
 8001fbe:	42a9      	cmp	r1, r5
 8001fc0:	d80b      	bhi.n	8001fda <HAL_UART_Transmit+0x150>
 8001fc2:	69c1      	ldr	r1, [r0, #28]
 8001fc4:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001fc8:	d0f0      	beq.n	8001fac <HAL_UART_Transmit+0x122>
 8001fca:	2020      	movs	r0, #32
 8001fcc:	f844 0e74 	strt	r0, [r4, #116]
 8001fd0:	2000      	movs	r0, #0
 8001fd2:	f844 0e70 	strt	r0, [r4, #112]
 8001fd6:	e780      	b.n	8001eda <HAL_UART_Transmit+0x50>
 8001fd8:	4630      	mov	r0, r6
 8001fda:	6801      	ldr	r1, [r0, #0]
 8001fdc:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001fe0:	f840 1e00 	strt	r1, [r0]
 8001fe4:	6881      	ldr	r1, [r0, #8]
 8001fe6:	f021 0101 	bic.w	r1, r1, #1
 8001fea:	f840 1e08 	strt	r1, [r0, #8]
 8001fee:	e7cd      	b.n	8001f8c <HAL_UART_Transmit+0x102>

08001ff0 <BSP_COM_Init>:
 8001ff0:	b085      	sub	sp, #20
 8001ff2:	f84d 4e00 	strt	r4, [sp]
 8001ff6:	f84d 5e04 	strt	r5, [sp, #4]
 8001ffa:	f84d 6e08 	strt	r6, [sp, #8]
 8001ffe:	f84d 7e0c 	strt	r7, [sp, #12]
 8002002:	f84d ee10 	strt	lr, [sp, #16]
 8002006:	af03      	add	r7, sp, #12
 8002008:	b083      	sub	sp, #12
 800200a:	f84d 8e00 	strt	r8, [sp]
 800200e:	f84d 9e04 	strt	r9, [sp, #4]
 8002012:	f84d be08 	strt	fp, [sp, #8]
 8002016:	b086      	sub	sp, #24
 8002018:	4605      	mov	r5, r0
 800201a:	4688      	mov	r8, r1
 800201c:	bb25      	cbnz	r5, 8002068 <BSP_COM_Init+0x78>
 800201e:	f241 004c 	movw	r0, #4172	; 0x104c
 8002022:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002026:	6801      	ldr	r1, [r0, #0]
 8002028:	f041 0102 	orr.w	r1, r1, #2
 800202c:	f840 1e00 	strt	r1, [r0]
 8002030:	6801      	ldr	r1, [r0, #0]
 8002032:	f001 0102 	and.w	r1, r1, #2
 8002036:	f84d 1e04 	strt	r1, [sp, #4]
 800203a:	9901      	ldr	r1, [sp, #4]
 800203c:	6801      	ldr	r1, [r0, #0]
 800203e:	f041 0102 	orr.w	r1, r1, #2
 8002042:	f840 1e00 	strt	r1, [r0]
 8002046:	6801      	ldr	r1, [r0, #0]
 8002048:	f001 0102 	and.w	r1, r1, #2
 800204c:	f84d 1e04 	strt	r1, [sp, #4]
 8002050:	9901      	ldr	r1, [sp, #4]
 8002052:	6941      	ldr	r1, [r0, #20]
 8002054:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8002058:	f840 1e14 	strt	r1, [r0, #20]
 800205c:	6940      	ldr	r0, [r0, #20]
 800205e:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002062:	f84d 0e04 	strt	r0, [sp, #4]
 8002066:	9801      	ldr	r0, [sp, #4]
 8002068:	2040      	movs	r0, #64	; 0x40
 800206a:	2402      	movs	r4, #2
 800206c:	ae01      	add	r6, sp, #4
 800206e:	f04f 0907 	mov.w	r9, #7
 8002072:	f84d 0e04 	strt	r0, [sp, #4]
 8002076:	2000      	movs	r0, #0
 8002078:	f84d 4e08 	strt	r4, [sp, #8]
 800207c:	f84d 4e10 	strt	r4, [sp, #16]
 8002080:	4631      	mov	r1, r6
 8002082:	f84d 0e0c 	strt	r0, [sp, #12]
 8002086:	f240 000c 	movw	r0, #12
 800208a:	f84d 9e14 	strt	r9, [sp, #20]
 800208e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002092:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002096:	f7ff f8fb 	bl	8001290 <HAL_GPIO_Init>
 800209a:	2080      	movs	r0, #128	; 0x80
 800209c:	4631      	mov	r1, r6
 800209e:	f84d 0e04 	strt	r0, [sp, #4]
 80020a2:	f84d 4e08 	strt	r4, [sp, #8]
 80020a6:	f240 0010 	movw	r0, #16
 80020aa:	f84d 9e14 	strt	r9, [sp, #20]
 80020ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020b2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80020b6:	f7ff f8eb 	bl	8001290 <HAL_GPIO_Init>
 80020ba:	f240 0008 	movw	r0, #8
 80020be:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020c2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80020c6:	f848 0e00 	strt	r0, [r8]
 80020ca:	4640      	mov	r0, r8
 80020cc:	f7ff fc8d 	bl	80019ea <HAL_UART_Init>
 80020d0:	b006      	add	sp, #24
 80020d2:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80020d6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020d8 <gethex>:
 80020d8:	b085      	sub	sp, #20
 80020da:	f84d 4e00 	strt	r4, [sp]
 80020de:	f84d 5e04 	strt	r5, [sp, #4]
 80020e2:	f84d 6e08 	strt	r6, [sp, #8]
 80020e6:	f84d 7e0c 	strt	r7, [sp, #12]
 80020ea:	f84d ee10 	strt	lr, [sp, #16]
 80020ee:	af03      	add	r7, sp, #12
 80020f0:	b084      	sub	sp, #16
 80020f2:	f84d 8e00 	strt	r8, [sp]
 80020f6:	f84d 9e04 	strt	r9, [sp, #4]
 80020fa:	f84d ae08 	strt	sl, [sp, #8]
 80020fe:	f84d be0c 	strt	fp, [sp, #12]
 8002102:	b085      	sub	sp, #20
 8002104:	6805      	ldr	r5, [r0, #0]
 8002106:	468c      	mov	ip, r1
 8002108:	2100      	movs	r1, #0
 800210a:	186e      	adds	r6, r5, r1
 800210c:	3101      	adds	r1, #1
 800210e:	78b4      	ldrb	r4, [r6, #2]
 8002110:	2c30      	cmp	r4, #48	; 0x30
 8002112:	d0fa      	beq.n	800210a <gethex+0x32>
 8002114:	f649 7ab0 	movw	sl, #40880	; 0x9fb0
 8002118:	440d      	add	r5, r1
 800211a:	f84d 3e0c 	strt	r3, [sp, #12]
 800211e:	f84d 2e10 	strt	r2, [sp, #16]
 8002122:	f6c0 0a00 	movt	sl, #2048	; 0x800
 8002126:	f105 0b01 	add.w	fp, r5, #1
 800212a:	f81a 6004 	ldrb.w	r6, [sl, r4]
 800212e:	b196      	cbz	r6, 8002156 <gethex+0x7e>
 8002130:	46e0      	mov	r8, ip
 8002132:	f04f 0e00 	mov.w	lr, #0
 8002136:	f04f 0c00 	mov.w	ip, #0
 800213a:	f81a 6004 	ldrb.w	r6, [sl, r4]
 800213e:	f10b 0501 	add.w	r5, fp, #1
 8002142:	b33e      	cbz	r6, 8002194 <gethex+0xbc>
 8002144:	f815 4b01 	ldrb.w	r4, [r5], #1
 8002148:	f81a 6004 	ldrb.w	r6, [sl, r4]
 800214c:	2e00      	cmp	r6, #0
 800214e:	d1f9      	bne.n	8002144 <gethex+0x6c>
 8002150:	f1a5 0901 	sub.w	r9, r5, #1
 8002154:	e01f      	b.n	8002196 <gethex+0xbe>
 8002156:	3901      	subs	r1, #1
 8002158:	2c2e      	cmp	r4, #46	; 0x2e
 800215a:	d136      	bne.n	80021ca <gethex+0xf2>
 800215c:	46ae      	mov	lr, r5
 800215e:	f81e 4f02 	ldrb.w	r4, [lr, #2]!
 8002162:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8002166:	b3b6      	cbz	r6, 80021d6 <gethex+0xfe>
 8002168:	2c30      	cmp	r4, #48	; 0x30
 800216a:	46f3      	mov	fp, lr
 800216c:	d106      	bne.n	800217c <gethex+0xa4>
 800216e:	1ce9      	adds	r1, r5, #3
 8002170:	f811 4b01 	ldrb.w	r4, [r1], #1
 8002174:	2c30      	cmp	r4, #48	; 0x30
 8002176:	d0fb      	beq.n	8002170 <gethex+0x98>
 8002178:	f1a1 0b01 	sub.w	fp, r1, #1
 800217c:	f81a 1004 	ldrb.w	r1, [sl, r4]
 8002180:	46e0      	mov	r8, ip
 8002182:	f04f 0c00 	mov.w	ip, #0
 8002186:	2900      	cmp	r1, #0
 8002188:	f04f 0101 	mov.w	r1, #1
 800218c:	bf08      	it	eq
 800218e:	f04f 0c01 	moveq.w	ip, #1
 8002192:	e7d2      	b.n	800213a <gethex+0x62>
 8002194:	46d9      	mov	r9, fp
 8002196:	f1be 0f00 	cmp.w	lr, #0
 800219a:	4663      	mov	r3, ip
 800219c:	46c4      	mov	ip, r8
 800219e:	bf08      	it	eq
 80021a0:	2c2e      	cmpeq	r4, #46	; 0x2e
 80021a2:	d109      	bne.n	80021b8 <gethex+0xe0>
 80021a4:	f1a5 0901 	sub.w	r9, r5, #1
 80021a8:	f819 4f01 	ldrb.w	r4, [r9, #1]!
 80021ac:	f81a 6004 	ldrb.w	r6, [sl, r4]
 80021b0:	2e00      	cmp	r6, #0
 80021b2:	d1f9      	bne.n	80021a8 <gethex+0xd0>
 80021b4:	46ae      	mov	lr, r5
 80021b6:	e002      	b.n	80021be <gethex+0xe6>
 80021b8:	f1be 0f00 	cmp.w	lr, #0
 80021bc:	d009      	beq.n	80021d2 <gethex+0xfa>
 80021be:	eba9 020e 	sub.w	r2, r9, lr
 80021c2:	2600      	movs	r6, #0
 80021c4:	eba6 0682 	sub.w	r6, r6, r2, lsl #2
 80021c8:	e008      	b.n	80021dc <gethex+0x104>
 80021ca:	2301      	movs	r3, #1
 80021cc:	2600      	movs	r6, #0
 80021ce:	46d9      	mov	r9, fp
 80021d0:	e004      	b.n	80021dc <gethex+0x104>
 80021d2:	2600      	movs	r6, #0
 80021d4:	e002      	b.n	80021dc <gethex+0x104>
 80021d6:	2301      	movs	r3, #1
 80021d8:	2600      	movs	r6, #0
 80021da:	46f1      	mov	r9, lr
 80021dc:	f044 0220 	orr.w	r2, r4, #32
 80021e0:	2a70      	cmp	r2, #112	; 0x70
 80021e2:	d10b      	bne.n	80021fc <gethex+0x124>
 80021e4:	f899 2001 	ldrb.w	r2, [r9, #1]
 80021e8:	2500      	movs	r5, #0
 80021ea:	2a2b      	cmp	r2, #43	; 0x2b
 80021ec:	d002      	beq.n	80021f4 <gethex+0x11c>
 80021ee:	2a2d      	cmp	r2, #45	; 0x2d
 80021f0:	d109      	bne.n	8002206 <gethex+0x12e>
 80021f2:	2501      	movs	r5, #1
 80021f4:	f899 2002 	ldrb.w	r2, [r9, #2]
 80021f8:	2402      	movs	r4, #2
 80021fa:	e005      	b.n	8002208 <gethex+0x130>
 80021fc:	f04f 0800 	mov.w	r8, #0
 8002200:	464c      	mov	r4, r9
 8002202:	2500      	movs	r5, #0
 8002204:	e048      	b.n	8002298 <gethex+0x1c0>
 8002206:	2401      	movs	r4, #1
 8002208:	f81a e002 	ldrb.w	lr, [sl, r2]
 800220c:	f1ae 0201 	sub.w	r2, lr, #1
 8002210:	b2d2      	uxtb	r2, r2
 8002212:	2a18      	cmp	r2, #24
 8002214:	d903      	bls.n	800221e <gethex+0x146>
 8002216:	f04f 0800 	mov.w	r8, #0
 800221a:	464c      	mov	r4, r9
 800221c:	e03c      	b.n	8002298 <gethex+0x1c0>
 800221e:	f84d 6e08 	strt	r6, [sp, #8]
 8002222:	f84d 5e00 	strt	r5, [sp]
 8002226:	f84d ce04 	strt	ip, [sp, #4]
 800222a:	eb09 0504 	add.w	r5, r9, r4
 800222e:	f04f 0800 	mov.w	r8, #0
 8002232:	462c      	mov	r4, r5
 8002234:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 8002238:	f81a 6002 	ldrb.w	r6, [sl, r2]
 800223c:	1e72      	subs	r2, r6, #1
 800223e:	fa5f fc82 	uxtb.w	ip, r2
 8002242:	f1ae 0210 	sub.w	r2, lr, #16
 8002246:	f1bc 0f18 	cmp.w	ip, #24
 800224a:	d81c      	bhi.n	8002286 <gethex+0x1ae>
 800224c:	1cac      	adds	r4, r5, #2
 800224e:	469c      	mov	ip, r3
 8002250:	2500      	movs	r5, #0
 8002252:	ebb8 6fd2 	cmp.w	r8, r2, lsr #27
 8002256:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800225a:	ea4f 0242 	mov.w	r2, r2, lsl #1
 800225e:	bf18      	it	ne
 8002260:	2501      	movne	r5, #1
 8002262:	fa52 fe86 	uxtab	lr, r2, r6
 8002266:	f814 6b01 	ldrb.w	r6, [r4], #1
 800226a:	f1ae 0210 	sub.w	r2, lr, #16
 800226e:	f81a 6006 	ldrb.w	r6, [sl, r6]
 8002272:	1e73      	subs	r3, r6, #1
 8002274:	b2db      	uxtb	r3, r3
 8002276:	2b19      	cmp	r3, #25
 8002278:	d3eb      	bcc.n	8002252 <gethex+0x17a>
 800227a:	46a8      	mov	r8, r5
 800227c:	9d01      	ldr	r5, [sp, #4]
 800227e:	4663      	mov	r3, ip
 8002280:	3c01      	subs	r4, #1
 8002282:	46ac      	mov	ip, r5
 8002284:	e001      	b.n	800228a <gethex+0x1b2>
 8002286:	f8dd c004 	ldr.w	ip, [sp, #4]
 800228a:	9d00      	ldr	r5, [sp, #0]
 800228c:	2d00      	cmp	r5, #0
 800228e:	bf18      	it	ne
 8002290:	f1ce 0210 	rsbne	r2, lr, #16
 8002294:	9e02      	ldr	r6, [sp, #8]
 8002296:	4416      	add	r6, r2
 8002298:	2900      	cmp	r1, #0
 800229a:	bf08      	it	eq
 800229c:	f1ab 0401 	subeq.w	r4, fp, #1
 80022a0:	2b00      	cmp	r3, #0
 80022a2:	f840 4e00 	strt	r4, [r0]
 80022a6:	d10a      	bne.n	80022be <gethex+0x1e6>
 80022a8:	f1b8 0f00 	cmp.w	r8, #0
 80022ac:	d010      	beq.n	80022d0 <gethex+0x1f8>
 80022ae:	b375      	cbz	r5, 800230e <gethex+0x236>
 80022b0:	4664      	mov	r4, ip
 80022b2:	f002 ff07 	bl	80050c4 <__errno>
 80022b6:	46a4      	mov	ip, r4
 80022b8:	2122      	movs	r1, #34	; 0x22
 80022ba:	f840 1e00 	strt	r1, [r0]
 80022be:	2000      	movs	r0, #0
 80022c0:	f84c 0e00 	strt	r0, [ip]
 80022c4:	f84c 0e04 	strt	r0, [ip, #4]
 80022c8:	b005      	add	sp, #20
 80022ca:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80022ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022d0:	ea6f 000b 	mvn.w	r0, fp
 80022d4:	2500      	movs	r5, #0
 80022d6:	f84d 6e08 	strt	r6, [sp, #8]
 80022da:	4448      	add	r0, r9
 80022dc:	2808      	cmp	r0, #8
 80022de:	db07      	blt.n	80022f0 <gethex+0x218>
 80022e0:	0841      	lsrs	r1, r0, #1
 80022e2:	280f      	cmp	r0, #15
 80022e4:	f105 0501 	add.w	r5, r5, #1
 80022e8:	4608      	mov	r0, r1
 80022ea:	d8f9      	bhi.n	80022e0 <gethex+0x208>
 80022ec:	2d07      	cmp	r5, #7
 80022ee:	dc35      	bgt.n	800235c <gethex+0x284>
 80022f0:	f640 2004 	movw	r0, #2564	; 0xa04
 80022f4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022f8:	f850 4025 	ldr.w	r4, [r0, r5, lsl #2]
 80022fc:	b194      	cbz	r4, 8002324 <gethex+0x24c>
 80022fe:	6821      	ldr	r1, [r4, #0]
 8002300:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8002304:	f840 1e00 	strt	r1, [r0]
 8002308:	eba0 0085 	sub.w	r0, r0, r5, lsl #2
 800230c:	e047      	b.n	800239e <gethex+0x2c6>
 800230e:	9904      	ldr	r1, [sp, #16]
 8002310:	9803      	ldr	r0, [sp, #12]
 8002312:	2901      	cmp	r1, #1
 8002314:	f000 8143 	beq.w	800259e <gethex+0x4c6>
 8002318:	2903      	cmp	r1, #3
 800231a:	d028      	beq.n	800236e <gethex+0x296>
 800231c:	2902      	cmp	r1, #2
 800231e:	d129      	bne.n	8002374 <gethex+0x29c>
 8002320:	bb40      	cbnz	r0, 8002374 <gethex+0x29c>
 8002322:	e13c      	b.n	800259e <gethex+0x4c6>
 8002324:	f240 0128 	movw	r1, #40	; 0x28
 8002328:	f640 2228 	movw	r2, #2600	; 0xa28
 800232c:	2001      	movs	r0, #1
 800232e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002332:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002336:	fa00 f805 	lsl.w	r8, r0, r5
 800233a:	201b      	movs	r0, #27
 800233c:	680c      	ldr	r4, [r1, #0]
 800233e:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 8002342:	1aa2      	subs	r2, r4, r2
 8002344:	10d2      	asrs	r2, r2, #3
 8002346:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 800234a:	08c0      	lsrs	r0, r0, #3
 800234c:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8002350:	d81b      	bhi.n	800238a <gethex+0x2b2>
 8002352:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 8002356:	f841 0e00 	strt	r0, [r1]
 800235a:	e01c      	b.n	8002396 <gethex+0x2be>
 800235c:	2001      	movs	r0, #1
 800235e:	4666      	mov	r6, ip
 8002360:	fa00 f805 	lsl.w	r8, r0, r5
 8002364:	201b      	movs	r0, #27
 8002366:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 800236a:	08c0      	lsrs	r0, r0, #3
 800236c:	e00e      	b.n	800238c <gethex+0x2b4>
 800236e:	2800      	cmp	r0, #0
 8002370:	f040 8115 	bne.w	800259e <gethex+0x4c6>
 8002374:	f244 007f 	movw	r0, #16511	; 0x407f
 8002378:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800237c:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 8002380:	f84c 1e00 	strt	r1, [ip]
 8002384:	f84c 0e04 	strt	r0, [ip, #4]
 8002388:	e79e      	b.n	80022c8 <gethex+0x1f0>
 800238a:	4666      	mov	r6, ip
 800238c:	00c0      	lsls	r0, r0, #3
 800238e:	f002 fee7 	bl	8005160 <malloc>
 8002392:	4604      	mov	r4, r0
 8002394:	46b4      	mov	ip, r6
 8002396:	f844 5e04 	strt	r5, [r4, #4]
 800239a:	f844 8e08 	strt	r8, [r4, #8]
 800239e:	f104 0814 	add.w	r8, r4, #20
 80023a2:	2100      	movs	r1, #0
 80023a4:	2200      	movs	r2, #0
 80023a6:	4640      	mov	r0, r8
 80023a8:	f844 1e0c 	strt	r1, [r4, #12]
 80023ac:	f844 1e10 	strt	r1, [r4, #16]
 80023b0:	45d9      	cmp	r9, fp
 80023b2:	d813      	bhi.n	80023dc <gethex+0x304>
 80023b4:	e017      	b.n	80023e6 <gethex+0x30e>
 80023b6:	2a20      	cmp	r2, #32
 80023b8:	bf01      	itttt	eq
 80023ba:	f840 1e00 	strteq	r1, [r0]
 80023be:	bfe8      	it	al	; unpredictable <IT:eq>
 80023c0:	3004      	addal	r0, #4
 80023c2:	f899 3000 	ldrb.w	r3, [r9]
 80023c6:	2100      	movs	r1, #0
 80023c8:	2200      	movs	r2, #0
 80023ca:	f81a 3003 	ldrb.w	r3, [sl, r3]
 80023ce:	f003 030f 	and.w	r3, r3, #15
 80023d2:	4093      	lsls	r3, r2
 80023d4:	3204      	adds	r2, #4
 80023d6:	4319      	orrs	r1, r3
 80023d8:	45d9      	cmp	r9, fp
 80023da:	d904      	bls.n	80023e6 <gethex+0x30e>
 80023dc:	f819 3d01 	ldrb.w	r3, [r9, #-1]!
 80023e0:	2b2e      	cmp	r3, #46	; 0x2e
 80023e2:	d0f9      	beq.n	80023d8 <gethex+0x300>
 80023e4:	e7e7      	b.n	80023b6 <gethex+0x2de>
 80023e6:	f840 1e00 	strt	r1, [r0]
 80023ea:	bfe8      	it	al
 80023ec:	3004      	addal	r0, #4
 80023ee:	2600      	movs	r6, #0
 80023f0:	2210      	movs	r2, #16
 80023f2:	eba0 0308 	sub.w	r3, r0, r8
 80023f6:	ebb6 4f11 	cmp.w	r6, r1, lsr #16
 80023fa:	ea4f 00a3 	mov.w	r0, r3, asr #2
 80023fe:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8002402:	f844 0e10 	strt	r0, [r4, #16]
 8002406:	bf08      	it	eq
 8002408:	0409      	lsleq	r1, r1, #16
 800240a:	bf18      	it	ne
 800240c:	2200      	movne	r2, #0
 800240e:	ebb6 6f11 	cmp.w	r6, r1, lsr #24
 8002412:	bf04      	itt	eq
 8002414:	f042 0208 	orreq.w	r2, r2, #8
 8002418:	0209      	lsleq	r1, r1, #8
 800241a:	ebb6 7f11 	cmp.w	r6, r1, lsr #28
 800241e:	bf04      	itt	eq
 8002420:	f042 0204 	orreq.w	r2, r2, #4
 8002424:	0109      	lsleq	r1, r1, #4
 8002426:	ebb6 7f91 	cmp.w	r6, r1, lsr #30
 800242a:	bf04      	itt	eq
 800242c:	f042 0202 	orreq.w	r2, r2, #2
 8002430:	0089      	lsleq	r1, r1, #2
 8002432:	2900      	cmp	r1, #0
 8002434:	db03      	blt.n	800243e <gethex+0x366>
 8002436:	0049      	lsls	r1, r1, #1
 8002438:	bf4c      	ite	mi
 800243a:	3201      	addmi	r2, #1
 800243c:	2220      	movpl	r2, #32
 800243e:	1a99      	subs	r1, r3, r2
 8002440:	2939      	cmp	r1, #57	; 0x39
 8002442:	db17      	blt.n	8002474 <gethex+0x39c>
 8002444:	f1a1 0638 	sub.w	r6, r1, #56	; 0x38
 8002448:	4603      	mov	r3, r0
 800244a:	1172      	asrs	r2, r6, #5
 800244c:	4282      	cmp	r2, r0
 800244e:	dc2a      	bgt.n	80024a6 <gethex+0x3ce>
 8002450:	da28      	bge.n	80024a4 <gethex+0x3cc>
 8002452:	f016 031f 	ands.w	r3, r6, #31
 8002456:	d025      	beq.n	80024a4 <gethex+0x3cc>
 8002458:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 800245c:	46e6      	mov	lr, ip
 800245e:	f8d5 c014 	ldr.w	ip, [r5, #20]
 8002462:	fa2c f503 	lsr.w	r5, ip, r3
 8002466:	fa05 f303 	lsl.w	r3, r5, r3
 800246a:	4563      	cmp	r3, ip
 800246c:	46f4      	mov	ip, lr
 800246e:	4613      	mov	r3, r2
 8002470:	d019      	beq.n	80024a6 <gethex+0x3ce>
 8002472:	e022      	b.n	80024ba <gethex+0x3e2>
 8002474:	2938      	cmp	r1, #56	; 0x38
 8002476:	d105      	bne.n	8002484 <gethex+0x3ac>
 8002478:	9e02      	ldr	r6, [sp, #8]
 800247a:	f04f 0900 	mov.w	r9, #0
 800247e:	2e7f      	cmp	r6, #127	; 0x7f
 8002480:	da59      	bge.n	8002536 <gethex+0x45e>
 8002482:	e062      	b.n	800254a <gethex+0x472>
 8002484:	f1c1 0638 	rsb	r6, r1, #56	; 0x38
 8002488:	4620      	mov	r0, r4
 800248a:	4664      	mov	r4, ip
 800248c:	4631      	mov	r1, r6
 800248e:	f000 fb12 	bl	8002ab6 <lshift>
 8002492:	46a4      	mov	ip, r4
 8002494:	4604      	mov	r4, r0
 8002496:	9802      	ldr	r0, [sp, #8]
 8002498:	f04f 0900 	mov.w	r9, #0
 800249c:	f104 0814 	add.w	r8, r4, #20
 80024a0:	1b80      	subs	r0, r0, r6
 80024a2:	e045      	b.n	8002530 <gethex+0x458>
 80024a4:	4613      	mov	r3, r2
 80024a6:	eb04 0283 	add.w	r2, r4, r3, lsl #2
 80024aa:	3210      	adds	r2, #16
 80024ac:	1d13      	adds	r3, r2, #4
 80024ae:	4543      	cmp	r3, r8
 80024b0:	d923      	bls.n	80024fa <gethex+0x422>
 80024b2:	f852 3904 	ldr.w	r3, [r2], #-4
 80024b6:	2b00      	cmp	r3, #0
 80024b8:	d0f8      	beq.n	80024ac <gethex+0x3d4>
 80024ba:	f1a1 0239 	sub.w	r2, r1, #57	; 0x39
 80024be:	46e2      	mov	sl, ip
 80024c0:	f04f 0901 	mov.w	r9, #1
 80024c4:	f002 0c1f 	and.w	ip, r2, #31
 80024c8:	1152      	asrs	r2, r2, #5
 80024ca:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 80024ce:	fa09 f30c 	lsl.w	r3, r9, ip
 80024d2:	696d      	ldr	r5, [r5, #20]
 80024d4:	421d      	tst	r5, r3
 80024d6:	d024      	beq.n	8002522 <gethex+0x44a>
 80024d8:	293a      	cmp	r1, #58	; 0x3a
 80024da:	db20      	blt.n	800251e <gethex+0x446>
 80024dc:	4282      	cmp	r2, r0
 80024de:	dc11      	bgt.n	8002504 <gethex+0x42c>
 80024e0:	f1bc 0f00 	cmp.w	ip, #0
 80024e4:	d00d      	beq.n	8002502 <gethex+0x42a>
 80024e6:	4282      	cmp	r2, r0
 80024e8:	da0b      	bge.n	8002502 <gethex+0x42a>
 80024ea:	fa25 f00c 	lsr.w	r0, r5, ip
 80024ee:	fa00 f00c 	lsl.w	r0, r0, ip
 80024f2:	42a8      	cmp	r0, r5
 80024f4:	4610      	mov	r0, r2
 80024f6:	d005      	beq.n	8002504 <gethex+0x42c>
 80024f8:	e00e      	b.n	8002518 <gethex+0x440>
 80024fa:	46e2      	mov	sl, ip
 80024fc:	f04f 0900 	mov.w	r9, #0
 8002500:	e00f      	b.n	8002522 <gethex+0x44a>
 8002502:	4610      	mov	r0, r2
 8002504:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002508:	3010      	adds	r0, #16
 800250a:	1d01      	adds	r1, r0, #4
 800250c:	4541      	cmp	r1, r8
 800250e:	d906      	bls.n	800251e <gethex+0x446>
 8002510:	f850 1904 	ldr.w	r1, [r0], #-4
 8002514:	2900      	cmp	r1, #0
 8002516:	d0f8      	beq.n	800250a <gethex+0x432>
 8002518:	f04f 0903 	mov.w	r9, #3
 800251c:	e001      	b.n	8002522 <gethex+0x44a>
 800251e:	f04f 0902 	mov.w	r9, #2
 8002522:	4620      	mov	r0, r4
 8002524:	4631      	mov	r1, r6
 8002526:	f000 fa47 	bl	80029b8 <rshift>
 800252a:	9802      	ldr	r0, [sp, #8]
 800252c:	46d4      	mov	ip, sl
 800252e:	4430      	add	r0, r6
 8002530:	4606      	mov	r6, r0
 8002532:	2e7f      	cmp	r6, #127	; 0x7f
 8002534:	db09      	blt.n	800254a <gethex+0x472>
 8002536:	b394      	cbz	r4, 800259e <gethex+0x4c6>
 8002538:	6860      	ldr	r0, [r4, #4]
 800253a:	2808      	cmp	r0, #8
 800253c:	db21      	blt.n	8002582 <gethex+0x4aa>
 800253e:	4620      	mov	r0, r4
 8002540:	4664      	mov	r4, ip
 8002542:	f002 fe15 	bl	8005170 <free>
 8002546:	46a4      	mov	ip, r4
 8002548:	e029      	b.n	800259e <gethex+0x4c6>
 800254a:	f116 0fba 	cmn.w	r6, #186	; 0xba
 800254e:	dc10      	bgt.n	8002572 <gethex+0x49a>
 8002550:	f06f 00b8 	mvn.w	r0, #184	; 0xb8
 8002554:	1b86      	subs	r6, r0, r6
 8002556:	2e38      	cmp	r6, #56	; 0x38
 8002558:	db2f      	blt.n	80025ba <gethex+0x4e2>
 800255a:	2c00      	cmp	r4, #0
 800255c:	f43f aea8 	beq.w	80022b0 <gethex+0x1d8>
 8002560:	6860      	ldr	r0, [r4, #4]
 8002562:	2808      	cmp	r0, #8
 8002564:	db48      	blt.n	80025f8 <gethex+0x520>
 8002566:	4620      	mov	r0, r4
 8002568:	4664      	mov	r4, ip
 800256a:	f002 fe01 	bl	8005170 <free>
 800256e:	46a4      	mov	ip, r4
 8002570:	e69e      	b.n	80022b0 <gethex+0x1d8>
 8002572:	f04f 0b18 	mov.w	fp, #24
 8002576:	2500      	movs	r5, #0
 8002578:	f1b9 0f00 	cmp.w	r9, #0
 800257c:	f040 8082 	bne.w	8002684 <gethex+0x5ac>
 8002580:	e112      	b.n	80027a8 <gethex+0x6d0>
 8002582:	f640 2104 	movw	r1, #2564	; 0xa04
 8002586:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800258a:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800258e:	f844 2e00 	strt	r2, [r4]
 8002592:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8002596:	f841 4e00 	strt	r4, [r1]
 800259a:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 800259e:	4664      	mov	r4, ip
 80025a0:	f002 fd90 	bl	80050c4 <__errno>
 80025a4:	2122      	movs	r1, #34	; 0x22
 80025a6:	f840 1e00 	strt	r1, [r0]
 80025aa:	f44f 40ff 	mov.w	r0, #32640	; 0x7f80
 80025ae:	2100      	movs	r1, #0
 80025b0:	f844 1e00 	strt	r1, [r4]
 80025b4:	f844 0e04 	strt	r0, [r4, #4]
 80025b8:	e686      	b.n	80022c8 <gethex+0x1f0>
 80025ba:	f1b9 0f00 	cmp.w	r9, #0
 80025be:	f1a6 0a01 	sub.w	sl, r6, #1
 80025c2:	f04f 0b01 	mov.w	fp, #1
 80025c6:	f04f 0901 	mov.w	r9, #1
 80025ca:	d138      	bne.n	800263e <gethex+0x566>
 80025cc:	2e02      	cmp	r6, #2
 80025ce:	db32      	blt.n	8002636 <gethex+0x55e>
 80025d0:	6921      	ldr	r1, [r4, #16]
 80025d2:	ea4f 106a 	mov.w	r0, sl, asr #5
 80025d6:	4288      	cmp	r0, r1
 80025d8:	dc1e      	bgt.n	8002618 <gethex+0x540>
 80025da:	da1c      	bge.n	8002616 <gethex+0x53e>
 80025dc:	f01a 011f 	ands.w	r1, sl, #31
 80025e0:	d019      	beq.n	8002616 <gethex+0x53e>
 80025e2:	eb04 0280 	add.w	r2, r4, r0, lsl #2
 80025e6:	6952      	ldr	r2, [r2, #20]
 80025e8:	fa22 f301 	lsr.w	r3, r2, r1
 80025ec:	fa03 f101 	lsl.w	r1, r3, r1
 80025f0:	4291      	cmp	r1, r2
 80025f2:	4601      	mov	r1, r0
 80025f4:	d010      	beq.n	8002618 <gethex+0x540>
 80025f6:	e01b      	b.n	8002630 <gethex+0x558>
 80025f8:	f640 2104 	movw	r1, #2564	; 0xa04
 80025fc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002600:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8002604:	f844 2e00 	strt	r2, [r4]
 8002608:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 800260c:	f841 4e00 	strt	r4, [r1]
 8002610:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 8002614:	e64c      	b.n	80022b0 <gethex+0x1d8>
 8002616:	4601      	mov	r1, r0
 8002618:	eb04 0181 	add.w	r1, r4, r1, lsl #2
 800261c:	f104 0014 	add.w	r0, r4, #20
 8002620:	3110      	adds	r1, #16
 8002622:	1d0a      	adds	r2, r1, #4
 8002624:	4282      	cmp	r2, r0
 8002626:	d906      	bls.n	8002636 <gethex+0x55e>
 8002628:	f851 2904 	ldr.w	r2, [r1], #-4
 800262c:	2a00      	cmp	r2, #0
 800262e:	d0f8      	beq.n	8002622 <gethex+0x54a>
 8002630:	f04f 0901 	mov.w	r9, #1
 8002634:	e001      	b.n	800263a <gethex+0x562>
 8002636:	f04f 0900 	mov.w	r9, #0
 800263a:	f04f 0b01 	mov.w	fp, #1
 800263e:	f84d ce04 	strt	ip, [sp, #4]
 8002642:	ea4f 106a 	mov.w	r0, sl, asr #5
 8002646:	4631      	mov	r1, r6
 8002648:	f858 5020 	ldr.w	r5, [r8, r0, lsl #2]
 800264c:	4620      	mov	r0, r4
 800264e:	f000 f9b3 	bl	80029b8 <rshift>
 8002652:	f00a 001f 	and.w	r0, sl, #31
 8002656:	f1c6 0138 	rsb	r1, r6, #56	; 0x38
 800265a:	f06f 06b8 	mvn.w	r6, #184	; 0xb8
 800265e:	fa0b f000 	lsl.w	r0, fp, r0
 8002662:	f001 0b1f 	and.w	fp, r1, #31
 8002666:	4205      	tst	r5, r0
 8002668:	f04f 0501 	mov.w	r5, #1
 800266c:	d004      	beq.n	8002678 <gethex+0x5a0>
 800266e:	f8dd c004 	ldr.w	ip, [sp, #4]
 8002672:	f049 0902 	orr.w	r9, r9, #2
 8002676:	e005      	b.n	8002684 <gethex+0x5ac>
 8002678:	f8dd c004 	ldr.w	ip, [sp, #4]
 800267c:	f1b9 0f00 	cmp.w	r9, #0
 8002680:	f000 8092 	beq.w	80027a8 <gethex+0x6d0>
 8002684:	9804      	ldr	r0, [sp, #16]
 8002686:	2803      	cmp	r0, #3
 8002688:	d014      	beq.n	80026b4 <gethex+0x5dc>
 800268a:	2802      	cmp	r0, #2
 800268c:	d00d      	beq.n	80026aa <gethex+0x5d2>
 800268e:	2801      	cmp	r0, #1
 8002690:	f040 808a 	bne.w	80027a8 <gethex+0x6d0>
 8002694:	ea5f 7089 	movs.w	r0, r9, lsl #30
 8002698:	f140 8086 	bpl.w	80027a8 <gethex+0x6d0>
 800269c:	f8d8 0000 	ldr.w	r0, [r8]
 80026a0:	ea40 0009 	orr.w	r0, r0, r9
 80026a4:	07c0      	lsls	r0, r0, #31
 80026a6:	d108      	bne.n	80026ba <gethex+0x5e2>
 80026a8:	e07e      	b.n	80027a8 <gethex+0x6d0>
 80026aa:	9803      	ldr	r0, [sp, #12]
 80026ac:	f1c0 0001 	rsb	r0, r0, #1
 80026b0:	b918      	cbnz	r0, 80026ba <gethex+0x5e2>
 80026b2:	e079      	b.n	80027a8 <gethex+0x6d0>
 80026b4:	9803      	ldr	r0, [sp, #12]
 80026b6:	2800      	cmp	r0, #0
 80026b8:	d076      	beq.n	80027a8 <gethex+0x6d0>
 80026ba:	f8d4 8010 	ldr.w	r8, [r4, #16]
 80026be:	f104 0014 	add.w	r0, r4, #20
 80026c2:	2200      	movs	r2, #0
 80026c4:	eb00 0188 	add.w	r1, r0, r8, lsl #2
 80026c8:	6803      	ldr	r3, [r0, #0]
 80026ca:	3301      	adds	r3, #1
 80026cc:	d124      	bne.n	8002718 <gethex+0x640>
 80026ce:	f840 2e00 	strt	r2, [r0]
 80026d2:	bfe8      	it	al
 80026d4:	3004      	addal	r0, #4
 80026d6:	4288      	cmp	r0, r1
 80026d8:	d3f6      	bcc.n	80026c8 <gethex+0x5f0>
 80026da:	68a0      	ldr	r0, [r4, #8]
 80026dc:	4580      	cmp	r8, r0
 80026de:	db59      	blt.n	8002794 <gethex+0x6bc>
 80026e0:	6860      	ldr	r0, [r4, #4]
 80026e2:	f84d be04 	strt	fp, [sp, #4]
 80026e6:	f84d 6e08 	strt	r6, [sp, #8]
 80026ea:	f100 0a01 	add.w	sl, r0, #1
 80026ee:	f1ba 0f07 	cmp.w	sl, #7
 80026f2:	dc16      	bgt.n	8002722 <gethex+0x64a>
 80026f4:	f640 2004 	movw	r0, #2564	; 0xa04
 80026f8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026fc:	f850 602a 	ldr.w	r6, [r0, sl, lsl #2]
 8002700:	2e00      	cmp	r6, #0
 8002702:	f000 80ef 	beq.w	80028e4 <gethex+0x80c>
 8002706:	6831      	ldr	r1, [r6, #0]
 8002708:	46e3      	mov	fp, ip
 800270a:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 800270e:	f840 1e00 	strt	r1, [r0]
 8002712:	eba0 008a 	sub.w	r0, r0, sl, lsl #2
 8002716:	e014      	b.n	8002742 <gethex+0x66a>
 8002718:	f840 3e00 	strt	r3, [r0]
 800271c:	2d00      	cmp	r5, #0
 800271e:	d143      	bne.n	80027a8 <gethex+0x6d0>
 8002720:	e05f      	b.n	80027e2 <gethex+0x70a>
 8002722:	2001      	movs	r0, #1
 8002724:	46e3      	mov	fp, ip
 8002726:	fa00 f90a 	lsl.w	r9, r0, sl
 800272a:	201b      	movs	r0, #27
 800272c:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8002730:	08c0      	lsrs	r0, r0, #3
 8002732:	00c0      	lsls	r0, r0, #3
 8002734:	f002 fd14 	bl	8005160 <malloc>
 8002738:	4606      	mov	r6, r0
 800273a:	f846 ae04 	strt	sl, [r6, #4]
 800273e:	f846 9e08 	strt	r9, [r6, #8]
 8002742:	2100      	movs	r1, #0
 8002744:	4630      	mov	r0, r6
 8002746:	2208      	movs	r2, #8
 8002748:	f846 1e10 	strt	r1, [r6, #16]
 800274c:	bfe8      	it	al
 800274e:	300c      	addal	r0, #12
 8002750:	f840 1e00 	strt	r1, [r0]
 8002754:	6921      	ldr	r1, [r4, #16]
 8002756:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 800275a:	f104 010c 	add.w	r1, r4, #12
 800275e:	f002 fcaf 	bl	80050c0 <__aeabi_memcpy>
 8002762:	6860      	ldr	r0, [r4, #4]
 8002764:	2808      	cmp	r0, #8
 8002766:	db03      	blt.n	8002770 <gethex+0x698>
 8002768:	4620      	mov	r0, r4
 800276a:	f002 fd01 	bl	8005170 <free>
 800276e:	e00d      	b.n	800278c <gethex+0x6b4>
 8002770:	f640 2104 	movw	r1, #2564	; 0xa04
 8002774:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002778:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800277c:	f844 2e00 	strt	r2, [r4]
 8002780:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8002784:	f841 4e00 	strt	r4, [r1]
 8002788:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 800278c:	4634      	mov	r4, r6
 800278e:	46dc      	mov	ip, fp
 8002790:	e9dd b601 	ldrd	fp, r6, [sp, #4]
 8002794:	6920      	ldr	r0, [r4, #16]
 8002796:	1c41      	adds	r1, r0, #1
 8002798:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 800279c:	f844 1e10 	strt	r1, [r4, #16]
 80027a0:	2101      	movs	r1, #1
 80027a2:	f840 1e14 	strt	r1, [r0, #20]
 80027a6:	b1e5      	cbz	r5, 80027e2 <gethex+0x70a>
 80027a8:	2c00      	cmp	r4, #0
 80027aa:	f43f ad8d 	beq.w	80022c8 <gethex+0x1f0>
 80027ae:	6860      	ldr	r0, [r4, #4]
 80027b0:	2808      	cmp	r0, #8
 80027b2:	db07      	blt.n	80027c4 <gethex+0x6ec>
 80027b4:	4620      	mov	r0, r4
 80027b6:	b005      	add	sp, #20
 80027b8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80027bc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80027c0:	f002 bcd6 	b.w	8005170 <free>
 80027c4:	f640 2104 	movw	r1, #2564	; 0xa04
 80027c8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80027cc:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80027d0:	f844 2e00 	strt	r2, [r4]
 80027d4:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80027d8:	f841 4e00 	strt	r4, [r1]
 80027dc:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 80027e0:	e572      	b.n	80022c8 <gethex+0x1f0>
 80027e2:	6920      	ldr	r0, [r4, #16]
 80027e4:	4540      	cmp	r0, r8
 80027e6:	dc3e      	bgt.n	8002866 <gethex+0x78e>
 80027e8:	f1bb 0f00 	cmp.w	fp, #0
 80027ec:	d0df      	beq.n	80027ae <gethex+0x6d6>
 80027ee:	eb04 0188 	add.w	r1, r4, r8, lsl #2
 80027f2:	46e1      	mov	r9, ip
 80027f4:	f04f 0c00 	mov.w	ip, #0
 80027f8:	46b2      	mov	sl, r6
 80027fa:	f8d1 e010 	ldr.w	lr, [r1, #16]
 80027fe:	2110      	movs	r1, #16
 8002800:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 8002804:	4673      	mov	r3, lr
 8002806:	bf08      	it	eq
 8002808:	041b      	lsleq	r3, r3, #16
 800280a:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 800280e:	461e      	mov	r6, r3
 8002810:	bf08      	it	eq
 8002812:	0236      	lsleq	r6, r6, #8
 8002814:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 8002818:	4635      	mov	r5, r6
 800281a:	bf08      	it	eq
 800281c:	012d      	lsleq	r5, r5, #4
 800281e:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 8002822:	462a      	mov	r2, r5
 8002824:	bf08      	it	eq
 8002826:	0092      	lsleq	r2, r2, #2
 8002828:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 800282c:	bf18      	it	ne
 800282e:	2100      	movne	r1, #0
 8002830:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 8002834:	bf08      	it	eq
 8002836:	f041 0108 	orreq.w	r1, r1, #8
 800283a:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 800283e:	bf08      	it	eq
 8002840:	f041 0104 	orreq.w	r1, r1, #4
 8002844:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 8002848:	bf08      	it	eq
 800284a:	f041 0102 	orreq.w	r1, r1, #2
 800284e:	2a00      	cmp	r2, #0
 8002850:	db03      	blt.n	800285a <gethex+0x782>
 8002852:	0052      	lsls	r2, r2, #1
 8002854:	bf4c      	ite	mi
 8002856:	3101      	addmi	r1, #1
 8002858:	2120      	movpl	r1, #32
 800285a:	f1cb 0220 	rsb	r2, fp, #32
 800285e:	46cc      	mov	ip, r9
 8002860:	4656      	mov	r6, sl
 8002862:	4291      	cmp	r1, r2
 8002864:	daa0      	bge.n	80027a8 <gethex+0x6d0>
 8002866:	f104 0114 	add.w	r1, r4, #20
 800286a:	2801      	cmp	r0, #1
 800286c:	460b      	mov	r3, r1
 800286e:	db2b      	blt.n	80028c8 <gethex+0x7f0>
 8002870:	4623      	mov	r3, r4
 8002872:	2801      	cmp	r0, #1
 8002874:	f853 2f14 	ldr.w	r2, [r3, #20]!
 8002878:	ea4f 0252 	mov.w	r2, r2, lsr #1
 800287c:	d101      	bne.n	8002882 <gethex+0x7aa>
 800287e:	4608      	mov	r0, r1
 8002880:	e01a      	b.n	80028b8 <gethex+0x7e0>
 8002882:	46b6      	mov	lr, r6
 8002884:	f06f 0604 	mvn.w	r6, #4
 8002888:	eb03 0380 	add.w	r3, r3, r0, lsl #2
 800288c:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002890:	f104 0618 	add.w	r6, r4, #24
 8002894:	0880      	lsrs	r0, r0, #2
 8002896:	6835      	ldr	r5, [r6, #0]
 8002898:	ea42 72c5 	orr.w	r2, r2, r5, lsl #31
 800289c:	bfe8      	it	al
 800289e:	3e04      	subal	r6, #4
 80028a0:	f846 2e00 	strt	r2, [r6]
 80028a4:	bfe8      	it	al
 80028a6:	3604      	addal	r6, #4
 80028a8:	3604      	adds	r6, #4
 80028aa:	086a      	lsrs	r2, r5, #1
 80028ac:	429e      	cmp	r6, r3
 80028ae:	d3f2      	bcc.n	8002896 <gethex+0x7be>
 80028b0:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80028b4:	4676      	mov	r6, lr
 80028b6:	3018      	adds	r0, #24
 80028b8:	4603      	mov	r3, r0
 80028ba:	2a00      	cmp	r2, #0
 80028bc:	f843 2e00 	strt	r2, [r3]
 80028c0:	bfe8      	it	al
 80028c2:	3304      	addal	r3, #4
 80028c4:	bf08      	it	eq
 80028c6:	4603      	moveq	r3, r0
 80028c8:	1a5a      	subs	r2, r3, r1
 80028ca:	1090      	asrs	r0, r2, #2
 80028cc:	f844 0e10 	strt	r0, [r4, #16]
 80028d0:	2000      	movs	r0, #0
 80028d2:	ebb0 0fa2 	cmp.w	r0, r2, asr #2
 80028d6:	bf08      	it	eq
 80028d8:	f841 0e00 	strteq	r0, [r1]
 80028dc:	2e7d      	cmp	r6, #125	; 0x7d
 80028de:	f73f ae2b 	bgt.w	8002538 <gethex+0x460>
 80028e2:	e764      	b.n	80027ae <gethex+0x6d6>
 80028e4:	f240 0128 	movw	r1, #40	; 0x28
 80028e8:	f640 2228 	movw	r2, #2600	; 0xa28
 80028ec:	2001      	movs	r0, #1
 80028ee:	46e3      	mov	fp, ip
 80028f0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80028f4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028f8:	fa00 f90a 	lsl.w	r9, r0, sl
 80028fc:	201b      	movs	r0, #27
 80028fe:	680e      	ldr	r6, [r1, #0]
 8002900:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8002904:	1ab2      	subs	r2, r6, r2
 8002906:	10d2      	asrs	r2, r2, #3
 8002908:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 800290c:	08c0      	lsrs	r0, r0, #3
 800290e:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8002912:	f63f af0e 	bhi.w	8002732 <gethex+0x65a>
 8002916:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 800291a:	f841 0e00 	strt	r0, [r1]
 800291e:	e70c      	b.n	800273a <gethex+0x662>

08002920 <Balloc>:
 8002920:	b084      	sub	sp, #16
 8002922:	f84d 4e00 	strt	r4, [sp]
 8002926:	f84d 5e04 	strt	r5, [sp, #4]
 800292a:	f84d 7e08 	strt	r7, [sp, #8]
 800292e:	f84d ee0c 	strt	lr, [sp, #12]
 8002932:	af02      	add	r7, sp, #8
 8002934:	4604      	mov	r4, r0
 8002936:	2c07      	cmp	r4, #7
 8002938:	dc0e      	bgt.n	8002958 <Balloc+0x38>
 800293a:	f640 2104 	movw	r1, #2564	; 0xa04
 800293e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002942:	f851 0024 	ldr.w	r0, [r1, r4, lsl #2]
 8002946:	b1d8      	cbz	r0, 8002980 <Balloc+0x60>
 8002948:	6802      	ldr	r2, [r0, #0]
 800294a:	eb01 0184 	add.w	r1, r1, r4, lsl #2
 800294e:	f841 2e00 	strt	r2, [r1]
 8002952:	eba1 0184 	sub.w	r1, r1, r4, lsl #2
 8002956:	e00d      	b.n	8002974 <Balloc+0x54>
 8002958:	2001      	movs	r0, #1
 800295a:	fa00 f504 	lsl.w	r5, r0, r4
 800295e:	201b      	movs	r0, #27
 8002960:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8002964:	08c1      	lsrs	r1, r0, #3
 8002966:	00c8      	lsls	r0, r1, #3
 8002968:	f002 fbfa 	bl	8005160 <malloc>
 800296c:	f840 4e04 	strt	r4, [r0, #4]
 8002970:	f840 5e08 	strt	r5, [r0, #8]
 8002974:	2100      	movs	r1, #0
 8002976:	f840 1e0c 	strt	r1, [r0, #12]
 800297a:	f840 1e10 	strt	r1, [r0, #16]
 800297e:	bdb0      	pop	{r4, r5, r7, pc}
 8002980:	f240 0228 	movw	r2, #40	; 0x28
 8002984:	2001      	movs	r0, #1
 8002986:	f640 2328 	movw	r3, #2600	; 0xa28
 800298a:	fa00 f504 	lsl.w	r5, r0, r4
 800298e:	201b      	movs	r0, #27
 8002990:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002994:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002998:	eb00 0185 	add.w	r1, r0, r5, lsl #2
 800299c:	6810      	ldr	r0, [r2, #0]
 800299e:	1ac3      	subs	r3, r0, r3
 80029a0:	10db      	asrs	r3, r3, #3
 80029a2:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 80029a6:	08c9      	lsrs	r1, r1, #3
 80029a8:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 80029ac:	d8db      	bhi.n	8002966 <Balloc+0x46>
 80029ae:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 80029b2:	f842 1e00 	strt	r1, [r2]
 80029b6:	e7d9      	b.n	800296c <Balloc+0x4c>

080029b8 <rshift>:
 80029b8:	b085      	sub	sp, #20
 80029ba:	f84d 4e00 	strt	r4, [sp]
 80029be:	f84d 5e04 	strt	r5, [sp, #4]
 80029c2:	f84d 6e08 	strt	r6, [sp, #8]
 80029c6:	f84d 7e0c 	strt	r7, [sp, #12]
 80029ca:	f84d ee10 	strt	lr, [sp, #16]
 80029ce:	af03      	add	r7, sp, #12
 80029d0:	b083      	sub	sp, #12
 80029d2:	f84d 8e00 	strt	r8, [sp]
 80029d6:	f84d 9e04 	strt	r9, [sp, #4]
 80029da:	f84d be08 	strt	fp, [sp, #8]
 80029de:	6904      	ldr	r4, [r0, #16]
 80029e0:	ea4f 1e61 	mov.w	lr, r1, asr #5
 80029e4:	f100 0c14 	add.w	ip, r0, #20
 80029e8:	4662      	mov	r2, ip
 80029ea:	45a6      	cmp	lr, r4
 80029ec:	da55      	bge.n	8002a9a <rshift+0xe2>
 80029ee:	eb0c 0384 	add.w	r3, ip, r4, lsl #2
 80029f2:	f011 091f 	ands.w	r9, r1, #31
 80029f6:	d028      	beq.n	8002a4a <rshift+0x92>
 80029f8:	eb0c 058e 	add.w	r5, ip, lr, lsl #2
 80029fc:	f855 1b04 	ldr.w	r1, [r5], #4
 8002a00:	fa21 f109 	lsr.w	r1, r1, r9
 8002a04:	429d      	cmp	r5, r3
 8002a06:	d23f      	bcs.n	8002a88 <rshift+0xd0>
 8002a08:	f06f 0604 	mvn.w	r6, #4
 8002a0c:	f1c9 0520 	rsb	r5, r9, #32
 8002a10:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8002a14:	f100 0618 	add.w	r6, r0, #24
 8002a18:	eba4 048e 	sub.w	r4, r4, lr, lsl #2
 8002a1c:	f024 0403 	bic.w	r4, r4, #3
 8002a20:	eb06 0804 	add.w	r8, r6, r4
 8002a24:	ea4f 048e 	mov.w	r4, lr, lsl #2
 8002a28:	59a2      	ldr	r2, [r4, r6]
 8002a2a:	40aa      	lsls	r2, r5
 8002a2c:	4311      	orrs	r1, r2
 8002a2e:	bfe8      	it	al
 8002a30:	3e04      	subal	r6, #4
 8002a32:	f846 1e00 	strt	r1, [r6]
 8002a36:	bfe8      	it	al
 8002a38:	3604      	addal	r6, #4
 8002a3a:	59a1      	ldr	r1, [r4, r6]
 8002a3c:	3604      	adds	r6, #4
 8002a3e:	1932      	adds	r2, r6, r4
 8002a40:	429a      	cmp	r2, r3
 8002a42:	fa21 f109 	lsr.w	r1, r1, r9
 8002a46:	d3ef      	bcc.n	8002a28 <rshift+0x70>
 8002a48:	e01f      	b.n	8002a8a <rshift+0xd2>
 8002a4a:	eb00 0484 	add.w	r4, r0, r4, lsl #2
 8002a4e:	f100 0118 	add.w	r1, r0, #24
 8002a52:	4666      	mov	r6, ip
 8002a54:	eb01 028e 	add.w	r2, r1, lr, lsl #2
 8002a58:	3414      	adds	r4, #20
 8002a5a:	42a2      	cmp	r2, r4
 8002a5c:	bf88      	it	hi
 8002a5e:	4614      	movhi	r4, r2
 8002a60:	f06f 0214 	mvn.w	r2, #20
 8002a64:	1a12      	subs	r2, r2, r0
 8002a66:	eba2 028e 	sub.w	r2, r2, lr, lsl #2
 8002a6a:	4422      	add	r2, r4
 8002a6c:	f022 0203 	bic.w	r2, r2, #3
 8002a70:	440a      	add	r2, r1
 8002a72:	ea4f 018e 	mov.w	r1, lr, lsl #2
 8002a76:	598d      	ldr	r5, [r1, r6]
 8002a78:	f846 5e00 	strt	r5, [r6]
 8002a7c:	bfe8      	it	al
 8002a7e:	3604      	addal	r6, #4
 8002a80:	1875      	adds	r5, r6, r1
 8002a82:	429d      	cmp	r5, r3
 8002a84:	d3f7      	bcc.n	8002a76 <rshift+0xbe>
 8002a86:	e008      	b.n	8002a9a <rshift+0xe2>
 8002a88:	46e0      	mov	r8, ip
 8002a8a:	4642      	mov	r2, r8
 8002a8c:	2900      	cmp	r1, #0
 8002a8e:	f842 1e00 	strt	r1, [r2]
 8002a92:	bfe8      	it	al
 8002a94:	3204      	addal	r2, #4
 8002a96:	bf08      	it	eq
 8002a98:	4642      	moveq	r2, r8
 8002a9a:	eba2 010c 	sub.w	r1, r2, ip
 8002a9e:	108a      	asrs	r2, r1, #2
 8002aa0:	f840 2e10 	strt	r2, [r0, #16]
 8002aa4:	2000      	movs	r0, #0
 8002aa6:	ebb0 0fa1 	cmp.w	r0, r1, asr #2
 8002aaa:	bf08      	it	eq
 8002aac:	f84c 0e00 	strteq	r0, [ip]
 8002ab0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002ab4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002ab6 <lshift>:
 8002ab6:	b085      	sub	sp, #20
 8002ab8:	f84d 4e00 	strt	r4, [sp]
 8002abc:	f84d 5e04 	strt	r5, [sp, #4]
 8002ac0:	f84d 6e08 	strt	r6, [sp, #8]
 8002ac4:	f84d 7e0c 	strt	r7, [sp, #12]
 8002ac8:	f84d ee10 	strt	lr, [sp, #16]
 8002acc:	af03      	add	r7, sp, #12
 8002ace:	b084      	sub	sp, #16
 8002ad0:	f84d 8e00 	strt	r8, [sp]
 8002ad4:	f84d 9e04 	strt	r9, [sp, #4]
 8002ad8:	f84d ae08 	strt	sl, [sp, #8]
 8002adc:	f84d be0c 	strt	fp, [sp, #12]
 8002ae0:	b081      	sub	sp, #4
 8002ae2:	4682      	mov	sl, r0
 8002ae4:	4689      	mov	r9, r1
 8002ae6:	e9da 0101 	ldrd	r0, r1, [sl, #4]
 8002aea:	f8da 2010 	ldr.w	r2, [sl, #16]
 8002aee:	ea4f 1669 	mov.w	r6, r9, asr #5
 8002af2:	eb02 1b69 	add.w	fp, r2, r9, asr #5
 8002af6:	458b      	cmp	fp, r1
 8002af8:	db06      	blt.n	8002b08 <lshift+0x52>
 8002afa:	004a      	lsls	r2, r1, #1
 8002afc:	ebbb 0f41 	cmp.w	fp, r1, lsl #1
 8002b00:	f100 0001 	add.w	r0, r0, #1
 8002b04:	4611      	mov	r1, r2
 8002b06:	daf8      	bge.n	8002afa <lshift+0x44>
 8002b08:	f7ff ff0a 	bl	8002920 <Balloc>
 8002b0c:	4680      	mov	r8, r0
 8002b0e:	2e01      	cmp	r6, #1
 8002b10:	f108 0014 	add.w	r0, r8, #20
 8002b14:	db05      	blt.n	8002b22 <lshift+0x6c>
 8002b16:	00b1      	lsls	r1, r6, #2
 8002b18:	f002 face 	bl	80050b8 <__aeabi_memclr>
 8002b1c:	eb08 0086 	add.w	r0, r8, r6, lsl #2
 8002b20:	3014      	adds	r0, #20
 8002b22:	f8da 1010 	ldr.w	r1, [sl, #16]
 8002b26:	f10a 0214 	add.w	r2, sl, #20
 8002b2a:	f10b 0e01 	add.w	lr, fp, #1
 8002b2e:	f019 091f 	ands.w	r9, r9, #31
 8002b32:	eb02 0381 	add.w	r3, r2, r1, lsl #2
 8002b36:	d02b      	beq.n	8002b90 <lshift+0xda>
 8002b38:	eb0a 0181 	add.w	r1, sl, r1, lsl #2
 8002b3c:	f10a 0418 	add.w	r4, sl, #24
 8002b40:	f06f 0514 	mvn.w	r5, #20
 8002b44:	3114      	adds	r1, #20
 8002b46:	eba5 050a 	sub.w	r5, r5, sl
 8002b4a:	42a1      	cmp	r1, r4
 8002b4c:	bf88      	it	hi
 8002b4e:	460c      	movhi	r4, r1
 8002b50:	1961      	adds	r1, r4, r5
 8002b52:	2501      	movs	r5, #1
 8002b54:	2400      	movs	r4, #0
 8002b56:	eb05 0c91 	add.w	ip, r5, r1, lsr #2
 8002b5a:	f1c9 0120 	rsb	r1, r9, #32
 8002b5e:	4605      	mov	r5, r0
 8002b60:	6816      	ldr	r6, [r2, #0]
 8002b62:	fa06 f609 	lsl.w	r6, r6, r9
 8002b66:	4334      	orrs	r4, r6
 8002b68:	f845 4e00 	strt	r4, [r5]
 8002b6c:	bfe8      	it	al
 8002b6e:	3504      	addal	r5, #4
 8002b70:	f852 4b04 	ldr.w	r4, [r2], #4
 8002b74:	40cc      	lsrs	r4, r1
 8002b76:	429a      	cmp	r2, r3
 8002b78:	d3f2      	bcc.n	8002b60 <lshift+0xaa>
 8002b7a:	2c00      	cmp	r4, #0
 8002b7c:	eb00 008c 	add.w	r0, r0, ip, lsl #2
 8002b80:	f840 4e00 	strt	r4, [r0]
 8002b84:	eba0 008c 	sub.w	r0, r0, ip, lsl #2
 8002b88:	bf18      	it	ne
 8002b8a:	f10b 0e02 	addne.w	lr, fp, #2
 8002b8e:	e007      	b.n	8002ba0 <lshift+0xea>
 8002b90:	f852 1b04 	ldr.w	r1, [r2], #4
 8002b94:	f840 1e00 	strt	r1, [r0]
 8002b98:	bfe8      	it	al
 8002b9a:	3004      	addal	r0, #4
 8002b9c:	429a      	cmp	r2, r3
 8002b9e:	d3f7      	bcc.n	8002b90 <lshift+0xda>
 8002ba0:	f1ae 0001 	sub.w	r0, lr, #1
 8002ba4:	f848 0e10 	strt	r0, [r8, #16]
 8002ba8:	4650      	mov	r0, sl
 8002baa:	f000 f805 	bl	8002bb8 <Bfree>
 8002bae:	4640      	mov	r0, r8
 8002bb0:	b001      	add	sp, #4
 8002bb2:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002bb6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002bb8 <Bfree>:
 8002bb8:	2800      	cmp	r0, #0
 8002bba:	bf08      	it	eq
 8002bbc:	4770      	bxeq	lr
 8002bbe:	6841      	ldr	r1, [r0, #4]
 8002bc0:	2908      	cmp	r1, #8
 8002bc2:	bfa8      	it	ge
 8002bc4:	f002 bad4 	bge.w	8005170 <free>
 8002bc8:	f640 2204 	movw	r2, #2564	; 0xa04
 8002bcc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bd0:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 8002bd4:	f840 3e00 	strt	r3, [r0]
 8002bd8:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8002bdc:	f842 0e00 	strt	r0, [r2]
 8002be0:	eba2 0281 	sub.w	r2, r2, r1, lsl #2
 8002be4:	4770      	bx	lr
	...

08002be8 <strtod>:
 8002be8:	b085      	sub	sp, #20
 8002bea:	f84d 4e00 	strt	r4, [sp]
 8002bee:	f84d 5e04 	strt	r5, [sp, #4]
 8002bf2:	f84d 6e08 	strt	r6, [sp, #8]
 8002bf6:	f84d 7e0c 	strt	r7, [sp, #12]
 8002bfa:	f84d ee10 	strt	lr, [sp, #16]
 8002bfe:	af03      	add	r7, sp, #12
 8002c00:	b084      	sub	sp, #16
 8002c02:	f84d 8e00 	strt	r8, [sp]
 8002c06:	f84d 9e04 	strt	r9, [sp, #4]
 8002c0a:	f84d ae08 	strt	sl, [sp, #8]
 8002c0e:	f84d be0c 	strt	fp, [sp, #12]
 8002c12:	b081      	sub	sp, #4
 8002c14:	b090      	sub	sp, #64	; 0x40
 8002c16:	b082      	sub	sp, #8
 8002c18:	f84d 0e00 	strt	r0, [sp]
 8002c1c:	f84d 1e04 	strt	r1, [sp, #4]
 8002c20:	ec51 0b18 	vmov	r0, r1, d8
 8002c24:	f84d 0e08 	strt	r0, [sp, #8]
 8002c28:	f84d 1e0c 	strt	r1, [sp, #12]
 8002c2c:	bc03      	pop	{r0, r1}
 8002c2e:	b082      	sub	sp, #8
 8002c30:	f84d 0e00 	strt	r0, [sp]
 8002c34:	f84d 1e04 	strt	r1, [sp, #4]
 8002c38:	ec51 0b19 	vmov	r0, r1, d9
 8002c3c:	f84d 0e10 	strt	r0, [sp, #16]
 8002c40:	f84d 1e14 	strt	r1, [sp, #20]
 8002c44:	bc03      	pop	{r0, r1}
 8002c46:	b082      	sub	sp, #8
 8002c48:	f84d 0e00 	strt	r0, [sp]
 8002c4c:	f84d 1e04 	strt	r1, [sp, #4]
 8002c50:	ec51 0b1a 	vmov	r0, r1, d10
 8002c54:	f84d 0e18 	strt	r0, [sp, #24]
 8002c58:	f84d 1e1c 	strt	r1, [sp, #28]
 8002c5c:	bc03      	pop	{r0, r1}
 8002c5e:	b082      	sub	sp, #8
 8002c60:	f84d 0e00 	strt	r0, [sp]
 8002c64:	f84d 1e04 	strt	r1, [sp, #4]
 8002c68:	ec51 0b1b 	vmov	r0, r1, d11
 8002c6c:	f84d 0e20 	strt	r0, [sp, #32]
 8002c70:	f84d 1e24 	strt	r1, [sp, #36]
 8002c74:	bc03      	pop	{r0, r1}
 8002c76:	b082      	sub	sp, #8
 8002c78:	f84d 0e00 	strt	r0, [sp]
 8002c7c:	f84d 1e04 	strt	r1, [sp, #4]
 8002c80:	ec51 0b1c 	vmov	r0, r1, d12
 8002c84:	f84d 0e28 	strt	r0, [sp, #40]
 8002c88:	f84d 1e2c 	strt	r1, [sp, #44]
 8002c8c:	bc03      	pop	{r0, r1}
 8002c8e:	b082      	sub	sp, #8
 8002c90:	f84d 0e00 	strt	r0, [sp]
 8002c94:	f84d 1e04 	strt	r1, [sp, #4]
 8002c98:	ec51 0b1d 	vmov	r0, r1, d13
 8002c9c:	f84d 0e30 	strt	r0, [sp, #48]
 8002ca0:	f84d 1e34 	strt	r1, [sp, #52]
 8002ca4:	bc03      	pop	{r0, r1}
 8002ca6:	b082      	sub	sp, #8
 8002ca8:	f84d 0e00 	strt	r0, [sp]
 8002cac:	f84d 1e04 	strt	r1, [sp, #4]
 8002cb0:	ec51 0b1e 	vmov	r0, r1, d14
 8002cb4:	f84d 0e38 	strt	r0, [sp, #56]
 8002cb8:	f84d 1e3c 	strt	r1, [sp, #60]
 8002cbc:	bc03      	pop	{r0, r1}
 8002cbe:	b082      	sub	sp, #8
 8002cc0:	f84d 0e00 	strt	r0, [sp]
 8002cc4:	f84d 1e04 	strt	r1, [sp, #4]
 8002cc8:	ec51 0b1f 	vmov	r0, r1, d15
 8002ccc:	f84d 0e40 	strt	r0, [sp, #64]
 8002cd0:	f84d 1e44 	strt	r1, [sp, #68]
 8002cd4:	bc03      	pop	{r0, r1}
 8002cd6:	b098      	sub	sp, #96	; 0x60
 8002cd8:	4689      	mov	r9, r1
 8002cda:	2100      	movs	r1, #0
 8002cdc:	f100 0b01 	add.w	fp, r0, #1
 8002ce0:	f84d 1e30 	strt	r1, [sp, #48]
 8002ce4:	f84d 1e34 	strt	r1, [sp, #52]
 8002ce8:	f1ab 0101 	sub.w	r1, fp, #1
 8002cec:	f84d 1e3c 	strt	r1, [sp, #60]
 8002cf0:	f81b 6c01 	ldrb.w	r6, [fp, #-1]
 8002cf4:	2e2d      	cmp	r6, #45	; 0x2d
 8002cf6:	d834      	bhi.n	8002d62 <strtod+0x17a>
 8002cf8:	e8df f016 	tbh	[pc, r6, lsl #1]
 8002cfc:	0033021f 	.word	0x0033021f
 8002d00:	00330033 	.word	0x00330033
 8002d04:	00330033 	.word	0x00330033
 8002d08:	00330033 	.word	0x00330033
 8002d0c:	002e0033 	.word	0x002e0033
 8002d10:	002e002e 	.word	0x002e002e
 8002d14:	002e002e 	.word	0x002e002e
 8002d18:	00330033 	.word	0x00330033
 8002d1c:	00330033 	.word	0x00330033
 8002d20:	00330033 	.word	0x00330033
 8002d24:	00330033 	.word	0x00330033
 8002d28:	00330033 	.word	0x00330033
 8002d2c:	00330033 	.word	0x00330033
 8002d30:	00330033 	.word	0x00330033
 8002d34:	00330033 	.word	0x00330033
 8002d38:	00330033 	.word	0x00330033
 8002d3c:	0033002e 	.word	0x0033002e
 8002d40:	00330033 	.word	0x00330033
 8002d44:	00330033 	.word	0x00330033
 8002d48:	00330033 	.word	0x00330033
 8002d4c:	00330033 	.word	0x00330033
 8002d50:	00310033 	.word	0x00310033
 8002d54:	00360033 	.word	0x00360033
 8002d58:	f10b 0b01 	add.w	fp, fp, #1
 8002d5c:	e7c4      	b.n	8002ce8 <strtod+0x100>
 8002d5e:	2300      	movs	r3, #0
 8002d60:	e003      	b.n	8002d6a <strtod+0x182>
 8002d62:	2300      	movs	r3, #0
 8002d64:	468b      	mov	fp, r1
 8002d66:	e007      	b.n	8002d78 <strtod+0x190>
 8002d68:	2301      	movs	r3, #1
 8002d6a:	f84d be3c 	strt	fp, [sp, #60]
 8002d6e:	f89b 6000 	ldrb.w	r6, [fp]
 8002d72:	2e00      	cmp	r6, #0
 8002d74:	f000 81e1 	beq.w	800313a <strtod+0x552>
 8002d78:	2e30      	cmp	r6, #48	; 0x30
 8002d7a:	f84d 3e20 	strt	r3, [sp, #32]
 8002d7e:	d10b      	bne.n	8002d98 <strtod+0x1b0>
 8002d80:	f89b 1001 	ldrb.w	r1, [fp, #1]
 8002d84:	f041 0120 	orr.w	r1, r1, #32
 8002d88:	2978      	cmp	r1, #120	; 0x78
 8002d8a:	d16e      	bne.n	8002e6a <strtod+0x282>
 8002d8c:	a80f      	add	r0, sp, #60	; 0x3c
 8002d8e:	a90c      	add	r1, sp, #48	; 0x30
 8002d90:	2201      	movs	r2, #1
 8002d92:	f7ff f9a1 	bl	80020d8 <gethex>
 8002d96:	e1d5      	b.n	8003144 <strtod+0x55c>
 8002d98:	f04f 0e00 	mov.w	lr, #0
 8002d9c:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002da0:	2400      	movs	r4, #0
 8002da2:	b2c9      	uxtb	r1, r1
 8002da4:	2909      	cmp	r1, #9
 8002da6:	d833      	bhi.n	8002e10 <strtod+0x228>
 8002da8:	f04f 0a00 	mov.w	sl, #0
 8002dac:	2500      	movs	r5, #0
 8002dae:	2d08      	cmp	r5, #8
 8002db0:	dc06      	bgt.n	8002dc0 <strtod+0x1d8>
 8002db2:	eb0a 018a 	add.w	r1, sl, sl, lsl #2
 8002db6:	eb06 0141 	add.w	r1, r6, r1, lsl #1
 8002dba:	f1a1 0a30 	sub.w	sl, r1, #48	; 0x30
 8002dbe:	e007      	b.n	8002dd0 <strtod+0x1e8>
 8002dc0:	2d10      	cmp	r5, #16
 8002dc2:	bfde      	ittt	le
 8002dc4:	eb04 0184 	addle.w	r1, r4, r4, lsl #2
 8002dc8:	eb06 0141 	addle.w	r1, r6, r1, lsl #1
 8002dcc:	f1a1 0430 	suble.w	r4, r1, #48	; 0x30
 8002dd0:	eb0b 0105 	add.w	r1, fp, r5
 8002dd4:	3501      	adds	r5, #1
 8002dd6:	1c4a      	adds	r2, r1, #1
 8002dd8:	f84d 2e3c 	strt	r2, [sp, #60]
 8002ddc:	784e      	ldrb	r6, [r1, #1]
 8002dde:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002de2:	b2c9      	uxtb	r1, r1
 8002de4:	290a      	cmp	r1, #10
 8002de6:	d3e2      	bcc.n	8002dae <strtod+0x1c6>
 8002de8:	eb0b 0c05 	add.w	ip, fp, r5
 8002dec:	45dc      	cmp	ip, fp
 8002dee:	d913      	bls.n	8002e18 <strtod+0x230>
 8002df0:	2100      	movs	r1, #0
 8002df2:	f84d 1e2c 	strt	r1, [sp, #44]
 8002df6:	4661      	mov	r1, ip
 8002df8:	f811 2d01 	ldrb.w	r2, [r1, #-1]!
 8002dfc:	2a30      	cmp	r2, #48	; 0x30
 8002dfe:	d10e      	bne.n	8002e1e <strtod+0x236>
 8002e00:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e02:	4559      	cmp	r1, fp
 8002e04:	f102 0201 	add.w	r2, r2, #1
 8002e08:	f84d 2e2c 	strt	r2, [sp, #44]
 8002e0c:	d8f4      	bhi.n	8002df8 <strtod+0x210>
 8002e0e:	e006      	b.n	8002e1e <strtod+0x236>
 8002e10:	46dc      	mov	ip, fp
 8002e12:	f04f 0a00 	mov.w	sl, #0
 8002e16:	2500      	movs	r5, #0
 8002e18:	2100      	movs	r1, #0
 8002e1a:	f84d 1e2c 	strt	r1, [sp, #44]
 8002e1e:	2e2e      	cmp	r6, #46	; 0x2e
 8002e20:	d11a      	bne.n	8002e58 <strtod+0x270>
 8002e22:	f10c 0301 	add.w	r3, ip, #1
 8002e26:	f84d ee18 	strt	lr, [sp, #24]
 8002e2a:	ebab 010c 	sub.w	r1, fp, ip
 8002e2e:	2d00      	cmp	r5, #0
 8002e30:	f84d 3e3c 	strt	r3, [sp, #60]
 8002e34:	eba3 020b 	sub.w	r2, r3, fp
 8002e38:	f89c 6001 	ldrb.w	r6, [ip, #1]
 8002e3c:	eb02 0e01 	add.w	lr, r2, r1
 8002e40:	f04f 0100 	mov.w	r1, #0
 8002e44:	f84d 5e28 	strt	r5, [sp, #40]
 8002e48:	f84d ee14 	strt	lr, [sp, #20]
 8002e4c:	d01d      	beq.n	8002e8a <strtod+0x2a2>
 8002e4e:	46a8      	mov	r8, r5
 8002e50:	2200      	movs	r2, #0
 8002e52:	f84d be24 	strt	fp, [sp, #36]
 8002e56:	e035      	b.n	8002ec4 <strtod+0x2dc>
 8002e58:	2100      	movs	r1, #0
 8002e5a:	2200      	movs	r2, #0
 8002e5c:	46a8      	mov	r8, r5
 8002e5e:	f84d 1e1c 	strt	r1, [sp, #28]
 8002e62:	2100      	movs	r1, #0
 8002e64:	f84d 2e14 	strt	r2, [sp, #20]
 8002e68:	e06d      	b.n	8002f46 <strtod+0x35e>
 8002e6a:	f10b 0101 	add.w	r1, fp, #1
 8002e6e:	f84d 1e3c 	strt	r1, [sp, #60]
 8002e72:	f811 6b01 	ldrb.w	r6, [r1], #1
 8002e76:	2e30      	cmp	r6, #48	; 0x30
 8002e78:	d0f9      	beq.n	8002e6e <strtod+0x286>
 8002e7a:	2e00      	cmp	r6, #0
 8002e7c:	f000 8162 	beq.w	8003144 <strtod+0x55c>
 8002e80:	f1a1 0b01 	sub.w	fp, r1, #1
 8002e84:	f04f 0e01 	mov.w	lr, #1
 8002e88:	e788      	b.n	8002d9c <strtod+0x1b4>
 8002e8a:	2e30      	cmp	r6, #48	; 0x30
 8002e8c:	d10b      	bne.n	8002ea6 <strtod+0x2be>
 8002e8e:	eb0c 0201 	add.w	r2, ip, r1
 8002e92:	3101      	adds	r1, #1
 8002e94:	1c93      	adds	r3, r2, #2
 8002e96:	f84d 3e3c 	strt	r3, [sp, #60]
 8002e9a:	7896      	ldrb	r6, [r2, #2]
 8002e9c:	2e30      	cmp	r6, #48	; 0x30
 8002e9e:	d0f6      	beq.n	8002e8e <strtod+0x2a6>
 8002ea0:	eb0c 0201 	add.w	r2, ip, r1
 8002ea4:	1c53      	adds	r3, r2, #1
 8002ea6:	f1a6 0231 	sub.w	r2, r6, #49	; 0x31
 8002eaa:	f04f 0800 	mov.w	r8, #0
 8002eae:	f84d 3e24 	strt	r3, [sp, #36]
 8002eb2:	2a09      	cmp	r2, #9
 8002eb4:	f04f 0200 	mov.w	r2, #0
 8002eb8:	d308      	bcc.n	8002ecc <strtod+0x2e4>
 8002eba:	469c      	mov	ip, r3
 8002ebc:	2200      	movs	r2, #0
 8002ebe:	f84d 2e1c 	strt	r2, [sp, #28]
 8002ec2:	e03d      	b.n	8002f40 <strtod+0x358>
 8002ec4:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
 8002ec8:	2d09      	cmp	r5, #9
 8002eca:	d833      	bhi.n	8002f34 <strtod+0x34c>
 8002ecc:	4645      	mov	r5, r8
 8002ece:	469e      	mov	lr, r3
 8002ed0:	f1b6 0830 	subs.w	r8, r6, #48	; 0x30
 8002ed4:	f102 0301 	add.w	r3, r2, #1
 8002ed8:	f000 80a8 	beq.w	800302c <strtod+0x444>
 8002edc:	f04f 0c00 	mov.w	ip, #0
 8002ee0:	2d09      	cmp	r5, #9
 8002ee2:	4419      	add	r1, r3
 8002ee4:	f105 0301 	add.w	r3, r5, #1
 8002ee8:	bfb8      	it	lt
 8002eea:	f04f 0c01 	movlt.w	ip, #1
 8002eee:	2a01      	cmp	r2, #1
 8002ef0:	f2c0 809f 	blt.w	8003032 <strtod+0x44a>
 8002ef4:	eb05 0b02 	add.w	fp, r5, r2
 8002ef8:	461e      	mov	r6, r3
 8002efa:	ea5f 73cc 	movs.w	r3, ip, lsl #31
 8002efe:	d004      	beq.n	8002f0a <strtod+0x322>
 8002f00:	eb0a 038a 	add.w	r3, sl, sl, lsl #2
 8002f04:	ea4f 0a43 	mov.w	sl, r3, lsl #1
 8002f08:	e004      	b.n	8002f14 <strtod+0x32c>
 8002f0a:	eb04 0384 	add.w	r3, r4, r4, lsl #2
 8002f0e:	2e12      	cmp	r6, #18
 8002f10:	bfb8      	it	lt
 8002f12:	005c      	lsllt	r4, r3, #1
 8002f14:	2e09      	cmp	r6, #9
 8002f16:	f04f 0c00 	mov.w	ip, #0
 8002f1a:	f106 0301 	add.w	r3, r6, #1
 8002f1e:	bfb8      	it	lt
 8002f20:	f04f 0c01 	movlt.w	ip, #1
 8002f24:	3a01      	subs	r2, #1
 8002f26:	d1e7      	bne.n	8002ef8 <strtod+0x310>
 8002f28:	f10b 0301 	add.w	r3, fp, #1
 8002f2c:	2e09      	cmp	r6, #9
 8002f2e:	f2c0 8082 	blt.w	8003036 <strtod+0x44e>
 8002f32:	e085      	b.n	8003040 <strtod+0x458>
 8002f34:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002f38:	f84d 1e1c 	strt	r1, [sp, #28]
 8002f3c:	469c      	mov	ip, r3
 8002f3e:	4611      	mov	r1, r2
 8002f40:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002f42:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002f46:	f046 0220 	orr.w	r2, r6, #32
 8002f4a:	f84d 8e24 	strt	r8, [sp, #36]
 8002f4e:	2a65      	cmp	r2, #101	; 0x65
 8002f50:	d166      	bne.n	8003020 <strtod+0x438>
 8002f52:	ea48 020e 	orr.w	r2, r8, lr
 8002f56:	430a      	orrs	r2, r1
 8002f58:	f000 80ef 	beq.w	800313a <strtod+0x552>
 8002f5c:	f10c 0801 	add.w	r8, ip, #1
 8002f60:	2200      	movs	r2, #0
 8002f62:	f84d 8e3c 	strt	r8, [sp, #60]
 8002f66:	f89c 3001 	ldrb.w	r3, [ip, #1]
 8002f6a:	2b2b      	cmp	r3, #43	; 0x2b
 8002f6c:	d002      	beq.n	8002f74 <strtod+0x38c>
 8002f6e:	2b2d      	cmp	r3, #45	; 0x2d
 8002f70:	d106      	bne.n	8002f80 <strtod+0x398>
 8002f72:	2201      	movs	r2, #1
 8002f74:	f10c 0802 	add.w	r8, ip, #2
 8002f78:	f84d 8e3c 	strt	r8, [sp, #60]
 8002f7c:	f89c 3002 	ldrb.w	r3, [ip, #2]
 8002f80:	f1a3 0030 	sub.w	r0, r3, #48	; 0x30
 8002f84:	2809      	cmp	r0, #9
 8002f86:	d86d      	bhi.n	8003064 <strtod+0x47c>
 8002f88:	2b30      	cmp	r3, #48	; 0x30
 8002f8a:	d109      	bne.n	8002fa0 <strtod+0x3b8>
 8002f8c:	f108 0001 	add.w	r0, r8, #1
 8002f90:	f84d 0e3c 	strt	r0, [sp, #60]
 8002f94:	f810 3b01 	ldrb.w	r3, [r0], #1
 8002f98:	2b30      	cmp	r3, #48	; 0x30
 8002f9a:	d0f9      	beq.n	8002f90 <strtod+0x3a8>
 8002f9c:	f1a0 0801 	sub.w	r8, r0, #1
 8002fa0:	f1a3 0031 	sub.w	r0, r3, #49	; 0x31
 8002fa4:	2808      	cmp	r0, #8
 8002fa6:	d85f      	bhi.n	8003068 <strtod+0x480>
 8002fa8:	f84d ee18 	strt	lr, [sp, #24]
 8002fac:	f108 0e01 	add.w	lr, r8, #1
 8002fb0:	3b30      	subs	r3, #48	; 0x30
 8002fb2:	f84d ee3c 	strt	lr, [sp, #60]
 8002fb6:	f898 6001 	ldrb.w	r6, [r8, #1]
 8002fba:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
 8002fbe:	b2c0      	uxtb	r0, r0
 8002fc0:	2809      	cmp	r0, #9
 8002fc2:	d815      	bhi.n	8002ff0 <strtod+0x408>
 8002fc4:	f108 0002 	add.w	r0, r8, #2
 8002fc8:	f84d 2e10 	strt	r2, [sp, #16]
 8002fcc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8002fd0:	f84d 0e3c 	strt	r0, [sp, #60]
 8002fd4:	005b      	lsls	r3, r3, #1
 8002fd6:	fa53 f386 	uxtab	r3, r3, r6
 8002fda:	f810 6b01 	ldrb.w	r6, [r0], #1
 8002fde:	3b30      	subs	r3, #48	; 0x30
 8002fe0:	f1a6 0230 	sub.w	r2, r6, #48	; 0x30
 8002fe4:	b2d2      	uxtb	r2, r2
 8002fe6:	2a0a      	cmp	r2, #10
 8002fe8:	d3f0      	bcc.n	8002fcc <strtod+0x3e4>
 8002fea:	9a04      	ldr	r2, [sp, #16]
 8002fec:	f1a0 0e01 	sub.w	lr, r0, #1
 8002ff0:	ebae 0008 	sub.w	r0, lr, r8
 8002ff4:	461e      	mov	r6, r3
 8002ff6:	2808      	cmp	r0, #8
 8002ff8:	f644 601f 	movw	r0, #19999	; 0x4e1f
 8002ffc:	bfc8      	it	gt
 8002ffe:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 8003002:	4283      	cmp	r3, r0
 8003004:	bfc8      	it	gt
 8003006:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 800300a:	2a00      	cmp	r2, #0
 800300c:	bf18      	it	ne
 800300e:	4276      	negne	r6, r6
 8003010:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8003014:	f8dd e018 	ldr.w	lr, [sp, #24]
 8003018:	f1b8 0f00 	cmp.w	r8, #0
 800301c:	d12a      	bne.n	8003074 <strtod+0x48c>
 800301e:	e088      	b.n	8003132 <strtod+0x54a>
 8003020:	2600      	movs	r6, #0
 8003022:	4684      	mov	ip, r0
 8003024:	f1b8 0f00 	cmp.w	r8, #0
 8003028:	d124      	bne.n	8003074 <strtod+0x48c>
 800302a:	e082      	b.n	8003132 <strtod+0x54a>
 800302c:	461a      	mov	r2, r3
 800302e:	46a8      	mov	r8, r5
 8003030:	e011      	b.n	8003056 <strtod+0x46e>
 8003032:	2d08      	cmp	r5, #8
 8003034:	dc04      	bgt.n	8003040 <strtod+0x458>
 8003036:	eb0a 028a 	add.w	r2, sl, sl, lsl #2
 800303a:	eb08 0a42 	add.w	sl, r8, r2, lsl #1
 800303e:	e005      	b.n	800304c <strtod+0x464>
 8003040:	2b11      	cmp	r3, #17
 8003042:	bfdc      	itt	le
 8003044:	eb04 0284 	addle.w	r2, r4, r4, lsl #2
 8003048:	eb08 0442 	addle.w	r4, r8, r2, lsl #1
 800304c:	4698      	mov	r8, r3
 800304e:	2200      	movs	r2, #0
 8003050:	2300      	movs	r3, #0
 8003052:	f84d 3e2c 	strt	r3, [sp, #44]
 8003056:	f10e 0301 	add.w	r3, lr, #1
 800305a:	f84d 3e3c 	strt	r3, [sp, #60]
 800305e:	f89e 6001 	ldrb.w	r6, [lr, #1]
 8003062:	e72f      	b.n	8002ec4 <strtod+0x2dc>
 8003064:	f84d ce3c 	strt	ip, [sp, #60]
 8003068:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800306c:	2600      	movs	r6, #0
 800306e:	f1b8 0f00 	cmp.w	r8, #0
 8003072:	d05e      	beq.n	8003132 <strtod+0x54a>
 8003074:	4650      	mov	r0, sl
 8003076:	f7fd fa05 	bl	8000484 <__aeabi_ui2d>
 800307a:	46ac      	mov	ip, r5
 800307c:	ec41 0b10 	vmov	d0, r0, r1
 8003080:	f1b8 0f11 	cmp.w	r8, #17
 8003084:	4645      	mov	r5, r8
 8003086:	b082      	sub	sp, #8
 8003088:	f84d 0e00 	strt	r0, [sp]
 800308c:	f84d 1e04 	strt	r1, [sp, #4]
 8003090:	ec51 0b10 	vmov	r0, r1, d0
 8003094:	f84d 0e38 	strt	r0, [sp, #56]
 8003098:	f84d 1e3c 	strt	r1, [sp, #60]
 800309c:	bc03      	pop	{r0, r1}
 800309e:	bfa8      	it	ge
 80030a0:	2511      	movge	r5, #17
 80030a2:	f1bc 0f00 	cmp.w	ip, #0
 80030a6:	bf08      	it	eq
 80030a8:	46c4      	moveq	ip, r8
 80030aa:	2d0a      	cmp	r5, #10
 80030ac:	f84d ce28 	strt	ip, [sp, #40]
 80030b0:	db27      	blt.n	8003102 <strtod+0x51a>
 80030b2:	f24a 02b0 	movw	r2, #41136	; 0xa0b0
 80030b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80030ba:	eb02 02c5 	add.w	r2, r2, r5, lsl #3
 80030be:	ed12 0b12 	vldr	d0, [r2, #-72]	; 0xffffffb8
 80030c2:	ec53 2b10 	vmov	r2, r3, d0
 80030c6:	f7fd fa57 	bl	8000578 <__aeabi_dmul>
 80030ca:	f84d 0e18 	strt	r0, [sp, #24]
 80030ce:	4620      	mov	r0, r4
 80030d0:	4688      	mov	r8, r1
 80030d2:	f7fd f9d7 	bl	8000484 <__aeabi_ui2d>
 80030d6:	9a06      	ldr	r2, [sp, #24]
 80030d8:	4643      	mov	r3, r8
 80030da:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80030de:	f7fd f895 	bl	800020c <__adddf3>
 80030e2:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80030e6:	ec41 0b10 	vmov	d0, r0, r1
 80030ea:	b082      	sub	sp, #8
 80030ec:	f84d 0e00 	strt	r0, [sp]
 80030f0:	f84d 1e04 	strt	r1, [sp, #4]
 80030f4:	ec51 0b10 	vmov	r0, r1, d0
 80030f8:	f84d 0e38 	strt	r0, [sp, #56]
 80030fc:	f84d 1e3c 	strt	r1, [sp, #60]
 8003100:	bc03      	pop	{r0, r1}
 8003102:	9807      	ldr	r0, [sp, #28]
 8003104:	f1b8 0f0f 	cmp.w	r8, #15
 8003108:	eba6 0000 	sub.w	r0, r6, r0
 800310c:	dc54      	bgt.n	80031b8 <strtod+0x5d0>
 800310e:	b1c8      	cbz	r0, 8003144 <strtod+0x55c>
 8003110:	2801      	cmp	r0, #1
 8003112:	db37      	blt.n	8003184 <strtod+0x59c>
 8003114:	2818      	cmp	r0, #24
 8003116:	4602      	mov	r2, r0
 8003118:	dc48      	bgt.n	80031ac <strtod+0x5c4>
 800311a:	f24a 00b0 	movw	r0, #41136	; 0xa0b0
 800311e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003122:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
 8003126:	ed90 1b00 	vldr	d1, [r0]
 800312a:	ec51 0b11 	vmov	r0, r1, d1
 800312e:	f000 be25 	b.w	8003d7c <strtod+0x1194>
 8003132:	ea51 000e 	orrs.w	r0, r1, lr
 8003136:	4660      	mov	r0, ip
 8003138:	d104      	bne.n	8003144 <strtod+0x55c>
 800313a:	f84d 0e3c 	strt	r0, [sp, #60]
 800313e:	2000      	movs	r0, #0
 8003140:	f84d 0e20 	strt	r0, [sp, #32]
 8003144:	f1b9 0f00 	cmp.w	r9, #0
 8003148:	ed9f 0bdd 	vldr	d0, [pc, #884]	; 80034c0 <strtod+0x8d8>
 800314c:	bf1c      	itt	ne
 800314e:	980f      	ldrne	r0, [sp, #60]	; 0x3c
 8003150:	f849 0e00 	strtne	r0, [r9]
 8003154:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 8003158:	ec51 0b10 	vmov	r0, r1, d0
 800315c:	ec55 4b11 	vmov	r4, r5, d1
 8003160:	4622      	mov	r2, r4
 8003162:	462b      	mov	r3, r5
 8003164:	f7fd f850 	bl	8000208 <__aeabi_dsub>
 8003168:	9a08      	ldr	r2, [sp, #32]
 800316a:	2a00      	cmp	r2, #0
 800316c:	bf04      	itt	eq
 800316e:	4629      	moveq	r1, r5
 8003170:	4620      	moveq	r0, r4
 8003172:	ec41 0b10 	vmov	d0, r0, r1
 8003176:	b018      	add	sp, #96	; 0x60
 8003178:	ecbd 8b10 	vpop	{d8-d15}
 800317c:	b001      	add	sp, #4
 800317e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003182:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003184:	f110 0f18 	cmn.w	r0, #24
 8003188:	db16      	blt.n	80031b8 <strtod+0x5d0>
 800318a:	4601      	mov	r1, r0
 800318c:	f24a 00b0 	movw	r0, #41136	; 0xa0b0
 8003190:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003194:	eba0 00c1 	sub.w	r0, r0, r1, lsl #3
 8003198:	ed90 1b00 	vldr	d1, [r0]
 800319c:	ec51 0b10 	vmov	r0, r1, d0
 80031a0:	ec53 2b11 	vmov	r2, r3, d1
 80031a4:	f7fd fb12 	bl	80007cc <__aeabi_ddiv>
 80031a8:	f000 bdec 	b.w	8003d84 <strtod+0x119c>
 80031ac:	f1c8 0027 	rsb	r0, r8, #39	; 0x27
 80031b0:	4282      	cmp	r2, r0
 80031b2:	4610      	mov	r0, r2
 80031b4:	f340 85cc 	ble.w	8003d50 <strtod+0x1168>
 80031b8:	4602      	mov	r2, r0
 80031ba:	eba8 0005 	sub.w	r0, r8, r5
 80031be:	f84d 9e04 	strt	r9, [sp, #4]
 80031c2:	1814      	adds	r4, r2, r0
 80031c4:	f84d 2e10 	strt	r2, [sp, #16]
 80031c8:	2c01      	cmp	r4, #1
 80031ca:	db2c      	blt.n	8003226 <strtod+0x63e>
 80031cc:	f014 000f 	ands.w	r0, r4, #15
 80031d0:	d01d      	beq.n	800320e <strtod+0x626>
 80031d2:	f24a 01b0 	movw	r1, #41136	; 0xa0b0
 80031d6:	ec53 2b10 	vmov	r2, r3, d0
 80031da:	f6c0 0100 	movt	r1, #2048	; 0x800
 80031de:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 80031e2:	ed90 1b00 	vldr	d1, [r0]
 80031e6:	ec51 0b11 	vmov	r0, r1, d1
 80031ea:	f7fd f9c5 	bl	8000578 <__aeabi_dmul>
 80031ee:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80031f2:	ec41 0b10 	vmov	d0, r0, r1
 80031f6:	b082      	sub	sp, #8
 80031f8:	f84d 0e00 	strt	r0, [sp]
 80031fc:	f84d 1e04 	strt	r1, [sp, #4]
 8003200:	ec51 0b10 	vmov	r0, r1, d0
 8003204:	f84d 0e38 	strt	r0, [sp, #56]
 8003208:	f84d 1e3c 	strt	r1, [sp, #60]
 800320c:	bc03      	pop	{r0, r1}
 800320e:	f024 000f 	bic.w	r0, r4, #15
 8003212:	2800      	cmp	r0, #0
 8003214:	f000 808b 	beq.w	800332e <strtod+0x746>
 8003218:	f5b0 7f9a 	cmp.w	r0, #308	; 0x134
 800321c:	dd35      	ble.n	800328a <strtod+0x6a2>
 800321e:	f04f 0900 	mov.w	r9, #0
 8003222:	f000 bd6f 	b.w	8003d04 <strtod+0x111c>
 8003226:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800322a:	f300 8080 	bgt.w	800332e <strtod+0x746>
 800322e:	4264      	negs	r4, r4
 8003230:	f014 000f 	ands.w	r0, r4, #15
 8003234:	d01d      	beq.n	8003272 <strtod+0x68a>
 8003236:	f24a 01b0 	movw	r1, #41136	; 0xa0b0
 800323a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800323e:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8003242:	ed90 1b00 	vldr	d1, [r0]
 8003246:	ec51 0b10 	vmov	r0, r1, d0
 800324a:	ec53 2b11 	vmov	r2, r3, d1
 800324e:	f7fd fabd 	bl	80007cc <__aeabi_ddiv>
 8003252:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003256:	ec41 0b10 	vmov	d0, r0, r1
 800325a:	b082      	sub	sp, #8
 800325c:	f84d 0e00 	strt	r0, [sp]
 8003260:	f84d 1e04 	strt	r1, [sp, #4]
 8003264:	ec51 0b10 	vmov	r0, r1, d0
 8003268:	f84d 0e38 	strt	r0, [sp, #56]
 800326c:	f84d 1e3c 	strt	r1, [sp, #60]
 8003270:	bc03      	pop	{r0, r1}
 8003272:	2000      	movs	r0, #0
 8003274:	ebb0 1f24 	cmp.w	r0, r4, asr #4
 8003278:	d059      	beq.n	800332e <strtod+0x746>
 800327a:	1125      	asrs	r5, r4, #4
 800327c:	2d03      	cmp	r5, #3
 800327e:	f340 85d0 	ble.w	8003e22 <strtod+0x123a>
 8003282:	f04f 0900 	mov.w	r9, #0
 8003286:	f000 bef1 	b.w	800406c <strtod+0x1484>
 800328a:	2c20      	cmp	r4, #32
 800328c:	d326      	bcc.n	80032dc <strtod+0x6f4>
 800328e:	f24a 15e0 	movw	r5, #41440	; 0xa1e0
 8003292:	0926      	lsrs	r6, r4, #4
 8003294:	2400      	movs	r4, #0
 8003296:	f6c0 0500 	movt	r5, #2048	; 0x800
 800329a:	07f0      	lsls	r0, r6, #31
 800329c:	d015      	beq.n	80032ca <strtod+0x6e2>
 800329e:	ed95 1b00 	vldr	d1, [r5]
 80032a2:	ec53 2b10 	vmov	r2, r3, d0
 80032a6:	ec51 0b11 	vmov	r0, r1, d1
 80032aa:	f7fd f965 	bl	8000578 <__aeabi_dmul>
 80032ae:	ec41 0b10 	vmov	d0, r0, r1
 80032b2:	b082      	sub	sp, #8
 80032b4:	f84d 0e00 	strt	r0, [sp]
 80032b8:	f84d 1e04 	strt	r1, [sp, #4]
 80032bc:	ec51 0b10 	vmov	r0, r1, d0
 80032c0:	f84d 0e38 	strt	r0, [sp, #56]
 80032c4:	f84d 1e3c 	strt	r1, [sp, #60]
 80032c8:	bc03      	pop	{r0, r1}
 80032ca:	0870      	lsrs	r0, r6, #1
 80032cc:	2e03      	cmp	r6, #3
 80032ce:	f105 0508 	add.w	r5, r5, #8
 80032d2:	f104 0401 	add.w	r4, r4, #1
 80032d6:	4606      	mov	r6, r0
 80032d8:	d8df      	bhi.n	800329a <strtod+0x6b2>
 80032da:	e000      	b.n	80032de <strtod+0x6f6>
 80032dc:	2400      	movs	r4, #0
 80032de:	f24a 10e0 	movw	r0, #41440	; 0xa1e0
 80032e2:	f5a1 51e0 	sub.w	r1, r1, #7168	; 0x1c00
 80032e6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80032ea:	f84d 1e34 	strt	r1, [sp, #52]
 80032ee:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 80032f2:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 80032f6:	ed90 0b00 	vldr	d0, [r0]
 80032fa:	ec53 2b11 	vmov	r2, r3, d1
 80032fe:	ec51 0b10 	vmov	r0, r1, d0
 8003302:	f7fd f939 	bl	8000578 <__aeabi_dmul>
 8003306:	ec41 0b10 	vmov	d0, r0, r1
 800330a:	f501 50e0 	add.w	r0, r1, #7168	; 0x1c00
 800330e:	b082      	sub	sp, #8
 8003310:	f84d 0e00 	strt	r0, [sp]
 8003314:	f84d 1e04 	strt	r1, [sp, #4]
 8003318:	ec51 0b10 	vmov	r0, r1, d0
 800331c:	f84d 0e38 	strt	r0, [sp, #56]
 8003320:	f84d 1e3c 	strt	r1, [sp, #60]
 8003324:	bc03      	pop	{r0, r1}
 8003326:	f84d 0e34 	strt	r0, [sp, #52]
 800332a:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 800332e:	f108 0008 	add.w	r0, r8, #8
 8003332:	2812      	cmp	r0, #18
 8003334:	db1b      	blt.n	800336e <strtod+0x786>
 8003336:	f648 6139 	movw	r1, #36409	; 0x8e39
 800333a:	2400      	movs	r4, #0
 800333c:	f6c3 01e3 	movt	r1, #14563	; 0x38e3
 8003340:	fb50 f001 	smmul	r0, r0, r1
 8003344:	1041      	asrs	r1, r0, #1
 8003346:	eb01 70d0 	add.w	r0, r1, r0, lsr #31
 800334a:	2101      	movs	r1, #1
 800334c:	004a      	lsls	r2, r1, #1
 800334e:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
 8003352:	f104 0401 	add.w	r4, r4, #1
 8003356:	4611      	mov	r1, r2
 8003358:	dcf8      	bgt.n	800334c <strtod+0x764>
 800335a:	2c07      	cmp	r4, #7
 800335c:	dd08      	ble.n	8003370 <strtod+0x788>
 800335e:	2001      	movs	r0, #1
 8003360:	fa00 f504 	lsl.w	r5, r0, r4
 8003364:	201b      	movs	r0, #27
 8003366:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 800336a:	08c0      	lsrs	r0, r0, #3
 800336c:	e030      	b.n	80033d0 <strtod+0x7e8>
 800336e:	2400      	movs	r4, #0
 8003370:	f640 2004 	movw	r0, #2564	; 0xa04
 8003374:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003378:	f850 9024 	ldr.w	r9, [r0, r4, lsl #2]
 800337c:	f1b9 0f00 	cmp.w	r9, #0
 8003380:	d008      	beq.n	8003394 <strtod+0x7ac>
 8003382:	f8d9 1000 	ldr.w	r1, [r9]
 8003386:	eb00 0084 	add.w	r0, r0, r4, lsl #2
 800338a:	f840 1e00 	strt	r1, [r0]
 800338e:	eba0 0084 	sub.w	r0, r0, r4, lsl #2
 8003392:	e027      	b.n	80033e4 <strtod+0x7fc>
 8003394:	f240 0128 	movw	r1, #40	; 0x28
 8003398:	f640 2228 	movw	r2, #2600	; 0xa28
 800339c:	2001      	movs	r0, #1
 800339e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80033a2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80033a6:	fa00 f504 	lsl.w	r5, r0, r4
 80033aa:	201b      	movs	r0, #27
 80033ac:	f8d1 9000 	ldr.w	r9, [r1]
 80033b0:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 80033b4:	eba9 0202 	sub.w	r2, r9, r2
 80033b8:	10d2      	asrs	r2, r2, #3
 80033ba:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80033be:	08c0      	lsrs	r0, r0, #3
 80033c0:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80033c4:	d804      	bhi.n	80033d0 <strtod+0x7e8>
 80033c6:	eb09 00c0 	add.w	r0, r9, r0, lsl #3
 80033ca:	f841 0e00 	strt	r0, [r1]
 80033ce:	e005      	b.n	80033dc <strtod+0x7f4>
 80033d0:	00c0      	lsls	r0, r0, #3
 80033d2:	f001 fec5 	bl	8005160 <malloc>
 80033d6:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80033da:	4681      	mov	r9, r0
 80033dc:	f849 4e04 	strt	r4, [r9, #4]
 80033e0:	f849 5e08 	strt	r5, [r9, #8]
 80033e4:	f1bc 0f0a 	cmp.w	ip, #10
 80033e8:	f04f 0000 	mov.w	r0, #0
 80033ec:	f04f 0101 	mov.w	r1, #1
 80033f0:	f109 020c 	add.w	r2, r9, #12
 80033f4:	f842 0e00 	strt	r0, [r2]
 80033f8:	f842 1e04 	strt	r1, [r2, #4]
 80033fc:	f842 ae08 	strt	sl, [r2, #8]
 8003400:	f2c0 80cd 	blt.w	800359e <strtod+0x9b6>
 8003404:	f10b 0e09 	add.w	lr, fp, #9
 8003408:	f04f 0809 	mov.w	r8, #9
 800340c:	f04f 0a0a 	mov.w	sl, #10
 8003410:	2501      	movs	r5, #1
 8003412:	e023      	b.n	800345c <strtod+0x874>
 8003414:	f240 0228 	movw	r2, #40	; 0x28
 8003418:	2001      	movs	r0, #1
 800341a:	f640 2128 	movw	r1, #2600	; 0xa28
 800341e:	fa00 f306 	lsl.w	r3, r0, r6
 8003422:	201b      	movs	r0, #27
 8003424:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003428:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800342c:	eb00 0c83 	add.w	ip, r0, r3, lsl #2
 8003430:	6810      	ldr	r0, [r2, #0]
 8003432:	ea4f 02dc 	mov.w	r2, ip, lsr #3
 8003436:	1a41      	subs	r1, r0, r1
 8003438:	10c9      	asrs	r1, r1, #3
 800343a:	eb01 01dc 	add.w	r1, r1, ip, lsr #3
 800343e:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8003442:	d808      	bhi.n	8003456 <strtod+0x86e>
 8003444:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 8003448:	f240 0228 	movw	r2, #40	; 0x28
 800344c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003450:	f842 1e00 	strt	r1, [r2]
 8003454:	e05d      	b.n	8003512 <strtod+0x92a>
 8003456:	f84d 3e18 	strt	r3, [sp, #24]
 800345a:	e056      	b.n	800350a <strtod+0x922>
 800345c:	f89e 0000 	ldrb.w	r0, [lr]
 8003460:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 8003464:	2000      	movs	r0, #0
 8003466:	17d1      	asrs	r1, r2, #31
 8003468:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 800346c:	460c      	mov	r4, r1
 800346e:	3001      	adds	r0, #1
 8003470:	2100      	movs	r1, #0
 8003472:	695e      	ldr	r6, [r3, #20]
 8003474:	42a8      	cmp	r0, r5
 8003476:	fbe6 240a 	umlal	r2, r4, r6, sl
 800347a:	f843 2e14 	strt	r2, [r3, #20]
 800347e:	4622      	mov	r2, r4
 8003480:	dbf2      	blt.n	8003468 <strtod+0x880>
 8003482:	f10e 0e01 	add.w	lr, lr, #1
 8003486:	2c00      	cmp	r4, #0
 8003488:	d07b      	beq.n	8003582 <strtod+0x99a>
 800348a:	f8d9 0008 	ldr.w	r0, [r9, #8]
 800348e:	4285      	cmp	r5, r0
 8003490:	db70      	blt.n	8003574 <strtod+0x98c>
 8003492:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003496:	f84d ee1c 	strt	lr, [sp, #28]
 800349a:	1c46      	adds	r6, r0, #1
 800349c:	2e07      	cmp	r6, #7
 800349e:	dc2b      	bgt.n	80034f8 <strtod+0x910>
 80034a0:	f640 2104 	movw	r1, #2564	; 0xa04
 80034a4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034a8:	f851 0026 	ldr.w	r0, [r1, r6, lsl #2]
 80034ac:	2800      	cmp	r0, #0
 80034ae:	d0b1      	beq.n	8003414 <strtod+0x82c>
 80034b0:	6802      	ldr	r2, [r0, #0]
 80034b2:	eb01 0186 	add.w	r1, r1, r6, lsl #2
 80034b6:	f841 2e00 	strt	r2, [r1]
 80034ba:	eba1 0186 	sub.w	r1, r1, r6, lsl #2
 80034be:	e02c      	b.n	800351a <strtod+0x932>
 80034c0:	00000000 	.word	0x00000000
 80034c4:	80000000 	.word	0x80000000
 80034c8:	00000000 	.word	0x00000000
 80034cc:	40000000 	.word	0x40000000
 80034d0:	00000000 	.word	0x00000000
 80034d4:	3fe00000 	.word	0x3fe00000
 80034d8:	94a03595 	.word	0x94a03595
 80034dc:	3fdfffff 	.word	0x3fdfffff
 80034e0:	35afe535 	.word	0x35afe535
 80034e4:	3fe00000 	.word	0x3fe00000
 80034e8:	00000000 	.word	0x00000000
 80034ec:	3ff00000 	.word	0x3ff00000
 80034f0:	00000000 	.word	0x00000000
 80034f4:	bff00000 	.word	0xbff00000
 80034f8:	2001      	movs	r0, #1
 80034fa:	fa00 f106 	lsl.w	r1, r0, r6
 80034fe:	201b      	movs	r0, #27
 8003500:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003504:	f84d 1e18 	strt	r1, [sp, #24]
 8003508:	08c2      	lsrs	r2, r0, #3
 800350a:	00d0      	lsls	r0, r2, #3
 800350c:	f001 fe28 	bl	8005160 <malloc>
 8003510:	9b06      	ldr	r3, [sp, #24]
 8003512:	f840 6e04 	strt	r6, [r0, #4]
 8003516:	f840 3e08 	strt	r3, [r0, #8]
 800351a:	2100      	movs	r1, #0
 800351c:	4606      	mov	r6, r0
 800351e:	2208      	movs	r2, #8
 8003520:	f840 1e10 	strt	r1, [r0, #16]
 8003524:	bfe8      	it	al
 8003526:	300c      	addal	r0, #12
 8003528:	f840 1e00 	strt	r1, [r0]
 800352c:	f8d9 1010 	ldr.w	r1, [r9, #16]
 8003530:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8003534:	f109 010c 	add.w	r1, r9, #12
 8003538:	f001 fdc2 	bl	80050c0 <__aeabi_memcpy>
 800353c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003540:	2808      	cmp	r0, #8
 8003542:	db03      	blt.n	800354c <strtod+0x964>
 8003544:	4648      	mov	r0, r9
 8003546:	f001 fe13 	bl	8005170 <free>
 800354a:	e00e      	b.n	800356a <strtod+0x982>
 800354c:	f640 2104 	movw	r1, #2564	; 0xa04
 8003550:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003554:	460a      	mov	r2, r1
 8003556:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 800355a:	f849 1e00 	strt	r1, [r9]
 800355e:	eb02 0280 	add.w	r2, r2, r0, lsl #2
 8003562:	f842 9e00 	strt	r9, [r2]
 8003566:	eba2 0280 	sub.w	r2, r2, r0, lsl #2
 800356a:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 800356e:	f8dd e01c 	ldr.w	lr, [sp, #28]
 8003572:	46b1      	mov	r9, r6
 8003574:	eb09 0085 	add.w	r0, r9, r5, lsl #2
 8003578:	3501      	adds	r5, #1
 800357a:	f840 4e14 	strt	r4, [r0, #20]
 800357e:	f849 5e10 	strt	r5, [r9, #16]
 8003582:	f108 0801 	add.w	r8, r8, #1
 8003586:	45e0      	cmp	r8, ip
 8003588:	f47f af68 	bne.w	800345c <strtod+0x874>
 800358c:	9905      	ldr	r1, [sp, #20]
 800358e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8003592:	eb0b 000c 	add.w	r0, fp, ip
 8003596:	1844      	adds	r4, r0, r1
 8003598:	45c4      	cmp	ip, r8
 800359a:	db09      	blt.n	80035b0 <strtod+0x9c8>
 800359c:	e0b4      	b.n	8003708 <strtod+0xb20>
 800359e:	9805      	ldr	r0, [sp, #20]
 80035a0:	f04f 0c09 	mov.w	ip, #9
 80035a4:	4458      	add	r0, fp
 80035a6:	f100 0409 	add.w	r4, r0, #9
 80035aa:	45c4      	cmp	ip, r8
 80035ac:	f280 80ac 	bge.w	8003708 <strtod+0xb20>
 80035b0:	f640 2e04 	movw	lr, #2564	; 0xa04
 80035b4:	250a      	movs	r5, #10
 80035b6:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80035ba:	e020      	b.n	80035fe <strtod+0xa16>
 80035bc:	f240 0228 	movw	r2, #40	; 0x28
 80035c0:	f640 2128 	movw	r1, #2600	; 0xa28
 80035c4:	2001      	movs	r0, #1
 80035c6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80035ca:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80035ce:	fa00 f308 	lsl.w	r3, r0, r8
 80035d2:	201b      	movs	r0, #27
 80035d4:	6816      	ldr	r6, [r2, #0]
 80035d6:	eb00 0083 	add.w	r0, r0, r3, lsl #2
 80035da:	1a71      	subs	r1, r6, r1
 80035dc:	10c9      	asrs	r1, r1, #3
 80035de:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 80035e2:	08c0      	lsrs	r0, r0, #3
 80035e4:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 80035e8:	d805      	bhi.n	80035f6 <strtod+0xa0e>
 80035ea:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 80035ee:	4664      	mov	r4, ip
 80035f0:	f842 0e00 	strt	r0, [r2]
 80035f4:	e044      	b.n	8003680 <strtod+0xa98>
 80035f6:	f84d 3e1c 	strt	r3, [sp, #28]
 80035fa:	4664      	mov	r4, ip
 80035fc:	e03b      	b.n	8003676 <strtod+0xa8e>
 80035fe:	7820      	ldrb	r0, [r4, #0]
 8003600:	f8d9 a010 	ldr.w	sl, [r9, #16]
 8003604:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 8003608:	2000      	movs	r0, #0
 800360a:	17d1      	asrs	r1, r2, #31
 800360c:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 8003610:	468b      	mov	fp, r1
 8003612:	3001      	adds	r0, #1
 8003614:	2100      	movs	r1, #0
 8003616:	695e      	ldr	r6, [r3, #20]
 8003618:	4550      	cmp	r0, sl
 800361a:	fbe6 2b05 	umlal	r2, fp, r6, r5
 800361e:	f843 2e14 	strt	r2, [r3, #20]
 8003622:	465a      	mov	r2, fp
 8003624:	dbf2      	blt.n	800360c <strtod+0xa24>
 8003626:	3401      	adds	r4, #1
 8003628:	f1bb 0f00 	cmp.w	fp, #0
 800362c:	d067      	beq.n	80036fe <strtod+0xb16>
 800362e:	f8d9 0008 	ldr.w	r0, [r9, #8]
 8003632:	4582      	cmp	sl, r0
 8003634:	db5b      	blt.n	80036ee <strtod+0xb06>
 8003636:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800363a:	f84d 4e28 	strt	r4, [sp, #40]
 800363e:	f100 0801 	add.w	r8, r0, #1
 8003642:	f1b8 0f07 	cmp.w	r8, #7
 8003646:	dc0c      	bgt.n	8003662 <strtod+0xa7a>
 8003648:	f85e 6028 	ldr.w	r6, [lr, r8, lsl #2]
 800364c:	2e00      	cmp	r6, #0
 800364e:	d0b5      	beq.n	80035bc <strtod+0x9d4>
 8003650:	6830      	ldr	r0, [r6, #0]
 8003652:	4664      	mov	r4, ip
 8003654:	eb0e 0e88 	add.w	lr, lr, r8, lsl #2
 8003658:	f84e 0e00 	strt	r0, [lr]
 800365c:	ebae 0e88 	sub.w	lr, lr, r8, lsl #2
 8003660:	e012      	b.n	8003688 <strtod+0xaa0>
 8003662:	2001      	movs	r0, #1
 8003664:	4664      	mov	r4, ip
 8003666:	fa00 f108 	lsl.w	r1, r0, r8
 800366a:	201b      	movs	r0, #27
 800366c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003670:	f84d 1e1c 	strt	r1, [sp, #28]
 8003674:	08c0      	lsrs	r0, r0, #3
 8003676:	00c0      	lsls	r0, r0, #3
 8003678:	f001 fd72 	bl	8005160 <malloc>
 800367c:	9b07      	ldr	r3, [sp, #28]
 800367e:	4606      	mov	r6, r0
 8003680:	f846 8e04 	strt	r8, [r6, #4]
 8003684:	f846 3e08 	strt	r3, [r6, #8]
 8003688:	2100      	movs	r1, #0
 800368a:	4630      	mov	r0, r6
 800368c:	2208      	movs	r2, #8
 800368e:	f846 1e10 	strt	r1, [r6, #16]
 8003692:	bfe8      	it	al
 8003694:	300c      	addal	r0, #12
 8003696:	f840 1e00 	strt	r1, [r0]
 800369a:	f8d9 1010 	ldr.w	r1, [r9, #16]
 800369e:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 80036a2:	f109 010c 	add.w	r1, r9, #12
 80036a6:	f001 fd0b 	bl	80050c0 <__aeabi_memcpy>
 80036aa:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80036ae:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80036b2:	2808      	cmp	r0, #8
 80036b4:	db0a      	blt.n	80036cc <strtod+0xae4>
 80036b6:	4648      	mov	r0, r9
 80036b8:	f001 fd5a 	bl	8005170 <free>
 80036bc:	46a4      	mov	ip, r4
 80036be:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80036c0:	f640 2e04 	movw	lr, #2564	; 0xa04
 80036c4:	46b1      	mov	r9, r6
 80036c6:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80036ca:	e010      	b.n	80036ee <strtod+0xb06>
 80036cc:	f640 2e04 	movw	lr, #2564	; 0xa04
 80036d0:	46a4      	mov	ip, r4
 80036d2:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80036d6:	f85e 1020 	ldr.w	r1, [lr, r0, lsl #2]
 80036da:	f849 1e00 	strt	r1, [r9]
 80036de:	eb0e 0e80 	add.w	lr, lr, r0, lsl #2
 80036e2:	f84e 9e00 	strt	r9, [lr]
 80036e6:	ebae 0e80 	sub.w	lr, lr, r0, lsl #2
 80036ea:	46b1      	mov	r9, r6
 80036ec:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80036ee:	eb09 008a 	add.w	r0, r9, sl, lsl #2
 80036f2:	f840 be14 	strt	fp, [r0, #20]
 80036f6:	f10a 0001 	add.w	r0, sl, #1
 80036fa:	f849 0e10 	strt	r0, [r9, #16]
 80036fe:	f10c 0c01 	add.w	ip, ip, #1
 8003702:	45c4      	cmp	ip, r8
 8003704:	f47f af7b 	bne.w	80035fe <strtod+0xa16>
 8003708:	9804      	ldr	r0, [sp, #16]
 800370a:	2100      	movs	r1, #0
 800370c:	ed1f 9b92 	vldr	d9, [pc, #-584]	; 80034c8 <strtod+0x8e0>
 8003710:	ed1f ab91 	vldr	d10, [pc, #-580]	; 80034d0 <strtod+0x8e8>
 8003714:	ed1f bb96 	vldr	d11, [pc, #-600]	; 80034c0 <strtod+0x8d8>
 8003718:	ed1f db91 	vldr	d13, [pc, #-580]	; 80034d8 <strtod+0x8f0>
 800371c:	ed1f eb90 	vldr	d14, [pc, #-576]	; 80034e0 <strtod+0x8f8>
 8003720:	ed1f fb8f 	vldr	d15, [pc, #-572]	; 80034e8 <strtod+0x900>
 8003724:	ed1f cb8e 	vldr	d12, [pc, #-568]	; 80034f0 <strtod+0x908>
 8003728:	f640 2604 	movw	r6, #2564	; 0xa04
 800372c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003730:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003734:	bfc8      	it	gt
 8003736:	4601      	movgt	r1, r0
 8003738:	f1c0 0000 	rsb	r0, r0, #0
 800373c:	f84d 1e1c 	strt	r1, [sp, #28]
 8003740:	bfc8      	it	gt
 8003742:	2000      	movgt	r0, #0
 8003744:	f84d 0e10 	strt	r0, [sp, #16]
 8003748:	f109 000c 	add.w	r0, r9, #12
 800374c:	f84d 0e14 	strt	r0, [sp, #20]
 8003750:	e009      	b.n	8003766 <strtod+0xb7e>
 8003752:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003756:	f84b 1e00 	strt	r1, [fp]
 800375a:	eb06 0680 	add.w	r6, r6, r0, lsl #2
 800375e:	f846 be00 	strt	fp, [r6]
 8003762:	eba6 0680 	sub.w	r6, r6, r0, lsl #2
 8003766:	f8d9 4004 	ldr.w	r4, [r9, #4]
 800376a:	2c07      	cmp	r4, #7
 800376c:	dc0e      	bgt.n	800378c <strtod+0xba4>
 800376e:	f856 0024 	ldr.w	r0, [r6, r4, lsl #2]
 8003772:	4632      	mov	r2, r6
 8003774:	2601      	movs	r6, #1
 8003776:	2800      	cmp	r0, #0
 8003778:	d050      	beq.n	800381c <strtod+0xc34>
 800377a:	6801      	ldr	r1, [r0, #0]
 800377c:	4693      	mov	fp, r2
 800377e:	eb02 0284 	add.w	r2, r2, r4, lsl #2
 8003782:	f842 1e00 	strt	r1, [r2]
 8003786:	eba2 0284 	sub.w	r2, r2, r4, lsl #2
 800378a:	e00e      	b.n	80037aa <strtod+0xbc2>
 800378c:	46b3      	mov	fp, r6
 800378e:	2601      	movs	r6, #1
 8003790:	201b      	movs	r0, #27
 8003792:	fa06 f504 	lsl.w	r5, r6, r4
 8003796:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 800379a:	08c2      	lsrs	r2, r0, #3
 800379c:	00d0      	lsls	r0, r2, #3
 800379e:	f001 fcdf 	bl	8005160 <malloc>
 80037a2:	f840 4e04 	strt	r4, [r0, #4]
 80037a6:	f840 5e08 	strt	r5, [r0, #8]
 80037aa:	2100      	movs	r1, #0
 80037ac:	2208      	movs	r2, #8
 80037ae:	f840 1e10 	strt	r1, [r0, #16]
 80037b2:	f84d 0e28 	strt	r0, [sp, #40]
 80037b6:	bfe8      	it	al
 80037b8:	300c      	addal	r0, #12
 80037ba:	f840 1e00 	strt	r1, [r0]
 80037be:	f8d9 1010 	ldr.w	r1, [r9, #16]
 80037c2:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 80037c6:	9905      	ldr	r1, [sp, #20]
 80037c8:	f001 fc7a 	bl	80050c0 <__aeabi_memcpy>
 80037cc:	a80c      	add	r0, sp, #48	; 0x30
 80037ce:	a911      	add	r1, sp, #68	; 0x44
 80037d0:	aa10      	add	r2, sp, #64	; 0x40
 80037d2:	f000 fd9d 	bl	8004310 <d2b>
 80037d6:	f8db 8004 	ldr.w	r8, [fp, #4]
 80037da:	4682      	mov	sl, r0
 80037dc:	f1b8 0f00 	cmp.w	r8, #0
 80037e0:	d005      	beq.n	80037ee <strtod+0xc06>
 80037e2:	f8d8 0000 	ldr.w	r0, [r8]
 80037e6:	9904      	ldr	r1, [sp, #16]
 80037e8:	f84b 0e04 	strt	r0, [fp, #4]
 80037ec:	e03d      	b.n	800386a <strtod+0xc82>
 80037ee:	f240 0228 	movw	r2, #40	; 0x28
 80037f2:	f640 2028 	movw	r0, #2600	; 0xa28
 80037f6:	2104      	movs	r1, #4
 80037f8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80037fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003800:	f8d2 8000 	ldr.w	r8, [r2]
 8003804:	eba8 0000 	sub.w	r0, r8, r0
 8003808:	eb01 00e0 	add.w	r0, r1, r0, asr #3
 800380c:	f5b0 7f90 	cmp.w	r0, #288	; 0x120
 8003810:	d821      	bhi.n	8003856 <strtod+0xc6e>
 8003812:	f108 0020 	add.w	r0, r8, #32
 8003816:	f842 0e00 	strt	r0, [r2]
 800381a:	e020      	b.n	800385e <strtod+0xc76>
 800381c:	f240 0828 	movw	r8, #40	; 0x28
 8003820:	fa06 f504 	lsl.w	r5, r6, r4
 8003824:	201b      	movs	r0, #27
 8003826:	4693      	mov	fp, r2
 8003828:	f640 2128 	movw	r1, #2600	; 0xa28
 800382c:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8003830:	eb00 0285 	add.w	r2, r0, r5, lsl #2
 8003834:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003838:	f8d8 0000 	ldr.w	r0, [r8]
 800383c:	1a41      	subs	r1, r0, r1
 800383e:	10c9      	asrs	r1, r1, #3
 8003840:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 8003844:	08d2      	lsrs	r2, r2, #3
 8003846:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 800384a:	d8a7      	bhi.n	800379c <strtod+0xbb4>
 800384c:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 8003850:	f848 1e00 	strt	r1, [r8]
 8003854:	e7a5      	b.n	80037a2 <strtod+0xbba>
 8003856:	2020      	movs	r0, #32
 8003858:	f001 fc82 	bl	8005160 <malloc>
 800385c:	4680      	mov	r8, r0
 800385e:	9904      	ldr	r1, [sp, #16]
 8003860:	2002      	movs	r0, #2
 8003862:	f848 6e04 	strt	r6, [r8, #4]
 8003866:	f848 0e08 	strt	r0, [r8, #8]
 800386a:	2000      	movs	r0, #0
 800386c:	460d      	mov	r5, r1
 800386e:	f848 0e0c 	strt	r0, [r8, #12]
 8003872:	f848 6e10 	strt	r6, [r8, #16]
 8003876:	f848 6e14 	strt	r6, [r8, #20]
 800387a:	9811      	ldr	r0, [sp, #68]	; 0x44
 800387c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003880:	bfc8      	it	gt
 8003882:	4405      	addgt	r5, r0
 8003884:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003886:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800388a:	f1c3 0239 	rsb	r2, r3, #57	; 0x39
 800388e:	bfd8      	it	le
 8003890:	4403      	addle	r3, r0
 8003892:	9807      	ldr	r0, [sp, #28]
 8003894:	eb05 0b02 	add.w	fp, r5, r2
 8003898:	3039      	adds	r0, #57	; 0x39
 800389a:	1ac4      	subs	r4, r0, r3
 800389c:	45a3      	cmp	fp, r4
 800389e:	4620      	mov	r0, r4
 80038a0:	bfb8      	it	lt
 80038a2:	4658      	movlt	r0, fp
 80038a4:	42a8      	cmp	r0, r5
 80038a6:	bfc8      	it	gt
 80038a8:	4628      	movgt	r0, r5
 80038aa:	2801      	cmp	r0, #1
 80038ac:	bfa2      	ittt	ge
 80038ae:	1a2d      	subge	r5, r5, r0
 80038b0:	1a24      	subge	r4, r4, r0
 80038b2:	ebab 0b00 	subge.w	fp, fp, r0
 80038b6:	2901      	cmp	r1, #1
 80038b8:	db22      	blt.n	8003900 <strtod+0xd18>
 80038ba:	4640      	mov	r0, r8
 80038bc:	f000 fe06 	bl	80044cc <pow5mult>
 80038c0:	4651      	mov	r1, sl
 80038c2:	4680      	mov	r8, r0
 80038c4:	f000 ff36 	bl	8004734 <mult>
 80038c8:	4606      	mov	r6, r0
 80038ca:	f1ba 0f00 	cmp.w	sl, #0
 80038ce:	d016      	beq.n	80038fe <strtod+0xd16>
 80038d0:	f8da 0004 	ldr.w	r0, [sl, #4]
 80038d4:	2808      	cmp	r0, #8
 80038d6:	db03      	blt.n	80038e0 <strtod+0xcf8>
 80038d8:	4650      	mov	r0, sl
 80038da:	f001 fc49 	bl	8005170 <free>
 80038de:	e00e      	b.n	80038fe <strtod+0xd16>
 80038e0:	f640 2104 	movw	r1, #2564	; 0xa04
 80038e4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038e8:	460a      	mov	r2, r1
 80038ea:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80038ee:	f84a 1e00 	strt	r1, [sl]
 80038f2:	eb02 0280 	add.w	r2, r2, r0, lsl #2
 80038f6:	f842 ae00 	strt	sl, [r2]
 80038fa:	eba2 0280 	sub.w	r2, r2, r0, lsl #2
 80038fe:	46b2      	mov	sl, r6
 8003900:	f1bb 0f01 	cmp.w	fp, #1
 8003904:	db04      	blt.n	8003910 <strtod+0xd28>
 8003906:	4650      	mov	r0, sl
 8003908:	4659      	mov	r1, fp
 800390a:	f7ff f8d4 	bl	8002ab6 <lshift>
 800390e:	4682      	mov	sl, r0
 8003910:	9907      	ldr	r1, [sp, #28]
 8003912:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003914:	2901      	cmp	r1, #1
 8003916:	db03      	blt.n	8003920 <strtod+0xd38>
 8003918:	4610      	mov	r0, r2
 800391a:	f000 fdd7 	bl	80044cc <pow5mult>
 800391e:	4602      	mov	r2, r0
 8003920:	2c01      	cmp	r4, #1
 8003922:	db04      	blt.n	800392e <strtod+0xd46>
 8003924:	4610      	mov	r0, r2
 8003926:	4621      	mov	r1, r4
 8003928:	f7ff f8c5 	bl	8002ab6 <lshift>
 800392c:	4602      	mov	r2, r0
 800392e:	2d01      	cmp	r5, #1
 8003930:	db06      	blt.n	8003940 <strtod+0xd58>
 8003932:	4640      	mov	r0, r8
 8003934:	4629      	mov	r1, r5
 8003936:	4614      	mov	r4, r2
 8003938:	f7ff f8bd 	bl	8002ab6 <lshift>
 800393c:	4622      	mov	r2, r4
 800393e:	4680      	mov	r8, r0
 8003940:	4650      	mov	r0, sl
 8003942:	4611      	mov	r1, r2
 8003944:	4615      	mov	r5, r2
 8003946:	f000 ffd8 	bl	80048fa <diff>
 800394a:	4683      	mov	fp, r0
 800394c:	4641      	mov	r1, r8
 800394e:	f8db 000c 	ldr.w	r0, [fp, #12]
 8003952:	f84d 0e24 	strt	r0, [sp, #36]
 8003956:	2000      	movs	r0, #0
 8003958:	f84b 0e0c 	strt	r0, [fp, #12]
 800395c:	4658      	mov	r0, fp
 800395e:	f001 f8c9 	bl	8004af4 <cmp>
 8003962:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003966:	f84d 8e18 	strt	r8, [sp, #24]
 800396a:	f340 81a8 	ble.w	8003cbe <strtod+0x10d6>
 800396e:	2800      	cmp	r0, #0
 8003970:	f000 81af 	beq.w	8003cd2 <strtod+0x10ea>
 8003974:	4658      	mov	r0, fp
 8003976:	a913      	add	r1, sp, #76	; 0x4c
 8003978:	f001 f9c8 	bl	8004d0c <b2d>
 800397c:	eeb0 8a40 	vmov.f32	s16, s0
 8003980:	4640      	mov	r0, r8
 8003982:	a912      	add	r1, sp, #72	; 0x48
 8003984:	eef0 8a60 	vmov.f32	s17, s1
 8003988:	b082      	sub	sp, #8
 800398a:	f84d 0e00 	strt	r0, [sp]
 800398e:	f84d 1e04 	strt	r1, [sp, #4]
 8003992:	ec51 0b18 	vmov	r0, r1, d8
 8003996:	f84d 0e60 	strt	r0, [sp, #96]
 800399a:	f84d 1e64 	strt	r1, [sp, #100]
 800399e:	bc03      	pop	{r0, r1}
 80039a0:	f001 f9b4 	bl	8004d0c <b2d>
 80039a4:	b082      	sub	sp, #8
 80039a6:	f84d 0e00 	strt	r0, [sp]
 80039aa:	f84d 1e04 	strt	r1, [sp, #4]
 80039ae:	ec51 0b10 	vmov	r0, r1, d0
 80039b2:	f84d 0e58 	strt	r0, [sp, #88]
 80039b6:	f84d 1e5c 	strt	r1, [sp, #92]
 80039ba:	bc03      	pop	{r0, r1}
 80039bc:	ac14      	add	r4, sp, #80	; 0x50
 80039be:	f8d8 0010 	ldr.w	r0, [r8, #16]
 80039c2:	f8db 1010 	ldr.w	r1, [fp, #16]
 80039c6:	1a08      	subs	r0, r1, r0
 80039c8:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80039cc:	1a51      	subs	r1, r2, r1
 80039ce:	ec53 2b10 	vmov	r2, r3, d0
 80039d2:	eb01 1040 	add.w	r0, r1, r0, lsl #5
 80039d6:	a916      	add	r1, sp, #88	; 0x58
 80039d8:	2800      	cmp	r0, #0
 80039da:	bfc8      	it	gt
 80039dc:	460c      	movgt	r4, r1
 80039de:	f84d 5e28 	strt	r5, [sp, #40]
 80039e2:	6861      	ldr	r1, [r4, #4]
 80039e4:	bf48      	it	mi
 80039e6:	4240      	negmi	r0, r0
 80039e8:	eb01 16c0 	add.w	r6, r1, r0, lsl #7
 80039ec:	ec51 0b18 	vmov	r0, r1, d8
 80039f0:	f7fc feec 	bl	80007cc <__aeabi_ddiv>
 80039f4:	ec53 2b19 	vmov	r2, r3, d9
 80039f8:	4605      	mov	r5, r0
 80039fa:	4688      	mov	r8, r1
 80039fc:	f844 6e04 	strt	r6, [r4, #4]
 8003a00:	f7fd f836 	bl	8000a70 <__aeabi_dcmple>
 8003a04:	b9d8      	cbnz	r0, 8003a3e <strtod+0xe56>
 8003a06:	ec53 2b1a 	vmov	r2, r3, d10
 8003a0a:	4628      	mov	r0, r5
 8003a0c:	4641      	mov	r1, r8
 8003a0e:	f7fc fdb3 	bl	8000578 <__aeabi_dmul>
 8003a12:	4604      	mov	r4, r0
 8003a14:	460d      	mov	r5, r1
 8003a16:	ec51 0b1b 	vmov	r0, r1, d11
 8003a1a:	4622      	mov	r2, r4
 8003a1c:	462b      	mov	r3, r5
 8003a1e:	ec45 4b18 	vmov	d8, r4, r5
 8003a22:	f7fc fbf1 	bl	8000208 <__aeabi_dsub>
 8003a26:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003a28:	f640 2604 	movw	r6, #2564	; 0xa04
 8003a2c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003a30:	2a00      	cmp	r2, #0
 8003a32:	bf1c      	itt	ne
 8003a34:	4629      	movne	r1, r5
 8003a36:	4620      	movne	r0, r4
 8003a38:	ec41 0b10 	vmov	d0, r0, r1
 8003a3c:	e026      	b.n	8003a8c <strtod+0xea4>
 8003a3e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003a40:	f640 2604 	movw	r6, #2564	; 0xa04
 8003a44:	eeb0 8a4f 	vmov.f32	s16, s30
 8003a48:	eeb0 0a4f 	vmov.f32	s0, s30
 8003a4c:	eef0 8a6f 	vmov.f32	s17, s31
 8003a50:	eef0 0a6f 	vmov.f32	s1, s31
 8003a54:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003a58:	b9c0      	cbnz	r0, 8003a8c <strtod+0xea4>
 8003a5a:	980c      	ldr	r0, [sp, #48]	; 0x30
 8003a5c:	eeb0 8a4f 	vmov.f32	s16, s30
 8003a60:	eeb0 0a4c 	vmov.f32	s0, s24
 8003a64:	eef0 8a6f 	vmov.f32	s17, s31
 8003a68:	eef0 0a6c 	vmov.f32	s1, s25
 8003a6c:	b970      	cbnz	r0, 8003a8c <strtod+0xea4>
 8003a6e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003a70:	217f      	movs	r1, #127	; 0x7f
 8003a72:	eeb0 8a4f 	vmov.f32	s16, s30
 8003a76:	eeb0 0a4c 	vmov.f32	s0, s24
 8003a7a:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003a7e:	eef0 8a6f 	vmov.f32	s17, s31
 8003a82:	eef0 0a6c 	vmov.f32	s1, s25
 8003a86:	4208      	tst	r0, r1
 8003a88:	f000 80f0 	beq.w	8003c6c <strtod+0x1084>
 8003a8c:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003a8e:	f400 44ff 	and.w	r4, r0, #32640	; 0x7f80
 8003a92:	f5b4 5fe0 	cmp.w	r4, #7168	; 0x1c00
 8003a96:	d837      	bhi.n	8003b08 <strtod+0xf20>
 8003a98:	f500 50e0 	add.w	r0, r0, #7168	; 0x1c00
 8003a9c:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8003a9e:	2200      	movs	r2, #0
 8003aa0:	f400 41ff 	and.w	r1, r0, #32640	; 0x7f80
 8003aa4:	f5a1 53dc 	sub.w	r3, r1, #7040	; 0x1b80
 8003aa8:	990c      	ldr	r1, [sp, #48]	; 0x30
 8003aaa:	f84d 0e34 	strt	r0, [sp, #52]
 8003aae:	f84d 1e0c 	strt	r1, [sp, #12]
 8003ab2:	ec51 0b10 	vmov	r0, r1, d0
 8003ab6:	f7fc fd5f 	bl	8000578 <__aeabi_dmul>
 8003aba:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003abe:	ec53 2b10 	vmov	r2, r3, d0
 8003ac2:	f7fc fba3 	bl	800020c <__adddf3>
 8003ac6:	4680      	mov	r8, r0
 8003ac8:	f401 40ff 	and.w	r0, r1, #32640	; 0x7f80
 8003acc:	ec41 8b10 	vmov	d0, r8, r1
 8003ad0:	f5b0 5fe0 	cmp.w	r0, #7168	; 0x1c00
 8003ad4:	b082      	sub	sp, #8
 8003ad6:	f84d 0e00 	strt	r0, [sp]
 8003ada:	f84d 1e04 	strt	r1, [sp, #4]
 8003ade:	ec51 0b10 	vmov	r0, r1, d0
 8003ae2:	f84d 0e38 	strt	r0, [sp, #56]
 8003ae6:	f84d 1e3c 	strt	r1, [sp, #60]
 8003aea:	bc03      	pop	{r0, r1}
 8003aec:	d82a      	bhi.n	8003b44 <strtod+0xf5c>
 8003aee:	9903      	ldr	r1, [sp, #12]
 8003af0:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8003af4:	4308      	orrs	r0, r1
 8003af6:	f000 8155 	beq.w	8003da4 <strtod+0x11bc>
 8003afa:	2080      	movs	r0, #128	; 0x80
 8003afc:	f84d 0e34 	strt	r0, [sp, #52]
 8003b00:	2000      	movs	r0, #0
 8003b02:	f84d 0e30 	strt	r0, [sp, #48]
 8003b06:	e05a      	b.n	8003bbe <strtod+0xfd6>
 8003b08:	f5a4 53dc 	sub.w	r3, r4, #7040	; 0x1b80
 8003b0c:	ec51 0b10 	vmov	r0, r1, d0
 8003b10:	2200      	movs	r2, #0
 8003b12:	f7fc fd31 	bl	8000578 <__aeabi_dmul>
 8003b16:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003b1a:	ec53 2b10 	vmov	r2, r3, d0
 8003b1e:	f7fc fb75 	bl	800020c <__adddf3>
 8003b22:	4680      	mov	r8, r0
 8003b24:	460d      	mov	r5, r1
 8003b26:	ec45 8b10 	vmov	d0, r8, r5
 8003b2a:	b082      	sub	sp, #8
 8003b2c:	f84d 0e00 	strt	r0, [sp]
 8003b30:	f84d 1e04 	strt	r1, [sp, #4]
 8003b34:	ec51 0b10 	vmov	r0, r1, d0
 8003b38:	f84d 0e38 	strt	r0, [sp, #56]
 8003b3c:	f84d 1e3c 	strt	r1, [sp, #60]
 8003b40:	bc03      	pop	{r0, r1}
 8003b42:	e003      	b.n	8003b4c <strtod+0xf64>
 8003b44:	f5a1 55e0 	sub.w	r5, r1, #7168	; 0x1c00
 8003b48:	f84d 5e34 	strt	r5, [sp, #52]
 8003b4c:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003b4e:	2800      	cmp	r0, #0
 8003b50:	bf04      	itt	eq
 8003b52:	f405 40ff 	andeq.w	r0, r5, #32640	; 0x7f80
 8003b56:	4284      	cmpeq	r4, r0
 8003b58:	d131      	bne.n	8003bbe <strtod+0xfd6>
 8003b5a:	f84d be08 	strt	fp, [sp, #8]
 8003b5e:	f84d ae0c 	strt	sl, [sp, #12]
 8003b62:	ec5a 4b18 	vmov	r4, sl, d8
 8003b66:	4620      	mov	r0, r4
 8003b68:	4651      	mov	r1, sl
 8003b6a:	f7fc ff9f 	bl	8000aac <__aeabi_d2iz>
 8003b6e:	f7fc fc99 	bl	80004a4 <__aeabi_i2d>
 8003b72:	4602      	mov	r2, r0
 8003b74:	460b      	mov	r3, r1
 8003b76:	4620      	mov	r0, r4
 8003b78:	4651      	mov	r1, sl
 8003b7a:	f7fc fb45 	bl	8000208 <__aeabi_dsub>
 8003b7e:	4682      	mov	sl, r0
 8003b80:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003b82:	468b      	mov	fp, r1
 8003b84:	2800      	cmp	r0, #0
 8003b86:	bf02      	ittt	eq
 8003b88:	f64f 7080 	movweq	r0, #65408	; 0xff80
 8003b8c:	ea25 0000 	biceq.w	r0, r5, r0
 8003b90:	ea50 0008 	orrseq.w	r0, r0, r8
 8003b94:	d061      	beq.n	8003c5a <strtod+0x1072>
 8003b96:	ec53 2b1d 	vmov	r2, r3, d13
 8003b9a:	4650      	mov	r0, sl
 8003b9c:	4659      	mov	r1, fp
 8003b9e:	f7fc ff5d 	bl	8000a5c <__aeabi_dcmplt>
 8003ba2:	2800      	cmp	r0, #0
 8003ba4:	f040 810d 	bne.w	8003dc2 <strtod+0x11da>
 8003ba8:	ec53 2b1e 	vmov	r2, r3, d14
 8003bac:	4650      	mov	r0, sl
 8003bae:	4659      	mov	r1, fp
 8003bb0:	f7fc ff72 	bl	8000a98 <__aeabi_dcmpgt>
 8003bb4:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 8003bb8:	2800      	cmp	r0, #0
 8003bba:	f040 80fa 	bne.w	8003db2 <strtod+0x11ca>
 8003bbe:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8003bc0:	9d06      	ldr	r5, [sp, #24]
 8003bc2:	f1ba 0f00 	cmp.w	sl, #0
 8003bc6:	d012      	beq.n	8003bee <strtod+0x1006>
 8003bc8:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003bcc:	2808      	cmp	r0, #8
 8003bce:	db04      	blt.n	8003bda <strtod+0xff2>
 8003bd0:	4650      	mov	r0, sl
 8003bd2:	f001 facd 	bl	8005170 <free>
 8003bd6:	b95c      	cbnz	r4, 8003bf0 <strtod+0x1008>
 8003bd8:	e01c      	b.n	8003c14 <strtod+0x102c>
 8003bda:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003bde:	f84a 1e00 	strt	r1, [sl]
 8003be2:	eb06 0680 	add.w	r6, r6, r0, lsl #2
 8003be6:	f846 ae00 	strt	sl, [r6]
 8003bea:	eba6 0680 	sub.w	r6, r6, r0, lsl #2
 8003bee:	b18c      	cbz	r4, 8003c14 <strtod+0x102c>
 8003bf0:	6860      	ldr	r0, [r4, #4]
 8003bf2:	2808      	cmp	r0, #8
 8003bf4:	db04      	blt.n	8003c00 <strtod+0x1018>
 8003bf6:	4620      	mov	r0, r4
 8003bf8:	f001 faba 	bl	8005170 <free>
 8003bfc:	b95d      	cbnz	r5, 8003c16 <strtod+0x102e>
 8003bfe:	e01f      	b.n	8003c40 <strtod+0x1058>
 8003c00:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003c04:	f844 1e00 	strt	r1, [r4]
 8003c08:	eb06 0680 	add.w	r6, r6, r0, lsl #2
 8003c0c:	f846 4e00 	strt	r4, [r6]
 8003c10:	eba6 0680 	sub.w	r6, r6, r0, lsl #2
 8003c14:	b1a5      	cbz	r5, 8003c40 <strtod+0x1058>
 8003c16:	6868      	ldr	r0, [r5, #4]
 8003c18:	2808      	cmp	r0, #8
 8003c1a:	db07      	blt.n	8003c2c <strtod+0x1044>
 8003c1c:	4628      	mov	r0, r5
 8003c1e:	f001 faa7 	bl	8005170 <free>
 8003c22:	f1bb 0f00 	cmp.w	fp, #0
 8003c26:	f43f ad9e 	beq.w	8003766 <strtod+0xb7e>
 8003c2a:	e00d      	b.n	8003c48 <strtod+0x1060>
 8003c2c:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003c30:	f845 1e00 	strt	r1, [r5]
 8003c34:	eb06 0680 	add.w	r6, r6, r0, lsl #2
 8003c38:	f846 5e00 	strt	r5, [r6]
 8003c3c:	eba6 0680 	sub.w	r6, r6, r0, lsl #2
 8003c40:	f1bb 0f00 	cmp.w	fp, #0
 8003c44:	f43f ad8f 	beq.w	8003766 <strtod+0xb7e>
 8003c48:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003c4c:	2808      	cmp	r0, #8
 8003c4e:	f6ff ad80 	blt.w	8003752 <strtod+0xb6a>
 8003c52:	4658      	mov	r0, fp
 8003c54:	f001 fa8c 	bl	8005170 <free>
 8003c58:	e585      	b.n	8003766 <strtod+0xb7e>
 8003c5a:	ed9f 0bef 	vldr	d0, [pc, #956]	; 8004018 <strtod+0x1430>
 8003c5e:	4650      	mov	r0, sl
 8003c60:	4659      	mov	r1, fp
 8003c62:	ec53 2b10 	vmov	r2, r3, d0
 8003c66:	f7fc fef9 	bl	8000a5c <__aeabi_dcmplt>
 8003c6a:	e7a3      	b.n	8003bb4 <strtod+0xfcc>
 8003c6c:	ec56 4b1a 	vmov	r4, r6, d10
 8003c70:	4628      	mov	r0, r5
 8003c72:	4641      	mov	r1, r8
 8003c74:	4622      	mov	r2, r4
 8003c76:	4633      	mov	r3, r6
 8003c78:	f7fc fc7e 	bl	8000578 <__aeabi_dmul>
 8003c7c:	f84d ae0c 	strt	sl, [sp, #12]
 8003c80:	4682      	mov	sl, r0
 8003c82:	f84d be08 	strt	fp, [sp, #8]
 8003c86:	468b      	mov	fp, r1
 8003c88:	ec53 2b1f 	vmov	r2, r3, d15
 8003c8c:	4628      	mov	r0, r5
 8003c8e:	4641      	mov	r1, r8
 8003c90:	f7fc fee4 	bl	8000a5c <__aeabi_dcmplt>
 8003c94:	2800      	cmp	r0, #0
 8003c96:	ec51 0b1b 	vmov	r0, r1, d11
 8003c9a:	bf1c      	itt	ne
 8003c9c:	46b3      	movne	fp, r6
 8003c9e:	46a2      	movne	sl, r4
 8003ca0:	f640 2604 	movw	r6, #2564	; 0xa04
 8003ca4:	ec4b ab18 	vmov	d8, sl, fp
 8003ca8:	4652      	mov	r2, sl
 8003caa:	465b      	mov	r3, fp
 8003cac:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8003cb0:	f8dd b008 	ldr.w	fp, [sp, #8]
 8003cb4:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003cb8:	f7fc faa6 	bl	8000208 <__aeabi_dsub>
 8003cbc:	e6bc      	b.n	8003a38 <strtod+0xe50>
 8003cbe:	980c      	ldr	r0, [sp, #48]	; 0x30
 8003cc0:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003cc2:	4308      	orrs	r0, r1
 8003cc4:	d028      	beq.n	8003d18 <strtod+0x1130>
 8003cc6:	462b      	mov	r3, r5
 8003cc8:	f1ba 0f00 	cmp.w	sl, #0
 8003ccc:	f040 8272 	bne.w	80041b4 <strtod+0x15cc>
 8003cd0:	e28a      	b.n	80041e8 <strtod+0x1600>
 8003cd2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003cd4:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003cd6:	f64f 7180 	movw	r1, #65408	; 0xff80
 8003cda:	ea20 0101 	bic.w	r1, r0, r1
 8003cde:	b38a      	cbz	r2, 8003d44 <strtod+0x115c>
 8003ce0:	227f      	movs	r2, #127	; 0x7f
 8003ce2:	f6cf 72ff 	movt	r2, #65535	; 0xffff
 8003ce6:	4291      	cmp	r1, r2
 8003ce8:	bf04      	itt	eq
 8003cea:	990c      	ldreq	r1, [sp, #48]	; 0x30
 8003cec:	f111 0101 	addseq.w	r1, r1, #1
 8003cf0:	d171      	bne.n	8003dd6 <strtod+0x11ee>
 8003cf2:	217f      	movs	r1, #127	; 0x7f
 8003cf4:	462b      	mov	r3, r5
 8003cf6:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003cfa:	f501 4180 	add.w	r1, r1, #16384	; 0x4000
 8003cfe:	4288      	cmp	r0, r1
 8003d00:	f040 8088 	bne.w	8003e14 <strtod+0x122c>
 8003d04:	207f      	movs	r0, #127	; 0x7f
 8003d06:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 8003d0a:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 8003d0e:	f84d 0e34 	strt	r0, [sp, #52]
 8003d12:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003d16:	e1ac      	b.n	8004072 <strtod+0x148a>
 8003d18:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003d1a:	217f      	movs	r1, #127	; 0x7f
 8003d1c:	462b      	mov	r3, r5
 8003d1e:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003d22:	4208      	tst	r0, r1
 8003d24:	f040 8243 	bne.w	80041ae <strtod+0x15c6>
 8003d28:	4658      	mov	r0, fp
 8003d2a:	461e      	mov	r6, r3
 8003d2c:	e9d0 8004 	ldrd	r8, r0, [r0, #16]
 8003d30:	2800      	cmp	r0, #0
 8003d32:	f040 80f5 	bne.w	8003f20 <strtod+0x1338>
 8003d36:	f1b8 0f02 	cmp.w	r8, #2
 8003d3a:	f280 80f1 	bge.w	8003f20 <strtod+0x1338>
 8003d3e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003d42:	e2c0      	b.n	80042c6 <strtod+0x16de>
 8003d44:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8003d46:	462b      	mov	r3, r5
 8003d48:	4311      	orrs	r1, r2
 8003d4a:	f040 8230 	bne.w	80041ae <strtod+0x15c6>
 8003d4e:	e184      	b.n	800405a <strtod+0x1472>
 8003d50:	f24a 04b0 	movw	r4, #41136	; 0xa0b0
 8003d54:	4602      	mov	r2, r0
 8003d56:	f1c8 000f 	rsb	r0, r8, #15
 8003d5a:	f6c0 0400 	movt	r4, #2048	; 0x800
 8003d5e:	1a15      	subs	r5, r2, r0
 8003d60:	ec53 2b10 	vmov	r2, r3, d0
 8003d64:	eb04 01c0 	add.w	r1, r4, r0, lsl #3
 8003d68:	ed91 1b00 	vldr	d1, [r1]
 8003d6c:	ec51 0b11 	vmov	r0, r1, d1
 8003d70:	f7fc fc02 	bl	8000578 <__aeabi_dmul>
 8003d74:	eb04 02c5 	add.w	r2, r4, r5, lsl #3
 8003d78:	ed92 0b00 	vldr	d0, [r2]
 8003d7c:	ec53 2b10 	vmov	r2, r3, d0
 8003d80:	f7fc fbfa 	bl	8000578 <__aeabi_dmul>
 8003d84:	ec41 0b10 	vmov	d0, r0, r1
 8003d88:	b082      	sub	sp, #8
 8003d8a:	f84d 0e00 	strt	r0, [sp]
 8003d8e:	f84d 1e04 	strt	r1, [sp, #4]
 8003d92:	ec51 0b10 	vmov	r0, r1, d0
 8003d96:	f84d 0e38 	strt	r0, [sp, #56]
 8003d9a:	f84d 1e3c 	strt	r1, [sp, #60]
 8003d9e:	bc03      	pop	{r0, r1}
 8003da0:	f7ff b9d0 	b.w	8003144 <strtod+0x55c>
 8003da4:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003da6:	2800      	cmp	r0, #0
 8003da8:	db03      	blt.n	8003db2 <strtod+0x11ca>
 8003daa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003dac:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003db0:	e15c      	b.n	800406c <strtod+0x1484>
 8003db2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003db4:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003db8:	f1ba 0f00 	cmp.w	sl, #0
 8003dbc:	f040 81fa 	bne.w	80041b4 <strtod+0x15cc>
 8003dc0:	e212      	b.n	80041e8 <strtod+0x1600>
 8003dc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003dc4:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003dc8:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 8003dcc:	f1ba 0f00 	cmp.w	sl, #0
 8003dd0:	f040 81f0 	bne.w	80041b4 <strtod+0x15cc>
 8003dd4:	e208      	b.n	80041e8 <strtod+0x1600>
 8003dd6:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003dda:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003dde:	2200      	movs	r2, #0
 8003de0:	f5a0 53dc 	sub.w	r3, r0, #7040	; 0x1b80
 8003de4:	ec51 0b10 	vmov	r0, r1, d0
 8003de8:	f7fc fa10 	bl	800020c <__adddf3>
 8003dec:	ec41 0b10 	vmov	d0, r0, r1
 8003df0:	462b      	mov	r3, r5
 8003df2:	b082      	sub	sp, #8
 8003df4:	f84d 0e00 	strt	r0, [sp]
 8003df8:	f84d 1e04 	strt	r1, [sp, #4]
 8003dfc:	ec51 0b10 	vmov	r0, r1, d0
 8003e00:	f84d 0e38 	strt	r0, [sp, #56]
 8003e04:	f84d 1e3c 	strt	r1, [sp, #60]
 8003e08:	bc03      	pop	{r0, r1}
 8003e0a:	f1ba 0f00 	cmp.w	sl, #0
 8003e0e:	f040 81d1 	bne.w	80041b4 <strtod+0x15cc>
 8003e12:	e1e9      	b.n	80041e8 <strtod+0x1600>
 8003e14:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003e18:	3080      	adds	r0, #128	; 0x80
 8003e1a:	f84d 0e34 	strt	r0, [sp, #52]
 8003e1e:	2000      	movs	r0, #0
 8003e20:	e1c3      	b.n	80041aa <strtod+0x15c2>
 8003e22:	2400      	movs	r4, #0
 8003e24:	2d02      	cmp	r5, #2
 8003e26:	db23      	blt.n	8003e70 <strtod+0x1288>
 8003e28:	f24a 16f0 	movw	r6, #41456	; 0xa1f0
 8003e2c:	f6c0 0600 	movt	r6, #2048	; 0x800
 8003e30:	07e8      	lsls	r0, r5, #31
 8003e32:	d015      	beq.n	8003e60 <strtod+0x1278>
 8003e34:	ed96 1b00 	vldr	d1, [r6]
 8003e38:	ec53 2b10 	vmov	r2, r3, d0
 8003e3c:	ec51 0b11 	vmov	r0, r1, d1
 8003e40:	f7fc fb9a 	bl	8000578 <__aeabi_dmul>
 8003e44:	ec41 0b10 	vmov	d0, r0, r1
 8003e48:	b082      	sub	sp, #8
 8003e4a:	f84d 0e00 	strt	r0, [sp]
 8003e4e:	f84d 1e04 	strt	r1, [sp, #4]
 8003e52:	ec51 0b10 	vmov	r0, r1, d0
 8003e56:	f84d 0e38 	strt	r0, [sp, #56]
 8003e5a:	f84d 1e3c 	strt	r1, [sp, #60]
 8003e5e:	bc03      	pop	{r0, r1}
 8003e60:	0868      	lsrs	r0, r5, #1
 8003e62:	2d03      	cmp	r5, #3
 8003e64:	f106 0608 	add.w	r6, r6, #8
 8003e68:	f104 0401 	add.w	r4, r4, #1
 8003e6c:	4605      	mov	r5, r0
 8003e6e:	d8df      	bhi.n	8003e30 <strtod+0x1248>
 8003e70:	f24a 10f0 	movw	r0, #41456	; 0xa1f0
 8003e74:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003e78:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 8003e7c:	ec54 6b10 	vmov	r6, r4, d0
 8003e80:	ed90 1b00 	vldr	d1, [r0]
 8003e84:	4630      	mov	r0, r6
 8003e86:	4621      	mov	r1, r4
 8003e88:	ec55 2b11 	vmov	r2, r5, d1
 8003e8c:	462b      	mov	r3, r5
 8003e8e:	f84d 2e1c 	strt	r2, [sp, #28]
 8003e92:	f7fc fb71 	bl	8000578 <__aeabi_dmul>
 8003e96:	ed9f 1b62 	vldr	d1, [pc, #392]	; 8004020 <strtod+0x1438>
 8003e9a:	ec41 0b10 	vmov	d0, r0, r1
 8003e9e:	b082      	sub	sp, #8
 8003ea0:	f84d 0e00 	strt	r0, [sp]
 8003ea4:	f84d 1e04 	strt	r1, [sp, #4]
 8003ea8:	ec51 0b10 	vmov	r0, r1, d0
 8003eac:	f84d 0e38 	strt	r0, [sp, #56]
 8003eb0:	f84d 1e3c 	strt	r1, [sp, #60]
 8003eb4:	bc03      	pop	{r0, r1}
 8003eb6:	ec53 2b11 	vmov	r2, r3, d1
 8003eba:	f84d 2e0c 	strt	r2, [sp, #12]
 8003ebe:	f84d 3e18 	strt	r3, [sp, #24]
 8003ec2:	f7fc fdc1 	bl	8000a48 <__aeabi_dcmpeq>
 8003ec6:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003eca:	2800      	cmp	r0, #0
 8003ecc:	f43f aa2f 	beq.w	800332e <strtod+0x746>
 8003ed0:	4630      	mov	r0, r6
 8003ed2:	4621      	mov	r1, r4
 8003ed4:	4632      	mov	r2, r6
 8003ed6:	4623      	mov	r3, r4
 8003ed8:	f7fc f998 	bl	800020c <__adddf3>
 8003edc:	9a07      	ldr	r2, [sp, #28]
 8003ede:	462b      	mov	r3, r5
 8003ee0:	f7fc fb4a 	bl	8000578 <__aeabi_dmul>
 8003ee4:	9a03      	ldr	r2, [sp, #12]
 8003ee6:	9b06      	ldr	r3, [sp, #24]
 8003ee8:	ec41 0b10 	vmov	d0, r0, r1
 8003eec:	b082      	sub	sp, #8
 8003eee:	f84d 0e00 	strt	r0, [sp]
 8003ef2:	f84d 1e04 	strt	r1, [sp, #4]
 8003ef6:	ec51 0b10 	vmov	r0, r1, d0
 8003efa:	f84d 0e38 	strt	r0, [sp, #56]
 8003efe:	f84d 1e3c 	strt	r1, [sp, #60]
 8003f02:	bc03      	pop	{r0, r1}
 8003f04:	f7fc fda0 	bl	8000a48 <__aeabi_dcmpeq>
 8003f08:	f04f 0900 	mov.w	r9, #0
 8003f0c:	2800      	cmp	r0, #0
 8003f0e:	f47f a9ba 	bne.w	8003286 <strtod+0x69e>
 8003f12:	2080      	movs	r0, #128	; 0x80
 8003f14:	f84d 9e30 	strt	r9, [sp, #48]
 8003f18:	f84d 0e34 	strt	r0, [sp, #52]
 8003f1c:	f7ff ba05 	b.w	800332a <strtod+0x742>
 8003f20:	4658      	mov	r0, fp
 8003f22:	e9d0 5001 	ldrd	r5, r0, [r0, #4]
 8003f26:	4580      	cmp	r8, r0
 8003f28:	db06      	blt.n	8003f38 <strtod+0x1350>
 8003f2a:	0041      	lsls	r1, r0, #1
 8003f2c:	ebb8 0f40 	cmp.w	r8, r0, lsl #1
 8003f30:	f105 0501 	add.w	r5, r5, #1
 8003f34:	4608      	mov	r0, r1
 8003f36:	daf8      	bge.n	8003f2a <strtod+0x1342>
 8003f38:	2d07      	cmp	r5, #7
 8003f3a:	dc10      	bgt.n	8003f5e <strtod+0x1376>
 8003f3c:	f640 2104 	movw	r1, #2564	; 0xa04
 8003f40:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f44:	f851 4025 	ldr.w	r4, [r1, r5, lsl #2]
 8003f48:	2c00      	cmp	r4, #0
 8003f4a:	f000 81c2 	beq.w	80042d2 <strtod+0x16ea>
 8003f4e:	6820      	ldr	r0, [r4, #0]
 8003f50:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 8003f54:	f841 0e00 	strt	r0, [r1]
 8003f58:	eba1 0185 	sub.w	r1, r1, r5, lsl #2
 8003f5c:	e012      	b.n	8003f84 <strtod+0x139c>
 8003f5e:	2001      	movs	r0, #1
 8003f60:	f84d ae0c 	strt	sl, [sp, #12]
 8003f64:	fa00 fa05 	lsl.w	sl, r0, r5
 8003f68:	201b      	movs	r0, #27
 8003f6a:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 8003f6e:	08c0      	lsrs	r0, r0, #3
 8003f70:	00c0      	lsls	r0, r0, #3
 8003f72:	f001 f8f5 	bl	8005160 <malloc>
 8003f76:	4604      	mov	r4, r0
 8003f78:	f844 5e04 	strt	r5, [r4, #4]
 8003f7c:	f844 ae08 	strt	sl, [r4, #8]
 8003f80:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8003f84:	2000      	movs	r0, #0
 8003f86:	f06f 0114 	mvn.w	r1, #20
 8003f8a:	f10b 0318 	add.w	r3, fp, #24
 8003f8e:	f844 0e0c 	strt	r0, [r4, #12]
 8003f92:	f844 0e10 	strt	r0, [r4, #16]
 8003f96:	eba1 020b 	sub.w	r2, r1, fp
 8003f9a:	f8db 1010 	ldr.w	r1, [fp, #16]
 8003f9e:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8003fa2:	3114      	adds	r1, #20
 8003fa4:	4299      	cmp	r1, r3
 8003fa6:	bf88      	it	hi
 8003fa8:	460b      	movhi	r3, r1
 8003faa:	441a      	add	r2, r3
 8003fac:	2314      	movs	r3, #20
 8003fae:	ea4f 0c92 	mov.w	ip, r2, lsr #2
 8003fb2:	f85b 5003 	ldr.w	r5, [fp, r3]
 8003fb6:	ea40 0045 	orr.w	r0, r0, r5, lsl #1
 8003fba:	1d1d      	adds	r5, r3, #4
 8003fbc:	bfe8      	it	al
 8003fbe:	18e4      	addal	r4, r4, r3
 8003fc0:	f844 0e00 	strt	r0, [r4]
 8003fc4:	bfe8      	it	al
 8003fc6:	1ae4      	subal	r4, r4, r3
 8003fc8:	eb0b 0205 	add.w	r2, fp, r5
 8003fcc:	f85b 0003 	ldr.w	r0, [fp, r3]
 8003fd0:	428a      	cmp	r2, r1
 8003fd2:	462b      	mov	r3, r5
 8003fd4:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 8003fd8:	d3eb      	bcc.n	8003fb2 <strtod+0x13ca>
 8003fda:	eb04 018c 	add.w	r1, r4, ip, lsl #2
 8003fde:	2800      	cmp	r0, #0
 8003fe0:	f841 0e18 	strt	r0, [r1, #24]
 8003fe4:	f04f 0102 	mov.w	r1, #2
 8003fe8:	bf08      	it	eq
 8003fea:	2101      	moveq	r1, #1
 8003fec:	f1bb 0f00 	cmp.w	fp, #0
 8003ff0:	eb08 0001 	add.w	r0, r8, r1
 8003ff4:	f1a0 0001 	sub.w	r0, r0, #1
 8003ff8:	f844 0e10 	strt	r0, [r4, #16]
 8003ffc:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004000:	d021      	beq.n	8004046 <strtod+0x145e>
 8004002:	f8db 3004 	ldr.w	r3, [fp, #4]
 8004006:	2b08      	cmp	r3, #8
 8004008:	db0e      	blt.n	8004028 <strtod+0x1440>
 800400a:	4658      	mov	r0, fp
 800400c:	f001 f8b0 	bl	8005170 <free>
 8004010:	e019      	b.n	8004046 <strtod+0x145e>
 8004012:	bf00      	nop
 8004014:	bf00      	nop
 8004016:	bf00      	nop
 8004018:	94a03595 	.word	0x94a03595
 800401c:	3fcfffff 	.word	0x3fcfffff
	...
 8004028:	f640 2104 	movw	r1, #2564	; 0xa04
 800402c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004030:	460a      	mov	r2, r1
 8004032:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8004036:	f84b 1e00 	strt	r1, [fp]
 800403a:	eb02 0283 	add.w	r2, r2, r3, lsl #2
 800403e:	f842 be00 	strt	fp, [r2]
 8004042:	eba2 0283 	sub.w	r2, r2, r3, lsl #2
 8004046:	4620      	mov	r0, r4
 8004048:	4641      	mov	r1, r8
 800404a:	f000 fd53 	bl	8004af4 <cmp>
 800404e:	2801      	cmp	r0, #1
 8004050:	f2c0 8138 	blt.w	80042c4 <strtod+0x16dc>
 8004054:	980d      	ldr	r0, [sp, #52]	; 0x34
 8004056:	46a3      	mov	fp, r4
 8004058:	4633      	mov	r3, r6
 800405a:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 800405e:	2880      	cmp	r0, #128	; 0x80
 8004060:	f200 8098 	bhi.w	8004194 <strtod+0x15ac>
 8004064:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8004066:	2800      	cmp	r0, #0
 8004068:	f2c0 80a1 	blt.w	80041ae <strtod+0x15c6>
 800406c:	2000      	movs	r0, #0
 800406e:	f84d 0e34 	strt	r0, [sp, #52]
 8004072:	f1b9 0f00 	cmp.w	r9, #0
 8004076:	f84d 0e30 	strt	r0, [sp, #48]
 800407a:	f000 8082 	beq.w	8004182 <strtod+0x159a>
 800407e:	f1ba 0f00 	cmp.w	sl, #0
 8004082:	d019      	beq.n	80040b8 <strtod+0x14d0>
 8004084:	f8da 0004 	ldr.w	r0, [sl, #4]
 8004088:	2808      	cmp	r0, #8
 800408a:	db07      	blt.n	800409c <strtod+0x14b4>
 800408c:	4650      	mov	r0, sl
 800408e:	461c      	mov	r4, r3
 8004090:	f001 f86e 	bl	8005170 <free>
 8004094:	4623      	mov	r3, r4
 8004096:	2b00      	cmp	r3, #0
 8004098:	d110      	bne.n	80040bc <strtod+0x14d4>
 800409a:	e027      	b.n	80040ec <strtod+0x1504>
 800409c:	f640 2104 	movw	r1, #2564	; 0xa04
 80040a0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80040a4:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80040a8:	f84a 2e00 	strt	r2, [sl]
 80040ac:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80040b0:	f841 ae00 	strt	sl, [r1]
 80040b4:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 80040b8:	2b00      	cmp	r3, #0
 80040ba:	d017      	beq.n	80040ec <strtod+0x1504>
 80040bc:	6858      	ldr	r0, [r3, #4]
 80040be:	2808      	cmp	r0, #8
 80040c0:	db06      	blt.n	80040d0 <strtod+0x14e8>
 80040c2:	4618      	mov	r0, r3
 80040c4:	f001 f854 	bl	8005170 <free>
 80040c8:	f1b8 0f00 	cmp.w	r8, #0
 80040cc:	d111      	bne.n	80040f2 <strtod+0x150a>
 80040ce:	e026      	b.n	800411e <strtod+0x1536>
 80040d0:	f640 2104 	movw	r1, #2564	; 0xa04
 80040d4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80040d8:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80040dc:	f843 2e00 	strt	r2, [r3]
 80040e0:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80040e4:	f841 3e00 	strt	r3, [r1]
 80040e8:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 80040ec:	f1b8 0f00 	cmp.w	r8, #0
 80040f0:	d015      	beq.n	800411e <strtod+0x1536>
 80040f2:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80040f6:	2808      	cmp	r0, #8
 80040f8:	db03      	blt.n	8004102 <strtod+0x151a>
 80040fa:	4640      	mov	r0, r8
 80040fc:	f001 f838 	bl	8005170 <free>
 8004100:	e00d      	b.n	800411e <strtod+0x1536>
 8004102:	f640 2104 	movw	r1, #2564	; 0xa04
 8004106:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800410a:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800410e:	f848 2e00 	strt	r2, [r8]
 8004112:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8004116:	f841 8e00 	strt	r8, [r1]
 800411a:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 800411e:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8004122:	2808      	cmp	r0, #8
 8004124:	db06      	blt.n	8004134 <strtod+0x154c>
 8004126:	4648      	mov	r0, r9
 8004128:	f001 f822 	bl	8005170 <free>
 800412c:	f1bb 0f00 	cmp.w	fp, #0
 8004130:	d111      	bne.n	8004156 <strtod+0x156e>
 8004132:	e026      	b.n	8004182 <strtod+0x159a>
 8004134:	f640 2104 	movw	r1, #2564	; 0xa04
 8004138:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800413c:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8004140:	f849 2e00 	strt	r2, [r9]
 8004144:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8004148:	f841 9e00 	strt	r9, [r1]
 800414c:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 8004150:	f1bb 0f00 	cmp.w	fp, #0
 8004154:	d015      	beq.n	8004182 <strtod+0x159a>
 8004156:	f8db 0004 	ldr.w	r0, [fp, #4]
 800415a:	2808      	cmp	r0, #8
 800415c:	db03      	blt.n	8004166 <strtod+0x157e>
 800415e:	4658      	mov	r0, fp
 8004160:	f001 f806 	bl	8005170 <free>
 8004164:	e00d      	b.n	8004182 <strtod+0x159a>
 8004166:	f640 2104 	movw	r1, #2564	; 0xa04
 800416a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800416e:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8004172:	f84b 2e00 	strt	r2, [fp]
 8004176:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 800417a:	f841 be00 	strt	fp, [r1]
 800417e:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 8004182:	f000 ff9f 	bl	80050c4 <__errno>
 8004186:	2122      	movs	r1, #34	; 0x22
 8004188:	f840 1e00 	strt	r1, [r0]
 800418c:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8004190:	f7fe bfd8 	b.w	8003144 <strtod+0x55c>
 8004194:	f64f 7180 	movw	r1, #65408	; 0xff80
 8004198:	4408      	add	r0, r1
 800419a:	217f      	movs	r1, #127	; 0x7f
 800419c:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 80041a0:	4308      	orrs	r0, r1
 80041a2:	f84d 0e34 	strt	r0, [sp, #52]
 80041a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80041aa:	f84d 0e30 	strt	r0, [sp, #48]
 80041ae:	f1ba 0f00 	cmp.w	sl, #0
 80041b2:	d019      	beq.n	80041e8 <strtod+0x1600>
 80041b4:	f8da 0004 	ldr.w	r0, [sl, #4]
 80041b8:	2808      	cmp	r0, #8
 80041ba:	db06      	blt.n	80041ca <strtod+0x15e2>
 80041bc:	4650      	mov	r0, sl
 80041be:	461c      	mov	r4, r3
 80041c0:	f000 ffd6 	bl	8005170 <free>
 80041c4:	4623      	mov	r3, r4
 80041c6:	b983      	cbnz	r3, 80041ea <strtod+0x1602>
 80041c8:	e028      	b.n	800421c <strtod+0x1634>
 80041ca:	f640 2104 	movw	r1, #2564	; 0xa04
 80041ce:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80041d2:	460a      	mov	r2, r1
 80041d4:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80041d8:	f84a 1e00 	strt	r1, [sl]
 80041dc:	eb02 0280 	add.w	r2, r2, r0, lsl #2
 80041e0:	f842 ae00 	strt	sl, [r2]
 80041e4:	eba2 0280 	sub.w	r2, r2, r0, lsl #2
 80041e8:	b1c3      	cbz	r3, 800421c <strtod+0x1634>
 80041ea:	6858      	ldr	r0, [r3, #4]
 80041ec:	2808      	cmp	r0, #8
 80041ee:	db06      	blt.n	80041fe <strtod+0x1616>
 80041f0:	4618      	mov	r0, r3
 80041f2:	f000 ffbd 	bl	8005170 <free>
 80041f6:	f1b8 0f00 	cmp.w	r8, #0
 80041fa:	d112      	bne.n	8004222 <strtod+0x163a>
 80041fc:	e028      	b.n	8004250 <strtod+0x1668>
 80041fe:	f640 2104 	movw	r1, #2564	; 0xa04
 8004202:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004206:	460a      	mov	r2, r1
 8004208:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 800420c:	f843 1e00 	strt	r1, [r3]
 8004210:	eb02 0280 	add.w	r2, r2, r0, lsl #2
 8004214:	f842 3e00 	strt	r3, [r2]
 8004218:	eba2 0280 	sub.w	r2, r2, r0, lsl #2
 800421c:	f1b8 0f00 	cmp.w	r8, #0
 8004220:	d016      	beq.n	8004250 <strtod+0x1668>
 8004222:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8004226:	2808      	cmp	r0, #8
 8004228:	db03      	blt.n	8004232 <strtod+0x164a>
 800422a:	4640      	mov	r0, r8
 800422c:	f000 ffa0 	bl	8005170 <free>
 8004230:	e00e      	b.n	8004250 <strtod+0x1668>
 8004232:	f640 2104 	movw	r1, #2564	; 0xa04
 8004236:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800423a:	460a      	mov	r2, r1
 800423c:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8004240:	f848 1e00 	strt	r1, [r8]
 8004244:	eb02 0280 	add.w	r2, r2, r0, lsl #2
 8004248:	f842 8e00 	strt	r8, [r2]
 800424c:	eba2 0280 	sub.w	r2, r2, r0, lsl #2
 8004250:	f640 2404 	movw	r4, #2564	; 0xa04
 8004254:	f1b9 0f00 	cmp.w	r9, #0
 8004258:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800425c:	d014      	beq.n	8004288 <strtod+0x16a0>
 800425e:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8004262:	2808      	cmp	r0, #8
 8004264:	db06      	blt.n	8004274 <strtod+0x168c>
 8004266:	4648      	mov	r0, r9
 8004268:	f000 ff82 	bl	8005170 <free>
 800426c:	f1bb 0f00 	cmp.w	fp, #0
 8004270:	d10d      	bne.n	800428e <strtod+0x16a6>
 8004272:	e017      	b.n	80042a4 <strtod+0x16bc>
 8004274:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8004278:	f849 1e00 	strt	r1, [r9]
 800427c:	eb04 0480 	add.w	r4, r4, r0, lsl #2
 8004280:	f844 9e00 	strt	r9, [r4]
 8004284:	eba4 0480 	sub.w	r4, r4, r0, lsl #2
 8004288:	f1bb 0f00 	cmp.w	fp, #0
 800428c:	d00a      	beq.n	80042a4 <strtod+0x16bc>
 800428e:	f8db 0004 	ldr.w	r0, [fp, #4]
 8004292:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8004296:	2808      	cmp	r0, #8
 8004298:	db08      	blt.n	80042ac <strtod+0x16c4>
 800429a:	4658      	mov	r0, fp
 800429c:	f000 ff68 	bl	8005170 <free>
 80042a0:	f7fe bf50 	b.w	8003144 <strtod+0x55c>
 80042a4:	f8dd 9004 	ldr.w	r9, [sp, #4]
 80042a8:	f7fe bf4c 	b.w	8003144 <strtod+0x55c>
 80042ac:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 80042b0:	f84b 1e00 	strt	r1, [fp]
 80042b4:	eb04 0480 	add.w	r4, r4, r0, lsl #2
 80042b8:	f844 be00 	strt	fp, [r4]
 80042bc:	eba4 0480 	sub.w	r4, r4, r0, lsl #2
 80042c0:	f7fe bf40 	b.w	8003144 <strtod+0x55c>
 80042c4:	46a3      	mov	fp, r4
 80042c6:	4633      	mov	r3, r6
 80042c8:	f1ba 0f00 	cmp.w	sl, #0
 80042cc:	f47f af72 	bne.w	80041b4 <strtod+0x15cc>
 80042d0:	e78a      	b.n	80041e8 <strtod+0x1600>
 80042d2:	f240 0228 	movw	r2, #40	; 0x28
 80042d6:	f640 2128 	movw	r1, #2600	; 0xa28
 80042da:	2001      	movs	r0, #1
 80042dc:	f84d ae0c 	strt	sl, [sp, #12]
 80042e0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80042e4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80042e8:	fa00 fa05 	lsl.w	sl, r0, r5
 80042ec:	201b      	movs	r0, #27
 80042ee:	6814      	ldr	r4, [r2, #0]
 80042f0:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 80042f4:	1a61      	subs	r1, r4, r1
 80042f6:	10c9      	asrs	r1, r1, #3
 80042f8:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 80042fc:	08c0      	lsrs	r0, r0, #3
 80042fe:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8004302:	f63f ae35 	bhi.w	8003f70 <strtod+0x1388>
 8004306:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 800430a:	f842 0e00 	strt	r0, [r2]
 800430e:	e633      	b.n	8003f78 <strtod+0x1390>

08004310 <d2b>:
 8004310:	b085      	sub	sp, #20
 8004312:	f84d 4e00 	strt	r4, [sp]
 8004316:	f84d 5e04 	strt	r5, [sp, #4]
 800431a:	f84d 6e08 	strt	r6, [sp, #8]
 800431e:	f84d 7e0c 	strt	r7, [sp, #12]
 8004322:	f84d ee10 	strt	lr, [sp, #16]
 8004326:	af03      	add	r7, sp, #12
 8004328:	b083      	sub	sp, #12
 800432a:	f84d 8e00 	strt	r8, [sp]
 800432e:	f84d 9e04 	strt	r9, [sp, #4]
 8004332:	f84d be08 	strt	fp, [sp, #8]
 8004336:	4689      	mov	r9, r1
 8004338:	f640 2104 	movw	r1, #2564	; 0xa04
 800433c:	4606      	mov	r6, r0
 800433e:	4690      	mov	r8, r2
 8004340:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004344:	6848      	ldr	r0, [r1, #4]
 8004346:	b118      	cbz	r0, 8004350 <d2b+0x40>
 8004348:	6802      	ldr	r2, [r0, #0]
 800434a:	f841 2e04 	strt	r2, [r1, #4]
 800434e:	e01d      	b.n	800438c <d2b+0x7c>
 8004350:	f240 0128 	movw	r1, #40	; 0x28
 8004354:	f640 2228 	movw	r2, #2600	; 0xa28
 8004358:	2304      	movs	r3, #4
 800435a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800435e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004362:	6808      	ldr	r0, [r1, #0]
 8004364:	1a82      	subs	r2, r0, r2
 8004366:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 800436a:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 800436e:	d804      	bhi.n	800437a <d2b+0x6a>
 8004370:	f100 0220 	add.w	r2, r0, #32
 8004374:	f841 2e00 	strt	r2, [r1]
 8004378:	e002      	b.n	8004380 <d2b+0x70>
 800437a:	2020      	movs	r0, #32
 800437c:	f000 fef0 	bl	8005160 <malloc>
 8004380:	2101      	movs	r1, #1
 8004382:	2202      	movs	r2, #2
 8004384:	f840 1e04 	strt	r1, [r0, #4]
 8004388:	f840 2e08 	strt	r2, [r0, #8]
 800438c:	2100      	movs	r1, #0
 800438e:	2301      	movs	r3, #1
 8004390:	f840 1e0c 	strt	r1, [r0, #12]
 8004394:	f840 1e10 	strt	r1, [r0, #16]
 8004398:	6872      	ldr	r2, [r6, #4]
 800439a:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
 800439e:	4615      	mov	r5, r2
 80043a0:	f846 1e04 	strt	r1, [r6, #4]
 80043a4:	f363 55df 	bfi	r5, r3, #23, #9
 80043a8:	0dc9      	lsrs	r1, r1, #23
 80043aa:	6836      	ldr	r6, [r6, #0]
 80043ac:	b146      	cbz	r6, 80043c0 <d2b+0xb0>
 80043ae:	0772      	lsls	r2, r6, #29
 80043b0:	d00f      	beq.n	80043d2 <d2b+0xc2>
 80043b2:	07f2      	lsls	r2, r6, #31
 80043b4:	d133      	bne.n	800441e <d2b+0x10e>
 80043b6:	07b2      	lsls	r2, r6, #30
 80043b8:	d45d      	bmi.n	8004476 <d2b+0x166>
 80043ba:	08b4      	lsrs	r4, r6, #2
 80043bc:	2302      	movs	r3, #2
 80043be:	e06a      	b.n	8004496 <d2b+0x186>
 80043c0:	0753      	lsls	r3, r2, #29
 80043c2:	d031      	beq.n	8004428 <d2b+0x118>
 80043c4:	07d3      	lsls	r3, r2, #31
 80043c6:	d154      	bne.n	8004472 <d2b+0x162>
 80043c8:	0792      	lsls	r2, r2, #30
 80043ca:	d459      	bmi.n	8004480 <d2b+0x170>
 80043cc:	08ad      	lsrs	r5, r5, #2
 80043ce:	2302      	movs	r3, #2
 80043d0:	e058      	b.n	8004484 <d2b+0x174>
 80043d2:	b2b2      	uxth	r2, r6
 80043d4:	4634      	mov	r4, r6
 80043d6:	2300      	movs	r3, #0
 80043d8:	f04f 0c00 	mov.w	ip, #0
 80043dc:	2a00      	cmp	r2, #0
 80043de:	bf08      	it	eq
 80043e0:	0c24      	lsreq	r4, r4, #16
 80043e2:	bf08      	it	eq
 80043e4:	2310      	moveq	r3, #16
 80043e6:	b2e2      	uxtb	r2, r4
 80043e8:	2a00      	cmp	r2, #0
 80043ea:	bf04      	itt	eq
 80043ec:	f043 0308 	orreq.w	r3, r3, #8
 80043f0:	0a24      	lsreq	r4, r4, #8
 80043f2:	f014 020f 	ands.w	r2, r4, #15
 80043f6:	bf04      	itt	eq
 80043f8:	f043 0304 	orreq.w	r3, r3, #4
 80043fc:	0924      	lsreq	r4, r4, #4
 80043fe:	f014 0203 	ands.w	r2, r4, #3
 8004402:	bf04      	itt	eq
 8004404:	f043 0302 	orreq.w	r3, r3, #2
 8004408:	08a4      	lsreq	r4, r4, #2
 800440a:	f014 0f01 	tst.w	r4, #1
 800440e:	d104      	bne.n	800441a <d2b+0x10a>
 8004410:	ebbc 0f54 	cmp.w	ip, r4, lsr #1
 8004414:	d03d      	beq.n	8004492 <d2b+0x182>
 8004416:	0864      	lsrs	r4, r4, #1
 8004418:	3301      	adds	r3, #1
 800441a:	bbe3      	cbnz	r3, 8004496 <d2b+0x186>
 800441c:	e000      	b.n	8004420 <d2b+0x110>
 800441e:	4634      	mov	r4, r6
 8004420:	f840 4e14 	strt	r4, [r0, #20]
 8004424:	2300      	movs	r3, #0
 8004426:	e03e      	b.n	80044a6 <d2b+0x196>
 8004428:	b292      	uxth	r2, r2
 800442a:	2300      	movs	r3, #0
 800442c:	2600      	movs	r6, #0
 800442e:	2a00      	cmp	r2, #0
 8004430:	462a      	mov	r2, r5
 8004432:	bf08      	it	eq
 8004434:	0c12      	lsreq	r2, r2, #16
 8004436:	bf08      	it	eq
 8004438:	2310      	moveq	r3, #16
 800443a:	b2d4      	uxtb	r4, r2
 800443c:	2c00      	cmp	r4, #0
 800443e:	bf04      	itt	eq
 8004440:	f043 0308 	orreq.w	r3, r3, #8
 8004444:	0a12      	lsreq	r2, r2, #8
 8004446:	f012 040f 	ands.w	r4, r2, #15
 800444a:	bf04      	itt	eq
 800444c:	f043 0304 	orreq.w	r3, r3, #4
 8004450:	0912      	lsreq	r2, r2, #4
 8004452:	f012 0403 	ands.w	r4, r2, #3
 8004456:	bf04      	itt	eq
 8004458:	f043 0302 	orreq.w	r3, r3, #2
 800445c:	0892      	lsreq	r2, r2, #2
 800445e:	f012 0f01 	tst.w	r2, #1
 8004462:	d10b      	bne.n	800447c <d2b+0x16c>
 8004464:	ebb6 0f52 	cmp.w	r6, r2, lsr #1
 8004468:	bf1a      	itte	ne
 800446a:	0855      	lsrne	r5, r2, #1
 800446c:	3301      	addne	r3, #1
 800446e:	2320      	moveq	r3, #32
 8004470:	e008      	b.n	8004484 <d2b+0x174>
 8004472:	2300      	movs	r3, #0
 8004474:	e006      	b.n	8004484 <d2b+0x174>
 8004476:	0874      	lsrs	r4, r6, #1
 8004478:	2301      	movs	r3, #1
 800447a:	e00c      	b.n	8004496 <d2b+0x186>
 800447c:	4615      	mov	r5, r2
 800447e:	e001      	b.n	8004484 <d2b+0x174>
 8004480:	086d      	lsrs	r5, r5, #1
 8004482:	2301      	movs	r3, #1
 8004484:	2201      	movs	r2, #1
 8004486:	3320      	adds	r3, #32
 8004488:	f840 2e10 	strt	r2, [r0, #16]
 800448c:	f840 5e14 	strt	r5, [r0, #20]
 8004490:	e011      	b.n	80044b6 <d2b+0x1a6>
 8004492:	2320      	movs	r3, #32
 8004494:	4634      	mov	r4, r6
 8004496:	f1c3 0220 	rsb	r2, r3, #32
 800449a:	fa05 f202 	lsl.w	r2, r5, r2
 800449e:	40dd      	lsrs	r5, r3
 80044a0:	4322      	orrs	r2, r4
 80044a2:	f840 2e14 	strt	r2, [r0, #20]
 80044a6:	2201      	movs	r2, #1
 80044a8:	2d00      	cmp	r5, #0
 80044aa:	f840 5e18 	strt	r5, [r0, #24]
 80044ae:	bf18      	it	ne
 80044b0:	2202      	movne	r2, #2
 80044b2:	f840 2e10 	strt	r2, [r0, #16]
 80044b6:	4419      	add	r1, r3
 80044b8:	39b8      	subs	r1, #184	; 0xb8
 80044ba:	f849 1e00 	strt	r1, [r9]
 80044be:	f1c3 0138 	rsb	r1, r3, #56	; 0x38
 80044c2:	f848 1e00 	strt	r1, [r8]
 80044c6:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80044ca:	bdf0      	pop	{r4, r5, r6, r7, pc}

080044cc <pow5mult>:
 80044cc:	b085      	sub	sp, #20
 80044ce:	f84d 4e00 	strt	r4, [sp]
 80044d2:	f84d 5e04 	strt	r5, [sp, #4]
 80044d6:	f84d 6e08 	strt	r6, [sp, #8]
 80044da:	f84d 7e0c 	strt	r7, [sp, #12]
 80044de:	f84d ee10 	strt	lr, [sp, #16]
 80044e2:	af03      	add	r7, sp, #12
 80044e4:	b084      	sub	sp, #16
 80044e6:	f84d 8e00 	strt	r8, [sp]
 80044ea:	f84d 9e04 	strt	r9, [sp, #4]
 80044ee:	f84d ae08 	strt	sl, [sp, #8]
 80044f2:	f84d be0c 	strt	fp, [sp, #12]
 80044f6:	b081      	sub	sp, #4
 80044f8:	4688      	mov	r8, r1
 80044fa:	4683      	mov	fp, r0
 80044fc:	f018 0003 	ands.w	r0, r8, #3
 8004500:	d025      	beq.n	800454e <pow5mult+0x82>
 8004502:	f24a 1168 	movw	r1, #41320	; 0xa168
 8004506:	f8db 9010 	ldr.w	r9, [fp, #16]
 800450a:	2500      	movs	r5, #0
 800450c:	2300      	movs	r3, #0
 800450e:	2200      	movs	r2, #0
 8004510:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004514:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8004518:	f850 cc04 	ldr.w	ip, [r0, #-4]
 800451c:	ea4f 7eec 	mov.w	lr, ip, asr #31
 8004520:	eb0b 0482 	add.w	r4, fp, r2, lsl #2
 8004524:	3201      	adds	r2, #1
 8004526:	6966      	ldr	r6, [r4, #20]
 8004528:	fba6 010c 	umull	r0, r1, r6, ip
 800452c:	1940      	adds	r0, r0, r5
 800452e:	f844 0e14 	strt	r0, [r4, #20]
 8004532:	fb06 100e 	mla	r0, r6, lr, r1
 8004536:	eb40 0503 	adc.w	r5, r0, r3
 800453a:	2300      	movs	r3, #0
 800453c:	454a      	cmp	r2, r9
 800453e:	dbef      	blt.n	8004520 <pow5mult+0x54>
 8004540:	b12d      	cbz	r5, 800454e <pow5mult+0x82>
 8004542:	f8db 0008 	ldr.w	r0, [fp, #8]
 8004546:	4581      	cmp	r9, r0
 8004548:	da03      	bge.n	8004552 <pow5mult+0x86>
 800454a:	46da      	mov	sl, fp
 800454c:	e04f      	b.n	80045ee <pow5mult+0x122>
 800454e:	46da      	mov	sl, fp
 8004550:	e055      	b.n	80045fe <pow5mult+0x132>
 8004552:	f8db 0004 	ldr.w	r0, [fp, #4]
 8004556:	1c44      	adds	r4, r0, #1
 8004558:	2c07      	cmp	r4, #7
 800455a:	dc12      	bgt.n	8004582 <pow5mult+0xb6>
 800455c:	f640 2004 	movw	r0, #2564	; 0xa04
 8004560:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004564:	f850 a024 	ldr.w	sl, [r0, r4, lsl #2]
 8004568:	f1ba 0f00 	cmp.w	sl, #0
 800456c:	f000 80c3 	beq.w	80046f6 <pow5mult+0x22a>
 8004570:	f8da 1000 	ldr.w	r1, [sl]
 8004574:	eb00 0084 	add.w	r0, r0, r4, lsl #2
 8004578:	f840 1e00 	strt	r1, [r0]
 800457c:	eba0 0084 	sub.w	r0, r0, r4, lsl #2
 8004580:	e00e      	b.n	80045a0 <pow5mult+0xd4>
 8004582:	2001      	movs	r0, #1
 8004584:	fa00 f604 	lsl.w	r6, r0, r4
 8004588:	201b      	movs	r0, #27
 800458a:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 800458e:	08c0      	lsrs	r0, r0, #3
 8004590:	00c0      	lsls	r0, r0, #3
 8004592:	f000 fde5 	bl	8005160 <malloc>
 8004596:	4682      	mov	sl, r0
 8004598:	f84a 4e04 	strt	r4, [sl, #4]
 800459c:	f84a 6e08 	strt	r6, [sl, #8]
 80045a0:	2100      	movs	r1, #0
 80045a2:	4650      	mov	r0, sl
 80045a4:	2208      	movs	r2, #8
 80045a6:	f84a 1e10 	strt	r1, [sl, #16]
 80045aa:	bfe8      	it	al
 80045ac:	300c      	addal	r0, #12
 80045ae:	f840 1e00 	strt	r1, [r0]
 80045b2:	f8db 1010 	ldr.w	r1, [fp, #16]
 80045b6:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 80045ba:	f10b 010c 	add.w	r1, fp, #12
 80045be:	f000 fd7f 	bl	80050c0 <__aeabi_memcpy>
 80045c2:	f8db 0004 	ldr.w	r0, [fp, #4]
 80045c6:	2808      	cmp	r0, #8
 80045c8:	db03      	blt.n	80045d2 <pow5mult+0x106>
 80045ca:	4658      	mov	r0, fp
 80045cc:	f000 fdd0 	bl	8005170 <free>
 80045d0:	e00d      	b.n	80045ee <pow5mult+0x122>
 80045d2:	f640 2104 	movw	r1, #2564	; 0xa04
 80045d6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80045da:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80045de:	f84b 2e00 	strt	r2, [fp]
 80045e2:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 80045e6:	f841 be00 	strt	fp, [r1]
 80045ea:	eba1 0180 	sub.w	r1, r1, r0, lsl #2
 80045ee:	eb0a 0089 	add.w	r0, sl, r9, lsl #2
 80045f2:	f840 5e14 	strt	r5, [r0, #20]
 80045f6:	f109 0001 	add.w	r0, r9, #1
 80045fa:	f84a 0e10 	strt	r0, [sl, #16]
 80045fe:	2000      	movs	r0, #0
 8004600:	ebb0 0fa8 	cmp.w	r0, r8, asr #2
 8004604:	d072      	beq.n	80046ec <pow5mult+0x220>
 8004606:	f241 3528 	movw	r5, #4904	; 0x1328
 800460a:	ea4f 04a8 	mov.w	r4, r8, asr #2
 800460e:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8004612:	6828      	ldr	r0, [r5, #0]
 8004614:	bba8      	cbnz	r0, 8004682 <pow5mult+0x1b6>
 8004616:	f640 2104 	movw	r1, #2564	; 0xa04
 800461a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800461e:	6848      	ldr	r0, [r1, #4]
 8004620:	b118      	cbz	r0, 800462a <pow5mult+0x15e>
 8004622:	6802      	ldr	r2, [r0, #0]
 8004624:	f841 2e04 	strt	r2, [r1, #4]
 8004628:	e01d      	b.n	8004666 <pow5mult+0x19a>
 800462a:	f240 0128 	movw	r1, #40	; 0x28
 800462e:	f640 2228 	movw	r2, #2600	; 0xa28
 8004632:	2304      	movs	r3, #4
 8004634:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004638:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800463c:	6808      	ldr	r0, [r1, #0]
 800463e:	1a82      	subs	r2, r0, r2
 8004640:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8004644:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8004648:	d804      	bhi.n	8004654 <pow5mult+0x188>
 800464a:	f100 0220 	add.w	r2, r0, #32
 800464e:	f841 2e00 	strt	r2, [r1]
 8004652:	e002      	b.n	800465a <pow5mult+0x18e>
 8004654:	2020      	movs	r0, #32
 8004656:	f000 fd83 	bl	8005160 <malloc>
 800465a:	2101      	movs	r1, #1
 800465c:	2202      	movs	r2, #2
 800465e:	f840 1e04 	strt	r1, [r0, #4]
 8004662:	f840 2e08 	strt	r2, [r0, #8]
 8004666:	2100      	movs	r1, #0
 8004668:	2301      	movs	r3, #1
 800466a:	f240 2271 	movw	r2, #625	; 0x271
 800466e:	f840 1e0c 	strt	r1, [r0, #12]
 8004672:	f840 3e10 	strt	r3, [r0, #16]
 8004676:	f840 2e14 	strt	r2, [r0, #20]
 800467a:	f845 0e00 	strt	r0, [r5]
 800467e:	f840 1e00 	strt	r1, [r0]
 8004682:	f640 2904 	movw	r9, #2564	; 0xa04
 8004686:	f04f 0800 	mov.w	r8, #0
 800468a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 800468e:	e007      	b.n	80046a0 <pow5mult+0x1d4>
 8004690:	4628      	mov	r0, r5
 8004692:	4629      	mov	r1, r5
 8004694:	f000 f84e 	bl	8004734 <mult>
 8004698:	f845 0e00 	strt	r0, [r5]
 800469c:	f840 8e00 	strt	r8, [r0]
 80046a0:	4605      	mov	r5, r0
 80046a2:	07e0      	lsls	r0, r4, #31
 80046a4:	d01a      	beq.n	80046dc <pow5mult+0x210>
 80046a6:	4650      	mov	r0, sl
 80046a8:	4629      	mov	r1, r5
 80046aa:	f000 f843 	bl	8004734 <mult>
 80046ae:	4606      	mov	r6, r0
 80046b0:	f1ba 0f00 	cmp.w	sl, #0
 80046b4:	d011      	beq.n	80046da <pow5mult+0x20e>
 80046b6:	f8da 0004 	ldr.w	r0, [sl, #4]
 80046ba:	2808      	cmp	r0, #8
 80046bc:	db03      	blt.n	80046c6 <pow5mult+0x1fa>
 80046be:	4650      	mov	r0, sl
 80046c0:	f000 fd56 	bl	8005170 <free>
 80046c4:	e009      	b.n	80046da <pow5mult+0x20e>
 80046c6:	f859 1020 	ldr.w	r1, [r9, r0, lsl #2]
 80046ca:	f84a 1e00 	strt	r1, [sl]
 80046ce:	eb09 0980 	add.w	r9, r9, r0, lsl #2
 80046d2:	f849 ae00 	strt	sl, [r9]
 80046d6:	eba9 0980 	sub.w	r9, r9, r0, lsl #2
 80046da:	46b2      	mov	sl, r6
 80046dc:	ebb8 0f64 	cmp.w	r8, r4, asr #1
 80046e0:	d004      	beq.n	80046ec <pow5mult+0x220>
 80046e2:	6828      	ldr	r0, [r5, #0]
 80046e4:	1064      	asrs	r4, r4, #1
 80046e6:	2800      	cmp	r0, #0
 80046e8:	d1da      	bne.n	80046a0 <pow5mult+0x1d4>
 80046ea:	e7d1      	b.n	8004690 <pow5mult+0x1c4>
 80046ec:	4650      	mov	r0, sl
 80046ee:	b001      	add	sp, #4
 80046f0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80046f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80046f6:	f240 0128 	movw	r1, #40	; 0x28
 80046fa:	f640 2228 	movw	r2, #2600	; 0xa28
 80046fe:	2001      	movs	r0, #1
 8004700:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004704:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004708:	fa00 f604 	lsl.w	r6, r0, r4
 800470c:	201b      	movs	r0, #27
 800470e:	f8d1 a000 	ldr.w	sl, [r1]
 8004712:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 8004716:	ebaa 0202 	sub.w	r2, sl, r2
 800471a:	10d2      	asrs	r2, r2, #3
 800471c:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 8004720:	08c0      	lsrs	r0, r0, #3
 8004722:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8004726:	f63f af33 	bhi.w	8004590 <pow5mult+0xc4>
 800472a:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 800472e:	f841 0e00 	strt	r0, [r1]
 8004732:	e731      	b.n	8004598 <pow5mult+0xcc>

08004734 <mult>:
 8004734:	b085      	sub	sp, #20
 8004736:	f84d 4e00 	strt	r4, [sp]
 800473a:	f84d 5e04 	strt	r5, [sp, #4]
 800473e:	f84d 6e08 	strt	r6, [sp, #8]
 8004742:	f84d 7e0c 	strt	r7, [sp, #12]
 8004746:	f84d ee10 	strt	lr, [sp, #16]
 800474a:	af03      	add	r7, sp, #12
 800474c:	b084      	sub	sp, #16
 800474e:	f84d 8e00 	strt	r8, [sp]
 8004752:	f84d 9e04 	strt	r9, [sp, #4]
 8004756:	f84d ae08 	strt	sl, [sp, #8]
 800475a:	f84d be0c 	strt	fp, [sp, #12]
 800475e:	b083      	sub	sp, #12
 8004760:	690b      	ldr	r3, [r1, #16]
 8004762:	6902      	ldr	r2, [r0, #16]
 8004764:	4605      	mov	r5, r0
 8004766:	429a      	cmp	r2, r3
 8004768:	bfb8      	it	lt
 800476a:	460d      	movlt	r5, r1
 800476c:	e9d5 6301 	ldrd	r6, r3, [r5, #4]
 8004770:	692c      	ldr	r4, [r5, #16]
 8004772:	bfb8      	it	lt
 8004774:	4601      	movlt	r1, r0
 8004776:	f8d1 b010 	ldr.w	fp, [r1, #16]
 800477a:	eb0b 0204 	add.w	r2, fp, r4
 800477e:	429a      	cmp	r2, r3
 8004780:	bfc8      	it	gt
 8004782:	3601      	addgt	r6, #1
 8004784:	f84d 1e04 	strt	r1, [sp, #4]
 8004788:	f84d 2e08 	strt	r2, [sp, #8]
 800478c:	2e07      	cmp	r6, #7
 800478e:	dc12      	bgt.n	80047b6 <mult+0x82>
 8004790:	f640 2004 	movw	r0, #2564	; 0xa04
 8004794:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004798:	f850 a026 	ldr.w	sl, [r0, r6, lsl #2]
 800479c:	f1ba 0f00 	cmp.w	sl, #0
 80047a0:	f000 808c 	beq.w	80048bc <mult+0x188>
 80047a4:	f8da 1000 	ldr.w	r1, [sl]
 80047a8:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 80047ac:	f840 1e00 	strt	r1, [r0]
 80047b0:	eba0 0086 	sub.w	r0, r0, r6, lsl #2
 80047b4:	e00f      	b.n	80047d6 <mult+0xa2>
 80047b6:	2001      	movs	r0, #1
 80047b8:	fa00 f806 	lsl.w	r8, r0, r6
 80047bc:	201b      	movs	r0, #27
 80047be:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80047c2:	08c0      	lsrs	r0, r0, #3
 80047c4:	00c0      	lsls	r0, r0, #3
 80047c6:	f000 fccb 	bl	8005160 <malloc>
 80047ca:	4682      	mov	sl, r0
 80047cc:	f84a 6e04 	strt	r6, [sl, #4]
 80047d0:	f84a 8e08 	strt	r8, [sl, #8]
 80047d4:	9a02      	ldr	r2, [sp, #8]
 80047d6:	2000      	movs	r0, #0
 80047d8:	f10a 0914 	add.w	r9, sl, #20
 80047dc:	2a01      	cmp	r2, #1
 80047de:	f84a 0e0c 	strt	r0, [sl, #12]
 80047e2:	f84a 0e10 	strt	r0, [sl, #16]
 80047e6:	db12      	blt.n	800480e <mult+0xda>
 80047e8:	eb0a 0182 	add.w	r1, sl, r2, lsl #2
 80047ec:	f10a 0218 	add.w	r2, sl, #24
 80047f0:	f06f 0014 	mvn.w	r0, #20
 80047f4:	3114      	adds	r1, #20
 80047f6:	eba0 000a 	sub.w	r0, r0, sl
 80047fa:	4291      	cmp	r1, r2
 80047fc:	bf88      	it	hi
 80047fe:	460a      	movhi	r2, r1
 8004800:	4410      	add	r0, r2
 8004802:	3004      	adds	r0, #4
 8004804:	f020 0103 	bic.w	r1, r0, #3
 8004808:	4648      	mov	r0, r9
 800480a:	f000 fc55 	bl	80050b8 <__aeabi_memclr>
 800480e:	f1bb 0f01 	cmp.w	fp, #1
 8004812:	db3d      	blt.n	8004890 <mult+0x15c>
 8004814:	9901      	ldr	r1, [sp, #4]
 8004816:	f105 0218 	add.w	r2, r5, #24
 800481a:	f105 0314 	add.w	r3, r5, #20
 800481e:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 8004822:	f101 0e14 	add.w	lr, r1, #20
 8004826:	f100 0c14 	add.w	ip, r0, #20
 800482a:	eb05 0084 	add.w	r0, r5, r4, lsl #2
 800482e:	f100 0814 	add.w	r8, r0, #20
 8004832:	f06f 0014 	mvn.w	r0, #20
 8004836:	4590      	cmp	r8, r2
 8004838:	eba0 0005 	sub.w	r0, r0, r5
 800483c:	bf88      	it	hi
 800483e:	4642      	movhi	r2, r8
 8004840:	4410      	add	r0, r2
 8004842:	f020 0003 	bic.w	r0, r0, #3
 8004846:	4450      	add	r0, sl
 8004848:	f100 0b18 	add.w	fp, r0, #24
 800484c:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004850:	2c00      	cmp	r4, #0
 8004852:	d017      	beq.n	8004884 <mult+0x150>
 8004854:	2000      	movs	r0, #0
 8004856:	2500      	movs	r5, #0
 8004858:	2200      	movs	r2, #0
 800485a:	f859 6000 	ldr.w	r6, [r9, r0]
 800485e:	5819      	ldr	r1, [r3, r0]
 8004860:	1976      	adds	r6, r6, r5
 8004862:	f142 0500 	adc.w	r5, r2, #0
 8004866:	2200      	movs	r2, #0
 8004868:	fbe1 6504 	umlal	r6, r5, r1, r4
 800486c:	eb09 0900 	add.w	r9, r9, r0
 8004870:	f849 6e00 	strt	r6, [r9]
 8004874:	eba9 0900 	sub.w	r9, r9, r0
 8004878:	3004      	adds	r0, #4
 800487a:	1819      	adds	r1, r3, r0
 800487c:	4541      	cmp	r1, r8
 800487e:	d3ec      	bcc.n	800485a <mult+0x126>
 8004880:	f84b 5e00 	strt	r5, [fp]
 8004884:	f10b 0b04 	add.w	fp, fp, #4
 8004888:	f109 0904 	add.w	r9, r9, #4
 800488c:	45e6      	cmp	lr, ip
 800488e:	d3dd      	bcc.n	800484c <mult+0x118>
 8004890:	9802      	ldr	r0, [sp, #8]
 8004892:	2801      	cmp	r0, #1
 8004894:	db0b      	blt.n	80048ae <mult+0x17a>
 8004896:	3004      	adds	r0, #4
 8004898:	f85a 1020 	ldr.w	r1, [sl, r0, lsl #2]
 800489c:	b931      	cbnz	r1, 80048ac <mult+0x178>
 800489e:	1e41      	subs	r1, r0, #1
 80048a0:	3804      	subs	r0, #4
 80048a2:	2801      	cmp	r0, #1
 80048a4:	4608      	mov	r0, r1
 80048a6:	dcf7      	bgt.n	8004898 <mult+0x164>
 80048a8:	1f08      	subs	r0, r1, #4
 80048aa:	e000      	b.n	80048ae <mult+0x17a>
 80048ac:	3804      	subs	r0, #4
 80048ae:	f84a 0e10 	strt	r0, [sl, #16]
 80048b2:	4650      	mov	r0, sl
 80048b4:	b003      	add	sp, #12
 80048b6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80048ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80048bc:	f240 0328 	movw	r3, #40	; 0x28
 80048c0:	f640 2228 	movw	r2, #2600	; 0xa28
 80048c4:	2001      	movs	r0, #1
 80048c6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80048ca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80048ce:	fa00 f806 	lsl.w	r8, r0, r6
 80048d2:	201b      	movs	r0, #27
 80048d4:	f8d3 a000 	ldr.w	sl, [r3]
 80048d8:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80048dc:	ebaa 0202 	sub.w	r2, sl, r2
 80048e0:	10d2      	asrs	r2, r2, #3
 80048e2:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80048e6:	08c0      	lsrs	r0, r0, #3
 80048e8:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80048ec:	f63f af6a 	bhi.w	80047c4 <mult+0x90>
 80048f0:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 80048f4:	f843 0e00 	strt	r0, [r3]
 80048f8:	e768      	b.n	80047cc <mult+0x98>

080048fa <diff>:
 80048fa:	b085      	sub	sp, #20
 80048fc:	f84d 4e00 	strt	r4, [sp]
 8004900:	f84d 5e04 	strt	r5, [sp, #4]
 8004904:	f84d 6e08 	strt	r6, [sp, #8]
 8004908:	f84d 7e0c 	strt	r7, [sp, #12]
 800490c:	f84d ee10 	strt	lr, [sp, #16]
 8004910:	af03      	add	r7, sp, #12
 8004912:	b084      	sub	sp, #16
 8004914:	f84d 8e00 	strt	r8, [sp]
 8004918:	f84d 9e04 	strt	r9, [sp, #4]
 800491c:	f84d ae08 	strt	sl, [sp, #8]
 8004920:	f84d be0c 	strt	fp, [sp, #12]
 8004924:	b081      	sub	sp, #4
 8004926:	460d      	mov	r5, r1
 8004928:	4682      	mov	sl, r0
 800492a:	f000 f8e3 	bl	8004af4 <cmp>
 800492e:	2800      	cmp	r0, #0
 8004930:	d01a      	beq.n	8004968 <diff+0x6e>
 8004932:	46ab      	mov	fp, r5
 8004934:	ea4f 78d0 	mov.w	r8, r0, lsr #31
 8004938:	bfbc      	itt	lt
 800493a:	46d3      	movlt	fp, sl
 800493c:	46aa      	movlt	sl, r5
 800493e:	f8da 5004 	ldr.w	r5, [sl, #4]
 8004942:	2d07      	cmp	r5, #7
 8004944:	dc1b      	bgt.n	800497e <diff+0x84>
 8004946:	f640 2104 	movw	r1, #2564	; 0xa04
 800494a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800494e:	f851 0025 	ldr.w	r0, [r1, r5, lsl #2]
 8004952:	2800      	cmp	r0, #0
 8004954:	f000 809c 	beq.w	8004a90 <diff+0x196>
 8004958:	6802      	ldr	r2, [r0, #0]
 800495a:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 800495e:	f841 2e00 	strt	r2, [r1]
 8004962:	eba1 0185 	sub.w	r1, r1, r5, lsl #2
 8004966:	e018      	b.n	800499a <diff+0xa0>
 8004968:	f640 2104 	movw	r1, #2564	; 0xa04
 800496c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004970:	6808      	ldr	r0, [r1, #0]
 8004972:	2800      	cmp	r0, #0
 8004974:	d077      	beq.n	8004a66 <diff+0x16c>
 8004976:	6802      	ldr	r2, [r0, #0]
 8004978:	f841 2e00 	strt	r2, [r1]
 800497c:	e0ae      	b.n	8004adc <diff+0x1e2>
 800497e:	2001      	movs	r0, #1
 8004980:	fa00 f905 	lsl.w	r9, r0, r5
 8004984:	201b      	movs	r0, #27
 8004986:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 800498a:	08c1      	lsrs	r1, r0, #3
 800498c:	00c8      	lsls	r0, r1, #3
 800498e:	f000 fbe7 	bl	8005160 <malloc>
 8004992:	f840 5e04 	strt	r5, [r0, #4]
 8004996:	f840 9e08 	strt	r9, [r0, #8]
 800499a:	2100      	movs	r1, #0
 800499c:	f10b 0518 	add.w	r5, fp, #24
 80049a0:	f06f 0214 	mvn.w	r2, #20
 80049a4:	2414      	movs	r4, #20
 80049a6:	f840 8e0c 	strt	r8, [r0, #12]
 80049aa:	f840 1e10 	strt	r1, [r0, #16]
 80049ae:	eba2 020b 	sub.w	r2, r2, fp
 80049b2:	f8db 3010 	ldr.w	r3, [fp, #16]
 80049b6:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
 80049ba:	f103 0814 	add.w	r8, r3, #20
 80049be:	45a8      	cmp	r8, r5
 80049c0:	bf88      	it	hi
 80049c2:	4645      	movhi	r5, r8
 80049c4:	f8da e010 	ldr.w	lr, [sl, #16]
 80049c8:	442a      	add	r2, r5
 80049ca:	f022 0203 	bic.w	r2, r2, #3
 80049ce:	1885      	adds	r5, r0, r2
 80049d0:	4452      	add	r2, sl
 80049d2:	f105 0c18 	add.w	ip, r5, #24
 80049d6:	f102 0518 	add.w	r5, r2, #24
 80049da:	2200      	movs	r2, #0
 80049dc:	f85b 6004 	ldr.w	r6, [fp, r4]
 80049e0:	f85a 3004 	ldr.w	r3, [sl, r4]
 80049e4:	1b9b      	subs	r3, r3, r6
 80049e6:	f161 0600 	sbc.w	r6, r1, #0
 80049ea:	1a9a      	subs	r2, r3, r2
 80049ec:	bfe8      	it	al
 80049ee:	1900      	addal	r0, r0, r4
 80049f0:	f840 2e00 	strt	r2, [r0]
 80049f4:	bfe8      	it	al
 80049f6:	1b00      	subal	r0, r0, r4
 80049f8:	f104 0404 	add.w	r4, r4, #4
 80049fc:	eb66 0201 	sbc.w	r2, r6, r1
 8004a00:	eb0b 0304 	add.w	r3, fp, r4
 8004a04:	f002 0201 	and.w	r2, r2, #1
 8004a08:	4543      	cmp	r3, r8
 8004a0a:	d3e7      	bcc.n	80049dc <diff+0xe2>
 8004a0c:	eb0a 038e 	add.w	r3, sl, lr, lsl #2
 8004a10:	3314      	adds	r3, #20
 8004a12:	429d      	cmp	r5, r3
 8004a14:	d21b      	bcs.n	8004a4e <diff+0x154>
 8004a16:	2413      	movs	r4, #19
 8004a18:	2601      	movs	r6, #1
 8004a1a:	eb04 048e 	add.w	r4, r4, lr, lsl #2
 8004a1e:	1b64      	subs	r4, r4, r5
 8004a20:	4454      	add	r4, sl
 8004a22:	eb06 0894 	add.w	r8, r6, r4, lsr #2
 8004a26:	4666      	mov	r6, ip
 8004a28:	f855 4b04 	ldr.w	r4, [r5], #4
 8004a2c:	1aa2      	subs	r2, r4, r2
 8004a2e:	f846 2e00 	strt	r2, [r6]
 8004a32:	bfe8      	it	al
 8004a34:	3604      	addal	r6, #4
 8004a36:	f04f 0200 	mov.w	r2, #0
 8004a3a:	eb62 0101 	sbc.w	r1, r2, r1
 8004a3e:	429d      	cmp	r5, r3
 8004a40:	f001 0201 	and.w	r2, r1, #1
 8004a44:	f04f 0100 	mov.w	r1, #0
 8004a48:	d3ee      	bcc.n	8004a28 <diff+0x12e>
 8004a4a:	eb0c 0c88 	add.w	ip, ip, r8, lsl #2
 8004a4e:	f1ac 0204 	sub.w	r2, ip, #4
 8004a52:	f10e 0101 	add.w	r1, lr, #1
 8004a56:	f852 3904 	ldr.w	r3, [r2], #-4
 8004a5a:	3901      	subs	r1, #1
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	d0fa      	beq.n	8004a56 <diff+0x15c>
 8004a60:	f840 1e10 	strt	r1, [r0, #16]
 8004a64:	e042      	b.n	8004aec <diff+0x1f2>
 8004a66:	f240 0128 	movw	r1, #40	; 0x28
 8004a6a:	f640 2228 	movw	r2, #2600	; 0xa28
 8004a6e:	2303      	movs	r3, #3
 8004a70:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004a74:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004a78:	6808      	ldr	r0, [r1, #0]
 8004a7a:	1a82      	subs	r2, r0, r2
 8004a7c:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8004a80:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8004a84:	d821      	bhi.n	8004aca <diff+0x1d0>
 8004a86:	f100 0218 	add.w	r2, r0, #24
 8004a8a:	f841 2e00 	strt	r2, [r1]
 8004a8e:	e01f      	b.n	8004ad0 <diff+0x1d6>
 8004a90:	f240 0228 	movw	r2, #40	; 0x28
 8004a94:	2001      	movs	r0, #1
 8004a96:	f640 2328 	movw	r3, #2600	; 0xa28
 8004a9a:	fa00 f905 	lsl.w	r9, r0, r5
 8004a9e:	201b      	movs	r0, #27
 8004aa0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004aa4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004aa8:	eb00 0189 	add.w	r1, r0, r9, lsl #2
 8004aac:	6810      	ldr	r0, [r2, #0]
 8004aae:	1ac3      	subs	r3, r0, r3
 8004ab0:	10db      	asrs	r3, r3, #3
 8004ab2:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 8004ab6:	08c9      	lsrs	r1, r1, #3
 8004ab8:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 8004abc:	f63f af66 	bhi.w	800498c <diff+0x92>
 8004ac0:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 8004ac4:	f842 1e00 	strt	r1, [r2]
 8004ac8:	e763      	b.n	8004992 <diff+0x98>
 8004aca:	2018      	movs	r0, #24
 8004acc:	f000 fb48 	bl	8005160 <malloc>
 8004ad0:	2100      	movs	r1, #0
 8004ad2:	2201      	movs	r2, #1
 8004ad4:	f840 1e04 	strt	r1, [r0, #4]
 8004ad8:	f840 2e08 	strt	r2, [r0, #8]
 8004adc:	2100      	movs	r1, #0
 8004ade:	2201      	movs	r2, #1
 8004ae0:	f840 1e0c 	strt	r1, [r0, #12]
 8004ae4:	f840 2e10 	strt	r2, [r0, #16]
 8004ae8:	f840 1e14 	strt	r1, [r0, #20]
 8004aec:	b001      	add	sp, #4
 8004aee:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8004af2:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004af4 <cmp>:
 8004af4:	b082      	sub	sp, #8
 8004af6:	f84d 7e00 	strt	r7, [sp]
 8004afa:	f84d ee04 	strt	lr, [sp, #4]
 8004afe:	466f      	mov	r7, sp
 8004b00:	6902      	ldr	r2, [r0, #16]
 8004b02:	f8d1 c010 	ldr.w	ip, [r1, #16]
 8004b06:	2a02      	cmp	r2, #2
 8004b08:	db03      	blt.n	8004b12 <cmp+0x1e>
 8004b0a:	eb00 0382 	add.w	r3, r0, r2, lsl #2
 8004b0e:	691b      	ldr	r3, [r3, #16]
 8004b10:	b323      	cbz	r3, 8004b5c <cmp+0x68>
 8004b12:	f1bc 0f02 	cmp.w	ip, #2
 8004b16:	db03      	blt.n	8004b20 <cmp+0x2c>
 8004b18:	eb01 038c 	add.w	r3, r1, ip, lsl #2
 8004b1c:	691b      	ldr	r3, [r3, #16]
 8004b1e:	b353      	cbz	r3, 8004b76 <cmp+0x82>
 8004b20:	ebb2 020c 	subs.w	r2, r2, ip
 8004b24:	d111      	bne.n	8004b4a <cmp+0x56>
 8004b26:	2210      	movs	r2, #16
 8004b28:	eb02 038c 	add.w	r3, r2, ip, lsl #2
 8004b2c:	f100 0c14 	add.w	ip, r0, #20
 8004b30:	18c2      	adds	r2, r0, r3
 8004b32:	4419      	add	r1, r3
 8004b34:	680b      	ldr	r3, [r1, #0]
 8004b36:	6810      	ldr	r0, [r2, #0]
 8004b38:	4298      	cmp	r0, r3
 8004b3a:	d108      	bne.n	8004b4e <cmp+0x5a>
 8004b3c:	1f10      	subs	r0, r2, #4
 8004b3e:	4562      	cmp	r2, ip
 8004b40:	f1a1 0104 	sub.w	r1, r1, #4
 8004b44:	4602      	mov	r2, r0
 8004b46:	d8f5      	bhi.n	8004b34 <cmp+0x40>
 8004b48:	2200      	movs	r2, #0
 8004b4a:	4610      	mov	r0, r2
 8004b4c:	bd80      	pop	{r7, pc}
 8004b4e:	f04f 0201 	mov.w	r2, #1
 8004b52:	bf38      	it	cc
 8004b54:	f04f 32ff 	movcc.w	r2, #4294967295	; 0xffffffff
 8004b58:	4610      	mov	r0, r2
 8004b5a:	bd80      	pop	{r7, pc}
 8004b5c:	f240 0030 	movw	r0, #48	; 0x30
 8004b60:	f24a 2142 	movw	r1, #41538	; 0xa242
 8004b64:	f24a 2246 	movw	r2, #41542	; 0xa246
 8004b68:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b6c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004b70:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004b74:	e00b      	b.n	8004b8e <cmp+0x9a>
 8004b76:	f240 0030 	movw	r0, #48	; 0x30
 8004b7a:	f24a 2142 	movw	r1, #41538	; 0xa242
 8004b7e:	f24a 226a 	movw	r2, #41578	; 0xa26a
 8004b82:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b86:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004b8a:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004b8e:	6800      	ldr	r0, [r0, #0]
 8004b90:	68c0      	ldr	r0, [r0, #12]
 8004b92:	f000 faad 	bl	80050f0 <fprintf>
 8004b96:	2001      	movs	r0, #1
 8004b98:	f000 fa9a 	bl	80050d0 <exit>

08004b9c <initialise_benchmark>:
 8004b9c:	4770      	bx	lr
	...

08004ba0 <benchmark>:
 8004ba0:	b084      	sub	sp, #16
 8004ba2:	f84d 4e00 	strt	r4, [sp]
 8004ba6:	f84d 6e04 	strt	r6, [sp, #4]
 8004baa:	f84d 7e08 	strt	r7, [sp, #8]
 8004bae:	f84d ee0c 	strt	lr, [sp, #12]
 8004bb2:	af02      	add	r7, sp, #8
 8004bb4:	b082      	sub	sp, #8
 8004bb6:	ed9f 0b4e 	vldr	d0, [pc, #312]	; 8004cf0 <benchmark+0x150>
 8004bba:	f240 0414 	movw	r4, #20
 8004bbe:	2100      	movs	r1, #0
 8004bc0:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8004bc4:	b082      	sub	sp, #8
 8004bc6:	f84d 0e00 	strt	r0, [sp]
 8004bca:	f84d 1e04 	strt	r1, [sp, #4]
 8004bce:	ec51 0b10 	vmov	r0, r1, d0
 8004bd2:	f84d 0e08 	strt	r0, [sp, #8]
 8004bd6:	f84d 1e0c 	strt	r1, [sp, #12]
 8004bda:	bc03      	pop	{r0, r1}
 8004bdc:	6820      	ldr	r0, [r4, #0]
 8004bde:	f7fe f803 	bl	8002be8 <strtod>
 8004be2:	ed9d 1b00 	vldr	d1, [sp]
 8004be6:	ec51 0b10 	vmov	r0, r1, d0
 8004bea:	ec53 2b11 	vmov	r2, r3, d1
 8004bee:	f7fb fb0d 	bl	800020c <__adddf3>
 8004bf2:	ec41 0b10 	vmov	d0, r0, r1
 8004bf6:	2100      	movs	r1, #0
 8004bf8:	b082      	sub	sp, #8
 8004bfa:	f84d 0e00 	strt	r0, [sp]
 8004bfe:	f84d 1e04 	strt	r1, [sp, #4]
 8004c02:	ec51 0b10 	vmov	r0, r1, d0
 8004c06:	f84d 0e08 	strt	r0, [sp, #8]
 8004c0a:	f84d 1e0c 	strt	r1, [sp, #12]
 8004c0e:	bc03      	pop	{r0, r1}
 8004c10:	6860      	ldr	r0, [r4, #4]
 8004c12:	f7fd ffe9 	bl	8002be8 <strtod>
 8004c16:	ed9d 1b00 	vldr	d1, [sp]
 8004c1a:	ec51 0b10 	vmov	r0, r1, d0
 8004c1e:	ec53 2b11 	vmov	r2, r3, d1
 8004c22:	f7fb faf3 	bl	800020c <__adddf3>
 8004c26:	ec41 0b10 	vmov	d0, r0, r1
 8004c2a:	2100      	movs	r1, #0
 8004c2c:	b082      	sub	sp, #8
 8004c2e:	f84d 0e00 	strt	r0, [sp]
 8004c32:	f84d 1e04 	strt	r1, [sp, #4]
 8004c36:	ec51 0b10 	vmov	r0, r1, d0
 8004c3a:	f84d 0e08 	strt	r0, [sp, #8]
 8004c3e:	f84d 1e0c 	strt	r1, [sp, #12]
 8004c42:	bc03      	pop	{r0, r1}
 8004c44:	68a0      	ldr	r0, [r4, #8]
 8004c46:	f7fd ffcf 	bl	8002be8 <strtod>
 8004c4a:	ed9d 1b00 	vldr	d1, [sp]
 8004c4e:	ec51 0b10 	vmov	r0, r1, d0
 8004c52:	ec53 2b11 	vmov	r2, r3, d1
 8004c56:	f7fb fad9 	bl	800020c <__adddf3>
 8004c5a:	ec41 0b10 	vmov	d0, r0, r1
 8004c5e:	2100      	movs	r1, #0
 8004c60:	b082      	sub	sp, #8
 8004c62:	f84d 0e00 	strt	r0, [sp]
 8004c66:	f84d 1e04 	strt	r1, [sp, #4]
 8004c6a:	ec51 0b10 	vmov	r0, r1, d0
 8004c6e:	f84d 0e08 	strt	r0, [sp, #8]
 8004c72:	f84d 1e0c 	strt	r1, [sp, #12]
 8004c76:	bc03      	pop	{r0, r1}
 8004c78:	68e0      	ldr	r0, [r4, #12]
 8004c7a:	f7fd ffb5 	bl	8002be8 <strtod>
 8004c7e:	ed9d 1b00 	vldr	d1, [sp]
 8004c82:	ec51 0b10 	vmov	r0, r1, d0
 8004c86:	ec53 2b11 	vmov	r2, r3, d1
 8004c8a:	f7fb fabf 	bl	800020c <__adddf3>
 8004c8e:	ec41 0b10 	vmov	d0, r0, r1
 8004c92:	2100      	movs	r1, #0
 8004c94:	b082      	sub	sp, #8
 8004c96:	f84d 0e00 	strt	r0, [sp]
 8004c9a:	f84d 1e04 	strt	r1, [sp, #4]
 8004c9e:	ec51 0b10 	vmov	r0, r1, d0
 8004ca2:	f84d 0e08 	strt	r0, [sp, #8]
 8004ca6:	f84d 1e0c 	strt	r1, [sp, #12]
 8004caa:	bc03      	pop	{r0, r1}
 8004cac:	6920      	ldr	r0, [r4, #16]
 8004cae:	f7fd ff9b 	bl	8002be8 <strtod>
 8004cb2:	ed9d 1b00 	vldr	d1, [sp]
 8004cb6:	ec51 0b10 	vmov	r0, r1, d0
 8004cba:	ec53 2b11 	vmov	r2, r3, d1
 8004cbe:	f7fb faa5 	bl	800020c <__adddf3>
 8004cc2:	ec41 0b10 	vmov	d0, r0, r1
 8004cc6:	b082      	sub	sp, #8
 8004cc8:	f84d 0e00 	strt	r0, [sp]
 8004ccc:	f84d 1e04 	strt	r1, [sp, #4]
 8004cd0:	ec51 0b10 	vmov	r0, r1, d0
 8004cd4:	f84d 0e08 	strt	r0, [sp, #8]
 8004cd8:	f84d 1e0c 	strt	r1, [sp, #12]
 8004cdc:	bc03      	pop	{r0, r1}
 8004cde:	ed9d 0b00 	vldr	d0, [sp]
 8004ce2:	ec51 0b10 	vmov	r0, r1, d0
 8004ce6:	f7fb fee1 	bl	8000aac <__aeabi_d2iz>
 8004cea:	b002      	add	sp, #8
 8004cec:	bdd0      	pop	{r4, r6, r7, pc}
 8004cee:	bf00      	nop
	...

08004cf8 <verify_benchmark>:
 8004cf8:	f241 62a9 	movw	r2, #5801	; 0x16a9
 8004cfc:	2100      	movs	r1, #0
 8004cfe:	f2c0 0204 	movt	r2, #4
 8004d02:	4290      	cmp	r0, r2
 8004d04:	bf08      	it	eq
 8004d06:	2101      	moveq	r1, #1
 8004d08:	4608      	mov	r0, r1
 8004d0a:	4770      	bx	lr

08004d0c <b2d>:
 8004d0c:	b084      	sub	sp, #16
 8004d0e:	f84d 4e00 	strt	r4, [sp]
 8004d12:	f84d 5e04 	strt	r5, [sp, #4]
 8004d16:	f84d 7e08 	strt	r7, [sp, #8]
 8004d1a:	f84d ee0c 	strt	lr, [sp, #12]
 8004d1e:	af02      	add	r7, sp, #8
 8004d20:	6902      	ldr	r2, [r0, #16]
 8004d22:	f100 0c14 	add.w	ip, r0, #20
 8004d26:	eb0c 0e82 	add.w	lr, ip, r2, lsl #2
 8004d2a:	4673      	mov	r3, lr
 8004d2c:	f853 0d04 	ldr.w	r0, [r3, #-4]!
 8004d30:	2800      	cmp	r0, #0
 8004d32:	d05e      	beq.n	8004df2 <b2d+0xe6>
 8004d34:	2500      	movs	r5, #0
 8004d36:	4604      	mov	r4, r0
 8004d38:	2210      	movs	r2, #16
 8004d3a:	ebb5 4f10 	cmp.w	r5, r0, lsr #16
 8004d3e:	bf08      	it	eq
 8004d40:	0424      	lsleq	r4, r4, #16
 8004d42:	bf18      	it	ne
 8004d44:	2200      	movne	r2, #0
 8004d46:	ebb5 6f14 	cmp.w	r5, r4, lsr #24
 8004d4a:	bf04      	itt	eq
 8004d4c:	f042 0208 	orreq.w	r2, r2, #8
 8004d50:	0224      	lsleq	r4, r4, #8
 8004d52:	ebb5 7f14 	cmp.w	r5, r4, lsr #28
 8004d56:	bf04      	itt	eq
 8004d58:	f042 0204 	orreq.w	r2, r2, #4
 8004d5c:	0124      	lsleq	r4, r4, #4
 8004d5e:	ebb5 7f94 	cmp.w	r5, r4, lsr #30
 8004d62:	bf04      	itt	eq
 8004d64:	f042 0202 	orreq.w	r2, r2, #2
 8004d68:	00a4      	lsleq	r4, r4, #2
 8004d6a:	2c00      	cmp	r4, #0
 8004d6c:	db07      	blt.n	8004d7e <b2d+0x72>
 8004d6e:	0064      	lsls	r4, r4, #1
 8004d70:	d404      	bmi.n	8004d7c <b2d+0x70>
 8004d72:	2200      	movs	r2, #0
 8004d74:	f841 2e00 	strt	r2, [r1]
 8004d78:	2220      	movs	r2, #32
 8004d7a:	e017      	b.n	8004dac <b2d+0xa0>
 8004d7c:	3201      	adds	r2, #1
 8004d7e:	f1c2 0420 	rsb	r4, r2, #32
 8004d82:	2a07      	cmp	r2, #7
 8004d84:	f841 4e00 	strt	r4, [r1]
 8004d88:	dc10      	bgt.n	8004dac <b2d+0xa0>
 8004d8a:	4563      	cmp	r3, ip
 8004d8c:	f1c2 0108 	rsb	r1, r2, #8
 8004d90:	f102 0218 	add.w	r2, r2, #24
 8004d94:	bf8c      	ite	hi
 8004d96:	f85e 3c08 	ldrhi.w	r3, [lr, #-8]
 8004d9a:	2300      	movls	r3, #0
 8004d9c:	fa20 f501 	lsr.w	r5, r0, r1
 8004da0:	4090      	lsls	r0, r2
 8004da2:	fa23 f101 	lsr.w	r1, r3, r1
 8004da6:	ea41 0400 	orr.w	r4, r1, r0
 8004daa:	e01d      	b.n	8004de8 <b2d+0xdc>
 8004dac:	4563      	cmp	r3, ip
 8004dae:	bf86      	itte	hi
 8004db0:	f85e 4d08 	ldrhi.w	r4, [lr, #-8]!
 8004db4:	4673      	movhi	r3, lr
 8004db6:	2400      	movls	r4, #0
 8004db8:	f1b2 0108 	subs.w	r1, r2, #8
 8004dbc:	d013      	beq.n	8004de6 <b2d+0xda>
 8004dbe:	fa00 f501 	lsl.w	r5, r0, r1
 8004dc2:	f1c2 0028 	rsb	r0, r2, #40	; 0x28
 8004dc6:	4563      	cmp	r3, ip
 8004dc8:	fa04 f101 	lsl.w	r1, r4, r1
 8004dcc:	fa24 f200 	lsr.w	r2, r4, r0
 8004dd0:	ea45 0502 	orr.w	r5, r5, r2
 8004dd4:	bf8c      	ite	hi
 8004dd6:	f853 2c04 	ldrhi.w	r2, [r3, #-4]
 8004dda:	2200      	movls	r2, #0
 8004ddc:	fa22 f000 	lsr.w	r0, r2, r0
 8004de0:	ea40 0401 	orr.w	r4, r0, r1
 8004de4:	e000      	b.n	8004de8 <b2d+0xdc>
 8004de6:	4605      	mov	r5, r0
 8004de8:	f045 4081 	orr.w	r0, r5, #1082130432	; 0x40800000
 8004dec:	ec40 4b10 	vmov	d0, r4, r0
 8004df0:	bdb0      	pop	{r4, r5, r7, pc}
 8004df2:	f240 0030 	movw	r0, #48	; 0x30
 8004df6:	f24a 2142 	movw	r1, #41538	; 0xa242
 8004dfa:	f24a 228e 	movw	r2, #41614	; 0xa28e
 8004dfe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004e02:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004e06:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004e0a:	6800      	ldr	r0, [r0, #0]
 8004e0c:	68c0      	ldr	r0, [r0, #12]
 8004e0e:	f000 f96f 	bl	80050f0 <fprintf>
 8004e12:	2001      	movs	r0, #1
 8004e14:	f000 f95c 	bl	80050d0 <exit>

08004e18 <__io_putchar>:
 8004e18:	b082      	sub	sp, #8
 8004e1a:	f84d 7e00 	strt	r7, [sp]
 8004e1e:	f84d ee04 	strt	lr, [sp, #4]
 8004e22:	466f      	mov	r7, sp
 8004e24:	b082      	sub	sp, #8
 8004e26:	f84d 0e04 	strt	r0, [sp, #4]
 8004e2a:	f241 302c 	movw	r0, #4908	; 0x132c
 8004e2e:	a901      	add	r1, sp, #4
 8004e30:	2201      	movs	r2, #1
 8004e32:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8004e36:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004e3a:	f7fd f826 	bl	8001e8a <HAL_UART_Transmit>
 8004e3e:	9801      	ldr	r0, [sp, #4]
 8004e40:	b002      	add	sp, #8
 8004e42:	bd80      	pop	{r7, pc}

08004e44 <main>:
 8004e44:	b084      	sub	sp, #16
 8004e46:	f84d 4e00 	strt	r4, [sp]
 8004e4a:	f84d 5e04 	strt	r5, [sp, #4]
 8004e4e:	f84d 7e08 	strt	r7, [sp, #8]
 8004e52:	f84d ee0c 	strt	lr, [sp, #12]
 8004e56:	af02      	add	r7, sp, #8
 8004e58:	f241 312c 	movw	r1, #4908	; 0x132c
 8004e5c:	f643 0000 	movw	r0, #14336	; 0x3800
 8004e60:	220c      	movs	r2, #12
 8004e62:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004e66:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004e6a:	f841 0e00 	strt	r0, [r1]
 8004e6e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8004e72:	f841 0e04 	strt	r0, [r1, #4]
 8004e76:	2000      	movs	r0, #0
 8004e78:	f841 0e08 	strt	r0, [r1, #8]
 8004e7c:	f841 0e0c 	strt	r0, [r1, #12]
 8004e80:	f841 0e10 	strt	r0, [r1, #16]
 8004e84:	f841 0e24 	strt	r0, [r1, #36]
 8004e88:	f841 0e1c 	strt	r0, [r1, #28]
 8004e8c:	f841 0e20 	strt	r0, [r1, #32]
 8004e90:	f841 2e14 	strt	r2, [r1, #20]
 8004e94:	f841 0e18 	strt	r0, [r1, #24]
 8004e98:	2000      	movs	r0, #0
 8004e9a:	f7fd f8a9 	bl	8001ff0 <BSP_COM_Init>
 8004e9e:	f7ff fe7d 	bl	8004b9c <initialise_benchmark>
 8004ea2:	f24a 20ce 	movw	r0, #41678	; 0xa2ce
 8004ea6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004eaa:	f000 fc63 	bl	8005774 <printf>
 8004eae:	f24a 3075 	movw	r0, #41845	; 0xa375
 8004eb2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004eb6:	f000 fcbf 	bl	8005838 <puts>
 8004eba:	f7fc f977 	bl	80011ac <HAL_Init>
 8004ebe:	f7fc f98e 	bl	80011de <HAL_GetTick>
 8004ec2:	4604      	mov	r4, r0
 8004ec4:	f7ff fe6c 	bl	8004ba0 <benchmark>
 8004ec8:	4605      	mov	r5, r0
 8004eca:	f7fc f988 	bl	80011de <HAL_GetTick>
 8004ece:	1b04      	subs	r4, r0, r4
 8004ed0:	4628      	mov	r0, r5
 8004ed2:	f7ff ff11 	bl	8004cf8 <verify_benchmark>
 8004ed6:	1c41      	adds	r1, r0, #1
 8004ed8:	d006      	beq.n	8004ee8 <main+0xa4>
 8004eda:	2801      	cmp	r0, #1
 8004edc:	d109      	bne.n	8004ef2 <main+0xae>
 8004ede:	f24a 20e1 	movw	r0, #41697	; 0xa2e1
 8004ee2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004ee6:	e008      	b.n	8004efa <main+0xb6>
 8004ee8:	f24a 3005 	movw	r0, #41733	; 0xa305
 8004eec:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004ef0:	e003      	b.n	8004efa <main+0xb6>
 8004ef2:	f24a 303a 	movw	r0, #41786	; 0xa33a
 8004ef6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004efa:	4621      	mov	r1, r4
 8004efc:	f000 fc3a 	bl	8005774 <printf>
 8004f00:	2000      	movs	r0, #0
 8004f02:	bdb0      	pop	{r4, r5, r7, pc}

08004f04 <SysTick_Handler>:
 8004f04:	b082      	sub	sp, #8
 8004f06:	f84d 7e00 	strt	r7, [sp]
 8004f0a:	f84d ee04 	strt	lr, [sp, #4]
 8004f0e:	466f      	mov	r7, sp
 8004f10:	f7fc f95c 	bl	80011cc <HAL_IncTick>
 8004f14:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004f18:	f7fc b9b7 	b.w	800128a <HAL_SYSTICK_IRQHandler>

08004f1c <_exit>:
 8004f1c:	b082      	sub	sp, #8
 8004f1e:	f84d 7e00 	strt	r7, [sp]
 8004f22:	f84d ee04 	strt	lr, [sp, #4]
 8004f26:	466f      	mov	r7, sp
 8004f28:	f000 f8cc 	bl	80050c4 <__errno>
 8004f2c:	2116      	movs	r1, #22
 8004f2e:	f840 1e00 	strt	r1, [r0]
 8004f32:	e7fe      	b.n	8004f32 <_exit+0x16>

08004f34 <_read>:
 8004f34:	b085      	sub	sp, #20
 8004f36:	f84d 4e00 	strt	r4, [sp]
 8004f3a:	f84d 5e04 	strt	r5, [sp, #4]
 8004f3e:	f84d 6e08 	strt	r6, [sp, #8]
 8004f42:	f84d 7e0c 	strt	r7, [sp, #12]
 8004f46:	f84d ee10 	strt	lr, [sp, #16]
 8004f4a:	af03      	add	r7, sp, #12
 8004f4c:	b081      	sub	sp, #4
 8004f4e:	f84d be00 	strt	fp, [sp]
 8004f52:	4614      	mov	r4, r2
 8004f54:	460d      	mov	r5, r1
 8004f56:	2c01      	cmp	r4, #1
 8004f58:	db08      	blt.n	8004f6c <_read+0x38>
 8004f5a:	4626      	mov	r6, r4
 8004f5c:	f3af 8000 	nop.w
 8004f60:	f805 0e00 	strbt	r0, [r5]
 8004f64:	bfe8      	it	al
 8004f66:	3501      	addal	r5, #1
 8004f68:	3e01      	subs	r6, #1
 8004f6a:	d1f7      	bne.n	8004f5c <_read+0x28>
 8004f6c:	4620      	mov	r0, r4
 8004f6e:	f85d bb04 	ldr.w	fp, [sp], #4
 8004f72:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004f74 <_write>:
 8004f74:	b085      	sub	sp, #20
 8004f76:	f84d 4e00 	strt	r4, [sp]
 8004f7a:	f84d 5e04 	strt	r5, [sp, #4]
 8004f7e:	f84d 6e08 	strt	r6, [sp, #8]
 8004f82:	f84d 7e0c 	strt	r7, [sp, #12]
 8004f86:	f84d ee10 	strt	lr, [sp, #16]
 8004f8a:	af03      	add	r7, sp, #12
 8004f8c:	b081      	sub	sp, #4
 8004f8e:	f84d be00 	strt	fp, [sp]
 8004f92:	4614      	mov	r4, r2
 8004f94:	460d      	mov	r5, r1
 8004f96:	2c01      	cmp	r4, #1
 8004f98:	db06      	blt.n	8004fa8 <_write+0x34>
 8004f9a:	4626      	mov	r6, r4
 8004f9c:	f815 0b01 	ldrb.w	r0, [r5], #1
 8004fa0:	f7ff ff3a 	bl	8004e18 <__io_putchar>
 8004fa4:	3e01      	subs	r6, #1
 8004fa6:	d1f9      	bne.n	8004f9c <_write+0x28>
 8004fa8:	4620      	mov	r0, r4
 8004faa:	f85d bb04 	ldr.w	fp, [sp], #4
 8004fae:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004fb0 <_sbrk>:
 8004fb0:	f241 32b0 	movw	r2, #5040	; 0x13b0
 8004fb4:	4601      	mov	r1, r0
 8004fb6:	466b      	mov	r3, sp
 8004fb8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004fbc:	6810      	ldr	r0, [r2, #0]
 8004fbe:	2800      	cmp	r0, #0
 8004fc0:	bf02      	ittt	eq
 8004fc2:	f241 4058 	movweq	r0, #5208	; 0x1458
 8004fc6:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8004fca:	f842 0e00 	strteq	r0, [r2]
 8004fce:	4401      	add	r1, r0
 8004fd0:	4299      	cmp	r1, r3
 8004fd2:	bf9c      	itt	ls
 8004fd4:	f842 1e00 	strtls	r1, [r2]
 8004fd8:	4770      	bxls	lr
 8004fda:	b082      	sub	sp, #8
 8004fdc:	f84d 7e00 	strt	r7, [sp]
 8004fe0:	f84d ee04 	strt	lr, [sp, #4]
 8004fe4:	466f      	mov	r7, sp
 8004fe6:	f000 f86d 	bl	80050c4 <__errno>
 8004fea:	210c      	movs	r1, #12
 8004fec:	f840 1e00 	strt	r1, [r0]
 8004ff0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004ff4:	bd80      	pop	{r7, pc}

08004ff6 <_close>:
 8004ff6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004ffa:	4770      	bx	lr

08004ffc <_fstat>:
 8004ffc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8005000:	f841 0e04 	strt	r0, [r1, #4]
 8005004:	2000      	movs	r0, #0
 8005006:	4770      	bx	lr

08005008 <_isatty>:
 8005008:	2001      	movs	r0, #1
 800500a:	4770      	bx	lr

0800500c <_lseek>:
 800500c:	2000      	movs	r0, #0
 800500e:	4770      	bx	lr

08005010 <SystemInit>:
 8005010:	f64e 5088 	movw	r0, #60808	; 0xed88
 8005014:	f04f 0c00 	mov.w	ip, #0
 8005018:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800501c:	6801      	ldr	r1, [r0, #0]
 800501e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8005022:	6001      	str	r1, [r0, #0]
 8005024:	f241 0100 	movw	r1, #4096	; 0x1000
 8005028:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800502c:	680a      	ldr	r2, [r1, #0]
 800502e:	f042 0201 	orr.w	r2, r2, #1
 8005032:	600a      	str	r2, [r1, #0]
 8005034:	f8c1 c008 	str.w	ip, [r1, #8]
 8005038:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800503c:	680b      	ldr	r3, [r1, #0]
 800503e:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8005042:	401a      	ands	r2, r3
 8005044:	600a      	str	r2, [r1, #0]
 8005046:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800504a:	60ca      	str	r2, [r1, #12]
 800504c:	680a      	ldr	r2, [r1, #0]
 800504e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8005052:	600a      	str	r2, [r1, #0]
 8005054:	f8c1 c018 	str.w	ip, [r1, #24]
 8005058:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800505c:	f840 1c80 	str.w	r1, [r0, #-128]
 8005060:	4770      	bx	lr
	...

08005064 <Reset_Handler>:
 8005064:	f8df d034 	ldr.w	sp, [pc, #52]	; 800509c <LoopForever+0x2>
 8005068:	2100      	movs	r1, #0
 800506a:	e003      	b.n	8005074 <LoopCopyDataInit>

0800506c <CopyDataInit>:
 800506c:	4b0c      	ldr	r3, [pc, #48]	; (80050a0 <LoopForever+0x6>)
 800506e:	585b      	ldr	r3, [r3, r1]
 8005070:	5043      	str	r3, [r0, r1]
 8005072:	3104      	adds	r1, #4

08005074 <LoopCopyDataInit>:
 8005074:	480b      	ldr	r0, [pc, #44]	; (80050a4 <LoopForever+0xa>)
 8005076:	4b0c      	ldr	r3, [pc, #48]	; (80050a8 <LoopForever+0xe>)
 8005078:	1842      	adds	r2, r0, r1
 800507a:	429a      	cmp	r2, r3
 800507c:	d3f6      	bcc.n	800506c <CopyDataInit>
 800507e:	4a0b      	ldr	r2, [pc, #44]	; (80050ac <LoopForever+0x12>)
 8005080:	e002      	b.n	8005088 <LoopFillZerobss>

08005082 <FillZerobss>:
 8005082:	2300      	movs	r3, #0
 8005084:	f842 3b04 	str.w	r3, [r2], #4

08005088 <LoopFillZerobss>:
 8005088:	4b09      	ldr	r3, [pc, #36]	; (80050b0 <LoopForever+0x16>)
 800508a:	429a      	cmp	r2, r3
 800508c:	d3f9      	bcc.n	8005082 <FillZerobss>
 800508e:	f7ff ffbf 	bl	8005010 <SystemInit>
 8005092:	f000 f841 	bl	8005118 <__libc_init_array>
 8005096:	f7ff fed5 	bl	8004e44 <main>

0800509a <LoopForever>:
 800509a:	e7fe      	b.n	800509a <LoopForever>
 800509c:	20018000 	.word	0x20018000
 80050a0:	0800a620 	.word	0x0800a620
 80050a4:	20000000 	.word	0x20000000
 80050a8:	200009e0 	.word	0x200009e0
 80050ac:	200009e0 	.word	0x200009e0
 80050b0:	20001458 	.word	0x20001458

080050b4 <ADC1_2_IRQHandler>:
 80050b4:	e7fe      	b.n	80050b4 <ADC1_2_IRQHandler>
	...

080050b8 <__aeabi_memclr>:
 80050b8:	2200      	movs	r2, #0
 80050ba:	f7fb be9f 	b.w	8000dfc <__aeabi_memset>
 80050be:	bf00      	nop

080050c0 <__aeabi_memcpy>:
 80050c0:	f7fb beea 	b.w	8000e98 <memcpy>

080050c4 <__errno>:
 80050c4:	4b01      	ldr	r3, [pc, #4]	; (80050cc <__errno+0x8>)
 80050c6:	6818      	ldr	r0, [r3, #0]
 80050c8:	4770      	bx	lr
 80050ca:	bf00      	nop
 80050cc:	20000030 	.word	0x20000030

080050d0 <exit>:
 80050d0:	b508      	push	{r3, lr}
 80050d2:	2100      	movs	r1, #0
 80050d4:	4604      	mov	r4, r0
 80050d6:	f002 f9bb 	bl	8007450 <__call_exitprocs>
 80050da:	4b04      	ldr	r3, [pc, #16]	; (80050ec <exit+0x1c>)
 80050dc:	6818      	ldr	r0, [r3, #0]
 80050de:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 80050e0:	b103      	cbz	r3, 80050e4 <exit+0x14>
 80050e2:	4798      	blx	r3
 80050e4:	4620      	mov	r0, r4
 80050e6:	f7ff ff19 	bl	8004f1c <_exit>
 80050ea:	bf00      	nop
 80050ec:	0800a378 	.word	0x0800a378

080050f0 <fprintf>:
 80050f0:	b40e      	push	{r1, r2, r3}
 80050f2:	b510      	push	{r4, lr}
 80050f4:	b083      	sub	sp, #12
 80050f6:	ab05      	add	r3, sp, #20
 80050f8:	4c06      	ldr	r4, [pc, #24]	; (8005114 <fprintf+0x24>)
 80050fa:	f853 2b04 	ldr.w	r2, [r3], #4
 80050fe:	9301      	str	r3, [sp, #4]
 8005100:	4601      	mov	r1, r0
 8005102:	6820      	ldr	r0, [r4, #0]
 8005104:	f000 fbb4 	bl	8005870 <_vfprintf_r>
 8005108:	b003      	add	sp, #12
 800510a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800510e:	b003      	add	sp, #12
 8005110:	4770      	bx	lr
 8005112:	bf00      	nop
 8005114:	20000030 	.word	0x20000030

08005118 <__libc_init_array>:
 8005118:	b570      	push	{r4, r5, r6, lr}
 800511a:	4e0d      	ldr	r6, [pc, #52]	; (8005150 <__libc_init_array+0x38>)
 800511c:	4d0d      	ldr	r5, [pc, #52]	; (8005154 <__libc_init_array+0x3c>)
 800511e:	1b76      	subs	r6, r6, r5
 8005120:	10b6      	asrs	r6, r6, #2
 8005122:	d006      	beq.n	8005132 <__libc_init_array+0x1a>
 8005124:	2400      	movs	r4, #0
 8005126:	3401      	adds	r4, #1
 8005128:	f855 3b04 	ldr.w	r3, [r5], #4
 800512c:	4798      	blx	r3
 800512e:	42a6      	cmp	r6, r4
 8005130:	d1f9      	bne.n	8005126 <__libc_init_array+0xe>
 8005132:	4e09      	ldr	r6, [pc, #36]	; (8005158 <__libc_init_array+0x40>)
 8005134:	4d09      	ldr	r5, [pc, #36]	; (800515c <__libc_init_array+0x44>)
 8005136:	1b76      	subs	r6, r6, r5
 8005138:	f004 ff2e 	bl	8009f98 <_init>
 800513c:	10b6      	asrs	r6, r6, #2
 800513e:	d006      	beq.n	800514e <__libc_init_array+0x36>
 8005140:	2400      	movs	r4, #0
 8005142:	3401      	adds	r4, #1
 8005144:	f855 3b04 	ldr.w	r3, [r5], #4
 8005148:	4798      	blx	r3
 800514a:	42a6      	cmp	r6, r4
 800514c:	d1f9      	bne.n	8005142 <__libc_init_array+0x2a>
 800514e:	bd70      	pop	{r4, r5, r6, pc}
 8005150:	0800a610 	.word	0x0800a610
 8005154:	0800a610 	.word	0x0800a610
 8005158:	0800a618 	.word	0x0800a618
 800515c:	0800a610 	.word	0x0800a610

08005160 <malloc>:
 8005160:	4b02      	ldr	r3, [pc, #8]	; (800516c <malloc+0xc>)
 8005162:	4601      	mov	r1, r0
 8005164:	6818      	ldr	r0, [r3, #0]
 8005166:	f000 b80b 	b.w	8005180 <_malloc_r>
 800516a:	bf00      	nop
 800516c:	20000030 	.word	0x20000030

08005170 <free>:
 8005170:	4b02      	ldr	r3, [pc, #8]	; (800517c <free+0xc>)
 8005172:	4601      	mov	r1, r0
 8005174:	6818      	ldr	r0, [r3, #0]
 8005176:	f003 bb2f 	b.w	80087d8 <_free_r>
 800517a:	bf00      	nop
 800517c:	20000030 	.word	0x20000030

08005180 <_malloc_r>:
 8005180:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005184:	f101 050b 	add.w	r5, r1, #11
 8005188:	2d16      	cmp	r5, #22
 800518a:	b083      	sub	sp, #12
 800518c:	4606      	mov	r6, r0
 800518e:	d823      	bhi.n	80051d8 <_malloc_r+0x58>
 8005190:	2910      	cmp	r1, #16
 8005192:	f200 80b9 	bhi.w	8005308 <_malloc_r+0x188>
 8005196:	f000 fae1 	bl	800575c <__malloc_lock>
 800519a:	2510      	movs	r5, #16
 800519c:	2318      	movs	r3, #24
 800519e:	2002      	movs	r0, #2
 80051a0:	4fc5      	ldr	r7, [pc, #788]	; (80054b8 <_malloc_r+0x338>)
 80051a2:	443b      	add	r3, r7
 80051a4:	f1a3 0208 	sub.w	r2, r3, #8
 80051a8:	685c      	ldr	r4, [r3, #4]
 80051aa:	4294      	cmp	r4, r2
 80051ac:	f000 8166 	beq.w	800547c <_malloc_r+0x2fc>
 80051b0:	6863      	ldr	r3, [r4, #4]
 80051b2:	f023 0303 	bic.w	r3, r3, #3
 80051b6:	4423      	add	r3, r4
 80051b8:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80051bc:	685a      	ldr	r2, [r3, #4]
 80051be:	60e9      	str	r1, [r5, #12]
 80051c0:	f042 0201 	orr.w	r2, r2, #1
 80051c4:	608d      	str	r5, [r1, #8]
 80051c6:	4630      	mov	r0, r6
 80051c8:	605a      	str	r2, [r3, #4]
 80051ca:	f000 facd 	bl	8005768 <__malloc_unlock>
 80051ce:	3408      	adds	r4, #8
 80051d0:	4620      	mov	r0, r4
 80051d2:	b003      	add	sp, #12
 80051d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80051d8:	f035 0507 	bics.w	r5, r5, #7
 80051dc:	f100 8094 	bmi.w	8005308 <_malloc_r+0x188>
 80051e0:	42a9      	cmp	r1, r5
 80051e2:	f200 8091 	bhi.w	8005308 <_malloc_r+0x188>
 80051e6:	f000 fab9 	bl	800575c <__malloc_lock>
 80051ea:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80051ee:	f0c0 8183 	bcc.w	80054f8 <_malloc_r+0x378>
 80051f2:	0a6b      	lsrs	r3, r5, #9
 80051f4:	f000 808f 	beq.w	8005316 <_malloc_r+0x196>
 80051f8:	2b04      	cmp	r3, #4
 80051fa:	f200 8146 	bhi.w	800548a <_malloc_r+0x30a>
 80051fe:	09ab      	lsrs	r3, r5, #6
 8005200:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005204:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005208:	00c3      	lsls	r3, r0, #3
 800520a:	4fab      	ldr	r7, [pc, #684]	; (80054b8 <_malloc_r+0x338>)
 800520c:	443b      	add	r3, r7
 800520e:	f1a3 0108 	sub.w	r1, r3, #8
 8005212:	685c      	ldr	r4, [r3, #4]
 8005214:	42a1      	cmp	r1, r4
 8005216:	d106      	bne.n	8005226 <_malloc_r+0xa6>
 8005218:	e00c      	b.n	8005234 <_malloc_r+0xb4>
 800521a:	2a00      	cmp	r2, #0
 800521c:	f280 811d 	bge.w	800545a <_malloc_r+0x2da>
 8005220:	68e4      	ldr	r4, [r4, #12]
 8005222:	42a1      	cmp	r1, r4
 8005224:	d006      	beq.n	8005234 <_malloc_r+0xb4>
 8005226:	6863      	ldr	r3, [r4, #4]
 8005228:	f023 0303 	bic.w	r3, r3, #3
 800522c:	1b5a      	subs	r2, r3, r5
 800522e:	2a0f      	cmp	r2, #15
 8005230:	ddf3      	ble.n	800521a <_malloc_r+0x9a>
 8005232:	4660      	mov	r0, ip
 8005234:	693c      	ldr	r4, [r7, #16]
 8005236:	f8df c294 	ldr.w	ip, [pc, #660]	; 80054cc <_malloc_r+0x34c>
 800523a:	4564      	cmp	r4, ip
 800523c:	d071      	beq.n	8005322 <_malloc_r+0x1a2>
 800523e:	6863      	ldr	r3, [r4, #4]
 8005240:	f023 0303 	bic.w	r3, r3, #3
 8005244:	1b5a      	subs	r2, r3, r5
 8005246:	2a0f      	cmp	r2, #15
 8005248:	f300 8144 	bgt.w	80054d4 <_malloc_r+0x354>
 800524c:	2a00      	cmp	r2, #0
 800524e:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005252:	f280 8126 	bge.w	80054a2 <_malloc_r+0x322>
 8005256:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800525a:	f080 8169 	bcs.w	8005530 <_malloc_r+0x3b0>
 800525e:	08db      	lsrs	r3, r3, #3
 8005260:	1c59      	adds	r1, r3, #1
 8005262:	687a      	ldr	r2, [r7, #4]
 8005264:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005268:	f8c4 8008 	str.w	r8, [r4, #8]
 800526c:	f04f 0e01 	mov.w	lr, #1
 8005270:	109b      	asrs	r3, r3, #2
 8005272:	fa0e f303 	lsl.w	r3, lr, r3
 8005276:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800527a:	4313      	orrs	r3, r2
 800527c:	f1ae 0208 	sub.w	r2, lr, #8
 8005280:	60e2      	str	r2, [r4, #12]
 8005282:	607b      	str	r3, [r7, #4]
 8005284:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005288:	f8c8 400c 	str.w	r4, [r8, #12]
 800528c:	1082      	asrs	r2, r0, #2
 800528e:	2401      	movs	r4, #1
 8005290:	4094      	lsls	r4, r2
 8005292:	429c      	cmp	r4, r3
 8005294:	d84b      	bhi.n	800532e <_malloc_r+0x1ae>
 8005296:	421c      	tst	r4, r3
 8005298:	d106      	bne.n	80052a8 <_malloc_r+0x128>
 800529a:	f020 0003 	bic.w	r0, r0, #3
 800529e:	0064      	lsls	r4, r4, #1
 80052a0:	421c      	tst	r4, r3
 80052a2:	f100 0004 	add.w	r0, r0, #4
 80052a6:	d0fa      	beq.n	800529e <_malloc_r+0x11e>
 80052a8:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80052ac:	46ce      	mov	lr, r9
 80052ae:	4680      	mov	r8, r0
 80052b0:	f8de 300c 	ldr.w	r3, [lr, #12]
 80052b4:	459e      	cmp	lr, r3
 80052b6:	d107      	bne.n	80052c8 <_malloc_r+0x148>
 80052b8:	e122      	b.n	8005500 <_malloc_r+0x380>
 80052ba:	2a00      	cmp	r2, #0
 80052bc:	f280 8129 	bge.w	8005512 <_malloc_r+0x392>
 80052c0:	68db      	ldr	r3, [r3, #12]
 80052c2:	459e      	cmp	lr, r3
 80052c4:	f000 811c 	beq.w	8005500 <_malloc_r+0x380>
 80052c8:	6859      	ldr	r1, [r3, #4]
 80052ca:	f021 0103 	bic.w	r1, r1, #3
 80052ce:	1b4a      	subs	r2, r1, r5
 80052d0:	2a0f      	cmp	r2, #15
 80052d2:	ddf2      	ble.n	80052ba <_malloc_r+0x13a>
 80052d4:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80052d8:	195c      	adds	r4, r3, r5
 80052da:	f045 0501 	orr.w	r5, r5, #1
 80052de:	605d      	str	r5, [r3, #4]
 80052e0:	f042 0501 	orr.w	r5, r2, #1
 80052e4:	f8c8 e00c 	str.w	lr, [r8, #12]
 80052e8:	4630      	mov	r0, r6
 80052ea:	f8ce 8008 	str.w	r8, [lr, #8]
 80052ee:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80052f2:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80052f6:	6065      	str	r5, [r4, #4]
 80052f8:	505a      	str	r2, [r3, r1]
 80052fa:	9301      	str	r3, [sp, #4]
 80052fc:	f000 fa34 	bl	8005768 <__malloc_unlock>
 8005300:	9b01      	ldr	r3, [sp, #4]
 8005302:	f103 0408 	add.w	r4, r3, #8
 8005306:	e763      	b.n	80051d0 <_malloc_r+0x50>
 8005308:	2400      	movs	r4, #0
 800530a:	230c      	movs	r3, #12
 800530c:	4620      	mov	r0, r4
 800530e:	6033      	str	r3, [r6, #0]
 8005310:	b003      	add	sp, #12
 8005312:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005316:	f44f 7300 	mov.w	r3, #512	; 0x200
 800531a:	2040      	movs	r0, #64	; 0x40
 800531c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005320:	e773      	b.n	800520a <_malloc_r+0x8a>
 8005322:	687b      	ldr	r3, [r7, #4]
 8005324:	1082      	asrs	r2, r0, #2
 8005326:	2401      	movs	r4, #1
 8005328:	4094      	lsls	r4, r2
 800532a:	429c      	cmp	r4, r3
 800532c:	d9b3      	bls.n	8005296 <_malloc_r+0x116>
 800532e:	68bc      	ldr	r4, [r7, #8]
 8005330:	6863      	ldr	r3, [r4, #4]
 8005332:	f023 0903 	bic.w	r9, r3, #3
 8005336:	45a9      	cmp	r9, r5
 8005338:	d303      	bcc.n	8005342 <_malloc_r+0x1c2>
 800533a:	eba9 0305 	sub.w	r3, r9, r5
 800533e:	2b0f      	cmp	r3, #15
 8005340:	dc7b      	bgt.n	800543a <_malloc_r+0x2ba>
 8005342:	4b5e      	ldr	r3, [pc, #376]	; (80054bc <_malloc_r+0x33c>)
 8005344:	f8df a188 	ldr.w	sl, [pc, #392]	; 80054d0 <_malloc_r+0x350>
 8005348:	681a      	ldr	r2, [r3, #0]
 800534a:	f8da 3000 	ldr.w	r3, [sl]
 800534e:	3301      	adds	r3, #1
 8005350:	eb05 0802 	add.w	r8, r5, r2
 8005354:	f000 8148 	beq.w	80055e8 <_malloc_r+0x468>
 8005358:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 800535c:	f108 080f 	add.w	r8, r8, #15
 8005360:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005364:	f028 080f 	bic.w	r8, r8, #15
 8005368:	4641      	mov	r1, r8
 800536a:	4630      	mov	r0, r6
 800536c:	f000 fa6c 	bl	8005848 <_sbrk_r>
 8005370:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005374:	4683      	mov	fp, r0
 8005376:	f000 8104 	beq.w	8005582 <_malloc_r+0x402>
 800537a:	eb04 0009 	add.w	r0, r4, r9
 800537e:	4558      	cmp	r0, fp
 8005380:	f200 80fd 	bhi.w	800557e <_malloc_r+0x3fe>
 8005384:	4a4e      	ldr	r2, [pc, #312]	; (80054c0 <_malloc_r+0x340>)
 8005386:	6813      	ldr	r3, [r2, #0]
 8005388:	4443      	add	r3, r8
 800538a:	6013      	str	r3, [r2, #0]
 800538c:	f000 814d 	beq.w	800562a <_malloc_r+0x4aa>
 8005390:	f8da 1000 	ldr.w	r1, [sl]
 8005394:	3101      	adds	r1, #1
 8005396:	bf1b      	ittet	ne
 8005398:	ebab 0000 	subne.w	r0, fp, r0
 800539c:	181b      	addne	r3, r3, r0
 800539e:	f8ca b000 	streq.w	fp, [sl]
 80053a2:	6013      	strne	r3, [r2, #0]
 80053a4:	f01b 0307 	ands.w	r3, fp, #7
 80053a8:	f000 8134 	beq.w	8005614 <_malloc_r+0x494>
 80053ac:	f1c3 0108 	rsb	r1, r3, #8
 80053b0:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80053b4:	448b      	add	fp, r1
 80053b6:	3308      	adds	r3, #8
 80053b8:	44d8      	add	r8, fp
 80053ba:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80053be:	eba3 0808 	sub.w	r8, r3, r8
 80053c2:	4641      	mov	r1, r8
 80053c4:	4630      	mov	r0, r6
 80053c6:	9201      	str	r2, [sp, #4]
 80053c8:	f000 fa3e 	bl	8005848 <_sbrk_r>
 80053cc:	1c43      	adds	r3, r0, #1
 80053ce:	9a01      	ldr	r2, [sp, #4]
 80053d0:	f000 8146 	beq.w	8005660 <_malloc_r+0x4e0>
 80053d4:	eba0 010b 	sub.w	r1, r0, fp
 80053d8:	4441      	add	r1, r8
 80053da:	f041 0101 	orr.w	r1, r1, #1
 80053de:	6813      	ldr	r3, [r2, #0]
 80053e0:	f8c7 b008 	str.w	fp, [r7, #8]
 80053e4:	4443      	add	r3, r8
 80053e6:	42bc      	cmp	r4, r7
 80053e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80053ec:	6013      	str	r3, [r2, #0]
 80053ee:	d015      	beq.n	800541c <_malloc_r+0x29c>
 80053f0:	f1b9 0f0f 	cmp.w	r9, #15
 80053f4:	f240 8130 	bls.w	8005658 <_malloc_r+0x4d8>
 80053f8:	6860      	ldr	r0, [r4, #4]
 80053fa:	f1a9 010c 	sub.w	r1, r9, #12
 80053fe:	f021 0107 	bic.w	r1, r1, #7
 8005402:	f000 0001 	and.w	r0, r0, #1
 8005406:	eb04 0c01 	add.w	ip, r4, r1
 800540a:	4308      	orrs	r0, r1
 800540c:	f04f 0e05 	mov.w	lr, #5
 8005410:	290f      	cmp	r1, #15
 8005412:	6060      	str	r0, [r4, #4]
 8005414:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005418:	f200 813a 	bhi.w	8005690 <_malloc_r+0x510>
 800541c:	4a29      	ldr	r2, [pc, #164]	; (80054c4 <_malloc_r+0x344>)
 800541e:	482a      	ldr	r0, [pc, #168]	; (80054c8 <_malloc_r+0x348>)
 8005420:	6811      	ldr	r1, [r2, #0]
 8005422:	68bc      	ldr	r4, [r7, #8]
 8005424:	428b      	cmp	r3, r1
 8005426:	6801      	ldr	r1, [r0, #0]
 8005428:	bf88      	it	hi
 800542a:	6013      	strhi	r3, [r2, #0]
 800542c:	6862      	ldr	r2, [r4, #4]
 800542e:	428b      	cmp	r3, r1
 8005430:	f022 0203 	bic.w	r2, r2, #3
 8005434:	bf88      	it	hi
 8005436:	6003      	strhi	r3, [r0, #0]
 8005438:	e0a7      	b.n	800558a <_malloc_r+0x40a>
 800543a:	1962      	adds	r2, r4, r5
 800543c:	f043 0301 	orr.w	r3, r3, #1
 8005440:	f045 0501 	orr.w	r5, r5, #1
 8005444:	6065      	str	r5, [r4, #4]
 8005446:	4630      	mov	r0, r6
 8005448:	60ba      	str	r2, [r7, #8]
 800544a:	6053      	str	r3, [r2, #4]
 800544c:	f000 f98c 	bl	8005768 <__malloc_unlock>
 8005450:	3408      	adds	r4, #8
 8005452:	4620      	mov	r0, r4
 8005454:	b003      	add	sp, #12
 8005456:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800545a:	4423      	add	r3, r4
 800545c:	68e1      	ldr	r1, [r4, #12]
 800545e:	685a      	ldr	r2, [r3, #4]
 8005460:	68a5      	ldr	r5, [r4, #8]
 8005462:	f042 0201 	orr.w	r2, r2, #1
 8005466:	60e9      	str	r1, [r5, #12]
 8005468:	4630      	mov	r0, r6
 800546a:	608d      	str	r5, [r1, #8]
 800546c:	605a      	str	r2, [r3, #4]
 800546e:	f000 f97b 	bl	8005768 <__malloc_unlock>
 8005472:	3408      	adds	r4, #8
 8005474:	4620      	mov	r0, r4
 8005476:	b003      	add	sp, #12
 8005478:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800547c:	68dc      	ldr	r4, [r3, #12]
 800547e:	42a3      	cmp	r3, r4
 8005480:	bf08      	it	eq
 8005482:	3002      	addeq	r0, #2
 8005484:	f43f aed6 	beq.w	8005234 <_malloc_r+0xb4>
 8005488:	e692      	b.n	80051b0 <_malloc_r+0x30>
 800548a:	2b14      	cmp	r3, #20
 800548c:	d971      	bls.n	8005572 <_malloc_r+0x3f2>
 800548e:	2b54      	cmp	r3, #84	; 0x54
 8005490:	f200 80ad 	bhi.w	80055ee <_malloc_r+0x46e>
 8005494:	0b2b      	lsrs	r3, r5, #12
 8005496:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800549a:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800549e:	00c3      	lsls	r3, r0, #3
 80054a0:	e6b3      	b.n	800520a <_malloc_r+0x8a>
 80054a2:	4423      	add	r3, r4
 80054a4:	4630      	mov	r0, r6
 80054a6:	685a      	ldr	r2, [r3, #4]
 80054a8:	f042 0201 	orr.w	r2, r2, #1
 80054ac:	605a      	str	r2, [r3, #4]
 80054ae:	3408      	adds	r4, #8
 80054b0:	f000 f95a 	bl	8005768 <__malloc_unlock>
 80054b4:	e68c      	b.n	80051d0 <_malloc_r+0x50>
 80054b6:	bf00      	nop
 80054b8:	20000460 	.word	0x20000460
 80054bc:	200013e4 	.word	0x200013e4
 80054c0:	200013b4 	.word	0x200013b4
 80054c4:	200013dc 	.word	0x200013dc
 80054c8:	200013e0 	.word	0x200013e0
 80054cc:	20000468 	.word	0x20000468
 80054d0:	20000868 	.word	0x20000868
 80054d4:	1961      	adds	r1, r4, r5
 80054d6:	f045 0e01 	orr.w	lr, r5, #1
 80054da:	f042 0501 	orr.w	r5, r2, #1
 80054de:	f8c4 e004 	str.w	lr, [r4, #4]
 80054e2:	4630      	mov	r0, r6
 80054e4:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80054e8:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80054ec:	604d      	str	r5, [r1, #4]
 80054ee:	50e2      	str	r2, [r4, r3]
 80054f0:	f000 f93a 	bl	8005768 <__malloc_unlock>
 80054f4:	3408      	adds	r4, #8
 80054f6:	e66b      	b.n	80051d0 <_malloc_r+0x50>
 80054f8:	08e8      	lsrs	r0, r5, #3
 80054fa:	f105 0308 	add.w	r3, r5, #8
 80054fe:	e64f      	b.n	80051a0 <_malloc_r+0x20>
 8005500:	f108 0801 	add.w	r8, r8, #1
 8005504:	f018 0f03 	tst.w	r8, #3
 8005508:	f10e 0e08 	add.w	lr, lr, #8
 800550c:	f47f aed0 	bne.w	80052b0 <_malloc_r+0x130>
 8005510:	e052      	b.n	80055b8 <_malloc_r+0x438>
 8005512:	4419      	add	r1, r3
 8005514:	461c      	mov	r4, r3
 8005516:	684a      	ldr	r2, [r1, #4]
 8005518:	68db      	ldr	r3, [r3, #12]
 800551a:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800551e:	f042 0201 	orr.w	r2, r2, #1
 8005522:	604a      	str	r2, [r1, #4]
 8005524:	4630      	mov	r0, r6
 8005526:	60eb      	str	r3, [r5, #12]
 8005528:	609d      	str	r5, [r3, #8]
 800552a:	f000 f91d 	bl	8005768 <__malloc_unlock>
 800552e:	e64f      	b.n	80051d0 <_malloc_r+0x50>
 8005530:	0a5a      	lsrs	r2, r3, #9
 8005532:	2a04      	cmp	r2, #4
 8005534:	d935      	bls.n	80055a2 <_malloc_r+0x422>
 8005536:	2a14      	cmp	r2, #20
 8005538:	d86f      	bhi.n	800561a <_malloc_r+0x49a>
 800553a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800553e:	00c9      	lsls	r1, r1, #3
 8005540:	325b      	adds	r2, #91	; 0x5b
 8005542:	eb07 0e01 	add.w	lr, r7, r1
 8005546:	5879      	ldr	r1, [r7, r1]
 8005548:	f1ae 0e08 	sub.w	lr, lr, #8
 800554c:	458e      	cmp	lr, r1
 800554e:	d058      	beq.n	8005602 <_malloc_r+0x482>
 8005550:	684a      	ldr	r2, [r1, #4]
 8005552:	f022 0203 	bic.w	r2, r2, #3
 8005556:	429a      	cmp	r2, r3
 8005558:	d902      	bls.n	8005560 <_malloc_r+0x3e0>
 800555a:	6889      	ldr	r1, [r1, #8]
 800555c:	458e      	cmp	lr, r1
 800555e:	d1f7      	bne.n	8005550 <_malloc_r+0x3d0>
 8005560:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005564:	687b      	ldr	r3, [r7, #4]
 8005566:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800556a:	f8ce 4008 	str.w	r4, [lr, #8]
 800556e:	60cc      	str	r4, [r1, #12]
 8005570:	e68c      	b.n	800528c <_malloc_r+0x10c>
 8005572:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005576:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800557a:	00c3      	lsls	r3, r0, #3
 800557c:	e645      	b.n	800520a <_malloc_r+0x8a>
 800557e:	42bc      	cmp	r4, r7
 8005580:	d072      	beq.n	8005668 <_malloc_r+0x4e8>
 8005582:	68bc      	ldr	r4, [r7, #8]
 8005584:	6862      	ldr	r2, [r4, #4]
 8005586:	f022 0203 	bic.w	r2, r2, #3
 800558a:	4295      	cmp	r5, r2
 800558c:	eba2 0305 	sub.w	r3, r2, r5
 8005590:	d802      	bhi.n	8005598 <_malloc_r+0x418>
 8005592:	2b0f      	cmp	r3, #15
 8005594:	f73f af51 	bgt.w	800543a <_malloc_r+0x2ba>
 8005598:	4630      	mov	r0, r6
 800559a:	f000 f8e5 	bl	8005768 <__malloc_unlock>
 800559e:	2400      	movs	r4, #0
 80055a0:	e616      	b.n	80051d0 <_malloc_r+0x50>
 80055a2:	099a      	lsrs	r2, r3, #6
 80055a4:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80055a8:	00c9      	lsls	r1, r1, #3
 80055aa:	3238      	adds	r2, #56	; 0x38
 80055ac:	e7c9      	b.n	8005542 <_malloc_r+0x3c2>
 80055ae:	f8d9 9000 	ldr.w	r9, [r9]
 80055b2:	4599      	cmp	r9, r3
 80055b4:	f040 8083 	bne.w	80056be <_malloc_r+0x53e>
 80055b8:	f010 0f03 	tst.w	r0, #3
 80055bc:	f1a9 0308 	sub.w	r3, r9, #8
 80055c0:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80055c4:	d1f3      	bne.n	80055ae <_malloc_r+0x42e>
 80055c6:	687b      	ldr	r3, [r7, #4]
 80055c8:	ea23 0304 	bic.w	r3, r3, r4
 80055cc:	607b      	str	r3, [r7, #4]
 80055ce:	0064      	lsls	r4, r4, #1
 80055d0:	429c      	cmp	r4, r3
 80055d2:	f63f aeac 	bhi.w	800532e <_malloc_r+0x1ae>
 80055d6:	b91c      	cbnz	r4, 80055e0 <_malloc_r+0x460>
 80055d8:	e6a9      	b.n	800532e <_malloc_r+0x1ae>
 80055da:	0064      	lsls	r4, r4, #1
 80055dc:	f108 0804 	add.w	r8, r8, #4
 80055e0:	421c      	tst	r4, r3
 80055e2:	d0fa      	beq.n	80055da <_malloc_r+0x45a>
 80055e4:	4640      	mov	r0, r8
 80055e6:	e65f      	b.n	80052a8 <_malloc_r+0x128>
 80055e8:	f108 0810 	add.w	r8, r8, #16
 80055ec:	e6bc      	b.n	8005368 <_malloc_r+0x1e8>
 80055ee:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80055f2:	d826      	bhi.n	8005642 <_malloc_r+0x4c2>
 80055f4:	0beb      	lsrs	r3, r5, #15
 80055f6:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80055fa:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80055fe:	00c3      	lsls	r3, r0, #3
 8005600:	e603      	b.n	800520a <_malloc_r+0x8a>
 8005602:	687b      	ldr	r3, [r7, #4]
 8005604:	1092      	asrs	r2, r2, #2
 8005606:	f04f 0801 	mov.w	r8, #1
 800560a:	fa08 f202 	lsl.w	r2, r8, r2
 800560e:	4313      	orrs	r3, r2
 8005610:	607b      	str	r3, [r7, #4]
 8005612:	e7a8      	b.n	8005566 <_malloc_r+0x3e6>
 8005614:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005618:	e6ce      	b.n	80053b8 <_malloc_r+0x238>
 800561a:	2a54      	cmp	r2, #84	; 0x54
 800561c:	d829      	bhi.n	8005672 <_malloc_r+0x4f2>
 800561e:	0b1a      	lsrs	r2, r3, #12
 8005620:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005624:	00c9      	lsls	r1, r1, #3
 8005626:	326e      	adds	r2, #110	; 0x6e
 8005628:	e78b      	b.n	8005542 <_malloc_r+0x3c2>
 800562a:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800562e:	2900      	cmp	r1, #0
 8005630:	f47f aeae 	bne.w	8005390 <_malloc_r+0x210>
 8005634:	eb09 0208 	add.w	r2, r9, r8
 8005638:	68b9      	ldr	r1, [r7, #8]
 800563a:	f042 0201 	orr.w	r2, r2, #1
 800563e:	604a      	str	r2, [r1, #4]
 8005640:	e6ec      	b.n	800541c <_malloc_r+0x29c>
 8005642:	f240 5254 	movw	r2, #1364	; 0x554
 8005646:	4293      	cmp	r3, r2
 8005648:	d81c      	bhi.n	8005684 <_malloc_r+0x504>
 800564a:	0cab      	lsrs	r3, r5, #18
 800564c:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005650:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005654:	00c3      	lsls	r3, r0, #3
 8005656:	e5d8      	b.n	800520a <_malloc_r+0x8a>
 8005658:	2301      	movs	r3, #1
 800565a:	f8cb 3004 	str.w	r3, [fp, #4]
 800565e:	e79b      	b.n	8005598 <_malloc_r+0x418>
 8005660:	2101      	movs	r1, #1
 8005662:	f04f 0800 	mov.w	r8, #0
 8005666:	e6ba      	b.n	80053de <_malloc_r+0x25e>
 8005668:	4a16      	ldr	r2, [pc, #88]	; (80056c4 <_malloc_r+0x544>)
 800566a:	6813      	ldr	r3, [r2, #0]
 800566c:	4443      	add	r3, r8
 800566e:	6013      	str	r3, [r2, #0]
 8005670:	e68e      	b.n	8005390 <_malloc_r+0x210>
 8005672:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005676:	d814      	bhi.n	80056a2 <_malloc_r+0x522>
 8005678:	0bda      	lsrs	r2, r3, #15
 800567a:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800567e:	00c9      	lsls	r1, r1, #3
 8005680:	3277      	adds	r2, #119	; 0x77
 8005682:	e75e      	b.n	8005542 <_malloc_r+0x3c2>
 8005684:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005688:	207f      	movs	r0, #127	; 0x7f
 800568a:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800568e:	e5bc      	b.n	800520a <_malloc_r+0x8a>
 8005690:	f104 0108 	add.w	r1, r4, #8
 8005694:	4630      	mov	r0, r6
 8005696:	9201      	str	r2, [sp, #4]
 8005698:	f003 f89e 	bl	80087d8 <_free_r>
 800569c:	9a01      	ldr	r2, [sp, #4]
 800569e:	6813      	ldr	r3, [r2, #0]
 80056a0:	e6bc      	b.n	800541c <_malloc_r+0x29c>
 80056a2:	f240 5154 	movw	r1, #1364	; 0x554
 80056a6:	428a      	cmp	r2, r1
 80056a8:	d805      	bhi.n	80056b6 <_malloc_r+0x536>
 80056aa:	0c9a      	lsrs	r2, r3, #18
 80056ac:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80056b0:	00c9      	lsls	r1, r1, #3
 80056b2:	327c      	adds	r2, #124	; 0x7c
 80056b4:	e745      	b.n	8005542 <_malloc_r+0x3c2>
 80056b6:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80056ba:	227e      	movs	r2, #126	; 0x7e
 80056bc:	e741      	b.n	8005542 <_malloc_r+0x3c2>
 80056be:	687b      	ldr	r3, [r7, #4]
 80056c0:	e785      	b.n	80055ce <_malloc_r+0x44e>
 80056c2:	bf00      	nop
 80056c4:	200013b4 	.word	0x200013b4

080056c8 <memset>:
 80056c8:	b4f0      	push	{r4, r5, r6, r7}
 80056ca:	0786      	lsls	r6, r0, #30
 80056cc:	d043      	beq.n	8005756 <memset+0x8e>
 80056ce:	1e54      	subs	r4, r2, #1
 80056d0:	2a00      	cmp	r2, #0
 80056d2:	d03e      	beq.n	8005752 <memset+0x8a>
 80056d4:	b2ca      	uxtb	r2, r1
 80056d6:	4603      	mov	r3, r0
 80056d8:	e002      	b.n	80056e0 <memset+0x18>
 80056da:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80056de:	d338      	bcc.n	8005752 <memset+0x8a>
 80056e0:	f803 2b01 	strb.w	r2, [r3], #1
 80056e4:	079d      	lsls	r5, r3, #30
 80056e6:	d1f8      	bne.n	80056da <memset+0x12>
 80056e8:	2c03      	cmp	r4, #3
 80056ea:	d92b      	bls.n	8005744 <memset+0x7c>
 80056ec:	b2cd      	uxtb	r5, r1
 80056ee:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80056f2:	2c0f      	cmp	r4, #15
 80056f4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80056f8:	d916      	bls.n	8005728 <memset+0x60>
 80056fa:	f1a4 0710 	sub.w	r7, r4, #16
 80056fe:	093f      	lsrs	r7, r7, #4
 8005700:	f103 0620 	add.w	r6, r3, #32
 8005704:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8005708:	f103 0210 	add.w	r2, r3, #16
 800570c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8005710:	e942 5502 	strd	r5, r5, [r2, #-8]
 8005714:	3210      	adds	r2, #16
 8005716:	42b2      	cmp	r2, r6
 8005718:	d1f8      	bne.n	800570c <memset+0x44>
 800571a:	f004 040f 	and.w	r4, r4, #15
 800571e:	3701      	adds	r7, #1
 8005720:	2c03      	cmp	r4, #3
 8005722:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8005726:	d90d      	bls.n	8005744 <memset+0x7c>
 8005728:	461e      	mov	r6, r3
 800572a:	4622      	mov	r2, r4
 800572c:	3a04      	subs	r2, #4
 800572e:	2a03      	cmp	r2, #3
 8005730:	f846 5b04 	str.w	r5, [r6], #4
 8005734:	d8fa      	bhi.n	800572c <memset+0x64>
 8005736:	1f22      	subs	r2, r4, #4
 8005738:	f022 0203 	bic.w	r2, r2, #3
 800573c:	3204      	adds	r2, #4
 800573e:	4413      	add	r3, r2
 8005740:	f004 0403 	and.w	r4, r4, #3
 8005744:	b12c      	cbz	r4, 8005752 <memset+0x8a>
 8005746:	b2c9      	uxtb	r1, r1
 8005748:	441c      	add	r4, r3
 800574a:	f803 1b01 	strb.w	r1, [r3], #1
 800574e:	429c      	cmp	r4, r3
 8005750:	d1fb      	bne.n	800574a <memset+0x82>
 8005752:	bcf0      	pop	{r4, r5, r6, r7}
 8005754:	4770      	bx	lr
 8005756:	4614      	mov	r4, r2
 8005758:	4603      	mov	r3, r0
 800575a:	e7c5      	b.n	80056e8 <memset+0x20>

0800575c <__malloc_lock>:
 800575c:	4801      	ldr	r0, [pc, #4]	; (8005764 <__malloc_lock+0x8>)
 800575e:	f003 bae9 	b.w	8008d34 <__retarget_lock_acquire_recursive>
 8005762:	bf00      	nop
 8005764:	20001440 	.word	0x20001440

08005768 <__malloc_unlock>:
 8005768:	4801      	ldr	r0, [pc, #4]	; (8005770 <__malloc_unlock+0x8>)
 800576a:	f003 bae5 	b.w	8008d38 <__retarget_lock_release_recursive>
 800576e:	bf00      	nop
 8005770:	20001440 	.word	0x20001440

08005774 <printf>:
 8005774:	b40f      	push	{r0, r1, r2, r3}
 8005776:	b500      	push	{lr}
 8005778:	4907      	ldr	r1, [pc, #28]	; (8005798 <printf+0x24>)
 800577a:	b083      	sub	sp, #12
 800577c:	ab04      	add	r3, sp, #16
 800577e:	6808      	ldr	r0, [r1, #0]
 8005780:	f853 2b04 	ldr.w	r2, [r3], #4
 8005784:	6881      	ldr	r1, [r0, #8]
 8005786:	9301      	str	r3, [sp, #4]
 8005788:	f000 f872 	bl	8005870 <_vfprintf_r>
 800578c:	b003      	add	sp, #12
 800578e:	f85d eb04 	ldr.w	lr, [sp], #4
 8005792:	b004      	add	sp, #16
 8005794:	4770      	bx	lr
 8005796:	bf00      	nop
 8005798:	20000030 	.word	0x20000030

0800579c <_puts_r>:
 800579c:	b570      	push	{r4, r5, r6, lr}
 800579e:	4605      	mov	r5, r0
 80057a0:	b088      	sub	sp, #32
 80057a2:	4608      	mov	r0, r1
 80057a4:	460c      	mov	r4, r1
 80057a6:	f7fb fc2b 	bl	8001000 <strlen>
 80057aa:	4a22      	ldr	r2, [pc, #136]	; (8005834 <_puts_r+0x98>)
 80057ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80057ae:	9404      	str	r4, [sp, #16]
 80057b0:	2601      	movs	r6, #1
 80057b2:	1c44      	adds	r4, r0, #1
 80057b4:	a904      	add	r1, sp, #16
 80057b6:	9206      	str	r2, [sp, #24]
 80057b8:	2202      	movs	r2, #2
 80057ba:	9403      	str	r4, [sp, #12]
 80057bc:	9005      	str	r0, [sp, #20]
 80057be:	68ac      	ldr	r4, [r5, #8]
 80057c0:	9607      	str	r6, [sp, #28]
 80057c2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80057c6:	b31b      	cbz	r3, 8005810 <_puts_r+0x74>
 80057c8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80057ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057ce:	07ce      	lsls	r6, r1, #31
 80057d0:	b29a      	uxth	r2, r3
 80057d2:	d401      	bmi.n	80057d8 <_puts_r+0x3c>
 80057d4:	0590      	lsls	r0, r2, #22
 80057d6:	d525      	bpl.n	8005824 <_puts_r+0x88>
 80057d8:	0491      	lsls	r1, r2, #18
 80057da:	d406      	bmi.n	80057ea <_puts_r+0x4e>
 80057dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80057de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80057e2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80057e6:	81a3      	strh	r3, [r4, #12]
 80057e8:	6662      	str	r2, [r4, #100]	; 0x64
 80057ea:	4628      	mov	r0, r5
 80057ec:	aa01      	add	r2, sp, #4
 80057ee:	4621      	mov	r1, r4
 80057f0:	f003 f8e6 	bl	80089c0 <__sfvwrite_r>
 80057f4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80057f6:	2800      	cmp	r0, #0
 80057f8:	bf0c      	ite	eq
 80057fa:	250a      	moveq	r5, #10
 80057fc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005800:	07da      	lsls	r2, r3, #31
 8005802:	d402      	bmi.n	800580a <_puts_r+0x6e>
 8005804:	89a3      	ldrh	r3, [r4, #12]
 8005806:	059b      	lsls	r3, r3, #22
 8005808:	d506      	bpl.n	8005818 <_puts_r+0x7c>
 800580a:	4628      	mov	r0, r5
 800580c:	b008      	add	sp, #32
 800580e:	bd70      	pop	{r4, r5, r6, pc}
 8005810:	4628      	mov	r0, r5
 8005812:	f002 ff3f 	bl	8008694 <__sinit>
 8005816:	e7d7      	b.n	80057c8 <_puts_r+0x2c>
 8005818:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800581a:	f003 fa8d 	bl	8008d38 <__retarget_lock_release_recursive>
 800581e:	4628      	mov	r0, r5
 8005820:	b008      	add	sp, #32
 8005822:	bd70      	pop	{r4, r5, r6, pc}
 8005824:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8005826:	f003 fa85 	bl	8008d34 <__retarget_lock_acquire_recursive>
 800582a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800582e:	b29a      	uxth	r2, r3
 8005830:	e7d2      	b.n	80057d8 <_puts_r+0x3c>
 8005832:	bf00      	nop
 8005834:	0800a37c 	.word	0x0800a37c

08005838 <puts>:
 8005838:	4b02      	ldr	r3, [pc, #8]	; (8005844 <puts+0xc>)
 800583a:	4601      	mov	r1, r0
 800583c:	6818      	ldr	r0, [r3, #0]
 800583e:	f7ff bfad 	b.w	800579c <_puts_r>
 8005842:	bf00      	nop
 8005844:	20000030 	.word	0x20000030

08005848 <_sbrk_r>:
 8005848:	b538      	push	{r3, r4, r5, lr}
 800584a:	4c07      	ldr	r4, [pc, #28]	; (8005868 <_sbrk_r+0x20>)
 800584c:	2300      	movs	r3, #0
 800584e:	4605      	mov	r5, r0
 8005850:	4608      	mov	r0, r1
 8005852:	6023      	str	r3, [r4, #0]
 8005854:	f7ff fbac 	bl	8004fb0 <_sbrk>
 8005858:	1c43      	adds	r3, r0, #1
 800585a:	d000      	beq.n	800585e <_sbrk_r+0x16>
 800585c:	bd38      	pop	{r3, r4, r5, pc}
 800585e:	6823      	ldr	r3, [r4, #0]
 8005860:	2b00      	cmp	r3, #0
 8005862:	d0fb      	beq.n	800585c <_sbrk_r+0x14>
 8005864:	602b      	str	r3, [r5, #0]
 8005866:	bd38      	pop	{r3, r4, r5, pc}
 8005868:	20001454 	.word	0x20001454
 800586c:	00000000 	.word	0x00000000

08005870 <_vfprintf_r>:
 8005870:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005874:	b0d7      	sub	sp, #348	; 0x15c
 8005876:	461c      	mov	r4, r3
 8005878:	4689      	mov	r9, r1
 800587a:	4617      	mov	r7, r2
 800587c:	4605      	mov	r5, r0
 800587e:	9003      	str	r0, [sp, #12]
 8005880:	f003 fa46 	bl	8008d10 <_localeconv_r>
 8005884:	6803      	ldr	r3, [r0, #0]
 8005886:	9316      	str	r3, [sp, #88]	; 0x58
 8005888:	4618      	mov	r0, r3
 800588a:	f7fb fbb9 	bl	8001000 <strlen>
 800588e:	9408      	str	r4, [sp, #32]
 8005890:	9015      	str	r0, [sp, #84]	; 0x54
 8005892:	b11d      	cbz	r5, 800589c <_vfprintf_r+0x2c>
 8005894:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005896:	2b00      	cmp	r3, #0
 8005898:	f000 8107 	beq.w	8005aaa <_vfprintf_r+0x23a>
 800589c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80058a0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80058a4:	07c8      	lsls	r0, r1, #31
 80058a6:	b293      	uxth	r3, r2
 80058a8:	d402      	bmi.n	80058b0 <_vfprintf_r+0x40>
 80058aa:	0599      	lsls	r1, r3, #22
 80058ac:	f140 811f 	bpl.w	8005aee <_vfprintf_r+0x27e>
 80058b0:	049e      	lsls	r6, r3, #18
 80058b2:	d40a      	bmi.n	80058ca <_vfprintf_r+0x5a>
 80058b4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80058b8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80058bc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80058c0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80058c4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80058c8:	b29b      	uxth	r3, r3
 80058ca:	071d      	lsls	r5, r3, #28
 80058cc:	f140 80b2 	bpl.w	8005a34 <_vfprintf_r+0x1c4>
 80058d0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80058d4:	2a00      	cmp	r2, #0
 80058d6:	f000 80ad 	beq.w	8005a34 <_vfprintf_r+0x1c4>
 80058da:	f003 021a 	and.w	r2, r3, #26
 80058de:	2a0a      	cmp	r2, #10
 80058e0:	f000 80c9 	beq.w	8005a76 <_vfprintf_r+0x206>
 80058e4:	2300      	movs	r3, #0
 80058e6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8005b00 <_vfprintf_r+0x290>
 80058ea:	9310      	str	r3, [sp, #64]	; 0x40
 80058ec:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80058f0:	9317      	str	r3, [sp, #92]	; 0x5c
 80058f2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80058f6:	931b      	str	r3, [sp, #108]	; 0x6c
 80058f8:	9318      	str	r3, [sp, #96]	; 0x60
 80058fa:	9305      	str	r3, [sp, #20]
 80058fc:	ab2d      	add	r3, sp, #180	; 0xb4
 80058fe:	932a      	str	r3, [sp, #168]	; 0xa8
 8005900:	469b      	mov	fp, r3
 8005902:	783b      	ldrb	r3, [r7, #0]
 8005904:	f8cd 901c 	str.w	r9, [sp, #28]
 8005908:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800590c:	2b00      	cmp	r3, #0
 800590e:	f000 8259 	beq.w	8005dc4 <_vfprintf_r+0x554>
 8005912:	2b25      	cmp	r3, #37	; 0x25
 8005914:	463c      	mov	r4, r7
 8005916:	d102      	bne.n	800591e <_vfprintf_r+0xae>
 8005918:	e01d      	b.n	8005956 <_vfprintf_r+0xe6>
 800591a:	2b25      	cmp	r3, #37	; 0x25
 800591c:	d003      	beq.n	8005926 <_vfprintf_r+0xb6>
 800591e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8005922:	2b00      	cmp	r3, #0
 8005924:	d1f9      	bne.n	800591a <_vfprintf_r+0xaa>
 8005926:	1be5      	subs	r5, r4, r7
 8005928:	b18d      	cbz	r5, 800594e <_vfprintf_r+0xde>
 800592a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800592e:	3301      	adds	r3, #1
 8005930:	442a      	add	r2, r5
 8005932:	2b07      	cmp	r3, #7
 8005934:	f8cb 7000 	str.w	r7, [fp]
 8005938:	f8cb 5004 	str.w	r5, [fp, #4]
 800593c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8005940:	f300 80ca 	bgt.w	8005ad8 <_vfprintf_r+0x268>
 8005944:	f10b 0b08 	add.w	fp, fp, #8
 8005948:	9b05      	ldr	r3, [sp, #20]
 800594a:	442b      	add	r3, r5
 800594c:	9305      	str	r3, [sp, #20]
 800594e:	7823      	ldrb	r3, [r4, #0]
 8005950:	2b00      	cmp	r3, #0
 8005952:	f000 8237 	beq.w	8005dc4 <_vfprintf_r+0x554>
 8005956:	2300      	movs	r3, #0
 8005958:	7866      	ldrb	r6, [r4, #1]
 800595a:	9306      	str	r3, [sp, #24]
 800595c:	4698      	mov	r8, r3
 800595e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005962:	f104 0a01 	add.w	sl, r4, #1
 8005966:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800596a:	252b      	movs	r5, #43	; 0x2b
 800596c:	f10a 0a01 	add.w	sl, sl, #1
 8005970:	f1a6 0320 	sub.w	r3, r6, #32
 8005974:	2b5a      	cmp	r3, #90	; 0x5a
 8005976:	f200 842a 	bhi.w	80061ce <_vfprintf_r+0x95e>
 800597a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800597e:	03aa      	.short	0x03aa
 8005980:	04280428 	.word	0x04280428
 8005984:	0428029c 	.word	0x0428029c
 8005988:	04280428 	.word	0x04280428
 800598c:	042802a7 	.word	0x042802a7
 8005990:	02c60428 	.word	0x02c60428
 8005994:	042802d2 	.word	0x042802d2
 8005998:	02dc02d7 	.word	0x02dc02d7
 800599c:	02f60428 	.word	0x02f60428
 80059a0:	026d026d 	.word	0x026d026d
 80059a4:	026d026d 	.word	0x026d026d
 80059a8:	026d026d 	.word	0x026d026d
 80059ac:	026d026d 	.word	0x026d026d
 80059b0:	0428026d 	.word	0x0428026d
 80059b4:	04280428 	.word	0x04280428
 80059b8:	04280428 	.word	0x04280428
 80059bc:	04280428 	.word	0x04280428
 80059c0:	042802fb 	.word	0x042802fb
 80059c4:	03f3033c 	.word	0x03f3033c
 80059c8:	02fb02fb 	.word	0x02fb02fb
 80059cc:	042802fb 	.word	0x042802fb
 80059d0:	04280428 	.word	0x04280428
 80059d4:	03ee0428 	.word	0x03ee0428
 80059d8:	04280428 	.word	0x04280428
 80059dc:	0428009a 	.word	0x0428009a
 80059e0:	04280428 	.word	0x04280428
 80059e4:	04280350 	.word	0x04280350
 80059e8:	04280379 	.word	0x04280379
 80059ec:	03900428 	.word	0x03900428
 80059f0:	04280428 	.word	0x04280428
 80059f4:	04280428 	.word	0x04280428
 80059f8:	04280428 	.word	0x04280428
 80059fc:	04280428 	.word	0x04280428
 8005a00:	042802fb 	.word	0x042802fb
 8005a04:	00c5033c 	.word	0x00c5033c
 8005a08:	02fb02fb 	.word	0x02fb02fb
 8005a0c:	03d102fb 	.word	0x03d102fb
 8005a10:	007000c5 	.word	0x007000c5
 8005a14:	03b50428 	.word	0x03b50428
 8005a18:	03c20428 	.word	0x03c20428
 8005a1c:	03de009c 	.word	0x03de009c
 8005a20:	04280070 	.word	0x04280070
 8005a24:	00720350 	.word	0x00720350
 8005a28:	0428022c 	.word	0x0428022c
 8005a2c:	027c0428 	.word	0x027c0428
 8005a30:	00720428 	.word	0x00720428
 8005a34:	4649      	mov	r1, r9
 8005a36:	9803      	ldr	r0, [sp, #12]
 8005a38:	f001 fc9a 	bl	8007370 <__swsetup_r>
 8005a3c:	b1a0      	cbz	r0, 8005a68 <_vfprintf_r+0x1f8>
 8005a3e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8005a42:	07d8      	lsls	r0, r3, #31
 8005a44:	d404      	bmi.n	8005a50 <_vfprintf_r+0x1e0>
 8005a46:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005a4a:	0599      	lsls	r1, r3, #22
 8005a4c:	f140 83b7 	bpl.w	80061be <_vfprintf_r+0x94e>
 8005a50:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005a54:	9305      	str	r3, [sp, #20]
 8005a56:	9805      	ldr	r0, [sp, #20]
 8005a58:	b057      	add	sp, #348	; 0x15c
 8005a5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a5e:	f048 0820 	orr.w	r8, r8, #32
 8005a62:	f89a 6000 	ldrb.w	r6, [sl]
 8005a66:	e781      	b.n	800596c <_vfprintf_r+0xfc>
 8005a68:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005a6c:	f003 021a 	and.w	r2, r3, #26
 8005a70:	2a0a      	cmp	r2, #10
 8005a72:	f47f af37 	bne.w	80058e4 <_vfprintf_r+0x74>
 8005a76:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8005a7a:	2a00      	cmp	r2, #0
 8005a7c:	f6ff af32 	blt.w	80058e4 <_vfprintf_r+0x74>
 8005a80:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005a84:	07d2      	lsls	r2, r2, #31
 8005a86:	d405      	bmi.n	8005a94 <_vfprintf_r+0x224>
 8005a88:	059b      	lsls	r3, r3, #22
 8005a8a:	d403      	bmi.n	8005a94 <_vfprintf_r+0x224>
 8005a8c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005a90:	f003 f952 	bl	8008d38 <__retarget_lock_release_recursive>
 8005a94:	4623      	mov	r3, r4
 8005a96:	463a      	mov	r2, r7
 8005a98:	4649      	mov	r1, r9
 8005a9a:	9803      	ldr	r0, [sp, #12]
 8005a9c:	f001 fc26 	bl	80072ec <__sbprintf>
 8005aa0:	9005      	str	r0, [sp, #20]
 8005aa2:	9805      	ldr	r0, [sp, #20]
 8005aa4:	b057      	add	sp, #348	; 0x15c
 8005aa6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005aaa:	9803      	ldr	r0, [sp, #12]
 8005aac:	f002 fdf2 	bl	8008694 <__sinit>
 8005ab0:	e6f4      	b.n	800589c <_vfprintf_r+0x2c>
 8005ab2:	f048 0810 	orr.w	r8, r8, #16
 8005ab6:	f018 0f20 	tst.w	r8, #32
 8005aba:	f000 836c 	beq.w	8006196 <_vfprintf_r+0x926>
 8005abe:	9c08      	ldr	r4, [sp, #32]
 8005ac0:	3407      	adds	r4, #7
 8005ac2:	f024 0307 	bic.w	r3, r4, #7
 8005ac6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005aca:	f103 0208 	add.w	r2, r3, #8
 8005ace:	9208      	str	r2, [sp, #32]
 8005ad0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005ad4:	2200      	movs	r2, #0
 8005ad6:	e18c      	b.n	8005df2 <_vfprintf_r+0x582>
 8005ad8:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ada:	9907      	ldr	r1, [sp, #28]
 8005adc:	9803      	ldr	r0, [sp, #12]
 8005ade:	f003 ffa7 	bl	8009a30 <__sprint_r>
 8005ae2:	2800      	cmp	r0, #0
 8005ae4:	f041 8376 	bne.w	80071d4 <_vfprintf_r+0x1964>
 8005ae8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005aec:	e72c      	b.n	8005948 <_vfprintf_r+0xd8>
 8005aee:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005af2:	f003 f91f 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8005af6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005afa:	b293      	uxth	r3, r2
 8005afc:	e6d8      	b.n	80058b0 <_vfprintf_r+0x40>
 8005afe:	bf00      	nop
	...
 8005b08:	4643      	mov	r3, r8
 8005b0a:	069f      	lsls	r7, r3, #26
 8005b0c:	f140 832f 	bpl.w	800616e <_vfprintf_r+0x8fe>
 8005b10:	9c08      	ldr	r4, [sp, #32]
 8005b12:	3407      	adds	r4, #7
 8005b14:	f024 0407 	bic.w	r4, r4, #7
 8005b18:	e9d4 0100 	ldrd	r0, r1, [r4]
 8005b1c:	f104 0208 	add.w	r2, r4, #8
 8005b20:	9208      	str	r2, [sp, #32]
 8005b22:	4604      	mov	r4, r0
 8005b24:	460d      	mov	r5, r1
 8005b26:	2800      	cmp	r0, #0
 8005b28:	f171 0200 	sbcs.w	r2, r1, #0
 8005b2c:	da05      	bge.n	8005b3a <_vfprintf_r+0x2ca>
 8005b2e:	222d      	movs	r2, #45	; 0x2d
 8005b30:	4264      	negs	r4, r4
 8005b32:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8005b36:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005b3a:	aa56      	add	r2, sp, #344	; 0x158
 8005b3c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005b40:	9204      	str	r2, [sp, #16]
 8005b42:	f000 84b2 	beq.w	80064aa <_vfprintf_r+0xc3a>
 8005b46:	2201      	movs	r2, #1
 8005b48:	ea54 0105 	orrs.w	r1, r4, r5
 8005b4c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8005b50:	f040 8159 	bne.w	8005e06 <_vfprintf_r+0x596>
 8005b54:	f1b9 0f00 	cmp.w	r9, #0
 8005b58:	f040 8619 	bne.w	800678e <_vfprintf_r+0xf1e>
 8005b5c:	2a00      	cmp	r2, #0
 8005b5e:	f040 8508 	bne.w	8006572 <_vfprintf_r+0xd02>
 8005b62:	f013 0301 	ands.w	r3, r3, #1
 8005b66:	af56      	add	r7, sp, #344	; 0x158
 8005b68:	9309      	str	r3, [sp, #36]	; 0x24
 8005b6a:	d002      	beq.n	8005b72 <_vfprintf_r+0x302>
 8005b6c:	2330      	movs	r3, #48	; 0x30
 8005b6e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005b72:	2300      	movs	r3, #0
 8005b74:	930a      	str	r3, [sp, #40]	; 0x28
 8005b76:	930f      	str	r3, [sp, #60]	; 0x3c
 8005b78:	9314      	str	r3, [sp, #80]	; 0x50
 8005b7a:	9311      	str	r3, [sp, #68]	; 0x44
 8005b7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005b7e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005b82:	454b      	cmp	r3, r9
 8005b84:	bfb8      	it	lt
 8005b86:	464b      	movlt	r3, r9
 8005b88:	9304      	str	r3, [sp, #16]
 8005b8a:	b112      	cbz	r2, 8005b92 <_vfprintf_r+0x322>
 8005b8c:	9b04      	ldr	r3, [sp, #16]
 8005b8e:	3301      	adds	r3, #1
 8005b90:	9304      	str	r3, [sp, #16]
 8005b92:	f018 0302 	ands.w	r3, r8, #2
 8005b96:	930b      	str	r3, [sp, #44]	; 0x2c
 8005b98:	d002      	beq.n	8005ba0 <_vfprintf_r+0x330>
 8005b9a:	9b04      	ldr	r3, [sp, #16]
 8005b9c:	3302      	adds	r3, #2
 8005b9e:	9304      	str	r3, [sp, #16]
 8005ba0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005ba4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005ba6:	930e      	str	r3, [sp, #56]	; 0x38
 8005ba8:	d13f      	bne.n	8005c2a <_vfprintf_r+0x3ba>
 8005baa:	9b06      	ldr	r3, [sp, #24]
 8005bac:	9904      	ldr	r1, [sp, #16]
 8005bae:	1a5d      	subs	r5, r3, r1
 8005bb0:	2d00      	cmp	r5, #0
 8005bb2:	dd3a      	ble.n	8005c2a <_vfprintf_r+0x3ba>
 8005bb4:	2d10      	cmp	r5, #16
 8005bb6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005bb8:	dd29      	ble.n	8005c0e <_vfprintf_r+0x39e>
 8005bba:	4659      	mov	r1, fp
 8005bbc:	4620      	mov	r0, r4
 8005bbe:	9620      	str	r6, [sp, #128]	; 0x80
 8005bc0:	2310      	movs	r3, #16
 8005bc2:	9c03      	ldr	r4, [sp, #12]
 8005bc4:	9e07      	ldr	r6, [sp, #28]
 8005bc6:	46bb      	mov	fp, r7
 8005bc8:	e004      	b.n	8005bd4 <_vfprintf_r+0x364>
 8005bca:	3d10      	subs	r5, #16
 8005bcc:	2d10      	cmp	r5, #16
 8005bce:	f101 0108 	add.w	r1, r1, #8
 8005bd2:	dd18      	ble.n	8005c06 <_vfprintf_r+0x396>
 8005bd4:	3201      	adds	r2, #1
 8005bd6:	4fba      	ldr	r7, [pc, #744]	; (8005ec0 <_vfprintf_r+0x650>)
 8005bd8:	3010      	adds	r0, #16
 8005bda:	2a07      	cmp	r2, #7
 8005bdc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005be0:	e9c1 7300 	strd	r7, r3, [r1]
 8005be4:	ddf1      	ble.n	8005bca <_vfprintf_r+0x35a>
 8005be6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005be8:	4631      	mov	r1, r6
 8005bea:	4620      	mov	r0, r4
 8005bec:	930c      	str	r3, [sp, #48]	; 0x30
 8005bee:	f003 ff1f 	bl	8009a30 <__sprint_r>
 8005bf2:	2800      	cmp	r0, #0
 8005bf4:	f040 843d 	bne.w	8006472 <_vfprintf_r+0xc02>
 8005bf8:	3d10      	subs	r5, #16
 8005bfa:	2d10      	cmp	r5, #16
 8005bfc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005c00:	a92d      	add	r1, sp, #180	; 0xb4
 8005c02:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005c04:	dce6      	bgt.n	8005bd4 <_vfprintf_r+0x364>
 8005c06:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8005c08:	465f      	mov	r7, fp
 8005c0a:	4604      	mov	r4, r0
 8005c0c:	468b      	mov	fp, r1
 8005c0e:	3201      	adds	r2, #1
 8005c10:	4bab      	ldr	r3, [pc, #684]	; (8005ec0 <_vfprintf_r+0x650>)
 8005c12:	442c      	add	r4, r5
 8005c14:	2a07      	cmp	r2, #7
 8005c16:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005c1a:	e9cb 3500 	strd	r3, r5, [fp]
 8005c1e:	f300 84ff 	bgt.w	8006620 <_vfprintf_r+0xdb0>
 8005c22:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005c26:	f10b 0b08 	add.w	fp, fp, #8
 8005c2a:	b172      	cbz	r2, 8005c4a <_vfprintf_r+0x3da>
 8005c2c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005c2e:	3201      	adds	r2, #1
 8005c30:	3401      	adds	r4, #1
 8005c32:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8005c36:	2101      	movs	r1, #1
 8005c38:	2a07      	cmp	r2, #7
 8005c3a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005c3e:	e9cb 0100 	strd	r0, r1, [fp]
 8005c42:	f300 8418 	bgt.w	8006476 <_vfprintf_r+0xc06>
 8005c46:	f10b 0b08 	add.w	fp, fp, #8
 8005c4a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005c4c:	b16b      	cbz	r3, 8005c6a <_vfprintf_r+0x3fa>
 8005c4e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005c50:	3301      	adds	r3, #1
 8005c52:	3402      	adds	r4, #2
 8005c54:	a923      	add	r1, sp, #140	; 0x8c
 8005c56:	2202      	movs	r2, #2
 8005c58:	2b07      	cmp	r3, #7
 8005c5a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005c5e:	e9cb 1200 	strd	r1, r2, [fp]
 8005c62:	f300 8415 	bgt.w	8006490 <_vfprintf_r+0xc20>
 8005c66:	f10b 0b08 	add.w	fp, fp, #8
 8005c6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005c6c:	2b80      	cmp	r3, #128	; 0x80
 8005c6e:	f000 8331 	beq.w	80062d4 <_vfprintf_r+0xa64>
 8005c72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005c74:	eba9 0503 	sub.w	r5, r9, r3
 8005c78:	2d00      	cmp	r5, #0
 8005c7a:	dd37      	ble.n	8005cec <_vfprintf_r+0x47c>
 8005c7c:	2d10      	cmp	r5, #16
 8005c7e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005c80:	4b90      	ldr	r3, [pc, #576]	; (8005ec4 <_vfprintf_r+0x654>)
 8005c82:	dd28      	ble.n	8005cd6 <_vfprintf_r+0x466>
 8005c84:	4659      	mov	r1, fp
 8005c86:	4620      	mov	r0, r4
 8005c88:	46bb      	mov	fp, r7
 8005c8a:	f04f 0910 	mov.w	r9, #16
 8005c8e:	4637      	mov	r7, r6
 8005c90:	461c      	mov	r4, r3
 8005c92:	9e07      	ldr	r6, [sp, #28]
 8005c94:	e004      	b.n	8005ca0 <_vfprintf_r+0x430>
 8005c96:	3d10      	subs	r5, #16
 8005c98:	2d10      	cmp	r5, #16
 8005c9a:	f101 0108 	add.w	r1, r1, #8
 8005c9e:	dd15      	ble.n	8005ccc <_vfprintf_r+0x45c>
 8005ca0:	3201      	adds	r2, #1
 8005ca2:	3010      	adds	r0, #16
 8005ca4:	2a07      	cmp	r2, #7
 8005ca6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005caa:	e9c1 4900 	strd	r4, r9, [r1]
 8005cae:	ddf2      	ble.n	8005c96 <_vfprintf_r+0x426>
 8005cb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005cb2:	4631      	mov	r1, r6
 8005cb4:	9803      	ldr	r0, [sp, #12]
 8005cb6:	f003 febb 	bl	8009a30 <__sprint_r>
 8005cba:	2800      	cmp	r0, #0
 8005cbc:	f040 83d9 	bne.w	8006472 <_vfprintf_r+0xc02>
 8005cc0:	3d10      	subs	r5, #16
 8005cc2:	2d10      	cmp	r5, #16
 8005cc4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005cc8:	a92d      	add	r1, sp, #180	; 0xb4
 8005cca:	dce9      	bgt.n	8005ca0 <_vfprintf_r+0x430>
 8005ccc:	463e      	mov	r6, r7
 8005cce:	4623      	mov	r3, r4
 8005cd0:	465f      	mov	r7, fp
 8005cd2:	4604      	mov	r4, r0
 8005cd4:	468b      	mov	fp, r1
 8005cd6:	3201      	adds	r2, #1
 8005cd8:	442c      	add	r4, r5
 8005cda:	2a07      	cmp	r2, #7
 8005cdc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005ce0:	e9cb 3500 	strd	r3, r5, [fp]
 8005ce4:	f300 83ef 	bgt.w	80064c6 <_vfprintf_r+0xc56>
 8005ce8:	f10b 0b08 	add.w	fp, fp, #8
 8005cec:	f418 7f80 	tst.w	r8, #256	; 0x100
 8005cf0:	f040 8280 	bne.w	80061f4 <_vfprintf_r+0x984>
 8005cf4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005cf6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005cf8:	f8cb 7000 	str.w	r7, [fp]
 8005cfc:	3301      	adds	r3, #1
 8005cfe:	4414      	add	r4, r2
 8005d00:	2b07      	cmp	r3, #7
 8005d02:	942c      	str	r4, [sp, #176]	; 0xb0
 8005d04:	f8cb 2004 	str.w	r2, [fp, #4]
 8005d08:	932b      	str	r3, [sp, #172]	; 0xac
 8005d0a:	f300 8392 	bgt.w	8006432 <_vfprintf_r+0xbc2>
 8005d0e:	f10b 0b08 	add.w	fp, fp, #8
 8005d12:	f018 0f04 	tst.w	r8, #4
 8005d16:	d03b      	beq.n	8005d90 <_vfprintf_r+0x520>
 8005d18:	9b06      	ldr	r3, [sp, #24]
 8005d1a:	9a04      	ldr	r2, [sp, #16]
 8005d1c:	1a9d      	subs	r5, r3, r2
 8005d1e:	2d00      	cmp	r5, #0
 8005d20:	dd36      	ble.n	8005d90 <_vfprintf_r+0x520>
 8005d22:	2d10      	cmp	r5, #16
 8005d24:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005d26:	dd21      	ble.n	8005d6c <_vfprintf_r+0x4fc>
 8005d28:	2610      	movs	r6, #16
 8005d2a:	9f03      	ldr	r7, [sp, #12]
 8005d2c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8005d30:	e004      	b.n	8005d3c <_vfprintf_r+0x4cc>
 8005d32:	3d10      	subs	r5, #16
 8005d34:	2d10      	cmp	r5, #16
 8005d36:	f10b 0b08 	add.w	fp, fp, #8
 8005d3a:	dd17      	ble.n	8005d6c <_vfprintf_r+0x4fc>
 8005d3c:	3301      	adds	r3, #1
 8005d3e:	4a60      	ldr	r2, [pc, #384]	; (8005ec0 <_vfprintf_r+0x650>)
 8005d40:	3410      	adds	r4, #16
 8005d42:	2b07      	cmp	r3, #7
 8005d44:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005d48:	e9cb 2600 	strd	r2, r6, [fp]
 8005d4c:	ddf1      	ble.n	8005d32 <_vfprintf_r+0x4c2>
 8005d4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d50:	4641      	mov	r1, r8
 8005d52:	4638      	mov	r0, r7
 8005d54:	f003 fe6c 	bl	8009a30 <__sprint_r>
 8005d58:	2800      	cmp	r0, #0
 8005d5a:	f040 856c 	bne.w	8006836 <_vfprintf_r+0xfc6>
 8005d5e:	3d10      	subs	r5, #16
 8005d60:	2d10      	cmp	r5, #16
 8005d62:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005d66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005d6a:	dce7      	bgt.n	8005d3c <_vfprintf_r+0x4cc>
 8005d6c:	3301      	adds	r3, #1
 8005d6e:	4a54      	ldr	r2, [pc, #336]	; (8005ec0 <_vfprintf_r+0x650>)
 8005d70:	442c      	add	r4, r5
 8005d72:	2b07      	cmp	r3, #7
 8005d74:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005d78:	e9cb 2500 	strd	r2, r5, [fp]
 8005d7c:	dd08      	ble.n	8005d90 <_vfprintf_r+0x520>
 8005d7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d80:	9907      	ldr	r1, [sp, #28]
 8005d82:	9803      	ldr	r0, [sp, #12]
 8005d84:	f003 fe54 	bl	8009a30 <__sprint_r>
 8005d88:	2800      	cmp	r0, #0
 8005d8a:	f040 82e9 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8005d8e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005d90:	9904      	ldr	r1, [sp, #16]
 8005d92:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8005d96:	428a      	cmp	r2, r1
 8005d98:	bfac      	ite	ge
 8005d9a:	189b      	addge	r3, r3, r2
 8005d9c:	185b      	addlt	r3, r3, r1
 8005d9e:	9305      	str	r3, [sp, #20]
 8005da0:	2c00      	cmp	r4, #0
 8005da2:	f040 82d5 	bne.w	8006350 <_vfprintf_r+0xae0>
 8005da6:	2300      	movs	r3, #0
 8005da8:	932b      	str	r3, [sp, #172]	; 0xac
 8005daa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005dac:	b11b      	cbz	r3, 8005db6 <_vfprintf_r+0x546>
 8005dae:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005db0:	9803      	ldr	r0, [sp, #12]
 8005db2:	f002 fd11 	bl	80087d8 <_free_r>
 8005db6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005dba:	4657      	mov	r7, sl
 8005dbc:	783b      	ldrb	r3, [r7, #0]
 8005dbe:	2b00      	cmp	r3, #0
 8005dc0:	f47f ada7 	bne.w	8005912 <_vfprintf_r+0xa2>
 8005dc4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005dc6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005dca:	2b00      	cmp	r3, #0
 8005dcc:	f041 80e7 	bne.w	8006f9e <_vfprintf_r+0x172e>
 8005dd0:	2300      	movs	r3, #0
 8005dd2:	932b      	str	r3, [sp, #172]	; 0xac
 8005dd4:	e2cb      	b.n	800636e <_vfprintf_r+0xafe>
 8005dd6:	4643      	mov	r3, r8
 8005dd8:	069a      	lsls	r2, r3, #26
 8005dda:	f140 814e 	bpl.w	800607a <_vfprintf_r+0x80a>
 8005dde:	9c08      	ldr	r4, [sp, #32]
 8005de0:	3407      	adds	r4, #7
 8005de2:	f024 0207 	bic.w	r2, r4, #7
 8005de6:	f102 0108 	add.w	r1, r2, #8
 8005dea:	e9d2 4500 	ldrd	r4, r5, [r2]
 8005dee:	9108      	str	r1, [sp, #32]
 8005df0:	2201      	movs	r2, #1
 8005df2:	2100      	movs	r1, #0
 8005df4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8005df8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005dfc:	a956      	add	r1, sp, #344	; 0x158
 8005dfe:	9104      	str	r1, [sp, #16]
 8005e00:	f47f aea2 	bne.w	8005b48 <_vfprintf_r+0x2d8>
 8005e04:	4698      	mov	r8, r3
 8005e06:	2a01      	cmp	r2, #1
 8005e08:	f000 8350 	beq.w	80064ac <_vfprintf_r+0xc3c>
 8005e0c:	2a02      	cmp	r2, #2
 8005e0e:	f000 831b 	beq.w	8006448 <_vfprintf_r+0xbd8>
 8005e12:	a956      	add	r1, sp, #344	; 0x158
 8005e14:	e000      	b.n	8005e18 <_vfprintf_r+0x5a8>
 8005e16:	4639      	mov	r1, r7
 8005e18:	08e2      	lsrs	r2, r4, #3
 8005e1a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8005e1e:	08e8      	lsrs	r0, r5, #3
 8005e20:	f004 0307 	and.w	r3, r4, #7
 8005e24:	4605      	mov	r5, r0
 8005e26:	4614      	mov	r4, r2
 8005e28:	3330      	adds	r3, #48	; 0x30
 8005e2a:	ea54 0205 	orrs.w	r2, r4, r5
 8005e2e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8005e32:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8005e36:	d1ee      	bne.n	8005e16 <_vfprintf_r+0x5a6>
 8005e38:	f018 0f01 	tst.w	r8, #1
 8005e3c:	f000 8314 	beq.w	8006468 <_vfprintf_r+0xbf8>
 8005e40:	2b30      	cmp	r3, #48	; 0x30
 8005e42:	f000 8311 	beq.w	8006468 <_vfprintf_r+0xbf8>
 8005e46:	9a04      	ldr	r2, [sp, #16]
 8005e48:	3902      	subs	r1, #2
 8005e4a:	2330      	movs	r3, #48	; 0x30
 8005e4c:	1a52      	subs	r2, r2, r1
 8005e4e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8005e52:	9209      	str	r2, [sp, #36]	; 0x24
 8005e54:	460f      	mov	r7, r1
 8005e56:	e68c      	b.n	8005b72 <_vfprintf_r+0x302>
 8005e58:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005e5c:	2200      	movs	r2, #0
 8005e5e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005e62:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8005e66:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8005e6a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005e6e:	2b09      	cmp	r3, #9
 8005e70:	d9f5      	bls.n	8005e5e <_vfprintf_r+0x5ee>
 8005e72:	9206      	str	r2, [sp, #24]
 8005e74:	e57c      	b.n	8005970 <_vfprintf_r+0x100>
 8005e76:	4b14      	ldr	r3, [pc, #80]	; (8005ec8 <_vfprintf_r+0x658>)
 8005e78:	9317      	str	r3, [sp, #92]	; 0x5c
 8005e7a:	f018 0f20 	tst.w	r8, #32
 8005e7e:	f000 8114 	beq.w	80060aa <_vfprintf_r+0x83a>
 8005e82:	9c08      	ldr	r4, [sp, #32]
 8005e84:	3407      	adds	r4, #7
 8005e86:	f024 0307 	bic.w	r3, r4, #7
 8005e8a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005e8e:	f103 0208 	add.w	r2, r3, #8
 8005e92:	9208      	str	r2, [sp, #32]
 8005e94:	f018 0f01 	tst.w	r8, #1
 8005e98:	d009      	beq.n	8005eae <_vfprintf_r+0x63e>
 8005e9a:	ea54 0305 	orrs.w	r3, r4, r5
 8005e9e:	d006      	beq.n	8005eae <_vfprintf_r+0x63e>
 8005ea0:	2330      	movs	r3, #48	; 0x30
 8005ea2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8005ea6:	f048 0802 	orr.w	r8, r8, #2
 8005eaa:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005eae:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005eb2:	2202      	movs	r2, #2
 8005eb4:	e79d      	b.n	8005df2 <_vfprintf_r+0x582>
 8005eb6:	f048 0801 	orr.w	r8, r8, #1
 8005eba:	f89a 6000 	ldrb.w	r6, [sl]
 8005ebe:	e555      	b.n	800596c <_vfprintf_r+0xfc>
 8005ec0:	0800a3c4 	.word	0x0800a3c4
 8005ec4:	0800a3d4 	.word	0x0800a3d4
 8005ec8:	0800a390 	.word	0x0800a390
 8005ecc:	9e03      	ldr	r6, [sp, #12]
 8005ece:	4630      	mov	r0, r6
 8005ed0:	f002 ff1e 	bl	8008d10 <_localeconv_r>
 8005ed4:	6843      	ldr	r3, [r0, #4]
 8005ed6:	9318      	str	r3, [sp, #96]	; 0x60
 8005ed8:	4618      	mov	r0, r3
 8005eda:	f7fb f891 	bl	8001000 <strlen>
 8005ede:	901b      	str	r0, [sp, #108]	; 0x6c
 8005ee0:	4604      	mov	r4, r0
 8005ee2:	4630      	mov	r0, r6
 8005ee4:	f002 ff14 	bl	8008d10 <_localeconv_r>
 8005ee8:	6883      	ldr	r3, [r0, #8]
 8005eea:	931a      	str	r3, [sp, #104]	; 0x68
 8005eec:	2c00      	cmp	r4, #0
 8005eee:	f43f adb8 	beq.w	8005a62 <_vfprintf_r+0x1f2>
 8005ef2:	f89a 6000 	ldrb.w	r6, [sl]
 8005ef6:	2b00      	cmp	r3, #0
 8005ef8:	f43f ad38 	beq.w	800596c <_vfprintf_r+0xfc>
 8005efc:	781b      	ldrb	r3, [r3, #0]
 8005efe:	2b00      	cmp	r3, #0
 8005f00:	f43f ad34 	beq.w	800596c <_vfprintf_r+0xfc>
 8005f04:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8005f08:	e530      	b.n	800596c <_vfprintf_r+0xfc>
 8005f0a:	9b08      	ldr	r3, [sp, #32]
 8005f0c:	f89a 6000 	ldrb.w	r6, [sl]
 8005f10:	681a      	ldr	r2, [r3, #0]
 8005f12:	9206      	str	r2, [sp, #24]
 8005f14:	2a00      	cmp	r2, #0
 8005f16:	f103 0304 	add.w	r3, r3, #4
 8005f1a:	f2c0 8697 	blt.w	8006c4c <_vfprintf_r+0x13dc>
 8005f1e:	9308      	str	r3, [sp, #32]
 8005f20:	e524      	b.n	800596c <_vfprintf_r+0xfc>
 8005f22:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8005f26:	f89a 6000 	ldrb.w	r6, [sl]
 8005f2a:	e51f      	b.n	800596c <_vfprintf_r+0xfc>
 8005f2c:	f89a 6000 	ldrb.w	r6, [sl]
 8005f30:	f048 0804 	orr.w	r8, r8, #4
 8005f34:	e51a      	b.n	800596c <_vfprintf_r+0xfc>
 8005f36:	f89a 6000 	ldrb.w	r6, [sl]
 8005f3a:	2e2a      	cmp	r6, #42	; 0x2a
 8005f3c:	f10a 0201 	add.w	r2, sl, #1
 8005f40:	f001 81b0 	beq.w	80072a4 <_vfprintf_r+0x1a34>
 8005f44:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005f48:	2b09      	cmp	r3, #9
 8005f4a:	4692      	mov	sl, r2
 8005f4c:	f04f 0900 	mov.w	r9, #0
 8005f50:	f63f ad0e 	bhi.w	8005970 <_vfprintf_r+0x100>
 8005f54:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005f58:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8005f5c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8005f60:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005f64:	2b09      	cmp	r3, #9
 8005f66:	d9f5      	bls.n	8005f54 <_vfprintf_r+0x6e4>
 8005f68:	e502      	b.n	8005970 <_vfprintf_r+0x100>
 8005f6a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8005f6e:	f89a 6000 	ldrb.w	r6, [sl]
 8005f72:	e4fb      	b.n	800596c <_vfprintf_r+0xfc>
 8005f74:	9c08      	ldr	r4, [sp, #32]
 8005f76:	3407      	adds	r4, #7
 8005f78:	f024 0407 	bic.w	r4, r4, #7
 8005f7c:	ed94 7b00 	vldr	d7, [r4]
 8005f80:	ec52 1b17 	vmov	r1, r2, d7
 8005f84:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005f88:	931d      	str	r3, [sp, #116]	; 0x74
 8005f8a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8005f8e:	3408      	adds	r4, #8
 8005f90:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005f94:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005f98:	4bba      	ldr	r3, [pc, #744]	; (8006284 <_vfprintf_r+0xa14>)
 8005f9a:	9408      	str	r4, [sp, #32]
 8005f9c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005fa0:	f7fb f8ee 	bl	8001180 <__aeabi_dcmpun>
 8005fa4:	2800      	cmp	r0, #0
 8005fa6:	f040 846f 	bne.w	8006888 <_vfprintf_r+0x1018>
 8005faa:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005fae:	4bb5      	ldr	r3, [pc, #724]	; (8006284 <_vfprintf_r+0xa14>)
 8005fb0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005fb4:	f7fa fd5c 	bl	8000a70 <__aeabi_dcmple>
 8005fb8:	2800      	cmp	r0, #0
 8005fba:	f040 8465 	bne.w	8006888 <_vfprintf_r+0x1018>
 8005fbe:	2200      	movs	r2, #0
 8005fc0:	2300      	movs	r3, #0
 8005fc2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005fc6:	f7fa fd49 	bl	8000a5c <__aeabi_dcmplt>
 8005fca:	2800      	cmp	r0, #0
 8005fcc:	f040 855b 	bne.w	8006a86 <_vfprintf_r+0x1216>
 8005fd0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005fd4:	4fac      	ldr	r7, [pc, #688]	; (8006288 <_vfprintf_r+0xa18>)
 8005fd6:	4bad      	ldr	r3, [pc, #692]	; (800628c <_vfprintf_r+0xa1c>)
 8005fd8:	2000      	movs	r0, #0
 8005fda:	2103      	movs	r1, #3
 8005fdc:	9104      	str	r1, [sp, #16]
 8005fde:	900a      	str	r0, [sp, #40]	; 0x28
 8005fe0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8005fe4:	2e47      	cmp	r6, #71	; 0x47
 8005fe6:	bfd8      	it	le
 8005fe8:	461f      	movle	r7, r3
 8005fea:	9109      	str	r1, [sp, #36]	; 0x24
 8005fec:	4681      	mov	r9, r0
 8005fee:	900f      	str	r0, [sp, #60]	; 0x3c
 8005ff0:	9014      	str	r0, [sp, #80]	; 0x50
 8005ff2:	9011      	str	r0, [sp, #68]	; 0x44
 8005ff4:	e5c9      	b.n	8005b8a <_vfprintf_r+0x31a>
 8005ff6:	9808      	ldr	r0, [sp, #32]
 8005ff8:	2300      	movs	r3, #0
 8005ffa:	6801      	ldr	r1, [r0, #0]
 8005ffc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8006000:	461a      	mov	r2, r3
 8006002:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8006006:	2301      	movs	r3, #1
 8006008:	1d01      	adds	r1, r0, #4
 800600a:	9304      	str	r3, [sp, #16]
 800600c:	920a      	str	r2, [sp, #40]	; 0x28
 800600e:	4691      	mov	r9, r2
 8006010:	920f      	str	r2, [sp, #60]	; 0x3c
 8006012:	9214      	str	r2, [sp, #80]	; 0x50
 8006014:	9211      	str	r2, [sp, #68]	; 0x44
 8006016:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800601a:	af3d      	add	r7, sp, #244	; 0xf4
 800601c:	e5b9      	b.n	8005b92 <_vfprintf_r+0x322>
 800601e:	9b08      	ldr	r3, [sp, #32]
 8006020:	681f      	ldr	r7, [r3, #0]
 8006022:	2500      	movs	r5, #0
 8006024:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8006028:	1d1c      	adds	r4, r3, #4
 800602a:	2f00      	cmp	r7, #0
 800602c:	f000 8639 	beq.w	8006ca2 <_vfprintf_r+0x1432>
 8006030:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006034:	f000 8711 	beq.w	8006e5a <_vfprintf_r+0x15ea>
 8006038:	464a      	mov	r2, r9
 800603a:	4629      	mov	r1, r5
 800603c:	4638      	mov	r0, r7
 800603e:	f7fb f84f 	bl	80010e0 <memchr>
 8006042:	900a      	str	r0, [sp, #40]	; 0x28
 8006044:	2800      	cmp	r0, #0
 8006046:	f000 85e7 	beq.w	8006c18 <_vfprintf_r+0x13a8>
 800604a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800604c:	1bdb      	subs	r3, r3, r7
 800604e:	9309      	str	r3, [sp, #36]	; 0x24
 8006050:	46a9      	mov	r9, r5
 8006052:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006056:	9408      	str	r4, [sp, #32]
 8006058:	9304      	str	r3, [sp, #16]
 800605a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800605e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8006062:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006066:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800606a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800606e:	e58c      	b.n	8005b8a <_vfprintf_r+0x31a>
 8006070:	f048 0310 	orr.w	r3, r8, #16
 8006074:	069a      	lsls	r2, r3, #26
 8006076:	f53f aeb2 	bmi.w	8005dde <_vfprintf_r+0x56e>
 800607a:	9a08      	ldr	r2, [sp, #32]
 800607c:	06df      	lsls	r7, r3, #27
 800607e:	f102 0104 	add.w	r1, r2, #4
 8006082:	f100 837e 	bmi.w	8006782 <_vfprintf_r+0xf12>
 8006086:	065d      	lsls	r5, r3, #25
 8006088:	9a08      	ldr	r2, [sp, #32]
 800608a:	f100 84e4 	bmi.w	8006a56 <_vfprintf_r+0x11e6>
 800608e:	059c      	lsls	r4, r3, #22
 8006090:	f140 8377 	bpl.w	8006782 <_vfprintf_r+0xf12>
 8006094:	7814      	ldrb	r4, [r2, #0]
 8006096:	9108      	str	r1, [sp, #32]
 8006098:	2500      	movs	r5, #0
 800609a:	2201      	movs	r2, #1
 800609c:	e6a9      	b.n	8005df2 <_vfprintf_r+0x582>
 800609e:	4b7c      	ldr	r3, [pc, #496]	; (8006290 <_vfprintf_r+0xa20>)
 80060a0:	9317      	str	r3, [sp, #92]	; 0x5c
 80060a2:	f018 0f20 	tst.w	r8, #32
 80060a6:	f47f aeec 	bne.w	8005e82 <_vfprintf_r+0x612>
 80060aa:	9a08      	ldr	r2, [sp, #32]
 80060ac:	f018 0f10 	tst.w	r8, #16
 80060b0:	f102 0304 	add.w	r3, r2, #4
 80060b4:	f040 8354 	bne.w	8006760 <_vfprintf_r+0xef0>
 80060b8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80060bc:	9a08      	ldr	r2, [sp, #32]
 80060be:	f040 84d0 	bne.w	8006a62 <_vfprintf_r+0x11f2>
 80060c2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80060c6:	f000 834b 	beq.w	8006760 <_vfprintf_r+0xef0>
 80060ca:	7814      	ldrb	r4, [r2, #0]
 80060cc:	9308      	str	r3, [sp, #32]
 80060ce:	2500      	movs	r5, #0
 80060d0:	e6e0      	b.n	8005e94 <_vfprintf_r+0x624>
 80060d2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80060d6:	f89a 6000 	ldrb.w	r6, [sl]
 80060da:	2b00      	cmp	r3, #0
 80060dc:	f47f ac46 	bne.w	800596c <_vfprintf_r+0xfc>
 80060e0:	2320      	movs	r3, #32
 80060e2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80060e6:	e441      	b.n	800596c <_vfprintf_r+0xfc>
 80060e8:	f89a 6000 	ldrb.w	r6, [sl]
 80060ec:	2e6c      	cmp	r6, #108	; 0x6c
 80060ee:	bf03      	ittte	eq
 80060f0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80060f4:	f048 0820 	orreq.w	r8, r8, #32
 80060f8:	f10a 0a01 	addeq.w	sl, sl, #1
 80060fc:	f048 0810 	orrne.w	r8, r8, #16
 8006100:	e434      	b.n	800596c <_vfprintf_r+0xfc>
 8006102:	9a08      	ldr	r2, [sp, #32]
 8006104:	f018 0f20 	tst.w	r8, #32
 8006108:	f852 3b04 	ldr.w	r3, [r2], #4
 800610c:	9208      	str	r2, [sp, #32]
 800610e:	f000 83a1 	beq.w	8006854 <_vfprintf_r+0xfe4>
 8006112:	9a05      	ldr	r2, [sp, #20]
 8006114:	4610      	mov	r0, r2
 8006116:	17d1      	asrs	r1, r2, #31
 8006118:	e9c3 0100 	strd	r0, r1, [r3]
 800611c:	4657      	mov	r7, sl
 800611e:	e64d      	b.n	8005dbc <_vfprintf_r+0x54c>
 8006120:	f89a 6000 	ldrb.w	r6, [sl]
 8006124:	2e68      	cmp	r6, #104	; 0x68
 8006126:	bf03      	ittte	eq
 8006128:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800612c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8006130:	f10a 0a01 	addeq.w	sl, sl, #1
 8006134:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8006138:	e418      	b.n	800596c <_vfprintf_r+0xfc>
 800613a:	9908      	ldr	r1, [sp, #32]
 800613c:	4b55      	ldr	r3, [pc, #340]	; (8006294 <_vfprintf_r+0xa24>)
 800613e:	680c      	ldr	r4, [r1, #0]
 8006140:	9317      	str	r3, [sp, #92]	; 0x5c
 8006142:	f647 0230 	movw	r2, #30768	; 0x7830
 8006146:	3104      	adds	r1, #4
 8006148:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800614c:	f048 0302 	orr.w	r3, r8, #2
 8006150:	9108      	str	r1, [sp, #32]
 8006152:	2500      	movs	r5, #0
 8006154:	2202      	movs	r2, #2
 8006156:	2678      	movs	r6, #120	; 0x78
 8006158:	e64b      	b.n	8005df2 <_vfprintf_r+0x582>
 800615a:	f048 0808 	orr.w	r8, r8, #8
 800615e:	f89a 6000 	ldrb.w	r6, [sl]
 8006162:	e403      	b.n	800596c <_vfprintf_r+0xfc>
 8006164:	f048 0310 	orr.w	r3, r8, #16
 8006168:	069f      	lsls	r7, r3, #26
 800616a:	f53f acd1 	bmi.w	8005b10 <_vfprintf_r+0x2a0>
 800616e:	9908      	ldr	r1, [sp, #32]
 8006170:	06dd      	lsls	r5, r3, #27
 8006172:	f101 0204 	add.w	r2, r1, #4
 8006176:	f100 82fd 	bmi.w	8006774 <_vfprintf_r+0xf04>
 800617a:	065c      	lsls	r4, r3, #25
 800617c:	9908      	ldr	r1, [sp, #32]
 800617e:	f100 8475 	bmi.w	8006a6c <_vfprintf_r+0x11fc>
 8006182:	0598      	lsls	r0, r3, #22
 8006184:	f140 82f6 	bpl.w	8006774 <_vfprintf_r+0xf04>
 8006188:	f991 4000 	ldrsb.w	r4, [r1]
 800618c:	9208      	str	r2, [sp, #32]
 800618e:	17e5      	asrs	r5, r4, #31
 8006190:	4620      	mov	r0, r4
 8006192:	4629      	mov	r1, r5
 8006194:	e4c7      	b.n	8005b26 <_vfprintf_r+0x2b6>
 8006196:	9a08      	ldr	r2, [sp, #32]
 8006198:	f018 0f10 	tst.w	r8, #16
 800619c:	f102 0304 	add.w	r3, r2, #4
 80061a0:	f040 82e3 	bne.w	800676a <_vfprintf_r+0xefa>
 80061a4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80061a8:	9a08      	ldr	r2, [sp, #32]
 80061aa:	f040 8467 	bne.w	8006a7c <_vfprintf_r+0x120c>
 80061ae:	f418 7f00 	tst.w	r8, #512	; 0x200
 80061b2:	f000 82da 	beq.w	800676a <_vfprintf_r+0xefa>
 80061b6:	7814      	ldrb	r4, [r2, #0]
 80061b8:	9308      	str	r3, [sp, #32]
 80061ba:	2500      	movs	r5, #0
 80061bc:	e488      	b.n	8005ad0 <_vfprintf_r+0x260>
 80061be:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80061c2:	f002 fdb9 	bl	8008d38 <__retarget_lock_release_recursive>
 80061c6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80061ca:	9305      	str	r3, [sp, #20]
 80061cc:	e443      	b.n	8005a56 <_vfprintf_r+0x1e6>
 80061ce:	2e00      	cmp	r6, #0
 80061d0:	f43f adf8 	beq.w	8005dc4 <_vfprintf_r+0x554>
 80061d4:	2300      	movs	r3, #0
 80061d6:	2101      	movs	r1, #1
 80061d8:	461a      	mov	r2, r3
 80061da:	9104      	str	r1, [sp, #16]
 80061dc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80061e0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80061e4:	930a      	str	r3, [sp, #40]	; 0x28
 80061e6:	4699      	mov	r9, r3
 80061e8:	930f      	str	r3, [sp, #60]	; 0x3c
 80061ea:	9314      	str	r3, [sp, #80]	; 0x50
 80061ec:	9311      	str	r3, [sp, #68]	; 0x44
 80061ee:	9109      	str	r1, [sp, #36]	; 0x24
 80061f0:	af3d      	add	r7, sp, #244	; 0xf4
 80061f2:	e4ce      	b.n	8005b92 <_vfprintf_r+0x322>
 80061f4:	2e65      	cmp	r6, #101	; 0x65
 80061f6:	f340 80ca 	ble.w	800638e <_vfprintf_r+0xb1e>
 80061fa:	2200      	movs	r2, #0
 80061fc:	2300      	movs	r3, #0
 80061fe:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006202:	f7fa fc21 	bl	8000a48 <__aeabi_dcmpeq>
 8006206:	2800      	cmp	r0, #0
 8006208:	f000 8169 	beq.w	80064de <_vfprintf_r+0xc6e>
 800620c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800620e:	4a22      	ldr	r2, [pc, #136]	; (8006298 <_vfprintf_r+0xa28>)
 8006210:	f8cb 2000 	str.w	r2, [fp]
 8006214:	3301      	adds	r3, #1
 8006216:	3401      	adds	r4, #1
 8006218:	2201      	movs	r2, #1
 800621a:	2b07      	cmp	r3, #7
 800621c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006220:	f8cb 2004 	str.w	r2, [fp, #4]
 8006224:	f300 8406 	bgt.w	8006a34 <_vfprintf_r+0x11c4>
 8006228:	f10b 0b08 	add.w	fp, fp, #8
 800622c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800622e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006230:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006232:	4293      	cmp	r3, r2
 8006234:	db03      	blt.n	800623e <_vfprintf_r+0x9ce>
 8006236:	f018 0f01 	tst.w	r8, #1
 800623a:	f43f ad6a 	beq.w	8005d12 <_vfprintf_r+0x4a2>
 800623e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006240:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8006242:	f8cb 2000 	str.w	r2, [fp]
 8006246:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006248:	f8cb 2004 	str.w	r2, [fp, #4]
 800624c:	3301      	adds	r3, #1
 800624e:	4414      	add	r4, r2
 8006250:	2b07      	cmp	r3, #7
 8006252:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006256:	f300 8517 	bgt.w	8006c88 <_vfprintf_r+0x1418>
 800625a:	f10b 0b08 	add.w	fp, fp, #8
 800625e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006260:	1e5d      	subs	r5, r3, #1
 8006262:	2d00      	cmp	r5, #0
 8006264:	f77f ad55 	ble.w	8005d12 <_vfprintf_r+0x4a2>
 8006268:	2d10      	cmp	r5, #16
 800626a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800626c:	4b0b      	ldr	r3, [pc, #44]	; (800629c <_vfprintf_r+0xa2c>)
 800626e:	f340 82e7 	ble.w	8006840 <_vfprintf_r+0xfd0>
 8006272:	4619      	mov	r1, r3
 8006274:	2610      	movs	r6, #16
 8006276:	4623      	mov	r3, r4
 8006278:	9f03      	ldr	r7, [sp, #12]
 800627a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800627e:	460c      	mov	r4, r1
 8006280:	e014      	b.n	80062ac <_vfprintf_r+0xa3c>
 8006282:	bf00      	nop
 8006284:	7fefffff 	.word	0x7fefffff
 8006288:	0800a384 	.word	0x0800a384
 800628c:	0800a380 	.word	0x0800a380
 8006290:	0800a3a4 	.word	0x0800a3a4
 8006294:	0800a390 	.word	0x0800a390
 8006298:	0800a3c0 	.word	0x0800a3c0
 800629c:	0800a3d4 	.word	0x0800a3d4
 80062a0:	f10b 0b08 	add.w	fp, fp, #8
 80062a4:	3d10      	subs	r5, #16
 80062a6:	2d10      	cmp	r5, #16
 80062a8:	f340 82c7 	ble.w	800683a <_vfprintf_r+0xfca>
 80062ac:	3201      	adds	r2, #1
 80062ae:	3310      	adds	r3, #16
 80062b0:	2a07      	cmp	r2, #7
 80062b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80062b6:	e9cb 4600 	strd	r4, r6, [fp]
 80062ba:	ddf1      	ble.n	80062a0 <_vfprintf_r+0xa30>
 80062bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80062be:	4649      	mov	r1, r9
 80062c0:	4638      	mov	r0, r7
 80062c2:	f003 fbb5 	bl	8009a30 <__sprint_r>
 80062c6:	2800      	cmp	r0, #0
 80062c8:	d14c      	bne.n	8006364 <_vfprintf_r+0xaf4>
 80062ca:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80062ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80062d2:	e7e7      	b.n	80062a4 <_vfprintf_r+0xa34>
 80062d4:	9b06      	ldr	r3, [sp, #24]
 80062d6:	9a04      	ldr	r2, [sp, #16]
 80062d8:	1a9d      	subs	r5, r3, r2
 80062da:	2d00      	cmp	r5, #0
 80062dc:	f77f acc9 	ble.w	8005c72 <_vfprintf_r+0x402>
 80062e0:	2d10      	cmp	r5, #16
 80062e2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80062e4:	4bbc      	ldr	r3, [pc, #752]	; (80065d8 <_vfprintf_r+0xd68>)
 80062e6:	dd27      	ble.n	8006338 <_vfprintf_r+0xac8>
 80062e8:	4659      	mov	r1, fp
 80062ea:	4620      	mov	r0, r4
 80062ec:	46bb      	mov	fp, r7
 80062ee:	461c      	mov	r4, r3
 80062f0:	4637      	mov	r7, r6
 80062f2:	9e07      	ldr	r6, [sp, #28]
 80062f4:	e004      	b.n	8006300 <_vfprintf_r+0xa90>
 80062f6:	3d10      	subs	r5, #16
 80062f8:	2d10      	cmp	r5, #16
 80062fa:	f101 0108 	add.w	r1, r1, #8
 80062fe:	dd16      	ble.n	800632e <_vfprintf_r+0xabe>
 8006300:	3201      	adds	r2, #1
 8006302:	3010      	adds	r0, #16
 8006304:	2310      	movs	r3, #16
 8006306:	2a07      	cmp	r2, #7
 8006308:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800630c:	600c      	str	r4, [r1, #0]
 800630e:	604b      	str	r3, [r1, #4]
 8006310:	ddf1      	ble.n	80062f6 <_vfprintf_r+0xa86>
 8006312:	aa2a      	add	r2, sp, #168	; 0xa8
 8006314:	4631      	mov	r1, r6
 8006316:	9803      	ldr	r0, [sp, #12]
 8006318:	f003 fb8a 	bl	8009a30 <__sprint_r>
 800631c:	2800      	cmp	r0, #0
 800631e:	f040 80a8 	bne.w	8006472 <_vfprintf_r+0xc02>
 8006322:	3d10      	subs	r5, #16
 8006324:	2d10      	cmp	r5, #16
 8006326:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800632a:	a92d      	add	r1, sp, #180	; 0xb4
 800632c:	dce8      	bgt.n	8006300 <_vfprintf_r+0xa90>
 800632e:	463e      	mov	r6, r7
 8006330:	4623      	mov	r3, r4
 8006332:	465f      	mov	r7, fp
 8006334:	4604      	mov	r4, r0
 8006336:	468b      	mov	fp, r1
 8006338:	3201      	adds	r2, #1
 800633a:	442c      	add	r4, r5
 800633c:	2a07      	cmp	r2, #7
 800633e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006342:	e9cb 3500 	strd	r3, r5, [fp]
 8006346:	f300 8292 	bgt.w	800686e <_vfprintf_r+0xffe>
 800634a:	f10b 0b08 	add.w	fp, fp, #8
 800634e:	e490      	b.n	8005c72 <_vfprintf_r+0x402>
 8006350:	aa2a      	add	r2, sp, #168	; 0xa8
 8006352:	9907      	ldr	r1, [sp, #28]
 8006354:	9803      	ldr	r0, [sp, #12]
 8006356:	f003 fb6b 	bl	8009a30 <__sprint_r>
 800635a:	2800      	cmp	r0, #0
 800635c:	f43f ad23 	beq.w	8005da6 <_vfprintf_r+0x536>
 8006360:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006364:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006366:	b111      	cbz	r1, 800636e <_vfprintf_r+0xafe>
 8006368:	9803      	ldr	r0, [sp, #12]
 800636a:	f002 fa35 	bl	80087d8 <_free_r>
 800636e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8006372:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006376:	07d0      	lsls	r0, r2, #31
 8006378:	d402      	bmi.n	8006380 <_vfprintf_r+0xb10>
 800637a:	0599      	lsls	r1, r3, #22
 800637c:	f140 81d0 	bpl.w	8006720 <_vfprintf_r+0xeb0>
 8006380:	065a      	lsls	r2, r3, #25
 8006382:	f53f ab65 	bmi.w	8005a50 <_vfprintf_r+0x1e0>
 8006386:	9805      	ldr	r0, [sp, #20]
 8006388:	b057      	add	sp, #348	; 0x15c
 800638a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800638e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006390:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006392:	2a01      	cmp	r2, #1
 8006394:	f104 0401 	add.w	r4, r4, #1
 8006398:	f103 0501 	add.w	r5, r3, #1
 800639c:	f10b 0608 	add.w	r6, fp, #8
 80063a0:	f340 811c 	ble.w	80065dc <_vfprintf_r+0xd6c>
 80063a4:	2301      	movs	r3, #1
 80063a6:	2d07      	cmp	r5, #7
 80063a8:	f8cb 7000 	str.w	r7, [fp]
 80063ac:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80063b0:	f8cb 3004 	str.w	r3, [fp, #4]
 80063b4:	f300 81bb 	bgt.w	800672e <_vfprintf_r+0xebe>
 80063b8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80063ba:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80063bc:	1c69      	adds	r1, r5, #1
 80063be:	441c      	add	r4, r3
 80063c0:	2907      	cmp	r1, #7
 80063c2:	910b      	str	r1, [sp, #44]	; 0x2c
 80063c4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80063c8:	e9c6 2300 	strd	r2, r3, [r6]
 80063cc:	f300 81bb 	bgt.w	8006746 <_vfprintf_r+0xed6>
 80063d0:	3608      	adds	r6, #8
 80063d2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80063d4:	1c53      	adds	r3, r2, #1
 80063d6:	461d      	mov	r5, r3
 80063d8:	9509      	str	r5, [sp, #36]	; 0x24
 80063da:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80063dc:	930e      	str	r3, [sp, #56]	; 0x38
 80063de:	2200      	movs	r2, #0
 80063e0:	2300      	movs	r3, #0
 80063e2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80063e6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80063ea:	f106 0b08 	add.w	fp, r6, #8
 80063ee:	f7fa fb2b 	bl	8000a48 <__aeabi_dcmpeq>
 80063f2:	2800      	cmp	r0, #0
 80063f4:	f040 80c2 	bne.w	800657c <_vfprintf_r+0xd0c>
 80063f8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80063fa:	f8c6 9004 	str.w	r9, [r6, #4]
 80063fe:	3701      	adds	r7, #1
 8006400:	444c      	add	r4, r9
 8006402:	2d07      	cmp	r5, #7
 8006404:	6037      	str	r7, [r6, #0]
 8006406:	942c      	str	r4, [sp, #176]	; 0xb0
 8006408:	952b      	str	r5, [sp, #172]	; 0xac
 800640a:	f300 80f9 	bgt.w	8006600 <_vfprintf_r+0xd90>
 800640e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006410:	f106 0310 	add.w	r3, r6, #16
 8006414:	3202      	adds	r2, #2
 8006416:	465e      	mov	r6, fp
 8006418:	9209      	str	r2, [sp, #36]	; 0x24
 800641a:	469b      	mov	fp, r3
 800641c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800641e:	6072      	str	r2, [r6, #4]
 8006420:	4414      	add	r4, r2
 8006422:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006424:	942c      	str	r4, [sp, #176]	; 0xb0
 8006426:	ab26      	add	r3, sp, #152	; 0x98
 8006428:	2a07      	cmp	r2, #7
 800642a:	922b      	str	r2, [sp, #172]	; 0xac
 800642c:	6033      	str	r3, [r6, #0]
 800642e:	f77f ac70 	ble.w	8005d12 <_vfprintf_r+0x4a2>
 8006432:	aa2a      	add	r2, sp, #168	; 0xa8
 8006434:	9907      	ldr	r1, [sp, #28]
 8006436:	9803      	ldr	r0, [sp, #12]
 8006438:	f003 fafa 	bl	8009a30 <__sprint_r>
 800643c:	2800      	cmp	r0, #0
 800643e:	d18f      	bne.n	8006360 <_vfprintf_r+0xaf0>
 8006440:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006442:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006446:	e464      	b.n	8005d12 <_vfprintf_r+0x4a2>
 8006448:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800644a:	af56      	add	r7, sp, #344	; 0x158
 800644c:	0923      	lsrs	r3, r4, #4
 800644e:	f004 010f 	and.w	r1, r4, #15
 8006452:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8006456:	092a      	lsrs	r2, r5, #4
 8006458:	461c      	mov	r4, r3
 800645a:	4615      	mov	r5, r2
 800645c:	5c43      	ldrb	r3, [r0, r1]
 800645e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8006462:	ea54 0305 	orrs.w	r3, r4, r5
 8006466:	d1f1      	bne.n	800644c <_vfprintf_r+0xbdc>
 8006468:	9b04      	ldr	r3, [sp, #16]
 800646a:	1bdb      	subs	r3, r3, r7
 800646c:	9309      	str	r3, [sp, #36]	; 0x24
 800646e:	f7ff bb80 	b.w	8005b72 <_vfprintf_r+0x302>
 8006472:	46b1      	mov	r9, r6
 8006474:	e776      	b.n	8006364 <_vfprintf_r+0xaf4>
 8006476:	aa2a      	add	r2, sp, #168	; 0xa8
 8006478:	9907      	ldr	r1, [sp, #28]
 800647a:	9803      	ldr	r0, [sp, #12]
 800647c:	f003 fad8 	bl	8009a30 <__sprint_r>
 8006480:	2800      	cmp	r0, #0
 8006482:	f47f af6d 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006486:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006488:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800648c:	f7ff bbdd 	b.w	8005c4a <_vfprintf_r+0x3da>
 8006490:	aa2a      	add	r2, sp, #168	; 0xa8
 8006492:	9907      	ldr	r1, [sp, #28]
 8006494:	9803      	ldr	r0, [sp, #12]
 8006496:	f003 facb 	bl	8009a30 <__sprint_r>
 800649a:	2800      	cmp	r0, #0
 800649c:	f47f af60 	bne.w	8006360 <_vfprintf_r+0xaf0>
 80064a0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80064a2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80064a6:	f7ff bbe0 	b.w	8005c6a <_vfprintf_r+0x3fa>
 80064aa:	4698      	mov	r8, r3
 80064ac:	2d00      	cmp	r5, #0
 80064ae:	bf08      	it	eq
 80064b0:	2c0a      	cmpeq	r4, #10
 80064b2:	f080 8170 	bcs.w	8006796 <_vfprintf_r+0xf26>
 80064b6:	af56      	add	r7, sp, #344	; 0x158
 80064b8:	3430      	adds	r4, #48	; 0x30
 80064ba:	2301      	movs	r3, #1
 80064bc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80064c0:	9309      	str	r3, [sp, #36]	; 0x24
 80064c2:	f7ff bb56 	b.w	8005b72 <_vfprintf_r+0x302>
 80064c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80064c8:	9907      	ldr	r1, [sp, #28]
 80064ca:	9803      	ldr	r0, [sp, #12]
 80064cc:	f003 fab0 	bl	8009a30 <__sprint_r>
 80064d0:	2800      	cmp	r0, #0
 80064d2:	f47f af45 	bne.w	8006360 <_vfprintf_r+0xaf0>
 80064d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80064d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80064dc:	e406      	b.n	8005cec <_vfprintf_r+0x47c>
 80064de:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80064e0:	2b00      	cmp	r3, #0
 80064e2:	f340 8273 	ble.w	80069cc <_vfprintf_r+0x115c>
 80064e6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80064ea:	4293      	cmp	r3, r2
 80064ec:	bfa8      	it	ge
 80064ee:	4613      	movge	r3, r2
 80064f0:	2b00      	cmp	r3, #0
 80064f2:	461d      	mov	r5, r3
 80064f4:	dd0d      	ble.n	8006512 <_vfprintf_r+0xca2>
 80064f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80064f8:	f8cb 7000 	str.w	r7, [fp]
 80064fc:	3301      	adds	r3, #1
 80064fe:	442c      	add	r4, r5
 8006500:	2b07      	cmp	r3, #7
 8006502:	942c      	str	r4, [sp, #176]	; 0xb0
 8006504:	f8cb 5004 	str.w	r5, [fp, #4]
 8006508:	932b      	str	r3, [sp, #172]	; 0xac
 800650a:	f300 82c1 	bgt.w	8006a90 <_vfprintf_r+0x1220>
 800650e:	f10b 0b08 	add.w	fp, fp, #8
 8006512:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006514:	2d00      	cmp	r5, #0
 8006516:	bfa8      	it	ge
 8006518:	1b5b      	subge	r3, r3, r5
 800651a:	2b00      	cmp	r3, #0
 800651c:	461d      	mov	r5, r3
 800651e:	f340 8099 	ble.w	8006654 <_vfprintf_r+0xde4>
 8006522:	2d10      	cmp	r5, #16
 8006524:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006526:	4b2c      	ldr	r3, [pc, #176]	; (80065d8 <_vfprintf_r+0xd68>)
 8006528:	f340 83db 	ble.w	8006ce2 <_vfprintf_r+0x1472>
 800652c:	4618      	mov	r0, r3
 800652e:	4621      	mov	r1, r4
 8006530:	465b      	mov	r3, fp
 8006532:	2610      	movs	r6, #16
 8006534:	46bb      	mov	fp, r7
 8006536:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800653a:	9c07      	ldr	r4, [sp, #28]
 800653c:	4607      	mov	r7, r0
 800653e:	e004      	b.n	800654a <_vfprintf_r+0xcda>
 8006540:	3308      	adds	r3, #8
 8006542:	3d10      	subs	r5, #16
 8006544:	2d10      	cmp	r5, #16
 8006546:	f340 83c7 	ble.w	8006cd8 <_vfprintf_r+0x1468>
 800654a:	3201      	adds	r2, #1
 800654c:	3110      	adds	r1, #16
 800654e:	2a07      	cmp	r2, #7
 8006550:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8006554:	e9c3 7600 	strd	r7, r6, [r3]
 8006558:	ddf2      	ble.n	8006540 <_vfprintf_r+0xcd0>
 800655a:	aa2a      	add	r2, sp, #168	; 0xa8
 800655c:	4621      	mov	r1, r4
 800655e:	4648      	mov	r0, r9
 8006560:	f003 fa66 	bl	8009a30 <__sprint_r>
 8006564:	2800      	cmp	r0, #0
 8006566:	f040 84a5 	bne.w	8006eb4 <_vfprintf_r+0x1644>
 800656a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800656e:	ab2d      	add	r3, sp, #180	; 0xb4
 8006570:	e7e7      	b.n	8006542 <_vfprintf_r+0xcd2>
 8006572:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006576:	af56      	add	r7, sp, #344	; 0x158
 8006578:	f7ff bafb 	b.w	8005b72 <_vfprintf_r+0x302>
 800657c:	f1b9 0f00 	cmp.w	r9, #0
 8006580:	f77f af4c 	ble.w	800641c <_vfprintf_r+0xbac>
 8006584:	f1b9 0f10 	cmp.w	r9, #16
 8006588:	4b13      	ldr	r3, [pc, #76]	; (80065d8 <_vfprintf_r+0xd68>)
 800658a:	f340 8659 	ble.w	8007240 <_vfprintf_r+0x19d0>
 800658e:	4619      	mov	r1, r3
 8006590:	4622      	mov	r2, r4
 8006592:	4633      	mov	r3, r6
 8006594:	2710      	movs	r7, #16
 8006596:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800659a:	9c07      	ldr	r4, [sp, #28]
 800659c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800659e:	460e      	mov	r6, r1
 80065a0:	e007      	b.n	80065b2 <_vfprintf_r+0xd42>
 80065a2:	3308      	adds	r3, #8
 80065a4:	f1a9 0910 	sub.w	r9, r9, #16
 80065a8:	f1b9 0f10 	cmp.w	r9, #16
 80065ac:	f340 8353 	ble.w	8006c56 <_vfprintf_r+0x13e6>
 80065b0:	3501      	adds	r5, #1
 80065b2:	3210      	adds	r2, #16
 80065b4:	2d07      	cmp	r5, #7
 80065b6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80065ba:	e9c3 6700 	strd	r6, r7, [r3]
 80065be:	ddf0      	ble.n	80065a2 <_vfprintf_r+0xd32>
 80065c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80065c2:	4621      	mov	r1, r4
 80065c4:	4658      	mov	r0, fp
 80065c6:	f003 fa33 	bl	8009a30 <__sprint_r>
 80065ca:	2800      	cmp	r0, #0
 80065cc:	f040 8472 	bne.w	8006eb4 <_vfprintf_r+0x1644>
 80065d0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80065d4:	ab2d      	add	r3, sp, #180	; 0xb4
 80065d6:	e7e5      	b.n	80065a4 <_vfprintf_r+0xd34>
 80065d8:	0800a3d4 	.word	0x0800a3d4
 80065dc:	f018 0f01 	tst.w	r8, #1
 80065e0:	f47f aee0 	bne.w	80063a4 <_vfprintf_r+0xb34>
 80065e4:	2201      	movs	r2, #1
 80065e6:	2d07      	cmp	r5, #7
 80065e8:	f8cb 7000 	str.w	r7, [fp]
 80065ec:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80065f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80065f4:	dc04      	bgt.n	8006600 <_vfprintf_r+0xd90>
 80065f6:	3302      	adds	r3, #2
 80065f8:	9309      	str	r3, [sp, #36]	; 0x24
 80065fa:	f10b 0b10 	add.w	fp, fp, #16
 80065fe:	e70d      	b.n	800641c <_vfprintf_r+0xbac>
 8006600:	aa2a      	add	r2, sp, #168	; 0xa8
 8006602:	9907      	ldr	r1, [sp, #28]
 8006604:	9803      	ldr	r0, [sp, #12]
 8006606:	f003 fa13 	bl	8009a30 <__sprint_r>
 800660a:	2800      	cmp	r0, #0
 800660c:	f47f aea8 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006610:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8006614:	3301      	adds	r3, #1
 8006616:	9309      	str	r3, [sp, #36]	; 0x24
 8006618:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800661c:	ae2d      	add	r6, sp, #180	; 0xb4
 800661e:	e6fd      	b.n	800641c <_vfprintf_r+0xbac>
 8006620:	aa2a      	add	r2, sp, #168	; 0xa8
 8006622:	9907      	ldr	r1, [sp, #28]
 8006624:	9803      	ldr	r0, [sp, #12]
 8006626:	f003 fa03 	bl	8009a30 <__sprint_r>
 800662a:	2800      	cmp	r0, #0
 800662c:	f47f ae98 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006630:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006634:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006636:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800663a:	f7ff baf6 	b.w	8005c2a <_vfprintf_r+0x3ba>
 800663e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006640:	9907      	ldr	r1, [sp, #28]
 8006642:	9803      	ldr	r0, [sp, #12]
 8006644:	f003 f9f4 	bl	8009a30 <__sprint_r>
 8006648:	2800      	cmp	r0, #0
 800664a:	f47f ae89 	bne.w	8006360 <_vfprintf_r+0xaf0>
 800664e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006650:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006654:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006656:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800665a:	443b      	add	r3, r7
 800665c:	4699      	mov	r9, r3
 800665e:	f040 8357 	bne.w	8006d10 <_vfprintf_r+0x14a0>
 8006662:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006664:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006666:	4293      	cmp	r3, r2
 8006668:	db49      	blt.n	80066fe <_vfprintf_r+0xe8e>
 800666a:	f018 0f01 	tst.w	r8, #1
 800666e:	d146      	bne.n	80066fe <_vfprintf_r+0xe8e>
 8006670:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006672:	18bd      	adds	r5, r7, r2
 8006674:	eba5 0509 	sub.w	r5, r5, r9
 8006678:	1ad3      	subs	r3, r2, r3
 800667a:	429d      	cmp	r5, r3
 800667c:	bfa8      	it	ge
 800667e:	461d      	movge	r5, r3
 8006680:	2d00      	cmp	r5, #0
 8006682:	dd0d      	ble.n	80066a0 <_vfprintf_r+0xe30>
 8006684:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006686:	f8cb 9000 	str.w	r9, [fp]
 800668a:	3201      	adds	r2, #1
 800668c:	442c      	add	r4, r5
 800668e:	2a07      	cmp	r2, #7
 8006690:	942c      	str	r4, [sp, #176]	; 0xb0
 8006692:	f8cb 5004 	str.w	r5, [fp, #4]
 8006696:	922b      	str	r2, [sp, #172]	; 0xac
 8006698:	f300 8462 	bgt.w	8006f60 <_vfprintf_r+0x16f0>
 800669c:	f10b 0b08 	add.w	fp, fp, #8
 80066a0:	2d00      	cmp	r5, #0
 80066a2:	bfac      	ite	ge
 80066a4:	1b5d      	subge	r5, r3, r5
 80066a6:	461d      	movlt	r5, r3
 80066a8:	2d00      	cmp	r5, #0
 80066aa:	f77f ab32 	ble.w	8005d12 <_vfprintf_r+0x4a2>
 80066ae:	2d10      	cmp	r5, #16
 80066b0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80066b2:	4bc5      	ldr	r3, [pc, #788]	; (80069c8 <_vfprintf_r+0x1158>)
 80066b4:	f340 80c4 	ble.w	8006840 <_vfprintf_r+0xfd0>
 80066b8:	4619      	mov	r1, r3
 80066ba:	2610      	movs	r6, #16
 80066bc:	4623      	mov	r3, r4
 80066be:	9f03      	ldr	r7, [sp, #12]
 80066c0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80066c4:	460c      	mov	r4, r1
 80066c6:	e005      	b.n	80066d4 <_vfprintf_r+0xe64>
 80066c8:	f10b 0b08 	add.w	fp, fp, #8
 80066cc:	3d10      	subs	r5, #16
 80066ce:	2d10      	cmp	r5, #16
 80066d0:	f340 80b3 	ble.w	800683a <_vfprintf_r+0xfca>
 80066d4:	3201      	adds	r2, #1
 80066d6:	3310      	adds	r3, #16
 80066d8:	2a07      	cmp	r2, #7
 80066da:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80066de:	e9cb 4600 	strd	r4, r6, [fp]
 80066e2:	ddf1      	ble.n	80066c8 <_vfprintf_r+0xe58>
 80066e4:	aa2a      	add	r2, sp, #168	; 0xa8
 80066e6:	4649      	mov	r1, r9
 80066e8:	4638      	mov	r0, r7
 80066ea:	f003 f9a1 	bl	8009a30 <__sprint_r>
 80066ee:	2800      	cmp	r0, #0
 80066f0:	f47f ae38 	bne.w	8006364 <_vfprintf_r+0xaf4>
 80066f4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80066f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066fc:	e7e6      	b.n	80066cc <_vfprintf_r+0xe5c>
 80066fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006700:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006702:	f8cb 1000 	str.w	r1, [fp]
 8006706:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006708:	f8cb 1004 	str.w	r1, [fp, #4]
 800670c:	3201      	adds	r2, #1
 800670e:	440c      	add	r4, r1
 8006710:	2a07      	cmp	r2, #7
 8006712:	942c      	str	r4, [sp, #176]	; 0xb0
 8006714:	922b      	str	r2, [sp, #172]	; 0xac
 8006716:	f300 828c 	bgt.w	8006c32 <_vfprintf_r+0x13c2>
 800671a:	f10b 0b08 	add.w	fp, fp, #8
 800671e:	e7a7      	b.n	8006670 <_vfprintf_r+0xe00>
 8006720:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8006724:	f002 fb08 	bl	8008d38 <__retarget_lock_release_recursive>
 8006728:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800672c:	e628      	b.n	8006380 <_vfprintf_r+0xb10>
 800672e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006730:	9907      	ldr	r1, [sp, #28]
 8006732:	9803      	ldr	r0, [sp, #12]
 8006734:	f003 f97c 	bl	8009a30 <__sprint_r>
 8006738:	2800      	cmp	r0, #0
 800673a:	f47f ae11 	bne.w	8006360 <_vfprintf_r+0xaf0>
 800673e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8006742:	ae2d      	add	r6, sp, #180	; 0xb4
 8006744:	e638      	b.n	80063b8 <_vfprintf_r+0xb48>
 8006746:	aa2a      	add	r2, sp, #168	; 0xa8
 8006748:	9907      	ldr	r1, [sp, #28]
 800674a:	9803      	ldr	r0, [sp, #12]
 800674c:	f003 f970 	bl	8009a30 <__sprint_r>
 8006750:	2800      	cmp	r0, #0
 8006752:	f47f ae05 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006756:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800675a:	ae2d      	add	r6, sp, #180	; 0xb4
 800675c:	930b      	str	r3, [sp, #44]	; 0x2c
 800675e:	e638      	b.n	80063d2 <_vfprintf_r+0xb62>
 8006760:	6814      	ldr	r4, [r2, #0]
 8006762:	9308      	str	r3, [sp, #32]
 8006764:	2500      	movs	r5, #0
 8006766:	f7ff bb95 	b.w	8005e94 <_vfprintf_r+0x624>
 800676a:	6814      	ldr	r4, [r2, #0]
 800676c:	9308      	str	r3, [sp, #32]
 800676e:	2500      	movs	r5, #0
 8006770:	f7ff b9ae 	b.w	8005ad0 <_vfprintf_r+0x260>
 8006774:	680c      	ldr	r4, [r1, #0]
 8006776:	9208      	str	r2, [sp, #32]
 8006778:	17e5      	asrs	r5, r4, #31
 800677a:	4620      	mov	r0, r4
 800677c:	4629      	mov	r1, r5
 800677e:	f7ff b9d2 	b.w	8005b26 <_vfprintf_r+0x2b6>
 8006782:	6814      	ldr	r4, [r2, #0]
 8006784:	9108      	str	r1, [sp, #32]
 8006786:	2201      	movs	r2, #1
 8006788:	2500      	movs	r5, #0
 800678a:	f7ff bb32 	b.w	8005df2 <_vfprintf_r+0x582>
 800678e:	2a01      	cmp	r2, #1
 8006790:	f47f ab3c 	bne.w	8005e0c <_vfprintf_r+0x59c>
 8006794:	e68f      	b.n	80064b6 <_vfprintf_r+0xc46>
 8006796:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800679a:	2200      	movs	r2, #0
 800679c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80067a0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80067a4:	af56      	add	r7, sp, #344	; 0x158
 80067a6:	4692      	mov	sl, r2
 80067a8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80067ac:	461e      	mov	r6, r3
 80067ae:	e00a      	b.n	80067c6 <_vfprintf_r+0xf56>
 80067b0:	2300      	movs	r3, #0
 80067b2:	4620      	mov	r0, r4
 80067b4:	4629      	mov	r1, r5
 80067b6:	220a      	movs	r2, #10
 80067b8:	f7fa f9a0 	bl	8000afc <__aeabi_uldivmod>
 80067bc:	4604      	mov	r4, r0
 80067be:	460d      	mov	r5, r1
 80067c0:	ea54 0305 	orrs.w	r3, r4, r5
 80067c4:	d029      	beq.n	800681a <_vfprintf_r+0xfaa>
 80067c6:	220a      	movs	r2, #10
 80067c8:	2300      	movs	r3, #0
 80067ca:	4620      	mov	r0, r4
 80067cc:	4629      	mov	r1, r5
 80067ce:	f7fa f995 	bl	8000afc <__aeabi_uldivmod>
 80067d2:	3230      	adds	r2, #48	; 0x30
 80067d4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80067d8:	f10a 0a01 	add.w	sl, sl, #1
 80067dc:	3f01      	subs	r7, #1
 80067de:	2e00      	cmp	r6, #0
 80067e0:	d0e6      	beq.n	80067b0 <_vfprintf_r+0xf40>
 80067e2:	f898 3000 	ldrb.w	r3, [r8]
 80067e6:	459a      	cmp	sl, r3
 80067e8:	d1e2      	bne.n	80067b0 <_vfprintf_r+0xf40>
 80067ea:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80067ee:	d0df      	beq.n	80067b0 <_vfprintf_r+0xf40>
 80067f0:	2d00      	cmp	r5, #0
 80067f2:	bf08      	it	eq
 80067f4:	2c0a      	cmpeq	r4, #10
 80067f6:	d3db      	bcc.n	80067b0 <_vfprintf_r+0xf40>
 80067f8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80067fa:	9918      	ldr	r1, [sp, #96]	; 0x60
 80067fc:	1aff      	subs	r7, r7, r3
 80067fe:	461a      	mov	r2, r3
 8006800:	4638      	mov	r0, r7
 8006802:	f003 f8a7 	bl	8009954 <strncpy>
 8006806:	f898 3001 	ldrb.w	r3, [r8, #1]
 800680a:	2b00      	cmp	r3, #0
 800680c:	f000 8496 	beq.w	800713c <_vfprintf_r+0x18cc>
 8006810:	f108 0801 	add.w	r8, r8, #1
 8006814:	f04f 0a00 	mov.w	sl, #0
 8006818:	e7ca      	b.n	80067b0 <_vfprintf_r+0xf40>
 800681a:	9b04      	ldr	r3, [sp, #16]
 800681c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8006820:	1bdb      	subs	r3, r3, r7
 8006822:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8006826:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8006828:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800682c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8006830:	9309      	str	r3, [sp, #36]	; 0x24
 8006832:	f7ff b99e 	b.w	8005b72 <_vfprintf_r+0x302>
 8006836:	46c1      	mov	r9, r8
 8006838:	e594      	b.n	8006364 <_vfprintf_r+0xaf4>
 800683a:	4621      	mov	r1, r4
 800683c:	461c      	mov	r4, r3
 800683e:	460b      	mov	r3, r1
 8006840:	3201      	adds	r2, #1
 8006842:	442c      	add	r4, r5
 8006844:	2a07      	cmp	r2, #7
 8006846:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800684a:	e9cb 3500 	strd	r3, r5, [fp]
 800684e:	f77f aa5e 	ble.w	8005d0e <_vfprintf_r+0x49e>
 8006852:	e5ee      	b.n	8006432 <_vfprintf_r+0xbc2>
 8006854:	f018 0f10 	tst.w	r8, #16
 8006858:	f040 80f8 	bne.w	8006a4c <_vfprintf_r+0x11dc>
 800685c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006860:	f000 8351 	beq.w	8006f06 <_vfprintf_r+0x1696>
 8006864:	9a05      	ldr	r2, [sp, #20]
 8006866:	801a      	strh	r2, [r3, #0]
 8006868:	4657      	mov	r7, sl
 800686a:	f7ff baa7 	b.w	8005dbc <_vfprintf_r+0x54c>
 800686e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006870:	9907      	ldr	r1, [sp, #28]
 8006872:	9803      	ldr	r0, [sp, #12]
 8006874:	f003 f8dc 	bl	8009a30 <__sprint_r>
 8006878:	2800      	cmp	r0, #0
 800687a:	f47f ad71 	bne.w	8006360 <_vfprintf_r+0xaf0>
 800687e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006880:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006884:	f7ff b9f5 	b.w	8005c72 <_vfprintf_r+0x402>
 8006888:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800688c:	4602      	mov	r2, r0
 800688e:	460b      	mov	r3, r1
 8006890:	f7fa fc76 	bl	8001180 <__aeabi_dcmpun>
 8006894:	2800      	cmp	r0, #0
 8006896:	f040 8491 	bne.w	80071bc <_vfprintf_r+0x194c>
 800689a:	2e61      	cmp	r6, #97	; 0x61
 800689c:	f000 8111 	beq.w	8006ac2 <_vfprintf_r+0x1252>
 80068a0:	2e41      	cmp	r6, #65	; 0x41
 80068a2:	f000 8377 	beq.w	8006f94 <_vfprintf_r+0x1724>
 80068a6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80068aa:	f026 0220 	bic.w	r2, r6, #32
 80068ae:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80068b2:	930e      	str	r3, [sp, #56]	; 0x38
 80068b4:	9204      	str	r2, [sp, #16]
 80068b6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80068b8:	f000 842d 	beq.w	8007116 <_vfprintf_r+0x18a6>
 80068bc:	2a47      	cmp	r2, #71	; 0x47
 80068be:	f000 8424 	beq.w	800710a <_vfprintf_r+0x189a>
 80068c2:	2b00      	cmp	r3, #0
 80068c4:	f2c0 82f9 	blt.w	8006eba <_vfprintf_r+0x164a>
 80068c8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80068cc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80068d0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80068d4:	2e66      	cmp	r6, #102	; 0x66
 80068d6:	f000 83eb 	beq.w	80070b0 <_vfprintf_r+0x1840>
 80068da:	2e46      	cmp	r6, #70	; 0x46
 80068dc:	f000 847e 	beq.w	80071dc <_vfprintf_r+0x196c>
 80068e0:	9b04      	ldr	r3, [sp, #16]
 80068e2:	9803      	ldr	r0, [sp, #12]
 80068e4:	2b45      	cmp	r3, #69	; 0x45
 80068e6:	bf0c      	ite	eq
 80068e8:	f109 0501 	addeq.w	r5, r9, #1
 80068ec:	464d      	movne	r5, r9
 80068ee:	aa28      	add	r2, sp, #160	; 0xa0
 80068f0:	ab25      	add	r3, sp, #148	; 0x94
 80068f2:	e9cd 3200 	strd	r3, r2, [sp]
 80068f6:	2102      	movs	r1, #2
 80068f8:	ab24      	add	r3, sp, #144	; 0x90
 80068fa:	462a      	mov	r2, r5
 80068fc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006900:	f000 feb2 	bl	8007668 <_dtoa_r>
 8006904:	2e67      	cmp	r6, #103	; 0x67
 8006906:	4607      	mov	r7, r0
 8006908:	f040 849c 	bne.w	8007244 <_vfprintf_r+0x19d4>
 800690c:	f018 0f01 	tst.w	r8, #1
 8006910:	f040 83f9 	bne.w	8007106 <_vfprintf_r+0x1896>
 8006914:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006916:	4640      	mov	r0, r8
 8006918:	1bdb      	subs	r3, r3, r7
 800691a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800691e:	9310      	str	r3, [sp, #64]	; 0x40
 8006920:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006922:	9311      	str	r3, [sp, #68]	; 0x44
 8006924:	9b04      	ldr	r3, [sp, #16]
 8006926:	2b47      	cmp	r3, #71	; 0x47
 8006928:	f000 81e7 	beq.w	8006cfa <_vfprintf_r+0x148a>
 800692c:	9b04      	ldr	r3, [sp, #16]
 800692e:	2b46      	cmp	r3, #70	; 0x46
 8006930:	f000 8300 	beq.w	8006f34 <_vfprintf_r+0x16c4>
 8006934:	9904      	ldr	r1, [sp, #16]
 8006936:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006938:	b2f2      	uxtb	r2, r6
 800693a:	2941      	cmp	r1, #65	; 0x41
 800693c:	bf08      	it	eq
 800693e:	320f      	addeq	r2, #15
 8006940:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8006944:	bf06      	itte	eq
 8006946:	b2d2      	uxtbeq	r2, r2
 8006948:	2101      	moveq	r1, #1
 800694a:	2100      	movne	r1, #0
 800694c:	2b00      	cmp	r3, #0
 800694e:	9324      	str	r3, [sp, #144]	; 0x90
 8006950:	bfb8      	it	lt
 8006952:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8006954:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8006958:	bfba      	itte	lt
 800695a:	f1c3 0301 	rsblt	r3, r3, #1
 800695e:	222d      	movlt	r2, #45	; 0x2d
 8006960:	222b      	movge	r2, #43	; 0x2b
 8006962:	2b09      	cmp	r3, #9
 8006964:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006968:	f300 83f9 	bgt.w	800715e <_vfprintf_r+0x18ee>
 800696c:	2900      	cmp	r1, #0
 800696e:	f040 8487 	bne.w	8007280 <_vfprintf_r+0x1a10>
 8006972:	2230      	movs	r2, #48	; 0x30
 8006974:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006978:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800697c:	3330      	adds	r3, #48	; 0x30
 800697e:	7013      	strb	r3, [r2, #0]
 8006980:	1c53      	adds	r3, r2, #1
 8006982:	aa26      	add	r2, sp, #152	; 0x98
 8006984:	1a9b      	subs	r3, r3, r2
 8006986:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006988:	9319      	str	r3, [sp, #100]	; 0x64
 800698a:	2a01      	cmp	r2, #1
 800698c:	4413      	add	r3, r2
 800698e:	9309      	str	r3, [sp, #36]	; 0x24
 8006990:	f340 8442 	ble.w	8007218 <_vfprintf_r+0x19a8>
 8006994:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006996:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006998:	4413      	add	r3, r2
 800699a:	9309      	str	r3, [sp, #36]	; 0x24
 800699c:	2300      	movs	r3, #0
 800699e:	930f      	str	r3, [sp, #60]	; 0x3c
 80069a0:	9314      	str	r3, [sp, #80]	; 0x50
 80069a2:	9311      	str	r3, [sp, #68]	; 0x44
 80069a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80069a6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80069aa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80069ae:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80069b2:	9304      	str	r3, [sp, #16]
 80069b4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80069b6:	2b00      	cmp	r3, #0
 80069b8:	f040 8275 	bne.w	8006ea6 <_vfprintf_r+0x1636>
 80069bc:	4699      	mov	r9, r3
 80069be:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80069c2:	f7ff b8e2 	b.w	8005b8a <_vfprintf_r+0x31a>
 80069c6:	bf00      	nop
 80069c8:	0800a3d4 	.word	0x0800a3d4
 80069cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80069ce:	49bd      	ldr	r1, [pc, #756]	; (8006cc4 <_vfprintf_r+0x1454>)
 80069d0:	f8cb 1000 	str.w	r1, [fp]
 80069d4:	3201      	adds	r2, #1
 80069d6:	3401      	adds	r4, #1
 80069d8:	2101      	movs	r1, #1
 80069da:	2a07      	cmp	r2, #7
 80069dc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80069e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80069e4:	dc60      	bgt.n	8006aa8 <_vfprintf_r+0x1238>
 80069e6:	f10b 0b08 	add.w	fp, fp, #8
 80069ea:	b92b      	cbnz	r3, 80069f8 <_vfprintf_r+0x1188>
 80069ec:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80069ee:	b91a      	cbnz	r2, 80069f8 <_vfprintf_r+0x1188>
 80069f0:	f018 0f01 	tst.w	r8, #1
 80069f4:	f43f a98d 	beq.w	8005d12 <_vfprintf_r+0x4a2>
 80069f8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80069fa:	9916      	ldr	r1, [sp, #88]	; 0x58
 80069fc:	f8cb 1000 	str.w	r1, [fp]
 8006a00:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006a02:	f8cb 1004 	str.w	r1, [fp, #4]
 8006a06:	3201      	adds	r2, #1
 8006a08:	440c      	add	r4, r1
 8006a0a:	2a07      	cmp	r2, #7
 8006a0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8006a0e:	922b      	str	r2, [sp, #172]	; 0xac
 8006a10:	f300 8282 	bgt.w	8006f18 <_vfprintf_r+0x16a8>
 8006a14:	f10b 0b08 	add.w	fp, fp, #8
 8006a18:	2b00      	cmp	r3, #0
 8006a1a:	f2c0 82e7 	blt.w	8006fec <_vfprintf_r+0x177c>
 8006a1e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006a20:	3201      	adds	r2, #1
 8006a22:	441c      	add	r4, r3
 8006a24:	2a07      	cmp	r2, #7
 8006a26:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006a2a:	e9cb 7300 	strd	r7, r3, [fp]
 8006a2e:	f77f a96e 	ble.w	8005d0e <_vfprintf_r+0x49e>
 8006a32:	e4fe      	b.n	8006432 <_vfprintf_r+0xbc2>
 8006a34:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a36:	9907      	ldr	r1, [sp, #28]
 8006a38:	9803      	ldr	r0, [sp, #12]
 8006a3a:	f002 fff9 	bl	8009a30 <__sprint_r>
 8006a3e:	2800      	cmp	r0, #0
 8006a40:	f47f ac8e 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006a44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a48:	f7ff bbf0 	b.w	800622c <_vfprintf_r+0x9bc>
 8006a4c:	9a05      	ldr	r2, [sp, #20]
 8006a4e:	601a      	str	r2, [r3, #0]
 8006a50:	4657      	mov	r7, sl
 8006a52:	f7ff b9b3 	b.w	8005dbc <_vfprintf_r+0x54c>
 8006a56:	8814      	ldrh	r4, [r2, #0]
 8006a58:	9108      	str	r1, [sp, #32]
 8006a5a:	2500      	movs	r5, #0
 8006a5c:	2201      	movs	r2, #1
 8006a5e:	f7ff b9c8 	b.w	8005df2 <_vfprintf_r+0x582>
 8006a62:	8814      	ldrh	r4, [r2, #0]
 8006a64:	9308      	str	r3, [sp, #32]
 8006a66:	2500      	movs	r5, #0
 8006a68:	f7ff ba14 	b.w	8005e94 <_vfprintf_r+0x624>
 8006a6c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006a70:	9208      	str	r2, [sp, #32]
 8006a72:	17e5      	asrs	r5, r4, #31
 8006a74:	4620      	mov	r0, r4
 8006a76:	4629      	mov	r1, r5
 8006a78:	f7ff b855 	b.w	8005b26 <_vfprintf_r+0x2b6>
 8006a7c:	8814      	ldrh	r4, [r2, #0]
 8006a7e:	9308      	str	r3, [sp, #32]
 8006a80:	2500      	movs	r5, #0
 8006a82:	f7ff b825 	b.w	8005ad0 <_vfprintf_r+0x260>
 8006a86:	222d      	movs	r2, #45	; 0x2d
 8006a88:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006a8c:	f7ff baa2 	b.w	8005fd4 <_vfprintf_r+0x764>
 8006a90:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a92:	9907      	ldr	r1, [sp, #28]
 8006a94:	9803      	ldr	r0, [sp, #12]
 8006a96:	f002 ffcb 	bl	8009a30 <__sprint_r>
 8006a9a:	2800      	cmp	r0, #0
 8006a9c:	f47f ac60 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006aa0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006aa2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006aa6:	e534      	b.n	8006512 <_vfprintf_r+0xca2>
 8006aa8:	aa2a      	add	r2, sp, #168	; 0xa8
 8006aaa:	9907      	ldr	r1, [sp, #28]
 8006aac:	9803      	ldr	r0, [sp, #12]
 8006aae:	f002 ffbf 	bl	8009a30 <__sprint_r>
 8006ab2:	2800      	cmp	r0, #0
 8006ab4:	f47f ac54 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006ab8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006aba:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006abc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006ac0:	e793      	b.n	80069ea <_vfprintf_r+0x117a>
 8006ac2:	2330      	movs	r3, #48	; 0x30
 8006ac4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006ac8:	2378      	movs	r3, #120	; 0x78
 8006aca:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8006ace:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006ad2:	f048 0402 	orr.w	r4, r8, #2
 8006ad6:	f300 82b0 	bgt.w	800703a <_vfprintf_r+0x17ca>
 8006ada:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006ade:	930e      	str	r3, [sp, #56]	; 0x38
 8006ae0:	f026 0320 	bic.w	r3, r6, #32
 8006ae4:	9304      	str	r3, [sp, #16]
 8006ae6:	2200      	movs	r2, #0
 8006ae8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006aea:	920a      	str	r2, [sp, #40]	; 0x28
 8006aec:	46a0      	mov	r8, r4
 8006aee:	af3d      	add	r7, sp, #244	; 0xf4
 8006af0:	2b00      	cmp	r3, #0
 8006af2:	f2c0 81e3 	blt.w	8006ebc <_vfprintf_r+0x164c>
 8006af6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006afa:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006afe:	2300      	movs	r3, #0
 8006b00:	930b      	str	r3, [sp, #44]	; 0x2c
 8006b02:	2e61      	cmp	r6, #97	; 0x61
 8006b04:	f000 8255 	beq.w	8006fb2 <_vfprintf_r+0x1742>
 8006b08:	2e41      	cmp	r6, #65	; 0x41
 8006b0a:	f47f aee3 	bne.w	80068d4 <_vfprintf_r+0x1064>
 8006b0e:	a824      	add	r0, sp, #144	; 0x90
 8006b10:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006b14:	f002 fea6 	bl	8009864 <frexp>
 8006b18:	2200      	movs	r2, #0
 8006b1a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006b1e:	ec51 0b10 	vmov	r0, r1, d0
 8006b22:	f7f9 fd29 	bl	8000578 <__aeabi_dmul>
 8006b26:	2200      	movs	r2, #0
 8006b28:	2300      	movs	r3, #0
 8006b2a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006b2e:	f7f9 ff8b 	bl	8000a48 <__aeabi_dcmpeq>
 8006b32:	2800      	cmp	r0, #0
 8006b34:	f040 8305 	bne.w	8007142 <_vfprintf_r+0x18d2>
 8006b38:	4b63      	ldr	r3, [pc, #396]	; (8006cc8 <_vfprintf_r+0x1458>)
 8006b3a:	9309      	str	r3, [sp, #36]	; 0x24
 8006b3c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8006b40:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8006b44:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006b48:	9721      	str	r7, [sp, #132]	; 0x84
 8006b4a:	46b9      	mov	r9, r7
 8006b4c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8006b50:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8006b54:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006b58:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8006b5c:	e003      	b.n	8006b66 <_vfprintf_r+0x12f6>
 8006b5e:	f7f9 ff73 	bl	8000a48 <__aeabi_dcmpeq>
 8006b62:	bb20      	cbnz	r0, 8006bae <_vfprintf_r+0x133e>
 8006b64:	46a9      	mov	r9, r5
 8006b66:	2200      	movs	r2, #0
 8006b68:	4b58      	ldr	r3, [pc, #352]	; (8006ccc <_vfprintf_r+0x145c>)
 8006b6a:	4630      	mov	r0, r6
 8006b6c:	4639      	mov	r1, r7
 8006b6e:	f7f9 fd03 	bl	8000578 <__aeabi_dmul>
 8006b72:	460f      	mov	r7, r1
 8006b74:	4606      	mov	r6, r0
 8006b76:	f7f9 ff99 	bl	8000aac <__aeabi_d2iz>
 8006b7a:	4680      	mov	r8, r0
 8006b7c:	f7f9 fc92 	bl	80004a4 <__aeabi_i2d>
 8006b80:	4602      	mov	r2, r0
 8006b82:	460b      	mov	r3, r1
 8006b84:	4630      	mov	r0, r6
 8006b86:	4639      	mov	r1, r7
 8006b88:	f7f9 fb3e 	bl	8000208 <__aeabi_dsub>
 8006b8c:	464d      	mov	r5, r9
 8006b8e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006b92:	f805 cb01 	strb.w	ip, [r5], #1
 8006b96:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8006b9a:	46a3      	mov	fp, r4
 8006b9c:	4606      	mov	r6, r0
 8006b9e:	460f      	mov	r7, r1
 8006ba0:	f04f 0200 	mov.w	r2, #0
 8006ba4:	f04f 0300 	mov.w	r3, #0
 8006ba8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8006bac:	d1d7      	bne.n	8006b5e <_vfprintf_r+0x12ee>
 8006bae:	4630      	mov	r0, r6
 8006bb0:	4639      	mov	r1, r7
 8006bb2:	2200      	movs	r2, #0
 8006bb4:	4b46      	ldr	r3, [pc, #280]	; (8006cd0 <_vfprintf_r+0x1460>)
 8006bb6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8006bba:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8006bbc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006bc0:	4644      	mov	r4, r8
 8006bc2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006bc6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8006bca:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006bce:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006bd2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006bd4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006bd8:	f7f9 ff5e 	bl	8000a98 <__aeabi_dcmpgt>
 8006bdc:	2800      	cmp	r0, #0
 8006bde:	f040 8176 	bne.w	8006ece <_vfprintf_r+0x165e>
 8006be2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006be6:	2200      	movs	r2, #0
 8006be8:	4b39      	ldr	r3, [pc, #228]	; (8006cd0 <_vfprintf_r+0x1460>)
 8006bea:	f7f9 ff2d 	bl	8000a48 <__aeabi_dcmpeq>
 8006bee:	b110      	cbz	r0, 8006bf6 <_vfprintf_r+0x1386>
 8006bf0:	07e2      	lsls	r2, r4, #31
 8006bf2:	f100 816c 	bmi.w	8006ece <_vfprintf_r+0x165e>
 8006bf6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006bf8:	2b00      	cmp	r3, #0
 8006bfa:	db07      	blt.n	8006c0c <_vfprintf_r+0x139c>
 8006bfc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006bfe:	3301      	adds	r3, #1
 8006c00:	442b      	add	r3, r5
 8006c02:	2230      	movs	r2, #48	; 0x30
 8006c04:	f805 2b01 	strb.w	r2, [r5], #1
 8006c08:	42ab      	cmp	r3, r5
 8006c0a:	d1fb      	bne.n	8006c04 <_vfprintf_r+0x1394>
 8006c0c:	1beb      	subs	r3, r5, r7
 8006c0e:	4640      	mov	r0, r8
 8006c10:	9310      	str	r3, [sp, #64]	; 0x40
 8006c12:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006c16:	e683      	b.n	8006920 <_vfprintf_r+0x10b0>
 8006c18:	f8cd 9010 	str.w	r9, [sp, #16]
 8006c1c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006c20:	9408      	str	r4, [sp, #32]
 8006c22:	4681      	mov	r9, r0
 8006c24:	900f      	str	r0, [sp, #60]	; 0x3c
 8006c26:	9014      	str	r0, [sp, #80]	; 0x50
 8006c28:	9011      	str	r0, [sp, #68]	; 0x44
 8006c2a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006c2e:	f7fe bfac 	b.w	8005b8a <_vfprintf_r+0x31a>
 8006c32:	aa2a      	add	r2, sp, #168	; 0xa8
 8006c34:	9907      	ldr	r1, [sp, #28]
 8006c36:	9803      	ldr	r0, [sp, #12]
 8006c38:	f002 fefa 	bl	8009a30 <__sprint_r>
 8006c3c:	2800      	cmp	r0, #0
 8006c3e:	f47f ab8f 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006c42:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006c44:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006c46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006c4a:	e511      	b.n	8006670 <_vfprintf_r+0xe00>
 8006c4c:	4252      	negs	r2, r2
 8006c4e:	9206      	str	r2, [sp, #24]
 8006c50:	9308      	str	r3, [sp, #32]
 8006c52:	f7ff b96d 	b.w	8005f30 <_vfprintf_r+0x6c0>
 8006c56:	4614      	mov	r4, r2
 8006c58:	4632      	mov	r2, r6
 8006c5a:	461e      	mov	r6, r3
 8006c5c:	4613      	mov	r3, r2
 8006c5e:	462a      	mov	r2, r5
 8006c60:	3201      	adds	r2, #1
 8006c62:	9209      	str	r2, [sp, #36]	; 0x24
 8006c64:	f106 0208 	add.w	r2, r6, #8
 8006c68:	e9c6 3900 	strd	r3, r9, [r6]
 8006c6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006c6e:	932b      	str	r3, [sp, #172]	; 0xac
 8006c70:	444c      	add	r4, r9
 8006c72:	2b07      	cmp	r3, #7
 8006c74:	942c      	str	r4, [sp, #176]	; 0xb0
 8006c76:	f73f acc3 	bgt.w	8006600 <_vfprintf_r+0xd90>
 8006c7a:	3301      	adds	r3, #1
 8006c7c:	9309      	str	r3, [sp, #36]	; 0x24
 8006c7e:	f102 0b08 	add.w	fp, r2, #8
 8006c82:	4616      	mov	r6, r2
 8006c84:	f7ff bbca 	b.w	800641c <_vfprintf_r+0xbac>
 8006c88:	aa2a      	add	r2, sp, #168	; 0xa8
 8006c8a:	9907      	ldr	r1, [sp, #28]
 8006c8c:	9803      	ldr	r0, [sp, #12]
 8006c8e:	f002 fecf 	bl	8009a30 <__sprint_r>
 8006c92:	2800      	cmp	r0, #0
 8006c94:	f47f ab64 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006c98:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006c9a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006c9e:	f7ff bade 	b.w	800625e <_vfprintf_r+0x9ee>
 8006ca2:	464b      	mov	r3, r9
 8006ca4:	2b06      	cmp	r3, #6
 8006ca6:	bf28      	it	cs
 8006ca8:	2306      	movcs	r3, #6
 8006caa:	46b9      	mov	r9, r7
 8006cac:	970f      	str	r7, [sp, #60]	; 0x3c
 8006cae:	9714      	str	r7, [sp, #80]	; 0x50
 8006cb0:	9711      	str	r7, [sp, #68]	; 0x44
 8006cb2:	970a      	str	r7, [sp, #40]	; 0x28
 8006cb4:	463a      	mov	r2, r7
 8006cb6:	9304      	str	r3, [sp, #16]
 8006cb8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8006cbc:	4f05      	ldr	r7, [pc, #20]	; (8006cd4 <_vfprintf_r+0x1464>)
 8006cbe:	f7fe bf64 	b.w	8005b8a <_vfprintf_r+0x31a>
 8006cc2:	bf00      	nop
 8006cc4:	0800a3c0 	.word	0x0800a3c0
 8006cc8:	0800a3a4 	.word	0x0800a3a4
 8006ccc:	40300000 	.word	0x40300000
 8006cd0:	3fe00000 	.word	0x3fe00000
 8006cd4:	0800a3b8 	.word	0x0800a3b8
 8006cd8:	460c      	mov	r4, r1
 8006cda:	4639      	mov	r1, r7
 8006cdc:	465f      	mov	r7, fp
 8006cde:	469b      	mov	fp, r3
 8006ce0:	460b      	mov	r3, r1
 8006ce2:	3201      	adds	r2, #1
 8006ce4:	442c      	add	r4, r5
 8006ce6:	2a07      	cmp	r2, #7
 8006ce8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006cec:	e9cb 3500 	strd	r3, r5, [fp]
 8006cf0:	f73f aca5 	bgt.w	800663e <_vfprintf_r+0xdce>
 8006cf4:	f10b 0b08 	add.w	fp, fp, #8
 8006cf8:	e4ac      	b.n	8006654 <_vfprintf_r+0xde4>
 8006cfa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006cfc:	1cda      	adds	r2, r3, #3
 8006cfe:	db02      	blt.n	8006d06 <_vfprintf_r+0x1496>
 8006d00:	4599      	cmp	r9, r3
 8006d02:	f280 80b5 	bge.w	8006e70 <_vfprintf_r+0x1600>
 8006d06:	3e02      	subs	r6, #2
 8006d08:	f026 0320 	bic.w	r3, r6, #32
 8006d0c:	9304      	str	r3, [sp, #16]
 8006d0e:	e611      	b.n	8006934 <_vfprintf_r+0x10c4>
 8006d10:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006d12:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8006d16:	465a      	mov	r2, fp
 8006d18:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8006d1c:	18fb      	adds	r3, r7, r3
 8006d1e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8006d22:	970c      	str	r7, [sp, #48]	; 0x30
 8006d24:	4eaf      	ldr	r6, [pc, #700]	; (8006fe4 <_vfprintf_r+0x1774>)
 8006d26:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8006d2a:	9309      	str	r3, [sp, #36]	; 0x24
 8006d2c:	464f      	mov	r7, r9
 8006d2e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006d32:	4621      	mov	r1, r4
 8006d34:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006d36:	2b00      	cmp	r3, #0
 8006d38:	d05b      	beq.n	8006df2 <_vfprintf_r+0x1582>
 8006d3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006d3c:	2b00      	cmp	r3, #0
 8006d3e:	d154      	bne.n	8006dea <_vfprintf_r+0x157a>
 8006d40:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006d42:	3b01      	subs	r3, #1
 8006d44:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8006d48:	9314      	str	r3, [sp, #80]	; 0x50
 8006d4a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006d4c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8006d4e:	6010      	str	r0, [r2, #0]
 8006d50:	3301      	adds	r3, #1
 8006d52:	4459      	add	r1, fp
 8006d54:	2b07      	cmp	r3, #7
 8006d56:	912c      	str	r1, [sp, #176]	; 0xb0
 8006d58:	f8c2 b004 	str.w	fp, [r2, #4]
 8006d5c:	932b      	str	r3, [sp, #172]	; 0xac
 8006d5e:	dc68      	bgt.n	8006e32 <_vfprintf_r+0x15c2>
 8006d60:	3208      	adds	r2, #8
 8006d62:	9809      	ldr	r0, [sp, #36]	; 0x24
 8006d64:	f898 3000 	ldrb.w	r3, [r8]
 8006d68:	1bc5      	subs	r5, r0, r7
 8006d6a:	429d      	cmp	r5, r3
 8006d6c:	bfa8      	it	ge
 8006d6e:	461d      	movge	r5, r3
 8006d70:	2d00      	cmp	r5, #0
 8006d72:	dd0b      	ble.n	8006d8c <_vfprintf_r+0x151c>
 8006d74:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006d76:	6017      	str	r7, [r2, #0]
 8006d78:	3301      	adds	r3, #1
 8006d7a:	4429      	add	r1, r5
 8006d7c:	2b07      	cmp	r3, #7
 8006d7e:	912c      	str	r1, [sp, #176]	; 0xb0
 8006d80:	6055      	str	r5, [r2, #4]
 8006d82:	932b      	str	r3, [sp, #172]	; 0xac
 8006d84:	dc5e      	bgt.n	8006e44 <_vfprintf_r+0x15d4>
 8006d86:	f898 3000 	ldrb.w	r3, [r8]
 8006d8a:	3208      	adds	r2, #8
 8006d8c:	2d00      	cmp	r5, #0
 8006d8e:	bfac      	ite	ge
 8006d90:	1b5d      	subge	r5, r3, r5
 8006d92:	461d      	movlt	r5, r3
 8006d94:	2d00      	cmp	r5, #0
 8006d96:	dd26      	ble.n	8006de6 <_vfprintf_r+0x1576>
 8006d98:	2d10      	cmp	r5, #16
 8006d9a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8006d9c:	dd3c      	ble.n	8006e18 <_vfprintf_r+0x15a8>
 8006d9e:	2410      	movs	r4, #16
 8006da0:	e003      	b.n	8006daa <_vfprintf_r+0x153a>
 8006da2:	3208      	adds	r2, #8
 8006da4:	3d10      	subs	r5, #16
 8006da6:	2d10      	cmp	r5, #16
 8006da8:	dd36      	ble.n	8006e18 <_vfprintf_r+0x15a8>
 8006daa:	3001      	adds	r0, #1
 8006dac:	3110      	adds	r1, #16
 8006dae:	2807      	cmp	r0, #7
 8006db0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006db4:	e9c2 6400 	strd	r6, r4, [r2]
 8006db8:	ddf3      	ble.n	8006da2 <_vfprintf_r+0x1532>
 8006dba:	aa2a      	add	r2, sp, #168	; 0xa8
 8006dbc:	4651      	mov	r1, sl
 8006dbe:	4648      	mov	r0, r9
 8006dc0:	f002 fe36 	bl	8009a30 <__sprint_r>
 8006dc4:	2800      	cmp	r0, #0
 8006dc6:	d150      	bne.n	8006e6a <_vfprintf_r+0x15fa>
 8006dc8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8006dcc:	aa2d      	add	r2, sp, #180	; 0xb4
 8006dce:	e7e9      	b.n	8006da4 <_vfprintf_r+0x1534>
 8006dd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006dd2:	4651      	mov	r1, sl
 8006dd4:	4648      	mov	r0, r9
 8006dd6:	f002 fe2b 	bl	8009a30 <__sprint_r>
 8006dda:	2800      	cmp	r0, #0
 8006ddc:	d145      	bne.n	8006e6a <_vfprintf_r+0x15fa>
 8006dde:	f898 3000 	ldrb.w	r3, [r8]
 8006de2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006de4:	aa2d      	add	r2, sp, #180	; 0xb4
 8006de6:	441f      	add	r7, r3
 8006de8:	e7a4      	b.n	8006d34 <_vfprintf_r+0x14c4>
 8006dea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006dec:	3b01      	subs	r3, #1
 8006dee:	930f      	str	r3, [sp, #60]	; 0x3c
 8006df0:	e7ab      	b.n	8006d4a <_vfprintf_r+0x14da>
 8006df2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006df4:	2b00      	cmp	r3, #0
 8006df6:	d1f8      	bne.n	8006dea <_vfprintf_r+0x157a>
 8006df8:	46b9      	mov	r9, r7
 8006dfa:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006dfc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006dfe:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8006e02:	18fb      	adds	r3, r7, r3
 8006e04:	4599      	cmp	r9, r3
 8006e06:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8006e0a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006e0e:	4693      	mov	fp, r2
 8006e10:	460c      	mov	r4, r1
 8006e12:	bf28      	it	cs
 8006e14:	4699      	movcs	r9, r3
 8006e16:	e424      	b.n	8006662 <_vfprintf_r+0xdf2>
 8006e18:	3001      	adds	r0, #1
 8006e1a:	4429      	add	r1, r5
 8006e1c:	2807      	cmp	r0, #7
 8006e1e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006e22:	e9c2 6500 	strd	r6, r5, [r2]
 8006e26:	dcd3      	bgt.n	8006dd0 <_vfprintf_r+0x1560>
 8006e28:	f898 3000 	ldrb.w	r3, [r8]
 8006e2c:	3208      	adds	r2, #8
 8006e2e:	441f      	add	r7, r3
 8006e30:	e780      	b.n	8006d34 <_vfprintf_r+0x14c4>
 8006e32:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e34:	4651      	mov	r1, sl
 8006e36:	4648      	mov	r0, r9
 8006e38:	f002 fdfa 	bl	8009a30 <__sprint_r>
 8006e3c:	b9a8      	cbnz	r0, 8006e6a <_vfprintf_r+0x15fa>
 8006e3e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006e40:	aa2d      	add	r2, sp, #180	; 0xb4
 8006e42:	e78e      	b.n	8006d62 <_vfprintf_r+0x14f2>
 8006e44:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e46:	4651      	mov	r1, sl
 8006e48:	4648      	mov	r0, r9
 8006e4a:	f002 fdf1 	bl	8009a30 <__sprint_r>
 8006e4e:	b960      	cbnz	r0, 8006e6a <_vfprintf_r+0x15fa>
 8006e50:	f898 3000 	ldrb.w	r3, [r8]
 8006e54:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006e56:	aa2d      	add	r2, sp, #180	; 0xb4
 8006e58:	e798      	b.n	8006d8c <_vfprintf_r+0x151c>
 8006e5a:	4638      	mov	r0, r7
 8006e5c:	f7fa f8d0 	bl	8001000 <strlen>
 8006e60:	46a9      	mov	r9, r5
 8006e62:	4603      	mov	r3, r0
 8006e64:	9009      	str	r0, [sp, #36]	; 0x24
 8006e66:	f7ff b8f4 	b.w	8006052 <_vfprintf_r+0x7e2>
 8006e6a:	46d1      	mov	r9, sl
 8006e6c:	f7ff ba7a 	b.w	8006364 <_vfprintf_r+0xaf4>
 8006e70:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006e72:	4619      	mov	r1, r3
 8006e74:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006e76:	4299      	cmp	r1, r3
 8006e78:	f300 8082 	bgt.w	8006f80 <_vfprintf_r+0x1710>
 8006e7c:	07c4      	lsls	r4, r0, #31
 8006e7e:	f140 816b 	bpl.w	8007158 <_vfprintf_r+0x18e8>
 8006e82:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006e84:	4413      	add	r3, r2
 8006e86:	9309      	str	r3, [sp, #36]	; 0x24
 8006e88:	0541      	lsls	r1, r0, #21
 8006e8a:	d503      	bpl.n	8006e94 <_vfprintf_r+0x1624>
 8006e8c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006e8e:	2b00      	cmp	r3, #0
 8006e90:	f300 80e6 	bgt.w	8007060 <_vfprintf_r+0x17f0>
 8006e94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006e96:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006e9a:	9304      	str	r3, [sp, #16]
 8006e9c:	2667      	movs	r6, #103	; 0x67
 8006e9e:	2300      	movs	r3, #0
 8006ea0:	930f      	str	r3, [sp, #60]	; 0x3c
 8006ea2:	9314      	str	r3, [sp, #80]	; 0x50
 8006ea4:	e586      	b.n	80069b4 <_vfprintf_r+0x1144>
 8006ea6:	222d      	movs	r2, #45	; 0x2d
 8006ea8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006eac:	f04f 0900 	mov.w	r9, #0
 8006eb0:	f7fe be6c 	b.w	8005b8c <_vfprintf_r+0x31c>
 8006eb4:	46a1      	mov	r9, r4
 8006eb6:	f7ff ba55 	b.w	8006364 <_vfprintf_r+0xaf4>
 8006eba:	900a      	str	r0, [sp, #40]	; 0x28
 8006ebc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006ec0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8006ec4:	931f      	str	r3, [sp, #124]	; 0x7c
 8006ec6:	232d      	movs	r3, #45	; 0x2d
 8006ec8:	911e      	str	r1, [sp, #120]	; 0x78
 8006eca:	930b      	str	r3, [sp, #44]	; 0x2c
 8006ecc:	e619      	b.n	8006b02 <_vfprintf_r+0x1292>
 8006ece:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006ed0:	9328      	str	r3, [sp, #160]	; 0xa0
 8006ed2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006ed4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006ed8:	7bd9      	ldrb	r1, [r3, #15]
 8006eda:	4291      	cmp	r1, r2
 8006edc:	462b      	mov	r3, r5
 8006ede:	d109      	bne.n	8006ef4 <_vfprintf_r+0x1684>
 8006ee0:	2030      	movs	r0, #48	; 0x30
 8006ee2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8006ee6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006ee8:	1e5a      	subs	r2, r3, #1
 8006eea:	9228      	str	r2, [sp, #160]	; 0xa0
 8006eec:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006ef0:	4291      	cmp	r1, r2
 8006ef2:	d0f6      	beq.n	8006ee2 <_vfprintf_r+0x1672>
 8006ef4:	2a39      	cmp	r2, #57	; 0x39
 8006ef6:	bf0b      	itete	eq
 8006ef8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8006efa:	3201      	addne	r2, #1
 8006efc:	7a92      	ldrbeq	r2, [r2, #10]
 8006efe:	b2d2      	uxtbne	r2, r2
 8006f00:	f803 2c01 	strb.w	r2, [r3, #-1]
 8006f04:	e682      	b.n	8006c0c <_vfprintf_r+0x139c>
 8006f06:	f418 7f00 	tst.w	r8, #512	; 0x200
 8006f0a:	f43f ad9f 	beq.w	8006a4c <_vfprintf_r+0x11dc>
 8006f0e:	9a05      	ldr	r2, [sp, #20]
 8006f10:	701a      	strb	r2, [r3, #0]
 8006f12:	4657      	mov	r7, sl
 8006f14:	f7fe bf52 	b.w	8005dbc <_vfprintf_r+0x54c>
 8006f18:	aa2a      	add	r2, sp, #168	; 0xa8
 8006f1a:	9907      	ldr	r1, [sp, #28]
 8006f1c:	9803      	ldr	r0, [sp, #12]
 8006f1e:	f002 fd87 	bl	8009a30 <__sprint_r>
 8006f22:	2800      	cmp	r0, #0
 8006f24:	f47f aa1c 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006f28:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006f2a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006f2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006f32:	e571      	b.n	8006a18 <_vfprintf_r+0x11a8>
 8006f34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006f36:	2b00      	cmp	r3, #0
 8006f38:	f340 8164 	ble.w	8007204 <_vfprintf_r+0x1994>
 8006f3c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006f3e:	f1b9 0f00 	cmp.w	r9, #0
 8006f42:	f040 8103 	bne.w	800714c <_vfprintf_r+0x18dc>
 8006f46:	07c6      	lsls	r6, r0, #31
 8006f48:	f100 8100 	bmi.w	800714c <_vfprintf_r+0x18dc>
 8006f4c:	9309      	str	r3, [sp, #36]	; 0x24
 8006f4e:	2666      	movs	r6, #102	; 0x66
 8006f50:	0543      	lsls	r3, r0, #21
 8006f52:	f100 8086 	bmi.w	8007062 <_vfprintf_r+0x17f2>
 8006f56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006f58:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006f5c:	9304      	str	r3, [sp, #16]
 8006f5e:	e79e      	b.n	8006e9e <_vfprintf_r+0x162e>
 8006f60:	aa2a      	add	r2, sp, #168	; 0xa8
 8006f62:	9907      	ldr	r1, [sp, #28]
 8006f64:	9803      	ldr	r0, [sp, #12]
 8006f66:	f002 fd63 	bl	8009a30 <__sprint_r>
 8006f6a:	2800      	cmp	r0, #0
 8006f6c:	f47f a9f8 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8006f70:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006f72:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006f74:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006f76:	1ad3      	subs	r3, r2, r3
 8006f78:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006f7c:	f7ff bb90 	b.w	80066a0 <_vfprintf_r+0xe30>
 8006f80:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006f82:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006f84:	4413      	add	r3, r2
 8006f86:	9309      	str	r3, [sp, #36]	; 0x24
 8006f88:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006f8a:	2b00      	cmp	r3, #0
 8006f8c:	f340 8149 	ble.w	8007222 <_vfprintf_r+0x19b2>
 8006f90:	2667      	movs	r6, #103	; 0x67
 8006f92:	e7dd      	b.n	8006f50 <_vfprintf_r+0x16e0>
 8006f94:	2330      	movs	r3, #48	; 0x30
 8006f96:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006f9a:	2358      	movs	r3, #88	; 0x58
 8006f9c:	e595      	b.n	8006aca <_vfprintf_r+0x125a>
 8006f9e:	9803      	ldr	r0, [sp, #12]
 8006fa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006fa2:	4649      	mov	r1, r9
 8006fa4:	f002 fd44 	bl	8009a30 <__sprint_r>
 8006fa8:	2800      	cmp	r0, #0
 8006faa:	f47f a9e0 	bne.w	800636e <_vfprintf_r+0xafe>
 8006fae:	f7fe bf0f 	b.w	8005dd0 <_vfprintf_r+0x560>
 8006fb2:	a824      	add	r0, sp, #144	; 0x90
 8006fb4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006fb8:	f002 fc54 	bl	8009864 <frexp>
 8006fbc:	2200      	movs	r2, #0
 8006fbe:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006fc2:	ec51 0b10 	vmov	r0, r1, d0
 8006fc6:	f7f9 fad7 	bl	8000578 <__aeabi_dmul>
 8006fca:	2200      	movs	r2, #0
 8006fcc:	2300      	movs	r3, #0
 8006fce:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006fd2:	f7f9 fd39 	bl	8000a48 <__aeabi_dcmpeq>
 8006fd6:	b108      	cbz	r0, 8006fdc <_vfprintf_r+0x176c>
 8006fd8:	2301      	movs	r3, #1
 8006fda:	9324      	str	r3, [sp, #144]	; 0x90
 8006fdc:	4b02      	ldr	r3, [pc, #8]	; (8006fe8 <_vfprintf_r+0x1778>)
 8006fde:	9309      	str	r3, [sp, #36]	; 0x24
 8006fe0:	e5ac      	b.n	8006b3c <_vfprintf_r+0x12cc>
 8006fe2:	bf00      	nop
 8006fe4:	0800a3d4 	.word	0x0800a3d4
 8006fe8:	0800a390 	.word	0x0800a390
 8006fec:	425d      	negs	r5, r3
 8006fee:	3310      	adds	r3, #16
 8006ff0:	4bb9      	ldr	r3, [pc, #740]	; (80072d8 <_vfprintf_r+0x1a68>)
 8006ff2:	f280 8097 	bge.w	8007124 <_vfprintf_r+0x18b4>
 8006ff6:	4619      	mov	r1, r3
 8006ff8:	2610      	movs	r6, #16
 8006ffa:	4623      	mov	r3, r4
 8006ffc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8007000:	460c      	mov	r4, r1
 8007002:	e005      	b.n	8007010 <_vfprintf_r+0x17a0>
 8007004:	f10b 0b08 	add.w	fp, fp, #8
 8007008:	3d10      	subs	r5, #16
 800700a:	2d10      	cmp	r5, #16
 800700c:	f340 8087 	ble.w	800711e <_vfprintf_r+0x18ae>
 8007010:	3201      	adds	r2, #1
 8007012:	3310      	adds	r3, #16
 8007014:	2a07      	cmp	r2, #7
 8007016:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800701a:	e9cb 4600 	strd	r4, r6, [fp]
 800701e:	ddf1      	ble.n	8007004 <_vfprintf_r+0x1794>
 8007020:	aa2a      	add	r2, sp, #168	; 0xa8
 8007022:	9907      	ldr	r1, [sp, #28]
 8007024:	4648      	mov	r0, r9
 8007026:	f002 fd03 	bl	8009a30 <__sprint_r>
 800702a:	2800      	cmp	r0, #0
 800702c:	f47f a998 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8007030:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8007034:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007038:	e7e6      	b.n	8007008 <_vfprintf_r+0x1798>
 800703a:	f109 0101 	add.w	r1, r9, #1
 800703e:	9803      	ldr	r0, [sp, #12]
 8007040:	f7fe f89e 	bl	8005180 <_malloc_r>
 8007044:	4607      	mov	r7, r0
 8007046:	2800      	cmp	r0, #0
 8007048:	f000 813b 	beq.w	80072c2 <_vfprintf_r+0x1a52>
 800704c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8007050:	930e      	str	r3, [sp, #56]	; 0x38
 8007052:	f026 0320 	bic.w	r3, r6, #32
 8007056:	9304      	str	r3, [sp, #16]
 8007058:	46a0      	mov	r8, r4
 800705a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800705c:	900a      	str	r0, [sp, #40]	; 0x28
 800705e:	e547      	b.n	8006af0 <_vfprintf_r+0x1280>
 8007060:	2667      	movs	r6, #103	; 0x67
 8007062:	981a      	ldr	r0, [sp, #104]	; 0x68
 8007064:	2200      	movs	r2, #0
 8007066:	920f      	str	r2, [sp, #60]	; 0x3c
 8007068:	9214      	str	r2, [sp, #80]	; 0x50
 800706a:	7803      	ldrb	r3, [r0, #0]
 800706c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800706e:	2bff      	cmp	r3, #255	; 0xff
 8007070:	d00c      	beq.n	800708c <_vfprintf_r+0x181c>
 8007072:	4293      	cmp	r3, r2
 8007074:	da0a      	bge.n	800708c <_vfprintf_r+0x181c>
 8007076:	7841      	ldrb	r1, [r0, #1]
 8007078:	1ad2      	subs	r2, r2, r3
 800707a:	b1a9      	cbz	r1, 80070a8 <_vfprintf_r+0x1838>
 800707c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800707e:	3301      	adds	r3, #1
 8007080:	9314      	str	r3, [sp, #80]	; 0x50
 8007082:	460b      	mov	r3, r1
 8007084:	2bff      	cmp	r3, #255	; 0xff
 8007086:	f100 0001 	add.w	r0, r0, #1
 800708a:	d1f2      	bne.n	8007072 <_vfprintf_r+0x1802>
 800708c:	9211      	str	r2, [sp, #68]	; 0x44
 800708e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007090:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8007092:	9909      	ldr	r1, [sp, #36]	; 0x24
 8007094:	901a      	str	r0, [sp, #104]	; 0x68
 8007096:	4413      	add	r3, r2
 8007098:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800709a:	fb02 1303 	mla	r3, r2, r3, r1
 800709e:	9309      	str	r3, [sp, #36]	; 0x24
 80070a0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80070a4:	9304      	str	r3, [sp, #16]
 80070a6:	e485      	b.n	80069b4 <_vfprintf_r+0x1144>
 80070a8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80070aa:	3101      	adds	r1, #1
 80070ac:	910f      	str	r1, [sp, #60]	; 0x3c
 80070ae:	e7de      	b.n	800706e <_vfprintf_r+0x17fe>
 80070b0:	aa28      	add	r2, sp, #160	; 0xa0
 80070b2:	ab25      	add	r3, sp, #148	; 0x94
 80070b4:	e9cd 3200 	strd	r3, r2, [sp]
 80070b8:	2103      	movs	r1, #3
 80070ba:	ab24      	add	r3, sp, #144	; 0x90
 80070bc:	464a      	mov	r2, r9
 80070be:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80070c2:	9803      	ldr	r0, [sp, #12]
 80070c4:	f000 fad0 	bl	8007668 <_dtoa_r>
 80070c8:	464d      	mov	r5, r9
 80070ca:	4607      	mov	r7, r0
 80070cc:	eb00 0409 	add.w	r4, r0, r9
 80070d0:	783b      	ldrb	r3, [r7, #0]
 80070d2:	2b30      	cmp	r3, #48	; 0x30
 80070d4:	f000 80be 	beq.w	8007254 <_vfprintf_r+0x19e4>
 80070d8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80070da:	442c      	add	r4, r5
 80070dc:	2200      	movs	r2, #0
 80070de:	2300      	movs	r3, #0
 80070e0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80070e4:	f7f9 fcb0 	bl	8000a48 <__aeabi_dcmpeq>
 80070e8:	b108      	cbz	r0, 80070ee <_vfprintf_r+0x187e>
 80070ea:	4623      	mov	r3, r4
 80070ec:	e413      	b.n	8006916 <_vfprintf_r+0x10a6>
 80070ee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80070f0:	42a3      	cmp	r3, r4
 80070f2:	f4bf ac10 	bcs.w	8006916 <_vfprintf_r+0x10a6>
 80070f6:	2130      	movs	r1, #48	; 0x30
 80070f8:	1c5a      	adds	r2, r3, #1
 80070fa:	9228      	str	r2, [sp, #160]	; 0xa0
 80070fc:	7019      	strb	r1, [r3, #0]
 80070fe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007100:	429c      	cmp	r4, r3
 8007102:	d8f9      	bhi.n	80070f8 <_vfprintf_r+0x1888>
 8007104:	e407      	b.n	8006916 <_vfprintf_r+0x10a6>
 8007106:	197c      	adds	r4, r7, r5
 8007108:	e7e8      	b.n	80070dc <_vfprintf_r+0x186c>
 800710a:	f1b9 0f00 	cmp.w	r9, #0
 800710e:	f000 8092 	beq.w	8007236 <_vfprintf_r+0x19c6>
 8007112:	900a      	str	r0, [sp, #40]	; 0x28
 8007114:	e4ec      	b.n	8006af0 <_vfprintf_r+0x1280>
 8007116:	900a      	str	r0, [sp, #40]	; 0x28
 8007118:	f04f 0906 	mov.w	r9, #6
 800711c:	e4e8      	b.n	8006af0 <_vfprintf_r+0x1280>
 800711e:	4621      	mov	r1, r4
 8007120:	461c      	mov	r4, r3
 8007122:	460b      	mov	r3, r1
 8007124:	3201      	adds	r2, #1
 8007126:	442c      	add	r4, r5
 8007128:	2a07      	cmp	r2, #7
 800712a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800712e:	e9cb 3500 	strd	r3, r5, [fp]
 8007132:	f300 80a9 	bgt.w	8007288 <_vfprintf_r+0x1a18>
 8007136:	f10b 0b08 	add.w	fp, fp, #8
 800713a:	e470      	b.n	8006a1e <_vfprintf_r+0x11ae>
 800713c:	469a      	mov	sl, r3
 800713e:	f7ff bb37 	b.w	80067b0 <_vfprintf_r+0xf40>
 8007142:	2301      	movs	r3, #1
 8007144:	9324      	str	r3, [sp, #144]	; 0x90
 8007146:	4b65      	ldr	r3, [pc, #404]	; (80072dc <_vfprintf_r+0x1a6c>)
 8007148:	9309      	str	r3, [sp, #36]	; 0x24
 800714a:	e4f7      	b.n	8006b3c <_vfprintf_r+0x12cc>
 800714c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800714e:	4413      	add	r3, r2
 8007150:	444b      	add	r3, r9
 8007152:	9309      	str	r3, [sp, #36]	; 0x24
 8007154:	2666      	movs	r6, #102	; 0x66
 8007156:	e6fb      	b.n	8006f50 <_vfprintf_r+0x16e0>
 8007158:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800715a:	9309      	str	r3, [sp, #36]	; 0x24
 800715c:	e694      	b.n	8006e88 <_vfprintf_r+0x1618>
 800715e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8007162:	4664      	mov	r4, ip
 8007164:	4d5e      	ldr	r5, [pc, #376]	; (80072e0 <_vfprintf_r+0x1a70>)
 8007166:	e000      	b.n	800716a <_vfprintf_r+0x18fa>
 8007168:	4614      	mov	r4, r2
 800716a:	fba5 1203 	umull	r1, r2, r5, r3
 800716e:	08d2      	lsrs	r2, r2, #3
 8007170:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8007174:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8007178:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800717c:	4613      	mov	r3, r2
 800717e:	2b09      	cmp	r3, #9
 8007180:	f804 1c01 	strb.w	r1, [r4, #-1]
 8007184:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007188:	dcee      	bgt.n	8007168 <_vfprintf_r+0x18f8>
 800718a:	3330      	adds	r3, #48	; 0x30
 800718c:	3c02      	subs	r4, #2
 800718e:	b2db      	uxtb	r3, r3
 8007190:	45a4      	cmp	ip, r4
 8007192:	f802 3c01 	strb.w	r3, [r2, #-1]
 8007196:	f240 8090 	bls.w	80072ba <_vfprintf_r+0x1a4a>
 800719a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800719e:	4611      	mov	r1, r2
 80071a0:	e001      	b.n	80071a6 <_vfprintf_r+0x1936>
 80071a2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80071a6:	f804 3b01 	strb.w	r3, [r4], #1
 80071aa:	458c      	cmp	ip, r1
 80071ac:	d1f9      	bne.n	80071a2 <_vfprintf_r+0x1932>
 80071ae:	ab2a      	add	r3, sp, #168	; 0xa8
 80071b0:	1a9b      	subs	r3, r3, r2
 80071b2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80071b6:	4413      	add	r3, r2
 80071b8:	f7ff bbe3 	b.w	8006982 <_vfprintf_r+0x1112>
 80071bc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80071be:	4f49      	ldr	r7, [pc, #292]	; (80072e4 <_vfprintf_r+0x1a74>)
 80071c0:	2b00      	cmp	r3, #0
 80071c2:	bfb6      	itet	lt
 80071c4:	222d      	movlt	r2, #45	; 0x2d
 80071c6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80071ca:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80071ce:	4b46      	ldr	r3, [pc, #280]	; (80072e8 <_vfprintf_r+0x1a78>)
 80071d0:	f7fe bf02 	b.w	8005fd8 <_vfprintf_r+0x768>
 80071d4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80071d8:	f7ff b8c9 	b.w	800636e <_vfprintf_r+0xafe>
 80071dc:	aa28      	add	r2, sp, #160	; 0xa0
 80071de:	ab25      	add	r3, sp, #148	; 0x94
 80071e0:	e9cd 3200 	strd	r3, r2, [sp]
 80071e4:	2103      	movs	r1, #3
 80071e6:	ab24      	add	r3, sp, #144	; 0x90
 80071e8:	464a      	mov	r2, r9
 80071ea:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80071ee:	9803      	ldr	r0, [sp, #12]
 80071f0:	f000 fa3a 	bl	8007668 <_dtoa_r>
 80071f4:	464d      	mov	r5, r9
 80071f6:	4607      	mov	r7, r0
 80071f8:	2e46      	cmp	r6, #70	; 0x46
 80071fa:	eb07 0405 	add.w	r4, r7, r5
 80071fe:	f43f af67 	beq.w	80070d0 <_vfprintf_r+0x1860>
 8007202:	e76b      	b.n	80070dc <_vfprintf_r+0x186c>
 8007204:	f1b9 0f00 	cmp.w	r9, #0
 8007208:	d131      	bne.n	800726e <_vfprintf_r+0x19fe>
 800720a:	07c5      	lsls	r5, r0, #31
 800720c:	d42f      	bmi.n	800726e <_vfprintf_r+0x19fe>
 800720e:	2301      	movs	r3, #1
 8007210:	9304      	str	r3, [sp, #16]
 8007212:	9309      	str	r3, [sp, #36]	; 0x24
 8007214:	2666      	movs	r6, #102	; 0x66
 8007216:	e642      	b.n	8006e9e <_vfprintf_r+0x162e>
 8007218:	07c3      	lsls	r3, r0, #31
 800721a:	f57f abbf 	bpl.w	800699c <_vfprintf_r+0x112c>
 800721e:	f7ff bbb9 	b.w	8006994 <_vfprintf_r+0x1124>
 8007222:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007224:	f1c3 0301 	rsb	r3, r3, #1
 8007228:	441a      	add	r2, r3
 800722a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800722e:	9209      	str	r2, [sp, #36]	; 0x24
 8007230:	9304      	str	r3, [sp, #16]
 8007232:	2667      	movs	r6, #103	; 0x67
 8007234:	e633      	b.n	8006e9e <_vfprintf_r+0x162e>
 8007236:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800723a:	f04f 0901 	mov.w	r9, #1
 800723e:	e457      	b.n	8006af0 <_vfprintf_r+0x1280>
 8007240:	465a      	mov	r2, fp
 8007242:	e511      	b.n	8006c68 <_vfprintf_r+0x13f8>
 8007244:	2e47      	cmp	r6, #71	; 0x47
 8007246:	f47f af5e 	bne.w	8007106 <_vfprintf_r+0x1896>
 800724a:	f018 0f01 	tst.w	r8, #1
 800724e:	f43f ab61 	beq.w	8006914 <_vfprintf_r+0x10a4>
 8007252:	e7d1      	b.n	80071f8 <_vfprintf_r+0x1988>
 8007254:	2200      	movs	r2, #0
 8007256:	2300      	movs	r3, #0
 8007258:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800725c:	f7f9 fbf4 	bl	8000a48 <__aeabi_dcmpeq>
 8007260:	2800      	cmp	r0, #0
 8007262:	f47f af39 	bne.w	80070d8 <_vfprintf_r+0x1868>
 8007266:	f1c5 0501 	rsb	r5, r5, #1
 800726a:	9524      	str	r5, [sp, #144]	; 0x90
 800726c:	e735      	b.n	80070da <_vfprintf_r+0x186a>
 800726e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8007270:	3301      	adds	r3, #1
 8007272:	444b      	add	r3, r9
 8007274:	9309      	str	r3, [sp, #36]	; 0x24
 8007276:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800727a:	9304      	str	r3, [sp, #16]
 800727c:	2666      	movs	r6, #102	; 0x66
 800727e:	e60e      	b.n	8006e9e <_vfprintf_r+0x162e>
 8007280:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8007284:	f7ff bb7a 	b.w	800697c <_vfprintf_r+0x110c>
 8007288:	aa2a      	add	r2, sp, #168	; 0xa8
 800728a:	9907      	ldr	r1, [sp, #28]
 800728c:	9803      	ldr	r0, [sp, #12]
 800728e:	f002 fbcf 	bl	8009a30 <__sprint_r>
 8007292:	2800      	cmp	r0, #0
 8007294:	f47f a864 	bne.w	8006360 <_vfprintf_r+0xaf0>
 8007298:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800729c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80072a0:	f7ff bbbd 	b.w	8006a1e <_vfprintf_r+0x11ae>
 80072a4:	9908      	ldr	r1, [sp, #32]
 80072a6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80072aa:	680b      	ldr	r3, [r1, #0]
 80072ac:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80072b0:	1d0b      	adds	r3, r1, #4
 80072b2:	4692      	mov	sl, r2
 80072b4:	9308      	str	r3, [sp, #32]
 80072b6:	f7fe bb59 	b.w	800596c <_vfprintf_r+0xfc>
 80072ba:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80072be:	f7ff bb60 	b.w	8006982 <_vfprintf_r+0x1112>
 80072c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80072c6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80072ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80072ce:	f8a9 300c 	strh.w	r3, [r9, #12]
 80072d2:	f7ff b84c 	b.w	800636e <_vfprintf_r+0xafe>
 80072d6:	bf00      	nop
 80072d8:	0800a3d4 	.word	0x0800a3d4
 80072dc:	0800a3a4 	.word	0x0800a3a4
 80072e0:	cccccccd 	.word	0xcccccccd
 80072e4:	0800a38c 	.word	0x0800a38c
 80072e8:	0800a388 	.word	0x0800a388

080072ec <__sbprintf>:
 80072ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80072f0:	460c      	mov	r4, r1
 80072f2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80072f6:	8989      	ldrh	r1, [r1, #12]
 80072f8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80072fa:	89e5      	ldrh	r5, [r4, #14]
 80072fc:	9619      	str	r6, [sp, #100]	; 0x64
 80072fe:	f021 0102 	bic.w	r1, r1, #2
 8007302:	4606      	mov	r6, r0
 8007304:	69e0      	ldr	r0, [r4, #28]
 8007306:	f8ad 100c 	strh.w	r1, [sp, #12]
 800730a:	4617      	mov	r7, r2
 800730c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8007310:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8007312:	f8ad 500e 	strh.w	r5, [sp, #14]
 8007316:	4698      	mov	r8, r3
 8007318:	ad1a      	add	r5, sp, #104	; 0x68
 800731a:	2300      	movs	r3, #0
 800731c:	9007      	str	r0, [sp, #28]
 800731e:	a816      	add	r0, sp, #88	; 0x58
 8007320:	9209      	str	r2, [sp, #36]	; 0x24
 8007322:	9306      	str	r3, [sp, #24]
 8007324:	9500      	str	r5, [sp, #0]
 8007326:	9504      	str	r5, [sp, #16]
 8007328:	9102      	str	r1, [sp, #8]
 800732a:	9105      	str	r1, [sp, #20]
 800732c:	f001 fcfe 	bl	8008d2c <__retarget_lock_init_recursive>
 8007330:	4643      	mov	r3, r8
 8007332:	463a      	mov	r2, r7
 8007334:	4669      	mov	r1, sp
 8007336:	4630      	mov	r0, r6
 8007338:	f7fe fa9a 	bl	8005870 <_vfprintf_r>
 800733c:	1e05      	subs	r5, r0, #0
 800733e:	db07      	blt.n	8007350 <__sbprintf+0x64>
 8007340:	4630      	mov	r0, r6
 8007342:	4669      	mov	r1, sp
 8007344:	f001 f94a 	bl	80085dc <_fflush_r>
 8007348:	2800      	cmp	r0, #0
 800734a:	bf18      	it	ne
 800734c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8007350:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8007354:	065b      	lsls	r3, r3, #25
 8007356:	d503      	bpl.n	8007360 <__sbprintf+0x74>
 8007358:	89a3      	ldrh	r3, [r4, #12]
 800735a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800735e:	81a3      	strh	r3, [r4, #12]
 8007360:	9816      	ldr	r0, [sp, #88]	; 0x58
 8007362:	f001 fce5 	bl	8008d30 <__retarget_lock_close_recursive>
 8007366:	4628      	mov	r0, r5
 8007368:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800736c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007370 <__swsetup_r>:
 8007370:	b538      	push	{r3, r4, r5, lr}
 8007372:	4b31      	ldr	r3, [pc, #196]	; (8007438 <__swsetup_r+0xc8>)
 8007374:	681b      	ldr	r3, [r3, #0]
 8007376:	4605      	mov	r5, r0
 8007378:	460c      	mov	r4, r1
 800737a:	b113      	cbz	r3, 8007382 <__swsetup_r+0x12>
 800737c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800737e:	2a00      	cmp	r2, #0
 8007380:	d03a      	beq.n	80073f8 <__swsetup_r+0x88>
 8007382:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007386:	b293      	uxth	r3, r2
 8007388:	0718      	lsls	r0, r3, #28
 800738a:	d50c      	bpl.n	80073a6 <__swsetup_r+0x36>
 800738c:	6920      	ldr	r0, [r4, #16]
 800738e:	b1a8      	cbz	r0, 80073bc <__swsetup_r+0x4c>
 8007390:	f013 0201 	ands.w	r2, r3, #1
 8007394:	d020      	beq.n	80073d8 <__swsetup_r+0x68>
 8007396:	6963      	ldr	r3, [r4, #20]
 8007398:	2200      	movs	r2, #0
 800739a:	425b      	negs	r3, r3
 800739c:	61a3      	str	r3, [r4, #24]
 800739e:	60a2      	str	r2, [r4, #8]
 80073a0:	b300      	cbz	r0, 80073e4 <__swsetup_r+0x74>
 80073a2:	2000      	movs	r0, #0
 80073a4:	bd38      	pop	{r3, r4, r5, pc}
 80073a6:	06d9      	lsls	r1, r3, #27
 80073a8:	d53e      	bpl.n	8007428 <__swsetup_r+0xb8>
 80073aa:	0758      	lsls	r0, r3, #29
 80073ac:	d428      	bmi.n	8007400 <__swsetup_r+0x90>
 80073ae:	6920      	ldr	r0, [r4, #16]
 80073b0:	f042 0308 	orr.w	r3, r2, #8
 80073b4:	81a3      	strh	r3, [r4, #12]
 80073b6:	b29b      	uxth	r3, r3
 80073b8:	2800      	cmp	r0, #0
 80073ba:	d1e9      	bne.n	8007390 <__swsetup_r+0x20>
 80073bc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80073c0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80073c4:	d0e4      	beq.n	8007390 <__swsetup_r+0x20>
 80073c6:	4628      	mov	r0, r5
 80073c8:	4621      	mov	r1, r4
 80073ca:	f001 fce5 	bl	8008d98 <__smakebuf_r>
 80073ce:	89a3      	ldrh	r3, [r4, #12]
 80073d0:	6920      	ldr	r0, [r4, #16]
 80073d2:	f013 0201 	ands.w	r2, r3, #1
 80073d6:	d1de      	bne.n	8007396 <__swsetup_r+0x26>
 80073d8:	0799      	lsls	r1, r3, #30
 80073da:	bf58      	it	pl
 80073dc:	6962      	ldrpl	r2, [r4, #20]
 80073de:	60a2      	str	r2, [r4, #8]
 80073e0:	2800      	cmp	r0, #0
 80073e2:	d1de      	bne.n	80073a2 <__swsetup_r+0x32>
 80073e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80073e8:	061a      	lsls	r2, r3, #24
 80073ea:	d5db      	bpl.n	80073a4 <__swsetup_r+0x34>
 80073ec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80073f0:	81a3      	strh	r3, [r4, #12]
 80073f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80073f6:	bd38      	pop	{r3, r4, r5, pc}
 80073f8:	4618      	mov	r0, r3
 80073fa:	f001 f94b 	bl	8008694 <__sinit>
 80073fe:	e7c0      	b.n	8007382 <__swsetup_r+0x12>
 8007400:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007402:	b151      	cbz	r1, 800741a <__swsetup_r+0xaa>
 8007404:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007408:	4299      	cmp	r1, r3
 800740a:	d004      	beq.n	8007416 <__swsetup_r+0xa6>
 800740c:	4628      	mov	r0, r5
 800740e:	f001 f9e3 	bl	80087d8 <_free_r>
 8007412:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007416:	2300      	movs	r3, #0
 8007418:	6323      	str	r3, [r4, #48]	; 0x30
 800741a:	2300      	movs	r3, #0
 800741c:	6920      	ldr	r0, [r4, #16]
 800741e:	6063      	str	r3, [r4, #4]
 8007420:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8007424:	6020      	str	r0, [r4, #0]
 8007426:	e7c3      	b.n	80073b0 <__swsetup_r+0x40>
 8007428:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800742c:	2309      	movs	r3, #9
 800742e:	602b      	str	r3, [r5, #0]
 8007430:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007434:	81a2      	strh	r2, [r4, #12]
 8007436:	bd38      	pop	{r3, r4, r5, pc}
 8007438:	20000030 	.word	0x20000030

0800743c <register_fini>:
 800743c:	4b02      	ldr	r3, [pc, #8]	; (8007448 <register_fini+0xc>)
 800743e:	b113      	cbz	r3, 8007446 <register_fini+0xa>
 8007440:	4802      	ldr	r0, [pc, #8]	; (800744c <register_fini+0x10>)
 8007442:	f000 b879 	b.w	8007538 <atexit>
 8007446:	4770      	bx	lr
 8007448:	00000000 	.word	0x00000000
 800744c:	08008705 	.word	0x08008705

08007450 <__call_exitprocs>:
 8007450:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007454:	4b35      	ldr	r3, [pc, #212]	; (800752c <__call_exitprocs+0xdc>)
 8007456:	b085      	sub	sp, #20
 8007458:	460f      	mov	r7, r1
 800745a:	9003      	str	r0, [sp, #12]
 800745c:	6818      	ldr	r0, [r3, #0]
 800745e:	f001 fc69 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8007462:	4b33      	ldr	r3, [pc, #204]	; (8007530 <__call_exitprocs+0xe0>)
 8007464:	681b      	ldr	r3, [r3, #0]
 8007466:	9301      	str	r3, [sp, #4]
 8007468:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 800746c:	9302      	str	r3, [sp, #8]
 800746e:	46b9      	mov	r9, r7
 8007470:	9b01      	ldr	r3, [sp, #4]
 8007472:	f8d3 6148 	ldr.w	r6, [r3, #328]	; 0x148
 8007476:	b33e      	cbz	r6, 80074c8 <__call_exitprocs+0x78>
 8007478:	f8dd a008 	ldr.w	sl, [sp, #8]
 800747c:	f04f 0801 	mov.w	r8, #1
 8007480:	6874      	ldr	r4, [r6, #4]
 8007482:	1e65      	subs	r5, r4, #1
 8007484:	d40f      	bmi.n	80074a6 <__call_exitprocs+0x56>
 8007486:	3401      	adds	r4, #1
 8007488:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 800748c:	2700      	movs	r7, #0
 800748e:	f1b9 0f00 	cmp.w	r9, #0
 8007492:	d020      	beq.n	80074d6 <__call_exitprocs+0x86>
 8007494:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 8007498:	454b      	cmp	r3, r9
 800749a:	d01c      	beq.n	80074d6 <__call_exitprocs+0x86>
 800749c:	3d01      	subs	r5, #1
 800749e:	1c6b      	adds	r3, r5, #1
 80074a0:	f1a4 0404 	sub.w	r4, r4, #4
 80074a4:	d1f3      	bne.n	800748e <__call_exitprocs+0x3e>
 80074a6:	4b23      	ldr	r3, [pc, #140]	; (8007534 <__call_exitprocs+0xe4>)
 80074a8:	b173      	cbz	r3, 80074c8 <__call_exitprocs+0x78>
 80074aa:	e9d6 3200 	ldrd	r3, r2, [r6]
 80074ae:	2a00      	cmp	r2, #0
 80074b0:	d134      	bne.n	800751c <__call_exitprocs+0xcc>
 80074b2:	2b00      	cmp	r3, #0
 80074b4:	d032      	beq.n	800751c <__call_exitprocs+0xcc>
 80074b6:	4630      	mov	r0, r6
 80074b8:	f8ca 3000 	str.w	r3, [sl]
 80074bc:	f7fd fe58 	bl	8005170 <free>
 80074c0:	f8da 6000 	ldr.w	r6, [sl]
 80074c4:	2e00      	cmp	r6, #0
 80074c6:	d1db      	bne.n	8007480 <__call_exitprocs+0x30>
 80074c8:	4b18      	ldr	r3, [pc, #96]	; (800752c <__call_exitprocs+0xdc>)
 80074ca:	6818      	ldr	r0, [r3, #0]
 80074cc:	b005      	add	sp, #20
 80074ce:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80074d2:	f001 bc31 	b.w	8008d38 <__retarget_lock_release_recursive>
 80074d6:	6873      	ldr	r3, [r6, #4]
 80074d8:	6822      	ldr	r2, [r4, #0]
 80074da:	3b01      	subs	r3, #1
 80074dc:	42ab      	cmp	r3, r5
 80074de:	bf0c      	ite	eq
 80074e0:	6075      	streq	r5, [r6, #4]
 80074e2:	6027      	strne	r7, [r4, #0]
 80074e4:	2a00      	cmp	r2, #0
 80074e6:	d0d9      	beq.n	800749c <__call_exitprocs+0x4c>
 80074e8:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
 80074ec:	f8d6 b004 	ldr.w	fp, [r6, #4]
 80074f0:	fa08 f305 	lsl.w	r3, r8, r5
 80074f4:	420b      	tst	r3, r1
 80074f6:	d108      	bne.n	800750a <__call_exitprocs+0xba>
 80074f8:	4790      	blx	r2
 80074fa:	6873      	ldr	r3, [r6, #4]
 80074fc:	455b      	cmp	r3, fp
 80074fe:	d1b7      	bne.n	8007470 <__call_exitprocs+0x20>
 8007500:	f8da 3000 	ldr.w	r3, [sl]
 8007504:	42b3      	cmp	r3, r6
 8007506:	d0c9      	beq.n	800749c <__call_exitprocs+0x4c>
 8007508:	e7b2      	b.n	8007470 <__call_exitprocs+0x20>
 800750a:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 800750e:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 8007512:	4203      	tst	r3, r0
 8007514:	d107      	bne.n	8007526 <__call_exitprocs+0xd6>
 8007516:	9803      	ldr	r0, [sp, #12]
 8007518:	4790      	blx	r2
 800751a:	e7ee      	b.n	80074fa <__call_exitprocs+0xaa>
 800751c:	46b2      	mov	sl, r6
 800751e:	461e      	mov	r6, r3
 8007520:	2e00      	cmp	r6, #0
 8007522:	d1ad      	bne.n	8007480 <__call_exitprocs+0x30>
 8007524:	e7d0      	b.n	80074c8 <__call_exitprocs+0x78>
 8007526:	4608      	mov	r0, r1
 8007528:	4790      	blx	r2
 800752a:	e7e6      	b.n	80074fa <__call_exitprocs+0xaa>
 800752c:	20000870 	.word	0x20000870
 8007530:	0800a378 	.word	0x0800a378
 8007534:	08005171 	.word	0x08005171

08007538 <atexit>:
 8007538:	2300      	movs	r3, #0
 800753a:	4601      	mov	r1, r0
 800753c:	461a      	mov	r2, r3
 800753e:	4618      	mov	r0, r3
 8007540:	f002 ba96 	b.w	8009a70 <__register_exitproc>

08007544 <quorem>:
 8007544:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007548:	6903      	ldr	r3, [r0, #16]
 800754a:	690f      	ldr	r7, [r1, #16]
 800754c:	42bb      	cmp	r3, r7
 800754e:	b083      	sub	sp, #12
 8007550:	f2c0 8086 	blt.w	8007660 <quorem+0x11c>
 8007554:	3f01      	subs	r7, #1
 8007556:	f101 0914 	add.w	r9, r1, #20
 800755a:	f100 0a14 	add.w	sl, r0, #20
 800755e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8007562:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8007566:	00bc      	lsls	r4, r7, #2
 8007568:	3201      	adds	r2, #1
 800756a:	fbb3 f8f2 	udiv	r8, r3, r2
 800756e:	eb0a 0304 	add.w	r3, sl, r4
 8007572:	9400      	str	r4, [sp, #0]
 8007574:	eb09 0b04 	add.w	fp, r9, r4
 8007578:	9301      	str	r3, [sp, #4]
 800757a:	f1b8 0f00 	cmp.w	r8, #0
 800757e:	d038      	beq.n	80075f2 <quorem+0xae>
 8007580:	2500      	movs	r5, #0
 8007582:	462e      	mov	r6, r5
 8007584:	46ce      	mov	lr, r9
 8007586:	46d4      	mov	ip, sl
 8007588:	f85e 4b04 	ldr.w	r4, [lr], #4
 800758c:	f8dc 3000 	ldr.w	r3, [ip]
 8007590:	b2a2      	uxth	r2, r4
 8007592:	fb08 5502 	mla	r5, r8, r2, r5
 8007596:	0c22      	lsrs	r2, r4, #16
 8007598:	0c2c      	lsrs	r4, r5, #16
 800759a:	fb08 4202 	mla	r2, r8, r2, r4
 800759e:	b2ad      	uxth	r5, r5
 80075a0:	1b75      	subs	r5, r6, r5
 80075a2:	b296      	uxth	r6, r2
 80075a4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80075a8:	fa15 f383 	uxtah	r3, r5, r3
 80075ac:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80075b0:	b29b      	uxth	r3, r3
 80075b2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80075b6:	45f3      	cmp	fp, lr
 80075b8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80075bc:	f84c 3b04 	str.w	r3, [ip], #4
 80075c0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80075c4:	d2e0      	bcs.n	8007588 <quorem+0x44>
 80075c6:	9b00      	ldr	r3, [sp, #0]
 80075c8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80075cc:	b98b      	cbnz	r3, 80075f2 <quorem+0xae>
 80075ce:	9a01      	ldr	r2, [sp, #4]
 80075d0:	1f13      	subs	r3, r2, #4
 80075d2:	459a      	cmp	sl, r3
 80075d4:	d20c      	bcs.n	80075f0 <quorem+0xac>
 80075d6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80075da:	b94b      	cbnz	r3, 80075f0 <quorem+0xac>
 80075dc:	f1a2 0308 	sub.w	r3, r2, #8
 80075e0:	e002      	b.n	80075e8 <quorem+0xa4>
 80075e2:	681a      	ldr	r2, [r3, #0]
 80075e4:	3b04      	subs	r3, #4
 80075e6:	b91a      	cbnz	r2, 80075f0 <quorem+0xac>
 80075e8:	459a      	cmp	sl, r3
 80075ea:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80075ee:	d3f8      	bcc.n	80075e2 <quorem+0x9e>
 80075f0:	6107      	str	r7, [r0, #16]
 80075f2:	4604      	mov	r4, r0
 80075f4:	f001 fe94 	bl	8009320 <__mcmp>
 80075f8:	2800      	cmp	r0, #0
 80075fa:	db2d      	blt.n	8007658 <quorem+0x114>
 80075fc:	f108 0801 	add.w	r8, r8, #1
 8007600:	4655      	mov	r5, sl
 8007602:	2300      	movs	r3, #0
 8007604:	f859 1b04 	ldr.w	r1, [r9], #4
 8007608:	6828      	ldr	r0, [r5, #0]
 800760a:	b28a      	uxth	r2, r1
 800760c:	1a9a      	subs	r2, r3, r2
 800760e:	0c0b      	lsrs	r3, r1, #16
 8007610:	fa12 f280 	uxtah	r2, r2, r0
 8007614:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8007618:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800761c:	b292      	uxth	r2, r2
 800761e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007622:	45cb      	cmp	fp, r9
 8007624:	f845 2b04 	str.w	r2, [r5], #4
 8007628:	ea4f 4323 	mov.w	r3, r3, asr #16
 800762c:	d2ea      	bcs.n	8007604 <quorem+0xc0>
 800762e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8007632:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8007636:	b97a      	cbnz	r2, 8007658 <quorem+0x114>
 8007638:	1f1a      	subs	r2, r3, #4
 800763a:	4592      	cmp	sl, r2
 800763c:	d20b      	bcs.n	8007656 <quorem+0x112>
 800763e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8007642:	b942      	cbnz	r2, 8007656 <quorem+0x112>
 8007644:	3b08      	subs	r3, #8
 8007646:	e002      	b.n	800764e <quorem+0x10a>
 8007648:	681a      	ldr	r2, [r3, #0]
 800764a:	3b04      	subs	r3, #4
 800764c:	b91a      	cbnz	r2, 8007656 <quorem+0x112>
 800764e:	459a      	cmp	sl, r3
 8007650:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8007654:	d3f8      	bcc.n	8007648 <quorem+0x104>
 8007656:	6127      	str	r7, [r4, #16]
 8007658:	4640      	mov	r0, r8
 800765a:	b003      	add	sp, #12
 800765c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007660:	2000      	movs	r0, #0
 8007662:	b003      	add	sp, #12
 8007664:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08007668 <_dtoa_r>:
 8007668:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800766c:	ec55 4b10 	vmov	r4, r5, d0
 8007670:	b09b      	sub	sp, #108	; 0x6c
 8007672:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8007674:	9102      	str	r1, [sp, #8]
 8007676:	4681      	mov	r9, r0
 8007678:	9207      	str	r2, [sp, #28]
 800767a:	9305      	str	r3, [sp, #20]
 800767c:	e9cd 4500 	strd	r4, r5, [sp]
 8007680:	b156      	cbz	r6, 8007698 <_dtoa_r+0x30>
 8007682:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8007684:	6072      	str	r2, [r6, #4]
 8007686:	2301      	movs	r3, #1
 8007688:	4093      	lsls	r3, r2
 800768a:	60b3      	str	r3, [r6, #8]
 800768c:	4631      	mov	r1, r6
 800768e:	f001 fc57 	bl	8008f40 <_Bfree>
 8007692:	2300      	movs	r3, #0
 8007694:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8007698:	f1b5 0800 	subs.w	r8, r5, #0
 800769c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800769e:	bfb4      	ite	lt
 80076a0:	2301      	movlt	r3, #1
 80076a2:	2300      	movge	r3, #0
 80076a4:	6013      	str	r3, [r2, #0]
 80076a6:	4b76      	ldr	r3, [pc, #472]	; (8007880 <_dtoa_r+0x218>)
 80076a8:	bfbc      	itt	lt
 80076aa:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80076ae:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80076b2:	ea33 0308 	bics.w	r3, r3, r8
 80076b6:	f000 80a6 	beq.w	8007806 <_dtoa_r+0x19e>
 80076ba:	e9dd 6700 	ldrd	r6, r7, [sp]
 80076be:	2200      	movs	r2, #0
 80076c0:	2300      	movs	r3, #0
 80076c2:	4630      	mov	r0, r6
 80076c4:	4639      	mov	r1, r7
 80076c6:	f7f9 f9bf 	bl	8000a48 <__aeabi_dcmpeq>
 80076ca:	4605      	mov	r5, r0
 80076cc:	b178      	cbz	r0, 80076ee <_dtoa_r+0x86>
 80076ce:	9a05      	ldr	r2, [sp, #20]
 80076d0:	2301      	movs	r3, #1
 80076d2:	6013      	str	r3, [r2, #0]
 80076d4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80076d6:	2b00      	cmp	r3, #0
 80076d8:	f000 80c0 	beq.w	800785c <_dtoa_r+0x1f4>
 80076dc:	4b69      	ldr	r3, [pc, #420]	; (8007884 <_dtoa_r+0x21c>)
 80076de:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80076e0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80076e4:	6013      	str	r3, [r2, #0]
 80076e6:	4658      	mov	r0, fp
 80076e8:	b01b      	add	sp, #108	; 0x6c
 80076ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80076ee:	aa18      	add	r2, sp, #96	; 0x60
 80076f0:	a919      	add	r1, sp, #100	; 0x64
 80076f2:	ec47 6b10 	vmov	d0, r6, r7
 80076f6:	4648      	mov	r0, r9
 80076f8:	f001 fea4 	bl	8009444 <__d2b>
 80076fc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8007700:	4682      	mov	sl, r0
 8007702:	f040 80a0 	bne.w	8007846 <_dtoa_r+0x1de>
 8007706:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800770a:	442c      	add	r4, r5
 800770c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8007710:	2b20      	cmp	r3, #32
 8007712:	f340 842c 	ble.w	8007f6e <_dtoa_r+0x906>
 8007716:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800771a:	fa08 f803 	lsl.w	r8, r8, r3
 800771e:	9b00      	ldr	r3, [sp, #0]
 8007720:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8007724:	fa23 f000 	lsr.w	r0, r3, r0
 8007728:	ea48 0000 	orr.w	r0, r8, r0
 800772c:	f7f8 feaa 	bl	8000484 <__aeabi_ui2d>
 8007730:	2301      	movs	r3, #1
 8007732:	4606      	mov	r6, r0
 8007734:	3c01      	subs	r4, #1
 8007736:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800773a:	930f      	str	r3, [sp, #60]	; 0x3c
 800773c:	4630      	mov	r0, r6
 800773e:	4639      	mov	r1, r7
 8007740:	2200      	movs	r2, #0
 8007742:	4b51      	ldr	r3, [pc, #324]	; (8007888 <_dtoa_r+0x220>)
 8007744:	f7f8 fd60 	bl	8000208 <__aeabi_dsub>
 8007748:	a347      	add	r3, pc, #284	; (adr r3, 8007868 <_dtoa_r+0x200>)
 800774a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800774e:	f7f8 ff13 	bl	8000578 <__aeabi_dmul>
 8007752:	a347      	add	r3, pc, #284	; (adr r3, 8007870 <_dtoa_r+0x208>)
 8007754:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007758:	f7f8 fd58 	bl	800020c <__adddf3>
 800775c:	4606      	mov	r6, r0
 800775e:	4620      	mov	r0, r4
 8007760:	460f      	mov	r7, r1
 8007762:	f7f8 fe9f 	bl	80004a4 <__aeabi_i2d>
 8007766:	a344      	add	r3, pc, #272	; (adr r3, 8007878 <_dtoa_r+0x210>)
 8007768:	e9d3 2300 	ldrd	r2, r3, [r3]
 800776c:	f7f8 ff04 	bl	8000578 <__aeabi_dmul>
 8007770:	4602      	mov	r2, r0
 8007772:	460b      	mov	r3, r1
 8007774:	4630      	mov	r0, r6
 8007776:	4639      	mov	r1, r7
 8007778:	f7f8 fd48 	bl	800020c <__adddf3>
 800777c:	4606      	mov	r6, r0
 800777e:	460f      	mov	r7, r1
 8007780:	f7f9 f994 	bl	8000aac <__aeabi_d2iz>
 8007784:	2200      	movs	r2, #0
 8007786:	9006      	str	r0, [sp, #24]
 8007788:	2300      	movs	r3, #0
 800778a:	4630      	mov	r0, r6
 800778c:	4639      	mov	r1, r7
 800778e:	f7f9 f965 	bl	8000a5c <__aeabi_dcmplt>
 8007792:	2800      	cmp	r0, #0
 8007794:	f040 8273 	bne.w	8007c7e <_dtoa_r+0x616>
 8007798:	9e06      	ldr	r6, [sp, #24]
 800779a:	2e16      	cmp	r6, #22
 800779c:	f200 825d 	bhi.w	8007c5a <_dtoa_r+0x5f2>
 80077a0:	4b3a      	ldr	r3, [pc, #232]	; (800788c <_dtoa_r+0x224>)
 80077a2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80077a6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80077aa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80077ae:	f7f9 f973 	bl	8000a98 <__aeabi_dcmpgt>
 80077b2:	2800      	cmp	r0, #0
 80077b4:	f000 83d7 	beq.w	8007f66 <_dtoa_r+0x8fe>
 80077b8:	1e73      	subs	r3, r6, #1
 80077ba:	9306      	str	r3, [sp, #24]
 80077bc:	2300      	movs	r3, #0
 80077be:	930d      	str	r3, [sp, #52]	; 0x34
 80077c0:	1b2c      	subs	r4, r5, r4
 80077c2:	f1b4 0801 	subs.w	r8, r4, #1
 80077c6:	f100 8254 	bmi.w	8007c72 <_dtoa_r+0x60a>
 80077ca:	2300      	movs	r3, #0
 80077cc:	9308      	str	r3, [sp, #32]
 80077ce:	9b06      	ldr	r3, [sp, #24]
 80077d0:	2b00      	cmp	r3, #0
 80077d2:	f2c0 8245 	blt.w	8007c60 <_dtoa_r+0x5f8>
 80077d6:	4498      	add	r8, r3
 80077d8:	930c      	str	r3, [sp, #48]	; 0x30
 80077da:	2300      	movs	r3, #0
 80077dc:	930b      	str	r3, [sp, #44]	; 0x2c
 80077de:	9b02      	ldr	r3, [sp, #8]
 80077e0:	2b09      	cmp	r3, #9
 80077e2:	d85b      	bhi.n	800789c <_dtoa_r+0x234>
 80077e4:	2b05      	cmp	r3, #5
 80077e6:	f340 83c0 	ble.w	8007f6a <_dtoa_r+0x902>
 80077ea:	3b04      	subs	r3, #4
 80077ec:	9302      	str	r3, [sp, #8]
 80077ee:	2500      	movs	r5, #0
 80077f0:	9b02      	ldr	r3, [sp, #8]
 80077f2:	3b02      	subs	r3, #2
 80077f4:	2b03      	cmp	r3, #3
 80077f6:	f200 8498 	bhi.w	800812a <_dtoa_r+0xac2>
 80077fa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80077fe:	03df      	.short	0x03df
 8007800:	03e803bf 	.word	0x03e803bf
 8007804:	04f5      	.short	0x04f5
 8007806:	9a05      	ldr	r2, [sp, #20]
 8007808:	f242 730f 	movw	r3, #9999	; 0x270f
 800780c:	6013      	str	r3, [r2, #0]
 800780e:	9b00      	ldr	r3, [sp, #0]
 8007810:	b983      	cbnz	r3, 8007834 <_dtoa_r+0x1cc>
 8007812:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8007816:	b96b      	cbnz	r3, 8007834 <_dtoa_r+0x1cc>
 8007818:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800781a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8007890 <_dtoa_r+0x228>
 800781e:	2b00      	cmp	r3, #0
 8007820:	f43f af61 	beq.w	80076e6 <_dtoa_r+0x7e>
 8007824:	f10b 0308 	add.w	r3, fp, #8
 8007828:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800782a:	4658      	mov	r0, fp
 800782c:	6013      	str	r3, [r2, #0]
 800782e:	b01b      	add	sp, #108	; 0x6c
 8007830:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007834:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007836:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8007894 <_dtoa_r+0x22c>
 800783a:	2b00      	cmp	r3, #0
 800783c:	f43f af53 	beq.w	80076e6 <_dtoa_r+0x7e>
 8007840:	f10b 0303 	add.w	r3, fp, #3
 8007844:	e7f0      	b.n	8007828 <_dtoa_r+0x1c0>
 8007846:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800784a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800784e:	950f      	str	r5, [sp, #60]	; 0x3c
 8007850:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8007854:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8007858:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800785a:	e76f      	b.n	800773c <_dtoa_r+0xd4>
 800785c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007898 <_dtoa_r+0x230>
 8007860:	4658      	mov	r0, fp
 8007862:	b01b      	add	sp, #108	; 0x6c
 8007864:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007868:	636f4361 	.word	0x636f4361
 800786c:	3fd287a7 	.word	0x3fd287a7
 8007870:	8b60c8b3 	.word	0x8b60c8b3
 8007874:	3fc68a28 	.word	0x3fc68a28
 8007878:	509f79fb 	.word	0x509f79fb
 800787c:	3fd34413 	.word	0x3fd34413
 8007880:	7ff00000 	.word	0x7ff00000
 8007884:	0800a3c1 	.word	0x0800a3c1
 8007888:	3ff80000 	.word	0x3ff80000
 800788c:	0800a420 	.word	0x0800a420
 8007890:	0800a3e4 	.word	0x0800a3e4
 8007894:	0800a3f0 	.word	0x0800a3f0
 8007898:	0800a3c0 	.word	0x0800a3c0
 800789c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80078a0:	2501      	movs	r5, #1
 80078a2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80078a6:	2300      	movs	r3, #0
 80078a8:	9302      	str	r3, [sp, #8]
 80078aa:	9307      	str	r3, [sp, #28]
 80078ac:	2100      	movs	r1, #0
 80078ae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80078b2:	940e      	str	r4, [sp, #56]	; 0x38
 80078b4:	4648      	mov	r0, r9
 80078b6:	f001 fb1d 	bl	8008ef4 <_Balloc>
 80078ba:	2c0e      	cmp	r4, #14
 80078bc:	4683      	mov	fp, r0
 80078be:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80078c2:	f200 80fb 	bhi.w	8007abc <_dtoa_r+0x454>
 80078c6:	2d00      	cmp	r5, #0
 80078c8:	f000 80f8 	beq.w	8007abc <_dtoa_r+0x454>
 80078cc:	ed9d 7b00 	vldr	d7, [sp]
 80078d0:	9906      	ldr	r1, [sp, #24]
 80078d2:	2900      	cmp	r1, #0
 80078d4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80078d8:	f340 83e5 	ble.w	80080a6 <_dtoa_r+0xa3e>
 80078dc:	4b9d      	ldr	r3, [pc, #628]	; (8007b54 <_dtoa_r+0x4ec>)
 80078de:	f001 020f 	and.w	r2, r1, #15
 80078e2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80078e6:	ed93 7b00 	vldr	d7, [r3]
 80078ea:	110c      	asrs	r4, r1, #4
 80078ec:	06e2      	lsls	r2, r4, #27
 80078ee:	ed8d 7b00 	vstr	d7, [sp]
 80078f2:	f140 849e 	bpl.w	8008232 <_dtoa_r+0xbca>
 80078f6:	4b98      	ldr	r3, [pc, #608]	; (8007b58 <_dtoa_r+0x4f0>)
 80078f8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80078fc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8007900:	f7f8 ff64 	bl	80007cc <__aeabi_ddiv>
 8007904:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8007908:	f004 040f 	and.w	r4, r4, #15
 800790c:	2603      	movs	r6, #3
 800790e:	b17c      	cbz	r4, 8007930 <_dtoa_r+0x2c8>
 8007910:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007914:	4d90      	ldr	r5, [pc, #576]	; (8007b58 <_dtoa_r+0x4f0>)
 8007916:	07e3      	lsls	r3, r4, #31
 8007918:	d504      	bpl.n	8007924 <_dtoa_r+0x2bc>
 800791a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800791e:	f7f8 fe2b 	bl	8000578 <__aeabi_dmul>
 8007922:	3601      	adds	r6, #1
 8007924:	1064      	asrs	r4, r4, #1
 8007926:	f105 0508 	add.w	r5, r5, #8
 800792a:	d1f4      	bne.n	8007916 <_dtoa_r+0x2ae>
 800792c:	e9cd 0100 	strd	r0, r1, [sp]
 8007930:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007934:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007938:	f7f8 ff48 	bl	80007cc <__aeabi_ddiv>
 800793c:	e9cd 0100 	strd	r0, r1, [sp]
 8007940:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007942:	b143      	cbz	r3, 8007956 <_dtoa_r+0x2ee>
 8007944:	2200      	movs	r2, #0
 8007946:	4b85      	ldr	r3, [pc, #532]	; (8007b5c <_dtoa_r+0x4f4>)
 8007948:	e9dd 0100 	ldrd	r0, r1, [sp]
 800794c:	f7f9 f886 	bl	8000a5c <__aeabi_dcmplt>
 8007950:	2800      	cmp	r0, #0
 8007952:	f040 84ff 	bne.w	8008354 <_dtoa_r+0xcec>
 8007956:	4630      	mov	r0, r6
 8007958:	f7f8 fda4 	bl	80004a4 <__aeabi_i2d>
 800795c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007960:	f7f8 fe0a 	bl	8000578 <__aeabi_dmul>
 8007964:	4b7e      	ldr	r3, [pc, #504]	; (8007b60 <_dtoa_r+0x4f8>)
 8007966:	2200      	movs	r2, #0
 8007968:	f7f8 fc50 	bl	800020c <__adddf3>
 800796c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800796e:	4606      	mov	r6, r0
 8007970:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007974:	2b00      	cmp	r3, #0
 8007976:	f000 841c 	beq.w	80081b2 <_dtoa_r+0xb4a>
 800797a:	9b06      	ldr	r3, [sp, #24]
 800797c:	9316      	str	r3, [sp, #88]	; 0x58
 800797e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007980:	9312      	str	r3, [sp, #72]	; 0x48
 8007982:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007986:	f7f9 f891 	bl	8000aac <__aeabi_d2iz>
 800798a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800798c:	4b71      	ldr	r3, [pc, #452]	; (8007b54 <_dtoa_r+0x4ec>)
 800798e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007992:	ed13 7b02 	vldr	d7, [r3, #-8]
 8007996:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800799a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800799e:	f7f8 fd81 	bl	80004a4 <__aeabi_i2d>
 80079a2:	460b      	mov	r3, r1
 80079a4:	4602      	mov	r2, r0
 80079a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80079aa:	e9cd 6700 	strd	r6, r7, [sp]
 80079ae:	f7f8 fc2b 	bl	8000208 <__aeabi_dsub>
 80079b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80079b4:	b2ed      	uxtb	r5, r5
 80079b6:	4606      	mov	r6, r0
 80079b8:	460f      	mov	r7, r1
 80079ba:	f10b 0401 	add.w	r4, fp, #1
 80079be:	2b00      	cmp	r3, #0
 80079c0:	f000 8458 	beq.w	8008274 <_dtoa_r+0xc0c>
 80079c4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80079c8:	2000      	movs	r0, #0
 80079ca:	4966      	ldr	r1, [pc, #408]	; (8007b64 <_dtoa_r+0x4fc>)
 80079cc:	f7f8 fefe 	bl	80007cc <__aeabi_ddiv>
 80079d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80079d4:	f7f8 fc18 	bl	8000208 <__aeabi_dsub>
 80079d8:	f88b 5000 	strb.w	r5, [fp]
 80079dc:	4632      	mov	r2, r6
 80079de:	463b      	mov	r3, r7
 80079e0:	e9cd 0100 	strd	r0, r1, [sp]
 80079e4:	f7f9 f858 	bl	8000a98 <__aeabi_dcmpgt>
 80079e8:	2800      	cmp	r0, #0
 80079ea:	f040 8502 	bne.w	80083f2 <_dtoa_r+0xd8a>
 80079ee:	4632      	mov	r2, r6
 80079f0:	463b      	mov	r3, r7
 80079f2:	2000      	movs	r0, #0
 80079f4:	4959      	ldr	r1, [pc, #356]	; (8007b5c <_dtoa_r+0x4f4>)
 80079f6:	f7f8 fc07 	bl	8000208 <__aeabi_dsub>
 80079fa:	4602      	mov	r2, r0
 80079fc:	460b      	mov	r3, r1
 80079fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007a02:	f7f9 f849 	bl	8000a98 <__aeabi_dcmpgt>
 8007a06:	2800      	cmp	r0, #0
 8007a08:	f040 84fb 	bne.w	8008402 <_dtoa_r+0xd9a>
 8007a0c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007a0e:	2a01      	cmp	r2, #1
 8007a10:	d050      	beq.n	8007ab4 <_dtoa_r+0x44c>
 8007a12:	445a      	add	r2, fp
 8007a14:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8007a18:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8007a1c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8007a20:	4692      	mov	sl, r2
 8007a22:	46cb      	mov	fp, r9
 8007a24:	e9dd 8900 	ldrd	r8, r9, [sp]
 8007a28:	e00c      	b.n	8007a44 <_dtoa_r+0x3dc>
 8007a2a:	2000      	movs	r0, #0
 8007a2c:	494b      	ldr	r1, [pc, #300]	; (8007b5c <_dtoa_r+0x4f4>)
 8007a2e:	f7f8 fbeb 	bl	8000208 <__aeabi_dsub>
 8007a32:	4642      	mov	r2, r8
 8007a34:	464b      	mov	r3, r9
 8007a36:	f7f9 f811 	bl	8000a5c <__aeabi_dcmplt>
 8007a3a:	2800      	cmp	r0, #0
 8007a3c:	f040 84dc 	bne.w	80083f8 <_dtoa_r+0xd90>
 8007a40:	4554      	cmp	r4, sl
 8007a42:	d030      	beq.n	8007aa6 <_dtoa_r+0x43e>
 8007a44:	4640      	mov	r0, r8
 8007a46:	4649      	mov	r1, r9
 8007a48:	2200      	movs	r2, #0
 8007a4a:	4b47      	ldr	r3, [pc, #284]	; (8007b68 <_dtoa_r+0x500>)
 8007a4c:	f7f8 fd94 	bl	8000578 <__aeabi_dmul>
 8007a50:	2200      	movs	r2, #0
 8007a52:	4b45      	ldr	r3, [pc, #276]	; (8007b68 <_dtoa_r+0x500>)
 8007a54:	4680      	mov	r8, r0
 8007a56:	4689      	mov	r9, r1
 8007a58:	4630      	mov	r0, r6
 8007a5a:	4639      	mov	r1, r7
 8007a5c:	f7f8 fd8c 	bl	8000578 <__aeabi_dmul>
 8007a60:	460f      	mov	r7, r1
 8007a62:	4606      	mov	r6, r0
 8007a64:	f7f9 f822 	bl	8000aac <__aeabi_d2iz>
 8007a68:	4605      	mov	r5, r0
 8007a6a:	f7f8 fd1b 	bl	80004a4 <__aeabi_i2d>
 8007a6e:	4602      	mov	r2, r0
 8007a70:	460b      	mov	r3, r1
 8007a72:	4630      	mov	r0, r6
 8007a74:	4639      	mov	r1, r7
 8007a76:	f7f8 fbc7 	bl	8000208 <__aeabi_dsub>
 8007a7a:	3530      	adds	r5, #48	; 0x30
 8007a7c:	b2ed      	uxtb	r5, r5
 8007a7e:	4642      	mov	r2, r8
 8007a80:	464b      	mov	r3, r9
 8007a82:	f804 5b01 	strb.w	r5, [r4], #1
 8007a86:	4606      	mov	r6, r0
 8007a88:	460f      	mov	r7, r1
 8007a8a:	f7f8 ffe7 	bl	8000a5c <__aeabi_dcmplt>
 8007a8e:	4632      	mov	r2, r6
 8007a90:	463b      	mov	r3, r7
 8007a92:	2800      	cmp	r0, #0
 8007a94:	d0c9      	beq.n	8007a2a <_dtoa_r+0x3c2>
 8007a96:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007a98:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007a9c:	9306      	str	r3, [sp, #24]
 8007a9e:	46d9      	mov	r9, fp
 8007aa0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007aa4:	e236      	b.n	8007f14 <_dtoa_r+0x8ac>
 8007aa6:	46d9      	mov	r9, fp
 8007aa8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007aac:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007ab0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007ab4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007ab8:	e9cd 3400 	strd	r3, r4, [sp]
 8007abc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007abe:	2b00      	cmp	r3, #0
 8007ac0:	f2c0 80ae 	blt.w	8007c20 <_dtoa_r+0x5b8>
 8007ac4:	9a06      	ldr	r2, [sp, #24]
 8007ac6:	2a0e      	cmp	r2, #14
 8007ac8:	f300 80aa 	bgt.w	8007c20 <_dtoa_r+0x5b8>
 8007acc:	4b21      	ldr	r3, [pc, #132]	; (8007b54 <_dtoa_r+0x4ec>)
 8007ace:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007ad2:	ed93 7b00 	vldr	d7, [r3]
 8007ad6:	9b07      	ldr	r3, [sp, #28]
 8007ad8:	2b00      	cmp	r3, #0
 8007ada:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007ade:	f2c0 82be 	blt.w	800805e <_dtoa_r+0x9f6>
 8007ae2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8007ae6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007aea:	4630      	mov	r0, r6
 8007aec:	4639      	mov	r1, r7
 8007aee:	f7f8 fe6d 	bl	80007cc <__aeabi_ddiv>
 8007af2:	f7f8 ffdb 	bl	8000aac <__aeabi_d2iz>
 8007af6:	4605      	mov	r5, r0
 8007af8:	f7f8 fcd4 	bl	80004a4 <__aeabi_i2d>
 8007afc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007b00:	f7f8 fd3a 	bl	8000578 <__aeabi_dmul>
 8007b04:	460b      	mov	r3, r1
 8007b06:	4602      	mov	r2, r0
 8007b08:	4639      	mov	r1, r7
 8007b0a:	4630      	mov	r0, r6
 8007b0c:	f7f8 fb7c 	bl	8000208 <__aeabi_dsub>
 8007b10:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8007b14:	f88b 3000 	strb.w	r3, [fp]
 8007b18:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007b1a:	2b01      	cmp	r3, #1
 8007b1c:	4606      	mov	r6, r0
 8007b1e:	460f      	mov	r7, r1
 8007b20:	f10b 0401 	add.w	r4, fp, #1
 8007b24:	d053      	beq.n	8007bce <_dtoa_r+0x566>
 8007b26:	2200      	movs	r2, #0
 8007b28:	4b0f      	ldr	r3, [pc, #60]	; (8007b68 <_dtoa_r+0x500>)
 8007b2a:	f7f8 fd25 	bl	8000578 <__aeabi_dmul>
 8007b2e:	2200      	movs	r2, #0
 8007b30:	2300      	movs	r3, #0
 8007b32:	4606      	mov	r6, r0
 8007b34:	460f      	mov	r7, r1
 8007b36:	f7f8 ff87 	bl	8000a48 <__aeabi_dcmpeq>
 8007b3a:	2800      	cmp	r0, #0
 8007b3c:	f040 81ea 	bne.w	8007f14 <_dtoa_r+0x8ac>
 8007b40:	f8cd a000 	str.w	sl, [sp]
 8007b44:	f8cd 901c 	str.w	r9, [sp, #28]
 8007b48:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007b4c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007b50:	e017      	b.n	8007b82 <_dtoa_r+0x51a>
 8007b52:	bf00      	nop
 8007b54:	0800a420 	.word	0x0800a420
 8007b58:	0800a3f8 	.word	0x0800a3f8
 8007b5c:	3ff00000 	.word	0x3ff00000
 8007b60:	401c0000 	.word	0x401c0000
 8007b64:	3fe00000 	.word	0x3fe00000
 8007b68:	40240000 	.word	0x40240000
 8007b6c:	f7f8 fd04 	bl	8000578 <__aeabi_dmul>
 8007b70:	2200      	movs	r2, #0
 8007b72:	2300      	movs	r3, #0
 8007b74:	4606      	mov	r6, r0
 8007b76:	460f      	mov	r7, r1
 8007b78:	f7f8 ff66 	bl	8000a48 <__aeabi_dcmpeq>
 8007b7c:	2800      	cmp	r0, #0
 8007b7e:	f040 833d 	bne.w	80081fc <_dtoa_r+0xb94>
 8007b82:	464a      	mov	r2, r9
 8007b84:	4653      	mov	r3, sl
 8007b86:	4630      	mov	r0, r6
 8007b88:	4639      	mov	r1, r7
 8007b8a:	f7f8 fe1f 	bl	80007cc <__aeabi_ddiv>
 8007b8e:	f7f8 ff8d 	bl	8000aac <__aeabi_d2iz>
 8007b92:	4605      	mov	r5, r0
 8007b94:	f7f8 fc86 	bl	80004a4 <__aeabi_i2d>
 8007b98:	464a      	mov	r2, r9
 8007b9a:	4653      	mov	r3, sl
 8007b9c:	f7f8 fcec 	bl	8000578 <__aeabi_dmul>
 8007ba0:	4602      	mov	r2, r0
 8007ba2:	460b      	mov	r3, r1
 8007ba4:	4630      	mov	r0, r6
 8007ba6:	4639      	mov	r1, r7
 8007ba8:	f7f8 fb2e 	bl	8000208 <__aeabi_dsub>
 8007bac:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007bb0:	f804 cb01 	strb.w	ip, [r4], #1
 8007bb4:	eba4 0c0b 	sub.w	ip, r4, fp
 8007bb8:	45e0      	cmp	r8, ip
 8007bba:	4606      	mov	r6, r0
 8007bbc:	460f      	mov	r7, r1
 8007bbe:	f04f 0200 	mov.w	r2, #0
 8007bc2:	4bc1      	ldr	r3, [pc, #772]	; (8007ec8 <_dtoa_r+0x860>)
 8007bc4:	d1d2      	bne.n	8007b6c <_dtoa_r+0x504>
 8007bc6:	f8dd a000 	ldr.w	sl, [sp]
 8007bca:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007bce:	4632      	mov	r2, r6
 8007bd0:	463b      	mov	r3, r7
 8007bd2:	4630      	mov	r0, r6
 8007bd4:	4639      	mov	r1, r7
 8007bd6:	f7f8 fb19 	bl	800020c <__adddf3>
 8007bda:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007bde:	4606      	mov	r6, r0
 8007be0:	460f      	mov	r7, r1
 8007be2:	f7f8 ff59 	bl	8000a98 <__aeabi_dcmpgt>
 8007be6:	b958      	cbnz	r0, 8007c00 <_dtoa_r+0x598>
 8007be8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007bec:	4630      	mov	r0, r6
 8007bee:	4639      	mov	r1, r7
 8007bf0:	f7f8 ff2a 	bl	8000a48 <__aeabi_dcmpeq>
 8007bf4:	2800      	cmp	r0, #0
 8007bf6:	f000 818d 	beq.w	8007f14 <_dtoa_r+0x8ac>
 8007bfa:	07e9      	lsls	r1, r5, #31
 8007bfc:	f140 818a 	bpl.w	8007f14 <_dtoa_r+0x8ac>
 8007c00:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007c04:	e005      	b.n	8007c12 <_dtoa_r+0x5aa>
 8007c06:	459b      	cmp	fp, r3
 8007c08:	f000 8373 	beq.w	80082f2 <_dtoa_r+0xc8a>
 8007c0c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8007c10:	461c      	mov	r4, r3
 8007c12:	2d39      	cmp	r5, #57	; 0x39
 8007c14:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007c18:	d0f5      	beq.n	8007c06 <_dtoa_r+0x59e>
 8007c1a:	3501      	adds	r5, #1
 8007c1c:	701d      	strb	r5, [r3, #0]
 8007c1e:	e179      	b.n	8007f14 <_dtoa_r+0x8ac>
 8007c20:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007c22:	2a00      	cmp	r2, #0
 8007c24:	d03b      	beq.n	8007c9e <_dtoa_r+0x636>
 8007c26:	9a02      	ldr	r2, [sp, #8]
 8007c28:	2a01      	cmp	r2, #1
 8007c2a:	f340 820b 	ble.w	8008044 <_dtoa_r+0x9dc>
 8007c2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c30:	1e5f      	subs	r7, r3, #1
 8007c32:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007c34:	42bb      	cmp	r3, r7
 8007c36:	f2c0 82e6 	blt.w	8008206 <_dtoa_r+0xb9e>
 8007c3a:	1bdf      	subs	r7, r3, r7
 8007c3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c3e:	2b00      	cmp	r3, #0
 8007c40:	f2c0 830b 	blt.w	800825a <_dtoa_r+0xbf2>
 8007c44:	9a08      	ldr	r2, [sp, #32]
 8007c46:	4614      	mov	r4, r2
 8007c48:	441a      	add	r2, r3
 8007c4a:	4498      	add	r8, r3
 8007c4c:	9208      	str	r2, [sp, #32]
 8007c4e:	2101      	movs	r1, #1
 8007c50:	4648      	mov	r0, r9
 8007c52:	f001 fa0f 	bl	8009074 <__i2b>
 8007c56:	4605      	mov	r5, r0
 8007c58:	e024      	b.n	8007ca4 <_dtoa_r+0x63c>
 8007c5a:	2301      	movs	r3, #1
 8007c5c:	930d      	str	r3, [sp, #52]	; 0x34
 8007c5e:	e5af      	b.n	80077c0 <_dtoa_r+0x158>
 8007c60:	9a08      	ldr	r2, [sp, #32]
 8007c62:	9b06      	ldr	r3, [sp, #24]
 8007c64:	1ad2      	subs	r2, r2, r3
 8007c66:	425b      	negs	r3, r3
 8007c68:	930b      	str	r3, [sp, #44]	; 0x2c
 8007c6a:	2300      	movs	r3, #0
 8007c6c:	9208      	str	r2, [sp, #32]
 8007c6e:	930c      	str	r3, [sp, #48]	; 0x30
 8007c70:	e5b5      	b.n	80077de <_dtoa_r+0x176>
 8007c72:	f1c4 0301 	rsb	r3, r4, #1
 8007c76:	9308      	str	r3, [sp, #32]
 8007c78:	f04f 0800 	mov.w	r8, #0
 8007c7c:	e5a7      	b.n	80077ce <_dtoa_r+0x166>
 8007c7e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8007c82:	4640      	mov	r0, r8
 8007c84:	f7f8 fc0e 	bl	80004a4 <__aeabi_i2d>
 8007c88:	4632      	mov	r2, r6
 8007c8a:	463b      	mov	r3, r7
 8007c8c:	f7f8 fedc 	bl	8000a48 <__aeabi_dcmpeq>
 8007c90:	2800      	cmp	r0, #0
 8007c92:	f47f ad81 	bne.w	8007798 <_dtoa_r+0x130>
 8007c96:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007c9a:	9306      	str	r3, [sp, #24]
 8007c9c:	e57c      	b.n	8007798 <_dtoa_r+0x130>
 8007c9e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007ca0:	9c08      	ldr	r4, [sp, #32]
 8007ca2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007ca4:	2c00      	cmp	r4, #0
 8007ca6:	dd0c      	ble.n	8007cc2 <_dtoa_r+0x65a>
 8007ca8:	f1b8 0f00 	cmp.w	r8, #0
 8007cac:	dd09      	ble.n	8007cc2 <_dtoa_r+0x65a>
 8007cae:	4544      	cmp	r4, r8
 8007cb0:	9a08      	ldr	r2, [sp, #32]
 8007cb2:	4623      	mov	r3, r4
 8007cb4:	bfa8      	it	ge
 8007cb6:	4643      	movge	r3, r8
 8007cb8:	1ad2      	subs	r2, r2, r3
 8007cba:	9208      	str	r2, [sp, #32]
 8007cbc:	1ae4      	subs	r4, r4, r3
 8007cbe:	eba8 0803 	sub.w	r8, r8, r3
 8007cc2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007cc4:	b16b      	cbz	r3, 8007ce2 <_dtoa_r+0x67a>
 8007cc6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007cc8:	2a00      	cmp	r2, #0
 8007cca:	f000 8290 	beq.w	80081ee <_dtoa_r+0xb86>
 8007cce:	1bde      	subs	r6, r3, r7
 8007cd0:	2f00      	cmp	r7, #0
 8007cd2:	f040 819b 	bne.w	800800c <_dtoa_r+0x9a4>
 8007cd6:	4651      	mov	r1, sl
 8007cd8:	4632      	mov	r2, r6
 8007cda:	4648      	mov	r0, r9
 8007cdc:	f001 fa7a 	bl	80091d4 <__pow5mult>
 8007ce0:	4682      	mov	sl, r0
 8007ce2:	2101      	movs	r1, #1
 8007ce4:	4648      	mov	r0, r9
 8007ce6:	f001 f9c5 	bl	8009074 <__i2b>
 8007cea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007cec:	4606      	mov	r6, r0
 8007cee:	2a00      	cmp	r2, #0
 8007cf0:	f040 8125 	bne.w	8007f3e <_dtoa_r+0x8d6>
 8007cf4:	9b02      	ldr	r3, [sp, #8]
 8007cf6:	2b01      	cmp	r3, #1
 8007cf8:	f340 816c 	ble.w	8007fd4 <_dtoa_r+0x96c>
 8007cfc:	2001      	movs	r0, #1
 8007cfe:	4440      	add	r0, r8
 8007d00:	f010 001f 	ands.w	r0, r0, #31
 8007d04:	f000 8119 	beq.w	8007f3a <_dtoa_r+0x8d2>
 8007d08:	f1c0 0320 	rsb	r3, r0, #32
 8007d0c:	2b04      	cmp	r3, #4
 8007d0e:	f340 83ac 	ble.w	800846a <_dtoa_r+0xe02>
 8007d12:	f1c0 001c 	rsb	r0, r0, #28
 8007d16:	9b08      	ldr	r3, [sp, #32]
 8007d18:	4403      	add	r3, r0
 8007d1a:	9308      	str	r3, [sp, #32]
 8007d1c:	4404      	add	r4, r0
 8007d1e:	4480      	add	r8, r0
 8007d20:	9b08      	ldr	r3, [sp, #32]
 8007d22:	2b00      	cmp	r3, #0
 8007d24:	dd05      	ble.n	8007d32 <_dtoa_r+0x6ca>
 8007d26:	4651      	mov	r1, sl
 8007d28:	461a      	mov	r2, r3
 8007d2a:	4648      	mov	r0, r9
 8007d2c:	f001 faa2 	bl	8009274 <__lshift>
 8007d30:	4682      	mov	sl, r0
 8007d32:	f1b8 0f00 	cmp.w	r8, #0
 8007d36:	dd05      	ble.n	8007d44 <_dtoa_r+0x6dc>
 8007d38:	4631      	mov	r1, r6
 8007d3a:	4642      	mov	r2, r8
 8007d3c:	4648      	mov	r0, r9
 8007d3e:	f001 fa99 	bl	8009274 <__lshift>
 8007d42:	4606      	mov	r6, r0
 8007d44:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007d46:	2b00      	cmp	r3, #0
 8007d48:	d177      	bne.n	8007e3a <_dtoa_r+0x7d2>
 8007d4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007d4c:	2b00      	cmp	r3, #0
 8007d4e:	f340 8209 	ble.w	8008164 <_dtoa_r+0xafc>
 8007d52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007d54:	2b00      	cmp	r3, #0
 8007d56:	f000 8089 	beq.w	8007e6c <_dtoa_r+0x804>
 8007d5a:	2c00      	cmp	r4, #0
 8007d5c:	f300 816b 	bgt.w	8008036 <_dtoa_r+0x9ce>
 8007d60:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007d62:	2b00      	cmp	r3, #0
 8007d64:	f040 81cd 	bne.w	8008102 <_dtoa_r+0xa9a>
 8007d68:	46a8      	mov	r8, r5
 8007d6a:	9a00      	ldr	r2, [sp, #0]
 8007d6c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007d70:	f002 0201 	and.w	r2, r2, #1
 8007d74:	920a      	str	r2, [sp, #40]	; 0x28
 8007d76:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007d78:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8007d7c:	441a      	add	r2, r3
 8007d7e:	465f      	mov	r7, fp
 8007d80:	9209      	str	r2, [sp, #36]	; 0x24
 8007d82:	46b3      	mov	fp, r6
 8007d84:	4659      	mov	r1, fp
 8007d86:	4650      	mov	r0, sl
 8007d88:	f7ff fbdc 	bl	8007544 <quorem>
 8007d8c:	4629      	mov	r1, r5
 8007d8e:	4604      	mov	r4, r0
 8007d90:	4650      	mov	r0, sl
 8007d92:	f001 fac5 	bl	8009320 <__mcmp>
 8007d96:	4659      	mov	r1, fp
 8007d98:	4606      	mov	r6, r0
 8007d9a:	4642      	mov	r2, r8
 8007d9c:	4648      	mov	r0, r9
 8007d9e:	f001 fadb 	bl	8009358 <__mdiff>
 8007da2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8007da6:	9300      	str	r3, [sp, #0]
 8007da8:	68c3      	ldr	r3, [r0, #12]
 8007daa:	4601      	mov	r1, r0
 8007dac:	2b00      	cmp	r3, #0
 8007dae:	f040 81d4 	bne.w	800815a <_dtoa_r+0xaf2>
 8007db2:	9008      	str	r0, [sp, #32]
 8007db4:	4650      	mov	r0, sl
 8007db6:	f001 fab3 	bl	8009320 <__mcmp>
 8007dba:	9a08      	ldr	r2, [sp, #32]
 8007dbc:	9007      	str	r0, [sp, #28]
 8007dbe:	4611      	mov	r1, r2
 8007dc0:	4648      	mov	r0, r9
 8007dc2:	f001 f8bd 	bl	8008f40 <_Bfree>
 8007dc6:	9b07      	ldr	r3, [sp, #28]
 8007dc8:	b933      	cbnz	r3, 8007dd8 <_dtoa_r+0x770>
 8007dca:	9a02      	ldr	r2, [sp, #8]
 8007dcc:	b922      	cbnz	r2, 8007dd8 <_dtoa_r+0x770>
 8007dce:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007dd0:	2b00      	cmp	r3, #0
 8007dd2:	f000 8319 	beq.w	8008408 <_dtoa_r+0xda0>
 8007dd6:	9b02      	ldr	r3, [sp, #8]
 8007dd8:	2e00      	cmp	r6, #0
 8007dda:	f2c0 821c 	blt.w	8008216 <_dtoa_r+0xbae>
 8007dde:	d105      	bne.n	8007dec <_dtoa_r+0x784>
 8007de0:	9a02      	ldr	r2, [sp, #8]
 8007de2:	b91a      	cbnz	r2, 8007dec <_dtoa_r+0x784>
 8007de4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007de6:	2a00      	cmp	r2, #0
 8007de8:	f000 8215 	beq.w	8008216 <_dtoa_r+0xbae>
 8007dec:	2b00      	cmp	r3, #0
 8007dee:	f107 0401 	add.w	r4, r7, #1
 8007df2:	f300 8225 	bgt.w	8008240 <_dtoa_r+0xbd8>
 8007df6:	9b00      	ldr	r3, [sp, #0]
 8007df8:	703b      	strb	r3, [r7, #0]
 8007dfa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007dfc:	42bb      	cmp	r3, r7
 8007dfe:	f000 8230 	beq.w	8008262 <_dtoa_r+0xbfa>
 8007e02:	4651      	mov	r1, sl
 8007e04:	2300      	movs	r3, #0
 8007e06:	220a      	movs	r2, #10
 8007e08:	4648      	mov	r0, r9
 8007e0a:	f001 f8a3 	bl	8008f54 <__multadd>
 8007e0e:	4545      	cmp	r5, r8
 8007e10:	4682      	mov	sl, r0
 8007e12:	4629      	mov	r1, r5
 8007e14:	f04f 0300 	mov.w	r3, #0
 8007e18:	f04f 020a 	mov.w	r2, #10
 8007e1c:	4648      	mov	r0, r9
 8007e1e:	f000 8196 	beq.w	800814e <_dtoa_r+0xae6>
 8007e22:	f001 f897 	bl	8008f54 <__multadd>
 8007e26:	4641      	mov	r1, r8
 8007e28:	4605      	mov	r5, r0
 8007e2a:	2300      	movs	r3, #0
 8007e2c:	220a      	movs	r2, #10
 8007e2e:	4648      	mov	r0, r9
 8007e30:	f001 f890 	bl	8008f54 <__multadd>
 8007e34:	4627      	mov	r7, r4
 8007e36:	4680      	mov	r8, r0
 8007e38:	e7a4      	b.n	8007d84 <_dtoa_r+0x71c>
 8007e3a:	4631      	mov	r1, r6
 8007e3c:	4650      	mov	r0, sl
 8007e3e:	f001 fa6f 	bl	8009320 <__mcmp>
 8007e42:	2800      	cmp	r0, #0
 8007e44:	da81      	bge.n	8007d4a <_dtoa_r+0x6e2>
 8007e46:	9f06      	ldr	r7, [sp, #24]
 8007e48:	4651      	mov	r1, sl
 8007e4a:	2300      	movs	r3, #0
 8007e4c:	220a      	movs	r2, #10
 8007e4e:	4648      	mov	r0, r9
 8007e50:	3f01      	subs	r7, #1
 8007e52:	9706      	str	r7, [sp, #24]
 8007e54:	f001 f87e 	bl	8008f54 <__multadd>
 8007e58:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007e5a:	4682      	mov	sl, r0
 8007e5c:	2b00      	cmp	r3, #0
 8007e5e:	f040 82eb 	bne.w	8008438 <_dtoa_r+0xdd0>
 8007e62:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007e64:	2b00      	cmp	r3, #0
 8007e66:	f340 82f3 	ble.w	8008450 <_dtoa_r+0xde8>
 8007e6a:	9309      	str	r3, [sp, #36]	; 0x24
 8007e6c:	465c      	mov	r4, fp
 8007e6e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007e72:	e002      	b.n	8007e7a <_dtoa_r+0x812>
 8007e74:	f001 f86e 	bl	8008f54 <__multadd>
 8007e78:	4682      	mov	sl, r0
 8007e7a:	4631      	mov	r1, r6
 8007e7c:	4650      	mov	r0, sl
 8007e7e:	f7ff fb61 	bl	8007544 <quorem>
 8007e82:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8007e86:	f804 7b01 	strb.w	r7, [r4], #1
 8007e8a:	eba4 030b 	sub.w	r3, r4, fp
 8007e8e:	4598      	cmp	r8, r3
 8007e90:	f04f 020a 	mov.w	r2, #10
 8007e94:	f04f 0300 	mov.w	r3, #0
 8007e98:	4651      	mov	r1, sl
 8007e9a:	4648      	mov	r0, r9
 8007e9c:	dcea      	bgt.n	8007e74 <_dtoa_r+0x80c>
 8007e9e:	2300      	movs	r3, #0
 8007ea0:	9700      	str	r7, [sp, #0]
 8007ea2:	9302      	str	r3, [sp, #8]
 8007ea4:	4651      	mov	r1, sl
 8007ea6:	2201      	movs	r2, #1
 8007ea8:	4648      	mov	r0, r9
 8007eaa:	f001 f9e3 	bl	8009274 <__lshift>
 8007eae:	4631      	mov	r1, r6
 8007eb0:	4682      	mov	sl, r0
 8007eb2:	f001 fa35 	bl	8009320 <__mcmp>
 8007eb6:	2800      	cmp	r0, #0
 8007eb8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8007ebc:	dc14      	bgt.n	8007ee8 <_dtoa_r+0x880>
 8007ebe:	d108      	bne.n	8007ed2 <_dtoa_r+0x86a>
 8007ec0:	9b00      	ldr	r3, [sp, #0]
 8007ec2:	07db      	lsls	r3, r3, #31
 8007ec4:	d410      	bmi.n	8007ee8 <_dtoa_r+0x880>
 8007ec6:	e004      	b.n	8007ed2 <_dtoa_r+0x86a>
 8007ec8:	40240000 	.word	0x40240000
 8007ecc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007ed0:	461c      	mov	r4, r3
 8007ed2:	2a30      	cmp	r2, #48	; 0x30
 8007ed4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007ed8:	d0f8      	beq.n	8007ecc <_dtoa_r+0x864>
 8007eda:	e00b      	b.n	8007ef4 <_dtoa_r+0x88c>
 8007edc:	459b      	cmp	fp, r3
 8007ede:	f000 814e 	beq.w	800817e <_dtoa_r+0xb16>
 8007ee2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8007ee6:	461c      	mov	r4, r3
 8007ee8:	2a39      	cmp	r2, #57	; 0x39
 8007eea:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007eee:	d0f5      	beq.n	8007edc <_dtoa_r+0x874>
 8007ef0:	3201      	adds	r2, #1
 8007ef2:	701a      	strb	r2, [r3, #0]
 8007ef4:	4631      	mov	r1, r6
 8007ef6:	4648      	mov	r0, r9
 8007ef8:	f001 f822 	bl	8008f40 <_Bfree>
 8007efc:	b155      	cbz	r5, 8007f14 <_dtoa_r+0x8ac>
 8007efe:	9902      	ldr	r1, [sp, #8]
 8007f00:	b121      	cbz	r1, 8007f0c <_dtoa_r+0x8a4>
 8007f02:	42a9      	cmp	r1, r5
 8007f04:	d002      	beq.n	8007f0c <_dtoa_r+0x8a4>
 8007f06:	4648      	mov	r0, r9
 8007f08:	f001 f81a 	bl	8008f40 <_Bfree>
 8007f0c:	4629      	mov	r1, r5
 8007f0e:	4648      	mov	r0, r9
 8007f10:	f001 f816 	bl	8008f40 <_Bfree>
 8007f14:	4651      	mov	r1, sl
 8007f16:	4648      	mov	r0, r9
 8007f18:	f001 f812 	bl	8008f40 <_Bfree>
 8007f1c:	2200      	movs	r2, #0
 8007f1e:	9b06      	ldr	r3, [sp, #24]
 8007f20:	7022      	strb	r2, [r4, #0]
 8007f22:	9a05      	ldr	r2, [sp, #20]
 8007f24:	3301      	adds	r3, #1
 8007f26:	6013      	str	r3, [r2, #0]
 8007f28:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007f2a:	2b00      	cmp	r3, #0
 8007f2c:	f43f abdb 	beq.w	80076e6 <_dtoa_r+0x7e>
 8007f30:	4658      	mov	r0, fp
 8007f32:	601c      	str	r4, [r3, #0]
 8007f34:	b01b      	add	sp, #108	; 0x6c
 8007f36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007f3a:	201c      	movs	r0, #28
 8007f3c:	e6eb      	b.n	8007d16 <_dtoa_r+0x6ae>
 8007f3e:	4601      	mov	r1, r0
 8007f40:	4648      	mov	r0, r9
 8007f42:	f001 f947 	bl	80091d4 <__pow5mult>
 8007f46:	9b02      	ldr	r3, [sp, #8]
 8007f48:	2b01      	cmp	r3, #1
 8007f4a:	4606      	mov	r6, r0
 8007f4c:	f340 80d4 	ble.w	80080f8 <_dtoa_r+0xa90>
 8007f50:	2300      	movs	r3, #0
 8007f52:	930c      	str	r3, [sp, #48]	; 0x30
 8007f54:	6933      	ldr	r3, [r6, #16]
 8007f56:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8007f5a:	6918      	ldr	r0, [r3, #16]
 8007f5c:	f001 f83a 	bl	8008fd4 <__hi0bits>
 8007f60:	f1c0 0020 	rsb	r0, r0, #32
 8007f64:	e6cb      	b.n	8007cfe <_dtoa_r+0x696>
 8007f66:	900d      	str	r0, [sp, #52]	; 0x34
 8007f68:	e42a      	b.n	80077c0 <_dtoa_r+0x158>
 8007f6a:	2501      	movs	r5, #1
 8007f6c:	e440      	b.n	80077f0 <_dtoa_r+0x188>
 8007f6e:	f1c3 0820 	rsb	r8, r3, #32
 8007f72:	9b00      	ldr	r3, [sp, #0]
 8007f74:	fa03 f008 	lsl.w	r0, r3, r8
 8007f78:	f7ff bbd8 	b.w	800772c <_dtoa_r+0xc4>
 8007f7c:	2300      	movs	r3, #0
 8007f7e:	930a      	str	r3, [sp, #40]	; 0x28
 8007f80:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8007f84:	4413      	add	r3, r2
 8007f86:	930e      	str	r3, [sp, #56]	; 0x38
 8007f88:	3301      	adds	r3, #1
 8007f8a:	2b01      	cmp	r3, #1
 8007f8c:	461e      	mov	r6, r3
 8007f8e:	9309      	str	r3, [sp, #36]	; 0x24
 8007f90:	bfb8      	it	lt
 8007f92:	2601      	movlt	r6, #1
 8007f94:	2100      	movs	r1, #0
 8007f96:	2e17      	cmp	r6, #23
 8007f98:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007f9c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8007f9e:	f77f ac89 	ble.w	80078b4 <_dtoa_r+0x24c>
 8007fa2:	2201      	movs	r2, #1
 8007fa4:	2304      	movs	r3, #4
 8007fa6:	005b      	lsls	r3, r3, #1
 8007fa8:	f103 0014 	add.w	r0, r3, #20
 8007fac:	42b0      	cmp	r0, r6
 8007fae:	4611      	mov	r1, r2
 8007fb0:	f102 0201 	add.w	r2, r2, #1
 8007fb4:	d9f7      	bls.n	8007fa6 <_dtoa_r+0x93e>
 8007fb6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007fba:	e47b      	b.n	80078b4 <_dtoa_r+0x24c>
 8007fbc:	2300      	movs	r3, #0
 8007fbe:	930a      	str	r3, [sp, #40]	; 0x28
 8007fc0:	9e07      	ldr	r6, [sp, #28]
 8007fc2:	2e00      	cmp	r6, #0
 8007fc4:	f340 80e2 	ble.w	800818c <_dtoa_r+0xb24>
 8007fc8:	960e      	str	r6, [sp, #56]	; 0x38
 8007fca:	9609      	str	r6, [sp, #36]	; 0x24
 8007fcc:	e7e2      	b.n	8007f94 <_dtoa_r+0x92c>
 8007fce:	2301      	movs	r3, #1
 8007fd0:	930a      	str	r3, [sp, #40]	; 0x28
 8007fd2:	e7f5      	b.n	8007fc0 <_dtoa_r+0x958>
 8007fd4:	9b00      	ldr	r3, [sp, #0]
 8007fd6:	2b00      	cmp	r3, #0
 8007fd8:	f47f ae90 	bne.w	8007cfc <_dtoa_r+0x694>
 8007fdc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007fe0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8007fe4:	2b00      	cmp	r3, #0
 8007fe6:	f040 8192 	bne.w	800830e <_dtoa_r+0xca6>
 8007fea:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8007fee:	0d1b      	lsrs	r3, r3, #20
 8007ff0:	051b      	lsls	r3, r3, #20
 8007ff2:	b12b      	cbz	r3, 8008000 <_dtoa_r+0x998>
 8007ff4:	9b08      	ldr	r3, [sp, #32]
 8007ff6:	3301      	adds	r3, #1
 8007ff8:	9308      	str	r3, [sp, #32]
 8007ffa:	f108 0801 	add.w	r8, r8, #1
 8007ffe:	2301      	movs	r3, #1
 8008000:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8008002:	930c      	str	r3, [sp, #48]	; 0x30
 8008004:	2a00      	cmp	r2, #0
 8008006:	f43f ae79 	beq.w	8007cfc <_dtoa_r+0x694>
 800800a:	e7a3      	b.n	8007f54 <_dtoa_r+0x8ec>
 800800c:	463a      	mov	r2, r7
 800800e:	4629      	mov	r1, r5
 8008010:	4648      	mov	r0, r9
 8008012:	f001 f8df 	bl	80091d4 <__pow5mult>
 8008016:	4652      	mov	r2, sl
 8008018:	4601      	mov	r1, r0
 800801a:	4605      	mov	r5, r0
 800801c:	4648      	mov	r0, r9
 800801e:	f001 f833 	bl	8009088 <__multiply>
 8008022:	4651      	mov	r1, sl
 8008024:	4607      	mov	r7, r0
 8008026:	4648      	mov	r0, r9
 8008028:	f000 ff8a 	bl	8008f40 <_Bfree>
 800802c:	46ba      	mov	sl, r7
 800802e:	2e00      	cmp	r6, #0
 8008030:	f43f ae57 	beq.w	8007ce2 <_dtoa_r+0x67a>
 8008034:	e64f      	b.n	8007cd6 <_dtoa_r+0x66e>
 8008036:	4629      	mov	r1, r5
 8008038:	4622      	mov	r2, r4
 800803a:	4648      	mov	r0, r9
 800803c:	f001 f91a 	bl	8009274 <__lshift>
 8008040:	4605      	mov	r5, r0
 8008042:	e68d      	b.n	8007d60 <_dtoa_r+0x6f8>
 8008044:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8008046:	2a00      	cmp	r2, #0
 8008048:	f000 815d 	beq.w	8008306 <_dtoa_r+0xc9e>
 800804c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8008050:	9a08      	ldr	r2, [sp, #32]
 8008052:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8008054:	4614      	mov	r4, r2
 8008056:	441a      	add	r2, r3
 8008058:	4498      	add	r8, r3
 800805a:	9208      	str	r2, [sp, #32]
 800805c:	e5f7      	b.n	8007c4e <_dtoa_r+0x5e6>
 800805e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008060:	2b00      	cmp	r3, #0
 8008062:	f73f ad3e 	bgt.w	8007ae2 <_dtoa_r+0x47a>
 8008066:	f040 80bc 	bne.w	80081e2 <_dtoa_r+0xb7a>
 800806a:	ec51 0b17 	vmov	r0, r1, d7
 800806e:	2200      	movs	r2, #0
 8008070:	4bb2      	ldr	r3, [pc, #712]	; (800833c <_dtoa_r+0xcd4>)
 8008072:	f7f8 fa81 	bl	8000578 <__aeabi_dmul>
 8008076:	e9dd 2300 	ldrd	r2, r3, [sp]
 800807a:	f7f8 fd03 	bl	8000a84 <__aeabi_dcmpge>
 800807e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8008080:	4635      	mov	r5, r6
 8008082:	2800      	cmp	r0, #0
 8008084:	d176      	bne.n	8008174 <_dtoa_r+0xb0c>
 8008086:	9a06      	ldr	r2, [sp, #24]
 8008088:	2331      	movs	r3, #49	; 0x31
 800808a:	3201      	adds	r2, #1
 800808c:	9206      	str	r2, [sp, #24]
 800808e:	f88b 3000 	strb.w	r3, [fp]
 8008092:	f10b 0401 	add.w	r4, fp, #1
 8008096:	4631      	mov	r1, r6
 8008098:	4648      	mov	r0, r9
 800809a:	f000 ff51 	bl	8008f40 <_Bfree>
 800809e:	2d00      	cmp	r5, #0
 80080a0:	f47f af34 	bne.w	8007f0c <_dtoa_r+0x8a4>
 80080a4:	e736      	b.n	8007f14 <_dtoa_r+0x8ac>
 80080a6:	f000 8142 	beq.w	800832e <_dtoa_r+0xcc6>
 80080aa:	9b06      	ldr	r3, [sp, #24]
 80080ac:	425c      	negs	r4, r3
 80080ae:	4ba4      	ldr	r3, [pc, #656]	; (8008340 <_dtoa_r+0xcd8>)
 80080b0:	f004 020f 	and.w	r2, r4, #15
 80080b4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80080b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80080bc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80080c0:	f7f8 fa5a 	bl	8000578 <__aeabi_dmul>
 80080c4:	1124      	asrs	r4, r4, #4
 80080c6:	e9cd 0100 	strd	r0, r1, [sp]
 80080ca:	f000 81c6 	beq.w	800845a <_dtoa_r+0xdf2>
 80080ce:	4d9d      	ldr	r5, [pc, #628]	; (8008344 <_dtoa_r+0xcdc>)
 80080d0:	2300      	movs	r3, #0
 80080d2:	2602      	movs	r6, #2
 80080d4:	07e7      	lsls	r7, r4, #31
 80080d6:	d505      	bpl.n	80080e4 <_dtoa_r+0xa7c>
 80080d8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80080dc:	f7f8 fa4c 	bl	8000578 <__aeabi_dmul>
 80080e0:	3601      	adds	r6, #1
 80080e2:	2301      	movs	r3, #1
 80080e4:	1064      	asrs	r4, r4, #1
 80080e6:	f105 0508 	add.w	r5, r5, #8
 80080ea:	d1f3      	bne.n	80080d4 <_dtoa_r+0xa6c>
 80080ec:	2b00      	cmp	r3, #0
 80080ee:	f43f ac27 	beq.w	8007940 <_dtoa_r+0x2d8>
 80080f2:	e9cd 0100 	strd	r0, r1, [sp]
 80080f6:	e423      	b.n	8007940 <_dtoa_r+0x2d8>
 80080f8:	9b00      	ldr	r3, [sp, #0]
 80080fa:	2b00      	cmp	r3, #0
 80080fc:	f43f af6e 	beq.w	8007fdc <_dtoa_r+0x974>
 8008100:	e726      	b.n	8007f50 <_dtoa_r+0x8e8>
 8008102:	6869      	ldr	r1, [r5, #4]
 8008104:	4648      	mov	r0, r9
 8008106:	f000 fef5 	bl	8008ef4 <_Balloc>
 800810a:	692b      	ldr	r3, [r5, #16]
 800810c:	3302      	adds	r3, #2
 800810e:	009a      	lsls	r2, r3, #2
 8008110:	4604      	mov	r4, r0
 8008112:	f105 010c 	add.w	r1, r5, #12
 8008116:	300c      	adds	r0, #12
 8008118:	f7f8 febe 	bl	8000e98 <memcpy>
 800811c:	4621      	mov	r1, r4
 800811e:	2201      	movs	r2, #1
 8008120:	4648      	mov	r0, r9
 8008122:	f001 f8a7 	bl	8009274 <__lshift>
 8008126:	4680      	mov	r8, r0
 8008128:	e61f      	b.n	8007d6a <_dtoa_r+0x702>
 800812a:	2400      	movs	r4, #0
 800812c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8008130:	4621      	mov	r1, r4
 8008132:	4648      	mov	r0, r9
 8008134:	f000 fede 	bl	8008ef4 <_Balloc>
 8008138:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800813c:	930e      	str	r3, [sp, #56]	; 0x38
 800813e:	9309      	str	r3, [sp, #36]	; 0x24
 8008140:	2301      	movs	r3, #1
 8008142:	4683      	mov	fp, r0
 8008144:	9407      	str	r4, [sp, #28]
 8008146:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800814a:	930a      	str	r3, [sp, #40]	; 0x28
 800814c:	e4b6      	b.n	8007abc <_dtoa_r+0x454>
 800814e:	f000 ff01 	bl	8008f54 <__multadd>
 8008152:	4627      	mov	r7, r4
 8008154:	4605      	mov	r5, r0
 8008156:	4680      	mov	r8, r0
 8008158:	e614      	b.n	8007d84 <_dtoa_r+0x71c>
 800815a:	4648      	mov	r0, r9
 800815c:	f000 fef0 	bl	8008f40 <_Bfree>
 8008160:	2301      	movs	r3, #1
 8008162:	e639      	b.n	8007dd8 <_dtoa_r+0x770>
 8008164:	9b02      	ldr	r3, [sp, #8]
 8008166:	2b02      	cmp	r3, #2
 8008168:	f77f adf3 	ble.w	8007d52 <_dtoa_r+0x6ea>
 800816c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800816e:	2b00      	cmp	r3, #0
 8008170:	f000 80cf 	beq.w	8008312 <_dtoa_r+0xcaa>
 8008174:	9b07      	ldr	r3, [sp, #28]
 8008176:	43db      	mvns	r3, r3
 8008178:	9306      	str	r3, [sp, #24]
 800817a:	465c      	mov	r4, fp
 800817c:	e78b      	b.n	8008096 <_dtoa_r+0xa2e>
 800817e:	9a06      	ldr	r2, [sp, #24]
 8008180:	2331      	movs	r3, #49	; 0x31
 8008182:	3201      	adds	r2, #1
 8008184:	9206      	str	r2, [sp, #24]
 8008186:	f88b 3000 	strb.w	r3, [fp]
 800818a:	e6b3      	b.n	8007ef4 <_dtoa_r+0x88c>
 800818c:	2401      	movs	r4, #1
 800818e:	9409      	str	r4, [sp, #36]	; 0x24
 8008190:	9407      	str	r4, [sp, #28]
 8008192:	f7ff bb8b 	b.w	80078ac <_dtoa_r+0x244>
 8008196:	4630      	mov	r0, r6
 8008198:	f7f8 f984 	bl	80004a4 <__aeabi_i2d>
 800819c:	e9dd 2300 	ldrd	r2, r3, [sp]
 80081a0:	f7f8 f9ea 	bl	8000578 <__aeabi_dmul>
 80081a4:	2200      	movs	r2, #0
 80081a6:	4b68      	ldr	r3, [pc, #416]	; (8008348 <_dtoa_r+0xce0>)
 80081a8:	f7f8 f830 	bl	800020c <__adddf3>
 80081ac:	4606      	mov	r6, r0
 80081ae:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80081b2:	2200      	movs	r2, #0
 80081b4:	4b61      	ldr	r3, [pc, #388]	; (800833c <_dtoa_r+0xcd4>)
 80081b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80081ba:	f7f8 f825 	bl	8000208 <__aeabi_dsub>
 80081be:	4632      	mov	r2, r6
 80081c0:	463b      	mov	r3, r7
 80081c2:	4604      	mov	r4, r0
 80081c4:	460d      	mov	r5, r1
 80081c6:	f7f8 fc67 	bl	8000a98 <__aeabi_dcmpgt>
 80081ca:	2800      	cmp	r0, #0
 80081cc:	d14f      	bne.n	800826e <_dtoa_r+0xc06>
 80081ce:	4632      	mov	r2, r6
 80081d0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80081d4:	4620      	mov	r0, r4
 80081d6:	4629      	mov	r1, r5
 80081d8:	f7f8 fc40 	bl	8000a5c <__aeabi_dcmplt>
 80081dc:	2800      	cmp	r0, #0
 80081de:	f43f ac69 	beq.w	8007ab4 <_dtoa_r+0x44c>
 80081e2:	2600      	movs	r6, #0
 80081e4:	4635      	mov	r5, r6
 80081e6:	e7c5      	b.n	8008174 <_dtoa_r+0xb0c>
 80081e8:	2301      	movs	r3, #1
 80081ea:	930a      	str	r3, [sp, #40]	; 0x28
 80081ec:	e6c8      	b.n	8007f80 <_dtoa_r+0x918>
 80081ee:	4651      	mov	r1, sl
 80081f0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80081f2:	4648      	mov	r0, r9
 80081f4:	f000 ffee 	bl	80091d4 <__pow5mult>
 80081f8:	4682      	mov	sl, r0
 80081fa:	e572      	b.n	8007ce2 <_dtoa_r+0x67a>
 80081fc:	f8dd a000 	ldr.w	sl, [sp]
 8008200:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008204:	e686      	b.n	8007f14 <_dtoa_r+0x8ac>
 8008206:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008208:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800820a:	1afb      	subs	r3, r7, r3
 800820c:	441a      	add	r2, r3
 800820e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8008212:	2700      	movs	r7, #0
 8008214:	e512      	b.n	8007c3c <_dtoa_r+0x5d4>
 8008216:	2b00      	cmp	r3, #0
 8008218:	9402      	str	r4, [sp, #8]
 800821a:	465e      	mov	r6, fp
 800821c:	f107 0401 	add.w	r4, r7, #1
 8008220:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8008224:	f300 80ba 	bgt.w	800839c <_dtoa_r+0xd34>
 8008228:	9b00      	ldr	r3, [sp, #0]
 800822a:	9502      	str	r5, [sp, #8]
 800822c:	703b      	strb	r3, [r7, #0]
 800822e:	4645      	mov	r5, r8
 8008230:	e660      	b.n	8007ef4 <_dtoa_r+0x88c>
 8008232:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8008236:	2602      	movs	r6, #2
 8008238:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800823c:	f7ff bb67 	b.w	800790e <_dtoa_r+0x2a6>
 8008240:	9b00      	ldr	r3, [sp, #0]
 8008242:	2b39      	cmp	r3, #57	; 0x39
 8008244:	465e      	mov	r6, fp
 8008246:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800824a:	f000 80b9 	beq.w	80083c0 <_dtoa_r+0xd58>
 800824e:	9b00      	ldr	r3, [sp, #0]
 8008250:	9502      	str	r5, [sp, #8]
 8008252:	3301      	adds	r3, #1
 8008254:	703b      	strb	r3, [r7, #0]
 8008256:	4645      	mov	r5, r8
 8008258:	e64c      	b.n	8007ef4 <_dtoa_r+0x88c>
 800825a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800825e:	1a9c      	subs	r4, r3, r2
 8008260:	e4f5      	b.n	8007c4e <_dtoa_r+0x5e6>
 8008262:	465e      	mov	r6, fp
 8008264:	9502      	str	r5, [sp, #8]
 8008266:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800826a:	4645      	mov	r5, r8
 800826c:	e61a      	b.n	8007ea4 <_dtoa_r+0x83c>
 800826e:	2600      	movs	r6, #0
 8008270:	4635      	mov	r5, r6
 8008272:	e708      	b.n	8008086 <_dtoa_r+0xa1e>
 8008274:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8008278:	e9dd 0100 	ldrd	r0, r1, [sp]
 800827c:	f7f8 f97c 	bl	8000578 <__aeabi_dmul>
 8008280:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8008282:	f88b 5000 	strb.w	r5, [fp]
 8008286:	2b01      	cmp	r3, #1
 8008288:	e9cd 0100 	strd	r0, r1, [sp]
 800828c:	d020      	beq.n	80082d0 <_dtoa_r+0xc68>
 800828e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8008290:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8008294:	445b      	add	r3, fp
 8008296:	4698      	mov	r8, r3
 8008298:	2200      	movs	r2, #0
 800829a:	4b2c      	ldr	r3, [pc, #176]	; (800834c <_dtoa_r+0xce4>)
 800829c:	4630      	mov	r0, r6
 800829e:	4639      	mov	r1, r7
 80082a0:	f7f8 f96a 	bl	8000578 <__aeabi_dmul>
 80082a4:	460f      	mov	r7, r1
 80082a6:	4606      	mov	r6, r0
 80082a8:	f7f8 fc00 	bl	8000aac <__aeabi_d2iz>
 80082ac:	4605      	mov	r5, r0
 80082ae:	f7f8 f8f9 	bl	80004a4 <__aeabi_i2d>
 80082b2:	3530      	adds	r5, #48	; 0x30
 80082b4:	4602      	mov	r2, r0
 80082b6:	460b      	mov	r3, r1
 80082b8:	4630      	mov	r0, r6
 80082ba:	4639      	mov	r1, r7
 80082bc:	f7f7 ffa4 	bl	8000208 <__aeabi_dsub>
 80082c0:	f804 5b01 	strb.w	r5, [r4], #1
 80082c4:	4544      	cmp	r4, r8
 80082c6:	4606      	mov	r6, r0
 80082c8:	460f      	mov	r7, r1
 80082ca:	d1e5      	bne.n	8008298 <_dtoa_r+0xc30>
 80082cc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80082d0:	4b1f      	ldr	r3, [pc, #124]	; (8008350 <_dtoa_r+0xce8>)
 80082d2:	2200      	movs	r2, #0
 80082d4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80082d8:	f7f7 ff98 	bl	800020c <__adddf3>
 80082dc:	4632      	mov	r2, r6
 80082de:	463b      	mov	r3, r7
 80082e0:	f7f8 fbbc 	bl	8000a5c <__aeabi_dcmplt>
 80082e4:	2800      	cmp	r0, #0
 80082e6:	d070      	beq.n	80083ca <_dtoa_r+0xd62>
 80082e8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80082ea:	9306      	str	r3, [sp, #24]
 80082ec:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80082f0:	e48f      	b.n	8007c12 <_dtoa_r+0x5aa>
 80082f2:	2330      	movs	r3, #48	; 0x30
 80082f4:	f88b 3000 	strb.w	r3, [fp]
 80082f8:	9b06      	ldr	r3, [sp, #24]
 80082fa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80082fe:	3301      	adds	r3, #1
 8008300:	9306      	str	r3, [sp, #24]
 8008302:	465b      	mov	r3, fp
 8008304:	e489      	b.n	8007c1a <_dtoa_r+0x5b2>
 8008306:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8008308:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800830c:	e6a0      	b.n	8008050 <_dtoa_r+0x9e8>
 800830e:	2300      	movs	r3, #0
 8008310:	e676      	b.n	8008000 <_dtoa_r+0x998>
 8008312:	4631      	mov	r1, r6
 8008314:	2205      	movs	r2, #5
 8008316:	4648      	mov	r0, r9
 8008318:	f000 fe1c 	bl	8008f54 <__multadd>
 800831c:	4601      	mov	r1, r0
 800831e:	4606      	mov	r6, r0
 8008320:	4650      	mov	r0, sl
 8008322:	f000 fffd 	bl	8009320 <__mcmp>
 8008326:	2800      	cmp	r0, #0
 8008328:	f73f aead 	bgt.w	8008086 <_dtoa_r+0xa1e>
 800832c:	e722      	b.n	8008174 <_dtoa_r+0xb0c>
 800832e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8008332:	2602      	movs	r6, #2
 8008334:	ed8d 7b00 	vstr	d7, [sp]
 8008338:	f7ff bb02 	b.w	8007940 <_dtoa_r+0x2d8>
 800833c:	40140000 	.word	0x40140000
 8008340:	0800a420 	.word	0x0800a420
 8008344:	0800a3f8 	.word	0x0800a3f8
 8008348:	401c0000 	.word	0x401c0000
 800834c:	40240000 	.word	0x40240000
 8008350:	3fe00000 	.word	0x3fe00000
 8008354:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008356:	2b00      	cmp	r3, #0
 8008358:	f43f af1d 	beq.w	8008196 <_dtoa_r+0xb2e>
 800835c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800835e:	2c00      	cmp	r4, #0
 8008360:	f77f aba8 	ble.w	8007ab4 <_dtoa_r+0x44c>
 8008364:	2200      	movs	r2, #0
 8008366:	4b45      	ldr	r3, [pc, #276]	; (800847c <_dtoa_r+0xe14>)
 8008368:	e9dd 0100 	ldrd	r0, r1, [sp]
 800836c:	f7f8 f904 	bl	8000578 <__aeabi_dmul>
 8008370:	e9cd 0100 	strd	r0, r1, [sp]
 8008374:	1c70      	adds	r0, r6, #1
 8008376:	f7f8 f895 	bl	80004a4 <__aeabi_i2d>
 800837a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800837e:	f7f8 f8fb 	bl	8000578 <__aeabi_dmul>
 8008382:	4b3f      	ldr	r3, [pc, #252]	; (8008480 <_dtoa_r+0xe18>)
 8008384:	2200      	movs	r2, #0
 8008386:	f7f7 ff41 	bl	800020c <__adddf3>
 800838a:	9b06      	ldr	r3, [sp, #24]
 800838c:	9412      	str	r4, [sp, #72]	; 0x48
 800838e:	3b01      	subs	r3, #1
 8008390:	4606      	mov	r6, r0
 8008392:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008396:	9316      	str	r3, [sp, #88]	; 0x58
 8008398:	f7ff baf3 	b.w	8007982 <_dtoa_r+0x31a>
 800839c:	4651      	mov	r1, sl
 800839e:	2201      	movs	r2, #1
 80083a0:	4648      	mov	r0, r9
 80083a2:	f000 ff67 	bl	8009274 <__lshift>
 80083a6:	4631      	mov	r1, r6
 80083a8:	4682      	mov	sl, r0
 80083aa:	f000 ffb9 	bl	8009320 <__mcmp>
 80083ae:	2800      	cmp	r0, #0
 80083b0:	dd3b      	ble.n	800842a <_dtoa_r+0xdc2>
 80083b2:	9b00      	ldr	r3, [sp, #0]
 80083b4:	2b39      	cmp	r3, #57	; 0x39
 80083b6:	d003      	beq.n	80083c0 <_dtoa_r+0xd58>
 80083b8:	9b02      	ldr	r3, [sp, #8]
 80083ba:	3331      	adds	r3, #49	; 0x31
 80083bc:	9300      	str	r3, [sp, #0]
 80083be:	e733      	b.n	8008228 <_dtoa_r+0xbc0>
 80083c0:	2239      	movs	r2, #57	; 0x39
 80083c2:	9502      	str	r5, [sp, #8]
 80083c4:	703a      	strb	r2, [r7, #0]
 80083c6:	4645      	mov	r5, r8
 80083c8:	e58e      	b.n	8007ee8 <_dtoa_r+0x880>
 80083ca:	e9dd 2300 	ldrd	r2, r3, [sp]
 80083ce:	2000      	movs	r0, #0
 80083d0:	492c      	ldr	r1, [pc, #176]	; (8008484 <_dtoa_r+0xe1c>)
 80083d2:	f7f7 ff19 	bl	8000208 <__aeabi_dsub>
 80083d6:	4632      	mov	r2, r6
 80083d8:	463b      	mov	r3, r7
 80083da:	f7f8 fb5d 	bl	8000a98 <__aeabi_dcmpgt>
 80083de:	b910      	cbnz	r0, 80083e6 <_dtoa_r+0xd7e>
 80083e0:	f7ff bb68 	b.w	8007ab4 <_dtoa_r+0x44c>
 80083e4:	4614      	mov	r4, r2
 80083e6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80083ea:	2b30      	cmp	r3, #48	; 0x30
 80083ec:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80083f0:	d0f8      	beq.n	80083e4 <_dtoa_r+0xd7c>
 80083f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80083f4:	9306      	str	r3, [sp, #24]
 80083f6:	e58d      	b.n	8007f14 <_dtoa_r+0x8ac>
 80083f8:	46d9      	mov	r9, fp
 80083fa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80083fe:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8008402:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008404:	9306      	str	r3, [sp, #24]
 8008406:	e404      	b.n	8007c12 <_dtoa_r+0x5aa>
 8008408:	9b00      	ldr	r3, [sp, #0]
 800840a:	2b39      	cmp	r3, #57	; 0x39
 800840c:	4621      	mov	r1, r4
 800840e:	4632      	mov	r2, r6
 8008410:	f107 0401 	add.w	r4, r7, #1
 8008414:	465e      	mov	r6, fp
 8008416:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800841a:	d0d1      	beq.n	80083c0 <_dtoa_r+0xd58>
 800841c:	2a00      	cmp	r2, #0
 800841e:	f77f af03 	ble.w	8008228 <_dtoa_r+0xbc0>
 8008422:	460b      	mov	r3, r1
 8008424:	3331      	adds	r3, #49	; 0x31
 8008426:	9300      	str	r3, [sp, #0]
 8008428:	e6fe      	b.n	8008228 <_dtoa_r+0xbc0>
 800842a:	f47f aefd 	bne.w	8008228 <_dtoa_r+0xbc0>
 800842e:	9b00      	ldr	r3, [sp, #0]
 8008430:	07da      	lsls	r2, r3, #31
 8008432:	f57f aef9 	bpl.w	8008228 <_dtoa_r+0xbc0>
 8008436:	e7bc      	b.n	80083b2 <_dtoa_r+0xd4a>
 8008438:	4629      	mov	r1, r5
 800843a:	2300      	movs	r3, #0
 800843c:	220a      	movs	r2, #10
 800843e:	4648      	mov	r0, r9
 8008440:	f000 fd88 	bl	8008f54 <__multadd>
 8008444:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008446:	2b00      	cmp	r3, #0
 8008448:	4605      	mov	r5, r0
 800844a:	dd09      	ble.n	8008460 <_dtoa_r+0xdf8>
 800844c:	9309      	str	r3, [sp, #36]	; 0x24
 800844e:	e484      	b.n	8007d5a <_dtoa_r+0x6f2>
 8008450:	9b02      	ldr	r3, [sp, #8]
 8008452:	2b02      	cmp	r3, #2
 8008454:	dc0e      	bgt.n	8008474 <_dtoa_r+0xe0c>
 8008456:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008458:	e507      	b.n	8007e6a <_dtoa_r+0x802>
 800845a:	2602      	movs	r6, #2
 800845c:	f7ff ba70 	b.w	8007940 <_dtoa_r+0x2d8>
 8008460:	9b02      	ldr	r3, [sp, #8]
 8008462:	2b02      	cmp	r3, #2
 8008464:	dc06      	bgt.n	8008474 <_dtoa_r+0xe0c>
 8008466:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008468:	e7f0      	b.n	800844c <_dtoa_r+0xde4>
 800846a:	f43f ac59 	beq.w	8007d20 <_dtoa_r+0x6b8>
 800846e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8008472:	e450      	b.n	8007d16 <_dtoa_r+0x6ae>
 8008474:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8008476:	9309      	str	r3, [sp, #36]	; 0x24
 8008478:	e678      	b.n	800816c <_dtoa_r+0xb04>
 800847a:	bf00      	nop
 800847c:	40240000 	.word	0x40240000
 8008480:	401c0000 	.word	0x401c0000
 8008484:	3fe00000 	.word	0x3fe00000

08008488 <__sflush_r>:
 8008488:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800848c:	b29a      	uxth	r2, r3
 800848e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008492:	460c      	mov	r4, r1
 8008494:	0711      	lsls	r1, r2, #28
 8008496:	4680      	mov	r8, r0
 8008498:	d444      	bmi.n	8008524 <__sflush_r+0x9c>
 800849a:	6862      	ldr	r2, [r4, #4]
 800849c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80084a0:	2a00      	cmp	r2, #0
 80084a2:	81a3      	strh	r3, [r4, #12]
 80084a4:	dd59      	ble.n	800855a <__sflush_r+0xd2>
 80084a6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80084a8:	2d00      	cmp	r5, #0
 80084aa:	d053      	beq.n	8008554 <__sflush_r+0xcc>
 80084ac:	2200      	movs	r2, #0
 80084ae:	b29b      	uxth	r3, r3
 80084b0:	f8d8 6000 	ldr.w	r6, [r8]
 80084b4:	69e1      	ldr	r1, [r4, #28]
 80084b6:	f8c8 2000 	str.w	r2, [r8]
 80084ba:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80084be:	f040 8083 	bne.w	80085c8 <__sflush_r+0x140>
 80084c2:	2301      	movs	r3, #1
 80084c4:	4640      	mov	r0, r8
 80084c6:	47a8      	blx	r5
 80084c8:	1c42      	adds	r2, r0, #1
 80084ca:	d04a      	beq.n	8008562 <__sflush_r+0xda>
 80084cc:	89a3      	ldrh	r3, [r4, #12]
 80084ce:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80084d0:	69e1      	ldr	r1, [r4, #28]
 80084d2:	075b      	lsls	r3, r3, #29
 80084d4:	d505      	bpl.n	80084e2 <__sflush_r+0x5a>
 80084d6:	6862      	ldr	r2, [r4, #4]
 80084d8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80084da:	1a80      	subs	r0, r0, r2
 80084dc:	b10b      	cbz	r3, 80084e2 <__sflush_r+0x5a>
 80084de:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80084e0:	1ac0      	subs	r0, r0, r3
 80084e2:	4602      	mov	r2, r0
 80084e4:	2300      	movs	r3, #0
 80084e6:	4640      	mov	r0, r8
 80084e8:	47a8      	blx	r5
 80084ea:	1c47      	adds	r7, r0, #1
 80084ec:	d045      	beq.n	800857a <__sflush_r+0xf2>
 80084ee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80084f2:	6922      	ldr	r2, [r4, #16]
 80084f4:	6022      	str	r2, [r4, #0]
 80084f6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80084fa:	2200      	movs	r2, #0
 80084fc:	81a3      	strh	r3, [r4, #12]
 80084fe:	04db      	lsls	r3, r3, #19
 8008500:	6062      	str	r2, [r4, #4]
 8008502:	d500      	bpl.n	8008506 <__sflush_r+0x7e>
 8008504:	6520      	str	r0, [r4, #80]	; 0x50
 8008506:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008508:	f8c8 6000 	str.w	r6, [r8]
 800850c:	b311      	cbz	r1, 8008554 <__sflush_r+0xcc>
 800850e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008512:	4299      	cmp	r1, r3
 8008514:	d002      	beq.n	800851c <__sflush_r+0x94>
 8008516:	4640      	mov	r0, r8
 8008518:	f000 f95e 	bl	80087d8 <_free_r>
 800851c:	2000      	movs	r0, #0
 800851e:	6320      	str	r0, [r4, #48]	; 0x30
 8008520:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008524:	6926      	ldr	r6, [r4, #16]
 8008526:	b1ae      	cbz	r6, 8008554 <__sflush_r+0xcc>
 8008528:	6825      	ldr	r5, [r4, #0]
 800852a:	6026      	str	r6, [r4, #0]
 800852c:	0792      	lsls	r2, r2, #30
 800852e:	bf0c      	ite	eq
 8008530:	6963      	ldreq	r3, [r4, #20]
 8008532:	2300      	movne	r3, #0
 8008534:	1bad      	subs	r5, r5, r6
 8008536:	60a3      	str	r3, [r4, #8]
 8008538:	e00a      	b.n	8008550 <__sflush_r+0xc8>
 800853a:	462b      	mov	r3, r5
 800853c:	4632      	mov	r2, r6
 800853e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008540:	69e1      	ldr	r1, [r4, #28]
 8008542:	4640      	mov	r0, r8
 8008544:	47b8      	blx	r7
 8008546:	2800      	cmp	r0, #0
 8008548:	eba5 0500 	sub.w	r5, r5, r0
 800854c:	4406      	add	r6, r0
 800854e:	dd2b      	ble.n	80085a8 <__sflush_r+0x120>
 8008550:	2d00      	cmp	r5, #0
 8008552:	dcf2      	bgt.n	800853a <__sflush_r+0xb2>
 8008554:	2000      	movs	r0, #0
 8008556:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800855a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800855c:	2a00      	cmp	r2, #0
 800855e:	dca2      	bgt.n	80084a6 <__sflush_r+0x1e>
 8008560:	e7f8      	b.n	8008554 <__sflush_r+0xcc>
 8008562:	f8d8 3000 	ldr.w	r3, [r8]
 8008566:	2b00      	cmp	r3, #0
 8008568:	d0b0      	beq.n	80084cc <__sflush_r+0x44>
 800856a:	2b1d      	cmp	r3, #29
 800856c:	d001      	beq.n	8008572 <__sflush_r+0xea>
 800856e:	2b16      	cmp	r3, #22
 8008570:	d12c      	bne.n	80085cc <__sflush_r+0x144>
 8008572:	f8c8 6000 	str.w	r6, [r8]
 8008576:	2000      	movs	r0, #0
 8008578:	e7ed      	b.n	8008556 <__sflush_r+0xce>
 800857a:	f8d8 1000 	ldr.w	r1, [r8]
 800857e:	291d      	cmp	r1, #29
 8008580:	d81a      	bhi.n	80085b8 <__sflush_r+0x130>
 8008582:	4b15      	ldr	r3, [pc, #84]	; (80085d8 <__sflush_r+0x150>)
 8008584:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008588:	40cb      	lsrs	r3, r1
 800858a:	43db      	mvns	r3, r3
 800858c:	f013 0301 	ands.w	r3, r3, #1
 8008590:	d114      	bne.n	80085bc <__sflush_r+0x134>
 8008592:	6925      	ldr	r5, [r4, #16]
 8008594:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8008598:	e9c4 5300 	strd	r5, r3, [r4]
 800859c:	04d5      	lsls	r5, r2, #19
 800859e:	81a2      	strh	r2, [r4, #12]
 80085a0:	d5b1      	bpl.n	8008506 <__sflush_r+0x7e>
 80085a2:	2900      	cmp	r1, #0
 80085a4:	d1af      	bne.n	8008506 <__sflush_r+0x7e>
 80085a6:	e7ad      	b.n	8008504 <__sflush_r+0x7c>
 80085a8:	89a3      	ldrh	r3, [r4, #12]
 80085aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80085ae:	81a3      	strh	r3, [r4, #12]
 80085b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80085b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80085b8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80085bc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80085c0:	81a2      	strh	r2, [r4, #12]
 80085c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80085c6:	e7c6      	b.n	8008556 <__sflush_r+0xce>
 80085c8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80085ca:	e782      	b.n	80084d2 <__sflush_r+0x4a>
 80085cc:	89a3      	ldrh	r3, [r4, #12]
 80085ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80085d2:	81a3      	strh	r3, [r4, #12]
 80085d4:	e7bf      	b.n	8008556 <__sflush_r+0xce>
 80085d6:	bf00      	nop
 80085d8:	20400001 	.word	0x20400001

080085dc <_fflush_r>:
 80085dc:	b538      	push	{r3, r4, r5, lr}
 80085de:	460d      	mov	r5, r1
 80085e0:	4604      	mov	r4, r0
 80085e2:	b108      	cbz	r0, 80085e8 <_fflush_r+0xc>
 80085e4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80085e6:	b1a3      	cbz	r3, 8008612 <_fflush_r+0x36>
 80085e8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80085ec:	b1b8      	cbz	r0, 800861e <_fflush_r+0x42>
 80085ee:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80085f0:	07db      	lsls	r3, r3, #31
 80085f2:	d401      	bmi.n	80085f8 <_fflush_r+0x1c>
 80085f4:	0581      	lsls	r1, r0, #22
 80085f6:	d51a      	bpl.n	800862e <_fflush_r+0x52>
 80085f8:	4620      	mov	r0, r4
 80085fa:	4629      	mov	r1, r5
 80085fc:	f7ff ff44 	bl	8008488 <__sflush_r>
 8008600:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8008602:	07da      	lsls	r2, r3, #31
 8008604:	4604      	mov	r4, r0
 8008606:	d402      	bmi.n	800860e <_fflush_r+0x32>
 8008608:	89ab      	ldrh	r3, [r5, #12]
 800860a:	059b      	lsls	r3, r3, #22
 800860c:	d50a      	bpl.n	8008624 <_fflush_r+0x48>
 800860e:	4620      	mov	r0, r4
 8008610:	bd38      	pop	{r3, r4, r5, pc}
 8008612:	f000 f83f 	bl	8008694 <__sinit>
 8008616:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800861a:	2800      	cmp	r0, #0
 800861c:	d1e7      	bne.n	80085ee <_fflush_r+0x12>
 800861e:	4604      	mov	r4, r0
 8008620:	4620      	mov	r0, r4
 8008622:	bd38      	pop	{r3, r4, r5, pc}
 8008624:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8008626:	f000 fb87 	bl	8008d38 <__retarget_lock_release_recursive>
 800862a:	4620      	mov	r0, r4
 800862c:	bd38      	pop	{r3, r4, r5, pc}
 800862e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8008630:	f000 fb80 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8008634:	e7e0      	b.n	80085f8 <_fflush_r+0x1c>
 8008636:	bf00      	nop

08008638 <std>:
 8008638:	b510      	push	{r4, lr}
 800863a:	2300      	movs	r3, #0
 800863c:	4604      	mov	r4, r0
 800863e:	8181      	strh	r1, [r0, #12]
 8008640:	81c2      	strh	r2, [r0, #14]
 8008642:	e9c0 3300 	strd	r3, r3, [r0]
 8008646:	6083      	str	r3, [r0, #8]
 8008648:	6643      	str	r3, [r0, #100]	; 0x64
 800864a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800864e:	6183      	str	r3, [r0, #24]
 8008650:	4619      	mov	r1, r3
 8008652:	2208      	movs	r2, #8
 8008654:	305c      	adds	r0, #92	; 0x5c
 8008656:	f7fd f837 	bl	80056c8 <memset>
 800865a:	4807      	ldr	r0, [pc, #28]	; (8008678 <std+0x40>)
 800865c:	4907      	ldr	r1, [pc, #28]	; (800867c <std+0x44>)
 800865e:	4a08      	ldr	r2, [pc, #32]	; (8008680 <std+0x48>)
 8008660:	4b08      	ldr	r3, [pc, #32]	; (8008684 <std+0x4c>)
 8008662:	62e3      	str	r3, [r4, #44]	; 0x2c
 8008664:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8008668:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800866c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8008670:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008674:	f000 bb5a 	b.w	8008d2c <__retarget_lock_init_recursive>
 8008678:	080098cd 	.word	0x080098cd
 800867c:	080098f1 	.word	0x080098f1
 8008680:	0800992d 	.word	0x0800992d
 8008684:	0800994d 	.word	0x0800994d

08008688 <_cleanup_r>:
 8008688:	4901      	ldr	r1, [pc, #4]	; (8008690 <_cleanup_r+0x8>)
 800868a:	f000 bb17 	b.w	8008cbc <_fwalk_reent>
 800868e:	bf00      	nop
 8008690:	08009bbd 	.word	0x08009bbd

08008694 <__sinit>:
 8008694:	b510      	push	{r4, lr}
 8008696:	4604      	mov	r4, r0
 8008698:	4812      	ldr	r0, [pc, #72]	; (80086e4 <__sinit+0x50>)
 800869a:	f000 fb4b 	bl	8008d34 <__retarget_lock_acquire_recursive>
 800869e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80086a0:	b9d2      	cbnz	r2, 80086d8 <__sinit+0x44>
 80086a2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80086a6:	4810      	ldr	r0, [pc, #64]	; (80086e8 <__sinit+0x54>)
 80086a8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80086ac:	2103      	movs	r1, #3
 80086ae:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80086b2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80086b4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80086b8:	6860      	ldr	r0, [r4, #4]
 80086ba:	2104      	movs	r1, #4
 80086bc:	f7ff ffbc 	bl	8008638 <std>
 80086c0:	2201      	movs	r2, #1
 80086c2:	2109      	movs	r1, #9
 80086c4:	68a0      	ldr	r0, [r4, #8]
 80086c6:	f7ff ffb7 	bl	8008638 <std>
 80086ca:	2202      	movs	r2, #2
 80086cc:	2112      	movs	r1, #18
 80086ce:	68e0      	ldr	r0, [r4, #12]
 80086d0:	f7ff ffb2 	bl	8008638 <std>
 80086d4:	2301      	movs	r3, #1
 80086d6:	63a3      	str	r3, [r4, #56]	; 0x38
 80086d8:	4802      	ldr	r0, [pc, #8]	; (80086e4 <__sinit+0x50>)
 80086da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80086de:	f000 bb2b 	b.w	8008d38 <__retarget_lock_release_recursive>
 80086e2:	bf00      	nop
 80086e4:	2000143c 	.word	0x2000143c
 80086e8:	08008689 	.word	0x08008689

080086ec <__sfp_lock_acquire>:
 80086ec:	4801      	ldr	r0, [pc, #4]	; (80086f4 <__sfp_lock_acquire+0x8>)
 80086ee:	f000 bb21 	b.w	8008d34 <__retarget_lock_acquire_recursive>
 80086f2:	bf00      	nop
 80086f4:	20001450 	.word	0x20001450

080086f8 <__sfp_lock_release>:
 80086f8:	4801      	ldr	r0, [pc, #4]	; (8008700 <__sfp_lock_release+0x8>)
 80086fa:	f000 bb1d 	b.w	8008d38 <__retarget_lock_release_recursive>
 80086fe:	bf00      	nop
 8008700:	20001450 	.word	0x20001450

08008704 <__libc_fini_array>:
 8008704:	b538      	push	{r3, r4, r5, lr}
 8008706:	4c0a      	ldr	r4, [pc, #40]	; (8008730 <__libc_fini_array+0x2c>)
 8008708:	4d0a      	ldr	r5, [pc, #40]	; (8008734 <__libc_fini_array+0x30>)
 800870a:	1b64      	subs	r4, r4, r5
 800870c:	10a4      	asrs	r4, r4, #2
 800870e:	d00a      	beq.n	8008726 <__libc_fini_array+0x22>
 8008710:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8008714:	3b01      	subs	r3, #1
 8008716:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800871a:	3c01      	subs	r4, #1
 800871c:	f855 3904 	ldr.w	r3, [r5], #-4
 8008720:	4798      	blx	r3
 8008722:	2c00      	cmp	r4, #0
 8008724:	d1f9      	bne.n	800871a <__libc_fini_array+0x16>
 8008726:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800872a:	f001 bc3b 	b.w	8009fa4 <_fini>
 800872e:	bf00      	nop
 8008730:	0800a61c 	.word	0x0800a61c
 8008734:	0800a618 	.word	0x0800a618

08008738 <_malloc_trim_r>:
 8008738:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800873a:	4f24      	ldr	r7, [pc, #144]	; (80087cc <_malloc_trim_r+0x94>)
 800873c:	460c      	mov	r4, r1
 800873e:	4606      	mov	r6, r0
 8008740:	f7fd f80c 	bl	800575c <__malloc_lock>
 8008744:	68bb      	ldr	r3, [r7, #8]
 8008746:	685d      	ldr	r5, [r3, #4]
 8008748:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800874c:	310f      	adds	r1, #15
 800874e:	f025 0503 	bic.w	r5, r5, #3
 8008752:	4429      	add	r1, r5
 8008754:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8008758:	f021 010f 	bic.w	r1, r1, #15
 800875c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8008760:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8008764:	db07      	blt.n	8008776 <_malloc_trim_r+0x3e>
 8008766:	2100      	movs	r1, #0
 8008768:	4630      	mov	r0, r6
 800876a:	f7fd f86d 	bl	8005848 <_sbrk_r>
 800876e:	68bb      	ldr	r3, [r7, #8]
 8008770:	442b      	add	r3, r5
 8008772:	4298      	cmp	r0, r3
 8008774:	d004      	beq.n	8008780 <_malloc_trim_r+0x48>
 8008776:	4630      	mov	r0, r6
 8008778:	f7fc fff6 	bl	8005768 <__malloc_unlock>
 800877c:	2000      	movs	r0, #0
 800877e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008780:	4261      	negs	r1, r4
 8008782:	4630      	mov	r0, r6
 8008784:	f7fd f860 	bl	8005848 <_sbrk_r>
 8008788:	3001      	adds	r0, #1
 800878a:	d00d      	beq.n	80087a8 <_malloc_trim_r+0x70>
 800878c:	4b10      	ldr	r3, [pc, #64]	; (80087d0 <_malloc_trim_r+0x98>)
 800878e:	68ba      	ldr	r2, [r7, #8]
 8008790:	6819      	ldr	r1, [r3, #0]
 8008792:	1b2d      	subs	r5, r5, r4
 8008794:	f045 0501 	orr.w	r5, r5, #1
 8008798:	4630      	mov	r0, r6
 800879a:	1b09      	subs	r1, r1, r4
 800879c:	6055      	str	r5, [r2, #4]
 800879e:	6019      	str	r1, [r3, #0]
 80087a0:	f7fc ffe2 	bl	8005768 <__malloc_unlock>
 80087a4:	2001      	movs	r0, #1
 80087a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80087a8:	2100      	movs	r1, #0
 80087aa:	4630      	mov	r0, r6
 80087ac:	f7fd f84c 	bl	8005848 <_sbrk_r>
 80087b0:	68ba      	ldr	r2, [r7, #8]
 80087b2:	1a83      	subs	r3, r0, r2
 80087b4:	2b0f      	cmp	r3, #15
 80087b6:	ddde      	ble.n	8008776 <_malloc_trim_r+0x3e>
 80087b8:	4c06      	ldr	r4, [pc, #24]	; (80087d4 <_malloc_trim_r+0x9c>)
 80087ba:	4905      	ldr	r1, [pc, #20]	; (80087d0 <_malloc_trim_r+0x98>)
 80087bc:	6824      	ldr	r4, [r4, #0]
 80087be:	f043 0301 	orr.w	r3, r3, #1
 80087c2:	1b00      	subs	r0, r0, r4
 80087c4:	6053      	str	r3, [r2, #4]
 80087c6:	6008      	str	r0, [r1, #0]
 80087c8:	e7d5      	b.n	8008776 <_malloc_trim_r+0x3e>
 80087ca:	bf00      	nop
 80087cc:	20000460 	.word	0x20000460
 80087d0:	200013b4 	.word	0x200013b4
 80087d4:	20000868 	.word	0x20000868

080087d8 <_free_r>:
 80087d8:	2900      	cmp	r1, #0
 80087da:	d053      	beq.n	8008884 <_free_r+0xac>
 80087dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80087de:	460c      	mov	r4, r1
 80087e0:	4606      	mov	r6, r0
 80087e2:	f7fc ffbb 	bl	800575c <__malloc_lock>
 80087e6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80087ea:	4f71      	ldr	r7, [pc, #452]	; (80089b0 <_free_r+0x1d8>)
 80087ec:	f02c 0101 	bic.w	r1, ip, #1
 80087f0:	f1a4 0508 	sub.w	r5, r4, #8
 80087f4:	186b      	adds	r3, r5, r1
 80087f6:	68b8      	ldr	r0, [r7, #8]
 80087f8:	685a      	ldr	r2, [r3, #4]
 80087fa:	4298      	cmp	r0, r3
 80087fc:	f022 0203 	bic.w	r2, r2, #3
 8008800:	d053      	beq.n	80088aa <_free_r+0xd2>
 8008802:	f01c 0f01 	tst.w	ip, #1
 8008806:	605a      	str	r2, [r3, #4]
 8008808:	eb03 0002 	add.w	r0, r3, r2
 800880c:	d13b      	bne.n	8008886 <_free_r+0xae>
 800880e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8008812:	6840      	ldr	r0, [r0, #4]
 8008814:	eba5 050c 	sub.w	r5, r5, ip
 8008818:	f107 0e08 	add.w	lr, r7, #8
 800881c:	68ac      	ldr	r4, [r5, #8]
 800881e:	4574      	cmp	r4, lr
 8008820:	4461      	add	r1, ip
 8008822:	f000 0001 	and.w	r0, r0, #1
 8008826:	d075      	beq.n	8008914 <_free_r+0x13c>
 8008828:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800882c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8008830:	f8cc 4008 	str.w	r4, [ip, #8]
 8008834:	b360      	cbz	r0, 8008890 <_free_r+0xb8>
 8008836:	f041 0301 	orr.w	r3, r1, #1
 800883a:	606b      	str	r3, [r5, #4]
 800883c:	5069      	str	r1, [r5, r1]
 800883e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8008842:	d350      	bcc.n	80088e6 <_free_r+0x10e>
 8008844:	0a4b      	lsrs	r3, r1, #9
 8008846:	2b04      	cmp	r3, #4
 8008848:	d870      	bhi.n	800892c <_free_r+0x154>
 800884a:	098b      	lsrs	r3, r1, #6
 800884c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8008850:	00e4      	lsls	r4, r4, #3
 8008852:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8008856:	1938      	adds	r0, r7, r4
 8008858:	593b      	ldr	r3, [r7, r4]
 800885a:	3808      	subs	r0, #8
 800885c:	4298      	cmp	r0, r3
 800885e:	d078      	beq.n	8008952 <_free_r+0x17a>
 8008860:	685a      	ldr	r2, [r3, #4]
 8008862:	f022 0203 	bic.w	r2, r2, #3
 8008866:	428a      	cmp	r2, r1
 8008868:	d971      	bls.n	800894e <_free_r+0x176>
 800886a:	689b      	ldr	r3, [r3, #8]
 800886c:	4298      	cmp	r0, r3
 800886e:	d1f7      	bne.n	8008860 <_free_r+0x88>
 8008870:	68c3      	ldr	r3, [r0, #12]
 8008872:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8008876:	609d      	str	r5, [r3, #8]
 8008878:	60c5      	str	r5, [r0, #12]
 800887a:	4630      	mov	r0, r6
 800887c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008880:	f7fc bf72 	b.w	8005768 <__malloc_unlock>
 8008884:	4770      	bx	lr
 8008886:	6840      	ldr	r0, [r0, #4]
 8008888:	f000 0001 	and.w	r0, r0, #1
 800888c:	2800      	cmp	r0, #0
 800888e:	d1d2      	bne.n	8008836 <_free_r+0x5e>
 8008890:	6898      	ldr	r0, [r3, #8]
 8008892:	4c48      	ldr	r4, [pc, #288]	; (80089b4 <_free_r+0x1dc>)
 8008894:	4411      	add	r1, r2
 8008896:	42a0      	cmp	r0, r4
 8008898:	f041 0201 	orr.w	r2, r1, #1
 800889c:	d062      	beq.n	8008964 <_free_r+0x18c>
 800889e:	68db      	ldr	r3, [r3, #12]
 80088a0:	60c3      	str	r3, [r0, #12]
 80088a2:	6098      	str	r0, [r3, #8]
 80088a4:	606a      	str	r2, [r5, #4]
 80088a6:	5069      	str	r1, [r5, r1]
 80088a8:	e7c9      	b.n	800883e <_free_r+0x66>
 80088aa:	f01c 0f01 	tst.w	ip, #1
 80088ae:	440a      	add	r2, r1
 80088b0:	d107      	bne.n	80088c2 <_free_r+0xea>
 80088b2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80088b6:	1aed      	subs	r5, r5, r3
 80088b8:	441a      	add	r2, r3
 80088ba:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80088be:	60cb      	str	r3, [r1, #12]
 80088c0:	6099      	str	r1, [r3, #8]
 80088c2:	4b3d      	ldr	r3, [pc, #244]	; (80089b8 <_free_r+0x1e0>)
 80088c4:	681b      	ldr	r3, [r3, #0]
 80088c6:	f042 0101 	orr.w	r1, r2, #1
 80088ca:	4293      	cmp	r3, r2
 80088cc:	6069      	str	r1, [r5, #4]
 80088ce:	60bd      	str	r5, [r7, #8]
 80088d0:	d804      	bhi.n	80088dc <_free_r+0x104>
 80088d2:	4b3a      	ldr	r3, [pc, #232]	; (80089bc <_free_r+0x1e4>)
 80088d4:	4630      	mov	r0, r6
 80088d6:	6819      	ldr	r1, [r3, #0]
 80088d8:	f7ff ff2e 	bl	8008738 <_malloc_trim_r>
 80088dc:	4630      	mov	r0, r6
 80088de:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80088e2:	f7fc bf41 	b.w	8005768 <__malloc_unlock>
 80088e6:	08c9      	lsrs	r1, r1, #3
 80088e8:	6878      	ldr	r0, [r7, #4]
 80088ea:	1c4a      	adds	r2, r1, #1
 80088ec:	2301      	movs	r3, #1
 80088ee:	1089      	asrs	r1, r1, #2
 80088f0:	408b      	lsls	r3, r1
 80088f2:	4303      	orrs	r3, r0
 80088f4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80088f8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80088fc:	607b      	str	r3, [r7, #4]
 80088fe:	3908      	subs	r1, #8
 8008900:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8008904:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8008908:	60c5      	str	r5, [r0, #12]
 800890a:	4630      	mov	r0, r6
 800890c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008910:	f7fc bf2a 	b.w	8005768 <__malloc_unlock>
 8008914:	2800      	cmp	r0, #0
 8008916:	d145      	bne.n	80089a4 <_free_r+0x1cc>
 8008918:	440a      	add	r2, r1
 800891a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800891e:	f042 0001 	orr.w	r0, r2, #1
 8008922:	60cb      	str	r3, [r1, #12]
 8008924:	6099      	str	r1, [r3, #8]
 8008926:	6068      	str	r0, [r5, #4]
 8008928:	50aa      	str	r2, [r5, r2]
 800892a:	e7d7      	b.n	80088dc <_free_r+0x104>
 800892c:	2b14      	cmp	r3, #20
 800892e:	d908      	bls.n	8008942 <_free_r+0x16a>
 8008930:	2b54      	cmp	r3, #84	; 0x54
 8008932:	d81e      	bhi.n	8008972 <_free_r+0x19a>
 8008934:	0b0b      	lsrs	r3, r1, #12
 8008936:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800893a:	00e4      	lsls	r4, r4, #3
 800893c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8008940:	e789      	b.n	8008856 <_free_r+0x7e>
 8008942:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8008946:	00e4      	lsls	r4, r4, #3
 8008948:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800894c:	e783      	b.n	8008856 <_free_r+0x7e>
 800894e:	4618      	mov	r0, r3
 8008950:	e78e      	b.n	8008870 <_free_r+0x98>
 8008952:	1093      	asrs	r3, r2, #2
 8008954:	6879      	ldr	r1, [r7, #4]
 8008956:	2201      	movs	r2, #1
 8008958:	fa02 f303 	lsl.w	r3, r2, r3
 800895c:	430b      	orrs	r3, r1
 800895e:	607b      	str	r3, [r7, #4]
 8008960:	4603      	mov	r3, r0
 8008962:	e786      	b.n	8008872 <_free_r+0x9a>
 8008964:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008968:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800896c:	606a      	str	r2, [r5, #4]
 800896e:	5069      	str	r1, [r5, r1]
 8008970:	e7b4      	b.n	80088dc <_free_r+0x104>
 8008972:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008976:	d806      	bhi.n	8008986 <_free_r+0x1ae>
 8008978:	0bcb      	lsrs	r3, r1, #15
 800897a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800897e:	00e4      	lsls	r4, r4, #3
 8008980:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8008984:	e767      	b.n	8008856 <_free_r+0x7e>
 8008986:	f240 5254 	movw	r2, #1364	; 0x554
 800898a:	4293      	cmp	r3, r2
 800898c:	d806      	bhi.n	800899c <_free_r+0x1c4>
 800898e:	0c8b      	lsrs	r3, r1, #18
 8008990:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8008994:	00e4      	lsls	r4, r4, #3
 8008996:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800899a:	e75c      	b.n	8008856 <_free_r+0x7e>
 800899c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80089a0:	227e      	movs	r2, #126	; 0x7e
 80089a2:	e758      	b.n	8008856 <_free_r+0x7e>
 80089a4:	f041 0201 	orr.w	r2, r1, #1
 80089a8:	606a      	str	r2, [r5, #4]
 80089aa:	6019      	str	r1, [r3, #0]
 80089ac:	e796      	b.n	80088dc <_free_r+0x104>
 80089ae:	bf00      	nop
 80089b0:	20000460 	.word	0x20000460
 80089b4:	20000468 	.word	0x20000468
 80089b8:	2000086c 	.word	0x2000086c
 80089bc:	200013e4 	.word	0x200013e4

080089c0 <__sfvwrite_r>:
 80089c0:	6893      	ldr	r3, [r2, #8]
 80089c2:	2b00      	cmp	r3, #0
 80089c4:	f000 80e4 	beq.w	8008b90 <__sfvwrite_r+0x1d0>
 80089c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80089cc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80089d0:	b29b      	uxth	r3, r3
 80089d2:	460c      	mov	r4, r1
 80089d4:	0719      	lsls	r1, r3, #28
 80089d6:	b083      	sub	sp, #12
 80089d8:	4682      	mov	sl, r0
 80089da:	4690      	mov	r8, r2
 80089dc:	d535      	bpl.n	8008a4a <__sfvwrite_r+0x8a>
 80089de:	6922      	ldr	r2, [r4, #16]
 80089e0:	b39a      	cbz	r2, 8008a4a <__sfvwrite_r+0x8a>
 80089e2:	f013 0202 	ands.w	r2, r3, #2
 80089e6:	f8d8 6000 	ldr.w	r6, [r8]
 80089ea:	d03d      	beq.n	8008a68 <__sfvwrite_r+0xa8>
 80089ec:	2700      	movs	r7, #0
 80089ee:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80089f2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80089f6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008cb8 <__sfvwrite_r+0x2f8>
 80089fa:	463d      	mov	r5, r7
 80089fc:	454d      	cmp	r5, r9
 80089fe:	462b      	mov	r3, r5
 8008a00:	463a      	mov	r2, r7
 8008a02:	bf28      	it	cs
 8008a04:	464b      	movcs	r3, r9
 8008a06:	4661      	mov	r1, ip
 8008a08:	4650      	mov	r0, sl
 8008a0a:	b1d5      	cbz	r5, 8008a42 <__sfvwrite_r+0x82>
 8008a0c:	47d8      	blx	fp
 8008a0e:	2800      	cmp	r0, #0
 8008a10:	f340 80c6 	ble.w	8008ba0 <__sfvwrite_r+0x1e0>
 8008a14:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008a18:	1a1b      	subs	r3, r3, r0
 8008a1a:	4407      	add	r7, r0
 8008a1c:	1a2d      	subs	r5, r5, r0
 8008a1e:	f8c8 3008 	str.w	r3, [r8, #8]
 8008a22:	2b00      	cmp	r3, #0
 8008a24:	f000 80b0 	beq.w	8008b88 <__sfvwrite_r+0x1c8>
 8008a28:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008a2c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008a30:	454d      	cmp	r5, r9
 8008a32:	462b      	mov	r3, r5
 8008a34:	463a      	mov	r2, r7
 8008a36:	bf28      	it	cs
 8008a38:	464b      	movcs	r3, r9
 8008a3a:	4661      	mov	r1, ip
 8008a3c:	4650      	mov	r0, sl
 8008a3e:	2d00      	cmp	r5, #0
 8008a40:	d1e4      	bne.n	8008a0c <__sfvwrite_r+0x4c>
 8008a42:	e9d6 7500 	ldrd	r7, r5, [r6]
 8008a46:	3608      	adds	r6, #8
 8008a48:	e7d8      	b.n	80089fc <__sfvwrite_r+0x3c>
 8008a4a:	4621      	mov	r1, r4
 8008a4c:	4650      	mov	r0, sl
 8008a4e:	f7fe fc8f 	bl	8007370 <__swsetup_r>
 8008a52:	2800      	cmp	r0, #0
 8008a54:	f040 812a 	bne.w	8008cac <__sfvwrite_r+0x2ec>
 8008a58:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008a5c:	f8d8 6000 	ldr.w	r6, [r8]
 8008a60:	b29b      	uxth	r3, r3
 8008a62:	f013 0202 	ands.w	r2, r3, #2
 8008a66:	d1c1      	bne.n	80089ec <__sfvwrite_r+0x2c>
 8008a68:	f013 0901 	ands.w	r9, r3, #1
 8008a6c:	d15d      	bne.n	8008b2a <__sfvwrite_r+0x16a>
 8008a6e:	68a7      	ldr	r7, [r4, #8]
 8008a70:	6820      	ldr	r0, [r4, #0]
 8008a72:	464d      	mov	r5, r9
 8008a74:	2d00      	cmp	r5, #0
 8008a76:	d054      	beq.n	8008b22 <__sfvwrite_r+0x162>
 8008a78:	059a      	lsls	r2, r3, #22
 8008a7a:	f140 809b 	bpl.w	8008bb4 <__sfvwrite_r+0x1f4>
 8008a7e:	42af      	cmp	r7, r5
 8008a80:	46bb      	mov	fp, r7
 8008a82:	f200 80d8 	bhi.w	8008c36 <__sfvwrite_r+0x276>
 8008a86:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8008a8a:	d02f      	beq.n	8008aec <__sfvwrite_r+0x12c>
 8008a8c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008a90:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008a94:	eba0 0b01 	sub.w	fp, r0, r1
 8008a98:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008a9c:	1c68      	adds	r0, r5, #1
 8008a9e:	107f      	asrs	r7, r7, #1
 8008aa0:	4458      	add	r0, fp
 8008aa2:	42b8      	cmp	r0, r7
 8008aa4:	463a      	mov	r2, r7
 8008aa6:	bf84      	itt	hi
 8008aa8:	4607      	movhi	r7, r0
 8008aaa:	463a      	movhi	r2, r7
 8008aac:	055b      	lsls	r3, r3, #21
 8008aae:	f140 80d3 	bpl.w	8008c58 <__sfvwrite_r+0x298>
 8008ab2:	4611      	mov	r1, r2
 8008ab4:	4650      	mov	r0, sl
 8008ab6:	f7fc fb63 	bl	8005180 <_malloc_r>
 8008aba:	2800      	cmp	r0, #0
 8008abc:	f000 80f0 	beq.w	8008ca0 <__sfvwrite_r+0x2e0>
 8008ac0:	465a      	mov	r2, fp
 8008ac2:	6921      	ldr	r1, [r4, #16]
 8008ac4:	9001      	str	r0, [sp, #4]
 8008ac6:	f7f8 f9e7 	bl	8000e98 <memcpy>
 8008aca:	89a2      	ldrh	r2, [r4, #12]
 8008acc:	9b01      	ldr	r3, [sp, #4]
 8008ace:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008ad2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008ad6:	81a2      	strh	r2, [r4, #12]
 8008ad8:	eba7 020b 	sub.w	r2, r7, fp
 8008adc:	eb03 000b 	add.w	r0, r3, fp
 8008ae0:	6167      	str	r7, [r4, #20]
 8008ae2:	6123      	str	r3, [r4, #16]
 8008ae4:	6020      	str	r0, [r4, #0]
 8008ae6:	60a2      	str	r2, [r4, #8]
 8008ae8:	462f      	mov	r7, r5
 8008aea:	46ab      	mov	fp, r5
 8008aec:	465a      	mov	r2, fp
 8008aee:	4649      	mov	r1, r9
 8008af0:	f000 f99c 	bl	8008e2c <memmove>
 8008af4:	68a2      	ldr	r2, [r4, #8]
 8008af6:	6823      	ldr	r3, [r4, #0]
 8008af8:	1bd2      	subs	r2, r2, r7
 8008afa:	445b      	add	r3, fp
 8008afc:	462f      	mov	r7, r5
 8008afe:	60a2      	str	r2, [r4, #8]
 8008b00:	6023      	str	r3, [r4, #0]
 8008b02:	2500      	movs	r5, #0
 8008b04:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008b08:	1bdb      	subs	r3, r3, r7
 8008b0a:	44b9      	add	r9, r7
 8008b0c:	f8c8 3008 	str.w	r3, [r8, #8]
 8008b10:	2b00      	cmp	r3, #0
 8008b12:	d039      	beq.n	8008b88 <__sfvwrite_r+0x1c8>
 8008b14:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008b18:	68a7      	ldr	r7, [r4, #8]
 8008b1a:	6820      	ldr	r0, [r4, #0]
 8008b1c:	b29b      	uxth	r3, r3
 8008b1e:	2d00      	cmp	r5, #0
 8008b20:	d1aa      	bne.n	8008a78 <__sfvwrite_r+0xb8>
 8008b22:	e9d6 9500 	ldrd	r9, r5, [r6]
 8008b26:	3608      	adds	r6, #8
 8008b28:	e7a4      	b.n	8008a74 <__sfvwrite_r+0xb4>
 8008b2a:	4633      	mov	r3, r6
 8008b2c:	4691      	mov	r9, r2
 8008b2e:	4610      	mov	r0, r2
 8008b30:	4617      	mov	r7, r2
 8008b32:	464e      	mov	r6, r9
 8008b34:	469b      	mov	fp, r3
 8008b36:	2f00      	cmp	r7, #0
 8008b38:	d06b      	beq.n	8008c12 <__sfvwrite_r+0x252>
 8008b3a:	2800      	cmp	r0, #0
 8008b3c:	d071      	beq.n	8008c22 <__sfvwrite_r+0x262>
 8008b3e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8008b42:	6820      	ldr	r0, [r4, #0]
 8008b44:	45b9      	cmp	r9, r7
 8008b46:	464b      	mov	r3, r9
 8008b48:	bf28      	it	cs
 8008b4a:	463b      	movcs	r3, r7
 8008b4c:	4288      	cmp	r0, r1
 8008b4e:	d903      	bls.n	8008b58 <__sfvwrite_r+0x198>
 8008b50:	68a5      	ldr	r5, [r4, #8]
 8008b52:	4415      	add	r5, r2
 8008b54:	42ab      	cmp	r3, r5
 8008b56:	dc71      	bgt.n	8008c3c <__sfvwrite_r+0x27c>
 8008b58:	429a      	cmp	r2, r3
 8008b5a:	f300 8093 	bgt.w	8008c84 <__sfvwrite_r+0x2c4>
 8008b5e:	4613      	mov	r3, r2
 8008b60:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008b62:	69e1      	ldr	r1, [r4, #28]
 8008b64:	4632      	mov	r2, r6
 8008b66:	4650      	mov	r0, sl
 8008b68:	47a8      	blx	r5
 8008b6a:	1e05      	subs	r5, r0, #0
 8008b6c:	dd18      	ble.n	8008ba0 <__sfvwrite_r+0x1e0>
 8008b6e:	ebb9 0905 	subs.w	r9, r9, r5
 8008b72:	d00f      	beq.n	8008b94 <__sfvwrite_r+0x1d4>
 8008b74:	2001      	movs	r0, #1
 8008b76:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008b7a:	1b5b      	subs	r3, r3, r5
 8008b7c:	442e      	add	r6, r5
 8008b7e:	1b7f      	subs	r7, r7, r5
 8008b80:	f8c8 3008 	str.w	r3, [r8, #8]
 8008b84:	2b00      	cmp	r3, #0
 8008b86:	d1d6      	bne.n	8008b36 <__sfvwrite_r+0x176>
 8008b88:	2000      	movs	r0, #0
 8008b8a:	b003      	add	sp, #12
 8008b8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008b90:	2000      	movs	r0, #0
 8008b92:	4770      	bx	lr
 8008b94:	4621      	mov	r1, r4
 8008b96:	4650      	mov	r0, sl
 8008b98:	f7ff fd20 	bl	80085dc <_fflush_r>
 8008b9c:	2800      	cmp	r0, #0
 8008b9e:	d0ea      	beq.n	8008b76 <__sfvwrite_r+0x1b6>
 8008ba0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008ba4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008ba8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008bac:	81a3      	strh	r3, [r4, #12]
 8008bae:	b003      	add	sp, #12
 8008bb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008bb4:	6923      	ldr	r3, [r4, #16]
 8008bb6:	4283      	cmp	r3, r0
 8008bb8:	d315      	bcc.n	8008be6 <__sfvwrite_r+0x226>
 8008bba:	6961      	ldr	r1, [r4, #20]
 8008bbc:	42a9      	cmp	r1, r5
 8008bbe:	d812      	bhi.n	8008be6 <__sfvwrite_r+0x226>
 8008bc0:	4b3c      	ldr	r3, [pc, #240]	; (8008cb4 <__sfvwrite_r+0x2f4>)
 8008bc2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008bc4:	429d      	cmp	r5, r3
 8008bc6:	bf94      	ite	ls
 8008bc8:	462b      	movls	r3, r5
 8008bca:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008bce:	464a      	mov	r2, r9
 8008bd0:	fb93 f3f1 	sdiv	r3, r3, r1
 8008bd4:	4650      	mov	r0, sl
 8008bd6:	fb01 f303 	mul.w	r3, r1, r3
 8008bda:	69e1      	ldr	r1, [r4, #28]
 8008bdc:	47b8      	blx	r7
 8008bde:	1e07      	subs	r7, r0, #0
 8008be0:	ddde      	ble.n	8008ba0 <__sfvwrite_r+0x1e0>
 8008be2:	1bed      	subs	r5, r5, r7
 8008be4:	e78e      	b.n	8008b04 <__sfvwrite_r+0x144>
 8008be6:	42af      	cmp	r7, r5
 8008be8:	bf28      	it	cs
 8008bea:	462f      	movcs	r7, r5
 8008bec:	463a      	mov	r2, r7
 8008bee:	4649      	mov	r1, r9
 8008bf0:	f000 f91c 	bl	8008e2c <memmove>
 8008bf4:	68a3      	ldr	r3, [r4, #8]
 8008bf6:	6822      	ldr	r2, [r4, #0]
 8008bf8:	1bdb      	subs	r3, r3, r7
 8008bfa:	443a      	add	r2, r7
 8008bfc:	60a3      	str	r3, [r4, #8]
 8008bfe:	6022      	str	r2, [r4, #0]
 8008c00:	2b00      	cmp	r3, #0
 8008c02:	d1ee      	bne.n	8008be2 <__sfvwrite_r+0x222>
 8008c04:	4621      	mov	r1, r4
 8008c06:	4650      	mov	r0, sl
 8008c08:	f7ff fce8 	bl	80085dc <_fflush_r>
 8008c0c:	2800      	cmp	r0, #0
 8008c0e:	d0e8      	beq.n	8008be2 <__sfvwrite_r+0x222>
 8008c10:	e7c6      	b.n	8008ba0 <__sfvwrite_r+0x1e0>
 8008c12:	f10b 0308 	add.w	r3, fp, #8
 8008c16:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8008c1a:	469b      	mov	fp, r3
 8008c1c:	3308      	adds	r3, #8
 8008c1e:	2f00      	cmp	r7, #0
 8008c20:	d0f9      	beq.n	8008c16 <__sfvwrite_r+0x256>
 8008c22:	463a      	mov	r2, r7
 8008c24:	210a      	movs	r1, #10
 8008c26:	4630      	mov	r0, r6
 8008c28:	f7f8 fa5a 	bl	80010e0 <memchr>
 8008c2c:	b338      	cbz	r0, 8008c7e <__sfvwrite_r+0x2be>
 8008c2e:	3001      	adds	r0, #1
 8008c30:	eba0 0906 	sub.w	r9, r0, r6
 8008c34:	e783      	b.n	8008b3e <__sfvwrite_r+0x17e>
 8008c36:	462f      	mov	r7, r5
 8008c38:	46ab      	mov	fp, r5
 8008c3a:	e757      	b.n	8008aec <__sfvwrite_r+0x12c>
 8008c3c:	4631      	mov	r1, r6
 8008c3e:	462a      	mov	r2, r5
 8008c40:	f000 f8f4 	bl	8008e2c <memmove>
 8008c44:	6823      	ldr	r3, [r4, #0]
 8008c46:	442b      	add	r3, r5
 8008c48:	6023      	str	r3, [r4, #0]
 8008c4a:	4621      	mov	r1, r4
 8008c4c:	4650      	mov	r0, sl
 8008c4e:	f7ff fcc5 	bl	80085dc <_fflush_r>
 8008c52:	2800      	cmp	r0, #0
 8008c54:	d08b      	beq.n	8008b6e <__sfvwrite_r+0x1ae>
 8008c56:	e7a3      	b.n	8008ba0 <__sfvwrite_r+0x1e0>
 8008c58:	4650      	mov	r0, sl
 8008c5a:	f000 fc55 	bl	8009508 <_realloc_r>
 8008c5e:	4603      	mov	r3, r0
 8008c60:	2800      	cmp	r0, #0
 8008c62:	f47f af39 	bne.w	8008ad8 <__sfvwrite_r+0x118>
 8008c66:	6921      	ldr	r1, [r4, #16]
 8008c68:	4650      	mov	r0, sl
 8008c6a:	f7ff fdb5 	bl	80087d8 <_free_r>
 8008c6e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008c72:	220c      	movs	r2, #12
 8008c74:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008c78:	f8ca 2000 	str.w	r2, [sl]
 8008c7c:	e792      	b.n	8008ba4 <__sfvwrite_r+0x1e4>
 8008c7e:	f107 0901 	add.w	r9, r7, #1
 8008c82:	e75c      	b.n	8008b3e <__sfvwrite_r+0x17e>
 8008c84:	461a      	mov	r2, r3
 8008c86:	4631      	mov	r1, r6
 8008c88:	9301      	str	r3, [sp, #4]
 8008c8a:	f000 f8cf 	bl	8008e2c <memmove>
 8008c8e:	9b01      	ldr	r3, [sp, #4]
 8008c90:	68a1      	ldr	r1, [r4, #8]
 8008c92:	6822      	ldr	r2, [r4, #0]
 8008c94:	1ac9      	subs	r1, r1, r3
 8008c96:	441a      	add	r2, r3
 8008c98:	60a1      	str	r1, [r4, #8]
 8008c9a:	6022      	str	r2, [r4, #0]
 8008c9c:	461d      	mov	r5, r3
 8008c9e:	e766      	b.n	8008b6e <__sfvwrite_r+0x1ae>
 8008ca0:	230c      	movs	r3, #12
 8008ca2:	f8ca 3000 	str.w	r3, [sl]
 8008ca6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008caa:	e77b      	b.n	8008ba4 <__sfvwrite_r+0x1e4>
 8008cac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008cb0:	e76b      	b.n	8008b8a <__sfvwrite_r+0x1ca>
 8008cb2:	bf00      	nop
 8008cb4:	7ffffffe 	.word	0x7ffffffe
 8008cb8:	7ffffc00 	.word	0x7ffffc00

08008cbc <_fwalk_reent>:
 8008cbc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008cc0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8008cc4:	d01f      	beq.n	8008d06 <_fwalk_reent+0x4a>
 8008cc6:	4688      	mov	r8, r1
 8008cc8:	4606      	mov	r6, r0
 8008cca:	f04f 0900 	mov.w	r9, #0
 8008cce:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8008cd2:	3d01      	subs	r5, #1
 8008cd4:	d411      	bmi.n	8008cfa <_fwalk_reent+0x3e>
 8008cd6:	89a3      	ldrh	r3, [r4, #12]
 8008cd8:	2b01      	cmp	r3, #1
 8008cda:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008cde:	4621      	mov	r1, r4
 8008ce0:	4630      	mov	r0, r6
 8008ce2:	d906      	bls.n	8008cf2 <_fwalk_reent+0x36>
 8008ce4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8008ce8:	3301      	adds	r3, #1
 8008cea:	d002      	beq.n	8008cf2 <_fwalk_reent+0x36>
 8008cec:	47c0      	blx	r8
 8008cee:	ea49 0900 	orr.w	r9, r9, r0
 8008cf2:	1c6b      	adds	r3, r5, #1
 8008cf4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8008cf8:	d1ed      	bne.n	8008cd6 <_fwalk_reent+0x1a>
 8008cfa:	683f      	ldr	r7, [r7, #0]
 8008cfc:	2f00      	cmp	r7, #0
 8008cfe:	d1e6      	bne.n	8008cce <_fwalk_reent+0x12>
 8008d00:	4648      	mov	r0, r9
 8008d02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008d06:	46b9      	mov	r9, r7
 8008d08:	4648      	mov	r0, r9
 8008d0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008d0e:	bf00      	nop

08008d10 <_localeconv_r>:
 8008d10:	4a04      	ldr	r2, [pc, #16]	; (8008d24 <_localeconv_r+0x14>)
 8008d12:	4b05      	ldr	r3, [pc, #20]	; (8008d28 <_localeconv_r+0x18>)
 8008d14:	6812      	ldr	r2, [r2, #0]
 8008d16:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8008d18:	2800      	cmp	r0, #0
 8008d1a:	bf08      	it	eq
 8008d1c:	4618      	moveq	r0, r3
 8008d1e:	30f0      	adds	r0, #240	; 0xf0
 8008d20:	4770      	bx	lr
 8008d22:	bf00      	nop
 8008d24:	20000030 	.word	0x20000030
 8008d28:	20000874 	.word	0x20000874

08008d2c <__retarget_lock_init_recursive>:
 8008d2c:	4770      	bx	lr
 8008d2e:	bf00      	nop

08008d30 <__retarget_lock_close_recursive>:
 8008d30:	4770      	bx	lr
 8008d32:	bf00      	nop

08008d34 <__retarget_lock_acquire_recursive>:
 8008d34:	4770      	bx	lr
 8008d36:	bf00      	nop

08008d38 <__retarget_lock_release_recursive>:
 8008d38:	4770      	bx	lr
 8008d3a:	bf00      	nop

08008d3c <__swhatbuf_r>:
 8008d3c:	b570      	push	{r4, r5, r6, lr}
 8008d3e:	460c      	mov	r4, r1
 8008d40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008d44:	2900      	cmp	r1, #0
 8008d46:	b096      	sub	sp, #88	; 0x58
 8008d48:	4615      	mov	r5, r2
 8008d4a:	461e      	mov	r6, r3
 8008d4c:	da0f      	bge.n	8008d6e <__swhatbuf_r+0x32>
 8008d4e:	89a2      	ldrh	r2, [r4, #12]
 8008d50:	2300      	movs	r3, #0
 8008d52:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8008d56:	6033      	str	r3, [r6, #0]
 8008d58:	d104      	bne.n	8008d64 <__swhatbuf_r+0x28>
 8008d5a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8008d5e:	602b      	str	r3, [r5, #0]
 8008d60:	b016      	add	sp, #88	; 0x58
 8008d62:	bd70      	pop	{r4, r5, r6, pc}
 8008d64:	2240      	movs	r2, #64	; 0x40
 8008d66:	4618      	mov	r0, r3
 8008d68:	602a      	str	r2, [r5, #0]
 8008d6a:	b016      	add	sp, #88	; 0x58
 8008d6c:	bd70      	pop	{r4, r5, r6, pc}
 8008d6e:	466a      	mov	r2, sp
 8008d70:	f001 f80e 	bl	8009d90 <_fstat_r>
 8008d74:	2800      	cmp	r0, #0
 8008d76:	dbea      	blt.n	8008d4e <__swhatbuf_r+0x12>
 8008d78:	9b01      	ldr	r3, [sp, #4]
 8008d7a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8008d7e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8008d82:	fab3 f383 	clz	r3, r3
 8008d86:	095b      	lsrs	r3, r3, #5
 8008d88:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8008d8c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008d90:	6033      	str	r3, [r6, #0]
 8008d92:	602a      	str	r2, [r5, #0]
 8008d94:	b016      	add	sp, #88	; 0x58
 8008d96:	bd70      	pop	{r4, r5, r6, pc}

08008d98 <__smakebuf_r>:
 8008d98:	898a      	ldrh	r2, [r1, #12]
 8008d9a:	0792      	lsls	r2, r2, #30
 8008d9c:	460b      	mov	r3, r1
 8008d9e:	d506      	bpl.n	8008dae <__smakebuf_r+0x16>
 8008da0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8008da4:	2101      	movs	r1, #1
 8008da6:	601a      	str	r2, [r3, #0]
 8008da8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8008dac:	4770      	bx	lr
 8008dae:	b570      	push	{r4, r5, r6, lr}
 8008db0:	b082      	sub	sp, #8
 8008db2:	ab01      	add	r3, sp, #4
 8008db4:	466a      	mov	r2, sp
 8008db6:	460c      	mov	r4, r1
 8008db8:	4605      	mov	r5, r0
 8008dba:	f7ff ffbf 	bl	8008d3c <__swhatbuf_r>
 8008dbe:	9900      	ldr	r1, [sp, #0]
 8008dc0:	4606      	mov	r6, r0
 8008dc2:	4628      	mov	r0, r5
 8008dc4:	f7fc f9dc 	bl	8005180 <_malloc_r>
 8008dc8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008dcc:	b1d8      	cbz	r0, 8008e06 <__smakebuf_r+0x6e>
 8008dce:	4916      	ldr	r1, [pc, #88]	; (8008e28 <__smakebuf_r+0x90>)
 8008dd0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8008dd2:	9a01      	ldr	r2, [sp, #4]
 8008dd4:	9900      	ldr	r1, [sp, #0]
 8008dd6:	6020      	str	r0, [r4, #0]
 8008dd8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008ddc:	81a3      	strh	r3, [r4, #12]
 8008dde:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8008de2:	b91a      	cbnz	r2, 8008dec <__smakebuf_r+0x54>
 8008de4:	4333      	orrs	r3, r6
 8008de6:	81a3      	strh	r3, [r4, #12]
 8008de8:	b002      	add	sp, #8
 8008dea:	bd70      	pop	{r4, r5, r6, pc}
 8008dec:	4628      	mov	r0, r5
 8008dee:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008df2:	f000 ffe1 	bl	8009db8 <_isatty_r>
 8008df6:	b1a0      	cbz	r0, 8008e22 <__smakebuf_r+0x8a>
 8008df8:	89a3      	ldrh	r3, [r4, #12]
 8008dfa:	f023 0303 	bic.w	r3, r3, #3
 8008dfe:	f043 0301 	orr.w	r3, r3, #1
 8008e02:	b21b      	sxth	r3, r3
 8008e04:	e7ee      	b.n	8008de4 <__smakebuf_r+0x4c>
 8008e06:	059a      	lsls	r2, r3, #22
 8008e08:	d4ee      	bmi.n	8008de8 <__smakebuf_r+0x50>
 8008e0a:	f023 0303 	bic.w	r3, r3, #3
 8008e0e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8008e12:	f043 0302 	orr.w	r3, r3, #2
 8008e16:	2101      	movs	r1, #1
 8008e18:	81a3      	strh	r3, [r4, #12]
 8008e1a:	6022      	str	r2, [r4, #0]
 8008e1c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8008e20:	e7e2      	b.n	8008de8 <__smakebuf_r+0x50>
 8008e22:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008e26:	e7dd      	b.n	8008de4 <__smakebuf_r+0x4c>
 8008e28:	08008689 	.word	0x08008689

08008e2c <memmove>:
 8008e2c:	4288      	cmp	r0, r1
 8008e2e:	b4f0      	push	{r4, r5, r6, r7}
 8008e30:	d90d      	bls.n	8008e4e <memmove+0x22>
 8008e32:	188b      	adds	r3, r1, r2
 8008e34:	4283      	cmp	r3, r0
 8008e36:	d90a      	bls.n	8008e4e <memmove+0x22>
 8008e38:	1884      	adds	r4, r0, r2
 8008e3a:	b132      	cbz	r2, 8008e4a <memmove+0x1e>
 8008e3c:	4622      	mov	r2, r4
 8008e3e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8008e42:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8008e46:	4299      	cmp	r1, r3
 8008e48:	d1f9      	bne.n	8008e3e <memmove+0x12>
 8008e4a:	bcf0      	pop	{r4, r5, r6, r7}
 8008e4c:	4770      	bx	lr
 8008e4e:	2a0f      	cmp	r2, #15
 8008e50:	d949      	bls.n	8008ee6 <memmove+0xba>
 8008e52:	ea40 0301 	orr.w	r3, r0, r1
 8008e56:	079b      	lsls	r3, r3, #30
 8008e58:	d147      	bne.n	8008eea <memmove+0xbe>
 8008e5a:	f1a2 0310 	sub.w	r3, r2, #16
 8008e5e:	091b      	lsrs	r3, r3, #4
 8008e60:	f101 0720 	add.w	r7, r1, #32
 8008e64:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008e68:	f101 0410 	add.w	r4, r1, #16
 8008e6c:	f100 0510 	add.w	r5, r0, #16
 8008e70:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008e74:	f845 6c10 	str.w	r6, [r5, #-16]
 8008e78:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8008e7c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008e80:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008e84:	f845 6c08 	str.w	r6, [r5, #-8]
 8008e88:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8008e8c:	f845 6c04 	str.w	r6, [r5, #-4]
 8008e90:	3410      	adds	r4, #16
 8008e92:	42bc      	cmp	r4, r7
 8008e94:	f105 0510 	add.w	r5, r5, #16
 8008e98:	d1ea      	bne.n	8008e70 <memmove+0x44>
 8008e9a:	3301      	adds	r3, #1
 8008e9c:	f002 050f 	and.w	r5, r2, #15
 8008ea0:	011b      	lsls	r3, r3, #4
 8008ea2:	2d03      	cmp	r5, #3
 8008ea4:	4419      	add	r1, r3
 8008ea6:	4403      	add	r3, r0
 8008ea8:	d921      	bls.n	8008eee <memmove+0xc2>
 8008eaa:	1f1f      	subs	r7, r3, #4
 8008eac:	460e      	mov	r6, r1
 8008eae:	462c      	mov	r4, r5
 8008eb0:	3c04      	subs	r4, #4
 8008eb2:	f856 cb04 	ldr.w	ip, [r6], #4
 8008eb6:	f847 cf04 	str.w	ip, [r7, #4]!
 8008eba:	2c03      	cmp	r4, #3
 8008ebc:	d8f8      	bhi.n	8008eb0 <memmove+0x84>
 8008ebe:	1f2c      	subs	r4, r5, #4
 8008ec0:	f024 0403 	bic.w	r4, r4, #3
 8008ec4:	3404      	adds	r4, #4
 8008ec6:	4423      	add	r3, r4
 8008ec8:	4421      	add	r1, r4
 8008eca:	f002 0203 	and.w	r2, r2, #3
 8008ece:	2a00      	cmp	r2, #0
 8008ed0:	d0bb      	beq.n	8008e4a <memmove+0x1e>
 8008ed2:	3b01      	subs	r3, #1
 8008ed4:	440a      	add	r2, r1
 8008ed6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8008eda:	f803 4f01 	strb.w	r4, [r3, #1]!
 8008ede:	4291      	cmp	r1, r2
 8008ee0:	d1f9      	bne.n	8008ed6 <memmove+0xaa>
 8008ee2:	bcf0      	pop	{r4, r5, r6, r7}
 8008ee4:	4770      	bx	lr
 8008ee6:	4603      	mov	r3, r0
 8008ee8:	e7f1      	b.n	8008ece <memmove+0xa2>
 8008eea:	4603      	mov	r3, r0
 8008eec:	e7f1      	b.n	8008ed2 <memmove+0xa6>
 8008eee:	462a      	mov	r2, r5
 8008ef0:	e7ed      	b.n	8008ece <memmove+0xa2>
 8008ef2:	bf00      	nop

08008ef4 <_Balloc>:
 8008ef4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008ef6:	b570      	push	{r4, r5, r6, lr}
 8008ef8:	4605      	mov	r5, r0
 8008efa:	460c      	mov	r4, r1
 8008efc:	b14b      	cbz	r3, 8008f12 <_Balloc+0x1e>
 8008efe:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8008f02:	b180      	cbz	r0, 8008f26 <_Balloc+0x32>
 8008f04:	6802      	ldr	r2, [r0, #0]
 8008f06:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8008f0a:	2300      	movs	r3, #0
 8008f0c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8008f10:	bd70      	pop	{r4, r5, r6, pc}
 8008f12:	2221      	movs	r2, #33	; 0x21
 8008f14:	2104      	movs	r1, #4
 8008f16:	f000 fe0b 	bl	8009b30 <_calloc_r>
 8008f1a:	4603      	mov	r3, r0
 8008f1c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8008f1e:	2800      	cmp	r0, #0
 8008f20:	d1ed      	bne.n	8008efe <_Balloc+0xa>
 8008f22:	2000      	movs	r0, #0
 8008f24:	bd70      	pop	{r4, r5, r6, pc}
 8008f26:	2101      	movs	r1, #1
 8008f28:	fa01 f604 	lsl.w	r6, r1, r4
 8008f2c:	1d72      	adds	r2, r6, #5
 8008f2e:	4628      	mov	r0, r5
 8008f30:	0092      	lsls	r2, r2, #2
 8008f32:	f000 fdfd 	bl	8009b30 <_calloc_r>
 8008f36:	2800      	cmp	r0, #0
 8008f38:	d0f3      	beq.n	8008f22 <_Balloc+0x2e>
 8008f3a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8008f3e:	e7e4      	b.n	8008f0a <_Balloc+0x16>

08008f40 <_Bfree>:
 8008f40:	b131      	cbz	r1, 8008f50 <_Bfree+0x10>
 8008f42:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008f44:	684a      	ldr	r2, [r1, #4]
 8008f46:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8008f4a:	6008      	str	r0, [r1, #0]
 8008f4c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8008f50:	4770      	bx	lr
 8008f52:	bf00      	nop

08008f54 <__multadd>:
 8008f54:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008f56:	690c      	ldr	r4, [r1, #16]
 8008f58:	b083      	sub	sp, #12
 8008f5a:	460d      	mov	r5, r1
 8008f5c:	4606      	mov	r6, r0
 8008f5e:	f101 0c14 	add.w	ip, r1, #20
 8008f62:	2700      	movs	r7, #0
 8008f64:	f8dc 0000 	ldr.w	r0, [ip]
 8008f68:	b281      	uxth	r1, r0
 8008f6a:	fb02 3301 	mla	r3, r2, r1, r3
 8008f6e:	0c01      	lsrs	r1, r0, #16
 8008f70:	0c18      	lsrs	r0, r3, #16
 8008f72:	fb02 0101 	mla	r1, r2, r1, r0
 8008f76:	b29b      	uxth	r3, r3
 8008f78:	3701      	adds	r7, #1
 8008f7a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8008f7e:	42bc      	cmp	r4, r7
 8008f80:	f84c 3b04 	str.w	r3, [ip], #4
 8008f84:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8008f88:	dcec      	bgt.n	8008f64 <__multadd+0x10>
 8008f8a:	b13b      	cbz	r3, 8008f9c <__multadd+0x48>
 8008f8c:	68aa      	ldr	r2, [r5, #8]
 8008f8e:	42a2      	cmp	r2, r4
 8008f90:	dd07      	ble.n	8008fa2 <__multadd+0x4e>
 8008f92:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8008f96:	3401      	adds	r4, #1
 8008f98:	6153      	str	r3, [r2, #20]
 8008f9a:	612c      	str	r4, [r5, #16]
 8008f9c:	4628      	mov	r0, r5
 8008f9e:	b003      	add	sp, #12
 8008fa0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008fa2:	6869      	ldr	r1, [r5, #4]
 8008fa4:	9301      	str	r3, [sp, #4]
 8008fa6:	3101      	adds	r1, #1
 8008fa8:	4630      	mov	r0, r6
 8008faa:	f7ff ffa3 	bl	8008ef4 <_Balloc>
 8008fae:	692a      	ldr	r2, [r5, #16]
 8008fb0:	3202      	adds	r2, #2
 8008fb2:	f105 010c 	add.w	r1, r5, #12
 8008fb6:	4607      	mov	r7, r0
 8008fb8:	0092      	lsls	r2, r2, #2
 8008fba:	300c      	adds	r0, #12
 8008fbc:	f7f7 ff6c 	bl	8000e98 <memcpy>
 8008fc0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8008fc2:	6869      	ldr	r1, [r5, #4]
 8008fc4:	9b01      	ldr	r3, [sp, #4]
 8008fc6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8008fca:	6028      	str	r0, [r5, #0]
 8008fcc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8008fd0:	463d      	mov	r5, r7
 8008fd2:	e7de      	b.n	8008f92 <__multadd+0x3e>

08008fd4 <__hi0bits>:
 8008fd4:	0c02      	lsrs	r2, r0, #16
 8008fd6:	0412      	lsls	r2, r2, #16
 8008fd8:	4603      	mov	r3, r0
 8008fda:	b9c2      	cbnz	r2, 800900e <__hi0bits+0x3a>
 8008fdc:	0403      	lsls	r3, r0, #16
 8008fde:	2010      	movs	r0, #16
 8008fe0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8008fe4:	bf04      	itt	eq
 8008fe6:	021b      	lsleq	r3, r3, #8
 8008fe8:	3008      	addeq	r0, #8
 8008fea:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8008fee:	bf04      	itt	eq
 8008ff0:	011b      	lsleq	r3, r3, #4
 8008ff2:	3004      	addeq	r0, #4
 8008ff4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8008ff8:	bf04      	itt	eq
 8008ffa:	009b      	lsleq	r3, r3, #2
 8008ffc:	3002      	addeq	r0, #2
 8008ffe:	2b00      	cmp	r3, #0
 8009000:	db04      	blt.n	800900c <__hi0bits+0x38>
 8009002:	005b      	lsls	r3, r3, #1
 8009004:	d501      	bpl.n	800900a <__hi0bits+0x36>
 8009006:	3001      	adds	r0, #1
 8009008:	4770      	bx	lr
 800900a:	2020      	movs	r0, #32
 800900c:	4770      	bx	lr
 800900e:	2000      	movs	r0, #0
 8009010:	e7e6      	b.n	8008fe0 <__hi0bits+0xc>
 8009012:	bf00      	nop

08009014 <__lo0bits>:
 8009014:	6803      	ldr	r3, [r0, #0]
 8009016:	f013 0207 	ands.w	r2, r3, #7
 800901a:	4601      	mov	r1, r0
 800901c:	d007      	beq.n	800902e <__lo0bits+0x1a>
 800901e:	07da      	lsls	r2, r3, #31
 8009020:	d41f      	bmi.n	8009062 <__lo0bits+0x4e>
 8009022:	0798      	lsls	r0, r3, #30
 8009024:	d51f      	bpl.n	8009066 <__lo0bits+0x52>
 8009026:	085b      	lsrs	r3, r3, #1
 8009028:	600b      	str	r3, [r1, #0]
 800902a:	2001      	movs	r0, #1
 800902c:	4770      	bx	lr
 800902e:	b298      	uxth	r0, r3
 8009030:	b1a0      	cbz	r0, 800905c <__lo0bits+0x48>
 8009032:	4610      	mov	r0, r2
 8009034:	f013 0fff 	tst.w	r3, #255	; 0xff
 8009038:	bf04      	itt	eq
 800903a:	0a1b      	lsreq	r3, r3, #8
 800903c:	3008      	addeq	r0, #8
 800903e:	071a      	lsls	r2, r3, #28
 8009040:	bf04      	itt	eq
 8009042:	091b      	lsreq	r3, r3, #4
 8009044:	3004      	addeq	r0, #4
 8009046:	079a      	lsls	r2, r3, #30
 8009048:	bf04      	itt	eq
 800904a:	089b      	lsreq	r3, r3, #2
 800904c:	3002      	addeq	r0, #2
 800904e:	07da      	lsls	r2, r3, #31
 8009050:	d402      	bmi.n	8009058 <__lo0bits+0x44>
 8009052:	085b      	lsrs	r3, r3, #1
 8009054:	d00b      	beq.n	800906e <__lo0bits+0x5a>
 8009056:	3001      	adds	r0, #1
 8009058:	600b      	str	r3, [r1, #0]
 800905a:	4770      	bx	lr
 800905c:	0c1b      	lsrs	r3, r3, #16
 800905e:	2010      	movs	r0, #16
 8009060:	e7e8      	b.n	8009034 <__lo0bits+0x20>
 8009062:	2000      	movs	r0, #0
 8009064:	4770      	bx	lr
 8009066:	089b      	lsrs	r3, r3, #2
 8009068:	600b      	str	r3, [r1, #0]
 800906a:	2002      	movs	r0, #2
 800906c:	4770      	bx	lr
 800906e:	2020      	movs	r0, #32
 8009070:	4770      	bx	lr
 8009072:	bf00      	nop

08009074 <__i2b>:
 8009074:	b510      	push	{r4, lr}
 8009076:	460c      	mov	r4, r1
 8009078:	2101      	movs	r1, #1
 800907a:	f7ff ff3b 	bl	8008ef4 <_Balloc>
 800907e:	2201      	movs	r2, #1
 8009080:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8009084:	bd10      	pop	{r4, pc}
 8009086:	bf00      	nop

08009088 <__multiply>:
 8009088:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800908c:	690e      	ldr	r6, [r1, #16]
 800908e:	6914      	ldr	r4, [r2, #16]
 8009090:	42a6      	cmp	r6, r4
 8009092:	b083      	sub	sp, #12
 8009094:	460f      	mov	r7, r1
 8009096:	4615      	mov	r5, r2
 8009098:	da04      	bge.n	80090a4 <__multiply+0x1c>
 800909a:	4632      	mov	r2, r6
 800909c:	462f      	mov	r7, r5
 800909e:	4626      	mov	r6, r4
 80090a0:	460d      	mov	r5, r1
 80090a2:	4614      	mov	r4, r2
 80090a4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80090a8:	eb06 0804 	add.w	r8, r6, r4
 80090ac:	4543      	cmp	r3, r8
 80090ae:	bfb8      	it	lt
 80090b0:	3101      	addlt	r1, #1
 80090b2:	f7ff ff1f 	bl	8008ef4 <_Balloc>
 80090b6:	f100 0914 	add.w	r9, r0, #20
 80090ba:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80090be:	45f1      	cmp	r9, lr
 80090c0:	9000      	str	r0, [sp, #0]
 80090c2:	d205      	bcs.n	80090d0 <__multiply+0x48>
 80090c4:	464b      	mov	r3, r9
 80090c6:	2200      	movs	r2, #0
 80090c8:	f843 2b04 	str.w	r2, [r3], #4
 80090cc:	459e      	cmp	lr, r3
 80090ce:	d8fb      	bhi.n	80090c8 <__multiply+0x40>
 80090d0:	f105 0a14 	add.w	sl, r5, #20
 80090d4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80090d8:	f107 0314 	add.w	r3, r7, #20
 80090dc:	45a2      	cmp	sl, r4
 80090de:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80090e2:	d261      	bcs.n	80091a8 <__multiply+0x120>
 80090e4:	1b64      	subs	r4, r4, r5
 80090e6:	3c15      	subs	r4, #21
 80090e8:	f024 0403 	bic.w	r4, r4, #3
 80090ec:	f8cd e004 	str.w	lr, [sp, #4]
 80090f0:	44a2      	add	sl, r4
 80090f2:	f105 0210 	add.w	r2, r5, #16
 80090f6:	469e      	mov	lr, r3
 80090f8:	e005      	b.n	8009106 <__multiply+0x7e>
 80090fa:	0c2d      	lsrs	r5, r5, #16
 80090fc:	d12b      	bne.n	8009156 <__multiply+0xce>
 80090fe:	4592      	cmp	sl, r2
 8009100:	f109 0904 	add.w	r9, r9, #4
 8009104:	d04e      	beq.n	80091a4 <__multiply+0x11c>
 8009106:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800910a:	fa1f fb85 	uxth.w	fp, r5
 800910e:	f1bb 0f00 	cmp.w	fp, #0
 8009112:	d0f2      	beq.n	80090fa <__multiply+0x72>
 8009114:	4677      	mov	r7, lr
 8009116:	464e      	mov	r6, r9
 8009118:	2000      	movs	r0, #0
 800911a:	e000      	b.n	800911e <__multiply+0x96>
 800911c:	4626      	mov	r6, r4
 800911e:	f857 1b04 	ldr.w	r1, [r7], #4
 8009122:	6834      	ldr	r4, [r6, #0]
 8009124:	b28b      	uxth	r3, r1
 8009126:	b2a5      	uxth	r5, r4
 8009128:	0c09      	lsrs	r1, r1, #16
 800912a:	0c24      	lsrs	r4, r4, #16
 800912c:	fb0b 5303 	mla	r3, fp, r3, r5
 8009130:	4403      	add	r3, r0
 8009132:	fb0b 4001 	mla	r0, fp, r1, r4
 8009136:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800913a:	4634      	mov	r4, r6
 800913c:	b29b      	uxth	r3, r3
 800913e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8009142:	45bc      	cmp	ip, r7
 8009144:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8009148:	f844 3b04 	str.w	r3, [r4], #4
 800914c:	d8e6      	bhi.n	800911c <__multiply+0x94>
 800914e:	6070      	str	r0, [r6, #4]
 8009150:	6815      	ldr	r5, [r2, #0]
 8009152:	0c2d      	lsrs	r5, r5, #16
 8009154:	d0d3      	beq.n	80090fe <__multiply+0x76>
 8009156:	f8d9 3000 	ldr.w	r3, [r9]
 800915a:	4676      	mov	r6, lr
 800915c:	4618      	mov	r0, r3
 800915e:	46cb      	mov	fp, r9
 8009160:	2100      	movs	r1, #0
 8009162:	e000      	b.n	8009166 <__multiply+0xde>
 8009164:	46a3      	mov	fp, r4
 8009166:	8834      	ldrh	r4, [r6, #0]
 8009168:	0c00      	lsrs	r0, r0, #16
 800916a:	fb05 0004 	mla	r0, r5, r4, r0
 800916e:	4401      	add	r1, r0
 8009170:	b29b      	uxth	r3, r3
 8009172:	465c      	mov	r4, fp
 8009174:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8009178:	f844 3b04 	str.w	r3, [r4], #4
 800917c:	f856 3b04 	ldr.w	r3, [r6], #4
 8009180:	f8db 0004 	ldr.w	r0, [fp, #4]
 8009184:	0c1b      	lsrs	r3, r3, #16
 8009186:	b287      	uxth	r7, r0
 8009188:	fb05 7303 	mla	r3, r5, r3, r7
 800918c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8009190:	45b4      	cmp	ip, r6
 8009192:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8009196:	d8e5      	bhi.n	8009164 <__multiply+0xdc>
 8009198:	4592      	cmp	sl, r2
 800919a:	f8cb 3004 	str.w	r3, [fp, #4]
 800919e:	f109 0904 	add.w	r9, r9, #4
 80091a2:	d1b0      	bne.n	8009106 <__multiply+0x7e>
 80091a4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80091a8:	f1b8 0f00 	cmp.w	r8, #0
 80091ac:	dd0b      	ble.n	80091c6 <__multiply+0x13e>
 80091ae:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80091b2:	f1ae 0e04 	sub.w	lr, lr, #4
 80091b6:	b11b      	cbz	r3, 80091c0 <__multiply+0x138>
 80091b8:	e005      	b.n	80091c6 <__multiply+0x13e>
 80091ba:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80091be:	b913      	cbnz	r3, 80091c6 <__multiply+0x13e>
 80091c0:	f1b8 0801 	subs.w	r8, r8, #1
 80091c4:	d1f9      	bne.n	80091ba <__multiply+0x132>
 80091c6:	9800      	ldr	r0, [sp, #0]
 80091c8:	f8c0 8010 	str.w	r8, [r0, #16]
 80091cc:	b003      	add	sp, #12
 80091ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80091d2:	bf00      	nop

080091d4 <__pow5mult>:
 80091d4:	f012 0303 	ands.w	r3, r2, #3
 80091d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80091dc:	4614      	mov	r4, r2
 80091de:	4607      	mov	r7, r0
 80091e0:	d12e      	bne.n	8009240 <__pow5mult+0x6c>
 80091e2:	460d      	mov	r5, r1
 80091e4:	10a4      	asrs	r4, r4, #2
 80091e6:	d01c      	beq.n	8009222 <__pow5mult+0x4e>
 80091e8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80091ea:	b396      	cbz	r6, 8009252 <__pow5mult+0x7e>
 80091ec:	07e3      	lsls	r3, r4, #31
 80091ee:	f04f 0800 	mov.w	r8, #0
 80091f2:	d406      	bmi.n	8009202 <__pow5mult+0x2e>
 80091f4:	1064      	asrs	r4, r4, #1
 80091f6:	d014      	beq.n	8009222 <__pow5mult+0x4e>
 80091f8:	6830      	ldr	r0, [r6, #0]
 80091fa:	b1a8      	cbz	r0, 8009228 <__pow5mult+0x54>
 80091fc:	4606      	mov	r6, r0
 80091fe:	07e3      	lsls	r3, r4, #31
 8009200:	d5f8      	bpl.n	80091f4 <__pow5mult+0x20>
 8009202:	4632      	mov	r2, r6
 8009204:	4629      	mov	r1, r5
 8009206:	4638      	mov	r0, r7
 8009208:	f7ff ff3e 	bl	8009088 <__multiply>
 800920c:	b1b5      	cbz	r5, 800923c <__pow5mult+0x68>
 800920e:	686a      	ldr	r2, [r5, #4]
 8009210:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009212:	1064      	asrs	r4, r4, #1
 8009214:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009218:	6029      	str	r1, [r5, #0]
 800921a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800921e:	4605      	mov	r5, r0
 8009220:	d1ea      	bne.n	80091f8 <__pow5mult+0x24>
 8009222:	4628      	mov	r0, r5
 8009224:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009228:	4632      	mov	r2, r6
 800922a:	4631      	mov	r1, r6
 800922c:	4638      	mov	r0, r7
 800922e:	f7ff ff2b 	bl	8009088 <__multiply>
 8009232:	6030      	str	r0, [r6, #0]
 8009234:	f8c0 8000 	str.w	r8, [r0]
 8009238:	4606      	mov	r6, r0
 800923a:	e7e0      	b.n	80091fe <__pow5mult+0x2a>
 800923c:	4605      	mov	r5, r0
 800923e:	e7d9      	b.n	80091f4 <__pow5mult+0x20>
 8009240:	3b01      	subs	r3, #1
 8009242:	4a0b      	ldr	r2, [pc, #44]	; (8009270 <__pow5mult+0x9c>)
 8009244:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8009248:	2300      	movs	r3, #0
 800924a:	f7ff fe83 	bl	8008f54 <__multadd>
 800924e:	4605      	mov	r5, r0
 8009250:	e7c8      	b.n	80091e4 <__pow5mult+0x10>
 8009252:	2101      	movs	r1, #1
 8009254:	4638      	mov	r0, r7
 8009256:	f7ff fe4d 	bl	8008ef4 <_Balloc>
 800925a:	f240 2371 	movw	r3, #625	; 0x271
 800925e:	6143      	str	r3, [r0, #20]
 8009260:	2201      	movs	r2, #1
 8009262:	2300      	movs	r3, #0
 8009264:	6102      	str	r2, [r0, #16]
 8009266:	4606      	mov	r6, r0
 8009268:	64b8      	str	r0, [r7, #72]	; 0x48
 800926a:	6003      	str	r3, [r0, #0]
 800926c:	e7be      	b.n	80091ec <__pow5mult+0x18>
 800926e:	bf00      	nop
 8009270:	0800a4e8 	.word	0x0800a4e8

08009274 <__lshift>:
 8009274:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009278:	4691      	mov	r9, r2
 800927a:	690a      	ldr	r2, [r1, #16]
 800927c:	460e      	mov	r6, r1
 800927e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8009282:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8009286:	eb04 0802 	add.w	r8, r4, r2
 800928a:	f108 0501 	add.w	r5, r8, #1
 800928e:	429d      	cmp	r5, r3
 8009290:	4607      	mov	r7, r0
 8009292:	dd04      	ble.n	800929e <__lshift+0x2a>
 8009294:	005b      	lsls	r3, r3, #1
 8009296:	429d      	cmp	r5, r3
 8009298:	f101 0101 	add.w	r1, r1, #1
 800929c:	dcfa      	bgt.n	8009294 <__lshift+0x20>
 800929e:	4638      	mov	r0, r7
 80092a0:	f7ff fe28 	bl	8008ef4 <_Balloc>
 80092a4:	2c00      	cmp	r4, #0
 80092a6:	f100 0314 	add.w	r3, r0, #20
 80092aa:	dd37      	ble.n	800931c <__lshift+0xa8>
 80092ac:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80092b0:	2200      	movs	r2, #0
 80092b2:	f843 2b04 	str.w	r2, [r3], #4
 80092b6:	428b      	cmp	r3, r1
 80092b8:	d1fb      	bne.n	80092b2 <__lshift+0x3e>
 80092ba:	6934      	ldr	r4, [r6, #16]
 80092bc:	f106 0314 	add.w	r3, r6, #20
 80092c0:	f019 091f 	ands.w	r9, r9, #31
 80092c4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80092c8:	d020      	beq.n	800930c <__lshift+0x98>
 80092ca:	f1c9 0e20 	rsb	lr, r9, #32
 80092ce:	2200      	movs	r2, #0
 80092d0:	e000      	b.n	80092d4 <__lshift+0x60>
 80092d2:	4651      	mov	r1, sl
 80092d4:	681c      	ldr	r4, [r3, #0]
 80092d6:	468a      	mov	sl, r1
 80092d8:	fa04 f409 	lsl.w	r4, r4, r9
 80092dc:	4314      	orrs	r4, r2
 80092de:	f84a 4b04 	str.w	r4, [sl], #4
 80092e2:	f853 2b04 	ldr.w	r2, [r3], #4
 80092e6:	4563      	cmp	r3, ip
 80092e8:	fa22 f20e 	lsr.w	r2, r2, lr
 80092ec:	d3f1      	bcc.n	80092d2 <__lshift+0x5e>
 80092ee:	604a      	str	r2, [r1, #4]
 80092f0:	b10a      	cbz	r2, 80092f6 <__lshift+0x82>
 80092f2:	f108 0502 	add.w	r5, r8, #2
 80092f6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80092f8:	6872      	ldr	r2, [r6, #4]
 80092fa:	3d01      	subs	r5, #1
 80092fc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009300:	6105      	str	r5, [r0, #16]
 8009302:	6031      	str	r1, [r6, #0]
 8009304:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8009308:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800930c:	3904      	subs	r1, #4
 800930e:	f853 2b04 	ldr.w	r2, [r3], #4
 8009312:	f841 2f04 	str.w	r2, [r1, #4]!
 8009316:	459c      	cmp	ip, r3
 8009318:	d8f9      	bhi.n	800930e <__lshift+0x9a>
 800931a:	e7ec      	b.n	80092f6 <__lshift+0x82>
 800931c:	4619      	mov	r1, r3
 800931e:	e7cc      	b.n	80092ba <__lshift+0x46>

08009320 <__mcmp>:
 8009320:	b430      	push	{r4, r5}
 8009322:	690b      	ldr	r3, [r1, #16]
 8009324:	4605      	mov	r5, r0
 8009326:	6900      	ldr	r0, [r0, #16]
 8009328:	1ac0      	subs	r0, r0, r3
 800932a:	d10f      	bne.n	800934c <__mcmp+0x2c>
 800932c:	009b      	lsls	r3, r3, #2
 800932e:	3514      	adds	r5, #20
 8009330:	3114      	adds	r1, #20
 8009332:	4419      	add	r1, r3
 8009334:	442b      	add	r3, r5
 8009336:	e001      	b.n	800933c <__mcmp+0x1c>
 8009338:	429d      	cmp	r5, r3
 800933a:	d207      	bcs.n	800934c <__mcmp+0x2c>
 800933c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8009340:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8009344:	4294      	cmp	r4, r2
 8009346:	d0f7      	beq.n	8009338 <__mcmp+0x18>
 8009348:	d302      	bcc.n	8009350 <__mcmp+0x30>
 800934a:	2001      	movs	r0, #1
 800934c:	bc30      	pop	{r4, r5}
 800934e:	4770      	bx	lr
 8009350:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009354:	e7fa      	b.n	800934c <__mcmp+0x2c>
 8009356:	bf00      	nop

08009358 <__mdiff>:
 8009358:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800935c:	6913      	ldr	r3, [r2, #16]
 800935e:	690d      	ldr	r5, [r1, #16]
 8009360:	1aed      	subs	r5, r5, r3
 8009362:	2d00      	cmp	r5, #0
 8009364:	460e      	mov	r6, r1
 8009366:	4690      	mov	r8, r2
 8009368:	f101 0414 	add.w	r4, r1, #20
 800936c:	f102 0714 	add.w	r7, r2, #20
 8009370:	d114      	bne.n	800939c <__mdiff+0x44>
 8009372:	009b      	lsls	r3, r3, #2
 8009374:	18e2      	adds	r2, r4, r3
 8009376:	443b      	add	r3, r7
 8009378:	e001      	b.n	800937e <__mdiff+0x26>
 800937a:	42a2      	cmp	r2, r4
 800937c:	d959      	bls.n	8009432 <__mdiff+0xda>
 800937e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8009382:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8009386:	458c      	cmp	ip, r1
 8009388:	d0f7      	beq.n	800937a <__mdiff+0x22>
 800938a:	d209      	bcs.n	80093a0 <__mdiff+0x48>
 800938c:	4622      	mov	r2, r4
 800938e:	4633      	mov	r3, r6
 8009390:	463c      	mov	r4, r7
 8009392:	4646      	mov	r6, r8
 8009394:	4617      	mov	r7, r2
 8009396:	4698      	mov	r8, r3
 8009398:	2501      	movs	r5, #1
 800939a:	e001      	b.n	80093a0 <__mdiff+0x48>
 800939c:	dbf6      	blt.n	800938c <__mdiff+0x34>
 800939e:	2500      	movs	r5, #0
 80093a0:	6871      	ldr	r1, [r6, #4]
 80093a2:	f7ff fda7 	bl	8008ef4 <_Balloc>
 80093a6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80093aa:	6936      	ldr	r6, [r6, #16]
 80093ac:	60c5      	str	r5, [r0, #12]
 80093ae:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80093b2:	46bc      	mov	ip, r7
 80093b4:	f100 0514 	add.w	r5, r0, #20
 80093b8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80093bc:	2300      	movs	r3, #0
 80093be:	f85c 1b04 	ldr.w	r1, [ip], #4
 80093c2:	f854 8b04 	ldr.w	r8, [r4], #4
 80093c6:	b28a      	uxth	r2, r1
 80093c8:	fa13 f388 	uxtah	r3, r3, r8
 80093cc:	0c09      	lsrs	r1, r1, #16
 80093ce:	1a9a      	subs	r2, r3, r2
 80093d0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80093d4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80093d8:	b292      	uxth	r2, r2
 80093da:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80093de:	45e6      	cmp	lr, ip
 80093e0:	f845 2b04 	str.w	r2, [r5], #4
 80093e4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80093e8:	d8e9      	bhi.n	80093be <__mdiff+0x66>
 80093ea:	42a7      	cmp	r7, r4
 80093ec:	d917      	bls.n	800941e <__mdiff+0xc6>
 80093ee:	46ae      	mov	lr, r5
 80093f0:	46a4      	mov	ip, r4
 80093f2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80093f6:	fa13 f382 	uxtah	r3, r3, r2
 80093fa:	1419      	asrs	r1, r3, #16
 80093fc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8009400:	b29b      	uxth	r3, r3
 8009402:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8009406:	4567      	cmp	r7, ip
 8009408:	f84e 2b04 	str.w	r2, [lr], #4
 800940c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8009410:	d8ef      	bhi.n	80093f2 <__mdiff+0x9a>
 8009412:	43e4      	mvns	r4, r4
 8009414:	4427      	add	r7, r4
 8009416:	f027 0703 	bic.w	r7, r7, #3
 800941a:	3704      	adds	r7, #4
 800941c:	443d      	add	r5, r7
 800941e:	3d04      	subs	r5, #4
 8009420:	b922      	cbnz	r2, 800942c <__mdiff+0xd4>
 8009422:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8009426:	3e01      	subs	r6, #1
 8009428:	2b00      	cmp	r3, #0
 800942a:	d0fa      	beq.n	8009422 <__mdiff+0xca>
 800942c:	6106      	str	r6, [r0, #16]
 800942e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009432:	2100      	movs	r1, #0
 8009434:	f7ff fd5e 	bl	8008ef4 <_Balloc>
 8009438:	2201      	movs	r2, #1
 800943a:	2300      	movs	r3, #0
 800943c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8009440:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009444 <__d2b>:
 8009444:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009448:	460f      	mov	r7, r1
 800944a:	b083      	sub	sp, #12
 800944c:	2101      	movs	r1, #1
 800944e:	ec55 4b10 	vmov	r4, r5, d0
 8009452:	4616      	mov	r6, r2
 8009454:	f7ff fd4e 	bl	8008ef4 <_Balloc>
 8009458:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800945c:	4681      	mov	r9, r0
 800945e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8009462:	f1b8 0f00 	cmp.w	r8, #0
 8009466:	d001      	beq.n	800946c <__d2b+0x28>
 8009468:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800946c:	2c00      	cmp	r4, #0
 800946e:	9301      	str	r3, [sp, #4]
 8009470:	d024      	beq.n	80094bc <__d2b+0x78>
 8009472:	a802      	add	r0, sp, #8
 8009474:	f840 4d08 	str.w	r4, [r0, #-8]!
 8009478:	f7ff fdcc 	bl	8009014 <__lo0bits>
 800947c:	2800      	cmp	r0, #0
 800947e:	d136      	bne.n	80094ee <__d2b+0xaa>
 8009480:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009484:	f8c9 2014 	str.w	r2, [r9, #20]
 8009488:	2b00      	cmp	r3, #0
 800948a:	bf0c      	ite	eq
 800948c:	2101      	moveq	r1, #1
 800948e:	2102      	movne	r1, #2
 8009490:	f8c9 3018 	str.w	r3, [r9, #24]
 8009494:	f8c9 1010 	str.w	r1, [r9, #16]
 8009498:	f1b8 0f00 	cmp.w	r8, #0
 800949c:	d11b      	bne.n	80094d6 <__d2b+0x92>
 800949e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80094a2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80094a6:	6038      	str	r0, [r7, #0]
 80094a8:	6918      	ldr	r0, [r3, #16]
 80094aa:	f7ff fd93 	bl	8008fd4 <__hi0bits>
 80094ae:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80094b2:	6030      	str	r0, [r6, #0]
 80094b4:	4648      	mov	r0, r9
 80094b6:	b003      	add	sp, #12
 80094b8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80094bc:	a801      	add	r0, sp, #4
 80094be:	f7ff fda9 	bl	8009014 <__lo0bits>
 80094c2:	9b01      	ldr	r3, [sp, #4]
 80094c4:	f8c9 3014 	str.w	r3, [r9, #20]
 80094c8:	2101      	movs	r1, #1
 80094ca:	3020      	adds	r0, #32
 80094cc:	f8c9 1010 	str.w	r1, [r9, #16]
 80094d0:	f1b8 0f00 	cmp.w	r8, #0
 80094d4:	d0e3      	beq.n	800949e <__d2b+0x5a>
 80094d6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80094da:	eb08 0300 	add.w	r3, r8, r0
 80094de:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80094e2:	603b      	str	r3, [r7, #0]
 80094e4:	6030      	str	r0, [r6, #0]
 80094e6:	4648      	mov	r0, r9
 80094e8:	b003      	add	sp, #12
 80094ea:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80094ee:	e9dd 1300 	ldrd	r1, r3, [sp]
 80094f2:	f1c0 0220 	rsb	r2, r0, #32
 80094f6:	fa03 f202 	lsl.w	r2, r3, r2
 80094fa:	430a      	orrs	r2, r1
 80094fc:	40c3      	lsrs	r3, r0
 80094fe:	9301      	str	r3, [sp, #4]
 8009500:	f8c9 2014 	str.w	r2, [r9, #20]
 8009504:	e7c0      	b.n	8009488 <__d2b+0x44>
 8009506:	bf00      	nop

08009508 <_realloc_r>:
 8009508:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800950c:	4692      	mov	sl, r2
 800950e:	b083      	sub	sp, #12
 8009510:	2900      	cmp	r1, #0
 8009512:	f000 80a1 	beq.w	8009658 <_realloc_r+0x150>
 8009516:	460d      	mov	r5, r1
 8009518:	4680      	mov	r8, r0
 800951a:	f10a 040b 	add.w	r4, sl, #11
 800951e:	f7fc f91d 	bl	800575c <__malloc_lock>
 8009522:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8009526:	2c16      	cmp	r4, #22
 8009528:	f022 0603 	bic.w	r6, r2, #3
 800952c:	f1a5 0708 	sub.w	r7, r5, #8
 8009530:	d83e      	bhi.n	80095b0 <_realloc_r+0xa8>
 8009532:	2410      	movs	r4, #16
 8009534:	4621      	mov	r1, r4
 8009536:	45a2      	cmp	sl, r4
 8009538:	d83f      	bhi.n	80095ba <_realloc_r+0xb2>
 800953a:	428e      	cmp	r6, r1
 800953c:	eb07 0906 	add.w	r9, r7, r6
 8009540:	da74      	bge.n	800962c <_realloc_r+0x124>
 8009542:	4bc7      	ldr	r3, [pc, #796]	; (8009860 <_realloc_r+0x358>)
 8009544:	6898      	ldr	r0, [r3, #8]
 8009546:	4548      	cmp	r0, r9
 8009548:	f000 80aa 	beq.w	80096a0 <_realloc_r+0x198>
 800954c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8009550:	f020 0301 	bic.w	r3, r0, #1
 8009554:	444b      	add	r3, r9
 8009556:	685b      	ldr	r3, [r3, #4]
 8009558:	07db      	lsls	r3, r3, #31
 800955a:	f140 8083 	bpl.w	8009664 <_realloc_r+0x15c>
 800955e:	07d2      	lsls	r2, r2, #31
 8009560:	d534      	bpl.n	80095cc <_realloc_r+0xc4>
 8009562:	4651      	mov	r1, sl
 8009564:	4640      	mov	r0, r8
 8009566:	f7fb fe0b 	bl	8005180 <_malloc_r>
 800956a:	4682      	mov	sl, r0
 800956c:	b1e0      	cbz	r0, 80095a8 <_realloc_r+0xa0>
 800956e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009572:	f023 0301 	bic.w	r3, r3, #1
 8009576:	443b      	add	r3, r7
 8009578:	f1a0 0208 	sub.w	r2, r0, #8
 800957c:	4293      	cmp	r3, r2
 800957e:	f000 80f9 	beq.w	8009774 <_realloc_r+0x26c>
 8009582:	1f32      	subs	r2, r6, #4
 8009584:	2a24      	cmp	r2, #36	; 0x24
 8009586:	f200 8107 	bhi.w	8009798 <_realloc_r+0x290>
 800958a:	2a13      	cmp	r2, #19
 800958c:	6829      	ldr	r1, [r5, #0]
 800958e:	f200 80e6 	bhi.w	800975e <_realloc_r+0x256>
 8009592:	4603      	mov	r3, r0
 8009594:	462a      	mov	r2, r5
 8009596:	6019      	str	r1, [r3, #0]
 8009598:	6851      	ldr	r1, [r2, #4]
 800959a:	6059      	str	r1, [r3, #4]
 800959c:	6892      	ldr	r2, [r2, #8]
 800959e:	609a      	str	r2, [r3, #8]
 80095a0:	4629      	mov	r1, r5
 80095a2:	4640      	mov	r0, r8
 80095a4:	f7ff f918 	bl	80087d8 <_free_r>
 80095a8:	4640      	mov	r0, r8
 80095aa:	f7fc f8dd 	bl	8005768 <__malloc_unlock>
 80095ae:	e04f      	b.n	8009650 <_realloc_r+0x148>
 80095b0:	f024 0407 	bic.w	r4, r4, #7
 80095b4:	2c00      	cmp	r4, #0
 80095b6:	4621      	mov	r1, r4
 80095b8:	dabd      	bge.n	8009536 <_realloc_r+0x2e>
 80095ba:	f04f 0a00 	mov.w	sl, #0
 80095be:	230c      	movs	r3, #12
 80095c0:	4650      	mov	r0, sl
 80095c2:	f8c8 3000 	str.w	r3, [r8]
 80095c6:	b003      	add	sp, #12
 80095c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80095cc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80095d0:	eba7 0b03 	sub.w	fp, r7, r3
 80095d4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80095d8:	f022 0203 	bic.w	r2, r2, #3
 80095dc:	18b3      	adds	r3, r6, r2
 80095de:	428b      	cmp	r3, r1
 80095e0:	dbbf      	blt.n	8009562 <_realloc_r+0x5a>
 80095e2:	46da      	mov	sl, fp
 80095e4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80095e8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80095ec:	1f32      	subs	r2, r6, #4
 80095ee:	2a24      	cmp	r2, #36	; 0x24
 80095f0:	60c1      	str	r1, [r0, #12]
 80095f2:	eb0b 0903 	add.w	r9, fp, r3
 80095f6:	6088      	str	r0, [r1, #8]
 80095f8:	f200 80c6 	bhi.w	8009788 <_realloc_r+0x280>
 80095fc:	2a13      	cmp	r2, #19
 80095fe:	6829      	ldr	r1, [r5, #0]
 8009600:	f240 80c0 	bls.w	8009784 <_realloc_r+0x27c>
 8009604:	f8cb 1008 	str.w	r1, [fp, #8]
 8009608:	6869      	ldr	r1, [r5, #4]
 800960a:	f8cb 100c 	str.w	r1, [fp, #12]
 800960e:	2a1b      	cmp	r2, #27
 8009610:	68a9      	ldr	r1, [r5, #8]
 8009612:	f200 80d8 	bhi.w	80097c6 <_realloc_r+0x2be>
 8009616:	f10b 0210 	add.w	r2, fp, #16
 800961a:	3508      	adds	r5, #8
 800961c:	6011      	str	r1, [r2, #0]
 800961e:	6869      	ldr	r1, [r5, #4]
 8009620:	6051      	str	r1, [r2, #4]
 8009622:	68a9      	ldr	r1, [r5, #8]
 8009624:	6091      	str	r1, [r2, #8]
 8009626:	461e      	mov	r6, r3
 8009628:	465f      	mov	r7, fp
 800962a:	4655      	mov	r5, sl
 800962c:	687b      	ldr	r3, [r7, #4]
 800962e:	1b32      	subs	r2, r6, r4
 8009630:	2a0f      	cmp	r2, #15
 8009632:	f003 0301 	and.w	r3, r3, #1
 8009636:	d822      	bhi.n	800967e <_realloc_r+0x176>
 8009638:	4333      	orrs	r3, r6
 800963a:	607b      	str	r3, [r7, #4]
 800963c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009640:	f043 0301 	orr.w	r3, r3, #1
 8009644:	f8c9 3004 	str.w	r3, [r9, #4]
 8009648:	4640      	mov	r0, r8
 800964a:	f7fc f88d 	bl	8005768 <__malloc_unlock>
 800964e:	46aa      	mov	sl, r5
 8009650:	4650      	mov	r0, sl
 8009652:	b003      	add	sp, #12
 8009654:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009658:	4611      	mov	r1, r2
 800965a:	b003      	add	sp, #12
 800965c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009660:	f7fb bd8e 	b.w	8005180 <_malloc_r>
 8009664:	f020 0003 	bic.w	r0, r0, #3
 8009668:	1833      	adds	r3, r6, r0
 800966a:	428b      	cmp	r3, r1
 800966c:	db61      	blt.n	8009732 <_realloc_r+0x22a>
 800966e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009672:	461e      	mov	r6, r3
 8009674:	60ca      	str	r2, [r1, #12]
 8009676:	eb07 0903 	add.w	r9, r7, r3
 800967a:	6091      	str	r1, [r2, #8]
 800967c:	e7d6      	b.n	800962c <_realloc_r+0x124>
 800967e:	1939      	adds	r1, r7, r4
 8009680:	4323      	orrs	r3, r4
 8009682:	f042 0201 	orr.w	r2, r2, #1
 8009686:	607b      	str	r3, [r7, #4]
 8009688:	604a      	str	r2, [r1, #4]
 800968a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800968e:	f043 0301 	orr.w	r3, r3, #1
 8009692:	3108      	adds	r1, #8
 8009694:	f8c9 3004 	str.w	r3, [r9, #4]
 8009698:	4640      	mov	r0, r8
 800969a:	f7ff f89d 	bl	80087d8 <_free_r>
 800969e:	e7d3      	b.n	8009648 <_realloc_r+0x140>
 80096a0:	6840      	ldr	r0, [r0, #4]
 80096a2:	f020 0903 	bic.w	r9, r0, #3
 80096a6:	44b1      	add	r9, r6
 80096a8:	f104 0010 	add.w	r0, r4, #16
 80096ac:	4581      	cmp	r9, r0
 80096ae:	da77      	bge.n	80097a0 <_realloc_r+0x298>
 80096b0:	07d2      	lsls	r2, r2, #31
 80096b2:	f53f af56 	bmi.w	8009562 <_realloc_r+0x5a>
 80096b6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80096ba:	eba7 0b02 	sub.w	fp, r7, r2
 80096be:	f8db 2004 	ldr.w	r2, [fp, #4]
 80096c2:	f022 0203 	bic.w	r2, r2, #3
 80096c6:	4491      	add	r9, r2
 80096c8:	4548      	cmp	r0, r9
 80096ca:	dc87      	bgt.n	80095dc <_realloc_r+0xd4>
 80096cc:	46da      	mov	sl, fp
 80096ce:	f8db 100c 	ldr.w	r1, [fp, #12]
 80096d2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80096d6:	1f32      	subs	r2, r6, #4
 80096d8:	2a24      	cmp	r2, #36	; 0x24
 80096da:	60c1      	str	r1, [r0, #12]
 80096dc:	6088      	str	r0, [r1, #8]
 80096de:	f200 80a1 	bhi.w	8009824 <_realloc_r+0x31c>
 80096e2:	2a13      	cmp	r2, #19
 80096e4:	6829      	ldr	r1, [r5, #0]
 80096e6:	f240 809b 	bls.w	8009820 <_realloc_r+0x318>
 80096ea:	f8cb 1008 	str.w	r1, [fp, #8]
 80096ee:	6869      	ldr	r1, [r5, #4]
 80096f0:	f8cb 100c 	str.w	r1, [fp, #12]
 80096f4:	2a1b      	cmp	r2, #27
 80096f6:	68a9      	ldr	r1, [r5, #8]
 80096f8:	f200 809b 	bhi.w	8009832 <_realloc_r+0x32a>
 80096fc:	f10b 0210 	add.w	r2, fp, #16
 8009700:	3508      	adds	r5, #8
 8009702:	6011      	str	r1, [r2, #0]
 8009704:	6869      	ldr	r1, [r5, #4]
 8009706:	6051      	str	r1, [r2, #4]
 8009708:	68a9      	ldr	r1, [r5, #8]
 800970a:	6091      	str	r1, [r2, #8]
 800970c:	eb0b 0104 	add.w	r1, fp, r4
 8009710:	eba9 0204 	sub.w	r2, r9, r4
 8009714:	f042 0201 	orr.w	r2, r2, #1
 8009718:	6099      	str	r1, [r3, #8]
 800971a:	604a      	str	r2, [r1, #4]
 800971c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8009720:	f003 0301 	and.w	r3, r3, #1
 8009724:	431c      	orrs	r4, r3
 8009726:	4640      	mov	r0, r8
 8009728:	f8cb 4004 	str.w	r4, [fp, #4]
 800972c:	f7fc f81c 	bl	8005768 <__malloc_unlock>
 8009730:	e78e      	b.n	8009650 <_realloc_r+0x148>
 8009732:	07d3      	lsls	r3, r2, #31
 8009734:	f53f af15 	bmi.w	8009562 <_realloc_r+0x5a>
 8009738:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800973c:	eba7 0b03 	sub.w	fp, r7, r3
 8009740:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009744:	f022 0203 	bic.w	r2, r2, #3
 8009748:	4410      	add	r0, r2
 800974a:	1983      	adds	r3, r0, r6
 800974c:	428b      	cmp	r3, r1
 800974e:	f6ff af45 	blt.w	80095dc <_realloc_r+0xd4>
 8009752:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009756:	46da      	mov	sl, fp
 8009758:	60ca      	str	r2, [r1, #12]
 800975a:	6091      	str	r1, [r2, #8]
 800975c:	e742      	b.n	80095e4 <_realloc_r+0xdc>
 800975e:	6001      	str	r1, [r0, #0]
 8009760:	686b      	ldr	r3, [r5, #4]
 8009762:	6043      	str	r3, [r0, #4]
 8009764:	2a1b      	cmp	r2, #27
 8009766:	d83a      	bhi.n	80097de <_realloc_r+0x2d6>
 8009768:	f105 0208 	add.w	r2, r5, #8
 800976c:	f100 0308 	add.w	r3, r0, #8
 8009770:	68a9      	ldr	r1, [r5, #8]
 8009772:	e710      	b.n	8009596 <_realloc_r+0x8e>
 8009774:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009778:	f023 0303 	bic.w	r3, r3, #3
 800977c:	441e      	add	r6, r3
 800977e:	eb07 0906 	add.w	r9, r7, r6
 8009782:	e753      	b.n	800962c <_realloc_r+0x124>
 8009784:	4652      	mov	r2, sl
 8009786:	e749      	b.n	800961c <_realloc_r+0x114>
 8009788:	4629      	mov	r1, r5
 800978a:	4650      	mov	r0, sl
 800978c:	461e      	mov	r6, r3
 800978e:	465f      	mov	r7, fp
 8009790:	f7ff fb4c 	bl	8008e2c <memmove>
 8009794:	4655      	mov	r5, sl
 8009796:	e749      	b.n	800962c <_realloc_r+0x124>
 8009798:	4629      	mov	r1, r5
 800979a:	f7ff fb47 	bl	8008e2c <memmove>
 800979e:	e6ff      	b.n	80095a0 <_realloc_r+0x98>
 80097a0:	4427      	add	r7, r4
 80097a2:	eba9 0904 	sub.w	r9, r9, r4
 80097a6:	f049 0201 	orr.w	r2, r9, #1
 80097aa:	609f      	str	r7, [r3, #8]
 80097ac:	607a      	str	r2, [r7, #4]
 80097ae:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80097b2:	f003 0301 	and.w	r3, r3, #1
 80097b6:	431c      	orrs	r4, r3
 80097b8:	4640      	mov	r0, r8
 80097ba:	f845 4c04 	str.w	r4, [r5, #-4]
 80097be:	f7fb ffd3 	bl	8005768 <__malloc_unlock>
 80097c2:	46aa      	mov	sl, r5
 80097c4:	e744      	b.n	8009650 <_realloc_r+0x148>
 80097c6:	f8cb 1010 	str.w	r1, [fp, #16]
 80097ca:	68e9      	ldr	r1, [r5, #12]
 80097cc:	f8cb 1014 	str.w	r1, [fp, #20]
 80097d0:	2a24      	cmp	r2, #36	; 0x24
 80097d2:	d010      	beq.n	80097f6 <_realloc_r+0x2ee>
 80097d4:	6929      	ldr	r1, [r5, #16]
 80097d6:	f10b 0218 	add.w	r2, fp, #24
 80097da:	3510      	adds	r5, #16
 80097dc:	e71e      	b.n	800961c <_realloc_r+0x114>
 80097de:	68ab      	ldr	r3, [r5, #8]
 80097e0:	6083      	str	r3, [r0, #8]
 80097e2:	68eb      	ldr	r3, [r5, #12]
 80097e4:	60c3      	str	r3, [r0, #12]
 80097e6:	2a24      	cmp	r2, #36	; 0x24
 80097e8:	d010      	beq.n	800980c <_realloc_r+0x304>
 80097ea:	f105 0210 	add.w	r2, r5, #16
 80097ee:	f100 0310 	add.w	r3, r0, #16
 80097f2:	6929      	ldr	r1, [r5, #16]
 80097f4:	e6cf      	b.n	8009596 <_realloc_r+0x8e>
 80097f6:	692a      	ldr	r2, [r5, #16]
 80097f8:	f8cb 2018 	str.w	r2, [fp, #24]
 80097fc:	696a      	ldr	r2, [r5, #20]
 80097fe:	f8cb 201c 	str.w	r2, [fp, #28]
 8009802:	69a9      	ldr	r1, [r5, #24]
 8009804:	f10b 0220 	add.w	r2, fp, #32
 8009808:	3518      	adds	r5, #24
 800980a:	e707      	b.n	800961c <_realloc_r+0x114>
 800980c:	692b      	ldr	r3, [r5, #16]
 800980e:	6103      	str	r3, [r0, #16]
 8009810:	696b      	ldr	r3, [r5, #20]
 8009812:	6143      	str	r3, [r0, #20]
 8009814:	69a9      	ldr	r1, [r5, #24]
 8009816:	f105 0218 	add.w	r2, r5, #24
 800981a:	f100 0318 	add.w	r3, r0, #24
 800981e:	e6ba      	b.n	8009596 <_realloc_r+0x8e>
 8009820:	4652      	mov	r2, sl
 8009822:	e76e      	b.n	8009702 <_realloc_r+0x1fa>
 8009824:	4629      	mov	r1, r5
 8009826:	4650      	mov	r0, sl
 8009828:	9301      	str	r3, [sp, #4]
 800982a:	f7ff faff 	bl	8008e2c <memmove>
 800982e:	9b01      	ldr	r3, [sp, #4]
 8009830:	e76c      	b.n	800970c <_realloc_r+0x204>
 8009832:	f8cb 1010 	str.w	r1, [fp, #16]
 8009836:	68e9      	ldr	r1, [r5, #12]
 8009838:	f8cb 1014 	str.w	r1, [fp, #20]
 800983c:	2a24      	cmp	r2, #36	; 0x24
 800983e:	d004      	beq.n	800984a <_realloc_r+0x342>
 8009840:	6929      	ldr	r1, [r5, #16]
 8009842:	f10b 0218 	add.w	r2, fp, #24
 8009846:	3510      	adds	r5, #16
 8009848:	e75b      	b.n	8009702 <_realloc_r+0x1fa>
 800984a:	692a      	ldr	r2, [r5, #16]
 800984c:	f8cb 2018 	str.w	r2, [fp, #24]
 8009850:	696a      	ldr	r2, [r5, #20]
 8009852:	f8cb 201c 	str.w	r2, [fp, #28]
 8009856:	69a9      	ldr	r1, [r5, #24]
 8009858:	f10b 0220 	add.w	r2, fp, #32
 800985c:	3518      	adds	r5, #24
 800985e:	e750      	b.n	8009702 <_realloc_r+0x1fa>
 8009860:	20000460 	.word	0x20000460

08009864 <frexp>:
 8009864:	ec53 2b10 	vmov	r2, r3, d0
 8009868:	b570      	push	{r4, r5, r6, lr}
 800986a:	4e16      	ldr	r6, [pc, #88]	; (80098c4 <frexp+0x60>)
 800986c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8009870:	2500      	movs	r5, #0
 8009872:	42b1      	cmp	r1, r6
 8009874:	4604      	mov	r4, r0
 8009876:	6005      	str	r5, [r0, #0]
 8009878:	dc21      	bgt.n	80098be <frexp+0x5a>
 800987a:	ee10 6a10 	vmov	r6, s0
 800987e:	430e      	orrs	r6, r1
 8009880:	d01d      	beq.n	80098be <frexp+0x5a>
 8009882:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8009886:	4618      	mov	r0, r3
 8009888:	da0c      	bge.n	80098a4 <frexp+0x40>
 800988a:	4619      	mov	r1, r3
 800988c:	2200      	movs	r2, #0
 800988e:	ee10 0a10 	vmov	r0, s0
 8009892:	4b0d      	ldr	r3, [pc, #52]	; (80098c8 <frexp+0x64>)
 8009894:	f7f6 fe70 	bl	8000578 <__aeabi_dmul>
 8009898:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800989c:	4602      	mov	r2, r0
 800989e:	4608      	mov	r0, r1
 80098a0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80098a4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80098a8:	1509      	asrs	r1, r1, #20
 80098aa:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80098ae:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80098b2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80098b6:	4429      	add	r1, r5
 80098b8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80098bc:	6021      	str	r1, [r4, #0]
 80098be:	ec43 2b10 	vmov	d0, r2, r3
 80098c2:	bd70      	pop	{r4, r5, r6, pc}
 80098c4:	7fefffff 	.word	0x7fefffff
 80098c8:	43500000 	.word	0x43500000

080098cc <__sread>:
 80098cc:	b510      	push	{r4, lr}
 80098ce:	460c      	mov	r4, r1
 80098d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80098d4:	f000 fabc 	bl	8009e50 <_read_r>
 80098d8:	2800      	cmp	r0, #0
 80098da:	db03      	blt.n	80098e4 <__sread+0x18>
 80098dc:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80098de:	4403      	add	r3, r0
 80098e0:	6523      	str	r3, [r4, #80]	; 0x50
 80098e2:	bd10      	pop	{r4, pc}
 80098e4:	89a3      	ldrh	r3, [r4, #12]
 80098e6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80098ea:	81a3      	strh	r3, [r4, #12]
 80098ec:	bd10      	pop	{r4, pc}
 80098ee:	bf00      	nop

080098f0 <__swrite>:
 80098f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80098f4:	4616      	mov	r6, r2
 80098f6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80098fa:	461f      	mov	r7, r3
 80098fc:	05d3      	lsls	r3, r2, #23
 80098fe:	460c      	mov	r4, r1
 8009900:	4605      	mov	r5, r0
 8009902:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009906:	d507      	bpl.n	8009918 <__swrite+0x28>
 8009908:	2200      	movs	r2, #0
 800990a:	2302      	movs	r3, #2
 800990c:	f000 fa74 	bl	8009df8 <_lseek_r>
 8009910:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009914:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009918:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800991c:	81a2      	strh	r2, [r4, #12]
 800991e:	463b      	mov	r3, r7
 8009920:	4632      	mov	r2, r6
 8009922:	4628      	mov	r0, r5
 8009924:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8009928:	f000 b88c 	b.w	8009a44 <_write_r>

0800992c <__sseek>:
 800992c:	b510      	push	{r4, lr}
 800992e:	460c      	mov	r4, r1
 8009930:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009934:	f000 fa60 	bl	8009df8 <_lseek_r>
 8009938:	89a3      	ldrh	r3, [r4, #12]
 800993a:	1c42      	adds	r2, r0, #1
 800993c:	bf0e      	itee	eq
 800993e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8009942:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8009946:	6520      	strne	r0, [r4, #80]	; 0x50
 8009948:	81a3      	strh	r3, [r4, #12]
 800994a:	bd10      	pop	{r4, pc}

0800994c <__sclose>:
 800994c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009950:	f000 b922 	b.w	8009b98 <_close_r>

08009954 <strncpy>:
 8009954:	ea40 0301 	orr.w	r3, r0, r1
 8009958:	079b      	lsls	r3, r3, #30
 800995a:	b470      	push	{r4, r5, r6}
 800995c:	d12a      	bne.n	80099b4 <strncpy+0x60>
 800995e:	2a03      	cmp	r2, #3
 8009960:	d928      	bls.n	80099b4 <strncpy+0x60>
 8009962:	460c      	mov	r4, r1
 8009964:	4603      	mov	r3, r0
 8009966:	4621      	mov	r1, r4
 8009968:	f854 6b04 	ldr.w	r6, [r4], #4
 800996c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8009970:	ea25 0506 	bic.w	r5, r5, r6
 8009974:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8009978:	d106      	bne.n	8009988 <strncpy+0x34>
 800997a:	3a04      	subs	r2, #4
 800997c:	2a03      	cmp	r2, #3
 800997e:	f843 6b04 	str.w	r6, [r3], #4
 8009982:	4621      	mov	r1, r4
 8009984:	d8ef      	bhi.n	8009966 <strncpy+0x12>
 8009986:	b19a      	cbz	r2, 80099b0 <strncpy+0x5c>
 8009988:	780c      	ldrb	r4, [r1, #0]
 800998a:	701c      	strb	r4, [r3, #0]
 800998c:	3a01      	subs	r2, #1
 800998e:	3301      	adds	r3, #1
 8009990:	b13c      	cbz	r4, 80099a2 <strncpy+0x4e>
 8009992:	b16a      	cbz	r2, 80099b0 <strncpy+0x5c>
 8009994:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8009998:	f803 4b01 	strb.w	r4, [r3], #1
 800999c:	3a01      	subs	r2, #1
 800999e:	2c00      	cmp	r4, #0
 80099a0:	d1f7      	bne.n	8009992 <strncpy+0x3e>
 80099a2:	b12a      	cbz	r2, 80099b0 <strncpy+0x5c>
 80099a4:	441a      	add	r2, r3
 80099a6:	2100      	movs	r1, #0
 80099a8:	f803 1b01 	strb.w	r1, [r3], #1
 80099ac:	4293      	cmp	r3, r2
 80099ae:	d1fb      	bne.n	80099a8 <strncpy+0x54>
 80099b0:	bc70      	pop	{r4, r5, r6}
 80099b2:	4770      	bx	lr
 80099b4:	4603      	mov	r3, r0
 80099b6:	e7e6      	b.n	8009986 <strncpy+0x32>

080099b8 <__sprint_r.part.0>:
 80099b8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80099bc:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80099be:	049c      	lsls	r4, r3, #18
 80099c0:	4692      	mov	sl, r2
 80099c2:	d52d      	bpl.n	8009a20 <__sprint_r.part.0+0x68>
 80099c4:	6893      	ldr	r3, [r2, #8]
 80099c6:	6812      	ldr	r2, [r2, #0]
 80099c8:	b343      	cbz	r3, 8009a1c <__sprint_r.part.0+0x64>
 80099ca:	460e      	mov	r6, r1
 80099cc:	4607      	mov	r7, r0
 80099ce:	f102 0908 	add.w	r9, r2, #8
 80099d2:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80099d6:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80099da:	d015      	beq.n	8009a08 <__sprint_r.part.0+0x50>
 80099dc:	3d04      	subs	r5, #4
 80099de:	2400      	movs	r4, #0
 80099e0:	e001      	b.n	80099e6 <__sprint_r.part.0+0x2e>
 80099e2:	45a0      	cmp	r8, r4
 80099e4:	d00e      	beq.n	8009a04 <__sprint_r.part.0+0x4c>
 80099e6:	4632      	mov	r2, r6
 80099e8:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80099ec:	4638      	mov	r0, r7
 80099ee:	f000 f99d 	bl	8009d2c <_fputwc_r>
 80099f2:	1c43      	adds	r3, r0, #1
 80099f4:	f104 0401 	add.w	r4, r4, #1
 80099f8:	d1f3      	bne.n	80099e2 <__sprint_r.part.0+0x2a>
 80099fa:	2300      	movs	r3, #0
 80099fc:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009a00:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009a04:	f8da 3008 	ldr.w	r3, [sl, #8]
 8009a08:	f02b 0b03 	bic.w	fp, fp, #3
 8009a0c:	eba3 030b 	sub.w	r3, r3, fp
 8009a10:	f8ca 3008 	str.w	r3, [sl, #8]
 8009a14:	f109 0908 	add.w	r9, r9, #8
 8009a18:	2b00      	cmp	r3, #0
 8009a1a:	d1da      	bne.n	80099d2 <__sprint_r.part.0+0x1a>
 8009a1c:	2000      	movs	r0, #0
 8009a1e:	e7ec      	b.n	80099fa <__sprint_r.part.0+0x42>
 8009a20:	f7fe ffce 	bl	80089c0 <__sfvwrite_r>
 8009a24:	2300      	movs	r3, #0
 8009a26:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009a2a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009a2e:	bf00      	nop

08009a30 <__sprint_r>:
 8009a30:	6893      	ldr	r3, [r2, #8]
 8009a32:	b10b      	cbz	r3, 8009a38 <__sprint_r+0x8>
 8009a34:	f7ff bfc0 	b.w	80099b8 <__sprint_r.part.0>
 8009a38:	b410      	push	{r4}
 8009a3a:	4618      	mov	r0, r3
 8009a3c:	6053      	str	r3, [r2, #4]
 8009a3e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009a42:	4770      	bx	lr

08009a44 <_write_r>:
 8009a44:	b570      	push	{r4, r5, r6, lr}
 8009a46:	460d      	mov	r5, r1
 8009a48:	4c08      	ldr	r4, [pc, #32]	; (8009a6c <_write_r+0x28>)
 8009a4a:	4611      	mov	r1, r2
 8009a4c:	4606      	mov	r6, r0
 8009a4e:	461a      	mov	r2, r3
 8009a50:	4628      	mov	r0, r5
 8009a52:	2300      	movs	r3, #0
 8009a54:	6023      	str	r3, [r4, #0]
 8009a56:	f7fb fa8d 	bl	8004f74 <_write>
 8009a5a:	1c43      	adds	r3, r0, #1
 8009a5c:	d000      	beq.n	8009a60 <_write_r+0x1c>
 8009a5e:	bd70      	pop	{r4, r5, r6, pc}
 8009a60:	6823      	ldr	r3, [r4, #0]
 8009a62:	2b00      	cmp	r3, #0
 8009a64:	d0fb      	beq.n	8009a5e <_write_r+0x1a>
 8009a66:	6033      	str	r3, [r6, #0]
 8009a68:	bd70      	pop	{r4, r5, r6, pc}
 8009a6a:	bf00      	nop
 8009a6c:	20001454 	.word	0x20001454

08009a70 <__register_exitproc>:
 8009a70:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8009a74:	4d2b      	ldr	r5, [pc, #172]	; (8009b24 <__register_exitproc+0xb4>)
 8009a76:	4606      	mov	r6, r0
 8009a78:	6828      	ldr	r0, [r5, #0]
 8009a7a:	4698      	mov	r8, r3
 8009a7c:	460f      	mov	r7, r1
 8009a7e:	4691      	mov	r9, r2
 8009a80:	f7ff f958 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8009a84:	4b28      	ldr	r3, [pc, #160]	; (8009b28 <__register_exitproc+0xb8>)
 8009a86:	681c      	ldr	r4, [r3, #0]
 8009a88:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8009a8c:	2b00      	cmp	r3, #0
 8009a8e:	d03d      	beq.n	8009b0c <__register_exitproc+0x9c>
 8009a90:	685a      	ldr	r2, [r3, #4]
 8009a92:	2a1f      	cmp	r2, #31
 8009a94:	dc0d      	bgt.n	8009ab2 <__register_exitproc+0x42>
 8009a96:	f102 0c01 	add.w	ip, r2, #1
 8009a9a:	bb16      	cbnz	r6, 8009ae2 <__register_exitproc+0x72>
 8009a9c:	3202      	adds	r2, #2
 8009a9e:	f8c3 c004 	str.w	ip, [r3, #4]
 8009aa2:	6828      	ldr	r0, [r5, #0]
 8009aa4:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8009aa8:	f7ff f946 	bl	8008d38 <__retarget_lock_release_recursive>
 8009aac:	2000      	movs	r0, #0
 8009aae:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009ab2:	4b1e      	ldr	r3, [pc, #120]	; (8009b2c <__register_exitproc+0xbc>)
 8009ab4:	b37b      	cbz	r3, 8009b16 <__register_exitproc+0xa6>
 8009ab6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8009aba:	f7fb fb51 	bl	8005160 <malloc>
 8009abe:	4603      	mov	r3, r0
 8009ac0:	b348      	cbz	r0, 8009b16 <__register_exitproc+0xa6>
 8009ac2:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8009ac6:	2100      	movs	r1, #0
 8009ac8:	e9c0 2100 	strd	r2, r1, [r0]
 8009acc:	f04f 0c01 	mov.w	ip, #1
 8009ad0:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8009ad4:	460a      	mov	r2, r1
 8009ad6:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8009ada:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8009ade:	2e00      	cmp	r6, #0
 8009ae0:	d0dc      	beq.n	8009a9c <__register_exitproc+0x2c>
 8009ae2:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8009ae6:	2401      	movs	r4, #1
 8009ae8:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8009aec:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8009af0:	4094      	lsls	r4, r2
 8009af2:	4320      	orrs	r0, r4
 8009af4:	2e02      	cmp	r6, #2
 8009af6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8009afa:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8009afe:	d1cd      	bne.n	8009a9c <__register_exitproc+0x2c>
 8009b00:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8009b04:	430c      	orrs	r4, r1
 8009b06:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8009b0a:	e7c7      	b.n	8009a9c <__register_exitproc+0x2c>
 8009b0c:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8009b10:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8009b14:	e7bc      	b.n	8009a90 <__register_exitproc+0x20>
 8009b16:	6828      	ldr	r0, [r5, #0]
 8009b18:	f7ff f90e 	bl	8008d38 <__retarget_lock_release_recursive>
 8009b1c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009b20:	e7c5      	b.n	8009aae <__register_exitproc+0x3e>
 8009b22:	bf00      	nop
 8009b24:	20000870 	.word	0x20000870
 8009b28:	0800a378 	.word	0x0800a378
 8009b2c:	08005161 	.word	0x08005161

08009b30 <_calloc_r>:
 8009b30:	b510      	push	{r4, lr}
 8009b32:	fb02 f101 	mul.w	r1, r2, r1
 8009b36:	f7fb fb23 	bl	8005180 <_malloc_r>
 8009b3a:	4604      	mov	r4, r0
 8009b3c:	b1d8      	cbz	r0, 8009b76 <_calloc_r+0x46>
 8009b3e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8009b42:	f022 0203 	bic.w	r2, r2, #3
 8009b46:	3a04      	subs	r2, #4
 8009b48:	2a24      	cmp	r2, #36	; 0x24
 8009b4a:	d81d      	bhi.n	8009b88 <_calloc_r+0x58>
 8009b4c:	2a13      	cmp	r2, #19
 8009b4e:	d914      	bls.n	8009b7a <_calloc_r+0x4a>
 8009b50:	2300      	movs	r3, #0
 8009b52:	2a1b      	cmp	r2, #27
 8009b54:	e9c0 3300 	strd	r3, r3, [r0]
 8009b58:	d91b      	bls.n	8009b92 <_calloc_r+0x62>
 8009b5a:	2a24      	cmp	r2, #36	; 0x24
 8009b5c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8009b60:	bf0a      	itet	eq
 8009b62:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8009b66:	f100 0210 	addne.w	r2, r0, #16
 8009b6a:	f100 0218 	addeq.w	r2, r0, #24
 8009b6e:	2300      	movs	r3, #0
 8009b70:	e9c2 3300 	strd	r3, r3, [r2]
 8009b74:	6093      	str	r3, [r2, #8]
 8009b76:	4620      	mov	r0, r4
 8009b78:	bd10      	pop	{r4, pc}
 8009b7a:	4602      	mov	r2, r0
 8009b7c:	2300      	movs	r3, #0
 8009b7e:	e9c2 3300 	strd	r3, r3, [r2]
 8009b82:	6093      	str	r3, [r2, #8]
 8009b84:	4620      	mov	r0, r4
 8009b86:	bd10      	pop	{r4, pc}
 8009b88:	2100      	movs	r1, #0
 8009b8a:	f7fb fd9d 	bl	80056c8 <memset>
 8009b8e:	4620      	mov	r0, r4
 8009b90:	bd10      	pop	{r4, pc}
 8009b92:	f100 0208 	add.w	r2, r0, #8
 8009b96:	e7f1      	b.n	8009b7c <_calloc_r+0x4c>

08009b98 <_close_r>:
 8009b98:	b538      	push	{r3, r4, r5, lr}
 8009b9a:	4c07      	ldr	r4, [pc, #28]	; (8009bb8 <_close_r+0x20>)
 8009b9c:	2300      	movs	r3, #0
 8009b9e:	4605      	mov	r5, r0
 8009ba0:	4608      	mov	r0, r1
 8009ba2:	6023      	str	r3, [r4, #0]
 8009ba4:	f7fb fa27 	bl	8004ff6 <_close>
 8009ba8:	1c43      	adds	r3, r0, #1
 8009baa:	d000      	beq.n	8009bae <_close_r+0x16>
 8009bac:	bd38      	pop	{r3, r4, r5, pc}
 8009bae:	6823      	ldr	r3, [r4, #0]
 8009bb0:	2b00      	cmp	r3, #0
 8009bb2:	d0fb      	beq.n	8009bac <_close_r+0x14>
 8009bb4:	602b      	str	r3, [r5, #0]
 8009bb6:	bd38      	pop	{r3, r4, r5, pc}
 8009bb8:	20001454 	.word	0x20001454

08009bbc <_fclose_r>:
 8009bbc:	b570      	push	{r4, r5, r6, lr}
 8009bbe:	2900      	cmp	r1, #0
 8009bc0:	d048      	beq.n	8009c54 <_fclose_r+0x98>
 8009bc2:	4605      	mov	r5, r0
 8009bc4:	460c      	mov	r4, r1
 8009bc6:	b110      	cbz	r0, 8009bce <_fclose_r+0x12>
 8009bc8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009bca:	2b00      	cmp	r3, #0
 8009bcc:	d048      	beq.n	8009c60 <_fclose_r+0xa4>
 8009bce:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009bd0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009bd4:	07d0      	lsls	r0, r2, #31
 8009bd6:	d440      	bmi.n	8009c5a <_fclose_r+0x9e>
 8009bd8:	0599      	lsls	r1, r3, #22
 8009bda:	d530      	bpl.n	8009c3e <_fclose_r+0x82>
 8009bdc:	4621      	mov	r1, r4
 8009bde:	4628      	mov	r0, r5
 8009be0:	f7fe fc52 	bl	8008488 <__sflush_r>
 8009be4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8009be6:	4606      	mov	r6, r0
 8009be8:	b133      	cbz	r3, 8009bf8 <_fclose_r+0x3c>
 8009bea:	69e1      	ldr	r1, [r4, #28]
 8009bec:	4628      	mov	r0, r5
 8009bee:	4798      	blx	r3
 8009bf0:	2800      	cmp	r0, #0
 8009bf2:	bfb8      	it	lt
 8009bf4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8009bf8:	89a3      	ldrh	r3, [r4, #12]
 8009bfa:	061a      	lsls	r2, r3, #24
 8009bfc:	d43c      	bmi.n	8009c78 <_fclose_r+0xbc>
 8009bfe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8009c00:	b141      	cbz	r1, 8009c14 <_fclose_r+0x58>
 8009c02:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8009c06:	4299      	cmp	r1, r3
 8009c08:	d002      	beq.n	8009c10 <_fclose_r+0x54>
 8009c0a:	4628      	mov	r0, r5
 8009c0c:	f7fe fde4 	bl	80087d8 <_free_r>
 8009c10:	2300      	movs	r3, #0
 8009c12:	6323      	str	r3, [r4, #48]	; 0x30
 8009c14:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8009c16:	b121      	cbz	r1, 8009c22 <_fclose_r+0x66>
 8009c18:	4628      	mov	r0, r5
 8009c1a:	f7fe fddd 	bl	80087d8 <_free_r>
 8009c1e:	2300      	movs	r3, #0
 8009c20:	6463      	str	r3, [r4, #68]	; 0x44
 8009c22:	f7fe fd63 	bl	80086ec <__sfp_lock_acquire>
 8009c26:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009c28:	2200      	movs	r2, #0
 8009c2a:	07db      	lsls	r3, r3, #31
 8009c2c:	81a2      	strh	r2, [r4, #12]
 8009c2e:	d51f      	bpl.n	8009c70 <_fclose_r+0xb4>
 8009c30:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009c32:	f7ff f87d 	bl	8008d30 <__retarget_lock_close_recursive>
 8009c36:	f7fe fd5f 	bl	80086f8 <__sfp_lock_release>
 8009c3a:	4630      	mov	r0, r6
 8009c3c:	bd70      	pop	{r4, r5, r6, pc}
 8009c3e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009c40:	f7ff f878 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8009c44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009c48:	2b00      	cmp	r3, #0
 8009c4a:	d1c7      	bne.n	8009bdc <_fclose_r+0x20>
 8009c4c:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8009c4e:	f016 0601 	ands.w	r6, r6, #1
 8009c52:	d016      	beq.n	8009c82 <_fclose_r+0xc6>
 8009c54:	2600      	movs	r6, #0
 8009c56:	4630      	mov	r0, r6
 8009c58:	bd70      	pop	{r4, r5, r6, pc}
 8009c5a:	2b00      	cmp	r3, #0
 8009c5c:	d0fa      	beq.n	8009c54 <_fclose_r+0x98>
 8009c5e:	e7bd      	b.n	8009bdc <_fclose_r+0x20>
 8009c60:	f7fe fd18 	bl	8008694 <__sinit>
 8009c64:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009c66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009c6a:	07d0      	lsls	r0, r2, #31
 8009c6c:	d4f5      	bmi.n	8009c5a <_fclose_r+0x9e>
 8009c6e:	e7b3      	b.n	8009bd8 <_fclose_r+0x1c>
 8009c70:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009c72:	f7ff f861 	bl	8008d38 <__retarget_lock_release_recursive>
 8009c76:	e7db      	b.n	8009c30 <_fclose_r+0x74>
 8009c78:	6921      	ldr	r1, [r4, #16]
 8009c7a:	4628      	mov	r0, r5
 8009c7c:	f7fe fdac 	bl	80087d8 <_free_r>
 8009c80:	e7bd      	b.n	8009bfe <_fclose_r+0x42>
 8009c82:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009c84:	f7ff f858 	bl	8008d38 <__retarget_lock_release_recursive>
 8009c88:	4630      	mov	r0, r6
 8009c8a:	bd70      	pop	{r4, r5, r6, pc}

08009c8c <__fputwc>:
 8009c8c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009c90:	b082      	sub	sp, #8
 8009c92:	4681      	mov	r9, r0
 8009c94:	4688      	mov	r8, r1
 8009c96:	4614      	mov	r4, r2
 8009c98:	f000 f8a0 	bl	8009ddc <__locale_mb_cur_max>
 8009c9c:	2801      	cmp	r0, #1
 8009c9e:	d103      	bne.n	8009ca8 <__fputwc+0x1c>
 8009ca0:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8009ca4:	2bfe      	cmp	r3, #254	; 0xfe
 8009ca6:	d933      	bls.n	8009d10 <__fputwc+0x84>
 8009ca8:	4642      	mov	r2, r8
 8009caa:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8009cae:	a901      	add	r1, sp, #4
 8009cb0:	4648      	mov	r0, r9
 8009cb2:	f000 f93b 	bl	8009f2c <_wcrtomb_r>
 8009cb6:	1c42      	adds	r2, r0, #1
 8009cb8:	4606      	mov	r6, r0
 8009cba:	d02f      	beq.n	8009d1c <__fputwc+0x90>
 8009cbc:	b320      	cbz	r0, 8009d08 <__fputwc+0x7c>
 8009cbe:	f89d c004 	ldrb.w	ip, [sp, #4]
 8009cc2:	2500      	movs	r5, #0
 8009cc4:	f10d 0a04 	add.w	sl, sp, #4
 8009cc8:	e009      	b.n	8009cde <__fputwc+0x52>
 8009cca:	6823      	ldr	r3, [r4, #0]
 8009ccc:	1c5a      	adds	r2, r3, #1
 8009cce:	6022      	str	r2, [r4, #0]
 8009cd0:	f883 c000 	strb.w	ip, [r3]
 8009cd4:	3501      	adds	r5, #1
 8009cd6:	42b5      	cmp	r5, r6
 8009cd8:	d216      	bcs.n	8009d08 <__fputwc+0x7c>
 8009cda:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8009cde:	68a3      	ldr	r3, [r4, #8]
 8009ce0:	3b01      	subs	r3, #1
 8009ce2:	2b00      	cmp	r3, #0
 8009ce4:	60a3      	str	r3, [r4, #8]
 8009ce6:	daf0      	bge.n	8009cca <__fputwc+0x3e>
 8009ce8:	69a7      	ldr	r7, [r4, #24]
 8009cea:	42bb      	cmp	r3, r7
 8009cec:	4661      	mov	r1, ip
 8009cee:	4622      	mov	r2, r4
 8009cf0:	4648      	mov	r0, r9
 8009cf2:	db02      	blt.n	8009cfa <__fputwc+0x6e>
 8009cf4:	f1bc 0f0a 	cmp.w	ip, #10
 8009cf8:	d1e7      	bne.n	8009cca <__fputwc+0x3e>
 8009cfa:	f000 f8bf 	bl	8009e7c <__swbuf_r>
 8009cfe:	1c43      	adds	r3, r0, #1
 8009d00:	d1e8      	bne.n	8009cd4 <__fputwc+0x48>
 8009d02:	b002      	add	sp, #8
 8009d04:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009d08:	4640      	mov	r0, r8
 8009d0a:	b002      	add	sp, #8
 8009d0c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009d10:	fa5f fc88 	uxtb.w	ip, r8
 8009d14:	4606      	mov	r6, r0
 8009d16:	f88d c004 	strb.w	ip, [sp, #4]
 8009d1a:	e7d2      	b.n	8009cc2 <__fputwc+0x36>
 8009d1c:	89a3      	ldrh	r3, [r4, #12]
 8009d1e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009d22:	81a3      	strh	r3, [r4, #12]
 8009d24:	b002      	add	sp, #8
 8009d26:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009d2a:	bf00      	nop

08009d2c <_fputwc_r>:
 8009d2c:	b530      	push	{r4, r5, lr}
 8009d2e:	4605      	mov	r5, r0
 8009d30:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8009d32:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8009d36:	07c0      	lsls	r0, r0, #31
 8009d38:	4614      	mov	r4, r2
 8009d3a:	b083      	sub	sp, #12
 8009d3c:	b29a      	uxth	r2, r3
 8009d3e:	d401      	bmi.n	8009d44 <_fputwc_r+0x18>
 8009d40:	0590      	lsls	r0, r2, #22
 8009d42:	d51c      	bpl.n	8009d7e <_fputwc_r+0x52>
 8009d44:	0490      	lsls	r0, r2, #18
 8009d46:	d406      	bmi.n	8009d56 <_fputwc_r+0x2a>
 8009d48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009d4a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8009d4e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009d52:	81a3      	strh	r3, [r4, #12]
 8009d54:	6662      	str	r2, [r4, #100]	; 0x64
 8009d56:	4628      	mov	r0, r5
 8009d58:	4622      	mov	r2, r4
 8009d5a:	f7ff ff97 	bl	8009c8c <__fputwc>
 8009d5e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009d60:	07da      	lsls	r2, r3, #31
 8009d62:	4605      	mov	r5, r0
 8009d64:	d402      	bmi.n	8009d6c <_fputwc_r+0x40>
 8009d66:	89a3      	ldrh	r3, [r4, #12]
 8009d68:	059b      	lsls	r3, r3, #22
 8009d6a:	d502      	bpl.n	8009d72 <_fputwc_r+0x46>
 8009d6c:	4628      	mov	r0, r5
 8009d6e:	b003      	add	sp, #12
 8009d70:	bd30      	pop	{r4, r5, pc}
 8009d72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d74:	f7fe ffe0 	bl	8008d38 <__retarget_lock_release_recursive>
 8009d78:	4628      	mov	r0, r5
 8009d7a:	b003      	add	sp, #12
 8009d7c:	bd30      	pop	{r4, r5, pc}
 8009d7e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d80:	9101      	str	r1, [sp, #4]
 8009d82:	f7fe ffd7 	bl	8008d34 <__retarget_lock_acquire_recursive>
 8009d86:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009d8a:	9901      	ldr	r1, [sp, #4]
 8009d8c:	b29a      	uxth	r2, r3
 8009d8e:	e7d9      	b.n	8009d44 <_fputwc_r+0x18>

08009d90 <_fstat_r>:
 8009d90:	b538      	push	{r3, r4, r5, lr}
 8009d92:	460b      	mov	r3, r1
 8009d94:	4c07      	ldr	r4, [pc, #28]	; (8009db4 <_fstat_r+0x24>)
 8009d96:	4605      	mov	r5, r0
 8009d98:	4611      	mov	r1, r2
 8009d9a:	4618      	mov	r0, r3
 8009d9c:	2300      	movs	r3, #0
 8009d9e:	6023      	str	r3, [r4, #0]
 8009da0:	f7fb f92c 	bl	8004ffc <_fstat>
 8009da4:	1c43      	adds	r3, r0, #1
 8009da6:	d000      	beq.n	8009daa <_fstat_r+0x1a>
 8009da8:	bd38      	pop	{r3, r4, r5, pc}
 8009daa:	6823      	ldr	r3, [r4, #0]
 8009dac:	2b00      	cmp	r3, #0
 8009dae:	d0fb      	beq.n	8009da8 <_fstat_r+0x18>
 8009db0:	602b      	str	r3, [r5, #0]
 8009db2:	bd38      	pop	{r3, r4, r5, pc}
 8009db4:	20001454 	.word	0x20001454

08009db8 <_isatty_r>:
 8009db8:	b538      	push	{r3, r4, r5, lr}
 8009dba:	4c07      	ldr	r4, [pc, #28]	; (8009dd8 <_isatty_r+0x20>)
 8009dbc:	2300      	movs	r3, #0
 8009dbe:	4605      	mov	r5, r0
 8009dc0:	4608      	mov	r0, r1
 8009dc2:	6023      	str	r3, [r4, #0]
 8009dc4:	f7fb f920 	bl	8005008 <_isatty>
 8009dc8:	1c43      	adds	r3, r0, #1
 8009dca:	d000      	beq.n	8009dce <_isatty_r+0x16>
 8009dcc:	bd38      	pop	{r3, r4, r5, pc}
 8009dce:	6823      	ldr	r3, [r4, #0]
 8009dd0:	2b00      	cmp	r3, #0
 8009dd2:	d0fb      	beq.n	8009dcc <_isatty_r+0x14>
 8009dd4:	602b      	str	r3, [r5, #0]
 8009dd6:	bd38      	pop	{r3, r4, r5, pc}
 8009dd8:	20001454 	.word	0x20001454

08009ddc <__locale_mb_cur_max>:
 8009ddc:	4b04      	ldr	r3, [pc, #16]	; (8009df0 <__locale_mb_cur_max+0x14>)
 8009dde:	4a05      	ldr	r2, [pc, #20]	; (8009df4 <__locale_mb_cur_max+0x18>)
 8009de0:	681b      	ldr	r3, [r3, #0]
 8009de2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8009de4:	2b00      	cmp	r3, #0
 8009de6:	bf08      	it	eq
 8009de8:	4613      	moveq	r3, r2
 8009dea:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8009dee:	4770      	bx	lr
 8009df0:	20000030 	.word	0x20000030
 8009df4:	20000874 	.word	0x20000874

08009df8 <_lseek_r>:
 8009df8:	b570      	push	{r4, r5, r6, lr}
 8009dfa:	460d      	mov	r5, r1
 8009dfc:	4c08      	ldr	r4, [pc, #32]	; (8009e20 <_lseek_r+0x28>)
 8009dfe:	4611      	mov	r1, r2
 8009e00:	4606      	mov	r6, r0
 8009e02:	461a      	mov	r2, r3
 8009e04:	4628      	mov	r0, r5
 8009e06:	2300      	movs	r3, #0
 8009e08:	6023      	str	r3, [r4, #0]
 8009e0a:	f7fb f8ff 	bl	800500c <_lseek>
 8009e0e:	1c43      	adds	r3, r0, #1
 8009e10:	d000      	beq.n	8009e14 <_lseek_r+0x1c>
 8009e12:	bd70      	pop	{r4, r5, r6, pc}
 8009e14:	6823      	ldr	r3, [r4, #0]
 8009e16:	2b00      	cmp	r3, #0
 8009e18:	d0fb      	beq.n	8009e12 <_lseek_r+0x1a>
 8009e1a:	6033      	str	r3, [r6, #0]
 8009e1c:	bd70      	pop	{r4, r5, r6, pc}
 8009e1e:	bf00      	nop
 8009e20:	20001454 	.word	0x20001454

08009e24 <__ascii_mbtowc>:
 8009e24:	b082      	sub	sp, #8
 8009e26:	b149      	cbz	r1, 8009e3c <__ascii_mbtowc+0x18>
 8009e28:	b15a      	cbz	r2, 8009e42 <__ascii_mbtowc+0x1e>
 8009e2a:	b16b      	cbz	r3, 8009e48 <__ascii_mbtowc+0x24>
 8009e2c:	7813      	ldrb	r3, [r2, #0]
 8009e2e:	600b      	str	r3, [r1, #0]
 8009e30:	7812      	ldrb	r2, [r2, #0]
 8009e32:	1c10      	adds	r0, r2, #0
 8009e34:	bf18      	it	ne
 8009e36:	2001      	movne	r0, #1
 8009e38:	b002      	add	sp, #8
 8009e3a:	4770      	bx	lr
 8009e3c:	a901      	add	r1, sp, #4
 8009e3e:	2a00      	cmp	r2, #0
 8009e40:	d1f3      	bne.n	8009e2a <__ascii_mbtowc+0x6>
 8009e42:	4610      	mov	r0, r2
 8009e44:	b002      	add	sp, #8
 8009e46:	4770      	bx	lr
 8009e48:	f06f 0001 	mvn.w	r0, #1
 8009e4c:	e7f4      	b.n	8009e38 <__ascii_mbtowc+0x14>
 8009e4e:	bf00      	nop

08009e50 <_read_r>:
 8009e50:	b570      	push	{r4, r5, r6, lr}
 8009e52:	460d      	mov	r5, r1
 8009e54:	4c08      	ldr	r4, [pc, #32]	; (8009e78 <_read_r+0x28>)
 8009e56:	4611      	mov	r1, r2
 8009e58:	4606      	mov	r6, r0
 8009e5a:	461a      	mov	r2, r3
 8009e5c:	4628      	mov	r0, r5
 8009e5e:	2300      	movs	r3, #0
 8009e60:	6023      	str	r3, [r4, #0]
 8009e62:	f7fb f867 	bl	8004f34 <_read>
 8009e66:	1c43      	adds	r3, r0, #1
 8009e68:	d000      	beq.n	8009e6c <_read_r+0x1c>
 8009e6a:	bd70      	pop	{r4, r5, r6, pc}
 8009e6c:	6823      	ldr	r3, [r4, #0]
 8009e6e:	2b00      	cmp	r3, #0
 8009e70:	d0fb      	beq.n	8009e6a <_read_r+0x1a>
 8009e72:	6033      	str	r3, [r6, #0]
 8009e74:	bd70      	pop	{r4, r5, r6, pc}
 8009e76:	bf00      	nop
 8009e78:	20001454 	.word	0x20001454

08009e7c <__swbuf_r>:
 8009e7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009e7e:	460d      	mov	r5, r1
 8009e80:	4614      	mov	r4, r2
 8009e82:	4606      	mov	r6, r0
 8009e84:	b110      	cbz	r0, 8009e8c <__swbuf_r+0x10>
 8009e86:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009e88:	2b00      	cmp	r3, #0
 8009e8a:	d043      	beq.n	8009f14 <__swbuf_r+0x98>
 8009e8c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009e90:	69a3      	ldr	r3, [r4, #24]
 8009e92:	60a3      	str	r3, [r4, #8]
 8009e94:	b291      	uxth	r1, r2
 8009e96:	0708      	lsls	r0, r1, #28
 8009e98:	d51b      	bpl.n	8009ed2 <__swbuf_r+0x56>
 8009e9a:	6923      	ldr	r3, [r4, #16]
 8009e9c:	b1cb      	cbz	r3, 8009ed2 <__swbuf_r+0x56>
 8009e9e:	b2ed      	uxtb	r5, r5
 8009ea0:	0489      	lsls	r1, r1, #18
 8009ea2:	462f      	mov	r7, r5
 8009ea4:	d522      	bpl.n	8009eec <__swbuf_r+0x70>
 8009ea6:	6822      	ldr	r2, [r4, #0]
 8009ea8:	6961      	ldr	r1, [r4, #20]
 8009eaa:	1ad3      	subs	r3, r2, r3
 8009eac:	4299      	cmp	r1, r3
 8009eae:	dd29      	ble.n	8009f04 <__swbuf_r+0x88>
 8009eb0:	3301      	adds	r3, #1
 8009eb2:	68a1      	ldr	r1, [r4, #8]
 8009eb4:	1c50      	adds	r0, r2, #1
 8009eb6:	3901      	subs	r1, #1
 8009eb8:	60a1      	str	r1, [r4, #8]
 8009eba:	6020      	str	r0, [r4, #0]
 8009ebc:	7015      	strb	r5, [r2, #0]
 8009ebe:	6962      	ldr	r2, [r4, #20]
 8009ec0:	429a      	cmp	r2, r3
 8009ec2:	d02a      	beq.n	8009f1a <__swbuf_r+0x9e>
 8009ec4:	89a3      	ldrh	r3, [r4, #12]
 8009ec6:	07db      	lsls	r3, r3, #31
 8009ec8:	d501      	bpl.n	8009ece <__swbuf_r+0x52>
 8009eca:	2d0a      	cmp	r5, #10
 8009ecc:	d025      	beq.n	8009f1a <__swbuf_r+0x9e>
 8009ece:	4638      	mov	r0, r7
 8009ed0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009ed2:	4621      	mov	r1, r4
 8009ed4:	4630      	mov	r0, r6
 8009ed6:	f7fd fa4b 	bl	8007370 <__swsetup_r>
 8009eda:	bb20      	cbnz	r0, 8009f26 <__swbuf_r+0xaa>
 8009edc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009ee0:	6923      	ldr	r3, [r4, #16]
 8009ee2:	b291      	uxth	r1, r2
 8009ee4:	b2ed      	uxtb	r5, r5
 8009ee6:	0489      	lsls	r1, r1, #18
 8009ee8:	462f      	mov	r7, r5
 8009eea:	d4dc      	bmi.n	8009ea6 <__swbuf_r+0x2a>
 8009eec:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009eee:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009ef2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8009ef6:	81a2      	strh	r2, [r4, #12]
 8009ef8:	6822      	ldr	r2, [r4, #0]
 8009efa:	6661      	str	r1, [r4, #100]	; 0x64
 8009efc:	6961      	ldr	r1, [r4, #20]
 8009efe:	1ad3      	subs	r3, r2, r3
 8009f00:	4299      	cmp	r1, r3
 8009f02:	dcd5      	bgt.n	8009eb0 <__swbuf_r+0x34>
 8009f04:	4621      	mov	r1, r4
 8009f06:	4630      	mov	r0, r6
 8009f08:	f7fe fb68 	bl	80085dc <_fflush_r>
 8009f0c:	b958      	cbnz	r0, 8009f26 <__swbuf_r+0xaa>
 8009f0e:	6822      	ldr	r2, [r4, #0]
 8009f10:	2301      	movs	r3, #1
 8009f12:	e7ce      	b.n	8009eb2 <__swbuf_r+0x36>
 8009f14:	f7fe fbbe 	bl	8008694 <__sinit>
 8009f18:	e7b8      	b.n	8009e8c <__swbuf_r+0x10>
 8009f1a:	4621      	mov	r1, r4
 8009f1c:	4630      	mov	r0, r6
 8009f1e:	f7fe fb5d 	bl	80085dc <_fflush_r>
 8009f22:	2800      	cmp	r0, #0
 8009f24:	d0d3      	beq.n	8009ece <__swbuf_r+0x52>
 8009f26:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8009f2a:	e7d0      	b.n	8009ece <__swbuf_r+0x52>

08009f2c <_wcrtomb_r>:
 8009f2c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009f2e:	4c11      	ldr	r4, [pc, #68]	; (8009f74 <_wcrtomb_r+0x48>)
 8009f30:	6824      	ldr	r4, [r4, #0]
 8009f32:	b085      	sub	sp, #20
 8009f34:	4606      	mov	r6, r0
 8009f36:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8009f38:	461f      	mov	r7, r3
 8009f3a:	b151      	cbz	r1, 8009f52 <_wcrtomb_r+0x26>
 8009f3c:	4d0e      	ldr	r5, [pc, #56]	; (8009f78 <_wcrtomb_r+0x4c>)
 8009f3e:	2c00      	cmp	r4, #0
 8009f40:	bf08      	it	eq
 8009f42:	462c      	moveq	r4, r5
 8009f44:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009f48:	47a0      	blx	r4
 8009f4a:	1c43      	adds	r3, r0, #1
 8009f4c:	d00c      	beq.n	8009f68 <_wcrtomb_r+0x3c>
 8009f4e:	b005      	add	sp, #20
 8009f50:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009f52:	4a09      	ldr	r2, [pc, #36]	; (8009f78 <_wcrtomb_r+0x4c>)
 8009f54:	2c00      	cmp	r4, #0
 8009f56:	bf08      	it	eq
 8009f58:	4614      	moveq	r4, r2
 8009f5a:	460a      	mov	r2, r1
 8009f5c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009f60:	a901      	add	r1, sp, #4
 8009f62:	47a0      	blx	r4
 8009f64:	1c43      	adds	r3, r0, #1
 8009f66:	d1f2      	bne.n	8009f4e <_wcrtomb_r+0x22>
 8009f68:	2200      	movs	r2, #0
 8009f6a:	238a      	movs	r3, #138	; 0x8a
 8009f6c:	603a      	str	r2, [r7, #0]
 8009f6e:	6033      	str	r3, [r6, #0]
 8009f70:	b005      	add	sp, #20
 8009f72:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009f74:	20000030 	.word	0x20000030
 8009f78:	20000874 	.word	0x20000874

08009f7c <__ascii_wctomb>:
 8009f7c:	b121      	cbz	r1, 8009f88 <__ascii_wctomb+0xc>
 8009f7e:	2aff      	cmp	r2, #255	; 0xff
 8009f80:	d804      	bhi.n	8009f8c <__ascii_wctomb+0x10>
 8009f82:	700a      	strb	r2, [r1, #0]
 8009f84:	2001      	movs	r0, #1
 8009f86:	4770      	bx	lr
 8009f88:	4608      	mov	r0, r1
 8009f8a:	4770      	bx	lr
 8009f8c:	238a      	movs	r3, #138	; 0x8a
 8009f8e:	6003      	str	r3, [r0, #0]
 8009f90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009f94:	4770      	bx	lr
 8009f96:	bf00      	nop

08009f98 <_init>:
 8009f98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009f9a:	bf00      	nop
 8009f9c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009f9e:	bc08      	pop	{r3}
 8009fa0:	469e      	mov	lr, r3
 8009fa2:	4770      	bx	lr

08009fa4 <_fini>:
 8009fa4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009fa6:	bf00      	nop
 8009fa8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009faa:	bc08      	pop	{r3}
 8009fac:	469e      	mov	lr, r3
 8009fae:	4770      	bx	lr
