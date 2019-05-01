
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
 80001d8:	200009c8 	.word	0x200009c8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	0800a78c 	.word	0x0800a78c

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
 80001fc:	0800a78c 	.word	0x0800a78c

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
 80011a0:	f640 30cc 	movw	r0, #3020	; 0xbcc
 80011a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011a8:	6801      	ldr	r1, [r0, #0]
 80011aa:	3101      	adds	r1, #1
 80011ac:	6001      	str	r1, [r0, #0]
 80011ae:	4770      	bx	lr

080011b0 <HAL_GetTick>:
 80011b0:	f640 30cc 	movw	r0, #3020	; 0xbcc
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
 8001480:	f24a 72c0 	movw	r2, #42944	; 0xa7c0
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
 80014fa:	f24a 72b8 	movw	r2, #42936	; 0xa7b8
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
 8001524:	f24a 72b8 	movw	r2, #42936	; 0xa7b8
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
 80018da:	f640 31d0 	movw	r1, #3024	; 0xbd0
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
 8001924:	f640 30d0 	movw	r0, #3024	; 0xbd0
 8001928:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800192c:	f7ff fecd 	bl	80016ca <HAL_TIM_Base_Start_IT>
 8001930:	b006      	add	sp, #24
 8001932:	bdb0      	pop	{r4, r5, r7, pc}

08001934 <HAL_TIM_PeriodElapsedCallback>:
 8001934:	f7ff bc34 	b.w	80011a0 <HAL_IncTick>

08001938 <TIM6_DAC_IRQHandler>:
 8001938:	f640 30d0 	movw	r0, #3024	; 0xbd0
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
 8001a6c:	f24a 73f0 	movw	r3, #42992	; 0xa7f0
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
 8001a94:	f64a 0300 	movw	r3, #43008	; 0xa800
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

08001e9c <osSystickHandler>:
 8001e9c:	b580      	push	{r7, lr}
 8001e9e:	466f      	mov	r7, sp
 8001ea0:	f000 f92d 	bl	80020fe <xTaskGetSchedulerState>
 8001ea4:	2801      	cmp	r0, #1
 8001ea6:	bf1c      	itt	ne
 8001ea8:	e8bd 4080 	ldmiane.w	sp!, {r7, lr}
 8001eac:	f000 b98a 	bne.w	80021c4 <xPortSysTickHandler>
 8001eb0:	bd80      	pop	{r7, pc}

08001eb2 <vListInsertEnd>:
 8001eb2:	6842      	ldr	r2, [r0, #4]
 8001eb4:	604a      	str	r2, [r1, #4]
 8001eb6:	6893      	ldr	r3, [r2, #8]
 8001eb8:	608b      	str	r3, [r1, #8]
 8001eba:	6893      	ldr	r3, [r2, #8]
 8001ebc:	6059      	str	r1, [r3, #4]
 8001ebe:	6091      	str	r1, [r2, #8]
 8001ec0:	6108      	str	r0, [r1, #16]
 8001ec2:	6801      	ldr	r1, [r0, #0]
 8001ec4:	3101      	adds	r1, #1
 8001ec6:	6001      	str	r1, [r0, #0]
 8001ec8:	4770      	bx	lr

08001eca <uxListRemove>:
 8001eca:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
 8001ece:	6901      	ldr	r1, [r0, #16]
 8001ed0:	609a      	str	r2, [r3, #8]
 8001ed2:	6882      	ldr	r2, [r0, #8]
 8001ed4:	6053      	str	r3, [r2, #4]
 8001ed6:	684b      	ldr	r3, [r1, #4]
 8001ed8:	4283      	cmp	r3, r0
 8001eda:	bf08      	it	eq
 8001edc:	604a      	streq	r2, [r1, #4]
 8001ede:	2200      	movs	r2, #0
 8001ee0:	6102      	str	r2, [r0, #16]
 8001ee2:	6808      	ldr	r0, [r1, #0]
 8001ee4:	3801      	subs	r0, #1
 8001ee6:	6008      	str	r0, [r1, #0]
 8001ee8:	6808      	ldr	r0, [r1, #0]
 8001eea:	4770      	bx	lr

08001eec <vTaskSwitchContext>:
 8001eec:	f640 209c 	movw	r0, #2716	; 0xa9c
 8001ef0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ef4:	6800      	ldr	r0, [r0, #0]
 8001ef6:	2800      	cmp	r0, #0
 8001ef8:	bf1f      	itttt	ne
 8001efa:	f640 20dc 	movwne	r0, #2780	; 0xadc
 8001efe:	f2c2 0000 	movtne	r0, #8192	; 0x2000
 8001f02:	2101      	movne	r1, #1
 8001f04:	6001      	strne	r1, [r0, #0]
 8001f06:	bf18      	it	ne
 8001f08:	4770      	bxne	lr
 8001f0a:	f640 20dc 	movw	r0, #2780	; 0xadc
 8001f0e:	2100      	movs	r1, #0
 8001f10:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f14:	6001      	str	r1, [r0, #0]
 8001f16:	f640 2074 	movw	r0, #2676	; 0xa74
 8001f1a:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8001f1e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f22:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f26:	6800      	ldr	r0, [r0, #0]
 8001f28:	fab0 f080 	clz	r0, r0
 8001f2c:	b2c0      	uxtb	r0, r0
 8001f2e:	f1c0 001f 	rsb	r0, r0, #31
 8001f32:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8001f36:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8001f3a:	b18a      	cbz	r2, 8001f60 <vTaskSwitchContext+0x74>
 8001f3c:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8001f40:	f851 0f04 	ldr.w	r0, [r1, #4]!
 8001f44:	6840      	ldr	r0, [r0, #4]
 8001f46:	1d0a      	adds	r2, r1, #4
 8001f48:	6008      	str	r0, [r1, #0]
 8001f4a:	4290      	cmp	r0, r2
 8001f4c:	bf04      	itt	eq
 8001f4e:	6840      	ldreq	r0, [r0, #4]
 8001f50:	6008      	streq	r0, [r1, #0]
 8001f52:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001f56:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f5a:	68c0      	ldr	r0, [r0, #12]
 8001f5c:	6008      	str	r0, [r1, #0]
 8001f5e:	4770      	bx	lr
 8001f60:	f04f 0050 	mov.w	r0, #80	; 0x50
 8001f64:	f380 8811 	msr	BASEPRI, r0
 8001f68:	f3bf 8f6f 	isb	sy
 8001f6c:	f3bf 8f4f 	dsb	sy
 8001f70:	e7fe      	b.n	8001f70 <vTaskSwitchContext+0x84>

08001f72 <xTaskIncrementTick>:
 8001f72:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f74:	af03      	add	r7, sp, #12
 8001f76:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f7a:	b081      	sub	sp, #4
 8001f7c:	f640 209c 	movw	r0, #2716	; 0xa9c
 8001f80:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f84:	6800      	ldr	r0, [r0, #0]
 8001f86:	b140      	cbz	r0, 8001f9a <xTaskIncrementTick+0x28>
 8001f88:	f640 20e0 	movw	r0, #2784	; 0xae0
 8001f8c:	2400      	movs	r4, #0
 8001f8e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f92:	6801      	ldr	r1, [r0, #0]
 8001f94:	3101      	adds	r1, #1
 8001f96:	6001      	str	r1, [r0, #0]
 8001f98:	e085      	b.n	80020a6 <xTaskIncrementTick+0x134>
 8001f9a:	f640 20d8 	movw	r0, #2776	; 0xad8
 8001f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fa2:	6801      	ldr	r1, [r0, #0]
 8001fa4:	1c4e      	adds	r6, r1, #1
 8001fa6:	6006      	str	r6, [r0, #0]
 8001fa8:	d058      	beq.n	800205c <xTaskIncrementTick+0xea>
 8001faa:	f640 21d4 	movw	r1, #2772	; 0xad4
 8001fae:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fb2:	6808      	ldr	r0, [r1, #0]
 8001fb4:	4286      	cmp	r6, r0
 8001fb6:	d201      	bcs.n	8001fbc <xTaskIncrementTick+0x4a>
 8001fb8:	2400      	movs	r4, #0
 8001fba:	e063      	b.n	8002084 <xTaskIncrementTick+0x112>
 8001fbc:	f640 29a0 	movw	r9, #2720	; 0xaa0
 8001fc0:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001fc4:	f8d9 0000 	ldr.w	r0, [r9]
 8001fc8:	6800      	ldr	r0, [r0, #0]
 8001fca:	2800      	cmp	r0, #0
 8001fcc:	d056      	beq.n	800207c <xTaskIncrementTick+0x10a>
 8001fce:	f640 2b74 	movw	fp, #2676	; 0xa74
 8001fd2:	2400      	movs	r4, #0
 8001fd4:	f04f 0a01 	mov.w	sl, #1
 8001fd8:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8001fdc:	f8d9 0000 	ldr.w	r0, [r9]
 8001fe0:	68c0      	ldr	r0, [r0, #12]
 8001fe2:	f8d0 800c 	ldr.w	r8, [r0, #12]
 8001fe6:	4645      	mov	r5, r8
 8001fe8:	f855 0f04 	ldr.w	r0, [r5, #4]!
 8001fec:	4286      	cmp	r6, r0
 8001fee:	d330      	bcc.n	8002052 <xTaskIncrementTick+0xe0>
 8001ff0:	4628      	mov	r0, r5
 8001ff2:	f7ff ff6a 	bl	8001eca <uxListRemove>
 8001ff6:	f8d8 0028 	ldr.w	r0, [r8, #40]	; 0x28
 8001ffa:	2800      	cmp	r0, #0
 8001ffc:	bf1c      	itt	ne
 8001ffe:	f108 0018 	addne.w	r0, r8, #24
 8002002:	f7ff ff62 	blne	8001eca <uxListRemove>
 8002006:	f8d8 002c 	ldr.w	r0, [r8, #44]	; 0x2c
 800200a:	f8db 2000 	ldr.w	r2, [fp]
 800200e:	fa0a f100 	lsl.w	r1, sl, r0
 8002012:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002016:	4311      	orrs	r1, r2
 8002018:	f8cb 1000 	str.w	r1, [fp]
 800201c:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002020:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002024:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8002028:	4629      	mov	r1, r5
 800202a:	f7ff ff42 	bl	8001eb2 <vListInsertEnd>
 800202e:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002032:	f8d8 002c 	ldr.w	r0, [r8, #44]	; 0x2c
 8002036:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800203a:	6809      	ldr	r1, [r1, #0]
 800203c:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 800203e:	4288      	cmp	r0, r1
 8002040:	bf28      	it	cs
 8002042:	4654      	movcs	r4, sl
 8002044:	f8d9 0000 	ldr.w	r0, [r9]
 8002048:	6800      	ldr	r0, [r0, #0]
 800204a:	2800      	cmp	r0, #0
 800204c:	d1c6      	bne.n	8001fdc <xTaskIncrementTick+0x6a>
 800204e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002052:	f640 21d4 	movw	r1, #2772	; 0xad4
 8002056:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800205a:	e012      	b.n	8002082 <xTaskIncrementTick+0x110>
 800205c:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8002060:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002064:	6801      	ldr	r1, [r0, #0]
 8002066:	6809      	ldr	r1, [r1, #0]
 8002068:	b351      	cbz	r1, 80020c0 <xTaskIncrementTick+0x14e>
 800206a:	f04f 0050 	mov.w	r0, #80	; 0x50
 800206e:	f380 8811 	msr	BASEPRI, r0
 8002072:	f3bf 8f6f 	isb	sy
 8002076:	f3bf 8f4f 	dsb	sy
 800207a:	e7fe      	b.n	800207a <xTaskIncrementTick+0x108>
 800207c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002080:	2400      	movs	r4, #0
 8002082:	6008      	str	r0, [r1, #0]
 8002084:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002088:	f640 11e8 	movw	r1, #2536	; 0x9e8
 800208c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002090:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002094:	6800      	ldr	r0, [r0, #0]
 8002096:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002098:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800209c:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 80020a0:	2801      	cmp	r0, #1
 80020a2:	bf88      	it	hi
 80020a4:	2401      	movhi	r4, #1
 80020a6:	f640 20dc 	movw	r0, #2780	; 0xadc
 80020aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020ae:	6800      	ldr	r0, [r0, #0]
 80020b0:	2800      	cmp	r0, #0
 80020b2:	bf18      	it	ne
 80020b4:	2401      	movne	r4, #1
 80020b6:	4620      	mov	r0, r4
 80020b8:	b001      	add	sp, #4
 80020ba:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020be:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80020c0:	f640 22a4 	movw	r2, #2724	; 0xaa4
 80020c4:	6801      	ldr	r1, [r0, #0]
 80020c6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020ca:	6813      	ldr	r3, [r2, #0]
 80020cc:	6003      	str	r3, [r0, #0]
 80020ce:	6011      	str	r1, [r2, #0]
 80020d0:	f640 21e4 	movw	r1, #2788	; 0xae4
 80020d4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020d8:	680a      	ldr	r2, [r1, #0]
 80020da:	3201      	adds	r2, #1
 80020dc:	600a      	str	r2, [r1, #0]
 80020de:	6801      	ldr	r1, [r0, #0]
 80020e0:	6809      	ldr	r1, [r1, #0]
 80020e2:	b121      	cbz	r1, 80020ee <xTaskIncrementTick+0x17c>
 80020e4:	6800      	ldr	r0, [r0, #0]
 80020e6:	68c0      	ldr	r0, [r0, #12]
 80020e8:	68c0      	ldr	r0, [r0, #12]
 80020ea:	6840      	ldr	r0, [r0, #4]
 80020ec:	e001      	b.n	80020f2 <xTaskIncrementTick+0x180>
 80020ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020f2:	f640 21d4 	movw	r1, #2772	; 0xad4
 80020f6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020fa:	6008      	str	r0, [r1, #0]
 80020fc:	e755      	b.n	8001faa <xTaskIncrementTick+0x38>

080020fe <xTaskGetSchedulerState>:
 80020fe:	f640 2098 	movw	r0, #2712	; 0xa98
 8002102:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002106:	6800      	ldr	r0, [r0, #0]
 8002108:	2800      	cmp	r0, #0
 800210a:	bf04      	itt	eq
 800210c:	2001      	moveq	r0, #1
 800210e:	4770      	bxeq	lr
 8002110:	f640 209c 	movw	r0, #2716	; 0xa9c
 8002114:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002118:	6801      	ldr	r1, [r0, #0]
 800211a:	2000      	movs	r0, #0
 800211c:	2900      	cmp	r1, #0
 800211e:	bf08      	it	eq
 8002120:	2002      	moveq	r0, #2
 8002122:	4770      	bx	lr
	...

08002130 <SVC_Handler>:
 8002130:	4b07      	ldr	r3, [pc, #28]	; (8002150 <pxCurrentTCBConst2>)
 8002132:	6819      	ldr	r1, [r3, #0]
 8002134:	6808      	ldr	r0, [r1, #0]
 8002136:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800213a:	f380 8809 	msr	PSP, r0
 800213e:	f3bf 8f6f 	isb	sy
 8002142:	f04f 0000 	mov.w	r0, #0
 8002146:	f380 8811 	msr	BASEPRI, r0
 800214a:	4770      	bx	lr
 800214c:	bf00      	nop
 800214e:	bf00      	nop

08002150 <pxCurrentTCBConst2>:
 8002150:	200009e4 	.word	0x200009e4
	...

08002160 <PendSV_Handler>:
 8002160:	f3ef 8009 	mrs	r0, PSP
 8002164:	f3bf 8f6f 	isb	sy
 8002168:	4b15      	ldr	r3, [pc, #84]	; (80021c0 <pxCurrentTCBConst>)
 800216a:	681a      	ldr	r2, [r3, #0]
 800216c:	f01e 0f10 	tst.w	lr, #16
 8002170:	bf08      	it	eq
 8002172:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8002176:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800217a:	6010      	str	r0, [r2, #0]
 800217c:	e92d 0009 	stmdb	sp!, {r0, r3}
 8002180:	f04f 0050 	mov.w	r0, #80	; 0x50
 8002184:	f380 8811 	msr	BASEPRI, r0
 8002188:	f3bf 8f4f 	dsb	sy
 800218c:	f3bf 8f6f 	isb	sy
 8002190:	f7ff feac 	bl	8001eec <vTaskSwitchContext>
 8002194:	f04f 0000 	mov.w	r0, #0
 8002198:	f380 8811 	msr	BASEPRI, r0
 800219c:	e8bd 0009 	ldmia.w	sp!, {r0, r3}
 80021a0:	6819      	ldr	r1, [r3, #0]
 80021a2:	6808      	ldr	r0, [r1, #0]
 80021a4:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80021a8:	f01e 0f10 	tst.w	lr, #16
 80021ac:	bf08      	it	eq
 80021ae:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 80021b2:	f380 8809 	msr	PSP, r0
 80021b6:	f3bf 8f6f 	isb	sy
 80021ba:	4770      	bx	lr
 80021bc:	bf00      	nop
 80021be:	bf00      	nop

080021c0 <pxCurrentTCBConst>:
 80021c0:	200009e4 	.word	0x200009e4

080021c4 <xPortSysTickHandler>:
 80021c4:	b580      	push	{r7, lr}
 80021c6:	466f      	mov	r7, sp
 80021c8:	f04f 0050 	mov.w	r0, #80	; 0x50
 80021cc:	f380 8811 	msr	BASEPRI, r0
 80021d0:	f3bf 8f6f 	isb	sy
 80021d4:	f3bf 8f4f 	dsb	sy
 80021d8:	f7ff fecb 	bl	8001f72 <xTaskIncrementTick>
 80021dc:	2800      	cmp	r0, #0
 80021de:	bf1f      	itttt	ne
 80021e0:	f64e 5004 	movwne	r0, #60676	; 0xed04
 80021e4:	f2ce 0000 	movtne	r0, #57344	; 0xe000
 80021e8:	f04f 5180 	movne.w	r1, #268435456	; 0x10000000
 80021ec:	6001      	strne	r1, [r0, #0]
 80021ee:	2000      	movs	r0, #0
 80021f0:	f380 8811 	msr	BASEPRI, r0
 80021f4:	bd80      	pop	{r7, pc}

080021f6 <BSP_COM_Init>:
 80021f6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021f8:	af03      	add	r7, sp, #12
 80021fa:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 80021fe:	b086      	sub	sp, #24
 8002200:	4605      	mov	r5, r0
 8002202:	4688      	mov	r8, r1
 8002204:	b9f5      	cbnz	r5, 8002244 <BSP_COM_Init+0x4e>
 8002206:	f241 004c 	movw	r0, #4172	; 0x104c
 800220a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800220e:	6801      	ldr	r1, [r0, #0]
 8002210:	f041 0102 	orr.w	r1, r1, #2
 8002214:	6001      	str	r1, [r0, #0]
 8002216:	6801      	ldr	r1, [r0, #0]
 8002218:	f001 0102 	and.w	r1, r1, #2
 800221c:	9101      	str	r1, [sp, #4]
 800221e:	9901      	ldr	r1, [sp, #4]
 8002220:	6801      	ldr	r1, [r0, #0]
 8002222:	f041 0102 	orr.w	r1, r1, #2
 8002226:	6001      	str	r1, [r0, #0]
 8002228:	6801      	ldr	r1, [r0, #0]
 800222a:	f001 0102 	and.w	r1, r1, #2
 800222e:	9101      	str	r1, [sp, #4]
 8002230:	9901      	ldr	r1, [sp, #4]
 8002232:	6941      	ldr	r1, [r0, #20]
 8002234:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8002238:	6141      	str	r1, [r0, #20]
 800223a:	6940      	ldr	r0, [r0, #20]
 800223c:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002240:	9001      	str	r0, [sp, #4]
 8002242:	9801      	ldr	r0, [sp, #4]
 8002244:	2040      	movs	r0, #64	; 0x40
 8002246:	2402      	movs	r4, #2
 8002248:	ae01      	add	r6, sp, #4
 800224a:	f04f 0907 	mov.w	r9, #7
 800224e:	9001      	str	r0, [sp, #4]
 8002250:	2000      	movs	r0, #0
 8002252:	9402      	str	r4, [sp, #8]
 8002254:	9404      	str	r4, [sp, #16]
 8002256:	4631      	mov	r1, r6
 8002258:	9003      	str	r0, [sp, #12]
 800225a:	f240 000c 	movw	r0, #12
 800225e:	f8cd 9014 	str.w	r9, [sp, #20]
 8002262:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002266:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 800226a:	f7fe fffa 	bl	8001262 <HAL_GPIO_Init>
 800226e:	2080      	movs	r0, #128	; 0x80
 8002270:	4631      	mov	r1, r6
 8002272:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8002276:	f240 0010 	movw	r0, #16
 800227a:	f8cd 9014 	str.w	r9, [sp, #20]
 800227e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002282:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002286:	f7fe ffec 	bl	8001262 <HAL_GPIO_Init>
 800228a:	f240 0008 	movw	r0, #8
 800228e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002292:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002296:	f8c8 0000 	str.w	r0, [r8]
 800229a:	4640      	mov	r0, r8
 800229c:	f7ff fb52 	bl	8001944 <HAL_UART_Init>
 80022a0:	b006      	add	sp, #24
 80022a2:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80022a6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022a8 <verify_benchmark>:
 80022a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80022ac:	4770      	bx	lr

080022ae <initialise_benchmark>:
 80022ae:	4770      	bx	lr

080022b0 <benchmark>:
 80022b0:	b5b0      	push	{r4, r5, r7, lr}
 80022b2:	af02      	add	r7, sp, #8
 80022b4:	ed2d 8b0e 	vpush	{d8-d14}
 80022b8:	b0e2      	sub	sp, #392	; 0x188
 80022ba:	466c      	mov	r4, sp
 80022bc:	f44f 71c0 	mov.w	r1, #384	; 0x180
 80022c0:	4620      	mov	r0, r4
 80022c2:	f003 fbf5 	bl	8005ab0 <__aeabi_memclr>
 80022c6:	ed9f cbcc 	vldr	d12, [pc, #816]	; 80025f8 <benchmark+0x348>
 80022ca:	ed9f 8bd1 	vldr	d8, [pc, #836]	; 8002610 <benchmark+0x360>
 80022ce:	ed9f 1bcc 	vldr	d1, [pc, #816]	; 8002600 <benchmark+0x350>
 80022d2:	ed9f 2bcd 	vldr	d2, [pc, #820]	; 8002608 <benchmark+0x358>
 80022d6:	ad61      	add	r5, sp, #388	; 0x184
 80022d8:	4621      	mov	r1, r4
 80022da:	4628      	mov	r0, r5
 80022dc:	eeb0 0a4c 	vmov.f32	s0, s24
 80022e0:	eeb0 3a48 	vmov.f32	s6, s16
 80022e4:	eef0 0a6c 	vmov.f32	s1, s25
 80022e8:	eef0 3a68 	vmov.f32	s7, s17
 80022ec:	f000 f9cc 	bl	8002688 <SolveCubic>
 80022f0:	ed9f 1bc9 	vldr	d1, [pc, #804]	; 8002618 <benchmark+0x368>
 80022f4:	ed9f 2bca 	vldr	d2, [pc, #808]	; 8002620 <benchmark+0x370>
 80022f8:	eeb0 0a4c 	vmov.f32	s0, s24
 80022fc:	eeb0 3a48 	vmov.f32	s6, s16
 8002300:	4628      	mov	r0, r5
 8002302:	4621      	mov	r1, r4
 8002304:	eef0 0a6c 	vmov.f32	s1, s25
 8002308:	eef0 3a68 	vmov.f32	s7, s17
 800230c:	f000 f9bc 	bl	8002688 <SolveCubic>
 8002310:	ed9f 1bc5 	vldr	d1, [pc, #788]	; 8002628 <benchmark+0x378>
 8002314:	ed9f 2bc6 	vldr	d2, [pc, #792]	; 8002630 <benchmark+0x380>
 8002318:	ed9f 3bc7 	vldr	d3, [pc, #796]	; 8002638 <benchmark+0x388>
 800231c:	eeb0 0a4c 	vmov.f32	s0, s24
 8002320:	4628      	mov	r0, r5
 8002322:	4621      	mov	r1, r4
 8002324:	eef0 0a6c 	vmov.f32	s1, s25
 8002328:	f000 f9ae 	bl	8002688 <SolveCubic>
 800232c:	ed9f 1bc4 	vldr	d1, [pc, #784]	; 8002640 <benchmark+0x390>
 8002330:	ed9f 3bc5 	vldr	d3, [pc, #788]	; 8002648 <benchmark+0x398>
 8002334:	eeb0 0a4c 	vmov.f32	s0, s24
 8002338:	eeb0 2a4c 	vmov.f32	s4, s24
 800233c:	4628      	mov	r0, r5
 800233e:	4621      	mov	r1, r4
 8002340:	eef0 0a6c 	vmov.f32	s1, s25
 8002344:	eef0 2a6c 	vmov.f32	s5, s25
 8002348:	f000 f99e 	bl	8002688 <SolveCubic>
 800234c:	ed9f dbc0 	vldr	d13, [pc, #768]	; 8002650 <benchmark+0x3a0>
 8002350:	ed9f abc1 	vldr	d10, [pc, #772]	; 8002658 <benchmark+0x3a8>
 8002354:	ed9f 8bc2 	vldr	d8, [pc, #776]	; 8002660 <benchmark+0x3b0>
 8002358:	eeb0 0a4c 	vmov.f32	s0, s24
 800235c:	4628      	mov	r0, r5
 800235e:	4621      	mov	r1, r4
 8002360:	eef0 0a6c 	vmov.f32	s1, s25
 8002364:	eeb0 1a4d 	vmov.f32	s2, s26
 8002368:	eeb0 2a4a 	vmov.f32	s4, s20
 800236c:	eeb0 3a48 	vmov.f32	s6, s16
 8002370:	eef0 1a6d 	vmov.f32	s3, s27
 8002374:	eef0 2a6a 	vmov.f32	s5, s21
 8002378:	eef0 3a68 	vmov.f32	s7, s17
 800237c:	f000 f984 	bl	8002688 <SolveCubic>
 8002380:	ed9f 9bb9 	vldr	d9, [pc, #740]	; 8002668 <benchmark+0x3b8>
 8002384:	eeb0 0a4c 	vmov.f32	s0, s24
 8002388:	eeb0 1a4d 	vmov.f32	s2, s26
 800238c:	eeb0 2a4a 	vmov.f32	s4, s20
 8002390:	4628      	mov	r0, r5
 8002392:	4621      	mov	r1, r4
 8002394:	eef0 0a6c 	vmov.f32	s1, s25
 8002398:	eef0 1a6d 	vmov.f32	s3, s27
 800239c:	eef0 2a6a 	vmov.f32	s5, s21
 80023a0:	eeb0 3a49 	vmov.f32	s6, s18
 80023a4:	eef0 3a69 	vmov.f32	s7, s19
 80023a8:	f000 f96e 	bl	8002688 <SolveCubic>
 80023ac:	ed9f bbb0 	vldr	d11, [pc, #704]	; 8002670 <benchmark+0x3c0>
 80023b0:	eeb0 0a4c 	vmov.f32	s0, s24
 80023b4:	eeb0 1a4d 	vmov.f32	s2, s26
 80023b8:	eeb0 3a48 	vmov.f32	s6, s16
 80023bc:	4628      	mov	r0, r5
 80023be:	4621      	mov	r1, r4
 80023c0:	eef0 0a6c 	vmov.f32	s1, s25
 80023c4:	eef0 1a6d 	vmov.f32	s3, s27
 80023c8:	eef0 3a68 	vmov.f32	s7, s17
 80023cc:	eeb0 2a4b 	vmov.f32	s4, s22
 80023d0:	eef0 2a6b 	vmov.f32	s5, s23
 80023d4:	f000 f958 	bl	8002688 <SolveCubic>
 80023d8:	eeb0 0a4c 	vmov.f32	s0, s24
 80023dc:	eeb0 1a4d 	vmov.f32	s2, s26
 80023e0:	eeb0 2a4b 	vmov.f32	s4, s22
 80023e4:	eeb0 3a49 	vmov.f32	s6, s18
 80023e8:	4628      	mov	r0, r5
 80023ea:	4621      	mov	r1, r4
 80023ec:	eef0 0a6c 	vmov.f32	s1, s25
 80023f0:	eef0 1a6d 	vmov.f32	s3, s27
 80023f4:	eef0 2a6b 	vmov.f32	s5, s23
 80023f8:	eef0 3a69 	vmov.f32	s7, s19
 80023fc:	f000 f944 	bl	8002688 <SolveCubic>
 8002400:	ed9f eb9d 	vldr	d14, [pc, #628]	; 8002678 <benchmark+0x3c8>
 8002404:	eeb0 0a4c 	vmov.f32	s0, s24
 8002408:	eeb0 2a4a 	vmov.f32	s4, s20
 800240c:	eeb0 3a48 	vmov.f32	s6, s16
 8002410:	4628      	mov	r0, r5
 8002412:	4621      	mov	r1, r4
 8002414:	eef0 0a6c 	vmov.f32	s1, s25
 8002418:	eef0 2a6a 	vmov.f32	s5, s21
 800241c:	eef0 3a68 	vmov.f32	s7, s17
 8002420:	eeb0 1a4e 	vmov.f32	s2, s28
 8002424:	eef0 1a6e 	vmov.f32	s3, s29
 8002428:	f000 f92e 	bl	8002688 <SolveCubic>
 800242c:	eeb0 0a4c 	vmov.f32	s0, s24
 8002430:	eeb0 1a4e 	vmov.f32	s2, s28
 8002434:	eeb0 2a4a 	vmov.f32	s4, s20
 8002438:	eeb0 3a49 	vmov.f32	s6, s18
 800243c:	4628      	mov	r0, r5
 800243e:	4621      	mov	r1, r4
 8002440:	eef0 0a6c 	vmov.f32	s1, s25
 8002444:	eef0 1a6e 	vmov.f32	s3, s29
 8002448:	eef0 2a6a 	vmov.f32	s5, s21
 800244c:	eef0 3a69 	vmov.f32	s7, s19
 8002450:	f000 f91a 	bl	8002688 <SolveCubic>
 8002454:	eeb0 0a4c 	vmov.f32	s0, s24
 8002458:	eeb0 1a4e 	vmov.f32	s2, s28
 800245c:	eeb0 2a4b 	vmov.f32	s4, s22
 8002460:	eeb0 3a48 	vmov.f32	s6, s16
 8002464:	4628      	mov	r0, r5
 8002466:	4621      	mov	r1, r4
 8002468:	eef0 0a6c 	vmov.f32	s1, s25
 800246c:	eef0 1a6e 	vmov.f32	s3, s29
 8002470:	eef0 2a6b 	vmov.f32	s5, s23
 8002474:	eef0 3a68 	vmov.f32	s7, s17
 8002478:	f000 f906 	bl	8002688 <SolveCubic>
 800247c:	eeb0 0a4c 	vmov.f32	s0, s24
 8002480:	eeb0 1a4e 	vmov.f32	s2, s28
 8002484:	eeb0 2a4b 	vmov.f32	s4, s22
 8002488:	eeb0 3a49 	vmov.f32	s6, s18
 800248c:	4628      	mov	r0, r5
 800248e:	4621      	mov	r1, r4
 8002490:	eef0 0a6c 	vmov.f32	s1, s25
 8002494:	eef0 1a6e 	vmov.f32	s3, s29
 8002498:	eef0 2a6b 	vmov.f32	s5, s23
 800249c:	eef0 3a69 	vmov.f32	s7, s19
 80024a0:	f000 f8f2 	bl	8002688 <SolveCubic>
 80024a4:	ed9f cb76 	vldr	d12, [pc, #472]	; 8002680 <benchmark+0x3d0>
 80024a8:	eeb0 1a4d 	vmov.f32	s2, s26
 80024ac:	eeb0 2a4a 	vmov.f32	s4, s20
 80024b0:	eeb0 3a48 	vmov.f32	s6, s16
 80024b4:	4628      	mov	r0, r5
 80024b6:	4621      	mov	r1, r4
 80024b8:	eef0 1a6d 	vmov.f32	s3, s27
 80024bc:	eef0 2a6a 	vmov.f32	s5, s21
 80024c0:	eef0 3a68 	vmov.f32	s7, s17
 80024c4:	eeb0 0a4c 	vmov.f32	s0, s24
 80024c8:	eef0 0a6c 	vmov.f32	s1, s25
 80024cc:	f000 f8dc 	bl	8002688 <SolveCubic>
 80024d0:	eeb0 0a4c 	vmov.f32	s0, s24
 80024d4:	eeb0 1a4d 	vmov.f32	s2, s26
 80024d8:	eeb0 2a4a 	vmov.f32	s4, s20
 80024dc:	eeb0 3a49 	vmov.f32	s6, s18
 80024e0:	4628      	mov	r0, r5
 80024e2:	4621      	mov	r1, r4
 80024e4:	eef0 0a6c 	vmov.f32	s1, s25
 80024e8:	eef0 1a6d 	vmov.f32	s3, s27
 80024ec:	eef0 2a6a 	vmov.f32	s5, s21
 80024f0:	eef0 3a69 	vmov.f32	s7, s19
 80024f4:	f000 f8c8 	bl	8002688 <SolveCubic>
 80024f8:	eeb0 0a4c 	vmov.f32	s0, s24
 80024fc:	eeb0 1a4d 	vmov.f32	s2, s26
 8002500:	eeb0 2a4b 	vmov.f32	s4, s22
 8002504:	eeb0 3a48 	vmov.f32	s6, s16
 8002508:	4628      	mov	r0, r5
 800250a:	4621      	mov	r1, r4
 800250c:	eef0 0a6c 	vmov.f32	s1, s25
 8002510:	eef0 1a6d 	vmov.f32	s3, s27
 8002514:	eef0 2a6b 	vmov.f32	s5, s23
 8002518:	eef0 3a68 	vmov.f32	s7, s17
 800251c:	f000 f8b4 	bl	8002688 <SolveCubic>
 8002520:	eeb0 0a4c 	vmov.f32	s0, s24
 8002524:	eeb0 1a4d 	vmov.f32	s2, s26
 8002528:	eeb0 2a4b 	vmov.f32	s4, s22
 800252c:	eeb0 3a49 	vmov.f32	s6, s18
 8002530:	4628      	mov	r0, r5
 8002532:	4621      	mov	r1, r4
 8002534:	eef0 0a6c 	vmov.f32	s1, s25
 8002538:	eef0 1a6d 	vmov.f32	s3, s27
 800253c:	eef0 2a6b 	vmov.f32	s5, s23
 8002540:	eef0 3a69 	vmov.f32	s7, s19
 8002544:	f000 f8a0 	bl	8002688 <SolveCubic>
 8002548:	eeb0 0a4c 	vmov.f32	s0, s24
 800254c:	eeb0 1a4e 	vmov.f32	s2, s28
 8002550:	eeb0 2a4a 	vmov.f32	s4, s20
 8002554:	eeb0 3a48 	vmov.f32	s6, s16
 8002558:	4628      	mov	r0, r5
 800255a:	4621      	mov	r1, r4
 800255c:	eef0 0a6c 	vmov.f32	s1, s25
 8002560:	eef0 1a6e 	vmov.f32	s3, s29
 8002564:	eef0 2a6a 	vmov.f32	s5, s21
 8002568:	eef0 3a68 	vmov.f32	s7, s17
 800256c:	f000 f88c 	bl	8002688 <SolveCubic>
 8002570:	eeb0 0a4c 	vmov.f32	s0, s24
 8002574:	eeb0 1a4e 	vmov.f32	s2, s28
 8002578:	eeb0 2a4a 	vmov.f32	s4, s20
 800257c:	eeb0 3a49 	vmov.f32	s6, s18
 8002580:	4628      	mov	r0, r5
 8002582:	4621      	mov	r1, r4
 8002584:	eef0 0a6c 	vmov.f32	s1, s25
 8002588:	eef0 1a6e 	vmov.f32	s3, s29
 800258c:	eef0 2a6a 	vmov.f32	s5, s21
 8002590:	eef0 3a69 	vmov.f32	s7, s19
 8002594:	f000 f878 	bl	8002688 <SolveCubic>
 8002598:	eeb0 0a4c 	vmov.f32	s0, s24
 800259c:	eeb0 1a4e 	vmov.f32	s2, s28
 80025a0:	eeb0 2a4b 	vmov.f32	s4, s22
 80025a4:	eeb0 3a48 	vmov.f32	s6, s16
 80025a8:	4628      	mov	r0, r5
 80025aa:	4621      	mov	r1, r4
 80025ac:	eef0 0a6c 	vmov.f32	s1, s25
 80025b0:	eef0 1a6e 	vmov.f32	s3, s29
 80025b4:	eef0 2a6b 	vmov.f32	s5, s23
 80025b8:	eef0 3a68 	vmov.f32	s7, s17
 80025bc:	f000 f864 	bl	8002688 <SolveCubic>
 80025c0:	eeb0 0a4c 	vmov.f32	s0, s24
 80025c4:	eeb0 1a4e 	vmov.f32	s2, s28
 80025c8:	eeb0 2a4b 	vmov.f32	s4, s22
 80025cc:	eeb0 3a49 	vmov.f32	s6, s18
 80025d0:	4628      	mov	r0, r5
 80025d2:	4621      	mov	r1, r4
 80025d4:	eef0 0a6c 	vmov.f32	s1, s25
 80025d8:	eef0 1a6e 	vmov.f32	s3, s29
 80025dc:	eef0 2a6b 	vmov.f32	s5, s23
 80025e0:	eef0 3a69 	vmov.f32	s7, s19
 80025e4:	f000 f850 	bl	8002688 <SolveCubic>
 80025e8:	2000      	movs	r0, #0
 80025ea:	b062      	add	sp, #392	; 0x188
 80025ec:	ecbd 8b0e 	vpop	{d8-d14}
 80025f0:	bdb0      	pop	{r4, r5, r7, pc}
 80025f2:	bf00      	nop
 80025f4:	bf00      	nop
 80025f6:	bf00      	nop
 80025f8:	00000000 	.word	0x00000000
 80025fc:	3ff00000 	.word	0x3ff00000
 8002600:	00000000 	.word	0x00000000
 8002604:	c0250000 	.word	0xc0250000
 8002608:	00000000 	.word	0x00000000
 800260c:	40400000 	.word	0x40400000
 8002610:	00000000 	.word	0x00000000
 8002614:	c03e0000 	.word	0xc03e0000
 8002618:	00000000 	.word	0x00000000
 800261c:	c0120000 	.word	0xc0120000
 8002620:	00000000 	.word	0x00000000
 8002624:	40310000 	.word	0x40310000
 8002628:	00000000 	.word	0x00000000
 800262c:	c00c0000 	.word	0xc00c0000
 8002630:	00000000 	.word	0x00000000
 8002634:	40360000 	.word	0x40360000
 8002638:	00000000 	.word	0x00000000
 800263c:	c03f0000 	.word	0xc03f0000
 8002640:	66666666 	.word	0x66666666
 8002644:	c02b6666 	.word	0xc02b6666
 8002648:	00000000 	.word	0x00000000
 800264c:	c0418000 	.word	0xc0418000
 8002650:	00000000 	.word	0x00000000
 8002654:	40240000 	.word	0x40240000
 8002658:	00000000 	.word	0x00000000
 800265c:	40140000 	.word	0x40140000
 8002660:	00000000 	.word	0x00000000
 8002664:	bff00000 	.word	0xbff00000
 8002668:	00000000 	.word	0x00000000
 800266c:	c0000000 	.word	0xc0000000
 8002670:	00000000 	.word	0x00000000
 8002674:	40160000 	.word	0x40160000
 8002678:	00000000 	.word	0x00000000
 800267c:	40220000 	.word	0x40220000
 8002680:	00000000 	.word	0x00000000
 8002684:	40000000 	.word	0x40000000

08002688 <SolveCubic>:
 8002688:	b5f0      	push	{r4, r5, r6, r7, lr}
 800268a:	af03      	add	r7, sp, #12
 800268c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002690:	b081      	sub	sp, #4
 8002692:	ed2d 8b06 	vpush	{d8-d10}
 8002696:	b08a      	sub	sp, #40	; 0x28
 8002698:	ec5b 5b10 	vmov	r5, fp, d0
 800269c:	eeb0 8a43 	vmov.f32	s16, s6
 80026a0:	eeb0 9a42 	vmov.f32	s18, s4
 80026a4:	9109      	str	r1, [sp, #36]	; 0x24
 80026a6:	9006      	str	r0, [sp, #24]
 80026a8:	ec51 0b11 	vmov	r0, r1, d1
 80026ac:	462a      	mov	r2, r5
 80026ae:	465b      	mov	r3, fp
 80026b0:	eef0 8a63 	vmov.f32	s17, s7
 80026b4:	eef0 9a62 	vmov.f32	s19, s5
 80026b8:	f7fe f888 	bl	80007cc <__aeabi_ddiv>
 80026bc:	4681      	mov	r9, r0
 80026be:	4688      	mov	r8, r1
 80026c0:	464a      	mov	r2, r9
 80026c2:	4643      	mov	r3, r8
 80026c4:	f7fd fda2 	bl	800020c <__adddf3>
 80026c8:	4602      	mov	r2, r0
 80026ca:	460b      	mov	r3, r1
 80026cc:	4648      	mov	r0, r9
 80026ce:	4641      	mov	r1, r8
 80026d0:	f7fd ff52 	bl	8000578 <__aeabi_dmul>
 80026d4:	4602      	mov	r2, r0
 80026d6:	460b      	mov	r3, r1
 80026d8:	4648      	mov	r0, r9
 80026da:	4641      	mov	r1, r8
 80026dc:	f7fd ff4c 	bl	8000578 <__aeabi_dmul>
 80026e0:	9008      	str	r0, [sp, #32]
 80026e2:	468a      	mov	sl, r1
 80026e4:	ec51 0b19 	vmov	r0, r1, d9
 80026e8:	462a      	mov	r2, r5
 80026ea:	465b      	mov	r3, fp
 80026ec:	f7fe f86e 	bl	80007cc <__aeabi_ddiv>
 80026f0:	ed9f 0bcf 	vldr	d0, [pc, #828]	; 8002a30 <SolveCubic+0x3a8>
 80026f4:	4604      	mov	r4, r0
 80026f6:	460e      	mov	r6, r1
 80026f8:	4648      	mov	r0, r9
 80026fa:	4641      	mov	r1, r8
 80026fc:	9403      	str	r4, [sp, #12]
 80026fe:	9602      	str	r6, [sp, #8]
 8002700:	ec53 2b10 	vmov	r2, r3, d0
 8002704:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002708:	f7fd ff36 	bl	8000578 <__aeabi_dmul>
 800270c:	4622      	mov	r2, r4
 800270e:	4633      	mov	r3, r6
 8002710:	f7fd ff32 	bl	8000578 <__aeabi_dmul>
 8002714:	4602      	mov	r2, r0
 8002716:	9808      	ldr	r0, [sp, #32]
 8002718:	460b      	mov	r3, r1
 800271a:	4651      	mov	r1, sl
 800271c:	f7fd fd74 	bl	8000208 <__aeabi_dsub>
 8002720:	4606      	mov	r6, r0
 8002722:	460c      	mov	r4, r1
 8002724:	ec51 0b18 	vmov	r0, r1, d8
 8002728:	462a      	mov	r2, r5
 800272a:	465b      	mov	r3, fp
 800272c:	f7fe f84e 	bl	80007cc <__aeabi_ddiv>
 8002730:	ed9f 0bc1 	vldr	d0, [pc, #772]	; 8002a38 <SolveCubic+0x3b0>
 8002734:	ec53 2b10 	vmov	r2, r3, d0
 8002738:	f7fd ff1e 	bl	8000578 <__aeabi_dmul>
 800273c:	4632      	mov	r2, r6
 800273e:	4623      	mov	r3, r4
 8002740:	f7fd fd64 	bl	800020c <__adddf3>
 8002744:	ed9f 0bbe 	vldr	d0, [pc, #760]	; 8002a40 <SolveCubic+0x3b8>
 8002748:	ec53 2b10 	vmov	r2, r3, d0
 800274c:	f7fe f83e 	bl	80007cc <__aeabi_ddiv>
 8002750:	4683      	mov	fp, r0
 8002752:	468a      	mov	sl, r1
 8002754:	465a      	mov	r2, fp
 8002756:	4653      	mov	r3, sl
 8002758:	f7fd ff0e 	bl	8000578 <__aeabi_dmul>
 800275c:	e9cd 1000 	strd	r1, r0, [sp]
 8002760:	4648      	mov	r0, r9
 8002762:	4641      	mov	r1, r8
 8002764:	464a      	mov	r2, r9
 8002766:	4643      	mov	r3, r8
 8002768:	f8cd 901c 	str.w	r9, [sp, #28]
 800276c:	f8cd 8020 	str.w	r8, [sp, #32]
 8002770:	f7fd ff02 	bl	8000578 <__aeabi_dmul>
 8002774:	ed9f 0bb4 	vldr	d0, [pc, #720]	; 8002a48 <SolveCubic+0x3c0>
 8002778:	4604      	mov	r4, r0
 800277a:	460d      	mov	r5, r1
 800277c:	e9dd 1002 	ldrd	r1, r0, [sp, #8]
 8002780:	ec53 2b10 	vmov	r2, r3, d0
 8002784:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8002788:	f7fd fef6 	bl	8000578 <__aeabi_dmul>
 800278c:	4602      	mov	r2, r0
 800278e:	460b      	mov	r3, r1
 8002790:	4620      	mov	r0, r4
 8002792:	4629      	mov	r1, r5
 8002794:	f7fd fd3a 	bl	800020c <__adddf3>
 8002798:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 800279c:	f7fe f816 	bl	80007cc <__aeabi_ddiv>
 80027a0:	4606      	mov	r6, r0
 80027a2:	460c      	mov	r4, r1
 80027a4:	4632      	mov	r2, r6
 80027a6:	4623      	mov	r3, r4
 80027a8:	ec44 6b18 	vmov	d8, r6, r4
 80027ac:	f7fd fee4 	bl	8000578 <__aeabi_dmul>
 80027b0:	4602      	mov	r2, r0
 80027b2:	460b      	mov	r3, r1
 80027b4:	4630      	mov	r0, r6
 80027b6:	4621      	mov	r1, r4
 80027b8:	f7fd fede 	bl	8000578 <__aeabi_dmul>
 80027bc:	4602      	mov	r2, r0
 80027be:	460b      	mov	r3, r1
 80027c0:	e9dd 1000 	ldrd	r1, r0, [sp]
 80027c4:	ec43 2b19 	vmov	d9, r2, r3
 80027c8:	f7fd fd1e 	bl	8000208 <__aeabi_dsub>
 80027cc:	ed9f 0ba0 	vldr	d0, [pc, #640]	; 8002a50 <SolveCubic+0x3c8>
 80027d0:	ec41 0b1a 	vmov	d10, r0, r1
 80027d4:	ec59 8b10 	vmov	r8, r9, d0
 80027d8:	4642      	mov	r2, r8
 80027da:	464b      	mov	r3, r9
 80027dc:	f7fe f948 	bl	8000a70 <__aeabi_dcmple>
 80027e0:	2800      	cmp	r0, #0
 80027e2:	d151      	bne.n	8002888 <SolveCubic+0x200>
 80027e4:	9906      	ldr	r1, [sp, #24]
 80027e6:	2001      	movs	r0, #1
 80027e8:	eeb0 0a4a 	vmov.f32	s0, s20
 80027ec:	4655      	mov	r5, sl
 80027ee:	eef0 0a6a 	vmov.f32	s1, s21
 80027f2:	6008      	str	r0, [r1, #0]
 80027f4:	ea4f 70d9 	mov.w	r0, r9, lsr #31
 80027f8:	f360 75df 	bfi	r5, r0, #31, #1
 80027fc:	f000 fe68 	bl	80034d0 <sqrt>
 8002800:	ec51 0b10 	vmov	r0, r1, d0
 8002804:	465a      	mov	r2, fp
 8002806:	462b      	mov	r3, r5
 8002808:	f7fd fd00 	bl	800020c <__adddf3>
 800280c:	ed9f 1b9c 	vldr	d1, [pc, #624]	; 8002a80 <SolveCubic+0x3f8>
 8002810:	ec41 0b10 	vmov	d0, r0, r1
 8002814:	f000 fcc0 	bl	8003198 <pow>
 8002818:	f8cd a018 	str.w	sl, [sp, #24]
 800281c:	ec5a 5b10 	vmov	r5, sl, d0
 8002820:	4630      	mov	r0, r6
 8002822:	4621      	mov	r1, r4
 8002824:	462a      	mov	r2, r5
 8002826:	4653      	mov	r3, sl
 8002828:	f7fd ffd0 	bl	80007cc <__aeabi_ddiv>
 800282c:	4602      	mov	r2, r0
 800282e:	460b      	mov	r3, r1
 8002830:	4628      	mov	r0, r5
 8002832:	4651      	mov	r1, sl
 8002834:	f7fd fcea 	bl	800020c <__adddf3>
 8002838:	460d      	mov	r5, r1
 800283a:	9906      	ldr	r1, [sp, #24]
 800283c:	4604      	mov	r4, r0
 800283e:	4658      	mov	r0, fp
 8002840:	4642      	mov	r2, r8
 8002842:	464b      	mov	r3, r9
 8002844:	f7fe f90a 	bl	8000a5c <__aeabi_dcmplt>
 8002848:	a18f      	add	r1, pc, #572	; (adr r1, 8002a88 <SolveCubic+0x400>)
 800284a:	2800      	cmp	r0, #0
 800284c:	4622      	mov	r2, r4
 800284e:	462b      	mov	r3, r5
 8002850:	bf18      	it	ne
 8002852:	3108      	addne	r1, #8
 8002854:	ed91 0b00 	vldr	d0, [r1]
 8002858:	ec51 0b10 	vmov	r0, r1, d0
 800285c:	f7fd fe8c 	bl	8000578 <__aeabi_dmul>
 8002860:	4604      	mov	r4, r0
 8002862:	460d      	mov	r5, r1
 8002864:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 8002868:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800286c:	f7fd ffae 	bl	80007cc <__aeabi_ddiv>
 8002870:	4602      	mov	r2, r0
 8002872:	460b      	mov	r3, r1
 8002874:	4620      	mov	r0, r4
 8002876:	4629      	mov	r1, r5
 8002878:	f7fd fcc8 	bl	800020c <__adddf3>
 800287c:	ec41 0b10 	vmov	d0, r0, r1
 8002880:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002882:	ed80 0b00 	vstr	d0, [r0]
 8002886:	e0ca      	b.n	8002a1e <SolveCubic+0x396>
 8002888:	9906      	ldr	r1, [sp, #24]
 800288a:	eeb0 0a49 	vmov.f32	s0, s18
 800288e:	2003      	movs	r0, #3
 8002890:	eef0 0a69 	vmov.f32	s1, s19
 8002894:	6008      	str	r0, [r1, #0]
 8002896:	f000 fe1b 	bl	80034d0 <sqrt>
 800289a:	ec53 2b10 	vmov	r2, r3, d0
 800289e:	4658      	mov	r0, fp
 80028a0:	4651      	mov	r1, sl
 80028a2:	f7fd ff93 	bl	80007cc <__aeabi_ddiv>
 80028a6:	ec41 0b10 	vmov	d0, r0, r1
 80028aa:	f000 fc17 	bl	80030dc <acos>
 80028ae:	eeb0 9a40 	vmov.f32	s18, s0
 80028b2:	eeb0 0a48 	vmov.f32	s0, s16
 80028b6:	eef0 9a60 	vmov.f32	s19, s1
 80028ba:	eef0 0a68 	vmov.f32	s1, s17
 80028be:	f000 fe07 	bl	80034d0 <sqrt>
 80028c2:	ed9f 1b65 	vldr	d1, [pc, #404]	; 8002a58 <SolveCubic+0x3d0>
 80028c6:	ec51 0b10 	vmov	r0, r1, d0
 80028ca:	ec5b 2b11 	vmov	r2, fp, d1
 80028ce:	465b      	mov	r3, fp
 80028d0:	9206      	str	r2, [sp, #24]
 80028d2:	f7fd fe51 	bl	8000578 <__aeabi_dmul>
 80028d6:	ed9f 0b62 	vldr	d0, [pc, #392]	; 8002a60 <SolveCubic+0x3d8>
 80028da:	460e      	mov	r6, r1
 80028dc:	ec51 9b19 	vmov	r9, r1, d9
 80028e0:	4604      	mov	r4, r0
 80028e2:	4648      	mov	r0, r9
 80028e4:	9105      	str	r1, [sp, #20]
 80028e6:	ec55 8b10 	vmov	r8, r5, d0
 80028ea:	4642      	mov	r2, r8
 80028ec:	462b      	mov	r3, r5
 80028ee:	f7fd ff6d 	bl	80007cc <__aeabi_ddiv>
 80028f2:	ec41 0b10 	vmov	d0, r0, r1
 80028f6:	f000 fb87 	bl	8003008 <cos>
 80028fa:	ec53 2b10 	vmov	r2, r3, d0
 80028fe:	4620      	mov	r0, r4
 8002900:	4631      	mov	r1, r6
 8002902:	f7fd fe39 	bl	8000578 <__aeabi_dmul>
 8002906:	4604      	mov	r4, r0
 8002908:	460e      	mov	r6, r1
 800290a:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
 800290e:	4642      	mov	r2, r8
 8002910:	462b      	mov	r3, r5
 8002912:	f8cd 8010 	str.w	r8, [sp, #16]
 8002916:	f7fd ff59 	bl	80007cc <__aeabi_ddiv>
 800291a:	4602      	mov	r2, r0
 800291c:	460b      	mov	r3, r1
 800291e:	4620      	mov	r0, r4
 8002920:	4631      	mov	r1, r6
 8002922:	9208      	str	r2, [sp, #32]
 8002924:	9307      	str	r3, [sp, #28]
 8002926:	f7fd fc6f 	bl	8000208 <__aeabi_dsub>
 800292a:	ec41 0b10 	vmov	d0, r0, r1
 800292e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002930:	ed80 0b00 	vstr	d0, [r0]
 8002934:	eeb0 0a48 	vmov.f32	s0, s16
 8002938:	4606      	mov	r6, r0
 800293a:	eef0 0a68 	vmov.f32	s1, s17
 800293e:	f000 fdc7 	bl	80034d0 <sqrt>
 8002942:	ed9f 9b49 	vldr	d9, [pc, #292]	; 8002a68 <SolveCubic+0x3e0>
 8002946:	eeb0 aa40 	vmov.f32	s20, s0
 800294a:	eef0 aa60 	vmov.f32	s21, s1
 800294e:	eeb0 0a49 	vmov.f32	s0, s18
 8002952:	eef0 0a69 	vmov.f32	s1, s19
 8002956:	f000 f9ab 	bl	8002cb0 <atan>
 800295a:	9a06      	ldr	r2, [sp, #24]
 800295c:	ec51 0b1a 	vmov	r0, r1, d10
 8002960:	465b      	mov	r3, fp
 8002962:	465c      	mov	r4, fp
 8002964:	f7fd fe08 	bl	8000578 <__aeabi_dmul>
 8002968:	ed9f 0b41 	vldr	d0, [pc, #260]	; 8002a70 <SolveCubic+0x3e8>
 800296c:	468b      	mov	fp, r1
 800296e:	9905      	ldr	r1, [sp, #20]
 8002970:	4682      	mov	sl, r0
 8002972:	4648      	mov	r0, r9
 8002974:	ec53 2b10 	vmov	r2, r3, d0
 8002978:	f7fd fc48 	bl	800020c <__adddf3>
 800297c:	4642      	mov	r2, r8
 800297e:	462b      	mov	r3, r5
 8002980:	46a8      	mov	r8, r5
 8002982:	f7fd ff23 	bl	80007cc <__aeabi_ddiv>
 8002986:	ec41 0b10 	vmov	d0, r0, r1
 800298a:	f000 fb3d 	bl	8003008 <cos>
 800298e:	ec53 2b10 	vmov	r2, r3, d0
 8002992:	4650      	mov	r0, sl
 8002994:	4659      	mov	r1, fp
 8002996:	f7fd fdef 	bl	8000578 <__aeabi_dmul>
 800299a:	9d08      	ldr	r5, [sp, #32]
 800299c:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80029a0:	462a      	mov	r2, r5
 80029a2:	4653      	mov	r3, sl
 80029a4:	f7fd fc30 	bl	8000208 <__aeabi_dsub>
 80029a8:	ec41 0b10 	vmov	d0, r0, r1
 80029ac:	46b3      	mov	fp, r6
 80029ae:	ed8b 0b02 	vstr	d0, [fp, #8]
 80029b2:	eeb0 0a48 	vmov.f32	s0, s16
 80029b6:	eef0 0a68 	vmov.f32	s1, s17
 80029ba:	f000 fd89 	bl	80034d0 <sqrt>
 80029be:	eeb0 8a40 	vmov.f32	s16, s0
 80029c2:	eeb0 0a49 	vmov.f32	s0, s18
 80029c6:	eef0 8a60 	vmov.f32	s17, s1
 80029ca:	eef0 0a69 	vmov.f32	s1, s19
 80029ce:	f000 f96f 	bl	8002cb0 <atan>
 80029d2:	9a06      	ldr	r2, [sp, #24]
 80029d4:	ec51 0b18 	vmov	r0, r1, d8
 80029d8:	4623      	mov	r3, r4
 80029da:	f7fd fdcd 	bl	8000578 <__aeabi_dmul>
 80029de:	ed9f 0b26 	vldr	d0, [pc, #152]	; 8002a78 <SolveCubic+0x3f0>
 80029e2:	460c      	mov	r4, r1
 80029e4:	9905      	ldr	r1, [sp, #20]
 80029e6:	4606      	mov	r6, r0
 80029e8:	4648      	mov	r0, r9
 80029ea:	ec53 2b10 	vmov	r2, r3, d0
 80029ee:	f7fd fc0d 	bl	800020c <__adddf3>
 80029f2:	9a04      	ldr	r2, [sp, #16]
 80029f4:	4643      	mov	r3, r8
 80029f6:	f7fd fee9 	bl	80007cc <__aeabi_ddiv>
 80029fa:	ec41 0b10 	vmov	d0, r0, r1
 80029fe:	f000 fb03 	bl	8003008 <cos>
 8002a02:	ec53 2b10 	vmov	r2, r3, d0
 8002a06:	4630      	mov	r0, r6
 8002a08:	4621      	mov	r1, r4
 8002a0a:	f7fd fdb5 	bl	8000578 <__aeabi_dmul>
 8002a0e:	462a      	mov	r2, r5
 8002a10:	4653      	mov	r3, sl
 8002a12:	f7fd fbf9 	bl	8000208 <__aeabi_dsub>
 8002a16:	ec41 0b10 	vmov	d0, r0, r1
 8002a1a:	ed8b 0b04 	vstr	d0, [fp, #16]
 8002a1e:	b00a      	add	sp, #40	; 0x28
 8002a20:	ecbd 8b06 	vpop	{d8-d10}
 8002a24:	b001      	add	sp, #4
 8002a26:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002a2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002a2c:	bf00      	nop
 8002a2e:	bf00      	nop
 8002a30:	00000000 	.word	0x00000000
 8002a34:	40220000 	.word	0x40220000
 8002a38:	00000000 	.word	0x00000000
 8002a3c:	403b0000 	.word	0x403b0000
 8002a40:	00000000 	.word	0x00000000
 8002a44:	404b0000 	.word	0x404b0000
 8002a48:	00000000 	.word	0x00000000
 8002a4c:	c0080000 	.word	0xc0080000
	...
 8002a5c:	c0000000 	.word	0xc0000000
 8002a60:	00000000 	.word	0x00000000
 8002a64:	40080000 	.word	0x40080000
 8002a68:	00000000 	.word	0x00000000
 8002a6c:	3ff00000 	.word	0x3ff00000
 8002a70:	54442d18 	.word	0x54442d18
 8002a74:	401921fb 	.word	0x401921fb
 8002a78:	54442d18 	.word	0x54442d18
 8002a7c:	402921fb 	.word	0x402921fb
 8002a80:	55555555 	.word	0x55555555
 8002a84:	3fd55555 	.word	0x3fd55555
 8002a88:	00000000 	.word	0x00000000
 8002a8c:	bff00000 	.word	0xbff00000
 8002a90:	00000000 	.word	0x00000000
 8002a94:	3ff00000 	.word	0x3ff00000

08002a98 <__io_putchar>:
 8002a98:	b580      	push	{r7, lr}
 8002a9a:	466f      	mov	r7, sp
 8002a9c:	b082      	sub	sp, #8
 8002a9e:	9001      	str	r0, [sp, #4]
 8002aa0:	f640 3010 	movw	r0, #2832	; 0xb10
 8002aa4:	a901      	add	r1, sp, #4
 8002aa6:	2201      	movs	r2, #1
 8002aa8:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002aac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ab0:	f7ff f95f 	bl	8001d72 <HAL_UART_Transmit>
 8002ab4:	9801      	ldr	r0, [sp, #4]
 8002ab6:	b002      	add	sp, #8
 8002ab8:	bd80      	pop	{r7, pc}

08002aba <main>:
 8002aba:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002abc:	af03      	add	r7, sp, #12
 8002abe:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002ac2:	f640 3110 	movw	r1, #2832	; 0xb10
 8002ac6:	f643 0000 	movw	r0, #14336	; 0x3800
 8002aca:	220c      	movs	r2, #12
 8002acc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ad0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002ad4:	6008      	str	r0, [r1, #0]
 8002ad6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002ada:	6048      	str	r0, [r1, #4]
 8002adc:	2000      	movs	r0, #0
 8002ade:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002ae2:	6108      	str	r0, [r1, #16]
 8002ae4:	6248      	str	r0, [r1, #36]	; 0x24
 8002ae6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002aea:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002aee:	2000      	movs	r0, #0
 8002af0:	f7ff fb81 	bl	80021f6 <BSP_COM_Init>
 8002af4:	f7ff fbdb 	bl	80022ae <initialise_benchmark>
 8002af8:	f7fe fb42 	bl	8001180 <HAL_Init>
 8002afc:	f7fe fb58 	bl	80011b0 <HAL_GetTick>
 8002b00:	4604      	mov	r4, r0
 8002b02:	f7ff fbd5 	bl	80022b0 <benchmark>
 8002b06:	4605      	mov	r5, r0
 8002b08:	f7fe fb52 	bl	80011b0 <HAL_GetTick>
 8002b0c:	4606      	mov	r6, r0
 8002b0e:	f64a 0010 	movw	r0, #43024	; 0xa810
 8002b12:	4621      	mov	r1, r4
 8002b14:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b18:	f003 f842 	bl	8005ba0 <printf>
 8002b1c:	4628      	mov	r0, r5
 8002b1e:	1b34      	subs	r4, r6, r4
 8002b20:	f7ff fbc2 	bl	80022a8 <verify_benchmark>
 8002b24:	1c41      	adds	r1, r0, #1
 8002b26:	d006      	beq.n	8002b36 <main+0x7c>
 8002b28:	2801      	cmp	r0, #1
 8002b2a:	d109      	bne.n	8002b40 <main+0x86>
 8002b2c:	f64a 0034 	movw	r0, #43060	; 0xa834
 8002b30:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b34:	e008      	b.n	8002b48 <main+0x8e>
 8002b36:	f64a 0058 	movw	r0, #43096	; 0xa858
 8002b3a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b3e:	e003      	b.n	8002b48 <main+0x8e>
 8002b40:	f64a 008d 	movw	r0, #43149	; 0xa88d
 8002b44:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b48:	4621      	mov	r1, r4
 8002b4a:	f003 f829 	bl	8005ba0 <printf>
 8002b4e:	2000      	movs	r0, #0
 8002b50:	f85d bb04 	ldr.w	fp, [sp], #4
 8002b54:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b56 <SysTick_Handler>:
 8002b56:	b580      	push	{r7, lr}
 8002b58:	466f      	mov	r7, sp
 8002b5a:	f7fe fb21 	bl	80011a0 <HAL_IncTick>
 8002b5e:	f7fe fb7d 	bl	800125c <HAL_SYSTICK_IRQHandler>
 8002b62:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002b66:	f7ff b999 	b.w	8001e9c <osSystickHandler>

08002b6a <_read>:
 8002b6a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002b6c:	af03      	add	r7, sp, #12
 8002b6e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002b72:	4614      	mov	r4, r2
 8002b74:	460d      	mov	r5, r1
 8002b76:	2c01      	cmp	r4, #1
 8002b78:	db06      	blt.n	8002b88 <_read+0x1e>
 8002b7a:	4626      	mov	r6, r4
 8002b7c:	f3af 8000 	nop.w
 8002b80:	f805 0b01 	strb.w	r0, [r5], #1
 8002b84:	3e01      	subs	r6, #1
 8002b86:	d1f9      	bne.n	8002b7c <_read+0x12>
 8002b88:	4620      	mov	r0, r4
 8002b8a:	f85d bb04 	ldr.w	fp, [sp], #4
 8002b8e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b90 <_write>:
 8002b90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002b92:	af03      	add	r7, sp, #12
 8002b94:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002b98:	4614      	mov	r4, r2
 8002b9a:	460d      	mov	r5, r1
 8002b9c:	2c01      	cmp	r4, #1
 8002b9e:	db06      	blt.n	8002bae <_write+0x1e>
 8002ba0:	4626      	mov	r6, r4
 8002ba2:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002ba6:	f7ff ff77 	bl	8002a98 <__io_putchar>
 8002baa:	3e01      	subs	r6, #1
 8002bac:	d1f9      	bne.n	8002ba2 <_write+0x12>
 8002bae:	4620      	mov	r0, r4
 8002bb0:	f85d bb04 	ldr.w	fp, [sp], #4
 8002bb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002bb6 <_sbrk>:
 8002bb6:	f640 3294 	movw	r2, #2964	; 0xb94
 8002bba:	4601      	mov	r1, r0
 8002bbc:	466b      	mov	r3, sp
 8002bbe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bc2:	6810      	ldr	r0, [r2, #0]
 8002bc4:	2800      	cmp	r0, #0
 8002bc6:	bf02      	ittt	eq
 8002bc8:	f640 4040 	movweq	r0, #3136	; 0xc40
 8002bcc:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002bd0:	6010      	streq	r0, [r2, #0]
 8002bd2:	4401      	add	r1, r0
 8002bd4:	4299      	cmp	r1, r3
 8002bd6:	bf9c      	itt	ls
 8002bd8:	6011      	strls	r1, [r2, #0]
 8002bda:	4770      	bxls	lr
 8002bdc:	b580      	push	{r7, lr}
 8002bde:	466f      	mov	r7, sp
 8002be0:	f002 ff6a 	bl	8005ab8 <__errno>
 8002be4:	210c      	movs	r1, #12
 8002be6:	6001      	str	r1, [r0, #0]
 8002be8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002bec:	bd80      	pop	{r7, pc}

08002bee <_close>:
 8002bee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002bf2:	4770      	bx	lr

08002bf4 <_fstat>:
 8002bf4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002bf8:	6048      	str	r0, [r1, #4]
 8002bfa:	2000      	movs	r0, #0
 8002bfc:	4770      	bx	lr

08002bfe <_isatty>:
 8002bfe:	2001      	movs	r0, #1
 8002c00:	4770      	bx	lr

08002c02 <_lseek>:
 8002c02:	2000      	movs	r0, #0
 8002c04:	4770      	bx	lr

08002c06 <SystemInit>:
 8002c06:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002c0a:	f04f 0c00 	mov.w	ip, #0
 8002c0e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002c12:	6801      	ldr	r1, [r0, #0]
 8002c14:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002c18:	6001      	str	r1, [r0, #0]
 8002c1a:	f241 0100 	movw	r1, #4096	; 0x1000
 8002c1e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002c22:	680a      	ldr	r2, [r1, #0]
 8002c24:	f042 0201 	orr.w	r2, r2, #1
 8002c28:	600a      	str	r2, [r1, #0]
 8002c2a:	f8c1 c008 	str.w	ip, [r1, #8]
 8002c2e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002c32:	680b      	ldr	r3, [r1, #0]
 8002c34:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002c38:	401a      	ands	r2, r3
 8002c3a:	600a      	str	r2, [r1, #0]
 8002c3c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002c40:	60ca      	str	r2, [r1, #12]
 8002c42:	680a      	ldr	r2, [r1, #0]
 8002c44:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002c48:	600a      	str	r2, [r1, #0]
 8002c4a:	f8c1 c018 	str.w	ip, [r1, #24]
 8002c4e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002c52:	f840 1c80 	str.w	r1, [r0, #-128]
 8002c56:	4770      	bx	lr

08002c58 <Reset_Handler>:
 8002c58:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002c90 <LoopForever+0x2>
 8002c5c:	2100      	movs	r1, #0
 8002c5e:	e003      	b.n	8002c68 <LoopCopyDataInit>

08002c60 <CopyDataInit>:
 8002c60:	4b0c      	ldr	r3, [pc, #48]	; (8002c94 <LoopForever+0x6>)
 8002c62:	585b      	ldr	r3, [r3, r1]
 8002c64:	5043      	str	r3, [r0, r1]
 8002c66:	3104      	adds	r1, #4

08002c68 <LoopCopyDataInit>:
 8002c68:	480b      	ldr	r0, [pc, #44]	; (8002c98 <LoopForever+0xa>)
 8002c6a:	4b0c      	ldr	r3, [pc, #48]	; (8002c9c <LoopForever+0xe>)
 8002c6c:	1842      	adds	r2, r0, r1
 8002c6e:	429a      	cmp	r2, r3
 8002c70:	d3f6      	bcc.n	8002c60 <CopyDataInit>
 8002c72:	4a0b      	ldr	r2, [pc, #44]	; (8002ca0 <LoopForever+0x12>)
 8002c74:	e002      	b.n	8002c7c <LoopFillZerobss>

08002c76 <FillZerobss>:
 8002c76:	2300      	movs	r3, #0
 8002c78:	f842 3b04 	str.w	r3, [r2], #4

08002c7c <LoopFillZerobss>:
 8002c7c:	4b09      	ldr	r3, [pc, #36]	; (8002ca4 <LoopForever+0x16>)
 8002c7e:	429a      	cmp	r2, r3
 8002c80:	d3f9      	bcc.n	8002c76 <FillZerobss>
 8002c82:	f7ff ffc0 	bl	8002c06 <SystemInit>
 8002c86:	f002 ff1d 	bl	8005ac4 <__libc_init_array>
 8002c8a:	f7ff ff16 	bl	8002aba <main>

08002c8e <LoopForever>:
 8002c8e:	e7fe      	b.n	8002c8e <LoopForever>
 8002c90:	20018000 	.word	0x20018000
 8002c94:	0800ada8 	.word	0x0800ada8
 8002c98:	20000000 	.word	0x20000000
 8002c9c:	200009c8 	.word	0x200009c8
 8002ca0:	200009c8 	.word	0x200009c8
 8002ca4:	20000c3c 	.word	0x20000c3c

08002ca8 <ADC1_2_IRQHandler>:
 8002ca8:	e7fe      	b.n	8002ca8 <ADC1_2_IRQHandler>
 8002caa:	0000      	movs	r0, r0
 8002cac:	0000      	movs	r0, r0
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
 8002fec:	0800a8e8 	.word	0x0800a8e8
 8002ff0:	0800a8c8 	.word	0x0800a8c8
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
 800318c:	0800a908 	.word	0x0800a908
 8003190:	0800ab40 	.word	0x0800ab40
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
 80034b8:	0800a910 	.word	0x0800a910
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
 8003584:	0800a914 	.word	0x0800a914

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
 8003c44:	0800ab40 	.word	0x0800ab40
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
 8004838:	0800a99c 	.word	0x0800a99c
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
 8004968:	0800a91c 	.word	0x0800a91c

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
 8005098:	0800aae8 	.word	0x0800aae8
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
 800532c:	0800aab0 	.word	0x0800aab0
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
 800597c:	0800aaf8 	.word	0x0800aaf8

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
 8005ae4:	f004 fe52 	bl	800a78c <_init>
 8005ae8:	10b6      	asrs	r6, r6, #2
 8005aea:	d006      	beq.n	8005afa <__libc_init_array+0x36>
 8005aec:	2400      	movs	r4, #0
 8005aee:	3401      	adds	r4, #1
 8005af0:	f855 3b04 	ldr.w	r3, [r5], #4
 8005af4:	4798      	blx	r3
 8005af6:	42a6      	cmp	r6, r4
 8005af8:	d1f9      	bne.n	8005aee <__libc_init_array+0x2a>
 8005afa:	bd70      	pop	{r4, r5, r6, pc}
 8005afc:	0800ad98 	.word	0x0800ad98
 8005b00:	0800ad98 	.word	0x0800ad98
 8005b04:	0800ada0 	.word	0x0800ada0
 8005b08:	0800ad98 	.word	0x0800ad98

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
 8005bb4:	f000 f808 	bl	8005bc8 <_vfprintf_r>
 8005bb8:	b003      	add	sp, #12
 8005bba:	f85d eb04 	ldr.w	lr, [sp], #4
 8005bbe:	b004      	add	sp, #16
 8005bc0:	4770      	bx	lr
 8005bc2:	bf00      	nop
 8005bc4:	2000001c 	.word	0x2000001c

08005bc8 <_vfprintf_r>:
 8005bc8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bcc:	b0d7      	sub	sp, #348	; 0x15c
 8005bce:	461c      	mov	r4, r3
 8005bd0:	4689      	mov	r9, r1
 8005bd2:	4617      	mov	r7, r2
 8005bd4:	4605      	mov	r5, r0
 8005bd6:	9003      	str	r0, [sp, #12]
 8005bd8:	f003 f854 	bl	8008c84 <_localeconv_r>
 8005bdc:	6803      	ldr	r3, [r0, #0]
 8005bde:	9316      	str	r3, [sp, #88]	; 0x58
 8005be0:	4618      	mov	r0, r3
 8005be2:	f7fb fa0d 	bl	8001000 <strlen>
 8005be6:	9408      	str	r4, [sp, #32]
 8005be8:	9015      	str	r0, [sp, #84]	; 0x54
 8005bea:	b11d      	cbz	r5, 8005bf4 <_vfprintf_r+0x2c>
 8005bec:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005bee:	2b00      	cmp	r3, #0
 8005bf0:	f000 8107 	beq.w	8005e02 <_vfprintf_r+0x23a>
 8005bf4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005bf8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005bfc:	07c8      	lsls	r0, r1, #31
 8005bfe:	b293      	uxth	r3, r2
 8005c00:	d402      	bmi.n	8005c08 <_vfprintf_r+0x40>
 8005c02:	0599      	lsls	r1, r3, #22
 8005c04:	f140 811f 	bpl.w	8005e46 <_vfprintf_r+0x27e>
 8005c08:	049e      	lsls	r6, r3, #18
 8005c0a:	d40a      	bmi.n	8005c22 <_vfprintf_r+0x5a>
 8005c0c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005c10:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8005c14:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005c18:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005c1c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005c20:	b29b      	uxth	r3, r3
 8005c22:	071d      	lsls	r5, r3, #28
 8005c24:	f140 80b2 	bpl.w	8005d8c <_vfprintf_r+0x1c4>
 8005c28:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8005c2c:	2a00      	cmp	r2, #0
 8005c2e:	f000 80ad 	beq.w	8005d8c <_vfprintf_r+0x1c4>
 8005c32:	f003 021a 	and.w	r2, r3, #26
 8005c36:	2a0a      	cmp	r2, #10
 8005c38:	f000 80c9 	beq.w	8005dce <_vfprintf_r+0x206>
 8005c3c:	2300      	movs	r3, #0
 8005c3e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8005e58 <_vfprintf_r+0x290>
 8005c42:	9310      	str	r3, [sp, #64]	; 0x40
 8005c44:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8005c48:	9317      	str	r3, [sp, #92]	; 0x5c
 8005c4a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8005c4e:	931b      	str	r3, [sp, #108]	; 0x6c
 8005c50:	9318      	str	r3, [sp, #96]	; 0x60
 8005c52:	9305      	str	r3, [sp, #20]
 8005c54:	ab2d      	add	r3, sp, #180	; 0xb4
 8005c56:	932a      	str	r3, [sp, #168]	; 0xa8
 8005c58:	469b      	mov	fp, r3
 8005c5a:	783b      	ldrb	r3, [r7, #0]
 8005c5c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005c60:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005c64:	2b00      	cmp	r3, #0
 8005c66:	f000 8259 	beq.w	800611c <_vfprintf_r+0x554>
 8005c6a:	2b25      	cmp	r3, #37	; 0x25
 8005c6c:	463c      	mov	r4, r7
 8005c6e:	d102      	bne.n	8005c76 <_vfprintf_r+0xae>
 8005c70:	e01d      	b.n	8005cae <_vfprintf_r+0xe6>
 8005c72:	2b25      	cmp	r3, #37	; 0x25
 8005c74:	d003      	beq.n	8005c7e <_vfprintf_r+0xb6>
 8005c76:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8005c7a:	2b00      	cmp	r3, #0
 8005c7c:	d1f9      	bne.n	8005c72 <_vfprintf_r+0xaa>
 8005c7e:	1be5      	subs	r5, r4, r7
 8005c80:	b18d      	cbz	r5, 8005ca6 <_vfprintf_r+0xde>
 8005c82:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8005c86:	3301      	adds	r3, #1
 8005c88:	442a      	add	r2, r5
 8005c8a:	2b07      	cmp	r3, #7
 8005c8c:	f8cb 7000 	str.w	r7, [fp]
 8005c90:	f8cb 5004 	str.w	r5, [fp, #4]
 8005c94:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8005c98:	f300 80ca 	bgt.w	8005e30 <_vfprintf_r+0x268>
 8005c9c:	f10b 0b08 	add.w	fp, fp, #8
 8005ca0:	9b05      	ldr	r3, [sp, #20]
 8005ca2:	442b      	add	r3, r5
 8005ca4:	9305      	str	r3, [sp, #20]
 8005ca6:	7823      	ldrb	r3, [r4, #0]
 8005ca8:	2b00      	cmp	r3, #0
 8005caa:	f000 8237 	beq.w	800611c <_vfprintf_r+0x554>
 8005cae:	2300      	movs	r3, #0
 8005cb0:	7866      	ldrb	r6, [r4, #1]
 8005cb2:	9306      	str	r3, [sp, #24]
 8005cb4:	4698      	mov	r8, r3
 8005cb6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005cba:	f104 0a01 	add.w	sl, r4, #1
 8005cbe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8005cc2:	252b      	movs	r5, #43	; 0x2b
 8005cc4:	f10a 0a01 	add.w	sl, sl, #1
 8005cc8:	f1a6 0320 	sub.w	r3, r6, #32
 8005ccc:	2b5a      	cmp	r3, #90	; 0x5a
 8005cce:	f200 842a 	bhi.w	8006526 <_vfprintf_r+0x95e>
 8005cd2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005cd6:	03aa      	.short	0x03aa
 8005cd8:	04280428 	.word	0x04280428
 8005cdc:	0428029c 	.word	0x0428029c
 8005ce0:	04280428 	.word	0x04280428
 8005ce4:	042802a7 	.word	0x042802a7
 8005ce8:	02c60428 	.word	0x02c60428
 8005cec:	042802d2 	.word	0x042802d2
 8005cf0:	02dc02d7 	.word	0x02dc02d7
 8005cf4:	02f60428 	.word	0x02f60428
 8005cf8:	026d026d 	.word	0x026d026d
 8005cfc:	026d026d 	.word	0x026d026d
 8005d00:	026d026d 	.word	0x026d026d
 8005d04:	026d026d 	.word	0x026d026d
 8005d08:	0428026d 	.word	0x0428026d
 8005d0c:	04280428 	.word	0x04280428
 8005d10:	04280428 	.word	0x04280428
 8005d14:	04280428 	.word	0x04280428
 8005d18:	042802fb 	.word	0x042802fb
 8005d1c:	03f3033c 	.word	0x03f3033c
 8005d20:	02fb02fb 	.word	0x02fb02fb
 8005d24:	042802fb 	.word	0x042802fb
 8005d28:	04280428 	.word	0x04280428
 8005d2c:	03ee0428 	.word	0x03ee0428
 8005d30:	04280428 	.word	0x04280428
 8005d34:	0428009a 	.word	0x0428009a
 8005d38:	04280428 	.word	0x04280428
 8005d3c:	04280350 	.word	0x04280350
 8005d40:	04280379 	.word	0x04280379
 8005d44:	03900428 	.word	0x03900428
 8005d48:	04280428 	.word	0x04280428
 8005d4c:	04280428 	.word	0x04280428
 8005d50:	04280428 	.word	0x04280428
 8005d54:	04280428 	.word	0x04280428
 8005d58:	042802fb 	.word	0x042802fb
 8005d5c:	00c5033c 	.word	0x00c5033c
 8005d60:	02fb02fb 	.word	0x02fb02fb
 8005d64:	03d102fb 	.word	0x03d102fb
 8005d68:	007000c5 	.word	0x007000c5
 8005d6c:	03b50428 	.word	0x03b50428
 8005d70:	03c20428 	.word	0x03c20428
 8005d74:	03de009c 	.word	0x03de009c
 8005d78:	04280070 	.word	0x04280070
 8005d7c:	00720350 	.word	0x00720350
 8005d80:	0428022c 	.word	0x0428022c
 8005d84:	027c0428 	.word	0x027c0428
 8005d88:	00720428 	.word	0x00720428
 8005d8c:	4649      	mov	r1, r9
 8005d8e:	9803      	ldr	r0, [sp, #12]
 8005d90:	f001 fc9a 	bl	80076c8 <__swsetup_r>
 8005d94:	b1a0      	cbz	r0, 8005dc0 <_vfprintf_r+0x1f8>
 8005d96:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8005d9a:	07d8      	lsls	r0, r3, #31
 8005d9c:	d404      	bmi.n	8005da8 <_vfprintf_r+0x1e0>
 8005d9e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005da2:	0599      	lsls	r1, r3, #22
 8005da4:	f140 83b7 	bpl.w	8006516 <_vfprintf_r+0x94e>
 8005da8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005dac:	9305      	str	r3, [sp, #20]
 8005dae:	9805      	ldr	r0, [sp, #20]
 8005db0:	b057      	add	sp, #348	; 0x15c
 8005db2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005db6:	f048 0820 	orr.w	r8, r8, #32
 8005dba:	f89a 6000 	ldrb.w	r6, [sl]
 8005dbe:	e781      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8005dc0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005dc4:	f003 021a 	and.w	r2, r3, #26
 8005dc8:	2a0a      	cmp	r2, #10
 8005dca:	f47f af37 	bne.w	8005c3c <_vfprintf_r+0x74>
 8005dce:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8005dd2:	2a00      	cmp	r2, #0
 8005dd4:	f6ff af32 	blt.w	8005c3c <_vfprintf_r+0x74>
 8005dd8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005ddc:	07d2      	lsls	r2, r2, #31
 8005dde:	d405      	bmi.n	8005dec <_vfprintf_r+0x224>
 8005de0:	059b      	lsls	r3, r3, #22
 8005de2:	d403      	bmi.n	8005dec <_vfprintf_r+0x224>
 8005de4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005de8:	f002 ff60 	bl	8008cac <__retarget_lock_release_recursive>
 8005dec:	4623      	mov	r3, r4
 8005dee:	463a      	mov	r2, r7
 8005df0:	4649      	mov	r1, r9
 8005df2:	9803      	ldr	r0, [sp, #12]
 8005df4:	f001 fc26 	bl	8007644 <__sbprintf>
 8005df8:	9005      	str	r0, [sp, #20]
 8005dfa:	9805      	ldr	r0, [sp, #20]
 8005dfc:	b057      	add	sp, #348	; 0x15c
 8005dfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e02:	9803      	ldr	r0, [sp, #12]
 8005e04:	f002 fd7e 	bl	8008904 <__sinit>
 8005e08:	e6f4      	b.n	8005bf4 <_vfprintf_r+0x2c>
 8005e0a:	f048 0810 	orr.w	r8, r8, #16
 8005e0e:	f018 0f20 	tst.w	r8, #32
 8005e12:	f000 836c 	beq.w	80064ee <_vfprintf_r+0x926>
 8005e16:	9c08      	ldr	r4, [sp, #32]
 8005e18:	3407      	adds	r4, #7
 8005e1a:	f024 0307 	bic.w	r3, r4, #7
 8005e1e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005e22:	f103 0208 	add.w	r2, r3, #8
 8005e26:	9208      	str	r2, [sp, #32]
 8005e28:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005e2c:	2200      	movs	r2, #0
 8005e2e:	e18c      	b.n	800614a <_vfprintf_r+0x582>
 8005e30:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e32:	9907      	ldr	r1, [sp, #28]
 8005e34:	9803      	ldr	r0, [sp, #12]
 8005e36:	f003 fe65 	bl	8009b04 <__sprint_r>
 8005e3a:	2800      	cmp	r0, #0
 8005e3c:	f041 8376 	bne.w	800752c <_vfprintf_r+0x1964>
 8005e40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e44:	e72c      	b.n	8005ca0 <_vfprintf_r+0xd8>
 8005e46:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005e4a:	f002 ff2d 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 8005e4e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005e52:	b293      	uxth	r3, r2
 8005e54:	e6d8      	b.n	8005c08 <_vfprintf_r+0x40>
 8005e56:	bf00      	nop
	...
 8005e60:	4643      	mov	r3, r8
 8005e62:	069f      	lsls	r7, r3, #26
 8005e64:	f140 832f 	bpl.w	80064c6 <_vfprintf_r+0x8fe>
 8005e68:	9c08      	ldr	r4, [sp, #32]
 8005e6a:	3407      	adds	r4, #7
 8005e6c:	f024 0407 	bic.w	r4, r4, #7
 8005e70:	e9d4 0100 	ldrd	r0, r1, [r4]
 8005e74:	f104 0208 	add.w	r2, r4, #8
 8005e78:	9208      	str	r2, [sp, #32]
 8005e7a:	4604      	mov	r4, r0
 8005e7c:	460d      	mov	r5, r1
 8005e7e:	2800      	cmp	r0, #0
 8005e80:	f171 0200 	sbcs.w	r2, r1, #0
 8005e84:	da05      	bge.n	8005e92 <_vfprintf_r+0x2ca>
 8005e86:	222d      	movs	r2, #45	; 0x2d
 8005e88:	4264      	negs	r4, r4
 8005e8a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8005e8e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005e92:	aa56      	add	r2, sp, #344	; 0x158
 8005e94:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005e98:	9204      	str	r2, [sp, #16]
 8005e9a:	f000 84b2 	beq.w	8006802 <_vfprintf_r+0xc3a>
 8005e9e:	2201      	movs	r2, #1
 8005ea0:	ea54 0105 	orrs.w	r1, r4, r5
 8005ea4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8005ea8:	f040 8159 	bne.w	800615e <_vfprintf_r+0x596>
 8005eac:	f1b9 0f00 	cmp.w	r9, #0
 8005eb0:	f040 8619 	bne.w	8006ae6 <_vfprintf_r+0xf1e>
 8005eb4:	2a00      	cmp	r2, #0
 8005eb6:	f040 8508 	bne.w	80068ca <_vfprintf_r+0xd02>
 8005eba:	f013 0301 	ands.w	r3, r3, #1
 8005ebe:	af56      	add	r7, sp, #344	; 0x158
 8005ec0:	9309      	str	r3, [sp, #36]	; 0x24
 8005ec2:	d002      	beq.n	8005eca <_vfprintf_r+0x302>
 8005ec4:	2330      	movs	r3, #48	; 0x30
 8005ec6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005eca:	2300      	movs	r3, #0
 8005ecc:	930a      	str	r3, [sp, #40]	; 0x28
 8005ece:	930f      	str	r3, [sp, #60]	; 0x3c
 8005ed0:	9314      	str	r3, [sp, #80]	; 0x50
 8005ed2:	9311      	str	r3, [sp, #68]	; 0x44
 8005ed4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ed6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005eda:	454b      	cmp	r3, r9
 8005edc:	bfb8      	it	lt
 8005ede:	464b      	movlt	r3, r9
 8005ee0:	9304      	str	r3, [sp, #16]
 8005ee2:	b112      	cbz	r2, 8005eea <_vfprintf_r+0x322>
 8005ee4:	9b04      	ldr	r3, [sp, #16]
 8005ee6:	3301      	adds	r3, #1
 8005ee8:	9304      	str	r3, [sp, #16]
 8005eea:	f018 0302 	ands.w	r3, r8, #2
 8005eee:	930b      	str	r3, [sp, #44]	; 0x2c
 8005ef0:	d002      	beq.n	8005ef8 <_vfprintf_r+0x330>
 8005ef2:	9b04      	ldr	r3, [sp, #16]
 8005ef4:	3302      	adds	r3, #2
 8005ef6:	9304      	str	r3, [sp, #16]
 8005ef8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005efc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005efe:	930e      	str	r3, [sp, #56]	; 0x38
 8005f00:	d13f      	bne.n	8005f82 <_vfprintf_r+0x3ba>
 8005f02:	9b06      	ldr	r3, [sp, #24]
 8005f04:	9904      	ldr	r1, [sp, #16]
 8005f06:	1a5d      	subs	r5, r3, r1
 8005f08:	2d00      	cmp	r5, #0
 8005f0a:	dd3a      	ble.n	8005f82 <_vfprintf_r+0x3ba>
 8005f0c:	2d10      	cmp	r5, #16
 8005f0e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005f10:	dd29      	ble.n	8005f66 <_vfprintf_r+0x39e>
 8005f12:	4659      	mov	r1, fp
 8005f14:	4620      	mov	r0, r4
 8005f16:	9620      	str	r6, [sp, #128]	; 0x80
 8005f18:	2310      	movs	r3, #16
 8005f1a:	9c03      	ldr	r4, [sp, #12]
 8005f1c:	9e07      	ldr	r6, [sp, #28]
 8005f1e:	46bb      	mov	fp, r7
 8005f20:	e004      	b.n	8005f2c <_vfprintf_r+0x364>
 8005f22:	3d10      	subs	r5, #16
 8005f24:	2d10      	cmp	r5, #16
 8005f26:	f101 0108 	add.w	r1, r1, #8
 8005f2a:	dd18      	ble.n	8005f5e <_vfprintf_r+0x396>
 8005f2c:	3201      	adds	r2, #1
 8005f2e:	4fba      	ldr	r7, [pc, #744]	; (8006218 <_vfprintf_r+0x650>)
 8005f30:	3010      	adds	r0, #16
 8005f32:	2a07      	cmp	r2, #7
 8005f34:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005f38:	e9c1 7300 	strd	r7, r3, [r1]
 8005f3c:	ddf1      	ble.n	8005f22 <_vfprintf_r+0x35a>
 8005f3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005f40:	4631      	mov	r1, r6
 8005f42:	4620      	mov	r0, r4
 8005f44:	930c      	str	r3, [sp, #48]	; 0x30
 8005f46:	f003 fddd 	bl	8009b04 <__sprint_r>
 8005f4a:	2800      	cmp	r0, #0
 8005f4c:	f040 843d 	bne.w	80067ca <_vfprintf_r+0xc02>
 8005f50:	3d10      	subs	r5, #16
 8005f52:	2d10      	cmp	r5, #16
 8005f54:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005f58:	a92d      	add	r1, sp, #180	; 0xb4
 8005f5a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005f5c:	dce6      	bgt.n	8005f2c <_vfprintf_r+0x364>
 8005f5e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8005f60:	465f      	mov	r7, fp
 8005f62:	4604      	mov	r4, r0
 8005f64:	468b      	mov	fp, r1
 8005f66:	3201      	adds	r2, #1
 8005f68:	4bab      	ldr	r3, [pc, #684]	; (8006218 <_vfprintf_r+0x650>)
 8005f6a:	442c      	add	r4, r5
 8005f6c:	2a07      	cmp	r2, #7
 8005f6e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005f72:	e9cb 3500 	strd	r3, r5, [fp]
 8005f76:	f300 84ff 	bgt.w	8006978 <_vfprintf_r+0xdb0>
 8005f7a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005f7e:	f10b 0b08 	add.w	fp, fp, #8
 8005f82:	b172      	cbz	r2, 8005fa2 <_vfprintf_r+0x3da>
 8005f84:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005f86:	3201      	adds	r2, #1
 8005f88:	3401      	adds	r4, #1
 8005f8a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8005f8e:	2101      	movs	r1, #1
 8005f90:	2a07      	cmp	r2, #7
 8005f92:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005f96:	e9cb 0100 	strd	r0, r1, [fp]
 8005f9a:	f300 8418 	bgt.w	80067ce <_vfprintf_r+0xc06>
 8005f9e:	f10b 0b08 	add.w	fp, fp, #8
 8005fa2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005fa4:	b16b      	cbz	r3, 8005fc2 <_vfprintf_r+0x3fa>
 8005fa6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005fa8:	3301      	adds	r3, #1
 8005faa:	3402      	adds	r4, #2
 8005fac:	a923      	add	r1, sp, #140	; 0x8c
 8005fae:	2202      	movs	r2, #2
 8005fb0:	2b07      	cmp	r3, #7
 8005fb2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005fb6:	e9cb 1200 	strd	r1, r2, [fp]
 8005fba:	f300 8415 	bgt.w	80067e8 <_vfprintf_r+0xc20>
 8005fbe:	f10b 0b08 	add.w	fp, fp, #8
 8005fc2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005fc4:	2b80      	cmp	r3, #128	; 0x80
 8005fc6:	f000 8331 	beq.w	800662c <_vfprintf_r+0xa64>
 8005fca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005fcc:	eba9 0503 	sub.w	r5, r9, r3
 8005fd0:	2d00      	cmp	r5, #0
 8005fd2:	dd37      	ble.n	8006044 <_vfprintf_r+0x47c>
 8005fd4:	2d10      	cmp	r5, #16
 8005fd6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005fd8:	4b90      	ldr	r3, [pc, #576]	; (800621c <_vfprintf_r+0x654>)
 8005fda:	dd28      	ble.n	800602e <_vfprintf_r+0x466>
 8005fdc:	4659      	mov	r1, fp
 8005fde:	4620      	mov	r0, r4
 8005fe0:	46bb      	mov	fp, r7
 8005fe2:	f04f 0910 	mov.w	r9, #16
 8005fe6:	4637      	mov	r7, r6
 8005fe8:	461c      	mov	r4, r3
 8005fea:	9e07      	ldr	r6, [sp, #28]
 8005fec:	e004      	b.n	8005ff8 <_vfprintf_r+0x430>
 8005fee:	3d10      	subs	r5, #16
 8005ff0:	2d10      	cmp	r5, #16
 8005ff2:	f101 0108 	add.w	r1, r1, #8
 8005ff6:	dd15      	ble.n	8006024 <_vfprintf_r+0x45c>
 8005ff8:	3201      	adds	r2, #1
 8005ffa:	3010      	adds	r0, #16
 8005ffc:	2a07      	cmp	r2, #7
 8005ffe:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8006002:	e9c1 4900 	strd	r4, r9, [r1]
 8006006:	ddf2      	ble.n	8005fee <_vfprintf_r+0x426>
 8006008:	aa2a      	add	r2, sp, #168	; 0xa8
 800600a:	4631      	mov	r1, r6
 800600c:	9803      	ldr	r0, [sp, #12]
 800600e:	f003 fd79 	bl	8009b04 <__sprint_r>
 8006012:	2800      	cmp	r0, #0
 8006014:	f040 83d9 	bne.w	80067ca <_vfprintf_r+0xc02>
 8006018:	3d10      	subs	r5, #16
 800601a:	2d10      	cmp	r5, #16
 800601c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006020:	a92d      	add	r1, sp, #180	; 0xb4
 8006022:	dce9      	bgt.n	8005ff8 <_vfprintf_r+0x430>
 8006024:	463e      	mov	r6, r7
 8006026:	4623      	mov	r3, r4
 8006028:	465f      	mov	r7, fp
 800602a:	4604      	mov	r4, r0
 800602c:	468b      	mov	fp, r1
 800602e:	3201      	adds	r2, #1
 8006030:	442c      	add	r4, r5
 8006032:	2a07      	cmp	r2, #7
 8006034:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006038:	e9cb 3500 	strd	r3, r5, [fp]
 800603c:	f300 83ef 	bgt.w	800681e <_vfprintf_r+0xc56>
 8006040:	f10b 0b08 	add.w	fp, fp, #8
 8006044:	f418 7f80 	tst.w	r8, #256	; 0x100
 8006048:	f040 8280 	bne.w	800654c <_vfprintf_r+0x984>
 800604c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800604e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006050:	f8cb 7000 	str.w	r7, [fp]
 8006054:	3301      	adds	r3, #1
 8006056:	4414      	add	r4, r2
 8006058:	2b07      	cmp	r3, #7
 800605a:	942c      	str	r4, [sp, #176]	; 0xb0
 800605c:	f8cb 2004 	str.w	r2, [fp, #4]
 8006060:	932b      	str	r3, [sp, #172]	; 0xac
 8006062:	f300 8392 	bgt.w	800678a <_vfprintf_r+0xbc2>
 8006066:	f10b 0b08 	add.w	fp, fp, #8
 800606a:	f018 0f04 	tst.w	r8, #4
 800606e:	d03b      	beq.n	80060e8 <_vfprintf_r+0x520>
 8006070:	9b06      	ldr	r3, [sp, #24]
 8006072:	9a04      	ldr	r2, [sp, #16]
 8006074:	1a9d      	subs	r5, r3, r2
 8006076:	2d00      	cmp	r5, #0
 8006078:	dd36      	ble.n	80060e8 <_vfprintf_r+0x520>
 800607a:	2d10      	cmp	r5, #16
 800607c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800607e:	dd21      	ble.n	80060c4 <_vfprintf_r+0x4fc>
 8006080:	2610      	movs	r6, #16
 8006082:	9f03      	ldr	r7, [sp, #12]
 8006084:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8006088:	e004      	b.n	8006094 <_vfprintf_r+0x4cc>
 800608a:	3d10      	subs	r5, #16
 800608c:	2d10      	cmp	r5, #16
 800608e:	f10b 0b08 	add.w	fp, fp, #8
 8006092:	dd17      	ble.n	80060c4 <_vfprintf_r+0x4fc>
 8006094:	3301      	adds	r3, #1
 8006096:	4a60      	ldr	r2, [pc, #384]	; (8006218 <_vfprintf_r+0x650>)
 8006098:	3410      	adds	r4, #16
 800609a:	2b07      	cmp	r3, #7
 800609c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80060a0:	e9cb 2600 	strd	r2, r6, [fp]
 80060a4:	ddf1      	ble.n	800608a <_vfprintf_r+0x4c2>
 80060a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80060a8:	4641      	mov	r1, r8
 80060aa:	4638      	mov	r0, r7
 80060ac:	f003 fd2a 	bl	8009b04 <__sprint_r>
 80060b0:	2800      	cmp	r0, #0
 80060b2:	f040 856c 	bne.w	8006b8e <_vfprintf_r+0xfc6>
 80060b6:	3d10      	subs	r5, #16
 80060b8:	2d10      	cmp	r5, #16
 80060ba:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80060be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80060c2:	dce7      	bgt.n	8006094 <_vfprintf_r+0x4cc>
 80060c4:	3301      	adds	r3, #1
 80060c6:	4a54      	ldr	r2, [pc, #336]	; (8006218 <_vfprintf_r+0x650>)
 80060c8:	442c      	add	r4, r5
 80060ca:	2b07      	cmp	r3, #7
 80060cc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80060d0:	e9cb 2500 	strd	r2, r5, [fp]
 80060d4:	dd08      	ble.n	80060e8 <_vfprintf_r+0x520>
 80060d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80060d8:	9907      	ldr	r1, [sp, #28]
 80060da:	9803      	ldr	r0, [sp, #12]
 80060dc:	f003 fd12 	bl	8009b04 <__sprint_r>
 80060e0:	2800      	cmp	r0, #0
 80060e2:	f040 82e9 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80060e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80060e8:	9904      	ldr	r1, [sp, #16]
 80060ea:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80060ee:	428a      	cmp	r2, r1
 80060f0:	bfac      	ite	ge
 80060f2:	189b      	addge	r3, r3, r2
 80060f4:	185b      	addlt	r3, r3, r1
 80060f6:	9305      	str	r3, [sp, #20]
 80060f8:	2c00      	cmp	r4, #0
 80060fa:	f040 82d5 	bne.w	80066a8 <_vfprintf_r+0xae0>
 80060fe:	2300      	movs	r3, #0
 8006100:	932b      	str	r3, [sp, #172]	; 0xac
 8006102:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006104:	b11b      	cbz	r3, 800610e <_vfprintf_r+0x546>
 8006106:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006108:	9803      	ldr	r0, [sp, #12]
 800610a:	f002 fc9d 	bl	8008a48 <_free_r>
 800610e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006112:	4657      	mov	r7, sl
 8006114:	783b      	ldrb	r3, [r7, #0]
 8006116:	2b00      	cmp	r3, #0
 8006118:	f47f ada7 	bne.w	8005c6a <_vfprintf_r+0xa2>
 800611c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800611e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006122:	2b00      	cmp	r3, #0
 8006124:	f041 80e7 	bne.w	80072f6 <_vfprintf_r+0x172e>
 8006128:	2300      	movs	r3, #0
 800612a:	932b      	str	r3, [sp, #172]	; 0xac
 800612c:	e2cb      	b.n	80066c6 <_vfprintf_r+0xafe>
 800612e:	4643      	mov	r3, r8
 8006130:	069a      	lsls	r2, r3, #26
 8006132:	f140 814e 	bpl.w	80063d2 <_vfprintf_r+0x80a>
 8006136:	9c08      	ldr	r4, [sp, #32]
 8006138:	3407      	adds	r4, #7
 800613a:	f024 0207 	bic.w	r2, r4, #7
 800613e:	f102 0108 	add.w	r1, r2, #8
 8006142:	e9d2 4500 	ldrd	r4, r5, [r2]
 8006146:	9108      	str	r1, [sp, #32]
 8006148:	2201      	movs	r2, #1
 800614a:	2100      	movs	r1, #0
 800614c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8006150:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006154:	a956      	add	r1, sp, #344	; 0x158
 8006156:	9104      	str	r1, [sp, #16]
 8006158:	f47f aea2 	bne.w	8005ea0 <_vfprintf_r+0x2d8>
 800615c:	4698      	mov	r8, r3
 800615e:	2a01      	cmp	r2, #1
 8006160:	f000 8350 	beq.w	8006804 <_vfprintf_r+0xc3c>
 8006164:	2a02      	cmp	r2, #2
 8006166:	f000 831b 	beq.w	80067a0 <_vfprintf_r+0xbd8>
 800616a:	a956      	add	r1, sp, #344	; 0x158
 800616c:	e000      	b.n	8006170 <_vfprintf_r+0x5a8>
 800616e:	4639      	mov	r1, r7
 8006170:	08e2      	lsrs	r2, r4, #3
 8006172:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8006176:	08e8      	lsrs	r0, r5, #3
 8006178:	f004 0307 	and.w	r3, r4, #7
 800617c:	4605      	mov	r5, r0
 800617e:	4614      	mov	r4, r2
 8006180:	3330      	adds	r3, #48	; 0x30
 8006182:	ea54 0205 	orrs.w	r2, r4, r5
 8006186:	f801 3c01 	strb.w	r3, [r1, #-1]
 800618a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800618e:	d1ee      	bne.n	800616e <_vfprintf_r+0x5a6>
 8006190:	f018 0f01 	tst.w	r8, #1
 8006194:	f000 8314 	beq.w	80067c0 <_vfprintf_r+0xbf8>
 8006198:	2b30      	cmp	r3, #48	; 0x30
 800619a:	f000 8311 	beq.w	80067c0 <_vfprintf_r+0xbf8>
 800619e:	9a04      	ldr	r2, [sp, #16]
 80061a0:	3902      	subs	r1, #2
 80061a2:	2330      	movs	r3, #48	; 0x30
 80061a4:	1a52      	subs	r2, r2, r1
 80061a6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80061aa:	9209      	str	r2, [sp, #36]	; 0x24
 80061ac:	460f      	mov	r7, r1
 80061ae:	e68c      	b.n	8005eca <_vfprintf_r+0x302>
 80061b0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80061b4:	2200      	movs	r2, #0
 80061b6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80061ba:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80061be:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80061c2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80061c6:	2b09      	cmp	r3, #9
 80061c8:	d9f5      	bls.n	80061b6 <_vfprintf_r+0x5ee>
 80061ca:	9206      	str	r2, [sp, #24]
 80061cc:	e57c      	b.n	8005cc8 <_vfprintf_r+0x100>
 80061ce:	4b14      	ldr	r3, [pc, #80]	; (8006220 <_vfprintf_r+0x658>)
 80061d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80061d2:	f018 0f20 	tst.w	r8, #32
 80061d6:	f000 8114 	beq.w	8006402 <_vfprintf_r+0x83a>
 80061da:	9c08      	ldr	r4, [sp, #32]
 80061dc:	3407      	adds	r4, #7
 80061de:	f024 0307 	bic.w	r3, r4, #7
 80061e2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80061e6:	f103 0208 	add.w	r2, r3, #8
 80061ea:	9208      	str	r2, [sp, #32]
 80061ec:	f018 0f01 	tst.w	r8, #1
 80061f0:	d009      	beq.n	8006206 <_vfprintf_r+0x63e>
 80061f2:	ea54 0305 	orrs.w	r3, r4, r5
 80061f6:	d006      	beq.n	8006206 <_vfprintf_r+0x63e>
 80061f8:	2330      	movs	r3, #48	; 0x30
 80061fa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80061fe:	f048 0802 	orr.w	r8, r8, #2
 8006202:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006206:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800620a:	2202      	movs	r2, #2
 800620c:	e79d      	b.n	800614a <_vfprintf_r+0x582>
 800620e:	f048 0801 	orr.w	r8, r8, #1
 8006212:	f89a 6000 	ldrb.w	r6, [sl]
 8006216:	e555      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8006218:	0800ab50 	.word	0x0800ab50
 800621c:	0800ab60 	.word	0x0800ab60
 8006220:	0800ab1c 	.word	0x0800ab1c
 8006224:	9e03      	ldr	r6, [sp, #12]
 8006226:	4630      	mov	r0, r6
 8006228:	f002 fd2c 	bl	8008c84 <_localeconv_r>
 800622c:	6843      	ldr	r3, [r0, #4]
 800622e:	9318      	str	r3, [sp, #96]	; 0x60
 8006230:	4618      	mov	r0, r3
 8006232:	f7fa fee5 	bl	8001000 <strlen>
 8006236:	901b      	str	r0, [sp, #108]	; 0x6c
 8006238:	4604      	mov	r4, r0
 800623a:	4630      	mov	r0, r6
 800623c:	f002 fd22 	bl	8008c84 <_localeconv_r>
 8006240:	6883      	ldr	r3, [r0, #8]
 8006242:	931a      	str	r3, [sp, #104]	; 0x68
 8006244:	2c00      	cmp	r4, #0
 8006246:	f43f adb8 	beq.w	8005dba <_vfprintf_r+0x1f2>
 800624a:	f89a 6000 	ldrb.w	r6, [sl]
 800624e:	2b00      	cmp	r3, #0
 8006250:	f43f ad38 	beq.w	8005cc4 <_vfprintf_r+0xfc>
 8006254:	781b      	ldrb	r3, [r3, #0]
 8006256:	2b00      	cmp	r3, #0
 8006258:	f43f ad34 	beq.w	8005cc4 <_vfprintf_r+0xfc>
 800625c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8006260:	e530      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8006262:	9b08      	ldr	r3, [sp, #32]
 8006264:	f89a 6000 	ldrb.w	r6, [sl]
 8006268:	681a      	ldr	r2, [r3, #0]
 800626a:	9206      	str	r2, [sp, #24]
 800626c:	2a00      	cmp	r2, #0
 800626e:	f103 0304 	add.w	r3, r3, #4
 8006272:	f2c0 8697 	blt.w	8006fa4 <_vfprintf_r+0x13dc>
 8006276:	9308      	str	r3, [sp, #32]
 8006278:	e524      	b.n	8005cc4 <_vfprintf_r+0xfc>
 800627a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800627e:	f89a 6000 	ldrb.w	r6, [sl]
 8006282:	e51f      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8006284:	f89a 6000 	ldrb.w	r6, [sl]
 8006288:	f048 0804 	orr.w	r8, r8, #4
 800628c:	e51a      	b.n	8005cc4 <_vfprintf_r+0xfc>
 800628e:	f89a 6000 	ldrb.w	r6, [sl]
 8006292:	2e2a      	cmp	r6, #42	; 0x2a
 8006294:	f10a 0201 	add.w	r2, sl, #1
 8006298:	f001 81b0 	beq.w	80075fc <_vfprintf_r+0x1a34>
 800629c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80062a0:	2b09      	cmp	r3, #9
 80062a2:	4692      	mov	sl, r2
 80062a4:	f04f 0900 	mov.w	r9, #0
 80062a8:	f63f ad0e 	bhi.w	8005cc8 <_vfprintf_r+0x100>
 80062ac:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80062b0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80062b4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80062b8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80062bc:	2b09      	cmp	r3, #9
 80062be:	d9f5      	bls.n	80062ac <_vfprintf_r+0x6e4>
 80062c0:	e502      	b.n	8005cc8 <_vfprintf_r+0x100>
 80062c2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80062c6:	f89a 6000 	ldrb.w	r6, [sl]
 80062ca:	e4fb      	b.n	8005cc4 <_vfprintf_r+0xfc>
 80062cc:	9c08      	ldr	r4, [sp, #32]
 80062ce:	3407      	adds	r4, #7
 80062d0:	f024 0407 	bic.w	r4, r4, #7
 80062d4:	ed94 7b00 	vldr	d7, [r4]
 80062d8:	ec52 1b17 	vmov	r1, r2, d7
 80062dc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80062e0:	931d      	str	r3, [sp, #116]	; 0x74
 80062e2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80062e6:	3408      	adds	r4, #8
 80062e8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80062ec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80062f0:	4bba      	ldr	r3, [pc, #744]	; (80065dc <_vfprintf_r+0xa14>)
 80062f2:	9408      	str	r4, [sp, #32]
 80062f4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80062f8:	f7fa fbd8 	bl	8000aac <__aeabi_dcmpun>
 80062fc:	2800      	cmp	r0, #0
 80062fe:	f040 846f 	bne.w	8006be0 <_vfprintf_r+0x1018>
 8006302:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8006306:	4bb5      	ldr	r3, [pc, #724]	; (80065dc <_vfprintf_r+0xa14>)
 8006308:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800630c:	f7fa fbb0 	bl	8000a70 <__aeabi_dcmple>
 8006310:	2800      	cmp	r0, #0
 8006312:	f040 8465 	bne.w	8006be0 <_vfprintf_r+0x1018>
 8006316:	2200      	movs	r2, #0
 8006318:	2300      	movs	r3, #0
 800631a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800631e:	f7fa fb9d 	bl	8000a5c <__aeabi_dcmplt>
 8006322:	2800      	cmp	r0, #0
 8006324:	f040 855b 	bne.w	8006dde <_vfprintf_r+0x1216>
 8006328:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800632c:	4fac      	ldr	r7, [pc, #688]	; (80065e0 <_vfprintf_r+0xa18>)
 800632e:	4bad      	ldr	r3, [pc, #692]	; (80065e4 <_vfprintf_r+0xa1c>)
 8006330:	2000      	movs	r0, #0
 8006332:	2103      	movs	r1, #3
 8006334:	9104      	str	r1, [sp, #16]
 8006336:	900a      	str	r0, [sp, #40]	; 0x28
 8006338:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800633c:	2e47      	cmp	r6, #71	; 0x47
 800633e:	bfd8      	it	le
 8006340:	461f      	movle	r7, r3
 8006342:	9109      	str	r1, [sp, #36]	; 0x24
 8006344:	4681      	mov	r9, r0
 8006346:	900f      	str	r0, [sp, #60]	; 0x3c
 8006348:	9014      	str	r0, [sp, #80]	; 0x50
 800634a:	9011      	str	r0, [sp, #68]	; 0x44
 800634c:	e5c9      	b.n	8005ee2 <_vfprintf_r+0x31a>
 800634e:	9808      	ldr	r0, [sp, #32]
 8006350:	2300      	movs	r3, #0
 8006352:	6801      	ldr	r1, [r0, #0]
 8006354:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8006358:	461a      	mov	r2, r3
 800635a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800635e:	2301      	movs	r3, #1
 8006360:	1d01      	adds	r1, r0, #4
 8006362:	9304      	str	r3, [sp, #16]
 8006364:	920a      	str	r2, [sp, #40]	; 0x28
 8006366:	4691      	mov	r9, r2
 8006368:	920f      	str	r2, [sp, #60]	; 0x3c
 800636a:	9214      	str	r2, [sp, #80]	; 0x50
 800636c:	9211      	str	r2, [sp, #68]	; 0x44
 800636e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8006372:	af3d      	add	r7, sp, #244	; 0xf4
 8006374:	e5b9      	b.n	8005eea <_vfprintf_r+0x322>
 8006376:	9b08      	ldr	r3, [sp, #32]
 8006378:	681f      	ldr	r7, [r3, #0]
 800637a:	2500      	movs	r5, #0
 800637c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8006380:	1d1c      	adds	r4, r3, #4
 8006382:	2f00      	cmp	r7, #0
 8006384:	f000 8639 	beq.w	8006ffa <_vfprintf_r+0x1432>
 8006388:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800638c:	f000 8711 	beq.w	80071b2 <_vfprintf_r+0x15ea>
 8006390:	464a      	mov	r2, r9
 8006392:	4629      	mov	r1, r5
 8006394:	4638      	mov	r0, r7
 8006396:	f7fa fea3 	bl	80010e0 <memchr>
 800639a:	900a      	str	r0, [sp, #40]	; 0x28
 800639c:	2800      	cmp	r0, #0
 800639e:	f000 85e7 	beq.w	8006f70 <_vfprintf_r+0x13a8>
 80063a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80063a4:	1bdb      	subs	r3, r3, r7
 80063a6:	9309      	str	r3, [sp, #36]	; 0x24
 80063a8:	46a9      	mov	r9, r5
 80063aa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80063ae:	9408      	str	r4, [sp, #32]
 80063b0:	9304      	str	r3, [sp, #16]
 80063b2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80063b6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80063ba:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80063be:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80063c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80063c6:	e58c      	b.n	8005ee2 <_vfprintf_r+0x31a>
 80063c8:	f048 0310 	orr.w	r3, r8, #16
 80063cc:	069a      	lsls	r2, r3, #26
 80063ce:	f53f aeb2 	bmi.w	8006136 <_vfprintf_r+0x56e>
 80063d2:	9a08      	ldr	r2, [sp, #32]
 80063d4:	06df      	lsls	r7, r3, #27
 80063d6:	f102 0104 	add.w	r1, r2, #4
 80063da:	f100 837e 	bmi.w	8006ada <_vfprintf_r+0xf12>
 80063de:	065d      	lsls	r5, r3, #25
 80063e0:	9a08      	ldr	r2, [sp, #32]
 80063e2:	f100 84e4 	bmi.w	8006dae <_vfprintf_r+0x11e6>
 80063e6:	059c      	lsls	r4, r3, #22
 80063e8:	f140 8377 	bpl.w	8006ada <_vfprintf_r+0xf12>
 80063ec:	7814      	ldrb	r4, [r2, #0]
 80063ee:	9108      	str	r1, [sp, #32]
 80063f0:	2500      	movs	r5, #0
 80063f2:	2201      	movs	r2, #1
 80063f4:	e6a9      	b.n	800614a <_vfprintf_r+0x582>
 80063f6:	4b7c      	ldr	r3, [pc, #496]	; (80065e8 <_vfprintf_r+0xa20>)
 80063f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80063fa:	f018 0f20 	tst.w	r8, #32
 80063fe:	f47f aeec 	bne.w	80061da <_vfprintf_r+0x612>
 8006402:	9a08      	ldr	r2, [sp, #32]
 8006404:	f018 0f10 	tst.w	r8, #16
 8006408:	f102 0304 	add.w	r3, r2, #4
 800640c:	f040 8354 	bne.w	8006ab8 <_vfprintf_r+0xef0>
 8006410:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006414:	9a08      	ldr	r2, [sp, #32]
 8006416:	f040 84d0 	bne.w	8006dba <_vfprintf_r+0x11f2>
 800641a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800641e:	f000 834b 	beq.w	8006ab8 <_vfprintf_r+0xef0>
 8006422:	7814      	ldrb	r4, [r2, #0]
 8006424:	9308      	str	r3, [sp, #32]
 8006426:	2500      	movs	r5, #0
 8006428:	e6e0      	b.n	80061ec <_vfprintf_r+0x624>
 800642a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800642e:	f89a 6000 	ldrb.w	r6, [sl]
 8006432:	2b00      	cmp	r3, #0
 8006434:	f47f ac46 	bne.w	8005cc4 <_vfprintf_r+0xfc>
 8006438:	2320      	movs	r3, #32
 800643a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800643e:	e441      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8006440:	f89a 6000 	ldrb.w	r6, [sl]
 8006444:	2e6c      	cmp	r6, #108	; 0x6c
 8006446:	bf03      	ittte	eq
 8006448:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800644c:	f048 0820 	orreq.w	r8, r8, #32
 8006450:	f10a 0a01 	addeq.w	sl, sl, #1
 8006454:	f048 0810 	orrne.w	r8, r8, #16
 8006458:	e434      	b.n	8005cc4 <_vfprintf_r+0xfc>
 800645a:	9a08      	ldr	r2, [sp, #32]
 800645c:	f018 0f20 	tst.w	r8, #32
 8006460:	f852 3b04 	ldr.w	r3, [r2], #4
 8006464:	9208      	str	r2, [sp, #32]
 8006466:	f000 83a1 	beq.w	8006bac <_vfprintf_r+0xfe4>
 800646a:	9a05      	ldr	r2, [sp, #20]
 800646c:	4610      	mov	r0, r2
 800646e:	17d1      	asrs	r1, r2, #31
 8006470:	e9c3 0100 	strd	r0, r1, [r3]
 8006474:	4657      	mov	r7, sl
 8006476:	e64d      	b.n	8006114 <_vfprintf_r+0x54c>
 8006478:	f89a 6000 	ldrb.w	r6, [sl]
 800647c:	2e68      	cmp	r6, #104	; 0x68
 800647e:	bf03      	ittte	eq
 8006480:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8006484:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8006488:	f10a 0a01 	addeq.w	sl, sl, #1
 800648c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8006490:	e418      	b.n	8005cc4 <_vfprintf_r+0xfc>
 8006492:	9908      	ldr	r1, [sp, #32]
 8006494:	4b55      	ldr	r3, [pc, #340]	; (80065ec <_vfprintf_r+0xa24>)
 8006496:	680c      	ldr	r4, [r1, #0]
 8006498:	9317      	str	r3, [sp, #92]	; 0x5c
 800649a:	f647 0230 	movw	r2, #30768	; 0x7830
 800649e:	3104      	adds	r1, #4
 80064a0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80064a4:	f048 0302 	orr.w	r3, r8, #2
 80064a8:	9108      	str	r1, [sp, #32]
 80064aa:	2500      	movs	r5, #0
 80064ac:	2202      	movs	r2, #2
 80064ae:	2678      	movs	r6, #120	; 0x78
 80064b0:	e64b      	b.n	800614a <_vfprintf_r+0x582>
 80064b2:	f048 0808 	orr.w	r8, r8, #8
 80064b6:	f89a 6000 	ldrb.w	r6, [sl]
 80064ba:	e403      	b.n	8005cc4 <_vfprintf_r+0xfc>
 80064bc:	f048 0310 	orr.w	r3, r8, #16
 80064c0:	069f      	lsls	r7, r3, #26
 80064c2:	f53f acd1 	bmi.w	8005e68 <_vfprintf_r+0x2a0>
 80064c6:	9908      	ldr	r1, [sp, #32]
 80064c8:	06dd      	lsls	r5, r3, #27
 80064ca:	f101 0204 	add.w	r2, r1, #4
 80064ce:	f100 82fd 	bmi.w	8006acc <_vfprintf_r+0xf04>
 80064d2:	065c      	lsls	r4, r3, #25
 80064d4:	9908      	ldr	r1, [sp, #32]
 80064d6:	f100 8475 	bmi.w	8006dc4 <_vfprintf_r+0x11fc>
 80064da:	0598      	lsls	r0, r3, #22
 80064dc:	f140 82f6 	bpl.w	8006acc <_vfprintf_r+0xf04>
 80064e0:	f991 4000 	ldrsb.w	r4, [r1]
 80064e4:	9208      	str	r2, [sp, #32]
 80064e6:	17e5      	asrs	r5, r4, #31
 80064e8:	4620      	mov	r0, r4
 80064ea:	4629      	mov	r1, r5
 80064ec:	e4c7      	b.n	8005e7e <_vfprintf_r+0x2b6>
 80064ee:	9a08      	ldr	r2, [sp, #32]
 80064f0:	f018 0f10 	tst.w	r8, #16
 80064f4:	f102 0304 	add.w	r3, r2, #4
 80064f8:	f040 82e3 	bne.w	8006ac2 <_vfprintf_r+0xefa>
 80064fc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006500:	9a08      	ldr	r2, [sp, #32]
 8006502:	f040 8467 	bne.w	8006dd4 <_vfprintf_r+0x120c>
 8006506:	f418 7f00 	tst.w	r8, #512	; 0x200
 800650a:	f000 82da 	beq.w	8006ac2 <_vfprintf_r+0xefa>
 800650e:	7814      	ldrb	r4, [r2, #0]
 8006510:	9308      	str	r3, [sp, #32]
 8006512:	2500      	movs	r5, #0
 8006514:	e488      	b.n	8005e28 <_vfprintf_r+0x260>
 8006516:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800651a:	f002 fbc7 	bl	8008cac <__retarget_lock_release_recursive>
 800651e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006522:	9305      	str	r3, [sp, #20]
 8006524:	e443      	b.n	8005dae <_vfprintf_r+0x1e6>
 8006526:	2e00      	cmp	r6, #0
 8006528:	f43f adf8 	beq.w	800611c <_vfprintf_r+0x554>
 800652c:	2300      	movs	r3, #0
 800652e:	2101      	movs	r1, #1
 8006530:	461a      	mov	r2, r3
 8006532:	9104      	str	r1, [sp, #16]
 8006534:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8006538:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800653c:	930a      	str	r3, [sp, #40]	; 0x28
 800653e:	4699      	mov	r9, r3
 8006540:	930f      	str	r3, [sp, #60]	; 0x3c
 8006542:	9314      	str	r3, [sp, #80]	; 0x50
 8006544:	9311      	str	r3, [sp, #68]	; 0x44
 8006546:	9109      	str	r1, [sp, #36]	; 0x24
 8006548:	af3d      	add	r7, sp, #244	; 0xf4
 800654a:	e4ce      	b.n	8005eea <_vfprintf_r+0x322>
 800654c:	2e65      	cmp	r6, #101	; 0x65
 800654e:	f340 80ca 	ble.w	80066e6 <_vfprintf_r+0xb1e>
 8006552:	2200      	movs	r2, #0
 8006554:	2300      	movs	r3, #0
 8006556:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800655a:	f7fa fa75 	bl	8000a48 <__aeabi_dcmpeq>
 800655e:	2800      	cmp	r0, #0
 8006560:	f000 8169 	beq.w	8006836 <_vfprintf_r+0xc6e>
 8006564:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006566:	4a22      	ldr	r2, [pc, #136]	; (80065f0 <_vfprintf_r+0xa28>)
 8006568:	f8cb 2000 	str.w	r2, [fp]
 800656c:	3301      	adds	r3, #1
 800656e:	3401      	adds	r4, #1
 8006570:	2201      	movs	r2, #1
 8006572:	2b07      	cmp	r3, #7
 8006574:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006578:	f8cb 2004 	str.w	r2, [fp, #4]
 800657c:	f300 8406 	bgt.w	8006d8c <_vfprintf_r+0x11c4>
 8006580:	f10b 0b08 	add.w	fp, fp, #8
 8006584:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006586:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006588:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800658a:	4293      	cmp	r3, r2
 800658c:	db03      	blt.n	8006596 <_vfprintf_r+0x9ce>
 800658e:	f018 0f01 	tst.w	r8, #1
 8006592:	f43f ad6a 	beq.w	800606a <_vfprintf_r+0x4a2>
 8006596:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006598:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800659a:	f8cb 2000 	str.w	r2, [fp]
 800659e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80065a0:	f8cb 2004 	str.w	r2, [fp, #4]
 80065a4:	3301      	adds	r3, #1
 80065a6:	4414      	add	r4, r2
 80065a8:	2b07      	cmp	r3, #7
 80065aa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80065ae:	f300 8517 	bgt.w	8006fe0 <_vfprintf_r+0x1418>
 80065b2:	f10b 0b08 	add.w	fp, fp, #8
 80065b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80065b8:	1e5d      	subs	r5, r3, #1
 80065ba:	2d00      	cmp	r5, #0
 80065bc:	f77f ad55 	ble.w	800606a <_vfprintf_r+0x4a2>
 80065c0:	2d10      	cmp	r5, #16
 80065c2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80065c4:	4b0b      	ldr	r3, [pc, #44]	; (80065f4 <_vfprintf_r+0xa2c>)
 80065c6:	f340 82e7 	ble.w	8006b98 <_vfprintf_r+0xfd0>
 80065ca:	4619      	mov	r1, r3
 80065cc:	2610      	movs	r6, #16
 80065ce:	4623      	mov	r3, r4
 80065d0:	9f03      	ldr	r7, [sp, #12]
 80065d2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80065d6:	460c      	mov	r4, r1
 80065d8:	e014      	b.n	8006604 <_vfprintf_r+0xa3c>
 80065da:	bf00      	nop
 80065dc:	7fefffff 	.word	0x7fefffff
 80065e0:	0800ab10 	.word	0x0800ab10
 80065e4:	0800ab0c 	.word	0x0800ab0c
 80065e8:	0800ab30 	.word	0x0800ab30
 80065ec:	0800ab1c 	.word	0x0800ab1c
 80065f0:	0800ab4c 	.word	0x0800ab4c
 80065f4:	0800ab60 	.word	0x0800ab60
 80065f8:	f10b 0b08 	add.w	fp, fp, #8
 80065fc:	3d10      	subs	r5, #16
 80065fe:	2d10      	cmp	r5, #16
 8006600:	f340 82c7 	ble.w	8006b92 <_vfprintf_r+0xfca>
 8006604:	3201      	adds	r2, #1
 8006606:	3310      	adds	r3, #16
 8006608:	2a07      	cmp	r2, #7
 800660a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800660e:	e9cb 4600 	strd	r4, r6, [fp]
 8006612:	ddf1      	ble.n	80065f8 <_vfprintf_r+0xa30>
 8006614:	aa2a      	add	r2, sp, #168	; 0xa8
 8006616:	4649      	mov	r1, r9
 8006618:	4638      	mov	r0, r7
 800661a:	f003 fa73 	bl	8009b04 <__sprint_r>
 800661e:	2800      	cmp	r0, #0
 8006620:	d14c      	bne.n	80066bc <_vfprintf_r+0xaf4>
 8006622:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8006626:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800662a:	e7e7      	b.n	80065fc <_vfprintf_r+0xa34>
 800662c:	9b06      	ldr	r3, [sp, #24]
 800662e:	9a04      	ldr	r2, [sp, #16]
 8006630:	1a9d      	subs	r5, r3, r2
 8006632:	2d00      	cmp	r5, #0
 8006634:	f77f acc9 	ble.w	8005fca <_vfprintf_r+0x402>
 8006638:	2d10      	cmp	r5, #16
 800663a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800663c:	4bbc      	ldr	r3, [pc, #752]	; (8006930 <_vfprintf_r+0xd68>)
 800663e:	dd27      	ble.n	8006690 <_vfprintf_r+0xac8>
 8006640:	4659      	mov	r1, fp
 8006642:	4620      	mov	r0, r4
 8006644:	46bb      	mov	fp, r7
 8006646:	461c      	mov	r4, r3
 8006648:	4637      	mov	r7, r6
 800664a:	9e07      	ldr	r6, [sp, #28]
 800664c:	e004      	b.n	8006658 <_vfprintf_r+0xa90>
 800664e:	3d10      	subs	r5, #16
 8006650:	2d10      	cmp	r5, #16
 8006652:	f101 0108 	add.w	r1, r1, #8
 8006656:	dd16      	ble.n	8006686 <_vfprintf_r+0xabe>
 8006658:	3201      	adds	r2, #1
 800665a:	3010      	adds	r0, #16
 800665c:	2310      	movs	r3, #16
 800665e:	2a07      	cmp	r2, #7
 8006660:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8006664:	600c      	str	r4, [r1, #0]
 8006666:	604b      	str	r3, [r1, #4]
 8006668:	ddf1      	ble.n	800664e <_vfprintf_r+0xa86>
 800666a:	aa2a      	add	r2, sp, #168	; 0xa8
 800666c:	4631      	mov	r1, r6
 800666e:	9803      	ldr	r0, [sp, #12]
 8006670:	f003 fa48 	bl	8009b04 <__sprint_r>
 8006674:	2800      	cmp	r0, #0
 8006676:	f040 80a8 	bne.w	80067ca <_vfprintf_r+0xc02>
 800667a:	3d10      	subs	r5, #16
 800667c:	2d10      	cmp	r5, #16
 800667e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006682:	a92d      	add	r1, sp, #180	; 0xb4
 8006684:	dce8      	bgt.n	8006658 <_vfprintf_r+0xa90>
 8006686:	463e      	mov	r6, r7
 8006688:	4623      	mov	r3, r4
 800668a:	465f      	mov	r7, fp
 800668c:	4604      	mov	r4, r0
 800668e:	468b      	mov	fp, r1
 8006690:	3201      	adds	r2, #1
 8006692:	442c      	add	r4, r5
 8006694:	2a07      	cmp	r2, #7
 8006696:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800669a:	e9cb 3500 	strd	r3, r5, [fp]
 800669e:	f300 8292 	bgt.w	8006bc6 <_vfprintf_r+0xffe>
 80066a2:	f10b 0b08 	add.w	fp, fp, #8
 80066a6:	e490      	b.n	8005fca <_vfprintf_r+0x402>
 80066a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80066aa:	9907      	ldr	r1, [sp, #28]
 80066ac:	9803      	ldr	r0, [sp, #12]
 80066ae:	f003 fa29 	bl	8009b04 <__sprint_r>
 80066b2:	2800      	cmp	r0, #0
 80066b4:	f43f ad23 	beq.w	80060fe <_vfprintf_r+0x536>
 80066b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80066bc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80066be:	b111      	cbz	r1, 80066c6 <_vfprintf_r+0xafe>
 80066c0:	9803      	ldr	r0, [sp, #12]
 80066c2:	f002 f9c1 	bl	8008a48 <_free_r>
 80066c6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80066ca:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80066ce:	07d0      	lsls	r0, r2, #31
 80066d0:	d402      	bmi.n	80066d8 <_vfprintf_r+0xb10>
 80066d2:	0599      	lsls	r1, r3, #22
 80066d4:	f140 81d0 	bpl.w	8006a78 <_vfprintf_r+0xeb0>
 80066d8:	065a      	lsls	r2, r3, #25
 80066da:	f53f ab65 	bmi.w	8005da8 <_vfprintf_r+0x1e0>
 80066de:	9805      	ldr	r0, [sp, #20]
 80066e0:	b057      	add	sp, #348	; 0x15c
 80066e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80066e8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80066ea:	2a01      	cmp	r2, #1
 80066ec:	f104 0401 	add.w	r4, r4, #1
 80066f0:	f103 0501 	add.w	r5, r3, #1
 80066f4:	f10b 0608 	add.w	r6, fp, #8
 80066f8:	f340 811c 	ble.w	8006934 <_vfprintf_r+0xd6c>
 80066fc:	2301      	movs	r3, #1
 80066fe:	2d07      	cmp	r5, #7
 8006700:	f8cb 7000 	str.w	r7, [fp]
 8006704:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8006708:	f8cb 3004 	str.w	r3, [fp, #4]
 800670c:	f300 81bb 	bgt.w	8006a86 <_vfprintf_r+0xebe>
 8006710:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006712:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8006714:	1c69      	adds	r1, r5, #1
 8006716:	441c      	add	r4, r3
 8006718:	2907      	cmp	r1, #7
 800671a:	910b      	str	r1, [sp, #44]	; 0x2c
 800671c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8006720:	e9c6 2300 	strd	r2, r3, [r6]
 8006724:	f300 81bb 	bgt.w	8006a9e <_vfprintf_r+0xed6>
 8006728:	3608      	adds	r6, #8
 800672a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800672c:	1c53      	adds	r3, r2, #1
 800672e:	461d      	mov	r5, r3
 8006730:	9509      	str	r5, [sp, #36]	; 0x24
 8006732:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8006734:	930e      	str	r3, [sp, #56]	; 0x38
 8006736:	2200      	movs	r2, #0
 8006738:	2300      	movs	r3, #0
 800673a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800673e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8006742:	f106 0b08 	add.w	fp, r6, #8
 8006746:	f7fa f97f 	bl	8000a48 <__aeabi_dcmpeq>
 800674a:	2800      	cmp	r0, #0
 800674c:	f040 80c2 	bne.w	80068d4 <_vfprintf_r+0xd0c>
 8006750:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8006752:	f8c6 9004 	str.w	r9, [r6, #4]
 8006756:	3701      	adds	r7, #1
 8006758:	444c      	add	r4, r9
 800675a:	2d07      	cmp	r5, #7
 800675c:	6037      	str	r7, [r6, #0]
 800675e:	942c      	str	r4, [sp, #176]	; 0xb0
 8006760:	952b      	str	r5, [sp, #172]	; 0xac
 8006762:	f300 80f9 	bgt.w	8006958 <_vfprintf_r+0xd90>
 8006766:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006768:	f106 0310 	add.w	r3, r6, #16
 800676c:	3202      	adds	r2, #2
 800676e:	465e      	mov	r6, fp
 8006770:	9209      	str	r2, [sp, #36]	; 0x24
 8006772:	469b      	mov	fp, r3
 8006774:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8006776:	6072      	str	r2, [r6, #4]
 8006778:	4414      	add	r4, r2
 800677a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800677c:	942c      	str	r4, [sp, #176]	; 0xb0
 800677e:	ab26      	add	r3, sp, #152	; 0x98
 8006780:	2a07      	cmp	r2, #7
 8006782:	922b      	str	r2, [sp, #172]	; 0xac
 8006784:	6033      	str	r3, [r6, #0]
 8006786:	f77f ac70 	ble.w	800606a <_vfprintf_r+0x4a2>
 800678a:	aa2a      	add	r2, sp, #168	; 0xa8
 800678c:	9907      	ldr	r1, [sp, #28]
 800678e:	9803      	ldr	r0, [sp, #12]
 8006790:	f003 f9b8 	bl	8009b04 <__sprint_r>
 8006794:	2800      	cmp	r0, #0
 8006796:	d18f      	bne.n	80066b8 <_vfprintf_r+0xaf0>
 8006798:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800679a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800679e:	e464      	b.n	800606a <_vfprintf_r+0x4a2>
 80067a0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80067a2:	af56      	add	r7, sp, #344	; 0x158
 80067a4:	0923      	lsrs	r3, r4, #4
 80067a6:	f004 010f 	and.w	r1, r4, #15
 80067aa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80067ae:	092a      	lsrs	r2, r5, #4
 80067b0:	461c      	mov	r4, r3
 80067b2:	4615      	mov	r5, r2
 80067b4:	5c43      	ldrb	r3, [r0, r1]
 80067b6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80067ba:	ea54 0305 	orrs.w	r3, r4, r5
 80067be:	d1f1      	bne.n	80067a4 <_vfprintf_r+0xbdc>
 80067c0:	9b04      	ldr	r3, [sp, #16]
 80067c2:	1bdb      	subs	r3, r3, r7
 80067c4:	9309      	str	r3, [sp, #36]	; 0x24
 80067c6:	f7ff bb80 	b.w	8005eca <_vfprintf_r+0x302>
 80067ca:	46b1      	mov	r9, r6
 80067cc:	e776      	b.n	80066bc <_vfprintf_r+0xaf4>
 80067ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80067d0:	9907      	ldr	r1, [sp, #28]
 80067d2:	9803      	ldr	r0, [sp, #12]
 80067d4:	f003 f996 	bl	8009b04 <__sprint_r>
 80067d8:	2800      	cmp	r0, #0
 80067da:	f47f af6d 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80067de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80067e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80067e4:	f7ff bbdd 	b.w	8005fa2 <_vfprintf_r+0x3da>
 80067e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80067ea:	9907      	ldr	r1, [sp, #28]
 80067ec:	9803      	ldr	r0, [sp, #12]
 80067ee:	f003 f989 	bl	8009b04 <__sprint_r>
 80067f2:	2800      	cmp	r0, #0
 80067f4:	f47f af60 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80067f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80067fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80067fe:	f7ff bbe0 	b.w	8005fc2 <_vfprintf_r+0x3fa>
 8006802:	4698      	mov	r8, r3
 8006804:	2d00      	cmp	r5, #0
 8006806:	bf08      	it	eq
 8006808:	2c0a      	cmpeq	r4, #10
 800680a:	f080 8170 	bcs.w	8006aee <_vfprintf_r+0xf26>
 800680e:	af56      	add	r7, sp, #344	; 0x158
 8006810:	3430      	adds	r4, #48	; 0x30
 8006812:	2301      	movs	r3, #1
 8006814:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8006818:	9309      	str	r3, [sp, #36]	; 0x24
 800681a:	f7ff bb56 	b.w	8005eca <_vfprintf_r+0x302>
 800681e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006820:	9907      	ldr	r1, [sp, #28]
 8006822:	9803      	ldr	r0, [sp, #12]
 8006824:	f003 f96e 	bl	8009b04 <__sprint_r>
 8006828:	2800      	cmp	r0, #0
 800682a:	f47f af45 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 800682e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006830:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006834:	e406      	b.n	8006044 <_vfprintf_r+0x47c>
 8006836:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006838:	2b00      	cmp	r3, #0
 800683a:	f340 8273 	ble.w	8006d24 <_vfprintf_r+0x115c>
 800683e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8006842:	4293      	cmp	r3, r2
 8006844:	bfa8      	it	ge
 8006846:	4613      	movge	r3, r2
 8006848:	2b00      	cmp	r3, #0
 800684a:	461d      	mov	r5, r3
 800684c:	dd0d      	ble.n	800686a <_vfprintf_r+0xca2>
 800684e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006850:	f8cb 7000 	str.w	r7, [fp]
 8006854:	3301      	adds	r3, #1
 8006856:	442c      	add	r4, r5
 8006858:	2b07      	cmp	r3, #7
 800685a:	942c      	str	r4, [sp, #176]	; 0xb0
 800685c:	f8cb 5004 	str.w	r5, [fp, #4]
 8006860:	932b      	str	r3, [sp, #172]	; 0xac
 8006862:	f300 82c1 	bgt.w	8006de8 <_vfprintf_r+0x1220>
 8006866:	f10b 0b08 	add.w	fp, fp, #8
 800686a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800686c:	2d00      	cmp	r5, #0
 800686e:	bfa8      	it	ge
 8006870:	1b5b      	subge	r3, r3, r5
 8006872:	2b00      	cmp	r3, #0
 8006874:	461d      	mov	r5, r3
 8006876:	f340 8099 	ble.w	80069ac <_vfprintf_r+0xde4>
 800687a:	2d10      	cmp	r5, #16
 800687c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800687e:	4b2c      	ldr	r3, [pc, #176]	; (8006930 <_vfprintf_r+0xd68>)
 8006880:	f340 83db 	ble.w	800703a <_vfprintf_r+0x1472>
 8006884:	4618      	mov	r0, r3
 8006886:	4621      	mov	r1, r4
 8006888:	465b      	mov	r3, fp
 800688a:	2610      	movs	r6, #16
 800688c:	46bb      	mov	fp, r7
 800688e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006892:	9c07      	ldr	r4, [sp, #28]
 8006894:	4607      	mov	r7, r0
 8006896:	e004      	b.n	80068a2 <_vfprintf_r+0xcda>
 8006898:	3308      	adds	r3, #8
 800689a:	3d10      	subs	r5, #16
 800689c:	2d10      	cmp	r5, #16
 800689e:	f340 83c7 	ble.w	8007030 <_vfprintf_r+0x1468>
 80068a2:	3201      	adds	r2, #1
 80068a4:	3110      	adds	r1, #16
 80068a6:	2a07      	cmp	r2, #7
 80068a8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80068ac:	e9c3 7600 	strd	r7, r6, [r3]
 80068b0:	ddf2      	ble.n	8006898 <_vfprintf_r+0xcd0>
 80068b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80068b4:	4621      	mov	r1, r4
 80068b6:	4648      	mov	r0, r9
 80068b8:	f003 f924 	bl	8009b04 <__sprint_r>
 80068bc:	2800      	cmp	r0, #0
 80068be:	f040 84a5 	bne.w	800720c <_vfprintf_r+0x1644>
 80068c2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80068c6:	ab2d      	add	r3, sp, #180	; 0xb4
 80068c8:	e7e7      	b.n	800689a <_vfprintf_r+0xcd2>
 80068ca:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80068ce:	af56      	add	r7, sp, #344	; 0x158
 80068d0:	f7ff bafb 	b.w	8005eca <_vfprintf_r+0x302>
 80068d4:	f1b9 0f00 	cmp.w	r9, #0
 80068d8:	f77f af4c 	ble.w	8006774 <_vfprintf_r+0xbac>
 80068dc:	f1b9 0f10 	cmp.w	r9, #16
 80068e0:	4b13      	ldr	r3, [pc, #76]	; (8006930 <_vfprintf_r+0xd68>)
 80068e2:	f340 8659 	ble.w	8007598 <_vfprintf_r+0x19d0>
 80068e6:	4619      	mov	r1, r3
 80068e8:	4622      	mov	r2, r4
 80068ea:	4633      	mov	r3, r6
 80068ec:	2710      	movs	r7, #16
 80068ee:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80068f2:	9c07      	ldr	r4, [sp, #28]
 80068f4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80068f6:	460e      	mov	r6, r1
 80068f8:	e007      	b.n	800690a <_vfprintf_r+0xd42>
 80068fa:	3308      	adds	r3, #8
 80068fc:	f1a9 0910 	sub.w	r9, r9, #16
 8006900:	f1b9 0f10 	cmp.w	r9, #16
 8006904:	f340 8353 	ble.w	8006fae <_vfprintf_r+0x13e6>
 8006908:	3501      	adds	r5, #1
 800690a:	3210      	adds	r2, #16
 800690c:	2d07      	cmp	r5, #7
 800690e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8006912:	e9c3 6700 	strd	r6, r7, [r3]
 8006916:	ddf0      	ble.n	80068fa <_vfprintf_r+0xd32>
 8006918:	aa2a      	add	r2, sp, #168	; 0xa8
 800691a:	4621      	mov	r1, r4
 800691c:	4658      	mov	r0, fp
 800691e:	f003 f8f1 	bl	8009b04 <__sprint_r>
 8006922:	2800      	cmp	r0, #0
 8006924:	f040 8472 	bne.w	800720c <_vfprintf_r+0x1644>
 8006928:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800692c:	ab2d      	add	r3, sp, #180	; 0xb4
 800692e:	e7e5      	b.n	80068fc <_vfprintf_r+0xd34>
 8006930:	0800ab60 	.word	0x0800ab60
 8006934:	f018 0f01 	tst.w	r8, #1
 8006938:	f47f aee0 	bne.w	80066fc <_vfprintf_r+0xb34>
 800693c:	2201      	movs	r2, #1
 800693e:	2d07      	cmp	r5, #7
 8006940:	f8cb 7000 	str.w	r7, [fp]
 8006944:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8006948:	f8cb 2004 	str.w	r2, [fp, #4]
 800694c:	dc04      	bgt.n	8006958 <_vfprintf_r+0xd90>
 800694e:	3302      	adds	r3, #2
 8006950:	9309      	str	r3, [sp, #36]	; 0x24
 8006952:	f10b 0b10 	add.w	fp, fp, #16
 8006956:	e70d      	b.n	8006774 <_vfprintf_r+0xbac>
 8006958:	aa2a      	add	r2, sp, #168	; 0xa8
 800695a:	9907      	ldr	r1, [sp, #28]
 800695c:	9803      	ldr	r0, [sp, #12]
 800695e:	f003 f8d1 	bl	8009b04 <__sprint_r>
 8006962:	2800      	cmp	r0, #0
 8006964:	f47f aea8 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006968:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800696c:	3301      	adds	r3, #1
 800696e:	9309      	str	r3, [sp, #36]	; 0x24
 8006970:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8006974:	ae2d      	add	r6, sp, #180	; 0xb4
 8006976:	e6fd      	b.n	8006774 <_vfprintf_r+0xbac>
 8006978:	aa2a      	add	r2, sp, #168	; 0xa8
 800697a:	9907      	ldr	r1, [sp, #28]
 800697c:	9803      	ldr	r0, [sp, #12]
 800697e:	f003 f8c1 	bl	8009b04 <__sprint_r>
 8006982:	2800      	cmp	r0, #0
 8006984:	f47f ae98 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006988:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800698c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800698e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006992:	f7ff baf6 	b.w	8005f82 <_vfprintf_r+0x3ba>
 8006996:	aa2a      	add	r2, sp, #168	; 0xa8
 8006998:	9907      	ldr	r1, [sp, #28]
 800699a:	9803      	ldr	r0, [sp, #12]
 800699c:	f003 f8b2 	bl	8009b04 <__sprint_r>
 80069a0:	2800      	cmp	r0, #0
 80069a2:	f47f ae89 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80069a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80069a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80069ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80069ae:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80069b2:	443b      	add	r3, r7
 80069b4:	4699      	mov	r9, r3
 80069b6:	f040 8357 	bne.w	8007068 <_vfprintf_r+0x14a0>
 80069ba:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80069bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80069be:	4293      	cmp	r3, r2
 80069c0:	db49      	blt.n	8006a56 <_vfprintf_r+0xe8e>
 80069c2:	f018 0f01 	tst.w	r8, #1
 80069c6:	d146      	bne.n	8006a56 <_vfprintf_r+0xe8e>
 80069c8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80069ca:	18bd      	adds	r5, r7, r2
 80069cc:	eba5 0509 	sub.w	r5, r5, r9
 80069d0:	1ad3      	subs	r3, r2, r3
 80069d2:	429d      	cmp	r5, r3
 80069d4:	bfa8      	it	ge
 80069d6:	461d      	movge	r5, r3
 80069d8:	2d00      	cmp	r5, #0
 80069da:	dd0d      	ble.n	80069f8 <_vfprintf_r+0xe30>
 80069dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80069de:	f8cb 9000 	str.w	r9, [fp]
 80069e2:	3201      	adds	r2, #1
 80069e4:	442c      	add	r4, r5
 80069e6:	2a07      	cmp	r2, #7
 80069e8:	942c      	str	r4, [sp, #176]	; 0xb0
 80069ea:	f8cb 5004 	str.w	r5, [fp, #4]
 80069ee:	922b      	str	r2, [sp, #172]	; 0xac
 80069f0:	f300 8462 	bgt.w	80072b8 <_vfprintf_r+0x16f0>
 80069f4:	f10b 0b08 	add.w	fp, fp, #8
 80069f8:	2d00      	cmp	r5, #0
 80069fa:	bfac      	ite	ge
 80069fc:	1b5d      	subge	r5, r3, r5
 80069fe:	461d      	movlt	r5, r3
 8006a00:	2d00      	cmp	r5, #0
 8006a02:	f77f ab32 	ble.w	800606a <_vfprintf_r+0x4a2>
 8006a06:	2d10      	cmp	r5, #16
 8006a08:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006a0a:	4bc5      	ldr	r3, [pc, #788]	; (8006d20 <_vfprintf_r+0x1158>)
 8006a0c:	f340 80c4 	ble.w	8006b98 <_vfprintf_r+0xfd0>
 8006a10:	4619      	mov	r1, r3
 8006a12:	2610      	movs	r6, #16
 8006a14:	4623      	mov	r3, r4
 8006a16:	9f03      	ldr	r7, [sp, #12]
 8006a18:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006a1c:	460c      	mov	r4, r1
 8006a1e:	e005      	b.n	8006a2c <_vfprintf_r+0xe64>
 8006a20:	f10b 0b08 	add.w	fp, fp, #8
 8006a24:	3d10      	subs	r5, #16
 8006a26:	2d10      	cmp	r5, #16
 8006a28:	f340 80b3 	ble.w	8006b92 <_vfprintf_r+0xfca>
 8006a2c:	3201      	adds	r2, #1
 8006a2e:	3310      	adds	r3, #16
 8006a30:	2a07      	cmp	r2, #7
 8006a32:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8006a36:	e9cb 4600 	strd	r4, r6, [fp]
 8006a3a:	ddf1      	ble.n	8006a20 <_vfprintf_r+0xe58>
 8006a3c:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a3e:	4649      	mov	r1, r9
 8006a40:	4638      	mov	r0, r7
 8006a42:	f003 f85f 	bl	8009b04 <__sprint_r>
 8006a46:	2800      	cmp	r0, #0
 8006a48:	f47f ae38 	bne.w	80066bc <_vfprintf_r+0xaf4>
 8006a4c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8006a50:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a54:	e7e6      	b.n	8006a24 <_vfprintf_r+0xe5c>
 8006a56:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006a58:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006a5a:	f8cb 1000 	str.w	r1, [fp]
 8006a5e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006a60:	f8cb 1004 	str.w	r1, [fp, #4]
 8006a64:	3201      	adds	r2, #1
 8006a66:	440c      	add	r4, r1
 8006a68:	2a07      	cmp	r2, #7
 8006a6a:	942c      	str	r4, [sp, #176]	; 0xb0
 8006a6c:	922b      	str	r2, [sp, #172]	; 0xac
 8006a6e:	f300 828c 	bgt.w	8006f8a <_vfprintf_r+0x13c2>
 8006a72:	f10b 0b08 	add.w	fp, fp, #8
 8006a76:	e7a7      	b.n	80069c8 <_vfprintf_r+0xe00>
 8006a78:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8006a7c:	f002 f916 	bl	8008cac <__retarget_lock_release_recursive>
 8006a80:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006a84:	e628      	b.n	80066d8 <_vfprintf_r+0xb10>
 8006a86:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a88:	9907      	ldr	r1, [sp, #28]
 8006a8a:	9803      	ldr	r0, [sp, #12]
 8006a8c:	f003 f83a 	bl	8009b04 <__sprint_r>
 8006a90:	2800      	cmp	r0, #0
 8006a92:	f47f ae11 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006a96:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8006a9a:	ae2d      	add	r6, sp, #180	; 0xb4
 8006a9c:	e638      	b.n	8006710 <_vfprintf_r+0xb48>
 8006a9e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006aa0:	9907      	ldr	r1, [sp, #28]
 8006aa2:	9803      	ldr	r0, [sp, #12]
 8006aa4:	f003 f82e 	bl	8009b04 <__sprint_r>
 8006aa8:	2800      	cmp	r0, #0
 8006aaa:	f47f ae05 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006aae:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8006ab2:	ae2d      	add	r6, sp, #180	; 0xb4
 8006ab4:	930b      	str	r3, [sp, #44]	; 0x2c
 8006ab6:	e638      	b.n	800672a <_vfprintf_r+0xb62>
 8006ab8:	6814      	ldr	r4, [r2, #0]
 8006aba:	9308      	str	r3, [sp, #32]
 8006abc:	2500      	movs	r5, #0
 8006abe:	f7ff bb95 	b.w	80061ec <_vfprintf_r+0x624>
 8006ac2:	6814      	ldr	r4, [r2, #0]
 8006ac4:	9308      	str	r3, [sp, #32]
 8006ac6:	2500      	movs	r5, #0
 8006ac8:	f7ff b9ae 	b.w	8005e28 <_vfprintf_r+0x260>
 8006acc:	680c      	ldr	r4, [r1, #0]
 8006ace:	9208      	str	r2, [sp, #32]
 8006ad0:	17e5      	asrs	r5, r4, #31
 8006ad2:	4620      	mov	r0, r4
 8006ad4:	4629      	mov	r1, r5
 8006ad6:	f7ff b9d2 	b.w	8005e7e <_vfprintf_r+0x2b6>
 8006ada:	6814      	ldr	r4, [r2, #0]
 8006adc:	9108      	str	r1, [sp, #32]
 8006ade:	2201      	movs	r2, #1
 8006ae0:	2500      	movs	r5, #0
 8006ae2:	f7ff bb32 	b.w	800614a <_vfprintf_r+0x582>
 8006ae6:	2a01      	cmp	r2, #1
 8006ae8:	f47f ab3c 	bne.w	8006164 <_vfprintf_r+0x59c>
 8006aec:	e68f      	b.n	800680e <_vfprintf_r+0xc46>
 8006aee:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8006af2:	2200      	movs	r2, #0
 8006af4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8006af8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8006afc:	af56      	add	r7, sp, #344	; 0x158
 8006afe:	4692      	mov	sl, r2
 8006b00:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8006b04:	461e      	mov	r6, r3
 8006b06:	e00a      	b.n	8006b1e <_vfprintf_r+0xf56>
 8006b08:	2300      	movs	r3, #0
 8006b0a:	4620      	mov	r0, r4
 8006b0c:	4629      	mov	r1, r5
 8006b0e:	220a      	movs	r2, #10
 8006b10:	f7fa f80a 	bl	8000b28 <__aeabi_uldivmod>
 8006b14:	4604      	mov	r4, r0
 8006b16:	460d      	mov	r5, r1
 8006b18:	ea54 0305 	orrs.w	r3, r4, r5
 8006b1c:	d029      	beq.n	8006b72 <_vfprintf_r+0xfaa>
 8006b1e:	220a      	movs	r2, #10
 8006b20:	2300      	movs	r3, #0
 8006b22:	4620      	mov	r0, r4
 8006b24:	4629      	mov	r1, r5
 8006b26:	f7f9 ffff 	bl	8000b28 <__aeabi_uldivmod>
 8006b2a:	3230      	adds	r2, #48	; 0x30
 8006b2c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8006b30:	f10a 0a01 	add.w	sl, sl, #1
 8006b34:	3f01      	subs	r7, #1
 8006b36:	2e00      	cmp	r6, #0
 8006b38:	d0e6      	beq.n	8006b08 <_vfprintf_r+0xf40>
 8006b3a:	f898 3000 	ldrb.w	r3, [r8]
 8006b3e:	459a      	cmp	sl, r3
 8006b40:	d1e2      	bne.n	8006b08 <_vfprintf_r+0xf40>
 8006b42:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8006b46:	d0df      	beq.n	8006b08 <_vfprintf_r+0xf40>
 8006b48:	2d00      	cmp	r5, #0
 8006b4a:	bf08      	it	eq
 8006b4c:	2c0a      	cmpeq	r4, #10
 8006b4e:	d3db      	bcc.n	8006b08 <_vfprintf_r+0xf40>
 8006b50:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8006b52:	9918      	ldr	r1, [sp, #96]	; 0x60
 8006b54:	1aff      	subs	r7, r7, r3
 8006b56:	461a      	mov	r2, r3
 8006b58:	4638      	mov	r0, r7
 8006b5a:	f002 ff65 	bl	8009a28 <strncpy>
 8006b5e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8006b62:	2b00      	cmp	r3, #0
 8006b64:	f000 8496 	beq.w	8007494 <_vfprintf_r+0x18cc>
 8006b68:	f108 0801 	add.w	r8, r8, #1
 8006b6c:	f04f 0a00 	mov.w	sl, #0
 8006b70:	e7ca      	b.n	8006b08 <_vfprintf_r+0xf40>
 8006b72:	9b04      	ldr	r3, [sp, #16]
 8006b74:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8006b78:	1bdb      	subs	r3, r3, r7
 8006b7a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8006b7e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8006b80:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006b84:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8006b88:	9309      	str	r3, [sp, #36]	; 0x24
 8006b8a:	f7ff b99e 	b.w	8005eca <_vfprintf_r+0x302>
 8006b8e:	46c1      	mov	r9, r8
 8006b90:	e594      	b.n	80066bc <_vfprintf_r+0xaf4>
 8006b92:	4621      	mov	r1, r4
 8006b94:	461c      	mov	r4, r3
 8006b96:	460b      	mov	r3, r1
 8006b98:	3201      	adds	r2, #1
 8006b9a:	442c      	add	r4, r5
 8006b9c:	2a07      	cmp	r2, #7
 8006b9e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006ba2:	e9cb 3500 	strd	r3, r5, [fp]
 8006ba6:	f77f aa5e 	ble.w	8006066 <_vfprintf_r+0x49e>
 8006baa:	e5ee      	b.n	800678a <_vfprintf_r+0xbc2>
 8006bac:	f018 0f10 	tst.w	r8, #16
 8006bb0:	f040 80f8 	bne.w	8006da4 <_vfprintf_r+0x11dc>
 8006bb4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006bb8:	f000 8351 	beq.w	800725e <_vfprintf_r+0x1696>
 8006bbc:	9a05      	ldr	r2, [sp, #20]
 8006bbe:	801a      	strh	r2, [r3, #0]
 8006bc0:	4657      	mov	r7, sl
 8006bc2:	f7ff baa7 	b.w	8006114 <_vfprintf_r+0x54c>
 8006bc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8006bc8:	9907      	ldr	r1, [sp, #28]
 8006bca:	9803      	ldr	r0, [sp, #12]
 8006bcc:	f002 ff9a 	bl	8009b04 <__sprint_r>
 8006bd0:	2800      	cmp	r0, #0
 8006bd2:	f47f ad71 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006bd6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006bd8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006bdc:	f7ff b9f5 	b.w	8005fca <_vfprintf_r+0x402>
 8006be0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006be4:	4602      	mov	r2, r0
 8006be6:	460b      	mov	r3, r1
 8006be8:	f7f9 ff60 	bl	8000aac <__aeabi_dcmpun>
 8006bec:	2800      	cmp	r0, #0
 8006bee:	f040 8491 	bne.w	8007514 <_vfprintf_r+0x194c>
 8006bf2:	2e61      	cmp	r6, #97	; 0x61
 8006bf4:	f000 8111 	beq.w	8006e1a <_vfprintf_r+0x1252>
 8006bf8:	2e41      	cmp	r6, #65	; 0x41
 8006bfa:	f000 8377 	beq.w	80072ec <_vfprintf_r+0x1724>
 8006bfe:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8006c02:	f026 0220 	bic.w	r2, r6, #32
 8006c06:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006c0a:	930e      	str	r3, [sp, #56]	; 0x38
 8006c0c:	9204      	str	r2, [sp, #16]
 8006c0e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006c10:	f000 842d 	beq.w	800746e <_vfprintf_r+0x18a6>
 8006c14:	2a47      	cmp	r2, #71	; 0x47
 8006c16:	f000 8424 	beq.w	8007462 <_vfprintf_r+0x189a>
 8006c1a:	2b00      	cmp	r3, #0
 8006c1c:	f2c0 82f9 	blt.w	8007212 <_vfprintf_r+0x164a>
 8006c20:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006c24:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006c28:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006c2c:	2e66      	cmp	r6, #102	; 0x66
 8006c2e:	f000 83eb 	beq.w	8007408 <_vfprintf_r+0x1840>
 8006c32:	2e46      	cmp	r6, #70	; 0x46
 8006c34:	f000 847e 	beq.w	8007534 <_vfprintf_r+0x196c>
 8006c38:	9b04      	ldr	r3, [sp, #16]
 8006c3a:	9803      	ldr	r0, [sp, #12]
 8006c3c:	2b45      	cmp	r3, #69	; 0x45
 8006c3e:	bf0c      	ite	eq
 8006c40:	f109 0501 	addeq.w	r5, r9, #1
 8006c44:	464d      	movne	r5, r9
 8006c46:	aa28      	add	r2, sp, #160	; 0xa0
 8006c48:	ab25      	add	r3, sp, #148	; 0x94
 8006c4a:	e9cd 3200 	strd	r3, r2, [sp]
 8006c4e:	2102      	movs	r1, #2
 8006c50:	ab24      	add	r3, sp, #144	; 0x90
 8006c52:	462a      	mov	r2, r5
 8006c54:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006c58:	f000 fe3e 	bl	80078d8 <_dtoa_r>
 8006c5c:	2e67      	cmp	r6, #103	; 0x67
 8006c5e:	4607      	mov	r7, r0
 8006c60:	f040 849c 	bne.w	800759c <_vfprintf_r+0x19d4>
 8006c64:	f018 0f01 	tst.w	r8, #1
 8006c68:	f040 83f9 	bne.w	800745e <_vfprintf_r+0x1896>
 8006c6c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006c6e:	4640      	mov	r0, r8
 8006c70:	1bdb      	subs	r3, r3, r7
 8006c72:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006c76:	9310      	str	r3, [sp, #64]	; 0x40
 8006c78:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006c7a:	9311      	str	r3, [sp, #68]	; 0x44
 8006c7c:	9b04      	ldr	r3, [sp, #16]
 8006c7e:	2b47      	cmp	r3, #71	; 0x47
 8006c80:	f000 81e7 	beq.w	8007052 <_vfprintf_r+0x148a>
 8006c84:	9b04      	ldr	r3, [sp, #16]
 8006c86:	2b46      	cmp	r3, #70	; 0x46
 8006c88:	f000 8300 	beq.w	800728c <_vfprintf_r+0x16c4>
 8006c8c:	9904      	ldr	r1, [sp, #16]
 8006c8e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006c90:	b2f2      	uxtb	r2, r6
 8006c92:	2941      	cmp	r1, #65	; 0x41
 8006c94:	bf08      	it	eq
 8006c96:	320f      	addeq	r2, #15
 8006c98:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8006c9c:	bf06      	itte	eq
 8006c9e:	b2d2      	uxtbeq	r2, r2
 8006ca0:	2101      	moveq	r1, #1
 8006ca2:	2100      	movne	r1, #0
 8006ca4:	2b00      	cmp	r3, #0
 8006ca6:	9324      	str	r3, [sp, #144]	; 0x90
 8006ca8:	bfb8      	it	lt
 8006caa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8006cac:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8006cb0:	bfba      	itte	lt
 8006cb2:	f1c3 0301 	rsblt	r3, r3, #1
 8006cb6:	222d      	movlt	r2, #45	; 0x2d
 8006cb8:	222b      	movge	r2, #43	; 0x2b
 8006cba:	2b09      	cmp	r3, #9
 8006cbc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006cc0:	f300 83f9 	bgt.w	80074b6 <_vfprintf_r+0x18ee>
 8006cc4:	2900      	cmp	r1, #0
 8006cc6:	f040 8487 	bne.w	80075d8 <_vfprintf_r+0x1a10>
 8006cca:	2230      	movs	r2, #48	; 0x30
 8006ccc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006cd0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8006cd4:	3330      	adds	r3, #48	; 0x30
 8006cd6:	7013      	strb	r3, [r2, #0]
 8006cd8:	1c53      	adds	r3, r2, #1
 8006cda:	aa26      	add	r2, sp, #152	; 0x98
 8006cdc:	1a9b      	subs	r3, r3, r2
 8006cde:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006ce0:	9319      	str	r3, [sp, #100]	; 0x64
 8006ce2:	2a01      	cmp	r2, #1
 8006ce4:	4413      	add	r3, r2
 8006ce6:	9309      	str	r3, [sp, #36]	; 0x24
 8006ce8:	f340 8442 	ble.w	8007570 <_vfprintf_r+0x19a8>
 8006cec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006cee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006cf0:	4413      	add	r3, r2
 8006cf2:	9309      	str	r3, [sp, #36]	; 0x24
 8006cf4:	2300      	movs	r3, #0
 8006cf6:	930f      	str	r3, [sp, #60]	; 0x3c
 8006cf8:	9314      	str	r3, [sp, #80]	; 0x50
 8006cfa:	9311      	str	r3, [sp, #68]	; 0x44
 8006cfc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006cfe:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8006d02:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006d06:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8006d0a:	9304      	str	r3, [sp, #16]
 8006d0c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006d0e:	2b00      	cmp	r3, #0
 8006d10:	f040 8275 	bne.w	80071fe <_vfprintf_r+0x1636>
 8006d14:	4699      	mov	r9, r3
 8006d16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006d1a:	f7ff b8e2 	b.w	8005ee2 <_vfprintf_r+0x31a>
 8006d1e:	bf00      	nop
 8006d20:	0800ab60 	.word	0x0800ab60
 8006d24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006d26:	49bd      	ldr	r1, [pc, #756]	; (800701c <_vfprintf_r+0x1454>)
 8006d28:	f8cb 1000 	str.w	r1, [fp]
 8006d2c:	3201      	adds	r2, #1
 8006d2e:	3401      	adds	r4, #1
 8006d30:	2101      	movs	r1, #1
 8006d32:	2a07      	cmp	r2, #7
 8006d34:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006d38:	f8cb 1004 	str.w	r1, [fp, #4]
 8006d3c:	dc60      	bgt.n	8006e00 <_vfprintf_r+0x1238>
 8006d3e:	f10b 0b08 	add.w	fp, fp, #8
 8006d42:	b92b      	cbnz	r3, 8006d50 <_vfprintf_r+0x1188>
 8006d44:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006d46:	b91a      	cbnz	r2, 8006d50 <_vfprintf_r+0x1188>
 8006d48:	f018 0f01 	tst.w	r8, #1
 8006d4c:	f43f a98d 	beq.w	800606a <_vfprintf_r+0x4a2>
 8006d50:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006d52:	9916      	ldr	r1, [sp, #88]	; 0x58
 8006d54:	f8cb 1000 	str.w	r1, [fp]
 8006d58:	9915      	ldr	r1, [sp, #84]	; 0x54
 8006d5a:	f8cb 1004 	str.w	r1, [fp, #4]
 8006d5e:	3201      	adds	r2, #1
 8006d60:	440c      	add	r4, r1
 8006d62:	2a07      	cmp	r2, #7
 8006d64:	942c      	str	r4, [sp, #176]	; 0xb0
 8006d66:	922b      	str	r2, [sp, #172]	; 0xac
 8006d68:	f300 8282 	bgt.w	8007270 <_vfprintf_r+0x16a8>
 8006d6c:	f10b 0b08 	add.w	fp, fp, #8
 8006d70:	2b00      	cmp	r3, #0
 8006d72:	f2c0 82e7 	blt.w	8007344 <_vfprintf_r+0x177c>
 8006d76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006d78:	3201      	adds	r2, #1
 8006d7a:	441c      	add	r4, r3
 8006d7c:	2a07      	cmp	r2, #7
 8006d7e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006d82:	e9cb 7300 	strd	r7, r3, [fp]
 8006d86:	f77f a96e 	ble.w	8006066 <_vfprintf_r+0x49e>
 8006d8a:	e4fe      	b.n	800678a <_vfprintf_r+0xbc2>
 8006d8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8006d8e:	9907      	ldr	r1, [sp, #28]
 8006d90:	9803      	ldr	r0, [sp, #12]
 8006d92:	f002 feb7 	bl	8009b04 <__sprint_r>
 8006d96:	2800      	cmp	r0, #0
 8006d98:	f47f ac8e 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006d9c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006da0:	f7ff bbf0 	b.w	8006584 <_vfprintf_r+0x9bc>
 8006da4:	9a05      	ldr	r2, [sp, #20]
 8006da6:	601a      	str	r2, [r3, #0]
 8006da8:	4657      	mov	r7, sl
 8006daa:	f7ff b9b3 	b.w	8006114 <_vfprintf_r+0x54c>
 8006dae:	8814      	ldrh	r4, [r2, #0]
 8006db0:	9108      	str	r1, [sp, #32]
 8006db2:	2500      	movs	r5, #0
 8006db4:	2201      	movs	r2, #1
 8006db6:	f7ff b9c8 	b.w	800614a <_vfprintf_r+0x582>
 8006dba:	8814      	ldrh	r4, [r2, #0]
 8006dbc:	9308      	str	r3, [sp, #32]
 8006dbe:	2500      	movs	r5, #0
 8006dc0:	f7ff ba14 	b.w	80061ec <_vfprintf_r+0x624>
 8006dc4:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006dc8:	9208      	str	r2, [sp, #32]
 8006dca:	17e5      	asrs	r5, r4, #31
 8006dcc:	4620      	mov	r0, r4
 8006dce:	4629      	mov	r1, r5
 8006dd0:	f7ff b855 	b.w	8005e7e <_vfprintf_r+0x2b6>
 8006dd4:	8814      	ldrh	r4, [r2, #0]
 8006dd6:	9308      	str	r3, [sp, #32]
 8006dd8:	2500      	movs	r5, #0
 8006dda:	f7ff b825 	b.w	8005e28 <_vfprintf_r+0x260>
 8006dde:	222d      	movs	r2, #45	; 0x2d
 8006de0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006de4:	f7ff baa2 	b.w	800632c <_vfprintf_r+0x764>
 8006de8:	aa2a      	add	r2, sp, #168	; 0xa8
 8006dea:	9907      	ldr	r1, [sp, #28]
 8006dec:	9803      	ldr	r0, [sp, #12]
 8006dee:	f002 fe89 	bl	8009b04 <__sprint_r>
 8006df2:	2800      	cmp	r0, #0
 8006df4:	f47f ac60 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006df8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006dfa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006dfe:	e534      	b.n	800686a <_vfprintf_r+0xca2>
 8006e00:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e02:	9907      	ldr	r1, [sp, #28]
 8006e04:	9803      	ldr	r0, [sp, #12]
 8006e06:	f002 fe7d 	bl	8009b04 <__sprint_r>
 8006e0a:	2800      	cmp	r0, #0
 8006e0c:	f47f ac54 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006e10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006e12:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006e14:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006e18:	e793      	b.n	8006d42 <_vfprintf_r+0x117a>
 8006e1a:	2330      	movs	r3, #48	; 0x30
 8006e1c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006e20:	2378      	movs	r3, #120	; 0x78
 8006e22:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8006e26:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006e2a:	f048 0402 	orr.w	r4, r8, #2
 8006e2e:	f300 82b0 	bgt.w	8007392 <_vfprintf_r+0x17ca>
 8006e32:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006e36:	930e      	str	r3, [sp, #56]	; 0x38
 8006e38:	f026 0320 	bic.w	r3, r6, #32
 8006e3c:	9304      	str	r3, [sp, #16]
 8006e3e:	2200      	movs	r2, #0
 8006e40:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006e42:	920a      	str	r2, [sp, #40]	; 0x28
 8006e44:	46a0      	mov	r8, r4
 8006e46:	af3d      	add	r7, sp, #244	; 0xf4
 8006e48:	2b00      	cmp	r3, #0
 8006e4a:	f2c0 81e3 	blt.w	8007214 <_vfprintf_r+0x164c>
 8006e4e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8006e52:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006e56:	2300      	movs	r3, #0
 8006e58:	930b      	str	r3, [sp, #44]	; 0x2c
 8006e5a:	2e61      	cmp	r6, #97	; 0x61
 8006e5c:	f000 8255 	beq.w	800730a <_vfprintf_r+0x1742>
 8006e60:	2e41      	cmp	r6, #65	; 0x41
 8006e62:	f47f aee3 	bne.w	8006c2c <_vfprintf_r+0x1064>
 8006e66:	a824      	add	r0, sp, #144	; 0x90
 8006e68:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006e6c:	f002 fd52 	bl	8009914 <frexp>
 8006e70:	2200      	movs	r2, #0
 8006e72:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006e76:	ec51 0b10 	vmov	r0, r1, d0
 8006e7a:	f7f9 fb7d 	bl	8000578 <__aeabi_dmul>
 8006e7e:	2200      	movs	r2, #0
 8006e80:	2300      	movs	r3, #0
 8006e82:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006e86:	f7f9 fddf 	bl	8000a48 <__aeabi_dcmpeq>
 8006e8a:	2800      	cmp	r0, #0
 8006e8c:	f040 8305 	bne.w	800749a <_vfprintf_r+0x18d2>
 8006e90:	4b63      	ldr	r3, [pc, #396]	; (8007020 <_vfprintf_r+0x1458>)
 8006e92:	9309      	str	r3, [sp, #36]	; 0x24
 8006e94:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8006e98:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8006e9c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006ea0:	9721      	str	r7, [sp, #132]	; 0x84
 8006ea2:	46b9      	mov	r9, r7
 8006ea4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8006ea8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8006eac:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006eb0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8006eb4:	e003      	b.n	8006ebe <_vfprintf_r+0x12f6>
 8006eb6:	f7f9 fdc7 	bl	8000a48 <__aeabi_dcmpeq>
 8006eba:	bb20      	cbnz	r0, 8006f06 <_vfprintf_r+0x133e>
 8006ebc:	46a9      	mov	r9, r5
 8006ebe:	2200      	movs	r2, #0
 8006ec0:	4b58      	ldr	r3, [pc, #352]	; (8007024 <_vfprintf_r+0x145c>)
 8006ec2:	4630      	mov	r0, r6
 8006ec4:	4639      	mov	r1, r7
 8006ec6:	f7f9 fb57 	bl	8000578 <__aeabi_dmul>
 8006eca:	460f      	mov	r7, r1
 8006ecc:	4606      	mov	r6, r0
 8006ece:	f7f9 fe03 	bl	8000ad8 <__aeabi_d2iz>
 8006ed2:	4680      	mov	r8, r0
 8006ed4:	f7f9 fae6 	bl	80004a4 <__aeabi_i2d>
 8006ed8:	4602      	mov	r2, r0
 8006eda:	460b      	mov	r3, r1
 8006edc:	4630      	mov	r0, r6
 8006ede:	4639      	mov	r1, r7
 8006ee0:	f7f9 f992 	bl	8000208 <__aeabi_dsub>
 8006ee4:	464d      	mov	r5, r9
 8006ee6:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006eea:	f805 cb01 	strb.w	ip, [r5], #1
 8006eee:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8006ef2:	46a3      	mov	fp, r4
 8006ef4:	4606      	mov	r6, r0
 8006ef6:	460f      	mov	r7, r1
 8006ef8:	f04f 0200 	mov.w	r2, #0
 8006efc:	f04f 0300 	mov.w	r3, #0
 8006f00:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8006f04:	d1d7      	bne.n	8006eb6 <_vfprintf_r+0x12ee>
 8006f06:	4630      	mov	r0, r6
 8006f08:	4639      	mov	r1, r7
 8006f0a:	2200      	movs	r2, #0
 8006f0c:	4b46      	ldr	r3, [pc, #280]	; (8007028 <_vfprintf_r+0x1460>)
 8006f0e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8006f12:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8006f14:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006f18:	4644      	mov	r4, r8
 8006f1a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006f1e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8006f22:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006f26:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006f2a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006f2c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006f30:	f7f9 fdb2 	bl	8000a98 <__aeabi_dcmpgt>
 8006f34:	2800      	cmp	r0, #0
 8006f36:	f040 8176 	bne.w	8007226 <_vfprintf_r+0x165e>
 8006f3a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006f3e:	2200      	movs	r2, #0
 8006f40:	4b39      	ldr	r3, [pc, #228]	; (8007028 <_vfprintf_r+0x1460>)
 8006f42:	f7f9 fd81 	bl	8000a48 <__aeabi_dcmpeq>
 8006f46:	b110      	cbz	r0, 8006f4e <_vfprintf_r+0x1386>
 8006f48:	07e2      	lsls	r2, r4, #31
 8006f4a:	f100 816c 	bmi.w	8007226 <_vfprintf_r+0x165e>
 8006f4e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006f50:	2b00      	cmp	r3, #0
 8006f52:	db07      	blt.n	8006f64 <_vfprintf_r+0x139c>
 8006f54:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006f56:	3301      	adds	r3, #1
 8006f58:	442b      	add	r3, r5
 8006f5a:	2230      	movs	r2, #48	; 0x30
 8006f5c:	f805 2b01 	strb.w	r2, [r5], #1
 8006f60:	42ab      	cmp	r3, r5
 8006f62:	d1fb      	bne.n	8006f5c <_vfprintf_r+0x1394>
 8006f64:	1beb      	subs	r3, r5, r7
 8006f66:	4640      	mov	r0, r8
 8006f68:	9310      	str	r3, [sp, #64]	; 0x40
 8006f6a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8006f6e:	e683      	b.n	8006c78 <_vfprintf_r+0x10b0>
 8006f70:	f8cd 9010 	str.w	r9, [sp, #16]
 8006f74:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006f78:	9408      	str	r4, [sp, #32]
 8006f7a:	4681      	mov	r9, r0
 8006f7c:	900f      	str	r0, [sp, #60]	; 0x3c
 8006f7e:	9014      	str	r0, [sp, #80]	; 0x50
 8006f80:	9011      	str	r0, [sp, #68]	; 0x44
 8006f82:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006f86:	f7fe bfac 	b.w	8005ee2 <_vfprintf_r+0x31a>
 8006f8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8006f8c:	9907      	ldr	r1, [sp, #28]
 8006f8e:	9803      	ldr	r0, [sp, #12]
 8006f90:	f002 fdb8 	bl	8009b04 <__sprint_r>
 8006f94:	2800      	cmp	r0, #0
 8006f96:	f47f ab8f 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006f9a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006f9c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006f9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006fa2:	e511      	b.n	80069c8 <_vfprintf_r+0xe00>
 8006fa4:	4252      	negs	r2, r2
 8006fa6:	9206      	str	r2, [sp, #24]
 8006fa8:	9308      	str	r3, [sp, #32]
 8006faa:	f7ff b96d 	b.w	8006288 <_vfprintf_r+0x6c0>
 8006fae:	4614      	mov	r4, r2
 8006fb0:	4632      	mov	r2, r6
 8006fb2:	461e      	mov	r6, r3
 8006fb4:	4613      	mov	r3, r2
 8006fb6:	462a      	mov	r2, r5
 8006fb8:	3201      	adds	r2, #1
 8006fba:	9209      	str	r2, [sp, #36]	; 0x24
 8006fbc:	f106 0208 	add.w	r2, r6, #8
 8006fc0:	e9c6 3900 	strd	r3, r9, [r6]
 8006fc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006fc6:	932b      	str	r3, [sp, #172]	; 0xac
 8006fc8:	444c      	add	r4, r9
 8006fca:	2b07      	cmp	r3, #7
 8006fcc:	942c      	str	r4, [sp, #176]	; 0xb0
 8006fce:	f73f acc3 	bgt.w	8006958 <_vfprintf_r+0xd90>
 8006fd2:	3301      	adds	r3, #1
 8006fd4:	9309      	str	r3, [sp, #36]	; 0x24
 8006fd6:	f102 0b08 	add.w	fp, r2, #8
 8006fda:	4616      	mov	r6, r2
 8006fdc:	f7ff bbca 	b.w	8006774 <_vfprintf_r+0xbac>
 8006fe0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006fe2:	9907      	ldr	r1, [sp, #28]
 8006fe4:	9803      	ldr	r0, [sp, #12]
 8006fe6:	f002 fd8d 	bl	8009b04 <__sprint_r>
 8006fea:	2800      	cmp	r0, #0
 8006fec:	f47f ab64 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8006ff0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006ff2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006ff6:	f7ff bade 	b.w	80065b6 <_vfprintf_r+0x9ee>
 8006ffa:	464b      	mov	r3, r9
 8006ffc:	2b06      	cmp	r3, #6
 8006ffe:	bf28      	it	cs
 8007000:	2306      	movcs	r3, #6
 8007002:	46b9      	mov	r9, r7
 8007004:	970f      	str	r7, [sp, #60]	; 0x3c
 8007006:	9714      	str	r7, [sp, #80]	; 0x50
 8007008:	9711      	str	r7, [sp, #68]	; 0x44
 800700a:	970a      	str	r7, [sp, #40]	; 0x28
 800700c:	463a      	mov	r2, r7
 800700e:	9304      	str	r3, [sp, #16]
 8007010:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8007014:	4f05      	ldr	r7, [pc, #20]	; (800702c <_vfprintf_r+0x1464>)
 8007016:	f7fe bf64 	b.w	8005ee2 <_vfprintf_r+0x31a>
 800701a:	bf00      	nop
 800701c:	0800ab4c 	.word	0x0800ab4c
 8007020:	0800ab30 	.word	0x0800ab30
 8007024:	40300000 	.word	0x40300000
 8007028:	3fe00000 	.word	0x3fe00000
 800702c:	0800ab44 	.word	0x0800ab44
 8007030:	460c      	mov	r4, r1
 8007032:	4639      	mov	r1, r7
 8007034:	465f      	mov	r7, fp
 8007036:	469b      	mov	fp, r3
 8007038:	460b      	mov	r3, r1
 800703a:	3201      	adds	r2, #1
 800703c:	442c      	add	r4, r5
 800703e:	2a07      	cmp	r2, #7
 8007040:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007044:	e9cb 3500 	strd	r3, r5, [fp]
 8007048:	f73f aca5 	bgt.w	8006996 <_vfprintf_r+0xdce>
 800704c:	f10b 0b08 	add.w	fp, fp, #8
 8007050:	e4ac      	b.n	80069ac <_vfprintf_r+0xde4>
 8007052:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007054:	1cda      	adds	r2, r3, #3
 8007056:	db02      	blt.n	800705e <_vfprintf_r+0x1496>
 8007058:	4599      	cmp	r9, r3
 800705a:	f280 80b5 	bge.w	80071c8 <_vfprintf_r+0x1600>
 800705e:	3e02      	subs	r6, #2
 8007060:	f026 0320 	bic.w	r3, r6, #32
 8007064:	9304      	str	r3, [sp, #16]
 8007066:	e611      	b.n	8006c8c <_vfprintf_r+0x10c4>
 8007068:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800706a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800706e:	465a      	mov	r2, fp
 8007070:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8007074:	18fb      	adds	r3, r7, r3
 8007076:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800707a:	970c      	str	r7, [sp, #48]	; 0x30
 800707c:	4eaf      	ldr	r6, [pc, #700]	; (800733c <_vfprintf_r+0x1774>)
 800707e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8007082:	9309      	str	r3, [sp, #36]	; 0x24
 8007084:	464f      	mov	r7, r9
 8007086:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800708a:	4621      	mov	r1, r4
 800708c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800708e:	2b00      	cmp	r3, #0
 8007090:	d05b      	beq.n	800714a <_vfprintf_r+0x1582>
 8007092:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007094:	2b00      	cmp	r3, #0
 8007096:	d154      	bne.n	8007142 <_vfprintf_r+0x157a>
 8007098:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800709a:	3b01      	subs	r3, #1
 800709c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80070a0:	9314      	str	r3, [sp, #80]	; 0x50
 80070a2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80070a4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80070a6:	6010      	str	r0, [r2, #0]
 80070a8:	3301      	adds	r3, #1
 80070aa:	4459      	add	r1, fp
 80070ac:	2b07      	cmp	r3, #7
 80070ae:	912c      	str	r1, [sp, #176]	; 0xb0
 80070b0:	f8c2 b004 	str.w	fp, [r2, #4]
 80070b4:	932b      	str	r3, [sp, #172]	; 0xac
 80070b6:	dc68      	bgt.n	800718a <_vfprintf_r+0x15c2>
 80070b8:	3208      	adds	r2, #8
 80070ba:	9809      	ldr	r0, [sp, #36]	; 0x24
 80070bc:	f898 3000 	ldrb.w	r3, [r8]
 80070c0:	1bc5      	subs	r5, r0, r7
 80070c2:	429d      	cmp	r5, r3
 80070c4:	bfa8      	it	ge
 80070c6:	461d      	movge	r5, r3
 80070c8:	2d00      	cmp	r5, #0
 80070ca:	dd0b      	ble.n	80070e4 <_vfprintf_r+0x151c>
 80070cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80070ce:	6017      	str	r7, [r2, #0]
 80070d0:	3301      	adds	r3, #1
 80070d2:	4429      	add	r1, r5
 80070d4:	2b07      	cmp	r3, #7
 80070d6:	912c      	str	r1, [sp, #176]	; 0xb0
 80070d8:	6055      	str	r5, [r2, #4]
 80070da:	932b      	str	r3, [sp, #172]	; 0xac
 80070dc:	dc5e      	bgt.n	800719c <_vfprintf_r+0x15d4>
 80070de:	f898 3000 	ldrb.w	r3, [r8]
 80070e2:	3208      	adds	r2, #8
 80070e4:	2d00      	cmp	r5, #0
 80070e6:	bfac      	ite	ge
 80070e8:	1b5d      	subge	r5, r3, r5
 80070ea:	461d      	movlt	r5, r3
 80070ec:	2d00      	cmp	r5, #0
 80070ee:	dd26      	ble.n	800713e <_vfprintf_r+0x1576>
 80070f0:	2d10      	cmp	r5, #16
 80070f2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80070f4:	dd3c      	ble.n	8007170 <_vfprintf_r+0x15a8>
 80070f6:	2410      	movs	r4, #16
 80070f8:	e003      	b.n	8007102 <_vfprintf_r+0x153a>
 80070fa:	3208      	adds	r2, #8
 80070fc:	3d10      	subs	r5, #16
 80070fe:	2d10      	cmp	r5, #16
 8007100:	dd36      	ble.n	8007170 <_vfprintf_r+0x15a8>
 8007102:	3001      	adds	r0, #1
 8007104:	3110      	adds	r1, #16
 8007106:	2807      	cmp	r0, #7
 8007108:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800710c:	e9c2 6400 	strd	r6, r4, [r2]
 8007110:	ddf3      	ble.n	80070fa <_vfprintf_r+0x1532>
 8007112:	aa2a      	add	r2, sp, #168	; 0xa8
 8007114:	4651      	mov	r1, sl
 8007116:	4648      	mov	r0, r9
 8007118:	f002 fcf4 	bl	8009b04 <__sprint_r>
 800711c:	2800      	cmp	r0, #0
 800711e:	d150      	bne.n	80071c2 <_vfprintf_r+0x15fa>
 8007120:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8007124:	aa2d      	add	r2, sp, #180	; 0xb4
 8007126:	e7e9      	b.n	80070fc <_vfprintf_r+0x1534>
 8007128:	aa2a      	add	r2, sp, #168	; 0xa8
 800712a:	4651      	mov	r1, sl
 800712c:	4648      	mov	r0, r9
 800712e:	f002 fce9 	bl	8009b04 <__sprint_r>
 8007132:	2800      	cmp	r0, #0
 8007134:	d145      	bne.n	80071c2 <_vfprintf_r+0x15fa>
 8007136:	f898 3000 	ldrb.w	r3, [r8]
 800713a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800713c:	aa2d      	add	r2, sp, #180	; 0xb4
 800713e:	441f      	add	r7, r3
 8007140:	e7a4      	b.n	800708c <_vfprintf_r+0x14c4>
 8007142:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007144:	3b01      	subs	r3, #1
 8007146:	930f      	str	r3, [sp, #60]	; 0x3c
 8007148:	e7ab      	b.n	80070a2 <_vfprintf_r+0x14da>
 800714a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800714c:	2b00      	cmp	r3, #0
 800714e:	d1f8      	bne.n	8007142 <_vfprintf_r+0x157a>
 8007150:	46b9      	mov	r9, r7
 8007152:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007154:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007156:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800715a:	18fb      	adds	r3, r7, r3
 800715c:	4599      	cmp	r9, r3
 800715e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8007162:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8007166:	4693      	mov	fp, r2
 8007168:	460c      	mov	r4, r1
 800716a:	bf28      	it	cs
 800716c:	4699      	movcs	r9, r3
 800716e:	e424      	b.n	80069ba <_vfprintf_r+0xdf2>
 8007170:	3001      	adds	r0, #1
 8007172:	4429      	add	r1, r5
 8007174:	2807      	cmp	r0, #7
 8007176:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800717a:	e9c2 6500 	strd	r6, r5, [r2]
 800717e:	dcd3      	bgt.n	8007128 <_vfprintf_r+0x1560>
 8007180:	f898 3000 	ldrb.w	r3, [r8]
 8007184:	3208      	adds	r2, #8
 8007186:	441f      	add	r7, r3
 8007188:	e780      	b.n	800708c <_vfprintf_r+0x14c4>
 800718a:	aa2a      	add	r2, sp, #168	; 0xa8
 800718c:	4651      	mov	r1, sl
 800718e:	4648      	mov	r0, r9
 8007190:	f002 fcb8 	bl	8009b04 <__sprint_r>
 8007194:	b9a8      	cbnz	r0, 80071c2 <_vfprintf_r+0x15fa>
 8007196:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8007198:	aa2d      	add	r2, sp, #180	; 0xb4
 800719a:	e78e      	b.n	80070ba <_vfprintf_r+0x14f2>
 800719c:	aa2a      	add	r2, sp, #168	; 0xa8
 800719e:	4651      	mov	r1, sl
 80071a0:	4648      	mov	r0, r9
 80071a2:	f002 fcaf 	bl	8009b04 <__sprint_r>
 80071a6:	b960      	cbnz	r0, 80071c2 <_vfprintf_r+0x15fa>
 80071a8:	f898 3000 	ldrb.w	r3, [r8]
 80071ac:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80071ae:	aa2d      	add	r2, sp, #180	; 0xb4
 80071b0:	e798      	b.n	80070e4 <_vfprintf_r+0x151c>
 80071b2:	4638      	mov	r0, r7
 80071b4:	f7f9 ff24 	bl	8001000 <strlen>
 80071b8:	46a9      	mov	r9, r5
 80071ba:	4603      	mov	r3, r0
 80071bc:	9009      	str	r0, [sp, #36]	; 0x24
 80071be:	f7ff b8f4 	b.w	80063aa <_vfprintf_r+0x7e2>
 80071c2:	46d1      	mov	r9, sl
 80071c4:	f7ff ba7a 	b.w	80066bc <_vfprintf_r+0xaf4>
 80071c8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80071ca:	4619      	mov	r1, r3
 80071cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80071ce:	4299      	cmp	r1, r3
 80071d0:	f300 8082 	bgt.w	80072d8 <_vfprintf_r+0x1710>
 80071d4:	07c4      	lsls	r4, r0, #31
 80071d6:	f140 816b 	bpl.w	80074b0 <_vfprintf_r+0x18e8>
 80071da:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80071dc:	4413      	add	r3, r2
 80071de:	9309      	str	r3, [sp, #36]	; 0x24
 80071e0:	0541      	lsls	r1, r0, #21
 80071e2:	d503      	bpl.n	80071ec <_vfprintf_r+0x1624>
 80071e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80071e6:	2b00      	cmp	r3, #0
 80071e8:	f300 80e6 	bgt.w	80073b8 <_vfprintf_r+0x17f0>
 80071ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80071ee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80071f2:	9304      	str	r3, [sp, #16]
 80071f4:	2667      	movs	r6, #103	; 0x67
 80071f6:	2300      	movs	r3, #0
 80071f8:	930f      	str	r3, [sp, #60]	; 0x3c
 80071fa:	9314      	str	r3, [sp, #80]	; 0x50
 80071fc:	e586      	b.n	8006d0c <_vfprintf_r+0x1144>
 80071fe:	222d      	movs	r2, #45	; 0x2d
 8007200:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8007204:	f04f 0900 	mov.w	r9, #0
 8007208:	f7fe be6c 	b.w	8005ee4 <_vfprintf_r+0x31c>
 800720c:	46a1      	mov	r9, r4
 800720e:	f7ff ba55 	b.w	80066bc <_vfprintf_r+0xaf4>
 8007212:	900a      	str	r0, [sp, #40]	; 0x28
 8007214:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8007218:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800721c:	931f      	str	r3, [sp, #124]	; 0x7c
 800721e:	232d      	movs	r3, #45	; 0x2d
 8007220:	911e      	str	r1, [sp, #120]	; 0x78
 8007222:	930b      	str	r3, [sp, #44]	; 0x2c
 8007224:	e619      	b.n	8006e5a <_vfprintf_r+0x1292>
 8007226:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007228:	9328      	str	r3, [sp, #160]	; 0xa0
 800722a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800722c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8007230:	7bd9      	ldrb	r1, [r3, #15]
 8007232:	4291      	cmp	r1, r2
 8007234:	462b      	mov	r3, r5
 8007236:	d109      	bne.n	800724c <_vfprintf_r+0x1684>
 8007238:	2030      	movs	r0, #48	; 0x30
 800723a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800723e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007240:	1e5a      	subs	r2, r3, #1
 8007242:	9228      	str	r2, [sp, #160]	; 0xa0
 8007244:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8007248:	4291      	cmp	r1, r2
 800724a:	d0f6      	beq.n	800723a <_vfprintf_r+0x1672>
 800724c:	2a39      	cmp	r2, #57	; 0x39
 800724e:	bf0b      	itete	eq
 8007250:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8007252:	3201      	addne	r2, #1
 8007254:	7a92      	ldrbeq	r2, [r2, #10]
 8007256:	b2d2      	uxtbne	r2, r2
 8007258:	f803 2c01 	strb.w	r2, [r3, #-1]
 800725c:	e682      	b.n	8006f64 <_vfprintf_r+0x139c>
 800725e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8007262:	f43f ad9f 	beq.w	8006da4 <_vfprintf_r+0x11dc>
 8007266:	9a05      	ldr	r2, [sp, #20]
 8007268:	701a      	strb	r2, [r3, #0]
 800726a:	4657      	mov	r7, sl
 800726c:	f7fe bf52 	b.w	8006114 <_vfprintf_r+0x54c>
 8007270:	aa2a      	add	r2, sp, #168	; 0xa8
 8007272:	9907      	ldr	r1, [sp, #28]
 8007274:	9803      	ldr	r0, [sp, #12]
 8007276:	f002 fc45 	bl	8009b04 <__sprint_r>
 800727a:	2800      	cmp	r0, #0
 800727c:	f47f aa1c 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8007280:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007282:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8007286:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800728a:	e571      	b.n	8006d70 <_vfprintf_r+0x11a8>
 800728c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800728e:	2b00      	cmp	r3, #0
 8007290:	f340 8164 	ble.w	800755c <_vfprintf_r+0x1994>
 8007294:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007296:	f1b9 0f00 	cmp.w	r9, #0
 800729a:	f040 8103 	bne.w	80074a4 <_vfprintf_r+0x18dc>
 800729e:	07c6      	lsls	r6, r0, #31
 80072a0:	f100 8100 	bmi.w	80074a4 <_vfprintf_r+0x18dc>
 80072a4:	9309      	str	r3, [sp, #36]	; 0x24
 80072a6:	2666      	movs	r6, #102	; 0x66
 80072a8:	0543      	lsls	r3, r0, #21
 80072aa:	f100 8086 	bmi.w	80073ba <_vfprintf_r+0x17f2>
 80072ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80072b0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80072b4:	9304      	str	r3, [sp, #16]
 80072b6:	e79e      	b.n	80071f6 <_vfprintf_r+0x162e>
 80072b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80072ba:	9907      	ldr	r1, [sp, #28]
 80072bc:	9803      	ldr	r0, [sp, #12]
 80072be:	f002 fc21 	bl	8009b04 <__sprint_r>
 80072c2:	2800      	cmp	r0, #0
 80072c4:	f47f a9f8 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80072c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80072ca:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80072cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80072ce:	1ad3      	subs	r3, r2, r3
 80072d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80072d4:	f7ff bb90 	b.w	80069f8 <_vfprintf_r+0xe30>
 80072d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80072da:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80072dc:	4413      	add	r3, r2
 80072de:	9309      	str	r3, [sp, #36]	; 0x24
 80072e0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80072e2:	2b00      	cmp	r3, #0
 80072e4:	f340 8149 	ble.w	800757a <_vfprintf_r+0x19b2>
 80072e8:	2667      	movs	r6, #103	; 0x67
 80072ea:	e7dd      	b.n	80072a8 <_vfprintf_r+0x16e0>
 80072ec:	2330      	movs	r3, #48	; 0x30
 80072ee:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80072f2:	2358      	movs	r3, #88	; 0x58
 80072f4:	e595      	b.n	8006e22 <_vfprintf_r+0x125a>
 80072f6:	9803      	ldr	r0, [sp, #12]
 80072f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80072fa:	4649      	mov	r1, r9
 80072fc:	f002 fc02 	bl	8009b04 <__sprint_r>
 8007300:	2800      	cmp	r0, #0
 8007302:	f47f a9e0 	bne.w	80066c6 <_vfprintf_r+0xafe>
 8007306:	f7fe bf0f 	b.w	8006128 <_vfprintf_r+0x560>
 800730a:	a824      	add	r0, sp, #144	; 0x90
 800730c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007310:	f002 fb00 	bl	8009914 <frexp>
 8007314:	2200      	movs	r2, #0
 8007316:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800731a:	ec51 0b10 	vmov	r0, r1, d0
 800731e:	f7f9 f92b 	bl	8000578 <__aeabi_dmul>
 8007322:	2200      	movs	r2, #0
 8007324:	2300      	movs	r3, #0
 8007326:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800732a:	f7f9 fb8d 	bl	8000a48 <__aeabi_dcmpeq>
 800732e:	b108      	cbz	r0, 8007334 <_vfprintf_r+0x176c>
 8007330:	2301      	movs	r3, #1
 8007332:	9324      	str	r3, [sp, #144]	; 0x90
 8007334:	4b02      	ldr	r3, [pc, #8]	; (8007340 <_vfprintf_r+0x1778>)
 8007336:	9309      	str	r3, [sp, #36]	; 0x24
 8007338:	e5ac      	b.n	8006e94 <_vfprintf_r+0x12cc>
 800733a:	bf00      	nop
 800733c:	0800ab60 	.word	0x0800ab60
 8007340:	0800ab1c 	.word	0x0800ab1c
 8007344:	425d      	negs	r5, r3
 8007346:	3310      	adds	r3, #16
 8007348:	4bb9      	ldr	r3, [pc, #740]	; (8007630 <_vfprintf_r+0x1a68>)
 800734a:	f280 8097 	bge.w	800747c <_vfprintf_r+0x18b4>
 800734e:	4619      	mov	r1, r3
 8007350:	2610      	movs	r6, #16
 8007352:	4623      	mov	r3, r4
 8007354:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8007358:	460c      	mov	r4, r1
 800735a:	e005      	b.n	8007368 <_vfprintf_r+0x17a0>
 800735c:	f10b 0b08 	add.w	fp, fp, #8
 8007360:	3d10      	subs	r5, #16
 8007362:	2d10      	cmp	r5, #16
 8007364:	f340 8087 	ble.w	8007476 <_vfprintf_r+0x18ae>
 8007368:	3201      	adds	r2, #1
 800736a:	3310      	adds	r3, #16
 800736c:	2a07      	cmp	r2, #7
 800736e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8007372:	e9cb 4600 	strd	r4, r6, [fp]
 8007376:	ddf1      	ble.n	800735c <_vfprintf_r+0x1794>
 8007378:	aa2a      	add	r2, sp, #168	; 0xa8
 800737a:	9907      	ldr	r1, [sp, #28]
 800737c:	4648      	mov	r0, r9
 800737e:	f002 fbc1 	bl	8009b04 <__sprint_r>
 8007382:	2800      	cmp	r0, #0
 8007384:	f47f a998 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 8007388:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800738c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007390:	e7e6      	b.n	8007360 <_vfprintf_r+0x1798>
 8007392:	f109 0101 	add.w	r1, r9, #1
 8007396:	9803      	ldr	r0, [sp, #12]
 8007398:	f001 fd02 	bl	8008da0 <_malloc_r>
 800739c:	4607      	mov	r7, r0
 800739e:	2800      	cmp	r0, #0
 80073a0:	f000 813b 	beq.w	800761a <_vfprintf_r+0x1a52>
 80073a4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80073a8:	930e      	str	r3, [sp, #56]	; 0x38
 80073aa:	f026 0320 	bic.w	r3, r6, #32
 80073ae:	9304      	str	r3, [sp, #16]
 80073b0:	46a0      	mov	r8, r4
 80073b2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80073b4:	900a      	str	r0, [sp, #40]	; 0x28
 80073b6:	e547      	b.n	8006e48 <_vfprintf_r+0x1280>
 80073b8:	2667      	movs	r6, #103	; 0x67
 80073ba:	981a      	ldr	r0, [sp, #104]	; 0x68
 80073bc:	2200      	movs	r2, #0
 80073be:	920f      	str	r2, [sp, #60]	; 0x3c
 80073c0:	9214      	str	r2, [sp, #80]	; 0x50
 80073c2:	7803      	ldrb	r3, [r0, #0]
 80073c4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80073c6:	2bff      	cmp	r3, #255	; 0xff
 80073c8:	d00c      	beq.n	80073e4 <_vfprintf_r+0x181c>
 80073ca:	4293      	cmp	r3, r2
 80073cc:	da0a      	bge.n	80073e4 <_vfprintf_r+0x181c>
 80073ce:	7841      	ldrb	r1, [r0, #1]
 80073d0:	1ad2      	subs	r2, r2, r3
 80073d2:	b1a9      	cbz	r1, 8007400 <_vfprintf_r+0x1838>
 80073d4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80073d6:	3301      	adds	r3, #1
 80073d8:	9314      	str	r3, [sp, #80]	; 0x50
 80073da:	460b      	mov	r3, r1
 80073dc:	2bff      	cmp	r3, #255	; 0xff
 80073de:	f100 0001 	add.w	r0, r0, #1
 80073e2:	d1f2      	bne.n	80073ca <_vfprintf_r+0x1802>
 80073e4:	9211      	str	r2, [sp, #68]	; 0x44
 80073e6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80073e8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80073ea:	9909      	ldr	r1, [sp, #36]	; 0x24
 80073ec:	901a      	str	r0, [sp, #104]	; 0x68
 80073ee:	4413      	add	r3, r2
 80073f0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80073f2:	fb02 1303 	mla	r3, r2, r3, r1
 80073f6:	9309      	str	r3, [sp, #36]	; 0x24
 80073f8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80073fc:	9304      	str	r3, [sp, #16]
 80073fe:	e485      	b.n	8006d0c <_vfprintf_r+0x1144>
 8007400:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8007402:	3101      	adds	r1, #1
 8007404:	910f      	str	r1, [sp, #60]	; 0x3c
 8007406:	e7de      	b.n	80073c6 <_vfprintf_r+0x17fe>
 8007408:	aa28      	add	r2, sp, #160	; 0xa0
 800740a:	ab25      	add	r3, sp, #148	; 0x94
 800740c:	e9cd 3200 	strd	r3, r2, [sp]
 8007410:	2103      	movs	r1, #3
 8007412:	ab24      	add	r3, sp, #144	; 0x90
 8007414:	464a      	mov	r2, r9
 8007416:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800741a:	9803      	ldr	r0, [sp, #12]
 800741c:	f000 fa5c 	bl	80078d8 <_dtoa_r>
 8007420:	464d      	mov	r5, r9
 8007422:	4607      	mov	r7, r0
 8007424:	eb00 0409 	add.w	r4, r0, r9
 8007428:	783b      	ldrb	r3, [r7, #0]
 800742a:	2b30      	cmp	r3, #48	; 0x30
 800742c:	f000 80be 	beq.w	80075ac <_vfprintf_r+0x19e4>
 8007430:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8007432:	442c      	add	r4, r5
 8007434:	2200      	movs	r2, #0
 8007436:	2300      	movs	r3, #0
 8007438:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800743c:	f7f9 fb04 	bl	8000a48 <__aeabi_dcmpeq>
 8007440:	b108      	cbz	r0, 8007446 <_vfprintf_r+0x187e>
 8007442:	4623      	mov	r3, r4
 8007444:	e413      	b.n	8006c6e <_vfprintf_r+0x10a6>
 8007446:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007448:	42a3      	cmp	r3, r4
 800744a:	f4bf ac10 	bcs.w	8006c6e <_vfprintf_r+0x10a6>
 800744e:	2130      	movs	r1, #48	; 0x30
 8007450:	1c5a      	adds	r2, r3, #1
 8007452:	9228      	str	r2, [sp, #160]	; 0xa0
 8007454:	7019      	strb	r1, [r3, #0]
 8007456:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007458:	429c      	cmp	r4, r3
 800745a:	d8f9      	bhi.n	8007450 <_vfprintf_r+0x1888>
 800745c:	e407      	b.n	8006c6e <_vfprintf_r+0x10a6>
 800745e:	197c      	adds	r4, r7, r5
 8007460:	e7e8      	b.n	8007434 <_vfprintf_r+0x186c>
 8007462:	f1b9 0f00 	cmp.w	r9, #0
 8007466:	f000 8092 	beq.w	800758e <_vfprintf_r+0x19c6>
 800746a:	900a      	str	r0, [sp, #40]	; 0x28
 800746c:	e4ec      	b.n	8006e48 <_vfprintf_r+0x1280>
 800746e:	900a      	str	r0, [sp, #40]	; 0x28
 8007470:	f04f 0906 	mov.w	r9, #6
 8007474:	e4e8      	b.n	8006e48 <_vfprintf_r+0x1280>
 8007476:	4621      	mov	r1, r4
 8007478:	461c      	mov	r4, r3
 800747a:	460b      	mov	r3, r1
 800747c:	3201      	adds	r2, #1
 800747e:	442c      	add	r4, r5
 8007480:	2a07      	cmp	r2, #7
 8007482:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007486:	e9cb 3500 	strd	r3, r5, [fp]
 800748a:	f300 80a9 	bgt.w	80075e0 <_vfprintf_r+0x1a18>
 800748e:	f10b 0b08 	add.w	fp, fp, #8
 8007492:	e470      	b.n	8006d76 <_vfprintf_r+0x11ae>
 8007494:	469a      	mov	sl, r3
 8007496:	f7ff bb37 	b.w	8006b08 <_vfprintf_r+0xf40>
 800749a:	2301      	movs	r3, #1
 800749c:	9324      	str	r3, [sp, #144]	; 0x90
 800749e:	4b65      	ldr	r3, [pc, #404]	; (8007634 <_vfprintf_r+0x1a6c>)
 80074a0:	9309      	str	r3, [sp, #36]	; 0x24
 80074a2:	e4f7      	b.n	8006e94 <_vfprintf_r+0x12cc>
 80074a4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80074a6:	4413      	add	r3, r2
 80074a8:	444b      	add	r3, r9
 80074aa:	9309      	str	r3, [sp, #36]	; 0x24
 80074ac:	2666      	movs	r6, #102	; 0x66
 80074ae:	e6fb      	b.n	80072a8 <_vfprintf_r+0x16e0>
 80074b0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80074b2:	9309      	str	r3, [sp, #36]	; 0x24
 80074b4:	e694      	b.n	80071e0 <_vfprintf_r+0x1618>
 80074b6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80074ba:	4664      	mov	r4, ip
 80074bc:	4d5e      	ldr	r5, [pc, #376]	; (8007638 <_vfprintf_r+0x1a70>)
 80074be:	e000      	b.n	80074c2 <_vfprintf_r+0x18fa>
 80074c0:	4614      	mov	r4, r2
 80074c2:	fba5 1203 	umull	r1, r2, r5, r3
 80074c6:	08d2      	lsrs	r2, r2, #3
 80074c8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80074cc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80074d0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80074d4:	4613      	mov	r3, r2
 80074d6:	2b09      	cmp	r3, #9
 80074d8:	f804 1c01 	strb.w	r1, [r4, #-1]
 80074dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80074e0:	dcee      	bgt.n	80074c0 <_vfprintf_r+0x18f8>
 80074e2:	3330      	adds	r3, #48	; 0x30
 80074e4:	3c02      	subs	r4, #2
 80074e6:	b2db      	uxtb	r3, r3
 80074e8:	45a4      	cmp	ip, r4
 80074ea:	f802 3c01 	strb.w	r3, [r2, #-1]
 80074ee:	f240 8090 	bls.w	8007612 <_vfprintf_r+0x1a4a>
 80074f2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80074f6:	4611      	mov	r1, r2
 80074f8:	e001      	b.n	80074fe <_vfprintf_r+0x1936>
 80074fa:	f811 3b01 	ldrb.w	r3, [r1], #1
 80074fe:	f804 3b01 	strb.w	r3, [r4], #1
 8007502:	458c      	cmp	ip, r1
 8007504:	d1f9      	bne.n	80074fa <_vfprintf_r+0x1932>
 8007506:	ab2a      	add	r3, sp, #168	; 0xa8
 8007508:	1a9b      	subs	r3, r3, r2
 800750a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800750e:	4413      	add	r3, r2
 8007510:	f7ff bbe3 	b.w	8006cda <_vfprintf_r+0x1112>
 8007514:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007516:	4f49      	ldr	r7, [pc, #292]	; (800763c <_vfprintf_r+0x1a74>)
 8007518:	2b00      	cmp	r3, #0
 800751a:	bfb6      	itet	lt
 800751c:	222d      	movlt	r2, #45	; 0x2d
 800751e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8007522:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8007526:	4b46      	ldr	r3, [pc, #280]	; (8007640 <_vfprintf_r+0x1a78>)
 8007528:	f7fe bf02 	b.w	8006330 <_vfprintf_r+0x768>
 800752c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007530:	f7ff b8c9 	b.w	80066c6 <_vfprintf_r+0xafe>
 8007534:	aa28      	add	r2, sp, #160	; 0xa0
 8007536:	ab25      	add	r3, sp, #148	; 0x94
 8007538:	e9cd 3200 	strd	r3, r2, [sp]
 800753c:	2103      	movs	r1, #3
 800753e:	ab24      	add	r3, sp, #144	; 0x90
 8007540:	464a      	mov	r2, r9
 8007542:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007546:	9803      	ldr	r0, [sp, #12]
 8007548:	f000 f9c6 	bl	80078d8 <_dtoa_r>
 800754c:	464d      	mov	r5, r9
 800754e:	4607      	mov	r7, r0
 8007550:	2e46      	cmp	r6, #70	; 0x46
 8007552:	eb07 0405 	add.w	r4, r7, r5
 8007556:	f43f af67 	beq.w	8007428 <_vfprintf_r+0x1860>
 800755a:	e76b      	b.n	8007434 <_vfprintf_r+0x186c>
 800755c:	f1b9 0f00 	cmp.w	r9, #0
 8007560:	d131      	bne.n	80075c6 <_vfprintf_r+0x19fe>
 8007562:	07c5      	lsls	r5, r0, #31
 8007564:	d42f      	bmi.n	80075c6 <_vfprintf_r+0x19fe>
 8007566:	2301      	movs	r3, #1
 8007568:	9304      	str	r3, [sp, #16]
 800756a:	9309      	str	r3, [sp, #36]	; 0x24
 800756c:	2666      	movs	r6, #102	; 0x66
 800756e:	e642      	b.n	80071f6 <_vfprintf_r+0x162e>
 8007570:	07c3      	lsls	r3, r0, #31
 8007572:	f57f abbf 	bpl.w	8006cf4 <_vfprintf_r+0x112c>
 8007576:	f7ff bbb9 	b.w	8006cec <_vfprintf_r+0x1124>
 800757a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800757c:	f1c3 0301 	rsb	r3, r3, #1
 8007580:	441a      	add	r2, r3
 8007582:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8007586:	9209      	str	r2, [sp, #36]	; 0x24
 8007588:	9304      	str	r3, [sp, #16]
 800758a:	2667      	movs	r6, #103	; 0x67
 800758c:	e633      	b.n	80071f6 <_vfprintf_r+0x162e>
 800758e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8007592:	f04f 0901 	mov.w	r9, #1
 8007596:	e457      	b.n	8006e48 <_vfprintf_r+0x1280>
 8007598:	465a      	mov	r2, fp
 800759a:	e511      	b.n	8006fc0 <_vfprintf_r+0x13f8>
 800759c:	2e47      	cmp	r6, #71	; 0x47
 800759e:	f47f af5e 	bne.w	800745e <_vfprintf_r+0x1896>
 80075a2:	f018 0f01 	tst.w	r8, #1
 80075a6:	f43f ab61 	beq.w	8006c6c <_vfprintf_r+0x10a4>
 80075aa:	e7d1      	b.n	8007550 <_vfprintf_r+0x1988>
 80075ac:	2200      	movs	r2, #0
 80075ae:	2300      	movs	r3, #0
 80075b0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80075b4:	f7f9 fa48 	bl	8000a48 <__aeabi_dcmpeq>
 80075b8:	2800      	cmp	r0, #0
 80075ba:	f47f af39 	bne.w	8007430 <_vfprintf_r+0x1868>
 80075be:	f1c5 0501 	rsb	r5, r5, #1
 80075c2:	9524      	str	r5, [sp, #144]	; 0x90
 80075c4:	e735      	b.n	8007432 <_vfprintf_r+0x186a>
 80075c6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80075c8:	3301      	adds	r3, #1
 80075ca:	444b      	add	r3, r9
 80075cc:	9309      	str	r3, [sp, #36]	; 0x24
 80075ce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80075d2:	9304      	str	r3, [sp, #16]
 80075d4:	2666      	movs	r6, #102	; 0x66
 80075d6:	e60e      	b.n	80071f6 <_vfprintf_r+0x162e>
 80075d8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80075dc:	f7ff bb7a 	b.w	8006cd4 <_vfprintf_r+0x110c>
 80075e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80075e2:	9907      	ldr	r1, [sp, #28]
 80075e4:	9803      	ldr	r0, [sp, #12]
 80075e6:	f002 fa8d 	bl	8009b04 <__sprint_r>
 80075ea:	2800      	cmp	r0, #0
 80075ec:	f47f a864 	bne.w	80066b8 <_vfprintf_r+0xaf0>
 80075f0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80075f4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80075f8:	f7ff bbbd 	b.w	8006d76 <_vfprintf_r+0x11ae>
 80075fc:	9908      	ldr	r1, [sp, #32]
 80075fe:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8007602:	680b      	ldr	r3, [r1, #0]
 8007604:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8007608:	1d0b      	adds	r3, r1, #4
 800760a:	4692      	mov	sl, r2
 800760c:	9308      	str	r3, [sp, #32]
 800760e:	f7fe bb59 	b.w	8005cc4 <_vfprintf_r+0xfc>
 8007612:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8007616:	f7ff bb60 	b.w	8006cda <_vfprintf_r+0x1112>
 800761a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800761e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8007622:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007626:	f8a9 300c 	strh.w	r3, [r9, #12]
 800762a:	f7ff b84c 	b.w	80066c6 <_vfprintf_r+0xafe>
 800762e:	bf00      	nop
 8007630:	0800ab60 	.word	0x0800ab60
 8007634:	0800ab30 	.word	0x0800ab30
 8007638:	cccccccd 	.word	0xcccccccd
 800763c:	0800ab18 	.word	0x0800ab18
 8007640:	0800ab14 	.word	0x0800ab14

08007644 <__sbprintf>:
 8007644:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007648:	460c      	mov	r4, r1
 800764a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800764e:	8989      	ldrh	r1, [r1, #12]
 8007650:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007652:	89e5      	ldrh	r5, [r4, #14]
 8007654:	9619      	str	r6, [sp, #100]	; 0x64
 8007656:	f021 0102 	bic.w	r1, r1, #2
 800765a:	4606      	mov	r6, r0
 800765c:	69e0      	ldr	r0, [r4, #28]
 800765e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8007662:	4617      	mov	r7, r2
 8007664:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8007668:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800766a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800766e:	4698      	mov	r8, r3
 8007670:	ad1a      	add	r5, sp, #104	; 0x68
 8007672:	2300      	movs	r3, #0
 8007674:	9007      	str	r0, [sp, #28]
 8007676:	a816      	add	r0, sp, #88	; 0x58
 8007678:	9209      	str	r2, [sp, #36]	; 0x24
 800767a:	9306      	str	r3, [sp, #24]
 800767c:	9500      	str	r5, [sp, #0]
 800767e:	9504      	str	r5, [sp, #16]
 8007680:	9102      	str	r1, [sp, #8]
 8007682:	9105      	str	r1, [sp, #20]
 8007684:	f001 fb0c 	bl	8008ca0 <__retarget_lock_init_recursive>
 8007688:	4643      	mov	r3, r8
 800768a:	463a      	mov	r2, r7
 800768c:	4669      	mov	r1, sp
 800768e:	4630      	mov	r0, r6
 8007690:	f7fe fa9a 	bl	8005bc8 <_vfprintf_r>
 8007694:	1e05      	subs	r5, r0, #0
 8007696:	db07      	blt.n	80076a8 <__sbprintf+0x64>
 8007698:	4630      	mov	r0, r6
 800769a:	4669      	mov	r1, sp
 800769c:	f001 f8d6 	bl	800884c <_fflush_r>
 80076a0:	2800      	cmp	r0, #0
 80076a2:	bf18      	it	ne
 80076a4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80076a8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80076ac:	065b      	lsls	r3, r3, #25
 80076ae:	d503      	bpl.n	80076b8 <__sbprintf+0x74>
 80076b0:	89a3      	ldrh	r3, [r4, #12]
 80076b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80076b6:	81a3      	strh	r3, [r4, #12]
 80076b8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80076ba:	f001 faf3 	bl	8008ca4 <__retarget_lock_close_recursive>
 80076be:	4628      	mov	r0, r5
 80076c0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80076c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080076c8 <__swsetup_r>:
 80076c8:	b538      	push	{r3, r4, r5, lr}
 80076ca:	4b31      	ldr	r3, [pc, #196]	; (8007790 <__swsetup_r+0xc8>)
 80076cc:	681b      	ldr	r3, [r3, #0]
 80076ce:	4605      	mov	r5, r0
 80076d0:	460c      	mov	r4, r1
 80076d2:	b113      	cbz	r3, 80076da <__swsetup_r+0x12>
 80076d4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80076d6:	2a00      	cmp	r2, #0
 80076d8:	d03a      	beq.n	8007750 <__swsetup_r+0x88>
 80076da:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80076de:	b293      	uxth	r3, r2
 80076e0:	0718      	lsls	r0, r3, #28
 80076e2:	d50c      	bpl.n	80076fe <__swsetup_r+0x36>
 80076e4:	6920      	ldr	r0, [r4, #16]
 80076e6:	b1a8      	cbz	r0, 8007714 <__swsetup_r+0x4c>
 80076e8:	f013 0201 	ands.w	r2, r3, #1
 80076ec:	d020      	beq.n	8007730 <__swsetup_r+0x68>
 80076ee:	6963      	ldr	r3, [r4, #20]
 80076f0:	2200      	movs	r2, #0
 80076f2:	425b      	negs	r3, r3
 80076f4:	61a3      	str	r3, [r4, #24]
 80076f6:	60a2      	str	r2, [r4, #8]
 80076f8:	b300      	cbz	r0, 800773c <__swsetup_r+0x74>
 80076fa:	2000      	movs	r0, #0
 80076fc:	bd38      	pop	{r3, r4, r5, pc}
 80076fe:	06d9      	lsls	r1, r3, #27
 8007700:	d53e      	bpl.n	8007780 <__swsetup_r+0xb8>
 8007702:	0758      	lsls	r0, r3, #29
 8007704:	d428      	bmi.n	8007758 <__swsetup_r+0x90>
 8007706:	6920      	ldr	r0, [r4, #16]
 8007708:	f042 0308 	orr.w	r3, r2, #8
 800770c:	81a3      	strh	r3, [r4, #12]
 800770e:	b29b      	uxth	r3, r3
 8007710:	2800      	cmp	r0, #0
 8007712:	d1e9      	bne.n	80076e8 <__swsetup_r+0x20>
 8007714:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8007718:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800771c:	d0e4      	beq.n	80076e8 <__swsetup_r+0x20>
 800771e:	4628      	mov	r0, r5
 8007720:	4621      	mov	r1, r4
 8007722:	f001 faf3 	bl	8008d0c <__smakebuf_r>
 8007726:	89a3      	ldrh	r3, [r4, #12]
 8007728:	6920      	ldr	r0, [r4, #16]
 800772a:	f013 0201 	ands.w	r2, r3, #1
 800772e:	d1de      	bne.n	80076ee <__swsetup_r+0x26>
 8007730:	0799      	lsls	r1, r3, #30
 8007732:	bf58      	it	pl
 8007734:	6962      	ldrpl	r2, [r4, #20]
 8007736:	60a2      	str	r2, [r4, #8]
 8007738:	2800      	cmp	r0, #0
 800773a:	d1de      	bne.n	80076fa <__swsetup_r+0x32>
 800773c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007740:	061a      	lsls	r2, r3, #24
 8007742:	d5db      	bpl.n	80076fc <__swsetup_r+0x34>
 8007744:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007748:	81a3      	strh	r3, [r4, #12]
 800774a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800774e:	bd38      	pop	{r3, r4, r5, pc}
 8007750:	4618      	mov	r0, r3
 8007752:	f001 f8d7 	bl	8008904 <__sinit>
 8007756:	e7c0      	b.n	80076da <__swsetup_r+0x12>
 8007758:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800775a:	b151      	cbz	r1, 8007772 <__swsetup_r+0xaa>
 800775c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007760:	4299      	cmp	r1, r3
 8007762:	d004      	beq.n	800776e <__swsetup_r+0xa6>
 8007764:	4628      	mov	r0, r5
 8007766:	f001 f96f 	bl	8008a48 <_free_r>
 800776a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800776e:	2300      	movs	r3, #0
 8007770:	6323      	str	r3, [r4, #48]	; 0x30
 8007772:	2300      	movs	r3, #0
 8007774:	6920      	ldr	r0, [r4, #16]
 8007776:	6063      	str	r3, [r4, #4]
 8007778:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800777c:	6020      	str	r0, [r4, #0]
 800777e:	e7c3      	b.n	8007708 <__swsetup_r+0x40>
 8007780:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007784:	2309      	movs	r3, #9
 8007786:	602b      	str	r3, [r5, #0]
 8007788:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800778c:	81a2      	strh	r2, [r4, #12]
 800778e:	bd38      	pop	{r3, r4, r5, pc}
 8007790:	2000001c 	.word	0x2000001c

08007794 <register_fini>:
 8007794:	4b02      	ldr	r3, [pc, #8]	; (80077a0 <register_fini+0xc>)
 8007796:	b113      	cbz	r3, 800779e <register_fini+0xa>
 8007798:	4802      	ldr	r0, [pc, #8]	; (80077a4 <register_fini+0x10>)
 800779a:	f000 b805 	b.w	80077a8 <atexit>
 800779e:	4770      	bx	lr
 80077a0:	00000000 	.word	0x00000000
 80077a4:	08008975 	.word	0x08008975

080077a8 <atexit>:
 80077a8:	2300      	movs	r3, #0
 80077aa:	4601      	mov	r1, r0
 80077ac:	461a      	mov	r2, r3
 80077ae:	4618      	mov	r0, r3
 80077b0:	f002 b9c8 	b.w	8009b44 <__register_exitproc>

080077b4 <quorem>:
 80077b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80077b8:	6903      	ldr	r3, [r0, #16]
 80077ba:	690f      	ldr	r7, [r1, #16]
 80077bc:	42bb      	cmp	r3, r7
 80077be:	b083      	sub	sp, #12
 80077c0:	f2c0 8086 	blt.w	80078d0 <quorem+0x11c>
 80077c4:	3f01      	subs	r7, #1
 80077c6:	f101 0914 	add.w	r9, r1, #20
 80077ca:	f100 0a14 	add.w	sl, r0, #20
 80077ce:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80077d2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80077d6:	00bc      	lsls	r4, r7, #2
 80077d8:	3201      	adds	r2, #1
 80077da:	fbb3 f8f2 	udiv	r8, r3, r2
 80077de:	eb0a 0304 	add.w	r3, sl, r4
 80077e2:	9400      	str	r4, [sp, #0]
 80077e4:	eb09 0b04 	add.w	fp, r9, r4
 80077e8:	9301      	str	r3, [sp, #4]
 80077ea:	f1b8 0f00 	cmp.w	r8, #0
 80077ee:	d038      	beq.n	8007862 <quorem+0xae>
 80077f0:	2500      	movs	r5, #0
 80077f2:	462e      	mov	r6, r5
 80077f4:	46ce      	mov	lr, r9
 80077f6:	46d4      	mov	ip, sl
 80077f8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80077fc:	f8dc 3000 	ldr.w	r3, [ip]
 8007800:	b2a2      	uxth	r2, r4
 8007802:	fb08 5502 	mla	r5, r8, r2, r5
 8007806:	0c22      	lsrs	r2, r4, #16
 8007808:	0c2c      	lsrs	r4, r5, #16
 800780a:	fb08 4202 	mla	r2, r8, r2, r4
 800780e:	b2ad      	uxth	r5, r5
 8007810:	1b75      	subs	r5, r6, r5
 8007812:	b296      	uxth	r6, r2
 8007814:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8007818:	fa15 f383 	uxtah	r3, r5, r3
 800781c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8007820:	b29b      	uxth	r3, r3
 8007822:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8007826:	45f3      	cmp	fp, lr
 8007828:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800782c:	f84c 3b04 	str.w	r3, [ip], #4
 8007830:	ea4f 4626 	mov.w	r6, r6, asr #16
 8007834:	d2e0      	bcs.n	80077f8 <quorem+0x44>
 8007836:	9b00      	ldr	r3, [sp, #0]
 8007838:	f85a 3003 	ldr.w	r3, [sl, r3]
 800783c:	b98b      	cbnz	r3, 8007862 <quorem+0xae>
 800783e:	9a01      	ldr	r2, [sp, #4]
 8007840:	1f13      	subs	r3, r2, #4
 8007842:	459a      	cmp	sl, r3
 8007844:	d20c      	bcs.n	8007860 <quorem+0xac>
 8007846:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800784a:	b94b      	cbnz	r3, 8007860 <quorem+0xac>
 800784c:	f1a2 0308 	sub.w	r3, r2, #8
 8007850:	e002      	b.n	8007858 <quorem+0xa4>
 8007852:	681a      	ldr	r2, [r3, #0]
 8007854:	3b04      	subs	r3, #4
 8007856:	b91a      	cbnz	r2, 8007860 <quorem+0xac>
 8007858:	459a      	cmp	sl, r3
 800785a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800785e:	d3f8      	bcc.n	8007852 <quorem+0x9e>
 8007860:	6107      	str	r7, [r0, #16]
 8007862:	4604      	mov	r4, r0
 8007864:	f001 ff62 	bl	800972c <__mcmp>
 8007868:	2800      	cmp	r0, #0
 800786a:	db2d      	blt.n	80078c8 <quorem+0x114>
 800786c:	f108 0801 	add.w	r8, r8, #1
 8007870:	4655      	mov	r5, sl
 8007872:	2300      	movs	r3, #0
 8007874:	f859 1b04 	ldr.w	r1, [r9], #4
 8007878:	6828      	ldr	r0, [r5, #0]
 800787a:	b28a      	uxth	r2, r1
 800787c:	1a9a      	subs	r2, r3, r2
 800787e:	0c0b      	lsrs	r3, r1, #16
 8007880:	fa12 f280 	uxtah	r2, r2, r0
 8007884:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8007888:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800788c:	b292      	uxth	r2, r2
 800788e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007892:	45cb      	cmp	fp, r9
 8007894:	f845 2b04 	str.w	r2, [r5], #4
 8007898:	ea4f 4323 	mov.w	r3, r3, asr #16
 800789c:	d2ea      	bcs.n	8007874 <quorem+0xc0>
 800789e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80078a2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80078a6:	b97a      	cbnz	r2, 80078c8 <quorem+0x114>
 80078a8:	1f1a      	subs	r2, r3, #4
 80078aa:	4592      	cmp	sl, r2
 80078ac:	d20b      	bcs.n	80078c6 <quorem+0x112>
 80078ae:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80078b2:	b942      	cbnz	r2, 80078c6 <quorem+0x112>
 80078b4:	3b08      	subs	r3, #8
 80078b6:	e002      	b.n	80078be <quorem+0x10a>
 80078b8:	681a      	ldr	r2, [r3, #0]
 80078ba:	3b04      	subs	r3, #4
 80078bc:	b91a      	cbnz	r2, 80078c6 <quorem+0x112>
 80078be:	459a      	cmp	sl, r3
 80078c0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80078c4:	d3f8      	bcc.n	80078b8 <quorem+0x104>
 80078c6:	6127      	str	r7, [r4, #16]
 80078c8:	4640      	mov	r0, r8
 80078ca:	b003      	add	sp, #12
 80078cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80078d0:	2000      	movs	r0, #0
 80078d2:	b003      	add	sp, #12
 80078d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080078d8 <_dtoa_r>:
 80078d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80078dc:	ec55 4b10 	vmov	r4, r5, d0
 80078e0:	b09b      	sub	sp, #108	; 0x6c
 80078e2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80078e4:	9102      	str	r1, [sp, #8]
 80078e6:	4681      	mov	r9, r0
 80078e8:	9207      	str	r2, [sp, #28]
 80078ea:	9305      	str	r3, [sp, #20]
 80078ec:	e9cd 4500 	strd	r4, r5, [sp]
 80078f0:	b156      	cbz	r6, 8007908 <_dtoa_r+0x30>
 80078f2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80078f4:	6072      	str	r2, [r6, #4]
 80078f6:	2301      	movs	r3, #1
 80078f8:	4093      	lsls	r3, r2
 80078fa:	60b3      	str	r3, [r6, #8]
 80078fc:	4631      	mov	r1, r6
 80078fe:	f001 fd25 	bl	800934c <_Bfree>
 8007902:	2300      	movs	r3, #0
 8007904:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8007908:	f1b5 0800 	subs.w	r8, r5, #0
 800790c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800790e:	bfb4      	ite	lt
 8007910:	2301      	movlt	r3, #1
 8007912:	2300      	movge	r3, #0
 8007914:	6013      	str	r3, [r2, #0]
 8007916:	4b76      	ldr	r3, [pc, #472]	; (8007af0 <_dtoa_r+0x218>)
 8007918:	bfbc      	itt	lt
 800791a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800791e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8007922:	ea33 0308 	bics.w	r3, r3, r8
 8007926:	f000 80a6 	beq.w	8007a76 <_dtoa_r+0x19e>
 800792a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800792e:	2200      	movs	r2, #0
 8007930:	2300      	movs	r3, #0
 8007932:	4630      	mov	r0, r6
 8007934:	4639      	mov	r1, r7
 8007936:	f7f9 f887 	bl	8000a48 <__aeabi_dcmpeq>
 800793a:	4605      	mov	r5, r0
 800793c:	b178      	cbz	r0, 800795e <_dtoa_r+0x86>
 800793e:	9a05      	ldr	r2, [sp, #20]
 8007940:	2301      	movs	r3, #1
 8007942:	6013      	str	r3, [r2, #0]
 8007944:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007946:	2b00      	cmp	r3, #0
 8007948:	f000 80c0 	beq.w	8007acc <_dtoa_r+0x1f4>
 800794c:	4b69      	ldr	r3, [pc, #420]	; (8007af4 <_dtoa_r+0x21c>)
 800794e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8007950:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8007954:	6013      	str	r3, [r2, #0]
 8007956:	4658      	mov	r0, fp
 8007958:	b01b      	add	sp, #108	; 0x6c
 800795a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800795e:	aa18      	add	r2, sp, #96	; 0x60
 8007960:	a919      	add	r1, sp, #100	; 0x64
 8007962:	ec47 6b10 	vmov	d0, r6, r7
 8007966:	4648      	mov	r0, r9
 8007968:	f001 ff72 	bl	8009850 <__d2b>
 800796c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8007970:	4682      	mov	sl, r0
 8007972:	f040 80a0 	bne.w	8007ab6 <_dtoa_r+0x1de>
 8007976:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800797a:	442c      	add	r4, r5
 800797c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8007980:	2b20      	cmp	r3, #32
 8007982:	f340 842c 	ble.w	80081de <_dtoa_r+0x906>
 8007986:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800798a:	fa08 f803 	lsl.w	r8, r8, r3
 800798e:	9b00      	ldr	r3, [sp, #0]
 8007990:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8007994:	fa23 f000 	lsr.w	r0, r3, r0
 8007998:	ea48 0000 	orr.w	r0, r8, r0
 800799c:	f7f8 fd72 	bl	8000484 <__aeabi_ui2d>
 80079a0:	2301      	movs	r3, #1
 80079a2:	4606      	mov	r6, r0
 80079a4:	3c01      	subs	r4, #1
 80079a6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80079aa:	930f      	str	r3, [sp, #60]	; 0x3c
 80079ac:	4630      	mov	r0, r6
 80079ae:	4639      	mov	r1, r7
 80079b0:	2200      	movs	r2, #0
 80079b2:	4b51      	ldr	r3, [pc, #324]	; (8007af8 <_dtoa_r+0x220>)
 80079b4:	f7f8 fc28 	bl	8000208 <__aeabi_dsub>
 80079b8:	a347      	add	r3, pc, #284	; (adr r3, 8007ad8 <_dtoa_r+0x200>)
 80079ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80079be:	f7f8 fddb 	bl	8000578 <__aeabi_dmul>
 80079c2:	a347      	add	r3, pc, #284	; (adr r3, 8007ae0 <_dtoa_r+0x208>)
 80079c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80079c8:	f7f8 fc20 	bl	800020c <__adddf3>
 80079cc:	4606      	mov	r6, r0
 80079ce:	4620      	mov	r0, r4
 80079d0:	460f      	mov	r7, r1
 80079d2:	f7f8 fd67 	bl	80004a4 <__aeabi_i2d>
 80079d6:	a344      	add	r3, pc, #272	; (adr r3, 8007ae8 <_dtoa_r+0x210>)
 80079d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80079dc:	f7f8 fdcc 	bl	8000578 <__aeabi_dmul>
 80079e0:	4602      	mov	r2, r0
 80079e2:	460b      	mov	r3, r1
 80079e4:	4630      	mov	r0, r6
 80079e6:	4639      	mov	r1, r7
 80079e8:	f7f8 fc10 	bl	800020c <__adddf3>
 80079ec:	4606      	mov	r6, r0
 80079ee:	460f      	mov	r7, r1
 80079f0:	f7f9 f872 	bl	8000ad8 <__aeabi_d2iz>
 80079f4:	2200      	movs	r2, #0
 80079f6:	9006      	str	r0, [sp, #24]
 80079f8:	2300      	movs	r3, #0
 80079fa:	4630      	mov	r0, r6
 80079fc:	4639      	mov	r1, r7
 80079fe:	f7f9 f82d 	bl	8000a5c <__aeabi_dcmplt>
 8007a02:	2800      	cmp	r0, #0
 8007a04:	f040 8273 	bne.w	8007eee <_dtoa_r+0x616>
 8007a08:	9e06      	ldr	r6, [sp, #24]
 8007a0a:	2e16      	cmp	r6, #22
 8007a0c:	f200 825d 	bhi.w	8007eca <_dtoa_r+0x5f2>
 8007a10:	4b3a      	ldr	r3, [pc, #232]	; (8007afc <_dtoa_r+0x224>)
 8007a12:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8007a16:	e9d3 0100 	ldrd	r0, r1, [r3]
 8007a1a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007a1e:	f7f9 f83b 	bl	8000a98 <__aeabi_dcmpgt>
 8007a22:	2800      	cmp	r0, #0
 8007a24:	f000 83d7 	beq.w	80081d6 <_dtoa_r+0x8fe>
 8007a28:	1e73      	subs	r3, r6, #1
 8007a2a:	9306      	str	r3, [sp, #24]
 8007a2c:	2300      	movs	r3, #0
 8007a2e:	930d      	str	r3, [sp, #52]	; 0x34
 8007a30:	1b2c      	subs	r4, r5, r4
 8007a32:	f1b4 0801 	subs.w	r8, r4, #1
 8007a36:	f100 8254 	bmi.w	8007ee2 <_dtoa_r+0x60a>
 8007a3a:	2300      	movs	r3, #0
 8007a3c:	9308      	str	r3, [sp, #32]
 8007a3e:	9b06      	ldr	r3, [sp, #24]
 8007a40:	2b00      	cmp	r3, #0
 8007a42:	f2c0 8245 	blt.w	8007ed0 <_dtoa_r+0x5f8>
 8007a46:	4498      	add	r8, r3
 8007a48:	930c      	str	r3, [sp, #48]	; 0x30
 8007a4a:	2300      	movs	r3, #0
 8007a4c:	930b      	str	r3, [sp, #44]	; 0x2c
 8007a4e:	9b02      	ldr	r3, [sp, #8]
 8007a50:	2b09      	cmp	r3, #9
 8007a52:	d85b      	bhi.n	8007b0c <_dtoa_r+0x234>
 8007a54:	2b05      	cmp	r3, #5
 8007a56:	f340 83c0 	ble.w	80081da <_dtoa_r+0x902>
 8007a5a:	3b04      	subs	r3, #4
 8007a5c:	9302      	str	r3, [sp, #8]
 8007a5e:	2500      	movs	r5, #0
 8007a60:	9b02      	ldr	r3, [sp, #8]
 8007a62:	3b02      	subs	r3, #2
 8007a64:	2b03      	cmp	r3, #3
 8007a66:	f200 8498 	bhi.w	800839a <_dtoa_r+0xac2>
 8007a6a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8007a6e:	03df      	.short	0x03df
 8007a70:	03e803bf 	.word	0x03e803bf
 8007a74:	04f5      	.short	0x04f5
 8007a76:	9a05      	ldr	r2, [sp, #20]
 8007a78:	f242 730f 	movw	r3, #9999	; 0x270f
 8007a7c:	6013      	str	r3, [r2, #0]
 8007a7e:	9b00      	ldr	r3, [sp, #0]
 8007a80:	b983      	cbnz	r3, 8007aa4 <_dtoa_r+0x1cc>
 8007a82:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8007a86:	b96b      	cbnz	r3, 8007aa4 <_dtoa_r+0x1cc>
 8007a88:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007a8a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8007b00 <_dtoa_r+0x228>
 8007a8e:	2b00      	cmp	r3, #0
 8007a90:	f43f af61 	beq.w	8007956 <_dtoa_r+0x7e>
 8007a94:	f10b 0308 	add.w	r3, fp, #8
 8007a98:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8007a9a:	4658      	mov	r0, fp
 8007a9c:	6013      	str	r3, [r2, #0]
 8007a9e:	b01b      	add	sp, #108	; 0x6c
 8007aa0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007aa4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007aa6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8007b04 <_dtoa_r+0x22c>
 8007aaa:	2b00      	cmp	r3, #0
 8007aac:	f43f af53 	beq.w	8007956 <_dtoa_r+0x7e>
 8007ab0:	f10b 0303 	add.w	r3, fp, #3
 8007ab4:	e7f0      	b.n	8007a98 <_dtoa_r+0x1c0>
 8007ab6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8007aba:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8007abe:	950f      	str	r5, [sp, #60]	; 0x3c
 8007ac0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8007ac4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8007ac8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8007aca:	e76f      	b.n	80079ac <_dtoa_r+0xd4>
 8007acc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007b08 <_dtoa_r+0x230>
 8007ad0:	4658      	mov	r0, fp
 8007ad2:	b01b      	add	sp, #108	; 0x6c
 8007ad4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007ad8:	636f4361 	.word	0x636f4361
 8007adc:	3fd287a7 	.word	0x3fd287a7
 8007ae0:	8b60c8b3 	.word	0x8b60c8b3
 8007ae4:	3fc68a28 	.word	0x3fc68a28
 8007ae8:	509f79fb 	.word	0x509f79fb
 8007aec:	3fd34413 	.word	0x3fd34413
 8007af0:	7ff00000 	.word	0x7ff00000
 8007af4:	0800ab4d 	.word	0x0800ab4d
 8007af8:	3ff80000 	.word	0x3ff80000
 8007afc:	0800aba8 	.word	0x0800aba8
 8007b00:	0800ab70 	.word	0x0800ab70
 8007b04:	0800ab7c 	.word	0x0800ab7c
 8007b08:	0800ab4c 	.word	0x0800ab4c
 8007b0c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8007b10:	2501      	movs	r5, #1
 8007b12:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8007b16:	2300      	movs	r3, #0
 8007b18:	9302      	str	r3, [sp, #8]
 8007b1a:	9307      	str	r3, [sp, #28]
 8007b1c:	2100      	movs	r1, #0
 8007b1e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007b22:	940e      	str	r4, [sp, #56]	; 0x38
 8007b24:	4648      	mov	r0, r9
 8007b26:	f001 fbeb 	bl	8009300 <_Balloc>
 8007b2a:	2c0e      	cmp	r4, #14
 8007b2c:	4683      	mov	fp, r0
 8007b2e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007b32:	f200 80fb 	bhi.w	8007d2c <_dtoa_r+0x454>
 8007b36:	2d00      	cmp	r5, #0
 8007b38:	f000 80f8 	beq.w	8007d2c <_dtoa_r+0x454>
 8007b3c:	ed9d 7b00 	vldr	d7, [sp]
 8007b40:	9906      	ldr	r1, [sp, #24]
 8007b42:	2900      	cmp	r1, #0
 8007b44:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8007b48:	f340 83e5 	ble.w	8008316 <_dtoa_r+0xa3e>
 8007b4c:	4b9d      	ldr	r3, [pc, #628]	; (8007dc4 <_dtoa_r+0x4ec>)
 8007b4e:	f001 020f 	and.w	r2, r1, #15
 8007b52:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007b56:	ed93 7b00 	vldr	d7, [r3]
 8007b5a:	110c      	asrs	r4, r1, #4
 8007b5c:	06e2      	lsls	r2, r4, #27
 8007b5e:	ed8d 7b00 	vstr	d7, [sp]
 8007b62:	f140 849e 	bpl.w	80084a2 <_dtoa_r+0xbca>
 8007b66:	4b98      	ldr	r3, [pc, #608]	; (8007dc8 <_dtoa_r+0x4f0>)
 8007b68:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007b6c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8007b70:	f7f8 fe2c 	bl	80007cc <__aeabi_ddiv>
 8007b74:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8007b78:	f004 040f 	and.w	r4, r4, #15
 8007b7c:	2603      	movs	r6, #3
 8007b7e:	b17c      	cbz	r4, 8007ba0 <_dtoa_r+0x2c8>
 8007b80:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007b84:	4d90      	ldr	r5, [pc, #576]	; (8007dc8 <_dtoa_r+0x4f0>)
 8007b86:	07e3      	lsls	r3, r4, #31
 8007b88:	d504      	bpl.n	8007b94 <_dtoa_r+0x2bc>
 8007b8a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007b8e:	f7f8 fcf3 	bl	8000578 <__aeabi_dmul>
 8007b92:	3601      	adds	r6, #1
 8007b94:	1064      	asrs	r4, r4, #1
 8007b96:	f105 0508 	add.w	r5, r5, #8
 8007b9a:	d1f4      	bne.n	8007b86 <_dtoa_r+0x2ae>
 8007b9c:	e9cd 0100 	strd	r0, r1, [sp]
 8007ba0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007ba4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007ba8:	f7f8 fe10 	bl	80007cc <__aeabi_ddiv>
 8007bac:	e9cd 0100 	strd	r0, r1, [sp]
 8007bb0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007bb2:	b143      	cbz	r3, 8007bc6 <_dtoa_r+0x2ee>
 8007bb4:	2200      	movs	r2, #0
 8007bb6:	4b85      	ldr	r3, [pc, #532]	; (8007dcc <_dtoa_r+0x4f4>)
 8007bb8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007bbc:	f7f8 ff4e 	bl	8000a5c <__aeabi_dcmplt>
 8007bc0:	2800      	cmp	r0, #0
 8007bc2:	f040 84ff 	bne.w	80085c4 <_dtoa_r+0xcec>
 8007bc6:	4630      	mov	r0, r6
 8007bc8:	f7f8 fc6c 	bl	80004a4 <__aeabi_i2d>
 8007bcc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007bd0:	f7f8 fcd2 	bl	8000578 <__aeabi_dmul>
 8007bd4:	4b7e      	ldr	r3, [pc, #504]	; (8007dd0 <_dtoa_r+0x4f8>)
 8007bd6:	2200      	movs	r2, #0
 8007bd8:	f7f8 fb18 	bl	800020c <__adddf3>
 8007bdc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007bde:	4606      	mov	r6, r0
 8007be0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007be4:	2b00      	cmp	r3, #0
 8007be6:	f000 841c 	beq.w	8008422 <_dtoa_r+0xb4a>
 8007bea:	9b06      	ldr	r3, [sp, #24]
 8007bec:	9316      	str	r3, [sp, #88]	; 0x58
 8007bee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007bf0:	9312      	str	r3, [sp, #72]	; 0x48
 8007bf2:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007bf6:	f7f8 ff6f 	bl	8000ad8 <__aeabi_d2iz>
 8007bfa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007bfc:	4b71      	ldr	r3, [pc, #452]	; (8007dc4 <_dtoa_r+0x4ec>)
 8007bfe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007c02:	ed13 7b02 	vldr	d7, [r3, #-8]
 8007c06:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8007c0a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8007c0e:	f7f8 fc49 	bl	80004a4 <__aeabi_i2d>
 8007c12:	460b      	mov	r3, r1
 8007c14:	4602      	mov	r2, r0
 8007c16:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007c1a:	e9cd 6700 	strd	r6, r7, [sp]
 8007c1e:	f7f8 faf3 	bl	8000208 <__aeabi_dsub>
 8007c22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007c24:	b2ed      	uxtb	r5, r5
 8007c26:	4606      	mov	r6, r0
 8007c28:	460f      	mov	r7, r1
 8007c2a:	f10b 0401 	add.w	r4, fp, #1
 8007c2e:	2b00      	cmp	r3, #0
 8007c30:	f000 8458 	beq.w	80084e4 <_dtoa_r+0xc0c>
 8007c34:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007c38:	2000      	movs	r0, #0
 8007c3a:	4966      	ldr	r1, [pc, #408]	; (8007dd4 <_dtoa_r+0x4fc>)
 8007c3c:	f7f8 fdc6 	bl	80007cc <__aeabi_ddiv>
 8007c40:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007c44:	f7f8 fae0 	bl	8000208 <__aeabi_dsub>
 8007c48:	f88b 5000 	strb.w	r5, [fp]
 8007c4c:	4632      	mov	r2, r6
 8007c4e:	463b      	mov	r3, r7
 8007c50:	e9cd 0100 	strd	r0, r1, [sp]
 8007c54:	f7f8 ff20 	bl	8000a98 <__aeabi_dcmpgt>
 8007c58:	2800      	cmp	r0, #0
 8007c5a:	f040 8502 	bne.w	8008662 <_dtoa_r+0xd8a>
 8007c5e:	4632      	mov	r2, r6
 8007c60:	463b      	mov	r3, r7
 8007c62:	2000      	movs	r0, #0
 8007c64:	4959      	ldr	r1, [pc, #356]	; (8007dcc <_dtoa_r+0x4f4>)
 8007c66:	f7f8 facf 	bl	8000208 <__aeabi_dsub>
 8007c6a:	4602      	mov	r2, r0
 8007c6c:	460b      	mov	r3, r1
 8007c6e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007c72:	f7f8 ff11 	bl	8000a98 <__aeabi_dcmpgt>
 8007c76:	2800      	cmp	r0, #0
 8007c78:	f040 84fb 	bne.w	8008672 <_dtoa_r+0xd9a>
 8007c7c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007c7e:	2a01      	cmp	r2, #1
 8007c80:	d050      	beq.n	8007d24 <_dtoa_r+0x44c>
 8007c82:	445a      	add	r2, fp
 8007c84:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8007c88:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8007c8c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8007c90:	4692      	mov	sl, r2
 8007c92:	46cb      	mov	fp, r9
 8007c94:	e9dd 8900 	ldrd	r8, r9, [sp]
 8007c98:	e00c      	b.n	8007cb4 <_dtoa_r+0x3dc>
 8007c9a:	2000      	movs	r0, #0
 8007c9c:	494b      	ldr	r1, [pc, #300]	; (8007dcc <_dtoa_r+0x4f4>)
 8007c9e:	f7f8 fab3 	bl	8000208 <__aeabi_dsub>
 8007ca2:	4642      	mov	r2, r8
 8007ca4:	464b      	mov	r3, r9
 8007ca6:	f7f8 fed9 	bl	8000a5c <__aeabi_dcmplt>
 8007caa:	2800      	cmp	r0, #0
 8007cac:	f040 84dc 	bne.w	8008668 <_dtoa_r+0xd90>
 8007cb0:	4554      	cmp	r4, sl
 8007cb2:	d030      	beq.n	8007d16 <_dtoa_r+0x43e>
 8007cb4:	4640      	mov	r0, r8
 8007cb6:	4649      	mov	r1, r9
 8007cb8:	2200      	movs	r2, #0
 8007cba:	4b47      	ldr	r3, [pc, #284]	; (8007dd8 <_dtoa_r+0x500>)
 8007cbc:	f7f8 fc5c 	bl	8000578 <__aeabi_dmul>
 8007cc0:	2200      	movs	r2, #0
 8007cc2:	4b45      	ldr	r3, [pc, #276]	; (8007dd8 <_dtoa_r+0x500>)
 8007cc4:	4680      	mov	r8, r0
 8007cc6:	4689      	mov	r9, r1
 8007cc8:	4630      	mov	r0, r6
 8007cca:	4639      	mov	r1, r7
 8007ccc:	f7f8 fc54 	bl	8000578 <__aeabi_dmul>
 8007cd0:	460f      	mov	r7, r1
 8007cd2:	4606      	mov	r6, r0
 8007cd4:	f7f8 ff00 	bl	8000ad8 <__aeabi_d2iz>
 8007cd8:	4605      	mov	r5, r0
 8007cda:	f7f8 fbe3 	bl	80004a4 <__aeabi_i2d>
 8007cde:	4602      	mov	r2, r0
 8007ce0:	460b      	mov	r3, r1
 8007ce2:	4630      	mov	r0, r6
 8007ce4:	4639      	mov	r1, r7
 8007ce6:	f7f8 fa8f 	bl	8000208 <__aeabi_dsub>
 8007cea:	3530      	adds	r5, #48	; 0x30
 8007cec:	b2ed      	uxtb	r5, r5
 8007cee:	4642      	mov	r2, r8
 8007cf0:	464b      	mov	r3, r9
 8007cf2:	f804 5b01 	strb.w	r5, [r4], #1
 8007cf6:	4606      	mov	r6, r0
 8007cf8:	460f      	mov	r7, r1
 8007cfa:	f7f8 feaf 	bl	8000a5c <__aeabi_dcmplt>
 8007cfe:	4632      	mov	r2, r6
 8007d00:	463b      	mov	r3, r7
 8007d02:	2800      	cmp	r0, #0
 8007d04:	d0c9      	beq.n	8007c9a <_dtoa_r+0x3c2>
 8007d06:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007d08:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007d0c:	9306      	str	r3, [sp, #24]
 8007d0e:	46d9      	mov	r9, fp
 8007d10:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007d14:	e236      	b.n	8008184 <_dtoa_r+0x8ac>
 8007d16:	46d9      	mov	r9, fp
 8007d18:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007d1c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007d20:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007d24:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007d28:	e9cd 3400 	strd	r3, r4, [sp]
 8007d2c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007d2e:	2b00      	cmp	r3, #0
 8007d30:	f2c0 80ae 	blt.w	8007e90 <_dtoa_r+0x5b8>
 8007d34:	9a06      	ldr	r2, [sp, #24]
 8007d36:	2a0e      	cmp	r2, #14
 8007d38:	f300 80aa 	bgt.w	8007e90 <_dtoa_r+0x5b8>
 8007d3c:	4b21      	ldr	r3, [pc, #132]	; (8007dc4 <_dtoa_r+0x4ec>)
 8007d3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007d42:	ed93 7b00 	vldr	d7, [r3]
 8007d46:	9b07      	ldr	r3, [sp, #28]
 8007d48:	2b00      	cmp	r3, #0
 8007d4a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007d4e:	f2c0 82be 	blt.w	80082ce <_dtoa_r+0x9f6>
 8007d52:	e9dd 6700 	ldrd	r6, r7, [sp]
 8007d56:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007d5a:	4630      	mov	r0, r6
 8007d5c:	4639      	mov	r1, r7
 8007d5e:	f7f8 fd35 	bl	80007cc <__aeabi_ddiv>
 8007d62:	f7f8 feb9 	bl	8000ad8 <__aeabi_d2iz>
 8007d66:	4605      	mov	r5, r0
 8007d68:	f7f8 fb9c 	bl	80004a4 <__aeabi_i2d>
 8007d6c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007d70:	f7f8 fc02 	bl	8000578 <__aeabi_dmul>
 8007d74:	460b      	mov	r3, r1
 8007d76:	4602      	mov	r2, r0
 8007d78:	4639      	mov	r1, r7
 8007d7a:	4630      	mov	r0, r6
 8007d7c:	f7f8 fa44 	bl	8000208 <__aeabi_dsub>
 8007d80:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8007d84:	f88b 3000 	strb.w	r3, [fp]
 8007d88:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007d8a:	2b01      	cmp	r3, #1
 8007d8c:	4606      	mov	r6, r0
 8007d8e:	460f      	mov	r7, r1
 8007d90:	f10b 0401 	add.w	r4, fp, #1
 8007d94:	d053      	beq.n	8007e3e <_dtoa_r+0x566>
 8007d96:	2200      	movs	r2, #0
 8007d98:	4b0f      	ldr	r3, [pc, #60]	; (8007dd8 <_dtoa_r+0x500>)
 8007d9a:	f7f8 fbed 	bl	8000578 <__aeabi_dmul>
 8007d9e:	2200      	movs	r2, #0
 8007da0:	2300      	movs	r3, #0
 8007da2:	4606      	mov	r6, r0
 8007da4:	460f      	mov	r7, r1
 8007da6:	f7f8 fe4f 	bl	8000a48 <__aeabi_dcmpeq>
 8007daa:	2800      	cmp	r0, #0
 8007dac:	f040 81ea 	bne.w	8008184 <_dtoa_r+0x8ac>
 8007db0:	f8cd a000 	str.w	sl, [sp]
 8007db4:	f8cd 901c 	str.w	r9, [sp, #28]
 8007db8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007dbc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007dc0:	e017      	b.n	8007df2 <_dtoa_r+0x51a>
 8007dc2:	bf00      	nop
 8007dc4:	0800aba8 	.word	0x0800aba8
 8007dc8:	0800ab80 	.word	0x0800ab80
 8007dcc:	3ff00000 	.word	0x3ff00000
 8007dd0:	401c0000 	.word	0x401c0000
 8007dd4:	3fe00000 	.word	0x3fe00000
 8007dd8:	40240000 	.word	0x40240000
 8007ddc:	f7f8 fbcc 	bl	8000578 <__aeabi_dmul>
 8007de0:	2200      	movs	r2, #0
 8007de2:	2300      	movs	r3, #0
 8007de4:	4606      	mov	r6, r0
 8007de6:	460f      	mov	r7, r1
 8007de8:	f7f8 fe2e 	bl	8000a48 <__aeabi_dcmpeq>
 8007dec:	2800      	cmp	r0, #0
 8007dee:	f040 833d 	bne.w	800846c <_dtoa_r+0xb94>
 8007df2:	464a      	mov	r2, r9
 8007df4:	4653      	mov	r3, sl
 8007df6:	4630      	mov	r0, r6
 8007df8:	4639      	mov	r1, r7
 8007dfa:	f7f8 fce7 	bl	80007cc <__aeabi_ddiv>
 8007dfe:	f7f8 fe6b 	bl	8000ad8 <__aeabi_d2iz>
 8007e02:	4605      	mov	r5, r0
 8007e04:	f7f8 fb4e 	bl	80004a4 <__aeabi_i2d>
 8007e08:	464a      	mov	r2, r9
 8007e0a:	4653      	mov	r3, sl
 8007e0c:	f7f8 fbb4 	bl	8000578 <__aeabi_dmul>
 8007e10:	4602      	mov	r2, r0
 8007e12:	460b      	mov	r3, r1
 8007e14:	4630      	mov	r0, r6
 8007e16:	4639      	mov	r1, r7
 8007e18:	f7f8 f9f6 	bl	8000208 <__aeabi_dsub>
 8007e1c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007e20:	f804 cb01 	strb.w	ip, [r4], #1
 8007e24:	eba4 0c0b 	sub.w	ip, r4, fp
 8007e28:	45e0      	cmp	r8, ip
 8007e2a:	4606      	mov	r6, r0
 8007e2c:	460f      	mov	r7, r1
 8007e2e:	f04f 0200 	mov.w	r2, #0
 8007e32:	4bc1      	ldr	r3, [pc, #772]	; (8008138 <_dtoa_r+0x860>)
 8007e34:	d1d2      	bne.n	8007ddc <_dtoa_r+0x504>
 8007e36:	f8dd a000 	ldr.w	sl, [sp]
 8007e3a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007e3e:	4632      	mov	r2, r6
 8007e40:	463b      	mov	r3, r7
 8007e42:	4630      	mov	r0, r6
 8007e44:	4639      	mov	r1, r7
 8007e46:	f7f8 f9e1 	bl	800020c <__adddf3>
 8007e4a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007e4e:	4606      	mov	r6, r0
 8007e50:	460f      	mov	r7, r1
 8007e52:	f7f8 fe21 	bl	8000a98 <__aeabi_dcmpgt>
 8007e56:	b958      	cbnz	r0, 8007e70 <_dtoa_r+0x598>
 8007e58:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007e5c:	4630      	mov	r0, r6
 8007e5e:	4639      	mov	r1, r7
 8007e60:	f7f8 fdf2 	bl	8000a48 <__aeabi_dcmpeq>
 8007e64:	2800      	cmp	r0, #0
 8007e66:	f000 818d 	beq.w	8008184 <_dtoa_r+0x8ac>
 8007e6a:	07e9      	lsls	r1, r5, #31
 8007e6c:	f140 818a 	bpl.w	8008184 <_dtoa_r+0x8ac>
 8007e70:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007e74:	e005      	b.n	8007e82 <_dtoa_r+0x5aa>
 8007e76:	459b      	cmp	fp, r3
 8007e78:	f000 8373 	beq.w	8008562 <_dtoa_r+0xc8a>
 8007e7c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8007e80:	461c      	mov	r4, r3
 8007e82:	2d39      	cmp	r5, #57	; 0x39
 8007e84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007e88:	d0f5      	beq.n	8007e76 <_dtoa_r+0x59e>
 8007e8a:	3501      	adds	r5, #1
 8007e8c:	701d      	strb	r5, [r3, #0]
 8007e8e:	e179      	b.n	8008184 <_dtoa_r+0x8ac>
 8007e90:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007e92:	2a00      	cmp	r2, #0
 8007e94:	d03b      	beq.n	8007f0e <_dtoa_r+0x636>
 8007e96:	9a02      	ldr	r2, [sp, #8]
 8007e98:	2a01      	cmp	r2, #1
 8007e9a:	f340 820b 	ble.w	80082b4 <_dtoa_r+0x9dc>
 8007e9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007ea0:	1e5f      	subs	r7, r3, #1
 8007ea2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007ea4:	42bb      	cmp	r3, r7
 8007ea6:	f2c0 82e6 	blt.w	8008476 <_dtoa_r+0xb9e>
 8007eaa:	1bdf      	subs	r7, r3, r7
 8007eac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007eae:	2b00      	cmp	r3, #0
 8007eb0:	f2c0 830b 	blt.w	80084ca <_dtoa_r+0xbf2>
 8007eb4:	9a08      	ldr	r2, [sp, #32]
 8007eb6:	4614      	mov	r4, r2
 8007eb8:	441a      	add	r2, r3
 8007eba:	4498      	add	r8, r3
 8007ebc:	9208      	str	r2, [sp, #32]
 8007ebe:	2101      	movs	r1, #1
 8007ec0:	4648      	mov	r0, r9
 8007ec2:	f001 fadd 	bl	8009480 <__i2b>
 8007ec6:	4605      	mov	r5, r0
 8007ec8:	e024      	b.n	8007f14 <_dtoa_r+0x63c>
 8007eca:	2301      	movs	r3, #1
 8007ecc:	930d      	str	r3, [sp, #52]	; 0x34
 8007ece:	e5af      	b.n	8007a30 <_dtoa_r+0x158>
 8007ed0:	9a08      	ldr	r2, [sp, #32]
 8007ed2:	9b06      	ldr	r3, [sp, #24]
 8007ed4:	1ad2      	subs	r2, r2, r3
 8007ed6:	425b      	negs	r3, r3
 8007ed8:	930b      	str	r3, [sp, #44]	; 0x2c
 8007eda:	2300      	movs	r3, #0
 8007edc:	9208      	str	r2, [sp, #32]
 8007ede:	930c      	str	r3, [sp, #48]	; 0x30
 8007ee0:	e5b5      	b.n	8007a4e <_dtoa_r+0x176>
 8007ee2:	f1c4 0301 	rsb	r3, r4, #1
 8007ee6:	9308      	str	r3, [sp, #32]
 8007ee8:	f04f 0800 	mov.w	r8, #0
 8007eec:	e5a7      	b.n	8007a3e <_dtoa_r+0x166>
 8007eee:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8007ef2:	4640      	mov	r0, r8
 8007ef4:	f7f8 fad6 	bl	80004a4 <__aeabi_i2d>
 8007ef8:	4632      	mov	r2, r6
 8007efa:	463b      	mov	r3, r7
 8007efc:	f7f8 fda4 	bl	8000a48 <__aeabi_dcmpeq>
 8007f00:	2800      	cmp	r0, #0
 8007f02:	f47f ad81 	bne.w	8007a08 <_dtoa_r+0x130>
 8007f06:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007f0a:	9306      	str	r3, [sp, #24]
 8007f0c:	e57c      	b.n	8007a08 <_dtoa_r+0x130>
 8007f0e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007f10:	9c08      	ldr	r4, [sp, #32]
 8007f12:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007f14:	2c00      	cmp	r4, #0
 8007f16:	dd0c      	ble.n	8007f32 <_dtoa_r+0x65a>
 8007f18:	f1b8 0f00 	cmp.w	r8, #0
 8007f1c:	dd09      	ble.n	8007f32 <_dtoa_r+0x65a>
 8007f1e:	4544      	cmp	r4, r8
 8007f20:	9a08      	ldr	r2, [sp, #32]
 8007f22:	4623      	mov	r3, r4
 8007f24:	bfa8      	it	ge
 8007f26:	4643      	movge	r3, r8
 8007f28:	1ad2      	subs	r2, r2, r3
 8007f2a:	9208      	str	r2, [sp, #32]
 8007f2c:	1ae4      	subs	r4, r4, r3
 8007f2e:	eba8 0803 	sub.w	r8, r8, r3
 8007f32:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007f34:	b16b      	cbz	r3, 8007f52 <_dtoa_r+0x67a>
 8007f36:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007f38:	2a00      	cmp	r2, #0
 8007f3a:	f000 8290 	beq.w	800845e <_dtoa_r+0xb86>
 8007f3e:	1bde      	subs	r6, r3, r7
 8007f40:	2f00      	cmp	r7, #0
 8007f42:	f040 819b 	bne.w	800827c <_dtoa_r+0x9a4>
 8007f46:	4651      	mov	r1, sl
 8007f48:	4632      	mov	r2, r6
 8007f4a:	4648      	mov	r0, r9
 8007f4c:	f001 fb48 	bl	80095e0 <__pow5mult>
 8007f50:	4682      	mov	sl, r0
 8007f52:	2101      	movs	r1, #1
 8007f54:	4648      	mov	r0, r9
 8007f56:	f001 fa93 	bl	8009480 <__i2b>
 8007f5a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007f5c:	4606      	mov	r6, r0
 8007f5e:	2a00      	cmp	r2, #0
 8007f60:	f040 8125 	bne.w	80081ae <_dtoa_r+0x8d6>
 8007f64:	9b02      	ldr	r3, [sp, #8]
 8007f66:	2b01      	cmp	r3, #1
 8007f68:	f340 816c 	ble.w	8008244 <_dtoa_r+0x96c>
 8007f6c:	2001      	movs	r0, #1
 8007f6e:	4440      	add	r0, r8
 8007f70:	f010 001f 	ands.w	r0, r0, #31
 8007f74:	f000 8119 	beq.w	80081aa <_dtoa_r+0x8d2>
 8007f78:	f1c0 0320 	rsb	r3, r0, #32
 8007f7c:	2b04      	cmp	r3, #4
 8007f7e:	f340 83ac 	ble.w	80086da <_dtoa_r+0xe02>
 8007f82:	f1c0 001c 	rsb	r0, r0, #28
 8007f86:	9b08      	ldr	r3, [sp, #32]
 8007f88:	4403      	add	r3, r0
 8007f8a:	9308      	str	r3, [sp, #32]
 8007f8c:	4404      	add	r4, r0
 8007f8e:	4480      	add	r8, r0
 8007f90:	9b08      	ldr	r3, [sp, #32]
 8007f92:	2b00      	cmp	r3, #0
 8007f94:	dd05      	ble.n	8007fa2 <_dtoa_r+0x6ca>
 8007f96:	4651      	mov	r1, sl
 8007f98:	461a      	mov	r2, r3
 8007f9a:	4648      	mov	r0, r9
 8007f9c:	f001 fb70 	bl	8009680 <__lshift>
 8007fa0:	4682      	mov	sl, r0
 8007fa2:	f1b8 0f00 	cmp.w	r8, #0
 8007fa6:	dd05      	ble.n	8007fb4 <_dtoa_r+0x6dc>
 8007fa8:	4631      	mov	r1, r6
 8007faa:	4642      	mov	r2, r8
 8007fac:	4648      	mov	r0, r9
 8007fae:	f001 fb67 	bl	8009680 <__lshift>
 8007fb2:	4606      	mov	r6, r0
 8007fb4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007fb6:	2b00      	cmp	r3, #0
 8007fb8:	d177      	bne.n	80080aa <_dtoa_r+0x7d2>
 8007fba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007fbc:	2b00      	cmp	r3, #0
 8007fbe:	f340 8209 	ble.w	80083d4 <_dtoa_r+0xafc>
 8007fc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007fc4:	2b00      	cmp	r3, #0
 8007fc6:	f000 8089 	beq.w	80080dc <_dtoa_r+0x804>
 8007fca:	2c00      	cmp	r4, #0
 8007fcc:	f300 816b 	bgt.w	80082a6 <_dtoa_r+0x9ce>
 8007fd0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007fd2:	2b00      	cmp	r3, #0
 8007fd4:	f040 81cd 	bne.w	8008372 <_dtoa_r+0xa9a>
 8007fd8:	46a8      	mov	r8, r5
 8007fda:	9a00      	ldr	r2, [sp, #0]
 8007fdc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007fe0:	f002 0201 	and.w	r2, r2, #1
 8007fe4:	920a      	str	r2, [sp, #40]	; 0x28
 8007fe6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007fe8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8007fec:	441a      	add	r2, r3
 8007fee:	465f      	mov	r7, fp
 8007ff0:	9209      	str	r2, [sp, #36]	; 0x24
 8007ff2:	46b3      	mov	fp, r6
 8007ff4:	4659      	mov	r1, fp
 8007ff6:	4650      	mov	r0, sl
 8007ff8:	f7ff fbdc 	bl	80077b4 <quorem>
 8007ffc:	4629      	mov	r1, r5
 8007ffe:	4604      	mov	r4, r0
 8008000:	4650      	mov	r0, sl
 8008002:	f001 fb93 	bl	800972c <__mcmp>
 8008006:	4659      	mov	r1, fp
 8008008:	4606      	mov	r6, r0
 800800a:	4642      	mov	r2, r8
 800800c:	4648      	mov	r0, r9
 800800e:	f001 fba9 	bl	8009764 <__mdiff>
 8008012:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8008016:	9300      	str	r3, [sp, #0]
 8008018:	68c3      	ldr	r3, [r0, #12]
 800801a:	4601      	mov	r1, r0
 800801c:	2b00      	cmp	r3, #0
 800801e:	f040 81d4 	bne.w	80083ca <_dtoa_r+0xaf2>
 8008022:	9008      	str	r0, [sp, #32]
 8008024:	4650      	mov	r0, sl
 8008026:	f001 fb81 	bl	800972c <__mcmp>
 800802a:	9a08      	ldr	r2, [sp, #32]
 800802c:	9007      	str	r0, [sp, #28]
 800802e:	4611      	mov	r1, r2
 8008030:	4648      	mov	r0, r9
 8008032:	f001 f98b 	bl	800934c <_Bfree>
 8008036:	9b07      	ldr	r3, [sp, #28]
 8008038:	b933      	cbnz	r3, 8008048 <_dtoa_r+0x770>
 800803a:	9a02      	ldr	r2, [sp, #8]
 800803c:	b922      	cbnz	r2, 8008048 <_dtoa_r+0x770>
 800803e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008040:	2b00      	cmp	r3, #0
 8008042:	f000 8319 	beq.w	8008678 <_dtoa_r+0xda0>
 8008046:	9b02      	ldr	r3, [sp, #8]
 8008048:	2e00      	cmp	r6, #0
 800804a:	f2c0 821c 	blt.w	8008486 <_dtoa_r+0xbae>
 800804e:	d105      	bne.n	800805c <_dtoa_r+0x784>
 8008050:	9a02      	ldr	r2, [sp, #8]
 8008052:	b91a      	cbnz	r2, 800805c <_dtoa_r+0x784>
 8008054:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8008056:	2a00      	cmp	r2, #0
 8008058:	f000 8215 	beq.w	8008486 <_dtoa_r+0xbae>
 800805c:	2b00      	cmp	r3, #0
 800805e:	f107 0401 	add.w	r4, r7, #1
 8008062:	f300 8225 	bgt.w	80084b0 <_dtoa_r+0xbd8>
 8008066:	9b00      	ldr	r3, [sp, #0]
 8008068:	703b      	strb	r3, [r7, #0]
 800806a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800806c:	42bb      	cmp	r3, r7
 800806e:	f000 8230 	beq.w	80084d2 <_dtoa_r+0xbfa>
 8008072:	4651      	mov	r1, sl
 8008074:	2300      	movs	r3, #0
 8008076:	220a      	movs	r2, #10
 8008078:	4648      	mov	r0, r9
 800807a:	f001 f971 	bl	8009360 <__multadd>
 800807e:	4545      	cmp	r5, r8
 8008080:	4682      	mov	sl, r0
 8008082:	4629      	mov	r1, r5
 8008084:	f04f 0300 	mov.w	r3, #0
 8008088:	f04f 020a 	mov.w	r2, #10
 800808c:	4648      	mov	r0, r9
 800808e:	f000 8196 	beq.w	80083be <_dtoa_r+0xae6>
 8008092:	f001 f965 	bl	8009360 <__multadd>
 8008096:	4641      	mov	r1, r8
 8008098:	4605      	mov	r5, r0
 800809a:	2300      	movs	r3, #0
 800809c:	220a      	movs	r2, #10
 800809e:	4648      	mov	r0, r9
 80080a0:	f001 f95e 	bl	8009360 <__multadd>
 80080a4:	4627      	mov	r7, r4
 80080a6:	4680      	mov	r8, r0
 80080a8:	e7a4      	b.n	8007ff4 <_dtoa_r+0x71c>
 80080aa:	4631      	mov	r1, r6
 80080ac:	4650      	mov	r0, sl
 80080ae:	f001 fb3d 	bl	800972c <__mcmp>
 80080b2:	2800      	cmp	r0, #0
 80080b4:	da81      	bge.n	8007fba <_dtoa_r+0x6e2>
 80080b6:	9f06      	ldr	r7, [sp, #24]
 80080b8:	4651      	mov	r1, sl
 80080ba:	2300      	movs	r3, #0
 80080bc:	220a      	movs	r2, #10
 80080be:	4648      	mov	r0, r9
 80080c0:	3f01      	subs	r7, #1
 80080c2:	9706      	str	r7, [sp, #24]
 80080c4:	f001 f94c 	bl	8009360 <__multadd>
 80080c8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80080ca:	4682      	mov	sl, r0
 80080cc:	2b00      	cmp	r3, #0
 80080ce:	f040 82eb 	bne.w	80086a8 <_dtoa_r+0xdd0>
 80080d2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80080d4:	2b00      	cmp	r3, #0
 80080d6:	f340 82f3 	ble.w	80086c0 <_dtoa_r+0xde8>
 80080da:	9309      	str	r3, [sp, #36]	; 0x24
 80080dc:	465c      	mov	r4, fp
 80080de:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80080e2:	e002      	b.n	80080ea <_dtoa_r+0x812>
 80080e4:	f001 f93c 	bl	8009360 <__multadd>
 80080e8:	4682      	mov	sl, r0
 80080ea:	4631      	mov	r1, r6
 80080ec:	4650      	mov	r0, sl
 80080ee:	f7ff fb61 	bl	80077b4 <quorem>
 80080f2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80080f6:	f804 7b01 	strb.w	r7, [r4], #1
 80080fa:	eba4 030b 	sub.w	r3, r4, fp
 80080fe:	4598      	cmp	r8, r3
 8008100:	f04f 020a 	mov.w	r2, #10
 8008104:	f04f 0300 	mov.w	r3, #0
 8008108:	4651      	mov	r1, sl
 800810a:	4648      	mov	r0, r9
 800810c:	dcea      	bgt.n	80080e4 <_dtoa_r+0x80c>
 800810e:	2300      	movs	r3, #0
 8008110:	9700      	str	r7, [sp, #0]
 8008112:	9302      	str	r3, [sp, #8]
 8008114:	4651      	mov	r1, sl
 8008116:	2201      	movs	r2, #1
 8008118:	4648      	mov	r0, r9
 800811a:	f001 fab1 	bl	8009680 <__lshift>
 800811e:	4631      	mov	r1, r6
 8008120:	4682      	mov	sl, r0
 8008122:	f001 fb03 	bl	800972c <__mcmp>
 8008126:	2800      	cmp	r0, #0
 8008128:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800812c:	dc14      	bgt.n	8008158 <_dtoa_r+0x880>
 800812e:	d108      	bne.n	8008142 <_dtoa_r+0x86a>
 8008130:	9b00      	ldr	r3, [sp, #0]
 8008132:	07db      	lsls	r3, r3, #31
 8008134:	d410      	bmi.n	8008158 <_dtoa_r+0x880>
 8008136:	e004      	b.n	8008142 <_dtoa_r+0x86a>
 8008138:	40240000 	.word	0x40240000
 800813c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8008140:	461c      	mov	r4, r3
 8008142:	2a30      	cmp	r2, #48	; 0x30
 8008144:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8008148:	d0f8      	beq.n	800813c <_dtoa_r+0x864>
 800814a:	e00b      	b.n	8008164 <_dtoa_r+0x88c>
 800814c:	459b      	cmp	fp, r3
 800814e:	f000 814e 	beq.w	80083ee <_dtoa_r+0xb16>
 8008152:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8008156:	461c      	mov	r4, r3
 8008158:	2a39      	cmp	r2, #57	; 0x39
 800815a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800815e:	d0f5      	beq.n	800814c <_dtoa_r+0x874>
 8008160:	3201      	adds	r2, #1
 8008162:	701a      	strb	r2, [r3, #0]
 8008164:	4631      	mov	r1, r6
 8008166:	4648      	mov	r0, r9
 8008168:	f001 f8f0 	bl	800934c <_Bfree>
 800816c:	b155      	cbz	r5, 8008184 <_dtoa_r+0x8ac>
 800816e:	9902      	ldr	r1, [sp, #8]
 8008170:	b121      	cbz	r1, 800817c <_dtoa_r+0x8a4>
 8008172:	42a9      	cmp	r1, r5
 8008174:	d002      	beq.n	800817c <_dtoa_r+0x8a4>
 8008176:	4648      	mov	r0, r9
 8008178:	f001 f8e8 	bl	800934c <_Bfree>
 800817c:	4629      	mov	r1, r5
 800817e:	4648      	mov	r0, r9
 8008180:	f001 f8e4 	bl	800934c <_Bfree>
 8008184:	4651      	mov	r1, sl
 8008186:	4648      	mov	r0, r9
 8008188:	f001 f8e0 	bl	800934c <_Bfree>
 800818c:	2200      	movs	r2, #0
 800818e:	9b06      	ldr	r3, [sp, #24]
 8008190:	7022      	strb	r2, [r4, #0]
 8008192:	9a05      	ldr	r2, [sp, #20]
 8008194:	3301      	adds	r3, #1
 8008196:	6013      	str	r3, [r2, #0]
 8008198:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800819a:	2b00      	cmp	r3, #0
 800819c:	f43f abdb 	beq.w	8007956 <_dtoa_r+0x7e>
 80081a0:	4658      	mov	r0, fp
 80081a2:	601c      	str	r4, [r3, #0]
 80081a4:	b01b      	add	sp, #108	; 0x6c
 80081a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80081aa:	201c      	movs	r0, #28
 80081ac:	e6eb      	b.n	8007f86 <_dtoa_r+0x6ae>
 80081ae:	4601      	mov	r1, r0
 80081b0:	4648      	mov	r0, r9
 80081b2:	f001 fa15 	bl	80095e0 <__pow5mult>
 80081b6:	9b02      	ldr	r3, [sp, #8]
 80081b8:	2b01      	cmp	r3, #1
 80081ba:	4606      	mov	r6, r0
 80081bc:	f340 80d4 	ble.w	8008368 <_dtoa_r+0xa90>
 80081c0:	2300      	movs	r3, #0
 80081c2:	930c      	str	r3, [sp, #48]	; 0x30
 80081c4:	6933      	ldr	r3, [r6, #16]
 80081c6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80081ca:	6918      	ldr	r0, [r3, #16]
 80081cc:	f001 f908 	bl	80093e0 <__hi0bits>
 80081d0:	f1c0 0020 	rsb	r0, r0, #32
 80081d4:	e6cb      	b.n	8007f6e <_dtoa_r+0x696>
 80081d6:	900d      	str	r0, [sp, #52]	; 0x34
 80081d8:	e42a      	b.n	8007a30 <_dtoa_r+0x158>
 80081da:	2501      	movs	r5, #1
 80081dc:	e440      	b.n	8007a60 <_dtoa_r+0x188>
 80081de:	f1c3 0820 	rsb	r8, r3, #32
 80081e2:	9b00      	ldr	r3, [sp, #0]
 80081e4:	fa03 f008 	lsl.w	r0, r3, r8
 80081e8:	f7ff bbd8 	b.w	800799c <_dtoa_r+0xc4>
 80081ec:	2300      	movs	r3, #0
 80081ee:	930a      	str	r3, [sp, #40]	; 0x28
 80081f0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80081f4:	4413      	add	r3, r2
 80081f6:	930e      	str	r3, [sp, #56]	; 0x38
 80081f8:	3301      	adds	r3, #1
 80081fa:	2b01      	cmp	r3, #1
 80081fc:	461e      	mov	r6, r3
 80081fe:	9309      	str	r3, [sp, #36]	; 0x24
 8008200:	bfb8      	it	lt
 8008202:	2601      	movlt	r6, #1
 8008204:	2100      	movs	r1, #0
 8008206:	2e17      	cmp	r6, #23
 8008208:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800820c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800820e:	f77f ac89 	ble.w	8007b24 <_dtoa_r+0x24c>
 8008212:	2201      	movs	r2, #1
 8008214:	2304      	movs	r3, #4
 8008216:	005b      	lsls	r3, r3, #1
 8008218:	f103 0014 	add.w	r0, r3, #20
 800821c:	42b0      	cmp	r0, r6
 800821e:	4611      	mov	r1, r2
 8008220:	f102 0201 	add.w	r2, r2, #1
 8008224:	d9f7      	bls.n	8008216 <_dtoa_r+0x93e>
 8008226:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800822a:	e47b      	b.n	8007b24 <_dtoa_r+0x24c>
 800822c:	2300      	movs	r3, #0
 800822e:	930a      	str	r3, [sp, #40]	; 0x28
 8008230:	9e07      	ldr	r6, [sp, #28]
 8008232:	2e00      	cmp	r6, #0
 8008234:	f340 80e2 	ble.w	80083fc <_dtoa_r+0xb24>
 8008238:	960e      	str	r6, [sp, #56]	; 0x38
 800823a:	9609      	str	r6, [sp, #36]	; 0x24
 800823c:	e7e2      	b.n	8008204 <_dtoa_r+0x92c>
 800823e:	2301      	movs	r3, #1
 8008240:	930a      	str	r3, [sp, #40]	; 0x28
 8008242:	e7f5      	b.n	8008230 <_dtoa_r+0x958>
 8008244:	9b00      	ldr	r3, [sp, #0]
 8008246:	2b00      	cmp	r3, #0
 8008248:	f47f ae90 	bne.w	8007f6c <_dtoa_r+0x694>
 800824c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8008250:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8008254:	2b00      	cmp	r3, #0
 8008256:	f040 8192 	bne.w	800857e <_dtoa_r+0xca6>
 800825a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800825e:	0d1b      	lsrs	r3, r3, #20
 8008260:	051b      	lsls	r3, r3, #20
 8008262:	b12b      	cbz	r3, 8008270 <_dtoa_r+0x998>
 8008264:	9b08      	ldr	r3, [sp, #32]
 8008266:	3301      	adds	r3, #1
 8008268:	9308      	str	r3, [sp, #32]
 800826a:	f108 0801 	add.w	r8, r8, #1
 800826e:	2301      	movs	r3, #1
 8008270:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8008272:	930c      	str	r3, [sp, #48]	; 0x30
 8008274:	2a00      	cmp	r2, #0
 8008276:	f43f ae79 	beq.w	8007f6c <_dtoa_r+0x694>
 800827a:	e7a3      	b.n	80081c4 <_dtoa_r+0x8ec>
 800827c:	463a      	mov	r2, r7
 800827e:	4629      	mov	r1, r5
 8008280:	4648      	mov	r0, r9
 8008282:	f001 f9ad 	bl	80095e0 <__pow5mult>
 8008286:	4652      	mov	r2, sl
 8008288:	4601      	mov	r1, r0
 800828a:	4605      	mov	r5, r0
 800828c:	4648      	mov	r0, r9
 800828e:	f001 f901 	bl	8009494 <__multiply>
 8008292:	4651      	mov	r1, sl
 8008294:	4607      	mov	r7, r0
 8008296:	4648      	mov	r0, r9
 8008298:	f001 f858 	bl	800934c <_Bfree>
 800829c:	46ba      	mov	sl, r7
 800829e:	2e00      	cmp	r6, #0
 80082a0:	f43f ae57 	beq.w	8007f52 <_dtoa_r+0x67a>
 80082a4:	e64f      	b.n	8007f46 <_dtoa_r+0x66e>
 80082a6:	4629      	mov	r1, r5
 80082a8:	4622      	mov	r2, r4
 80082aa:	4648      	mov	r0, r9
 80082ac:	f001 f9e8 	bl	8009680 <__lshift>
 80082b0:	4605      	mov	r5, r0
 80082b2:	e68d      	b.n	8007fd0 <_dtoa_r+0x6f8>
 80082b4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80082b6:	2a00      	cmp	r2, #0
 80082b8:	f000 815d 	beq.w	8008576 <_dtoa_r+0xc9e>
 80082bc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80082c0:	9a08      	ldr	r2, [sp, #32]
 80082c2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80082c4:	4614      	mov	r4, r2
 80082c6:	441a      	add	r2, r3
 80082c8:	4498      	add	r8, r3
 80082ca:	9208      	str	r2, [sp, #32]
 80082cc:	e5f7      	b.n	8007ebe <_dtoa_r+0x5e6>
 80082ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80082d0:	2b00      	cmp	r3, #0
 80082d2:	f73f ad3e 	bgt.w	8007d52 <_dtoa_r+0x47a>
 80082d6:	f040 80bc 	bne.w	8008452 <_dtoa_r+0xb7a>
 80082da:	ec51 0b17 	vmov	r0, r1, d7
 80082de:	2200      	movs	r2, #0
 80082e0:	4bb2      	ldr	r3, [pc, #712]	; (80085ac <_dtoa_r+0xcd4>)
 80082e2:	f7f8 f949 	bl	8000578 <__aeabi_dmul>
 80082e6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80082ea:	f7f8 fbcb 	bl	8000a84 <__aeabi_dcmpge>
 80082ee:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80082f0:	4635      	mov	r5, r6
 80082f2:	2800      	cmp	r0, #0
 80082f4:	d176      	bne.n	80083e4 <_dtoa_r+0xb0c>
 80082f6:	9a06      	ldr	r2, [sp, #24]
 80082f8:	2331      	movs	r3, #49	; 0x31
 80082fa:	3201      	adds	r2, #1
 80082fc:	9206      	str	r2, [sp, #24]
 80082fe:	f88b 3000 	strb.w	r3, [fp]
 8008302:	f10b 0401 	add.w	r4, fp, #1
 8008306:	4631      	mov	r1, r6
 8008308:	4648      	mov	r0, r9
 800830a:	f001 f81f 	bl	800934c <_Bfree>
 800830e:	2d00      	cmp	r5, #0
 8008310:	f47f af34 	bne.w	800817c <_dtoa_r+0x8a4>
 8008314:	e736      	b.n	8008184 <_dtoa_r+0x8ac>
 8008316:	f000 8142 	beq.w	800859e <_dtoa_r+0xcc6>
 800831a:	9b06      	ldr	r3, [sp, #24]
 800831c:	425c      	negs	r4, r3
 800831e:	4ba4      	ldr	r3, [pc, #656]	; (80085b0 <_dtoa_r+0xcd8>)
 8008320:	f004 020f 	and.w	r2, r4, #15
 8008324:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8008328:	e9d3 2300 	ldrd	r2, r3, [r3]
 800832c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8008330:	f7f8 f922 	bl	8000578 <__aeabi_dmul>
 8008334:	1124      	asrs	r4, r4, #4
 8008336:	e9cd 0100 	strd	r0, r1, [sp]
 800833a:	f000 81c6 	beq.w	80086ca <_dtoa_r+0xdf2>
 800833e:	4d9d      	ldr	r5, [pc, #628]	; (80085b4 <_dtoa_r+0xcdc>)
 8008340:	2300      	movs	r3, #0
 8008342:	2602      	movs	r6, #2
 8008344:	07e7      	lsls	r7, r4, #31
 8008346:	d505      	bpl.n	8008354 <_dtoa_r+0xa7c>
 8008348:	e9d5 2300 	ldrd	r2, r3, [r5]
 800834c:	f7f8 f914 	bl	8000578 <__aeabi_dmul>
 8008350:	3601      	adds	r6, #1
 8008352:	2301      	movs	r3, #1
 8008354:	1064      	asrs	r4, r4, #1
 8008356:	f105 0508 	add.w	r5, r5, #8
 800835a:	d1f3      	bne.n	8008344 <_dtoa_r+0xa6c>
 800835c:	2b00      	cmp	r3, #0
 800835e:	f43f ac27 	beq.w	8007bb0 <_dtoa_r+0x2d8>
 8008362:	e9cd 0100 	strd	r0, r1, [sp]
 8008366:	e423      	b.n	8007bb0 <_dtoa_r+0x2d8>
 8008368:	9b00      	ldr	r3, [sp, #0]
 800836a:	2b00      	cmp	r3, #0
 800836c:	f43f af6e 	beq.w	800824c <_dtoa_r+0x974>
 8008370:	e726      	b.n	80081c0 <_dtoa_r+0x8e8>
 8008372:	6869      	ldr	r1, [r5, #4]
 8008374:	4648      	mov	r0, r9
 8008376:	f000 ffc3 	bl	8009300 <_Balloc>
 800837a:	692b      	ldr	r3, [r5, #16]
 800837c:	3302      	adds	r3, #2
 800837e:	009a      	lsls	r2, r3, #2
 8008380:	4604      	mov	r4, r0
 8008382:	f105 010c 	add.w	r1, r5, #12
 8008386:	300c      	adds	r0, #12
 8008388:	f7f8 fd9c 	bl	8000ec4 <memcpy>
 800838c:	4621      	mov	r1, r4
 800838e:	2201      	movs	r2, #1
 8008390:	4648      	mov	r0, r9
 8008392:	f001 f975 	bl	8009680 <__lshift>
 8008396:	4680      	mov	r8, r0
 8008398:	e61f      	b.n	8007fda <_dtoa_r+0x702>
 800839a:	2400      	movs	r4, #0
 800839c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80083a0:	4621      	mov	r1, r4
 80083a2:	4648      	mov	r0, r9
 80083a4:	f000 ffac 	bl	8009300 <_Balloc>
 80083a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80083ac:	930e      	str	r3, [sp, #56]	; 0x38
 80083ae:	9309      	str	r3, [sp, #36]	; 0x24
 80083b0:	2301      	movs	r3, #1
 80083b2:	4683      	mov	fp, r0
 80083b4:	9407      	str	r4, [sp, #28]
 80083b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80083ba:	930a      	str	r3, [sp, #40]	; 0x28
 80083bc:	e4b6      	b.n	8007d2c <_dtoa_r+0x454>
 80083be:	f000 ffcf 	bl	8009360 <__multadd>
 80083c2:	4627      	mov	r7, r4
 80083c4:	4605      	mov	r5, r0
 80083c6:	4680      	mov	r8, r0
 80083c8:	e614      	b.n	8007ff4 <_dtoa_r+0x71c>
 80083ca:	4648      	mov	r0, r9
 80083cc:	f000 ffbe 	bl	800934c <_Bfree>
 80083d0:	2301      	movs	r3, #1
 80083d2:	e639      	b.n	8008048 <_dtoa_r+0x770>
 80083d4:	9b02      	ldr	r3, [sp, #8]
 80083d6:	2b02      	cmp	r3, #2
 80083d8:	f77f adf3 	ble.w	8007fc2 <_dtoa_r+0x6ea>
 80083dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80083de:	2b00      	cmp	r3, #0
 80083e0:	f000 80cf 	beq.w	8008582 <_dtoa_r+0xcaa>
 80083e4:	9b07      	ldr	r3, [sp, #28]
 80083e6:	43db      	mvns	r3, r3
 80083e8:	9306      	str	r3, [sp, #24]
 80083ea:	465c      	mov	r4, fp
 80083ec:	e78b      	b.n	8008306 <_dtoa_r+0xa2e>
 80083ee:	9a06      	ldr	r2, [sp, #24]
 80083f0:	2331      	movs	r3, #49	; 0x31
 80083f2:	3201      	adds	r2, #1
 80083f4:	9206      	str	r2, [sp, #24]
 80083f6:	f88b 3000 	strb.w	r3, [fp]
 80083fa:	e6b3      	b.n	8008164 <_dtoa_r+0x88c>
 80083fc:	2401      	movs	r4, #1
 80083fe:	9409      	str	r4, [sp, #36]	; 0x24
 8008400:	9407      	str	r4, [sp, #28]
 8008402:	f7ff bb8b 	b.w	8007b1c <_dtoa_r+0x244>
 8008406:	4630      	mov	r0, r6
 8008408:	f7f8 f84c 	bl	80004a4 <__aeabi_i2d>
 800840c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008410:	f7f8 f8b2 	bl	8000578 <__aeabi_dmul>
 8008414:	2200      	movs	r2, #0
 8008416:	4b68      	ldr	r3, [pc, #416]	; (80085b8 <_dtoa_r+0xce0>)
 8008418:	f7f7 fef8 	bl	800020c <__adddf3>
 800841c:	4606      	mov	r6, r0
 800841e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008422:	2200      	movs	r2, #0
 8008424:	4b61      	ldr	r3, [pc, #388]	; (80085ac <_dtoa_r+0xcd4>)
 8008426:	e9dd 0100 	ldrd	r0, r1, [sp]
 800842a:	f7f7 feed 	bl	8000208 <__aeabi_dsub>
 800842e:	4632      	mov	r2, r6
 8008430:	463b      	mov	r3, r7
 8008432:	4604      	mov	r4, r0
 8008434:	460d      	mov	r5, r1
 8008436:	f7f8 fb2f 	bl	8000a98 <__aeabi_dcmpgt>
 800843a:	2800      	cmp	r0, #0
 800843c:	d14f      	bne.n	80084de <_dtoa_r+0xc06>
 800843e:	4632      	mov	r2, r6
 8008440:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8008444:	4620      	mov	r0, r4
 8008446:	4629      	mov	r1, r5
 8008448:	f7f8 fb08 	bl	8000a5c <__aeabi_dcmplt>
 800844c:	2800      	cmp	r0, #0
 800844e:	f43f ac69 	beq.w	8007d24 <_dtoa_r+0x44c>
 8008452:	2600      	movs	r6, #0
 8008454:	4635      	mov	r5, r6
 8008456:	e7c5      	b.n	80083e4 <_dtoa_r+0xb0c>
 8008458:	2301      	movs	r3, #1
 800845a:	930a      	str	r3, [sp, #40]	; 0x28
 800845c:	e6c8      	b.n	80081f0 <_dtoa_r+0x918>
 800845e:	4651      	mov	r1, sl
 8008460:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8008462:	4648      	mov	r0, r9
 8008464:	f001 f8bc 	bl	80095e0 <__pow5mult>
 8008468:	4682      	mov	sl, r0
 800846a:	e572      	b.n	8007f52 <_dtoa_r+0x67a>
 800846c:	f8dd a000 	ldr.w	sl, [sp]
 8008470:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008474:	e686      	b.n	8008184 <_dtoa_r+0x8ac>
 8008476:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008478:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800847a:	1afb      	subs	r3, r7, r3
 800847c:	441a      	add	r2, r3
 800847e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8008482:	2700      	movs	r7, #0
 8008484:	e512      	b.n	8007eac <_dtoa_r+0x5d4>
 8008486:	2b00      	cmp	r3, #0
 8008488:	9402      	str	r4, [sp, #8]
 800848a:	465e      	mov	r6, fp
 800848c:	f107 0401 	add.w	r4, r7, #1
 8008490:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8008494:	f300 80ba 	bgt.w	800860c <_dtoa_r+0xd34>
 8008498:	9b00      	ldr	r3, [sp, #0]
 800849a:	9502      	str	r5, [sp, #8]
 800849c:	703b      	strb	r3, [r7, #0]
 800849e:	4645      	mov	r5, r8
 80084a0:	e660      	b.n	8008164 <_dtoa_r+0x88c>
 80084a2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80084a6:	2602      	movs	r6, #2
 80084a8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80084ac:	f7ff bb67 	b.w	8007b7e <_dtoa_r+0x2a6>
 80084b0:	9b00      	ldr	r3, [sp, #0]
 80084b2:	2b39      	cmp	r3, #57	; 0x39
 80084b4:	465e      	mov	r6, fp
 80084b6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80084ba:	f000 80b9 	beq.w	8008630 <_dtoa_r+0xd58>
 80084be:	9b00      	ldr	r3, [sp, #0]
 80084c0:	9502      	str	r5, [sp, #8]
 80084c2:	3301      	adds	r3, #1
 80084c4:	703b      	strb	r3, [r7, #0]
 80084c6:	4645      	mov	r5, r8
 80084c8:	e64c      	b.n	8008164 <_dtoa_r+0x88c>
 80084ca:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80084ce:	1a9c      	subs	r4, r3, r2
 80084d0:	e4f5      	b.n	8007ebe <_dtoa_r+0x5e6>
 80084d2:	465e      	mov	r6, fp
 80084d4:	9502      	str	r5, [sp, #8]
 80084d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80084da:	4645      	mov	r5, r8
 80084dc:	e61a      	b.n	8008114 <_dtoa_r+0x83c>
 80084de:	2600      	movs	r6, #0
 80084e0:	4635      	mov	r5, r6
 80084e2:	e708      	b.n	80082f6 <_dtoa_r+0xa1e>
 80084e4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80084e8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80084ec:	f7f8 f844 	bl	8000578 <__aeabi_dmul>
 80084f0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80084f2:	f88b 5000 	strb.w	r5, [fp]
 80084f6:	2b01      	cmp	r3, #1
 80084f8:	e9cd 0100 	strd	r0, r1, [sp]
 80084fc:	d020      	beq.n	8008540 <_dtoa_r+0xc68>
 80084fe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8008500:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8008504:	445b      	add	r3, fp
 8008506:	4698      	mov	r8, r3
 8008508:	2200      	movs	r2, #0
 800850a:	4b2c      	ldr	r3, [pc, #176]	; (80085bc <_dtoa_r+0xce4>)
 800850c:	4630      	mov	r0, r6
 800850e:	4639      	mov	r1, r7
 8008510:	f7f8 f832 	bl	8000578 <__aeabi_dmul>
 8008514:	460f      	mov	r7, r1
 8008516:	4606      	mov	r6, r0
 8008518:	f7f8 fade 	bl	8000ad8 <__aeabi_d2iz>
 800851c:	4605      	mov	r5, r0
 800851e:	f7f7 ffc1 	bl	80004a4 <__aeabi_i2d>
 8008522:	3530      	adds	r5, #48	; 0x30
 8008524:	4602      	mov	r2, r0
 8008526:	460b      	mov	r3, r1
 8008528:	4630      	mov	r0, r6
 800852a:	4639      	mov	r1, r7
 800852c:	f7f7 fe6c 	bl	8000208 <__aeabi_dsub>
 8008530:	f804 5b01 	strb.w	r5, [r4], #1
 8008534:	4544      	cmp	r4, r8
 8008536:	4606      	mov	r6, r0
 8008538:	460f      	mov	r7, r1
 800853a:	d1e5      	bne.n	8008508 <_dtoa_r+0xc30>
 800853c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8008540:	4b1f      	ldr	r3, [pc, #124]	; (80085c0 <_dtoa_r+0xce8>)
 8008542:	2200      	movs	r2, #0
 8008544:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008548:	f7f7 fe60 	bl	800020c <__adddf3>
 800854c:	4632      	mov	r2, r6
 800854e:	463b      	mov	r3, r7
 8008550:	f7f8 fa84 	bl	8000a5c <__aeabi_dcmplt>
 8008554:	2800      	cmp	r0, #0
 8008556:	d070      	beq.n	800863a <_dtoa_r+0xd62>
 8008558:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800855a:	9306      	str	r3, [sp, #24]
 800855c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8008560:	e48f      	b.n	8007e82 <_dtoa_r+0x5aa>
 8008562:	2330      	movs	r3, #48	; 0x30
 8008564:	f88b 3000 	strb.w	r3, [fp]
 8008568:	9b06      	ldr	r3, [sp, #24]
 800856a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800856e:	3301      	adds	r3, #1
 8008570:	9306      	str	r3, [sp, #24]
 8008572:	465b      	mov	r3, fp
 8008574:	e489      	b.n	8007e8a <_dtoa_r+0x5b2>
 8008576:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8008578:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800857c:	e6a0      	b.n	80082c0 <_dtoa_r+0x9e8>
 800857e:	2300      	movs	r3, #0
 8008580:	e676      	b.n	8008270 <_dtoa_r+0x998>
 8008582:	4631      	mov	r1, r6
 8008584:	2205      	movs	r2, #5
 8008586:	4648      	mov	r0, r9
 8008588:	f000 feea 	bl	8009360 <__multadd>
 800858c:	4601      	mov	r1, r0
 800858e:	4606      	mov	r6, r0
 8008590:	4650      	mov	r0, sl
 8008592:	f001 f8cb 	bl	800972c <__mcmp>
 8008596:	2800      	cmp	r0, #0
 8008598:	f73f aead 	bgt.w	80082f6 <_dtoa_r+0xa1e>
 800859c:	e722      	b.n	80083e4 <_dtoa_r+0xb0c>
 800859e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80085a2:	2602      	movs	r6, #2
 80085a4:	ed8d 7b00 	vstr	d7, [sp]
 80085a8:	f7ff bb02 	b.w	8007bb0 <_dtoa_r+0x2d8>
 80085ac:	40140000 	.word	0x40140000
 80085b0:	0800aba8 	.word	0x0800aba8
 80085b4:	0800ab80 	.word	0x0800ab80
 80085b8:	401c0000 	.word	0x401c0000
 80085bc:	40240000 	.word	0x40240000
 80085c0:	3fe00000 	.word	0x3fe00000
 80085c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80085c6:	2b00      	cmp	r3, #0
 80085c8:	f43f af1d 	beq.w	8008406 <_dtoa_r+0xb2e>
 80085cc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80085ce:	2c00      	cmp	r4, #0
 80085d0:	f77f aba8 	ble.w	8007d24 <_dtoa_r+0x44c>
 80085d4:	2200      	movs	r2, #0
 80085d6:	4b45      	ldr	r3, [pc, #276]	; (80086ec <_dtoa_r+0xe14>)
 80085d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80085dc:	f7f7 ffcc 	bl	8000578 <__aeabi_dmul>
 80085e0:	e9cd 0100 	strd	r0, r1, [sp]
 80085e4:	1c70      	adds	r0, r6, #1
 80085e6:	f7f7 ff5d 	bl	80004a4 <__aeabi_i2d>
 80085ea:	e9dd 2300 	ldrd	r2, r3, [sp]
 80085ee:	f7f7 ffc3 	bl	8000578 <__aeabi_dmul>
 80085f2:	4b3f      	ldr	r3, [pc, #252]	; (80086f0 <_dtoa_r+0xe18>)
 80085f4:	2200      	movs	r2, #0
 80085f6:	f7f7 fe09 	bl	800020c <__adddf3>
 80085fa:	9b06      	ldr	r3, [sp, #24]
 80085fc:	9412      	str	r4, [sp, #72]	; 0x48
 80085fe:	3b01      	subs	r3, #1
 8008600:	4606      	mov	r6, r0
 8008602:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008606:	9316      	str	r3, [sp, #88]	; 0x58
 8008608:	f7ff baf3 	b.w	8007bf2 <_dtoa_r+0x31a>
 800860c:	4651      	mov	r1, sl
 800860e:	2201      	movs	r2, #1
 8008610:	4648      	mov	r0, r9
 8008612:	f001 f835 	bl	8009680 <__lshift>
 8008616:	4631      	mov	r1, r6
 8008618:	4682      	mov	sl, r0
 800861a:	f001 f887 	bl	800972c <__mcmp>
 800861e:	2800      	cmp	r0, #0
 8008620:	dd3b      	ble.n	800869a <_dtoa_r+0xdc2>
 8008622:	9b00      	ldr	r3, [sp, #0]
 8008624:	2b39      	cmp	r3, #57	; 0x39
 8008626:	d003      	beq.n	8008630 <_dtoa_r+0xd58>
 8008628:	9b02      	ldr	r3, [sp, #8]
 800862a:	3331      	adds	r3, #49	; 0x31
 800862c:	9300      	str	r3, [sp, #0]
 800862e:	e733      	b.n	8008498 <_dtoa_r+0xbc0>
 8008630:	2239      	movs	r2, #57	; 0x39
 8008632:	9502      	str	r5, [sp, #8]
 8008634:	703a      	strb	r2, [r7, #0]
 8008636:	4645      	mov	r5, r8
 8008638:	e58e      	b.n	8008158 <_dtoa_r+0x880>
 800863a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800863e:	2000      	movs	r0, #0
 8008640:	492c      	ldr	r1, [pc, #176]	; (80086f4 <_dtoa_r+0xe1c>)
 8008642:	f7f7 fde1 	bl	8000208 <__aeabi_dsub>
 8008646:	4632      	mov	r2, r6
 8008648:	463b      	mov	r3, r7
 800864a:	f7f8 fa25 	bl	8000a98 <__aeabi_dcmpgt>
 800864e:	b910      	cbnz	r0, 8008656 <_dtoa_r+0xd7e>
 8008650:	f7ff bb68 	b.w	8007d24 <_dtoa_r+0x44c>
 8008654:	4614      	mov	r4, r2
 8008656:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800865a:	2b30      	cmp	r3, #48	; 0x30
 800865c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8008660:	d0f8      	beq.n	8008654 <_dtoa_r+0xd7c>
 8008662:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008664:	9306      	str	r3, [sp, #24]
 8008666:	e58d      	b.n	8008184 <_dtoa_r+0x8ac>
 8008668:	46d9      	mov	r9, fp
 800866a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800866e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8008672:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008674:	9306      	str	r3, [sp, #24]
 8008676:	e404      	b.n	8007e82 <_dtoa_r+0x5aa>
 8008678:	9b00      	ldr	r3, [sp, #0]
 800867a:	2b39      	cmp	r3, #57	; 0x39
 800867c:	4621      	mov	r1, r4
 800867e:	4632      	mov	r2, r6
 8008680:	f107 0401 	add.w	r4, r7, #1
 8008684:	465e      	mov	r6, fp
 8008686:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800868a:	d0d1      	beq.n	8008630 <_dtoa_r+0xd58>
 800868c:	2a00      	cmp	r2, #0
 800868e:	f77f af03 	ble.w	8008498 <_dtoa_r+0xbc0>
 8008692:	460b      	mov	r3, r1
 8008694:	3331      	adds	r3, #49	; 0x31
 8008696:	9300      	str	r3, [sp, #0]
 8008698:	e6fe      	b.n	8008498 <_dtoa_r+0xbc0>
 800869a:	f47f aefd 	bne.w	8008498 <_dtoa_r+0xbc0>
 800869e:	9b00      	ldr	r3, [sp, #0]
 80086a0:	07da      	lsls	r2, r3, #31
 80086a2:	f57f aef9 	bpl.w	8008498 <_dtoa_r+0xbc0>
 80086a6:	e7bc      	b.n	8008622 <_dtoa_r+0xd4a>
 80086a8:	4629      	mov	r1, r5
 80086aa:	2300      	movs	r3, #0
 80086ac:	220a      	movs	r2, #10
 80086ae:	4648      	mov	r0, r9
 80086b0:	f000 fe56 	bl	8009360 <__multadd>
 80086b4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80086b6:	2b00      	cmp	r3, #0
 80086b8:	4605      	mov	r5, r0
 80086ba:	dd09      	ble.n	80086d0 <_dtoa_r+0xdf8>
 80086bc:	9309      	str	r3, [sp, #36]	; 0x24
 80086be:	e484      	b.n	8007fca <_dtoa_r+0x6f2>
 80086c0:	9b02      	ldr	r3, [sp, #8]
 80086c2:	2b02      	cmp	r3, #2
 80086c4:	dc0e      	bgt.n	80086e4 <_dtoa_r+0xe0c>
 80086c6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80086c8:	e507      	b.n	80080da <_dtoa_r+0x802>
 80086ca:	2602      	movs	r6, #2
 80086cc:	f7ff ba70 	b.w	8007bb0 <_dtoa_r+0x2d8>
 80086d0:	9b02      	ldr	r3, [sp, #8]
 80086d2:	2b02      	cmp	r3, #2
 80086d4:	dc06      	bgt.n	80086e4 <_dtoa_r+0xe0c>
 80086d6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80086d8:	e7f0      	b.n	80086bc <_dtoa_r+0xde4>
 80086da:	f43f ac59 	beq.w	8007f90 <_dtoa_r+0x6b8>
 80086de:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80086e2:	e450      	b.n	8007f86 <_dtoa_r+0x6ae>
 80086e4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80086e6:	9309      	str	r3, [sp, #36]	; 0x24
 80086e8:	e678      	b.n	80083dc <_dtoa_r+0xb04>
 80086ea:	bf00      	nop
 80086ec:	40240000 	.word	0x40240000
 80086f0:	401c0000 	.word	0x401c0000
 80086f4:	3fe00000 	.word	0x3fe00000

080086f8 <__sflush_r>:
 80086f8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80086fc:	b29a      	uxth	r2, r3
 80086fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008702:	460c      	mov	r4, r1
 8008704:	0711      	lsls	r1, r2, #28
 8008706:	4680      	mov	r8, r0
 8008708:	d444      	bmi.n	8008794 <__sflush_r+0x9c>
 800870a:	6862      	ldr	r2, [r4, #4]
 800870c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8008710:	2a00      	cmp	r2, #0
 8008712:	81a3      	strh	r3, [r4, #12]
 8008714:	dd59      	ble.n	80087ca <__sflush_r+0xd2>
 8008716:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8008718:	2d00      	cmp	r5, #0
 800871a:	d053      	beq.n	80087c4 <__sflush_r+0xcc>
 800871c:	2200      	movs	r2, #0
 800871e:	b29b      	uxth	r3, r3
 8008720:	f8d8 6000 	ldr.w	r6, [r8]
 8008724:	69e1      	ldr	r1, [r4, #28]
 8008726:	f8c8 2000 	str.w	r2, [r8]
 800872a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800872e:	f040 8083 	bne.w	8008838 <__sflush_r+0x140>
 8008732:	2301      	movs	r3, #1
 8008734:	4640      	mov	r0, r8
 8008736:	47a8      	blx	r5
 8008738:	1c42      	adds	r2, r0, #1
 800873a:	d04a      	beq.n	80087d2 <__sflush_r+0xda>
 800873c:	89a3      	ldrh	r3, [r4, #12]
 800873e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8008740:	69e1      	ldr	r1, [r4, #28]
 8008742:	075b      	lsls	r3, r3, #29
 8008744:	d505      	bpl.n	8008752 <__sflush_r+0x5a>
 8008746:	6862      	ldr	r2, [r4, #4]
 8008748:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800874a:	1a80      	subs	r0, r0, r2
 800874c:	b10b      	cbz	r3, 8008752 <__sflush_r+0x5a>
 800874e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8008750:	1ac0      	subs	r0, r0, r3
 8008752:	4602      	mov	r2, r0
 8008754:	2300      	movs	r3, #0
 8008756:	4640      	mov	r0, r8
 8008758:	47a8      	blx	r5
 800875a:	1c47      	adds	r7, r0, #1
 800875c:	d045      	beq.n	80087ea <__sflush_r+0xf2>
 800875e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008762:	6922      	ldr	r2, [r4, #16]
 8008764:	6022      	str	r2, [r4, #0]
 8008766:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800876a:	2200      	movs	r2, #0
 800876c:	81a3      	strh	r3, [r4, #12]
 800876e:	04db      	lsls	r3, r3, #19
 8008770:	6062      	str	r2, [r4, #4]
 8008772:	d500      	bpl.n	8008776 <__sflush_r+0x7e>
 8008774:	6520      	str	r0, [r4, #80]	; 0x50
 8008776:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008778:	f8c8 6000 	str.w	r6, [r8]
 800877c:	b311      	cbz	r1, 80087c4 <__sflush_r+0xcc>
 800877e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008782:	4299      	cmp	r1, r3
 8008784:	d002      	beq.n	800878c <__sflush_r+0x94>
 8008786:	4640      	mov	r0, r8
 8008788:	f000 f95e 	bl	8008a48 <_free_r>
 800878c:	2000      	movs	r0, #0
 800878e:	6320      	str	r0, [r4, #48]	; 0x30
 8008790:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008794:	6926      	ldr	r6, [r4, #16]
 8008796:	b1ae      	cbz	r6, 80087c4 <__sflush_r+0xcc>
 8008798:	6825      	ldr	r5, [r4, #0]
 800879a:	6026      	str	r6, [r4, #0]
 800879c:	0792      	lsls	r2, r2, #30
 800879e:	bf0c      	ite	eq
 80087a0:	6963      	ldreq	r3, [r4, #20]
 80087a2:	2300      	movne	r3, #0
 80087a4:	1bad      	subs	r5, r5, r6
 80087a6:	60a3      	str	r3, [r4, #8]
 80087a8:	e00a      	b.n	80087c0 <__sflush_r+0xc8>
 80087aa:	462b      	mov	r3, r5
 80087ac:	4632      	mov	r2, r6
 80087ae:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80087b0:	69e1      	ldr	r1, [r4, #28]
 80087b2:	4640      	mov	r0, r8
 80087b4:	47b8      	blx	r7
 80087b6:	2800      	cmp	r0, #0
 80087b8:	eba5 0500 	sub.w	r5, r5, r0
 80087bc:	4406      	add	r6, r0
 80087be:	dd2b      	ble.n	8008818 <__sflush_r+0x120>
 80087c0:	2d00      	cmp	r5, #0
 80087c2:	dcf2      	bgt.n	80087aa <__sflush_r+0xb2>
 80087c4:	2000      	movs	r0, #0
 80087c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80087ca:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80087cc:	2a00      	cmp	r2, #0
 80087ce:	dca2      	bgt.n	8008716 <__sflush_r+0x1e>
 80087d0:	e7f8      	b.n	80087c4 <__sflush_r+0xcc>
 80087d2:	f8d8 3000 	ldr.w	r3, [r8]
 80087d6:	2b00      	cmp	r3, #0
 80087d8:	d0b0      	beq.n	800873c <__sflush_r+0x44>
 80087da:	2b1d      	cmp	r3, #29
 80087dc:	d001      	beq.n	80087e2 <__sflush_r+0xea>
 80087de:	2b16      	cmp	r3, #22
 80087e0:	d12c      	bne.n	800883c <__sflush_r+0x144>
 80087e2:	f8c8 6000 	str.w	r6, [r8]
 80087e6:	2000      	movs	r0, #0
 80087e8:	e7ed      	b.n	80087c6 <__sflush_r+0xce>
 80087ea:	f8d8 1000 	ldr.w	r1, [r8]
 80087ee:	291d      	cmp	r1, #29
 80087f0:	d81a      	bhi.n	8008828 <__sflush_r+0x130>
 80087f2:	4b15      	ldr	r3, [pc, #84]	; (8008848 <__sflush_r+0x150>)
 80087f4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80087f8:	40cb      	lsrs	r3, r1
 80087fa:	43db      	mvns	r3, r3
 80087fc:	f013 0301 	ands.w	r3, r3, #1
 8008800:	d114      	bne.n	800882c <__sflush_r+0x134>
 8008802:	6925      	ldr	r5, [r4, #16]
 8008804:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8008808:	e9c4 5300 	strd	r5, r3, [r4]
 800880c:	04d5      	lsls	r5, r2, #19
 800880e:	81a2      	strh	r2, [r4, #12]
 8008810:	d5b1      	bpl.n	8008776 <__sflush_r+0x7e>
 8008812:	2900      	cmp	r1, #0
 8008814:	d1af      	bne.n	8008776 <__sflush_r+0x7e>
 8008816:	e7ad      	b.n	8008774 <__sflush_r+0x7c>
 8008818:	89a3      	ldrh	r3, [r4, #12]
 800881a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800881e:	81a3      	strh	r3, [r4, #12]
 8008820:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008824:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008828:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800882c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8008830:	81a2      	strh	r2, [r4, #12]
 8008832:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008836:	e7c6      	b.n	80087c6 <__sflush_r+0xce>
 8008838:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800883a:	e782      	b.n	8008742 <__sflush_r+0x4a>
 800883c:	89a3      	ldrh	r3, [r4, #12]
 800883e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008842:	81a3      	strh	r3, [r4, #12]
 8008844:	e7bf      	b.n	80087c6 <__sflush_r+0xce>
 8008846:	bf00      	nop
 8008848:	20400001 	.word	0x20400001

0800884c <_fflush_r>:
 800884c:	b538      	push	{r3, r4, r5, lr}
 800884e:	460d      	mov	r5, r1
 8008850:	4604      	mov	r4, r0
 8008852:	b108      	cbz	r0, 8008858 <_fflush_r+0xc>
 8008854:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008856:	b1a3      	cbz	r3, 8008882 <_fflush_r+0x36>
 8008858:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800885c:	b1b8      	cbz	r0, 800888e <_fflush_r+0x42>
 800885e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8008860:	07db      	lsls	r3, r3, #31
 8008862:	d401      	bmi.n	8008868 <_fflush_r+0x1c>
 8008864:	0581      	lsls	r1, r0, #22
 8008866:	d51a      	bpl.n	800889e <_fflush_r+0x52>
 8008868:	4620      	mov	r0, r4
 800886a:	4629      	mov	r1, r5
 800886c:	f7ff ff44 	bl	80086f8 <__sflush_r>
 8008870:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8008872:	07da      	lsls	r2, r3, #31
 8008874:	4604      	mov	r4, r0
 8008876:	d402      	bmi.n	800887e <_fflush_r+0x32>
 8008878:	89ab      	ldrh	r3, [r5, #12]
 800887a:	059b      	lsls	r3, r3, #22
 800887c:	d50a      	bpl.n	8008894 <_fflush_r+0x48>
 800887e:	4620      	mov	r0, r4
 8008880:	bd38      	pop	{r3, r4, r5, pc}
 8008882:	f000 f83f 	bl	8008904 <__sinit>
 8008886:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800888a:	2800      	cmp	r0, #0
 800888c:	d1e7      	bne.n	800885e <_fflush_r+0x12>
 800888e:	4604      	mov	r4, r0
 8008890:	4620      	mov	r0, r4
 8008892:	bd38      	pop	{r3, r4, r5, pc}
 8008894:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8008896:	f000 fa09 	bl	8008cac <__retarget_lock_release_recursive>
 800889a:	4620      	mov	r0, r4
 800889c:	bd38      	pop	{r3, r4, r5, pc}
 800889e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80088a0:	f000 fa02 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 80088a4:	e7e0      	b.n	8008868 <_fflush_r+0x1c>
 80088a6:	bf00      	nop

080088a8 <std>:
 80088a8:	b510      	push	{r4, lr}
 80088aa:	2300      	movs	r3, #0
 80088ac:	4604      	mov	r4, r0
 80088ae:	8181      	strh	r1, [r0, #12]
 80088b0:	81c2      	strh	r2, [r0, #14]
 80088b2:	e9c0 3300 	strd	r3, r3, [r0]
 80088b6:	6083      	str	r3, [r0, #8]
 80088b8:	6643      	str	r3, [r0, #100]	; 0x64
 80088ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80088be:	6183      	str	r3, [r0, #24]
 80088c0:	4619      	mov	r1, r3
 80088c2:	2208      	movs	r2, #8
 80088c4:	305c      	adds	r0, #92	; 0x5c
 80088c6:	f7fd f921 	bl	8005b0c <memset>
 80088ca:	4807      	ldr	r0, [pc, #28]	; (80088e8 <std+0x40>)
 80088cc:	4907      	ldr	r1, [pc, #28]	; (80088ec <std+0x44>)
 80088ce:	4a08      	ldr	r2, [pc, #32]	; (80088f0 <std+0x48>)
 80088d0:	4b08      	ldr	r3, [pc, #32]	; (80088f4 <std+0x4c>)
 80088d2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80088d4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80088d8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80088dc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80088e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80088e4:	f000 b9dc 	b.w	8008ca0 <__retarget_lock_init_recursive>
 80088e8:	080099a1 	.word	0x080099a1
 80088ec:	080099c5 	.word	0x080099c5
 80088f0:	08009a01 	.word	0x08009a01
 80088f4:	08009a21 	.word	0x08009a21

080088f8 <_cleanup_r>:
 80088f8:	4901      	ldr	r1, [pc, #4]	; (8008900 <_cleanup_r+0x8>)
 80088fa:	f000 b999 	b.w	8008c30 <_fwalk_reent>
 80088fe:	bf00      	nop
 8008900:	08009c91 	.word	0x08009c91

08008904 <__sinit>:
 8008904:	b510      	push	{r4, lr}
 8008906:	4604      	mov	r4, r0
 8008908:	4812      	ldr	r0, [pc, #72]	; (8008954 <__sinit+0x50>)
 800890a:	f000 f9cd 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 800890e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8008910:	b9d2      	cbnz	r2, 8008948 <__sinit+0x44>
 8008912:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8008916:	4810      	ldr	r0, [pc, #64]	; (8008958 <__sinit+0x54>)
 8008918:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800891c:	2103      	movs	r1, #3
 800891e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8008922:	63e0      	str	r0, [r4, #60]	; 0x3c
 8008924:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8008928:	6860      	ldr	r0, [r4, #4]
 800892a:	2104      	movs	r1, #4
 800892c:	f7ff ffbc 	bl	80088a8 <std>
 8008930:	2201      	movs	r2, #1
 8008932:	2109      	movs	r1, #9
 8008934:	68a0      	ldr	r0, [r4, #8]
 8008936:	f7ff ffb7 	bl	80088a8 <std>
 800893a:	2202      	movs	r2, #2
 800893c:	2112      	movs	r1, #18
 800893e:	68e0      	ldr	r0, [r4, #12]
 8008940:	f7ff ffb2 	bl	80088a8 <std>
 8008944:	2301      	movs	r3, #1
 8008946:	63a3      	str	r3, [r4, #56]	; 0x38
 8008948:	4802      	ldr	r0, [pc, #8]	; (8008954 <__sinit+0x50>)
 800894a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800894e:	f000 b9ad 	b.w	8008cac <__retarget_lock_release_recursive>
 8008952:	bf00      	nop
 8008954:	20000c20 	.word	0x20000c20
 8008958:	080088f9 	.word	0x080088f9

0800895c <__sfp_lock_acquire>:
 800895c:	4801      	ldr	r0, [pc, #4]	; (8008964 <__sfp_lock_acquire+0x8>)
 800895e:	f000 b9a3 	b.w	8008ca8 <__retarget_lock_acquire_recursive>
 8008962:	bf00      	nop
 8008964:	20000c34 	.word	0x20000c34

08008968 <__sfp_lock_release>:
 8008968:	4801      	ldr	r0, [pc, #4]	; (8008970 <__sfp_lock_release+0x8>)
 800896a:	f000 b99f 	b.w	8008cac <__retarget_lock_release_recursive>
 800896e:	bf00      	nop
 8008970:	20000c34 	.word	0x20000c34

08008974 <__libc_fini_array>:
 8008974:	b538      	push	{r3, r4, r5, lr}
 8008976:	4c0a      	ldr	r4, [pc, #40]	; (80089a0 <__libc_fini_array+0x2c>)
 8008978:	4d0a      	ldr	r5, [pc, #40]	; (80089a4 <__libc_fini_array+0x30>)
 800897a:	1b64      	subs	r4, r4, r5
 800897c:	10a4      	asrs	r4, r4, #2
 800897e:	d00a      	beq.n	8008996 <__libc_fini_array+0x22>
 8008980:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8008984:	3b01      	subs	r3, #1
 8008986:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800898a:	3c01      	subs	r4, #1
 800898c:	f855 3904 	ldr.w	r3, [r5], #-4
 8008990:	4798      	blx	r3
 8008992:	2c00      	cmp	r4, #0
 8008994:	d1f9      	bne.n	800898a <__libc_fini_array+0x16>
 8008996:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800899a:	f001 befd 	b.w	800a798 <_fini>
 800899e:	bf00      	nop
 80089a0:	0800ada4 	.word	0x0800ada4
 80089a4:	0800ada0 	.word	0x0800ada0

080089a8 <_malloc_trim_r>:
 80089a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80089aa:	4f24      	ldr	r7, [pc, #144]	; (8008a3c <_malloc_trim_r+0x94>)
 80089ac:	460c      	mov	r4, r1
 80089ae:	4606      	mov	r6, r0
 80089b0:	f000 fc9a 	bl	80092e8 <__malloc_lock>
 80089b4:	68bb      	ldr	r3, [r7, #8]
 80089b6:	685d      	ldr	r5, [r3, #4]
 80089b8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80089bc:	310f      	adds	r1, #15
 80089be:	f025 0503 	bic.w	r5, r5, #3
 80089c2:	4429      	add	r1, r5
 80089c4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80089c8:	f021 010f 	bic.w	r1, r1, #15
 80089cc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80089d0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80089d4:	db07      	blt.n	80089e6 <_malloc_trim_r+0x3e>
 80089d6:	2100      	movs	r1, #0
 80089d8:	4630      	mov	r0, r6
 80089da:	f000 ffcf 	bl	800997c <_sbrk_r>
 80089de:	68bb      	ldr	r3, [r7, #8]
 80089e0:	442b      	add	r3, r5
 80089e2:	4298      	cmp	r0, r3
 80089e4:	d004      	beq.n	80089f0 <_malloc_trim_r+0x48>
 80089e6:	4630      	mov	r0, r6
 80089e8:	f000 fc84 	bl	80092f4 <__malloc_unlock>
 80089ec:	2000      	movs	r0, #0
 80089ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80089f0:	4261      	negs	r1, r4
 80089f2:	4630      	mov	r0, r6
 80089f4:	f000 ffc2 	bl	800997c <_sbrk_r>
 80089f8:	3001      	adds	r0, #1
 80089fa:	d00d      	beq.n	8008a18 <_malloc_trim_r+0x70>
 80089fc:	4b10      	ldr	r3, [pc, #64]	; (8008a40 <_malloc_trim_r+0x98>)
 80089fe:	68ba      	ldr	r2, [r7, #8]
 8008a00:	6819      	ldr	r1, [r3, #0]
 8008a02:	1b2d      	subs	r5, r5, r4
 8008a04:	f045 0501 	orr.w	r5, r5, #1
 8008a08:	4630      	mov	r0, r6
 8008a0a:	1b09      	subs	r1, r1, r4
 8008a0c:	6055      	str	r5, [r2, #4]
 8008a0e:	6019      	str	r1, [r3, #0]
 8008a10:	f000 fc70 	bl	80092f4 <__malloc_unlock>
 8008a14:	2001      	movs	r0, #1
 8008a16:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008a18:	2100      	movs	r1, #0
 8008a1a:	4630      	mov	r0, r6
 8008a1c:	f000 ffae 	bl	800997c <_sbrk_r>
 8008a20:	68ba      	ldr	r2, [r7, #8]
 8008a22:	1a83      	subs	r3, r0, r2
 8008a24:	2b0f      	cmp	r3, #15
 8008a26:	ddde      	ble.n	80089e6 <_malloc_trim_r+0x3e>
 8008a28:	4c06      	ldr	r4, [pc, #24]	; (8008a44 <_malloc_trim_r+0x9c>)
 8008a2a:	4905      	ldr	r1, [pc, #20]	; (8008a40 <_malloc_trim_r+0x98>)
 8008a2c:	6824      	ldr	r4, [r4, #0]
 8008a2e:	f043 0301 	orr.w	r3, r3, #1
 8008a32:	1b00      	subs	r0, r0, r4
 8008a34:	6053      	str	r3, [r2, #4]
 8008a36:	6008      	str	r0, [r1, #0]
 8008a38:	e7d5      	b.n	80089e6 <_malloc_trim_r+0x3e>
 8008a3a:	bf00      	nop
 8008a3c:	2000044c 	.word	0x2000044c
 8008a40:	20000b98 	.word	0x20000b98
 8008a44:	20000854 	.word	0x20000854

08008a48 <_free_r>:
 8008a48:	2900      	cmp	r1, #0
 8008a4a:	d053      	beq.n	8008af4 <_free_r+0xac>
 8008a4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a4e:	460c      	mov	r4, r1
 8008a50:	4606      	mov	r6, r0
 8008a52:	f000 fc49 	bl	80092e8 <__malloc_lock>
 8008a56:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8008a5a:	4f71      	ldr	r7, [pc, #452]	; (8008c20 <_free_r+0x1d8>)
 8008a5c:	f02c 0101 	bic.w	r1, ip, #1
 8008a60:	f1a4 0508 	sub.w	r5, r4, #8
 8008a64:	186b      	adds	r3, r5, r1
 8008a66:	68b8      	ldr	r0, [r7, #8]
 8008a68:	685a      	ldr	r2, [r3, #4]
 8008a6a:	4298      	cmp	r0, r3
 8008a6c:	f022 0203 	bic.w	r2, r2, #3
 8008a70:	d053      	beq.n	8008b1a <_free_r+0xd2>
 8008a72:	f01c 0f01 	tst.w	ip, #1
 8008a76:	605a      	str	r2, [r3, #4]
 8008a78:	eb03 0002 	add.w	r0, r3, r2
 8008a7c:	d13b      	bne.n	8008af6 <_free_r+0xae>
 8008a7e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8008a82:	6840      	ldr	r0, [r0, #4]
 8008a84:	eba5 050c 	sub.w	r5, r5, ip
 8008a88:	f107 0e08 	add.w	lr, r7, #8
 8008a8c:	68ac      	ldr	r4, [r5, #8]
 8008a8e:	4574      	cmp	r4, lr
 8008a90:	4461      	add	r1, ip
 8008a92:	f000 0001 	and.w	r0, r0, #1
 8008a96:	d075      	beq.n	8008b84 <_free_r+0x13c>
 8008a98:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8008a9c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8008aa0:	f8cc 4008 	str.w	r4, [ip, #8]
 8008aa4:	b360      	cbz	r0, 8008b00 <_free_r+0xb8>
 8008aa6:	f041 0301 	orr.w	r3, r1, #1
 8008aaa:	606b      	str	r3, [r5, #4]
 8008aac:	5069      	str	r1, [r5, r1]
 8008aae:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8008ab2:	d350      	bcc.n	8008b56 <_free_r+0x10e>
 8008ab4:	0a4b      	lsrs	r3, r1, #9
 8008ab6:	2b04      	cmp	r3, #4
 8008ab8:	d870      	bhi.n	8008b9c <_free_r+0x154>
 8008aba:	098b      	lsrs	r3, r1, #6
 8008abc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8008ac0:	00e4      	lsls	r4, r4, #3
 8008ac2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8008ac6:	1938      	adds	r0, r7, r4
 8008ac8:	593b      	ldr	r3, [r7, r4]
 8008aca:	3808      	subs	r0, #8
 8008acc:	4298      	cmp	r0, r3
 8008ace:	d078      	beq.n	8008bc2 <_free_r+0x17a>
 8008ad0:	685a      	ldr	r2, [r3, #4]
 8008ad2:	f022 0203 	bic.w	r2, r2, #3
 8008ad6:	428a      	cmp	r2, r1
 8008ad8:	d971      	bls.n	8008bbe <_free_r+0x176>
 8008ada:	689b      	ldr	r3, [r3, #8]
 8008adc:	4298      	cmp	r0, r3
 8008ade:	d1f7      	bne.n	8008ad0 <_free_r+0x88>
 8008ae0:	68c3      	ldr	r3, [r0, #12]
 8008ae2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8008ae6:	609d      	str	r5, [r3, #8]
 8008ae8:	60c5      	str	r5, [r0, #12]
 8008aea:	4630      	mov	r0, r6
 8008aec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008af0:	f000 bc00 	b.w	80092f4 <__malloc_unlock>
 8008af4:	4770      	bx	lr
 8008af6:	6840      	ldr	r0, [r0, #4]
 8008af8:	f000 0001 	and.w	r0, r0, #1
 8008afc:	2800      	cmp	r0, #0
 8008afe:	d1d2      	bne.n	8008aa6 <_free_r+0x5e>
 8008b00:	6898      	ldr	r0, [r3, #8]
 8008b02:	4c48      	ldr	r4, [pc, #288]	; (8008c24 <_free_r+0x1dc>)
 8008b04:	4411      	add	r1, r2
 8008b06:	42a0      	cmp	r0, r4
 8008b08:	f041 0201 	orr.w	r2, r1, #1
 8008b0c:	d062      	beq.n	8008bd4 <_free_r+0x18c>
 8008b0e:	68db      	ldr	r3, [r3, #12]
 8008b10:	60c3      	str	r3, [r0, #12]
 8008b12:	6098      	str	r0, [r3, #8]
 8008b14:	606a      	str	r2, [r5, #4]
 8008b16:	5069      	str	r1, [r5, r1]
 8008b18:	e7c9      	b.n	8008aae <_free_r+0x66>
 8008b1a:	f01c 0f01 	tst.w	ip, #1
 8008b1e:	440a      	add	r2, r1
 8008b20:	d107      	bne.n	8008b32 <_free_r+0xea>
 8008b22:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8008b26:	1aed      	subs	r5, r5, r3
 8008b28:	441a      	add	r2, r3
 8008b2a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8008b2e:	60cb      	str	r3, [r1, #12]
 8008b30:	6099      	str	r1, [r3, #8]
 8008b32:	4b3d      	ldr	r3, [pc, #244]	; (8008c28 <_free_r+0x1e0>)
 8008b34:	681b      	ldr	r3, [r3, #0]
 8008b36:	f042 0101 	orr.w	r1, r2, #1
 8008b3a:	4293      	cmp	r3, r2
 8008b3c:	6069      	str	r1, [r5, #4]
 8008b3e:	60bd      	str	r5, [r7, #8]
 8008b40:	d804      	bhi.n	8008b4c <_free_r+0x104>
 8008b42:	4b3a      	ldr	r3, [pc, #232]	; (8008c2c <_free_r+0x1e4>)
 8008b44:	4630      	mov	r0, r6
 8008b46:	6819      	ldr	r1, [r3, #0]
 8008b48:	f7ff ff2e 	bl	80089a8 <_malloc_trim_r>
 8008b4c:	4630      	mov	r0, r6
 8008b4e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008b52:	f000 bbcf 	b.w	80092f4 <__malloc_unlock>
 8008b56:	08c9      	lsrs	r1, r1, #3
 8008b58:	6878      	ldr	r0, [r7, #4]
 8008b5a:	1c4a      	adds	r2, r1, #1
 8008b5c:	2301      	movs	r3, #1
 8008b5e:	1089      	asrs	r1, r1, #2
 8008b60:	408b      	lsls	r3, r1
 8008b62:	4303      	orrs	r3, r0
 8008b64:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8008b68:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8008b6c:	607b      	str	r3, [r7, #4]
 8008b6e:	3908      	subs	r1, #8
 8008b70:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8008b74:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8008b78:	60c5      	str	r5, [r0, #12]
 8008b7a:	4630      	mov	r0, r6
 8008b7c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008b80:	f000 bbb8 	b.w	80092f4 <__malloc_unlock>
 8008b84:	2800      	cmp	r0, #0
 8008b86:	d145      	bne.n	8008c14 <_free_r+0x1cc>
 8008b88:	440a      	add	r2, r1
 8008b8a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8008b8e:	f042 0001 	orr.w	r0, r2, #1
 8008b92:	60cb      	str	r3, [r1, #12]
 8008b94:	6099      	str	r1, [r3, #8]
 8008b96:	6068      	str	r0, [r5, #4]
 8008b98:	50aa      	str	r2, [r5, r2]
 8008b9a:	e7d7      	b.n	8008b4c <_free_r+0x104>
 8008b9c:	2b14      	cmp	r3, #20
 8008b9e:	d908      	bls.n	8008bb2 <_free_r+0x16a>
 8008ba0:	2b54      	cmp	r3, #84	; 0x54
 8008ba2:	d81e      	bhi.n	8008be2 <_free_r+0x19a>
 8008ba4:	0b0b      	lsrs	r3, r1, #12
 8008ba6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8008baa:	00e4      	lsls	r4, r4, #3
 8008bac:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8008bb0:	e789      	b.n	8008ac6 <_free_r+0x7e>
 8008bb2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8008bb6:	00e4      	lsls	r4, r4, #3
 8008bb8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8008bbc:	e783      	b.n	8008ac6 <_free_r+0x7e>
 8008bbe:	4618      	mov	r0, r3
 8008bc0:	e78e      	b.n	8008ae0 <_free_r+0x98>
 8008bc2:	1093      	asrs	r3, r2, #2
 8008bc4:	6879      	ldr	r1, [r7, #4]
 8008bc6:	2201      	movs	r2, #1
 8008bc8:	fa02 f303 	lsl.w	r3, r2, r3
 8008bcc:	430b      	orrs	r3, r1
 8008bce:	607b      	str	r3, [r7, #4]
 8008bd0:	4603      	mov	r3, r0
 8008bd2:	e786      	b.n	8008ae2 <_free_r+0x9a>
 8008bd4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008bd8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8008bdc:	606a      	str	r2, [r5, #4]
 8008bde:	5069      	str	r1, [r5, r1]
 8008be0:	e7b4      	b.n	8008b4c <_free_r+0x104>
 8008be2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008be6:	d806      	bhi.n	8008bf6 <_free_r+0x1ae>
 8008be8:	0bcb      	lsrs	r3, r1, #15
 8008bea:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8008bee:	00e4      	lsls	r4, r4, #3
 8008bf0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8008bf4:	e767      	b.n	8008ac6 <_free_r+0x7e>
 8008bf6:	f240 5254 	movw	r2, #1364	; 0x554
 8008bfa:	4293      	cmp	r3, r2
 8008bfc:	d806      	bhi.n	8008c0c <_free_r+0x1c4>
 8008bfe:	0c8b      	lsrs	r3, r1, #18
 8008c00:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8008c04:	00e4      	lsls	r4, r4, #3
 8008c06:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8008c0a:	e75c      	b.n	8008ac6 <_free_r+0x7e>
 8008c0c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008c10:	227e      	movs	r2, #126	; 0x7e
 8008c12:	e758      	b.n	8008ac6 <_free_r+0x7e>
 8008c14:	f041 0201 	orr.w	r2, r1, #1
 8008c18:	606a      	str	r2, [r5, #4]
 8008c1a:	6019      	str	r1, [r3, #0]
 8008c1c:	e796      	b.n	8008b4c <_free_r+0x104>
 8008c1e:	bf00      	nop
 8008c20:	2000044c 	.word	0x2000044c
 8008c24:	20000454 	.word	0x20000454
 8008c28:	20000858 	.word	0x20000858
 8008c2c:	20000bc8 	.word	0x20000bc8

08008c30 <_fwalk_reent>:
 8008c30:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008c34:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8008c38:	d01f      	beq.n	8008c7a <_fwalk_reent+0x4a>
 8008c3a:	4688      	mov	r8, r1
 8008c3c:	4606      	mov	r6, r0
 8008c3e:	f04f 0900 	mov.w	r9, #0
 8008c42:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8008c46:	3d01      	subs	r5, #1
 8008c48:	d411      	bmi.n	8008c6e <_fwalk_reent+0x3e>
 8008c4a:	89a3      	ldrh	r3, [r4, #12]
 8008c4c:	2b01      	cmp	r3, #1
 8008c4e:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008c52:	4621      	mov	r1, r4
 8008c54:	4630      	mov	r0, r6
 8008c56:	d906      	bls.n	8008c66 <_fwalk_reent+0x36>
 8008c58:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8008c5c:	3301      	adds	r3, #1
 8008c5e:	d002      	beq.n	8008c66 <_fwalk_reent+0x36>
 8008c60:	47c0      	blx	r8
 8008c62:	ea49 0900 	orr.w	r9, r9, r0
 8008c66:	1c6b      	adds	r3, r5, #1
 8008c68:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8008c6c:	d1ed      	bne.n	8008c4a <_fwalk_reent+0x1a>
 8008c6e:	683f      	ldr	r7, [r7, #0]
 8008c70:	2f00      	cmp	r7, #0
 8008c72:	d1e6      	bne.n	8008c42 <_fwalk_reent+0x12>
 8008c74:	4648      	mov	r0, r9
 8008c76:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008c7a:	46b9      	mov	r9, r7
 8008c7c:	4648      	mov	r0, r9
 8008c7e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008c82:	bf00      	nop

08008c84 <_localeconv_r>:
 8008c84:	4a04      	ldr	r2, [pc, #16]	; (8008c98 <_localeconv_r+0x14>)
 8008c86:	4b05      	ldr	r3, [pc, #20]	; (8008c9c <_localeconv_r+0x18>)
 8008c88:	6812      	ldr	r2, [r2, #0]
 8008c8a:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8008c8c:	2800      	cmp	r0, #0
 8008c8e:	bf08      	it	eq
 8008c90:	4618      	moveq	r0, r3
 8008c92:	30f0      	adds	r0, #240	; 0xf0
 8008c94:	4770      	bx	lr
 8008c96:	bf00      	nop
 8008c98:	2000001c 	.word	0x2000001c
 8008c9c:	2000085c 	.word	0x2000085c

08008ca0 <__retarget_lock_init_recursive>:
 8008ca0:	4770      	bx	lr
 8008ca2:	bf00      	nop

08008ca4 <__retarget_lock_close_recursive>:
 8008ca4:	4770      	bx	lr
 8008ca6:	bf00      	nop

08008ca8 <__retarget_lock_acquire_recursive>:
 8008ca8:	4770      	bx	lr
 8008caa:	bf00      	nop

08008cac <__retarget_lock_release_recursive>:
 8008cac:	4770      	bx	lr
 8008cae:	bf00      	nop

08008cb0 <__swhatbuf_r>:
 8008cb0:	b570      	push	{r4, r5, r6, lr}
 8008cb2:	460c      	mov	r4, r1
 8008cb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008cb8:	2900      	cmp	r1, #0
 8008cba:	b096      	sub	sp, #88	; 0x58
 8008cbc:	4615      	mov	r5, r2
 8008cbe:	461e      	mov	r6, r3
 8008cc0:	da0f      	bge.n	8008ce2 <__swhatbuf_r+0x32>
 8008cc2:	89a2      	ldrh	r2, [r4, #12]
 8008cc4:	2300      	movs	r3, #0
 8008cc6:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8008cca:	6033      	str	r3, [r6, #0]
 8008ccc:	d104      	bne.n	8008cd8 <__swhatbuf_r+0x28>
 8008cce:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8008cd2:	602b      	str	r3, [r5, #0]
 8008cd4:	b016      	add	sp, #88	; 0x58
 8008cd6:	bd70      	pop	{r4, r5, r6, pc}
 8008cd8:	2240      	movs	r2, #64	; 0x40
 8008cda:	4618      	mov	r0, r3
 8008cdc:	602a      	str	r2, [r5, #0]
 8008cde:	b016      	add	sp, #88	; 0x58
 8008ce0:	bd70      	pop	{r4, r5, r6, pc}
 8008ce2:	466a      	mov	r2, sp
 8008ce4:	f001 f8be 	bl	8009e64 <_fstat_r>
 8008ce8:	2800      	cmp	r0, #0
 8008cea:	dbea      	blt.n	8008cc2 <__swhatbuf_r+0x12>
 8008cec:	9b01      	ldr	r3, [sp, #4]
 8008cee:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8008cf2:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8008cf6:	fab3 f383 	clz	r3, r3
 8008cfa:	095b      	lsrs	r3, r3, #5
 8008cfc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8008d00:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008d04:	6033      	str	r3, [r6, #0]
 8008d06:	602a      	str	r2, [r5, #0]
 8008d08:	b016      	add	sp, #88	; 0x58
 8008d0a:	bd70      	pop	{r4, r5, r6, pc}

08008d0c <__smakebuf_r>:
 8008d0c:	898a      	ldrh	r2, [r1, #12]
 8008d0e:	0792      	lsls	r2, r2, #30
 8008d10:	460b      	mov	r3, r1
 8008d12:	d506      	bpl.n	8008d22 <__smakebuf_r+0x16>
 8008d14:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8008d18:	2101      	movs	r1, #1
 8008d1a:	601a      	str	r2, [r3, #0]
 8008d1c:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8008d20:	4770      	bx	lr
 8008d22:	b570      	push	{r4, r5, r6, lr}
 8008d24:	b082      	sub	sp, #8
 8008d26:	ab01      	add	r3, sp, #4
 8008d28:	466a      	mov	r2, sp
 8008d2a:	460c      	mov	r4, r1
 8008d2c:	4605      	mov	r5, r0
 8008d2e:	f7ff ffbf 	bl	8008cb0 <__swhatbuf_r>
 8008d32:	9900      	ldr	r1, [sp, #0]
 8008d34:	4606      	mov	r6, r0
 8008d36:	4628      	mov	r0, r5
 8008d38:	f000 f832 	bl	8008da0 <_malloc_r>
 8008d3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d40:	b1d8      	cbz	r0, 8008d7a <__smakebuf_r+0x6e>
 8008d42:	4916      	ldr	r1, [pc, #88]	; (8008d9c <__smakebuf_r+0x90>)
 8008d44:	63e9      	str	r1, [r5, #60]	; 0x3c
 8008d46:	9a01      	ldr	r2, [sp, #4]
 8008d48:	9900      	ldr	r1, [sp, #0]
 8008d4a:	6020      	str	r0, [r4, #0]
 8008d4c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008d50:	81a3      	strh	r3, [r4, #12]
 8008d52:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8008d56:	b91a      	cbnz	r2, 8008d60 <__smakebuf_r+0x54>
 8008d58:	4333      	orrs	r3, r6
 8008d5a:	81a3      	strh	r3, [r4, #12]
 8008d5c:	b002      	add	sp, #8
 8008d5e:	bd70      	pop	{r4, r5, r6, pc}
 8008d60:	4628      	mov	r0, r5
 8008d62:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008d66:	f001 fa0f 	bl	800a188 <_isatty_r>
 8008d6a:	b1a0      	cbz	r0, 8008d96 <__smakebuf_r+0x8a>
 8008d6c:	89a3      	ldrh	r3, [r4, #12]
 8008d6e:	f023 0303 	bic.w	r3, r3, #3
 8008d72:	f043 0301 	orr.w	r3, r3, #1
 8008d76:	b21b      	sxth	r3, r3
 8008d78:	e7ee      	b.n	8008d58 <__smakebuf_r+0x4c>
 8008d7a:	059a      	lsls	r2, r3, #22
 8008d7c:	d4ee      	bmi.n	8008d5c <__smakebuf_r+0x50>
 8008d7e:	f023 0303 	bic.w	r3, r3, #3
 8008d82:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8008d86:	f043 0302 	orr.w	r3, r3, #2
 8008d8a:	2101      	movs	r1, #1
 8008d8c:	81a3      	strh	r3, [r4, #12]
 8008d8e:	6022      	str	r2, [r4, #0]
 8008d90:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8008d94:	e7e2      	b.n	8008d5c <__smakebuf_r+0x50>
 8008d96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d9a:	e7dd      	b.n	8008d58 <__smakebuf_r+0x4c>
 8008d9c:	080088f9 	.word	0x080088f9

08008da0 <_malloc_r>:
 8008da0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008da4:	f101 050b 	add.w	r5, r1, #11
 8008da8:	2d16      	cmp	r5, #22
 8008daa:	b083      	sub	sp, #12
 8008dac:	4606      	mov	r6, r0
 8008dae:	d823      	bhi.n	8008df8 <_malloc_r+0x58>
 8008db0:	2910      	cmp	r1, #16
 8008db2:	f200 80b9 	bhi.w	8008f28 <_malloc_r+0x188>
 8008db6:	f000 fa97 	bl	80092e8 <__malloc_lock>
 8008dba:	2510      	movs	r5, #16
 8008dbc:	2318      	movs	r3, #24
 8008dbe:	2002      	movs	r0, #2
 8008dc0:	4fc5      	ldr	r7, [pc, #788]	; (80090d8 <_malloc_r+0x338>)
 8008dc2:	443b      	add	r3, r7
 8008dc4:	f1a3 0208 	sub.w	r2, r3, #8
 8008dc8:	685c      	ldr	r4, [r3, #4]
 8008dca:	4294      	cmp	r4, r2
 8008dcc:	f000 8166 	beq.w	800909c <_malloc_r+0x2fc>
 8008dd0:	6863      	ldr	r3, [r4, #4]
 8008dd2:	f023 0303 	bic.w	r3, r3, #3
 8008dd6:	4423      	add	r3, r4
 8008dd8:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8008ddc:	685a      	ldr	r2, [r3, #4]
 8008dde:	60e9      	str	r1, [r5, #12]
 8008de0:	f042 0201 	orr.w	r2, r2, #1
 8008de4:	608d      	str	r5, [r1, #8]
 8008de6:	4630      	mov	r0, r6
 8008de8:	605a      	str	r2, [r3, #4]
 8008dea:	f000 fa83 	bl	80092f4 <__malloc_unlock>
 8008dee:	3408      	adds	r4, #8
 8008df0:	4620      	mov	r0, r4
 8008df2:	b003      	add	sp, #12
 8008df4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008df8:	f035 0507 	bics.w	r5, r5, #7
 8008dfc:	f100 8094 	bmi.w	8008f28 <_malloc_r+0x188>
 8008e00:	42a9      	cmp	r1, r5
 8008e02:	f200 8091 	bhi.w	8008f28 <_malloc_r+0x188>
 8008e06:	f000 fa6f 	bl	80092e8 <__malloc_lock>
 8008e0a:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8008e0e:	f0c0 8183 	bcc.w	8009118 <_malloc_r+0x378>
 8008e12:	0a6b      	lsrs	r3, r5, #9
 8008e14:	f000 808f 	beq.w	8008f36 <_malloc_r+0x196>
 8008e18:	2b04      	cmp	r3, #4
 8008e1a:	f200 8146 	bhi.w	80090aa <_malloc_r+0x30a>
 8008e1e:	09ab      	lsrs	r3, r5, #6
 8008e20:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8008e24:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8008e28:	00c3      	lsls	r3, r0, #3
 8008e2a:	4fab      	ldr	r7, [pc, #684]	; (80090d8 <_malloc_r+0x338>)
 8008e2c:	443b      	add	r3, r7
 8008e2e:	f1a3 0108 	sub.w	r1, r3, #8
 8008e32:	685c      	ldr	r4, [r3, #4]
 8008e34:	42a1      	cmp	r1, r4
 8008e36:	d106      	bne.n	8008e46 <_malloc_r+0xa6>
 8008e38:	e00c      	b.n	8008e54 <_malloc_r+0xb4>
 8008e3a:	2a00      	cmp	r2, #0
 8008e3c:	f280 811d 	bge.w	800907a <_malloc_r+0x2da>
 8008e40:	68e4      	ldr	r4, [r4, #12]
 8008e42:	42a1      	cmp	r1, r4
 8008e44:	d006      	beq.n	8008e54 <_malloc_r+0xb4>
 8008e46:	6863      	ldr	r3, [r4, #4]
 8008e48:	f023 0303 	bic.w	r3, r3, #3
 8008e4c:	1b5a      	subs	r2, r3, r5
 8008e4e:	2a0f      	cmp	r2, #15
 8008e50:	ddf3      	ble.n	8008e3a <_malloc_r+0x9a>
 8008e52:	4660      	mov	r0, ip
 8008e54:	693c      	ldr	r4, [r7, #16]
 8008e56:	f8df c294 	ldr.w	ip, [pc, #660]	; 80090ec <_malloc_r+0x34c>
 8008e5a:	4564      	cmp	r4, ip
 8008e5c:	d071      	beq.n	8008f42 <_malloc_r+0x1a2>
 8008e5e:	6863      	ldr	r3, [r4, #4]
 8008e60:	f023 0303 	bic.w	r3, r3, #3
 8008e64:	1b5a      	subs	r2, r3, r5
 8008e66:	2a0f      	cmp	r2, #15
 8008e68:	f300 8144 	bgt.w	80090f4 <_malloc_r+0x354>
 8008e6c:	2a00      	cmp	r2, #0
 8008e6e:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8008e72:	f280 8126 	bge.w	80090c2 <_malloc_r+0x322>
 8008e76:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8008e7a:	f080 8169 	bcs.w	8009150 <_malloc_r+0x3b0>
 8008e7e:	08db      	lsrs	r3, r3, #3
 8008e80:	1c59      	adds	r1, r3, #1
 8008e82:	687a      	ldr	r2, [r7, #4]
 8008e84:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8008e88:	f8c4 8008 	str.w	r8, [r4, #8]
 8008e8c:	f04f 0e01 	mov.w	lr, #1
 8008e90:	109b      	asrs	r3, r3, #2
 8008e92:	fa0e f303 	lsl.w	r3, lr, r3
 8008e96:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8008e9a:	4313      	orrs	r3, r2
 8008e9c:	f1ae 0208 	sub.w	r2, lr, #8
 8008ea0:	60e2      	str	r2, [r4, #12]
 8008ea2:	607b      	str	r3, [r7, #4]
 8008ea4:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8008ea8:	f8c8 400c 	str.w	r4, [r8, #12]
 8008eac:	1082      	asrs	r2, r0, #2
 8008eae:	2401      	movs	r4, #1
 8008eb0:	4094      	lsls	r4, r2
 8008eb2:	429c      	cmp	r4, r3
 8008eb4:	d84b      	bhi.n	8008f4e <_malloc_r+0x1ae>
 8008eb6:	421c      	tst	r4, r3
 8008eb8:	d106      	bne.n	8008ec8 <_malloc_r+0x128>
 8008eba:	f020 0003 	bic.w	r0, r0, #3
 8008ebe:	0064      	lsls	r4, r4, #1
 8008ec0:	421c      	tst	r4, r3
 8008ec2:	f100 0004 	add.w	r0, r0, #4
 8008ec6:	d0fa      	beq.n	8008ebe <_malloc_r+0x11e>
 8008ec8:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8008ecc:	46ce      	mov	lr, r9
 8008ece:	4680      	mov	r8, r0
 8008ed0:	f8de 300c 	ldr.w	r3, [lr, #12]
 8008ed4:	459e      	cmp	lr, r3
 8008ed6:	d107      	bne.n	8008ee8 <_malloc_r+0x148>
 8008ed8:	e122      	b.n	8009120 <_malloc_r+0x380>
 8008eda:	2a00      	cmp	r2, #0
 8008edc:	f280 8129 	bge.w	8009132 <_malloc_r+0x392>
 8008ee0:	68db      	ldr	r3, [r3, #12]
 8008ee2:	459e      	cmp	lr, r3
 8008ee4:	f000 811c 	beq.w	8009120 <_malloc_r+0x380>
 8008ee8:	6859      	ldr	r1, [r3, #4]
 8008eea:	f021 0103 	bic.w	r1, r1, #3
 8008eee:	1b4a      	subs	r2, r1, r5
 8008ef0:	2a0f      	cmp	r2, #15
 8008ef2:	ddf2      	ble.n	8008eda <_malloc_r+0x13a>
 8008ef4:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8008ef8:	195c      	adds	r4, r3, r5
 8008efa:	f045 0501 	orr.w	r5, r5, #1
 8008efe:	605d      	str	r5, [r3, #4]
 8008f00:	f042 0501 	orr.w	r5, r2, #1
 8008f04:	f8c8 e00c 	str.w	lr, [r8, #12]
 8008f08:	4630      	mov	r0, r6
 8008f0a:	f8ce 8008 	str.w	r8, [lr, #8]
 8008f0e:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8008f12:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8008f16:	6065      	str	r5, [r4, #4]
 8008f18:	505a      	str	r2, [r3, r1]
 8008f1a:	9301      	str	r3, [sp, #4]
 8008f1c:	f000 f9ea 	bl	80092f4 <__malloc_unlock>
 8008f20:	9b01      	ldr	r3, [sp, #4]
 8008f22:	f103 0408 	add.w	r4, r3, #8
 8008f26:	e763      	b.n	8008df0 <_malloc_r+0x50>
 8008f28:	2400      	movs	r4, #0
 8008f2a:	230c      	movs	r3, #12
 8008f2c:	4620      	mov	r0, r4
 8008f2e:	6033      	str	r3, [r6, #0]
 8008f30:	b003      	add	sp, #12
 8008f32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f36:	f44f 7300 	mov.w	r3, #512	; 0x200
 8008f3a:	2040      	movs	r0, #64	; 0x40
 8008f3c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8008f40:	e773      	b.n	8008e2a <_malloc_r+0x8a>
 8008f42:	687b      	ldr	r3, [r7, #4]
 8008f44:	1082      	asrs	r2, r0, #2
 8008f46:	2401      	movs	r4, #1
 8008f48:	4094      	lsls	r4, r2
 8008f4a:	429c      	cmp	r4, r3
 8008f4c:	d9b3      	bls.n	8008eb6 <_malloc_r+0x116>
 8008f4e:	68bc      	ldr	r4, [r7, #8]
 8008f50:	6863      	ldr	r3, [r4, #4]
 8008f52:	f023 0903 	bic.w	r9, r3, #3
 8008f56:	45a9      	cmp	r9, r5
 8008f58:	d303      	bcc.n	8008f62 <_malloc_r+0x1c2>
 8008f5a:	eba9 0305 	sub.w	r3, r9, r5
 8008f5e:	2b0f      	cmp	r3, #15
 8008f60:	dc7b      	bgt.n	800905a <_malloc_r+0x2ba>
 8008f62:	4b5e      	ldr	r3, [pc, #376]	; (80090dc <_malloc_r+0x33c>)
 8008f64:	f8df a188 	ldr.w	sl, [pc, #392]	; 80090f0 <_malloc_r+0x350>
 8008f68:	681a      	ldr	r2, [r3, #0]
 8008f6a:	f8da 3000 	ldr.w	r3, [sl]
 8008f6e:	3301      	adds	r3, #1
 8008f70:	eb05 0802 	add.w	r8, r5, r2
 8008f74:	f000 8148 	beq.w	8009208 <_malloc_r+0x468>
 8008f78:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8008f7c:	f108 080f 	add.w	r8, r8, #15
 8008f80:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8008f84:	f028 080f 	bic.w	r8, r8, #15
 8008f88:	4641      	mov	r1, r8
 8008f8a:	4630      	mov	r0, r6
 8008f8c:	f000 fcf6 	bl	800997c <_sbrk_r>
 8008f90:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8008f94:	4683      	mov	fp, r0
 8008f96:	f000 8104 	beq.w	80091a2 <_malloc_r+0x402>
 8008f9a:	eb04 0009 	add.w	r0, r4, r9
 8008f9e:	4558      	cmp	r0, fp
 8008fa0:	f200 80fd 	bhi.w	800919e <_malloc_r+0x3fe>
 8008fa4:	4a4e      	ldr	r2, [pc, #312]	; (80090e0 <_malloc_r+0x340>)
 8008fa6:	6813      	ldr	r3, [r2, #0]
 8008fa8:	4443      	add	r3, r8
 8008faa:	6013      	str	r3, [r2, #0]
 8008fac:	f000 814d 	beq.w	800924a <_malloc_r+0x4aa>
 8008fb0:	f8da 1000 	ldr.w	r1, [sl]
 8008fb4:	3101      	adds	r1, #1
 8008fb6:	bf1b      	ittet	ne
 8008fb8:	ebab 0000 	subne.w	r0, fp, r0
 8008fbc:	181b      	addne	r3, r3, r0
 8008fbe:	f8ca b000 	streq.w	fp, [sl]
 8008fc2:	6013      	strne	r3, [r2, #0]
 8008fc4:	f01b 0307 	ands.w	r3, fp, #7
 8008fc8:	f000 8134 	beq.w	8009234 <_malloc_r+0x494>
 8008fcc:	f1c3 0108 	rsb	r1, r3, #8
 8008fd0:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8008fd4:	448b      	add	fp, r1
 8008fd6:	3308      	adds	r3, #8
 8008fd8:	44d8      	add	r8, fp
 8008fda:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8008fde:	eba3 0808 	sub.w	r8, r3, r8
 8008fe2:	4641      	mov	r1, r8
 8008fe4:	4630      	mov	r0, r6
 8008fe6:	9201      	str	r2, [sp, #4]
 8008fe8:	f000 fcc8 	bl	800997c <_sbrk_r>
 8008fec:	1c43      	adds	r3, r0, #1
 8008fee:	9a01      	ldr	r2, [sp, #4]
 8008ff0:	f000 8146 	beq.w	8009280 <_malloc_r+0x4e0>
 8008ff4:	eba0 010b 	sub.w	r1, r0, fp
 8008ff8:	4441      	add	r1, r8
 8008ffa:	f041 0101 	orr.w	r1, r1, #1
 8008ffe:	6813      	ldr	r3, [r2, #0]
 8009000:	f8c7 b008 	str.w	fp, [r7, #8]
 8009004:	4443      	add	r3, r8
 8009006:	42bc      	cmp	r4, r7
 8009008:	f8cb 1004 	str.w	r1, [fp, #4]
 800900c:	6013      	str	r3, [r2, #0]
 800900e:	d015      	beq.n	800903c <_malloc_r+0x29c>
 8009010:	f1b9 0f0f 	cmp.w	r9, #15
 8009014:	f240 8130 	bls.w	8009278 <_malloc_r+0x4d8>
 8009018:	6860      	ldr	r0, [r4, #4]
 800901a:	f1a9 010c 	sub.w	r1, r9, #12
 800901e:	f021 0107 	bic.w	r1, r1, #7
 8009022:	f000 0001 	and.w	r0, r0, #1
 8009026:	eb04 0c01 	add.w	ip, r4, r1
 800902a:	4308      	orrs	r0, r1
 800902c:	f04f 0e05 	mov.w	lr, #5
 8009030:	290f      	cmp	r1, #15
 8009032:	6060      	str	r0, [r4, #4]
 8009034:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8009038:	f200 813a 	bhi.w	80092b0 <_malloc_r+0x510>
 800903c:	4a29      	ldr	r2, [pc, #164]	; (80090e4 <_malloc_r+0x344>)
 800903e:	482a      	ldr	r0, [pc, #168]	; (80090e8 <_malloc_r+0x348>)
 8009040:	6811      	ldr	r1, [r2, #0]
 8009042:	68bc      	ldr	r4, [r7, #8]
 8009044:	428b      	cmp	r3, r1
 8009046:	6801      	ldr	r1, [r0, #0]
 8009048:	bf88      	it	hi
 800904a:	6013      	strhi	r3, [r2, #0]
 800904c:	6862      	ldr	r2, [r4, #4]
 800904e:	428b      	cmp	r3, r1
 8009050:	f022 0203 	bic.w	r2, r2, #3
 8009054:	bf88      	it	hi
 8009056:	6003      	strhi	r3, [r0, #0]
 8009058:	e0a7      	b.n	80091aa <_malloc_r+0x40a>
 800905a:	1962      	adds	r2, r4, r5
 800905c:	f043 0301 	orr.w	r3, r3, #1
 8009060:	f045 0501 	orr.w	r5, r5, #1
 8009064:	6065      	str	r5, [r4, #4]
 8009066:	4630      	mov	r0, r6
 8009068:	60ba      	str	r2, [r7, #8]
 800906a:	6053      	str	r3, [r2, #4]
 800906c:	f000 f942 	bl	80092f4 <__malloc_unlock>
 8009070:	3408      	adds	r4, #8
 8009072:	4620      	mov	r0, r4
 8009074:	b003      	add	sp, #12
 8009076:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800907a:	4423      	add	r3, r4
 800907c:	68e1      	ldr	r1, [r4, #12]
 800907e:	685a      	ldr	r2, [r3, #4]
 8009080:	68a5      	ldr	r5, [r4, #8]
 8009082:	f042 0201 	orr.w	r2, r2, #1
 8009086:	60e9      	str	r1, [r5, #12]
 8009088:	4630      	mov	r0, r6
 800908a:	608d      	str	r5, [r1, #8]
 800908c:	605a      	str	r2, [r3, #4]
 800908e:	f000 f931 	bl	80092f4 <__malloc_unlock>
 8009092:	3408      	adds	r4, #8
 8009094:	4620      	mov	r0, r4
 8009096:	b003      	add	sp, #12
 8009098:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800909c:	68dc      	ldr	r4, [r3, #12]
 800909e:	42a3      	cmp	r3, r4
 80090a0:	bf08      	it	eq
 80090a2:	3002      	addeq	r0, #2
 80090a4:	f43f aed6 	beq.w	8008e54 <_malloc_r+0xb4>
 80090a8:	e692      	b.n	8008dd0 <_malloc_r+0x30>
 80090aa:	2b14      	cmp	r3, #20
 80090ac:	d971      	bls.n	8009192 <_malloc_r+0x3f2>
 80090ae:	2b54      	cmp	r3, #84	; 0x54
 80090b0:	f200 80ad 	bhi.w	800920e <_malloc_r+0x46e>
 80090b4:	0b2b      	lsrs	r3, r5, #12
 80090b6:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80090ba:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80090be:	00c3      	lsls	r3, r0, #3
 80090c0:	e6b3      	b.n	8008e2a <_malloc_r+0x8a>
 80090c2:	4423      	add	r3, r4
 80090c4:	4630      	mov	r0, r6
 80090c6:	685a      	ldr	r2, [r3, #4]
 80090c8:	f042 0201 	orr.w	r2, r2, #1
 80090cc:	605a      	str	r2, [r3, #4]
 80090ce:	3408      	adds	r4, #8
 80090d0:	f000 f910 	bl	80092f4 <__malloc_unlock>
 80090d4:	e68c      	b.n	8008df0 <_malloc_r+0x50>
 80090d6:	bf00      	nop
 80090d8:	2000044c 	.word	0x2000044c
 80090dc:	20000bc8 	.word	0x20000bc8
 80090e0:	20000b98 	.word	0x20000b98
 80090e4:	20000bc0 	.word	0x20000bc0
 80090e8:	20000bc4 	.word	0x20000bc4
 80090ec:	20000454 	.word	0x20000454
 80090f0:	20000854 	.word	0x20000854
 80090f4:	1961      	adds	r1, r4, r5
 80090f6:	f045 0e01 	orr.w	lr, r5, #1
 80090fa:	f042 0501 	orr.w	r5, r2, #1
 80090fe:	f8c4 e004 	str.w	lr, [r4, #4]
 8009102:	4630      	mov	r0, r6
 8009104:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8009108:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 800910c:	604d      	str	r5, [r1, #4]
 800910e:	50e2      	str	r2, [r4, r3]
 8009110:	f000 f8f0 	bl	80092f4 <__malloc_unlock>
 8009114:	3408      	adds	r4, #8
 8009116:	e66b      	b.n	8008df0 <_malloc_r+0x50>
 8009118:	08e8      	lsrs	r0, r5, #3
 800911a:	f105 0308 	add.w	r3, r5, #8
 800911e:	e64f      	b.n	8008dc0 <_malloc_r+0x20>
 8009120:	f108 0801 	add.w	r8, r8, #1
 8009124:	f018 0f03 	tst.w	r8, #3
 8009128:	f10e 0e08 	add.w	lr, lr, #8
 800912c:	f47f aed0 	bne.w	8008ed0 <_malloc_r+0x130>
 8009130:	e052      	b.n	80091d8 <_malloc_r+0x438>
 8009132:	4419      	add	r1, r3
 8009134:	461c      	mov	r4, r3
 8009136:	684a      	ldr	r2, [r1, #4]
 8009138:	68db      	ldr	r3, [r3, #12]
 800913a:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800913e:	f042 0201 	orr.w	r2, r2, #1
 8009142:	604a      	str	r2, [r1, #4]
 8009144:	4630      	mov	r0, r6
 8009146:	60eb      	str	r3, [r5, #12]
 8009148:	609d      	str	r5, [r3, #8]
 800914a:	f000 f8d3 	bl	80092f4 <__malloc_unlock>
 800914e:	e64f      	b.n	8008df0 <_malloc_r+0x50>
 8009150:	0a5a      	lsrs	r2, r3, #9
 8009152:	2a04      	cmp	r2, #4
 8009154:	d935      	bls.n	80091c2 <_malloc_r+0x422>
 8009156:	2a14      	cmp	r2, #20
 8009158:	d86f      	bhi.n	800923a <_malloc_r+0x49a>
 800915a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800915e:	00c9      	lsls	r1, r1, #3
 8009160:	325b      	adds	r2, #91	; 0x5b
 8009162:	eb07 0e01 	add.w	lr, r7, r1
 8009166:	5879      	ldr	r1, [r7, r1]
 8009168:	f1ae 0e08 	sub.w	lr, lr, #8
 800916c:	458e      	cmp	lr, r1
 800916e:	d058      	beq.n	8009222 <_malloc_r+0x482>
 8009170:	684a      	ldr	r2, [r1, #4]
 8009172:	f022 0203 	bic.w	r2, r2, #3
 8009176:	429a      	cmp	r2, r3
 8009178:	d902      	bls.n	8009180 <_malloc_r+0x3e0>
 800917a:	6889      	ldr	r1, [r1, #8]
 800917c:	458e      	cmp	lr, r1
 800917e:	d1f7      	bne.n	8009170 <_malloc_r+0x3d0>
 8009180:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8009184:	687b      	ldr	r3, [r7, #4]
 8009186:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800918a:	f8ce 4008 	str.w	r4, [lr, #8]
 800918e:	60cc      	str	r4, [r1, #12]
 8009190:	e68c      	b.n	8008eac <_malloc_r+0x10c>
 8009192:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8009196:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800919a:	00c3      	lsls	r3, r0, #3
 800919c:	e645      	b.n	8008e2a <_malloc_r+0x8a>
 800919e:	42bc      	cmp	r4, r7
 80091a0:	d072      	beq.n	8009288 <_malloc_r+0x4e8>
 80091a2:	68bc      	ldr	r4, [r7, #8]
 80091a4:	6862      	ldr	r2, [r4, #4]
 80091a6:	f022 0203 	bic.w	r2, r2, #3
 80091aa:	4295      	cmp	r5, r2
 80091ac:	eba2 0305 	sub.w	r3, r2, r5
 80091b0:	d802      	bhi.n	80091b8 <_malloc_r+0x418>
 80091b2:	2b0f      	cmp	r3, #15
 80091b4:	f73f af51 	bgt.w	800905a <_malloc_r+0x2ba>
 80091b8:	4630      	mov	r0, r6
 80091ba:	f000 f89b 	bl	80092f4 <__malloc_unlock>
 80091be:	2400      	movs	r4, #0
 80091c0:	e616      	b.n	8008df0 <_malloc_r+0x50>
 80091c2:	099a      	lsrs	r2, r3, #6
 80091c4:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80091c8:	00c9      	lsls	r1, r1, #3
 80091ca:	3238      	adds	r2, #56	; 0x38
 80091cc:	e7c9      	b.n	8009162 <_malloc_r+0x3c2>
 80091ce:	f8d9 9000 	ldr.w	r9, [r9]
 80091d2:	4599      	cmp	r9, r3
 80091d4:	f040 8083 	bne.w	80092de <_malloc_r+0x53e>
 80091d8:	f010 0f03 	tst.w	r0, #3
 80091dc:	f1a9 0308 	sub.w	r3, r9, #8
 80091e0:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80091e4:	d1f3      	bne.n	80091ce <_malloc_r+0x42e>
 80091e6:	687b      	ldr	r3, [r7, #4]
 80091e8:	ea23 0304 	bic.w	r3, r3, r4
 80091ec:	607b      	str	r3, [r7, #4]
 80091ee:	0064      	lsls	r4, r4, #1
 80091f0:	429c      	cmp	r4, r3
 80091f2:	f63f aeac 	bhi.w	8008f4e <_malloc_r+0x1ae>
 80091f6:	b91c      	cbnz	r4, 8009200 <_malloc_r+0x460>
 80091f8:	e6a9      	b.n	8008f4e <_malloc_r+0x1ae>
 80091fa:	0064      	lsls	r4, r4, #1
 80091fc:	f108 0804 	add.w	r8, r8, #4
 8009200:	421c      	tst	r4, r3
 8009202:	d0fa      	beq.n	80091fa <_malloc_r+0x45a>
 8009204:	4640      	mov	r0, r8
 8009206:	e65f      	b.n	8008ec8 <_malloc_r+0x128>
 8009208:	f108 0810 	add.w	r8, r8, #16
 800920c:	e6bc      	b.n	8008f88 <_malloc_r+0x1e8>
 800920e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8009212:	d826      	bhi.n	8009262 <_malloc_r+0x4c2>
 8009214:	0beb      	lsrs	r3, r5, #15
 8009216:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800921a:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800921e:	00c3      	lsls	r3, r0, #3
 8009220:	e603      	b.n	8008e2a <_malloc_r+0x8a>
 8009222:	687b      	ldr	r3, [r7, #4]
 8009224:	1092      	asrs	r2, r2, #2
 8009226:	f04f 0801 	mov.w	r8, #1
 800922a:	fa08 f202 	lsl.w	r2, r8, r2
 800922e:	4313      	orrs	r3, r2
 8009230:	607b      	str	r3, [r7, #4]
 8009232:	e7a8      	b.n	8009186 <_malloc_r+0x3e6>
 8009234:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8009238:	e6ce      	b.n	8008fd8 <_malloc_r+0x238>
 800923a:	2a54      	cmp	r2, #84	; 0x54
 800923c:	d829      	bhi.n	8009292 <_malloc_r+0x4f2>
 800923e:	0b1a      	lsrs	r2, r3, #12
 8009240:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8009244:	00c9      	lsls	r1, r1, #3
 8009246:	326e      	adds	r2, #110	; 0x6e
 8009248:	e78b      	b.n	8009162 <_malloc_r+0x3c2>
 800924a:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800924e:	2900      	cmp	r1, #0
 8009250:	f47f aeae 	bne.w	8008fb0 <_malloc_r+0x210>
 8009254:	eb09 0208 	add.w	r2, r9, r8
 8009258:	68b9      	ldr	r1, [r7, #8]
 800925a:	f042 0201 	orr.w	r2, r2, #1
 800925e:	604a      	str	r2, [r1, #4]
 8009260:	e6ec      	b.n	800903c <_malloc_r+0x29c>
 8009262:	f240 5254 	movw	r2, #1364	; 0x554
 8009266:	4293      	cmp	r3, r2
 8009268:	d81c      	bhi.n	80092a4 <_malloc_r+0x504>
 800926a:	0cab      	lsrs	r3, r5, #18
 800926c:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8009270:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8009274:	00c3      	lsls	r3, r0, #3
 8009276:	e5d8      	b.n	8008e2a <_malloc_r+0x8a>
 8009278:	2301      	movs	r3, #1
 800927a:	f8cb 3004 	str.w	r3, [fp, #4]
 800927e:	e79b      	b.n	80091b8 <_malloc_r+0x418>
 8009280:	2101      	movs	r1, #1
 8009282:	f04f 0800 	mov.w	r8, #0
 8009286:	e6ba      	b.n	8008ffe <_malloc_r+0x25e>
 8009288:	4a16      	ldr	r2, [pc, #88]	; (80092e4 <_malloc_r+0x544>)
 800928a:	6813      	ldr	r3, [r2, #0]
 800928c:	4443      	add	r3, r8
 800928e:	6013      	str	r3, [r2, #0]
 8009290:	e68e      	b.n	8008fb0 <_malloc_r+0x210>
 8009292:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8009296:	d814      	bhi.n	80092c2 <_malloc_r+0x522>
 8009298:	0bda      	lsrs	r2, r3, #15
 800929a:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800929e:	00c9      	lsls	r1, r1, #3
 80092a0:	3277      	adds	r2, #119	; 0x77
 80092a2:	e75e      	b.n	8009162 <_malloc_r+0x3c2>
 80092a4:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80092a8:	207f      	movs	r0, #127	; 0x7f
 80092aa:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80092ae:	e5bc      	b.n	8008e2a <_malloc_r+0x8a>
 80092b0:	f104 0108 	add.w	r1, r4, #8
 80092b4:	4630      	mov	r0, r6
 80092b6:	9201      	str	r2, [sp, #4]
 80092b8:	f7ff fbc6 	bl	8008a48 <_free_r>
 80092bc:	9a01      	ldr	r2, [sp, #4]
 80092be:	6813      	ldr	r3, [r2, #0]
 80092c0:	e6bc      	b.n	800903c <_malloc_r+0x29c>
 80092c2:	f240 5154 	movw	r1, #1364	; 0x554
 80092c6:	428a      	cmp	r2, r1
 80092c8:	d805      	bhi.n	80092d6 <_malloc_r+0x536>
 80092ca:	0c9a      	lsrs	r2, r3, #18
 80092cc:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80092d0:	00c9      	lsls	r1, r1, #3
 80092d2:	327c      	adds	r2, #124	; 0x7c
 80092d4:	e745      	b.n	8009162 <_malloc_r+0x3c2>
 80092d6:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80092da:	227e      	movs	r2, #126	; 0x7e
 80092dc:	e741      	b.n	8009162 <_malloc_r+0x3c2>
 80092de:	687b      	ldr	r3, [r7, #4]
 80092e0:	e785      	b.n	80091ee <_malloc_r+0x44e>
 80092e2:	bf00      	nop
 80092e4:	20000b98 	.word	0x20000b98

080092e8 <__malloc_lock>:
 80092e8:	4801      	ldr	r0, [pc, #4]	; (80092f0 <__malloc_lock+0x8>)
 80092ea:	f7ff bcdd 	b.w	8008ca8 <__retarget_lock_acquire_recursive>
 80092ee:	bf00      	nop
 80092f0:	20000c24 	.word	0x20000c24

080092f4 <__malloc_unlock>:
 80092f4:	4801      	ldr	r0, [pc, #4]	; (80092fc <__malloc_unlock+0x8>)
 80092f6:	f7ff bcd9 	b.w	8008cac <__retarget_lock_release_recursive>
 80092fa:	bf00      	nop
 80092fc:	20000c24 	.word	0x20000c24

08009300 <_Balloc>:
 8009300:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8009302:	b570      	push	{r4, r5, r6, lr}
 8009304:	4605      	mov	r5, r0
 8009306:	460c      	mov	r4, r1
 8009308:	b14b      	cbz	r3, 800931e <_Balloc+0x1e>
 800930a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800930e:	b180      	cbz	r0, 8009332 <_Balloc+0x32>
 8009310:	6802      	ldr	r2, [r0, #0]
 8009312:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8009316:	2300      	movs	r3, #0
 8009318:	e9c0 3303 	strd	r3, r3, [r0, #12]
 800931c:	bd70      	pop	{r4, r5, r6, pc}
 800931e:	2221      	movs	r2, #33	; 0x21
 8009320:	2104      	movs	r1, #4
 8009322:	f000 fc6f 	bl	8009c04 <_calloc_r>
 8009326:	4603      	mov	r3, r0
 8009328:	64e8      	str	r0, [r5, #76]	; 0x4c
 800932a:	2800      	cmp	r0, #0
 800932c:	d1ed      	bne.n	800930a <_Balloc+0xa>
 800932e:	2000      	movs	r0, #0
 8009330:	bd70      	pop	{r4, r5, r6, pc}
 8009332:	2101      	movs	r1, #1
 8009334:	fa01 f604 	lsl.w	r6, r1, r4
 8009338:	1d72      	adds	r2, r6, #5
 800933a:	4628      	mov	r0, r5
 800933c:	0092      	lsls	r2, r2, #2
 800933e:	f000 fc61 	bl	8009c04 <_calloc_r>
 8009342:	2800      	cmp	r0, #0
 8009344:	d0f3      	beq.n	800932e <_Balloc+0x2e>
 8009346:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800934a:	e7e4      	b.n	8009316 <_Balloc+0x16>

0800934c <_Bfree>:
 800934c:	b131      	cbz	r1, 800935c <_Bfree+0x10>
 800934e:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8009350:	684a      	ldr	r2, [r1, #4]
 8009352:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8009356:	6008      	str	r0, [r1, #0]
 8009358:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800935c:	4770      	bx	lr
 800935e:	bf00      	nop

08009360 <__multadd>:
 8009360:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009362:	690c      	ldr	r4, [r1, #16]
 8009364:	b083      	sub	sp, #12
 8009366:	460d      	mov	r5, r1
 8009368:	4606      	mov	r6, r0
 800936a:	f101 0c14 	add.w	ip, r1, #20
 800936e:	2700      	movs	r7, #0
 8009370:	f8dc 0000 	ldr.w	r0, [ip]
 8009374:	b281      	uxth	r1, r0
 8009376:	fb02 3301 	mla	r3, r2, r1, r3
 800937a:	0c01      	lsrs	r1, r0, #16
 800937c:	0c18      	lsrs	r0, r3, #16
 800937e:	fb02 0101 	mla	r1, r2, r1, r0
 8009382:	b29b      	uxth	r3, r3
 8009384:	3701      	adds	r7, #1
 8009386:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800938a:	42bc      	cmp	r4, r7
 800938c:	f84c 3b04 	str.w	r3, [ip], #4
 8009390:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8009394:	dcec      	bgt.n	8009370 <__multadd+0x10>
 8009396:	b13b      	cbz	r3, 80093a8 <__multadd+0x48>
 8009398:	68aa      	ldr	r2, [r5, #8]
 800939a:	42a2      	cmp	r2, r4
 800939c:	dd07      	ble.n	80093ae <__multadd+0x4e>
 800939e:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80093a2:	3401      	adds	r4, #1
 80093a4:	6153      	str	r3, [r2, #20]
 80093a6:	612c      	str	r4, [r5, #16]
 80093a8:	4628      	mov	r0, r5
 80093aa:	b003      	add	sp, #12
 80093ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80093ae:	6869      	ldr	r1, [r5, #4]
 80093b0:	9301      	str	r3, [sp, #4]
 80093b2:	3101      	adds	r1, #1
 80093b4:	4630      	mov	r0, r6
 80093b6:	f7ff ffa3 	bl	8009300 <_Balloc>
 80093ba:	692a      	ldr	r2, [r5, #16]
 80093bc:	3202      	adds	r2, #2
 80093be:	f105 010c 	add.w	r1, r5, #12
 80093c2:	4607      	mov	r7, r0
 80093c4:	0092      	lsls	r2, r2, #2
 80093c6:	300c      	adds	r0, #12
 80093c8:	f7f7 fd7c 	bl	8000ec4 <memcpy>
 80093cc:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80093ce:	6869      	ldr	r1, [r5, #4]
 80093d0:	9b01      	ldr	r3, [sp, #4]
 80093d2:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80093d6:	6028      	str	r0, [r5, #0]
 80093d8:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80093dc:	463d      	mov	r5, r7
 80093de:	e7de      	b.n	800939e <__multadd+0x3e>

080093e0 <__hi0bits>:
 80093e0:	0c02      	lsrs	r2, r0, #16
 80093e2:	0412      	lsls	r2, r2, #16
 80093e4:	4603      	mov	r3, r0
 80093e6:	b9c2      	cbnz	r2, 800941a <__hi0bits+0x3a>
 80093e8:	0403      	lsls	r3, r0, #16
 80093ea:	2010      	movs	r0, #16
 80093ec:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80093f0:	bf04      	itt	eq
 80093f2:	021b      	lsleq	r3, r3, #8
 80093f4:	3008      	addeq	r0, #8
 80093f6:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80093fa:	bf04      	itt	eq
 80093fc:	011b      	lsleq	r3, r3, #4
 80093fe:	3004      	addeq	r0, #4
 8009400:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8009404:	bf04      	itt	eq
 8009406:	009b      	lsleq	r3, r3, #2
 8009408:	3002      	addeq	r0, #2
 800940a:	2b00      	cmp	r3, #0
 800940c:	db04      	blt.n	8009418 <__hi0bits+0x38>
 800940e:	005b      	lsls	r3, r3, #1
 8009410:	d501      	bpl.n	8009416 <__hi0bits+0x36>
 8009412:	3001      	adds	r0, #1
 8009414:	4770      	bx	lr
 8009416:	2020      	movs	r0, #32
 8009418:	4770      	bx	lr
 800941a:	2000      	movs	r0, #0
 800941c:	e7e6      	b.n	80093ec <__hi0bits+0xc>
 800941e:	bf00      	nop

08009420 <__lo0bits>:
 8009420:	6803      	ldr	r3, [r0, #0]
 8009422:	f013 0207 	ands.w	r2, r3, #7
 8009426:	4601      	mov	r1, r0
 8009428:	d007      	beq.n	800943a <__lo0bits+0x1a>
 800942a:	07da      	lsls	r2, r3, #31
 800942c:	d41f      	bmi.n	800946e <__lo0bits+0x4e>
 800942e:	0798      	lsls	r0, r3, #30
 8009430:	d51f      	bpl.n	8009472 <__lo0bits+0x52>
 8009432:	085b      	lsrs	r3, r3, #1
 8009434:	600b      	str	r3, [r1, #0]
 8009436:	2001      	movs	r0, #1
 8009438:	4770      	bx	lr
 800943a:	b298      	uxth	r0, r3
 800943c:	b1a0      	cbz	r0, 8009468 <__lo0bits+0x48>
 800943e:	4610      	mov	r0, r2
 8009440:	f013 0fff 	tst.w	r3, #255	; 0xff
 8009444:	bf04      	itt	eq
 8009446:	0a1b      	lsreq	r3, r3, #8
 8009448:	3008      	addeq	r0, #8
 800944a:	071a      	lsls	r2, r3, #28
 800944c:	bf04      	itt	eq
 800944e:	091b      	lsreq	r3, r3, #4
 8009450:	3004      	addeq	r0, #4
 8009452:	079a      	lsls	r2, r3, #30
 8009454:	bf04      	itt	eq
 8009456:	089b      	lsreq	r3, r3, #2
 8009458:	3002      	addeq	r0, #2
 800945a:	07da      	lsls	r2, r3, #31
 800945c:	d402      	bmi.n	8009464 <__lo0bits+0x44>
 800945e:	085b      	lsrs	r3, r3, #1
 8009460:	d00b      	beq.n	800947a <__lo0bits+0x5a>
 8009462:	3001      	adds	r0, #1
 8009464:	600b      	str	r3, [r1, #0]
 8009466:	4770      	bx	lr
 8009468:	0c1b      	lsrs	r3, r3, #16
 800946a:	2010      	movs	r0, #16
 800946c:	e7e8      	b.n	8009440 <__lo0bits+0x20>
 800946e:	2000      	movs	r0, #0
 8009470:	4770      	bx	lr
 8009472:	089b      	lsrs	r3, r3, #2
 8009474:	600b      	str	r3, [r1, #0]
 8009476:	2002      	movs	r0, #2
 8009478:	4770      	bx	lr
 800947a:	2020      	movs	r0, #32
 800947c:	4770      	bx	lr
 800947e:	bf00      	nop

08009480 <__i2b>:
 8009480:	b510      	push	{r4, lr}
 8009482:	460c      	mov	r4, r1
 8009484:	2101      	movs	r1, #1
 8009486:	f7ff ff3b 	bl	8009300 <_Balloc>
 800948a:	2201      	movs	r2, #1
 800948c:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8009490:	bd10      	pop	{r4, pc}
 8009492:	bf00      	nop

08009494 <__multiply>:
 8009494:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009498:	690e      	ldr	r6, [r1, #16]
 800949a:	6914      	ldr	r4, [r2, #16]
 800949c:	42a6      	cmp	r6, r4
 800949e:	b083      	sub	sp, #12
 80094a0:	460f      	mov	r7, r1
 80094a2:	4615      	mov	r5, r2
 80094a4:	da04      	bge.n	80094b0 <__multiply+0x1c>
 80094a6:	4632      	mov	r2, r6
 80094a8:	462f      	mov	r7, r5
 80094aa:	4626      	mov	r6, r4
 80094ac:	460d      	mov	r5, r1
 80094ae:	4614      	mov	r4, r2
 80094b0:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80094b4:	eb06 0804 	add.w	r8, r6, r4
 80094b8:	4543      	cmp	r3, r8
 80094ba:	bfb8      	it	lt
 80094bc:	3101      	addlt	r1, #1
 80094be:	f7ff ff1f 	bl	8009300 <_Balloc>
 80094c2:	f100 0914 	add.w	r9, r0, #20
 80094c6:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80094ca:	45f1      	cmp	r9, lr
 80094cc:	9000      	str	r0, [sp, #0]
 80094ce:	d205      	bcs.n	80094dc <__multiply+0x48>
 80094d0:	464b      	mov	r3, r9
 80094d2:	2200      	movs	r2, #0
 80094d4:	f843 2b04 	str.w	r2, [r3], #4
 80094d8:	459e      	cmp	lr, r3
 80094da:	d8fb      	bhi.n	80094d4 <__multiply+0x40>
 80094dc:	f105 0a14 	add.w	sl, r5, #20
 80094e0:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80094e4:	f107 0314 	add.w	r3, r7, #20
 80094e8:	45a2      	cmp	sl, r4
 80094ea:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80094ee:	d261      	bcs.n	80095b4 <__multiply+0x120>
 80094f0:	1b64      	subs	r4, r4, r5
 80094f2:	3c15      	subs	r4, #21
 80094f4:	f024 0403 	bic.w	r4, r4, #3
 80094f8:	f8cd e004 	str.w	lr, [sp, #4]
 80094fc:	44a2      	add	sl, r4
 80094fe:	f105 0210 	add.w	r2, r5, #16
 8009502:	469e      	mov	lr, r3
 8009504:	e005      	b.n	8009512 <__multiply+0x7e>
 8009506:	0c2d      	lsrs	r5, r5, #16
 8009508:	d12b      	bne.n	8009562 <__multiply+0xce>
 800950a:	4592      	cmp	sl, r2
 800950c:	f109 0904 	add.w	r9, r9, #4
 8009510:	d04e      	beq.n	80095b0 <__multiply+0x11c>
 8009512:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8009516:	fa1f fb85 	uxth.w	fp, r5
 800951a:	f1bb 0f00 	cmp.w	fp, #0
 800951e:	d0f2      	beq.n	8009506 <__multiply+0x72>
 8009520:	4677      	mov	r7, lr
 8009522:	464e      	mov	r6, r9
 8009524:	2000      	movs	r0, #0
 8009526:	e000      	b.n	800952a <__multiply+0x96>
 8009528:	4626      	mov	r6, r4
 800952a:	f857 1b04 	ldr.w	r1, [r7], #4
 800952e:	6834      	ldr	r4, [r6, #0]
 8009530:	b28b      	uxth	r3, r1
 8009532:	b2a5      	uxth	r5, r4
 8009534:	0c09      	lsrs	r1, r1, #16
 8009536:	0c24      	lsrs	r4, r4, #16
 8009538:	fb0b 5303 	mla	r3, fp, r3, r5
 800953c:	4403      	add	r3, r0
 800953e:	fb0b 4001 	mla	r0, fp, r1, r4
 8009542:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8009546:	4634      	mov	r4, r6
 8009548:	b29b      	uxth	r3, r3
 800954a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800954e:	45bc      	cmp	ip, r7
 8009550:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8009554:	f844 3b04 	str.w	r3, [r4], #4
 8009558:	d8e6      	bhi.n	8009528 <__multiply+0x94>
 800955a:	6070      	str	r0, [r6, #4]
 800955c:	6815      	ldr	r5, [r2, #0]
 800955e:	0c2d      	lsrs	r5, r5, #16
 8009560:	d0d3      	beq.n	800950a <__multiply+0x76>
 8009562:	f8d9 3000 	ldr.w	r3, [r9]
 8009566:	4676      	mov	r6, lr
 8009568:	4618      	mov	r0, r3
 800956a:	46cb      	mov	fp, r9
 800956c:	2100      	movs	r1, #0
 800956e:	e000      	b.n	8009572 <__multiply+0xde>
 8009570:	46a3      	mov	fp, r4
 8009572:	8834      	ldrh	r4, [r6, #0]
 8009574:	0c00      	lsrs	r0, r0, #16
 8009576:	fb05 0004 	mla	r0, r5, r4, r0
 800957a:	4401      	add	r1, r0
 800957c:	b29b      	uxth	r3, r3
 800957e:	465c      	mov	r4, fp
 8009580:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8009584:	f844 3b04 	str.w	r3, [r4], #4
 8009588:	f856 3b04 	ldr.w	r3, [r6], #4
 800958c:	f8db 0004 	ldr.w	r0, [fp, #4]
 8009590:	0c1b      	lsrs	r3, r3, #16
 8009592:	b287      	uxth	r7, r0
 8009594:	fb05 7303 	mla	r3, r5, r3, r7
 8009598:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 800959c:	45b4      	cmp	ip, r6
 800959e:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80095a2:	d8e5      	bhi.n	8009570 <__multiply+0xdc>
 80095a4:	4592      	cmp	sl, r2
 80095a6:	f8cb 3004 	str.w	r3, [fp, #4]
 80095aa:	f109 0904 	add.w	r9, r9, #4
 80095ae:	d1b0      	bne.n	8009512 <__multiply+0x7e>
 80095b0:	f8dd e004 	ldr.w	lr, [sp, #4]
 80095b4:	f1b8 0f00 	cmp.w	r8, #0
 80095b8:	dd0b      	ble.n	80095d2 <__multiply+0x13e>
 80095ba:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80095be:	f1ae 0e04 	sub.w	lr, lr, #4
 80095c2:	b11b      	cbz	r3, 80095cc <__multiply+0x138>
 80095c4:	e005      	b.n	80095d2 <__multiply+0x13e>
 80095c6:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80095ca:	b913      	cbnz	r3, 80095d2 <__multiply+0x13e>
 80095cc:	f1b8 0801 	subs.w	r8, r8, #1
 80095d0:	d1f9      	bne.n	80095c6 <__multiply+0x132>
 80095d2:	9800      	ldr	r0, [sp, #0]
 80095d4:	f8c0 8010 	str.w	r8, [r0, #16]
 80095d8:	b003      	add	sp, #12
 80095da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80095de:	bf00      	nop

080095e0 <__pow5mult>:
 80095e0:	f012 0303 	ands.w	r3, r2, #3
 80095e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80095e8:	4614      	mov	r4, r2
 80095ea:	4607      	mov	r7, r0
 80095ec:	d12e      	bne.n	800964c <__pow5mult+0x6c>
 80095ee:	460d      	mov	r5, r1
 80095f0:	10a4      	asrs	r4, r4, #2
 80095f2:	d01c      	beq.n	800962e <__pow5mult+0x4e>
 80095f4:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80095f6:	b396      	cbz	r6, 800965e <__pow5mult+0x7e>
 80095f8:	07e3      	lsls	r3, r4, #31
 80095fa:	f04f 0800 	mov.w	r8, #0
 80095fe:	d406      	bmi.n	800960e <__pow5mult+0x2e>
 8009600:	1064      	asrs	r4, r4, #1
 8009602:	d014      	beq.n	800962e <__pow5mult+0x4e>
 8009604:	6830      	ldr	r0, [r6, #0]
 8009606:	b1a8      	cbz	r0, 8009634 <__pow5mult+0x54>
 8009608:	4606      	mov	r6, r0
 800960a:	07e3      	lsls	r3, r4, #31
 800960c:	d5f8      	bpl.n	8009600 <__pow5mult+0x20>
 800960e:	4632      	mov	r2, r6
 8009610:	4629      	mov	r1, r5
 8009612:	4638      	mov	r0, r7
 8009614:	f7ff ff3e 	bl	8009494 <__multiply>
 8009618:	b1b5      	cbz	r5, 8009648 <__pow5mult+0x68>
 800961a:	686a      	ldr	r2, [r5, #4]
 800961c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800961e:	1064      	asrs	r4, r4, #1
 8009620:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8009624:	6029      	str	r1, [r5, #0]
 8009626:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800962a:	4605      	mov	r5, r0
 800962c:	d1ea      	bne.n	8009604 <__pow5mult+0x24>
 800962e:	4628      	mov	r0, r5
 8009630:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009634:	4632      	mov	r2, r6
 8009636:	4631      	mov	r1, r6
 8009638:	4638      	mov	r0, r7
 800963a:	f7ff ff2b 	bl	8009494 <__multiply>
 800963e:	6030      	str	r0, [r6, #0]
 8009640:	f8c0 8000 	str.w	r8, [r0]
 8009644:	4606      	mov	r6, r0
 8009646:	e7e0      	b.n	800960a <__pow5mult+0x2a>
 8009648:	4605      	mov	r5, r0
 800964a:	e7d9      	b.n	8009600 <__pow5mult+0x20>
 800964c:	3b01      	subs	r3, #1
 800964e:	4a0b      	ldr	r2, [pc, #44]	; (800967c <__pow5mult+0x9c>)
 8009650:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8009654:	2300      	movs	r3, #0
 8009656:	f7ff fe83 	bl	8009360 <__multadd>
 800965a:	4605      	mov	r5, r0
 800965c:	e7c8      	b.n	80095f0 <__pow5mult+0x10>
 800965e:	2101      	movs	r1, #1
 8009660:	4638      	mov	r0, r7
 8009662:	f7ff fe4d 	bl	8009300 <_Balloc>
 8009666:	f240 2371 	movw	r3, #625	; 0x271
 800966a:	6143      	str	r3, [r0, #20]
 800966c:	2201      	movs	r2, #1
 800966e:	2300      	movs	r3, #0
 8009670:	6102      	str	r2, [r0, #16]
 8009672:	4606      	mov	r6, r0
 8009674:	64b8      	str	r0, [r7, #72]	; 0x48
 8009676:	6003      	str	r3, [r0, #0]
 8009678:	e7be      	b.n	80095f8 <__pow5mult+0x18>
 800967a:	bf00      	nop
 800967c:	0800ac70 	.word	0x0800ac70

08009680 <__lshift>:
 8009680:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009684:	4691      	mov	r9, r2
 8009686:	690a      	ldr	r2, [r1, #16]
 8009688:	460e      	mov	r6, r1
 800968a:	ea4f 1469 	mov.w	r4, r9, asr #5
 800968e:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8009692:	eb04 0802 	add.w	r8, r4, r2
 8009696:	f108 0501 	add.w	r5, r8, #1
 800969a:	429d      	cmp	r5, r3
 800969c:	4607      	mov	r7, r0
 800969e:	dd04      	ble.n	80096aa <__lshift+0x2a>
 80096a0:	005b      	lsls	r3, r3, #1
 80096a2:	429d      	cmp	r5, r3
 80096a4:	f101 0101 	add.w	r1, r1, #1
 80096a8:	dcfa      	bgt.n	80096a0 <__lshift+0x20>
 80096aa:	4638      	mov	r0, r7
 80096ac:	f7ff fe28 	bl	8009300 <_Balloc>
 80096b0:	2c00      	cmp	r4, #0
 80096b2:	f100 0314 	add.w	r3, r0, #20
 80096b6:	dd37      	ble.n	8009728 <__lshift+0xa8>
 80096b8:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80096bc:	2200      	movs	r2, #0
 80096be:	f843 2b04 	str.w	r2, [r3], #4
 80096c2:	428b      	cmp	r3, r1
 80096c4:	d1fb      	bne.n	80096be <__lshift+0x3e>
 80096c6:	6934      	ldr	r4, [r6, #16]
 80096c8:	f106 0314 	add.w	r3, r6, #20
 80096cc:	f019 091f 	ands.w	r9, r9, #31
 80096d0:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80096d4:	d020      	beq.n	8009718 <__lshift+0x98>
 80096d6:	f1c9 0e20 	rsb	lr, r9, #32
 80096da:	2200      	movs	r2, #0
 80096dc:	e000      	b.n	80096e0 <__lshift+0x60>
 80096de:	4651      	mov	r1, sl
 80096e0:	681c      	ldr	r4, [r3, #0]
 80096e2:	468a      	mov	sl, r1
 80096e4:	fa04 f409 	lsl.w	r4, r4, r9
 80096e8:	4314      	orrs	r4, r2
 80096ea:	f84a 4b04 	str.w	r4, [sl], #4
 80096ee:	f853 2b04 	ldr.w	r2, [r3], #4
 80096f2:	4563      	cmp	r3, ip
 80096f4:	fa22 f20e 	lsr.w	r2, r2, lr
 80096f8:	d3f1      	bcc.n	80096de <__lshift+0x5e>
 80096fa:	604a      	str	r2, [r1, #4]
 80096fc:	b10a      	cbz	r2, 8009702 <__lshift+0x82>
 80096fe:	f108 0502 	add.w	r5, r8, #2
 8009702:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8009704:	6872      	ldr	r2, [r6, #4]
 8009706:	3d01      	subs	r5, #1
 8009708:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800970c:	6105      	str	r5, [r0, #16]
 800970e:	6031      	str	r1, [r6, #0]
 8009710:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8009714:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009718:	3904      	subs	r1, #4
 800971a:	f853 2b04 	ldr.w	r2, [r3], #4
 800971e:	f841 2f04 	str.w	r2, [r1, #4]!
 8009722:	459c      	cmp	ip, r3
 8009724:	d8f9      	bhi.n	800971a <__lshift+0x9a>
 8009726:	e7ec      	b.n	8009702 <__lshift+0x82>
 8009728:	4619      	mov	r1, r3
 800972a:	e7cc      	b.n	80096c6 <__lshift+0x46>

0800972c <__mcmp>:
 800972c:	b430      	push	{r4, r5}
 800972e:	690b      	ldr	r3, [r1, #16]
 8009730:	4605      	mov	r5, r0
 8009732:	6900      	ldr	r0, [r0, #16]
 8009734:	1ac0      	subs	r0, r0, r3
 8009736:	d10f      	bne.n	8009758 <__mcmp+0x2c>
 8009738:	009b      	lsls	r3, r3, #2
 800973a:	3514      	adds	r5, #20
 800973c:	3114      	adds	r1, #20
 800973e:	4419      	add	r1, r3
 8009740:	442b      	add	r3, r5
 8009742:	e001      	b.n	8009748 <__mcmp+0x1c>
 8009744:	429d      	cmp	r5, r3
 8009746:	d207      	bcs.n	8009758 <__mcmp+0x2c>
 8009748:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 800974c:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8009750:	4294      	cmp	r4, r2
 8009752:	d0f7      	beq.n	8009744 <__mcmp+0x18>
 8009754:	d302      	bcc.n	800975c <__mcmp+0x30>
 8009756:	2001      	movs	r0, #1
 8009758:	bc30      	pop	{r4, r5}
 800975a:	4770      	bx	lr
 800975c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009760:	e7fa      	b.n	8009758 <__mcmp+0x2c>
 8009762:	bf00      	nop

08009764 <__mdiff>:
 8009764:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009768:	6913      	ldr	r3, [r2, #16]
 800976a:	690d      	ldr	r5, [r1, #16]
 800976c:	1aed      	subs	r5, r5, r3
 800976e:	2d00      	cmp	r5, #0
 8009770:	460e      	mov	r6, r1
 8009772:	4690      	mov	r8, r2
 8009774:	f101 0414 	add.w	r4, r1, #20
 8009778:	f102 0714 	add.w	r7, r2, #20
 800977c:	d114      	bne.n	80097a8 <__mdiff+0x44>
 800977e:	009b      	lsls	r3, r3, #2
 8009780:	18e2      	adds	r2, r4, r3
 8009782:	443b      	add	r3, r7
 8009784:	e001      	b.n	800978a <__mdiff+0x26>
 8009786:	42a2      	cmp	r2, r4
 8009788:	d959      	bls.n	800983e <__mdiff+0xda>
 800978a:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800978e:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8009792:	458c      	cmp	ip, r1
 8009794:	d0f7      	beq.n	8009786 <__mdiff+0x22>
 8009796:	d209      	bcs.n	80097ac <__mdiff+0x48>
 8009798:	4622      	mov	r2, r4
 800979a:	4633      	mov	r3, r6
 800979c:	463c      	mov	r4, r7
 800979e:	4646      	mov	r6, r8
 80097a0:	4617      	mov	r7, r2
 80097a2:	4698      	mov	r8, r3
 80097a4:	2501      	movs	r5, #1
 80097a6:	e001      	b.n	80097ac <__mdiff+0x48>
 80097a8:	dbf6      	blt.n	8009798 <__mdiff+0x34>
 80097aa:	2500      	movs	r5, #0
 80097ac:	6871      	ldr	r1, [r6, #4]
 80097ae:	f7ff fda7 	bl	8009300 <_Balloc>
 80097b2:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80097b6:	6936      	ldr	r6, [r6, #16]
 80097b8:	60c5      	str	r5, [r0, #12]
 80097ba:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80097be:	46bc      	mov	ip, r7
 80097c0:	f100 0514 	add.w	r5, r0, #20
 80097c4:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80097c8:	2300      	movs	r3, #0
 80097ca:	f85c 1b04 	ldr.w	r1, [ip], #4
 80097ce:	f854 8b04 	ldr.w	r8, [r4], #4
 80097d2:	b28a      	uxth	r2, r1
 80097d4:	fa13 f388 	uxtah	r3, r3, r8
 80097d8:	0c09      	lsrs	r1, r1, #16
 80097da:	1a9a      	subs	r2, r3, r2
 80097dc:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80097e0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80097e4:	b292      	uxth	r2, r2
 80097e6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80097ea:	45e6      	cmp	lr, ip
 80097ec:	f845 2b04 	str.w	r2, [r5], #4
 80097f0:	ea4f 4323 	mov.w	r3, r3, asr #16
 80097f4:	d8e9      	bhi.n	80097ca <__mdiff+0x66>
 80097f6:	42a7      	cmp	r7, r4
 80097f8:	d917      	bls.n	800982a <__mdiff+0xc6>
 80097fa:	46ae      	mov	lr, r5
 80097fc:	46a4      	mov	ip, r4
 80097fe:	f85c 2b04 	ldr.w	r2, [ip], #4
 8009802:	fa13 f382 	uxtah	r3, r3, r2
 8009806:	1419      	asrs	r1, r3, #16
 8009808:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 800980c:	b29b      	uxth	r3, r3
 800980e:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8009812:	4567      	cmp	r7, ip
 8009814:	f84e 2b04 	str.w	r2, [lr], #4
 8009818:	ea4f 4321 	mov.w	r3, r1, asr #16
 800981c:	d8ef      	bhi.n	80097fe <__mdiff+0x9a>
 800981e:	43e4      	mvns	r4, r4
 8009820:	4427      	add	r7, r4
 8009822:	f027 0703 	bic.w	r7, r7, #3
 8009826:	3704      	adds	r7, #4
 8009828:	443d      	add	r5, r7
 800982a:	3d04      	subs	r5, #4
 800982c:	b922      	cbnz	r2, 8009838 <__mdiff+0xd4>
 800982e:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8009832:	3e01      	subs	r6, #1
 8009834:	2b00      	cmp	r3, #0
 8009836:	d0fa      	beq.n	800982e <__mdiff+0xca>
 8009838:	6106      	str	r6, [r0, #16]
 800983a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800983e:	2100      	movs	r1, #0
 8009840:	f7ff fd5e 	bl	8009300 <_Balloc>
 8009844:	2201      	movs	r2, #1
 8009846:	2300      	movs	r3, #0
 8009848:	e9c0 2304 	strd	r2, r3, [r0, #16]
 800984c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009850 <__d2b>:
 8009850:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009854:	460f      	mov	r7, r1
 8009856:	b083      	sub	sp, #12
 8009858:	2101      	movs	r1, #1
 800985a:	ec55 4b10 	vmov	r4, r5, d0
 800985e:	4616      	mov	r6, r2
 8009860:	f7ff fd4e 	bl	8009300 <_Balloc>
 8009864:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8009868:	4681      	mov	r9, r0
 800986a:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800986e:	f1b8 0f00 	cmp.w	r8, #0
 8009872:	d001      	beq.n	8009878 <__d2b+0x28>
 8009874:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009878:	2c00      	cmp	r4, #0
 800987a:	9301      	str	r3, [sp, #4]
 800987c:	d024      	beq.n	80098c8 <__d2b+0x78>
 800987e:	a802      	add	r0, sp, #8
 8009880:	f840 4d08 	str.w	r4, [r0, #-8]!
 8009884:	f7ff fdcc 	bl	8009420 <__lo0bits>
 8009888:	2800      	cmp	r0, #0
 800988a:	d136      	bne.n	80098fa <__d2b+0xaa>
 800988c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009890:	f8c9 2014 	str.w	r2, [r9, #20]
 8009894:	2b00      	cmp	r3, #0
 8009896:	bf0c      	ite	eq
 8009898:	2101      	moveq	r1, #1
 800989a:	2102      	movne	r1, #2
 800989c:	f8c9 3018 	str.w	r3, [r9, #24]
 80098a0:	f8c9 1010 	str.w	r1, [r9, #16]
 80098a4:	f1b8 0f00 	cmp.w	r8, #0
 80098a8:	d11b      	bne.n	80098e2 <__d2b+0x92>
 80098aa:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80098ae:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80098b2:	6038      	str	r0, [r7, #0]
 80098b4:	6918      	ldr	r0, [r3, #16]
 80098b6:	f7ff fd93 	bl	80093e0 <__hi0bits>
 80098ba:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80098be:	6030      	str	r0, [r6, #0]
 80098c0:	4648      	mov	r0, r9
 80098c2:	b003      	add	sp, #12
 80098c4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80098c8:	a801      	add	r0, sp, #4
 80098ca:	f7ff fda9 	bl	8009420 <__lo0bits>
 80098ce:	9b01      	ldr	r3, [sp, #4]
 80098d0:	f8c9 3014 	str.w	r3, [r9, #20]
 80098d4:	2101      	movs	r1, #1
 80098d6:	3020      	adds	r0, #32
 80098d8:	f8c9 1010 	str.w	r1, [r9, #16]
 80098dc:	f1b8 0f00 	cmp.w	r8, #0
 80098e0:	d0e3      	beq.n	80098aa <__d2b+0x5a>
 80098e2:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80098e6:	eb08 0300 	add.w	r3, r8, r0
 80098ea:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80098ee:	603b      	str	r3, [r7, #0]
 80098f0:	6030      	str	r0, [r6, #0]
 80098f2:	4648      	mov	r0, r9
 80098f4:	b003      	add	sp, #12
 80098f6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80098fa:	e9dd 1300 	ldrd	r1, r3, [sp]
 80098fe:	f1c0 0220 	rsb	r2, r0, #32
 8009902:	fa03 f202 	lsl.w	r2, r3, r2
 8009906:	430a      	orrs	r2, r1
 8009908:	40c3      	lsrs	r3, r0
 800990a:	9301      	str	r3, [sp, #4]
 800990c:	f8c9 2014 	str.w	r2, [r9, #20]
 8009910:	e7c0      	b.n	8009894 <__d2b+0x44>
 8009912:	bf00      	nop

08009914 <frexp>:
 8009914:	ec53 2b10 	vmov	r2, r3, d0
 8009918:	b570      	push	{r4, r5, r6, lr}
 800991a:	4e16      	ldr	r6, [pc, #88]	; (8009974 <frexp+0x60>)
 800991c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8009920:	2500      	movs	r5, #0
 8009922:	42b1      	cmp	r1, r6
 8009924:	4604      	mov	r4, r0
 8009926:	6005      	str	r5, [r0, #0]
 8009928:	dc21      	bgt.n	800996e <frexp+0x5a>
 800992a:	ee10 6a10 	vmov	r6, s0
 800992e:	430e      	orrs	r6, r1
 8009930:	d01d      	beq.n	800996e <frexp+0x5a>
 8009932:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8009936:	4618      	mov	r0, r3
 8009938:	da0c      	bge.n	8009954 <frexp+0x40>
 800993a:	4619      	mov	r1, r3
 800993c:	2200      	movs	r2, #0
 800993e:	ee10 0a10 	vmov	r0, s0
 8009942:	4b0d      	ldr	r3, [pc, #52]	; (8009978 <frexp+0x64>)
 8009944:	f7f6 fe18 	bl	8000578 <__aeabi_dmul>
 8009948:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800994c:	4602      	mov	r2, r0
 800994e:	4608      	mov	r0, r1
 8009950:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8009954:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8009958:	1509      	asrs	r1, r1, #20
 800995a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800995e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8009962:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8009966:	4429      	add	r1, r5
 8009968:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800996c:	6021      	str	r1, [r4, #0]
 800996e:	ec43 2b10 	vmov	d0, r2, r3
 8009972:	bd70      	pop	{r4, r5, r6, pc}
 8009974:	7fefffff 	.word	0x7fefffff
 8009978:	43500000 	.word	0x43500000

0800997c <_sbrk_r>:
 800997c:	b538      	push	{r3, r4, r5, lr}
 800997e:	4c07      	ldr	r4, [pc, #28]	; (800999c <_sbrk_r+0x20>)
 8009980:	2300      	movs	r3, #0
 8009982:	4605      	mov	r5, r0
 8009984:	4608      	mov	r0, r1
 8009986:	6023      	str	r3, [r4, #0]
 8009988:	f7f9 f915 	bl	8002bb6 <_sbrk>
 800998c:	1c43      	adds	r3, r0, #1
 800998e:	d000      	beq.n	8009992 <_sbrk_r+0x16>
 8009990:	bd38      	pop	{r3, r4, r5, pc}
 8009992:	6823      	ldr	r3, [r4, #0]
 8009994:	2b00      	cmp	r3, #0
 8009996:	d0fb      	beq.n	8009990 <_sbrk_r+0x14>
 8009998:	602b      	str	r3, [r5, #0]
 800999a:	bd38      	pop	{r3, r4, r5, pc}
 800999c:	20000c38 	.word	0x20000c38

080099a0 <__sread>:
 80099a0:	b510      	push	{r4, lr}
 80099a2:	460c      	mov	r4, r1
 80099a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80099a8:	f000 fc9e 	bl	800a2e8 <_read_r>
 80099ac:	2800      	cmp	r0, #0
 80099ae:	db03      	blt.n	80099b8 <__sread+0x18>
 80099b0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80099b2:	4403      	add	r3, r0
 80099b4:	6523      	str	r3, [r4, #80]	; 0x50
 80099b6:	bd10      	pop	{r4, pc}
 80099b8:	89a3      	ldrh	r3, [r4, #12]
 80099ba:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80099be:	81a3      	strh	r3, [r4, #12]
 80099c0:	bd10      	pop	{r4, pc}
 80099c2:	bf00      	nop

080099c4 <__swrite>:
 80099c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80099c8:	4616      	mov	r6, r2
 80099ca:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80099ce:	461f      	mov	r7, r3
 80099d0:	05d3      	lsls	r3, r2, #23
 80099d2:	460c      	mov	r4, r1
 80099d4:	4605      	mov	r5, r0
 80099d6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80099da:	d507      	bpl.n	80099ec <__swrite+0x28>
 80099dc:	2200      	movs	r2, #0
 80099de:	2302      	movs	r3, #2
 80099e0:	f000 fbf2 	bl	800a1c8 <_lseek_r>
 80099e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80099e8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80099ec:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80099f0:	81a2      	strh	r2, [r4, #12]
 80099f2:	463b      	mov	r3, r7
 80099f4:	4632      	mov	r2, r6
 80099f6:	4628      	mov	r0, r5
 80099f8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80099fc:	f000 b88c 	b.w	8009b18 <_write_r>

08009a00 <__sseek>:
 8009a00:	b510      	push	{r4, lr}
 8009a02:	460c      	mov	r4, r1
 8009a04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009a08:	f000 fbde 	bl	800a1c8 <_lseek_r>
 8009a0c:	89a3      	ldrh	r3, [r4, #12]
 8009a0e:	1c42      	adds	r2, r0, #1
 8009a10:	bf0e      	itee	eq
 8009a12:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8009a16:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8009a1a:	6520      	strne	r0, [r4, #80]	; 0x50
 8009a1c:	81a3      	strh	r3, [r4, #12]
 8009a1e:	bd10      	pop	{r4, pc}

08009a20 <__sclose>:
 8009a20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009a24:	f000 b922 	b.w	8009c6c <_close_r>

08009a28 <strncpy>:
 8009a28:	ea40 0301 	orr.w	r3, r0, r1
 8009a2c:	079b      	lsls	r3, r3, #30
 8009a2e:	b470      	push	{r4, r5, r6}
 8009a30:	d12a      	bne.n	8009a88 <strncpy+0x60>
 8009a32:	2a03      	cmp	r2, #3
 8009a34:	d928      	bls.n	8009a88 <strncpy+0x60>
 8009a36:	460c      	mov	r4, r1
 8009a38:	4603      	mov	r3, r0
 8009a3a:	4621      	mov	r1, r4
 8009a3c:	f854 6b04 	ldr.w	r6, [r4], #4
 8009a40:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8009a44:	ea25 0506 	bic.w	r5, r5, r6
 8009a48:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8009a4c:	d106      	bne.n	8009a5c <strncpy+0x34>
 8009a4e:	3a04      	subs	r2, #4
 8009a50:	2a03      	cmp	r2, #3
 8009a52:	f843 6b04 	str.w	r6, [r3], #4
 8009a56:	4621      	mov	r1, r4
 8009a58:	d8ef      	bhi.n	8009a3a <strncpy+0x12>
 8009a5a:	b19a      	cbz	r2, 8009a84 <strncpy+0x5c>
 8009a5c:	780c      	ldrb	r4, [r1, #0]
 8009a5e:	701c      	strb	r4, [r3, #0]
 8009a60:	3a01      	subs	r2, #1
 8009a62:	3301      	adds	r3, #1
 8009a64:	b13c      	cbz	r4, 8009a76 <strncpy+0x4e>
 8009a66:	b16a      	cbz	r2, 8009a84 <strncpy+0x5c>
 8009a68:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8009a6c:	f803 4b01 	strb.w	r4, [r3], #1
 8009a70:	3a01      	subs	r2, #1
 8009a72:	2c00      	cmp	r4, #0
 8009a74:	d1f7      	bne.n	8009a66 <strncpy+0x3e>
 8009a76:	b12a      	cbz	r2, 8009a84 <strncpy+0x5c>
 8009a78:	441a      	add	r2, r3
 8009a7a:	2100      	movs	r1, #0
 8009a7c:	f803 1b01 	strb.w	r1, [r3], #1
 8009a80:	4293      	cmp	r3, r2
 8009a82:	d1fb      	bne.n	8009a7c <strncpy+0x54>
 8009a84:	bc70      	pop	{r4, r5, r6}
 8009a86:	4770      	bx	lr
 8009a88:	4603      	mov	r3, r0
 8009a8a:	e7e6      	b.n	8009a5a <strncpy+0x32>

08009a8c <__sprint_r.part.0>:
 8009a8c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009a90:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8009a92:	049c      	lsls	r4, r3, #18
 8009a94:	4692      	mov	sl, r2
 8009a96:	d52d      	bpl.n	8009af4 <__sprint_r.part.0+0x68>
 8009a98:	6893      	ldr	r3, [r2, #8]
 8009a9a:	6812      	ldr	r2, [r2, #0]
 8009a9c:	b343      	cbz	r3, 8009af0 <__sprint_r.part.0+0x64>
 8009a9e:	460e      	mov	r6, r1
 8009aa0:	4607      	mov	r7, r0
 8009aa2:	f102 0908 	add.w	r9, r2, #8
 8009aa6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8009aaa:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8009aae:	d015      	beq.n	8009adc <__sprint_r.part.0+0x50>
 8009ab0:	3d04      	subs	r5, #4
 8009ab2:	2400      	movs	r4, #0
 8009ab4:	e001      	b.n	8009aba <__sprint_r.part.0+0x2e>
 8009ab6:	45a0      	cmp	r8, r4
 8009ab8:	d00e      	beq.n	8009ad8 <__sprint_r.part.0+0x4c>
 8009aba:	4632      	mov	r2, r6
 8009abc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8009ac0:	4638      	mov	r0, r7
 8009ac2:	f000 f99d 	bl	8009e00 <_fputwc_r>
 8009ac6:	1c43      	adds	r3, r0, #1
 8009ac8:	f104 0401 	add.w	r4, r4, #1
 8009acc:	d1f3      	bne.n	8009ab6 <__sprint_r.part.0+0x2a>
 8009ace:	2300      	movs	r3, #0
 8009ad0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009ad4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009ad8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8009adc:	f02b 0b03 	bic.w	fp, fp, #3
 8009ae0:	eba3 030b 	sub.w	r3, r3, fp
 8009ae4:	f8ca 3008 	str.w	r3, [sl, #8]
 8009ae8:	f109 0908 	add.w	r9, r9, #8
 8009aec:	2b00      	cmp	r3, #0
 8009aee:	d1da      	bne.n	8009aa6 <__sprint_r.part.0+0x1a>
 8009af0:	2000      	movs	r0, #0
 8009af2:	e7ec      	b.n	8009ace <__sprint_r.part.0+0x42>
 8009af4:	f000 f9ca 	bl	8009e8c <__sfvwrite_r>
 8009af8:	2300      	movs	r3, #0
 8009afa:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009afe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009b02:	bf00      	nop

08009b04 <__sprint_r>:
 8009b04:	6893      	ldr	r3, [r2, #8]
 8009b06:	b10b      	cbz	r3, 8009b0c <__sprint_r+0x8>
 8009b08:	f7ff bfc0 	b.w	8009a8c <__sprint_r.part.0>
 8009b0c:	b410      	push	{r4}
 8009b0e:	4618      	mov	r0, r3
 8009b10:	6053      	str	r3, [r2, #4]
 8009b12:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009b16:	4770      	bx	lr

08009b18 <_write_r>:
 8009b18:	b570      	push	{r4, r5, r6, lr}
 8009b1a:	460d      	mov	r5, r1
 8009b1c:	4c08      	ldr	r4, [pc, #32]	; (8009b40 <_write_r+0x28>)
 8009b1e:	4611      	mov	r1, r2
 8009b20:	4606      	mov	r6, r0
 8009b22:	461a      	mov	r2, r3
 8009b24:	4628      	mov	r0, r5
 8009b26:	2300      	movs	r3, #0
 8009b28:	6023      	str	r3, [r4, #0]
 8009b2a:	f7f9 f831 	bl	8002b90 <_write>
 8009b2e:	1c43      	adds	r3, r0, #1
 8009b30:	d000      	beq.n	8009b34 <_write_r+0x1c>
 8009b32:	bd70      	pop	{r4, r5, r6, pc}
 8009b34:	6823      	ldr	r3, [r4, #0]
 8009b36:	2b00      	cmp	r3, #0
 8009b38:	d0fb      	beq.n	8009b32 <_write_r+0x1a>
 8009b3a:	6033      	str	r3, [r6, #0]
 8009b3c:	bd70      	pop	{r4, r5, r6, pc}
 8009b3e:	bf00      	nop
 8009b40:	20000c38 	.word	0x20000c38

08009b44 <__register_exitproc>:
 8009b44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8009b48:	4d2b      	ldr	r5, [pc, #172]	; (8009bf8 <__register_exitproc+0xb4>)
 8009b4a:	4606      	mov	r6, r0
 8009b4c:	6828      	ldr	r0, [r5, #0]
 8009b4e:	4698      	mov	r8, r3
 8009b50:	460f      	mov	r7, r1
 8009b52:	4691      	mov	r9, r2
 8009b54:	f7ff f8a8 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 8009b58:	4b28      	ldr	r3, [pc, #160]	; (8009bfc <__register_exitproc+0xb8>)
 8009b5a:	681c      	ldr	r4, [r3, #0]
 8009b5c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8009b60:	2b00      	cmp	r3, #0
 8009b62:	d03d      	beq.n	8009be0 <__register_exitproc+0x9c>
 8009b64:	685a      	ldr	r2, [r3, #4]
 8009b66:	2a1f      	cmp	r2, #31
 8009b68:	dc0d      	bgt.n	8009b86 <__register_exitproc+0x42>
 8009b6a:	f102 0c01 	add.w	ip, r2, #1
 8009b6e:	bb16      	cbnz	r6, 8009bb6 <__register_exitproc+0x72>
 8009b70:	3202      	adds	r2, #2
 8009b72:	f8c3 c004 	str.w	ip, [r3, #4]
 8009b76:	6828      	ldr	r0, [r5, #0]
 8009b78:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8009b7c:	f7ff f896 	bl	8008cac <__retarget_lock_release_recursive>
 8009b80:	2000      	movs	r0, #0
 8009b82:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009b86:	4b1e      	ldr	r3, [pc, #120]	; (8009c00 <__register_exitproc+0xbc>)
 8009b88:	b37b      	cbz	r3, 8009bea <__register_exitproc+0xa6>
 8009b8a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8009b8e:	f3af 8000 	nop.w
 8009b92:	4603      	mov	r3, r0
 8009b94:	b348      	cbz	r0, 8009bea <__register_exitproc+0xa6>
 8009b96:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8009b9a:	2100      	movs	r1, #0
 8009b9c:	e9c0 2100 	strd	r2, r1, [r0]
 8009ba0:	f04f 0c01 	mov.w	ip, #1
 8009ba4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8009ba8:	460a      	mov	r2, r1
 8009baa:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8009bae:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8009bb2:	2e00      	cmp	r6, #0
 8009bb4:	d0dc      	beq.n	8009b70 <__register_exitproc+0x2c>
 8009bb6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8009bba:	2401      	movs	r4, #1
 8009bbc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8009bc0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8009bc4:	4094      	lsls	r4, r2
 8009bc6:	4320      	orrs	r0, r4
 8009bc8:	2e02      	cmp	r6, #2
 8009bca:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8009bce:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8009bd2:	d1cd      	bne.n	8009b70 <__register_exitproc+0x2c>
 8009bd4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8009bd8:	430c      	orrs	r4, r1
 8009bda:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8009bde:	e7c7      	b.n	8009b70 <__register_exitproc+0x2c>
 8009be0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8009be4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8009be8:	e7bc      	b.n	8009b64 <__register_exitproc+0x20>
 8009bea:	6828      	ldr	r0, [r5, #0]
 8009bec:	f7ff f85e 	bl	8008cac <__retarget_lock_release_recursive>
 8009bf0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009bf4:	e7c5      	b.n	8009b82 <__register_exitproc+0x3e>
 8009bf6:	bf00      	nop
 8009bf8:	20000448 	.word	0x20000448
 8009bfc:	0800ab08 	.word	0x0800ab08
 8009c00:	00000000 	.word	0x00000000

08009c04 <_calloc_r>:
 8009c04:	b510      	push	{r4, lr}
 8009c06:	fb02 f101 	mul.w	r1, r2, r1
 8009c0a:	f7ff f8c9 	bl	8008da0 <_malloc_r>
 8009c0e:	4604      	mov	r4, r0
 8009c10:	b1d8      	cbz	r0, 8009c4a <_calloc_r+0x46>
 8009c12:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8009c16:	f022 0203 	bic.w	r2, r2, #3
 8009c1a:	3a04      	subs	r2, #4
 8009c1c:	2a24      	cmp	r2, #36	; 0x24
 8009c1e:	d81d      	bhi.n	8009c5c <_calloc_r+0x58>
 8009c20:	2a13      	cmp	r2, #19
 8009c22:	d914      	bls.n	8009c4e <_calloc_r+0x4a>
 8009c24:	2300      	movs	r3, #0
 8009c26:	2a1b      	cmp	r2, #27
 8009c28:	e9c0 3300 	strd	r3, r3, [r0]
 8009c2c:	d91b      	bls.n	8009c66 <_calloc_r+0x62>
 8009c2e:	2a24      	cmp	r2, #36	; 0x24
 8009c30:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8009c34:	bf0a      	itet	eq
 8009c36:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8009c3a:	f100 0210 	addne.w	r2, r0, #16
 8009c3e:	f100 0218 	addeq.w	r2, r0, #24
 8009c42:	2300      	movs	r3, #0
 8009c44:	e9c2 3300 	strd	r3, r3, [r2]
 8009c48:	6093      	str	r3, [r2, #8]
 8009c4a:	4620      	mov	r0, r4
 8009c4c:	bd10      	pop	{r4, pc}
 8009c4e:	4602      	mov	r2, r0
 8009c50:	2300      	movs	r3, #0
 8009c52:	e9c2 3300 	strd	r3, r3, [r2]
 8009c56:	6093      	str	r3, [r2, #8]
 8009c58:	4620      	mov	r0, r4
 8009c5a:	bd10      	pop	{r4, pc}
 8009c5c:	2100      	movs	r1, #0
 8009c5e:	f7fb ff55 	bl	8005b0c <memset>
 8009c62:	4620      	mov	r0, r4
 8009c64:	bd10      	pop	{r4, pc}
 8009c66:	f100 0208 	add.w	r2, r0, #8
 8009c6a:	e7f1      	b.n	8009c50 <_calloc_r+0x4c>

08009c6c <_close_r>:
 8009c6c:	b538      	push	{r3, r4, r5, lr}
 8009c6e:	4c07      	ldr	r4, [pc, #28]	; (8009c8c <_close_r+0x20>)
 8009c70:	2300      	movs	r3, #0
 8009c72:	4605      	mov	r5, r0
 8009c74:	4608      	mov	r0, r1
 8009c76:	6023      	str	r3, [r4, #0]
 8009c78:	f7f8 ffb9 	bl	8002bee <_close>
 8009c7c:	1c43      	adds	r3, r0, #1
 8009c7e:	d000      	beq.n	8009c82 <_close_r+0x16>
 8009c80:	bd38      	pop	{r3, r4, r5, pc}
 8009c82:	6823      	ldr	r3, [r4, #0]
 8009c84:	2b00      	cmp	r3, #0
 8009c86:	d0fb      	beq.n	8009c80 <_close_r+0x14>
 8009c88:	602b      	str	r3, [r5, #0]
 8009c8a:	bd38      	pop	{r3, r4, r5, pc}
 8009c8c:	20000c38 	.word	0x20000c38

08009c90 <_fclose_r>:
 8009c90:	b570      	push	{r4, r5, r6, lr}
 8009c92:	2900      	cmp	r1, #0
 8009c94:	d048      	beq.n	8009d28 <_fclose_r+0x98>
 8009c96:	4605      	mov	r5, r0
 8009c98:	460c      	mov	r4, r1
 8009c9a:	b110      	cbz	r0, 8009ca2 <_fclose_r+0x12>
 8009c9c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009c9e:	2b00      	cmp	r3, #0
 8009ca0:	d048      	beq.n	8009d34 <_fclose_r+0xa4>
 8009ca2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009ca4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009ca8:	07d0      	lsls	r0, r2, #31
 8009caa:	d440      	bmi.n	8009d2e <_fclose_r+0x9e>
 8009cac:	0599      	lsls	r1, r3, #22
 8009cae:	d530      	bpl.n	8009d12 <_fclose_r+0x82>
 8009cb0:	4621      	mov	r1, r4
 8009cb2:	4628      	mov	r0, r5
 8009cb4:	f7fe fd20 	bl	80086f8 <__sflush_r>
 8009cb8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8009cba:	4606      	mov	r6, r0
 8009cbc:	b133      	cbz	r3, 8009ccc <_fclose_r+0x3c>
 8009cbe:	69e1      	ldr	r1, [r4, #28]
 8009cc0:	4628      	mov	r0, r5
 8009cc2:	4798      	blx	r3
 8009cc4:	2800      	cmp	r0, #0
 8009cc6:	bfb8      	it	lt
 8009cc8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8009ccc:	89a3      	ldrh	r3, [r4, #12]
 8009cce:	061a      	lsls	r2, r3, #24
 8009cd0:	d43c      	bmi.n	8009d4c <_fclose_r+0xbc>
 8009cd2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8009cd4:	b141      	cbz	r1, 8009ce8 <_fclose_r+0x58>
 8009cd6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8009cda:	4299      	cmp	r1, r3
 8009cdc:	d002      	beq.n	8009ce4 <_fclose_r+0x54>
 8009cde:	4628      	mov	r0, r5
 8009ce0:	f7fe feb2 	bl	8008a48 <_free_r>
 8009ce4:	2300      	movs	r3, #0
 8009ce6:	6323      	str	r3, [r4, #48]	; 0x30
 8009ce8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8009cea:	b121      	cbz	r1, 8009cf6 <_fclose_r+0x66>
 8009cec:	4628      	mov	r0, r5
 8009cee:	f7fe feab 	bl	8008a48 <_free_r>
 8009cf2:	2300      	movs	r3, #0
 8009cf4:	6463      	str	r3, [r4, #68]	; 0x44
 8009cf6:	f7fe fe31 	bl	800895c <__sfp_lock_acquire>
 8009cfa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009cfc:	2200      	movs	r2, #0
 8009cfe:	07db      	lsls	r3, r3, #31
 8009d00:	81a2      	strh	r2, [r4, #12]
 8009d02:	d51f      	bpl.n	8009d44 <_fclose_r+0xb4>
 8009d04:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d06:	f7fe ffcd 	bl	8008ca4 <__retarget_lock_close_recursive>
 8009d0a:	f7fe fe2d 	bl	8008968 <__sfp_lock_release>
 8009d0e:	4630      	mov	r0, r6
 8009d10:	bd70      	pop	{r4, r5, r6, pc}
 8009d12:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d14:	f7fe ffc8 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 8009d18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009d1c:	2b00      	cmp	r3, #0
 8009d1e:	d1c7      	bne.n	8009cb0 <_fclose_r+0x20>
 8009d20:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8009d22:	f016 0601 	ands.w	r6, r6, #1
 8009d26:	d016      	beq.n	8009d56 <_fclose_r+0xc6>
 8009d28:	2600      	movs	r6, #0
 8009d2a:	4630      	mov	r0, r6
 8009d2c:	bd70      	pop	{r4, r5, r6, pc}
 8009d2e:	2b00      	cmp	r3, #0
 8009d30:	d0fa      	beq.n	8009d28 <_fclose_r+0x98>
 8009d32:	e7bd      	b.n	8009cb0 <_fclose_r+0x20>
 8009d34:	f7fe fde6 	bl	8008904 <__sinit>
 8009d38:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009d3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009d3e:	07d0      	lsls	r0, r2, #31
 8009d40:	d4f5      	bmi.n	8009d2e <_fclose_r+0x9e>
 8009d42:	e7b3      	b.n	8009cac <_fclose_r+0x1c>
 8009d44:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d46:	f7fe ffb1 	bl	8008cac <__retarget_lock_release_recursive>
 8009d4a:	e7db      	b.n	8009d04 <_fclose_r+0x74>
 8009d4c:	6921      	ldr	r1, [r4, #16]
 8009d4e:	4628      	mov	r0, r5
 8009d50:	f7fe fe7a 	bl	8008a48 <_free_r>
 8009d54:	e7bd      	b.n	8009cd2 <_fclose_r+0x42>
 8009d56:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009d58:	f7fe ffa8 	bl	8008cac <__retarget_lock_release_recursive>
 8009d5c:	4630      	mov	r0, r6
 8009d5e:	bd70      	pop	{r4, r5, r6, pc}

08009d60 <__fputwc>:
 8009d60:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009d64:	b082      	sub	sp, #8
 8009d66:	4681      	mov	r9, r0
 8009d68:	4688      	mov	r8, r1
 8009d6a:	4614      	mov	r4, r2
 8009d6c:	f000 fa1e 	bl	800a1ac <__locale_mb_cur_max>
 8009d70:	2801      	cmp	r0, #1
 8009d72:	d103      	bne.n	8009d7c <__fputwc+0x1c>
 8009d74:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8009d78:	2bfe      	cmp	r3, #254	; 0xfe
 8009d7a:	d933      	bls.n	8009de4 <__fputwc+0x84>
 8009d7c:	4642      	mov	r2, r8
 8009d7e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8009d82:	a901      	add	r1, sp, #4
 8009d84:	4648      	mov	r0, r9
 8009d86:	f000 fccb 	bl	800a720 <_wcrtomb_r>
 8009d8a:	1c42      	adds	r2, r0, #1
 8009d8c:	4606      	mov	r6, r0
 8009d8e:	d02f      	beq.n	8009df0 <__fputwc+0x90>
 8009d90:	b320      	cbz	r0, 8009ddc <__fputwc+0x7c>
 8009d92:	f89d c004 	ldrb.w	ip, [sp, #4]
 8009d96:	2500      	movs	r5, #0
 8009d98:	f10d 0a04 	add.w	sl, sp, #4
 8009d9c:	e009      	b.n	8009db2 <__fputwc+0x52>
 8009d9e:	6823      	ldr	r3, [r4, #0]
 8009da0:	1c5a      	adds	r2, r3, #1
 8009da2:	6022      	str	r2, [r4, #0]
 8009da4:	f883 c000 	strb.w	ip, [r3]
 8009da8:	3501      	adds	r5, #1
 8009daa:	42b5      	cmp	r5, r6
 8009dac:	d216      	bcs.n	8009ddc <__fputwc+0x7c>
 8009dae:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8009db2:	68a3      	ldr	r3, [r4, #8]
 8009db4:	3b01      	subs	r3, #1
 8009db6:	2b00      	cmp	r3, #0
 8009db8:	60a3      	str	r3, [r4, #8]
 8009dba:	daf0      	bge.n	8009d9e <__fputwc+0x3e>
 8009dbc:	69a7      	ldr	r7, [r4, #24]
 8009dbe:	42bb      	cmp	r3, r7
 8009dc0:	4661      	mov	r1, ip
 8009dc2:	4622      	mov	r2, r4
 8009dc4:	4648      	mov	r0, r9
 8009dc6:	db02      	blt.n	8009dce <__fputwc+0x6e>
 8009dc8:	f1bc 0f0a 	cmp.w	ip, #10
 8009dcc:	d1e7      	bne.n	8009d9e <__fputwc+0x3e>
 8009dce:	f000 fc4f 	bl	800a670 <__swbuf_r>
 8009dd2:	1c43      	adds	r3, r0, #1
 8009dd4:	d1e8      	bne.n	8009da8 <__fputwc+0x48>
 8009dd6:	b002      	add	sp, #8
 8009dd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009ddc:	4640      	mov	r0, r8
 8009dde:	b002      	add	sp, #8
 8009de0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009de4:	fa5f fc88 	uxtb.w	ip, r8
 8009de8:	4606      	mov	r6, r0
 8009dea:	f88d c004 	strb.w	ip, [sp, #4]
 8009dee:	e7d2      	b.n	8009d96 <__fputwc+0x36>
 8009df0:	89a3      	ldrh	r3, [r4, #12]
 8009df2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009df6:	81a3      	strh	r3, [r4, #12]
 8009df8:	b002      	add	sp, #8
 8009dfa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009dfe:	bf00      	nop

08009e00 <_fputwc_r>:
 8009e00:	b530      	push	{r4, r5, lr}
 8009e02:	4605      	mov	r5, r0
 8009e04:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8009e06:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8009e0a:	07c0      	lsls	r0, r0, #31
 8009e0c:	4614      	mov	r4, r2
 8009e0e:	b083      	sub	sp, #12
 8009e10:	b29a      	uxth	r2, r3
 8009e12:	d401      	bmi.n	8009e18 <_fputwc_r+0x18>
 8009e14:	0590      	lsls	r0, r2, #22
 8009e16:	d51c      	bpl.n	8009e52 <_fputwc_r+0x52>
 8009e18:	0490      	lsls	r0, r2, #18
 8009e1a:	d406      	bmi.n	8009e2a <_fputwc_r+0x2a>
 8009e1c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009e1e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8009e22:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009e26:	81a3      	strh	r3, [r4, #12]
 8009e28:	6662      	str	r2, [r4, #100]	; 0x64
 8009e2a:	4628      	mov	r0, r5
 8009e2c:	4622      	mov	r2, r4
 8009e2e:	f7ff ff97 	bl	8009d60 <__fputwc>
 8009e32:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009e34:	07da      	lsls	r2, r3, #31
 8009e36:	4605      	mov	r5, r0
 8009e38:	d402      	bmi.n	8009e40 <_fputwc_r+0x40>
 8009e3a:	89a3      	ldrh	r3, [r4, #12]
 8009e3c:	059b      	lsls	r3, r3, #22
 8009e3e:	d502      	bpl.n	8009e46 <_fputwc_r+0x46>
 8009e40:	4628      	mov	r0, r5
 8009e42:	b003      	add	sp, #12
 8009e44:	bd30      	pop	{r4, r5, pc}
 8009e46:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009e48:	f7fe ff30 	bl	8008cac <__retarget_lock_release_recursive>
 8009e4c:	4628      	mov	r0, r5
 8009e4e:	b003      	add	sp, #12
 8009e50:	bd30      	pop	{r4, r5, pc}
 8009e52:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009e54:	9101      	str	r1, [sp, #4]
 8009e56:	f7fe ff27 	bl	8008ca8 <__retarget_lock_acquire_recursive>
 8009e5a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009e5e:	9901      	ldr	r1, [sp, #4]
 8009e60:	b29a      	uxth	r2, r3
 8009e62:	e7d9      	b.n	8009e18 <_fputwc_r+0x18>

08009e64 <_fstat_r>:
 8009e64:	b538      	push	{r3, r4, r5, lr}
 8009e66:	460b      	mov	r3, r1
 8009e68:	4c07      	ldr	r4, [pc, #28]	; (8009e88 <_fstat_r+0x24>)
 8009e6a:	4605      	mov	r5, r0
 8009e6c:	4611      	mov	r1, r2
 8009e6e:	4618      	mov	r0, r3
 8009e70:	2300      	movs	r3, #0
 8009e72:	6023      	str	r3, [r4, #0]
 8009e74:	f7f8 febe 	bl	8002bf4 <_fstat>
 8009e78:	1c43      	adds	r3, r0, #1
 8009e7a:	d000      	beq.n	8009e7e <_fstat_r+0x1a>
 8009e7c:	bd38      	pop	{r3, r4, r5, pc}
 8009e7e:	6823      	ldr	r3, [r4, #0]
 8009e80:	2b00      	cmp	r3, #0
 8009e82:	d0fb      	beq.n	8009e7c <_fstat_r+0x18>
 8009e84:	602b      	str	r3, [r5, #0]
 8009e86:	bd38      	pop	{r3, r4, r5, pc}
 8009e88:	20000c38 	.word	0x20000c38

08009e8c <__sfvwrite_r>:
 8009e8c:	6893      	ldr	r3, [r2, #8]
 8009e8e:	2b00      	cmp	r3, #0
 8009e90:	f000 80e4 	beq.w	800a05c <__sfvwrite_r+0x1d0>
 8009e94:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009e98:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8009e9c:	b29b      	uxth	r3, r3
 8009e9e:	460c      	mov	r4, r1
 8009ea0:	0719      	lsls	r1, r3, #28
 8009ea2:	b083      	sub	sp, #12
 8009ea4:	4682      	mov	sl, r0
 8009ea6:	4690      	mov	r8, r2
 8009ea8:	d535      	bpl.n	8009f16 <__sfvwrite_r+0x8a>
 8009eaa:	6922      	ldr	r2, [r4, #16]
 8009eac:	b39a      	cbz	r2, 8009f16 <__sfvwrite_r+0x8a>
 8009eae:	f013 0202 	ands.w	r2, r3, #2
 8009eb2:	f8d8 6000 	ldr.w	r6, [r8]
 8009eb6:	d03d      	beq.n	8009f34 <__sfvwrite_r+0xa8>
 8009eb8:	2700      	movs	r7, #0
 8009eba:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8009ebe:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8009ec2:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 800a184 <__sfvwrite_r+0x2f8>
 8009ec6:	463d      	mov	r5, r7
 8009ec8:	454d      	cmp	r5, r9
 8009eca:	462b      	mov	r3, r5
 8009ecc:	463a      	mov	r2, r7
 8009ece:	bf28      	it	cs
 8009ed0:	464b      	movcs	r3, r9
 8009ed2:	4661      	mov	r1, ip
 8009ed4:	4650      	mov	r0, sl
 8009ed6:	b1d5      	cbz	r5, 8009f0e <__sfvwrite_r+0x82>
 8009ed8:	47d8      	blx	fp
 8009eda:	2800      	cmp	r0, #0
 8009edc:	f340 80c6 	ble.w	800a06c <__sfvwrite_r+0x1e0>
 8009ee0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8009ee4:	1a1b      	subs	r3, r3, r0
 8009ee6:	4407      	add	r7, r0
 8009ee8:	1a2d      	subs	r5, r5, r0
 8009eea:	f8c8 3008 	str.w	r3, [r8, #8]
 8009eee:	2b00      	cmp	r3, #0
 8009ef0:	f000 80b0 	beq.w	800a054 <__sfvwrite_r+0x1c8>
 8009ef4:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8009ef8:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8009efc:	454d      	cmp	r5, r9
 8009efe:	462b      	mov	r3, r5
 8009f00:	463a      	mov	r2, r7
 8009f02:	bf28      	it	cs
 8009f04:	464b      	movcs	r3, r9
 8009f06:	4661      	mov	r1, ip
 8009f08:	4650      	mov	r0, sl
 8009f0a:	2d00      	cmp	r5, #0
 8009f0c:	d1e4      	bne.n	8009ed8 <__sfvwrite_r+0x4c>
 8009f0e:	e9d6 7500 	ldrd	r7, r5, [r6]
 8009f12:	3608      	adds	r6, #8
 8009f14:	e7d8      	b.n	8009ec8 <__sfvwrite_r+0x3c>
 8009f16:	4621      	mov	r1, r4
 8009f18:	4650      	mov	r0, sl
 8009f1a:	f7fd fbd5 	bl	80076c8 <__swsetup_r>
 8009f1e:	2800      	cmp	r0, #0
 8009f20:	f040 812a 	bne.w	800a178 <__sfvwrite_r+0x2ec>
 8009f24:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009f28:	f8d8 6000 	ldr.w	r6, [r8]
 8009f2c:	b29b      	uxth	r3, r3
 8009f2e:	f013 0202 	ands.w	r2, r3, #2
 8009f32:	d1c1      	bne.n	8009eb8 <__sfvwrite_r+0x2c>
 8009f34:	f013 0901 	ands.w	r9, r3, #1
 8009f38:	d15d      	bne.n	8009ff6 <__sfvwrite_r+0x16a>
 8009f3a:	68a7      	ldr	r7, [r4, #8]
 8009f3c:	6820      	ldr	r0, [r4, #0]
 8009f3e:	464d      	mov	r5, r9
 8009f40:	2d00      	cmp	r5, #0
 8009f42:	d054      	beq.n	8009fee <__sfvwrite_r+0x162>
 8009f44:	059a      	lsls	r2, r3, #22
 8009f46:	f140 809b 	bpl.w	800a080 <__sfvwrite_r+0x1f4>
 8009f4a:	42af      	cmp	r7, r5
 8009f4c:	46bb      	mov	fp, r7
 8009f4e:	f200 80d8 	bhi.w	800a102 <__sfvwrite_r+0x276>
 8009f52:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8009f56:	d02f      	beq.n	8009fb8 <__sfvwrite_r+0x12c>
 8009f58:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8009f5c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8009f60:	eba0 0b01 	sub.w	fp, r0, r1
 8009f64:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8009f68:	1c68      	adds	r0, r5, #1
 8009f6a:	107f      	asrs	r7, r7, #1
 8009f6c:	4458      	add	r0, fp
 8009f6e:	42b8      	cmp	r0, r7
 8009f70:	463a      	mov	r2, r7
 8009f72:	bf84      	itt	hi
 8009f74:	4607      	movhi	r7, r0
 8009f76:	463a      	movhi	r2, r7
 8009f78:	055b      	lsls	r3, r3, #21
 8009f7a:	f140 80d3 	bpl.w	800a124 <__sfvwrite_r+0x298>
 8009f7e:	4611      	mov	r1, r2
 8009f80:	4650      	mov	r0, sl
 8009f82:	f7fe ff0d 	bl	8008da0 <_malloc_r>
 8009f86:	2800      	cmp	r0, #0
 8009f88:	f000 80f0 	beq.w	800a16c <__sfvwrite_r+0x2e0>
 8009f8c:	465a      	mov	r2, fp
 8009f8e:	6921      	ldr	r1, [r4, #16]
 8009f90:	9001      	str	r0, [sp, #4]
 8009f92:	f7f6 ff97 	bl	8000ec4 <memcpy>
 8009f96:	89a2      	ldrh	r2, [r4, #12]
 8009f98:	9b01      	ldr	r3, [sp, #4]
 8009f9a:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8009f9e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8009fa2:	81a2      	strh	r2, [r4, #12]
 8009fa4:	eba7 020b 	sub.w	r2, r7, fp
 8009fa8:	eb03 000b 	add.w	r0, r3, fp
 8009fac:	6167      	str	r7, [r4, #20]
 8009fae:	6123      	str	r3, [r4, #16]
 8009fb0:	6020      	str	r0, [r4, #0]
 8009fb2:	60a2      	str	r2, [r4, #8]
 8009fb4:	462f      	mov	r7, r5
 8009fb6:	46ab      	mov	fp, r5
 8009fb8:	465a      	mov	r2, fp
 8009fba:	4649      	mov	r1, r9
 8009fbc:	f000 f930 	bl	800a220 <memmove>
 8009fc0:	68a2      	ldr	r2, [r4, #8]
 8009fc2:	6823      	ldr	r3, [r4, #0]
 8009fc4:	1bd2      	subs	r2, r2, r7
 8009fc6:	445b      	add	r3, fp
 8009fc8:	462f      	mov	r7, r5
 8009fca:	60a2      	str	r2, [r4, #8]
 8009fcc:	6023      	str	r3, [r4, #0]
 8009fce:	2500      	movs	r5, #0
 8009fd0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8009fd4:	1bdb      	subs	r3, r3, r7
 8009fd6:	44b9      	add	r9, r7
 8009fd8:	f8c8 3008 	str.w	r3, [r8, #8]
 8009fdc:	2b00      	cmp	r3, #0
 8009fde:	d039      	beq.n	800a054 <__sfvwrite_r+0x1c8>
 8009fe0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009fe4:	68a7      	ldr	r7, [r4, #8]
 8009fe6:	6820      	ldr	r0, [r4, #0]
 8009fe8:	b29b      	uxth	r3, r3
 8009fea:	2d00      	cmp	r5, #0
 8009fec:	d1aa      	bne.n	8009f44 <__sfvwrite_r+0xb8>
 8009fee:	e9d6 9500 	ldrd	r9, r5, [r6]
 8009ff2:	3608      	adds	r6, #8
 8009ff4:	e7a4      	b.n	8009f40 <__sfvwrite_r+0xb4>
 8009ff6:	4633      	mov	r3, r6
 8009ff8:	4691      	mov	r9, r2
 8009ffa:	4610      	mov	r0, r2
 8009ffc:	4617      	mov	r7, r2
 8009ffe:	464e      	mov	r6, r9
 800a000:	469b      	mov	fp, r3
 800a002:	2f00      	cmp	r7, #0
 800a004:	d06b      	beq.n	800a0de <__sfvwrite_r+0x252>
 800a006:	2800      	cmp	r0, #0
 800a008:	d071      	beq.n	800a0ee <__sfvwrite_r+0x262>
 800a00a:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800a00e:	6820      	ldr	r0, [r4, #0]
 800a010:	45b9      	cmp	r9, r7
 800a012:	464b      	mov	r3, r9
 800a014:	bf28      	it	cs
 800a016:	463b      	movcs	r3, r7
 800a018:	4288      	cmp	r0, r1
 800a01a:	d903      	bls.n	800a024 <__sfvwrite_r+0x198>
 800a01c:	68a5      	ldr	r5, [r4, #8]
 800a01e:	4415      	add	r5, r2
 800a020:	42ab      	cmp	r3, r5
 800a022:	dc71      	bgt.n	800a108 <__sfvwrite_r+0x27c>
 800a024:	429a      	cmp	r2, r3
 800a026:	f300 8093 	bgt.w	800a150 <__sfvwrite_r+0x2c4>
 800a02a:	4613      	mov	r3, r2
 800a02c:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800a02e:	69e1      	ldr	r1, [r4, #28]
 800a030:	4632      	mov	r2, r6
 800a032:	4650      	mov	r0, sl
 800a034:	47a8      	blx	r5
 800a036:	1e05      	subs	r5, r0, #0
 800a038:	dd18      	ble.n	800a06c <__sfvwrite_r+0x1e0>
 800a03a:	ebb9 0905 	subs.w	r9, r9, r5
 800a03e:	d00f      	beq.n	800a060 <__sfvwrite_r+0x1d4>
 800a040:	2001      	movs	r0, #1
 800a042:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800a046:	1b5b      	subs	r3, r3, r5
 800a048:	442e      	add	r6, r5
 800a04a:	1b7f      	subs	r7, r7, r5
 800a04c:	f8c8 3008 	str.w	r3, [r8, #8]
 800a050:	2b00      	cmp	r3, #0
 800a052:	d1d6      	bne.n	800a002 <__sfvwrite_r+0x176>
 800a054:	2000      	movs	r0, #0
 800a056:	b003      	add	sp, #12
 800a058:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a05c:	2000      	movs	r0, #0
 800a05e:	4770      	bx	lr
 800a060:	4621      	mov	r1, r4
 800a062:	4650      	mov	r0, sl
 800a064:	f7fe fbf2 	bl	800884c <_fflush_r>
 800a068:	2800      	cmp	r0, #0
 800a06a:	d0ea      	beq.n	800a042 <__sfvwrite_r+0x1b6>
 800a06c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a070:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800a074:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a078:	81a3      	strh	r3, [r4, #12]
 800a07a:	b003      	add	sp, #12
 800a07c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a080:	6923      	ldr	r3, [r4, #16]
 800a082:	4283      	cmp	r3, r0
 800a084:	d315      	bcc.n	800a0b2 <__sfvwrite_r+0x226>
 800a086:	6961      	ldr	r1, [r4, #20]
 800a088:	42a9      	cmp	r1, r5
 800a08a:	d812      	bhi.n	800a0b2 <__sfvwrite_r+0x226>
 800a08c:	4b3c      	ldr	r3, [pc, #240]	; (800a180 <__sfvwrite_r+0x2f4>)
 800a08e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800a090:	429d      	cmp	r5, r3
 800a092:	bf94      	ite	ls
 800a094:	462b      	movls	r3, r5
 800a096:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800a09a:	464a      	mov	r2, r9
 800a09c:	fb93 f3f1 	sdiv	r3, r3, r1
 800a0a0:	4650      	mov	r0, sl
 800a0a2:	fb01 f303 	mul.w	r3, r1, r3
 800a0a6:	69e1      	ldr	r1, [r4, #28]
 800a0a8:	47b8      	blx	r7
 800a0aa:	1e07      	subs	r7, r0, #0
 800a0ac:	ddde      	ble.n	800a06c <__sfvwrite_r+0x1e0>
 800a0ae:	1bed      	subs	r5, r5, r7
 800a0b0:	e78e      	b.n	8009fd0 <__sfvwrite_r+0x144>
 800a0b2:	42af      	cmp	r7, r5
 800a0b4:	bf28      	it	cs
 800a0b6:	462f      	movcs	r7, r5
 800a0b8:	463a      	mov	r2, r7
 800a0ba:	4649      	mov	r1, r9
 800a0bc:	f000 f8b0 	bl	800a220 <memmove>
 800a0c0:	68a3      	ldr	r3, [r4, #8]
 800a0c2:	6822      	ldr	r2, [r4, #0]
 800a0c4:	1bdb      	subs	r3, r3, r7
 800a0c6:	443a      	add	r2, r7
 800a0c8:	60a3      	str	r3, [r4, #8]
 800a0ca:	6022      	str	r2, [r4, #0]
 800a0cc:	2b00      	cmp	r3, #0
 800a0ce:	d1ee      	bne.n	800a0ae <__sfvwrite_r+0x222>
 800a0d0:	4621      	mov	r1, r4
 800a0d2:	4650      	mov	r0, sl
 800a0d4:	f7fe fbba 	bl	800884c <_fflush_r>
 800a0d8:	2800      	cmp	r0, #0
 800a0da:	d0e8      	beq.n	800a0ae <__sfvwrite_r+0x222>
 800a0dc:	e7c6      	b.n	800a06c <__sfvwrite_r+0x1e0>
 800a0de:	f10b 0308 	add.w	r3, fp, #8
 800a0e2:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800a0e6:	469b      	mov	fp, r3
 800a0e8:	3308      	adds	r3, #8
 800a0ea:	2f00      	cmp	r7, #0
 800a0ec:	d0f9      	beq.n	800a0e2 <__sfvwrite_r+0x256>
 800a0ee:	463a      	mov	r2, r7
 800a0f0:	210a      	movs	r1, #10
 800a0f2:	4630      	mov	r0, r6
 800a0f4:	f7f6 fff4 	bl	80010e0 <memchr>
 800a0f8:	b338      	cbz	r0, 800a14a <__sfvwrite_r+0x2be>
 800a0fa:	3001      	adds	r0, #1
 800a0fc:	eba0 0906 	sub.w	r9, r0, r6
 800a100:	e783      	b.n	800a00a <__sfvwrite_r+0x17e>
 800a102:	462f      	mov	r7, r5
 800a104:	46ab      	mov	fp, r5
 800a106:	e757      	b.n	8009fb8 <__sfvwrite_r+0x12c>
 800a108:	4631      	mov	r1, r6
 800a10a:	462a      	mov	r2, r5
 800a10c:	f000 f888 	bl	800a220 <memmove>
 800a110:	6823      	ldr	r3, [r4, #0]
 800a112:	442b      	add	r3, r5
 800a114:	6023      	str	r3, [r4, #0]
 800a116:	4621      	mov	r1, r4
 800a118:	4650      	mov	r0, sl
 800a11a:	f7fe fb97 	bl	800884c <_fflush_r>
 800a11e:	2800      	cmp	r0, #0
 800a120:	d08b      	beq.n	800a03a <__sfvwrite_r+0x1ae>
 800a122:	e7a3      	b.n	800a06c <__sfvwrite_r+0x1e0>
 800a124:	4650      	mov	r0, sl
 800a126:	f000 f8f5 	bl	800a314 <_realloc_r>
 800a12a:	4603      	mov	r3, r0
 800a12c:	2800      	cmp	r0, #0
 800a12e:	f47f af39 	bne.w	8009fa4 <__sfvwrite_r+0x118>
 800a132:	6921      	ldr	r1, [r4, #16]
 800a134:	4650      	mov	r0, sl
 800a136:	f7fe fc87 	bl	8008a48 <_free_r>
 800a13a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a13e:	220c      	movs	r2, #12
 800a140:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800a144:	f8ca 2000 	str.w	r2, [sl]
 800a148:	e792      	b.n	800a070 <__sfvwrite_r+0x1e4>
 800a14a:	f107 0901 	add.w	r9, r7, #1
 800a14e:	e75c      	b.n	800a00a <__sfvwrite_r+0x17e>
 800a150:	461a      	mov	r2, r3
 800a152:	4631      	mov	r1, r6
 800a154:	9301      	str	r3, [sp, #4]
 800a156:	f000 f863 	bl	800a220 <memmove>
 800a15a:	9b01      	ldr	r3, [sp, #4]
 800a15c:	68a1      	ldr	r1, [r4, #8]
 800a15e:	6822      	ldr	r2, [r4, #0]
 800a160:	1ac9      	subs	r1, r1, r3
 800a162:	441a      	add	r2, r3
 800a164:	60a1      	str	r1, [r4, #8]
 800a166:	6022      	str	r2, [r4, #0]
 800a168:	461d      	mov	r5, r3
 800a16a:	e766      	b.n	800a03a <__sfvwrite_r+0x1ae>
 800a16c:	230c      	movs	r3, #12
 800a16e:	f8ca 3000 	str.w	r3, [sl]
 800a172:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800a176:	e77b      	b.n	800a070 <__sfvwrite_r+0x1e4>
 800a178:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a17c:	e76b      	b.n	800a056 <__sfvwrite_r+0x1ca>
 800a17e:	bf00      	nop
 800a180:	7ffffffe 	.word	0x7ffffffe
 800a184:	7ffffc00 	.word	0x7ffffc00

0800a188 <_isatty_r>:
 800a188:	b538      	push	{r3, r4, r5, lr}
 800a18a:	4c07      	ldr	r4, [pc, #28]	; (800a1a8 <_isatty_r+0x20>)
 800a18c:	2300      	movs	r3, #0
 800a18e:	4605      	mov	r5, r0
 800a190:	4608      	mov	r0, r1
 800a192:	6023      	str	r3, [r4, #0]
 800a194:	f7f8 fd33 	bl	8002bfe <_isatty>
 800a198:	1c43      	adds	r3, r0, #1
 800a19a:	d000      	beq.n	800a19e <_isatty_r+0x16>
 800a19c:	bd38      	pop	{r3, r4, r5, pc}
 800a19e:	6823      	ldr	r3, [r4, #0]
 800a1a0:	2b00      	cmp	r3, #0
 800a1a2:	d0fb      	beq.n	800a19c <_isatty_r+0x14>
 800a1a4:	602b      	str	r3, [r5, #0]
 800a1a6:	bd38      	pop	{r3, r4, r5, pc}
 800a1a8:	20000c38 	.word	0x20000c38

0800a1ac <__locale_mb_cur_max>:
 800a1ac:	4b04      	ldr	r3, [pc, #16]	; (800a1c0 <__locale_mb_cur_max+0x14>)
 800a1ae:	4a05      	ldr	r2, [pc, #20]	; (800a1c4 <__locale_mb_cur_max+0x18>)
 800a1b0:	681b      	ldr	r3, [r3, #0]
 800a1b2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800a1b4:	2b00      	cmp	r3, #0
 800a1b6:	bf08      	it	eq
 800a1b8:	4613      	moveq	r3, r2
 800a1ba:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800a1be:	4770      	bx	lr
 800a1c0:	2000001c 	.word	0x2000001c
 800a1c4:	2000085c 	.word	0x2000085c

0800a1c8 <_lseek_r>:
 800a1c8:	b570      	push	{r4, r5, r6, lr}
 800a1ca:	460d      	mov	r5, r1
 800a1cc:	4c08      	ldr	r4, [pc, #32]	; (800a1f0 <_lseek_r+0x28>)
 800a1ce:	4611      	mov	r1, r2
 800a1d0:	4606      	mov	r6, r0
 800a1d2:	461a      	mov	r2, r3
 800a1d4:	4628      	mov	r0, r5
 800a1d6:	2300      	movs	r3, #0
 800a1d8:	6023      	str	r3, [r4, #0]
 800a1da:	f7f8 fd12 	bl	8002c02 <_lseek>
 800a1de:	1c43      	adds	r3, r0, #1
 800a1e0:	d000      	beq.n	800a1e4 <_lseek_r+0x1c>
 800a1e2:	bd70      	pop	{r4, r5, r6, pc}
 800a1e4:	6823      	ldr	r3, [r4, #0]
 800a1e6:	2b00      	cmp	r3, #0
 800a1e8:	d0fb      	beq.n	800a1e2 <_lseek_r+0x1a>
 800a1ea:	6033      	str	r3, [r6, #0]
 800a1ec:	bd70      	pop	{r4, r5, r6, pc}
 800a1ee:	bf00      	nop
 800a1f0:	20000c38 	.word	0x20000c38

0800a1f4 <__ascii_mbtowc>:
 800a1f4:	b082      	sub	sp, #8
 800a1f6:	b149      	cbz	r1, 800a20c <__ascii_mbtowc+0x18>
 800a1f8:	b15a      	cbz	r2, 800a212 <__ascii_mbtowc+0x1e>
 800a1fa:	b16b      	cbz	r3, 800a218 <__ascii_mbtowc+0x24>
 800a1fc:	7813      	ldrb	r3, [r2, #0]
 800a1fe:	600b      	str	r3, [r1, #0]
 800a200:	7812      	ldrb	r2, [r2, #0]
 800a202:	1c10      	adds	r0, r2, #0
 800a204:	bf18      	it	ne
 800a206:	2001      	movne	r0, #1
 800a208:	b002      	add	sp, #8
 800a20a:	4770      	bx	lr
 800a20c:	a901      	add	r1, sp, #4
 800a20e:	2a00      	cmp	r2, #0
 800a210:	d1f3      	bne.n	800a1fa <__ascii_mbtowc+0x6>
 800a212:	4610      	mov	r0, r2
 800a214:	b002      	add	sp, #8
 800a216:	4770      	bx	lr
 800a218:	f06f 0001 	mvn.w	r0, #1
 800a21c:	e7f4      	b.n	800a208 <__ascii_mbtowc+0x14>
 800a21e:	bf00      	nop

0800a220 <memmove>:
 800a220:	4288      	cmp	r0, r1
 800a222:	b4f0      	push	{r4, r5, r6, r7}
 800a224:	d90d      	bls.n	800a242 <memmove+0x22>
 800a226:	188b      	adds	r3, r1, r2
 800a228:	4283      	cmp	r3, r0
 800a22a:	d90a      	bls.n	800a242 <memmove+0x22>
 800a22c:	1884      	adds	r4, r0, r2
 800a22e:	b132      	cbz	r2, 800a23e <memmove+0x1e>
 800a230:	4622      	mov	r2, r4
 800a232:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800a236:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800a23a:	4299      	cmp	r1, r3
 800a23c:	d1f9      	bne.n	800a232 <memmove+0x12>
 800a23e:	bcf0      	pop	{r4, r5, r6, r7}
 800a240:	4770      	bx	lr
 800a242:	2a0f      	cmp	r2, #15
 800a244:	d949      	bls.n	800a2da <memmove+0xba>
 800a246:	ea40 0301 	orr.w	r3, r0, r1
 800a24a:	079b      	lsls	r3, r3, #30
 800a24c:	d147      	bne.n	800a2de <memmove+0xbe>
 800a24e:	f1a2 0310 	sub.w	r3, r2, #16
 800a252:	091b      	lsrs	r3, r3, #4
 800a254:	f101 0720 	add.w	r7, r1, #32
 800a258:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 800a25c:	f101 0410 	add.w	r4, r1, #16
 800a260:	f100 0510 	add.w	r5, r0, #16
 800a264:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800a268:	f845 6c10 	str.w	r6, [r5, #-16]
 800a26c:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800a270:	f845 6c0c 	str.w	r6, [r5, #-12]
 800a274:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800a278:	f845 6c08 	str.w	r6, [r5, #-8]
 800a27c:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800a280:	f845 6c04 	str.w	r6, [r5, #-4]
 800a284:	3410      	adds	r4, #16
 800a286:	42bc      	cmp	r4, r7
 800a288:	f105 0510 	add.w	r5, r5, #16
 800a28c:	d1ea      	bne.n	800a264 <memmove+0x44>
 800a28e:	3301      	adds	r3, #1
 800a290:	f002 050f 	and.w	r5, r2, #15
 800a294:	011b      	lsls	r3, r3, #4
 800a296:	2d03      	cmp	r5, #3
 800a298:	4419      	add	r1, r3
 800a29a:	4403      	add	r3, r0
 800a29c:	d921      	bls.n	800a2e2 <memmove+0xc2>
 800a29e:	1f1f      	subs	r7, r3, #4
 800a2a0:	460e      	mov	r6, r1
 800a2a2:	462c      	mov	r4, r5
 800a2a4:	3c04      	subs	r4, #4
 800a2a6:	f856 cb04 	ldr.w	ip, [r6], #4
 800a2aa:	f847 cf04 	str.w	ip, [r7, #4]!
 800a2ae:	2c03      	cmp	r4, #3
 800a2b0:	d8f8      	bhi.n	800a2a4 <memmove+0x84>
 800a2b2:	1f2c      	subs	r4, r5, #4
 800a2b4:	f024 0403 	bic.w	r4, r4, #3
 800a2b8:	3404      	adds	r4, #4
 800a2ba:	4423      	add	r3, r4
 800a2bc:	4421      	add	r1, r4
 800a2be:	f002 0203 	and.w	r2, r2, #3
 800a2c2:	2a00      	cmp	r2, #0
 800a2c4:	d0bb      	beq.n	800a23e <memmove+0x1e>
 800a2c6:	3b01      	subs	r3, #1
 800a2c8:	440a      	add	r2, r1
 800a2ca:	f811 4b01 	ldrb.w	r4, [r1], #1
 800a2ce:	f803 4f01 	strb.w	r4, [r3, #1]!
 800a2d2:	4291      	cmp	r1, r2
 800a2d4:	d1f9      	bne.n	800a2ca <memmove+0xaa>
 800a2d6:	bcf0      	pop	{r4, r5, r6, r7}
 800a2d8:	4770      	bx	lr
 800a2da:	4603      	mov	r3, r0
 800a2dc:	e7f1      	b.n	800a2c2 <memmove+0xa2>
 800a2de:	4603      	mov	r3, r0
 800a2e0:	e7f1      	b.n	800a2c6 <memmove+0xa6>
 800a2e2:	462a      	mov	r2, r5
 800a2e4:	e7ed      	b.n	800a2c2 <memmove+0xa2>
 800a2e6:	bf00      	nop

0800a2e8 <_read_r>:
 800a2e8:	b570      	push	{r4, r5, r6, lr}
 800a2ea:	460d      	mov	r5, r1
 800a2ec:	4c08      	ldr	r4, [pc, #32]	; (800a310 <_read_r+0x28>)
 800a2ee:	4611      	mov	r1, r2
 800a2f0:	4606      	mov	r6, r0
 800a2f2:	461a      	mov	r2, r3
 800a2f4:	4628      	mov	r0, r5
 800a2f6:	2300      	movs	r3, #0
 800a2f8:	6023      	str	r3, [r4, #0]
 800a2fa:	f7f8 fc36 	bl	8002b6a <_read>
 800a2fe:	1c43      	adds	r3, r0, #1
 800a300:	d000      	beq.n	800a304 <_read_r+0x1c>
 800a302:	bd70      	pop	{r4, r5, r6, pc}
 800a304:	6823      	ldr	r3, [r4, #0]
 800a306:	2b00      	cmp	r3, #0
 800a308:	d0fb      	beq.n	800a302 <_read_r+0x1a>
 800a30a:	6033      	str	r3, [r6, #0]
 800a30c:	bd70      	pop	{r4, r5, r6, pc}
 800a30e:	bf00      	nop
 800a310:	20000c38 	.word	0x20000c38

0800a314 <_realloc_r>:
 800a314:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a318:	4692      	mov	sl, r2
 800a31a:	b083      	sub	sp, #12
 800a31c:	2900      	cmp	r1, #0
 800a31e:	f000 80a1 	beq.w	800a464 <_realloc_r+0x150>
 800a322:	460d      	mov	r5, r1
 800a324:	4680      	mov	r8, r0
 800a326:	f10a 040b 	add.w	r4, sl, #11
 800a32a:	f7fe ffdd 	bl	80092e8 <__malloc_lock>
 800a32e:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800a332:	2c16      	cmp	r4, #22
 800a334:	f022 0603 	bic.w	r6, r2, #3
 800a338:	f1a5 0708 	sub.w	r7, r5, #8
 800a33c:	d83e      	bhi.n	800a3bc <_realloc_r+0xa8>
 800a33e:	2410      	movs	r4, #16
 800a340:	4621      	mov	r1, r4
 800a342:	45a2      	cmp	sl, r4
 800a344:	d83f      	bhi.n	800a3c6 <_realloc_r+0xb2>
 800a346:	428e      	cmp	r6, r1
 800a348:	eb07 0906 	add.w	r9, r7, r6
 800a34c:	da74      	bge.n	800a438 <_realloc_r+0x124>
 800a34e:	4bc7      	ldr	r3, [pc, #796]	; (800a66c <_realloc_r+0x358>)
 800a350:	6898      	ldr	r0, [r3, #8]
 800a352:	4548      	cmp	r0, r9
 800a354:	f000 80aa 	beq.w	800a4ac <_realloc_r+0x198>
 800a358:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800a35c:	f020 0301 	bic.w	r3, r0, #1
 800a360:	444b      	add	r3, r9
 800a362:	685b      	ldr	r3, [r3, #4]
 800a364:	07db      	lsls	r3, r3, #31
 800a366:	f140 8083 	bpl.w	800a470 <_realloc_r+0x15c>
 800a36a:	07d2      	lsls	r2, r2, #31
 800a36c:	d534      	bpl.n	800a3d8 <_realloc_r+0xc4>
 800a36e:	4651      	mov	r1, sl
 800a370:	4640      	mov	r0, r8
 800a372:	f7fe fd15 	bl	8008da0 <_malloc_r>
 800a376:	4682      	mov	sl, r0
 800a378:	b1e0      	cbz	r0, 800a3b4 <_realloc_r+0xa0>
 800a37a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800a37e:	f023 0301 	bic.w	r3, r3, #1
 800a382:	443b      	add	r3, r7
 800a384:	f1a0 0208 	sub.w	r2, r0, #8
 800a388:	4293      	cmp	r3, r2
 800a38a:	f000 80f9 	beq.w	800a580 <_realloc_r+0x26c>
 800a38e:	1f32      	subs	r2, r6, #4
 800a390:	2a24      	cmp	r2, #36	; 0x24
 800a392:	f200 8107 	bhi.w	800a5a4 <_realloc_r+0x290>
 800a396:	2a13      	cmp	r2, #19
 800a398:	6829      	ldr	r1, [r5, #0]
 800a39a:	f200 80e6 	bhi.w	800a56a <_realloc_r+0x256>
 800a39e:	4603      	mov	r3, r0
 800a3a0:	462a      	mov	r2, r5
 800a3a2:	6019      	str	r1, [r3, #0]
 800a3a4:	6851      	ldr	r1, [r2, #4]
 800a3a6:	6059      	str	r1, [r3, #4]
 800a3a8:	6892      	ldr	r2, [r2, #8]
 800a3aa:	609a      	str	r2, [r3, #8]
 800a3ac:	4629      	mov	r1, r5
 800a3ae:	4640      	mov	r0, r8
 800a3b0:	f7fe fb4a 	bl	8008a48 <_free_r>
 800a3b4:	4640      	mov	r0, r8
 800a3b6:	f7fe ff9d 	bl	80092f4 <__malloc_unlock>
 800a3ba:	e04f      	b.n	800a45c <_realloc_r+0x148>
 800a3bc:	f024 0407 	bic.w	r4, r4, #7
 800a3c0:	2c00      	cmp	r4, #0
 800a3c2:	4621      	mov	r1, r4
 800a3c4:	dabd      	bge.n	800a342 <_realloc_r+0x2e>
 800a3c6:	f04f 0a00 	mov.w	sl, #0
 800a3ca:	230c      	movs	r3, #12
 800a3cc:	4650      	mov	r0, sl
 800a3ce:	f8c8 3000 	str.w	r3, [r8]
 800a3d2:	b003      	add	sp, #12
 800a3d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a3d8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800a3dc:	eba7 0b03 	sub.w	fp, r7, r3
 800a3e0:	f8db 2004 	ldr.w	r2, [fp, #4]
 800a3e4:	f022 0203 	bic.w	r2, r2, #3
 800a3e8:	18b3      	adds	r3, r6, r2
 800a3ea:	428b      	cmp	r3, r1
 800a3ec:	dbbf      	blt.n	800a36e <_realloc_r+0x5a>
 800a3ee:	46da      	mov	sl, fp
 800a3f0:	f8db 100c 	ldr.w	r1, [fp, #12]
 800a3f4:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800a3f8:	1f32      	subs	r2, r6, #4
 800a3fa:	2a24      	cmp	r2, #36	; 0x24
 800a3fc:	60c1      	str	r1, [r0, #12]
 800a3fe:	eb0b 0903 	add.w	r9, fp, r3
 800a402:	6088      	str	r0, [r1, #8]
 800a404:	f200 80c6 	bhi.w	800a594 <_realloc_r+0x280>
 800a408:	2a13      	cmp	r2, #19
 800a40a:	6829      	ldr	r1, [r5, #0]
 800a40c:	f240 80c0 	bls.w	800a590 <_realloc_r+0x27c>
 800a410:	f8cb 1008 	str.w	r1, [fp, #8]
 800a414:	6869      	ldr	r1, [r5, #4]
 800a416:	f8cb 100c 	str.w	r1, [fp, #12]
 800a41a:	2a1b      	cmp	r2, #27
 800a41c:	68a9      	ldr	r1, [r5, #8]
 800a41e:	f200 80d8 	bhi.w	800a5d2 <_realloc_r+0x2be>
 800a422:	f10b 0210 	add.w	r2, fp, #16
 800a426:	3508      	adds	r5, #8
 800a428:	6011      	str	r1, [r2, #0]
 800a42a:	6869      	ldr	r1, [r5, #4]
 800a42c:	6051      	str	r1, [r2, #4]
 800a42e:	68a9      	ldr	r1, [r5, #8]
 800a430:	6091      	str	r1, [r2, #8]
 800a432:	461e      	mov	r6, r3
 800a434:	465f      	mov	r7, fp
 800a436:	4655      	mov	r5, sl
 800a438:	687b      	ldr	r3, [r7, #4]
 800a43a:	1b32      	subs	r2, r6, r4
 800a43c:	2a0f      	cmp	r2, #15
 800a43e:	f003 0301 	and.w	r3, r3, #1
 800a442:	d822      	bhi.n	800a48a <_realloc_r+0x176>
 800a444:	4333      	orrs	r3, r6
 800a446:	607b      	str	r3, [r7, #4]
 800a448:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800a44c:	f043 0301 	orr.w	r3, r3, #1
 800a450:	f8c9 3004 	str.w	r3, [r9, #4]
 800a454:	4640      	mov	r0, r8
 800a456:	f7fe ff4d 	bl	80092f4 <__malloc_unlock>
 800a45a:	46aa      	mov	sl, r5
 800a45c:	4650      	mov	r0, sl
 800a45e:	b003      	add	sp, #12
 800a460:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a464:	4611      	mov	r1, r2
 800a466:	b003      	add	sp, #12
 800a468:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a46c:	f7fe bc98 	b.w	8008da0 <_malloc_r>
 800a470:	f020 0003 	bic.w	r0, r0, #3
 800a474:	1833      	adds	r3, r6, r0
 800a476:	428b      	cmp	r3, r1
 800a478:	db61      	blt.n	800a53e <_realloc_r+0x22a>
 800a47a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800a47e:	461e      	mov	r6, r3
 800a480:	60ca      	str	r2, [r1, #12]
 800a482:	eb07 0903 	add.w	r9, r7, r3
 800a486:	6091      	str	r1, [r2, #8]
 800a488:	e7d6      	b.n	800a438 <_realloc_r+0x124>
 800a48a:	1939      	adds	r1, r7, r4
 800a48c:	4323      	orrs	r3, r4
 800a48e:	f042 0201 	orr.w	r2, r2, #1
 800a492:	607b      	str	r3, [r7, #4]
 800a494:	604a      	str	r2, [r1, #4]
 800a496:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800a49a:	f043 0301 	orr.w	r3, r3, #1
 800a49e:	3108      	adds	r1, #8
 800a4a0:	f8c9 3004 	str.w	r3, [r9, #4]
 800a4a4:	4640      	mov	r0, r8
 800a4a6:	f7fe facf 	bl	8008a48 <_free_r>
 800a4aa:	e7d3      	b.n	800a454 <_realloc_r+0x140>
 800a4ac:	6840      	ldr	r0, [r0, #4]
 800a4ae:	f020 0903 	bic.w	r9, r0, #3
 800a4b2:	44b1      	add	r9, r6
 800a4b4:	f104 0010 	add.w	r0, r4, #16
 800a4b8:	4581      	cmp	r9, r0
 800a4ba:	da77      	bge.n	800a5ac <_realloc_r+0x298>
 800a4bc:	07d2      	lsls	r2, r2, #31
 800a4be:	f53f af56 	bmi.w	800a36e <_realloc_r+0x5a>
 800a4c2:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800a4c6:	eba7 0b02 	sub.w	fp, r7, r2
 800a4ca:	f8db 2004 	ldr.w	r2, [fp, #4]
 800a4ce:	f022 0203 	bic.w	r2, r2, #3
 800a4d2:	4491      	add	r9, r2
 800a4d4:	4548      	cmp	r0, r9
 800a4d6:	dc87      	bgt.n	800a3e8 <_realloc_r+0xd4>
 800a4d8:	46da      	mov	sl, fp
 800a4da:	f8db 100c 	ldr.w	r1, [fp, #12]
 800a4de:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800a4e2:	1f32      	subs	r2, r6, #4
 800a4e4:	2a24      	cmp	r2, #36	; 0x24
 800a4e6:	60c1      	str	r1, [r0, #12]
 800a4e8:	6088      	str	r0, [r1, #8]
 800a4ea:	f200 80a1 	bhi.w	800a630 <_realloc_r+0x31c>
 800a4ee:	2a13      	cmp	r2, #19
 800a4f0:	6829      	ldr	r1, [r5, #0]
 800a4f2:	f240 809b 	bls.w	800a62c <_realloc_r+0x318>
 800a4f6:	f8cb 1008 	str.w	r1, [fp, #8]
 800a4fa:	6869      	ldr	r1, [r5, #4]
 800a4fc:	f8cb 100c 	str.w	r1, [fp, #12]
 800a500:	2a1b      	cmp	r2, #27
 800a502:	68a9      	ldr	r1, [r5, #8]
 800a504:	f200 809b 	bhi.w	800a63e <_realloc_r+0x32a>
 800a508:	f10b 0210 	add.w	r2, fp, #16
 800a50c:	3508      	adds	r5, #8
 800a50e:	6011      	str	r1, [r2, #0]
 800a510:	6869      	ldr	r1, [r5, #4]
 800a512:	6051      	str	r1, [r2, #4]
 800a514:	68a9      	ldr	r1, [r5, #8]
 800a516:	6091      	str	r1, [r2, #8]
 800a518:	eb0b 0104 	add.w	r1, fp, r4
 800a51c:	eba9 0204 	sub.w	r2, r9, r4
 800a520:	f042 0201 	orr.w	r2, r2, #1
 800a524:	6099      	str	r1, [r3, #8]
 800a526:	604a      	str	r2, [r1, #4]
 800a528:	f8db 3004 	ldr.w	r3, [fp, #4]
 800a52c:	f003 0301 	and.w	r3, r3, #1
 800a530:	431c      	orrs	r4, r3
 800a532:	4640      	mov	r0, r8
 800a534:	f8cb 4004 	str.w	r4, [fp, #4]
 800a538:	f7fe fedc 	bl	80092f4 <__malloc_unlock>
 800a53c:	e78e      	b.n	800a45c <_realloc_r+0x148>
 800a53e:	07d3      	lsls	r3, r2, #31
 800a540:	f53f af15 	bmi.w	800a36e <_realloc_r+0x5a>
 800a544:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800a548:	eba7 0b03 	sub.w	fp, r7, r3
 800a54c:	f8db 2004 	ldr.w	r2, [fp, #4]
 800a550:	f022 0203 	bic.w	r2, r2, #3
 800a554:	4410      	add	r0, r2
 800a556:	1983      	adds	r3, r0, r6
 800a558:	428b      	cmp	r3, r1
 800a55a:	f6ff af45 	blt.w	800a3e8 <_realloc_r+0xd4>
 800a55e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800a562:	46da      	mov	sl, fp
 800a564:	60ca      	str	r2, [r1, #12]
 800a566:	6091      	str	r1, [r2, #8]
 800a568:	e742      	b.n	800a3f0 <_realloc_r+0xdc>
 800a56a:	6001      	str	r1, [r0, #0]
 800a56c:	686b      	ldr	r3, [r5, #4]
 800a56e:	6043      	str	r3, [r0, #4]
 800a570:	2a1b      	cmp	r2, #27
 800a572:	d83a      	bhi.n	800a5ea <_realloc_r+0x2d6>
 800a574:	f105 0208 	add.w	r2, r5, #8
 800a578:	f100 0308 	add.w	r3, r0, #8
 800a57c:	68a9      	ldr	r1, [r5, #8]
 800a57e:	e710      	b.n	800a3a2 <_realloc_r+0x8e>
 800a580:	f850 3c04 	ldr.w	r3, [r0, #-4]
 800a584:	f023 0303 	bic.w	r3, r3, #3
 800a588:	441e      	add	r6, r3
 800a58a:	eb07 0906 	add.w	r9, r7, r6
 800a58e:	e753      	b.n	800a438 <_realloc_r+0x124>
 800a590:	4652      	mov	r2, sl
 800a592:	e749      	b.n	800a428 <_realloc_r+0x114>
 800a594:	4629      	mov	r1, r5
 800a596:	4650      	mov	r0, sl
 800a598:	461e      	mov	r6, r3
 800a59a:	465f      	mov	r7, fp
 800a59c:	f7ff fe40 	bl	800a220 <memmove>
 800a5a0:	4655      	mov	r5, sl
 800a5a2:	e749      	b.n	800a438 <_realloc_r+0x124>
 800a5a4:	4629      	mov	r1, r5
 800a5a6:	f7ff fe3b 	bl	800a220 <memmove>
 800a5aa:	e6ff      	b.n	800a3ac <_realloc_r+0x98>
 800a5ac:	4427      	add	r7, r4
 800a5ae:	eba9 0904 	sub.w	r9, r9, r4
 800a5b2:	f049 0201 	orr.w	r2, r9, #1
 800a5b6:	609f      	str	r7, [r3, #8]
 800a5b8:	607a      	str	r2, [r7, #4]
 800a5ba:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800a5be:	f003 0301 	and.w	r3, r3, #1
 800a5c2:	431c      	orrs	r4, r3
 800a5c4:	4640      	mov	r0, r8
 800a5c6:	f845 4c04 	str.w	r4, [r5, #-4]
 800a5ca:	f7fe fe93 	bl	80092f4 <__malloc_unlock>
 800a5ce:	46aa      	mov	sl, r5
 800a5d0:	e744      	b.n	800a45c <_realloc_r+0x148>
 800a5d2:	f8cb 1010 	str.w	r1, [fp, #16]
 800a5d6:	68e9      	ldr	r1, [r5, #12]
 800a5d8:	f8cb 1014 	str.w	r1, [fp, #20]
 800a5dc:	2a24      	cmp	r2, #36	; 0x24
 800a5de:	d010      	beq.n	800a602 <_realloc_r+0x2ee>
 800a5e0:	6929      	ldr	r1, [r5, #16]
 800a5e2:	f10b 0218 	add.w	r2, fp, #24
 800a5e6:	3510      	adds	r5, #16
 800a5e8:	e71e      	b.n	800a428 <_realloc_r+0x114>
 800a5ea:	68ab      	ldr	r3, [r5, #8]
 800a5ec:	6083      	str	r3, [r0, #8]
 800a5ee:	68eb      	ldr	r3, [r5, #12]
 800a5f0:	60c3      	str	r3, [r0, #12]
 800a5f2:	2a24      	cmp	r2, #36	; 0x24
 800a5f4:	d010      	beq.n	800a618 <_realloc_r+0x304>
 800a5f6:	f105 0210 	add.w	r2, r5, #16
 800a5fa:	f100 0310 	add.w	r3, r0, #16
 800a5fe:	6929      	ldr	r1, [r5, #16]
 800a600:	e6cf      	b.n	800a3a2 <_realloc_r+0x8e>
 800a602:	692a      	ldr	r2, [r5, #16]
 800a604:	f8cb 2018 	str.w	r2, [fp, #24]
 800a608:	696a      	ldr	r2, [r5, #20]
 800a60a:	f8cb 201c 	str.w	r2, [fp, #28]
 800a60e:	69a9      	ldr	r1, [r5, #24]
 800a610:	f10b 0220 	add.w	r2, fp, #32
 800a614:	3518      	adds	r5, #24
 800a616:	e707      	b.n	800a428 <_realloc_r+0x114>
 800a618:	692b      	ldr	r3, [r5, #16]
 800a61a:	6103      	str	r3, [r0, #16]
 800a61c:	696b      	ldr	r3, [r5, #20]
 800a61e:	6143      	str	r3, [r0, #20]
 800a620:	69a9      	ldr	r1, [r5, #24]
 800a622:	f105 0218 	add.w	r2, r5, #24
 800a626:	f100 0318 	add.w	r3, r0, #24
 800a62a:	e6ba      	b.n	800a3a2 <_realloc_r+0x8e>
 800a62c:	4652      	mov	r2, sl
 800a62e:	e76e      	b.n	800a50e <_realloc_r+0x1fa>
 800a630:	4629      	mov	r1, r5
 800a632:	4650      	mov	r0, sl
 800a634:	9301      	str	r3, [sp, #4]
 800a636:	f7ff fdf3 	bl	800a220 <memmove>
 800a63a:	9b01      	ldr	r3, [sp, #4]
 800a63c:	e76c      	b.n	800a518 <_realloc_r+0x204>
 800a63e:	f8cb 1010 	str.w	r1, [fp, #16]
 800a642:	68e9      	ldr	r1, [r5, #12]
 800a644:	f8cb 1014 	str.w	r1, [fp, #20]
 800a648:	2a24      	cmp	r2, #36	; 0x24
 800a64a:	d004      	beq.n	800a656 <_realloc_r+0x342>
 800a64c:	6929      	ldr	r1, [r5, #16]
 800a64e:	f10b 0218 	add.w	r2, fp, #24
 800a652:	3510      	adds	r5, #16
 800a654:	e75b      	b.n	800a50e <_realloc_r+0x1fa>
 800a656:	692a      	ldr	r2, [r5, #16]
 800a658:	f8cb 2018 	str.w	r2, [fp, #24]
 800a65c:	696a      	ldr	r2, [r5, #20]
 800a65e:	f8cb 201c 	str.w	r2, [fp, #28]
 800a662:	69a9      	ldr	r1, [r5, #24]
 800a664:	f10b 0220 	add.w	r2, fp, #32
 800a668:	3518      	adds	r5, #24
 800a66a:	e750      	b.n	800a50e <_realloc_r+0x1fa>
 800a66c:	2000044c 	.word	0x2000044c

0800a670 <__swbuf_r>:
 800a670:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a672:	460d      	mov	r5, r1
 800a674:	4614      	mov	r4, r2
 800a676:	4606      	mov	r6, r0
 800a678:	b110      	cbz	r0, 800a680 <__swbuf_r+0x10>
 800a67a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a67c:	2b00      	cmp	r3, #0
 800a67e:	d043      	beq.n	800a708 <__swbuf_r+0x98>
 800a680:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a684:	69a3      	ldr	r3, [r4, #24]
 800a686:	60a3      	str	r3, [r4, #8]
 800a688:	b291      	uxth	r1, r2
 800a68a:	0708      	lsls	r0, r1, #28
 800a68c:	d51b      	bpl.n	800a6c6 <__swbuf_r+0x56>
 800a68e:	6923      	ldr	r3, [r4, #16]
 800a690:	b1cb      	cbz	r3, 800a6c6 <__swbuf_r+0x56>
 800a692:	b2ed      	uxtb	r5, r5
 800a694:	0489      	lsls	r1, r1, #18
 800a696:	462f      	mov	r7, r5
 800a698:	d522      	bpl.n	800a6e0 <__swbuf_r+0x70>
 800a69a:	6822      	ldr	r2, [r4, #0]
 800a69c:	6961      	ldr	r1, [r4, #20]
 800a69e:	1ad3      	subs	r3, r2, r3
 800a6a0:	4299      	cmp	r1, r3
 800a6a2:	dd29      	ble.n	800a6f8 <__swbuf_r+0x88>
 800a6a4:	3301      	adds	r3, #1
 800a6a6:	68a1      	ldr	r1, [r4, #8]
 800a6a8:	1c50      	adds	r0, r2, #1
 800a6aa:	3901      	subs	r1, #1
 800a6ac:	60a1      	str	r1, [r4, #8]
 800a6ae:	6020      	str	r0, [r4, #0]
 800a6b0:	7015      	strb	r5, [r2, #0]
 800a6b2:	6962      	ldr	r2, [r4, #20]
 800a6b4:	429a      	cmp	r2, r3
 800a6b6:	d02a      	beq.n	800a70e <__swbuf_r+0x9e>
 800a6b8:	89a3      	ldrh	r3, [r4, #12]
 800a6ba:	07db      	lsls	r3, r3, #31
 800a6bc:	d501      	bpl.n	800a6c2 <__swbuf_r+0x52>
 800a6be:	2d0a      	cmp	r5, #10
 800a6c0:	d025      	beq.n	800a70e <__swbuf_r+0x9e>
 800a6c2:	4638      	mov	r0, r7
 800a6c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a6c6:	4621      	mov	r1, r4
 800a6c8:	4630      	mov	r0, r6
 800a6ca:	f7fc fffd 	bl	80076c8 <__swsetup_r>
 800a6ce:	bb20      	cbnz	r0, 800a71a <__swbuf_r+0xaa>
 800a6d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800a6d4:	6923      	ldr	r3, [r4, #16]
 800a6d6:	b291      	uxth	r1, r2
 800a6d8:	b2ed      	uxtb	r5, r5
 800a6da:	0489      	lsls	r1, r1, #18
 800a6dc:	462f      	mov	r7, r5
 800a6de:	d4dc      	bmi.n	800a69a <__swbuf_r+0x2a>
 800a6e0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800a6e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a6e6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800a6ea:	81a2      	strh	r2, [r4, #12]
 800a6ec:	6822      	ldr	r2, [r4, #0]
 800a6ee:	6661      	str	r1, [r4, #100]	; 0x64
 800a6f0:	6961      	ldr	r1, [r4, #20]
 800a6f2:	1ad3      	subs	r3, r2, r3
 800a6f4:	4299      	cmp	r1, r3
 800a6f6:	dcd5      	bgt.n	800a6a4 <__swbuf_r+0x34>
 800a6f8:	4621      	mov	r1, r4
 800a6fa:	4630      	mov	r0, r6
 800a6fc:	f7fe f8a6 	bl	800884c <_fflush_r>
 800a700:	b958      	cbnz	r0, 800a71a <__swbuf_r+0xaa>
 800a702:	6822      	ldr	r2, [r4, #0]
 800a704:	2301      	movs	r3, #1
 800a706:	e7ce      	b.n	800a6a6 <__swbuf_r+0x36>
 800a708:	f7fe f8fc 	bl	8008904 <__sinit>
 800a70c:	e7b8      	b.n	800a680 <__swbuf_r+0x10>
 800a70e:	4621      	mov	r1, r4
 800a710:	4630      	mov	r0, r6
 800a712:	f7fe f89b 	bl	800884c <_fflush_r>
 800a716:	2800      	cmp	r0, #0
 800a718:	d0d3      	beq.n	800a6c2 <__swbuf_r+0x52>
 800a71a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800a71e:	e7d0      	b.n	800a6c2 <__swbuf_r+0x52>

0800a720 <_wcrtomb_r>:
 800a720:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a722:	4c11      	ldr	r4, [pc, #68]	; (800a768 <_wcrtomb_r+0x48>)
 800a724:	6824      	ldr	r4, [r4, #0]
 800a726:	b085      	sub	sp, #20
 800a728:	4606      	mov	r6, r0
 800a72a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800a72c:	461f      	mov	r7, r3
 800a72e:	b151      	cbz	r1, 800a746 <_wcrtomb_r+0x26>
 800a730:	4d0e      	ldr	r5, [pc, #56]	; (800a76c <_wcrtomb_r+0x4c>)
 800a732:	2c00      	cmp	r4, #0
 800a734:	bf08      	it	eq
 800a736:	462c      	moveq	r4, r5
 800a738:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a73c:	47a0      	blx	r4
 800a73e:	1c43      	adds	r3, r0, #1
 800a740:	d00c      	beq.n	800a75c <_wcrtomb_r+0x3c>
 800a742:	b005      	add	sp, #20
 800a744:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a746:	4a09      	ldr	r2, [pc, #36]	; (800a76c <_wcrtomb_r+0x4c>)
 800a748:	2c00      	cmp	r4, #0
 800a74a:	bf08      	it	eq
 800a74c:	4614      	moveq	r4, r2
 800a74e:	460a      	mov	r2, r1
 800a750:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800a754:	a901      	add	r1, sp, #4
 800a756:	47a0      	blx	r4
 800a758:	1c43      	adds	r3, r0, #1
 800a75a:	d1f2      	bne.n	800a742 <_wcrtomb_r+0x22>
 800a75c:	2200      	movs	r2, #0
 800a75e:	238a      	movs	r3, #138	; 0x8a
 800a760:	603a      	str	r2, [r7, #0]
 800a762:	6033      	str	r3, [r6, #0]
 800a764:	b005      	add	sp, #20
 800a766:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a768:	2000001c 	.word	0x2000001c
 800a76c:	2000085c 	.word	0x2000085c

0800a770 <__ascii_wctomb>:
 800a770:	b121      	cbz	r1, 800a77c <__ascii_wctomb+0xc>
 800a772:	2aff      	cmp	r2, #255	; 0xff
 800a774:	d804      	bhi.n	800a780 <__ascii_wctomb+0x10>
 800a776:	700a      	strb	r2, [r1, #0]
 800a778:	2001      	movs	r0, #1
 800a77a:	4770      	bx	lr
 800a77c:	4608      	mov	r0, r1
 800a77e:	4770      	bx	lr
 800a780:	238a      	movs	r3, #138	; 0x8a
 800a782:	6003      	str	r3, [r0, #0]
 800a784:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800a788:	4770      	bx	lr
 800a78a:	bf00      	nop

0800a78c <_init>:
 800a78c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a78e:	bf00      	nop
 800a790:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a792:	bc08      	pop	{r3}
 800a794:	469e      	mov	lr, r3
 800a796:	4770      	bx	lr

0800a798 <_fini>:
 800a798:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a79a:	bf00      	nop
 800a79c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a79e:	bc08      	pop	{r3}
 800a7a0:	469e      	mov	lr, r3
 800a7a2:	4770      	bx	lr
 800a7a4:	0000      	movs	r0, r0
	...
