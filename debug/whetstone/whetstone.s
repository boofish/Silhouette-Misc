
whetstone.elf:     file format elf32-littlearm


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
 80001e0:	08009bd4 	.word	0x08009bd4

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
 80001fc:	08009bd4 	.word	0x08009bd4

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

08000e28 <memcpy>:
 8000e28:	4684      	mov	ip, r0
 8000e2a:	ea41 0300 	orr.w	r3, r1, r0
 8000e2e:	f013 0303 	ands.w	r3, r3, #3
 8000e32:	d16d      	bne.n	8000f10 <memcpy+0xe8>
 8000e34:	3a40      	subs	r2, #64	; 0x40
 8000e36:	d341      	bcc.n	8000ebc <memcpy+0x94>
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
 8000e68:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e6c:	f840 3b04 	str.w	r3, [r0], #4
 8000e70:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e74:	f840 3b04 	str.w	r3, [r0], #4
 8000e78:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e7c:	f840 3b04 	str.w	r3, [r0], #4
 8000e80:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e84:	f840 3b04 	str.w	r3, [r0], #4
 8000e88:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e8c:	f840 3b04 	str.w	r3, [r0], #4
 8000e90:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e94:	f840 3b04 	str.w	r3, [r0], #4
 8000e98:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e9c:	f840 3b04 	str.w	r3, [r0], #4
 8000ea0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ea4:	f840 3b04 	str.w	r3, [r0], #4
 8000ea8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eac:	f840 3b04 	str.w	r3, [r0], #4
 8000eb0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eb4:	f840 3b04 	str.w	r3, [r0], #4
 8000eb8:	3a40      	subs	r2, #64	; 0x40
 8000eba:	d2bd      	bcs.n	8000e38 <memcpy+0x10>
 8000ebc:	3230      	adds	r2, #48	; 0x30
 8000ebe:	d311      	bcc.n	8000ee4 <memcpy+0xbc>
 8000ec0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ec4:	f840 3b04 	str.w	r3, [r0], #4
 8000ec8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ecc:	f840 3b04 	str.w	r3, [r0], #4
 8000ed0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ed4:	f840 3b04 	str.w	r3, [r0], #4
 8000ed8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000edc:	f840 3b04 	str.w	r3, [r0], #4
 8000ee0:	3a10      	subs	r2, #16
 8000ee2:	d2ed      	bcs.n	8000ec0 <memcpy+0x98>
 8000ee4:	320c      	adds	r2, #12
 8000ee6:	d305      	bcc.n	8000ef4 <memcpy+0xcc>
 8000ee8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eec:	f840 3b04 	str.w	r3, [r0], #4
 8000ef0:	3a04      	subs	r2, #4
 8000ef2:	d2f9      	bcs.n	8000ee8 <memcpy+0xc0>
 8000ef4:	3204      	adds	r2, #4
 8000ef6:	d008      	beq.n	8000f0a <memcpy+0xe2>
 8000ef8:	07d2      	lsls	r2, r2, #31
 8000efa:	bf1c      	itt	ne
 8000efc:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f00:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f04:	d301      	bcc.n	8000f0a <memcpy+0xe2>
 8000f06:	880b      	ldrh	r3, [r1, #0]
 8000f08:	8003      	strh	r3, [r0, #0]
 8000f0a:	4660      	mov	r0, ip
 8000f0c:	4770      	bx	lr
 8000f0e:	bf00      	nop
 8000f10:	2a08      	cmp	r2, #8
 8000f12:	d313      	bcc.n	8000f3c <memcpy+0x114>
 8000f14:	078b      	lsls	r3, r1, #30
 8000f16:	d08d      	beq.n	8000e34 <memcpy+0xc>
 8000f18:	f010 0303 	ands.w	r3, r0, #3
 8000f1c:	d08a      	beq.n	8000e34 <memcpy+0xc>
 8000f1e:	f1c3 0304 	rsb	r3, r3, #4
 8000f22:	1ad2      	subs	r2, r2, r3
 8000f24:	07db      	lsls	r3, r3, #31
 8000f26:	bf1c      	itt	ne
 8000f28:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f2c:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f30:	d380      	bcc.n	8000e34 <memcpy+0xc>
 8000f32:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000f36:	f820 3b02 	strh.w	r3, [r0], #2
 8000f3a:	e77b      	b.n	8000e34 <memcpy+0xc>
 8000f3c:	3a04      	subs	r2, #4
 8000f3e:	d3d9      	bcc.n	8000ef4 <memcpy+0xcc>
 8000f40:	3a01      	subs	r2, #1
 8000f42:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000f46:	f800 3b01 	strb.w	r3, [r0], #1
 8000f4a:	d2f9      	bcs.n	8000f40 <memcpy+0x118>
 8000f4c:	780b      	ldrb	r3, [r1, #0]
 8000f4e:	7003      	strb	r3, [r0, #0]
 8000f50:	784b      	ldrb	r3, [r1, #1]
 8000f52:	7043      	strb	r3, [r0, #1]
 8000f54:	788b      	ldrb	r3, [r1, #2]
 8000f56:	7083      	strb	r3, [r0, #2]
 8000f58:	4660      	mov	r0, ip
 8000f5a:	4770      	bx	lr
	...

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

08001100 <HAL_Init>:
 8001100:	b580      	push	{r7, lr}
 8001102:	466f      	mov	r7, sp
 8001104:	2003      	movs	r0, #3
 8001106:	f000 f819 	bl	800113c <HAL_NVIC_SetPriorityGrouping>
 800110a:	200f      	movs	r0, #15
 800110c:	f000 fb84 	bl	8001818 <HAL_InitTick>
 8001110:	2800      	cmp	r0, #0
 8001112:	bf1c      	itt	ne
 8001114:	2001      	movne	r0, #1
 8001116:	bd80      	popne	{r7, pc}
 8001118:	f000 f94b 	bl	80013b2 <HAL_MspInit>
 800111c:	2000      	movs	r0, #0
 800111e:	bd80      	pop	{r7, pc}

08001120 <HAL_IncTick>:
 8001120:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8001124:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001128:	6801      	ldr	r1, [r0, #0]
 800112a:	3101      	adds	r1, #1
 800112c:	6001      	str	r1, [r0, #0]
 800112e:	4770      	bx	lr

08001130 <HAL_GetTick>:
 8001130:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8001134:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001138:	6800      	ldr	r0, [r0, #0]
 800113a:	4770      	bx	lr

0800113c <HAL_NVIC_SetPriorityGrouping>:
 800113c:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001140:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001144:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001148:	680a      	ldr	r2, [r1, #0]
 800114a:	401a      	ands	r2, r3
 800114c:	f360 220a 	bfi	r2, r0, #8, #3
 8001150:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001154:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001158:	6008      	str	r0, [r1, #0]
 800115a:	4770      	bx	lr

0800115c <HAL_NVIC_SetPriority>:
 800115c:	b580      	push	{r7, lr}
 800115e:	466f      	mov	r7, sp
 8001160:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001164:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001168:	2800      	cmp	r0, #0
 800116a:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800116e:	f000 030f 	and.w	r3, r0, #15
 8001172:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001176:	f1a3 0304 	sub.w	r3, r3, #4
 800117a:	4473      	add	r3, lr
 800117c:	bfb8      	it	lt
 800117e:	f103 0c0c 	addlt.w	ip, r3, #12
 8001182:	f8de 0000 	ldr.w	r0, [lr]
 8001186:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800118a:	f100 0e04 	add.w	lr, r0, #4
 800118e:	1ec3      	subs	r3, r0, #3
 8001190:	f080 0007 	eor.w	r0, r0, #7
 8001194:	f1be 0f07 	cmp.w	lr, #7
 8001198:	f04f 0e01 	mov.w	lr, #1
 800119c:	bf38      	it	cc
 800119e:	2300      	movcc	r3, #0
 80011a0:	2804      	cmp	r0, #4
 80011a2:	bf28      	it	cs
 80011a4:	2004      	movcs	r0, #4
 80011a6:	fa0e f000 	lsl.w	r0, lr, r0
 80011aa:	3801      	subs	r0, #1
 80011ac:	4008      	ands	r0, r1
 80011ae:	fa0e f103 	lsl.w	r1, lr, r3
 80011b2:	310f      	adds	r1, #15
 80011b4:	4098      	lsls	r0, r3
 80011b6:	4011      	ands	r1, r2
 80011b8:	4308      	orrs	r0, r1
 80011ba:	0100      	lsls	r0, r0, #4
 80011bc:	f88c 0000 	strb.w	r0, [ip]
 80011c0:	bd80      	pop	{r7, pc}

080011c2 <HAL_NVIC_EnableIRQ>:
 80011c2:	f000 011f 	and.w	r1, r0, #31
 80011c6:	2201      	movs	r2, #1
 80011c8:	0940      	lsrs	r0, r0, #5
 80011ca:	fa02 f101 	lsl.w	r1, r2, r1
 80011ce:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011d2:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011d6:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011da:	4770      	bx	lr

080011dc <HAL_SYSTICK_IRQHandler>:
 80011dc:	f000 b800 	b.w	80011e0 <HAL_SYSTICK_Callback>

080011e0 <HAL_SYSTICK_Callback>:
 80011e0:	4770      	bx	lr

080011e2 <HAL_GPIO_Init>:
 80011e2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011e4:	af03      	add	r7, sp, #12
 80011e6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011ea:	b082      	sub	sp, #8
 80011ec:	680e      	ldr	r6, [r1, #0]
 80011ee:	2e00      	cmp	r6, #0
 80011f0:	f000 80db 	beq.w	80013aa <HAL_GPIO_Init+0x1c8>
 80011f4:	f641 0200 	movw	r2, #6144	; 0x1800
 80011f8:	2507      	movs	r5, #7
 80011fa:	f04f 0801 	mov.w	r8, #1
 80011fe:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001202:	4290      	cmp	r0, r2
 8001204:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001208:	ea4f 23b2 	mov.w	r3, r2, ror #10
 800120c:	bf08      	it	eq
 800120e:	2506      	moveq	r5, #6
 8001210:	2b06      	cmp	r3, #6
 8001212:	bf38      	it	cc
 8001214:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001218:	2200      	movs	r2, #0
 800121a:	9500      	str	r5, [sp, #0]
 800121c:	2500      	movs	r5, #0
 800121e:	f1a8 0a01 	sub.w	sl, r8, #1
 8001222:	2301      	movs	r3, #1
 8001224:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001228:	ea16 090b 	ands.w	r9, r6, fp
 800122c:	f000 80b4 	beq.w	8001398 <HAL_GPIO_Init+0x1b6>
 8001230:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001234:	f04e 0610 	orr.w	r6, lr, #16
 8001238:	2e12      	cmp	r6, #18
 800123a:	d115      	bne.n	8001268 <HAL_GPIO_Init+0x86>
 800123c:	f005 061c 	and.w	r6, r5, #28
 8001240:	230f      	movs	r3, #15
 8001242:	fa03 fc06 	lsl.w	ip, r3, r6
 8001246:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 800124a:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800124e:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001252:	4404      	add	r4, r0
 8001254:	6a23      	ldr	r3, [r4, #32]
 8001256:	ea23 0c0c 	bic.w	ip, r3, ip
 800125a:	690b      	ldr	r3, [r1, #16]
 800125c:	40b3      	lsls	r3, r6
 800125e:	ea43 030c 	orr.w	r3, r3, ip
 8001262:	6223      	str	r3, [r4, #32]
 8001264:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001268:	6806      	ldr	r6, [r0, #0]
 800126a:	2403      	movs	r4, #3
 800126c:	f00e 0c03 	and.w	ip, lr, #3
 8001270:	f1be 0f12 	cmp.w	lr, #18
 8001274:	fa04 f402 	lsl.w	r4, r4, r2
 8001278:	fa0c f302 	lsl.w	r3, ip, r2
 800127c:	ea26 0604 	bic.w	r6, r6, r4
 8001280:	ea43 0306 	orr.w	r3, r3, r6
 8001284:	ea6f 0604 	mvn.w	r6, r4
 8001288:	6003      	str	r3, [r0, #0]
 800128a:	d816      	bhi.n	80012ba <HAL_GPIO_Init+0xd8>
 800128c:	2301      	movs	r3, #1
 800128e:	fa03 f30e 	lsl.w	r3, r3, lr
 8001292:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001296:	bf1f      	itttt	ne
 8001298:	6883      	ldrne	r3, [r0, #8]
 800129a:	4033      	andne	r3, r6
 800129c:	68cc      	ldrne	r4, [r1, #12]
 800129e:	4094      	lslne	r4, r2
 80012a0:	bf1f      	itttt	ne
 80012a2:	4323      	orrne	r3, r4
 80012a4:	6083      	strne	r3, [r0, #8]
 80012a6:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012aa:	fa03 f30a 	lslne.w	r3, r3, sl
 80012ae:	bf1f      	itttt	ne
 80012b0:	6844      	ldrne	r4, [r0, #4]
 80012b2:	ea24 040b 	bicne.w	r4, r4, fp
 80012b6:	4323      	orrne	r3, r4
 80012b8:	6043      	strne	r3, [r0, #4]
 80012ba:	f1bc 0f03 	cmp.w	ip, #3
 80012be:	d108      	bne.n	80012d2 <HAL_GPIO_Init+0xf0>
 80012c0:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012c4:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012c6:	fa03 f30a 	lsl.w	r3, r3, sl
 80012ca:	ea24 040b 	bic.w	r4, r4, fp
 80012ce:	4323      	orrs	r3, r4
 80012d0:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012d2:	68c3      	ldr	r3, [r0, #12]
 80012d4:	4033      	ands	r3, r6
 80012d6:	688e      	ldr	r6, [r1, #8]
 80012d8:	4096      	lsls	r6, r2
 80012da:	4333      	orrs	r3, r6
 80012dc:	60c3      	str	r3, [r0, #12]
 80012de:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012e2:	d559      	bpl.n	8001398 <HAL_GPIO_Init+0x1b6>
 80012e4:	f241 0360 	movw	r3, #4192	; 0x1060
 80012e8:	f005 040c 	and.w	r4, r5, #12
 80012ec:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012f0:	461e      	mov	r6, r3
 80012f2:	6833      	ldr	r3, [r6, #0]
 80012f4:	f043 0301 	orr.w	r3, r3, #1
 80012f8:	6033      	str	r3, [r6, #0]
 80012fa:	6833      	ldr	r3, [r6, #0]
 80012fc:	f240 4600 	movw	r6, #1024	; 0x400
 8001300:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001304:	46b6      	mov	lr, r6
 8001306:	f003 0301 	and.w	r3, r3, #1
 800130a:	9301      	str	r3, [sp, #4]
 800130c:	f02a 0303 	bic.w	r3, sl, #3
 8001310:	9e01      	ldr	r6, [sp, #4]
 8001312:	4473      	add	r3, lr
 8001314:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001318:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800131c:	46b2      	mov	sl, r6
 800131e:	260f      	movs	r6, #15
 8001320:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001324:	40a6      	lsls	r6, r4
 8001326:	ea2c 0c06 	bic.w	ip, ip, r6
 800132a:	9e00      	ldr	r6, [sp, #0]
 800132c:	fa06 f404 	lsl.w	r4, r6, r4
 8001330:	ea4c 0604 	orr.w	r6, ip, r4
 8001334:	f843 600a 	str.w	r6, [r3, sl]
 8001338:	f8de 3000 	ldr.w	r3, [lr]
 800133c:	684e      	ldr	r6, [r1, #4]
 800133e:	ea23 0309 	bic.w	r3, r3, r9
 8001342:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001346:	bf18      	it	ne
 8001348:	ea43 0309 	orrne.w	r3, r3, r9
 800134c:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001350:	f8ce 3000 	str.w	r3, [lr]
 8001354:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001358:	ea23 0309 	bic.w	r3, r3, r9
 800135c:	bf18      	it	ne
 800135e:	ea43 0309 	orrne.w	r3, r3, r9
 8001362:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001366:	f8ce 3004 	str.w	r3, [lr, #4]
 800136a:	f8de 3008 	ldr.w	r3, [lr, #8]
 800136e:	ea23 0309 	bic.w	r3, r3, r9
 8001372:	bf18      	it	ne
 8001374:	ea43 0309 	orrne.w	r3, r3, r9
 8001378:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800137c:	f8ce 3008 	str.w	r3, [lr, #8]
 8001380:	f240 430c 	movw	r3, #1036	; 0x40c
 8001384:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001388:	461c      	mov	r4, r3
 800138a:	6823      	ldr	r3, [r4, #0]
 800138c:	ea23 0309 	bic.w	r3, r3, r9
 8001390:	bf18      	it	ne
 8001392:	ea43 0309 	orrne.w	r3, r3, r9
 8001396:	6023      	str	r3, [r4, #0]
 8001398:	680e      	ldr	r6, [r1, #0]
 800139a:	3202      	adds	r2, #2
 800139c:	3504      	adds	r5, #4
 800139e:	fa36 f308 	lsrs.w	r3, r6, r8
 80013a2:	f108 0801 	add.w	r8, r8, #1
 80013a6:	f47f af3a 	bne.w	800121e <HAL_GPIO_Init+0x3c>
 80013aa:	b002      	add	sp, #8
 80013ac:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013b0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013b2 <HAL_MspInit>:
 80013b2:	4770      	bx	lr

080013b4 <HAL_RCC_GetSysClockFreq>:
 80013b4:	b580      	push	{r7, lr}
 80013b6:	466f      	mov	r7, sp
 80013b8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013bc:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013c0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013c4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013c8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013cc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013d0:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013d4:	6808      	ldr	r0, [r1, #0]
 80013d6:	f012 030c 	ands.w	r3, r2, #12
 80013da:	d005      	beq.n	80013e8 <HAL_RCC_GetSysClockFreq+0x34>
 80013dc:	2b0c      	cmp	r3, #12
 80013de:	bf04      	itt	eq
 80013e0:	f000 0003 	andeq.w	r0, r0, #3
 80013e4:	2801      	cmpeq	r0, #1
 80013e6:	d118      	bne.n	800141a <HAL_RCC_GetSysClockFreq+0x66>
 80013e8:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013ec:	f010 0f08 	tst.w	r0, #8
 80013f0:	d103      	bne.n	80013fa <HAL_RCC_GetSysClockFreq+0x46>
 80013f2:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013f6:	0a00      	lsrs	r0, r0, #8
 80013f8:	e002      	b.n	8001400 <HAL_RCC_GetSysClockFreq+0x4c>
 80013fa:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013fe:	0900      	lsrs	r0, r0, #4
 8001400:	f649 4208 	movw	r2, #39944	; 0x9c08
 8001404:	f000 000f 	and.w	r0, r0, #15
 8001408:	2b00      	cmp	r3, #0
 800140a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800140e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001412:	4610      	mov	r0, r2
 8001414:	bf18      	it	ne
 8001416:	2000      	movne	r0, #0
 8001418:	e00b      	b.n	8001432 <HAL_RCC_GetSysClockFreq+0x7e>
 800141a:	f003 000f 	and.w	r0, r3, #15
 800141e:	2804      	cmp	r0, #4
 8001420:	bf04      	itt	eq
 8001422:	4660      	moveq	r0, ip
 8001424:	bd80      	popeq	{r7, pc}
 8001426:	2808      	cmp	r0, #8
 8001428:	bf04      	itt	eq
 800142a:	4670      	moveq	r0, lr
 800142c:	bd80      	popeq	{r7, pc}
 800142e:	2000      	movs	r0, #0
 8001430:	2200      	movs	r2, #0
 8001432:	2b0c      	cmp	r3, #12
 8001434:	bf18      	it	ne
 8001436:	bd80      	popne	{r7, pc}
 8001438:	6808      	ldr	r0, [r1, #0]
 800143a:	f000 0303 	and.w	r3, r0, #3
 800143e:	6808      	ldr	r0, [r1, #0]
 8001440:	2b03      	cmp	r3, #3
 8001442:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001446:	f100 0001 	add.w	r0, r0, #1
 800144a:	d003      	beq.n	8001454 <HAL_RCC_GetSysClockFreq+0xa0>
 800144c:	2b02      	cmp	r3, #2
 800144e:	46e6      	mov	lr, ip
 8001450:	bf18      	it	ne
 8001452:	4696      	movne	lr, r2
 8001454:	680a      	ldr	r2, [r1, #0]
 8001456:	fbbe f0f0 	udiv	r0, lr, r0
 800145a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800145e:	6809      	ldr	r1, [r1, #0]
 8001460:	4350      	muls	r0, r2
 8001462:	2202      	movs	r2, #2
 8001464:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001468:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800146c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001470:	bd80      	pop	{r7, pc}

08001472 <HAL_RCC_GetPCLK1Freq>:
 8001472:	f240 0014 	movw	r0, #20
 8001476:	f241 0108 	movw	r1, #4104	; 0x1008
 800147a:	f649 4200 	movw	r2, #39936	; 0x9c00
 800147e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001482:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001486:	f6c0 0200 	movt	r2, #2048	; 0x800
 800148a:	6800      	ldr	r0, [r0, #0]
 800148c:	6809      	ldr	r1, [r1, #0]
 800148e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001492:	5c51      	ldrb	r1, [r2, r1]
 8001494:	f001 011f 	and.w	r1, r1, #31
 8001498:	40c8      	lsrs	r0, r1
 800149a:	4770      	bx	lr

0800149c <HAL_RCC_GetPCLK2Freq>:
 800149c:	f240 0014 	movw	r0, #20
 80014a0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014a4:	f649 4200 	movw	r2, #39936	; 0x9c00
 80014a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014ac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014b4:	6800      	ldr	r0, [r0, #0]
 80014b6:	6809      	ldr	r1, [r1, #0]
 80014b8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014bc:	5c51      	ldrb	r1, [r2, r1]
 80014be:	f001 011f 	and.w	r1, r1, #31
 80014c2:	40c8      	lsrs	r0, r1
 80014c4:	4770      	bx	lr

080014c6 <HAL_RCC_GetClockConfig>:
 80014c6:	220f      	movs	r2, #15
 80014c8:	6002      	str	r2, [r0, #0]
 80014ca:	f241 0208 	movw	r2, #4104	; 0x1008
 80014ce:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014d2:	6813      	ldr	r3, [r2, #0]
 80014d4:	f003 0303 	and.w	r3, r3, #3
 80014d8:	6043      	str	r3, [r0, #4]
 80014da:	6813      	ldr	r3, [r2, #0]
 80014dc:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014e0:	6083      	str	r3, [r0, #8]
 80014e2:	6813      	ldr	r3, [r2, #0]
 80014e4:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014e8:	60c3      	str	r3, [r0, #12]
 80014ea:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014ee:	6812      	ldr	r2, [r2, #0]
 80014f0:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014f4:	6102      	str	r2, [r0, #16]
 80014f6:	f242 0000 	movw	r0, #8192	; 0x2000
 80014fa:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014fe:	6800      	ldr	r0, [r0, #0]
 8001500:	f000 0007 	and.w	r0, r0, #7
 8001504:	6008      	str	r0, [r1, #0]
 8001506:	4770      	bx	lr

08001508 <HAL_TIM_Base_Init>:
 8001508:	b5d0      	push	{r4, r6, r7, lr}
 800150a:	af02      	add	r7, sp, #8
 800150c:	4604      	mov	r4, r0
 800150e:	2c00      	cmp	r4, #0
 8001510:	bf04      	itt	eq
 8001512:	2001      	moveq	r0, #1
 8001514:	bdd0      	popeq	{r4, r6, r7, pc}
 8001516:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001518:	b920      	cbnz	r0, 8001524 <HAL_TIM_Base_Init+0x1c>
 800151a:	2000      	movs	r0, #0
 800151c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800151e:	4620      	mov	r0, r4
 8001520:	f000 f892 	bl	8001648 <HAL_TIM_Base_MspInit>
 8001524:	2002      	movs	r0, #2
 8001526:	f640 32ff 	movw	r2, #3071	; 0xbff
 800152a:	6420      	str	r0, [r4, #64]	; 0x40
 800152c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001530:	6820      	ldr	r0, [r4, #0]
 8001532:	6801      	ldr	r1, [r0, #0]
 8001534:	4290      	cmp	r0, r2
 8001536:	dc0f      	bgt.n	8001558 <HAL_TIM_Base_Init+0x50>
 8001538:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800153c:	bf1e      	ittt	ne
 800153e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001542:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001546:	4290      	cmpne	r0, r2
 8001548:	d018      	beq.n	800157c <HAL_TIM_Base_Init+0x74>
 800154a:	f640 0200 	movw	r2, #2048	; 0x800
 800154e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001552:	4290      	cmp	r0, r2
 8001554:	d012      	beq.n	800157c <HAL_TIM_Base_Init+0x74>
 8001556:	e015      	b.n	8001584 <HAL_TIM_Base_Init+0x7c>
 8001558:	f640 4200 	movw	r2, #3072	; 0xc00
 800155c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001560:	4290      	cmp	r0, r2
 8001562:	bf1e      	ittt	ne
 8001564:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001568:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800156c:	4290      	cmpne	r0, r2
 800156e:	d005      	beq.n	800157c <HAL_TIM_Base_Init+0x74>
 8001570:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001574:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001578:	4290      	cmp	r0, r2
 800157a:	d103      	bne.n	8001584 <HAL_TIM_Base_Init+0x7c>
 800157c:	68a2      	ldr	r2, [r4, #8]
 800157e:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001582:	4311      	orrs	r1, r2
 8001584:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001588:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800158c:	4290      	cmp	r0, r2
 800158e:	dd14      	ble.n	80015ba <HAL_TIM_Base_Init+0xb2>
 8001590:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001594:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001598:	4290      	cmp	r0, r2
 800159a:	dd1a      	ble.n	80015d2 <HAL_TIM_Base_Init+0xca>
 800159c:	f244 0200 	movw	r2, #16384	; 0x4000
 80015a0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a4:	4290      	cmp	r0, r2
 80015a6:	bf1e      	ittt	ne
 80015a8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015ac:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015b0:	4290      	cmpne	r0, r2
 80015b2:	d027      	beq.n	8001604 <HAL_TIM_Base_Init+0xfc>
 80015b4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015b8:	e013      	b.n	80015e2 <HAL_TIM_Base_Init+0xda>
 80015ba:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015be:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015c2:	4290      	cmp	r0, r2
 80015c4:	dc12      	bgt.n	80015ec <HAL_TIM_Base_Init+0xe4>
 80015c6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015ca:	d01b      	beq.n	8001604 <HAL_TIM_Base_Init+0xfc>
 80015cc:	f240 4200 	movw	r2, #1024	; 0x400
 80015d0:	e014      	b.n	80015fc <HAL_TIM_Base_Init+0xf4>
 80015d2:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015d6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015da:	4290      	cmp	r0, r2
 80015dc:	d012      	beq.n	8001604 <HAL_TIM_Base_Init+0xfc>
 80015de:	f243 4200 	movw	r2, #13312	; 0x3400
 80015e2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015e6:	4290      	cmp	r0, r2
 80015e8:	d00c      	beq.n	8001604 <HAL_TIM_Base_Init+0xfc>
 80015ea:	e00f      	b.n	800160c <HAL_TIM_Base_Init+0x104>
 80015ec:	f640 0200 	movw	r2, #2048	; 0x800
 80015f0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f4:	4290      	cmp	r0, r2
 80015f6:	d005      	beq.n	8001604 <HAL_TIM_Base_Init+0xfc>
 80015f8:	f640 4200 	movw	r2, #3072	; 0xc00
 80015fc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001600:	4290      	cmp	r0, r2
 8001602:	d103      	bne.n	800160c <HAL_TIM_Base_Init+0x104>
 8001604:	6922      	ldr	r2, [r4, #16]
 8001606:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800160a:	4311      	orrs	r1, r2
 800160c:	69a2      	ldr	r2, [r4, #24]
 800160e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001612:	4311      	orrs	r1, r2
 8001614:	6001      	str	r1, [r0, #0]
 8001616:	68e1      	ldr	r1, [r4, #12]
 8001618:	62c1      	str	r1, [r0, #44]	; 0x2c
 800161a:	6861      	ldr	r1, [r4, #4]
 800161c:	6281      	str	r1, [r0, #40]	; 0x28
 800161e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001622:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001626:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800162a:	2907      	cmp	r1, #7
 800162c:	d807      	bhi.n	800163e <HAL_TIM_Base_Init+0x136>
 800162e:	2201      	movs	r2, #1
 8001630:	fa02 f101 	lsl.w	r1, r2, r1
 8001634:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001638:	bf1c      	itt	ne
 800163a:	6961      	ldrne	r1, [r4, #20]
 800163c:	6301      	strne	r1, [r0, #48]	; 0x30
 800163e:	2101      	movs	r1, #1
 8001640:	6141      	str	r1, [r0, #20]
 8001642:	2000      	movs	r0, #0
 8001644:	6421      	str	r1, [r4, #64]	; 0x40
 8001646:	bdd0      	pop	{r4, r6, r7, pc}

08001648 <HAL_TIM_Base_MspInit>:
 8001648:	4770      	bx	lr

0800164a <HAL_TIM_Base_Start_IT>:
 800164a:	6800      	ldr	r0, [r0, #0]
 800164c:	68c1      	ldr	r1, [r0, #12]
 800164e:	f041 0101 	orr.w	r1, r1, #1
 8001652:	60c1      	str	r1, [r0, #12]
 8001654:	2107      	movs	r1, #7
 8001656:	6882      	ldr	r2, [r0, #8]
 8001658:	f2c0 0101 	movt	r1, #1
 800165c:	400a      	ands	r2, r1
 800165e:	2a06      	cmp	r2, #6
 8001660:	d008      	beq.n	8001674 <HAL_TIM_Base_Start_IT+0x2a>
 8001662:	6882      	ldr	r2, [r0, #8]
 8001664:	4011      	ands	r1, r2
 8001666:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800166a:	bf1e      	ittt	ne
 800166c:	6801      	ldrne	r1, [r0, #0]
 800166e:	f041 0101 	orrne.w	r1, r1, #1
 8001672:	6001      	strne	r1, [r0, #0]
 8001674:	2000      	movs	r0, #0
 8001676:	4770      	bx	lr

08001678 <HAL_TIM_IRQHandler>:
 8001678:	b5d0      	push	{r4, r6, r7, lr}
 800167a:	af02      	add	r7, sp, #8
 800167c:	4604      	mov	r4, r0
 800167e:	6820      	ldr	r0, [r4, #0]
 8001680:	6901      	ldr	r1, [r0, #16]
 8001682:	f011 0f02 	tst.w	r1, #2
 8001686:	bf1c      	itt	ne
 8001688:	68c1      	ldrne	r1, [r0, #12]
 800168a:	f011 0f02 	tstne.w	r1, #2
 800168e:	d015      	beq.n	80016bc <HAL_TIM_IRQHandler+0x44>
 8001690:	f06f 0102 	mvn.w	r1, #2
 8001694:	6101      	str	r1, [r0, #16]
 8001696:	2101      	movs	r1, #1
 8001698:	61e1      	str	r1, [r4, #28]
 800169a:	6980      	ldr	r0, [r0, #24]
 800169c:	f010 0f03 	tst.w	r0, #3
 80016a0:	d003      	beq.n	80016aa <HAL_TIM_IRQHandler+0x32>
 80016a2:	4620      	mov	r0, r4
 80016a4:	f000 f8b1 	bl	800180a <HAL_TIM_IC_CaptureCallback>
 80016a8:	e005      	b.n	80016b6 <HAL_TIM_IRQHandler+0x3e>
 80016aa:	4620      	mov	r0, r4
 80016ac:	f000 f8ae 	bl	800180c <HAL_TIM_OC_DelayElapsedCallback>
 80016b0:	4620      	mov	r0, r4
 80016b2:	f000 f8ac 	bl	800180e <HAL_TIM_PWM_PulseFinishedCallback>
 80016b6:	2000      	movs	r0, #0
 80016b8:	61e0      	str	r0, [r4, #28]
 80016ba:	6820      	ldr	r0, [r4, #0]
 80016bc:	6901      	ldr	r1, [r0, #16]
 80016be:	f011 0f04 	tst.w	r1, #4
 80016c2:	bf1c      	itt	ne
 80016c4:	68c1      	ldrne	r1, [r0, #12]
 80016c6:	f011 0f04 	tstne.w	r1, #4
 80016ca:	d015      	beq.n	80016f8 <HAL_TIM_IRQHandler+0x80>
 80016cc:	f06f 0104 	mvn.w	r1, #4
 80016d0:	6101      	str	r1, [r0, #16]
 80016d2:	2102      	movs	r1, #2
 80016d4:	61e1      	str	r1, [r4, #28]
 80016d6:	6980      	ldr	r0, [r0, #24]
 80016d8:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016dc:	d003      	beq.n	80016e6 <HAL_TIM_IRQHandler+0x6e>
 80016de:	4620      	mov	r0, r4
 80016e0:	f000 f893 	bl	800180a <HAL_TIM_IC_CaptureCallback>
 80016e4:	e005      	b.n	80016f2 <HAL_TIM_IRQHandler+0x7a>
 80016e6:	4620      	mov	r0, r4
 80016e8:	f000 f890 	bl	800180c <HAL_TIM_OC_DelayElapsedCallback>
 80016ec:	4620      	mov	r0, r4
 80016ee:	f000 f88e 	bl	800180e <HAL_TIM_PWM_PulseFinishedCallback>
 80016f2:	2000      	movs	r0, #0
 80016f4:	61e0      	str	r0, [r4, #28]
 80016f6:	6820      	ldr	r0, [r4, #0]
 80016f8:	6901      	ldr	r1, [r0, #16]
 80016fa:	f011 0f08 	tst.w	r1, #8
 80016fe:	bf1c      	itt	ne
 8001700:	68c1      	ldrne	r1, [r0, #12]
 8001702:	f011 0f08 	tstne.w	r1, #8
 8001706:	d015      	beq.n	8001734 <HAL_TIM_IRQHandler+0xbc>
 8001708:	f06f 0108 	mvn.w	r1, #8
 800170c:	6101      	str	r1, [r0, #16]
 800170e:	2104      	movs	r1, #4
 8001710:	61e1      	str	r1, [r4, #28]
 8001712:	69c0      	ldr	r0, [r0, #28]
 8001714:	f010 0f03 	tst.w	r0, #3
 8001718:	d003      	beq.n	8001722 <HAL_TIM_IRQHandler+0xaa>
 800171a:	4620      	mov	r0, r4
 800171c:	f000 f875 	bl	800180a <HAL_TIM_IC_CaptureCallback>
 8001720:	e005      	b.n	800172e <HAL_TIM_IRQHandler+0xb6>
 8001722:	4620      	mov	r0, r4
 8001724:	f000 f872 	bl	800180c <HAL_TIM_OC_DelayElapsedCallback>
 8001728:	4620      	mov	r0, r4
 800172a:	f000 f870 	bl	800180e <HAL_TIM_PWM_PulseFinishedCallback>
 800172e:	2000      	movs	r0, #0
 8001730:	61e0      	str	r0, [r4, #28]
 8001732:	6820      	ldr	r0, [r4, #0]
 8001734:	6901      	ldr	r1, [r0, #16]
 8001736:	f011 0f10 	tst.w	r1, #16
 800173a:	bf1c      	itt	ne
 800173c:	68c1      	ldrne	r1, [r0, #12]
 800173e:	f011 0f10 	tstne.w	r1, #16
 8001742:	d015      	beq.n	8001770 <HAL_TIM_IRQHandler+0xf8>
 8001744:	f06f 0110 	mvn.w	r1, #16
 8001748:	6101      	str	r1, [r0, #16]
 800174a:	2108      	movs	r1, #8
 800174c:	61e1      	str	r1, [r4, #28]
 800174e:	69c0      	ldr	r0, [r0, #28]
 8001750:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001754:	d003      	beq.n	800175e <HAL_TIM_IRQHandler+0xe6>
 8001756:	4620      	mov	r0, r4
 8001758:	f000 f857 	bl	800180a <HAL_TIM_IC_CaptureCallback>
 800175c:	e005      	b.n	800176a <HAL_TIM_IRQHandler+0xf2>
 800175e:	4620      	mov	r0, r4
 8001760:	f000 f854 	bl	800180c <HAL_TIM_OC_DelayElapsedCallback>
 8001764:	4620      	mov	r0, r4
 8001766:	f000 f852 	bl	800180e <HAL_TIM_PWM_PulseFinishedCallback>
 800176a:	2000      	movs	r0, #0
 800176c:	61e0      	str	r0, [r4, #28]
 800176e:	6820      	ldr	r0, [r4, #0]
 8001770:	6901      	ldr	r1, [r0, #16]
 8001772:	f011 0f01 	tst.w	r1, #1
 8001776:	bf1c      	itt	ne
 8001778:	68c1      	ldrne	r1, [r0, #12]
 800177a:	f011 0f01 	tstne.w	r1, #1
 800177e:	d006      	beq.n	800178e <HAL_TIM_IRQHandler+0x116>
 8001780:	f06f 0101 	mvn.w	r1, #1
 8001784:	6101      	str	r1, [r0, #16]
 8001786:	4620      	mov	r0, r4
 8001788:	f000 f894 	bl	80018b4 <HAL_TIM_PeriodElapsedCallback>
 800178c:	6820      	ldr	r0, [r4, #0]
 800178e:	6901      	ldr	r1, [r0, #16]
 8001790:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001794:	bf1c      	itt	ne
 8001796:	68c1      	ldrne	r1, [r0, #12]
 8001798:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800179c:	d006      	beq.n	80017ac <HAL_TIM_IRQHandler+0x134>
 800179e:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017a2:	6101      	str	r1, [r0, #16]
 80017a4:	4620      	mov	r0, r4
 80017a6:	f000 f835 	bl	8001814 <HAL_TIMEx_BreakCallback>
 80017aa:	6820      	ldr	r0, [r4, #0]
 80017ac:	6901      	ldr	r1, [r0, #16]
 80017ae:	f411 7f80 	tst.w	r1, #256	; 0x100
 80017b2:	bf1c      	itt	ne
 80017b4:	68c1      	ldrne	r1, [r0, #12]
 80017b6:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017ba:	d006      	beq.n	80017ca <HAL_TIM_IRQHandler+0x152>
 80017bc:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017c0:	6101      	str	r1, [r0, #16]
 80017c2:	4620      	mov	r0, r4
 80017c4:	f000 f827 	bl	8001816 <HAL_TIMEx_Break2Callback>
 80017c8:	6820      	ldr	r0, [r4, #0]
 80017ca:	6901      	ldr	r1, [r0, #16]
 80017cc:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017d0:	bf1c      	itt	ne
 80017d2:	68c1      	ldrne	r1, [r0, #12]
 80017d4:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017d8:	d006      	beq.n	80017e8 <HAL_TIM_IRQHandler+0x170>
 80017da:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017de:	6101      	str	r1, [r0, #16]
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f815 	bl	8001810 <HAL_TIM_TriggerCallback>
 80017e6:	6820      	ldr	r0, [r4, #0]
 80017e8:	6901      	ldr	r1, [r0, #16]
 80017ea:	f011 0f20 	tst.w	r1, #32
 80017ee:	bf1c      	itt	ne
 80017f0:	68c1      	ldrne	r1, [r0, #12]
 80017f2:	f011 0f20 	tstne.w	r1, #32
 80017f6:	d100      	bne.n	80017fa <HAL_TIM_IRQHandler+0x182>
 80017f8:	bdd0      	pop	{r4, r6, r7, pc}
 80017fa:	f06f 0120 	mvn.w	r1, #32
 80017fe:	6101      	str	r1, [r0, #16]
 8001800:	4620      	mov	r0, r4
 8001802:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001806:	f000 b804 	b.w	8001812 <HAL_TIMEx_CommutationCallback>

0800180a <HAL_TIM_IC_CaptureCallback>:
 800180a:	4770      	bx	lr

0800180c <HAL_TIM_OC_DelayElapsedCallback>:
 800180c:	4770      	bx	lr

0800180e <HAL_TIM_PWM_PulseFinishedCallback>:
 800180e:	4770      	bx	lr

08001810 <HAL_TIM_TriggerCallback>:
 8001810:	4770      	bx	lr

08001812 <HAL_TIMEx_CommutationCallback>:
 8001812:	4770      	bx	lr

08001814 <HAL_TIMEx_BreakCallback>:
 8001814:	4770      	bx	lr

08001816 <HAL_TIMEx_Break2Callback>:
 8001816:	4770      	bx	lr

08001818 <HAL_InitTick>:
 8001818:	b5b0      	push	{r4, r5, r7, lr}
 800181a:	af02      	add	r7, sp, #8
 800181c:	b086      	sub	sp, #24
 800181e:	4601      	mov	r1, r0
 8001820:	2036      	movs	r0, #54	; 0x36
 8001822:	2200      	movs	r2, #0
 8001824:	2400      	movs	r4, #0
 8001826:	f7ff fc99 	bl	800115c <HAL_NVIC_SetPriority>
 800182a:	2036      	movs	r0, #54	; 0x36
 800182c:	f7ff fcc9 	bl	80011c2 <HAL_NVIC_EnableIRQ>
 8001830:	f241 0058 	movw	r0, #4184	; 0x1058
 8001834:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001838:	6801      	ldr	r1, [r0, #0]
 800183a:	f041 0110 	orr.w	r1, r1, #16
 800183e:	6001      	str	r1, [r0, #0]
 8001840:	4669      	mov	r1, sp
 8001842:	6800      	ldr	r0, [r0, #0]
 8001844:	f000 0010 	and.w	r0, r0, #16
 8001848:	9001      	str	r0, [sp, #4]
 800184a:	9801      	ldr	r0, [sp, #4]
 800184c:	a801      	add	r0, sp, #4
 800184e:	f7ff fe3a 	bl	80014c6 <HAL_RCC_GetClockConfig>
 8001852:	9d04      	ldr	r5, [sp, #16]
 8001854:	f7ff fe0d 	bl	8001472 <HAL_RCC_GetPCLK1Freq>
 8001858:	2d00      	cmp	r5, #0
 800185a:	f640 21a4 	movw	r1, #2724	; 0xaa4
 800185e:	f241 0200 	movw	r2, #4096	; 0x1000
 8001862:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001866:	bf18      	it	ne
 8001868:	2501      	movne	r5, #1
 800186a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800186e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001872:	40a8      	lsls	r0, r5
 8001874:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001878:	618c      	str	r4, [r1, #24]
 800187a:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800187e:	fba0 0505 	umull	r0, r5, r0, r5
 8001882:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001886:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 800188a:	e9c1 2000 	strd	r2, r0, [r1]
 800188e:	4608      	mov	r0, r1
 8001890:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001894:	610c      	str	r4, [r1, #16]
 8001896:	f7ff fe37 	bl	8001508 <HAL_TIM_Base_Init>
 800189a:	2800      	cmp	r0, #0
 800189c:	bf1e      	ittt	ne
 800189e:	2001      	movne	r0, #1
 80018a0:	b006      	addne	sp, #24
 80018a2:	bdb0      	popne	{r4, r5, r7, pc}
 80018a4:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80018a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018ac:	f7ff fecd 	bl	800164a <HAL_TIM_Base_Start_IT>
 80018b0:	b006      	add	sp, #24
 80018b2:	bdb0      	pop	{r4, r5, r7, pc}

080018b4 <HAL_TIM_PeriodElapsedCallback>:
 80018b4:	f7ff bc34 	b.w	8001120 <HAL_IncTick>

080018b8 <TIM6_DAC_IRQHandler>:
 80018b8:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80018bc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018c0:	f7ff beda 	b.w	8001678 <HAL_TIM_IRQHandler>

080018c4 <HAL_UART_Init>:
 80018c4:	b5d0      	push	{r4, r6, r7, lr}
 80018c6:	af02      	add	r7, sp, #8
 80018c8:	4604      	mov	r4, r0
 80018ca:	b194      	cbz	r4, 80018f2 <HAL_UART_Init+0x2e>
 80018cc:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018ce:	b920      	cbnz	r0, 80018da <HAL_UART_Init+0x16>
 80018d0:	2000      	movs	r0, #0
 80018d2:	6720      	str	r0, [r4, #112]	; 0x70
 80018d4:	4620      	mov	r0, r4
 80018d6:	f000 f826 	bl	8001926 <HAL_UART_MspInit>
 80018da:	2024      	movs	r0, #36	; 0x24
 80018dc:	6760      	str	r0, [r4, #116]	; 0x74
 80018de:	6820      	ldr	r0, [r4, #0]
 80018e0:	6801      	ldr	r1, [r0, #0]
 80018e2:	f021 0101 	bic.w	r1, r1, #1
 80018e6:	6001      	str	r1, [r0, #0]
 80018e8:	4620      	mov	r0, r4
 80018ea:	f000 f81d 	bl	8001928 <UART_SetConfig>
 80018ee:	2801      	cmp	r0, #1
 80018f0:	d101      	bne.n	80018f6 <HAL_UART_Init+0x32>
 80018f2:	2001      	movs	r0, #1
 80018f4:	bdd0      	pop	{r4, r6, r7, pc}
 80018f6:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018f8:	2800      	cmp	r0, #0
 80018fa:	bf1c      	itt	ne
 80018fc:	4620      	movne	r0, r4
 80018fe:	f000 f944 	blne	8001b8a <UART_AdvFeatureConfig>
 8001902:	6820      	ldr	r0, [r4, #0]
 8001904:	6841      	ldr	r1, [r0, #4]
 8001906:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 800190a:	6041      	str	r1, [r0, #4]
 800190c:	6881      	ldr	r1, [r0, #8]
 800190e:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001912:	6081      	str	r1, [r0, #8]
 8001914:	6801      	ldr	r1, [r0, #0]
 8001916:	f041 0101 	orr.w	r1, r1, #1
 800191a:	6001      	str	r1, [r0, #0]
 800191c:	4620      	mov	r0, r4
 800191e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001922:	f000 b99d 	b.w	8001c60 <UART_CheckIdleState>

08001926 <HAL_UART_MspInit>:
 8001926:	4770      	bx	lr

08001928 <UART_SetConfig>:
 8001928:	b5b0      	push	{r4, r5, r7, lr}
 800192a:	af02      	add	r7, sp, #8
 800192c:	4604      	mov	r4, r0
 800192e:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001932:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001936:	f241 0c88 	movw	ip, #4232	; 0x1088
 800193a:	6821      	ldr	r1, [r4, #0]
 800193c:	68a0      	ldr	r0, [r4, #8]
 800193e:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001942:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001946:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 800194a:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 800194e:	4310      	orrs	r0, r2
 8001950:	69e2      	ldr	r2, [r4, #28]
 8001952:	4571      	cmp	r1, lr
 8001954:	ea40 0003 	orr.w	r0, r0, r3
 8001958:	680b      	ldr	r3, [r1, #0]
 800195a:	ea40 0002 	orr.w	r0, r0, r2
 800195e:	ea03 0305 	and.w	r3, r3, r5
 8001962:	f04f 0510 	mov.w	r5, #16
 8001966:	ea40 0003 	orr.w	r0, r0, r3
 800196a:	6008      	str	r0, [r1, #0]
 800196c:	6848      	ldr	r0, [r1, #4]
 800196e:	68e3      	ldr	r3, [r4, #12]
 8001970:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001974:	ea40 0003 	orr.w	r0, r0, r3
 8001978:	6048      	str	r0, [r1, #4]
 800197a:	69a0      	ldr	r0, [r4, #24]
 800197c:	bf1c      	itt	ne
 800197e:	6a23      	ldrne	r3, [r4, #32]
 8001980:	4318      	orrne	r0, r3
 8001982:	688b      	ldr	r3, [r1, #8]
 8001984:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001988:	4318      	orrs	r0, r3
 800198a:	f644 73ff 	movw	r3, #20479	; 0x4fff
 800198e:	6088      	str	r0, [r1, #8]
 8001990:	f242 4000 	movw	r0, #9216	; 0x2400
 8001994:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001998:	f2c0 00f4 	movt	r0, #244	; 0xf4
 800199c:	4299      	cmp	r1, r3
 800199e:	dc15      	bgt.n	80019cc <UART_SetConfig+0xa4>
 80019a0:	f244 4300 	movw	r3, #17408	; 0x4400
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	4299      	cmp	r1, r3
 80019aa:	d024      	beq.n	80019f6 <UART_SetConfig+0xce>
 80019ac:	f644 0300 	movw	r3, #18432	; 0x4800
 80019b0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019b4:	4299      	cmp	r1, r3
 80019b6:	d022      	beq.n	80019fe <UART_SetConfig+0xd6>
 80019b8:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019bc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019c0:	4299      	cmp	r1, r3
 80019c2:	d131      	bne.n	8001a28 <UART_SetConfig+0x100>
 80019c4:	f8dc 3000 	ldr.w	r3, [ip]
 80019c8:	099d      	lsrs	r5, r3, #6
 80019ca:	e023      	b.n	8001a14 <UART_SetConfig+0xec>
 80019cc:	f245 0300 	movw	r3, #20480	; 0x5000
 80019d0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019d4:	4299      	cmp	r1, r3
 80019d6:	d016      	beq.n	8001a06 <UART_SetConfig+0xde>
 80019d8:	4571      	cmp	r1, lr
 80019da:	d018      	beq.n	8001a0e <UART_SetConfig+0xe6>
 80019dc:	f643 0300 	movw	r3, #14336	; 0x3800
 80019e0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019e4:	4299      	cmp	r1, r3
 80019e6:	d11f      	bne.n	8001a28 <UART_SetConfig+0x100>
 80019e8:	f8dc 5000 	ldr.w	r5, [ip]
 80019ec:	f649 4338 	movw	r3, #39992	; 0x9c38
 80019f0:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019f4:	e012      	b.n	8001a1c <UART_SetConfig+0xf4>
 80019f6:	f8dc 3000 	ldr.w	r3, [ip]
 80019fa:	089d      	lsrs	r5, r3, #2
 80019fc:	e00a      	b.n	8001a14 <UART_SetConfig+0xec>
 80019fe:	f8dc 3000 	ldr.w	r3, [ip]
 8001a02:	091d      	lsrs	r5, r3, #4
 8001a04:	e006      	b.n	8001a14 <UART_SetConfig+0xec>
 8001a06:	f8dc 3000 	ldr.w	r3, [ip]
 8001a0a:	0a1d      	lsrs	r5, r3, #8
 8001a0c:	e002      	b.n	8001a14 <UART_SetConfig+0xec>
 8001a0e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a12:	0a9d      	lsrs	r5, r3, #10
 8001a14:	f649 4348 	movw	r3, #40008	; 0x9c48
 8001a18:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a1c:	f005 0503 	and.w	r5, r5, #3
 8001a20:	f085 0502 	eor.w	r5, r5, #2
 8001a24:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a28:	4571      	cmp	r1, lr
 8001a2a:	d012      	beq.n	8001a52 <UART_SetConfig+0x12a>
 8001a2c:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a30:	d11d      	bne.n	8001a6e <UART_SetConfig+0x146>
 8001a32:	f005 001f 	and.w	r0, r5, #31
 8001a36:	2101      	movs	r1, #1
 8001a38:	2808      	cmp	r0, #8
 8001a3a:	f200 809f 	bhi.w	8001b7c <UART_SetConfig+0x254>
 8001a3e:	e8df f000 	tbb	[pc, r0]
 8001a42:	4005      	.short	0x4005
 8001a44:	9d499d43 	.word	0x9d499d43
 8001a48:	004f9d9d 	.word	0x004f9d9d
 8001a4c:	f7ff fd11 	bl	8001472 <HAL_RCC_GetPCLK1Freq>
 8001a50:	e042      	b.n	8001ad8 <UART_SetConfig+0x1b0>
 8001a52:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a56:	2101      	movs	r1, #1
 8001a58:	2d04      	cmp	r5, #4
 8001a5a:	f200 808f 	bhi.w	8001b7c <UART_SetConfig+0x254>
 8001a5e:	e8df f005 	tbb	[pc, r5]
 8001a62:	1c03      	.short	0x1c03
 8001a64:	001a8d16 	.word	0x001a8d16
 8001a68:	f7ff fd03 	bl	8001472 <HAL_RCC_GetPCLK1Freq>
 8001a6c:	e011      	b.n	8001a92 <UART_SetConfig+0x16a>
 8001a6e:	f005 021f 	and.w	r2, r5, #31
 8001a72:	2101      	movs	r1, #1
 8001a74:	2a08      	cmp	r2, #8
 8001a76:	f200 8081 	bhi.w	8001b7c <UART_SetConfig+0x254>
 8001a7a:	e8df f002 	tbb	[pc, r2]
 8001a7e:	4305      	.short	0x4305
 8001a80:	7f487f46 	.word	0x7f487f46
 8001a84:	004e7f7f 	.word	0x004e7f7f
 8001a88:	f7ff fcf3 	bl	8001472 <HAL_RCC_GetPCLK1Freq>
 8001a8c:	e041      	b.n	8001b12 <UART_SetConfig+0x1ea>
 8001a8e:	f7ff fc91 	bl	80013b4 <HAL_RCC_GetSysClockFreq>
 8001a92:	b910      	cbnz	r0, 8001a9a <UART_SetConfig+0x172>
 8001a94:	e071      	b.n	8001b7a <UART_SetConfig+0x252>
 8001a96:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a9a:	6862      	ldr	r2, [r4, #4]
 8001a9c:	2101      	movs	r1, #1
 8001a9e:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001aa2:	4298      	cmp	r0, r3
 8001aa4:	d36a      	bcc.n	8001b7c <UART_SetConfig+0x254>
 8001aa6:	0313      	lsls	r3, r2, #12
 8001aa8:	4298      	cmp	r0, r3
 8001aaa:	bf9c      	itt	ls
 8001aac:	2101      	movls	r1, #1
 8001aae:	2d04      	cmpls	r5, #4
 8001ab0:	d864      	bhi.n	8001b7c <UART_SetConfig+0x254>
 8001ab2:	e8df f005 	tbb	[pc, r5]
 8001ab6:	3e03      	.short	0x3e03
 8001ab8:	00526345 	.word	0x00526345
 8001abc:	f7ff fcd9 	bl	8001472 <HAL_RCC_GetPCLK1Freq>
 8001ac0:	e040      	b.n	8001b44 <UART_SetConfig+0x21c>
 8001ac2:	f7ff fceb 	bl	800149c <HAL_RCC_GetPCLK2Freq>
 8001ac6:	e007      	b.n	8001ad8 <UART_SetConfig+0x1b0>
 8001ac8:	6861      	ldr	r1, [r4, #4]
 8001aca:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ace:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001ad2:	e008      	b.n	8001ae6 <UART_SetConfig+0x1be>
 8001ad4:	f7ff fc6e 	bl	80013b4 <HAL_RCC_GetSysClockFreq>
 8001ad8:	6861      	ldr	r1, [r4, #4]
 8001ada:	0040      	lsls	r0, r0, #1
 8001adc:	084a      	lsrs	r2, r1, #1
 8001ade:	e003      	b.n	8001ae8 <UART_SetConfig+0x1c0>
 8001ae0:	6861      	ldr	r1, [r4, #4]
 8001ae2:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ae6:	0848      	lsrs	r0, r1, #1
 8001ae8:	4410      	add	r0, r2
 8001aea:	fbb0 f0f1 	udiv	r0, r0, r1
 8001aee:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001af2:	4001      	ands	r1, r0
 8001af4:	2910      	cmp	r1, #16
 8001af6:	d303      	bcc.n	8001b00 <UART_SetConfig+0x1d8>
 8001af8:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001afc:	4308      	orrs	r0, r1
 8001afe:	e03a      	b.n	8001b76 <UART_SetConfig+0x24e>
 8001b00:	2101      	movs	r1, #1
 8001b02:	e03b      	b.n	8001b7c <UART_SetConfig+0x254>
 8001b04:	f7ff fcca 	bl	800149c <HAL_RCC_GetPCLK2Freq>
 8001b08:	e003      	b.n	8001b12 <UART_SetConfig+0x1ea>
 8001b0a:	6862      	ldr	r2, [r4, #4]
 8001b0c:	e008      	b.n	8001b20 <UART_SetConfig+0x1f8>
 8001b0e:	f7ff fc51 	bl	80013b4 <HAL_RCC_GetSysClockFreq>
 8001b12:	6862      	ldr	r2, [r4, #4]
 8001b14:	4601      	mov	r1, r0
 8001b16:	0850      	lsrs	r0, r2, #1
 8001b18:	e003      	b.n	8001b22 <UART_SetConfig+0x1fa>
 8001b1a:	6862      	ldr	r2, [r4, #4]
 8001b1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b20:	0851      	lsrs	r1, r2, #1
 8001b22:	4408      	add	r0, r1
 8001b24:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b28:	b280      	uxth	r0, r0
 8001b2a:	2810      	cmp	r0, #16
 8001b2c:	d223      	bcs.n	8001b76 <UART_SetConfig+0x24e>
 8001b2e:	2101      	movs	r1, #1
 8001b30:	e024      	b.n	8001b7c <UART_SetConfig+0x254>
 8001b32:	2000      	movs	r0, #0
 8001b34:	2100      	movs	r1, #0
 8001b36:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b3a:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b3e:	e006      	b.n	8001b4e <UART_SetConfig+0x226>
 8001b40:	f7ff fc38 	bl	80013b4 <HAL_RCC_GetSysClockFreq>
 8001b44:	6862      	ldr	r2, [r4, #4]
 8001b46:	0e01      	lsrs	r1, r0, #24
 8001b48:	0853      	lsrs	r3, r2, #1
 8001b4a:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b4e:	f141 0100 	adc.w	r1, r1, #0
 8001b52:	2300      	movs	r3, #0
 8001b54:	f7fe ffe8 	bl	8000b28 <__aeabi_uldivmod>
 8001b58:	e005      	b.n	8001b66 <UART_SetConfig+0x23e>
 8001b5a:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b5e:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b62:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b66:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b6a:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b6e:	f2c0 020f 	movt	r2, #15
 8001b72:	4291      	cmp	r1, r2
 8001b74:	d807      	bhi.n	8001b86 <UART_SetConfig+0x25e>
 8001b76:	6821      	ldr	r1, [r4, #0]
 8001b78:	60c8      	str	r0, [r1, #12]
 8001b7a:	2100      	movs	r1, #0
 8001b7c:	2000      	movs	r0, #0
 8001b7e:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b82:	4608      	mov	r0, r1
 8001b84:	bdb0      	pop	{r4, r5, r7, pc}
 8001b86:	2101      	movs	r1, #1
 8001b88:	e7f8      	b.n	8001b7c <UART_SetConfig+0x254>

08001b8a <UART_AdvFeatureConfig>:
 8001b8a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b8c:	f011 0f01 	tst.w	r1, #1
 8001b90:	d008      	beq.n	8001ba4 <UART_AdvFeatureConfig+0x1a>
 8001b92:	6802      	ldr	r2, [r0, #0]
 8001b94:	6853      	ldr	r3, [r2, #4]
 8001b96:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b9a:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001b9e:	ea43 030c 	orr.w	r3, r3, ip
 8001ba2:	6053      	str	r3, [r2, #4]
 8001ba4:	078a      	lsls	r2, r1, #30
 8001ba6:	d508      	bpl.n	8001bba <UART_AdvFeatureConfig+0x30>
 8001ba8:	6802      	ldr	r2, [r0, #0]
 8001baa:	6853      	ldr	r3, [r2, #4]
 8001bac:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001bb0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001bb4:	ea43 030c 	orr.w	r3, r3, ip
 8001bb8:	6053      	str	r3, [r2, #4]
 8001bba:	074a      	lsls	r2, r1, #29
 8001bbc:	d508      	bpl.n	8001bd0 <UART_AdvFeatureConfig+0x46>
 8001bbe:	6802      	ldr	r2, [r0, #0]
 8001bc0:	6853      	ldr	r3, [r2, #4]
 8001bc2:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bc6:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bca:	ea43 030c 	orr.w	r3, r3, ip
 8001bce:	6053      	str	r3, [r2, #4]
 8001bd0:	070a      	lsls	r2, r1, #28
 8001bd2:	d508      	bpl.n	8001be6 <UART_AdvFeatureConfig+0x5c>
 8001bd4:	6802      	ldr	r2, [r0, #0]
 8001bd6:	6853      	ldr	r3, [r2, #4]
 8001bd8:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bdc:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001be0:	ea43 030c 	orr.w	r3, r3, ip
 8001be4:	6053      	str	r3, [r2, #4]
 8001be6:	06ca      	lsls	r2, r1, #27
 8001be8:	d508      	bpl.n	8001bfc <UART_AdvFeatureConfig+0x72>
 8001bea:	6802      	ldr	r2, [r0, #0]
 8001bec:	6893      	ldr	r3, [r2, #8]
 8001bee:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bf2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001bf6:	ea43 030c 	orr.w	r3, r3, ip
 8001bfa:	6093      	str	r3, [r2, #8]
 8001bfc:	068a      	lsls	r2, r1, #26
 8001bfe:	d508      	bpl.n	8001c12 <UART_AdvFeatureConfig+0x88>
 8001c00:	6802      	ldr	r2, [r0, #0]
 8001c02:	6893      	ldr	r3, [r2, #8]
 8001c04:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c08:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c0c:	ea43 030c 	orr.w	r3, r3, ip
 8001c10:	6093      	str	r3, [r2, #8]
 8001c12:	b580      	push	{r7, lr}
 8001c14:	466f      	mov	r7, sp
 8001c16:	064a      	lsls	r2, r1, #25
 8001c18:	d515      	bpl.n	8001c46 <UART_AdvFeatureConfig+0xbc>
 8001c1a:	f8d0 e000 	ldr.w	lr, [r0]
 8001c1e:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c22:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c24:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c28:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c2c:	ea42 0203 	orr.w	r2, r2, r3
 8001c30:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c34:	d107      	bne.n	8001c46 <UART_AdvFeatureConfig+0xbc>
 8001c36:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c3a:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c3c:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c40:	431a      	orrs	r2, r3
 8001c42:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c46:	0609      	lsls	r1, r1, #24
 8001c48:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c4c:	bf58      	it	pl
 8001c4e:	4770      	bxpl	lr
 8001c50:	6801      	ldr	r1, [r0, #0]
 8001c52:	684a      	ldr	r2, [r1, #4]
 8001c54:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c56:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c5a:	4310      	orrs	r0, r2
 8001c5c:	6048      	str	r0, [r1, #4]
 8001c5e:	4770      	bx	lr

08001c60 <UART_CheckIdleState>:
 8001c60:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c62:	af03      	add	r7, sp, #12
 8001c64:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c68:	4604      	mov	r4, r0
 8001c6a:	2000      	movs	r0, #0
 8001c6c:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c6e:	f7ff fa5f 	bl	8001130 <HAL_GetTick>
 8001c72:	4605      	mov	r5, r0
 8001c74:	6820      	ldr	r0, [r4, #0]
 8001c76:	6801      	ldr	r1, [r0, #0]
 8001c78:	f011 0f08 	tst.w	r1, #8
 8001c7c:	d00f      	beq.n	8001c9e <UART_CheckIdleState+0x3e>
 8001c7e:	69c1      	ldr	r1, [r0, #28]
 8001c80:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c84:	d10b      	bne.n	8001c9e <UART_CheckIdleState+0x3e>
 8001c86:	2600      	movs	r6, #0
 8001c88:	f7ff fa52 	bl	8001130 <HAL_GetTick>
 8001c8c:	1b41      	subs	r1, r0, r5
 8001c8e:	6820      	ldr	r0, [r4, #0]
 8001c90:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c94:	d11b      	bne.n	8001cce <UART_CheckIdleState+0x6e>
 8001c96:	69c1      	ldr	r1, [r0, #28]
 8001c98:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c9c:	d0f4      	beq.n	8001c88 <UART_CheckIdleState+0x28>
 8001c9e:	6801      	ldr	r1, [r0, #0]
 8001ca0:	f011 0f04 	tst.w	r1, #4
 8001ca4:	d101      	bne.n	8001caa <UART_CheckIdleState+0x4a>
 8001ca6:	2600      	movs	r6, #0
 8001ca8:	e01a      	b.n	8001ce0 <UART_CheckIdleState+0x80>
 8001caa:	69c0      	ldr	r0, [r0, #28]
 8001cac:	2600      	movs	r6, #0
 8001cae:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb2:	d115      	bne.n	8001ce0 <UART_CheckIdleState+0x80>
 8001cb4:	f7ff fa3c 	bl	8001130 <HAL_GetTick>
 8001cb8:	1b41      	subs	r1, r0, r5
 8001cba:	6820      	ldr	r0, [r4, #0]
 8001cbc:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001cc0:	d105      	bne.n	8001cce <UART_CheckIdleState+0x6e>
 8001cc2:	69c0      	ldr	r0, [r0, #28]
 8001cc4:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cc8:	d0f4      	beq.n	8001cb4 <UART_CheckIdleState+0x54>
 8001cca:	2600      	movs	r6, #0
 8001ccc:	e008      	b.n	8001ce0 <UART_CheckIdleState+0x80>
 8001cce:	6801      	ldr	r1, [r0, #0]
 8001cd0:	2603      	movs	r6, #3
 8001cd2:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cd6:	6001      	str	r1, [r0, #0]
 8001cd8:	6881      	ldr	r1, [r0, #8]
 8001cda:	f021 0101 	bic.w	r1, r1, #1
 8001cde:	6081      	str	r1, [r0, #8]
 8001ce0:	2020      	movs	r0, #32
 8001ce2:	6760      	str	r0, [r4, #116]	; 0x74
 8001ce4:	67a0      	str	r0, [r4, #120]	; 0x78
 8001ce6:	2000      	movs	r0, #0
 8001ce8:	6720      	str	r0, [r4, #112]	; 0x70
 8001cea:	4630      	mov	r0, r6
 8001cec:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cf0:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cf2 <HAL_UART_Transmit>:
 8001cf2:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cf4:	af03      	add	r7, sp, #12
 8001cf6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001cfa:	b081      	sub	sp, #4
 8001cfc:	4604      	mov	r4, r0
 8001cfe:	461d      	mov	r5, r3
 8001d00:	4616      	mov	r6, r2
 8001d02:	4689      	mov	r9, r1
 8001d04:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d06:	2820      	cmp	r0, #32
 8001d08:	d109      	bne.n	8001d1e <HAL_UART_Transmit+0x2c>
 8001d0a:	f1b9 0f00 	cmp.w	r9, #0
 8001d0e:	f04f 0001 	mov.w	r0, #1
 8001d12:	bf18      	it	ne
 8001d14:	2e00      	cmpne	r6, #0
 8001d16:	d003      	beq.n	8001d20 <HAL_UART_Transmit+0x2e>
 8001d18:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d1a:	2801      	cmp	r0, #1
 8001d1c:	d104      	bne.n	8001d28 <HAL_UART_Transmit+0x36>
 8001d1e:	2002      	movs	r0, #2
 8001d20:	b001      	add	sp, #4
 8001d22:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d26:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d28:	2001      	movs	r0, #1
 8001d2a:	6720      	str	r0, [r4, #112]	; 0x70
 8001d2c:	2000      	movs	r0, #0
 8001d2e:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d30:	2021      	movs	r0, #33	; 0x21
 8001d32:	6760      	str	r0, [r4, #116]	; 0x74
 8001d34:	f7ff f9fc 	bl	8001130 <HAL_GetTick>
 8001d38:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d3c:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d40:	4680      	mov	r8, r0
 8001d42:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d46:	f8d4 b000 	ldr.w	fp, [r4]
 8001d4a:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d4e:	2900      	cmp	r1, #0
 8001d50:	d040      	beq.n	8001dd4 <HAL_UART_Transmit+0xe2>
 8001d52:	f105 0a01 	add.w	sl, r5, #1
 8001d56:	0600      	lsls	r0, r0, #24
 8001d58:	d410      	bmi.n	8001d7c <HAL_UART_Transmit+0x8a>
 8001d5a:	465e      	mov	r6, fp
 8001d5c:	f1ba 0f00 	cmp.w	sl, #0
 8001d60:	d007      	beq.n	8001d72 <HAL_UART_Transmit+0x80>
 8001d62:	b33d      	cbz	r5, 8001db4 <HAL_UART_Transmit+0xc2>
 8001d64:	f7ff f9e4 	bl	8001130 <HAL_GetTick>
 8001d68:	6826      	ldr	r6, [r4, #0]
 8001d6a:	eba0 0008 	sub.w	r0, r0, r8
 8001d6e:	42a8      	cmp	r0, r5
 8001d70:	d821      	bhi.n	8001db6 <HAL_UART_Transmit+0xc4>
 8001d72:	69f0      	ldr	r0, [r6, #28]
 8001d74:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d78:	d0f0      	beq.n	8001d5c <HAL_UART_Transmit+0x6a>
 8001d7a:	e000      	b.n	8001d7e <HAL_UART_Transmit+0x8c>
 8001d7c:	465e      	mov	r6, fp
 8001d7e:	68a0      	ldr	r0, [r4, #8]
 8001d80:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d84:	bf04      	itt	eq
 8001d86:	6920      	ldreq	r0, [r4, #16]
 8001d88:	2800      	cmpeq	r0, #0
 8001d8a:	d002      	beq.n	8001d92 <HAL_UART_Transmit+0xa0>
 8001d8c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d90:	e003      	b.n	8001d9a <HAL_UART_Transmit+0xa8>
 8001d92:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d96:	f36f 205f 	bfc	r0, #9, #23
 8001d9a:	8530      	strh	r0, [r6, #40]	; 0x28
 8001d9c:	46b3      	mov	fp, r6
 8001d9e:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001da2:	3801      	subs	r0, #1
 8001da4:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001da8:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dac:	69f0      	ldr	r0, [r6, #28]
 8001dae:	2900      	cmp	r1, #0
 8001db0:	d1d1      	bne.n	8001d56 <HAL_UART_Transmit+0x64>
 8001db2:	e010      	b.n	8001dd6 <HAL_UART_Transmit+0xe4>
 8001db4:	465e      	mov	r6, fp
 8001db6:	6830      	ldr	r0, [r6, #0]
 8001db8:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001dbc:	6030      	str	r0, [r6, #0]
 8001dbe:	68b0      	ldr	r0, [r6, #8]
 8001dc0:	f020 0001 	bic.w	r0, r0, #1
 8001dc4:	60b0      	str	r0, [r6, #8]
 8001dc6:	2020      	movs	r0, #32
 8001dc8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dca:	67a0      	str	r0, [r4, #120]	; 0x78
 8001dcc:	2000      	movs	r0, #0
 8001dce:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd0:	2003      	movs	r0, #3
 8001dd2:	e7a5      	b.n	8001d20 <HAL_UART_Transmit+0x2e>
 8001dd4:	465e      	mov	r6, fp
 8001dd6:	0640      	lsls	r0, r0, #25
 8001dd8:	d411      	bmi.n	8001dfe <HAL_UART_Transmit+0x10c>
 8001dda:	f105 0901 	add.w	r9, r5, #1
 8001dde:	4630      	mov	r0, r6
 8001de0:	f1b9 0f00 	cmp.w	r9, #0
 8001de4:	d007      	beq.n	8001df6 <HAL_UART_Transmit+0x104>
 8001de6:	b17d      	cbz	r5, 8001e08 <HAL_UART_Transmit+0x116>
 8001de8:	f7ff f9a2 	bl	8001130 <HAL_GetTick>
 8001dec:	eba0 0108 	sub.w	r1, r0, r8
 8001df0:	6820      	ldr	r0, [r4, #0]
 8001df2:	42a9      	cmp	r1, r5
 8001df4:	d809      	bhi.n	8001e0a <HAL_UART_Transmit+0x118>
 8001df6:	69c1      	ldr	r1, [r0, #28]
 8001df8:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001dfc:	d0f0      	beq.n	8001de0 <HAL_UART_Transmit+0xee>
 8001dfe:	2020      	movs	r0, #32
 8001e00:	6760      	str	r0, [r4, #116]	; 0x74
 8001e02:	2000      	movs	r0, #0
 8001e04:	6720      	str	r0, [r4, #112]	; 0x70
 8001e06:	e78b      	b.n	8001d20 <HAL_UART_Transmit+0x2e>
 8001e08:	4630      	mov	r0, r6
 8001e0a:	6801      	ldr	r1, [r0, #0]
 8001e0c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e10:	6001      	str	r1, [r0, #0]
 8001e12:	6881      	ldr	r1, [r0, #8]
 8001e14:	f021 0101 	bic.w	r1, r1, #1
 8001e18:	6081      	str	r1, [r0, #8]
 8001e1a:	e7d4      	b.n	8001dc6 <HAL_UART_Transmit+0xd4>

08001e1c <BSP_COM_Init>:
 8001e1c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e1e:	af03      	add	r7, sp, #12
 8001e20:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e24:	b086      	sub	sp, #24
 8001e26:	4605      	mov	r5, r0
 8001e28:	4688      	mov	r8, r1
 8001e2a:	b9f5      	cbnz	r5, 8001e6a <BSP_COM_Init+0x4e>
 8001e2c:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e30:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e34:	6801      	ldr	r1, [r0, #0]
 8001e36:	f041 0102 	orr.w	r1, r1, #2
 8001e3a:	6001      	str	r1, [r0, #0]
 8001e3c:	6801      	ldr	r1, [r0, #0]
 8001e3e:	f001 0102 	and.w	r1, r1, #2
 8001e42:	9101      	str	r1, [sp, #4]
 8001e44:	9901      	ldr	r1, [sp, #4]
 8001e46:	6801      	ldr	r1, [r0, #0]
 8001e48:	f041 0102 	orr.w	r1, r1, #2
 8001e4c:	6001      	str	r1, [r0, #0]
 8001e4e:	6801      	ldr	r1, [r0, #0]
 8001e50:	f001 0102 	and.w	r1, r1, #2
 8001e54:	9101      	str	r1, [sp, #4]
 8001e56:	9901      	ldr	r1, [sp, #4]
 8001e58:	6941      	ldr	r1, [r0, #20]
 8001e5a:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e5e:	6141      	str	r1, [r0, #20]
 8001e60:	6940      	ldr	r0, [r0, #20]
 8001e62:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e66:	9001      	str	r0, [sp, #4]
 8001e68:	9801      	ldr	r0, [sp, #4]
 8001e6a:	2040      	movs	r0, #64	; 0x40
 8001e6c:	2402      	movs	r4, #2
 8001e6e:	ae01      	add	r6, sp, #4
 8001e70:	f04f 0907 	mov.w	r9, #7
 8001e74:	9001      	str	r0, [sp, #4]
 8001e76:	2000      	movs	r0, #0
 8001e78:	9402      	str	r4, [sp, #8]
 8001e7a:	9404      	str	r4, [sp, #16]
 8001e7c:	4631      	mov	r1, r6
 8001e7e:	9003      	str	r0, [sp, #12]
 8001e80:	f240 000c 	movw	r0, #12
 8001e84:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e88:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e8c:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e90:	f7ff f9a7 	bl	80011e2 <HAL_GPIO_Init>
 8001e94:	2080      	movs	r0, #128	; 0x80
 8001e96:	4631      	mov	r1, r6
 8001e98:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001e9c:	f240 0010 	movw	r0, #16
 8001ea0:	f8cd 9014 	str.w	r9, [sp, #20]
 8001ea4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ea8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001eac:	f7ff f999 	bl	80011e2 <HAL_GPIO_Init>
 8001eb0:	f240 0008 	movw	r0, #8
 8001eb4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eb8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ebc:	f8c8 0000 	str.w	r0, [r8]
 8001ec0:	4640      	mov	r0, r8
 8001ec2:	f7ff fcff 	bl	80018c4 <HAL_UART_Init>
 8001ec6:	b006      	add	sp, #24
 8001ec8:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001ecc:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ece <verify_benchmark>:
 8001ece:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001ed2:	4770      	bx	lr

08001ed4 <initialise_benchmark>:
 8001ed4:	4770      	bx	lr
	...

08001ed8 <benchmark>:
 8001ed8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eda:	af03      	add	r7, sp, #12
 8001edc:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ee0:	b081      	sub	sp, #4
 8001ee2:	ed2d 8b0c 	vpush	{d8-d13}
 8001ee6:	b088      	sub	sp, #32
 8001ee8:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8001eec:	f64f 7097 	movw	r0, #65431	; 0xff97
 8001ef0:	f245 318f 	movw	r1, #21391	; 0x538f
 8001ef4:	ed9f bb22 	vldr	d11, [pc, #136]	; 8001f80 <benchmark+0xa8>
 8001ef8:	ed9f 0b23 	vldr	d0, [pc, #140]	; 8001f88 <benchmark+0xb0>
 8001efc:	ed9f 8b24 	vldr	d8, [pc, #144]	; 8001f90 <benchmark+0xb8>
 8001f00:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f04:	f6c3 70df 	movt	r0, #16351	; 0x3fdf
 8001f08:	f2c2 4174 	movt	r1, #9332	; 0x2474
 8001f0c:	e9c2 1000 	strd	r1, r0, [r2]
 8001f10:	f640 3230 	movw	r2, #2864	; 0xb30
 8001f14:	f240 200c 	movw	r0, #524	; 0x20c
 8001f18:	f645 6135 	movw	r1, #24117	; 0x5e35
 8001f1c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f20:	f6c3 70e0 	movt	r0, #16352	; 0x3fe0
 8001f24:	f6c4 11ba 	movt	r1, #18874	; 0x49ba
 8001f28:	e9c2 1000 	strd	r1, r0, [r2]
 8001f2c:	f640 22e8 	movw	r2, #2792	; 0xae8
 8001f30:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001f34:	2100      	movs	r1, #0
 8001f36:	eeb0 aa4b 	vmov.f32	s20, s22
 8001f3a:	eeb0 9a4b 	vmov.f32	s18, s22
 8001f3e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f42:	eef0 aa6b 	vmov.f32	s21, s23
 8001f46:	eef0 9a6b 	vmov.f32	s19, s23
 8001f4a:	e9c2 1000 	strd	r1, r0, [r2]
 8001f4e:	f640 3208 	movw	r2, #2824	; 0xb08
 8001f52:	2000      	movs	r0, #0
 8001f54:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f58:	f6c3 70f0 	movt	r0, #16368	; 0x3ff0
 8001f5c:	e9c2 1002 	strd	r1, r0, [r2, #8]
 8001f60:	2000      	movs	r0, #0
 8001f62:	f6cb 70f0 	movt	r0, #49136	; 0xbff0
 8001f66:	e9c2 1004 	strd	r1, r0, [r2, #16]
 8001f6a:	e9c2 1006 	strd	r1, r0, [r2, #24]
 8001f6e:	e9c2 1008 	strd	r1, r0, [r2, #32]
 8001f72:	ec51 0b10 	vmov	r0, r1, d0
 8001f76:	220c      	movs	r2, #12
 8001f78:	9104      	str	r1, [sp, #16]
 8001f7a:	9007      	str	r0, [sp, #28]
 8001f7c:	e00c      	b.n	8001f98 <benchmark+0xc0>
 8001f7e:	bf00      	nop
 8001f80:	00000000 	.word	0x00000000
 8001f84:	bff00000 	.word	0xbff00000
 8001f88:	2474538f 	.word	0x2474538f
 8001f8c:	3fdfff97 	.word	0x3fdfff97
 8001f90:	00000000 	.word	0x00000000
 8001f94:	3ff00000 	.word	0x3ff00000
 8001f98:	ec56 bb19 	vmov	fp, r6, d9
 8001f9c:	9203      	str	r2, [sp, #12]
 8001f9e:	ec51 0b18 	vmov	r0, r1, d8
 8001fa2:	465a      	mov	r2, fp
 8001fa4:	4633      	mov	r3, r6
 8001fa6:	f7fe f931 	bl	800020c <__adddf3>
 8001faa:	ec54 5b1a 	vmov	r5, r4, d10
 8001fae:	462a      	mov	r2, r5
 8001fb0:	4623      	mov	r3, r4
 8001fb2:	9501      	str	r5, [sp, #4]
 8001fb4:	9402      	str	r4, [sp, #8]
 8001fb6:	f7fe f929 	bl	800020c <__adddf3>
 8001fba:	ec53 2b1b 	vmov	r2, r3, d11
 8001fbe:	e9cd 2305 	strd	r2, r3, [sp, #20]
 8001fc2:	f7fe f921 	bl	8000208 <__aeabi_dsub>
 8001fc6:	f8dd a010 	ldr.w	sl, [sp, #16]
 8001fca:	9a07      	ldr	r2, [sp, #28]
 8001fcc:	4653      	mov	r3, sl
 8001fce:	f7fe fad3 	bl	8000578 <__aeabi_dmul>
 8001fd2:	4681      	mov	r9, r0
 8001fd4:	4688      	mov	r8, r1
 8001fd6:	465a      	mov	r2, fp
 8001fd8:	4633      	mov	r3, r6
 8001fda:	ec48 9b18 	vmov	d8, r9, r8
 8001fde:	f7fe f915 	bl	800020c <__adddf3>
 8001fe2:	462a      	mov	r2, r5
 8001fe4:	4623      	mov	r3, r4
 8001fe6:	f7fe f90f 	bl	8000208 <__aeabi_dsub>
 8001fea:	9e05      	ldr	r6, [sp, #20]
 8001fec:	9c06      	ldr	r4, [sp, #24]
 8001fee:	4632      	mov	r2, r6
 8001ff0:	4623      	mov	r3, r4
 8001ff2:	f7fe f90b 	bl	800020c <__adddf3>
 8001ff6:	9d07      	ldr	r5, [sp, #28]
 8001ff8:	4653      	mov	r3, sl
 8001ffa:	462a      	mov	r2, r5
 8001ffc:	f7fe fabc 	bl	8000578 <__aeabi_dmul>
 8002000:	4682      	mov	sl, r0
 8002002:	468b      	mov	fp, r1
 8002004:	4648      	mov	r0, r9
 8002006:	4641      	mov	r1, r8
 8002008:	4652      	mov	r2, sl
 800200a:	465b      	mov	r3, fp
 800200c:	ec4b ab19 	vmov	d9, sl, fp
 8002010:	f7fe f8fa 	bl	8000208 <__aeabi_dsub>
 8002014:	e9dd 2301 	ldrd	r2, r3, [sp, #4]
 8002018:	f7fe f8f8 	bl	800020c <__adddf3>
 800201c:	4632      	mov	r2, r6
 800201e:	4623      	mov	r3, r4
 8002020:	f7fe f8f4 	bl	800020c <__adddf3>
 8002024:	9e04      	ldr	r6, [sp, #16]
 8002026:	462a      	mov	r2, r5
 8002028:	4633      	mov	r3, r6
 800202a:	f7fe faa5 	bl	8000578 <__aeabi_dmul>
 800202e:	4604      	mov	r4, r0
 8002030:	460d      	mov	r5, r1
 8002032:	4650      	mov	r0, sl
 8002034:	4659      	mov	r1, fp
 8002036:	464a      	mov	r2, r9
 8002038:	4643      	mov	r3, r8
 800203a:	f7fe f8e5 	bl	8000208 <__aeabi_dsub>
 800203e:	4602      	mov	r2, r0
 8002040:	460b      	mov	r3, r1
 8002042:	4620      	mov	r0, r4
 8002044:	4629      	mov	r1, r5
 8002046:	ec45 4b1a 	vmov	d10, r4, r5
 800204a:	f7fe f8df 	bl	800020c <__adddf3>
 800204e:	4602      	mov	r2, r0
 8002050:	460b      	mov	r3, r1
 8002052:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
 8002056:	f7fe f8d9 	bl	800020c <__adddf3>
 800205a:	9a07      	ldr	r2, [sp, #28]
 800205c:	4633      	mov	r3, r6
 800205e:	f7fe fa8b 	bl	8000578 <__aeabi_dmul>
 8002062:	9a03      	ldr	r2, [sp, #12]
 8002064:	ec41 0b1b 	vmov	d11, r0, r1
 8002068:	3a01      	subs	r2, #1
 800206a:	d195      	bne.n	8001f98 <benchmark+0xc0>
 800206c:	f640 3408 	movw	r4, #2824	; 0xb08
 8002070:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002074:	f104 0008 	add.w	r0, r4, #8
 8002078:	ec80 8b08 	vstmia	r0, {d8-d11}
 800207c:	4620      	mov	r0, r4
 800207e:	f000 f99f 	bl	80023c0 <PA>
 8002082:	4620      	mov	r0, r4
 8002084:	f000 f99c 	bl	80023c0 <PA>
 8002088:	4620      	mov	r0, r4
 800208a:	f000 f999 	bl	80023c0 <PA>
 800208e:	4620      	mov	r0, r4
 8002090:	f000 f996 	bl	80023c0 <PA>
 8002094:	4620      	mov	r0, r4
 8002096:	f000 f993 	bl	80023c0 <PA>
 800209a:	4620      	mov	r0, r4
 800209c:	f000 f990 	bl	80023c0 <PA>
 80020a0:	4620      	mov	r0, r4
 80020a2:	f000 f98d 	bl	80023c0 <PA>
 80020a6:	4620      	mov	r0, r4
 80020a8:	f000 f98a 	bl	80023c0 <PA>
 80020ac:	4620      	mov	r0, r4
 80020ae:	f000 f987 	bl	80023c0 <PA>
 80020b2:	4620      	mov	r0, r4
 80020b4:	f000 f984 	bl	80023c0 <PA>
 80020b8:	4620      	mov	r0, r4
 80020ba:	f000 f981 	bl	80023c0 <PA>
 80020be:	4620      	mov	r0, r4
 80020c0:	f000 f97e 	bl	80023c0 <PA>
 80020c4:	4620      	mov	r0, r4
 80020c6:	f000 f97b 	bl	80023c0 <PA>
 80020ca:	4620      	mov	r0, r4
 80020cc:	f000 f978 	bl	80023c0 <PA>
 80020d0:	f640 3200 	movw	r2, #2816	; 0xb00
 80020d4:	f640 23f0 	movw	r3, #2800	; 0xaf0
 80020d8:	2001      	movs	r0, #1
 80020da:	f640 3638 	movw	r6, #2872	; 0xb38
 80020de:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020e2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80020e6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80020ea:	6010      	str	r0, [r2, #0]
 80020ec:	2002      	movs	r0, #2
 80020ee:	6018      	str	r0, [r3, #0]
 80020f0:	2003      	movs	r0, #3
 80020f2:	6030      	str	r0, [r6, #0]
 80020f4:	20d2      	movs	r0, #210	; 0xd2
 80020f6:	3801      	subs	r0, #1
 80020f8:	d1fd      	bne.n	80020f6 <benchmark+0x21e>
 80020fa:	2000      	movs	r0, #0
 80020fc:	ed9f 8ba8 	vldr	d8, [pc, #672]	; 80023a0 <benchmark+0x4c8>
 8002100:	2100      	movs	r1, #0
 8002102:	ed9f 0ba5 	vldr	d0, [pc, #660]	; 8002398 <benchmark+0x4c0>
 8002106:	f04f 0920 	mov.w	r9, #32
 800210a:	f2c4 0018 	movt	r0, #16408	; 0x4018
 800210e:	e9c4 1002 	strd	r1, r0, [r4, #8]
 8002112:	e9c4 1004 	strd	r1, r0, [r4, #16]
 8002116:	2001      	movs	r0, #1
 8002118:	6010      	str	r0, [r2, #0]
 800211a:	2002      	movs	r0, #2
 800211c:	6018      	str	r0, [r3, #0]
 800211e:	2003      	movs	r0, #3
 8002120:	eeb0 9a48 	vmov.f32	s18, s16
 8002124:	6030      	str	r0, [r6, #0]
 8002126:	ec51 0b10 	vmov	r0, r1, d0
 800212a:	eef0 9a68 	vmov.f32	s19, s17
 800212e:	e9cd 1006 	strd	r1, r0, [sp, #24]
 8002132:	ec56 4b19 	vmov	r4, r6, d9
 8002136:	ec5a bb18 	vmov	fp, sl, d8
 800213a:	4620      	mov	r0, r4
 800213c:	4631      	mov	r1, r6
 800213e:	465a      	mov	r2, fp
 8002140:	4653      	mov	r3, sl
 8002142:	f7fe f863 	bl	800020c <__adddf3>
 8002146:	4605      	mov	r5, r0
 8002148:	f640 20f8 	movw	r0, #2808	; 0xaf8
 800214c:	eeb0 0a49 	vmov.f32	s0, s18
 8002150:	4688      	mov	r8, r1
 8002152:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002156:	eef0 0a69 	vmov.f32	s1, s19
 800215a:	ed90 cb00 	vldr	d12, [r0]
 800215e:	f640 20e8 	movw	r0, #2792	; 0xae8
 8002162:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002166:	ed90 db00 	vldr	d13, [r0]
 800216a:	f000 fefd 	bl	8002f68 <sin>
 800216e:	eeb0 aa40 	vmov.f32	s20, s0
 8002172:	eeb0 0a49 	vmov.f32	s0, s18
 8002176:	eef0 aa60 	vmov.f32	s21, s1
 800217a:	eef0 0a69 	vmov.f32	s1, s19
 800217e:	f000 fe87 	bl	8002e90 <cos>
 8002182:	eeb0 9a40 	vmov.f32	s18, s0
 8002186:	eef0 9a60 	vmov.f32	s19, s1
 800218a:	ec48 5b10 	vmov	d0, r5, r8
 800218e:	f000 fe7f 	bl	8002e90 <cos>
 8002192:	eeb0 ba40 	vmov.f32	s22, s0
 8002196:	4620      	mov	r0, r4
 8002198:	4631      	mov	r1, r6
 800219a:	465a      	mov	r2, fp
 800219c:	4653      	mov	r3, sl
 800219e:	eef0 ba60 	vmov.f32	s23, s1
 80021a2:	f7fe f831 	bl	8000208 <__aeabi_dsub>
 80021a6:	ec41 0b10 	vmov	d0, r0, r1
 80021aa:	f000 fe71 	bl	8002e90 <cos>
 80021ae:	ec51 0b1b 	vmov	r0, r1, d11
 80021b2:	ec53 2b10 	vmov	r2, r3, d0
 80021b6:	f7fe f829 	bl	800020c <__adddf3>
 80021ba:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80021be:	f7fe f825 	bl	800020c <__adddf3>
 80021c2:	4604      	mov	r4, r0
 80021c4:	460d      	mov	r5, r1
 80021c6:	ec51 0b1d 	vmov	r0, r1, d13
 80021ca:	ec53 2b1a 	vmov	r2, r3, d10
 80021ce:	f7fe f9d3 	bl	8000578 <__aeabi_dmul>
 80021d2:	ec53 2b19 	vmov	r2, r3, d9
 80021d6:	f7fe f9cf 	bl	8000578 <__aeabi_dmul>
 80021da:	4622      	mov	r2, r4
 80021dc:	462b      	mov	r3, r5
 80021de:	f7fe faf5 	bl	80007cc <__aeabi_ddiv>
 80021e2:	ec41 0b10 	vmov	d0, r0, r1
 80021e6:	f000 fca7 	bl	8002b38 <atan>
 80021ea:	ec53 2b10 	vmov	r2, r3, d0
 80021ee:	ec51 0b1c 	vmov	r0, r1, d12
 80021f2:	f7fe f9c1 	bl	8000578 <__aeabi_dmul>
 80021f6:	4606      	mov	r6, r0
 80021f8:	460c      	mov	r4, r1
 80021fa:	4658      	mov	r0, fp
 80021fc:	4651      	mov	r1, sl
 80021fe:	4632      	mov	r2, r6
 8002200:	4623      	mov	r3, r4
 8002202:	ec44 6b19 	vmov	d9, r6, r4
 8002206:	f7fe f801 	bl	800020c <__adddf3>
 800220a:	4680      	mov	r8, r0
 800220c:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002210:	eeb0 0a48 	vmov.f32	s0, s16
 8002214:	460d      	mov	r5, r1
 8002216:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800221a:	eef0 0a68 	vmov.f32	s1, s17
 800221e:	ed90 cb00 	vldr	d12, [r0]
 8002222:	f640 20e8 	movw	r0, #2792	; 0xae8
 8002226:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800222a:	ed90 db00 	vldr	d13, [r0]
 800222e:	f000 fe9b 	bl	8002f68 <sin>
 8002232:	eeb0 aa40 	vmov.f32	s20, s0
 8002236:	eeb0 0a48 	vmov.f32	s0, s16
 800223a:	ec45 8b1b 	vmov	d11, r8, r5
 800223e:	eef0 aa60 	vmov.f32	s21, s1
 8002242:	eef0 0a68 	vmov.f32	s1, s17
 8002246:	f000 fe23 	bl	8002e90 <cos>
 800224a:	eeb0 8a40 	vmov.f32	s16, s0
 800224e:	eeb0 0a4b 	vmov.f32	s0, s22
 8002252:	eef0 8a60 	vmov.f32	s17, s1
 8002256:	eef0 0a6b 	vmov.f32	s1, s23
 800225a:	f000 fe19 	bl	8002e90 <cos>
 800225e:	eeb0 ba40 	vmov.f32	s22, s0
 8002262:	4630      	mov	r0, r6
 8002264:	4621      	mov	r1, r4
 8002266:	465a      	mov	r2, fp
 8002268:	4653      	mov	r3, sl
 800226a:	eef0 ba60 	vmov.f32	s23, s1
 800226e:	f7fd ffcb 	bl	8000208 <__aeabi_dsub>
 8002272:	ec41 0b10 	vmov	d0, r0, r1
 8002276:	f000 fe0b 	bl	8002e90 <cos>
 800227a:	ec51 0b1b 	vmov	r0, r1, d11
 800227e:	ec53 2b10 	vmov	r2, r3, d0
 8002282:	f7fd ffc3 	bl	800020c <__adddf3>
 8002286:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800228a:	f7fd ffbf 	bl	800020c <__adddf3>
 800228e:	4604      	mov	r4, r0
 8002290:	460d      	mov	r5, r1
 8002292:	ec51 0b1d 	vmov	r0, r1, d13
 8002296:	ec53 2b1a 	vmov	r2, r3, d10
 800229a:	f7fe f96d 	bl	8000578 <__aeabi_dmul>
 800229e:	ec53 2b18 	vmov	r2, r3, d8
 80022a2:	f7fe f969 	bl	8000578 <__aeabi_dmul>
 80022a6:	4622      	mov	r2, r4
 80022a8:	462b      	mov	r3, r5
 80022aa:	f7fe fa8f 	bl	80007cc <__aeabi_ddiv>
 80022ae:	ec41 0b10 	vmov	d0, r0, r1
 80022b2:	f000 fc41 	bl	8002b38 <atan>
 80022b6:	ec53 2b10 	vmov	r2, r3, d0
 80022ba:	ec51 0b1c 	vmov	r0, r1, d12
 80022be:	f7fe f95b 	bl	8000578 <__aeabi_dmul>
 80022c2:	f1b9 0901 	subs.w	r9, r9, #1
 80022c6:	ec41 0b18 	vmov	d8, r0, r1
 80022ca:	f47f af32 	bne.w	8002132 <benchmark+0x25a>
 80022ce:	f640 3300 	movw	r3, #2816	; 0xb00
 80022d2:	f640 26f0 	movw	r6, #2800	; 0xaf0
 80022d6:	2001      	movs	r0, #1
 80022d8:	f640 3138 	movw	r1, #2872	; 0xb38
 80022dc:	f640 3208 	movw	r2, #2824	; 0xb08
 80022e0:	ed9f 0b31 	vldr	d0, [pc, #196]	; 80023a8 <benchmark+0x4d0>
 80022e4:	ed9f 1b32 	vldr	d1, [pc, #200]	; 80023b0 <benchmark+0x4d8>
 80022e8:	f640 3530 	movw	r5, #2864	; 0xb30
 80022ec:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80022f0:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80022f4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80022f8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80022fc:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002300:	6018      	str	r0, [r3, #0]
 8002302:	2002      	movs	r0, #2
 8002304:	6030      	str	r0, [r6, #0]
 8002306:	2003      	movs	r0, #3
 8002308:	6008      	str	r0, [r1, #0]
 800230a:	2000      	movs	r0, #0
 800230c:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 8002310:	f6c3 70f0 	movt	r0, #16368	; 0x3ff0
 8002314:	60d0      	str	r0, [r2, #12]
 8002316:	2000      	movs	r0, #0
 8002318:	6090      	str	r0, [r2, #8]
 800231a:	e9c2 0104 	strd	r0, r1, [r2, #16]
 800231e:	2100      	movs	r1, #0
 8002320:	f2c4 0108 	movt	r1, #16392	; 0x4008
 8002324:	e9c2 0106 	strd	r0, r1, [r2, #24]
 8002328:	f44f 701a 	mov.w	r0, #616	; 0x268
 800232c:	eeb0 2a40 	vmov.f32	s4, s0
 8002330:	eeb0 0a41 	vmov.f32	s0, s2
 8002334:	3801      	subs	r0, #1
 8002336:	eef0 2a60 	vmov.f32	s5, s1
 800233a:	eef0 0a61 	vmov.f32	s1, s3
 800233e:	eeb0 1a42 	vmov.f32	s2, s4
 8002342:	eef0 1a62 	vmov.f32	s3, s5
 8002346:	d1f1      	bne.n	800232c <benchmark+0x454>
 8002348:	ed82 2b02 	vstr	d2, [r2, #8]
 800234c:	ed82 0b04 	vstr	d0, [r2, #16]
 8002350:	ed9f 0b19 	vldr	d0, [pc, #100]	; 80023b8 <benchmark+0x4e0>
 8002354:	2002      	movs	r0, #2
 8002356:	245d      	movs	r4, #93	; 0x5d
 8002358:	ed82 2b06 	vstr	d2, [r2, #24]
 800235c:	6018      	str	r0, [r3, #0]
 800235e:	2003      	movs	r0, #3
 8002360:	6030      	str	r0, [r6, #0]
 8002362:	f000 fee1 	bl	8003128 <log>
 8002366:	ed95 1b00 	vldr	d1, [r5]
 800236a:	ec51 0b10 	vmov	r0, r1, d0
 800236e:	ec53 2b11 	vmov	r2, r3, d1
 8002372:	f7fe fa2b 	bl	80007cc <__aeabi_ddiv>
 8002376:	ec41 0b10 	vmov	d0, r0, r1
 800237a:	f000 fe55 	bl	8003028 <exp>
 800237e:	f000 ff53 	bl	8003228 <sqrt>
 8002382:	3c01      	subs	r4, #1
 8002384:	d1ed      	bne.n	8002362 <benchmark+0x48a>
 8002386:	2000      	movs	r0, #0
 8002388:	b008      	add	sp, #32
 800238a:	ecbd 8b0c 	vpop	{d8-d13}
 800238e:	b001      	add	sp, #4
 8002390:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002394:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002396:	bf00      	nop
 8002398:	00000000 	.word	0x00000000
 800239c:	bff00000 	.word	0xbff00000
 80023a0:	00000000 	.word	0x00000000
 80023a4:	3fe00000 	.word	0x3fe00000
 80023a8:	00000000 	.word	0x00000000
 80023ac:	40000000 	.word	0x40000000
 80023b0:	00000000 	.word	0x00000000
 80023b4:	40080000 	.word	0x40080000
 80023b8:	00000000 	.word	0x00000000
 80023bc:	3fe80000 	.word	0x3fe80000

080023c0 <PA>:
 80023c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023c2:	af03      	add	r7, sp, #12
 80023c4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80023c8:	b081      	sub	sp, #4
 80023ca:	ed2d 8b06 	vpush	{d8-d10}
 80023ce:	b08e      	sub	sp, #56	; 0x38
 80023d0:	f640 3100 	movw	r1, #2816	; 0xb00
 80023d4:	2200      	movs	r2, #0
 80023d6:	9006      	str	r0, [sp, #24]
 80023d8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023dc:	600a      	str	r2, [r1, #0]
 80023de:	ed90 1b04 	vldr	d1, [r0, #16]
 80023e2:	ed90 0b02 	vldr	d0, [r0, #8]
 80023e6:	ed90 8b06 	vldr	d8, [r0, #24]
 80023ea:	ed90 9b08 	vldr	d9, [r0, #32]
 80023ee:	ec58 4b11 	vmov	r4, r8, d1
 80023f2:	ec51 0b10 	vmov	r0, r1, d0
 80023f6:	4622      	mov	r2, r4
 80023f8:	4643      	mov	r3, r8
 80023fa:	f7fd ff07 	bl	800020c <__adddf3>
 80023fe:	ec55 ab18 	vmov	sl, r5, d8
 8002402:	4652      	mov	r2, sl
 8002404:	462b      	mov	r3, r5
 8002406:	f8cd a020 	str.w	sl, [sp, #32]
 800240a:	950a      	str	r5, [sp, #40]	; 0x28
 800240c:	f7fd fefe 	bl	800020c <__adddf3>
 8002410:	ec53 6b19 	vmov	r6, r3, d9
 8002414:	4632      	mov	r2, r6
 8002416:	930b      	str	r3, [sp, #44]	; 0x2c
 8002418:	f7fd fef6 	bl	8000208 <__aeabi_dsub>
 800241c:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002420:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002424:	ed92 0b00 	vldr	d0, [r2]
 8002428:	ec53 2b10 	vmov	r2, r3, d0
 800242c:	e9cd 320c 	strd	r3, r2, [sp, #48]	; 0x30
 8002430:	f7fe f8a2 	bl	8000578 <__aeabi_dmul>
 8002434:	4681      	mov	r9, r0
 8002436:	4622      	mov	r2, r4
 8002438:	4643      	mov	r3, r8
 800243a:	468b      	mov	fp, r1
 800243c:	f8cd 900c 	str.w	r9, [sp, #12]
 8002440:	f7fd fee4 	bl	800020c <__adddf3>
 8002444:	4652      	mov	r2, sl
 8002446:	462b      	mov	r3, r5
 8002448:	f7fd fede 	bl	8000208 <__aeabi_dsub>
 800244c:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800244e:	46b0      	mov	r8, r6
 8002450:	4632      	mov	r2, r6
 8002452:	f8cd 8008 	str.w	r8, [sp, #8]
 8002456:	4623      	mov	r3, r4
 8002458:	f7fd fed8 	bl	800020c <__adddf3>
 800245c:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 800245e:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 8002460:	4632      	mov	r2, r6
 8002462:	462b      	mov	r3, r5
 8002464:	f7fe f888 	bl	8000578 <__aeabi_dmul>
 8002468:	468a      	mov	sl, r1
 800246a:	4602      	mov	r2, r0
 800246c:	4648      	mov	r0, r9
 800246e:	4659      	mov	r1, fp
 8002470:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
 8002474:	4653      	mov	r3, sl
 8002476:	4691      	mov	r9, r2
 8002478:	f7fd fec6 	bl	8000208 <__aeabi_dsub>
 800247c:	9a08      	ldr	r2, [sp, #32]
 800247e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002480:	f7fd fec4 	bl	800020c <__adddf3>
 8002484:	4642      	mov	r2, r8
 8002486:	4623      	mov	r3, r4
 8002488:	f7fd fec0 	bl	800020c <__adddf3>
 800248c:	4632      	mov	r2, r6
 800248e:	462b      	mov	r3, r5
 8002490:	f7fe f872 	bl	8000578 <__aeabi_dmul>
 8002494:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8002498:	4604      	mov	r4, r0
 800249a:	460d      	mov	r5, r1
 800249c:	464e      	mov	r6, r9
 800249e:	4648      	mov	r0, r9
 80024a0:	4651      	mov	r1, sl
 80024a2:	465b      	mov	r3, fp
 80024a4:	f8cd a01c 	str.w	sl, [sp, #28]
 80024a8:	9605      	str	r6, [sp, #20]
 80024aa:	4642      	mov	r2, r8
 80024ac:	f7fd feac 	bl	8000208 <__aeabi_dsub>
 80024b0:	4602      	mov	r2, r0
 80024b2:	460b      	mov	r3, r1
 80024b4:	4620      	mov	r0, r4
 80024b6:	4629      	mov	r1, r5
 80024b8:	46a3      	mov	fp, r4
 80024ba:	46a9      	mov	r9, r5
 80024bc:	f7fd fea6 	bl	800020c <__adddf3>
 80024c0:	4602      	mov	r2, r0
 80024c2:	460b      	mov	r3, r1
 80024c4:	9802      	ldr	r0, [sp, #8]
 80024c6:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80024c8:	f7fd fea0 	bl	800020c <__adddf3>
 80024cc:	f640 22e8 	movw	r2, #2792	; 0xae8
 80024d0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024d4:	ed92 0b00 	vldr	d0, [r2]
 80024d8:	ec53 2b10 	vmov	r2, r3, d0
 80024dc:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 80024e0:	f7fe f974 	bl	80007cc <__aeabi_ddiv>
 80024e4:	460c      	mov	r4, r1
 80024e6:	9909      	ldr	r1, [sp, #36]	; 0x24
 80024e8:	4605      	mov	r5, r0
 80024ea:	4640      	mov	r0, r8
 80024ec:	4632      	mov	r2, r6
 80024ee:	4653      	mov	r3, sl
 80024f0:	f7fd fe8c 	bl	800020c <__adddf3>
 80024f4:	465a      	mov	r2, fp
 80024f6:	464b      	mov	r3, r9
 80024f8:	f8cd 9010 	str.w	r9, [sp, #16]
 80024fc:	f7fd fe86 	bl	800020c <__adddf3>
 8002500:	462a      	mov	r2, r5
 8002502:	4623      	mov	r3, r4
 8002504:	46aa      	mov	sl, r5
 8002506:	9408      	str	r4, [sp, #32]
 8002508:	f7fd fe7e 	bl	8000208 <__aeabi_dsub>
 800250c:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 800250e:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 8002510:	462a      	mov	r2, r5
 8002512:	4633      	mov	r3, r6
 8002514:	f7fe f830 	bl	8000578 <__aeabi_dmul>
 8002518:	9a05      	ldr	r2, [sp, #20]
 800251a:	9b07      	ldr	r3, [sp, #28]
 800251c:	9009      	str	r0, [sp, #36]	; 0x24
 800251e:	9102      	str	r1, [sp, #8]
 8002520:	f7fd fe74 	bl	800020c <__adddf3>
 8002524:	46d8      	mov	r8, fp
 8002526:	464b      	mov	r3, r9
 8002528:	4642      	mov	r2, r8
 800252a:	f7fd fe6d 	bl	8000208 <__aeabi_dsub>
 800252e:	46d3      	mov	fp, sl
 8002530:	4652      	mov	r2, sl
 8002532:	4623      	mov	r3, r4
 8002534:	f8cd b004 	str.w	fp, [sp, #4]
 8002538:	f7fd fe68 	bl	800020c <__adddf3>
 800253c:	462a      	mov	r2, r5
 800253e:	4633      	mov	r3, r6
 8002540:	462c      	mov	r4, r5
 8002542:	f7fe f819 	bl	8000578 <__aeabi_dmul>
 8002546:	f8dd 9008 	ldr.w	r9, [sp, #8]
 800254a:	4682      	mov	sl, r0
 800254c:	9809      	ldr	r0, [sp, #36]	; 0x24
 800254e:	460d      	mov	r5, r1
 8002550:	4652      	mov	r2, sl
 8002552:	462b      	mov	r3, r5
 8002554:	4649      	mov	r1, r9
 8002556:	f7fd fe57 	bl	8000208 <__aeabi_dsub>
 800255a:	9b04      	ldr	r3, [sp, #16]
 800255c:	4642      	mov	r2, r8
 800255e:	f7fd fe55 	bl	800020c <__adddf3>
 8002562:	9b08      	ldr	r3, [sp, #32]
 8002564:	465a      	mov	r2, fp
 8002566:	f7fd fe51 	bl	800020c <__adddf3>
 800256a:	4622      	mov	r2, r4
 800256c:	4633      	mov	r3, r6
 800256e:	f7fe f803 	bl	8000578 <__aeabi_dmul>
 8002572:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002576:	460e      	mov	r6, r1
 8002578:	4680      	mov	r8, r0
 800257a:	4650      	mov	r0, sl
 800257c:	4629      	mov	r1, r5
 800257e:	464b      	mov	r3, r9
 8002580:	f8cd a014 	str.w	sl, [sp, #20]
 8002584:	9607      	str	r6, [sp, #28]
 8002586:	465a      	mov	r2, fp
 8002588:	f7fd fe3e 	bl	8000208 <__aeabi_dsub>
 800258c:	4602      	mov	r2, r0
 800258e:	460b      	mov	r3, r1
 8002590:	4640      	mov	r0, r8
 8002592:	4631      	mov	r1, r6
 8002594:	f7fd fe3a 	bl	800020c <__adddf3>
 8002598:	4602      	mov	r2, r0
 800259a:	460b      	mov	r3, r1
 800259c:	9801      	ldr	r0, [sp, #4]
 800259e:	9908      	ldr	r1, [sp, #32]
 80025a0:	f7fd fe34 	bl	800020c <__adddf3>
 80025a4:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 80025a8:	f7fe f910 	bl	80007cc <__aeabi_ddiv>
 80025ac:	4606      	mov	r6, r0
 80025ae:	460c      	mov	r4, r1
 80025b0:	4649      	mov	r1, r9
 80025b2:	4658      	mov	r0, fp
 80025b4:	4652      	mov	r2, sl
 80025b6:	462b      	mov	r3, r5
 80025b8:	46a9      	mov	r9, r5
 80025ba:	9608      	str	r6, [sp, #32]
 80025bc:	f7fd fe26 	bl	800020c <__adddf3>
 80025c0:	46c2      	mov	sl, r8
 80025c2:	4642      	mov	r2, r8
 80025c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80025c8:	f8cd a00c 	str.w	sl, [sp, #12]
 80025cc:	4643      	mov	r3, r8
 80025ce:	f7fd fe1d 	bl	800020c <__adddf3>
 80025d2:	4632      	mov	r2, r6
 80025d4:	4626      	mov	r6, r4
 80025d6:	4633      	mov	r3, r6
 80025d8:	f7fd fe16 	bl	8000208 <__aeabi_dsub>
 80025dc:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 80025de:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 80025e0:	462a      	mov	r2, r5
 80025e2:	4623      	mov	r3, r4
 80025e4:	f7fd ffc8 	bl	8000578 <__aeabi_dmul>
 80025e8:	9a05      	ldr	r2, [sp, #20]
 80025ea:	4683      	mov	fp, r0
 80025ec:	464b      	mov	r3, r9
 80025ee:	9101      	str	r1, [sp, #4]
 80025f0:	f8cd b008 	str.w	fp, [sp, #8]
 80025f4:	f7fd fe0a 	bl	800020c <__adddf3>
 80025f8:	4652      	mov	r2, sl
 80025fa:	4643      	mov	r3, r8
 80025fc:	f7fd fe04 	bl	8000208 <__aeabi_dsub>
 8002600:	f8dd 8020 	ldr.w	r8, [sp, #32]
 8002604:	46b1      	mov	r9, r6
 8002606:	4633      	mov	r3, r6
 8002608:	f8cd 9000 	str.w	r9, [sp]
 800260c:	4642      	mov	r2, r8
 800260e:	f7fd fdfd 	bl	800020c <__adddf3>
 8002612:	462a      	mov	r2, r5
 8002614:	4623      	mov	r3, r4
 8002616:	f7fd ffaf 	bl	8000578 <__aeabi_dmul>
 800261a:	f8dd a004 	ldr.w	sl, [sp, #4]
 800261e:	4605      	mov	r5, r0
 8002620:	460e      	mov	r6, r1
 8002622:	4658      	mov	r0, fp
 8002624:	462a      	mov	r2, r5
 8002626:	4633      	mov	r3, r6
 8002628:	46b3      	mov	fp, r6
 800262a:	4651      	mov	r1, sl
 800262c:	f7fd fdec 	bl	8000208 <__aeabi_dsub>
 8002630:	9a03      	ldr	r2, [sp, #12]
 8002632:	9b07      	ldr	r3, [sp, #28]
 8002634:	f7fd fdea 	bl	800020c <__adddf3>
 8002638:	4642      	mov	r2, r8
 800263a:	464b      	mov	r3, r9
 800263c:	f7fd fde6 	bl	800020c <__adddf3>
 8002640:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8002642:	4623      	mov	r3, r4
 8002644:	f7fd ff98 	bl	8000578 <__aeabi_dmul>
 8002648:	f8dd 9008 	ldr.w	r9, [sp, #8]
 800264c:	4604      	mov	r4, r0
 800264e:	4688      	mov	r8, r1
 8002650:	4628      	mov	r0, r5
 8002652:	4659      	mov	r1, fp
 8002654:	4653      	mov	r3, sl
 8002656:	9505      	str	r5, [sp, #20]
 8002658:	f8cd b010 	str.w	fp, [sp, #16]
 800265c:	9409      	str	r4, [sp, #36]	; 0x24
 800265e:	464a      	mov	r2, r9
 8002660:	f7fd fdd2 	bl	8000208 <__aeabi_dsub>
 8002664:	4602      	mov	r2, r0
 8002666:	460b      	mov	r3, r1
 8002668:	4620      	mov	r0, r4
 800266a:	4641      	mov	r1, r8
 800266c:	f7fd fdce 	bl	800020c <__adddf3>
 8002670:	4602      	mov	r2, r0
 8002672:	460b      	mov	r3, r1
 8002674:	9808      	ldr	r0, [sp, #32]
 8002676:	9900      	ldr	r1, [sp, #0]
 8002678:	f7fd fdc8 	bl	800020c <__adddf3>
 800267c:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8002680:	f7fe f8a4 	bl	80007cc <__aeabi_ddiv>
 8002684:	460e      	mov	r6, r1
 8002686:	4604      	mov	r4, r0
 8002688:	4648      	mov	r0, r9
 800268a:	4651      	mov	r1, sl
 800268c:	462a      	mov	r2, r5
 800268e:	465b      	mov	r3, fp
 8002690:	9608      	str	r6, [sp, #32]
 8002692:	f7fd fdbb 	bl	800020c <__adddf3>
 8002696:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002698:	46c2      	mov	sl, r8
 800269a:	4643      	mov	r3, r8
 800269c:	f8cd a00c 	str.w	sl, [sp, #12]
 80026a0:	462a      	mov	r2, r5
 80026a2:	f7fd fdb3 	bl	800020c <__adddf3>
 80026a6:	4622      	mov	r2, r4
 80026a8:	4633      	mov	r3, r6
 80026aa:	46a3      	mov	fp, r4
 80026ac:	f7fd fdac 	bl	8000208 <__aeabi_dsub>
 80026b0:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 80026b2:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 80026b4:	4622      	mov	r2, r4
 80026b6:	4633      	mov	r3, r6
 80026b8:	f7fd ff5e 	bl	8000578 <__aeabi_dmul>
 80026bc:	4689      	mov	r9, r1
 80026be:	4680      	mov	r8, r0
 80026c0:	f8cd 9008 	str.w	r9, [sp, #8]
 80026c4:	e9dd 3204 	ldrd	r3, r2, [sp, #16]
 80026c8:	f7fd fda0 	bl	800020c <__adddf3>
 80026cc:	462a      	mov	r2, r5
 80026ce:	4653      	mov	r3, sl
 80026d0:	f7fd fd9a 	bl	8000208 <__aeabi_dsub>
 80026d4:	9d08      	ldr	r5, [sp, #32]
 80026d6:	465a      	mov	r2, fp
 80026d8:	f8cd b000 	str.w	fp, [sp]
 80026dc:	462b      	mov	r3, r5
 80026de:	f7fd fd95 	bl	800020c <__adddf3>
 80026e2:	4622      	mov	r2, r4
 80026e4:	4633      	mov	r3, r6
 80026e6:	f7fd ff47 	bl	8000578 <__aeabi_dmul>
 80026ea:	460c      	mov	r4, r1
 80026ec:	4682      	mov	sl, r0
 80026ee:	4640      	mov	r0, r8
 80026f0:	4649      	mov	r1, r9
 80026f2:	4652      	mov	r2, sl
 80026f4:	4623      	mov	r3, r4
 80026f6:	9405      	str	r4, [sp, #20]
 80026f8:	f7fd fd86 	bl	8000208 <__aeabi_dsub>
 80026fc:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80026fe:	9b03      	ldr	r3, [sp, #12]
 8002700:	f7fd fd84 	bl	800020c <__adddf3>
 8002704:	465a      	mov	r2, fp
 8002706:	462b      	mov	r3, r5
 8002708:	f7fd fd80 	bl	800020c <__adddf3>
 800270c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 800270e:	4633      	mov	r3, r6
 8002710:	f7fd ff32 	bl	8000578 <__aeabi_dmul>
 8002714:	460e      	mov	r6, r1
 8002716:	4621      	mov	r1, r4
 8002718:	9c02      	ldr	r4, [sp, #8]
 800271a:	4605      	mov	r5, r0
 800271c:	46d3      	mov	fp, sl
 800271e:	4650      	mov	r0, sl
 8002720:	4642      	mov	r2, r8
 8002722:	46c1      	mov	r9, r8
 8002724:	f8cd b01c 	str.w	fp, [sp, #28]
 8002728:	4623      	mov	r3, r4
 800272a:	f7fd fd6d 	bl	8000208 <__aeabi_dsub>
 800272e:	4602      	mov	r2, r0
 8002730:	460b      	mov	r3, r1
 8002732:	46a8      	mov	r8, r5
 8002734:	4628      	mov	r0, r5
 8002736:	4631      	mov	r1, r6
 8002738:	46b2      	mov	sl, r6
 800273a:	f8cd 8010 	str.w	r8, [sp, #16]
 800273e:	f7fd fd65 	bl	800020c <__adddf3>
 8002742:	4602      	mov	r2, r0
 8002744:	460b      	mov	r3, r1
 8002746:	9800      	ldr	r0, [sp, #0]
 8002748:	9908      	ldr	r1, [sp, #32]
 800274a:	f7fd fd5f 	bl	800020c <__adddf3>
 800274e:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8002752:	f7fe f83b 	bl	80007cc <__aeabi_ddiv>
 8002756:	465a      	mov	r2, fp
 8002758:	f8dd b014 	ldr.w	fp, [sp, #20]
 800275c:	4606      	mov	r6, r0
 800275e:	460d      	mov	r5, r1
 8002760:	4648      	mov	r0, r9
 8002762:	4621      	mov	r1, r4
 8002764:	465b      	mov	r3, fp
 8002766:	f7fd fd51 	bl	800020c <__adddf3>
 800276a:	46d1      	mov	r9, sl
 800276c:	4642      	mov	r2, r8
 800276e:	4653      	mov	r3, sl
 8002770:	f8cd 900c 	str.w	r9, [sp, #12]
 8002774:	f7fd fd4a 	bl	800020c <__adddf3>
 8002778:	4632      	mov	r2, r6
 800277a:	462b      	mov	r3, r5
 800277c:	46b0      	mov	r8, r6
 800277e:	f7fd fd43 	bl	8000208 <__aeabi_dsub>
 8002782:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 8002784:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8002786:	4632      	mov	r2, r6
 8002788:	4623      	mov	r3, r4
 800278a:	f7fd fef5 	bl	8000578 <__aeabi_dmul>
 800278e:	9a07      	ldr	r2, [sp, #28]
 8002790:	465b      	mov	r3, fp
 8002792:	9002      	str	r0, [sp, #8]
 8002794:	9109      	str	r1, [sp, #36]	; 0x24
 8002796:	f7fd fd39 	bl	800020c <__adddf3>
 800279a:	f8dd a010 	ldr.w	sl, [sp, #16]
 800279e:	464b      	mov	r3, r9
 80027a0:	4652      	mov	r2, sl
 80027a2:	f7fd fd31 	bl	8000208 <__aeabi_dsub>
 80027a6:	46c1      	mov	r9, r8
 80027a8:	4642      	mov	r2, r8
 80027aa:	462b      	mov	r3, r5
 80027ac:	9500      	str	r5, [sp, #0]
 80027ae:	f8cd 9004 	str.w	r9, [sp, #4]
 80027b2:	f7fd fd2b 	bl	800020c <__adddf3>
 80027b6:	4632      	mov	r2, r6
 80027b8:	4623      	mov	r3, r4
 80027ba:	f7fd fedd 	bl	8000578 <__aeabi_dmul>
 80027be:	9e02      	ldr	r6, [sp, #8]
 80027c0:	4688      	mov	r8, r1
 80027c2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80027c4:	4683      	mov	fp, r0
 80027c6:	465a      	mov	r2, fp
 80027c8:	4643      	mov	r3, r8
 80027ca:	4630      	mov	r0, r6
 80027cc:	f7fd fd1c 	bl	8000208 <__aeabi_dsub>
 80027d0:	9b03      	ldr	r3, [sp, #12]
 80027d2:	4652      	mov	r2, sl
 80027d4:	f7fd fd1a 	bl	800020c <__adddf3>
 80027d8:	464a      	mov	r2, r9
 80027da:	462b      	mov	r3, r5
 80027dc:	f7fd fd16 	bl	800020c <__adddf3>
 80027e0:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 80027e2:	4623      	mov	r3, r4
 80027e4:	f7fd fec8 	bl	8000578 <__aeabi_dmul>
 80027e8:	460c      	mov	r4, r1
 80027ea:	46c2      	mov	sl, r8
 80027ec:	4641      	mov	r1, r8
 80027ee:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80027f2:	4605      	mov	r5, r0
 80027f4:	46d9      	mov	r9, fp
 80027f6:	4658      	mov	r0, fp
 80027f8:	4632      	mov	r2, r6
 80027fa:	9508      	str	r5, [sp, #32]
 80027fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002800:	f8cd a014 	str.w	sl, [sp, #20]
 8002804:	4643      	mov	r3, r8
 8002806:	f7fd fcff 	bl	8000208 <__aeabi_dsub>
 800280a:	4602      	mov	r2, r0
 800280c:	460b      	mov	r3, r1
 800280e:	4628      	mov	r0, r5
 8002810:	4621      	mov	r1, r4
 8002812:	4625      	mov	r5, r4
 8002814:	9504      	str	r5, [sp, #16]
 8002816:	f7fd fcf9 	bl	800020c <__adddf3>
 800281a:	4602      	mov	r2, r0
 800281c:	460b      	mov	r3, r1
 800281e:	e9dd 1000 	ldrd	r1, r0, [sp]
 8002822:	f7fd fcf3 	bl	800020c <__adddf3>
 8002826:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 800282a:	f7fd ffcf 	bl	80007cc <__aeabi_ddiv>
 800282e:	4683      	mov	fp, r0
 8002830:	9101      	str	r1, [sp, #4]
 8002832:	4630      	mov	r0, r6
 8002834:	4641      	mov	r1, r8
 8002836:	464a      	mov	r2, r9
 8002838:	4653      	mov	r3, sl
 800283a:	f7fd fce7 	bl	800020c <__adddf3>
 800283e:	9c08      	ldr	r4, [sp, #32]
 8002840:	462b      	mov	r3, r5
 8002842:	4622      	mov	r2, r4
 8002844:	f7fd fce2 	bl	800020c <__adddf3>
 8002848:	9d01      	ldr	r5, [sp, #4]
 800284a:	465a      	mov	r2, fp
 800284c:	462b      	mov	r3, r5
 800284e:	f7fd fcdb 	bl	8000208 <__aeabi_dsub>
 8002852:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 8002854:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
 8002858:	4632      	mov	r2, r6
 800285a:	4653      	mov	r3, sl
 800285c:	f7fd fe8c 	bl	8000578 <__aeabi_dmul>
 8002860:	9a07      	ldr	r2, [sp, #28]
 8002862:	9b05      	ldr	r3, [sp, #20]
 8002864:	4681      	mov	r9, r0
 8002866:	9109      	str	r1, [sp, #36]	; 0x24
 8002868:	ec41 9b18 	vmov	d8, r9, r1
 800286c:	f7fd fcce 	bl	800020c <__adddf3>
 8002870:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8002874:	4622      	mov	r2, r4
 8002876:	4643      	mov	r3, r8
 8002878:	f7fd fcc6 	bl	8000208 <__aeabi_dsub>
 800287c:	465c      	mov	r4, fp
 800287e:	465a      	mov	r2, fp
 8002880:	462b      	mov	r3, r5
 8002882:	46ab      	mov	fp, r5
 8002884:	9403      	str	r4, [sp, #12]
 8002886:	f7fd fcc1 	bl	800020c <__adddf3>
 800288a:	4632      	mov	r2, r6
 800288c:	4653      	mov	r3, sl
 800288e:	4656      	mov	r6, sl
 8002890:	f7fd fe72 	bl	8000578 <__aeabi_dmul>
 8002894:	468a      	mov	sl, r1
 8002896:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002898:	4605      	mov	r5, r0
 800289a:	4648      	mov	r0, r9
 800289c:	462a      	mov	r2, r5
 800289e:	4653      	mov	r3, sl
 80028a0:	ec4a 5b19 	vmov	d9, r5, sl
 80028a4:	f7fd fcb0 	bl	8000208 <__aeabi_dsub>
 80028a8:	9a08      	ldr	r2, [sp, #32]
 80028aa:	4643      	mov	r3, r8
 80028ac:	f7fd fcae 	bl	800020c <__adddf3>
 80028b0:	4622      	mov	r2, r4
 80028b2:	465b      	mov	r3, fp
 80028b4:	f7fd fcaa 	bl	800020c <__adddf3>
 80028b8:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 80028ba:	4633      	mov	r3, r6
 80028bc:	f7fd fe5c 	bl	8000578 <__aeabi_dmul>
 80028c0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80028c2:	4606      	mov	r6, r0
 80028c4:	460c      	mov	r4, r1
 80028c6:	4628      	mov	r0, r5
 80028c8:	4651      	mov	r1, sl
 80028ca:	464a      	mov	r2, r9
 80028cc:	f7fd fc9c 	bl	8000208 <__aeabi_dsub>
 80028d0:	9d06      	ldr	r5, [sp, #24]
 80028d2:	4602      	mov	r2, r0
 80028d4:	460b      	mov	r3, r1
 80028d6:	4630      	mov	r0, r6
 80028d8:	4621      	mov	r1, r4
 80028da:	ec44 6b1a 	vmov	d10, r6, r4
 80028de:	ed85 8b02 	vstr	d8, [r5, #8]
 80028e2:	f7fd fc93 	bl	800020c <__adddf3>
 80028e6:	ed85 9b04 	vstr	d9, [r5, #16]
 80028ea:	4602      	mov	r2, r0
 80028ec:	460b      	mov	r3, r1
 80028ee:	4659      	mov	r1, fp
 80028f0:	9803      	ldr	r0, [sp, #12]
 80028f2:	f7fd fc8b 	bl	800020c <__adddf3>
 80028f6:	ed85 ab06 	vstr	d10, [r5, #24]
 80028fa:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 80028fe:	f7fd ff65 	bl	80007cc <__aeabi_ddiv>
 8002902:	ec41 0b10 	vmov	d0, r0, r1
 8002906:	f640 3100 	movw	r1, #2816	; 0xb00
 800290a:	2006      	movs	r0, #6
 800290c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002910:	ed85 0b08 	vstr	d0, [r5, #32]
 8002914:	6008      	str	r0, [r1, #0]
 8002916:	b00e      	add	sp, #56	; 0x38
 8002918:	ecbd 8b06 	vpop	{d8-d10}
 800291c:	b001      	add	sp, #4
 800291e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002922:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002924 <__io_putchar>:
 8002924:	b580      	push	{r7, lr}
 8002926:	466f      	mov	r7, sp
 8002928:	b082      	sub	sp, #8
 800292a:	9001      	str	r0, [sp, #4]
 800292c:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002930:	a901      	add	r1, sp, #4
 8002932:	2201      	movs	r2, #1
 8002934:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002938:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800293c:	f7ff f9d9 	bl	8001cf2 <HAL_UART_Transmit>
 8002940:	9801      	ldr	r0, [sp, #4]
 8002942:	b002      	add	sp, #8
 8002944:	bd80      	pop	{r7, pc}

08002946 <main>:
 8002946:	b5b0      	push	{r4, r5, r7, lr}
 8002948:	af02      	add	r7, sp, #8
 800294a:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800294e:	f643 0000 	movw	r0, #14336	; 0x3800
 8002952:	220c      	movs	r2, #12
 8002954:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002958:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800295c:	6008      	str	r0, [r1, #0]
 800295e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002962:	6048      	str	r0, [r1, #4]
 8002964:	2000      	movs	r0, #0
 8002966:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800296a:	6108      	str	r0, [r1, #16]
 800296c:	6248      	str	r0, [r1, #36]	; 0x24
 800296e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002972:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002976:	2000      	movs	r0, #0
 8002978:	f7ff fa50 	bl	8001e1c <BSP_COM_Init>
 800297c:	f7ff faaa 	bl	8001ed4 <initialise_benchmark>
 8002980:	f649 4058 	movw	r0, #40024	; 0x9c58
 8002984:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002988:	f002 fad6 	bl	8004f38 <printf>
 800298c:	f649 5004 	movw	r0, #40196	; 0x9d04
 8002990:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002994:	f002 fb32 	bl	8004ffc <puts>
 8002998:	f7fe fbb2 	bl	8001100 <HAL_Init>
 800299c:	f7fe fbc8 	bl	8001130 <HAL_GetTick>
 80029a0:	4604      	mov	r4, r0
 80029a2:	f7ff fa99 	bl	8001ed8 <benchmark>
 80029a6:	4605      	mov	r5, r0
 80029a8:	f7fe fbc2 	bl	8001130 <HAL_GetTick>
 80029ac:	1b04      	subs	r4, r0, r4
 80029ae:	4628      	mov	r0, r5
 80029b0:	f7ff fa8d 	bl	8001ece <verify_benchmark>
 80029b4:	1c41      	adds	r1, r0, #1
 80029b6:	d006      	beq.n	80029c6 <main+0x80>
 80029b8:	2801      	cmp	r0, #1
 80029ba:	d109      	bne.n	80029d0 <main+0x8a>
 80029bc:	f649 4070 	movw	r0, #40048	; 0x9c70
 80029c0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80029c4:	e008      	b.n	80029d8 <main+0x92>
 80029c6:	f649 4094 	movw	r0, #40084	; 0x9c94
 80029ca:	f6c0 0000 	movt	r0, #2048	; 0x800
 80029ce:	e003      	b.n	80029d8 <main+0x92>
 80029d0:	f649 40c9 	movw	r0, #40137	; 0x9cc9
 80029d4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80029d8:	4621      	mov	r1, r4
 80029da:	f002 faad 	bl	8004f38 <printf>
 80029de:	2000      	movs	r0, #0
 80029e0:	bdb0      	pop	{r4, r5, r7, pc}

080029e2 <SysTick_Handler>:
 80029e2:	b580      	push	{r7, lr}
 80029e4:	466f      	mov	r7, sp
 80029e6:	f7fe fb9b 	bl	8001120 <HAL_IncTick>
 80029ea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80029ee:	f7fe bbf5 	b.w	80011dc <HAL_SYSTICK_IRQHandler>

080029f2 <_read>:
 80029f2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80029f4:	af03      	add	r7, sp, #12
 80029f6:	f84d bd04 	str.w	fp, [sp, #-4]!
 80029fa:	4614      	mov	r4, r2
 80029fc:	460d      	mov	r5, r1
 80029fe:	2c01      	cmp	r4, #1
 8002a00:	db06      	blt.n	8002a10 <_read+0x1e>
 8002a02:	4626      	mov	r6, r4
 8002a04:	f3af 8000 	nop.w
 8002a08:	f805 0b01 	strb.w	r0, [r5], #1
 8002a0c:	3e01      	subs	r6, #1
 8002a0e:	d1f9      	bne.n	8002a04 <_read+0x12>
 8002a10:	4620      	mov	r0, r4
 8002a12:	f85d bb04 	ldr.w	fp, [sp], #4
 8002a16:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a18 <_write>:
 8002a18:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002a1a:	af03      	add	r7, sp, #12
 8002a1c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002a20:	4614      	mov	r4, r2
 8002a22:	460d      	mov	r5, r1
 8002a24:	2c01      	cmp	r4, #1
 8002a26:	db06      	blt.n	8002a36 <_write+0x1e>
 8002a28:	4626      	mov	r6, r4
 8002a2a:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002a2e:	f7ff ff79 	bl	8002924 <__io_putchar>
 8002a32:	3e01      	subs	r6, #1
 8002a34:	d1f9      	bne.n	8002a2a <_write+0x12>
 8002a36:	4620      	mov	r0, r4
 8002a38:	f85d bb04 	ldr.w	fp, [sp], #4
 8002a3c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a3e <_sbrk>:
 8002a3e:	f640 2268 	movw	r2, #2664	; 0xa68
 8002a42:	4601      	mov	r1, r0
 8002a44:	466b      	mov	r3, sp
 8002a46:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a4a:	6810      	ldr	r0, [r2, #0]
 8002a4c:	2800      	cmp	r0, #0
 8002a4e:	bf02      	ittt	eq
 8002a50:	f640 3068 	movweq	r0, #2920	; 0xb68
 8002a54:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002a58:	6010      	streq	r0, [r2, #0]
 8002a5a:	4401      	add	r1, r0
 8002a5c:	4299      	cmp	r1, r3
 8002a5e:	bf9c      	itt	ls
 8002a60:	6011      	strls	r1, [r2, #0]
 8002a62:	4770      	bxls	lr
 8002a64:	b580      	push	{r7, lr}
 8002a66:	466f      	mov	r7, sp
 8002a68:	f002 f9f2 	bl	8004e50 <__errno>
 8002a6c:	210c      	movs	r1, #12
 8002a6e:	6001      	str	r1, [r0, #0]
 8002a70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002a74:	bd80      	pop	{r7, pc}

08002a76 <_close>:
 8002a76:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002a7a:	4770      	bx	lr

08002a7c <_fstat>:
 8002a7c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002a80:	6048      	str	r0, [r1, #4]
 8002a82:	2000      	movs	r0, #0
 8002a84:	4770      	bx	lr

08002a86 <_isatty>:
 8002a86:	2001      	movs	r0, #1
 8002a88:	4770      	bx	lr

08002a8a <_lseek>:
 8002a8a:	2000      	movs	r0, #0
 8002a8c:	4770      	bx	lr

08002a8e <SystemInit>:
 8002a8e:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002a92:	f04f 0c00 	mov.w	ip, #0
 8002a96:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002a9a:	6801      	ldr	r1, [r0, #0]
 8002a9c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002aa0:	6001      	str	r1, [r0, #0]
 8002aa2:	f241 0100 	movw	r1, #4096	; 0x1000
 8002aa6:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002aaa:	680a      	ldr	r2, [r1, #0]
 8002aac:	f042 0201 	orr.w	r2, r2, #1
 8002ab0:	600a      	str	r2, [r1, #0]
 8002ab2:	f8c1 c008 	str.w	ip, [r1, #8]
 8002ab6:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002aba:	680b      	ldr	r3, [r1, #0]
 8002abc:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002ac0:	401a      	ands	r2, r3
 8002ac2:	600a      	str	r2, [r1, #0]
 8002ac4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002ac8:	60ca      	str	r2, [r1, #12]
 8002aca:	680a      	ldr	r2, [r1, #0]
 8002acc:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002ad0:	600a      	str	r2, [r1, #0]
 8002ad2:	f8c1 c018 	str.w	ip, [r1, #24]
 8002ad6:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002ada:	f840 1c80 	str.w	r1, [r0, #-128]
 8002ade:	4770      	bx	lr

08002ae0 <Reset_Handler>:
 8002ae0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002b18 <LoopForever+0x2>
 8002ae4:	2100      	movs	r1, #0
 8002ae6:	e003      	b.n	8002af0 <LoopCopyDataInit>

08002ae8 <CopyDataInit>:
 8002ae8:	4b0c      	ldr	r3, [pc, #48]	; (8002b1c <LoopForever+0x6>)
 8002aea:	585b      	ldr	r3, [r3, r1]
 8002aec:	5043      	str	r3, [r0, r1]
 8002aee:	3104      	adds	r1, #4

08002af0 <LoopCopyDataInit>:
 8002af0:	480b      	ldr	r0, [pc, #44]	; (8002b20 <LoopForever+0xa>)
 8002af2:	4b0c      	ldr	r3, [pc, #48]	; (8002b24 <LoopForever+0xe>)
 8002af4:	1842      	adds	r2, r0, r1
 8002af6:	429a      	cmp	r2, r3
 8002af8:	d3f6      	bcc.n	8002ae8 <CopyDataInit>
 8002afa:	4a0b      	ldr	r2, [pc, #44]	; (8002b28 <LoopForever+0x12>)
 8002afc:	e002      	b.n	8002b04 <LoopFillZerobss>

08002afe <FillZerobss>:
 8002afe:	2300      	movs	r3, #0
 8002b00:	f842 3b04 	str.w	r3, [r2], #4

08002b04 <LoopFillZerobss>:
 8002b04:	4b09      	ldr	r3, [pc, #36]	; (8002b2c <LoopForever+0x16>)
 8002b06:	429a      	cmp	r2, r3
 8002b08:	d3f9      	bcc.n	8002afe <FillZerobss>
 8002b0a:	f7ff ffc0 	bl	8002a8e <SystemInit>
 8002b0e:	f002 f9a5 	bl	8004e5c <__libc_init_array>
 8002b12:	f7ff ff18 	bl	8002946 <main>

08002b16 <LoopForever>:
 8002b16:	e7fe      	b.n	8002b16 <LoopForever>
 8002b18:	20018000 	.word	0x20018000
 8002b1c:	0800a208 	.word	0x0800a208
 8002b20:	20000000 	.word	0x20000000
 8002b24:	200009c8 	.word	0x200009c8
 8002b28:	200009c8 	.word	0x200009c8
 8002b2c:	20000b64 	.word	0x20000b64

08002b30 <ADC1_2_IRQHandler>:
 8002b30:	e7fe      	b.n	8002b30 <ADC1_2_IRQHandler>
 8002b32:	0000      	movs	r0, r0
 8002b34:	0000      	movs	r0, r0
	...

08002b38 <atan>:
 8002b38:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002b3c:	ec55 4b10 	vmov	r4, r5, d0
 8002b40:	4bc9      	ldr	r3, [pc, #804]	; (8002e68 <atan+0x330>)
 8002b42:	f025 4600 	bic.w	r6, r5, #2147483648	; 0x80000000
 8002b46:	429e      	cmp	r6, r3
 8002b48:	46aa      	mov	sl, r5
 8002b4a:	dd10      	ble.n	8002b6e <atan+0x36>
 8002b4c:	4bc7      	ldr	r3, [pc, #796]	; (8002e6c <atan+0x334>)
 8002b4e:	429e      	cmp	r6, r3
 8002b50:	f300 80b5 	bgt.w	8002cbe <atan+0x186>
 8002b54:	f000 80b0 	beq.w	8002cb8 <atan+0x180>
 8002b58:	f1ba 0f00 	cmp.w	sl, #0
 8002b5c:	f340 80f9 	ble.w	8002d52 <atan+0x21a>
 8002b60:	a1a5      	add	r1, pc, #660	; (adr r1, 8002df8 <atan+0x2c0>)
 8002b62:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002b66:	ec41 0b10 	vmov	d0, r0, r1
 8002b6a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b6e:	4bc0      	ldr	r3, [pc, #768]	; (8002e70 <atan+0x338>)
 8002b70:	429e      	cmp	r6, r3
 8002b72:	f300 80c3 	bgt.w	8002cfc <atan+0x1c4>
 8002b76:	f1a3 73de 	sub.w	r3, r3, #29097984	; 0x1bc0000
 8002b7a:	429e      	cmp	r6, r3
 8002b7c:	f340 80a9 	ble.w	8002cd2 <atan+0x19a>
 8002b80:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
 8002b84:	4622      	mov	r2, r4
 8002b86:	462b      	mov	r3, r5
 8002b88:	4620      	mov	r0, r4
 8002b8a:	4629      	mov	r1, r5
 8002b8c:	f7fd fcf4 	bl	8000578 <__aeabi_dmul>
 8002b90:	4602      	mov	r2, r0
 8002b92:	460b      	mov	r3, r1
 8002b94:	4680      	mov	r8, r0
 8002b96:	4689      	mov	r9, r1
 8002b98:	f7fd fcee 	bl	8000578 <__aeabi_dmul>
 8002b9c:	a398      	add	r3, pc, #608	; (adr r3, 8002e00 <atan+0x2c8>)
 8002b9e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002ba2:	4606      	mov	r6, r0
 8002ba4:	460f      	mov	r7, r1
 8002ba6:	f7fd fce7 	bl	8000578 <__aeabi_dmul>
 8002baa:	a397      	add	r3, pc, #604	; (adr r3, 8002e08 <atan+0x2d0>)
 8002bac:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002bb0:	f7fd fb2c 	bl	800020c <__adddf3>
 8002bb4:	4632      	mov	r2, r6
 8002bb6:	463b      	mov	r3, r7
 8002bb8:	f7fd fcde 	bl	8000578 <__aeabi_dmul>
 8002bbc:	a394      	add	r3, pc, #592	; (adr r3, 8002e10 <atan+0x2d8>)
 8002bbe:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002bc2:	f7fd fb23 	bl	800020c <__adddf3>
 8002bc6:	4632      	mov	r2, r6
 8002bc8:	463b      	mov	r3, r7
 8002bca:	f7fd fcd5 	bl	8000578 <__aeabi_dmul>
 8002bce:	a392      	add	r3, pc, #584	; (adr r3, 8002e18 <atan+0x2e0>)
 8002bd0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002bd4:	f7fd fb1a 	bl	800020c <__adddf3>
 8002bd8:	4632      	mov	r2, r6
 8002bda:	463b      	mov	r3, r7
 8002bdc:	f7fd fccc 	bl	8000578 <__aeabi_dmul>
 8002be0:	a38f      	add	r3, pc, #572	; (adr r3, 8002e20 <atan+0x2e8>)
 8002be2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002be6:	f7fd fb11 	bl	800020c <__adddf3>
 8002bea:	4632      	mov	r2, r6
 8002bec:	463b      	mov	r3, r7
 8002bee:	f7fd fcc3 	bl	8000578 <__aeabi_dmul>
 8002bf2:	a38d      	add	r3, pc, #564	; (adr r3, 8002e28 <atan+0x2f0>)
 8002bf4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002bf8:	f7fd fb08 	bl	800020c <__adddf3>
 8002bfc:	4642      	mov	r2, r8
 8002bfe:	464b      	mov	r3, r9
 8002c00:	f7fd fcba 	bl	8000578 <__aeabi_dmul>
 8002c04:	a38a      	add	r3, pc, #552	; (adr r3, 8002e30 <atan+0x2f8>)
 8002c06:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c0a:	4680      	mov	r8, r0
 8002c0c:	4689      	mov	r9, r1
 8002c0e:	4630      	mov	r0, r6
 8002c10:	4639      	mov	r1, r7
 8002c12:	f7fd fcb1 	bl	8000578 <__aeabi_dmul>
 8002c16:	a388      	add	r3, pc, #544	; (adr r3, 8002e38 <atan+0x300>)
 8002c18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c1c:	f7fd faf4 	bl	8000208 <__aeabi_dsub>
 8002c20:	4632      	mov	r2, r6
 8002c22:	463b      	mov	r3, r7
 8002c24:	f7fd fca8 	bl	8000578 <__aeabi_dmul>
 8002c28:	a385      	add	r3, pc, #532	; (adr r3, 8002e40 <atan+0x308>)
 8002c2a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c2e:	f7fd faeb 	bl	8000208 <__aeabi_dsub>
 8002c32:	4632      	mov	r2, r6
 8002c34:	463b      	mov	r3, r7
 8002c36:	f7fd fc9f 	bl	8000578 <__aeabi_dmul>
 8002c3a:	a383      	add	r3, pc, #524	; (adr r3, 8002e48 <atan+0x310>)
 8002c3c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c40:	f7fd fae2 	bl	8000208 <__aeabi_dsub>
 8002c44:	4632      	mov	r2, r6
 8002c46:	463b      	mov	r3, r7
 8002c48:	f7fd fc96 	bl	8000578 <__aeabi_dmul>
 8002c4c:	a380      	add	r3, pc, #512	; (adr r3, 8002e50 <atan+0x318>)
 8002c4e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c52:	f7fd fad9 	bl	8000208 <__aeabi_dsub>
 8002c56:	4632      	mov	r2, r6
 8002c58:	463b      	mov	r3, r7
 8002c5a:	f7fd fc8d 	bl	8000578 <__aeabi_dmul>
 8002c5e:	4602      	mov	r2, r0
 8002c60:	460b      	mov	r3, r1
 8002c62:	4640      	mov	r0, r8
 8002c64:	4649      	mov	r1, r9
 8002c66:	f7fd fad1 	bl	800020c <__adddf3>
 8002c6a:	4622      	mov	r2, r4
 8002c6c:	462b      	mov	r3, r5
 8002c6e:	f7fd fc83 	bl	8000578 <__aeabi_dmul>
 8002c72:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8002c76:	4602      	mov	r2, r0
 8002c78:	460b      	mov	r3, r1
 8002c7a:	d06e      	beq.n	8002d5a <atan+0x222>
 8002c7c:	4b7d      	ldr	r3, [pc, #500]	; (8002e74 <atan+0x33c>)
 8002c7e:	4e7e      	ldr	r6, [pc, #504]	; (8002e78 <atan+0x340>)
 8002c80:	ea4f 0bcb 	mov.w	fp, fp, lsl #3
 8002c84:	445b      	add	r3, fp
 8002c86:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002c8a:	f7fd fabd 	bl	8000208 <__aeabi_dsub>
 8002c8e:	4622      	mov	r2, r4
 8002c90:	462b      	mov	r3, r5
 8002c92:	f7fd fab9 	bl	8000208 <__aeabi_dsub>
 8002c96:	44b3      	add	fp, r6
 8002c98:	4602      	mov	r2, r0
 8002c9a:	460b      	mov	r3, r1
 8002c9c:	e9db 0100 	ldrd	r0, r1, [fp]
 8002ca0:	f7fd fab2 	bl	8000208 <__aeabi_dsub>
 8002ca4:	f1ba 0f00 	cmp.w	sl, #0
 8002ca8:	da0f      	bge.n	8002cca <atan+0x192>
 8002caa:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8002cae:	4619      	mov	r1, r3
 8002cb0:	ec41 0b10 	vmov	d0, r0, r1
 8002cb4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002cb8:	2c00      	cmp	r4, #0
 8002cba:	f43f af4d 	beq.w	8002b58 <atan+0x20>
 8002cbe:	4622      	mov	r2, r4
 8002cc0:	462b      	mov	r3, r5
 8002cc2:	4620      	mov	r0, r4
 8002cc4:	4629      	mov	r1, r5
 8002cc6:	f7fd faa1 	bl	800020c <__adddf3>
 8002cca:	ec41 0b10 	vmov	d0, r0, r1
 8002cce:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002cd2:	a361      	add	r3, pc, #388	; (adr r3, 8002e58 <atan+0x320>)
 8002cd4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002cd8:	ee10 0a10 	vmov	r0, s0
 8002cdc:	4629      	mov	r1, r5
 8002cde:	f7fd fa95 	bl	800020c <__adddf3>
 8002ce2:	2200      	movs	r2, #0
 8002ce4:	4b65      	ldr	r3, [pc, #404]	; (8002e7c <atan+0x344>)
 8002ce6:	f7fd fed7 	bl	8000a98 <__aeabi_dcmpgt>
 8002cea:	2800      	cmp	r0, #0
 8002cec:	f43f af48 	beq.w	8002b80 <atan+0x48>
 8002cf0:	4620      	mov	r0, r4
 8002cf2:	4629      	mov	r1, r5
 8002cf4:	ec41 0b10 	vmov	d0, r0, r1
 8002cf8:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002cfc:	f000 f928 	bl	8002f50 <fabs>
 8002d00:	4b5f      	ldr	r3, [pc, #380]	; (8002e80 <atan+0x348>)
 8002d02:	429e      	cmp	r6, r3
 8002d04:	ec55 4b10 	vmov	r4, r5, d0
 8002d08:	dc2f      	bgt.n	8002d6a <atan+0x232>
 8002d0a:	f5a3 2350 	sub.w	r3, r3, #851968	; 0xd0000
 8002d0e:	429e      	cmp	r6, r3
 8002d10:	dc58      	bgt.n	8002dc4 <atan+0x28c>
 8002d12:	ee10 2a10 	vmov	r2, s0
 8002d16:	ee10 0a10 	vmov	r0, s0
 8002d1a:	462b      	mov	r3, r5
 8002d1c:	4629      	mov	r1, r5
 8002d1e:	f7fd fa75 	bl	800020c <__adddf3>
 8002d22:	2200      	movs	r2, #0
 8002d24:	4b55      	ldr	r3, [pc, #340]	; (8002e7c <atan+0x344>)
 8002d26:	f7fd fa6f 	bl	8000208 <__aeabi_dsub>
 8002d2a:	2200      	movs	r2, #0
 8002d2c:	4606      	mov	r6, r0
 8002d2e:	460f      	mov	r7, r1
 8002d30:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8002d34:	4620      	mov	r0, r4
 8002d36:	4629      	mov	r1, r5
 8002d38:	f7fd fa68 	bl	800020c <__adddf3>
 8002d3c:	4602      	mov	r2, r0
 8002d3e:	460b      	mov	r3, r1
 8002d40:	4630      	mov	r0, r6
 8002d42:	4639      	mov	r1, r7
 8002d44:	f7fd fd42 	bl	80007cc <__aeabi_ddiv>
 8002d48:	f04f 0b00 	mov.w	fp, #0
 8002d4c:	4604      	mov	r4, r0
 8002d4e:	460d      	mov	r5, r1
 8002d50:	e718      	b.n	8002b84 <atan+0x4c>
 8002d52:	a143      	add	r1, pc, #268	; (adr r1, 8002e60 <atan+0x328>)
 8002d54:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002d58:	e7b7      	b.n	8002cca <atan+0x192>
 8002d5a:	4620      	mov	r0, r4
 8002d5c:	4629      	mov	r1, r5
 8002d5e:	f7fd fa53 	bl	8000208 <__aeabi_dsub>
 8002d62:	ec41 0b10 	vmov	d0, r0, r1
 8002d66:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d6a:	4b46      	ldr	r3, [pc, #280]	; (8002e84 <atan+0x34c>)
 8002d6c:	429e      	cmp	r6, r3
 8002d6e:	dc1d      	bgt.n	8002dac <atan+0x274>
 8002d70:	ee10 0a10 	vmov	r0, s0
 8002d74:	2200      	movs	r2, #0
 8002d76:	4b44      	ldr	r3, [pc, #272]	; (8002e88 <atan+0x350>)
 8002d78:	4629      	mov	r1, r5
 8002d7a:	f7fd fa45 	bl	8000208 <__aeabi_dsub>
 8002d7e:	2200      	movs	r2, #0
 8002d80:	4606      	mov	r6, r0
 8002d82:	460f      	mov	r7, r1
 8002d84:	4b40      	ldr	r3, [pc, #256]	; (8002e88 <atan+0x350>)
 8002d86:	4620      	mov	r0, r4
 8002d88:	4629      	mov	r1, r5
 8002d8a:	f7fd fbf5 	bl	8000578 <__aeabi_dmul>
 8002d8e:	2200      	movs	r2, #0
 8002d90:	4b3a      	ldr	r3, [pc, #232]	; (8002e7c <atan+0x344>)
 8002d92:	f7fd fa3b 	bl	800020c <__adddf3>
 8002d96:	4602      	mov	r2, r0
 8002d98:	460b      	mov	r3, r1
 8002d9a:	4630      	mov	r0, r6
 8002d9c:	4639      	mov	r1, r7
 8002d9e:	f7fd fd15 	bl	80007cc <__aeabi_ddiv>
 8002da2:	f04f 0b02 	mov.w	fp, #2
 8002da6:	4604      	mov	r4, r0
 8002da8:	460d      	mov	r5, r1
 8002daa:	e6eb      	b.n	8002b84 <atan+0x4c>
 8002dac:	462b      	mov	r3, r5
 8002dae:	ee10 2a10 	vmov	r2, s0
 8002db2:	2000      	movs	r0, #0
 8002db4:	4935      	ldr	r1, [pc, #212]	; (8002e8c <atan+0x354>)
 8002db6:	f7fd fd09 	bl	80007cc <__aeabi_ddiv>
 8002dba:	f04f 0b03 	mov.w	fp, #3
 8002dbe:	4604      	mov	r4, r0
 8002dc0:	460d      	mov	r5, r1
 8002dc2:	e6df      	b.n	8002b84 <atan+0x4c>
 8002dc4:	ee10 0a10 	vmov	r0, s0
 8002dc8:	2200      	movs	r2, #0
 8002dca:	4b2c      	ldr	r3, [pc, #176]	; (8002e7c <atan+0x344>)
 8002dcc:	4629      	mov	r1, r5
 8002dce:	f7fd fa1b 	bl	8000208 <__aeabi_dsub>
 8002dd2:	2200      	movs	r2, #0
 8002dd4:	4606      	mov	r6, r0
 8002dd6:	460f      	mov	r7, r1
 8002dd8:	4b28      	ldr	r3, [pc, #160]	; (8002e7c <atan+0x344>)
 8002dda:	4620      	mov	r0, r4
 8002ddc:	4629      	mov	r1, r5
 8002dde:	f7fd fa15 	bl	800020c <__adddf3>
 8002de2:	4602      	mov	r2, r0
 8002de4:	460b      	mov	r3, r1
 8002de6:	4630      	mov	r0, r6
 8002de8:	4639      	mov	r1, r7
 8002dea:	f7fd fcef 	bl	80007cc <__aeabi_ddiv>
 8002dee:	f04f 0b01 	mov.w	fp, #1
 8002df2:	4604      	mov	r4, r0
 8002df4:	460d      	mov	r5, r1
 8002df6:	e6c5      	b.n	8002b84 <atan+0x4c>
 8002df8:	54442d18 	.word	0x54442d18
 8002dfc:	3ff921fb 	.word	0x3ff921fb
 8002e00:	e322da11 	.word	0xe322da11
 8002e04:	3f90ad3a 	.word	0x3f90ad3a
 8002e08:	24760deb 	.word	0x24760deb
 8002e0c:	3fa97b4b 	.word	0x3fa97b4b
 8002e10:	a0d03d51 	.word	0xa0d03d51
 8002e14:	3fb10d66 	.word	0x3fb10d66
 8002e18:	c54c206e 	.word	0xc54c206e
 8002e1c:	3fb745cd 	.word	0x3fb745cd
 8002e20:	920083ff 	.word	0x920083ff
 8002e24:	3fc24924 	.word	0x3fc24924
 8002e28:	5555550d 	.word	0x5555550d
 8002e2c:	3fd55555 	.word	0x3fd55555
 8002e30:	2c6a6c2f 	.word	0x2c6a6c2f
 8002e34:	bfa2b444 	.word	0xbfa2b444
 8002e38:	52defd9a 	.word	0x52defd9a
 8002e3c:	3fadde2d 	.word	0x3fadde2d
 8002e40:	af749a6d 	.word	0xaf749a6d
 8002e44:	3fb3b0f2 	.word	0x3fb3b0f2
 8002e48:	fe231671 	.word	0xfe231671
 8002e4c:	3fbc71c6 	.word	0x3fbc71c6
 8002e50:	9998ebc4 	.word	0x9998ebc4
 8002e54:	3fc99999 	.word	0x3fc99999
 8002e58:	8800759c 	.word	0x8800759c
 8002e5c:	7e37e43c 	.word	0x7e37e43c
 8002e60:	54442d18 	.word	0x54442d18
 8002e64:	bff921fb 	.word	0xbff921fb
 8002e68:	440fffff 	.word	0x440fffff
 8002e6c:	7ff00000 	.word	0x7ff00000
 8002e70:	3fdbffff 	.word	0x3fdbffff
 8002e74:	08009d28 	.word	0x08009d28
 8002e78:	08009d08 	.word	0x08009d08
 8002e7c:	3ff00000 	.word	0x3ff00000
 8002e80:	3ff2ffff 	.word	0x3ff2ffff
 8002e84:	40037fff 	.word	0x40037fff
 8002e88:	3ff80000 	.word	0x3ff80000
 8002e8c:	bff00000 	.word	0xbff00000

08002e90 <cos>:
 8002e90:	b500      	push	{lr}
 8002e92:	ec51 0b10 	vmov	r0, r1, d0
 8002e96:	4a2c      	ldr	r2, [pc, #176]	; (8002f48 <cos+0xb8>)
 8002e98:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002e9c:	4293      	cmp	r3, r2
 8002e9e:	b085      	sub	sp, #20
 8002ea0:	dd20      	ble.n	8002ee4 <cos+0x54>
 8002ea2:	4a2a      	ldr	r2, [pc, #168]	; (8002f4c <cos+0xbc>)
 8002ea4:	4293      	cmp	r3, r2
 8002ea6:	dd09      	ble.n	8002ebc <cos+0x2c>
 8002ea8:	ee10 2a10 	vmov	r2, s0
 8002eac:	460b      	mov	r3, r1
 8002eae:	f7fd f9ab 	bl	8000208 <__aeabi_dsub>
 8002eb2:	ec41 0b10 	vmov	d0, r0, r1
 8002eb6:	b005      	add	sp, #20
 8002eb8:	f85d fb04 	ldr.w	pc, [sp], #4
 8002ebc:	4668      	mov	r0, sp
 8002ebe:	f000 fd83 	bl	80039c8 <__ieee754_rem_pio2>
 8002ec2:	f000 0003 	and.w	r0, r0, #3
 8002ec6:	2801      	cmp	r0, #1
 8002ec8:	d017      	beq.n	8002efa <cos+0x6a>
 8002eca:	2802      	cmp	r0, #2
 8002ecc:	d02f      	beq.n	8002f2e <cos+0x9e>
 8002ece:	b328      	cbz	r0, 8002f1c <cos+0x8c>
 8002ed0:	2001      	movs	r0, #1
 8002ed2:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002ed6:	ed9d 0b00 	vldr	d0, [sp]
 8002eda:	f001 fdb9 	bl	8004a50 <__kernel_sin>
 8002ede:	ec51 0b10 	vmov	r0, r1, d0
 8002ee2:	e7e6      	b.n	8002eb2 <cos+0x22>
 8002ee4:	ed9f 1b16 	vldr	d1, [pc, #88]	; 8002f40 <cos+0xb0>
 8002ee8:	f001 f862 	bl	8003fb0 <__kernel_cos>
 8002eec:	ec51 0b10 	vmov	r0, r1, d0
 8002ef0:	ec41 0b10 	vmov	d0, r0, r1
 8002ef4:	b005      	add	sp, #20
 8002ef6:	f85d fb04 	ldr.w	pc, [sp], #4
 8002efa:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002efe:	ed9d 0b00 	vldr	d0, [sp]
 8002f02:	f001 fda5 	bl	8004a50 <__kernel_sin>
 8002f06:	ec53 2b10 	vmov	r2, r3, d0
 8002f0a:	ee10 0a10 	vmov	r0, s0
 8002f0e:	f103 4100 	add.w	r1, r3, #2147483648	; 0x80000000
 8002f12:	ec41 0b10 	vmov	d0, r0, r1
 8002f16:	b005      	add	sp, #20
 8002f18:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f1c:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002f20:	ed9d 0b00 	vldr	d0, [sp]
 8002f24:	f001 f844 	bl	8003fb0 <__kernel_cos>
 8002f28:	ec51 0b10 	vmov	r0, r1, d0
 8002f2c:	e7c1      	b.n	8002eb2 <cos+0x22>
 8002f2e:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002f32:	ed9d 0b00 	vldr	d0, [sp]
 8002f36:	f001 f83b 	bl	8003fb0 <__kernel_cos>
 8002f3a:	e7e4      	b.n	8002f06 <cos+0x76>
 8002f3c:	f3af 8000 	nop.w
	...
 8002f48:	3fe921fb 	.word	0x3fe921fb
 8002f4c:	7fefffff 	.word	0x7fefffff

08002f50 <fabs>:
 8002f50:	ec51 0b10 	vmov	r0, r1, d0
 8002f54:	ee10 2a10 	vmov	r2, s0
 8002f58:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002f5c:	ec43 2b10 	vmov	d0, r2, r3
 8002f60:	4770      	bx	lr
 8002f62:	bf00      	nop
 8002f64:	0000      	movs	r0, r0
	...

08002f68 <sin>:
 8002f68:	b500      	push	{lr}
 8002f6a:	ec51 0b10 	vmov	r0, r1, d0
 8002f6e:	4a2c      	ldr	r2, [pc, #176]	; (8003020 <sin+0xb8>)
 8002f70:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002f74:	4293      	cmp	r3, r2
 8002f76:	b085      	sub	sp, #20
 8002f78:	dd27      	ble.n	8002fca <sin+0x62>
 8002f7a:	4a2a      	ldr	r2, [pc, #168]	; (8003024 <sin+0xbc>)
 8002f7c:	4293      	cmp	r3, r2
 8002f7e:	dd09      	ble.n	8002f94 <sin+0x2c>
 8002f80:	ee10 2a10 	vmov	r2, s0
 8002f84:	460b      	mov	r3, r1
 8002f86:	f7fd f93f 	bl	8000208 <__aeabi_dsub>
 8002f8a:	ec41 0b10 	vmov	d0, r0, r1
 8002f8e:	b005      	add	sp, #20
 8002f90:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f94:	4668      	mov	r0, sp
 8002f96:	f000 fd17 	bl	80039c8 <__ieee754_rem_pio2>
 8002f9a:	f000 0003 	and.w	r0, r0, #3
 8002f9e:	2801      	cmp	r0, #1
 8002fa0:	d01f      	beq.n	8002fe2 <sin+0x7a>
 8002fa2:	2802      	cmp	r0, #2
 8002fa4:	d030      	beq.n	8003008 <sin+0xa0>
 8002fa6:	b328      	cbz	r0, 8002ff4 <sin+0x8c>
 8002fa8:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002fac:	ed9d 0b00 	vldr	d0, [sp]
 8002fb0:	f000 fffe 	bl	8003fb0 <__kernel_cos>
 8002fb4:	ec53 2b10 	vmov	r2, r3, d0
 8002fb8:	ee10 0a10 	vmov	r0, s0
 8002fbc:	f103 4100 	add.w	r1, r3, #2147483648	; 0x80000000
 8002fc0:	ec41 0b10 	vmov	d0, r0, r1
 8002fc4:	b005      	add	sp, #20
 8002fc6:	f85d fb04 	ldr.w	pc, [sp], #4
 8002fca:	2000      	movs	r0, #0
 8002fcc:	ed9f 1b12 	vldr	d1, [pc, #72]	; 8003018 <sin+0xb0>
 8002fd0:	f001 fd3e 	bl	8004a50 <__kernel_sin>
 8002fd4:	ec51 0b10 	vmov	r0, r1, d0
 8002fd8:	ec41 0b10 	vmov	d0, r0, r1
 8002fdc:	b005      	add	sp, #20
 8002fde:	f85d fb04 	ldr.w	pc, [sp], #4
 8002fe2:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002fe6:	ed9d 0b00 	vldr	d0, [sp]
 8002fea:	f000 ffe1 	bl	8003fb0 <__kernel_cos>
 8002fee:	ec51 0b10 	vmov	r0, r1, d0
 8002ff2:	e7ca      	b.n	8002f8a <sin+0x22>
 8002ff4:	2001      	movs	r0, #1
 8002ff6:	ed9d 1b02 	vldr	d1, [sp, #8]
 8002ffa:	ed9d 0b00 	vldr	d0, [sp]
 8002ffe:	f001 fd27 	bl	8004a50 <__kernel_sin>
 8003002:	ec51 0b10 	vmov	r0, r1, d0
 8003006:	e7c0      	b.n	8002f8a <sin+0x22>
 8003008:	2001      	movs	r0, #1
 800300a:	ed9d 1b02 	vldr	d1, [sp, #8]
 800300e:	ed9d 0b00 	vldr	d0, [sp]
 8003012:	f001 fd1d 	bl	8004a50 <__kernel_sin>
 8003016:	e7cd      	b.n	8002fb4 <sin+0x4c>
	...
 8003020:	3fe921fb 	.word	0x3fe921fb
 8003024:	7fefffff 	.word	0x7fefffff

08003028 <exp>:
 8003028:	b5f0      	push	{r4, r5, r6, r7, lr}
 800302a:	ed2d 8b04 	vpush	{d8-d9}
 800302e:	eeb0 8a40 	vmov.f32	s16, s0
 8003032:	eef0 8a60 	vmov.f32	s17, s1
 8003036:	4c38      	ldr	r4, [pc, #224]	; (8003118 <exp+0xf0>)
 8003038:	b08b      	sub	sp, #44	; 0x2c
 800303a:	f000 f951 	bl	80032e0 <__ieee754_exp>
 800303e:	f994 3000 	ldrsb.w	r3, [r4]
 8003042:	eeb0 9a40 	vmov.f32	s18, s0
 8003046:	eef0 9a60 	vmov.f32	s19, s1
 800304a:	3301      	adds	r3, #1
 800304c:	d034      	beq.n	80030b8 <exp+0x90>
 800304e:	eeb0 0a48 	vmov.f32	s0, s16
 8003052:	eef0 0a68 	vmov.f32	s1, s17
 8003056:	f001 fdc5 	bl	8004be4 <finite>
 800305a:	b368      	cbz	r0, 80030b8 <exp+0x90>
 800305c:	a32a      	add	r3, pc, #168	; (adr r3, 8003108 <exp+0xe0>)
 800305e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003062:	ec51 0b18 	vmov	r0, r1, d8
 8003066:	f7fd fd17 	bl	8000a98 <__aeabi_dcmpgt>
 800306a:	4605      	mov	r5, r0
 800306c:	bb60      	cbnz	r0, 80030c8 <exp+0xa0>
 800306e:	a328      	add	r3, pc, #160	; (adr r3, 8003110 <exp+0xe8>)
 8003070:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003074:	ec51 0b18 	vmov	r0, r1, d8
 8003078:	f7fd fcf0 	bl	8000a5c <__aeabi_dcmplt>
 800307c:	b1e0      	cbz	r0, 80030b8 <exp+0x90>
 800307e:	f994 3000 	ldrsb.w	r3, [r4]
 8003082:	4a26      	ldr	r2, [pc, #152]	; (800311c <exp+0xf4>)
 8003084:	9508      	str	r5, [sp, #32]
 8003086:	2600      	movs	r6, #0
 8003088:	2700      	movs	r7, #0
 800308a:	2104      	movs	r1, #4
 800308c:	2b02      	cmp	r3, #2
 800308e:	ed8d 8b04 	vstr	d8, [sp, #16]
 8003092:	ed8d 8b02 	vstr	d8, [sp, #8]
 8003096:	e9cd 6706 	strd	r6, r7, [sp, #24]
 800309a:	e9cd 1200 	strd	r1, r2, [sp]
 800309e:	d02c      	beq.n	80030fa <exp+0xd2>
 80030a0:	4668      	mov	r0, sp
 80030a2:	f001 fe31 	bl	8004d08 <matherr>
 80030a6:	b340      	cbz	r0, 80030fa <exp+0xd2>
 80030a8:	9b08      	ldr	r3, [sp, #32]
 80030aa:	b11b      	cbz	r3, 80030b4 <exp+0x8c>
 80030ac:	f001 fed0 	bl	8004e50 <__errno>
 80030b0:	9b08      	ldr	r3, [sp, #32]
 80030b2:	6003      	str	r3, [r0, #0]
 80030b4:	ed9d 9b06 	vldr	d9, [sp, #24]
 80030b8:	eeb0 0a49 	vmov.f32	s0, s18
 80030bc:	eef0 0a69 	vmov.f32	s1, s19
 80030c0:	b00b      	add	sp, #44	; 0x2c
 80030c2:	ecbd 8b04 	vpop	{d8-d9}
 80030c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80030c8:	4a14      	ldr	r2, [pc, #80]	; (800311c <exp+0xf4>)
 80030ca:	f994 3000 	ldrsb.w	r3, [r4]
 80030ce:	9201      	str	r2, [sp, #4]
 80030d0:	2103      	movs	r1, #3
 80030d2:	2200      	movs	r2, #0
 80030d4:	ed8d 8b04 	vstr	d8, [sp, #16]
 80030d8:	ed8d 8b02 	vstr	d8, [sp, #8]
 80030dc:	9100      	str	r1, [sp, #0]
 80030de:	9208      	str	r2, [sp, #32]
 80030e0:	b92b      	cbnz	r3, 80030ee <exp+0xc6>
 80030e2:	4b0f      	ldr	r3, [pc, #60]	; (8003120 <exp+0xf8>)
 80030e4:	f04f 4260 	mov.w	r2, #3758096384	; 0xe0000000
 80030e8:	e9cd 2306 	strd	r2, r3, [sp, #24]
 80030ec:	e7d8      	b.n	80030a0 <exp+0x78>
 80030ee:	490d      	ldr	r1, [pc, #52]	; (8003124 <exp+0xfc>)
 80030f0:	2000      	movs	r0, #0
 80030f2:	2b02      	cmp	r3, #2
 80030f4:	e9cd 0106 	strd	r0, r1, [sp, #24]
 80030f8:	d1d2      	bne.n	80030a0 <exp+0x78>
 80030fa:	f001 fea9 	bl	8004e50 <__errno>
 80030fe:	2322      	movs	r3, #34	; 0x22
 8003100:	6003      	str	r3, [r0, #0]
 8003102:	e7d1      	b.n	80030a8 <exp+0x80>
 8003104:	f3af 8000 	nop.w
 8003108:	fefa39ef 	.word	0xfefa39ef
 800310c:	40862e42 	.word	0x40862e42
 8003110:	d52d3051 	.word	0xd52d3051
 8003114:	c0874910 	.word	0xc0874910
 8003118:	20000018 	.word	0x20000018
 800311c:	08009d48 	.word	0x08009d48
 8003120:	47efffff 	.word	0x47efffff
 8003124:	7ff00000 	.word	0x7ff00000

08003128 <log>:
 8003128:	b5f0      	push	{r4, r5, r6, r7, lr}
 800312a:	ed2d 8b02 	vpush	{d8}
 800312e:	b08b      	sub	sp, #44	; 0x2c
 8003130:	ec55 4b10 	vmov	r4, r5, d0
 8003134:	f000 fa6c 	bl	8003610 <__ieee754_log>
 8003138:	4b36      	ldr	r3, [pc, #216]	; (8003214 <log+0xec>)
 800313a:	eeb0 8a40 	vmov.f32	s16, s0
 800313e:	eef0 8a60 	vmov.f32	s17, s1
 8003142:	f993 6000 	ldrsb.w	r6, [r3]
 8003146:	1c73      	adds	r3, r6, #1
 8003148:	d00d      	beq.n	8003166 <log+0x3e>
 800314a:	4622      	mov	r2, r4
 800314c:	462b      	mov	r3, r5
 800314e:	4620      	mov	r0, r4
 8003150:	4629      	mov	r1, r5
 8003152:	f7fd fcab 	bl	8000aac <__aeabi_dcmpun>
 8003156:	b930      	cbnz	r0, 8003166 <log+0x3e>
 8003158:	2200      	movs	r2, #0
 800315a:	2300      	movs	r3, #0
 800315c:	4620      	mov	r0, r4
 800315e:	4629      	mov	r1, r5
 8003160:	f7fd fc9a 	bl	8000a98 <__aeabi_dcmpgt>
 8003164:	b138      	cbz	r0, 8003176 <log+0x4e>
 8003166:	eeb0 0a48 	vmov.f32	s0, s16
 800316a:	eef0 0a68 	vmov.f32	s1, s17
 800316e:	b00b      	add	sp, #44	; 0x2c
 8003170:	ecbd 8b02 	vpop	{d8}
 8003174:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003176:	4b28      	ldr	r3, [pc, #160]	; (8003218 <log+0xf0>)
 8003178:	9008      	str	r0, [sp, #32]
 800317a:	e9cd 4502 	strd	r4, r5, [sp, #8]
 800317e:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003182:	9301      	str	r3, [sp, #4]
 8003184:	b9b6      	cbnz	r6, 80031b4 <log+0x8c>
 8003186:	4f25      	ldr	r7, [pc, #148]	; (800321c <log+0xf4>)
 8003188:	f04f 4660 	mov.w	r6, #3758096384	; 0xe0000000
 800318c:	4620      	mov	r0, r4
 800318e:	4629      	mov	r1, r5
 8003190:	2200      	movs	r2, #0
 8003192:	2300      	movs	r3, #0
 8003194:	e9cd 6706 	strd	r6, r7, [sp, #24]
 8003198:	f7fd fc56 	bl	8000a48 <__aeabi_dcmpeq>
 800319c:	b388      	cbz	r0, 8003202 <log+0xda>
 800319e:	2302      	movs	r3, #2
 80031a0:	9300      	str	r3, [sp, #0]
 80031a2:	4668      	mov	r0, sp
 80031a4:	f001 fdb0 	bl	8004d08 <matherr>
 80031a8:	b198      	cbz	r0, 80031d2 <log+0xaa>
 80031aa:	9b08      	ldr	r3, [sp, #32]
 80031ac:	b9b3      	cbnz	r3, 80031dc <log+0xb4>
 80031ae:	ed9d 8b06 	vldr	d8, [sp, #24]
 80031b2:	e7d8      	b.n	8003166 <log+0x3e>
 80031b4:	4b1a      	ldr	r3, [pc, #104]	; (8003220 <log+0xf8>)
 80031b6:	2200      	movs	r2, #0
 80031b8:	e9cd 2306 	strd	r2, r3, [sp, #24]
 80031bc:	4620      	mov	r0, r4
 80031be:	4629      	mov	r1, r5
 80031c0:	2200      	movs	r2, #0
 80031c2:	2300      	movs	r3, #0
 80031c4:	f7fd fc40 	bl	8000a48 <__aeabi_dcmpeq>
 80031c8:	b168      	cbz	r0, 80031e6 <log+0xbe>
 80031ca:	2302      	movs	r3, #2
 80031cc:	429e      	cmp	r6, r3
 80031ce:	9300      	str	r3, [sp, #0]
 80031d0:	d1e7      	bne.n	80031a2 <log+0x7a>
 80031d2:	f001 fe3d 	bl	8004e50 <__errno>
 80031d6:	2322      	movs	r3, #34	; 0x22
 80031d8:	6003      	str	r3, [r0, #0]
 80031da:	e7e6      	b.n	80031aa <log+0x82>
 80031dc:	f001 fe38 	bl	8004e50 <__errno>
 80031e0:	9b08      	ldr	r3, [sp, #32]
 80031e2:	6003      	str	r3, [r0, #0]
 80031e4:	e7e3      	b.n	80031ae <log+0x86>
 80031e6:	2301      	movs	r3, #1
 80031e8:	2e02      	cmp	r6, #2
 80031ea:	9300      	str	r3, [sp, #0]
 80031ec:	d10b      	bne.n	8003206 <log+0xde>
 80031ee:	f001 fe2f 	bl	8004e50 <__errno>
 80031f2:	2321      	movs	r3, #33	; 0x21
 80031f4:	6003      	str	r3, [r0, #0]
 80031f6:	480b      	ldr	r0, [pc, #44]	; (8003224 <log+0xfc>)
 80031f8:	f001 fd8a 	bl	8004d10 <nan>
 80031fc:	ed8d 0b06 	vstr	d0, [sp, #24]
 8003200:	e7d3      	b.n	80031aa <log+0x82>
 8003202:	2301      	movs	r3, #1
 8003204:	9300      	str	r3, [sp, #0]
 8003206:	4668      	mov	r0, sp
 8003208:	f001 fd7e 	bl	8004d08 <matherr>
 800320c:	2800      	cmp	r0, #0
 800320e:	d1f2      	bne.n	80031f6 <log+0xce>
 8003210:	e7ed      	b.n	80031ee <log+0xc6>
 8003212:	bf00      	nop
 8003214:	20000018 	.word	0x20000018
 8003218:	08009d4c 	.word	0x08009d4c
 800321c:	c7efffff 	.word	0xc7efffff
 8003220:	fff00000 	.word	0xfff00000
 8003224:	08009f9c 	.word	0x08009f9c

08003228 <sqrt>:
 8003228:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800322c:	ed2d 8b02 	vpush	{d8}
 8003230:	b08b      	sub	sp, #44	; 0x2c
 8003232:	ec55 4b10 	vmov	r4, r5, d0
 8003236:	f000 fdf1 	bl	8003e1c <__ieee754_sqrt>
 800323a:	4b27      	ldr	r3, [pc, #156]	; (80032d8 <sqrt+0xb0>)
 800323c:	eeb0 8a40 	vmov.f32	s16, s0
 8003240:	eef0 8a60 	vmov.f32	s17, s1
 8003244:	f993 6000 	ldrsb.w	r6, [r3]
 8003248:	1c73      	adds	r3, r6, #1
 800324a:	d012      	beq.n	8003272 <sqrt+0x4a>
 800324c:	4622      	mov	r2, r4
 800324e:	462b      	mov	r3, r5
 8003250:	4620      	mov	r0, r4
 8003252:	4629      	mov	r1, r5
 8003254:	f7fd fc2a 	bl	8000aac <__aeabi_dcmpun>
 8003258:	4607      	mov	r7, r0
 800325a:	b950      	cbnz	r0, 8003272 <sqrt+0x4a>
 800325c:	f04f 0800 	mov.w	r8, #0
 8003260:	f04f 0900 	mov.w	r9, #0
 8003264:	4620      	mov	r0, r4
 8003266:	4629      	mov	r1, r5
 8003268:	4642      	mov	r2, r8
 800326a:	464b      	mov	r3, r9
 800326c:	f7fd fbf6 	bl	8000a5c <__aeabi_dcmplt>
 8003270:	b940      	cbnz	r0, 8003284 <sqrt+0x5c>
 8003272:	eeb0 0a48 	vmov.f32	s0, s16
 8003276:	eef0 0a68 	vmov.f32	s1, s17
 800327a:	b00b      	add	sp, #44	; 0x2c
 800327c:	ecbd 8b02 	vpop	{d8}
 8003280:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8003284:	2201      	movs	r2, #1
 8003286:	4b15      	ldr	r3, [pc, #84]	; (80032dc <sqrt+0xb4>)
 8003288:	9708      	str	r7, [sp, #32]
 800328a:	9200      	str	r2, [sp, #0]
 800328c:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8003290:	e9cd 4502 	strd	r4, r5, [sp, #8]
 8003294:	9301      	str	r3, [sp, #4]
 8003296:	b196      	cbz	r6, 80032be <sqrt+0x96>
 8003298:	4642      	mov	r2, r8
 800329a:	464b      	mov	r3, r9
 800329c:	4640      	mov	r0, r8
 800329e:	4649      	mov	r1, r9
 80032a0:	f7fd fa94 	bl	80007cc <__aeabi_ddiv>
 80032a4:	2e02      	cmp	r6, #2
 80032a6:	e9cd 0106 	strd	r0, r1, [sp, #24]
 80032aa:	d10a      	bne.n	80032c2 <sqrt+0x9a>
 80032ac:	f001 fdd0 	bl	8004e50 <__errno>
 80032b0:	2321      	movs	r3, #33	; 0x21
 80032b2:	6003      	str	r3, [r0, #0]
 80032b4:	9b08      	ldr	r3, [sp, #32]
 80032b6:	b953      	cbnz	r3, 80032ce <sqrt+0xa6>
 80032b8:	ed9d 8b06 	vldr	d8, [sp, #24]
 80032bc:	e7d9      	b.n	8003272 <sqrt+0x4a>
 80032be:	e9cd 8906 	strd	r8, r9, [sp, #24]
 80032c2:	4668      	mov	r0, sp
 80032c4:	f001 fd20 	bl	8004d08 <matherr>
 80032c8:	2800      	cmp	r0, #0
 80032ca:	d1f3      	bne.n	80032b4 <sqrt+0x8c>
 80032cc:	e7ee      	b.n	80032ac <sqrt+0x84>
 80032ce:	f001 fdbf 	bl	8004e50 <__errno>
 80032d2:	9b08      	ldr	r3, [sp, #32]
 80032d4:	6003      	str	r3, [r0, #0]
 80032d6:	e7ef      	b.n	80032b8 <sqrt+0x90>
 80032d8:	20000018 	.word	0x20000018
 80032dc:	08009d50 	.word	0x08009d50

080032e0 <__ieee754_exp>:
 80032e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80032e4:	ec55 4b10 	vmov	r4, r5, d0
 80032e8:	49bf      	ldr	r1, [pc, #764]	; (80035e8 <__ieee754_exp+0x308>)
 80032ea:	f025 4200 	bic.w	r2, r5, #2147483648	; 0x80000000
 80032ee:	428a      	cmp	r2, r1
 80032f0:	b084      	sub	sp, #16
 80032f2:	ea4f 76d5 	mov.w	r6, r5, lsr #31
 80032f6:	d912      	bls.n	800331e <__ieee754_exp+0x3e>
 80032f8:	49bc      	ldr	r1, [pc, #752]	; (80035ec <__ieee754_exp+0x30c>)
 80032fa:	428a      	cmp	r2, r1
 80032fc:	f240 808e 	bls.w	800341c <__ieee754_exp+0x13c>
 8003300:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8003304:	4323      	orrs	r3, r4
 8003306:	ee10 2a10 	vmov	r2, s0
 800330a:	f040 8100 	bne.w	800350e <__ieee754_exp+0x22e>
 800330e:	2e00      	cmp	r6, #0
 8003310:	f000 8081 	beq.w	8003416 <__ieee754_exp+0x136>
 8003314:	ed9f 0b9c 	vldr	d0, [pc, #624]	; 8003588 <__ieee754_exp+0x2a8>
 8003318:	b004      	add	sp, #16
 800331a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800331e:	4bb4      	ldr	r3, [pc, #720]	; (80035f0 <__ieee754_exp+0x310>)
 8003320:	429a      	cmp	r2, r3
 8003322:	f200 80bb 	bhi.w	800349c <__ieee754_exp+0x1bc>
 8003326:	4bb3      	ldr	r3, [pc, #716]	; (80035f4 <__ieee754_exp+0x314>)
 8003328:	429a      	cmp	r2, r3
 800332a:	f240 80d9 	bls.w	80034e0 <__ieee754_exp+0x200>
 800332e:	f04f 0a00 	mov.w	sl, #0
 8003332:	4622      	mov	r2, r4
 8003334:	462b      	mov	r3, r5
 8003336:	4620      	mov	r0, r4
 8003338:	4629      	mov	r1, r5
 800333a:	f7fd f91d 	bl	8000578 <__aeabi_dmul>
 800333e:	a394      	add	r3, pc, #592	; (adr r3, 8003590 <__ieee754_exp+0x2b0>)
 8003340:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003344:	4606      	mov	r6, r0
 8003346:	460f      	mov	r7, r1
 8003348:	f7fd f916 	bl	8000578 <__aeabi_dmul>
 800334c:	a392      	add	r3, pc, #584	; (adr r3, 8003598 <__ieee754_exp+0x2b8>)
 800334e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003352:	f7fc ff59 	bl	8000208 <__aeabi_dsub>
 8003356:	4632      	mov	r2, r6
 8003358:	463b      	mov	r3, r7
 800335a:	f7fd f90d 	bl	8000578 <__aeabi_dmul>
 800335e:	a390      	add	r3, pc, #576	; (adr r3, 80035a0 <__ieee754_exp+0x2c0>)
 8003360:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003364:	f7fc ff52 	bl	800020c <__adddf3>
 8003368:	4632      	mov	r2, r6
 800336a:	463b      	mov	r3, r7
 800336c:	f7fd f904 	bl	8000578 <__aeabi_dmul>
 8003370:	a38d      	add	r3, pc, #564	; (adr r3, 80035a8 <__ieee754_exp+0x2c8>)
 8003372:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003376:	f7fc ff47 	bl	8000208 <__aeabi_dsub>
 800337a:	4632      	mov	r2, r6
 800337c:	463b      	mov	r3, r7
 800337e:	f7fd f8fb 	bl	8000578 <__aeabi_dmul>
 8003382:	a38b      	add	r3, pc, #556	; (adr r3, 80035b0 <__ieee754_exp+0x2d0>)
 8003384:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003388:	f7fc ff40 	bl	800020c <__adddf3>
 800338c:	4632      	mov	r2, r6
 800338e:	463b      	mov	r3, r7
 8003390:	f7fd f8f2 	bl	8000578 <__aeabi_dmul>
 8003394:	4602      	mov	r2, r0
 8003396:	460b      	mov	r3, r1
 8003398:	4620      	mov	r0, r4
 800339a:	4629      	mov	r1, r5
 800339c:	f7fc ff34 	bl	8000208 <__aeabi_dsub>
 80033a0:	4602      	mov	r2, r0
 80033a2:	460b      	mov	r3, r1
 80033a4:	4606      	mov	r6, r0
 80033a6:	460f      	mov	r7, r1
 80033a8:	4620      	mov	r0, r4
 80033aa:	4629      	mov	r1, r5
 80033ac:	f7fd f8e4 	bl	8000578 <__aeabi_dmul>
 80033b0:	4680      	mov	r8, r0
 80033b2:	4689      	mov	r9, r1
 80033b4:	f1ba 0f00 	cmp.w	sl, #0
 80033b8:	f000 80bf 	beq.w	800353a <__ieee754_exp+0x25a>
 80033bc:	4632      	mov	r2, r6
 80033be:	463b      	mov	r3, r7
 80033c0:	2000      	movs	r0, #0
 80033c2:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 80033c6:	f7fc ff1f 	bl	8000208 <__aeabi_dsub>
 80033ca:	4602      	mov	r2, r0
 80033cc:	460b      	mov	r3, r1
 80033ce:	4640      	mov	r0, r8
 80033d0:	4649      	mov	r1, r9
 80033d2:	f7fd f9fb 	bl	80007cc <__aeabi_ddiv>
 80033d6:	4602      	mov	r2, r0
 80033d8:	460b      	mov	r3, r1
 80033da:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80033de:	f7fc ff13 	bl	8000208 <__aeabi_dsub>
 80033e2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80033e6:	f7fc ff0f 	bl	8000208 <__aeabi_dsub>
 80033ea:	460b      	mov	r3, r1
 80033ec:	4602      	mov	r2, r0
 80033ee:	4982      	ldr	r1, [pc, #520]	; (80035f8 <__ieee754_exp+0x318>)
 80033f0:	2000      	movs	r0, #0
 80033f2:	f7fc ff09 	bl	8000208 <__aeabi_dsub>
 80033f6:	f46f 737f 	mvn.w	r3, #1020	; 0x3fc
 80033fa:	459a      	cmp	sl, r3
 80033fc:	f280 80b9 	bge.w	8003572 <__ieee754_exp+0x292>
 8003400:	f50a 7a7a 	add.w	sl, sl, #1000	; 0x3e8
 8003404:	eb01 510a 	add.w	r1, r1, sl, lsl #20
 8003408:	2200      	movs	r2, #0
 800340a:	f04f 73b8 	mov.w	r3, #24117248	; 0x1700000
 800340e:	f7fd f8b3 	bl	8000578 <__aeabi_dmul>
 8003412:	ec41 0b10 	vmov	d0, r0, r1
 8003416:	b004      	add	sp, #16
 8003418:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800341c:	a366      	add	r3, pc, #408	; (adr r3, 80035b8 <__ieee754_exp+0x2d8>)
 800341e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003422:	ee10 0a10 	vmov	r0, s0
 8003426:	4629      	mov	r1, r5
 8003428:	f7fd fb36 	bl	8000a98 <__aeabi_dcmpgt>
 800342c:	2800      	cmp	r0, #0
 800342e:	d178      	bne.n	8003522 <__ieee754_exp+0x242>
 8003430:	a363      	add	r3, pc, #396	; (adr r3, 80035c0 <__ieee754_exp+0x2e0>)
 8003432:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003436:	4620      	mov	r0, r4
 8003438:	4629      	mov	r1, r5
 800343a:	f7fd fb0f 	bl	8000a5c <__aeabi_dcmplt>
 800343e:	2800      	cmp	r0, #0
 8003440:	f47f af68 	bne.w	8003314 <__ieee754_exp+0x34>
 8003444:	496d      	ldr	r1, [pc, #436]	; (80035fc <__ieee754_exp+0x31c>)
 8003446:	a360      	add	r3, pc, #384	; (adr r3, 80035c8 <__ieee754_exp+0x2e8>)
 8003448:	e9d3 2300 	ldrd	r2, r3, [r3]
 800344c:	eb01 06c6 	add.w	r6, r1, r6, lsl #3
 8003450:	4620      	mov	r0, r4
 8003452:	4629      	mov	r1, r5
 8003454:	f7fd f890 	bl	8000578 <__aeabi_dmul>
 8003458:	e9d6 2300 	ldrd	r2, r3, [r6]
 800345c:	f7fc fed6 	bl	800020c <__adddf3>
 8003460:	f7fd fb3a 	bl	8000ad8 <__aeabi_d2iz>
 8003464:	4682      	mov	sl, r0
 8003466:	f7fd f81d 	bl	80004a4 <__aeabi_i2d>
 800346a:	a359      	add	r3, pc, #356	; (adr r3, 80035d0 <__ieee754_exp+0x2f0>)
 800346c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003470:	4606      	mov	r6, r0
 8003472:	460f      	mov	r7, r1
 8003474:	f7fd f880 	bl	8000578 <__aeabi_dmul>
 8003478:	4602      	mov	r2, r0
 800347a:	460b      	mov	r3, r1
 800347c:	4620      	mov	r0, r4
 800347e:	4629      	mov	r1, r5
 8003480:	f7fc fec2 	bl	8000208 <__aeabi_dsub>
 8003484:	a354      	add	r3, pc, #336	; (adr r3, 80035d8 <__ieee754_exp+0x2f8>)
 8003486:	e9d3 2300 	ldrd	r2, r3, [r3]
 800348a:	e9cd 0100 	strd	r0, r1, [sp]
 800348e:	4630      	mov	r0, r6
 8003490:	4639      	mov	r1, r7
 8003492:	f7fd f871 	bl	8000578 <__aeabi_dmul>
 8003496:	e9cd 0102 	strd	r0, r1, [sp, #8]
 800349a:	e018      	b.n	80034ce <__ieee754_exp+0x1ee>
 800349c:	4b58      	ldr	r3, [pc, #352]	; (8003600 <__ieee754_exp+0x320>)
 800349e:	429a      	cmp	r2, r3
 80034a0:	d8d0      	bhi.n	8003444 <__ieee754_exp+0x164>
 80034a2:	4b58      	ldr	r3, [pc, #352]	; (8003604 <__ieee754_exp+0x324>)
 80034a4:	00f7      	lsls	r7, r6, #3
 80034a6:	443b      	add	r3, r7
 80034a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80034ac:	ee10 0a10 	vmov	r0, s0
 80034b0:	4629      	mov	r1, r5
 80034b2:	f7fc fea9 	bl	8000208 <__aeabi_dsub>
 80034b6:	4b54      	ldr	r3, [pc, #336]	; (8003608 <__ieee754_exp+0x328>)
 80034b8:	443b      	add	r3, r7
 80034ba:	ed93 7b00 	vldr	d7, [r3]
 80034be:	e9cd 0100 	strd	r0, r1, [sp]
 80034c2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80034c6:	f1c6 0a01 	rsb	sl, r6, #1
 80034ca:	ebaa 0a06 	sub.w	sl, sl, r6
 80034ce:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80034d2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80034d6:	f7fc fe97 	bl	8000208 <__aeabi_dsub>
 80034da:	4604      	mov	r4, r0
 80034dc:	460d      	mov	r5, r1
 80034de:	e728      	b.n	8003332 <__ieee754_exp+0x52>
 80034e0:	a33f      	add	r3, pc, #252	; (adr r3, 80035e0 <__ieee754_exp+0x300>)
 80034e2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80034e6:	ee10 0a10 	vmov	r0, s0
 80034ea:	4629      	mov	r1, r5
 80034ec:	f7fc fe8e 	bl	800020c <__adddf3>
 80034f0:	2200      	movs	r2, #0
 80034f2:	4b41      	ldr	r3, [pc, #260]	; (80035f8 <__ieee754_exp+0x318>)
 80034f4:	f7fd fad0 	bl	8000a98 <__aeabi_dcmpgt>
 80034f8:	2800      	cmp	r0, #0
 80034fa:	d041      	beq.n	8003580 <__ieee754_exp+0x2a0>
 80034fc:	4620      	mov	r0, r4
 80034fe:	4629      	mov	r1, r5
 8003500:	2200      	movs	r2, #0
 8003502:	4b3d      	ldr	r3, [pc, #244]	; (80035f8 <__ieee754_exp+0x318>)
 8003504:	f7fc fe82 	bl	800020c <__adddf3>
 8003508:	ec41 0b10 	vmov	d0, r0, r1
 800350c:	e783      	b.n	8003416 <__ieee754_exp+0x136>
 800350e:	462b      	mov	r3, r5
 8003510:	4620      	mov	r0, r4
 8003512:	4629      	mov	r1, r5
 8003514:	f7fc fe7a 	bl	800020c <__adddf3>
 8003518:	ec41 0b10 	vmov	d0, r0, r1
 800351c:	b004      	add	sp, #16
 800351e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003522:	a32f      	add	r3, pc, #188	; (adr r3, 80035e0 <__ieee754_exp+0x300>)
 8003524:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003528:	4610      	mov	r0, r2
 800352a:	4619      	mov	r1, r3
 800352c:	f7fd f824 	bl	8000578 <__aeabi_dmul>
 8003530:	ec41 0b10 	vmov	d0, r0, r1
 8003534:	b004      	add	sp, #16
 8003536:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800353a:	4630      	mov	r0, r6
 800353c:	4639      	mov	r1, r7
 800353e:	2200      	movs	r2, #0
 8003540:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8003544:	f7fc fe60 	bl	8000208 <__aeabi_dsub>
 8003548:	4602      	mov	r2, r0
 800354a:	460b      	mov	r3, r1
 800354c:	4640      	mov	r0, r8
 800354e:	4649      	mov	r1, r9
 8003550:	f7fd f93c 	bl	80007cc <__aeabi_ddiv>
 8003554:	4622      	mov	r2, r4
 8003556:	462b      	mov	r3, r5
 8003558:	f7fc fe56 	bl	8000208 <__aeabi_dsub>
 800355c:	4602      	mov	r2, r0
 800355e:	460b      	mov	r3, r1
 8003560:	2000      	movs	r0, #0
 8003562:	4925      	ldr	r1, [pc, #148]	; (80035f8 <__ieee754_exp+0x318>)
 8003564:	f7fc fe50 	bl	8000208 <__aeabi_dsub>
 8003568:	ec41 0b10 	vmov	d0, r0, r1
 800356c:	b004      	add	sp, #16
 800356e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003572:	eb01 510a 	add.w	r1, r1, sl, lsl #20
 8003576:	ec41 0b10 	vmov	d0, r0, r1
 800357a:	b004      	add	sp, #16
 800357c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003580:	4682      	mov	sl, r0
 8003582:	e6d6      	b.n	8003332 <__ieee754_exp+0x52>
 8003584:	f3af 8000 	nop.w
	...
 8003590:	72bea4d0 	.word	0x72bea4d0
 8003594:	3e663769 	.word	0x3e663769
 8003598:	c5d26bf1 	.word	0xc5d26bf1
 800359c:	3ebbbd41 	.word	0x3ebbbd41
 80035a0:	af25de2c 	.word	0xaf25de2c
 80035a4:	3f11566a 	.word	0x3f11566a
 80035a8:	16bebd93 	.word	0x16bebd93
 80035ac:	3f66c16c 	.word	0x3f66c16c
 80035b0:	5555553e 	.word	0x5555553e
 80035b4:	3fc55555 	.word	0x3fc55555
 80035b8:	fefa39ef 	.word	0xfefa39ef
 80035bc:	40862e42 	.word	0x40862e42
 80035c0:	d52d3051 	.word	0xd52d3051
 80035c4:	c0874910 	.word	0xc0874910
 80035c8:	652b82fe 	.word	0x652b82fe
 80035cc:	3ff71547 	.word	0x3ff71547
 80035d0:	fee00000 	.word	0xfee00000
 80035d4:	3fe62e42 	.word	0x3fe62e42
 80035d8:	35793c76 	.word	0x35793c76
 80035dc:	3dea39ef 	.word	0x3dea39ef
 80035e0:	8800759c 	.word	0x8800759c
 80035e4:	7e37e43c 	.word	0x7e37e43c
 80035e8:	40862e41 	.word	0x40862e41
 80035ec:	7fefffff 	.word	0x7fefffff
 80035f0:	3fd62e42 	.word	0x3fd62e42
 80035f4:	3e2fffff 	.word	0x3e2fffff
 80035f8:	3ff00000 	.word	0x3ff00000
 80035fc:	08009d58 	.word	0x08009d58
 8003600:	3ff0a2b1 	.word	0x3ff0a2b1
 8003604:	08009d68 	.word	0x08009d68
 8003608:	08009d78 	.word	0x08009d78
 800360c:	00000000 	.word	0x00000000

08003610 <__ieee754_log>:
 8003610:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003614:	ec51 0b10 	vmov	r0, r1, d0
 8003618:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800361c:	b085      	sub	sp, #20
 800361e:	460b      	mov	r3, r1
 8003620:	f280 80ce 	bge.w	80037c0 <__ieee754_log+0x1b0>
 8003624:	f021 4200 	bic.w	r2, r1, #2147483648	; 0x80000000
 8003628:	4302      	orrs	r2, r0
 800362a:	f000 80d8 	beq.w	80037de <__ieee754_log+0x1ce>
 800362e:	2900      	cmp	r1, #0
 8003630:	f2c0 80ea 	blt.w	8003808 <__ieee754_log+0x1f8>
 8003634:	2200      	movs	r2, #0
 8003636:	4bde      	ldr	r3, [pc, #888]	; (80039b0 <__ieee754_log+0x3a0>)
 8003638:	f7fc ff9e 	bl	8000578 <__aeabi_dmul>
 800363c:	4add      	ldr	r2, [pc, #884]	; (80039b4 <__ieee754_log+0x3a4>)
 800363e:	460b      	mov	r3, r1
 8003640:	4293      	cmp	r3, r2
 8003642:	f06f 0735 	mvn.w	r7, #53	; 0x35
 8003646:	f300 80c1 	bgt.w	80037cc <__ieee754_log+0x1bc>
 800364a:	f3c3 0513 	ubfx	r5, r3, #0, #20
 800364e:	f505 2615 	add.w	r6, r5, #610304	; 0x95000
 8003652:	f606 7664 	addw	r6, r6, #3940	; 0xf64
 8003656:	f406 1680 	and.w	r6, r6, #1048576	; 0x100000
 800365a:	f086 527f 	eor.w	r2, r6, #1069547520	; 0x3fc00000
 800365e:	f482 1240 	eor.w	r2, r2, #3145728	; 0x300000
 8003662:	ea42 0105 	orr.w	r1, r2, r5
 8003666:	151c      	asrs	r4, r3, #20
 8003668:	2200      	movs	r2, #0
 800366a:	4bd3      	ldr	r3, [pc, #844]	; (80039b8 <__ieee754_log+0x3a8>)
 800366c:	f7fc fdcc 	bl	8000208 <__aeabi_dsub>
 8003670:	1cab      	adds	r3, r5, #2
 8003672:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8003676:	f3c3 0313 	ubfx	r3, r3, #0, #20
 800367a:	443c      	add	r4, r7
 800367c:	2b02      	cmp	r3, #2
 800367e:	eb04 5416 	add.w	r4, r4, r6, lsr #20
 8003682:	4682      	mov	sl, r0
 8003684:	468b      	mov	fp, r1
 8003686:	f04f 0200 	mov.w	r2, #0
 800368a:	f340 80b3 	ble.w	80037f4 <__ieee754_log+0x1e4>
 800368e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8003692:	f7fc fdbb 	bl	800020c <__adddf3>
 8003696:	4602      	mov	r2, r0
 8003698:	460b      	mov	r3, r1
 800369a:	4650      	mov	r0, sl
 800369c:	4659      	mov	r1, fp
 800369e:	f7fd f895 	bl	80007cc <__aeabi_ddiv>
 80036a2:	4606      	mov	r6, r0
 80036a4:	4620      	mov	r0, r4
 80036a6:	460f      	mov	r7, r1
 80036a8:	f7fc fefc 	bl	80004a4 <__aeabi_i2d>
 80036ac:	4632      	mov	r2, r6
 80036ae:	e9cd 0102 	strd	r0, r1, [sp, #8]
 80036b2:	463b      	mov	r3, r7
 80036b4:	4630      	mov	r0, r6
 80036b6:	4639      	mov	r1, r7
 80036b8:	e9cd 6700 	strd	r6, r7, [sp]
 80036bc:	f7fc ff5c 	bl	8000578 <__aeabi_dmul>
 80036c0:	4602      	mov	r2, r0
 80036c2:	460b      	mov	r3, r1
 80036c4:	4680      	mov	r8, r0
 80036c6:	4689      	mov	r9, r1
 80036c8:	f7fc ff56 	bl	8000578 <__aeabi_dmul>
 80036cc:	a3a2      	add	r3, pc, #648	; (adr r3, 8003958 <__ieee754_log+0x348>)
 80036ce:	e9d3 2300 	ldrd	r2, r3, [r3]
 80036d2:	4606      	mov	r6, r0
 80036d4:	460f      	mov	r7, r1
 80036d6:	f7fc ff4f 	bl	8000578 <__aeabi_dmul>
 80036da:	a3a1      	add	r3, pc, #644	; (adr r3, 8003960 <__ieee754_log+0x350>)
 80036dc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80036e0:	f7fc fd94 	bl	800020c <__adddf3>
 80036e4:	4632      	mov	r2, r6
 80036e6:	463b      	mov	r3, r7
 80036e8:	f7fc ff46 	bl	8000578 <__aeabi_dmul>
 80036ec:	a39e      	add	r3, pc, #632	; (adr r3, 8003968 <__ieee754_log+0x358>)
 80036ee:	e9d3 2300 	ldrd	r2, r3, [r3]
 80036f2:	f7fc fd8b 	bl	800020c <__adddf3>
 80036f6:	4632      	mov	r2, r6
 80036f8:	463b      	mov	r3, r7
 80036fa:	f7fc ff3d 	bl	8000578 <__aeabi_dmul>
 80036fe:	a39c      	add	r3, pc, #624	; (adr r3, 8003970 <__ieee754_log+0x360>)
 8003700:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003704:	f7fc fd82 	bl	800020c <__adddf3>
 8003708:	4642      	mov	r2, r8
 800370a:	464b      	mov	r3, r9
 800370c:	f7fc ff34 	bl	8000578 <__aeabi_dmul>
 8003710:	a399      	add	r3, pc, #612	; (adr r3, 8003978 <__ieee754_log+0x368>)
 8003712:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003716:	4680      	mov	r8, r0
 8003718:	4689      	mov	r9, r1
 800371a:	4630      	mov	r0, r6
 800371c:	4639      	mov	r1, r7
 800371e:	f7fc ff2b 	bl	8000578 <__aeabi_dmul>
 8003722:	a397      	add	r3, pc, #604	; (adr r3, 8003980 <__ieee754_log+0x370>)
 8003724:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003728:	f7fc fd70 	bl	800020c <__adddf3>
 800372c:	4632      	mov	r2, r6
 800372e:	463b      	mov	r3, r7
 8003730:	f7fc ff22 	bl	8000578 <__aeabi_dmul>
 8003734:	a394      	add	r3, pc, #592	; (adr r3, 8003988 <__ieee754_log+0x378>)
 8003736:	e9d3 2300 	ldrd	r2, r3, [r3]
 800373a:	f7fc fd67 	bl	800020c <__adddf3>
 800373e:	4632      	mov	r2, r6
 8003740:	463b      	mov	r3, r7
 8003742:	f7fc ff19 	bl	8000578 <__aeabi_dmul>
 8003746:	460b      	mov	r3, r1
 8003748:	4602      	mov	r2, r0
 800374a:	4649      	mov	r1, r9
 800374c:	4640      	mov	r0, r8
 800374e:	f7fc fd5d 	bl	800020c <__adddf3>
 8003752:	f5a5 23c2 	sub.w	r3, r5, #397312	; 0x61000
 8003756:	f5c5 25d7 	rsb	r5, r5, #440320	; 0x6b800
 800375a:	f2a3 437a 	subw	r3, r3, #1146	; 0x47a
 800375e:	3551      	adds	r5, #81	; 0x51
 8003760:	431d      	orrs	r5, r3
 8003762:	2d00      	cmp	r5, #0
 8003764:	4606      	mov	r6, r0
 8003766:	460f      	mov	r7, r1
 8003768:	f340 808f 	ble.w	800388a <__ieee754_log+0x27a>
 800376c:	2200      	movs	r2, #0
 800376e:	4b93      	ldr	r3, [pc, #588]	; (80039bc <__ieee754_log+0x3ac>)
 8003770:	4650      	mov	r0, sl
 8003772:	4659      	mov	r1, fp
 8003774:	f7fc ff00 	bl	8000578 <__aeabi_dmul>
 8003778:	4652      	mov	r2, sl
 800377a:	465b      	mov	r3, fp
 800377c:	f7fc fefc 	bl	8000578 <__aeabi_dmul>
 8003780:	4602      	mov	r2, r0
 8003782:	460b      	mov	r3, r1
 8003784:	4680      	mov	r8, r0
 8003786:	4689      	mov	r9, r1
 8003788:	4630      	mov	r0, r6
 800378a:	4639      	mov	r1, r7
 800378c:	f7fc fd3e 	bl	800020c <__adddf3>
 8003790:	e9dd 2300 	ldrd	r2, r3, [sp]
 8003794:	f7fc fef0 	bl	8000578 <__aeabi_dmul>
 8003798:	4606      	mov	r6, r0
 800379a:	460f      	mov	r7, r1
 800379c:	2c00      	cmp	r4, #0
 800379e:	f040 808b 	bne.w	80038b8 <__ieee754_log+0x2a8>
 80037a2:	4602      	mov	r2, r0
 80037a4:	460b      	mov	r3, r1
 80037a6:	4640      	mov	r0, r8
 80037a8:	4649      	mov	r1, r9
 80037aa:	f7fc fd2d 	bl	8000208 <__aeabi_dsub>
 80037ae:	4602      	mov	r2, r0
 80037b0:	460b      	mov	r3, r1
 80037b2:	4650      	mov	r0, sl
 80037b4:	4659      	mov	r1, fp
 80037b6:	f7fc fd27 	bl	8000208 <__aeabi_dsub>
 80037ba:	ec41 0b10 	vmov	d0, r0, r1
 80037be:	e00b      	b.n	80037d8 <__ieee754_log+0x1c8>
 80037c0:	4a7c      	ldr	r2, [pc, #496]	; (80039b4 <__ieee754_log+0x3a4>)
 80037c2:	4293      	cmp	r3, r2
 80037c4:	f04f 0700 	mov.w	r7, #0
 80037c8:	f77f af3f 	ble.w	800364a <__ieee754_log+0x3a>
 80037cc:	4602      	mov	r2, r0
 80037ce:	460b      	mov	r3, r1
 80037d0:	f7fc fd1c 	bl	800020c <__adddf3>
 80037d4:	ec41 0b10 	vmov	d0, r0, r1
 80037d8:	b005      	add	sp, #20
 80037da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80037de:	2200      	movs	r2, #0
 80037e0:	2300      	movs	r3, #0
 80037e2:	2000      	movs	r0, #0
 80037e4:	4976      	ldr	r1, [pc, #472]	; (80039c0 <__ieee754_log+0x3b0>)
 80037e6:	f7fc fff1 	bl	80007cc <__aeabi_ddiv>
 80037ea:	ec41 0b10 	vmov	d0, r0, r1
 80037ee:	b005      	add	sp, #20
 80037f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80037f4:	2300      	movs	r3, #0
 80037f6:	f7fd f927 	bl	8000a48 <__aeabi_dcmpeq>
 80037fa:	b180      	cbz	r0, 800381e <__ieee754_log+0x20e>
 80037fc:	2c00      	cmp	r4, #0
 80037fe:	f040 8084 	bne.w	800390a <__ieee754_log+0x2fa>
 8003802:	ed9f 0b63 	vldr	d0, [pc, #396]	; 8003990 <__ieee754_log+0x380>
 8003806:	e7e7      	b.n	80037d8 <__ieee754_log+0x1c8>
 8003808:	ee10 2a10 	vmov	r2, s0
 800380c:	f7fc fcfc 	bl	8000208 <__aeabi_dsub>
 8003810:	2200      	movs	r2, #0
 8003812:	2300      	movs	r3, #0
 8003814:	f7fc ffda 	bl	80007cc <__aeabi_ddiv>
 8003818:	ec41 0b10 	vmov	d0, r0, r1
 800381c:	e7dc      	b.n	80037d8 <__ieee754_log+0x1c8>
 800381e:	a35e      	add	r3, pc, #376	; (adr r3, 8003998 <__ieee754_log+0x388>)
 8003820:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003824:	4650      	mov	r0, sl
 8003826:	4659      	mov	r1, fp
 8003828:	f7fc fea6 	bl	8000578 <__aeabi_dmul>
 800382c:	4602      	mov	r2, r0
 800382e:	460b      	mov	r3, r1
 8003830:	2000      	movs	r0, #0
 8003832:	4962      	ldr	r1, [pc, #392]	; (80039bc <__ieee754_log+0x3ac>)
 8003834:	f7fc fce8 	bl	8000208 <__aeabi_dsub>
 8003838:	4652      	mov	r2, sl
 800383a:	4606      	mov	r6, r0
 800383c:	460f      	mov	r7, r1
 800383e:	465b      	mov	r3, fp
 8003840:	4650      	mov	r0, sl
 8003842:	4659      	mov	r1, fp
 8003844:	f7fc fe98 	bl	8000578 <__aeabi_dmul>
 8003848:	4602      	mov	r2, r0
 800384a:	460b      	mov	r3, r1
 800384c:	4630      	mov	r0, r6
 800384e:	4639      	mov	r1, r7
 8003850:	f7fc fe92 	bl	8000578 <__aeabi_dmul>
 8003854:	4606      	mov	r6, r0
 8003856:	460f      	mov	r7, r1
 8003858:	b32c      	cbz	r4, 80038a6 <__ieee754_log+0x296>
 800385a:	4620      	mov	r0, r4
 800385c:	f7fc fe22 	bl	80004a4 <__aeabi_i2d>
 8003860:	a34f      	add	r3, pc, #316	; (adr r3, 80039a0 <__ieee754_log+0x390>)
 8003862:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003866:	4680      	mov	r8, r0
 8003868:	4689      	mov	r9, r1
 800386a:	f7fc fe85 	bl	8000578 <__aeabi_dmul>
 800386e:	a34e      	add	r3, pc, #312	; (adr r3, 80039a8 <__ieee754_log+0x398>)
 8003870:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003874:	4604      	mov	r4, r0
 8003876:	460d      	mov	r5, r1
 8003878:	4640      	mov	r0, r8
 800387a:	4649      	mov	r1, r9
 800387c:	f7fc fe7c 	bl	8000578 <__aeabi_dmul>
 8003880:	4602      	mov	r2, r0
 8003882:	460b      	mov	r3, r1
 8003884:	4630      	mov	r0, r6
 8003886:	4639      	mov	r1, r7
 8003888:	e02e      	b.n	80038e8 <__ieee754_log+0x2d8>
 800388a:	4602      	mov	r2, r0
 800388c:	460b      	mov	r3, r1
 800388e:	4650      	mov	r0, sl
 8003890:	4659      	mov	r1, fp
 8003892:	f7fc fcb9 	bl	8000208 <__aeabi_dsub>
 8003896:	e9dd 2300 	ldrd	r2, r3, [sp]
 800389a:	f7fc fe6d 	bl	8000578 <__aeabi_dmul>
 800389e:	4606      	mov	r6, r0
 80038a0:	460f      	mov	r7, r1
 80038a2:	2c00      	cmp	r4, #0
 80038a4:	d14d      	bne.n	8003942 <__ieee754_log+0x332>
 80038a6:	4632      	mov	r2, r6
 80038a8:	463b      	mov	r3, r7
 80038aa:	4650      	mov	r0, sl
 80038ac:	4659      	mov	r1, fp
 80038ae:	f7fc fcab 	bl	8000208 <__aeabi_dsub>
 80038b2:	ec41 0b10 	vmov	d0, r0, r1
 80038b6:	e78f      	b.n	80037d8 <__ieee754_log+0x1c8>
 80038b8:	a339      	add	r3, pc, #228	; (adr r3, 80039a0 <__ieee754_log+0x390>)
 80038ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80038be:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80038c2:	f7fc fe59 	bl	8000578 <__aeabi_dmul>
 80038c6:	a338      	add	r3, pc, #224	; (adr r3, 80039a8 <__ieee754_log+0x398>)
 80038c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80038cc:	4604      	mov	r4, r0
 80038ce:	460d      	mov	r5, r1
 80038d0:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 80038d4:	f7fc fe50 	bl	8000578 <__aeabi_dmul>
 80038d8:	4632      	mov	r2, r6
 80038da:	463b      	mov	r3, r7
 80038dc:	f7fc fc96 	bl	800020c <__adddf3>
 80038e0:	4602      	mov	r2, r0
 80038e2:	460b      	mov	r3, r1
 80038e4:	4640      	mov	r0, r8
 80038e6:	4649      	mov	r1, r9
 80038e8:	f7fc fc8e 	bl	8000208 <__aeabi_dsub>
 80038ec:	4652      	mov	r2, sl
 80038ee:	465b      	mov	r3, fp
 80038f0:	f7fc fc8a 	bl	8000208 <__aeabi_dsub>
 80038f4:	4602      	mov	r2, r0
 80038f6:	460b      	mov	r3, r1
 80038f8:	4620      	mov	r0, r4
 80038fa:	4629      	mov	r1, r5
 80038fc:	f7fc fc84 	bl	8000208 <__aeabi_dsub>
 8003900:	ec41 0b10 	vmov	d0, r0, r1
 8003904:	b005      	add	sp, #20
 8003906:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800390a:	4620      	mov	r0, r4
 800390c:	f7fc fdca 	bl	80004a4 <__aeabi_i2d>
 8003910:	a323      	add	r3, pc, #140	; (adr r3, 80039a0 <__ieee754_log+0x390>)
 8003912:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003916:	4606      	mov	r6, r0
 8003918:	460f      	mov	r7, r1
 800391a:	f7fc fe2d 	bl	8000578 <__aeabi_dmul>
 800391e:	a322      	add	r3, pc, #136	; (adr r3, 80039a8 <__ieee754_log+0x398>)
 8003920:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003924:	4604      	mov	r4, r0
 8003926:	460d      	mov	r5, r1
 8003928:	4630      	mov	r0, r6
 800392a:	4639      	mov	r1, r7
 800392c:	f7fc fe24 	bl	8000578 <__aeabi_dmul>
 8003930:	4602      	mov	r2, r0
 8003932:	460b      	mov	r3, r1
 8003934:	4620      	mov	r0, r4
 8003936:	4629      	mov	r1, r5
 8003938:	f7fc fc68 	bl	800020c <__adddf3>
 800393c:	ec41 0b10 	vmov	d0, r0, r1
 8003940:	e74a      	b.n	80037d8 <__ieee754_log+0x1c8>
 8003942:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
 8003946:	a316      	add	r3, pc, #88	; (adr r3, 80039a0 <__ieee754_log+0x390>)
 8003948:	e9d3 2300 	ldrd	r2, r3, [r3]
 800394c:	4640      	mov	r0, r8
 800394e:	4649      	mov	r1, r9
 8003950:	e78b      	b.n	800386a <__ieee754_log+0x25a>
 8003952:	bf00      	nop
 8003954:	f3af 8000 	nop.w
 8003958:	df3e5244 	.word	0xdf3e5244
 800395c:	3fc2f112 	.word	0x3fc2f112
 8003960:	96cb03de 	.word	0x96cb03de
 8003964:	3fc74664 	.word	0x3fc74664
 8003968:	94229359 	.word	0x94229359
 800396c:	3fd24924 	.word	0x3fd24924
 8003970:	55555593 	.word	0x55555593
 8003974:	3fe55555 	.word	0x3fe55555
 8003978:	d078c69f 	.word	0xd078c69f
 800397c:	3fc39a09 	.word	0x3fc39a09
 8003980:	1d8e78af 	.word	0x1d8e78af
 8003984:	3fcc71c5 	.word	0x3fcc71c5
 8003988:	9997fa04 	.word	0x9997fa04
 800398c:	3fd99999 	.word	0x3fd99999
	...
 8003998:	55555555 	.word	0x55555555
 800399c:	3fd55555 	.word	0x3fd55555
 80039a0:	fee00000 	.word	0xfee00000
 80039a4:	3fe62e42 	.word	0x3fe62e42
 80039a8:	35793c76 	.word	0x35793c76
 80039ac:	3dea39ef 	.word	0x3dea39ef
 80039b0:	43500000 	.word	0x43500000
 80039b4:	7fefffff 	.word	0x7fefffff
 80039b8:	3ff00000 	.word	0x3ff00000
 80039bc:	3fe00000 	.word	0x3fe00000
 80039c0:	c3500000 	.word	0xc3500000
 80039c4:	00000000 	.word	0x00000000

080039c8 <__ieee754_rem_pio2>:
 80039c8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80039cc:	ec53 2b10 	vmov	r2, r3, d0
 80039d0:	49bf      	ldr	r1, [pc, #764]	; (8003cd0 <__ieee754_rem_pio2+0x308>)
 80039d2:	f023 4700 	bic.w	r7, r3, #2147483648	; 0x80000000
 80039d6:	428f      	cmp	r7, r1
 80039d8:	b090      	sub	sp, #64	; 0x40
 80039da:	f340 8093 	ble.w	8003b04 <__ieee754_rem_pio2+0x13c>
 80039de:	49bd      	ldr	r1, [pc, #756]	; (8003cd4 <__ieee754_rem_pio2+0x30c>)
 80039e0:	428f      	cmp	r7, r1
 80039e2:	461c      	mov	r4, r3
 80039e4:	4682      	mov	sl, r0
 80039e6:	dc29      	bgt.n	8003a3c <__ieee754_rem_pio2+0x74>
 80039e8:	2c00      	cmp	r4, #0
 80039ea:	4619      	mov	r1, r3
 80039ec:	ee10 0a10 	vmov	r0, s0
 80039f0:	a3ad      	add	r3, pc, #692	; (adr r3, 8003ca8 <__ieee754_rem_pio2+0x2e0>)
 80039f2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80039f6:	f340 8090 	ble.w	8003b1a <__ieee754_rem_pio2+0x152>
 80039fa:	f7fc fc05 	bl	8000208 <__aeabi_dsub>
 80039fe:	4bb6      	ldr	r3, [pc, #728]	; (8003cd8 <__ieee754_rem_pio2+0x310>)
 8003a00:	429f      	cmp	r7, r3
 8003a02:	4604      	mov	r4, r0
 8003a04:	460d      	mov	r5, r1
 8003a06:	f000 8173 	beq.w	8003cf0 <__ieee754_rem_pio2+0x328>
 8003a0a:	a3a9      	add	r3, pc, #676	; (adr r3, 8003cb0 <__ieee754_rem_pio2+0x2e8>)
 8003a0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a10:	f7fc fbfa 	bl	8000208 <__aeabi_dsub>
 8003a14:	4602      	mov	r2, r0
 8003a16:	460b      	mov	r3, r1
 8003a18:	e9ca 2300 	strd	r2, r3, [sl]
 8003a1c:	4620      	mov	r0, r4
 8003a1e:	4629      	mov	r1, r5
 8003a20:	f7fc fbf2 	bl	8000208 <__aeabi_dsub>
 8003a24:	a3a2      	add	r3, pc, #648	; (adr r3, 8003cb0 <__ieee754_rem_pio2+0x2e8>)
 8003a26:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003a2a:	f7fc fbed 	bl	8000208 <__aeabi_dsub>
 8003a2e:	2501      	movs	r5, #1
 8003a30:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003a34:	4628      	mov	r0, r5
 8003a36:	b010      	add	sp, #64	; 0x40
 8003a38:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003a3c:	49a7      	ldr	r1, [pc, #668]	; (8003cdc <__ieee754_rem_pio2+0x314>)
 8003a3e:	428f      	cmp	r7, r1
 8003a40:	f340 808a 	ble.w	8003b58 <__ieee754_rem_pio2+0x190>
 8003a44:	49a6      	ldr	r1, [pc, #664]	; (8003ce0 <__ieee754_rem_pio2+0x318>)
 8003a46:	428f      	cmp	r7, r1
 8003a48:	f300 8120 	bgt.w	8003c8c <__ieee754_rem_pio2+0x2c4>
 8003a4c:	153d      	asrs	r5, r7, #20
 8003a4e:	f2a5 4516 	subw	r5, r5, #1046	; 0x416
 8003a52:	ee10 0a10 	vmov	r0, s0
 8003a56:	eba7 5105 	sub.w	r1, r7, r5, lsl #20
 8003a5a:	4616      	mov	r6, r2
 8003a5c:	460f      	mov	r7, r1
 8003a5e:	f7fd f83b 	bl	8000ad8 <__aeabi_d2iz>
 8003a62:	f7fc fd1f 	bl	80004a4 <__aeabi_i2d>
 8003a66:	4680      	mov	r8, r0
 8003a68:	4689      	mov	r9, r1
 8003a6a:	4642      	mov	r2, r8
 8003a6c:	464b      	mov	r3, r9
 8003a6e:	4630      	mov	r0, r6
 8003a70:	4639      	mov	r1, r7
 8003a72:	e9cd 890a 	strd	r8, r9, [sp, #40]	; 0x28
 8003a76:	f7fc fbc7 	bl	8000208 <__aeabi_dsub>
 8003a7a:	2200      	movs	r2, #0
 8003a7c:	4b99      	ldr	r3, [pc, #612]	; (8003ce4 <__ieee754_rem_pio2+0x31c>)
 8003a7e:	f7fc fd7b 	bl	8000578 <__aeabi_dmul>
 8003a82:	4689      	mov	r9, r1
 8003a84:	4680      	mov	r8, r0
 8003a86:	f7fd f827 	bl	8000ad8 <__aeabi_d2iz>
 8003a8a:	f7fc fd0b 	bl	80004a4 <__aeabi_i2d>
 8003a8e:	4606      	mov	r6, r0
 8003a90:	460f      	mov	r7, r1
 8003a92:	4632      	mov	r2, r6
 8003a94:	463b      	mov	r3, r7
 8003a96:	4640      	mov	r0, r8
 8003a98:	4649      	mov	r1, r9
 8003a9a:	e9cd 670c 	strd	r6, r7, [sp, #48]	; 0x30
 8003a9e:	f7fc fbb3 	bl	8000208 <__aeabi_dsub>
 8003aa2:	2200      	movs	r2, #0
 8003aa4:	4b8f      	ldr	r3, [pc, #572]	; (8003ce4 <__ieee754_rem_pio2+0x31c>)
 8003aa6:	f7fc fd67 	bl	8000578 <__aeabi_dmul>
 8003aaa:	2200      	movs	r2, #0
 8003aac:	2300      	movs	r3, #0
 8003aae:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 8003ab2:	f7fc ffc9 	bl	8000a48 <__aeabi_dcmpeq>
 8003ab6:	2800      	cmp	r0, #0
 8003ab8:	f000 8165 	beq.w	8003d86 <__ieee754_rem_pio2+0x3be>
 8003abc:	2300      	movs	r3, #0
 8003abe:	4630      	mov	r0, r6
 8003ac0:	4639      	mov	r1, r7
 8003ac2:	2200      	movs	r2, #0
 8003ac4:	f7fc ffc0 	bl	8000a48 <__aeabi_dcmpeq>
 8003ac8:	2800      	cmp	r0, #0
 8003aca:	bf14      	ite	ne
 8003acc:	2301      	movne	r3, #1
 8003ace:	2302      	moveq	r3, #2
 8003ad0:	4a85      	ldr	r2, [pc, #532]	; (8003ce8 <__ieee754_rem_pio2+0x320>)
 8003ad2:	9201      	str	r2, [sp, #4]
 8003ad4:	2102      	movs	r1, #2
 8003ad6:	462a      	mov	r2, r5
 8003ad8:	9100      	str	r1, [sp, #0]
 8003ada:	a80a      	add	r0, sp, #40	; 0x28
 8003adc:	4651      	mov	r1, sl
 8003ade:	f000 fbab 	bl	8004238 <__kernel_rem_pio2>
 8003ae2:	2c00      	cmp	r4, #0
 8003ae4:	4605      	mov	r5, r0
 8003ae6:	da14      	bge.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003ae8:	f8da 2004 	ldr.w	r2, [sl, #4]
 8003aec:	f8da 300c 	ldr.w	r3, [sl, #12]
 8003af0:	f102 4200 	add.w	r2, r2, #2147483648	; 0x80000000
 8003af4:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
 8003af8:	4245      	negs	r5, r0
 8003afa:	f8ca 2004 	str.w	r2, [sl, #4]
 8003afe:	f8ca 300c 	str.w	r3, [sl, #12]
 8003b02:	e006      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003b04:	ed80 0b00 	vstr	d0, [r0]
 8003b08:	2500      	movs	r5, #0
 8003b0a:	2400      	movs	r4, #0
 8003b0c:	e9c0 4502 	strd	r4, r5, [r0, #8]
 8003b10:	2500      	movs	r5, #0
 8003b12:	4628      	mov	r0, r5
 8003b14:	b010      	add	sp, #64	; 0x40
 8003b16:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003b1a:	f7fc fb77 	bl	800020c <__adddf3>
 8003b1e:	4b6e      	ldr	r3, [pc, #440]	; (8003cd8 <__ieee754_rem_pio2+0x310>)
 8003b20:	429f      	cmp	r7, r3
 8003b22:	4604      	mov	r4, r0
 8003b24:	460d      	mov	r5, r1
 8003b26:	f000 8110 	beq.w	8003d4a <__ieee754_rem_pio2+0x382>
 8003b2a:	a361      	add	r3, pc, #388	; (adr r3, 8003cb0 <__ieee754_rem_pio2+0x2e8>)
 8003b2c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b30:	f7fc fb6c 	bl	800020c <__adddf3>
 8003b34:	4602      	mov	r2, r0
 8003b36:	460b      	mov	r3, r1
 8003b38:	e9ca 2300 	strd	r2, r3, [sl]
 8003b3c:	4629      	mov	r1, r5
 8003b3e:	4620      	mov	r0, r4
 8003b40:	f7fc fb62 	bl	8000208 <__aeabi_dsub>
 8003b44:	a35a      	add	r3, pc, #360	; (adr r3, 8003cb0 <__ieee754_rem_pio2+0x2e8>)
 8003b46:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b4a:	f7fc fb5f 	bl	800020c <__adddf3>
 8003b4e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 8003b52:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003b56:	e7dc      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003b58:	f7ff f9fa 	bl	8002f50 <fabs>
 8003b5c:	ec59 8b10 	vmov	r8, r9, d0
 8003b60:	ee10 0a10 	vmov	r0, s0
 8003b64:	a354      	add	r3, pc, #336	; (adr r3, 8003cb8 <__ieee754_rem_pio2+0x2f0>)
 8003b66:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b6a:	4649      	mov	r1, r9
 8003b6c:	f7fc fd04 	bl	8000578 <__aeabi_dmul>
 8003b70:	2200      	movs	r2, #0
 8003b72:	4b5e      	ldr	r3, [pc, #376]	; (8003cec <__ieee754_rem_pio2+0x324>)
 8003b74:	f7fc fb4a 	bl	800020c <__adddf3>
 8003b78:	f7fc ffae 	bl	8000ad8 <__aeabi_d2iz>
 8003b7c:	4605      	mov	r5, r0
 8003b7e:	f7fc fc91 	bl	80004a4 <__aeabi_i2d>
 8003b82:	a349      	add	r3, pc, #292	; (adr r3, 8003ca8 <__ieee754_rem_pio2+0x2e0>)
 8003b84:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003b88:	e9cd 0106 	strd	r0, r1, [sp, #24]
 8003b8c:	f7fc fcf4 	bl	8000578 <__aeabi_dmul>
 8003b90:	4602      	mov	r2, r0
 8003b92:	460b      	mov	r3, r1
 8003b94:	4640      	mov	r0, r8
 8003b96:	4649      	mov	r1, r9
 8003b98:	f7fc fb36 	bl	8000208 <__aeabi_dsub>
 8003b9c:	a344      	add	r3, pc, #272	; (adr r3, 8003cb0 <__ieee754_rem_pio2+0x2e8>)
 8003b9e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003ba2:	4680      	mov	r8, r0
 8003ba4:	4689      	mov	r9, r1
 8003ba6:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003baa:	e9cd 8902 	strd	r8, r9, [sp, #8]
 8003bae:	f7fc fce3 	bl	8000578 <__aeabi_dmul>
 8003bb2:	2d1f      	cmp	r5, #31
 8003bb4:	4602      	mov	r2, r0
 8003bb6:	460b      	mov	r3, r1
 8003bb8:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8003bbc:	f340 80b5 	ble.w	8003d2a <__ieee754_rem_pio2+0x362>
 8003bc0:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003bc4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8003bc8:	f7fc fb1e 	bl	8000208 <__aeabi_dsub>
 8003bcc:	4680      	mov	r8, r0
 8003bce:	4689      	mov	r9, r1
 8003bd0:	153f      	asrs	r7, r7, #20
 8003bd2:	f3c9 530a 	ubfx	r3, r9, #20, #11
 8003bd6:	1afb      	subs	r3, r7, r3
 8003bd8:	2b10      	cmp	r3, #16
 8003bda:	f340 80b3 	ble.w	8003d44 <__ieee754_rem_pio2+0x37c>
 8003bde:	a338      	add	r3, pc, #224	; (adr r3, 8003cc0 <__ieee754_rem_pio2+0x2f8>)
 8003be0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003be4:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003be8:	f7fc fcc6 	bl	8000578 <__aeabi_dmul>
 8003bec:	4680      	mov	r8, r0
 8003bee:	4689      	mov	r9, r1
 8003bf0:	4602      	mov	r2, r0
 8003bf2:	460b      	mov	r3, r1
 8003bf4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8003bf8:	f7fc fb06 	bl	8000208 <__aeabi_dsub>
 8003bfc:	4602      	mov	r2, r0
 8003bfe:	460b      	mov	r3, r1
 8003c00:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8003c04:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8003c08:	f7fc fafe 	bl	8000208 <__aeabi_dsub>
 8003c0c:	4642      	mov	r2, r8
 8003c0e:	464b      	mov	r3, r9
 8003c10:	f7fc fafa 	bl	8000208 <__aeabi_dsub>
 8003c14:	a32c      	add	r3, pc, #176	; (adr r3, 8003cc8 <__ieee754_rem_pio2+0x300>)
 8003c16:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003c1a:	4680      	mov	r8, r0
 8003c1c:	4689      	mov	r9, r1
 8003c1e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003c22:	f7fc fca9 	bl	8000578 <__aeabi_dmul>
 8003c26:	4642      	mov	r2, r8
 8003c28:	464b      	mov	r3, r9
 8003c2a:	f7fc faed 	bl	8000208 <__aeabi_dsub>
 8003c2e:	460b      	mov	r3, r1
 8003c30:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8003c34:	4602      	mov	r2, r0
 8003c36:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8003c3a:	f7fc fae5 	bl	8000208 <__aeabi_dsub>
 8003c3e:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8003c42:	1aff      	subs	r7, r7, r3
 8003c44:	2f31      	cmp	r7, #49	; 0x31
 8003c46:	4680      	mov	r8, r0
 8003c48:	4689      	mov	r9, r1
 8003c4a:	f300 809e 	bgt.w	8003d8a <__ieee754_rem_pio2+0x3c2>
 8003c4e:	ed9d 7b08 	vldr	d7, [sp, #32]
 8003c52:	e9ca 8900 	strd	r8, r9, [sl]
 8003c56:	ed8d 7b02 	vstr	d7, [sp, #8]
 8003c5a:	4642      	mov	r2, r8
 8003c5c:	464b      	mov	r3, r9
 8003c5e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8003c62:	f7fc fad1 	bl	8000208 <__aeabi_dsub>
 8003c66:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8003c6a:	f7fc facd 	bl	8000208 <__aeabi_dsub>
 8003c6e:	2c00      	cmp	r4, #0
 8003c70:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003c74:	f6bf af4d 	bge.w	8003b12 <__ieee754_rem_pio2+0x14a>
 8003c78:	f109 4400 	add.w	r4, r9, #2147483648	; 0x80000000
 8003c7c:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8003c80:	426d      	negs	r5, r5
 8003c82:	e9ca 8400 	strd	r8, r4, [sl]
 8003c86:	e9ca 0302 	strd	r0, r3, [sl, #8]
 8003c8a:	e742      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003c8c:	ee10 0a10 	vmov	r0, s0
 8003c90:	4619      	mov	r1, r3
 8003c92:	f7fc fab9 	bl	8000208 <__aeabi_dsub>
 8003c96:	2500      	movs	r5, #0
 8003c98:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003c9c:	e9ca 0100 	strd	r0, r1, [sl]
 8003ca0:	e737      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003ca2:	bf00      	nop
 8003ca4:	f3af 8000 	nop.w
 8003ca8:	54400000 	.word	0x54400000
 8003cac:	3ff921fb 	.word	0x3ff921fb
 8003cb0:	1a626331 	.word	0x1a626331
 8003cb4:	3dd0b461 	.word	0x3dd0b461
 8003cb8:	6dc9c883 	.word	0x6dc9c883
 8003cbc:	3fe45f30 	.word	0x3fe45f30
 8003cc0:	1a600000 	.word	0x1a600000
 8003cc4:	3dd0b461 	.word	0x3dd0b461
 8003cc8:	2e037073 	.word	0x2e037073
 8003ccc:	3ba3198a 	.word	0x3ba3198a
 8003cd0:	3fe921fb 	.word	0x3fe921fb
 8003cd4:	4002d97b 	.word	0x4002d97b
 8003cd8:	3ff921fb 	.word	0x3ff921fb
 8003cdc:	413921fb 	.word	0x413921fb
 8003ce0:	7fefffff 	.word	0x7fefffff
 8003ce4:	41700000 	.word	0x41700000
 8003ce8:	08009e08 	.word	0x08009e08
 8003cec:	3fe00000 	.word	0x3fe00000
 8003cf0:	a341      	add	r3, pc, #260	; (adr r3, 8003df8 <__ieee754_rem_pio2+0x430>)
 8003cf2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003cf6:	f7fc fa87 	bl	8000208 <__aeabi_dsub>
 8003cfa:	a341      	add	r3, pc, #260	; (adr r3, 8003e00 <__ieee754_rem_pio2+0x438>)
 8003cfc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d00:	460d      	mov	r5, r1
 8003d02:	4604      	mov	r4, r0
 8003d04:	f7fc fa80 	bl	8000208 <__aeabi_dsub>
 8003d08:	4602      	mov	r2, r0
 8003d0a:	460b      	mov	r3, r1
 8003d0c:	e9ca 2300 	strd	r2, r3, [sl]
 8003d10:	4629      	mov	r1, r5
 8003d12:	4620      	mov	r0, r4
 8003d14:	f7fc fa78 	bl	8000208 <__aeabi_dsub>
 8003d18:	a339      	add	r3, pc, #228	; (adr r3, 8003e00 <__ieee754_rem_pio2+0x438>)
 8003d1a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d1e:	f7fc fa73 	bl	8000208 <__aeabi_dsub>
 8003d22:	2501      	movs	r5, #1
 8003d24:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003d28:	e6f3      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003d2a:	4640      	mov	r0, r8
 8003d2c:	4649      	mov	r1, r9
 8003d2e:	f7fc fa6b 	bl	8000208 <__aeabi_dsub>
 8003d32:	4b39      	ldr	r3, [pc, #228]	; (8003e18 <__ieee754_rem_pio2+0x450>)
 8003d34:	1e6a      	subs	r2, r5, #1
 8003d36:	4680      	mov	r8, r0
 8003d38:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8003d3c:	42bb      	cmp	r3, r7
 8003d3e:	4689      	mov	r9, r1
 8003d40:	f43f af46 	beq.w	8003bd0 <__ieee754_rem_pio2+0x208>
 8003d44:	e9ca 8900 	strd	r8, r9, [sl]
 8003d48:	e787      	b.n	8003c5a <__ieee754_rem_pio2+0x292>
 8003d4a:	a32b      	add	r3, pc, #172	; (adr r3, 8003df8 <__ieee754_rem_pio2+0x430>)
 8003d4c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d50:	f7fc fa5c 	bl	800020c <__adddf3>
 8003d54:	a32a      	add	r3, pc, #168	; (adr r3, 8003e00 <__ieee754_rem_pio2+0x438>)
 8003d56:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d5a:	460d      	mov	r5, r1
 8003d5c:	4604      	mov	r4, r0
 8003d5e:	f7fc fa55 	bl	800020c <__adddf3>
 8003d62:	4602      	mov	r2, r0
 8003d64:	460b      	mov	r3, r1
 8003d66:	e9ca 2300 	strd	r2, r3, [sl]
 8003d6a:	4629      	mov	r1, r5
 8003d6c:	4620      	mov	r0, r4
 8003d6e:	f7fc fa4b 	bl	8000208 <__aeabi_dsub>
 8003d72:	a323      	add	r3, pc, #140	; (adr r3, 8003e00 <__ieee754_rem_pio2+0x438>)
 8003d74:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d78:	f7fc fa48 	bl	800020c <__adddf3>
 8003d7c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 8003d80:	e9ca 0102 	strd	r0, r1, [sl, #8]
 8003d84:	e6c5      	b.n	8003b12 <__ieee754_rem_pio2+0x14a>
 8003d86:	2303      	movs	r3, #3
 8003d88:	e6a2      	b.n	8003ad0 <__ieee754_rem_pio2+0x108>
 8003d8a:	a31f      	add	r3, pc, #124	; (adr r3, 8003e08 <__ieee754_rem_pio2+0x440>)
 8003d8c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003d90:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003d94:	f7fc fbf0 	bl	8000578 <__aeabi_dmul>
 8003d98:	4606      	mov	r6, r0
 8003d9a:	460f      	mov	r7, r1
 8003d9c:	4602      	mov	r2, r0
 8003d9e:	460b      	mov	r3, r1
 8003da0:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8003da4:	f7fc fa30 	bl	8000208 <__aeabi_dsub>
 8003da8:	4680      	mov	r8, r0
 8003daa:	4689      	mov	r9, r1
 8003dac:	4602      	mov	r2, r0
 8003dae:	460b      	mov	r3, r1
 8003db0:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8003db4:	e9cd 8902 	strd	r8, r9, [sp, #8]
 8003db8:	f7fc fa26 	bl	8000208 <__aeabi_dsub>
 8003dbc:	4632      	mov	r2, r6
 8003dbe:	463b      	mov	r3, r7
 8003dc0:	f7fc fa22 	bl	8000208 <__aeabi_dsub>
 8003dc4:	a312      	add	r3, pc, #72	; (adr r3, 8003e10 <__ieee754_rem_pio2+0x448>)
 8003dc6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003dca:	4606      	mov	r6, r0
 8003dcc:	460f      	mov	r7, r1
 8003dce:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
 8003dd2:	f7fc fbd1 	bl	8000578 <__aeabi_dmul>
 8003dd6:	4632      	mov	r2, r6
 8003dd8:	463b      	mov	r3, r7
 8003dda:	f7fc fa15 	bl	8000208 <__aeabi_dsub>
 8003dde:	4602      	mov	r2, r0
 8003de0:	460b      	mov	r3, r1
 8003de2:	4640      	mov	r0, r8
 8003de4:	4649      	mov	r1, r9
 8003de6:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8003dea:	f7fc fa0d 	bl	8000208 <__aeabi_dsub>
 8003dee:	4680      	mov	r8, r0
 8003df0:	4689      	mov	r9, r1
 8003df2:	e7a7      	b.n	8003d44 <__ieee754_rem_pio2+0x37c>
 8003df4:	f3af 8000 	nop.w
 8003df8:	1a600000 	.word	0x1a600000
 8003dfc:	3dd0b461 	.word	0x3dd0b461
 8003e00:	2e037073 	.word	0x2e037073
 8003e04:	3ba3198a 	.word	0x3ba3198a
 8003e08:	2e000000 	.word	0x2e000000
 8003e0c:	3ba3198a 	.word	0x3ba3198a
 8003e10:	252049c1 	.word	0x252049c1
 8003e14:	397b839a 	.word	0x397b839a
 8003e18:	08009d88 	.word	0x08009d88

08003e1c <__ieee754_sqrt>:
 8003e1c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003e20:	4a62      	ldr	r2, [pc, #392]	; (8003fac <__ieee754_sqrt+0x190>)
 8003e22:	ec57 6b10 	vmov	r6, r7, d0
 8003e26:	43ba      	bics	r2, r7
 8003e28:	f000 8095 	beq.w	8003f56 <__ieee754_sqrt+0x13a>
 8003e2c:	2f00      	cmp	r7, #0
 8003e2e:	463b      	mov	r3, r7
 8003e30:	ee10 1a10 	vmov	r1, s0
 8003e34:	4634      	mov	r4, r6
 8003e36:	dd54      	ble.n	8003ee2 <__ieee754_sqrt+0xc6>
 8003e38:	153f      	asrs	r7, r7, #20
 8003e3a:	f000 80af 	beq.w	8003f9c <__ieee754_sqrt+0x180>
 8003e3e:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8003e42:	f2a7 37ff 	subw	r7, r7, #1023	; 0x3ff
 8003e46:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8003e4a:	0fe2      	lsrs	r2, r4, #31
 8003e4c:	07f9      	lsls	r1, r7, #31
 8003e4e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 8003e52:	ea4f 0544 	mov.w	r5, r4, lsl #1
 8003e56:	d503      	bpl.n	8003e60 <__ieee754_sqrt+0x44>
 8003e58:	0fed      	lsrs	r5, r5, #31
 8003e5a:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 8003e5e:	00a5      	lsls	r5, r4, #2
 8003e60:	2600      	movs	r6, #0
 8003e62:	107f      	asrs	r7, r7, #1
 8003e64:	46b4      	mov	ip, r6
 8003e66:	2216      	movs	r2, #22
 8003e68:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 8003e6c:	eb0c 0001 	add.w	r0, ip, r1
 8003e70:	4298      	cmp	r0, r3
 8003e72:	ea4f 74d5 	mov.w	r4, r5, lsr #31
 8003e76:	ea4f 0545 	mov.w	r5, r5, lsl #1
 8003e7a:	dc03      	bgt.n	8003e84 <__ieee754_sqrt+0x68>
 8003e7c:	1a1b      	subs	r3, r3, r0
 8003e7e:	eb00 0c01 	add.w	ip, r0, r1
 8003e82:	440e      	add	r6, r1
 8003e84:	3a01      	subs	r2, #1
 8003e86:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 8003e8a:	ea4f 0151 	mov.w	r1, r1, lsr #1
 8003e8e:	d1ed      	bne.n	8003e6c <__ieee754_sqrt+0x50>
 8003e90:	4610      	mov	r0, r2
 8003e92:	4696      	mov	lr, r2
 8003e94:	2420      	movs	r4, #32
 8003e96:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 8003e9a:	e009      	b.n	8003eb0 <__ieee754_sqrt+0x94>
 8003e9c:	d052      	beq.n	8003f44 <__ieee754_sqrt+0x128>
 8003e9e:	005b      	lsls	r3, r3, #1
 8003ea0:	3c01      	subs	r4, #1
 8003ea2:	eb03 73d5 	add.w	r3, r3, r5, lsr #31
 8003ea6:	ea4f 0252 	mov.w	r2, r2, lsr #1
 8003eaa:	ea4f 0545 	mov.w	r5, r5, lsl #1
 8003eae:	d036      	beq.n	8003f1e <__ieee754_sqrt+0x102>
 8003eb0:	4563      	cmp	r3, ip
 8003eb2:	eb02 010e 	add.w	r1, r2, lr
 8003eb6:	ddf1      	ble.n	8003e9c <__ieee754_sqrt+0x80>
 8003eb8:	2900      	cmp	r1, #0
 8003eba:	eb01 0e02 	add.w	lr, r1, r2
 8003ebe:	db0a      	blt.n	8003ed6 <__ieee754_sqrt+0xba>
 8003ec0:	46e0      	mov	r8, ip
 8003ec2:	eba3 030c 	sub.w	r3, r3, ip
 8003ec6:	42a9      	cmp	r1, r5
 8003ec8:	bf88      	it	hi
 8003eca:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 8003ece:	1a6d      	subs	r5, r5, r1
 8003ed0:	4410      	add	r0, r2
 8003ed2:	46c4      	mov	ip, r8
 8003ed4:	e7e3      	b.n	8003e9e <__ieee754_sqrt+0x82>
 8003ed6:	f1be 0f00 	cmp.w	lr, #0
 8003eda:	dbf1      	blt.n	8003ec0 <__ieee754_sqrt+0xa4>
 8003edc:	f10c 0801 	add.w	r8, ip, #1
 8003ee0:	e7ef      	b.n	8003ec2 <__ieee754_sqrt+0xa6>
 8003ee2:	f027 4200 	bic.w	r2, r7, #2147483648	; 0x80000000
 8003ee6:	4332      	orrs	r2, r6
 8003ee8:	d02a      	beq.n	8003f40 <__ieee754_sqrt+0x124>
 8003eea:	2f00      	cmp	r7, #0
 8003eec:	d149      	bne.n	8003f82 <__ieee754_sqrt+0x166>
 8003eee:	0aca      	lsrs	r2, r1, #11
 8003ef0:	3b15      	subs	r3, #21
 8003ef2:	0549      	lsls	r1, r1, #21
 8003ef4:	2a00      	cmp	r2, #0
 8003ef6:	d0fa      	beq.n	8003eee <__ieee754_sqrt+0xd2>
 8003ef8:	f412 1080 	ands.w	r0, r2, #1048576	; 0x100000
 8003efc:	d001      	beq.n	8003f02 <__ieee754_sqrt+0xe6>
 8003efe:	e050      	b.n	8003fa2 <__ieee754_sqrt+0x186>
 8003f00:	4620      	mov	r0, r4
 8003f02:	0052      	lsls	r2, r2, #1
 8003f04:	02d5      	lsls	r5, r2, #11
 8003f06:	f100 0401 	add.w	r4, r0, #1
 8003f0a:	d5f9      	bpl.n	8003f00 <__ieee754_sqrt+0xe4>
 8003f0c:	f1c4 0520 	rsb	r5, r4, #32
 8003f10:	fa01 f404 	lsl.w	r4, r1, r4
 8003f14:	40e9      	lsrs	r1, r5
 8003f16:	1a1f      	subs	r7, r3, r0
 8003f18:	ea41 0302 	orr.w	r3, r1, r2
 8003f1c:	e78f      	b.n	8003e3e <__ieee754_sqrt+0x22>
 8003f1e:	432b      	orrs	r3, r5
 8003f20:	d129      	bne.n	8003f76 <__ieee754_sqrt+0x15a>
 8003f22:	0844      	lsrs	r4, r0, #1
 8003f24:	1071      	asrs	r1, r6, #1
 8003f26:	07f3      	lsls	r3, r6, #31
 8003f28:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 8003f2c:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 8003f30:	bf48      	it	mi
 8003f32:	f044 4400 	orrmi.w	r4, r4, #2147483648	; 0x80000000
 8003f36:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 8003f3a:	4622      	mov	r2, r4
 8003f3c:	ec43 2b10 	vmov	d0, r2, r3
 8003f40:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003f44:	42a9      	cmp	r1, r5
 8003f46:	d8aa      	bhi.n	8003e9e <__ieee754_sqrt+0x82>
 8003f48:	2900      	cmp	r1, #0
 8003f4a:	eb01 0e02 	add.w	lr, r1, r2
 8003f4e:	dbc2      	blt.n	8003ed6 <__ieee754_sqrt+0xba>
 8003f50:	4698      	mov	r8, r3
 8003f52:	2300      	movs	r3, #0
 8003f54:	e7bb      	b.n	8003ece <__ieee754_sqrt+0xb2>
 8003f56:	ee10 2a10 	vmov	r2, s0
 8003f5a:	463b      	mov	r3, r7
 8003f5c:	ee10 0a10 	vmov	r0, s0
 8003f60:	4639      	mov	r1, r7
 8003f62:	f7fc fb09 	bl	8000578 <__aeabi_dmul>
 8003f66:	4632      	mov	r2, r6
 8003f68:	463b      	mov	r3, r7
 8003f6a:	f7fc f94f 	bl	800020c <__adddf3>
 8003f6e:	ec41 0b10 	vmov	d0, r0, r1
 8003f72:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003f76:	1c42      	adds	r2, r0, #1
 8003f78:	bf16      	itet	ne
 8003f7a:	1c42      	addne	r2, r0, #1
 8003f7c:	3601      	addeq	r6, #1
 8003f7e:	0854      	lsrne	r4, r2, #1
 8003f80:	e7d0      	b.n	8003f24 <__ieee754_sqrt+0x108>
 8003f82:	ee10 2a10 	vmov	r2, s0
 8003f86:	4630      	mov	r0, r6
 8003f88:	4639      	mov	r1, r7
 8003f8a:	f7fc f93d 	bl	8000208 <__aeabi_dsub>
 8003f8e:	4602      	mov	r2, r0
 8003f90:	460b      	mov	r3, r1
 8003f92:	f7fc fc1b 	bl	80007cc <__aeabi_ddiv>
 8003f96:	ec41 0b10 	vmov	d0, r0, r1
 8003f9a:	e7d1      	b.n	8003f40 <__ieee754_sqrt+0x124>
 8003f9c:	461a      	mov	r2, r3
 8003f9e:	463b      	mov	r3, r7
 8003fa0:	e7aa      	b.n	8003ef8 <__ieee754_sqrt+0xdc>
 8003fa2:	460c      	mov	r4, r1
 8003fa4:	2520      	movs	r5, #32
 8003fa6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003faa:	e7b3      	b.n	8003f14 <__ieee754_sqrt+0xf8>
 8003fac:	7ff00000 	.word	0x7ff00000

08003fb0 <__kernel_cos>:
 8003fb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fb4:	ec57 6b10 	vmov	r6, r7, d0
 8003fb8:	ed2d 8b02 	vpush	{d8}
 8003fbc:	eeb0 8a41 	vmov.f32	s16, s2
 8003fc0:	eef0 8a61 	vmov.f32	s17, s3
 8003fc4:	f027 4900 	bic.w	r9, r7, #2147483648	; 0x80000000
 8003fc8:	f1b9 5f79 	cmp.w	r9, #1044381696	; 0x3e400000
 8003fcc:	b083      	sub	sp, #12
 8003fce:	da72      	bge.n	80040b6 <__kernel_cos+0x106>
 8003fd0:	ee10 0a10 	vmov	r0, s0
 8003fd4:	4639      	mov	r1, r7
 8003fd6:	f7fc fd7f 	bl	8000ad8 <__aeabi_d2iz>
 8003fda:	2800      	cmp	r0, #0
 8003fdc:	f000 80ed 	beq.w	80041ba <__kernel_cos+0x20a>
 8003fe0:	4632      	mov	r2, r6
 8003fe2:	463b      	mov	r3, r7
 8003fe4:	4630      	mov	r0, r6
 8003fe6:	4639      	mov	r1, r7
 8003fe8:	f7fc fac6 	bl	8000578 <__aeabi_dmul>
 8003fec:	a37c      	add	r3, pc, #496	; (adr r3, 80041e0 <__kernel_cos+0x230>)
 8003fee:	e9d3 2300 	ldrd	r2, r3, [r3]
 8003ff2:	4604      	mov	r4, r0
 8003ff4:	460d      	mov	r5, r1
 8003ff6:	f7fc fabf 	bl	8000578 <__aeabi_dmul>
 8003ffa:	a37b      	add	r3, pc, #492	; (adr r3, 80041e8 <__kernel_cos+0x238>)
 8003ffc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004000:	f7fc f904 	bl	800020c <__adddf3>
 8004004:	4622      	mov	r2, r4
 8004006:	462b      	mov	r3, r5
 8004008:	f7fc fab6 	bl	8000578 <__aeabi_dmul>
 800400c:	a378      	add	r3, pc, #480	; (adr r3, 80041f0 <__kernel_cos+0x240>)
 800400e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004012:	f7fc f8f9 	bl	8000208 <__aeabi_dsub>
 8004016:	4622      	mov	r2, r4
 8004018:	462b      	mov	r3, r5
 800401a:	f7fc faad 	bl	8000578 <__aeabi_dmul>
 800401e:	a376      	add	r3, pc, #472	; (adr r3, 80041f8 <__kernel_cos+0x248>)
 8004020:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004024:	f7fc f8f2 	bl	800020c <__adddf3>
 8004028:	4622      	mov	r2, r4
 800402a:	462b      	mov	r3, r5
 800402c:	f7fc faa4 	bl	8000578 <__aeabi_dmul>
 8004030:	a373      	add	r3, pc, #460	; (adr r3, 8004200 <__kernel_cos+0x250>)
 8004032:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004036:	f7fc f8e7 	bl	8000208 <__aeabi_dsub>
 800403a:	4622      	mov	r2, r4
 800403c:	462b      	mov	r3, r5
 800403e:	f7fc fa9b 	bl	8000578 <__aeabi_dmul>
 8004042:	a371      	add	r3, pc, #452	; (adr r3, 8004208 <__kernel_cos+0x258>)
 8004044:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004048:	f7fc f8e0 	bl	800020c <__adddf3>
 800404c:	4622      	mov	r2, r4
 800404e:	462b      	mov	r3, r5
 8004050:	f7fc fa92 	bl	8000578 <__aeabi_dmul>
 8004054:	4682      	mov	sl, r0
 8004056:	468b      	mov	fp, r1
 8004058:	2200      	movs	r2, #0
 800405a:	4b71      	ldr	r3, [pc, #452]	; (8004220 <__kernel_cos+0x270>)
 800405c:	4620      	mov	r0, r4
 800405e:	4629      	mov	r1, r5
 8004060:	f7fc fa8a 	bl	8000578 <__aeabi_dmul>
 8004064:	4652      	mov	r2, sl
 8004066:	4680      	mov	r8, r0
 8004068:	4689      	mov	r9, r1
 800406a:	465b      	mov	r3, fp
 800406c:	4620      	mov	r0, r4
 800406e:	4629      	mov	r1, r5
 8004070:	f7fc fa82 	bl	8000578 <__aeabi_dmul>
 8004074:	ec53 2b18 	vmov	r2, r3, d8
 8004078:	4604      	mov	r4, r0
 800407a:	460d      	mov	r5, r1
 800407c:	4630      	mov	r0, r6
 800407e:	4639      	mov	r1, r7
 8004080:	f7fc fa7a 	bl	8000578 <__aeabi_dmul>
 8004084:	4602      	mov	r2, r0
 8004086:	460b      	mov	r3, r1
 8004088:	4620      	mov	r0, r4
 800408a:	4629      	mov	r1, r5
 800408c:	f7fc f8bc 	bl	8000208 <__aeabi_dsub>
 8004090:	4602      	mov	r2, r0
 8004092:	460b      	mov	r3, r1
 8004094:	4640      	mov	r0, r8
 8004096:	4649      	mov	r1, r9
 8004098:	f7fc f8b6 	bl	8000208 <__aeabi_dsub>
 800409c:	4602      	mov	r2, r0
 800409e:	460b      	mov	r3, r1
 80040a0:	2000      	movs	r0, #0
 80040a2:	4960      	ldr	r1, [pc, #384]	; (8004224 <__kernel_cos+0x274>)
 80040a4:	f7fc f8b0 	bl	8000208 <__aeabi_dsub>
 80040a8:	ec41 0b10 	vmov	d0, r0, r1
 80040ac:	b003      	add	sp, #12
 80040ae:	ecbd 8b02 	vpop	{d8}
 80040b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040b6:	ee10 2a10 	vmov	r2, s0
 80040ba:	ee10 0a10 	vmov	r0, s0
 80040be:	463b      	mov	r3, r7
 80040c0:	4639      	mov	r1, r7
 80040c2:	f7fc fa59 	bl	8000578 <__aeabi_dmul>
 80040c6:	a346      	add	r3, pc, #280	; (adr r3, 80041e0 <__kernel_cos+0x230>)
 80040c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040cc:	4604      	mov	r4, r0
 80040ce:	460d      	mov	r5, r1
 80040d0:	f7fc fa52 	bl	8000578 <__aeabi_dmul>
 80040d4:	a344      	add	r3, pc, #272	; (adr r3, 80041e8 <__kernel_cos+0x238>)
 80040d6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040da:	f7fc f897 	bl	800020c <__adddf3>
 80040de:	4622      	mov	r2, r4
 80040e0:	462b      	mov	r3, r5
 80040e2:	f7fc fa49 	bl	8000578 <__aeabi_dmul>
 80040e6:	a342      	add	r3, pc, #264	; (adr r3, 80041f0 <__kernel_cos+0x240>)
 80040e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040ec:	f7fc f88c 	bl	8000208 <__aeabi_dsub>
 80040f0:	4622      	mov	r2, r4
 80040f2:	462b      	mov	r3, r5
 80040f4:	f7fc fa40 	bl	8000578 <__aeabi_dmul>
 80040f8:	a33f      	add	r3, pc, #252	; (adr r3, 80041f8 <__kernel_cos+0x248>)
 80040fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040fe:	f7fc f885 	bl	800020c <__adddf3>
 8004102:	4622      	mov	r2, r4
 8004104:	462b      	mov	r3, r5
 8004106:	f7fc fa37 	bl	8000578 <__aeabi_dmul>
 800410a:	a33d      	add	r3, pc, #244	; (adr r3, 8004200 <__kernel_cos+0x250>)
 800410c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004110:	f7fc f87a 	bl	8000208 <__aeabi_dsub>
 8004114:	4622      	mov	r2, r4
 8004116:	462b      	mov	r3, r5
 8004118:	f7fc fa2e 	bl	8000578 <__aeabi_dmul>
 800411c:	a33a      	add	r3, pc, #232	; (adr r3, 8004208 <__kernel_cos+0x258>)
 800411e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004122:	f7fc f873 	bl	800020c <__adddf3>
 8004126:	462b      	mov	r3, r5
 8004128:	4622      	mov	r2, r4
 800412a:	f7fc fa25 	bl	8000578 <__aeabi_dmul>
 800412e:	4b3e      	ldr	r3, [pc, #248]	; (8004228 <__kernel_cos+0x278>)
 8004130:	4599      	cmp	r9, r3
 8004132:	4682      	mov	sl, r0
 8004134:	468b      	mov	fp, r1
 8004136:	dd8f      	ble.n	8004058 <__kernel_cos+0xa8>
 8004138:	4b3c      	ldr	r3, [pc, #240]	; (800422c <__kernel_cos+0x27c>)
 800413a:	4599      	cmp	r9, r3
 800413c:	dc44      	bgt.n	80041c8 <__kernel_cos+0x218>
 800413e:	2200      	movs	r2, #0
 8004140:	f5a9 1300 	sub.w	r3, r9, #2097152	; 0x200000
 8004144:	2000      	movs	r0, #0
 8004146:	4937      	ldr	r1, [pc, #220]	; (8004224 <__kernel_cos+0x274>)
 8004148:	4690      	mov	r8, r2
 800414a:	4699      	mov	r9, r3
 800414c:	f7fc f85c 	bl	8000208 <__aeabi_dsub>
 8004150:	e9cd 0100 	strd	r0, r1, [sp]
 8004154:	2200      	movs	r2, #0
 8004156:	4b32      	ldr	r3, [pc, #200]	; (8004220 <__kernel_cos+0x270>)
 8004158:	4620      	mov	r0, r4
 800415a:	4629      	mov	r1, r5
 800415c:	f7fc fa0c 	bl	8000578 <__aeabi_dmul>
 8004160:	4642      	mov	r2, r8
 8004162:	464b      	mov	r3, r9
 8004164:	f7fc f850 	bl	8000208 <__aeabi_dsub>
 8004168:	4652      	mov	r2, sl
 800416a:	4680      	mov	r8, r0
 800416c:	4689      	mov	r9, r1
 800416e:	465b      	mov	r3, fp
 8004170:	4620      	mov	r0, r4
 8004172:	4629      	mov	r1, r5
 8004174:	f7fc fa00 	bl	8000578 <__aeabi_dmul>
 8004178:	ec53 2b18 	vmov	r2, r3, d8
 800417c:	4604      	mov	r4, r0
 800417e:	460d      	mov	r5, r1
 8004180:	4630      	mov	r0, r6
 8004182:	4639      	mov	r1, r7
 8004184:	f7fc f9f8 	bl	8000578 <__aeabi_dmul>
 8004188:	4602      	mov	r2, r0
 800418a:	460b      	mov	r3, r1
 800418c:	4620      	mov	r0, r4
 800418e:	4629      	mov	r1, r5
 8004190:	f7fc f83a 	bl	8000208 <__aeabi_dsub>
 8004194:	4602      	mov	r2, r0
 8004196:	460b      	mov	r3, r1
 8004198:	4640      	mov	r0, r8
 800419a:	4649      	mov	r1, r9
 800419c:	f7fc f834 	bl	8000208 <__aeabi_dsub>
 80041a0:	4602      	mov	r2, r0
 80041a2:	460b      	mov	r3, r1
 80041a4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80041a8:	f7fc f82e 	bl	8000208 <__aeabi_dsub>
 80041ac:	ec41 0b10 	vmov	d0, r0, r1
 80041b0:	b003      	add	sp, #12
 80041b2:	ecbd 8b02 	vpop	{d8}
 80041b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041ba:	ed9f 0b15 	vldr	d0, [pc, #84]	; 8004210 <__kernel_cos+0x260>
 80041be:	b003      	add	sp, #12
 80041c0:	ecbd 8b02 	vpop	{d8}
 80041c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041c8:	ed9f 7b13 	vldr	d7, [pc, #76]	; 8004218 <__kernel_cos+0x268>
 80041cc:	f04f 0800 	mov.w	r8, #0
 80041d0:	ed8d 7b00 	vstr	d7, [sp]
 80041d4:	f8df 9058 	ldr.w	r9, [pc, #88]	; 8004230 <__kernel_cos+0x280>
 80041d8:	e7bc      	b.n	8004154 <__kernel_cos+0x1a4>
 80041da:	bf00      	nop
 80041dc:	f3af 8000 	nop.w
 80041e0:	be8838d4 	.word	0xbe8838d4
 80041e4:	bda8fae9 	.word	0xbda8fae9
 80041e8:	bdb4b1c4 	.word	0xbdb4b1c4
 80041ec:	3e21ee9e 	.word	0x3e21ee9e
 80041f0:	809c52ad 	.word	0x809c52ad
 80041f4:	3e927e4f 	.word	0x3e927e4f
 80041f8:	19cb1590 	.word	0x19cb1590
 80041fc:	3efa01a0 	.word	0x3efa01a0
 8004200:	16c15177 	.word	0x16c15177
 8004204:	3f56c16c 	.word	0x3f56c16c
 8004208:	5555554c 	.word	0x5555554c
 800420c:	3fa55555 	.word	0x3fa55555
 8004210:	00000000 	.word	0x00000000
 8004214:	3ff00000 	.word	0x3ff00000
 8004218:	00000000 	.word	0x00000000
 800421c:	3fe70000 	.word	0x3fe70000
 8004220:	3fe00000 	.word	0x3fe00000
 8004224:	3ff00000 	.word	0x3ff00000
 8004228:	3fd33332 	.word	0x3fd33332
 800422c:	3fe90000 	.word	0x3fe90000
 8004230:	3fd20000 	.word	0x3fd20000
 8004234:	00000000 	.word	0x00000000

08004238 <__kernel_rem_pio2>:
 8004238:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800423c:	f5ad 7d19 	sub.w	sp, sp, #612	; 0x264
 8004240:	4cc1      	ldr	r4, [pc, #772]	; (8004548 <__kernel_rem_pio2+0x310>)
 8004242:	9ea2      	ldr	r6, [sp, #648]	; 0x288
 8004244:	4dc1      	ldr	r5, [pc, #772]	; (800454c <__kernel_rem_pio2+0x314>)
 8004246:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 800424a:	9307      	str	r3, [sp, #28]
 800424c:	1ed4      	subs	r4, r2, #3
 800424e:	fb85 7504 	smull	r7, r5, r5, r4
 8004252:	17e4      	asrs	r4, r4, #31
 8004254:	ebc4 04a5 	rsb	r4, r4, r5, asr #2
 8004258:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
 800425c:	461d      	mov	r5, r3
 800425e:	1c63      	adds	r3, r4, #1
 8004260:	eba3 0383 	sub.w	r3, r3, r3, lsl #2
 8004264:	3d01      	subs	r5, #1
 8004266:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 800426a:	9305      	str	r3, [sp, #20]
 800426c:	1973      	adds	r3, r6, r5
 800426e:	9604      	str	r6, [sp, #16]
 8004270:	9409      	str	r4, [sp, #36]	; 0x24
 8004272:	9501      	str	r5, [sp, #4]
 8004274:	9003      	str	r0, [sp, #12]
 8004276:	910b      	str	r1, [sp, #44]	; 0x2c
 8004278:	eba4 0705 	sub.w	r7, r4, r5
 800427c:	d41a      	bmi.n	80042b4 <__kernel_rem_pio2+0x7c>
 800427e:	443b      	add	r3, r7
 8004280:	2400      	movs	r4, #0
 8004282:	2500      	movs	r5, #0
 8004284:	1c5e      	adds	r6, r3, #1
 8004286:	f10d 0880 	add.w	r8, sp, #128	; 0x80
 800428a:	f8dd 928c 	ldr.w	r9, [sp, #652]	; 0x28c
 800428e:	e008      	b.n	80042a2 <__kernel_rem_pio2+0x6a>
 8004290:	f859 0027 	ldr.w	r0, [r9, r7, lsl #2]
 8004294:	f7fc f906 	bl	80004a4 <__aeabi_i2d>
 8004298:	3701      	adds	r7, #1
 800429a:	42b7      	cmp	r7, r6
 800429c:	e8e8 0102 	strd	r0, r1, [r8], #8
 80042a0:	d008      	beq.n	80042b4 <__kernel_rem_pio2+0x7c>
 80042a2:	2f00      	cmp	r7, #0
 80042a4:	daf4      	bge.n	8004290 <__kernel_rem_pio2+0x58>
 80042a6:	3701      	adds	r7, #1
 80042a8:	4620      	mov	r0, r4
 80042aa:	4629      	mov	r1, r5
 80042ac:	42b7      	cmp	r7, r6
 80042ae:	e8e8 0102 	strd	r0, r1, [r8], #8
 80042b2:	d1f6      	bne.n	80042a2 <__kernel_rem_pio2+0x6a>
 80042b4:	9b04      	ldr	r3, [sp, #16]
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	9b07      	ldr	r3, [sp, #28]
 80042ba:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 80042be:	9302      	str	r3, [sp, #8]
 80042c0:	db2a      	blt.n	8004318 <__kernel_rem_pio2+0xe0>
 80042c2:	9a03      	ldr	r2, [sp, #12]
 80042c4:	a920      	add	r1, sp, #128	; 0x80
 80042c6:	eb02 0803 	add.w	r8, r2, r3
 80042ca:	eb01 0903 	add.w	r9, r1, r3
 80042ce:	9b04      	ldr	r3, [sp, #16]
 80042d0:	aa72      	add	r2, sp, #456	; 0x1c8
 80042d2:	eb02 0bc3 	add.w	fp, r2, r3, lsl #3
 80042d6:	f50d 7ae0 	add.w	sl, sp, #448	; 0x1c0
 80042da:	9b01      	ldr	r3, [sp, #4]
 80042dc:	2b00      	cmp	r3, #0
 80042de:	f04f 0600 	mov.w	r6, #0
 80042e2:	f04f 0700 	mov.w	r7, #0
 80042e6:	db11      	blt.n	800430c <__kernel_rem_pio2+0xd4>
 80042e8:	9c03      	ldr	r4, [sp, #12]
 80042ea:	464d      	mov	r5, r9
 80042ec:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 80042f0:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 80042f4:	f7fc f940 	bl	8000578 <__aeabi_dmul>
 80042f8:	4602      	mov	r2, r0
 80042fa:	460b      	mov	r3, r1
 80042fc:	4630      	mov	r0, r6
 80042fe:	4639      	mov	r1, r7
 8004300:	f7fb ff84 	bl	800020c <__adddf3>
 8004304:	4544      	cmp	r4, r8
 8004306:	4606      	mov	r6, r0
 8004308:	460f      	mov	r7, r1
 800430a:	d1ef      	bne.n	80042ec <__kernel_rem_pio2+0xb4>
 800430c:	e8ea 6702 	strd	r6, r7, [sl], #8
 8004310:	45da      	cmp	sl, fp
 8004312:	f109 0908 	add.w	r9, r9, #8
 8004316:	d1e0      	bne.n	80042da <__kernel_rem_pio2+0xa2>
 8004318:	e9dd 0402 	ldrd	r0, r4, [sp, #8]
 800431c:	9904      	ldr	r1, [sp, #16]
 800431e:	4420      	add	r0, r4
 8004320:	008b      	lsls	r3, r1, #2
 8004322:	4682      	mov	sl, r0
 8004324:	a80b      	add	r0, sp, #44	; 0x2c
 8004326:	f1a3 0208 	sub.w	r2, r3, #8
 800432a:	18c3      	adds	r3, r0, r3
 800432c:	9308      	str	r3, [sp, #32]
 800432e:	ab0c      	add	r3, sp, #48	; 0x30
 8004330:	4413      	add	r3, r2
 8004332:	930a      	str	r3, [sp, #40]	; 0x28
 8004334:	468b      	mov	fp, r1
 8004336:	ab98      	add	r3, sp, #608	; 0x260
 8004338:	eb03 03cb 	add.w	r3, r3, fp, lsl #3
 800433c:	f1bb 0f00 	cmp.w	fp, #0
 8004340:	e953 4528 	ldrd	r4, r5, [r3, #-160]	; 0xa0
 8004344:	dd29      	ble.n	800439a <__kernel_rem_pio2+0x162>
 8004346:	ab70      	add	r3, sp, #448	; 0x1c0
 8004348:	eb03 08cb 	add.w	r8, r3, fp, lsl #3
 800434c:	f10d 0930 	add.w	r9, sp, #48	; 0x30
 8004350:	2200      	movs	r2, #0
 8004352:	4b7f      	ldr	r3, [pc, #508]	; (8004550 <__kernel_rem_pio2+0x318>)
 8004354:	4620      	mov	r0, r4
 8004356:	4629      	mov	r1, r5
 8004358:	f7fc f90e 	bl	8000578 <__aeabi_dmul>
 800435c:	f7fc fbbc 	bl	8000ad8 <__aeabi_d2iz>
 8004360:	f7fc f8a0 	bl	80004a4 <__aeabi_i2d>
 8004364:	2200      	movs	r2, #0
 8004366:	4b7b      	ldr	r3, [pc, #492]	; (8004554 <__kernel_rem_pio2+0x31c>)
 8004368:	4606      	mov	r6, r0
 800436a:	460f      	mov	r7, r1
 800436c:	f7fc f904 	bl	8000578 <__aeabi_dmul>
 8004370:	4602      	mov	r2, r0
 8004372:	460b      	mov	r3, r1
 8004374:	4620      	mov	r0, r4
 8004376:	4629      	mov	r1, r5
 8004378:	f7fb ff46 	bl	8000208 <__aeabi_dsub>
 800437c:	f7fc fbac 	bl	8000ad8 <__aeabi_d2iz>
 8004380:	e978 2302 	ldrd	r2, r3, [r8, #-8]!
 8004384:	f849 0b04 	str.w	r0, [r9], #4
 8004388:	4639      	mov	r1, r7
 800438a:	4630      	mov	r0, r6
 800438c:	f7fb ff3e 	bl	800020c <__adddf3>
 8004390:	ab70      	add	r3, sp, #448	; 0x1c0
 8004392:	4598      	cmp	r8, r3
 8004394:	4604      	mov	r4, r0
 8004396:	460d      	mov	r5, r1
 8004398:	d1da      	bne.n	8004350 <__kernel_rem_pio2+0x118>
 800439a:	f8dd 9014 	ldr.w	r9, [sp, #20]
 800439e:	ec45 4b10 	vmov	d0, r4, r5
 80043a2:	4648      	mov	r0, r9
 80043a4:	f000 fcbc 	bl	8004d20 <scalbn>
 80043a8:	ec55 4b10 	vmov	r4, r5, d0
 80043ac:	2200      	movs	r2, #0
 80043ae:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80043b2:	ee10 0a10 	vmov	r0, s0
 80043b6:	4629      	mov	r1, r5
 80043b8:	f7fc f8de 	bl	8000578 <__aeabi_dmul>
 80043bc:	ec41 0b10 	vmov	d0, r0, r1
 80043c0:	f000 fc1a 	bl	8004bf8 <floor>
 80043c4:	2200      	movs	r2, #0
 80043c6:	ec51 0b10 	vmov	r0, r1, d0
 80043ca:	4b63      	ldr	r3, [pc, #396]	; (8004558 <__kernel_rem_pio2+0x320>)
 80043cc:	f7fc f8d4 	bl	8000578 <__aeabi_dmul>
 80043d0:	4602      	mov	r2, r0
 80043d2:	460b      	mov	r3, r1
 80043d4:	4620      	mov	r0, r4
 80043d6:	4629      	mov	r1, r5
 80043d8:	f7fb ff16 	bl	8000208 <__aeabi_dsub>
 80043dc:	460d      	mov	r5, r1
 80043de:	4604      	mov	r4, r0
 80043e0:	f7fc fb7a 	bl	8000ad8 <__aeabi_d2iz>
 80043e4:	4680      	mov	r8, r0
 80043e6:	f7fc f85d 	bl	80004a4 <__aeabi_i2d>
 80043ea:	460b      	mov	r3, r1
 80043ec:	4602      	mov	r2, r0
 80043ee:	4629      	mov	r1, r5
 80043f0:	4620      	mov	r0, r4
 80043f2:	f7fb ff09 	bl	8000208 <__aeabi_dsub>
 80043f6:	464b      	mov	r3, r9
 80043f8:	2b00      	cmp	r3, #0
 80043fa:	4606      	mov	r6, r0
 80043fc:	460f      	mov	r7, r1
 80043fe:	f340 80e0 	ble.w	80045c2 <__kernel_rem_pio2+0x38a>
 8004402:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004406:	a90c      	add	r1, sp, #48	; 0x30
 8004408:	f1c9 0318 	rsb	r3, r9, #24
 800440c:	f851 5022 	ldr.w	r5, [r1, r2, lsl #2]
 8004410:	fa45 f103 	asr.w	r1, r5, r3
 8004414:	fa01 f303 	lsl.w	r3, r1, r3
 8004418:	a80c      	add	r0, sp, #48	; 0x30
 800441a:	1aeb      	subs	r3, r5, r3
 800441c:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
 8004420:	f1c9 0517 	rsb	r5, r9, #23
 8004424:	4488      	add	r8, r1
 8004426:	fa43 f505 	asr.w	r5, r3, r5
 800442a:	2d00      	cmp	r5, #0
 800442c:	dd2c      	ble.n	8004488 <__kernel_rem_pio2+0x250>
 800442e:	f1bb 0f00 	cmp.w	fp, #0
 8004432:	f108 0801 	add.w	r8, r8, #1
 8004436:	f340 8286 	ble.w	8004946 <__kernel_rem_pio2+0x70e>
 800443a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800443c:	2c00      	cmp	r4, #0
 800443e:	f040 80a6 	bne.w	800458e <__kernel_rem_pio2+0x356>
 8004442:	f1bb 0f01 	cmp.w	fp, #1
 8004446:	d00a      	beq.n	800445e <__kernel_rem_pio2+0x226>
 8004448:	a90c      	add	r1, sp, #48	; 0x30
 800444a:	2201      	movs	r2, #1
 800444c:	f851 4f04 	ldr.w	r4, [r1, #4]!
 8004450:	1c53      	adds	r3, r2, #1
 8004452:	2c00      	cmp	r4, #0
 8004454:	f040 809d 	bne.w	8004592 <__kernel_rem_pio2+0x35a>
 8004458:	459b      	cmp	fp, r3
 800445a:	461a      	mov	r2, r3
 800445c:	d1f6      	bne.n	800444c <__kernel_rem_pio2+0x214>
 800445e:	9b05      	ldr	r3, [sp, #20]
 8004460:	2b00      	cmp	r3, #0
 8004462:	dd0e      	ble.n	8004482 <__kernel_rem_pio2+0x24a>
 8004464:	2b01      	cmp	r3, #1
 8004466:	f000 80d8 	beq.w	800461a <__kernel_rem_pio2+0x3e2>
 800446a:	2b02      	cmp	r3, #2
 800446c:	d109      	bne.n	8004482 <__kernel_rem_pio2+0x24a>
 800446e:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 8004472:	ab0c      	add	r3, sp, #48	; 0x30
 8004474:	a90c      	add	r1, sp, #48	; 0x30
 8004476:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800447a:	f3c3 0315 	ubfx	r3, r3, #0, #22
 800447e:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 8004482:	2d02      	cmp	r5, #2
 8004484:	f000 80ae 	beq.w	80045e4 <__kernel_rem_pio2+0x3ac>
 8004488:	2200      	movs	r2, #0
 800448a:	2300      	movs	r3, #0
 800448c:	4630      	mov	r0, r6
 800448e:	4639      	mov	r1, r7
 8004490:	f7fc fada 	bl	8000a48 <__aeabi_dcmpeq>
 8004494:	2800      	cmp	r0, #0
 8004496:	f000 8258 	beq.w	800494a <__kernel_rem_pio2+0x712>
 800449a:	9b04      	ldr	r3, [sp, #16]
 800449c:	f10b 39ff 	add.w	r9, fp, #4294967295	; 0xffffffff
 80044a0:	454b      	cmp	r3, r9
 80044a2:	dc10      	bgt.n	80044c6 <__kernel_rem_pio2+0x28e>
 80044a4:	f10b 4380 	add.w	r3, fp, #1073741824	; 0x40000000
 80044a8:	aa0c      	add	r2, sp, #48	; 0x30
 80044aa:	3b01      	subs	r3, #1
 80044ac:	9808      	ldr	r0, [sp, #32]
 80044ae:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 80044b2:	2200      	movs	r2, #0
 80044b4:	f853 1904 	ldr.w	r1, [r3], #-4
 80044b8:	4283      	cmp	r3, r0
 80044ba:	ea42 0201 	orr.w	r2, r2, r1
 80044be:	d1f9      	bne.n	80044b4 <__kernel_rem_pio2+0x27c>
 80044c0:	2a00      	cmp	r2, #0
 80044c2:	f040 80b5 	bne.w	8004630 <__kernel_rem_pio2+0x3f8>
 80044c6:	9b04      	ldr	r3, [sp, #16]
 80044c8:	aa0c      	add	r2, sp, #48	; 0x30
 80044ca:	3b01      	subs	r3, #1
 80044cc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80044d0:	2b00      	cmp	r3, #0
 80044d2:	f040 80a0 	bne.w	8004616 <__kernel_rem_pio2+0x3de>
 80044d6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80044d8:	2301      	movs	r3, #1
 80044da:	f852 1904 	ldr.w	r1, [r2], #-4
 80044de:	3301      	adds	r3, #1
 80044e0:	2900      	cmp	r1, #0
 80044e2:	d0fa      	beq.n	80044da <__kernel_rem_pio2+0x2a2>
 80044e4:	445b      	add	r3, fp
 80044e6:	f10b 0901 	add.w	r9, fp, #1
 80044ea:	4599      	cmp	r9, r3
 80044ec:	9306      	str	r3, [sp, #24]
 80044ee:	dc4b      	bgt.n	8004588 <__kernel_rem_pio2+0x350>
 80044f0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80044f2:	9907      	ldr	r1, [sp, #28]
 80044f4:	eb09 0802 	add.w	r8, r9, r2
 80044f8:	eb01 050b 	add.w	r5, r1, fp
 80044fc:	f108 4880 	add.w	r8, r8, #1073741824	; 0x40000000
 8004500:	eb02 0b03 	add.w	fp, r2, r3
 8004504:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8004506:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 800450a:	eb03 0888 	add.w	r8, r3, r8, lsl #2
 800450e:	ab70      	add	r3, sp, #448	; 0x1c0
 8004510:	eb03 09c9 	add.w	r9, r3, r9, lsl #3
 8004514:	9ba3      	ldr	r3, [sp, #652]	; 0x28c
 8004516:	a920      	add	r1, sp, #128	; 0x80
 8004518:	eb03 038b 	add.w	r3, r3, fp, lsl #2
 800451c:	eb01 05c5 	add.w	r5, r1, r5, lsl #3
 8004520:	9302      	str	r3, [sp, #8]
 8004522:	f858 0f04 	ldr.w	r0, [r8, #4]!
 8004526:	f7fb ffbd 	bl	80004a4 <__aeabi_i2d>
 800452a:	460b      	mov	r3, r1
 800452c:	9901      	ldr	r1, [sp, #4]
 800452e:	4602      	mov	r2, r0
 8004530:	2900      	cmp	r1, #0
 8004532:	f105 0b08 	add.w	fp, r5, #8
 8004536:	e9c5 2300 	strd	r2, r3, [r5]
 800453a:	f04f 0600 	mov.w	r6, #0
 800453e:	f04f 0700 	mov.w	r7, #0
 8004542:	db1b      	blt.n	800457c <__kernel_rem_pio2+0x344>
 8004544:	9c03      	ldr	r4, [sp, #12]
 8004546:	e00b      	b.n	8004560 <__kernel_rem_pio2+0x328>
 8004548:	08009f50 	.word	0x08009f50
 800454c:	2aaaaaab 	.word	0x2aaaaaab
 8004550:	3e700000 	.word	0x3e700000
 8004554:	41700000 	.word	0x41700000
 8004558:	40200000 	.word	0x40200000
 800455c:	e975 2302 	ldrd	r2, r3, [r5, #-8]!
 8004560:	e8f4 0102 	ldrd	r0, r1, [r4], #8
 8004564:	f7fc f808 	bl	8000578 <__aeabi_dmul>
 8004568:	4602      	mov	r2, r0
 800456a:	460b      	mov	r3, r1
 800456c:	4630      	mov	r0, r6
 800456e:	4639      	mov	r1, r7
 8004570:	f7fb fe4c 	bl	800020c <__adddf3>
 8004574:	4554      	cmp	r4, sl
 8004576:	4606      	mov	r6, r0
 8004578:	460f      	mov	r7, r1
 800457a:	d1ef      	bne.n	800455c <__kernel_rem_pio2+0x324>
 800457c:	9b02      	ldr	r3, [sp, #8]
 800457e:	4598      	cmp	r8, r3
 8004580:	e8e9 6702 	strd	r6, r7, [r9], #8
 8004584:	465d      	mov	r5, fp
 8004586:	d1cc      	bne.n	8004522 <__kernel_rem_pio2+0x2ea>
 8004588:	f8dd b018 	ldr.w	fp, [sp, #24]
 800458c:	e6d3      	b.n	8004336 <__kernel_rem_pio2+0xfe>
 800458e:	2301      	movs	r3, #1
 8004590:	2200      	movs	r2, #0
 8004592:	a90c      	add	r1, sp, #48	; 0x30
 8004594:	f1c4 7480 	rsb	r4, r4, #16777216	; 0x1000000
 8004598:	459b      	cmp	fp, r3
 800459a:	f841 4022 	str.w	r4, [r1, r2, lsl #2]
 800459e:	dd0e      	ble.n	80045be <__kernel_rem_pio2+0x386>
 80045a0:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80045a4:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 80045a8:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 80045ac:	f06f 417f 	mvn.w	r1, #4278190080	; 0xff000000
 80045b0:	e000      	b.n	80045b4 <__kernel_rem_pio2+0x37c>
 80045b2:	681a      	ldr	r2, [r3, #0]
 80045b4:	1a8a      	subs	r2, r1, r2
 80045b6:	f843 2b04 	str.w	r2, [r3], #4
 80045ba:	4283      	cmp	r3, r0
 80045bc:	d1f9      	bne.n	80045b2 <__kernel_rem_pio2+0x37a>
 80045be:	2401      	movs	r4, #1
 80045c0:	e74d      	b.n	800445e <__kernel_rem_pio2+0x226>
 80045c2:	d106      	bne.n	80045d2 <__kernel_rem_pio2+0x39a>
 80045c4:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80045c8:	aa0c      	add	r2, sp, #48	; 0x30
 80045ca:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
 80045ce:	15ed      	asrs	r5, r5, #23
 80045d0:	e72b      	b.n	800442a <__kernel_rem_pio2+0x1f2>
 80045d2:	2200      	movs	r2, #0
 80045d4:	4b7e      	ldr	r3, [pc, #504]	; (80047d0 <__kernel_rem_pio2+0x598>)
 80045d6:	f7fc fa55 	bl	8000a84 <__aeabi_dcmpge>
 80045da:	2800      	cmp	r0, #0
 80045dc:	f040 81a9 	bne.w	8004932 <__kernel_rem_pio2+0x6fa>
 80045e0:	4605      	mov	r5, r0
 80045e2:	e751      	b.n	8004488 <__kernel_rem_pio2+0x250>
 80045e4:	4632      	mov	r2, r6
 80045e6:	463b      	mov	r3, r7
 80045e8:	2000      	movs	r0, #0
 80045ea:	497a      	ldr	r1, [pc, #488]	; (80047d4 <__kernel_rem_pio2+0x59c>)
 80045ec:	f7fb fe0c 	bl	8000208 <__aeabi_dsub>
 80045f0:	4606      	mov	r6, r0
 80045f2:	460f      	mov	r7, r1
 80045f4:	2c00      	cmp	r4, #0
 80045f6:	f43f af47 	beq.w	8004488 <__kernel_rem_pio2+0x250>
 80045fa:	9805      	ldr	r0, [sp, #20]
 80045fc:	ed9f 0b70 	vldr	d0, [pc, #448]	; 80047c0 <__kernel_rem_pio2+0x588>
 8004600:	f000 fb8e 	bl	8004d20 <scalbn>
 8004604:	4630      	mov	r0, r6
 8004606:	4639      	mov	r1, r7
 8004608:	ec53 2b10 	vmov	r2, r3, d0
 800460c:	f7fb fdfc 	bl	8000208 <__aeabi_dsub>
 8004610:	4606      	mov	r6, r0
 8004612:	460f      	mov	r7, r1
 8004614:	e738      	b.n	8004488 <__kernel_rem_pio2+0x250>
 8004616:	2301      	movs	r3, #1
 8004618:	e764      	b.n	80044e4 <__kernel_rem_pio2+0x2ac>
 800461a:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
 800461e:	ab0c      	add	r3, sp, #48	; 0x30
 8004620:	a90c      	add	r1, sp, #48	; 0x30
 8004622:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8004626:	f3c3 0316 	ubfx	r3, r3, #0, #23
 800462a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
 800462e:	e728      	b.n	8004482 <__kernel_rem_pio2+0x24a>
 8004630:	ab0c      	add	r3, sp, #48	; 0x30
 8004632:	9a05      	ldr	r2, [sp, #20]
 8004634:	f853 3029 	ldr.w	r3, [r3, r9, lsl #2]
 8004638:	3a18      	subs	r2, #24
 800463a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 800463e:	9205      	str	r2, [sp, #20]
 8004640:	b96b      	cbnz	r3, 800465e <__kernel_rem_pio2+0x426>
 8004642:	f109 4380 	add.w	r3, r9, #1073741824	; 0x40000000
 8004646:	3b01      	subs	r3, #1
 8004648:	a90c      	add	r1, sp, #48	; 0x30
 800464a:	eb01 0383 	add.w	r3, r1, r3, lsl #2
 800464e:	f853 1904 	ldr.w	r1, [r3], #-4
 8004652:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 8004656:	3a18      	subs	r2, #24
 8004658:	2900      	cmp	r1, #0
 800465a:	d0f8      	beq.n	800464e <__kernel_rem_pio2+0x416>
 800465c:	9205      	str	r2, [sp, #20]
 800465e:	9805      	ldr	r0, [sp, #20]
 8004660:	ed9f 0b57 	vldr	d0, [pc, #348]	; 80047c0 <__kernel_rem_pio2+0x588>
 8004664:	f000 fb5c 	bl	8004d20 <scalbn>
 8004668:	f1b9 0f00 	cmp.w	r9, #0
 800466c:	ec55 4b10 	vmov	r4, r5, d0
 8004670:	f2c0 81c9 	blt.w	8004a06 <__kernel_rem_pio2+0x7ce>
 8004674:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8004678:	aa70      	add	r2, sp, #448	; 0x1c0
 800467a:	eb02 0803 	add.w	r8, r2, r3
 800467e:	9308      	str	r3, [sp, #32]
 8004680:	ab0c      	add	r3, sp, #48	; 0x30
 8004682:	eb03 0689 	add.w	r6, r3, r9, lsl #2
 8004686:	f8df b150 	ldr.w	fp, [pc, #336]	; 80047d8 <__kernel_rem_pio2+0x5a0>
 800468a:	f04f 0a00 	mov.w	sl, #0
 800468e:	f108 0708 	add.w	r7, r8, #8
 8004692:	3604      	adds	r6, #4
 8004694:	f856 0d04 	ldr.w	r0, [r6, #-4]!
 8004698:	f7fb ff04 	bl	80004a4 <__aeabi_i2d>
 800469c:	4622      	mov	r2, r4
 800469e:	462b      	mov	r3, r5
 80046a0:	f7fb ff6a 	bl	8000578 <__aeabi_dmul>
 80046a4:	465b      	mov	r3, fp
 80046a6:	e967 0102 	strd	r0, r1, [r7, #-8]!
 80046aa:	4652      	mov	r2, sl
 80046ac:	4620      	mov	r0, r4
 80046ae:	4629      	mov	r1, r5
 80046b0:	f7fb ff62 	bl	8000578 <__aeabi_dmul>
 80046b4:	ab0c      	add	r3, sp, #48	; 0x30
 80046b6:	429e      	cmp	r6, r3
 80046b8:	4604      	mov	r4, r0
 80046ba:	460d      	mov	r5, r1
 80046bc:	d1ea      	bne.n	8004694 <__kernel_rem_pio2+0x45c>
 80046be:	ab48      	add	r3, sp, #288	; 0x120
 80046c0:	9303      	str	r3, [sp, #12]
 80046c2:	9301      	str	r3, [sp, #4]
 80046c4:	f8cd 9014 	str.w	r9, [sp, #20]
 80046c8:	f109 0301 	add.w	r3, r9, #1
 80046cc:	f8dd 9010 	ldr.w	r9, [sp, #16]
 80046d0:	9302      	str	r3, [sp, #8]
 80046d2:	46c3      	mov	fp, r8
 80046d4:	f04f 0a00 	mov.w	sl, #0
 80046d8:	f1b9 0f00 	cmp.w	r9, #0
 80046dc:	f2c0 8130 	blt.w	8004940 <__kernel_rem_pio2+0x708>
 80046e0:	f8df 80f8 	ldr.w	r8, [pc, #248]	; 80047dc <__kernel_rem_pio2+0x5a4>
 80046e4:	465d      	mov	r5, fp
 80046e6:	a338      	add	r3, pc, #224	; (adr r3, 80047c8 <__kernel_rem_pio2+0x590>)
 80046e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046ec:	2600      	movs	r6, #0
 80046ee:	2700      	movs	r7, #0
 80046f0:	2400      	movs	r4, #0
 80046f2:	e003      	b.n	80046fc <__kernel_rem_pio2+0x4c4>
 80046f4:	4554      	cmp	r4, sl
 80046f6:	dc10      	bgt.n	800471a <__kernel_rem_pio2+0x4e2>
 80046f8:	e8f8 2302 	ldrd	r2, r3, [r8], #8
 80046fc:	e8f5 0102 	ldrd	r0, r1, [r5], #8
 8004700:	f7fb ff3a 	bl	8000578 <__aeabi_dmul>
 8004704:	4602      	mov	r2, r0
 8004706:	460b      	mov	r3, r1
 8004708:	4630      	mov	r0, r6
 800470a:	4639      	mov	r1, r7
 800470c:	f7fb fd7e 	bl	800020c <__adddf3>
 8004710:	3401      	adds	r4, #1
 8004712:	45a1      	cmp	r9, r4
 8004714:	4606      	mov	r6, r0
 8004716:	460f      	mov	r7, r1
 8004718:	daec      	bge.n	80046f4 <__kernel_rem_pio2+0x4bc>
 800471a:	9b01      	ldr	r3, [sp, #4]
 800471c:	e8e3 6702 	strd	r6, r7, [r3], #8
 8004720:	9301      	str	r3, [sp, #4]
 8004722:	9b02      	ldr	r3, [sp, #8]
 8004724:	f10a 0a01 	add.w	sl, sl, #1
 8004728:	459a      	cmp	sl, r3
 800472a:	f1ab 0b08 	sub.w	fp, fp, #8
 800472e:	d1d3      	bne.n	80046d8 <__kernel_rem_pio2+0x4a0>
 8004730:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 8004732:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8004736:	2b03      	cmp	r3, #3
 8004738:	d839      	bhi.n	80047ae <__kernel_rem_pio2+0x576>
 800473a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800473e:	00df      	.short	0x00df
 8004740:	00060006 	.word	0x00060006
 8004744:	0053      	.short	0x0053
 8004746:	ab48      	add	r3, sp, #288	; 0x120
 8004748:	9303      	str	r3, [sp, #12]
 800474a:	f1b9 0f00 	cmp.w	r9, #0
 800474e:	f04f 0000 	mov.w	r0, #0
 8004752:	f04f 0100 	mov.w	r1, #0
 8004756:	db09      	blt.n	800476c <__kernel_rem_pio2+0x534>
 8004758:	9d03      	ldr	r5, [sp, #12]
 800475a:	eb05 04c9 	add.w	r4, r5, r9, lsl #3
 800475e:	3408      	adds	r4, #8
 8004760:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 8004764:	f7fb fd52 	bl	800020c <__adddf3>
 8004768:	42a5      	cmp	r5, r4
 800476a:	d1f9      	bne.n	8004760 <__kernel_rem_pio2+0x528>
 800476c:	9b07      	ldr	r3, [sp, #28]
 800476e:	2b00      	cmp	r3, #0
 8004770:	f040 8127 	bne.w	80049c2 <__kernel_rem_pio2+0x78a>
 8004774:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004776:	e9c3 0100 	strd	r0, r1, [r3]
 800477a:	460b      	mov	r3, r1
 800477c:	9903      	ldr	r1, [sp, #12]
 800477e:	4602      	mov	r2, r0
 8004780:	e9d1 0100 	ldrd	r0, r1, [r1]
 8004784:	f7fb fd40 	bl	8000208 <__aeabi_dsub>
 8004788:	f1b9 0f00 	cmp.w	r9, #0
 800478c:	dd0c      	ble.n	80047a8 <__kernel_rem_pio2+0x570>
 800478e:	ad4a      	add	r5, sp, #296	; 0x128
 8004790:	2401      	movs	r4, #1
 8004792:	3401      	adds	r4, #1
 8004794:	e8f5 2302 	ldrd	r2, r3, [r5], #8
 8004798:	f7fb fd38 	bl	800020c <__adddf3>
 800479c:	45a1      	cmp	r9, r4
 800479e:	daf8      	bge.n	8004792 <__kernel_rem_pio2+0x55a>
 80047a0:	9b07      	ldr	r3, [sp, #28]
 80047a2:	2b00      	cmp	r3, #0
 80047a4:	f040 811d 	bne.w	80049e2 <__kernel_rem_pio2+0x7aa>
 80047a8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047aa:	e9c3 0102 	strd	r0, r1, [r3, #8]
 80047ae:	9b06      	ldr	r3, [sp, #24]
 80047b0:	f003 0007 	and.w	r0, r3, #7
 80047b4:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 80047b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047bc:	f3af 8000 	nop.w
 80047c0:	00000000 	.word	0x00000000
 80047c4:	3ff00000 	.word	0x3ff00000
 80047c8:	40000000 	.word	0x40000000
 80047cc:	3ff921fb 	.word	0x3ff921fb
 80047d0:	3fe00000 	.word	0x3fe00000
 80047d4:	3ff00000 	.word	0x3ff00000
 80047d8:	3e700000 	.word	0x3e700000
 80047dc:	08009f18 	.word	0x08009f18
 80047e0:	ab48      	add	r3, sp, #288	; 0x120
 80047e2:	9303      	str	r3, [sp, #12]
 80047e4:	f1b9 0f00 	cmp.w	r9, #0
 80047e8:	f340 8129 	ble.w	8004a3e <__kernel_rem_pio2+0x806>
 80047ec:	9a03      	ldr	r2, [sp, #12]
 80047ee:	f8cd 9010 	str.w	r9, [sp, #16]
 80047f2:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 80047f6:	9301      	str	r3, [sp, #4]
 80047f8:	18d3      	adds	r3, r2, r3
 80047fa:	e9d3 ab00 	ldrd	sl, fp, [r3]
 80047fe:	f109 5300 	add.w	r3, r9, #536870912	; 0x20000000
 8004802:	3b01      	subs	r3, #1
 8004804:	eb02 08c9 	add.w	r8, r2, r9, lsl #3
 8004808:	9302      	str	r3, [sp, #8]
 800480a:	4691      	mov	r9, r2
 800480c:	e978 6702 	ldrd	r6, r7, [r8, #-8]!
 8004810:	4652      	mov	r2, sl
 8004812:	465b      	mov	r3, fp
 8004814:	4630      	mov	r0, r6
 8004816:	4639      	mov	r1, r7
 8004818:	f7fb fcf8 	bl	800020c <__adddf3>
 800481c:	4604      	mov	r4, r0
 800481e:	460d      	mov	r5, r1
 8004820:	4602      	mov	r2, r0
 8004822:	460b      	mov	r3, r1
 8004824:	4630      	mov	r0, r6
 8004826:	4639      	mov	r1, r7
 8004828:	f7fb fcee 	bl	8000208 <__aeabi_dsub>
 800482c:	4652      	mov	r2, sl
 800482e:	465b      	mov	r3, fp
 8004830:	f7fb fcec 	bl	800020c <__adddf3>
 8004834:	45c1      	cmp	r9, r8
 8004836:	46a2      	mov	sl, r4
 8004838:	46ab      	mov	fp, r5
 800483a:	e9c8 0102 	strd	r0, r1, [r8, #8]
 800483e:	e9c8 4500 	strd	r4, r5, [r8]
 8004842:	d1e3      	bne.n	800480c <__kernel_rem_pio2+0x5d4>
 8004844:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8004848:	f1b9 0f01 	cmp.w	r9, #1
 800484c:	f340 80f7 	ble.w	8004a3e <__kernel_rem_pio2+0x806>
 8004850:	9b01      	ldr	r3, [sp, #4]
 8004852:	9a03      	ldr	r2, [sp, #12]
 8004854:	9902      	ldr	r1, [sp, #8]
 8004856:	4413      	add	r3, r2
 8004858:	00c9      	lsls	r1, r1, #3
 800485a:	e9d3 6700 	ldrd	r6, r7, [r3]
 800485e:	f101 0a08 	add.w	sl, r1, #8
 8004862:	9101      	str	r1, [sp, #4]
 8004864:	4492      	add	sl, r2
 8004866:	f50d 7b94 	add.w	fp, sp, #296	; 0x128
 800486a:	e97a 8902 	ldrd	r8, r9, [sl, #-8]!
 800486e:	4632      	mov	r2, r6
 8004870:	463b      	mov	r3, r7
 8004872:	4640      	mov	r0, r8
 8004874:	4649      	mov	r1, r9
 8004876:	f7fb fcc9 	bl	800020c <__adddf3>
 800487a:	4604      	mov	r4, r0
 800487c:	460d      	mov	r5, r1
 800487e:	4602      	mov	r2, r0
 8004880:	460b      	mov	r3, r1
 8004882:	4640      	mov	r0, r8
 8004884:	4649      	mov	r1, r9
 8004886:	f7fb fcbf 	bl	8000208 <__aeabi_dsub>
 800488a:	4632      	mov	r2, r6
 800488c:	463b      	mov	r3, r7
 800488e:	f7fb fcbd 	bl	800020c <__adddf3>
 8004892:	45d3      	cmp	fp, sl
 8004894:	4626      	mov	r6, r4
 8004896:	462f      	mov	r7, r5
 8004898:	e9ca 0102 	strd	r0, r1, [sl, #8]
 800489c:	e9ca 4500 	strd	r4, r5, [sl]
 80048a0:	d1e3      	bne.n	800486a <__kernel_rem_pio2+0x632>
 80048a2:	9c01      	ldr	r4, [sp, #4]
 80048a4:	9b03      	ldr	r3, [sp, #12]
 80048a6:	3410      	adds	r4, #16
 80048a8:	2000      	movs	r0, #0
 80048aa:	2100      	movs	r1, #0
 80048ac:	441c      	add	r4, r3
 80048ae:	f103 0510 	add.w	r5, r3, #16
 80048b2:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 80048b6:	f7fb fca9 	bl	800020c <__adddf3>
 80048ba:	42a5      	cmp	r5, r4
 80048bc:	d1f9      	bne.n	80048b2 <__kernel_rem_pio2+0x67a>
 80048be:	9c03      	ldr	r4, [sp, #12]
 80048c0:	9e07      	ldr	r6, [sp, #28]
 80048c2:	e9d4 2300 	ldrd	r2, r3, [r4]
 80048c6:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
 80048ca:	2e00      	cmp	r6, #0
 80048cc:	f000 808d 	beq.w	80049ea <__kernel_rem_pio2+0x7b2>
 80048d0:	f103 4700 	add.w	r7, r3, #2147483648	; 0x80000000
 80048d4:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80048d8:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80048da:	e9c1 0304 	strd	r0, r3, [r1, #16]
 80048de:	9b06      	ldr	r3, [sp, #24]
 80048e0:	4626      	mov	r6, r4
 80048e2:	4694      	mov	ip, r2
 80048e4:	f105 4400 	add.w	r4, r5, #2147483648	; 0x80000000
 80048e8:	f003 0007 	and.w	r0, r3, #7
 80048ec:	e9c1 c700 	strd	ip, r7, [r1]
 80048f0:	e9c1 6402 	strd	r6, r4, [r1, #8]
 80048f4:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 80048f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048fc:	9c08      	ldr	r4, [sp, #32]
 80048fe:	9d03      	ldr	r5, [sp, #12]
 8004900:	3408      	adds	r4, #8
 8004902:	2000      	movs	r0, #0
 8004904:	2100      	movs	r1, #0
 8004906:	442c      	add	r4, r5
 8004908:	e974 2302 	ldrd	r2, r3, [r4, #-8]!
 800490c:	f7fb fc7e 	bl	800020c <__adddf3>
 8004910:	42a5      	cmp	r5, r4
 8004912:	d1f9      	bne.n	8004908 <__kernel_rem_pio2+0x6d0>
 8004914:	9b07      	ldr	r3, [sp, #28]
 8004916:	b113      	cbz	r3, 800491e <__kernel_rem_pio2+0x6e6>
 8004918:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 800491c:	4619      	mov	r1, r3
 800491e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004920:	e9c3 0100 	strd	r0, r1, [r3]
 8004924:	9b06      	ldr	r3, [sp, #24]
 8004926:	f003 0007 	and.w	r0, r3, #7
 800492a:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 800492e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004932:	f1bb 0f00 	cmp.w	fp, #0
 8004936:	f108 0801 	add.w	r8, r8, #1
 800493a:	dd76      	ble.n	8004a2a <__kernel_rem_pio2+0x7f2>
 800493c:	2502      	movs	r5, #2
 800493e:	e57c      	b.n	800443a <__kernel_rem_pio2+0x202>
 8004940:	2600      	movs	r6, #0
 8004942:	2700      	movs	r7, #0
 8004944:	e6e9      	b.n	800471a <__kernel_rem_pio2+0x4e2>
 8004946:	2400      	movs	r4, #0
 8004948:	e589      	b.n	800445e <__kernel_rem_pio2+0x226>
 800494a:	e9cd 8506 	strd	r8, r5, [sp, #24]
 800494e:	9d05      	ldr	r5, [sp, #20]
 8004950:	ec47 6b10 	vmov	d0, r6, r7
 8004954:	4268      	negs	r0, r5
 8004956:	f000 f9e3 	bl	8004d20 <scalbn>
 800495a:	ec57 6b10 	vmov	r6, r7, d0
 800495e:	2200      	movs	r2, #0
 8004960:	4b38      	ldr	r3, [pc, #224]	; (8004a44 <__kernel_rem_pio2+0x80c>)
 8004962:	ee10 0a10 	vmov	r0, s0
 8004966:	4639      	mov	r1, r7
 8004968:	f7fc f88c 	bl	8000a84 <__aeabi_dcmpge>
 800496c:	b300      	cbz	r0, 80049b0 <__kernel_rem_pio2+0x778>
 800496e:	2200      	movs	r2, #0
 8004970:	4b35      	ldr	r3, [pc, #212]	; (8004a48 <__kernel_rem_pio2+0x810>)
 8004972:	4630      	mov	r0, r6
 8004974:	4639      	mov	r1, r7
 8004976:	f7fb fdff 	bl	8000578 <__aeabi_dmul>
 800497a:	f7fc f8ad 	bl	8000ad8 <__aeabi_d2iz>
 800497e:	4604      	mov	r4, r0
 8004980:	f7fb fd90 	bl	80004a4 <__aeabi_i2d>
 8004984:	2200      	movs	r2, #0
 8004986:	4b2f      	ldr	r3, [pc, #188]	; (8004a44 <__kernel_rem_pio2+0x80c>)
 8004988:	f7fb fdf6 	bl	8000578 <__aeabi_dmul>
 800498c:	460b      	mov	r3, r1
 800498e:	4602      	mov	r2, r0
 8004990:	4639      	mov	r1, r7
 8004992:	4630      	mov	r0, r6
 8004994:	f7fb fc38 	bl	8000208 <__aeabi_dsub>
 8004998:	f7fc f89e 	bl	8000ad8 <__aeabi_d2iz>
 800499c:	f10b 0901 	add.w	r9, fp, #1
 80049a0:	ab0c      	add	r3, sp, #48	; 0x30
 80049a2:	3518      	adds	r5, #24
 80049a4:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 80049a8:	9505      	str	r5, [sp, #20]
 80049aa:	f843 4029 	str.w	r4, [r3, r9, lsl #2]
 80049ae:	e656      	b.n	800465e <__kernel_rem_pio2+0x426>
 80049b0:	4630      	mov	r0, r6
 80049b2:	4639      	mov	r1, r7
 80049b4:	f7fc f890 	bl	8000ad8 <__aeabi_d2iz>
 80049b8:	ab0c      	add	r3, sp, #48	; 0x30
 80049ba:	46d9      	mov	r9, fp
 80049bc:	f843 002b 	str.w	r0, [r3, fp, lsl #2]
 80049c0:	e64d      	b.n	800465e <__kernel_rem_pio2+0x426>
 80049c2:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80049c4:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80049c8:	e9c4 0300 	strd	r0, r3, [r4]
 80049cc:	460b      	mov	r3, r1
 80049ce:	9903      	ldr	r1, [sp, #12]
 80049d0:	4602      	mov	r2, r0
 80049d2:	e9d1 0100 	ldrd	r0, r1, [r1]
 80049d6:	f7fb fc17 	bl	8000208 <__aeabi_dsub>
 80049da:	f1b9 0f00 	cmp.w	r9, #0
 80049de:	f73f aed6 	bgt.w	800478e <__kernel_rem_pio2+0x556>
 80049e2:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 80049e6:	4619      	mov	r1, r3
 80049e8:	e6de      	b.n	80047a8 <__kernel_rem_pio2+0x570>
 80049ea:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 80049ec:	e9c6 2300 	strd	r2, r3, [r6]
 80049f0:	9b06      	ldr	r3, [sp, #24]
 80049f2:	e9c6 0104 	strd	r0, r1, [r6, #16]
 80049f6:	f003 0007 	and.w	r0, r3, #7
 80049fa:	e9c6 4502 	strd	r4, r5, [r6, #8]
 80049fe:	f50d 7d19 	add.w	sp, sp, #612	; 0x264
 8004a02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a06:	9ba2      	ldr	r3, [sp, #648]	; 0x288
 8004a08:	2b03      	cmp	r3, #3
 8004a0a:	f63f aed0 	bhi.w	80047ae <__kernel_rem_pio2+0x576>
 8004a0e:	a201      	add	r2, pc, #4	; (adr r2, 8004a14 <__kernel_rem_pio2+0x7dc>)
 8004a10:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8004a14:	08004a25 	.word	0x08004a25
 8004a18:	08004747 	.word	0x08004747
 8004a1c:	08004747 	.word	0x08004747
 8004a20:	080047e1 	.word	0x080047e1
 8004a24:	2000      	movs	r0, #0
 8004a26:	2100      	movs	r1, #0
 8004a28:	e774      	b.n	8004914 <__kernel_rem_pio2+0x6dc>
 8004a2a:	4632      	mov	r2, r6
 8004a2c:	463b      	mov	r3, r7
 8004a2e:	2000      	movs	r0, #0
 8004a30:	4906      	ldr	r1, [pc, #24]	; (8004a4c <__kernel_rem_pio2+0x814>)
 8004a32:	f7fb fbe9 	bl	8000208 <__aeabi_dsub>
 8004a36:	2502      	movs	r5, #2
 8004a38:	4606      	mov	r6, r0
 8004a3a:	460f      	mov	r7, r1
 8004a3c:	e524      	b.n	8004488 <__kernel_rem_pio2+0x250>
 8004a3e:	2000      	movs	r0, #0
 8004a40:	2100      	movs	r1, #0
 8004a42:	e73c      	b.n	80048be <__kernel_rem_pio2+0x686>
 8004a44:	41700000 	.word	0x41700000
 8004a48:	3e700000 	.word	0x3e700000
 8004a4c:	3ff00000 	.word	0x3ff00000

08004a50 <__kernel_sin>:
 8004a50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a54:	ec55 4b10 	vmov	r4, r5, d0
 8004a58:	ed2d 8b02 	vpush	{d8}
 8004a5c:	eeb0 8a41 	vmov.f32	s16, s2
 8004a60:	eef0 8a61 	vmov.f32	s17, s3
 8004a64:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 8004a68:	f1b3 5f79 	cmp.w	r3, #1044381696	; 0x3e400000
 8004a6c:	b083      	sub	sp, #12
 8004a6e:	4682      	mov	sl, r0
 8004a70:	da07      	bge.n	8004a82 <__kernel_sin+0x32>
 8004a72:	ee10 0a10 	vmov	r0, s0
 8004a76:	4629      	mov	r1, r5
 8004a78:	f7fc f82e 	bl	8000ad8 <__aeabi_d2iz>
 8004a7c:	2800      	cmp	r0, #0
 8004a7e:	f000 808e 	beq.w	8004b9e <__kernel_sin+0x14e>
 8004a82:	4622      	mov	r2, r4
 8004a84:	462b      	mov	r3, r5
 8004a86:	4620      	mov	r0, r4
 8004a88:	4629      	mov	r1, r5
 8004a8a:	f7fb fd75 	bl	8000578 <__aeabi_dmul>
 8004a8e:	4606      	mov	r6, r0
 8004a90:	460f      	mov	r7, r1
 8004a92:	4602      	mov	r2, r0
 8004a94:	460b      	mov	r3, r1
 8004a96:	4620      	mov	r0, r4
 8004a98:	4629      	mov	r1, r5
 8004a9a:	f7fb fd6d 	bl	8000578 <__aeabi_dmul>
 8004a9e:	a347      	add	r3, pc, #284	; (adr r3, 8004bbc <__kernel_sin+0x16c>)
 8004aa0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004aa4:	4680      	mov	r8, r0
 8004aa6:	4689      	mov	r9, r1
 8004aa8:	4630      	mov	r0, r6
 8004aaa:	4639      	mov	r1, r7
 8004aac:	f7fb fd64 	bl	8000578 <__aeabi_dmul>
 8004ab0:	a344      	add	r3, pc, #272	; (adr r3, 8004bc4 <__kernel_sin+0x174>)
 8004ab2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ab6:	f7fb fba7 	bl	8000208 <__aeabi_dsub>
 8004aba:	4632      	mov	r2, r6
 8004abc:	463b      	mov	r3, r7
 8004abe:	f7fb fd5b 	bl	8000578 <__aeabi_dmul>
 8004ac2:	a342      	add	r3, pc, #264	; (adr r3, 8004bcc <__kernel_sin+0x17c>)
 8004ac4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ac8:	f7fb fba0 	bl	800020c <__adddf3>
 8004acc:	4632      	mov	r2, r6
 8004ace:	463b      	mov	r3, r7
 8004ad0:	f7fb fd52 	bl	8000578 <__aeabi_dmul>
 8004ad4:	a33f      	add	r3, pc, #252	; (adr r3, 8004bd4 <__kernel_sin+0x184>)
 8004ad6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ada:	f7fb fb95 	bl	8000208 <__aeabi_dsub>
 8004ade:	4632      	mov	r2, r6
 8004ae0:	463b      	mov	r3, r7
 8004ae2:	f7fb fd49 	bl	8000578 <__aeabi_dmul>
 8004ae6:	a33d      	add	r3, pc, #244	; (adr r3, 8004bdc <__kernel_sin+0x18c>)
 8004ae8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004aec:	f7fb fb8e 	bl	800020c <__adddf3>
 8004af0:	e9cd 0100 	strd	r0, r1, [sp]
 8004af4:	f1ba 0f00 	cmp.w	sl, #0
 8004af8:	d037      	beq.n	8004b6a <__kernel_sin+0x11a>
 8004afa:	2200      	movs	r2, #0
 8004afc:	4b2e      	ldr	r3, [pc, #184]	; (8004bb8 <__kernel_sin+0x168>)
 8004afe:	ec51 0b18 	vmov	r0, r1, d8
 8004b02:	f7fb fd39 	bl	8000578 <__aeabi_dmul>
 8004b06:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b0a:	4682      	mov	sl, r0
 8004b0c:	468b      	mov	fp, r1
 8004b0e:	4640      	mov	r0, r8
 8004b10:	4649      	mov	r1, r9
 8004b12:	f7fb fd31 	bl	8000578 <__aeabi_dmul>
 8004b16:	4602      	mov	r2, r0
 8004b18:	460b      	mov	r3, r1
 8004b1a:	4650      	mov	r0, sl
 8004b1c:	4659      	mov	r1, fp
 8004b1e:	f7fb fb73 	bl	8000208 <__aeabi_dsub>
 8004b22:	4632      	mov	r2, r6
 8004b24:	463b      	mov	r3, r7
 8004b26:	f7fb fd27 	bl	8000578 <__aeabi_dmul>
 8004b2a:	ec53 2b18 	vmov	r2, r3, d8
 8004b2e:	f7fb fb6b 	bl	8000208 <__aeabi_dsub>
 8004b32:	a31f      	add	r3, pc, #124	; (adr r3, 8004bb0 <__kernel_sin+0x160>)
 8004b34:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b38:	4606      	mov	r6, r0
 8004b3a:	460f      	mov	r7, r1
 8004b3c:	4640      	mov	r0, r8
 8004b3e:	4649      	mov	r1, r9
 8004b40:	f7fb fd1a 	bl	8000578 <__aeabi_dmul>
 8004b44:	4602      	mov	r2, r0
 8004b46:	460b      	mov	r3, r1
 8004b48:	4630      	mov	r0, r6
 8004b4a:	4639      	mov	r1, r7
 8004b4c:	f7fb fb5e 	bl	800020c <__adddf3>
 8004b50:	4602      	mov	r2, r0
 8004b52:	460b      	mov	r3, r1
 8004b54:	4620      	mov	r0, r4
 8004b56:	4629      	mov	r1, r5
 8004b58:	f7fb fb56 	bl	8000208 <__aeabi_dsub>
 8004b5c:	ec41 0b10 	vmov	d0, r0, r1
 8004b60:	b003      	add	sp, #12
 8004b62:	ecbd 8b02 	vpop	{d8}
 8004b66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b6a:	4602      	mov	r2, r0
 8004b6c:	460b      	mov	r3, r1
 8004b6e:	4630      	mov	r0, r6
 8004b70:	4639      	mov	r1, r7
 8004b72:	f7fb fd01 	bl	8000578 <__aeabi_dmul>
 8004b76:	a30e      	add	r3, pc, #56	; (adr r3, 8004bb0 <__kernel_sin+0x160>)
 8004b78:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b7c:	f7fb fb44 	bl	8000208 <__aeabi_dsub>
 8004b80:	4642      	mov	r2, r8
 8004b82:	464b      	mov	r3, r9
 8004b84:	f7fb fcf8 	bl	8000578 <__aeabi_dmul>
 8004b88:	4622      	mov	r2, r4
 8004b8a:	462b      	mov	r3, r5
 8004b8c:	f7fb fb3e 	bl	800020c <__adddf3>
 8004b90:	ec41 0b10 	vmov	d0, r0, r1
 8004b94:	b003      	add	sp, #12
 8004b96:	ecbd 8b02 	vpop	{d8}
 8004b9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b9e:	ec45 4b10 	vmov	d0, r4, r5
 8004ba2:	b003      	add	sp, #12
 8004ba4:	ecbd 8b02 	vpop	{d8}
 8004ba8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004bac:	f3af 8000 	nop.w
 8004bb0:	55555549 	.word	0x55555549
 8004bb4:	3fc55555 	.word	0x3fc55555
 8004bb8:	3fe00000 	.word	0x3fe00000
 8004bbc:	5acfd57c 	.word	0x5acfd57c
 8004bc0:	3de5d93a 	.word	0x3de5d93a
 8004bc4:	8a2b9ceb 	.word	0x8a2b9ceb
 8004bc8:	3e5ae5e6 	.word	0x3e5ae5e6
 8004bcc:	57b1fe7d 	.word	0x57b1fe7d
 8004bd0:	3ec71de3 	.word	0x3ec71de3
 8004bd4:	19c161d5 	.word	0x19c161d5
 8004bd8:	3f2a01a0 	.word	0x3f2a01a0
 8004bdc:	1110f8a6 	.word	0x1110f8a6
 8004be0:	3f811111 	.word	0x3f811111

08004be4 <finite>:
 8004be4:	ee10 3a90 	vmov	r3, s1
 8004be8:	f043 4000 	orr.w	r0, r3, #2147483648	; 0x80000000
 8004bec:	f500 1080 	add.w	r0, r0, #1048576	; 0x100000
 8004bf0:	0fc0      	lsrs	r0, r0, #31
 8004bf2:	4770      	bx	lr
 8004bf4:	0000      	movs	r0, r0
	...

08004bf8 <floor>:
 8004bf8:	ec51 0b10 	vmov	r0, r1, d0
 8004bfc:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8004c00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004c04:	f2a3 35ff 	subw	r5, r3, #1023	; 0x3ff
 8004c08:	2d13      	cmp	r5, #19
 8004c0a:	460c      	mov	r4, r1
 8004c0c:	460f      	mov	r7, r1
 8004c0e:	ee10 6a10 	vmov	r6, s0
 8004c12:	dc1d      	bgt.n	8004c50 <floor+0x58>
 8004c14:	2d00      	cmp	r5, #0
 8004c16:	db3d      	blt.n	8004c94 <floor+0x9c>
 8004c18:	4b39      	ldr	r3, [pc, #228]	; (8004d00 <floor+0x108>)
 8004c1a:	fa43 f805 	asr.w	r8, r3, r5
 8004c1e:	ea01 0308 	and.w	r3, r1, r8
 8004c22:	4303      	orrs	r3, r0
 8004c24:	d019      	beq.n	8004c5a <floor+0x62>
 8004c26:	a334      	add	r3, pc, #208	; (adr r3, 8004cf8 <floor+0x100>)
 8004c28:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c2c:	f7fb faee 	bl	800020c <__adddf3>
 8004c30:	2200      	movs	r2, #0
 8004c32:	2300      	movs	r3, #0
 8004c34:	f7fb ff30 	bl	8000a98 <__aeabi_dcmpgt>
 8004c38:	b3d0      	cbz	r0, 8004cb0 <floor+0xb8>
 8004c3a:	2c00      	cmp	r4, #0
 8004c3c:	da04      	bge.n	8004c48 <floor+0x50>
 8004c3e:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 8004c42:	fa43 f505 	asr.w	r5, r3, r5
 8004c46:	442f      	add	r7, r5
 8004c48:	ea27 0408 	bic.w	r4, r7, r8
 8004c4c:	2600      	movs	r6, #0
 8004c4e:	e02f      	b.n	8004cb0 <floor+0xb8>
 8004c50:	2d33      	cmp	r5, #51	; 0x33
 8004c52:	dd06      	ble.n	8004c62 <floor+0x6a>
 8004c54:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 8004c58:	d030      	beq.n	8004cbc <floor+0xc4>
 8004c5a:	ec41 0b10 	vmov	d0, r0, r1
 8004c5e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004c62:	f2a3 4313 	subw	r3, r3, #1043	; 0x413
 8004c66:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 8004c6a:	fa28 f803 	lsr.w	r8, r8, r3
 8004c6e:	ea18 0f00 	tst.w	r8, r0
 8004c72:	d0f2      	beq.n	8004c5a <floor+0x62>
 8004c74:	a320      	add	r3, pc, #128	; (adr r3, 8004cf8 <floor+0x100>)
 8004c76:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c7a:	f7fb fac7 	bl	800020c <__adddf3>
 8004c7e:	2200      	movs	r2, #0
 8004c80:	2300      	movs	r3, #0
 8004c82:	f7fb ff09 	bl	8000a98 <__aeabi_dcmpgt>
 8004c86:	b198      	cbz	r0, 8004cb0 <floor+0xb8>
 8004c88:	2c00      	cmp	r4, #0
 8004c8a:	db28      	blt.n	8004cde <floor+0xe6>
 8004c8c:	ea26 0608 	bic.w	r6, r6, r8
 8004c90:	463c      	mov	r4, r7
 8004c92:	e00d      	b.n	8004cb0 <floor+0xb8>
 8004c94:	a318      	add	r3, pc, #96	; (adr r3, 8004cf8 <floor+0x100>)
 8004c96:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c9a:	f7fb fab7 	bl	800020c <__adddf3>
 8004c9e:	2200      	movs	r2, #0
 8004ca0:	2300      	movs	r3, #0
 8004ca2:	f7fb fef9 	bl	8000a98 <__aeabi_dcmpgt>
 8004ca6:	b118      	cbz	r0, 8004cb0 <floor+0xb8>
 8004ca8:	2c00      	cmp	r4, #0
 8004caa:	db0f      	blt.n	8004ccc <floor+0xd4>
 8004cac:	2600      	movs	r6, #0
 8004cae:	4634      	mov	r4, r6
 8004cb0:	4623      	mov	r3, r4
 8004cb2:	4632      	mov	r2, r6
 8004cb4:	ec43 2b10 	vmov	d0, r2, r3
 8004cb8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004cbc:	ee10 2a10 	vmov	r2, s0
 8004cc0:	460b      	mov	r3, r1
 8004cc2:	f7fb faa3 	bl	800020c <__adddf3>
 8004cc6:	ec41 0b10 	vmov	d0, r0, r1
 8004cca:	e7c8      	b.n	8004c5e <floor+0x66>
 8004ccc:	f024 4300 	bic.w	r3, r4, #2147483648	; 0x80000000
 8004cd0:	4a0c      	ldr	r2, [pc, #48]	; (8004d04 <floor+0x10c>)
 8004cd2:	431e      	orrs	r6, r3
 8004cd4:	2e00      	cmp	r6, #0
 8004cd6:	bf18      	it	ne
 8004cd8:	4614      	movne	r4, r2
 8004cda:	2600      	movs	r6, #0
 8004cdc:	e7e8      	b.n	8004cb0 <floor+0xb8>
 8004cde:	2d14      	cmp	r5, #20
 8004ce0:	d008      	beq.n	8004cf4 <floor+0xfc>
 8004ce2:	2301      	movs	r3, #1
 8004ce4:	f1c5 0534 	rsb	r5, r5, #52	; 0x34
 8004ce8:	fa03 f505 	lsl.w	r5, r3, r5
 8004cec:	19ae      	adds	r6, r5, r6
 8004cee:	bf28      	it	cs
 8004cf0:	18ff      	addcs	r7, r7, r3
 8004cf2:	e7cb      	b.n	8004c8c <floor+0x94>
 8004cf4:	3701      	adds	r7, #1
 8004cf6:	e7c9      	b.n	8004c8c <floor+0x94>
 8004cf8:	8800759c 	.word	0x8800759c
 8004cfc:	7e37e43c 	.word	0x7e37e43c
 8004d00:	000fffff 	.word	0x000fffff
 8004d04:	bff00000 	.word	0xbff00000

08004d08 <matherr>:
 8004d08:	2000      	movs	r0, #0
 8004d0a:	4770      	bx	lr
 8004d0c:	0000      	movs	r0, r0
	...

08004d10 <nan>:
 8004d10:	ed9f 0b01 	vldr	d0, [pc, #4]	; 8004d18 <nan+0x8>
 8004d14:	4770      	bx	lr
 8004d16:	bf00      	nop
 8004d18:	00000000 	.word	0x00000000
 8004d1c:	7ff80000 	.word	0x7ff80000

08004d20 <scalbn>:
 8004d20:	b538      	push	{r3, r4, r5, lr}
 8004d22:	ec53 2b10 	vmov	r2, r3, d0
 8004d26:	f3c3 510a 	ubfx	r1, r3, #20, #11
 8004d2a:	461c      	mov	r4, r3
 8004d2c:	4605      	mov	r5, r0
 8004d2e:	bb29      	cbnz	r1, 8004d7c <scalbn+0x5c>
 8004d30:	ee10 1a10 	vmov	r1, s0
 8004d34:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
 8004d38:	4321      	orrs	r1, r4
 8004d3a:	d01e      	beq.n	8004d7a <scalbn+0x5a>
 8004d3c:	4619      	mov	r1, r3
 8004d3e:	2200      	movs	r2, #0
 8004d40:	4b39      	ldr	r3, [pc, #228]	; (8004e28 <scalbn+0x108>)
 8004d42:	4c3a      	ldr	r4, [pc, #232]	; (8004e2c <scalbn+0x10c>)
 8004d44:	ee10 0a10 	vmov	r0, s0
 8004d48:	f7fb fc16 	bl	8000578 <__aeabi_dmul>
 8004d4c:	42a5      	cmp	r5, r4
 8004d4e:	4602      	mov	r2, r0
 8004d50:	460b      	mov	r3, r1
 8004d52:	db36      	blt.n	8004dc2 <scalbn+0xa2>
 8004d54:	460c      	mov	r4, r1
 8004d56:	f3c1 510a 	ubfx	r1, r1, #20, #11
 8004d5a:	3936      	subs	r1, #54	; 0x36
 8004d5c:	4429      	add	r1, r5
 8004d5e:	f240 70fe 	movw	r0, #2046	; 0x7fe
 8004d62:	4281      	cmp	r1, r0
 8004d64:	dc35      	bgt.n	8004dd2 <scalbn+0xb2>
 8004d66:	2900      	cmp	r1, #0
 8004d68:	dd14      	ble.n	8004d94 <scalbn+0x74>
 8004d6a:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 8004d6e:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 8004d72:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 8004d76:	ec43 2b10 	vmov	d0, r2, r3
 8004d7a:	bd38      	pop	{r3, r4, r5, pc}
 8004d7c:	f240 70ff 	movw	r0, #2047	; 0x7ff
 8004d80:	4281      	cmp	r1, r0
 8004d82:	d1eb      	bne.n	8004d5c <scalbn+0x3c>
 8004d84:	ee10 0a10 	vmov	r0, s0
 8004d88:	4619      	mov	r1, r3
 8004d8a:	f7fb fa3f 	bl	800020c <__adddf3>
 8004d8e:	ec41 0b10 	vmov	d0, r0, r1
 8004d92:	bd38      	pop	{r3, r4, r5, pc}
 8004d94:	f111 0f35 	cmn.w	r1, #53	; 0x35
 8004d98:	da1e      	bge.n	8004dd8 <scalbn+0xb8>
 8004d9a:	f24c 3150 	movw	r1, #50000	; 0xc350
 8004d9e:	428d      	cmp	r5, r1
 8004da0:	ec43 2b11 	vmov	d1, r2, r3
 8004da4:	dd28      	ble.n	8004df8 <scalbn+0xd8>
 8004da6:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 8004e18 <scalbn+0xf8>
 8004daa:	f000 f843 	bl	8004e34 <copysign>
 8004dae:	a31a      	add	r3, pc, #104	; (adr r3, 8004e18 <scalbn+0xf8>)
 8004db0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004db4:	ec51 0b10 	vmov	r0, r1, d0
 8004db8:	f7fb fbde 	bl	8000578 <__aeabi_dmul>
 8004dbc:	ec41 0b10 	vmov	d0, r0, r1
 8004dc0:	bd38      	pop	{r3, r4, r5, pc}
 8004dc2:	a317      	add	r3, pc, #92	; (adr r3, 8004e20 <scalbn+0x100>)
 8004dc4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004dc8:	f7fb fbd6 	bl	8000578 <__aeabi_dmul>
 8004dcc:	ec41 0b10 	vmov	d0, r0, r1
 8004dd0:	bd38      	pop	{r3, r4, r5, pc}
 8004dd2:	ec43 2b11 	vmov	d1, r2, r3
 8004dd6:	e7e6      	b.n	8004da6 <scalbn+0x86>
 8004dd8:	f024 44ff 	bic.w	r4, r4, #2139095040	; 0x7f800000
 8004ddc:	f424 04e0 	bic.w	r4, r4, #7340032	; 0x700000
 8004de0:	3136      	adds	r1, #54	; 0x36
 8004de2:	ea44 5301 	orr.w	r3, r4, r1, lsl #20
 8004de6:	4610      	mov	r0, r2
 8004de8:	4619      	mov	r1, r3
 8004dea:	2200      	movs	r2, #0
 8004dec:	4b10      	ldr	r3, [pc, #64]	; (8004e30 <scalbn+0x110>)
 8004dee:	f7fb fbc3 	bl	8000578 <__aeabi_dmul>
 8004df2:	ec41 0b10 	vmov	d0, r0, r1
 8004df6:	bd38      	pop	{r3, r4, r5, pc}
 8004df8:	ed9f 0b09 	vldr	d0, [pc, #36]	; 8004e20 <scalbn+0x100>
 8004dfc:	f000 f81a 	bl	8004e34 <copysign>
 8004e00:	a307      	add	r3, pc, #28	; (adr r3, 8004e20 <scalbn+0x100>)
 8004e02:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e06:	ec51 0b10 	vmov	r0, r1, d0
 8004e0a:	f7fb fbb5 	bl	8000578 <__aeabi_dmul>
 8004e0e:	ec41 0b10 	vmov	d0, r0, r1
 8004e12:	bd38      	pop	{r3, r4, r5, pc}
 8004e14:	f3af 8000 	nop.w
 8004e18:	8800759c 	.word	0x8800759c
 8004e1c:	7e37e43c 	.word	0x7e37e43c
 8004e20:	c2f8f359 	.word	0xc2f8f359
 8004e24:	01a56e1f 	.word	0x01a56e1f
 8004e28:	43500000 	.word	0x43500000
 8004e2c:	ffff3cb0 	.word	0xffff3cb0
 8004e30:	3c900000 	.word	0x3c900000

08004e34 <copysign>:
 8004e34:	ec53 2b10 	vmov	r2, r3, d0
 8004e38:	ee11 0a90 	vmov	r0, s3
 8004e3c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8004e40:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8004e44:	ea41 0300 	orr.w	r3, r1, r0
 8004e48:	ec43 2b10 	vmov	d0, r2, r3
 8004e4c:	4770      	bx	lr
 8004e4e:	bf00      	nop

08004e50 <__errno>:
 8004e50:	4b01      	ldr	r3, [pc, #4]	; (8004e58 <__errno+0x8>)
 8004e52:	6818      	ldr	r0, [r3, #0]
 8004e54:	4770      	bx	lr
 8004e56:	bf00      	nop
 8004e58:	2000001c 	.word	0x2000001c

08004e5c <__libc_init_array>:
 8004e5c:	b570      	push	{r4, r5, r6, lr}
 8004e5e:	4e0d      	ldr	r6, [pc, #52]	; (8004e94 <__libc_init_array+0x38>)
 8004e60:	4d0d      	ldr	r5, [pc, #52]	; (8004e98 <__libc_init_array+0x3c>)
 8004e62:	1b76      	subs	r6, r6, r5
 8004e64:	10b6      	asrs	r6, r6, #2
 8004e66:	d006      	beq.n	8004e76 <__libc_init_array+0x1a>
 8004e68:	2400      	movs	r4, #0
 8004e6a:	3401      	adds	r4, #1
 8004e6c:	f855 3b04 	ldr.w	r3, [r5], #4
 8004e70:	4798      	blx	r3
 8004e72:	42a6      	cmp	r6, r4
 8004e74:	d1f9      	bne.n	8004e6a <__libc_init_array+0xe>
 8004e76:	4e09      	ldr	r6, [pc, #36]	; (8004e9c <__libc_init_array+0x40>)
 8004e78:	4d09      	ldr	r5, [pc, #36]	; (8004ea0 <__libc_init_array+0x44>)
 8004e7a:	1b76      	subs	r6, r6, r5
 8004e7c:	f004 feaa 	bl	8009bd4 <_init>
 8004e80:	10b6      	asrs	r6, r6, #2
 8004e82:	d006      	beq.n	8004e92 <__libc_init_array+0x36>
 8004e84:	2400      	movs	r4, #0
 8004e86:	3401      	adds	r4, #1
 8004e88:	f855 3b04 	ldr.w	r3, [r5], #4
 8004e8c:	4798      	blx	r3
 8004e8e:	42a6      	cmp	r6, r4
 8004e90:	d1f9      	bne.n	8004e86 <__libc_init_array+0x2a>
 8004e92:	bd70      	pop	{r4, r5, r6, pc}
 8004e94:	0800a1f8 	.word	0x0800a1f8
 8004e98:	0800a1f8 	.word	0x0800a1f8
 8004e9c:	0800a200 	.word	0x0800a200
 8004ea0:	0800a1f8 	.word	0x0800a1f8

08004ea4 <memset>:
 8004ea4:	b4f0      	push	{r4, r5, r6, r7}
 8004ea6:	0786      	lsls	r6, r0, #30
 8004ea8:	d043      	beq.n	8004f32 <memset+0x8e>
 8004eaa:	1e54      	subs	r4, r2, #1
 8004eac:	2a00      	cmp	r2, #0
 8004eae:	d03e      	beq.n	8004f2e <memset+0x8a>
 8004eb0:	b2ca      	uxtb	r2, r1
 8004eb2:	4603      	mov	r3, r0
 8004eb4:	e002      	b.n	8004ebc <memset+0x18>
 8004eb6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8004eba:	d338      	bcc.n	8004f2e <memset+0x8a>
 8004ebc:	f803 2b01 	strb.w	r2, [r3], #1
 8004ec0:	079d      	lsls	r5, r3, #30
 8004ec2:	d1f8      	bne.n	8004eb6 <memset+0x12>
 8004ec4:	2c03      	cmp	r4, #3
 8004ec6:	d92b      	bls.n	8004f20 <memset+0x7c>
 8004ec8:	b2cd      	uxtb	r5, r1
 8004eca:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8004ece:	2c0f      	cmp	r4, #15
 8004ed0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8004ed4:	d916      	bls.n	8004f04 <memset+0x60>
 8004ed6:	f1a4 0710 	sub.w	r7, r4, #16
 8004eda:	093f      	lsrs	r7, r7, #4
 8004edc:	f103 0620 	add.w	r6, r3, #32
 8004ee0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8004ee4:	f103 0210 	add.w	r2, r3, #16
 8004ee8:	e942 5504 	strd	r5, r5, [r2, #-16]
 8004eec:	e942 5502 	strd	r5, r5, [r2, #-8]
 8004ef0:	3210      	adds	r2, #16
 8004ef2:	42b2      	cmp	r2, r6
 8004ef4:	d1f8      	bne.n	8004ee8 <memset+0x44>
 8004ef6:	f004 040f 	and.w	r4, r4, #15
 8004efa:	3701      	adds	r7, #1
 8004efc:	2c03      	cmp	r4, #3
 8004efe:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8004f02:	d90d      	bls.n	8004f20 <memset+0x7c>
 8004f04:	461e      	mov	r6, r3
 8004f06:	4622      	mov	r2, r4
 8004f08:	3a04      	subs	r2, #4
 8004f0a:	2a03      	cmp	r2, #3
 8004f0c:	f846 5b04 	str.w	r5, [r6], #4
 8004f10:	d8fa      	bhi.n	8004f08 <memset+0x64>
 8004f12:	1f22      	subs	r2, r4, #4
 8004f14:	f022 0203 	bic.w	r2, r2, #3
 8004f18:	3204      	adds	r2, #4
 8004f1a:	4413      	add	r3, r2
 8004f1c:	f004 0403 	and.w	r4, r4, #3
 8004f20:	b12c      	cbz	r4, 8004f2e <memset+0x8a>
 8004f22:	b2c9      	uxtb	r1, r1
 8004f24:	441c      	add	r4, r3
 8004f26:	f803 1b01 	strb.w	r1, [r3], #1
 8004f2a:	429c      	cmp	r4, r3
 8004f2c:	d1fb      	bne.n	8004f26 <memset+0x82>
 8004f2e:	bcf0      	pop	{r4, r5, r6, r7}
 8004f30:	4770      	bx	lr
 8004f32:	4614      	mov	r4, r2
 8004f34:	4603      	mov	r3, r0
 8004f36:	e7c5      	b.n	8004ec4 <memset+0x20>

08004f38 <printf>:
 8004f38:	b40f      	push	{r0, r1, r2, r3}
 8004f3a:	b500      	push	{lr}
 8004f3c:	4907      	ldr	r1, [pc, #28]	; (8004f5c <printf+0x24>)
 8004f3e:	b083      	sub	sp, #12
 8004f40:	ab04      	add	r3, sp, #16
 8004f42:	6808      	ldr	r0, [r1, #0]
 8004f44:	f853 2b04 	ldr.w	r2, [r3], #4
 8004f48:	6881      	ldr	r1, [r0, #8]
 8004f4a:	9301      	str	r3, [sp, #4]
 8004f4c:	f000 f860 	bl	8005010 <_vfprintf_r>
 8004f50:	b003      	add	sp, #12
 8004f52:	f85d eb04 	ldr.w	lr, [sp], #4
 8004f56:	b004      	add	sp, #16
 8004f58:	4770      	bx	lr
 8004f5a:	bf00      	nop
 8004f5c:	2000001c 	.word	0x2000001c

08004f60 <_puts_r>:
 8004f60:	b570      	push	{r4, r5, r6, lr}
 8004f62:	4605      	mov	r5, r0
 8004f64:	b088      	sub	sp, #32
 8004f66:	4608      	mov	r0, r1
 8004f68:	460c      	mov	r4, r1
 8004f6a:	f7fc f809 	bl	8000f80 <strlen>
 8004f6e:	4a22      	ldr	r2, [pc, #136]	; (8004ff8 <_puts_r+0x98>)
 8004f70:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004f72:	9404      	str	r4, [sp, #16]
 8004f74:	2601      	movs	r6, #1
 8004f76:	1c44      	adds	r4, r0, #1
 8004f78:	a904      	add	r1, sp, #16
 8004f7a:	9206      	str	r2, [sp, #24]
 8004f7c:	2202      	movs	r2, #2
 8004f7e:	9403      	str	r4, [sp, #12]
 8004f80:	9005      	str	r0, [sp, #20]
 8004f82:	68ac      	ldr	r4, [r5, #8]
 8004f84:	9607      	str	r6, [sp, #28]
 8004f86:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8004f8a:	b31b      	cbz	r3, 8004fd4 <_puts_r+0x74>
 8004f8c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8004f8e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f92:	07ce      	lsls	r6, r1, #31
 8004f94:	b29a      	uxth	r2, r3
 8004f96:	d401      	bmi.n	8004f9c <_puts_r+0x3c>
 8004f98:	0590      	lsls	r0, r2, #22
 8004f9a:	d525      	bpl.n	8004fe8 <_puts_r+0x88>
 8004f9c:	0491      	lsls	r1, r2, #18
 8004f9e:	d406      	bmi.n	8004fae <_puts_r+0x4e>
 8004fa0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8004fa2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8004fa6:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8004faa:	81a3      	strh	r3, [r4, #12]
 8004fac:	6662      	str	r2, [r4, #100]	; 0x64
 8004fae:	4628      	mov	r0, r5
 8004fb0:	aa01      	add	r2, sp, #4
 8004fb2:	4621      	mov	r1, r4
 8004fb4:	f003 f860 	bl	8008078 <__sfvwrite_r>
 8004fb8:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8004fba:	2800      	cmp	r0, #0
 8004fbc:	bf0c      	ite	eq
 8004fbe:	250a      	moveq	r5, #10
 8004fc0:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004fc4:	07da      	lsls	r2, r3, #31
 8004fc6:	d402      	bmi.n	8004fce <_puts_r+0x6e>
 8004fc8:	89a3      	ldrh	r3, [r4, #12]
 8004fca:	059b      	lsls	r3, r3, #22
 8004fcc:	d506      	bpl.n	8004fdc <_puts_r+0x7c>
 8004fce:	4628      	mov	r0, r5
 8004fd0:	b008      	add	sp, #32
 8004fd2:	bd70      	pop	{r4, r5, r6, pc}
 8004fd4:	4628      	mov	r0, r5
 8004fd6:	f002 feb9 	bl	8007d4c <__sinit>
 8004fda:	e7d7      	b.n	8004f8c <_puts_r+0x2c>
 8004fdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004fde:	f003 fa07 	bl	80083f0 <__retarget_lock_release_recursive>
 8004fe2:	4628      	mov	r0, r5
 8004fe4:	b008      	add	sp, #32
 8004fe6:	bd70      	pop	{r4, r5, r6, pc}
 8004fe8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004fea:	f003 f9ff 	bl	80083ec <__retarget_lock_acquire_recursive>
 8004fee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004ff2:	b29a      	uxth	r2, r3
 8004ff4:	e7d2      	b.n	8004f9c <_puts_r+0x3c>
 8004ff6:	bf00      	nop
 8004ff8:	08009f64 	.word	0x08009f64

08004ffc <puts>:
 8004ffc:	4b02      	ldr	r3, [pc, #8]	; (8005008 <puts+0xc>)
 8004ffe:	4601      	mov	r1, r0
 8005000:	6818      	ldr	r0, [r3, #0]
 8005002:	f7ff bfad 	b.w	8004f60 <_puts_r>
 8005006:	bf00      	nop
 8005008:	2000001c 	.word	0x2000001c
 800500c:	00000000 	.word	0x00000000

08005010 <_vfprintf_r>:
 8005010:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005014:	b0d7      	sub	sp, #348	; 0x15c
 8005016:	461c      	mov	r4, r3
 8005018:	4689      	mov	r9, r1
 800501a:	4617      	mov	r7, r2
 800501c:	4605      	mov	r5, r0
 800501e:	9003      	str	r0, [sp, #12]
 8005020:	f003 f9d2 	bl	80083c8 <_localeconv_r>
 8005024:	6803      	ldr	r3, [r0, #0]
 8005026:	9316      	str	r3, [sp, #88]	; 0x58
 8005028:	4618      	mov	r0, r3
 800502a:	f7fb ffa9 	bl	8000f80 <strlen>
 800502e:	9408      	str	r4, [sp, #32]
 8005030:	9015      	str	r0, [sp, #84]	; 0x54
 8005032:	b11d      	cbz	r5, 800503c <_vfprintf_r+0x2c>
 8005034:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005036:	2b00      	cmp	r3, #0
 8005038:	f000 8107 	beq.w	800524a <_vfprintf_r+0x23a>
 800503c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005040:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005044:	07c8      	lsls	r0, r1, #31
 8005046:	b293      	uxth	r3, r2
 8005048:	d402      	bmi.n	8005050 <_vfprintf_r+0x40>
 800504a:	0599      	lsls	r1, r3, #22
 800504c:	f140 811f 	bpl.w	800528e <_vfprintf_r+0x27e>
 8005050:	049e      	lsls	r6, r3, #18
 8005052:	d40a      	bmi.n	800506a <_vfprintf_r+0x5a>
 8005054:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005058:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800505c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005060:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005064:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005068:	b29b      	uxth	r3, r3
 800506a:	071d      	lsls	r5, r3, #28
 800506c:	f140 80b2 	bpl.w	80051d4 <_vfprintf_r+0x1c4>
 8005070:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8005074:	2a00      	cmp	r2, #0
 8005076:	f000 80ad 	beq.w	80051d4 <_vfprintf_r+0x1c4>
 800507a:	f003 021a 	and.w	r2, r3, #26
 800507e:	2a0a      	cmp	r2, #10
 8005080:	f000 80c9 	beq.w	8005216 <_vfprintf_r+0x206>
 8005084:	2300      	movs	r3, #0
 8005086:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80052a0 <_vfprintf_r+0x290>
 800508a:	9310      	str	r3, [sp, #64]	; 0x40
 800508c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8005090:	9317      	str	r3, [sp, #92]	; 0x5c
 8005092:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8005096:	931b      	str	r3, [sp, #108]	; 0x6c
 8005098:	9318      	str	r3, [sp, #96]	; 0x60
 800509a:	9305      	str	r3, [sp, #20]
 800509c:	ab2d      	add	r3, sp, #180	; 0xb4
 800509e:	932a      	str	r3, [sp, #168]	; 0xa8
 80050a0:	469b      	mov	fp, r3
 80050a2:	783b      	ldrb	r3, [r7, #0]
 80050a4:	f8cd 901c 	str.w	r9, [sp, #28]
 80050a8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80050ac:	2b00      	cmp	r3, #0
 80050ae:	f000 8259 	beq.w	8005564 <_vfprintf_r+0x554>
 80050b2:	2b25      	cmp	r3, #37	; 0x25
 80050b4:	463c      	mov	r4, r7
 80050b6:	d102      	bne.n	80050be <_vfprintf_r+0xae>
 80050b8:	e01d      	b.n	80050f6 <_vfprintf_r+0xe6>
 80050ba:	2b25      	cmp	r3, #37	; 0x25
 80050bc:	d003      	beq.n	80050c6 <_vfprintf_r+0xb6>
 80050be:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80050c2:	2b00      	cmp	r3, #0
 80050c4:	d1f9      	bne.n	80050ba <_vfprintf_r+0xaa>
 80050c6:	1be5      	subs	r5, r4, r7
 80050c8:	b18d      	cbz	r5, 80050ee <_vfprintf_r+0xde>
 80050ca:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80050ce:	3301      	adds	r3, #1
 80050d0:	442a      	add	r2, r5
 80050d2:	2b07      	cmp	r3, #7
 80050d4:	f8cb 7000 	str.w	r7, [fp]
 80050d8:	f8cb 5004 	str.w	r5, [fp, #4]
 80050dc:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80050e0:	f300 80ca 	bgt.w	8005278 <_vfprintf_r+0x268>
 80050e4:	f10b 0b08 	add.w	fp, fp, #8
 80050e8:	9b05      	ldr	r3, [sp, #20]
 80050ea:	442b      	add	r3, r5
 80050ec:	9305      	str	r3, [sp, #20]
 80050ee:	7823      	ldrb	r3, [r4, #0]
 80050f0:	2b00      	cmp	r3, #0
 80050f2:	f000 8237 	beq.w	8005564 <_vfprintf_r+0x554>
 80050f6:	2300      	movs	r3, #0
 80050f8:	7866      	ldrb	r6, [r4, #1]
 80050fa:	9306      	str	r3, [sp, #24]
 80050fc:	4698      	mov	r8, r3
 80050fe:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005102:	f104 0a01 	add.w	sl, r4, #1
 8005106:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800510a:	252b      	movs	r5, #43	; 0x2b
 800510c:	f10a 0a01 	add.w	sl, sl, #1
 8005110:	f1a6 0320 	sub.w	r3, r6, #32
 8005114:	2b5a      	cmp	r3, #90	; 0x5a
 8005116:	f200 842a 	bhi.w	800596e <_vfprintf_r+0x95e>
 800511a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800511e:	03aa      	.short	0x03aa
 8005120:	04280428 	.word	0x04280428
 8005124:	0428029c 	.word	0x0428029c
 8005128:	04280428 	.word	0x04280428
 800512c:	042802a7 	.word	0x042802a7
 8005130:	02c60428 	.word	0x02c60428
 8005134:	042802d2 	.word	0x042802d2
 8005138:	02dc02d7 	.word	0x02dc02d7
 800513c:	02f60428 	.word	0x02f60428
 8005140:	026d026d 	.word	0x026d026d
 8005144:	026d026d 	.word	0x026d026d
 8005148:	026d026d 	.word	0x026d026d
 800514c:	026d026d 	.word	0x026d026d
 8005150:	0428026d 	.word	0x0428026d
 8005154:	04280428 	.word	0x04280428
 8005158:	04280428 	.word	0x04280428
 800515c:	04280428 	.word	0x04280428
 8005160:	042802fb 	.word	0x042802fb
 8005164:	03f3033c 	.word	0x03f3033c
 8005168:	02fb02fb 	.word	0x02fb02fb
 800516c:	042802fb 	.word	0x042802fb
 8005170:	04280428 	.word	0x04280428
 8005174:	03ee0428 	.word	0x03ee0428
 8005178:	04280428 	.word	0x04280428
 800517c:	0428009a 	.word	0x0428009a
 8005180:	04280428 	.word	0x04280428
 8005184:	04280350 	.word	0x04280350
 8005188:	04280379 	.word	0x04280379
 800518c:	03900428 	.word	0x03900428
 8005190:	04280428 	.word	0x04280428
 8005194:	04280428 	.word	0x04280428
 8005198:	04280428 	.word	0x04280428
 800519c:	04280428 	.word	0x04280428
 80051a0:	042802fb 	.word	0x042802fb
 80051a4:	00c5033c 	.word	0x00c5033c
 80051a8:	02fb02fb 	.word	0x02fb02fb
 80051ac:	03d102fb 	.word	0x03d102fb
 80051b0:	007000c5 	.word	0x007000c5
 80051b4:	03b50428 	.word	0x03b50428
 80051b8:	03c20428 	.word	0x03c20428
 80051bc:	03de009c 	.word	0x03de009c
 80051c0:	04280070 	.word	0x04280070
 80051c4:	00720350 	.word	0x00720350
 80051c8:	0428022c 	.word	0x0428022c
 80051cc:	027c0428 	.word	0x027c0428
 80051d0:	00720428 	.word	0x00720428
 80051d4:	4649      	mov	r1, r9
 80051d6:	9803      	ldr	r0, [sp, #12]
 80051d8:	f001 fc9a 	bl	8006b10 <__swsetup_r>
 80051dc:	b1a0      	cbz	r0, 8005208 <_vfprintf_r+0x1f8>
 80051de:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80051e2:	07d8      	lsls	r0, r3, #31
 80051e4:	d404      	bmi.n	80051f0 <_vfprintf_r+0x1e0>
 80051e6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80051ea:	0599      	lsls	r1, r3, #22
 80051ec:	f140 83b7 	bpl.w	800595e <_vfprintf_r+0x94e>
 80051f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80051f4:	9305      	str	r3, [sp, #20]
 80051f6:	9805      	ldr	r0, [sp, #20]
 80051f8:	b057      	add	sp, #348	; 0x15c
 80051fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80051fe:	f048 0820 	orr.w	r8, r8, #32
 8005202:	f89a 6000 	ldrb.w	r6, [sl]
 8005206:	e781      	b.n	800510c <_vfprintf_r+0xfc>
 8005208:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800520c:	f003 021a 	and.w	r2, r3, #26
 8005210:	2a0a      	cmp	r2, #10
 8005212:	f47f af37 	bne.w	8005084 <_vfprintf_r+0x74>
 8005216:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800521a:	2a00      	cmp	r2, #0
 800521c:	f6ff af32 	blt.w	8005084 <_vfprintf_r+0x74>
 8005220:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005224:	07d2      	lsls	r2, r2, #31
 8005226:	d405      	bmi.n	8005234 <_vfprintf_r+0x224>
 8005228:	059b      	lsls	r3, r3, #22
 800522a:	d403      	bmi.n	8005234 <_vfprintf_r+0x224>
 800522c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005230:	f003 f8de 	bl	80083f0 <__retarget_lock_release_recursive>
 8005234:	4623      	mov	r3, r4
 8005236:	463a      	mov	r2, r7
 8005238:	4649      	mov	r1, r9
 800523a:	9803      	ldr	r0, [sp, #12]
 800523c:	f001 fc26 	bl	8006a8c <__sbprintf>
 8005240:	9005      	str	r0, [sp, #20]
 8005242:	9805      	ldr	r0, [sp, #20]
 8005244:	b057      	add	sp, #348	; 0x15c
 8005246:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800524a:	9803      	ldr	r0, [sp, #12]
 800524c:	f002 fd7e 	bl	8007d4c <__sinit>
 8005250:	e6f4      	b.n	800503c <_vfprintf_r+0x2c>
 8005252:	f048 0810 	orr.w	r8, r8, #16
 8005256:	f018 0f20 	tst.w	r8, #32
 800525a:	f000 836c 	beq.w	8005936 <_vfprintf_r+0x926>
 800525e:	9c08      	ldr	r4, [sp, #32]
 8005260:	3407      	adds	r4, #7
 8005262:	f024 0307 	bic.w	r3, r4, #7
 8005266:	e9d3 4500 	ldrd	r4, r5, [r3]
 800526a:	f103 0208 	add.w	r2, r3, #8
 800526e:	9208      	str	r2, [sp, #32]
 8005270:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005274:	2200      	movs	r2, #0
 8005276:	e18c      	b.n	8005592 <_vfprintf_r+0x582>
 8005278:	aa2a      	add	r2, sp, #168	; 0xa8
 800527a:	9907      	ldr	r1, [sp, #28]
 800527c:	9803      	ldr	r0, [sp, #12]
 800527e:	f004 f9f5 	bl	800966c <__sprint_r>
 8005282:	2800      	cmp	r0, #0
 8005284:	f041 8376 	bne.w	8006974 <_vfprintf_r+0x1964>
 8005288:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800528c:	e72c      	b.n	80050e8 <_vfprintf_r+0xd8>
 800528e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005292:	f003 f8ab 	bl	80083ec <__retarget_lock_acquire_recursive>
 8005296:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800529a:	b293      	uxth	r3, r2
 800529c:	e6d8      	b.n	8005050 <_vfprintf_r+0x40>
 800529e:	bf00      	nop
	...
 80052a8:	4643      	mov	r3, r8
 80052aa:	069f      	lsls	r7, r3, #26
 80052ac:	f140 832f 	bpl.w	800590e <_vfprintf_r+0x8fe>
 80052b0:	9c08      	ldr	r4, [sp, #32]
 80052b2:	3407      	adds	r4, #7
 80052b4:	f024 0407 	bic.w	r4, r4, #7
 80052b8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80052bc:	f104 0208 	add.w	r2, r4, #8
 80052c0:	9208      	str	r2, [sp, #32]
 80052c2:	4604      	mov	r4, r0
 80052c4:	460d      	mov	r5, r1
 80052c6:	2800      	cmp	r0, #0
 80052c8:	f171 0200 	sbcs.w	r2, r1, #0
 80052cc:	da05      	bge.n	80052da <_vfprintf_r+0x2ca>
 80052ce:	222d      	movs	r2, #45	; 0x2d
 80052d0:	4264      	negs	r4, r4
 80052d2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80052d6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80052da:	aa56      	add	r2, sp, #344	; 0x158
 80052dc:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80052e0:	9204      	str	r2, [sp, #16]
 80052e2:	f000 84b2 	beq.w	8005c4a <_vfprintf_r+0xc3a>
 80052e6:	2201      	movs	r2, #1
 80052e8:	ea54 0105 	orrs.w	r1, r4, r5
 80052ec:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80052f0:	f040 8159 	bne.w	80055a6 <_vfprintf_r+0x596>
 80052f4:	f1b9 0f00 	cmp.w	r9, #0
 80052f8:	f040 8619 	bne.w	8005f2e <_vfprintf_r+0xf1e>
 80052fc:	2a00      	cmp	r2, #0
 80052fe:	f040 8508 	bne.w	8005d12 <_vfprintf_r+0xd02>
 8005302:	f013 0301 	ands.w	r3, r3, #1
 8005306:	af56      	add	r7, sp, #344	; 0x158
 8005308:	9309      	str	r3, [sp, #36]	; 0x24
 800530a:	d002      	beq.n	8005312 <_vfprintf_r+0x302>
 800530c:	2330      	movs	r3, #48	; 0x30
 800530e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005312:	2300      	movs	r3, #0
 8005314:	930a      	str	r3, [sp, #40]	; 0x28
 8005316:	930f      	str	r3, [sp, #60]	; 0x3c
 8005318:	9314      	str	r3, [sp, #80]	; 0x50
 800531a:	9311      	str	r3, [sp, #68]	; 0x44
 800531c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800531e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005322:	454b      	cmp	r3, r9
 8005324:	bfb8      	it	lt
 8005326:	464b      	movlt	r3, r9
 8005328:	9304      	str	r3, [sp, #16]
 800532a:	b112      	cbz	r2, 8005332 <_vfprintf_r+0x322>
 800532c:	9b04      	ldr	r3, [sp, #16]
 800532e:	3301      	adds	r3, #1
 8005330:	9304      	str	r3, [sp, #16]
 8005332:	f018 0302 	ands.w	r3, r8, #2
 8005336:	930b      	str	r3, [sp, #44]	; 0x2c
 8005338:	d002      	beq.n	8005340 <_vfprintf_r+0x330>
 800533a:	9b04      	ldr	r3, [sp, #16]
 800533c:	3302      	adds	r3, #2
 800533e:	9304      	str	r3, [sp, #16]
 8005340:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005344:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005346:	930e      	str	r3, [sp, #56]	; 0x38
 8005348:	d13f      	bne.n	80053ca <_vfprintf_r+0x3ba>
 800534a:	9b06      	ldr	r3, [sp, #24]
 800534c:	9904      	ldr	r1, [sp, #16]
 800534e:	1a5d      	subs	r5, r3, r1
 8005350:	2d00      	cmp	r5, #0
 8005352:	dd3a      	ble.n	80053ca <_vfprintf_r+0x3ba>
 8005354:	2d10      	cmp	r5, #16
 8005356:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005358:	dd29      	ble.n	80053ae <_vfprintf_r+0x39e>
 800535a:	4659      	mov	r1, fp
 800535c:	4620      	mov	r0, r4
 800535e:	9620      	str	r6, [sp, #128]	; 0x80
 8005360:	2310      	movs	r3, #16
 8005362:	9c03      	ldr	r4, [sp, #12]
 8005364:	9e07      	ldr	r6, [sp, #28]
 8005366:	46bb      	mov	fp, r7
 8005368:	e004      	b.n	8005374 <_vfprintf_r+0x364>
 800536a:	3d10      	subs	r5, #16
 800536c:	2d10      	cmp	r5, #16
 800536e:	f101 0108 	add.w	r1, r1, #8
 8005372:	dd18      	ble.n	80053a6 <_vfprintf_r+0x396>
 8005374:	3201      	adds	r2, #1
 8005376:	4fba      	ldr	r7, [pc, #744]	; (8005660 <_vfprintf_r+0x650>)
 8005378:	3010      	adds	r0, #16
 800537a:	2a07      	cmp	r2, #7
 800537c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005380:	e9c1 7300 	strd	r7, r3, [r1]
 8005384:	ddf1      	ble.n	800536a <_vfprintf_r+0x35a>
 8005386:	aa2a      	add	r2, sp, #168	; 0xa8
 8005388:	4631      	mov	r1, r6
 800538a:	4620      	mov	r0, r4
 800538c:	930c      	str	r3, [sp, #48]	; 0x30
 800538e:	f004 f96d 	bl	800966c <__sprint_r>
 8005392:	2800      	cmp	r0, #0
 8005394:	f040 843d 	bne.w	8005c12 <_vfprintf_r+0xc02>
 8005398:	3d10      	subs	r5, #16
 800539a:	2d10      	cmp	r5, #16
 800539c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80053a0:	a92d      	add	r1, sp, #180	; 0xb4
 80053a2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80053a4:	dce6      	bgt.n	8005374 <_vfprintf_r+0x364>
 80053a6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80053a8:	465f      	mov	r7, fp
 80053aa:	4604      	mov	r4, r0
 80053ac:	468b      	mov	fp, r1
 80053ae:	3201      	adds	r2, #1
 80053b0:	4bab      	ldr	r3, [pc, #684]	; (8005660 <_vfprintf_r+0x650>)
 80053b2:	442c      	add	r4, r5
 80053b4:	2a07      	cmp	r2, #7
 80053b6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80053ba:	e9cb 3500 	strd	r3, r5, [fp]
 80053be:	f300 84ff 	bgt.w	8005dc0 <_vfprintf_r+0xdb0>
 80053c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80053c6:	f10b 0b08 	add.w	fp, fp, #8
 80053ca:	b172      	cbz	r2, 80053ea <_vfprintf_r+0x3da>
 80053cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80053ce:	3201      	adds	r2, #1
 80053d0:	3401      	adds	r4, #1
 80053d2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80053d6:	2101      	movs	r1, #1
 80053d8:	2a07      	cmp	r2, #7
 80053da:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80053de:	e9cb 0100 	strd	r0, r1, [fp]
 80053e2:	f300 8418 	bgt.w	8005c16 <_vfprintf_r+0xc06>
 80053e6:	f10b 0b08 	add.w	fp, fp, #8
 80053ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80053ec:	b16b      	cbz	r3, 800540a <_vfprintf_r+0x3fa>
 80053ee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80053f0:	3301      	adds	r3, #1
 80053f2:	3402      	adds	r4, #2
 80053f4:	a923      	add	r1, sp, #140	; 0x8c
 80053f6:	2202      	movs	r2, #2
 80053f8:	2b07      	cmp	r3, #7
 80053fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80053fe:	e9cb 1200 	strd	r1, r2, [fp]
 8005402:	f300 8415 	bgt.w	8005c30 <_vfprintf_r+0xc20>
 8005406:	f10b 0b08 	add.w	fp, fp, #8
 800540a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800540c:	2b80      	cmp	r3, #128	; 0x80
 800540e:	f000 8331 	beq.w	8005a74 <_vfprintf_r+0xa64>
 8005412:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005414:	eba9 0503 	sub.w	r5, r9, r3
 8005418:	2d00      	cmp	r5, #0
 800541a:	dd37      	ble.n	800548c <_vfprintf_r+0x47c>
 800541c:	2d10      	cmp	r5, #16
 800541e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005420:	4b90      	ldr	r3, [pc, #576]	; (8005664 <_vfprintf_r+0x654>)
 8005422:	dd28      	ble.n	8005476 <_vfprintf_r+0x466>
 8005424:	4659      	mov	r1, fp
 8005426:	4620      	mov	r0, r4
 8005428:	46bb      	mov	fp, r7
 800542a:	f04f 0910 	mov.w	r9, #16
 800542e:	4637      	mov	r7, r6
 8005430:	461c      	mov	r4, r3
 8005432:	9e07      	ldr	r6, [sp, #28]
 8005434:	e004      	b.n	8005440 <_vfprintf_r+0x430>
 8005436:	3d10      	subs	r5, #16
 8005438:	2d10      	cmp	r5, #16
 800543a:	f101 0108 	add.w	r1, r1, #8
 800543e:	dd15      	ble.n	800546c <_vfprintf_r+0x45c>
 8005440:	3201      	adds	r2, #1
 8005442:	3010      	adds	r0, #16
 8005444:	2a07      	cmp	r2, #7
 8005446:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800544a:	e9c1 4900 	strd	r4, r9, [r1]
 800544e:	ddf2      	ble.n	8005436 <_vfprintf_r+0x426>
 8005450:	aa2a      	add	r2, sp, #168	; 0xa8
 8005452:	4631      	mov	r1, r6
 8005454:	9803      	ldr	r0, [sp, #12]
 8005456:	f004 f909 	bl	800966c <__sprint_r>
 800545a:	2800      	cmp	r0, #0
 800545c:	f040 83d9 	bne.w	8005c12 <_vfprintf_r+0xc02>
 8005460:	3d10      	subs	r5, #16
 8005462:	2d10      	cmp	r5, #16
 8005464:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005468:	a92d      	add	r1, sp, #180	; 0xb4
 800546a:	dce9      	bgt.n	8005440 <_vfprintf_r+0x430>
 800546c:	463e      	mov	r6, r7
 800546e:	4623      	mov	r3, r4
 8005470:	465f      	mov	r7, fp
 8005472:	4604      	mov	r4, r0
 8005474:	468b      	mov	fp, r1
 8005476:	3201      	adds	r2, #1
 8005478:	442c      	add	r4, r5
 800547a:	2a07      	cmp	r2, #7
 800547c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005480:	e9cb 3500 	strd	r3, r5, [fp]
 8005484:	f300 83ef 	bgt.w	8005c66 <_vfprintf_r+0xc56>
 8005488:	f10b 0b08 	add.w	fp, fp, #8
 800548c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8005490:	f040 8280 	bne.w	8005994 <_vfprintf_r+0x984>
 8005494:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005496:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005498:	f8cb 7000 	str.w	r7, [fp]
 800549c:	3301      	adds	r3, #1
 800549e:	4414      	add	r4, r2
 80054a0:	2b07      	cmp	r3, #7
 80054a2:	942c      	str	r4, [sp, #176]	; 0xb0
 80054a4:	f8cb 2004 	str.w	r2, [fp, #4]
 80054a8:	932b      	str	r3, [sp, #172]	; 0xac
 80054aa:	f300 8392 	bgt.w	8005bd2 <_vfprintf_r+0xbc2>
 80054ae:	f10b 0b08 	add.w	fp, fp, #8
 80054b2:	f018 0f04 	tst.w	r8, #4
 80054b6:	d03b      	beq.n	8005530 <_vfprintf_r+0x520>
 80054b8:	9b06      	ldr	r3, [sp, #24]
 80054ba:	9a04      	ldr	r2, [sp, #16]
 80054bc:	1a9d      	subs	r5, r3, r2
 80054be:	2d00      	cmp	r5, #0
 80054c0:	dd36      	ble.n	8005530 <_vfprintf_r+0x520>
 80054c2:	2d10      	cmp	r5, #16
 80054c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80054c6:	dd21      	ble.n	800550c <_vfprintf_r+0x4fc>
 80054c8:	2610      	movs	r6, #16
 80054ca:	9f03      	ldr	r7, [sp, #12]
 80054cc:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80054d0:	e004      	b.n	80054dc <_vfprintf_r+0x4cc>
 80054d2:	3d10      	subs	r5, #16
 80054d4:	2d10      	cmp	r5, #16
 80054d6:	f10b 0b08 	add.w	fp, fp, #8
 80054da:	dd17      	ble.n	800550c <_vfprintf_r+0x4fc>
 80054dc:	3301      	adds	r3, #1
 80054de:	4a60      	ldr	r2, [pc, #384]	; (8005660 <_vfprintf_r+0x650>)
 80054e0:	3410      	adds	r4, #16
 80054e2:	2b07      	cmp	r3, #7
 80054e4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80054e8:	e9cb 2600 	strd	r2, r6, [fp]
 80054ec:	ddf1      	ble.n	80054d2 <_vfprintf_r+0x4c2>
 80054ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80054f0:	4641      	mov	r1, r8
 80054f2:	4638      	mov	r0, r7
 80054f4:	f004 f8ba 	bl	800966c <__sprint_r>
 80054f8:	2800      	cmp	r0, #0
 80054fa:	f040 856c 	bne.w	8005fd6 <_vfprintf_r+0xfc6>
 80054fe:	3d10      	subs	r5, #16
 8005500:	2d10      	cmp	r5, #16
 8005502:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005506:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800550a:	dce7      	bgt.n	80054dc <_vfprintf_r+0x4cc>
 800550c:	3301      	adds	r3, #1
 800550e:	4a54      	ldr	r2, [pc, #336]	; (8005660 <_vfprintf_r+0x650>)
 8005510:	442c      	add	r4, r5
 8005512:	2b07      	cmp	r3, #7
 8005514:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005518:	e9cb 2500 	strd	r2, r5, [fp]
 800551c:	dd08      	ble.n	8005530 <_vfprintf_r+0x520>
 800551e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005520:	9907      	ldr	r1, [sp, #28]
 8005522:	9803      	ldr	r0, [sp, #12]
 8005524:	f004 f8a2 	bl	800966c <__sprint_r>
 8005528:	2800      	cmp	r0, #0
 800552a:	f040 82e9 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 800552e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005530:	9904      	ldr	r1, [sp, #16]
 8005532:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8005536:	428a      	cmp	r2, r1
 8005538:	bfac      	ite	ge
 800553a:	189b      	addge	r3, r3, r2
 800553c:	185b      	addlt	r3, r3, r1
 800553e:	9305      	str	r3, [sp, #20]
 8005540:	2c00      	cmp	r4, #0
 8005542:	f040 82d5 	bne.w	8005af0 <_vfprintf_r+0xae0>
 8005546:	2300      	movs	r3, #0
 8005548:	932b      	str	r3, [sp, #172]	; 0xac
 800554a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800554c:	b11b      	cbz	r3, 8005556 <_vfprintf_r+0x546>
 800554e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005550:	9803      	ldr	r0, [sp, #12]
 8005552:	f002 fc9d 	bl	8007e90 <_free_r>
 8005556:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800555a:	4657      	mov	r7, sl
 800555c:	783b      	ldrb	r3, [r7, #0]
 800555e:	2b00      	cmp	r3, #0
 8005560:	f47f ada7 	bne.w	80050b2 <_vfprintf_r+0xa2>
 8005564:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005566:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800556a:	2b00      	cmp	r3, #0
 800556c:	f041 80e7 	bne.w	800673e <_vfprintf_r+0x172e>
 8005570:	2300      	movs	r3, #0
 8005572:	932b      	str	r3, [sp, #172]	; 0xac
 8005574:	e2cb      	b.n	8005b0e <_vfprintf_r+0xafe>
 8005576:	4643      	mov	r3, r8
 8005578:	069a      	lsls	r2, r3, #26
 800557a:	f140 814e 	bpl.w	800581a <_vfprintf_r+0x80a>
 800557e:	9c08      	ldr	r4, [sp, #32]
 8005580:	3407      	adds	r4, #7
 8005582:	f024 0207 	bic.w	r2, r4, #7
 8005586:	f102 0108 	add.w	r1, r2, #8
 800558a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800558e:	9108      	str	r1, [sp, #32]
 8005590:	2201      	movs	r2, #1
 8005592:	2100      	movs	r1, #0
 8005594:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8005598:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800559c:	a956      	add	r1, sp, #344	; 0x158
 800559e:	9104      	str	r1, [sp, #16]
 80055a0:	f47f aea2 	bne.w	80052e8 <_vfprintf_r+0x2d8>
 80055a4:	4698      	mov	r8, r3
 80055a6:	2a01      	cmp	r2, #1
 80055a8:	f000 8350 	beq.w	8005c4c <_vfprintf_r+0xc3c>
 80055ac:	2a02      	cmp	r2, #2
 80055ae:	f000 831b 	beq.w	8005be8 <_vfprintf_r+0xbd8>
 80055b2:	a956      	add	r1, sp, #344	; 0x158
 80055b4:	e000      	b.n	80055b8 <_vfprintf_r+0x5a8>
 80055b6:	4639      	mov	r1, r7
 80055b8:	08e2      	lsrs	r2, r4, #3
 80055ba:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80055be:	08e8      	lsrs	r0, r5, #3
 80055c0:	f004 0307 	and.w	r3, r4, #7
 80055c4:	4605      	mov	r5, r0
 80055c6:	4614      	mov	r4, r2
 80055c8:	3330      	adds	r3, #48	; 0x30
 80055ca:	ea54 0205 	orrs.w	r2, r4, r5
 80055ce:	f801 3c01 	strb.w	r3, [r1, #-1]
 80055d2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80055d6:	d1ee      	bne.n	80055b6 <_vfprintf_r+0x5a6>
 80055d8:	f018 0f01 	tst.w	r8, #1
 80055dc:	f000 8314 	beq.w	8005c08 <_vfprintf_r+0xbf8>
 80055e0:	2b30      	cmp	r3, #48	; 0x30
 80055e2:	f000 8311 	beq.w	8005c08 <_vfprintf_r+0xbf8>
 80055e6:	9a04      	ldr	r2, [sp, #16]
 80055e8:	3902      	subs	r1, #2
 80055ea:	2330      	movs	r3, #48	; 0x30
 80055ec:	1a52      	subs	r2, r2, r1
 80055ee:	f807 3c01 	strb.w	r3, [r7, #-1]
 80055f2:	9209      	str	r2, [sp, #36]	; 0x24
 80055f4:	460f      	mov	r7, r1
 80055f6:	e68c      	b.n	8005312 <_vfprintf_r+0x302>
 80055f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80055fc:	2200      	movs	r2, #0
 80055fe:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005602:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8005606:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800560a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800560e:	2b09      	cmp	r3, #9
 8005610:	d9f5      	bls.n	80055fe <_vfprintf_r+0x5ee>
 8005612:	9206      	str	r2, [sp, #24]
 8005614:	e57c      	b.n	8005110 <_vfprintf_r+0x100>
 8005616:	4b14      	ldr	r3, [pc, #80]	; (8005668 <_vfprintf_r+0x658>)
 8005618:	9317      	str	r3, [sp, #92]	; 0x5c
 800561a:	f018 0f20 	tst.w	r8, #32
 800561e:	f000 8114 	beq.w	800584a <_vfprintf_r+0x83a>
 8005622:	9c08      	ldr	r4, [sp, #32]
 8005624:	3407      	adds	r4, #7
 8005626:	f024 0307 	bic.w	r3, r4, #7
 800562a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800562e:	f103 0208 	add.w	r2, r3, #8
 8005632:	9208      	str	r2, [sp, #32]
 8005634:	f018 0f01 	tst.w	r8, #1
 8005638:	d009      	beq.n	800564e <_vfprintf_r+0x63e>
 800563a:	ea54 0305 	orrs.w	r3, r4, r5
 800563e:	d006      	beq.n	800564e <_vfprintf_r+0x63e>
 8005640:	2330      	movs	r3, #48	; 0x30
 8005642:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8005646:	f048 0802 	orr.w	r8, r8, #2
 800564a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800564e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005652:	2202      	movs	r2, #2
 8005654:	e79d      	b.n	8005592 <_vfprintf_r+0x582>
 8005656:	f048 0801 	orr.w	r8, r8, #1
 800565a:	f89a 6000 	ldrb.w	r6, [sl]
 800565e:	e555      	b.n	800510c <_vfprintf_r+0xfc>
 8005660:	08009fac 	.word	0x08009fac
 8005664:	08009fbc 	.word	0x08009fbc
 8005668:	08009f78 	.word	0x08009f78
 800566c:	9e03      	ldr	r6, [sp, #12]
 800566e:	4630      	mov	r0, r6
 8005670:	f002 feaa 	bl	80083c8 <_localeconv_r>
 8005674:	6843      	ldr	r3, [r0, #4]
 8005676:	9318      	str	r3, [sp, #96]	; 0x60
 8005678:	4618      	mov	r0, r3
 800567a:	f7fb fc81 	bl	8000f80 <strlen>
 800567e:	901b      	str	r0, [sp, #108]	; 0x6c
 8005680:	4604      	mov	r4, r0
 8005682:	4630      	mov	r0, r6
 8005684:	f002 fea0 	bl	80083c8 <_localeconv_r>
 8005688:	6883      	ldr	r3, [r0, #8]
 800568a:	931a      	str	r3, [sp, #104]	; 0x68
 800568c:	2c00      	cmp	r4, #0
 800568e:	f43f adb8 	beq.w	8005202 <_vfprintf_r+0x1f2>
 8005692:	f89a 6000 	ldrb.w	r6, [sl]
 8005696:	2b00      	cmp	r3, #0
 8005698:	f43f ad38 	beq.w	800510c <_vfprintf_r+0xfc>
 800569c:	781b      	ldrb	r3, [r3, #0]
 800569e:	2b00      	cmp	r3, #0
 80056a0:	f43f ad34 	beq.w	800510c <_vfprintf_r+0xfc>
 80056a4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80056a8:	e530      	b.n	800510c <_vfprintf_r+0xfc>
 80056aa:	9b08      	ldr	r3, [sp, #32]
 80056ac:	f89a 6000 	ldrb.w	r6, [sl]
 80056b0:	681a      	ldr	r2, [r3, #0]
 80056b2:	9206      	str	r2, [sp, #24]
 80056b4:	2a00      	cmp	r2, #0
 80056b6:	f103 0304 	add.w	r3, r3, #4
 80056ba:	f2c0 8697 	blt.w	80063ec <_vfprintf_r+0x13dc>
 80056be:	9308      	str	r3, [sp, #32]
 80056c0:	e524      	b.n	800510c <_vfprintf_r+0xfc>
 80056c2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80056c6:	f89a 6000 	ldrb.w	r6, [sl]
 80056ca:	e51f      	b.n	800510c <_vfprintf_r+0xfc>
 80056cc:	f89a 6000 	ldrb.w	r6, [sl]
 80056d0:	f048 0804 	orr.w	r8, r8, #4
 80056d4:	e51a      	b.n	800510c <_vfprintf_r+0xfc>
 80056d6:	f89a 6000 	ldrb.w	r6, [sl]
 80056da:	2e2a      	cmp	r6, #42	; 0x2a
 80056dc:	f10a 0201 	add.w	r2, sl, #1
 80056e0:	f001 81b0 	beq.w	8006a44 <_vfprintf_r+0x1a34>
 80056e4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80056e8:	2b09      	cmp	r3, #9
 80056ea:	4692      	mov	sl, r2
 80056ec:	f04f 0900 	mov.w	r9, #0
 80056f0:	f63f ad0e 	bhi.w	8005110 <_vfprintf_r+0x100>
 80056f4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80056f8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80056fc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8005700:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005704:	2b09      	cmp	r3, #9
 8005706:	d9f5      	bls.n	80056f4 <_vfprintf_r+0x6e4>
 8005708:	e502      	b.n	8005110 <_vfprintf_r+0x100>
 800570a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800570e:	f89a 6000 	ldrb.w	r6, [sl]
 8005712:	e4fb      	b.n	800510c <_vfprintf_r+0xfc>
 8005714:	9c08      	ldr	r4, [sp, #32]
 8005716:	3407      	adds	r4, #7
 8005718:	f024 0407 	bic.w	r4, r4, #7
 800571c:	ed94 7b00 	vldr	d7, [r4]
 8005720:	ec52 1b17 	vmov	r1, r2, d7
 8005724:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005728:	931d      	str	r3, [sp, #116]	; 0x74
 800572a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800572e:	3408      	adds	r4, #8
 8005730:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005734:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005738:	4bba      	ldr	r3, [pc, #744]	; (8005a24 <_vfprintf_r+0xa14>)
 800573a:	9408      	str	r4, [sp, #32]
 800573c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005740:	f7fb f9b4 	bl	8000aac <__aeabi_dcmpun>
 8005744:	2800      	cmp	r0, #0
 8005746:	f040 846f 	bne.w	8006028 <_vfprintf_r+0x1018>
 800574a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800574e:	4bb5      	ldr	r3, [pc, #724]	; (8005a24 <_vfprintf_r+0xa14>)
 8005750:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005754:	f7fb f98c 	bl	8000a70 <__aeabi_dcmple>
 8005758:	2800      	cmp	r0, #0
 800575a:	f040 8465 	bne.w	8006028 <_vfprintf_r+0x1018>
 800575e:	2200      	movs	r2, #0
 8005760:	2300      	movs	r3, #0
 8005762:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005766:	f7fb f979 	bl	8000a5c <__aeabi_dcmplt>
 800576a:	2800      	cmp	r0, #0
 800576c:	f040 855b 	bne.w	8006226 <_vfprintf_r+0x1216>
 8005770:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005774:	4fac      	ldr	r7, [pc, #688]	; (8005a28 <_vfprintf_r+0xa18>)
 8005776:	4bad      	ldr	r3, [pc, #692]	; (8005a2c <_vfprintf_r+0xa1c>)
 8005778:	2000      	movs	r0, #0
 800577a:	2103      	movs	r1, #3
 800577c:	9104      	str	r1, [sp, #16]
 800577e:	900a      	str	r0, [sp, #40]	; 0x28
 8005780:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8005784:	2e47      	cmp	r6, #71	; 0x47
 8005786:	bfd8      	it	le
 8005788:	461f      	movle	r7, r3
 800578a:	9109      	str	r1, [sp, #36]	; 0x24
 800578c:	4681      	mov	r9, r0
 800578e:	900f      	str	r0, [sp, #60]	; 0x3c
 8005790:	9014      	str	r0, [sp, #80]	; 0x50
 8005792:	9011      	str	r0, [sp, #68]	; 0x44
 8005794:	e5c9      	b.n	800532a <_vfprintf_r+0x31a>
 8005796:	9808      	ldr	r0, [sp, #32]
 8005798:	2300      	movs	r3, #0
 800579a:	6801      	ldr	r1, [r0, #0]
 800579c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80057a0:	461a      	mov	r2, r3
 80057a2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80057a6:	2301      	movs	r3, #1
 80057a8:	1d01      	adds	r1, r0, #4
 80057aa:	9304      	str	r3, [sp, #16]
 80057ac:	920a      	str	r2, [sp, #40]	; 0x28
 80057ae:	4691      	mov	r9, r2
 80057b0:	920f      	str	r2, [sp, #60]	; 0x3c
 80057b2:	9214      	str	r2, [sp, #80]	; 0x50
 80057b4:	9211      	str	r2, [sp, #68]	; 0x44
 80057b6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80057ba:	af3d      	add	r7, sp, #244	; 0xf4
 80057bc:	e5b9      	b.n	8005332 <_vfprintf_r+0x322>
 80057be:	9b08      	ldr	r3, [sp, #32]
 80057c0:	681f      	ldr	r7, [r3, #0]
 80057c2:	2500      	movs	r5, #0
 80057c4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80057c8:	1d1c      	adds	r4, r3, #4
 80057ca:	2f00      	cmp	r7, #0
 80057cc:	f000 8639 	beq.w	8006442 <_vfprintf_r+0x1432>
 80057d0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80057d4:	f000 8711 	beq.w	80065fa <_vfprintf_r+0x15ea>
 80057d8:	464a      	mov	r2, r9
 80057da:	4629      	mov	r1, r5
 80057dc:	4638      	mov	r0, r7
 80057de:	f7fb fc3f 	bl	8001060 <memchr>
 80057e2:	900a      	str	r0, [sp, #40]	; 0x28
 80057e4:	2800      	cmp	r0, #0
 80057e6:	f000 85e7 	beq.w	80063b8 <_vfprintf_r+0x13a8>
 80057ea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80057ec:	1bdb      	subs	r3, r3, r7
 80057ee:	9309      	str	r3, [sp, #36]	; 0x24
 80057f0:	46a9      	mov	r9, r5
 80057f2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80057f6:	9408      	str	r4, [sp, #32]
 80057f8:	9304      	str	r3, [sp, #16]
 80057fa:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80057fe:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8005802:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005806:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800580a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800580e:	e58c      	b.n	800532a <_vfprintf_r+0x31a>
 8005810:	f048 0310 	orr.w	r3, r8, #16
 8005814:	069a      	lsls	r2, r3, #26
 8005816:	f53f aeb2 	bmi.w	800557e <_vfprintf_r+0x56e>
 800581a:	9a08      	ldr	r2, [sp, #32]
 800581c:	06df      	lsls	r7, r3, #27
 800581e:	f102 0104 	add.w	r1, r2, #4
 8005822:	f100 837e 	bmi.w	8005f22 <_vfprintf_r+0xf12>
 8005826:	065d      	lsls	r5, r3, #25
 8005828:	9a08      	ldr	r2, [sp, #32]
 800582a:	f100 84e4 	bmi.w	80061f6 <_vfprintf_r+0x11e6>
 800582e:	059c      	lsls	r4, r3, #22
 8005830:	f140 8377 	bpl.w	8005f22 <_vfprintf_r+0xf12>
 8005834:	7814      	ldrb	r4, [r2, #0]
 8005836:	9108      	str	r1, [sp, #32]
 8005838:	2500      	movs	r5, #0
 800583a:	2201      	movs	r2, #1
 800583c:	e6a9      	b.n	8005592 <_vfprintf_r+0x582>
 800583e:	4b7c      	ldr	r3, [pc, #496]	; (8005a30 <_vfprintf_r+0xa20>)
 8005840:	9317      	str	r3, [sp, #92]	; 0x5c
 8005842:	f018 0f20 	tst.w	r8, #32
 8005846:	f47f aeec 	bne.w	8005622 <_vfprintf_r+0x612>
 800584a:	9a08      	ldr	r2, [sp, #32]
 800584c:	f018 0f10 	tst.w	r8, #16
 8005850:	f102 0304 	add.w	r3, r2, #4
 8005854:	f040 8354 	bne.w	8005f00 <_vfprintf_r+0xef0>
 8005858:	f018 0f40 	tst.w	r8, #64	; 0x40
 800585c:	9a08      	ldr	r2, [sp, #32]
 800585e:	f040 84d0 	bne.w	8006202 <_vfprintf_r+0x11f2>
 8005862:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005866:	f000 834b 	beq.w	8005f00 <_vfprintf_r+0xef0>
 800586a:	7814      	ldrb	r4, [r2, #0]
 800586c:	9308      	str	r3, [sp, #32]
 800586e:	2500      	movs	r5, #0
 8005870:	e6e0      	b.n	8005634 <_vfprintf_r+0x624>
 8005872:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8005876:	f89a 6000 	ldrb.w	r6, [sl]
 800587a:	2b00      	cmp	r3, #0
 800587c:	f47f ac46 	bne.w	800510c <_vfprintf_r+0xfc>
 8005880:	2320      	movs	r3, #32
 8005882:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005886:	e441      	b.n	800510c <_vfprintf_r+0xfc>
 8005888:	f89a 6000 	ldrb.w	r6, [sl]
 800588c:	2e6c      	cmp	r6, #108	; 0x6c
 800588e:	bf03      	ittte	eq
 8005890:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8005894:	f048 0820 	orreq.w	r8, r8, #32
 8005898:	f10a 0a01 	addeq.w	sl, sl, #1
 800589c:	f048 0810 	orrne.w	r8, r8, #16
 80058a0:	e434      	b.n	800510c <_vfprintf_r+0xfc>
 80058a2:	9a08      	ldr	r2, [sp, #32]
 80058a4:	f018 0f20 	tst.w	r8, #32
 80058a8:	f852 3b04 	ldr.w	r3, [r2], #4
 80058ac:	9208      	str	r2, [sp, #32]
 80058ae:	f000 83a1 	beq.w	8005ff4 <_vfprintf_r+0xfe4>
 80058b2:	9a05      	ldr	r2, [sp, #20]
 80058b4:	4610      	mov	r0, r2
 80058b6:	17d1      	asrs	r1, r2, #31
 80058b8:	e9c3 0100 	strd	r0, r1, [r3]
 80058bc:	4657      	mov	r7, sl
 80058be:	e64d      	b.n	800555c <_vfprintf_r+0x54c>
 80058c0:	f89a 6000 	ldrb.w	r6, [sl]
 80058c4:	2e68      	cmp	r6, #104	; 0x68
 80058c6:	bf03      	ittte	eq
 80058c8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80058cc:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80058d0:	f10a 0a01 	addeq.w	sl, sl, #1
 80058d4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80058d8:	e418      	b.n	800510c <_vfprintf_r+0xfc>
 80058da:	9908      	ldr	r1, [sp, #32]
 80058dc:	4b55      	ldr	r3, [pc, #340]	; (8005a34 <_vfprintf_r+0xa24>)
 80058de:	680c      	ldr	r4, [r1, #0]
 80058e0:	9317      	str	r3, [sp, #92]	; 0x5c
 80058e2:	f647 0230 	movw	r2, #30768	; 0x7830
 80058e6:	3104      	adds	r1, #4
 80058e8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80058ec:	f048 0302 	orr.w	r3, r8, #2
 80058f0:	9108      	str	r1, [sp, #32]
 80058f2:	2500      	movs	r5, #0
 80058f4:	2202      	movs	r2, #2
 80058f6:	2678      	movs	r6, #120	; 0x78
 80058f8:	e64b      	b.n	8005592 <_vfprintf_r+0x582>
 80058fa:	f048 0808 	orr.w	r8, r8, #8
 80058fe:	f89a 6000 	ldrb.w	r6, [sl]
 8005902:	e403      	b.n	800510c <_vfprintf_r+0xfc>
 8005904:	f048 0310 	orr.w	r3, r8, #16
 8005908:	069f      	lsls	r7, r3, #26
 800590a:	f53f acd1 	bmi.w	80052b0 <_vfprintf_r+0x2a0>
 800590e:	9908      	ldr	r1, [sp, #32]
 8005910:	06dd      	lsls	r5, r3, #27
 8005912:	f101 0204 	add.w	r2, r1, #4
 8005916:	f100 82fd 	bmi.w	8005f14 <_vfprintf_r+0xf04>
 800591a:	065c      	lsls	r4, r3, #25
 800591c:	9908      	ldr	r1, [sp, #32]
 800591e:	f100 8475 	bmi.w	800620c <_vfprintf_r+0x11fc>
 8005922:	0598      	lsls	r0, r3, #22
 8005924:	f140 82f6 	bpl.w	8005f14 <_vfprintf_r+0xf04>
 8005928:	f991 4000 	ldrsb.w	r4, [r1]
 800592c:	9208      	str	r2, [sp, #32]
 800592e:	17e5      	asrs	r5, r4, #31
 8005930:	4620      	mov	r0, r4
 8005932:	4629      	mov	r1, r5
 8005934:	e4c7      	b.n	80052c6 <_vfprintf_r+0x2b6>
 8005936:	9a08      	ldr	r2, [sp, #32]
 8005938:	f018 0f10 	tst.w	r8, #16
 800593c:	f102 0304 	add.w	r3, r2, #4
 8005940:	f040 82e3 	bne.w	8005f0a <_vfprintf_r+0xefa>
 8005944:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005948:	9a08      	ldr	r2, [sp, #32]
 800594a:	f040 8467 	bne.w	800621c <_vfprintf_r+0x120c>
 800594e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005952:	f000 82da 	beq.w	8005f0a <_vfprintf_r+0xefa>
 8005956:	7814      	ldrb	r4, [r2, #0]
 8005958:	9308      	str	r3, [sp, #32]
 800595a:	2500      	movs	r5, #0
 800595c:	e488      	b.n	8005270 <_vfprintf_r+0x260>
 800595e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005962:	f002 fd45 	bl	80083f0 <__retarget_lock_release_recursive>
 8005966:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800596a:	9305      	str	r3, [sp, #20]
 800596c:	e443      	b.n	80051f6 <_vfprintf_r+0x1e6>
 800596e:	2e00      	cmp	r6, #0
 8005970:	f43f adf8 	beq.w	8005564 <_vfprintf_r+0x554>
 8005974:	2300      	movs	r3, #0
 8005976:	2101      	movs	r1, #1
 8005978:	461a      	mov	r2, r3
 800597a:	9104      	str	r1, [sp, #16]
 800597c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8005980:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005984:	930a      	str	r3, [sp, #40]	; 0x28
 8005986:	4699      	mov	r9, r3
 8005988:	930f      	str	r3, [sp, #60]	; 0x3c
 800598a:	9314      	str	r3, [sp, #80]	; 0x50
 800598c:	9311      	str	r3, [sp, #68]	; 0x44
 800598e:	9109      	str	r1, [sp, #36]	; 0x24
 8005990:	af3d      	add	r7, sp, #244	; 0xf4
 8005992:	e4ce      	b.n	8005332 <_vfprintf_r+0x322>
 8005994:	2e65      	cmp	r6, #101	; 0x65
 8005996:	f340 80ca 	ble.w	8005b2e <_vfprintf_r+0xb1e>
 800599a:	2200      	movs	r2, #0
 800599c:	2300      	movs	r3, #0
 800599e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80059a2:	f7fb f851 	bl	8000a48 <__aeabi_dcmpeq>
 80059a6:	2800      	cmp	r0, #0
 80059a8:	f000 8169 	beq.w	8005c7e <_vfprintf_r+0xc6e>
 80059ac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80059ae:	4a22      	ldr	r2, [pc, #136]	; (8005a38 <_vfprintf_r+0xa28>)
 80059b0:	f8cb 2000 	str.w	r2, [fp]
 80059b4:	3301      	adds	r3, #1
 80059b6:	3401      	adds	r4, #1
 80059b8:	2201      	movs	r2, #1
 80059ba:	2b07      	cmp	r3, #7
 80059bc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80059c0:	f8cb 2004 	str.w	r2, [fp, #4]
 80059c4:	f300 8406 	bgt.w	80061d4 <_vfprintf_r+0x11c4>
 80059c8:	f10b 0b08 	add.w	fp, fp, #8
 80059cc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80059ce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80059d0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80059d2:	4293      	cmp	r3, r2
 80059d4:	db03      	blt.n	80059de <_vfprintf_r+0x9ce>
 80059d6:	f018 0f01 	tst.w	r8, #1
 80059da:	f43f ad6a 	beq.w	80054b2 <_vfprintf_r+0x4a2>
 80059de:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80059e0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80059e2:	f8cb 2000 	str.w	r2, [fp]
 80059e6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80059e8:	f8cb 2004 	str.w	r2, [fp, #4]
 80059ec:	3301      	adds	r3, #1
 80059ee:	4414      	add	r4, r2
 80059f0:	2b07      	cmp	r3, #7
 80059f2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80059f6:	f300 8517 	bgt.w	8006428 <_vfprintf_r+0x1418>
 80059fa:	f10b 0b08 	add.w	fp, fp, #8
 80059fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005a00:	1e5d      	subs	r5, r3, #1
 8005a02:	2d00      	cmp	r5, #0
 8005a04:	f77f ad55 	ble.w	80054b2 <_vfprintf_r+0x4a2>
 8005a08:	2d10      	cmp	r5, #16
 8005a0a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a0c:	4b0b      	ldr	r3, [pc, #44]	; (8005a3c <_vfprintf_r+0xa2c>)
 8005a0e:	f340 82e7 	ble.w	8005fe0 <_vfprintf_r+0xfd0>
 8005a12:	4619      	mov	r1, r3
 8005a14:	2610      	movs	r6, #16
 8005a16:	4623      	mov	r3, r4
 8005a18:	9f03      	ldr	r7, [sp, #12]
 8005a1a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005a1e:	460c      	mov	r4, r1
 8005a20:	e014      	b.n	8005a4c <_vfprintf_r+0xa3c>
 8005a22:	bf00      	nop
 8005a24:	7fefffff 	.word	0x7fefffff
 8005a28:	08009f6c 	.word	0x08009f6c
 8005a2c:	08009f68 	.word	0x08009f68
 8005a30:	08009f8c 	.word	0x08009f8c
 8005a34:	08009f78 	.word	0x08009f78
 8005a38:	08009fa8 	.word	0x08009fa8
 8005a3c:	08009fbc 	.word	0x08009fbc
 8005a40:	f10b 0b08 	add.w	fp, fp, #8
 8005a44:	3d10      	subs	r5, #16
 8005a46:	2d10      	cmp	r5, #16
 8005a48:	f340 82c7 	ble.w	8005fda <_vfprintf_r+0xfca>
 8005a4c:	3201      	adds	r2, #1
 8005a4e:	3310      	adds	r3, #16
 8005a50:	2a07      	cmp	r2, #7
 8005a52:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005a56:	e9cb 4600 	strd	r4, r6, [fp]
 8005a5a:	ddf1      	ble.n	8005a40 <_vfprintf_r+0xa30>
 8005a5c:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a5e:	4649      	mov	r1, r9
 8005a60:	4638      	mov	r0, r7
 8005a62:	f003 fe03 	bl	800966c <__sprint_r>
 8005a66:	2800      	cmp	r0, #0
 8005a68:	d14c      	bne.n	8005b04 <_vfprintf_r+0xaf4>
 8005a6a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005a6e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005a72:	e7e7      	b.n	8005a44 <_vfprintf_r+0xa34>
 8005a74:	9b06      	ldr	r3, [sp, #24]
 8005a76:	9a04      	ldr	r2, [sp, #16]
 8005a78:	1a9d      	subs	r5, r3, r2
 8005a7a:	2d00      	cmp	r5, #0
 8005a7c:	f77f acc9 	ble.w	8005412 <_vfprintf_r+0x402>
 8005a80:	2d10      	cmp	r5, #16
 8005a82:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a84:	4bbc      	ldr	r3, [pc, #752]	; (8005d78 <_vfprintf_r+0xd68>)
 8005a86:	dd27      	ble.n	8005ad8 <_vfprintf_r+0xac8>
 8005a88:	4659      	mov	r1, fp
 8005a8a:	4620      	mov	r0, r4
 8005a8c:	46bb      	mov	fp, r7
 8005a8e:	461c      	mov	r4, r3
 8005a90:	4637      	mov	r7, r6
 8005a92:	9e07      	ldr	r6, [sp, #28]
 8005a94:	e004      	b.n	8005aa0 <_vfprintf_r+0xa90>
 8005a96:	3d10      	subs	r5, #16
 8005a98:	2d10      	cmp	r5, #16
 8005a9a:	f101 0108 	add.w	r1, r1, #8
 8005a9e:	dd16      	ble.n	8005ace <_vfprintf_r+0xabe>
 8005aa0:	3201      	adds	r2, #1
 8005aa2:	3010      	adds	r0, #16
 8005aa4:	2310      	movs	r3, #16
 8005aa6:	2a07      	cmp	r2, #7
 8005aa8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005aac:	600c      	str	r4, [r1, #0]
 8005aae:	604b      	str	r3, [r1, #4]
 8005ab0:	ddf1      	ble.n	8005a96 <_vfprintf_r+0xa86>
 8005ab2:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ab4:	4631      	mov	r1, r6
 8005ab6:	9803      	ldr	r0, [sp, #12]
 8005ab8:	f003 fdd8 	bl	800966c <__sprint_r>
 8005abc:	2800      	cmp	r0, #0
 8005abe:	f040 80a8 	bne.w	8005c12 <_vfprintf_r+0xc02>
 8005ac2:	3d10      	subs	r5, #16
 8005ac4:	2d10      	cmp	r5, #16
 8005ac6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005aca:	a92d      	add	r1, sp, #180	; 0xb4
 8005acc:	dce8      	bgt.n	8005aa0 <_vfprintf_r+0xa90>
 8005ace:	463e      	mov	r6, r7
 8005ad0:	4623      	mov	r3, r4
 8005ad2:	465f      	mov	r7, fp
 8005ad4:	4604      	mov	r4, r0
 8005ad6:	468b      	mov	fp, r1
 8005ad8:	3201      	adds	r2, #1
 8005ada:	442c      	add	r4, r5
 8005adc:	2a07      	cmp	r2, #7
 8005ade:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005ae2:	e9cb 3500 	strd	r3, r5, [fp]
 8005ae6:	f300 8292 	bgt.w	800600e <_vfprintf_r+0xffe>
 8005aea:	f10b 0b08 	add.w	fp, fp, #8
 8005aee:	e490      	b.n	8005412 <_vfprintf_r+0x402>
 8005af0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005af2:	9907      	ldr	r1, [sp, #28]
 8005af4:	9803      	ldr	r0, [sp, #12]
 8005af6:	f003 fdb9 	bl	800966c <__sprint_r>
 8005afa:	2800      	cmp	r0, #0
 8005afc:	f43f ad23 	beq.w	8005546 <_vfprintf_r+0x536>
 8005b00:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005b04:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005b06:	b111      	cbz	r1, 8005b0e <_vfprintf_r+0xafe>
 8005b08:	9803      	ldr	r0, [sp, #12]
 8005b0a:	f002 f9c1 	bl	8007e90 <_free_r>
 8005b0e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005b12:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005b16:	07d0      	lsls	r0, r2, #31
 8005b18:	d402      	bmi.n	8005b20 <_vfprintf_r+0xb10>
 8005b1a:	0599      	lsls	r1, r3, #22
 8005b1c:	f140 81d0 	bpl.w	8005ec0 <_vfprintf_r+0xeb0>
 8005b20:	065a      	lsls	r2, r3, #25
 8005b22:	f53f ab65 	bmi.w	80051f0 <_vfprintf_r+0x1e0>
 8005b26:	9805      	ldr	r0, [sp, #20]
 8005b28:	b057      	add	sp, #348	; 0x15c
 8005b2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005b30:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005b32:	2a01      	cmp	r2, #1
 8005b34:	f104 0401 	add.w	r4, r4, #1
 8005b38:	f103 0501 	add.w	r5, r3, #1
 8005b3c:	f10b 0608 	add.w	r6, fp, #8
 8005b40:	f340 811c 	ble.w	8005d7c <_vfprintf_r+0xd6c>
 8005b44:	2301      	movs	r3, #1
 8005b46:	2d07      	cmp	r5, #7
 8005b48:	f8cb 7000 	str.w	r7, [fp]
 8005b4c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005b50:	f8cb 3004 	str.w	r3, [fp, #4]
 8005b54:	f300 81bb 	bgt.w	8005ece <_vfprintf_r+0xebe>
 8005b58:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005b5a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005b5c:	1c69      	adds	r1, r5, #1
 8005b5e:	441c      	add	r4, r3
 8005b60:	2907      	cmp	r1, #7
 8005b62:	910b      	str	r1, [sp, #44]	; 0x2c
 8005b64:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8005b68:	e9c6 2300 	strd	r2, r3, [r6]
 8005b6c:	f300 81bb 	bgt.w	8005ee6 <_vfprintf_r+0xed6>
 8005b70:	3608      	adds	r6, #8
 8005b72:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005b74:	1c53      	adds	r3, r2, #1
 8005b76:	461d      	mov	r5, r3
 8005b78:	9509      	str	r5, [sp, #36]	; 0x24
 8005b7a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005b7c:	930e      	str	r3, [sp, #56]	; 0x38
 8005b7e:	2200      	movs	r2, #0
 8005b80:	2300      	movs	r3, #0
 8005b82:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005b86:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005b8a:	f106 0b08 	add.w	fp, r6, #8
 8005b8e:	f7fa ff5b 	bl	8000a48 <__aeabi_dcmpeq>
 8005b92:	2800      	cmp	r0, #0
 8005b94:	f040 80c2 	bne.w	8005d1c <_vfprintf_r+0xd0c>
 8005b98:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005b9a:	f8c6 9004 	str.w	r9, [r6, #4]
 8005b9e:	3701      	adds	r7, #1
 8005ba0:	444c      	add	r4, r9
 8005ba2:	2d07      	cmp	r5, #7
 8005ba4:	6037      	str	r7, [r6, #0]
 8005ba6:	942c      	str	r4, [sp, #176]	; 0xb0
 8005ba8:	952b      	str	r5, [sp, #172]	; 0xac
 8005baa:	f300 80f9 	bgt.w	8005da0 <_vfprintf_r+0xd90>
 8005bae:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005bb0:	f106 0310 	add.w	r3, r6, #16
 8005bb4:	3202      	adds	r2, #2
 8005bb6:	465e      	mov	r6, fp
 8005bb8:	9209      	str	r2, [sp, #36]	; 0x24
 8005bba:	469b      	mov	fp, r3
 8005bbc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8005bbe:	6072      	str	r2, [r6, #4]
 8005bc0:	4414      	add	r4, r2
 8005bc2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005bc4:	942c      	str	r4, [sp, #176]	; 0xb0
 8005bc6:	ab26      	add	r3, sp, #152	; 0x98
 8005bc8:	2a07      	cmp	r2, #7
 8005bca:	922b      	str	r2, [sp, #172]	; 0xac
 8005bcc:	6033      	str	r3, [r6, #0]
 8005bce:	f77f ac70 	ble.w	80054b2 <_vfprintf_r+0x4a2>
 8005bd2:	aa2a      	add	r2, sp, #168	; 0xa8
 8005bd4:	9907      	ldr	r1, [sp, #28]
 8005bd6:	9803      	ldr	r0, [sp, #12]
 8005bd8:	f003 fd48 	bl	800966c <__sprint_r>
 8005bdc:	2800      	cmp	r0, #0
 8005bde:	d18f      	bne.n	8005b00 <_vfprintf_r+0xaf0>
 8005be0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005be2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005be6:	e464      	b.n	80054b2 <_vfprintf_r+0x4a2>
 8005be8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8005bea:	af56      	add	r7, sp, #344	; 0x158
 8005bec:	0923      	lsrs	r3, r4, #4
 8005bee:	f004 010f 	and.w	r1, r4, #15
 8005bf2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8005bf6:	092a      	lsrs	r2, r5, #4
 8005bf8:	461c      	mov	r4, r3
 8005bfa:	4615      	mov	r5, r2
 8005bfc:	5c43      	ldrb	r3, [r0, r1]
 8005bfe:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005c02:	ea54 0305 	orrs.w	r3, r4, r5
 8005c06:	d1f1      	bne.n	8005bec <_vfprintf_r+0xbdc>
 8005c08:	9b04      	ldr	r3, [sp, #16]
 8005c0a:	1bdb      	subs	r3, r3, r7
 8005c0c:	9309      	str	r3, [sp, #36]	; 0x24
 8005c0e:	f7ff bb80 	b.w	8005312 <_vfprintf_r+0x302>
 8005c12:	46b1      	mov	r9, r6
 8005c14:	e776      	b.n	8005b04 <_vfprintf_r+0xaf4>
 8005c16:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c18:	9907      	ldr	r1, [sp, #28]
 8005c1a:	9803      	ldr	r0, [sp, #12]
 8005c1c:	f003 fd26 	bl	800966c <__sprint_r>
 8005c20:	2800      	cmp	r0, #0
 8005c22:	f47f af6d 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005c26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c2c:	f7ff bbdd 	b.w	80053ea <_vfprintf_r+0x3da>
 8005c30:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c32:	9907      	ldr	r1, [sp, #28]
 8005c34:	9803      	ldr	r0, [sp, #12]
 8005c36:	f003 fd19 	bl	800966c <__sprint_r>
 8005c3a:	2800      	cmp	r0, #0
 8005c3c:	f47f af60 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005c40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c42:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c46:	f7ff bbe0 	b.w	800540a <_vfprintf_r+0x3fa>
 8005c4a:	4698      	mov	r8, r3
 8005c4c:	2d00      	cmp	r5, #0
 8005c4e:	bf08      	it	eq
 8005c50:	2c0a      	cmpeq	r4, #10
 8005c52:	f080 8170 	bcs.w	8005f36 <_vfprintf_r+0xf26>
 8005c56:	af56      	add	r7, sp, #344	; 0x158
 8005c58:	3430      	adds	r4, #48	; 0x30
 8005c5a:	2301      	movs	r3, #1
 8005c5c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8005c60:	9309      	str	r3, [sp, #36]	; 0x24
 8005c62:	f7ff bb56 	b.w	8005312 <_vfprintf_r+0x302>
 8005c66:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c68:	9907      	ldr	r1, [sp, #28]
 8005c6a:	9803      	ldr	r0, [sp, #12]
 8005c6c:	f003 fcfe 	bl	800966c <__sprint_r>
 8005c70:	2800      	cmp	r0, #0
 8005c72:	f47f af45 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005c76:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c78:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c7c:	e406      	b.n	800548c <_vfprintf_r+0x47c>
 8005c7e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005c80:	2b00      	cmp	r3, #0
 8005c82:	f340 8273 	ble.w	800616c <_vfprintf_r+0x115c>
 8005c86:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8005c8a:	4293      	cmp	r3, r2
 8005c8c:	bfa8      	it	ge
 8005c8e:	4613      	movge	r3, r2
 8005c90:	2b00      	cmp	r3, #0
 8005c92:	461d      	mov	r5, r3
 8005c94:	dd0d      	ble.n	8005cb2 <_vfprintf_r+0xca2>
 8005c96:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005c98:	f8cb 7000 	str.w	r7, [fp]
 8005c9c:	3301      	adds	r3, #1
 8005c9e:	442c      	add	r4, r5
 8005ca0:	2b07      	cmp	r3, #7
 8005ca2:	942c      	str	r4, [sp, #176]	; 0xb0
 8005ca4:	f8cb 5004 	str.w	r5, [fp, #4]
 8005ca8:	932b      	str	r3, [sp, #172]	; 0xac
 8005caa:	f300 82c1 	bgt.w	8006230 <_vfprintf_r+0x1220>
 8005cae:	f10b 0b08 	add.w	fp, fp, #8
 8005cb2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005cb4:	2d00      	cmp	r5, #0
 8005cb6:	bfa8      	it	ge
 8005cb8:	1b5b      	subge	r3, r3, r5
 8005cba:	2b00      	cmp	r3, #0
 8005cbc:	461d      	mov	r5, r3
 8005cbe:	f340 8099 	ble.w	8005df4 <_vfprintf_r+0xde4>
 8005cc2:	2d10      	cmp	r5, #16
 8005cc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005cc6:	4b2c      	ldr	r3, [pc, #176]	; (8005d78 <_vfprintf_r+0xd68>)
 8005cc8:	f340 83db 	ble.w	8006482 <_vfprintf_r+0x1472>
 8005ccc:	4618      	mov	r0, r3
 8005cce:	4621      	mov	r1, r4
 8005cd0:	465b      	mov	r3, fp
 8005cd2:	2610      	movs	r6, #16
 8005cd4:	46bb      	mov	fp, r7
 8005cd6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005cda:	9c07      	ldr	r4, [sp, #28]
 8005cdc:	4607      	mov	r7, r0
 8005cde:	e004      	b.n	8005cea <_vfprintf_r+0xcda>
 8005ce0:	3308      	adds	r3, #8
 8005ce2:	3d10      	subs	r5, #16
 8005ce4:	2d10      	cmp	r5, #16
 8005ce6:	f340 83c7 	ble.w	8006478 <_vfprintf_r+0x1468>
 8005cea:	3201      	adds	r2, #1
 8005cec:	3110      	adds	r1, #16
 8005cee:	2a07      	cmp	r2, #7
 8005cf0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8005cf4:	e9c3 7600 	strd	r7, r6, [r3]
 8005cf8:	ddf2      	ble.n	8005ce0 <_vfprintf_r+0xcd0>
 8005cfa:	aa2a      	add	r2, sp, #168	; 0xa8
 8005cfc:	4621      	mov	r1, r4
 8005cfe:	4648      	mov	r0, r9
 8005d00:	f003 fcb4 	bl	800966c <__sprint_r>
 8005d04:	2800      	cmp	r0, #0
 8005d06:	f040 84a5 	bne.w	8006654 <_vfprintf_r+0x1644>
 8005d0a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8005d0e:	ab2d      	add	r3, sp, #180	; 0xb4
 8005d10:	e7e7      	b.n	8005ce2 <_vfprintf_r+0xcd2>
 8005d12:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005d16:	af56      	add	r7, sp, #344	; 0x158
 8005d18:	f7ff bafb 	b.w	8005312 <_vfprintf_r+0x302>
 8005d1c:	f1b9 0f00 	cmp.w	r9, #0
 8005d20:	f77f af4c 	ble.w	8005bbc <_vfprintf_r+0xbac>
 8005d24:	f1b9 0f10 	cmp.w	r9, #16
 8005d28:	4b13      	ldr	r3, [pc, #76]	; (8005d78 <_vfprintf_r+0xd68>)
 8005d2a:	f340 8659 	ble.w	80069e0 <_vfprintf_r+0x19d0>
 8005d2e:	4619      	mov	r1, r3
 8005d30:	4622      	mov	r2, r4
 8005d32:	4633      	mov	r3, r6
 8005d34:	2710      	movs	r7, #16
 8005d36:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8005d3a:	9c07      	ldr	r4, [sp, #28]
 8005d3c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005d3e:	460e      	mov	r6, r1
 8005d40:	e007      	b.n	8005d52 <_vfprintf_r+0xd42>
 8005d42:	3308      	adds	r3, #8
 8005d44:	f1a9 0910 	sub.w	r9, r9, #16
 8005d48:	f1b9 0f10 	cmp.w	r9, #16
 8005d4c:	f340 8353 	ble.w	80063f6 <_vfprintf_r+0x13e6>
 8005d50:	3501      	adds	r5, #1
 8005d52:	3210      	adds	r2, #16
 8005d54:	2d07      	cmp	r5, #7
 8005d56:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8005d5a:	e9c3 6700 	strd	r6, r7, [r3]
 8005d5e:	ddf0      	ble.n	8005d42 <_vfprintf_r+0xd32>
 8005d60:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d62:	4621      	mov	r1, r4
 8005d64:	4658      	mov	r0, fp
 8005d66:	f003 fc81 	bl	800966c <__sprint_r>
 8005d6a:	2800      	cmp	r0, #0
 8005d6c:	f040 8472 	bne.w	8006654 <_vfprintf_r+0x1644>
 8005d70:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8005d74:	ab2d      	add	r3, sp, #180	; 0xb4
 8005d76:	e7e5      	b.n	8005d44 <_vfprintf_r+0xd34>
 8005d78:	08009fbc 	.word	0x08009fbc
 8005d7c:	f018 0f01 	tst.w	r8, #1
 8005d80:	f47f aee0 	bne.w	8005b44 <_vfprintf_r+0xb34>
 8005d84:	2201      	movs	r2, #1
 8005d86:	2d07      	cmp	r5, #7
 8005d88:	f8cb 7000 	str.w	r7, [fp]
 8005d8c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005d90:	f8cb 2004 	str.w	r2, [fp, #4]
 8005d94:	dc04      	bgt.n	8005da0 <_vfprintf_r+0xd90>
 8005d96:	3302      	adds	r3, #2
 8005d98:	9309      	str	r3, [sp, #36]	; 0x24
 8005d9a:	f10b 0b10 	add.w	fp, fp, #16
 8005d9e:	e70d      	b.n	8005bbc <_vfprintf_r+0xbac>
 8005da0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005da2:	9907      	ldr	r1, [sp, #28]
 8005da4:	9803      	ldr	r0, [sp, #12]
 8005da6:	f003 fc61 	bl	800966c <__sprint_r>
 8005daa:	2800      	cmp	r0, #0
 8005dac:	f47f aea8 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005db0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005db4:	3301      	adds	r3, #1
 8005db6:	9309      	str	r3, [sp, #36]	; 0x24
 8005db8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8005dbc:	ae2d      	add	r6, sp, #180	; 0xb4
 8005dbe:	e6fd      	b.n	8005bbc <_vfprintf_r+0xbac>
 8005dc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8005dc2:	9907      	ldr	r1, [sp, #28]
 8005dc4:	9803      	ldr	r0, [sp, #12]
 8005dc6:	f003 fc51 	bl	800966c <__sprint_r>
 8005dca:	2800      	cmp	r0, #0
 8005dcc:	f47f ae98 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005dd0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005dd4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005dd6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005dda:	f7ff baf6 	b.w	80053ca <_vfprintf_r+0x3ba>
 8005dde:	aa2a      	add	r2, sp, #168	; 0xa8
 8005de0:	9907      	ldr	r1, [sp, #28]
 8005de2:	9803      	ldr	r0, [sp, #12]
 8005de4:	f003 fc42 	bl	800966c <__sprint_r>
 8005de8:	2800      	cmp	r0, #0
 8005dea:	f47f ae89 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005dee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005df0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005df4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005df6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8005dfa:	443b      	add	r3, r7
 8005dfc:	4699      	mov	r9, r3
 8005dfe:	f040 8357 	bne.w	80064b0 <_vfprintf_r+0x14a0>
 8005e02:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005e04:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005e06:	4293      	cmp	r3, r2
 8005e08:	db49      	blt.n	8005e9e <_vfprintf_r+0xe8e>
 8005e0a:	f018 0f01 	tst.w	r8, #1
 8005e0e:	d146      	bne.n	8005e9e <_vfprintf_r+0xe8e>
 8005e10:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005e12:	18bd      	adds	r5, r7, r2
 8005e14:	eba5 0509 	sub.w	r5, r5, r9
 8005e18:	1ad3      	subs	r3, r2, r3
 8005e1a:	429d      	cmp	r5, r3
 8005e1c:	bfa8      	it	ge
 8005e1e:	461d      	movge	r5, r3
 8005e20:	2d00      	cmp	r5, #0
 8005e22:	dd0d      	ble.n	8005e40 <_vfprintf_r+0xe30>
 8005e24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005e26:	f8cb 9000 	str.w	r9, [fp]
 8005e2a:	3201      	adds	r2, #1
 8005e2c:	442c      	add	r4, r5
 8005e2e:	2a07      	cmp	r2, #7
 8005e30:	942c      	str	r4, [sp, #176]	; 0xb0
 8005e32:	f8cb 5004 	str.w	r5, [fp, #4]
 8005e36:	922b      	str	r2, [sp, #172]	; 0xac
 8005e38:	f300 8462 	bgt.w	8006700 <_vfprintf_r+0x16f0>
 8005e3c:	f10b 0b08 	add.w	fp, fp, #8
 8005e40:	2d00      	cmp	r5, #0
 8005e42:	bfac      	ite	ge
 8005e44:	1b5d      	subge	r5, r3, r5
 8005e46:	461d      	movlt	r5, r3
 8005e48:	2d00      	cmp	r5, #0
 8005e4a:	f77f ab32 	ble.w	80054b2 <_vfprintf_r+0x4a2>
 8005e4e:	2d10      	cmp	r5, #16
 8005e50:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005e52:	4bc5      	ldr	r3, [pc, #788]	; (8006168 <_vfprintf_r+0x1158>)
 8005e54:	f340 80c4 	ble.w	8005fe0 <_vfprintf_r+0xfd0>
 8005e58:	4619      	mov	r1, r3
 8005e5a:	2610      	movs	r6, #16
 8005e5c:	4623      	mov	r3, r4
 8005e5e:	9f03      	ldr	r7, [sp, #12]
 8005e60:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005e64:	460c      	mov	r4, r1
 8005e66:	e005      	b.n	8005e74 <_vfprintf_r+0xe64>
 8005e68:	f10b 0b08 	add.w	fp, fp, #8
 8005e6c:	3d10      	subs	r5, #16
 8005e6e:	2d10      	cmp	r5, #16
 8005e70:	f340 80b3 	ble.w	8005fda <_vfprintf_r+0xfca>
 8005e74:	3201      	adds	r2, #1
 8005e76:	3310      	adds	r3, #16
 8005e78:	2a07      	cmp	r2, #7
 8005e7a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005e7e:	e9cb 4600 	strd	r4, r6, [fp]
 8005e82:	ddf1      	ble.n	8005e68 <_vfprintf_r+0xe58>
 8005e84:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e86:	4649      	mov	r1, r9
 8005e88:	4638      	mov	r0, r7
 8005e8a:	f003 fbef 	bl	800966c <__sprint_r>
 8005e8e:	2800      	cmp	r0, #0
 8005e90:	f47f ae38 	bne.w	8005b04 <_vfprintf_r+0xaf4>
 8005e94:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005e98:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e9c:	e7e6      	b.n	8005e6c <_vfprintf_r+0xe5c>
 8005e9e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005ea0:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005ea2:	f8cb 1000 	str.w	r1, [fp]
 8005ea6:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005ea8:	f8cb 1004 	str.w	r1, [fp, #4]
 8005eac:	3201      	adds	r2, #1
 8005eae:	440c      	add	r4, r1
 8005eb0:	2a07      	cmp	r2, #7
 8005eb2:	942c      	str	r4, [sp, #176]	; 0xb0
 8005eb4:	922b      	str	r2, [sp, #172]	; 0xac
 8005eb6:	f300 828c 	bgt.w	80063d2 <_vfprintf_r+0x13c2>
 8005eba:	f10b 0b08 	add.w	fp, fp, #8
 8005ebe:	e7a7      	b.n	8005e10 <_vfprintf_r+0xe00>
 8005ec0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005ec4:	f002 fa94 	bl	80083f0 <__retarget_lock_release_recursive>
 8005ec8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005ecc:	e628      	b.n	8005b20 <_vfprintf_r+0xb10>
 8005ece:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ed0:	9907      	ldr	r1, [sp, #28]
 8005ed2:	9803      	ldr	r0, [sp, #12]
 8005ed4:	f003 fbca 	bl	800966c <__sprint_r>
 8005ed8:	2800      	cmp	r0, #0
 8005eda:	f47f ae11 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005ede:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8005ee2:	ae2d      	add	r6, sp, #180	; 0xb4
 8005ee4:	e638      	b.n	8005b58 <_vfprintf_r+0xb48>
 8005ee6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ee8:	9907      	ldr	r1, [sp, #28]
 8005eea:	9803      	ldr	r0, [sp, #12]
 8005eec:	f003 fbbe 	bl	800966c <__sprint_r>
 8005ef0:	2800      	cmp	r0, #0
 8005ef2:	f47f ae05 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8005ef6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005efa:	ae2d      	add	r6, sp, #180	; 0xb4
 8005efc:	930b      	str	r3, [sp, #44]	; 0x2c
 8005efe:	e638      	b.n	8005b72 <_vfprintf_r+0xb62>
 8005f00:	6814      	ldr	r4, [r2, #0]
 8005f02:	9308      	str	r3, [sp, #32]
 8005f04:	2500      	movs	r5, #0
 8005f06:	f7ff bb95 	b.w	8005634 <_vfprintf_r+0x624>
 8005f0a:	6814      	ldr	r4, [r2, #0]
 8005f0c:	9308      	str	r3, [sp, #32]
 8005f0e:	2500      	movs	r5, #0
 8005f10:	f7ff b9ae 	b.w	8005270 <_vfprintf_r+0x260>
 8005f14:	680c      	ldr	r4, [r1, #0]
 8005f16:	9208      	str	r2, [sp, #32]
 8005f18:	17e5      	asrs	r5, r4, #31
 8005f1a:	4620      	mov	r0, r4
 8005f1c:	4629      	mov	r1, r5
 8005f1e:	f7ff b9d2 	b.w	80052c6 <_vfprintf_r+0x2b6>
 8005f22:	6814      	ldr	r4, [r2, #0]
 8005f24:	9108      	str	r1, [sp, #32]
 8005f26:	2201      	movs	r2, #1
 8005f28:	2500      	movs	r5, #0
 8005f2a:	f7ff bb32 	b.w	8005592 <_vfprintf_r+0x582>
 8005f2e:	2a01      	cmp	r2, #1
 8005f30:	f47f ab3c 	bne.w	80055ac <_vfprintf_r+0x59c>
 8005f34:	e68f      	b.n	8005c56 <_vfprintf_r+0xc46>
 8005f36:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8005f3a:	2200      	movs	r2, #0
 8005f3c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8005f40:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8005f44:	af56      	add	r7, sp, #344	; 0x158
 8005f46:	4692      	mov	sl, r2
 8005f48:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8005f4c:	461e      	mov	r6, r3
 8005f4e:	e00a      	b.n	8005f66 <_vfprintf_r+0xf56>
 8005f50:	2300      	movs	r3, #0
 8005f52:	4620      	mov	r0, r4
 8005f54:	4629      	mov	r1, r5
 8005f56:	220a      	movs	r2, #10
 8005f58:	f7fa fde6 	bl	8000b28 <__aeabi_uldivmod>
 8005f5c:	4604      	mov	r4, r0
 8005f5e:	460d      	mov	r5, r1
 8005f60:	ea54 0305 	orrs.w	r3, r4, r5
 8005f64:	d029      	beq.n	8005fba <_vfprintf_r+0xfaa>
 8005f66:	220a      	movs	r2, #10
 8005f68:	2300      	movs	r3, #0
 8005f6a:	4620      	mov	r0, r4
 8005f6c:	4629      	mov	r1, r5
 8005f6e:	f7fa fddb 	bl	8000b28 <__aeabi_uldivmod>
 8005f72:	3230      	adds	r2, #48	; 0x30
 8005f74:	f807 2c01 	strb.w	r2, [r7, #-1]
 8005f78:	f10a 0a01 	add.w	sl, sl, #1
 8005f7c:	3f01      	subs	r7, #1
 8005f7e:	2e00      	cmp	r6, #0
 8005f80:	d0e6      	beq.n	8005f50 <_vfprintf_r+0xf40>
 8005f82:	f898 3000 	ldrb.w	r3, [r8]
 8005f86:	459a      	cmp	sl, r3
 8005f88:	d1e2      	bne.n	8005f50 <_vfprintf_r+0xf40>
 8005f8a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8005f8e:	d0df      	beq.n	8005f50 <_vfprintf_r+0xf40>
 8005f90:	2d00      	cmp	r5, #0
 8005f92:	bf08      	it	eq
 8005f94:	2c0a      	cmpeq	r4, #10
 8005f96:	d3db      	bcc.n	8005f50 <_vfprintf_r+0xf40>
 8005f98:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8005f9a:	9918      	ldr	r1, [sp, #96]	; 0x60
 8005f9c:	1aff      	subs	r7, r7, r3
 8005f9e:	461a      	mov	r2, r3
 8005fa0:	4638      	mov	r0, r7
 8005fa2:	f003 faf5 	bl	8009590 <strncpy>
 8005fa6:	f898 3001 	ldrb.w	r3, [r8, #1]
 8005faa:	2b00      	cmp	r3, #0
 8005fac:	f000 8496 	beq.w	80068dc <_vfprintf_r+0x18cc>
 8005fb0:	f108 0801 	add.w	r8, r8, #1
 8005fb4:	f04f 0a00 	mov.w	sl, #0
 8005fb8:	e7ca      	b.n	8005f50 <_vfprintf_r+0xf40>
 8005fba:	9b04      	ldr	r3, [sp, #16]
 8005fbc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005fc0:	1bdb      	subs	r3, r3, r7
 8005fc2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8005fc6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8005fc8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005fcc:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8005fd0:	9309      	str	r3, [sp, #36]	; 0x24
 8005fd2:	f7ff b99e 	b.w	8005312 <_vfprintf_r+0x302>
 8005fd6:	46c1      	mov	r9, r8
 8005fd8:	e594      	b.n	8005b04 <_vfprintf_r+0xaf4>
 8005fda:	4621      	mov	r1, r4
 8005fdc:	461c      	mov	r4, r3
 8005fde:	460b      	mov	r3, r1
 8005fe0:	3201      	adds	r2, #1
 8005fe2:	442c      	add	r4, r5
 8005fe4:	2a07      	cmp	r2, #7
 8005fe6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005fea:	e9cb 3500 	strd	r3, r5, [fp]
 8005fee:	f77f aa5e 	ble.w	80054ae <_vfprintf_r+0x49e>
 8005ff2:	e5ee      	b.n	8005bd2 <_vfprintf_r+0xbc2>
 8005ff4:	f018 0f10 	tst.w	r8, #16
 8005ff8:	f040 80f8 	bne.w	80061ec <_vfprintf_r+0x11dc>
 8005ffc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006000:	f000 8351 	beq.w	80066a6 <_vfprintf_r+0x1696>
 8006004:	9a05      	ldr	r2, [sp, #20]
 8006006:	801a      	strh	r2, [r3, #0]
 8006008:	4657      	mov	r7, sl
 800600a:	f7ff baa7 	b.w	800555c <_vfprintf_r+0x54c>
 800600e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006010:	9907      	ldr	r1, [sp, #28]
 8006012:	9803      	ldr	r0, [sp, #12]
 8006014:	f003 fb2a 	bl	800966c <__sprint_r>
 8006018:	2800      	cmp	r0, #0
 800601a:	f47f ad71 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 800601e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006020:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006024:	f7ff b9f5 	b.w	8005412 <_vfprintf_r+0x402>
 8006028:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800602c:	4602      	mov	r2, r0
 800602e:	460b      	mov	r3, r1
 8006030:	f7fa fd3c 	bl	8000aac <__aeabi_dcmpun>
 8006034:	2800      	cmp	r0, #0
 8006036:	f040 8491 	bne.w	800695c <_vfprintf_r+0x194c>
 800603a:	2e61      	cmp	r6, #97	; 0x61
 800603c:	f000 8111 	beq.w	8006262 <_vfprintf_r+0x1252>
 8006040:	2e41      	cmp	r6, #65	; 0x41
 8006042:	f000 8377 	beq.w	8006734 <_vfprintf_r+0x1724>
 8006046:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800604a:	f026 0220 	bic.w	r2, r6, #32
 800604e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006052:	930e      	str	r3, [sp, #56]	; 0x38
 8006054:	9204      	str	r2, [sp, #16]
 8006056:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006058:	f000 842d 	beq.w	80068b6 <_vfprintf_r+0x18a6>
 800605c:	2a47      	cmp	r2, #71	; 0x47
 800605e:	f000 8424 	beq.w	80068aa <_vfprintf_r+0x189a>
 8006062:	2b00      	cmp	r3, #0
 8006064:	f2c0 82f9 	blt.w	800665a <_vfprintf_r+0x164a>
 8006068:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800606c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006070:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006074:	2e66      	cmp	r6, #102	; 0x66
 8006076:	f000 83eb 	beq.w	8006850 <_vfprintf_r+0x1840>
 800607a:	2e46      	cmp	r6, #70	; 0x46
 800607c:	f000 847e 	beq.w	800697c <_vfprintf_r+0x196c>
 8006080:	9b04      	ldr	r3, [sp, #16]
 8006082:	9803      	ldr	r0, [sp, #12]
 8006084:	2b45      	cmp	r3, #69	; 0x45
 8006086:	bf0c      	ite	eq
 8006088:	f109 0501 	addeq.w	r5, r9, #1
 800608c:	464d      	movne	r5, r9
 800608e:	aa28      	add	r2, sp, #160	; 0xa0
 8006090:	ab25      	add	r3, sp, #148	; 0x94
 8006092:	e9cd 3200 	strd	r3, r2, [sp]
 8006096:	2102      	movs	r1, #2
 8006098:	ab24      	add	r3, sp, #144	; 0x90
 800609a:	462a      	mov	r2, r5
 800609c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80060a0:	f000 fe3e 	bl	8006d20 <_dtoa_r>
 80060a4:	2e67      	cmp	r6, #103	; 0x67
 80060a6:	4607      	mov	r7, r0
 80060a8:	f040 849c 	bne.w	80069e4 <_vfprintf_r+0x19d4>
 80060ac:	f018 0f01 	tst.w	r8, #1
 80060b0:	f040 83f9 	bne.w	80068a6 <_vfprintf_r+0x1896>
 80060b4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80060b6:	4640      	mov	r0, r8
 80060b8:	1bdb      	subs	r3, r3, r7
 80060ba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80060be:	9310      	str	r3, [sp, #64]	; 0x40
 80060c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80060c2:	9311      	str	r3, [sp, #68]	; 0x44
 80060c4:	9b04      	ldr	r3, [sp, #16]
 80060c6:	2b47      	cmp	r3, #71	; 0x47
 80060c8:	f000 81e7 	beq.w	800649a <_vfprintf_r+0x148a>
 80060cc:	9b04      	ldr	r3, [sp, #16]
 80060ce:	2b46      	cmp	r3, #70	; 0x46
 80060d0:	f000 8300 	beq.w	80066d4 <_vfprintf_r+0x16c4>
 80060d4:	9904      	ldr	r1, [sp, #16]
 80060d6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80060d8:	b2f2      	uxtb	r2, r6
 80060da:	2941      	cmp	r1, #65	; 0x41
 80060dc:	bf08      	it	eq
 80060de:	320f      	addeq	r2, #15
 80060e0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80060e4:	bf06      	itte	eq
 80060e6:	b2d2      	uxtbeq	r2, r2
 80060e8:	2101      	moveq	r1, #1
 80060ea:	2100      	movne	r1, #0
 80060ec:	2b00      	cmp	r3, #0
 80060ee:	9324      	str	r3, [sp, #144]	; 0x90
 80060f0:	bfb8      	it	lt
 80060f2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80060f4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80060f8:	bfba      	itte	lt
 80060fa:	f1c3 0301 	rsblt	r3, r3, #1
 80060fe:	222d      	movlt	r2, #45	; 0x2d
 8006100:	222b      	movge	r2, #43	; 0x2b
 8006102:	2b09      	cmp	r3, #9
 8006104:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006108:	f300 83f9 	bgt.w	80068fe <_vfprintf_r+0x18ee>
 800610c:	2900      	cmp	r1, #0
 800610e:	f040 8487 	bne.w	8006a20 <_vfprintf_r+0x1a10>
 8006112:	2230      	movs	r2, #48	; 0x30
 8006114:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006118:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800611c:	3330      	adds	r3, #48	; 0x30
 800611e:	7013      	strb	r3, [r2, #0]
 8006120:	1c53      	adds	r3, r2, #1
 8006122:	aa26      	add	r2, sp, #152	; 0x98
 8006124:	1a9b      	subs	r3, r3, r2
 8006126:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006128:	9319      	str	r3, [sp, #100]	; 0x64
 800612a:	2a01      	cmp	r2, #1
 800612c:	4413      	add	r3, r2
 800612e:	9309      	str	r3, [sp, #36]	; 0x24
 8006130:	f340 8442 	ble.w	80069b8 <_vfprintf_r+0x19a8>
 8006134:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006136:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006138:	4413      	add	r3, r2
 800613a:	9309      	str	r3, [sp, #36]	; 0x24
 800613c:	2300      	movs	r3, #0
 800613e:	930f      	str	r3, [sp, #60]	; 0x3c
 8006140:	9314      	str	r3, [sp, #80]	; 0x50
 8006142:	9311      	str	r3, [sp, #68]	; 0x44
 8006144:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006146:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800614a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800614e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8006152:	9304      	str	r3, [sp, #16]
 8006154:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006156:	2b00      	cmp	r3, #0
 8006158:	f040 8275 	bne.w	8006646 <_vfprintf_r+0x1636>
 800615c:	4699      	mov	r9, r3
 800615e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006162:	f7ff b8e2 	b.w	800532a <_vfprintf_r+0x31a>
 8006166:	bf00      	nop
 8006168:	08009fbc 	.word	0x08009fbc
 800616c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800616e:	49bd      	ldr	r1, [pc, #756]	; (8006464 <_vfprintf_r+0x1454>)
 8006170:	f8cb 1000 	str.w	r1, [fp]
 8006174:	3201      	adds	r2, #1
 8006176:	3401      	adds	r4, #1
 8006178:	2101      	movs	r1, #1
 800617a:	2a07      	cmp	r2, #7
 800617c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006180:	f8cb 1004 	str.w	r1, [fp, #4]
 8006184:	dc60      	bgt.n	8006248 <_vfprintf_r+0x1238>
 8006186:	f10b 0b08 	add.w	fp, fp, #8
 800618a:	b92b      	cbnz	r3, 8006198 <_vfprintf_r+0x1188>
 800618c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800618e:	b91a      	cbnz	r2, 8006198 <_vfprintf_r+0x1188>
 8006190:	f018 0f01 	tst.w	r8, #1
 8006194:	f43f a98d 	beq.w	80054b2 <_vfprintf_r+0x4a2>
 8006198:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800619a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800619c:	f8cb 1000 	str.w	r1, [fp]
 80061a0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80061a2:	f8cb 1004 	str.w	r1, [fp, #4]
 80061a6:	3201      	adds	r2, #1
 80061a8:	440c      	add	r4, r1
 80061aa:	2a07      	cmp	r2, #7
 80061ac:	942c      	str	r4, [sp, #176]	; 0xb0
 80061ae:	922b      	str	r2, [sp, #172]	; 0xac
 80061b0:	f300 8282 	bgt.w	80066b8 <_vfprintf_r+0x16a8>
 80061b4:	f10b 0b08 	add.w	fp, fp, #8
 80061b8:	2b00      	cmp	r3, #0
 80061ba:	f2c0 82e7 	blt.w	800678c <_vfprintf_r+0x177c>
 80061be:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80061c0:	3201      	adds	r2, #1
 80061c2:	441c      	add	r4, r3
 80061c4:	2a07      	cmp	r2, #7
 80061c6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80061ca:	e9cb 7300 	strd	r7, r3, [fp]
 80061ce:	f77f a96e 	ble.w	80054ae <_vfprintf_r+0x49e>
 80061d2:	e4fe      	b.n	8005bd2 <_vfprintf_r+0xbc2>
 80061d4:	aa2a      	add	r2, sp, #168	; 0xa8
 80061d6:	9907      	ldr	r1, [sp, #28]
 80061d8:	9803      	ldr	r0, [sp, #12]
 80061da:	f003 fa47 	bl	800966c <__sprint_r>
 80061de:	2800      	cmp	r0, #0
 80061e0:	f47f ac8e 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 80061e4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80061e8:	f7ff bbf0 	b.w	80059cc <_vfprintf_r+0x9bc>
 80061ec:	9a05      	ldr	r2, [sp, #20]
 80061ee:	601a      	str	r2, [r3, #0]
 80061f0:	4657      	mov	r7, sl
 80061f2:	f7ff b9b3 	b.w	800555c <_vfprintf_r+0x54c>
 80061f6:	8814      	ldrh	r4, [r2, #0]
 80061f8:	9108      	str	r1, [sp, #32]
 80061fa:	2500      	movs	r5, #0
 80061fc:	2201      	movs	r2, #1
 80061fe:	f7ff b9c8 	b.w	8005592 <_vfprintf_r+0x582>
 8006202:	8814      	ldrh	r4, [r2, #0]
 8006204:	9308      	str	r3, [sp, #32]
 8006206:	2500      	movs	r5, #0
 8006208:	f7ff ba14 	b.w	8005634 <_vfprintf_r+0x624>
 800620c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006210:	9208      	str	r2, [sp, #32]
 8006212:	17e5      	asrs	r5, r4, #31
 8006214:	4620      	mov	r0, r4
 8006216:	4629      	mov	r1, r5
 8006218:	f7ff b855 	b.w	80052c6 <_vfprintf_r+0x2b6>
 800621c:	8814      	ldrh	r4, [r2, #0]
 800621e:	9308      	str	r3, [sp, #32]
 8006220:	2500      	movs	r5, #0
 8006222:	f7ff b825 	b.w	8005270 <_vfprintf_r+0x260>
 8006226:	222d      	movs	r2, #45	; 0x2d
 8006228:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800622c:	f7ff baa2 	b.w	8005774 <_vfprintf_r+0x764>
 8006230:	aa2a      	add	r2, sp, #168	; 0xa8
 8006232:	9907      	ldr	r1, [sp, #28]
 8006234:	9803      	ldr	r0, [sp, #12]
 8006236:	f003 fa19 	bl	800966c <__sprint_r>
 800623a:	2800      	cmp	r0, #0
 800623c:	f47f ac60 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8006240:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006242:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006246:	e534      	b.n	8005cb2 <_vfprintf_r+0xca2>
 8006248:	aa2a      	add	r2, sp, #168	; 0xa8
 800624a:	9907      	ldr	r1, [sp, #28]
 800624c:	9803      	ldr	r0, [sp, #12]
 800624e:	f003 fa0d 	bl	800966c <__sprint_r>
 8006252:	2800      	cmp	r0, #0
 8006254:	f47f ac54 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8006258:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800625a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800625c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006260:	e793      	b.n	800618a <_vfprintf_r+0x117a>
 8006262:	2330      	movs	r3, #48	; 0x30
 8006264:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006268:	2378      	movs	r3, #120	; 0x78
 800626a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800626e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006272:	f048 0402 	orr.w	r4, r8, #2
 8006276:	f300 82b0 	bgt.w	80067da <_vfprintf_r+0x17ca>
 800627a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800627e:	930e      	str	r3, [sp, #56]	; 0x38
 8006280:	f026 0320 	bic.w	r3, r6, #32
 8006284:	9304      	str	r3, [sp, #16]
 8006286:	2200      	movs	r2, #0
 8006288:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800628a:	920a      	str	r2, [sp, #40]	; 0x28
 800628c:	46a0      	mov	r8, r4
 800628e:	af3d      	add	r7, sp, #244	; 0xf4
 8006290:	2b00      	cmp	r3, #0
 8006292:	f2c0 81e3 	blt.w	800665c <_vfprintf_r+0x164c>
 8006296:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800629a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800629e:	2300      	movs	r3, #0
 80062a0:	930b      	str	r3, [sp, #44]	; 0x2c
 80062a2:	2e61      	cmp	r6, #97	; 0x61
 80062a4:	f000 8255 	beq.w	8006752 <_vfprintf_r+0x1742>
 80062a8:	2e41      	cmp	r6, #65	; 0x41
 80062aa:	f47f aee3 	bne.w	8006074 <_vfprintf_r+0x1064>
 80062ae:	a824      	add	r0, sp, #144	; 0x90
 80062b0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80062b4:	f003 f8e2 	bl	800947c <frexp>
 80062b8:	2200      	movs	r2, #0
 80062ba:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80062be:	ec51 0b10 	vmov	r0, r1, d0
 80062c2:	f7fa f959 	bl	8000578 <__aeabi_dmul>
 80062c6:	2200      	movs	r2, #0
 80062c8:	2300      	movs	r3, #0
 80062ca:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80062ce:	f7fa fbbb 	bl	8000a48 <__aeabi_dcmpeq>
 80062d2:	2800      	cmp	r0, #0
 80062d4:	f040 8305 	bne.w	80068e2 <_vfprintf_r+0x18d2>
 80062d8:	4b63      	ldr	r3, [pc, #396]	; (8006468 <_vfprintf_r+0x1458>)
 80062da:	9309      	str	r3, [sp, #36]	; 0x24
 80062dc:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80062e0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80062e4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80062e8:	9721      	str	r7, [sp, #132]	; 0x84
 80062ea:	46b9      	mov	r9, r7
 80062ec:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80062f0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80062f4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80062f8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80062fc:	e003      	b.n	8006306 <_vfprintf_r+0x12f6>
 80062fe:	f7fa fba3 	bl	8000a48 <__aeabi_dcmpeq>
 8006302:	bb20      	cbnz	r0, 800634e <_vfprintf_r+0x133e>
 8006304:	46a9      	mov	r9, r5
 8006306:	2200      	movs	r2, #0
 8006308:	4b58      	ldr	r3, [pc, #352]	; (800646c <_vfprintf_r+0x145c>)
 800630a:	4630      	mov	r0, r6
 800630c:	4639      	mov	r1, r7
 800630e:	f7fa f933 	bl	8000578 <__aeabi_dmul>
 8006312:	460f      	mov	r7, r1
 8006314:	4606      	mov	r6, r0
 8006316:	f7fa fbdf 	bl	8000ad8 <__aeabi_d2iz>
 800631a:	4680      	mov	r8, r0
 800631c:	f7fa f8c2 	bl	80004a4 <__aeabi_i2d>
 8006320:	4602      	mov	r2, r0
 8006322:	460b      	mov	r3, r1
 8006324:	4630      	mov	r0, r6
 8006326:	4639      	mov	r1, r7
 8006328:	f7f9 ff6e 	bl	8000208 <__aeabi_dsub>
 800632c:	464d      	mov	r5, r9
 800632e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006332:	f805 cb01 	strb.w	ip, [r5], #1
 8006336:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800633a:	46a3      	mov	fp, r4
 800633c:	4606      	mov	r6, r0
 800633e:	460f      	mov	r7, r1
 8006340:	f04f 0200 	mov.w	r2, #0
 8006344:	f04f 0300 	mov.w	r3, #0
 8006348:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800634c:	d1d7      	bne.n	80062fe <_vfprintf_r+0x12ee>
 800634e:	4630      	mov	r0, r6
 8006350:	4639      	mov	r1, r7
 8006352:	2200      	movs	r2, #0
 8006354:	4b46      	ldr	r3, [pc, #280]	; (8006470 <_vfprintf_r+0x1460>)
 8006356:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800635a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800635c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006360:	4644      	mov	r4, r8
 8006362:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006366:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800636a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800636e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006372:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006374:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006378:	f7fa fb8e 	bl	8000a98 <__aeabi_dcmpgt>
 800637c:	2800      	cmp	r0, #0
 800637e:	f040 8176 	bne.w	800666e <_vfprintf_r+0x165e>
 8006382:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006386:	2200      	movs	r2, #0
 8006388:	4b39      	ldr	r3, [pc, #228]	; (8006470 <_vfprintf_r+0x1460>)
 800638a:	f7fa fb5d 	bl	8000a48 <__aeabi_dcmpeq>
 800638e:	b110      	cbz	r0, 8006396 <_vfprintf_r+0x1386>
 8006390:	07e2      	lsls	r2, r4, #31
 8006392:	f100 816c 	bmi.w	800666e <_vfprintf_r+0x165e>
 8006396:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006398:	2b00      	cmp	r3, #0
 800639a:	db07      	blt.n	80063ac <_vfprintf_r+0x139c>
 800639c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800639e:	3301      	adds	r3, #1
 80063a0:	442b      	add	r3, r5
 80063a2:	2230      	movs	r2, #48	; 0x30
 80063a4:	f805 2b01 	strb.w	r2, [r5], #1
 80063a8:	42ab      	cmp	r3, r5
 80063aa:	d1fb      	bne.n	80063a4 <_vfprintf_r+0x1394>
 80063ac:	1beb      	subs	r3, r5, r7
 80063ae:	4640      	mov	r0, r8
 80063b0:	9310      	str	r3, [sp, #64]	; 0x40
 80063b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80063b6:	e683      	b.n	80060c0 <_vfprintf_r+0x10b0>
 80063b8:	f8cd 9010 	str.w	r9, [sp, #16]
 80063bc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80063c0:	9408      	str	r4, [sp, #32]
 80063c2:	4681      	mov	r9, r0
 80063c4:	900f      	str	r0, [sp, #60]	; 0x3c
 80063c6:	9014      	str	r0, [sp, #80]	; 0x50
 80063c8:	9011      	str	r0, [sp, #68]	; 0x44
 80063ca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80063ce:	f7fe bfac 	b.w	800532a <_vfprintf_r+0x31a>
 80063d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80063d4:	9907      	ldr	r1, [sp, #28]
 80063d6:	9803      	ldr	r0, [sp, #12]
 80063d8:	f003 f948 	bl	800966c <__sprint_r>
 80063dc:	2800      	cmp	r0, #0
 80063de:	f47f ab8f 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 80063e2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80063e4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80063e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80063ea:	e511      	b.n	8005e10 <_vfprintf_r+0xe00>
 80063ec:	4252      	negs	r2, r2
 80063ee:	9206      	str	r2, [sp, #24]
 80063f0:	9308      	str	r3, [sp, #32]
 80063f2:	f7ff b96d 	b.w	80056d0 <_vfprintf_r+0x6c0>
 80063f6:	4614      	mov	r4, r2
 80063f8:	4632      	mov	r2, r6
 80063fa:	461e      	mov	r6, r3
 80063fc:	4613      	mov	r3, r2
 80063fe:	462a      	mov	r2, r5
 8006400:	3201      	adds	r2, #1
 8006402:	9209      	str	r2, [sp, #36]	; 0x24
 8006404:	f106 0208 	add.w	r2, r6, #8
 8006408:	e9c6 3900 	strd	r3, r9, [r6]
 800640c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800640e:	932b      	str	r3, [sp, #172]	; 0xac
 8006410:	444c      	add	r4, r9
 8006412:	2b07      	cmp	r3, #7
 8006414:	942c      	str	r4, [sp, #176]	; 0xb0
 8006416:	f73f acc3 	bgt.w	8005da0 <_vfprintf_r+0xd90>
 800641a:	3301      	adds	r3, #1
 800641c:	9309      	str	r3, [sp, #36]	; 0x24
 800641e:	f102 0b08 	add.w	fp, r2, #8
 8006422:	4616      	mov	r6, r2
 8006424:	f7ff bbca 	b.w	8005bbc <_vfprintf_r+0xbac>
 8006428:	aa2a      	add	r2, sp, #168	; 0xa8
 800642a:	9907      	ldr	r1, [sp, #28]
 800642c:	9803      	ldr	r0, [sp, #12]
 800642e:	f003 f91d 	bl	800966c <__sprint_r>
 8006432:	2800      	cmp	r0, #0
 8006434:	f47f ab64 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8006438:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800643a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800643e:	f7ff bade 	b.w	80059fe <_vfprintf_r+0x9ee>
 8006442:	464b      	mov	r3, r9
 8006444:	2b06      	cmp	r3, #6
 8006446:	bf28      	it	cs
 8006448:	2306      	movcs	r3, #6
 800644a:	46b9      	mov	r9, r7
 800644c:	970f      	str	r7, [sp, #60]	; 0x3c
 800644e:	9714      	str	r7, [sp, #80]	; 0x50
 8006450:	9711      	str	r7, [sp, #68]	; 0x44
 8006452:	970a      	str	r7, [sp, #40]	; 0x28
 8006454:	463a      	mov	r2, r7
 8006456:	9304      	str	r3, [sp, #16]
 8006458:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800645c:	4f05      	ldr	r7, [pc, #20]	; (8006474 <_vfprintf_r+0x1464>)
 800645e:	f7fe bf64 	b.w	800532a <_vfprintf_r+0x31a>
 8006462:	bf00      	nop
 8006464:	08009fa8 	.word	0x08009fa8
 8006468:	08009f8c 	.word	0x08009f8c
 800646c:	40300000 	.word	0x40300000
 8006470:	3fe00000 	.word	0x3fe00000
 8006474:	08009fa0 	.word	0x08009fa0
 8006478:	460c      	mov	r4, r1
 800647a:	4639      	mov	r1, r7
 800647c:	465f      	mov	r7, fp
 800647e:	469b      	mov	fp, r3
 8006480:	460b      	mov	r3, r1
 8006482:	3201      	adds	r2, #1
 8006484:	442c      	add	r4, r5
 8006486:	2a07      	cmp	r2, #7
 8006488:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800648c:	e9cb 3500 	strd	r3, r5, [fp]
 8006490:	f73f aca5 	bgt.w	8005dde <_vfprintf_r+0xdce>
 8006494:	f10b 0b08 	add.w	fp, fp, #8
 8006498:	e4ac      	b.n	8005df4 <_vfprintf_r+0xde4>
 800649a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800649c:	1cda      	adds	r2, r3, #3
 800649e:	db02      	blt.n	80064a6 <_vfprintf_r+0x1496>
 80064a0:	4599      	cmp	r9, r3
 80064a2:	f280 80b5 	bge.w	8006610 <_vfprintf_r+0x1600>
 80064a6:	3e02      	subs	r6, #2
 80064a8:	f026 0320 	bic.w	r3, r6, #32
 80064ac:	9304      	str	r3, [sp, #16]
 80064ae:	e611      	b.n	80060d4 <_vfprintf_r+0x10c4>
 80064b0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80064b2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80064b6:	465a      	mov	r2, fp
 80064b8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80064bc:	18fb      	adds	r3, r7, r3
 80064be:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80064c2:	970c      	str	r7, [sp, #48]	; 0x30
 80064c4:	4eaf      	ldr	r6, [pc, #700]	; (8006784 <_vfprintf_r+0x1774>)
 80064c6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80064ca:	9309      	str	r3, [sp, #36]	; 0x24
 80064cc:	464f      	mov	r7, r9
 80064ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80064d2:	4621      	mov	r1, r4
 80064d4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80064d6:	2b00      	cmp	r3, #0
 80064d8:	d05b      	beq.n	8006592 <_vfprintf_r+0x1582>
 80064da:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80064dc:	2b00      	cmp	r3, #0
 80064de:	d154      	bne.n	800658a <_vfprintf_r+0x157a>
 80064e0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80064e2:	3b01      	subs	r3, #1
 80064e4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80064e8:	9314      	str	r3, [sp, #80]	; 0x50
 80064ea:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80064ec:	9818      	ldr	r0, [sp, #96]	; 0x60
 80064ee:	6010      	str	r0, [r2, #0]
 80064f0:	3301      	adds	r3, #1
 80064f2:	4459      	add	r1, fp
 80064f4:	2b07      	cmp	r3, #7
 80064f6:	912c      	str	r1, [sp, #176]	; 0xb0
 80064f8:	f8c2 b004 	str.w	fp, [r2, #4]
 80064fc:	932b      	str	r3, [sp, #172]	; 0xac
 80064fe:	dc68      	bgt.n	80065d2 <_vfprintf_r+0x15c2>
 8006500:	3208      	adds	r2, #8
 8006502:	9809      	ldr	r0, [sp, #36]	; 0x24
 8006504:	f898 3000 	ldrb.w	r3, [r8]
 8006508:	1bc5      	subs	r5, r0, r7
 800650a:	429d      	cmp	r5, r3
 800650c:	bfa8      	it	ge
 800650e:	461d      	movge	r5, r3
 8006510:	2d00      	cmp	r5, #0
 8006512:	dd0b      	ble.n	800652c <_vfprintf_r+0x151c>
 8006514:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006516:	6017      	str	r7, [r2, #0]
 8006518:	3301      	adds	r3, #1
 800651a:	4429      	add	r1, r5
 800651c:	2b07      	cmp	r3, #7
 800651e:	912c      	str	r1, [sp, #176]	; 0xb0
 8006520:	6055      	str	r5, [r2, #4]
 8006522:	932b      	str	r3, [sp, #172]	; 0xac
 8006524:	dc5e      	bgt.n	80065e4 <_vfprintf_r+0x15d4>
 8006526:	f898 3000 	ldrb.w	r3, [r8]
 800652a:	3208      	adds	r2, #8
 800652c:	2d00      	cmp	r5, #0
 800652e:	bfac      	ite	ge
 8006530:	1b5d      	subge	r5, r3, r5
 8006532:	461d      	movlt	r5, r3
 8006534:	2d00      	cmp	r5, #0
 8006536:	dd26      	ble.n	8006586 <_vfprintf_r+0x1576>
 8006538:	2d10      	cmp	r5, #16
 800653a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800653c:	dd3c      	ble.n	80065b8 <_vfprintf_r+0x15a8>
 800653e:	2410      	movs	r4, #16
 8006540:	e003      	b.n	800654a <_vfprintf_r+0x153a>
 8006542:	3208      	adds	r2, #8
 8006544:	3d10      	subs	r5, #16
 8006546:	2d10      	cmp	r5, #16
 8006548:	dd36      	ble.n	80065b8 <_vfprintf_r+0x15a8>
 800654a:	3001      	adds	r0, #1
 800654c:	3110      	adds	r1, #16
 800654e:	2807      	cmp	r0, #7
 8006550:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006554:	e9c2 6400 	strd	r6, r4, [r2]
 8006558:	ddf3      	ble.n	8006542 <_vfprintf_r+0x1532>
 800655a:	aa2a      	add	r2, sp, #168	; 0xa8
 800655c:	4651      	mov	r1, sl
 800655e:	4648      	mov	r0, r9
 8006560:	f003 f884 	bl	800966c <__sprint_r>
 8006564:	2800      	cmp	r0, #0
 8006566:	d150      	bne.n	800660a <_vfprintf_r+0x15fa>
 8006568:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800656c:	aa2d      	add	r2, sp, #180	; 0xb4
 800656e:	e7e9      	b.n	8006544 <_vfprintf_r+0x1534>
 8006570:	aa2a      	add	r2, sp, #168	; 0xa8
 8006572:	4651      	mov	r1, sl
 8006574:	4648      	mov	r0, r9
 8006576:	f003 f879 	bl	800966c <__sprint_r>
 800657a:	2800      	cmp	r0, #0
 800657c:	d145      	bne.n	800660a <_vfprintf_r+0x15fa>
 800657e:	f898 3000 	ldrb.w	r3, [r8]
 8006582:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006584:	aa2d      	add	r2, sp, #180	; 0xb4
 8006586:	441f      	add	r7, r3
 8006588:	e7a4      	b.n	80064d4 <_vfprintf_r+0x14c4>
 800658a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800658c:	3b01      	subs	r3, #1
 800658e:	930f      	str	r3, [sp, #60]	; 0x3c
 8006590:	e7ab      	b.n	80064ea <_vfprintf_r+0x14da>
 8006592:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006594:	2b00      	cmp	r3, #0
 8006596:	d1f8      	bne.n	800658a <_vfprintf_r+0x157a>
 8006598:	46b9      	mov	r9, r7
 800659a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800659c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800659e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80065a2:	18fb      	adds	r3, r7, r3
 80065a4:	4599      	cmp	r9, r3
 80065a6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80065aa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80065ae:	4693      	mov	fp, r2
 80065b0:	460c      	mov	r4, r1
 80065b2:	bf28      	it	cs
 80065b4:	4699      	movcs	r9, r3
 80065b6:	e424      	b.n	8005e02 <_vfprintf_r+0xdf2>
 80065b8:	3001      	adds	r0, #1
 80065ba:	4429      	add	r1, r5
 80065bc:	2807      	cmp	r0, #7
 80065be:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80065c2:	e9c2 6500 	strd	r6, r5, [r2]
 80065c6:	dcd3      	bgt.n	8006570 <_vfprintf_r+0x1560>
 80065c8:	f898 3000 	ldrb.w	r3, [r8]
 80065cc:	3208      	adds	r2, #8
 80065ce:	441f      	add	r7, r3
 80065d0:	e780      	b.n	80064d4 <_vfprintf_r+0x14c4>
 80065d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80065d4:	4651      	mov	r1, sl
 80065d6:	4648      	mov	r0, r9
 80065d8:	f003 f848 	bl	800966c <__sprint_r>
 80065dc:	b9a8      	cbnz	r0, 800660a <_vfprintf_r+0x15fa>
 80065de:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80065e0:	aa2d      	add	r2, sp, #180	; 0xb4
 80065e2:	e78e      	b.n	8006502 <_vfprintf_r+0x14f2>
 80065e4:	aa2a      	add	r2, sp, #168	; 0xa8
 80065e6:	4651      	mov	r1, sl
 80065e8:	4648      	mov	r0, r9
 80065ea:	f003 f83f 	bl	800966c <__sprint_r>
 80065ee:	b960      	cbnz	r0, 800660a <_vfprintf_r+0x15fa>
 80065f0:	f898 3000 	ldrb.w	r3, [r8]
 80065f4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80065f6:	aa2d      	add	r2, sp, #180	; 0xb4
 80065f8:	e798      	b.n	800652c <_vfprintf_r+0x151c>
 80065fa:	4638      	mov	r0, r7
 80065fc:	f7fa fcc0 	bl	8000f80 <strlen>
 8006600:	46a9      	mov	r9, r5
 8006602:	4603      	mov	r3, r0
 8006604:	9009      	str	r0, [sp, #36]	; 0x24
 8006606:	f7ff b8f4 	b.w	80057f2 <_vfprintf_r+0x7e2>
 800660a:	46d1      	mov	r9, sl
 800660c:	f7ff ba7a 	b.w	8005b04 <_vfprintf_r+0xaf4>
 8006610:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006612:	4619      	mov	r1, r3
 8006614:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006616:	4299      	cmp	r1, r3
 8006618:	f300 8082 	bgt.w	8006720 <_vfprintf_r+0x1710>
 800661c:	07c4      	lsls	r4, r0, #31
 800661e:	f140 816b 	bpl.w	80068f8 <_vfprintf_r+0x18e8>
 8006622:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006624:	4413      	add	r3, r2
 8006626:	9309      	str	r3, [sp, #36]	; 0x24
 8006628:	0541      	lsls	r1, r0, #21
 800662a:	d503      	bpl.n	8006634 <_vfprintf_r+0x1624>
 800662c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800662e:	2b00      	cmp	r3, #0
 8006630:	f300 80e6 	bgt.w	8006800 <_vfprintf_r+0x17f0>
 8006634:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006636:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800663a:	9304      	str	r3, [sp, #16]
 800663c:	2667      	movs	r6, #103	; 0x67
 800663e:	2300      	movs	r3, #0
 8006640:	930f      	str	r3, [sp, #60]	; 0x3c
 8006642:	9314      	str	r3, [sp, #80]	; 0x50
 8006644:	e586      	b.n	8006154 <_vfprintf_r+0x1144>
 8006646:	222d      	movs	r2, #45	; 0x2d
 8006648:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800664c:	f04f 0900 	mov.w	r9, #0
 8006650:	f7fe be6c 	b.w	800532c <_vfprintf_r+0x31c>
 8006654:	46a1      	mov	r9, r4
 8006656:	f7ff ba55 	b.w	8005b04 <_vfprintf_r+0xaf4>
 800665a:	900a      	str	r0, [sp, #40]	; 0x28
 800665c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006660:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8006664:	931f      	str	r3, [sp, #124]	; 0x7c
 8006666:	232d      	movs	r3, #45	; 0x2d
 8006668:	911e      	str	r1, [sp, #120]	; 0x78
 800666a:	930b      	str	r3, [sp, #44]	; 0x2c
 800666c:	e619      	b.n	80062a2 <_vfprintf_r+0x1292>
 800666e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006670:	9328      	str	r3, [sp, #160]	; 0xa0
 8006672:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006674:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006678:	7bd9      	ldrb	r1, [r3, #15]
 800667a:	4291      	cmp	r1, r2
 800667c:	462b      	mov	r3, r5
 800667e:	d109      	bne.n	8006694 <_vfprintf_r+0x1684>
 8006680:	2030      	movs	r0, #48	; 0x30
 8006682:	f803 0c01 	strb.w	r0, [r3, #-1]
 8006686:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006688:	1e5a      	subs	r2, r3, #1
 800668a:	9228      	str	r2, [sp, #160]	; 0xa0
 800668c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006690:	4291      	cmp	r1, r2
 8006692:	d0f6      	beq.n	8006682 <_vfprintf_r+0x1672>
 8006694:	2a39      	cmp	r2, #57	; 0x39
 8006696:	bf0b      	itete	eq
 8006698:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800669a:	3201      	addne	r2, #1
 800669c:	7a92      	ldrbeq	r2, [r2, #10]
 800669e:	b2d2      	uxtbne	r2, r2
 80066a0:	f803 2c01 	strb.w	r2, [r3, #-1]
 80066a4:	e682      	b.n	80063ac <_vfprintf_r+0x139c>
 80066a6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80066aa:	f43f ad9f 	beq.w	80061ec <_vfprintf_r+0x11dc>
 80066ae:	9a05      	ldr	r2, [sp, #20]
 80066b0:	701a      	strb	r2, [r3, #0]
 80066b2:	4657      	mov	r7, sl
 80066b4:	f7fe bf52 	b.w	800555c <_vfprintf_r+0x54c>
 80066b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80066ba:	9907      	ldr	r1, [sp, #28]
 80066bc:	9803      	ldr	r0, [sp, #12]
 80066be:	f002 ffd5 	bl	800966c <__sprint_r>
 80066c2:	2800      	cmp	r0, #0
 80066c4:	f47f aa1c 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 80066c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80066ca:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80066ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066d2:	e571      	b.n	80061b8 <_vfprintf_r+0x11a8>
 80066d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80066d6:	2b00      	cmp	r3, #0
 80066d8:	f340 8164 	ble.w	80069a4 <_vfprintf_r+0x1994>
 80066dc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80066de:	f1b9 0f00 	cmp.w	r9, #0
 80066e2:	f040 8103 	bne.w	80068ec <_vfprintf_r+0x18dc>
 80066e6:	07c6      	lsls	r6, r0, #31
 80066e8:	f100 8100 	bmi.w	80068ec <_vfprintf_r+0x18dc>
 80066ec:	9309      	str	r3, [sp, #36]	; 0x24
 80066ee:	2666      	movs	r6, #102	; 0x66
 80066f0:	0543      	lsls	r3, r0, #21
 80066f2:	f100 8086 	bmi.w	8006802 <_vfprintf_r+0x17f2>
 80066f6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80066f8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80066fc:	9304      	str	r3, [sp, #16]
 80066fe:	e79e      	b.n	800663e <_vfprintf_r+0x162e>
 8006700:	aa2a      	add	r2, sp, #168	; 0xa8
 8006702:	9907      	ldr	r1, [sp, #28]
 8006704:	9803      	ldr	r0, [sp, #12]
 8006706:	f002 ffb1 	bl	800966c <__sprint_r>
 800670a:	2800      	cmp	r0, #0
 800670c:	f47f a9f8 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8006710:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006712:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006714:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006716:	1ad3      	subs	r3, r2, r3
 8006718:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800671c:	f7ff bb90 	b.w	8005e40 <_vfprintf_r+0xe30>
 8006720:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006722:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006724:	4413      	add	r3, r2
 8006726:	9309      	str	r3, [sp, #36]	; 0x24
 8006728:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800672a:	2b00      	cmp	r3, #0
 800672c:	f340 8149 	ble.w	80069c2 <_vfprintf_r+0x19b2>
 8006730:	2667      	movs	r6, #103	; 0x67
 8006732:	e7dd      	b.n	80066f0 <_vfprintf_r+0x16e0>
 8006734:	2330      	movs	r3, #48	; 0x30
 8006736:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800673a:	2358      	movs	r3, #88	; 0x58
 800673c:	e595      	b.n	800626a <_vfprintf_r+0x125a>
 800673e:	9803      	ldr	r0, [sp, #12]
 8006740:	aa2a      	add	r2, sp, #168	; 0xa8
 8006742:	4649      	mov	r1, r9
 8006744:	f002 ff92 	bl	800966c <__sprint_r>
 8006748:	2800      	cmp	r0, #0
 800674a:	f47f a9e0 	bne.w	8005b0e <_vfprintf_r+0xafe>
 800674e:	f7fe bf0f 	b.w	8005570 <_vfprintf_r+0x560>
 8006752:	a824      	add	r0, sp, #144	; 0x90
 8006754:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006758:	f002 fe90 	bl	800947c <frexp>
 800675c:	2200      	movs	r2, #0
 800675e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006762:	ec51 0b10 	vmov	r0, r1, d0
 8006766:	f7f9 ff07 	bl	8000578 <__aeabi_dmul>
 800676a:	2200      	movs	r2, #0
 800676c:	2300      	movs	r3, #0
 800676e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006772:	f7fa f969 	bl	8000a48 <__aeabi_dcmpeq>
 8006776:	b108      	cbz	r0, 800677c <_vfprintf_r+0x176c>
 8006778:	2301      	movs	r3, #1
 800677a:	9324      	str	r3, [sp, #144]	; 0x90
 800677c:	4b02      	ldr	r3, [pc, #8]	; (8006788 <_vfprintf_r+0x1778>)
 800677e:	9309      	str	r3, [sp, #36]	; 0x24
 8006780:	e5ac      	b.n	80062dc <_vfprintf_r+0x12cc>
 8006782:	bf00      	nop
 8006784:	08009fbc 	.word	0x08009fbc
 8006788:	08009f78 	.word	0x08009f78
 800678c:	425d      	negs	r5, r3
 800678e:	3310      	adds	r3, #16
 8006790:	4bb9      	ldr	r3, [pc, #740]	; (8006a78 <_vfprintf_r+0x1a68>)
 8006792:	f280 8097 	bge.w	80068c4 <_vfprintf_r+0x18b4>
 8006796:	4619      	mov	r1, r3
 8006798:	2610      	movs	r6, #16
 800679a:	4623      	mov	r3, r4
 800679c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80067a0:	460c      	mov	r4, r1
 80067a2:	e005      	b.n	80067b0 <_vfprintf_r+0x17a0>
 80067a4:	f10b 0b08 	add.w	fp, fp, #8
 80067a8:	3d10      	subs	r5, #16
 80067aa:	2d10      	cmp	r5, #16
 80067ac:	f340 8087 	ble.w	80068be <_vfprintf_r+0x18ae>
 80067b0:	3201      	adds	r2, #1
 80067b2:	3310      	adds	r3, #16
 80067b4:	2a07      	cmp	r2, #7
 80067b6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80067ba:	e9cb 4600 	strd	r4, r6, [fp]
 80067be:	ddf1      	ble.n	80067a4 <_vfprintf_r+0x1794>
 80067c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80067c2:	9907      	ldr	r1, [sp, #28]
 80067c4:	4648      	mov	r0, r9
 80067c6:	f002 ff51 	bl	800966c <__sprint_r>
 80067ca:	2800      	cmp	r0, #0
 80067cc:	f47f a998 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 80067d0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80067d4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80067d8:	e7e6      	b.n	80067a8 <_vfprintf_r+0x1798>
 80067da:	f109 0101 	add.w	r1, r9, #1
 80067de:	9803      	ldr	r0, [sp, #12]
 80067e0:	f001 fe80 	bl	80084e4 <_malloc_r>
 80067e4:	4607      	mov	r7, r0
 80067e6:	2800      	cmp	r0, #0
 80067e8:	f000 813b 	beq.w	8006a62 <_vfprintf_r+0x1a52>
 80067ec:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80067f0:	930e      	str	r3, [sp, #56]	; 0x38
 80067f2:	f026 0320 	bic.w	r3, r6, #32
 80067f6:	9304      	str	r3, [sp, #16]
 80067f8:	46a0      	mov	r8, r4
 80067fa:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80067fc:	900a      	str	r0, [sp, #40]	; 0x28
 80067fe:	e547      	b.n	8006290 <_vfprintf_r+0x1280>
 8006800:	2667      	movs	r6, #103	; 0x67
 8006802:	981a      	ldr	r0, [sp, #104]	; 0x68
 8006804:	2200      	movs	r2, #0
 8006806:	920f      	str	r2, [sp, #60]	; 0x3c
 8006808:	9214      	str	r2, [sp, #80]	; 0x50
 800680a:	7803      	ldrb	r3, [r0, #0]
 800680c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800680e:	2bff      	cmp	r3, #255	; 0xff
 8006810:	d00c      	beq.n	800682c <_vfprintf_r+0x181c>
 8006812:	4293      	cmp	r3, r2
 8006814:	da0a      	bge.n	800682c <_vfprintf_r+0x181c>
 8006816:	7841      	ldrb	r1, [r0, #1]
 8006818:	1ad2      	subs	r2, r2, r3
 800681a:	b1a9      	cbz	r1, 8006848 <_vfprintf_r+0x1838>
 800681c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800681e:	3301      	adds	r3, #1
 8006820:	9314      	str	r3, [sp, #80]	; 0x50
 8006822:	460b      	mov	r3, r1
 8006824:	2bff      	cmp	r3, #255	; 0xff
 8006826:	f100 0001 	add.w	r0, r0, #1
 800682a:	d1f2      	bne.n	8006812 <_vfprintf_r+0x1802>
 800682c:	9211      	str	r2, [sp, #68]	; 0x44
 800682e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006830:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8006832:	9909      	ldr	r1, [sp, #36]	; 0x24
 8006834:	901a      	str	r0, [sp, #104]	; 0x68
 8006836:	4413      	add	r3, r2
 8006838:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800683a:	fb02 1303 	mla	r3, r2, r3, r1
 800683e:	9309      	str	r3, [sp, #36]	; 0x24
 8006840:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006844:	9304      	str	r3, [sp, #16]
 8006846:	e485      	b.n	8006154 <_vfprintf_r+0x1144>
 8006848:	990f      	ldr	r1, [sp, #60]	; 0x3c
 800684a:	3101      	adds	r1, #1
 800684c:	910f      	str	r1, [sp, #60]	; 0x3c
 800684e:	e7de      	b.n	800680e <_vfprintf_r+0x17fe>
 8006850:	aa28      	add	r2, sp, #160	; 0xa0
 8006852:	ab25      	add	r3, sp, #148	; 0x94
 8006854:	e9cd 3200 	strd	r3, r2, [sp]
 8006858:	2103      	movs	r1, #3
 800685a:	ab24      	add	r3, sp, #144	; 0x90
 800685c:	464a      	mov	r2, r9
 800685e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006862:	9803      	ldr	r0, [sp, #12]
 8006864:	f000 fa5c 	bl	8006d20 <_dtoa_r>
 8006868:	464d      	mov	r5, r9
 800686a:	4607      	mov	r7, r0
 800686c:	eb00 0409 	add.w	r4, r0, r9
 8006870:	783b      	ldrb	r3, [r7, #0]
 8006872:	2b30      	cmp	r3, #48	; 0x30
 8006874:	f000 80be 	beq.w	80069f4 <_vfprintf_r+0x19e4>
 8006878:	9d24      	ldr	r5, [sp, #144]	; 0x90
 800687a:	442c      	add	r4, r5
 800687c:	2200      	movs	r2, #0
 800687e:	2300      	movs	r3, #0
 8006880:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8006884:	f7fa f8e0 	bl	8000a48 <__aeabi_dcmpeq>
 8006888:	b108      	cbz	r0, 800688e <_vfprintf_r+0x187e>
 800688a:	4623      	mov	r3, r4
 800688c:	e413      	b.n	80060b6 <_vfprintf_r+0x10a6>
 800688e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006890:	42a3      	cmp	r3, r4
 8006892:	f4bf ac10 	bcs.w	80060b6 <_vfprintf_r+0x10a6>
 8006896:	2130      	movs	r1, #48	; 0x30
 8006898:	1c5a      	adds	r2, r3, #1
 800689a:	9228      	str	r2, [sp, #160]	; 0xa0
 800689c:	7019      	strb	r1, [r3, #0]
 800689e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80068a0:	429c      	cmp	r4, r3
 80068a2:	d8f9      	bhi.n	8006898 <_vfprintf_r+0x1888>
 80068a4:	e407      	b.n	80060b6 <_vfprintf_r+0x10a6>
 80068a6:	197c      	adds	r4, r7, r5
 80068a8:	e7e8      	b.n	800687c <_vfprintf_r+0x186c>
 80068aa:	f1b9 0f00 	cmp.w	r9, #0
 80068ae:	f000 8092 	beq.w	80069d6 <_vfprintf_r+0x19c6>
 80068b2:	900a      	str	r0, [sp, #40]	; 0x28
 80068b4:	e4ec      	b.n	8006290 <_vfprintf_r+0x1280>
 80068b6:	900a      	str	r0, [sp, #40]	; 0x28
 80068b8:	f04f 0906 	mov.w	r9, #6
 80068bc:	e4e8      	b.n	8006290 <_vfprintf_r+0x1280>
 80068be:	4621      	mov	r1, r4
 80068c0:	461c      	mov	r4, r3
 80068c2:	460b      	mov	r3, r1
 80068c4:	3201      	adds	r2, #1
 80068c6:	442c      	add	r4, r5
 80068c8:	2a07      	cmp	r2, #7
 80068ca:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80068ce:	e9cb 3500 	strd	r3, r5, [fp]
 80068d2:	f300 80a9 	bgt.w	8006a28 <_vfprintf_r+0x1a18>
 80068d6:	f10b 0b08 	add.w	fp, fp, #8
 80068da:	e470      	b.n	80061be <_vfprintf_r+0x11ae>
 80068dc:	469a      	mov	sl, r3
 80068de:	f7ff bb37 	b.w	8005f50 <_vfprintf_r+0xf40>
 80068e2:	2301      	movs	r3, #1
 80068e4:	9324      	str	r3, [sp, #144]	; 0x90
 80068e6:	4b65      	ldr	r3, [pc, #404]	; (8006a7c <_vfprintf_r+0x1a6c>)
 80068e8:	9309      	str	r3, [sp, #36]	; 0x24
 80068ea:	e4f7      	b.n	80062dc <_vfprintf_r+0x12cc>
 80068ec:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80068ee:	4413      	add	r3, r2
 80068f0:	444b      	add	r3, r9
 80068f2:	9309      	str	r3, [sp, #36]	; 0x24
 80068f4:	2666      	movs	r6, #102	; 0x66
 80068f6:	e6fb      	b.n	80066f0 <_vfprintf_r+0x16e0>
 80068f8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80068fa:	9309      	str	r3, [sp, #36]	; 0x24
 80068fc:	e694      	b.n	8006628 <_vfprintf_r+0x1618>
 80068fe:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8006902:	4664      	mov	r4, ip
 8006904:	4d5e      	ldr	r5, [pc, #376]	; (8006a80 <_vfprintf_r+0x1a70>)
 8006906:	e000      	b.n	800690a <_vfprintf_r+0x18fa>
 8006908:	4614      	mov	r4, r2
 800690a:	fba5 1203 	umull	r1, r2, r5, r3
 800690e:	08d2      	lsrs	r2, r2, #3
 8006910:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8006914:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8006918:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800691c:	4613      	mov	r3, r2
 800691e:	2b09      	cmp	r3, #9
 8006920:	f804 1c01 	strb.w	r1, [r4, #-1]
 8006924:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006928:	dcee      	bgt.n	8006908 <_vfprintf_r+0x18f8>
 800692a:	3330      	adds	r3, #48	; 0x30
 800692c:	3c02      	subs	r4, #2
 800692e:	b2db      	uxtb	r3, r3
 8006930:	45a4      	cmp	ip, r4
 8006932:	f802 3c01 	strb.w	r3, [r2, #-1]
 8006936:	f240 8090 	bls.w	8006a5a <_vfprintf_r+0x1a4a>
 800693a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800693e:	4611      	mov	r1, r2
 8006940:	e001      	b.n	8006946 <_vfprintf_r+0x1936>
 8006942:	f811 3b01 	ldrb.w	r3, [r1], #1
 8006946:	f804 3b01 	strb.w	r3, [r4], #1
 800694a:	458c      	cmp	ip, r1
 800694c:	d1f9      	bne.n	8006942 <_vfprintf_r+0x1932>
 800694e:	ab2a      	add	r3, sp, #168	; 0xa8
 8006950:	1a9b      	subs	r3, r3, r2
 8006952:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8006956:	4413      	add	r3, r2
 8006958:	f7ff bbe3 	b.w	8006122 <_vfprintf_r+0x1112>
 800695c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800695e:	4f49      	ldr	r7, [pc, #292]	; (8006a84 <_vfprintf_r+0x1a74>)
 8006960:	2b00      	cmp	r3, #0
 8006962:	bfb6      	itet	lt
 8006964:	222d      	movlt	r2, #45	; 0x2d
 8006966:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 800696a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 800696e:	4b46      	ldr	r3, [pc, #280]	; (8006a88 <_vfprintf_r+0x1a78>)
 8006970:	f7fe bf02 	b.w	8005778 <_vfprintf_r+0x768>
 8006974:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006978:	f7ff b8c9 	b.w	8005b0e <_vfprintf_r+0xafe>
 800697c:	aa28      	add	r2, sp, #160	; 0xa0
 800697e:	ab25      	add	r3, sp, #148	; 0x94
 8006980:	e9cd 3200 	strd	r3, r2, [sp]
 8006984:	2103      	movs	r1, #3
 8006986:	ab24      	add	r3, sp, #144	; 0x90
 8006988:	464a      	mov	r2, r9
 800698a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800698e:	9803      	ldr	r0, [sp, #12]
 8006990:	f000 f9c6 	bl	8006d20 <_dtoa_r>
 8006994:	464d      	mov	r5, r9
 8006996:	4607      	mov	r7, r0
 8006998:	2e46      	cmp	r6, #70	; 0x46
 800699a:	eb07 0405 	add.w	r4, r7, r5
 800699e:	f43f af67 	beq.w	8006870 <_vfprintf_r+0x1860>
 80069a2:	e76b      	b.n	800687c <_vfprintf_r+0x186c>
 80069a4:	f1b9 0f00 	cmp.w	r9, #0
 80069a8:	d131      	bne.n	8006a0e <_vfprintf_r+0x19fe>
 80069aa:	07c5      	lsls	r5, r0, #31
 80069ac:	d42f      	bmi.n	8006a0e <_vfprintf_r+0x19fe>
 80069ae:	2301      	movs	r3, #1
 80069b0:	9304      	str	r3, [sp, #16]
 80069b2:	9309      	str	r3, [sp, #36]	; 0x24
 80069b4:	2666      	movs	r6, #102	; 0x66
 80069b6:	e642      	b.n	800663e <_vfprintf_r+0x162e>
 80069b8:	07c3      	lsls	r3, r0, #31
 80069ba:	f57f abbf 	bpl.w	800613c <_vfprintf_r+0x112c>
 80069be:	f7ff bbb9 	b.w	8006134 <_vfprintf_r+0x1124>
 80069c2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80069c4:	f1c3 0301 	rsb	r3, r3, #1
 80069c8:	441a      	add	r2, r3
 80069ca:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80069ce:	9209      	str	r2, [sp, #36]	; 0x24
 80069d0:	9304      	str	r3, [sp, #16]
 80069d2:	2667      	movs	r6, #103	; 0x67
 80069d4:	e633      	b.n	800663e <_vfprintf_r+0x162e>
 80069d6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80069da:	f04f 0901 	mov.w	r9, #1
 80069de:	e457      	b.n	8006290 <_vfprintf_r+0x1280>
 80069e0:	465a      	mov	r2, fp
 80069e2:	e511      	b.n	8006408 <_vfprintf_r+0x13f8>
 80069e4:	2e47      	cmp	r6, #71	; 0x47
 80069e6:	f47f af5e 	bne.w	80068a6 <_vfprintf_r+0x1896>
 80069ea:	f018 0f01 	tst.w	r8, #1
 80069ee:	f43f ab61 	beq.w	80060b4 <_vfprintf_r+0x10a4>
 80069f2:	e7d1      	b.n	8006998 <_vfprintf_r+0x1988>
 80069f4:	2200      	movs	r2, #0
 80069f6:	2300      	movs	r3, #0
 80069f8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80069fc:	f7fa f824 	bl	8000a48 <__aeabi_dcmpeq>
 8006a00:	2800      	cmp	r0, #0
 8006a02:	f47f af39 	bne.w	8006878 <_vfprintf_r+0x1868>
 8006a06:	f1c5 0501 	rsb	r5, r5, #1
 8006a0a:	9524      	str	r5, [sp, #144]	; 0x90
 8006a0c:	e735      	b.n	800687a <_vfprintf_r+0x186a>
 8006a0e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006a10:	3301      	adds	r3, #1
 8006a12:	444b      	add	r3, r9
 8006a14:	9309      	str	r3, [sp, #36]	; 0x24
 8006a16:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006a1a:	9304      	str	r3, [sp, #16]
 8006a1c:	2666      	movs	r6, #102	; 0x66
 8006a1e:	e60e      	b.n	800663e <_vfprintf_r+0x162e>
 8006a20:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8006a24:	f7ff bb7a 	b.w	800611c <_vfprintf_r+0x110c>
 8006a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a2a:	9907      	ldr	r1, [sp, #28]
 8006a2c:	9803      	ldr	r0, [sp, #12]
 8006a2e:	f002 fe1d 	bl	800966c <__sprint_r>
 8006a32:	2800      	cmp	r0, #0
 8006a34:	f47f a864 	bne.w	8005b00 <_vfprintf_r+0xaf0>
 8006a38:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006a3c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a40:	f7ff bbbd 	b.w	80061be <_vfprintf_r+0x11ae>
 8006a44:	9908      	ldr	r1, [sp, #32]
 8006a46:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8006a4a:	680b      	ldr	r3, [r1, #0]
 8006a4c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8006a50:	1d0b      	adds	r3, r1, #4
 8006a52:	4692      	mov	sl, r2
 8006a54:	9308      	str	r3, [sp, #32]
 8006a56:	f7fe bb59 	b.w	800510c <_vfprintf_r+0xfc>
 8006a5a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8006a5e:	f7ff bb60 	b.w	8006122 <_vfprintf_r+0x1112>
 8006a62:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006a66:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006a6a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006a6e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8006a72:	f7ff b84c 	b.w	8005b0e <_vfprintf_r+0xafe>
 8006a76:	bf00      	nop
 8006a78:	08009fbc 	.word	0x08009fbc
 8006a7c:	08009f8c 	.word	0x08009f8c
 8006a80:	cccccccd 	.word	0xcccccccd
 8006a84:	08009f74 	.word	0x08009f74
 8006a88:	08009f70 	.word	0x08009f70

08006a8c <__sbprintf>:
 8006a8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a90:	460c      	mov	r4, r1
 8006a92:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8006a96:	8989      	ldrh	r1, [r1, #12]
 8006a98:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006a9a:	89e5      	ldrh	r5, [r4, #14]
 8006a9c:	9619      	str	r6, [sp, #100]	; 0x64
 8006a9e:	f021 0102 	bic.w	r1, r1, #2
 8006aa2:	4606      	mov	r6, r0
 8006aa4:	69e0      	ldr	r0, [r4, #28]
 8006aa6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8006aaa:	4617      	mov	r7, r2
 8006aac:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8006ab0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8006ab2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8006ab6:	4698      	mov	r8, r3
 8006ab8:	ad1a      	add	r5, sp, #104	; 0x68
 8006aba:	2300      	movs	r3, #0
 8006abc:	9007      	str	r0, [sp, #28]
 8006abe:	a816      	add	r0, sp, #88	; 0x58
 8006ac0:	9209      	str	r2, [sp, #36]	; 0x24
 8006ac2:	9306      	str	r3, [sp, #24]
 8006ac4:	9500      	str	r5, [sp, #0]
 8006ac6:	9504      	str	r5, [sp, #16]
 8006ac8:	9102      	str	r1, [sp, #8]
 8006aca:	9105      	str	r1, [sp, #20]
 8006acc:	f001 fc8a 	bl	80083e4 <__retarget_lock_init_recursive>
 8006ad0:	4643      	mov	r3, r8
 8006ad2:	463a      	mov	r2, r7
 8006ad4:	4669      	mov	r1, sp
 8006ad6:	4630      	mov	r0, r6
 8006ad8:	f7fe fa9a 	bl	8005010 <_vfprintf_r>
 8006adc:	1e05      	subs	r5, r0, #0
 8006ade:	db07      	blt.n	8006af0 <__sbprintf+0x64>
 8006ae0:	4630      	mov	r0, r6
 8006ae2:	4669      	mov	r1, sp
 8006ae4:	f001 f8d6 	bl	8007c94 <_fflush_r>
 8006ae8:	2800      	cmp	r0, #0
 8006aea:	bf18      	it	ne
 8006aec:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8006af0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8006af4:	065b      	lsls	r3, r3, #25
 8006af6:	d503      	bpl.n	8006b00 <__sbprintf+0x74>
 8006af8:	89a3      	ldrh	r3, [r4, #12]
 8006afa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006afe:	81a3      	strh	r3, [r4, #12]
 8006b00:	9816      	ldr	r0, [sp, #88]	; 0x58
 8006b02:	f001 fc71 	bl	80083e8 <__retarget_lock_close_recursive>
 8006b06:	4628      	mov	r0, r5
 8006b08:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8006b0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006b10 <__swsetup_r>:
 8006b10:	b538      	push	{r3, r4, r5, lr}
 8006b12:	4b31      	ldr	r3, [pc, #196]	; (8006bd8 <__swsetup_r+0xc8>)
 8006b14:	681b      	ldr	r3, [r3, #0]
 8006b16:	4605      	mov	r5, r0
 8006b18:	460c      	mov	r4, r1
 8006b1a:	b113      	cbz	r3, 8006b22 <__swsetup_r+0x12>
 8006b1c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006b1e:	2a00      	cmp	r2, #0
 8006b20:	d03a      	beq.n	8006b98 <__swsetup_r+0x88>
 8006b22:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b26:	b293      	uxth	r3, r2
 8006b28:	0718      	lsls	r0, r3, #28
 8006b2a:	d50c      	bpl.n	8006b46 <__swsetup_r+0x36>
 8006b2c:	6920      	ldr	r0, [r4, #16]
 8006b2e:	b1a8      	cbz	r0, 8006b5c <__swsetup_r+0x4c>
 8006b30:	f013 0201 	ands.w	r2, r3, #1
 8006b34:	d020      	beq.n	8006b78 <__swsetup_r+0x68>
 8006b36:	6963      	ldr	r3, [r4, #20]
 8006b38:	2200      	movs	r2, #0
 8006b3a:	425b      	negs	r3, r3
 8006b3c:	61a3      	str	r3, [r4, #24]
 8006b3e:	60a2      	str	r2, [r4, #8]
 8006b40:	b300      	cbz	r0, 8006b84 <__swsetup_r+0x74>
 8006b42:	2000      	movs	r0, #0
 8006b44:	bd38      	pop	{r3, r4, r5, pc}
 8006b46:	06d9      	lsls	r1, r3, #27
 8006b48:	d53e      	bpl.n	8006bc8 <__swsetup_r+0xb8>
 8006b4a:	0758      	lsls	r0, r3, #29
 8006b4c:	d428      	bmi.n	8006ba0 <__swsetup_r+0x90>
 8006b4e:	6920      	ldr	r0, [r4, #16]
 8006b50:	f042 0308 	orr.w	r3, r2, #8
 8006b54:	81a3      	strh	r3, [r4, #12]
 8006b56:	b29b      	uxth	r3, r3
 8006b58:	2800      	cmp	r0, #0
 8006b5a:	d1e9      	bne.n	8006b30 <__swsetup_r+0x20>
 8006b5c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8006b60:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8006b64:	d0e4      	beq.n	8006b30 <__swsetup_r+0x20>
 8006b66:	4628      	mov	r0, r5
 8006b68:	4621      	mov	r1, r4
 8006b6a:	f001 fc71 	bl	8008450 <__smakebuf_r>
 8006b6e:	89a3      	ldrh	r3, [r4, #12]
 8006b70:	6920      	ldr	r0, [r4, #16]
 8006b72:	f013 0201 	ands.w	r2, r3, #1
 8006b76:	d1de      	bne.n	8006b36 <__swsetup_r+0x26>
 8006b78:	0799      	lsls	r1, r3, #30
 8006b7a:	bf58      	it	pl
 8006b7c:	6962      	ldrpl	r2, [r4, #20]
 8006b7e:	60a2      	str	r2, [r4, #8]
 8006b80:	2800      	cmp	r0, #0
 8006b82:	d1de      	bne.n	8006b42 <__swsetup_r+0x32>
 8006b84:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b88:	061a      	lsls	r2, r3, #24
 8006b8a:	d5db      	bpl.n	8006b44 <__swsetup_r+0x34>
 8006b8c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006b90:	81a3      	strh	r3, [r4, #12]
 8006b92:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b96:	bd38      	pop	{r3, r4, r5, pc}
 8006b98:	4618      	mov	r0, r3
 8006b9a:	f001 f8d7 	bl	8007d4c <__sinit>
 8006b9e:	e7c0      	b.n	8006b22 <__swsetup_r+0x12>
 8006ba0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006ba2:	b151      	cbz	r1, 8006bba <__swsetup_r+0xaa>
 8006ba4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006ba8:	4299      	cmp	r1, r3
 8006baa:	d004      	beq.n	8006bb6 <__swsetup_r+0xa6>
 8006bac:	4628      	mov	r0, r5
 8006bae:	f001 f96f 	bl	8007e90 <_free_r>
 8006bb2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006bb6:	2300      	movs	r3, #0
 8006bb8:	6323      	str	r3, [r4, #48]	; 0x30
 8006bba:	2300      	movs	r3, #0
 8006bbc:	6920      	ldr	r0, [r4, #16]
 8006bbe:	6063      	str	r3, [r4, #4]
 8006bc0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8006bc4:	6020      	str	r0, [r4, #0]
 8006bc6:	e7c3      	b.n	8006b50 <__swsetup_r+0x40>
 8006bc8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006bcc:	2309      	movs	r3, #9
 8006bce:	602b      	str	r3, [r5, #0]
 8006bd0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bd4:	81a2      	strh	r2, [r4, #12]
 8006bd6:	bd38      	pop	{r3, r4, r5, pc}
 8006bd8:	2000001c 	.word	0x2000001c

08006bdc <register_fini>:
 8006bdc:	4b02      	ldr	r3, [pc, #8]	; (8006be8 <register_fini+0xc>)
 8006bde:	b113      	cbz	r3, 8006be6 <register_fini+0xa>
 8006be0:	4802      	ldr	r0, [pc, #8]	; (8006bec <register_fini+0x10>)
 8006be2:	f000 b805 	b.w	8006bf0 <atexit>
 8006be6:	4770      	bx	lr
 8006be8:	00000000 	.word	0x00000000
 8006bec:	08007dbd 	.word	0x08007dbd

08006bf0 <atexit>:
 8006bf0:	2300      	movs	r3, #0
 8006bf2:	4601      	mov	r1, r0
 8006bf4:	461a      	mov	r2, r3
 8006bf6:	4618      	mov	r0, r3
 8006bf8:	f002 bd58 	b.w	80096ac <__register_exitproc>

08006bfc <quorem>:
 8006bfc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c00:	6903      	ldr	r3, [r0, #16]
 8006c02:	690f      	ldr	r7, [r1, #16]
 8006c04:	42bb      	cmp	r3, r7
 8006c06:	b083      	sub	sp, #12
 8006c08:	f2c0 8086 	blt.w	8006d18 <quorem+0x11c>
 8006c0c:	3f01      	subs	r7, #1
 8006c0e:	f101 0914 	add.w	r9, r1, #20
 8006c12:	f100 0a14 	add.w	sl, r0, #20
 8006c16:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8006c1a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8006c1e:	00bc      	lsls	r4, r7, #2
 8006c20:	3201      	adds	r2, #1
 8006c22:	fbb3 f8f2 	udiv	r8, r3, r2
 8006c26:	eb0a 0304 	add.w	r3, sl, r4
 8006c2a:	9400      	str	r4, [sp, #0]
 8006c2c:	eb09 0b04 	add.w	fp, r9, r4
 8006c30:	9301      	str	r3, [sp, #4]
 8006c32:	f1b8 0f00 	cmp.w	r8, #0
 8006c36:	d038      	beq.n	8006caa <quorem+0xae>
 8006c38:	2500      	movs	r5, #0
 8006c3a:	462e      	mov	r6, r5
 8006c3c:	46ce      	mov	lr, r9
 8006c3e:	46d4      	mov	ip, sl
 8006c40:	f85e 4b04 	ldr.w	r4, [lr], #4
 8006c44:	f8dc 3000 	ldr.w	r3, [ip]
 8006c48:	b2a2      	uxth	r2, r4
 8006c4a:	fb08 5502 	mla	r5, r8, r2, r5
 8006c4e:	0c22      	lsrs	r2, r4, #16
 8006c50:	0c2c      	lsrs	r4, r5, #16
 8006c52:	fb08 4202 	mla	r2, r8, r2, r4
 8006c56:	b2ad      	uxth	r5, r5
 8006c58:	1b75      	subs	r5, r6, r5
 8006c5a:	b296      	uxth	r6, r2
 8006c5c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8006c60:	fa15 f383 	uxtah	r3, r5, r3
 8006c64:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8006c68:	b29b      	uxth	r3, r3
 8006c6a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8006c6e:	45f3      	cmp	fp, lr
 8006c70:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8006c74:	f84c 3b04 	str.w	r3, [ip], #4
 8006c78:	ea4f 4626 	mov.w	r6, r6, asr #16
 8006c7c:	d2e0      	bcs.n	8006c40 <quorem+0x44>
 8006c7e:	9b00      	ldr	r3, [sp, #0]
 8006c80:	f85a 3003 	ldr.w	r3, [sl, r3]
 8006c84:	b98b      	cbnz	r3, 8006caa <quorem+0xae>
 8006c86:	9a01      	ldr	r2, [sp, #4]
 8006c88:	1f13      	subs	r3, r2, #4
 8006c8a:	459a      	cmp	sl, r3
 8006c8c:	d20c      	bcs.n	8006ca8 <quorem+0xac>
 8006c8e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8006c92:	b94b      	cbnz	r3, 8006ca8 <quorem+0xac>
 8006c94:	f1a2 0308 	sub.w	r3, r2, #8
 8006c98:	e002      	b.n	8006ca0 <quorem+0xa4>
 8006c9a:	681a      	ldr	r2, [r3, #0]
 8006c9c:	3b04      	subs	r3, #4
 8006c9e:	b91a      	cbnz	r2, 8006ca8 <quorem+0xac>
 8006ca0:	459a      	cmp	sl, r3
 8006ca2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006ca6:	d3f8      	bcc.n	8006c9a <quorem+0x9e>
 8006ca8:	6107      	str	r7, [r0, #16]
 8006caa:	4604      	mov	r4, r0
 8006cac:	f002 f944 	bl	8008f38 <__mcmp>
 8006cb0:	2800      	cmp	r0, #0
 8006cb2:	db2d      	blt.n	8006d10 <quorem+0x114>
 8006cb4:	f108 0801 	add.w	r8, r8, #1
 8006cb8:	4655      	mov	r5, sl
 8006cba:	2300      	movs	r3, #0
 8006cbc:	f859 1b04 	ldr.w	r1, [r9], #4
 8006cc0:	6828      	ldr	r0, [r5, #0]
 8006cc2:	b28a      	uxth	r2, r1
 8006cc4:	1a9a      	subs	r2, r3, r2
 8006cc6:	0c0b      	lsrs	r3, r1, #16
 8006cc8:	fa12 f280 	uxtah	r2, r2, r0
 8006ccc:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8006cd0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006cd4:	b292      	uxth	r2, r2
 8006cd6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006cda:	45cb      	cmp	fp, r9
 8006cdc:	f845 2b04 	str.w	r2, [r5], #4
 8006ce0:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006ce4:	d2ea      	bcs.n	8006cbc <quorem+0xc0>
 8006ce6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8006cea:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8006cee:	b97a      	cbnz	r2, 8006d10 <quorem+0x114>
 8006cf0:	1f1a      	subs	r2, r3, #4
 8006cf2:	4592      	cmp	sl, r2
 8006cf4:	d20b      	bcs.n	8006d0e <quorem+0x112>
 8006cf6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8006cfa:	b942      	cbnz	r2, 8006d0e <quorem+0x112>
 8006cfc:	3b08      	subs	r3, #8
 8006cfe:	e002      	b.n	8006d06 <quorem+0x10a>
 8006d00:	681a      	ldr	r2, [r3, #0]
 8006d02:	3b04      	subs	r3, #4
 8006d04:	b91a      	cbnz	r2, 8006d0e <quorem+0x112>
 8006d06:	459a      	cmp	sl, r3
 8006d08:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006d0c:	d3f8      	bcc.n	8006d00 <quorem+0x104>
 8006d0e:	6127      	str	r7, [r4, #16]
 8006d10:	4640      	mov	r0, r8
 8006d12:	b003      	add	sp, #12
 8006d14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d18:	2000      	movs	r0, #0
 8006d1a:	b003      	add	sp, #12
 8006d1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006d20 <_dtoa_r>:
 8006d20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d24:	ec55 4b10 	vmov	r4, r5, d0
 8006d28:	b09b      	sub	sp, #108	; 0x6c
 8006d2a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8006d2c:	9102      	str	r1, [sp, #8]
 8006d2e:	4681      	mov	r9, r0
 8006d30:	9207      	str	r2, [sp, #28]
 8006d32:	9305      	str	r3, [sp, #20]
 8006d34:	e9cd 4500 	strd	r4, r5, [sp]
 8006d38:	b156      	cbz	r6, 8006d50 <_dtoa_r+0x30>
 8006d3a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8006d3c:	6072      	str	r2, [r6, #4]
 8006d3e:	2301      	movs	r3, #1
 8006d40:	4093      	lsls	r3, r2
 8006d42:	60b3      	str	r3, [r6, #8]
 8006d44:	4631      	mov	r1, r6
 8006d46:	f001 ff07 	bl	8008b58 <_Bfree>
 8006d4a:	2300      	movs	r3, #0
 8006d4c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8006d50:	f1b5 0800 	subs.w	r8, r5, #0
 8006d54:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8006d56:	bfb4      	ite	lt
 8006d58:	2301      	movlt	r3, #1
 8006d5a:	2300      	movge	r3, #0
 8006d5c:	6013      	str	r3, [r2, #0]
 8006d5e:	4b76      	ldr	r3, [pc, #472]	; (8006f38 <_dtoa_r+0x218>)
 8006d60:	bfbc      	itt	lt
 8006d62:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8006d66:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8006d6a:	ea33 0308 	bics.w	r3, r3, r8
 8006d6e:	f000 80a6 	beq.w	8006ebe <_dtoa_r+0x19e>
 8006d72:	e9dd 6700 	ldrd	r6, r7, [sp]
 8006d76:	2200      	movs	r2, #0
 8006d78:	2300      	movs	r3, #0
 8006d7a:	4630      	mov	r0, r6
 8006d7c:	4639      	mov	r1, r7
 8006d7e:	f7f9 fe63 	bl	8000a48 <__aeabi_dcmpeq>
 8006d82:	4605      	mov	r5, r0
 8006d84:	b178      	cbz	r0, 8006da6 <_dtoa_r+0x86>
 8006d86:	9a05      	ldr	r2, [sp, #20]
 8006d88:	2301      	movs	r3, #1
 8006d8a:	6013      	str	r3, [r2, #0]
 8006d8c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006d8e:	2b00      	cmp	r3, #0
 8006d90:	f000 80c0 	beq.w	8006f14 <_dtoa_r+0x1f4>
 8006d94:	4b69      	ldr	r3, [pc, #420]	; (8006f3c <_dtoa_r+0x21c>)
 8006d96:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006d98:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8006d9c:	6013      	str	r3, [r2, #0]
 8006d9e:	4658      	mov	r0, fp
 8006da0:	b01b      	add	sp, #108	; 0x6c
 8006da2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006da6:	aa18      	add	r2, sp, #96	; 0x60
 8006da8:	a919      	add	r1, sp, #100	; 0x64
 8006daa:	ec47 6b10 	vmov	d0, r6, r7
 8006dae:	4648      	mov	r0, r9
 8006db0:	f002 f954 	bl	800905c <__d2b>
 8006db4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8006db8:	4682      	mov	sl, r0
 8006dba:	f040 80a0 	bne.w	8006efe <_dtoa_r+0x1de>
 8006dbe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8006dc2:	442c      	add	r4, r5
 8006dc4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8006dc8:	2b20      	cmp	r3, #32
 8006dca:	f340 842c 	ble.w	8007626 <_dtoa_r+0x906>
 8006dce:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8006dd2:	fa08 f803 	lsl.w	r8, r8, r3
 8006dd6:	9b00      	ldr	r3, [sp, #0]
 8006dd8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8006ddc:	fa23 f000 	lsr.w	r0, r3, r0
 8006de0:	ea48 0000 	orr.w	r0, r8, r0
 8006de4:	f7f9 fb4e 	bl	8000484 <__aeabi_ui2d>
 8006de8:	2301      	movs	r3, #1
 8006dea:	4606      	mov	r6, r0
 8006dec:	3c01      	subs	r4, #1
 8006dee:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8006df2:	930f      	str	r3, [sp, #60]	; 0x3c
 8006df4:	4630      	mov	r0, r6
 8006df6:	4639      	mov	r1, r7
 8006df8:	2200      	movs	r2, #0
 8006dfa:	4b51      	ldr	r3, [pc, #324]	; (8006f40 <_dtoa_r+0x220>)
 8006dfc:	f7f9 fa04 	bl	8000208 <__aeabi_dsub>
 8006e00:	a347      	add	r3, pc, #284	; (adr r3, 8006f20 <_dtoa_r+0x200>)
 8006e02:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006e06:	f7f9 fbb7 	bl	8000578 <__aeabi_dmul>
 8006e0a:	a347      	add	r3, pc, #284	; (adr r3, 8006f28 <_dtoa_r+0x208>)
 8006e0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006e10:	f7f9 f9fc 	bl	800020c <__adddf3>
 8006e14:	4606      	mov	r6, r0
 8006e16:	4620      	mov	r0, r4
 8006e18:	460f      	mov	r7, r1
 8006e1a:	f7f9 fb43 	bl	80004a4 <__aeabi_i2d>
 8006e1e:	a344      	add	r3, pc, #272	; (adr r3, 8006f30 <_dtoa_r+0x210>)
 8006e20:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006e24:	f7f9 fba8 	bl	8000578 <__aeabi_dmul>
 8006e28:	4602      	mov	r2, r0
 8006e2a:	460b      	mov	r3, r1
 8006e2c:	4630      	mov	r0, r6
 8006e2e:	4639      	mov	r1, r7
 8006e30:	f7f9 f9ec 	bl	800020c <__adddf3>
 8006e34:	4606      	mov	r6, r0
 8006e36:	460f      	mov	r7, r1
 8006e38:	f7f9 fe4e 	bl	8000ad8 <__aeabi_d2iz>
 8006e3c:	2200      	movs	r2, #0
 8006e3e:	9006      	str	r0, [sp, #24]
 8006e40:	2300      	movs	r3, #0
 8006e42:	4630      	mov	r0, r6
 8006e44:	4639      	mov	r1, r7
 8006e46:	f7f9 fe09 	bl	8000a5c <__aeabi_dcmplt>
 8006e4a:	2800      	cmp	r0, #0
 8006e4c:	f040 8273 	bne.w	8007336 <_dtoa_r+0x616>
 8006e50:	9e06      	ldr	r6, [sp, #24]
 8006e52:	2e16      	cmp	r6, #22
 8006e54:	f200 825d 	bhi.w	8007312 <_dtoa_r+0x5f2>
 8006e58:	4b3a      	ldr	r3, [pc, #232]	; (8006f44 <_dtoa_r+0x224>)
 8006e5a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8006e5e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8006e62:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006e66:	f7f9 fe17 	bl	8000a98 <__aeabi_dcmpgt>
 8006e6a:	2800      	cmp	r0, #0
 8006e6c:	f000 83d7 	beq.w	800761e <_dtoa_r+0x8fe>
 8006e70:	1e73      	subs	r3, r6, #1
 8006e72:	9306      	str	r3, [sp, #24]
 8006e74:	2300      	movs	r3, #0
 8006e76:	930d      	str	r3, [sp, #52]	; 0x34
 8006e78:	1b2c      	subs	r4, r5, r4
 8006e7a:	f1b4 0801 	subs.w	r8, r4, #1
 8006e7e:	f100 8254 	bmi.w	800732a <_dtoa_r+0x60a>
 8006e82:	2300      	movs	r3, #0
 8006e84:	9308      	str	r3, [sp, #32]
 8006e86:	9b06      	ldr	r3, [sp, #24]
 8006e88:	2b00      	cmp	r3, #0
 8006e8a:	f2c0 8245 	blt.w	8007318 <_dtoa_r+0x5f8>
 8006e8e:	4498      	add	r8, r3
 8006e90:	930c      	str	r3, [sp, #48]	; 0x30
 8006e92:	2300      	movs	r3, #0
 8006e94:	930b      	str	r3, [sp, #44]	; 0x2c
 8006e96:	9b02      	ldr	r3, [sp, #8]
 8006e98:	2b09      	cmp	r3, #9
 8006e9a:	d85b      	bhi.n	8006f54 <_dtoa_r+0x234>
 8006e9c:	2b05      	cmp	r3, #5
 8006e9e:	f340 83c0 	ble.w	8007622 <_dtoa_r+0x902>
 8006ea2:	3b04      	subs	r3, #4
 8006ea4:	9302      	str	r3, [sp, #8]
 8006ea6:	2500      	movs	r5, #0
 8006ea8:	9b02      	ldr	r3, [sp, #8]
 8006eaa:	3b02      	subs	r3, #2
 8006eac:	2b03      	cmp	r3, #3
 8006eae:	f200 8498 	bhi.w	80077e2 <_dtoa_r+0xac2>
 8006eb2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8006eb6:	03df      	.short	0x03df
 8006eb8:	03e803bf 	.word	0x03e803bf
 8006ebc:	04f5      	.short	0x04f5
 8006ebe:	9a05      	ldr	r2, [sp, #20]
 8006ec0:	f242 730f 	movw	r3, #9999	; 0x270f
 8006ec4:	6013      	str	r3, [r2, #0]
 8006ec6:	9b00      	ldr	r3, [sp, #0]
 8006ec8:	b983      	cbnz	r3, 8006eec <_dtoa_r+0x1cc>
 8006eca:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8006ece:	b96b      	cbnz	r3, 8006eec <_dtoa_r+0x1cc>
 8006ed0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006ed2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8006f48 <_dtoa_r+0x228>
 8006ed6:	2b00      	cmp	r3, #0
 8006ed8:	f43f af61 	beq.w	8006d9e <_dtoa_r+0x7e>
 8006edc:	f10b 0308 	add.w	r3, fp, #8
 8006ee0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006ee2:	4658      	mov	r0, fp
 8006ee4:	6013      	str	r3, [r2, #0]
 8006ee6:	b01b      	add	sp, #108	; 0x6c
 8006ee8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006eec:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006eee:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8006f4c <_dtoa_r+0x22c>
 8006ef2:	2b00      	cmp	r3, #0
 8006ef4:	f43f af53 	beq.w	8006d9e <_dtoa_r+0x7e>
 8006ef8:	f10b 0303 	add.w	r3, fp, #3
 8006efc:	e7f0      	b.n	8006ee0 <_dtoa_r+0x1c0>
 8006efe:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8006f02:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8006f06:	950f      	str	r5, [sp, #60]	; 0x3c
 8006f08:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8006f0c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006f10:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8006f12:	e76f      	b.n	8006df4 <_dtoa_r+0xd4>
 8006f14:	f8df b038 	ldr.w	fp, [pc, #56]	; 8006f50 <_dtoa_r+0x230>
 8006f18:	4658      	mov	r0, fp
 8006f1a:	b01b      	add	sp, #108	; 0x6c
 8006f1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f20:	636f4361 	.word	0x636f4361
 8006f24:	3fd287a7 	.word	0x3fd287a7
 8006f28:	8b60c8b3 	.word	0x8b60c8b3
 8006f2c:	3fc68a28 	.word	0x3fc68a28
 8006f30:	509f79fb 	.word	0x509f79fb
 8006f34:	3fd34413 	.word	0x3fd34413
 8006f38:	7ff00000 	.word	0x7ff00000
 8006f3c:	08009fa9 	.word	0x08009fa9
 8006f40:	3ff80000 	.word	0x3ff80000
 8006f44:	0800a008 	.word	0x0800a008
 8006f48:	08009fcc 	.word	0x08009fcc
 8006f4c:	08009fd8 	.word	0x08009fd8
 8006f50:	08009fa8 	.word	0x08009fa8
 8006f54:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8006f58:	2501      	movs	r5, #1
 8006f5a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8006f5e:	2300      	movs	r3, #0
 8006f60:	9302      	str	r3, [sp, #8]
 8006f62:	9307      	str	r3, [sp, #28]
 8006f64:	2100      	movs	r1, #0
 8006f66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006f6a:	940e      	str	r4, [sp, #56]	; 0x38
 8006f6c:	4648      	mov	r0, r9
 8006f6e:	f001 fdcd 	bl	8008b0c <_Balloc>
 8006f72:	2c0e      	cmp	r4, #14
 8006f74:	4683      	mov	fp, r0
 8006f76:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006f7a:	f200 80fb 	bhi.w	8007174 <_dtoa_r+0x454>
 8006f7e:	2d00      	cmp	r5, #0
 8006f80:	f000 80f8 	beq.w	8007174 <_dtoa_r+0x454>
 8006f84:	ed9d 7b00 	vldr	d7, [sp]
 8006f88:	9906      	ldr	r1, [sp, #24]
 8006f8a:	2900      	cmp	r1, #0
 8006f8c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8006f90:	f340 83e5 	ble.w	800775e <_dtoa_r+0xa3e>
 8006f94:	4b9d      	ldr	r3, [pc, #628]	; (800720c <_dtoa_r+0x4ec>)
 8006f96:	f001 020f 	and.w	r2, r1, #15
 8006f9a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006f9e:	ed93 7b00 	vldr	d7, [r3]
 8006fa2:	110c      	asrs	r4, r1, #4
 8006fa4:	06e2      	lsls	r2, r4, #27
 8006fa6:	ed8d 7b00 	vstr	d7, [sp]
 8006faa:	f140 849e 	bpl.w	80078ea <_dtoa_r+0xbca>
 8006fae:	4b98      	ldr	r3, [pc, #608]	; (8007210 <_dtoa_r+0x4f0>)
 8006fb0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006fb4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8006fb8:	f7f9 fc08 	bl	80007cc <__aeabi_ddiv>
 8006fbc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8006fc0:	f004 040f 	and.w	r4, r4, #15
 8006fc4:	2603      	movs	r6, #3
 8006fc6:	b17c      	cbz	r4, 8006fe8 <_dtoa_r+0x2c8>
 8006fc8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006fcc:	4d90      	ldr	r5, [pc, #576]	; (8007210 <_dtoa_r+0x4f0>)
 8006fce:	07e3      	lsls	r3, r4, #31
 8006fd0:	d504      	bpl.n	8006fdc <_dtoa_r+0x2bc>
 8006fd2:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006fd6:	f7f9 facf 	bl	8000578 <__aeabi_dmul>
 8006fda:	3601      	adds	r6, #1
 8006fdc:	1064      	asrs	r4, r4, #1
 8006fde:	f105 0508 	add.w	r5, r5, #8
 8006fe2:	d1f4      	bne.n	8006fce <_dtoa_r+0x2ae>
 8006fe4:	e9cd 0100 	strd	r0, r1, [sp]
 8006fe8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006fec:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006ff0:	f7f9 fbec 	bl	80007cc <__aeabi_ddiv>
 8006ff4:	e9cd 0100 	strd	r0, r1, [sp]
 8006ff8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8006ffa:	b143      	cbz	r3, 800700e <_dtoa_r+0x2ee>
 8006ffc:	2200      	movs	r2, #0
 8006ffe:	4b85      	ldr	r3, [pc, #532]	; (8007214 <_dtoa_r+0x4f4>)
 8007000:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007004:	f7f9 fd2a 	bl	8000a5c <__aeabi_dcmplt>
 8007008:	2800      	cmp	r0, #0
 800700a:	f040 84ff 	bne.w	8007a0c <_dtoa_r+0xcec>
 800700e:	4630      	mov	r0, r6
 8007010:	f7f9 fa48 	bl	80004a4 <__aeabi_i2d>
 8007014:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007018:	f7f9 faae 	bl	8000578 <__aeabi_dmul>
 800701c:	4b7e      	ldr	r3, [pc, #504]	; (8007218 <_dtoa_r+0x4f8>)
 800701e:	2200      	movs	r2, #0
 8007020:	f7f9 f8f4 	bl	800020c <__adddf3>
 8007024:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007026:	4606      	mov	r6, r0
 8007028:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800702c:	2b00      	cmp	r3, #0
 800702e:	f000 841c 	beq.w	800786a <_dtoa_r+0xb4a>
 8007032:	9b06      	ldr	r3, [sp, #24]
 8007034:	9316      	str	r3, [sp, #88]	; 0x58
 8007036:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007038:	9312      	str	r3, [sp, #72]	; 0x48
 800703a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800703e:	f7f9 fd4b 	bl	8000ad8 <__aeabi_d2iz>
 8007042:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8007044:	4b71      	ldr	r3, [pc, #452]	; (800720c <_dtoa_r+0x4ec>)
 8007046:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800704a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800704e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8007052:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8007056:	f7f9 fa25 	bl	80004a4 <__aeabi_i2d>
 800705a:	460b      	mov	r3, r1
 800705c:	4602      	mov	r2, r0
 800705e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007062:	e9cd 6700 	strd	r6, r7, [sp]
 8007066:	f7f9 f8cf 	bl	8000208 <__aeabi_dsub>
 800706a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800706c:	b2ed      	uxtb	r5, r5
 800706e:	4606      	mov	r6, r0
 8007070:	460f      	mov	r7, r1
 8007072:	f10b 0401 	add.w	r4, fp, #1
 8007076:	2b00      	cmp	r3, #0
 8007078:	f000 8458 	beq.w	800792c <_dtoa_r+0xc0c>
 800707c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007080:	2000      	movs	r0, #0
 8007082:	4966      	ldr	r1, [pc, #408]	; (800721c <_dtoa_r+0x4fc>)
 8007084:	f7f9 fba2 	bl	80007cc <__aeabi_ddiv>
 8007088:	e9dd 2300 	ldrd	r2, r3, [sp]
 800708c:	f7f9 f8bc 	bl	8000208 <__aeabi_dsub>
 8007090:	f88b 5000 	strb.w	r5, [fp]
 8007094:	4632      	mov	r2, r6
 8007096:	463b      	mov	r3, r7
 8007098:	e9cd 0100 	strd	r0, r1, [sp]
 800709c:	f7f9 fcfc 	bl	8000a98 <__aeabi_dcmpgt>
 80070a0:	2800      	cmp	r0, #0
 80070a2:	f040 8502 	bne.w	8007aaa <_dtoa_r+0xd8a>
 80070a6:	4632      	mov	r2, r6
 80070a8:	463b      	mov	r3, r7
 80070aa:	2000      	movs	r0, #0
 80070ac:	4959      	ldr	r1, [pc, #356]	; (8007214 <_dtoa_r+0x4f4>)
 80070ae:	f7f9 f8ab 	bl	8000208 <__aeabi_dsub>
 80070b2:	4602      	mov	r2, r0
 80070b4:	460b      	mov	r3, r1
 80070b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80070ba:	f7f9 fced 	bl	8000a98 <__aeabi_dcmpgt>
 80070be:	2800      	cmp	r0, #0
 80070c0:	f040 84fb 	bne.w	8007aba <_dtoa_r+0xd9a>
 80070c4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80070c6:	2a01      	cmp	r2, #1
 80070c8:	d050      	beq.n	800716c <_dtoa_r+0x44c>
 80070ca:	445a      	add	r2, fp
 80070cc:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80070d0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80070d4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80070d8:	4692      	mov	sl, r2
 80070da:	46cb      	mov	fp, r9
 80070dc:	e9dd 8900 	ldrd	r8, r9, [sp]
 80070e0:	e00c      	b.n	80070fc <_dtoa_r+0x3dc>
 80070e2:	2000      	movs	r0, #0
 80070e4:	494b      	ldr	r1, [pc, #300]	; (8007214 <_dtoa_r+0x4f4>)
 80070e6:	f7f9 f88f 	bl	8000208 <__aeabi_dsub>
 80070ea:	4642      	mov	r2, r8
 80070ec:	464b      	mov	r3, r9
 80070ee:	f7f9 fcb5 	bl	8000a5c <__aeabi_dcmplt>
 80070f2:	2800      	cmp	r0, #0
 80070f4:	f040 84dc 	bne.w	8007ab0 <_dtoa_r+0xd90>
 80070f8:	4554      	cmp	r4, sl
 80070fa:	d030      	beq.n	800715e <_dtoa_r+0x43e>
 80070fc:	4640      	mov	r0, r8
 80070fe:	4649      	mov	r1, r9
 8007100:	2200      	movs	r2, #0
 8007102:	4b47      	ldr	r3, [pc, #284]	; (8007220 <_dtoa_r+0x500>)
 8007104:	f7f9 fa38 	bl	8000578 <__aeabi_dmul>
 8007108:	2200      	movs	r2, #0
 800710a:	4b45      	ldr	r3, [pc, #276]	; (8007220 <_dtoa_r+0x500>)
 800710c:	4680      	mov	r8, r0
 800710e:	4689      	mov	r9, r1
 8007110:	4630      	mov	r0, r6
 8007112:	4639      	mov	r1, r7
 8007114:	f7f9 fa30 	bl	8000578 <__aeabi_dmul>
 8007118:	460f      	mov	r7, r1
 800711a:	4606      	mov	r6, r0
 800711c:	f7f9 fcdc 	bl	8000ad8 <__aeabi_d2iz>
 8007120:	4605      	mov	r5, r0
 8007122:	f7f9 f9bf 	bl	80004a4 <__aeabi_i2d>
 8007126:	4602      	mov	r2, r0
 8007128:	460b      	mov	r3, r1
 800712a:	4630      	mov	r0, r6
 800712c:	4639      	mov	r1, r7
 800712e:	f7f9 f86b 	bl	8000208 <__aeabi_dsub>
 8007132:	3530      	adds	r5, #48	; 0x30
 8007134:	b2ed      	uxtb	r5, r5
 8007136:	4642      	mov	r2, r8
 8007138:	464b      	mov	r3, r9
 800713a:	f804 5b01 	strb.w	r5, [r4], #1
 800713e:	4606      	mov	r6, r0
 8007140:	460f      	mov	r7, r1
 8007142:	f7f9 fc8b 	bl	8000a5c <__aeabi_dcmplt>
 8007146:	4632      	mov	r2, r6
 8007148:	463b      	mov	r3, r7
 800714a:	2800      	cmp	r0, #0
 800714c:	d0c9      	beq.n	80070e2 <_dtoa_r+0x3c2>
 800714e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007150:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007154:	9306      	str	r3, [sp, #24]
 8007156:	46d9      	mov	r9, fp
 8007158:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800715c:	e236      	b.n	80075cc <_dtoa_r+0x8ac>
 800715e:	46d9      	mov	r9, fp
 8007160:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8007164:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007168:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800716c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007170:	e9cd 3400 	strd	r3, r4, [sp]
 8007174:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007176:	2b00      	cmp	r3, #0
 8007178:	f2c0 80ae 	blt.w	80072d8 <_dtoa_r+0x5b8>
 800717c:	9a06      	ldr	r2, [sp, #24]
 800717e:	2a0e      	cmp	r2, #14
 8007180:	f300 80aa 	bgt.w	80072d8 <_dtoa_r+0x5b8>
 8007184:	4b21      	ldr	r3, [pc, #132]	; (800720c <_dtoa_r+0x4ec>)
 8007186:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800718a:	ed93 7b00 	vldr	d7, [r3]
 800718e:	9b07      	ldr	r3, [sp, #28]
 8007190:	2b00      	cmp	r3, #0
 8007192:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007196:	f2c0 82be 	blt.w	8007716 <_dtoa_r+0x9f6>
 800719a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800719e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80071a2:	4630      	mov	r0, r6
 80071a4:	4639      	mov	r1, r7
 80071a6:	f7f9 fb11 	bl	80007cc <__aeabi_ddiv>
 80071aa:	f7f9 fc95 	bl	8000ad8 <__aeabi_d2iz>
 80071ae:	4605      	mov	r5, r0
 80071b0:	f7f9 f978 	bl	80004a4 <__aeabi_i2d>
 80071b4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80071b8:	f7f9 f9de 	bl	8000578 <__aeabi_dmul>
 80071bc:	460b      	mov	r3, r1
 80071be:	4602      	mov	r2, r0
 80071c0:	4639      	mov	r1, r7
 80071c2:	4630      	mov	r0, r6
 80071c4:	f7f9 f820 	bl	8000208 <__aeabi_dsub>
 80071c8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80071cc:	f88b 3000 	strb.w	r3, [fp]
 80071d0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80071d2:	2b01      	cmp	r3, #1
 80071d4:	4606      	mov	r6, r0
 80071d6:	460f      	mov	r7, r1
 80071d8:	f10b 0401 	add.w	r4, fp, #1
 80071dc:	d053      	beq.n	8007286 <_dtoa_r+0x566>
 80071de:	2200      	movs	r2, #0
 80071e0:	4b0f      	ldr	r3, [pc, #60]	; (8007220 <_dtoa_r+0x500>)
 80071e2:	f7f9 f9c9 	bl	8000578 <__aeabi_dmul>
 80071e6:	2200      	movs	r2, #0
 80071e8:	2300      	movs	r3, #0
 80071ea:	4606      	mov	r6, r0
 80071ec:	460f      	mov	r7, r1
 80071ee:	f7f9 fc2b 	bl	8000a48 <__aeabi_dcmpeq>
 80071f2:	2800      	cmp	r0, #0
 80071f4:	f040 81ea 	bne.w	80075cc <_dtoa_r+0x8ac>
 80071f8:	f8cd a000 	str.w	sl, [sp]
 80071fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8007200:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007204:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007208:	e017      	b.n	800723a <_dtoa_r+0x51a>
 800720a:	bf00      	nop
 800720c:	0800a008 	.word	0x0800a008
 8007210:	08009fe0 	.word	0x08009fe0
 8007214:	3ff00000 	.word	0x3ff00000
 8007218:	401c0000 	.word	0x401c0000
 800721c:	3fe00000 	.word	0x3fe00000
 8007220:	40240000 	.word	0x40240000
 8007224:	f7f9 f9a8 	bl	8000578 <__aeabi_dmul>
 8007228:	2200      	movs	r2, #0
 800722a:	2300      	movs	r3, #0
 800722c:	4606      	mov	r6, r0
 800722e:	460f      	mov	r7, r1
 8007230:	f7f9 fc0a 	bl	8000a48 <__aeabi_dcmpeq>
 8007234:	2800      	cmp	r0, #0
 8007236:	f040 833d 	bne.w	80078b4 <_dtoa_r+0xb94>
 800723a:	464a      	mov	r2, r9
 800723c:	4653      	mov	r3, sl
 800723e:	4630      	mov	r0, r6
 8007240:	4639      	mov	r1, r7
 8007242:	f7f9 fac3 	bl	80007cc <__aeabi_ddiv>
 8007246:	f7f9 fc47 	bl	8000ad8 <__aeabi_d2iz>
 800724a:	4605      	mov	r5, r0
 800724c:	f7f9 f92a 	bl	80004a4 <__aeabi_i2d>
 8007250:	464a      	mov	r2, r9
 8007252:	4653      	mov	r3, sl
 8007254:	f7f9 f990 	bl	8000578 <__aeabi_dmul>
 8007258:	4602      	mov	r2, r0
 800725a:	460b      	mov	r3, r1
 800725c:	4630      	mov	r0, r6
 800725e:	4639      	mov	r1, r7
 8007260:	f7f8 ffd2 	bl	8000208 <__aeabi_dsub>
 8007264:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007268:	f804 cb01 	strb.w	ip, [r4], #1
 800726c:	eba4 0c0b 	sub.w	ip, r4, fp
 8007270:	45e0      	cmp	r8, ip
 8007272:	4606      	mov	r6, r0
 8007274:	460f      	mov	r7, r1
 8007276:	f04f 0200 	mov.w	r2, #0
 800727a:	4bc1      	ldr	r3, [pc, #772]	; (8007580 <_dtoa_r+0x860>)
 800727c:	d1d2      	bne.n	8007224 <_dtoa_r+0x504>
 800727e:	f8dd a000 	ldr.w	sl, [sp]
 8007282:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007286:	4632      	mov	r2, r6
 8007288:	463b      	mov	r3, r7
 800728a:	4630      	mov	r0, r6
 800728c:	4639      	mov	r1, r7
 800728e:	f7f8 ffbd 	bl	800020c <__adddf3>
 8007292:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007296:	4606      	mov	r6, r0
 8007298:	460f      	mov	r7, r1
 800729a:	f7f9 fbfd 	bl	8000a98 <__aeabi_dcmpgt>
 800729e:	b958      	cbnz	r0, 80072b8 <_dtoa_r+0x598>
 80072a0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80072a4:	4630      	mov	r0, r6
 80072a6:	4639      	mov	r1, r7
 80072a8:	f7f9 fbce 	bl	8000a48 <__aeabi_dcmpeq>
 80072ac:	2800      	cmp	r0, #0
 80072ae:	f000 818d 	beq.w	80075cc <_dtoa_r+0x8ac>
 80072b2:	07e9      	lsls	r1, r5, #31
 80072b4:	f140 818a 	bpl.w	80075cc <_dtoa_r+0x8ac>
 80072b8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80072bc:	e005      	b.n	80072ca <_dtoa_r+0x5aa>
 80072be:	459b      	cmp	fp, r3
 80072c0:	f000 8373 	beq.w	80079aa <_dtoa_r+0xc8a>
 80072c4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80072c8:	461c      	mov	r4, r3
 80072ca:	2d39      	cmp	r5, #57	; 0x39
 80072cc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80072d0:	d0f5      	beq.n	80072be <_dtoa_r+0x59e>
 80072d2:	3501      	adds	r5, #1
 80072d4:	701d      	strb	r5, [r3, #0]
 80072d6:	e179      	b.n	80075cc <_dtoa_r+0x8ac>
 80072d8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80072da:	2a00      	cmp	r2, #0
 80072dc:	d03b      	beq.n	8007356 <_dtoa_r+0x636>
 80072de:	9a02      	ldr	r2, [sp, #8]
 80072e0:	2a01      	cmp	r2, #1
 80072e2:	f340 820b 	ble.w	80076fc <_dtoa_r+0x9dc>
 80072e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80072e8:	1e5f      	subs	r7, r3, #1
 80072ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80072ec:	42bb      	cmp	r3, r7
 80072ee:	f2c0 82e6 	blt.w	80078be <_dtoa_r+0xb9e>
 80072f2:	1bdf      	subs	r7, r3, r7
 80072f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80072f6:	2b00      	cmp	r3, #0
 80072f8:	f2c0 830b 	blt.w	8007912 <_dtoa_r+0xbf2>
 80072fc:	9a08      	ldr	r2, [sp, #32]
 80072fe:	4614      	mov	r4, r2
 8007300:	441a      	add	r2, r3
 8007302:	4498      	add	r8, r3
 8007304:	9208      	str	r2, [sp, #32]
 8007306:	2101      	movs	r1, #1
 8007308:	4648      	mov	r0, r9
 800730a:	f001 fcbf 	bl	8008c8c <__i2b>
 800730e:	4605      	mov	r5, r0
 8007310:	e024      	b.n	800735c <_dtoa_r+0x63c>
 8007312:	2301      	movs	r3, #1
 8007314:	930d      	str	r3, [sp, #52]	; 0x34
 8007316:	e5af      	b.n	8006e78 <_dtoa_r+0x158>
 8007318:	9a08      	ldr	r2, [sp, #32]
 800731a:	9b06      	ldr	r3, [sp, #24]
 800731c:	1ad2      	subs	r2, r2, r3
 800731e:	425b      	negs	r3, r3
 8007320:	930b      	str	r3, [sp, #44]	; 0x2c
 8007322:	2300      	movs	r3, #0
 8007324:	9208      	str	r2, [sp, #32]
 8007326:	930c      	str	r3, [sp, #48]	; 0x30
 8007328:	e5b5      	b.n	8006e96 <_dtoa_r+0x176>
 800732a:	f1c4 0301 	rsb	r3, r4, #1
 800732e:	9308      	str	r3, [sp, #32]
 8007330:	f04f 0800 	mov.w	r8, #0
 8007334:	e5a7      	b.n	8006e86 <_dtoa_r+0x166>
 8007336:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800733a:	4640      	mov	r0, r8
 800733c:	f7f9 f8b2 	bl	80004a4 <__aeabi_i2d>
 8007340:	4632      	mov	r2, r6
 8007342:	463b      	mov	r3, r7
 8007344:	f7f9 fb80 	bl	8000a48 <__aeabi_dcmpeq>
 8007348:	2800      	cmp	r0, #0
 800734a:	f47f ad81 	bne.w	8006e50 <_dtoa_r+0x130>
 800734e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007352:	9306      	str	r3, [sp, #24]
 8007354:	e57c      	b.n	8006e50 <_dtoa_r+0x130>
 8007356:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007358:	9c08      	ldr	r4, [sp, #32]
 800735a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800735c:	2c00      	cmp	r4, #0
 800735e:	dd0c      	ble.n	800737a <_dtoa_r+0x65a>
 8007360:	f1b8 0f00 	cmp.w	r8, #0
 8007364:	dd09      	ble.n	800737a <_dtoa_r+0x65a>
 8007366:	4544      	cmp	r4, r8
 8007368:	9a08      	ldr	r2, [sp, #32]
 800736a:	4623      	mov	r3, r4
 800736c:	bfa8      	it	ge
 800736e:	4643      	movge	r3, r8
 8007370:	1ad2      	subs	r2, r2, r3
 8007372:	9208      	str	r2, [sp, #32]
 8007374:	1ae4      	subs	r4, r4, r3
 8007376:	eba8 0803 	sub.w	r8, r8, r3
 800737a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800737c:	b16b      	cbz	r3, 800739a <_dtoa_r+0x67a>
 800737e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007380:	2a00      	cmp	r2, #0
 8007382:	f000 8290 	beq.w	80078a6 <_dtoa_r+0xb86>
 8007386:	1bde      	subs	r6, r3, r7
 8007388:	2f00      	cmp	r7, #0
 800738a:	f040 819b 	bne.w	80076c4 <_dtoa_r+0x9a4>
 800738e:	4651      	mov	r1, sl
 8007390:	4632      	mov	r2, r6
 8007392:	4648      	mov	r0, r9
 8007394:	f001 fd2a 	bl	8008dec <__pow5mult>
 8007398:	4682      	mov	sl, r0
 800739a:	2101      	movs	r1, #1
 800739c:	4648      	mov	r0, r9
 800739e:	f001 fc75 	bl	8008c8c <__i2b>
 80073a2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80073a4:	4606      	mov	r6, r0
 80073a6:	2a00      	cmp	r2, #0
 80073a8:	f040 8125 	bne.w	80075f6 <_dtoa_r+0x8d6>
 80073ac:	9b02      	ldr	r3, [sp, #8]
 80073ae:	2b01      	cmp	r3, #1
 80073b0:	f340 816c 	ble.w	800768c <_dtoa_r+0x96c>
 80073b4:	2001      	movs	r0, #1
 80073b6:	4440      	add	r0, r8
 80073b8:	f010 001f 	ands.w	r0, r0, #31
 80073bc:	f000 8119 	beq.w	80075f2 <_dtoa_r+0x8d2>
 80073c0:	f1c0 0320 	rsb	r3, r0, #32
 80073c4:	2b04      	cmp	r3, #4
 80073c6:	f340 83ac 	ble.w	8007b22 <_dtoa_r+0xe02>
 80073ca:	f1c0 001c 	rsb	r0, r0, #28
 80073ce:	9b08      	ldr	r3, [sp, #32]
 80073d0:	4403      	add	r3, r0
 80073d2:	9308      	str	r3, [sp, #32]
 80073d4:	4404      	add	r4, r0
 80073d6:	4480      	add	r8, r0
 80073d8:	9b08      	ldr	r3, [sp, #32]
 80073da:	2b00      	cmp	r3, #0
 80073dc:	dd05      	ble.n	80073ea <_dtoa_r+0x6ca>
 80073de:	4651      	mov	r1, sl
 80073e0:	461a      	mov	r2, r3
 80073e2:	4648      	mov	r0, r9
 80073e4:	f001 fd52 	bl	8008e8c <__lshift>
 80073e8:	4682      	mov	sl, r0
 80073ea:	f1b8 0f00 	cmp.w	r8, #0
 80073ee:	dd05      	ble.n	80073fc <_dtoa_r+0x6dc>
 80073f0:	4631      	mov	r1, r6
 80073f2:	4642      	mov	r2, r8
 80073f4:	4648      	mov	r0, r9
 80073f6:	f001 fd49 	bl	8008e8c <__lshift>
 80073fa:	4606      	mov	r6, r0
 80073fc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80073fe:	2b00      	cmp	r3, #0
 8007400:	d177      	bne.n	80074f2 <_dtoa_r+0x7d2>
 8007402:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007404:	2b00      	cmp	r3, #0
 8007406:	f340 8209 	ble.w	800781c <_dtoa_r+0xafc>
 800740a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800740c:	2b00      	cmp	r3, #0
 800740e:	f000 8089 	beq.w	8007524 <_dtoa_r+0x804>
 8007412:	2c00      	cmp	r4, #0
 8007414:	f300 816b 	bgt.w	80076ee <_dtoa_r+0x9ce>
 8007418:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800741a:	2b00      	cmp	r3, #0
 800741c:	f040 81cd 	bne.w	80077ba <_dtoa_r+0xa9a>
 8007420:	46a8      	mov	r8, r5
 8007422:	9a00      	ldr	r2, [sp, #0]
 8007424:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007428:	f002 0201 	and.w	r2, r2, #1
 800742c:	920a      	str	r2, [sp, #40]	; 0x28
 800742e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007430:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8007434:	441a      	add	r2, r3
 8007436:	465f      	mov	r7, fp
 8007438:	9209      	str	r2, [sp, #36]	; 0x24
 800743a:	46b3      	mov	fp, r6
 800743c:	4659      	mov	r1, fp
 800743e:	4650      	mov	r0, sl
 8007440:	f7ff fbdc 	bl	8006bfc <quorem>
 8007444:	4629      	mov	r1, r5
 8007446:	4604      	mov	r4, r0
 8007448:	4650      	mov	r0, sl
 800744a:	f001 fd75 	bl	8008f38 <__mcmp>
 800744e:	4659      	mov	r1, fp
 8007450:	4606      	mov	r6, r0
 8007452:	4642      	mov	r2, r8
 8007454:	4648      	mov	r0, r9
 8007456:	f001 fd8b 	bl	8008f70 <__mdiff>
 800745a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800745e:	9300      	str	r3, [sp, #0]
 8007460:	68c3      	ldr	r3, [r0, #12]
 8007462:	4601      	mov	r1, r0
 8007464:	2b00      	cmp	r3, #0
 8007466:	f040 81d4 	bne.w	8007812 <_dtoa_r+0xaf2>
 800746a:	9008      	str	r0, [sp, #32]
 800746c:	4650      	mov	r0, sl
 800746e:	f001 fd63 	bl	8008f38 <__mcmp>
 8007472:	9a08      	ldr	r2, [sp, #32]
 8007474:	9007      	str	r0, [sp, #28]
 8007476:	4611      	mov	r1, r2
 8007478:	4648      	mov	r0, r9
 800747a:	f001 fb6d 	bl	8008b58 <_Bfree>
 800747e:	9b07      	ldr	r3, [sp, #28]
 8007480:	b933      	cbnz	r3, 8007490 <_dtoa_r+0x770>
 8007482:	9a02      	ldr	r2, [sp, #8]
 8007484:	b922      	cbnz	r2, 8007490 <_dtoa_r+0x770>
 8007486:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007488:	2b00      	cmp	r3, #0
 800748a:	f000 8319 	beq.w	8007ac0 <_dtoa_r+0xda0>
 800748e:	9b02      	ldr	r3, [sp, #8]
 8007490:	2e00      	cmp	r6, #0
 8007492:	f2c0 821c 	blt.w	80078ce <_dtoa_r+0xbae>
 8007496:	d105      	bne.n	80074a4 <_dtoa_r+0x784>
 8007498:	9a02      	ldr	r2, [sp, #8]
 800749a:	b91a      	cbnz	r2, 80074a4 <_dtoa_r+0x784>
 800749c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800749e:	2a00      	cmp	r2, #0
 80074a0:	f000 8215 	beq.w	80078ce <_dtoa_r+0xbae>
 80074a4:	2b00      	cmp	r3, #0
 80074a6:	f107 0401 	add.w	r4, r7, #1
 80074aa:	f300 8225 	bgt.w	80078f8 <_dtoa_r+0xbd8>
 80074ae:	9b00      	ldr	r3, [sp, #0]
 80074b0:	703b      	strb	r3, [r7, #0]
 80074b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80074b4:	42bb      	cmp	r3, r7
 80074b6:	f000 8230 	beq.w	800791a <_dtoa_r+0xbfa>
 80074ba:	4651      	mov	r1, sl
 80074bc:	2300      	movs	r3, #0
 80074be:	220a      	movs	r2, #10
 80074c0:	4648      	mov	r0, r9
 80074c2:	f001 fb53 	bl	8008b6c <__multadd>
 80074c6:	4545      	cmp	r5, r8
 80074c8:	4682      	mov	sl, r0
 80074ca:	4629      	mov	r1, r5
 80074cc:	f04f 0300 	mov.w	r3, #0
 80074d0:	f04f 020a 	mov.w	r2, #10
 80074d4:	4648      	mov	r0, r9
 80074d6:	f000 8196 	beq.w	8007806 <_dtoa_r+0xae6>
 80074da:	f001 fb47 	bl	8008b6c <__multadd>
 80074de:	4641      	mov	r1, r8
 80074e0:	4605      	mov	r5, r0
 80074e2:	2300      	movs	r3, #0
 80074e4:	220a      	movs	r2, #10
 80074e6:	4648      	mov	r0, r9
 80074e8:	f001 fb40 	bl	8008b6c <__multadd>
 80074ec:	4627      	mov	r7, r4
 80074ee:	4680      	mov	r8, r0
 80074f0:	e7a4      	b.n	800743c <_dtoa_r+0x71c>
 80074f2:	4631      	mov	r1, r6
 80074f4:	4650      	mov	r0, sl
 80074f6:	f001 fd1f 	bl	8008f38 <__mcmp>
 80074fa:	2800      	cmp	r0, #0
 80074fc:	da81      	bge.n	8007402 <_dtoa_r+0x6e2>
 80074fe:	9f06      	ldr	r7, [sp, #24]
 8007500:	4651      	mov	r1, sl
 8007502:	2300      	movs	r3, #0
 8007504:	220a      	movs	r2, #10
 8007506:	4648      	mov	r0, r9
 8007508:	3f01      	subs	r7, #1
 800750a:	9706      	str	r7, [sp, #24]
 800750c:	f001 fb2e 	bl	8008b6c <__multadd>
 8007510:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007512:	4682      	mov	sl, r0
 8007514:	2b00      	cmp	r3, #0
 8007516:	f040 82eb 	bne.w	8007af0 <_dtoa_r+0xdd0>
 800751a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800751c:	2b00      	cmp	r3, #0
 800751e:	f340 82f3 	ble.w	8007b08 <_dtoa_r+0xde8>
 8007522:	9309      	str	r3, [sp, #36]	; 0x24
 8007524:	465c      	mov	r4, fp
 8007526:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800752a:	e002      	b.n	8007532 <_dtoa_r+0x812>
 800752c:	f001 fb1e 	bl	8008b6c <__multadd>
 8007530:	4682      	mov	sl, r0
 8007532:	4631      	mov	r1, r6
 8007534:	4650      	mov	r0, sl
 8007536:	f7ff fb61 	bl	8006bfc <quorem>
 800753a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800753e:	f804 7b01 	strb.w	r7, [r4], #1
 8007542:	eba4 030b 	sub.w	r3, r4, fp
 8007546:	4598      	cmp	r8, r3
 8007548:	f04f 020a 	mov.w	r2, #10
 800754c:	f04f 0300 	mov.w	r3, #0
 8007550:	4651      	mov	r1, sl
 8007552:	4648      	mov	r0, r9
 8007554:	dcea      	bgt.n	800752c <_dtoa_r+0x80c>
 8007556:	2300      	movs	r3, #0
 8007558:	9700      	str	r7, [sp, #0]
 800755a:	9302      	str	r3, [sp, #8]
 800755c:	4651      	mov	r1, sl
 800755e:	2201      	movs	r2, #1
 8007560:	4648      	mov	r0, r9
 8007562:	f001 fc93 	bl	8008e8c <__lshift>
 8007566:	4631      	mov	r1, r6
 8007568:	4682      	mov	sl, r0
 800756a:	f001 fce5 	bl	8008f38 <__mcmp>
 800756e:	2800      	cmp	r0, #0
 8007570:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8007574:	dc14      	bgt.n	80075a0 <_dtoa_r+0x880>
 8007576:	d108      	bne.n	800758a <_dtoa_r+0x86a>
 8007578:	9b00      	ldr	r3, [sp, #0]
 800757a:	07db      	lsls	r3, r3, #31
 800757c:	d410      	bmi.n	80075a0 <_dtoa_r+0x880>
 800757e:	e004      	b.n	800758a <_dtoa_r+0x86a>
 8007580:	40240000 	.word	0x40240000
 8007584:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007588:	461c      	mov	r4, r3
 800758a:	2a30      	cmp	r2, #48	; 0x30
 800758c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007590:	d0f8      	beq.n	8007584 <_dtoa_r+0x864>
 8007592:	e00b      	b.n	80075ac <_dtoa_r+0x88c>
 8007594:	459b      	cmp	fp, r3
 8007596:	f000 814e 	beq.w	8007836 <_dtoa_r+0xb16>
 800759a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800759e:	461c      	mov	r4, r3
 80075a0:	2a39      	cmp	r2, #57	; 0x39
 80075a2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80075a6:	d0f5      	beq.n	8007594 <_dtoa_r+0x874>
 80075a8:	3201      	adds	r2, #1
 80075aa:	701a      	strb	r2, [r3, #0]
 80075ac:	4631      	mov	r1, r6
 80075ae:	4648      	mov	r0, r9
 80075b0:	f001 fad2 	bl	8008b58 <_Bfree>
 80075b4:	b155      	cbz	r5, 80075cc <_dtoa_r+0x8ac>
 80075b6:	9902      	ldr	r1, [sp, #8]
 80075b8:	b121      	cbz	r1, 80075c4 <_dtoa_r+0x8a4>
 80075ba:	42a9      	cmp	r1, r5
 80075bc:	d002      	beq.n	80075c4 <_dtoa_r+0x8a4>
 80075be:	4648      	mov	r0, r9
 80075c0:	f001 faca 	bl	8008b58 <_Bfree>
 80075c4:	4629      	mov	r1, r5
 80075c6:	4648      	mov	r0, r9
 80075c8:	f001 fac6 	bl	8008b58 <_Bfree>
 80075cc:	4651      	mov	r1, sl
 80075ce:	4648      	mov	r0, r9
 80075d0:	f001 fac2 	bl	8008b58 <_Bfree>
 80075d4:	2200      	movs	r2, #0
 80075d6:	9b06      	ldr	r3, [sp, #24]
 80075d8:	7022      	strb	r2, [r4, #0]
 80075da:	9a05      	ldr	r2, [sp, #20]
 80075dc:	3301      	adds	r3, #1
 80075de:	6013      	str	r3, [r2, #0]
 80075e0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80075e2:	2b00      	cmp	r3, #0
 80075e4:	f43f abdb 	beq.w	8006d9e <_dtoa_r+0x7e>
 80075e8:	4658      	mov	r0, fp
 80075ea:	601c      	str	r4, [r3, #0]
 80075ec:	b01b      	add	sp, #108	; 0x6c
 80075ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075f2:	201c      	movs	r0, #28
 80075f4:	e6eb      	b.n	80073ce <_dtoa_r+0x6ae>
 80075f6:	4601      	mov	r1, r0
 80075f8:	4648      	mov	r0, r9
 80075fa:	f001 fbf7 	bl	8008dec <__pow5mult>
 80075fe:	9b02      	ldr	r3, [sp, #8]
 8007600:	2b01      	cmp	r3, #1
 8007602:	4606      	mov	r6, r0
 8007604:	f340 80d4 	ble.w	80077b0 <_dtoa_r+0xa90>
 8007608:	2300      	movs	r3, #0
 800760a:	930c      	str	r3, [sp, #48]	; 0x30
 800760c:	6933      	ldr	r3, [r6, #16]
 800760e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8007612:	6918      	ldr	r0, [r3, #16]
 8007614:	f001 faea 	bl	8008bec <__hi0bits>
 8007618:	f1c0 0020 	rsb	r0, r0, #32
 800761c:	e6cb      	b.n	80073b6 <_dtoa_r+0x696>
 800761e:	900d      	str	r0, [sp, #52]	; 0x34
 8007620:	e42a      	b.n	8006e78 <_dtoa_r+0x158>
 8007622:	2501      	movs	r5, #1
 8007624:	e440      	b.n	8006ea8 <_dtoa_r+0x188>
 8007626:	f1c3 0820 	rsb	r8, r3, #32
 800762a:	9b00      	ldr	r3, [sp, #0]
 800762c:	fa03 f008 	lsl.w	r0, r3, r8
 8007630:	f7ff bbd8 	b.w	8006de4 <_dtoa_r+0xc4>
 8007634:	2300      	movs	r3, #0
 8007636:	930a      	str	r3, [sp, #40]	; 0x28
 8007638:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800763c:	4413      	add	r3, r2
 800763e:	930e      	str	r3, [sp, #56]	; 0x38
 8007640:	3301      	adds	r3, #1
 8007642:	2b01      	cmp	r3, #1
 8007644:	461e      	mov	r6, r3
 8007646:	9309      	str	r3, [sp, #36]	; 0x24
 8007648:	bfb8      	it	lt
 800764a:	2601      	movlt	r6, #1
 800764c:	2100      	movs	r1, #0
 800764e:	2e17      	cmp	r6, #23
 8007650:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007654:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8007656:	f77f ac89 	ble.w	8006f6c <_dtoa_r+0x24c>
 800765a:	2201      	movs	r2, #1
 800765c:	2304      	movs	r3, #4
 800765e:	005b      	lsls	r3, r3, #1
 8007660:	f103 0014 	add.w	r0, r3, #20
 8007664:	42b0      	cmp	r0, r6
 8007666:	4611      	mov	r1, r2
 8007668:	f102 0201 	add.w	r2, r2, #1
 800766c:	d9f7      	bls.n	800765e <_dtoa_r+0x93e>
 800766e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007672:	e47b      	b.n	8006f6c <_dtoa_r+0x24c>
 8007674:	2300      	movs	r3, #0
 8007676:	930a      	str	r3, [sp, #40]	; 0x28
 8007678:	9e07      	ldr	r6, [sp, #28]
 800767a:	2e00      	cmp	r6, #0
 800767c:	f340 80e2 	ble.w	8007844 <_dtoa_r+0xb24>
 8007680:	960e      	str	r6, [sp, #56]	; 0x38
 8007682:	9609      	str	r6, [sp, #36]	; 0x24
 8007684:	e7e2      	b.n	800764c <_dtoa_r+0x92c>
 8007686:	2301      	movs	r3, #1
 8007688:	930a      	str	r3, [sp, #40]	; 0x28
 800768a:	e7f5      	b.n	8007678 <_dtoa_r+0x958>
 800768c:	9b00      	ldr	r3, [sp, #0]
 800768e:	2b00      	cmp	r3, #0
 8007690:	f47f ae90 	bne.w	80073b4 <_dtoa_r+0x694>
 8007694:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007698:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800769c:	2b00      	cmp	r3, #0
 800769e:	f040 8192 	bne.w	80079c6 <_dtoa_r+0xca6>
 80076a2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80076a6:	0d1b      	lsrs	r3, r3, #20
 80076a8:	051b      	lsls	r3, r3, #20
 80076aa:	b12b      	cbz	r3, 80076b8 <_dtoa_r+0x998>
 80076ac:	9b08      	ldr	r3, [sp, #32]
 80076ae:	3301      	adds	r3, #1
 80076b0:	9308      	str	r3, [sp, #32]
 80076b2:	f108 0801 	add.w	r8, r8, #1
 80076b6:	2301      	movs	r3, #1
 80076b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80076ba:	930c      	str	r3, [sp, #48]	; 0x30
 80076bc:	2a00      	cmp	r2, #0
 80076be:	f43f ae79 	beq.w	80073b4 <_dtoa_r+0x694>
 80076c2:	e7a3      	b.n	800760c <_dtoa_r+0x8ec>
 80076c4:	463a      	mov	r2, r7
 80076c6:	4629      	mov	r1, r5
 80076c8:	4648      	mov	r0, r9
 80076ca:	f001 fb8f 	bl	8008dec <__pow5mult>
 80076ce:	4652      	mov	r2, sl
 80076d0:	4601      	mov	r1, r0
 80076d2:	4605      	mov	r5, r0
 80076d4:	4648      	mov	r0, r9
 80076d6:	f001 fae3 	bl	8008ca0 <__multiply>
 80076da:	4651      	mov	r1, sl
 80076dc:	4607      	mov	r7, r0
 80076de:	4648      	mov	r0, r9
 80076e0:	f001 fa3a 	bl	8008b58 <_Bfree>
 80076e4:	46ba      	mov	sl, r7
 80076e6:	2e00      	cmp	r6, #0
 80076e8:	f43f ae57 	beq.w	800739a <_dtoa_r+0x67a>
 80076ec:	e64f      	b.n	800738e <_dtoa_r+0x66e>
 80076ee:	4629      	mov	r1, r5
 80076f0:	4622      	mov	r2, r4
 80076f2:	4648      	mov	r0, r9
 80076f4:	f001 fbca 	bl	8008e8c <__lshift>
 80076f8:	4605      	mov	r5, r0
 80076fa:	e68d      	b.n	8007418 <_dtoa_r+0x6f8>
 80076fc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80076fe:	2a00      	cmp	r2, #0
 8007700:	f000 815d 	beq.w	80079be <_dtoa_r+0xc9e>
 8007704:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8007708:	9a08      	ldr	r2, [sp, #32]
 800770a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800770c:	4614      	mov	r4, r2
 800770e:	441a      	add	r2, r3
 8007710:	4498      	add	r8, r3
 8007712:	9208      	str	r2, [sp, #32]
 8007714:	e5f7      	b.n	8007306 <_dtoa_r+0x5e6>
 8007716:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007718:	2b00      	cmp	r3, #0
 800771a:	f73f ad3e 	bgt.w	800719a <_dtoa_r+0x47a>
 800771e:	f040 80bc 	bne.w	800789a <_dtoa_r+0xb7a>
 8007722:	ec51 0b17 	vmov	r0, r1, d7
 8007726:	2200      	movs	r2, #0
 8007728:	4bb2      	ldr	r3, [pc, #712]	; (80079f4 <_dtoa_r+0xcd4>)
 800772a:	f7f8 ff25 	bl	8000578 <__aeabi_dmul>
 800772e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007732:	f7f9 f9a7 	bl	8000a84 <__aeabi_dcmpge>
 8007736:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8007738:	4635      	mov	r5, r6
 800773a:	2800      	cmp	r0, #0
 800773c:	d176      	bne.n	800782c <_dtoa_r+0xb0c>
 800773e:	9a06      	ldr	r2, [sp, #24]
 8007740:	2331      	movs	r3, #49	; 0x31
 8007742:	3201      	adds	r2, #1
 8007744:	9206      	str	r2, [sp, #24]
 8007746:	f88b 3000 	strb.w	r3, [fp]
 800774a:	f10b 0401 	add.w	r4, fp, #1
 800774e:	4631      	mov	r1, r6
 8007750:	4648      	mov	r0, r9
 8007752:	f001 fa01 	bl	8008b58 <_Bfree>
 8007756:	2d00      	cmp	r5, #0
 8007758:	f47f af34 	bne.w	80075c4 <_dtoa_r+0x8a4>
 800775c:	e736      	b.n	80075cc <_dtoa_r+0x8ac>
 800775e:	f000 8142 	beq.w	80079e6 <_dtoa_r+0xcc6>
 8007762:	9b06      	ldr	r3, [sp, #24]
 8007764:	425c      	negs	r4, r3
 8007766:	4ba4      	ldr	r3, [pc, #656]	; (80079f8 <_dtoa_r+0xcd8>)
 8007768:	f004 020f 	and.w	r2, r4, #15
 800776c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007770:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007774:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007778:	f7f8 fefe 	bl	8000578 <__aeabi_dmul>
 800777c:	1124      	asrs	r4, r4, #4
 800777e:	e9cd 0100 	strd	r0, r1, [sp]
 8007782:	f000 81c6 	beq.w	8007b12 <_dtoa_r+0xdf2>
 8007786:	4d9d      	ldr	r5, [pc, #628]	; (80079fc <_dtoa_r+0xcdc>)
 8007788:	2300      	movs	r3, #0
 800778a:	2602      	movs	r6, #2
 800778c:	07e7      	lsls	r7, r4, #31
 800778e:	d505      	bpl.n	800779c <_dtoa_r+0xa7c>
 8007790:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007794:	f7f8 fef0 	bl	8000578 <__aeabi_dmul>
 8007798:	3601      	adds	r6, #1
 800779a:	2301      	movs	r3, #1
 800779c:	1064      	asrs	r4, r4, #1
 800779e:	f105 0508 	add.w	r5, r5, #8
 80077a2:	d1f3      	bne.n	800778c <_dtoa_r+0xa6c>
 80077a4:	2b00      	cmp	r3, #0
 80077a6:	f43f ac27 	beq.w	8006ff8 <_dtoa_r+0x2d8>
 80077aa:	e9cd 0100 	strd	r0, r1, [sp]
 80077ae:	e423      	b.n	8006ff8 <_dtoa_r+0x2d8>
 80077b0:	9b00      	ldr	r3, [sp, #0]
 80077b2:	2b00      	cmp	r3, #0
 80077b4:	f43f af6e 	beq.w	8007694 <_dtoa_r+0x974>
 80077b8:	e726      	b.n	8007608 <_dtoa_r+0x8e8>
 80077ba:	6869      	ldr	r1, [r5, #4]
 80077bc:	4648      	mov	r0, r9
 80077be:	f001 f9a5 	bl	8008b0c <_Balloc>
 80077c2:	692b      	ldr	r3, [r5, #16]
 80077c4:	3302      	adds	r3, #2
 80077c6:	009a      	lsls	r2, r3, #2
 80077c8:	4604      	mov	r4, r0
 80077ca:	f105 010c 	add.w	r1, r5, #12
 80077ce:	300c      	adds	r0, #12
 80077d0:	f7f9 fb2a 	bl	8000e28 <memcpy>
 80077d4:	4621      	mov	r1, r4
 80077d6:	2201      	movs	r2, #1
 80077d8:	4648      	mov	r0, r9
 80077da:	f001 fb57 	bl	8008e8c <__lshift>
 80077de:	4680      	mov	r8, r0
 80077e0:	e61f      	b.n	8007422 <_dtoa_r+0x702>
 80077e2:	2400      	movs	r4, #0
 80077e4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80077e8:	4621      	mov	r1, r4
 80077ea:	4648      	mov	r0, r9
 80077ec:	f001 f98e 	bl	8008b0c <_Balloc>
 80077f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80077f4:	930e      	str	r3, [sp, #56]	; 0x38
 80077f6:	9309      	str	r3, [sp, #36]	; 0x24
 80077f8:	2301      	movs	r3, #1
 80077fa:	4683      	mov	fp, r0
 80077fc:	9407      	str	r4, [sp, #28]
 80077fe:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007802:	930a      	str	r3, [sp, #40]	; 0x28
 8007804:	e4b6      	b.n	8007174 <_dtoa_r+0x454>
 8007806:	f001 f9b1 	bl	8008b6c <__multadd>
 800780a:	4627      	mov	r7, r4
 800780c:	4605      	mov	r5, r0
 800780e:	4680      	mov	r8, r0
 8007810:	e614      	b.n	800743c <_dtoa_r+0x71c>
 8007812:	4648      	mov	r0, r9
 8007814:	f001 f9a0 	bl	8008b58 <_Bfree>
 8007818:	2301      	movs	r3, #1
 800781a:	e639      	b.n	8007490 <_dtoa_r+0x770>
 800781c:	9b02      	ldr	r3, [sp, #8]
 800781e:	2b02      	cmp	r3, #2
 8007820:	f77f adf3 	ble.w	800740a <_dtoa_r+0x6ea>
 8007824:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007826:	2b00      	cmp	r3, #0
 8007828:	f000 80cf 	beq.w	80079ca <_dtoa_r+0xcaa>
 800782c:	9b07      	ldr	r3, [sp, #28]
 800782e:	43db      	mvns	r3, r3
 8007830:	9306      	str	r3, [sp, #24]
 8007832:	465c      	mov	r4, fp
 8007834:	e78b      	b.n	800774e <_dtoa_r+0xa2e>
 8007836:	9a06      	ldr	r2, [sp, #24]
 8007838:	2331      	movs	r3, #49	; 0x31
 800783a:	3201      	adds	r2, #1
 800783c:	9206      	str	r2, [sp, #24]
 800783e:	f88b 3000 	strb.w	r3, [fp]
 8007842:	e6b3      	b.n	80075ac <_dtoa_r+0x88c>
 8007844:	2401      	movs	r4, #1
 8007846:	9409      	str	r4, [sp, #36]	; 0x24
 8007848:	9407      	str	r4, [sp, #28]
 800784a:	f7ff bb8b 	b.w	8006f64 <_dtoa_r+0x244>
 800784e:	4630      	mov	r0, r6
 8007850:	f7f8 fe28 	bl	80004a4 <__aeabi_i2d>
 8007854:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007858:	f7f8 fe8e 	bl	8000578 <__aeabi_dmul>
 800785c:	2200      	movs	r2, #0
 800785e:	4b68      	ldr	r3, [pc, #416]	; (8007a00 <_dtoa_r+0xce0>)
 8007860:	f7f8 fcd4 	bl	800020c <__adddf3>
 8007864:	4606      	mov	r6, r0
 8007866:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800786a:	2200      	movs	r2, #0
 800786c:	4b61      	ldr	r3, [pc, #388]	; (80079f4 <_dtoa_r+0xcd4>)
 800786e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007872:	f7f8 fcc9 	bl	8000208 <__aeabi_dsub>
 8007876:	4632      	mov	r2, r6
 8007878:	463b      	mov	r3, r7
 800787a:	4604      	mov	r4, r0
 800787c:	460d      	mov	r5, r1
 800787e:	f7f9 f90b 	bl	8000a98 <__aeabi_dcmpgt>
 8007882:	2800      	cmp	r0, #0
 8007884:	d14f      	bne.n	8007926 <_dtoa_r+0xc06>
 8007886:	4632      	mov	r2, r6
 8007888:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800788c:	4620      	mov	r0, r4
 800788e:	4629      	mov	r1, r5
 8007890:	f7f9 f8e4 	bl	8000a5c <__aeabi_dcmplt>
 8007894:	2800      	cmp	r0, #0
 8007896:	f43f ac69 	beq.w	800716c <_dtoa_r+0x44c>
 800789a:	2600      	movs	r6, #0
 800789c:	4635      	mov	r5, r6
 800789e:	e7c5      	b.n	800782c <_dtoa_r+0xb0c>
 80078a0:	2301      	movs	r3, #1
 80078a2:	930a      	str	r3, [sp, #40]	; 0x28
 80078a4:	e6c8      	b.n	8007638 <_dtoa_r+0x918>
 80078a6:	4651      	mov	r1, sl
 80078a8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80078aa:	4648      	mov	r0, r9
 80078ac:	f001 fa9e 	bl	8008dec <__pow5mult>
 80078b0:	4682      	mov	sl, r0
 80078b2:	e572      	b.n	800739a <_dtoa_r+0x67a>
 80078b4:	f8dd a000 	ldr.w	sl, [sp]
 80078b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80078bc:	e686      	b.n	80075cc <_dtoa_r+0x8ac>
 80078be:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80078c0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80078c2:	1afb      	subs	r3, r7, r3
 80078c4:	441a      	add	r2, r3
 80078c6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80078ca:	2700      	movs	r7, #0
 80078cc:	e512      	b.n	80072f4 <_dtoa_r+0x5d4>
 80078ce:	2b00      	cmp	r3, #0
 80078d0:	9402      	str	r4, [sp, #8]
 80078d2:	465e      	mov	r6, fp
 80078d4:	f107 0401 	add.w	r4, r7, #1
 80078d8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80078dc:	f300 80ba 	bgt.w	8007a54 <_dtoa_r+0xd34>
 80078e0:	9b00      	ldr	r3, [sp, #0]
 80078e2:	9502      	str	r5, [sp, #8]
 80078e4:	703b      	strb	r3, [r7, #0]
 80078e6:	4645      	mov	r5, r8
 80078e8:	e660      	b.n	80075ac <_dtoa_r+0x88c>
 80078ea:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80078ee:	2602      	movs	r6, #2
 80078f0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80078f4:	f7ff bb67 	b.w	8006fc6 <_dtoa_r+0x2a6>
 80078f8:	9b00      	ldr	r3, [sp, #0]
 80078fa:	2b39      	cmp	r3, #57	; 0x39
 80078fc:	465e      	mov	r6, fp
 80078fe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007902:	f000 80b9 	beq.w	8007a78 <_dtoa_r+0xd58>
 8007906:	9b00      	ldr	r3, [sp, #0]
 8007908:	9502      	str	r5, [sp, #8]
 800790a:	3301      	adds	r3, #1
 800790c:	703b      	strb	r3, [r7, #0]
 800790e:	4645      	mov	r5, r8
 8007910:	e64c      	b.n	80075ac <_dtoa_r+0x88c>
 8007912:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8007916:	1a9c      	subs	r4, r3, r2
 8007918:	e4f5      	b.n	8007306 <_dtoa_r+0x5e6>
 800791a:	465e      	mov	r6, fp
 800791c:	9502      	str	r5, [sp, #8]
 800791e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007922:	4645      	mov	r5, r8
 8007924:	e61a      	b.n	800755c <_dtoa_r+0x83c>
 8007926:	2600      	movs	r6, #0
 8007928:	4635      	mov	r5, r6
 800792a:	e708      	b.n	800773e <_dtoa_r+0xa1e>
 800792c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007930:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007934:	f7f8 fe20 	bl	8000578 <__aeabi_dmul>
 8007938:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800793a:	f88b 5000 	strb.w	r5, [fp]
 800793e:	2b01      	cmp	r3, #1
 8007940:	e9cd 0100 	strd	r0, r1, [sp]
 8007944:	d020      	beq.n	8007988 <_dtoa_r+0xc68>
 8007946:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007948:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800794c:	445b      	add	r3, fp
 800794e:	4698      	mov	r8, r3
 8007950:	2200      	movs	r2, #0
 8007952:	4b2c      	ldr	r3, [pc, #176]	; (8007a04 <_dtoa_r+0xce4>)
 8007954:	4630      	mov	r0, r6
 8007956:	4639      	mov	r1, r7
 8007958:	f7f8 fe0e 	bl	8000578 <__aeabi_dmul>
 800795c:	460f      	mov	r7, r1
 800795e:	4606      	mov	r6, r0
 8007960:	f7f9 f8ba 	bl	8000ad8 <__aeabi_d2iz>
 8007964:	4605      	mov	r5, r0
 8007966:	f7f8 fd9d 	bl	80004a4 <__aeabi_i2d>
 800796a:	3530      	adds	r5, #48	; 0x30
 800796c:	4602      	mov	r2, r0
 800796e:	460b      	mov	r3, r1
 8007970:	4630      	mov	r0, r6
 8007972:	4639      	mov	r1, r7
 8007974:	f7f8 fc48 	bl	8000208 <__aeabi_dsub>
 8007978:	f804 5b01 	strb.w	r5, [r4], #1
 800797c:	4544      	cmp	r4, r8
 800797e:	4606      	mov	r6, r0
 8007980:	460f      	mov	r7, r1
 8007982:	d1e5      	bne.n	8007950 <_dtoa_r+0xc30>
 8007984:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8007988:	4b1f      	ldr	r3, [pc, #124]	; (8007a08 <_dtoa_r+0xce8>)
 800798a:	2200      	movs	r2, #0
 800798c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007990:	f7f8 fc3c 	bl	800020c <__adddf3>
 8007994:	4632      	mov	r2, r6
 8007996:	463b      	mov	r3, r7
 8007998:	f7f9 f860 	bl	8000a5c <__aeabi_dcmplt>
 800799c:	2800      	cmp	r0, #0
 800799e:	d070      	beq.n	8007a82 <_dtoa_r+0xd62>
 80079a0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80079a2:	9306      	str	r3, [sp, #24]
 80079a4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80079a8:	e48f      	b.n	80072ca <_dtoa_r+0x5aa>
 80079aa:	2330      	movs	r3, #48	; 0x30
 80079ac:	f88b 3000 	strb.w	r3, [fp]
 80079b0:	9b06      	ldr	r3, [sp, #24]
 80079b2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80079b6:	3301      	adds	r3, #1
 80079b8:	9306      	str	r3, [sp, #24]
 80079ba:	465b      	mov	r3, fp
 80079bc:	e489      	b.n	80072d2 <_dtoa_r+0x5b2>
 80079be:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80079c0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80079c4:	e6a0      	b.n	8007708 <_dtoa_r+0x9e8>
 80079c6:	2300      	movs	r3, #0
 80079c8:	e676      	b.n	80076b8 <_dtoa_r+0x998>
 80079ca:	4631      	mov	r1, r6
 80079cc:	2205      	movs	r2, #5
 80079ce:	4648      	mov	r0, r9
 80079d0:	f001 f8cc 	bl	8008b6c <__multadd>
 80079d4:	4601      	mov	r1, r0
 80079d6:	4606      	mov	r6, r0
 80079d8:	4650      	mov	r0, sl
 80079da:	f001 faad 	bl	8008f38 <__mcmp>
 80079de:	2800      	cmp	r0, #0
 80079e0:	f73f aead 	bgt.w	800773e <_dtoa_r+0xa1e>
 80079e4:	e722      	b.n	800782c <_dtoa_r+0xb0c>
 80079e6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80079ea:	2602      	movs	r6, #2
 80079ec:	ed8d 7b00 	vstr	d7, [sp]
 80079f0:	f7ff bb02 	b.w	8006ff8 <_dtoa_r+0x2d8>
 80079f4:	40140000 	.word	0x40140000
 80079f8:	0800a008 	.word	0x0800a008
 80079fc:	08009fe0 	.word	0x08009fe0
 8007a00:	401c0000 	.word	0x401c0000
 8007a04:	40240000 	.word	0x40240000
 8007a08:	3fe00000 	.word	0x3fe00000
 8007a0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007a0e:	2b00      	cmp	r3, #0
 8007a10:	f43f af1d 	beq.w	800784e <_dtoa_r+0xb2e>
 8007a14:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8007a16:	2c00      	cmp	r4, #0
 8007a18:	f77f aba8 	ble.w	800716c <_dtoa_r+0x44c>
 8007a1c:	2200      	movs	r2, #0
 8007a1e:	4b45      	ldr	r3, [pc, #276]	; (8007b34 <_dtoa_r+0xe14>)
 8007a20:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007a24:	f7f8 fda8 	bl	8000578 <__aeabi_dmul>
 8007a28:	e9cd 0100 	strd	r0, r1, [sp]
 8007a2c:	1c70      	adds	r0, r6, #1
 8007a2e:	f7f8 fd39 	bl	80004a4 <__aeabi_i2d>
 8007a32:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007a36:	f7f8 fd9f 	bl	8000578 <__aeabi_dmul>
 8007a3a:	4b3f      	ldr	r3, [pc, #252]	; (8007b38 <_dtoa_r+0xe18>)
 8007a3c:	2200      	movs	r2, #0
 8007a3e:	f7f8 fbe5 	bl	800020c <__adddf3>
 8007a42:	9b06      	ldr	r3, [sp, #24]
 8007a44:	9412      	str	r4, [sp, #72]	; 0x48
 8007a46:	3b01      	subs	r3, #1
 8007a48:	4606      	mov	r6, r0
 8007a4a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007a4e:	9316      	str	r3, [sp, #88]	; 0x58
 8007a50:	f7ff baf3 	b.w	800703a <_dtoa_r+0x31a>
 8007a54:	4651      	mov	r1, sl
 8007a56:	2201      	movs	r2, #1
 8007a58:	4648      	mov	r0, r9
 8007a5a:	f001 fa17 	bl	8008e8c <__lshift>
 8007a5e:	4631      	mov	r1, r6
 8007a60:	4682      	mov	sl, r0
 8007a62:	f001 fa69 	bl	8008f38 <__mcmp>
 8007a66:	2800      	cmp	r0, #0
 8007a68:	dd3b      	ble.n	8007ae2 <_dtoa_r+0xdc2>
 8007a6a:	9b00      	ldr	r3, [sp, #0]
 8007a6c:	2b39      	cmp	r3, #57	; 0x39
 8007a6e:	d003      	beq.n	8007a78 <_dtoa_r+0xd58>
 8007a70:	9b02      	ldr	r3, [sp, #8]
 8007a72:	3331      	adds	r3, #49	; 0x31
 8007a74:	9300      	str	r3, [sp, #0]
 8007a76:	e733      	b.n	80078e0 <_dtoa_r+0xbc0>
 8007a78:	2239      	movs	r2, #57	; 0x39
 8007a7a:	9502      	str	r5, [sp, #8]
 8007a7c:	703a      	strb	r2, [r7, #0]
 8007a7e:	4645      	mov	r5, r8
 8007a80:	e58e      	b.n	80075a0 <_dtoa_r+0x880>
 8007a82:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007a86:	2000      	movs	r0, #0
 8007a88:	492c      	ldr	r1, [pc, #176]	; (8007b3c <_dtoa_r+0xe1c>)
 8007a8a:	f7f8 fbbd 	bl	8000208 <__aeabi_dsub>
 8007a8e:	4632      	mov	r2, r6
 8007a90:	463b      	mov	r3, r7
 8007a92:	f7f9 f801 	bl	8000a98 <__aeabi_dcmpgt>
 8007a96:	b910      	cbnz	r0, 8007a9e <_dtoa_r+0xd7e>
 8007a98:	f7ff bb68 	b.w	800716c <_dtoa_r+0x44c>
 8007a9c:	4614      	mov	r4, r2
 8007a9e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8007aa2:	2b30      	cmp	r3, #48	; 0x30
 8007aa4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007aa8:	d0f8      	beq.n	8007a9c <_dtoa_r+0xd7c>
 8007aaa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007aac:	9306      	str	r3, [sp, #24]
 8007aae:	e58d      	b.n	80075cc <_dtoa_r+0x8ac>
 8007ab0:	46d9      	mov	r9, fp
 8007ab2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007ab6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007aba:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007abc:	9306      	str	r3, [sp, #24]
 8007abe:	e404      	b.n	80072ca <_dtoa_r+0x5aa>
 8007ac0:	9b00      	ldr	r3, [sp, #0]
 8007ac2:	2b39      	cmp	r3, #57	; 0x39
 8007ac4:	4621      	mov	r1, r4
 8007ac6:	4632      	mov	r2, r6
 8007ac8:	f107 0401 	add.w	r4, r7, #1
 8007acc:	465e      	mov	r6, fp
 8007ace:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007ad2:	d0d1      	beq.n	8007a78 <_dtoa_r+0xd58>
 8007ad4:	2a00      	cmp	r2, #0
 8007ad6:	f77f af03 	ble.w	80078e0 <_dtoa_r+0xbc0>
 8007ada:	460b      	mov	r3, r1
 8007adc:	3331      	adds	r3, #49	; 0x31
 8007ade:	9300      	str	r3, [sp, #0]
 8007ae0:	e6fe      	b.n	80078e0 <_dtoa_r+0xbc0>
 8007ae2:	f47f aefd 	bne.w	80078e0 <_dtoa_r+0xbc0>
 8007ae6:	9b00      	ldr	r3, [sp, #0]
 8007ae8:	07da      	lsls	r2, r3, #31
 8007aea:	f57f aef9 	bpl.w	80078e0 <_dtoa_r+0xbc0>
 8007aee:	e7bc      	b.n	8007a6a <_dtoa_r+0xd4a>
 8007af0:	4629      	mov	r1, r5
 8007af2:	2300      	movs	r3, #0
 8007af4:	220a      	movs	r2, #10
 8007af6:	4648      	mov	r0, r9
 8007af8:	f001 f838 	bl	8008b6c <__multadd>
 8007afc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007afe:	2b00      	cmp	r3, #0
 8007b00:	4605      	mov	r5, r0
 8007b02:	dd09      	ble.n	8007b18 <_dtoa_r+0xdf8>
 8007b04:	9309      	str	r3, [sp, #36]	; 0x24
 8007b06:	e484      	b.n	8007412 <_dtoa_r+0x6f2>
 8007b08:	9b02      	ldr	r3, [sp, #8]
 8007b0a:	2b02      	cmp	r3, #2
 8007b0c:	dc0e      	bgt.n	8007b2c <_dtoa_r+0xe0c>
 8007b0e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007b10:	e507      	b.n	8007522 <_dtoa_r+0x802>
 8007b12:	2602      	movs	r6, #2
 8007b14:	f7ff ba70 	b.w	8006ff8 <_dtoa_r+0x2d8>
 8007b18:	9b02      	ldr	r3, [sp, #8]
 8007b1a:	2b02      	cmp	r3, #2
 8007b1c:	dc06      	bgt.n	8007b2c <_dtoa_r+0xe0c>
 8007b1e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007b20:	e7f0      	b.n	8007b04 <_dtoa_r+0xde4>
 8007b22:	f43f ac59 	beq.w	80073d8 <_dtoa_r+0x6b8>
 8007b26:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8007b2a:	e450      	b.n	80073ce <_dtoa_r+0x6ae>
 8007b2c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007b2e:	9309      	str	r3, [sp, #36]	; 0x24
 8007b30:	e678      	b.n	8007824 <_dtoa_r+0xb04>
 8007b32:	bf00      	nop
 8007b34:	40240000 	.word	0x40240000
 8007b38:	401c0000 	.word	0x401c0000
 8007b3c:	3fe00000 	.word	0x3fe00000

08007b40 <__sflush_r>:
 8007b40:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007b44:	b29a      	uxth	r2, r3
 8007b46:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007b4a:	460c      	mov	r4, r1
 8007b4c:	0711      	lsls	r1, r2, #28
 8007b4e:	4680      	mov	r8, r0
 8007b50:	d444      	bmi.n	8007bdc <__sflush_r+0x9c>
 8007b52:	6862      	ldr	r2, [r4, #4]
 8007b54:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007b58:	2a00      	cmp	r2, #0
 8007b5a:	81a3      	strh	r3, [r4, #12]
 8007b5c:	dd59      	ble.n	8007c12 <__sflush_r+0xd2>
 8007b5e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007b60:	2d00      	cmp	r5, #0
 8007b62:	d053      	beq.n	8007c0c <__sflush_r+0xcc>
 8007b64:	2200      	movs	r2, #0
 8007b66:	b29b      	uxth	r3, r3
 8007b68:	f8d8 6000 	ldr.w	r6, [r8]
 8007b6c:	69e1      	ldr	r1, [r4, #28]
 8007b6e:	f8c8 2000 	str.w	r2, [r8]
 8007b72:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8007b76:	f040 8083 	bne.w	8007c80 <__sflush_r+0x140>
 8007b7a:	2301      	movs	r3, #1
 8007b7c:	4640      	mov	r0, r8
 8007b7e:	47a8      	blx	r5
 8007b80:	1c42      	adds	r2, r0, #1
 8007b82:	d04a      	beq.n	8007c1a <__sflush_r+0xda>
 8007b84:	89a3      	ldrh	r3, [r4, #12]
 8007b86:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007b88:	69e1      	ldr	r1, [r4, #28]
 8007b8a:	075b      	lsls	r3, r3, #29
 8007b8c:	d505      	bpl.n	8007b9a <__sflush_r+0x5a>
 8007b8e:	6862      	ldr	r2, [r4, #4]
 8007b90:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8007b92:	1a80      	subs	r0, r0, r2
 8007b94:	b10b      	cbz	r3, 8007b9a <__sflush_r+0x5a>
 8007b96:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007b98:	1ac0      	subs	r0, r0, r3
 8007b9a:	4602      	mov	r2, r0
 8007b9c:	2300      	movs	r3, #0
 8007b9e:	4640      	mov	r0, r8
 8007ba0:	47a8      	blx	r5
 8007ba2:	1c47      	adds	r7, r0, #1
 8007ba4:	d045      	beq.n	8007c32 <__sflush_r+0xf2>
 8007ba6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007baa:	6922      	ldr	r2, [r4, #16]
 8007bac:	6022      	str	r2, [r4, #0]
 8007bae:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007bb2:	2200      	movs	r2, #0
 8007bb4:	81a3      	strh	r3, [r4, #12]
 8007bb6:	04db      	lsls	r3, r3, #19
 8007bb8:	6062      	str	r2, [r4, #4]
 8007bba:	d500      	bpl.n	8007bbe <__sflush_r+0x7e>
 8007bbc:	6520      	str	r0, [r4, #80]	; 0x50
 8007bbe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007bc0:	f8c8 6000 	str.w	r6, [r8]
 8007bc4:	b311      	cbz	r1, 8007c0c <__sflush_r+0xcc>
 8007bc6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007bca:	4299      	cmp	r1, r3
 8007bcc:	d002      	beq.n	8007bd4 <__sflush_r+0x94>
 8007bce:	4640      	mov	r0, r8
 8007bd0:	f000 f95e 	bl	8007e90 <_free_r>
 8007bd4:	2000      	movs	r0, #0
 8007bd6:	6320      	str	r0, [r4, #48]	; 0x30
 8007bd8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007bdc:	6926      	ldr	r6, [r4, #16]
 8007bde:	b1ae      	cbz	r6, 8007c0c <__sflush_r+0xcc>
 8007be0:	6825      	ldr	r5, [r4, #0]
 8007be2:	6026      	str	r6, [r4, #0]
 8007be4:	0792      	lsls	r2, r2, #30
 8007be6:	bf0c      	ite	eq
 8007be8:	6963      	ldreq	r3, [r4, #20]
 8007bea:	2300      	movne	r3, #0
 8007bec:	1bad      	subs	r5, r5, r6
 8007bee:	60a3      	str	r3, [r4, #8]
 8007bf0:	e00a      	b.n	8007c08 <__sflush_r+0xc8>
 8007bf2:	462b      	mov	r3, r5
 8007bf4:	4632      	mov	r2, r6
 8007bf6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007bf8:	69e1      	ldr	r1, [r4, #28]
 8007bfa:	4640      	mov	r0, r8
 8007bfc:	47b8      	blx	r7
 8007bfe:	2800      	cmp	r0, #0
 8007c00:	eba5 0500 	sub.w	r5, r5, r0
 8007c04:	4406      	add	r6, r0
 8007c06:	dd2b      	ble.n	8007c60 <__sflush_r+0x120>
 8007c08:	2d00      	cmp	r5, #0
 8007c0a:	dcf2      	bgt.n	8007bf2 <__sflush_r+0xb2>
 8007c0c:	2000      	movs	r0, #0
 8007c0e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007c12:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8007c14:	2a00      	cmp	r2, #0
 8007c16:	dca2      	bgt.n	8007b5e <__sflush_r+0x1e>
 8007c18:	e7f8      	b.n	8007c0c <__sflush_r+0xcc>
 8007c1a:	f8d8 3000 	ldr.w	r3, [r8]
 8007c1e:	2b00      	cmp	r3, #0
 8007c20:	d0b0      	beq.n	8007b84 <__sflush_r+0x44>
 8007c22:	2b1d      	cmp	r3, #29
 8007c24:	d001      	beq.n	8007c2a <__sflush_r+0xea>
 8007c26:	2b16      	cmp	r3, #22
 8007c28:	d12c      	bne.n	8007c84 <__sflush_r+0x144>
 8007c2a:	f8c8 6000 	str.w	r6, [r8]
 8007c2e:	2000      	movs	r0, #0
 8007c30:	e7ed      	b.n	8007c0e <__sflush_r+0xce>
 8007c32:	f8d8 1000 	ldr.w	r1, [r8]
 8007c36:	291d      	cmp	r1, #29
 8007c38:	d81a      	bhi.n	8007c70 <__sflush_r+0x130>
 8007c3a:	4b15      	ldr	r3, [pc, #84]	; (8007c90 <__sflush_r+0x150>)
 8007c3c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007c40:	40cb      	lsrs	r3, r1
 8007c42:	43db      	mvns	r3, r3
 8007c44:	f013 0301 	ands.w	r3, r3, #1
 8007c48:	d114      	bne.n	8007c74 <__sflush_r+0x134>
 8007c4a:	6925      	ldr	r5, [r4, #16]
 8007c4c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8007c50:	e9c4 5300 	strd	r5, r3, [r4]
 8007c54:	04d5      	lsls	r5, r2, #19
 8007c56:	81a2      	strh	r2, [r4, #12]
 8007c58:	d5b1      	bpl.n	8007bbe <__sflush_r+0x7e>
 8007c5a:	2900      	cmp	r1, #0
 8007c5c:	d1af      	bne.n	8007bbe <__sflush_r+0x7e>
 8007c5e:	e7ad      	b.n	8007bbc <__sflush_r+0x7c>
 8007c60:	89a3      	ldrh	r3, [r4, #12]
 8007c62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007c66:	81a3      	strh	r3, [r4, #12]
 8007c68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007c6c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007c70:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007c74:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007c78:	81a2      	strh	r2, [r4, #12]
 8007c7a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007c7e:	e7c6      	b.n	8007c0e <__sflush_r+0xce>
 8007c80:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8007c82:	e782      	b.n	8007b8a <__sflush_r+0x4a>
 8007c84:	89a3      	ldrh	r3, [r4, #12]
 8007c86:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007c8a:	81a3      	strh	r3, [r4, #12]
 8007c8c:	e7bf      	b.n	8007c0e <__sflush_r+0xce>
 8007c8e:	bf00      	nop
 8007c90:	20400001 	.word	0x20400001

08007c94 <_fflush_r>:
 8007c94:	b538      	push	{r3, r4, r5, lr}
 8007c96:	460d      	mov	r5, r1
 8007c98:	4604      	mov	r4, r0
 8007c9a:	b108      	cbz	r0, 8007ca0 <_fflush_r+0xc>
 8007c9c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007c9e:	b1a3      	cbz	r3, 8007cca <_fflush_r+0x36>
 8007ca0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007ca4:	b1b8      	cbz	r0, 8007cd6 <_fflush_r+0x42>
 8007ca6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007ca8:	07db      	lsls	r3, r3, #31
 8007caa:	d401      	bmi.n	8007cb0 <_fflush_r+0x1c>
 8007cac:	0581      	lsls	r1, r0, #22
 8007cae:	d51a      	bpl.n	8007ce6 <_fflush_r+0x52>
 8007cb0:	4620      	mov	r0, r4
 8007cb2:	4629      	mov	r1, r5
 8007cb4:	f7ff ff44 	bl	8007b40 <__sflush_r>
 8007cb8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007cba:	07da      	lsls	r2, r3, #31
 8007cbc:	4604      	mov	r4, r0
 8007cbe:	d402      	bmi.n	8007cc6 <_fflush_r+0x32>
 8007cc0:	89ab      	ldrh	r3, [r5, #12]
 8007cc2:	059b      	lsls	r3, r3, #22
 8007cc4:	d50a      	bpl.n	8007cdc <_fflush_r+0x48>
 8007cc6:	4620      	mov	r0, r4
 8007cc8:	bd38      	pop	{r3, r4, r5, pc}
 8007cca:	f000 f83f 	bl	8007d4c <__sinit>
 8007cce:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007cd2:	2800      	cmp	r0, #0
 8007cd4:	d1e7      	bne.n	8007ca6 <_fflush_r+0x12>
 8007cd6:	4604      	mov	r4, r0
 8007cd8:	4620      	mov	r0, r4
 8007cda:	bd38      	pop	{r3, r4, r5, pc}
 8007cdc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007cde:	f000 fb87 	bl	80083f0 <__retarget_lock_release_recursive>
 8007ce2:	4620      	mov	r0, r4
 8007ce4:	bd38      	pop	{r3, r4, r5, pc}
 8007ce6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8007ce8:	f000 fb80 	bl	80083ec <__retarget_lock_acquire_recursive>
 8007cec:	e7e0      	b.n	8007cb0 <_fflush_r+0x1c>
 8007cee:	bf00      	nop

08007cf0 <std>:
 8007cf0:	b510      	push	{r4, lr}
 8007cf2:	2300      	movs	r3, #0
 8007cf4:	4604      	mov	r4, r0
 8007cf6:	8181      	strh	r1, [r0, #12]
 8007cf8:	81c2      	strh	r2, [r0, #14]
 8007cfa:	e9c0 3300 	strd	r3, r3, [r0]
 8007cfe:	6083      	str	r3, [r0, #8]
 8007d00:	6643      	str	r3, [r0, #100]	; 0x64
 8007d02:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8007d06:	6183      	str	r3, [r0, #24]
 8007d08:	4619      	mov	r1, r3
 8007d0a:	2208      	movs	r2, #8
 8007d0c:	305c      	adds	r0, #92	; 0x5c
 8007d0e:	f7fd f8c9 	bl	8004ea4 <memset>
 8007d12:	4807      	ldr	r0, [pc, #28]	; (8007d30 <std+0x40>)
 8007d14:	4907      	ldr	r1, [pc, #28]	; (8007d34 <std+0x44>)
 8007d16:	4a08      	ldr	r2, [pc, #32]	; (8007d38 <std+0x48>)
 8007d18:	4b08      	ldr	r3, [pc, #32]	; (8007d3c <std+0x4c>)
 8007d1a:	62e3      	str	r3, [r4, #44]	; 0x2c
 8007d1c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8007d20:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8007d24:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8007d28:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007d2c:	f000 bb5a 	b.w	80083e4 <__retarget_lock_init_recursive>
 8007d30:	08009509 	.word	0x08009509
 8007d34:	0800952d 	.word	0x0800952d
 8007d38:	08009569 	.word	0x08009569
 8007d3c:	08009589 	.word	0x08009589

08007d40 <_cleanup_r>:
 8007d40:	4901      	ldr	r1, [pc, #4]	; (8007d48 <_cleanup_r+0x8>)
 8007d42:	f000 bb17 	b.w	8008374 <_fwalk_reent>
 8007d46:	bf00      	nop
 8007d48:	080097f9 	.word	0x080097f9

08007d4c <__sinit>:
 8007d4c:	b510      	push	{r4, lr}
 8007d4e:	4604      	mov	r4, r0
 8007d50:	4812      	ldr	r0, [pc, #72]	; (8007d9c <__sinit+0x50>)
 8007d52:	f000 fb4b 	bl	80083ec <__retarget_lock_acquire_recursive>
 8007d56:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8007d58:	b9d2      	cbnz	r2, 8007d90 <__sinit+0x44>
 8007d5a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8007d5e:	4810      	ldr	r0, [pc, #64]	; (8007da0 <__sinit+0x54>)
 8007d60:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8007d64:	2103      	movs	r1, #3
 8007d66:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8007d6a:	63e0      	str	r0, [r4, #60]	; 0x3c
 8007d6c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8007d70:	6860      	ldr	r0, [r4, #4]
 8007d72:	2104      	movs	r1, #4
 8007d74:	f7ff ffbc 	bl	8007cf0 <std>
 8007d78:	2201      	movs	r2, #1
 8007d7a:	2109      	movs	r1, #9
 8007d7c:	68a0      	ldr	r0, [r4, #8]
 8007d7e:	f7ff ffb7 	bl	8007cf0 <std>
 8007d82:	2202      	movs	r2, #2
 8007d84:	2112      	movs	r1, #18
 8007d86:	68e0      	ldr	r0, [r4, #12]
 8007d88:	f7ff ffb2 	bl	8007cf0 <std>
 8007d8c:	2301      	movs	r3, #1
 8007d8e:	63a3      	str	r3, [r4, #56]	; 0x38
 8007d90:	4802      	ldr	r0, [pc, #8]	; (8007d9c <__sinit+0x50>)
 8007d92:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007d96:	f000 bb2b 	b.w	80083f0 <__retarget_lock_release_recursive>
 8007d9a:	bf00      	nop
 8007d9c:	20000b48 	.word	0x20000b48
 8007da0:	08007d41 	.word	0x08007d41

08007da4 <__sfp_lock_acquire>:
 8007da4:	4801      	ldr	r0, [pc, #4]	; (8007dac <__sfp_lock_acquire+0x8>)
 8007da6:	f000 bb21 	b.w	80083ec <__retarget_lock_acquire_recursive>
 8007daa:	bf00      	nop
 8007dac:	20000b5c 	.word	0x20000b5c

08007db0 <__sfp_lock_release>:
 8007db0:	4801      	ldr	r0, [pc, #4]	; (8007db8 <__sfp_lock_release+0x8>)
 8007db2:	f000 bb1d 	b.w	80083f0 <__retarget_lock_release_recursive>
 8007db6:	bf00      	nop
 8007db8:	20000b5c 	.word	0x20000b5c

08007dbc <__libc_fini_array>:
 8007dbc:	b538      	push	{r3, r4, r5, lr}
 8007dbe:	4c0a      	ldr	r4, [pc, #40]	; (8007de8 <__libc_fini_array+0x2c>)
 8007dc0:	4d0a      	ldr	r5, [pc, #40]	; (8007dec <__libc_fini_array+0x30>)
 8007dc2:	1b64      	subs	r4, r4, r5
 8007dc4:	10a4      	asrs	r4, r4, #2
 8007dc6:	d00a      	beq.n	8007dde <__libc_fini_array+0x22>
 8007dc8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8007dcc:	3b01      	subs	r3, #1
 8007dce:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8007dd2:	3c01      	subs	r4, #1
 8007dd4:	f855 3904 	ldr.w	r3, [r5], #-4
 8007dd8:	4798      	blx	r3
 8007dda:	2c00      	cmp	r4, #0
 8007ddc:	d1f9      	bne.n	8007dd2 <__libc_fini_array+0x16>
 8007dde:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8007de2:	f001 befd 	b.w	8009be0 <_fini>
 8007de6:	bf00      	nop
 8007de8:	0800a204 	.word	0x0800a204
 8007dec:	0800a200 	.word	0x0800a200

08007df0 <_malloc_trim_r>:
 8007df0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007df2:	4f24      	ldr	r7, [pc, #144]	; (8007e84 <_malloc_trim_r+0x94>)
 8007df4:	460c      	mov	r4, r1
 8007df6:	4606      	mov	r6, r0
 8007df8:	f000 fe7c 	bl	8008af4 <__malloc_lock>
 8007dfc:	68bb      	ldr	r3, [r7, #8]
 8007dfe:	685d      	ldr	r5, [r3, #4]
 8007e00:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8007e04:	310f      	adds	r1, #15
 8007e06:	f025 0503 	bic.w	r5, r5, #3
 8007e0a:	4429      	add	r1, r5
 8007e0c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8007e10:	f021 010f 	bic.w	r1, r1, #15
 8007e14:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8007e18:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8007e1c:	db07      	blt.n	8007e2e <_malloc_trim_r+0x3e>
 8007e1e:	2100      	movs	r1, #0
 8007e20:	4630      	mov	r0, r6
 8007e22:	f001 fb5f 	bl	80094e4 <_sbrk_r>
 8007e26:	68bb      	ldr	r3, [r7, #8]
 8007e28:	442b      	add	r3, r5
 8007e2a:	4298      	cmp	r0, r3
 8007e2c:	d004      	beq.n	8007e38 <_malloc_trim_r+0x48>
 8007e2e:	4630      	mov	r0, r6
 8007e30:	f000 fe66 	bl	8008b00 <__malloc_unlock>
 8007e34:	2000      	movs	r0, #0
 8007e36:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007e38:	4261      	negs	r1, r4
 8007e3a:	4630      	mov	r0, r6
 8007e3c:	f001 fb52 	bl	80094e4 <_sbrk_r>
 8007e40:	3001      	adds	r0, #1
 8007e42:	d00d      	beq.n	8007e60 <_malloc_trim_r+0x70>
 8007e44:	4b10      	ldr	r3, [pc, #64]	; (8007e88 <_malloc_trim_r+0x98>)
 8007e46:	68ba      	ldr	r2, [r7, #8]
 8007e48:	6819      	ldr	r1, [r3, #0]
 8007e4a:	1b2d      	subs	r5, r5, r4
 8007e4c:	f045 0501 	orr.w	r5, r5, #1
 8007e50:	4630      	mov	r0, r6
 8007e52:	1b09      	subs	r1, r1, r4
 8007e54:	6055      	str	r5, [r2, #4]
 8007e56:	6019      	str	r1, [r3, #0]
 8007e58:	f000 fe52 	bl	8008b00 <__malloc_unlock>
 8007e5c:	2001      	movs	r0, #1
 8007e5e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007e60:	2100      	movs	r1, #0
 8007e62:	4630      	mov	r0, r6
 8007e64:	f001 fb3e 	bl	80094e4 <_sbrk_r>
 8007e68:	68ba      	ldr	r2, [r7, #8]
 8007e6a:	1a83      	subs	r3, r0, r2
 8007e6c:	2b0f      	cmp	r3, #15
 8007e6e:	ddde      	ble.n	8007e2e <_malloc_trim_r+0x3e>
 8007e70:	4c06      	ldr	r4, [pc, #24]	; (8007e8c <_malloc_trim_r+0x9c>)
 8007e72:	4905      	ldr	r1, [pc, #20]	; (8007e88 <_malloc_trim_r+0x98>)
 8007e74:	6824      	ldr	r4, [r4, #0]
 8007e76:	f043 0301 	orr.w	r3, r3, #1
 8007e7a:	1b00      	subs	r0, r0, r4
 8007e7c:	6053      	str	r3, [r2, #4]
 8007e7e:	6008      	str	r0, [r1, #0]
 8007e80:	e7d5      	b.n	8007e2e <_malloc_trim_r+0x3e>
 8007e82:	bf00      	nop
 8007e84:	2000044c 	.word	0x2000044c
 8007e88:	20000a6c 	.word	0x20000a6c
 8007e8c:	20000854 	.word	0x20000854

08007e90 <_free_r>:
 8007e90:	2900      	cmp	r1, #0
 8007e92:	d053      	beq.n	8007f3c <_free_r+0xac>
 8007e94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007e96:	460c      	mov	r4, r1
 8007e98:	4606      	mov	r6, r0
 8007e9a:	f000 fe2b 	bl	8008af4 <__malloc_lock>
 8007e9e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8007ea2:	4f71      	ldr	r7, [pc, #452]	; (8008068 <_free_r+0x1d8>)
 8007ea4:	f02c 0101 	bic.w	r1, ip, #1
 8007ea8:	f1a4 0508 	sub.w	r5, r4, #8
 8007eac:	186b      	adds	r3, r5, r1
 8007eae:	68b8      	ldr	r0, [r7, #8]
 8007eb0:	685a      	ldr	r2, [r3, #4]
 8007eb2:	4298      	cmp	r0, r3
 8007eb4:	f022 0203 	bic.w	r2, r2, #3
 8007eb8:	d053      	beq.n	8007f62 <_free_r+0xd2>
 8007eba:	f01c 0f01 	tst.w	ip, #1
 8007ebe:	605a      	str	r2, [r3, #4]
 8007ec0:	eb03 0002 	add.w	r0, r3, r2
 8007ec4:	d13b      	bne.n	8007f3e <_free_r+0xae>
 8007ec6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8007eca:	6840      	ldr	r0, [r0, #4]
 8007ecc:	eba5 050c 	sub.w	r5, r5, ip
 8007ed0:	f107 0e08 	add.w	lr, r7, #8
 8007ed4:	68ac      	ldr	r4, [r5, #8]
 8007ed6:	4574      	cmp	r4, lr
 8007ed8:	4461      	add	r1, ip
 8007eda:	f000 0001 	and.w	r0, r0, #1
 8007ede:	d075      	beq.n	8007fcc <_free_r+0x13c>
 8007ee0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8007ee4:	f8c4 c00c 	str.w	ip, [r4, #12]
 8007ee8:	f8cc 4008 	str.w	r4, [ip, #8]
 8007eec:	b360      	cbz	r0, 8007f48 <_free_r+0xb8>
 8007eee:	f041 0301 	orr.w	r3, r1, #1
 8007ef2:	606b      	str	r3, [r5, #4]
 8007ef4:	5069      	str	r1, [r5, r1]
 8007ef6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8007efa:	d350      	bcc.n	8007f9e <_free_r+0x10e>
 8007efc:	0a4b      	lsrs	r3, r1, #9
 8007efe:	2b04      	cmp	r3, #4
 8007f00:	d870      	bhi.n	8007fe4 <_free_r+0x154>
 8007f02:	098b      	lsrs	r3, r1, #6
 8007f04:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007f08:	00e4      	lsls	r4, r4, #3
 8007f0a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8007f0e:	1938      	adds	r0, r7, r4
 8007f10:	593b      	ldr	r3, [r7, r4]
 8007f12:	3808      	subs	r0, #8
 8007f14:	4298      	cmp	r0, r3
 8007f16:	d078      	beq.n	800800a <_free_r+0x17a>
 8007f18:	685a      	ldr	r2, [r3, #4]
 8007f1a:	f022 0203 	bic.w	r2, r2, #3
 8007f1e:	428a      	cmp	r2, r1
 8007f20:	d971      	bls.n	8008006 <_free_r+0x176>
 8007f22:	689b      	ldr	r3, [r3, #8]
 8007f24:	4298      	cmp	r0, r3
 8007f26:	d1f7      	bne.n	8007f18 <_free_r+0x88>
 8007f28:	68c3      	ldr	r3, [r0, #12]
 8007f2a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8007f2e:	609d      	str	r5, [r3, #8]
 8007f30:	60c5      	str	r5, [r0, #12]
 8007f32:	4630      	mov	r0, r6
 8007f34:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007f38:	f000 bde2 	b.w	8008b00 <__malloc_unlock>
 8007f3c:	4770      	bx	lr
 8007f3e:	6840      	ldr	r0, [r0, #4]
 8007f40:	f000 0001 	and.w	r0, r0, #1
 8007f44:	2800      	cmp	r0, #0
 8007f46:	d1d2      	bne.n	8007eee <_free_r+0x5e>
 8007f48:	6898      	ldr	r0, [r3, #8]
 8007f4a:	4c48      	ldr	r4, [pc, #288]	; (800806c <_free_r+0x1dc>)
 8007f4c:	4411      	add	r1, r2
 8007f4e:	42a0      	cmp	r0, r4
 8007f50:	f041 0201 	orr.w	r2, r1, #1
 8007f54:	d062      	beq.n	800801c <_free_r+0x18c>
 8007f56:	68db      	ldr	r3, [r3, #12]
 8007f58:	60c3      	str	r3, [r0, #12]
 8007f5a:	6098      	str	r0, [r3, #8]
 8007f5c:	606a      	str	r2, [r5, #4]
 8007f5e:	5069      	str	r1, [r5, r1]
 8007f60:	e7c9      	b.n	8007ef6 <_free_r+0x66>
 8007f62:	f01c 0f01 	tst.w	ip, #1
 8007f66:	440a      	add	r2, r1
 8007f68:	d107      	bne.n	8007f7a <_free_r+0xea>
 8007f6a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8007f6e:	1aed      	subs	r5, r5, r3
 8007f70:	441a      	add	r2, r3
 8007f72:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8007f76:	60cb      	str	r3, [r1, #12]
 8007f78:	6099      	str	r1, [r3, #8]
 8007f7a:	4b3d      	ldr	r3, [pc, #244]	; (8008070 <_free_r+0x1e0>)
 8007f7c:	681b      	ldr	r3, [r3, #0]
 8007f7e:	f042 0101 	orr.w	r1, r2, #1
 8007f82:	4293      	cmp	r3, r2
 8007f84:	6069      	str	r1, [r5, #4]
 8007f86:	60bd      	str	r5, [r7, #8]
 8007f88:	d804      	bhi.n	8007f94 <_free_r+0x104>
 8007f8a:	4b3a      	ldr	r3, [pc, #232]	; (8008074 <_free_r+0x1e4>)
 8007f8c:	4630      	mov	r0, r6
 8007f8e:	6819      	ldr	r1, [r3, #0]
 8007f90:	f7ff ff2e 	bl	8007df0 <_malloc_trim_r>
 8007f94:	4630      	mov	r0, r6
 8007f96:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007f9a:	f000 bdb1 	b.w	8008b00 <__malloc_unlock>
 8007f9e:	08c9      	lsrs	r1, r1, #3
 8007fa0:	6878      	ldr	r0, [r7, #4]
 8007fa2:	1c4a      	adds	r2, r1, #1
 8007fa4:	2301      	movs	r3, #1
 8007fa6:	1089      	asrs	r1, r1, #2
 8007fa8:	408b      	lsls	r3, r1
 8007faa:	4303      	orrs	r3, r0
 8007fac:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8007fb0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8007fb4:	607b      	str	r3, [r7, #4]
 8007fb6:	3908      	subs	r1, #8
 8007fb8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8007fbc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8007fc0:	60c5      	str	r5, [r0, #12]
 8007fc2:	4630      	mov	r0, r6
 8007fc4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007fc8:	f000 bd9a 	b.w	8008b00 <__malloc_unlock>
 8007fcc:	2800      	cmp	r0, #0
 8007fce:	d145      	bne.n	800805c <_free_r+0x1cc>
 8007fd0:	440a      	add	r2, r1
 8007fd2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8007fd6:	f042 0001 	orr.w	r0, r2, #1
 8007fda:	60cb      	str	r3, [r1, #12]
 8007fdc:	6099      	str	r1, [r3, #8]
 8007fde:	6068      	str	r0, [r5, #4]
 8007fe0:	50aa      	str	r2, [r5, r2]
 8007fe2:	e7d7      	b.n	8007f94 <_free_r+0x104>
 8007fe4:	2b14      	cmp	r3, #20
 8007fe6:	d908      	bls.n	8007ffa <_free_r+0x16a>
 8007fe8:	2b54      	cmp	r3, #84	; 0x54
 8007fea:	d81e      	bhi.n	800802a <_free_r+0x19a>
 8007fec:	0b0b      	lsrs	r3, r1, #12
 8007fee:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8007ff2:	00e4      	lsls	r4, r4, #3
 8007ff4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8007ff8:	e789      	b.n	8007f0e <_free_r+0x7e>
 8007ffa:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8007ffe:	00e4      	lsls	r4, r4, #3
 8008000:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8008004:	e783      	b.n	8007f0e <_free_r+0x7e>
 8008006:	4618      	mov	r0, r3
 8008008:	e78e      	b.n	8007f28 <_free_r+0x98>
 800800a:	1093      	asrs	r3, r2, #2
 800800c:	6879      	ldr	r1, [r7, #4]
 800800e:	2201      	movs	r2, #1
 8008010:	fa02 f303 	lsl.w	r3, r2, r3
 8008014:	430b      	orrs	r3, r1
 8008016:	607b      	str	r3, [r7, #4]
 8008018:	4603      	mov	r3, r0
 800801a:	e786      	b.n	8007f2a <_free_r+0x9a>
 800801c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008020:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8008024:	606a      	str	r2, [r5, #4]
 8008026:	5069      	str	r1, [r5, r1]
 8008028:	e7b4      	b.n	8007f94 <_free_r+0x104>
 800802a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800802e:	d806      	bhi.n	800803e <_free_r+0x1ae>
 8008030:	0bcb      	lsrs	r3, r1, #15
 8008032:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8008036:	00e4      	lsls	r4, r4, #3
 8008038:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800803c:	e767      	b.n	8007f0e <_free_r+0x7e>
 800803e:	f240 5254 	movw	r2, #1364	; 0x554
 8008042:	4293      	cmp	r3, r2
 8008044:	d806      	bhi.n	8008054 <_free_r+0x1c4>
 8008046:	0c8b      	lsrs	r3, r1, #18
 8008048:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800804c:	00e4      	lsls	r4, r4, #3
 800804e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8008052:	e75c      	b.n	8007f0e <_free_r+0x7e>
 8008054:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008058:	227e      	movs	r2, #126	; 0x7e
 800805a:	e758      	b.n	8007f0e <_free_r+0x7e>
 800805c:	f041 0201 	orr.w	r2, r1, #1
 8008060:	606a      	str	r2, [r5, #4]
 8008062:	6019      	str	r1, [r3, #0]
 8008064:	e796      	b.n	8007f94 <_free_r+0x104>
 8008066:	bf00      	nop
 8008068:	2000044c 	.word	0x2000044c
 800806c:	20000454 	.word	0x20000454
 8008070:	20000858 	.word	0x20000858
 8008074:	20000a9c 	.word	0x20000a9c

08008078 <__sfvwrite_r>:
 8008078:	6893      	ldr	r3, [r2, #8]
 800807a:	2b00      	cmp	r3, #0
 800807c:	f000 80e4 	beq.w	8008248 <__sfvwrite_r+0x1d0>
 8008080:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008084:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008088:	b29b      	uxth	r3, r3
 800808a:	460c      	mov	r4, r1
 800808c:	0719      	lsls	r1, r3, #28
 800808e:	b083      	sub	sp, #12
 8008090:	4682      	mov	sl, r0
 8008092:	4690      	mov	r8, r2
 8008094:	d535      	bpl.n	8008102 <__sfvwrite_r+0x8a>
 8008096:	6922      	ldr	r2, [r4, #16]
 8008098:	b39a      	cbz	r2, 8008102 <__sfvwrite_r+0x8a>
 800809a:	f013 0202 	ands.w	r2, r3, #2
 800809e:	f8d8 6000 	ldr.w	r6, [r8]
 80080a2:	d03d      	beq.n	8008120 <__sfvwrite_r+0xa8>
 80080a4:	2700      	movs	r7, #0
 80080a6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80080aa:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80080ae:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008370 <__sfvwrite_r+0x2f8>
 80080b2:	463d      	mov	r5, r7
 80080b4:	454d      	cmp	r5, r9
 80080b6:	462b      	mov	r3, r5
 80080b8:	463a      	mov	r2, r7
 80080ba:	bf28      	it	cs
 80080bc:	464b      	movcs	r3, r9
 80080be:	4661      	mov	r1, ip
 80080c0:	4650      	mov	r0, sl
 80080c2:	b1d5      	cbz	r5, 80080fa <__sfvwrite_r+0x82>
 80080c4:	47d8      	blx	fp
 80080c6:	2800      	cmp	r0, #0
 80080c8:	f340 80c6 	ble.w	8008258 <__sfvwrite_r+0x1e0>
 80080cc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80080d0:	1a1b      	subs	r3, r3, r0
 80080d2:	4407      	add	r7, r0
 80080d4:	1a2d      	subs	r5, r5, r0
 80080d6:	f8c8 3008 	str.w	r3, [r8, #8]
 80080da:	2b00      	cmp	r3, #0
 80080dc:	f000 80b0 	beq.w	8008240 <__sfvwrite_r+0x1c8>
 80080e0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80080e4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80080e8:	454d      	cmp	r5, r9
 80080ea:	462b      	mov	r3, r5
 80080ec:	463a      	mov	r2, r7
 80080ee:	bf28      	it	cs
 80080f0:	464b      	movcs	r3, r9
 80080f2:	4661      	mov	r1, ip
 80080f4:	4650      	mov	r0, sl
 80080f6:	2d00      	cmp	r5, #0
 80080f8:	d1e4      	bne.n	80080c4 <__sfvwrite_r+0x4c>
 80080fa:	e9d6 7500 	ldrd	r7, r5, [r6]
 80080fe:	3608      	adds	r6, #8
 8008100:	e7d8      	b.n	80080b4 <__sfvwrite_r+0x3c>
 8008102:	4621      	mov	r1, r4
 8008104:	4650      	mov	r0, sl
 8008106:	f7fe fd03 	bl	8006b10 <__swsetup_r>
 800810a:	2800      	cmp	r0, #0
 800810c:	f040 812a 	bne.w	8008364 <__sfvwrite_r+0x2ec>
 8008110:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008114:	f8d8 6000 	ldr.w	r6, [r8]
 8008118:	b29b      	uxth	r3, r3
 800811a:	f013 0202 	ands.w	r2, r3, #2
 800811e:	d1c1      	bne.n	80080a4 <__sfvwrite_r+0x2c>
 8008120:	f013 0901 	ands.w	r9, r3, #1
 8008124:	d15d      	bne.n	80081e2 <__sfvwrite_r+0x16a>
 8008126:	68a7      	ldr	r7, [r4, #8]
 8008128:	6820      	ldr	r0, [r4, #0]
 800812a:	464d      	mov	r5, r9
 800812c:	2d00      	cmp	r5, #0
 800812e:	d054      	beq.n	80081da <__sfvwrite_r+0x162>
 8008130:	059a      	lsls	r2, r3, #22
 8008132:	f140 809b 	bpl.w	800826c <__sfvwrite_r+0x1f4>
 8008136:	42af      	cmp	r7, r5
 8008138:	46bb      	mov	fp, r7
 800813a:	f200 80d8 	bhi.w	80082ee <__sfvwrite_r+0x276>
 800813e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8008142:	d02f      	beq.n	80081a4 <__sfvwrite_r+0x12c>
 8008144:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008148:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800814c:	eba0 0b01 	sub.w	fp, r0, r1
 8008150:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008154:	1c68      	adds	r0, r5, #1
 8008156:	107f      	asrs	r7, r7, #1
 8008158:	4458      	add	r0, fp
 800815a:	42b8      	cmp	r0, r7
 800815c:	463a      	mov	r2, r7
 800815e:	bf84      	itt	hi
 8008160:	4607      	movhi	r7, r0
 8008162:	463a      	movhi	r2, r7
 8008164:	055b      	lsls	r3, r3, #21
 8008166:	f140 80d3 	bpl.w	8008310 <__sfvwrite_r+0x298>
 800816a:	4611      	mov	r1, r2
 800816c:	4650      	mov	r0, sl
 800816e:	f000 f9b9 	bl	80084e4 <_malloc_r>
 8008172:	2800      	cmp	r0, #0
 8008174:	f000 80f0 	beq.w	8008358 <__sfvwrite_r+0x2e0>
 8008178:	465a      	mov	r2, fp
 800817a:	6921      	ldr	r1, [r4, #16]
 800817c:	9001      	str	r0, [sp, #4]
 800817e:	f7f8 fe53 	bl	8000e28 <memcpy>
 8008182:	89a2      	ldrh	r2, [r4, #12]
 8008184:	9b01      	ldr	r3, [sp, #4]
 8008186:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800818a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800818e:	81a2      	strh	r2, [r4, #12]
 8008190:	eba7 020b 	sub.w	r2, r7, fp
 8008194:	eb03 000b 	add.w	r0, r3, fp
 8008198:	6167      	str	r7, [r4, #20]
 800819a:	6123      	str	r3, [r4, #16]
 800819c:	6020      	str	r0, [r4, #0]
 800819e:	60a2      	str	r2, [r4, #8]
 80081a0:	462f      	mov	r7, r5
 80081a2:	46ab      	mov	fp, r5
 80081a4:	465a      	mov	r2, fp
 80081a6:	4649      	mov	r1, r9
 80081a8:	f000 fc40 	bl	8008a2c <memmove>
 80081ac:	68a2      	ldr	r2, [r4, #8]
 80081ae:	6823      	ldr	r3, [r4, #0]
 80081b0:	1bd2      	subs	r2, r2, r7
 80081b2:	445b      	add	r3, fp
 80081b4:	462f      	mov	r7, r5
 80081b6:	60a2      	str	r2, [r4, #8]
 80081b8:	6023      	str	r3, [r4, #0]
 80081ba:	2500      	movs	r5, #0
 80081bc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80081c0:	1bdb      	subs	r3, r3, r7
 80081c2:	44b9      	add	r9, r7
 80081c4:	f8c8 3008 	str.w	r3, [r8, #8]
 80081c8:	2b00      	cmp	r3, #0
 80081ca:	d039      	beq.n	8008240 <__sfvwrite_r+0x1c8>
 80081cc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80081d0:	68a7      	ldr	r7, [r4, #8]
 80081d2:	6820      	ldr	r0, [r4, #0]
 80081d4:	b29b      	uxth	r3, r3
 80081d6:	2d00      	cmp	r5, #0
 80081d8:	d1aa      	bne.n	8008130 <__sfvwrite_r+0xb8>
 80081da:	e9d6 9500 	ldrd	r9, r5, [r6]
 80081de:	3608      	adds	r6, #8
 80081e0:	e7a4      	b.n	800812c <__sfvwrite_r+0xb4>
 80081e2:	4633      	mov	r3, r6
 80081e4:	4691      	mov	r9, r2
 80081e6:	4610      	mov	r0, r2
 80081e8:	4617      	mov	r7, r2
 80081ea:	464e      	mov	r6, r9
 80081ec:	469b      	mov	fp, r3
 80081ee:	2f00      	cmp	r7, #0
 80081f0:	d06b      	beq.n	80082ca <__sfvwrite_r+0x252>
 80081f2:	2800      	cmp	r0, #0
 80081f4:	d071      	beq.n	80082da <__sfvwrite_r+0x262>
 80081f6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80081fa:	6820      	ldr	r0, [r4, #0]
 80081fc:	45b9      	cmp	r9, r7
 80081fe:	464b      	mov	r3, r9
 8008200:	bf28      	it	cs
 8008202:	463b      	movcs	r3, r7
 8008204:	4288      	cmp	r0, r1
 8008206:	d903      	bls.n	8008210 <__sfvwrite_r+0x198>
 8008208:	68a5      	ldr	r5, [r4, #8]
 800820a:	4415      	add	r5, r2
 800820c:	42ab      	cmp	r3, r5
 800820e:	dc71      	bgt.n	80082f4 <__sfvwrite_r+0x27c>
 8008210:	429a      	cmp	r2, r3
 8008212:	f300 8093 	bgt.w	800833c <__sfvwrite_r+0x2c4>
 8008216:	4613      	mov	r3, r2
 8008218:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800821a:	69e1      	ldr	r1, [r4, #28]
 800821c:	4632      	mov	r2, r6
 800821e:	4650      	mov	r0, sl
 8008220:	47a8      	blx	r5
 8008222:	1e05      	subs	r5, r0, #0
 8008224:	dd18      	ble.n	8008258 <__sfvwrite_r+0x1e0>
 8008226:	ebb9 0905 	subs.w	r9, r9, r5
 800822a:	d00f      	beq.n	800824c <__sfvwrite_r+0x1d4>
 800822c:	2001      	movs	r0, #1
 800822e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008232:	1b5b      	subs	r3, r3, r5
 8008234:	442e      	add	r6, r5
 8008236:	1b7f      	subs	r7, r7, r5
 8008238:	f8c8 3008 	str.w	r3, [r8, #8]
 800823c:	2b00      	cmp	r3, #0
 800823e:	d1d6      	bne.n	80081ee <__sfvwrite_r+0x176>
 8008240:	2000      	movs	r0, #0
 8008242:	b003      	add	sp, #12
 8008244:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008248:	2000      	movs	r0, #0
 800824a:	4770      	bx	lr
 800824c:	4621      	mov	r1, r4
 800824e:	4650      	mov	r0, sl
 8008250:	f7ff fd20 	bl	8007c94 <_fflush_r>
 8008254:	2800      	cmp	r0, #0
 8008256:	d0ea      	beq.n	800822e <__sfvwrite_r+0x1b6>
 8008258:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800825c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008260:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008264:	81a3      	strh	r3, [r4, #12]
 8008266:	b003      	add	sp, #12
 8008268:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800826c:	6923      	ldr	r3, [r4, #16]
 800826e:	4283      	cmp	r3, r0
 8008270:	d315      	bcc.n	800829e <__sfvwrite_r+0x226>
 8008272:	6961      	ldr	r1, [r4, #20]
 8008274:	42a9      	cmp	r1, r5
 8008276:	d812      	bhi.n	800829e <__sfvwrite_r+0x226>
 8008278:	4b3c      	ldr	r3, [pc, #240]	; (800836c <__sfvwrite_r+0x2f4>)
 800827a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800827c:	429d      	cmp	r5, r3
 800827e:	bf94      	ite	ls
 8008280:	462b      	movls	r3, r5
 8008282:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008286:	464a      	mov	r2, r9
 8008288:	fb93 f3f1 	sdiv	r3, r3, r1
 800828c:	4650      	mov	r0, sl
 800828e:	fb01 f303 	mul.w	r3, r1, r3
 8008292:	69e1      	ldr	r1, [r4, #28]
 8008294:	47b8      	blx	r7
 8008296:	1e07      	subs	r7, r0, #0
 8008298:	ddde      	ble.n	8008258 <__sfvwrite_r+0x1e0>
 800829a:	1bed      	subs	r5, r5, r7
 800829c:	e78e      	b.n	80081bc <__sfvwrite_r+0x144>
 800829e:	42af      	cmp	r7, r5
 80082a0:	bf28      	it	cs
 80082a2:	462f      	movcs	r7, r5
 80082a4:	463a      	mov	r2, r7
 80082a6:	4649      	mov	r1, r9
 80082a8:	f000 fbc0 	bl	8008a2c <memmove>
 80082ac:	68a3      	ldr	r3, [r4, #8]
 80082ae:	6822      	ldr	r2, [r4, #0]
 80082b0:	1bdb      	subs	r3, r3, r7
 80082b2:	443a      	add	r2, r7
 80082b4:	60a3      	str	r3, [r4, #8]
 80082b6:	6022      	str	r2, [r4, #0]
 80082b8:	2b00      	cmp	r3, #0
 80082ba:	d1ee      	bne.n	800829a <__sfvwrite_r+0x222>
 80082bc:	4621      	mov	r1, r4
 80082be:	4650      	mov	r0, sl
 80082c0:	f7ff fce8 	bl	8007c94 <_fflush_r>
 80082c4:	2800      	cmp	r0, #0
 80082c6:	d0e8      	beq.n	800829a <__sfvwrite_r+0x222>
 80082c8:	e7c6      	b.n	8008258 <__sfvwrite_r+0x1e0>
 80082ca:	f10b 0308 	add.w	r3, fp, #8
 80082ce:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80082d2:	469b      	mov	fp, r3
 80082d4:	3308      	adds	r3, #8
 80082d6:	2f00      	cmp	r7, #0
 80082d8:	d0f9      	beq.n	80082ce <__sfvwrite_r+0x256>
 80082da:	463a      	mov	r2, r7
 80082dc:	210a      	movs	r1, #10
 80082de:	4630      	mov	r0, r6
 80082e0:	f7f8 febe 	bl	8001060 <memchr>
 80082e4:	b338      	cbz	r0, 8008336 <__sfvwrite_r+0x2be>
 80082e6:	3001      	adds	r0, #1
 80082e8:	eba0 0906 	sub.w	r9, r0, r6
 80082ec:	e783      	b.n	80081f6 <__sfvwrite_r+0x17e>
 80082ee:	462f      	mov	r7, r5
 80082f0:	46ab      	mov	fp, r5
 80082f2:	e757      	b.n	80081a4 <__sfvwrite_r+0x12c>
 80082f4:	4631      	mov	r1, r6
 80082f6:	462a      	mov	r2, r5
 80082f8:	f000 fb98 	bl	8008a2c <memmove>
 80082fc:	6823      	ldr	r3, [r4, #0]
 80082fe:	442b      	add	r3, r5
 8008300:	6023      	str	r3, [r4, #0]
 8008302:	4621      	mov	r1, r4
 8008304:	4650      	mov	r0, sl
 8008306:	f7ff fcc5 	bl	8007c94 <_fflush_r>
 800830a:	2800      	cmp	r0, #0
 800830c:	d08b      	beq.n	8008226 <__sfvwrite_r+0x1ae>
 800830e:	e7a3      	b.n	8008258 <__sfvwrite_r+0x1e0>
 8008310:	4650      	mov	r0, sl
 8008312:	f000 ff05 	bl	8009120 <_realloc_r>
 8008316:	4603      	mov	r3, r0
 8008318:	2800      	cmp	r0, #0
 800831a:	f47f af39 	bne.w	8008190 <__sfvwrite_r+0x118>
 800831e:	6921      	ldr	r1, [r4, #16]
 8008320:	4650      	mov	r0, sl
 8008322:	f7ff fdb5 	bl	8007e90 <_free_r>
 8008326:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800832a:	220c      	movs	r2, #12
 800832c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008330:	f8ca 2000 	str.w	r2, [sl]
 8008334:	e792      	b.n	800825c <__sfvwrite_r+0x1e4>
 8008336:	f107 0901 	add.w	r9, r7, #1
 800833a:	e75c      	b.n	80081f6 <__sfvwrite_r+0x17e>
 800833c:	461a      	mov	r2, r3
 800833e:	4631      	mov	r1, r6
 8008340:	9301      	str	r3, [sp, #4]
 8008342:	f000 fb73 	bl	8008a2c <memmove>
 8008346:	9b01      	ldr	r3, [sp, #4]
 8008348:	68a1      	ldr	r1, [r4, #8]
 800834a:	6822      	ldr	r2, [r4, #0]
 800834c:	1ac9      	subs	r1, r1, r3
 800834e:	441a      	add	r2, r3
 8008350:	60a1      	str	r1, [r4, #8]
 8008352:	6022      	str	r2, [r4, #0]
 8008354:	461d      	mov	r5, r3
 8008356:	e766      	b.n	8008226 <__sfvwrite_r+0x1ae>
 8008358:	230c      	movs	r3, #12
 800835a:	f8ca 3000 	str.w	r3, [sl]
 800835e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008362:	e77b      	b.n	800825c <__sfvwrite_r+0x1e4>
 8008364:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008368:	e76b      	b.n	8008242 <__sfvwrite_r+0x1ca>
 800836a:	bf00      	nop
 800836c:	7ffffffe 	.word	0x7ffffffe
 8008370:	7ffffc00 	.word	0x7ffffc00

08008374 <_fwalk_reent>:
 8008374:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008378:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800837c:	d01f      	beq.n	80083be <_fwalk_reent+0x4a>
 800837e:	4688      	mov	r8, r1
 8008380:	4606      	mov	r6, r0
 8008382:	f04f 0900 	mov.w	r9, #0
 8008386:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800838a:	3d01      	subs	r5, #1
 800838c:	d411      	bmi.n	80083b2 <_fwalk_reent+0x3e>
 800838e:	89a3      	ldrh	r3, [r4, #12]
 8008390:	2b01      	cmp	r3, #1
 8008392:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8008396:	4621      	mov	r1, r4
 8008398:	4630      	mov	r0, r6
 800839a:	d906      	bls.n	80083aa <_fwalk_reent+0x36>
 800839c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80083a0:	3301      	adds	r3, #1
 80083a2:	d002      	beq.n	80083aa <_fwalk_reent+0x36>
 80083a4:	47c0      	blx	r8
 80083a6:	ea49 0900 	orr.w	r9, r9, r0
 80083aa:	1c6b      	adds	r3, r5, #1
 80083ac:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80083b0:	d1ed      	bne.n	800838e <_fwalk_reent+0x1a>
 80083b2:	683f      	ldr	r7, [r7, #0]
 80083b4:	2f00      	cmp	r7, #0
 80083b6:	d1e6      	bne.n	8008386 <_fwalk_reent+0x12>
 80083b8:	4648      	mov	r0, r9
 80083ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80083be:	46b9      	mov	r9, r7
 80083c0:	4648      	mov	r0, r9
 80083c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80083c6:	bf00      	nop

080083c8 <_localeconv_r>:
 80083c8:	4a04      	ldr	r2, [pc, #16]	; (80083dc <_localeconv_r+0x14>)
 80083ca:	4b05      	ldr	r3, [pc, #20]	; (80083e0 <_localeconv_r+0x18>)
 80083cc:	6812      	ldr	r2, [r2, #0]
 80083ce:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80083d0:	2800      	cmp	r0, #0
 80083d2:	bf08      	it	eq
 80083d4:	4618      	moveq	r0, r3
 80083d6:	30f0      	adds	r0, #240	; 0xf0
 80083d8:	4770      	bx	lr
 80083da:	bf00      	nop
 80083dc:	2000001c 	.word	0x2000001c
 80083e0:	2000085c 	.word	0x2000085c

080083e4 <__retarget_lock_init_recursive>:
 80083e4:	4770      	bx	lr
 80083e6:	bf00      	nop

080083e8 <__retarget_lock_close_recursive>:
 80083e8:	4770      	bx	lr
 80083ea:	bf00      	nop

080083ec <__retarget_lock_acquire_recursive>:
 80083ec:	4770      	bx	lr
 80083ee:	bf00      	nop

080083f0 <__retarget_lock_release_recursive>:
 80083f0:	4770      	bx	lr
 80083f2:	bf00      	nop

080083f4 <__swhatbuf_r>:
 80083f4:	b570      	push	{r4, r5, r6, lr}
 80083f6:	460c      	mov	r4, r1
 80083f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80083fc:	2900      	cmp	r1, #0
 80083fe:	b096      	sub	sp, #88	; 0x58
 8008400:	4615      	mov	r5, r2
 8008402:	461e      	mov	r6, r3
 8008404:	da0f      	bge.n	8008426 <__swhatbuf_r+0x32>
 8008406:	89a2      	ldrh	r2, [r4, #12]
 8008408:	2300      	movs	r3, #0
 800840a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800840e:	6033      	str	r3, [r6, #0]
 8008410:	d104      	bne.n	800841c <__swhatbuf_r+0x28>
 8008412:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8008416:	602b      	str	r3, [r5, #0]
 8008418:	b016      	add	sp, #88	; 0x58
 800841a:	bd70      	pop	{r4, r5, r6, pc}
 800841c:	2240      	movs	r2, #64	; 0x40
 800841e:	4618      	mov	r0, r3
 8008420:	602a      	str	r2, [r5, #0]
 8008422:	b016      	add	sp, #88	; 0x58
 8008424:	bd70      	pop	{r4, r5, r6, pc}
 8008426:	466a      	mov	r2, sp
 8008428:	f001 fad0 	bl	80099cc <_fstat_r>
 800842c:	2800      	cmp	r0, #0
 800842e:	dbea      	blt.n	8008406 <__swhatbuf_r+0x12>
 8008430:	9b01      	ldr	r3, [sp, #4]
 8008432:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8008436:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800843a:	fab3 f383 	clz	r3, r3
 800843e:	095b      	lsrs	r3, r3, #5
 8008440:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8008444:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008448:	6033      	str	r3, [r6, #0]
 800844a:	602a      	str	r2, [r5, #0]
 800844c:	b016      	add	sp, #88	; 0x58
 800844e:	bd70      	pop	{r4, r5, r6, pc}

08008450 <__smakebuf_r>:
 8008450:	898a      	ldrh	r2, [r1, #12]
 8008452:	0792      	lsls	r2, r2, #30
 8008454:	460b      	mov	r3, r1
 8008456:	d506      	bpl.n	8008466 <__smakebuf_r+0x16>
 8008458:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800845c:	2101      	movs	r1, #1
 800845e:	601a      	str	r2, [r3, #0]
 8008460:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8008464:	4770      	bx	lr
 8008466:	b570      	push	{r4, r5, r6, lr}
 8008468:	b082      	sub	sp, #8
 800846a:	ab01      	add	r3, sp, #4
 800846c:	466a      	mov	r2, sp
 800846e:	460c      	mov	r4, r1
 8008470:	4605      	mov	r5, r0
 8008472:	f7ff ffbf 	bl	80083f4 <__swhatbuf_r>
 8008476:	9900      	ldr	r1, [sp, #0]
 8008478:	4606      	mov	r6, r0
 800847a:	4628      	mov	r0, r5
 800847c:	f000 f832 	bl	80084e4 <_malloc_r>
 8008480:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008484:	b1d8      	cbz	r0, 80084be <__smakebuf_r+0x6e>
 8008486:	4916      	ldr	r1, [pc, #88]	; (80084e0 <__smakebuf_r+0x90>)
 8008488:	63e9      	str	r1, [r5, #60]	; 0x3c
 800848a:	9a01      	ldr	r2, [sp, #4]
 800848c:	9900      	ldr	r1, [sp, #0]
 800848e:	6020      	str	r0, [r4, #0]
 8008490:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008494:	81a3      	strh	r3, [r4, #12]
 8008496:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800849a:	b91a      	cbnz	r2, 80084a4 <__smakebuf_r+0x54>
 800849c:	4333      	orrs	r3, r6
 800849e:	81a3      	strh	r3, [r4, #12]
 80084a0:	b002      	add	sp, #8
 80084a2:	bd70      	pop	{r4, r5, r6, pc}
 80084a4:	4628      	mov	r0, r5
 80084a6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80084aa:	f001 faa3 	bl	80099f4 <_isatty_r>
 80084ae:	b1a0      	cbz	r0, 80084da <__smakebuf_r+0x8a>
 80084b0:	89a3      	ldrh	r3, [r4, #12]
 80084b2:	f023 0303 	bic.w	r3, r3, #3
 80084b6:	f043 0301 	orr.w	r3, r3, #1
 80084ba:	b21b      	sxth	r3, r3
 80084bc:	e7ee      	b.n	800849c <__smakebuf_r+0x4c>
 80084be:	059a      	lsls	r2, r3, #22
 80084c0:	d4ee      	bmi.n	80084a0 <__smakebuf_r+0x50>
 80084c2:	f023 0303 	bic.w	r3, r3, #3
 80084c6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80084ca:	f043 0302 	orr.w	r3, r3, #2
 80084ce:	2101      	movs	r1, #1
 80084d0:	81a3      	strh	r3, [r4, #12]
 80084d2:	6022      	str	r2, [r4, #0]
 80084d4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80084d8:	e7e2      	b.n	80084a0 <__smakebuf_r+0x50>
 80084da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80084de:	e7dd      	b.n	800849c <__smakebuf_r+0x4c>
 80084e0:	08007d41 	.word	0x08007d41

080084e4 <_malloc_r>:
 80084e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80084e8:	f101 050b 	add.w	r5, r1, #11
 80084ec:	2d16      	cmp	r5, #22
 80084ee:	b083      	sub	sp, #12
 80084f0:	4606      	mov	r6, r0
 80084f2:	d823      	bhi.n	800853c <_malloc_r+0x58>
 80084f4:	2910      	cmp	r1, #16
 80084f6:	f200 80b9 	bhi.w	800866c <_malloc_r+0x188>
 80084fa:	f000 fafb 	bl	8008af4 <__malloc_lock>
 80084fe:	2510      	movs	r5, #16
 8008500:	2318      	movs	r3, #24
 8008502:	2002      	movs	r0, #2
 8008504:	4fc5      	ldr	r7, [pc, #788]	; (800881c <_malloc_r+0x338>)
 8008506:	443b      	add	r3, r7
 8008508:	f1a3 0208 	sub.w	r2, r3, #8
 800850c:	685c      	ldr	r4, [r3, #4]
 800850e:	4294      	cmp	r4, r2
 8008510:	f000 8166 	beq.w	80087e0 <_malloc_r+0x2fc>
 8008514:	6863      	ldr	r3, [r4, #4]
 8008516:	f023 0303 	bic.w	r3, r3, #3
 800851a:	4423      	add	r3, r4
 800851c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8008520:	685a      	ldr	r2, [r3, #4]
 8008522:	60e9      	str	r1, [r5, #12]
 8008524:	f042 0201 	orr.w	r2, r2, #1
 8008528:	608d      	str	r5, [r1, #8]
 800852a:	4630      	mov	r0, r6
 800852c:	605a      	str	r2, [r3, #4]
 800852e:	f000 fae7 	bl	8008b00 <__malloc_unlock>
 8008532:	3408      	adds	r4, #8
 8008534:	4620      	mov	r0, r4
 8008536:	b003      	add	sp, #12
 8008538:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800853c:	f035 0507 	bics.w	r5, r5, #7
 8008540:	f100 8094 	bmi.w	800866c <_malloc_r+0x188>
 8008544:	42a9      	cmp	r1, r5
 8008546:	f200 8091 	bhi.w	800866c <_malloc_r+0x188>
 800854a:	f000 fad3 	bl	8008af4 <__malloc_lock>
 800854e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8008552:	f0c0 8183 	bcc.w	800885c <_malloc_r+0x378>
 8008556:	0a6b      	lsrs	r3, r5, #9
 8008558:	f000 808f 	beq.w	800867a <_malloc_r+0x196>
 800855c:	2b04      	cmp	r3, #4
 800855e:	f200 8146 	bhi.w	80087ee <_malloc_r+0x30a>
 8008562:	09ab      	lsrs	r3, r5, #6
 8008564:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8008568:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800856c:	00c3      	lsls	r3, r0, #3
 800856e:	4fab      	ldr	r7, [pc, #684]	; (800881c <_malloc_r+0x338>)
 8008570:	443b      	add	r3, r7
 8008572:	f1a3 0108 	sub.w	r1, r3, #8
 8008576:	685c      	ldr	r4, [r3, #4]
 8008578:	42a1      	cmp	r1, r4
 800857a:	d106      	bne.n	800858a <_malloc_r+0xa6>
 800857c:	e00c      	b.n	8008598 <_malloc_r+0xb4>
 800857e:	2a00      	cmp	r2, #0
 8008580:	f280 811d 	bge.w	80087be <_malloc_r+0x2da>
 8008584:	68e4      	ldr	r4, [r4, #12]
 8008586:	42a1      	cmp	r1, r4
 8008588:	d006      	beq.n	8008598 <_malloc_r+0xb4>
 800858a:	6863      	ldr	r3, [r4, #4]
 800858c:	f023 0303 	bic.w	r3, r3, #3
 8008590:	1b5a      	subs	r2, r3, r5
 8008592:	2a0f      	cmp	r2, #15
 8008594:	ddf3      	ble.n	800857e <_malloc_r+0x9a>
 8008596:	4660      	mov	r0, ip
 8008598:	693c      	ldr	r4, [r7, #16]
 800859a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8008830 <_malloc_r+0x34c>
 800859e:	4564      	cmp	r4, ip
 80085a0:	d071      	beq.n	8008686 <_malloc_r+0x1a2>
 80085a2:	6863      	ldr	r3, [r4, #4]
 80085a4:	f023 0303 	bic.w	r3, r3, #3
 80085a8:	1b5a      	subs	r2, r3, r5
 80085aa:	2a0f      	cmp	r2, #15
 80085ac:	f300 8144 	bgt.w	8008838 <_malloc_r+0x354>
 80085b0:	2a00      	cmp	r2, #0
 80085b2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80085b6:	f280 8126 	bge.w	8008806 <_malloc_r+0x322>
 80085ba:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80085be:	f080 8169 	bcs.w	8008894 <_malloc_r+0x3b0>
 80085c2:	08db      	lsrs	r3, r3, #3
 80085c4:	1c59      	adds	r1, r3, #1
 80085c6:	687a      	ldr	r2, [r7, #4]
 80085c8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80085cc:	f8c4 8008 	str.w	r8, [r4, #8]
 80085d0:	f04f 0e01 	mov.w	lr, #1
 80085d4:	109b      	asrs	r3, r3, #2
 80085d6:	fa0e f303 	lsl.w	r3, lr, r3
 80085da:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80085de:	4313      	orrs	r3, r2
 80085e0:	f1ae 0208 	sub.w	r2, lr, #8
 80085e4:	60e2      	str	r2, [r4, #12]
 80085e6:	607b      	str	r3, [r7, #4]
 80085e8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80085ec:	f8c8 400c 	str.w	r4, [r8, #12]
 80085f0:	1082      	asrs	r2, r0, #2
 80085f2:	2401      	movs	r4, #1
 80085f4:	4094      	lsls	r4, r2
 80085f6:	429c      	cmp	r4, r3
 80085f8:	d84b      	bhi.n	8008692 <_malloc_r+0x1ae>
 80085fa:	421c      	tst	r4, r3
 80085fc:	d106      	bne.n	800860c <_malloc_r+0x128>
 80085fe:	f020 0003 	bic.w	r0, r0, #3
 8008602:	0064      	lsls	r4, r4, #1
 8008604:	421c      	tst	r4, r3
 8008606:	f100 0004 	add.w	r0, r0, #4
 800860a:	d0fa      	beq.n	8008602 <_malloc_r+0x11e>
 800860c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8008610:	46ce      	mov	lr, r9
 8008612:	4680      	mov	r8, r0
 8008614:	f8de 300c 	ldr.w	r3, [lr, #12]
 8008618:	459e      	cmp	lr, r3
 800861a:	d107      	bne.n	800862c <_malloc_r+0x148>
 800861c:	e122      	b.n	8008864 <_malloc_r+0x380>
 800861e:	2a00      	cmp	r2, #0
 8008620:	f280 8129 	bge.w	8008876 <_malloc_r+0x392>
 8008624:	68db      	ldr	r3, [r3, #12]
 8008626:	459e      	cmp	lr, r3
 8008628:	f000 811c 	beq.w	8008864 <_malloc_r+0x380>
 800862c:	6859      	ldr	r1, [r3, #4]
 800862e:	f021 0103 	bic.w	r1, r1, #3
 8008632:	1b4a      	subs	r2, r1, r5
 8008634:	2a0f      	cmp	r2, #15
 8008636:	ddf2      	ble.n	800861e <_malloc_r+0x13a>
 8008638:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800863c:	195c      	adds	r4, r3, r5
 800863e:	f045 0501 	orr.w	r5, r5, #1
 8008642:	605d      	str	r5, [r3, #4]
 8008644:	f042 0501 	orr.w	r5, r2, #1
 8008648:	f8c8 e00c 	str.w	lr, [r8, #12]
 800864c:	4630      	mov	r0, r6
 800864e:	f8ce 8008 	str.w	r8, [lr, #8]
 8008652:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8008656:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800865a:	6065      	str	r5, [r4, #4]
 800865c:	505a      	str	r2, [r3, r1]
 800865e:	9301      	str	r3, [sp, #4]
 8008660:	f000 fa4e 	bl	8008b00 <__malloc_unlock>
 8008664:	9b01      	ldr	r3, [sp, #4]
 8008666:	f103 0408 	add.w	r4, r3, #8
 800866a:	e763      	b.n	8008534 <_malloc_r+0x50>
 800866c:	2400      	movs	r4, #0
 800866e:	230c      	movs	r3, #12
 8008670:	4620      	mov	r0, r4
 8008672:	6033      	str	r3, [r6, #0]
 8008674:	b003      	add	sp, #12
 8008676:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800867a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800867e:	2040      	movs	r0, #64	; 0x40
 8008680:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8008684:	e773      	b.n	800856e <_malloc_r+0x8a>
 8008686:	687b      	ldr	r3, [r7, #4]
 8008688:	1082      	asrs	r2, r0, #2
 800868a:	2401      	movs	r4, #1
 800868c:	4094      	lsls	r4, r2
 800868e:	429c      	cmp	r4, r3
 8008690:	d9b3      	bls.n	80085fa <_malloc_r+0x116>
 8008692:	68bc      	ldr	r4, [r7, #8]
 8008694:	6863      	ldr	r3, [r4, #4]
 8008696:	f023 0903 	bic.w	r9, r3, #3
 800869a:	45a9      	cmp	r9, r5
 800869c:	d303      	bcc.n	80086a6 <_malloc_r+0x1c2>
 800869e:	eba9 0305 	sub.w	r3, r9, r5
 80086a2:	2b0f      	cmp	r3, #15
 80086a4:	dc7b      	bgt.n	800879e <_malloc_r+0x2ba>
 80086a6:	4b5e      	ldr	r3, [pc, #376]	; (8008820 <_malloc_r+0x33c>)
 80086a8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8008834 <_malloc_r+0x350>
 80086ac:	681a      	ldr	r2, [r3, #0]
 80086ae:	f8da 3000 	ldr.w	r3, [sl]
 80086b2:	3301      	adds	r3, #1
 80086b4:	eb05 0802 	add.w	r8, r5, r2
 80086b8:	f000 8148 	beq.w	800894c <_malloc_r+0x468>
 80086bc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80086c0:	f108 080f 	add.w	r8, r8, #15
 80086c4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80086c8:	f028 080f 	bic.w	r8, r8, #15
 80086cc:	4641      	mov	r1, r8
 80086ce:	4630      	mov	r0, r6
 80086d0:	f000 ff08 	bl	80094e4 <_sbrk_r>
 80086d4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80086d8:	4683      	mov	fp, r0
 80086da:	f000 8104 	beq.w	80088e6 <_malloc_r+0x402>
 80086de:	eb04 0009 	add.w	r0, r4, r9
 80086e2:	4558      	cmp	r0, fp
 80086e4:	f200 80fd 	bhi.w	80088e2 <_malloc_r+0x3fe>
 80086e8:	4a4e      	ldr	r2, [pc, #312]	; (8008824 <_malloc_r+0x340>)
 80086ea:	6813      	ldr	r3, [r2, #0]
 80086ec:	4443      	add	r3, r8
 80086ee:	6013      	str	r3, [r2, #0]
 80086f0:	f000 814d 	beq.w	800898e <_malloc_r+0x4aa>
 80086f4:	f8da 1000 	ldr.w	r1, [sl]
 80086f8:	3101      	adds	r1, #1
 80086fa:	bf1b      	ittet	ne
 80086fc:	ebab 0000 	subne.w	r0, fp, r0
 8008700:	181b      	addne	r3, r3, r0
 8008702:	f8ca b000 	streq.w	fp, [sl]
 8008706:	6013      	strne	r3, [r2, #0]
 8008708:	f01b 0307 	ands.w	r3, fp, #7
 800870c:	f000 8134 	beq.w	8008978 <_malloc_r+0x494>
 8008710:	f1c3 0108 	rsb	r1, r3, #8
 8008714:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8008718:	448b      	add	fp, r1
 800871a:	3308      	adds	r3, #8
 800871c:	44d8      	add	r8, fp
 800871e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8008722:	eba3 0808 	sub.w	r8, r3, r8
 8008726:	4641      	mov	r1, r8
 8008728:	4630      	mov	r0, r6
 800872a:	9201      	str	r2, [sp, #4]
 800872c:	f000 feda 	bl	80094e4 <_sbrk_r>
 8008730:	1c43      	adds	r3, r0, #1
 8008732:	9a01      	ldr	r2, [sp, #4]
 8008734:	f000 8146 	beq.w	80089c4 <_malloc_r+0x4e0>
 8008738:	eba0 010b 	sub.w	r1, r0, fp
 800873c:	4441      	add	r1, r8
 800873e:	f041 0101 	orr.w	r1, r1, #1
 8008742:	6813      	ldr	r3, [r2, #0]
 8008744:	f8c7 b008 	str.w	fp, [r7, #8]
 8008748:	4443      	add	r3, r8
 800874a:	42bc      	cmp	r4, r7
 800874c:	f8cb 1004 	str.w	r1, [fp, #4]
 8008750:	6013      	str	r3, [r2, #0]
 8008752:	d015      	beq.n	8008780 <_malloc_r+0x29c>
 8008754:	f1b9 0f0f 	cmp.w	r9, #15
 8008758:	f240 8130 	bls.w	80089bc <_malloc_r+0x4d8>
 800875c:	6860      	ldr	r0, [r4, #4]
 800875e:	f1a9 010c 	sub.w	r1, r9, #12
 8008762:	f021 0107 	bic.w	r1, r1, #7
 8008766:	f000 0001 	and.w	r0, r0, #1
 800876a:	eb04 0c01 	add.w	ip, r4, r1
 800876e:	4308      	orrs	r0, r1
 8008770:	f04f 0e05 	mov.w	lr, #5
 8008774:	290f      	cmp	r1, #15
 8008776:	6060      	str	r0, [r4, #4]
 8008778:	e9cc ee01 	strd	lr, lr, [ip, #4]
 800877c:	f200 813a 	bhi.w	80089f4 <_malloc_r+0x510>
 8008780:	4a29      	ldr	r2, [pc, #164]	; (8008828 <_malloc_r+0x344>)
 8008782:	482a      	ldr	r0, [pc, #168]	; (800882c <_malloc_r+0x348>)
 8008784:	6811      	ldr	r1, [r2, #0]
 8008786:	68bc      	ldr	r4, [r7, #8]
 8008788:	428b      	cmp	r3, r1
 800878a:	6801      	ldr	r1, [r0, #0]
 800878c:	bf88      	it	hi
 800878e:	6013      	strhi	r3, [r2, #0]
 8008790:	6862      	ldr	r2, [r4, #4]
 8008792:	428b      	cmp	r3, r1
 8008794:	f022 0203 	bic.w	r2, r2, #3
 8008798:	bf88      	it	hi
 800879a:	6003      	strhi	r3, [r0, #0]
 800879c:	e0a7      	b.n	80088ee <_malloc_r+0x40a>
 800879e:	1962      	adds	r2, r4, r5
 80087a0:	f043 0301 	orr.w	r3, r3, #1
 80087a4:	f045 0501 	orr.w	r5, r5, #1
 80087a8:	6065      	str	r5, [r4, #4]
 80087aa:	4630      	mov	r0, r6
 80087ac:	60ba      	str	r2, [r7, #8]
 80087ae:	6053      	str	r3, [r2, #4]
 80087b0:	f000 f9a6 	bl	8008b00 <__malloc_unlock>
 80087b4:	3408      	adds	r4, #8
 80087b6:	4620      	mov	r0, r4
 80087b8:	b003      	add	sp, #12
 80087ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80087be:	4423      	add	r3, r4
 80087c0:	68e1      	ldr	r1, [r4, #12]
 80087c2:	685a      	ldr	r2, [r3, #4]
 80087c4:	68a5      	ldr	r5, [r4, #8]
 80087c6:	f042 0201 	orr.w	r2, r2, #1
 80087ca:	60e9      	str	r1, [r5, #12]
 80087cc:	4630      	mov	r0, r6
 80087ce:	608d      	str	r5, [r1, #8]
 80087d0:	605a      	str	r2, [r3, #4]
 80087d2:	f000 f995 	bl	8008b00 <__malloc_unlock>
 80087d6:	3408      	adds	r4, #8
 80087d8:	4620      	mov	r0, r4
 80087da:	b003      	add	sp, #12
 80087dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80087e0:	68dc      	ldr	r4, [r3, #12]
 80087e2:	42a3      	cmp	r3, r4
 80087e4:	bf08      	it	eq
 80087e6:	3002      	addeq	r0, #2
 80087e8:	f43f aed6 	beq.w	8008598 <_malloc_r+0xb4>
 80087ec:	e692      	b.n	8008514 <_malloc_r+0x30>
 80087ee:	2b14      	cmp	r3, #20
 80087f0:	d971      	bls.n	80088d6 <_malloc_r+0x3f2>
 80087f2:	2b54      	cmp	r3, #84	; 0x54
 80087f4:	f200 80ad 	bhi.w	8008952 <_malloc_r+0x46e>
 80087f8:	0b2b      	lsrs	r3, r5, #12
 80087fa:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80087fe:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8008802:	00c3      	lsls	r3, r0, #3
 8008804:	e6b3      	b.n	800856e <_malloc_r+0x8a>
 8008806:	4423      	add	r3, r4
 8008808:	4630      	mov	r0, r6
 800880a:	685a      	ldr	r2, [r3, #4]
 800880c:	f042 0201 	orr.w	r2, r2, #1
 8008810:	605a      	str	r2, [r3, #4]
 8008812:	3408      	adds	r4, #8
 8008814:	f000 f974 	bl	8008b00 <__malloc_unlock>
 8008818:	e68c      	b.n	8008534 <_malloc_r+0x50>
 800881a:	bf00      	nop
 800881c:	2000044c 	.word	0x2000044c
 8008820:	20000a9c 	.word	0x20000a9c
 8008824:	20000a6c 	.word	0x20000a6c
 8008828:	20000a94 	.word	0x20000a94
 800882c:	20000a98 	.word	0x20000a98
 8008830:	20000454 	.word	0x20000454
 8008834:	20000854 	.word	0x20000854
 8008838:	1961      	adds	r1, r4, r5
 800883a:	f045 0e01 	orr.w	lr, r5, #1
 800883e:	f042 0501 	orr.w	r5, r2, #1
 8008842:	f8c4 e004 	str.w	lr, [r4, #4]
 8008846:	4630      	mov	r0, r6
 8008848:	e9c7 1104 	strd	r1, r1, [r7, #16]
 800884c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8008850:	604d      	str	r5, [r1, #4]
 8008852:	50e2      	str	r2, [r4, r3]
 8008854:	f000 f954 	bl	8008b00 <__malloc_unlock>
 8008858:	3408      	adds	r4, #8
 800885a:	e66b      	b.n	8008534 <_malloc_r+0x50>
 800885c:	08e8      	lsrs	r0, r5, #3
 800885e:	f105 0308 	add.w	r3, r5, #8
 8008862:	e64f      	b.n	8008504 <_malloc_r+0x20>
 8008864:	f108 0801 	add.w	r8, r8, #1
 8008868:	f018 0f03 	tst.w	r8, #3
 800886c:	f10e 0e08 	add.w	lr, lr, #8
 8008870:	f47f aed0 	bne.w	8008614 <_malloc_r+0x130>
 8008874:	e052      	b.n	800891c <_malloc_r+0x438>
 8008876:	4419      	add	r1, r3
 8008878:	461c      	mov	r4, r3
 800887a:	684a      	ldr	r2, [r1, #4]
 800887c:	68db      	ldr	r3, [r3, #12]
 800887e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8008882:	f042 0201 	orr.w	r2, r2, #1
 8008886:	604a      	str	r2, [r1, #4]
 8008888:	4630      	mov	r0, r6
 800888a:	60eb      	str	r3, [r5, #12]
 800888c:	609d      	str	r5, [r3, #8]
 800888e:	f000 f937 	bl	8008b00 <__malloc_unlock>
 8008892:	e64f      	b.n	8008534 <_malloc_r+0x50>
 8008894:	0a5a      	lsrs	r2, r3, #9
 8008896:	2a04      	cmp	r2, #4
 8008898:	d935      	bls.n	8008906 <_malloc_r+0x422>
 800889a:	2a14      	cmp	r2, #20
 800889c:	d86f      	bhi.n	800897e <_malloc_r+0x49a>
 800889e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80088a2:	00c9      	lsls	r1, r1, #3
 80088a4:	325b      	adds	r2, #91	; 0x5b
 80088a6:	eb07 0e01 	add.w	lr, r7, r1
 80088aa:	5879      	ldr	r1, [r7, r1]
 80088ac:	f1ae 0e08 	sub.w	lr, lr, #8
 80088b0:	458e      	cmp	lr, r1
 80088b2:	d058      	beq.n	8008966 <_malloc_r+0x482>
 80088b4:	684a      	ldr	r2, [r1, #4]
 80088b6:	f022 0203 	bic.w	r2, r2, #3
 80088ba:	429a      	cmp	r2, r3
 80088bc:	d902      	bls.n	80088c4 <_malloc_r+0x3e0>
 80088be:	6889      	ldr	r1, [r1, #8]
 80088c0:	458e      	cmp	lr, r1
 80088c2:	d1f7      	bne.n	80088b4 <_malloc_r+0x3d0>
 80088c4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80088c8:	687b      	ldr	r3, [r7, #4]
 80088ca:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80088ce:	f8ce 4008 	str.w	r4, [lr, #8]
 80088d2:	60cc      	str	r4, [r1, #12]
 80088d4:	e68c      	b.n	80085f0 <_malloc_r+0x10c>
 80088d6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80088da:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80088de:	00c3      	lsls	r3, r0, #3
 80088e0:	e645      	b.n	800856e <_malloc_r+0x8a>
 80088e2:	42bc      	cmp	r4, r7
 80088e4:	d072      	beq.n	80089cc <_malloc_r+0x4e8>
 80088e6:	68bc      	ldr	r4, [r7, #8]
 80088e8:	6862      	ldr	r2, [r4, #4]
 80088ea:	f022 0203 	bic.w	r2, r2, #3
 80088ee:	4295      	cmp	r5, r2
 80088f0:	eba2 0305 	sub.w	r3, r2, r5
 80088f4:	d802      	bhi.n	80088fc <_malloc_r+0x418>
 80088f6:	2b0f      	cmp	r3, #15
 80088f8:	f73f af51 	bgt.w	800879e <_malloc_r+0x2ba>
 80088fc:	4630      	mov	r0, r6
 80088fe:	f000 f8ff 	bl	8008b00 <__malloc_unlock>
 8008902:	2400      	movs	r4, #0
 8008904:	e616      	b.n	8008534 <_malloc_r+0x50>
 8008906:	099a      	lsrs	r2, r3, #6
 8008908:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800890c:	00c9      	lsls	r1, r1, #3
 800890e:	3238      	adds	r2, #56	; 0x38
 8008910:	e7c9      	b.n	80088a6 <_malloc_r+0x3c2>
 8008912:	f8d9 9000 	ldr.w	r9, [r9]
 8008916:	4599      	cmp	r9, r3
 8008918:	f040 8083 	bne.w	8008a22 <_malloc_r+0x53e>
 800891c:	f010 0f03 	tst.w	r0, #3
 8008920:	f1a9 0308 	sub.w	r3, r9, #8
 8008924:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8008928:	d1f3      	bne.n	8008912 <_malloc_r+0x42e>
 800892a:	687b      	ldr	r3, [r7, #4]
 800892c:	ea23 0304 	bic.w	r3, r3, r4
 8008930:	607b      	str	r3, [r7, #4]
 8008932:	0064      	lsls	r4, r4, #1
 8008934:	429c      	cmp	r4, r3
 8008936:	f63f aeac 	bhi.w	8008692 <_malloc_r+0x1ae>
 800893a:	b91c      	cbnz	r4, 8008944 <_malloc_r+0x460>
 800893c:	e6a9      	b.n	8008692 <_malloc_r+0x1ae>
 800893e:	0064      	lsls	r4, r4, #1
 8008940:	f108 0804 	add.w	r8, r8, #4
 8008944:	421c      	tst	r4, r3
 8008946:	d0fa      	beq.n	800893e <_malloc_r+0x45a>
 8008948:	4640      	mov	r0, r8
 800894a:	e65f      	b.n	800860c <_malloc_r+0x128>
 800894c:	f108 0810 	add.w	r8, r8, #16
 8008950:	e6bc      	b.n	80086cc <_malloc_r+0x1e8>
 8008952:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008956:	d826      	bhi.n	80089a6 <_malloc_r+0x4c2>
 8008958:	0beb      	lsrs	r3, r5, #15
 800895a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800895e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8008962:	00c3      	lsls	r3, r0, #3
 8008964:	e603      	b.n	800856e <_malloc_r+0x8a>
 8008966:	687b      	ldr	r3, [r7, #4]
 8008968:	1092      	asrs	r2, r2, #2
 800896a:	f04f 0801 	mov.w	r8, #1
 800896e:	fa08 f202 	lsl.w	r2, r8, r2
 8008972:	4313      	orrs	r3, r2
 8008974:	607b      	str	r3, [r7, #4]
 8008976:	e7a8      	b.n	80088ca <_malloc_r+0x3e6>
 8008978:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800897c:	e6ce      	b.n	800871c <_malloc_r+0x238>
 800897e:	2a54      	cmp	r2, #84	; 0x54
 8008980:	d829      	bhi.n	80089d6 <_malloc_r+0x4f2>
 8008982:	0b1a      	lsrs	r2, r3, #12
 8008984:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8008988:	00c9      	lsls	r1, r1, #3
 800898a:	326e      	adds	r2, #110	; 0x6e
 800898c:	e78b      	b.n	80088a6 <_malloc_r+0x3c2>
 800898e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8008992:	2900      	cmp	r1, #0
 8008994:	f47f aeae 	bne.w	80086f4 <_malloc_r+0x210>
 8008998:	eb09 0208 	add.w	r2, r9, r8
 800899c:	68b9      	ldr	r1, [r7, #8]
 800899e:	f042 0201 	orr.w	r2, r2, #1
 80089a2:	604a      	str	r2, [r1, #4]
 80089a4:	e6ec      	b.n	8008780 <_malloc_r+0x29c>
 80089a6:	f240 5254 	movw	r2, #1364	; 0x554
 80089aa:	4293      	cmp	r3, r2
 80089ac:	d81c      	bhi.n	80089e8 <_malloc_r+0x504>
 80089ae:	0cab      	lsrs	r3, r5, #18
 80089b0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80089b4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80089b8:	00c3      	lsls	r3, r0, #3
 80089ba:	e5d8      	b.n	800856e <_malloc_r+0x8a>
 80089bc:	2301      	movs	r3, #1
 80089be:	f8cb 3004 	str.w	r3, [fp, #4]
 80089c2:	e79b      	b.n	80088fc <_malloc_r+0x418>
 80089c4:	2101      	movs	r1, #1
 80089c6:	f04f 0800 	mov.w	r8, #0
 80089ca:	e6ba      	b.n	8008742 <_malloc_r+0x25e>
 80089cc:	4a16      	ldr	r2, [pc, #88]	; (8008a28 <_malloc_r+0x544>)
 80089ce:	6813      	ldr	r3, [r2, #0]
 80089d0:	4443      	add	r3, r8
 80089d2:	6013      	str	r3, [r2, #0]
 80089d4:	e68e      	b.n	80086f4 <_malloc_r+0x210>
 80089d6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80089da:	d814      	bhi.n	8008a06 <_malloc_r+0x522>
 80089dc:	0bda      	lsrs	r2, r3, #15
 80089de:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80089e2:	00c9      	lsls	r1, r1, #3
 80089e4:	3277      	adds	r2, #119	; 0x77
 80089e6:	e75e      	b.n	80088a6 <_malloc_r+0x3c2>
 80089e8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80089ec:	207f      	movs	r0, #127	; 0x7f
 80089ee:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80089f2:	e5bc      	b.n	800856e <_malloc_r+0x8a>
 80089f4:	f104 0108 	add.w	r1, r4, #8
 80089f8:	4630      	mov	r0, r6
 80089fa:	9201      	str	r2, [sp, #4]
 80089fc:	f7ff fa48 	bl	8007e90 <_free_r>
 8008a00:	9a01      	ldr	r2, [sp, #4]
 8008a02:	6813      	ldr	r3, [r2, #0]
 8008a04:	e6bc      	b.n	8008780 <_malloc_r+0x29c>
 8008a06:	f240 5154 	movw	r1, #1364	; 0x554
 8008a0a:	428a      	cmp	r2, r1
 8008a0c:	d805      	bhi.n	8008a1a <_malloc_r+0x536>
 8008a0e:	0c9a      	lsrs	r2, r3, #18
 8008a10:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8008a14:	00c9      	lsls	r1, r1, #3
 8008a16:	327c      	adds	r2, #124	; 0x7c
 8008a18:	e745      	b.n	80088a6 <_malloc_r+0x3c2>
 8008a1a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8008a1e:	227e      	movs	r2, #126	; 0x7e
 8008a20:	e741      	b.n	80088a6 <_malloc_r+0x3c2>
 8008a22:	687b      	ldr	r3, [r7, #4]
 8008a24:	e785      	b.n	8008932 <_malloc_r+0x44e>
 8008a26:	bf00      	nop
 8008a28:	20000a6c 	.word	0x20000a6c

08008a2c <memmove>:
 8008a2c:	4288      	cmp	r0, r1
 8008a2e:	b4f0      	push	{r4, r5, r6, r7}
 8008a30:	d90d      	bls.n	8008a4e <memmove+0x22>
 8008a32:	188b      	adds	r3, r1, r2
 8008a34:	4283      	cmp	r3, r0
 8008a36:	d90a      	bls.n	8008a4e <memmove+0x22>
 8008a38:	1884      	adds	r4, r0, r2
 8008a3a:	b132      	cbz	r2, 8008a4a <memmove+0x1e>
 8008a3c:	4622      	mov	r2, r4
 8008a3e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8008a42:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8008a46:	4299      	cmp	r1, r3
 8008a48:	d1f9      	bne.n	8008a3e <memmove+0x12>
 8008a4a:	bcf0      	pop	{r4, r5, r6, r7}
 8008a4c:	4770      	bx	lr
 8008a4e:	2a0f      	cmp	r2, #15
 8008a50:	d949      	bls.n	8008ae6 <memmove+0xba>
 8008a52:	ea40 0301 	orr.w	r3, r0, r1
 8008a56:	079b      	lsls	r3, r3, #30
 8008a58:	d147      	bne.n	8008aea <memmove+0xbe>
 8008a5a:	f1a2 0310 	sub.w	r3, r2, #16
 8008a5e:	091b      	lsrs	r3, r3, #4
 8008a60:	f101 0720 	add.w	r7, r1, #32
 8008a64:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008a68:	f101 0410 	add.w	r4, r1, #16
 8008a6c:	f100 0510 	add.w	r5, r0, #16
 8008a70:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008a74:	f845 6c10 	str.w	r6, [r5, #-16]
 8008a78:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8008a7c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008a80:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008a84:	f845 6c08 	str.w	r6, [r5, #-8]
 8008a88:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8008a8c:	f845 6c04 	str.w	r6, [r5, #-4]
 8008a90:	3410      	adds	r4, #16
 8008a92:	42bc      	cmp	r4, r7
 8008a94:	f105 0510 	add.w	r5, r5, #16
 8008a98:	d1ea      	bne.n	8008a70 <memmove+0x44>
 8008a9a:	3301      	adds	r3, #1
 8008a9c:	f002 050f 	and.w	r5, r2, #15
 8008aa0:	011b      	lsls	r3, r3, #4
 8008aa2:	2d03      	cmp	r5, #3
 8008aa4:	4419      	add	r1, r3
 8008aa6:	4403      	add	r3, r0
 8008aa8:	d921      	bls.n	8008aee <memmove+0xc2>
 8008aaa:	1f1f      	subs	r7, r3, #4
 8008aac:	460e      	mov	r6, r1
 8008aae:	462c      	mov	r4, r5
 8008ab0:	3c04      	subs	r4, #4
 8008ab2:	f856 cb04 	ldr.w	ip, [r6], #4
 8008ab6:	f847 cf04 	str.w	ip, [r7, #4]!
 8008aba:	2c03      	cmp	r4, #3
 8008abc:	d8f8      	bhi.n	8008ab0 <memmove+0x84>
 8008abe:	1f2c      	subs	r4, r5, #4
 8008ac0:	f024 0403 	bic.w	r4, r4, #3
 8008ac4:	3404      	adds	r4, #4
 8008ac6:	4423      	add	r3, r4
 8008ac8:	4421      	add	r1, r4
 8008aca:	f002 0203 	and.w	r2, r2, #3
 8008ace:	2a00      	cmp	r2, #0
 8008ad0:	d0bb      	beq.n	8008a4a <memmove+0x1e>
 8008ad2:	3b01      	subs	r3, #1
 8008ad4:	440a      	add	r2, r1
 8008ad6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8008ada:	f803 4f01 	strb.w	r4, [r3, #1]!
 8008ade:	4291      	cmp	r1, r2
 8008ae0:	d1f9      	bne.n	8008ad6 <memmove+0xaa>
 8008ae2:	bcf0      	pop	{r4, r5, r6, r7}
 8008ae4:	4770      	bx	lr
 8008ae6:	4603      	mov	r3, r0
 8008ae8:	e7f1      	b.n	8008ace <memmove+0xa2>
 8008aea:	4603      	mov	r3, r0
 8008aec:	e7f1      	b.n	8008ad2 <memmove+0xa6>
 8008aee:	462a      	mov	r2, r5
 8008af0:	e7ed      	b.n	8008ace <memmove+0xa2>
 8008af2:	bf00      	nop

08008af4 <__malloc_lock>:
 8008af4:	4801      	ldr	r0, [pc, #4]	; (8008afc <__malloc_lock+0x8>)
 8008af6:	f7ff bc79 	b.w	80083ec <__retarget_lock_acquire_recursive>
 8008afa:	bf00      	nop
 8008afc:	20000b4c 	.word	0x20000b4c

08008b00 <__malloc_unlock>:
 8008b00:	4801      	ldr	r0, [pc, #4]	; (8008b08 <__malloc_unlock+0x8>)
 8008b02:	f7ff bc75 	b.w	80083f0 <__retarget_lock_release_recursive>
 8008b06:	bf00      	nop
 8008b08:	20000b4c 	.word	0x20000b4c

08008b0c <_Balloc>:
 8008b0c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008b0e:	b570      	push	{r4, r5, r6, lr}
 8008b10:	4605      	mov	r5, r0
 8008b12:	460c      	mov	r4, r1
 8008b14:	b14b      	cbz	r3, 8008b2a <_Balloc+0x1e>
 8008b16:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8008b1a:	b180      	cbz	r0, 8008b3e <_Balloc+0x32>
 8008b1c:	6802      	ldr	r2, [r0, #0]
 8008b1e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8008b22:	2300      	movs	r3, #0
 8008b24:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8008b28:	bd70      	pop	{r4, r5, r6, pc}
 8008b2a:	2221      	movs	r2, #33	; 0x21
 8008b2c:	2104      	movs	r1, #4
 8008b2e:	f000 fe1d 	bl	800976c <_calloc_r>
 8008b32:	4603      	mov	r3, r0
 8008b34:	64e8      	str	r0, [r5, #76]	; 0x4c
 8008b36:	2800      	cmp	r0, #0
 8008b38:	d1ed      	bne.n	8008b16 <_Balloc+0xa>
 8008b3a:	2000      	movs	r0, #0
 8008b3c:	bd70      	pop	{r4, r5, r6, pc}
 8008b3e:	2101      	movs	r1, #1
 8008b40:	fa01 f604 	lsl.w	r6, r1, r4
 8008b44:	1d72      	adds	r2, r6, #5
 8008b46:	4628      	mov	r0, r5
 8008b48:	0092      	lsls	r2, r2, #2
 8008b4a:	f000 fe0f 	bl	800976c <_calloc_r>
 8008b4e:	2800      	cmp	r0, #0
 8008b50:	d0f3      	beq.n	8008b3a <_Balloc+0x2e>
 8008b52:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8008b56:	e7e4      	b.n	8008b22 <_Balloc+0x16>

08008b58 <_Bfree>:
 8008b58:	b131      	cbz	r1, 8008b68 <_Bfree+0x10>
 8008b5a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8008b5c:	684a      	ldr	r2, [r1, #4]
 8008b5e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8008b62:	6008      	str	r0, [r1, #0]
 8008b64:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8008b68:	4770      	bx	lr
 8008b6a:	bf00      	nop

08008b6c <__multadd>:
 8008b6c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008b6e:	690c      	ldr	r4, [r1, #16]
 8008b70:	b083      	sub	sp, #12
 8008b72:	460d      	mov	r5, r1
 8008b74:	4606      	mov	r6, r0
 8008b76:	f101 0c14 	add.w	ip, r1, #20
 8008b7a:	2700      	movs	r7, #0
 8008b7c:	f8dc 0000 	ldr.w	r0, [ip]
 8008b80:	b281      	uxth	r1, r0
 8008b82:	fb02 3301 	mla	r3, r2, r1, r3
 8008b86:	0c01      	lsrs	r1, r0, #16
 8008b88:	0c18      	lsrs	r0, r3, #16
 8008b8a:	fb02 0101 	mla	r1, r2, r1, r0
 8008b8e:	b29b      	uxth	r3, r3
 8008b90:	3701      	adds	r7, #1
 8008b92:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8008b96:	42bc      	cmp	r4, r7
 8008b98:	f84c 3b04 	str.w	r3, [ip], #4
 8008b9c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8008ba0:	dcec      	bgt.n	8008b7c <__multadd+0x10>
 8008ba2:	b13b      	cbz	r3, 8008bb4 <__multadd+0x48>
 8008ba4:	68aa      	ldr	r2, [r5, #8]
 8008ba6:	42a2      	cmp	r2, r4
 8008ba8:	dd07      	ble.n	8008bba <__multadd+0x4e>
 8008baa:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8008bae:	3401      	adds	r4, #1
 8008bb0:	6153      	str	r3, [r2, #20]
 8008bb2:	612c      	str	r4, [r5, #16]
 8008bb4:	4628      	mov	r0, r5
 8008bb6:	b003      	add	sp, #12
 8008bb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008bba:	6869      	ldr	r1, [r5, #4]
 8008bbc:	9301      	str	r3, [sp, #4]
 8008bbe:	3101      	adds	r1, #1
 8008bc0:	4630      	mov	r0, r6
 8008bc2:	f7ff ffa3 	bl	8008b0c <_Balloc>
 8008bc6:	692a      	ldr	r2, [r5, #16]
 8008bc8:	3202      	adds	r2, #2
 8008bca:	f105 010c 	add.w	r1, r5, #12
 8008bce:	4607      	mov	r7, r0
 8008bd0:	0092      	lsls	r2, r2, #2
 8008bd2:	300c      	adds	r0, #12
 8008bd4:	f7f8 f928 	bl	8000e28 <memcpy>
 8008bd8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8008bda:	6869      	ldr	r1, [r5, #4]
 8008bdc:	9b01      	ldr	r3, [sp, #4]
 8008bde:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8008be2:	6028      	str	r0, [r5, #0]
 8008be4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8008be8:	463d      	mov	r5, r7
 8008bea:	e7de      	b.n	8008baa <__multadd+0x3e>

08008bec <__hi0bits>:
 8008bec:	0c02      	lsrs	r2, r0, #16
 8008bee:	0412      	lsls	r2, r2, #16
 8008bf0:	4603      	mov	r3, r0
 8008bf2:	b9c2      	cbnz	r2, 8008c26 <__hi0bits+0x3a>
 8008bf4:	0403      	lsls	r3, r0, #16
 8008bf6:	2010      	movs	r0, #16
 8008bf8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8008bfc:	bf04      	itt	eq
 8008bfe:	021b      	lsleq	r3, r3, #8
 8008c00:	3008      	addeq	r0, #8
 8008c02:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8008c06:	bf04      	itt	eq
 8008c08:	011b      	lsleq	r3, r3, #4
 8008c0a:	3004      	addeq	r0, #4
 8008c0c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8008c10:	bf04      	itt	eq
 8008c12:	009b      	lsleq	r3, r3, #2
 8008c14:	3002      	addeq	r0, #2
 8008c16:	2b00      	cmp	r3, #0
 8008c18:	db04      	blt.n	8008c24 <__hi0bits+0x38>
 8008c1a:	005b      	lsls	r3, r3, #1
 8008c1c:	d501      	bpl.n	8008c22 <__hi0bits+0x36>
 8008c1e:	3001      	adds	r0, #1
 8008c20:	4770      	bx	lr
 8008c22:	2020      	movs	r0, #32
 8008c24:	4770      	bx	lr
 8008c26:	2000      	movs	r0, #0
 8008c28:	e7e6      	b.n	8008bf8 <__hi0bits+0xc>
 8008c2a:	bf00      	nop

08008c2c <__lo0bits>:
 8008c2c:	6803      	ldr	r3, [r0, #0]
 8008c2e:	f013 0207 	ands.w	r2, r3, #7
 8008c32:	4601      	mov	r1, r0
 8008c34:	d007      	beq.n	8008c46 <__lo0bits+0x1a>
 8008c36:	07da      	lsls	r2, r3, #31
 8008c38:	d41f      	bmi.n	8008c7a <__lo0bits+0x4e>
 8008c3a:	0798      	lsls	r0, r3, #30
 8008c3c:	d51f      	bpl.n	8008c7e <__lo0bits+0x52>
 8008c3e:	085b      	lsrs	r3, r3, #1
 8008c40:	600b      	str	r3, [r1, #0]
 8008c42:	2001      	movs	r0, #1
 8008c44:	4770      	bx	lr
 8008c46:	b298      	uxth	r0, r3
 8008c48:	b1a0      	cbz	r0, 8008c74 <__lo0bits+0x48>
 8008c4a:	4610      	mov	r0, r2
 8008c4c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8008c50:	bf04      	itt	eq
 8008c52:	0a1b      	lsreq	r3, r3, #8
 8008c54:	3008      	addeq	r0, #8
 8008c56:	071a      	lsls	r2, r3, #28
 8008c58:	bf04      	itt	eq
 8008c5a:	091b      	lsreq	r3, r3, #4
 8008c5c:	3004      	addeq	r0, #4
 8008c5e:	079a      	lsls	r2, r3, #30
 8008c60:	bf04      	itt	eq
 8008c62:	089b      	lsreq	r3, r3, #2
 8008c64:	3002      	addeq	r0, #2
 8008c66:	07da      	lsls	r2, r3, #31
 8008c68:	d402      	bmi.n	8008c70 <__lo0bits+0x44>
 8008c6a:	085b      	lsrs	r3, r3, #1
 8008c6c:	d00b      	beq.n	8008c86 <__lo0bits+0x5a>
 8008c6e:	3001      	adds	r0, #1
 8008c70:	600b      	str	r3, [r1, #0]
 8008c72:	4770      	bx	lr
 8008c74:	0c1b      	lsrs	r3, r3, #16
 8008c76:	2010      	movs	r0, #16
 8008c78:	e7e8      	b.n	8008c4c <__lo0bits+0x20>
 8008c7a:	2000      	movs	r0, #0
 8008c7c:	4770      	bx	lr
 8008c7e:	089b      	lsrs	r3, r3, #2
 8008c80:	600b      	str	r3, [r1, #0]
 8008c82:	2002      	movs	r0, #2
 8008c84:	4770      	bx	lr
 8008c86:	2020      	movs	r0, #32
 8008c88:	4770      	bx	lr
 8008c8a:	bf00      	nop

08008c8c <__i2b>:
 8008c8c:	b510      	push	{r4, lr}
 8008c8e:	460c      	mov	r4, r1
 8008c90:	2101      	movs	r1, #1
 8008c92:	f7ff ff3b 	bl	8008b0c <_Balloc>
 8008c96:	2201      	movs	r2, #1
 8008c98:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8008c9c:	bd10      	pop	{r4, pc}
 8008c9e:	bf00      	nop

08008ca0 <__multiply>:
 8008ca0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008ca4:	690e      	ldr	r6, [r1, #16]
 8008ca6:	6914      	ldr	r4, [r2, #16]
 8008ca8:	42a6      	cmp	r6, r4
 8008caa:	b083      	sub	sp, #12
 8008cac:	460f      	mov	r7, r1
 8008cae:	4615      	mov	r5, r2
 8008cb0:	da04      	bge.n	8008cbc <__multiply+0x1c>
 8008cb2:	4632      	mov	r2, r6
 8008cb4:	462f      	mov	r7, r5
 8008cb6:	4626      	mov	r6, r4
 8008cb8:	460d      	mov	r5, r1
 8008cba:	4614      	mov	r4, r2
 8008cbc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8008cc0:	eb06 0804 	add.w	r8, r6, r4
 8008cc4:	4543      	cmp	r3, r8
 8008cc6:	bfb8      	it	lt
 8008cc8:	3101      	addlt	r1, #1
 8008cca:	f7ff ff1f 	bl	8008b0c <_Balloc>
 8008cce:	f100 0914 	add.w	r9, r0, #20
 8008cd2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8008cd6:	45f1      	cmp	r9, lr
 8008cd8:	9000      	str	r0, [sp, #0]
 8008cda:	d205      	bcs.n	8008ce8 <__multiply+0x48>
 8008cdc:	464b      	mov	r3, r9
 8008cde:	2200      	movs	r2, #0
 8008ce0:	f843 2b04 	str.w	r2, [r3], #4
 8008ce4:	459e      	cmp	lr, r3
 8008ce6:	d8fb      	bhi.n	8008ce0 <__multiply+0x40>
 8008ce8:	f105 0a14 	add.w	sl, r5, #20
 8008cec:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8008cf0:	f107 0314 	add.w	r3, r7, #20
 8008cf4:	45a2      	cmp	sl, r4
 8008cf6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8008cfa:	d261      	bcs.n	8008dc0 <__multiply+0x120>
 8008cfc:	1b64      	subs	r4, r4, r5
 8008cfe:	3c15      	subs	r4, #21
 8008d00:	f024 0403 	bic.w	r4, r4, #3
 8008d04:	f8cd e004 	str.w	lr, [sp, #4]
 8008d08:	44a2      	add	sl, r4
 8008d0a:	f105 0210 	add.w	r2, r5, #16
 8008d0e:	469e      	mov	lr, r3
 8008d10:	e005      	b.n	8008d1e <__multiply+0x7e>
 8008d12:	0c2d      	lsrs	r5, r5, #16
 8008d14:	d12b      	bne.n	8008d6e <__multiply+0xce>
 8008d16:	4592      	cmp	sl, r2
 8008d18:	f109 0904 	add.w	r9, r9, #4
 8008d1c:	d04e      	beq.n	8008dbc <__multiply+0x11c>
 8008d1e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8008d22:	fa1f fb85 	uxth.w	fp, r5
 8008d26:	f1bb 0f00 	cmp.w	fp, #0
 8008d2a:	d0f2      	beq.n	8008d12 <__multiply+0x72>
 8008d2c:	4677      	mov	r7, lr
 8008d2e:	464e      	mov	r6, r9
 8008d30:	2000      	movs	r0, #0
 8008d32:	e000      	b.n	8008d36 <__multiply+0x96>
 8008d34:	4626      	mov	r6, r4
 8008d36:	f857 1b04 	ldr.w	r1, [r7], #4
 8008d3a:	6834      	ldr	r4, [r6, #0]
 8008d3c:	b28b      	uxth	r3, r1
 8008d3e:	b2a5      	uxth	r5, r4
 8008d40:	0c09      	lsrs	r1, r1, #16
 8008d42:	0c24      	lsrs	r4, r4, #16
 8008d44:	fb0b 5303 	mla	r3, fp, r3, r5
 8008d48:	4403      	add	r3, r0
 8008d4a:	fb0b 4001 	mla	r0, fp, r1, r4
 8008d4e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8008d52:	4634      	mov	r4, r6
 8008d54:	b29b      	uxth	r3, r3
 8008d56:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8008d5a:	45bc      	cmp	ip, r7
 8008d5c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8008d60:	f844 3b04 	str.w	r3, [r4], #4
 8008d64:	d8e6      	bhi.n	8008d34 <__multiply+0x94>
 8008d66:	6070      	str	r0, [r6, #4]
 8008d68:	6815      	ldr	r5, [r2, #0]
 8008d6a:	0c2d      	lsrs	r5, r5, #16
 8008d6c:	d0d3      	beq.n	8008d16 <__multiply+0x76>
 8008d6e:	f8d9 3000 	ldr.w	r3, [r9]
 8008d72:	4676      	mov	r6, lr
 8008d74:	4618      	mov	r0, r3
 8008d76:	46cb      	mov	fp, r9
 8008d78:	2100      	movs	r1, #0
 8008d7a:	e000      	b.n	8008d7e <__multiply+0xde>
 8008d7c:	46a3      	mov	fp, r4
 8008d7e:	8834      	ldrh	r4, [r6, #0]
 8008d80:	0c00      	lsrs	r0, r0, #16
 8008d82:	fb05 0004 	mla	r0, r5, r4, r0
 8008d86:	4401      	add	r1, r0
 8008d88:	b29b      	uxth	r3, r3
 8008d8a:	465c      	mov	r4, fp
 8008d8c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8008d90:	f844 3b04 	str.w	r3, [r4], #4
 8008d94:	f856 3b04 	ldr.w	r3, [r6], #4
 8008d98:	f8db 0004 	ldr.w	r0, [fp, #4]
 8008d9c:	0c1b      	lsrs	r3, r3, #16
 8008d9e:	b287      	uxth	r7, r0
 8008da0:	fb05 7303 	mla	r3, r5, r3, r7
 8008da4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8008da8:	45b4      	cmp	ip, r6
 8008daa:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8008dae:	d8e5      	bhi.n	8008d7c <__multiply+0xdc>
 8008db0:	4592      	cmp	sl, r2
 8008db2:	f8cb 3004 	str.w	r3, [fp, #4]
 8008db6:	f109 0904 	add.w	r9, r9, #4
 8008dba:	d1b0      	bne.n	8008d1e <__multiply+0x7e>
 8008dbc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8008dc0:	f1b8 0f00 	cmp.w	r8, #0
 8008dc4:	dd0b      	ble.n	8008dde <__multiply+0x13e>
 8008dc6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8008dca:	f1ae 0e04 	sub.w	lr, lr, #4
 8008dce:	b11b      	cbz	r3, 8008dd8 <__multiply+0x138>
 8008dd0:	e005      	b.n	8008dde <__multiply+0x13e>
 8008dd2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8008dd6:	b913      	cbnz	r3, 8008dde <__multiply+0x13e>
 8008dd8:	f1b8 0801 	subs.w	r8, r8, #1
 8008ddc:	d1f9      	bne.n	8008dd2 <__multiply+0x132>
 8008dde:	9800      	ldr	r0, [sp, #0]
 8008de0:	f8c0 8010 	str.w	r8, [r0, #16]
 8008de4:	b003      	add	sp, #12
 8008de6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008dea:	bf00      	nop

08008dec <__pow5mult>:
 8008dec:	f012 0303 	ands.w	r3, r2, #3
 8008df0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008df4:	4614      	mov	r4, r2
 8008df6:	4607      	mov	r7, r0
 8008df8:	d12e      	bne.n	8008e58 <__pow5mult+0x6c>
 8008dfa:	460d      	mov	r5, r1
 8008dfc:	10a4      	asrs	r4, r4, #2
 8008dfe:	d01c      	beq.n	8008e3a <__pow5mult+0x4e>
 8008e00:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8008e02:	b396      	cbz	r6, 8008e6a <__pow5mult+0x7e>
 8008e04:	07e3      	lsls	r3, r4, #31
 8008e06:	f04f 0800 	mov.w	r8, #0
 8008e0a:	d406      	bmi.n	8008e1a <__pow5mult+0x2e>
 8008e0c:	1064      	asrs	r4, r4, #1
 8008e0e:	d014      	beq.n	8008e3a <__pow5mult+0x4e>
 8008e10:	6830      	ldr	r0, [r6, #0]
 8008e12:	b1a8      	cbz	r0, 8008e40 <__pow5mult+0x54>
 8008e14:	4606      	mov	r6, r0
 8008e16:	07e3      	lsls	r3, r4, #31
 8008e18:	d5f8      	bpl.n	8008e0c <__pow5mult+0x20>
 8008e1a:	4632      	mov	r2, r6
 8008e1c:	4629      	mov	r1, r5
 8008e1e:	4638      	mov	r0, r7
 8008e20:	f7ff ff3e 	bl	8008ca0 <__multiply>
 8008e24:	b1b5      	cbz	r5, 8008e54 <__pow5mult+0x68>
 8008e26:	686a      	ldr	r2, [r5, #4]
 8008e28:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008e2a:	1064      	asrs	r4, r4, #1
 8008e2c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008e30:	6029      	str	r1, [r5, #0]
 8008e32:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8008e36:	4605      	mov	r5, r0
 8008e38:	d1ea      	bne.n	8008e10 <__pow5mult+0x24>
 8008e3a:	4628      	mov	r0, r5
 8008e3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008e40:	4632      	mov	r2, r6
 8008e42:	4631      	mov	r1, r6
 8008e44:	4638      	mov	r0, r7
 8008e46:	f7ff ff2b 	bl	8008ca0 <__multiply>
 8008e4a:	6030      	str	r0, [r6, #0]
 8008e4c:	f8c0 8000 	str.w	r8, [r0]
 8008e50:	4606      	mov	r6, r0
 8008e52:	e7e0      	b.n	8008e16 <__pow5mult+0x2a>
 8008e54:	4605      	mov	r5, r0
 8008e56:	e7d9      	b.n	8008e0c <__pow5mult+0x20>
 8008e58:	3b01      	subs	r3, #1
 8008e5a:	4a0b      	ldr	r2, [pc, #44]	; (8008e88 <__pow5mult+0x9c>)
 8008e5c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8008e60:	2300      	movs	r3, #0
 8008e62:	f7ff fe83 	bl	8008b6c <__multadd>
 8008e66:	4605      	mov	r5, r0
 8008e68:	e7c8      	b.n	8008dfc <__pow5mult+0x10>
 8008e6a:	2101      	movs	r1, #1
 8008e6c:	4638      	mov	r0, r7
 8008e6e:	f7ff fe4d 	bl	8008b0c <_Balloc>
 8008e72:	f240 2371 	movw	r3, #625	; 0x271
 8008e76:	6143      	str	r3, [r0, #20]
 8008e78:	2201      	movs	r2, #1
 8008e7a:	2300      	movs	r3, #0
 8008e7c:	6102      	str	r2, [r0, #16]
 8008e7e:	4606      	mov	r6, r0
 8008e80:	64b8      	str	r0, [r7, #72]	; 0x48
 8008e82:	6003      	str	r3, [r0, #0]
 8008e84:	e7be      	b.n	8008e04 <__pow5mult+0x18>
 8008e86:	bf00      	nop
 8008e88:	0800a0d0 	.word	0x0800a0d0

08008e8c <__lshift>:
 8008e8c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008e90:	4691      	mov	r9, r2
 8008e92:	690a      	ldr	r2, [r1, #16]
 8008e94:	460e      	mov	r6, r1
 8008e96:	ea4f 1469 	mov.w	r4, r9, asr #5
 8008e9a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8008e9e:	eb04 0802 	add.w	r8, r4, r2
 8008ea2:	f108 0501 	add.w	r5, r8, #1
 8008ea6:	429d      	cmp	r5, r3
 8008ea8:	4607      	mov	r7, r0
 8008eaa:	dd04      	ble.n	8008eb6 <__lshift+0x2a>
 8008eac:	005b      	lsls	r3, r3, #1
 8008eae:	429d      	cmp	r5, r3
 8008eb0:	f101 0101 	add.w	r1, r1, #1
 8008eb4:	dcfa      	bgt.n	8008eac <__lshift+0x20>
 8008eb6:	4638      	mov	r0, r7
 8008eb8:	f7ff fe28 	bl	8008b0c <_Balloc>
 8008ebc:	2c00      	cmp	r4, #0
 8008ebe:	f100 0314 	add.w	r3, r0, #20
 8008ec2:	dd37      	ble.n	8008f34 <__lshift+0xa8>
 8008ec4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008ec8:	2200      	movs	r2, #0
 8008eca:	f843 2b04 	str.w	r2, [r3], #4
 8008ece:	428b      	cmp	r3, r1
 8008ed0:	d1fb      	bne.n	8008eca <__lshift+0x3e>
 8008ed2:	6934      	ldr	r4, [r6, #16]
 8008ed4:	f106 0314 	add.w	r3, r6, #20
 8008ed8:	f019 091f 	ands.w	r9, r9, #31
 8008edc:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8008ee0:	d020      	beq.n	8008f24 <__lshift+0x98>
 8008ee2:	f1c9 0e20 	rsb	lr, r9, #32
 8008ee6:	2200      	movs	r2, #0
 8008ee8:	e000      	b.n	8008eec <__lshift+0x60>
 8008eea:	4651      	mov	r1, sl
 8008eec:	681c      	ldr	r4, [r3, #0]
 8008eee:	468a      	mov	sl, r1
 8008ef0:	fa04 f409 	lsl.w	r4, r4, r9
 8008ef4:	4314      	orrs	r4, r2
 8008ef6:	f84a 4b04 	str.w	r4, [sl], #4
 8008efa:	f853 2b04 	ldr.w	r2, [r3], #4
 8008efe:	4563      	cmp	r3, ip
 8008f00:	fa22 f20e 	lsr.w	r2, r2, lr
 8008f04:	d3f1      	bcc.n	8008eea <__lshift+0x5e>
 8008f06:	604a      	str	r2, [r1, #4]
 8008f08:	b10a      	cbz	r2, 8008f0e <__lshift+0x82>
 8008f0a:	f108 0502 	add.w	r5, r8, #2
 8008f0e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008f10:	6872      	ldr	r2, [r6, #4]
 8008f12:	3d01      	subs	r5, #1
 8008f14:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008f18:	6105      	str	r5, [r0, #16]
 8008f1a:	6031      	str	r1, [r6, #0]
 8008f1c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8008f20:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008f24:	3904      	subs	r1, #4
 8008f26:	f853 2b04 	ldr.w	r2, [r3], #4
 8008f2a:	f841 2f04 	str.w	r2, [r1, #4]!
 8008f2e:	459c      	cmp	ip, r3
 8008f30:	d8f9      	bhi.n	8008f26 <__lshift+0x9a>
 8008f32:	e7ec      	b.n	8008f0e <__lshift+0x82>
 8008f34:	4619      	mov	r1, r3
 8008f36:	e7cc      	b.n	8008ed2 <__lshift+0x46>

08008f38 <__mcmp>:
 8008f38:	b430      	push	{r4, r5}
 8008f3a:	690b      	ldr	r3, [r1, #16]
 8008f3c:	4605      	mov	r5, r0
 8008f3e:	6900      	ldr	r0, [r0, #16]
 8008f40:	1ac0      	subs	r0, r0, r3
 8008f42:	d10f      	bne.n	8008f64 <__mcmp+0x2c>
 8008f44:	009b      	lsls	r3, r3, #2
 8008f46:	3514      	adds	r5, #20
 8008f48:	3114      	adds	r1, #20
 8008f4a:	4419      	add	r1, r3
 8008f4c:	442b      	add	r3, r5
 8008f4e:	e001      	b.n	8008f54 <__mcmp+0x1c>
 8008f50:	429d      	cmp	r5, r3
 8008f52:	d207      	bcs.n	8008f64 <__mcmp+0x2c>
 8008f54:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8008f58:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8008f5c:	4294      	cmp	r4, r2
 8008f5e:	d0f7      	beq.n	8008f50 <__mcmp+0x18>
 8008f60:	d302      	bcc.n	8008f68 <__mcmp+0x30>
 8008f62:	2001      	movs	r0, #1
 8008f64:	bc30      	pop	{r4, r5}
 8008f66:	4770      	bx	lr
 8008f68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008f6c:	e7fa      	b.n	8008f64 <__mcmp+0x2c>
 8008f6e:	bf00      	nop

08008f70 <__mdiff>:
 8008f70:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008f74:	6913      	ldr	r3, [r2, #16]
 8008f76:	690d      	ldr	r5, [r1, #16]
 8008f78:	1aed      	subs	r5, r5, r3
 8008f7a:	2d00      	cmp	r5, #0
 8008f7c:	460e      	mov	r6, r1
 8008f7e:	4690      	mov	r8, r2
 8008f80:	f101 0414 	add.w	r4, r1, #20
 8008f84:	f102 0714 	add.w	r7, r2, #20
 8008f88:	d114      	bne.n	8008fb4 <__mdiff+0x44>
 8008f8a:	009b      	lsls	r3, r3, #2
 8008f8c:	18e2      	adds	r2, r4, r3
 8008f8e:	443b      	add	r3, r7
 8008f90:	e001      	b.n	8008f96 <__mdiff+0x26>
 8008f92:	42a2      	cmp	r2, r4
 8008f94:	d959      	bls.n	800904a <__mdiff+0xda>
 8008f96:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8008f9a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8008f9e:	458c      	cmp	ip, r1
 8008fa0:	d0f7      	beq.n	8008f92 <__mdiff+0x22>
 8008fa2:	d209      	bcs.n	8008fb8 <__mdiff+0x48>
 8008fa4:	4622      	mov	r2, r4
 8008fa6:	4633      	mov	r3, r6
 8008fa8:	463c      	mov	r4, r7
 8008faa:	4646      	mov	r6, r8
 8008fac:	4617      	mov	r7, r2
 8008fae:	4698      	mov	r8, r3
 8008fb0:	2501      	movs	r5, #1
 8008fb2:	e001      	b.n	8008fb8 <__mdiff+0x48>
 8008fb4:	dbf6      	blt.n	8008fa4 <__mdiff+0x34>
 8008fb6:	2500      	movs	r5, #0
 8008fb8:	6871      	ldr	r1, [r6, #4]
 8008fba:	f7ff fda7 	bl	8008b0c <_Balloc>
 8008fbe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8008fc2:	6936      	ldr	r6, [r6, #16]
 8008fc4:	60c5      	str	r5, [r0, #12]
 8008fc6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8008fca:	46bc      	mov	ip, r7
 8008fcc:	f100 0514 	add.w	r5, r0, #20
 8008fd0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8008fd4:	2300      	movs	r3, #0
 8008fd6:	f85c 1b04 	ldr.w	r1, [ip], #4
 8008fda:	f854 8b04 	ldr.w	r8, [r4], #4
 8008fde:	b28a      	uxth	r2, r1
 8008fe0:	fa13 f388 	uxtah	r3, r3, r8
 8008fe4:	0c09      	lsrs	r1, r1, #16
 8008fe6:	1a9a      	subs	r2, r3, r2
 8008fe8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8008fec:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8008ff0:	b292      	uxth	r2, r2
 8008ff2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8008ff6:	45e6      	cmp	lr, ip
 8008ff8:	f845 2b04 	str.w	r2, [r5], #4
 8008ffc:	ea4f 4323 	mov.w	r3, r3, asr #16
 8009000:	d8e9      	bhi.n	8008fd6 <__mdiff+0x66>
 8009002:	42a7      	cmp	r7, r4
 8009004:	d917      	bls.n	8009036 <__mdiff+0xc6>
 8009006:	46ae      	mov	lr, r5
 8009008:	46a4      	mov	ip, r4
 800900a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800900e:	fa13 f382 	uxtah	r3, r3, r2
 8009012:	1419      	asrs	r1, r3, #16
 8009014:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8009018:	b29b      	uxth	r3, r3
 800901a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800901e:	4567      	cmp	r7, ip
 8009020:	f84e 2b04 	str.w	r2, [lr], #4
 8009024:	ea4f 4321 	mov.w	r3, r1, asr #16
 8009028:	d8ef      	bhi.n	800900a <__mdiff+0x9a>
 800902a:	43e4      	mvns	r4, r4
 800902c:	4427      	add	r7, r4
 800902e:	f027 0703 	bic.w	r7, r7, #3
 8009032:	3704      	adds	r7, #4
 8009034:	443d      	add	r5, r7
 8009036:	3d04      	subs	r5, #4
 8009038:	b922      	cbnz	r2, 8009044 <__mdiff+0xd4>
 800903a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800903e:	3e01      	subs	r6, #1
 8009040:	2b00      	cmp	r3, #0
 8009042:	d0fa      	beq.n	800903a <__mdiff+0xca>
 8009044:	6106      	str	r6, [r0, #16]
 8009046:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800904a:	2100      	movs	r1, #0
 800904c:	f7ff fd5e 	bl	8008b0c <_Balloc>
 8009050:	2201      	movs	r2, #1
 8009052:	2300      	movs	r3, #0
 8009054:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8009058:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800905c <__d2b>:
 800905c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009060:	460f      	mov	r7, r1
 8009062:	b083      	sub	sp, #12
 8009064:	2101      	movs	r1, #1
 8009066:	ec55 4b10 	vmov	r4, r5, d0
 800906a:	4616      	mov	r6, r2
 800906c:	f7ff fd4e 	bl	8008b0c <_Balloc>
 8009070:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8009074:	4681      	mov	r9, r0
 8009076:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800907a:	f1b8 0f00 	cmp.w	r8, #0
 800907e:	d001      	beq.n	8009084 <__d2b+0x28>
 8009080:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009084:	2c00      	cmp	r4, #0
 8009086:	9301      	str	r3, [sp, #4]
 8009088:	d024      	beq.n	80090d4 <__d2b+0x78>
 800908a:	a802      	add	r0, sp, #8
 800908c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8009090:	f7ff fdcc 	bl	8008c2c <__lo0bits>
 8009094:	2800      	cmp	r0, #0
 8009096:	d136      	bne.n	8009106 <__d2b+0xaa>
 8009098:	e9dd 2300 	ldrd	r2, r3, [sp]
 800909c:	f8c9 2014 	str.w	r2, [r9, #20]
 80090a0:	2b00      	cmp	r3, #0
 80090a2:	bf0c      	ite	eq
 80090a4:	2101      	moveq	r1, #1
 80090a6:	2102      	movne	r1, #2
 80090a8:	f8c9 3018 	str.w	r3, [r9, #24]
 80090ac:	f8c9 1010 	str.w	r1, [r9, #16]
 80090b0:	f1b8 0f00 	cmp.w	r8, #0
 80090b4:	d11b      	bne.n	80090ee <__d2b+0x92>
 80090b6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80090ba:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80090be:	6038      	str	r0, [r7, #0]
 80090c0:	6918      	ldr	r0, [r3, #16]
 80090c2:	f7ff fd93 	bl	8008bec <__hi0bits>
 80090c6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80090ca:	6030      	str	r0, [r6, #0]
 80090cc:	4648      	mov	r0, r9
 80090ce:	b003      	add	sp, #12
 80090d0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80090d4:	a801      	add	r0, sp, #4
 80090d6:	f7ff fda9 	bl	8008c2c <__lo0bits>
 80090da:	9b01      	ldr	r3, [sp, #4]
 80090dc:	f8c9 3014 	str.w	r3, [r9, #20]
 80090e0:	2101      	movs	r1, #1
 80090e2:	3020      	adds	r0, #32
 80090e4:	f8c9 1010 	str.w	r1, [r9, #16]
 80090e8:	f1b8 0f00 	cmp.w	r8, #0
 80090ec:	d0e3      	beq.n	80090b6 <__d2b+0x5a>
 80090ee:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80090f2:	eb08 0300 	add.w	r3, r8, r0
 80090f6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80090fa:	603b      	str	r3, [r7, #0]
 80090fc:	6030      	str	r0, [r6, #0]
 80090fe:	4648      	mov	r0, r9
 8009100:	b003      	add	sp, #12
 8009102:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009106:	e9dd 1300 	ldrd	r1, r3, [sp]
 800910a:	f1c0 0220 	rsb	r2, r0, #32
 800910e:	fa03 f202 	lsl.w	r2, r3, r2
 8009112:	430a      	orrs	r2, r1
 8009114:	40c3      	lsrs	r3, r0
 8009116:	9301      	str	r3, [sp, #4]
 8009118:	f8c9 2014 	str.w	r2, [r9, #20]
 800911c:	e7c0      	b.n	80090a0 <__d2b+0x44>
 800911e:	bf00      	nop

08009120 <_realloc_r>:
 8009120:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009124:	4692      	mov	sl, r2
 8009126:	b083      	sub	sp, #12
 8009128:	2900      	cmp	r1, #0
 800912a:	f000 80a1 	beq.w	8009270 <_realloc_r+0x150>
 800912e:	460d      	mov	r5, r1
 8009130:	4680      	mov	r8, r0
 8009132:	f10a 040b 	add.w	r4, sl, #11
 8009136:	f7ff fcdd 	bl	8008af4 <__malloc_lock>
 800913a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800913e:	2c16      	cmp	r4, #22
 8009140:	f022 0603 	bic.w	r6, r2, #3
 8009144:	f1a5 0708 	sub.w	r7, r5, #8
 8009148:	d83e      	bhi.n	80091c8 <_realloc_r+0xa8>
 800914a:	2410      	movs	r4, #16
 800914c:	4621      	mov	r1, r4
 800914e:	45a2      	cmp	sl, r4
 8009150:	d83f      	bhi.n	80091d2 <_realloc_r+0xb2>
 8009152:	428e      	cmp	r6, r1
 8009154:	eb07 0906 	add.w	r9, r7, r6
 8009158:	da74      	bge.n	8009244 <_realloc_r+0x124>
 800915a:	4bc7      	ldr	r3, [pc, #796]	; (8009478 <_realloc_r+0x358>)
 800915c:	6898      	ldr	r0, [r3, #8]
 800915e:	4548      	cmp	r0, r9
 8009160:	f000 80aa 	beq.w	80092b8 <_realloc_r+0x198>
 8009164:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8009168:	f020 0301 	bic.w	r3, r0, #1
 800916c:	444b      	add	r3, r9
 800916e:	685b      	ldr	r3, [r3, #4]
 8009170:	07db      	lsls	r3, r3, #31
 8009172:	f140 8083 	bpl.w	800927c <_realloc_r+0x15c>
 8009176:	07d2      	lsls	r2, r2, #31
 8009178:	d534      	bpl.n	80091e4 <_realloc_r+0xc4>
 800917a:	4651      	mov	r1, sl
 800917c:	4640      	mov	r0, r8
 800917e:	f7ff f9b1 	bl	80084e4 <_malloc_r>
 8009182:	4682      	mov	sl, r0
 8009184:	b1e0      	cbz	r0, 80091c0 <_realloc_r+0xa0>
 8009186:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800918a:	f023 0301 	bic.w	r3, r3, #1
 800918e:	443b      	add	r3, r7
 8009190:	f1a0 0208 	sub.w	r2, r0, #8
 8009194:	4293      	cmp	r3, r2
 8009196:	f000 80f9 	beq.w	800938c <_realloc_r+0x26c>
 800919a:	1f32      	subs	r2, r6, #4
 800919c:	2a24      	cmp	r2, #36	; 0x24
 800919e:	f200 8107 	bhi.w	80093b0 <_realloc_r+0x290>
 80091a2:	2a13      	cmp	r2, #19
 80091a4:	6829      	ldr	r1, [r5, #0]
 80091a6:	f200 80e6 	bhi.w	8009376 <_realloc_r+0x256>
 80091aa:	4603      	mov	r3, r0
 80091ac:	462a      	mov	r2, r5
 80091ae:	6019      	str	r1, [r3, #0]
 80091b0:	6851      	ldr	r1, [r2, #4]
 80091b2:	6059      	str	r1, [r3, #4]
 80091b4:	6892      	ldr	r2, [r2, #8]
 80091b6:	609a      	str	r2, [r3, #8]
 80091b8:	4629      	mov	r1, r5
 80091ba:	4640      	mov	r0, r8
 80091bc:	f7fe fe68 	bl	8007e90 <_free_r>
 80091c0:	4640      	mov	r0, r8
 80091c2:	f7ff fc9d 	bl	8008b00 <__malloc_unlock>
 80091c6:	e04f      	b.n	8009268 <_realloc_r+0x148>
 80091c8:	f024 0407 	bic.w	r4, r4, #7
 80091cc:	2c00      	cmp	r4, #0
 80091ce:	4621      	mov	r1, r4
 80091d0:	dabd      	bge.n	800914e <_realloc_r+0x2e>
 80091d2:	f04f 0a00 	mov.w	sl, #0
 80091d6:	230c      	movs	r3, #12
 80091d8:	4650      	mov	r0, sl
 80091da:	f8c8 3000 	str.w	r3, [r8]
 80091de:	b003      	add	sp, #12
 80091e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80091e4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80091e8:	eba7 0b03 	sub.w	fp, r7, r3
 80091ec:	f8db 2004 	ldr.w	r2, [fp, #4]
 80091f0:	f022 0203 	bic.w	r2, r2, #3
 80091f4:	18b3      	adds	r3, r6, r2
 80091f6:	428b      	cmp	r3, r1
 80091f8:	dbbf      	blt.n	800917a <_realloc_r+0x5a>
 80091fa:	46da      	mov	sl, fp
 80091fc:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009200:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009204:	1f32      	subs	r2, r6, #4
 8009206:	2a24      	cmp	r2, #36	; 0x24
 8009208:	60c1      	str	r1, [r0, #12]
 800920a:	eb0b 0903 	add.w	r9, fp, r3
 800920e:	6088      	str	r0, [r1, #8]
 8009210:	f200 80c6 	bhi.w	80093a0 <_realloc_r+0x280>
 8009214:	2a13      	cmp	r2, #19
 8009216:	6829      	ldr	r1, [r5, #0]
 8009218:	f240 80c0 	bls.w	800939c <_realloc_r+0x27c>
 800921c:	f8cb 1008 	str.w	r1, [fp, #8]
 8009220:	6869      	ldr	r1, [r5, #4]
 8009222:	f8cb 100c 	str.w	r1, [fp, #12]
 8009226:	2a1b      	cmp	r2, #27
 8009228:	68a9      	ldr	r1, [r5, #8]
 800922a:	f200 80d8 	bhi.w	80093de <_realloc_r+0x2be>
 800922e:	f10b 0210 	add.w	r2, fp, #16
 8009232:	3508      	adds	r5, #8
 8009234:	6011      	str	r1, [r2, #0]
 8009236:	6869      	ldr	r1, [r5, #4]
 8009238:	6051      	str	r1, [r2, #4]
 800923a:	68a9      	ldr	r1, [r5, #8]
 800923c:	6091      	str	r1, [r2, #8]
 800923e:	461e      	mov	r6, r3
 8009240:	465f      	mov	r7, fp
 8009242:	4655      	mov	r5, sl
 8009244:	687b      	ldr	r3, [r7, #4]
 8009246:	1b32      	subs	r2, r6, r4
 8009248:	2a0f      	cmp	r2, #15
 800924a:	f003 0301 	and.w	r3, r3, #1
 800924e:	d822      	bhi.n	8009296 <_realloc_r+0x176>
 8009250:	4333      	orrs	r3, r6
 8009252:	607b      	str	r3, [r7, #4]
 8009254:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8009258:	f043 0301 	orr.w	r3, r3, #1
 800925c:	f8c9 3004 	str.w	r3, [r9, #4]
 8009260:	4640      	mov	r0, r8
 8009262:	f7ff fc4d 	bl	8008b00 <__malloc_unlock>
 8009266:	46aa      	mov	sl, r5
 8009268:	4650      	mov	r0, sl
 800926a:	b003      	add	sp, #12
 800926c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009270:	4611      	mov	r1, r2
 8009272:	b003      	add	sp, #12
 8009274:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009278:	f7ff b934 	b.w	80084e4 <_malloc_r>
 800927c:	f020 0003 	bic.w	r0, r0, #3
 8009280:	1833      	adds	r3, r6, r0
 8009282:	428b      	cmp	r3, r1
 8009284:	db61      	blt.n	800934a <_realloc_r+0x22a>
 8009286:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800928a:	461e      	mov	r6, r3
 800928c:	60ca      	str	r2, [r1, #12]
 800928e:	eb07 0903 	add.w	r9, r7, r3
 8009292:	6091      	str	r1, [r2, #8]
 8009294:	e7d6      	b.n	8009244 <_realloc_r+0x124>
 8009296:	1939      	adds	r1, r7, r4
 8009298:	4323      	orrs	r3, r4
 800929a:	f042 0201 	orr.w	r2, r2, #1
 800929e:	607b      	str	r3, [r7, #4]
 80092a0:	604a      	str	r2, [r1, #4]
 80092a2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80092a6:	f043 0301 	orr.w	r3, r3, #1
 80092aa:	3108      	adds	r1, #8
 80092ac:	f8c9 3004 	str.w	r3, [r9, #4]
 80092b0:	4640      	mov	r0, r8
 80092b2:	f7fe fded 	bl	8007e90 <_free_r>
 80092b6:	e7d3      	b.n	8009260 <_realloc_r+0x140>
 80092b8:	6840      	ldr	r0, [r0, #4]
 80092ba:	f020 0903 	bic.w	r9, r0, #3
 80092be:	44b1      	add	r9, r6
 80092c0:	f104 0010 	add.w	r0, r4, #16
 80092c4:	4581      	cmp	r9, r0
 80092c6:	da77      	bge.n	80093b8 <_realloc_r+0x298>
 80092c8:	07d2      	lsls	r2, r2, #31
 80092ca:	f53f af56 	bmi.w	800917a <_realloc_r+0x5a>
 80092ce:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80092d2:	eba7 0b02 	sub.w	fp, r7, r2
 80092d6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80092da:	f022 0203 	bic.w	r2, r2, #3
 80092de:	4491      	add	r9, r2
 80092e0:	4548      	cmp	r0, r9
 80092e2:	dc87      	bgt.n	80091f4 <_realloc_r+0xd4>
 80092e4:	46da      	mov	sl, fp
 80092e6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80092ea:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80092ee:	1f32      	subs	r2, r6, #4
 80092f0:	2a24      	cmp	r2, #36	; 0x24
 80092f2:	60c1      	str	r1, [r0, #12]
 80092f4:	6088      	str	r0, [r1, #8]
 80092f6:	f200 80a1 	bhi.w	800943c <_realloc_r+0x31c>
 80092fa:	2a13      	cmp	r2, #19
 80092fc:	6829      	ldr	r1, [r5, #0]
 80092fe:	f240 809b 	bls.w	8009438 <_realloc_r+0x318>
 8009302:	f8cb 1008 	str.w	r1, [fp, #8]
 8009306:	6869      	ldr	r1, [r5, #4]
 8009308:	f8cb 100c 	str.w	r1, [fp, #12]
 800930c:	2a1b      	cmp	r2, #27
 800930e:	68a9      	ldr	r1, [r5, #8]
 8009310:	f200 809b 	bhi.w	800944a <_realloc_r+0x32a>
 8009314:	f10b 0210 	add.w	r2, fp, #16
 8009318:	3508      	adds	r5, #8
 800931a:	6011      	str	r1, [r2, #0]
 800931c:	6869      	ldr	r1, [r5, #4]
 800931e:	6051      	str	r1, [r2, #4]
 8009320:	68a9      	ldr	r1, [r5, #8]
 8009322:	6091      	str	r1, [r2, #8]
 8009324:	eb0b 0104 	add.w	r1, fp, r4
 8009328:	eba9 0204 	sub.w	r2, r9, r4
 800932c:	f042 0201 	orr.w	r2, r2, #1
 8009330:	6099      	str	r1, [r3, #8]
 8009332:	604a      	str	r2, [r1, #4]
 8009334:	f8db 3004 	ldr.w	r3, [fp, #4]
 8009338:	f003 0301 	and.w	r3, r3, #1
 800933c:	431c      	orrs	r4, r3
 800933e:	4640      	mov	r0, r8
 8009340:	f8cb 4004 	str.w	r4, [fp, #4]
 8009344:	f7ff fbdc 	bl	8008b00 <__malloc_unlock>
 8009348:	e78e      	b.n	8009268 <_realloc_r+0x148>
 800934a:	07d3      	lsls	r3, r2, #31
 800934c:	f53f af15 	bmi.w	800917a <_realloc_r+0x5a>
 8009350:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009354:	eba7 0b03 	sub.w	fp, r7, r3
 8009358:	f8db 2004 	ldr.w	r2, [fp, #4]
 800935c:	f022 0203 	bic.w	r2, r2, #3
 8009360:	4410      	add	r0, r2
 8009362:	1983      	adds	r3, r0, r6
 8009364:	428b      	cmp	r3, r1
 8009366:	f6ff af45 	blt.w	80091f4 <_realloc_r+0xd4>
 800936a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800936e:	46da      	mov	sl, fp
 8009370:	60ca      	str	r2, [r1, #12]
 8009372:	6091      	str	r1, [r2, #8]
 8009374:	e742      	b.n	80091fc <_realloc_r+0xdc>
 8009376:	6001      	str	r1, [r0, #0]
 8009378:	686b      	ldr	r3, [r5, #4]
 800937a:	6043      	str	r3, [r0, #4]
 800937c:	2a1b      	cmp	r2, #27
 800937e:	d83a      	bhi.n	80093f6 <_realloc_r+0x2d6>
 8009380:	f105 0208 	add.w	r2, r5, #8
 8009384:	f100 0308 	add.w	r3, r0, #8
 8009388:	68a9      	ldr	r1, [r5, #8]
 800938a:	e710      	b.n	80091ae <_realloc_r+0x8e>
 800938c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009390:	f023 0303 	bic.w	r3, r3, #3
 8009394:	441e      	add	r6, r3
 8009396:	eb07 0906 	add.w	r9, r7, r6
 800939a:	e753      	b.n	8009244 <_realloc_r+0x124>
 800939c:	4652      	mov	r2, sl
 800939e:	e749      	b.n	8009234 <_realloc_r+0x114>
 80093a0:	4629      	mov	r1, r5
 80093a2:	4650      	mov	r0, sl
 80093a4:	461e      	mov	r6, r3
 80093a6:	465f      	mov	r7, fp
 80093a8:	f7ff fb40 	bl	8008a2c <memmove>
 80093ac:	4655      	mov	r5, sl
 80093ae:	e749      	b.n	8009244 <_realloc_r+0x124>
 80093b0:	4629      	mov	r1, r5
 80093b2:	f7ff fb3b 	bl	8008a2c <memmove>
 80093b6:	e6ff      	b.n	80091b8 <_realloc_r+0x98>
 80093b8:	4427      	add	r7, r4
 80093ba:	eba9 0904 	sub.w	r9, r9, r4
 80093be:	f049 0201 	orr.w	r2, r9, #1
 80093c2:	609f      	str	r7, [r3, #8]
 80093c4:	607a      	str	r2, [r7, #4]
 80093c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80093ca:	f003 0301 	and.w	r3, r3, #1
 80093ce:	431c      	orrs	r4, r3
 80093d0:	4640      	mov	r0, r8
 80093d2:	f845 4c04 	str.w	r4, [r5, #-4]
 80093d6:	f7ff fb93 	bl	8008b00 <__malloc_unlock>
 80093da:	46aa      	mov	sl, r5
 80093dc:	e744      	b.n	8009268 <_realloc_r+0x148>
 80093de:	f8cb 1010 	str.w	r1, [fp, #16]
 80093e2:	68e9      	ldr	r1, [r5, #12]
 80093e4:	f8cb 1014 	str.w	r1, [fp, #20]
 80093e8:	2a24      	cmp	r2, #36	; 0x24
 80093ea:	d010      	beq.n	800940e <_realloc_r+0x2ee>
 80093ec:	6929      	ldr	r1, [r5, #16]
 80093ee:	f10b 0218 	add.w	r2, fp, #24
 80093f2:	3510      	adds	r5, #16
 80093f4:	e71e      	b.n	8009234 <_realloc_r+0x114>
 80093f6:	68ab      	ldr	r3, [r5, #8]
 80093f8:	6083      	str	r3, [r0, #8]
 80093fa:	68eb      	ldr	r3, [r5, #12]
 80093fc:	60c3      	str	r3, [r0, #12]
 80093fe:	2a24      	cmp	r2, #36	; 0x24
 8009400:	d010      	beq.n	8009424 <_realloc_r+0x304>
 8009402:	f105 0210 	add.w	r2, r5, #16
 8009406:	f100 0310 	add.w	r3, r0, #16
 800940a:	6929      	ldr	r1, [r5, #16]
 800940c:	e6cf      	b.n	80091ae <_realloc_r+0x8e>
 800940e:	692a      	ldr	r2, [r5, #16]
 8009410:	f8cb 2018 	str.w	r2, [fp, #24]
 8009414:	696a      	ldr	r2, [r5, #20]
 8009416:	f8cb 201c 	str.w	r2, [fp, #28]
 800941a:	69a9      	ldr	r1, [r5, #24]
 800941c:	f10b 0220 	add.w	r2, fp, #32
 8009420:	3518      	adds	r5, #24
 8009422:	e707      	b.n	8009234 <_realloc_r+0x114>
 8009424:	692b      	ldr	r3, [r5, #16]
 8009426:	6103      	str	r3, [r0, #16]
 8009428:	696b      	ldr	r3, [r5, #20]
 800942a:	6143      	str	r3, [r0, #20]
 800942c:	69a9      	ldr	r1, [r5, #24]
 800942e:	f105 0218 	add.w	r2, r5, #24
 8009432:	f100 0318 	add.w	r3, r0, #24
 8009436:	e6ba      	b.n	80091ae <_realloc_r+0x8e>
 8009438:	4652      	mov	r2, sl
 800943a:	e76e      	b.n	800931a <_realloc_r+0x1fa>
 800943c:	4629      	mov	r1, r5
 800943e:	4650      	mov	r0, sl
 8009440:	9301      	str	r3, [sp, #4]
 8009442:	f7ff faf3 	bl	8008a2c <memmove>
 8009446:	9b01      	ldr	r3, [sp, #4]
 8009448:	e76c      	b.n	8009324 <_realloc_r+0x204>
 800944a:	f8cb 1010 	str.w	r1, [fp, #16]
 800944e:	68e9      	ldr	r1, [r5, #12]
 8009450:	f8cb 1014 	str.w	r1, [fp, #20]
 8009454:	2a24      	cmp	r2, #36	; 0x24
 8009456:	d004      	beq.n	8009462 <_realloc_r+0x342>
 8009458:	6929      	ldr	r1, [r5, #16]
 800945a:	f10b 0218 	add.w	r2, fp, #24
 800945e:	3510      	adds	r5, #16
 8009460:	e75b      	b.n	800931a <_realloc_r+0x1fa>
 8009462:	692a      	ldr	r2, [r5, #16]
 8009464:	f8cb 2018 	str.w	r2, [fp, #24]
 8009468:	696a      	ldr	r2, [r5, #20]
 800946a:	f8cb 201c 	str.w	r2, [fp, #28]
 800946e:	69a9      	ldr	r1, [r5, #24]
 8009470:	f10b 0220 	add.w	r2, fp, #32
 8009474:	3518      	adds	r5, #24
 8009476:	e750      	b.n	800931a <_realloc_r+0x1fa>
 8009478:	2000044c 	.word	0x2000044c

0800947c <frexp>:
 800947c:	ec53 2b10 	vmov	r2, r3, d0
 8009480:	b570      	push	{r4, r5, r6, lr}
 8009482:	4e16      	ldr	r6, [pc, #88]	; (80094dc <frexp+0x60>)
 8009484:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8009488:	2500      	movs	r5, #0
 800948a:	42b1      	cmp	r1, r6
 800948c:	4604      	mov	r4, r0
 800948e:	6005      	str	r5, [r0, #0]
 8009490:	dc21      	bgt.n	80094d6 <frexp+0x5a>
 8009492:	ee10 6a10 	vmov	r6, s0
 8009496:	430e      	orrs	r6, r1
 8009498:	d01d      	beq.n	80094d6 <frexp+0x5a>
 800949a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800949e:	4618      	mov	r0, r3
 80094a0:	da0c      	bge.n	80094bc <frexp+0x40>
 80094a2:	4619      	mov	r1, r3
 80094a4:	2200      	movs	r2, #0
 80094a6:	ee10 0a10 	vmov	r0, s0
 80094aa:	4b0d      	ldr	r3, [pc, #52]	; (80094e0 <frexp+0x64>)
 80094ac:	f7f7 f864 	bl	8000578 <__aeabi_dmul>
 80094b0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80094b4:	4602      	mov	r2, r0
 80094b6:	4608      	mov	r0, r1
 80094b8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80094bc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80094c0:	1509      	asrs	r1, r1, #20
 80094c2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80094c6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80094ca:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80094ce:	4429      	add	r1, r5
 80094d0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80094d4:	6021      	str	r1, [r4, #0]
 80094d6:	ec43 2b10 	vmov	d0, r2, r3
 80094da:	bd70      	pop	{r4, r5, r6, pc}
 80094dc:	7fefffff 	.word	0x7fefffff
 80094e0:	43500000 	.word	0x43500000

080094e4 <_sbrk_r>:
 80094e4:	b538      	push	{r3, r4, r5, lr}
 80094e6:	4c07      	ldr	r4, [pc, #28]	; (8009504 <_sbrk_r+0x20>)
 80094e8:	2300      	movs	r3, #0
 80094ea:	4605      	mov	r5, r0
 80094ec:	4608      	mov	r0, r1
 80094ee:	6023      	str	r3, [r4, #0]
 80094f0:	f7f9 faa5 	bl	8002a3e <_sbrk>
 80094f4:	1c43      	adds	r3, r0, #1
 80094f6:	d000      	beq.n	80094fa <_sbrk_r+0x16>
 80094f8:	bd38      	pop	{r3, r4, r5, pc}
 80094fa:	6823      	ldr	r3, [r4, #0]
 80094fc:	2b00      	cmp	r3, #0
 80094fe:	d0fb      	beq.n	80094f8 <_sbrk_r+0x14>
 8009500:	602b      	str	r3, [r5, #0]
 8009502:	bd38      	pop	{r3, r4, r5, pc}
 8009504:	20000b60 	.word	0x20000b60

08009508 <__sread>:
 8009508:	b510      	push	{r4, lr}
 800950a:	460c      	mov	r4, r1
 800950c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009510:	f000 fabc 	bl	8009a8c <_read_r>
 8009514:	2800      	cmp	r0, #0
 8009516:	db03      	blt.n	8009520 <__sread+0x18>
 8009518:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800951a:	4403      	add	r3, r0
 800951c:	6523      	str	r3, [r4, #80]	; 0x50
 800951e:	bd10      	pop	{r4, pc}
 8009520:	89a3      	ldrh	r3, [r4, #12]
 8009522:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8009526:	81a3      	strh	r3, [r4, #12]
 8009528:	bd10      	pop	{r4, pc}
 800952a:	bf00      	nop

0800952c <__swrite>:
 800952c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009530:	4616      	mov	r6, r2
 8009532:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8009536:	461f      	mov	r7, r3
 8009538:	05d3      	lsls	r3, r2, #23
 800953a:	460c      	mov	r4, r1
 800953c:	4605      	mov	r5, r0
 800953e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009542:	d507      	bpl.n	8009554 <__swrite+0x28>
 8009544:	2200      	movs	r2, #0
 8009546:	2302      	movs	r3, #2
 8009548:	f000 fa74 	bl	8009a34 <_lseek_r>
 800954c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009550:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009554:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8009558:	81a2      	strh	r2, [r4, #12]
 800955a:	463b      	mov	r3, r7
 800955c:	4632      	mov	r2, r6
 800955e:	4628      	mov	r0, r5
 8009560:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8009564:	f000 b88c 	b.w	8009680 <_write_r>

08009568 <__sseek>:
 8009568:	b510      	push	{r4, lr}
 800956a:	460c      	mov	r4, r1
 800956c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009570:	f000 fa60 	bl	8009a34 <_lseek_r>
 8009574:	89a3      	ldrh	r3, [r4, #12]
 8009576:	1c42      	adds	r2, r0, #1
 8009578:	bf0e      	itee	eq
 800957a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800957e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8009582:	6520      	strne	r0, [r4, #80]	; 0x50
 8009584:	81a3      	strh	r3, [r4, #12]
 8009586:	bd10      	pop	{r4, pc}

08009588 <__sclose>:
 8009588:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800958c:	f000 b922 	b.w	80097d4 <_close_r>

08009590 <strncpy>:
 8009590:	ea40 0301 	orr.w	r3, r0, r1
 8009594:	079b      	lsls	r3, r3, #30
 8009596:	b470      	push	{r4, r5, r6}
 8009598:	d12a      	bne.n	80095f0 <strncpy+0x60>
 800959a:	2a03      	cmp	r2, #3
 800959c:	d928      	bls.n	80095f0 <strncpy+0x60>
 800959e:	460c      	mov	r4, r1
 80095a0:	4603      	mov	r3, r0
 80095a2:	4621      	mov	r1, r4
 80095a4:	f854 6b04 	ldr.w	r6, [r4], #4
 80095a8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80095ac:	ea25 0506 	bic.w	r5, r5, r6
 80095b0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80095b4:	d106      	bne.n	80095c4 <strncpy+0x34>
 80095b6:	3a04      	subs	r2, #4
 80095b8:	2a03      	cmp	r2, #3
 80095ba:	f843 6b04 	str.w	r6, [r3], #4
 80095be:	4621      	mov	r1, r4
 80095c0:	d8ef      	bhi.n	80095a2 <strncpy+0x12>
 80095c2:	b19a      	cbz	r2, 80095ec <strncpy+0x5c>
 80095c4:	780c      	ldrb	r4, [r1, #0]
 80095c6:	701c      	strb	r4, [r3, #0]
 80095c8:	3a01      	subs	r2, #1
 80095ca:	3301      	adds	r3, #1
 80095cc:	b13c      	cbz	r4, 80095de <strncpy+0x4e>
 80095ce:	b16a      	cbz	r2, 80095ec <strncpy+0x5c>
 80095d0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80095d4:	f803 4b01 	strb.w	r4, [r3], #1
 80095d8:	3a01      	subs	r2, #1
 80095da:	2c00      	cmp	r4, #0
 80095dc:	d1f7      	bne.n	80095ce <strncpy+0x3e>
 80095de:	b12a      	cbz	r2, 80095ec <strncpy+0x5c>
 80095e0:	441a      	add	r2, r3
 80095e2:	2100      	movs	r1, #0
 80095e4:	f803 1b01 	strb.w	r1, [r3], #1
 80095e8:	4293      	cmp	r3, r2
 80095ea:	d1fb      	bne.n	80095e4 <strncpy+0x54>
 80095ec:	bc70      	pop	{r4, r5, r6}
 80095ee:	4770      	bx	lr
 80095f0:	4603      	mov	r3, r0
 80095f2:	e7e6      	b.n	80095c2 <strncpy+0x32>

080095f4 <__sprint_r.part.0>:
 80095f4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80095f8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80095fa:	049c      	lsls	r4, r3, #18
 80095fc:	4692      	mov	sl, r2
 80095fe:	d52d      	bpl.n	800965c <__sprint_r.part.0+0x68>
 8009600:	6893      	ldr	r3, [r2, #8]
 8009602:	6812      	ldr	r2, [r2, #0]
 8009604:	b343      	cbz	r3, 8009658 <__sprint_r.part.0+0x64>
 8009606:	460e      	mov	r6, r1
 8009608:	4607      	mov	r7, r0
 800960a:	f102 0908 	add.w	r9, r2, #8
 800960e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8009612:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8009616:	d015      	beq.n	8009644 <__sprint_r.part.0+0x50>
 8009618:	3d04      	subs	r5, #4
 800961a:	2400      	movs	r4, #0
 800961c:	e001      	b.n	8009622 <__sprint_r.part.0+0x2e>
 800961e:	45a0      	cmp	r8, r4
 8009620:	d00e      	beq.n	8009640 <__sprint_r.part.0+0x4c>
 8009622:	4632      	mov	r2, r6
 8009624:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8009628:	4638      	mov	r0, r7
 800962a:	f000 f99d 	bl	8009968 <_fputwc_r>
 800962e:	1c43      	adds	r3, r0, #1
 8009630:	f104 0401 	add.w	r4, r4, #1
 8009634:	d1f3      	bne.n	800961e <__sprint_r.part.0+0x2a>
 8009636:	2300      	movs	r3, #0
 8009638:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800963c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009640:	f8da 3008 	ldr.w	r3, [sl, #8]
 8009644:	f02b 0b03 	bic.w	fp, fp, #3
 8009648:	eba3 030b 	sub.w	r3, r3, fp
 800964c:	f8ca 3008 	str.w	r3, [sl, #8]
 8009650:	f109 0908 	add.w	r9, r9, #8
 8009654:	2b00      	cmp	r3, #0
 8009656:	d1da      	bne.n	800960e <__sprint_r.part.0+0x1a>
 8009658:	2000      	movs	r0, #0
 800965a:	e7ec      	b.n	8009636 <__sprint_r.part.0+0x42>
 800965c:	f7fe fd0c 	bl	8008078 <__sfvwrite_r>
 8009660:	2300      	movs	r3, #0
 8009662:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8009666:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800966a:	bf00      	nop

0800966c <__sprint_r>:
 800966c:	6893      	ldr	r3, [r2, #8]
 800966e:	b10b      	cbz	r3, 8009674 <__sprint_r+0x8>
 8009670:	f7ff bfc0 	b.w	80095f4 <__sprint_r.part.0>
 8009674:	b410      	push	{r4}
 8009676:	4618      	mov	r0, r3
 8009678:	6053      	str	r3, [r2, #4]
 800967a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800967e:	4770      	bx	lr

08009680 <_write_r>:
 8009680:	b570      	push	{r4, r5, r6, lr}
 8009682:	460d      	mov	r5, r1
 8009684:	4c08      	ldr	r4, [pc, #32]	; (80096a8 <_write_r+0x28>)
 8009686:	4611      	mov	r1, r2
 8009688:	4606      	mov	r6, r0
 800968a:	461a      	mov	r2, r3
 800968c:	4628      	mov	r0, r5
 800968e:	2300      	movs	r3, #0
 8009690:	6023      	str	r3, [r4, #0]
 8009692:	f7f9 f9c1 	bl	8002a18 <_write>
 8009696:	1c43      	adds	r3, r0, #1
 8009698:	d000      	beq.n	800969c <_write_r+0x1c>
 800969a:	bd70      	pop	{r4, r5, r6, pc}
 800969c:	6823      	ldr	r3, [r4, #0]
 800969e:	2b00      	cmp	r3, #0
 80096a0:	d0fb      	beq.n	800969a <_write_r+0x1a>
 80096a2:	6033      	str	r3, [r6, #0]
 80096a4:	bd70      	pop	{r4, r5, r6, pc}
 80096a6:	bf00      	nop
 80096a8:	20000b60 	.word	0x20000b60

080096ac <__register_exitproc>:
 80096ac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80096b0:	4d2b      	ldr	r5, [pc, #172]	; (8009760 <__register_exitproc+0xb4>)
 80096b2:	4606      	mov	r6, r0
 80096b4:	6828      	ldr	r0, [r5, #0]
 80096b6:	4698      	mov	r8, r3
 80096b8:	460f      	mov	r7, r1
 80096ba:	4691      	mov	r9, r2
 80096bc:	f7fe fe96 	bl	80083ec <__retarget_lock_acquire_recursive>
 80096c0:	4b28      	ldr	r3, [pc, #160]	; (8009764 <__register_exitproc+0xb8>)
 80096c2:	681c      	ldr	r4, [r3, #0]
 80096c4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80096c8:	2b00      	cmp	r3, #0
 80096ca:	d03d      	beq.n	8009748 <__register_exitproc+0x9c>
 80096cc:	685a      	ldr	r2, [r3, #4]
 80096ce:	2a1f      	cmp	r2, #31
 80096d0:	dc0d      	bgt.n	80096ee <__register_exitproc+0x42>
 80096d2:	f102 0c01 	add.w	ip, r2, #1
 80096d6:	bb16      	cbnz	r6, 800971e <__register_exitproc+0x72>
 80096d8:	3202      	adds	r2, #2
 80096da:	f8c3 c004 	str.w	ip, [r3, #4]
 80096de:	6828      	ldr	r0, [r5, #0]
 80096e0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80096e4:	f7fe fe84 	bl	80083f0 <__retarget_lock_release_recursive>
 80096e8:	2000      	movs	r0, #0
 80096ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80096ee:	4b1e      	ldr	r3, [pc, #120]	; (8009768 <__register_exitproc+0xbc>)
 80096f0:	b37b      	cbz	r3, 8009752 <__register_exitproc+0xa6>
 80096f2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80096f6:	f3af 8000 	nop.w
 80096fa:	4603      	mov	r3, r0
 80096fc:	b348      	cbz	r0, 8009752 <__register_exitproc+0xa6>
 80096fe:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8009702:	2100      	movs	r1, #0
 8009704:	e9c0 2100 	strd	r2, r1, [r0]
 8009708:	f04f 0c01 	mov.w	ip, #1
 800970c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8009710:	460a      	mov	r2, r1
 8009712:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8009716:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800971a:	2e00      	cmp	r6, #0
 800971c:	d0dc      	beq.n	80096d8 <__register_exitproc+0x2c>
 800971e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8009722:	2401      	movs	r4, #1
 8009724:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8009728:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800972c:	4094      	lsls	r4, r2
 800972e:	4320      	orrs	r0, r4
 8009730:	2e02      	cmp	r6, #2
 8009732:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8009736:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800973a:	d1cd      	bne.n	80096d8 <__register_exitproc+0x2c>
 800973c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8009740:	430c      	orrs	r4, r1
 8009742:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8009746:	e7c7      	b.n	80096d8 <__register_exitproc+0x2c>
 8009748:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800974c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8009750:	e7bc      	b.n	80096cc <__register_exitproc+0x20>
 8009752:	6828      	ldr	r0, [r5, #0]
 8009754:	f7fe fe4c 	bl	80083f0 <__retarget_lock_release_recursive>
 8009758:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800975c:	e7c5      	b.n	80096ea <__register_exitproc+0x3e>
 800975e:	bf00      	nop
 8009760:	20000448 	.word	0x20000448
 8009764:	08009f60 	.word	0x08009f60
 8009768:	00000000 	.word	0x00000000

0800976c <_calloc_r>:
 800976c:	b510      	push	{r4, lr}
 800976e:	fb02 f101 	mul.w	r1, r2, r1
 8009772:	f7fe feb7 	bl	80084e4 <_malloc_r>
 8009776:	4604      	mov	r4, r0
 8009778:	b1d8      	cbz	r0, 80097b2 <_calloc_r+0x46>
 800977a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800977e:	f022 0203 	bic.w	r2, r2, #3
 8009782:	3a04      	subs	r2, #4
 8009784:	2a24      	cmp	r2, #36	; 0x24
 8009786:	d81d      	bhi.n	80097c4 <_calloc_r+0x58>
 8009788:	2a13      	cmp	r2, #19
 800978a:	d914      	bls.n	80097b6 <_calloc_r+0x4a>
 800978c:	2300      	movs	r3, #0
 800978e:	2a1b      	cmp	r2, #27
 8009790:	e9c0 3300 	strd	r3, r3, [r0]
 8009794:	d91b      	bls.n	80097ce <_calloc_r+0x62>
 8009796:	2a24      	cmp	r2, #36	; 0x24
 8009798:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800979c:	bf0a      	itet	eq
 800979e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80097a2:	f100 0210 	addne.w	r2, r0, #16
 80097a6:	f100 0218 	addeq.w	r2, r0, #24
 80097aa:	2300      	movs	r3, #0
 80097ac:	e9c2 3300 	strd	r3, r3, [r2]
 80097b0:	6093      	str	r3, [r2, #8]
 80097b2:	4620      	mov	r0, r4
 80097b4:	bd10      	pop	{r4, pc}
 80097b6:	4602      	mov	r2, r0
 80097b8:	2300      	movs	r3, #0
 80097ba:	e9c2 3300 	strd	r3, r3, [r2]
 80097be:	6093      	str	r3, [r2, #8]
 80097c0:	4620      	mov	r0, r4
 80097c2:	bd10      	pop	{r4, pc}
 80097c4:	2100      	movs	r1, #0
 80097c6:	f7fb fb6d 	bl	8004ea4 <memset>
 80097ca:	4620      	mov	r0, r4
 80097cc:	bd10      	pop	{r4, pc}
 80097ce:	f100 0208 	add.w	r2, r0, #8
 80097d2:	e7f1      	b.n	80097b8 <_calloc_r+0x4c>

080097d4 <_close_r>:
 80097d4:	b538      	push	{r3, r4, r5, lr}
 80097d6:	4c07      	ldr	r4, [pc, #28]	; (80097f4 <_close_r+0x20>)
 80097d8:	2300      	movs	r3, #0
 80097da:	4605      	mov	r5, r0
 80097dc:	4608      	mov	r0, r1
 80097de:	6023      	str	r3, [r4, #0]
 80097e0:	f7f9 f949 	bl	8002a76 <_close>
 80097e4:	1c43      	adds	r3, r0, #1
 80097e6:	d000      	beq.n	80097ea <_close_r+0x16>
 80097e8:	bd38      	pop	{r3, r4, r5, pc}
 80097ea:	6823      	ldr	r3, [r4, #0]
 80097ec:	2b00      	cmp	r3, #0
 80097ee:	d0fb      	beq.n	80097e8 <_close_r+0x14>
 80097f0:	602b      	str	r3, [r5, #0]
 80097f2:	bd38      	pop	{r3, r4, r5, pc}
 80097f4:	20000b60 	.word	0x20000b60

080097f8 <_fclose_r>:
 80097f8:	b570      	push	{r4, r5, r6, lr}
 80097fa:	2900      	cmp	r1, #0
 80097fc:	d048      	beq.n	8009890 <_fclose_r+0x98>
 80097fe:	4605      	mov	r5, r0
 8009800:	460c      	mov	r4, r1
 8009802:	b110      	cbz	r0, 800980a <_fclose_r+0x12>
 8009804:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009806:	2b00      	cmp	r3, #0
 8009808:	d048      	beq.n	800989c <_fclose_r+0xa4>
 800980a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800980c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009810:	07d0      	lsls	r0, r2, #31
 8009812:	d440      	bmi.n	8009896 <_fclose_r+0x9e>
 8009814:	0599      	lsls	r1, r3, #22
 8009816:	d530      	bpl.n	800987a <_fclose_r+0x82>
 8009818:	4621      	mov	r1, r4
 800981a:	4628      	mov	r0, r5
 800981c:	f7fe f990 	bl	8007b40 <__sflush_r>
 8009820:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8009822:	4606      	mov	r6, r0
 8009824:	b133      	cbz	r3, 8009834 <_fclose_r+0x3c>
 8009826:	69e1      	ldr	r1, [r4, #28]
 8009828:	4628      	mov	r0, r5
 800982a:	4798      	blx	r3
 800982c:	2800      	cmp	r0, #0
 800982e:	bfb8      	it	lt
 8009830:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8009834:	89a3      	ldrh	r3, [r4, #12]
 8009836:	061a      	lsls	r2, r3, #24
 8009838:	d43c      	bmi.n	80098b4 <_fclose_r+0xbc>
 800983a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800983c:	b141      	cbz	r1, 8009850 <_fclose_r+0x58>
 800983e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8009842:	4299      	cmp	r1, r3
 8009844:	d002      	beq.n	800984c <_fclose_r+0x54>
 8009846:	4628      	mov	r0, r5
 8009848:	f7fe fb22 	bl	8007e90 <_free_r>
 800984c:	2300      	movs	r3, #0
 800984e:	6323      	str	r3, [r4, #48]	; 0x30
 8009850:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8009852:	b121      	cbz	r1, 800985e <_fclose_r+0x66>
 8009854:	4628      	mov	r0, r5
 8009856:	f7fe fb1b 	bl	8007e90 <_free_r>
 800985a:	2300      	movs	r3, #0
 800985c:	6463      	str	r3, [r4, #68]	; 0x44
 800985e:	f7fe faa1 	bl	8007da4 <__sfp_lock_acquire>
 8009862:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009864:	2200      	movs	r2, #0
 8009866:	07db      	lsls	r3, r3, #31
 8009868:	81a2      	strh	r2, [r4, #12]
 800986a:	d51f      	bpl.n	80098ac <_fclose_r+0xb4>
 800986c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800986e:	f7fe fdbb 	bl	80083e8 <__retarget_lock_close_recursive>
 8009872:	f7fe fa9d 	bl	8007db0 <__sfp_lock_release>
 8009876:	4630      	mov	r0, r6
 8009878:	bd70      	pop	{r4, r5, r6, pc}
 800987a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800987c:	f7fe fdb6 	bl	80083ec <__retarget_lock_acquire_recursive>
 8009880:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009884:	2b00      	cmp	r3, #0
 8009886:	d1c7      	bne.n	8009818 <_fclose_r+0x20>
 8009888:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800988a:	f016 0601 	ands.w	r6, r6, #1
 800988e:	d016      	beq.n	80098be <_fclose_r+0xc6>
 8009890:	2600      	movs	r6, #0
 8009892:	4630      	mov	r0, r6
 8009894:	bd70      	pop	{r4, r5, r6, pc}
 8009896:	2b00      	cmp	r3, #0
 8009898:	d0fa      	beq.n	8009890 <_fclose_r+0x98>
 800989a:	e7bd      	b.n	8009818 <_fclose_r+0x20>
 800989c:	f7fe fa56 	bl	8007d4c <__sinit>
 80098a0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80098a2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80098a6:	07d0      	lsls	r0, r2, #31
 80098a8:	d4f5      	bmi.n	8009896 <_fclose_r+0x9e>
 80098aa:	e7b3      	b.n	8009814 <_fclose_r+0x1c>
 80098ac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80098ae:	f7fe fd9f 	bl	80083f0 <__retarget_lock_release_recursive>
 80098b2:	e7db      	b.n	800986c <_fclose_r+0x74>
 80098b4:	6921      	ldr	r1, [r4, #16]
 80098b6:	4628      	mov	r0, r5
 80098b8:	f7fe faea 	bl	8007e90 <_free_r>
 80098bc:	e7bd      	b.n	800983a <_fclose_r+0x42>
 80098be:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80098c0:	f7fe fd96 	bl	80083f0 <__retarget_lock_release_recursive>
 80098c4:	4630      	mov	r0, r6
 80098c6:	bd70      	pop	{r4, r5, r6, pc}

080098c8 <__fputwc>:
 80098c8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80098cc:	b082      	sub	sp, #8
 80098ce:	4681      	mov	r9, r0
 80098d0:	4688      	mov	r8, r1
 80098d2:	4614      	mov	r4, r2
 80098d4:	f000 f8a0 	bl	8009a18 <__locale_mb_cur_max>
 80098d8:	2801      	cmp	r0, #1
 80098da:	d103      	bne.n	80098e4 <__fputwc+0x1c>
 80098dc:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80098e0:	2bfe      	cmp	r3, #254	; 0xfe
 80098e2:	d933      	bls.n	800994c <__fputwc+0x84>
 80098e4:	4642      	mov	r2, r8
 80098e6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80098ea:	a901      	add	r1, sp, #4
 80098ec:	4648      	mov	r0, r9
 80098ee:	f000 f93b 	bl	8009b68 <_wcrtomb_r>
 80098f2:	1c42      	adds	r2, r0, #1
 80098f4:	4606      	mov	r6, r0
 80098f6:	d02f      	beq.n	8009958 <__fputwc+0x90>
 80098f8:	b320      	cbz	r0, 8009944 <__fputwc+0x7c>
 80098fa:	f89d c004 	ldrb.w	ip, [sp, #4]
 80098fe:	2500      	movs	r5, #0
 8009900:	f10d 0a04 	add.w	sl, sp, #4
 8009904:	e009      	b.n	800991a <__fputwc+0x52>
 8009906:	6823      	ldr	r3, [r4, #0]
 8009908:	1c5a      	adds	r2, r3, #1
 800990a:	6022      	str	r2, [r4, #0]
 800990c:	f883 c000 	strb.w	ip, [r3]
 8009910:	3501      	adds	r5, #1
 8009912:	42b5      	cmp	r5, r6
 8009914:	d216      	bcs.n	8009944 <__fputwc+0x7c>
 8009916:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800991a:	68a3      	ldr	r3, [r4, #8]
 800991c:	3b01      	subs	r3, #1
 800991e:	2b00      	cmp	r3, #0
 8009920:	60a3      	str	r3, [r4, #8]
 8009922:	daf0      	bge.n	8009906 <__fputwc+0x3e>
 8009924:	69a7      	ldr	r7, [r4, #24]
 8009926:	42bb      	cmp	r3, r7
 8009928:	4661      	mov	r1, ip
 800992a:	4622      	mov	r2, r4
 800992c:	4648      	mov	r0, r9
 800992e:	db02      	blt.n	8009936 <__fputwc+0x6e>
 8009930:	f1bc 0f0a 	cmp.w	ip, #10
 8009934:	d1e7      	bne.n	8009906 <__fputwc+0x3e>
 8009936:	f000 f8bf 	bl	8009ab8 <__swbuf_r>
 800993a:	1c43      	adds	r3, r0, #1
 800993c:	d1e8      	bne.n	8009910 <__fputwc+0x48>
 800993e:	b002      	add	sp, #8
 8009940:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009944:	4640      	mov	r0, r8
 8009946:	b002      	add	sp, #8
 8009948:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800994c:	fa5f fc88 	uxtb.w	ip, r8
 8009950:	4606      	mov	r6, r0
 8009952:	f88d c004 	strb.w	ip, [sp, #4]
 8009956:	e7d2      	b.n	80098fe <__fputwc+0x36>
 8009958:	89a3      	ldrh	r3, [r4, #12]
 800995a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800995e:	81a3      	strh	r3, [r4, #12]
 8009960:	b002      	add	sp, #8
 8009962:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009966:	bf00      	nop

08009968 <_fputwc_r>:
 8009968:	b530      	push	{r4, r5, lr}
 800996a:	4605      	mov	r5, r0
 800996c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800996e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8009972:	07c0      	lsls	r0, r0, #31
 8009974:	4614      	mov	r4, r2
 8009976:	b083      	sub	sp, #12
 8009978:	b29a      	uxth	r2, r3
 800997a:	d401      	bmi.n	8009980 <_fputwc_r+0x18>
 800997c:	0590      	lsls	r0, r2, #22
 800997e:	d51c      	bpl.n	80099ba <_fputwc_r+0x52>
 8009980:	0490      	lsls	r0, r2, #18
 8009982:	d406      	bmi.n	8009992 <_fputwc_r+0x2a>
 8009984:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009986:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800998a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800998e:	81a3      	strh	r3, [r4, #12]
 8009990:	6662      	str	r2, [r4, #100]	; 0x64
 8009992:	4628      	mov	r0, r5
 8009994:	4622      	mov	r2, r4
 8009996:	f7ff ff97 	bl	80098c8 <__fputwc>
 800999a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800999c:	07da      	lsls	r2, r3, #31
 800999e:	4605      	mov	r5, r0
 80099a0:	d402      	bmi.n	80099a8 <_fputwc_r+0x40>
 80099a2:	89a3      	ldrh	r3, [r4, #12]
 80099a4:	059b      	lsls	r3, r3, #22
 80099a6:	d502      	bpl.n	80099ae <_fputwc_r+0x46>
 80099a8:	4628      	mov	r0, r5
 80099aa:	b003      	add	sp, #12
 80099ac:	bd30      	pop	{r4, r5, pc}
 80099ae:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80099b0:	f7fe fd1e 	bl	80083f0 <__retarget_lock_release_recursive>
 80099b4:	4628      	mov	r0, r5
 80099b6:	b003      	add	sp, #12
 80099b8:	bd30      	pop	{r4, r5, pc}
 80099ba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80099bc:	9101      	str	r1, [sp, #4]
 80099be:	f7fe fd15 	bl	80083ec <__retarget_lock_acquire_recursive>
 80099c2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80099c6:	9901      	ldr	r1, [sp, #4]
 80099c8:	b29a      	uxth	r2, r3
 80099ca:	e7d9      	b.n	8009980 <_fputwc_r+0x18>

080099cc <_fstat_r>:
 80099cc:	b538      	push	{r3, r4, r5, lr}
 80099ce:	460b      	mov	r3, r1
 80099d0:	4c07      	ldr	r4, [pc, #28]	; (80099f0 <_fstat_r+0x24>)
 80099d2:	4605      	mov	r5, r0
 80099d4:	4611      	mov	r1, r2
 80099d6:	4618      	mov	r0, r3
 80099d8:	2300      	movs	r3, #0
 80099da:	6023      	str	r3, [r4, #0]
 80099dc:	f7f9 f84e 	bl	8002a7c <_fstat>
 80099e0:	1c43      	adds	r3, r0, #1
 80099e2:	d000      	beq.n	80099e6 <_fstat_r+0x1a>
 80099e4:	bd38      	pop	{r3, r4, r5, pc}
 80099e6:	6823      	ldr	r3, [r4, #0]
 80099e8:	2b00      	cmp	r3, #0
 80099ea:	d0fb      	beq.n	80099e4 <_fstat_r+0x18>
 80099ec:	602b      	str	r3, [r5, #0]
 80099ee:	bd38      	pop	{r3, r4, r5, pc}
 80099f0:	20000b60 	.word	0x20000b60

080099f4 <_isatty_r>:
 80099f4:	b538      	push	{r3, r4, r5, lr}
 80099f6:	4c07      	ldr	r4, [pc, #28]	; (8009a14 <_isatty_r+0x20>)
 80099f8:	2300      	movs	r3, #0
 80099fa:	4605      	mov	r5, r0
 80099fc:	4608      	mov	r0, r1
 80099fe:	6023      	str	r3, [r4, #0]
 8009a00:	f7f9 f841 	bl	8002a86 <_isatty>
 8009a04:	1c43      	adds	r3, r0, #1
 8009a06:	d000      	beq.n	8009a0a <_isatty_r+0x16>
 8009a08:	bd38      	pop	{r3, r4, r5, pc}
 8009a0a:	6823      	ldr	r3, [r4, #0]
 8009a0c:	2b00      	cmp	r3, #0
 8009a0e:	d0fb      	beq.n	8009a08 <_isatty_r+0x14>
 8009a10:	602b      	str	r3, [r5, #0]
 8009a12:	bd38      	pop	{r3, r4, r5, pc}
 8009a14:	20000b60 	.word	0x20000b60

08009a18 <__locale_mb_cur_max>:
 8009a18:	4b04      	ldr	r3, [pc, #16]	; (8009a2c <__locale_mb_cur_max+0x14>)
 8009a1a:	4a05      	ldr	r2, [pc, #20]	; (8009a30 <__locale_mb_cur_max+0x18>)
 8009a1c:	681b      	ldr	r3, [r3, #0]
 8009a1e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8009a20:	2b00      	cmp	r3, #0
 8009a22:	bf08      	it	eq
 8009a24:	4613      	moveq	r3, r2
 8009a26:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8009a2a:	4770      	bx	lr
 8009a2c:	2000001c 	.word	0x2000001c
 8009a30:	2000085c 	.word	0x2000085c

08009a34 <_lseek_r>:
 8009a34:	b570      	push	{r4, r5, r6, lr}
 8009a36:	460d      	mov	r5, r1
 8009a38:	4c08      	ldr	r4, [pc, #32]	; (8009a5c <_lseek_r+0x28>)
 8009a3a:	4611      	mov	r1, r2
 8009a3c:	4606      	mov	r6, r0
 8009a3e:	461a      	mov	r2, r3
 8009a40:	4628      	mov	r0, r5
 8009a42:	2300      	movs	r3, #0
 8009a44:	6023      	str	r3, [r4, #0]
 8009a46:	f7f9 f820 	bl	8002a8a <_lseek>
 8009a4a:	1c43      	adds	r3, r0, #1
 8009a4c:	d000      	beq.n	8009a50 <_lseek_r+0x1c>
 8009a4e:	bd70      	pop	{r4, r5, r6, pc}
 8009a50:	6823      	ldr	r3, [r4, #0]
 8009a52:	2b00      	cmp	r3, #0
 8009a54:	d0fb      	beq.n	8009a4e <_lseek_r+0x1a>
 8009a56:	6033      	str	r3, [r6, #0]
 8009a58:	bd70      	pop	{r4, r5, r6, pc}
 8009a5a:	bf00      	nop
 8009a5c:	20000b60 	.word	0x20000b60

08009a60 <__ascii_mbtowc>:
 8009a60:	b082      	sub	sp, #8
 8009a62:	b149      	cbz	r1, 8009a78 <__ascii_mbtowc+0x18>
 8009a64:	b15a      	cbz	r2, 8009a7e <__ascii_mbtowc+0x1e>
 8009a66:	b16b      	cbz	r3, 8009a84 <__ascii_mbtowc+0x24>
 8009a68:	7813      	ldrb	r3, [r2, #0]
 8009a6a:	600b      	str	r3, [r1, #0]
 8009a6c:	7812      	ldrb	r2, [r2, #0]
 8009a6e:	1c10      	adds	r0, r2, #0
 8009a70:	bf18      	it	ne
 8009a72:	2001      	movne	r0, #1
 8009a74:	b002      	add	sp, #8
 8009a76:	4770      	bx	lr
 8009a78:	a901      	add	r1, sp, #4
 8009a7a:	2a00      	cmp	r2, #0
 8009a7c:	d1f3      	bne.n	8009a66 <__ascii_mbtowc+0x6>
 8009a7e:	4610      	mov	r0, r2
 8009a80:	b002      	add	sp, #8
 8009a82:	4770      	bx	lr
 8009a84:	f06f 0001 	mvn.w	r0, #1
 8009a88:	e7f4      	b.n	8009a74 <__ascii_mbtowc+0x14>
 8009a8a:	bf00      	nop

08009a8c <_read_r>:
 8009a8c:	b570      	push	{r4, r5, r6, lr}
 8009a8e:	460d      	mov	r5, r1
 8009a90:	4c08      	ldr	r4, [pc, #32]	; (8009ab4 <_read_r+0x28>)
 8009a92:	4611      	mov	r1, r2
 8009a94:	4606      	mov	r6, r0
 8009a96:	461a      	mov	r2, r3
 8009a98:	4628      	mov	r0, r5
 8009a9a:	2300      	movs	r3, #0
 8009a9c:	6023      	str	r3, [r4, #0]
 8009a9e:	f7f8 ffa8 	bl	80029f2 <_read>
 8009aa2:	1c43      	adds	r3, r0, #1
 8009aa4:	d000      	beq.n	8009aa8 <_read_r+0x1c>
 8009aa6:	bd70      	pop	{r4, r5, r6, pc}
 8009aa8:	6823      	ldr	r3, [r4, #0]
 8009aaa:	2b00      	cmp	r3, #0
 8009aac:	d0fb      	beq.n	8009aa6 <_read_r+0x1a>
 8009aae:	6033      	str	r3, [r6, #0]
 8009ab0:	bd70      	pop	{r4, r5, r6, pc}
 8009ab2:	bf00      	nop
 8009ab4:	20000b60 	.word	0x20000b60

08009ab8 <__swbuf_r>:
 8009ab8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009aba:	460d      	mov	r5, r1
 8009abc:	4614      	mov	r4, r2
 8009abe:	4606      	mov	r6, r0
 8009ac0:	b110      	cbz	r0, 8009ac8 <__swbuf_r+0x10>
 8009ac2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009ac4:	2b00      	cmp	r3, #0
 8009ac6:	d043      	beq.n	8009b50 <__swbuf_r+0x98>
 8009ac8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009acc:	69a3      	ldr	r3, [r4, #24]
 8009ace:	60a3      	str	r3, [r4, #8]
 8009ad0:	b291      	uxth	r1, r2
 8009ad2:	0708      	lsls	r0, r1, #28
 8009ad4:	d51b      	bpl.n	8009b0e <__swbuf_r+0x56>
 8009ad6:	6923      	ldr	r3, [r4, #16]
 8009ad8:	b1cb      	cbz	r3, 8009b0e <__swbuf_r+0x56>
 8009ada:	b2ed      	uxtb	r5, r5
 8009adc:	0489      	lsls	r1, r1, #18
 8009ade:	462f      	mov	r7, r5
 8009ae0:	d522      	bpl.n	8009b28 <__swbuf_r+0x70>
 8009ae2:	6822      	ldr	r2, [r4, #0]
 8009ae4:	6961      	ldr	r1, [r4, #20]
 8009ae6:	1ad3      	subs	r3, r2, r3
 8009ae8:	4299      	cmp	r1, r3
 8009aea:	dd29      	ble.n	8009b40 <__swbuf_r+0x88>
 8009aec:	3301      	adds	r3, #1
 8009aee:	68a1      	ldr	r1, [r4, #8]
 8009af0:	1c50      	adds	r0, r2, #1
 8009af2:	3901      	subs	r1, #1
 8009af4:	60a1      	str	r1, [r4, #8]
 8009af6:	6020      	str	r0, [r4, #0]
 8009af8:	7015      	strb	r5, [r2, #0]
 8009afa:	6962      	ldr	r2, [r4, #20]
 8009afc:	429a      	cmp	r2, r3
 8009afe:	d02a      	beq.n	8009b56 <__swbuf_r+0x9e>
 8009b00:	89a3      	ldrh	r3, [r4, #12]
 8009b02:	07db      	lsls	r3, r3, #31
 8009b04:	d501      	bpl.n	8009b0a <__swbuf_r+0x52>
 8009b06:	2d0a      	cmp	r5, #10
 8009b08:	d025      	beq.n	8009b56 <__swbuf_r+0x9e>
 8009b0a:	4638      	mov	r0, r7
 8009b0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009b0e:	4621      	mov	r1, r4
 8009b10:	4630      	mov	r0, r6
 8009b12:	f7fc fffd 	bl	8006b10 <__swsetup_r>
 8009b16:	bb20      	cbnz	r0, 8009b62 <__swbuf_r+0xaa>
 8009b18:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009b1c:	6923      	ldr	r3, [r4, #16]
 8009b1e:	b291      	uxth	r1, r2
 8009b20:	b2ed      	uxtb	r5, r5
 8009b22:	0489      	lsls	r1, r1, #18
 8009b24:	462f      	mov	r7, r5
 8009b26:	d4dc      	bmi.n	8009ae2 <__swbuf_r+0x2a>
 8009b28:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009b2a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009b2e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8009b32:	81a2      	strh	r2, [r4, #12]
 8009b34:	6822      	ldr	r2, [r4, #0]
 8009b36:	6661      	str	r1, [r4, #100]	; 0x64
 8009b38:	6961      	ldr	r1, [r4, #20]
 8009b3a:	1ad3      	subs	r3, r2, r3
 8009b3c:	4299      	cmp	r1, r3
 8009b3e:	dcd5      	bgt.n	8009aec <__swbuf_r+0x34>
 8009b40:	4621      	mov	r1, r4
 8009b42:	4630      	mov	r0, r6
 8009b44:	f7fe f8a6 	bl	8007c94 <_fflush_r>
 8009b48:	b958      	cbnz	r0, 8009b62 <__swbuf_r+0xaa>
 8009b4a:	6822      	ldr	r2, [r4, #0]
 8009b4c:	2301      	movs	r3, #1
 8009b4e:	e7ce      	b.n	8009aee <__swbuf_r+0x36>
 8009b50:	f7fe f8fc 	bl	8007d4c <__sinit>
 8009b54:	e7b8      	b.n	8009ac8 <__swbuf_r+0x10>
 8009b56:	4621      	mov	r1, r4
 8009b58:	4630      	mov	r0, r6
 8009b5a:	f7fe f89b 	bl	8007c94 <_fflush_r>
 8009b5e:	2800      	cmp	r0, #0
 8009b60:	d0d3      	beq.n	8009b0a <__swbuf_r+0x52>
 8009b62:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8009b66:	e7d0      	b.n	8009b0a <__swbuf_r+0x52>

08009b68 <_wcrtomb_r>:
 8009b68:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009b6a:	4c11      	ldr	r4, [pc, #68]	; (8009bb0 <_wcrtomb_r+0x48>)
 8009b6c:	6824      	ldr	r4, [r4, #0]
 8009b6e:	b085      	sub	sp, #20
 8009b70:	4606      	mov	r6, r0
 8009b72:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8009b74:	461f      	mov	r7, r3
 8009b76:	b151      	cbz	r1, 8009b8e <_wcrtomb_r+0x26>
 8009b78:	4d0e      	ldr	r5, [pc, #56]	; (8009bb4 <_wcrtomb_r+0x4c>)
 8009b7a:	2c00      	cmp	r4, #0
 8009b7c:	bf08      	it	eq
 8009b7e:	462c      	moveq	r4, r5
 8009b80:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009b84:	47a0      	blx	r4
 8009b86:	1c43      	adds	r3, r0, #1
 8009b88:	d00c      	beq.n	8009ba4 <_wcrtomb_r+0x3c>
 8009b8a:	b005      	add	sp, #20
 8009b8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009b8e:	4a09      	ldr	r2, [pc, #36]	; (8009bb4 <_wcrtomb_r+0x4c>)
 8009b90:	2c00      	cmp	r4, #0
 8009b92:	bf08      	it	eq
 8009b94:	4614      	moveq	r4, r2
 8009b96:	460a      	mov	r2, r1
 8009b98:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009b9c:	a901      	add	r1, sp, #4
 8009b9e:	47a0      	blx	r4
 8009ba0:	1c43      	adds	r3, r0, #1
 8009ba2:	d1f2      	bne.n	8009b8a <_wcrtomb_r+0x22>
 8009ba4:	2200      	movs	r2, #0
 8009ba6:	238a      	movs	r3, #138	; 0x8a
 8009ba8:	603a      	str	r2, [r7, #0]
 8009baa:	6033      	str	r3, [r6, #0]
 8009bac:	b005      	add	sp, #20
 8009bae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009bb0:	2000001c 	.word	0x2000001c
 8009bb4:	2000085c 	.word	0x2000085c

08009bb8 <__ascii_wctomb>:
 8009bb8:	b121      	cbz	r1, 8009bc4 <__ascii_wctomb+0xc>
 8009bba:	2aff      	cmp	r2, #255	; 0xff
 8009bbc:	d804      	bhi.n	8009bc8 <__ascii_wctomb+0x10>
 8009bbe:	700a      	strb	r2, [r1, #0]
 8009bc0:	2001      	movs	r0, #1
 8009bc2:	4770      	bx	lr
 8009bc4:	4608      	mov	r0, r1
 8009bc6:	4770      	bx	lr
 8009bc8:	238a      	movs	r3, #138	; 0x8a
 8009bca:	6003      	str	r3, [r0, #0]
 8009bcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009bd0:	4770      	bx	lr
 8009bd2:	bf00      	nop

08009bd4 <_init>:
 8009bd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009bd6:	bf00      	nop
 8009bd8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009bda:	bc08      	pop	{r3}
 8009bdc:	469e      	mov	lr, r3
 8009bde:	4770      	bx	lr

08009be0 <_fini>:
 8009be0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009be2:	bf00      	nop
 8009be4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009be6:	bc08      	pop	{r3}
 8009be8:	469e      	mov	lr, r3
 8009bea:	4770      	bx	lr
 8009bec:	0000      	movs	r0, r0
	...
