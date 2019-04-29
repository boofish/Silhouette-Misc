
qurt.elf:     file format elf32-littlearm


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
 80001d8:	200009e8 	.word	0x200009e8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007104 	.word	0x08007104

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009ec 	.word	0x200009ec
 80001fc:	08007104 	.word	0x08007104

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

0800099c <__aeabi_d2f>:
 800099c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80009a0:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 80009a4:	bf24      	itt	cs
 80009a6:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 80009aa:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 80009ae:	d90d      	bls.n	80009cc <__aeabi_d2f+0x30>
 80009b0:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80009b4:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 80009b8:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 80009bc:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 80009c0:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 80009c4:	bf08      	it	eq
 80009c6:	f020 0001 	biceq.w	r0, r0, #1
 80009ca:	4770      	bx	lr
 80009cc:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 80009d0:	d121      	bne.n	8000a16 <__aeabi_d2f+0x7a>
 80009d2:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 80009d6:	bfbc      	itt	lt
 80009d8:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 80009dc:	4770      	bxlt	lr
 80009de:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80009e2:	ea4f 5252 	mov.w	r2, r2, lsr #21
 80009e6:	f1c2 0218 	rsb	r2, r2, #24
 80009ea:	f1c2 0c20 	rsb	ip, r2, #32
 80009ee:	fa10 f30c 	lsls.w	r3, r0, ip
 80009f2:	fa20 f002 	lsr.w	r0, r0, r2
 80009f6:	bf18      	it	ne
 80009f8:	f040 0001 	orrne.w	r0, r0, #1
 80009fc:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000a00:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8000a04:	fa03 fc0c 	lsl.w	ip, r3, ip
 8000a08:	ea40 000c 	orr.w	r0, r0, ip
 8000a0c:	fa23 f302 	lsr.w	r3, r3, r2
 8000a10:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8000a14:	e7cc      	b.n	80009b0 <__aeabi_d2f+0x14>
 8000a16:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8000a1a:	d107      	bne.n	8000a2c <__aeabi_d2f+0x90>
 8000a1c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8000a20:	bf1e      	ittt	ne
 8000a22:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8000a26:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8000a2a:	4770      	bxne	lr
 8000a2c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8000a30:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8000a34:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8000a38:	4770      	bx	lr
 8000a3a:	bf00      	nop

08000a3c <__aeabi_uldivmod>:
 8000a3c:	b953      	cbnz	r3, 8000a54 <__aeabi_uldivmod+0x18>
 8000a3e:	b94a      	cbnz	r2, 8000a54 <__aeabi_uldivmod+0x18>
 8000a40:	2900      	cmp	r1, #0
 8000a42:	bf08      	it	eq
 8000a44:	2800      	cmpeq	r0, #0
 8000a46:	bf1c      	itt	ne
 8000a48:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000a4c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000a50:	f000 b972 	b.w	8000d38 <__aeabi_idiv0>
 8000a54:	f1ad 0c08 	sub.w	ip, sp, #8
 8000a58:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000a5c:	f000 f806 	bl	8000a6c <__udivmoddi4>
 8000a60:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000a64:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000a68:	b004      	add	sp, #16
 8000a6a:	4770      	bx	lr

08000a6c <__udivmoddi4>:
 8000a6c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000a70:	9e08      	ldr	r6, [sp, #32]
 8000a72:	4604      	mov	r4, r0
 8000a74:	4688      	mov	r8, r1
 8000a76:	2b00      	cmp	r3, #0
 8000a78:	d14b      	bne.n	8000b12 <__udivmoddi4+0xa6>
 8000a7a:	428a      	cmp	r2, r1
 8000a7c:	4615      	mov	r5, r2
 8000a7e:	d967      	bls.n	8000b50 <__udivmoddi4+0xe4>
 8000a80:	fab2 f282 	clz	r2, r2
 8000a84:	b14a      	cbz	r2, 8000a9a <__udivmoddi4+0x2e>
 8000a86:	f1c2 0720 	rsb	r7, r2, #32
 8000a8a:	fa01 f302 	lsl.w	r3, r1, r2
 8000a8e:	fa20 f707 	lsr.w	r7, r0, r7
 8000a92:	4095      	lsls	r5, r2
 8000a94:	ea47 0803 	orr.w	r8, r7, r3
 8000a98:	4094      	lsls	r4, r2
 8000a9a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000a9e:	0c23      	lsrs	r3, r4, #16
 8000aa0:	fbb8 f7fe 	udiv	r7, r8, lr
 8000aa4:	fa1f fc85 	uxth.w	ip, r5
 8000aa8:	fb0e 8817 	mls	r8, lr, r7, r8
 8000aac:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000ab0:	fb07 f10c 	mul.w	r1, r7, ip
 8000ab4:	4299      	cmp	r1, r3
 8000ab6:	d909      	bls.n	8000acc <__udivmoddi4+0x60>
 8000ab8:	18eb      	adds	r3, r5, r3
 8000aba:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000abe:	f080 811b 	bcs.w	8000cf8 <__udivmoddi4+0x28c>
 8000ac2:	4299      	cmp	r1, r3
 8000ac4:	f240 8118 	bls.w	8000cf8 <__udivmoddi4+0x28c>
 8000ac8:	3f02      	subs	r7, #2
 8000aca:	442b      	add	r3, r5
 8000acc:	1a5b      	subs	r3, r3, r1
 8000ace:	b2a4      	uxth	r4, r4
 8000ad0:	fbb3 f0fe 	udiv	r0, r3, lr
 8000ad4:	fb0e 3310 	mls	r3, lr, r0, r3
 8000ad8:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000adc:	fb00 fc0c 	mul.w	ip, r0, ip
 8000ae0:	45a4      	cmp	ip, r4
 8000ae2:	d909      	bls.n	8000af8 <__udivmoddi4+0x8c>
 8000ae4:	192c      	adds	r4, r5, r4
 8000ae6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000aea:	f080 8107 	bcs.w	8000cfc <__udivmoddi4+0x290>
 8000aee:	45a4      	cmp	ip, r4
 8000af0:	f240 8104 	bls.w	8000cfc <__udivmoddi4+0x290>
 8000af4:	3802      	subs	r0, #2
 8000af6:	442c      	add	r4, r5
 8000af8:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000afc:	eba4 040c 	sub.w	r4, r4, ip
 8000b00:	2700      	movs	r7, #0
 8000b02:	b11e      	cbz	r6, 8000b0c <__udivmoddi4+0xa0>
 8000b04:	40d4      	lsrs	r4, r2
 8000b06:	2300      	movs	r3, #0
 8000b08:	e9c6 4300 	strd	r4, r3, [r6]
 8000b0c:	4639      	mov	r1, r7
 8000b0e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000b12:	428b      	cmp	r3, r1
 8000b14:	d909      	bls.n	8000b2a <__udivmoddi4+0xbe>
 8000b16:	2e00      	cmp	r6, #0
 8000b18:	f000 80eb 	beq.w	8000cf2 <__udivmoddi4+0x286>
 8000b1c:	2700      	movs	r7, #0
 8000b1e:	e9c6 0100 	strd	r0, r1, [r6]
 8000b22:	4638      	mov	r0, r7
 8000b24:	4639      	mov	r1, r7
 8000b26:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000b2a:	fab3 f783 	clz	r7, r3
 8000b2e:	2f00      	cmp	r7, #0
 8000b30:	d147      	bne.n	8000bc2 <__udivmoddi4+0x156>
 8000b32:	428b      	cmp	r3, r1
 8000b34:	d302      	bcc.n	8000b3c <__udivmoddi4+0xd0>
 8000b36:	4282      	cmp	r2, r0
 8000b38:	f200 80fa 	bhi.w	8000d30 <__udivmoddi4+0x2c4>
 8000b3c:	1a84      	subs	r4, r0, r2
 8000b3e:	eb61 0303 	sbc.w	r3, r1, r3
 8000b42:	2001      	movs	r0, #1
 8000b44:	4698      	mov	r8, r3
 8000b46:	2e00      	cmp	r6, #0
 8000b48:	d0e0      	beq.n	8000b0c <__udivmoddi4+0xa0>
 8000b4a:	e9c6 4800 	strd	r4, r8, [r6]
 8000b4e:	e7dd      	b.n	8000b0c <__udivmoddi4+0xa0>
 8000b50:	b902      	cbnz	r2, 8000b54 <__udivmoddi4+0xe8>
 8000b52:	deff      	udf	#255	; 0xff
 8000b54:	fab2 f282 	clz	r2, r2
 8000b58:	2a00      	cmp	r2, #0
 8000b5a:	f040 808f 	bne.w	8000c7c <__udivmoddi4+0x210>
 8000b5e:	1b49      	subs	r1, r1, r5
 8000b60:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b64:	fa1f f885 	uxth.w	r8, r5
 8000b68:	2701      	movs	r7, #1
 8000b6a:	fbb1 fcfe 	udiv	ip, r1, lr
 8000b6e:	0c23      	lsrs	r3, r4, #16
 8000b70:	fb0e 111c 	mls	r1, lr, ip, r1
 8000b74:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000b78:	fb08 f10c 	mul.w	r1, r8, ip
 8000b7c:	4299      	cmp	r1, r3
 8000b7e:	d907      	bls.n	8000b90 <__udivmoddi4+0x124>
 8000b80:	18eb      	adds	r3, r5, r3
 8000b82:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000b86:	d202      	bcs.n	8000b8e <__udivmoddi4+0x122>
 8000b88:	4299      	cmp	r1, r3
 8000b8a:	f200 80cd 	bhi.w	8000d28 <__udivmoddi4+0x2bc>
 8000b8e:	4684      	mov	ip, r0
 8000b90:	1a59      	subs	r1, r3, r1
 8000b92:	b2a3      	uxth	r3, r4
 8000b94:	fbb1 f0fe 	udiv	r0, r1, lr
 8000b98:	fb0e 1410 	mls	r4, lr, r0, r1
 8000b9c:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000ba0:	fb08 f800 	mul.w	r8, r8, r0
 8000ba4:	45a0      	cmp	r8, r4
 8000ba6:	d907      	bls.n	8000bb8 <__udivmoddi4+0x14c>
 8000ba8:	192c      	adds	r4, r5, r4
 8000baa:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000bae:	d202      	bcs.n	8000bb6 <__udivmoddi4+0x14a>
 8000bb0:	45a0      	cmp	r8, r4
 8000bb2:	f200 80b6 	bhi.w	8000d22 <__udivmoddi4+0x2b6>
 8000bb6:	4618      	mov	r0, r3
 8000bb8:	eba4 0408 	sub.w	r4, r4, r8
 8000bbc:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000bc0:	e79f      	b.n	8000b02 <__udivmoddi4+0x96>
 8000bc2:	f1c7 0c20 	rsb	ip, r7, #32
 8000bc6:	40bb      	lsls	r3, r7
 8000bc8:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000bcc:	ea4e 0e03 	orr.w	lr, lr, r3
 8000bd0:	fa01 f407 	lsl.w	r4, r1, r7
 8000bd4:	fa20 f50c 	lsr.w	r5, r0, ip
 8000bd8:	fa21 f30c 	lsr.w	r3, r1, ip
 8000bdc:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000be0:	4325      	orrs	r5, r4
 8000be2:	fbb3 f9f8 	udiv	r9, r3, r8
 8000be6:	0c2c      	lsrs	r4, r5, #16
 8000be8:	fb08 3319 	mls	r3, r8, r9, r3
 8000bec:	fa1f fa8e 	uxth.w	sl, lr
 8000bf0:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000bf4:	fb09 f40a 	mul.w	r4, r9, sl
 8000bf8:	429c      	cmp	r4, r3
 8000bfa:	fa02 f207 	lsl.w	r2, r2, r7
 8000bfe:	fa00 f107 	lsl.w	r1, r0, r7
 8000c02:	d90b      	bls.n	8000c1c <__udivmoddi4+0x1b0>
 8000c04:	eb1e 0303 	adds.w	r3, lr, r3
 8000c08:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000c0c:	f080 8087 	bcs.w	8000d1e <__udivmoddi4+0x2b2>
 8000c10:	429c      	cmp	r4, r3
 8000c12:	f240 8084 	bls.w	8000d1e <__udivmoddi4+0x2b2>
 8000c16:	f1a9 0902 	sub.w	r9, r9, #2
 8000c1a:	4473      	add	r3, lr
 8000c1c:	1b1b      	subs	r3, r3, r4
 8000c1e:	b2ad      	uxth	r5, r5
 8000c20:	fbb3 f0f8 	udiv	r0, r3, r8
 8000c24:	fb08 3310 	mls	r3, r8, r0, r3
 8000c28:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000c2c:	fb00 fa0a 	mul.w	sl, r0, sl
 8000c30:	45a2      	cmp	sl, r4
 8000c32:	d908      	bls.n	8000c46 <__udivmoddi4+0x1da>
 8000c34:	eb1e 0404 	adds.w	r4, lr, r4
 8000c38:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c3c:	d26b      	bcs.n	8000d16 <__udivmoddi4+0x2aa>
 8000c3e:	45a2      	cmp	sl, r4
 8000c40:	d969      	bls.n	8000d16 <__udivmoddi4+0x2aa>
 8000c42:	3802      	subs	r0, #2
 8000c44:	4474      	add	r4, lr
 8000c46:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000c4a:	fba0 8902 	umull	r8, r9, r0, r2
 8000c4e:	eba4 040a 	sub.w	r4, r4, sl
 8000c52:	454c      	cmp	r4, r9
 8000c54:	46c2      	mov	sl, r8
 8000c56:	464b      	mov	r3, r9
 8000c58:	d354      	bcc.n	8000d04 <__udivmoddi4+0x298>
 8000c5a:	d051      	beq.n	8000d00 <__udivmoddi4+0x294>
 8000c5c:	2e00      	cmp	r6, #0
 8000c5e:	d069      	beq.n	8000d34 <__udivmoddi4+0x2c8>
 8000c60:	ebb1 050a 	subs.w	r5, r1, sl
 8000c64:	eb64 0403 	sbc.w	r4, r4, r3
 8000c68:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000c6c:	40fd      	lsrs	r5, r7
 8000c6e:	40fc      	lsrs	r4, r7
 8000c70:	ea4c 0505 	orr.w	r5, ip, r5
 8000c74:	e9c6 5400 	strd	r5, r4, [r6]
 8000c78:	2700      	movs	r7, #0
 8000c7a:	e747      	b.n	8000b0c <__udivmoddi4+0xa0>
 8000c7c:	f1c2 0320 	rsb	r3, r2, #32
 8000c80:	fa20 f703 	lsr.w	r7, r0, r3
 8000c84:	4095      	lsls	r5, r2
 8000c86:	fa01 f002 	lsl.w	r0, r1, r2
 8000c8a:	fa21 f303 	lsr.w	r3, r1, r3
 8000c8e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c92:	4338      	orrs	r0, r7
 8000c94:	0c01      	lsrs	r1, r0, #16
 8000c96:	fbb3 f7fe 	udiv	r7, r3, lr
 8000c9a:	fa1f f885 	uxth.w	r8, r5
 8000c9e:	fb0e 3317 	mls	r3, lr, r7, r3
 8000ca2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000ca6:	fb07 f308 	mul.w	r3, r7, r8
 8000caa:	428b      	cmp	r3, r1
 8000cac:	fa04 f402 	lsl.w	r4, r4, r2
 8000cb0:	d907      	bls.n	8000cc2 <__udivmoddi4+0x256>
 8000cb2:	1869      	adds	r1, r5, r1
 8000cb4:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000cb8:	d22f      	bcs.n	8000d1a <__udivmoddi4+0x2ae>
 8000cba:	428b      	cmp	r3, r1
 8000cbc:	d92d      	bls.n	8000d1a <__udivmoddi4+0x2ae>
 8000cbe:	3f02      	subs	r7, #2
 8000cc0:	4429      	add	r1, r5
 8000cc2:	1acb      	subs	r3, r1, r3
 8000cc4:	b281      	uxth	r1, r0
 8000cc6:	fbb3 f0fe 	udiv	r0, r3, lr
 8000cca:	fb0e 3310 	mls	r3, lr, r0, r3
 8000cce:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000cd2:	fb00 f308 	mul.w	r3, r0, r8
 8000cd6:	428b      	cmp	r3, r1
 8000cd8:	d907      	bls.n	8000cea <__udivmoddi4+0x27e>
 8000cda:	1869      	adds	r1, r5, r1
 8000cdc:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000ce0:	d217      	bcs.n	8000d12 <__udivmoddi4+0x2a6>
 8000ce2:	428b      	cmp	r3, r1
 8000ce4:	d915      	bls.n	8000d12 <__udivmoddi4+0x2a6>
 8000ce6:	3802      	subs	r0, #2
 8000ce8:	4429      	add	r1, r5
 8000cea:	1ac9      	subs	r1, r1, r3
 8000cec:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000cf0:	e73b      	b.n	8000b6a <__udivmoddi4+0xfe>
 8000cf2:	4637      	mov	r7, r6
 8000cf4:	4630      	mov	r0, r6
 8000cf6:	e709      	b.n	8000b0c <__udivmoddi4+0xa0>
 8000cf8:	4607      	mov	r7, r0
 8000cfa:	e6e7      	b.n	8000acc <__udivmoddi4+0x60>
 8000cfc:	4618      	mov	r0, r3
 8000cfe:	e6fb      	b.n	8000af8 <__udivmoddi4+0x8c>
 8000d00:	4541      	cmp	r1, r8
 8000d02:	d2ab      	bcs.n	8000c5c <__udivmoddi4+0x1f0>
 8000d04:	ebb8 0a02 	subs.w	sl, r8, r2
 8000d08:	eb69 020e 	sbc.w	r2, r9, lr
 8000d0c:	3801      	subs	r0, #1
 8000d0e:	4613      	mov	r3, r2
 8000d10:	e7a4      	b.n	8000c5c <__udivmoddi4+0x1f0>
 8000d12:	4660      	mov	r0, ip
 8000d14:	e7e9      	b.n	8000cea <__udivmoddi4+0x27e>
 8000d16:	4618      	mov	r0, r3
 8000d18:	e795      	b.n	8000c46 <__udivmoddi4+0x1da>
 8000d1a:	4667      	mov	r7, ip
 8000d1c:	e7d1      	b.n	8000cc2 <__udivmoddi4+0x256>
 8000d1e:	4681      	mov	r9, r0
 8000d20:	e77c      	b.n	8000c1c <__udivmoddi4+0x1b0>
 8000d22:	3802      	subs	r0, #2
 8000d24:	442c      	add	r4, r5
 8000d26:	e747      	b.n	8000bb8 <__udivmoddi4+0x14c>
 8000d28:	f1ac 0c02 	sub.w	ip, ip, #2
 8000d2c:	442b      	add	r3, r5
 8000d2e:	e72f      	b.n	8000b90 <__udivmoddi4+0x124>
 8000d30:	4638      	mov	r0, r7
 8000d32:	e708      	b.n	8000b46 <__udivmoddi4+0xda>
 8000d34:	4637      	mov	r7, r6
 8000d36:	e6e9      	b.n	8000b0c <__udivmoddi4+0xa0>

08000d38 <__aeabi_idiv0>:
 8000d38:	4770      	bx	lr
 8000d3a:	bf00      	nop

08000d3c <memcpy>:
 8000d3c:	4684      	mov	ip, r0
 8000d3e:	ea41 0300 	orr.w	r3, r1, r0
 8000d42:	f013 0303 	ands.w	r3, r3, #3
 8000d46:	d16d      	bne.n	8000e24 <memcpy+0xe8>
 8000d48:	3a40      	subs	r2, #64	; 0x40
 8000d4a:	d341      	bcc.n	8000dd0 <memcpy+0x94>
 8000d4c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d50:	f840 3b04 	str.w	r3, [r0], #4
 8000d54:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d58:	f840 3b04 	str.w	r3, [r0], #4
 8000d5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d60:	f840 3b04 	str.w	r3, [r0], #4
 8000d64:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d68:	f840 3b04 	str.w	r3, [r0], #4
 8000d6c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d70:	f840 3b04 	str.w	r3, [r0], #4
 8000d74:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d78:	f840 3b04 	str.w	r3, [r0], #4
 8000d7c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d80:	f840 3b04 	str.w	r3, [r0], #4
 8000d84:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d88:	f840 3b04 	str.w	r3, [r0], #4
 8000d8c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d90:	f840 3b04 	str.w	r3, [r0], #4
 8000d94:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d98:	f840 3b04 	str.w	r3, [r0], #4
 8000d9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000da0:	f840 3b04 	str.w	r3, [r0], #4
 8000da4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000da8:	f840 3b04 	str.w	r3, [r0], #4
 8000dac:	f851 3b04 	ldr.w	r3, [r1], #4
 8000db0:	f840 3b04 	str.w	r3, [r0], #4
 8000db4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000db8:	f840 3b04 	str.w	r3, [r0], #4
 8000dbc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dc0:	f840 3b04 	str.w	r3, [r0], #4
 8000dc4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dc8:	f840 3b04 	str.w	r3, [r0], #4
 8000dcc:	3a40      	subs	r2, #64	; 0x40
 8000dce:	d2bd      	bcs.n	8000d4c <memcpy+0x10>
 8000dd0:	3230      	adds	r2, #48	; 0x30
 8000dd2:	d311      	bcc.n	8000df8 <memcpy+0xbc>
 8000dd4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dd8:	f840 3b04 	str.w	r3, [r0], #4
 8000ddc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000de0:	f840 3b04 	str.w	r3, [r0], #4
 8000de4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000de8:	f840 3b04 	str.w	r3, [r0], #4
 8000dec:	f851 3b04 	ldr.w	r3, [r1], #4
 8000df0:	f840 3b04 	str.w	r3, [r0], #4
 8000df4:	3a10      	subs	r2, #16
 8000df6:	d2ed      	bcs.n	8000dd4 <memcpy+0x98>
 8000df8:	320c      	adds	r2, #12
 8000dfa:	d305      	bcc.n	8000e08 <memcpy+0xcc>
 8000dfc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e00:	f840 3b04 	str.w	r3, [r0], #4
 8000e04:	3a04      	subs	r2, #4
 8000e06:	d2f9      	bcs.n	8000dfc <memcpy+0xc0>
 8000e08:	3204      	adds	r2, #4
 8000e0a:	d008      	beq.n	8000e1e <memcpy+0xe2>
 8000e0c:	07d2      	lsls	r2, r2, #31
 8000e0e:	bf1c      	itt	ne
 8000e10:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000e14:	f800 3b01 	strbne.w	r3, [r0], #1
 8000e18:	d301      	bcc.n	8000e1e <memcpy+0xe2>
 8000e1a:	880b      	ldrh	r3, [r1, #0]
 8000e1c:	8003      	strh	r3, [r0, #0]
 8000e1e:	4660      	mov	r0, ip
 8000e20:	4770      	bx	lr
 8000e22:	bf00      	nop
 8000e24:	2a08      	cmp	r2, #8
 8000e26:	d313      	bcc.n	8000e50 <memcpy+0x114>
 8000e28:	078b      	lsls	r3, r1, #30
 8000e2a:	d08d      	beq.n	8000d48 <memcpy+0xc>
 8000e2c:	f010 0303 	ands.w	r3, r0, #3
 8000e30:	d08a      	beq.n	8000d48 <memcpy+0xc>
 8000e32:	f1c3 0304 	rsb	r3, r3, #4
 8000e36:	1ad2      	subs	r2, r2, r3
 8000e38:	07db      	lsls	r3, r3, #31
 8000e3a:	bf1c      	itt	ne
 8000e3c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000e40:	f800 3b01 	strbne.w	r3, [r0], #1
 8000e44:	d380      	bcc.n	8000d48 <memcpy+0xc>
 8000e46:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000e4a:	f820 3b02 	strh.w	r3, [r0], #2
 8000e4e:	e77b      	b.n	8000d48 <memcpy+0xc>
 8000e50:	3a04      	subs	r2, #4
 8000e52:	d3d9      	bcc.n	8000e08 <memcpy+0xcc>
 8000e54:	3a01      	subs	r2, #1
 8000e56:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000e5a:	f800 3b01 	strb.w	r3, [r0], #1
 8000e5e:	d2f9      	bcs.n	8000e54 <memcpy+0x118>
 8000e60:	780b      	ldrb	r3, [r1, #0]
 8000e62:	7003      	strb	r3, [r0, #0]
 8000e64:	784b      	ldrb	r3, [r1, #1]
 8000e66:	7043      	strb	r3, [r0, #1]
 8000e68:	788b      	ldrb	r3, [r1, #2]
 8000e6a:	7083      	strb	r3, [r0, #2]
 8000e6c:	4660      	mov	r0, ip
 8000e6e:	4770      	bx	lr
	...

08000e80 <strlen>:
 8000e80:	f890 f000 	pld	[r0]
 8000e84:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000e88:	f020 0107 	bic.w	r1, r0, #7
 8000e8c:	f06f 0c00 	mvn.w	ip, #0
 8000e90:	f010 0407 	ands.w	r4, r0, #7
 8000e94:	f891 f020 	pld	[r1, #32]
 8000e98:	f040 8049 	bne.w	8000f2e <strlen+0xae>
 8000e9c:	f04f 0400 	mov.w	r4, #0
 8000ea0:	f06f 0007 	mvn.w	r0, #7
 8000ea4:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000ea8:	f891 f040 	pld	[r1, #64]	; 0x40
 8000eac:	f100 0008 	add.w	r0, r0, #8
 8000eb0:	fa82 f24c 	uadd8	r2, r2, ip
 8000eb4:	faa4 f28c 	sel	r2, r4, ip
 8000eb8:	fa83 f34c 	uadd8	r3, r3, ip
 8000ebc:	faa2 f38c 	sel	r3, r2, ip
 8000ec0:	bb4b      	cbnz	r3, 8000f16 <strlen+0x96>
 8000ec2:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000ec6:	fa82 f24c 	uadd8	r2, r2, ip
 8000eca:	f100 0008 	add.w	r0, r0, #8
 8000ece:	faa4 f28c 	sel	r2, r4, ip
 8000ed2:	fa83 f34c 	uadd8	r3, r3, ip
 8000ed6:	faa2 f38c 	sel	r3, r2, ip
 8000eda:	b9e3      	cbnz	r3, 8000f16 <strlen+0x96>
 8000edc:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000ee0:	fa82 f24c 	uadd8	r2, r2, ip
 8000ee4:	f100 0008 	add.w	r0, r0, #8
 8000ee8:	faa4 f28c 	sel	r2, r4, ip
 8000eec:	fa83 f34c 	uadd8	r3, r3, ip
 8000ef0:	faa2 f38c 	sel	r3, r2, ip
 8000ef4:	b97b      	cbnz	r3, 8000f16 <strlen+0x96>
 8000ef6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8000efa:	f101 0120 	add.w	r1, r1, #32
 8000efe:	fa82 f24c 	uadd8	r2, r2, ip
 8000f02:	f100 0008 	add.w	r0, r0, #8
 8000f06:	faa4 f28c 	sel	r2, r4, ip
 8000f0a:	fa83 f34c 	uadd8	r3, r3, ip
 8000f0e:	faa2 f38c 	sel	r3, r2, ip
 8000f12:	2b00      	cmp	r3, #0
 8000f14:	d0c6      	beq.n	8000ea4 <strlen+0x24>
 8000f16:	2a00      	cmp	r2, #0
 8000f18:	bf04      	itt	eq
 8000f1a:	3004      	addeq	r0, #4
 8000f1c:	461a      	moveq	r2, r3
 8000f1e:	ba12      	rev	r2, r2
 8000f20:	fab2 f282 	clz	r2, r2
 8000f24:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8000f28:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8000f2c:	4770      	bx	lr
 8000f2e:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000f32:	f004 0503 	and.w	r5, r4, #3
 8000f36:	f1c4 0000 	rsb	r0, r4, #0
 8000f3a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8000f3e:	f014 0f04 	tst.w	r4, #4
 8000f42:	f891 f040 	pld	[r1, #64]	; 0x40
 8000f46:	fa0c f505 	lsl.w	r5, ip, r5
 8000f4a:	ea62 0205 	orn	r2, r2, r5
 8000f4e:	bf1c      	itt	ne
 8000f50:	ea63 0305 	ornne	r3, r3, r5
 8000f54:	4662      	movne	r2, ip
 8000f56:	f04f 0400 	mov.w	r4, #0
 8000f5a:	e7a9      	b.n	8000eb0 <strlen+0x30>
 8000f5c:	0000      	movs	r0, r0
	...

08000f60 <memchr>:
 8000f60:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000f64:	2a10      	cmp	r2, #16
 8000f66:	db2b      	blt.n	8000fc0 <memchr+0x60>
 8000f68:	f010 0f07 	tst.w	r0, #7
 8000f6c:	d008      	beq.n	8000f80 <memchr+0x20>
 8000f6e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000f72:	3a01      	subs	r2, #1
 8000f74:	428b      	cmp	r3, r1
 8000f76:	d02d      	beq.n	8000fd4 <memchr+0x74>
 8000f78:	f010 0f07 	tst.w	r0, #7
 8000f7c:	b342      	cbz	r2, 8000fd0 <memchr+0x70>
 8000f7e:	d1f6      	bne.n	8000f6e <memchr+0xe>
 8000f80:	b4f0      	push	{r4, r5, r6, r7}
 8000f82:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000f86:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 8000f8a:	f022 0407 	bic.w	r4, r2, #7
 8000f8e:	f07f 0700 	mvns.w	r7, #0
 8000f92:	2300      	movs	r3, #0
 8000f94:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000f98:	3c08      	subs	r4, #8
 8000f9a:	ea85 0501 	eor.w	r5, r5, r1
 8000f9e:	ea86 0601 	eor.w	r6, r6, r1
 8000fa2:	fa85 f547 	uadd8	r5, r5, r7
 8000fa6:	faa3 f587 	sel	r5, r3, r7
 8000faa:	fa86 f647 	uadd8	r6, r6, r7
 8000fae:	faa5 f687 	sel	r6, r5, r7
 8000fb2:	b98e      	cbnz	r6, 8000fd8 <memchr+0x78>
 8000fb4:	d1ee      	bne.n	8000f94 <memchr+0x34>
 8000fb6:	bcf0      	pop	{r4, r5, r6, r7}
 8000fb8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000fbc:	f002 0207 	and.w	r2, r2, #7
 8000fc0:	b132      	cbz	r2, 8000fd0 <memchr+0x70>
 8000fc2:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000fc6:	3a01      	subs	r2, #1
 8000fc8:	ea83 0301 	eor.w	r3, r3, r1
 8000fcc:	b113      	cbz	r3, 8000fd4 <memchr+0x74>
 8000fce:	d1f8      	bne.n	8000fc2 <memchr+0x62>
 8000fd0:	2000      	movs	r0, #0
 8000fd2:	4770      	bx	lr
 8000fd4:	3801      	subs	r0, #1
 8000fd6:	4770      	bx	lr
 8000fd8:	2d00      	cmp	r5, #0
 8000fda:	bf06      	itte	eq
 8000fdc:	4635      	moveq	r5, r6
 8000fde:	3803      	subeq	r0, #3
 8000fe0:	3807      	subne	r0, #7
 8000fe2:	f015 0f01 	tst.w	r5, #1
 8000fe6:	d107      	bne.n	8000ff8 <memchr+0x98>
 8000fe8:	3001      	adds	r0, #1
 8000fea:	f415 7f80 	tst.w	r5, #256	; 0x100
 8000fee:	bf02      	ittt	eq
 8000ff0:	3001      	addeq	r0, #1
 8000ff2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000ff6:	3001      	addeq	r0, #1
 8000ff8:	bcf0      	pop	{r4, r5, r6, r7}
 8000ffa:	3801      	subs	r0, #1
 8000ffc:	4770      	bx	lr
 8000ffe:	bf00      	nop

08001000 <__gedf2>:
 8001000:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8001004:	e006      	b.n	8001014 <__cmpdf2+0x4>
 8001006:	bf00      	nop

08001008 <__ledf2>:
 8001008:	f04f 0c01 	mov.w	ip, #1
 800100c:	e002      	b.n	8001014 <__cmpdf2+0x4>
 800100e:	bf00      	nop

08001010 <__cmpdf2>:
 8001010:	f04f 0c01 	mov.w	ip, #1
 8001014:	f84d cd04 	str.w	ip, [sp, #-4]!
 8001018:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800101c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001020:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001024:	bf18      	it	ne
 8001026:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 800102a:	d01b      	beq.n	8001064 <__cmpdf2+0x54>
 800102c:	b001      	add	sp, #4
 800102e:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8001032:	bf0c      	ite	eq
 8001034:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8001038:	ea91 0f03 	teqne	r1, r3
 800103c:	bf02      	ittt	eq
 800103e:	ea90 0f02 	teqeq	r0, r2
 8001042:	2000      	moveq	r0, #0
 8001044:	4770      	bxeq	lr
 8001046:	f110 0f00 	cmn.w	r0, #0
 800104a:	ea91 0f03 	teq	r1, r3
 800104e:	bf58      	it	pl
 8001050:	4299      	cmppl	r1, r3
 8001052:	bf08      	it	eq
 8001054:	4290      	cmpeq	r0, r2
 8001056:	bf2c      	ite	cs
 8001058:	17d8      	asrcs	r0, r3, #31
 800105a:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 800105e:	f040 0001 	orr.w	r0, r0, #1
 8001062:	4770      	bx	lr
 8001064:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001068:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800106c:	d102      	bne.n	8001074 <__cmpdf2+0x64>
 800106e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8001072:	d107      	bne.n	8001084 <__cmpdf2+0x74>
 8001074:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001078:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800107c:	d1d6      	bne.n	800102c <__cmpdf2+0x1c>
 800107e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8001082:	d0d3      	beq.n	800102c <__cmpdf2+0x1c>
 8001084:	f85d 0b04 	ldr.w	r0, [sp], #4
 8001088:	4770      	bx	lr
 800108a:	bf00      	nop

0800108c <__aeabi_cdrcmple>:
 800108c:	4684      	mov	ip, r0
 800108e:	4610      	mov	r0, r2
 8001090:	4662      	mov	r2, ip
 8001092:	468c      	mov	ip, r1
 8001094:	4619      	mov	r1, r3
 8001096:	4663      	mov	r3, ip
 8001098:	e000      	b.n	800109c <__aeabi_cdcmpeq>
 800109a:	bf00      	nop

0800109c <__aeabi_cdcmpeq>:
 800109c:	b501      	push	{r0, lr}
 800109e:	f7ff ffb7 	bl	8001010 <__cmpdf2>
 80010a2:	2800      	cmp	r0, #0
 80010a4:	bf48      	it	mi
 80010a6:	f110 0f00 	cmnmi.w	r0, #0
 80010aa:	bd01      	pop	{r0, pc}

080010ac <__aeabi_dcmpeq>:
 80010ac:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010b0:	f7ff fff4 	bl	800109c <__aeabi_cdcmpeq>
 80010b4:	bf0c      	ite	eq
 80010b6:	2001      	moveq	r0, #1
 80010b8:	2000      	movne	r0, #0
 80010ba:	f85d fb08 	ldr.w	pc, [sp], #8
 80010be:	bf00      	nop

080010c0 <__aeabi_dcmplt>:
 80010c0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010c4:	f7ff ffea 	bl	800109c <__aeabi_cdcmpeq>
 80010c8:	bf34      	ite	cc
 80010ca:	2001      	movcc	r0, #1
 80010cc:	2000      	movcs	r0, #0
 80010ce:	f85d fb08 	ldr.w	pc, [sp], #8
 80010d2:	bf00      	nop

080010d4 <__aeabi_dcmple>:
 80010d4:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010d8:	f7ff ffe0 	bl	800109c <__aeabi_cdcmpeq>
 80010dc:	bf94      	ite	ls
 80010de:	2001      	movls	r0, #1
 80010e0:	2000      	movhi	r0, #0
 80010e2:	f85d fb08 	ldr.w	pc, [sp], #8
 80010e6:	bf00      	nop

080010e8 <__aeabi_dcmpge>:
 80010e8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010ec:	f7ff ffce 	bl	800108c <__aeabi_cdrcmple>
 80010f0:	bf94      	ite	ls
 80010f2:	2001      	movls	r0, #1
 80010f4:	2000      	movhi	r0, #0
 80010f6:	f85d fb08 	ldr.w	pc, [sp], #8
 80010fa:	bf00      	nop

080010fc <__aeabi_dcmpgt>:
 80010fc:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001100:	f7ff ffc4 	bl	800108c <__aeabi_cdrcmple>
 8001104:	bf34      	ite	cc
 8001106:	2001      	movcc	r0, #1
 8001108:	2000      	movcs	r0, #0
 800110a:	f85d fb08 	ldr.w	pc, [sp], #8
 800110e:	bf00      	nop

08001110 <__aeabi_dcmpun>:
 8001110:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001114:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001118:	d102      	bne.n	8001120 <__aeabi_dcmpun+0x10>
 800111a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800111e:	d10a      	bne.n	8001136 <__aeabi_dcmpun+0x26>
 8001120:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001124:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001128:	d102      	bne.n	8001130 <__aeabi_dcmpun+0x20>
 800112a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800112e:	d102      	bne.n	8001136 <__aeabi_dcmpun+0x26>
 8001130:	f04f 0000 	mov.w	r0, #0
 8001134:	4770      	bx	lr
 8001136:	f04f 0001 	mov.w	r0, #1
 800113a:	4770      	bx	lr

0800113c <__aeabi_d2iz>:
 800113c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8001140:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8001144:	d215      	bcs.n	8001172 <__aeabi_d2iz+0x36>
 8001146:	d511      	bpl.n	800116c <__aeabi_d2iz+0x30>
 8001148:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 800114c:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8001150:	d912      	bls.n	8001178 <__aeabi_d2iz+0x3c>
 8001152:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8001156:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 800115a:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800115e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8001162:	fa23 f002 	lsr.w	r0, r3, r2
 8001166:	bf18      	it	ne
 8001168:	4240      	negne	r0, r0
 800116a:	4770      	bx	lr
 800116c:	f04f 0000 	mov.w	r0, #0
 8001170:	4770      	bx	lr
 8001172:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8001176:	d105      	bne.n	8001184 <__aeabi_d2iz+0x48>
 8001178:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 800117c:	bf08      	it	eq
 800117e:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8001182:	4770      	bx	lr
 8001184:	f04f 0000 	mov.w	r0, #0
 8001188:	4770      	bx	lr
 800118a:	bf00      	nop

0800118c <HAL_Init>:
 800118c:	b580      	push	{r7, lr}
 800118e:	466f      	mov	r7, sp
 8001190:	2003      	movs	r0, #3
 8001192:	f000 f819 	bl	80011c8 <HAL_NVIC_SetPriorityGrouping>
 8001196:	200f      	movs	r0, #15
 8001198:	f000 fb84 	bl	80018a4 <HAL_InitTick>
 800119c:	2800      	cmp	r0, #0
 800119e:	bf1c      	itt	ne
 80011a0:	2001      	movne	r0, #1
 80011a2:	bd80      	popne	{r7, pc}
 80011a4:	f000 f94b 	bl	800143e <HAL_MspInit>
 80011a8:	2000      	movs	r0, #0
 80011aa:	bd80      	pop	{r7, pc}

080011ac <HAL_IncTick>:
 80011ac:	f640 20c4 	movw	r0, #2756	; 0xac4
 80011b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011b4:	6801      	ldr	r1, [r0, #0]
 80011b6:	3101      	adds	r1, #1
 80011b8:	6001      	str	r1, [r0, #0]
 80011ba:	4770      	bx	lr

080011bc <HAL_GetTick>:
 80011bc:	f640 20c4 	movw	r0, #2756	; 0xac4
 80011c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011c4:	6800      	ldr	r0, [r0, #0]
 80011c6:	4770      	bx	lr

080011c8 <HAL_NVIC_SetPriorityGrouping>:
 80011c8:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011cc:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011d0:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011d4:	680a      	ldr	r2, [r1, #0]
 80011d6:	401a      	ands	r2, r3
 80011d8:	f360 220a 	bfi	r2, r0, #8, #3
 80011dc:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011e0:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011e4:	6008      	str	r0, [r1, #0]
 80011e6:	4770      	bx	lr

080011e8 <HAL_NVIC_SetPriority>:
 80011e8:	b580      	push	{r7, lr}
 80011ea:	466f      	mov	r7, sp
 80011ec:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011f0:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011f4:	2800      	cmp	r0, #0
 80011f6:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011fa:	f000 030f 	and.w	r3, r0, #15
 80011fe:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001202:	f1a3 0304 	sub.w	r3, r3, #4
 8001206:	4473      	add	r3, lr
 8001208:	bfb8      	it	lt
 800120a:	f103 0c0c 	addlt.w	ip, r3, #12
 800120e:	f8de 0000 	ldr.w	r0, [lr]
 8001212:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001216:	f100 0e04 	add.w	lr, r0, #4
 800121a:	1ec3      	subs	r3, r0, #3
 800121c:	f080 0007 	eor.w	r0, r0, #7
 8001220:	f1be 0f07 	cmp.w	lr, #7
 8001224:	f04f 0e01 	mov.w	lr, #1
 8001228:	bf38      	it	cc
 800122a:	2300      	movcc	r3, #0
 800122c:	2804      	cmp	r0, #4
 800122e:	bf28      	it	cs
 8001230:	2004      	movcs	r0, #4
 8001232:	fa0e f000 	lsl.w	r0, lr, r0
 8001236:	3801      	subs	r0, #1
 8001238:	4008      	ands	r0, r1
 800123a:	fa0e f103 	lsl.w	r1, lr, r3
 800123e:	310f      	adds	r1, #15
 8001240:	4098      	lsls	r0, r3
 8001242:	4011      	ands	r1, r2
 8001244:	4308      	orrs	r0, r1
 8001246:	0100      	lsls	r0, r0, #4
 8001248:	f88c 0000 	strb.w	r0, [ip]
 800124c:	bd80      	pop	{r7, pc}

0800124e <HAL_NVIC_EnableIRQ>:
 800124e:	f000 011f 	and.w	r1, r0, #31
 8001252:	2201      	movs	r2, #1
 8001254:	0940      	lsrs	r0, r0, #5
 8001256:	fa02 f101 	lsl.w	r1, r2, r1
 800125a:	f24e 1200 	movw	r2, #57600	; 0xe100
 800125e:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001262:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001266:	4770      	bx	lr

08001268 <HAL_SYSTICK_IRQHandler>:
 8001268:	f000 b800 	b.w	800126c <HAL_SYSTICK_Callback>

0800126c <HAL_SYSTICK_Callback>:
 800126c:	4770      	bx	lr

0800126e <HAL_GPIO_Init>:
 800126e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001270:	af03      	add	r7, sp, #12
 8001272:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001276:	b082      	sub	sp, #8
 8001278:	680e      	ldr	r6, [r1, #0]
 800127a:	2e00      	cmp	r6, #0
 800127c:	f000 80db 	beq.w	8001436 <HAL_GPIO_Init+0x1c8>
 8001280:	f641 0200 	movw	r2, #6144	; 0x1800
 8001284:	2507      	movs	r5, #7
 8001286:	f04f 0801 	mov.w	r8, #1
 800128a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800128e:	4290      	cmp	r0, r2
 8001290:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001294:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001298:	bf08      	it	eq
 800129a:	2506      	moveq	r5, #6
 800129c:	2b06      	cmp	r3, #6
 800129e:	bf38      	it	cc
 80012a0:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012a4:	2200      	movs	r2, #0
 80012a6:	9500      	str	r5, [sp, #0]
 80012a8:	2500      	movs	r5, #0
 80012aa:	f1a8 0a01 	sub.w	sl, r8, #1
 80012ae:	2301      	movs	r3, #1
 80012b0:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012b4:	ea16 090b 	ands.w	r9, r6, fp
 80012b8:	f000 80b4 	beq.w	8001424 <HAL_GPIO_Init+0x1b6>
 80012bc:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012c0:	f04e 0610 	orr.w	r6, lr, #16
 80012c4:	2e12      	cmp	r6, #18
 80012c6:	d115      	bne.n	80012f4 <HAL_GPIO_Init+0x86>
 80012c8:	f005 061c 	and.w	r6, r5, #28
 80012cc:	230f      	movs	r3, #15
 80012ce:	fa03 fc06 	lsl.w	ip, r3, r6
 80012d2:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012d6:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012da:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012de:	4404      	add	r4, r0
 80012e0:	6a23      	ldr	r3, [r4, #32]
 80012e2:	ea23 0c0c 	bic.w	ip, r3, ip
 80012e6:	690b      	ldr	r3, [r1, #16]
 80012e8:	40b3      	lsls	r3, r6
 80012ea:	ea43 030c 	orr.w	r3, r3, ip
 80012ee:	6223      	str	r3, [r4, #32]
 80012f0:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012f4:	6806      	ldr	r6, [r0, #0]
 80012f6:	2403      	movs	r4, #3
 80012f8:	f00e 0c03 	and.w	ip, lr, #3
 80012fc:	f1be 0f12 	cmp.w	lr, #18
 8001300:	fa04 f402 	lsl.w	r4, r4, r2
 8001304:	fa0c f302 	lsl.w	r3, ip, r2
 8001308:	ea26 0604 	bic.w	r6, r6, r4
 800130c:	ea43 0306 	orr.w	r3, r3, r6
 8001310:	ea6f 0604 	mvn.w	r6, r4
 8001314:	6003      	str	r3, [r0, #0]
 8001316:	d816      	bhi.n	8001346 <HAL_GPIO_Init+0xd8>
 8001318:	2301      	movs	r3, #1
 800131a:	fa03 f30e 	lsl.w	r3, r3, lr
 800131e:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001322:	bf1f      	itttt	ne
 8001324:	6883      	ldrne	r3, [r0, #8]
 8001326:	4033      	andne	r3, r6
 8001328:	68cc      	ldrne	r4, [r1, #12]
 800132a:	4094      	lslne	r4, r2
 800132c:	bf1f      	itttt	ne
 800132e:	4323      	orrne	r3, r4
 8001330:	6083      	strne	r3, [r0, #8]
 8001332:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001336:	fa03 f30a 	lslne.w	r3, r3, sl
 800133a:	bf1f      	itttt	ne
 800133c:	6844      	ldrne	r4, [r0, #4]
 800133e:	ea24 040b 	bicne.w	r4, r4, fp
 8001342:	4323      	orrne	r3, r4
 8001344:	6043      	strne	r3, [r0, #4]
 8001346:	f1bc 0f03 	cmp.w	ip, #3
 800134a:	d108      	bne.n	800135e <HAL_GPIO_Init+0xf0>
 800134c:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001350:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001352:	fa03 f30a 	lsl.w	r3, r3, sl
 8001356:	ea24 040b 	bic.w	r4, r4, fp
 800135a:	4323      	orrs	r3, r4
 800135c:	62c3      	str	r3, [r0, #44]	; 0x2c
 800135e:	68c3      	ldr	r3, [r0, #12]
 8001360:	4033      	ands	r3, r6
 8001362:	688e      	ldr	r6, [r1, #8]
 8001364:	4096      	lsls	r6, r2
 8001366:	4333      	orrs	r3, r6
 8001368:	60c3      	str	r3, [r0, #12]
 800136a:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800136e:	d559      	bpl.n	8001424 <HAL_GPIO_Init+0x1b6>
 8001370:	f241 0360 	movw	r3, #4192	; 0x1060
 8001374:	f005 040c 	and.w	r4, r5, #12
 8001378:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800137c:	461e      	mov	r6, r3
 800137e:	6833      	ldr	r3, [r6, #0]
 8001380:	f043 0301 	orr.w	r3, r3, #1
 8001384:	6033      	str	r3, [r6, #0]
 8001386:	6833      	ldr	r3, [r6, #0]
 8001388:	f240 4600 	movw	r6, #1024	; 0x400
 800138c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001390:	46b6      	mov	lr, r6
 8001392:	f003 0301 	and.w	r3, r3, #1
 8001396:	9301      	str	r3, [sp, #4]
 8001398:	f02a 0303 	bic.w	r3, sl, #3
 800139c:	9e01      	ldr	r6, [sp, #4]
 800139e:	4473      	add	r3, lr
 80013a0:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013a4:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013a8:	46b2      	mov	sl, r6
 80013aa:	260f      	movs	r6, #15
 80013ac:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013b0:	40a6      	lsls	r6, r4
 80013b2:	ea2c 0c06 	bic.w	ip, ip, r6
 80013b6:	9e00      	ldr	r6, [sp, #0]
 80013b8:	fa06 f404 	lsl.w	r4, r6, r4
 80013bc:	ea4c 0604 	orr.w	r6, ip, r4
 80013c0:	f843 600a 	str.w	r6, [r3, sl]
 80013c4:	f8de 3000 	ldr.w	r3, [lr]
 80013c8:	684e      	ldr	r6, [r1, #4]
 80013ca:	ea23 0309 	bic.w	r3, r3, r9
 80013ce:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013d2:	bf18      	it	ne
 80013d4:	ea43 0309 	orrne.w	r3, r3, r9
 80013d8:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013dc:	f8ce 3000 	str.w	r3, [lr]
 80013e0:	f8de 3004 	ldr.w	r3, [lr, #4]
 80013e4:	ea23 0309 	bic.w	r3, r3, r9
 80013e8:	bf18      	it	ne
 80013ea:	ea43 0309 	orrne.w	r3, r3, r9
 80013ee:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 80013f2:	f8ce 3004 	str.w	r3, [lr, #4]
 80013f6:	f8de 3008 	ldr.w	r3, [lr, #8]
 80013fa:	ea23 0309 	bic.w	r3, r3, r9
 80013fe:	bf18      	it	ne
 8001400:	ea43 0309 	orrne.w	r3, r3, r9
 8001404:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001408:	f8ce 3008 	str.w	r3, [lr, #8]
 800140c:	f240 430c 	movw	r3, #1036	; 0x40c
 8001410:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001414:	461c      	mov	r4, r3
 8001416:	6823      	ldr	r3, [r4, #0]
 8001418:	ea23 0309 	bic.w	r3, r3, r9
 800141c:	bf18      	it	ne
 800141e:	ea43 0309 	orrne.w	r3, r3, r9
 8001422:	6023      	str	r3, [r4, #0]
 8001424:	680e      	ldr	r6, [r1, #0]
 8001426:	3202      	adds	r2, #2
 8001428:	3504      	adds	r5, #4
 800142a:	fa36 f308 	lsrs.w	r3, r6, r8
 800142e:	f108 0801 	add.w	r8, r8, #1
 8001432:	f47f af3a 	bne.w	80012aa <HAL_GPIO_Init+0x3c>
 8001436:	b002      	add	sp, #8
 8001438:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800143c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800143e <HAL_MspInit>:
 800143e:	4770      	bx	lr

08001440 <HAL_RCC_GetSysClockFreq>:
 8001440:	b580      	push	{r7, lr}
 8001442:	466f      	mov	r7, sp
 8001444:	f241 010c 	movw	r1, #4108	; 0x100c
 8001448:	f241 2e00 	movw	lr, #4608	; 0x1200
 800144c:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001450:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001454:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001458:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 800145c:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001460:	6808      	ldr	r0, [r1, #0]
 8001462:	f012 030c 	ands.w	r3, r2, #12
 8001466:	d005      	beq.n	8001474 <HAL_RCC_GetSysClockFreq+0x34>
 8001468:	2b0c      	cmp	r3, #12
 800146a:	bf04      	itt	eq
 800146c:	f000 0003 	andeq.w	r0, r0, #3
 8001470:	2801      	cmpeq	r0, #1
 8001472:	d118      	bne.n	80014a6 <HAL_RCC_GetSysClockFreq+0x66>
 8001474:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001478:	f010 0f08 	tst.w	r0, #8
 800147c:	d103      	bne.n	8001486 <HAL_RCC_GetSysClockFreq+0x46>
 800147e:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001482:	0a00      	lsrs	r0, r0, #8
 8001484:	e002      	b.n	800148c <HAL_RCC_GetSysClockFreq+0x4c>
 8001486:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800148a:	0900      	lsrs	r0, r0, #4
 800148c:	f247 1238 	movw	r2, #28984	; 0x7138
 8001490:	f000 000f 	and.w	r0, r0, #15
 8001494:	2b00      	cmp	r3, #0
 8001496:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149a:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 800149e:	4610      	mov	r0, r2
 80014a0:	bf18      	it	ne
 80014a2:	2000      	movne	r0, #0
 80014a4:	e00b      	b.n	80014be <HAL_RCC_GetSysClockFreq+0x7e>
 80014a6:	f003 000f 	and.w	r0, r3, #15
 80014aa:	2804      	cmp	r0, #4
 80014ac:	bf04      	itt	eq
 80014ae:	4660      	moveq	r0, ip
 80014b0:	bd80      	popeq	{r7, pc}
 80014b2:	2808      	cmp	r0, #8
 80014b4:	bf04      	itt	eq
 80014b6:	4670      	moveq	r0, lr
 80014b8:	bd80      	popeq	{r7, pc}
 80014ba:	2000      	movs	r0, #0
 80014bc:	2200      	movs	r2, #0
 80014be:	2b0c      	cmp	r3, #12
 80014c0:	bf18      	it	ne
 80014c2:	bd80      	popne	{r7, pc}
 80014c4:	6808      	ldr	r0, [r1, #0]
 80014c6:	f000 0303 	and.w	r3, r0, #3
 80014ca:	6808      	ldr	r0, [r1, #0]
 80014cc:	2b03      	cmp	r3, #3
 80014ce:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014d2:	f100 0001 	add.w	r0, r0, #1
 80014d6:	d003      	beq.n	80014e0 <HAL_RCC_GetSysClockFreq+0xa0>
 80014d8:	2b02      	cmp	r3, #2
 80014da:	46e6      	mov	lr, ip
 80014dc:	bf18      	it	ne
 80014de:	4696      	movne	lr, r2
 80014e0:	680a      	ldr	r2, [r1, #0]
 80014e2:	fbbe f0f0 	udiv	r0, lr, r0
 80014e6:	f3c2 2206 	ubfx	r2, r2, #8, #7
 80014ea:	6809      	ldr	r1, [r1, #0]
 80014ec:	4350      	muls	r0, r2
 80014ee:	2202      	movs	r2, #2
 80014f0:	f3c1 6141 	ubfx	r1, r1, #25, #2
 80014f4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80014f8:	fbb0 f0f1 	udiv	r0, r0, r1
 80014fc:	bd80      	pop	{r7, pc}

080014fe <HAL_RCC_GetPCLK1Freq>:
 80014fe:	f240 0038 	movw	r0, #56	; 0x38
 8001502:	f241 0108 	movw	r1, #4104	; 0x1008
 8001506:	f247 1230 	movw	r2, #28976	; 0x7130
 800150a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800150e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001512:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001516:	6800      	ldr	r0, [r0, #0]
 8001518:	6809      	ldr	r1, [r1, #0]
 800151a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800151e:	5c51      	ldrb	r1, [r2, r1]
 8001520:	f001 011f 	and.w	r1, r1, #31
 8001524:	40c8      	lsrs	r0, r1
 8001526:	4770      	bx	lr

08001528 <HAL_RCC_GetPCLK2Freq>:
 8001528:	f240 0038 	movw	r0, #56	; 0x38
 800152c:	f241 0108 	movw	r1, #4104	; 0x1008
 8001530:	f247 1230 	movw	r2, #28976	; 0x7130
 8001534:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001538:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800153c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001540:	6800      	ldr	r0, [r0, #0]
 8001542:	6809      	ldr	r1, [r1, #0]
 8001544:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001548:	5c51      	ldrb	r1, [r2, r1]
 800154a:	f001 011f 	and.w	r1, r1, #31
 800154e:	40c8      	lsrs	r0, r1
 8001550:	4770      	bx	lr

08001552 <HAL_RCC_GetClockConfig>:
 8001552:	220f      	movs	r2, #15
 8001554:	6002      	str	r2, [r0, #0]
 8001556:	f241 0208 	movw	r2, #4104	; 0x1008
 800155a:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800155e:	6813      	ldr	r3, [r2, #0]
 8001560:	f003 0303 	and.w	r3, r3, #3
 8001564:	6043      	str	r3, [r0, #4]
 8001566:	6813      	ldr	r3, [r2, #0]
 8001568:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800156c:	6083      	str	r3, [r0, #8]
 800156e:	6813      	ldr	r3, [r2, #0]
 8001570:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001574:	60c3      	str	r3, [r0, #12]
 8001576:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800157a:	6812      	ldr	r2, [r2, #0]
 800157c:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001580:	6102      	str	r2, [r0, #16]
 8001582:	f242 0000 	movw	r0, #8192	; 0x2000
 8001586:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800158a:	6800      	ldr	r0, [r0, #0]
 800158c:	f000 0007 	and.w	r0, r0, #7
 8001590:	6008      	str	r0, [r1, #0]
 8001592:	4770      	bx	lr

08001594 <HAL_TIM_Base_Init>:
 8001594:	b5d0      	push	{r4, r6, r7, lr}
 8001596:	af02      	add	r7, sp, #8
 8001598:	4604      	mov	r4, r0
 800159a:	2c00      	cmp	r4, #0
 800159c:	bf04      	itt	eq
 800159e:	2001      	moveq	r0, #1
 80015a0:	bdd0      	popeq	{r4, r6, r7, pc}
 80015a2:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015a4:	b920      	cbnz	r0, 80015b0 <HAL_TIM_Base_Init+0x1c>
 80015a6:	2000      	movs	r0, #0
 80015a8:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015aa:	4620      	mov	r0, r4
 80015ac:	f000 f892 	bl	80016d4 <HAL_TIM_Base_MspInit>
 80015b0:	2002      	movs	r0, #2
 80015b2:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015b6:	6420      	str	r0, [r4, #64]	; 0x40
 80015b8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015bc:	6820      	ldr	r0, [r4, #0]
 80015be:	6801      	ldr	r1, [r0, #0]
 80015c0:	4290      	cmp	r0, r2
 80015c2:	dc0f      	bgt.n	80015e4 <HAL_TIM_Base_Init+0x50>
 80015c4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015c8:	bf1e      	ittt	ne
 80015ca:	f240 4200 	movwne	r2, #1024	; 0x400
 80015ce:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015d2:	4290      	cmpne	r0, r2
 80015d4:	d018      	beq.n	8001608 <HAL_TIM_Base_Init+0x74>
 80015d6:	f640 0200 	movw	r2, #2048	; 0x800
 80015da:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015de:	4290      	cmp	r0, r2
 80015e0:	d012      	beq.n	8001608 <HAL_TIM_Base_Init+0x74>
 80015e2:	e015      	b.n	8001610 <HAL_TIM_Base_Init+0x7c>
 80015e4:	f640 4200 	movw	r2, #3072	; 0xc00
 80015e8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ec:	4290      	cmp	r0, r2
 80015ee:	bf1e      	ittt	ne
 80015f0:	f243 4200 	movwne	r2, #13312	; 0x3400
 80015f4:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015f8:	4290      	cmpne	r0, r2
 80015fa:	d005      	beq.n	8001608 <HAL_TIM_Base_Init+0x74>
 80015fc:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001600:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001604:	4290      	cmp	r0, r2
 8001606:	d103      	bne.n	8001610 <HAL_TIM_Base_Init+0x7c>
 8001608:	68a2      	ldr	r2, [r4, #8]
 800160a:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800160e:	4311      	orrs	r1, r2
 8001610:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001614:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001618:	4290      	cmp	r0, r2
 800161a:	dd14      	ble.n	8001646 <HAL_TIM_Base_Init+0xb2>
 800161c:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001620:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001624:	4290      	cmp	r0, r2
 8001626:	dd1a      	ble.n	800165e <HAL_TIM_Base_Init+0xca>
 8001628:	f244 0200 	movw	r2, #16384	; 0x4000
 800162c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001630:	4290      	cmp	r0, r2
 8001632:	bf1e      	ittt	ne
 8001634:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001638:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800163c:	4290      	cmpne	r0, r2
 800163e:	d027      	beq.n	8001690 <HAL_TIM_Base_Init+0xfc>
 8001640:	f244 4200 	movw	r2, #17408	; 0x4400
 8001644:	e013      	b.n	800166e <HAL_TIM_Base_Init+0xda>
 8001646:	f240 72ff 	movw	r2, #2047	; 0x7ff
 800164a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800164e:	4290      	cmp	r0, r2
 8001650:	dc12      	bgt.n	8001678 <HAL_TIM_Base_Init+0xe4>
 8001652:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001656:	d01b      	beq.n	8001690 <HAL_TIM_Base_Init+0xfc>
 8001658:	f240 4200 	movw	r2, #1024	; 0x400
 800165c:	e014      	b.n	8001688 <HAL_TIM_Base_Init+0xf4>
 800165e:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001662:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001666:	4290      	cmp	r0, r2
 8001668:	d012      	beq.n	8001690 <HAL_TIM_Base_Init+0xfc>
 800166a:	f243 4200 	movw	r2, #13312	; 0x3400
 800166e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001672:	4290      	cmp	r0, r2
 8001674:	d00c      	beq.n	8001690 <HAL_TIM_Base_Init+0xfc>
 8001676:	e00f      	b.n	8001698 <HAL_TIM_Base_Init+0x104>
 8001678:	f640 0200 	movw	r2, #2048	; 0x800
 800167c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001680:	4290      	cmp	r0, r2
 8001682:	d005      	beq.n	8001690 <HAL_TIM_Base_Init+0xfc>
 8001684:	f640 4200 	movw	r2, #3072	; 0xc00
 8001688:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800168c:	4290      	cmp	r0, r2
 800168e:	d103      	bne.n	8001698 <HAL_TIM_Base_Init+0x104>
 8001690:	6922      	ldr	r2, [r4, #16]
 8001692:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001696:	4311      	orrs	r1, r2
 8001698:	69a2      	ldr	r2, [r4, #24]
 800169a:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 800169e:	4311      	orrs	r1, r2
 80016a0:	6001      	str	r1, [r0, #0]
 80016a2:	68e1      	ldr	r1, [r4, #12]
 80016a4:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016a6:	6861      	ldr	r1, [r4, #4]
 80016a8:	6281      	str	r1, [r0, #40]	; 0x28
 80016aa:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016ae:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016b2:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016b6:	2907      	cmp	r1, #7
 80016b8:	d807      	bhi.n	80016ca <HAL_TIM_Base_Init+0x136>
 80016ba:	2201      	movs	r2, #1
 80016bc:	fa02 f101 	lsl.w	r1, r2, r1
 80016c0:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016c4:	bf1c      	itt	ne
 80016c6:	6961      	ldrne	r1, [r4, #20]
 80016c8:	6301      	strne	r1, [r0, #48]	; 0x30
 80016ca:	2101      	movs	r1, #1
 80016cc:	6141      	str	r1, [r0, #20]
 80016ce:	2000      	movs	r0, #0
 80016d0:	6421      	str	r1, [r4, #64]	; 0x40
 80016d2:	bdd0      	pop	{r4, r6, r7, pc}

080016d4 <HAL_TIM_Base_MspInit>:
 80016d4:	4770      	bx	lr

080016d6 <HAL_TIM_Base_Start_IT>:
 80016d6:	6800      	ldr	r0, [r0, #0]
 80016d8:	68c1      	ldr	r1, [r0, #12]
 80016da:	f041 0101 	orr.w	r1, r1, #1
 80016de:	60c1      	str	r1, [r0, #12]
 80016e0:	2107      	movs	r1, #7
 80016e2:	6882      	ldr	r2, [r0, #8]
 80016e4:	f2c0 0101 	movt	r1, #1
 80016e8:	400a      	ands	r2, r1
 80016ea:	2a06      	cmp	r2, #6
 80016ec:	d008      	beq.n	8001700 <HAL_TIM_Base_Start_IT+0x2a>
 80016ee:	6882      	ldr	r2, [r0, #8]
 80016f0:	4011      	ands	r1, r2
 80016f2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016f6:	bf1e      	ittt	ne
 80016f8:	6801      	ldrne	r1, [r0, #0]
 80016fa:	f041 0101 	orrne.w	r1, r1, #1
 80016fe:	6001      	strne	r1, [r0, #0]
 8001700:	2000      	movs	r0, #0
 8001702:	4770      	bx	lr

08001704 <HAL_TIM_IRQHandler>:
 8001704:	b5d0      	push	{r4, r6, r7, lr}
 8001706:	af02      	add	r7, sp, #8
 8001708:	4604      	mov	r4, r0
 800170a:	6820      	ldr	r0, [r4, #0]
 800170c:	6901      	ldr	r1, [r0, #16]
 800170e:	f011 0f02 	tst.w	r1, #2
 8001712:	bf1c      	itt	ne
 8001714:	68c1      	ldrne	r1, [r0, #12]
 8001716:	f011 0f02 	tstne.w	r1, #2
 800171a:	d015      	beq.n	8001748 <HAL_TIM_IRQHandler+0x44>
 800171c:	f06f 0102 	mvn.w	r1, #2
 8001720:	6101      	str	r1, [r0, #16]
 8001722:	2101      	movs	r1, #1
 8001724:	61e1      	str	r1, [r4, #28]
 8001726:	6980      	ldr	r0, [r0, #24]
 8001728:	f010 0f03 	tst.w	r0, #3
 800172c:	d003      	beq.n	8001736 <HAL_TIM_IRQHandler+0x32>
 800172e:	4620      	mov	r0, r4
 8001730:	f000 f8b1 	bl	8001896 <HAL_TIM_IC_CaptureCallback>
 8001734:	e005      	b.n	8001742 <HAL_TIM_IRQHandler+0x3e>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f8ae 	bl	8001898 <HAL_TIM_OC_DelayElapsedCallback>
 800173c:	4620      	mov	r0, r4
 800173e:	f000 f8ac 	bl	800189a <HAL_TIM_PWM_PulseFinishedCallback>
 8001742:	2000      	movs	r0, #0
 8001744:	61e0      	str	r0, [r4, #28]
 8001746:	6820      	ldr	r0, [r4, #0]
 8001748:	6901      	ldr	r1, [r0, #16]
 800174a:	f011 0f04 	tst.w	r1, #4
 800174e:	bf1c      	itt	ne
 8001750:	68c1      	ldrne	r1, [r0, #12]
 8001752:	f011 0f04 	tstne.w	r1, #4
 8001756:	d015      	beq.n	8001784 <HAL_TIM_IRQHandler+0x80>
 8001758:	f06f 0104 	mvn.w	r1, #4
 800175c:	6101      	str	r1, [r0, #16]
 800175e:	2102      	movs	r1, #2
 8001760:	61e1      	str	r1, [r4, #28]
 8001762:	6980      	ldr	r0, [r0, #24]
 8001764:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001768:	d003      	beq.n	8001772 <HAL_TIM_IRQHandler+0x6e>
 800176a:	4620      	mov	r0, r4
 800176c:	f000 f893 	bl	8001896 <HAL_TIM_IC_CaptureCallback>
 8001770:	e005      	b.n	800177e <HAL_TIM_IRQHandler+0x7a>
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f890 	bl	8001898 <HAL_TIM_OC_DelayElapsedCallback>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f88e 	bl	800189a <HAL_TIM_PWM_PulseFinishedCallback>
 800177e:	2000      	movs	r0, #0
 8001780:	61e0      	str	r0, [r4, #28]
 8001782:	6820      	ldr	r0, [r4, #0]
 8001784:	6901      	ldr	r1, [r0, #16]
 8001786:	f011 0f08 	tst.w	r1, #8
 800178a:	bf1c      	itt	ne
 800178c:	68c1      	ldrne	r1, [r0, #12]
 800178e:	f011 0f08 	tstne.w	r1, #8
 8001792:	d015      	beq.n	80017c0 <HAL_TIM_IRQHandler+0xbc>
 8001794:	f06f 0108 	mvn.w	r1, #8
 8001798:	6101      	str	r1, [r0, #16]
 800179a:	2104      	movs	r1, #4
 800179c:	61e1      	str	r1, [r4, #28]
 800179e:	69c0      	ldr	r0, [r0, #28]
 80017a0:	f010 0f03 	tst.w	r0, #3
 80017a4:	d003      	beq.n	80017ae <HAL_TIM_IRQHandler+0xaa>
 80017a6:	4620      	mov	r0, r4
 80017a8:	f000 f875 	bl	8001896 <HAL_TIM_IC_CaptureCallback>
 80017ac:	e005      	b.n	80017ba <HAL_TIM_IRQHandler+0xb6>
 80017ae:	4620      	mov	r0, r4
 80017b0:	f000 f872 	bl	8001898 <HAL_TIM_OC_DelayElapsedCallback>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f870 	bl	800189a <HAL_TIM_PWM_PulseFinishedCallback>
 80017ba:	2000      	movs	r0, #0
 80017bc:	61e0      	str	r0, [r4, #28]
 80017be:	6820      	ldr	r0, [r4, #0]
 80017c0:	6901      	ldr	r1, [r0, #16]
 80017c2:	f011 0f10 	tst.w	r1, #16
 80017c6:	bf1c      	itt	ne
 80017c8:	68c1      	ldrne	r1, [r0, #12]
 80017ca:	f011 0f10 	tstne.w	r1, #16
 80017ce:	d015      	beq.n	80017fc <HAL_TIM_IRQHandler+0xf8>
 80017d0:	f06f 0110 	mvn.w	r1, #16
 80017d4:	6101      	str	r1, [r0, #16]
 80017d6:	2108      	movs	r1, #8
 80017d8:	61e1      	str	r1, [r4, #28]
 80017da:	69c0      	ldr	r0, [r0, #28]
 80017dc:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017e0:	d003      	beq.n	80017ea <HAL_TIM_IRQHandler+0xe6>
 80017e2:	4620      	mov	r0, r4
 80017e4:	f000 f857 	bl	8001896 <HAL_TIM_IC_CaptureCallback>
 80017e8:	e005      	b.n	80017f6 <HAL_TIM_IRQHandler+0xf2>
 80017ea:	4620      	mov	r0, r4
 80017ec:	f000 f854 	bl	8001898 <HAL_TIM_OC_DelayElapsedCallback>
 80017f0:	4620      	mov	r0, r4
 80017f2:	f000 f852 	bl	800189a <HAL_TIM_PWM_PulseFinishedCallback>
 80017f6:	2000      	movs	r0, #0
 80017f8:	61e0      	str	r0, [r4, #28]
 80017fa:	6820      	ldr	r0, [r4, #0]
 80017fc:	6901      	ldr	r1, [r0, #16]
 80017fe:	f011 0f01 	tst.w	r1, #1
 8001802:	bf1c      	itt	ne
 8001804:	68c1      	ldrne	r1, [r0, #12]
 8001806:	f011 0f01 	tstne.w	r1, #1
 800180a:	d006      	beq.n	800181a <HAL_TIM_IRQHandler+0x116>
 800180c:	f06f 0101 	mvn.w	r1, #1
 8001810:	6101      	str	r1, [r0, #16]
 8001812:	4620      	mov	r0, r4
 8001814:	f000 f894 	bl	8001940 <HAL_TIM_PeriodElapsedCallback>
 8001818:	6820      	ldr	r0, [r4, #0]
 800181a:	6901      	ldr	r1, [r0, #16]
 800181c:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001820:	bf1c      	itt	ne
 8001822:	68c1      	ldrne	r1, [r0, #12]
 8001824:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001828:	d006      	beq.n	8001838 <HAL_TIM_IRQHandler+0x134>
 800182a:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800182e:	6101      	str	r1, [r0, #16]
 8001830:	4620      	mov	r0, r4
 8001832:	f000 f835 	bl	80018a0 <HAL_TIMEx_BreakCallback>
 8001836:	6820      	ldr	r0, [r4, #0]
 8001838:	6901      	ldr	r1, [r0, #16]
 800183a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800183e:	bf1c      	itt	ne
 8001840:	68c1      	ldrne	r1, [r0, #12]
 8001842:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001846:	d006      	beq.n	8001856 <HAL_TIM_IRQHandler+0x152>
 8001848:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800184c:	6101      	str	r1, [r0, #16]
 800184e:	4620      	mov	r0, r4
 8001850:	f000 f827 	bl	80018a2 <HAL_TIMEx_Break2Callback>
 8001854:	6820      	ldr	r0, [r4, #0]
 8001856:	6901      	ldr	r1, [r0, #16]
 8001858:	f011 0f40 	tst.w	r1, #64	; 0x40
 800185c:	bf1c      	itt	ne
 800185e:	68c1      	ldrne	r1, [r0, #12]
 8001860:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001864:	d006      	beq.n	8001874 <HAL_TIM_IRQHandler+0x170>
 8001866:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800186a:	6101      	str	r1, [r0, #16]
 800186c:	4620      	mov	r0, r4
 800186e:	f000 f815 	bl	800189c <HAL_TIM_TriggerCallback>
 8001872:	6820      	ldr	r0, [r4, #0]
 8001874:	6901      	ldr	r1, [r0, #16]
 8001876:	f011 0f20 	tst.w	r1, #32
 800187a:	bf1c      	itt	ne
 800187c:	68c1      	ldrne	r1, [r0, #12]
 800187e:	f011 0f20 	tstne.w	r1, #32
 8001882:	d100      	bne.n	8001886 <HAL_TIM_IRQHandler+0x182>
 8001884:	bdd0      	pop	{r4, r6, r7, pc}
 8001886:	f06f 0120 	mvn.w	r1, #32
 800188a:	6101      	str	r1, [r0, #16]
 800188c:	4620      	mov	r0, r4
 800188e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001892:	f000 b804 	b.w	800189e <HAL_TIMEx_CommutationCallback>

08001896 <HAL_TIM_IC_CaptureCallback>:
 8001896:	4770      	bx	lr

08001898 <HAL_TIM_OC_DelayElapsedCallback>:
 8001898:	4770      	bx	lr

0800189a <HAL_TIM_PWM_PulseFinishedCallback>:
 800189a:	4770      	bx	lr

0800189c <HAL_TIM_TriggerCallback>:
 800189c:	4770      	bx	lr

0800189e <HAL_TIMEx_CommutationCallback>:
 800189e:	4770      	bx	lr

080018a0 <HAL_TIMEx_BreakCallback>:
 80018a0:	4770      	bx	lr

080018a2 <HAL_TIMEx_Break2Callback>:
 80018a2:	4770      	bx	lr

080018a4 <HAL_InitTick>:
 80018a4:	b5b0      	push	{r4, r5, r7, lr}
 80018a6:	af02      	add	r7, sp, #8
 80018a8:	b086      	sub	sp, #24
 80018aa:	4601      	mov	r1, r0
 80018ac:	2036      	movs	r0, #54	; 0x36
 80018ae:	2200      	movs	r2, #0
 80018b0:	2400      	movs	r4, #0
 80018b2:	f7ff fc99 	bl	80011e8 <HAL_NVIC_SetPriority>
 80018b6:	2036      	movs	r0, #54	; 0x36
 80018b8:	f7ff fcc9 	bl	800124e <HAL_NVIC_EnableIRQ>
 80018bc:	f241 0058 	movw	r0, #4184	; 0x1058
 80018c0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018c4:	6801      	ldr	r1, [r0, #0]
 80018c6:	f041 0110 	orr.w	r1, r1, #16
 80018ca:	6001      	str	r1, [r0, #0]
 80018cc:	4669      	mov	r1, sp
 80018ce:	6800      	ldr	r0, [r0, #0]
 80018d0:	f000 0010 	and.w	r0, r0, #16
 80018d4:	9001      	str	r0, [sp, #4]
 80018d6:	9801      	ldr	r0, [sp, #4]
 80018d8:	a801      	add	r0, sp, #4
 80018da:	f7ff fe3a 	bl	8001552 <HAL_RCC_GetClockConfig>
 80018de:	9d04      	ldr	r5, [sp, #16]
 80018e0:	f7ff fe0d 	bl	80014fe <HAL_RCC_GetPCLK1Freq>
 80018e4:	2d00      	cmp	r5, #0
 80018e6:	f640 21c8 	movw	r1, #2760	; 0xac8
 80018ea:	f241 0200 	movw	r2, #4096	; 0x1000
 80018ee:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018f2:	bf18      	it	ne
 80018f4:	2501      	movne	r5, #1
 80018f6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018fa:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018fe:	40a8      	lsls	r0, r5
 8001900:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001904:	618c      	str	r4, [r1, #24]
 8001906:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800190a:	fba0 0505 	umull	r0, r5, r0, r5
 800190e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001912:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001916:	e9c1 2000 	strd	r2, r0, [r1]
 800191a:	4608      	mov	r0, r1
 800191c:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001920:	610c      	str	r4, [r1, #16]
 8001922:	f7ff fe37 	bl	8001594 <HAL_TIM_Base_Init>
 8001926:	2800      	cmp	r0, #0
 8001928:	bf1e      	ittt	ne
 800192a:	2001      	movne	r0, #1
 800192c:	b006      	addne	sp, #24
 800192e:	bdb0      	popne	{r4, r5, r7, pc}
 8001930:	f640 20c8 	movw	r0, #2760	; 0xac8
 8001934:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001938:	f7ff fecd 	bl	80016d6 <HAL_TIM_Base_Start_IT>
 800193c:	b006      	add	sp, #24
 800193e:	bdb0      	pop	{r4, r5, r7, pc}

08001940 <HAL_TIM_PeriodElapsedCallback>:
 8001940:	f7ff bc34 	b.w	80011ac <HAL_IncTick>

08001944 <TIM6_DAC_IRQHandler>:
 8001944:	f640 20c8 	movw	r0, #2760	; 0xac8
 8001948:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800194c:	f7ff beda 	b.w	8001704 <HAL_TIM_IRQHandler>

08001950 <HAL_UART_Init>:
 8001950:	b5d0      	push	{r4, r6, r7, lr}
 8001952:	af02      	add	r7, sp, #8
 8001954:	4604      	mov	r4, r0
 8001956:	b194      	cbz	r4, 800197e <HAL_UART_Init+0x2e>
 8001958:	6f60      	ldr	r0, [r4, #116]	; 0x74
 800195a:	b920      	cbnz	r0, 8001966 <HAL_UART_Init+0x16>
 800195c:	2000      	movs	r0, #0
 800195e:	6720      	str	r0, [r4, #112]	; 0x70
 8001960:	4620      	mov	r0, r4
 8001962:	f000 f826 	bl	80019b2 <HAL_UART_MspInit>
 8001966:	2024      	movs	r0, #36	; 0x24
 8001968:	6760      	str	r0, [r4, #116]	; 0x74
 800196a:	6820      	ldr	r0, [r4, #0]
 800196c:	6801      	ldr	r1, [r0, #0]
 800196e:	f021 0101 	bic.w	r1, r1, #1
 8001972:	6001      	str	r1, [r0, #0]
 8001974:	4620      	mov	r0, r4
 8001976:	f000 f81d 	bl	80019b4 <UART_SetConfig>
 800197a:	2801      	cmp	r0, #1
 800197c:	d101      	bne.n	8001982 <HAL_UART_Init+0x32>
 800197e:	2001      	movs	r0, #1
 8001980:	bdd0      	pop	{r4, r6, r7, pc}
 8001982:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001984:	2800      	cmp	r0, #0
 8001986:	bf1c      	itt	ne
 8001988:	4620      	movne	r0, r4
 800198a:	f000 f944 	blne	8001c16 <UART_AdvFeatureConfig>
 800198e:	6820      	ldr	r0, [r4, #0]
 8001990:	6841      	ldr	r1, [r0, #4]
 8001992:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001996:	6041      	str	r1, [r0, #4]
 8001998:	6881      	ldr	r1, [r0, #8]
 800199a:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800199e:	6081      	str	r1, [r0, #8]
 80019a0:	6801      	ldr	r1, [r0, #0]
 80019a2:	f041 0101 	orr.w	r1, r1, #1
 80019a6:	6001      	str	r1, [r0, #0]
 80019a8:	4620      	mov	r0, r4
 80019aa:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019ae:	f000 b99d 	b.w	8001cec <UART_CheckIdleState>

080019b2 <HAL_UART_MspInit>:
 80019b2:	4770      	bx	lr

080019b4 <UART_SetConfig>:
 80019b4:	b5b0      	push	{r4, r5, r7, lr}
 80019b6:	af02      	add	r7, sp, #8
 80019b8:	4604      	mov	r4, r0
 80019ba:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019be:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019c2:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019c6:	6821      	ldr	r1, [r4, #0]
 80019c8:	68a0      	ldr	r0, [r4, #8]
 80019ca:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019ce:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019d2:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019d6:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019da:	4310      	orrs	r0, r2
 80019dc:	69e2      	ldr	r2, [r4, #28]
 80019de:	4571      	cmp	r1, lr
 80019e0:	ea40 0003 	orr.w	r0, r0, r3
 80019e4:	680b      	ldr	r3, [r1, #0]
 80019e6:	ea40 0002 	orr.w	r0, r0, r2
 80019ea:	ea03 0305 	and.w	r3, r3, r5
 80019ee:	f04f 0510 	mov.w	r5, #16
 80019f2:	ea40 0003 	orr.w	r0, r0, r3
 80019f6:	6008      	str	r0, [r1, #0]
 80019f8:	6848      	ldr	r0, [r1, #4]
 80019fa:	68e3      	ldr	r3, [r4, #12]
 80019fc:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a00:	ea40 0003 	orr.w	r0, r0, r3
 8001a04:	6048      	str	r0, [r1, #4]
 8001a06:	69a0      	ldr	r0, [r4, #24]
 8001a08:	bf1c      	itt	ne
 8001a0a:	6a23      	ldrne	r3, [r4, #32]
 8001a0c:	4318      	orrne	r0, r3
 8001a0e:	688b      	ldr	r3, [r1, #8]
 8001a10:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a14:	4318      	orrs	r0, r3
 8001a16:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a1a:	6088      	str	r0, [r1, #8]
 8001a1c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a20:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a24:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a28:	4299      	cmp	r1, r3
 8001a2a:	dc15      	bgt.n	8001a58 <UART_SetConfig+0xa4>
 8001a2c:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a30:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a34:	4299      	cmp	r1, r3
 8001a36:	d024      	beq.n	8001a82 <UART_SetConfig+0xce>
 8001a38:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a3c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a40:	4299      	cmp	r1, r3
 8001a42:	d022      	beq.n	8001a8a <UART_SetConfig+0xd6>
 8001a44:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a48:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4c:	4299      	cmp	r1, r3
 8001a4e:	d131      	bne.n	8001ab4 <UART_SetConfig+0x100>
 8001a50:	f8dc 3000 	ldr.w	r3, [ip]
 8001a54:	099d      	lsrs	r5, r3, #6
 8001a56:	e023      	b.n	8001aa0 <UART_SetConfig+0xec>
 8001a58:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a5c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a60:	4299      	cmp	r1, r3
 8001a62:	d016      	beq.n	8001a92 <UART_SetConfig+0xde>
 8001a64:	4571      	cmp	r1, lr
 8001a66:	d018      	beq.n	8001a9a <UART_SetConfig+0xe6>
 8001a68:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a6c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a70:	4299      	cmp	r1, r3
 8001a72:	d11f      	bne.n	8001ab4 <UART_SetConfig+0x100>
 8001a74:	f8dc 5000 	ldr.w	r5, [ip]
 8001a78:	f247 1368 	movw	r3, #29032	; 0x7168
 8001a7c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a80:	e012      	b.n	8001aa8 <UART_SetConfig+0xf4>
 8001a82:	f8dc 3000 	ldr.w	r3, [ip]
 8001a86:	089d      	lsrs	r5, r3, #2
 8001a88:	e00a      	b.n	8001aa0 <UART_SetConfig+0xec>
 8001a8a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a8e:	091d      	lsrs	r5, r3, #4
 8001a90:	e006      	b.n	8001aa0 <UART_SetConfig+0xec>
 8001a92:	f8dc 3000 	ldr.w	r3, [ip]
 8001a96:	0a1d      	lsrs	r5, r3, #8
 8001a98:	e002      	b.n	8001aa0 <UART_SetConfig+0xec>
 8001a9a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a9e:	0a9d      	lsrs	r5, r3, #10
 8001aa0:	f247 1378 	movw	r3, #29048	; 0x7178
 8001aa4:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001aa8:	f005 0503 	and.w	r5, r5, #3
 8001aac:	f085 0502 	eor.w	r5, r5, #2
 8001ab0:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001ab4:	4571      	cmp	r1, lr
 8001ab6:	d012      	beq.n	8001ade <UART_SetConfig+0x12a>
 8001ab8:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001abc:	d11d      	bne.n	8001afa <UART_SetConfig+0x146>
 8001abe:	f005 001f 	and.w	r0, r5, #31
 8001ac2:	2101      	movs	r1, #1
 8001ac4:	2808      	cmp	r0, #8
 8001ac6:	f200 809f 	bhi.w	8001c08 <UART_SetConfig+0x254>
 8001aca:	e8df f000 	tbb	[pc, r0]
 8001ace:	4005      	.short	0x4005
 8001ad0:	9d499d43 	.word	0x9d499d43
 8001ad4:	004f9d9d 	.word	0x004f9d9d
 8001ad8:	f7ff fd11 	bl	80014fe <HAL_RCC_GetPCLK1Freq>
 8001adc:	e042      	b.n	8001b64 <UART_SetConfig+0x1b0>
 8001ade:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001ae2:	2101      	movs	r1, #1
 8001ae4:	2d04      	cmp	r5, #4
 8001ae6:	f200 808f 	bhi.w	8001c08 <UART_SetConfig+0x254>
 8001aea:	e8df f005 	tbb	[pc, r5]
 8001aee:	1c03      	.short	0x1c03
 8001af0:	001a8d16 	.word	0x001a8d16
 8001af4:	f7ff fd03 	bl	80014fe <HAL_RCC_GetPCLK1Freq>
 8001af8:	e011      	b.n	8001b1e <UART_SetConfig+0x16a>
 8001afa:	f005 021f 	and.w	r2, r5, #31
 8001afe:	2101      	movs	r1, #1
 8001b00:	2a08      	cmp	r2, #8
 8001b02:	f200 8081 	bhi.w	8001c08 <UART_SetConfig+0x254>
 8001b06:	e8df f002 	tbb	[pc, r2]
 8001b0a:	4305      	.short	0x4305
 8001b0c:	7f487f46 	.word	0x7f487f46
 8001b10:	004e7f7f 	.word	0x004e7f7f
 8001b14:	f7ff fcf3 	bl	80014fe <HAL_RCC_GetPCLK1Freq>
 8001b18:	e041      	b.n	8001b9e <UART_SetConfig+0x1ea>
 8001b1a:	f7ff fc91 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001b1e:	b910      	cbnz	r0, 8001b26 <UART_SetConfig+0x172>
 8001b20:	e071      	b.n	8001c06 <UART_SetConfig+0x252>
 8001b22:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b26:	6862      	ldr	r2, [r4, #4]
 8001b28:	2101      	movs	r1, #1
 8001b2a:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b2e:	4298      	cmp	r0, r3
 8001b30:	d36a      	bcc.n	8001c08 <UART_SetConfig+0x254>
 8001b32:	0313      	lsls	r3, r2, #12
 8001b34:	4298      	cmp	r0, r3
 8001b36:	bf9c      	itt	ls
 8001b38:	2101      	movls	r1, #1
 8001b3a:	2d04      	cmpls	r5, #4
 8001b3c:	d864      	bhi.n	8001c08 <UART_SetConfig+0x254>
 8001b3e:	e8df f005 	tbb	[pc, r5]
 8001b42:	3e03      	.short	0x3e03
 8001b44:	00526345 	.word	0x00526345
 8001b48:	f7ff fcd9 	bl	80014fe <HAL_RCC_GetPCLK1Freq>
 8001b4c:	e040      	b.n	8001bd0 <UART_SetConfig+0x21c>
 8001b4e:	f7ff fceb 	bl	8001528 <HAL_RCC_GetPCLK2Freq>
 8001b52:	e007      	b.n	8001b64 <UART_SetConfig+0x1b0>
 8001b54:	6861      	ldr	r1, [r4, #4]
 8001b56:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b5a:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b5e:	e008      	b.n	8001b72 <UART_SetConfig+0x1be>
 8001b60:	f7ff fc6e 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001b64:	6861      	ldr	r1, [r4, #4]
 8001b66:	0040      	lsls	r0, r0, #1
 8001b68:	084a      	lsrs	r2, r1, #1
 8001b6a:	e003      	b.n	8001b74 <UART_SetConfig+0x1c0>
 8001b6c:	6861      	ldr	r1, [r4, #4]
 8001b6e:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b72:	0848      	lsrs	r0, r1, #1
 8001b74:	4410      	add	r0, r2
 8001b76:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b7a:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b7e:	4001      	ands	r1, r0
 8001b80:	2910      	cmp	r1, #16
 8001b82:	d303      	bcc.n	8001b8c <UART_SetConfig+0x1d8>
 8001b84:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b88:	4308      	orrs	r0, r1
 8001b8a:	e03a      	b.n	8001c02 <UART_SetConfig+0x24e>
 8001b8c:	2101      	movs	r1, #1
 8001b8e:	e03b      	b.n	8001c08 <UART_SetConfig+0x254>
 8001b90:	f7ff fcca 	bl	8001528 <HAL_RCC_GetPCLK2Freq>
 8001b94:	e003      	b.n	8001b9e <UART_SetConfig+0x1ea>
 8001b96:	6862      	ldr	r2, [r4, #4]
 8001b98:	e008      	b.n	8001bac <UART_SetConfig+0x1f8>
 8001b9a:	f7ff fc51 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001b9e:	6862      	ldr	r2, [r4, #4]
 8001ba0:	4601      	mov	r1, r0
 8001ba2:	0850      	lsrs	r0, r2, #1
 8001ba4:	e003      	b.n	8001bae <UART_SetConfig+0x1fa>
 8001ba6:	6862      	ldr	r2, [r4, #4]
 8001ba8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bac:	0851      	lsrs	r1, r2, #1
 8001bae:	4408      	add	r0, r1
 8001bb0:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bb4:	b280      	uxth	r0, r0
 8001bb6:	2810      	cmp	r0, #16
 8001bb8:	d223      	bcs.n	8001c02 <UART_SetConfig+0x24e>
 8001bba:	2101      	movs	r1, #1
 8001bbc:	e024      	b.n	8001c08 <UART_SetConfig+0x254>
 8001bbe:	2000      	movs	r0, #0
 8001bc0:	2100      	movs	r1, #0
 8001bc2:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bc6:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bca:	e006      	b.n	8001bda <UART_SetConfig+0x226>
 8001bcc:	f7ff fc38 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001bd0:	6862      	ldr	r2, [r4, #4]
 8001bd2:	0e01      	lsrs	r1, r0, #24
 8001bd4:	0853      	lsrs	r3, r2, #1
 8001bd6:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bda:	f141 0100 	adc.w	r1, r1, #0
 8001bde:	2300      	movs	r3, #0
 8001be0:	f7fe ff2c 	bl	8000a3c <__aeabi_uldivmod>
 8001be4:	e005      	b.n	8001bf2 <UART_SetConfig+0x23e>
 8001be6:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bea:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bee:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bf2:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001bf6:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001bfa:	f2c0 020f 	movt	r2, #15
 8001bfe:	4291      	cmp	r1, r2
 8001c00:	d807      	bhi.n	8001c12 <UART_SetConfig+0x25e>
 8001c02:	6821      	ldr	r1, [r4, #0]
 8001c04:	60c8      	str	r0, [r1, #12]
 8001c06:	2100      	movs	r1, #0
 8001c08:	2000      	movs	r0, #0
 8001c0a:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c0e:	4608      	mov	r0, r1
 8001c10:	bdb0      	pop	{r4, r5, r7, pc}
 8001c12:	2101      	movs	r1, #1
 8001c14:	e7f8      	b.n	8001c08 <UART_SetConfig+0x254>

08001c16 <UART_AdvFeatureConfig>:
 8001c16:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c18:	f011 0f01 	tst.w	r1, #1
 8001c1c:	d008      	beq.n	8001c30 <UART_AdvFeatureConfig+0x1a>
 8001c1e:	6802      	ldr	r2, [r0, #0]
 8001c20:	6853      	ldr	r3, [r2, #4]
 8001c22:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c26:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c2a:	ea43 030c 	orr.w	r3, r3, ip
 8001c2e:	6053      	str	r3, [r2, #4]
 8001c30:	078a      	lsls	r2, r1, #30
 8001c32:	d508      	bpl.n	8001c46 <UART_AdvFeatureConfig+0x30>
 8001c34:	6802      	ldr	r2, [r0, #0]
 8001c36:	6853      	ldr	r3, [r2, #4]
 8001c38:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c3c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c40:	ea43 030c 	orr.w	r3, r3, ip
 8001c44:	6053      	str	r3, [r2, #4]
 8001c46:	074a      	lsls	r2, r1, #29
 8001c48:	d508      	bpl.n	8001c5c <UART_AdvFeatureConfig+0x46>
 8001c4a:	6802      	ldr	r2, [r0, #0]
 8001c4c:	6853      	ldr	r3, [r2, #4]
 8001c4e:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c52:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c56:	ea43 030c 	orr.w	r3, r3, ip
 8001c5a:	6053      	str	r3, [r2, #4]
 8001c5c:	070a      	lsls	r2, r1, #28
 8001c5e:	d508      	bpl.n	8001c72 <UART_AdvFeatureConfig+0x5c>
 8001c60:	6802      	ldr	r2, [r0, #0]
 8001c62:	6853      	ldr	r3, [r2, #4]
 8001c64:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c68:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c6c:	ea43 030c 	orr.w	r3, r3, ip
 8001c70:	6053      	str	r3, [r2, #4]
 8001c72:	06ca      	lsls	r2, r1, #27
 8001c74:	d508      	bpl.n	8001c88 <UART_AdvFeatureConfig+0x72>
 8001c76:	6802      	ldr	r2, [r0, #0]
 8001c78:	6893      	ldr	r3, [r2, #8]
 8001c7a:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c7e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c82:	ea43 030c 	orr.w	r3, r3, ip
 8001c86:	6093      	str	r3, [r2, #8]
 8001c88:	068a      	lsls	r2, r1, #26
 8001c8a:	d508      	bpl.n	8001c9e <UART_AdvFeatureConfig+0x88>
 8001c8c:	6802      	ldr	r2, [r0, #0]
 8001c8e:	6893      	ldr	r3, [r2, #8]
 8001c90:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c94:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c98:	ea43 030c 	orr.w	r3, r3, ip
 8001c9c:	6093      	str	r3, [r2, #8]
 8001c9e:	b580      	push	{r7, lr}
 8001ca0:	466f      	mov	r7, sp
 8001ca2:	064a      	lsls	r2, r1, #25
 8001ca4:	d515      	bpl.n	8001cd2 <UART_AdvFeatureConfig+0xbc>
 8001ca6:	f8d0 e000 	ldr.w	lr, [r0]
 8001caa:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cae:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cb0:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cb4:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cb8:	ea42 0203 	orr.w	r2, r2, r3
 8001cbc:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cc0:	d107      	bne.n	8001cd2 <UART_AdvFeatureConfig+0xbc>
 8001cc2:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cc6:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cc8:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001ccc:	431a      	orrs	r2, r3
 8001cce:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cd2:	0609      	lsls	r1, r1, #24
 8001cd4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cd8:	bf58      	it	pl
 8001cda:	4770      	bxpl	lr
 8001cdc:	6801      	ldr	r1, [r0, #0]
 8001cde:	684a      	ldr	r2, [r1, #4]
 8001ce0:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001ce2:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001ce6:	4310      	orrs	r0, r2
 8001ce8:	6048      	str	r0, [r1, #4]
 8001cea:	4770      	bx	lr

08001cec <UART_CheckIdleState>:
 8001cec:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cee:	af03      	add	r7, sp, #12
 8001cf0:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001cf4:	4604      	mov	r4, r0
 8001cf6:	2000      	movs	r0, #0
 8001cf8:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001cfa:	f7ff fa5f 	bl	80011bc <HAL_GetTick>
 8001cfe:	4605      	mov	r5, r0
 8001d00:	6820      	ldr	r0, [r4, #0]
 8001d02:	6801      	ldr	r1, [r0, #0]
 8001d04:	f011 0f08 	tst.w	r1, #8
 8001d08:	d00f      	beq.n	8001d2a <UART_CheckIdleState+0x3e>
 8001d0a:	69c1      	ldr	r1, [r0, #28]
 8001d0c:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d10:	d10b      	bne.n	8001d2a <UART_CheckIdleState+0x3e>
 8001d12:	2600      	movs	r6, #0
 8001d14:	f7ff fa52 	bl	80011bc <HAL_GetTick>
 8001d18:	1b41      	subs	r1, r0, r5
 8001d1a:	6820      	ldr	r0, [r4, #0]
 8001d1c:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d20:	d11b      	bne.n	8001d5a <UART_CheckIdleState+0x6e>
 8001d22:	69c1      	ldr	r1, [r0, #28]
 8001d24:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d28:	d0f4      	beq.n	8001d14 <UART_CheckIdleState+0x28>
 8001d2a:	6801      	ldr	r1, [r0, #0]
 8001d2c:	f011 0f04 	tst.w	r1, #4
 8001d30:	d101      	bne.n	8001d36 <UART_CheckIdleState+0x4a>
 8001d32:	2600      	movs	r6, #0
 8001d34:	e01a      	b.n	8001d6c <UART_CheckIdleState+0x80>
 8001d36:	69c0      	ldr	r0, [r0, #28]
 8001d38:	2600      	movs	r6, #0
 8001d3a:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d3e:	d115      	bne.n	8001d6c <UART_CheckIdleState+0x80>
 8001d40:	f7ff fa3c 	bl	80011bc <HAL_GetTick>
 8001d44:	1b41      	subs	r1, r0, r5
 8001d46:	6820      	ldr	r0, [r4, #0]
 8001d48:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d4c:	d105      	bne.n	8001d5a <UART_CheckIdleState+0x6e>
 8001d4e:	69c0      	ldr	r0, [r0, #28]
 8001d50:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d54:	d0f4      	beq.n	8001d40 <UART_CheckIdleState+0x54>
 8001d56:	2600      	movs	r6, #0
 8001d58:	e008      	b.n	8001d6c <UART_CheckIdleState+0x80>
 8001d5a:	6801      	ldr	r1, [r0, #0]
 8001d5c:	2603      	movs	r6, #3
 8001d5e:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d62:	6001      	str	r1, [r0, #0]
 8001d64:	6881      	ldr	r1, [r0, #8]
 8001d66:	f021 0101 	bic.w	r1, r1, #1
 8001d6a:	6081      	str	r1, [r0, #8]
 8001d6c:	2020      	movs	r0, #32
 8001d6e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d70:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d72:	2000      	movs	r0, #0
 8001d74:	6720      	str	r0, [r4, #112]	; 0x70
 8001d76:	4630      	mov	r0, r6
 8001d78:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d7c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d7e <HAL_UART_Transmit>:
 8001d7e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d80:	af03      	add	r7, sp, #12
 8001d82:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d86:	b081      	sub	sp, #4
 8001d88:	4604      	mov	r4, r0
 8001d8a:	461d      	mov	r5, r3
 8001d8c:	4616      	mov	r6, r2
 8001d8e:	4689      	mov	r9, r1
 8001d90:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d92:	2820      	cmp	r0, #32
 8001d94:	d109      	bne.n	8001daa <HAL_UART_Transmit+0x2c>
 8001d96:	f1b9 0f00 	cmp.w	r9, #0
 8001d9a:	f04f 0001 	mov.w	r0, #1
 8001d9e:	bf18      	it	ne
 8001da0:	2e00      	cmpne	r6, #0
 8001da2:	d003      	beq.n	8001dac <HAL_UART_Transmit+0x2e>
 8001da4:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001da6:	2801      	cmp	r0, #1
 8001da8:	d104      	bne.n	8001db4 <HAL_UART_Transmit+0x36>
 8001daa:	2002      	movs	r0, #2
 8001dac:	b001      	add	sp, #4
 8001dae:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001db2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001db4:	2001      	movs	r0, #1
 8001db6:	6720      	str	r0, [r4, #112]	; 0x70
 8001db8:	2000      	movs	r0, #0
 8001dba:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001dbc:	2021      	movs	r0, #33	; 0x21
 8001dbe:	6760      	str	r0, [r4, #116]	; 0x74
 8001dc0:	f7ff f9fc 	bl	80011bc <HAL_GetTick>
 8001dc4:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001dc8:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001dcc:	4680      	mov	r8, r0
 8001dce:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dd2:	f8d4 b000 	ldr.w	fp, [r4]
 8001dd6:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001dda:	2900      	cmp	r1, #0
 8001ddc:	d040      	beq.n	8001e60 <HAL_UART_Transmit+0xe2>
 8001dde:	f105 0a01 	add.w	sl, r5, #1
 8001de2:	0600      	lsls	r0, r0, #24
 8001de4:	d410      	bmi.n	8001e08 <HAL_UART_Transmit+0x8a>
 8001de6:	465e      	mov	r6, fp
 8001de8:	f1ba 0f00 	cmp.w	sl, #0
 8001dec:	d007      	beq.n	8001dfe <HAL_UART_Transmit+0x80>
 8001dee:	b33d      	cbz	r5, 8001e40 <HAL_UART_Transmit+0xc2>
 8001df0:	f7ff f9e4 	bl	80011bc <HAL_GetTick>
 8001df4:	6826      	ldr	r6, [r4, #0]
 8001df6:	eba0 0008 	sub.w	r0, r0, r8
 8001dfa:	42a8      	cmp	r0, r5
 8001dfc:	d821      	bhi.n	8001e42 <HAL_UART_Transmit+0xc4>
 8001dfe:	69f0      	ldr	r0, [r6, #28]
 8001e00:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e04:	d0f0      	beq.n	8001de8 <HAL_UART_Transmit+0x6a>
 8001e06:	e000      	b.n	8001e0a <HAL_UART_Transmit+0x8c>
 8001e08:	465e      	mov	r6, fp
 8001e0a:	68a0      	ldr	r0, [r4, #8]
 8001e0c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e10:	bf04      	itt	eq
 8001e12:	6920      	ldreq	r0, [r4, #16]
 8001e14:	2800      	cmpeq	r0, #0
 8001e16:	d002      	beq.n	8001e1e <HAL_UART_Transmit+0xa0>
 8001e18:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e1c:	e003      	b.n	8001e26 <HAL_UART_Transmit+0xa8>
 8001e1e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e22:	f36f 205f 	bfc	r0, #9, #23
 8001e26:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e28:	46b3      	mov	fp, r6
 8001e2a:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e2e:	3801      	subs	r0, #1
 8001e30:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e34:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e38:	69f0      	ldr	r0, [r6, #28]
 8001e3a:	2900      	cmp	r1, #0
 8001e3c:	d1d1      	bne.n	8001de2 <HAL_UART_Transmit+0x64>
 8001e3e:	e010      	b.n	8001e62 <HAL_UART_Transmit+0xe4>
 8001e40:	465e      	mov	r6, fp
 8001e42:	6830      	ldr	r0, [r6, #0]
 8001e44:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e48:	6030      	str	r0, [r6, #0]
 8001e4a:	68b0      	ldr	r0, [r6, #8]
 8001e4c:	f020 0001 	bic.w	r0, r0, #1
 8001e50:	60b0      	str	r0, [r6, #8]
 8001e52:	2020      	movs	r0, #32
 8001e54:	6760      	str	r0, [r4, #116]	; 0x74
 8001e56:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e58:	2000      	movs	r0, #0
 8001e5a:	6720      	str	r0, [r4, #112]	; 0x70
 8001e5c:	2003      	movs	r0, #3
 8001e5e:	e7a5      	b.n	8001dac <HAL_UART_Transmit+0x2e>
 8001e60:	465e      	mov	r6, fp
 8001e62:	0640      	lsls	r0, r0, #25
 8001e64:	d411      	bmi.n	8001e8a <HAL_UART_Transmit+0x10c>
 8001e66:	f105 0901 	add.w	r9, r5, #1
 8001e6a:	4630      	mov	r0, r6
 8001e6c:	f1b9 0f00 	cmp.w	r9, #0
 8001e70:	d007      	beq.n	8001e82 <HAL_UART_Transmit+0x104>
 8001e72:	b17d      	cbz	r5, 8001e94 <HAL_UART_Transmit+0x116>
 8001e74:	f7ff f9a2 	bl	80011bc <HAL_GetTick>
 8001e78:	eba0 0108 	sub.w	r1, r0, r8
 8001e7c:	6820      	ldr	r0, [r4, #0]
 8001e7e:	42a9      	cmp	r1, r5
 8001e80:	d809      	bhi.n	8001e96 <HAL_UART_Transmit+0x118>
 8001e82:	69c1      	ldr	r1, [r0, #28]
 8001e84:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e88:	d0f0      	beq.n	8001e6c <HAL_UART_Transmit+0xee>
 8001e8a:	2020      	movs	r0, #32
 8001e8c:	6760      	str	r0, [r4, #116]	; 0x74
 8001e8e:	2000      	movs	r0, #0
 8001e90:	6720      	str	r0, [r4, #112]	; 0x70
 8001e92:	e78b      	b.n	8001dac <HAL_UART_Transmit+0x2e>
 8001e94:	4630      	mov	r0, r6
 8001e96:	6801      	ldr	r1, [r0, #0]
 8001e98:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e9c:	6001      	str	r1, [r0, #0]
 8001e9e:	6881      	ldr	r1, [r0, #8]
 8001ea0:	f021 0101 	bic.w	r1, r1, #1
 8001ea4:	6081      	str	r1, [r0, #8]
 8001ea6:	e7d4      	b.n	8001e52 <HAL_UART_Transmit+0xd4>

08001ea8 <BSP_COM_Init>:
 8001ea8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eaa:	af03      	add	r7, sp, #12
 8001eac:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001eb0:	b086      	sub	sp, #24
 8001eb2:	4605      	mov	r5, r0
 8001eb4:	4688      	mov	r8, r1
 8001eb6:	b9f5      	cbnz	r5, 8001ef6 <BSP_COM_Init+0x4e>
 8001eb8:	f241 004c 	movw	r0, #4172	; 0x104c
 8001ebc:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001ec0:	6801      	ldr	r1, [r0, #0]
 8001ec2:	f041 0102 	orr.w	r1, r1, #2
 8001ec6:	6001      	str	r1, [r0, #0]
 8001ec8:	6801      	ldr	r1, [r0, #0]
 8001eca:	f001 0102 	and.w	r1, r1, #2
 8001ece:	9101      	str	r1, [sp, #4]
 8001ed0:	9901      	ldr	r1, [sp, #4]
 8001ed2:	6801      	ldr	r1, [r0, #0]
 8001ed4:	f041 0102 	orr.w	r1, r1, #2
 8001ed8:	6001      	str	r1, [r0, #0]
 8001eda:	6801      	ldr	r1, [r0, #0]
 8001edc:	f001 0102 	and.w	r1, r1, #2
 8001ee0:	9101      	str	r1, [sp, #4]
 8001ee2:	9901      	ldr	r1, [sp, #4]
 8001ee4:	6941      	ldr	r1, [r0, #20]
 8001ee6:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001eea:	6141      	str	r1, [r0, #20]
 8001eec:	6940      	ldr	r0, [r0, #20]
 8001eee:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001ef2:	9001      	str	r0, [sp, #4]
 8001ef4:	9801      	ldr	r0, [sp, #4]
 8001ef6:	2040      	movs	r0, #64	; 0x40
 8001ef8:	2402      	movs	r4, #2
 8001efa:	ae01      	add	r6, sp, #4
 8001efc:	f04f 0907 	mov.w	r9, #7
 8001f00:	9001      	str	r0, [sp, #4]
 8001f02:	2000      	movs	r0, #0
 8001f04:	9402      	str	r4, [sp, #8]
 8001f06:	9404      	str	r4, [sp, #16]
 8001f08:	4631      	mov	r1, r6
 8001f0a:	9003      	str	r0, [sp, #12]
 8001f0c:	f240 000c 	movw	r0, #12
 8001f10:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f14:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f18:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f1c:	f7ff f9a7 	bl	800126e <HAL_GPIO_Init>
 8001f20:	2080      	movs	r0, #128	; 0x80
 8001f22:	4631      	mov	r1, r6
 8001f24:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f28:	f240 0010 	movw	r0, #16
 8001f2c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f30:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f34:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f38:	f7ff f999 	bl	800126e <HAL_GPIO_Init>
 8001f3c:	f240 0008 	movw	r0, #8
 8001f40:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f44:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f48:	f8c8 0000 	str.w	r0, [r8]
 8001f4c:	4640      	mov	r0, r8
 8001f4e:	f7ff fcff 	bl	8001950 <HAL_UART_Init>
 8001f52:	b006      	add	sp, #24
 8001f54:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f58:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

08001f5c <qurt>:
 8001f5c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f5e:	af03      	add	r7, sp, #12
 8001f60:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8001f64:	ed2d 8b0c 	vpush	{d8-d13}
 8001f68:	f640 3020 	movw	r0, #2848	; 0xb20
 8001f6c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f70:	f8d0 8000 	ldr.w	r8, [r0]
 8001f74:	ed98 aa00 	vldr	s20, [r8]
 8001f78:	eeb5 aac0 	vcmpe.f32	s20, #0.0
 8001f7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f80:	d102      	bne.n	8001f88 <qurt+0x2c>
 8001f82:	f240 30e7 	movw	r0, #999	; 0x3e7
 8001f86:	e0c4      	b.n	8002112 <qurt+0x1b6>
 8001f88:	ed98 0a02 	vldr	s0, [r8, #8]
 8001f8c:	ed98 8a01 	vldr	s16, [r8, #4]
 8001f90:	eeb9 1a00 	vmov.f32	s2, #144	; 0xc0800000 -4.0
 8001f94:	ee2a 1a01 	vmul.f32	s2, s20, s2
 8001f98:	ee21 ba00 	vmul.f32	s22, s2, s0
 8001f9c:	ee08 ba08 	vmla.f32	s22, s16, s16
 8001fa0:	eeb5 bac0 	vcmpe.f32	s22, #0.0
 8001fa4:	eeb1 0a4b 	vneg.f32	s0, s22
 8001fa8:	eeb0 ca4b 	vmov.f32	s24, s22
 8001fac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001fb0:	bfb8      	it	lt
 8001fb2:	eeb0 ca40 	vmovlt.f32	s24, s0
 8001fb6:	eeb5 cac0 	vcmpe.f32	s24, #0.0
 8001fba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001fbe:	d102      	bne.n	8001fc6 <qurt+0x6a>
 8001fc0:	ed9f 9a56 	vldr	s18, [pc, #344]	; 800211c <qurt+0x1c0>
 8001fc4:	e03c      	b.n	8002040 <qurt+0xe4>
 8001fc6:	ed9f da56 	vldr	s26, [pc, #344]	; 8002120 <qurt+0x1c4>
 8001fca:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001fce:	2000      	movs	r0, #0
 8001fd0:	2613      	movs	r6, #19
 8001fd2:	ee8c 9a00 	vdiv.f32	s18, s24, s0
 8001fd6:	bb88      	cbnz	r0, 800203c <qurt+0xe0>
 8001fd8:	eeb0 0a4c 	vmov.f32	s0, s24
 8001fdc:	ee09 0a49 	vmls.f32	s0, s18, s18
 8001fe0:	ee10 0a10 	vmov	r0, s0
 8001fe4:	f7fe fa70 	bl	80004c8 <__aeabi_f2d>
 8001fe8:	4604      	mov	r4, r0
 8001fea:	ee19 0a10 	vmov	r0, s18
 8001fee:	460d      	mov	r5, r1
 8001ff0:	f7fe fa6a 	bl	80004c8 <__aeabi_f2d>
 8001ff4:	4602      	mov	r2, r0
 8001ff6:	460b      	mov	r3, r1
 8001ff8:	f7fe f908 	bl	800020c <__adddf3>
 8001ffc:	4602      	mov	r2, r0
 8001ffe:	460b      	mov	r3, r1
 8002000:	4620      	mov	r0, r4
 8002002:	4629      	mov	r1, r5
 8002004:	f7fe fbe2 	bl	80007cc <__aeabi_ddiv>
 8002008:	f7fe fcc8 	bl	800099c <__aeabi_d2f>
 800200c:	ee00 0a10 	vmov	s0, r0
 8002010:	ee39 9a00 	vadd.f32	s18, s18, s0
 8002014:	eeb0 0a4c 	vmov.f32	s0, s24
 8002018:	ee09 0a49 	vmls.f32	s0, s18, s18
 800201c:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8002020:	eeb1 1a40 	vneg.f32	s2, s0
 8002024:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002028:	bfb8      	it	lt
 800202a:	eeb0 0a41 	vmovlt.f32	s0, s2
 800202e:	eeb4 0acd 	vcmpe.f32	s0, s26
 8002032:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002036:	bf94      	ite	ls
 8002038:	2001      	movls	r0, #1
 800203a:	2000      	movhi	r0, #0
 800203c:	3e01      	subs	r6, #1
 800203e:	d1ca      	bne.n	8001fd6 <qurt+0x7a>
 8002040:	eeb5 bac0 	vcmpe.f32	s22, #0.0
 8002044:	ee3a 0a0a 	vadd.f32	s0, s20, s20
 8002048:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800204c:	dd22      	ble.n	8002094 <qurt+0x138>
 800204e:	f640 300c 	movw	r0, #2828	; 0xb0c
 8002052:	2101      	movs	r1, #1
 8002054:	ee39 1a48 	vsub.f32	s2, s18, s16
 8002058:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800205c:	ee81 1a00 	vdiv.f32	s2, s2, s0
 8002060:	6001      	str	r1, [r0, #0]
 8002062:	f640 3018 	movw	r0, #2840	; 0xb18
 8002066:	2100      	movs	r1, #0
 8002068:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800206c:	ed80 1a00 	vstr	s2, [r0]
 8002070:	6041      	str	r1, [r0, #4]
 8002072:	f640 3010 	movw	r0, #2832	; 0xb10
 8002076:	ed98 1a01 	vldr	s2, [r8, #4]
 800207a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800207e:	eeb1 1a41 	vneg.f32	s2, s2
 8002082:	ee31 2a49 	vsub.f32	s4, s2, s18
 8002086:	ed9f 1a25 	vldr	s2, [pc, #148]	; 800211c <qurt+0x1c0>
 800208a:	ee82 0a00 	vdiv.f32	s0, s4, s0
 800208e:	ed80 0a00 	vstr	s0, [r0]
 8002092:	e037      	b.n	8002104 <qurt+0x1a8>
 8002094:	d119      	bne.n	80020ca <qurt+0x16e>
 8002096:	f640 300c 	movw	r0, #2828	; 0xb0c
 800209a:	2100      	movs	r1, #0
 800209c:	eeb1 1a48 	vneg.f32	s2, s16
 80020a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020a4:	ee81 0a00 	vdiv.f32	s0, s2, s0
 80020a8:	ed9f 1a1c 	vldr	s2, [pc, #112]	; 800211c <qurt+0x1c0>
 80020ac:	6001      	str	r1, [r0, #0]
 80020ae:	f640 3018 	movw	r0, #2840	; 0xb18
 80020b2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020b6:	ed80 0a00 	vstr	s0, [r0]
 80020ba:	6041      	str	r1, [r0, #4]
 80020bc:	f640 3010 	movw	r0, #2832	; 0xb10
 80020c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020c4:	ed80 0a00 	vstr	s0, [r0]
 80020c8:	e01c      	b.n	8002104 <qurt+0x1a8>
 80020ca:	f640 300c 	movw	r0, #2828	; 0xb0c
 80020ce:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80020d2:	eeb1 1a48 	vneg.f32	s2, s16
 80020d6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020da:	ee81 2a00 	vdiv.f32	s4, s2, s0
 80020de:	ee89 0a00 	vdiv.f32	s0, s18, s0
 80020e2:	6001      	str	r1, [r0, #0]
 80020e4:	f640 3018 	movw	r0, #2840	; 0xb18
 80020e8:	eeb1 1a40 	vneg.f32	s2, s0
 80020ec:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020f0:	ed80 2a00 	vstr	s4, [r0]
 80020f4:	ed80 0a01 	vstr	s0, [r0, #4]
 80020f8:	f640 3010 	movw	r0, #2832	; 0xb10
 80020fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002100:	ed80 2a00 	vstr	s4, [r0]
 8002104:	f640 3010 	movw	r0, #2832	; 0xb10
 8002108:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800210c:	ed80 1a01 	vstr	s2, [r0, #4]
 8002110:	2000      	movs	r0, #0
 8002112:	ecbd 8b0c 	vpop	{d8-d13}
 8002116:	f85d 8b04 	ldr.w	r8, [sp], #4
 800211a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800211c:	00000000 	.word	0x00000000
 8002120:	3727c5ac 	.word	0x3727c5ac

08002124 <verify_benchmark>:
 8002124:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002128:	4770      	bx	lr

0800212a <initialise_benchmark>:
 800212a:	4770      	bx	lr

0800212c <benchmark>:
 800212c:	b5b0      	push	{r4, r5, r7, lr}
 800212e:	af02      	add	r7, sp, #8
 8002130:	f640 3420 	movw	r4, #2848	; 0xb20
 8002134:	f240 0014 	movw	r0, #20
 8002138:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800213c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002140:	6020      	str	r0, [r4, #0]
 8002142:	f7ff ff0b 	bl	8001f5c <qurt>
 8002146:	f640 2504 	movw	r5, #2564	; 0xa04
 800214a:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800214e:	6028      	str	r0, [r5, #0]
 8002150:	f240 0020 	movw	r0, #32
 8002154:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002158:	6020      	str	r0, [r4, #0]
 800215a:	f7ff feff 	bl	8001f5c <qurt>
 800215e:	6028      	str	r0, [r5, #0]
 8002160:	f240 002c 	movw	r0, #44	; 0x2c
 8002164:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002168:	6020      	str	r0, [r4, #0]
 800216a:	f7ff fef7 	bl	8001f5c <qurt>
 800216e:	6028      	str	r0, [r5, #0]
 8002170:	2000      	movs	r0, #0
 8002172:	bdb0      	pop	{r4, r5, r7, pc}

08002174 <__io_putchar>:
 8002174:	b580      	push	{r7, lr}
 8002176:	466f      	mov	r7, sp
 8002178:	b082      	sub	sp, #8
 800217a:	9001      	str	r0, [sp, #4]
 800217c:	f640 2008 	movw	r0, #2568	; 0xa08
 8002180:	a901      	add	r1, sp, #4
 8002182:	2201      	movs	r2, #1
 8002184:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002188:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800218c:	f7ff fdf7 	bl	8001d7e <HAL_UART_Transmit>
 8002190:	9801      	ldr	r0, [sp, #4]
 8002192:	b002      	add	sp, #8
 8002194:	bd80      	pop	{r7, pc}

08002196 <main>:
 8002196:	b5b0      	push	{r4, r5, r7, lr}
 8002198:	af02      	add	r7, sp, #8
 800219a:	f640 2108 	movw	r1, #2568	; 0xa08
 800219e:	f643 0000 	movw	r0, #14336	; 0x3800
 80021a2:	220c      	movs	r2, #12
 80021a4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021a8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80021ac:	6008      	str	r0, [r1, #0]
 80021ae:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80021b2:	6048      	str	r0, [r1, #4]
 80021b4:	2000      	movs	r0, #0
 80021b6:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80021ba:	6108      	str	r0, [r1, #16]
 80021bc:	6248      	str	r0, [r1, #36]	; 0x24
 80021be:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80021c2:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80021c6:	2000      	movs	r0, #0
 80021c8:	f7ff fe6e 	bl	8001ea8 <BSP_COM_Init>
 80021cc:	f7ff ffad 	bl	800212a <initialise_benchmark>
 80021d0:	f247 1088 	movw	r0, #29064	; 0x7188
 80021d4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021d8:	f000 f948 	bl	800246c <printf>
 80021dc:	f247 202f 	movw	r0, #29231	; 0x722f
 80021e0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021e4:	f000 f9a4 	bl	8002530 <puts>
 80021e8:	f7fe ffd0 	bl	800118c <HAL_Init>
 80021ec:	f7fe ffe6 	bl	80011bc <HAL_GetTick>
 80021f0:	4604      	mov	r4, r0
 80021f2:	f7ff ff9b 	bl	800212c <benchmark>
 80021f6:	4605      	mov	r5, r0
 80021f8:	f7fe ffe0 	bl	80011bc <HAL_GetTick>
 80021fc:	1b04      	subs	r4, r0, r4
 80021fe:	4628      	mov	r0, r5
 8002200:	f7ff ff90 	bl	8002124 <verify_benchmark>
 8002204:	1c41      	adds	r1, r0, #1
 8002206:	d006      	beq.n	8002216 <main+0x80>
 8002208:	2801      	cmp	r0, #1
 800220a:	d109      	bne.n	8002220 <main+0x8a>
 800220c:	f247 109b 	movw	r0, #29083	; 0x719b
 8002210:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002214:	e008      	b.n	8002228 <main+0x92>
 8002216:	f247 10bf 	movw	r0, #29119	; 0x71bf
 800221a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800221e:	e003      	b.n	8002228 <main+0x92>
 8002220:	f247 10f4 	movw	r0, #29172	; 0x71f4
 8002224:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002228:	4621      	mov	r1, r4
 800222a:	f000 f91f 	bl	800246c <printf>
 800222e:	2000      	movs	r0, #0
 8002230:	bdb0      	pop	{r4, r5, r7, pc}

08002232 <SysTick_Handler>:
 8002232:	b580      	push	{r7, lr}
 8002234:	466f      	mov	r7, sp
 8002236:	f7fe ffb9 	bl	80011ac <HAL_IncTick>
 800223a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800223e:	f7ff b813 	b.w	8001268 <HAL_SYSTICK_IRQHandler>

08002242 <_read>:
 8002242:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002244:	af03      	add	r7, sp, #12
 8002246:	f84d bd04 	str.w	fp, [sp, #-4]!
 800224a:	4614      	mov	r4, r2
 800224c:	460d      	mov	r5, r1
 800224e:	2c01      	cmp	r4, #1
 8002250:	db06      	blt.n	8002260 <_read+0x1e>
 8002252:	4626      	mov	r6, r4
 8002254:	f3af 8000 	nop.w
 8002258:	f805 0b01 	strb.w	r0, [r5], #1
 800225c:	3e01      	subs	r6, #1
 800225e:	d1f9      	bne.n	8002254 <_read+0x12>
 8002260:	4620      	mov	r0, r4
 8002262:	f85d bb04 	ldr.w	fp, [sp], #4
 8002266:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002268 <_write>:
 8002268:	b5f0      	push	{r4, r5, r6, r7, lr}
 800226a:	af03      	add	r7, sp, #12
 800226c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002270:	4614      	mov	r4, r2
 8002272:	460d      	mov	r5, r1
 8002274:	2c01      	cmp	r4, #1
 8002276:	db06      	blt.n	8002286 <_write+0x1e>
 8002278:	4626      	mov	r6, r4
 800227a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800227e:	f7ff ff79 	bl	8002174 <__io_putchar>
 8002282:	3e01      	subs	r6, #1
 8002284:	d1f9      	bne.n	800227a <_write+0x12>
 8002286:	4620      	mov	r0, r4
 8002288:	f85d bb04 	ldr.w	fp, [sp], #4
 800228c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800228e <_sbrk>:
 800228e:	f640 228c 	movw	r2, #2700	; 0xa8c
 8002292:	4601      	mov	r1, r0
 8002294:	466b      	mov	r3, sp
 8002296:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800229a:	6810      	ldr	r0, [r2, #0]
 800229c:	2800      	cmp	r0, #0
 800229e:	bf02      	ittt	eq
 80022a0:	f640 3050 	movweq	r0, #2896	; 0xb50
 80022a4:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80022a8:	6010      	streq	r0, [r2, #0]
 80022aa:	4401      	add	r1, r0
 80022ac:	4299      	cmp	r1, r3
 80022ae:	bf9c      	itt	ls
 80022b0:	6011      	strls	r1, [r2, #0]
 80022b2:	4770      	bxls	lr
 80022b4:	b580      	push	{r7, lr}
 80022b6:	466f      	mov	r7, sp
 80022b8:	f000 f864 	bl	8002384 <__errno>
 80022bc:	210c      	movs	r1, #12
 80022be:	6001      	str	r1, [r0, #0]
 80022c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022c4:	bd80      	pop	{r7, pc}

080022c6 <_close>:
 80022c6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022ca:	4770      	bx	lr

080022cc <_fstat>:
 80022cc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80022d0:	6048      	str	r0, [r1, #4]
 80022d2:	2000      	movs	r0, #0
 80022d4:	4770      	bx	lr

080022d6 <_isatty>:
 80022d6:	2001      	movs	r0, #1
 80022d8:	4770      	bx	lr

080022da <_lseek>:
 80022da:	2000      	movs	r0, #0
 80022dc:	4770      	bx	lr

080022de <SystemInit>:
 80022de:	f64e 5088 	movw	r0, #60808	; 0xed88
 80022e2:	f04f 0c00 	mov.w	ip, #0
 80022e6:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80022ea:	6801      	ldr	r1, [r0, #0]
 80022ec:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80022f0:	6001      	str	r1, [r0, #0]
 80022f2:	f241 0100 	movw	r1, #4096	; 0x1000
 80022f6:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80022fa:	680a      	ldr	r2, [r1, #0]
 80022fc:	f042 0201 	orr.w	r2, r2, #1
 8002300:	600a      	str	r2, [r1, #0]
 8002302:	f8c1 c008 	str.w	ip, [r1, #8]
 8002306:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800230a:	680b      	ldr	r3, [r1, #0]
 800230c:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002310:	401a      	ands	r2, r3
 8002312:	600a      	str	r2, [r1, #0]
 8002314:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002318:	60ca      	str	r2, [r1, #12]
 800231a:	680a      	ldr	r2, [r1, #0]
 800231c:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002320:	600a      	str	r2, [r1, #0]
 8002322:	f8c1 c018 	str.w	ip, [r1, #24]
 8002326:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800232a:	f840 1c80 	str.w	r1, [r0, #-128]
 800232e:	4770      	bx	lr

08002330 <Reset_Handler>:
 8002330:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002368 <LoopForever+0x2>
 8002334:	2100      	movs	r1, #0
 8002336:	e003      	b.n	8002340 <LoopCopyDataInit>

08002338 <CopyDataInit>:
 8002338:	4b0c      	ldr	r3, [pc, #48]	; (800236c <LoopForever+0x6>)
 800233a:	585b      	ldr	r3, [r3, r1]
 800233c:	5043      	str	r3, [r0, r1]
 800233e:	3104      	adds	r1, #4

08002340 <LoopCopyDataInit>:
 8002340:	480b      	ldr	r0, [pc, #44]	; (8002370 <LoopForever+0xa>)
 8002342:	4b0c      	ldr	r3, [pc, #48]	; (8002374 <LoopForever+0xe>)
 8002344:	1842      	adds	r2, r0, r1
 8002346:	429a      	cmp	r2, r3
 8002348:	d3f6      	bcc.n	8002338 <CopyDataInit>
 800234a:	4a0b      	ldr	r2, [pc, #44]	; (8002378 <LoopForever+0x12>)
 800234c:	e002      	b.n	8002354 <LoopFillZerobss>

0800234e <FillZerobss>:
 800234e:	2300      	movs	r3, #0
 8002350:	f842 3b04 	str.w	r3, [r2], #4

08002354 <LoopFillZerobss>:
 8002354:	4b09      	ldr	r3, [pc, #36]	; (800237c <LoopForever+0x16>)
 8002356:	429a      	cmp	r2, r3
 8002358:	d3f9      	bcc.n	800234e <FillZerobss>
 800235a:	f7ff ffc0 	bl	80022de <SystemInit>
 800235e:	f000 f817 	bl	8002390 <__libc_init_array>
 8002362:	f7ff ff18 	bl	8002196 <main>

08002366 <LoopForever>:
 8002366:	e7fe      	b.n	8002366 <LoopForever>
 8002368:	20018000 	.word	0x20018000
 800236c:	080074d8 	.word	0x080074d8
 8002370:	20000000 	.word	0x20000000
 8002374:	200009e8 	.word	0x200009e8
 8002378:	200009e8 	.word	0x200009e8
 800237c:	20000b4c 	.word	0x20000b4c

08002380 <ADC1_2_IRQHandler>:
 8002380:	e7fe      	b.n	8002380 <ADC1_2_IRQHandler>
	...

08002384 <__errno>:
 8002384:	4b01      	ldr	r3, [pc, #4]	; (800238c <__errno+0x8>)
 8002386:	6818      	ldr	r0, [r3, #0]
 8002388:	4770      	bx	lr
 800238a:	bf00      	nop
 800238c:	2000003c 	.word	0x2000003c

08002390 <__libc_init_array>:
 8002390:	b570      	push	{r4, r5, r6, lr}
 8002392:	4e0d      	ldr	r6, [pc, #52]	; (80023c8 <__libc_init_array+0x38>)
 8002394:	4d0d      	ldr	r5, [pc, #52]	; (80023cc <__libc_init_array+0x3c>)
 8002396:	1b76      	subs	r6, r6, r5
 8002398:	10b6      	asrs	r6, r6, #2
 800239a:	d006      	beq.n	80023aa <__libc_init_array+0x1a>
 800239c:	2400      	movs	r4, #0
 800239e:	3401      	adds	r4, #1
 80023a0:	f855 3b04 	ldr.w	r3, [r5], #4
 80023a4:	4798      	blx	r3
 80023a6:	42a6      	cmp	r6, r4
 80023a8:	d1f9      	bne.n	800239e <__libc_init_array+0xe>
 80023aa:	4e09      	ldr	r6, [pc, #36]	; (80023d0 <__libc_init_array+0x40>)
 80023ac:	4d09      	ldr	r5, [pc, #36]	; (80023d4 <__libc_init_array+0x44>)
 80023ae:	1b76      	subs	r6, r6, r5
 80023b0:	f004 fea8 	bl	8007104 <_init>
 80023b4:	10b6      	asrs	r6, r6, #2
 80023b6:	d006      	beq.n	80023c6 <__libc_init_array+0x36>
 80023b8:	2400      	movs	r4, #0
 80023ba:	3401      	adds	r4, #1
 80023bc:	f855 3b04 	ldr.w	r3, [r5], #4
 80023c0:	4798      	blx	r3
 80023c2:	42a6      	cmp	r6, r4
 80023c4:	d1f9      	bne.n	80023ba <__libc_init_array+0x2a>
 80023c6:	bd70      	pop	{r4, r5, r6, pc}
 80023c8:	080074c8 	.word	0x080074c8
 80023cc:	080074c8 	.word	0x080074c8
 80023d0:	080074d0 	.word	0x080074d0
 80023d4:	080074c8 	.word	0x080074c8

080023d8 <memset>:
 80023d8:	b4f0      	push	{r4, r5, r6, r7}
 80023da:	0786      	lsls	r6, r0, #30
 80023dc:	d043      	beq.n	8002466 <memset+0x8e>
 80023de:	1e54      	subs	r4, r2, #1
 80023e0:	2a00      	cmp	r2, #0
 80023e2:	d03e      	beq.n	8002462 <memset+0x8a>
 80023e4:	b2ca      	uxtb	r2, r1
 80023e6:	4603      	mov	r3, r0
 80023e8:	e002      	b.n	80023f0 <memset+0x18>
 80023ea:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80023ee:	d338      	bcc.n	8002462 <memset+0x8a>
 80023f0:	f803 2b01 	strb.w	r2, [r3], #1
 80023f4:	079d      	lsls	r5, r3, #30
 80023f6:	d1f8      	bne.n	80023ea <memset+0x12>
 80023f8:	2c03      	cmp	r4, #3
 80023fa:	d92b      	bls.n	8002454 <memset+0x7c>
 80023fc:	b2cd      	uxtb	r5, r1
 80023fe:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002402:	2c0f      	cmp	r4, #15
 8002404:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002408:	d916      	bls.n	8002438 <memset+0x60>
 800240a:	f1a4 0710 	sub.w	r7, r4, #16
 800240e:	093f      	lsrs	r7, r7, #4
 8002410:	f103 0620 	add.w	r6, r3, #32
 8002414:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002418:	f103 0210 	add.w	r2, r3, #16
 800241c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002420:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002424:	3210      	adds	r2, #16
 8002426:	42b2      	cmp	r2, r6
 8002428:	d1f8      	bne.n	800241c <memset+0x44>
 800242a:	f004 040f 	and.w	r4, r4, #15
 800242e:	3701      	adds	r7, #1
 8002430:	2c03      	cmp	r4, #3
 8002432:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002436:	d90d      	bls.n	8002454 <memset+0x7c>
 8002438:	461e      	mov	r6, r3
 800243a:	4622      	mov	r2, r4
 800243c:	3a04      	subs	r2, #4
 800243e:	2a03      	cmp	r2, #3
 8002440:	f846 5b04 	str.w	r5, [r6], #4
 8002444:	d8fa      	bhi.n	800243c <memset+0x64>
 8002446:	1f22      	subs	r2, r4, #4
 8002448:	f022 0203 	bic.w	r2, r2, #3
 800244c:	3204      	adds	r2, #4
 800244e:	4413      	add	r3, r2
 8002450:	f004 0403 	and.w	r4, r4, #3
 8002454:	b12c      	cbz	r4, 8002462 <memset+0x8a>
 8002456:	b2c9      	uxtb	r1, r1
 8002458:	441c      	add	r4, r3
 800245a:	f803 1b01 	strb.w	r1, [r3], #1
 800245e:	429c      	cmp	r4, r3
 8002460:	d1fb      	bne.n	800245a <memset+0x82>
 8002462:	bcf0      	pop	{r4, r5, r6, r7}
 8002464:	4770      	bx	lr
 8002466:	4614      	mov	r4, r2
 8002468:	4603      	mov	r3, r0
 800246a:	e7c5      	b.n	80023f8 <memset+0x20>

0800246c <printf>:
 800246c:	b40f      	push	{r0, r1, r2, r3}
 800246e:	b500      	push	{lr}
 8002470:	4907      	ldr	r1, [pc, #28]	; (8002490 <printf+0x24>)
 8002472:	b083      	sub	sp, #12
 8002474:	ab04      	add	r3, sp, #16
 8002476:	6808      	ldr	r0, [r1, #0]
 8002478:	f853 2b04 	ldr.w	r2, [r3], #4
 800247c:	6881      	ldr	r1, [r0, #8]
 800247e:	9301      	str	r3, [sp, #4]
 8002480:	f000 f85e 	bl	8002540 <_vfprintf_r>
 8002484:	b003      	add	sp, #12
 8002486:	f85d eb04 	ldr.w	lr, [sp], #4
 800248a:	b004      	add	sp, #16
 800248c:	4770      	bx	lr
 800248e:	bf00      	nop
 8002490:	2000003c 	.word	0x2000003c

08002494 <_puts_r>:
 8002494:	b570      	push	{r4, r5, r6, lr}
 8002496:	4605      	mov	r5, r0
 8002498:	b088      	sub	sp, #32
 800249a:	4608      	mov	r0, r1
 800249c:	460c      	mov	r4, r1
 800249e:	f7fe fcef 	bl	8000e80 <strlen>
 80024a2:	4a22      	ldr	r2, [pc, #136]	; (800252c <_puts_r+0x98>)
 80024a4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80024a6:	9404      	str	r4, [sp, #16]
 80024a8:	2601      	movs	r6, #1
 80024aa:	1c44      	adds	r4, r0, #1
 80024ac:	a904      	add	r1, sp, #16
 80024ae:	9206      	str	r2, [sp, #24]
 80024b0:	2202      	movs	r2, #2
 80024b2:	9403      	str	r4, [sp, #12]
 80024b4:	9005      	str	r0, [sp, #20]
 80024b6:	68ac      	ldr	r4, [r5, #8]
 80024b8:	9607      	str	r6, [sp, #28]
 80024ba:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80024be:	b31b      	cbz	r3, 8002508 <_puts_r+0x74>
 80024c0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80024c2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80024c6:	07ce      	lsls	r6, r1, #31
 80024c8:	b29a      	uxth	r2, r3
 80024ca:	d401      	bmi.n	80024d0 <_puts_r+0x3c>
 80024cc:	0590      	lsls	r0, r2, #22
 80024ce:	d525      	bpl.n	800251c <_puts_r+0x88>
 80024d0:	0491      	lsls	r1, r2, #18
 80024d2:	d406      	bmi.n	80024e2 <_puts_r+0x4e>
 80024d4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80024d6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80024da:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80024de:	81a3      	strh	r3, [r4, #12]
 80024e0:	6662      	str	r2, [r4, #100]	; 0x64
 80024e2:	4628      	mov	r0, r5
 80024e4:	aa01      	add	r2, sp, #4
 80024e6:	4621      	mov	r1, r4
 80024e8:	f003 f85e 	bl	80055a8 <__sfvwrite_r>
 80024ec:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80024ee:	2800      	cmp	r0, #0
 80024f0:	bf0c      	ite	eq
 80024f2:	250a      	moveq	r5, #10
 80024f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80024f8:	07da      	lsls	r2, r3, #31
 80024fa:	d402      	bmi.n	8002502 <_puts_r+0x6e>
 80024fc:	89a3      	ldrh	r3, [r4, #12]
 80024fe:	059b      	lsls	r3, r3, #22
 8002500:	d506      	bpl.n	8002510 <_puts_r+0x7c>
 8002502:	4628      	mov	r0, r5
 8002504:	b008      	add	sp, #32
 8002506:	bd70      	pop	{r4, r5, r6, pc}
 8002508:	4628      	mov	r0, r5
 800250a:	f002 feb7 	bl	800527c <__sinit>
 800250e:	e7d7      	b.n	80024c0 <_puts_r+0x2c>
 8002510:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002512:	f003 fa05 	bl	8005920 <__retarget_lock_release_recursive>
 8002516:	4628      	mov	r0, r5
 8002518:	b008      	add	sp, #32
 800251a:	bd70      	pop	{r4, r5, r6, pc}
 800251c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800251e:	f003 f9fd 	bl	800591c <__retarget_lock_acquire_recursive>
 8002522:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002526:	b29a      	uxth	r2, r3
 8002528:	e7d2      	b.n	80024d0 <_puts_r+0x3c>
 800252a:	bf00      	nop
 800252c:	08007238 	.word	0x08007238

08002530 <puts>:
 8002530:	4b02      	ldr	r3, [pc, #8]	; (800253c <puts+0xc>)
 8002532:	4601      	mov	r1, r0
 8002534:	6818      	ldr	r0, [r3, #0]
 8002536:	f7ff bfad 	b.w	8002494 <_puts_r>
 800253a:	bf00      	nop
 800253c:	2000003c 	.word	0x2000003c

08002540 <_vfprintf_r>:
 8002540:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002544:	b0d7      	sub	sp, #348	; 0x15c
 8002546:	461c      	mov	r4, r3
 8002548:	4689      	mov	r9, r1
 800254a:	4617      	mov	r7, r2
 800254c:	4605      	mov	r5, r0
 800254e:	9003      	str	r0, [sp, #12]
 8002550:	f003 f9d2 	bl	80058f8 <_localeconv_r>
 8002554:	6803      	ldr	r3, [r0, #0]
 8002556:	9316      	str	r3, [sp, #88]	; 0x58
 8002558:	4618      	mov	r0, r3
 800255a:	f7fe fc91 	bl	8000e80 <strlen>
 800255e:	9408      	str	r4, [sp, #32]
 8002560:	9015      	str	r0, [sp, #84]	; 0x54
 8002562:	b11d      	cbz	r5, 800256c <_vfprintf_r+0x2c>
 8002564:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002566:	2b00      	cmp	r3, #0
 8002568:	f000 8107 	beq.w	800277a <_vfprintf_r+0x23a>
 800256c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002570:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002574:	07c8      	lsls	r0, r1, #31
 8002576:	b293      	uxth	r3, r2
 8002578:	d402      	bmi.n	8002580 <_vfprintf_r+0x40>
 800257a:	0599      	lsls	r1, r3, #22
 800257c:	f140 811f 	bpl.w	80027be <_vfprintf_r+0x27e>
 8002580:	049e      	lsls	r6, r3, #18
 8002582:	d40a      	bmi.n	800259a <_vfprintf_r+0x5a>
 8002584:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002588:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800258c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002590:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002594:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002598:	b29b      	uxth	r3, r3
 800259a:	071d      	lsls	r5, r3, #28
 800259c:	f140 80b2 	bpl.w	8002704 <_vfprintf_r+0x1c4>
 80025a0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80025a4:	2a00      	cmp	r2, #0
 80025a6:	f000 80ad 	beq.w	8002704 <_vfprintf_r+0x1c4>
 80025aa:	f003 021a 	and.w	r2, r3, #26
 80025ae:	2a0a      	cmp	r2, #10
 80025b0:	f000 80c9 	beq.w	8002746 <_vfprintf_r+0x206>
 80025b4:	2300      	movs	r3, #0
 80025b6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80027d0 <_vfprintf_r+0x290>
 80025ba:	9310      	str	r3, [sp, #64]	; 0x40
 80025bc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80025c0:	9317      	str	r3, [sp, #92]	; 0x5c
 80025c2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80025c6:	931b      	str	r3, [sp, #108]	; 0x6c
 80025c8:	9318      	str	r3, [sp, #96]	; 0x60
 80025ca:	9305      	str	r3, [sp, #20]
 80025cc:	ab2d      	add	r3, sp, #180	; 0xb4
 80025ce:	932a      	str	r3, [sp, #168]	; 0xa8
 80025d0:	469b      	mov	fp, r3
 80025d2:	783b      	ldrb	r3, [r7, #0]
 80025d4:	f8cd 901c 	str.w	r9, [sp, #28]
 80025d8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80025dc:	2b00      	cmp	r3, #0
 80025de:	f000 8259 	beq.w	8002a94 <_vfprintf_r+0x554>
 80025e2:	2b25      	cmp	r3, #37	; 0x25
 80025e4:	463c      	mov	r4, r7
 80025e6:	d102      	bne.n	80025ee <_vfprintf_r+0xae>
 80025e8:	e01d      	b.n	8002626 <_vfprintf_r+0xe6>
 80025ea:	2b25      	cmp	r3, #37	; 0x25
 80025ec:	d003      	beq.n	80025f6 <_vfprintf_r+0xb6>
 80025ee:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80025f2:	2b00      	cmp	r3, #0
 80025f4:	d1f9      	bne.n	80025ea <_vfprintf_r+0xaa>
 80025f6:	1be5      	subs	r5, r4, r7
 80025f8:	b18d      	cbz	r5, 800261e <_vfprintf_r+0xde>
 80025fa:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80025fe:	3301      	adds	r3, #1
 8002600:	442a      	add	r2, r5
 8002602:	2b07      	cmp	r3, #7
 8002604:	f8cb 7000 	str.w	r7, [fp]
 8002608:	f8cb 5004 	str.w	r5, [fp, #4]
 800260c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002610:	f300 80ca 	bgt.w	80027a8 <_vfprintf_r+0x268>
 8002614:	f10b 0b08 	add.w	fp, fp, #8
 8002618:	9b05      	ldr	r3, [sp, #20]
 800261a:	442b      	add	r3, r5
 800261c:	9305      	str	r3, [sp, #20]
 800261e:	7823      	ldrb	r3, [r4, #0]
 8002620:	2b00      	cmp	r3, #0
 8002622:	f000 8237 	beq.w	8002a94 <_vfprintf_r+0x554>
 8002626:	2300      	movs	r3, #0
 8002628:	7866      	ldrb	r6, [r4, #1]
 800262a:	9306      	str	r3, [sp, #24]
 800262c:	4698      	mov	r8, r3
 800262e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002632:	f104 0a01 	add.w	sl, r4, #1
 8002636:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800263a:	252b      	movs	r5, #43	; 0x2b
 800263c:	f10a 0a01 	add.w	sl, sl, #1
 8002640:	f1a6 0320 	sub.w	r3, r6, #32
 8002644:	2b5a      	cmp	r3, #90	; 0x5a
 8002646:	f200 842a 	bhi.w	8002e9e <_vfprintf_r+0x95e>
 800264a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800264e:	03aa      	.short	0x03aa
 8002650:	04280428 	.word	0x04280428
 8002654:	0428029c 	.word	0x0428029c
 8002658:	04280428 	.word	0x04280428
 800265c:	042802a7 	.word	0x042802a7
 8002660:	02c60428 	.word	0x02c60428
 8002664:	042802d2 	.word	0x042802d2
 8002668:	02dc02d7 	.word	0x02dc02d7
 800266c:	02f60428 	.word	0x02f60428
 8002670:	026d026d 	.word	0x026d026d
 8002674:	026d026d 	.word	0x026d026d
 8002678:	026d026d 	.word	0x026d026d
 800267c:	026d026d 	.word	0x026d026d
 8002680:	0428026d 	.word	0x0428026d
 8002684:	04280428 	.word	0x04280428
 8002688:	04280428 	.word	0x04280428
 800268c:	04280428 	.word	0x04280428
 8002690:	042802fb 	.word	0x042802fb
 8002694:	03f3033c 	.word	0x03f3033c
 8002698:	02fb02fb 	.word	0x02fb02fb
 800269c:	042802fb 	.word	0x042802fb
 80026a0:	04280428 	.word	0x04280428
 80026a4:	03ee0428 	.word	0x03ee0428
 80026a8:	04280428 	.word	0x04280428
 80026ac:	0428009a 	.word	0x0428009a
 80026b0:	04280428 	.word	0x04280428
 80026b4:	04280350 	.word	0x04280350
 80026b8:	04280379 	.word	0x04280379
 80026bc:	03900428 	.word	0x03900428
 80026c0:	04280428 	.word	0x04280428
 80026c4:	04280428 	.word	0x04280428
 80026c8:	04280428 	.word	0x04280428
 80026cc:	04280428 	.word	0x04280428
 80026d0:	042802fb 	.word	0x042802fb
 80026d4:	00c5033c 	.word	0x00c5033c
 80026d8:	02fb02fb 	.word	0x02fb02fb
 80026dc:	03d102fb 	.word	0x03d102fb
 80026e0:	007000c5 	.word	0x007000c5
 80026e4:	03b50428 	.word	0x03b50428
 80026e8:	03c20428 	.word	0x03c20428
 80026ec:	03de009c 	.word	0x03de009c
 80026f0:	04280070 	.word	0x04280070
 80026f4:	00720350 	.word	0x00720350
 80026f8:	0428022c 	.word	0x0428022c
 80026fc:	027c0428 	.word	0x027c0428
 8002700:	00720428 	.word	0x00720428
 8002704:	4649      	mov	r1, r9
 8002706:	9803      	ldr	r0, [sp, #12]
 8002708:	f001 fc9a 	bl	8004040 <__swsetup_r>
 800270c:	b1a0      	cbz	r0, 8002738 <_vfprintf_r+0x1f8>
 800270e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002712:	07d8      	lsls	r0, r3, #31
 8002714:	d404      	bmi.n	8002720 <_vfprintf_r+0x1e0>
 8002716:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800271a:	0599      	lsls	r1, r3, #22
 800271c:	f140 83b7 	bpl.w	8002e8e <_vfprintf_r+0x94e>
 8002720:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002724:	9305      	str	r3, [sp, #20]
 8002726:	9805      	ldr	r0, [sp, #20]
 8002728:	b057      	add	sp, #348	; 0x15c
 800272a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800272e:	f048 0820 	orr.w	r8, r8, #32
 8002732:	f89a 6000 	ldrb.w	r6, [sl]
 8002736:	e781      	b.n	800263c <_vfprintf_r+0xfc>
 8002738:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800273c:	f003 021a 	and.w	r2, r3, #26
 8002740:	2a0a      	cmp	r2, #10
 8002742:	f47f af37 	bne.w	80025b4 <_vfprintf_r+0x74>
 8002746:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800274a:	2a00      	cmp	r2, #0
 800274c:	f6ff af32 	blt.w	80025b4 <_vfprintf_r+0x74>
 8002750:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002754:	07d2      	lsls	r2, r2, #31
 8002756:	d405      	bmi.n	8002764 <_vfprintf_r+0x224>
 8002758:	059b      	lsls	r3, r3, #22
 800275a:	d403      	bmi.n	8002764 <_vfprintf_r+0x224>
 800275c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002760:	f003 f8de 	bl	8005920 <__retarget_lock_release_recursive>
 8002764:	4623      	mov	r3, r4
 8002766:	463a      	mov	r2, r7
 8002768:	4649      	mov	r1, r9
 800276a:	9803      	ldr	r0, [sp, #12]
 800276c:	f001 fc26 	bl	8003fbc <__sbprintf>
 8002770:	9005      	str	r0, [sp, #20]
 8002772:	9805      	ldr	r0, [sp, #20]
 8002774:	b057      	add	sp, #348	; 0x15c
 8002776:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800277a:	9803      	ldr	r0, [sp, #12]
 800277c:	f002 fd7e 	bl	800527c <__sinit>
 8002780:	e6f4      	b.n	800256c <_vfprintf_r+0x2c>
 8002782:	f048 0810 	orr.w	r8, r8, #16
 8002786:	f018 0f20 	tst.w	r8, #32
 800278a:	f000 836c 	beq.w	8002e66 <_vfprintf_r+0x926>
 800278e:	9c08      	ldr	r4, [sp, #32]
 8002790:	3407      	adds	r4, #7
 8002792:	f024 0307 	bic.w	r3, r4, #7
 8002796:	e9d3 4500 	ldrd	r4, r5, [r3]
 800279a:	f103 0208 	add.w	r2, r3, #8
 800279e:	9208      	str	r2, [sp, #32]
 80027a0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80027a4:	2200      	movs	r2, #0
 80027a6:	e18c      	b.n	8002ac2 <_vfprintf_r+0x582>
 80027a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80027aa:	9907      	ldr	r1, [sp, #28]
 80027ac:	9803      	ldr	r0, [sp, #12]
 80027ae:	f004 f9f5 	bl	8006b9c <__sprint_r>
 80027b2:	2800      	cmp	r0, #0
 80027b4:	f041 8376 	bne.w	8003ea4 <_vfprintf_r+0x1964>
 80027b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027bc:	e72c      	b.n	8002618 <_vfprintf_r+0xd8>
 80027be:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80027c2:	f003 f8ab 	bl	800591c <__retarget_lock_acquire_recursive>
 80027c6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027ca:	b293      	uxth	r3, r2
 80027cc:	e6d8      	b.n	8002580 <_vfprintf_r+0x40>
 80027ce:	bf00      	nop
	...
 80027d8:	4643      	mov	r3, r8
 80027da:	069f      	lsls	r7, r3, #26
 80027dc:	f140 832f 	bpl.w	8002e3e <_vfprintf_r+0x8fe>
 80027e0:	9c08      	ldr	r4, [sp, #32]
 80027e2:	3407      	adds	r4, #7
 80027e4:	f024 0407 	bic.w	r4, r4, #7
 80027e8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80027ec:	f104 0208 	add.w	r2, r4, #8
 80027f0:	9208      	str	r2, [sp, #32]
 80027f2:	4604      	mov	r4, r0
 80027f4:	460d      	mov	r5, r1
 80027f6:	2800      	cmp	r0, #0
 80027f8:	f171 0200 	sbcs.w	r2, r1, #0
 80027fc:	da05      	bge.n	800280a <_vfprintf_r+0x2ca>
 80027fe:	222d      	movs	r2, #45	; 0x2d
 8002800:	4264      	negs	r4, r4
 8002802:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002806:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800280a:	aa56      	add	r2, sp, #344	; 0x158
 800280c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002810:	9204      	str	r2, [sp, #16]
 8002812:	f000 84b2 	beq.w	800317a <_vfprintf_r+0xc3a>
 8002816:	2201      	movs	r2, #1
 8002818:	ea54 0105 	orrs.w	r1, r4, r5
 800281c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002820:	f040 8159 	bne.w	8002ad6 <_vfprintf_r+0x596>
 8002824:	f1b9 0f00 	cmp.w	r9, #0
 8002828:	f040 8619 	bne.w	800345e <_vfprintf_r+0xf1e>
 800282c:	2a00      	cmp	r2, #0
 800282e:	f040 8508 	bne.w	8003242 <_vfprintf_r+0xd02>
 8002832:	f013 0301 	ands.w	r3, r3, #1
 8002836:	af56      	add	r7, sp, #344	; 0x158
 8002838:	9309      	str	r3, [sp, #36]	; 0x24
 800283a:	d002      	beq.n	8002842 <_vfprintf_r+0x302>
 800283c:	2330      	movs	r3, #48	; 0x30
 800283e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002842:	2300      	movs	r3, #0
 8002844:	930a      	str	r3, [sp, #40]	; 0x28
 8002846:	930f      	str	r3, [sp, #60]	; 0x3c
 8002848:	9314      	str	r3, [sp, #80]	; 0x50
 800284a:	9311      	str	r3, [sp, #68]	; 0x44
 800284c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800284e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002852:	454b      	cmp	r3, r9
 8002854:	bfb8      	it	lt
 8002856:	464b      	movlt	r3, r9
 8002858:	9304      	str	r3, [sp, #16]
 800285a:	b112      	cbz	r2, 8002862 <_vfprintf_r+0x322>
 800285c:	9b04      	ldr	r3, [sp, #16]
 800285e:	3301      	adds	r3, #1
 8002860:	9304      	str	r3, [sp, #16]
 8002862:	f018 0302 	ands.w	r3, r8, #2
 8002866:	930b      	str	r3, [sp, #44]	; 0x2c
 8002868:	d002      	beq.n	8002870 <_vfprintf_r+0x330>
 800286a:	9b04      	ldr	r3, [sp, #16]
 800286c:	3302      	adds	r3, #2
 800286e:	9304      	str	r3, [sp, #16]
 8002870:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002874:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002876:	930e      	str	r3, [sp, #56]	; 0x38
 8002878:	d13f      	bne.n	80028fa <_vfprintf_r+0x3ba>
 800287a:	9b06      	ldr	r3, [sp, #24]
 800287c:	9904      	ldr	r1, [sp, #16]
 800287e:	1a5d      	subs	r5, r3, r1
 8002880:	2d00      	cmp	r5, #0
 8002882:	dd3a      	ble.n	80028fa <_vfprintf_r+0x3ba>
 8002884:	2d10      	cmp	r5, #16
 8002886:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002888:	dd29      	ble.n	80028de <_vfprintf_r+0x39e>
 800288a:	4659      	mov	r1, fp
 800288c:	4620      	mov	r0, r4
 800288e:	9620      	str	r6, [sp, #128]	; 0x80
 8002890:	2310      	movs	r3, #16
 8002892:	9c03      	ldr	r4, [sp, #12]
 8002894:	9e07      	ldr	r6, [sp, #28]
 8002896:	46bb      	mov	fp, r7
 8002898:	e004      	b.n	80028a4 <_vfprintf_r+0x364>
 800289a:	3d10      	subs	r5, #16
 800289c:	2d10      	cmp	r5, #16
 800289e:	f101 0108 	add.w	r1, r1, #8
 80028a2:	dd18      	ble.n	80028d6 <_vfprintf_r+0x396>
 80028a4:	3201      	adds	r2, #1
 80028a6:	4fba      	ldr	r7, [pc, #744]	; (8002b90 <_vfprintf_r+0x650>)
 80028a8:	3010      	adds	r0, #16
 80028aa:	2a07      	cmp	r2, #7
 80028ac:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028b0:	e9c1 7300 	strd	r7, r3, [r1]
 80028b4:	ddf1      	ble.n	800289a <_vfprintf_r+0x35a>
 80028b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80028b8:	4631      	mov	r1, r6
 80028ba:	4620      	mov	r0, r4
 80028bc:	930c      	str	r3, [sp, #48]	; 0x30
 80028be:	f004 f96d 	bl	8006b9c <__sprint_r>
 80028c2:	2800      	cmp	r0, #0
 80028c4:	f040 843d 	bne.w	8003142 <_vfprintf_r+0xc02>
 80028c8:	3d10      	subs	r5, #16
 80028ca:	2d10      	cmp	r5, #16
 80028cc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028d0:	a92d      	add	r1, sp, #180	; 0xb4
 80028d2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80028d4:	dce6      	bgt.n	80028a4 <_vfprintf_r+0x364>
 80028d6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80028d8:	465f      	mov	r7, fp
 80028da:	4604      	mov	r4, r0
 80028dc:	468b      	mov	fp, r1
 80028de:	3201      	adds	r2, #1
 80028e0:	4bab      	ldr	r3, [pc, #684]	; (8002b90 <_vfprintf_r+0x650>)
 80028e2:	442c      	add	r4, r5
 80028e4:	2a07      	cmp	r2, #7
 80028e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028ea:	e9cb 3500 	strd	r3, r5, [fp]
 80028ee:	f300 84ff 	bgt.w	80032f0 <_vfprintf_r+0xdb0>
 80028f2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028f6:	f10b 0b08 	add.w	fp, fp, #8
 80028fa:	b172      	cbz	r2, 800291a <_vfprintf_r+0x3da>
 80028fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028fe:	3201      	adds	r2, #1
 8002900:	3401      	adds	r4, #1
 8002902:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002906:	2101      	movs	r1, #1
 8002908:	2a07      	cmp	r2, #7
 800290a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800290e:	e9cb 0100 	strd	r0, r1, [fp]
 8002912:	f300 8418 	bgt.w	8003146 <_vfprintf_r+0xc06>
 8002916:	f10b 0b08 	add.w	fp, fp, #8
 800291a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800291c:	b16b      	cbz	r3, 800293a <_vfprintf_r+0x3fa>
 800291e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002920:	3301      	adds	r3, #1
 8002922:	3402      	adds	r4, #2
 8002924:	a923      	add	r1, sp, #140	; 0x8c
 8002926:	2202      	movs	r2, #2
 8002928:	2b07      	cmp	r3, #7
 800292a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800292e:	e9cb 1200 	strd	r1, r2, [fp]
 8002932:	f300 8415 	bgt.w	8003160 <_vfprintf_r+0xc20>
 8002936:	f10b 0b08 	add.w	fp, fp, #8
 800293a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800293c:	2b80      	cmp	r3, #128	; 0x80
 800293e:	f000 8331 	beq.w	8002fa4 <_vfprintf_r+0xa64>
 8002942:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002944:	eba9 0503 	sub.w	r5, r9, r3
 8002948:	2d00      	cmp	r5, #0
 800294a:	dd37      	ble.n	80029bc <_vfprintf_r+0x47c>
 800294c:	2d10      	cmp	r5, #16
 800294e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002950:	4b90      	ldr	r3, [pc, #576]	; (8002b94 <_vfprintf_r+0x654>)
 8002952:	dd28      	ble.n	80029a6 <_vfprintf_r+0x466>
 8002954:	4659      	mov	r1, fp
 8002956:	4620      	mov	r0, r4
 8002958:	46bb      	mov	fp, r7
 800295a:	f04f 0910 	mov.w	r9, #16
 800295e:	4637      	mov	r7, r6
 8002960:	461c      	mov	r4, r3
 8002962:	9e07      	ldr	r6, [sp, #28]
 8002964:	e004      	b.n	8002970 <_vfprintf_r+0x430>
 8002966:	3d10      	subs	r5, #16
 8002968:	2d10      	cmp	r5, #16
 800296a:	f101 0108 	add.w	r1, r1, #8
 800296e:	dd15      	ble.n	800299c <_vfprintf_r+0x45c>
 8002970:	3201      	adds	r2, #1
 8002972:	3010      	adds	r0, #16
 8002974:	2a07      	cmp	r2, #7
 8002976:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800297a:	e9c1 4900 	strd	r4, r9, [r1]
 800297e:	ddf2      	ble.n	8002966 <_vfprintf_r+0x426>
 8002980:	aa2a      	add	r2, sp, #168	; 0xa8
 8002982:	4631      	mov	r1, r6
 8002984:	9803      	ldr	r0, [sp, #12]
 8002986:	f004 f909 	bl	8006b9c <__sprint_r>
 800298a:	2800      	cmp	r0, #0
 800298c:	f040 83d9 	bne.w	8003142 <_vfprintf_r+0xc02>
 8002990:	3d10      	subs	r5, #16
 8002992:	2d10      	cmp	r5, #16
 8002994:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002998:	a92d      	add	r1, sp, #180	; 0xb4
 800299a:	dce9      	bgt.n	8002970 <_vfprintf_r+0x430>
 800299c:	463e      	mov	r6, r7
 800299e:	4623      	mov	r3, r4
 80029a0:	465f      	mov	r7, fp
 80029a2:	4604      	mov	r4, r0
 80029a4:	468b      	mov	fp, r1
 80029a6:	3201      	adds	r2, #1
 80029a8:	442c      	add	r4, r5
 80029aa:	2a07      	cmp	r2, #7
 80029ac:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80029b0:	e9cb 3500 	strd	r3, r5, [fp]
 80029b4:	f300 83ef 	bgt.w	8003196 <_vfprintf_r+0xc56>
 80029b8:	f10b 0b08 	add.w	fp, fp, #8
 80029bc:	f418 7f80 	tst.w	r8, #256	; 0x100
 80029c0:	f040 8280 	bne.w	8002ec4 <_vfprintf_r+0x984>
 80029c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029c6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80029c8:	f8cb 7000 	str.w	r7, [fp]
 80029cc:	3301      	adds	r3, #1
 80029ce:	4414      	add	r4, r2
 80029d0:	2b07      	cmp	r3, #7
 80029d2:	942c      	str	r4, [sp, #176]	; 0xb0
 80029d4:	f8cb 2004 	str.w	r2, [fp, #4]
 80029d8:	932b      	str	r3, [sp, #172]	; 0xac
 80029da:	f300 8392 	bgt.w	8003102 <_vfprintf_r+0xbc2>
 80029de:	f10b 0b08 	add.w	fp, fp, #8
 80029e2:	f018 0f04 	tst.w	r8, #4
 80029e6:	d03b      	beq.n	8002a60 <_vfprintf_r+0x520>
 80029e8:	9b06      	ldr	r3, [sp, #24]
 80029ea:	9a04      	ldr	r2, [sp, #16]
 80029ec:	1a9d      	subs	r5, r3, r2
 80029ee:	2d00      	cmp	r5, #0
 80029f0:	dd36      	ble.n	8002a60 <_vfprintf_r+0x520>
 80029f2:	2d10      	cmp	r5, #16
 80029f4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029f6:	dd21      	ble.n	8002a3c <_vfprintf_r+0x4fc>
 80029f8:	2610      	movs	r6, #16
 80029fa:	9f03      	ldr	r7, [sp, #12]
 80029fc:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002a00:	e004      	b.n	8002a0c <_vfprintf_r+0x4cc>
 8002a02:	3d10      	subs	r5, #16
 8002a04:	2d10      	cmp	r5, #16
 8002a06:	f10b 0b08 	add.w	fp, fp, #8
 8002a0a:	dd17      	ble.n	8002a3c <_vfprintf_r+0x4fc>
 8002a0c:	3301      	adds	r3, #1
 8002a0e:	4a60      	ldr	r2, [pc, #384]	; (8002b90 <_vfprintf_r+0x650>)
 8002a10:	3410      	adds	r4, #16
 8002a12:	2b07      	cmp	r3, #7
 8002a14:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a18:	e9cb 2600 	strd	r2, r6, [fp]
 8002a1c:	ddf1      	ble.n	8002a02 <_vfprintf_r+0x4c2>
 8002a1e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a20:	4641      	mov	r1, r8
 8002a22:	4638      	mov	r0, r7
 8002a24:	f004 f8ba 	bl	8006b9c <__sprint_r>
 8002a28:	2800      	cmp	r0, #0
 8002a2a:	f040 856c 	bne.w	8003506 <_vfprintf_r+0xfc6>
 8002a2e:	3d10      	subs	r5, #16
 8002a30:	2d10      	cmp	r5, #16
 8002a32:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002a36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a3a:	dce7      	bgt.n	8002a0c <_vfprintf_r+0x4cc>
 8002a3c:	3301      	adds	r3, #1
 8002a3e:	4a54      	ldr	r2, [pc, #336]	; (8002b90 <_vfprintf_r+0x650>)
 8002a40:	442c      	add	r4, r5
 8002a42:	2b07      	cmp	r3, #7
 8002a44:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a48:	e9cb 2500 	strd	r2, r5, [fp]
 8002a4c:	dd08      	ble.n	8002a60 <_vfprintf_r+0x520>
 8002a4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a50:	9907      	ldr	r1, [sp, #28]
 8002a52:	9803      	ldr	r0, [sp, #12]
 8002a54:	f004 f8a2 	bl	8006b9c <__sprint_r>
 8002a58:	2800      	cmp	r0, #0
 8002a5a:	f040 82e9 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8002a5e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a60:	9904      	ldr	r1, [sp, #16]
 8002a62:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002a66:	428a      	cmp	r2, r1
 8002a68:	bfac      	ite	ge
 8002a6a:	189b      	addge	r3, r3, r2
 8002a6c:	185b      	addlt	r3, r3, r1
 8002a6e:	9305      	str	r3, [sp, #20]
 8002a70:	2c00      	cmp	r4, #0
 8002a72:	f040 82d5 	bne.w	8003020 <_vfprintf_r+0xae0>
 8002a76:	2300      	movs	r3, #0
 8002a78:	932b      	str	r3, [sp, #172]	; 0xac
 8002a7a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a7c:	b11b      	cbz	r3, 8002a86 <_vfprintf_r+0x546>
 8002a7e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002a80:	9803      	ldr	r0, [sp, #12]
 8002a82:	f002 fc9d 	bl	80053c0 <_free_r>
 8002a86:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a8a:	4657      	mov	r7, sl
 8002a8c:	783b      	ldrb	r3, [r7, #0]
 8002a8e:	2b00      	cmp	r3, #0
 8002a90:	f47f ada7 	bne.w	80025e2 <_vfprintf_r+0xa2>
 8002a94:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002a96:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002a9a:	2b00      	cmp	r3, #0
 8002a9c:	f041 80e7 	bne.w	8003c6e <_vfprintf_r+0x172e>
 8002aa0:	2300      	movs	r3, #0
 8002aa2:	932b      	str	r3, [sp, #172]	; 0xac
 8002aa4:	e2cb      	b.n	800303e <_vfprintf_r+0xafe>
 8002aa6:	4643      	mov	r3, r8
 8002aa8:	069a      	lsls	r2, r3, #26
 8002aaa:	f140 814e 	bpl.w	8002d4a <_vfprintf_r+0x80a>
 8002aae:	9c08      	ldr	r4, [sp, #32]
 8002ab0:	3407      	adds	r4, #7
 8002ab2:	f024 0207 	bic.w	r2, r4, #7
 8002ab6:	f102 0108 	add.w	r1, r2, #8
 8002aba:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002abe:	9108      	str	r1, [sp, #32]
 8002ac0:	2201      	movs	r2, #1
 8002ac2:	2100      	movs	r1, #0
 8002ac4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ac8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002acc:	a956      	add	r1, sp, #344	; 0x158
 8002ace:	9104      	str	r1, [sp, #16]
 8002ad0:	f47f aea2 	bne.w	8002818 <_vfprintf_r+0x2d8>
 8002ad4:	4698      	mov	r8, r3
 8002ad6:	2a01      	cmp	r2, #1
 8002ad8:	f000 8350 	beq.w	800317c <_vfprintf_r+0xc3c>
 8002adc:	2a02      	cmp	r2, #2
 8002ade:	f000 831b 	beq.w	8003118 <_vfprintf_r+0xbd8>
 8002ae2:	a956      	add	r1, sp, #344	; 0x158
 8002ae4:	e000      	b.n	8002ae8 <_vfprintf_r+0x5a8>
 8002ae6:	4639      	mov	r1, r7
 8002ae8:	08e2      	lsrs	r2, r4, #3
 8002aea:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002aee:	08e8      	lsrs	r0, r5, #3
 8002af0:	f004 0307 	and.w	r3, r4, #7
 8002af4:	4605      	mov	r5, r0
 8002af6:	4614      	mov	r4, r2
 8002af8:	3330      	adds	r3, #48	; 0x30
 8002afa:	ea54 0205 	orrs.w	r2, r4, r5
 8002afe:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002b02:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002b06:	d1ee      	bne.n	8002ae6 <_vfprintf_r+0x5a6>
 8002b08:	f018 0f01 	tst.w	r8, #1
 8002b0c:	f000 8314 	beq.w	8003138 <_vfprintf_r+0xbf8>
 8002b10:	2b30      	cmp	r3, #48	; 0x30
 8002b12:	f000 8311 	beq.w	8003138 <_vfprintf_r+0xbf8>
 8002b16:	9a04      	ldr	r2, [sp, #16]
 8002b18:	3902      	subs	r1, #2
 8002b1a:	2330      	movs	r3, #48	; 0x30
 8002b1c:	1a52      	subs	r2, r2, r1
 8002b1e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002b22:	9209      	str	r2, [sp, #36]	; 0x24
 8002b24:	460f      	mov	r7, r1
 8002b26:	e68c      	b.n	8002842 <_vfprintf_r+0x302>
 8002b28:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b2c:	2200      	movs	r2, #0
 8002b2e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b32:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002b36:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002b3a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b3e:	2b09      	cmp	r3, #9
 8002b40:	d9f5      	bls.n	8002b2e <_vfprintf_r+0x5ee>
 8002b42:	9206      	str	r2, [sp, #24]
 8002b44:	e57c      	b.n	8002640 <_vfprintf_r+0x100>
 8002b46:	4b14      	ldr	r3, [pc, #80]	; (8002b98 <_vfprintf_r+0x658>)
 8002b48:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b4a:	f018 0f20 	tst.w	r8, #32
 8002b4e:	f000 8114 	beq.w	8002d7a <_vfprintf_r+0x83a>
 8002b52:	9c08      	ldr	r4, [sp, #32]
 8002b54:	3407      	adds	r4, #7
 8002b56:	f024 0307 	bic.w	r3, r4, #7
 8002b5a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b5e:	f103 0208 	add.w	r2, r3, #8
 8002b62:	9208      	str	r2, [sp, #32]
 8002b64:	f018 0f01 	tst.w	r8, #1
 8002b68:	d009      	beq.n	8002b7e <_vfprintf_r+0x63e>
 8002b6a:	ea54 0305 	orrs.w	r3, r4, r5
 8002b6e:	d006      	beq.n	8002b7e <_vfprintf_r+0x63e>
 8002b70:	2330      	movs	r3, #48	; 0x30
 8002b72:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002b76:	f048 0802 	orr.w	r8, r8, #2
 8002b7a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002b7e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b82:	2202      	movs	r2, #2
 8002b84:	e79d      	b.n	8002ac2 <_vfprintf_r+0x582>
 8002b86:	f048 0801 	orr.w	r8, r8, #1
 8002b8a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b8e:	e555      	b.n	800263c <_vfprintf_r+0xfc>
 8002b90:	08007280 	.word	0x08007280
 8002b94:	08007290 	.word	0x08007290
 8002b98:	0800724c 	.word	0x0800724c
 8002b9c:	9e03      	ldr	r6, [sp, #12]
 8002b9e:	4630      	mov	r0, r6
 8002ba0:	f002 feaa 	bl	80058f8 <_localeconv_r>
 8002ba4:	6843      	ldr	r3, [r0, #4]
 8002ba6:	9318      	str	r3, [sp, #96]	; 0x60
 8002ba8:	4618      	mov	r0, r3
 8002baa:	f7fe f969 	bl	8000e80 <strlen>
 8002bae:	901b      	str	r0, [sp, #108]	; 0x6c
 8002bb0:	4604      	mov	r4, r0
 8002bb2:	4630      	mov	r0, r6
 8002bb4:	f002 fea0 	bl	80058f8 <_localeconv_r>
 8002bb8:	6883      	ldr	r3, [r0, #8]
 8002bba:	931a      	str	r3, [sp, #104]	; 0x68
 8002bbc:	2c00      	cmp	r4, #0
 8002bbe:	f43f adb8 	beq.w	8002732 <_vfprintf_r+0x1f2>
 8002bc2:	f89a 6000 	ldrb.w	r6, [sl]
 8002bc6:	2b00      	cmp	r3, #0
 8002bc8:	f43f ad38 	beq.w	800263c <_vfprintf_r+0xfc>
 8002bcc:	781b      	ldrb	r3, [r3, #0]
 8002bce:	2b00      	cmp	r3, #0
 8002bd0:	f43f ad34 	beq.w	800263c <_vfprintf_r+0xfc>
 8002bd4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002bd8:	e530      	b.n	800263c <_vfprintf_r+0xfc>
 8002bda:	9b08      	ldr	r3, [sp, #32]
 8002bdc:	f89a 6000 	ldrb.w	r6, [sl]
 8002be0:	681a      	ldr	r2, [r3, #0]
 8002be2:	9206      	str	r2, [sp, #24]
 8002be4:	2a00      	cmp	r2, #0
 8002be6:	f103 0304 	add.w	r3, r3, #4
 8002bea:	f2c0 8697 	blt.w	800391c <_vfprintf_r+0x13dc>
 8002bee:	9308      	str	r3, [sp, #32]
 8002bf0:	e524      	b.n	800263c <_vfprintf_r+0xfc>
 8002bf2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bf6:	f89a 6000 	ldrb.w	r6, [sl]
 8002bfa:	e51f      	b.n	800263c <_vfprintf_r+0xfc>
 8002bfc:	f89a 6000 	ldrb.w	r6, [sl]
 8002c00:	f048 0804 	orr.w	r8, r8, #4
 8002c04:	e51a      	b.n	800263c <_vfprintf_r+0xfc>
 8002c06:	f89a 6000 	ldrb.w	r6, [sl]
 8002c0a:	2e2a      	cmp	r6, #42	; 0x2a
 8002c0c:	f10a 0201 	add.w	r2, sl, #1
 8002c10:	f001 81b0 	beq.w	8003f74 <_vfprintf_r+0x1a34>
 8002c14:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c18:	2b09      	cmp	r3, #9
 8002c1a:	4692      	mov	sl, r2
 8002c1c:	f04f 0900 	mov.w	r9, #0
 8002c20:	f63f ad0e 	bhi.w	8002640 <_vfprintf_r+0x100>
 8002c24:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c28:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002c2c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002c30:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c34:	2b09      	cmp	r3, #9
 8002c36:	d9f5      	bls.n	8002c24 <_vfprintf_r+0x6e4>
 8002c38:	e502      	b.n	8002640 <_vfprintf_r+0x100>
 8002c3a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002c3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c42:	e4fb      	b.n	800263c <_vfprintf_r+0xfc>
 8002c44:	9c08      	ldr	r4, [sp, #32]
 8002c46:	3407      	adds	r4, #7
 8002c48:	f024 0407 	bic.w	r4, r4, #7
 8002c4c:	ed94 7b00 	vldr	d7, [r4]
 8002c50:	ec52 1b17 	vmov	r1, r2, d7
 8002c54:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002c58:	931d      	str	r3, [sp, #116]	; 0x74
 8002c5a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002c5e:	3408      	adds	r4, #8
 8002c60:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c64:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c68:	4bba      	ldr	r3, [pc, #744]	; (8002f54 <_vfprintf_r+0xa14>)
 8002c6a:	9408      	str	r4, [sp, #32]
 8002c6c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c70:	f7fe fa4e 	bl	8001110 <__aeabi_dcmpun>
 8002c74:	2800      	cmp	r0, #0
 8002c76:	f040 846f 	bne.w	8003558 <_vfprintf_r+0x1018>
 8002c7a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c7e:	4bb5      	ldr	r3, [pc, #724]	; (8002f54 <_vfprintf_r+0xa14>)
 8002c80:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c84:	f7fe fa26 	bl	80010d4 <__aeabi_dcmple>
 8002c88:	2800      	cmp	r0, #0
 8002c8a:	f040 8465 	bne.w	8003558 <_vfprintf_r+0x1018>
 8002c8e:	2200      	movs	r2, #0
 8002c90:	2300      	movs	r3, #0
 8002c92:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c96:	f7fe fa13 	bl	80010c0 <__aeabi_dcmplt>
 8002c9a:	2800      	cmp	r0, #0
 8002c9c:	f040 855b 	bne.w	8003756 <_vfprintf_r+0x1216>
 8002ca0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ca4:	4fac      	ldr	r7, [pc, #688]	; (8002f58 <_vfprintf_r+0xa18>)
 8002ca6:	4bad      	ldr	r3, [pc, #692]	; (8002f5c <_vfprintf_r+0xa1c>)
 8002ca8:	2000      	movs	r0, #0
 8002caa:	2103      	movs	r1, #3
 8002cac:	9104      	str	r1, [sp, #16]
 8002cae:	900a      	str	r0, [sp, #40]	; 0x28
 8002cb0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002cb4:	2e47      	cmp	r6, #71	; 0x47
 8002cb6:	bfd8      	it	le
 8002cb8:	461f      	movle	r7, r3
 8002cba:	9109      	str	r1, [sp, #36]	; 0x24
 8002cbc:	4681      	mov	r9, r0
 8002cbe:	900f      	str	r0, [sp, #60]	; 0x3c
 8002cc0:	9014      	str	r0, [sp, #80]	; 0x50
 8002cc2:	9011      	str	r0, [sp, #68]	; 0x44
 8002cc4:	e5c9      	b.n	800285a <_vfprintf_r+0x31a>
 8002cc6:	9808      	ldr	r0, [sp, #32]
 8002cc8:	2300      	movs	r3, #0
 8002cca:	6801      	ldr	r1, [r0, #0]
 8002ccc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cd0:	461a      	mov	r2, r3
 8002cd2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002cd6:	2301      	movs	r3, #1
 8002cd8:	1d01      	adds	r1, r0, #4
 8002cda:	9304      	str	r3, [sp, #16]
 8002cdc:	920a      	str	r2, [sp, #40]	; 0x28
 8002cde:	4691      	mov	r9, r2
 8002ce0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002ce2:	9214      	str	r2, [sp, #80]	; 0x50
 8002ce4:	9211      	str	r2, [sp, #68]	; 0x44
 8002ce6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002cea:	af3d      	add	r7, sp, #244	; 0xf4
 8002cec:	e5b9      	b.n	8002862 <_vfprintf_r+0x322>
 8002cee:	9b08      	ldr	r3, [sp, #32]
 8002cf0:	681f      	ldr	r7, [r3, #0]
 8002cf2:	2500      	movs	r5, #0
 8002cf4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002cf8:	1d1c      	adds	r4, r3, #4
 8002cfa:	2f00      	cmp	r7, #0
 8002cfc:	f000 8639 	beq.w	8003972 <_vfprintf_r+0x1432>
 8002d00:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d04:	f000 8711 	beq.w	8003b2a <_vfprintf_r+0x15ea>
 8002d08:	464a      	mov	r2, r9
 8002d0a:	4629      	mov	r1, r5
 8002d0c:	4638      	mov	r0, r7
 8002d0e:	f7fe f927 	bl	8000f60 <memchr>
 8002d12:	900a      	str	r0, [sp, #40]	; 0x28
 8002d14:	2800      	cmp	r0, #0
 8002d16:	f000 85e7 	beq.w	80038e8 <_vfprintf_r+0x13a8>
 8002d1a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d1c:	1bdb      	subs	r3, r3, r7
 8002d1e:	9309      	str	r3, [sp, #36]	; 0x24
 8002d20:	46a9      	mov	r9, r5
 8002d22:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002d26:	9408      	str	r4, [sp, #32]
 8002d28:	9304      	str	r3, [sp, #16]
 8002d2a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002d2e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002d32:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002d36:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002d3a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d3e:	e58c      	b.n	800285a <_vfprintf_r+0x31a>
 8002d40:	f048 0310 	orr.w	r3, r8, #16
 8002d44:	069a      	lsls	r2, r3, #26
 8002d46:	f53f aeb2 	bmi.w	8002aae <_vfprintf_r+0x56e>
 8002d4a:	9a08      	ldr	r2, [sp, #32]
 8002d4c:	06df      	lsls	r7, r3, #27
 8002d4e:	f102 0104 	add.w	r1, r2, #4
 8002d52:	f100 837e 	bmi.w	8003452 <_vfprintf_r+0xf12>
 8002d56:	065d      	lsls	r5, r3, #25
 8002d58:	9a08      	ldr	r2, [sp, #32]
 8002d5a:	f100 84e4 	bmi.w	8003726 <_vfprintf_r+0x11e6>
 8002d5e:	059c      	lsls	r4, r3, #22
 8002d60:	f140 8377 	bpl.w	8003452 <_vfprintf_r+0xf12>
 8002d64:	7814      	ldrb	r4, [r2, #0]
 8002d66:	9108      	str	r1, [sp, #32]
 8002d68:	2500      	movs	r5, #0
 8002d6a:	2201      	movs	r2, #1
 8002d6c:	e6a9      	b.n	8002ac2 <_vfprintf_r+0x582>
 8002d6e:	4b7c      	ldr	r3, [pc, #496]	; (8002f60 <_vfprintf_r+0xa20>)
 8002d70:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d72:	f018 0f20 	tst.w	r8, #32
 8002d76:	f47f aeec 	bne.w	8002b52 <_vfprintf_r+0x612>
 8002d7a:	9a08      	ldr	r2, [sp, #32]
 8002d7c:	f018 0f10 	tst.w	r8, #16
 8002d80:	f102 0304 	add.w	r3, r2, #4
 8002d84:	f040 8354 	bne.w	8003430 <_vfprintf_r+0xef0>
 8002d88:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d8c:	9a08      	ldr	r2, [sp, #32]
 8002d8e:	f040 84d0 	bne.w	8003732 <_vfprintf_r+0x11f2>
 8002d92:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d96:	f000 834b 	beq.w	8003430 <_vfprintf_r+0xef0>
 8002d9a:	7814      	ldrb	r4, [r2, #0]
 8002d9c:	9308      	str	r3, [sp, #32]
 8002d9e:	2500      	movs	r5, #0
 8002da0:	e6e0      	b.n	8002b64 <_vfprintf_r+0x624>
 8002da2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002da6:	f89a 6000 	ldrb.w	r6, [sl]
 8002daa:	2b00      	cmp	r3, #0
 8002dac:	f47f ac46 	bne.w	800263c <_vfprintf_r+0xfc>
 8002db0:	2320      	movs	r3, #32
 8002db2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002db6:	e441      	b.n	800263c <_vfprintf_r+0xfc>
 8002db8:	f89a 6000 	ldrb.w	r6, [sl]
 8002dbc:	2e6c      	cmp	r6, #108	; 0x6c
 8002dbe:	bf03      	ittte	eq
 8002dc0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dc4:	f048 0820 	orreq.w	r8, r8, #32
 8002dc8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002dcc:	f048 0810 	orrne.w	r8, r8, #16
 8002dd0:	e434      	b.n	800263c <_vfprintf_r+0xfc>
 8002dd2:	9a08      	ldr	r2, [sp, #32]
 8002dd4:	f018 0f20 	tst.w	r8, #32
 8002dd8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002ddc:	9208      	str	r2, [sp, #32]
 8002dde:	f000 83a1 	beq.w	8003524 <_vfprintf_r+0xfe4>
 8002de2:	9a05      	ldr	r2, [sp, #20]
 8002de4:	4610      	mov	r0, r2
 8002de6:	17d1      	asrs	r1, r2, #31
 8002de8:	e9c3 0100 	strd	r0, r1, [r3]
 8002dec:	4657      	mov	r7, sl
 8002dee:	e64d      	b.n	8002a8c <_vfprintf_r+0x54c>
 8002df0:	f89a 6000 	ldrb.w	r6, [sl]
 8002df4:	2e68      	cmp	r6, #104	; 0x68
 8002df6:	bf03      	ittte	eq
 8002df8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dfc:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002e00:	f10a 0a01 	addeq.w	sl, sl, #1
 8002e04:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002e08:	e418      	b.n	800263c <_vfprintf_r+0xfc>
 8002e0a:	9908      	ldr	r1, [sp, #32]
 8002e0c:	4b55      	ldr	r3, [pc, #340]	; (8002f64 <_vfprintf_r+0xa24>)
 8002e0e:	680c      	ldr	r4, [r1, #0]
 8002e10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e12:	f647 0230 	movw	r2, #30768	; 0x7830
 8002e16:	3104      	adds	r1, #4
 8002e18:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002e1c:	f048 0302 	orr.w	r3, r8, #2
 8002e20:	9108      	str	r1, [sp, #32]
 8002e22:	2500      	movs	r5, #0
 8002e24:	2202      	movs	r2, #2
 8002e26:	2678      	movs	r6, #120	; 0x78
 8002e28:	e64b      	b.n	8002ac2 <_vfprintf_r+0x582>
 8002e2a:	f048 0808 	orr.w	r8, r8, #8
 8002e2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e32:	e403      	b.n	800263c <_vfprintf_r+0xfc>
 8002e34:	f048 0310 	orr.w	r3, r8, #16
 8002e38:	069f      	lsls	r7, r3, #26
 8002e3a:	f53f acd1 	bmi.w	80027e0 <_vfprintf_r+0x2a0>
 8002e3e:	9908      	ldr	r1, [sp, #32]
 8002e40:	06dd      	lsls	r5, r3, #27
 8002e42:	f101 0204 	add.w	r2, r1, #4
 8002e46:	f100 82fd 	bmi.w	8003444 <_vfprintf_r+0xf04>
 8002e4a:	065c      	lsls	r4, r3, #25
 8002e4c:	9908      	ldr	r1, [sp, #32]
 8002e4e:	f100 8475 	bmi.w	800373c <_vfprintf_r+0x11fc>
 8002e52:	0598      	lsls	r0, r3, #22
 8002e54:	f140 82f6 	bpl.w	8003444 <_vfprintf_r+0xf04>
 8002e58:	f991 4000 	ldrsb.w	r4, [r1]
 8002e5c:	9208      	str	r2, [sp, #32]
 8002e5e:	17e5      	asrs	r5, r4, #31
 8002e60:	4620      	mov	r0, r4
 8002e62:	4629      	mov	r1, r5
 8002e64:	e4c7      	b.n	80027f6 <_vfprintf_r+0x2b6>
 8002e66:	9a08      	ldr	r2, [sp, #32]
 8002e68:	f018 0f10 	tst.w	r8, #16
 8002e6c:	f102 0304 	add.w	r3, r2, #4
 8002e70:	f040 82e3 	bne.w	800343a <_vfprintf_r+0xefa>
 8002e74:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e78:	9a08      	ldr	r2, [sp, #32]
 8002e7a:	f040 8467 	bne.w	800374c <_vfprintf_r+0x120c>
 8002e7e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e82:	f000 82da 	beq.w	800343a <_vfprintf_r+0xefa>
 8002e86:	7814      	ldrb	r4, [r2, #0]
 8002e88:	9308      	str	r3, [sp, #32]
 8002e8a:	2500      	movs	r5, #0
 8002e8c:	e488      	b.n	80027a0 <_vfprintf_r+0x260>
 8002e8e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002e92:	f002 fd45 	bl	8005920 <__retarget_lock_release_recursive>
 8002e96:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002e9a:	9305      	str	r3, [sp, #20]
 8002e9c:	e443      	b.n	8002726 <_vfprintf_r+0x1e6>
 8002e9e:	2e00      	cmp	r6, #0
 8002ea0:	f43f adf8 	beq.w	8002a94 <_vfprintf_r+0x554>
 8002ea4:	2300      	movs	r3, #0
 8002ea6:	2101      	movs	r1, #1
 8002ea8:	461a      	mov	r2, r3
 8002eaa:	9104      	str	r1, [sp, #16]
 8002eac:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002eb0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002eb4:	930a      	str	r3, [sp, #40]	; 0x28
 8002eb6:	4699      	mov	r9, r3
 8002eb8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002eba:	9314      	str	r3, [sp, #80]	; 0x50
 8002ebc:	9311      	str	r3, [sp, #68]	; 0x44
 8002ebe:	9109      	str	r1, [sp, #36]	; 0x24
 8002ec0:	af3d      	add	r7, sp, #244	; 0xf4
 8002ec2:	e4ce      	b.n	8002862 <_vfprintf_r+0x322>
 8002ec4:	2e65      	cmp	r6, #101	; 0x65
 8002ec6:	f340 80ca 	ble.w	800305e <_vfprintf_r+0xb1e>
 8002eca:	2200      	movs	r2, #0
 8002ecc:	2300      	movs	r3, #0
 8002ece:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ed2:	f7fe f8eb 	bl	80010ac <__aeabi_dcmpeq>
 8002ed6:	2800      	cmp	r0, #0
 8002ed8:	f000 8169 	beq.w	80031ae <_vfprintf_r+0xc6e>
 8002edc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ede:	4a22      	ldr	r2, [pc, #136]	; (8002f68 <_vfprintf_r+0xa28>)
 8002ee0:	f8cb 2000 	str.w	r2, [fp]
 8002ee4:	3301      	adds	r3, #1
 8002ee6:	3401      	adds	r4, #1
 8002ee8:	2201      	movs	r2, #1
 8002eea:	2b07      	cmp	r3, #7
 8002eec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ef0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ef4:	f300 8406 	bgt.w	8003704 <_vfprintf_r+0x11c4>
 8002ef8:	f10b 0b08 	add.w	fp, fp, #8
 8002efc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002efe:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f00:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f02:	4293      	cmp	r3, r2
 8002f04:	db03      	blt.n	8002f0e <_vfprintf_r+0x9ce>
 8002f06:	f018 0f01 	tst.w	r8, #1
 8002f0a:	f43f ad6a 	beq.w	80029e2 <_vfprintf_r+0x4a2>
 8002f0e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f10:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f12:	f8cb 2000 	str.w	r2, [fp]
 8002f16:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002f18:	f8cb 2004 	str.w	r2, [fp, #4]
 8002f1c:	3301      	adds	r3, #1
 8002f1e:	4414      	add	r4, r2
 8002f20:	2b07      	cmp	r3, #7
 8002f22:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f26:	f300 8517 	bgt.w	8003958 <_vfprintf_r+0x1418>
 8002f2a:	f10b 0b08 	add.w	fp, fp, #8
 8002f2e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002f30:	1e5d      	subs	r5, r3, #1
 8002f32:	2d00      	cmp	r5, #0
 8002f34:	f77f ad55 	ble.w	80029e2 <_vfprintf_r+0x4a2>
 8002f38:	2d10      	cmp	r5, #16
 8002f3a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f3c:	4b0b      	ldr	r3, [pc, #44]	; (8002f6c <_vfprintf_r+0xa2c>)
 8002f3e:	f340 82e7 	ble.w	8003510 <_vfprintf_r+0xfd0>
 8002f42:	4619      	mov	r1, r3
 8002f44:	2610      	movs	r6, #16
 8002f46:	4623      	mov	r3, r4
 8002f48:	9f03      	ldr	r7, [sp, #12]
 8002f4a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f4e:	460c      	mov	r4, r1
 8002f50:	e014      	b.n	8002f7c <_vfprintf_r+0xa3c>
 8002f52:	bf00      	nop
 8002f54:	7fefffff 	.word	0x7fefffff
 8002f58:	08007240 	.word	0x08007240
 8002f5c:	0800723c 	.word	0x0800723c
 8002f60:	08007260 	.word	0x08007260
 8002f64:	0800724c 	.word	0x0800724c
 8002f68:	0800727c 	.word	0x0800727c
 8002f6c:	08007290 	.word	0x08007290
 8002f70:	f10b 0b08 	add.w	fp, fp, #8
 8002f74:	3d10      	subs	r5, #16
 8002f76:	2d10      	cmp	r5, #16
 8002f78:	f340 82c7 	ble.w	800350a <_vfprintf_r+0xfca>
 8002f7c:	3201      	adds	r2, #1
 8002f7e:	3310      	adds	r3, #16
 8002f80:	2a07      	cmp	r2, #7
 8002f82:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002f86:	e9cb 4600 	strd	r4, r6, [fp]
 8002f8a:	ddf1      	ble.n	8002f70 <_vfprintf_r+0xa30>
 8002f8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f8e:	4649      	mov	r1, r9
 8002f90:	4638      	mov	r0, r7
 8002f92:	f003 fe03 	bl	8006b9c <__sprint_r>
 8002f96:	2800      	cmp	r0, #0
 8002f98:	d14c      	bne.n	8003034 <_vfprintf_r+0xaf4>
 8002f9a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002f9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fa2:	e7e7      	b.n	8002f74 <_vfprintf_r+0xa34>
 8002fa4:	9b06      	ldr	r3, [sp, #24]
 8002fa6:	9a04      	ldr	r2, [sp, #16]
 8002fa8:	1a9d      	subs	r5, r3, r2
 8002faa:	2d00      	cmp	r5, #0
 8002fac:	f77f acc9 	ble.w	8002942 <_vfprintf_r+0x402>
 8002fb0:	2d10      	cmp	r5, #16
 8002fb2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fb4:	4bbc      	ldr	r3, [pc, #752]	; (80032a8 <_vfprintf_r+0xd68>)
 8002fb6:	dd27      	ble.n	8003008 <_vfprintf_r+0xac8>
 8002fb8:	4659      	mov	r1, fp
 8002fba:	4620      	mov	r0, r4
 8002fbc:	46bb      	mov	fp, r7
 8002fbe:	461c      	mov	r4, r3
 8002fc0:	4637      	mov	r7, r6
 8002fc2:	9e07      	ldr	r6, [sp, #28]
 8002fc4:	e004      	b.n	8002fd0 <_vfprintf_r+0xa90>
 8002fc6:	3d10      	subs	r5, #16
 8002fc8:	2d10      	cmp	r5, #16
 8002fca:	f101 0108 	add.w	r1, r1, #8
 8002fce:	dd16      	ble.n	8002ffe <_vfprintf_r+0xabe>
 8002fd0:	3201      	adds	r2, #1
 8002fd2:	3010      	adds	r0, #16
 8002fd4:	2310      	movs	r3, #16
 8002fd6:	2a07      	cmp	r2, #7
 8002fd8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002fdc:	600c      	str	r4, [r1, #0]
 8002fde:	604b      	str	r3, [r1, #4]
 8002fe0:	ddf1      	ble.n	8002fc6 <_vfprintf_r+0xa86>
 8002fe2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fe4:	4631      	mov	r1, r6
 8002fe6:	9803      	ldr	r0, [sp, #12]
 8002fe8:	f003 fdd8 	bl	8006b9c <__sprint_r>
 8002fec:	2800      	cmp	r0, #0
 8002fee:	f040 80a8 	bne.w	8003142 <_vfprintf_r+0xc02>
 8002ff2:	3d10      	subs	r5, #16
 8002ff4:	2d10      	cmp	r5, #16
 8002ff6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ffa:	a92d      	add	r1, sp, #180	; 0xb4
 8002ffc:	dce8      	bgt.n	8002fd0 <_vfprintf_r+0xa90>
 8002ffe:	463e      	mov	r6, r7
 8003000:	4623      	mov	r3, r4
 8003002:	465f      	mov	r7, fp
 8003004:	4604      	mov	r4, r0
 8003006:	468b      	mov	fp, r1
 8003008:	3201      	adds	r2, #1
 800300a:	442c      	add	r4, r5
 800300c:	2a07      	cmp	r2, #7
 800300e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003012:	e9cb 3500 	strd	r3, r5, [fp]
 8003016:	f300 8292 	bgt.w	800353e <_vfprintf_r+0xffe>
 800301a:	f10b 0b08 	add.w	fp, fp, #8
 800301e:	e490      	b.n	8002942 <_vfprintf_r+0x402>
 8003020:	aa2a      	add	r2, sp, #168	; 0xa8
 8003022:	9907      	ldr	r1, [sp, #28]
 8003024:	9803      	ldr	r0, [sp, #12]
 8003026:	f003 fdb9 	bl	8006b9c <__sprint_r>
 800302a:	2800      	cmp	r0, #0
 800302c:	f43f ad23 	beq.w	8002a76 <_vfprintf_r+0x536>
 8003030:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003034:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003036:	b111      	cbz	r1, 800303e <_vfprintf_r+0xafe>
 8003038:	9803      	ldr	r0, [sp, #12]
 800303a:	f002 f9c1 	bl	80053c0 <_free_r>
 800303e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003042:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003046:	07d0      	lsls	r0, r2, #31
 8003048:	d402      	bmi.n	8003050 <_vfprintf_r+0xb10>
 800304a:	0599      	lsls	r1, r3, #22
 800304c:	f140 81d0 	bpl.w	80033f0 <_vfprintf_r+0xeb0>
 8003050:	065a      	lsls	r2, r3, #25
 8003052:	f53f ab65 	bmi.w	8002720 <_vfprintf_r+0x1e0>
 8003056:	9805      	ldr	r0, [sp, #20]
 8003058:	b057      	add	sp, #348	; 0x15c
 800305a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800305e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003060:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003062:	2a01      	cmp	r2, #1
 8003064:	f104 0401 	add.w	r4, r4, #1
 8003068:	f103 0501 	add.w	r5, r3, #1
 800306c:	f10b 0608 	add.w	r6, fp, #8
 8003070:	f340 811c 	ble.w	80032ac <_vfprintf_r+0xd6c>
 8003074:	2301      	movs	r3, #1
 8003076:	2d07      	cmp	r5, #7
 8003078:	f8cb 7000 	str.w	r7, [fp]
 800307c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003080:	f8cb 3004 	str.w	r3, [fp, #4]
 8003084:	f300 81bb 	bgt.w	80033fe <_vfprintf_r+0xebe>
 8003088:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800308a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800308c:	1c69      	adds	r1, r5, #1
 800308e:	441c      	add	r4, r3
 8003090:	2907      	cmp	r1, #7
 8003092:	910b      	str	r1, [sp, #44]	; 0x2c
 8003094:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003098:	e9c6 2300 	strd	r2, r3, [r6]
 800309c:	f300 81bb 	bgt.w	8003416 <_vfprintf_r+0xed6>
 80030a0:	3608      	adds	r6, #8
 80030a2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030a4:	1c53      	adds	r3, r2, #1
 80030a6:	461d      	mov	r5, r3
 80030a8:	9509      	str	r5, [sp, #36]	; 0x24
 80030aa:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80030ac:	930e      	str	r3, [sp, #56]	; 0x38
 80030ae:	2200      	movs	r2, #0
 80030b0:	2300      	movs	r3, #0
 80030b2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030b6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80030ba:	f106 0b08 	add.w	fp, r6, #8
 80030be:	f7fd fff5 	bl	80010ac <__aeabi_dcmpeq>
 80030c2:	2800      	cmp	r0, #0
 80030c4:	f040 80c2 	bne.w	800324c <_vfprintf_r+0xd0c>
 80030c8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80030ca:	f8c6 9004 	str.w	r9, [r6, #4]
 80030ce:	3701      	adds	r7, #1
 80030d0:	444c      	add	r4, r9
 80030d2:	2d07      	cmp	r5, #7
 80030d4:	6037      	str	r7, [r6, #0]
 80030d6:	942c      	str	r4, [sp, #176]	; 0xb0
 80030d8:	952b      	str	r5, [sp, #172]	; 0xac
 80030da:	f300 80f9 	bgt.w	80032d0 <_vfprintf_r+0xd90>
 80030de:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030e0:	f106 0310 	add.w	r3, r6, #16
 80030e4:	3202      	adds	r2, #2
 80030e6:	465e      	mov	r6, fp
 80030e8:	9209      	str	r2, [sp, #36]	; 0x24
 80030ea:	469b      	mov	fp, r3
 80030ec:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80030ee:	6072      	str	r2, [r6, #4]
 80030f0:	4414      	add	r4, r2
 80030f2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80030f4:	942c      	str	r4, [sp, #176]	; 0xb0
 80030f6:	ab26      	add	r3, sp, #152	; 0x98
 80030f8:	2a07      	cmp	r2, #7
 80030fa:	922b      	str	r2, [sp, #172]	; 0xac
 80030fc:	6033      	str	r3, [r6, #0]
 80030fe:	f77f ac70 	ble.w	80029e2 <_vfprintf_r+0x4a2>
 8003102:	aa2a      	add	r2, sp, #168	; 0xa8
 8003104:	9907      	ldr	r1, [sp, #28]
 8003106:	9803      	ldr	r0, [sp, #12]
 8003108:	f003 fd48 	bl	8006b9c <__sprint_r>
 800310c:	2800      	cmp	r0, #0
 800310e:	d18f      	bne.n	8003030 <_vfprintf_r+0xaf0>
 8003110:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003112:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003116:	e464      	b.n	80029e2 <_vfprintf_r+0x4a2>
 8003118:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800311a:	af56      	add	r7, sp, #344	; 0x158
 800311c:	0923      	lsrs	r3, r4, #4
 800311e:	f004 010f 	and.w	r1, r4, #15
 8003122:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003126:	092a      	lsrs	r2, r5, #4
 8003128:	461c      	mov	r4, r3
 800312a:	4615      	mov	r5, r2
 800312c:	5c43      	ldrb	r3, [r0, r1]
 800312e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003132:	ea54 0305 	orrs.w	r3, r4, r5
 8003136:	d1f1      	bne.n	800311c <_vfprintf_r+0xbdc>
 8003138:	9b04      	ldr	r3, [sp, #16]
 800313a:	1bdb      	subs	r3, r3, r7
 800313c:	9309      	str	r3, [sp, #36]	; 0x24
 800313e:	f7ff bb80 	b.w	8002842 <_vfprintf_r+0x302>
 8003142:	46b1      	mov	r9, r6
 8003144:	e776      	b.n	8003034 <_vfprintf_r+0xaf4>
 8003146:	aa2a      	add	r2, sp, #168	; 0xa8
 8003148:	9907      	ldr	r1, [sp, #28]
 800314a:	9803      	ldr	r0, [sp, #12]
 800314c:	f003 fd26 	bl	8006b9c <__sprint_r>
 8003150:	2800      	cmp	r0, #0
 8003152:	f47f af6d 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003156:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003158:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800315c:	f7ff bbdd 	b.w	800291a <_vfprintf_r+0x3da>
 8003160:	aa2a      	add	r2, sp, #168	; 0xa8
 8003162:	9907      	ldr	r1, [sp, #28]
 8003164:	9803      	ldr	r0, [sp, #12]
 8003166:	f003 fd19 	bl	8006b9c <__sprint_r>
 800316a:	2800      	cmp	r0, #0
 800316c:	f47f af60 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003170:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003172:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003176:	f7ff bbe0 	b.w	800293a <_vfprintf_r+0x3fa>
 800317a:	4698      	mov	r8, r3
 800317c:	2d00      	cmp	r5, #0
 800317e:	bf08      	it	eq
 8003180:	2c0a      	cmpeq	r4, #10
 8003182:	f080 8170 	bcs.w	8003466 <_vfprintf_r+0xf26>
 8003186:	af56      	add	r7, sp, #344	; 0x158
 8003188:	3430      	adds	r4, #48	; 0x30
 800318a:	2301      	movs	r3, #1
 800318c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003190:	9309      	str	r3, [sp, #36]	; 0x24
 8003192:	f7ff bb56 	b.w	8002842 <_vfprintf_r+0x302>
 8003196:	aa2a      	add	r2, sp, #168	; 0xa8
 8003198:	9907      	ldr	r1, [sp, #28]
 800319a:	9803      	ldr	r0, [sp, #12]
 800319c:	f003 fcfe 	bl	8006b9c <__sprint_r>
 80031a0:	2800      	cmp	r0, #0
 80031a2:	f47f af45 	bne.w	8003030 <_vfprintf_r+0xaf0>
 80031a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031ac:	e406      	b.n	80029bc <_vfprintf_r+0x47c>
 80031ae:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031b0:	2b00      	cmp	r3, #0
 80031b2:	f340 8273 	ble.w	800369c <_vfprintf_r+0x115c>
 80031b6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80031ba:	4293      	cmp	r3, r2
 80031bc:	bfa8      	it	ge
 80031be:	4613      	movge	r3, r2
 80031c0:	2b00      	cmp	r3, #0
 80031c2:	461d      	mov	r5, r3
 80031c4:	dd0d      	ble.n	80031e2 <_vfprintf_r+0xca2>
 80031c6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031c8:	f8cb 7000 	str.w	r7, [fp]
 80031cc:	3301      	adds	r3, #1
 80031ce:	442c      	add	r4, r5
 80031d0:	2b07      	cmp	r3, #7
 80031d2:	942c      	str	r4, [sp, #176]	; 0xb0
 80031d4:	f8cb 5004 	str.w	r5, [fp, #4]
 80031d8:	932b      	str	r3, [sp, #172]	; 0xac
 80031da:	f300 82c1 	bgt.w	8003760 <_vfprintf_r+0x1220>
 80031de:	f10b 0b08 	add.w	fp, fp, #8
 80031e2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031e4:	2d00      	cmp	r5, #0
 80031e6:	bfa8      	it	ge
 80031e8:	1b5b      	subge	r3, r3, r5
 80031ea:	2b00      	cmp	r3, #0
 80031ec:	461d      	mov	r5, r3
 80031ee:	f340 8099 	ble.w	8003324 <_vfprintf_r+0xde4>
 80031f2:	2d10      	cmp	r5, #16
 80031f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031f6:	4b2c      	ldr	r3, [pc, #176]	; (80032a8 <_vfprintf_r+0xd68>)
 80031f8:	f340 83db 	ble.w	80039b2 <_vfprintf_r+0x1472>
 80031fc:	4618      	mov	r0, r3
 80031fe:	4621      	mov	r1, r4
 8003200:	465b      	mov	r3, fp
 8003202:	2610      	movs	r6, #16
 8003204:	46bb      	mov	fp, r7
 8003206:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800320a:	9c07      	ldr	r4, [sp, #28]
 800320c:	4607      	mov	r7, r0
 800320e:	e004      	b.n	800321a <_vfprintf_r+0xcda>
 8003210:	3308      	adds	r3, #8
 8003212:	3d10      	subs	r5, #16
 8003214:	2d10      	cmp	r5, #16
 8003216:	f340 83c7 	ble.w	80039a8 <_vfprintf_r+0x1468>
 800321a:	3201      	adds	r2, #1
 800321c:	3110      	adds	r1, #16
 800321e:	2a07      	cmp	r2, #7
 8003220:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003224:	e9c3 7600 	strd	r7, r6, [r3]
 8003228:	ddf2      	ble.n	8003210 <_vfprintf_r+0xcd0>
 800322a:	aa2a      	add	r2, sp, #168	; 0xa8
 800322c:	4621      	mov	r1, r4
 800322e:	4648      	mov	r0, r9
 8003230:	f003 fcb4 	bl	8006b9c <__sprint_r>
 8003234:	2800      	cmp	r0, #0
 8003236:	f040 84a5 	bne.w	8003b84 <_vfprintf_r+0x1644>
 800323a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800323e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003240:	e7e7      	b.n	8003212 <_vfprintf_r+0xcd2>
 8003242:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003246:	af56      	add	r7, sp, #344	; 0x158
 8003248:	f7ff bafb 	b.w	8002842 <_vfprintf_r+0x302>
 800324c:	f1b9 0f00 	cmp.w	r9, #0
 8003250:	f77f af4c 	ble.w	80030ec <_vfprintf_r+0xbac>
 8003254:	f1b9 0f10 	cmp.w	r9, #16
 8003258:	4b13      	ldr	r3, [pc, #76]	; (80032a8 <_vfprintf_r+0xd68>)
 800325a:	f340 8659 	ble.w	8003f10 <_vfprintf_r+0x19d0>
 800325e:	4619      	mov	r1, r3
 8003260:	4622      	mov	r2, r4
 8003262:	4633      	mov	r3, r6
 8003264:	2710      	movs	r7, #16
 8003266:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800326a:	9c07      	ldr	r4, [sp, #28]
 800326c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800326e:	460e      	mov	r6, r1
 8003270:	e007      	b.n	8003282 <_vfprintf_r+0xd42>
 8003272:	3308      	adds	r3, #8
 8003274:	f1a9 0910 	sub.w	r9, r9, #16
 8003278:	f1b9 0f10 	cmp.w	r9, #16
 800327c:	f340 8353 	ble.w	8003926 <_vfprintf_r+0x13e6>
 8003280:	3501      	adds	r5, #1
 8003282:	3210      	adds	r2, #16
 8003284:	2d07      	cmp	r5, #7
 8003286:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800328a:	e9c3 6700 	strd	r6, r7, [r3]
 800328e:	ddf0      	ble.n	8003272 <_vfprintf_r+0xd32>
 8003290:	aa2a      	add	r2, sp, #168	; 0xa8
 8003292:	4621      	mov	r1, r4
 8003294:	4658      	mov	r0, fp
 8003296:	f003 fc81 	bl	8006b9c <__sprint_r>
 800329a:	2800      	cmp	r0, #0
 800329c:	f040 8472 	bne.w	8003b84 <_vfprintf_r+0x1644>
 80032a0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80032a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80032a6:	e7e5      	b.n	8003274 <_vfprintf_r+0xd34>
 80032a8:	08007290 	.word	0x08007290
 80032ac:	f018 0f01 	tst.w	r8, #1
 80032b0:	f47f aee0 	bne.w	8003074 <_vfprintf_r+0xb34>
 80032b4:	2201      	movs	r2, #1
 80032b6:	2d07      	cmp	r5, #7
 80032b8:	f8cb 7000 	str.w	r7, [fp]
 80032bc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032c0:	f8cb 2004 	str.w	r2, [fp, #4]
 80032c4:	dc04      	bgt.n	80032d0 <_vfprintf_r+0xd90>
 80032c6:	3302      	adds	r3, #2
 80032c8:	9309      	str	r3, [sp, #36]	; 0x24
 80032ca:	f10b 0b10 	add.w	fp, fp, #16
 80032ce:	e70d      	b.n	80030ec <_vfprintf_r+0xbac>
 80032d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d2:	9907      	ldr	r1, [sp, #28]
 80032d4:	9803      	ldr	r0, [sp, #12]
 80032d6:	f003 fc61 	bl	8006b9c <__sprint_r>
 80032da:	2800      	cmp	r0, #0
 80032dc:	f47f aea8 	bne.w	8003030 <_vfprintf_r+0xaf0>
 80032e0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032e4:	3301      	adds	r3, #1
 80032e6:	9309      	str	r3, [sp, #36]	; 0x24
 80032e8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80032ec:	ae2d      	add	r6, sp, #180	; 0xb4
 80032ee:	e6fd      	b.n	80030ec <_vfprintf_r+0xbac>
 80032f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032f2:	9907      	ldr	r1, [sp, #28]
 80032f4:	9803      	ldr	r0, [sp, #12]
 80032f6:	f003 fc51 	bl	8006b9c <__sprint_r>
 80032fa:	2800      	cmp	r0, #0
 80032fc:	f47f ae98 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003300:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003304:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003306:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800330a:	f7ff baf6 	b.w	80028fa <_vfprintf_r+0x3ba>
 800330e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003310:	9907      	ldr	r1, [sp, #28]
 8003312:	9803      	ldr	r0, [sp, #12]
 8003314:	f003 fc42 	bl	8006b9c <__sprint_r>
 8003318:	2800      	cmp	r0, #0
 800331a:	f47f ae89 	bne.w	8003030 <_vfprintf_r+0xaf0>
 800331e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003320:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003324:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003326:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800332a:	443b      	add	r3, r7
 800332c:	4699      	mov	r9, r3
 800332e:	f040 8357 	bne.w	80039e0 <_vfprintf_r+0x14a0>
 8003332:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003334:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003336:	4293      	cmp	r3, r2
 8003338:	db49      	blt.n	80033ce <_vfprintf_r+0xe8e>
 800333a:	f018 0f01 	tst.w	r8, #1
 800333e:	d146      	bne.n	80033ce <_vfprintf_r+0xe8e>
 8003340:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003342:	18bd      	adds	r5, r7, r2
 8003344:	eba5 0509 	sub.w	r5, r5, r9
 8003348:	1ad3      	subs	r3, r2, r3
 800334a:	429d      	cmp	r5, r3
 800334c:	bfa8      	it	ge
 800334e:	461d      	movge	r5, r3
 8003350:	2d00      	cmp	r5, #0
 8003352:	dd0d      	ble.n	8003370 <_vfprintf_r+0xe30>
 8003354:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003356:	f8cb 9000 	str.w	r9, [fp]
 800335a:	3201      	adds	r2, #1
 800335c:	442c      	add	r4, r5
 800335e:	2a07      	cmp	r2, #7
 8003360:	942c      	str	r4, [sp, #176]	; 0xb0
 8003362:	f8cb 5004 	str.w	r5, [fp, #4]
 8003366:	922b      	str	r2, [sp, #172]	; 0xac
 8003368:	f300 8462 	bgt.w	8003c30 <_vfprintf_r+0x16f0>
 800336c:	f10b 0b08 	add.w	fp, fp, #8
 8003370:	2d00      	cmp	r5, #0
 8003372:	bfac      	ite	ge
 8003374:	1b5d      	subge	r5, r3, r5
 8003376:	461d      	movlt	r5, r3
 8003378:	2d00      	cmp	r5, #0
 800337a:	f77f ab32 	ble.w	80029e2 <_vfprintf_r+0x4a2>
 800337e:	2d10      	cmp	r5, #16
 8003380:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003382:	4bc5      	ldr	r3, [pc, #788]	; (8003698 <_vfprintf_r+0x1158>)
 8003384:	f340 80c4 	ble.w	8003510 <_vfprintf_r+0xfd0>
 8003388:	4619      	mov	r1, r3
 800338a:	2610      	movs	r6, #16
 800338c:	4623      	mov	r3, r4
 800338e:	9f03      	ldr	r7, [sp, #12]
 8003390:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003394:	460c      	mov	r4, r1
 8003396:	e005      	b.n	80033a4 <_vfprintf_r+0xe64>
 8003398:	f10b 0b08 	add.w	fp, fp, #8
 800339c:	3d10      	subs	r5, #16
 800339e:	2d10      	cmp	r5, #16
 80033a0:	f340 80b3 	ble.w	800350a <_vfprintf_r+0xfca>
 80033a4:	3201      	adds	r2, #1
 80033a6:	3310      	adds	r3, #16
 80033a8:	2a07      	cmp	r2, #7
 80033aa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80033ae:	e9cb 4600 	strd	r4, r6, [fp]
 80033b2:	ddf1      	ble.n	8003398 <_vfprintf_r+0xe58>
 80033b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b6:	4649      	mov	r1, r9
 80033b8:	4638      	mov	r0, r7
 80033ba:	f003 fbef 	bl	8006b9c <__sprint_r>
 80033be:	2800      	cmp	r0, #0
 80033c0:	f47f ae38 	bne.w	8003034 <_vfprintf_r+0xaf4>
 80033c4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033cc:	e7e6      	b.n	800339c <_vfprintf_r+0xe5c>
 80033ce:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033d0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80033d2:	f8cb 1000 	str.w	r1, [fp]
 80033d6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80033d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80033dc:	3201      	adds	r2, #1
 80033de:	440c      	add	r4, r1
 80033e0:	2a07      	cmp	r2, #7
 80033e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80033e4:	922b      	str	r2, [sp, #172]	; 0xac
 80033e6:	f300 828c 	bgt.w	8003902 <_vfprintf_r+0x13c2>
 80033ea:	f10b 0b08 	add.w	fp, fp, #8
 80033ee:	e7a7      	b.n	8003340 <_vfprintf_r+0xe00>
 80033f0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033f4:	f002 fa94 	bl	8005920 <__retarget_lock_release_recursive>
 80033f8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80033fc:	e628      	b.n	8003050 <_vfprintf_r+0xb10>
 80033fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003400:	9907      	ldr	r1, [sp, #28]
 8003402:	9803      	ldr	r0, [sp, #12]
 8003404:	f003 fbca 	bl	8006b9c <__sprint_r>
 8003408:	2800      	cmp	r0, #0
 800340a:	f47f ae11 	bne.w	8003030 <_vfprintf_r+0xaf0>
 800340e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003412:	ae2d      	add	r6, sp, #180	; 0xb4
 8003414:	e638      	b.n	8003088 <_vfprintf_r+0xb48>
 8003416:	aa2a      	add	r2, sp, #168	; 0xa8
 8003418:	9907      	ldr	r1, [sp, #28]
 800341a:	9803      	ldr	r0, [sp, #12]
 800341c:	f003 fbbe 	bl	8006b9c <__sprint_r>
 8003420:	2800      	cmp	r0, #0
 8003422:	f47f ae05 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003426:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800342a:	ae2d      	add	r6, sp, #180	; 0xb4
 800342c:	930b      	str	r3, [sp, #44]	; 0x2c
 800342e:	e638      	b.n	80030a2 <_vfprintf_r+0xb62>
 8003430:	6814      	ldr	r4, [r2, #0]
 8003432:	9308      	str	r3, [sp, #32]
 8003434:	2500      	movs	r5, #0
 8003436:	f7ff bb95 	b.w	8002b64 <_vfprintf_r+0x624>
 800343a:	6814      	ldr	r4, [r2, #0]
 800343c:	9308      	str	r3, [sp, #32]
 800343e:	2500      	movs	r5, #0
 8003440:	f7ff b9ae 	b.w	80027a0 <_vfprintf_r+0x260>
 8003444:	680c      	ldr	r4, [r1, #0]
 8003446:	9208      	str	r2, [sp, #32]
 8003448:	17e5      	asrs	r5, r4, #31
 800344a:	4620      	mov	r0, r4
 800344c:	4629      	mov	r1, r5
 800344e:	f7ff b9d2 	b.w	80027f6 <_vfprintf_r+0x2b6>
 8003452:	6814      	ldr	r4, [r2, #0]
 8003454:	9108      	str	r1, [sp, #32]
 8003456:	2201      	movs	r2, #1
 8003458:	2500      	movs	r5, #0
 800345a:	f7ff bb32 	b.w	8002ac2 <_vfprintf_r+0x582>
 800345e:	2a01      	cmp	r2, #1
 8003460:	f47f ab3c 	bne.w	8002adc <_vfprintf_r+0x59c>
 8003464:	e68f      	b.n	8003186 <_vfprintf_r+0xc46>
 8003466:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800346a:	2200      	movs	r2, #0
 800346c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003470:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003474:	af56      	add	r7, sp, #344	; 0x158
 8003476:	4692      	mov	sl, r2
 8003478:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800347c:	461e      	mov	r6, r3
 800347e:	e00a      	b.n	8003496 <_vfprintf_r+0xf56>
 8003480:	2300      	movs	r3, #0
 8003482:	4620      	mov	r0, r4
 8003484:	4629      	mov	r1, r5
 8003486:	220a      	movs	r2, #10
 8003488:	f7fd fad8 	bl	8000a3c <__aeabi_uldivmod>
 800348c:	4604      	mov	r4, r0
 800348e:	460d      	mov	r5, r1
 8003490:	ea54 0305 	orrs.w	r3, r4, r5
 8003494:	d029      	beq.n	80034ea <_vfprintf_r+0xfaa>
 8003496:	220a      	movs	r2, #10
 8003498:	2300      	movs	r3, #0
 800349a:	4620      	mov	r0, r4
 800349c:	4629      	mov	r1, r5
 800349e:	f7fd facd 	bl	8000a3c <__aeabi_uldivmod>
 80034a2:	3230      	adds	r2, #48	; 0x30
 80034a4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80034a8:	f10a 0a01 	add.w	sl, sl, #1
 80034ac:	3f01      	subs	r7, #1
 80034ae:	2e00      	cmp	r6, #0
 80034b0:	d0e6      	beq.n	8003480 <_vfprintf_r+0xf40>
 80034b2:	f898 3000 	ldrb.w	r3, [r8]
 80034b6:	459a      	cmp	sl, r3
 80034b8:	d1e2      	bne.n	8003480 <_vfprintf_r+0xf40>
 80034ba:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80034be:	d0df      	beq.n	8003480 <_vfprintf_r+0xf40>
 80034c0:	2d00      	cmp	r5, #0
 80034c2:	bf08      	it	eq
 80034c4:	2c0a      	cmpeq	r4, #10
 80034c6:	d3db      	bcc.n	8003480 <_vfprintf_r+0xf40>
 80034c8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80034ca:	9918      	ldr	r1, [sp, #96]	; 0x60
 80034cc:	1aff      	subs	r7, r7, r3
 80034ce:	461a      	mov	r2, r3
 80034d0:	4638      	mov	r0, r7
 80034d2:	f003 faf5 	bl	8006ac0 <strncpy>
 80034d6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80034da:	2b00      	cmp	r3, #0
 80034dc:	f000 8496 	beq.w	8003e0c <_vfprintf_r+0x18cc>
 80034e0:	f108 0801 	add.w	r8, r8, #1
 80034e4:	f04f 0a00 	mov.w	sl, #0
 80034e8:	e7ca      	b.n	8003480 <_vfprintf_r+0xf40>
 80034ea:	9b04      	ldr	r3, [sp, #16]
 80034ec:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80034f0:	1bdb      	subs	r3, r3, r7
 80034f2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80034f6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80034f8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80034fc:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003500:	9309      	str	r3, [sp, #36]	; 0x24
 8003502:	f7ff b99e 	b.w	8002842 <_vfprintf_r+0x302>
 8003506:	46c1      	mov	r9, r8
 8003508:	e594      	b.n	8003034 <_vfprintf_r+0xaf4>
 800350a:	4621      	mov	r1, r4
 800350c:	461c      	mov	r4, r3
 800350e:	460b      	mov	r3, r1
 8003510:	3201      	adds	r2, #1
 8003512:	442c      	add	r4, r5
 8003514:	2a07      	cmp	r2, #7
 8003516:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800351a:	e9cb 3500 	strd	r3, r5, [fp]
 800351e:	f77f aa5e 	ble.w	80029de <_vfprintf_r+0x49e>
 8003522:	e5ee      	b.n	8003102 <_vfprintf_r+0xbc2>
 8003524:	f018 0f10 	tst.w	r8, #16
 8003528:	f040 80f8 	bne.w	800371c <_vfprintf_r+0x11dc>
 800352c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003530:	f000 8351 	beq.w	8003bd6 <_vfprintf_r+0x1696>
 8003534:	9a05      	ldr	r2, [sp, #20]
 8003536:	801a      	strh	r2, [r3, #0]
 8003538:	4657      	mov	r7, sl
 800353a:	f7ff baa7 	b.w	8002a8c <_vfprintf_r+0x54c>
 800353e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003540:	9907      	ldr	r1, [sp, #28]
 8003542:	9803      	ldr	r0, [sp, #12]
 8003544:	f003 fb2a 	bl	8006b9c <__sprint_r>
 8003548:	2800      	cmp	r0, #0
 800354a:	f47f ad71 	bne.w	8003030 <_vfprintf_r+0xaf0>
 800354e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003550:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003554:	f7ff b9f5 	b.w	8002942 <_vfprintf_r+0x402>
 8003558:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800355c:	4602      	mov	r2, r0
 800355e:	460b      	mov	r3, r1
 8003560:	f7fd fdd6 	bl	8001110 <__aeabi_dcmpun>
 8003564:	2800      	cmp	r0, #0
 8003566:	f040 8491 	bne.w	8003e8c <_vfprintf_r+0x194c>
 800356a:	2e61      	cmp	r6, #97	; 0x61
 800356c:	f000 8111 	beq.w	8003792 <_vfprintf_r+0x1252>
 8003570:	2e41      	cmp	r6, #65	; 0x41
 8003572:	f000 8377 	beq.w	8003c64 <_vfprintf_r+0x1724>
 8003576:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800357a:	f026 0220 	bic.w	r2, r6, #32
 800357e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003582:	930e      	str	r3, [sp, #56]	; 0x38
 8003584:	9204      	str	r2, [sp, #16]
 8003586:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003588:	f000 842d 	beq.w	8003de6 <_vfprintf_r+0x18a6>
 800358c:	2a47      	cmp	r2, #71	; 0x47
 800358e:	f000 8424 	beq.w	8003dda <_vfprintf_r+0x189a>
 8003592:	2b00      	cmp	r3, #0
 8003594:	f2c0 82f9 	blt.w	8003b8a <_vfprintf_r+0x164a>
 8003598:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800359c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80035a0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80035a4:	2e66      	cmp	r6, #102	; 0x66
 80035a6:	f000 83eb 	beq.w	8003d80 <_vfprintf_r+0x1840>
 80035aa:	2e46      	cmp	r6, #70	; 0x46
 80035ac:	f000 847e 	beq.w	8003eac <_vfprintf_r+0x196c>
 80035b0:	9b04      	ldr	r3, [sp, #16]
 80035b2:	9803      	ldr	r0, [sp, #12]
 80035b4:	2b45      	cmp	r3, #69	; 0x45
 80035b6:	bf0c      	ite	eq
 80035b8:	f109 0501 	addeq.w	r5, r9, #1
 80035bc:	464d      	movne	r5, r9
 80035be:	aa28      	add	r2, sp, #160	; 0xa0
 80035c0:	ab25      	add	r3, sp, #148	; 0x94
 80035c2:	e9cd 3200 	strd	r3, r2, [sp]
 80035c6:	2102      	movs	r1, #2
 80035c8:	ab24      	add	r3, sp, #144	; 0x90
 80035ca:	462a      	mov	r2, r5
 80035cc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035d0:	f000 fe3e 	bl	8004250 <_dtoa_r>
 80035d4:	2e67      	cmp	r6, #103	; 0x67
 80035d6:	4607      	mov	r7, r0
 80035d8:	f040 849c 	bne.w	8003f14 <_vfprintf_r+0x19d4>
 80035dc:	f018 0f01 	tst.w	r8, #1
 80035e0:	f040 83f9 	bne.w	8003dd6 <_vfprintf_r+0x1896>
 80035e4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80035e6:	4640      	mov	r0, r8
 80035e8:	1bdb      	subs	r3, r3, r7
 80035ea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80035ee:	9310      	str	r3, [sp, #64]	; 0x40
 80035f0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035f2:	9311      	str	r3, [sp, #68]	; 0x44
 80035f4:	9b04      	ldr	r3, [sp, #16]
 80035f6:	2b47      	cmp	r3, #71	; 0x47
 80035f8:	f000 81e7 	beq.w	80039ca <_vfprintf_r+0x148a>
 80035fc:	9b04      	ldr	r3, [sp, #16]
 80035fe:	2b46      	cmp	r3, #70	; 0x46
 8003600:	f000 8300 	beq.w	8003c04 <_vfprintf_r+0x16c4>
 8003604:	9904      	ldr	r1, [sp, #16]
 8003606:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003608:	b2f2      	uxtb	r2, r6
 800360a:	2941      	cmp	r1, #65	; 0x41
 800360c:	bf08      	it	eq
 800360e:	320f      	addeq	r2, #15
 8003610:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003614:	bf06      	itte	eq
 8003616:	b2d2      	uxtbeq	r2, r2
 8003618:	2101      	moveq	r1, #1
 800361a:	2100      	movne	r1, #0
 800361c:	2b00      	cmp	r3, #0
 800361e:	9324      	str	r3, [sp, #144]	; 0x90
 8003620:	bfb8      	it	lt
 8003622:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003624:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003628:	bfba      	itte	lt
 800362a:	f1c3 0301 	rsblt	r3, r3, #1
 800362e:	222d      	movlt	r2, #45	; 0x2d
 8003630:	222b      	movge	r2, #43	; 0x2b
 8003632:	2b09      	cmp	r3, #9
 8003634:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003638:	f300 83f9 	bgt.w	8003e2e <_vfprintf_r+0x18ee>
 800363c:	2900      	cmp	r1, #0
 800363e:	f040 8487 	bne.w	8003f50 <_vfprintf_r+0x1a10>
 8003642:	2230      	movs	r2, #48	; 0x30
 8003644:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003648:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800364c:	3330      	adds	r3, #48	; 0x30
 800364e:	7013      	strb	r3, [r2, #0]
 8003650:	1c53      	adds	r3, r2, #1
 8003652:	aa26      	add	r2, sp, #152	; 0x98
 8003654:	1a9b      	subs	r3, r3, r2
 8003656:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003658:	9319      	str	r3, [sp, #100]	; 0x64
 800365a:	2a01      	cmp	r2, #1
 800365c:	4413      	add	r3, r2
 800365e:	9309      	str	r3, [sp, #36]	; 0x24
 8003660:	f340 8442 	ble.w	8003ee8 <_vfprintf_r+0x19a8>
 8003664:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003666:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003668:	4413      	add	r3, r2
 800366a:	9309      	str	r3, [sp, #36]	; 0x24
 800366c:	2300      	movs	r3, #0
 800366e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003670:	9314      	str	r3, [sp, #80]	; 0x50
 8003672:	9311      	str	r3, [sp, #68]	; 0x44
 8003674:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003676:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800367a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800367e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003682:	9304      	str	r3, [sp, #16]
 8003684:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003686:	2b00      	cmp	r3, #0
 8003688:	f040 8275 	bne.w	8003b76 <_vfprintf_r+0x1636>
 800368c:	4699      	mov	r9, r3
 800368e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003692:	f7ff b8e2 	b.w	800285a <_vfprintf_r+0x31a>
 8003696:	bf00      	nop
 8003698:	08007290 	.word	0x08007290
 800369c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800369e:	49bd      	ldr	r1, [pc, #756]	; (8003994 <_vfprintf_r+0x1454>)
 80036a0:	f8cb 1000 	str.w	r1, [fp]
 80036a4:	3201      	adds	r2, #1
 80036a6:	3401      	adds	r4, #1
 80036a8:	2101      	movs	r1, #1
 80036aa:	2a07      	cmp	r2, #7
 80036ac:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80036b4:	dc60      	bgt.n	8003778 <_vfprintf_r+0x1238>
 80036b6:	f10b 0b08 	add.w	fp, fp, #8
 80036ba:	b92b      	cbnz	r3, 80036c8 <_vfprintf_r+0x1188>
 80036bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036be:	b91a      	cbnz	r2, 80036c8 <_vfprintf_r+0x1188>
 80036c0:	f018 0f01 	tst.w	r8, #1
 80036c4:	f43f a98d 	beq.w	80029e2 <_vfprintf_r+0x4a2>
 80036c8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036ca:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036cc:	f8cb 1000 	str.w	r1, [fp]
 80036d0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036d2:	f8cb 1004 	str.w	r1, [fp, #4]
 80036d6:	3201      	adds	r2, #1
 80036d8:	440c      	add	r4, r1
 80036da:	2a07      	cmp	r2, #7
 80036dc:	942c      	str	r4, [sp, #176]	; 0xb0
 80036de:	922b      	str	r2, [sp, #172]	; 0xac
 80036e0:	f300 8282 	bgt.w	8003be8 <_vfprintf_r+0x16a8>
 80036e4:	f10b 0b08 	add.w	fp, fp, #8
 80036e8:	2b00      	cmp	r3, #0
 80036ea:	f2c0 82e7 	blt.w	8003cbc <_vfprintf_r+0x177c>
 80036ee:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80036f0:	3201      	adds	r2, #1
 80036f2:	441c      	add	r4, r3
 80036f4:	2a07      	cmp	r2, #7
 80036f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036fa:	e9cb 7300 	strd	r7, r3, [fp]
 80036fe:	f77f a96e 	ble.w	80029de <_vfprintf_r+0x49e>
 8003702:	e4fe      	b.n	8003102 <_vfprintf_r+0xbc2>
 8003704:	aa2a      	add	r2, sp, #168	; 0xa8
 8003706:	9907      	ldr	r1, [sp, #28]
 8003708:	9803      	ldr	r0, [sp, #12]
 800370a:	f003 fa47 	bl	8006b9c <__sprint_r>
 800370e:	2800      	cmp	r0, #0
 8003710:	f47f ac8e 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003714:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003718:	f7ff bbf0 	b.w	8002efc <_vfprintf_r+0x9bc>
 800371c:	9a05      	ldr	r2, [sp, #20]
 800371e:	601a      	str	r2, [r3, #0]
 8003720:	4657      	mov	r7, sl
 8003722:	f7ff b9b3 	b.w	8002a8c <_vfprintf_r+0x54c>
 8003726:	8814      	ldrh	r4, [r2, #0]
 8003728:	9108      	str	r1, [sp, #32]
 800372a:	2500      	movs	r5, #0
 800372c:	2201      	movs	r2, #1
 800372e:	f7ff b9c8 	b.w	8002ac2 <_vfprintf_r+0x582>
 8003732:	8814      	ldrh	r4, [r2, #0]
 8003734:	9308      	str	r3, [sp, #32]
 8003736:	2500      	movs	r5, #0
 8003738:	f7ff ba14 	b.w	8002b64 <_vfprintf_r+0x624>
 800373c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003740:	9208      	str	r2, [sp, #32]
 8003742:	17e5      	asrs	r5, r4, #31
 8003744:	4620      	mov	r0, r4
 8003746:	4629      	mov	r1, r5
 8003748:	f7ff b855 	b.w	80027f6 <_vfprintf_r+0x2b6>
 800374c:	8814      	ldrh	r4, [r2, #0]
 800374e:	9308      	str	r3, [sp, #32]
 8003750:	2500      	movs	r5, #0
 8003752:	f7ff b825 	b.w	80027a0 <_vfprintf_r+0x260>
 8003756:	222d      	movs	r2, #45	; 0x2d
 8003758:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800375c:	f7ff baa2 	b.w	8002ca4 <_vfprintf_r+0x764>
 8003760:	aa2a      	add	r2, sp, #168	; 0xa8
 8003762:	9907      	ldr	r1, [sp, #28]
 8003764:	9803      	ldr	r0, [sp, #12]
 8003766:	f003 fa19 	bl	8006b9c <__sprint_r>
 800376a:	2800      	cmp	r0, #0
 800376c:	f47f ac60 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003770:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003772:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003776:	e534      	b.n	80031e2 <_vfprintf_r+0xca2>
 8003778:	aa2a      	add	r2, sp, #168	; 0xa8
 800377a:	9907      	ldr	r1, [sp, #28]
 800377c:	9803      	ldr	r0, [sp, #12]
 800377e:	f003 fa0d 	bl	8006b9c <__sprint_r>
 8003782:	2800      	cmp	r0, #0
 8003784:	f47f ac54 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003788:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800378a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800378c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003790:	e793      	b.n	80036ba <_vfprintf_r+0x117a>
 8003792:	2330      	movs	r3, #48	; 0x30
 8003794:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003798:	2378      	movs	r3, #120	; 0x78
 800379a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800379e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80037a2:	f048 0402 	orr.w	r4, r8, #2
 80037a6:	f300 82b0 	bgt.w	8003d0a <_vfprintf_r+0x17ca>
 80037aa:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80037ae:	930e      	str	r3, [sp, #56]	; 0x38
 80037b0:	f026 0320 	bic.w	r3, r6, #32
 80037b4:	9304      	str	r3, [sp, #16]
 80037b6:	2200      	movs	r2, #0
 80037b8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80037ba:	920a      	str	r2, [sp, #40]	; 0x28
 80037bc:	46a0      	mov	r8, r4
 80037be:	af3d      	add	r7, sp, #244	; 0xf4
 80037c0:	2b00      	cmp	r3, #0
 80037c2:	f2c0 81e3 	blt.w	8003b8c <_vfprintf_r+0x164c>
 80037c6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037ca:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037ce:	2300      	movs	r3, #0
 80037d0:	930b      	str	r3, [sp, #44]	; 0x2c
 80037d2:	2e61      	cmp	r6, #97	; 0x61
 80037d4:	f000 8255 	beq.w	8003c82 <_vfprintf_r+0x1742>
 80037d8:	2e41      	cmp	r6, #65	; 0x41
 80037da:	f47f aee3 	bne.w	80035a4 <_vfprintf_r+0x1064>
 80037de:	a824      	add	r0, sp, #144	; 0x90
 80037e0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037e4:	f003 f8e2 	bl	80069ac <frexp>
 80037e8:	2200      	movs	r2, #0
 80037ea:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80037ee:	ec51 0b10 	vmov	r0, r1, d0
 80037f2:	f7fc fec1 	bl	8000578 <__aeabi_dmul>
 80037f6:	2200      	movs	r2, #0
 80037f8:	2300      	movs	r3, #0
 80037fa:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037fe:	f7fd fc55 	bl	80010ac <__aeabi_dcmpeq>
 8003802:	2800      	cmp	r0, #0
 8003804:	f040 8305 	bne.w	8003e12 <_vfprintf_r+0x18d2>
 8003808:	4b63      	ldr	r3, [pc, #396]	; (8003998 <_vfprintf_r+0x1458>)
 800380a:	9309      	str	r3, [sp, #36]	; 0x24
 800380c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003810:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003814:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003818:	9721      	str	r7, [sp, #132]	; 0x84
 800381a:	46b9      	mov	r9, r7
 800381c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003820:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003824:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003828:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800382c:	e003      	b.n	8003836 <_vfprintf_r+0x12f6>
 800382e:	f7fd fc3d 	bl	80010ac <__aeabi_dcmpeq>
 8003832:	bb20      	cbnz	r0, 800387e <_vfprintf_r+0x133e>
 8003834:	46a9      	mov	r9, r5
 8003836:	2200      	movs	r2, #0
 8003838:	4b58      	ldr	r3, [pc, #352]	; (800399c <_vfprintf_r+0x145c>)
 800383a:	4630      	mov	r0, r6
 800383c:	4639      	mov	r1, r7
 800383e:	f7fc fe9b 	bl	8000578 <__aeabi_dmul>
 8003842:	460f      	mov	r7, r1
 8003844:	4606      	mov	r6, r0
 8003846:	f7fd fc79 	bl	800113c <__aeabi_d2iz>
 800384a:	4680      	mov	r8, r0
 800384c:	f7fc fe2a 	bl	80004a4 <__aeabi_i2d>
 8003850:	4602      	mov	r2, r0
 8003852:	460b      	mov	r3, r1
 8003854:	4630      	mov	r0, r6
 8003856:	4639      	mov	r1, r7
 8003858:	f7fc fcd6 	bl	8000208 <__aeabi_dsub>
 800385c:	464d      	mov	r5, r9
 800385e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003862:	f805 cb01 	strb.w	ip, [r5], #1
 8003866:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800386a:	46a3      	mov	fp, r4
 800386c:	4606      	mov	r6, r0
 800386e:	460f      	mov	r7, r1
 8003870:	f04f 0200 	mov.w	r2, #0
 8003874:	f04f 0300 	mov.w	r3, #0
 8003878:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800387c:	d1d7      	bne.n	800382e <_vfprintf_r+0x12ee>
 800387e:	4630      	mov	r0, r6
 8003880:	4639      	mov	r1, r7
 8003882:	2200      	movs	r2, #0
 8003884:	4b46      	ldr	r3, [pc, #280]	; (80039a0 <_vfprintf_r+0x1460>)
 8003886:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800388a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800388c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003890:	4644      	mov	r4, r8
 8003892:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003896:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800389a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800389e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80038a2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80038a4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80038a8:	f7fd fc28 	bl	80010fc <__aeabi_dcmpgt>
 80038ac:	2800      	cmp	r0, #0
 80038ae:	f040 8176 	bne.w	8003b9e <_vfprintf_r+0x165e>
 80038b2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80038b6:	2200      	movs	r2, #0
 80038b8:	4b39      	ldr	r3, [pc, #228]	; (80039a0 <_vfprintf_r+0x1460>)
 80038ba:	f7fd fbf7 	bl	80010ac <__aeabi_dcmpeq>
 80038be:	b110      	cbz	r0, 80038c6 <_vfprintf_r+0x1386>
 80038c0:	07e2      	lsls	r2, r4, #31
 80038c2:	f100 816c 	bmi.w	8003b9e <_vfprintf_r+0x165e>
 80038c6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038c8:	2b00      	cmp	r3, #0
 80038ca:	db07      	blt.n	80038dc <_vfprintf_r+0x139c>
 80038cc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038ce:	3301      	adds	r3, #1
 80038d0:	442b      	add	r3, r5
 80038d2:	2230      	movs	r2, #48	; 0x30
 80038d4:	f805 2b01 	strb.w	r2, [r5], #1
 80038d8:	42ab      	cmp	r3, r5
 80038da:	d1fb      	bne.n	80038d4 <_vfprintf_r+0x1394>
 80038dc:	1beb      	subs	r3, r5, r7
 80038de:	4640      	mov	r0, r8
 80038e0:	9310      	str	r3, [sp, #64]	; 0x40
 80038e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038e6:	e683      	b.n	80035f0 <_vfprintf_r+0x10b0>
 80038e8:	f8cd 9010 	str.w	r9, [sp, #16]
 80038ec:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80038f0:	9408      	str	r4, [sp, #32]
 80038f2:	4681      	mov	r9, r0
 80038f4:	900f      	str	r0, [sp, #60]	; 0x3c
 80038f6:	9014      	str	r0, [sp, #80]	; 0x50
 80038f8:	9011      	str	r0, [sp, #68]	; 0x44
 80038fa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038fe:	f7fe bfac 	b.w	800285a <_vfprintf_r+0x31a>
 8003902:	aa2a      	add	r2, sp, #168	; 0xa8
 8003904:	9907      	ldr	r1, [sp, #28]
 8003906:	9803      	ldr	r0, [sp, #12]
 8003908:	f003 f948 	bl	8006b9c <__sprint_r>
 800390c:	2800      	cmp	r0, #0
 800390e:	f47f ab8f 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003912:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003914:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003916:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800391a:	e511      	b.n	8003340 <_vfprintf_r+0xe00>
 800391c:	4252      	negs	r2, r2
 800391e:	9206      	str	r2, [sp, #24]
 8003920:	9308      	str	r3, [sp, #32]
 8003922:	f7ff b96d 	b.w	8002c00 <_vfprintf_r+0x6c0>
 8003926:	4614      	mov	r4, r2
 8003928:	4632      	mov	r2, r6
 800392a:	461e      	mov	r6, r3
 800392c:	4613      	mov	r3, r2
 800392e:	462a      	mov	r2, r5
 8003930:	3201      	adds	r2, #1
 8003932:	9209      	str	r2, [sp, #36]	; 0x24
 8003934:	f106 0208 	add.w	r2, r6, #8
 8003938:	e9c6 3900 	strd	r3, r9, [r6]
 800393c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800393e:	932b      	str	r3, [sp, #172]	; 0xac
 8003940:	444c      	add	r4, r9
 8003942:	2b07      	cmp	r3, #7
 8003944:	942c      	str	r4, [sp, #176]	; 0xb0
 8003946:	f73f acc3 	bgt.w	80032d0 <_vfprintf_r+0xd90>
 800394a:	3301      	adds	r3, #1
 800394c:	9309      	str	r3, [sp, #36]	; 0x24
 800394e:	f102 0b08 	add.w	fp, r2, #8
 8003952:	4616      	mov	r6, r2
 8003954:	f7ff bbca 	b.w	80030ec <_vfprintf_r+0xbac>
 8003958:	aa2a      	add	r2, sp, #168	; 0xa8
 800395a:	9907      	ldr	r1, [sp, #28]
 800395c:	9803      	ldr	r0, [sp, #12]
 800395e:	f003 f91d 	bl	8006b9c <__sprint_r>
 8003962:	2800      	cmp	r0, #0
 8003964:	f47f ab64 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003968:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800396a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800396e:	f7ff bade 	b.w	8002f2e <_vfprintf_r+0x9ee>
 8003972:	464b      	mov	r3, r9
 8003974:	2b06      	cmp	r3, #6
 8003976:	bf28      	it	cs
 8003978:	2306      	movcs	r3, #6
 800397a:	46b9      	mov	r9, r7
 800397c:	970f      	str	r7, [sp, #60]	; 0x3c
 800397e:	9714      	str	r7, [sp, #80]	; 0x50
 8003980:	9711      	str	r7, [sp, #68]	; 0x44
 8003982:	970a      	str	r7, [sp, #40]	; 0x28
 8003984:	463a      	mov	r2, r7
 8003986:	9304      	str	r3, [sp, #16]
 8003988:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800398c:	4f05      	ldr	r7, [pc, #20]	; (80039a4 <_vfprintf_r+0x1464>)
 800398e:	f7fe bf64 	b.w	800285a <_vfprintf_r+0x31a>
 8003992:	bf00      	nop
 8003994:	0800727c 	.word	0x0800727c
 8003998:	08007260 	.word	0x08007260
 800399c:	40300000 	.word	0x40300000
 80039a0:	3fe00000 	.word	0x3fe00000
 80039a4:	08007274 	.word	0x08007274
 80039a8:	460c      	mov	r4, r1
 80039aa:	4639      	mov	r1, r7
 80039ac:	465f      	mov	r7, fp
 80039ae:	469b      	mov	fp, r3
 80039b0:	460b      	mov	r3, r1
 80039b2:	3201      	adds	r2, #1
 80039b4:	442c      	add	r4, r5
 80039b6:	2a07      	cmp	r2, #7
 80039b8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039bc:	e9cb 3500 	strd	r3, r5, [fp]
 80039c0:	f73f aca5 	bgt.w	800330e <_vfprintf_r+0xdce>
 80039c4:	f10b 0b08 	add.w	fp, fp, #8
 80039c8:	e4ac      	b.n	8003324 <_vfprintf_r+0xde4>
 80039ca:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039cc:	1cda      	adds	r2, r3, #3
 80039ce:	db02      	blt.n	80039d6 <_vfprintf_r+0x1496>
 80039d0:	4599      	cmp	r9, r3
 80039d2:	f280 80b5 	bge.w	8003b40 <_vfprintf_r+0x1600>
 80039d6:	3e02      	subs	r6, #2
 80039d8:	f026 0320 	bic.w	r3, r6, #32
 80039dc:	9304      	str	r3, [sp, #16]
 80039de:	e611      	b.n	8003604 <_vfprintf_r+0x10c4>
 80039e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039e2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80039e6:	465a      	mov	r2, fp
 80039e8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80039ec:	18fb      	adds	r3, r7, r3
 80039ee:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80039f2:	970c      	str	r7, [sp, #48]	; 0x30
 80039f4:	4eaf      	ldr	r6, [pc, #700]	; (8003cb4 <_vfprintf_r+0x1774>)
 80039f6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80039fa:	9309      	str	r3, [sp, #36]	; 0x24
 80039fc:	464f      	mov	r7, r9
 80039fe:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a02:	4621      	mov	r1, r4
 8003a04:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a06:	2b00      	cmp	r3, #0
 8003a08:	d05b      	beq.n	8003ac2 <_vfprintf_r+0x1582>
 8003a0a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a0c:	2b00      	cmp	r3, #0
 8003a0e:	d154      	bne.n	8003aba <_vfprintf_r+0x157a>
 8003a10:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a12:	3b01      	subs	r3, #1
 8003a14:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003a18:	9314      	str	r3, [sp, #80]	; 0x50
 8003a1a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a1c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003a1e:	6010      	str	r0, [r2, #0]
 8003a20:	3301      	adds	r3, #1
 8003a22:	4459      	add	r1, fp
 8003a24:	2b07      	cmp	r3, #7
 8003a26:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a28:	f8c2 b004 	str.w	fp, [r2, #4]
 8003a2c:	932b      	str	r3, [sp, #172]	; 0xac
 8003a2e:	dc68      	bgt.n	8003b02 <_vfprintf_r+0x15c2>
 8003a30:	3208      	adds	r2, #8
 8003a32:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003a34:	f898 3000 	ldrb.w	r3, [r8]
 8003a38:	1bc5      	subs	r5, r0, r7
 8003a3a:	429d      	cmp	r5, r3
 8003a3c:	bfa8      	it	ge
 8003a3e:	461d      	movge	r5, r3
 8003a40:	2d00      	cmp	r5, #0
 8003a42:	dd0b      	ble.n	8003a5c <_vfprintf_r+0x151c>
 8003a44:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a46:	6017      	str	r7, [r2, #0]
 8003a48:	3301      	adds	r3, #1
 8003a4a:	4429      	add	r1, r5
 8003a4c:	2b07      	cmp	r3, #7
 8003a4e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a50:	6055      	str	r5, [r2, #4]
 8003a52:	932b      	str	r3, [sp, #172]	; 0xac
 8003a54:	dc5e      	bgt.n	8003b14 <_vfprintf_r+0x15d4>
 8003a56:	f898 3000 	ldrb.w	r3, [r8]
 8003a5a:	3208      	adds	r2, #8
 8003a5c:	2d00      	cmp	r5, #0
 8003a5e:	bfac      	ite	ge
 8003a60:	1b5d      	subge	r5, r3, r5
 8003a62:	461d      	movlt	r5, r3
 8003a64:	2d00      	cmp	r5, #0
 8003a66:	dd26      	ble.n	8003ab6 <_vfprintf_r+0x1576>
 8003a68:	2d10      	cmp	r5, #16
 8003a6a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003a6c:	dd3c      	ble.n	8003ae8 <_vfprintf_r+0x15a8>
 8003a6e:	2410      	movs	r4, #16
 8003a70:	e003      	b.n	8003a7a <_vfprintf_r+0x153a>
 8003a72:	3208      	adds	r2, #8
 8003a74:	3d10      	subs	r5, #16
 8003a76:	2d10      	cmp	r5, #16
 8003a78:	dd36      	ble.n	8003ae8 <_vfprintf_r+0x15a8>
 8003a7a:	3001      	adds	r0, #1
 8003a7c:	3110      	adds	r1, #16
 8003a7e:	2807      	cmp	r0, #7
 8003a80:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a84:	e9c2 6400 	strd	r6, r4, [r2]
 8003a88:	ddf3      	ble.n	8003a72 <_vfprintf_r+0x1532>
 8003a8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a8c:	4651      	mov	r1, sl
 8003a8e:	4648      	mov	r0, r9
 8003a90:	f003 f884 	bl	8006b9c <__sprint_r>
 8003a94:	2800      	cmp	r0, #0
 8003a96:	d150      	bne.n	8003b3a <_vfprintf_r+0x15fa>
 8003a98:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003a9c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a9e:	e7e9      	b.n	8003a74 <_vfprintf_r+0x1534>
 8003aa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aa2:	4651      	mov	r1, sl
 8003aa4:	4648      	mov	r0, r9
 8003aa6:	f003 f879 	bl	8006b9c <__sprint_r>
 8003aaa:	2800      	cmp	r0, #0
 8003aac:	d145      	bne.n	8003b3a <_vfprintf_r+0x15fa>
 8003aae:	f898 3000 	ldrb.w	r3, [r8]
 8003ab2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ab4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ab6:	441f      	add	r7, r3
 8003ab8:	e7a4      	b.n	8003a04 <_vfprintf_r+0x14c4>
 8003aba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003abc:	3b01      	subs	r3, #1
 8003abe:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ac0:	e7ab      	b.n	8003a1a <_vfprintf_r+0x14da>
 8003ac2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ac4:	2b00      	cmp	r3, #0
 8003ac6:	d1f8      	bne.n	8003aba <_vfprintf_r+0x157a>
 8003ac8:	46b9      	mov	r9, r7
 8003aca:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003acc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ace:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003ad2:	18fb      	adds	r3, r7, r3
 8003ad4:	4599      	cmp	r9, r3
 8003ad6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ada:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ade:	4693      	mov	fp, r2
 8003ae0:	460c      	mov	r4, r1
 8003ae2:	bf28      	it	cs
 8003ae4:	4699      	movcs	r9, r3
 8003ae6:	e424      	b.n	8003332 <_vfprintf_r+0xdf2>
 8003ae8:	3001      	adds	r0, #1
 8003aea:	4429      	add	r1, r5
 8003aec:	2807      	cmp	r0, #7
 8003aee:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003af2:	e9c2 6500 	strd	r6, r5, [r2]
 8003af6:	dcd3      	bgt.n	8003aa0 <_vfprintf_r+0x1560>
 8003af8:	f898 3000 	ldrb.w	r3, [r8]
 8003afc:	3208      	adds	r2, #8
 8003afe:	441f      	add	r7, r3
 8003b00:	e780      	b.n	8003a04 <_vfprintf_r+0x14c4>
 8003b02:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b04:	4651      	mov	r1, sl
 8003b06:	4648      	mov	r0, r9
 8003b08:	f003 f848 	bl	8006b9c <__sprint_r>
 8003b0c:	b9a8      	cbnz	r0, 8003b3a <_vfprintf_r+0x15fa>
 8003b0e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b10:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b12:	e78e      	b.n	8003a32 <_vfprintf_r+0x14f2>
 8003b14:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b16:	4651      	mov	r1, sl
 8003b18:	4648      	mov	r0, r9
 8003b1a:	f003 f83f 	bl	8006b9c <__sprint_r>
 8003b1e:	b960      	cbnz	r0, 8003b3a <_vfprintf_r+0x15fa>
 8003b20:	f898 3000 	ldrb.w	r3, [r8]
 8003b24:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003b26:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b28:	e798      	b.n	8003a5c <_vfprintf_r+0x151c>
 8003b2a:	4638      	mov	r0, r7
 8003b2c:	f7fd f9a8 	bl	8000e80 <strlen>
 8003b30:	46a9      	mov	r9, r5
 8003b32:	4603      	mov	r3, r0
 8003b34:	9009      	str	r0, [sp, #36]	; 0x24
 8003b36:	f7ff b8f4 	b.w	8002d22 <_vfprintf_r+0x7e2>
 8003b3a:	46d1      	mov	r9, sl
 8003b3c:	f7ff ba7a 	b.w	8003034 <_vfprintf_r+0xaf4>
 8003b40:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b42:	4619      	mov	r1, r3
 8003b44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b46:	4299      	cmp	r1, r3
 8003b48:	f300 8082 	bgt.w	8003c50 <_vfprintf_r+0x1710>
 8003b4c:	07c4      	lsls	r4, r0, #31
 8003b4e:	f140 816b 	bpl.w	8003e28 <_vfprintf_r+0x18e8>
 8003b52:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b54:	4413      	add	r3, r2
 8003b56:	9309      	str	r3, [sp, #36]	; 0x24
 8003b58:	0541      	lsls	r1, r0, #21
 8003b5a:	d503      	bpl.n	8003b64 <_vfprintf_r+0x1624>
 8003b5c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b5e:	2b00      	cmp	r3, #0
 8003b60:	f300 80e6 	bgt.w	8003d30 <_vfprintf_r+0x17f0>
 8003b64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b66:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b6a:	9304      	str	r3, [sp, #16]
 8003b6c:	2667      	movs	r6, #103	; 0x67
 8003b6e:	2300      	movs	r3, #0
 8003b70:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b72:	9314      	str	r3, [sp, #80]	; 0x50
 8003b74:	e586      	b.n	8003684 <_vfprintf_r+0x1144>
 8003b76:	222d      	movs	r2, #45	; 0x2d
 8003b78:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b7c:	f04f 0900 	mov.w	r9, #0
 8003b80:	f7fe be6c 	b.w	800285c <_vfprintf_r+0x31c>
 8003b84:	46a1      	mov	r9, r4
 8003b86:	f7ff ba55 	b.w	8003034 <_vfprintf_r+0xaf4>
 8003b8a:	900a      	str	r0, [sp, #40]	; 0x28
 8003b8c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003b90:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003b94:	931f      	str	r3, [sp, #124]	; 0x7c
 8003b96:	232d      	movs	r3, #45	; 0x2d
 8003b98:	911e      	str	r1, [sp, #120]	; 0x78
 8003b9a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b9c:	e619      	b.n	80037d2 <_vfprintf_r+0x1292>
 8003b9e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ba0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003ba2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ba4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ba8:	7bd9      	ldrb	r1, [r3, #15]
 8003baa:	4291      	cmp	r1, r2
 8003bac:	462b      	mov	r3, r5
 8003bae:	d109      	bne.n	8003bc4 <_vfprintf_r+0x1684>
 8003bb0:	2030      	movs	r0, #48	; 0x30
 8003bb2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003bb6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bb8:	1e5a      	subs	r2, r3, #1
 8003bba:	9228      	str	r2, [sp, #160]	; 0xa0
 8003bbc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003bc0:	4291      	cmp	r1, r2
 8003bc2:	d0f6      	beq.n	8003bb2 <_vfprintf_r+0x1672>
 8003bc4:	2a39      	cmp	r2, #57	; 0x39
 8003bc6:	bf0b      	itete	eq
 8003bc8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003bca:	3201      	addne	r2, #1
 8003bcc:	7a92      	ldrbeq	r2, [r2, #10]
 8003bce:	b2d2      	uxtbne	r2, r2
 8003bd0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003bd4:	e682      	b.n	80038dc <_vfprintf_r+0x139c>
 8003bd6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003bda:	f43f ad9f 	beq.w	800371c <_vfprintf_r+0x11dc>
 8003bde:	9a05      	ldr	r2, [sp, #20]
 8003be0:	701a      	strb	r2, [r3, #0]
 8003be2:	4657      	mov	r7, sl
 8003be4:	f7fe bf52 	b.w	8002a8c <_vfprintf_r+0x54c>
 8003be8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bea:	9907      	ldr	r1, [sp, #28]
 8003bec:	9803      	ldr	r0, [sp, #12]
 8003bee:	f002 ffd5 	bl	8006b9c <__sprint_r>
 8003bf2:	2800      	cmp	r0, #0
 8003bf4:	f47f aa1c 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003bf8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bfa:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003bfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c02:	e571      	b.n	80036e8 <_vfprintf_r+0x11a8>
 8003c04:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c06:	2b00      	cmp	r3, #0
 8003c08:	f340 8164 	ble.w	8003ed4 <_vfprintf_r+0x1994>
 8003c0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c0e:	f1b9 0f00 	cmp.w	r9, #0
 8003c12:	f040 8103 	bne.w	8003e1c <_vfprintf_r+0x18dc>
 8003c16:	07c6      	lsls	r6, r0, #31
 8003c18:	f100 8100 	bmi.w	8003e1c <_vfprintf_r+0x18dc>
 8003c1c:	9309      	str	r3, [sp, #36]	; 0x24
 8003c1e:	2666      	movs	r6, #102	; 0x66
 8003c20:	0543      	lsls	r3, r0, #21
 8003c22:	f100 8086 	bmi.w	8003d32 <_vfprintf_r+0x17f2>
 8003c26:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c28:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c2c:	9304      	str	r3, [sp, #16]
 8003c2e:	e79e      	b.n	8003b6e <_vfprintf_r+0x162e>
 8003c30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c32:	9907      	ldr	r1, [sp, #28]
 8003c34:	9803      	ldr	r0, [sp, #12]
 8003c36:	f002 ffb1 	bl	8006b9c <__sprint_r>
 8003c3a:	2800      	cmp	r0, #0
 8003c3c:	f47f a9f8 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003c40:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c42:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c44:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c46:	1ad3      	subs	r3, r2, r3
 8003c48:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c4c:	f7ff bb90 	b.w	8003370 <_vfprintf_r+0xe30>
 8003c50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c52:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c54:	4413      	add	r3, r2
 8003c56:	9309      	str	r3, [sp, #36]	; 0x24
 8003c58:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c5a:	2b00      	cmp	r3, #0
 8003c5c:	f340 8149 	ble.w	8003ef2 <_vfprintf_r+0x19b2>
 8003c60:	2667      	movs	r6, #103	; 0x67
 8003c62:	e7dd      	b.n	8003c20 <_vfprintf_r+0x16e0>
 8003c64:	2330      	movs	r3, #48	; 0x30
 8003c66:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c6a:	2358      	movs	r3, #88	; 0x58
 8003c6c:	e595      	b.n	800379a <_vfprintf_r+0x125a>
 8003c6e:	9803      	ldr	r0, [sp, #12]
 8003c70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c72:	4649      	mov	r1, r9
 8003c74:	f002 ff92 	bl	8006b9c <__sprint_r>
 8003c78:	2800      	cmp	r0, #0
 8003c7a:	f47f a9e0 	bne.w	800303e <_vfprintf_r+0xafe>
 8003c7e:	f7fe bf0f 	b.w	8002aa0 <_vfprintf_r+0x560>
 8003c82:	a824      	add	r0, sp, #144	; 0x90
 8003c84:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c88:	f002 fe90 	bl	80069ac <frexp>
 8003c8c:	2200      	movs	r2, #0
 8003c8e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c92:	ec51 0b10 	vmov	r0, r1, d0
 8003c96:	f7fc fc6f 	bl	8000578 <__aeabi_dmul>
 8003c9a:	2200      	movs	r2, #0
 8003c9c:	2300      	movs	r3, #0
 8003c9e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ca2:	f7fd fa03 	bl	80010ac <__aeabi_dcmpeq>
 8003ca6:	b108      	cbz	r0, 8003cac <_vfprintf_r+0x176c>
 8003ca8:	2301      	movs	r3, #1
 8003caa:	9324      	str	r3, [sp, #144]	; 0x90
 8003cac:	4b02      	ldr	r3, [pc, #8]	; (8003cb8 <_vfprintf_r+0x1778>)
 8003cae:	9309      	str	r3, [sp, #36]	; 0x24
 8003cb0:	e5ac      	b.n	800380c <_vfprintf_r+0x12cc>
 8003cb2:	bf00      	nop
 8003cb4:	08007290 	.word	0x08007290
 8003cb8:	0800724c 	.word	0x0800724c
 8003cbc:	425d      	negs	r5, r3
 8003cbe:	3310      	adds	r3, #16
 8003cc0:	4bb9      	ldr	r3, [pc, #740]	; (8003fa8 <_vfprintf_r+0x1a68>)
 8003cc2:	f280 8097 	bge.w	8003df4 <_vfprintf_r+0x18b4>
 8003cc6:	4619      	mov	r1, r3
 8003cc8:	2610      	movs	r6, #16
 8003cca:	4623      	mov	r3, r4
 8003ccc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003cd0:	460c      	mov	r4, r1
 8003cd2:	e005      	b.n	8003ce0 <_vfprintf_r+0x17a0>
 8003cd4:	f10b 0b08 	add.w	fp, fp, #8
 8003cd8:	3d10      	subs	r5, #16
 8003cda:	2d10      	cmp	r5, #16
 8003cdc:	f340 8087 	ble.w	8003dee <_vfprintf_r+0x18ae>
 8003ce0:	3201      	adds	r2, #1
 8003ce2:	3310      	adds	r3, #16
 8003ce4:	2a07      	cmp	r2, #7
 8003ce6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003cea:	e9cb 4600 	strd	r4, r6, [fp]
 8003cee:	ddf1      	ble.n	8003cd4 <_vfprintf_r+0x1794>
 8003cf0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cf2:	9907      	ldr	r1, [sp, #28]
 8003cf4:	4648      	mov	r0, r9
 8003cf6:	f002 ff51 	bl	8006b9c <__sprint_r>
 8003cfa:	2800      	cmp	r0, #0
 8003cfc:	f47f a998 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003d00:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003d04:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d08:	e7e6      	b.n	8003cd8 <_vfprintf_r+0x1798>
 8003d0a:	f109 0101 	add.w	r1, r9, #1
 8003d0e:	9803      	ldr	r0, [sp, #12]
 8003d10:	f001 fe80 	bl	8005a14 <_malloc_r>
 8003d14:	4607      	mov	r7, r0
 8003d16:	2800      	cmp	r0, #0
 8003d18:	f000 813b 	beq.w	8003f92 <_vfprintf_r+0x1a52>
 8003d1c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003d20:	930e      	str	r3, [sp, #56]	; 0x38
 8003d22:	f026 0320 	bic.w	r3, r6, #32
 8003d26:	9304      	str	r3, [sp, #16]
 8003d28:	46a0      	mov	r8, r4
 8003d2a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d2c:	900a      	str	r0, [sp, #40]	; 0x28
 8003d2e:	e547      	b.n	80037c0 <_vfprintf_r+0x1280>
 8003d30:	2667      	movs	r6, #103	; 0x67
 8003d32:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003d34:	2200      	movs	r2, #0
 8003d36:	920f      	str	r2, [sp, #60]	; 0x3c
 8003d38:	9214      	str	r2, [sp, #80]	; 0x50
 8003d3a:	7803      	ldrb	r3, [r0, #0]
 8003d3c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003d3e:	2bff      	cmp	r3, #255	; 0xff
 8003d40:	d00c      	beq.n	8003d5c <_vfprintf_r+0x181c>
 8003d42:	4293      	cmp	r3, r2
 8003d44:	da0a      	bge.n	8003d5c <_vfprintf_r+0x181c>
 8003d46:	7841      	ldrb	r1, [r0, #1]
 8003d48:	1ad2      	subs	r2, r2, r3
 8003d4a:	b1a9      	cbz	r1, 8003d78 <_vfprintf_r+0x1838>
 8003d4c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d4e:	3301      	adds	r3, #1
 8003d50:	9314      	str	r3, [sp, #80]	; 0x50
 8003d52:	460b      	mov	r3, r1
 8003d54:	2bff      	cmp	r3, #255	; 0xff
 8003d56:	f100 0001 	add.w	r0, r0, #1
 8003d5a:	d1f2      	bne.n	8003d42 <_vfprintf_r+0x1802>
 8003d5c:	9211      	str	r2, [sp, #68]	; 0x44
 8003d5e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d60:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003d62:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003d64:	901a      	str	r0, [sp, #104]	; 0x68
 8003d66:	4413      	add	r3, r2
 8003d68:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003d6a:	fb02 1303 	mla	r3, r2, r3, r1
 8003d6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d70:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d74:	9304      	str	r3, [sp, #16]
 8003d76:	e485      	b.n	8003684 <_vfprintf_r+0x1144>
 8003d78:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003d7a:	3101      	adds	r1, #1
 8003d7c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003d7e:	e7de      	b.n	8003d3e <_vfprintf_r+0x17fe>
 8003d80:	aa28      	add	r2, sp, #160	; 0xa0
 8003d82:	ab25      	add	r3, sp, #148	; 0x94
 8003d84:	e9cd 3200 	strd	r3, r2, [sp]
 8003d88:	2103      	movs	r1, #3
 8003d8a:	ab24      	add	r3, sp, #144	; 0x90
 8003d8c:	464a      	mov	r2, r9
 8003d8e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d92:	9803      	ldr	r0, [sp, #12]
 8003d94:	f000 fa5c 	bl	8004250 <_dtoa_r>
 8003d98:	464d      	mov	r5, r9
 8003d9a:	4607      	mov	r7, r0
 8003d9c:	eb00 0409 	add.w	r4, r0, r9
 8003da0:	783b      	ldrb	r3, [r7, #0]
 8003da2:	2b30      	cmp	r3, #48	; 0x30
 8003da4:	f000 80be 	beq.w	8003f24 <_vfprintf_r+0x19e4>
 8003da8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003daa:	442c      	add	r4, r5
 8003dac:	2200      	movs	r2, #0
 8003dae:	2300      	movs	r3, #0
 8003db0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003db4:	f7fd f97a 	bl	80010ac <__aeabi_dcmpeq>
 8003db8:	b108      	cbz	r0, 8003dbe <_vfprintf_r+0x187e>
 8003dba:	4623      	mov	r3, r4
 8003dbc:	e413      	b.n	80035e6 <_vfprintf_r+0x10a6>
 8003dbe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dc0:	42a3      	cmp	r3, r4
 8003dc2:	f4bf ac10 	bcs.w	80035e6 <_vfprintf_r+0x10a6>
 8003dc6:	2130      	movs	r1, #48	; 0x30
 8003dc8:	1c5a      	adds	r2, r3, #1
 8003dca:	9228      	str	r2, [sp, #160]	; 0xa0
 8003dcc:	7019      	strb	r1, [r3, #0]
 8003dce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003dd0:	429c      	cmp	r4, r3
 8003dd2:	d8f9      	bhi.n	8003dc8 <_vfprintf_r+0x1888>
 8003dd4:	e407      	b.n	80035e6 <_vfprintf_r+0x10a6>
 8003dd6:	197c      	adds	r4, r7, r5
 8003dd8:	e7e8      	b.n	8003dac <_vfprintf_r+0x186c>
 8003dda:	f1b9 0f00 	cmp.w	r9, #0
 8003dde:	f000 8092 	beq.w	8003f06 <_vfprintf_r+0x19c6>
 8003de2:	900a      	str	r0, [sp, #40]	; 0x28
 8003de4:	e4ec      	b.n	80037c0 <_vfprintf_r+0x1280>
 8003de6:	900a      	str	r0, [sp, #40]	; 0x28
 8003de8:	f04f 0906 	mov.w	r9, #6
 8003dec:	e4e8      	b.n	80037c0 <_vfprintf_r+0x1280>
 8003dee:	4621      	mov	r1, r4
 8003df0:	461c      	mov	r4, r3
 8003df2:	460b      	mov	r3, r1
 8003df4:	3201      	adds	r2, #1
 8003df6:	442c      	add	r4, r5
 8003df8:	2a07      	cmp	r2, #7
 8003dfa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003dfe:	e9cb 3500 	strd	r3, r5, [fp]
 8003e02:	f300 80a9 	bgt.w	8003f58 <_vfprintf_r+0x1a18>
 8003e06:	f10b 0b08 	add.w	fp, fp, #8
 8003e0a:	e470      	b.n	80036ee <_vfprintf_r+0x11ae>
 8003e0c:	469a      	mov	sl, r3
 8003e0e:	f7ff bb37 	b.w	8003480 <_vfprintf_r+0xf40>
 8003e12:	2301      	movs	r3, #1
 8003e14:	9324      	str	r3, [sp, #144]	; 0x90
 8003e16:	4b65      	ldr	r3, [pc, #404]	; (8003fac <_vfprintf_r+0x1a6c>)
 8003e18:	9309      	str	r3, [sp, #36]	; 0x24
 8003e1a:	e4f7      	b.n	800380c <_vfprintf_r+0x12cc>
 8003e1c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e1e:	4413      	add	r3, r2
 8003e20:	444b      	add	r3, r9
 8003e22:	9309      	str	r3, [sp, #36]	; 0x24
 8003e24:	2666      	movs	r6, #102	; 0x66
 8003e26:	e6fb      	b.n	8003c20 <_vfprintf_r+0x16e0>
 8003e28:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e2c:	e694      	b.n	8003b58 <_vfprintf_r+0x1618>
 8003e2e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003e32:	4664      	mov	r4, ip
 8003e34:	4d5e      	ldr	r5, [pc, #376]	; (8003fb0 <_vfprintf_r+0x1a70>)
 8003e36:	e000      	b.n	8003e3a <_vfprintf_r+0x18fa>
 8003e38:	4614      	mov	r4, r2
 8003e3a:	fba5 1203 	umull	r1, r2, r5, r3
 8003e3e:	08d2      	lsrs	r2, r2, #3
 8003e40:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003e44:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003e48:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003e4c:	4613      	mov	r3, r2
 8003e4e:	2b09      	cmp	r3, #9
 8003e50:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003e54:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003e58:	dcee      	bgt.n	8003e38 <_vfprintf_r+0x18f8>
 8003e5a:	3330      	adds	r3, #48	; 0x30
 8003e5c:	3c02      	subs	r4, #2
 8003e5e:	b2db      	uxtb	r3, r3
 8003e60:	45a4      	cmp	ip, r4
 8003e62:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003e66:	f240 8090 	bls.w	8003f8a <_vfprintf_r+0x1a4a>
 8003e6a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003e6e:	4611      	mov	r1, r2
 8003e70:	e001      	b.n	8003e76 <_vfprintf_r+0x1936>
 8003e72:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e76:	f804 3b01 	strb.w	r3, [r4], #1
 8003e7a:	458c      	cmp	ip, r1
 8003e7c:	d1f9      	bne.n	8003e72 <_vfprintf_r+0x1932>
 8003e7e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003e80:	1a9b      	subs	r3, r3, r2
 8003e82:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e86:	4413      	add	r3, r2
 8003e88:	f7ff bbe3 	b.w	8003652 <_vfprintf_r+0x1112>
 8003e8c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e8e:	4f49      	ldr	r7, [pc, #292]	; (8003fb4 <_vfprintf_r+0x1a74>)
 8003e90:	2b00      	cmp	r3, #0
 8003e92:	bfb6      	itet	lt
 8003e94:	222d      	movlt	r2, #45	; 0x2d
 8003e96:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003e9a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003e9e:	4b46      	ldr	r3, [pc, #280]	; (8003fb8 <_vfprintf_r+0x1a78>)
 8003ea0:	f7fe bf02 	b.w	8002ca8 <_vfprintf_r+0x768>
 8003ea4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ea8:	f7ff b8c9 	b.w	800303e <_vfprintf_r+0xafe>
 8003eac:	aa28      	add	r2, sp, #160	; 0xa0
 8003eae:	ab25      	add	r3, sp, #148	; 0x94
 8003eb0:	e9cd 3200 	strd	r3, r2, [sp]
 8003eb4:	2103      	movs	r1, #3
 8003eb6:	ab24      	add	r3, sp, #144	; 0x90
 8003eb8:	464a      	mov	r2, r9
 8003eba:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ebe:	9803      	ldr	r0, [sp, #12]
 8003ec0:	f000 f9c6 	bl	8004250 <_dtoa_r>
 8003ec4:	464d      	mov	r5, r9
 8003ec6:	4607      	mov	r7, r0
 8003ec8:	2e46      	cmp	r6, #70	; 0x46
 8003eca:	eb07 0405 	add.w	r4, r7, r5
 8003ece:	f43f af67 	beq.w	8003da0 <_vfprintf_r+0x1860>
 8003ed2:	e76b      	b.n	8003dac <_vfprintf_r+0x186c>
 8003ed4:	f1b9 0f00 	cmp.w	r9, #0
 8003ed8:	d131      	bne.n	8003f3e <_vfprintf_r+0x19fe>
 8003eda:	07c5      	lsls	r5, r0, #31
 8003edc:	d42f      	bmi.n	8003f3e <_vfprintf_r+0x19fe>
 8003ede:	2301      	movs	r3, #1
 8003ee0:	9304      	str	r3, [sp, #16]
 8003ee2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ee4:	2666      	movs	r6, #102	; 0x66
 8003ee6:	e642      	b.n	8003b6e <_vfprintf_r+0x162e>
 8003ee8:	07c3      	lsls	r3, r0, #31
 8003eea:	f57f abbf 	bpl.w	800366c <_vfprintf_r+0x112c>
 8003eee:	f7ff bbb9 	b.w	8003664 <_vfprintf_r+0x1124>
 8003ef2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003ef4:	f1c3 0301 	rsb	r3, r3, #1
 8003ef8:	441a      	add	r2, r3
 8003efa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003efe:	9209      	str	r2, [sp, #36]	; 0x24
 8003f00:	9304      	str	r3, [sp, #16]
 8003f02:	2667      	movs	r6, #103	; 0x67
 8003f04:	e633      	b.n	8003b6e <_vfprintf_r+0x162e>
 8003f06:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003f0a:	f04f 0901 	mov.w	r9, #1
 8003f0e:	e457      	b.n	80037c0 <_vfprintf_r+0x1280>
 8003f10:	465a      	mov	r2, fp
 8003f12:	e511      	b.n	8003938 <_vfprintf_r+0x13f8>
 8003f14:	2e47      	cmp	r6, #71	; 0x47
 8003f16:	f47f af5e 	bne.w	8003dd6 <_vfprintf_r+0x1896>
 8003f1a:	f018 0f01 	tst.w	r8, #1
 8003f1e:	f43f ab61 	beq.w	80035e4 <_vfprintf_r+0x10a4>
 8003f22:	e7d1      	b.n	8003ec8 <_vfprintf_r+0x1988>
 8003f24:	2200      	movs	r2, #0
 8003f26:	2300      	movs	r3, #0
 8003f28:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f2c:	f7fd f8be 	bl	80010ac <__aeabi_dcmpeq>
 8003f30:	2800      	cmp	r0, #0
 8003f32:	f47f af39 	bne.w	8003da8 <_vfprintf_r+0x1868>
 8003f36:	f1c5 0501 	rsb	r5, r5, #1
 8003f3a:	9524      	str	r5, [sp, #144]	; 0x90
 8003f3c:	e735      	b.n	8003daa <_vfprintf_r+0x186a>
 8003f3e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003f40:	3301      	adds	r3, #1
 8003f42:	444b      	add	r3, r9
 8003f44:	9309      	str	r3, [sp, #36]	; 0x24
 8003f46:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f4a:	9304      	str	r3, [sp, #16]
 8003f4c:	2666      	movs	r6, #102	; 0x66
 8003f4e:	e60e      	b.n	8003b6e <_vfprintf_r+0x162e>
 8003f50:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f54:	f7ff bb7a 	b.w	800364c <_vfprintf_r+0x110c>
 8003f58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f5a:	9907      	ldr	r1, [sp, #28]
 8003f5c:	9803      	ldr	r0, [sp, #12]
 8003f5e:	f002 fe1d 	bl	8006b9c <__sprint_r>
 8003f62:	2800      	cmp	r0, #0
 8003f64:	f47f a864 	bne.w	8003030 <_vfprintf_r+0xaf0>
 8003f68:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f6c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f70:	f7ff bbbd 	b.w	80036ee <_vfprintf_r+0x11ae>
 8003f74:	9908      	ldr	r1, [sp, #32]
 8003f76:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f7a:	680b      	ldr	r3, [r1, #0]
 8003f7c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003f80:	1d0b      	adds	r3, r1, #4
 8003f82:	4692      	mov	sl, r2
 8003f84:	9308      	str	r3, [sp, #32]
 8003f86:	f7fe bb59 	b.w	800263c <_vfprintf_r+0xfc>
 8003f8a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003f8e:	f7ff bb60 	b.w	8003652 <_vfprintf_r+0x1112>
 8003f92:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f96:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f9e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003fa2:	f7ff b84c 	b.w	800303e <_vfprintf_r+0xafe>
 8003fa6:	bf00      	nop
 8003fa8:	08007290 	.word	0x08007290
 8003fac:	08007260 	.word	0x08007260
 8003fb0:	cccccccd 	.word	0xcccccccd
 8003fb4:	08007248 	.word	0x08007248
 8003fb8:	08007244 	.word	0x08007244

08003fbc <__sbprintf>:
 8003fbc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003fc0:	460c      	mov	r4, r1
 8003fc2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003fc6:	8989      	ldrh	r1, [r1, #12]
 8003fc8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003fca:	89e5      	ldrh	r5, [r4, #14]
 8003fcc:	9619      	str	r6, [sp, #100]	; 0x64
 8003fce:	f021 0102 	bic.w	r1, r1, #2
 8003fd2:	4606      	mov	r6, r0
 8003fd4:	69e0      	ldr	r0, [r4, #28]
 8003fd6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003fda:	4617      	mov	r7, r2
 8003fdc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003fe0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003fe2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003fe6:	4698      	mov	r8, r3
 8003fe8:	ad1a      	add	r5, sp, #104	; 0x68
 8003fea:	2300      	movs	r3, #0
 8003fec:	9007      	str	r0, [sp, #28]
 8003fee:	a816      	add	r0, sp, #88	; 0x58
 8003ff0:	9209      	str	r2, [sp, #36]	; 0x24
 8003ff2:	9306      	str	r3, [sp, #24]
 8003ff4:	9500      	str	r5, [sp, #0]
 8003ff6:	9504      	str	r5, [sp, #16]
 8003ff8:	9102      	str	r1, [sp, #8]
 8003ffa:	9105      	str	r1, [sp, #20]
 8003ffc:	f001 fc8a 	bl	8005914 <__retarget_lock_init_recursive>
 8004000:	4643      	mov	r3, r8
 8004002:	463a      	mov	r2, r7
 8004004:	4669      	mov	r1, sp
 8004006:	4630      	mov	r0, r6
 8004008:	f7fe fa9a 	bl	8002540 <_vfprintf_r>
 800400c:	1e05      	subs	r5, r0, #0
 800400e:	db07      	blt.n	8004020 <__sbprintf+0x64>
 8004010:	4630      	mov	r0, r6
 8004012:	4669      	mov	r1, sp
 8004014:	f001 f8d6 	bl	80051c4 <_fflush_r>
 8004018:	2800      	cmp	r0, #0
 800401a:	bf18      	it	ne
 800401c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004020:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004024:	065b      	lsls	r3, r3, #25
 8004026:	d503      	bpl.n	8004030 <__sbprintf+0x74>
 8004028:	89a3      	ldrh	r3, [r4, #12]
 800402a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800402e:	81a3      	strh	r3, [r4, #12]
 8004030:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004032:	f001 fc71 	bl	8005918 <__retarget_lock_close_recursive>
 8004036:	4628      	mov	r0, r5
 8004038:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800403c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004040 <__swsetup_r>:
 8004040:	b538      	push	{r3, r4, r5, lr}
 8004042:	4b31      	ldr	r3, [pc, #196]	; (8004108 <__swsetup_r+0xc8>)
 8004044:	681b      	ldr	r3, [r3, #0]
 8004046:	4605      	mov	r5, r0
 8004048:	460c      	mov	r4, r1
 800404a:	b113      	cbz	r3, 8004052 <__swsetup_r+0x12>
 800404c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800404e:	2a00      	cmp	r2, #0
 8004050:	d03a      	beq.n	80040c8 <__swsetup_r+0x88>
 8004052:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004056:	b293      	uxth	r3, r2
 8004058:	0718      	lsls	r0, r3, #28
 800405a:	d50c      	bpl.n	8004076 <__swsetup_r+0x36>
 800405c:	6920      	ldr	r0, [r4, #16]
 800405e:	b1a8      	cbz	r0, 800408c <__swsetup_r+0x4c>
 8004060:	f013 0201 	ands.w	r2, r3, #1
 8004064:	d020      	beq.n	80040a8 <__swsetup_r+0x68>
 8004066:	6963      	ldr	r3, [r4, #20]
 8004068:	2200      	movs	r2, #0
 800406a:	425b      	negs	r3, r3
 800406c:	61a3      	str	r3, [r4, #24]
 800406e:	60a2      	str	r2, [r4, #8]
 8004070:	b300      	cbz	r0, 80040b4 <__swsetup_r+0x74>
 8004072:	2000      	movs	r0, #0
 8004074:	bd38      	pop	{r3, r4, r5, pc}
 8004076:	06d9      	lsls	r1, r3, #27
 8004078:	d53e      	bpl.n	80040f8 <__swsetup_r+0xb8>
 800407a:	0758      	lsls	r0, r3, #29
 800407c:	d428      	bmi.n	80040d0 <__swsetup_r+0x90>
 800407e:	6920      	ldr	r0, [r4, #16]
 8004080:	f042 0308 	orr.w	r3, r2, #8
 8004084:	81a3      	strh	r3, [r4, #12]
 8004086:	b29b      	uxth	r3, r3
 8004088:	2800      	cmp	r0, #0
 800408a:	d1e9      	bne.n	8004060 <__swsetup_r+0x20>
 800408c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004090:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004094:	d0e4      	beq.n	8004060 <__swsetup_r+0x20>
 8004096:	4628      	mov	r0, r5
 8004098:	4621      	mov	r1, r4
 800409a:	f001 fc71 	bl	8005980 <__smakebuf_r>
 800409e:	89a3      	ldrh	r3, [r4, #12]
 80040a0:	6920      	ldr	r0, [r4, #16]
 80040a2:	f013 0201 	ands.w	r2, r3, #1
 80040a6:	d1de      	bne.n	8004066 <__swsetup_r+0x26>
 80040a8:	0799      	lsls	r1, r3, #30
 80040aa:	bf58      	it	pl
 80040ac:	6962      	ldrpl	r2, [r4, #20]
 80040ae:	60a2      	str	r2, [r4, #8]
 80040b0:	2800      	cmp	r0, #0
 80040b2:	d1de      	bne.n	8004072 <__swsetup_r+0x32>
 80040b4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80040b8:	061a      	lsls	r2, r3, #24
 80040ba:	d5db      	bpl.n	8004074 <__swsetup_r+0x34>
 80040bc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040c0:	81a3      	strh	r3, [r4, #12]
 80040c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040c6:	bd38      	pop	{r3, r4, r5, pc}
 80040c8:	4618      	mov	r0, r3
 80040ca:	f001 f8d7 	bl	800527c <__sinit>
 80040ce:	e7c0      	b.n	8004052 <__swsetup_r+0x12>
 80040d0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80040d2:	b151      	cbz	r1, 80040ea <__swsetup_r+0xaa>
 80040d4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80040d8:	4299      	cmp	r1, r3
 80040da:	d004      	beq.n	80040e6 <__swsetup_r+0xa6>
 80040dc:	4628      	mov	r0, r5
 80040de:	f001 f96f 	bl	80053c0 <_free_r>
 80040e2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040e6:	2300      	movs	r3, #0
 80040e8:	6323      	str	r3, [r4, #48]	; 0x30
 80040ea:	2300      	movs	r3, #0
 80040ec:	6920      	ldr	r0, [r4, #16]
 80040ee:	6063      	str	r3, [r4, #4]
 80040f0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80040f4:	6020      	str	r0, [r4, #0]
 80040f6:	e7c3      	b.n	8004080 <__swsetup_r+0x40>
 80040f8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80040fc:	2309      	movs	r3, #9
 80040fe:	602b      	str	r3, [r5, #0]
 8004100:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004104:	81a2      	strh	r2, [r4, #12]
 8004106:	bd38      	pop	{r3, r4, r5, pc}
 8004108:	2000003c 	.word	0x2000003c

0800410c <register_fini>:
 800410c:	4b02      	ldr	r3, [pc, #8]	; (8004118 <register_fini+0xc>)
 800410e:	b113      	cbz	r3, 8004116 <register_fini+0xa>
 8004110:	4802      	ldr	r0, [pc, #8]	; (800411c <register_fini+0x10>)
 8004112:	f000 b805 	b.w	8004120 <atexit>
 8004116:	4770      	bx	lr
 8004118:	00000000 	.word	0x00000000
 800411c:	080052ed 	.word	0x080052ed

08004120 <atexit>:
 8004120:	2300      	movs	r3, #0
 8004122:	4601      	mov	r1, r0
 8004124:	461a      	mov	r2, r3
 8004126:	4618      	mov	r0, r3
 8004128:	f002 bd58 	b.w	8006bdc <__register_exitproc>

0800412c <quorem>:
 800412c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004130:	6903      	ldr	r3, [r0, #16]
 8004132:	690f      	ldr	r7, [r1, #16]
 8004134:	42bb      	cmp	r3, r7
 8004136:	b083      	sub	sp, #12
 8004138:	f2c0 8086 	blt.w	8004248 <quorem+0x11c>
 800413c:	3f01      	subs	r7, #1
 800413e:	f101 0914 	add.w	r9, r1, #20
 8004142:	f100 0a14 	add.w	sl, r0, #20
 8004146:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800414a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800414e:	00bc      	lsls	r4, r7, #2
 8004150:	3201      	adds	r2, #1
 8004152:	fbb3 f8f2 	udiv	r8, r3, r2
 8004156:	eb0a 0304 	add.w	r3, sl, r4
 800415a:	9400      	str	r4, [sp, #0]
 800415c:	eb09 0b04 	add.w	fp, r9, r4
 8004160:	9301      	str	r3, [sp, #4]
 8004162:	f1b8 0f00 	cmp.w	r8, #0
 8004166:	d038      	beq.n	80041da <quorem+0xae>
 8004168:	2500      	movs	r5, #0
 800416a:	462e      	mov	r6, r5
 800416c:	46ce      	mov	lr, r9
 800416e:	46d4      	mov	ip, sl
 8004170:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004174:	f8dc 3000 	ldr.w	r3, [ip]
 8004178:	b2a2      	uxth	r2, r4
 800417a:	fb08 5502 	mla	r5, r8, r2, r5
 800417e:	0c22      	lsrs	r2, r4, #16
 8004180:	0c2c      	lsrs	r4, r5, #16
 8004182:	fb08 4202 	mla	r2, r8, r2, r4
 8004186:	b2ad      	uxth	r5, r5
 8004188:	1b75      	subs	r5, r6, r5
 800418a:	b296      	uxth	r6, r2
 800418c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004190:	fa15 f383 	uxtah	r3, r5, r3
 8004194:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004198:	b29b      	uxth	r3, r3
 800419a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800419e:	45f3      	cmp	fp, lr
 80041a0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80041a4:	f84c 3b04 	str.w	r3, [ip], #4
 80041a8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80041ac:	d2e0      	bcs.n	8004170 <quorem+0x44>
 80041ae:	9b00      	ldr	r3, [sp, #0]
 80041b0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80041b4:	b98b      	cbnz	r3, 80041da <quorem+0xae>
 80041b6:	9a01      	ldr	r2, [sp, #4]
 80041b8:	1f13      	subs	r3, r2, #4
 80041ba:	459a      	cmp	sl, r3
 80041bc:	d20c      	bcs.n	80041d8 <quorem+0xac>
 80041be:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80041c2:	b94b      	cbnz	r3, 80041d8 <quorem+0xac>
 80041c4:	f1a2 0308 	sub.w	r3, r2, #8
 80041c8:	e002      	b.n	80041d0 <quorem+0xa4>
 80041ca:	681a      	ldr	r2, [r3, #0]
 80041cc:	3b04      	subs	r3, #4
 80041ce:	b91a      	cbnz	r2, 80041d8 <quorem+0xac>
 80041d0:	459a      	cmp	sl, r3
 80041d2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041d6:	d3f8      	bcc.n	80041ca <quorem+0x9e>
 80041d8:	6107      	str	r7, [r0, #16]
 80041da:	4604      	mov	r4, r0
 80041dc:	f002 f944 	bl	8006468 <__mcmp>
 80041e0:	2800      	cmp	r0, #0
 80041e2:	db2d      	blt.n	8004240 <quorem+0x114>
 80041e4:	f108 0801 	add.w	r8, r8, #1
 80041e8:	4655      	mov	r5, sl
 80041ea:	2300      	movs	r3, #0
 80041ec:	f859 1b04 	ldr.w	r1, [r9], #4
 80041f0:	6828      	ldr	r0, [r5, #0]
 80041f2:	b28a      	uxth	r2, r1
 80041f4:	1a9a      	subs	r2, r3, r2
 80041f6:	0c0b      	lsrs	r3, r1, #16
 80041f8:	fa12 f280 	uxtah	r2, r2, r0
 80041fc:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004200:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004204:	b292      	uxth	r2, r2
 8004206:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800420a:	45cb      	cmp	fp, r9
 800420c:	f845 2b04 	str.w	r2, [r5], #4
 8004210:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004214:	d2ea      	bcs.n	80041ec <quorem+0xc0>
 8004216:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800421a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800421e:	b97a      	cbnz	r2, 8004240 <quorem+0x114>
 8004220:	1f1a      	subs	r2, r3, #4
 8004222:	4592      	cmp	sl, r2
 8004224:	d20b      	bcs.n	800423e <quorem+0x112>
 8004226:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800422a:	b942      	cbnz	r2, 800423e <quorem+0x112>
 800422c:	3b08      	subs	r3, #8
 800422e:	e002      	b.n	8004236 <quorem+0x10a>
 8004230:	681a      	ldr	r2, [r3, #0]
 8004232:	3b04      	subs	r3, #4
 8004234:	b91a      	cbnz	r2, 800423e <quorem+0x112>
 8004236:	459a      	cmp	sl, r3
 8004238:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800423c:	d3f8      	bcc.n	8004230 <quorem+0x104>
 800423e:	6127      	str	r7, [r4, #16]
 8004240:	4640      	mov	r0, r8
 8004242:	b003      	add	sp, #12
 8004244:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004248:	2000      	movs	r0, #0
 800424a:	b003      	add	sp, #12
 800424c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004250 <_dtoa_r>:
 8004250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004254:	ec55 4b10 	vmov	r4, r5, d0
 8004258:	b09b      	sub	sp, #108	; 0x6c
 800425a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800425c:	9102      	str	r1, [sp, #8]
 800425e:	4681      	mov	r9, r0
 8004260:	9207      	str	r2, [sp, #28]
 8004262:	9305      	str	r3, [sp, #20]
 8004264:	e9cd 4500 	strd	r4, r5, [sp]
 8004268:	b156      	cbz	r6, 8004280 <_dtoa_r+0x30>
 800426a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800426c:	6072      	str	r2, [r6, #4]
 800426e:	2301      	movs	r3, #1
 8004270:	4093      	lsls	r3, r2
 8004272:	60b3      	str	r3, [r6, #8]
 8004274:	4631      	mov	r1, r6
 8004276:	f001 ff07 	bl	8006088 <_Bfree>
 800427a:	2300      	movs	r3, #0
 800427c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004280:	f1b5 0800 	subs.w	r8, r5, #0
 8004284:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004286:	bfb4      	ite	lt
 8004288:	2301      	movlt	r3, #1
 800428a:	2300      	movge	r3, #0
 800428c:	6013      	str	r3, [r2, #0]
 800428e:	4b76      	ldr	r3, [pc, #472]	; (8004468 <_dtoa_r+0x218>)
 8004290:	bfbc      	itt	lt
 8004292:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004296:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800429a:	ea33 0308 	bics.w	r3, r3, r8
 800429e:	f000 80a6 	beq.w	80043ee <_dtoa_r+0x19e>
 80042a2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80042a6:	2200      	movs	r2, #0
 80042a8:	2300      	movs	r3, #0
 80042aa:	4630      	mov	r0, r6
 80042ac:	4639      	mov	r1, r7
 80042ae:	f7fc fefd 	bl	80010ac <__aeabi_dcmpeq>
 80042b2:	4605      	mov	r5, r0
 80042b4:	b178      	cbz	r0, 80042d6 <_dtoa_r+0x86>
 80042b6:	9a05      	ldr	r2, [sp, #20]
 80042b8:	2301      	movs	r3, #1
 80042ba:	6013      	str	r3, [r2, #0]
 80042bc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042be:	2b00      	cmp	r3, #0
 80042c0:	f000 80c0 	beq.w	8004444 <_dtoa_r+0x1f4>
 80042c4:	4b69      	ldr	r3, [pc, #420]	; (800446c <_dtoa_r+0x21c>)
 80042c6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042c8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80042cc:	6013      	str	r3, [r2, #0]
 80042ce:	4658      	mov	r0, fp
 80042d0:	b01b      	add	sp, #108	; 0x6c
 80042d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042d6:	aa18      	add	r2, sp, #96	; 0x60
 80042d8:	a919      	add	r1, sp, #100	; 0x64
 80042da:	ec47 6b10 	vmov	d0, r6, r7
 80042de:	4648      	mov	r0, r9
 80042e0:	f002 f954 	bl	800658c <__d2b>
 80042e4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80042e8:	4682      	mov	sl, r0
 80042ea:	f040 80a0 	bne.w	800442e <_dtoa_r+0x1de>
 80042ee:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80042f2:	442c      	add	r4, r5
 80042f4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80042f8:	2b20      	cmp	r3, #32
 80042fa:	f340 842c 	ble.w	8004b56 <_dtoa_r+0x906>
 80042fe:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004302:	fa08 f803 	lsl.w	r8, r8, r3
 8004306:	9b00      	ldr	r3, [sp, #0]
 8004308:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800430c:	fa23 f000 	lsr.w	r0, r3, r0
 8004310:	ea48 0000 	orr.w	r0, r8, r0
 8004314:	f7fc f8b6 	bl	8000484 <__aeabi_ui2d>
 8004318:	2301      	movs	r3, #1
 800431a:	4606      	mov	r6, r0
 800431c:	3c01      	subs	r4, #1
 800431e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004322:	930f      	str	r3, [sp, #60]	; 0x3c
 8004324:	4630      	mov	r0, r6
 8004326:	4639      	mov	r1, r7
 8004328:	2200      	movs	r2, #0
 800432a:	4b51      	ldr	r3, [pc, #324]	; (8004470 <_dtoa_r+0x220>)
 800432c:	f7fb ff6c 	bl	8000208 <__aeabi_dsub>
 8004330:	a347      	add	r3, pc, #284	; (adr r3, 8004450 <_dtoa_r+0x200>)
 8004332:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004336:	f7fc f91f 	bl	8000578 <__aeabi_dmul>
 800433a:	a347      	add	r3, pc, #284	; (adr r3, 8004458 <_dtoa_r+0x208>)
 800433c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004340:	f7fb ff64 	bl	800020c <__adddf3>
 8004344:	4606      	mov	r6, r0
 8004346:	4620      	mov	r0, r4
 8004348:	460f      	mov	r7, r1
 800434a:	f7fc f8ab 	bl	80004a4 <__aeabi_i2d>
 800434e:	a344      	add	r3, pc, #272	; (adr r3, 8004460 <_dtoa_r+0x210>)
 8004350:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004354:	f7fc f910 	bl	8000578 <__aeabi_dmul>
 8004358:	4602      	mov	r2, r0
 800435a:	460b      	mov	r3, r1
 800435c:	4630      	mov	r0, r6
 800435e:	4639      	mov	r1, r7
 8004360:	f7fb ff54 	bl	800020c <__adddf3>
 8004364:	4606      	mov	r6, r0
 8004366:	460f      	mov	r7, r1
 8004368:	f7fc fee8 	bl	800113c <__aeabi_d2iz>
 800436c:	2200      	movs	r2, #0
 800436e:	9006      	str	r0, [sp, #24]
 8004370:	2300      	movs	r3, #0
 8004372:	4630      	mov	r0, r6
 8004374:	4639      	mov	r1, r7
 8004376:	f7fc fea3 	bl	80010c0 <__aeabi_dcmplt>
 800437a:	2800      	cmp	r0, #0
 800437c:	f040 8273 	bne.w	8004866 <_dtoa_r+0x616>
 8004380:	9e06      	ldr	r6, [sp, #24]
 8004382:	2e16      	cmp	r6, #22
 8004384:	f200 825d 	bhi.w	8004842 <_dtoa_r+0x5f2>
 8004388:	4b3a      	ldr	r3, [pc, #232]	; (8004474 <_dtoa_r+0x224>)
 800438a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800438e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004392:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004396:	f7fc feb1 	bl	80010fc <__aeabi_dcmpgt>
 800439a:	2800      	cmp	r0, #0
 800439c:	f000 83d7 	beq.w	8004b4e <_dtoa_r+0x8fe>
 80043a0:	1e73      	subs	r3, r6, #1
 80043a2:	9306      	str	r3, [sp, #24]
 80043a4:	2300      	movs	r3, #0
 80043a6:	930d      	str	r3, [sp, #52]	; 0x34
 80043a8:	1b2c      	subs	r4, r5, r4
 80043aa:	f1b4 0801 	subs.w	r8, r4, #1
 80043ae:	f100 8254 	bmi.w	800485a <_dtoa_r+0x60a>
 80043b2:	2300      	movs	r3, #0
 80043b4:	9308      	str	r3, [sp, #32]
 80043b6:	9b06      	ldr	r3, [sp, #24]
 80043b8:	2b00      	cmp	r3, #0
 80043ba:	f2c0 8245 	blt.w	8004848 <_dtoa_r+0x5f8>
 80043be:	4498      	add	r8, r3
 80043c0:	930c      	str	r3, [sp, #48]	; 0x30
 80043c2:	2300      	movs	r3, #0
 80043c4:	930b      	str	r3, [sp, #44]	; 0x2c
 80043c6:	9b02      	ldr	r3, [sp, #8]
 80043c8:	2b09      	cmp	r3, #9
 80043ca:	d85b      	bhi.n	8004484 <_dtoa_r+0x234>
 80043cc:	2b05      	cmp	r3, #5
 80043ce:	f340 83c0 	ble.w	8004b52 <_dtoa_r+0x902>
 80043d2:	3b04      	subs	r3, #4
 80043d4:	9302      	str	r3, [sp, #8]
 80043d6:	2500      	movs	r5, #0
 80043d8:	9b02      	ldr	r3, [sp, #8]
 80043da:	3b02      	subs	r3, #2
 80043dc:	2b03      	cmp	r3, #3
 80043de:	f200 8498 	bhi.w	8004d12 <_dtoa_r+0xac2>
 80043e2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80043e6:	03df      	.short	0x03df
 80043e8:	03e803bf 	.word	0x03e803bf
 80043ec:	04f5      	.short	0x04f5
 80043ee:	9a05      	ldr	r2, [sp, #20]
 80043f0:	f242 730f 	movw	r3, #9999	; 0x270f
 80043f4:	6013      	str	r3, [r2, #0]
 80043f6:	9b00      	ldr	r3, [sp, #0]
 80043f8:	b983      	cbnz	r3, 800441c <_dtoa_r+0x1cc>
 80043fa:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80043fe:	b96b      	cbnz	r3, 800441c <_dtoa_r+0x1cc>
 8004400:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004402:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004478 <_dtoa_r+0x228>
 8004406:	2b00      	cmp	r3, #0
 8004408:	f43f af61 	beq.w	80042ce <_dtoa_r+0x7e>
 800440c:	f10b 0308 	add.w	r3, fp, #8
 8004410:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004412:	4658      	mov	r0, fp
 8004414:	6013      	str	r3, [r2, #0]
 8004416:	b01b      	add	sp, #108	; 0x6c
 8004418:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800441c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800441e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800447c <_dtoa_r+0x22c>
 8004422:	2b00      	cmp	r3, #0
 8004424:	f43f af53 	beq.w	80042ce <_dtoa_r+0x7e>
 8004428:	f10b 0303 	add.w	r3, fp, #3
 800442c:	e7f0      	b.n	8004410 <_dtoa_r+0x1c0>
 800442e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004432:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004436:	950f      	str	r5, [sp, #60]	; 0x3c
 8004438:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800443c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004440:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004442:	e76f      	b.n	8004324 <_dtoa_r+0xd4>
 8004444:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004480 <_dtoa_r+0x230>
 8004448:	4658      	mov	r0, fp
 800444a:	b01b      	add	sp, #108	; 0x6c
 800444c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004450:	636f4361 	.word	0x636f4361
 8004454:	3fd287a7 	.word	0x3fd287a7
 8004458:	8b60c8b3 	.word	0x8b60c8b3
 800445c:	3fc68a28 	.word	0x3fc68a28
 8004460:	509f79fb 	.word	0x509f79fb
 8004464:	3fd34413 	.word	0x3fd34413
 8004468:	7ff00000 	.word	0x7ff00000
 800446c:	0800727d 	.word	0x0800727d
 8004470:	3ff80000 	.word	0x3ff80000
 8004474:	080072d8 	.word	0x080072d8
 8004478:	080072a0 	.word	0x080072a0
 800447c:	080072ac 	.word	0x080072ac
 8004480:	0800727c 	.word	0x0800727c
 8004484:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004488:	2501      	movs	r5, #1
 800448a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800448e:	2300      	movs	r3, #0
 8004490:	9302      	str	r3, [sp, #8]
 8004492:	9307      	str	r3, [sp, #28]
 8004494:	2100      	movs	r1, #0
 8004496:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800449a:	940e      	str	r4, [sp, #56]	; 0x38
 800449c:	4648      	mov	r0, r9
 800449e:	f001 fdcd 	bl	800603c <_Balloc>
 80044a2:	2c0e      	cmp	r4, #14
 80044a4:	4683      	mov	fp, r0
 80044a6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80044aa:	f200 80fb 	bhi.w	80046a4 <_dtoa_r+0x454>
 80044ae:	2d00      	cmp	r5, #0
 80044b0:	f000 80f8 	beq.w	80046a4 <_dtoa_r+0x454>
 80044b4:	ed9d 7b00 	vldr	d7, [sp]
 80044b8:	9906      	ldr	r1, [sp, #24]
 80044ba:	2900      	cmp	r1, #0
 80044bc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80044c0:	f340 83e5 	ble.w	8004c8e <_dtoa_r+0xa3e>
 80044c4:	4b9d      	ldr	r3, [pc, #628]	; (800473c <_dtoa_r+0x4ec>)
 80044c6:	f001 020f 	and.w	r2, r1, #15
 80044ca:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044ce:	ed93 7b00 	vldr	d7, [r3]
 80044d2:	110c      	asrs	r4, r1, #4
 80044d4:	06e2      	lsls	r2, r4, #27
 80044d6:	ed8d 7b00 	vstr	d7, [sp]
 80044da:	f140 849e 	bpl.w	8004e1a <_dtoa_r+0xbca>
 80044de:	4b98      	ldr	r3, [pc, #608]	; (8004740 <_dtoa_r+0x4f0>)
 80044e0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80044e4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80044e8:	f7fc f970 	bl	80007cc <__aeabi_ddiv>
 80044ec:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80044f0:	f004 040f 	and.w	r4, r4, #15
 80044f4:	2603      	movs	r6, #3
 80044f6:	b17c      	cbz	r4, 8004518 <_dtoa_r+0x2c8>
 80044f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044fc:	4d90      	ldr	r5, [pc, #576]	; (8004740 <_dtoa_r+0x4f0>)
 80044fe:	07e3      	lsls	r3, r4, #31
 8004500:	d504      	bpl.n	800450c <_dtoa_r+0x2bc>
 8004502:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004506:	f7fc f837 	bl	8000578 <__aeabi_dmul>
 800450a:	3601      	adds	r6, #1
 800450c:	1064      	asrs	r4, r4, #1
 800450e:	f105 0508 	add.w	r5, r5, #8
 8004512:	d1f4      	bne.n	80044fe <_dtoa_r+0x2ae>
 8004514:	e9cd 0100 	strd	r0, r1, [sp]
 8004518:	e9dd 2300 	ldrd	r2, r3, [sp]
 800451c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004520:	f7fc f954 	bl	80007cc <__aeabi_ddiv>
 8004524:	e9cd 0100 	strd	r0, r1, [sp]
 8004528:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800452a:	b143      	cbz	r3, 800453e <_dtoa_r+0x2ee>
 800452c:	2200      	movs	r2, #0
 800452e:	4b85      	ldr	r3, [pc, #532]	; (8004744 <_dtoa_r+0x4f4>)
 8004530:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004534:	f7fc fdc4 	bl	80010c0 <__aeabi_dcmplt>
 8004538:	2800      	cmp	r0, #0
 800453a:	f040 84ff 	bne.w	8004f3c <_dtoa_r+0xcec>
 800453e:	4630      	mov	r0, r6
 8004540:	f7fb ffb0 	bl	80004a4 <__aeabi_i2d>
 8004544:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004548:	f7fc f816 	bl	8000578 <__aeabi_dmul>
 800454c:	4b7e      	ldr	r3, [pc, #504]	; (8004748 <_dtoa_r+0x4f8>)
 800454e:	2200      	movs	r2, #0
 8004550:	f7fb fe5c 	bl	800020c <__adddf3>
 8004554:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004556:	4606      	mov	r6, r0
 8004558:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800455c:	2b00      	cmp	r3, #0
 800455e:	f000 841c 	beq.w	8004d9a <_dtoa_r+0xb4a>
 8004562:	9b06      	ldr	r3, [sp, #24]
 8004564:	9316      	str	r3, [sp, #88]	; 0x58
 8004566:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004568:	9312      	str	r3, [sp, #72]	; 0x48
 800456a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800456e:	f7fc fde5 	bl	800113c <__aeabi_d2iz>
 8004572:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004574:	4b71      	ldr	r3, [pc, #452]	; (800473c <_dtoa_r+0x4ec>)
 8004576:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800457a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800457e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004582:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004586:	f7fb ff8d 	bl	80004a4 <__aeabi_i2d>
 800458a:	460b      	mov	r3, r1
 800458c:	4602      	mov	r2, r0
 800458e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004592:	e9cd 6700 	strd	r6, r7, [sp]
 8004596:	f7fb fe37 	bl	8000208 <__aeabi_dsub>
 800459a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800459c:	b2ed      	uxtb	r5, r5
 800459e:	4606      	mov	r6, r0
 80045a0:	460f      	mov	r7, r1
 80045a2:	f10b 0401 	add.w	r4, fp, #1
 80045a6:	2b00      	cmp	r3, #0
 80045a8:	f000 8458 	beq.w	8004e5c <_dtoa_r+0xc0c>
 80045ac:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80045b0:	2000      	movs	r0, #0
 80045b2:	4966      	ldr	r1, [pc, #408]	; (800474c <_dtoa_r+0x4fc>)
 80045b4:	f7fc f90a 	bl	80007cc <__aeabi_ddiv>
 80045b8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045bc:	f7fb fe24 	bl	8000208 <__aeabi_dsub>
 80045c0:	f88b 5000 	strb.w	r5, [fp]
 80045c4:	4632      	mov	r2, r6
 80045c6:	463b      	mov	r3, r7
 80045c8:	e9cd 0100 	strd	r0, r1, [sp]
 80045cc:	f7fc fd96 	bl	80010fc <__aeabi_dcmpgt>
 80045d0:	2800      	cmp	r0, #0
 80045d2:	f040 8502 	bne.w	8004fda <_dtoa_r+0xd8a>
 80045d6:	4632      	mov	r2, r6
 80045d8:	463b      	mov	r3, r7
 80045da:	2000      	movs	r0, #0
 80045dc:	4959      	ldr	r1, [pc, #356]	; (8004744 <_dtoa_r+0x4f4>)
 80045de:	f7fb fe13 	bl	8000208 <__aeabi_dsub>
 80045e2:	4602      	mov	r2, r0
 80045e4:	460b      	mov	r3, r1
 80045e6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045ea:	f7fc fd87 	bl	80010fc <__aeabi_dcmpgt>
 80045ee:	2800      	cmp	r0, #0
 80045f0:	f040 84fb 	bne.w	8004fea <_dtoa_r+0xd9a>
 80045f4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80045f6:	2a01      	cmp	r2, #1
 80045f8:	d050      	beq.n	800469c <_dtoa_r+0x44c>
 80045fa:	445a      	add	r2, fp
 80045fc:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004600:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004604:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004608:	4692      	mov	sl, r2
 800460a:	46cb      	mov	fp, r9
 800460c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004610:	e00c      	b.n	800462c <_dtoa_r+0x3dc>
 8004612:	2000      	movs	r0, #0
 8004614:	494b      	ldr	r1, [pc, #300]	; (8004744 <_dtoa_r+0x4f4>)
 8004616:	f7fb fdf7 	bl	8000208 <__aeabi_dsub>
 800461a:	4642      	mov	r2, r8
 800461c:	464b      	mov	r3, r9
 800461e:	f7fc fd4f 	bl	80010c0 <__aeabi_dcmplt>
 8004622:	2800      	cmp	r0, #0
 8004624:	f040 84dc 	bne.w	8004fe0 <_dtoa_r+0xd90>
 8004628:	4554      	cmp	r4, sl
 800462a:	d030      	beq.n	800468e <_dtoa_r+0x43e>
 800462c:	4640      	mov	r0, r8
 800462e:	4649      	mov	r1, r9
 8004630:	2200      	movs	r2, #0
 8004632:	4b47      	ldr	r3, [pc, #284]	; (8004750 <_dtoa_r+0x500>)
 8004634:	f7fb ffa0 	bl	8000578 <__aeabi_dmul>
 8004638:	2200      	movs	r2, #0
 800463a:	4b45      	ldr	r3, [pc, #276]	; (8004750 <_dtoa_r+0x500>)
 800463c:	4680      	mov	r8, r0
 800463e:	4689      	mov	r9, r1
 8004640:	4630      	mov	r0, r6
 8004642:	4639      	mov	r1, r7
 8004644:	f7fb ff98 	bl	8000578 <__aeabi_dmul>
 8004648:	460f      	mov	r7, r1
 800464a:	4606      	mov	r6, r0
 800464c:	f7fc fd76 	bl	800113c <__aeabi_d2iz>
 8004650:	4605      	mov	r5, r0
 8004652:	f7fb ff27 	bl	80004a4 <__aeabi_i2d>
 8004656:	4602      	mov	r2, r0
 8004658:	460b      	mov	r3, r1
 800465a:	4630      	mov	r0, r6
 800465c:	4639      	mov	r1, r7
 800465e:	f7fb fdd3 	bl	8000208 <__aeabi_dsub>
 8004662:	3530      	adds	r5, #48	; 0x30
 8004664:	b2ed      	uxtb	r5, r5
 8004666:	4642      	mov	r2, r8
 8004668:	464b      	mov	r3, r9
 800466a:	f804 5b01 	strb.w	r5, [r4], #1
 800466e:	4606      	mov	r6, r0
 8004670:	460f      	mov	r7, r1
 8004672:	f7fc fd25 	bl	80010c0 <__aeabi_dcmplt>
 8004676:	4632      	mov	r2, r6
 8004678:	463b      	mov	r3, r7
 800467a:	2800      	cmp	r0, #0
 800467c:	d0c9      	beq.n	8004612 <_dtoa_r+0x3c2>
 800467e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004680:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004684:	9306      	str	r3, [sp, #24]
 8004686:	46d9      	mov	r9, fp
 8004688:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800468c:	e236      	b.n	8004afc <_dtoa_r+0x8ac>
 800468e:	46d9      	mov	r9, fp
 8004690:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004694:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004698:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800469c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80046a0:	e9cd 3400 	strd	r3, r4, [sp]
 80046a4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80046a6:	2b00      	cmp	r3, #0
 80046a8:	f2c0 80ae 	blt.w	8004808 <_dtoa_r+0x5b8>
 80046ac:	9a06      	ldr	r2, [sp, #24]
 80046ae:	2a0e      	cmp	r2, #14
 80046b0:	f300 80aa 	bgt.w	8004808 <_dtoa_r+0x5b8>
 80046b4:	4b21      	ldr	r3, [pc, #132]	; (800473c <_dtoa_r+0x4ec>)
 80046b6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046ba:	ed93 7b00 	vldr	d7, [r3]
 80046be:	9b07      	ldr	r3, [sp, #28]
 80046c0:	2b00      	cmp	r3, #0
 80046c2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80046c6:	f2c0 82be 	blt.w	8004c46 <_dtoa_r+0x9f6>
 80046ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046ce:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046d2:	4630      	mov	r0, r6
 80046d4:	4639      	mov	r1, r7
 80046d6:	f7fc f879 	bl	80007cc <__aeabi_ddiv>
 80046da:	f7fc fd2f 	bl	800113c <__aeabi_d2iz>
 80046de:	4605      	mov	r5, r0
 80046e0:	f7fb fee0 	bl	80004a4 <__aeabi_i2d>
 80046e4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046e8:	f7fb ff46 	bl	8000578 <__aeabi_dmul>
 80046ec:	460b      	mov	r3, r1
 80046ee:	4602      	mov	r2, r0
 80046f0:	4639      	mov	r1, r7
 80046f2:	4630      	mov	r0, r6
 80046f4:	f7fb fd88 	bl	8000208 <__aeabi_dsub>
 80046f8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80046fc:	f88b 3000 	strb.w	r3, [fp]
 8004700:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004702:	2b01      	cmp	r3, #1
 8004704:	4606      	mov	r6, r0
 8004706:	460f      	mov	r7, r1
 8004708:	f10b 0401 	add.w	r4, fp, #1
 800470c:	d053      	beq.n	80047b6 <_dtoa_r+0x566>
 800470e:	2200      	movs	r2, #0
 8004710:	4b0f      	ldr	r3, [pc, #60]	; (8004750 <_dtoa_r+0x500>)
 8004712:	f7fb ff31 	bl	8000578 <__aeabi_dmul>
 8004716:	2200      	movs	r2, #0
 8004718:	2300      	movs	r3, #0
 800471a:	4606      	mov	r6, r0
 800471c:	460f      	mov	r7, r1
 800471e:	f7fc fcc5 	bl	80010ac <__aeabi_dcmpeq>
 8004722:	2800      	cmp	r0, #0
 8004724:	f040 81ea 	bne.w	8004afc <_dtoa_r+0x8ac>
 8004728:	f8cd a000 	str.w	sl, [sp]
 800472c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004730:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004734:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004738:	e017      	b.n	800476a <_dtoa_r+0x51a>
 800473a:	bf00      	nop
 800473c:	080072d8 	.word	0x080072d8
 8004740:	080072b0 	.word	0x080072b0
 8004744:	3ff00000 	.word	0x3ff00000
 8004748:	401c0000 	.word	0x401c0000
 800474c:	3fe00000 	.word	0x3fe00000
 8004750:	40240000 	.word	0x40240000
 8004754:	f7fb ff10 	bl	8000578 <__aeabi_dmul>
 8004758:	2200      	movs	r2, #0
 800475a:	2300      	movs	r3, #0
 800475c:	4606      	mov	r6, r0
 800475e:	460f      	mov	r7, r1
 8004760:	f7fc fca4 	bl	80010ac <__aeabi_dcmpeq>
 8004764:	2800      	cmp	r0, #0
 8004766:	f040 833d 	bne.w	8004de4 <_dtoa_r+0xb94>
 800476a:	464a      	mov	r2, r9
 800476c:	4653      	mov	r3, sl
 800476e:	4630      	mov	r0, r6
 8004770:	4639      	mov	r1, r7
 8004772:	f7fc f82b 	bl	80007cc <__aeabi_ddiv>
 8004776:	f7fc fce1 	bl	800113c <__aeabi_d2iz>
 800477a:	4605      	mov	r5, r0
 800477c:	f7fb fe92 	bl	80004a4 <__aeabi_i2d>
 8004780:	464a      	mov	r2, r9
 8004782:	4653      	mov	r3, sl
 8004784:	f7fb fef8 	bl	8000578 <__aeabi_dmul>
 8004788:	4602      	mov	r2, r0
 800478a:	460b      	mov	r3, r1
 800478c:	4630      	mov	r0, r6
 800478e:	4639      	mov	r1, r7
 8004790:	f7fb fd3a 	bl	8000208 <__aeabi_dsub>
 8004794:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004798:	f804 cb01 	strb.w	ip, [r4], #1
 800479c:	eba4 0c0b 	sub.w	ip, r4, fp
 80047a0:	45e0      	cmp	r8, ip
 80047a2:	4606      	mov	r6, r0
 80047a4:	460f      	mov	r7, r1
 80047a6:	f04f 0200 	mov.w	r2, #0
 80047aa:	4bc1      	ldr	r3, [pc, #772]	; (8004ab0 <_dtoa_r+0x860>)
 80047ac:	d1d2      	bne.n	8004754 <_dtoa_r+0x504>
 80047ae:	f8dd a000 	ldr.w	sl, [sp]
 80047b2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80047b6:	4632      	mov	r2, r6
 80047b8:	463b      	mov	r3, r7
 80047ba:	4630      	mov	r0, r6
 80047bc:	4639      	mov	r1, r7
 80047be:	f7fb fd25 	bl	800020c <__adddf3>
 80047c2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047c6:	4606      	mov	r6, r0
 80047c8:	460f      	mov	r7, r1
 80047ca:	f7fc fc97 	bl	80010fc <__aeabi_dcmpgt>
 80047ce:	b958      	cbnz	r0, 80047e8 <_dtoa_r+0x598>
 80047d0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047d4:	4630      	mov	r0, r6
 80047d6:	4639      	mov	r1, r7
 80047d8:	f7fc fc68 	bl	80010ac <__aeabi_dcmpeq>
 80047dc:	2800      	cmp	r0, #0
 80047de:	f000 818d 	beq.w	8004afc <_dtoa_r+0x8ac>
 80047e2:	07e9      	lsls	r1, r5, #31
 80047e4:	f140 818a 	bpl.w	8004afc <_dtoa_r+0x8ac>
 80047e8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80047ec:	e005      	b.n	80047fa <_dtoa_r+0x5aa>
 80047ee:	459b      	cmp	fp, r3
 80047f0:	f000 8373 	beq.w	8004eda <_dtoa_r+0xc8a>
 80047f4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80047f8:	461c      	mov	r4, r3
 80047fa:	2d39      	cmp	r5, #57	; 0x39
 80047fc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004800:	d0f5      	beq.n	80047ee <_dtoa_r+0x59e>
 8004802:	3501      	adds	r5, #1
 8004804:	701d      	strb	r5, [r3, #0]
 8004806:	e179      	b.n	8004afc <_dtoa_r+0x8ac>
 8004808:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800480a:	2a00      	cmp	r2, #0
 800480c:	d03b      	beq.n	8004886 <_dtoa_r+0x636>
 800480e:	9a02      	ldr	r2, [sp, #8]
 8004810:	2a01      	cmp	r2, #1
 8004812:	f340 820b 	ble.w	8004c2c <_dtoa_r+0x9dc>
 8004816:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004818:	1e5f      	subs	r7, r3, #1
 800481a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800481c:	42bb      	cmp	r3, r7
 800481e:	f2c0 82e6 	blt.w	8004dee <_dtoa_r+0xb9e>
 8004822:	1bdf      	subs	r7, r3, r7
 8004824:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004826:	2b00      	cmp	r3, #0
 8004828:	f2c0 830b 	blt.w	8004e42 <_dtoa_r+0xbf2>
 800482c:	9a08      	ldr	r2, [sp, #32]
 800482e:	4614      	mov	r4, r2
 8004830:	441a      	add	r2, r3
 8004832:	4498      	add	r8, r3
 8004834:	9208      	str	r2, [sp, #32]
 8004836:	2101      	movs	r1, #1
 8004838:	4648      	mov	r0, r9
 800483a:	f001 fcbf 	bl	80061bc <__i2b>
 800483e:	4605      	mov	r5, r0
 8004840:	e024      	b.n	800488c <_dtoa_r+0x63c>
 8004842:	2301      	movs	r3, #1
 8004844:	930d      	str	r3, [sp, #52]	; 0x34
 8004846:	e5af      	b.n	80043a8 <_dtoa_r+0x158>
 8004848:	9a08      	ldr	r2, [sp, #32]
 800484a:	9b06      	ldr	r3, [sp, #24]
 800484c:	1ad2      	subs	r2, r2, r3
 800484e:	425b      	negs	r3, r3
 8004850:	930b      	str	r3, [sp, #44]	; 0x2c
 8004852:	2300      	movs	r3, #0
 8004854:	9208      	str	r2, [sp, #32]
 8004856:	930c      	str	r3, [sp, #48]	; 0x30
 8004858:	e5b5      	b.n	80043c6 <_dtoa_r+0x176>
 800485a:	f1c4 0301 	rsb	r3, r4, #1
 800485e:	9308      	str	r3, [sp, #32]
 8004860:	f04f 0800 	mov.w	r8, #0
 8004864:	e5a7      	b.n	80043b6 <_dtoa_r+0x166>
 8004866:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800486a:	4640      	mov	r0, r8
 800486c:	f7fb fe1a 	bl	80004a4 <__aeabi_i2d>
 8004870:	4632      	mov	r2, r6
 8004872:	463b      	mov	r3, r7
 8004874:	f7fc fc1a 	bl	80010ac <__aeabi_dcmpeq>
 8004878:	2800      	cmp	r0, #0
 800487a:	f47f ad81 	bne.w	8004380 <_dtoa_r+0x130>
 800487e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004882:	9306      	str	r3, [sp, #24]
 8004884:	e57c      	b.n	8004380 <_dtoa_r+0x130>
 8004886:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004888:	9c08      	ldr	r4, [sp, #32]
 800488a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800488c:	2c00      	cmp	r4, #0
 800488e:	dd0c      	ble.n	80048aa <_dtoa_r+0x65a>
 8004890:	f1b8 0f00 	cmp.w	r8, #0
 8004894:	dd09      	ble.n	80048aa <_dtoa_r+0x65a>
 8004896:	4544      	cmp	r4, r8
 8004898:	9a08      	ldr	r2, [sp, #32]
 800489a:	4623      	mov	r3, r4
 800489c:	bfa8      	it	ge
 800489e:	4643      	movge	r3, r8
 80048a0:	1ad2      	subs	r2, r2, r3
 80048a2:	9208      	str	r2, [sp, #32]
 80048a4:	1ae4      	subs	r4, r4, r3
 80048a6:	eba8 0803 	sub.w	r8, r8, r3
 80048aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048ac:	b16b      	cbz	r3, 80048ca <_dtoa_r+0x67a>
 80048ae:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048b0:	2a00      	cmp	r2, #0
 80048b2:	f000 8290 	beq.w	8004dd6 <_dtoa_r+0xb86>
 80048b6:	1bde      	subs	r6, r3, r7
 80048b8:	2f00      	cmp	r7, #0
 80048ba:	f040 819b 	bne.w	8004bf4 <_dtoa_r+0x9a4>
 80048be:	4651      	mov	r1, sl
 80048c0:	4632      	mov	r2, r6
 80048c2:	4648      	mov	r0, r9
 80048c4:	f001 fd2a 	bl	800631c <__pow5mult>
 80048c8:	4682      	mov	sl, r0
 80048ca:	2101      	movs	r1, #1
 80048cc:	4648      	mov	r0, r9
 80048ce:	f001 fc75 	bl	80061bc <__i2b>
 80048d2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80048d4:	4606      	mov	r6, r0
 80048d6:	2a00      	cmp	r2, #0
 80048d8:	f040 8125 	bne.w	8004b26 <_dtoa_r+0x8d6>
 80048dc:	9b02      	ldr	r3, [sp, #8]
 80048de:	2b01      	cmp	r3, #1
 80048e0:	f340 816c 	ble.w	8004bbc <_dtoa_r+0x96c>
 80048e4:	2001      	movs	r0, #1
 80048e6:	4440      	add	r0, r8
 80048e8:	f010 001f 	ands.w	r0, r0, #31
 80048ec:	f000 8119 	beq.w	8004b22 <_dtoa_r+0x8d2>
 80048f0:	f1c0 0320 	rsb	r3, r0, #32
 80048f4:	2b04      	cmp	r3, #4
 80048f6:	f340 83ac 	ble.w	8005052 <_dtoa_r+0xe02>
 80048fa:	f1c0 001c 	rsb	r0, r0, #28
 80048fe:	9b08      	ldr	r3, [sp, #32]
 8004900:	4403      	add	r3, r0
 8004902:	9308      	str	r3, [sp, #32]
 8004904:	4404      	add	r4, r0
 8004906:	4480      	add	r8, r0
 8004908:	9b08      	ldr	r3, [sp, #32]
 800490a:	2b00      	cmp	r3, #0
 800490c:	dd05      	ble.n	800491a <_dtoa_r+0x6ca>
 800490e:	4651      	mov	r1, sl
 8004910:	461a      	mov	r2, r3
 8004912:	4648      	mov	r0, r9
 8004914:	f001 fd52 	bl	80063bc <__lshift>
 8004918:	4682      	mov	sl, r0
 800491a:	f1b8 0f00 	cmp.w	r8, #0
 800491e:	dd05      	ble.n	800492c <_dtoa_r+0x6dc>
 8004920:	4631      	mov	r1, r6
 8004922:	4642      	mov	r2, r8
 8004924:	4648      	mov	r0, r9
 8004926:	f001 fd49 	bl	80063bc <__lshift>
 800492a:	4606      	mov	r6, r0
 800492c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800492e:	2b00      	cmp	r3, #0
 8004930:	d177      	bne.n	8004a22 <_dtoa_r+0x7d2>
 8004932:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004934:	2b00      	cmp	r3, #0
 8004936:	f340 8209 	ble.w	8004d4c <_dtoa_r+0xafc>
 800493a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800493c:	2b00      	cmp	r3, #0
 800493e:	f000 8089 	beq.w	8004a54 <_dtoa_r+0x804>
 8004942:	2c00      	cmp	r4, #0
 8004944:	f300 816b 	bgt.w	8004c1e <_dtoa_r+0x9ce>
 8004948:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800494a:	2b00      	cmp	r3, #0
 800494c:	f040 81cd 	bne.w	8004cea <_dtoa_r+0xa9a>
 8004950:	46a8      	mov	r8, r5
 8004952:	9a00      	ldr	r2, [sp, #0]
 8004954:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004958:	f002 0201 	and.w	r2, r2, #1
 800495c:	920a      	str	r2, [sp, #40]	; 0x28
 800495e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004960:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004964:	441a      	add	r2, r3
 8004966:	465f      	mov	r7, fp
 8004968:	9209      	str	r2, [sp, #36]	; 0x24
 800496a:	46b3      	mov	fp, r6
 800496c:	4659      	mov	r1, fp
 800496e:	4650      	mov	r0, sl
 8004970:	f7ff fbdc 	bl	800412c <quorem>
 8004974:	4629      	mov	r1, r5
 8004976:	4604      	mov	r4, r0
 8004978:	4650      	mov	r0, sl
 800497a:	f001 fd75 	bl	8006468 <__mcmp>
 800497e:	4659      	mov	r1, fp
 8004980:	4606      	mov	r6, r0
 8004982:	4642      	mov	r2, r8
 8004984:	4648      	mov	r0, r9
 8004986:	f001 fd8b 	bl	80064a0 <__mdiff>
 800498a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800498e:	9300      	str	r3, [sp, #0]
 8004990:	68c3      	ldr	r3, [r0, #12]
 8004992:	4601      	mov	r1, r0
 8004994:	2b00      	cmp	r3, #0
 8004996:	f040 81d4 	bne.w	8004d42 <_dtoa_r+0xaf2>
 800499a:	9008      	str	r0, [sp, #32]
 800499c:	4650      	mov	r0, sl
 800499e:	f001 fd63 	bl	8006468 <__mcmp>
 80049a2:	9a08      	ldr	r2, [sp, #32]
 80049a4:	9007      	str	r0, [sp, #28]
 80049a6:	4611      	mov	r1, r2
 80049a8:	4648      	mov	r0, r9
 80049aa:	f001 fb6d 	bl	8006088 <_Bfree>
 80049ae:	9b07      	ldr	r3, [sp, #28]
 80049b0:	b933      	cbnz	r3, 80049c0 <_dtoa_r+0x770>
 80049b2:	9a02      	ldr	r2, [sp, #8]
 80049b4:	b922      	cbnz	r2, 80049c0 <_dtoa_r+0x770>
 80049b6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049b8:	2b00      	cmp	r3, #0
 80049ba:	f000 8319 	beq.w	8004ff0 <_dtoa_r+0xda0>
 80049be:	9b02      	ldr	r3, [sp, #8]
 80049c0:	2e00      	cmp	r6, #0
 80049c2:	f2c0 821c 	blt.w	8004dfe <_dtoa_r+0xbae>
 80049c6:	d105      	bne.n	80049d4 <_dtoa_r+0x784>
 80049c8:	9a02      	ldr	r2, [sp, #8]
 80049ca:	b91a      	cbnz	r2, 80049d4 <_dtoa_r+0x784>
 80049cc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049ce:	2a00      	cmp	r2, #0
 80049d0:	f000 8215 	beq.w	8004dfe <_dtoa_r+0xbae>
 80049d4:	2b00      	cmp	r3, #0
 80049d6:	f107 0401 	add.w	r4, r7, #1
 80049da:	f300 8225 	bgt.w	8004e28 <_dtoa_r+0xbd8>
 80049de:	9b00      	ldr	r3, [sp, #0]
 80049e0:	703b      	strb	r3, [r7, #0]
 80049e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049e4:	42bb      	cmp	r3, r7
 80049e6:	f000 8230 	beq.w	8004e4a <_dtoa_r+0xbfa>
 80049ea:	4651      	mov	r1, sl
 80049ec:	2300      	movs	r3, #0
 80049ee:	220a      	movs	r2, #10
 80049f0:	4648      	mov	r0, r9
 80049f2:	f001 fb53 	bl	800609c <__multadd>
 80049f6:	4545      	cmp	r5, r8
 80049f8:	4682      	mov	sl, r0
 80049fa:	4629      	mov	r1, r5
 80049fc:	f04f 0300 	mov.w	r3, #0
 8004a00:	f04f 020a 	mov.w	r2, #10
 8004a04:	4648      	mov	r0, r9
 8004a06:	f000 8196 	beq.w	8004d36 <_dtoa_r+0xae6>
 8004a0a:	f001 fb47 	bl	800609c <__multadd>
 8004a0e:	4641      	mov	r1, r8
 8004a10:	4605      	mov	r5, r0
 8004a12:	2300      	movs	r3, #0
 8004a14:	220a      	movs	r2, #10
 8004a16:	4648      	mov	r0, r9
 8004a18:	f001 fb40 	bl	800609c <__multadd>
 8004a1c:	4627      	mov	r7, r4
 8004a1e:	4680      	mov	r8, r0
 8004a20:	e7a4      	b.n	800496c <_dtoa_r+0x71c>
 8004a22:	4631      	mov	r1, r6
 8004a24:	4650      	mov	r0, sl
 8004a26:	f001 fd1f 	bl	8006468 <__mcmp>
 8004a2a:	2800      	cmp	r0, #0
 8004a2c:	da81      	bge.n	8004932 <_dtoa_r+0x6e2>
 8004a2e:	9f06      	ldr	r7, [sp, #24]
 8004a30:	4651      	mov	r1, sl
 8004a32:	2300      	movs	r3, #0
 8004a34:	220a      	movs	r2, #10
 8004a36:	4648      	mov	r0, r9
 8004a38:	3f01      	subs	r7, #1
 8004a3a:	9706      	str	r7, [sp, #24]
 8004a3c:	f001 fb2e 	bl	800609c <__multadd>
 8004a40:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a42:	4682      	mov	sl, r0
 8004a44:	2b00      	cmp	r3, #0
 8004a46:	f040 82eb 	bne.w	8005020 <_dtoa_r+0xdd0>
 8004a4a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a4c:	2b00      	cmp	r3, #0
 8004a4e:	f340 82f3 	ble.w	8005038 <_dtoa_r+0xde8>
 8004a52:	9309      	str	r3, [sp, #36]	; 0x24
 8004a54:	465c      	mov	r4, fp
 8004a56:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a5a:	e002      	b.n	8004a62 <_dtoa_r+0x812>
 8004a5c:	f001 fb1e 	bl	800609c <__multadd>
 8004a60:	4682      	mov	sl, r0
 8004a62:	4631      	mov	r1, r6
 8004a64:	4650      	mov	r0, sl
 8004a66:	f7ff fb61 	bl	800412c <quorem>
 8004a6a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a6e:	f804 7b01 	strb.w	r7, [r4], #1
 8004a72:	eba4 030b 	sub.w	r3, r4, fp
 8004a76:	4598      	cmp	r8, r3
 8004a78:	f04f 020a 	mov.w	r2, #10
 8004a7c:	f04f 0300 	mov.w	r3, #0
 8004a80:	4651      	mov	r1, sl
 8004a82:	4648      	mov	r0, r9
 8004a84:	dcea      	bgt.n	8004a5c <_dtoa_r+0x80c>
 8004a86:	2300      	movs	r3, #0
 8004a88:	9700      	str	r7, [sp, #0]
 8004a8a:	9302      	str	r3, [sp, #8]
 8004a8c:	4651      	mov	r1, sl
 8004a8e:	2201      	movs	r2, #1
 8004a90:	4648      	mov	r0, r9
 8004a92:	f001 fc93 	bl	80063bc <__lshift>
 8004a96:	4631      	mov	r1, r6
 8004a98:	4682      	mov	sl, r0
 8004a9a:	f001 fce5 	bl	8006468 <__mcmp>
 8004a9e:	2800      	cmp	r0, #0
 8004aa0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004aa4:	dc14      	bgt.n	8004ad0 <_dtoa_r+0x880>
 8004aa6:	d108      	bne.n	8004aba <_dtoa_r+0x86a>
 8004aa8:	9b00      	ldr	r3, [sp, #0]
 8004aaa:	07db      	lsls	r3, r3, #31
 8004aac:	d410      	bmi.n	8004ad0 <_dtoa_r+0x880>
 8004aae:	e004      	b.n	8004aba <_dtoa_r+0x86a>
 8004ab0:	40240000 	.word	0x40240000
 8004ab4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ab8:	461c      	mov	r4, r3
 8004aba:	2a30      	cmp	r2, #48	; 0x30
 8004abc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ac0:	d0f8      	beq.n	8004ab4 <_dtoa_r+0x864>
 8004ac2:	e00b      	b.n	8004adc <_dtoa_r+0x88c>
 8004ac4:	459b      	cmp	fp, r3
 8004ac6:	f000 814e 	beq.w	8004d66 <_dtoa_r+0xb16>
 8004aca:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ace:	461c      	mov	r4, r3
 8004ad0:	2a39      	cmp	r2, #57	; 0x39
 8004ad2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ad6:	d0f5      	beq.n	8004ac4 <_dtoa_r+0x874>
 8004ad8:	3201      	adds	r2, #1
 8004ada:	701a      	strb	r2, [r3, #0]
 8004adc:	4631      	mov	r1, r6
 8004ade:	4648      	mov	r0, r9
 8004ae0:	f001 fad2 	bl	8006088 <_Bfree>
 8004ae4:	b155      	cbz	r5, 8004afc <_dtoa_r+0x8ac>
 8004ae6:	9902      	ldr	r1, [sp, #8]
 8004ae8:	b121      	cbz	r1, 8004af4 <_dtoa_r+0x8a4>
 8004aea:	42a9      	cmp	r1, r5
 8004aec:	d002      	beq.n	8004af4 <_dtoa_r+0x8a4>
 8004aee:	4648      	mov	r0, r9
 8004af0:	f001 faca 	bl	8006088 <_Bfree>
 8004af4:	4629      	mov	r1, r5
 8004af6:	4648      	mov	r0, r9
 8004af8:	f001 fac6 	bl	8006088 <_Bfree>
 8004afc:	4651      	mov	r1, sl
 8004afe:	4648      	mov	r0, r9
 8004b00:	f001 fac2 	bl	8006088 <_Bfree>
 8004b04:	2200      	movs	r2, #0
 8004b06:	9b06      	ldr	r3, [sp, #24]
 8004b08:	7022      	strb	r2, [r4, #0]
 8004b0a:	9a05      	ldr	r2, [sp, #20]
 8004b0c:	3301      	adds	r3, #1
 8004b0e:	6013      	str	r3, [r2, #0]
 8004b10:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b12:	2b00      	cmp	r3, #0
 8004b14:	f43f abdb 	beq.w	80042ce <_dtoa_r+0x7e>
 8004b18:	4658      	mov	r0, fp
 8004b1a:	601c      	str	r4, [r3, #0]
 8004b1c:	b01b      	add	sp, #108	; 0x6c
 8004b1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b22:	201c      	movs	r0, #28
 8004b24:	e6eb      	b.n	80048fe <_dtoa_r+0x6ae>
 8004b26:	4601      	mov	r1, r0
 8004b28:	4648      	mov	r0, r9
 8004b2a:	f001 fbf7 	bl	800631c <__pow5mult>
 8004b2e:	9b02      	ldr	r3, [sp, #8]
 8004b30:	2b01      	cmp	r3, #1
 8004b32:	4606      	mov	r6, r0
 8004b34:	f340 80d4 	ble.w	8004ce0 <_dtoa_r+0xa90>
 8004b38:	2300      	movs	r3, #0
 8004b3a:	930c      	str	r3, [sp, #48]	; 0x30
 8004b3c:	6933      	ldr	r3, [r6, #16]
 8004b3e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004b42:	6918      	ldr	r0, [r3, #16]
 8004b44:	f001 faea 	bl	800611c <__hi0bits>
 8004b48:	f1c0 0020 	rsb	r0, r0, #32
 8004b4c:	e6cb      	b.n	80048e6 <_dtoa_r+0x696>
 8004b4e:	900d      	str	r0, [sp, #52]	; 0x34
 8004b50:	e42a      	b.n	80043a8 <_dtoa_r+0x158>
 8004b52:	2501      	movs	r5, #1
 8004b54:	e440      	b.n	80043d8 <_dtoa_r+0x188>
 8004b56:	f1c3 0820 	rsb	r8, r3, #32
 8004b5a:	9b00      	ldr	r3, [sp, #0]
 8004b5c:	fa03 f008 	lsl.w	r0, r3, r8
 8004b60:	f7ff bbd8 	b.w	8004314 <_dtoa_r+0xc4>
 8004b64:	2300      	movs	r3, #0
 8004b66:	930a      	str	r3, [sp, #40]	; 0x28
 8004b68:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b6c:	4413      	add	r3, r2
 8004b6e:	930e      	str	r3, [sp, #56]	; 0x38
 8004b70:	3301      	adds	r3, #1
 8004b72:	2b01      	cmp	r3, #1
 8004b74:	461e      	mov	r6, r3
 8004b76:	9309      	str	r3, [sp, #36]	; 0x24
 8004b78:	bfb8      	it	lt
 8004b7a:	2601      	movlt	r6, #1
 8004b7c:	2100      	movs	r1, #0
 8004b7e:	2e17      	cmp	r6, #23
 8004b80:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b84:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004b86:	f77f ac89 	ble.w	800449c <_dtoa_r+0x24c>
 8004b8a:	2201      	movs	r2, #1
 8004b8c:	2304      	movs	r3, #4
 8004b8e:	005b      	lsls	r3, r3, #1
 8004b90:	f103 0014 	add.w	r0, r3, #20
 8004b94:	42b0      	cmp	r0, r6
 8004b96:	4611      	mov	r1, r2
 8004b98:	f102 0201 	add.w	r2, r2, #1
 8004b9c:	d9f7      	bls.n	8004b8e <_dtoa_r+0x93e>
 8004b9e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ba2:	e47b      	b.n	800449c <_dtoa_r+0x24c>
 8004ba4:	2300      	movs	r3, #0
 8004ba6:	930a      	str	r3, [sp, #40]	; 0x28
 8004ba8:	9e07      	ldr	r6, [sp, #28]
 8004baa:	2e00      	cmp	r6, #0
 8004bac:	f340 80e2 	ble.w	8004d74 <_dtoa_r+0xb24>
 8004bb0:	960e      	str	r6, [sp, #56]	; 0x38
 8004bb2:	9609      	str	r6, [sp, #36]	; 0x24
 8004bb4:	e7e2      	b.n	8004b7c <_dtoa_r+0x92c>
 8004bb6:	2301      	movs	r3, #1
 8004bb8:	930a      	str	r3, [sp, #40]	; 0x28
 8004bba:	e7f5      	b.n	8004ba8 <_dtoa_r+0x958>
 8004bbc:	9b00      	ldr	r3, [sp, #0]
 8004bbe:	2b00      	cmp	r3, #0
 8004bc0:	f47f ae90 	bne.w	80048e4 <_dtoa_r+0x694>
 8004bc4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004bc8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004bcc:	2b00      	cmp	r3, #0
 8004bce:	f040 8192 	bne.w	8004ef6 <_dtoa_r+0xca6>
 8004bd2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004bd6:	0d1b      	lsrs	r3, r3, #20
 8004bd8:	051b      	lsls	r3, r3, #20
 8004bda:	b12b      	cbz	r3, 8004be8 <_dtoa_r+0x998>
 8004bdc:	9b08      	ldr	r3, [sp, #32]
 8004bde:	3301      	adds	r3, #1
 8004be0:	9308      	str	r3, [sp, #32]
 8004be2:	f108 0801 	add.w	r8, r8, #1
 8004be6:	2301      	movs	r3, #1
 8004be8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bea:	930c      	str	r3, [sp, #48]	; 0x30
 8004bec:	2a00      	cmp	r2, #0
 8004bee:	f43f ae79 	beq.w	80048e4 <_dtoa_r+0x694>
 8004bf2:	e7a3      	b.n	8004b3c <_dtoa_r+0x8ec>
 8004bf4:	463a      	mov	r2, r7
 8004bf6:	4629      	mov	r1, r5
 8004bf8:	4648      	mov	r0, r9
 8004bfa:	f001 fb8f 	bl	800631c <__pow5mult>
 8004bfe:	4652      	mov	r2, sl
 8004c00:	4601      	mov	r1, r0
 8004c02:	4605      	mov	r5, r0
 8004c04:	4648      	mov	r0, r9
 8004c06:	f001 fae3 	bl	80061d0 <__multiply>
 8004c0a:	4651      	mov	r1, sl
 8004c0c:	4607      	mov	r7, r0
 8004c0e:	4648      	mov	r0, r9
 8004c10:	f001 fa3a 	bl	8006088 <_Bfree>
 8004c14:	46ba      	mov	sl, r7
 8004c16:	2e00      	cmp	r6, #0
 8004c18:	f43f ae57 	beq.w	80048ca <_dtoa_r+0x67a>
 8004c1c:	e64f      	b.n	80048be <_dtoa_r+0x66e>
 8004c1e:	4629      	mov	r1, r5
 8004c20:	4622      	mov	r2, r4
 8004c22:	4648      	mov	r0, r9
 8004c24:	f001 fbca 	bl	80063bc <__lshift>
 8004c28:	4605      	mov	r5, r0
 8004c2a:	e68d      	b.n	8004948 <_dtoa_r+0x6f8>
 8004c2c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004c2e:	2a00      	cmp	r2, #0
 8004c30:	f000 815d 	beq.w	8004eee <_dtoa_r+0xc9e>
 8004c34:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004c38:	9a08      	ldr	r2, [sp, #32]
 8004c3a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c3c:	4614      	mov	r4, r2
 8004c3e:	441a      	add	r2, r3
 8004c40:	4498      	add	r8, r3
 8004c42:	9208      	str	r2, [sp, #32]
 8004c44:	e5f7      	b.n	8004836 <_dtoa_r+0x5e6>
 8004c46:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c48:	2b00      	cmp	r3, #0
 8004c4a:	f73f ad3e 	bgt.w	80046ca <_dtoa_r+0x47a>
 8004c4e:	f040 80bc 	bne.w	8004dca <_dtoa_r+0xb7a>
 8004c52:	ec51 0b17 	vmov	r0, r1, d7
 8004c56:	2200      	movs	r2, #0
 8004c58:	4bb2      	ldr	r3, [pc, #712]	; (8004f24 <_dtoa_r+0xcd4>)
 8004c5a:	f7fb fc8d 	bl	8000578 <__aeabi_dmul>
 8004c5e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c62:	f7fc fa41 	bl	80010e8 <__aeabi_dcmpge>
 8004c66:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c68:	4635      	mov	r5, r6
 8004c6a:	2800      	cmp	r0, #0
 8004c6c:	d176      	bne.n	8004d5c <_dtoa_r+0xb0c>
 8004c6e:	9a06      	ldr	r2, [sp, #24]
 8004c70:	2331      	movs	r3, #49	; 0x31
 8004c72:	3201      	adds	r2, #1
 8004c74:	9206      	str	r2, [sp, #24]
 8004c76:	f88b 3000 	strb.w	r3, [fp]
 8004c7a:	f10b 0401 	add.w	r4, fp, #1
 8004c7e:	4631      	mov	r1, r6
 8004c80:	4648      	mov	r0, r9
 8004c82:	f001 fa01 	bl	8006088 <_Bfree>
 8004c86:	2d00      	cmp	r5, #0
 8004c88:	f47f af34 	bne.w	8004af4 <_dtoa_r+0x8a4>
 8004c8c:	e736      	b.n	8004afc <_dtoa_r+0x8ac>
 8004c8e:	f000 8142 	beq.w	8004f16 <_dtoa_r+0xcc6>
 8004c92:	9b06      	ldr	r3, [sp, #24]
 8004c94:	425c      	negs	r4, r3
 8004c96:	4ba4      	ldr	r3, [pc, #656]	; (8004f28 <_dtoa_r+0xcd8>)
 8004c98:	f004 020f 	and.w	r2, r4, #15
 8004c9c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ca0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ca4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ca8:	f7fb fc66 	bl	8000578 <__aeabi_dmul>
 8004cac:	1124      	asrs	r4, r4, #4
 8004cae:	e9cd 0100 	strd	r0, r1, [sp]
 8004cb2:	f000 81c6 	beq.w	8005042 <_dtoa_r+0xdf2>
 8004cb6:	4d9d      	ldr	r5, [pc, #628]	; (8004f2c <_dtoa_r+0xcdc>)
 8004cb8:	2300      	movs	r3, #0
 8004cba:	2602      	movs	r6, #2
 8004cbc:	07e7      	lsls	r7, r4, #31
 8004cbe:	d505      	bpl.n	8004ccc <_dtoa_r+0xa7c>
 8004cc0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004cc4:	f7fb fc58 	bl	8000578 <__aeabi_dmul>
 8004cc8:	3601      	adds	r6, #1
 8004cca:	2301      	movs	r3, #1
 8004ccc:	1064      	asrs	r4, r4, #1
 8004cce:	f105 0508 	add.w	r5, r5, #8
 8004cd2:	d1f3      	bne.n	8004cbc <_dtoa_r+0xa6c>
 8004cd4:	2b00      	cmp	r3, #0
 8004cd6:	f43f ac27 	beq.w	8004528 <_dtoa_r+0x2d8>
 8004cda:	e9cd 0100 	strd	r0, r1, [sp]
 8004cde:	e423      	b.n	8004528 <_dtoa_r+0x2d8>
 8004ce0:	9b00      	ldr	r3, [sp, #0]
 8004ce2:	2b00      	cmp	r3, #0
 8004ce4:	f43f af6e 	beq.w	8004bc4 <_dtoa_r+0x974>
 8004ce8:	e726      	b.n	8004b38 <_dtoa_r+0x8e8>
 8004cea:	6869      	ldr	r1, [r5, #4]
 8004cec:	4648      	mov	r0, r9
 8004cee:	f001 f9a5 	bl	800603c <_Balloc>
 8004cf2:	692b      	ldr	r3, [r5, #16]
 8004cf4:	3302      	adds	r3, #2
 8004cf6:	009a      	lsls	r2, r3, #2
 8004cf8:	4604      	mov	r4, r0
 8004cfa:	f105 010c 	add.w	r1, r5, #12
 8004cfe:	300c      	adds	r0, #12
 8004d00:	f7fc f81c 	bl	8000d3c <memcpy>
 8004d04:	4621      	mov	r1, r4
 8004d06:	2201      	movs	r2, #1
 8004d08:	4648      	mov	r0, r9
 8004d0a:	f001 fb57 	bl	80063bc <__lshift>
 8004d0e:	4680      	mov	r8, r0
 8004d10:	e61f      	b.n	8004952 <_dtoa_r+0x702>
 8004d12:	2400      	movs	r4, #0
 8004d14:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004d18:	4621      	mov	r1, r4
 8004d1a:	4648      	mov	r0, r9
 8004d1c:	f001 f98e 	bl	800603c <_Balloc>
 8004d20:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004d24:	930e      	str	r3, [sp, #56]	; 0x38
 8004d26:	9309      	str	r3, [sp, #36]	; 0x24
 8004d28:	2301      	movs	r3, #1
 8004d2a:	4683      	mov	fp, r0
 8004d2c:	9407      	str	r4, [sp, #28]
 8004d2e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d32:	930a      	str	r3, [sp, #40]	; 0x28
 8004d34:	e4b6      	b.n	80046a4 <_dtoa_r+0x454>
 8004d36:	f001 f9b1 	bl	800609c <__multadd>
 8004d3a:	4627      	mov	r7, r4
 8004d3c:	4605      	mov	r5, r0
 8004d3e:	4680      	mov	r8, r0
 8004d40:	e614      	b.n	800496c <_dtoa_r+0x71c>
 8004d42:	4648      	mov	r0, r9
 8004d44:	f001 f9a0 	bl	8006088 <_Bfree>
 8004d48:	2301      	movs	r3, #1
 8004d4a:	e639      	b.n	80049c0 <_dtoa_r+0x770>
 8004d4c:	9b02      	ldr	r3, [sp, #8]
 8004d4e:	2b02      	cmp	r3, #2
 8004d50:	f77f adf3 	ble.w	800493a <_dtoa_r+0x6ea>
 8004d54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d56:	2b00      	cmp	r3, #0
 8004d58:	f000 80cf 	beq.w	8004efa <_dtoa_r+0xcaa>
 8004d5c:	9b07      	ldr	r3, [sp, #28]
 8004d5e:	43db      	mvns	r3, r3
 8004d60:	9306      	str	r3, [sp, #24]
 8004d62:	465c      	mov	r4, fp
 8004d64:	e78b      	b.n	8004c7e <_dtoa_r+0xa2e>
 8004d66:	9a06      	ldr	r2, [sp, #24]
 8004d68:	2331      	movs	r3, #49	; 0x31
 8004d6a:	3201      	adds	r2, #1
 8004d6c:	9206      	str	r2, [sp, #24]
 8004d6e:	f88b 3000 	strb.w	r3, [fp]
 8004d72:	e6b3      	b.n	8004adc <_dtoa_r+0x88c>
 8004d74:	2401      	movs	r4, #1
 8004d76:	9409      	str	r4, [sp, #36]	; 0x24
 8004d78:	9407      	str	r4, [sp, #28]
 8004d7a:	f7ff bb8b 	b.w	8004494 <_dtoa_r+0x244>
 8004d7e:	4630      	mov	r0, r6
 8004d80:	f7fb fb90 	bl	80004a4 <__aeabi_i2d>
 8004d84:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d88:	f7fb fbf6 	bl	8000578 <__aeabi_dmul>
 8004d8c:	2200      	movs	r2, #0
 8004d8e:	4b68      	ldr	r3, [pc, #416]	; (8004f30 <_dtoa_r+0xce0>)
 8004d90:	f7fb fa3c 	bl	800020c <__adddf3>
 8004d94:	4606      	mov	r6, r0
 8004d96:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d9a:	2200      	movs	r2, #0
 8004d9c:	4b61      	ldr	r3, [pc, #388]	; (8004f24 <_dtoa_r+0xcd4>)
 8004d9e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004da2:	f7fb fa31 	bl	8000208 <__aeabi_dsub>
 8004da6:	4632      	mov	r2, r6
 8004da8:	463b      	mov	r3, r7
 8004daa:	4604      	mov	r4, r0
 8004dac:	460d      	mov	r5, r1
 8004dae:	f7fc f9a5 	bl	80010fc <__aeabi_dcmpgt>
 8004db2:	2800      	cmp	r0, #0
 8004db4:	d14f      	bne.n	8004e56 <_dtoa_r+0xc06>
 8004db6:	4632      	mov	r2, r6
 8004db8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004dbc:	4620      	mov	r0, r4
 8004dbe:	4629      	mov	r1, r5
 8004dc0:	f7fc f97e 	bl	80010c0 <__aeabi_dcmplt>
 8004dc4:	2800      	cmp	r0, #0
 8004dc6:	f43f ac69 	beq.w	800469c <_dtoa_r+0x44c>
 8004dca:	2600      	movs	r6, #0
 8004dcc:	4635      	mov	r5, r6
 8004dce:	e7c5      	b.n	8004d5c <_dtoa_r+0xb0c>
 8004dd0:	2301      	movs	r3, #1
 8004dd2:	930a      	str	r3, [sp, #40]	; 0x28
 8004dd4:	e6c8      	b.n	8004b68 <_dtoa_r+0x918>
 8004dd6:	4651      	mov	r1, sl
 8004dd8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004dda:	4648      	mov	r0, r9
 8004ddc:	f001 fa9e 	bl	800631c <__pow5mult>
 8004de0:	4682      	mov	sl, r0
 8004de2:	e572      	b.n	80048ca <_dtoa_r+0x67a>
 8004de4:	f8dd a000 	ldr.w	sl, [sp]
 8004de8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dec:	e686      	b.n	8004afc <_dtoa_r+0x8ac>
 8004dee:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004df0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004df2:	1afb      	subs	r3, r7, r3
 8004df4:	441a      	add	r2, r3
 8004df6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004dfa:	2700      	movs	r7, #0
 8004dfc:	e512      	b.n	8004824 <_dtoa_r+0x5d4>
 8004dfe:	2b00      	cmp	r3, #0
 8004e00:	9402      	str	r4, [sp, #8]
 8004e02:	465e      	mov	r6, fp
 8004e04:	f107 0401 	add.w	r4, r7, #1
 8004e08:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e0c:	f300 80ba 	bgt.w	8004f84 <_dtoa_r+0xd34>
 8004e10:	9b00      	ldr	r3, [sp, #0]
 8004e12:	9502      	str	r5, [sp, #8]
 8004e14:	703b      	strb	r3, [r7, #0]
 8004e16:	4645      	mov	r5, r8
 8004e18:	e660      	b.n	8004adc <_dtoa_r+0x88c>
 8004e1a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e1e:	2602      	movs	r6, #2
 8004e20:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004e24:	f7ff bb67 	b.w	80044f6 <_dtoa_r+0x2a6>
 8004e28:	9b00      	ldr	r3, [sp, #0]
 8004e2a:	2b39      	cmp	r3, #57	; 0x39
 8004e2c:	465e      	mov	r6, fp
 8004e2e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e32:	f000 80b9 	beq.w	8004fa8 <_dtoa_r+0xd58>
 8004e36:	9b00      	ldr	r3, [sp, #0]
 8004e38:	9502      	str	r5, [sp, #8]
 8004e3a:	3301      	adds	r3, #1
 8004e3c:	703b      	strb	r3, [r7, #0]
 8004e3e:	4645      	mov	r5, r8
 8004e40:	e64c      	b.n	8004adc <_dtoa_r+0x88c>
 8004e42:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004e46:	1a9c      	subs	r4, r3, r2
 8004e48:	e4f5      	b.n	8004836 <_dtoa_r+0x5e6>
 8004e4a:	465e      	mov	r6, fp
 8004e4c:	9502      	str	r5, [sp, #8]
 8004e4e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e52:	4645      	mov	r5, r8
 8004e54:	e61a      	b.n	8004a8c <_dtoa_r+0x83c>
 8004e56:	2600      	movs	r6, #0
 8004e58:	4635      	mov	r5, r6
 8004e5a:	e708      	b.n	8004c6e <_dtoa_r+0xa1e>
 8004e5c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e60:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e64:	f7fb fb88 	bl	8000578 <__aeabi_dmul>
 8004e68:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e6a:	f88b 5000 	strb.w	r5, [fp]
 8004e6e:	2b01      	cmp	r3, #1
 8004e70:	e9cd 0100 	strd	r0, r1, [sp]
 8004e74:	d020      	beq.n	8004eb8 <_dtoa_r+0xc68>
 8004e76:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e78:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004e7c:	445b      	add	r3, fp
 8004e7e:	4698      	mov	r8, r3
 8004e80:	2200      	movs	r2, #0
 8004e82:	4b2c      	ldr	r3, [pc, #176]	; (8004f34 <_dtoa_r+0xce4>)
 8004e84:	4630      	mov	r0, r6
 8004e86:	4639      	mov	r1, r7
 8004e88:	f7fb fb76 	bl	8000578 <__aeabi_dmul>
 8004e8c:	460f      	mov	r7, r1
 8004e8e:	4606      	mov	r6, r0
 8004e90:	f7fc f954 	bl	800113c <__aeabi_d2iz>
 8004e94:	4605      	mov	r5, r0
 8004e96:	f7fb fb05 	bl	80004a4 <__aeabi_i2d>
 8004e9a:	3530      	adds	r5, #48	; 0x30
 8004e9c:	4602      	mov	r2, r0
 8004e9e:	460b      	mov	r3, r1
 8004ea0:	4630      	mov	r0, r6
 8004ea2:	4639      	mov	r1, r7
 8004ea4:	f7fb f9b0 	bl	8000208 <__aeabi_dsub>
 8004ea8:	f804 5b01 	strb.w	r5, [r4], #1
 8004eac:	4544      	cmp	r4, r8
 8004eae:	4606      	mov	r6, r0
 8004eb0:	460f      	mov	r7, r1
 8004eb2:	d1e5      	bne.n	8004e80 <_dtoa_r+0xc30>
 8004eb4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004eb8:	4b1f      	ldr	r3, [pc, #124]	; (8004f38 <_dtoa_r+0xce8>)
 8004eba:	2200      	movs	r2, #0
 8004ebc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ec0:	f7fb f9a4 	bl	800020c <__adddf3>
 8004ec4:	4632      	mov	r2, r6
 8004ec6:	463b      	mov	r3, r7
 8004ec8:	f7fc f8fa 	bl	80010c0 <__aeabi_dcmplt>
 8004ecc:	2800      	cmp	r0, #0
 8004ece:	d070      	beq.n	8004fb2 <_dtoa_r+0xd62>
 8004ed0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ed2:	9306      	str	r3, [sp, #24]
 8004ed4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ed8:	e48f      	b.n	80047fa <_dtoa_r+0x5aa>
 8004eda:	2330      	movs	r3, #48	; 0x30
 8004edc:	f88b 3000 	strb.w	r3, [fp]
 8004ee0:	9b06      	ldr	r3, [sp, #24]
 8004ee2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ee6:	3301      	adds	r3, #1
 8004ee8:	9306      	str	r3, [sp, #24]
 8004eea:	465b      	mov	r3, fp
 8004eec:	e489      	b.n	8004802 <_dtoa_r+0x5b2>
 8004eee:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004ef0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004ef4:	e6a0      	b.n	8004c38 <_dtoa_r+0x9e8>
 8004ef6:	2300      	movs	r3, #0
 8004ef8:	e676      	b.n	8004be8 <_dtoa_r+0x998>
 8004efa:	4631      	mov	r1, r6
 8004efc:	2205      	movs	r2, #5
 8004efe:	4648      	mov	r0, r9
 8004f00:	f001 f8cc 	bl	800609c <__multadd>
 8004f04:	4601      	mov	r1, r0
 8004f06:	4606      	mov	r6, r0
 8004f08:	4650      	mov	r0, sl
 8004f0a:	f001 faad 	bl	8006468 <__mcmp>
 8004f0e:	2800      	cmp	r0, #0
 8004f10:	f73f aead 	bgt.w	8004c6e <_dtoa_r+0xa1e>
 8004f14:	e722      	b.n	8004d5c <_dtoa_r+0xb0c>
 8004f16:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f1a:	2602      	movs	r6, #2
 8004f1c:	ed8d 7b00 	vstr	d7, [sp]
 8004f20:	f7ff bb02 	b.w	8004528 <_dtoa_r+0x2d8>
 8004f24:	40140000 	.word	0x40140000
 8004f28:	080072d8 	.word	0x080072d8
 8004f2c:	080072b0 	.word	0x080072b0
 8004f30:	401c0000 	.word	0x401c0000
 8004f34:	40240000 	.word	0x40240000
 8004f38:	3fe00000 	.word	0x3fe00000
 8004f3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f3e:	2b00      	cmp	r3, #0
 8004f40:	f43f af1d 	beq.w	8004d7e <_dtoa_r+0xb2e>
 8004f44:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004f46:	2c00      	cmp	r4, #0
 8004f48:	f77f aba8 	ble.w	800469c <_dtoa_r+0x44c>
 8004f4c:	2200      	movs	r2, #0
 8004f4e:	4b45      	ldr	r3, [pc, #276]	; (8005064 <_dtoa_r+0xe14>)
 8004f50:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f54:	f7fb fb10 	bl	8000578 <__aeabi_dmul>
 8004f58:	e9cd 0100 	strd	r0, r1, [sp]
 8004f5c:	1c70      	adds	r0, r6, #1
 8004f5e:	f7fb faa1 	bl	80004a4 <__aeabi_i2d>
 8004f62:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f66:	f7fb fb07 	bl	8000578 <__aeabi_dmul>
 8004f6a:	4b3f      	ldr	r3, [pc, #252]	; (8005068 <_dtoa_r+0xe18>)
 8004f6c:	2200      	movs	r2, #0
 8004f6e:	f7fb f94d 	bl	800020c <__adddf3>
 8004f72:	9b06      	ldr	r3, [sp, #24]
 8004f74:	9412      	str	r4, [sp, #72]	; 0x48
 8004f76:	3b01      	subs	r3, #1
 8004f78:	4606      	mov	r6, r0
 8004f7a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f7e:	9316      	str	r3, [sp, #88]	; 0x58
 8004f80:	f7ff baf3 	b.w	800456a <_dtoa_r+0x31a>
 8004f84:	4651      	mov	r1, sl
 8004f86:	2201      	movs	r2, #1
 8004f88:	4648      	mov	r0, r9
 8004f8a:	f001 fa17 	bl	80063bc <__lshift>
 8004f8e:	4631      	mov	r1, r6
 8004f90:	4682      	mov	sl, r0
 8004f92:	f001 fa69 	bl	8006468 <__mcmp>
 8004f96:	2800      	cmp	r0, #0
 8004f98:	dd3b      	ble.n	8005012 <_dtoa_r+0xdc2>
 8004f9a:	9b00      	ldr	r3, [sp, #0]
 8004f9c:	2b39      	cmp	r3, #57	; 0x39
 8004f9e:	d003      	beq.n	8004fa8 <_dtoa_r+0xd58>
 8004fa0:	9b02      	ldr	r3, [sp, #8]
 8004fa2:	3331      	adds	r3, #49	; 0x31
 8004fa4:	9300      	str	r3, [sp, #0]
 8004fa6:	e733      	b.n	8004e10 <_dtoa_r+0xbc0>
 8004fa8:	2239      	movs	r2, #57	; 0x39
 8004faa:	9502      	str	r5, [sp, #8]
 8004fac:	703a      	strb	r2, [r7, #0]
 8004fae:	4645      	mov	r5, r8
 8004fb0:	e58e      	b.n	8004ad0 <_dtoa_r+0x880>
 8004fb2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fb6:	2000      	movs	r0, #0
 8004fb8:	492c      	ldr	r1, [pc, #176]	; (800506c <_dtoa_r+0xe1c>)
 8004fba:	f7fb f925 	bl	8000208 <__aeabi_dsub>
 8004fbe:	4632      	mov	r2, r6
 8004fc0:	463b      	mov	r3, r7
 8004fc2:	f7fc f89b 	bl	80010fc <__aeabi_dcmpgt>
 8004fc6:	b910      	cbnz	r0, 8004fce <_dtoa_r+0xd7e>
 8004fc8:	f7ff bb68 	b.w	800469c <_dtoa_r+0x44c>
 8004fcc:	4614      	mov	r4, r2
 8004fce:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004fd2:	2b30      	cmp	r3, #48	; 0x30
 8004fd4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004fd8:	d0f8      	beq.n	8004fcc <_dtoa_r+0xd7c>
 8004fda:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fdc:	9306      	str	r3, [sp, #24]
 8004fde:	e58d      	b.n	8004afc <_dtoa_r+0x8ac>
 8004fe0:	46d9      	mov	r9, fp
 8004fe2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004fe6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004fea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fec:	9306      	str	r3, [sp, #24]
 8004fee:	e404      	b.n	80047fa <_dtoa_r+0x5aa>
 8004ff0:	9b00      	ldr	r3, [sp, #0]
 8004ff2:	2b39      	cmp	r3, #57	; 0x39
 8004ff4:	4621      	mov	r1, r4
 8004ff6:	4632      	mov	r2, r6
 8004ff8:	f107 0401 	add.w	r4, r7, #1
 8004ffc:	465e      	mov	r6, fp
 8004ffe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005002:	d0d1      	beq.n	8004fa8 <_dtoa_r+0xd58>
 8005004:	2a00      	cmp	r2, #0
 8005006:	f77f af03 	ble.w	8004e10 <_dtoa_r+0xbc0>
 800500a:	460b      	mov	r3, r1
 800500c:	3331      	adds	r3, #49	; 0x31
 800500e:	9300      	str	r3, [sp, #0]
 8005010:	e6fe      	b.n	8004e10 <_dtoa_r+0xbc0>
 8005012:	f47f aefd 	bne.w	8004e10 <_dtoa_r+0xbc0>
 8005016:	9b00      	ldr	r3, [sp, #0]
 8005018:	07da      	lsls	r2, r3, #31
 800501a:	f57f aef9 	bpl.w	8004e10 <_dtoa_r+0xbc0>
 800501e:	e7bc      	b.n	8004f9a <_dtoa_r+0xd4a>
 8005020:	4629      	mov	r1, r5
 8005022:	2300      	movs	r3, #0
 8005024:	220a      	movs	r2, #10
 8005026:	4648      	mov	r0, r9
 8005028:	f001 f838 	bl	800609c <__multadd>
 800502c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800502e:	2b00      	cmp	r3, #0
 8005030:	4605      	mov	r5, r0
 8005032:	dd09      	ble.n	8005048 <_dtoa_r+0xdf8>
 8005034:	9309      	str	r3, [sp, #36]	; 0x24
 8005036:	e484      	b.n	8004942 <_dtoa_r+0x6f2>
 8005038:	9b02      	ldr	r3, [sp, #8]
 800503a:	2b02      	cmp	r3, #2
 800503c:	dc0e      	bgt.n	800505c <_dtoa_r+0xe0c>
 800503e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005040:	e507      	b.n	8004a52 <_dtoa_r+0x802>
 8005042:	2602      	movs	r6, #2
 8005044:	f7ff ba70 	b.w	8004528 <_dtoa_r+0x2d8>
 8005048:	9b02      	ldr	r3, [sp, #8]
 800504a:	2b02      	cmp	r3, #2
 800504c:	dc06      	bgt.n	800505c <_dtoa_r+0xe0c>
 800504e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005050:	e7f0      	b.n	8005034 <_dtoa_r+0xde4>
 8005052:	f43f ac59 	beq.w	8004908 <_dtoa_r+0x6b8>
 8005056:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800505a:	e450      	b.n	80048fe <_dtoa_r+0x6ae>
 800505c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800505e:	9309      	str	r3, [sp, #36]	; 0x24
 8005060:	e678      	b.n	8004d54 <_dtoa_r+0xb04>
 8005062:	bf00      	nop
 8005064:	40240000 	.word	0x40240000
 8005068:	401c0000 	.word	0x401c0000
 800506c:	3fe00000 	.word	0x3fe00000

08005070 <__sflush_r>:
 8005070:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005074:	b29a      	uxth	r2, r3
 8005076:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800507a:	460c      	mov	r4, r1
 800507c:	0711      	lsls	r1, r2, #28
 800507e:	4680      	mov	r8, r0
 8005080:	d444      	bmi.n	800510c <__sflush_r+0x9c>
 8005082:	6862      	ldr	r2, [r4, #4]
 8005084:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005088:	2a00      	cmp	r2, #0
 800508a:	81a3      	strh	r3, [r4, #12]
 800508c:	dd59      	ble.n	8005142 <__sflush_r+0xd2>
 800508e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005090:	2d00      	cmp	r5, #0
 8005092:	d053      	beq.n	800513c <__sflush_r+0xcc>
 8005094:	2200      	movs	r2, #0
 8005096:	b29b      	uxth	r3, r3
 8005098:	f8d8 6000 	ldr.w	r6, [r8]
 800509c:	69e1      	ldr	r1, [r4, #28]
 800509e:	f8c8 2000 	str.w	r2, [r8]
 80050a2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80050a6:	f040 8083 	bne.w	80051b0 <__sflush_r+0x140>
 80050aa:	2301      	movs	r3, #1
 80050ac:	4640      	mov	r0, r8
 80050ae:	47a8      	blx	r5
 80050b0:	1c42      	adds	r2, r0, #1
 80050b2:	d04a      	beq.n	800514a <__sflush_r+0xda>
 80050b4:	89a3      	ldrh	r3, [r4, #12]
 80050b6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050b8:	69e1      	ldr	r1, [r4, #28]
 80050ba:	075b      	lsls	r3, r3, #29
 80050bc:	d505      	bpl.n	80050ca <__sflush_r+0x5a>
 80050be:	6862      	ldr	r2, [r4, #4]
 80050c0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80050c2:	1a80      	subs	r0, r0, r2
 80050c4:	b10b      	cbz	r3, 80050ca <__sflush_r+0x5a>
 80050c6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80050c8:	1ac0      	subs	r0, r0, r3
 80050ca:	4602      	mov	r2, r0
 80050cc:	2300      	movs	r3, #0
 80050ce:	4640      	mov	r0, r8
 80050d0:	47a8      	blx	r5
 80050d2:	1c47      	adds	r7, r0, #1
 80050d4:	d045      	beq.n	8005162 <__sflush_r+0xf2>
 80050d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80050da:	6922      	ldr	r2, [r4, #16]
 80050dc:	6022      	str	r2, [r4, #0]
 80050de:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80050e2:	2200      	movs	r2, #0
 80050e4:	81a3      	strh	r3, [r4, #12]
 80050e6:	04db      	lsls	r3, r3, #19
 80050e8:	6062      	str	r2, [r4, #4]
 80050ea:	d500      	bpl.n	80050ee <__sflush_r+0x7e>
 80050ec:	6520      	str	r0, [r4, #80]	; 0x50
 80050ee:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80050f0:	f8c8 6000 	str.w	r6, [r8]
 80050f4:	b311      	cbz	r1, 800513c <__sflush_r+0xcc>
 80050f6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80050fa:	4299      	cmp	r1, r3
 80050fc:	d002      	beq.n	8005104 <__sflush_r+0x94>
 80050fe:	4640      	mov	r0, r8
 8005100:	f000 f95e 	bl	80053c0 <_free_r>
 8005104:	2000      	movs	r0, #0
 8005106:	6320      	str	r0, [r4, #48]	; 0x30
 8005108:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800510c:	6926      	ldr	r6, [r4, #16]
 800510e:	b1ae      	cbz	r6, 800513c <__sflush_r+0xcc>
 8005110:	6825      	ldr	r5, [r4, #0]
 8005112:	6026      	str	r6, [r4, #0]
 8005114:	0792      	lsls	r2, r2, #30
 8005116:	bf0c      	ite	eq
 8005118:	6963      	ldreq	r3, [r4, #20]
 800511a:	2300      	movne	r3, #0
 800511c:	1bad      	subs	r5, r5, r6
 800511e:	60a3      	str	r3, [r4, #8]
 8005120:	e00a      	b.n	8005138 <__sflush_r+0xc8>
 8005122:	462b      	mov	r3, r5
 8005124:	4632      	mov	r2, r6
 8005126:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005128:	69e1      	ldr	r1, [r4, #28]
 800512a:	4640      	mov	r0, r8
 800512c:	47b8      	blx	r7
 800512e:	2800      	cmp	r0, #0
 8005130:	eba5 0500 	sub.w	r5, r5, r0
 8005134:	4406      	add	r6, r0
 8005136:	dd2b      	ble.n	8005190 <__sflush_r+0x120>
 8005138:	2d00      	cmp	r5, #0
 800513a:	dcf2      	bgt.n	8005122 <__sflush_r+0xb2>
 800513c:	2000      	movs	r0, #0
 800513e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005142:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005144:	2a00      	cmp	r2, #0
 8005146:	dca2      	bgt.n	800508e <__sflush_r+0x1e>
 8005148:	e7f8      	b.n	800513c <__sflush_r+0xcc>
 800514a:	f8d8 3000 	ldr.w	r3, [r8]
 800514e:	2b00      	cmp	r3, #0
 8005150:	d0b0      	beq.n	80050b4 <__sflush_r+0x44>
 8005152:	2b1d      	cmp	r3, #29
 8005154:	d001      	beq.n	800515a <__sflush_r+0xea>
 8005156:	2b16      	cmp	r3, #22
 8005158:	d12c      	bne.n	80051b4 <__sflush_r+0x144>
 800515a:	f8c8 6000 	str.w	r6, [r8]
 800515e:	2000      	movs	r0, #0
 8005160:	e7ed      	b.n	800513e <__sflush_r+0xce>
 8005162:	f8d8 1000 	ldr.w	r1, [r8]
 8005166:	291d      	cmp	r1, #29
 8005168:	d81a      	bhi.n	80051a0 <__sflush_r+0x130>
 800516a:	4b15      	ldr	r3, [pc, #84]	; (80051c0 <__sflush_r+0x150>)
 800516c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005170:	40cb      	lsrs	r3, r1
 8005172:	43db      	mvns	r3, r3
 8005174:	f013 0301 	ands.w	r3, r3, #1
 8005178:	d114      	bne.n	80051a4 <__sflush_r+0x134>
 800517a:	6925      	ldr	r5, [r4, #16]
 800517c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005180:	e9c4 5300 	strd	r5, r3, [r4]
 8005184:	04d5      	lsls	r5, r2, #19
 8005186:	81a2      	strh	r2, [r4, #12]
 8005188:	d5b1      	bpl.n	80050ee <__sflush_r+0x7e>
 800518a:	2900      	cmp	r1, #0
 800518c:	d1af      	bne.n	80050ee <__sflush_r+0x7e>
 800518e:	e7ad      	b.n	80050ec <__sflush_r+0x7c>
 8005190:	89a3      	ldrh	r3, [r4, #12]
 8005192:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005196:	81a3      	strh	r3, [r4, #12]
 8005198:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800519c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051a0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80051a4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80051a8:	81a2      	strh	r2, [r4, #12]
 80051aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80051ae:	e7c6      	b.n	800513e <__sflush_r+0xce>
 80051b0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80051b2:	e782      	b.n	80050ba <__sflush_r+0x4a>
 80051b4:	89a3      	ldrh	r3, [r4, #12]
 80051b6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051ba:	81a3      	strh	r3, [r4, #12]
 80051bc:	e7bf      	b.n	800513e <__sflush_r+0xce>
 80051be:	bf00      	nop
 80051c0:	20400001 	.word	0x20400001

080051c4 <_fflush_r>:
 80051c4:	b538      	push	{r3, r4, r5, lr}
 80051c6:	460d      	mov	r5, r1
 80051c8:	4604      	mov	r4, r0
 80051ca:	b108      	cbz	r0, 80051d0 <_fflush_r+0xc>
 80051cc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80051ce:	b1a3      	cbz	r3, 80051fa <_fflush_r+0x36>
 80051d0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051d4:	b1b8      	cbz	r0, 8005206 <_fflush_r+0x42>
 80051d6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051d8:	07db      	lsls	r3, r3, #31
 80051da:	d401      	bmi.n	80051e0 <_fflush_r+0x1c>
 80051dc:	0581      	lsls	r1, r0, #22
 80051de:	d51a      	bpl.n	8005216 <_fflush_r+0x52>
 80051e0:	4620      	mov	r0, r4
 80051e2:	4629      	mov	r1, r5
 80051e4:	f7ff ff44 	bl	8005070 <__sflush_r>
 80051e8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051ea:	07da      	lsls	r2, r3, #31
 80051ec:	4604      	mov	r4, r0
 80051ee:	d402      	bmi.n	80051f6 <_fflush_r+0x32>
 80051f0:	89ab      	ldrh	r3, [r5, #12]
 80051f2:	059b      	lsls	r3, r3, #22
 80051f4:	d50a      	bpl.n	800520c <_fflush_r+0x48>
 80051f6:	4620      	mov	r0, r4
 80051f8:	bd38      	pop	{r3, r4, r5, pc}
 80051fa:	f000 f83f 	bl	800527c <__sinit>
 80051fe:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005202:	2800      	cmp	r0, #0
 8005204:	d1e7      	bne.n	80051d6 <_fflush_r+0x12>
 8005206:	4604      	mov	r4, r0
 8005208:	4620      	mov	r0, r4
 800520a:	bd38      	pop	{r3, r4, r5, pc}
 800520c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800520e:	f000 fb87 	bl	8005920 <__retarget_lock_release_recursive>
 8005212:	4620      	mov	r0, r4
 8005214:	bd38      	pop	{r3, r4, r5, pc}
 8005216:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005218:	f000 fb80 	bl	800591c <__retarget_lock_acquire_recursive>
 800521c:	e7e0      	b.n	80051e0 <_fflush_r+0x1c>
 800521e:	bf00      	nop

08005220 <std>:
 8005220:	b510      	push	{r4, lr}
 8005222:	2300      	movs	r3, #0
 8005224:	4604      	mov	r4, r0
 8005226:	8181      	strh	r1, [r0, #12]
 8005228:	81c2      	strh	r2, [r0, #14]
 800522a:	e9c0 3300 	strd	r3, r3, [r0]
 800522e:	6083      	str	r3, [r0, #8]
 8005230:	6643      	str	r3, [r0, #100]	; 0x64
 8005232:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005236:	6183      	str	r3, [r0, #24]
 8005238:	4619      	mov	r1, r3
 800523a:	2208      	movs	r2, #8
 800523c:	305c      	adds	r0, #92	; 0x5c
 800523e:	f7fd f8cb 	bl	80023d8 <memset>
 8005242:	4807      	ldr	r0, [pc, #28]	; (8005260 <std+0x40>)
 8005244:	4907      	ldr	r1, [pc, #28]	; (8005264 <std+0x44>)
 8005246:	4a08      	ldr	r2, [pc, #32]	; (8005268 <std+0x48>)
 8005248:	4b08      	ldr	r3, [pc, #32]	; (800526c <std+0x4c>)
 800524a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800524c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005250:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005254:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005258:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800525c:	f000 bb5a 	b.w	8005914 <__retarget_lock_init_recursive>
 8005260:	08006a39 	.word	0x08006a39
 8005264:	08006a5d 	.word	0x08006a5d
 8005268:	08006a99 	.word	0x08006a99
 800526c:	08006ab9 	.word	0x08006ab9

08005270 <_cleanup_r>:
 8005270:	4901      	ldr	r1, [pc, #4]	; (8005278 <_cleanup_r+0x8>)
 8005272:	f000 bb17 	b.w	80058a4 <_fwalk_reent>
 8005276:	bf00      	nop
 8005278:	08006d29 	.word	0x08006d29

0800527c <__sinit>:
 800527c:	b510      	push	{r4, lr}
 800527e:	4604      	mov	r4, r0
 8005280:	4812      	ldr	r0, [pc, #72]	; (80052cc <__sinit+0x50>)
 8005282:	f000 fb4b 	bl	800591c <__retarget_lock_acquire_recursive>
 8005286:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005288:	b9d2      	cbnz	r2, 80052c0 <__sinit+0x44>
 800528a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800528e:	4810      	ldr	r0, [pc, #64]	; (80052d0 <__sinit+0x54>)
 8005290:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005294:	2103      	movs	r1, #3
 8005296:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800529a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800529c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80052a0:	6860      	ldr	r0, [r4, #4]
 80052a2:	2104      	movs	r1, #4
 80052a4:	f7ff ffbc 	bl	8005220 <std>
 80052a8:	2201      	movs	r2, #1
 80052aa:	2109      	movs	r1, #9
 80052ac:	68a0      	ldr	r0, [r4, #8]
 80052ae:	f7ff ffb7 	bl	8005220 <std>
 80052b2:	2202      	movs	r2, #2
 80052b4:	2112      	movs	r1, #18
 80052b6:	68e0      	ldr	r0, [r4, #12]
 80052b8:	f7ff ffb2 	bl	8005220 <std>
 80052bc:	2301      	movs	r3, #1
 80052be:	63a3      	str	r3, [r4, #56]	; 0x38
 80052c0:	4802      	ldr	r0, [pc, #8]	; (80052cc <__sinit+0x50>)
 80052c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052c6:	f000 bb2b 	b.w	8005920 <__retarget_lock_release_recursive>
 80052ca:	bf00      	nop
 80052cc:	20000b30 	.word	0x20000b30
 80052d0:	08005271 	.word	0x08005271

080052d4 <__sfp_lock_acquire>:
 80052d4:	4801      	ldr	r0, [pc, #4]	; (80052dc <__sfp_lock_acquire+0x8>)
 80052d6:	f000 bb21 	b.w	800591c <__retarget_lock_acquire_recursive>
 80052da:	bf00      	nop
 80052dc:	20000b44 	.word	0x20000b44

080052e0 <__sfp_lock_release>:
 80052e0:	4801      	ldr	r0, [pc, #4]	; (80052e8 <__sfp_lock_release+0x8>)
 80052e2:	f000 bb1d 	b.w	8005920 <__retarget_lock_release_recursive>
 80052e6:	bf00      	nop
 80052e8:	20000b44 	.word	0x20000b44

080052ec <__libc_fini_array>:
 80052ec:	b538      	push	{r3, r4, r5, lr}
 80052ee:	4c0a      	ldr	r4, [pc, #40]	; (8005318 <__libc_fini_array+0x2c>)
 80052f0:	4d0a      	ldr	r5, [pc, #40]	; (800531c <__libc_fini_array+0x30>)
 80052f2:	1b64      	subs	r4, r4, r5
 80052f4:	10a4      	asrs	r4, r4, #2
 80052f6:	d00a      	beq.n	800530e <__libc_fini_array+0x22>
 80052f8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80052fc:	3b01      	subs	r3, #1
 80052fe:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005302:	3c01      	subs	r4, #1
 8005304:	f855 3904 	ldr.w	r3, [r5], #-4
 8005308:	4798      	blx	r3
 800530a:	2c00      	cmp	r4, #0
 800530c:	d1f9      	bne.n	8005302 <__libc_fini_array+0x16>
 800530e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005312:	f001 befd 	b.w	8007110 <_fini>
 8005316:	bf00      	nop
 8005318:	080074d4 	.word	0x080074d4
 800531c:	080074d0 	.word	0x080074d0

08005320 <_malloc_trim_r>:
 8005320:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005322:	4f24      	ldr	r7, [pc, #144]	; (80053b4 <_malloc_trim_r+0x94>)
 8005324:	460c      	mov	r4, r1
 8005326:	4606      	mov	r6, r0
 8005328:	f000 fe7c 	bl	8006024 <__malloc_lock>
 800532c:	68bb      	ldr	r3, [r7, #8]
 800532e:	685d      	ldr	r5, [r3, #4]
 8005330:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005334:	310f      	adds	r1, #15
 8005336:	f025 0503 	bic.w	r5, r5, #3
 800533a:	4429      	add	r1, r5
 800533c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005340:	f021 010f 	bic.w	r1, r1, #15
 8005344:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005348:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800534c:	db07      	blt.n	800535e <_malloc_trim_r+0x3e>
 800534e:	2100      	movs	r1, #0
 8005350:	4630      	mov	r0, r6
 8005352:	f001 fb5f 	bl	8006a14 <_sbrk_r>
 8005356:	68bb      	ldr	r3, [r7, #8]
 8005358:	442b      	add	r3, r5
 800535a:	4298      	cmp	r0, r3
 800535c:	d004      	beq.n	8005368 <_malloc_trim_r+0x48>
 800535e:	4630      	mov	r0, r6
 8005360:	f000 fe66 	bl	8006030 <__malloc_unlock>
 8005364:	2000      	movs	r0, #0
 8005366:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005368:	4261      	negs	r1, r4
 800536a:	4630      	mov	r0, r6
 800536c:	f001 fb52 	bl	8006a14 <_sbrk_r>
 8005370:	3001      	adds	r0, #1
 8005372:	d00d      	beq.n	8005390 <_malloc_trim_r+0x70>
 8005374:	4b10      	ldr	r3, [pc, #64]	; (80053b8 <_malloc_trim_r+0x98>)
 8005376:	68ba      	ldr	r2, [r7, #8]
 8005378:	6819      	ldr	r1, [r3, #0]
 800537a:	1b2d      	subs	r5, r5, r4
 800537c:	f045 0501 	orr.w	r5, r5, #1
 8005380:	4630      	mov	r0, r6
 8005382:	1b09      	subs	r1, r1, r4
 8005384:	6055      	str	r5, [r2, #4]
 8005386:	6019      	str	r1, [r3, #0]
 8005388:	f000 fe52 	bl	8006030 <__malloc_unlock>
 800538c:	2001      	movs	r0, #1
 800538e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005390:	2100      	movs	r1, #0
 8005392:	4630      	mov	r0, r6
 8005394:	f001 fb3e 	bl	8006a14 <_sbrk_r>
 8005398:	68ba      	ldr	r2, [r7, #8]
 800539a:	1a83      	subs	r3, r0, r2
 800539c:	2b0f      	cmp	r3, #15
 800539e:	ddde      	ble.n	800535e <_malloc_trim_r+0x3e>
 80053a0:	4c06      	ldr	r4, [pc, #24]	; (80053bc <_malloc_trim_r+0x9c>)
 80053a2:	4905      	ldr	r1, [pc, #20]	; (80053b8 <_malloc_trim_r+0x98>)
 80053a4:	6824      	ldr	r4, [r4, #0]
 80053a6:	f043 0301 	orr.w	r3, r3, #1
 80053aa:	1b00      	subs	r0, r0, r4
 80053ac:	6053      	str	r3, [r2, #4]
 80053ae:	6008      	str	r0, [r1, #0]
 80053b0:	e7d5      	b.n	800535e <_malloc_trim_r+0x3e>
 80053b2:	bf00      	nop
 80053b4:	2000046c 	.word	0x2000046c
 80053b8:	20000a90 	.word	0x20000a90
 80053bc:	20000874 	.word	0x20000874

080053c0 <_free_r>:
 80053c0:	2900      	cmp	r1, #0
 80053c2:	d053      	beq.n	800546c <_free_r+0xac>
 80053c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053c6:	460c      	mov	r4, r1
 80053c8:	4606      	mov	r6, r0
 80053ca:	f000 fe2b 	bl	8006024 <__malloc_lock>
 80053ce:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80053d2:	4f71      	ldr	r7, [pc, #452]	; (8005598 <_free_r+0x1d8>)
 80053d4:	f02c 0101 	bic.w	r1, ip, #1
 80053d8:	f1a4 0508 	sub.w	r5, r4, #8
 80053dc:	186b      	adds	r3, r5, r1
 80053de:	68b8      	ldr	r0, [r7, #8]
 80053e0:	685a      	ldr	r2, [r3, #4]
 80053e2:	4298      	cmp	r0, r3
 80053e4:	f022 0203 	bic.w	r2, r2, #3
 80053e8:	d053      	beq.n	8005492 <_free_r+0xd2>
 80053ea:	f01c 0f01 	tst.w	ip, #1
 80053ee:	605a      	str	r2, [r3, #4]
 80053f0:	eb03 0002 	add.w	r0, r3, r2
 80053f4:	d13b      	bne.n	800546e <_free_r+0xae>
 80053f6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80053fa:	6840      	ldr	r0, [r0, #4]
 80053fc:	eba5 050c 	sub.w	r5, r5, ip
 8005400:	f107 0e08 	add.w	lr, r7, #8
 8005404:	68ac      	ldr	r4, [r5, #8]
 8005406:	4574      	cmp	r4, lr
 8005408:	4461      	add	r1, ip
 800540a:	f000 0001 	and.w	r0, r0, #1
 800540e:	d075      	beq.n	80054fc <_free_r+0x13c>
 8005410:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005414:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005418:	f8cc 4008 	str.w	r4, [ip, #8]
 800541c:	b360      	cbz	r0, 8005478 <_free_r+0xb8>
 800541e:	f041 0301 	orr.w	r3, r1, #1
 8005422:	606b      	str	r3, [r5, #4]
 8005424:	5069      	str	r1, [r5, r1]
 8005426:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800542a:	d350      	bcc.n	80054ce <_free_r+0x10e>
 800542c:	0a4b      	lsrs	r3, r1, #9
 800542e:	2b04      	cmp	r3, #4
 8005430:	d870      	bhi.n	8005514 <_free_r+0x154>
 8005432:	098b      	lsrs	r3, r1, #6
 8005434:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005438:	00e4      	lsls	r4, r4, #3
 800543a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800543e:	1938      	adds	r0, r7, r4
 8005440:	593b      	ldr	r3, [r7, r4]
 8005442:	3808      	subs	r0, #8
 8005444:	4298      	cmp	r0, r3
 8005446:	d078      	beq.n	800553a <_free_r+0x17a>
 8005448:	685a      	ldr	r2, [r3, #4]
 800544a:	f022 0203 	bic.w	r2, r2, #3
 800544e:	428a      	cmp	r2, r1
 8005450:	d971      	bls.n	8005536 <_free_r+0x176>
 8005452:	689b      	ldr	r3, [r3, #8]
 8005454:	4298      	cmp	r0, r3
 8005456:	d1f7      	bne.n	8005448 <_free_r+0x88>
 8005458:	68c3      	ldr	r3, [r0, #12]
 800545a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800545e:	609d      	str	r5, [r3, #8]
 8005460:	60c5      	str	r5, [r0, #12]
 8005462:	4630      	mov	r0, r6
 8005464:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005468:	f000 bde2 	b.w	8006030 <__malloc_unlock>
 800546c:	4770      	bx	lr
 800546e:	6840      	ldr	r0, [r0, #4]
 8005470:	f000 0001 	and.w	r0, r0, #1
 8005474:	2800      	cmp	r0, #0
 8005476:	d1d2      	bne.n	800541e <_free_r+0x5e>
 8005478:	6898      	ldr	r0, [r3, #8]
 800547a:	4c48      	ldr	r4, [pc, #288]	; (800559c <_free_r+0x1dc>)
 800547c:	4411      	add	r1, r2
 800547e:	42a0      	cmp	r0, r4
 8005480:	f041 0201 	orr.w	r2, r1, #1
 8005484:	d062      	beq.n	800554c <_free_r+0x18c>
 8005486:	68db      	ldr	r3, [r3, #12]
 8005488:	60c3      	str	r3, [r0, #12]
 800548a:	6098      	str	r0, [r3, #8]
 800548c:	606a      	str	r2, [r5, #4]
 800548e:	5069      	str	r1, [r5, r1]
 8005490:	e7c9      	b.n	8005426 <_free_r+0x66>
 8005492:	f01c 0f01 	tst.w	ip, #1
 8005496:	440a      	add	r2, r1
 8005498:	d107      	bne.n	80054aa <_free_r+0xea>
 800549a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800549e:	1aed      	subs	r5, r5, r3
 80054a0:	441a      	add	r2, r3
 80054a2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80054a6:	60cb      	str	r3, [r1, #12]
 80054a8:	6099      	str	r1, [r3, #8]
 80054aa:	4b3d      	ldr	r3, [pc, #244]	; (80055a0 <_free_r+0x1e0>)
 80054ac:	681b      	ldr	r3, [r3, #0]
 80054ae:	f042 0101 	orr.w	r1, r2, #1
 80054b2:	4293      	cmp	r3, r2
 80054b4:	6069      	str	r1, [r5, #4]
 80054b6:	60bd      	str	r5, [r7, #8]
 80054b8:	d804      	bhi.n	80054c4 <_free_r+0x104>
 80054ba:	4b3a      	ldr	r3, [pc, #232]	; (80055a4 <_free_r+0x1e4>)
 80054bc:	4630      	mov	r0, r6
 80054be:	6819      	ldr	r1, [r3, #0]
 80054c0:	f7ff ff2e 	bl	8005320 <_malloc_trim_r>
 80054c4:	4630      	mov	r0, r6
 80054c6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054ca:	f000 bdb1 	b.w	8006030 <__malloc_unlock>
 80054ce:	08c9      	lsrs	r1, r1, #3
 80054d0:	6878      	ldr	r0, [r7, #4]
 80054d2:	1c4a      	adds	r2, r1, #1
 80054d4:	2301      	movs	r3, #1
 80054d6:	1089      	asrs	r1, r1, #2
 80054d8:	408b      	lsls	r3, r1
 80054da:	4303      	orrs	r3, r0
 80054dc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80054e0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80054e4:	607b      	str	r3, [r7, #4]
 80054e6:	3908      	subs	r1, #8
 80054e8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80054ec:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80054f0:	60c5      	str	r5, [r0, #12]
 80054f2:	4630      	mov	r0, r6
 80054f4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054f8:	f000 bd9a 	b.w	8006030 <__malloc_unlock>
 80054fc:	2800      	cmp	r0, #0
 80054fe:	d145      	bne.n	800558c <_free_r+0x1cc>
 8005500:	440a      	add	r2, r1
 8005502:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005506:	f042 0001 	orr.w	r0, r2, #1
 800550a:	60cb      	str	r3, [r1, #12]
 800550c:	6099      	str	r1, [r3, #8]
 800550e:	6068      	str	r0, [r5, #4]
 8005510:	50aa      	str	r2, [r5, r2]
 8005512:	e7d7      	b.n	80054c4 <_free_r+0x104>
 8005514:	2b14      	cmp	r3, #20
 8005516:	d908      	bls.n	800552a <_free_r+0x16a>
 8005518:	2b54      	cmp	r3, #84	; 0x54
 800551a:	d81e      	bhi.n	800555a <_free_r+0x19a>
 800551c:	0b0b      	lsrs	r3, r1, #12
 800551e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005522:	00e4      	lsls	r4, r4, #3
 8005524:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005528:	e789      	b.n	800543e <_free_r+0x7e>
 800552a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800552e:	00e4      	lsls	r4, r4, #3
 8005530:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005534:	e783      	b.n	800543e <_free_r+0x7e>
 8005536:	4618      	mov	r0, r3
 8005538:	e78e      	b.n	8005458 <_free_r+0x98>
 800553a:	1093      	asrs	r3, r2, #2
 800553c:	6879      	ldr	r1, [r7, #4]
 800553e:	2201      	movs	r2, #1
 8005540:	fa02 f303 	lsl.w	r3, r2, r3
 8005544:	430b      	orrs	r3, r1
 8005546:	607b      	str	r3, [r7, #4]
 8005548:	4603      	mov	r3, r0
 800554a:	e786      	b.n	800545a <_free_r+0x9a>
 800554c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005550:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005554:	606a      	str	r2, [r5, #4]
 8005556:	5069      	str	r1, [r5, r1]
 8005558:	e7b4      	b.n	80054c4 <_free_r+0x104>
 800555a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800555e:	d806      	bhi.n	800556e <_free_r+0x1ae>
 8005560:	0bcb      	lsrs	r3, r1, #15
 8005562:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005566:	00e4      	lsls	r4, r4, #3
 8005568:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800556c:	e767      	b.n	800543e <_free_r+0x7e>
 800556e:	f240 5254 	movw	r2, #1364	; 0x554
 8005572:	4293      	cmp	r3, r2
 8005574:	d806      	bhi.n	8005584 <_free_r+0x1c4>
 8005576:	0c8b      	lsrs	r3, r1, #18
 8005578:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800557c:	00e4      	lsls	r4, r4, #3
 800557e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005582:	e75c      	b.n	800543e <_free_r+0x7e>
 8005584:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005588:	227e      	movs	r2, #126	; 0x7e
 800558a:	e758      	b.n	800543e <_free_r+0x7e>
 800558c:	f041 0201 	orr.w	r2, r1, #1
 8005590:	606a      	str	r2, [r5, #4]
 8005592:	6019      	str	r1, [r3, #0]
 8005594:	e796      	b.n	80054c4 <_free_r+0x104>
 8005596:	bf00      	nop
 8005598:	2000046c 	.word	0x2000046c
 800559c:	20000474 	.word	0x20000474
 80055a0:	20000878 	.word	0x20000878
 80055a4:	20000ac0 	.word	0x20000ac0

080055a8 <__sfvwrite_r>:
 80055a8:	6893      	ldr	r3, [r2, #8]
 80055aa:	2b00      	cmp	r3, #0
 80055ac:	f000 80e4 	beq.w	8005778 <__sfvwrite_r+0x1d0>
 80055b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055b4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80055b8:	b29b      	uxth	r3, r3
 80055ba:	460c      	mov	r4, r1
 80055bc:	0719      	lsls	r1, r3, #28
 80055be:	b083      	sub	sp, #12
 80055c0:	4682      	mov	sl, r0
 80055c2:	4690      	mov	r8, r2
 80055c4:	d535      	bpl.n	8005632 <__sfvwrite_r+0x8a>
 80055c6:	6922      	ldr	r2, [r4, #16]
 80055c8:	b39a      	cbz	r2, 8005632 <__sfvwrite_r+0x8a>
 80055ca:	f013 0202 	ands.w	r2, r3, #2
 80055ce:	f8d8 6000 	ldr.w	r6, [r8]
 80055d2:	d03d      	beq.n	8005650 <__sfvwrite_r+0xa8>
 80055d4:	2700      	movs	r7, #0
 80055d6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055da:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055de:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80058a0 <__sfvwrite_r+0x2f8>
 80055e2:	463d      	mov	r5, r7
 80055e4:	454d      	cmp	r5, r9
 80055e6:	462b      	mov	r3, r5
 80055e8:	463a      	mov	r2, r7
 80055ea:	bf28      	it	cs
 80055ec:	464b      	movcs	r3, r9
 80055ee:	4661      	mov	r1, ip
 80055f0:	4650      	mov	r0, sl
 80055f2:	b1d5      	cbz	r5, 800562a <__sfvwrite_r+0x82>
 80055f4:	47d8      	blx	fp
 80055f6:	2800      	cmp	r0, #0
 80055f8:	f340 80c6 	ble.w	8005788 <__sfvwrite_r+0x1e0>
 80055fc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005600:	1a1b      	subs	r3, r3, r0
 8005602:	4407      	add	r7, r0
 8005604:	1a2d      	subs	r5, r5, r0
 8005606:	f8c8 3008 	str.w	r3, [r8, #8]
 800560a:	2b00      	cmp	r3, #0
 800560c:	f000 80b0 	beq.w	8005770 <__sfvwrite_r+0x1c8>
 8005610:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005614:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005618:	454d      	cmp	r5, r9
 800561a:	462b      	mov	r3, r5
 800561c:	463a      	mov	r2, r7
 800561e:	bf28      	it	cs
 8005620:	464b      	movcs	r3, r9
 8005622:	4661      	mov	r1, ip
 8005624:	4650      	mov	r0, sl
 8005626:	2d00      	cmp	r5, #0
 8005628:	d1e4      	bne.n	80055f4 <__sfvwrite_r+0x4c>
 800562a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800562e:	3608      	adds	r6, #8
 8005630:	e7d8      	b.n	80055e4 <__sfvwrite_r+0x3c>
 8005632:	4621      	mov	r1, r4
 8005634:	4650      	mov	r0, sl
 8005636:	f7fe fd03 	bl	8004040 <__swsetup_r>
 800563a:	2800      	cmp	r0, #0
 800563c:	f040 812a 	bne.w	8005894 <__sfvwrite_r+0x2ec>
 8005640:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005644:	f8d8 6000 	ldr.w	r6, [r8]
 8005648:	b29b      	uxth	r3, r3
 800564a:	f013 0202 	ands.w	r2, r3, #2
 800564e:	d1c1      	bne.n	80055d4 <__sfvwrite_r+0x2c>
 8005650:	f013 0901 	ands.w	r9, r3, #1
 8005654:	d15d      	bne.n	8005712 <__sfvwrite_r+0x16a>
 8005656:	68a7      	ldr	r7, [r4, #8]
 8005658:	6820      	ldr	r0, [r4, #0]
 800565a:	464d      	mov	r5, r9
 800565c:	2d00      	cmp	r5, #0
 800565e:	d054      	beq.n	800570a <__sfvwrite_r+0x162>
 8005660:	059a      	lsls	r2, r3, #22
 8005662:	f140 809b 	bpl.w	800579c <__sfvwrite_r+0x1f4>
 8005666:	42af      	cmp	r7, r5
 8005668:	46bb      	mov	fp, r7
 800566a:	f200 80d8 	bhi.w	800581e <__sfvwrite_r+0x276>
 800566e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005672:	d02f      	beq.n	80056d4 <__sfvwrite_r+0x12c>
 8005674:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005678:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800567c:	eba0 0b01 	sub.w	fp, r0, r1
 8005680:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005684:	1c68      	adds	r0, r5, #1
 8005686:	107f      	asrs	r7, r7, #1
 8005688:	4458      	add	r0, fp
 800568a:	42b8      	cmp	r0, r7
 800568c:	463a      	mov	r2, r7
 800568e:	bf84      	itt	hi
 8005690:	4607      	movhi	r7, r0
 8005692:	463a      	movhi	r2, r7
 8005694:	055b      	lsls	r3, r3, #21
 8005696:	f140 80d3 	bpl.w	8005840 <__sfvwrite_r+0x298>
 800569a:	4611      	mov	r1, r2
 800569c:	4650      	mov	r0, sl
 800569e:	f000 f9b9 	bl	8005a14 <_malloc_r>
 80056a2:	2800      	cmp	r0, #0
 80056a4:	f000 80f0 	beq.w	8005888 <__sfvwrite_r+0x2e0>
 80056a8:	465a      	mov	r2, fp
 80056aa:	6921      	ldr	r1, [r4, #16]
 80056ac:	9001      	str	r0, [sp, #4]
 80056ae:	f7fb fb45 	bl	8000d3c <memcpy>
 80056b2:	89a2      	ldrh	r2, [r4, #12]
 80056b4:	9b01      	ldr	r3, [sp, #4]
 80056b6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80056ba:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80056be:	81a2      	strh	r2, [r4, #12]
 80056c0:	eba7 020b 	sub.w	r2, r7, fp
 80056c4:	eb03 000b 	add.w	r0, r3, fp
 80056c8:	6167      	str	r7, [r4, #20]
 80056ca:	6123      	str	r3, [r4, #16]
 80056cc:	6020      	str	r0, [r4, #0]
 80056ce:	60a2      	str	r2, [r4, #8]
 80056d0:	462f      	mov	r7, r5
 80056d2:	46ab      	mov	fp, r5
 80056d4:	465a      	mov	r2, fp
 80056d6:	4649      	mov	r1, r9
 80056d8:	f000 fc40 	bl	8005f5c <memmove>
 80056dc:	68a2      	ldr	r2, [r4, #8]
 80056de:	6823      	ldr	r3, [r4, #0]
 80056e0:	1bd2      	subs	r2, r2, r7
 80056e2:	445b      	add	r3, fp
 80056e4:	462f      	mov	r7, r5
 80056e6:	60a2      	str	r2, [r4, #8]
 80056e8:	6023      	str	r3, [r4, #0]
 80056ea:	2500      	movs	r5, #0
 80056ec:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056f0:	1bdb      	subs	r3, r3, r7
 80056f2:	44b9      	add	r9, r7
 80056f4:	f8c8 3008 	str.w	r3, [r8, #8]
 80056f8:	2b00      	cmp	r3, #0
 80056fa:	d039      	beq.n	8005770 <__sfvwrite_r+0x1c8>
 80056fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005700:	68a7      	ldr	r7, [r4, #8]
 8005702:	6820      	ldr	r0, [r4, #0]
 8005704:	b29b      	uxth	r3, r3
 8005706:	2d00      	cmp	r5, #0
 8005708:	d1aa      	bne.n	8005660 <__sfvwrite_r+0xb8>
 800570a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800570e:	3608      	adds	r6, #8
 8005710:	e7a4      	b.n	800565c <__sfvwrite_r+0xb4>
 8005712:	4633      	mov	r3, r6
 8005714:	4691      	mov	r9, r2
 8005716:	4610      	mov	r0, r2
 8005718:	4617      	mov	r7, r2
 800571a:	464e      	mov	r6, r9
 800571c:	469b      	mov	fp, r3
 800571e:	2f00      	cmp	r7, #0
 8005720:	d06b      	beq.n	80057fa <__sfvwrite_r+0x252>
 8005722:	2800      	cmp	r0, #0
 8005724:	d071      	beq.n	800580a <__sfvwrite_r+0x262>
 8005726:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800572a:	6820      	ldr	r0, [r4, #0]
 800572c:	45b9      	cmp	r9, r7
 800572e:	464b      	mov	r3, r9
 8005730:	bf28      	it	cs
 8005732:	463b      	movcs	r3, r7
 8005734:	4288      	cmp	r0, r1
 8005736:	d903      	bls.n	8005740 <__sfvwrite_r+0x198>
 8005738:	68a5      	ldr	r5, [r4, #8]
 800573a:	4415      	add	r5, r2
 800573c:	42ab      	cmp	r3, r5
 800573e:	dc71      	bgt.n	8005824 <__sfvwrite_r+0x27c>
 8005740:	429a      	cmp	r2, r3
 8005742:	f300 8093 	bgt.w	800586c <__sfvwrite_r+0x2c4>
 8005746:	4613      	mov	r3, r2
 8005748:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800574a:	69e1      	ldr	r1, [r4, #28]
 800574c:	4632      	mov	r2, r6
 800574e:	4650      	mov	r0, sl
 8005750:	47a8      	blx	r5
 8005752:	1e05      	subs	r5, r0, #0
 8005754:	dd18      	ble.n	8005788 <__sfvwrite_r+0x1e0>
 8005756:	ebb9 0905 	subs.w	r9, r9, r5
 800575a:	d00f      	beq.n	800577c <__sfvwrite_r+0x1d4>
 800575c:	2001      	movs	r0, #1
 800575e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005762:	1b5b      	subs	r3, r3, r5
 8005764:	442e      	add	r6, r5
 8005766:	1b7f      	subs	r7, r7, r5
 8005768:	f8c8 3008 	str.w	r3, [r8, #8]
 800576c:	2b00      	cmp	r3, #0
 800576e:	d1d6      	bne.n	800571e <__sfvwrite_r+0x176>
 8005770:	2000      	movs	r0, #0
 8005772:	b003      	add	sp, #12
 8005774:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005778:	2000      	movs	r0, #0
 800577a:	4770      	bx	lr
 800577c:	4621      	mov	r1, r4
 800577e:	4650      	mov	r0, sl
 8005780:	f7ff fd20 	bl	80051c4 <_fflush_r>
 8005784:	2800      	cmp	r0, #0
 8005786:	d0ea      	beq.n	800575e <__sfvwrite_r+0x1b6>
 8005788:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800578c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005790:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005794:	81a3      	strh	r3, [r4, #12]
 8005796:	b003      	add	sp, #12
 8005798:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800579c:	6923      	ldr	r3, [r4, #16]
 800579e:	4283      	cmp	r3, r0
 80057a0:	d315      	bcc.n	80057ce <__sfvwrite_r+0x226>
 80057a2:	6961      	ldr	r1, [r4, #20]
 80057a4:	42a9      	cmp	r1, r5
 80057a6:	d812      	bhi.n	80057ce <__sfvwrite_r+0x226>
 80057a8:	4b3c      	ldr	r3, [pc, #240]	; (800589c <__sfvwrite_r+0x2f4>)
 80057aa:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80057ac:	429d      	cmp	r5, r3
 80057ae:	bf94      	ite	ls
 80057b0:	462b      	movls	r3, r5
 80057b2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80057b6:	464a      	mov	r2, r9
 80057b8:	fb93 f3f1 	sdiv	r3, r3, r1
 80057bc:	4650      	mov	r0, sl
 80057be:	fb01 f303 	mul.w	r3, r1, r3
 80057c2:	69e1      	ldr	r1, [r4, #28]
 80057c4:	47b8      	blx	r7
 80057c6:	1e07      	subs	r7, r0, #0
 80057c8:	ddde      	ble.n	8005788 <__sfvwrite_r+0x1e0>
 80057ca:	1bed      	subs	r5, r5, r7
 80057cc:	e78e      	b.n	80056ec <__sfvwrite_r+0x144>
 80057ce:	42af      	cmp	r7, r5
 80057d0:	bf28      	it	cs
 80057d2:	462f      	movcs	r7, r5
 80057d4:	463a      	mov	r2, r7
 80057d6:	4649      	mov	r1, r9
 80057d8:	f000 fbc0 	bl	8005f5c <memmove>
 80057dc:	68a3      	ldr	r3, [r4, #8]
 80057de:	6822      	ldr	r2, [r4, #0]
 80057e0:	1bdb      	subs	r3, r3, r7
 80057e2:	443a      	add	r2, r7
 80057e4:	60a3      	str	r3, [r4, #8]
 80057e6:	6022      	str	r2, [r4, #0]
 80057e8:	2b00      	cmp	r3, #0
 80057ea:	d1ee      	bne.n	80057ca <__sfvwrite_r+0x222>
 80057ec:	4621      	mov	r1, r4
 80057ee:	4650      	mov	r0, sl
 80057f0:	f7ff fce8 	bl	80051c4 <_fflush_r>
 80057f4:	2800      	cmp	r0, #0
 80057f6:	d0e8      	beq.n	80057ca <__sfvwrite_r+0x222>
 80057f8:	e7c6      	b.n	8005788 <__sfvwrite_r+0x1e0>
 80057fa:	f10b 0308 	add.w	r3, fp, #8
 80057fe:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005802:	469b      	mov	fp, r3
 8005804:	3308      	adds	r3, #8
 8005806:	2f00      	cmp	r7, #0
 8005808:	d0f9      	beq.n	80057fe <__sfvwrite_r+0x256>
 800580a:	463a      	mov	r2, r7
 800580c:	210a      	movs	r1, #10
 800580e:	4630      	mov	r0, r6
 8005810:	f7fb fba6 	bl	8000f60 <memchr>
 8005814:	b338      	cbz	r0, 8005866 <__sfvwrite_r+0x2be>
 8005816:	3001      	adds	r0, #1
 8005818:	eba0 0906 	sub.w	r9, r0, r6
 800581c:	e783      	b.n	8005726 <__sfvwrite_r+0x17e>
 800581e:	462f      	mov	r7, r5
 8005820:	46ab      	mov	fp, r5
 8005822:	e757      	b.n	80056d4 <__sfvwrite_r+0x12c>
 8005824:	4631      	mov	r1, r6
 8005826:	462a      	mov	r2, r5
 8005828:	f000 fb98 	bl	8005f5c <memmove>
 800582c:	6823      	ldr	r3, [r4, #0]
 800582e:	442b      	add	r3, r5
 8005830:	6023      	str	r3, [r4, #0]
 8005832:	4621      	mov	r1, r4
 8005834:	4650      	mov	r0, sl
 8005836:	f7ff fcc5 	bl	80051c4 <_fflush_r>
 800583a:	2800      	cmp	r0, #0
 800583c:	d08b      	beq.n	8005756 <__sfvwrite_r+0x1ae>
 800583e:	e7a3      	b.n	8005788 <__sfvwrite_r+0x1e0>
 8005840:	4650      	mov	r0, sl
 8005842:	f000 ff05 	bl	8006650 <_realloc_r>
 8005846:	4603      	mov	r3, r0
 8005848:	2800      	cmp	r0, #0
 800584a:	f47f af39 	bne.w	80056c0 <__sfvwrite_r+0x118>
 800584e:	6921      	ldr	r1, [r4, #16]
 8005850:	4650      	mov	r0, sl
 8005852:	f7ff fdb5 	bl	80053c0 <_free_r>
 8005856:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800585a:	220c      	movs	r2, #12
 800585c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005860:	f8ca 2000 	str.w	r2, [sl]
 8005864:	e792      	b.n	800578c <__sfvwrite_r+0x1e4>
 8005866:	f107 0901 	add.w	r9, r7, #1
 800586a:	e75c      	b.n	8005726 <__sfvwrite_r+0x17e>
 800586c:	461a      	mov	r2, r3
 800586e:	4631      	mov	r1, r6
 8005870:	9301      	str	r3, [sp, #4]
 8005872:	f000 fb73 	bl	8005f5c <memmove>
 8005876:	9b01      	ldr	r3, [sp, #4]
 8005878:	68a1      	ldr	r1, [r4, #8]
 800587a:	6822      	ldr	r2, [r4, #0]
 800587c:	1ac9      	subs	r1, r1, r3
 800587e:	441a      	add	r2, r3
 8005880:	60a1      	str	r1, [r4, #8]
 8005882:	6022      	str	r2, [r4, #0]
 8005884:	461d      	mov	r5, r3
 8005886:	e766      	b.n	8005756 <__sfvwrite_r+0x1ae>
 8005888:	230c      	movs	r3, #12
 800588a:	f8ca 3000 	str.w	r3, [sl]
 800588e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005892:	e77b      	b.n	800578c <__sfvwrite_r+0x1e4>
 8005894:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005898:	e76b      	b.n	8005772 <__sfvwrite_r+0x1ca>
 800589a:	bf00      	nop
 800589c:	7ffffffe 	.word	0x7ffffffe
 80058a0:	7ffffc00 	.word	0x7ffffc00

080058a4 <_fwalk_reent>:
 80058a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80058a8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80058ac:	d01f      	beq.n	80058ee <_fwalk_reent+0x4a>
 80058ae:	4688      	mov	r8, r1
 80058b0:	4606      	mov	r6, r0
 80058b2:	f04f 0900 	mov.w	r9, #0
 80058b6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80058ba:	3d01      	subs	r5, #1
 80058bc:	d411      	bmi.n	80058e2 <_fwalk_reent+0x3e>
 80058be:	89a3      	ldrh	r3, [r4, #12]
 80058c0:	2b01      	cmp	r3, #1
 80058c2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80058c6:	4621      	mov	r1, r4
 80058c8:	4630      	mov	r0, r6
 80058ca:	d906      	bls.n	80058da <_fwalk_reent+0x36>
 80058cc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80058d0:	3301      	adds	r3, #1
 80058d2:	d002      	beq.n	80058da <_fwalk_reent+0x36>
 80058d4:	47c0      	blx	r8
 80058d6:	ea49 0900 	orr.w	r9, r9, r0
 80058da:	1c6b      	adds	r3, r5, #1
 80058dc:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80058e0:	d1ed      	bne.n	80058be <_fwalk_reent+0x1a>
 80058e2:	683f      	ldr	r7, [r7, #0]
 80058e4:	2f00      	cmp	r7, #0
 80058e6:	d1e6      	bne.n	80058b6 <_fwalk_reent+0x12>
 80058e8:	4648      	mov	r0, r9
 80058ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058ee:	46b9      	mov	r9, r7
 80058f0:	4648      	mov	r0, r9
 80058f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058f6:	bf00      	nop

080058f8 <_localeconv_r>:
 80058f8:	4a04      	ldr	r2, [pc, #16]	; (800590c <_localeconv_r+0x14>)
 80058fa:	4b05      	ldr	r3, [pc, #20]	; (8005910 <_localeconv_r+0x18>)
 80058fc:	6812      	ldr	r2, [r2, #0]
 80058fe:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005900:	2800      	cmp	r0, #0
 8005902:	bf08      	it	eq
 8005904:	4618      	moveq	r0, r3
 8005906:	30f0      	adds	r0, #240	; 0xf0
 8005908:	4770      	bx	lr
 800590a:	bf00      	nop
 800590c:	2000003c 	.word	0x2000003c
 8005910:	2000087c 	.word	0x2000087c

08005914 <__retarget_lock_init_recursive>:
 8005914:	4770      	bx	lr
 8005916:	bf00      	nop

08005918 <__retarget_lock_close_recursive>:
 8005918:	4770      	bx	lr
 800591a:	bf00      	nop

0800591c <__retarget_lock_acquire_recursive>:
 800591c:	4770      	bx	lr
 800591e:	bf00      	nop

08005920 <__retarget_lock_release_recursive>:
 8005920:	4770      	bx	lr
 8005922:	bf00      	nop

08005924 <__swhatbuf_r>:
 8005924:	b570      	push	{r4, r5, r6, lr}
 8005926:	460c      	mov	r4, r1
 8005928:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800592c:	2900      	cmp	r1, #0
 800592e:	b096      	sub	sp, #88	; 0x58
 8005930:	4615      	mov	r5, r2
 8005932:	461e      	mov	r6, r3
 8005934:	da0f      	bge.n	8005956 <__swhatbuf_r+0x32>
 8005936:	89a2      	ldrh	r2, [r4, #12]
 8005938:	2300      	movs	r3, #0
 800593a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800593e:	6033      	str	r3, [r6, #0]
 8005940:	d104      	bne.n	800594c <__swhatbuf_r+0x28>
 8005942:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005946:	602b      	str	r3, [r5, #0]
 8005948:	b016      	add	sp, #88	; 0x58
 800594a:	bd70      	pop	{r4, r5, r6, pc}
 800594c:	2240      	movs	r2, #64	; 0x40
 800594e:	4618      	mov	r0, r3
 8005950:	602a      	str	r2, [r5, #0]
 8005952:	b016      	add	sp, #88	; 0x58
 8005954:	bd70      	pop	{r4, r5, r6, pc}
 8005956:	466a      	mov	r2, sp
 8005958:	f001 fad0 	bl	8006efc <_fstat_r>
 800595c:	2800      	cmp	r0, #0
 800595e:	dbea      	blt.n	8005936 <__swhatbuf_r+0x12>
 8005960:	9b01      	ldr	r3, [sp, #4]
 8005962:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005966:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800596a:	fab3 f383 	clz	r3, r3
 800596e:	095b      	lsrs	r3, r3, #5
 8005970:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005974:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005978:	6033      	str	r3, [r6, #0]
 800597a:	602a      	str	r2, [r5, #0]
 800597c:	b016      	add	sp, #88	; 0x58
 800597e:	bd70      	pop	{r4, r5, r6, pc}

08005980 <__smakebuf_r>:
 8005980:	898a      	ldrh	r2, [r1, #12]
 8005982:	0792      	lsls	r2, r2, #30
 8005984:	460b      	mov	r3, r1
 8005986:	d506      	bpl.n	8005996 <__smakebuf_r+0x16>
 8005988:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800598c:	2101      	movs	r1, #1
 800598e:	601a      	str	r2, [r3, #0]
 8005990:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005994:	4770      	bx	lr
 8005996:	b570      	push	{r4, r5, r6, lr}
 8005998:	b082      	sub	sp, #8
 800599a:	ab01      	add	r3, sp, #4
 800599c:	466a      	mov	r2, sp
 800599e:	460c      	mov	r4, r1
 80059a0:	4605      	mov	r5, r0
 80059a2:	f7ff ffbf 	bl	8005924 <__swhatbuf_r>
 80059a6:	9900      	ldr	r1, [sp, #0]
 80059a8:	4606      	mov	r6, r0
 80059aa:	4628      	mov	r0, r5
 80059ac:	f000 f832 	bl	8005a14 <_malloc_r>
 80059b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059b4:	b1d8      	cbz	r0, 80059ee <__smakebuf_r+0x6e>
 80059b6:	4916      	ldr	r1, [pc, #88]	; (8005a10 <__smakebuf_r+0x90>)
 80059b8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80059ba:	9a01      	ldr	r2, [sp, #4]
 80059bc:	9900      	ldr	r1, [sp, #0]
 80059be:	6020      	str	r0, [r4, #0]
 80059c0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80059c4:	81a3      	strh	r3, [r4, #12]
 80059c6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80059ca:	b91a      	cbnz	r2, 80059d4 <__smakebuf_r+0x54>
 80059cc:	4333      	orrs	r3, r6
 80059ce:	81a3      	strh	r3, [r4, #12]
 80059d0:	b002      	add	sp, #8
 80059d2:	bd70      	pop	{r4, r5, r6, pc}
 80059d4:	4628      	mov	r0, r5
 80059d6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80059da:	f001 faa3 	bl	8006f24 <_isatty_r>
 80059de:	b1a0      	cbz	r0, 8005a0a <__smakebuf_r+0x8a>
 80059e0:	89a3      	ldrh	r3, [r4, #12]
 80059e2:	f023 0303 	bic.w	r3, r3, #3
 80059e6:	f043 0301 	orr.w	r3, r3, #1
 80059ea:	b21b      	sxth	r3, r3
 80059ec:	e7ee      	b.n	80059cc <__smakebuf_r+0x4c>
 80059ee:	059a      	lsls	r2, r3, #22
 80059f0:	d4ee      	bmi.n	80059d0 <__smakebuf_r+0x50>
 80059f2:	f023 0303 	bic.w	r3, r3, #3
 80059f6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80059fa:	f043 0302 	orr.w	r3, r3, #2
 80059fe:	2101      	movs	r1, #1
 8005a00:	81a3      	strh	r3, [r4, #12]
 8005a02:	6022      	str	r2, [r4, #0]
 8005a04:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005a08:	e7e2      	b.n	80059d0 <__smakebuf_r+0x50>
 8005a0a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a0e:	e7dd      	b.n	80059cc <__smakebuf_r+0x4c>
 8005a10:	08005271 	.word	0x08005271

08005a14 <_malloc_r>:
 8005a14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a18:	f101 050b 	add.w	r5, r1, #11
 8005a1c:	2d16      	cmp	r5, #22
 8005a1e:	b083      	sub	sp, #12
 8005a20:	4606      	mov	r6, r0
 8005a22:	d823      	bhi.n	8005a6c <_malloc_r+0x58>
 8005a24:	2910      	cmp	r1, #16
 8005a26:	f200 80b9 	bhi.w	8005b9c <_malloc_r+0x188>
 8005a2a:	f000 fafb 	bl	8006024 <__malloc_lock>
 8005a2e:	2510      	movs	r5, #16
 8005a30:	2318      	movs	r3, #24
 8005a32:	2002      	movs	r0, #2
 8005a34:	4fc5      	ldr	r7, [pc, #788]	; (8005d4c <_malloc_r+0x338>)
 8005a36:	443b      	add	r3, r7
 8005a38:	f1a3 0208 	sub.w	r2, r3, #8
 8005a3c:	685c      	ldr	r4, [r3, #4]
 8005a3e:	4294      	cmp	r4, r2
 8005a40:	f000 8166 	beq.w	8005d10 <_malloc_r+0x2fc>
 8005a44:	6863      	ldr	r3, [r4, #4]
 8005a46:	f023 0303 	bic.w	r3, r3, #3
 8005a4a:	4423      	add	r3, r4
 8005a4c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005a50:	685a      	ldr	r2, [r3, #4]
 8005a52:	60e9      	str	r1, [r5, #12]
 8005a54:	f042 0201 	orr.w	r2, r2, #1
 8005a58:	608d      	str	r5, [r1, #8]
 8005a5a:	4630      	mov	r0, r6
 8005a5c:	605a      	str	r2, [r3, #4]
 8005a5e:	f000 fae7 	bl	8006030 <__malloc_unlock>
 8005a62:	3408      	adds	r4, #8
 8005a64:	4620      	mov	r0, r4
 8005a66:	b003      	add	sp, #12
 8005a68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a6c:	f035 0507 	bics.w	r5, r5, #7
 8005a70:	f100 8094 	bmi.w	8005b9c <_malloc_r+0x188>
 8005a74:	42a9      	cmp	r1, r5
 8005a76:	f200 8091 	bhi.w	8005b9c <_malloc_r+0x188>
 8005a7a:	f000 fad3 	bl	8006024 <__malloc_lock>
 8005a7e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005a82:	f0c0 8183 	bcc.w	8005d8c <_malloc_r+0x378>
 8005a86:	0a6b      	lsrs	r3, r5, #9
 8005a88:	f000 808f 	beq.w	8005baa <_malloc_r+0x196>
 8005a8c:	2b04      	cmp	r3, #4
 8005a8e:	f200 8146 	bhi.w	8005d1e <_malloc_r+0x30a>
 8005a92:	09ab      	lsrs	r3, r5, #6
 8005a94:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005a98:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005a9c:	00c3      	lsls	r3, r0, #3
 8005a9e:	4fab      	ldr	r7, [pc, #684]	; (8005d4c <_malloc_r+0x338>)
 8005aa0:	443b      	add	r3, r7
 8005aa2:	f1a3 0108 	sub.w	r1, r3, #8
 8005aa6:	685c      	ldr	r4, [r3, #4]
 8005aa8:	42a1      	cmp	r1, r4
 8005aaa:	d106      	bne.n	8005aba <_malloc_r+0xa6>
 8005aac:	e00c      	b.n	8005ac8 <_malloc_r+0xb4>
 8005aae:	2a00      	cmp	r2, #0
 8005ab0:	f280 811d 	bge.w	8005cee <_malloc_r+0x2da>
 8005ab4:	68e4      	ldr	r4, [r4, #12]
 8005ab6:	42a1      	cmp	r1, r4
 8005ab8:	d006      	beq.n	8005ac8 <_malloc_r+0xb4>
 8005aba:	6863      	ldr	r3, [r4, #4]
 8005abc:	f023 0303 	bic.w	r3, r3, #3
 8005ac0:	1b5a      	subs	r2, r3, r5
 8005ac2:	2a0f      	cmp	r2, #15
 8005ac4:	ddf3      	ble.n	8005aae <_malloc_r+0x9a>
 8005ac6:	4660      	mov	r0, ip
 8005ac8:	693c      	ldr	r4, [r7, #16]
 8005aca:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005d60 <_malloc_r+0x34c>
 8005ace:	4564      	cmp	r4, ip
 8005ad0:	d071      	beq.n	8005bb6 <_malloc_r+0x1a2>
 8005ad2:	6863      	ldr	r3, [r4, #4]
 8005ad4:	f023 0303 	bic.w	r3, r3, #3
 8005ad8:	1b5a      	subs	r2, r3, r5
 8005ada:	2a0f      	cmp	r2, #15
 8005adc:	f300 8144 	bgt.w	8005d68 <_malloc_r+0x354>
 8005ae0:	2a00      	cmp	r2, #0
 8005ae2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005ae6:	f280 8126 	bge.w	8005d36 <_malloc_r+0x322>
 8005aea:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005aee:	f080 8169 	bcs.w	8005dc4 <_malloc_r+0x3b0>
 8005af2:	08db      	lsrs	r3, r3, #3
 8005af4:	1c59      	adds	r1, r3, #1
 8005af6:	687a      	ldr	r2, [r7, #4]
 8005af8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005afc:	f8c4 8008 	str.w	r8, [r4, #8]
 8005b00:	f04f 0e01 	mov.w	lr, #1
 8005b04:	109b      	asrs	r3, r3, #2
 8005b06:	fa0e f303 	lsl.w	r3, lr, r3
 8005b0a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005b0e:	4313      	orrs	r3, r2
 8005b10:	f1ae 0208 	sub.w	r2, lr, #8
 8005b14:	60e2      	str	r2, [r4, #12]
 8005b16:	607b      	str	r3, [r7, #4]
 8005b18:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005b1c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005b20:	1082      	asrs	r2, r0, #2
 8005b22:	2401      	movs	r4, #1
 8005b24:	4094      	lsls	r4, r2
 8005b26:	429c      	cmp	r4, r3
 8005b28:	d84b      	bhi.n	8005bc2 <_malloc_r+0x1ae>
 8005b2a:	421c      	tst	r4, r3
 8005b2c:	d106      	bne.n	8005b3c <_malloc_r+0x128>
 8005b2e:	f020 0003 	bic.w	r0, r0, #3
 8005b32:	0064      	lsls	r4, r4, #1
 8005b34:	421c      	tst	r4, r3
 8005b36:	f100 0004 	add.w	r0, r0, #4
 8005b3a:	d0fa      	beq.n	8005b32 <_malloc_r+0x11e>
 8005b3c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005b40:	46ce      	mov	lr, r9
 8005b42:	4680      	mov	r8, r0
 8005b44:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005b48:	459e      	cmp	lr, r3
 8005b4a:	d107      	bne.n	8005b5c <_malloc_r+0x148>
 8005b4c:	e122      	b.n	8005d94 <_malloc_r+0x380>
 8005b4e:	2a00      	cmp	r2, #0
 8005b50:	f280 8129 	bge.w	8005da6 <_malloc_r+0x392>
 8005b54:	68db      	ldr	r3, [r3, #12]
 8005b56:	459e      	cmp	lr, r3
 8005b58:	f000 811c 	beq.w	8005d94 <_malloc_r+0x380>
 8005b5c:	6859      	ldr	r1, [r3, #4]
 8005b5e:	f021 0103 	bic.w	r1, r1, #3
 8005b62:	1b4a      	subs	r2, r1, r5
 8005b64:	2a0f      	cmp	r2, #15
 8005b66:	ddf2      	ble.n	8005b4e <_malloc_r+0x13a>
 8005b68:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005b6c:	195c      	adds	r4, r3, r5
 8005b6e:	f045 0501 	orr.w	r5, r5, #1
 8005b72:	605d      	str	r5, [r3, #4]
 8005b74:	f042 0501 	orr.w	r5, r2, #1
 8005b78:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005b7c:	4630      	mov	r0, r6
 8005b7e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005b82:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005b86:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005b8a:	6065      	str	r5, [r4, #4]
 8005b8c:	505a      	str	r2, [r3, r1]
 8005b8e:	9301      	str	r3, [sp, #4]
 8005b90:	f000 fa4e 	bl	8006030 <__malloc_unlock>
 8005b94:	9b01      	ldr	r3, [sp, #4]
 8005b96:	f103 0408 	add.w	r4, r3, #8
 8005b9a:	e763      	b.n	8005a64 <_malloc_r+0x50>
 8005b9c:	2400      	movs	r4, #0
 8005b9e:	230c      	movs	r3, #12
 8005ba0:	4620      	mov	r0, r4
 8005ba2:	6033      	str	r3, [r6, #0]
 8005ba4:	b003      	add	sp, #12
 8005ba6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005baa:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005bae:	2040      	movs	r0, #64	; 0x40
 8005bb0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005bb4:	e773      	b.n	8005a9e <_malloc_r+0x8a>
 8005bb6:	687b      	ldr	r3, [r7, #4]
 8005bb8:	1082      	asrs	r2, r0, #2
 8005bba:	2401      	movs	r4, #1
 8005bbc:	4094      	lsls	r4, r2
 8005bbe:	429c      	cmp	r4, r3
 8005bc0:	d9b3      	bls.n	8005b2a <_malloc_r+0x116>
 8005bc2:	68bc      	ldr	r4, [r7, #8]
 8005bc4:	6863      	ldr	r3, [r4, #4]
 8005bc6:	f023 0903 	bic.w	r9, r3, #3
 8005bca:	45a9      	cmp	r9, r5
 8005bcc:	d303      	bcc.n	8005bd6 <_malloc_r+0x1c2>
 8005bce:	eba9 0305 	sub.w	r3, r9, r5
 8005bd2:	2b0f      	cmp	r3, #15
 8005bd4:	dc7b      	bgt.n	8005cce <_malloc_r+0x2ba>
 8005bd6:	4b5e      	ldr	r3, [pc, #376]	; (8005d50 <_malloc_r+0x33c>)
 8005bd8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005d64 <_malloc_r+0x350>
 8005bdc:	681a      	ldr	r2, [r3, #0]
 8005bde:	f8da 3000 	ldr.w	r3, [sl]
 8005be2:	3301      	adds	r3, #1
 8005be4:	eb05 0802 	add.w	r8, r5, r2
 8005be8:	f000 8148 	beq.w	8005e7c <_malloc_r+0x468>
 8005bec:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005bf0:	f108 080f 	add.w	r8, r8, #15
 8005bf4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005bf8:	f028 080f 	bic.w	r8, r8, #15
 8005bfc:	4641      	mov	r1, r8
 8005bfe:	4630      	mov	r0, r6
 8005c00:	f000 ff08 	bl	8006a14 <_sbrk_r>
 8005c04:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005c08:	4683      	mov	fp, r0
 8005c0a:	f000 8104 	beq.w	8005e16 <_malloc_r+0x402>
 8005c0e:	eb04 0009 	add.w	r0, r4, r9
 8005c12:	4558      	cmp	r0, fp
 8005c14:	f200 80fd 	bhi.w	8005e12 <_malloc_r+0x3fe>
 8005c18:	4a4e      	ldr	r2, [pc, #312]	; (8005d54 <_malloc_r+0x340>)
 8005c1a:	6813      	ldr	r3, [r2, #0]
 8005c1c:	4443      	add	r3, r8
 8005c1e:	6013      	str	r3, [r2, #0]
 8005c20:	f000 814d 	beq.w	8005ebe <_malloc_r+0x4aa>
 8005c24:	f8da 1000 	ldr.w	r1, [sl]
 8005c28:	3101      	adds	r1, #1
 8005c2a:	bf1b      	ittet	ne
 8005c2c:	ebab 0000 	subne.w	r0, fp, r0
 8005c30:	181b      	addne	r3, r3, r0
 8005c32:	f8ca b000 	streq.w	fp, [sl]
 8005c36:	6013      	strne	r3, [r2, #0]
 8005c38:	f01b 0307 	ands.w	r3, fp, #7
 8005c3c:	f000 8134 	beq.w	8005ea8 <_malloc_r+0x494>
 8005c40:	f1c3 0108 	rsb	r1, r3, #8
 8005c44:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005c48:	448b      	add	fp, r1
 8005c4a:	3308      	adds	r3, #8
 8005c4c:	44d8      	add	r8, fp
 8005c4e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005c52:	eba3 0808 	sub.w	r8, r3, r8
 8005c56:	4641      	mov	r1, r8
 8005c58:	4630      	mov	r0, r6
 8005c5a:	9201      	str	r2, [sp, #4]
 8005c5c:	f000 feda 	bl	8006a14 <_sbrk_r>
 8005c60:	1c43      	adds	r3, r0, #1
 8005c62:	9a01      	ldr	r2, [sp, #4]
 8005c64:	f000 8146 	beq.w	8005ef4 <_malloc_r+0x4e0>
 8005c68:	eba0 010b 	sub.w	r1, r0, fp
 8005c6c:	4441      	add	r1, r8
 8005c6e:	f041 0101 	orr.w	r1, r1, #1
 8005c72:	6813      	ldr	r3, [r2, #0]
 8005c74:	f8c7 b008 	str.w	fp, [r7, #8]
 8005c78:	4443      	add	r3, r8
 8005c7a:	42bc      	cmp	r4, r7
 8005c7c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005c80:	6013      	str	r3, [r2, #0]
 8005c82:	d015      	beq.n	8005cb0 <_malloc_r+0x29c>
 8005c84:	f1b9 0f0f 	cmp.w	r9, #15
 8005c88:	f240 8130 	bls.w	8005eec <_malloc_r+0x4d8>
 8005c8c:	6860      	ldr	r0, [r4, #4]
 8005c8e:	f1a9 010c 	sub.w	r1, r9, #12
 8005c92:	f021 0107 	bic.w	r1, r1, #7
 8005c96:	f000 0001 	and.w	r0, r0, #1
 8005c9a:	eb04 0c01 	add.w	ip, r4, r1
 8005c9e:	4308      	orrs	r0, r1
 8005ca0:	f04f 0e05 	mov.w	lr, #5
 8005ca4:	290f      	cmp	r1, #15
 8005ca6:	6060      	str	r0, [r4, #4]
 8005ca8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005cac:	f200 813a 	bhi.w	8005f24 <_malloc_r+0x510>
 8005cb0:	4a29      	ldr	r2, [pc, #164]	; (8005d58 <_malloc_r+0x344>)
 8005cb2:	482a      	ldr	r0, [pc, #168]	; (8005d5c <_malloc_r+0x348>)
 8005cb4:	6811      	ldr	r1, [r2, #0]
 8005cb6:	68bc      	ldr	r4, [r7, #8]
 8005cb8:	428b      	cmp	r3, r1
 8005cba:	6801      	ldr	r1, [r0, #0]
 8005cbc:	bf88      	it	hi
 8005cbe:	6013      	strhi	r3, [r2, #0]
 8005cc0:	6862      	ldr	r2, [r4, #4]
 8005cc2:	428b      	cmp	r3, r1
 8005cc4:	f022 0203 	bic.w	r2, r2, #3
 8005cc8:	bf88      	it	hi
 8005cca:	6003      	strhi	r3, [r0, #0]
 8005ccc:	e0a7      	b.n	8005e1e <_malloc_r+0x40a>
 8005cce:	1962      	adds	r2, r4, r5
 8005cd0:	f043 0301 	orr.w	r3, r3, #1
 8005cd4:	f045 0501 	orr.w	r5, r5, #1
 8005cd8:	6065      	str	r5, [r4, #4]
 8005cda:	4630      	mov	r0, r6
 8005cdc:	60ba      	str	r2, [r7, #8]
 8005cde:	6053      	str	r3, [r2, #4]
 8005ce0:	f000 f9a6 	bl	8006030 <__malloc_unlock>
 8005ce4:	3408      	adds	r4, #8
 8005ce6:	4620      	mov	r0, r4
 8005ce8:	b003      	add	sp, #12
 8005cea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cee:	4423      	add	r3, r4
 8005cf0:	68e1      	ldr	r1, [r4, #12]
 8005cf2:	685a      	ldr	r2, [r3, #4]
 8005cf4:	68a5      	ldr	r5, [r4, #8]
 8005cf6:	f042 0201 	orr.w	r2, r2, #1
 8005cfa:	60e9      	str	r1, [r5, #12]
 8005cfc:	4630      	mov	r0, r6
 8005cfe:	608d      	str	r5, [r1, #8]
 8005d00:	605a      	str	r2, [r3, #4]
 8005d02:	f000 f995 	bl	8006030 <__malloc_unlock>
 8005d06:	3408      	adds	r4, #8
 8005d08:	4620      	mov	r0, r4
 8005d0a:	b003      	add	sp, #12
 8005d0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d10:	68dc      	ldr	r4, [r3, #12]
 8005d12:	42a3      	cmp	r3, r4
 8005d14:	bf08      	it	eq
 8005d16:	3002      	addeq	r0, #2
 8005d18:	f43f aed6 	beq.w	8005ac8 <_malloc_r+0xb4>
 8005d1c:	e692      	b.n	8005a44 <_malloc_r+0x30>
 8005d1e:	2b14      	cmp	r3, #20
 8005d20:	d971      	bls.n	8005e06 <_malloc_r+0x3f2>
 8005d22:	2b54      	cmp	r3, #84	; 0x54
 8005d24:	f200 80ad 	bhi.w	8005e82 <_malloc_r+0x46e>
 8005d28:	0b2b      	lsrs	r3, r5, #12
 8005d2a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005d2e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005d32:	00c3      	lsls	r3, r0, #3
 8005d34:	e6b3      	b.n	8005a9e <_malloc_r+0x8a>
 8005d36:	4423      	add	r3, r4
 8005d38:	4630      	mov	r0, r6
 8005d3a:	685a      	ldr	r2, [r3, #4]
 8005d3c:	f042 0201 	orr.w	r2, r2, #1
 8005d40:	605a      	str	r2, [r3, #4]
 8005d42:	3408      	adds	r4, #8
 8005d44:	f000 f974 	bl	8006030 <__malloc_unlock>
 8005d48:	e68c      	b.n	8005a64 <_malloc_r+0x50>
 8005d4a:	bf00      	nop
 8005d4c:	2000046c 	.word	0x2000046c
 8005d50:	20000ac0 	.word	0x20000ac0
 8005d54:	20000a90 	.word	0x20000a90
 8005d58:	20000ab8 	.word	0x20000ab8
 8005d5c:	20000abc 	.word	0x20000abc
 8005d60:	20000474 	.word	0x20000474
 8005d64:	20000874 	.word	0x20000874
 8005d68:	1961      	adds	r1, r4, r5
 8005d6a:	f045 0e01 	orr.w	lr, r5, #1
 8005d6e:	f042 0501 	orr.w	r5, r2, #1
 8005d72:	f8c4 e004 	str.w	lr, [r4, #4]
 8005d76:	4630      	mov	r0, r6
 8005d78:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005d7c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005d80:	604d      	str	r5, [r1, #4]
 8005d82:	50e2      	str	r2, [r4, r3]
 8005d84:	f000 f954 	bl	8006030 <__malloc_unlock>
 8005d88:	3408      	adds	r4, #8
 8005d8a:	e66b      	b.n	8005a64 <_malloc_r+0x50>
 8005d8c:	08e8      	lsrs	r0, r5, #3
 8005d8e:	f105 0308 	add.w	r3, r5, #8
 8005d92:	e64f      	b.n	8005a34 <_malloc_r+0x20>
 8005d94:	f108 0801 	add.w	r8, r8, #1
 8005d98:	f018 0f03 	tst.w	r8, #3
 8005d9c:	f10e 0e08 	add.w	lr, lr, #8
 8005da0:	f47f aed0 	bne.w	8005b44 <_malloc_r+0x130>
 8005da4:	e052      	b.n	8005e4c <_malloc_r+0x438>
 8005da6:	4419      	add	r1, r3
 8005da8:	461c      	mov	r4, r3
 8005daa:	684a      	ldr	r2, [r1, #4]
 8005dac:	68db      	ldr	r3, [r3, #12]
 8005dae:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005db2:	f042 0201 	orr.w	r2, r2, #1
 8005db6:	604a      	str	r2, [r1, #4]
 8005db8:	4630      	mov	r0, r6
 8005dba:	60eb      	str	r3, [r5, #12]
 8005dbc:	609d      	str	r5, [r3, #8]
 8005dbe:	f000 f937 	bl	8006030 <__malloc_unlock>
 8005dc2:	e64f      	b.n	8005a64 <_malloc_r+0x50>
 8005dc4:	0a5a      	lsrs	r2, r3, #9
 8005dc6:	2a04      	cmp	r2, #4
 8005dc8:	d935      	bls.n	8005e36 <_malloc_r+0x422>
 8005dca:	2a14      	cmp	r2, #20
 8005dcc:	d86f      	bhi.n	8005eae <_malloc_r+0x49a>
 8005dce:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005dd2:	00c9      	lsls	r1, r1, #3
 8005dd4:	325b      	adds	r2, #91	; 0x5b
 8005dd6:	eb07 0e01 	add.w	lr, r7, r1
 8005dda:	5879      	ldr	r1, [r7, r1]
 8005ddc:	f1ae 0e08 	sub.w	lr, lr, #8
 8005de0:	458e      	cmp	lr, r1
 8005de2:	d058      	beq.n	8005e96 <_malloc_r+0x482>
 8005de4:	684a      	ldr	r2, [r1, #4]
 8005de6:	f022 0203 	bic.w	r2, r2, #3
 8005dea:	429a      	cmp	r2, r3
 8005dec:	d902      	bls.n	8005df4 <_malloc_r+0x3e0>
 8005dee:	6889      	ldr	r1, [r1, #8]
 8005df0:	458e      	cmp	lr, r1
 8005df2:	d1f7      	bne.n	8005de4 <_malloc_r+0x3d0>
 8005df4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005df8:	687b      	ldr	r3, [r7, #4]
 8005dfa:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005dfe:	f8ce 4008 	str.w	r4, [lr, #8]
 8005e02:	60cc      	str	r4, [r1, #12]
 8005e04:	e68c      	b.n	8005b20 <_malloc_r+0x10c>
 8005e06:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005e0a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005e0e:	00c3      	lsls	r3, r0, #3
 8005e10:	e645      	b.n	8005a9e <_malloc_r+0x8a>
 8005e12:	42bc      	cmp	r4, r7
 8005e14:	d072      	beq.n	8005efc <_malloc_r+0x4e8>
 8005e16:	68bc      	ldr	r4, [r7, #8]
 8005e18:	6862      	ldr	r2, [r4, #4]
 8005e1a:	f022 0203 	bic.w	r2, r2, #3
 8005e1e:	4295      	cmp	r5, r2
 8005e20:	eba2 0305 	sub.w	r3, r2, r5
 8005e24:	d802      	bhi.n	8005e2c <_malloc_r+0x418>
 8005e26:	2b0f      	cmp	r3, #15
 8005e28:	f73f af51 	bgt.w	8005cce <_malloc_r+0x2ba>
 8005e2c:	4630      	mov	r0, r6
 8005e2e:	f000 f8ff 	bl	8006030 <__malloc_unlock>
 8005e32:	2400      	movs	r4, #0
 8005e34:	e616      	b.n	8005a64 <_malloc_r+0x50>
 8005e36:	099a      	lsrs	r2, r3, #6
 8005e38:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005e3c:	00c9      	lsls	r1, r1, #3
 8005e3e:	3238      	adds	r2, #56	; 0x38
 8005e40:	e7c9      	b.n	8005dd6 <_malloc_r+0x3c2>
 8005e42:	f8d9 9000 	ldr.w	r9, [r9]
 8005e46:	4599      	cmp	r9, r3
 8005e48:	f040 8083 	bne.w	8005f52 <_malloc_r+0x53e>
 8005e4c:	f010 0f03 	tst.w	r0, #3
 8005e50:	f1a9 0308 	sub.w	r3, r9, #8
 8005e54:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005e58:	d1f3      	bne.n	8005e42 <_malloc_r+0x42e>
 8005e5a:	687b      	ldr	r3, [r7, #4]
 8005e5c:	ea23 0304 	bic.w	r3, r3, r4
 8005e60:	607b      	str	r3, [r7, #4]
 8005e62:	0064      	lsls	r4, r4, #1
 8005e64:	429c      	cmp	r4, r3
 8005e66:	f63f aeac 	bhi.w	8005bc2 <_malloc_r+0x1ae>
 8005e6a:	b91c      	cbnz	r4, 8005e74 <_malloc_r+0x460>
 8005e6c:	e6a9      	b.n	8005bc2 <_malloc_r+0x1ae>
 8005e6e:	0064      	lsls	r4, r4, #1
 8005e70:	f108 0804 	add.w	r8, r8, #4
 8005e74:	421c      	tst	r4, r3
 8005e76:	d0fa      	beq.n	8005e6e <_malloc_r+0x45a>
 8005e78:	4640      	mov	r0, r8
 8005e7a:	e65f      	b.n	8005b3c <_malloc_r+0x128>
 8005e7c:	f108 0810 	add.w	r8, r8, #16
 8005e80:	e6bc      	b.n	8005bfc <_malloc_r+0x1e8>
 8005e82:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e86:	d826      	bhi.n	8005ed6 <_malloc_r+0x4c2>
 8005e88:	0beb      	lsrs	r3, r5, #15
 8005e8a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005e8e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005e92:	00c3      	lsls	r3, r0, #3
 8005e94:	e603      	b.n	8005a9e <_malloc_r+0x8a>
 8005e96:	687b      	ldr	r3, [r7, #4]
 8005e98:	1092      	asrs	r2, r2, #2
 8005e9a:	f04f 0801 	mov.w	r8, #1
 8005e9e:	fa08 f202 	lsl.w	r2, r8, r2
 8005ea2:	4313      	orrs	r3, r2
 8005ea4:	607b      	str	r3, [r7, #4]
 8005ea6:	e7a8      	b.n	8005dfa <_malloc_r+0x3e6>
 8005ea8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005eac:	e6ce      	b.n	8005c4c <_malloc_r+0x238>
 8005eae:	2a54      	cmp	r2, #84	; 0x54
 8005eb0:	d829      	bhi.n	8005f06 <_malloc_r+0x4f2>
 8005eb2:	0b1a      	lsrs	r2, r3, #12
 8005eb4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005eb8:	00c9      	lsls	r1, r1, #3
 8005eba:	326e      	adds	r2, #110	; 0x6e
 8005ebc:	e78b      	b.n	8005dd6 <_malloc_r+0x3c2>
 8005ebe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005ec2:	2900      	cmp	r1, #0
 8005ec4:	f47f aeae 	bne.w	8005c24 <_malloc_r+0x210>
 8005ec8:	eb09 0208 	add.w	r2, r9, r8
 8005ecc:	68b9      	ldr	r1, [r7, #8]
 8005ece:	f042 0201 	orr.w	r2, r2, #1
 8005ed2:	604a      	str	r2, [r1, #4]
 8005ed4:	e6ec      	b.n	8005cb0 <_malloc_r+0x29c>
 8005ed6:	f240 5254 	movw	r2, #1364	; 0x554
 8005eda:	4293      	cmp	r3, r2
 8005edc:	d81c      	bhi.n	8005f18 <_malloc_r+0x504>
 8005ede:	0cab      	lsrs	r3, r5, #18
 8005ee0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005ee4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005ee8:	00c3      	lsls	r3, r0, #3
 8005eea:	e5d8      	b.n	8005a9e <_malloc_r+0x8a>
 8005eec:	2301      	movs	r3, #1
 8005eee:	f8cb 3004 	str.w	r3, [fp, #4]
 8005ef2:	e79b      	b.n	8005e2c <_malloc_r+0x418>
 8005ef4:	2101      	movs	r1, #1
 8005ef6:	f04f 0800 	mov.w	r8, #0
 8005efa:	e6ba      	b.n	8005c72 <_malloc_r+0x25e>
 8005efc:	4a16      	ldr	r2, [pc, #88]	; (8005f58 <_malloc_r+0x544>)
 8005efe:	6813      	ldr	r3, [r2, #0]
 8005f00:	4443      	add	r3, r8
 8005f02:	6013      	str	r3, [r2, #0]
 8005f04:	e68e      	b.n	8005c24 <_malloc_r+0x210>
 8005f06:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005f0a:	d814      	bhi.n	8005f36 <_malloc_r+0x522>
 8005f0c:	0bda      	lsrs	r2, r3, #15
 8005f0e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005f12:	00c9      	lsls	r1, r1, #3
 8005f14:	3277      	adds	r2, #119	; 0x77
 8005f16:	e75e      	b.n	8005dd6 <_malloc_r+0x3c2>
 8005f18:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005f1c:	207f      	movs	r0, #127	; 0x7f
 8005f1e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005f22:	e5bc      	b.n	8005a9e <_malloc_r+0x8a>
 8005f24:	f104 0108 	add.w	r1, r4, #8
 8005f28:	4630      	mov	r0, r6
 8005f2a:	9201      	str	r2, [sp, #4]
 8005f2c:	f7ff fa48 	bl	80053c0 <_free_r>
 8005f30:	9a01      	ldr	r2, [sp, #4]
 8005f32:	6813      	ldr	r3, [r2, #0]
 8005f34:	e6bc      	b.n	8005cb0 <_malloc_r+0x29c>
 8005f36:	f240 5154 	movw	r1, #1364	; 0x554
 8005f3a:	428a      	cmp	r2, r1
 8005f3c:	d805      	bhi.n	8005f4a <_malloc_r+0x536>
 8005f3e:	0c9a      	lsrs	r2, r3, #18
 8005f40:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005f44:	00c9      	lsls	r1, r1, #3
 8005f46:	327c      	adds	r2, #124	; 0x7c
 8005f48:	e745      	b.n	8005dd6 <_malloc_r+0x3c2>
 8005f4a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005f4e:	227e      	movs	r2, #126	; 0x7e
 8005f50:	e741      	b.n	8005dd6 <_malloc_r+0x3c2>
 8005f52:	687b      	ldr	r3, [r7, #4]
 8005f54:	e785      	b.n	8005e62 <_malloc_r+0x44e>
 8005f56:	bf00      	nop
 8005f58:	20000a90 	.word	0x20000a90

08005f5c <memmove>:
 8005f5c:	4288      	cmp	r0, r1
 8005f5e:	b4f0      	push	{r4, r5, r6, r7}
 8005f60:	d90d      	bls.n	8005f7e <memmove+0x22>
 8005f62:	188b      	adds	r3, r1, r2
 8005f64:	4283      	cmp	r3, r0
 8005f66:	d90a      	bls.n	8005f7e <memmove+0x22>
 8005f68:	1884      	adds	r4, r0, r2
 8005f6a:	b132      	cbz	r2, 8005f7a <memmove+0x1e>
 8005f6c:	4622      	mov	r2, r4
 8005f6e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005f72:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005f76:	4299      	cmp	r1, r3
 8005f78:	d1f9      	bne.n	8005f6e <memmove+0x12>
 8005f7a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f7c:	4770      	bx	lr
 8005f7e:	2a0f      	cmp	r2, #15
 8005f80:	d949      	bls.n	8006016 <memmove+0xba>
 8005f82:	ea40 0301 	orr.w	r3, r0, r1
 8005f86:	079b      	lsls	r3, r3, #30
 8005f88:	d147      	bne.n	800601a <memmove+0xbe>
 8005f8a:	f1a2 0310 	sub.w	r3, r2, #16
 8005f8e:	091b      	lsrs	r3, r3, #4
 8005f90:	f101 0720 	add.w	r7, r1, #32
 8005f94:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f98:	f101 0410 	add.w	r4, r1, #16
 8005f9c:	f100 0510 	add.w	r5, r0, #16
 8005fa0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005fa4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005fa8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005fac:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005fb0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005fb4:	f845 6c08 	str.w	r6, [r5, #-8]
 8005fb8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005fbc:	f845 6c04 	str.w	r6, [r5, #-4]
 8005fc0:	3410      	adds	r4, #16
 8005fc2:	42bc      	cmp	r4, r7
 8005fc4:	f105 0510 	add.w	r5, r5, #16
 8005fc8:	d1ea      	bne.n	8005fa0 <memmove+0x44>
 8005fca:	3301      	adds	r3, #1
 8005fcc:	f002 050f 	and.w	r5, r2, #15
 8005fd0:	011b      	lsls	r3, r3, #4
 8005fd2:	2d03      	cmp	r5, #3
 8005fd4:	4419      	add	r1, r3
 8005fd6:	4403      	add	r3, r0
 8005fd8:	d921      	bls.n	800601e <memmove+0xc2>
 8005fda:	1f1f      	subs	r7, r3, #4
 8005fdc:	460e      	mov	r6, r1
 8005fde:	462c      	mov	r4, r5
 8005fe0:	3c04      	subs	r4, #4
 8005fe2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005fe6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005fea:	2c03      	cmp	r4, #3
 8005fec:	d8f8      	bhi.n	8005fe0 <memmove+0x84>
 8005fee:	1f2c      	subs	r4, r5, #4
 8005ff0:	f024 0403 	bic.w	r4, r4, #3
 8005ff4:	3404      	adds	r4, #4
 8005ff6:	4423      	add	r3, r4
 8005ff8:	4421      	add	r1, r4
 8005ffa:	f002 0203 	and.w	r2, r2, #3
 8005ffe:	2a00      	cmp	r2, #0
 8006000:	d0bb      	beq.n	8005f7a <memmove+0x1e>
 8006002:	3b01      	subs	r3, #1
 8006004:	440a      	add	r2, r1
 8006006:	f811 4b01 	ldrb.w	r4, [r1], #1
 800600a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800600e:	4291      	cmp	r1, r2
 8006010:	d1f9      	bne.n	8006006 <memmove+0xaa>
 8006012:	bcf0      	pop	{r4, r5, r6, r7}
 8006014:	4770      	bx	lr
 8006016:	4603      	mov	r3, r0
 8006018:	e7f1      	b.n	8005ffe <memmove+0xa2>
 800601a:	4603      	mov	r3, r0
 800601c:	e7f1      	b.n	8006002 <memmove+0xa6>
 800601e:	462a      	mov	r2, r5
 8006020:	e7ed      	b.n	8005ffe <memmove+0xa2>
 8006022:	bf00      	nop

08006024 <__malloc_lock>:
 8006024:	4801      	ldr	r0, [pc, #4]	; (800602c <__malloc_lock+0x8>)
 8006026:	f7ff bc79 	b.w	800591c <__retarget_lock_acquire_recursive>
 800602a:	bf00      	nop
 800602c:	20000b34 	.word	0x20000b34

08006030 <__malloc_unlock>:
 8006030:	4801      	ldr	r0, [pc, #4]	; (8006038 <__malloc_unlock+0x8>)
 8006032:	f7ff bc75 	b.w	8005920 <__retarget_lock_release_recursive>
 8006036:	bf00      	nop
 8006038:	20000b34 	.word	0x20000b34

0800603c <_Balloc>:
 800603c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800603e:	b570      	push	{r4, r5, r6, lr}
 8006040:	4605      	mov	r5, r0
 8006042:	460c      	mov	r4, r1
 8006044:	b14b      	cbz	r3, 800605a <_Balloc+0x1e>
 8006046:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800604a:	b180      	cbz	r0, 800606e <_Balloc+0x32>
 800604c:	6802      	ldr	r2, [r0, #0]
 800604e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006052:	2300      	movs	r3, #0
 8006054:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006058:	bd70      	pop	{r4, r5, r6, pc}
 800605a:	2221      	movs	r2, #33	; 0x21
 800605c:	2104      	movs	r1, #4
 800605e:	f000 fe1d 	bl	8006c9c <_calloc_r>
 8006062:	4603      	mov	r3, r0
 8006064:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006066:	2800      	cmp	r0, #0
 8006068:	d1ed      	bne.n	8006046 <_Balloc+0xa>
 800606a:	2000      	movs	r0, #0
 800606c:	bd70      	pop	{r4, r5, r6, pc}
 800606e:	2101      	movs	r1, #1
 8006070:	fa01 f604 	lsl.w	r6, r1, r4
 8006074:	1d72      	adds	r2, r6, #5
 8006076:	4628      	mov	r0, r5
 8006078:	0092      	lsls	r2, r2, #2
 800607a:	f000 fe0f 	bl	8006c9c <_calloc_r>
 800607e:	2800      	cmp	r0, #0
 8006080:	d0f3      	beq.n	800606a <_Balloc+0x2e>
 8006082:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006086:	e7e4      	b.n	8006052 <_Balloc+0x16>

08006088 <_Bfree>:
 8006088:	b131      	cbz	r1, 8006098 <_Bfree+0x10>
 800608a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800608c:	684a      	ldr	r2, [r1, #4]
 800608e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006092:	6008      	str	r0, [r1, #0]
 8006094:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006098:	4770      	bx	lr
 800609a:	bf00      	nop

0800609c <__multadd>:
 800609c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800609e:	690c      	ldr	r4, [r1, #16]
 80060a0:	b083      	sub	sp, #12
 80060a2:	460d      	mov	r5, r1
 80060a4:	4606      	mov	r6, r0
 80060a6:	f101 0c14 	add.w	ip, r1, #20
 80060aa:	2700      	movs	r7, #0
 80060ac:	f8dc 0000 	ldr.w	r0, [ip]
 80060b0:	b281      	uxth	r1, r0
 80060b2:	fb02 3301 	mla	r3, r2, r1, r3
 80060b6:	0c01      	lsrs	r1, r0, #16
 80060b8:	0c18      	lsrs	r0, r3, #16
 80060ba:	fb02 0101 	mla	r1, r2, r1, r0
 80060be:	b29b      	uxth	r3, r3
 80060c0:	3701      	adds	r7, #1
 80060c2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80060c6:	42bc      	cmp	r4, r7
 80060c8:	f84c 3b04 	str.w	r3, [ip], #4
 80060cc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80060d0:	dcec      	bgt.n	80060ac <__multadd+0x10>
 80060d2:	b13b      	cbz	r3, 80060e4 <__multadd+0x48>
 80060d4:	68aa      	ldr	r2, [r5, #8]
 80060d6:	42a2      	cmp	r2, r4
 80060d8:	dd07      	ble.n	80060ea <__multadd+0x4e>
 80060da:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80060de:	3401      	adds	r4, #1
 80060e0:	6153      	str	r3, [r2, #20]
 80060e2:	612c      	str	r4, [r5, #16]
 80060e4:	4628      	mov	r0, r5
 80060e6:	b003      	add	sp, #12
 80060e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060ea:	6869      	ldr	r1, [r5, #4]
 80060ec:	9301      	str	r3, [sp, #4]
 80060ee:	3101      	adds	r1, #1
 80060f0:	4630      	mov	r0, r6
 80060f2:	f7ff ffa3 	bl	800603c <_Balloc>
 80060f6:	692a      	ldr	r2, [r5, #16]
 80060f8:	3202      	adds	r2, #2
 80060fa:	f105 010c 	add.w	r1, r5, #12
 80060fe:	4607      	mov	r7, r0
 8006100:	0092      	lsls	r2, r2, #2
 8006102:	300c      	adds	r0, #12
 8006104:	f7fa fe1a 	bl	8000d3c <memcpy>
 8006108:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800610a:	6869      	ldr	r1, [r5, #4]
 800610c:	9b01      	ldr	r3, [sp, #4]
 800610e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006112:	6028      	str	r0, [r5, #0]
 8006114:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006118:	463d      	mov	r5, r7
 800611a:	e7de      	b.n	80060da <__multadd+0x3e>

0800611c <__hi0bits>:
 800611c:	0c02      	lsrs	r2, r0, #16
 800611e:	0412      	lsls	r2, r2, #16
 8006120:	4603      	mov	r3, r0
 8006122:	b9c2      	cbnz	r2, 8006156 <__hi0bits+0x3a>
 8006124:	0403      	lsls	r3, r0, #16
 8006126:	2010      	movs	r0, #16
 8006128:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800612c:	bf04      	itt	eq
 800612e:	021b      	lsleq	r3, r3, #8
 8006130:	3008      	addeq	r0, #8
 8006132:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006136:	bf04      	itt	eq
 8006138:	011b      	lsleq	r3, r3, #4
 800613a:	3004      	addeq	r0, #4
 800613c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006140:	bf04      	itt	eq
 8006142:	009b      	lsleq	r3, r3, #2
 8006144:	3002      	addeq	r0, #2
 8006146:	2b00      	cmp	r3, #0
 8006148:	db04      	blt.n	8006154 <__hi0bits+0x38>
 800614a:	005b      	lsls	r3, r3, #1
 800614c:	d501      	bpl.n	8006152 <__hi0bits+0x36>
 800614e:	3001      	adds	r0, #1
 8006150:	4770      	bx	lr
 8006152:	2020      	movs	r0, #32
 8006154:	4770      	bx	lr
 8006156:	2000      	movs	r0, #0
 8006158:	e7e6      	b.n	8006128 <__hi0bits+0xc>
 800615a:	bf00      	nop

0800615c <__lo0bits>:
 800615c:	6803      	ldr	r3, [r0, #0]
 800615e:	f013 0207 	ands.w	r2, r3, #7
 8006162:	4601      	mov	r1, r0
 8006164:	d007      	beq.n	8006176 <__lo0bits+0x1a>
 8006166:	07da      	lsls	r2, r3, #31
 8006168:	d41f      	bmi.n	80061aa <__lo0bits+0x4e>
 800616a:	0798      	lsls	r0, r3, #30
 800616c:	d51f      	bpl.n	80061ae <__lo0bits+0x52>
 800616e:	085b      	lsrs	r3, r3, #1
 8006170:	600b      	str	r3, [r1, #0]
 8006172:	2001      	movs	r0, #1
 8006174:	4770      	bx	lr
 8006176:	b298      	uxth	r0, r3
 8006178:	b1a0      	cbz	r0, 80061a4 <__lo0bits+0x48>
 800617a:	4610      	mov	r0, r2
 800617c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006180:	bf04      	itt	eq
 8006182:	0a1b      	lsreq	r3, r3, #8
 8006184:	3008      	addeq	r0, #8
 8006186:	071a      	lsls	r2, r3, #28
 8006188:	bf04      	itt	eq
 800618a:	091b      	lsreq	r3, r3, #4
 800618c:	3004      	addeq	r0, #4
 800618e:	079a      	lsls	r2, r3, #30
 8006190:	bf04      	itt	eq
 8006192:	089b      	lsreq	r3, r3, #2
 8006194:	3002      	addeq	r0, #2
 8006196:	07da      	lsls	r2, r3, #31
 8006198:	d402      	bmi.n	80061a0 <__lo0bits+0x44>
 800619a:	085b      	lsrs	r3, r3, #1
 800619c:	d00b      	beq.n	80061b6 <__lo0bits+0x5a>
 800619e:	3001      	adds	r0, #1
 80061a0:	600b      	str	r3, [r1, #0]
 80061a2:	4770      	bx	lr
 80061a4:	0c1b      	lsrs	r3, r3, #16
 80061a6:	2010      	movs	r0, #16
 80061a8:	e7e8      	b.n	800617c <__lo0bits+0x20>
 80061aa:	2000      	movs	r0, #0
 80061ac:	4770      	bx	lr
 80061ae:	089b      	lsrs	r3, r3, #2
 80061b0:	600b      	str	r3, [r1, #0]
 80061b2:	2002      	movs	r0, #2
 80061b4:	4770      	bx	lr
 80061b6:	2020      	movs	r0, #32
 80061b8:	4770      	bx	lr
 80061ba:	bf00      	nop

080061bc <__i2b>:
 80061bc:	b510      	push	{r4, lr}
 80061be:	460c      	mov	r4, r1
 80061c0:	2101      	movs	r1, #1
 80061c2:	f7ff ff3b 	bl	800603c <_Balloc>
 80061c6:	2201      	movs	r2, #1
 80061c8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80061cc:	bd10      	pop	{r4, pc}
 80061ce:	bf00      	nop

080061d0 <__multiply>:
 80061d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80061d4:	690e      	ldr	r6, [r1, #16]
 80061d6:	6914      	ldr	r4, [r2, #16]
 80061d8:	42a6      	cmp	r6, r4
 80061da:	b083      	sub	sp, #12
 80061dc:	460f      	mov	r7, r1
 80061de:	4615      	mov	r5, r2
 80061e0:	da04      	bge.n	80061ec <__multiply+0x1c>
 80061e2:	4632      	mov	r2, r6
 80061e4:	462f      	mov	r7, r5
 80061e6:	4626      	mov	r6, r4
 80061e8:	460d      	mov	r5, r1
 80061ea:	4614      	mov	r4, r2
 80061ec:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80061f0:	eb06 0804 	add.w	r8, r6, r4
 80061f4:	4543      	cmp	r3, r8
 80061f6:	bfb8      	it	lt
 80061f8:	3101      	addlt	r1, #1
 80061fa:	f7ff ff1f 	bl	800603c <_Balloc>
 80061fe:	f100 0914 	add.w	r9, r0, #20
 8006202:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006206:	45f1      	cmp	r9, lr
 8006208:	9000      	str	r0, [sp, #0]
 800620a:	d205      	bcs.n	8006218 <__multiply+0x48>
 800620c:	464b      	mov	r3, r9
 800620e:	2200      	movs	r2, #0
 8006210:	f843 2b04 	str.w	r2, [r3], #4
 8006214:	459e      	cmp	lr, r3
 8006216:	d8fb      	bhi.n	8006210 <__multiply+0x40>
 8006218:	f105 0a14 	add.w	sl, r5, #20
 800621c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006220:	f107 0314 	add.w	r3, r7, #20
 8006224:	45a2      	cmp	sl, r4
 8006226:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800622a:	d261      	bcs.n	80062f0 <__multiply+0x120>
 800622c:	1b64      	subs	r4, r4, r5
 800622e:	3c15      	subs	r4, #21
 8006230:	f024 0403 	bic.w	r4, r4, #3
 8006234:	f8cd e004 	str.w	lr, [sp, #4]
 8006238:	44a2      	add	sl, r4
 800623a:	f105 0210 	add.w	r2, r5, #16
 800623e:	469e      	mov	lr, r3
 8006240:	e005      	b.n	800624e <__multiply+0x7e>
 8006242:	0c2d      	lsrs	r5, r5, #16
 8006244:	d12b      	bne.n	800629e <__multiply+0xce>
 8006246:	4592      	cmp	sl, r2
 8006248:	f109 0904 	add.w	r9, r9, #4
 800624c:	d04e      	beq.n	80062ec <__multiply+0x11c>
 800624e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006252:	fa1f fb85 	uxth.w	fp, r5
 8006256:	f1bb 0f00 	cmp.w	fp, #0
 800625a:	d0f2      	beq.n	8006242 <__multiply+0x72>
 800625c:	4677      	mov	r7, lr
 800625e:	464e      	mov	r6, r9
 8006260:	2000      	movs	r0, #0
 8006262:	e000      	b.n	8006266 <__multiply+0x96>
 8006264:	4626      	mov	r6, r4
 8006266:	f857 1b04 	ldr.w	r1, [r7], #4
 800626a:	6834      	ldr	r4, [r6, #0]
 800626c:	b28b      	uxth	r3, r1
 800626e:	b2a5      	uxth	r5, r4
 8006270:	0c09      	lsrs	r1, r1, #16
 8006272:	0c24      	lsrs	r4, r4, #16
 8006274:	fb0b 5303 	mla	r3, fp, r3, r5
 8006278:	4403      	add	r3, r0
 800627a:	fb0b 4001 	mla	r0, fp, r1, r4
 800627e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006282:	4634      	mov	r4, r6
 8006284:	b29b      	uxth	r3, r3
 8006286:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800628a:	45bc      	cmp	ip, r7
 800628c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006290:	f844 3b04 	str.w	r3, [r4], #4
 8006294:	d8e6      	bhi.n	8006264 <__multiply+0x94>
 8006296:	6070      	str	r0, [r6, #4]
 8006298:	6815      	ldr	r5, [r2, #0]
 800629a:	0c2d      	lsrs	r5, r5, #16
 800629c:	d0d3      	beq.n	8006246 <__multiply+0x76>
 800629e:	f8d9 3000 	ldr.w	r3, [r9]
 80062a2:	4676      	mov	r6, lr
 80062a4:	4618      	mov	r0, r3
 80062a6:	46cb      	mov	fp, r9
 80062a8:	2100      	movs	r1, #0
 80062aa:	e000      	b.n	80062ae <__multiply+0xde>
 80062ac:	46a3      	mov	fp, r4
 80062ae:	8834      	ldrh	r4, [r6, #0]
 80062b0:	0c00      	lsrs	r0, r0, #16
 80062b2:	fb05 0004 	mla	r0, r5, r4, r0
 80062b6:	4401      	add	r1, r0
 80062b8:	b29b      	uxth	r3, r3
 80062ba:	465c      	mov	r4, fp
 80062bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80062c0:	f844 3b04 	str.w	r3, [r4], #4
 80062c4:	f856 3b04 	ldr.w	r3, [r6], #4
 80062c8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80062cc:	0c1b      	lsrs	r3, r3, #16
 80062ce:	b287      	uxth	r7, r0
 80062d0:	fb05 7303 	mla	r3, r5, r3, r7
 80062d4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80062d8:	45b4      	cmp	ip, r6
 80062da:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80062de:	d8e5      	bhi.n	80062ac <__multiply+0xdc>
 80062e0:	4592      	cmp	sl, r2
 80062e2:	f8cb 3004 	str.w	r3, [fp, #4]
 80062e6:	f109 0904 	add.w	r9, r9, #4
 80062ea:	d1b0      	bne.n	800624e <__multiply+0x7e>
 80062ec:	f8dd e004 	ldr.w	lr, [sp, #4]
 80062f0:	f1b8 0f00 	cmp.w	r8, #0
 80062f4:	dd0b      	ble.n	800630e <__multiply+0x13e>
 80062f6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80062fa:	f1ae 0e04 	sub.w	lr, lr, #4
 80062fe:	b11b      	cbz	r3, 8006308 <__multiply+0x138>
 8006300:	e005      	b.n	800630e <__multiply+0x13e>
 8006302:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006306:	b913      	cbnz	r3, 800630e <__multiply+0x13e>
 8006308:	f1b8 0801 	subs.w	r8, r8, #1
 800630c:	d1f9      	bne.n	8006302 <__multiply+0x132>
 800630e:	9800      	ldr	r0, [sp, #0]
 8006310:	f8c0 8010 	str.w	r8, [r0, #16]
 8006314:	b003      	add	sp, #12
 8006316:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800631a:	bf00      	nop

0800631c <__pow5mult>:
 800631c:	f012 0303 	ands.w	r3, r2, #3
 8006320:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006324:	4614      	mov	r4, r2
 8006326:	4607      	mov	r7, r0
 8006328:	d12e      	bne.n	8006388 <__pow5mult+0x6c>
 800632a:	460d      	mov	r5, r1
 800632c:	10a4      	asrs	r4, r4, #2
 800632e:	d01c      	beq.n	800636a <__pow5mult+0x4e>
 8006330:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006332:	b396      	cbz	r6, 800639a <__pow5mult+0x7e>
 8006334:	07e3      	lsls	r3, r4, #31
 8006336:	f04f 0800 	mov.w	r8, #0
 800633a:	d406      	bmi.n	800634a <__pow5mult+0x2e>
 800633c:	1064      	asrs	r4, r4, #1
 800633e:	d014      	beq.n	800636a <__pow5mult+0x4e>
 8006340:	6830      	ldr	r0, [r6, #0]
 8006342:	b1a8      	cbz	r0, 8006370 <__pow5mult+0x54>
 8006344:	4606      	mov	r6, r0
 8006346:	07e3      	lsls	r3, r4, #31
 8006348:	d5f8      	bpl.n	800633c <__pow5mult+0x20>
 800634a:	4632      	mov	r2, r6
 800634c:	4629      	mov	r1, r5
 800634e:	4638      	mov	r0, r7
 8006350:	f7ff ff3e 	bl	80061d0 <__multiply>
 8006354:	b1b5      	cbz	r5, 8006384 <__pow5mult+0x68>
 8006356:	686a      	ldr	r2, [r5, #4]
 8006358:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800635a:	1064      	asrs	r4, r4, #1
 800635c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006360:	6029      	str	r1, [r5, #0]
 8006362:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006366:	4605      	mov	r5, r0
 8006368:	d1ea      	bne.n	8006340 <__pow5mult+0x24>
 800636a:	4628      	mov	r0, r5
 800636c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006370:	4632      	mov	r2, r6
 8006372:	4631      	mov	r1, r6
 8006374:	4638      	mov	r0, r7
 8006376:	f7ff ff2b 	bl	80061d0 <__multiply>
 800637a:	6030      	str	r0, [r6, #0]
 800637c:	f8c0 8000 	str.w	r8, [r0]
 8006380:	4606      	mov	r6, r0
 8006382:	e7e0      	b.n	8006346 <__pow5mult+0x2a>
 8006384:	4605      	mov	r5, r0
 8006386:	e7d9      	b.n	800633c <__pow5mult+0x20>
 8006388:	3b01      	subs	r3, #1
 800638a:	4a0b      	ldr	r2, [pc, #44]	; (80063b8 <__pow5mult+0x9c>)
 800638c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006390:	2300      	movs	r3, #0
 8006392:	f7ff fe83 	bl	800609c <__multadd>
 8006396:	4605      	mov	r5, r0
 8006398:	e7c8      	b.n	800632c <__pow5mult+0x10>
 800639a:	2101      	movs	r1, #1
 800639c:	4638      	mov	r0, r7
 800639e:	f7ff fe4d 	bl	800603c <_Balloc>
 80063a2:	f240 2371 	movw	r3, #625	; 0x271
 80063a6:	6143      	str	r3, [r0, #20]
 80063a8:	2201      	movs	r2, #1
 80063aa:	2300      	movs	r3, #0
 80063ac:	6102      	str	r2, [r0, #16]
 80063ae:	4606      	mov	r6, r0
 80063b0:	64b8      	str	r0, [r7, #72]	; 0x48
 80063b2:	6003      	str	r3, [r0, #0]
 80063b4:	e7be      	b.n	8006334 <__pow5mult+0x18>
 80063b6:	bf00      	nop
 80063b8:	080073a0 	.word	0x080073a0

080063bc <__lshift>:
 80063bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80063c0:	4691      	mov	r9, r2
 80063c2:	690a      	ldr	r2, [r1, #16]
 80063c4:	460e      	mov	r6, r1
 80063c6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80063ca:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80063ce:	eb04 0802 	add.w	r8, r4, r2
 80063d2:	f108 0501 	add.w	r5, r8, #1
 80063d6:	429d      	cmp	r5, r3
 80063d8:	4607      	mov	r7, r0
 80063da:	dd04      	ble.n	80063e6 <__lshift+0x2a>
 80063dc:	005b      	lsls	r3, r3, #1
 80063de:	429d      	cmp	r5, r3
 80063e0:	f101 0101 	add.w	r1, r1, #1
 80063e4:	dcfa      	bgt.n	80063dc <__lshift+0x20>
 80063e6:	4638      	mov	r0, r7
 80063e8:	f7ff fe28 	bl	800603c <_Balloc>
 80063ec:	2c00      	cmp	r4, #0
 80063ee:	f100 0314 	add.w	r3, r0, #20
 80063f2:	dd37      	ble.n	8006464 <__lshift+0xa8>
 80063f4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80063f8:	2200      	movs	r2, #0
 80063fa:	f843 2b04 	str.w	r2, [r3], #4
 80063fe:	428b      	cmp	r3, r1
 8006400:	d1fb      	bne.n	80063fa <__lshift+0x3e>
 8006402:	6934      	ldr	r4, [r6, #16]
 8006404:	f106 0314 	add.w	r3, r6, #20
 8006408:	f019 091f 	ands.w	r9, r9, #31
 800640c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006410:	d020      	beq.n	8006454 <__lshift+0x98>
 8006412:	f1c9 0e20 	rsb	lr, r9, #32
 8006416:	2200      	movs	r2, #0
 8006418:	e000      	b.n	800641c <__lshift+0x60>
 800641a:	4651      	mov	r1, sl
 800641c:	681c      	ldr	r4, [r3, #0]
 800641e:	468a      	mov	sl, r1
 8006420:	fa04 f409 	lsl.w	r4, r4, r9
 8006424:	4314      	orrs	r4, r2
 8006426:	f84a 4b04 	str.w	r4, [sl], #4
 800642a:	f853 2b04 	ldr.w	r2, [r3], #4
 800642e:	4563      	cmp	r3, ip
 8006430:	fa22 f20e 	lsr.w	r2, r2, lr
 8006434:	d3f1      	bcc.n	800641a <__lshift+0x5e>
 8006436:	604a      	str	r2, [r1, #4]
 8006438:	b10a      	cbz	r2, 800643e <__lshift+0x82>
 800643a:	f108 0502 	add.w	r5, r8, #2
 800643e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006440:	6872      	ldr	r2, [r6, #4]
 8006442:	3d01      	subs	r5, #1
 8006444:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006448:	6105      	str	r5, [r0, #16]
 800644a:	6031      	str	r1, [r6, #0]
 800644c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006450:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006454:	3904      	subs	r1, #4
 8006456:	f853 2b04 	ldr.w	r2, [r3], #4
 800645a:	f841 2f04 	str.w	r2, [r1, #4]!
 800645e:	459c      	cmp	ip, r3
 8006460:	d8f9      	bhi.n	8006456 <__lshift+0x9a>
 8006462:	e7ec      	b.n	800643e <__lshift+0x82>
 8006464:	4619      	mov	r1, r3
 8006466:	e7cc      	b.n	8006402 <__lshift+0x46>

08006468 <__mcmp>:
 8006468:	b430      	push	{r4, r5}
 800646a:	690b      	ldr	r3, [r1, #16]
 800646c:	4605      	mov	r5, r0
 800646e:	6900      	ldr	r0, [r0, #16]
 8006470:	1ac0      	subs	r0, r0, r3
 8006472:	d10f      	bne.n	8006494 <__mcmp+0x2c>
 8006474:	009b      	lsls	r3, r3, #2
 8006476:	3514      	adds	r5, #20
 8006478:	3114      	adds	r1, #20
 800647a:	4419      	add	r1, r3
 800647c:	442b      	add	r3, r5
 800647e:	e001      	b.n	8006484 <__mcmp+0x1c>
 8006480:	429d      	cmp	r5, r3
 8006482:	d207      	bcs.n	8006494 <__mcmp+0x2c>
 8006484:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006488:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800648c:	4294      	cmp	r4, r2
 800648e:	d0f7      	beq.n	8006480 <__mcmp+0x18>
 8006490:	d302      	bcc.n	8006498 <__mcmp+0x30>
 8006492:	2001      	movs	r0, #1
 8006494:	bc30      	pop	{r4, r5}
 8006496:	4770      	bx	lr
 8006498:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800649c:	e7fa      	b.n	8006494 <__mcmp+0x2c>
 800649e:	bf00      	nop

080064a0 <__mdiff>:
 80064a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80064a4:	6913      	ldr	r3, [r2, #16]
 80064a6:	690d      	ldr	r5, [r1, #16]
 80064a8:	1aed      	subs	r5, r5, r3
 80064aa:	2d00      	cmp	r5, #0
 80064ac:	460e      	mov	r6, r1
 80064ae:	4690      	mov	r8, r2
 80064b0:	f101 0414 	add.w	r4, r1, #20
 80064b4:	f102 0714 	add.w	r7, r2, #20
 80064b8:	d114      	bne.n	80064e4 <__mdiff+0x44>
 80064ba:	009b      	lsls	r3, r3, #2
 80064bc:	18e2      	adds	r2, r4, r3
 80064be:	443b      	add	r3, r7
 80064c0:	e001      	b.n	80064c6 <__mdiff+0x26>
 80064c2:	42a2      	cmp	r2, r4
 80064c4:	d959      	bls.n	800657a <__mdiff+0xda>
 80064c6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80064ca:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80064ce:	458c      	cmp	ip, r1
 80064d0:	d0f7      	beq.n	80064c2 <__mdiff+0x22>
 80064d2:	d209      	bcs.n	80064e8 <__mdiff+0x48>
 80064d4:	4622      	mov	r2, r4
 80064d6:	4633      	mov	r3, r6
 80064d8:	463c      	mov	r4, r7
 80064da:	4646      	mov	r6, r8
 80064dc:	4617      	mov	r7, r2
 80064de:	4698      	mov	r8, r3
 80064e0:	2501      	movs	r5, #1
 80064e2:	e001      	b.n	80064e8 <__mdiff+0x48>
 80064e4:	dbf6      	blt.n	80064d4 <__mdiff+0x34>
 80064e6:	2500      	movs	r5, #0
 80064e8:	6871      	ldr	r1, [r6, #4]
 80064ea:	f7ff fda7 	bl	800603c <_Balloc>
 80064ee:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80064f2:	6936      	ldr	r6, [r6, #16]
 80064f4:	60c5      	str	r5, [r0, #12]
 80064f6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80064fa:	46bc      	mov	ip, r7
 80064fc:	f100 0514 	add.w	r5, r0, #20
 8006500:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006504:	2300      	movs	r3, #0
 8006506:	f85c 1b04 	ldr.w	r1, [ip], #4
 800650a:	f854 8b04 	ldr.w	r8, [r4], #4
 800650e:	b28a      	uxth	r2, r1
 8006510:	fa13 f388 	uxtah	r3, r3, r8
 8006514:	0c09      	lsrs	r1, r1, #16
 8006516:	1a9a      	subs	r2, r3, r2
 8006518:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800651c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006520:	b292      	uxth	r2, r2
 8006522:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006526:	45e6      	cmp	lr, ip
 8006528:	f845 2b04 	str.w	r2, [r5], #4
 800652c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006530:	d8e9      	bhi.n	8006506 <__mdiff+0x66>
 8006532:	42a7      	cmp	r7, r4
 8006534:	d917      	bls.n	8006566 <__mdiff+0xc6>
 8006536:	46ae      	mov	lr, r5
 8006538:	46a4      	mov	ip, r4
 800653a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800653e:	fa13 f382 	uxtah	r3, r3, r2
 8006542:	1419      	asrs	r1, r3, #16
 8006544:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006548:	b29b      	uxth	r3, r3
 800654a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800654e:	4567      	cmp	r7, ip
 8006550:	f84e 2b04 	str.w	r2, [lr], #4
 8006554:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006558:	d8ef      	bhi.n	800653a <__mdiff+0x9a>
 800655a:	43e4      	mvns	r4, r4
 800655c:	4427      	add	r7, r4
 800655e:	f027 0703 	bic.w	r7, r7, #3
 8006562:	3704      	adds	r7, #4
 8006564:	443d      	add	r5, r7
 8006566:	3d04      	subs	r5, #4
 8006568:	b922      	cbnz	r2, 8006574 <__mdiff+0xd4>
 800656a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800656e:	3e01      	subs	r6, #1
 8006570:	2b00      	cmp	r3, #0
 8006572:	d0fa      	beq.n	800656a <__mdiff+0xca>
 8006574:	6106      	str	r6, [r0, #16]
 8006576:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800657a:	2100      	movs	r1, #0
 800657c:	f7ff fd5e 	bl	800603c <_Balloc>
 8006580:	2201      	movs	r2, #1
 8006582:	2300      	movs	r3, #0
 8006584:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006588:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800658c <__d2b>:
 800658c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006590:	460f      	mov	r7, r1
 8006592:	b083      	sub	sp, #12
 8006594:	2101      	movs	r1, #1
 8006596:	ec55 4b10 	vmov	r4, r5, d0
 800659a:	4616      	mov	r6, r2
 800659c:	f7ff fd4e 	bl	800603c <_Balloc>
 80065a0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80065a4:	4681      	mov	r9, r0
 80065a6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80065aa:	f1b8 0f00 	cmp.w	r8, #0
 80065ae:	d001      	beq.n	80065b4 <__d2b+0x28>
 80065b0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80065b4:	2c00      	cmp	r4, #0
 80065b6:	9301      	str	r3, [sp, #4]
 80065b8:	d024      	beq.n	8006604 <__d2b+0x78>
 80065ba:	a802      	add	r0, sp, #8
 80065bc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80065c0:	f7ff fdcc 	bl	800615c <__lo0bits>
 80065c4:	2800      	cmp	r0, #0
 80065c6:	d136      	bne.n	8006636 <__d2b+0xaa>
 80065c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065cc:	f8c9 2014 	str.w	r2, [r9, #20]
 80065d0:	2b00      	cmp	r3, #0
 80065d2:	bf0c      	ite	eq
 80065d4:	2101      	moveq	r1, #1
 80065d6:	2102      	movne	r1, #2
 80065d8:	f8c9 3018 	str.w	r3, [r9, #24]
 80065dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80065e0:	f1b8 0f00 	cmp.w	r8, #0
 80065e4:	d11b      	bne.n	800661e <__d2b+0x92>
 80065e6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80065ea:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80065ee:	6038      	str	r0, [r7, #0]
 80065f0:	6918      	ldr	r0, [r3, #16]
 80065f2:	f7ff fd93 	bl	800611c <__hi0bits>
 80065f6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80065fa:	6030      	str	r0, [r6, #0]
 80065fc:	4648      	mov	r0, r9
 80065fe:	b003      	add	sp, #12
 8006600:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006604:	a801      	add	r0, sp, #4
 8006606:	f7ff fda9 	bl	800615c <__lo0bits>
 800660a:	9b01      	ldr	r3, [sp, #4]
 800660c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006610:	2101      	movs	r1, #1
 8006612:	3020      	adds	r0, #32
 8006614:	f8c9 1010 	str.w	r1, [r9, #16]
 8006618:	f1b8 0f00 	cmp.w	r8, #0
 800661c:	d0e3      	beq.n	80065e6 <__d2b+0x5a>
 800661e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006622:	eb08 0300 	add.w	r3, r8, r0
 8006626:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800662a:	603b      	str	r3, [r7, #0]
 800662c:	6030      	str	r0, [r6, #0]
 800662e:	4648      	mov	r0, r9
 8006630:	b003      	add	sp, #12
 8006632:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006636:	e9dd 1300 	ldrd	r1, r3, [sp]
 800663a:	f1c0 0220 	rsb	r2, r0, #32
 800663e:	fa03 f202 	lsl.w	r2, r3, r2
 8006642:	430a      	orrs	r2, r1
 8006644:	40c3      	lsrs	r3, r0
 8006646:	9301      	str	r3, [sp, #4]
 8006648:	f8c9 2014 	str.w	r2, [r9, #20]
 800664c:	e7c0      	b.n	80065d0 <__d2b+0x44>
 800664e:	bf00      	nop

08006650 <_realloc_r>:
 8006650:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006654:	4692      	mov	sl, r2
 8006656:	b083      	sub	sp, #12
 8006658:	2900      	cmp	r1, #0
 800665a:	f000 80a1 	beq.w	80067a0 <_realloc_r+0x150>
 800665e:	460d      	mov	r5, r1
 8006660:	4680      	mov	r8, r0
 8006662:	f10a 040b 	add.w	r4, sl, #11
 8006666:	f7ff fcdd 	bl	8006024 <__malloc_lock>
 800666a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800666e:	2c16      	cmp	r4, #22
 8006670:	f022 0603 	bic.w	r6, r2, #3
 8006674:	f1a5 0708 	sub.w	r7, r5, #8
 8006678:	d83e      	bhi.n	80066f8 <_realloc_r+0xa8>
 800667a:	2410      	movs	r4, #16
 800667c:	4621      	mov	r1, r4
 800667e:	45a2      	cmp	sl, r4
 8006680:	d83f      	bhi.n	8006702 <_realloc_r+0xb2>
 8006682:	428e      	cmp	r6, r1
 8006684:	eb07 0906 	add.w	r9, r7, r6
 8006688:	da74      	bge.n	8006774 <_realloc_r+0x124>
 800668a:	4bc7      	ldr	r3, [pc, #796]	; (80069a8 <_realloc_r+0x358>)
 800668c:	6898      	ldr	r0, [r3, #8]
 800668e:	4548      	cmp	r0, r9
 8006690:	f000 80aa 	beq.w	80067e8 <_realloc_r+0x198>
 8006694:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006698:	f020 0301 	bic.w	r3, r0, #1
 800669c:	444b      	add	r3, r9
 800669e:	685b      	ldr	r3, [r3, #4]
 80066a0:	07db      	lsls	r3, r3, #31
 80066a2:	f140 8083 	bpl.w	80067ac <_realloc_r+0x15c>
 80066a6:	07d2      	lsls	r2, r2, #31
 80066a8:	d534      	bpl.n	8006714 <_realloc_r+0xc4>
 80066aa:	4651      	mov	r1, sl
 80066ac:	4640      	mov	r0, r8
 80066ae:	f7ff f9b1 	bl	8005a14 <_malloc_r>
 80066b2:	4682      	mov	sl, r0
 80066b4:	b1e0      	cbz	r0, 80066f0 <_realloc_r+0xa0>
 80066b6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80066ba:	f023 0301 	bic.w	r3, r3, #1
 80066be:	443b      	add	r3, r7
 80066c0:	f1a0 0208 	sub.w	r2, r0, #8
 80066c4:	4293      	cmp	r3, r2
 80066c6:	f000 80f9 	beq.w	80068bc <_realloc_r+0x26c>
 80066ca:	1f32      	subs	r2, r6, #4
 80066cc:	2a24      	cmp	r2, #36	; 0x24
 80066ce:	f200 8107 	bhi.w	80068e0 <_realloc_r+0x290>
 80066d2:	2a13      	cmp	r2, #19
 80066d4:	6829      	ldr	r1, [r5, #0]
 80066d6:	f200 80e6 	bhi.w	80068a6 <_realloc_r+0x256>
 80066da:	4603      	mov	r3, r0
 80066dc:	462a      	mov	r2, r5
 80066de:	6019      	str	r1, [r3, #0]
 80066e0:	6851      	ldr	r1, [r2, #4]
 80066e2:	6059      	str	r1, [r3, #4]
 80066e4:	6892      	ldr	r2, [r2, #8]
 80066e6:	609a      	str	r2, [r3, #8]
 80066e8:	4629      	mov	r1, r5
 80066ea:	4640      	mov	r0, r8
 80066ec:	f7fe fe68 	bl	80053c0 <_free_r>
 80066f0:	4640      	mov	r0, r8
 80066f2:	f7ff fc9d 	bl	8006030 <__malloc_unlock>
 80066f6:	e04f      	b.n	8006798 <_realloc_r+0x148>
 80066f8:	f024 0407 	bic.w	r4, r4, #7
 80066fc:	2c00      	cmp	r4, #0
 80066fe:	4621      	mov	r1, r4
 8006700:	dabd      	bge.n	800667e <_realloc_r+0x2e>
 8006702:	f04f 0a00 	mov.w	sl, #0
 8006706:	230c      	movs	r3, #12
 8006708:	4650      	mov	r0, sl
 800670a:	f8c8 3000 	str.w	r3, [r8]
 800670e:	b003      	add	sp, #12
 8006710:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006714:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006718:	eba7 0b03 	sub.w	fp, r7, r3
 800671c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006720:	f022 0203 	bic.w	r2, r2, #3
 8006724:	18b3      	adds	r3, r6, r2
 8006726:	428b      	cmp	r3, r1
 8006728:	dbbf      	blt.n	80066aa <_realloc_r+0x5a>
 800672a:	46da      	mov	sl, fp
 800672c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006730:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006734:	1f32      	subs	r2, r6, #4
 8006736:	2a24      	cmp	r2, #36	; 0x24
 8006738:	60c1      	str	r1, [r0, #12]
 800673a:	eb0b 0903 	add.w	r9, fp, r3
 800673e:	6088      	str	r0, [r1, #8]
 8006740:	f200 80c6 	bhi.w	80068d0 <_realloc_r+0x280>
 8006744:	2a13      	cmp	r2, #19
 8006746:	6829      	ldr	r1, [r5, #0]
 8006748:	f240 80c0 	bls.w	80068cc <_realloc_r+0x27c>
 800674c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006750:	6869      	ldr	r1, [r5, #4]
 8006752:	f8cb 100c 	str.w	r1, [fp, #12]
 8006756:	2a1b      	cmp	r2, #27
 8006758:	68a9      	ldr	r1, [r5, #8]
 800675a:	f200 80d8 	bhi.w	800690e <_realloc_r+0x2be>
 800675e:	f10b 0210 	add.w	r2, fp, #16
 8006762:	3508      	adds	r5, #8
 8006764:	6011      	str	r1, [r2, #0]
 8006766:	6869      	ldr	r1, [r5, #4]
 8006768:	6051      	str	r1, [r2, #4]
 800676a:	68a9      	ldr	r1, [r5, #8]
 800676c:	6091      	str	r1, [r2, #8]
 800676e:	461e      	mov	r6, r3
 8006770:	465f      	mov	r7, fp
 8006772:	4655      	mov	r5, sl
 8006774:	687b      	ldr	r3, [r7, #4]
 8006776:	1b32      	subs	r2, r6, r4
 8006778:	2a0f      	cmp	r2, #15
 800677a:	f003 0301 	and.w	r3, r3, #1
 800677e:	d822      	bhi.n	80067c6 <_realloc_r+0x176>
 8006780:	4333      	orrs	r3, r6
 8006782:	607b      	str	r3, [r7, #4]
 8006784:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006788:	f043 0301 	orr.w	r3, r3, #1
 800678c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006790:	4640      	mov	r0, r8
 8006792:	f7ff fc4d 	bl	8006030 <__malloc_unlock>
 8006796:	46aa      	mov	sl, r5
 8006798:	4650      	mov	r0, sl
 800679a:	b003      	add	sp, #12
 800679c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80067a0:	4611      	mov	r1, r2
 80067a2:	b003      	add	sp, #12
 80067a4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067a8:	f7ff b934 	b.w	8005a14 <_malloc_r>
 80067ac:	f020 0003 	bic.w	r0, r0, #3
 80067b0:	1833      	adds	r3, r6, r0
 80067b2:	428b      	cmp	r3, r1
 80067b4:	db61      	blt.n	800687a <_realloc_r+0x22a>
 80067b6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067ba:	461e      	mov	r6, r3
 80067bc:	60ca      	str	r2, [r1, #12]
 80067be:	eb07 0903 	add.w	r9, r7, r3
 80067c2:	6091      	str	r1, [r2, #8]
 80067c4:	e7d6      	b.n	8006774 <_realloc_r+0x124>
 80067c6:	1939      	adds	r1, r7, r4
 80067c8:	4323      	orrs	r3, r4
 80067ca:	f042 0201 	orr.w	r2, r2, #1
 80067ce:	607b      	str	r3, [r7, #4]
 80067d0:	604a      	str	r2, [r1, #4]
 80067d2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80067d6:	f043 0301 	orr.w	r3, r3, #1
 80067da:	3108      	adds	r1, #8
 80067dc:	f8c9 3004 	str.w	r3, [r9, #4]
 80067e0:	4640      	mov	r0, r8
 80067e2:	f7fe fded 	bl	80053c0 <_free_r>
 80067e6:	e7d3      	b.n	8006790 <_realloc_r+0x140>
 80067e8:	6840      	ldr	r0, [r0, #4]
 80067ea:	f020 0903 	bic.w	r9, r0, #3
 80067ee:	44b1      	add	r9, r6
 80067f0:	f104 0010 	add.w	r0, r4, #16
 80067f4:	4581      	cmp	r9, r0
 80067f6:	da77      	bge.n	80068e8 <_realloc_r+0x298>
 80067f8:	07d2      	lsls	r2, r2, #31
 80067fa:	f53f af56 	bmi.w	80066aa <_realloc_r+0x5a>
 80067fe:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006802:	eba7 0b02 	sub.w	fp, r7, r2
 8006806:	f8db 2004 	ldr.w	r2, [fp, #4]
 800680a:	f022 0203 	bic.w	r2, r2, #3
 800680e:	4491      	add	r9, r2
 8006810:	4548      	cmp	r0, r9
 8006812:	dc87      	bgt.n	8006724 <_realloc_r+0xd4>
 8006814:	46da      	mov	sl, fp
 8006816:	f8db 100c 	ldr.w	r1, [fp, #12]
 800681a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800681e:	1f32      	subs	r2, r6, #4
 8006820:	2a24      	cmp	r2, #36	; 0x24
 8006822:	60c1      	str	r1, [r0, #12]
 8006824:	6088      	str	r0, [r1, #8]
 8006826:	f200 80a1 	bhi.w	800696c <_realloc_r+0x31c>
 800682a:	2a13      	cmp	r2, #19
 800682c:	6829      	ldr	r1, [r5, #0]
 800682e:	f240 809b 	bls.w	8006968 <_realloc_r+0x318>
 8006832:	f8cb 1008 	str.w	r1, [fp, #8]
 8006836:	6869      	ldr	r1, [r5, #4]
 8006838:	f8cb 100c 	str.w	r1, [fp, #12]
 800683c:	2a1b      	cmp	r2, #27
 800683e:	68a9      	ldr	r1, [r5, #8]
 8006840:	f200 809b 	bhi.w	800697a <_realloc_r+0x32a>
 8006844:	f10b 0210 	add.w	r2, fp, #16
 8006848:	3508      	adds	r5, #8
 800684a:	6011      	str	r1, [r2, #0]
 800684c:	6869      	ldr	r1, [r5, #4]
 800684e:	6051      	str	r1, [r2, #4]
 8006850:	68a9      	ldr	r1, [r5, #8]
 8006852:	6091      	str	r1, [r2, #8]
 8006854:	eb0b 0104 	add.w	r1, fp, r4
 8006858:	eba9 0204 	sub.w	r2, r9, r4
 800685c:	f042 0201 	orr.w	r2, r2, #1
 8006860:	6099      	str	r1, [r3, #8]
 8006862:	604a      	str	r2, [r1, #4]
 8006864:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006868:	f003 0301 	and.w	r3, r3, #1
 800686c:	431c      	orrs	r4, r3
 800686e:	4640      	mov	r0, r8
 8006870:	f8cb 4004 	str.w	r4, [fp, #4]
 8006874:	f7ff fbdc 	bl	8006030 <__malloc_unlock>
 8006878:	e78e      	b.n	8006798 <_realloc_r+0x148>
 800687a:	07d3      	lsls	r3, r2, #31
 800687c:	f53f af15 	bmi.w	80066aa <_realloc_r+0x5a>
 8006880:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006884:	eba7 0b03 	sub.w	fp, r7, r3
 8006888:	f8db 2004 	ldr.w	r2, [fp, #4]
 800688c:	f022 0203 	bic.w	r2, r2, #3
 8006890:	4410      	add	r0, r2
 8006892:	1983      	adds	r3, r0, r6
 8006894:	428b      	cmp	r3, r1
 8006896:	f6ff af45 	blt.w	8006724 <_realloc_r+0xd4>
 800689a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800689e:	46da      	mov	sl, fp
 80068a0:	60ca      	str	r2, [r1, #12]
 80068a2:	6091      	str	r1, [r2, #8]
 80068a4:	e742      	b.n	800672c <_realloc_r+0xdc>
 80068a6:	6001      	str	r1, [r0, #0]
 80068a8:	686b      	ldr	r3, [r5, #4]
 80068aa:	6043      	str	r3, [r0, #4]
 80068ac:	2a1b      	cmp	r2, #27
 80068ae:	d83a      	bhi.n	8006926 <_realloc_r+0x2d6>
 80068b0:	f105 0208 	add.w	r2, r5, #8
 80068b4:	f100 0308 	add.w	r3, r0, #8
 80068b8:	68a9      	ldr	r1, [r5, #8]
 80068ba:	e710      	b.n	80066de <_realloc_r+0x8e>
 80068bc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80068c0:	f023 0303 	bic.w	r3, r3, #3
 80068c4:	441e      	add	r6, r3
 80068c6:	eb07 0906 	add.w	r9, r7, r6
 80068ca:	e753      	b.n	8006774 <_realloc_r+0x124>
 80068cc:	4652      	mov	r2, sl
 80068ce:	e749      	b.n	8006764 <_realloc_r+0x114>
 80068d0:	4629      	mov	r1, r5
 80068d2:	4650      	mov	r0, sl
 80068d4:	461e      	mov	r6, r3
 80068d6:	465f      	mov	r7, fp
 80068d8:	f7ff fb40 	bl	8005f5c <memmove>
 80068dc:	4655      	mov	r5, sl
 80068de:	e749      	b.n	8006774 <_realloc_r+0x124>
 80068e0:	4629      	mov	r1, r5
 80068e2:	f7ff fb3b 	bl	8005f5c <memmove>
 80068e6:	e6ff      	b.n	80066e8 <_realloc_r+0x98>
 80068e8:	4427      	add	r7, r4
 80068ea:	eba9 0904 	sub.w	r9, r9, r4
 80068ee:	f049 0201 	orr.w	r2, r9, #1
 80068f2:	609f      	str	r7, [r3, #8]
 80068f4:	607a      	str	r2, [r7, #4]
 80068f6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068fa:	f003 0301 	and.w	r3, r3, #1
 80068fe:	431c      	orrs	r4, r3
 8006900:	4640      	mov	r0, r8
 8006902:	f845 4c04 	str.w	r4, [r5, #-4]
 8006906:	f7ff fb93 	bl	8006030 <__malloc_unlock>
 800690a:	46aa      	mov	sl, r5
 800690c:	e744      	b.n	8006798 <_realloc_r+0x148>
 800690e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006912:	68e9      	ldr	r1, [r5, #12]
 8006914:	f8cb 1014 	str.w	r1, [fp, #20]
 8006918:	2a24      	cmp	r2, #36	; 0x24
 800691a:	d010      	beq.n	800693e <_realloc_r+0x2ee>
 800691c:	6929      	ldr	r1, [r5, #16]
 800691e:	f10b 0218 	add.w	r2, fp, #24
 8006922:	3510      	adds	r5, #16
 8006924:	e71e      	b.n	8006764 <_realloc_r+0x114>
 8006926:	68ab      	ldr	r3, [r5, #8]
 8006928:	6083      	str	r3, [r0, #8]
 800692a:	68eb      	ldr	r3, [r5, #12]
 800692c:	60c3      	str	r3, [r0, #12]
 800692e:	2a24      	cmp	r2, #36	; 0x24
 8006930:	d010      	beq.n	8006954 <_realloc_r+0x304>
 8006932:	f105 0210 	add.w	r2, r5, #16
 8006936:	f100 0310 	add.w	r3, r0, #16
 800693a:	6929      	ldr	r1, [r5, #16]
 800693c:	e6cf      	b.n	80066de <_realloc_r+0x8e>
 800693e:	692a      	ldr	r2, [r5, #16]
 8006940:	f8cb 2018 	str.w	r2, [fp, #24]
 8006944:	696a      	ldr	r2, [r5, #20]
 8006946:	f8cb 201c 	str.w	r2, [fp, #28]
 800694a:	69a9      	ldr	r1, [r5, #24]
 800694c:	f10b 0220 	add.w	r2, fp, #32
 8006950:	3518      	adds	r5, #24
 8006952:	e707      	b.n	8006764 <_realloc_r+0x114>
 8006954:	692b      	ldr	r3, [r5, #16]
 8006956:	6103      	str	r3, [r0, #16]
 8006958:	696b      	ldr	r3, [r5, #20]
 800695a:	6143      	str	r3, [r0, #20]
 800695c:	69a9      	ldr	r1, [r5, #24]
 800695e:	f105 0218 	add.w	r2, r5, #24
 8006962:	f100 0318 	add.w	r3, r0, #24
 8006966:	e6ba      	b.n	80066de <_realloc_r+0x8e>
 8006968:	4652      	mov	r2, sl
 800696a:	e76e      	b.n	800684a <_realloc_r+0x1fa>
 800696c:	4629      	mov	r1, r5
 800696e:	4650      	mov	r0, sl
 8006970:	9301      	str	r3, [sp, #4]
 8006972:	f7ff faf3 	bl	8005f5c <memmove>
 8006976:	9b01      	ldr	r3, [sp, #4]
 8006978:	e76c      	b.n	8006854 <_realloc_r+0x204>
 800697a:	f8cb 1010 	str.w	r1, [fp, #16]
 800697e:	68e9      	ldr	r1, [r5, #12]
 8006980:	f8cb 1014 	str.w	r1, [fp, #20]
 8006984:	2a24      	cmp	r2, #36	; 0x24
 8006986:	d004      	beq.n	8006992 <_realloc_r+0x342>
 8006988:	6929      	ldr	r1, [r5, #16]
 800698a:	f10b 0218 	add.w	r2, fp, #24
 800698e:	3510      	adds	r5, #16
 8006990:	e75b      	b.n	800684a <_realloc_r+0x1fa>
 8006992:	692a      	ldr	r2, [r5, #16]
 8006994:	f8cb 2018 	str.w	r2, [fp, #24]
 8006998:	696a      	ldr	r2, [r5, #20]
 800699a:	f8cb 201c 	str.w	r2, [fp, #28]
 800699e:	69a9      	ldr	r1, [r5, #24]
 80069a0:	f10b 0220 	add.w	r2, fp, #32
 80069a4:	3518      	adds	r5, #24
 80069a6:	e750      	b.n	800684a <_realloc_r+0x1fa>
 80069a8:	2000046c 	.word	0x2000046c

080069ac <frexp>:
 80069ac:	ec53 2b10 	vmov	r2, r3, d0
 80069b0:	b570      	push	{r4, r5, r6, lr}
 80069b2:	4e16      	ldr	r6, [pc, #88]	; (8006a0c <frexp+0x60>)
 80069b4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80069b8:	2500      	movs	r5, #0
 80069ba:	42b1      	cmp	r1, r6
 80069bc:	4604      	mov	r4, r0
 80069be:	6005      	str	r5, [r0, #0]
 80069c0:	dc21      	bgt.n	8006a06 <frexp+0x5a>
 80069c2:	ee10 6a10 	vmov	r6, s0
 80069c6:	430e      	orrs	r6, r1
 80069c8:	d01d      	beq.n	8006a06 <frexp+0x5a>
 80069ca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80069ce:	4618      	mov	r0, r3
 80069d0:	da0c      	bge.n	80069ec <frexp+0x40>
 80069d2:	4619      	mov	r1, r3
 80069d4:	2200      	movs	r2, #0
 80069d6:	ee10 0a10 	vmov	r0, s0
 80069da:	4b0d      	ldr	r3, [pc, #52]	; (8006a10 <frexp+0x64>)
 80069dc:	f7f9 fdcc 	bl	8000578 <__aeabi_dmul>
 80069e0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80069e4:	4602      	mov	r2, r0
 80069e6:	4608      	mov	r0, r1
 80069e8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80069ec:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80069f0:	1509      	asrs	r1, r1, #20
 80069f2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80069f6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80069fa:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80069fe:	4429      	add	r1, r5
 8006a00:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006a04:	6021      	str	r1, [r4, #0]
 8006a06:	ec43 2b10 	vmov	d0, r2, r3
 8006a0a:	bd70      	pop	{r4, r5, r6, pc}
 8006a0c:	7fefffff 	.word	0x7fefffff
 8006a10:	43500000 	.word	0x43500000

08006a14 <_sbrk_r>:
 8006a14:	b538      	push	{r3, r4, r5, lr}
 8006a16:	4c07      	ldr	r4, [pc, #28]	; (8006a34 <_sbrk_r+0x20>)
 8006a18:	2300      	movs	r3, #0
 8006a1a:	4605      	mov	r5, r0
 8006a1c:	4608      	mov	r0, r1
 8006a1e:	6023      	str	r3, [r4, #0]
 8006a20:	f7fb fc35 	bl	800228e <_sbrk>
 8006a24:	1c43      	adds	r3, r0, #1
 8006a26:	d000      	beq.n	8006a2a <_sbrk_r+0x16>
 8006a28:	bd38      	pop	{r3, r4, r5, pc}
 8006a2a:	6823      	ldr	r3, [r4, #0]
 8006a2c:	2b00      	cmp	r3, #0
 8006a2e:	d0fb      	beq.n	8006a28 <_sbrk_r+0x14>
 8006a30:	602b      	str	r3, [r5, #0]
 8006a32:	bd38      	pop	{r3, r4, r5, pc}
 8006a34:	20000b48 	.word	0x20000b48

08006a38 <__sread>:
 8006a38:	b510      	push	{r4, lr}
 8006a3a:	460c      	mov	r4, r1
 8006a3c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a40:	f000 fabc 	bl	8006fbc <_read_r>
 8006a44:	2800      	cmp	r0, #0
 8006a46:	db03      	blt.n	8006a50 <__sread+0x18>
 8006a48:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006a4a:	4403      	add	r3, r0
 8006a4c:	6523      	str	r3, [r4, #80]	; 0x50
 8006a4e:	bd10      	pop	{r4, pc}
 8006a50:	89a3      	ldrh	r3, [r4, #12]
 8006a52:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006a56:	81a3      	strh	r3, [r4, #12]
 8006a58:	bd10      	pop	{r4, pc}
 8006a5a:	bf00      	nop

08006a5c <__swrite>:
 8006a5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a60:	4616      	mov	r6, r2
 8006a62:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a66:	461f      	mov	r7, r3
 8006a68:	05d3      	lsls	r3, r2, #23
 8006a6a:	460c      	mov	r4, r1
 8006a6c:	4605      	mov	r5, r0
 8006a6e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a72:	d507      	bpl.n	8006a84 <__swrite+0x28>
 8006a74:	2200      	movs	r2, #0
 8006a76:	2302      	movs	r3, #2
 8006a78:	f000 fa74 	bl	8006f64 <_lseek_r>
 8006a7c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a80:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a84:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a88:	81a2      	strh	r2, [r4, #12]
 8006a8a:	463b      	mov	r3, r7
 8006a8c:	4632      	mov	r2, r6
 8006a8e:	4628      	mov	r0, r5
 8006a90:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006a94:	f000 b88c 	b.w	8006bb0 <_write_r>

08006a98 <__sseek>:
 8006a98:	b510      	push	{r4, lr}
 8006a9a:	460c      	mov	r4, r1
 8006a9c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006aa0:	f000 fa60 	bl	8006f64 <_lseek_r>
 8006aa4:	89a3      	ldrh	r3, [r4, #12]
 8006aa6:	1c42      	adds	r2, r0, #1
 8006aa8:	bf0e      	itee	eq
 8006aaa:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006aae:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006ab2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006ab4:	81a3      	strh	r3, [r4, #12]
 8006ab6:	bd10      	pop	{r4, pc}

08006ab8 <__sclose>:
 8006ab8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006abc:	f000 b922 	b.w	8006d04 <_close_r>

08006ac0 <strncpy>:
 8006ac0:	ea40 0301 	orr.w	r3, r0, r1
 8006ac4:	079b      	lsls	r3, r3, #30
 8006ac6:	b470      	push	{r4, r5, r6}
 8006ac8:	d12a      	bne.n	8006b20 <strncpy+0x60>
 8006aca:	2a03      	cmp	r2, #3
 8006acc:	d928      	bls.n	8006b20 <strncpy+0x60>
 8006ace:	460c      	mov	r4, r1
 8006ad0:	4603      	mov	r3, r0
 8006ad2:	4621      	mov	r1, r4
 8006ad4:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ad8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006adc:	ea25 0506 	bic.w	r5, r5, r6
 8006ae0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006ae4:	d106      	bne.n	8006af4 <strncpy+0x34>
 8006ae6:	3a04      	subs	r2, #4
 8006ae8:	2a03      	cmp	r2, #3
 8006aea:	f843 6b04 	str.w	r6, [r3], #4
 8006aee:	4621      	mov	r1, r4
 8006af0:	d8ef      	bhi.n	8006ad2 <strncpy+0x12>
 8006af2:	b19a      	cbz	r2, 8006b1c <strncpy+0x5c>
 8006af4:	780c      	ldrb	r4, [r1, #0]
 8006af6:	701c      	strb	r4, [r3, #0]
 8006af8:	3a01      	subs	r2, #1
 8006afa:	3301      	adds	r3, #1
 8006afc:	b13c      	cbz	r4, 8006b0e <strncpy+0x4e>
 8006afe:	b16a      	cbz	r2, 8006b1c <strncpy+0x5c>
 8006b00:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006b04:	f803 4b01 	strb.w	r4, [r3], #1
 8006b08:	3a01      	subs	r2, #1
 8006b0a:	2c00      	cmp	r4, #0
 8006b0c:	d1f7      	bne.n	8006afe <strncpy+0x3e>
 8006b0e:	b12a      	cbz	r2, 8006b1c <strncpy+0x5c>
 8006b10:	441a      	add	r2, r3
 8006b12:	2100      	movs	r1, #0
 8006b14:	f803 1b01 	strb.w	r1, [r3], #1
 8006b18:	4293      	cmp	r3, r2
 8006b1a:	d1fb      	bne.n	8006b14 <strncpy+0x54>
 8006b1c:	bc70      	pop	{r4, r5, r6}
 8006b1e:	4770      	bx	lr
 8006b20:	4603      	mov	r3, r0
 8006b22:	e7e6      	b.n	8006af2 <strncpy+0x32>

08006b24 <__sprint_r.part.0>:
 8006b24:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b28:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006b2a:	049c      	lsls	r4, r3, #18
 8006b2c:	4692      	mov	sl, r2
 8006b2e:	d52d      	bpl.n	8006b8c <__sprint_r.part.0+0x68>
 8006b30:	6893      	ldr	r3, [r2, #8]
 8006b32:	6812      	ldr	r2, [r2, #0]
 8006b34:	b343      	cbz	r3, 8006b88 <__sprint_r.part.0+0x64>
 8006b36:	460e      	mov	r6, r1
 8006b38:	4607      	mov	r7, r0
 8006b3a:	f102 0908 	add.w	r9, r2, #8
 8006b3e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006b42:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006b46:	d015      	beq.n	8006b74 <__sprint_r.part.0+0x50>
 8006b48:	3d04      	subs	r5, #4
 8006b4a:	2400      	movs	r4, #0
 8006b4c:	e001      	b.n	8006b52 <__sprint_r.part.0+0x2e>
 8006b4e:	45a0      	cmp	r8, r4
 8006b50:	d00e      	beq.n	8006b70 <__sprint_r.part.0+0x4c>
 8006b52:	4632      	mov	r2, r6
 8006b54:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b58:	4638      	mov	r0, r7
 8006b5a:	f000 f99d 	bl	8006e98 <_fputwc_r>
 8006b5e:	1c43      	adds	r3, r0, #1
 8006b60:	f104 0401 	add.w	r4, r4, #1
 8006b64:	d1f3      	bne.n	8006b4e <__sprint_r.part.0+0x2a>
 8006b66:	2300      	movs	r3, #0
 8006b68:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b6c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b70:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b74:	f02b 0b03 	bic.w	fp, fp, #3
 8006b78:	eba3 030b 	sub.w	r3, r3, fp
 8006b7c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b80:	f109 0908 	add.w	r9, r9, #8
 8006b84:	2b00      	cmp	r3, #0
 8006b86:	d1da      	bne.n	8006b3e <__sprint_r.part.0+0x1a>
 8006b88:	2000      	movs	r0, #0
 8006b8a:	e7ec      	b.n	8006b66 <__sprint_r.part.0+0x42>
 8006b8c:	f7fe fd0c 	bl	80055a8 <__sfvwrite_r>
 8006b90:	2300      	movs	r3, #0
 8006b92:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b96:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b9a:	bf00      	nop

08006b9c <__sprint_r>:
 8006b9c:	6893      	ldr	r3, [r2, #8]
 8006b9e:	b10b      	cbz	r3, 8006ba4 <__sprint_r+0x8>
 8006ba0:	f7ff bfc0 	b.w	8006b24 <__sprint_r.part.0>
 8006ba4:	b410      	push	{r4}
 8006ba6:	4618      	mov	r0, r3
 8006ba8:	6053      	str	r3, [r2, #4]
 8006baa:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006bae:	4770      	bx	lr

08006bb0 <_write_r>:
 8006bb0:	b570      	push	{r4, r5, r6, lr}
 8006bb2:	460d      	mov	r5, r1
 8006bb4:	4c08      	ldr	r4, [pc, #32]	; (8006bd8 <_write_r+0x28>)
 8006bb6:	4611      	mov	r1, r2
 8006bb8:	4606      	mov	r6, r0
 8006bba:	461a      	mov	r2, r3
 8006bbc:	4628      	mov	r0, r5
 8006bbe:	2300      	movs	r3, #0
 8006bc0:	6023      	str	r3, [r4, #0]
 8006bc2:	f7fb fb51 	bl	8002268 <_write>
 8006bc6:	1c43      	adds	r3, r0, #1
 8006bc8:	d000      	beq.n	8006bcc <_write_r+0x1c>
 8006bca:	bd70      	pop	{r4, r5, r6, pc}
 8006bcc:	6823      	ldr	r3, [r4, #0]
 8006bce:	2b00      	cmp	r3, #0
 8006bd0:	d0fb      	beq.n	8006bca <_write_r+0x1a>
 8006bd2:	6033      	str	r3, [r6, #0]
 8006bd4:	bd70      	pop	{r4, r5, r6, pc}
 8006bd6:	bf00      	nop
 8006bd8:	20000b48 	.word	0x20000b48

08006bdc <__register_exitproc>:
 8006bdc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006be0:	4d2b      	ldr	r5, [pc, #172]	; (8006c90 <__register_exitproc+0xb4>)
 8006be2:	4606      	mov	r6, r0
 8006be4:	6828      	ldr	r0, [r5, #0]
 8006be6:	4698      	mov	r8, r3
 8006be8:	460f      	mov	r7, r1
 8006bea:	4691      	mov	r9, r2
 8006bec:	f7fe fe96 	bl	800591c <__retarget_lock_acquire_recursive>
 8006bf0:	4b28      	ldr	r3, [pc, #160]	; (8006c94 <__register_exitproc+0xb8>)
 8006bf2:	681c      	ldr	r4, [r3, #0]
 8006bf4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006bf8:	2b00      	cmp	r3, #0
 8006bfa:	d03d      	beq.n	8006c78 <__register_exitproc+0x9c>
 8006bfc:	685a      	ldr	r2, [r3, #4]
 8006bfe:	2a1f      	cmp	r2, #31
 8006c00:	dc0d      	bgt.n	8006c1e <__register_exitproc+0x42>
 8006c02:	f102 0c01 	add.w	ip, r2, #1
 8006c06:	bb16      	cbnz	r6, 8006c4e <__register_exitproc+0x72>
 8006c08:	3202      	adds	r2, #2
 8006c0a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006c0e:	6828      	ldr	r0, [r5, #0]
 8006c10:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006c14:	f7fe fe84 	bl	8005920 <__retarget_lock_release_recursive>
 8006c18:	2000      	movs	r0, #0
 8006c1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006c1e:	4b1e      	ldr	r3, [pc, #120]	; (8006c98 <__register_exitproc+0xbc>)
 8006c20:	b37b      	cbz	r3, 8006c82 <__register_exitproc+0xa6>
 8006c22:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006c26:	f3af 8000 	nop.w
 8006c2a:	4603      	mov	r3, r0
 8006c2c:	b348      	cbz	r0, 8006c82 <__register_exitproc+0xa6>
 8006c2e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006c32:	2100      	movs	r1, #0
 8006c34:	e9c0 2100 	strd	r2, r1, [r0]
 8006c38:	f04f 0c01 	mov.w	ip, #1
 8006c3c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006c40:	460a      	mov	r2, r1
 8006c42:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006c46:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006c4a:	2e00      	cmp	r6, #0
 8006c4c:	d0dc      	beq.n	8006c08 <__register_exitproc+0x2c>
 8006c4e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006c52:	2401      	movs	r4, #1
 8006c54:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006c58:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006c5c:	4094      	lsls	r4, r2
 8006c5e:	4320      	orrs	r0, r4
 8006c60:	2e02      	cmp	r6, #2
 8006c62:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c66:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c6a:	d1cd      	bne.n	8006c08 <__register_exitproc+0x2c>
 8006c6c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c70:	430c      	orrs	r4, r1
 8006c72:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c76:	e7c7      	b.n	8006c08 <__register_exitproc+0x2c>
 8006c78:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c7c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c80:	e7bc      	b.n	8006bfc <__register_exitproc+0x20>
 8006c82:	6828      	ldr	r0, [r5, #0]
 8006c84:	f7fe fe4c 	bl	8005920 <__retarget_lock_release_recursive>
 8006c88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c8c:	e7c5      	b.n	8006c1a <__register_exitproc+0x3e>
 8006c8e:	bf00      	nop
 8006c90:	20000468 	.word	0x20000468
 8006c94:	08007234 	.word	0x08007234
 8006c98:	00000000 	.word	0x00000000

08006c9c <_calloc_r>:
 8006c9c:	b510      	push	{r4, lr}
 8006c9e:	fb02 f101 	mul.w	r1, r2, r1
 8006ca2:	f7fe feb7 	bl	8005a14 <_malloc_r>
 8006ca6:	4604      	mov	r4, r0
 8006ca8:	b1d8      	cbz	r0, 8006ce2 <_calloc_r+0x46>
 8006caa:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006cae:	f022 0203 	bic.w	r2, r2, #3
 8006cb2:	3a04      	subs	r2, #4
 8006cb4:	2a24      	cmp	r2, #36	; 0x24
 8006cb6:	d81d      	bhi.n	8006cf4 <_calloc_r+0x58>
 8006cb8:	2a13      	cmp	r2, #19
 8006cba:	d914      	bls.n	8006ce6 <_calloc_r+0x4a>
 8006cbc:	2300      	movs	r3, #0
 8006cbe:	2a1b      	cmp	r2, #27
 8006cc0:	e9c0 3300 	strd	r3, r3, [r0]
 8006cc4:	d91b      	bls.n	8006cfe <_calloc_r+0x62>
 8006cc6:	2a24      	cmp	r2, #36	; 0x24
 8006cc8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ccc:	bf0a      	itet	eq
 8006cce:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006cd2:	f100 0210 	addne.w	r2, r0, #16
 8006cd6:	f100 0218 	addeq.w	r2, r0, #24
 8006cda:	2300      	movs	r3, #0
 8006cdc:	e9c2 3300 	strd	r3, r3, [r2]
 8006ce0:	6093      	str	r3, [r2, #8]
 8006ce2:	4620      	mov	r0, r4
 8006ce4:	bd10      	pop	{r4, pc}
 8006ce6:	4602      	mov	r2, r0
 8006ce8:	2300      	movs	r3, #0
 8006cea:	e9c2 3300 	strd	r3, r3, [r2]
 8006cee:	6093      	str	r3, [r2, #8]
 8006cf0:	4620      	mov	r0, r4
 8006cf2:	bd10      	pop	{r4, pc}
 8006cf4:	2100      	movs	r1, #0
 8006cf6:	f7fb fb6f 	bl	80023d8 <memset>
 8006cfa:	4620      	mov	r0, r4
 8006cfc:	bd10      	pop	{r4, pc}
 8006cfe:	f100 0208 	add.w	r2, r0, #8
 8006d02:	e7f1      	b.n	8006ce8 <_calloc_r+0x4c>

08006d04 <_close_r>:
 8006d04:	b538      	push	{r3, r4, r5, lr}
 8006d06:	4c07      	ldr	r4, [pc, #28]	; (8006d24 <_close_r+0x20>)
 8006d08:	2300      	movs	r3, #0
 8006d0a:	4605      	mov	r5, r0
 8006d0c:	4608      	mov	r0, r1
 8006d0e:	6023      	str	r3, [r4, #0]
 8006d10:	f7fb fad9 	bl	80022c6 <_close>
 8006d14:	1c43      	adds	r3, r0, #1
 8006d16:	d000      	beq.n	8006d1a <_close_r+0x16>
 8006d18:	bd38      	pop	{r3, r4, r5, pc}
 8006d1a:	6823      	ldr	r3, [r4, #0]
 8006d1c:	2b00      	cmp	r3, #0
 8006d1e:	d0fb      	beq.n	8006d18 <_close_r+0x14>
 8006d20:	602b      	str	r3, [r5, #0]
 8006d22:	bd38      	pop	{r3, r4, r5, pc}
 8006d24:	20000b48 	.word	0x20000b48

08006d28 <_fclose_r>:
 8006d28:	b570      	push	{r4, r5, r6, lr}
 8006d2a:	2900      	cmp	r1, #0
 8006d2c:	d048      	beq.n	8006dc0 <_fclose_r+0x98>
 8006d2e:	4605      	mov	r5, r0
 8006d30:	460c      	mov	r4, r1
 8006d32:	b110      	cbz	r0, 8006d3a <_fclose_r+0x12>
 8006d34:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d36:	2b00      	cmp	r3, #0
 8006d38:	d048      	beq.n	8006dcc <_fclose_r+0xa4>
 8006d3a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d40:	07d0      	lsls	r0, r2, #31
 8006d42:	d440      	bmi.n	8006dc6 <_fclose_r+0x9e>
 8006d44:	0599      	lsls	r1, r3, #22
 8006d46:	d530      	bpl.n	8006daa <_fclose_r+0x82>
 8006d48:	4621      	mov	r1, r4
 8006d4a:	4628      	mov	r0, r5
 8006d4c:	f7fe f990 	bl	8005070 <__sflush_r>
 8006d50:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006d52:	4606      	mov	r6, r0
 8006d54:	b133      	cbz	r3, 8006d64 <_fclose_r+0x3c>
 8006d56:	69e1      	ldr	r1, [r4, #28]
 8006d58:	4628      	mov	r0, r5
 8006d5a:	4798      	blx	r3
 8006d5c:	2800      	cmp	r0, #0
 8006d5e:	bfb8      	it	lt
 8006d60:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d64:	89a3      	ldrh	r3, [r4, #12]
 8006d66:	061a      	lsls	r2, r3, #24
 8006d68:	d43c      	bmi.n	8006de4 <_fclose_r+0xbc>
 8006d6a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d6c:	b141      	cbz	r1, 8006d80 <_fclose_r+0x58>
 8006d6e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d72:	4299      	cmp	r1, r3
 8006d74:	d002      	beq.n	8006d7c <_fclose_r+0x54>
 8006d76:	4628      	mov	r0, r5
 8006d78:	f7fe fb22 	bl	80053c0 <_free_r>
 8006d7c:	2300      	movs	r3, #0
 8006d7e:	6323      	str	r3, [r4, #48]	; 0x30
 8006d80:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d82:	b121      	cbz	r1, 8006d8e <_fclose_r+0x66>
 8006d84:	4628      	mov	r0, r5
 8006d86:	f7fe fb1b 	bl	80053c0 <_free_r>
 8006d8a:	2300      	movs	r3, #0
 8006d8c:	6463      	str	r3, [r4, #68]	; 0x44
 8006d8e:	f7fe faa1 	bl	80052d4 <__sfp_lock_acquire>
 8006d92:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d94:	2200      	movs	r2, #0
 8006d96:	07db      	lsls	r3, r3, #31
 8006d98:	81a2      	strh	r2, [r4, #12]
 8006d9a:	d51f      	bpl.n	8006ddc <_fclose_r+0xb4>
 8006d9c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d9e:	f7fe fdbb 	bl	8005918 <__retarget_lock_close_recursive>
 8006da2:	f7fe fa9d 	bl	80052e0 <__sfp_lock_release>
 8006da6:	4630      	mov	r0, r6
 8006da8:	bd70      	pop	{r4, r5, r6, pc}
 8006daa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dac:	f7fe fdb6 	bl	800591c <__retarget_lock_acquire_recursive>
 8006db0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006db4:	2b00      	cmp	r3, #0
 8006db6:	d1c7      	bne.n	8006d48 <_fclose_r+0x20>
 8006db8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006dba:	f016 0601 	ands.w	r6, r6, #1
 8006dbe:	d016      	beq.n	8006dee <_fclose_r+0xc6>
 8006dc0:	2600      	movs	r6, #0
 8006dc2:	4630      	mov	r0, r6
 8006dc4:	bd70      	pop	{r4, r5, r6, pc}
 8006dc6:	2b00      	cmp	r3, #0
 8006dc8:	d0fa      	beq.n	8006dc0 <_fclose_r+0x98>
 8006dca:	e7bd      	b.n	8006d48 <_fclose_r+0x20>
 8006dcc:	f7fe fa56 	bl	800527c <__sinit>
 8006dd0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dd2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dd6:	07d0      	lsls	r0, r2, #31
 8006dd8:	d4f5      	bmi.n	8006dc6 <_fclose_r+0x9e>
 8006dda:	e7b3      	b.n	8006d44 <_fclose_r+0x1c>
 8006ddc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dde:	f7fe fd9f 	bl	8005920 <__retarget_lock_release_recursive>
 8006de2:	e7db      	b.n	8006d9c <_fclose_r+0x74>
 8006de4:	6921      	ldr	r1, [r4, #16]
 8006de6:	4628      	mov	r0, r5
 8006de8:	f7fe faea 	bl	80053c0 <_free_r>
 8006dec:	e7bd      	b.n	8006d6a <_fclose_r+0x42>
 8006dee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006df0:	f7fe fd96 	bl	8005920 <__retarget_lock_release_recursive>
 8006df4:	4630      	mov	r0, r6
 8006df6:	bd70      	pop	{r4, r5, r6, pc}

08006df8 <__fputwc>:
 8006df8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006dfc:	b082      	sub	sp, #8
 8006dfe:	4681      	mov	r9, r0
 8006e00:	4688      	mov	r8, r1
 8006e02:	4614      	mov	r4, r2
 8006e04:	f000 f8a0 	bl	8006f48 <__locale_mb_cur_max>
 8006e08:	2801      	cmp	r0, #1
 8006e0a:	d103      	bne.n	8006e14 <__fputwc+0x1c>
 8006e0c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006e10:	2bfe      	cmp	r3, #254	; 0xfe
 8006e12:	d933      	bls.n	8006e7c <__fputwc+0x84>
 8006e14:	4642      	mov	r2, r8
 8006e16:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006e1a:	a901      	add	r1, sp, #4
 8006e1c:	4648      	mov	r0, r9
 8006e1e:	f000 f93b 	bl	8007098 <_wcrtomb_r>
 8006e22:	1c42      	adds	r2, r0, #1
 8006e24:	4606      	mov	r6, r0
 8006e26:	d02f      	beq.n	8006e88 <__fputwc+0x90>
 8006e28:	b320      	cbz	r0, 8006e74 <__fputwc+0x7c>
 8006e2a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006e2e:	2500      	movs	r5, #0
 8006e30:	f10d 0a04 	add.w	sl, sp, #4
 8006e34:	e009      	b.n	8006e4a <__fputwc+0x52>
 8006e36:	6823      	ldr	r3, [r4, #0]
 8006e38:	1c5a      	adds	r2, r3, #1
 8006e3a:	6022      	str	r2, [r4, #0]
 8006e3c:	f883 c000 	strb.w	ip, [r3]
 8006e40:	3501      	adds	r5, #1
 8006e42:	42b5      	cmp	r5, r6
 8006e44:	d216      	bcs.n	8006e74 <__fputwc+0x7c>
 8006e46:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006e4a:	68a3      	ldr	r3, [r4, #8]
 8006e4c:	3b01      	subs	r3, #1
 8006e4e:	2b00      	cmp	r3, #0
 8006e50:	60a3      	str	r3, [r4, #8]
 8006e52:	daf0      	bge.n	8006e36 <__fputwc+0x3e>
 8006e54:	69a7      	ldr	r7, [r4, #24]
 8006e56:	42bb      	cmp	r3, r7
 8006e58:	4661      	mov	r1, ip
 8006e5a:	4622      	mov	r2, r4
 8006e5c:	4648      	mov	r0, r9
 8006e5e:	db02      	blt.n	8006e66 <__fputwc+0x6e>
 8006e60:	f1bc 0f0a 	cmp.w	ip, #10
 8006e64:	d1e7      	bne.n	8006e36 <__fputwc+0x3e>
 8006e66:	f000 f8bf 	bl	8006fe8 <__swbuf_r>
 8006e6a:	1c43      	adds	r3, r0, #1
 8006e6c:	d1e8      	bne.n	8006e40 <__fputwc+0x48>
 8006e6e:	b002      	add	sp, #8
 8006e70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e74:	4640      	mov	r0, r8
 8006e76:	b002      	add	sp, #8
 8006e78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e7c:	fa5f fc88 	uxtb.w	ip, r8
 8006e80:	4606      	mov	r6, r0
 8006e82:	f88d c004 	strb.w	ip, [sp, #4]
 8006e86:	e7d2      	b.n	8006e2e <__fputwc+0x36>
 8006e88:	89a3      	ldrh	r3, [r4, #12]
 8006e8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e8e:	81a3      	strh	r3, [r4, #12]
 8006e90:	b002      	add	sp, #8
 8006e92:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e96:	bf00      	nop

08006e98 <_fputwc_r>:
 8006e98:	b530      	push	{r4, r5, lr}
 8006e9a:	4605      	mov	r5, r0
 8006e9c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e9e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006ea2:	07c0      	lsls	r0, r0, #31
 8006ea4:	4614      	mov	r4, r2
 8006ea6:	b083      	sub	sp, #12
 8006ea8:	b29a      	uxth	r2, r3
 8006eaa:	d401      	bmi.n	8006eb0 <_fputwc_r+0x18>
 8006eac:	0590      	lsls	r0, r2, #22
 8006eae:	d51c      	bpl.n	8006eea <_fputwc_r+0x52>
 8006eb0:	0490      	lsls	r0, r2, #18
 8006eb2:	d406      	bmi.n	8006ec2 <_fputwc_r+0x2a>
 8006eb4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006eb6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006eba:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006ebe:	81a3      	strh	r3, [r4, #12]
 8006ec0:	6662      	str	r2, [r4, #100]	; 0x64
 8006ec2:	4628      	mov	r0, r5
 8006ec4:	4622      	mov	r2, r4
 8006ec6:	f7ff ff97 	bl	8006df8 <__fputwc>
 8006eca:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ecc:	07da      	lsls	r2, r3, #31
 8006ece:	4605      	mov	r5, r0
 8006ed0:	d402      	bmi.n	8006ed8 <_fputwc_r+0x40>
 8006ed2:	89a3      	ldrh	r3, [r4, #12]
 8006ed4:	059b      	lsls	r3, r3, #22
 8006ed6:	d502      	bpl.n	8006ede <_fputwc_r+0x46>
 8006ed8:	4628      	mov	r0, r5
 8006eda:	b003      	add	sp, #12
 8006edc:	bd30      	pop	{r4, r5, pc}
 8006ede:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ee0:	f7fe fd1e 	bl	8005920 <__retarget_lock_release_recursive>
 8006ee4:	4628      	mov	r0, r5
 8006ee6:	b003      	add	sp, #12
 8006ee8:	bd30      	pop	{r4, r5, pc}
 8006eea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006eec:	9101      	str	r1, [sp, #4]
 8006eee:	f7fe fd15 	bl	800591c <__retarget_lock_acquire_recursive>
 8006ef2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ef6:	9901      	ldr	r1, [sp, #4]
 8006ef8:	b29a      	uxth	r2, r3
 8006efa:	e7d9      	b.n	8006eb0 <_fputwc_r+0x18>

08006efc <_fstat_r>:
 8006efc:	b538      	push	{r3, r4, r5, lr}
 8006efe:	460b      	mov	r3, r1
 8006f00:	4c07      	ldr	r4, [pc, #28]	; (8006f20 <_fstat_r+0x24>)
 8006f02:	4605      	mov	r5, r0
 8006f04:	4611      	mov	r1, r2
 8006f06:	4618      	mov	r0, r3
 8006f08:	2300      	movs	r3, #0
 8006f0a:	6023      	str	r3, [r4, #0]
 8006f0c:	f7fb f9de 	bl	80022cc <_fstat>
 8006f10:	1c43      	adds	r3, r0, #1
 8006f12:	d000      	beq.n	8006f16 <_fstat_r+0x1a>
 8006f14:	bd38      	pop	{r3, r4, r5, pc}
 8006f16:	6823      	ldr	r3, [r4, #0]
 8006f18:	2b00      	cmp	r3, #0
 8006f1a:	d0fb      	beq.n	8006f14 <_fstat_r+0x18>
 8006f1c:	602b      	str	r3, [r5, #0]
 8006f1e:	bd38      	pop	{r3, r4, r5, pc}
 8006f20:	20000b48 	.word	0x20000b48

08006f24 <_isatty_r>:
 8006f24:	b538      	push	{r3, r4, r5, lr}
 8006f26:	4c07      	ldr	r4, [pc, #28]	; (8006f44 <_isatty_r+0x20>)
 8006f28:	2300      	movs	r3, #0
 8006f2a:	4605      	mov	r5, r0
 8006f2c:	4608      	mov	r0, r1
 8006f2e:	6023      	str	r3, [r4, #0]
 8006f30:	f7fb f9d1 	bl	80022d6 <_isatty>
 8006f34:	1c43      	adds	r3, r0, #1
 8006f36:	d000      	beq.n	8006f3a <_isatty_r+0x16>
 8006f38:	bd38      	pop	{r3, r4, r5, pc}
 8006f3a:	6823      	ldr	r3, [r4, #0]
 8006f3c:	2b00      	cmp	r3, #0
 8006f3e:	d0fb      	beq.n	8006f38 <_isatty_r+0x14>
 8006f40:	602b      	str	r3, [r5, #0]
 8006f42:	bd38      	pop	{r3, r4, r5, pc}
 8006f44:	20000b48 	.word	0x20000b48

08006f48 <__locale_mb_cur_max>:
 8006f48:	4b04      	ldr	r3, [pc, #16]	; (8006f5c <__locale_mb_cur_max+0x14>)
 8006f4a:	4a05      	ldr	r2, [pc, #20]	; (8006f60 <__locale_mb_cur_max+0x18>)
 8006f4c:	681b      	ldr	r3, [r3, #0]
 8006f4e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006f50:	2b00      	cmp	r3, #0
 8006f52:	bf08      	it	eq
 8006f54:	4613      	moveq	r3, r2
 8006f56:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006f5a:	4770      	bx	lr
 8006f5c:	2000003c 	.word	0x2000003c
 8006f60:	2000087c 	.word	0x2000087c

08006f64 <_lseek_r>:
 8006f64:	b570      	push	{r4, r5, r6, lr}
 8006f66:	460d      	mov	r5, r1
 8006f68:	4c08      	ldr	r4, [pc, #32]	; (8006f8c <_lseek_r+0x28>)
 8006f6a:	4611      	mov	r1, r2
 8006f6c:	4606      	mov	r6, r0
 8006f6e:	461a      	mov	r2, r3
 8006f70:	4628      	mov	r0, r5
 8006f72:	2300      	movs	r3, #0
 8006f74:	6023      	str	r3, [r4, #0]
 8006f76:	f7fb f9b0 	bl	80022da <_lseek>
 8006f7a:	1c43      	adds	r3, r0, #1
 8006f7c:	d000      	beq.n	8006f80 <_lseek_r+0x1c>
 8006f7e:	bd70      	pop	{r4, r5, r6, pc}
 8006f80:	6823      	ldr	r3, [r4, #0]
 8006f82:	2b00      	cmp	r3, #0
 8006f84:	d0fb      	beq.n	8006f7e <_lseek_r+0x1a>
 8006f86:	6033      	str	r3, [r6, #0]
 8006f88:	bd70      	pop	{r4, r5, r6, pc}
 8006f8a:	bf00      	nop
 8006f8c:	20000b48 	.word	0x20000b48

08006f90 <__ascii_mbtowc>:
 8006f90:	b082      	sub	sp, #8
 8006f92:	b149      	cbz	r1, 8006fa8 <__ascii_mbtowc+0x18>
 8006f94:	b15a      	cbz	r2, 8006fae <__ascii_mbtowc+0x1e>
 8006f96:	b16b      	cbz	r3, 8006fb4 <__ascii_mbtowc+0x24>
 8006f98:	7813      	ldrb	r3, [r2, #0]
 8006f9a:	600b      	str	r3, [r1, #0]
 8006f9c:	7812      	ldrb	r2, [r2, #0]
 8006f9e:	1c10      	adds	r0, r2, #0
 8006fa0:	bf18      	it	ne
 8006fa2:	2001      	movne	r0, #1
 8006fa4:	b002      	add	sp, #8
 8006fa6:	4770      	bx	lr
 8006fa8:	a901      	add	r1, sp, #4
 8006faa:	2a00      	cmp	r2, #0
 8006fac:	d1f3      	bne.n	8006f96 <__ascii_mbtowc+0x6>
 8006fae:	4610      	mov	r0, r2
 8006fb0:	b002      	add	sp, #8
 8006fb2:	4770      	bx	lr
 8006fb4:	f06f 0001 	mvn.w	r0, #1
 8006fb8:	e7f4      	b.n	8006fa4 <__ascii_mbtowc+0x14>
 8006fba:	bf00      	nop

08006fbc <_read_r>:
 8006fbc:	b570      	push	{r4, r5, r6, lr}
 8006fbe:	460d      	mov	r5, r1
 8006fc0:	4c08      	ldr	r4, [pc, #32]	; (8006fe4 <_read_r+0x28>)
 8006fc2:	4611      	mov	r1, r2
 8006fc4:	4606      	mov	r6, r0
 8006fc6:	461a      	mov	r2, r3
 8006fc8:	4628      	mov	r0, r5
 8006fca:	2300      	movs	r3, #0
 8006fcc:	6023      	str	r3, [r4, #0]
 8006fce:	f7fb f938 	bl	8002242 <_read>
 8006fd2:	1c43      	adds	r3, r0, #1
 8006fd4:	d000      	beq.n	8006fd8 <_read_r+0x1c>
 8006fd6:	bd70      	pop	{r4, r5, r6, pc}
 8006fd8:	6823      	ldr	r3, [r4, #0]
 8006fda:	2b00      	cmp	r3, #0
 8006fdc:	d0fb      	beq.n	8006fd6 <_read_r+0x1a>
 8006fde:	6033      	str	r3, [r6, #0]
 8006fe0:	bd70      	pop	{r4, r5, r6, pc}
 8006fe2:	bf00      	nop
 8006fe4:	20000b48 	.word	0x20000b48

08006fe8 <__swbuf_r>:
 8006fe8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fea:	460d      	mov	r5, r1
 8006fec:	4614      	mov	r4, r2
 8006fee:	4606      	mov	r6, r0
 8006ff0:	b110      	cbz	r0, 8006ff8 <__swbuf_r+0x10>
 8006ff2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ff4:	2b00      	cmp	r3, #0
 8006ff6:	d043      	beq.n	8007080 <__swbuf_r+0x98>
 8006ff8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ffc:	69a3      	ldr	r3, [r4, #24]
 8006ffe:	60a3      	str	r3, [r4, #8]
 8007000:	b291      	uxth	r1, r2
 8007002:	0708      	lsls	r0, r1, #28
 8007004:	d51b      	bpl.n	800703e <__swbuf_r+0x56>
 8007006:	6923      	ldr	r3, [r4, #16]
 8007008:	b1cb      	cbz	r3, 800703e <__swbuf_r+0x56>
 800700a:	b2ed      	uxtb	r5, r5
 800700c:	0489      	lsls	r1, r1, #18
 800700e:	462f      	mov	r7, r5
 8007010:	d522      	bpl.n	8007058 <__swbuf_r+0x70>
 8007012:	6822      	ldr	r2, [r4, #0]
 8007014:	6961      	ldr	r1, [r4, #20]
 8007016:	1ad3      	subs	r3, r2, r3
 8007018:	4299      	cmp	r1, r3
 800701a:	dd29      	ble.n	8007070 <__swbuf_r+0x88>
 800701c:	3301      	adds	r3, #1
 800701e:	68a1      	ldr	r1, [r4, #8]
 8007020:	1c50      	adds	r0, r2, #1
 8007022:	3901      	subs	r1, #1
 8007024:	60a1      	str	r1, [r4, #8]
 8007026:	6020      	str	r0, [r4, #0]
 8007028:	7015      	strb	r5, [r2, #0]
 800702a:	6962      	ldr	r2, [r4, #20]
 800702c:	429a      	cmp	r2, r3
 800702e:	d02a      	beq.n	8007086 <__swbuf_r+0x9e>
 8007030:	89a3      	ldrh	r3, [r4, #12]
 8007032:	07db      	lsls	r3, r3, #31
 8007034:	d501      	bpl.n	800703a <__swbuf_r+0x52>
 8007036:	2d0a      	cmp	r5, #10
 8007038:	d025      	beq.n	8007086 <__swbuf_r+0x9e>
 800703a:	4638      	mov	r0, r7
 800703c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800703e:	4621      	mov	r1, r4
 8007040:	4630      	mov	r0, r6
 8007042:	f7fc fffd 	bl	8004040 <__swsetup_r>
 8007046:	bb20      	cbnz	r0, 8007092 <__swbuf_r+0xaa>
 8007048:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800704c:	6923      	ldr	r3, [r4, #16]
 800704e:	b291      	uxth	r1, r2
 8007050:	b2ed      	uxtb	r5, r5
 8007052:	0489      	lsls	r1, r1, #18
 8007054:	462f      	mov	r7, r5
 8007056:	d4dc      	bmi.n	8007012 <__swbuf_r+0x2a>
 8007058:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800705a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800705e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007062:	81a2      	strh	r2, [r4, #12]
 8007064:	6822      	ldr	r2, [r4, #0]
 8007066:	6661      	str	r1, [r4, #100]	; 0x64
 8007068:	6961      	ldr	r1, [r4, #20]
 800706a:	1ad3      	subs	r3, r2, r3
 800706c:	4299      	cmp	r1, r3
 800706e:	dcd5      	bgt.n	800701c <__swbuf_r+0x34>
 8007070:	4621      	mov	r1, r4
 8007072:	4630      	mov	r0, r6
 8007074:	f7fe f8a6 	bl	80051c4 <_fflush_r>
 8007078:	b958      	cbnz	r0, 8007092 <__swbuf_r+0xaa>
 800707a:	6822      	ldr	r2, [r4, #0]
 800707c:	2301      	movs	r3, #1
 800707e:	e7ce      	b.n	800701e <__swbuf_r+0x36>
 8007080:	f7fe f8fc 	bl	800527c <__sinit>
 8007084:	e7b8      	b.n	8006ff8 <__swbuf_r+0x10>
 8007086:	4621      	mov	r1, r4
 8007088:	4630      	mov	r0, r6
 800708a:	f7fe f89b 	bl	80051c4 <_fflush_r>
 800708e:	2800      	cmp	r0, #0
 8007090:	d0d3      	beq.n	800703a <__swbuf_r+0x52>
 8007092:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007096:	e7d0      	b.n	800703a <__swbuf_r+0x52>

08007098 <_wcrtomb_r>:
 8007098:	b5f0      	push	{r4, r5, r6, r7, lr}
 800709a:	4c11      	ldr	r4, [pc, #68]	; (80070e0 <_wcrtomb_r+0x48>)
 800709c:	6824      	ldr	r4, [r4, #0]
 800709e:	b085      	sub	sp, #20
 80070a0:	4606      	mov	r6, r0
 80070a2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80070a4:	461f      	mov	r7, r3
 80070a6:	b151      	cbz	r1, 80070be <_wcrtomb_r+0x26>
 80070a8:	4d0e      	ldr	r5, [pc, #56]	; (80070e4 <_wcrtomb_r+0x4c>)
 80070aa:	2c00      	cmp	r4, #0
 80070ac:	bf08      	it	eq
 80070ae:	462c      	moveq	r4, r5
 80070b0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070b4:	47a0      	blx	r4
 80070b6:	1c43      	adds	r3, r0, #1
 80070b8:	d00c      	beq.n	80070d4 <_wcrtomb_r+0x3c>
 80070ba:	b005      	add	sp, #20
 80070bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070be:	4a09      	ldr	r2, [pc, #36]	; (80070e4 <_wcrtomb_r+0x4c>)
 80070c0:	2c00      	cmp	r4, #0
 80070c2:	bf08      	it	eq
 80070c4:	4614      	moveq	r4, r2
 80070c6:	460a      	mov	r2, r1
 80070c8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070cc:	a901      	add	r1, sp, #4
 80070ce:	47a0      	blx	r4
 80070d0:	1c43      	adds	r3, r0, #1
 80070d2:	d1f2      	bne.n	80070ba <_wcrtomb_r+0x22>
 80070d4:	2200      	movs	r2, #0
 80070d6:	238a      	movs	r3, #138	; 0x8a
 80070d8:	603a      	str	r2, [r7, #0]
 80070da:	6033      	str	r3, [r6, #0]
 80070dc:	b005      	add	sp, #20
 80070de:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070e0:	2000003c 	.word	0x2000003c
 80070e4:	2000087c 	.word	0x2000087c

080070e8 <__ascii_wctomb>:
 80070e8:	b121      	cbz	r1, 80070f4 <__ascii_wctomb+0xc>
 80070ea:	2aff      	cmp	r2, #255	; 0xff
 80070ec:	d804      	bhi.n	80070f8 <__ascii_wctomb+0x10>
 80070ee:	700a      	strb	r2, [r1, #0]
 80070f0:	2001      	movs	r0, #1
 80070f2:	4770      	bx	lr
 80070f4:	4608      	mov	r0, r1
 80070f6:	4770      	bx	lr
 80070f8:	238a      	movs	r3, #138	; 0x8a
 80070fa:	6003      	str	r3, [r0, #0]
 80070fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007100:	4770      	bx	lr
 8007102:	bf00      	nop

08007104 <_init>:
 8007104:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007106:	bf00      	nop
 8007108:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800710a:	bc08      	pop	{r3}
 800710c:	469e      	mov	lr, r3
 800710e:	4770      	bx	lr

08007110 <_fini>:
 8007110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007112:	bf00      	nop
 8007114:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007116:	bc08      	pop	{r3}
 8007118:	469e      	mov	lr, r3
 800711a:	4770      	bx	lr
 800711c:	0000      	movs	r0, r0
	...
