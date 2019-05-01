
ctl-string.elf:     file format elf32-littlearm


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
 80001e0:	08007600 	.word	0x08007600

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
 80001fc:	08007600 	.word	0x08007600

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

0800099c <__aeabi_d2uiz>:
 800099c:	004a      	lsls	r2, r1, #1
 800099e:	d211      	bcs.n	80009c4 <__aeabi_d2uiz+0x28>
 80009a0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80009a4:	d211      	bcs.n	80009ca <__aeabi_d2uiz+0x2e>
 80009a6:	d50d      	bpl.n	80009c4 <__aeabi_d2uiz+0x28>
 80009a8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80009ac:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80009b0:	d40e      	bmi.n	80009d0 <__aeabi_d2uiz+0x34>
 80009b2:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80009b6:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80009ba:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80009be:	fa23 f002 	lsr.w	r0, r3, r2
 80009c2:	4770      	bx	lr
 80009c4:	f04f 0000 	mov.w	r0, #0
 80009c8:	4770      	bx	lr
 80009ca:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80009ce:	d102      	bne.n	80009d6 <__aeabi_d2uiz+0x3a>
 80009d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80009d4:	4770      	bx	lr
 80009d6:	f04f 0000 	mov.w	r0, #0
 80009da:	4770      	bx	lr

080009dc <__aeabi_uldivmod>:
 80009dc:	b953      	cbnz	r3, 80009f4 <__aeabi_uldivmod+0x18>
 80009de:	b94a      	cbnz	r2, 80009f4 <__aeabi_uldivmod+0x18>
 80009e0:	2900      	cmp	r1, #0
 80009e2:	bf08      	it	eq
 80009e4:	2800      	cmpeq	r0, #0
 80009e6:	bf1c      	itt	ne
 80009e8:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 80009ec:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 80009f0:	f000 b972 	b.w	8000cd8 <__aeabi_idiv0>
 80009f4:	f1ad 0c08 	sub.w	ip, sp, #8
 80009f8:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80009fc:	f000 f806 	bl	8000a0c <__udivmoddi4>
 8000a00:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000a04:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000a08:	b004      	add	sp, #16
 8000a0a:	4770      	bx	lr

08000a0c <__udivmoddi4>:
 8000a0c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000a10:	9e08      	ldr	r6, [sp, #32]
 8000a12:	4604      	mov	r4, r0
 8000a14:	4688      	mov	r8, r1
 8000a16:	2b00      	cmp	r3, #0
 8000a18:	d14b      	bne.n	8000ab2 <__udivmoddi4+0xa6>
 8000a1a:	428a      	cmp	r2, r1
 8000a1c:	4615      	mov	r5, r2
 8000a1e:	d967      	bls.n	8000af0 <__udivmoddi4+0xe4>
 8000a20:	fab2 f282 	clz	r2, r2
 8000a24:	b14a      	cbz	r2, 8000a3a <__udivmoddi4+0x2e>
 8000a26:	f1c2 0720 	rsb	r7, r2, #32
 8000a2a:	fa01 f302 	lsl.w	r3, r1, r2
 8000a2e:	fa20 f707 	lsr.w	r7, r0, r7
 8000a32:	4095      	lsls	r5, r2
 8000a34:	ea47 0803 	orr.w	r8, r7, r3
 8000a38:	4094      	lsls	r4, r2
 8000a3a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000a3e:	0c23      	lsrs	r3, r4, #16
 8000a40:	fbb8 f7fe 	udiv	r7, r8, lr
 8000a44:	fa1f fc85 	uxth.w	ip, r5
 8000a48:	fb0e 8817 	mls	r8, lr, r7, r8
 8000a4c:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000a50:	fb07 f10c 	mul.w	r1, r7, ip
 8000a54:	4299      	cmp	r1, r3
 8000a56:	d909      	bls.n	8000a6c <__udivmoddi4+0x60>
 8000a58:	18eb      	adds	r3, r5, r3
 8000a5a:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000a5e:	f080 811b 	bcs.w	8000c98 <__udivmoddi4+0x28c>
 8000a62:	4299      	cmp	r1, r3
 8000a64:	f240 8118 	bls.w	8000c98 <__udivmoddi4+0x28c>
 8000a68:	3f02      	subs	r7, #2
 8000a6a:	442b      	add	r3, r5
 8000a6c:	1a5b      	subs	r3, r3, r1
 8000a6e:	b2a4      	uxth	r4, r4
 8000a70:	fbb3 f0fe 	udiv	r0, r3, lr
 8000a74:	fb0e 3310 	mls	r3, lr, r0, r3
 8000a78:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000a7c:	fb00 fc0c 	mul.w	ip, r0, ip
 8000a80:	45a4      	cmp	ip, r4
 8000a82:	d909      	bls.n	8000a98 <__udivmoddi4+0x8c>
 8000a84:	192c      	adds	r4, r5, r4
 8000a86:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000a8a:	f080 8107 	bcs.w	8000c9c <__udivmoddi4+0x290>
 8000a8e:	45a4      	cmp	ip, r4
 8000a90:	f240 8104 	bls.w	8000c9c <__udivmoddi4+0x290>
 8000a94:	3802      	subs	r0, #2
 8000a96:	442c      	add	r4, r5
 8000a98:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000a9c:	eba4 040c 	sub.w	r4, r4, ip
 8000aa0:	2700      	movs	r7, #0
 8000aa2:	b11e      	cbz	r6, 8000aac <__udivmoddi4+0xa0>
 8000aa4:	40d4      	lsrs	r4, r2
 8000aa6:	2300      	movs	r3, #0
 8000aa8:	e9c6 4300 	strd	r4, r3, [r6]
 8000aac:	4639      	mov	r1, r7
 8000aae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000ab2:	428b      	cmp	r3, r1
 8000ab4:	d909      	bls.n	8000aca <__udivmoddi4+0xbe>
 8000ab6:	2e00      	cmp	r6, #0
 8000ab8:	f000 80eb 	beq.w	8000c92 <__udivmoddi4+0x286>
 8000abc:	2700      	movs	r7, #0
 8000abe:	e9c6 0100 	strd	r0, r1, [r6]
 8000ac2:	4638      	mov	r0, r7
 8000ac4:	4639      	mov	r1, r7
 8000ac6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000aca:	fab3 f783 	clz	r7, r3
 8000ace:	2f00      	cmp	r7, #0
 8000ad0:	d147      	bne.n	8000b62 <__udivmoddi4+0x156>
 8000ad2:	428b      	cmp	r3, r1
 8000ad4:	d302      	bcc.n	8000adc <__udivmoddi4+0xd0>
 8000ad6:	4282      	cmp	r2, r0
 8000ad8:	f200 80fa 	bhi.w	8000cd0 <__udivmoddi4+0x2c4>
 8000adc:	1a84      	subs	r4, r0, r2
 8000ade:	eb61 0303 	sbc.w	r3, r1, r3
 8000ae2:	2001      	movs	r0, #1
 8000ae4:	4698      	mov	r8, r3
 8000ae6:	2e00      	cmp	r6, #0
 8000ae8:	d0e0      	beq.n	8000aac <__udivmoddi4+0xa0>
 8000aea:	e9c6 4800 	strd	r4, r8, [r6]
 8000aee:	e7dd      	b.n	8000aac <__udivmoddi4+0xa0>
 8000af0:	b902      	cbnz	r2, 8000af4 <__udivmoddi4+0xe8>
 8000af2:	deff      	udf	#255	; 0xff
 8000af4:	fab2 f282 	clz	r2, r2
 8000af8:	2a00      	cmp	r2, #0
 8000afa:	f040 808f 	bne.w	8000c1c <__udivmoddi4+0x210>
 8000afe:	1b49      	subs	r1, r1, r5
 8000b00:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b04:	fa1f f885 	uxth.w	r8, r5
 8000b08:	2701      	movs	r7, #1
 8000b0a:	fbb1 fcfe 	udiv	ip, r1, lr
 8000b0e:	0c23      	lsrs	r3, r4, #16
 8000b10:	fb0e 111c 	mls	r1, lr, ip, r1
 8000b14:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000b18:	fb08 f10c 	mul.w	r1, r8, ip
 8000b1c:	4299      	cmp	r1, r3
 8000b1e:	d907      	bls.n	8000b30 <__udivmoddi4+0x124>
 8000b20:	18eb      	adds	r3, r5, r3
 8000b22:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000b26:	d202      	bcs.n	8000b2e <__udivmoddi4+0x122>
 8000b28:	4299      	cmp	r1, r3
 8000b2a:	f200 80cd 	bhi.w	8000cc8 <__udivmoddi4+0x2bc>
 8000b2e:	4684      	mov	ip, r0
 8000b30:	1a59      	subs	r1, r3, r1
 8000b32:	b2a3      	uxth	r3, r4
 8000b34:	fbb1 f0fe 	udiv	r0, r1, lr
 8000b38:	fb0e 1410 	mls	r4, lr, r0, r1
 8000b3c:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000b40:	fb08 f800 	mul.w	r8, r8, r0
 8000b44:	45a0      	cmp	r8, r4
 8000b46:	d907      	bls.n	8000b58 <__udivmoddi4+0x14c>
 8000b48:	192c      	adds	r4, r5, r4
 8000b4a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000b4e:	d202      	bcs.n	8000b56 <__udivmoddi4+0x14a>
 8000b50:	45a0      	cmp	r8, r4
 8000b52:	f200 80b6 	bhi.w	8000cc2 <__udivmoddi4+0x2b6>
 8000b56:	4618      	mov	r0, r3
 8000b58:	eba4 0408 	sub.w	r4, r4, r8
 8000b5c:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000b60:	e79f      	b.n	8000aa2 <__udivmoddi4+0x96>
 8000b62:	f1c7 0c20 	rsb	ip, r7, #32
 8000b66:	40bb      	lsls	r3, r7
 8000b68:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000b6c:	ea4e 0e03 	orr.w	lr, lr, r3
 8000b70:	fa01 f407 	lsl.w	r4, r1, r7
 8000b74:	fa20 f50c 	lsr.w	r5, r0, ip
 8000b78:	fa21 f30c 	lsr.w	r3, r1, ip
 8000b7c:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000b80:	4325      	orrs	r5, r4
 8000b82:	fbb3 f9f8 	udiv	r9, r3, r8
 8000b86:	0c2c      	lsrs	r4, r5, #16
 8000b88:	fb08 3319 	mls	r3, r8, r9, r3
 8000b8c:	fa1f fa8e 	uxth.w	sl, lr
 8000b90:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000b94:	fb09 f40a 	mul.w	r4, r9, sl
 8000b98:	429c      	cmp	r4, r3
 8000b9a:	fa02 f207 	lsl.w	r2, r2, r7
 8000b9e:	fa00 f107 	lsl.w	r1, r0, r7
 8000ba2:	d90b      	bls.n	8000bbc <__udivmoddi4+0x1b0>
 8000ba4:	eb1e 0303 	adds.w	r3, lr, r3
 8000ba8:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000bac:	f080 8087 	bcs.w	8000cbe <__udivmoddi4+0x2b2>
 8000bb0:	429c      	cmp	r4, r3
 8000bb2:	f240 8084 	bls.w	8000cbe <__udivmoddi4+0x2b2>
 8000bb6:	f1a9 0902 	sub.w	r9, r9, #2
 8000bba:	4473      	add	r3, lr
 8000bbc:	1b1b      	subs	r3, r3, r4
 8000bbe:	b2ad      	uxth	r5, r5
 8000bc0:	fbb3 f0f8 	udiv	r0, r3, r8
 8000bc4:	fb08 3310 	mls	r3, r8, r0, r3
 8000bc8:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000bcc:	fb00 fa0a 	mul.w	sl, r0, sl
 8000bd0:	45a2      	cmp	sl, r4
 8000bd2:	d908      	bls.n	8000be6 <__udivmoddi4+0x1da>
 8000bd4:	eb1e 0404 	adds.w	r4, lr, r4
 8000bd8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000bdc:	d26b      	bcs.n	8000cb6 <__udivmoddi4+0x2aa>
 8000bde:	45a2      	cmp	sl, r4
 8000be0:	d969      	bls.n	8000cb6 <__udivmoddi4+0x2aa>
 8000be2:	3802      	subs	r0, #2
 8000be4:	4474      	add	r4, lr
 8000be6:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000bea:	fba0 8902 	umull	r8, r9, r0, r2
 8000bee:	eba4 040a 	sub.w	r4, r4, sl
 8000bf2:	454c      	cmp	r4, r9
 8000bf4:	46c2      	mov	sl, r8
 8000bf6:	464b      	mov	r3, r9
 8000bf8:	d354      	bcc.n	8000ca4 <__udivmoddi4+0x298>
 8000bfa:	d051      	beq.n	8000ca0 <__udivmoddi4+0x294>
 8000bfc:	2e00      	cmp	r6, #0
 8000bfe:	d069      	beq.n	8000cd4 <__udivmoddi4+0x2c8>
 8000c00:	ebb1 050a 	subs.w	r5, r1, sl
 8000c04:	eb64 0403 	sbc.w	r4, r4, r3
 8000c08:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000c0c:	40fd      	lsrs	r5, r7
 8000c0e:	40fc      	lsrs	r4, r7
 8000c10:	ea4c 0505 	orr.w	r5, ip, r5
 8000c14:	e9c6 5400 	strd	r5, r4, [r6]
 8000c18:	2700      	movs	r7, #0
 8000c1a:	e747      	b.n	8000aac <__udivmoddi4+0xa0>
 8000c1c:	f1c2 0320 	rsb	r3, r2, #32
 8000c20:	fa20 f703 	lsr.w	r7, r0, r3
 8000c24:	4095      	lsls	r5, r2
 8000c26:	fa01 f002 	lsl.w	r0, r1, r2
 8000c2a:	fa21 f303 	lsr.w	r3, r1, r3
 8000c2e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c32:	4338      	orrs	r0, r7
 8000c34:	0c01      	lsrs	r1, r0, #16
 8000c36:	fbb3 f7fe 	udiv	r7, r3, lr
 8000c3a:	fa1f f885 	uxth.w	r8, r5
 8000c3e:	fb0e 3317 	mls	r3, lr, r7, r3
 8000c42:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000c46:	fb07 f308 	mul.w	r3, r7, r8
 8000c4a:	428b      	cmp	r3, r1
 8000c4c:	fa04 f402 	lsl.w	r4, r4, r2
 8000c50:	d907      	bls.n	8000c62 <__udivmoddi4+0x256>
 8000c52:	1869      	adds	r1, r5, r1
 8000c54:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000c58:	d22f      	bcs.n	8000cba <__udivmoddi4+0x2ae>
 8000c5a:	428b      	cmp	r3, r1
 8000c5c:	d92d      	bls.n	8000cba <__udivmoddi4+0x2ae>
 8000c5e:	3f02      	subs	r7, #2
 8000c60:	4429      	add	r1, r5
 8000c62:	1acb      	subs	r3, r1, r3
 8000c64:	b281      	uxth	r1, r0
 8000c66:	fbb3 f0fe 	udiv	r0, r3, lr
 8000c6a:	fb0e 3310 	mls	r3, lr, r0, r3
 8000c6e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000c72:	fb00 f308 	mul.w	r3, r0, r8
 8000c76:	428b      	cmp	r3, r1
 8000c78:	d907      	bls.n	8000c8a <__udivmoddi4+0x27e>
 8000c7a:	1869      	adds	r1, r5, r1
 8000c7c:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000c80:	d217      	bcs.n	8000cb2 <__udivmoddi4+0x2a6>
 8000c82:	428b      	cmp	r3, r1
 8000c84:	d915      	bls.n	8000cb2 <__udivmoddi4+0x2a6>
 8000c86:	3802      	subs	r0, #2
 8000c88:	4429      	add	r1, r5
 8000c8a:	1ac9      	subs	r1, r1, r3
 8000c8c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000c90:	e73b      	b.n	8000b0a <__udivmoddi4+0xfe>
 8000c92:	4637      	mov	r7, r6
 8000c94:	4630      	mov	r0, r6
 8000c96:	e709      	b.n	8000aac <__udivmoddi4+0xa0>
 8000c98:	4607      	mov	r7, r0
 8000c9a:	e6e7      	b.n	8000a6c <__udivmoddi4+0x60>
 8000c9c:	4618      	mov	r0, r3
 8000c9e:	e6fb      	b.n	8000a98 <__udivmoddi4+0x8c>
 8000ca0:	4541      	cmp	r1, r8
 8000ca2:	d2ab      	bcs.n	8000bfc <__udivmoddi4+0x1f0>
 8000ca4:	ebb8 0a02 	subs.w	sl, r8, r2
 8000ca8:	eb69 020e 	sbc.w	r2, r9, lr
 8000cac:	3801      	subs	r0, #1
 8000cae:	4613      	mov	r3, r2
 8000cb0:	e7a4      	b.n	8000bfc <__udivmoddi4+0x1f0>
 8000cb2:	4660      	mov	r0, ip
 8000cb4:	e7e9      	b.n	8000c8a <__udivmoddi4+0x27e>
 8000cb6:	4618      	mov	r0, r3
 8000cb8:	e795      	b.n	8000be6 <__udivmoddi4+0x1da>
 8000cba:	4667      	mov	r7, ip
 8000cbc:	e7d1      	b.n	8000c62 <__udivmoddi4+0x256>
 8000cbe:	4681      	mov	r9, r0
 8000cc0:	e77c      	b.n	8000bbc <__udivmoddi4+0x1b0>
 8000cc2:	3802      	subs	r0, #2
 8000cc4:	442c      	add	r4, r5
 8000cc6:	e747      	b.n	8000b58 <__udivmoddi4+0x14c>
 8000cc8:	f1ac 0c02 	sub.w	ip, ip, #2
 8000ccc:	442b      	add	r3, r5
 8000cce:	e72f      	b.n	8000b30 <__udivmoddi4+0x124>
 8000cd0:	4638      	mov	r0, r7
 8000cd2:	e708      	b.n	8000ae6 <__udivmoddi4+0xda>
 8000cd4:	4637      	mov	r7, r6
 8000cd6:	e6e9      	b.n	8000aac <__udivmoddi4+0xa0>

08000cd8 <__aeabi_idiv0>:
 8000cd8:	4770      	bx	lr
 8000cda:	bf00      	nop

08000cdc <memcpy>:
 8000cdc:	4684      	mov	ip, r0
 8000cde:	ea41 0300 	orr.w	r3, r1, r0
 8000ce2:	f013 0303 	ands.w	r3, r3, #3
 8000ce6:	d16d      	bne.n	8000dc4 <memcpy+0xe8>
 8000ce8:	3a40      	subs	r2, #64	; 0x40
 8000cea:	d341      	bcc.n	8000d70 <memcpy+0x94>
 8000cec:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cf0:	f840 3b04 	str.w	r3, [r0], #4
 8000cf4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cf8:	f840 3b04 	str.w	r3, [r0], #4
 8000cfc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d00:	f840 3b04 	str.w	r3, [r0], #4
 8000d04:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d08:	f840 3b04 	str.w	r3, [r0], #4
 8000d0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d10:	f840 3b04 	str.w	r3, [r0], #4
 8000d14:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d18:	f840 3b04 	str.w	r3, [r0], #4
 8000d1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d20:	f840 3b04 	str.w	r3, [r0], #4
 8000d24:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d28:	f840 3b04 	str.w	r3, [r0], #4
 8000d2c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d30:	f840 3b04 	str.w	r3, [r0], #4
 8000d34:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d38:	f840 3b04 	str.w	r3, [r0], #4
 8000d3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d40:	f840 3b04 	str.w	r3, [r0], #4
 8000d44:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d48:	f840 3b04 	str.w	r3, [r0], #4
 8000d4c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d50:	f840 3b04 	str.w	r3, [r0], #4
 8000d54:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d58:	f840 3b04 	str.w	r3, [r0], #4
 8000d5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d60:	f840 3b04 	str.w	r3, [r0], #4
 8000d64:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d68:	f840 3b04 	str.w	r3, [r0], #4
 8000d6c:	3a40      	subs	r2, #64	; 0x40
 8000d6e:	d2bd      	bcs.n	8000cec <memcpy+0x10>
 8000d70:	3230      	adds	r2, #48	; 0x30
 8000d72:	d311      	bcc.n	8000d98 <memcpy+0xbc>
 8000d74:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d78:	f840 3b04 	str.w	r3, [r0], #4
 8000d7c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d80:	f840 3b04 	str.w	r3, [r0], #4
 8000d84:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d88:	f840 3b04 	str.w	r3, [r0], #4
 8000d8c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d90:	f840 3b04 	str.w	r3, [r0], #4
 8000d94:	3a10      	subs	r2, #16
 8000d96:	d2ed      	bcs.n	8000d74 <memcpy+0x98>
 8000d98:	320c      	adds	r2, #12
 8000d9a:	d305      	bcc.n	8000da8 <memcpy+0xcc>
 8000d9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000da0:	f840 3b04 	str.w	r3, [r0], #4
 8000da4:	3a04      	subs	r2, #4
 8000da6:	d2f9      	bcs.n	8000d9c <memcpy+0xc0>
 8000da8:	3204      	adds	r2, #4
 8000daa:	d008      	beq.n	8000dbe <memcpy+0xe2>
 8000dac:	07d2      	lsls	r2, r2, #31
 8000dae:	bf1c      	itt	ne
 8000db0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000db4:	f800 3b01 	strbne.w	r3, [r0], #1
 8000db8:	d301      	bcc.n	8000dbe <memcpy+0xe2>
 8000dba:	880b      	ldrh	r3, [r1, #0]
 8000dbc:	8003      	strh	r3, [r0, #0]
 8000dbe:	4660      	mov	r0, ip
 8000dc0:	4770      	bx	lr
 8000dc2:	bf00      	nop
 8000dc4:	2a08      	cmp	r2, #8
 8000dc6:	d313      	bcc.n	8000df0 <memcpy+0x114>
 8000dc8:	078b      	lsls	r3, r1, #30
 8000dca:	d08d      	beq.n	8000ce8 <memcpy+0xc>
 8000dcc:	f010 0303 	ands.w	r3, r0, #3
 8000dd0:	d08a      	beq.n	8000ce8 <memcpy+0xc>
 8000dd2:	f1c3 0304 	rsb	r3, r3, #4
 8000dd6:	1ad2      	subs	r2, r2, r3
 8000dd8:	07db      	lsls	r3, r3, #31
 8000dda:	bf1c      	itt	ne
 8000ddc:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000de0:	f800 3b01 	strbne.w	r3, [r0], #1
 8000de4:	d380      	bcc.n	8000ce8 <memcpy+0xc>
 8000de6:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000dea:	f820 3b02 	strh.w	r3, [r0], #2
 8000dee:	e77b      	b.n	8000ce8 <memcpy+0xc>
 8000df0:	3a04      	subs	r2, #4
 8000df2:	d3d9      	bcc.n	8000da8 <memcpy+0xcc>
 8000df4:	3a01      	subs	r2, #1
 8000df6:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000dfa:	f800 3b01 	strb.w	r3, [r0], #1
 8000dfe:	d2f9      	bcs.n	8000df4 <memcpy+0x118>
 8000e00:	780b      	ldrb	r3, [r1, #0]
 8000e02:	7003      	strb	r3, [r0, #0]
 8000e04:	784b      	ldrb	r3, [r1, #1]
 8000e06:	7043      	strb	r3, [r0, #1]
 8000e08:	788b      	ldrb	r3, [r1, #2]
 8000e0a:	7083      	strb	r3, [r0, #2]
 8000e0c:	4660      	mov	r0, ip
 8000e0e:	4770      	bx	lr
	...

08000e40 <strlen>:
 8000e40:	f890 f000 	pld	[r0]
 8000e44:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000e48:	f020 0107 	bic.w	r1, r0, #7
 8000e4c:	f06f 0c00 	mvn.w	ip, #0
 8000e50:	f010 0407 	ands.w	r4, r0, #7
 8000e54:	f891 f020 	pld	[r1, #32]
 8000e58:	f040 8049 	bne.w	8000eee <strlen+0xae>
 8000e5c:	f04f 0400 	mov.w	r4, #0
 8000e60:	f06f 0007 	mvn.w	r0, #7
 8000e64:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000e68:	f891 f040 	pld	[r1, #64]	; 0x40
 8000e6c:	f100 0008 	add.w	r0, r0, #8
 8000e70:	fa82 f24c 	uadd8	r2, r2, ip
 8000e74:	faa4 f28c 	sel	r2, r4, ip
 8000e78:	fa83 f34c 	uadd8	r3, r3, ip
 8000e7c:	faa2 f38c 	sel	r3, r2, ip
 8000e80:	bb4b      	cbnz	r3, 8000ed6 <strlen+0x96>
 8000e82:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000e86:	fa82 f24c 	uadd8	r2, r2, ip
 8000e8a:	f100 0008 	add.w	r0, r0, #8
 8000e8e:	faa4 f28c 	sel	r2, r4, ip
 8000e92:	fa83 f34c 	uadd8	r3, r3, ip
 8000e96:	faa2 f38c 	sel	r3, r2, ip
 8000e9a:	b9e3      	cbnz	r3, 8000ed6 <strlen+0x96>
 8000e9c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000ea0:	fa82 f24c 	uadd8	r2, r2, ip
 8000ea4:	f100 0008 	add.w	r0, r0, #8
 8000ea8:	faa4 f28c 	sel	r2, r4, ip
 8000eac:	fa83 f34c 	uadd8	r3, r3, ip
 8000eb0:	faa2 f38c 	sel	r3, r2, ip
 8000eb4:	b97b      	cbnz	r3, 8000ed6 <strlen+0x96>
 8000eb6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8000eba:	f101 0120 	add.w	r1, r1, #32
 8000ebe:	fa82 f24c 	uadd8	r2, r2, ip
 8000ec2:	f100 0008 	add.w	r0, r0, #8
 8000ec6:	faa4 f28c 	sel	r2, r4, ip
 8000eca:	fa83 f34c 	uadd8	r3, r3, ip
 8000ece:	faa2 f38c 	sel	r3, r2, ip
 8000ed2:	2b00      	cmp	r3, #0
 8000ed4:	d0c6      	beq.n	8000e64 <strlen+0x24>
 8000ed6:	2a00      	cmp	r2, #0
 8000ed8:	bf04      	itt	eq
 8000eda:	3004      	addeq	r0, #4
 8000edc:	461a      	moveq	r2, r3
 8000ede:	ba12      	rev	r2, r2
 8000ee0:	fab2 f282 	clz	r2, r2
 8000ee4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8000ee8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8000eec:	4770      	bx	lr
 8000eee:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000ef2:	f004 0503 	and.w	r5, r4, #3
 8000ef6:	f1c4 0000 	rsb	r0, r4, #0
 8000efa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8000efe:	f014 0f04 	tst.w	r4, #4
 8000f02:	f891 f040 	pld	[r1, #64]	; 0x40
 8000f06:	fa0c f505 	lsl.w	r5, ip, r5
 8000f0a:	ea62 0205 	orn	r2, r2, r5
 8000f0e:	bf1c      	itt	ne
 8000f10:	ea63 0305 	ornne	r3, r3, r5
 8000f14:	4662      	movne	r2, ip
 8000f16:	f04f 0400 	mov.w	r4, #0
 8000f1a:	e7a9      	b.n	8000e70 <strlen+0x30>
 8000f1c:	0000      	movs	r0, r0
	...

08000f20 <memchr>:
 8000f20:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000f24:	2a10      	cmp	r2, #16
 8000f26:	db2b      	blt.n	8000f80 <memchr+0x60>
 8000f28:	f010 0f07 	tst.w	r0, #7
 8000f2c:	d008      	beq.n	8000f40 <memchr+0x20>
 8000f2e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000f32:	3a01      	subs	r2, #1
 8000f34:	428b      	cmp	r3, r1
 8000f36:	d02d      	beq.n	8000f94 <memchr+0x74>
 8000f38:	f010 0f07 	tst.w	r0, #7
 8000f3c:	b342      	cbz	r2, 8000f90 <memchr+0x70>
 8000f3e:	d1f6      	bne.n	8000f2e <memchr+0xe>
 8000f40:	b4f0      	push	{r4, r5, r6, r7}
 8000f42:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000f46:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 8000f4a:	f022 0407 	bic.w	r4, r2, #7
 8000f4e:	f07f 0700 	mvns.w	r7, #0
 8000f52:	2300      	movs	r3, #0
 8000f54:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000f58:	3c08      	subs	r4, #8
 8000f5a:	ea85 0501 	eor.w	r5, r5, r1
 8000f5e:	ea86 0601 	eor.w	r6, r6, r1
 8000f62:	fa85 f547 	uadd8	r5, r5, r7
 8000f66:	faa3 f587 	sel	r5, r3, r7
 8000f6a:	fa86 f647 	uadd8	r6, r6, r7
 8000f6e:	faa5 f687 	sel	r6, r5, r7
 8000f72:	b98e      	cbnz	r6, 8000f98 <memchr+0x78>
 8000f74:	d1ee      	bne.n	8000f54 <memchr+0x34>
 8000f76:	bcf0      	pop	{r4, r5, r6, r7}
 8000f78:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000f7c:	f002 0207 	and.w	r2, r2, #7
 8000f80:	b132      	cbz	r2, 8000f90 <memchr+0x70>
 8000f82:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000f86:	3a01      	subs	r2, #1
 8000f88:	ea83 0301 	eor.w	r3, r3, r1
 8000f8c:	b113      	cbz	r3, 8000f94 <memchr+0x74>
 8000f8e:	d1f8      	bne.n	8000f82 <memchr+0x62>
 8000f90:	2000      	movs	r0, #0
 8000f92:	4770      	bx	lr
 8000f94:	3801      	subs	r0, #1
 8000f96:	4770      	bx	lr
 8000f98:	2d00      	cmp	r5, #0
 8000f9a:	bf06      	itte	eq
 8000f9c:	4635      	moveq	r5, r6
 8000f9e:	3803      	subeq	r0, #3
 8000fa0:	3807      	subne	r0, #7
 8000fa2:	f015 0f01 	tst.w	r5, #1
 8000fa6:	d107      	bne.n	8000fb8 <memchr+0x98>
 8000fa8:	3001      	adds	r0, #1
 8000faa:	f415 7f80 	tst.w	r5, #256	; 0x100
 8000fae:	bf02      	ittt	eq
 8000fb0:	3001      	addeq	r0, #1
 8000fb2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000fb6:	3001      	addeq	r0, #1
 8000fb8:	bcf0      	pop	{r4, r5, r6, r7}
 8000fba:	3801      	subs	r0, #1
 8000fbc:	4770      	bx	lr
 8000fbe:	bf00      	nop

08000fc0 <__gedf2>:
 8000fc0:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8000fc4:	e006      	b.n	8000fd4 <__cmpdf2+0x4>
 8000fc6:	bf00      	nop

08000fc8 <__ledf2>:
 8000fc8:	f04f 0c01 	mov.w	ip, #1
 8000fcc:	e002      	b.n	8000fd4 <__cmpdf2+0x4>
 8000fce:	bf00      	nop

08000fd0 <__cmpdf2>:
 8000fd0:	f04f 0c01 	mov.w	ip, #1
 8000fd4:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000fd8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000fdc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fe0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000fe4:	bf18      	it	ne
 8000fe6:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8000fea:	d01b      	beq.n	8001024 <__cmpdf2+0x54>
 8000fec:	b001      	add	sp, #4
 8000fee:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8000ff2:	bf0c      	ite	eq
 8000ff4:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000ff8:	ea91 0f03 	teqne	r1, r3
 8000ffc:	bf02      	ittt	eq
 8000ffe:	ea90 0f02 	teqeq	r0, r2
 8001002:	2000      	moveq	r0, #0
 8001004:	4770      	bxeq	lr
 8001006:	f110 0f00 	cmn.w	r0, #0
 800100a:	ea91 0f03 	teq	r1, r3
 800100e:	bf58      	it	pl
 8001010:	4299      	cmppl	r1, r3
 8001012:	bf08      	it	eq
 8001014:	4290      	cmpeq	r0, r2
 8001016:	bf2c      	ite	cs
 8001018:	17d8      	asrcs	r0, r3, #31
 800101a:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 800101e:	f040 0001 	orr.w	r0, r0, #1
 8001022:	4770      	bx	lr
 8001024:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001028:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800102c:	d102      	bne.n	8001034 <__cmpdf2+0x64>
 800102e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8001032:	d107      	bne.n	8001044 <__cmpdf2+0x74>
 8001034:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001038:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800103c:	d1d6      	bne.n	8000fec <__cmpdf2+0x1c>
 800103e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8001042:	d0d3      	beq.n	8000fec <__cmpdf2+0x1c>
 8001044:	f85d 0b04 	ldr.w	r0, [sp], #4
 8001048:	4770      	bx	lr
 800104a:	bf00      	nop

0800104c <__aeabi_cdrcmple>:
 800104c:	4684      	mov	ip, r0
 800104e:	4610      	mov	r0, r2
 8001050:	4662      	mov	r2, ip
 8001052:	468c      	mov	ip, r1
 8001054:	4619      	mov	r1, r3
 8001056:	4663      	mov	r3, ip
 8001058:	e000      	b.n	800105c <__aeabi_cdcmpeq>
 800105a:	bf00      	nop

0800105c <__aeabi_cdcmpeq>:
 800105c:	b501      	push	{r0, lr}
 800105e:	f7ff ffb7 	bl	8000fd0 <__cmpdf2>
 8001062:	2800      	cmp	r0, #0
 8001064:	bf48      	it	mi
 8001066:	f110 0f00 	cmnmi.w	r0, #0
 800106a:	bd01      	pop	{r0, pc}

0800106c <__aeabi_dcmpeq>:
 800106c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001070:	f7ff fff4 	bl	800105c <__aeabi_cdcmpeq>
 8001074:	bf0c      	ite	eq
 8001076:	2001      	moveq	r0, #1
 8001078:	2000      	movne	r0, #0
 800107a:	f85d fb08 	ldr.w	pc, [sp], #8
 800107e:	bf00      	nop

08001080 <__aeabi_dcmplt>:
 8001080:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001084:	f7ff ffea 	bl	800105c <__aeabi_cdcmpeq>
 8001088:	bf34      	ite	cc
 800108a:	2001      	movcc	r0, #1
 800108c:	2000      	movcs	r0, #0
 800108e:	f85d fb08 	ldr.w	pc, [sp], #8
 8001092:	bf00      	nop

08001094 <__aeabi_dcmple>:
 8001094:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001098:	f7ff ffe0 	bl	800105c <__aeabi_cdcmpeq>
 800109c:	bf94      	ite	ls
 800109e:	2001      	movls	r0, #1
 80010a0:	2000      	movhi	r0, #0
 80010a2:	f85d fb08 	ldr.w	pc, [sp], #8
 80010a6:	bf00      	nop

080010a8 <__aeabi_dcmpge>:
 80010a8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010ac:	f7ff ffce 	bl	800104c <__aeabi_cdrcmple>
 80010b0:	bf94      	ite	ls
 80010b2:	2001      	movls	r0, #1
 80010b4:	2000      	movhi	r0, #0
 80010b6:	f85d fb08 	ldr.w	pc, [sp], #8
 80010ba:	bf00      	nop

080010bc <__aeabi_dcmpgt>:
 80010bc:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010c0:	f7ff ffc4 	bl	800104c <__aeabi_cdrcmple>
 80010c4:	bf34      	ite	cc
 80010c6:	2001      	movcc	r0, #1
 80010c8:	2000      	movcs	r0, #0
 80010ca:	f85d fb08 	ldr.w	pc, [sp], #8
 80010ce:	bf00      	nop

080010d0 <__aeabi_dcmpun>:
 80010d0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80010d4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010d8:	d102      	bne.n	80010e0 <__aeabi_dcmpun+0x10>
 80010da:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80010de:	d10a      	bne.n	80010f6 <__aeabi_dcmpun+0x26>
 80010e0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80010e4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010e8:	d102      	bne.n	80010f0 <__aeabi_dcmpun+0x20>
 80010ea:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80010ee:	d102      	bne.n	80010f6 <__aeabi_dcmpun+0x26>
 80010f0:	f04f 0000 	mov.w	r0, #0
 80010f4:	4770      	bx	lr
 80010f6:	f04f 0001 	mov.w	r0, #1
 80010fa:	4770      	bx	lr

080010fc <__aeabi_d2iz>:
 80010fc:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8001100:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8001104:	d215      	bcs.n	8001132 <__aeabi_d2iz+0x36>
 8001106:	d511      	bpl.n	800112c <__aeabi_d2iz+0x30>
 8001108:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 800110c:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8001110:	d912      	bls.n	8001138 <__aeabi_d2iz+0x3c>
 8001112:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8001116:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 800111a:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800111e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8001122:	fa23 f002 	lsr.w	r0, r3, r2
 8001126:	bf18      	it	ne
 8001128:	4240      	negne	r0, r0
 800112a:	4770      	bx	lr
 800112c:	f04f 0000 	mov.w	r0, #0
 8001130:	4770      	bx	lr
 8001132:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8001136:	d105      	bne.n	8001144 <__aeabi_d2iz+0x48>
 8001138:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 800113c:	bf08      	it	eq
 800113e:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8001142:	4770      	bx	lr
 8001144:	f04f 0000 	mov.w	r0, #0
 8001148:	4770      	bx	lr
 800114a:	bf00      	nop

0800114c <HAL_Init>:
 800114c:	b580      	push	{r7, lr}
 800114e:	466f      	mov	r7, sp
 8001150:	2003      	movs	r0, #3
 8001152:	f000 f81a 	bl	800118a <HAL_NVIC_SetPriorityGrouping>
 8001156:	200f      	movs	r0, #15
 8001158:	f000 fbc1 	bl	80018de <HAL_InitTick>
 800115c:	2800      	cmp	r0, #0
 800115e:	bf1c      	itt	ne
 8001160:	2001      	movne	r0, #1
 8001162:	bd80      	popne	{r7, pc}
 8001164:	f000 f96b 	bl	800143e <HAL_MspInit>
 8001168:	2000      	movs	r0, #0
 800116a:	bd80      	pop	{r7, pc}

0800116c <HAL_IncTick>:
 800116c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001170:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001174:	6801      	ldr	r1, [r0, #0]
 8001176:	3101      	adds	r1, #1
 8001178:	f840 1e00 	strt	r1, [r0]
 800117c:	4770      	bx	lr

0800117e <HAL_GetTick>:
 800117e:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001182:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001186:	6800      	ldr	r0, [r0, #0]
 8001188:	4770      	bx	lr

0800118a <HAL_NVIC_SetPriorityGrouping>:
 800118a:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800118e:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001192:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001196:	680a      	ldr	r2, [r1, #0]
 8001198:	401a      	ands	r2, r3
 800119a:	f360 220a 	bfi	r2, r0, #8, #3
 800119e:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011a2:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011a6:	6008      	str	r0, [r1, #0]
 80011a8:	4770      	bx	lr

080011aa <HAL_NVIC_SetPriority>:
 80011aa:	b580      	push	{r7, lr}
 80011ac:	466f      	mov	r7, sp
 80011ae:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011b2:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011b6:	2800      	cmp	r0, #0
 80011b8:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011bc:	f000 030f 	and.w	r3, r0, #15
 80011c0:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 80011c4:	f1a3 0304 	sub.w	r3, r3, #4
 80011c8:	4473      	add	r3, lr
 80011ca:	bfb8      	it	lt
 80011cc:	f103 0c0c 	addlt.w	ip, r3, #12
 80011d0:	f8de 0000 	ldr.w	r0, [lr]
 80011d4:	f3c0 2002 	ubfx	r0, r0, #8, #3
 80011d8:	f100 0e04 	add.w	lr, r0, #4
 80011dc:	1ec3      	subs	r3, r0, #3
 80011de:	f080 0007 	eor.w	r0, r0, #7
 80011e2:	f1be 0f07 	cmp.w	lr, #7
 80011e6:	f04f 0e01 	mov.w	lr, #1
 80011ea:	bf38      	it	cc
 80011ec:	2300      	movcc	r3, #0
 80011ee:	2804      	cmp	r0, #4
 80011f0:	bf28      	it	cs
 80011f2:	2004      	movcs	r0, #4
 80011f4:	fa0e f000 	lsl.w	r0, lr, r0
 80011f8:	3801      	subs	r0, #1
 80011fa:	4008      	ands	r0, r1
 80011fc:	fa0e f103 	lsl.w	r1, lr, r3
 8001200:	310f      	adds	r1, #15
 8001202:	4098      	lsls	r0, r3
 8001204:	4011      	ands	r1, r2
 8001206:	4308      	orrs	r0, r1
 8001208:	0100      	lsls	r0, r0, #4
 800120a:	f88c 0000 	strb.w	r0, [ip]
 800120e:	bd80      	pop	{r7, pc}

08001210 <HAL_NVIC_EnableIRQ>:
 8001210:	f000 011f 	and.w	r1, r0, #31
 8001214:	2201      	movs	r2, #1
 8001216:	0940      	lsrs	r0, r0, #5
 8001218:	fa02 f101 	lsl.w	r1, r2, r1
 800121c:	f24e 1200 	movw	r2, #57600	; 0xe100
 8001220:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001224:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001228:	4770      	bx	lr

0800122a <HAL_SYSTICK_IRQHandler>:
 800122a:	f000 b800 	b.w	800122e <HAL_SYSTICK_Callback>

0800122e <HAL_SYSTICK_Callback>:
 800122e:	4770      	bx	lr

08001230 <HAL_GPIO_Init>:
 8001230:	b085      	sub	sp, #20
 8001232:	f84d 4e00 	strt	r4, [sp]
 8001236:	f84d 5e04 	strt	r5, [sp, #4]
 800123a:	f84d 6e08 	strt	r6, [sp, #8]
 800123e:	f84d 7e0c 	strt	r7, [sp, #12]
 8001242:	f84d ee10 	strt	lr, [sp, #16]
 8001246:	af03      	add	r7, sp, #12
 8001248:	b084      	sub	sp, #16
 800124a:	f84d 8e00 	strt	r8, [sp]
 800124e:	f84d 9e04 	strt	r9, [sp, #4]
 8001252:	f84d ae08 	strt	sl, [sp, #8]
 8001256:	f84d be0c 	strt	fp, [sp, #12]
 800125a:	b082      	sub	sp, #8
 800125c:	680e      	ldr	r6, [r1, #0]
 800125e:	2e00      	cmp	r6, #0
 8001260:	f000 80e9 	beq.w	8001436 <HAL_GPIO_Init+0x206>
 8001264:	f641 0200 	movw	r2, #6144	; 0x1800
 8001268:	2507      	movs	r5, #7
 800126a:	f04f 0801 	mov.w	r8, #1
 800126e:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001272:	4290      	cmp	r0, r2
 8001274:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001278:	ea4f 23b2 	mov.w	r3, r2, ror #10
 800127c:	bf08      	it	eq
 800127e:	2506      	moveq	r5, #6
 8001280:	2b06      	cmp	r3, #6
 8001282:	bf38      	it	cc
 8001284:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001288:	2200      	movs	r2, #0
 800128a:	f84d 5e00 	strt	r5, [sp]
 800128e:	2500      	movs	r5, #0
 8001290:	f1a8 0a01 	sub.w	sl, r8, #1
 8001294:	2301      	movs	r3, #1
 8001296:	fa03 fb0a 	lsl.w	fp, r3, sl
 800129a:	ea16 090b 	ands.w	r9, r6, fp
 800129e:	f000 80c1 	beq.w	8001424 <HAL_GPIO_Init+0x1f4>
 80012a2:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012a6:	f04e 0610 	orr.w	r6, lr, #16
 80012aa:	2e12      	cmp	r6, #18
 80012ac:	d116      	bne.n	80012dc <HAL_GPIO_Init+0xac>
 80012ae:	f005 061c 	and.w	r6, r5, #28
 80012b2:	230f      	movs	r3, #15
 80012b4:	fa03 fc06 	lsl.w	ip, r3, r6
 80012b8:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012bc:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012c0:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012c4:	4404      	add	r4, r0
 80012c6:	6a23      	ldr	r3, [r4, #32]
 80012c8:	ea23 0c0c 	bic.w	ip, r3, ip
 80012cc:	690b      	ldr	r3, [r1, #16]
 80012ce:	40b3      	lsls	r3, r6
 80012d0:	ea43 030c 	orr.w	r3, r3, ip
 80012d4:	f844 3e20 	strt	r3, [r4, #32]
 80012d8:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012dc:	6806      	ldr	r6, [r0, #0]
 80012de:	2403      	movs	r4, #3
 80012e0:	f00e 0c03 	and.w	ip, lr, #3
 80012e4:	f1be 0f12 	cmp.w	lr, #18
 80012e8:	fa04 f402 	lsl.w	r4, r4, r2
 80012ec:	fa0c f302 	lsl.w	r3, ip, r2
 80012f0:	ea26 0604 	bic.w	r6, r6, r4
 80012f4:	ea43 0306 	orr.w	r3, r3, r6
 80012f8:	ea6f 0604 	mvn.w	r6, r4
 80012fc:	f840 3e00 	strt	r3, [r0]
 8001300:	d818      	bhi.n	8001334 <HAL_GPIO_Init+0x104>
 8001302:	2301      	movs	r3, #1
 8001304:	fa03 f30e 	lsl.w	r3, r3, lr
 8001308:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800130c:	bf1f      	itttt	ne
 800130e:	6883      	ldrne	r3, [r0, #8]
 8001310:	4033      	andne	r3, r6
 8001312:	68cc      	ldrne	r4, [r1, #12]
 8001314:	4094      	lslne	r4, r2
 8001316:	bf1f      	itttt	ne
 8001318:	4323      	orrne	r3, r4
 800131a:	f840 3e08 	strtne	r3, [r0, #8]
 800131e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001322:	fa03 f30a 	lslne.w	r3, r3, sl
 8001326:	bf1f      	itttt	ne
 8001328:	6844      	ldrne	r4, [r0, #4]
 800132a:	ea24 040b 	bicne.w	r4, r4, fp
 800132e:	4323      	orrne	r3, r4
 8001330:	f840 3e04 	strtne	r3, [r0, #4]
 8001334:	f1bc 0f03 	cmp.w	ip, #3
 8001338:	d109      	bne.n	800134e <HAL_GPIO_Init+0x11e>
 800133a:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 800133e:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001340:	fa03 f30a 	lsl.w	r3, r3, sl
 8001344:	ea24 040b 	bic.w	r4, r4, fp
 8001348:	4323      	orrs	r3, r4
 800134a:	f840 3e2c 	strt	r3, [r0, #44]
 800134e:	68c3      	ldr	r3, [r0, #12]
 8001350:	4033      	ands	r3, r6
 8001352:	688e      	ldr	r6, [r1, #8]
 8001354:	4096      	lsls	r6, r2
 8001356:	4333      	orrs	r3, r6
 8001358:	f840 3e0c 	strt	r3, [r0, #12]
 800135c:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 8001360:	d560      	bpl.n	8001424 <HAL_GPIO_Init+0x1f4>
 8001362:	f241 0360 	movw	r3, #4192	; 0x1060
 8001366:	f005 040c 	and.w	r4, r5, #12
 800136a:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800136e:	461e      	mov	r6, r3
 8001370:	6833      	ldr	r3, [r6, #0]
 8001372:	f043 0301 	orr.w	r3, r3, #1
 8001376:	f846 3e00 	strt	r3, [r6]
 800137a:	6833      	ldr	r3, [r6, #0]
 800137c:	f240 4600 	movw	r6, #1024	; 0x400
 8001380:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001384:	46b6      	mov	lr, r6
 8001386:	f003 0301 	and.w	r3, r3, #1
 800138a:	f84d 3e04 	strt	r3, [sp, #4]
 800138e:	f02a 0303 	bic.w	r3, sl, #3
 8001392:	9e01      	ldr	r6, [sp, #4]
 8001394:	4473      	add	r3, lr
 8001396:	f64f 4608 	movw	r6, #64520	; 0xfc08
 800139a:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800139e:	46b2      	mov	sl, r6
 80013a0:	260f      	movs	r6, #15
 80013a2:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013a6:	40a6      	lsls	r6, r4
 80013a8:	ea2c 0c06 	bic.w	ip, ip, r6
 80013ac:	9e00      	ldr	r6, [sp, #0]
 80013ae:	fa06 f404 	lsl.w	r4, r6, r4
 80013b2:	ea4c 0604 	orr.w	r6, ip, r4
 80013b6:	eb03 030a 	add.w	r3, r3, sl
 80013ba:	f843 6e00 	strt	r6, [r3]
 80013be:	eba3 030a 	sub.w	r3, r3, sl
 80013c2:	f8de 3000 	ldr.w	r3, [lr]
 80013c6:	684e      	ldr	r6, [r1, #4]
 80013c8:	ea23 0309 	bic.w	r3, r3, r9
 80013cc:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013d0:	bf18      	it	ne
 80013d2:	ea43 0309 	orrne.w	r3, r3, r9
 80013d6:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013da:	f84e 3e00 	strt	r3, [lr]
 80013de:	f8de 3004 	ldr.w	r3, [lr, #4]
 80013e2:	ea23 0309 	bic.w	r3, r3, r9
 80013e6:	bf18      	it	ne
 80013e8:	ea43 0309 	orrne.w	r3, r3, r9
 80013ec:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 80013f0:	f84e 3e04 	strt	r3, [lr, #4]
 80013f4:	f8de 3008 	ldr.w	r3, [lr, #8]
 80013f8:	ea23 0309 	bic.w	r3, r3, r9
 80013fc:	bf18      	it	ne
 80013fe:	ea43 0309 	orrne.w	r3, r3, r9
 8001402:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001406:	f84e 3e08 	strt	r3, [lr, #8]
 800140a:	f240 430c 	movw	r3, #1036	; 0x40c
 800140e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001412:	461c      	mov	r4, r3
 8001414:	6823      	ldr	r3, [r4, #0]
 8001416:	ea23 0309 	bic.w	r3, r3, r9
 800141a:	bf18      	it	ne
 800141c:	ea43 0309 	orrne.w	r3, r3, r9
 8001420:	f844 3e00 	strt	r3, [r4]
 8001424:	680e      	ldr	r6, [r1, #0]
 8001426:	3202      	adds	r2, #2
 8001428:	3504      	adds	r5, #4
 800142a:	fa36 f308 	lsrs.w	r3, r6, r8
 800142e:	f108 0801 	add.w	r8, r8, #1
 8001432:	f47f af2d 	bne.w	8001290 <HAL_GPIO_Init+0x60>
 8001436:	b002      	add	sp, #8
 8001438:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800143c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800143e <HAL_MspInit>:
 800143e:	4770      	bx	lr

08001440 <HAL_RCC_GetSysClockFreq>:
 8001440:	b082      	sub	sp, #8
 8001442:	f84d 7e00 	strt	r7, [sp]
 8001446:	f84d ee04 	strt	lr, [sp, #4]
 800144a:	466f      	mov	r7, sp
 800144c:	f241 010c 	movw	r1, #4108	; 0x100c
 8001450:	f241 2e00 	movw	lr, #4608	; 0x1200
 8001454:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001458:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800145c:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001460:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001464:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001468:	6808      	ldr	r0, [r1, #0]
 800146a:	f012 030c 	ands.w	r3, r2, #12
 800146e:	d005      	beq.n	800147c <HAL_RCC_GetSysClockFreq+0x3c>
 8001470:	2b0c      	cmp	r3, #12
 8001472:	bf04      	itt	eq
 8001474:	f000 0003 	andeq.w	r0, r0, #3
 8001478:	2801      	cmpeq	r0, #1
 800147a:	d118      	bne.n	80014ae <HAL_RCC_GetSysClockFreq+0x6e>
 800147c:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001480:	f010 0f08 	tst.w	r0, #8
 8001484:	d103      	bne.n	800148e <HAL_RCC_GetSysClockFreq+0x4e>
 8001486:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 800148a:	0a00      	lsrs	r0, r0, #8
 800148c:	e002      	b.n	8001494 <HAL_RCC_GetSysClockFreq+0x54>
 800148e:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001492:	0900      	lsrs	r0, r0, #4
 8001494:	f247 6270 	movw	r2, #30320	; 0x7670
 8001498:	f000 000f 	and.w	r0, r0, #15
 800149c:	2b00      	cmp	r3, #0
 800149e:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014a2:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014a6:	4610      	mov	r0, r2
 80014a8:	bf18      	it	ne
 80014aa:	2000      	movne	r0, #0
 80014ac:	e00b      	b.n	80014c6 <HAL_RCC_GetSysClockFreq+0x86>
 80014ae:	f003 000f 	and.w	r0, r3, #15
 80014b2:	2804      	cmp	r0, #4
 80014b4:	bf04      	itt	eq
 80014b6:	4660      	moveq	r0, ip
 80014b8:	bd80      	popeq	{r7, pc}
 80014ba:	2808      	cmp	r0, #8
 80014bc:	bf04      	itt	eq
 80014be:	4670      	moveq	r0, lr
 80014c0:	bd80      	popeq	{r7, pc}
 80014c2:	2000      	movs	r0, #0
 80014c4:	2200      	movs	r2, #0
 80014c6:	2b0c      	cmp	r3, #12
 80014c8:	bf18      	it	ne
 80014ca:	bd80      	popne	{r7, pc}
 80014cc:	6808      	ldr	r0, [r1, #0]
 80014ce:	f000 0303 	and.w	r3, r0, #3
 80014d2:	6808      	ldr	r0, [r1, #0]
 80014d4:	2b03      	cmp	r3, #3
 80014d6:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014da:	f100 0001 	add.w	r0, r0, #1
 80014de:	d003      	beq.n	80014e8 <HAL_RCC_GetSysClockFreq+0xa8>
 80014e0:	2b02      	cmp	r3, #2
 80014e2:	46e6      	mov	lr, ip
 80014e4:	bf18      	it	ne
 80014e6:	4696      	movne	lr, r2
 80014e8:	680a      	ldr	r2, [r1, #0]
 80014ea:	fbbe f0f0 	udiv	r0, lr, r0
 80014ee:	f3c2 2206 	ubfx	r2, r2, #8, #7
 80014f2:	6809      	ldr	r1, [r1, #0]
 80014f4:	4350      	muls	r0, r2
 80014f6:	2202      	movs	r2, #2
 80014f8:	f3c1 6141 	ubfx	r1, r1, #25, #2
 80014fc:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001500:	fbb0 f0f1 	udiv	r0, r0, r1
 8001504:	bd80      	pop	{r7, pc}

08001506 <HAL_RCC_GetPCLK1Freq>:
 8001506:	f240 0014 	movw	r0, #20
 800150a:	f241 0108 	movw	r1, #4104	; 0x1008
 800150e:	f247 6268 	movw	r2, #30312	; 0x7668
 8001512:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001516:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800151a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800151e:	6800      	ldr	r0, [r0, #0]
 8001520:	6809      	ldr	r1, [r1, #0]
 8001522:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001526:	5c51      	ldrb	r1, [r2, r1]
 8001528:	f001 011f 	and.w	r1, r1, #31
 800152c:	40c8      	lsrs	r0, r1
 800152e:	4770      	bx	lr

08001530 <HAL_RCC_GetPCLK2Freq>:
 8001530:	f240 0014 	movw	r0, #20
 8001534:	f241 0108 	movw	r1, #4104	; 0x1008
 8001538:	f247 6268 	movw	r2, #30312	; 0x7668
 800153c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001540:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001544:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001548:	6800      	ldr	r0, [r0, #0]
 800154a:	6809      	ldr	r1, [r1, #0]
 800154c:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001550:	5c51      	ldrb	r1, [r2, r1]
 8001552:	f001 011f 	and.w	r1, r1, #31
 8001556:	40c8      	lsrs	r0, r1
 8001558:	4770      	bx	lr

0800155a <HAL_RCC_GetClockConfig>:
 800155a:	220f      	movs	r2, #15
 800155c:	6002      	str	r2, [r0, #0]
 800155e:	f241 0208 	movw	r2, #4104	; 0x1008
 8001562:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001566:	6813      	ldr	r3, [r2, #0]
 8001568:	f003 0303 	and.w	r3, r3, #3
 800156c:	6043      	str	r3, [r0, #4]
 800156e:	6813      	ldr	r3, [r2, #0]
 8001570:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001574:	6083      	str	r3, [r0, #8]
 8001576:	6813      	ldr	r3, [r2, #0]
 8001578:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 800157c:	60c3      	str	r3, [r0, #12]
 800157e:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 8001582:	6812      	ldr	r2, [r2, #0]
 8001584:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001588:	6102      	str	r2, [r0, #16]
 800158a:	f242 0000 	movw	r0, #8192	; 0x2000
 800158e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001592:	6800      	ldr	r0, [r0, #0]
 8001594:	f000 0007 	and.w	r0, r0, #7
 8001598:	6008      	str	r0, [r1, #0]
 800159a:	4770      	bx	lr

0800159c <HAL_TIM_Base_Init>:
 800159c:	b5d0      	push	{r4, r6, r7, lr}
 800159e:	af02      	add	r7, sp, #8
 80015a0:	4604      	mov	r4, r0
 80015a2:	2c00      	cmp	r4, #0
 80015a4:	bf04      	itt	eq
 80015a6:	2001      	moveq	r0, #1
 80015a8:	bdd0      	popeq	{r4, r6, r7, pc}
 80015aa:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015ac:	b920      	cbnz	r0, 80015b8 <HAL_TIM_Base_Init+0x1c>
 80015ae:	2000      	movs	r0, #0
 80015b0:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015b2:	4620      	mov	r0, r4
 80015b4:	f000 f892 	bl	80016dc <HAL_TIM_Base_MspInit>
 80015b8:	2002      	movs	r0, #2
 80015ba:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015be:	6420      	str	r0, [r4, #64]	; 0x40
 80015c0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015c4:	6820      	ldr	r0, [r4, #0]
 80015c6:	6801      	ldr	r1, [r0, #0]
 80015c8:	4290      	cmp	r0, r2
 80015ca:	dc0f      	bgt.n	80015ec <HAL_TIM_Base_Init+0x50>
 80015cc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015d0:	bf1e      	ittt	ne
 80015d2:	f240 4200 	movwne	r2, #1024	; 0x400
 80015d6:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015da:	4290      	cmpne	r0, r2
 80015dc:	d018      	beq.n	8001610 <HAL_TIM_Base_Init+0x74>
 80015de:	f640 0200 	movw	r2, #2048	; 0x800
 80015e2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e6:	4290      	cmp	r0, r2
 80015e8:	d012      	beq.n	8001610 <HAL_TIM_Base_Init+0x74>
 80015ea:	e015      	b.n	8001618 <HAL_TIM_Base_Init+0x7c>
 80015ec:	f640 4200 	movw	r2, #3072	; 0xc00
 80015f0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f4:	4290      	cmp	r0, r2
 80015f6:	bf1e      	ittt	ne
 80015f8:	f243 4200 	movwne	r2, #13312	; 0x3400
 80015fc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001600:	4290      	cmpne	r0, r2
 8001602:	d005      	beq.n	8001610 <HAL_TIM_Base_Init+0x74>
 8001604:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001608:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160c:	4290      	cmp	r0, r2
 800160e:	d103      	bne.n	8001618 <HAL_TIM_Base_Init+0x7c>
 8001610:	68a2      	ldr	r2, [r4, #8]
 8001612:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001616:	4311      	orrs	r1, r2
 8001618:	f642 32ff 	movw	r2, #11263	; 0x2bff
 800161c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001620:	4290      	cmp	r0, r2
 8001622:	dd14      	ble.n	800164e <HAL_TIM_Base_Init+0xb2>
 8001624:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001628:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800162c:	4290      	cmp	r0, r2
 800162e:	dd1a      	ble.n	8001666 <HAL_TIM_Base_Init+0xca>
 8001630:	f244 0200 	movw	r2, #16384	; 0x4000
 8001634:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001638:	4290      	cmp	r0, r2
 800163a:	bf1e      	ittt	ne
 800163c:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001640:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001644:	4290      	cmpne	r0, r2
 8001646:	d027      	beq.n	8001698 <HAL_TIM_Base_Init+0xfc>
 8001648:	f244 4200 	movw	r2, #17408	; 0x4400
 800164c:	e013      	b.n	8001676 <HAL_TIM_Base_Init+0xda>
 800164e:	f240 72ff 	movw	r2, #2047	; 0x7ff
 8001652:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001656:	4290      	cmp	r0, r2
 8001658:	dc12      	bgt.n	8001680 <HAL_TIM_Base_Init+0xe4>
 800165a:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800165e:	d01b      	beq.n	8001698 <HAL_TIM_Base_Init+0xfc>
 8001660:	f240 4200 	movw	r2, #1024	; 0x400
 8001664:	e014      	b.n	8001690 <HAL_TIM_Base_Init+0xf4>
 8001666:	f642 4200 	movw	r2, #11264	; 0x2c00
 800166a:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800166e:	4290      	cmp	r0, r2
 8001670:	d012      	beq.n	8001698 <HAL_TIM_Base_Init+0xfc>
 8001672:	f243 4200 	movw	r2, #13312	; 0x3400
 8001676:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800167a:	4290      	cmp	r0, r2
 800167c:	d00c      	beq.n	8001698 <HAL_TIM_Base_Init+0xfc>
 800167e:	e00f      	b.n	80016a0 <HAL_TIM_Base_Init+0x104>
 8001680:	f640 0200 	movw	r2, #2048	; 0x800
 8001684:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001688:	4290      	cmp	r0, r2
 800168a:	d005      	beq.n	8001698 <HAL_TIM_Base_Init+0xfc>
 800168c:	f640 4200 	movw	r2, #3072	; 0xc00
 8001690:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001694:	4290      	cmp	r0, r2
 8001696:	d103      	bne.n	80016a0 <HAL_TIM_Base_Init+0x104>
 8001698:	6922      	ldr	r2, [r4, #16]
 800169a:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800169e:	4311      	orrs	r1, r2
 80016a0:	69a2      	ldr	r2, [r4, #24]
 80016a2:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016a6:	4311      	orrs	r1, r2
 80016a8:	6001      	str	r1, [r0, #0]
 80016aa:	68e1      	ldr	r1, [r4, #12]
 80016ac:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016ae:	6861      	ldr	r1, [r4, #4]
 80016b0:	6281      	str	r1, [r0, #40]	; 0x28
 80016b2:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016b6:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016ba:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016be:	2907      	cmp	r1, #7
 80016c0:	d807      	bhi.n	80016d2 <HAL_TIM_Base_Init+0x136>
 80016c2:	2201      	movs	r2, #1
 80016c4:	fa02 f101 	lsl.w	r1, r2, r1
 80016c8:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016cc:	bf1c      	itt	ne
 80016ce:	6961      	ldrne	r1, [r4, #20]
 80016d0:	6301      	strne	r1, [r0, #48]	; 0x30
 80016d2:	2101      	movs	r1, #1
 80016d4:	6141      	str	r1, [r0, #20]
 80016d6:	2000      	movs	r0, #0
 80016d8:	6421      	str	r1, [r4, #64]	; 0x40
 80016da:	bdd0      	pop	{r4, r6, r7, pc}

080016dc <HAL_TIM_Base_MspInit>:
 80016dc:	4770      	bx	lr

080016de <HAL_TIM_Base_Start_IT>:
 80016de:	6800      	ldr	r0, [r0, #0]
 80016e0:	68c1      	ldr	r1, [r0, #12]
 80016e2:	f041 0101 	orr.w	r1, r1, #1
 80016e6:	60c1      	str	r1, [r0, #12]
 80016e8:	2107      	movs	r1, #7
 80016ea:	6882      	ldr	r2, [r0, #8]
 80016ec:	f2c0 0101 	movt	r1, #1
 80016f0:	400a      	ands	r2, r1
 80016f2:	2a06      	cmp	r2, #6
 80016f4:	d008      	beq.n	8001708 <HAL_TIM_Base_Start_IT+0x2a>
 80016f6:	6882      	ldr	r2, [r0, #8]
 80016f8:	4011      	ands	r1, r2
 80016fa:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016fe:	bf1e      	ittt	ne
 8001700:	6801      	ldrne	r1, [r0, #0]
 8001702:	f041 0101 	orrne.w	r1, r1, #1
 8001706:	6001      	strne	r1, [r0, #0]
 8001708:	2000      	movs	r0, #0
 800170a:	4770      	bx	lr

0800170c <HAL_TIM_IRQHandler>:
 800170c:	b084      	sub	sp, #16
 800170e:	f84d 4e00 	strt	r4, [sp]
 8001712:	f84d 6e04 	strt	r6, [sp, #4]
 8001716:	f84d 7e08 	strt	r7, [sp, #8]
 800171a:	f84d ee0c 	strt	lr, [sp, #12]
 800171e:	af02      	add	r7, sp, #8
 8001720:	4604      	mov	r4, r0
 8001722:	6820      	ldr	r0, [r4, #0]
 8001724:	6901      	ldr	r1, [r0, #16]
 8001726:	f011 0f02 	tst.w	r1, #2
 800172a:	bf1c      	itt	ne
 800172c:	68c1      	ldrne	r1, [r0, #12]
 800172e:	f011 0f02 	tstne.w	r1, #2
 8001732:	d018      	beq.n	8001766 <HAL_TIM_IRQHandler+0x5a>
 8001734:	f06f 0102 	mvn.w	r1, #2
 8001738:	f840 1e10 	strt	r1, [r0, #16]
 800173c:	2101      	movs	r1, #1
 800173e:	f844 1e1c 	strt	r1, [r4, #28]
 8001742:	6980      	ldr	r0, [r0, #24]
 8001744:	f010 0f03 	tst.w	r0, #3
 8001748:	d003      	beq.n	8001752 <HAL_TIM_IRQHandler+0x46>
 800174a:	4620      	mov	r0, r4
 800174c:	f000 f8c0 	bl	80018d0 <HAL_TIM_IC_CaptureCallback>
 8001750:	e005      	b.n	800175e <HAL_TIM_IRQHandler+0x52>
 8001752:	4620      	mov	r0, r4
 8001754:	f000 f8bd 	bl	80018d2 <HAL_TIM_OC_DelayElapsedCallback>
 8001758:	4620      	mov	r0, r4
 800175a:	f000 f8bb 	bl	80018d4 <HAL_TIM_PWM_PulseFinishedCallback>
 800175e:	2000      	movs	r0, #0
 8001760:	f844 0e1c 	strt	r0, [r4, #28]
 8001764:	6820      	ldr	r0, [r4, #0]
 8001766:	6901      	ldr	r1, [r0, #16]
 8001768:	f011 0f04 	tst.w	r1, #4
 800176c:	bf1c      	itt	ne
 800176e:	68c1      	ldrne	r1, [r0, #12]
 8001770:	f011 0f04 	tstne.w	r1, #4
 8001774:	d018      	beq.n	80017a8 <HAL_TIM_IRQHandler+0x9c>
 8001776:	f06f 0104 	mvn.w	r1, #4
 800177a:	f840 1e10 	strt	r1, [r0, #16]
 800177e:	2102      	movs	r1, #2
 8001780:	f844 1e1c 	strt	r1, [r4, #28]
 8001784:	6980      	ldr	r0, [r0, #24]
 8001786:	f410 7f40 	tst.w	r0, #768	; 0x300
 800178a:	d003      	beq.n	8001794 <HAL_TIM_IRQHandler+0x88>
 800178c:	4620      	mov	r0, r4
 800178e:	f000 f89f 	bl	80018d0 <HAL_TIM_IC_CaptureCallback>
 8001792:	e005      	b.n	80017a0 <HAL_TIM_IRQHandler+0x94>
 8001794:	4620      	mov	r0, r4
 8001796:	f000 f89c 	bl	80018d2 <HAL_TIM_OC_DelayElapsedCallback>
 800179a:	4620      	mov	r0, r4
 800179c:	f000 f89a 	bl	80018d4 <HAL_TIM_PWM_PulseFinishedCallback>
 80017a0:	2000      	movs	r0, #0
 80017a2:	f844 0e1c 	strt	r0, [r4, #28]
 80017a6:	6820      	ldr	r0, [r4, #0]
 80017a8:	6901      	ldr	r1, [r0, #16]
 80017aa:	f011 0f08 	tst.w	r1, #8
 80017ae:	bf1c      	itt	ne
 80017b0:	68c1      	ldrne	r1, [r0, #12]
 80017b2:	f011 0f08 	tstne.w	r1, #8
 80017b6:	d018      	beq.n	80017ea <HAL_TIM_IRQHandler+0xde>
 80017b8:	f06f 0108 	mvn.w	r1, #8
 80017bc:	f840 1e10 	strt	r1, [r0, #16]
 80017c0:	2104      	movs	r1, #4
 80017c2:	f844 1e1c 	strt	r1, [r4, #28]
 80017c6:	69c0      	ldr	r0, [r0, #28]
 80017c8:	f010 0f03 	tst.w	r0, #3
 80017cc:	d003      	beq.n	80017d6 <HAL_TIM_IRQHandler+0xca>
 80017ce:	4620      	mov	r0, r4
 80017d0:	f000 f87e 	bl	80018d0 <HAL_TIM_IC_CaptureCallback>
 80017d4:	e005      	b.n	80017e2 <HAL_TIM_IRQHandler+0xd6>
 80017d6:	4620      	mov	r0, r4
 80017d8:	f000 f87b 	bl	80018d2 <HAL_TIM_OC_DelayElapsedCallback>
 80017dc:	4620      	mov	r0, r4
 80017de:	f000 f879 	bl	80018d4 <HAL_TIM_PWM_PulseFinishedCallback>
 80017e2:	2000      	movs	r0, #0
 80017e4:	f844 0e1c 	strt	r0, [r4, #28]
 80017e8:	6820      	ldr	r0, [r4, #0]
 80017ea:	6901      	ldr	r1, [r0, #16]
 80017ec:	f011 0f10 	tst.w	r1, #16
 80017f0:	bf1c      	itt	ne
 80017f2:	68c1      	ldrne	r1, [r0, #12]
 80017f4:	f011 0f10 	tstne.w	r1, #16
 80017f8:	d018      	beq.n	800182c <HAL_TIM_IRQHandler+0x120>
 80017fa:	f06f 0110 	mvn.w	r1, #16
 80017fe:	f840 1e10 	strt	r1, [r0, #16]
 8001802:	2108      	movs	r1, #8
 8001804:	f844 1e1c 	strt	r1, [r4, #28]
 8001808:	69c0      	ldr	r0, [r0, #28]
 800180a:	f410 7f40 	tst.w	r0, #768	; 0x300
 800180e:	d003      	beq.n	8001818 <HAL_TIM_IRQHandler+0x10c>
 8001810:	4620      	mov	r0, r4
 8001812:	f000 f85d 	bl	80018d0 <HAL_TIM_IC_CaptureCallback>
 8001816:	e005      	b.n	8001824 <HAL_TIM_IRQHandler+0x118>
 8001818:	4620      	mov	r0, r4
 800181a:	f000 f85a 	bl	80018d2 <HAL_TIM_OC_DelayElapsedCallback>
 800181e:	4620      	mov	r0, r4
 8001820:	f000 f858 	bl	80018d4 <HAL_TIM_PWM_PulseFinishedCallback>
 8001824:	2000      	movs	r0, #0
 8001826:	f844 0e1c 	strt	r0, [r4, #28]
 800182a:	6820      	ldr	r0, [r4, #0]
 800182c:	6901      	ldr	r1, [r0, #16]
 800182e:	f011 0f01 	tst.w	r1, #1
 8001832:	bf1c      	itt	ne
 8001834:	68c1      	ldrne	r1, [r0, #12]
 8001836:	f011 0f01 	tstne.w	r1, #1
 800183a:	d007      	beq.n	800184c <HAL_TIM_IRQHandler+0x140>
 800183c:	f06f 0101 	mvn.w	r1, #1
 8001840:	f840 1e10 	strt	r1, [r0, #16]
 8001844:	4620      	mov	r0, r4
 8001846:	f000 f898 	bl	800197a <HAL_TIM_PeriodElapsedCallback>
 800184a:	6820      	ldr	r0, [r4, #0]
 800184c:	6901      	ldr	r1, [r0, #16]
 800184e:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001852:	bf1c      	itt	ne
 8001854:	68c1      	ldrne	r1, [r0, #12]
 8001856:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800185a:	d007      	beq.n	800186c <HAL_TIM_IRQHandler+0x160>
 800185c:	f06f 0180 	mvn.w	r1, #128	; 0x80
 8001860:	f840 1e10 	strt	r1, [r0, #16]
 8001864:	4620      	mov	r0, r4
 8001866:	f000 f838 	bl	80018da <HAL_TIMEx_BreakCallback>
 800186a:	6820      	ldr	r0, [r4, #0]
 800186c:	6901      	ldr	r1, [r0, #16]
 800186e:	f411 7f80 	tst.w	r1, #256	; 0x100
 8001872:	bf1c      	itt	ne
 8001874:	68c1      	ldrne	r1, [r0, #12]
 8001876:	f011 0f80 	tstne.w	r1, #128	; 0x80
 800187a:	d007      	beq.n	800188c <HAL_TIM_IRQHandler+0x180>
 800187c:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001880:	f840 1e10 	strt	r1, [r0, #16]
 8001884:	4620      	mov	r0, r4
 8001886:	f000 f829 	bl	80018dc <HAL_TIMEx_Break2Callback>
 800188a:	6820      	ldr	r0, [r4, #0]
 800188c:	6901      	ldr	r1, [r0, #16]
 800188e:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001892:	bf1c      	itt	ne
 8001894:	68c1      	ldrne	r1, [r0, #12]
 8001896:	f011 0f40 	tstne.w	r1, #64	; 0x40
 800189a:	d007      	beq.n	80018ac <HAL_TIM_IRQHandler+0x1a0>
 800189c:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80018a0:	f840 1e10 	strt	r1, [r0, #16]
 80018a4:	4620      	mov	r0, r4
 80018a6:	f000 f816 	bl	80018d6 <HAL_TIM_TriggerCallback>
 80018aa:	6820      	ldr	r0, [r4, #0]
 80018ac:	6901      	ldr	r1, [r0, #16]
 80018ae:	f011 0f20 	tst.w	r1, #32
 80018b2:	bf1c      	itt	ne
 80018b4:	68c1      	ldrne	r1, [r0, #12]
 80018b6:	f011 0f20 	tstne.w	r1, #32
 80018ba:	d100      	bne.n	80018be <HAL_TIM_IRQHandler+0x1b2>
 80018bc:	bdd0      	pop	{r4, r6, r7, pc}
 80018be:	f06f 0120 	mvn.w	r1, #32
 80018c2:	f840 1e10 	strt	r1, [r0, #16]
 80018c6:	4620      	mov	r0, r4
 80018c8:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80018cc:	f000 b804 	b.w	80018d8 <HAL_TIMEx_CommutationCallback>

080018d0 <HAL_TIM_IC_CaptureCallback>:
 80018d0:	4770      	bx	lr

080018d2 <HAL_TIM_OC_DelayElapsedCallback>:
 80018d2:	4770      	bx	lr

080018d4 <HAL_TIM_PWM_PulseFinishedCallback>:
 80018d4:	4770      	bx	lr

080018d6 <HAL_TIM_TriggerCallback>:
 80018d6:	4770      	bx	lr

080018d8 <HAL_TIMEx_CommutationCallback>:
 80018d8:	4770      	bx	lr

080018da <HAL_TIMEx_BreakCallback>:
 80018da:	4770      	bx	lr

080018dc <HAL_TIMEx_Break2Callback>:
 80018dc:	4770      	bx	lr

080018de <HAL_InitTick>:
 80018de:	b5b0      	push	{r4, r5, r7, lr}
 80018e0:	af02      	add	r7, sp, #8
 80018e2:	b086      	sub	sp, #24
 80018e4:	4601      	mov	r1, r0
 80018e6:	2036      	movs	r0, #54	; 0x36
 80018e8:	2200      	movs	r2, #0
 80018ea:	2400      	movs	r4, #0
 80018ec:	f7ff fc5d 	bl	80011aa <HAL_NVIC_SetPriority>
 80018f0:	2036      	movs	r0, #54	; 0x36
 80018f2:	f7ff fc8d 	bl	8001210 <HAL_NVIC_EnableIRQ>
 80018f6:	f241 0058 	movw	r0, #4184	; 0x1058
 80018fa:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018fe:	6801      	ldr	r1, [r0, #0]
 8001900:	f041 0110 	orr.w	r1, r1, #16
 8001904:	6001      	str	r1, [r0, #0]
 8001906:	4669      	mov	r1, sp
 8001908:	6800      	ldr	r0, [r0, #0]
 800190a:	f000 0010 	and.w	r0, r0, #16
 800190e:	9001      	str	r0, [sp, #4]
 8001910:	9801      	ldr	r0, [sp, #4]
 8001912:	a801      	add	r0, sp, #4
 8001914:	f7ff fe21 	bl	800155a <HAL_RCC_GetClockConfig>
 8001918:	9d04      	ldr	r5, [sp, #16]
 800191a:	f7ff fdf4 	bl	8001506 <HAL_RCC_GetPCLK1Freq>
 800191e:	2d00      	cmp	r5, #0
 8001920:	f640 21b8 	movw	r1, #2744	; 0xab8
 8001924:	f241 0200 	movw	r2, #4096	; 0x1000
 8001928:	f240 33e7 	movw	r3, #999	; 0x3e7
 800192c:	bf18      	it	ne
 800192e:	2501      	movne	r5, #1
 8001930:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001934:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001938:	40a8      	lsls	r0, r5
 800193a:	f64d 6583 	movw	r5, #56963	; 0xde83
 800193e:	618c      	str	r4, [r1, #24]
 8001940:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001944:	fba0 0505 	umull	r0, r5, r0, r5
 8001948:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800194c:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001950:	e9c1 2000 	strd	r2, r0, [r1]
 8001954:	4608      	mov	r0, r1
 8001956:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800195a:	610c      	str	r4, [r1, #16]
 800195c:	f7ff fe1e 	bl	800159c <HAL_TIM_Base_Init>
 8001960:	2800      	cmp	r0, #0
 8001962:	bf1e      	ittt	ne
 8001964:	2001      	movne	r0, #1
 8001966:	b006      	addne	sp, #24
 8001968:	bdb0      	popne	{r4, r5, r7, pc}
 800196a:	f640 20b8 	movw	r0, #2744	; 0xab8
 800196e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001972:	f7ff feb4 	bl	80016de <HAL_TIM_Base_Start_IT>
 8001976:	b006      	add	sp, #24
 8001978:	bdb0      	pop	{r4, r5, r7, pc}

0800197a <HAL_TIM_PeriodElapsedCallback>:
 800197a:	f7ff bbf7 	b.w	800116c <HAL_IncTick>

0800197e <TIM6_DAC_IRQHandler>:
 800197e:	f640 20b8 	movw	r0, #2744	; 0xab8
 8001982:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001986:	f7ff bec1 	b.w	800170c <HAL_TIM_IRQHandler>

0800198a <HAL_UART_Init>:
 800198a:	b084      	sub	sp, #16
 800198c:	f84d 4e00 	strt	r4, [sp]
 8001990:	f84d 6e04 	strt	r6, [sp, #4]
 8001994:	f84d 7e08 	strt	r7, [sp, #8]
 8001998:	f84d ee0c 	strt	lr, [sp, #12]
 800199c:	af02      	add	r7, sp, #8
 800199e:	4604      	mov	r4, r0
 80019a0:	b1ac      	cbz	r4, 80019ce <HAL_UART_Init+0x44>
 80019a2:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80019a4:	b928      	cbnz	r0, 80019b2 <HAL_UART_Init+0x28>
 80019a6:	2000      	movs	r0, #0
 80019a8:	f844 0e70 	strt	r0, [r4, #112]
 80019ac:	4620      	mov	r0, r4
 80019ae:	f000 f82b 	bl	8001a08 <HAL_UART_MspInit>
 80019b2:	2024      	movs	r0, #36	; 0x24
 80019b4:	f844 0e74 	strt	r0, [r4, #116]
 80019b8:	6820      	ldr	r0, [r4, #0]
 80019ba:	6801      	ldr	r1, [r0, #0]
 80019bc:	f021 0101 	bic.w	r1, r1, #1
 80019c0:	f840 1e00 	strt	r1, [r0]
 80019c4:	4620      	mov	r0, r4
 80019c6:	f000 f821 	bl	8001a0c <UART_SetConfig>
 80019ca:	2801      	cmp	r0, #1
 80019cc:	d101      	bne.n	80019d2 <HAL_UART_Init+0x48>
 80019ce:	2001      	movs	r0, #1
 80019d0:	bdd0      	pop	{r4, r6, r7, pc}
 80019d2:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80019d4:	2800      	cmp	r0, #0
 80019d6:	bf1c      	itt	ne
 80019d8:	4620      	movne	r0, r4
 80019da:	f000 f956 	blne	8001c8a <UART_AdvFeatureConfig>
 80019de:	6820      	ldr	r0, [r4, #0]
 80019e0:	6841      	ldr	r1, [r0, #4]
 80019e2:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80019e6:	f840 1e04 	strt	r1, [r0, #4]
 80019ea:	6881      	ldr	r1, [r0, #8]
 80019ec:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80019f0:	f840 1e08 	strt	r1, [r0, #8]
 80019f4:	6801      	ldr	r1, [r0, #0]
 80019f6:	f041 0101 	orr.w	r1, r1, #1
 80019fa:	f840 1e00 	strt	r1, [r0]
 80019fe:	4620      	mov	r0, r4
 8001a00:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001a04:	f000 b9b7 	b.w	8001d76 <UART_CheckIdleState>

08001a08 <HAL_UART_MspInit>:
 8001a08:	4770      	bx	lr
	...

08001a0c <UART_SetConfig>:
 8001a0c:	b084      	sub	sp, #16
 8001a0e:	f84d 4e00 	strt	r4, [sp]
 8001a12:	f84d 5e04 	strt	r5, [sp, #4]
 8001a16:	f84d 7e08 	strt	r7, [sp, #8]
 8001a1a:	f84d ee0c 	strt	lr, [sp, #12]
 8001a1e:	af02      	add	r7, sp, #8
 8001a20:	4604      	mov	r4, r0
 8001a22:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001a26:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001a2a:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001a2e:	6821      	ldr	r1, [r4, #0]
 8001a30:	68a0      	ldr	r0, [r4, #8]
 8001a32:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001a36:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001a3a:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001a3e:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001a42:	4310      	orrs	r0, r2
 8001a44:	69e2      	ldr	r2, [r4, #28]
 8001a46:	4571      	cmp	r1, lr
 8001a48:	ea40 0003 	orr.w	r0, r0, r3
 8001a4c:	680b      	ldr	r3, [r1, #0]
 8001a4e:	ea40 0002 	orr.w	r0, r0, r2
 8001a52:	ea03 0305 	and.w	r3, r3, r5
 8001a56:	f04f 0510 	mov.w	r5, #16
 8001a5a:	ea40 0003 	orr.w	r0, r0, r3
 8001a5e:	f841 0e00 	strt	r0, [r1]
 8001a62:	6848      	ldr	r0, [r1, #4]
 8001a64:	68e3      	ldr	r3, [r4, #12]
 8001a66:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a6a:	ea40 0003 	orr.w	r0, r0, r3
 8001a6e:	f841 0e04 	strt	r0, [r1, #4]
 8001a72:	69a0      	ldr	r0, [r4, #24]
 8001a74:	bf1c      	itt	ne
 8001a76:	6a23      	ldrne	r3, [r4, #32]
 8001a78:	4318      	orrne	r0, r3
 8001a7a:	688b      	ldr	r3, [r1, #8]
 8001a7c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a80:	4318      	orrs	r0, r3
 8001a82:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a86:	f841 0e08 	strt	r0, [r1, #8]
 8001a8a:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a8e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a92:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a96:	4299      	cmp	r1, r3
 8001a98:	dc15      	bgt.n	8001ac6 <UART_SetConfig+0xba>
 8001a9a:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a9e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aa2:	4299      	cmp	r1, r3
 8001aa4:	d024      	beq.n	8001af0 <UART_SetConfig+0xe4>
 8001aa6:	f644 0300 	movw	r3, #18432	; 0x4800
 8001aaa:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aae:	4299      	cmp	r1, r3
 8001ab0:	d022      	beq.n	8001af8 <UART_SetConfig+0xec>
 8001ab2:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001ab6:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aba:	4299      	cmp	r1, r3
 8001abc:	d131      	bne.n	8001b22 <UART_SetConfig+0x116>
 8001abe:	f8dc 3000 	ldr.w	r3, [ip]
 8001ac2:	099d      	lsrs	r5, r3, #6
 8001ac4:	e023      	b.n	8001b0e <UART_SetConfig+0x102>
 8001ac6:	f245 0300 	movw	r3, #20480	; 0x5000
 8001aca:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ace:	4299      	cmp	r1, r3
 8001ad0:	d016      	beq.n	8001b00 <UART_SetConfig+0xf4>
 8001ad2:	4571      	cmp	r1, lr
 8001ad4:	d018      	beq.n	8001b08 <UART_SetConfig+0xfc>
 8001ad6:	f643 0300 	movw	r3, #14336	; 0x3800
 8001ada:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001ade:	4299      	cmp	r1, r3
 8001ae0:	d11f      	bne.n	8001b22 <UART_SetConfig+0x116>
 8001ae2:	f8dc 5000 	ldr.w	r5, [ip]
 8001ae6:	f247 63a0 	movw	r3, #30368	; 0x76a0
 8001aea:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001aee:	e012      	b.n	8001b16 <UART_SetConfig+0x10a>
 8001af0:	f8dc 3000 	ldr.w	r3, [ip]
 8001af4:	089d      	lsrs	r5, r3, #2
 8001af6:	e00a      	b.n	8001b0e <UART_SetConfig+0x102>
 8001af8:	f8dc 3000 	ldr.w	r3, [ip]
 8001afc:	091d      	lsrs	r5, r3, #4
 8001afe:	e006      	b.n	8001b0e <UART_SetConfig+0x102>
 8001b00:	f8dc 3000 	ldr.w	r3, [ip]
 8001b04:	0a1d      	lsrs	r5, r3, #8
 8001b06:	e002      	b.n	8001b0e <UART_SetConfig+0x102>
 8001b08:	f8dc 3000 	ldr.w	r3, [ip]
 8001b0c:	0a9d      	lsrs	r5, r3, #10
 8001b0e:	f247 63b0 	movw	r3, #30384	; 0x76b0
 8001b12:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b16:	f005 0503 	and.w	r5, r5, #3
 8001b1a:	f085 0502 	eor.w	r5, r5, #2
 8001b1e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001b22:	4571      	cmp	r1, lr
 8001b24:	d012      	beq.n	8001b4c <UART_SetConfig+0x140>
 8001b26:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001b2a:	d11d      	bne.n	8001b68 <UART_SetConfig+0x15c>
 8001b2c:	f005 001f 	and.w	r0, r5, #31
 8001b30:	2101      	movs	r1, #1
 8001b32:	2808      	cmp	r0, #8
 8001b34:	f200 80a0 	bhi.w	8001c78 <UART_SetConfig+0x26c>
 8001b38:	e8df f000 	tbb	[pc, r0]
 8001b3c:	9e434005 	.word	0x9e434005
 8001b40:	9e9e9e49 	.word	0x9e9e9e49
 8001b44:	004f      	.short	0x004f
 8001b46:	f7ff fcde 	bl	8001506 <HAL_RCC_GetPCLK1Freq>
 8001b4a:	e042      	b.n	8001bd2 <UART_SetConfig+0x1c6>
 8001b4c:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001b50:	2101      	movs	r1, #1
 8001b52:	2d04      	cmp	r5, #4
 8001b54:	f200 8090 	bhi.w	8001c78 <UART_SetConfig+0x26c>
 8001b58:	e8df f005 	tbb	[pc, r5]
 8001b5c:	8e161c03 	.word	0x8e161c03
 8001b60:	001a      	.short	0x001a
 8001b62:	f7ff fcd0 	bl	8001506 <HAL_RCC_GetPCLK1Freq>
 8001b66:	e011      	b.n	8001b8c <UART_SetConfig+0x180>
 8001b68:	f005 021f 	and.w	r2, r5, #31
 8001b6c:	2101      	movs	r1, #1
 8001b6e:	2a08      	cmp	r2, #8
 8001b70:	f200 8082 	bhi.w	8001c78 <UART_SetConfig+0x26c>
 8001b74:	e8df f002 	tbb	[pc, r2]
 8001b78:	80464305 	.word	0x80464305
 8001b7c:	80808048 	.word	0x80808048
 8001b80:	004e      	.short	0x004e
 8001b82:	f7ff fcc0 	bl	8001506 <HAL_RCC_GetPCLK1Freq>
 8001b86:	e041      	b.n	8001c0c <UART_SetConfig+0x200>
 8001b88:	f7ff fc5a 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001b8c:	b910      	cbnz	r0, 8001b94 <UART_SetConfig+0x188>
 8001b8e:	e072      	b.n	8001c76 <UART_SetConfig+0x26a>
 8001b90:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b94:	6862      	ldr	r2, [r4, #4]
 8001b96:	2101      	movs	r1, #1
 8001b98:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b9c:	4298      	cmp	r0, r3
 8001b9e:	d36b      	bcc.n	8001c78 <UART_SetConfig+0x26c>
 8001ba0:	0313      	lsls	r3, r2, #12
 8001ba2:	4298      	cmp	r0, r3
 8001ba4:	bf9c      	itt	ls
 8001ba6:	2101      	movls	r1, #1
 8001ba8:	2d04      	cmpls	r5, #4
 8001baa:	d865      	bhi.n	8001c78 <UART_SetConfig+0x26c>
 8001bac:	e8df f005 	tbb	[pc, r5]
 8001bb0:	64453e03 	.word	0x64453e03
 8001bb4:	0052      	.short	0x0052
 8001bb6:	f7ff fca6 	bl	8001506 <HAL_RCC_GetPCLK1Freq>
 8001bba:	e040      	b.n	8001c3e <UART_SetConfig+0x232>
 8001bbc:	f7ff fcb8 	bl	8001530 <HAL_RCC_GetPCLK2Freq>
 8001bc0:	e007      	b.n	8001bd2 <UART_SetConfig+0x1c6>
 8001bc2:	6861      	ldr	r1, [r4, #4]
 8001bc4:	f644 0200 	movw	r2, #18432	; 0x4800
 8001bc8:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001bcc:	e008      	b.n	8001be0 <UART_SetConfig+0x1d4>
 8001bce:	f7ff fc37 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001bd2:	6861      	ldr	r1, [r4, #4]
 8001bd4:	0040      	lsls	r0, r0, #1
 8001bd6:	084a      	lsrs	r2, r1, #1
 8001bd8:	e003      	b.n	8001be2 <UART_SetConfig+0x1d6>
 8001bda:	6861      	ldr	r1, [r4, #4]
 8001bdc:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001be0:	0848      	lsrs	r0, r1, #1
 8001be2:	4410      	add	r0, r2
 8001be4:	fbb0 f0f1 	udiv	r0, r0, r1
 8001be8:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001bec:	4001      	ands	r1, r0
 8001bee:	2910      	cmp	r1, #16
 8001bf0:	d303      	bcc.n	8001bfa <UART_SetConfig+0x1ee>
 8001bf2:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001bf6:	4308      	orrs	r0, r1
 8001bf8:	e03a      	b.n	8001c70 <UART_SetConfig+0x264>
 8001bfa:	2101      	movs	r1, #1
 8001bfc:	e03c      	b.n	8001c78 <UART_SetConfig+0x26c>
 8001bfe:	f7ff fc97 	bl	8001530 <HAL_RCC_GetPCLK2Freq>
 8001c02:	e003      	b.n	8001c0c <UART_SetConfig+0x200>
 8001c04:	6862      	ldr	r2, [r4, #4]
 8001c06:	e008      	b.n	8001c1a <UART_SetConfig+0x20e>
 8001c08:	f7ff fc1a 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001c0c:	6862      	ldr	r2, [r4, #4]
 8001c0e:	4601      	mov	r1, r0
 8001c10:	0850      	lsrs	r0, r2, #1
 8001c12:	e003      	b.n	8001c1c <UART_SetConfig+0x210>
 8001c14:	6862      	ldr	r2, [r4, #4]
 8001c16:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c1a:	0851      	lsrs	r1, r2, #1
 8001c1c:	4408      	add	r0, r1
 8001c1e:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c22:	b280      	uxth	r0, r0
 8001c24:	2810      	cmp	r0, #16
 8001c26:	d223      	bcs.n	8001c70 <UART_SetConfig+0x264>
 8001c28:	2101      	movs	r1, #1
 8001c2a:	e025      	b.n	8001c78 <UART_SetConfig+0x26c>
 8001c2c:	2000      	movs	r0, #0
 8001c2e:	2100      	movs	r1, #0
 8001c30:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001c34:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001c38:	e006      	b.n	8001c48 <UART_SetConfig+0x23c>
 8001c3a:	f7ff fc01 	bl	8001440 <HAL_RCC_GetSysClockFreq>
 8001c3e:	6862      	ldr	r2, [r4, #4]
 8001c40:	0e01      	lsrs	r1, r0, #24
 8001c42:	0853      	lsrs	r3, r2, #1
 8001c44:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001c48:	f141 0100 	adc.w	r1, r1, #0
 8001c4c:	2300      	movs	r3, #0
 8001c4e:	f7fe fec5 	bl	80009dc <__aeabi_uldivmod>
 8001c52:	e005      	b.n	8001c60 <UART_SetConfig+0x254>
 8001c54:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c58:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c5c:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c60:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c64:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c68:	f2c0 020f 	movt	r2, #15
 8001c6c:	4291      	cmp	r1, r2
 8001c6e:	d80a      	bhi.n	8001c86 <UART_SetConfig+0x27a>
 8001c70:	6821      	ldr	r1, [r4, #0]
 8001c72:	f841 0e0c 	strt	r0, [r1, #12]
 8001c76:	2100      	movs	r1, #0
 8001c78:	2000      	movs	r0, #0
 8001c7a:	f844 0e60 	strt	r0, [r4, #96]
 8001c7e:	f844 0e64 	strt	r0, [r4, #100]
 8001c82:	4608      	mov	r0, r1
 8001c84:	bdb0      	pop	{r4, r5, r7, pc}
 8001c86:	2101      	movs	r1, #1
 8001c88:	e7f6      	b.n	8001c78 <UART_SetConfig+0x26c>

08001c8a <UART_AdvFeatureConfig>:
 8001c8a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c8c:	f011 0f01 	tst.w	r1, #1
 8001c90:	d009      	beq.n	8001ca6 <UART_AdvFeatureConfig+0x1c>
 8001c92:	6802      	ldr	r2, [r0, #0]
 8001c94:	6853      	ldr	r3, [r2, #4]
 8001c96:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c9a:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c9e:	ea43 030c 	orr.w	r3, r3, ip
 8001ca2:	f842 3e04 	strt	r3, [r2, #4]
 8001ca6:	078a      	lsls	r2, r1, #30
 8001ca8:	d509      	bpl.n	8001cbe <UART_AdvFeatureConfig+0x34>
 8001caa:	6802      	ldr	r2, [r0, #0]
 8001cac:	6853      	ldr	r3, [r2, #4]
 8001cae:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001cb2:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001cb6:	ea43 030c 	orr.w	r3, r3, ip
 8001cba:	f842 3e04 	strt	r3, [r2, #4]
 8001cbe:	074a      	lsls	r2, r1, #29
 8001cc0:	d509      	bpl.n	8001cd6 <UART_AdvFeatureConfig+0x4c>
 8001cc2:	6802      	ldr	r2, [r0, #0]
 8001cc4:	6853      	ldr	r3, [r2, #4]
 8001cc6:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001cca:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001cce:	ea43 030c 	orr.w	r3, r3, ip
 8001cd2:	f842 3e04 	strt	r3, [r2, #4]
 8001cd6:	070a      	lsls	r2, r1, #28
 8001cd8:	d509      	bpl.n	8001cee <UART_AdvFeatureConfig+0x64>
 8001cda:	6802      	ldr	r2, [r0, #0]
 8001cdc:	6853      	ldr	r3, [r2, #4]
 8001cde:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001ce2:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001ce6:	ea43 030c 	orr.w	r3, r3, ip
 8001cea:	f842 3e04 	strt	r3, [r2, #4]
 8001cee:	06ca      	lsls	r2, r1, #27
 8001cf0:	d509      	bpl.n	8001d06 <UART_AdvFeatureConfig+0x7c>
 8001cf2:	6802      	ldr	r2, [r0, #0]
 8001cf4:	6893      	ldr	r3, [r2, #8]
 8001cf6:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001cfa:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001cfe:	ea43 030c 	orr.w	r3, r3, ip
 8001d02:	f842 3e08 	strt	r3, [r2, #8]
 8001d06:	068a      	lsls	r2, r1, #26
 8001d08:	d509      	bpl.n	8001d1e <UART_AdvFeatureConfig+0x94>
 8001d0a:	6802      	ldr	r2, [r0, #0]
 8001d0c:	6893      	ldr	r3, [r2, #8]
 8001d0e:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001d12:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001d16:	ea43 030c 	orr.w	r3, r3, ip
 8001d1a:	f842 3e08 	strt	r3, [r2, #8]
 8001d1e:	b082      	sub	sp, #8
 8001d20:	f84d 7e00 	strt	r7, [sp]
 8001d24:	f84d ee04 	strt	lr, [sp, #4]
 8001d28:	466f      	mov	r7, sp
 8001d2a:	064a      	lsls	r2, r1, #25
 8001d2c:	d515      	bpl.n	8001d5a <UART_AdvFeatureConfig+0xd0>
 8001d2e:	f8d0 e000 	ldr.w	lr, [r0]
 8001d32:	f8de c004 	ldr.w	ip, [lr, #4]
 8001d36:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001d38:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001d3c:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001d40:	ea42 0203 	orr.w	r2, r2, r3
 8001d44:	f84e 2e04 	strt	r2, [lr, #4]
 8001d48:	d107      	bne.n	8001d5a <UART_AdvFeatureConfig+0xd0>
 8001d4a:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001d4e:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001d50:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001d54:	431a      	orrs	r2, r3
 8001d56:	f84e 2e04 	strt	r2, [lr, #4]
 8001d5a:	0609      	lsls	r1, r1, #24
 8001d5c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001d60:	bf58      	it	pl
 8001d62:	4770      	bxpl	lr
 8001d64:	6801      	ldr	r1, [r0, #0]
 8001d66:	684a      	ldr	r2, [r1, #4]
 8001d68:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d6a:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d6e:	4310      	orrs	r0, r2
 8001d70:	f841 0e04 	strt	r0, [r1, #4]
 8001d74:	4770      	bx	lr

08001d76 <UART_CheckIdleState>:
 8001d76:	b085      	sub	sp, #20
 8001d78:	f84d 4e00 	strt	r4, [sp]
 8001d7c:	f84d 5e04 	strt	r5, [sp, #4]
 8001d80:	f84d 6e08 	strt	r6, [sp, #8]
 8001d84:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d88:	f84d ee10 	strt	lr, [sp, #16]
 8001d8c:	af03      	add	r7, sp, #12
 8001d8e:	b081      	sub	sp, #4
 8001d90:	f84d be00 	strt	fp, [sp]
 8001d94:	4604      	mov	r4, r0
 8001d96:	2000      	movs	r0, #0
 8001d98:	f844 0e7c 	strt	r0, [r4, #124]
 8001d9c:	f7ff f9ef 	bl	800117e <HAL_GetTick>
 8001da0:	4605      	mov	r5, r0
 8001da2:	6820      	ldr	r0, [r4, #0]
 8001da4:	6801      	ldr	r1, [r0, #0]
 8001da6:	f011 0f08 	tst.w	r1, #8
 8001daa:	d00f      	beq.n	8001dcc <UART_CheckIdleState+0x56>
 8001dac:	69c1      	ldr	r1, [r0, #28]
 8001dae:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001db2:	d10b      	bne.n	8001dcc <UART_CheckIdleState+0x56>
 8001db4:	2600      	movs	r6, #0
 8001db6:	f7ff f9e2 	bl	800117e <HAL_GetTick>
 8001dba:	1b41      	subs	r1, r0, r5
 8001dbc:	6820      	ldr	r0, [r4, #0]
 8001dbe:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001dc2:	d11b      	bne.n	8001dfc <UART_CheckIdleState+0x86>
 8001dc4:	69c1      	ldr	r1, [r0, #28]
 8001dc6:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001dca:	d0f4      	beq.n	8001db6 <UART_CheckIdleState+0x40>
 8001dcc:	6801      	ldr	r1, [r0, #0]
 8001dce:	f011 0f04 	tst.w	r1, #4
 8001dd2:	d101      	bne.n	8001dd8 <UART_CheckIdleState+0x62>
 8001dd4:	2600      	movs	r6, #0
 8001dd6:	e01c      	b.n	8001e12 <UART_CheckIdleState+0x9c>
 8001dd8:	69c0      	ldr	r0, [r0, #28]
 8001dda:	2600      	movs	r6, #0
 8001ddc:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001de0:	d117      	bne.n	8001e12 <UART_CheckIdleState+0x9c>
 8001de2:	f7ff f9cc 	bl	800117e <HAL_GetTick>
 8001de6:	1b41      	subs	r1, r0, r5
 8001de8:	6820      	ldr	r0, [r4, #0]
 8001dea:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001dee:	d105      	bne.n	8001dfc <UART_CheckIdleState+0x86>
 8001df0:	69c0      	ldr	r0, [r0, #28]
 8001df2:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001df6:	d0f4      	beq.n	8001de2 <UART_CheckIdleState+0x6c>
 8001df8:	2600      	movs	r6, #0
 8001dfa:	e00a      	b.n	8001e12 <UART_CheckIdleState+0x9c>
 8001dfc:	6801      	ldr	r1, [r0, #0]
 8001dfe:	2603      	movs	r6, #3
 8001e00:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e04:	f840 1e00 	strt	r1, [r0]
 8001e08:	6881      	ldr	r1, [r0, #8]
 8001e0a:	f021 0101 	bic.w	r1, r1, #1
 8001e0e:	f840 1e08 	strt	r1, [r0, #8]
 8001e12:	2020      	movs	r0, #32
 8001e14:	f844 0e74 	strt	r0, [r4, #116]
 8001e18:	f844 0e78 	strt	r0, [r4, #120]
 8001e1c:	2000      	movs	r0, #0
 8001e1e:	f844 0e70 	strt	r0, [r4, #112]
 8001e22:	4630      	mov	r0, r6
 8001e24:	f85d bb04 	ldr.w	fp, [sp], #4
 8001e28:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001e2a <HAL_UART_Transmit>:
 8001e2a:	b085      	sub	sp, #20
 8001e2c:	f84d 4e00 	strt	r4, [sp]
 8001e30:	f84d 5e04 	strt	r5, [sp, #4]
 8001e34:	f84d 6e08 	strt	r6, [sp, #8]
 8001e38:	f84d 7e0c 	strt	r7, [sp, #12]
 8001e3c:	f84d ee10 	strt	lr, [sp, #16]
 8001e40:	af03      	add	r7, sp, #12
 8001e42:	b084      	sub	sp, #16
 8001e44:	f84d 8e00 	strt	r8, [sp]
 8001e48:	f84d 9e04 	strt	r9, [sp, #4]
 8001e4c:	f84d ae08 	strt	sl, [sp, #8]
 8001e50:	f84d be0c 	strt	fp, [sp, #12]
 8001e54:	b081      	sub	sp, #4
 8001e56:	4604      	mov	r4, r0
 8001e58:	461d      	mov	r5, r3
 8001e5a:	4616      	mov	r6, r2
 8001e5c:	4689      	mov	r9, r1
 8001e5e:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001e60:	2820      	cmp	r0, #32
 8001e62:	d109      	bne.n	8001e78 <HAL_UART_Transmit+0x4e>
 8001e64:	f1b9 0f00 	cmp.w	r9, #0
 8001e68:	f04f 0001 	mov.w	r0, #1
 8001e6c:	bf18      	it	ne
 8001e6e:	2e00      	cmpne	r6, #0
 8001e70:	d003      	beq.n	8001e7a <HAL_UART_Transmit+0x50>
 8001e72:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e74:	2801      	cmp	r0, #1
 8001e76:	d104      	bne.n	8001e82 <HAL_UART_Transmit+0x58>
 8001e78:	2002      	movs	r0, #2
 8001e7a:	b001      	add	sp, #4
 8001e7c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e80:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e82:	2001      	movs	r0, #1
 8001e84:	f844 0e70 	strt	r0, [r4, #112]
 8001e88:	2000      	movs	r0, #0
 8001e8a:	f844 0e7c 	strt	r0, [r4, #124]
 8001e8e:	2021      	movs	r0, #33	; 0x21
 8001e90:	f844 0e74 	strt	r0, [r4, #116]
 8001e94:	f7ff f973 	bl	800117e <HAL_GetTick>
 8001e98:	f824 6e50 	strht	r6, [r4, #80]
 8001e9c:	f824 6e52 	strht	r6, [r4, #82]
 8001ea0:	4680      	mov	r8, r0
 8001ea2:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001ea6:	f8d4 b000 	ldr.w	fp, [r4]
 8001eaa:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001eae:	2900      	cmp	r1, #0
 8001eb0:	d046      	beq.n	8001f40 <HAL_UART_Transmit+0x116>
 8001eb2:	f105 0a01 	add.w	sl, r5, #1
 8001eb6:	0600      	lsls	r0, r0, #24
 8001eb8:	d410      	bmi.n	8001edc <HAL_UART_Transmit+0xb2>
 8001eba:	465e      	mov	r6, fp
 8001ebc:	f1ba 0f00 	cmp.w	sl, #0
 8001ec0:	d007      	beq.n	8001ed2 <HAL_UART_Transmit+0xa8>
 8001ec2:	b345      	cbz	r5, 8001f16 <HAL_UART_Transmit+0xec>
 8001ec4:	f7ff f95b 	bl	800117e <HAL_GetTick>
 8001ec8:	6826      	ldr	r6, [r4, #0]
 8001eca:	eba0 0008 	sub.w	r0, r0, r8
 8001ece:	42a8      	cmp	r0, r5
 8001ed0:	d822      	bhi.n	8001f18 <HAL_UART_Transmit+0xee>
 8001ed2:	69f0      	ldr	r0, [r6, #28]
 8001ed4:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001ed8:	d0f0      	beq.n	8001ebc <HAL_UART_Transmit+0x92>
 8001eda:	e000      	b.n	8001ede <HAL_UART_Transmit+0xb4>
 8001edc:	465e      	mov	r6, fp
 8001ede:	68a0      	ldr	r0, [r4, #8]
 8001ee0:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001ee4:	bf04      	itt	eq
 8001ee6:	6920      	ldreq	r0, [r4, #16]
 8001ee8:	2800      	cmpeq	r0, #0
 8001eea:	d002      	beq.n	8001ef2 <HAL_UART_Transmit+0xc8>
 8001eec:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001ef0:	e003      	b.n	8001efa <HAL_UART_Transmit+0xd0>
 8001ef2:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001ef6:	f36f 205f 	bfc	r0, #9, #23
 8001efa:	f826 0e28 	strht	r0, [r6, #40]
 8001efe:	46b3      	mov	fp, r6
 8001f00:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001f04:	3801      	subs	r0, #1
 8001f06:	f824 0e52 	strht	r0, [r4, #82]
 8001f0a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001f0e:	69f0      	ldr	r0, [r6, #28]
 8001f10:	2900      	cmp	r1, #0
 8001f12:	d1d0      	bne.n	8001eb6 <HAL_UART_Transmit+0x8c>
 8001f14:	e015      	b.n	8001f42 <HAL_UART_Transmit+0x118>
 8001f16:	465e      	mov	r6, fp
 8001f18:	6830      	ldr	r0, [r6, #0]
 8001f1a:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001f1e:	f846 0e00 	strt	r0, [r6]
 8001f22:	68b0      	ldr	r0, [r6, #8]
 8001f24:	f020 0001 	bic.w	r0, r0, #1
 8001f28:	f846 0e08 	strt	r0, [r6, #8]
 8001f2c:	2020      	movs	r0, #32
 8001f2e:	f844 0e74 	strt	r0, [r4, #116]
 8001f32:	f844 0e78 	strt	r0, [r4, #120]
 8001f36:	2000      	movs	r0, #0
 8001f38:	f844 0e70 	strt	r0, [r4, #112]
 8001f3c:	2003      	movs	r0, #3
 8001f3e:	e79c      	b.n	8001e7a <HAL_UART_Transmit+0x50>
 8001f40:	465e      	mov	r6, fp
 8001f42:	0640      	lsls	r0, r0, #25
 8001f44:	d411      	bmi.n	8001f6a <HAL_UART_Transmit+0x140>
 8001f46:	f105 0901 	add.w	r9, r5, #1
 8001f4a:	4630      	mov	r0, r6
 8001f4c:	f1b9 0f00 	cmp.w	r9, #0
 8001f50:	d007      	beq.n	8001f62 <HAL_UART_Transmit+0x138>
 8001f52:	b18d      	cbz	r5, 8001f78 <HAL_UART_Transmit+0x14e>
 8001f54:	f7ff f913 	bl	800117e <HAL_GetTick>
 8001f58:	eba0 0108 	sub.w	r1, r0, r8
 8001f5c:	6820      	ldr	r0, [r4, #0]
 8001f5e:	42a9      	cmp	r1, r5
 8001f60:	d80b      	bhi.n	8001f7a <HAL_UART_Transmit+0x150>
 8001f62:	69c1      	ldr	r1, [r0, #28]
 8001f64:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f68:	d0f0      	beq.n	8001f4c <HAL_UART_Transmit+0x122>
 8001f6a:	2020      	movs	r0, #32
 8001f6c:	f844 0e74 	strt	r0, [r4, #116]
 8001f70:	2000      	movs	r0, #0
 8001f72:	f844 0e70 	strt	r0, [r4, #112]
 8001f76:	e780      	b.n	8001e7a <HAL_UART_Transmit+0x50>
 8001f78:	4630      	mov	r0, r6
 8001f7a:	6801      	ldr	r1, [r0, #0]
 8001f7c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f80:	f840 1e00 	strt	r1, [r0]
 8001f84:	6881      	ldr	r1, [r0, #8]
 8001f86:	f021 0101 	bic.w	r1, r1, #1
 8001f8a:	f840 1e08 	strt	r1, [r0, #8]
 8001f8e:	e7cd      	b.n	8001f2c <HAL_UART_Transmit+0x102>

08001f90 <BSP_COM_Init>:
 8001f90:	b085      	sub	sp, #20
 8001f92:	f84d 4e00 	strt	r4, [sp]
 8001f96:	f84d 5e04 	strt	r5, [sp, #4]
 8001f9a:	f84d 6e08 	strt	r6, [sp, #8]
 8001f9e:	f84d 7e0c 	strt	r7, [sp, #12]
 8001fa2:	f84d ee10 	strt	lr, [sp, #16]
 8001fa6:	af03      	add	r7, sp, #12
 8001fa8:	b083      	sub	sp, #12
 8001faa:	f84d 8e00 	strt	r8, [sp]
 8001fae:	f84d 9e04 	strt	r9, [sp, #4]
 8001fb2:	f84d be08 	strt	fp, [sp, #8]
 8001fb6:	b086      	sub	sp, #24
 8001fb8:	4605      	mov	r5, r0
 8001fba:	4688      	mov	r8, r1
 8001fbc:	bb25      	cbnz	r5, 8002008 <BSP_COM_Init+0x78>
 8001fbe:	f241 004c 	movw	r0, #4172	; 0x104c
 8001fc2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001fc6:	6801      	ldr	r1, [r0, #0]
 8001fc8:	f041 0102 	orr.w	r1, r1, #2
 8001fcc:	f840 1e00 	strt	r1, [r0]
 8001fd0:	6801      	ldr	r1, [r0, #0]
 8001fd2:	f001 0102 	and.w	r1, r1, #2
 8001fd6:	f84d 1e04 	strt	r1, [sp, #4]
 8001fda:	9901      	ldr	r1, [sp, #4]
 8001fdc:	6801      	ldr	r1, [r0, #0]
 8001fde:	f041 0102 	orr.w	r1, r1, #2
 8001fe2:	f840 1e00 	strt	r1, [r0]
 8001fe6:	6801      	ldr	r1, [r0, #0]
 8001fe8:	f001 0102 	and.w	r1, r1, #2
 8001fec:	f84d 1e04 	strt	r1, [sp, #4]
 8001ff0:	9901      	ldr	r1, [sp, #4]
 8001ff2:	6941      	ldr	r1, [r0, #20]
 8001ff4:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001ff8:	f840 1e14 	strt	r1, [r0, #20]
 8001ffc:	6940      	ldr	r0, [r0, #20]
 8001ffe:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002002:	f84d 0e04 	strt	r0, [sp, #4]
 8002006:	9801      	ldr	r0, [sp, #4]
 8002008:	2040      	movs	r0, #64	; 0x40
 800200a:	2402      	movs	r4, #2
 800200c:	ae01      	add	r6, sp, #4
 800200e:	f04f 0907 	mov.w	r9, #7
 8002012:	f84d 0e04 	strt	r0, [sp, #4]
 8002016:	2000      	movs	r0, #0
 8002018:	f84d 4e08 	strt	r4, [sp, #8]
 800201c:	f84d 4e10 	strt	r4, [sp, #16]
 8002020:	4631      	mov	r1, r6
 8002022:	f84d 0e0c 	strt	r0, [sp, #12]
 8002026:	f240 000c 	movw	r0, #12
 800202a:	f84d 9e14 	strt	r9, [sp, #20]
 800202e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002032:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002036:	f7ff f8fb 	bl	8001230 <HAL_GPIO_Init>
 800203a:	2080      	movs	r0, #128	; 0x80
 800203c:	4631      	mov	r1, r6
 800203e:	f84d 0e04 	strt	r0, [sp, #4]
 8002042:	f84d 4e08 	strt	r4, [sp, #8]
 8002046:	f240 0010 	movw	r0, #16
 800204a:	f84d 9e14 	strt	r9, [sp, #20]
 800204e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002052:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002056:	f7ff f8eb 	bl	8001230 <HAL_GPIO_Init>
 800205a:	f240 0008 	movw	r0, #8
 800205e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002062:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002066:	f848 0e00 	strt	r0, [r8]
 800206a:	4640      	mov	r0, r8
 800206c:	f7ff fc8d 	bl	800198a <HAL_UART_Init>
 8002070:	b006      	add	sp, #24
 8002072:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002076:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002078 <__io_putchar>:
 8002078:	b082      	sub	sp, #8
 800207a:	f84d 7e00 	strt	r7, [sp]
 800207e:	f84d ee04 	strt	lr, [sp, #4]
 8002082:	466f      	mov	r7, sp
 8002084:	b082      	sub	sp, #8
 8002086:	f84d 0e04 	strt	r0, [sp, #4]
 800208a:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800208e:	a901      	add	r1, sp, #4
 8002090:	2201      	movs	r2, #1
 8002092:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002096:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800209a:	f7ff fec6 	bl	8001e2a <HAL_UART_Transmit>
 800209e:	9801      	ldr	r0, [sp, #4]
 80020a0:	b002      	add	sp, #8
 80020a2:	bd80      	pop	{r7, pc}

080020a4 <main>:
 80020a4:	b084      	sub	sp, #16
 80020a6:	f84d 4e00 	strt	r4, [sp]
 80020aa:	f84d 5e04 	strt	r5, [sp, #4]
 80020ae:	f84d 7e08 	strt	r7, [sp, #8]
 80020b2:	f84d ee0c 	strt	lr, [sp, #12]
 80020b6:	af02      	add	r7, sp, #8
 80020b8:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80020bc:	f643 0000 	movw	r0, #14336	; 0x3800
 80020c0:	220c      	movs	r2, #12
 80020c2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020c6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020ca:	f841 0e00 	strt	r0, [r1]
 80020ce:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020d2:	f841 0e04 	strt	r0, [r1, #4]
 80020d6:	2000      	movs	r0, #0
 80020d8:	f841 0e08 	strt	r0, [r1, #8]
 80020dc:	f841 0e0c 	strt	r0, [r1, #12]
 80020e0:	f841 0e10 	strt	r0, [r1, #16]
 80020e4:	f841 0e24 	strt	r0, [r1, #36]
 80020e8:	f841 0e1c 	strt	r0, [r1, #28]
 80020ec:	f841 0e20 	strt	r0, [r1, #32]
 80020f0:	f841 2e14 	strt	r2, [r1, #20]
 80020f4:	f841 0e18 	strt	r0, [r1, #24]
 80020f8:	2000      	movs	r0, #0
 80020fa:	f7ff ff49 	bl	8001f90 <BSP_COM_Init>
 80020fe:	f000 fa44 	bl	800258a <initialise_benchmark>
 8002102:	f247 60c0 	movw	r0, #30400	; 0x76c0
 8002106:	f6c0 0000 	movt	r0, #2048	; 0x800
 800210a:	f000 fea1 	bl	8002e50 <printf>
 800210e:	f247 706d 	movw	r0, #30573	; 0x776d
 8002112:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002116:	f000 fefd 	bl	8002f14 <puts>
 800211a:	f7ff f817 	bl	800114c <HAL_Init>
 800211e:	f7ff f82e 	bl	800117e <HAL_GetTick>
 8002122:	4604      	mov	r4, r0
 8002124:	f000 f8fd 	bl	8002322 <benchmark>
 8002128:	4605      	mov	r5, r0
 800212a:	f7ff f828 	bl	800117e <HAL_GetTick>
 800212e:	1b04      	subs	r4, r0, r4
 8002130:	4628      	mov	r0, r5
 8002132:	f000 fa5d 	bl	80025f0 <verify_benchmark>
 8002136:	1c41      	adds	r1, r0, #1
 8002138:	d006      	beq.n	8002148 <main+0xa4>
 800213a:	2801      	cmp	r0, #1
 800213c:	d109      	bne.n	8002152 <main+0xae>
 800213e:	f247 60d9 	movw	r0, #30425	; 0x76d9
 8002142:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002146:	e008      	b.n	800215a <main+0xb6>
 8002148:	f247 60fd 	movw	r0, #30461	; 0x76fd
 800214c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002150:	e003      	b.n	800215a <main+0xb6>
 8002152:	f247 7032 	movw	r0, #30514	; 0x7732
 8002156:	f6c0 0000 	movt	r0, #2048	; 0x800
 800215a:	4621      	mov	r1, r4
 800215c:	f000 fe78 	bl	8002e50 <printf>
 8002160:	2000      	movs	r0, #0
 8002162:	bdb0      	pop	{r4, r5, r7, pc}

08002164 <SysTick_Handler>:
 8002164:	b082      	sub	sp, #8
 8002166:	f84d 7e00 	strt	r7, [sp]
 800216a:	f84d ee04 	strt	lr, [sp, #4]
 800216e:	466f      	mov	r7, sp
 8002170:	f7fe fffc 	bl	800116c <HAL_IncTick>
 8002174:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002178:	f7ff b857 	b.w	800122a <HAL_SYSTICK_IRQHandler>
 800217c:	0000      	movs	r0, r0
	...

08002180 <ctl_StringAppend>:
 8002180:	b085      	sub	sp, #20
 8002182:	f84d 4e00 	strt	r4, [sp]
 8002186:	f84d 5e04 	strt	r5, [sp, #4]
 800218a:	f84d 6e08 	strt	r6, [sp, #8]
 800218e:	f84d 7e0c 	strt	r7, [sp, #12]
 8002192:	f84d ee10 	strt	lr, [sp, #16]
 8002196:	af03      	add	r7, sp, #12
 8002198:	b084      	sub	sp, #16
 800219a:	f84d 8e00 	strt	r8, [sp]
 800219e:	f84d 9e04 	strt	r9, [sp, #4]
 80021a2:	f84d ae08 	strt	sl, [sp, #8]
 80021a6:	f84d be0c 	strt	fp, [sp, #12]
 80021aa:	b081      	sub	sp, #4
 80021ac:	4689      	mov	r9, r1
 80021ae:	4604      	mov	r4, r0
 80021b0:	4648      	mov	r0, r9
 80021b2:	f7fe fe45 	bl	8000e40 <strlen>
 80021b6:	e9d4 8502 	ldrd	r8, r5, [r4, #8]
 80021ba:	4606      	mov	r6, r0
 80021bc:	eb08 0b06 	add.w	fp, r8, r6
 80021c0:	45ab      	cmp	fp, r5
 80021c2:	d202      	bcs.n	80021ca <ctl_StringAppend+0x4a>
 80021c4:	f8d4 a004 	ldr.w	sl, [r4, #4]
 80021c8:	e02b      	b.n	8002222 <ctl_StringAppend+0xa2>
 80021ca:	6820      	ldr	r0, [r4, #0]
 80021cc:	fbbb f1f0 	udiv	r1, fp, r0
 80021d0:	3101      	adds	r1, #1
 80021d2:	4348      	muls	r0, r1
 80021d4:	f84d 0e00 	strt	r0, [sp]
 80021d8:	f000 fb1a 	bl	8002810 <malloc>
 80021dc:	4682      	mov	sl, r0
 80021de:	f1ba 0f00 	cmp.w	sl, #0
 80021e2:	d026      	beq.n	8002232 <ctl_StringAppend+0xb2>
 80021e4:	6861      	ldr	r1, [r4, #4]
 80021e6:	4650      	mov	r0, sl
 80021e8:	462a      	mov	r2, r5
 80021ea:	f000 fac9 	bl	8002780 <__aeabi_memcpy>
 80021ee:	4628      	mov	r0, r5
 80021f0:	f7fe f948 	bl	8000484 <__aeabi_ui2d>
 80021f4:	ed9f 0b18 	vldr	d0, [pc, #96]	; 8002258 <ctl_StringAppend+0xd8>
 80021f8:	4605      	mov	r5, r0
 80021fa:	460e      	mov	r6, r1
 80021fc:	ec53 2b10 	vmov	r2, r3, d0
 8002200:	f7fe f9ba 	bl	8000578 <__aeabi_dmul>
 8002204:	4602      	mov	r2, r0
 8002206:	460b      	mov	r3, r1
 8002208:	4628      	mov	r0, r5
 800220a:	4631      	mov	r1, r6
 800220c:	f7fd fffe 	bl	800020c <__adddf3>
 8002210:	f7fe fbc4 	bl	800099c <__aeabi_d2uiz>
 8002214:	9900      	ldr	r1, [sp, #0]
 8002216:	f844 1e0c 	strt	r1, [r4, #12]
 800221a:	f844 0e00 	strt	r0, [r4]
 800221e:	f844 ae04 	strt	sl, [r4, #4]
 8002222:	eb0a 0008 	add.w	r0, sl, r8
 8002226:	4649      	mov	r1, r9
 8002228:	3801      	subs	r0, #1
 800222a:	f000 fe8d 	bl	8002f48 <strcpy>
 800222e:	2000      	movs	r0, #0
 8002230:	e009      	b.n	8002246 <ctl_StringAppend+0xc6>
 8002232:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002236:	2164      	movs	r1, #100	; 0x64
 8002238:	eba8 0b06 	sub.w	fp, r8, r6
 800223c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002240:	f840 1e00 	strt	r1, [r0]
 8002244:	2001      	movs	r0, #1
 8002246:	f844 be08 	strt	fp, [r4, #8]
 800224a:	b001      	add	sp, #4
 800224c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002250:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002252:	bf00      	nop
 8002254:	bf00      	nop
 8002256:	bf00      	nop
 8002258:	66666666 	.word	0x66666666
 800225c:	3fe66666 	.word	0x3fe66666

08002260 <ctl_StringCmpNoCase>:
 8002260:	b085      	sub	sp, #20
 8002262:	f84d 4e00 	strt	r4, [sp]
 8002266:	f84d 5e04 	strt	r5, [sp, #4]
 800226a:	f84d 6e08 	strt	r6, [sp, #8]
 800226e:	f84d 7e0c 	strt	r7, [sp, #12]
 8002272:	f84d ee10 	strt	lr, [sp, #16]
 8002276:	af03      	add	r7, sp, #12
 8002278:	b083      	sub	sp, #12
 800227a:	f84d 8e00 	strt	r8, [sp]
 800227e:	f84d 9e04 	strt	r9, [sp, #4]
 8002282:	f84d ae08 	strt	sl, [sp, #8]
 8002286:	4680      	mov	r8, r0
 8002288:	4689      	mov	r9, r1
 800228a:	f8d8 0004 	ldr.w	r0, [r8, #4]
 800228e:	7805      	ldrb	r5, [r0, #0]
 8002290:	b31d      	cbz	r5, 80022da <ctl_StringCmpNoCase+0x7a>
 8002292:	2600      	movs	r6, #0
 8002294:	f819 0006 	ldrb.w	r0, [r9, r6]
 8002298:	b308      	cbz	r0, 80022de <ctl_StringCmpNoCase+0x7e>
 800229a:	f000 faab 	bl	80027f4 <__locale_ctype_ptr>
 800229e:	4428      	add	r0, r5
 80022a0:	f819 4006 	ldrb.w	r4, [r9, r6]
 80022a4:	f890 a001 	ldrb.w	sl, [r0, #1]
 80022a8:	f000 faa4 	bl	80027f4 <__locale_ctype_ptr>
 80022ac:	4420      	add	r0, r4
 80022ae:	7840      	ldrb	r0, [r0, #1]
 80022b0:	f000 0003 	and.w	r0, r0, #3
 80022b4:	2801      	cmp	r0, #1
 80022b6:	f00a 0003 	and.w	r0, sl, #3
 80022ba:	bf08      	it	eq
 80022bc:	3420      	addeq	r4, #32
 80022be:	2801      	cmp	r0, #1
 80022c0:	bf08      	it	eq
 80022c2:	3520      	addeq	r5, #32
 80022c4:	42a5      	cmp	r5, r4
 80022c6:	d111      	bne.n	80022ec <ctl_StringCmpNoCase+0x8c>
 80022c8:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80022cc:	4430      	add	r0, r6
 80022ce:	3601      	adds	r6, #1
 80022d0:	7845      	ldrb	r5, [r0, #1]
 80022d2:	2d00      	cmp	r5, #0
 80022d4:	d1de      	bne.n	8002294 <ctl_StringCmpNoCase+0x34>
 80022d6:	2500      	movs	r5, #0
 80022d8:	e001      	b.n	80022de <ctl_StringCmpNoCase+0x7e>
 80022da:	2500      	movs	r5, #0
 80022dc:	2600      	movs	r6, #0
 80022de:	f819 0006 	ldrb.w	r0, [r9, r6]
 80022e2:	b2e9      	uxtb	r1, r5
 80022e4:	1a08      	subs	r0, r1, r0
 80022e6:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 80022ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022ec:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80022f0:	5d84      	ldrb	r4, [r0, r6]
 80022f2:	f000 fa7f 	bl	80027f4 <__locale_ctype_ptr>
 80022f6:	4420      	add	r0, r4
 80022f8:	7840      	ldrb	r0, [r0, #1]
 80022fa:	f000 0003 	and.w	r0, r0, #3
 80022fe:	2801      	cmp	r0, #1
 8002300:	bf08      	it	eq
 8002302:	3420      	addeq	r4, #32
 8002304:	f819 5006 	ldrb.w	r5, [r9, r6]
 8002308:	f000 fa74 	bl	80027f4 <__locale_ctype_ptr>
 800230c:	4428      	add	r0, r5
 800230e:	7840      	ldrb	r0, [r0, #1]
 8002310:	f000 0003 	and.w	r0, r0, #3
 8002314:	2801      	cmp	r0, #1
 8002316:	bf08      	it	eq
 8002318:	3520      	addeq	r5, #32
 800231a:	1b60      	subs	r0, r4, r5
 800231c:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8002320:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002322 <benchmark>:
 8002322:	b085      	sub	sp, #20
 8002324:	f84d 4e00 	strt	r4, [sp]
 8002328:	f84d 5e04 	strt	r5, [sp, #4]
 800232c:	f84d 6e08 	strt	r6, [sp, #8]
 8002330:	f84d 7e0c 	strt	r7, [sp, #12]
 8002334:	f84d ee10 	strt	lr, [sp, #16]
 8002338:	af03      	add	r7, sp, #12
 800233a:	b084      	sub	sp, #16
 800233c:	f84d 8e00 	strt	r8, [sp]
 8002340:	f84d 9e04 	strt	r9, [sp, #4]
 8002344:	f84d ae08 	strt	sl, [sp, #8]
 8002348:	f84d be0c 	strt	fp, [sp, #12]
 800234c:	b081      	sub	sp, #4
 800234e:	2010      	movs	r0, #16
 8002350:	f000 fa5e 	bl	8002810 <malloc>
 8002354:	4605      	mov	r5, r0
 8002356:	b195      	cbz	r5, 800237e <benchmark+0x5c>
 8002358:	2464      	movs	r4, #100	; 0x64
 800235a:	2064      	movs	r0, #100	; 0x64
 800235c:	f845 4e00 	strt	r4, [r5]
 8002360:	f000 fa56 	bl	8002810 <malloc>
 8002364:	2800      	cmp	r0, #0
 8002366:	f845 0e04 	strt	r0, [r5, #4]
 800236a:	d00b      	beq.n	8002384 <benchmark+0x62>
 800236c:	2100      	movs	r1, #0
 800236e:	46ab      	mov	fp, r5
 8002370:	f845 1e08 	strt	r1, [r5, #8]
 8002374:	f845 4e0c 	strt	r4, [r5, #12]
 8002378:	f800 1e00 	strbt	r1, [r0]
 800237c:	e00f      	b.n	800239e <benchmark+0x7c>
 800237e:	f04f 0b00 	mov.w	fp, #0
 8002382:	e00c      	b.n	800239e <benchmark+0x7c>
 8002384:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002388:	f04f 0b00 	mov.w	fp, #0
 800238c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002390:	f840 4e00 	strt	r4, [r0]
 8002394:	2001      	movs	r0, #1
 8002396:	f845 0e08 	strt	r0, [r5, #8]
 800239a:	f845 be0c 	strt	fp, [r5, #12]
 800239e:	2010      	movs	r0, #16
 80023a0:	f000 fa36 	bl	8002810 <malloc>
 80023a4:	4605      	mov	r5, r0
 80023a6:	b195      	cbz	r5, 80023ce <benchmark+0xac>
 80023a8:	2464      	movs	r4, #100	; 0x64
 80023aa:	2064      	movs	r0, #100	; 0x64
 80023ac:	f845 4e00 	strt	r4, [r5]
 80023b0:	f000 fa2e 	bl	8002810 <malloc>
 80023b4:	2800      	cmp	r0, #0
 80023b6:	f845 0e04 	strt	r0, [r5, #4]
 80023ba:	d00b      	beq.n	80023d4 <benchmark+0xb2>
 80023bc:	2100      	movs	r1, #0
 80023be:	46a8      	mov	r8, r5
 80023c0:	f845 1e08 	strt	r1, [r5, #8]
 80023c4:	f845 4e0c 	strt	r4, [r5, #12]
 80023c8:	f800 1e00 	strbt	r1, [r0]
 80023cc:	e00f      	b.n	80023ee <benchmark+0xcc>
 80023ce:	f04f 0800 	mov.w	r8, #0
 80023d2:	e00c      	b.n	80023ee <benchmark+0xcc>
 80023d4:	f640 20fc 	movw	r0, #2812	; 0xafc
 80023d8:	f04f 0800 	mov.w	r8, #0
 80023dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023e0:	f840 4e00 	strt	r4, [r0]
 80023e4:	2001      	movs	r0, #1
 80023e6:	f845 0e08 	strt	r0, [r5, #8]
 80023ea:	f845 8e0c 	strt	r8, [r5, #12]
 80023ee:	f640 2064 	movw	r0, #2660	; 0xa64
 80023f2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023f6:	f8d0 9000 	ldr.w	r9, [r0]
 80023fa:	4648      	mov	r0, r9
 80023fc:	f7fe fd20 	bl	8000e40 <strlen>
 8002400:	f8db a00c 	ldr.w	sl, [fp, #12]
 8002404:	4605      	mov	r5, r0
 8002406:	45aa      	cmp	sl, r5
 8002408:	d216      	bcs.n	8002438 <benchmark+0x116>
 800240a:	f8db 0000 	ldr.w	r0, [fp]
 800240e:	fbb5 f1f0 	udiv	r1, r5, r0
 8002412:	3101      	adds	r1, #1
 8002414:	fb01 f400 	mul.w	r4, r1, r0
 8002418:	4620      	mov	r0, r4
 800241a:	f000 f9f9 	bl	8002810 <malloc>
 800241e:	4606      	mov	r6, r0
 8002420:	b19e      	cbz	r6, 800244a <benchmark+0x128>
 8002422:	f8db 1004 	ldr.w	r1, [fp, #4]
 8002426:	4630      	mov	r0, r6
 8002428:	4652      	mov	r2, sl
 800242a:	f000 f9a9 	bl	8002780 <__aeabi_memcpy>
 800242e:	f84b 4e0c 	strt	r4, [fp, #12]
 8002432:	f84b 6e04 	strt	r6, [fp, #4]
 8002436:	e001      	b.n	800243c <benchmark+0x11a>
 8002438:	f8db 6004 	ldr.w	r6, [fp, #4]
 800243c:	4630      	mov	r0, r6
 800243e:	4649      	mov	r1, r9
 8002440:	f000 fd82 	bl	8002f48 <strcpy>
 8002444:	f84b 5e08 	strt	r5, [fp, #8]
 8002448:	e006      	b.n	8002458 <benchmark+0x136>
 800244a:	f640 20fc 	movw	r0, #2812	; 0xafc
 800244e:	2164      	movs	r1, #100	; 0x64
 8002450:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002454:	f840 1e00 	strt	r1, [r0]
 8002458:	f640 2068 	movw	r0, #2664	; 0xa68
 800245c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002460:	6801      	ldr	r1, [r0, #0]
 8002462:	4658      	mov	r0, fp
 8002464:	f7ff fe8c 	bl	8002180 <ctl_StringAppend>
 8002468:	f640 206c 	movw	r0, #2668	; 0xa6c
 800246c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002470:	f8d0 9000 	ldr.w	r9, [r0]
 8002474:	4648      	mov	r0, r9
 8002476:	f7fe fce3 	bl	8000e40 <strlen>
 800247a:	f8d8 a00c 	ldr.w	sl, [r8, #12]
 800247e:	4606      	mov	r6, r0
 8002480:	45b2      	cmp	sl, r6
 8002482:	d216      	bcs.n	80024b2 <benchmark+0x190>
 8002484:	f8d8 0000 	ldr.w	r0, [r8]
 8002488:	fbb6 f1f0 	udiv	r1, r6, r0
 800248c:	3101      	adds	r1, #1
 800248e:	fb01 f400 	mul.w	r4, r1, r0
 8002492:	4620      	mov	r0, r4
 8002494:	f000 f9bc 	bl	8002810 <malloc>
 8002498:	4605      	mov	r5, r0
 800249a:	b19d      	cbz	r5, 80024c4 <benchmark+0x1a2>
 800249c:	f8d8 1004 	ldr.w	r1, [r8, #4]
 80024a0:	4628      	mov	r0, r5
 80024a2:	4652      	mov	r2, sl
 80024a4:	f000 f96c 	bl	8002780 <__aeabi_memcpy>
 80024a8:	f848 4e0c 	strt	r4, [r8, #12]
 80024ac:	f848 5e04 	strt	r5, [r8, #4]
 80024b0:	e001      	b.n	80024b6 <benchmark+0x194>
 80024b2:	f8d8 5004 	ldr.w	r5, [r8, #4]
 80024b6:	4628      	mov	r0, r5
 80024b8:	4649      	mov	r1, r9
 80024ba:	f000 fd45 	bl	8002f48 <strcpy>
 80024be:	f848 6e08 	strt	r6, [r8, #8]
 80024c2:	e008      	b.n	80024d6 <benchmark+0x1b4>
 80024c4:	f640 20fc 	movw	r0, #2812	; 0xafc
 80024c8:	2164      	movs	r1, #100	; 0x64
 80024ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024ce:	f840 1e00 	strt	r1, [r0]
 80024d2:	f8d8 6008 	ldr.w	r6, [r8, #8]
 80024d6:	f8db 500c 	ldr.w	r5, [fp, #12]
 80024da:	42b5      	cmp	r5, r6
 80024dc:	d216      	bcs.n	800250c <benchmark+0x1ea>
 80024de:	f8db 0000 	ldr.w	r0, [fp]
 80024e2:	fbb6 f1f0 	udiv	r1, r6, r0
 80024e6:	3101      	adds	r1, #1
 80024e8:	fb01 f900 	mul.w	r9, r1, r0
 80024ec:	4648      	mov	r0, r9
 80024ee:	f000 f98f 	bl	8002810 <malloc>
 80024f2:	4606      	mov	r6, r0
 80024f4:	b1b6      	cbz	r6, 8002524 <benchmark+0x202>
 80024f6:	f8db 1004 	ldr.w	r1, [fp, #4]
 80024fa:	4630      	mov	r0, r6
 80024fc:	462a      	mov	r2, r5
 80024fe:	f000 f93f 	bl	8002780 <__aeabi_memcpy>
 8002502:	f84b 9e0c 	strt	r9, [fp, #12]
 8002506:	f84b 6e04 	strt	r6, [fp, #4]
 800250a:	e001      	b.n	8002510 <benchmark+0x1ee>
 800250c:	f8db 6004 	ldr.w	r6, [fp, #4]
 8002510:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8002514:	4630      	mov	r0, r6
 8002516:	f000 fd17 	bl	8002f48 <strcpy>
 800251a:	f8d8 0008 	ldr.w	r0, [r8, #8]
 800251e:	f84b 0e08 	strt	r0, [fp, #8]
 8002522:	e006      	b.n	8002532 <benchmark+0x210>
 8002524:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002528:	2164      	movs	r1, #100	; 0x64
 800252a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800252e:	f840 1e00 	strt	r1, [r0]
 8002532:	f640 2570 	movw	r5, #2672	; 0xa70
 8002536:	4658      	mov	r0, fp
 8002538:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800253c:	6829      	ldr	r1, [r5, #0]
 800253e:	f7ff fe8f 	bl	8002260 <ctl_StringCmpNoCase>
 8002542:	2600      	movs	r6, #0
 8002544:	b170      	cbz	r0, 8002564 <benchmark+0x242>
 8002546:	f640 2474 	movw	r4, #2676	; 0xa74
 800254a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800254e:	6821      	ldr	r1, [r4, #0]
 8002550:	4658      	mov	r0, fp
 8002552:	f7ff fe15 	bl	8002180 <ctl_StringAppend>
 8002556:	6829      	ldr	r1, [r5, #0]
 8002558:	4658      	mov	r0, fp
 800255a:	f7ff fe81 	bl	8002260 <ctl_StringCmpNoCase>
 800255e:	3601      	adds	r6, #1
 8002560:	2800      	cmp	r0, #0
 8002562:	d1f4      	bne.n	800254e <benchmark+0x22c>
 8002564:	f8db 0004 	ldr.w	r0, [fp, #4]
 8002568:	f000 f95a 	bl	8002820 <free>
 800256c:	4658      	mov	r0, fp
 800256e:	f000 f957 	bl	8002820 <free>
 8002572:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8002576:	f000 f953 	bl	8002820 <free>
 800257a:	4640      	mov	r0, r8
 800257c:	f000 f950 	bl	8002820 <free>
 8002580:	4630      	mov	r0, r6
 8002582:	b001      	add	sp, #4
 8002584:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002588:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800258a <initialise_benchmark>:
 800258a:	f640 2064 	movw	r0, #2660	; 0xa64
 800258e:	f247 6118 	movw	r1, #30232	; 0x7618
 8002592:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002596:	f6c0 0100 	movt	r1, #2048	; 0x800
 800259a:	f840 1e00 	strt	r1, [r0]
 800259e:	f640 2068 	movw	r0, #2664	; 0xa68
 80025a2:	f247 6129 	movw	r1, #30249	; 0x7629
 80025a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025aa:	f6c0 0100 	movt	r1, #2048	; 0x800
 80025ae:	f840 1e00 	strt	r1, [r0]
 80025b2:	f640 206c 	movw	r0, #2668	; 0xa6c
 80025b6:	f247 6138 	movw	r1, #30264	; 0x7638
 80025ba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025be:	f6c0 0100 	movt	r1, #2048	; 0x800
 80025c2:	f840 1e00 	strt	r1, [r0]
 80025c6:	f640 2070 	movw	r0, #2672	; 0xa70
 80025ca:	f247 613c 	movw	r1, #30268	; 0x763c
 80025ce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025d2:	f6c0 0100 	movt	r1, #2048	; 0x800
 80025d6:	f840 1e00 	strt	r1, [r0]
 80025da:	f640 2074 	movw	r0, #2676	; 0xa74
 80025de:	f247 6154 	movw	r1, #30292	; 0x7654
 80025e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80025e6:	f6c0 0100 	movt	r1, #2048	; 0x800
 80025ea:	f840 1e00 	strt	r1, [r0]
 80025ee:	4770      	bx	lr

080025f0 <verify_benchmark>:
 80025f0:	2100      	movs	r1, #0
 80025f2:	2815      	cmp	r0, #21
 80025f4:	bf08      	it	eq
 80025f6:	2101      	moveq	r1, #1
 80025f8:	4608      	mov	r0, r1
 80025fa:	4770      	bx	lr

080025fc <_read>:
 80025fc:	b085      	sub	sp, #20
 80025fe:	f84d 4e00 	strt	r4, [sp]
 8002602:	f84d 5e04 	strt	r5, [sp, #4]
 8002606:	f84d 6e08 	strt	r6, [sp, #8]
 800260a:	f84d 7e0c 	strt	r7, [sp, #12]
 800260e:	f84d ee10 	strt	lr, [sp, #16]
 8002612:	af03      	add	r7, sp, #12
 8002614:	b081      	sub	sp, #4
 8002616:	f84d be00 	strt	fp, [sp]
 800261a:	4614      	mov	r4, r2
 800261c:	460d      	mov	r5, r1
 800261e:	2c01      	cmp	r4, #1
 8002620:	db08      	blt.n	8002634 <_read+0x38>
 8002622:	4626      	mov	r6, r4
 8002624:	f3af 8000 	nop.w
 8002628:	f805 0e00 	strbt	r0, [r5]
 800262c:	bfe8      	it	al
 800262e:	3501      	addal	r5, #1
 8002630:	3e01      	subs	r6, #1
 8002632:	d1f7      	bne.n	8002624 <_read+0x28>
 8002634:	4620      	mov	r0, r4
 8002636:	f85d bb04 	ldr.w	fp, [sp], #4
 800263a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800263c <_write>:
 800263c:	b085      	sub	sp, #20
 800263e:	f84d 4e00 	strt	r4, [sp]
 8002642:	f84d 5e04 	strt	r5, [sp, #4]
 8002646:	f84d 6e08 	strt	r6, [sp, #8]
 800264a:	f84d 7e0c 	strt	r7, [sp, #12]
 800264e:	f84d ee10 	strt	lr, [sp, #16]
 8002652:	af03      	add	r7, sp, #12
 8002654:	b081      	sub	sp, #4
 8002656:	f84d be00 	strt	fp, [sp]
 800265a:	4614      	mov	r4, r2
 800265c:	460d      	mov	r5, r1
 800265e:	2c01      	cmp	r4, #1
 8002660:	db06      	blt.n	8002670 <_write+0x34>
 8002662:	4626      	mov	r6, r4
 8002664:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002668:	f7ff fd06 	bl	8002078 <__io_putchar>
 800266c:	3e01      	subs	r6, #1
 800266e:	d1f9      	bne.n	8002664 <_write+0x28>
 8002670:	4620      	mov	r0, r4
 8002672:	f85d bb04 	ldr.w	fp, [sp], #4
 8002676:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002678 <_sbrk>:
 8002678:	f640 227c 	movw	r2, #2684	; 0xa7c
 800267c:	4601      	mov	r1, r0
 800267e:	466b      	mov	r3, sp
 8002680:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002684:	6810      	ldr	r0, [r2, #0]
 8002686:	2800      	cmp	r0, #0
 8002688:	bf02      	ittt	eq
 800268a:	f640 3030 	movweq	r0, #2864	; 0xb30
 800268e:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002692:	f842 0e00 	strteq	r0, [r2]
 8002696:	4401      	add	r1, r0
 8002698:	4299      	cmp	r1, r3
 800269a:	bf9c      	itt	ls
 800269c:	f842 1e00 	strtls	r1, [r2]
 80026a0:	4770      	bxls	lr
 80026a2:	b082      	sub	sp, #8
 80026a4:	f84d 7e00 	strt	r7, [sp]
 80026a8:	f84d ee04 	strt	lr, [sp, #4]
 80026ac:	466f      	mov	r7, sp
 80026ae:	f000 f869 	bl	8002784 <__errno>
 80026b2:	210c      	movs	r1, #12
 80026b4:	f840 1e00 	strt	r1, [r0]
 80026b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80026bc:	bd80      	pop	{r7, pc}

080026be <_close>:
 80026be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80026c2:	4770      	bx	lr

080026c4 <_fstat>:
 80026c4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80026c8:	f841 0e04 	strt	r0, [r1, #4]
 80026cc:	2000      	movs	r0, #0
 80026ce:	4770      	bx	lr

080026d0 <_isatty>:
 80026d0:	2001      	movs	r0, #1
 80026d2:	4770      	bx	lr

080026d4 <_lseek>:
 80026d4:	2000      	movs	r0, #0
 80026d6:	4770      	bx	lr

080026d8 <SystemInit>:
 80026d8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80026dc:	f04f 0c00 	mov.w	ip, #0
 80026e0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80026e4:	6801      	ldr	r1, [r0, #0]
 80026e6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80026ea:	6001      	str	r1, [r0, #0]
 80026ec:	f241 0100 	movw	r1, #4096	; 0x1000
 80026f0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80026f4:	680a      	ldr	r2, [r1, #0]
 80026f6:	f042 0201 	orr.w	r2, r2, #1
 80026fa:	600a      	str	r2, [r1, #0]
 80026fc:	f8c1 c008 	str.w	ip, [r1, #8]
 8002700:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002704:	680b      	ldr	r3, [r1, #0]
 8002706:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800270a:	401a      	ands	r2, r3
 800270c:	600a      	str	r2, [r1, #0]
 800270e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002712:	60ca      	str	r2, [r1, #12]
 8002714:	680a      	ldr	r2, [r1, #0]
 8002716:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800271a:	600a      	str	r2, [r1, #0]
 800271c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002720:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002724:	f840 1c80 	str.w	r1, [r0, #-128]
 8002728:	4770      	bx	lr
	...

0800272c <Reset_Handler>:
 800272c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002764 <LoopForever+0x2>
 8002730:	2100      	movs	r1, #0
 8002732:	e003      	b.n	800273c <LoopCopyDataInit>

08002734 <CopyDataInit>:
 8002734:	4b0c      	ldr	r3, [pc, #48]	; (8002768 <LoopForever+0x6>)
 8002736:	585b      	ldr	r3, [r3, r1]
 8002738:	5043      	str	r3, [r0, r1]
 800273a:	3104      	adds	r1, #4

0800273c <LoopCopyDataInit>:
 800273c:	480b      	ldr	r0, [pc, #44]	; (800276c <LoopForever+0xa>)
 800273e:	4b0c      	ldr	r3, [pc, #48]	; (8002770 <LoopForever+0xe>)
 8002740:	1842      	adds	r2, r0, r1
 8002742:	429a      	cmp	r2, r3
 8002744:	d3f6      	bcc.n	8002734 <CopyDataInit>
 8002746:	4a0b      	ldr	r2, [pc, #44]	; (8002774 <LoopForever+0x12>)
 8002748:	e002      	b.n	8002750 <LoopFillZerobss>

0800274a <FillZerobss>:
 800274a:	2300      	movs	r3, #0
 800274c:	f842 3b04 	str.w	r3, [r2], #4

08002750 <LoopFillZerobss>:
 8002750:	4b09      	ldr	r3, [pc, #36]	; (8002778 <LoopForever+0x16>)
 8002752:	429a      	cmp	r2, r3
 8002754:	d3f9      	bcc.n	800274a <FillZerobss>
 8002756:	f7ff ffbf 	bl	80026d8 <SystemInit>
 800275a:	f000 f819 	bl	8002790 <__libc_init_array>
 800275e:	f7ff fca1 	bl	80020a4 <main>

08002762 <LoopForever>:
 8002762:	e7fe      	b.n	8002762 <LoopForever>
 8002764:	20018000 	.word	0x20018000
 8002768:	08007a18 	.word	0x08007a18
 800276c:	20000000 	.word	0x20000000
 8002770:	200009c8 	.word	0x200009c8
 8002774:	200009c8 	.word	0x200009c8
 8002778:	20000b2c 	.word	0x20000b2c

0800277c <ADC1_2_IRQHandler>:
 800277c:	e7fe      	b.n	800277c <ADC1_2_IRQHandler>
	...

08002780 <__aeabi_memcpy>:
 8002780:	f7fe baac 	b.w	8000cdc <memcpy>

08002784 <__errno>:
 8002784:	4b01      	ldr	r3, [pc, #4]	; (800278c <__errno+0x8>)
 8002786:	6818      	ldr	r0, [r3, #0]
 8002788:	4770      	bx	lr
 800278a:	bf00      	nop
 800278c:	20000018 	.word	0x20000018

08002790 <__libc_init_array>:
 8002790:	b570      	push	{r4, r5, r6, lr}
 8002792:	4e0d      	ldr	r6, [pc, #52]	; (80027c8 <__libc_init_array+0x38>)
 8002794:	4d0d      	ldr	r5, [pc, #52]	; (80027cc <__libc_init_array+0x3c>)
 8002796:	1b76      	subs	r6, r6, r5
 8002798:	10b6      	asrs	r6, r6, #2
 800279a:	d006      	beq.n	80027aa <__libc_init_array+0x1a>
 800279c:	2400      	movs	r4, #0
 800279e:	3401      	adds	r4, #1
 80027a0:	f855 3b04 	ldr.w	r3, [r5], #4
 80027a4:	4798      	blx	r3
 80027a6:	42a6      	cmp	r6, r4
 80027a8:	d1f9      	bne.n	800279e <__libc_init_array+0xe>
 80027aa:	4e09      	ldr	r6, [pc, #36]	; (80027d0 <__libc_init_array+0x40>)
 80027ac:	4d09      	ldr	r5, [pc, #36]	; (80027d4 <__libc_init_array+0x44>)
 80027ae:	1b76      	subs	r6, r6, r5
 80027b0:	f004 ff26 	bl	8007600 <_init>
 80027b4:	10b6      	asrs	r6, r6, #2
 80027b6:	d006      	beq.n	80027c6 <__libc_init_array+0x36>
 80027b8:	2400      	movs	r4, #0
 80027ba:	3401      	adds	r4, #1
 80027bc:	f855 3b04 	ldr.w	r3, [r5], #4
 80027c0:	4798      	blx	r3
 80027c2:	42a6      	cmp	r6, r4
 80027c4:	d1f9      	bne.n	80027ba <__libc_init_array+0x2a>
 80027c6:	bd70      	pop	{r4, r5, r6, pc}
 80027c8:	08007a08 	.word	0x08007a08
 80027cc:	08007a08 	.word	0x08007a08
 80027d0:	08007a10 	.word	0x08007a10
 80027d4:	08007a08 	.word	0x08007a08

080027d8 <__locale_mb_cur_max>:
 80027d8:	4b04      	ldr	r3, [pc, #16]	; (80027ec <__locale_mb_cur_max+0x14>)
 80027da:	4a05      	ldr	r2, [pc, #20]	; (80027f0 <__locale_mb_cur_max+0x18>)
 80027dc:	681b      	ldr	r3, [r3, #0]
 80027de:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80027e0:	2b00      	cmp	r3, #0
 80027e2:	bf08      	it	eq
 80027e4:	4613      	moveq	r3, r2
 80027e6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80027ea:	4770      	bx	lr
 80027ec:	20000018 	.word	0x20000018
 80027f0:	20000448 	.word	0x20000448

080027f4 <__locale_ctype_ptr>:
 80027f4:	4b04      	ldr	r3, [pc, #16]	; (8002808 <__locale_ctype_ptr+0x14>)
 80027f6:	4a05      	ldr	r2, [pc, #20]	; (800280c <__locale_ctype_ptr+0x18>)
 80027f8:	681b      	ldr	r3, [r3, #0]
 80027fa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80027fc:	2b00      	cmp	r3, #0
 80027fe:	bf08      	it	eq
 8002800:	4613      	moveq	r3, r2
 8002802:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
 8002806:	4770      	bx	lr
 8002808:	20000018 	.word	0x20000018
 800280c:	20000448 	.word	0x20000448

08002810 <malloc>:
 8002810:	4b02      	ldr	r3, [pc, #8]	; (800281c <malloc+0xc>)
 8002812:	4601      	mov	r1, r0
 8002814:	6818      	ldr	r0, [r3, #0]
 8002816:	f000 b80b 	b.w	8002830 <_malloc_r>
 800281a:	bf00      	nop
 800281c:	20000018 	.word	0x20000018

08002820 <free>:
 8002820:	4b02      	ldr	r3, [pc, #8]	; (800282c <free+0xc>)
 8002822:	4601      	mov	r1, r0
 8002824:	6818      	ldr	r0, [r3, #0]
 8002826:	f003 bb6f 	b.w	8005f08 <_free_r>
 800282a:	bf00      	nop
 800282c:	20000018 	.word	0x20000018

08002830 <_malloc_r>:
 8002830:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002834:	f101 050b 	add.w	r5, r1, #11
 8002838:	2d16      	cmp	r5, #22
 800283a:	b083      	sub	sp, #12
 800283c:	4606      	mov	r6, r0
 800283e:	d823      	bhi.n	8002888 <_malloc_r+0x58>
 8002840:	2910      	cmp	r1, #16
 8002842:	f200 80b9 	bhi.w	80029b8 <_malloc_r+0x188>
 8002846:	f000 faf7 	bl	8002e38 <__malloc_lock>
 800284a:	2510      	movs	r5, #16
 800284c:	2318      	movs	r3, #24
 800284e:	2002      	movs	r0, #2
 8002850:	4fc5      	ldr	r7, [pc, #788]	; (8002b68 <_malloc_r+0x338>)
 8002852:	443b      	add	r3, r7
 8002854:	f1a3 0208 	sub.w	r2, r3, #8
 8002858:	685c      	ldr	r4, [r3, #4]
 800285a:	4294      	cmp	r4, r2
 800285c:	f000 8166 	beq.w	8002b2c <_malloc_r+0x2fc>
 8002860:	6863      	ldr	r3, [r4, #4]
 8002862:	f023 0303 	bic.w	r3, r3, #3
 8002866:	4423      	add	r3, r4
 8002868:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 800286c:	685a      	ldr	r2, [r3, #4]
 800286e:	60e9      	str	r1, [r5, #12]
 8002870:	f042 0201 	orr.w	r2, r2, #1
 8002874:	608d      	str	r5, [r1, #8]
 8002876:	4630      	mov	r0, r6
 8002878:	605a      	str	r2, [r3, #4]
 800287a:	f000 fae3 	bl	8002e44 <__malloc_unlock>
 800287e:	3408      	adds	r4, #8
 8002880:	4620      	mov	r0, r4
 8002882:	b003      	add	sp, #12
 8002884:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002888:	f035 0507 	bics.w	r5, r5, #7
 800288c:	f100 8094 	bmi.w	80029b8 <_malloc_r+0x188>
 8002890:	42a9      	cmp	r1, r5
 8002892:	f200 8091 	bhi.w	80029b8 <_malloc_r+0x188>
 8002896:	f000 facf 	bl	8002e38 <__malloc_lock>
 800289a:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800289e:	f0c0 8183 	bcc.w	8002ba8 <_malloc_r+0x378>
 80028a2:	0a6b      	lsrs	r3, r5, #9
 80028a4:	f000 808f 	beq.w	80029c6 <_malloc_r+0x196>
 80028a8:	2b04      	cmp	r3, #4
 80028aa:	f200 8146 	bhi.w	8002b3a <_malloc_r+0x30a>
 80028ae:	09ab      	lsrs	r3, r5, #6
 80028b0:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80028b4:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80028b8:	00c3      	lsls	r3, r0, #3
 80028ba:	4fab      	ldr	r7, [pc, #684]	; (8002b68 <_malloc_r+0x338>)
 80028bc:	443b      	add	r3, r7
 80028be:	f1a3 0108 	sub.w	r1, r3, #8
 80028c2:	685c      	ldr	r4, [r3, #4]
 80028c4:	42a1      	cmp	r1, r4
 80028c6:	d106      	bne.n	80028d6 <_malloc_r+0xa6>
 80028c8:	e00c      	b.n	80028e4 <_malloc_r+0xb4>
 80028ca:	2a00      	cmp	r2, #0
 80028cc:	f280 811d 	bge.w	8002b0a <_malloc_r+0x2da>
 80028d0:	68e4      	ldr	r4, [r4, #12]
 80028d2:	42a1      	cmp	r1, r4
 80028d4:	d006      	beq.n	80028e4 <_malloc_r+0xb4>
 80028d6:	6863      	ldr	r3, [r4, #4]
 80028d8:	f023 0303 	bic.w	r3, r3, #3
 80028dc:	1b5a      	subs	r2, r3, r5
 80028de:	2a0f      	cmp	r2, #15
 80028e0:	ddf3      	ble.n	80028ca <_malloc_r+0x9a>
 80028e2:	4660      	mov	r0, ip
 80028e4:	693c      	ldr	r4, [r7, #16]
 80028e6:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002b7c <_malloc_r+0x34c>
 80028ea:	4564      	cmp	r4, ip
 80028ec:	d071      	beq.n	80029d2 <_malloc_r+0x1a2>
 80028ee:	6863      	ldr	r3, [r4, #4]
 80028f0:	f023 0303 	bic.w	r3, r3, #3
 80028f4:	1b5a      	subs	r2, r3, r5
 80028f6:	2a0f      	cmp	r2, #15
 80028f8:	f300 8144 	bgt.w	8002b84 <_malloc_r+0x354>
 80028fc:	2a00      	cmp	r2, #0
 80028fe:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8002902:	f280 8126 	bge.w	8002b52 <_malloc_r+0x322>
 8002906:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800290a:	f080 8169 	bcs.w	8002be0 <_malloc_r+0x3b0>
 800290e:	08db      	lsrs	r3, r3, #3
 8002910:	1c59      	adds	r1, r3, #1
 8002912:	687a      	ldr	r2, [r7, #4]
 8002914:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002918:	f8c4 8008 	str.w	r8, [r4, #8]
 800291c:	f04f 0e01 	mov.w	lr, #1
 8002920:	109b      	asrs	r3, r3, #2
 8002922:	fa0e f303 	lsl.w	r3, lr, r3
 8002926:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800292a:	4313      	orrs	r3, r2
 800292c:	f1ae 0208 	sub.w	r2, lr, #8
 8002930:	60e2      	str	r2, [r4, #12]
 8002932:	607b      	str	r3, [r7, #4]
 8002934:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002938:	f8c8 400c 	str.w	r4, [r8, #12]
 800293c:	1082      	asrs	r2, r0, #2
 800293e:	2401      	movs	r4, #1
 8002940:	4094      	lsls	r4, r2
 8002942:	429c      	cmp	r4, r3
 8002944:	d84b      	bhi.n	80029de <_malloc_r+0x1ae>
 8002946:	421c      	tst	r4, r3
 8002948:	d106      	bne.n	8002958 <_malloc_r+0x128>
 800294a:	f020 0003 	bic.w	r0, r0, #3
 800294e:	0064      	lsls	r4, r4, #1
 8002950:	421c      	tst	r4, r3
 8002952:	f100 0004 	add.w	r0, r0, #4
 8002956:	d0fa      	beq.n	800294e <_malloc_r+0x11e>
 8002958:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 800295c:	46ce      	mov	lr, r9
 800295e:	4680      	mov	r8, r0
 8002960:	f8de 300c 	ldr.w	r3, [lr, #12]
 8002964:	459e      	cmp	lr, r3
 8002966:	d107      	bne.n	8002978 <_malloc_r+0x148>
 8002968:	e122      	b.n	8002bb0 <_malloc_r+0x380>
 800296a:	2a00      	cmp	r2, #0
 800296c:	f280 8129 	bge.w	8002bc2 <_malloc_r+0x392>
 8002970:	68db      	ldr	r3, [r3, #12]
 8002972:	459e      	cmp	lr, r3
 8002974:	f000 811c 	beq.w	8002bb0 <_malloc_r+0x380>
 8002978:	6859      	ldr	r1, [r3, #4]
 800297a:	f021 0103 	bic.w	r1, r1, #3
 800297e:	1b4a      	subs	r2, r1, r5
 8002980:	2a0f      	cmp	r2, #15
 8002982:	ddf2      	ble.n	800296a <_malloc_r+0x13a>
 8002984:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8002988:	195c      	adds	r4, r3, r5
 800298a:	f045 0501 	orr.w	r5, r5, #1
 800298e:	605d      	str	r5, [r3, #4]
 8002990:	f042 0501 	orr.w	r5, r2, #1
 8002994:	f8c8 e00c 	str.w	lr, [r8, #12]
 8002998:	4630      	mov	r0, r6
 800299a:	f8ce 8008 	str.w	r8, [lr, #8]
 800299e:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80029a2:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80029a6:	6065      	str	r5, [r4, #4]
 80029a8:	505a      	str	r2, [r3, r1]
 80029aa:	9301      	str	r3, [sp, #4]
 80029ac:	f000 fa4a 	bl	8002e44 <__malloc_unlock>
 80029b0:	9b01      	ldr	r3, [sp, #4]
 80029b2:	f103 0408 	add.w	r4, r3, #8
 80029b6:	e763      	b.n	8002880 <_malloc_r+0x50>
 80029b8:	2400      	movs	r4, #0
 80029ba:	230c      	movs	r3, #12
 80029bc:	4620      	mov	r0, r4
 80029be:	6033      	str	r3, [r6, #0]
 80029c0:	b003      	add	sp, #12
 80029c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029c6:	f44f 7300 	mov.w	r3, #512	; 0x200
 80029ca:	2040      	movs	r0, #64	; 0x40
 80029cc:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80029d0:	e773      	b.n	80028ba <_malloc_r+0x8a>
 80029d2:	687b      	ldr	r3, [r7, #4]
 80029d4:	1082      	asrs	r2, r0, #2
 80029d6:	2401      	movs	r4, #1
 80029d8:	4094      	lsls	r4, r2
 80029da:	429c      	cmp	r4, r3
 80029dc:	d9b3      	bls.n	8002946 <_malloc_r+0x116>
 80029de:	68bc      	ldr	r4, [r7, #8]
 80029e0:	6863      	ldr	r3, [r4, #4]
 80029e2:	f023 0903 	bic.w	r9, r3, #3
 80029e6:	45a9      	cmp	r9, r5
 80029e8:	d303      	bcc.n	80029f2 <_malloc_r+0x1c2>
 80029ea:	eba9 0305 	sub.w	r3, r9, r5
 80029ee:	2b0f      	cmp	r3, #15
 80029f0:	dc7b      	bgt.n	8002aea <_malloc_r+0x2ba>
 80029f2:	4b5e      	ldr	r3, [pc, #376]	; (8002b6c <_malloc_r+0x33c>)
 80029f4:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002b80 <_malloc_r+0x350>
 80029f8:	681a      	ldr	r2, [r3, #0]
 80029fa:	f8da 3000 	ldr.w	r3, [sl]
 80029fe:	3301      	adds	r3, #1
 8002a00:	eb05 0802 	add.w	r8, r5, r2
 8002a04:	f000 8148 	beq.w	8002c98 <_malloc_r+0x468>
 8002a08:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002a0c:	f108 080f 	add.w	r8, r8, #15
 8002a10:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002a14:	f028 080f 	bic.w	r8, r8, #15
 8002a18:	4641      	mov	r1, r8
 8002a1a:	4630      	mov	r0, r6
 8002a1c:	f000 fa82 	bl	8002f24 <_sbrk_r>
 8002a20:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002a24:	4683      	mov	fp, r0
 8002a26:	f000 8104 	beq.w	8002c32 <_malloc_r+0x402>
 8002a2a:	eb04 0009 	add.w	r0, r4, r9
 8002a2e:	4558      	cmp	r0, fp
 8002a30:	f200 80fd 	bhi.w	8002c2e <_malloc_r+0x3fe>
 8002a34:	4a4e      	ldr	r2, [pc, #312]	; (8002b70 <_malloc_r+0x340>)
 8002a36:	6813      	ldr	r3, [r2, #0]
 8002a38:	4443      	add	r3, r8
 8002a3a:	6013      	str	r3, [r2, #0]
 8002a3c:	f000 814d 	beq.w	8002cda <_malloc_r+0x4aa>
 8002a40:	f8da 1000 	ldr.w	r1, [sl]
 8002a44:	3101      	adds	r1, #1
 8002a46:	bf1b      	ittet	ne
 8002a48:	ebab 0000 	subne.w	r0, fp, r0
 8002a4c:	181b      	addne	r3, r3, r0
 8002a4e:	f8ca b000 	streq.w	fp, [sl]
 8002a52:	6013      	strne	r3, [r2, #0]
 8002a54:	f01b 0307 	ands.w	r3, fp, #7
 8002a58:	f000 8134 	beq.w	8002cc4 <_malloc_r+0x494>
 8002a5c:	f1c3 0108 	rsb	r1, r3, #8
 8002a60:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8002a64:	448b      	add	fp, r1
 8002a66:	3308      	adds	r3, #8
 8002a68:	44d8      	add	r8, fp
 8002a6a:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8002a6e:	eba3 0808 	sub.w	r8, r3, r8
 8002a72:	4641      	mov	r1, r8
 8002a74:	4630      	mov	r0, r6
 8002a76:	9201      	str	r2, [sp, #4]
 8002a78:	f000 fa54 	bl	8002f24 <_sbrk_r>
 8002a7c:	1c43      	adds	r3, r0, #1
 8002a7e:	9a01      	ldr	r2, [sp, #4]
 8002a80:	f000 8146 	beq.w	8002d10 <_malloc_r+0x4e0>
 8002a84:	eba0 010b 	sub.w	r1, r0, fp
 8002a88:	4441      	add	r1, r8
 8002a8a:	f041 0101 	orr.w	r1, r1, #1
 8002a8e:	6813      	ldr	r3, [r2, #0]
 8002a90:	f8c7 b008 	str.w	fp, [r7, #8]
 8002a94:	4443      	add	r3, r8
 8002a96:	42bc      	cmp	r4, r7
 8002a98:	f8cb 1004 	str.w	r1, [fp, #4]
 8002a9c:	6013      	str	r3, [r2, #0]
 8002a9e:	d015      	beq.n	8002acc <_malloc_r+0x29c>
 8002aa0:	f1b9 0f0f 	cmp.w	r9, #15
 8002aa4:	f240 8130 	bls.w	8002d08 <_malloc_r+0x4d8>
 8002aa8:	6860      	ldr	r0, [r4, #4]
 8002aaa:	f1a9 010c 	sub.w	r1, r9, #12
 8002aae:	f021 0107 	bic.w	r1, r1, #7
 8002ab2:	f000 0001 	and.w	r0, r0, #1
 8002ab6:	eb04 0c01 	add.w	ip, r4, r1
 8002aba:	4308      	orrs	r0, r1
 8002abc:	f04f 0e05 	mov.w	lr, #5
 8002ac0:	290f      	cmp	r1, #15
 8002ac2:	6060      	str	r0, [r4, #4]
 8002ac4:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8002ac8:	f200 813a 	bhi.w	8002d40 <_malloc_r+0x510>
 8002acc:	4a29      	ldr	r2, [pc, #164]	; (8002b74 <_malloc_r+0x344>)
 8002ace:	482a      	ldr	r0, [pc, #168]	; (8002b78 <_malloc_r+0x348>)
 8002ad0:	6811      	ldr	r1, [r2, #0]
 8002ad2:	68bc      	ldr	r4, [r7, #8]
 8002ad4:	428b      	cmp	r3, r1
 8002ad6:	6801      	ldr	r1, [r0, #0]
 8002ad8:	bf88      	it	hi
 8002ada:	6013      	strhi	r3, [r2, #0]
 8002adc:	6862      	ldr	r2, [r4, #4]
 8002ade:	428b      	cmp	r3, r1
 8002ae0:	f022 0203 	bic.w	r2, r2, #3
 8002ae4:	bf88      	it	hi
 8002ae6:	6003      	strhi	r3, [r0, #0]
 8002ae8:	e0a7      	b.n	8002c3a <_malloc_r+0x40a>
 8002aea:	1962      	adds	r2, r4, r5
 8002aec:	f043 0301 	orr.w	r3, r3, #1
 8002af0:	f045 0501 	orr.w	r5, r5, #1
 8002af4:	6065      	str	r5, [r4, #4]
 8002af6:	4630      	mov	r0, r6
 8002af8:	60ba      	str	r2, [r7, #8]
 8002afa:	6053      	str	r3, [r2, #4]
 8002afc:	f000 f9a2 	bl	8002e44 <__malloc_unlock>
 8002b00:	3408      	adds	r4, #8
 8002b02:	4620      	mov	r0, r4
 8002b04:	b003      	add	sp, #12
 8002b06:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b0a:	4423      	add	r3, r4
 8002b0c:	68e1      	ldr	r1, [r4, #12]
 8002b0e:	685a      	ldr	r2, [r3, #4]
 8002b10:	68a5      	ldr	r5, [r4, #8]
 8002b12:	f042 0201 	orr.w	r2, r2, #1
 8002b16:	60e9      	str	r1, [r5, #12]
 8002b18:	4630      	mov	r0, r6
 8002b1a:	608d      	str	r5, [r1, #8]
 8002b1c:	605a      	str	r2, [r3, #4]
 8002b1e:	f000 f991 	bl	8002e44 <__malloc_unlock>
 8002b22:	3408      	adds	r4, #8
 8002b24:	4620      	mov	r0, r4
 8002b26:	b003      	add	sp, #12
 8002b28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b2c:	68dc      	ldr	r4, [r3, #12]
 8002b2e:	42a3      	cmp	r3, r4
 8002b30:	bf08      	it	eq
 8002b32:	3002      	addeq	r0, #2
 8002b34:	f43f aed6 	beq.w	80028e4 <_malloc_r+0xb4>
 8002b38:	e692      	b.n	8002860 <_malloc_r+0x30>
 8002b3a:	2b14      	cmp	r3, #20
 8002b3c:	d971      	bls.n	8002c22 <_malloc_r+0x3f2>
 8002b3e:	2b54      	cmp	r3, #84	; 0x54
 8002b40:	f200 80ad 	bhi.w	8002c9e <_malloc_r+0x46e>
 8002b44:	0b2b      	lsrs	r3, r5, #12
 8002b46:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8002b4a:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8002b4e:	00c3      	lsls	r3, r0, #3
 8002b50:	e6b3      	b.n	80028ba <_malloc_r+0x8a>
 8002b52:	4423      	add	r3, r4
 8002b54:	4630      	mov	r0, r6
 8002b56:	685a      	ldr	r2, [r3, #4]
 8002b58:	f042 0201 	orr.w	r2, r2, #1
 8002b5c:	605a      	str	r2, [r3, #4]
 8002b5e:	3408      	adds	r4, #8
 8002b60:	f000 f970 	bl	8002e44 <__malloc_unlock>
 8002b64:	e68c      	b.n	8002880 <_malloc_r+0x50>
 8002b66:	bf00      	nop
 8002b68:	200005b4 	.word	0x200005b4
 8002b6c:	20000ab0 	.word	0x20000ab0
 8002b70:	20000a80 	.word	0x20000a80
 8002b74:	20000aa8 	.word	0x20000aa8
 8002b78:	20000aac 	.word	0x20000aac
 8002b7c:	200005bc 	.word	0x200005bc
 8002b80:	200009bc 	.word	0x200009bc
 8002b84:	1961      	adds	r1, r4, r5
 8002b86:	f045 0e01 	orr.w	lr, r5, #1
 8002b8a:	f042 0501 	orr.w	r5, r2, #1
 8002b8e:	f8c4 e004 	str.w	lr, [r4, #4]
 8002b92:	4630      	mov	r0, r6
 8002b94:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002b98:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002b9c:	604d      	str	r5, [r1, #4]
 8002b9e:	50e2      	str	r2, [r4, r3]
 8002ba0:	f000 f950 	bl	8002e44 <__malloc_unlock>
 8002ba4:	3408      	adds	r4, #8
 8002ba6:	e66b      	b.n	8002880 <_malloc_r+0x50>
 8002ba8:	08e8      	lsrs	r0, r5, #3
 8002baa:	f105 0308 	add.w	r3, r5, #8
 8002bae:	e64f      	b.n	8002850 <_malloc_r+0x20>
 8002bb0:	f108 0801 	add.w	r8, r8, #1
 8002bb4:	f018 0f03 	tst.w	r8, #3
 8002bb8:	f10e 0e08 	add.w	lr, lr, #8
 8002bbc:	f47f aed0 	bne.w	8002960 <_malloc_r+0x130>
 8002bc0:	e052      	b.n	8002c68 <_malloc_r+0x438>
 8002bc2:	4419      	add	r1, r3
 8002bc4:	461c      	mov	r4, r3
 8002bc6:	684a      	ldr	r2, [r1, #4]
 8002bc8:	68db      	ldr	r3, [r3, #12]
 8002bca:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002bce:	f042 0201 	orr.w	r2, r2, #1
 8002bd2:	604a      	str	r2, [r1, #4]
 8002bd4:	4630      	mov	r0, r6
 8002bd6:	60eb      	str	r3, [r5, #12]
 8002bd8:	609d      	str	r5, [r3, #8]
 8002bda:	f000 f933 	bl	8002e44 <__malloc_unlock>
 8002bde:	e64f      	b.n	8002880 <_malloc_r+0x50>
 8002be0:	0a5a      	lsrs	r2, r3, #9
 8002be2:	2a04      	cmp	r2, #4
 8002be4:	d935      	bls.n	8002c52 <_malloc_r+0x422>
 8002be6:	2a14      	cmp	r2, #20
 8002be8:	d86f      	bhi.n	8002cca <_malloc_r+0x49a>
 8002bea:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002bee:	00c9      	lsls	r1, r1, #3
 8002bf0:	325b      	adds	r2, #91	; 0x5b
 8002bf2:	eb07 0e01 	add.w	lr, r7, r1
 8002bf6:	5879      	ldr	r1, [r7, r1]
 8002bf8:	f1ae 0e08 	sub.w	lr, lr, #8
 8002bfc:	458e      	cmp	lr, r1
 8002bfe:	d058      	beq.n	8002cb2 <_malloc_r+0x482>
 8002c00:	684a      	ldr	r2, [r1, #4]
 8002c02:	f022 0203 	bic.w	r2, r2, #3
 8002c06:	429a      	cmp	r2, r3
 8002c08:	d902      	bls.n	8002c10 <_malloc_r+0x3e0>
 8002c0a:	6889      	ldr	r1, [r1, #8]
 8002c0c:	458e      	cmp	lr, r1
 8002c0e:	d1f7      	bne.n	8002c00 <_malloc_r+0x3d0>
 8002c10:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002c14:	687b      	ldr	r3, [r7, #4]
 8002c16:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002c1a:	f8ce 4008 	str.w	r4, [lr, #8]
 8002c1e:	60cc      	str	r4, [r1, #12]
 8002c20:	e68c      	b.n	800293c <_malloc_r+0x10c>
 8002c22:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002c26:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002c2a:	00c3      	lsls	r3, r0, #3
 8002c2c:	e645      	b.n	80028ba <_malloc_r+0x8a>
 8002c2e:	42bc      	cmp	r4, r7
 8002c30:	d072      	beq.n	8002d18 <_malloc_r+0x4e8>
 8002c32:	68bc      	ldr	r4, [r7, #8]
 8002c34:	6862      	ldr	r2, [r4, #4]
 8002c36:	f022 0203 	bic.w	r2, r2, #3
 8002c3a:	4295      	cmp	r5, r2
 8002c3c:	eba2 0305 	sub.w	r3, r2, r5
 8002c40:	d802      	bhi.n	8002c48 <_malloc_r+0x418>
 8002c42:	2b0f      	cmp	r3, #15
 8002c44:	f73f af51 	bgt.w	8002aea <_malloc_r+0x2ba>
 8002c48:	4630      	mov	r0, r6
 8002c4a:	f000 f8fb 	bl	8002e44 <__malloc_unlock>
 8002c4e:	2400      	movs	r4, #0
 8002c50:	e616      	b.n	8002880 <_malloc_r+0x50>
 8002c52:	099a      	lsrs	r2, r3, #6
 8002c54:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002c58:	00c9      	lsls	r1, r1, #3
 8002c5a:	3238      	adds	r2, #56	; 0x38
 8002c5c:	e7c9      	b.n	8002bf2 <_malloc_r+0x3c2>
 8002c5e:	f8d9 9000 	ldr.w	r9, [r9]
 8002c62:	4599      	cmp	r9, r3
 8002c64:	f040 8083 	bne.w	8002d6e <_malloc_r+0x53e>
 8002c68:	f010 0f03 	tst.w	r0, #3
 8002c6c:	f1a9 0308 	sub.w	r3, r9, #8
 8002c70:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002c74:	d1f3      	bne.n	8002c5e <_malloc_r+0x42e>
 8002c76:	687b      	ldr	r3, [r7, #4]
 8002c78:	ea23 0304 	bic.w	r3, r3, r4
 8002c7c:	607b      	str	r3, [r7, #4]
 8002c7e:	0064      	lsls	r4, r4, #1
 8002c80:	429c      	cmp	r4, r3
 8002c82:	f63f aeac 	bhi.w	80029de <_malloc_r+0x1ae>
 8002c86:	b91c      	cbnz	r4, 8002c90 <_malloc_r+0x460>
 8002c88:	e6a9      	b.n	80029de <_malloc_r+0x1ae>
 8002c8a:	0064      	lsls	r4, r4, #1
 8002c8c:	f108 0804 	add.w	r8, r8, #4
 8002c90:	421c      	tst	r4, r3
 8002c92:	d0fa      	beq.n	8002c8a <_malloc_r+0x45a>
 8002c94:	4640      	mov	r0, r8
 8002c96:	e65f      	b.n	8002958 <_malloc_r+0x128>
 8002c98:	f108 0810 	add.w	r8, r8, #16
 8002c9c:	e6bc      	b.n	8002a18 <_malloc_r+0x1e8>
 8002c9e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002ca2:	d826      	bhi.n	8002cf2 <_malloc_r+0x4c2>
 8002ca4:	0beb      	lsrs	r3, r5, #15
 8002ca6:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002caa:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002cae:	00c3      	lsls	r3, r0, #3
 8002cb0:	e603      	b.n	80028ba <_malloc_r+0x8a>
 8002cb2:	687b      	ldr	r3, [r7, #4]
 8002cb4:	1092      	asrs	r2, r2, #2
 8002cb6:	f04f 0801 	mov.w	r8, #1
 8002cba:	fa08 f202 	lsl.w	r2, r8, r2
 8002cbe:	4313      	orrs	r3, r2
 8002cc0:	607b      	str	r3, [r7, #4]
 8002cc2:	e7a8      	b.n	8002c16 <_malloc_r+0x3e6>
 8002cc4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002cc8:	e6ce      	b.n	8002a68 <_malloc_r+0x238>
 8002cca:	2a54      	cmp	r2, #84	; 0x54
 8002ccc:	d829      	bhi.n	8002d22 <_malloc_r+0x4f2>
 8002cce:	0b1a      	lsrs	r2, r3, #12
 8002cd0:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002cd4:	00c9      	lsls	r1, r1, #3
 8002cd6:	326e      	adds	r2, #110	; 0x6e
 8002cd8:	e78b      	b.n	8002bf2 <_malloc_r+0x3c2>
 8002cda:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002cde:	2900      	cmp	r1, #0
 8002ce0:	f47f aeae 	bne.w	8002a40 <_malloc_r+0x210>
 8002ce4:	eb09 0208 	add.w	r2, r9, r8
 8002ce8:	68b9      	ldr	r1, [r7, #8]
 8002cea:	f042 0201 	orr.w	r2, r2, #1
 8002cee:	604a      	str	r2, [r1, #4]
 8002cf0:	e6ec      	b.n	8002acc <_malloc_r+0x29c>
 8002cf2:	f240 5254 	movw	r2, #1364	; 0x554
 8002cf6:	4293      	cmp	r3, r2
 8002cf8:	d81c      	bhi.n	8002d34 <_malloc_r+0x504>
 8002cfa:	0cab      	lsrs	r3, r5, #18
 8002cfc:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002d00:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002d04:	00c3      	lsls	r3, r0, #3
 8002d06:	e5d8      	b.n	80028ba <_malloc_r+0x8a>
 8002d08:	2301      	movs	r3, #1
 8002d0a:	f8cb 3004 	str.w	r3, [fp, #4]
 8002d0e:	e79b      	b.n	8002c48 <_malloc_r+0x418>
 8002d10:	2101      	movs	r1, #1
 8002d12:	f04f 0800 	mov.w	r8, #0
 8002d16:	e6ba      	b.n	8002a8e <_malloc_r+0x25e>
 8002d18:	4a16      	ldr	r2, [pc, #88]	; (8002d74 <_malloc_r+0x544>)
 8002d1a:	6813      	ldr	r3, [r2, #0]
 8002d1c:	4443      	add	r3, r8
 8002d1e:	6013      	str	r3, [r2, #0]
 8002d20:	e68e      	b.n	8002a40 <_malloc_r+0x210>
 8002d22:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002d26:	d814      	bhi.n	8002d52 <_malloc_r+0x522>
 8002d28:	0bda      	lsrs	r2, r3, #15
 8002d2a:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002d2e:	00c9      	lsls	r1, r1, #3
 8002d30:	3277      	adds	r2, #119	; 0x77
 8002d32:	e75e      	b.n	8002bf2 <_malloc_r+0x3c2>
 8002d34:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002d38:	207f      	movs	r0, #127	; 0x7f
 8002d3a:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002d3e:	e5bc      	b.n	80028ba <_malloc_r+0x8a>
 8002d40:	f104 0108 	add.w	r1, r4, #8
 8002d44:	4630      	mov	r0, r6
 8002d46:	9201      	str	r2, [sp, #4]
 8002d48:	f003 f8de 	bl	8005f08 <_free_r>
 8002d4c:	9a01      	ldr	r2, [sp, #4]
 8002d4e:	6813      	ldr	r3, [r2, #0]
 8002d50:	e6bc      	b.n	8002acc <_malloc_r+0x29c>
 8002d52:	f240 5154 	movw	r1, #1364	; 0x554
 8002d56:	428a      	cmp	r2, r1
 8002d58:	d805      	bhi.n	8002d66 <_malloc_r+0x536>
 8002d5a:	0c9a      	lsrs	r2, r3, #18
 8002d5c:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002d60:	00c9      	lsls	r1, r1, #3
 8002d62:	327c      	adds	r2, #124	; 0x7c
 8002d64:	e745      	b.n	8002bf2 <_malloc_r+0x3c2>
 8002d66:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002d6a:	227e      	movs	r2, #126	; 0x7e
 8002d6c:	e741      	b.n	8002bf2 <_malloc_r+0x3c2>
 8002d6e:	687b      	ldr	r3, [r7, #4]
 8002d70:	e785      	b.n	8002c7e <_malloc_r+0x44e>
 8002d72:	bf00      	nop
 8002d74:	20000a80 	.word	0x20000a80

08002d78 <__ascii_mbtowc>:
 8002d78:	b082      	sub	sp, #8
 8002d7a:	b149      	cbz	r1, 8002d90 <__ascii_mbtowc+0x18>
 8002d7c:	b15a      	cbz	r2, 8002d96 <__ascii_mbtowc+0x1e>
 8002d7e:	b16b      	cbz	r3, 8002d9c <__ascii_mbtowc+0x24>
 8002d80:	7813      	ldrb	r3, [r2, #0]
 8002d82:	600b      	str	r3, [r1, #0]
 8002d84:	7812      	ldrb	r2, [r2, #0]
 8002d86:	1c10      	adds	r0, r2, #0
 8002d88:	bf18      	it	ne
 8002d8a:	2001      	movne	r0, #1
 8002d8c:	b002      	add	sp, #8
 8002d8e:	4770      	bx	lr
 8002d90:	a901      	add	r1, sp, #4
 8002d92:	2a00      	cmp	r2, #0
 8002d94:	d1f3      	bne.n	8002d7e <__ascii_mbtowc+0x6>
 8002d96:	4610      	mov	r0, r2
 8002d98:	b002      	add	sp, #8
 8002d9a:	4770      	bx	lr
 8002d9c:	f06f 0001 	mvn.w	r0, #1
 8002da0:	e7f4      	b.n	8002d8c <__ascii_mbtowc+0x14>
 8002da2:	bf00      	nop

08002da4 <memset>:
 8002da4:	b4f0      	push	{r4, r5, r6, r7}
 8002da6:	0786      	lsls	r6, r0, #30
 8002da8:	d043      	beq.n	8002e32 <memset+0x8e>
 8002daa:	1e54      	subs	r4, r2, #1
 8002dac:	2a00      	cmp	r2, #0
 8002dae:	d03e      	beq.n	8002e2e <memset+0x8a>
 8002db0:	b2ca      	uxtb	r2, r1
 8002db2:	4603      	mov	r3, r0
 8002db4:	e002      	b.n	8002dbc <memset+0x18>
 8002db6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002dba:	d338      	bcc.n	8002e2e <memset+0x8a>
 8002dbc:	f803 2b01 	strb.w	r2, [r3], #1
 8002dc0:	079d      	lsls	r5, r3, #30
 8002dc2:	d1f8      	bne.n	8002db6 <memset+0x12>
 8002dc4:	2c03      	cmp	r4, #3
 8002dc6:	d92b      	bls.n	8002e20 <memset+0x7c>
 8002dc8:	b2cd      	uxtb	r5, r1
 8002dca:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002dce:	2c0f      	cmp	r4, #15
 8002dd0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002dd4:	d916      	bls.n	8002e04 <memset+0x60>
 8002dd6:	f1a4 0710 	sub.w	r7, r4, #16
 8002dda:	093f      	lsrs	r7, r7, #4
 8002ddc:	f103 0620 	add.w	r6, r3, #32
 8002de0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002de4:	f103 0210 	add.w	r2, r3, #16
 8002de8:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002dec:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002df0:	3210      	adds	r2, #16
 8002df2:	42b2      	cmp	r2, r6
 8002df4:	d1f8      	bne.n	8002de8 <memset+0x44>
 8002df6:	f004 040f 	and.w	r4, r4, #15
 8002dfa:	3701      	adds	r7, #1
 8002dfc:	2c03      	cmp	r4, #3
 8002dfe:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002e02:	d90d      	bls.n	8002e20 <memset+0x7c>
 8002e04:	461e      	mov	r6, r3
 8002e06:	4622      	mov	r2, r4
 8002e08:	3a04      	subs	r2, #4
 8002e0a:	2a03      	cmp	r2, #3
 8002e0c:	f846 5b04 	str.w	r5, [r6], #4
 8002e10:	d8fa      	bhi.n	8002e08 <memset+0x64>
 8002e12:	1f22      	subs	r2, r4, #4
 8002e14:	f022 0203 	bic.w	r2, r2, #3
 8002e18:	3204      	adds	r2, #4
 8002e1a:	4413      	add	r3, r2
 8002e1c:	f004 0403 	and.w	r4, r4, #3
 8002e20:	b12c      	cbz	r4, 8002e2e <memset+0x8a>
 8002e22:	b2c9      	uxtb	r1, r1
 8002e24:	441c      	add	r4, r3
 8002e26:	f803 1b01 	strb.w	r1, [r3], #1
 8002e2a:	429c      	cmp	r4, r3
 8002e2c:	d1fb      	bne.n	8002e26 <memset+0x82>
 8002e2e:	bcf0      	pop	{r4, r5, r6, r7}
 8002e30:	4770      	bx	lr
 8002e32:	4614      	mov	r4, r2
 8002e34:	4603      	mov	r3, r0
 8002e36:	e7c5      	b.n	8002dc4 <memset+0x20>

08002e38 <__malloc_lock>:
 8002e38:	4801      	ldr	r0, [pc, #4]	; (8002e40 <__malloc_lock+0x8>)
 8002e3a:	f003 bb13 	b.w	8006464 <__retarget_lock_acquire_recursive>
 8002e3e:	bf00      	nop
 8002e40:	20000b14 	.word	0x20000b14

08002e44 <__malloc_unlock>:
 8002e44:	4801      	ldr	r0, [pc, #4]	; (8002e4c <__malloc_unlock+0x8>)
 8002e46:	f003 bb0f 	b.w	8006468 <__retarget_lock_release_recursive>
 8002e4a:	bf00      	nop
 8002e4c:	20000b14 	.word	0x20000b14

08002e50 <printf>:
 8002e50:	b40f      	push	{r0, r1, r2, r3}
 8002e52:	b500      	push	{lr}
 8002e54:	4907      	ldr	r1, [pc, #28]	; (8002e74 <printf+0x24>)
 8002e56:	b083      	sub	sp, #12
 8002e58:	ab04      	add	r3, sp, #16
 8002e5a:	6808      	ldr	r0, [r1, #0]
 8002e5c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002e60:	6881      	ldr	r1, [r0, #8]
 8002e62:	9301      	str	r3, [sp, #4]
 8002e64:	f000 f900 	bl	8003068 <_vfprintf_r>
 8002e68:	b003      	add	sp, #12
 8002e6a:	f85d eb04 	ldr.w	lr, [sp], #4
 8002e6e:	b004      	add	sp, #16
 8002e70:	4770      	bx	lr
 8002e72:	bf00      	nop
 8002e74:	20000018 	.word	0x20000018

08002e78 <_puts_r>:
 8002e78:	b570      	push	{r4, r5, r6, lr}
 8002e7a:	4605      	mov	r5, r0
 8002e7c:	b088      	sub	sp, #32
 8002e7e:	4608      	mov	r0, r1
 8002e80:	460c      	mov	r4, r1
 8002e82:	f7fd ffdd 	bl	8000e40 <strlen>
 8002e86:	4a22      	ldr	r2, [pc, #136]	; (8002f10 <_puts_r+0x98>)
 8002e88:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002e8a:	9404      	str	r4, [sp, #16]
 8002e8c:	2601      	movs	r6, #1
 8002e8e:	1c44      	adds	r4, r0, #1
 8002e90:	a904      	add	r1, sp, #16
 8002e92:	9206      	str	r2, [sp, #24]
 8002e94:	2202      	movs	r2, #2
 8002e96:	9403      	str	r4, [sp, #12]
 8002e98:	9005      	str	r0, [sp, #20]
 8002e9a:	68ac      	ldr	r4, [r5, #8]
 8002e9c:	9607      	str	r6, [sp, #28]
 8002e9e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002ea2:	b31b      	cbz	r3, 8002eec <_puts_r+0x74>
 8002ea4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002ea6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002eaa:	07ce      	lsls	r6, r1, #31
 8002eac:	b29a      	uxth	r2, r3
 8002eae:	d401      	bmi.n	8002eb4 <_puts_r+0x3c>
 8002eb0:	0590      	lsls	r0, r2, #22
 8002eb2:	d525      	bpl.n	8002f00 <_puts_r+0x88>
 8002eb4:	0491      	lsls	r1, r2, #18
 8002eb6:	d406      	bmi.n	8002ec6 <_puts_r+0x4e>
 8002eb8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002eba:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002ebe:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002ec2:	81a3      	strh	r3, [r4, #12]
 8002ec4:	6662      	str	r2, [r4, #100]	; 0x64
 8002ec6:	4628      	mov	r0, r5
 8002ec8:	aa01      	add	r2, sp, #4
 8002eca:	4621      	mov	r1, r4
 8002ecc:	f003 f910 	bl	80060f0 <__sfvwrite_r>
 8002ed0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002ed2:	2800      	cmp	r0, #0
 8002ed4:	bf0c      	ite	eq
 8002ed6:	250a      	moveq	r5, #10
 8002ed8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002edc:	07da      	lsls	r2, r3, #31
 8002ede:	d402      	bmi.n	8002ee6 <_puts_r+0x6e>
 8002ee0:	89a3      	ldrh	r3, [r4, #12]
 8002ee2:	059b      	lsls	r3, r3, #22
 8002ee4:	d506      	bpl.n	8002ef4 <_puts_r+0x7c>
 8002ee6:	4628      	mov	r0, r5
 8002ee8:	b008      	add	sp, #32
 8002eea:	bd70      	pop	{r4, r5, r6, pc}
 8002eec:	4628      	mov	r0, r5
 8002eee:	f002 ff69 	bl	8005dc4 <__sinit>
 8002ef2:	e7d7      	b.n	8002ea4 <_puts_r+0x2c>
 8002ef4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002ef6:	f003 fab7 	bl	8006468 <__retarget_lock_release_recursive>
 8002efa:	4628      	mov	r0, r5
 8002efc:	b008      	add	sp, #32
 8002efe:	bd70      	pop	{r4, r5, r6, pc}
 8002f00:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002f02:	f003 faaf 	bl	8006464 <__retarget_lock_acquire_recursive>
 8002f06:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002f0a:	b29a      	uxth	r2, r3
 8002f0c:	e7d2      	b.n	8002eb4 <_puts_r+0x3c>
 8002f0e:	bf00      	nop
 8002f10:	08007784 	.word	0x08007784

08002f14 <puts>:
 8002f14:	4b02      	ldr	r3, [pc, #8]	; (8002f20 <puts+0xc>)
 8002f16:	4601      	mov	r1, r0
 8002f18:	6818      	ldr	r0, [r3, #0]
 8002f1a:	f7ff bfad 	b.w	8002e78 <_puts_r>
 8002f1e:	bf00      	nop
 8002f20:	20000018 	.word	0x20000018

08002f24 <_sbrk_r>:
 8002f24:	b538      	push	{r3, r4, r5, lr}
 8002f26:	4c07      	ldr	r4, [pc, #28]	; (8002f44 <_sbrk_r+0x20>)
 8002f28:	2300      	movs	r3, #0
 8002f2a:	4605      	mov	r5, r0
 8002f2c:	4608      	mov	r0, r1
 8002f2e:	6023      	str	r3, [r4, #0]
 8002f30:	f7ff fba2 	bl	8002678 <_sbrk>
 8002f34:	1c43      	adds	r3, r0, #1
 8002f36:	d000      	beq.n	8002f3a <_sbrk_r+0x16>
 8002f38:	bd38      	pop	{r3, r4, r5, pc}
 8002f3a:	6823      	ldr	r3, [r4, #0]
 8002f3c:	2b00      	cmp	r3, #0
 8002f3e:	d0fb      	beq.n	8002f38 <_sbrk_r+0x14>
 8002f40:	602b      	str	r3, [r5, #0]
 8002f42:	bd38      	pop	{r3, r4, r5, pc}
 8002f44:	20000b28 	.word	0x20000b28

08002f48 <strcpy>:
 8002f48:	ea80 0201 	eor.w	r2, r0, r1
 8002f4c:	4684      	mov	ip, r0
 8002f4e:	f012 0f03 	tst.w	r2, #3
 8002f52:	d14f      	bne.n	8002ff4 <strcpy+0xac>
 8002f54:	f011 0f03 	tst.w	r1, #3
 8002f58:	d132      	bne.n	8002fc0 <strcpy+0x78>
 8002f5a:	f84d 4d04 	str.w	r4, [sp, #-4]!
 8002f5e:	f011 0f04 	tst.w	r1, #4
 8002f62:	f851 3b04 	ldr.w	r3, [r1], #4
 8002f66:	d00b      	beq.n	8002f80 <strcpy+0x38>
 8002f68:	f1a3 3201 	sub.w	r2, r3, #16843009	; 0x1010101
 8002f6c:	439a      	bics	r2, r3
 8002f6e:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002f72:	bf04      	itt	eq
 8002f74:	f84c 3b04 	streq.w	r3, [ip], #4
 8002f78:	f851 3b04 	ldreq.w	r3, [r1], #4
 8002f7c:	d116      	bne.n	8002fac <strcpy+0x64>
 8002f7e:	bf00      	nop
 8002f80:	f851 4b04 	ldr.w	r4, [r1], #4
 8002f84:	f1a3 3201 	sub.w	r2, r3, #16843009	; 0x1010101
 8002f88:	439a      	bics	r2, r3
 8002f8a:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002f8e:	f1a4 3201 	sub.w	r2, r4, #16843009	; 0x1010101
 8002f92:	d10b      	bne.n	8002fac <strcpy+0x64>
 8002f94:	f84c 3b04 	str.w	r3, [ip], #4
 8002f98:	43a2      	bics	r2, r4
 8002f9a:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002f9e:	bf04      	itt	eq
 8002fa0:	f851 3b04 	ldreq.w	r3, [r1], #4
 8002fa4:	f84c 4b04 	streq.w	r4, [ip], #4
 8002fa8:	d0ea      	beq.n	8002f80 <strcpy+0x38>
 8002faa:	4623      	mov	r3, r4
 8002fac:	f80c 3b01 	strb.w	r3, [ip], #1
 8002fb0:	f013 0fff 	tst.w	r3, #255	; 0xff
 8002fb4:	ea4f 2333 	mov.w	r3, r3, ror #8
 8002fb8:	d1f8      	bne.n	8002fac <strcpy+0x64>
 8002fba:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002fbe:	4770      	bx	lr
 8002fc0:	f011 0f01 	tst.w	r1, #1
 8002fc4:	d006      	beq.n	8002fd4 <strcpy+0x8c>
 8002fc6:	f811 2b01 	ldrb.w	r2, [r1], #1
 8002fca:	f80c 2b01 	strb.w	r2, [ip], #1
 8002fce:	2a00      	cmp	r2, #0
 8002fd0:	bf08      	it	eq
 8002fd2:	4770      	bxeq	lr
 8002fd4:	f011 0f02 	tst.w	r1, #2
 8002fd8:	d0bf      	beq.n	8002f5a <strcpy+0x12>
 8002fda:	f831 2b02 	ldrh.w	r2, [r1], #2
 8002fde:	f012 0fff 	tst.w	r2, #255	; 0xff
 8002fe2:	bf16      	itet	ne
 8002fe4:	f82c 2b02 	strhne.w	r2, [ip], #2
 8002fe8:	f88c 2000 	strbeq.w	r2, [ip]
 8002fec:	f412 4f7f 	tstne.w	r2, #65280	; 0xff00
 8002ff0:	d1b3      	bne.n	8002f5a <strcpy+0x12>
 8002ff2:	4770      	bx	lr
 8002ff4:	f811 2b01 	ldrb.w	r2, [r1], #1
 8002ff8:	f80c 2b01 	strb.w	r2, [ip], #1
 8002ffc:	2a00      	cmp	r2, #0
 8002ffe:	d1f9      	bne.n	8002ff4 <strcpy+0xac>
 8003000:	4770      	bx	lr
 8003002:	bf00      	nop

08003004 <strncpy>:
 8003004:	ea40 0301 	orr.w	r3, r0, r1
 8003008:	079b      	lsls	r3, r3, #30
 800300a:	b470      	push	{r4, r5, r6}
 800300c:	d12a      	bne.n	8003064 <strncpy+0x60>
 800300e:	2a03      	cmp	r2, #3
 8003010:	d928      	bls.n	8003064 <strncpy+0x60>
 8003012:	460c      	mov	r4, r1
 8003014:	4603      	mov	r3, r0
 8003016:	4621      	mov	r1, r4
 8003018:	f854 6b04 	ldr.w	r6, [r4], #4
 800301c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8003020:	ea25 0506 	bic.w	r5, r5, r6
 8003024:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8003028:	d106      	bne.n	8003038 <strncpy+0x34>
 800302a:	3a04      	subs	r2, #4
 800302c:	2a03      	cmp	r2, #3
 800302e:	f843 6b04 	str.w	r6, [r3], #4
 8003032:	4621      	mov	r1, r4
 8003034:	d8ef      	bhi.n	8003016 <strncpy+0x12>
 8003036:	b19a      	cbz	r2, 8003060 <strncpy+0x5c>
 8003038:	780c      	ldrb	r4, [r1, #0]
 800303a:	701c      	strb	r4, [r3, #0]
 800303c:	3a01      	subs	r2, #1
 800303e:	3301      	adds	r3, #1
 8003040:	b13c      	cbz	r4, 8003052 <strncpy+0x4e>
 8003042:	b16a      	cbz	r2, 8003060 <strncpy+0x5c>
 8003044:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8003048:	f803 4b01 	strb.w	r4, [r3], #1
 800304c:	3a01      	subs	r2, #1
 800304e:	2c00      	cmp	r4, #0
 8003050:	d1f7      	bne.n	8003042 <strncpy+0x3e>
 8003052:	b12a      	cbz	r2, 8003060 <strncpy+0x5c>
 8003054:	441a      	add	r2, r3
 8003056:	2100      	movs	r1, #0
 8003058:	f803 1b01 	strb.w	r1, [r3], #1
 800305c:	4293      	cmp	r3, r2
 800305e:	d1fb      	bne.n	8003058 <strncpy+0x54>
 8003060:	bc70      	pop	{r4, r5, r6}
 8003062:	4770      	bx	lr
 8003064:	4603      	mov	r3, r0
 8003066:	e7e6      	b.n	8003036 <strncpy+0x32>

08003068 <_vfprintf_r>:
 8003068:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800306c:	b0d7      	sub	sp, #348	; 0x15c
 800306e:	461c      	mov	r4, r3
 8003070:	4689      	mov	r9, r1
 8003072:	4617      	mov	r7, r2
 8003074:	4605      	mov	r5, r0
 8003076:	9003      	str	r0, [sp, #12]
 8003078:	f003 f9e2 	bl	8006440 <_localeconv_r>
 800307c:	6803      	ldr	r3, [r0, #0]
 800307e:	9316      	str	r3, [sp, #88]	; 0x58
 8003080:	4618      	mov	r0, r3
 8003082:	f7fd fedd 	bl	8000e40 <strlen>
 8003086:	9408      	str	r4, [sp, #32]
 8003088:	9015      	str	r0, [sp, #84]	; 0x54
 800308a:	b11d      	cbz	r5, 8003094 <_vfprintf_r+0x2c>
 800308c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800308e:	2b00      	cmp	r3, #0
 8003090:	f000 8107 	beq.w	80032a2 <_vfprintf_r+0x23a>
 8003094:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003098:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800309c:	07c8      	lsls	r0, r1, #31
 800309e:	b293      	uxth	r3, r2
 80030a0:	d402      	bmi.n	80030a8 <_vfprintf_r+0x40>
 80030a2:	0599      	lsls	r1, r3, #22
 80030a4:	f140 811f 	bpl.w	80032e6 <_vfprintf_r+0x27e>
 80030a8:	049e      	lsls	r6, r3, #18
 80030aa:	d40a      	bmi.n	80030c2 <_vfprintf_r+0x5a>
 80030ac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80030b0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80030b4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80030b8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80030bc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80030c0:	b29b      	uxth	r3, r3
 80030c2:	071d      	lsls	r5, r3, #28
 80030c4:	f140 80b2 	bpl.w	800322c <_vfprintf_r+0x1c4>
 80030c8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80030cc:	2a00      	cmp	r2, #0
 80030ce:	f000 80ad 	beq.w	800322c <_vfprintf_r+0x1c4>
 80030d2:	f003 021a 	and.w	r2, r3, #26
 80030d6:	2a0a      	cmp	r2, #10
 80030d8:	f000 80c9 	beq.w	800326e <_vfprintf_r+0x206>
 80030dc:	2300      	movs	r3, #0
 80030de:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80032f8 <_vfprintf_r+0x290>
 80030e2:	9310      	str	r3, [sp, #64]	; 0x40
 80030e4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80030e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80030ea:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80030ee:	931b      	str	r3, [sp, #108]	; 0x6c
 80030f0:	9318      	str	r3, [sp, #96]	; 0x60
 80030f2:	9305      	str	r3, [sp, #20]
 80030f4:	ab2d      	add	r3, sp, #180	; 0xb4
 80030f6:	932a      	str	r3, [sp, #168]	; 0xa8
 80030f8:	469b      	mov	fp, r3
 80030fa:	783b      	ldrb	r3, [r7, #0]
 80030fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8003100:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003104:	2b00      	cmp	r3, #0
 8003106:	f000 8259 	beq.w	80035bc <_vfprintf_r+0x554>
 800310a:	2b25      	cmp	r3, #37	; 0x25
 800310c:	463c      	mov	r4, r7
 800310e:	d102      	bne.n	8003116 <_vfprintf_r+0xae>
 8003110:	e01d      	b.n	800314e <_vfprintf_r+0xe6>
 8003112:	2b25      	cmp	r3, #37	; 0x25
 8003114:	d003      	beq.n	800311e <_vfprintf_r+0xb6>
 8003116:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800311a:	2b00      	cmp	r3, #0
 800311c:	d1f9      	bne.n	8003112 <_vfprintf_r+0xaa>
 800311e:	1be5      	subs	r5, r4, r7
 8003120:	b18d      	cbz	r5, 8003146 <_vfprintf_r+0xde>
 8003122:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8003126:	3301      	adds	r3, #1
 8003128:	442a      	add	r2, r5
 800312a:	2b07      	cmp	r3, #7
 800312c:	f8cb 7000 	str.w	r7, [fp]
 8003130:	f8cb 5004 	str.w	r5, [fp, #4]
 8003134:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003138:	f300 80ca 	bgt.w	80032d0 <_vfprintf_r+0x268>
 800313c:	f10b 0b08 	add.w	fp, fp, #8
 8003140:	9b05      	ldr	r3, [sp, #20]
 8003142:	442b      	add	r3, r5
 8003144:	9305      	str	r3, [sp, #20]
 8003146:	7823      	ldrb	r3, [r4, #0]
 8003148:	2b00      	cmp	r3, #0
 800314a:	f000 8237 	beq.w	80035bc <_vfprintf_r+0x554>
 800314e:	2300      	movs	r3, #0
 8003150:	7866      	ldrb	r6, [r4, #1]
 8003152:	9306      	str	r3, [sp, #24]
 8003154:	4698      	mov	r8, r3
 8003156:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800315a:	f104 0a01 	add.w	sl, r4, #1
 800315e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003162:	252b      	movs	r5, #43	; 0x2b
 8003164:	f10a 0a01 	add.w	sl, sl, #1
 8003168:	f1a6 0320 	sub.w	r3, r6, #32
 800316c:	2b5a      	cmp	r3, #90	; 0x5a
 800316e:	f200 842a 	bhi.w	80039c6 <_vfprintf_r+0x95e>
 8003172:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003176:	03aa      	.short	0x03aa
 8003178:	04280428 	.word	0x04280428
 800317c:	0428029c 	.word	0x0428029c
 8003180:	04280428 	.word	0x04280428
 8003184:	042802a7 	.word	0x042802a7
 8003188:	02c60428 	.word	0x02c60428
 800318c:	042802d2 	.word	0x042802d2
 8003190:	02dc02d7 	.word	0x02dc02d7
 8003194:	02f60428 	.word	0x02f60428
 8003198:	026d026d 	.word	0x026d026d
 800319c:	026d026d 	.word	0x026d026d
 80031a0:	026d026d 	.word	0x026d026d
 80031a4:	026d026d 	.word	0x026d026d
 80031a8:	0428026d 	.word	0x0428026d
 80031ac:	04280428 	.word	0x04280428
 80031b0:	04280428 	.word	0x04280428
 80031b4:	04280428 	.word	0x04280428
 80031b8:	042802fb 	.word	0x042802fb
 80031bc:	03f3033c 	.word	0x03f3033c
 80031c0:	02fb02fb 	.word	0x02fb02fb
 80031c4:	042802fb 	.word	0x042802fb
 80031c8:	04280428 	.word	0x04280428
 80031cc:	03ee0428 	.word	0x03ee0428
 80031d0:	04280428 	.word	0x04280428
 80031d4:	0428009a 	.word	0x0428009a
 80031d8:	04280428 	.word	0x04280428
 80031dc:	04280350 	.word	0x04280350
 80031e0:	04280379 	.word	0x04280379
 80031e4:	03900428 	.word	0x03900428
 80031e8:	04280428 	.word	0x04280428
 80031ec:	04280428 	.word	0x04280428
 80031f0:	04280428 	.word	0x04280428
 80031f4:	04280428 	.word	0x04280428
 80031f8:	042802fb 	.word	0x042802fb
 80031fc:	00c5033c 	.word	0x00c5033c
 8003200:	02fb02fb 	.word	0x02fb02fb
 8003204:	03d102fb 	.word	0x03d102fb
 8003208:	007000c5 	.word	0x007000c5
 800320c:	03b50428 	.word	0x03b50428
 8003210:	03c20428 	.word	0x03c20428
 8003214:	03de009c 	.word	0x03de009c
 8003218:	04280070 	.word	0x04280070
 800321c:	00720350 	.word	0x00720350
 8003220:	0428022c 	.word	0x0428022c
 8003224:	027c0428 	.word	0x027c0428
 8003228:	00720428 	.word	0x00720428
 800322c:	4649      	mov	r1, r9
 800322e:	9803      	ldr	r0, [sp, #12]
 8003230:	f001 fca8 	bl	8004b84 <__swsetup_r>
 8003234:	b1a0      	cbz	r0, 8003260 <_vfprintf_r+0x1f8>
 8003236:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800323a:	07d8      	lsls	r0, r3, #31
 800323c:	d404      	bmi.n	8003248 <_vfprintf_r+0x1e0>
 800323e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003242:	0599      	lsls	r1, r3, #22
 8003244:	f140 83b7 	bpl.w	80039b6 <_vfprintf_r+0x94e>
 8003248:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800324c:	9305      	str	r3, [sp, #20]
 800324e:	9805      	ldr	r0, [sp, #20]
 8003250:	b057      	add	sp, #348	; 0x15c
 8003252:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003256:	f048 0820 	orr.w	r8, r8, #32
 800325a:	f89a 6000 	ldrb.w	r6, [sl]
 800325e:	e781      	b.n	8003164 <_vfprintf_r+0xfc>
 8003260:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003264:	f003 021a 	and.w	r2, r3, #26
 8003268:	2a0a      	cmp	r2, #10
 800326a:	f47f af37 	bne.w	80030dc <_vfprintf_r+0x74>
 800326e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003272:	2a00      	cmp	r2, #0
 8003274:	f6ff af32 	blt.w	80030dc <_vfprintf_r+0x74>
 8003278:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800327c:	07d2      	lsls	r2, r2, #31
 800327e:	d405      	bmi.n	800328c <_vfprintf_r+0x224>
 8003280:	059b      	lsls	r3, r3, #22
 8003282:	d403      	bmi.n	800328c <_vfprintf_r+0x224>
 8003284:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003288:	f003 f8ee 	bl	8006468 <__retarget_lock_release_recursive>
 800328c:	4623      	mov	r3, r4
 800328e:	463a      	mov	r2, r7
 8003290:	4649      	mov	r1, r9
 8003292:	9803      	ldr	r0, [sp, #12]
 8003294:	f001 fc26 	bl	8004ae4 <__sbprintf>
 8003298:	9005      	str	r0, [sp, #20]
 800329a:	9805      	ldr	r0, [sp, #20]
 800329c:	b057      	add	sp, #348	; 0x15c
 800329e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80032a2:	9803      	ldr	r0, [sp, #12]
 80032a4:	f002 fd8e 	bl	8005dc4 <__sinit>
 80032a8:	e6f4      	b.n	8003094 <_vfprintf_r+0x2c>
 80032aa:	f048 0810 	orr.w	r8, r8, #16
 80032ae:	f018 0f20 	tst.w	r8, #32
 80032b2:	f000 836c 	beq.w	800398e <_vfprintf_r+0x926>
 80032b6:	9c08      	ldr	r4, [sp, #32]
 80032b8:	3407      	adds	r4, #7
 80032ba:	f024 0307 	bic.w	r3, r4, #7
 80032be:	e9d3 4500 	ldrd	r4, r5, [r3]
 80032c2:	f103 0208 	add.w	r2, r3, #8
 80032c6:	9208      	str	r2, [sp, #32]
 80032c8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80032cc:	2200      	movs	r2, #0
 80032ce:	e18c      	b.n	80035ea <_vfprintf_r+0x582>
 80032d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d2:	9907      	ldr	r1, [sp, #28]
 80032d4:	9803      	ldr	r0, [sp, #12]
 80032d6:	f003 ff11 	bl	80070fc <__sprint_r>
 80032da:	2800      	cmp	r0, #0
 80032dc:	f041 8376 	bne.w	80049cc <_vfprintf_r+0x1964>
 80032e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032e4:	e72c      	b.n	8003140 <_vfprintf_r+0xd8>
 80032e6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032ea:	f003 f8bb 	bl	8006464 <__retarget_lock_acquire_recursive>
 80032ee:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80032f2:	b293      	uxth	r3, r2
 80032f4:	e6d8      	b.n	80030a8 <_vfprintf_r+0x40>
 80032f6:	bf00      	nop
	...
 8003300:	4643      	mov	r3, r8
 8003302:	069f      	lsls	r7, r3, #26
 8003304:	f140 832f 	bpl.w	8003966 <_vfprintf_r+0x8fe>
 8003308:	9c08      	ldr	r4, [sp, #32]
 800330a:	3407      	adds	r4, #7
 800330c:	f024 0407 	bic.w	r4, r4, #7
 8003310:	e9d4 0100 	ldrd	r0, r1, [r4]
 8003314:	f104 0208 	add.w	r2, r4, #8
 8003318:	9208      	str	r2, [sp, #32]
 800331a:	4604      	mov	r4, r0
 800331c:	460d      	mov	r5, r1
 800331e:	2800      	cmp	r0, #0
 8003320:	f171 0200 	sbcs.w	r2, r1, #0
 8003324:	da05      	bge.n	8003332 <_vfprintf_r+0x2ca>
 8003326:	222d      	movs	r2, #45	; 0x2d
 8003328:	4264      	negs	r4, r4
 800332a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800332e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003332:	aa56      	add	r2, sp, #344	; 0x158
 8003334:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003338:	9204      	str	r2, [sp, #16]
 800333a:	f000 84b2 	beq.w	8003ca2 <_vfprintf_r+0xc3a>
 800333e:	2201      	movs	r2, #1
 8003340:	ea54 0105 	orrs.w	r1, r4, r5
 8003344:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003348:	f040 8159 	bne.w	80035fe <_vfprintf_r+0x596>
 800334c:	f1b9 0f00 	cmp.w	r9, #0
 8003350:	f040 8619 	bne.w	8003f86 <_vfprintf_r+0xf1e>
 8003354:	2a00      	cmp	r2, #0
 8003356:	f040 8508 	bne.w	8003d6a <_vfprintf_r+0xd02>
 800335a:	f013 0301 	ands.w	r3, r3, #1
 800335e:	af56      	add	r7, sp, #344	; 0x158
 8003360:	9309      	str	r3, [sp, #36]	; 0x24
 8003362:	d002      	beq.n	800336a <_vfprintf_r+0x302>
 8003364:	2330      	movs	r3, #48	; 0x30
 8003366:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800336a:	2300      	movs	r3, #0
 800336c:	930a      	str	r3, [sp, #40]	; 0x28
 800336e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003370:	9314      	str	r3, [sp, #80]	; 0x50
 8003372:	9311      	str	r3, [sp, #68]	; 0x44
 8003374:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003376:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800337a:	454b      	cmp	r3, r9
 800337c:	bfb8      	it	lt
 800337e:	464b      	movlt	r3, r9
 8003380:	9304      	str	r3, [sp, #16]
 8003382:	b112      	cbz	r2, 800338a <_vfprintf_r+0x322>
 8003384:	9b04      	ldr	r3, [sp, #16]
 8003386:	3301      	adds	r3, #1
 8003388:	9304      	str	r3, [sp, #16]
 800338a:	f018 0302 	ands.w	r3, r8, #2
 800338e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003390:	d002      	beq.n	8003398 <_vfprintf_r+0x330>
 8003392:	9b04      	ldr	r3, [sp, #16]
 8003394:	3302      	adds	r3, #2
 8003396:	9304      	str	r3, [sp, #16]
 8003398:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800339c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800339e:	930e      	str	r3, [sp, #56]	; 0x38
 80033a0:	d13f      	bne.n	8003422 <_vfprintf_r+0x3ba>
 80033a2:	9b06      	ldr	r3, [sp, #24]
 80033a4:	9904      	ldr	r1, [sp, #16]
 80033a6:	1a5d      	subs	r5, r3, r1
 80033a8:	2d00      	cmp	r5, #0
 80033aa:	dd3a      	ble.n	8003422 <_vfprintf_r+0x3ba>
 80033ac:	2d10      	cmp	r5, #16
 80033ae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033b0:	dd29      	ble.n	8003406 <_vfprintf_r+0x39e>
 80033b2:	4659      	mov	r1, fp
 80033b4:	4620      	mov	r0, r4
 80033b6:	9620      	str	r6, [sp, #128]	; 0x80
 80033b8:	2310      	movs	r3, #16
 80033ba:	9c03      	ldr	r4, [sp, #12]
 80033bc:	9e07      	ldr	r6, [sp, #28]
 80033be:	46bb      	mov	fp, r7
 80033c0:	e004      	b.n	80033cc <_vfprintf_r+0x364>
 80033c2:	3d10      	subs	r5, #16
 80033c4:	2d10      	cmp	r5, #16
 80033c6:	f101 0108 	add.w	r1, r1, #8
 80033ca:	dd18      	ble.n	80033fe <_vfprintf_r+0x396>
 80033cc:	3201      	adds	r2, #1
 80033ce:	4fba      	ldr	r7, [pc, #744]	; (80036b8 <_vfprintf_r+0x650>)
 80033d0:	3010      	adds	r0, #16
 80033d2:	2a07      	cmp	r2, #7
 80033d4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80033d8:	e9c1 7300 	strd	r7, r3, [r1]
 80033dc:	ddf1      	ble.n	80033c2 <_vfprintf_r+0x35a>
 80033de:	aa2a      	add	r2, sp, #168	; 0xa8
 80033e0:	4631      	mov	r1, r6
 80033e2:	4620      	mov	r0, r4
 80033e4:	930c      	str	r3, [sp, #48]	; 0x30
 80033e6:	f003 fe89 	bl	80070fc <__sprint_r>
 80033ea:	2800      	cmp	r0, #0
 80033ec:	f040 843d 	bne.w	8003c6a <_vfprintf_r+0xc02>
 80033f0:	3d10      	subs	r5, #16
 80033f2:	2d10      	cmp	r5, #16
 80033f4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80033f8:	a92d      	add	r1, sp, #180	; 0xb4
 80033fa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80033fc:	dce6      	bgt.n	80033cc <_vfprintf_r+0x364>
 80033fe:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003400:	465f      	mov	r7, fp
 8003402:	4604      	mov	r4, r0
 8003404:	468b      	mov	fp, r1
 8003406:	3201      	adds	r2, #1
 8003408:	4bab      	ldr	r3, [pc, #684]	; (80036b8 <_vfprintf_r+0x650>)
 800340a:	442c      	add	r4, r5
 800340c:	2a07      	cmp	r2, #7
 800340e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003412:	e9cb 3500 	strd	r3, r5, [fp]
 8003416:	f300 84ff 	bgt.w	8003e18 <_vfprintf_r+0xdb0>
 800341a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800341e:	f10b 0b08 	add.w	fp, fp, #8
 8003422:	b172      	cbz	r2, 8003442 <_vfprintf_r+0x3da>
 8003424:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003426:	3201      	adds	r2, #1
 8003428:	3401      	adds	r4, #1
 800342a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800342e:	2101      	movs	r1, #1
 8003430:	2a07      	cmp	r2, #7
 8003432:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003436:	e9cb 0100 	strd	r0, r1, [fp]
 800343a:	f300 8418 	bgt.w	8003c6e <_vfprintf_r+0xc06>
 800343e:	f10b 0b08 	add.w	fp, fp, #8
 8003442:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003444:	b16b      	cbz	r3, 8003462 <_vfprintf_r+0x3fa>
 8003446:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003448:	3301      	adds	r3, #1
 800344a:	3402      	adds	r4, #2
 800344c:	a923      	add	r1, sp, #140	; 0x8c
 800344e:	2202      	movs	r2, #2
 8003450:	2b07      	cmp	r3, #7
 8003452:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003456:	e9cb 1200 	strd	r1, r2, [fp]
 800345a:	f300 8415 	bgt.w	8003c88 <_vfprintf_r+0xc20>
 800345e:	f10b 0b08 	add.w	fp, fp, #8
 8003462:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003464:	2b80      	cmp	r3, #128	; 0x80
 8003466:	f000 8331 	beq.w	8003acc <_vfprintf_r+0xa64>
 800346a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800346c:	eba9 0503 	sub.w	r5, r9, r3
 8003470:	2d00      	cmp	r5, #0
 8003472:	dd37      	ble.n	80034e4 <_vfprintf_r+0x47c>
 8003474:	2d10      	cmp	r5, #16
 8003476:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003478:	4b90      	ldr	r3, [pc, #576]	; (80036bc <_vfprintf_r+0x654>)
 800347a:	dd28      	ble.n	80034ce <_vfprintf_r+0x466>
 800347c:	4659      	mov	r1, fp
 800347e:	4620      	mov	r0, r4
 8003480:	46bb      	mov	fp, r7
 8003482:	f04f 0910 	mov.w	r9, #16
 8003486:	4637      	mov	r7, r6
 8003488:	461c      	mov	r4, r3
 800348a:	9e07      	ldr	r6, [sp, #28]
 800348c:	e004      	b.n	8003498 <_vfprintf_r+0x430>
 800348e:	3d10      	subs	r5, #16
 8003490:	2d10      	cmp	r5, #16
 8003492:	f101 0108 	add.w	r1, r1, #8
 8003496:	dd15      	ble.n	80034c4 <_vfprintf_r+0x45c>
 8003498:	3201      	adds	r2, #1
 800349a:	3010      	adds	r0, #16
 800349c:	2a07      	cmp	r2, #7
 800349e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80034a2:	e9c1 4900 	strd	r4, r9, [r1]
 80034a6:	ddf2      	ble.n	800348e <_vfprintf_r+0x426>
 80034a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034aa:	4631      	mov	r1, r6
 80034ac:	9803      	ldr	r0, [sp, #12]
 80034ae:	f003 fe25 	bl	80070fc <__sprint_r>
 80034b2:	2800      	cmp	r0, #0
 80034b4:	f040 83d9 	bne.w	8003c6a <_vfprintf_r+0xc02>
 80034b8:	3d10      	subs	r5, #16
 80034ba:	2d10      	cmp	r5, #16
 80034bc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80034c0:	a92d      	add	r1, sp, #180	; 0xb4
 80034c2:	dce9      	bgt.n	8003498 <_vfprintf_r+0x430>
 80034c4:	463e      	mov	r6, r7
 80034c6:	4623      	mov	r3, r4
 80034c8:	465f      	mov	r7, fp
 80034ca:	4604      	mov	r4, r0
 80034cc:	468b      	mov	fp, r1
 80034ce:	3201      	adds	r2, #1
 80034d0:	442c      	add	r4, r5
 80034d2:	2a07      	cmp	r2, #7
 80034d4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034d8:	e9cb 3500 	strd	r3, r5, [fp]
 80034dc:	f300 83ef 	bgt.w	8003cbe <_vfprintf_r+0xc56>
 80034e0:	f10b 0b08 	add.w	fp, fp, #8
 80034e4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80034e8:	f040 8280 	bne.w	80039ec <_vfprintf_r+0x984>
 80034ec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034ee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80034f0:	f8cb 7000 	str.w	r7, [fp]
 80034f4:	3301      	adds	r3, #1
 80034f6:	4414      	add	r4, r2
 80034f8:	2b07      	cmp	r3, #7
 80034fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80034fc:	f8cb 2004 	str.w	r2, [fp, #4]
 8003500:	932b      	str	r3, [sp, #172]	; 0xac
 8003502:	f300 8392 	bgt.w	8003c2a <_vfprintf_r+0xbc2>
 8003506:	f10b 0b08 	add.w	fp, fp, #8
 800350a:	f018 0f04 	tst.w	r8, #4
 800350e:	d03b      	beq.n	8003588 <_vfprintf_r+0x520>
 8003510:	9b06      	ldr	r3, [sp, #24]
 8003512:	9a04      	ldr	r2, [sp, #16]
 8003514:	1a9d      	subs	r5, r3, r2
 8003516:	2d00      	cmp	r5, #0
 8003518:	dd36      	ble.n	8003588 <_vfprintf_r+0x520>
 800351a:	2d10      	cmp	r5, #16
 800351c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800351e:	dd21      	ble.n	8003564 <_vfprintf_r+0x4fc>
 8003520:	2610      	movs	r6, #16
 8003522:	9f03      	ldr	r7, [sp, #12]
 8003524:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003528:	e004      	b.n	8003534 <_vfprintf_r+0x4cc>
 800352a:	3d10      	subs	r5, #16
 800352c:	2d10      	cmp	r5, #16
 800352e:	f10b 0b08 	add.w	fp, fp, #8
 8003532:	dd17      	ble.n	8003564 <_vfprintf_r+0x4fc>
 8003534:	3301      	adds	r3, #1
 8003536:	4a60      	ldr	r2, [pc, #384]	; (80036b8 <_vfprintf_r+0x650>)
 8003538:	3410      	adds	r4, #16
 800353a:	2b07      	cmp	r3, #7
 800353c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003540:	e9cb 2600 	strd	r2, r6, [fp]
 8003544:	ddf1      	ble.n	800352a <_vfprintf_r+0x4c2>
 8003546:	aa2a      	add	r2, sp, #168	; 0xa8
 8003548:	4641      	mov	r1, r8
 800354a:	4638      	mov	r0, r7
 800354c:	f003 fdd6 	bl	80070fc <__sprint_r>
 8003550:	2800      	cmp	r0, #0
 8003552:	f040 856c 	bne.w	800402e <_vfprintf_r+0xfc6>
 8003556:	3d10      	subs	r5, #16
 8003558:	2d10      	cmp	r5, #16
 800355a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800355e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003562:	dce7      	bgt.n	8003534 <_vfprintf_r+0x4cc>
 8003564:	3301      	adds	r3, #1
 8003566:	4a54      	ldr	r2, [pc, #336]	; (80036b8 <_vfprintf_r+0x650>)
 8003568:	442c      	add	r4, r5
 800356a:	2b07      	cmp	r3, #7
 800356c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003570:	e9cb 2500 	strd	r2, r5, [fp]
 8003574:	dd08      	ble.n	8003588 <_vfprintf_r+0x520>
 8003576:	aa2a      	add	r2, sp, #168	; 0xa8
 8003578:	9907      	ldr	r1, [sp, #28]
 800357a:	9803      	ldr	r0, [sp, #12]
 800357c:	f003 fdbe 	bl	80070fc <__sprint_r>
 8003580:	2800      	cmp	r0, #0
 8003582:	f040 82e9 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003586:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003588:	9904      	ldr	r1, [sp, #16]
 800358a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800358e:	428a      	cmp	r2, r1
 8003590:	bfac      	ite	ge
 8003592:	189b      	addge	r3, r3, r2
 8003594:	185b      	addlt	r3, r3, r1
 8003596:	9305      	str	r3, [sp, #20]
 8003598:	2c00      	cmp	r4, #0
 800359a:	f040 82d5 	bne.w	8003b48 <_vfprintf_r+0xae0>
 800359e:	2300      	movs	r3, #0
 80035a0:	932b      	str	r3, [sp, #172]	; 0xac
 80035a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80035a4:	b11b      	cbz	r3, 80035ae <_vfprintf_r+0x546>
 80035a6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80035a8:	9803      	ldr	r0, [sp, #12]
 80035aa:	f002 fcad 	bl	8005f08 <_free_r>
 80035ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035b2:	4657      	mov	r7, sl
 80035b4:	783b      	ldrb	r3, [r7, #0]
 80035b6:	2b00      	cmp	r3, #0
 80035b8:	f47f ada7 	bne.w	800310a <_vfprintf_r+0xa2>
 80035bc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80035be:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80035c2:	2b00      	cmp	r3, #0
 80035c4:	f041 80e7 	bne.w	8004796 <_vfprintf_r+0x172e>
 80035c8:	2300      	movs	r3, #0
 80035ca:	932b      	str	r3, [sp, #172]	; 0xac
 80035cc:	e2cb      	b.n	8003b66 <_vfprintf_r+0xafe>
 80035ce:	4643      	mov	r3, r8
 80035d0:	069a      	lsls	r2, r3, #26
 80035d2:	f140 814e 	bpl.w	8003872 <_vfprintf_r+0x80a>
 80035d6:	9c08      	ldr	r4, [sp, #32]
 80035d8:	3407      	adds	r4, #7
 80035da:	f024 0207 	bic.w	r2, r4, #7
 80035de:	f102 0108 	add.w	r1, r2, #8
 80035e2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80035e6:	9108      	str	r1, [sp, #32]
 80035e8:	2201      	movs	r2, #1
 80035ea:	2100      	movs	r1, #0
 80035ec:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80035f0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80035f4:	a956      	add	r1, sp, #344	; 0x158
 80035f6:	9104      	str	r1, [sp, #16]
 80035f8:	f47f aea2 	bne.w	8003340 <_vfprintf_r+0x2d8>
 80035fc:	4698      	mov	r8, r3
 80035fe:	2a01      	cmp	r2, #1
 8003600:	f000 8350 	beq.w	8003ca4 <_vfprintf_r+0xc3c>
 8003604:	2a02      	cmp	r2, #2
 8003606:	f000 831b 	beq.w	8003c40 <_vfprintf_r+0xbd8>
 800360a:	a956      	add	r1, sp, #344	; 0x158
 800360c:	e000      	b.n	8003610 <_vfprintf_r+0x5a8>
 800360e:	4639      	mov	r1, r7
 8003610:	08e2      	lsrs	r2, r4, #3
 8003612:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8003616:	08e8      	lsrs	r0, r5, #3
 8003618:	f004 0307 	and.w	r3, r4, #7
 800361c:	4605      	mov	r5, r0
 800361e:	4614      	mov	r4, r2
 8003620:	3330      	adds	r3, #48	; 0x30
 8003622:	ea54 0205 	orrs.w	r2, r4, r5
 8003626:	f801 3c01 	strb.w	r3, [r1, #-1]
 800362a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800362e:	d1ee      	bne.n	800360e <_vfprintf_r+0x5a6>
 8003630:	f018 0f01 	tst.w	r8, #1
 8003634:	f000 8314 	beq.w	8003c60 <_vfprintf_r+0xbf8>
 8003638:	2b30      	cmp	r3, #48	; 0x30
 800363a:	f000 8311 	beq.w	8003c60 <_vfprintf_r+0xbf8>
 800363e:	9a04      	ldr	r2, [sp, #16]
 8003640:	3902      	subs	r1, #2
 8003642:	2330      	movs	r3, #48	; 0x30
 8003644:	1a52      	subs	r2, r2, r1
 8003646:	f807 3c01 	strb.w	r3, [r7, #-1]
 800364a:	9209      	str	r2, [sp, #36]	; 0x24
 800364c:	460f      	mov	r7, r1
 800364e:	e68c      	b.n	800336a <_vfprintf_r+0x302>
 8003650:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003654:	2200      	movs	r2, #0
 8003656:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800365a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800365e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003662:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003666:	2b09      	cmp	r3, #9
 8003668:	d9f5      	bls.n	8003656 <_vfprintf_r+0x5ee>
 800366a:	9206      	str	r2, [sp, #24]
 800366c:	e57c      	b.n	8003168 <_vfprintf_r+0x100>
 800366e:	4b14      	ldr	r3, [pc, #80]	; (80036c0 <_vfprintf_r+0x658>)
 8003670:	9317      	str	r3, [sp, #92]	; 0x5c
 8003672:	f018 0f20 	tst.w	r8, #32
 8003676:	f000 8114 	beq.w	80038a2 <_vfprintf_r+0x83a>
 800367a:	9c08      	ldr	r4, [sp, #32]
 800367c:	3407      	adds	r4, #7
 800367e:	f024 0307 	bic.w	r3, r4, #7
 8003682:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003686:	f103 0208 	add.w	r2, r3, #8
 800368a:	9208      	str	r2, [sp, #32]
 800368c:	f018 0f01 	tst.w	r8, #1
 8003690:	d009      	beq.n	80036a6 <_vfprintf_r+0x63e>
 8003692:	ea54 0305 	orrs.w	r3, r4, r5
 8003696:	d006      	beq.n	80036a6 <_vfprintf_r+0x63e>
 8003698:	2330      	movs	r3, #48	; 0x30
 800369a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800369e:	f048 0802 	orr.w	r8, r8, #2
 80036a2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036a6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80036aa:	2202      	movs	r2, #2
 80036ac:	e79d      	b.n	80035ea <_vfprintf_r+0x582>
 80036ae:	f048 0801 	orr.w	r8, r8, #1
 80036b2:	f89a 6000 	ldrb.w	r6, [sl]
 80036b6:	e555      	b.n	8003164 <_vfprintf_r+0xfc>
 80036b8:	080077cc 	.word	0x080077cc
 80036bc:	080077dc 	.word	0x080077dc
 80036c0:	08007798 	.word	0x08007798
 80036c4:	9e03      	ldr	r6, [sp, #12]
 80036c6:	4630      	mov	r0, r6
 80036c8:	f002 feba 	bl	8006440 <_localeconv_r>
 80036cc:	6843      	ldr	r3, [r0, #4]
 80036ce:	9318      	str	r3, [sp, #96]	; 0x60
 80036d0:	4618      	mov	r0, r3
 80036d2:	f7fd fbb5 	bl	8000e40 <strlen>
 80036d6:	901b      	str	r0, [sp, #108]	; 0x6c
 80036d8:	4604      	mov	r4, r0
 80036da:	4630      	mov	r0, r6
 80036dc:	f002 feb0 	bl	8006440 <_localeconv_r>
 80036e0:	6883      	ldr	r3, [r0, #8]
 80036e2:	931a      	str	r3, [sp, #104]	; 0x68
 80036e4:	2c00      	cmp	r4, #0
 80036e6:	f43f adb8 	beq.w	800325a <_vfprintf_r+0x1f2>
 80036ea:	f89a 6000 	ldrb.w	r6, [sl]
 80036ee:	2b00      	cmp	r3, #0
 80036f0:	f43f ad38 	beq.w	8003164 <_vfprintf_r+0xfc>
 80036f4:	781b      	ldrb	r3, [r3, #0]
 80036f6:	2b00      	cmp	r3, #0
 80036f8:	f43f ad34 	beq.w	8003164 <_vfprintf_r+0xfc>
 80036fc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003700:	e530      	b.n	8003164 <_vfprintf_r+0xfc>
 8003702:	9b08      	ldr	r3, [sp, #32]
 8003704:	f89a 6000 	ldrb.w	r6, [sl]
 8003708:	681a      	ldr	r2, [r3, #0]
 800370a:	9206      	str	r2, [sp, #24]
 800370c:	2a00      	cmp	r2, #0
 800370e:	f103 0304 	add.w	r3, r3, #4
 8003712:	f2c0 8697 	blt.w	8004444 <_vfprintf_r+0x13dc>
 8003716:	9308      	str	r3, [sp, #32]
 8003718:	e524      	b.n	8003164 <_vfprintf_r+0xfc>
 800371a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800371e:	f89a 6000 	ldrb.w	r6, [sl]
 8003722:	e51f      	b.n	8003164 <_vfprintf_r+0xfc>
 8003724:	f89a 6000 	ldrb.w	r6, [sl]
 8003728:	f048 0804 	orr.w	r8, r8, #4
 800372c:	e51a      	b.n	8003164 <_vfprintf_r+0xfc>
 800372e:	f89a 6000 	ldrb.w	r6, [sl]
 8003732:	2e2a      	cmp	r6, #42	; 0x2a
 8003734:	f10a 0201 	add.w	r2, sl, #1
 8003738:	f001 81b0 	beq.w	8004a9c <_vfprintf_r+0x1a34>
 800373c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003740:	2b09      	cmp	r3, #9
 8003742:	4692      	mov	sl, r2
 8003744:	f04f 0900 	mov.w	r9, #0
 8003748:	f63f ad0e 	bhi.w	8003168 <_vfprintf_r+0x100>
 800374c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003750:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003754:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003758:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800375c:	2b09      	cmp	r3, #9
 800375e:	d9f5      	bls.n	800374c <_vfprintf_r+0x6e4>
 8003760:	e502      	b.n	8003168 <_vfprintf_r+0x100>
 8003762:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003766:	f89a 6000 	ldrb.w	r6, [sl]
 800376a:	e4fb      	b.n	8003164 <_vfprintf_r+0xfc>
 800376c:	9c08      	ldr	r4, [sp, #32]
 800376e:	3407      	adds	r4, #7
 8003770:	f024 0407 	bic.w	r4, r4, #7
 8003774:	ed94 7b00 	vldr	d7, [r4]
 8003778:	ec52 1b17 	vmov	r1, r2, d7
 800377c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003780:	931d      	str	r3, [sp, #116]	; 0x74
 8003782:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003786:	3408      	adds	r4, #8
 8003788:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800378c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003790:	4bba      	ldr	r3, [pc, #744]	; (8003a7c <_vfprintf_r+0xa14>)
 8003792:	9408      	str	r4, [sp, #32]
 8003794:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003798:	f7fd fc9a 	bl	80010d0 <__aeabi_dcmpun>
 800379c:	2800      	cmp	r0, #0
 800379e:	f040 846f 	bne.w	8004080 <_vfprintf_r+0x1018>
 80037a2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80037a6:	4bb5      	ldr	r3, [pc, #724]	; (8003a7c <_vfprintf_r+0xa14>)
 80037a8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80037ac:	f7fd fc72 	bl	8001094 <__aeabi_dcmple>
 80037b0:	2800      	cmp	r0, #0
 80037b2:	f040 8465 	bne.w	8004080 <_vfprintf_r+0x1018>
 80037b6:	2200      	movs	r2, #0
 80037b8:	2300      	movs	r3, #0
 80037ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80037be:	f7fd fc5f 	bl	8001080 <__aeabi_dcmplt>
 80037c2:	2800      	cmp	r0, #0
 80037c4:	f040 855b 	bne.w	800427e <_vfprintf_r+0x1216>
 80037c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037cc:	4fac      	ldr	r7, [pc, #688]	; (8003a80 <_vfprintf_r+0xa18>)
 80037ce:	4bad      	ldr	r3, [pc, #692]	; (8003a84 <_vfprintf_r+0xa1c>)
 80037d0:	2000      	movs	r0, #0
 80037d2:	2103      	movs	r1, #3
 80037d4:	9104      	str	r1, [sp, #16]
 80037d6:	900a      	str	r0, [sp, #40]	; 0x28
 80037d8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80037dc:	2e47      	cmp	r6, #71	; 0x47
 80037de:	bfd8      	it	le
 80037e0:	461f      	movle	r7, r3
 80037e2:	9109      	str	r1, [sp, #36]	; 0x24
 80037e4:	4681      	mov	r9, r0
 80037e6:	900f      	str	r0, [sp, #60]	; 0x3c
 80037e8:	9014      	str	r0, [sp, #80]	; 0x50
 80037ea:	9011      	str	r0, [sp, #68]	; 0x44
 80037ec:	e5c9      	b.n	8003382 <_vfprintf_r+0x31a>
 80037ee:	9808      	ldr	r0, [sp, #32]
 80037f0:	2300      	movs	r3, #0
 80037f2:	6801      	ldr	r1, [r0, #0]
 80037f4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80037f8:	461a      	mov	r2, r3
 80037fa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80037fe:	2301      	movs	r3, #1
 8003800:	1d01      	adds	r1, r0, #4
 8003802:	9304      	str	r3, [sp, #16]
 8003804:	920a      	str	r2, [sp, #40]	; 0x28
 8003806:	4691      	mov	r9, r2
 8003808:	920f      	str	r2, [sp, #60]	; 0x3c
 800380a:	9214      	str	r2, [sp, #80]	; 0x50
 800380c:	9211      	str	r2, [sp, #68]	; 0x44
 800380e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003812:	af3d      	add	r7, sp, #244	; 0xf4
 8003814:	e5b9      	b.n	800338a <_vfprintf_r+0x322>
 8003816:	9b08      	ldr	r3, [sp, #32]
 8003818:	681f      	ldr	r7, [r3, #0]
 800381a:	2500      	movs	r5, #0
 800381c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003820:	1d1c      	adds	r4, r3, #4
 8003822:	2f00      	cmp	r7, #0
 8003824:	f000 8639 	beq.w	800449a <_vfprintf_r+0x1432>
 8003828:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800382c:	f000 8711 	beq.w	8004652 <_vfprintf_r+0x15ea>
 8003830:	464a      	mov	r2, r9
 8003832:	4629      	mov	r1, r5
 8003834:	4638      	mov	r0, r7
 8003836:	f7fd fb73 	bl	8000f20 <memchr>
 800383a:	900a      	str	r0, [sp, #40]	; 0x28
 800383c:	2800      	cmp	r0, #0
 800383e:	f000 85e7 	beq.w	8004410 <_vfprintf_r+0x13a8>
 8003842:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003844:	1bdb      	subs	r3, r3, r7
 8003846:	9309      	str	r3, [sp, #36]	; 0x24
 8003848:	46a9      	mov	r9, r5
 800384a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800384e:	9408      	str	r4, [sp, #32]
 8003850:	9304      	str	r3, [sp, #16]
 8003852:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003856:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800385a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800385e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003862:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003866:	e58c      	b.n	8003382 <_vfprintf_r+0x31a>
 8003868:	f048 0310 	orr.w	r3, r8, #16
 800386c:	069a      	lsls	r2, r3, #26
 800386e:	f53f aeb2 	bmi.w	80035d6 <_vfprintf_r+0x56e>
 8003872:	9a08      	ldr	r2, [sp, #32]
 8003874:	06df      	lsls	r7, r3, #27
 8003876:	f102 0104 	add.w	r1, r2, #4
 800387a:	f100 837e 	bmi.w	8003f7a <_vfprintf_r+0xf12>
 800387e:	065d      	lsls	r5, r3, #25
 8003880:	9a08      	ldr	r2, [sp, #32]
 8003882:	f100 84e4 	bmi.w	800424e <_vfprintf_r+0x11e6>
 8003886:	059c      	lsls	r4, r3, #22
 8003888:	f140 8377 	bpl.w	8003f7a <_vfprintf_r+0xf12>
 800388c:	7814      	ldrb	r4, [r2, #0]
 800388e:	9108      	str	r1, [sp, #32]
 8003890:	2500      	movs	r5, #0
 8003892:	2201      	movs	r2, #1
 8003894:	e6a9      	b.n	80035ea <_vfprintf_r+0x582>
 8003896:	4b7c      	ldr	r3, [pc, #496]	; (8003a88 <_vfprintf_r+0xa20>)
 8003898:	9317      	str	r3, [sp, #92]	; 0x5c
 800389a:	f018 0f20 	tst.w	r8, #32
 800389e:	f47f aeec 	bne.w	800367a <_vfprintf_r+0x612>
 80038a2:	9a08      	ldr	r2, [sp, #32]
 80038a4:	f018 0f10 	tst.w	r8, #16
 80038a8:	f102 0304 	add.w	r3, r2, #4
 80038ac:	f040 8354 	bne.w	8003f58 <_vfprintf_r+0xef0>
 80038b0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80038b4:	9a08      	ldr	r2, [sp, #32]
 80038b6:	f040 84d0 	bne.w	800425a <_vfprintf_r+0x11f2>
 80038ba:	f418 7f00 	tst.w	r8, #512	; 0x200
 80038be:	f000 834b 	beq.w	8003f58 <_vfprintf_r+0xef0>
 80038c2:	7814      	ldrb	r4, [r2, #0]
 80038c4:	9308      	str	r3, [sp, #32]
 80038c6:	2500      	movs	r5, #0
 80038c8:	e6e0      	b.n	800368c <_vfprintf_r+0x624>
 80038ca:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80038ce:	f89a 6000 	ldrb.w	r6, [sl]
 80038d2:	2b00      	cmp	r3, #0
 80038d4:	f47f ac46 	bne.w	8003164 <_vfprintf_r+0xfc>
 80038d8:	2320      	movs	r3, #32
 80038da:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80038de:	e441      	b.n	8003164 <_vfprintf_r+0xfc>
 80038e0:	f89a 6000 	ldrb.w	r6, [sl]
 80038e4:	2e6c      	cmp	r6, #108	; 0x6c
 80038e6:	bf03      	ittte	eq
 80038e8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80038ec:	f048 0820 	orreq.w	r8, r8, #32
 80038f0:	f10a 0a01 	addeq.w	sl, sl, #1
 80038f4:	f048 0810 	orrne.w	r8, r8, #16
 80038f8:	e434      	b.n	8003164 <_vfprintf_r+0xfc>
 80038fa:	9a08      	ldr	r2, [sp, #32]
 80038fc:	f018 0f20 	tst.w	r8, #32
 8003900:	f852 3b04 	ldr.w	r3, [r2], #4
 8003904:	9208      	str	r2, [sp, #32]
 8003906:	f000 83a1 	beq.w	800404c <_vfprintf_r+0xfe4>
 800390a:	9a05      	ldr	r2, [sp, #20]
 800390c:	4610      	mov	r0, r2
 800390e:	17d1      	asrs	r1, r2, #31
 8003910:	e9c3 0100 	strd	r0, r1, [r3]
 8003914:	4657      	mov	r7, sl
 8003916:	e64d      	b.n	80035b4 <_vfprintf_r+0x54c>
 8003918:	f89a 6000 	ldrb.w	r6, [sl]
 800391c:	2e68      	cmp	r6, #104	; 0x68
 800391e:	bf03      	ittte	eq
 8003920:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003924:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003928:	f10a 0a01 	addeq.w	sl, sl, #1
 800392c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003930:	e418      	b.n	8003164 <_vfprintf_r+0xfc>
 8003932:	9908      	ldr	r1, [sp, #32]
 8003934:	4b55      	ldr	r3, [pc, #340]	; (8003a8c <_vfprintf_r+0xa24>)
 8003936:	680c      	ldr	r4, [r1, #0]
 8003938:	9317      	str	r3, [sp, #92]	; 0x5c
 800393a:	f647 0230 	movw	r2, #30768	; 0x7830
 800393e:	3104      	adds	r1, #4
 8003940:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003944:	f048 0302 	orr.w	r3, r8, #2
 8003948:	9108      	str	r1, [sp, #32]
 800394a:	2500      	movs	r5, #0
 800394c:	2202      	movs	r2, #2
 800394e:	2678      	movs	r6, #120	; 0x78
 8003950:	e64b      	b.n	80035ea <_vfprintf_r+0x582>
 8003952:	f048 0808 	orr.w	r8, r8, #8
 8003956:	f89a 6000 	ldrb.w	r6, [sl]
 800395a:	e403      	b.n	8003164 <_vfprintf_r+0xfc>
 800395c:	f048 0310 	orr.w	r3, r8, #16
 8003960:	069f      	lsls	r7, r3, #26
 8003962:	f53f acd1 	bmi.w	8003308 <_vfprintf_r+0x2a0>
 8003966:	9908      	ldr	r1, [sp, #32]
 8003968:	06dd      	lsls	r5, r3, #27
 800396a:	f101 0204 	add.w	r2, r1, #4
 800396e:	f100 82fd 	bmi.w	8003f6c <_vfprintf_r+0xf04>
 8003972:	065c      	lsls	r4, r3, #25
 8003974:	9908      	ldr	r1, [sp, #32]
 8003976:	f100 8475 	bmi.w	8004264 <_vfprintf_r+0x11fc>
 800397a:	0598      	lsls	r0, r3, #22
 800397c:	f140 82f6 	bpl.w	8003f6c <_vfprintf_r+0xf04>
 8003980:	f991 4000 	ldrsb.w	r4, [r1]
 8003984:	9208      	str	r2, [sp, #32]
 8003986:	17e5      	asrs	r5, r4, #31
 8003988:	4620      	mov	r0, r4
 800398a:	4629      	mov	r1, r5
 800398c:	e4c7      	b.n	800331e <_vfprintf_r+0x2b6>
 800398e:	9a08      	ldr	r2, [sp, #32]
 8003990:	f018 0f10 	tst.w	r8, #16
 8003994:	f102 0304 	add.w	r3, r2, #4
 8003998:	f040 82e3 	bne.w	8003f62 <_vfprintf_r+0xefa>
 800399c:	f018 0f40 	tst.w	r8, #64	; 0x40
 80039a0:	9a08      	ldr	r2, [sp, #32]
 80039a2:	f040 8467 	bne.w	8004274 <_vfprintf_r+0x120c>
 80039a6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80039aa:	f000 82da 	beq.w	8003f62 <_vfprintf_r+0xefa>
 80039ae:	7814      	ldrb	r4, [r2, #0]
 80039b0:	9308      	str	r3, [sp, #32]
 80039b2:	2500      	movs	r5, #0
 80039b4:	e488      	b.n	80032c8 <_vfprintf_r+0x260>
 80039b6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80039ba:	f002 fd55 	bl	8006468 <__retarget_lock_release_recursive>
 80039be:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80039c2:	9305      	str	r3, [sp, #20]
 80039c4:	e443      	b.n	800324e <_vfprintf_r+0x1e6>
 80039c6:	2e00      	cmp	r6, #0
 80039c8:	f43f adf8 	beq.w	80035bc <_vfprintf_r+0x554>
 80039cc:	2300      	movs	r3, #0
 80039ce:	2101      	movs	r1, #1
 80039d0:	461a      	mov	r2, r3
 80039d2:	9104      	str	r1, [sp, #16]
 80039d4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80039d8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80039dc:	930a      	str	r3, [sp, #40]	; 0x28
 80039de:	4699      	mov	r9, r3
 80039e0:	930f      	str	r3, [sp, #60]	; 0x3c
 80039e2:	9314      	str	r3, [sp, #80]	; 0x50
 80039e4:	9311      	str	r3, [sp, #68]	; 0x44
 80039e6:	9109      	str	r1, [sp, #36]	; 0x24
 80039e8:	af3d      	add	r7, sp, #244	; 0xf4
 80039ea:	e4ce      	b.n	800338a <_vfprintf_r+0x322>
 80039ec:	2e65      	cmp	r6, #101	; 0x65
 80039ee:	f340 80ca 	ble.w	8003b86 <_vfprintf_r+0xb1e>
 80039f2:	2200      	movs	r2, #0
 80039f4:	2300      	movs	r3, #0
 80039f6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80039fa:	f7fd fb37 	bl	800106c <__aeabi_dcmpeq>
 80039fe:	2800      	cmp	r0, #0
 8003a00:	f000 8169 	beq.w	8003cd6 <_vfprintf_r+0xc6e>
 8003a04:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a06:	4a22      	ldr	r2, [pc, #136]	; (8003a90 <_vfprintf_r+0xa28>)
 8003a08:	f8cb 2000 	str.w	r2, [fp]
 8003a0c:	3301      	adds	r3, #1
 8003a0e:	3401      	adds	r4, #1
 8003a10:	2201      	movs	r2, #1
 8003a12:	2b07      	cmp	r3, #7
 8003a14:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003a18:	f8cb 2004 	str.w	r2, [fp, #4]
 8003a1c:	f300 8406 	bgt.w	800422c <_vfprintf_r+0x11c4>
 8003a20:	f10b 0b08 	add.w	fp, fp, #8
 8003a24:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a26:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a28:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a2a:	4293      	cmp	r3, r2
 8003a2c:	db03      	blt.n	8003a36 <_vfprintf_r+0x9ce>
 8003a2e:	f018 0f01 	tst.w	r8, #1
 8003a32:	f43f ad6a 	beq.w	800350a <_vfprintf_r+0x4a2>
 8003a36:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a38:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003a3a:	f8cb 2000 	str.w	r2, [fp]
 8003a3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a40:	f8cb 2004 	str.w	r2, [fp, #4]
 8003a44:	3301      	adds	r3, #1
 8003a46:	4414      	add	r4, r2
 8003a48:	2b07      	cmp	r3, #7
 8003a4a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003a4e:	f300 8517 	bgt.w	8004480 <_vfprintf_r+0x1418>
 8003a52:	f10b 0b08 	add.w	fp, fp, #8
 8003a56:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a58:	1e5d      	subs	r5, r3, #1
 8003a5a:	2d00      	cmp	r5, #0
 8003a5c:	f77f ad55 	ble.w	800350a <_vfprintf_r+0x4a2>
 8003a60:	2d10      	cmp	r5, #16
 8003a62:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a64:	4b0b      	ldr	r3, [pc, #44]	; (8003a94 <_vfprintf_r+0xa2c>)
 8003a66:	f340 82e7 	ble.w	8004038 <_vfprintf_r+0xfd0>
 8003a6a:	4619      	mov	r1, r3
 8003a6c:	2610      	movs	r6, #16
 8003a6e:	4623      	mov	r3, r4
 8003a70:	9f03      	ldr	r7, [sp, #12]
 8003a72:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003a76:	460c      	mov	r4, r1
 8003a78:	e014      	b.n	8003aa4 <_vfprintf_r+0xa3c>
 8003a7a:	bf00      	nop
 8003a7c:	7fefffff 	.word	0x7fefffff
 8003a80:	0800778c 	.word	0x0800778c
 8003a84:	08007788 	.word	0x08007788
 8003a88:	080077ac 	.word	0x080077ac
 8003a8c:	08007798 	.word	0x08007798
 8003a90:	080077c8 	.word	0x080077c8
 8003a94:	080077dc 	.word	0x080077dc
 8003a98:	f10b 0b08 	add.w	fp, fp, #8
 8003a9c:	3d10      	subs	r5, #16
 8003a9e:	2d10      	cmp	r5, #16
 8003aa0:	f340 82c7 	ble.w	8004032 <_vfprintf_r+0xfca>
 8003aa4:	3201      	adds	r2, #1
 8003aa6:	3310      	adds	r3, #16
 8003aa8:	2a07      	cmp	r2, #7
 8003aaa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003aae:	e9cb 4600 	strd	r4, r6, [fp]
 8003ab2:	ddf1      	ble.n	8003a98 <_vfprintf_r+0xa30>
 8003ab4:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ab6:	4649      	mov	r1, r9
 8003ab8:	4638      	mov	r0, r7
 8003aba:	f003 fb1f 	bl	80070fc <__sprint_r>
 8003abe:	2800      	cmp	r0, #0
 8003ac0:	d14c      	bne.n	8003b5c <_vfprintf_r+0xaf4>
 8003ac2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003ac6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aca:	e7e7      	b.n	8003a9c <_vfprintf_r+0xa34>
 8003acc:	9b06      	ldr	r3, [sp, #24]
 8003ace:	9a04      	ldr	r2, [sp, #16]
 8003ad0:	1a9d      	subs	r5, r3, r2
 8003ad2:	2d00      	cmp	r5, #0
 8003ad4:	f77f acc9 	ble.w	800346a <_vfprintf_r+0x402>
 8003ad8:	2d10      	cmp	r5, #16
 8003ada:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003adc:	4bbc      	ldr	r3, [pc, #752]	; (8003dd0 <_vfprintf_r+0xd68>)
 8003ade:	dd27      	ble.n	8003b30 <_vfprintf_r+0xac8>
 8003ae0:	4659      	mov	r1, fp
 8003ae2:	4620      	mov	r0, r4
 8003ae4:	46bb      	mov	fp, r7
 8003ae6:	461c      	mov	r4, r3
 8003ae8:	4637      	mov	r7, r6
 8003aea:	9e07      	ldr	r6, [sp, #28]
 8003aec:	e004      	b.n	8003af8 <_vfprintf_r+0xa90>
 8003aee:	3d10      	subs	r5, #16
 8003af0:	2d10      	cmp	r5, #16
 8003af2:	f101 0108 	add.w	r1, r1, #8
 8003af6:	dd16      	ble.n	8003b26 <_vfprintf_r+0xabe>
 8003af8:	3201      	adds	r2, #1
 8003afa:	3010      	adds	r0, #16
 8003afc:	2310      	movs	r3, #16
 8003afe:	2a07      	cmp	r2, #7
 8003b00:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003b04:	600c      	str	r4, [r1, #0]
 8003b06:	604b      	str	r3, [r1, #4]
 8003b08:	ddf1      	ble.n	8003aee <_vfprintf_r+0xa86>
 8003b0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0c:	4631      	mov	r1, r6
 8003b0e:	9803      	ldr	r0, [sp, #12]
 8003b10:	f003 faf4 	bl	80070fc <__sprint_r>
 8003b14:	2800      	cmp	r0, #0
 8003b16:	f040 80a8 	bne.w	8003c6a <_vfprintf_r+0xc02>
 8003b1a:	3d10      	subs	r5, #16
 8003b1c:	2d10      	cmp	r5, #16
 8003b1e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003b22:	a92d      	add	r1, sp, #180	; 0xb4
 8003b24:	dce8      	bgt.n	8003af8 <_vfprintf_r+0xa90>
 8003b26:	463e      	mov	r6, r7
 8003b28:	4623      	mov	r3, r4
 8003b2a:	465f      	mov	r7, fp
 8003b2c:	4604      	mov	r4, r0
 8003b2e:	468b      	mov	fp, r1
 8003b30:	3201      	adds	r2, #1
 8003b32:	442c      	add	r4, r5
 8003b34:	2a07      	cmp	r2, #7
 8003b36:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b3a:	e9cb 3500 	strd	r3, r5, [fp]
 8003b3e:	f300 8292 	bgt.w	8004066 <_vfprintf_r+0xffe>
 8003b42:	f10b 0b08 	add.w	fp, fp, #8
 8003b46:	e490      	b.n	800346a <_vfprintf_r+0x402>
 8003b48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b4a:	9907      	ldr	r1, [sp, #28]
 8003b4c:	9803      	ldr	r0, [sp, #12]
 8003b4e:	f003 fad5 	bl	80070fc <__sprint_r>
 8003b52:	2800      	cmp	r0, #0
 8003b54:	f43f ad23 	beq.w	800359e <_vfprintf_r+0x536>
 8003b58:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003b5c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003b5e:	b111      	cbz	r1, 8003b66 <_vfprintf_r+0xafe>
 8003b60:	9803      	ldr	r0, [sp, #12]
 8003b62:	f002 f9d1 	bl	8005f08 <_free_r>
 8003b66:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003b6a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003b6e:	07d0      	lsls	r0, r2, #31
 8003b70:	d402      	bmi.n	8003b78 <_vfprintf_r+0xb10>
 8003b72:	0599      	lsls	r1, r3, #22
 8003b74:	f140 81d0 	bpl.w	8003f18 <_vfprintf_r+0xeb0>
 8003b78:	065a      	lsls	r2, r3, #25
 8003b7a:	f53f ab65 	bmi.w	8003248 <_vfprintf_r+0x1e0>
 8003b7e:	9805      	ldr	r0, [sp, #20]
 8003b80:	b057      	add	sp, #348	; 0x15c
 8003b82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003b86:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b88:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b8a:	2a01      	cmp	r2, #1
 8003b8c:	f104 0401 	add.w	r4, r4, #1
 8003b90:	f103 0501 	add.w	r5, r3, #1
 8003b94:	f10b 0608 	add.w	r6, fp, #8
 8003b98:	f340 811c 	ble.w	8003dd4 <_vfprintf_r+0xd6c>
 8003b9c:	2301      	movs	r3, #1
 8003b9e:	2d07      	cmp	r5, #7
 8003ba0:	f8cb 7000 	str.w	r7, [fp]
 8003ba4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003ba8:	f8cb 3004 	str.w	r3, [fp, #4]
 8003bac:	f300 81bb 	bgt.w	8003f26 <_vfprintf_r+0xebe>
 8003bb0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003bb2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003bb4:	1c69      	adds	r1, r5, #1
 8003bb6:	441c      	add	r4, r3
 8003bb8:	2907      	cmp	r1, #7
 8003bba:	910b      	str	r1, [sp, #44]	; 0x2c
 8003bbc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003bc0:	e9c6 2300 	strd	r2, r3, [r6]
 8003bc4:	f300 81bb 	bgt.w	8003f3e <_vfprintf_r+0xed6>
 8003bc8:	3608      	adds	r6, #8
 8003bca:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003bcc:	1c53      	adds	r3, r2, #1
 8003bce:	461d      	mov	r5, r3
 8003bd0:	9509      	str	r5, [sp, #36]	; 0x24
 8003bd2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003bd4:	930e      	str	r3, [sp, #56]	; 0x38
 8003bd6:	2200      	movs	r2, #0
 8003bd8:	2300      	movs	r3, #0
 8003bda:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003bde:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003be2:	f106 0b08 	add.w	fp, r6, #8
 8003be6:	f7fd fa41 	bl	800106c <__aeabi_dcmpeq>
 8003bea:	2800      	cmp	r0, #0
 8003bec:	f040 80c2 	bne.w	8003d74 <_vfprintf_r+0xd0c>
 8003bf0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003bf2:	f8c6 9004 	str.w	r9, [r6, #4]
 8003bf6:	3701      	adds	r7, #1
 8003bf8:	444c      	add	r4, r9
 8003bfa:	2d07      	cmp	r5, #7
 8003bfc:	6037      	str	r7, [r6, #0]
 8003bfe:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c00:	952b      	str	r5, [sp, #172]	; 0xac
 8003c02:	f300 80f9 	bgt.w	8003df8 <_vfprintf_r+0xd90>
 8003c06:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003c08:	f106 0310 	add.w	r3, r6, #16
 8003c0c:	3202      	adds	r2, #2
 8003c0e:	465e      	mov	r6, fp
 8003c10:	9209      	str	r2, [sp, #36]	; 0x24
 8003c12:	469b      	mov	fp, r3
 8003c14:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003c16:	6072      	str	r2, [r6, #4]
 8003c18:	4414      	add	r4, r2
 8003c1a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c1e:	ab26      	add	r3, sp, #152	; 0x98
 8003c20:	2a07      	cmp	r2, #7
 8003c22:	922b      	str	r2, [sp, #172]	; 0xac
 8003c24:	6033      	str	r3, [r6, #0]
 8003c26:	f77f ac70 	ble.w	800350a <_vfprintf_r+0x4a2>
 8003c2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c2c:	9907      	ldr	r1, [sp, #28]
 8003c2e:	9803      	ldr	r0, [sp, #12]
 8003c30:	f003 fa64 	bl	80070fc <__sprint_r>
 8003c34:	2800      	cmp	r0, #0
 8003c36:	d18f      	bne.n	8003b58 <_vfprintf_r+0xaf0>
 8003c38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c3e:	e464      	b.n	800350a <_vfprintf_r+0x4a2>
 8003c40:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003c42:	af56      	add	r7, sp, #344	; 0x158
 8003c44:	0923      	lsrs	r3, r4, #4
 8003c46:	f004 010f 	and.w	r1, r4, #15
 8003c4a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003c4e:	092a      	lsrs	r2, r5, #4
 8003c50:	461c      	mov	r4, r3
 8003c52:	4615      	mov	r5, r2
 8003c54:	5c43      	ldrb	r3, [r0, r1]
 8003c56:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003c5a:	ea54 0305 	orrs.w	r3, r4, r5
 8003c5e:	d1f1      	bne.n	8003c44 <_vfprintf_r+0xbdc>
 8003c60:	9b04      	ldr	r3, [sp, #16]
 8003c62:	1bdb      	subs	r3, r3, r7
 8003c64:	9309      	str	r3, [sp, #36]	; 0x24
 8003c66:	f7ff bb80 	b.w	800336a <_vfprintf_r+0x302>
 8003c6a:	46b1      	mov	r9, r6
 8003c6c:	e776      	b.n	8003b5c <_vfprintf_r+0xaf4>
 8003c6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c70:	9907      	ldr	r1, [sp, #28]
 8003c72:	9803      	ldr	r0, [sp, #12]
 8003c74:	f003 fa42 	bl	80070fc <__sprint_r>
 8003c78:	2800      	cmp	r0, #0
 8003c7a:	f47f af6d 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003c7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c84:	f7ff bbdd 	b.w	8003442 <_vfprintf_r+0x3da>
 8003c88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c8a:	9907      	ldr	r1, [sp, #28]
 8003c8c:	9803      	ldr	r0, [sp, #12]
 8003c8e:	f003 fa35 	bl	80070fc <__sprint_r>
 8003c92:	2800      	cmp	r0, #0
 8003c94:	f47f af60 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003c98:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c9a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c9e:	f7ff bbe0 	b.w	8003462 <_vfprintf_r+0x3fa>
 8003ca2:	4698      	mov	r8, r3
 8003ca4:	2d00      	cmp	r5, #0
 8003ca6:	bf08      	it	eq
 8003ca8:	2c0a      	cmpeq	r4, #10
 8003caa:	f080 8170 	bcs.w	8003f8e <_vfprintf_r+0xf26>
 8003cae:	af56      	add	r7, sp, #344	; 0x158
 8003cb0:	3430      	adds	r4, #48	; 0x30
 8003cb2:	2301      	movs	r3, #1
 8003cb4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003cb8:	9309      	str	r3, [sp, #36]	; 0x24
 8003cba:	f7ff bb56 	b.w	800336a <_vfprintf_r+0x302>
 8003cbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cc0:	9907      	ldr	r1, [sp, #28]
 8003cc2:	9803      	ldr	r0, [sp, #12]
 8003cc4:	f003 fa1a 	bl	80070fc <__sprint_r>
 8003cc8:	2800      	cmp	r0, #0
 8003cca:	f47f af45 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003cce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cd0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cd4:	e406      	b.n	80034e4 <_vfprintf_r+0x47c>
 8003cd6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003cd8:	2b00      	cmp	r3, #0
 8003cda:	f340 8273 	ble.w	80041c4 <_vfprintf_r+0x115c>
 8003cde:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003ce2:	4293      	cmp	r3, r2
 8003ce4:	bfa8      	it	ge
 8003ce6:	4613      	movge	r3, r2
 8003ce8:	2b00      	cmp	r3, #0
 8003cea:	461d      	mov	r5, r3
 8003cec:	dd0d      	ble.n	8003d0a <_vfprintf_r+0xca2>
 8003cee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003cf0:	f8cb 7000 	str.w	r7, [fp]
 8003cf4:	3301      	adds	r3, #1
 8003cf6:	442c      	add	r4, r5
 8003cf8:	2b07      	cmp	r3, #7
 8003cfa:	942c      	str	r4, [sp, #176]	; 0xb0
 8003cfc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003d00:	932b      	str	r3, [sp, #172]	; 0xac
 8003d02:	f300 82c1 	bgt.w	8004288 <_vfprintf_r+0x1220>
 8003d06:	f10b 0b08 	add.w	fp, fp, #8
 8003d0a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d0c:	2d00      	cmp	r5, #0
 8003d0e:	bfa8      	it	ge
 8003d10:	1b5b      	subge	r3, r3, r5
 8003d12:	2b00      	cmp	r3, #0
 8003d14:	461d      	mov	r5, r3
 8003d16:	f340 8099 	ble.w	8003e4c <_vfprintf_r+0xde4>
 8003d1a:	2d10      	cmp	r5, #16
 8003d1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d1e:	4b2c      	ldr	r3, [pc, #176]	; (8003dd0 <_vfprintf_r+0xd68>)
 8003d20:	f340 83db 	ble.w	80044da <_vfprintf_r+0x1472>
 8003d24:	4618      	mov	r0, r3
 8003d26:	4621      	mov	r1, r4
 8003d28:	465b      	mov	r3, fp
 8003d2a:	2610      	movs	r6, #16
 8003d2c:	46bb      	mov	fp, r7
 8003d2e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003d32:	9c07      	ldr	r4, [sp, #28]
 8003d34:	4607      	mov	r7, r0
 8003d36:	e004      	b.n	8003d42 <_vfprintf_r+0xcda>
 8003d38:	3308      	adds	r3, #8
 8003d3a:	3d10      	subs	r5, #16
 8003d3c:	2d10      	cmp	r5, #16
 8003d3e:	f340 83c7 	ble.w	80044d0 <_vfprintf_r+0x1468>
 8003d42:	3201      	adds	r2, #1
 8003d44:	3110      	adds	r1, #16
 8003d46:	2a07      	cmp	r2, #7
 8003d48:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003d4c:	e9c3 7600 	strd	r7, r6, [r3]
 8003d50:	ddf2      	ble.n	8003d38 <_vfprintf_r+0xcd0>
 8003d52:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d54:	4621      	mov	r1, r4
 8003d56:	4648      	mov	r0, r9
 8003d58:	f003 f9d0 	bl	80070fc <__sprint_r>
 8003d5c:	2800      	cmp	r0, #0
 8003d5e:	f040 84a5 	bne.w	80046ac <_vfprintf_r+0x1644>
 8003d62:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003d66:	ab2d      	add	r3, sp, #180	; 0xb4
 8003d68:	e7e7      	b.n	8003d3a <_vfprintf_r+0xcd2>
 8003d6a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003d6e:	af56      	add	r7, sp, #344	; 0x158
 8003d70:	f7ff bafb 	b.w	800336a <_vfprintf_r+0x302>
 8003d74:	f1b9 0f00 	cmp.w	r9, #0
 8003d78:	f77f af4c 	ble.w	8003c14 <_vfprintf_r+0xbac>
 8003d7c:	f1b9 0f10 	cmp.w	r9, #16
 8003d80:	4b13      	ldr	r3, [pc, #76]	; (8003dd0 <_vfprintf_r+0xd68>)
 8003d82:	f340 8659 	ble.w	8004a38 <_vfprintf_r+0x19d0>
 8003d86:	4619      	mov	r1, r3
 8003d88:	4622      	mov	r2, r4
 8003d8a:	4633      	mov	r3, r6
 8003d8c:	2710      	movs	r7, #16
 8003d8e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003d92:	9c07      	ldr	r4, [sp, #28]
 8003d94:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003d96:	460e      	mov	r6, r1
 8003d98:	e007      	b.n	8003daa <_vfprintf_r+0xd42>
 8003d9a:	3308      	adds	r3, #8
 8003d9c:	f1a9 0910 	sub.w	r9, r9, #16
 8003da0:	f1b9 0f10 	cmp.w	r9, #16
 8003da4:	f340 8353 	ble.w	800444e <_vfprintf_r+0x13e6>
 8003da8:	3501      	adds	r5, #1
 8003daa:	3210      	adds	r2, #16
 8003dac:	2d07      	cmp	r5, #7
 8003dae:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003db2:	e9c3 6700 	strd	r6, r7, [r3]
 8003db6:	ddf0      	ble.n	8003d9a <_vfprintf_r+0xd32>
 8003db8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dba:	4621      	mov	r1, r4
 8003dbc:	4658      	mov	r0, fp
 8003dbe:	f003 f99d 	bl	80070fc <__sprint_r>
 8003dc2:	2800      	cmp	r0, #0
 8003dc4:	f040 8472 	bne.w	80046ac <_vfprintf_r+0x1644>
 8003dc8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003dcc:	ab2d      	add	r3, sp, #180	; 0xb4
 8003dce:	e7e5      	b.n	8003d9c <_vfprintf_r+0xd34>
 8003dd0:	080077dc 	.word	0x080077dc
 8003dd4:	f018 0f01 	tst.w	r8, #1
 8003dd8:	f47f aee0 	bne.w	8003b9c <_vfprintf_r+0xb34>
 8003ddc:	2201      	movs	r2, #1
 8003dde:	2d07      	cmp	r5, #7
 8003de0:	f8cb 7000 	str.w	r7, [fp]
 8003de4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003de8:	f8cb 2004 	str.w	r2, [fp, #4]
 8003dec:	dc04      	bgt.n	8003df8 <_vfprintf_r+0xd90>
 8003dee:	3302      	adds	r3, #2
 8003df0:	9309      	str	r3, [sp, #36]	; 0x24
 8003df2:	f10b 0b10 	add.w	fp, fp, #16
 8003df6:	e70d      	b.n	8003c14 <_vfprintf_r+0xbac>
 8003df8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfa:	9907      	ldr	r1, [sp, #28]
 8003dfc:	9803      	ldr	r0, [sp, #12]
 8003dfe:	f003 f97d 	bl	80070fc <__sprint_r>
 8003e02:	2800      	cmp	r0, #0
 8003e04:	f47f aea8 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003e08:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003e0c:	3301      	adds	r3, #1
 8003e0e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e10:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003e14:	ae2d      	add	r6, sp, #180	; 0xb4
 8003e16:	e6fd      	b.n	8003c14 <_vfprintf_r+0xbac>
 8003e18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e1a:	9907      	ldr	r1, [sp, #28]
 8003e1c:	9803      	ldr	r0, [sp, #12]
 8003e1e:	f003 f96d 	bl	80070fc <__sprint_r>
 8003e22:	2800      	cmp	r0, #0
 8003e24:	f47f ae98 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003e28:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e2c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e32:	f7ff baf6 	b.w	8003422 <_vfprintf_r+0x3ba>
 8003e36:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e38:	9907      	ldr	r1, [sp, #28]
 8003e3a:	9803      	ldr	r0, [sp, #12]
 8003e3c:	f003 f95e 	bl	80070fc <__sprint_r>
 8003e40:	2800      	cmp	r0, #0
 8003e42:	f47f ae89 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003e46:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e48:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e4e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003e52:	443b      	add	r3, r7
 8003e54:	4699      	mov	r9, r3
 8003e56:	f040 8357 	bne.w	8004508 <_vfprintf_r+0x14a0>
 8003e5a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e5c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e5e:	4293      	cmp	r3, r2
 8003e60:	db49      	blt.n	8003ef6 <_vfprintf_r+0xe8e>
 8003e62:	f018 0f01 	tst.w	r8, #1
 8003e66:	d146      	bne.n	8003ef6 <_vfprintf_r+0xe8e>
 8003e68:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e6a:	18bd      	adds	r5, r7, r2
 8003e6c:	eba5 0509 	sub.w	r5, r5, r9
 8003e70:	1ad3      	subs	r3, r2, r3
 8003e72:	429d      	cmp	r5, r3
 8003e74:	bfa8      	it	ge
 8003e76:	461d      	movge	r5, r3
 8003e78:	2d00      	cmp	r5, #0
 8003e7a:	dd0d      	ble.n	8003e98 <_vfprintf_r+0xe30>
 8003e7c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003e7e:	f8cb 9000 	str.w	r9, [fp]
 8003e82:	3201      	adds	r2, #1
 8003e84:	442c      	add	r4, r5
 8003e86:	2a07      	cmp	r2, #7
 8003e88:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e8a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003e8e:	922b      	str	r2, [sp, #172]	; 0xac
 8003e90:	f300 8462 	bgt.w	8004758 <_vfprintf_r+0x16f0>
 8003e94:	f10b 0b08 	add.w	fp, fp, #8
 8003e98:	2d00      	cmp	r5, #0
 8003e9a:	bfac      	ite	ge
 8003e9c:	1b5d      	subge	r5, r3, r5
 8003e9e:	461d      	movlt	r5, r3
 8003ea0:	2d00      	cmp	r5, #0
 8003ea2:	f77f ab32 	ble.w	800350a <_vfprintf_r+0x4a2>
 8003ea6:	2d10      	cmp	r5, #16
 8003ea8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003eaa:	4bc5      	ldr	r3, [pc, #788]	; (80041c0 <_vfprintf_r+0x1158>)
 8003eac:	f340 80c4 	ble.w	8004038 <_vfprintf_r+0xfd0>
 8003eb0:	4619      	mov	r1, r3
 8003eb2:	2610      	movs	r6, #16
 8003eb4:	4623      	mov	r3, r4
 8003eb6:	9f03      	ldr	r7, [sp, #12]
 8003eb8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ebc:	460c      	mov	r4, r1
 8003ebe:	e005      	b.n	8003ecc <_vfprintf_r+0xe64>
 8003ec0:	f10b 0b08 	add.w	fp, fp, #8
 8003ec4:	3d10      	subs	r5, #16
 8003ec6:	2d10      	cmp	r5, #16
 8003ec8:	f340 80b3 	ble.w	8004032 <_vfprintf_r+0xfca>
 8003ecc:	3201      	adds	r2, #1
 8003ece:	3310      	adds	r3, #16
 8003ed0:	2a07      	cmp	r2, #7
 8003ed2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ed6:	e9cb 4600 	strd	r4, r6, [fp]
 8003eda:	ddf1      	ble.n	8003ec0 <_vfprintf_r+0xe58>
 8003edc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ede:	4649      	mov	r1, r9
 8003ee0:	4638      	mov	r0, r7
 8003ee2:	f003 f90b 	bl	80070fc <__sprint_r>
 8003ee6:	2800      	cmp	r0, #0
 8003ee8:	f47f ae38 	bne.w	8003b5c <_vfprintf_r+0xaf4>
 8003eec:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003ef0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ef4:	e7e6      	b.n	8003ec4 <_vfprintf_r+0xe5c>
 8003ef6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ef8:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003efa:	f8cb 1000 	str.w	r1, [fp]
 8003efe:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003f00:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f04:	3201      	adds	r2, #1
 8003f06:	440c      	add	r4, r1
 8003f08:	2a07      	cmp	r2, #7
 8003f0a:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f0c:	922b      	str	r2, [sp, #172]	; 0xac
 8003f0e:	f300 828c 	bgt.w	800442a <_vfprintf_r+0x13c2>
 8003f12:	f10b 0b08 	add.w	fp, fp, #8
 8003f16:	e7a7      	b.n	8003e68 <_vfprintf_r+0xe00>
 8003f18:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003f1c:	f002 faa4 	bl	8006468 <__retarget_lock_release_recursive>
 8003f20:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f24:	e628      	b.n	8003b78 <_vfprintf_r+0xb10>
 8003f26:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f28:	9907      	ldr	r1, [sp, #28]
 8003f2a:	9803      	ldr	r0, [sp, #12]
 8003f2c:	f003 f8e6 	bl	80070fc <__sprint_r>
 8003f30:	2800      	cmp	r0, #0
 8003f32:	f47f ae11 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003f36:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003f3a:	ae2d      	add	r6, sp, #180	; 0xb4
 8003f3c:	e638      	b.n	8003bb0 <_vfprintf_r+0xb48>
 8003f3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f40:	9907      	ldr	r1, [sp, #28]
 8003f42:	9803      	ldr	r0, [sp, #12]
 8003f44:	f003 f8da 	bl	80070fc <__sprint_r>
 8003f48:	2800      	cmp	r0, #0
 8003f4a:	f47f ae05 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8003f4e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003f52:	ae2d      	add	r6, sp, #180	; 0xb4
 8003f54:	930b      	str	r3, [sp, #44]	; 0x2c
 8003f56:	e638      	b.n	8003bca <_vfprintf_r+0xb62>
 8003f58:	6814      	ldr	r4, [r2, #0]
 8003f5a:	9308      	str	r3, [sp, #32]
 8003f5c:	2500      	movs	r5, #0
 8003f5e:	f7ff bb95 	b.w	800368c <_vfprintf_r+0x624>
 8003f62:	6814      	ldr	r4, [r2, #0]
 8003f64:	9308      	str	r3, [sp, #32]
 8003f66:	2500      	movs	r5, #0
 8003f68:	f7ff b9ae 	b.w	80032c8 <_vfprintf_r+0x260>
 8003f6c:	680c      	ldr	r4, [r1, #0]
 8003f6e:	9208      	str	r2, [sp, #32]
 8003f70:	17e5      	asrs	r5, r4, #31
 8003f72:	4620      	mov	r0, r4
 8003f74:	4629      	mov	r1, r5
 8003f76:	f7ff b9d2 	b.w	800331e <_vfprintf_r+0x2b6>
 8003f7a:	6814      	ldr	r4, [r2, #0]
 8003f7c:	9108      	str	r1, [sp, #32]
 8003f7e:	2201      	movs	r2, #1
 8003f80:	2500      	movs	r5, #0
 8003f82:	f7ff bb32 	b.w	80035ea <_vfprintf_r+0x582>
 8003f86:	2a01      	cmp	r2, #1
 8003f88:	f47f ab3c 	bne.w	8003604 <_vfprintf_r+0x59c>
 8003f8c:	e68f      	b.n	8003cae <_vfprintf_r+0xc46>
 8003f8e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003f92:	2200      	movs	r2, #0
 8003f94:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003f98:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003f9c:	af56      	add	r7, sp, #344	; 0x158
 8003f9e:	4692      	mov	sl, r2
 8003fa0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003fa4:	461e      	mov	r6, r3
 8003fa6:	e00a      	b.n	8003fbe <_vfprintf_r+0xf56>
 8003fa8:	2300      	movs	r3, #0
 8003faa:	4620      	mov	r0, r4
 8003fac:	4629      	mov	r1, r5
 8003fae:	220a      	movs	r2, #10
 8003fb0:	f7fc fd14 	bl	80009dc <__aeabi_uldivmod>
 8003fb4:	4604      	mov	r4, r0
 8003fb6:	460d      	mov	r5, r1
 8003fb8:	ea54 0305 	orrs.w	r3, r4, r5
 8003fbc:	d029      	beq.n	8004012 <_vfprintf_r+0xfaa>
 8003fbe:	220a      	movs	r2, #10
 8003fc0:	2300      	movs	r3, #0
 8003fc2:	4620      	mov	r0, r4
 8003fc4:	4629      	mov	r1, r5
 8003fc6:	f7fc fd09 	bl	80009dc <__aeabi_uldivmod>
 8003fca:	3230      	adds	r2, #48	; 0x30
 8003fcc:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003fd0:	f10a 0a01 	add.w	sl, sl, #1
 8003fd4:	3f01      	subs	r7, #1
 8003fd6:	2e00      	cmp	r6, #0
 8003fd8:	d0e6      	beq.n	8003fa8 <_vfprintf_r+0xf40>
 8003fda:	f898 3000 	ldrb.w	r3, [r8]
 8003fde:	459a      	cmp	sl, r3
 8003fe0:	d1e2      	bne.n	8003fa8 <_vfprintf_r+0xf40>
 8003fe2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003fe6:	d0df      	beq.n	8003fa8 <_vfprintf_r+0xf40>
 8003fe8:	2d00      	cmp	r5, #0
 8003fea:	bf08      	it	eq
 8003fec:	2c0a      	cmpeq	r4, #10
 8003fee:	d3db      	bcc.n	8003fa8 <_vfprintf_r+0xf40>
 8003ff0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003ff2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003ff4:	1aff      	subs	r7, r7, r3
 8003ff6:	461a      	mov	r2, r3
 8003ff8:	4638      	mov	r0, r7
 8003ffa:	f7ff f803 	bl	8003004 <strncpy>
 8003ffe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8004002:	2b00      	cmp	r3, #0
 8004004:	f000 8496 	beq.w	8004934 <_vfprintf_r+0x18cc>
 8004008:	f108 0801 	add.w	r8, r8, #1
 800400c:	f04f 0a00 	mov.w	sl, #0
 8004010:	e7ca      	b.n	8003fa8 <_vfprintf_r+0xf40>
 8004012:	9b04      	ldr	r3, [sp, #16]
 8004014:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004018:	1bdb      	subs	r3, r3, r7
 800401a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800401e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8004020:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004024:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8004028:	9309      	str	r3, [sp, #36]	; 0x24
 800402a:	f7ff b99e 	b.w	800336a <_vfprintf_r+0x302>
 800402e:	46c1      	mov	r9, r8
 8004030:	e594      	b.n	8003b5c <_vfprintf_r+0xaf4>
 8004032:	4621      	mov	r1, r4
 8004034:	461c      	mov	r4, r3
 8004036:	460b      	mov	r3, r1
 8004038:	3201      	adds	r2, #1
 800403a:	442c      	add	r4, r5
 800403c:	2a07      	cmp	r2, #7
 800403e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004042:	e9cb 3500 	strd	r3, r5, [fp]
 8004046:	f77f aa5e 	ble.w	8003506 <_vfprintf_r+0x49e>
 800404a:	e5ee      	b.n	8003c2a <_vfprintf_r+0xbc2>
 800404c:	f018 0f10 	tst.w	r8, #16
 8004050:	f040 80f8 	bne.w	8004244 <_vfprintf_r+0x11dc>
 8004054:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004058:	f000 8351 	beq.w	80046fe <_vfprintf_r+0x1696>
 800405c:	9a05      	ldr	r2, [sp, #20]
 800405e:	801a      	strh	r2, [r3, #0]
 8004060:	4657      	mov	r7, sl
 8004062:	f7ff baa7 	b.w	80035b4 <_vfprintf_r+0x54c>
 8004066:	aa2a      	add	r2, sp, #168	; 0xa8
 8004068:	9907      	ldr	r1, [sp, #28]
 800406a:	9803      	ldr	r0, [sp, #12]
 800406c:	f003 f846 	bl	80070fc <__sprint_r>
 8004070:	2800      	cmp	r0, #0
 8004072:	f47f ad71 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004076:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004078:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800407c:	f7ff b9f5 	b.w	800346a <_vfprintf_r+0x402>
 8004080:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004084:	4602      	mov	r2, r0
 8004086:	460b      	mov	r3, r1
 8004088:	f7fd f822 	bl	80010d0 <__aeabi_dcmpun>
 800408c:	2800      	cmp	r0, #0
 800408e:	f040 8491 	bne.w	80049b4 <_vfprintf_r+0x194c>
 8004092:	2e61      	cmp	r6, #97	; 0x61
 8004094:	f000 8111 	beq.w	80042ba <_vfprintf_r+0x1252>
 8004098:	2e41      	cmp	r6, #65	; 0x41
 800409a:	f000 8377 	beq.w	800478c <_vfprintf_r+0x1724>
 800409e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80040a2:	f026 0220 	bic.w	r2, r6, #32
 80040a6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80040aa:	930e      	str	r3, [sp, #56]	; 0x38
 80040ac:	9204      	str	r2, [sp, #16]
 80040ae:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80040b0:	f000 842d 	beq.w	800490e <_vfprintf_r+0x18a6>
 80040b4:	2a47      	cmp	r2, #71	; 0x47
 80040b6:	f000 8424 	beq.w	8004902 <_vfprintf_r+0x189a>
 80040ba:	2b00      	cmp	r3, #0
 80040bc:	f2c0 82f9 	blt.w	80046b2 <_vfprintf_r+0x164a>
 80040c0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80040c4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80040c8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80040cc:	2e66      	cmp	r6, #102	; 0x66
 80040ce:	f000 83eb 	beq.w	80048a8 <_vfprintf_r+0x1840>
 80040d2:	2e46      	cmp	r6, #70	; 0x46
 80040d4:	f000 847e 	beq.w	80049d4 <_vfprintf_r+0x196c>
 80040d8:	9b04      	ldr	r3, [sp, #16]
 80040da:	9803      	ldr	r0, [sp, #12]
 80040dc:	2b45      	cmp	r3, #69	; 0x45
 80040de:	bf0c      	ite	eq
 80040e0:	f109 0501 	addeq.w	r5, r9, #1
 80040e4:	464d      	movne	r5, r9
 80040e6:	aa28      	add	r2, sp, #160	; 0xa0
 80040e8:	ab25      	add	r3, sp, #148	; 0x94
 80040ea:	e9cd 3200 	strd	r3, r2, [sp]
 80040ee:	2102      	movs	r1, #2
 80040f0:	ab24      	add	r3, sp, #144	; 0x90
 80040f2:	462a      	mov	r2, r5
 80040f4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040f8:	f000 fe4e 	bl	8004d98 <_dtoa_r>
 80040fc:	2e67      	cmp	r6, #103	; 0x67
 80040fe:	4607      	mov	r7, r0
 8004100:	f040 849c 	bne.w	8004a3c <_vfprintf_r+0x19d4>
 8004104:	f018 0f01 	tst.w	r8, #1
 8004108:	f040 83f9 	bne.w	80048fe <_vfprintf_r+0x1896>
 800410c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800410e:	4640      	mov	r0, r8
 8004110:	1bdb      	subs	r3, r3, r7
 8004112:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004116:	9310      	str	r3, [sp, #64]	; 0x40
 8004118:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800411a:	9311      	str	r3, [sp, #68]	; 0x44
 800411c:	9b04      	ldr	r3, [sp, #16]
 800411e:	2b47      	cmp	r3, #71	; 0x47
 8004120:	f000 81e7 	beq.w	80044f2 <_vfprintf_r+0x148a>
 8004124:	9b04      	ldr	r3, [sp, #16]
 8004126:	2b46      	cmp	r3, #70	; 0x46
 8004128:	f000 8300 	beq.w	800472c <_vfprintf_r+0x16c4>
 800412c:	9904      	ldr	r1, [sp, #16]
 800412e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004130:	b2f2      	uxtb	r2, r6
 8004132:	2941      	cmp	r1, #65	; 0x41
 8004134:	bf08      	it	eq
 8004136:	320f      	addeq	r2, #15
 8004138:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800413c:	bf06      	itte	eq
 800413e:	b2d2      	uxtbeq	r2, r2
 8004140:	2101      	moveq	r1, #1
 8004142:	2100      	movne	r1, #0
 8004144:	2b00      	cmp	r3, #0
 8004146:	9324      	str	r3, [sp, #144]	; 0x90
 8004148:	bfb8      	it	lt
 800414a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800414c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004150:	bfba      	itte	lt
 8004152:	f1c3 0301 	rsblt	r3, r3, #1
 8004156:	222d      	movlt	r2, #45	; 0x2d
 8004158:	222b      	movge	r2, #43	; 0x2b
 800415a:	2b09      	cmp	r3, #9
 800415c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004160:	f300 83f9 	bgt.w	8004956 <_vfprintf_r+0x18ee>
 8004164:	2900      	cmp	r1, #0
 8004166:	f040 8487 	bne.w	8004a78 <_vfprintf_r+0x1a10>
 800416a:	2230      	movs	r2, #48	; 0x30
 800416c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004170:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004174:	3330      	adds	r3, #48	; 0x30
 8004176:	7013      	strb	r3, [r2, #0]
 8004178:	1c53      	adds	r3, r2, #1
 800417a:	aa26      	add	r2, sp, #152	; 0x98
 800417c:	1a9b      	subs	r3, r3, r2
 800417e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004180:	9319      	str	r3, [sp, #100]	; 0x64
 8004182:	2a01      	cmp	r2, #1
 8004184:	4413      	add	r3, r2
 8004186:	9309      	str	r3, [sp, #36]	; 0x24
 8004188:	f340 8442 	ble.w	8004a10 <_vfprintf_r+0x19a8>
 800418c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800418e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004190:	4413      	add	r3, r2
 8004192:	9309      	str	r3, [sp, #36]	; 0x24
 8004194:	2300      	movs	r3, #0
 8004196:	930f      	str	r3, [sp, #60]	; 0x3c
 8004198:	9314      	str	r3, [sp, #80]	; 0x50
 800419a:	9311      	str	r3, [sp, #68]	; 0x44
 800419c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800419e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80041a2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80041a6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80041aa:	9304      	str	r3, [sp, #16]
 80041ac:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80041ae:	2b00      	cmp	r3, #0
 80041b0:	f040 8275 	bne.w	800469e <_vfprintf_r+0x1636>
 80041b4:	4699      	mov	r9, r3
 80041b6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041ba:	f7ff b8e2 	b.w	8003382 <_vfprintf_r+0x31a>
 80041be:	bf00      	nop
 80041c0:	080077dc 	.word	0x080077dc
 80041c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80041c6:	49bd      	ldr	r1, [pc, #756]	; (80044bc <_vfprintf_r+0x1454>)
 80041c8:	f8cb 1000 	str.w	r1, [fp]
 80041cc:	3201      	adds	r2, #1
 80041ce:	3401      	adds	r4, #1
 80041d0:	2101      	movs	r1, #1
 80041d2:	2a07      	cmp	r2, #7
 80041d4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80041d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80041dc:	dc60      	bgt.n	80042a0 <_vfprintf_r+0x1238>
 80041de:	f10b 0b08 	add.w	fp, fp, #8
 80041e2:	b92b      	cbnz	r3, 80041f0 <_vfprintf_r+0x1188>
 80041e4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80041e6:	b91a      	cbnz	r2, 80041f0 <_vfprintf_r+0x1188>
 80041e8:	f018 0f01 	tst.w	r8, #1
 80041ec:	f43f a98d 	beq.w	800350a <_vfprintf_r+0x4a2>
 80041f0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80041f2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80041f4:	f8cb 1000 	str.w	r1, [fp]
 80041f8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80041fa:	f8cb 1004 	str.w	r1, [fp, #4]
 80041fe:	3201      	adds	r2, #1
 8004200:	440c      	add	r4, r1
 8004202:	2a07      	cmp	r2, #7
 8004204:	942c      	str	r4, [sp, #176]	; 0xb0
 8004206:	922b      	str	r2, [sp, #172]	; 0xac
 8004208:	f300 8282 	bgt.w	8004710 <_vfprintf_r+0x16a8>
 800420c:	f10b 0b08 	add.w	fp, fp, #8
 8004210:	2b00      	cmp	r3, #0
 8004212:	f2c0 82e7 	blt.w	80047e4 <_vfprintf_r+0x177c>
 8004216:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004218:	3201      	adds	r2, #1
 800421a:	441c      	add	r4, r3
 800421c:	2a07      	cmp	r2, #7
 800421e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004222:	e9cb 7300 	strd	r7, r3, [fp]
 8004226:	f77f a96e 	ble.w	8003506 <_vfprintf_r+0x49e>
 800422a:	e4fe      	b.n	8003c2a <_vfprintf_r+0xbc2>
 800422c:	aa2a      	add	r2, sp, #168	; 0xa8
 800422e:	9907      	ldr	r1, [sp, #28]
 8004230:	9803      	ldr	r0, [sp, #12]
 8004232:	f002 ff63 	bl	80070fc <__sprint_r>
 8004236:	2800      	cmp	r0, #0
 8004238:	f47f ac8e 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 800423c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004240:	f7ff bbf0 	b.w	8003a24 <_vfprintf_r+0x9bc>
 8004244:	9a05      	ldr	r2, [sp, #20]
 8004246:	601a      	str	r2, [r3, #0]
 8004248:	4657      	mov	r7, sl
 800424a:	f7ff b9b3 	b.w	80035b4 <_vfprintf_r+0x54c>
 800424e:	8814      	ldrh	r4, [r2, #0]
 8004250:	9108      	str	r1, [sp, #32]
 8004252:	2500      	movs	r5, #0
 8004254:	2201      	movs	r2, #1
 8004256:	f7ff b9c8 	b.w	80035ea <_vfprintf_r+0x582>
 800425a:	8814      	ldrh	r4, [r2, #0]
 800425c:	9308      	str	r3, [sp, #32]
 800425e:	2500      	movs	r5, #0
 8004260:	f7ff ba14 	b.w	800368c <_vfprintf_r+0x624>
 8004264:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004268:	9208      	str	r2, [sp, #32]
 800426a:	17e5      	asrs	r5, r4, #31
 800426c:	4620      	mov	r0, r4
 800426e:	4629      	mov	r1, r5
 8004270:	f7ff b855 	b.w	800331e <_vfprintf_r+0x2b6>
 8004274:	8814      	ldrh	r4, [r2, #0]
 8004276:	9308      	str	r3, [sp, #32]
 8004278:	2500      	movs	r5, #0
 800427a:	f7ff b825 	b.w	80032c8 <_vfprintf_r+0x260>
 800427e:	222d      	movs	r2, #45	; 0x2d
 8004280:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004284:	f7ff baa2 	b.w	80037cc <_vfprintf_r+0x764>
 8004288:	aa2a      	add	r2, sp, #168	; 0xa8
 800428a:	9907      	ldr	r1, [sp, #28]
 800428c:	9803      	ldr	r0, [sp, #12]
 800428e:	f002 ff35 	bl	80070fc <__sprint_r>
 8004292:	2800      	cmp	r0, #0
 8004294:	f47f ac60 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004298:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800429a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800429e:	e534      	b.n	8003d0a <_vfprintf_r+0xca2>
 80042a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80042a2:	9907      	ldr	r1, [sp, #28]
 80042a4:	9803      	ldr	r0, [sp, #12]
 80042a6:	f002 ff29 	bl	80070fc <__sprint_r>
 80042aa:	2800      	cmp	r0, #0
 80042ac:	f47f ac54 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 80042b0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80042b2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80042b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80042b8:	e793      	b.n	80041e2 <_vfprintf_r+0x117a>
 80042ba:	2330      	movs	r3, #48	; 0x30
 80042bc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80042c0:	2378      	movs	r3, #120	; 0x78
 80042c2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80042c6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80042ca:	f048 0402 	orr.w	r4, r8, #2
 80042ce:	f300 82b0 	bgt.w	8004832 <_vfprintf_r+0x17ca>
 80042d2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80042d6:	930e      	str	r3, [sp, #56]	; 0x38
 80042d8:	f026 0320 	bic.w	r3, r6, #32
 80042dc:	9304      	str	r3, [sp, #16]
 80042de:	2200      	movs	r2, #0
 80042e0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80042e2:	920a      	str	r2, [sp, #40]	; 0x28
 80042e4:	46a0      	mov	r8, r4
 80042e6:	af3d      	add	r7, sp, #244	; 0xf4
 80042e8:	2b00      	cmp	r3, #0
 80042ea:	f2c0 81e3 	blt.w	80046b4 <_vfprintf_r+0x164c>
 80042ee:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80042f2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80042f6:	2300      	movs	r3, #0
 80042f8:	930b      	str	r3, [sp, #44]	; 0x2c
 80042fa:	2e61      	cmp	r6, #97	; 0x61
 80042fc:	f000 8255 	beq.w	80047aa <_vfprintf_r+0x1742>
 8004300:	2e41      	cmp	r6, #65	; 0x41
 8004302:	f47f aee3 	bne.w	80040cc <_vfprintf_r+0x1064>
 8004306:	a824      	add	r0, sp, #144	; 0x90
 8004308:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800430c:	f002 fe42 	bl	8006f94 <frexp>
 8004310:	2200      	movs	r2, #0
 8004312:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004316:	ec51 0b10 	vmov	r0, r1, d0
 800431a:	f7fc f92d 	bl	8000578 <__aeabi_dmul>
 800431e:	2200      	movs	r2, #0
 8004320:	2300      	movs	r3, #0
 8004322:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004326:	f7fc fea1 	bl	800106c <__aeabi_dcmpeq>
 800432a:	2800      	cmp	r0, #0
 800432c:	f040 8305 	bne.w	800493a <_vfprintf_r+0x18d2>
 8004330:	4b63      	ldr	r3, [pc, #396]	; (80044c0 <_vfprintf_r+0x1458>)
 8004332:	9309      	str	r3, [sp, #36]	; 0x24
 8004334:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004338:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800433c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004340:	9721      	str	r7, [sp, #132]	; 0x84
 8004342:	46b9      	mov	r9, r7
 8004344:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004348:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800434c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004350:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004354:	e003      	b.n	800435e <_vfprintf_r+0x12f6>
 8004356:	f7fc fe89 	bl	800106c <__aeabi_dcmpeq>
 800435a:	bb20      	cbnz	r0, 80043a6 <_vfprintf_r+0x133e>
 800435c:	46a9      	mov	r9, r5
 800435e:	2200      	movs	r2, #0
 8004360:	4b58      	ldr	r3, [pc, #352]	; (80044c4 <_vfprintf_r+0x145c>)
 8004362:	4630      	mov	r0, r6
 8004364:	4639      	mov	r1, r7
 8004366:	f7fc f907 	bl	8000578 <__aeabi_dmul>
 800436a:	460f      	mov	r7, r1
 800436c:	4606      	mov	r6, r0
 800436e:	f7fc fec5 	bl	80010fc <__aeabi_d2iz>
 8004372:	4680      	mov	r8, r0
 8004374:	f7fc f896 	bl	80004a4 <__aeabi_i2d>
 8004378:	4602      	mov	r2, r0
 800437a:	460b      	mov	r3, r1
 800437c:	4630      	mov	r0, r6
 800437e:	4639      	mov	r1, r7
 8004380:	f7fb ff42 	bl	8000208 <__aeabi_dsub>
 8004384:	464d      	mov	r5, r9
 8004386:	f81a c008 	ldrb.w	ip, [sl, r8]
 800438a:	f805 cb01 	strb.w	ip, [r5], #1
 800438e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004392:	46a3      	mov	fp, r4
 8004394:	4606      	mov	r6, r0
 8004396:	460f      	mov	r7, r1
 8004398:	f04f 0200 	mov.w	r2, #0
 800439c:	f04f 0300 	mov.w	r3, #0
 80043a0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80043a4:	d1d7      	bne.n	8004356 <_vfprintf_r+0x12ee>
 80043a6:	4630      	mov	r0, r6
 80043a8:	4639      	mov	r1, r7
 80043aa:	2200      	movs	r2, #0
 80043ac:	4b46      	ldr	r3, [pc, #280]	; (80044c8 <_vfprintf_r+0x1460>)
 80043ae:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80043b2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80043b4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80043b8:	4644      	mov	r4, r8
 80043ba:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80043be:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80043c2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80043c6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80043ca:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80043cc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80043d0:	f7fc fe74 	bl	80010bc <__aeabi_dcmpgt>
 80043d4:	2800      	cmp	r0, #0
 80043d6:	f040 8176 	bne.w	80046c6 <_vfprintf_r+0x165e>
 80043da:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80043de:	2200      	movs	r2, #0
 80043e0:	4b39      	ldr	r3, [pc, #228]	; (80044c8 <_vfprintf_r+0x1460>)
 80043e2:	f7fc fe43 	bl	800106c <__aeabi_dcmpeq>
 80043e6:	b110      	cbz	r0, 80043ee <_vfprintf_r+0x1386>
 80043e8:	07e2      	lsls	r2, r4, #31
 80043ea:	f100 816c 	bmi.w	80046c6 <_vfprintf_r+0x165e>
 80043ee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80043f0:	2b00      	cmp	r3, #0
 80043f2:	db07      	blt.n	8004404 <_vfprintf_r+0x139c>
 80043f4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80043f6:	3301      	adds	r3, #1
 80043f8:	442b      	add	r3, r5
 80043fa:	2230      	movs	r2, #48	; 0x30
 80043fc:	f805 2b01 	strb.w	r2, [r5], #1
 8004400:	42ab      	cmp	r3, r5
 8004402:	d1fb      	bne.n	80043fc <_vfprintf_r+0x1394>
 8004404:	1beb      	subs	r3, r5, r7
 8004406:	4640      	mov	r0, r8
 8004408:	9310      	str	r3, [sp, #64]	; 0x40
 800440a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800440e:	e683      	b.n	8004118 <_vfprintf_r+0x10b0>
 8004410:	f8cd 9010 	str.w	r9, [sp, #16]
 8004414:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004418:	9408      	str	r4, [sp, #32]
 800441a:	4681      	mov	r9, r0
 800441c:	900f      	str	r0, [sp, #60]	; 0x3c
 800441e:	9014      	str	r0, [sp, #80]	; 0x50
 8004420:	9011      	str	r0, [sp, #68]	; 0x44
 8004422:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004426:	f7fe bfac 	b.w	8003382 <_vfprintf_r+0x31a>
 800442a:	aa2a      	add	r2, sp, #168	; 0xa8
 800442c:	9907      	ldr	r1, [sp, #28]
 800442e:	9803      	ldr	r0, [sp, #12]
 8004430:	f002 fe64 	bl	80070fc <__sprint_r>
 8004434:	2800      	cmp	r0, #0
 8004436:	f47f ab8f 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 800443a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800443c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800443e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004442:	e511      	b.n	8003e68 <_vfprintf_r+0xe00>
 8004444:	4252      	negs	r2, r2
 8004446:	9206      	str	r2, [sp, #24]
 8004448:	9308      	str	r3, [sp, #32]
 800444a:	f7ff b96d 	b.w	8003728 <_vfprintf_r+0x6c0>
 800444e:	4614      	mov	r4, r2
 8004450:	4632      	mov	r2, r6
 8004452:	461e      	mov	r6, r3
 8004454:	4613      	mov	r3, r2
 8004456:	462a      	mov	r2, r5
 8004458:	3201      	adds	r2, #1
 800445a:	9209      	str	r2, [sp, #36]	; 0x24
 800445c:	f106 0208 	add.w	r2, r6, #8
 8004460:	e9c6 3900 	strd	r3, r9, [r6]
 8004464:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004466:	932b      	str	r3, [sp, #172]	; 0xac
 8004468:	444c      	add	r4, r9
 800446a:	2b07      	cmp	r3, #7
 800446c:	942c      	str	r4, [sp, #176]	; 0xb0
 800446e:	f73f acc3 	bgt.w	8003df8 <_vfprintf_r+0xd90>
 8004472:	3301      	adds	r3, #1
 8004474:	9309      	str	r3, [sp, #36]	; 0x24
 8004476:	f102 0b08 	add.w	fp, r2, #8
 800447a:	4616      	mov	r6, r2
 800447c:	f7ff bbca 	b.w	8003c14 <_vfprintf_r+0xbac>
 8004480:	aa2a      	add	r2, sp, #168	; 0xa8
 8004482:	9907      	ldr	r1, [sp, #28]
 8004484:	9803      	ldr	r0, [sp, #12]
 8004486:	f002 fe39 	bl	80070fc <__sprint_r>
 800448a:	2800      	cmp	r0, #0
 800448c:	f47f ab64 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004490:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004492:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004496:	f7ff bade 	b.w	8003a56 <_vfprintf_r+0x9ee>
 800449a:	464b      	mov	r3, r9
 800449c:	2b06      	cmp	r3, #6
 800449e:	bf28      	it	cs
 80044a0:	2306      	movcs	r3, #6
 80044a2:	46b9      	mov	r9, r7
 80044a4:	970f      	str	r7, [sp, #60]	; 0x3c
 80044a6:	9714      	str	r7, [sp, #80]	; 0x50
 80044a8:	9711      	str	r7, [sp, #68]	; 0x44
 80044aa:	970a      	str	r7, [sp, #40]	; 0x28
 80044ac:	463a      	mov	r2, r7
 80044ae:	9304      	str	r3, [sp, #16]
 80044b0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80044b4:	4f05      	ldr	r7, [pc, #20]	; (80044cc <_vfprintf_r+0x1464>)
 80044b6:	f7fe bf64 	b.w	8003382 <_vfprintf_r+0x31a>
 80044ba:	bf00      	nop
 80044bc:	080077c8 	.word	0x080077c8
 80044c0:	080077ac 	.word	0x080077ac
 80044c4:	40300000 	.word	0x40300000
 80044c8:	3fe00000 	.word	0x3fe00000
 80044cc:	080077c0 	.word	0x080077c0
 80044d0:	460c      	mov	r4, r1
 80044d2:	4639      	mov	r1, r7
 80044d4:	465f      	mov	r7, fp
 80044d6:	469b      	mov	fp, r3
 80044d8:	460b      	mov	r3, r1
 80044da:	3201      	adds	r2, #1
 80044dc:	442c      	add	r4, r5
 80044de:	2a07      	cmp	r2, #7
 80044e0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80044e4:	e9cb 3500 	strd	r3, r5, [fp]
 80044e8:	f73f aca5 	bgt.w	8003e36 <_vfprintf_r+0xdce>
 80044ec:	f10b 0b08 	add.w	fp, fp, #8
 80044f0:	e4ac      	b.n	8003e4c <_vfprintf_r+0xde4>
 80044f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044f4:	1cda      	adds	r2, r3, #3
 80044f6:	db02      	blt.n	80044fe <_vfprintf_r+0x1496>
 80044f8:	4599      	cmp	r9, r3
 80044fa:	f280 80b5 	bge.w	8004668 <_vfprintf_r+0x1600>
 80044fe:	3e02      	subs	r6, #2
 8004500:	f026 0320 	bic.w	r3, r6, #32
 8004504:	9304      	str	r3, [sp, #16]
 8004506:	e611      	b.n	800412c <_vfprintf_r+0x10c4>
 8004508:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800450a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800450e:	465a      	mov	r2, fp
 8004510:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8004514:	18fb      	adds	r3, r7, r3
 8004516:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800451a:	970c      	str	r7, [sp, #48]	; 0x30
 800451c:	4eaf      	ldr	r6, [pc, #700]	; (80047dc <_vfprintf_r+0x1774>)
 800451e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8004522:	9309      	str	r3, [sp, #36]	; 0x24
 8004524:	464f      	mov	r7, r9
 8004526:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800452a:	4621      	mov	r1, r4
 800452c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800452e:	2b00      	cmp	r3, #0
 8004530:	d05b      	beq.n	80045ea <_vfprintf_r+0x1582>
 8004532:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004534:	2b00      	cmp	r3, #0
 8004536:	d154      	bne.n	80045e2 <_vfprintf_r+0x157a>
 8004538:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800453a:	3b01      	subs	r3, #1
 800453c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004540:	9314      	str	r3, [sp, #80]	; 0x50
 8004542:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004544:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004546:	6010      	str	r0, [r2, #0]
 8004548:	3301      	adds	r3, #1
 800454a:	4459      	add	r1, fp
 800454c:	2b07      	cmp	r3, #7
 800454e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004550:	f8c2 b004 	str.w	fp, [r2, #4]
 8004554:	932b      	str	r3, [sp, #172]	; 0xac
 8004556:	dc68      	bgt.n	800462a <_vfprintf_r+0x15c2>
 8004558:	3208      	adds	r2, #8
 800455a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800455c:	f898 3000 	ldrb.w	r3, [r8]
 8004560:	1bc5      	subs	r5, r0, r7
 8004562:	429d      	cmp	r5, r3
 8004564:	bfa8      	it	ge
 8004566:	461d      	movge	r5, r3
 8004568:	2d00      	cmp	r5, #0
 800456a:	dd0b      	ble.n	8004584 <_vfprintf_r+0x151c>
 800456c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800456e:	6017      	str	r7, [r2, #0]
 8004570:	3301      	adds	r3, #1
 8004572:	4429      	add	r1, r5
 8004574:	2b07      	cmp	r3, #7
 8004576:	912c      	str	r1, [sp, #176]	; 0xb0
 8004578:	6055      	str	r5, [r2, #4]
 800457a:	932b      	str	r3, [sp, #172]	; 0xac
 800457c:	dc5e      	bgt.n	800463c <_vfprintf_r+0x15d4>
 800457e:	f898 3000 	ldrb.w	r3, [r8]
 8004582:	3208      	adds	r2, #8
 8004584:	2d00      	cmp	r5, #0
 8004586:	bfac      	ite	ge
 8004588:	1b5d      	subge	r5, r3, r5
 800458a:	461d      	movlt	r5, r3
 800458c:	2d00      	cmp	r5, #0
 800458e:	dd26      	ble.n	80045de <_vfprintf_r+0x1576>
 8004590:	2d10      	cmp	r5, #16
 8004592:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004594:	dd3c      	ble.n	8004610 <_vfprintf_r+0x15a8>
 8004596:	2410      	movs	r4, #16
 8004598:	e003      	b.n	80045a2 <_vfprintf_r+0x153a>
 800459a:	3208      	adds	r2, #8
 800459c:	3d10      	subs	r5, #16
 800459e:	2d10      	cmp	r5, #16
 80045a0:	dd36      	ble.n	8004610 <_vfprintf_r+0x15a8>
 80045a2:	3001      	adds	r0, #1
 80045a4:	3110      	adds	r1, #16
 80045a6:	2807      	cmp	r0, #7
 80045a8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80045ac:	e9c2 6400 	strd	r6, r4, [r2]
 80045b0:	ddf3      	ble.n	800459a <_vfprintf_r+0x1532>
 80045b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80045b4:	4651      	mov	r1, sl
 80045b6:	4648      	mov	r0, r9
 80045b8:	f002 fda0 	bl	80070fc <__sprint_r>
 80045bc:	2800      	cmp	r0, #0
 80045be:	d150      	bne.n	8004662 <_vfprintf_r+0x15fa>
 80045c0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80045c4:	aa2d      	add	r2, sp, #180	; 0xb4
 80045c6:	e7e9      	b.n	800459c <_vfprintf_r+0x1534>
 80045c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ca:	4651      	mov	r1, sl
 80045cc:	4648      	mov	r0, r9
 80045ce:	f002 fd95 	bl	80070fc <__sprint_r>
 80045d2:	2800      	cmp	r0, #0
 80045d4:	d145      	bne.n	8004662 <_vfprintf_r+0x15fa>
 80045d6:	f898 3000 	ldrb.w	r3, [r8]
 80045da:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80045dc:	aa2d      	add	r2, sp, #180	; 0xb4
 80045de:	441f      	add	r7, r3
 80045e0:	e7a4      	b.n	800452c <_vfprintf_r+0x14c4>
 80045e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80045e4:	3b01      	subs	r3, #1
 80045e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80045e8:	e7ab      	b.n	8004542 <_vfprintf_r+0x14da>
 80045ea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80045ec:	2b00      	cmp	r3, #0
 80045ee:	d1f8      	bne.n	80045e2 <_vfprintf_r+0x157a>
 80045f0:	46b9      	mov	r9, r7
 80045f2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80045f4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80045f6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80045fa:	18fb      	adds	r3, r7, r3
 80045fc:	4599      	cmp	r9, r3
 80045fe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8004602:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004606:	4693      	mov	fp, r2
 8004608:	460c      	mov	r4, r1
 800460a:	bf28      	it	cs
 800460c:	4699      	movcs	r9, r3
 800460e:	e424      	b.n	8003e5a <_vfprintf_r+0xdf2>
 8004610:	3001      	adds	r0, #1
 8004612:	4429      	add	r1, r5
 8004614:	2807      	cmp	r0, #7
 8004616:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800461a:	e9c2 6500 	strd	r6, r5, [r2]
 800461e:	dcd3      	bgt.n	80045c8 <_vfprintf_r+0x1560>
 8004620:	f898 3000 	ldrb.w	r3, [r8]
 8004624:	3208      	adds	r2, #8
 8004626:	441f      	add	r7, r3
 8004628:	e780      	b.n	800452c <_vfprintf_r+0x14c4>
 800462a:	aa2a      	add	r2, sp, #168	; 0xa8
 800462c:	4651      	mov	r1, sl
 800462e:	4648      	mov	r0, r9
 8004630:	f002 fd64 	bl	80070fc <__sprint_r>
 8004634:	b9a8      	cbnz	r0, 8004662 <_vfprintf_r+0x15fa>
 8004636:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004638:	aa2d      	add	r2, sp, #180	; 0xb4
 800463a:	e78e      	b.n	800455a <_vfprintf_r+0x14f2>
 800463c:	aa2a      	add	r2, sp, #168	; 0xa8
 800463e:	4651      	mov	r1, sl
 8004640:	4648      	mov	r0, r9
 8004642:	f002 fd5b 	bl	80070fc <__sprint_r>
 8004646:	b960      	cbnz	r0, 8004662 <_vfprintf_r+0x15fa>
 8004648:	f898 3000 	ldrb.w	r3, [r8]
 800464c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800464e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004650:	e798      	b.n	8004584 <_vfprintf_r+0x151c>
 8004652:	4638      	mov	r0, r7
 8004654:	f7fc fbf4 	bl	8000e40 <strlen>
 8004658:	46a9      	mov	r9, r5
 800465a:	4603      	mov	r3, r0
 800465c:	9009      	str	r0, [sp, #36]	; 0x24
 800465e:	f7ff b8f4 	b.w	800384a <_vfprintf_r+0x7e2>
 8004662:	46d1      	mov	r9, sl
 8004664:	f7ff ba7a 	b.w	8003b5c <_vfprintf_r+0xaf4>
 8004668:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800466a:	4619      	mov	r1, r3
 800466c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800466e:	4299      	cmp	r1, r3
 8004670:	f300 8082 	bgt.w	8004778 <_vfprintf_r+0x1710>
 8004674:	07c4      	lsls	r4, r0, #31
 8004676:	f140 816b 	bpl.w	8004950 <_vfprintf_r+0x18e8>
 800467a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800467c:	4413      	add	r3, r2
 800467e:	9309      	str	r3, [sp, #36]	; 0x24
 8004680:	0541      	lsls	r1, r0, #21
 8004682:	d503      	bpl.n	800468c <_vfprintf_r+0x1624>
 8004684:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004686:	2b00      	cmp	r3, #0
 8004688:	f300 80e6 	bgt.w	8004858 <_vfprintf_r+0x17f0>
 800468c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800468e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004692:	9304      	str	r3, [sp, #16]
 8004694:	2667      	movs	r6, #103	; 0x67
 8004696:	2300      	movs	r3, #0
 8004698:	930f      	str	r3, [sp, #60]	; 0x3c
 800469a:	9314      	str	r3, [sp, #80]	; 0x50
 800469c:	e586      	b.n	80041ac <_vfprintf_r+0x1144>
 800469e:	222d      	movs	r2, #45	; 0x2d
 80046a0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80046a4:	f04f 0900 	mov.w	r9, #0
 80046a8:	f7fe be6c 	b.w	8003384 <_vfprintf_r+0x31c>
 80046ac:	46a1      	mov	r9, r4
 80046ae:	f7ff ba55 	b.w	8003b5c <_vfprintf_r+0xaf4>
 80046b2:	900a      	str	r0, [sp, #40]	; 0x28
 80046b4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80046b8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80046bc:	931f      	str	r3, [sp, #124]	; 0x7c
 80046be:	232d      	movs	r3, #45	; 0x2d
 80046c0:	911e      	str	r1, [sp, #120]	; 0x78
 80046c2:	930b      	str	r3, [sp, #44]	; 0x2c
 80046c4:	e619      	b.n	80042fa <_vfprintf_r+0x1292>
 80046c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80046c8:	9328      	str	r3, [sp, #160]	; 0xa0
 80046ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046cc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80046d0:	7bd9      	ldrb	r1, [r3, #15]
 80046d2:	4291      	cmp	r1, r2
 80046d4:	462b      	mov	r3, r5
 80046d6:	d109      	bne.n	80046ec <_vfprintf_r+0x1684>
 80046d8:	2030      	movs	r0, #48	; 0x30
 80046da:	f803 0c01 	strb.w	r0, [r3, #-1]
 80046de:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80046e0:	1e5a      	subs	r2, r3, #1
 80046e2:	9228      	str	r2, [sp, #160]	; 0xa0
 80046e4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80046e8:	4291      	cmp	r1, r2
 80046ea:	d0f6      	beq.n	80046da <_vfprintf_r+0x1672>
 80046ec:	2a39      	cmp	r2, #57	; 0x39
 80046ee:	bf0b      	itete	eq
 80046f0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80046f2:	3201      	addne	r2, #1
 80046f4:	7a92      	ldrbeq	r2, [r2, #10]
 80046f6:	b2d2      	uxtbne	r2, r2
 80046f8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80046fc:	e682      	b.n	8004404 <_vfprintf_r+0x139c>
 80046fe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004702:	f43f ad9f 	beq.w	8004244 <_vfprintf_r+0x11dc>
 8004706:	9a05      	ldr	r2, [sp, #20]
 8004708:	701a      	strb	r2, [r3, #0]
 800470a:	4657      	mov	r7, sl
 800470c:	f7fe bf52 	b.w	80035b4 <_vfprintf_r+0x54c>
 8004710:	aa2a      	add	r2, sp, #168	; 0xa8
 8004712:	9907      	ldr	r1, [sp, #28]
 8004714:	9803      	ldr	r0, [sp, #12]
 8004716:	f002 fcf1 	bl	80070fc <__sprint_r>
 800471a:	2800      	cmp	r0, #0
 800471c:	f47f aa1c 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004720:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004722:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004726:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800472a:	e571      	b.n	8004210 <_vfprintf_r+0x11a8>
 800472c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800472e:	2b00      	cmp	r3, #0
 8004730:	f340 8164 	ble.w	80049fc <_vfprintf_r+0x1994>
 8004734:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004736:	f1b9 0f00 	cmp.w	r9, #0
 800473a:	f040 8103 	bne.w	8004944 <_vfprintf_r+0x18dc>
 800473e:	07c6      	lsls	r6, r0, #31
 8004740:	f100 8100 	bmi.w	8004944 <_vfprintf_r+0x18dc>
 8004744:	9309      	str	r3, [sp, #36]	; 0x24
 8004746:	2666      	movs	r6, #102	; 0x66
 8004748:	0543      	lsls	r3, r0, #21
 800474a:	f100 8086 	bmi.w	800485a <_vfprintf_r+0x17f2>
 800474e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004750:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004754:	9304      	str	r3, [sp, #16]
 8004756:	e79e      	b.n	8004696 <_vfprintf_r+0x162e>
 8004758:	aa2a      	add	r2, sp, #168	; 0xa8
 800475a:	9907      	ldr	r1, [sp, #28]
 800475c:	9803      	ldr	r0, [sp, #12]
 800475e:	f002 fccd 	bl	80070fc <__sprint_r>
 8004762:	2800      	cmp	r0, #0
 8004764:	f47f a9f8 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004768:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800476a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800476c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800476e:	1ad3      	subs	r3, r2, r3
 8004770:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004774:	f7ff bb90 	b.w	8003e98 <_vfprintf_r+0xe30>
 8004778:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800477a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800477c:	4413      	add	r3, r2
 800477e:	9309      	str	r3, [sp, #36]	; 0x24
 8004780:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004782:	2b00      	cmp	r3, #0
 8004784:	f340 8149 	ble.w	8004a1a <_vfprintf_r+0x19b2>
 8004788:	2667      	movs	r6, #103	; 0x67
 800478a:	e7dd      	b.n	8004748 <_vfprintf_r+0x16e0>
 800478c:	2330      	movs	r3, #48	; 0x30
 800478e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004792:	2358      	movs	r3, #88	; 0x58
 8004794:	e595      	b.n	80042c2 <_vfprintf_r+0x125a>
 8004796:	9803      	ldr	r0, [sp, #12]
 8004798:	aa2a      	add	r2, sp, #168	; 0xa8
 800479a:	4649      	mov	r1, r9
 800479c:	f002 fcae 	bl	80070fc <__sprint_r>
 80047a0:	2800      	cmp	r0, #0
 80047a2:	f47f a9e0 	bne.w	8003b66 <_vfprintf_r+0xafe>
 80047a6:	f7fe bf0f 	b.w	80035c8 <_vfprintf_r+0x560>
 80047aa:	a824      	add	r0, sp, #144	; 0x90
 80047ac:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80047b0:	f002 fbf0 	bl	8006f94 <frexp>
 80047b4:	2200      	movs	r2, #0
 80047b6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80047ba:	ec51 0b10 	vmov	r0, r1, d0
 80047be:	f7fb fedb 	bl	8000578 <__aeabi_dmul>
 80047c2:	2200      	movs	r2, #0
 80047c4:	2300      	movs	r3, #0
 80047c6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80047ca:	f7fc fc4f 	bl	800106c <__aeabi_dcmpeq>
 80047ce:	b108      	cbz	r0, 80047d4 <_vfprintf_r+0x176c>
 80047d0:	2301      	movs	r3, #1
 80047d2:	9324      	str	r3, [sp, #144]	; 0x90
 80047d4:	4b02      	ldr	r3, [pc, #8]	; (80047e0 <_vfprintf_r+0x1778>)
 80047d6:	9309      	str	r3, [sp, #36]	; 0x24
 80047d8:	e5ac      	b.n	8004334 <_vfprintf_r+0x12cc>
 80047da:	bf00      	nop
 80047dc:	080077dc 	.word	0x080077dc
 80047e0:	08007798 	.word	0x08007798
 80047e4:	425d      	negs	r5, r3
 80047e6:	3310      	adds	r3, #16
 80047e8:	4bb9      	ldr	r3, [pc, #740]	; (8004ad0 <_vfprintf_r+0x1a68>)
 80047ea:	f280 8097 	bge.w	800491c <_vfprintf_r+0x18b4>
 80047ee:	4619      	mov	r1, r3
 80047f0:	2610      	movs	r6, #16
 80047f2:	4623      	mov	r3, r4
 80047f4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80047f8:	460c      	mov	r4, r1
 80047fa:	e005      	b.n	8004808 <_vfprintf_r+0x17a0>
 80047fc:	f10b 0b08 	add.w	fp, fp, #8
 8004800:	3d10      	subs	r5, #16
 8004802:	2d10      	cmp	r5, #16
 8004804:	f340 8087 	ble.w	8004916 <_vfprintf_r+0x18ae>
 8004808:	3201      	adds	r2, #1
 800480a:	3310      	adds	r3, #16
 800480c:	2a07      	cmp	r2, #7
 800480e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004812:	e9cb 4600 	strd	r4, r6, [fp]
 8004816:	ddf1      	ble.n	80047fc <_vfprintf_r+0x1794>
 8004818:	aa2a      	add	r2, sp, #168	; 0xa8
 800481a:	9907      	ldr	r1, [sp, #28]
 800481c:	4648      	mov	r0, r9
 800481e:	f002 fc6d 	bl	80070fc <__sprint_r>
 8004822:	2800      	cmp	r0, #0
 8004824:	f47f a998 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004828:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800482c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004830:	e7e6      	b.n	8004800 <_vfprintf_r+0x1798>
 8004832:	f109 0101 	add.w	r1, r9, #1
 8004836:	9803      	ldr	r0, [sp, #12]
 8004838:	f7fd fffa 	bl	8002830 <_malloc_r>
 800483c:	4607      	mov	r7, r0
 800483e:	2800      	cmp	r0, #0
 8004840:	f000 813b 	beq.w	8004aba <_vfprintf_r+0x1a52>
 8004844:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004848:	930e      	str	r3, [sp, #56]	; 0x38
 800484a:	f026 0320 	bic.w	r3, r6, #32
 800484e:	9304      	str	r3, [sp, #16]
 8004850:	46a0      	mov	r8, r4
 8004852:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004854:	900a      	str	r0, [sp, #40]	; 0x28
 8004856:	e547      	b.n	80042e8 <_vfprintf_r+0x1280>
 8004858:	2667      	movs	r6, #103	; 0x67
 800485a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800485c:	2200      	movs	r2, #0
 800485e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004860:	9214      	str	r2, [sp, #80]	; 0x50
 8004862:	7803      	ldrb	r3, [r0, #0]
 8004864:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004866:	2bff      	cmp	r3, #255	; 0xff
 8004868:	d00c      	beq.n	8004884 <_vfprintf_r+0x181c>
 800486a:	4293      	cmp	r3, r2
 800486c:	da0a      	bge.n	8004884 <_vfprintf_r+0x181c>
 800486e:	7841      	ldrb	r1, [r0, #1]
 8004870:	1ad2      	subs	r2, r2, r3
 8004872:	b1a9      	cbz	r1, 80048a0 <_vfprintf_r+0x1838>
 8004874:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004876:	3301      	adds	r3, #1
 8004878:	9314      	str	r3, [sp, #80]	; 0x50
 800487a:	460b      	mov	r3, r1
 800487c:	2bff      	cmp	r3, #255	; 0xff
 800487e:	f100 0001 	add.w	r0, r0, #1
 8004882:	d1f2      	bne.n	800486a <_vfprintf_r+0x1802>
 8004884:	9211      	str	r2, [sp, #68]	; 0x44
 8004886:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004888:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800488a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800488c:	901a      	str	r0, [sp, #104]	; 0x68
 800488e:	4413      	add	r3, r2
 8004890:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004892:	fb02 1303 	mla	r3, r2, r3, r1
 8004896:	9309      	str	r3, [sp, #36]	; 0x24
 8004898:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800489c:	9304      	str	r3, [sp, #16]
 800489e:	e485      	b.n	80041ac <_vfprintf_r+0x1144>
 80048a0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80048a2:	3101      	adds	r1, #1
 80048a4:	910f      	str	r1, [sp, #60]	; 0x3c
 80048a6:	e7de      	b.n	8004866 <_vfprintf_r+0x17fe>
 80048a8:	aa28      	add	r2, sp, #160	; 0xa0
 80048aa:	ab25      	add	r3, sp, #148	; 0x94
 80048ac:	e9cd 3200 	strd	r3, r2, [sp]
 80048b0:	2103      	movs	r1, #3
 80048b2:	ab24      	add	r3, sp, #144	; 0x90
 80048b4:	464a      	mov	r2, r9
 80048b6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80048ba:	9803      	ldr	r0, [sp, #12]
 80048bc:	f000 fa6c 	bl	8004d98 <_dtoa_r>
 80048c0:	464d      	mov	r5, r9
 80048c2:	4607      	mov	r7, r0
 80048c4:	eb00 0409 	add.w	r4, r0, r9
 80048c8:	783b      	ldrb	r3, [r7, #0]
 80048ca:	2b30      	cmp	r3, #48	; 0x30
 80048cc:	f000 80be 	beq.w	8004a4c <_vfprintf_r+0x19e4>
 80048d0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80048d2:	442c      	add	r4, r5
 80048d4:	2200      	movs	r2, #0
 80048d6:	2300      	movs	r3, #0
 80048d8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80048dc:	f7fc fbc6 	bl	800106c <__aeabi_dcmpeq>
 80048e0:	b108      	cbz	r0, 80048e6 <_vfprintf_r+0x187e>
 80048e2:	4623      	mov	r3, r4
 80048e4:	e413      	b.n	800410e <_vfprintf_r+0x10a6>
 80048e6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80048e8:	42a3      	cmp	r3, r4
 80048ea:	f4bf ac10 	bcs.w	800410e <_vfprintf_r+0x10a6>
 80048ee:	2130      	movs	r1, #48	; 0x30
 80048f0:	1c5a      	adds	r2, r3, #1
 80048f2:	9228      	str	r2, [sp, #160]	; 0xa0
 80048f4:	7019      	strb	r1, [r3, #0]
 80048f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80048f8:	429c      	cmp	r4, r3
 80048fa:	d8f9      	bhi.n	80048f0 <_vfprintf_r+0x1888>
 80048fc:	e407      	b.n	800410e <_vfprintf_r+0x10a6>
 80048fe:	197c      	adds	r4, r7, r5
 8004900:	e7e8      	b.n	80048d4 <_vfprintf_r+0x186c>
 8004902:	f1b9 0f00 	cmp.w	r9, #0
 8004906:	f000 8092 	beq.w	8004a2e <_vfprintf_r+0x19c6>
 800490a:	900a      	str	r0, [sp, #40]	; 0x28
 800490c:	e4ec      	b.n	80042e8 <_vfprintf_r+0x1280>
 800490e:	900a      	str	r0, [sp, #40]	; 0x28
 8004910:	f04f 0906 	mov.w	r9, #6
 8004914:	e4e8      	b.n	80042e8 <_vfprintf_r+0x1280>
 8004916:	4621      	mov	r1, r4
 8004918:	461c      	mov	r4, r3
 800491a:	460b      	mov	r3, r1
 800491c:	3201      	adds	r2, #1
 800491e:	442c      	add	r4, r5
 8004920:	2a07      	cmp	r2, #7
 8004922:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004926:	e9cb 3500 	strd	r3, r5, [fp]
 800492a:	f300 80a9 	bgt.w	8004a80 <_vfprintf_r+0x1a18>
 800492e:	f10b 0b08 	add.w	fp, fp, #8
 8004932:	e470      	b.n	8004216 <_vfprintf_r+0x11ae>
 8004934:	469a      	mov	sl, r3
 8004936:	f7ff bb37 	b.w	8003fa8 <_vfprintf_r+0xf40>
 800493a:	2301      	movs	r3, #1
 800493c:	9324      	str	r3, [sp, #144]	; 0x90
 800493e:	4b65      	ldr	r3, [pc, #404]	; (8004ad4 <_vfprintf_r+0x1a6c>)
 8004940:	9309      	str	r3, [sp, #36]	; 0x24
 8004942:	e4f7      	b.n	8004334 <_vfprintf_r+0x12cc>
 8004944:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004946:	4413      	add	r3, r2
 8004948:	444b      	add	r3, r9
 800494a:	9309      	str	r3, [sp, #36]	; 0x24
 800494c:	2666      	movs	r6, #102	; 0x66
 800494e:	e6fb      	b.n	8004748 <_vfprintf_r+0x16e0>
 8004950:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004952:	9309      	str	r3, [sp, #36]	; 0x24
 8004954:	e694      	b.n	8004680 <_vfprintf_r+0x1618>
 8004956:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800495a:	4664      	mov	r4, ip
 800495c:	4d5e      	ldr	r5, [pc, #376]	; (8004ad8 <_vfprintf_r+0x1a70>)
 800495e:	e000      	b.n	8004962 <_vfprintf_r+0x18fa>
 8004960:	4614      	mov	r4, r2
 8004962:	fba5 1203 	umull	r1, r2, r5, r3
 8004966:	08d2      	lsrs	r2, r2, #3
 8004968:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800496c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004970:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004974:	4613      	mov	r3, r2
 8004976:	2b09      	cmp	r3, #9
 8004978:	f804 1c01 	strb.w	r1, [r4, #-1]
 800497c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004980:	dcee      	bgt.n	8004960 <_vfprintf_r+0x18f8>
 8004982:	3330      	adds	r3, #48	; 0x30
 8004984:	3c02      	subs	r4, #2
 8004986:	b2db      	uxtb	r3, r3
 8004988:	45a4      	cmp	ip, r4
 800498a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800498e:	f240 8090 	bls.w	8004ab2 <_vfprintf_r+0x1a4a>
 8004992:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004996:	4611      	mov	r1, r2
 8004998:	e001      	b.n	800499e <_vfprintf_r+0x1936>
 800499a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800499e:	f804 3b01 	strb.w	r3, [r4], #1
 80049a2:	458c      	cmp	ip, r1
 80049a4:	d1f9      	bne.n	800499a <_vfprintf_r+0x1932>
 80049a6:	ab2a      	add	r3, sp, #168	; 0xa8
 80049a8:	1a9b      	subs	r3, r3, r2
 80049aa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80049ae:	4413      	add	r3, r2
 80049b0:	f7ff bbe3 	b.w	800417a <_vfprintf_r+0x1112>
 80049b4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80049b6:	4f49      	ldr	r7, [pc, #292]	; (8004adc <_vfprintf_r+0x1a74>)
 80049b8:	2b00      	cmp	r3, #0
 80049ba:	bfb6      	itet	lt
 80049bc:	222d      	movlt	r2, #45	; 0x2d
 80049be:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80049c2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80049c6:	4b46      	ldr	r3, [pc, #280]	; (8004ae0 <_vfprintf_r+0x1a78>)
 80049c8:	f7fe bf02 	b.w	80037d0 <_vfprintf_r+0x768>
 80049cc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80049d0:	f7ff b8c9 	b.w	8003b66 <_vfprintf_r+0xafe>
 80049d4:	aa28      	add	r2, sp, #160	; 0xa0
 80049d6:	ab25      	add	r3, sp, #148	; 0x94
 80049d8:	e9cd 3200 	strd	r3, r2, [sp]
 80049dc:	2103      	movs	r1, #3
 80049de:	ab24      	add	r3, sp, #144	; 0x90
 80049e0:	464a      	mov	r2, r9
 80049e2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80049e6:	9803      	ldr	r0, [sp, #12]
 80049e8:	f000 f9d6 	bl	8004d98 <_dtoa_r>
 80049ec:	464d      	mov	r5, r9
 80049ee:	4607      	mov	r7, r0
 80049f0:	2e46      	cmp	r6, #70	; 0x46
 80049f2:	eb07 0405 	add.w	r4, r7, r5
 80049f6:	f43f af67 	beq.w	80048c8 <_vfprintf_r+0x1860>
 80049fa:	e76b      	b.n	80048d4 <_vfprintf_r+0x186c>
 80049fc:	f1b9 0f00 	cmp.w	r9, #0
 8004a00:	d131      	bne.n	8004a66 <_vfprintf_r+0x19fe>
 8004a02:	07c5      	lsls	r5, r0, #31
 8004a04:	d42f      	bmi.n	8004a66 <_vfprintf_r+0x19fe>
 8004a06:	2301      	movs	r3, #1
 8004a08:	9304      	str	r3, [sp, #16]
 8004a0a:	9309      	str	r3, [sp, #36]	; 0x24
 8004a0c:	2666      	movs	r6, #102	; 0x66
 8004a0e:	e642      	b.n	8004696 <_vfprintf_r+0x162e>
 8004a10:	07c3      	lsls	r3, r0, #31
 8004a12:	f57f abbf 	bpl.w	8004194 <_vfprintf_r+0x112c>
 8004a16:	f7ff bbb9 	b.w	800418c <_vfprintf_r+0x1124>
 8004a1a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004a1c:	f1c3 0301 	rsb	r3, r3, #1
 8004a20:	441a      	add	r2, r3
 8004a22:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004a26:	9209      	str	r2, [sp, #36]	; 0x24
 8004a28:	9304      	str	r3, [sp, #16]
 8004a2a:	2667      	movs	r6, #103	; 0x67
 8004a2c:	e633      	b.n	8004696 <_vfprintf_r+0x162e>
 8004a2e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004a32:	f04f 0901 	mov.w	r9, #1
 8004a36:	e457      	b.n	80042e8 <_vfprintf_r+0x1280>
 8004a38:	465a      	mov	r2, fp
 8004a3a:	e511      	b.n	8004460 <_vfprintf_r+0x13f8>
 8004a3c:	2e47      	cmp	r6, #71	; 0x47
 8004a3e:	f47f af5e 	bne.w	80048fe <_vfprintf_r+0x1896>
 8004a42:	f018 0f01 	tst.w	r8, #1
 8004a46:	f43f ab61 	beq.w	800410c <_vfprintf_r+0x10a4>
 8004a4a:	e7d1      	b.n	80049f0 <_vfprintf_r+0x1988>
 8004a4c:	2200      	movs	r2, #0
 8004a4e:	2300      	movs	r3, #0
 8004a50:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004a54:	f7fc fb0a 	bl	800106c <__aeabi_dcmpeq>
 8004a58:	2800      	cmp	r0, #0
 8004a5a:	f47f af39 	bne.w	80048d0 <_vfprintf_r+0x1868>
 8004a5e:	f1c5 0501 	rsb	r5, r5, #1
 8004a62:	9524      	str	r5, [sp, #144]	; 0x90
 8004a64:	e735      	b.n	80048d2 <_vfprintf_r+0x186a>
 8004a66:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004a68:	3301      	adds	r3, #1
 8004a6a:	444b      	add	r3, r9
 8004a6c:	9309      	str	r3, [sp, #36]	; 0x24
 8004a6e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004a72:	9304      	str	r3, [sp, #16]
 8004a74:	2666      	movs	r6, #102	; 0x66
 8004a76:	e60e      	b.n	8004696 <_vfprintf_r+0x162e>
 8004a78:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004a7c:	f7ff bb7a 	b.w	8004174 <_vfprintf_r+0x110c>
 8004a80:	aa2a      	add	r2, sp, #168	; 0xa8
 8004a82:	9907      	ldr	r1, [sp, #28]
 8004a84:	9803      	ldr	r0, [sp, #12]
 8004a86:	f002 fb39 	bl	80070fc <__sprint_r>
 8004a8a:	2800      	cmp	r0, #0
 8004a8c:	f47f a864 	bne.w	8003b58 <_vfprintf_r+0xaf0>
 8004a90:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004a94:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004a98:	f7ff bbbd 	b.w	8004216 <_vfprintf_r+0x11ae>
 8004a9c:	9908      	ldr	r1, [sp, #32]
 8004a9e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004aa2:	680b      	ldr	r3, [r1, #0]
 8004aa4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004aa8:	1d0b      	adds	r3, r1, #4
 8004aaa:	4692      	mov	sl, r2
 8004aac:	9308      	str	r3, [sp, #32]
 8004aae:	f7fe bb59 	b.w	8003164 <_vfprintf_r+0xfc>
 8004ab2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004ab6:	f7ff bb60 	b.w	800417a <_vfprintf_r+0x1112>
 8004aba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004abe:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004ac2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004ac6:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004aca:	f7ff b84c 	b.w	8003b66 <_vfprintf_r+0xafe>
 8004ace:	bf00      	nop
 8004ad0:	080077dc 	.word	0x080077dc
 8004ad4:	080077ac 	.word	0x080077ac
 8004ad8:	cccccccd 	.word	0xcccccccd
 8004adc:	08007794 	.word	0x08007794
 8004ae0:	08007790 	.word	0x08007790

08004ae4 <__sbprintf>:
 8004ae4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004ae8:	460c      	mov	r4, r1
 8004aea:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004aee:	8989      	ldrh	r1, [r1, #12]
 8004af0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004af2:	89e5      	ldrh	r5, [r4, #14]
 8004af4:	9619      	str	r6, [sp, #100]	; 0x64
 8004af6:	f021 0102 	bic.w	r1, r1, #2
 8004afa:	4606      	mov	r6, r0
 8004afc:	69e0      	ldr	r0, [r4, #28]
 8004afe:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004b02:	4617      	mov	r7, r2
 8004b04:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004b08:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004b0a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004b0e:	4698      	mov	r8, r3
 8004b10:	ad1a      	add	r5, sp, #104	; 0x68
 8004b12:	2300      	movs	r3, #0
 8004b14:	9007      	str	r0, [sp, #28]
 8004b16:	a816      	add	r0, sp, #88	; 0x58
 8004b18:	9209      	str	r2, [sp, #36]	; 0x24
 8004b1a:	9306      	str	r3, [sp, #24]
 8004b1c:	9500      	str	r5, [sp, #0]
 8004b1e:	9504      	str	r5, [sp, #16]
 8004b20:	9102      	str	r1, [sp, #8]
 8004b22:	9105      	str	r1, [sp, #20]
 8004b24:	f001 fc9a 	bl	800645c <__retarget_lock_init_recursive>
 8004b28:	4643      	mov	r3, r8
 8004b2a:	463a      	mov	r2, r7
 8004b2c:	4669      	mov	r1, sp
 8004b2e:	4630      	mov	r0, r6
 8004b30:	f7fe fa9a 	bl	8003068 <_vfprintf_r>
 8004b34:	1e05      	subs	r5, r0, #0
 8004b36:	db07      	blt.n	8004b48 <__sbprintf+0x64>
 8004b38:	4630      	mov	r0, r6
 8004b3a:	4669      	mov	r1, sp
 8004b3c:	f001 f8e6 	bl	8005d0c <_fflush_r>
 8004b40:	2800      	cmp	r0, #0
 8004b42:	bf18      	it	ne
 8004b44:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004b48:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004b4c:	065b      	lsls	r3, r3, #25
 8004b4e:	d503      	bpl.n	8004b58 <__sbprintf+0x74>
 8004b50:	89a3      	ldrh	r3, [r4, #12]
 8004b52:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004b56:	81a3      	strh	r3, [r4, #12]
 8004b58:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004b5a:	f001 fc81 	bl	8006460 <__retarget_lock_close_recursive>
 8004b5e:	4628      	mov	r0, r5
 8004b60:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004b64:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004b68 <__ascii_wctomb>:
 8004b68:	b121      	cbz	r1, 8004b74 <__ascii_wctomb+0xc>
 8004b6a:	2aff      	cmp	r2, #255	; 0xff
 8004b6c:	d804      	bhi.n	8004b78 <__ascii_wctomb+0x10>
 8004b6e:	700a      	strb	r2, [r1, #0]
 8004b70:	2001      	movs	r0, #1
 8004b72:	4770      	bx	lr
 8004b74:	4608      	mov	r0, r1
 8004b76:	4770      	bx	lr
 8004b78:	238a      	movs	r3, #138	; 0x8a
 8004b7a:	6003      	str	r3, [r0, #0]
 8004b7c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004b80:	4770      	bx	lr
 8004b82:	bf00      	nop

08004b84 <__swsetup_r>:
 8004b84:	b538      	push	{r3, r4, r5, lr}
 8004b86:	4b31      	ldr	r3, [pc, #196]	; (8004c4c <__swsetup_r+0xc8>)
 8004b88:	681b      	ldr	r3, [r3, #0]
 8004b8a:	4605      	mov	r5, r0
 8004b8c:	460c      	mov	r4, r1
 8004b8e:	b113      	cbz	r3, 8004b96 <__swsetup_r+0x12>
 8004b90:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004b92:	2a00      	cmp	r2, #0
 8004b94:	d03a      	beq.n	8004c0c <__swsetup_r+0x88>
 8004b96:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004b9a:	b293      	uxth	r3, r2
 8004b9c:	0718      	lsls	r0, r3, #28
 8004b9e:	d50c      	bpl.n	8004bba <__swsetup_r+0x36>
 8004ba0:	6920      	ldr	r0, [r4, #16]
 8004ba2:	b1a8      	cbz	r0, 8004bd0 <__swsetup_r+0x4c>
 8004ba4:	f013 0201 	ands.w	r2, r3, #1
 8004ba8:	d020      	beq.n	8004bec <__swsetup_r+0x68>
 8004baa:	6963      	ldr	r3, [r4, #20]
 8004bac:	2200      	movs	r2, #0
 8004bae:	425b      	negs	r3, r3
 8004bb0:	61a3      	str	r3, [r4, #24]
 8004bb2:	60a2      	str	r2, [r4, #8]
 8004bb4:	b300      	cbz	r0, 8004bf8 <__swsetup_r+0x74>
 8004bb6:	2000      	movs	r0, #0
 8004bb8:	bd38      	pop	{r3, r4, r5, pc}
 8004bba:	06d9      	lsls	r1, r3, #27
 8004bbc:	d53e      	bpl.n	8004c3c <__swsetup_r+0xb8>
 8004bbe:	0758      	lsls	r0, r3, #29
 8004bc0:	d428      	bmi.n	8004c14 <__swsetup_r+0x90>
 8004bc2:	6920      	ldr	r0, [r4, #16]
 8004bc4:	f042 0308 	orr.w	r3, r2, #8
 8004bc8:	81a3      	strh	r3, [r4, #12]
 8004bca:	b29b      	uxth	r3, r3
 8004bcc:	2800      	cmp	r0, #0
 8004bce:	d1e9      	bne.n	8004ba4 <__swsetup_r+0x20>
 8004bd0:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004bd4:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004bd8:	d0e4      	beq.n	8004ba4 <__swsetup_r+0x20>
 8004bda:	4628      	mov	r0, r5
 8004bdc:	4621      	mov	r1, r4
 8004bde:	f001 fc73 	bl	80064c8 <__smakebuf_r>
 8004be2:	89a3      	ldrh	r3, [r4, #12]
 8004be4:	6920      	ldr	r0, [r4, #16]
 8004be6:	f013 0201 	ands.w	r2, r3, #1
 8004bea:	d1de      	bne.n	8004baa <__swsetup_r+0x26>
 8004bec:	0799      	lsls	r1, r3, #30
 8004bee:	bf58      	it	pl
 8004bf0:	6962      	ldrpl	r2, [r4, #20]
 8004bf2:	60a2      	str	r2, [r4, #8]
 8004bf4:	2800      	cmp	r0, #0
 8004bf6:	d1de      	bne.n	8004bb6 <__swsetup_r+0x32>
 8004bf8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004bfc:	061a      	lsls	r2, r3, #24
 8004bfe:	d5db      	bpl.n	8004bb8 <__swsetup_r+0x34>
 8004c00:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004c04:	81a3      	strh	r3, [r4, #12]
 8004c06:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004c0a:	bd38      	pop	{r3, r4, r5, pc}
 8004c0c:	4618      	mov	r0, r3
 8004c0e:	f001 f8d9 	bl	8005dc4 <__sinit>
 8004c12:	e7c0      	b.n	8004b96 <__swsetup_r+0x12>
 8004c14:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004c16:	b151      	cbz	r1, 8004c2e <__swsetup_r+0xaa>
 8004c18:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004c1c:	4299      	cmp	r1, r3
 8004c1e:	d004      	beq.n	8004c2a <__swsetup_r+0xa6>
 8004c20:	4628      	mov	r0, r5
 8004c22:	f001 f971 	bl	8005f08 <_free_r>
 8004c26:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004c2a:	2300      	movs	r3, #0
 8004c2c:	6323      	str	r3, [r4, #48]	; 0x30
 8004c2e:	2300      	movs	r3, #0
 8004c30:	6920      	ldr	r0, [r4, #16]
 8004c32:	6063      	str	r3, [r4, #4]
 8004c34:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004c38:	6020      	str	r0, [r4, #0]
 8004c3a:	e7c3      	b.n	8004bc4 <__swsetup_r+0x40>
 8004c3c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004c40:	2309      	movs	r3, #9
 8004c42:	602b      	str	r3, [r5, #0]
 8004c44:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004c48:	81a2      	strh	r2, [r4, #12]
 8004c4a:	bd38      	pop	{r3, r4, r5, pc}
 8004c4c:	20000018 	.word	0x20000018

08004c50 <register_fini>:
 8004c50:	4b02      	ldr	r3, [pc, #8]	; (8004c5c <register_fini+0xc>)
 8004c52:	b113      	cbz	r3, 8004c5a <register_fini+0xa>
 8004c54:	4802      	ldr	r0, [pc, #8]	; (8004c60 <register_fini+0x10>)
 8004c56:	f000 b805 	b.w	8004c64 <atexit>
 8004c5a:	4770      	bx	lr
 8004c5c:	00000000 	.word	0x00000000
 8004c60:	08005e35 	.word	0x08005e35

08004c64 <atexit>:
 8004c64:	2300      	movs	r3, #0
 8004c66:	4601      	mov	r1, r0
 8004c68:	461a      	mov	r2, r3
 8004c6a:	4618      	mov	r0, r3
 8004c6c:	f002 ba66 	b.w	800713c <__register_exitproc>

08004c70 <quorem>:
 8004c70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004c74:	6903      	ldr	r3, [r0, #16]
 8004c76:	690f      	ldr	r7, [r1, #16]
 8004c78:	42bb      	cmp	r3, r7
 8004c7a:	b083      	sub	sp, #12
 8004c7c:	f2c0 8086 	blt.w	8004d8c <quorem+0x11c>
 8004c80:	3f01      	subs	r7, #1
 8004c82:	f101 0914 	add.w	r9, r1, #20
 8004c86:	f100 0a14 	add.w	sl, r0, #20
 8004c8a:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004c8e:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004c92:	00bc      	lsls	r4, r7, #2
 8004c94:	3201      	adds	r2, #1
 8004c96:	fbb3 f8f2 	udiv	r8, r3, r2
 8004c9a:	eb0a 0304 	add.w	r3, sl, r4
 8004c9e:	9400      	str	r4, [sp, #0]
 8004ca0:	eb09 0b04 	add.w	fp, r9, r4
 8004ca4:	9301      	str	r3, [sp, #4]
 8004ca6:	f1b8 0f00 	cmp.w	r8, #0
 8004caa:	d038      	beq.n	8004d1e <quorem+0xae>
 8004cac:	2500      	movs	r5, #0
 8004cae:	462e      	mov	r6, r5
 8004cb0:	46ce      	mov	lr, r9
 8004cb2:	46d4      	mov	ip, sl
 8004cb4:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004cb8:	f8dc 3000 	ldr.w	r3, [ip]
 8004cbc:	b2a2      	uxth	r2, r4
 8004cbe:	fb08 5502 	mla	r5, r8, r2, r5
 8004cc2:	0c22      	lsrs	r2, r4, #16
 8004cc4:	0c2c      	lsrs	r4, r5, #16
 8004cc6:	fb08 4202 	mla	r2, r8, r2, r4
 8004cca:	b2ad      	uxth	r5, r5
 8004ccc:	1b75      	subs	r5, r6, r5
 8004cce:	b296      	uxth	r6, r2
 8004cd0:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004cd4:	fa15 f383 	uxtah	r3, r5, r3
 8004cd8:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004cdc:	b29b      	uxth	r3, r3
 8004cde:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004ce2:	45f3      	cmp	fp, lr
 8004ce4:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004ce8:	f84c 3b04 	str.w	r3, [ip], #4
 8004cec:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004cf0:	d2e0      	bcs.n	8004cb4 <quorem+0x44>
 8004cf2:	9b00      	ldr	r3, [sp, #0]
 8004cf4:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004cf8:	b98b      	cbnz	r3, 8004d1e <quorem+0xae>
 8004cfa:	9a01      	ldr	r2, [sp, #4]
 8004cfc:	1f13      	subs	r3, r2, #4
 8004cfe:	459a      	cmp	sl, r3
 8004d00:	d20c      	bcs.n	8004d1c <quorem+0xac>
 8004d02:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004d06:	b94b      	cbnz	r3, 8004d1c <quorem+0xac>
 8004d08:	f1a2 0308 	sub.w	r3, r2, #8
 8004d0c:	e002      	b.n	8004d14 <quorem+0xa4>
 8004d0e:	681a      	ldr	r2, [r3, #0]
 8004d10:	3b04      	subs	r3, #4
 8004d12:	b91a      	cbnz	r2, 8004d1c <quorem+0xac>
 8004d14:	459a      	cmp	sl, r3
 8004d16:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004d1a:	d3f8      	bcc.n	8004d0e <quorem+0x9e>
 8004d1c:	6107      	str	r7, [r0, #16]
 8004d1e:	4604      	mov	r4, r0
 8004d20:	f001 fe96 	bl	8006a50 <__mcmp>
 8004d24:	2800      	cmp	r0, #0
 8004d26:	db2d      	blt.n	8004d84 <quorem+0x114>
 8004d28:	f108 0801 	add.w	r8, r8, #1
 8004d2c:	4655      	mov	r5, sl
 8004d2e:	2300      	movs	r3, #0
 8004d30:	f859 1b04 	ldr.w	r1, [r9], #4
 8004d34:	6828      	ldr	r0, [r5, #0]
 8004d36:	b28a      	uxth	r2, r1
 8004d38:	1a9a      	subs	r2, r3, r2
 8004d3a:	0c0b      	lsrs	r3, r1, #16
 8004d3c:	fa12 f280 	uxtah	r2, r2, r0
 8004d40:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004d44:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004d48:	b292      	uxth	r2, r2
 8004d4a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004d4e:	45cb      	cmp	fp, r9
 8004d50:	f845 2b04 	str.w	r2, [r5], #4
 8004d54:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004d58:	d2ea      	bcs.n	8004d30 <quorem+0xc0>
 8004d5a:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004d5e:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004d62:	b97a      	cbnz	r2, 8004d84 <quorem+0x114>
 8004d64:	1f1a      	subs	r2, r3, #4
 8004d66:	4592      	cmp	sl, r2
 8004d68:	d20b      	bcs.n	8004d82 <quorem+0x112>
 8004d6a:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004d6e:	b942      	cbnz	r2, 8004d82 <quorem+0x112>
 8004d70:	3b08      	subs	r3, #8
 8004d72:	e002      	b.n	8004d7a <quorem+0x10a>
 8004d74:	681a      	ldr	r2, [r3, #0]
 8004d76:	3b04      	subs	r3, #4
 8004d78:	b91a      	cbnz	r2, 8004d82 <quorem+0x112>
 8004d7a:	459a      	cmp	sl, r3
 8004d7c:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004d80:	d3f8      	bcc.n	8004d74 <quorem+0x104>
 8004d82:	6127      	str	r7, [r4, #16]
 8004d84:	4640      	mov	r0, r8
 8004d86:	b003      	add	sp, #12
 8004d88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d8c:	2000      	movs	r0, #0
 8004d8e:	b003      	add	sp, #12
 8004d90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d94:	0000      	movs	r0, r0
	...

08004d98 <_dtoa_r>:
 8004d98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004d9c:	ec55 4b10 	vmov	r4, r5, d0
 8004da0:	b09b      	sub	sp, #108	; 0x6c
 8004da2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004da4:	9102      	str	r1, [sp, #8]
 8004da6:	4681      	mov	r9, r0
 8004da8:	9207      	str	r2, [sp, #28]
 8004daa:	9305      	str	r3, [sp, #20]
 8004dac:	e9cd 4500 	strd	r4, r5, [sp]
 8004db0:	b156      	cbz	r6, 8004dc8 <_dtoa_r+0x30>
 8004db2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004db4:	6072      	str	r2, [r6, #4]
 8004db6:	2301      	movs	r3, #1
 8004db8:	4093      	lsls	r3, r2
 8004dba:	60b3      	str	r3, [r6, #8]
 8004dbc:	4631      	mov	r1, r6
 8004dbe:	f001 fc57 	bl	8006670 <_Bfree>
 8004dc2:	2300      	movs	r3, #0
 8004dc4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004dc8:	f1b5 0800 	subs.w	r8, r5, #0
 8004dcc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004dce:	bfb4      	ite	lt
 8004dd0:	2301      	movlt	r3, #1
 8004dd2:	2300      	movge	r3, #0
 8004dd4:	6013      	str	r3, [r2, #0]
 8004dd6:	4b76      	ldr	r3, [pc, #472]	; (8004fb0 <_dtoa_r+0x218>)
 8004dd8:	bfbc      	itt	lt
 8004dda:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004dde:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004de2:	ea33 0308 	bics.w	r3, r3, r8
 8004de6:	f000 80a6 	beq.w	8004f36 <_dtoa_r+0x19e>
 8004dea:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004dee:	2200      	movs	r2, #0
 8004df0:	2300      	movs	r3, #0
 8004df2:	4630      	mov	r0, r6
 8004df4:	4639      	mov	r1, r7
 8004df6:	f7fc f939 	bl	800106c <__aeabi_dcmpeq>
 8004dfa:	4605      	mov	r5, r0
 8004dfc:	b178      	cbz	r0, 8004e1e <_dtoa_r+0x86>
 8004dfe:	9a05      	ldr	r2, [sp, #20]
 8004e00:	2301      	movs	r3, #1
 8004e02:	6013      	str	r3, [r2, #0]
 8004e04:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004e06:	2b00      	cmp	r3, #0
 8004e08:	f000 80c0 	beq.w	8004f8c <_dtoa_r+0x1f4>
 8004e0c:	4b69      	ldr	r3, [pc, #420]	; (8004fb4 <_dtoa_r+0x21c>)
 8004e0e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004e10:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004e14:	6013      	str	r3, [r2, #0]
 8004e16:	4658      	mov	r0, fp
 8004e18:	b01b      	add	sp, #108	; 0x6c
 8004e1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e1e:	aa18      	add	r2, sp, #96	; 0x60
 8004e20:	a919      	add	r1, sp, #100	; 0x64
 8004e22:	ec47 6b10 	vmov	d0, r6, r7
 8004e26:	4648      	mov	r0, r9
 8004e28:	f001 fea4 	bl	8006b74 <__d2b>
 8004e2c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004e30:	4682      	mov	sl, r0
 8004e32:	f040 80a0 	bne.w	8004f76 <_dtoa_r+0x1de>
 8004e36:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004e3a:	442c      	add	r4, r5
 8004e3c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004e40:	2b20      	cmp	r3, #32
 8004e42:	f340 842c 	ble.w	800569e <_dtoa_r+0x906>
 8004e46:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004e4a:	fa08 f803 	lsl.w	r8, r8, r3
 8004e4e:	9b00      	ldr	r3, [sp, #0]
 8004e50:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004e54:	fa23 f000 	lsr.w	r0, r3, r0
 8004e58:	ea48 0000 	orr.w	r0, r8, r0
 8004e5c:	f7fb fb12 	bl	8000484 <__aeabi_ui2d>
 8004e60:	2301      	movs	r3, #1
 8004e62:	4606      	mov	r6, r0
 8004e64:	3c01      	subs	r4, #1
 8004e66:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004e6a:	930f      	str	r3, [sp, #60]	; 0x3c
 8004e6c:	4630      	mov	r0, r6
 8004e6e:	4639      	mov	r1, r7
 8004e70:	2200      	movs	r2, #0
 8004e72:	4b51      	ldr	r3, [pc, #324]	; (8004fb8 <_dtoa_r+0x220>)
 8004e74:	f7fb f9c8 	bl	8000208 <__aeabi_dsub>
 8004e78:	a347      	add	r3, pc, #284	; (adr r3, 8004f98 <_dtoa_r+0x200>)
 8004e7a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e7e:	f7fb fb7b 	bl	8000578 <__aeabi_dmul>
 8004e82:	a347      	add	r3, pc, #284	; (adr r3, 8004fa0 <_dtoa_r+0x208>)
 8004e84:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e88:	f7fb f9c0 	bl	800020c <__adddf3>
 8004e8c:	4606      	mov	r6, r0
 8004e8e:	4620      	mov	r0, r4
 8004e90:	460f      	mov	r7, r1
 8004e92:	f7fb fb07 	bl	80004a4 <__aeabi_i2d>
 8004e96:	a344      	add	r3, pc, #272	; (adr r3, 8004fa8 <_dtoa_r+0x210>)
 8004e98:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e9c:	f7fb fb6c 	bl	8000578 <__aeabi_dmul>
 8004ea0:	4602      	mov	r2, r0
 8004ea2:	460b      	mov	r3, r1
 8004ea4:	4630      	mov	r0, r6
 8004ea6:	4639      	mov	r1, r7
 8004ea8:	f7fb f9b0 	bl	800020c <__adddf3>
 8004eac:	4606      	mov	r6, r0
 8004eae:	460f      	mov	r7, r1
 8004eb0:	f7fc f924 	bl	80010fc <__aeabi_d2iz>
 8004eb4:	2200      	movs	r2, #0
 8004eb6:	9006      	str	r0, [sp, #24]
 8004eb8:	2300      	movs	r3, #0
 8004eba:	4630      	mov	r0, r6
 8004ebc:	4639      	mov	r1, r7
 8004ebe:	f7fc f8df 	bl	8001080 <__aeabi_dcmplt>
 8004ec2:	2800      	cmp	r0, #0
 8004ec4:	f040 8273 	bne.w	80053ae <_dtoa_r+0x616>
 8004ec8:	9e06      	ldr	r6, [sp, #24]
 8004eca:	2e16      	cmp	r6, #22
 8004ecc:	f200 825d 	bhi.w	800538a <_dtoa_r+0x5f2>
 8004ed0:	4b3a      	ldr	r3, [pc, #232]	; (8004fbc <_dtoa_r+0x224>)
 8004ed2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004ed6:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004eda:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ede:	f7fc f8ed 	bl	80010bc <__aeabi_dcmpgt>
 8004ee2:	2800      	cmp	r0, #0
 8004ee4:	f000 83d7 	beq.w	8005696 <_dtoa_r+0x8fe>
 8004ee8:	1e73      	subs	r3, r6, #1
 8004eea:	9306      	str	r3, [sp, #24]
 8004eec:	2300      	movs	r3, #0
 8004eee:	930d      	str	r3, [sp, #52]	; 0x34
 8004ef0:	1b2c      	subs	r4, r5, r4
 8004ef2:	f1b4 0801 	subs.w	r8, r4, #1
 8004ef6:	f100 8254 	bmi.w	80053a2 <_dtoa_r+0x60a>
 8004efa:	2300      	movs	r3, #0
 8004efc:	9308      	str	r3, [sp, #32]
 8004efe:	9b06      	ldr	r3, [sp, #24]
 8004f00:	2b00      	cmp	r3, #0
 8004f02:	f2c0 8245 	blt.w	8005390 <_dtoa_r+0x5f8>
 8004f06:	4498      	add	r8, r3
 8004f08:	930c      	str	r3, [sp, #48]	; 0x30
 8004f0a:	2300      	movs	r3, #0
 8004f0c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004f0e:	9b02      	ldr	r3, [sp, #8]
 8004f10:	2b09      	cmp	r3, #9
 8004f12:	d85b      	bhi.n	8004fcc <_dtoa_r+0x234>
 8004f14:	2b05      	cmp	r3, #5
 8004f16:	f340 83c0 	ble.w	800569a <_dtoa_r+0x902>
 8004f1a:	3b04      	subs	r3, #4
 8004f1c:	9302      	str	r3, [sp, #8]
 8004f1e:	2500      	movs	r5, #0
 8004f20:	9b02      	ldr	r3, [sp, #8]
 8004f22:	3b02      	subs	r3, #2
 8004f24:	2b03      	cmp	r3, #3
 8004f26:	f200 8498 	bhi.w	800585a <_dtoa_r+0xac2>
 8004f2a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004f2e:	03df      	.short	0x03df
 8004f30:	03e803bf 	.word	0x03e803bf
 8004f34:	04f5      	.short	0x04f5
 8004f36:	9a05      	ldr	r2, [sp, #20]
 8004f38:	f242 730f 	movw	r3, #9999	; 0x270f
 8004f3c:	6013      	str	r3, [r2, #0]
 8004f3e:	9b00      	ldr	r3, [sp, #0]
 8004f40:	b983      	cbnz	r3, 8004f64 <_dtoa_r+0x1cc>
 8004f42:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004f46:	b96b      	cbnz	r3, 8004f64 <_dtoa_r+0x1cc>
 8004f48:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004f4a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004fc0 <_dtoa_r+0x228>
 8004f4e:	2b00      	cmp	r3, #0
 8004f50:	f43f af61 	beq.w	8004e16 <_dtoa_r+0x7e>
 8004f54:	f10b 0308 	add.w	r3, fp, #8
 8004f58:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004f5a:	4658      	mov	r0, fp
 8004f5c:	6013      	str	r3, [r2, #0]
 8004f5e:	b01b      	add	sp, #108	; 0x6c
 8004f60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f64:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004f66:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004fc4 <_dtoa_r+0x22c>
 8004f6a:	2b00      	cmp	r3, #0
 8004f6c:	f43f af53 	beq.w	8004e16 <_dtoa_r+0x7e>
 8004f70:	f10b 0303 	add.w	r3, fp, #3
 8004f74:	e7f0      	b.n	8004f58 <_dtoa_r+0x1c0>
 8004f76:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004f7a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004f7e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004f80:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004f84:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004f88:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004f8a:	e76f      	b.n	8004e6c <_dtoa_r+0xd4>
 8004f8c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004fc8 <_dtoa_r+0x230>
 8004f90:	4658      	mov	r0, fp
 8004f92:	b01b      	add	sp, #108	; 0x6c
 8004f94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f98:	636f4361 	.word	0x636f4361
 8004f9c:	3fd287a7 	.word	0x3fd287a7
 8004fa0:	8b60c8b3 	.word	0x8b60c8b3
 8004fa4:	3fc68a28 	.word	0x3fc68a28
 8004fa8:	509f79fb 	.word	0x509f79fb
 8004fac:	3fd34413 	.word	0x3fd34413
 8004fb0:	7ff00000 	.word	0x7ff00000
 8004fb4:	080077c9 	.word	0x080077c9
 8004fb8:	3ff80000 	.word	0x3ff80000
 8004fbc:	08007928 	.word	0x08007928
 8004fc0:	080078f0 	.word	0x080078f0
 8004fc4:	080078fc 	.word	0x080078fc
 8004fc8:	080077c8 	.word	0x080077c8
 8004fcc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004fd0:	2501      	movs	r5, #1
 8004fd2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004fd6:	2300      	movs	r3, #0
 8004fd8:	9302      	str	r3, [sp, #8]
 8004fda:	9307      	str	r3, [sp, #28]
 8004fdc:	2100      	movs	r1, #0
 8004fde:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004fe2:	940e      	str	r4, [sp, #56]	; 0x38
 8004fe4:	4648      	mov	r0, r9
 8004fe6:	f001 fb1d 	bl	8006624 <_Balloc>
 8004fea:	2c0e      	cmp	r4, #14
 8004fec:	4683      	mov	fp, r0
 8004fee:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ff2:	f200 80fb 	bhi.w	80051ec <_dtoa_r+0x454>
 8004ff6:	2d00      	cmp	r5, #0
 8004ff8:	f000 80f8 	beq.w	80051ec <_dtoa_r+0x454>
 8004ffc:	ed9d 7b00 	vldr	d7, [sp]
 8005000:	9906      	ldr	r1, [sp, #24]
 8005002:	2900      	cmp	r1, #0
 8005004:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005008:	f340 83e5 	ble.w	80057d6 <_dtoa_r+0xa3e>
 800500c:	4b9d      	ldr	r3, [pc, #628]	; (8005284 <_dtoa_r+0x4ec>)
 800500e:	f001 020f 	and.w	r2, r1, #15
 8005012:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005016:	ed93 7b00 	vldr	d7, [r3]
 800501a:	110c      	asrs	r4, r1, #4
 800501c:	06e2      	lsls	r2, r4, #27
 800501e:	ed8d 7b00 	vstr	d7, [sp]
 8005022:	f140 849e 	bpl.w	8005962 <_dtoa_r+0xbca>
 8005026:	4b98      	ldr	r3, [pc, #608]	; (8005288 <_dtoa_r+0x4f0>)
 8005028:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800502c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005030:	f7fb fbcc 	bl	80007cc <__aeabi_ddiv>
 8005034:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005038:	f004 040f 	and.w	r4, r4, #15
 800503c:	2603      	movs	r6, #3
 800503e:	b17c      	cbz	r4, 8005060 <_dtoa_r+0x2c8>
 8005040:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005044:	4d90      	ldr	r5, [pc, #576]	; (8005288 <_dtoa_r+0x4f0>)
 8005046:	07e3      	lsls	r3, r4, #31
 8005048:	d504      	bpl.n	8005054 <_dtoa_r+0x2bc>
 800504a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800504e:	f7fb fa93 	bl	8000578 <__aeabi_dmul>
 8005052:	3601      	adds	r6, #1
 8005054:	1064      	asrs	r4, r4, #1
 8005056:	f105 0508 	add.w	r5, r5, #8
 800505a:	d1f4      	bne.n	8005046 <_dtoa_r+0x2ae>
 800505c:	e9cd 0100 	strd	r0, r1, [sp]
 8005060:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005064:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005068:	f7fb fbb0 	bl	80007cc <__aeabi_ddiv>
 800506c:	e9cd 0100 	strd	r0, r1, [sp]
 8005070:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005072:	b143      	cbz	r3, 8005086 <_dtoa_r+0x2ee>
 8005074:	2200      	movs	r2, #0
 8005076:	4b85      	ldr	r3, [pc, #532]	; (800528c <_dtoa_r+0x4f4>)
 8005078:	e9dd 0100 	ldrd	r0, r1, [sp]
 800507c:	f7fc f800 	bl	8001080 <__aeabi_dcmplt>
 8005080:	2800      	cmp	r0, #0
 8005082:	f040 84ff 	bne.w	8005a84 <_dtoa_r+0xcec>
 8005086:	4630      	mov	r0, r6
 8005088:	f7fb fa0c 	bl	80004a4 <__aeabi_i2d>
 800508c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005090:	f7fb fa72 	bl	8000578 <__aeabi_dmul>
 8005094:	4b7e      	ldr	r3, [pc, #504]	; (8005290 <_dtoa_r+0x4f8>)
 8005096:	2200      	movs	r2, #0
 8005098:	f7fb f8b8 	bl	800020c <__adddf3>
 800509c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800509e:	4606      	mov	r6, r0
 80050a0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80050a4:	2b00      	cmp	r3, #0
 80050a6:	f000 841c 	beq.w	80058e2 <_dtoa_r+0xb4a>
 80050aa:	9b06      	ldr	r3, [sp, #24]
 80050ac:	9316      	str	r3, [sp, #88]	; 0x58
 80050ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050b0:	9312      	str	r3, [sp, #72]	; 0x48
 80050b2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050b6:	f7fc f821 	bl	80010fc <__aeabi_d2iz>
 80050ba:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80050bc:	4b71      	ldr	r3, [pc, #452]	; (8005284 <_dtoa_r+0x4ec>)
 80050be:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80050c2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80050c6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80050ca:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80050ce:	f7fb f9e9 	bl	80004a4 <__aeabi_i2d>
 80050d2:	460b      	mov	r3, r1
 80050d4:	4602      	mov	r2, r0
 80050d6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050da:	e9cd 6700 	strd	r6, r7, [sp]
 80050de:	f7fb f893 	bl	8000208 <__aeabi_dsub>
 80050e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80050e4:	b2ed      	uxtb	r5, r5
 80050e6:	4606      	mov	r6, r0
 80050e8:	460f      	mov	r7, r1
 80050ea:	f10b 0401 	add.w	r4, fp, #1
 80050ee:	2b00      	cmp	r3, #0
 80050f0:	f000 8458 	beq.w	80059a4 <_dtoa_r+0xc0c>
 80050f4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80050f8:	2000      	movs	r0, #0
 80050fa:	4966      	ldr	r1, [pc, #408]	; (8005294 <_dtoa_r+0x4fc>)
 80050fc:	f7fb fb66 	bl	80007cc <__aeabi_ddiv>
 8005100:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005104:	f7fb f880 	bl	8000208 <__aeabi_dsub>
 8005108:	f88b 5000 	strb.w	r5, [fp]
 800510c:	4632      	mov	r2, r6
 800510e:	463b      	mov	r3, r7
 8005110:	e9cd 0100 	strd	r0, r1, [sp]
 8005114:	f7fb ffd2 	bl	80010bc <__aeabi_dcmpgt>
 8005118:	2800      	cmp	r0, #0
 800511a:	f040 8502 	bne.w	8005b22 <_dtoa_r+0xd8a>
 800511e:	4632      	mov	r2, r6
 8005120:	463b      	mov	r3, r7
 8005122:	2000      	movs	r0, #0
 8005124:	4959      	ldr	r1, [pc, #356]	; (800528c <_dtoa_r+0x4f4>)
 8005126:	f7fb f86f 	bl	8000208 <__aeabi_dsub>
 800512a:	4602      	mov	r2, r0
 800512c:	460b      	mov	r3, r1
 800512e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005132:	f7fb ffc3 	bl	80010bc <__aeabi_dcmpgt>
 8005136:	2800      	cmp	r0, #0
 8005138:	f040 84fb 	bne.w	8005b32 <_dtoa_r+0xd9a>
 800513c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800513e:	2a01      	cmp	r2, #1
 8005140:	d050      	beq.n	80051e4 <_dtoa_r+0x44c>
 8005142:	445a      	add	r2, fp
 8005144:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005148:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800514c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005150:	4692      	mov	sl, r2
 8005152:	46cb      	mov	fp, r9
 8005154:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005158:	e00c      	b.n	8005174 <_dtoa_r+0x3dc>
 800515a:	2000      	movs	r0, #0
 800515c:	494b      	ldr	r1, [pc, #300]	; (800528c <_dtoa_r+0x4f4>)
 800515e:	f7fb f853 	bl	8000208 <__aeabi_dsub>
 8005162:	4642      	mov	r2, r8
 8005164:	464b      	mov	r3, r9
 8005166:	f7fb ff8b 	bl	8001080 <__aeabi_dcmplt>
 800516a:	2800      	cmp	r0, #0
 800516c:	f040 84dc 	bne.w	8005b28 <_dtoa_r+0xd90>
 8005170:	4554      	cmp	r4, sl
 8005172:	d030      	beq.n	80051d6 <_dtoa_r+0x43e>
 8005174:	4640      	mov	r0, r8
 8005176:	4649      	mov	r1, r9
 8005178:	2200      	movs	r2, #0
 800517a:	4b47      	ldr	r3, [pc, #284]	; (8005298 <_dtoa_r+0x500>)
 800517c:	f7fb f9fc 	bl	8000578 <__aeabi_dmul>
 8005180:	2200      	movs	r2, #0
 8005182:	4b45      	ldr	r3, [pc, #276]	; (8005298 <_dtoa_r+0x500>)
 8005184:	4680      	mov	r8, r0
 8005186:	4689      	mov	r9, r1
 8005188:	4630      	mov	r0, r6
 800518a:	4639      	mov	r1, r7
 800518c:	f7fb f9f4 	bl	8000578 <__aeabi_dmul>
 8005190:	460f      	mov	r7, r1
 8005192:	4606      	mov	r6, r0
 8005194:	f7fb ffb2 	bl	80010fc <__aeabi_d2iz>
 8005198:	4605      	mov	r5, r0
 800519a:	f7fb f983 	bl	80004a4 <__aeabi_i2d>
 800519e:	4602      	mov	r2, r0
 80051a0:	460b      	mov	r3, r1
 80051a2:	4630      	mov	r0, r6
 80051a4:	4639      	mov	r1, r7
 80051a6:	f7fb f82f 	bl	8000208 <__aeabi_dsub>
 80051aa:	3530      	adds	r5, #48	; 0x30
 80051ac:	b2ed      	uxtb	r5, r5
 80051ae:	4642      	mov	r2, r8
 80051b0:	464b      	mov	r3, r9
 80051b2:	f804 5b01 	strb.w	r5, [r4], #1
 80051b6:	4606      	mov	r6, r0
 80051b8:	460f      	mov	r7, r1
 80051ba:	f7fb ff61 	bl	8001080 <__aeabi_dcmplt>
 80051be:	4632      	mov	r2, r6
 80051c0:	463b      	mov	r3, r7
 80051c2:	2800      	cmp	r0, #0
 80051c4:	d0c9      	beq.n	800515a <_dtoa_r+0x3c2>
 80051c6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051c8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051cc:	9306      	str	r3, [sp, #24]
 80051ce:	46d9      	mov	r9, fp
 80051d0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051d4:	e236      	b.n	8005644 <_dtoa_r+0x8ac>
 80051d6:	46d9      	mov	r9, fp
 80051d8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80051dc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051e0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051e4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80051e8:	e9cd 3400 	strd	r3, r4, [sp]
 80051ec:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80051ee:	2b00      	cmp	r3, #0
 80051f0:	f2c0 80ae 	blt.w	8005350 <_dtoa_r+0x5b8>
 80051f4:	9a06      	ldr	r2, [sp, #24]
 80051f6:	2a0e      	cmp	r2, #14
 80051f8:	f300 80aa 	bgt.w	8005350 <_dtoa_r+0x5b8>
 80051fc:	4b21      	ldr	r3, [pc, #132]	; (8005284 <_dtoa_r+0x4ec>)
 80051fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005202:	ed93 7b00 	vldr	d7, [r3]
 8005206:	9b07      	ldr	r3, [sp, #28]
 8005208:	2b00      	cmp	r3, #0
 800520a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800520e:	f2c0 82be 	blt.w	800578e <_dtoa_r+0x9f6>
 8005212:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005216:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800521a:	4630      	mov	r0, r6
 800521c:	4639      	mov	r1, r7
 800521e:	f7fb fad5 	bl	80007cc <__aeabi_ddiv>
 8005222:	f7fb ff6b 	bl	80010fc <__aeabi_d2iz>
 8005226:	4605      	mov	r5, r0
 8005228:	f7fb f93c 	bl	80004a4 <__aeabi_i2d>
 800522c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005230:	f7fb f9a2 	bl	8000578 <__aeabi_dmul>
 8005234:	460b      	mov	r3, r1
 8005236:	4602      	mov	r2, r0
 8005238:	4639      	mov	r1, r7
 800523a:	4630      	mov	r0, r6
 800523c:	f7fa ffe4 	bl	8000208 <__aeabi_dsub>
 8005240:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8005244:	f88b 3000 	strb.w	r3, [fp]
 8005248:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800524a:	2b01      	cmp	r3, #1
 800524c:	4606      	mov	r6, r0
 800524e:	460f      	mov	r7, r1
 8005250:	f10b 0401 	add.w	r4, fp, #1
 8005254:	d053      	beq.n	80052fe <_dtoa_r+0x566>
 8005256:	2200      	movs	r2, #0
 8005258:	4b0f      	ldr	r3, [pc, #60]	; (8005298 <_dtoa_r+0x500>)
 800525a:	f7fb f98d 	bl	8000578 <__aeabi_dmul>
 800525e:	2200      	movs	r2, #0
 8005260:	2300      	movs	r3, #0
 8005262:	4606      	mov	r6, r0
 8005264:	460f      	mov	r7, r1
 8005266:	f7fb ff01 	bl	800106c <__aeabi_dcmpeq>
 800526a:	2800      	cmp	r0, #0
 800526c:	f040 81ea 	bne.w	8005644 <_dtoa_r+0x8ac>
 8005270:	f8cd a000 	str.w	sl, [sp]
 8005274:	f8cd 901c 	str.w	r9, [sp, #28]
 8005278:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800527c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005280:	e017      	b.n	80052b2 <_dtoa_r+0x51a>
 8005282:	bf00      	nop
 8005284:	08007928 	.word	0x08007928
 8005288:	08007900 	.word	0x08007900
 800528c:	3ff00000 	.word	0x3ff00000
 8005290:	401c0000 	.word	0x401c0000
 8005294:	3fe00000 	.word	0x3fe00000
 8005298:	40240000 	.word	0x40240000
 800529c:	f7fb f96c 	bl	8000578 <__aeabi_dmul>
 80052a0:	2200      	movs	r2, #0
 80052a2:	2300      	movs	r3, #0
 80052a4:	4606      	mov	r6, r0
 80052a6:	460f      	mov	r7, r1
 80052a8:	f7fb fee0 	bl	800106c <__aeabi_dcmpeq>
 80052ac:	2800      	cmp	r0, #0
 80052ae:	f040 833d 	bne.w	800592c <_dtoa_r+0xb94>
 80052b2:	464a      	mov	r2, r9
 80052b4:	4653      	mov	r3, sl
 80052b6:	4630      	mov	r0, r6
 80052b8:	4639      	mov	r1, r7
 80052ba:	f7fb fa87 	bl	80007cc <__aeabi_ddiv>
 80052be:	f7fb ff1d 	bl	80010fc <__aeabi_d2iz>
 80052c2:	4605      	mov	r5, r0
 80052c4:	f7fb f8ee 	bl	80004a4 <__aeabi_i2d>
 80052c8:	464a      	mov	r2, r9
 80052ca:	4653      	mov	r3, sl
 80052cc:	f7fb f954 	bl	8000578 <__aeabi_dmul>
 80052d0:	4602      	mov	r2, r0
 80052d2:	460b      	mov	r3, r1
 80052d4:	4630      	mov	r0, r6
 80052d6:	4639      	mov	r1, r7
 80052d8:	f7fa ff96 	bl	8000208 <__aeabi_dsub>
 80052dc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80052e0:	f804 cb01 	strb.w	ip, [r4], #1
 80052e4:	eba4 0c0b 	sub.w	ip, r4, fp
 80052e8:	45e0      	cmp	r8, ip
 80052ea:	4606      	mov	r6, r0
 80052ec:	460f      	mov	r7, r1
 80052ee:	f04f 0200 	mov.w	r2, #0
 80052f2:	4bc1      	ldr	r3, [pc, #772]	; (80055f8 <_dtoa_r+0x860>)
 80052f4:	d1d2      	bne.n	800529c <_dtoa_r+0x504>
 80052f6:	f8dd a000 	ldr.w	sl, [sp]
 80052fa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80052fe:	4632      	mov	r2, r6
 8005300:	463b      	mov	r3, r7
 8005302:	4630      	mov	r0, r6
 8005304:	4639      	mov	r1, r7
 8005306:	f7fa ff81 	bl	800020c <__adddf3>
 800530a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800530e:	4606      	mov	r6, r0
 8005310:	460f      	mov	r7, r1
 8005312:	f7fb fed3 	bl	80010bc <__aeabi_dcmpgt>
 8005316:	b958      	cbnz	r0, 8005330 <_dtoa_r+0x598>
 8005318:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800531c:	4630      	mov	r0, r6
 800531e:	4639      	mov	r1, r7
 8005320:	f7fb fea4 	bl	800106c <__aeabi_dcmpeq>
 8005324:	2800      	cmp	r0, #0
 8005326:	f000 818d 	beq.w	8005644 <_dtoa_r+0x8ac>
 800532a:	07e9      	lsls	r1, r5, #31
 800532c:	f140 818a 	bpl.w	8005644 <_dtoa_r+0x8ac>
 8005330:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005334:	e005      	b.n	8005342 <_dtoa_r+0x5aa>
 8005336:	459b      	cmp	fp, r3
 8005338:	f000 8373 	beq.w	8005a22 <_dtoa_r+0xc8a>
 800533c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005340:	461c      	mov	r4, r3
 8005342:	2d39      	cmp	r5, #57	; 0x39
 8005344:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005348:	d0f5      	beq.n	8005336 <_dtoa_r+0x59e>
 800534a:	3501      	adds	r5, #1
 800534c:	701d      	strb	r5, [r3, #0]
 800534e:	e179      	b.n	8005644 <_dtoa_r+0x8ac>
 8005350:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005352:	2a00      	cmp	r2, #0
 8005354:	d03b      	beq.n	80053ce <_dtoa_r+0x636>
 8005356:	9a02      	ldr	r2, [sp, #8]
 8005358:	2a01      	cmp	r2, #1
 800535a:	f340 820b 	ble.w	8005774 <_dtoa_r+0x9dc>
 800535e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005360:	1e5f      	subs	r7, r3, #1
 8005362:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005364:	42bb      	cmp	r3, r7
 8005366:	f2c0 82e6 	blt.w	8005936 <_dtoa_r+0xb9e>
 800536a:	1bdf      	subs	r7, r3, r7
 800536c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800536e:	2b00      	cmp	r3, #0
 8005370:	f2c0 830b 	blt.w	800598a <_dtoa_r+0xbf2>
 8005374:	9a08      	ldr	r2, [sp, #32]
 8005376:	4614      	mov	r4, r2
 8005378:	441a      	add	r2, r3
 800537a:	4498      	add	r8, r3
 800537c:	9208      	str	r2, [sp, #32]
 800537e:	2101      	movs	r1, #1
 8005380:	4648      	mov	r0, r9
 8005382:	f001 fa0f 	bl	80067a4 <__i2b>
 8005386:	4605      	mov	r5, r0
 8005388:	e024      	b.n	80053d4 <_dtoa_r+0x63c>
 800538a:	2301      	movs	r3, #1
 800538c:	930d      	str	r3, [sp, #52]	; 0x34
 800538e:	e5af      	b.n	8004ef0 <_dtoa_r+0x158>
 8005390:	9a08      	ldr	r2, [sp, #32]
 8005392:	9b06      	ldr	r3, [sp, #24]
 8005394:	1ad2      	subs	r2, r2, r3
 8005396:	425b      	negs	r3, r3
 8005398:	930b      	str	r3, [sp, #44]	; 0x2c
 800539a:	2300      	movs	r3, #0
 800539c:	9208      	str	r2, [sp, #32]
 800539e:	930c      	str	r3, [sp, #48]	; 0x30
 80053a0:	e5b5      	b.n	8004f0e <_dtoa_r+0x176>
 80053a2:	f1c4 0301 	rsb	r3, r4, #1
 80053a6:	9308      	str	r3, [sp, #32]
 80053a8:	f04f 0800 	mov.w	r8, #0
 80053ac:	e5a7      	b.n	8004efe <_dtoa_r+0x166>
 80053ae:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80053b2:	4640      	mov	r0, r8
 80053b4:	f7fb f876 	bl	80004a4 <__aeabi_i2d>
 80053b8:	4632      	mov	r2, r6
 80053ba:	463b      	mov	r3, r7
 80053bc:	f7fb fe56 	bl	800106c <__aeabi_dcmpeq>
 80053c0:	2800      	cmp	r0, #0
 80053c2:	f47f ad81 	bne.w	8004ec8 <_dtoa_r+0x130>
 80053c6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80053ca:	9306      	str	r3, [sp, #24]
 80053cc:	e57c      	b.n	8004ec8 <_dtoa_r+0x130>
 80053ce:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80053d0:	9c08      	ldr	r4, [sp, #32]
 80053d2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80053d4:	2c00      	cmp	r4, #0
 80053d6:	dd0c      	ble.n	80053f2 <_dtoa_r+0x65a>
 80053d8:	f1b8 0f00 	cmp.w	r8, #0
 80053dc:	dd09      	ble.n	80053f2 <_dtoa_r+0x65a>
 80053de:	4544      	cmp	r4, r8
 80053e0:	9a08      	ldr	r2, [sp, #32]
 80053e2:	4623      	mov	r3, r4
 80053e4:	bfa8      	it	ge
 80053e6:	4643      	movge	r3, r8
 80053e8:	1ad2      	subs	r2, r2, r3
 80053ea:	9208      	str	r2, [sp, #32]
 80053ec:	1ae4      	subs	r4, r4, r3
 80053ee:	eba8 0803 	sub.w	r8, r8, r3
 80053f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80053f4:	b16b      	cbz	r3, 8005412 <_dtoa_r+0x67a>
 80053f6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80053f8:	2a00      	cmp	r2, #0
 80053fa:	f000 8290 	beq.w	800591e <_dtoa_r+0xb86>
 80053fe:	1bde      	subs	r6, r3, r7
 8005400:	2f00      	cmp	r7, #0
 8005402:	f040 819b 	bne.w	800573c <_dtoa_r+0x9a4>
 8005406:	4651      	mov	r1, sl
 8005408:	4632      	mov	r2, r6
 800540a:	4648      	mov	r0, r9
 800540c:	f001 fa7a 	bl	8006904 <__pow5mult>
 8005410:	4682      	mov	sl, r0
 8005412:	2101      	movs	r1, #1
 8005414:	4648      	mov	r0, r9
 8005416:	f001 f9c5 	bl	80067a4 <__i2b>
 800541a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800541c:	4606      	mov	r6, r0
 800541e:	2a00      	cmp	r2, #0
 8005420:	f040 8125 	bne.w	800566e <_dtoa_r+0x8d6>
 8005424:	9b02      	ldr	r3, [sp, #8]
 8005426:	2b01      	cmp	r3, #1
 8005428:	f340 816c 	ble.w	8005704 <_dtoa_r+0x96c>
 800542c:	2001      	movs	r0, #1
 800542e:	4440      	add	r0, r8
 8005430:	f010 001f 	ands.w	r0, r0, #31
 8005434:	f000 8119 	beq.w	800566a <_dtoa_r+0x8d2>
 8005438:	f1c0 0320 	rsb	r3, r0, #32
 800543c:	2b04      	cmp	r3, #4
 800543e:	f340 83ac 	ble.w	8005b9a <_dtoa_r+0xe02>
 8005442:	f1c0 001c 	rsb	r0, r0, #28
 8005446:	9b08      	ldr	r3, [sp, #32]
 8005448:	4403      	add	r3, r0
 800544a:	9308      	str	r3, [sp, #32]
 800544c:	4404      	add	r4, r0
 800544e:	4480      	add	r8, r0
 8005450:	9b08      	ldr	r3, [sp, #32]
 8005452:	2b00      	cmp	r3, #0
 8005454:	dd05      	ble.n	8005462 <_dtoa_r+0x6ca>
 8005456:	4651      	mov	r1, sl
 8005458:	461a      	mov	r2, r3
 800545a:	4648      	mov	r0, r9
 800545c:	f001 faa2 	bl	80069a4 <__lshift>
 8005460:	4682      	mov	sl, r0
 8005462:	f1b8 0f00 	cmp.w	r8, #0
 8005466:	dd05      	ble.n	8005474 <_dtoa_r+0x6dc>
 8005468:	4631      	mov	r1, r6
 800546a:	4642      	mov	r2, r8
 800546c:	4648      	mov	r0, r9
 800546e:	f001 fa99 	bl	80069a4 <__lshift>
 8005472:	4606      	mov	r6, r0
 8005474:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005476:	2b00      	cmp	r3, #0
 8005478:	d177      	bne.n	800556a <_dtoa_r+0x7d2>
 800547a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800547c:	2b00      	cmp	r3, #0
 800547e:	f340 8209 	ble.w	8005894 <_dtoa_r+0xafc>
 8005482:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005484:	2b00      	cmp	r3, #0
 8005486:	f000 8089 	beq.w	800559c <_dtoa_r+0x804>
 800548a:	2c00      	cmp	r4, #0
 800548c:	f300 816b 	bgt.w	8005766 <_dtoa_r+0x9ce>
 8005490:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005492:	2b00      	cmp	r3, #0
 8005494:	f040 81cd 	bne.w	8005832 <_dtoa_r+0xa9a>
 8005498:	46a8      	mov	r8, r5
 800549a:	9a00      	ldr	r2, [sp, #0]
 800549c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80054a0:	f002 0201 	and.w	r2, r2, #1
 80054a4:	920a      	str	r2, [sp, #40]	; 0x28
 80054a6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80054a8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80054ac:	441a      	add	r2, r3
 80054ae:	465f      	mov	r7, fp
 80054b0:	9209      	str	r2, [sp, #36]	; 0x24
 80054b2:	46b3      	mov	fp, r6
 80054b4:	4659      	mov	r1, fp
 80054b6:	4650      	mov	r0, sl
 80054b8:	f7ff fbda 	bl	8004c70 <quorem>
 80054bc:	4629      	mov	r1, r5
 80054be:	4604      	mov	r4, r0
 80054c0:	4650      	mov	r0, sl
 80054c2:	f001 fac5 	bl	8006a50 <__mcmp>
 80054c6:	4659      	mov	r1, fp
 80054c8:	4606      	mov	r6, r0
 80054ca:	4642      	mov	r2, r8
 80054cc:	4648      	mov	r0, r9
 80054ce:	f001 fadb 	bl	8006a88 <__mdiff>
 80054d2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80054d6:	9300      	str	r3, [sp, #0]
 80054d8:	68c3      	ldr	r3, [r0, #12]
 80054da:	4601      	mov	r1, r0
 80054dc:	2b00      	cmp	r3, #0
 80054de:	f040 81d4 	bne.w	800588a <_dtoa_r+0xaf2>
 80054e2:	9008      	str	r0, [sp, #32]
 80054e4:	4650      	mov	r0, sl
 80054e6:	f001 fab3 	bl	8006a50 <__mcmp>
 80054ea:	9a08      	ldr	r2, [sp, #32]
 80054ec:	9007      	str	r0, [sp, #28]
 80054ee:	4611      	mov	r1, r2
 80054f0:	4648      	mov	r0, r9
 80054f2:	f001 f8bd 	bl	8006670 <_Bfree>
 80054f6:	9b07      	ldr	r3, [sp, #28]
 80054f8:	b933      	cbnz	r3, 8005508 <_dtoa_r+0x770>
 80054fa:	9a02      	ldr	r2, [sp, #8]
 80054fc:	b922      	cbnz	r2, 8005508 <_dtoa_r+0x770>
 80054fe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005500:	2b00      	cmp	r3, #0
 8005502:	f000 8319 	beq.w	8005b38 <_dtoa_r+0xda0>
 8005506:	9b02      	ldr	r3, [sp, #8]
 8005508:	2e00      	cmp	r6, #0
 800550a:	f2c0 821c 	blt.w	8005946 <_dtoa_r+0xbae>
 800550e:	d105      	bne.n	800551c <_dtoa_r+0x784>
 8005510:	9a02      	ldr	r2, [sp, #8]
 8005512:	b91a      	cbnz	r2, 800551c <_dtoa_r+0x784>
 8005514:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005516:	2a00      	cmp	r2, #0
 8005518:	f000 8215 	beq.w	8005946 <_dtoa_r+0xbae>
 800551c:	2b00      	cmp	r3, #0
 800551e:	f107 0401 	add.w	r4, r7, #1
 8005522:	f300 8225 	bgt.w	8005970 <_dtoa_r+0xbd8>
 8005526:	9b00      	ldr	r3, [sp, #0]
 8005528:	703b      	strb	r3, [r7, #0]
 800552a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800552c:	42bb      	cmp	r3, r7
 800552e:	f000 8230 	beq.w	8005992 <_dtoa_r+0xbfa>
 8005532:	4651      	mov	r1, sl
 8005534:	2300      	movs	r3, #0
 8005536:	220a      	movs	r2, #10
 8005538:	4648      	mov	r0, r9
 800553a:	f001 f8a3 	bl	8006684 <__multadd>
 800553e:	4545      	cmp	r5, r8
 8005540:	4682      	mov	sl, r0
 8005542:	4629      	mov	r1, r5
 8005544:	f04f 0300 	mov.w	r3, #0
 8005548:	f04f 020a 	mov.w	r2, #10
 800554c:	4648      	mov	r0, r9
 800554e:	f000 8196 	beq.w	800587e <_dtoa_r+0xae6>
 8005552:	f001 f897 	bl	8006684 <__multadd>
 8005556:	4641      	mov	r1, r8
 8005558:	4605      	mov	r5, r0
 800555a:	2300      	movs	r3, #0
 800555c:	220a      	movs	r2, #10
 800555e:	4648      	mov	r0, r9
 8005560:	f001 f890 	bl	8006684 <__multadd>
 8005564:	4627      	mov	r7, r4
 8005566:	4680      	mov	r8, r0
 8005568:	e7a4      	b.n	80054b4 <_dtoa_r+0x71c>
 800556a:	4631      	mov	r1, r6
 800556c:	4650      	mov	r0, sl
 800556e:	f001 fa6f 	bl	8006a50 <__mcmp>
 8005572:	2800      	cmp	r0, #0
 8005574:	da81      	bge.n	800547a <_dtoa_r+0x6e2>
 8005576:	9f06      	ldr	r7, [sp, #24]
 8005578:	4651      	mov	r1, sl
 800557a:	2300      	movs	r3, #0
 800557c:	220a      	movs	r2, #10
 800557e:	4648      	mov	r0, r9
 8005580:	3f01      	subs	r7, #1
 8005582:	9706      	str	r7, [sp, #24]
 8005584:	f001 f87e 	bl	8006684 <__multadd>
 8005588:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800558a:	4682      	mov	sl, r0
 800558c:	2b00      	cmp	r3, #0
 800558e:	f040 82eb 	bne.w	8005b68 <_dtoa_r+0xdd0>
 8005592:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005594:	2b00      	cmp	r3, #0
 8005596:	f340 82f3 	ble.w	8005b80 <_dtoa_r+0xde8>
 800559a:	9309      	str	r3, [sp, #36]	; 0x24
 800559c:	465c      	mov	r4, fp
 800559e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80055a2:	e002      	b.n	80055aa <_dtoa_r+0x812>
 80055a4:	f001 f86e 	bl	8006684 <__multadd>
 80055a8:	4682      	mov	sl, r0
 80055aa:	4631      	mov	r1, r6
 80055ac:	4650      	mov	r0, sl
 80055ae:	f7ff fb5f 	bl	8004c70 <quorem>
 80055b2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80055b6:	f804 7b01 	strb.w	r7, [r4], #1
 80055ba:	eba4 030b 	sub.w	r3, r4, fp
 80055be:	4598      	cmp	r8, r3
 80055c0:	f04f 020a 	mov.w	r2, #10
 80055c4:	f04f 0300 	mov.w	r3, #0
 80055c8:	4651      	mov	r1, sl
 80055ca:	4648      	mov	r0, r9
 80055cc:	dcea      	bgt.n	80055a4 <_dtoa_r+0x80c>
 80055ce:	2300      	movs	r3, #0
 80055d0:	9700      	str	r7, [sp, #0]
 80055d2:	9302      	str	r3, [sp, #8]
 80055d4:	4651      	mov	r1, sl
 80055d6:	2201      	movs	r2, #1
 80055d8:	4648      	mov	r0, r9
 80055da:	f001 f9e3 	bl	80069a4 <__lshift>
 80055de:	4631      	mov	r1, r6
 80055e0:	4682      	mov	sl, r0
 80055e2:	f001 fa35 	bl	8006a50 <__mcmp>
 80055e6:	2800      	cmp	r0, #0
 80055e8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80055ec:	dc14      	bgt.n	8005618 <_dtoa_r+0x880>
 80055ee:	d108      	bne.n	8005602 <_dtoa_r+0x86a>
 80055f0:	9b00      	ldr	r3, [sp, #0]
 80055f2:	07db      	lsls	r3, r3, #31
 80055f4:	d410      	bmi.n	8005618 <_dtoa_r+0x880>
 80055f6:	e004      	b.n	8005602 <_dtoa_r+0x86a>
 80055f8:	40240000 	.word	0x40240000
 80055fc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005600:	461c      	mov	r4, r3
 8005602:	2a30      	cmp	r2, #48	; 0x30
 8005604:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005608:	d0f8      	beq.n	80055fc <_dtoa_r+0x864>
 800560a:	e00b      	b.n	8005624 <_dtoa_r+0x88c>
 800560c:	459b      	cmp	fp, r3
 800560e:	f000 814e 	beq.w	80058ae <_dtoa_r+0xb16>
 8005612:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005616:	461c      	mov	r4, r3
 8005618:	2a39      	cmp	r2, #57	; 0x39
 800561a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800561e:	d0f5      	beq.n	800560c <_dtoa_r+0x874>
 8005620:	3201      	adds	r2, #1
 8005622:	701a      	strb	r2, [r3, #0]
 8005624:	4631      	mov	r1, r6
 8005626:	4648      	mov	r0, r9
 8005628:	f001 f822 	bl	8006670 <_Bfree>
 800562c:	b155      	cbz	r5, 8005644 <_dtoa_r+0x8ac>
 800562e:	9902      	ldr	r1, [sp, #8]
 8005630:	b121      	cbz	r1, 800563c <_dtoa_r+0x8a4>
 8005632:	42a9      	cmp	r1, r5
 8005634:	d002      	beq.n	800563c <_dtoa_r+0x8a4>
 8005636:	4648      	mov	r0, r9
 8005638:	f001 f81a 	bl	8006670 <_Bfree>
 800563c:	4629      	mov	r1, r5
 800563e:	4648      	mov	r0, r9
 8005640:	f001 f816 	bl	8006670 <_Bfree>
 8005644:	4651      	mov	r1, sl
 8005646:	4648      	mov	r0, r9
 8005648:	f001 f812 	bl	8006670 <_Bfree>
 800564c:	2200      	movs	r2, #0
 800564e:	9b06      	ldr	r3, [sp, #24]
 8005650:	7022      	strb	r2, [r4, #0]
 8005652:	9a05      	ldr	r2, [sp, #20]
 8005654:	3301      	adds	r3, #1
 8005656:	6013      	str	r3, [r2, #0]
 8005658:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800565a:	2b00      	cmp	r3, #0
 800565c:	f43f abdb 	beq.w	8004e16 <_dtoa_r+0x7e>
 8005660:	4658      	mov	r0, fp
 8005662:	601c      	str	r4, [r3, #0]
 8005664:	b01b      	add	sp, #108	; 0x6c
 8005666:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800566a:	201c      	movs	r0, #28
 800566c:	e6eb      	b.n	8005446 <_dtoa_r+0x6ae>
 800566e:	4601      	mov	r1, r0
 8005670:	4648      	mov	r0, r9
 8005672:	f001 f947 	bl	8006904 <__pow5mult>
 8005676:	9b02      	ldr	r3, [sp, #8]
 8005678:	2b01      	cmp	r3, #1
 800567a:	4606      	mov	r6, r0
 800567c:	f340 80d4 	ble.w	8005828 <_dtoa_r+0xa90>
 8005680:	2300      	movs	r3, #0
 8005682:	930c      	str	r3, [sp, #48]	; 0x30
 8005684:	6933      	ldr	r3, [r6, #16]
 8005686:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800568a:	6918      	ldr	r0, [r3, #16]
 800568c:	f001 f83a 	bl	8006704 <__hi0bits>
 8005690:	f1c0 0020 	rsb	r0, r0, #32
 8005694:	e6cb      	b.n	800542e <_dtoa_r+0x696>
 8005696:	900d      	str	r0, [sp, #52]	; 0x34
 8005698:	e42a      	b.n	8004ef0 <_dtoa_r+0x158>
 800569a:	2501      	movs	r5, #1
 800569c:	e440      	b.n	8004f20 <_dtoa_r+0x188>
 800569e:	f1c3 0820 	rsb	r8, r3, #32
 80056a2:	9b00      	ldr	r3, [sp, #0]
 80056a4:	fa03 f008 	lsl.w	r0, r3, r8
 80056a8:	f7ff bbd8 	b.w	8004e5c <_dtoa_r+0xc4>
 80056ac:	2300      	movs	r3, #0
 80056ae:	930a      	str	r3, [sp, #40]	; 0x28
 80056b0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80056b4:	4413      	add	r3, r2
 80056b6:	930e      	str	r3, [sp, #56]	; 0x38
 80056b8:	3301      	adds	r3, #1
 80056ba:	2b01      	cmp	r3, #1
 80056bc:	461e      	mov	r6, r3
 80056be:	9309      	str	r3, [sp, #36]	; 0x24
 80056c0:	bfb8      	it	lt
 80056c2:	2601      	movlt	r6, #1
 80056c4:	2100      	movs	r1, #0
 80056c6:	2e17      	cmp	r6, #23
 80056c8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80056cc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80056ce:	f77f ac89 	ble.w	8004fe4 <_dtoa_r+0x24c>
 80056d2:	2201      	movs	r2, #1
 80056d4:	2304      	movs	r3, #4
 80056d6:	005b      	lsls	r3, r3, #1
 80056d8:	f103 0014 	add.w	r0, r3, #20
 80056dc:	42b0      	cmp	r0, r6
 80056de:	4611      	mov	r1, r2
 80056e0:	f102 0201 	add.w	r2, r2, #1
 80056e4:	d9f7      	bls.n	80056d6 <_dtoa_r+0x93e>
 80056e6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80056ea:	e47b      	b.n	8004fe4 <_dtoa_r+0x24c>
 80056ec:	2300      	movs	r3, #0
 80056ee:	930a      	str	r3, [sp, #40]	; 0x28
 80056f0:	9e07      	ldr	r6, [sp, #28]
 80056f2:	2e00      	cmp	r6, #0
 80056f4:	f340 80e2 	ble.w	80058bc <_dtoa_r+0xb24>
 80056f8:	960e      	str	r6, [sp, #56]	; 0x38
 80056fa:	9609      	str	r6, [sp, #36]	; 0x24
 80056fc:	e7e2      	b.n	80056c4 <_dtoa_r+0x92c>
 80056fe:	2301      	movs	r3, #1
 8005700:	930a      	str	r3, [sp, #40]	; 0x28
 8005702:	e7f5      	b.n	80056f0 <_dtoa_r+0x958>
 8005704:	9b00      	ldr	r3, [sp, #0]
 8005706:	2b00      	cmp	r3, #0
 8005708:	f47f ae90 	bne.w	800542c <_dtoa_r+0x694>
 800570c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005710:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005714:	2b00      	cmp	r3, #0
 8005716:	f040 8192 	bne.w	8005a3e <_dtoa_r+0xca6>
 800571a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800571e:	0d1b      	lsrs	r3, r3, #20
 8005720:	051b      	lsls	r3, r3, #20
 8005722:	b12b      	cbz	r3, 8005730 <_dtoa_r+0x998>
 8005724:	9b08      	ldr	r3, [sp, #32]
 8005726:	3301      	adds	r3, #1
 8005728:	9308      	str	r3, [sp, #32]
 800572a:	f108 0801 	add.w	r8, r8, #1
 800572e:	2301      	movs	r3, #1
 8005730:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005732:	930c      	str	r3, [sp, #48]	; 0x30
 8005734:	2a00      	cmp	r2, #0
 8005736:	f43f ae79 	beq.w	800542c <_dtoa_r+0x694>
 800573a:	e7a3      	b.n	8005684 <_dtoa_r+0x8ec>
 800573c:	463a      	mov	r2, r7
 800573e:	4629      	mov	r1, r5
 8005740:	4648      	mov	r0, r9
 8005742:	f001 f8df 	bl	8006904 <__pow5mult>
 8005746:	4652      	mov	r2, sl
 8005748:	4601      	mov	r1, r0
 800574a:	4605      	mov	r5, r0
 800574c:	4648      	mov	r0, r9
 800574e:	f001 f833 	bl	80067b8 <__multiply>
 8005752:	4651      	mov	r1, sl
 8005754:	4607      	mov	r7, r0
 8005756:	4648      	mov	r0, r9
 8005758:	f000 ff8a 	bl	8006670 <_Bfree>
 800575c:	46ba      	mov	sl, r7
 800575e:	2e00      	cmp	r6, #0
 8005760:	f43f ae57 	beq.w	8005412 <_dtoa_r+0x67a>
 8005764:	e64f      	b.n	8005406 <_dtoa_r+0x66e>
 8005766:	4629      	mov	r1, r5
 8005768:	4622      	mov	r2, r4
 800576a:	4648      	mov	r0, r9
 800576c:	f001 f91a 	bl	80069a4 <__lshift>
 8005770:	4605      	mov	r5, r0
 8005772:	e68d      	b.n	8005490 <_dtoa_r+0x6f8>
 8005774:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005776:	2a00      	cmp	r2, #0
 8005778:	f000 815d 	beq.w	8005a36 <_dtoa_r+0xc9e>
 800577c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005780:	9a08      	ldr	r2, [sp, #32]
 8005782:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005784:	4614      	mov	r4, r2
 8005786:	441a      	add	r2, r3
 8005788:	4498      	add	r8, r3
 800578a:	9208      	str	r2, [sp, #32]
 800578c:	e5f7      	b.n	800537e <_dtoa_r+0x5e6>
 800578e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005790:	2b00      	cmp	r3, #0
 8005792:	f73f ad3e 	bgt.w	8005212 <_dtoa_r+0x47a>
 8005796:	f040 80bc 	bne.w	8005912 <_dtoa_r+0xb7a>
 800579a:	ec51 0b17 	vmov	r0, r1, d7
 800579e:	2200      	movs	r2, #0
 80057a0:	4bb2      	ldr	r3, [pc, #712]	; (8005a6c <_dtoa_r+0xcd4>)
 80057a2:	f7fa fee9 	bl	8000578 <__aeabi_dmul>
 80057a6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80057aa:	f7fb fc7d 	bl	80010a8 <__aeabi_dcmpge>
 80057ae:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80057b0:	4635      	mov	r5, r6
 80057b2:	2800      	cmp	r0, #0
 80057b4:	d176      	bne.n	80058a4 <_dtoa_r+0xb0c>
 80057b6:	9a06      	ldr	r2, [sp, #24]
 80057b8:	2331      	movs	r3, #49	; 0x31
 80057ba:	3201      	adds	r2, #1
 80057bc:	9206      	str	r2, [sp, #24]
 80057be:	f88b 3000 	strb.w	r3, [fp]
 80057c2:	f10b 0401 	add.w	r4, fp, #1
 80057c6:	4631      	mov	r1, r6
 80057c8:	4648      	mov	r0, r9
 80057ca:	f000 ff51 	bl	8006670 <_Bfree>
 80057ce:	2d00      	cmp	r5, #0
 80057d0:	f47f af34 	bne.w	800563c <_dtoa_r+0x8a4>
 80057d4:	e736      	b.n	8005644 <_dtoa_r+0x8ac>
 80057d6:	f000 8142 	beq.w	8005a5e <_dtoa_r+0xcc6>
 80057da:	9b06      	ldr	r3, [sp, #24]
 80057dc:	425c      	negs	r4, r3
 80057de:	4ba4      	ldr	r3, [pc, #656]	; (8005a70 <_dtoa_r+0xcd8>)
 80057e0:	f004 020f 	and.w	r2, r4, #15
 80057e4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80057e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057ec:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80057f0:	f7fa fec2 	bl	8000578 <__aeabi_dmul>
 80057f4:	1124      	asrs	r4, r4, #4
 80057f6:	e9cd 0100 	strd	r0, r1, [sp]
 80057fa:	f000 81c6 	beq.w	8005b8a <_dtoa_r+0xdf2>
 80057fe:	4d9d      	ldr	r5, [pc, #628]	; (8005a74 <_dtoa_r+0xcdc>)
 8005800:	2300      	movs	r3, #0
 8005802:	2602      	movs	r6, #2
 8005804:	07e7      	lsls	r7, r4, #31
 8005806:	d505      	bpl.n	8005814 <_dtoa_r+0xa7c>
 8005808:	e9d5 2300 	ldrd	r2, r3, [r5]
 800580c:	f7fa feb4 	bl	8000578 <__aeabi_dmul>
 8005810:	3601      	adds	r6, #1
 8005812:	2301      	movs	r3, #1
 8005814:	1064      	asrs	r4, r4, #1
 8005816:	f105 0508 	add.w	r5, r5, #8
 800581a:	d1f3      	bne.n	8005804 <_dtoa_r+0xa6c>
 800581c:	2b00      	cmp	r3, #0
 800581e:	f43f ac27 	beq.w	8005070 <_dtoa_r+0x2d8>
 8005822:	e9cd 0100 	strd	r0, r1, [sp]
 8005826:	e423      	b.n	8005070 <_dtoa_r+0x2d8>
 8005828:	9b00      	ldr	r3, [sp, #0]
 800582a:	2b00      	cmp	r3, #0
 800582c:	f43f af6e 	beq.w	800570c <_dtoa_r+0x974>
 8005830:	e726      	b.n	8005680 <_dtoa_r+0x8e8>
 8005832:	6869      	ldr	r1, [r5, #4]
 8005834:	4648      	mov	r0, r9
 8005836:	f000 fef5 	bl	8006624 <_Balloc>
 800583a:	692b      	ldr	r3, [r5, #16]
 800583c:	3302      	adds	r3, #2
 800583e:	009a      	lsls	r2, r3, #2
 8005840:	4604      	mov	r4, r0
 8005842:	f105 010c 	add.w	r1, r5, #12
 8005846:	300c      	adds	r0, #12
 8005848:	f7fb fa48 	bl	8000cdc <memcpy>
 800584c:	4621      	mov	r1, r4
 800584e:	2201      	movs	r2, #1
 8005850:	4648      	mov	r0, r9
 8005852:	f001 f8a7 	bl	80069a4 <__lshift>
 8005856:	4680      	mov	r8, r0
 8005858:	e61f      	b.n	800549a <_dtoa_r+0x702>
 800585a:	2400      	movs	r4, #0
 800585c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005860:	4621      	mov	r1, r4
 8005862:	4648      	mov	r0, r9
 8005864:	f000 fede 	bl	8006624 <_Balloc>
 8005868:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800586c:	930e      	str	r3, [sp, #56]	; 0x38
 800586e:	9309      	str	r3, [sp, #36]	; 0x24
 8005870:	2301      	movs	r3, #1
 8005872:	4683      	mov	fp, r0
 8005874:	9407      	str	r4, [sp, #28]
 8005876:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800587a:	930a      	str	r3, [sp, #40]	; 0x28
 800587c:	e4b6      	b.n	80051ec <_dtoa_r+0x454>
 800587e:	f000 ff01 	bl	8006684 <__multadd>
 8005882:	4627      	mov	r7, r4
 8005884:	4605      	mov	r5, r0
 8005886:	4680      	mov	r8, r0
 8005888:	e614      	b.n	80054b4 <_dtoa_r+0x71c>
 800588a:	4648      	mov	r0, r9
 800588c:	f000 fef0 	bl	8006670 <_Bfree>
 8005890:	2301      	movs	r3, #1
 8005892:	e639      	b.n	8005508 <_dtoa_r+0x770>
 8005894:	9b02      	ldr	r3, [sp, #8]
 8005896:	2b02      	cmp	r3, #2
 8005898:	f77f adf3 	ble.w	8005482 <_dtoa_r+0x6ea>
 800589c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800589e:	2b00      	cmp	r3, #0
 80058a0:	f000 80cf 	beq.w	8005a42 <_dtoa_r+0xcaa>
 80058a4:	9b07      	ldr	r3, [sp, #28]
 80058a6:	43db      	mvns	r3, r3
 80058a8:	9306      	str	r3, [sp, #24]
 80058aa:	465c      	mov	r4, fp
 80058ac:	e78b      	b.n	80057c6 <_dtoa_r+0xa2e>
 80058ae:	9a06      	ldr	r2, [sp, #24]
 80058b0:	2331      	movs	r3, #49	; 0x31
 80058b2:	3201      	adds	r2, #1
 80058b4:	9206      	str	r2, [sp, #24]
 80058b6:	f88b 3000 	strb.w	r3, [fp]
 80058ba:	e6b3      	b.n	8005624 <_dtoa_r+0x88c>
 80058bc:	2401      	movs	r4, #1
 80058be:	9409      	str	r4, [sp, #36]	; 0x24
 80058c0:	9407      	str	r4, [sp, #28]
 80058c2:	f7ff bb8b 	b.w	8004fdc <_dtoa_r+0x244>
 80058c6:	4630      	mov	r0, r6
 80058c8:	f7fa fdec 	bl	80004a4 <__aeabi_i2d>
 80058cc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80058d0:	f7fa fe52 	bl	8000578 <__aeabi_dmul>
 80058d4:	2200      	movs	r2, #0
 80058d6:	4b68      	ldr	r3, [pc, #416]	; (8005a78 <_dtoa_r+0xce0>)
 80058d8:	f7fa fc98 	bl	800020c <__adddf3>
 80058dc:	4606      	mov	r6, r0
 80058de:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80058e2:	2200      	movs	r2, #0
 80058e4:	4b61      	ldr	r3, [pc, #388]	; (8005a6c <_dtoa_r+0xcd4>)
 80058e6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80058ea:	f7fa fc8d 	bl	8000208 <__aeabi_dsub>
 80058ee:	4632      	mov	r2, r6
 80058f0:	463b      	mov	r3, r7
 80058f2:	4604      	mov	r4, r0
 80058f4:	460d      	mov	r5, r1
 80058f6:	f7fb fbe1 	bl	80010bc <__aeabi_dcmpgt>
 80058fa:	2800      	cmp	r0, #0
 80058fc:	d14f      	bne.n	800599e <_dtoa_r+0xc06>
 80058fe:	4632      	mov	r2, r6
 8005900:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005904:	4620      	mov	r0, r4
 8005906:	4629      	mov	r1, r5
 8005908:	f7fb fbba 	bl	8001080 <__aeabi_dcmplt>
 800590c:	2800      	cmp	r0, #0
 800590e:	f43f ac69 	beq.w	80051e4 <_dtoa_r+0x44c>
 8005912:	2600      	movs	r6, #0
 8005914:	4635      	mov	r5, r6
 8005916:	e7c5      	b.n	80058a4 <_dtoa_r+0xb0c>
 8005918:	2301      	movs	r3, #1
 800591a:	930a      	str	r3, [sp, #40]	; 0x28
 800591c:	e6c8      	b.n	80056b0 <_dtoa_r+0x918>
 800591e:	4651      	mov	r1, sl
 8005920:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005922:	4648      	mov	r0, r9
 8005924:	f000 ffee 	bl	8006904 <__pow5mult>
 8005928:	4682      	mov	sl, r0
 800592a:	e572      	b.n	8005412 <_dtoa_r+0x67a>
 800592c:	f8dd a000 	ldr.w	sl, [sp]
 8005930:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005934:	e686      	b.n	8005644 <_dtoa_r+0x8ac>
 8005936:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005938:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800593a:	1afb      	subs	r3, r7, r3
 800593c:	441a      	add	r2, r3
 800593e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005942:	2700      	movs	r7, #0
 8005944:	e512      	b.n	800536c <_dtoa_r+0x5d4>
 8005946:	2b00      	cmp	r3, #0
 8005948:	9402      	str	r4, [sp, #8]
 800594a:	465e      	mov	r6, fp
 800594c:	f107 0401 	add.w	r4, r7, #1
 8005950:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005954:	f300 80ba 	bgt.w	8005acc <_dtoa_r+0xd34>
 8005958:	9b00      	ldr	r3, [sp, #0]
 800595a:	9502      	str	r5, [sp, #8]
 800595c:	703b      	strb	r3, [r7, #0]
 800595e:	4645      	mov	r5, r8
 8005960:	e660      	b.n	8005624 <_dtoa_r+0x88c>
 8005962:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005966:	2602      	movs	r6, #2
 8005968:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800596c:	f7ff bb67 	b.w	800503e <_dtoa_r+0x2a6>
 8005970:	9b00      	ldr	r3, [sp, #0]
 8005972:	2b39      	cmp	r3, #57	; 0x39
 8005974:	465e      	mov	r6, fp
 8005976:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800597a:	f000 80b9 	beq.w	8005af0 <_dtoa_r+0xd58>
 800597e:	9b00      	ldr	r3, [sp, #0]
 8005980:	9502      	str	r5, [sp, #8]
 8005982:	3301      	adds	r3, #1
 8005984:	703b      	strb	r3, [r7, #0]
 8005986:	4645      	mov	r5, r8
 8005988:	e64c      	b.n	8005624 <_dtoa_r+0x88c>
 800598a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800598e:	1a9c      	subs	r4, r3, r2
 8005990:	e4f5      	b.n	800537e <_dtoa_r+0x5e6>
 8005992:	465e      	mov	r6, fp
 8005994:	9502      	str	r5, [sp, #8]
 8005996:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800599a:	4645      	mov	r5, r8
 800599c:	e61a      	b.n	80055d4 <_dtoa_r+0x83c>
 800599e:	2600      	movs	r6, #0
 80059a0:	4635      	mov	r5, r6
 80059a2:	e708      	b.n	80057b6 <_dtoa_r+0xa1e>
 80059a4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80059a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80059ac:	f7fa fde4 	bl	8000578 <__aeabi_dmul>
 80059b0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80059b2:	f88b 5000 	strb.w	r5, [fp]
 80059b6:	2b01      	cmp	r3, #1
 80059b8:	e9cd 0100 	strd	r0, r1, [sp]
 80059bc:	d020      	beq.n	8005a00 <_dtoa_r+0xc68>
 80059be:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80059c0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80059c4:	445b      	add	r3, fp
 80059c6:	4698      	mov	r8, r3
 80059c8:	2200      	movs	r2, #0
 80059ca:	4b2c      	ldr	r3, [pc, #176]	; (8005a7c <_dtoa_r+0xce4>)
 80059cc:	4630      	mov	r0, r6
 80059ce:	4639      	mov	r1, r7
 80059d0:	f7fa fdd2 	bl	8000578 <__aeabi_dmul>
 80059d4:	460f      	mov	r7, r1
 80059d6:	4606      	mov	r6, r0
 80059d8:	f7fb fb90 	bl	80010fc <__aeabi_d2iz>
 80059dc:	4605      	mov	r5, r0
 80059de:	f7fa fd61 	bl	80004a4 <__aeabi_i2d>
 80059e2:	3530      	adds	r5, #48	; 0x30
 80059e4:	4602      	mov	r2, r0
 80059e6:	460b      	mov	r3, r1
 80059e8:	4630      	mov	r0, r6
 80059ea:	4639      	mov	r1, r7
 80059ec:	f7fa fc0c 	bl	8000208 <__aeabi_dsub>
 80059f0:	f804 5b01 	strb.w	r5, [r4], #1
 80059f4:	4544      	cmp	r4, r8
 80059f6:	4606      	mov	r6, r0
 80059f8:	460f      	mov	r7, r1
 80059fa:	d1e5      	bne.n	80059c8 <_dtoa_r+0xc30>
 80059fc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005a00:	4b1f      	ldr	r3, [pc, #124]	; (8005a80 <_dtoa_r+0xce8>)
 8005a02:	2200      	movs	r2, #0
 8005a04:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a08:	f7fa fc00 	bl	800020c <__adddf3>
 8005a0c:	4632      	mov	r2, r6
 8005a0e:	463b      	mov	r3, r7
 8005a10:	f7fb fb36 	bl	8001080 <__aeabi_dcmplt>
 8005a14:	2800      	cmp	r0, #0
 8005a16:	d070      	beq.n	8005afa <_dtoa_r+0xd62>
 8005a18:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005a1a:	9306      	str	r3, [sp, #24]
 8005a1c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005a20:	e48f      	b.n	8005342 <_dtoa_r+0x5aa>
 8005a22:	2330      	movs	r3, #48	; 0x30
 8005a24:	f88b 3000 	strb.w	r3, [fp]
 8005a28:	9b06      	ldr	r3, [sp, #24]
 8005a2a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005a2e:	3301      	adds	r3, #1
 8005a30:	9306      	str	r3, [sp, #24]
 8005a32:	465b      	mov	r3, fp
 8005a34:	e489      	b.n	800534a <_dtoa_r+0x5b2>
 8005a36:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005a38:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005a3c:	e6a0      	b.n	8005780 <_dtoa_r+0x9e8>
 8005a3e:	2300      	movs	r3, #0
 8005a40:	e676      	b.n	8005730 <_dtoa_r+0x998>
 8005a42:	4631      	mov	r1, r6
 8005a44:	2205      	movs	r2, #5
 8005a46:	4648      	mov	r0, r9
 8005a48:	f000 fe1c 	bl	8006684 <__multadd>
 8005a4c:	4601      	mov	r1, r0
 8005a4e:	4606      	mov	r6, r0
 8005a50:	4650      	mov	r0, sl
 8005a52:	f000 fffd 	bl	8006a50 <__mcmp>
 8005a56:	2800      	cmp	r0, #0
 8005a58:	f73f aead 	bgt.w	80057b6 <_dtoa_r+0xa1e>
 8005a5c:	e722      	b.n	80058a4 <_dtoa_r+0xb0c>
 8005a5e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005a62:	2602      	movs	r6, #2
 8005a64:	ed8d 7b00 	vstr	d7, [sp]
 8005a68:	f7ff bb02 	b.w	8005070 <_dtoa_r+0x2d8>
 8005a6c:	40140000 	.word	0x40140000
 8005a70:	08007928 	.word	0x08007928
 8005a74:	08007900 	.word	0x08007900
 8005a78:	401c0000 	.word	0x401c0000
 8005a7c:	40240000 	.word	0x40240000
 8005a80:	3fe00000 	.word	0x3fe00000
 8005a84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a86:	2b00      	cmp	r3, #0
 8005a88:	f43f af1d 	beq.w	80058c6 <_dtoa_r+0xb2e>
 8005a8c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005a8e:	2c00      	cmp	r4, #0
 8005a90:	f77f aba8 	ble.w	80051e4 <_dtoa_r+0x44c>
 8005a94:	2200      	movs	r2, #0
 8005a96:	4b45      	ldr	r3, [pc, #276]	; (8005bac <_dtoa_r+0xe14>)
 8005a98:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a9c:	f7fa fd6c 	bl	8000578 <__aeabi_dmul>
 8005aa0:	e9cd 0100 	strd	r0, r1, [sp]
 8005aa4:	1c70      	adds	r0, r6, #1
 8005aa6:	f7fa fcfd 	bl	80004a4 <__aeabi_i2d>
 8005aaa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005aae:	f7fa fd63 	bl	8000578 <__aeabi_dmul>
 8005ab2:	4b3f      	ldr	r3, [pc, #252]	; (8005bb0 <_dtoa_r+0xe18>)
 8005ab4:	2200      	movs	r2, #0
 8005ab6:	f7fa fba9 	bl	800020c <__adddf3>
 8005aba:	9b06      	ldr	r3, [sp, #24]
 8005abc:	9412      	str	r4, [sp, #72]	; 0x48
 8005abe:	3b01      	subs	r3, #1
 8005ac0:	4606      	mov	r6, r0
 8005ac2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005ac6:	9316      	str	r3, [sp, #88]	; 0x58
 8005ac8:	f7ff baf3 	b.w	80050b2 <_dtoa_r+0x31a>
 8005acc:	4651      	mov	r1, sl
 8005ace:	2201      	movs	r2, #1
 8005ad0:	4648      	mov	r0, r9
 8005ad2:	f000 ff67 	bl	80069a4 <__lshift>
 8005ad6:	4631      	mov	r1, r6
 8005ad8:	4682      	mov	sl, r0
 8005ada:	f000 ffb9 	bl	8006a50 <__mcmp>
 8005ade:	2800      	cmp	r0, #0
 8005ae0:	dd3b      	ble.n	8005b5a <_dtoa_r+0xdc2>
 8005ae2:	9b00      	ldr	r3, [sp, #0]
 8005ae4:	2b39      	cmp	r3, #57	; 0x39
 8005ae6:	d003      	beq.n	8005af0 <_dtoa_r+0xd58>
 8005ae8:	9b02      	ldr	r3, [sp, #8]
 8005aea:	3331      	adds	r3, #49	; 0x31
 8005aec:	9300      	str	r3, [sp, #0]
 8005aee:	e733      	b.n	8005958 <_dtoa_r+0xbc0>
 8005af0:	2239      	movs	r2, #57	; 0x39
 8005af2:	9502      	str	r5, [sp, #8]
 8005af4:	703a      	strb	r2, [r7, #0]
 8005af6:	4645      	mov	r5, r8
 8005af8:	e58e      	b.n	8005618 <_dtoa_r+0x880>
 8005afa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005afe:	2000      	movs	r0, #0
 8005b00:	492c      	ldr	r1, [pc, #176]	; (8005bb4 <_dtoa_r+0xe1c>)
 8005b02:	f7fa fb81 	bl	8000208 <__aeabi_dsub>
 8005b06:	4632      	mov	r2, r6
 8005b08:	463b      	mov	r3, r7
 8005b0a:	f7fb fad7 	bl	80010bc <__aeabi_dcmpgt>
 8005b0e:	b910      	cbnz	r0, 8005b16 <_dtoa_r+0xd7e>
 8005b10:	f7ff bb68 	b.w	80051e4 <_dtoa_r+0x44c>
 8005b14:	4614      	mov	r4, r2
 8005b16:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005b1a:	2b30      	cmp	r3, #48	; 0x30
 8005b1c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005b20:	d0f8      	beq.n	8005b14 <_dtoa_r+0xd7c>
 8005b22:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005b24:	9306      	str	r3, [sp, #24]
 8005b26:	e58d      	b.n	8005644 <_dtoa_r+0x8ac>
 8005b28:	46d9      	mov	r9, fp
 8005b2a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005b2e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005b32:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005b34:	9306      	str	r3, [sp, #24]
 8005b36:	e404      	b.n	8005342 <_dtoa_r+0x5aa>
 8005b38:	9b00      	ldr	r3, [sp, #0]
 8005b3a:	2b39      	cmp	r3, #57	; 0x39
 8005b3c:	4621      	mov	r1, r4
 8005b3e:	4632      	mov	r2, r6
 8005b40:	f107 0401 	add.w	r4, r7, #1
 8005b44:	465e      	mov	r6, fp
 8005b46:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005b4a:	d0d1      	beq.n	8005af0 <_dtoa_r+0xd58>
 8005b4c:	2a00      	cmp	r2, #0
 8005b4e:	f77f af03 	ble.w	8005958 <_dtoa_r+0xbc0>
 8005b52:	460b      	mov	r3, r1
 8005b54:	3331      	adds	r3, #49	; 0x31
 8005b56:	9300      	str	r3, [sp, #0]
 8005b58:	e6fe      	b.n	8005958 <_dtoa_r+0xbc0>
 8005b5a:	f47f aefd 	bne.w	8005958 <_dtoa_r+0xbc0>
 8005b5e:	9b00      	ldr	r3, [sp, #0]
 8005b60:	07da      	lsls	r2, r3, #31
 8005b62:	f57f aef9 	bpl.w	8005958 <_dtoa_r+0xbc0>
 8005b66:	e7bc      	b.n	8005ae2 <_dtoa_r+0xd4a>
 8005b68:	4629      	mov	r1, r5
 8005b6a:	2300      	movs	r3, #0
 8005b6c:	220a      	movs	r2, #10
 8005b6e:	4648      	mov	r0, r9
 8005b70:	f000 fd88 	bl	8006684 <__multadd>
 8005b74:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005b76:	2b00      	cmp	r3, #0
 8005b78:	4605      	mov	r5, r0
 8005b7a:	dd09      	ble.n	8005b90 <_dtoa_r+0xdf8>
 8005b7c:	9309      	str	r3, [sp, #36]	; 0x24
 8005b7e:	e484      	b.n	800548a <_dtoa_r+0x6f2>
 8005b80:	9b02      	ldr	r3, [sp, #8]
 8005b82:	2b02      	cmp	r3, #2
 8005b84:	dc0e      	bgt.n	8005ba4 <_dtoa_r+0xe0c>
 8005b86:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005b88:	e507      	b.n	800559a <_dtoa_r+0x802>
 8005b8a:	2602      	movs	r6, #2
 8005b8c:	f7ff ba70 	b.w	8005070 <_dtoa_r+0x2d8>
 8005b90:	9b02      	ldr	r3, [sp, #8]
 8005b92:	2b02      	cmp	r3, #2
 8005b94:	dc06      	bgt.n	8005ba4 <_dtoa_r+0xe0c>
 8005b96:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005b98:	e7f0      	b.n	8005b7c <_dtoa_r+0xde4>
 8005b9a:	f43f ac59 	beq.w	8005450 <_dtoa_r+0x6b8>
 8005b9e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005ba2:	e450      	b.n	8005446 <_dtoa_r+0x6ae>
 8005ba4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005ba6:	9309      	str	r3, [sp, #36]	; 0x24
 8005ba8:	e678      	b.n	800589c <_dtoa_r+0xb04>
 8005baa:	bf00      	nop
 8005bac:	40240000 	.word	0x40240000
 8005bb0:	401c0000 	.word	0x401c0000
 8005bb4:	3fe00000 	.word	0x3fe00000

08005bb8 <__sflush_r>:
 8005bb8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005bbc:	b29a      	uxth	r2, r3
 8005bbe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005bc2:	460c      	mov	r4, r1
 8005bc4:	0711      	lsls	r1, r2, #28
 8005bc6:	4680      	mov	r8, r0
 8005bc8:	d444      	bmi.n	8005c54 <__sflush_r+0x9c>
 8005bca:	6862      	ldr	r2, [r4, #4]
 8005bcc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005bd0:	2a00      	cmp	r2, #0
 8005bd2:	81a3      	strh	r3, [r4, #12]
 8005bd4:	dd59      	ble.n	8005c8a <__sflush_r+0xd2>
 8005bd6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005bd8:	2d00      	cmp	r5, #0
 8005bda:	d053      	beq.n	8005c84 <__sflush_r+0xcc>
 8005bdc:	2200      	movs	r2, #0
 8005bde:	b29b      	uxth	r3, r3
 8005be0:	f8d8 6000 	ldr.w	r6, [r8]
 8005be4:	69e1      	ldr	r1, [r4, #28]
 8005be6:	f8c8 2000 	str.w	r2, [r8]
 8005bea:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005bee:	f040 8083 	bne.w	8005cf8 <__sflush_r+0x140>
 8005bf2:	2301      	movs	r3, #1
 8005bf4:	4640      	mov	r0, r8
 8005bf6:	47a8      	blx	r5
 8005bf8:	1c42      	adds	r2, r0, #1
 8005bfa:	d04a      	beq.n	8005c92 <__sflush_r+0xda>
 8005bfc:	89a3      	ldrh	r3, [r4, #12]
 8005bfe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005c00:	69e1      	ldr	r1, [r4, #28]
 8005c02:	075b      	lsls	r3, r3, #29
 8005c04:	d505      	bpl.n	8005c12 <__sflush_r+0x5a>
 8005c06:	6862      	ldr	r2, [r4, #4]
 8005c08:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005c0a:	1a80      	subs	r0, r0, r2
 8005c0c:	b10b      	cbz	r3, 8005c12 <__sflush_r+0x5a>
 8005c0e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005c10:	1ac0      	subs	r0, r0, r3
 8005c12:	4602      	mov	r2, r0
 8005c14:	2300      	movs	r3, #0
 8005c16:	4640      	mov	r0, r8
 8005c18:	47a8      	blx	r5
 8005c1a:	1c47      	adds	r7, r0, #1
 8005c1c:	d045      	beq.n	8005caa <__sflush_r+0xf2>
 8005c1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c22:	6922      	ldr	r2, [r4, #16]
 8005c24:	6022      	str	r2, [r4, #0]
 8005c26:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005c2a:	2200      	movs	r2, #0
 8005c2c:	81a3      	strh	r3, [r4, #12]
 8005c2e:	04db      	lsls	r3, r3, #19
 8005c30:	6062      	str	r2, [r4, #4]
 8005c32:	d500      	bpl.n	8005c36 <__sflush_r+0x7e>
 8005c34:	6520      	str	r0, [r4, #80]	; 0x50
 8005c36:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005c38:	f8c8 6000 	str.w	r6, [r8]
 8005c3c:	b311      	cbz	r1, 8005c84 <__sflush_r+0xcc>
 8005c3e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005c42:	4299      	cmp	r1, r3
 8005c44:	d002      	beq.n	8005c4c <__sflush_r+0x94>
 8005c46:	4640      	mov	r0, r8
 8005c48:	f000 f95e 	bl	8005f08 <_free_r>
 8005c4c:	2000      	movs	r0, #0
 8005c4e:	6320      	str	r0, [r4, #48]	; 0x30
 8005c50:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005c54:	6926      	ldr	r6, [r4, #16]
 8005c56:	b1ae      	cbz	r6, 8005c84 <__sflush_r+0xcc>
 8005c58:	6825      	ldr	r5, [r4, #0]
 8005c5a:	6026      	str	r6, [r4, #0]
 8005c5c:	0792      	lsls	r2, r2, #30
 8005c5e:	bf0c      	ite	eq
 8005c60:	6963      	ldreq	r3, [r4, #20]
 8005c62:	2300      	movne	r3, #0
 8005c64:	1bad      	subs	r5, r5, r6
 8005c66:	60a3      	str	r3, [r4, #8]
 8005c68:	e00a      	b.n	8005c80 <__sflush_r+0xc8>
 8005c6a:	462b      	mov	r3, r5
 8005c6c:	4632      	mov	r2, r6
 8005c6e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005c70:	69e1      	ldr	r1, [r4, #28]
 8005c72:	4640      	mov	r0, r8
 8005c74:	47b8      	blx	r7
 8005c76:	2800      	cmp	r0, #0
 8005c78:	eba5 0500 	sub.w	r5, r5, r0
 8005c7c:	4406      	add	r6, r0
 8005c7e:	dd2b      	ble.n	8005cd8 <__sflush_r+0x120>
 8005c80:	2d00      	cmp	r5, #0
 8005c82:	dcf2      	bgt.n	8005c6a <__sflush_r+0xb2>
 8005c84:	2000      	movs	r0, #0
 8005c86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005c8a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005c8c:	2a00      	cmp	r2, #0
 8005c8e:	dca2      	bgt.n	8005bd6 <__sflush_r+0x1e>
 8005c90:	e7f8      	b.n	8005c84 <__sflush_r+0xcc>
 8005c92:	f8d8 3000 	ldr.w	r3, [r8]
 8005c96:	2b00      	cmp	r3, #0
 8005c98:	d0b0      	beq.n	8005bfc <__sflush_r+0x44>
 8005c9a:	2b1d      	cmp	r3, #29
 8005c9c:	d001      	beq.n	8005ca2 <__sflush_r+0xea>
 8005c9e:	2b16      	cmp	r3, #22
 8005ca0:	d12c      	bne.n	8005cfc <__sflush_r+0x144>
 8005ca2:	f8c8 6000 	str.w	r6, [r8]
 8005ca6:	2000      	movs	r0, #0
 8005ca8:	e7ed      	b.n	8005c86 <__sflush_r+0xce>
 8005caa:	f8d8 1000 	ldr.w	r1, [r8]
 8005cae:	291d      	cmp	r1, #29
 8005cb0:	d81a      	bhi.n	8005ce8 <__sflush_r+0x130>
 8005cb2:	4b15      	ldr	r3, [pc, #84]	; (8005d08 <__sflush_r+0x150>)
 8005cb4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005cb8:	40cb      	lsrs	r3, r1
 8005cba:	43db      	mvns	r3, r3
 8005cbc:	f013 0301 	ands.w	r3, r3, #1
 8005cc0:	d114      	bne.n	8005cec <__sflush_r+0x134>
 8005cc2:	6925      	ldr	r5, [r4, #16]
 8005cc4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005cc8:	e9c4 5300 	strd	r5, r3, [r4]
 8005ccc:	04d5      	lsls	r5, r2, #19
 8005cce:	81a2      	strh	r2, [r4, #12]
 8005cd0:	d5b1      	bpl.n	8005c36 <__sflush_r+0x7e>
 8005cd2:	2900      	cmp	r1, #0
 8005cd4:	d1af      	bne.n	8005c36 <__sflush_r+0x7e>
 8005cd6:	e7ad      	b.n	8005c34 <__sflush_r+0x7c>
 8005cd8:	89a3      	ldrh	r3, [r4, #12]
 8005cda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005cde:	81a3      	strh	r3, [r4, #12]
 8005ce0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ce4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005ce8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005cec:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005cf0:	81a2      	strh	r2, [r4, #12]
 8005cf2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005cf6:	e7c6      	b.n	8005c86 <__sflush_r+0xce>
 8005cf8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005cfa:	e782      	b.n	8005c02 <__sflush_r+0x4a>
 8005cfc:	89a3      	ldrh	r3, [r4, #12]
 8005cfe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005d02:	81a3      	strh	r3, [r4, #12]
 8005d04:	e7bf      	b.n	8005c86 <__sflush_r+0xce>
 8005d06:	bf00      	nop
 8005d08:	20400001 	.word	0x20400001

08005d0c <_fflush_r>:
 8005d0c:	b538      	push	{r3, r4, r5, lr}
 8005d0e:	460d      	mov	r5, r1
 8005d10:	4604      	mov	r4, r0
 8005d12:	b108      	cbz	r0, 8005d18 <_fflush_r+0xc>
 8005d14:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005d16:	b1a3      	cbz	r3, 8005d42 <_fflush_r+0x36>
 8005d18:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005d1c:	b1b8      	cbz	r0, 8005d4e <_fflush_r+0x42>
 8005d1e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005d20:	07db      	lsls	r3, r3, #31
 8005d22:	d401      	bmi.n	8005d28 <_fflush_r+0x1c>
 8005d24:	0581      	lsls	r1, r0, #22
 8005d26:	d51a      	bpl.n	8005d5e <_fflush_r+0x52>
 8005d28:	4620      	mov	r0, r4
 8005d2a:	4629      	mov	r1, r5
 8005d2c:	f7ff ff44 	bl	8005bb8 <__sflush_r>
 8005d30:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005d32:	07da      	lsls	r2, r3, #31
 8005d34:	4604      	mov	r4, r0
 8005d36:	d402      	bmi.n	8005d3e <_fflush_r+0x32>
 8005d38:	89ab      	ldrh	r3, [r5, #12]
 8005d3a:	059b      	lsls	r3, r3, #22
 8005d3c:	d50a      	bpl.n	8005d54 <_fflush_r+0x48>
 8005d3e:	4620      	mov	r0, r4
 8005d40:	bd38      	pop	{r3, r4, r5, pc}
 8005d42:	f000 f83f 	bl	8005dc4 <__sinit>
 8005d46:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005d4a:	2800      	cmp	r0, #0
 8005d4c:	d1e7      	bne.n	8005d1e <_fflush_r+0x12>
 8005d4e:	4604      	mov	r4, r0
 8005d50:	4620      	mov	r0, r4
 8005d52:	bd38      	pop	{r3, r4, r5, pc}
 8005d54:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005d56:	f000 fb87 	bl	8006468 <__retarget_lock_release_recursive>
 8005d5a:	4620      	mov	r0, r4
 8005d5c:	bd38      	pop	{r3, r4, r5, pc}
 8005d5e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005d60:	f000 fb80 	bl	8006464 <__retarget_lock_acquire_recursive>
 8005d64:	e7e0      	b.n	8005d28 <_fflush_r+0x1c>
 8005d66:	bf00      	nop

08005d68 <std>:
 8005d68:	b510      	push	{r4, lr}
 8005d6a:	2300      	movs	r3, #0
 8005d6c:	4604      	mov	r4, r0
 8005d6e:	8181      	strh	r1, [r0, #12]
 8005d70:	81c2      	strh	r2, [r0, #14]
 8005d72:	e9c0 3300 	strd	r3, r3, [r0]
 8005d76:	6083      	str	r3, [r0, #8]
 8005d78:	6643      	str	r3, [r0, #100]	; 0x64
 8005d7a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005d7e:	6183      	str	r3, [r0, #24]
 8005d80:	4619      	mov	r1, r3
 8005d82:	2208      	movs	r2, #8
 8005d84:	305c      	adds	r0, #92	; 0x5c
 8005d86:	f7fd f80d 	bl	8002da4 <memset>
 8005d8a:	4807      	ldr	r0, [pc, #28]	; (8005da8 <std+0x40>)
 8005d8c:	4907      	ldr	r1, [pc, #28]	; (8005dac <std+0x44>)
 8005d8e:	4a08      	ldr	r2, [pc, #32]	; (8005db0 <std+0x48>)
 8005d90:	4b08      	ldr	r3, [pc, #32]	; (8005db4 <std+0x4c>)
 8005d92:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005d94:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005d98:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005d9c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005da0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005da4:	f000 bb5a 	b.w	800645c <__retarget_lock_init_recursive>
 8005da8:	08006ffd 	.word	0x08006ffd
 8005dac:	08007021 	.word	0x08007021
 8005db0:	0800705d 	.word	0x0800705d
 8005db4:	0800707d 	.word	0x0800707d

08005db8 <_cleanup_r>:
 8005db8:	4901      	ldr	r1, [pc, #4]	; (8005dc0 <_cleanup_r+0x8>)
 8005dba:	f000 bb17 	b.w	80063ec <_fwalk_reent>
 8005dbe:	bf00      	nop
 8005dc0:	08007289 	.word	0x08007289

08005dc4 <__sinit>:
 8005dc4:	b510      	push	{r4, lr}
 8005dc6:	4604      	mov	r4, r0
 8005dc8:	4812      	ldr	r0, [pc, #72]	; (8005e14 <__sinit+0x50>)
 8005dca:	f000 fb4b 	bl	8006464 <__retarget_lock_acquire_recursive>
 8005dce:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005dd0:	b9d2      	cbnz	r2, 8005e08 <__sinit+0x44>
 8005dd2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005dd6:	4810      	ldr	r0, [pc, #64]	; (8005e18 <__sinit+0x54>)
 8005dd8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005ddc:	2103      	movs	r1, #3
 8005dde:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005de2:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005de4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005de8:	6860      	ldr	r0, [r4, #4]
 8005dea:	2104      	movs	r1, #4
 8005dec:	f7ff ffbc 	bl	8005d68 <std>
 8005df0:	2201      	movs	r2, #1
 8005df2:	2109      	movs	r1, #9
 8005df4:	68a0      	ldr	r0, [r4, #8]
 8005df6:	f7ff ffb7 	bl	8005d68 <std>
 8005dfa:	2202      	movs	r2, #2
 8005dfc:	2112      	movs	r1, #18
 8005dfe:	68e0      	ldr	r0, [r4, #12]
 8005e00:	f7ff ffb2 	bl	8005d68 <std>
 8005e04:	2301      	movs	r3, #1
 8005e06:	63a3      	str	r3, [r4, #56]	; 0x38
 8005e08:	4802      	ldr	r0, [pc, #8]	; (8005e14 <__sinit+0x50>)
 8005e0a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005e0e:	f000 bb2b 	b.w	8006468 <__retarget_lock_release_recursive>
 8005e12:	bf00      	nop
 8005e14:	20000b10 	.word	0x20000b10
 8005e18:	08005db9 	.word	0x08005db9

08005e1c <__sfp_lock_acquire>:
 8005e1c:	4801      	ldr	r0, [pc, #4]	; (8005e24 <__sfp_lock_acquire+0x8>)
 8005e1e:	f000 bb21 	b.w	8006464 <__retarget_lock_acquire_recursive>
 8005e22:	bf00      	nop
 8005e24:	20000b24 	.word	0x20000b24

08005e28 <__sfp_lock_release>:
 8005e28:	4801      	ldr	r0, [pc, #4]	; (8005e30 <__sfp_lock_release+0x8>)
 8005e2a:	f000 bb1d 	b.w	8006468 <__retarget_lock_release_recursive>
 8005e2e:	bf00      	nop
 8005e30:	20000b24 	.word	0x20000b24

08005e34 <__libc_fini_array>:
 8005e34:	b538      	push	{r3, r4, r5, lr}
 8005e36:	4c0a      	ldr	r4, [pc, #40]	; (8005e60 <__libc_fini_array+0x2c>)
 8005e38:	4d0a      	ldr	r5, [pc, #40]	; (8005e64 <__libc_fini_array+0x30>)
 8005e3a:	1b64      	subs	r4, r4, r5
 8005e3c:	10a4      	asrs	r4, r4, #2
 8005e3e:	d00a      	beq.n	8005e56 <__libc_fini_array+0x22>
 8005e40:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005e44:	3b01      	subs	r3, #1
 8005e46:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005e4a:	3c01      	subs	r4, #1
 8005e4c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005e50:	4798      	blx	r3
 8005e52:	2c00      	cmp	r4, #0
 8005e54:	d1f9      	bne.n	8005e4a <__libc_fini_array+0x16>
 8005e56:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005e5a:	f001 bbd7 	b.w	800760c <_fini>
 8005e5e:	bf00      	nop
 8005e60:	08007a14 	.word	0x08007a14
 8005e64:	08007a10 	.word	0x08007a10

08005e68 <_malloc_trim_r>:
 8005e68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005e6a:	4f24      	ldr	r7, [pc, #144]	; (8005efc <_malloc_trim_r+0x94>)
 8005e6c:	460c      	mov	r4, r1
 8005e6e:	4606      	mov	r6, r0
 8005e70:	f7fc ffe2 	bl	8002e38 <__malloc_lock>
 8005e74:	68bb      	ldr	r3, [r7, #8]
 8005e76:	685d      	ldr	r5, [r3, #4]
 8005e78:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005e7c:	310f      	adds	r1, #15
 8005e7e:	f025 0503 	bic.w	r5, r5, #3
 8005e82:	4429      	add	r1, r5
 8005e84:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005e88:	f021 010f 	bic.w	r1, r1, #15
 8005e8c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005e90:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005e94:	db07      	blt.n	8005ea6 <_malloc_trim_r+0x3e>
 8005e96:	2100      	movs	r1, #0
 8005e98:	4630      	mov	r0, r6
 8005e9a:	f7fd f843 	bl	8002f24 <_sbrk_r>
 8005e9e:	68bb      	ldr	r3, [r7, #8]
 8005ea0:	442b      	add	r3, r5
 8005ea2:	4298      	cmp	r0, r3
 8005ea4:	d004      	beq.n	8005eb0 <_malloc_trim_r+0x48>
 8005ea6:	4630      	mov	r0, r6
 8005ea8:	f7fc ffcc 	bl	8002e44 <__malloc_unlock>
 8005eac:	2000      	movs	r0, #0
 8005eae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005eb0:	4261      	negs	r1, r4
 8005eb2:	4630      	mov	r0, r6
 8005eb4:	f7fd f836 	bl	8002f24 <_sbrk_r>
 8005eb8:	3001      	adds	r0, #1
 8005eba:	d00d      	beq.n	8005ed8 <_malloc_trim_r+0x70>
 8005ebc:	4b10      	ldr	r3, [pc, #64]	; (8005f00 <_malloc_trim_r+0x98>)
 8005ebe:	68ba      	ldr	r2, [r7, #8]
 8005ec0:	6819      	ldr	r1, [r3, #0]
 8005ec2:	1b2d      	subs	r5, r5, r4
 8005ec4:	f045 0501 	orr.w	r5, r5, #1
 8005ec8:	4630      	mov	r0, r6
 8005eca:	1b09      	subs	r1, r1, r4
 8005ecc:	6055      	str	r5, [r2, #4]
 8005ece:	6019      	str	r1, [r3, #0]
 8005ed0:	f7fc ffb8 	bl	8002e44 <__malloc_unlock>
 8005ed4:	2001      	movs	r0, #1
 8005ed6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005ed8:	2100      	movs	r1, #0
 8005eda:	4630      	mov	r0, r6
 8005edc:	f7fd f822 	bl	8002f24 <_sbrk_r>
 8005ee0:	68ba      	ldr	r2, [r7, #8]
 8005ee2:	1a83      	subs	r3, r0, r2
 8005ee4:	2b0f      	cmp	r3, #15
 8005ee6:	ddde      	ble.n	8005ea6 <_malloc_trim_r+0x3e>
 8005ee8:	4c06      	ldr	r4, [pc, #24]	; (8005f04 <_malloc_trim_r+0x9c>)
 8005eea:	4905      	ldr	r1, [pc, #20]	; (8005f00 <_malloc_trim_r+0x98>)
 8005eec:	6824      	ldr	r4, [r4, #0]
 8005eee:	f043 0301 	orr.w	r3, r3, #1
 8005ef2:	1b00      	subs	r0, r0, r4
 8005ef4:	6053      	str	r3, [r2, #4]
 8005ef6:	6008      	str	r0, [r1, #0]
 8005ef8:	e7d5      	b.n	8005ea6 <_malloc_trim_r+0x3e>
 8005efa:	bf00      	nop
 8005efc:	200005b4 	.word	0x200005b4
 8005f00:	20000a80 	.word	0x20000a80
 8005f04:	200009bc 	.word	0x200009bc

08005f08 <_free_r>:
 8005f08:	2900      	cmp	r1, #0
 8005f0a:	d053      	beq.n	8005fb4 <_free_r+0xac>
 8005f0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005f0e:	460c      	mov	r4, r1
 8005f10:	4606      	mov	r6, r0
 8005f12:	f7fc ff91 	bl	8002e38 <__malloc_lock>
 8005f16:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005f1a:	4f71      	ldr	r7, [pc, #452]	; (80060e0 <_free_r+0x1d8>)
 8005f1c:	f02c 0101 	bic.w	r1, ip, #1
 8005f20:	f1a4 0508 	sub.w	r5, r4, #8
 8005f24:	186b      	adds	r3, r5, r1
 8005f26:	68b8      	ldr	r0, [r7, #8]
 8005f28:	685a      	ldr	r2, [r3, #4]
 8005f2a:	4298      	cmp	r0, r3
 8005f2c:	f022 0203 	bic.w	r2, r2, #3
 8005f30:	d053      	beq.n	8005fda <_free_r+0xd2>
 8005f32:	f01c 0f01 	tst.w	ip, #1
 8005f36:	605a      	str	r2, [r3, #4]
 8005f38:	eb03 0002 	add.w	r0, r3, r2
 8005f3c:	d13b      	bne.n	8005fb6 <_free_r+0xae>
 8005f3e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005f42:	6840      	ldr	r0, [r0, #4]
 8005f44:	eba5 050c 	sub.w	r5, r5, ip
 8005f48:	f107 0e08 	add.w	lr, r7, #8
 8005f4c:	68ac      	ldr	r4, [r5, #8]
 8005f4e:	4574      	cmp	r4, lr
 8005f50:	4461      	add	r1, ip
 8005f52:	f000 0001 	and.w	r0, r0, #1
 8005f56:	d075      	beq.n	8006044 <_free_r+0x13c>
 8005f58:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005f5c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005f60:	f8cc 4008 	str.w	r4, [ip, #8]
 8005f64:	b360      	cbz	r0, 8005fc0 <_free_r+0xb8>
 8005f66:	f041 0301 	orr.w	r3, r1, #1
 8005f6a:	606b      	str	r3, [r5, #4]
 8005f6c:	5069      	str	r1, [r5, r1]
 8005f6e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005f72:	d350      	bcc.n	8006016 <_free_r+0x10e>
 8005f74:	0a4b      	lsrs	r3, r1, #9
 8005f76:	2b04      	cmp	r3, #4
 8005f78:	d870      	bhi.n	800605c <_free_r+0x154>
 8005f7a:	098b      	lsrs	r3, r1, #6
 8005f7c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005f80:	00e4      	lsls	r4, r4, #3
 8005f82:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005f86:	1938      	adds	r0, r7, r4
 8005f88:	593b      	ldr	r3, [r7, r4]
 8005f8a:	3808      	subs	r0, #8
 8005f8c:	4298      	cmp	r0, r3
 8005f8e:	d078      	beq.n	8006082 <_free_r+0x17a>
 8005f90:	685a      	ldr	r2, [r3, #4]
 8005f92:	f022 0203 	bic.w	r2, r2, #3
 8005f96:	428a      	cmp	r2, r1
 8005f98:	d971      	bls.n	800607e <_free_r+0x176>
 8005f9a:	689b      	ldr	r3, [r3, #8]
 8005f9c:	4298      	cmp	r0, r3
 8005f9e:	d1f7      	bne.n	8005f90 <_free_r+0x88>
 8005fa0:	68c3      	ldr	r3, [r0, #12]
 8005fa2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005fa6:	609d      	str	r5, [r3, #8]
 8005fa8:	60c5      	str	r5, [r0, #12]
 8005faa:	4630      	mov	r0, r6
 8005fac:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005fb0:	f7fc bf48 	b.w	8002e44 <__malloc_unlock>
 8005fb4:	4770      	bx	lr
 8005fb6:	6840      	ldr	r0, [r0, #4]
 8005fb8:	f000 0001 	and.w	r0, r0, #1
 8005fbc:	2800      	cmp	r0, #0
 8005fbe:	d1d2      	bne.n	8005f66 <_free_r+0x5e>
 8005fc0:	6898      	ldr	r0, [r3, #8]
 8005fc2:	4c48      	ldr	r4, [pc, #288]	; (80060e4 <_free_r+0x1dc>)
 8005fc4:	4411      	add	r1, r2
 8005fc6:	42a0      	cmp	r0, r4
 8005fc8:	f041 0201 	orr.w	r2, r1, #1
 8005fcc:	d062      	beq.n	8006094 <_free_r+0x18c>
 8005fce:	68db      	ldr	r3, [r3, #12]
 8005fd0:	60c3      	str	r3, [r0, #12]
 8005fd2:	6098      	str	r0, [r3, #8]
 8005fd4:	606a      	str	r2, [r5, #4]
 8005fd6:	5069      	str	r1, [r5, r1]
 8005fd8:	e7c9      	b.n	8005f6e <_free_r+0x66>
 8005fda:	f01c 0f01 	tst.w	ip, #1
 8005fde:	440a      	add	r2, r1
 8005fe0:	d107      	bne.n	8005ff2 <_free_r+0xea>
 8005fe2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005fe6:	1aed      	subs	r5, r5, r3
 8005fe8:	441a      	add	r2, r3
 8005fea:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005fee:	60cb      	str	r3, [r1, #12]
 8005ff0:	6099      	str	r1, [r3, #8]
 8005ff2:	4b3d      	ldr	r3, [pc, #244]	; (80060e8 <_free_r+0x1e0>)
 8005ff4:	681b      	ldr	r3, [r3, #0]
 8005ff6:	f042 0101 	orr.w	r1, r2, #1
 8005ffa:	4293      	cmp	r3, r2
 8005ffc:	6069      	str	r1, [r5, #4]
 8005ffe:	60bd      	str	r5, [r7, #8]
 8006000:	d804      	bhi.n	800600c <_free_r+0x104>
 8006002:	4b3a      	ldr	r3, [pc, #232]	; (80060ec <_free_r+0x1e4>)
 8006004:	4630      	mov	r0, r6
 8006006:	6819      	ldr	r1, [r3, #0]
 8006008:	f7ff ff2e 	bl	8005e68 <_malloc_trim_r>
 800600c:	4630      	mov	r0, r6
 800600e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006012:	f7fc bf17 	b.w	8002e44 <__malloc_unlock>
 8006016:	08c9      	lsrs	r1, r1, #3
 8006018:	6878      	ldr	r0, [r7, #4]
 800601a:	1c4a      	adds	r2, r1, #1
 800601c:	2301      	movs	r3, #1
 800601e:	1089      	asrs	r1, r1, #2
 8006020:	408b      	lsls	r3, r1
 8006022:	4303      	orrs	r3, r0
 8006024:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006028:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800602c:	607b      	str	r3, [r7, #4]
 800602e:	3908      	subs	r1, #8
 8006030:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8006034:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006038:	60c5      	str	r5, [r0, #12]
 800603a:	4630      	mov	r0, r6
 800603c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006040:	f7fc bf00 	b.w	8002e44 <__malloc_unlock>
 8006044:	2800      	cmp	r0, #0
 8006046:	d145      	bne.n	80060d4 <_free_r+0x1cc>
 8006048:	440a      	add	r2, r1
 800604a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800604e:	f042 0001 	orr.w	r0, r2, #1
 8006052:	60cb      	str	r3, [r1, #12]
 8006054:	6099      	str	r1, [r3, #8]
 8006056:	6068      	str	r0, [r5, #4]
 8006058:	50aa      	str	r2, [r5, r2]
 800605a:	e7d7      	b.n	800600c <_free_r+0x104>
 800605c:	2b14      	cmp	r3, #20
 800605e:	d908      	bls.n	8006072 <_free_r+0x16a>
 8006060:	2b54      	cmp	r3, #84	; 0x54
 8006062:	d81e      	bhi.n	80060a2 <_free_r+0x19a>
 8006064:	0b0b      	lsrs	r3, r1, #12
 8006066:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800606a:	00e4      	lsls	r4, r4, #3
 800606c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8006070:	e789      	b.n	8005f86 <_free_r+0x7e>
 8006072:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8006076:	00e4      	lsls	r4, r4, #3
 8006078:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800607c:	e783      	b.n	8005f86 <_free_r+0x7e>
 800607e:	4618      	mov	r0, r3
 8006080:	e78e      	b.n	8005fa0 <_free_r+0x98>
 8006082:	1093      	asrs	r3, r2, #2
 8006084:	6879      	ldr	r1, [r7, #4]
 8006086:	2201      	movs	r2, #1
 8006088:	fa02 f303 	lsl.w	r3, r2, r3
 800608c:	430b      	orrs	r3, r1
 800608e:	607b      	str	r3, [r7, #4]
 8006090:	4603      	mov	r3, r0
 8006092:	e786      	b.n	8005fa2 <_free_r+0x9a>
 8006094:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8006098:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800609c:	606a      	str	r2, [r5, #4]
 800609e:	5069      	str	r1, [r5, r1]
 80060a0:	e7b4      	b.n	800600c <_free_r+0x104>
 80060a2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80060a6:	d806      	bhi.n	80060b6 <_free_r+0x1ae>
 80060a8:	0bcb      	lsrs	r3, r1, #15
 80060aa:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80060ae:	00e4      	lsls	r4, r4, #3
 80060b0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80060b4:	e767      	b.n	8005f86 <_free_r+0x7e>
 80060b6:	f240 5254 	movw	r2, #1364	; 0x554
 80060ba:	4293      	cmp	r3, r2
 80060bc:	d806      	bhi.n	80060cc <_free_r+0x1c4>
 80060be:	0c8b      	lsrs	r3, r1, #18
 80060c0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80060c4:	00e4      	lsls	r4, r4, #3
 80060c6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80060ca:	e75c      	b.n	8005f86 <_free_r+0x7e>
 80060cc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80060d0:	227e      	movs	r2, #126	; 0x7e
 80060d2:	e758      	b.n	8005f86 <_free_r+0x7e>
 80060d4:	f041 0201 	orr.w	r2, r1, #1
 80060d8:	606a      	str	r2, [r5, #4]
 80060da:	6019      	str	r1, [r3, #0]
 80060dc:	e796      	b.n	800600c <_free_r+0x104>
 80060de:	bf00      	nop
 80060e0:	200005b4 	.word	0x200005b4
 80060e4:	200005bc 	.word	0x200005bc
 80060e8:	200009c0 	.word	0x200009c0
 80060ec:	20000ab0 	.word	0x20000ab0

080060f0 <__sfvwrite_r>:
 80060f0:	6893      	ldr	r3, [r2, #8]
 80060f2:	2b00      	cmp	r3, #0
 80060f4:	f000 80e4 	beq.w	80062c0 <__sfvwrite_r+0x1d0>
 80060f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060fc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006100:	b29b      	uxth	r3, r3
 8006102:	460c      	mov	r4, r1
 8006104:	0719      	lsls	r1, r3, #28
 8006106:	b083      	sub	sp, #12
 8006108:	4682      	mov	sl, r0
 800610a:	4690      	mov	r8, r2
 800610c:	d535      	bpl.n	800617a <__sfvwrite_r+0x8a>
 800610e:	6922      	ldr	r2, [r4, #16]
 8006110:	b39a      	cbz	r2, 800617a <__sfvwrite_r+0x8a>
 8006112:	f013 0202 	ands.w	r2, r3, #2
 8006116:	f8d8 6000 	ldr.w	r6, [r8]
 800611a:	d03d      	beq.n	8006198 <__sfvwrite_r+0xa8>
 800611c:	2700      	movs	r7, #0
 800611e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006122:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006126:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80063e8 <__sfvwrite_r+0x2f8>
 800612a:	463d      	mov	r5, r7
 800612c:	454d      	cmp	r5, r9
 800612e:	462b      	mov	r3, r5
 8006130:	463a      	mov	r2, r7
 8006132:	bf28      	it	cs
 8006134:	464b      	movcs	r3, r9
 8006136:	4661      	mov	r1, ip
 8006138:	4650      	mov	r0, sl
 800613a:	b1d5      	cbz	r5, 8006172 <__sfvwrite_r+0x82>
 800613c:	47d8      	blx	fp
 800613e:	2800      	cmp	r0, #0
 8006140:	f340 80c6 	ble.w	80062d0 <__sfvwrite_r+0x1e0>
 8006144:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006148:	1a1b      	subs	r3, r3, r0
 800614a:	4407      	add	r7, r0
 800614c:	1a2d      	subs	r5, r5, r0
 800614e:	f8c8 3008 	str.w	r3, [r8, #8]
 8006152:	2b00      	cmp	r3, #0
 8006154:	f000 80b0 	beq.w	80062b8 <__sfvwrite_r+0x1c8>
 8006158:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800615c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006160:	454d      	cmp	r5, r9
 8006162:	462b      	mov	r3, r5
 8006164:	463a      	mov	r2, r7
 8006166:	bf28      	it	cs
 8006168:	464b      	movcs	r3, r9
 800616a:	4661      	mov	r1, ip
 800616c:	4650      	mov	r0, sl
 800616e:	2d00      	cmp	r5, #0
 8006170:	d1e4      	bne.n	800613c <__sfvwrite_r+0x4c>
 8006172:	e9d6 7500 	ldrd	r7, r5, [r6]
 8006176:	3608      	adds	r6, #8
 8006178:	e7d8      	b.n	800612c <__sfvwrite_r+0x3c>
 800617a:	4621      	mov	r1, r4
 800617c:	4650      	mov	r0, sl
 800617e:	f7fe fd01 	bl	8004b84 <__swsetup_r>
 8006182:	2800      	cmp	r0, #0
 8006184:	f040 812a 	bne.w	80063dc <__sfvwrite_r+0x2ec>
 8006188:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800618c:	f8d8 6000 	ldr.w	r6, [r8]
 8006190:	b29b      	uxth	r3, r3
 8006192:	f013 0202 	ands.w	r2, r3, #2
 8006196:	d1c1      	bne.n	800611c <__sfvwrite_r+0x2c>
 8006198:	f013 0901 	ands.w	r9, r3, #1
 800619c:	d15d      	bne.n	800625a <__sfvwrite_r+0x16a>
 800619e:	68a7      	ldr	r7, [r4, #8]
 80061a0:	6820      	ldr	r0, [r4, #0]
 80061a2:	464d      	mov	r5, r9
 80061a4:	2d00      	cmp	r5, #0
 80061a6:	d054      	beq.n	8006252 <__sfvwrite_r+0x162>
 80061a8:	059a      	lsls	r2, r3, #22
 80061aa:	f140 809b 	bpl.w	80062e4 <__sfvwrite_r+0x1f4>
 80061ae:	42af      	cmp	r7, r5
 80061b0:	46bb      	mov	fp, r7
 80061b2:	f200 80d8 	bhi.w	8006366 <__sfvwrite_r+0x276>
 80061b6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80061ba:	d02f      	beq.n	800621c <__sfvwrite_r+0x12c>
 80061bc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80061c0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80061c4:	eba0 0b01 	sub.w	fp, r0, r1
 80061c8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80061cc:	1c68      	adds	r0, r5, #1
 80061ce:	107f      	asrs	r7, r7, #1
 80061d0:	4458      	add	r0, fp
 80061d2:	42b8      	cmp	r0, r7
 80061d4:	463a      	mov	r2, r7
 80061d6:	bf84      	itt	hi
 80061d8:	4607      	movhi	r7, r0
 80061da:	463a      	movhi	r2, r7
 80061dc:	055b      	lsls	r3, r3, #21
 80061de:	f140 80d3 	bpl.w	8006388 <__sfvwrite_r+0x298>
 80061e2:	4611      	mov	r1, r2
 80061e4:	4650      	mov	r0, sl
 80061e6:	f7fc fb23 	bl	8002830 <_malloc_r>
 80061ea:	2800      	cmp	r0, #0
 80061ec:	f000 80f0 	beq.w	80063d0 <__sfvwrite_r+0x2e0>
 80061f0:	465a      	mov	r2, fp
 80061f2:	6921      	ldr	r1, [r4, #16]
 80061f4:	9001      	str	r0, [sp, #4]
 80061f6:	f7fa fd71 	bl	8000cdc <memcpy>
 80061fa:	89a2      	ldrh	r2, [r4, #12]
 80061fc:	9b01      	ldr	r3, [sp, #4]
 80061fe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8006202:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8006206:	81a2      	strh	r2, [r4, #12]
 8006208:	eba7 020b 	sub.w	r2, r7, fp
 800620c:	eb03 000b 	add.w	r0, r3, fp
 8006210:	6167      	str	r7, [r4, #20]
 8006212:	6123      	str	r3, [r4, #16]
 8006214:	6020      	str	r0, [r4, #0]
 8006216:	60a2      	str	r2, [r4, #8]
 8006218:	462f      	mov	r7, r5
 800621a:	46ab      	mov	fp, r5
 800621c:	465a      	mov	r2, fp
 800621e:	4649      	mov	r1, r9
 8006220:	f000 f99c 	bl	800655c <memmove>
 8006224:	68a2      	ldr	r2, [r4, #8]
 8006226:	6823      	ldr	r3, [r4, #0]
 8006228:	1bd2      	subs	r2, r2, r7
 800622a:	445b      	add	r3, fp
 800622c:	462f      	mov	r7, r5
 800622e:	60a2      	str	r2, [r4, #8]
 8006230:	6023      	str	r3, [r4, #0]
 8006232:	2500      	movs	r5, #0
 8006234:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006238:	1bdb      	subs	r3, r3, r7
 800623a:	44b9      	add	r9, r7
 800623c:	f8c8 3008 	str.w	r3, [r8, #8]
 8006240:	2b00      	cmp	r3, #0
 8006242:	d039      	beq.n	80062b8 <__sfvwrite_r+0x1c8>
 8006244:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006248:	68a7      	ldr	r7, [r4, #8]
 800624a:	6820      	ldr	r0, [r4, #0]
 800624c:	b29b      	uxth	r3, r3
 800624e:	2d00      	cmp	r5, #0
 8006250:	d1aa      	bne.n	80061a8 <__sfvwrite_r+0xb8>
 8006252:	e9d6 9500 	ldrd	r9, r5, [r6]
 8006256:	3608      	adds	r6, #8
 8006258:	e7a4      	b.n	80061a4 <__sfvwrite_r+0xb4>
 800625a:	4633      	mov	r3, r6
 800625c:	4691      	mov	r9, r2
 800625e:	4610      	mov	r0, r2
 8006260:	4617      	mov	r7, r2
 8006262:	464e      	mov	r6, r9
 8006264:	469b      	mov	fp, r3
 8006266:	2f00      	cmp	r7, #0
 8006268:	d06b      	beq.n	8006342 <__sfvwrite_r+0x252>
 800626a:	2800      	cmp	r0, #0
 800626c:	d071      	beq.n	8006352 <__sfvwrite_r+0x262>
 800626e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006272:	6820      	ldr	r0, [r4, #0]
 8006274:	45b9      	cmp	r9, r7
 8006276:	464b      	mov	r3, r9
 8006278:	bf28      	it	cs
 800627a:	463b      	movcs	r3, r7
 800627c:	4288      	cmp	r0, r1
 800627e:	d903      	bls.n	8006288 <__sfvwrite_r+0x198>
 8006280:	68a5      	ldr	r5, [r4, #8]
 8006282:	4415      	add	r5, r2
 8006284:	42ab      	cmp	r3, r5
 8006286:	dc71      	bgt.n	800636c <__sfvwrite_r+0x27c>
 8006288:	429a      	cmp	r2, r3
 800628a:	f300 8093 	bgt.w	80063b4 <__sfvwrite_r+0x2c4>
 800628e:	4613      	mov	r3, r2
 8006290:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006292:	69e1      	ldr	r1, [r4, #28]
 8006294:	4632      	mov	r2, r6
 8006296:	4650      	mov	r0, sl
 8006298:	47a8      	blx	r5
 800629a:	1e05      	subs	r5, r0, #0
 800629c:	dd18      	ble.n	80062d0 <__sfvwrite_r+0x1e0>
 800629e:	ebb9 0905 	subs.w	r9, r9, r5
 80062a2:	d00f      	beq.n	80062c4 <__sfvwrite_r+0x1d4>
 80062a4:	2001      	movs	r0, #1
 80062a6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80062aa:	1b5b      	subs	r3, r3, r5
 80062ac:	442e      	add	r6, r5
 80062ae:	1b7f      	subs	r7, r7, r5
 80062b0:	f8c8 3008 	str.w	r3, [r8, #8]
 80062b4:	2b00      	cmp	r3, #0
 80062b6:	d1d6      	bne.n	8006266 <__sfvwrite_r+0x176>
 80062b8:	2000      	movs	r0, #0
 80062ba:	b003      	add	sp, #12
 80062bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80062c0:	2000      	movs	r0, #0
 80062c2:	4770      	bx	lr
 80062c4:	4621      	mov	r1, r4
 80062c6:	4650      	mov	r0, sl
 80062c8:	f7ff fd20 	bl	8005d0c <_fflush_r>
 80062cc:	2800      	cmp	r0, #0
 80062ce:	d0ea      	beq.n	80062a6 <__sfvwrite_r+0x1b6>
 80062d0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80062d4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80062d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80062dc:	81a3      	strh	r3, [r4, #12]
 80062de:	b003      	add	sp, #12
 80062e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80062e4:	6923      	ldr	r3, [r4, #16]
 80062e6:	4283      	cmp	r3, r0
 80062e8:	d315      	bcc.n	8006316 <__sfvwrite_r+0x226>
 80062ea:	6961      	ldr	r1, [r4, #20]
 80062ec:	42a9      	cmp	r1, r5
 80062ee:	d812      	bhi.n	8006316 <__sfvwrite_r+0x226>
 80062f0:	4b3c      	ldr	r3, [pc, #240]	; (80063e4 <__sfvwrite_r+0x2f4>)
 80062f2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80062f4:	429d      	cmp	r5, r3
 80062f6:	bf94      	ite	ls
 80062f8:	462b      	movls	r3, r5
 80062fa:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80062fe:	464a      	mov	r2, r9
 8006300:	fb93 f3f1 	sdiv	r3, r3, r1
 8006304:	4650      	mov	r0, sl
 8006306:	fb01 f303 	mul.w	r3, r1, r3
 800630a:	69e1      	ldr	r1, [r4, #28]
 800630c:	47b8      	blx	r7
 800630e:	1e07      	subs	r7, r0, #0
 8006310:	ddde      	ble.n	80062d0 <__sfvwrite_r+0x1e0>
 8006312:	1bed      	subs	r5, r5, r7
 8006314:	e78e      	b.n	8006234 <__sfvwrite_r+0x144>
 8006316:	42af      	cmp	r7, r5
 8006318:	bf28      	it	cs
 800631a:	462f      	movcs	r7, r5
 800631c:	463a      	mov	r2, r7
 800631e:	4649      	mov	r1, r9
 8006320:	f000 f91c 	bl	800655c <memmove>
 8006324:	68a3      	ldr	r3, [r4, #8]
 8006326:	6822      	ldr	r2, [r4, #0]
 8006328:	1bdb      	subs	r3, r3, r7
 800632a:	443a      	add	r2, r7
 800632c:	60a3      	str	r3, [r4, #8]
 800632e:	6022      	str	r2, [r4, #0]
 8006330:	2b00      	cmp	r3, #0
 8006332:	d1ee      	bne.n	8006312 <__sfvwrite_r+0x222>
 8006334:	4621      	mov	r1, r4
 8006336:	4650      	mov	r0, sl
 8006338:	f7ff fce8 	bl	8005d0c <_fflush_r>
 800633c:	2800      	cmp	r0, #0
 800633e:	d0e8      	beq.n	8006312 <__sfvwrite_r+0x222>
 8006340:	e7c6      	b.n	80062d0 <__sfvwrite_r+0x1e0>
 8006342:	f10b 0308 	add.w	r3, fp, #8
 8006346:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800634a:	469b      	mov	fp, r3
 800634c:	3308      	adds	r3, #8
 800634e:	2f00      	cmp	r7, #0
 8006350:	d0f9      	beq.n	8006346 <__sfvwrite_r+0x256>
 8006352:	463a      	mov	r2, r7
 8006354:	210a      	movs	r1, #10
 8006356:	4630      	mov	r0, r6
 8006358:	f7fa fde2 	bl	8000f20 <memchr>
 800635c:	b338      	cbz	r0, 80063ae <__sfvwrite_r+0x2be>
 800635e:	3001      	adds	r0, #1
 8006360:	eba0 0906 	sub.w	r9, r0, r6
 8006364:	e783      	b.n	800626e <__sfvwrite_r+0x17e>
 8006366:	462f      	mov	r7, r5
 8006368:	46ab      	mov	fp, r5
 800636a:	e757      	b.n	800621c <__sfvwrite_r+0x12c>
 800636c:	4631      	mov	r1, r6
 800636e:	462a      	mov	r2, r5
 8006370:	f000 f8f4 	bl	800655c <memmove>
 8006374:	6823      	ldr	r3, [r4, #0]
 8006376:	442b      	add	r3, r5
 8006378:	6023      	str	r3, [r4, #0]
 800637a:	4621      	mov	r1, r4
 800637c:	4650      	mov	r0, sl
 800637e:	f7ff fcc5 	bl	8005d0c <_fflush_r>
 8006382:	2800      	cmp	r0, #0
 8006384:	d08b      	beq.n	800629e <__sfvwrite_r+0x1ae>
 8006386:	e7a3      	b.n	80062d0 <__sfvwrite_r+0x1e0>
 8006388:	4650      	mov	r0, sl
 800638a:	f000 fc55 	bl	8006c38 <_realloc_r>
 800638e:	4603      	mov	r3, r0
 8006390:	2800      	cmp	r0, #0
 8006392:	f47f af39 	bne.w	8006208 <__sfvwrite_r+0x118>
 8006396:	6921      	ldr	r1, [r4, #16]
 8006398:	4650      	mov	r0, sl
 800639a:	f7ff fdb5 	bl	8005f08 <_free_r>
 800639e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80063a2:	220c      	movs	r2, #12
 80063a4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80063a8:	f8ca 2000 	str.w	r2, [sl]
 80063ac:	e792      	b.n	80062d4 <__sfvwrite_r+0x1e4>
 80063ae:	f107 0901 	add.w	r9, r7, #1
 80063b2:	e75c      	b.n	800626e <__sfvwrite_r+0x17e>
 80063b4:	461a      	mov	r2, r3
 80063b6:	4631      	mov	r1, r6
 80063b8:	9301      	str	r3, [sp, #4]
 80063ba:	f000 f8cf 	bl	800655c <memmove>
 80063be:	9b01      	ldr	r3, [sp, #4]
 80063c0:	68a1      	ldr	r1, [r4, #8]
 80063c2:	6822      	ldr	r2, [r4, #0]
 80063c4:	1ac9      	subs	r1, r1, r3
 80063c6:	441a      	add	r2, r3
 80063c8:	60a1      	str	r1, [r4, #8]
 80063ca:	6022      	str	r2, [r4, #0]
 80063cc:	461d      	mov	r5, r3
 80063ce:	e766      	b.n	800629e <__sfvwrite_r+0x1ae>
 80063d0:	230c      	movs	r3, #12
 80063d2:	f8ca 3000 	str.w	r3, [sl]
 80063d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80063da:	e77b      	b.n	80062d4 <__sfvwrite_r+0x1e4>
 80063dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063e0:	e76b      	b.n	80062ba <__sfvwrite_r+0x1ca>
 80063e2:	bf00      	nop
 80063e4:	7ffffffe 	.word	0x7ffffffe
 80063e8:	7ffffc00 	.word	0x7ffffc00

080063ec <_fwalk_reent>:
 80063ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80063f0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80063f4:	d01f      	beq.n	8006436 <_fwalk_reent+0x4a>
 80063f6:	4688      	mov	r8, r1
 80063f8:	4606      	mov	r6, r0
 80063fa:	f04f 0900 	mov.w	r9, #0
 80063fe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006402:	3d01      	subs	r5, #1
 8006404:	d411      	bmi.n	800642a <_fwalk_reent+0x3e>
 8006406:	89a3      	ldrh	r3, [r4, #12]
 8006408:	2b01      	cmp	r3, #1
 800640a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800640e:	4621      	mov	r1, r4
 8006410:	4630      	mov	r0, r6
 8006412:	d906      	bls.n	8006422 <_fwalk_reent+0x36>
 8006414:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006418:	3301      	adds	r3, #1
 800641a:	d002      	beq.n	8006422 <_fwalk_reent+0x36>
 800641c:	47c0      	blx	r8
 800641e:	ea49 0900 	orr.w	r9, r9, r0
 8006422:	1c6b      	adds	r3, r5, #1
 8006424:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006428:	d1ed      	bne.n	8006406 <_fwalk_reent+0x1a>
 800642a:	683f      	ldr	r7, [r7, #0]
 800642c:	2f00      	cmp	r7, #0
 800642e:	d1e6      	bne.n	80063fe <_fwalk_reent+0x12>
 8006430:	4648      	mov	r0, r9
 8006432:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006436:	46b9      	mov	r9, r7
 8006438:	4648      	mov	r0, r9
 800643a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800643e:	bf00      	nop

08006440 <_localeconv_r>:
 8006440:	4a04      	ldr	r2, [pc, #16]	; (8006454 <_localeconv_r+0x14>)
 8006442:	4b05      	ldr	r3, [pc, #20]	; (8006458 <_localeconv_r+0x18>)
 8006444:	6812      	ldr	r2, [r2, #0]
 8006446:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006448:	2800      	cmp	r0, #0
 800644a:	bf08      	it	eq
 800644c:	4618      	moveq	r0, r3
 800644e:	30f0      	adds	r0, #240	; 0xf0
 8006450:	4770      	bx	lr
 8006452:	bf00      	nop
 8006454:	20000018 	.word	0x20000018
 8006458:	20000448 	.word	0x20000448

0800645c <__retarget_lock_init_recursive>:
 800645c:	4770      	bx	lr
 800645e:	bf00      	nop

08006460 <__retarget_lock_close_recursive>:
 8006460:	4770      	bx	lr
 8006462:	bf00      	nop

08006464 <__retarget_lock_acquire_recursive>:
 8006464:	4770      	bx	lr
 8006466:	bf00      	nop

08006468 <__retarget_lock_release_recursive>:
 8006468:	4770      	bx	lr
 800646a:	bf00      	nop

0800646c <__swhatbuf_r>:
 800646c:	b570      	push	{r4, r5, r6, lr}
 800646e:	460c      	mov	r4, r1
 8006470:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006474:	2900      	cmp	r1, #0
 8006476:	b096      	sub	sp, #88	; 0x58
 8006478:	4615      	mov	r5, r2
 800647a:	461e      	mov	r6, r3
 800647c:	da0f      	bge.n	800649e <__swhatbuf_r+0x32>
 800647e:	89a2      	ldrh	r2, [r4, #12]
 8006480:	2300      	movs	r3, #0
 8006482:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006486:	6033      	str	r3, [r6, #0]
 8006488:	d104      	bne.n	8006494 <__swhatbuf_r+0x28>
 800648a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800648e:	602b      	str	r3, [r5, #0]
 8006490:	b016      	add	sp, #88	; 0x58
 8006492:	bd70      	pop	{r4, r5, r6, pc}
 8006494:	2240      	movs	r2, #64	; 0x40
 8006496:	4618      	mov	r0, r3
 8006498:	602a      	str	r2, [r5, #0]
 800649a:	b016      	add	sp, #88	; 0x58
 800649c:	bd70      	pop	{r4, r5, r6, pc}
 800649e:	466a      	mov	r2, sp
 80064a0:	f000 ffdc 	bl	800745c <_fstat_r>
 80064a4:	2800      	cmp	r0, #0
 80064a6:	dbea      	blt.n	800647e <__swhatbuf_r+0x12>
 80064a8:	9b01      	ldr	r3, [sp, #4]
 80064aa:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80064ae:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80064b2:	fab3 f383 	clz	r3, r3
 80064b6:	095b      	lsrs	r3, r3, #5
 80064b8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80064bc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80064c0:	6033      	str	r3, [r6, #0]
 80064c2:	602a      	str	r2, [r5, #0]
 80064c4:	b016      	add	sp, #88	; 0x58
 80064c6:	bd70      	pop	{r4, r5, r6, pc}

080064c8 <__smakebuf_r>:
 80064c8:	898a      	ldrh	r2, [r1, #12]
 80064ca:	0792      	lsls	r2, r2, #30
 80064cc:	460b      	mov	r3, r1
 80064ce:	d506      	bpl.n	80064de <__smakebuf_r+0x16>
 80064d0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80064d4:	2101      	movs	r1, #1
 80064d6:	601a      	str	r2, [r3, #0]
 80064d8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80064dc:	4770      	bx	lr
 80064de:	b570      	push	{r4, r5, r6, lr}
 80064e0:	b082      	sub	sp, #8
 80064e2:	ab01      	add	r3, sp, #4
 80064e4:	466a      	mov	r2, sp
 80064e6:	460c      	mov	r4, r1
 80064e8:	4605      	mov	r5, r0
 80064ea:	f7ff ffbf 	bl	800646c <__swhatbuf_r>
 80064ee:	9900      	ldr	r1, [sp, #0]
 80064f0:	4606      	mov	r6, r0
 80064f2:	4628      	mov	r0, r5
 80064f4:	f7fc f99c 	bl	8002830 <_malloc_r>
 80064f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80064fc:	b1d8      	cbz	r0, 8006536 <__smakebuf_r+0x6e>
 80064fe:	4916      	ldr	r1, [pc, #88]	; (8006558 <__smakebuf_r+0x90>)
 8006500:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006502:	9a01      	ldr	r2, [sp, #4]
 8006504:	9900      	ldr	r1, [sp, #0]
 8006506:	6020      	str	r0, [r4, #0]
 8006508:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800650c:	81a3      	strh	r3, [r4, #12]
 800650e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006512:	b91a      	cbnz	r2, 800651c <__smakebuf_r+0x54>
 8006514:	4333      	orrs	r3, r6
 8006516:	81a3      	strh	r3, [r4, #12]
 8006518:	b002      	add	sp, #8
 800651a:	bd70      	pop	{r4, r5, r6, pc}
 800651c:	4628      	mov	r0, r5
 800651e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006522:	f000 ffaf 	bl	8007484 <_isatty_r>
 8006526:	b1a0      	cbz	r0, 8006552 <__smakebuf_r+0x8a>
 8006528:	89a3      	ldrh	r3, [r4, #12]
 800652a:	f023 0303 	bic.w	r3, r3, #3
 800652e:	f043 0301 	orr.w	r3, r3, #1
 8006532:	b21b      	sxth	r3, r3
 8006534:	e7ee      	b.n	8006514 <__smakebuf_r+0x4c>
 8006536:	059a      	lsls	r2, r3, #22
 8006538:	d4ee      	bmi.n	8006518 <__smakebuf_r+0x50>
 800653a:	f023 0303 	bic.w	r3, r3, #3
 800653e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006542:	f043 0302 	orr.w	r3, r3, #2
 8006546:	2101      	movs	r1, #1
 8006548:	81a3      	strh	r3, [r4, #12]
 800654a:	6022      	str	r2, [r4, #0]
 800654c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006550:	e7e2      	b.n	8006518 <__smakebuf_r+0x50>
 8006552:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006556:	e7dd      	b.n	8006514 <__smakebuf_r+0x4c>
 8006558:	08005db9 	.word	0x08005db9

0800655c <memmove>:
 800655c:	4288      	cmp	r0, r1
 800655e:	b4f0      	push	{r4, r5, r6, r7}
 8006560:	d90d      	bls.n	800657e <memmove+0x22>
 8006562:	188b      	adds	r3, r1, r2
 8006564:	4283      	cmp	r3, r0
 8006566:	d90a      	bls.n	800657e <memmove+0x22>
 8006568:	1884      	adds	r4, r0, r2
 800656a:	b132      	cbz	r2, 800657a <memmove+0x1e>
 800656c:	4622      	mov	r2, r4
 800656e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006572:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006576:	4299      	cmp	r1, r3
 8006578:	d1f9      	bne.n	800656e <memmove+0x12>
 800657a:	bcf0      	pop	{r4, r5, r6, r7}
 800657c:	4770      	bx	lr
 800657e:	2a0f      	cmp	r2, #15
 8006580:	d949      	bls.n	8006616 <memmove+0xba>
 8006582:	ea40 0301 	orr.w	r3, r0, r1
 8006586:	079b      	lsls	r3, r3, #30
 8006588:	d147      	bne.n	800661a <memmove+0xbe>
 800658a:	f1a2 0310 	sub.w	r3, r2, #16
 800658e:	091b      	lsrs	r3, r3, #4
 8006590:	f101 0720 	add.w	r7, r1, #32
 8006594:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006598:	f101 0410 	add.w	r4, r1, #16
 800659c:	f100 0510 	add.w	r5, r0, #16
 80065a0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80065a4:	f845 6c10 	str.w	r6, [r5, #-16]
 80065a8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80065ac:	f845 6c0c 	str.w	r6, [r5, #-12]
 80065b0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80065b4:	f845 6c08 	str.w	r6, [r5, #-8]
 80065b8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80065bc:	f845 6c04 	str.w	r6, [r5, #-4]
 80065c0:	3410      	adds	r4, #16
 80065c2:	42bc      	cmp	r4, r7
 80065c4:	f105 0510 	add.w	r5, r5, #16
 80065c8:	d1ea      	bne.n	80065a0 <memmove+0x44>
 80065ca:	3301      	adds	r3, #1
 80065cc:	f002 050f 	and.w	r5, r2, #15
 80065d0:	011b      	lsls	r3, r3, #4
 80065d2:	2d03      	cmp	r5, #3
 80065d4:	4419      	add	r1, r3
 80065d6:	4403      	add	r3, r0
 80065d8:	d921      	bls.n	800661e <memmove+0xc2>
 80065da:	1f1f      	subs	r7, r3, #4
 80065dc:	460e      	mov	r6, r1
 80065de:	462c      	mov	r4, r5
 80065e0:	3c04      	subs	r4, #4
 80065e2:	f856 cb04 	ldr.w	ip, [r6], #4
 80065e6:	f847 cf04 	str.w	ip, [r7, #4]!
 80065ea:	2c03      	cmp	r4, #3
 80065ec:	d8f8      	bhi.n	80065e0 <memmove+0x84>
 80065ee:	1f2c      	subs	r4, r5, #4
 80065f0:	f024 0403 	bic.w	r4, r4, #3
 80065f4:	3404      	adds	r4, #4
 80065f6:	4423      	add	r3, r4
 80065f8:	4421      	add	r1, r4
 80065fa:	f002 0203 	and.w	r2, r2, #3
 80065fe:	2a00      	cmp	r2, #0
 8006600:	d0bb      	beq.n	800657a <memmove+0x1e>
 8006602:	3b01      	subs	r3, #1
 8006604:	440a      	add	r2, r1
 8006606:	f811 4b01 	ldrb.w	r4, [r1], #1
 800660a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800660e:	4291      	cmp	r1, r2
 8006610:	d1f9      	bne.n	8006606 <memmove+0xaa>
 8006612:	bcf0      	pop	{r4, r5, r6, r7}
 8006614:	4770      	bx	lr
 8006616:	4603      	mov	r3, r0
 8006618:	e7f1      	b.n	80065fe <memmove+0xa2>
 800661a:	4603      	mov	r3, r0
 800661c:	e7f1      	b.n	8006602 <memmove+0xa6>
 800661e:	462a      	mov	r2, r5
 8006620:	e7ed      	b.n	80065fe <memmove+0xa2>
 8006622:	bf00      	nop

08006624 <_Balloc>:
 8006624:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006626:	b570      	push	{r4, r5, r6, lr}
 8006628:	4605      	mov	r5, r0
 800662a:	460c      	mov	r4, r1
 800662c:	b14b      	cbz	r3, 8006642 <_Balloc+0x1e>
 800662e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006632:	b180      	cbz	r0, 8006656 <_Balloc+0x32>
 8006634:	6802      	ldr	r2, [r0, #0]
 8006636:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800663a:	2300      	movs	r3, #0
 800663c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006640:	bd70      	pop	{r4, r5, r6, pc}
 8006642:	2221      	movs	r2, #33	; 0x21
 8006644:	2104      	movs	r1, #4
 8006646:	f000 fdd9 	bl	80071fc <_calloc_r>
 800664a:	4603      	mov	r3, r0
 800664c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800664e:	2800      	cmp	r0, #0
 8006650:	d1ed      	bne.n	800662e <_Balloc+0xa>
 8006652:	2000      	movs	r0, #0
 8006654:	bd70      	pop	{r4, r5, r6, pc}
 8006656:	2101      	movs	r1, #1
 8006658:	fa01 f604 	lsl.w	r6, r1, r4
 800665c:	1d72      	adds	r2, r6, #5
 800665e:	4628      	mov	r0, r5
 8006660:	0092      	lsls	r2, r2, #2
 8006662:	f000 fdcb 	bl	80071fc <_calloc_r>
 8006666:	2800      	cmp	r0, #0
 8006668:	d0f3      	beq.n	8006652 <_Balloc+0x2e>
 800666a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800666e:	e7e4      	b.n	800663a <_Balloc+0x16>

08006670 <_Bfree>:
 8006670:	b131      	cbz	r1, 8006680 <_Bfree+0x10>
 8006672:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006674:	684a      	ldr	r2, [r1, #4]
 8006676:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800667a:	6008      	str	r0, [r1, #0]
 800667c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006680:	4770      	bx	lr
 8006682:	bf00      	nop

08006684 <__multadd>:
 8006684:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006686:	690c      	ldr	r4, [r1, #16]
 8006688:	b083      	sub	sp, #12
 800668a:	460d      	mov	r5, r1
 800668c:	4606      	mov	r6, r0
 800668e:	f101 0c14 	add.w	ip, r1, #20
 8006692:	2700      	movs	r7, #0
 8006694:	f8dc 0000 	ldr.w	r0, [ip]
 8006698:	b281      	uxth	r1, r0
 800669a:	fb02 3301 	mla	r3, r2, r1, r3
 800669e:	0c01      	lsrs	r1, r0, #16
 80066a0:	0c18      	lsrs	r0, r3, #16
 80066a2:	fb02 0101 	mla	r1, r2, r1, r0
 80066a6:	b29b      	uxth	r3, r3
 80066a8:	3701      	adds	r7, #1
 80066aa:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80066ae:	42bc      	cmp	r4, r7
 80066b0:	f84c 3b04 	str.w	r3, [ip], #4
 80066b4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80066b8:	dcec      	bgt.n	8006694 <__multadd+0x10>
 80066ba:	b13b      	cbz	r3, 80066cc <__multadd+0x48>
 80066bc:	68aa      	ldr	r2, [r5, #8]
 80066be:	42a2      	cmp	r2, r4
 80066c0:	dd07      	ble.n	80066d2 <__multadd+0x4e>
 80066c2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80066c6:	3401      	adds	r4, #1
 80066c8:	6153      	str	r3, [r2, #20]
 80066ca:	612c      	str	r4, [r5, #16]
 80066cc:	4628      	mov	r0, r5
 80066ce:	b003      	add	sp, #12
 80066d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80066d2:	6869      	ldr	r1, [r5, #4]
 80066d4:	9301      	str	r3, [sp, #4]
 80066d6:	3101      	adds	r1, #1
 80066d8:	4630      	mov	r0, r6
 80066da:	f7ff ffa3 	bl	8006624 <_Balloc>
 80066de:	692a      	ldr	r2, [r5, #16]
 80066e0:	3202      	adds	r2, #2
 80066e2:	f105 010c 	add.w	r1, r5, #12
 80066e6:	4607      	mov	r7, r0
 80066e8:	0092      	lsls	r2, r2, #2
 80066ea:	300c      	adds	r0, #12
 80066ec:	f7fa faf6 	bl	8000cdc <memcpy>
 80066f0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80066f2:	6869      	ldr	r1, [r5, #4]
 80066f4:	9b01      	ldr	r3, [sp, #4]
 80066f6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80066fa:	6028      	str	r0, [r5, #0]
 80066fc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006700:	463d      	mov	r5, r7
 8006702:	e7de      	b.n	80066c2 <__multadd+0x3e>

08006704 <__hi0bits>:
 8006704:	0c02      	lsrs	r2, r0, #16
 8006706:	0412      	lsls	r2, r2, #16
 8006708:	4603      	mov	r3, r0
 800670a:	b9c2      	cbnz	r2, 800673e <__hi0bits+0x3a>
 800670c:	0403      	lsls	r3, r0, #16
 800670e:	2010      	movs	r0, #16
 8006710:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006714:	bf04      	itt	eq
 8006716:	021b      	lsleq	r3, r3, #8
 8006718:	3008      	addeq	r0, #8
 800671a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800671e:	bf04      	itt	eq
 8006720:	011b      	lsleq	r3, r3, #4
 8006722:	3004      	addeq	r0, #4
 8006724:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006728:	bf04      	itt	eq
 800672a:	009b      	lsleq	r3, r3, #2
 800672c:	3002      	addeq	r0, #2
 800672e:	2b00      	cmp	r3, #0
 8006730:	db04      	blt.n	800673c <__hi0bits+0x38>
 8006732:	005b      	lsls	r3, r3, #1
 8006734:	d501      	bpl.n	800673a <__hi0bits+0x36>
 8006736:	3001      	adds	r0, #1
 8006738:	4770      	bx	lr
 800673a:	2020      	movs	r0, #32
 800673c:	4770      	bx	lr
 800673e:	2000      	movs	r0, #0
 8006740:	e7e6      	b.n	8006710 <__hi0bits+0xc>
 8006742:	bf00      	nop

08006744 <__lo0bits>:
 8006744:	6803      	ldr	r3, [r0, #0]
 8006746:	f013 0207 	ands.w	r2, r3, #7
 800674a:	4601      	mov	r1, r0
 800674c:	d007      	beq.n	800675e <__lo0bits+0x1a>
 800674e:	07da      	lsls	r2, r3, #31
 8006750:	d41f      	bmi.n	8006792 <__lo0bits+0x4e>
 8006752:	0798      	lsls	r0, r3, #30
 8006754:	d51f      	bpl.n	8006796 <__lo0bits+0x52>
 8006756:	085b      	lsrs	r3, r3, #1
 8006758:	600b      	str	r3, [r1, #0]
 800675a:	2001      	movs	r0, #1
 800675c:	4770      	bx	lr
 800675e:	b298      	uxth	r0, r3
 8006760:	b1a0      	cbz	r0, 800678c <__lo0bits+0x48>
 8006762:	4610      	mov	r0, r2
 8006764:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006768:	bf04      	itt	eq
 800676a:	0a1b      	lsreq	r3, r3, #8
 800676c:	3008      	addeq	r0, #8
 800676e:	071a      	lsls	r2, r3, #28
 8006770:	bf04      	itt	eq
 8006772:	091b      	lsreq	r3, r3, #4
 8006774:	3004      	addeq	r0, #4
 8006776:	079a      	lsls	r2, r3, #30
 8006778:	bf04      	itt	eq
 800677a:	089b      	lsreq	r3, r3, #2
 800677c:	3002      	addeq	r0, #2
 800677e:	07da      	lsls	r2, r3, #31
 8006780:	d402      	bmi.n	8006788 <__lo0bits+0x44>
 8006782:	085b      	lsrs	r3, r3, #1
 8006784:	d00b      	beq.n	800679e <__lo0bits+0x5a>
 8006786:	3001      	adds	r0, #1
 8006788:	600b      	str	r3, [r1, #0]
 800678a:	4770      	bx	lr
 800678c:	0c1b      	lsrs	r3, r3, #16
 800678e:	2010      	movs	r0, #16
 8006790:	e7e8      	b.n	8006764 <__lo0bits+0x20>
 8006792:	2000      	movs	r0, #0
 8006794:	4770      	bx	lr
 8006796:	089b      	lsrs	r3, r3, #2
 8006798:	600b      	str	r3, [r1, #0]
 800679a:	2002      	movs	r0, #2
 800679c:	4770      	bx	lr
 800679e:	2020      	movs	r0, #32
 80067a0:	4770      	bx	lr
 80067a2:	bf00      	nop

080067a4 <__i2b>:
 80067a4:	b510      	push	{r4, lr}
 80067a6:	460c      	mov	r4, r1
 80067a8:	2101      	movs	r1, #1
 80067aa:	f7ff ff3b 	bl	8006624 <_Balloc>
 80067ae:	2201      	movs	r2, #1
 80067b0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80067b4:	bd10      	pop	{r4, pc}
 80067b6:	bf00      	nop

080067b8 <__multiply>:
 80067b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067bc:	690e      	ldr	r6, [r1, #16]
 80067be:	6914      	ldr	r4, [r2, #16]
 80067c0:	42a6      	cmp	r6, r4
 80067c2:	b083      	sub	sp, #12
 80067c4:	460f      	mov	r7, r1
 80067c6:	4615      	mov	r5, r2
 80067c8:	da04      	bge.n	80067d4 <__multiply+0x1c>
 80067ca:	4632      	mov	r2, r6
 80067cc:	462f      	mov	r7, r5
 80067ce:	4626      	mov	r6, r4
 80067d0:	460d      	mov	r5, r1
 80067d2:	4614      	mov	r4, r2
 80067d4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80067d8:	eb06 0804 	add.w	r8, r6, r4
 80067dc:	4543      	cmp	r3, r8
 80067de:	bfb8      	it	lt
 80067e0:	3101      	addlt	r1, #1
 80067e2:	f7ff ff1f 	bl	8006624 <_Balloc>
 80067e6:	f100 0914 	add.w	r9, r0, #20
 80067ea:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80067ee:	45f1      	cmp	r9, lr
 80067f0:	9000      	str	r0, [sp, #0]
 80067f2:	d205      	bcs.n	8006800 <__multiply+0x48>
 80067f4:	464b      	mov	r3, r9
 80067f6:	2200      	movs	r2, #0
 80067f8:	f843 2b04 	str.w	r2, [r3], #4
 80067fc:	459e      	cmp	lr, r3
 80067fe:	d8fb      	bhi.n	80067f8 <__multiply+0x40>
 8006800:	f105 0a14 	add.w	sl, r5, #20
 8006804:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006808:	f107 0314 	add.w	r3, r7, #20
 800680c:	45a2      	cmp	sl, r4
 800680e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006812:	d261      	bcs.n	80068d8 <__multiply+0x120>
 8006814:	1b64      	subs	r4, r4, r5
 8006816:	3c15      	subs	r4, #21
 8006818:	f024 0403 	bic.w	r4, r4, #3
 800681c:	f8cd e004 	str.w	lr, [sp, #4]
 8006820:	44a2      	add	sl, r4
 8006822:	f105 0210 	add.w	r2, r5, #16
 8006826:	469e      	mov	lr, r3
 8006828:	e005      	b.n	8006836 <__multiply+0x7e>
 800682a:	0c2d      	lsrs	r5, r5, #16
 800682c:	d12b      	bne.n	8006886 <__multiply+0xce>
 800682e:	4592      	cmp	sl, r2
 8006830:	f109 0904 	add.w	r9, r9, #4
 8006834:	d04e      	beq.n	80068d4 <__multiply+0x11c>
 8006836:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800683a:	fa1f fb85 	uxth.w	fp, r5
 800683e:	f1bb 0f00 	cmp.w	fp, #0
 8006842:	d0f2      	beq.n	800682a <__multiply+0x72>
 8006844:	4677      	mov	r7, lr
 8006846:	464e      	mov	r6, r9
 8006848:	2000      	movs	r0, #0
 800684a:	e000      	b.n	800684e <__multiply+0x96>
 800684c:	4626      	mov	r6, r4
 800684e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006852:	6834      	ldr	r4, [r6, #0]
 8006854:	b28b      	uxth	r3, r1
 8006856:	b2a5      	uxth	r5, r4
 8006858:	0c09      	lsrs	r1, r1, #16
 800685a:	0c24      	lsrs	r4, r4, #16
 800685c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006860:	4403      	add	r3, r0
 8006862:	fb0b 4001 	mla	r0, fp, r1, r4
 8006866:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800686a:	4634      	mov	r4, r6
 800686c:	b29b      	uxth	r3, r3
 800686e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006872:	45bc      	cmp	ip, r7
 8006874:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006878:	f844 3b04 	str.w	r3, [r4], #4
 800687c:	d8e6      	bhi.n	800684c <__multiply+0x94>
 800687e:	6070      	str	r0, [r6, #4]
 8006880:	6815      	ldr	r5, [r2, #0]
 8006882:	0c2d      	lsrs	r5, r5, #16
 8006884:	d0d3      	beq.n	800682e <__multiply+0x76>
 8006886:	f8d9 3000 	ldr.w	r3, [r9]
 800688a:	4676      	mov	r6, lr
 800688c:	4618      	mov	r0, r3
 800688e:	46cb      	mov	fp, r9
 8006890:	2100      	movs	r1, #0
 8006892:	e000      	b.n	8006896 <__multiply+0xde>
 8006894:	46a3      	mov	fp, r4
 8006896:	8834      	ldrh	r4, [r6, #0]
 8006898:	0c00      	lsrs	r0, r0, #16
 800689a:	fb05 0004 	mla	r0, r5, r4, r0
 800689e:	4401      	add	r1, r0
 80068a0:	b29b      	uxth	r3, r3
 80068a2:	465c      	mov	r4, fp
 80068a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80068a8:	f844 3b04 	str.w	r3, [r4], #4
 80068ac:	f856 3b04 	ldr.w	r3, [r6], #4
 80068b0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80068b4:	0c1b      	lsrs	r3, r3, #16
 80068b6:	b287      	uxth	r7, r0
 80068b8:	fb05 7303 	mla	r3, r5, r3, r7
 80068bc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80068c0:	45b4      	cmp	ip, r6
 80068c2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80068c6:	d8e5      	bhi.n	8006894 <__multiply+0xdc>
 80068c8:	4592      	cmp	sl, r2
 80068ca:	f8cb 3004 	str.w	r3, [fp, #4]
 80068ce:	f109 0904 	add.w	r9, r9, #4
 80068d2:	d1b0      	bne.n	8006836 <__multiply+0x7e>
 80068d4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80068d8:	f1b8 0f00 	cmp.w	r8, #0
 80068dc:	dd0b      	ble.n	80068f6 <__multiply+0x13e>
 80068de:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80068e2:	f1ae 0e04 	sub.w	lr, lr, #4
 80068e6:	b11b      	cbz	r3, 80068f0 <__multiply+0x138>
 80068e8:	e005      	b.n	80068f6 <__multiply+0x13e>
 80068ea:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80068ee:	b913      	cbnz	r3, 80068f6 <__multiply+0x13e>
 80068f0:	f1b8 0801 	subs.w	r8, r8, #1
 80068f4:	d1f9      	bne.n	80068ea <__multiply+0x132>
 80068f6:	9800      	ldr	r0, [sp, #0]
 80068f8:	f8c0 8010 	str.w	r8, [r0, #16]
 80068fc:	b003      	add	sp, #12
 80068fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006902:	bf00      	nop

08006904 <__pow5mult>:
 8006904:	f012 0303 	ands.w	r3, r2, #3
 8006908:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800690c:	4614      	mov	r4, r2
 800690e:	4607      	mov	r7, r0
 8006910:	d12e      	bne.n	8006970 <__pow5mult+0x6c>
 8006912:	460d      	mov	r5, r1
 8006914:	10a4      	asrs	r4, r4, #2
 8006916:	d01c      	beq.n	8006952 <__pow5mult+0x4e>
 8006918:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800691a:	b396      	cbz	r6, 8006982 <__pow5mult+0x7e>
 800691c:	07e3      	lsls	r3, r4, #31
 800691e:	f04f 0800 	mov.w	r8, #0
 8006922:	d406      	bmi.n	8006932 <__pow5mult+0x2e>
 8006924:	1064      	asrs	r4, r4, #1
 8006926:	d014      	beq.n	8006952 <__pow5mult+0x4e>
 8006928:	6830      	ldr	r0, [r6, #0]
 800692a:	b1a8      	cbz	r0, 8006958 <__pow5mult+0x54>
 800692c:	4606      	mov	r6, r0
 800692e:	07e3      	lsls	r3, r4, #31
 8006930:	d5f8      	bpl.n	8006924 <__pow5mult+0x20>
 8006932:	4632      	mov	r2, r6
 8006934:	4629      	mov	r1, r5
 8006936:	4638      	mov	r0, r7
 8006938:	f7ff ff3e 	bl	80067b8 <__multiply>
 800693c:	b1b5      	cbz	r5, 800696c <__pow5mult+0x68>
 800693e:	686a      	ldr	r2, [r5, #4]
 8006940:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006942:	1064      	asrs	r4, r4, #1
 8006944:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006948:	6029      	str	r1, [r5, #0]
 800694a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800694e:	4605      	mov	r5, r0
 8006950:	d1ea      	bne.n	8006928 <__pow5mult+0x24>
 8006952:	4628      	mov	r0, r5
 8006954:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006958:	4632      	mov	r2, r6
 800695a:	4631      	mov	r1, r6
 800695c:	4638      	mov	r0, r7
 800695e:	f7ff ff2b 	bl	80067b8 <__multiply>
 8006962:	6030      	str	r0, [r6, #0]
 8006964:	f8c0 8000 	str.w	r8, [r0]
 8006968:	4606      	mov	r6, r0
 800696a:	e7e0      	b.n	800692e <__pow5mult+0x2a>
 800696c:	4605      	mov	r5, r0
 800696e:	e7d9      	b.n	8006924 <__pow5mult+0x20>
 8006970:	3b01      	subs	r3, #1
 8006972:	4a0b      	ldr	r2, [pc, #44]	; (80069a0 <__pow5mult+0x9c>)
 8006974:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006978:	2300      	movs	r3, #0
 800697a:	f7ff fe83 	bl	8006684 <__multadd>
 800697e:	4605      	mov	r5, r0
 8006980:	e7c8      	b.n	8006914 <__pow5mult+0x10>
 8006982:	2101      	movs	r1, #1
 8006984:	4638      	mov	r0, r7
 8006986:	f7ff fe4d 	bl	8006624 <_Balloc>
 800698a:	f240 2371 	movw	r3, #625	; 0x271
 800698e:	6143      	str	r3, [r0, #20]
 8006990:	2201      	movs	r2, #1
 8006992:	2300      	movs	r3, #0
 8006994:	6102      	str	r2, [r0, #16]
 8006996:	4606      	mov	r6, r0
 8006998:	64b8      	str	r0, [r7, #72]	; 0x48
 800699a:	6003      	str	r3, [r0, #0]
 800699c:	e7be      	b.n	800691c <__pow5mult+0x18>
 800699e:	bf00      	nop
 80069a0:	080079f0 	.word	0x080079f0

080069a4 <__lshift>:
 80069a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80069a8:	4691      	mov	r9, r2
 80069aa:	690a      	ldr	r2, [r1, #16]
 80069ac:	460e      	mov	r6, r1
 80069ae:	ea4f 1469 	mov.w	r4, r9, asr #5
 80069b2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80069b6:	eb04 0802 	add.w	r8, r4, r2
 80069ba:	f108 0501 	add.w	r5, r8, #1
 80069be:	429d      	cmp	r5, r3
 80069c0:	4607      	mov	r7, r0
 80069c2:	dd04      	ble.n	80069ce <__lshift+0x2a>
 80069c4:	005b      	lsls	r3, r3, #1
 80069c6:	429d      	cmp	r5, r3
 80069c8:	f101 0101 	add.w	r1, r1, #1
 80069cc:	dcfa      	bgt.n	80069c4 <__lshift+0x20>
 80069ce:	4638      	mov	r0, r7
 80069d0:	f7ff fe28 	bl	8006624 <_Balloc>
 80069d4:	2c00      	cmp	r4, #0
 80069d6:	f100 0314 	add.w	r3, r0, #20
 80069da:	dd37      	ble.n	8006a4c <__lshift+0xa8>
 80069dc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80069e0:	2200      	movs	r2, #0
 80069e2:	f843 2b04 	str.w	r2, [r3], #4
 80069e6:	428b      	cmp	r3, r1
 80069e8:	d1fb      	bne.n	80069e2 <__lshift+0x3e>
 80069ea:	6934      	ldr	r4, [r6, #16]
 80069ec:	f106 0314 	add.w	r3, r6, #20
 80069f0:	f019 091f 	ands.w	r9, r9, #31
 80069f4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80069f8:	d020      	beq.n	8006a3c <__lshift+0x98>
 80069fa:	f1c9 0e20 	rsb	lr, r9, #32
 80069fe:	2200      	movs	r2, #0
 8006a00:	e000      	b.n	8006a04 <__lshift+0x60>
 8006a02:	4651      	mov	r1, sl
 8006a04:	681c      	ldr	r4, [r3, #0]
 8006a06:	468a      	mov	sl, r1
 8006a08:	fa04 f409 	lsl.w	r4, r4, r9
 8006a0c:	4314      	orrs	r4, r2
 8006a0e:	f84a 4b04 	str.w	r4, [sl], #4
 8006a12:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a16:	4563      	cmp	r3, ip
 8006a18:	fa22 f20e 	lsr.w	r2, r2, lr
 8006a1c:	d3f1      	bcc.n	8006a02 <__lshift+0x5e>
 8006a1e:	604a      	str	r2, [r1, #4]
 8006a20:	b10a      	cbz	r2, 8006a26 <__lshift+0x82>
 8006a22:	f108 0502 	add.w	r5, r8, #2
 8006a26:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006a28:	6872      	ldr	r2, [r6, #4]
 8006a2a:	3d01      	subs	r5, #1
 8006a2c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006a30:	6105      	str	r5, [r0, #16]
 8006a32:	6031      	str	r1, [r6, #0]
 8006a34:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006a38:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006a3c:	3904      	subs	r1, #4
 8006a3e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a42:	f841 2f04 	str.w	r2, [r1, #4]!
 8006a46:	459c      	cmp	ip, r3
 8006a48:	d8f9      	bhi.n	8006a3e <__lshift+0x9a>
 8006a4a:	e7ec      	b.n	8006a26 <__lshift+0x82>
 8006a4c:	4619      	mov	r1, r3
 8006a4e:	e7cc      	b.n	80069ea <__lshift+0x46>

08006a50 <__mcmp>:
 8006a50:	b430      	push	{r4, r5}
 8006a52:	690b      	ldr	r3, [r1, #16]
 8006a54:	4605      	mov	r5, r0
 8006a56:	6900      	ldr	r0, [r0, #16]
 8006a58:	1ac0      	subs	r0, r0, r3
 8006a5a:	d10f      	bne.n	8006a7c <__mcmp+0x2c>
 8006a5c:	009b      	lsls	r3, r3, #2
 8006a5e:	3514      	adds	r5, #20
 8006a60:	3114      	adds	r1, #20
 8006a62:	4419      	add	r1, r3
 8006a64:	442b      	add	r3, r5
 8006a66:	e001      	b.n	8006a6c <__mcmp+0x1c>
 8006a68:	429d      	cmp	r5, r3
 8006a6a:	d207      	bcs.n	8006a7c <__mcmp+0x2c>
 8006a6c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006a70:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006a74:	4294      	cmp	r4, r2
 8006a76:	d0f7      	beq.n	8006a68 <__mcmp+0x18>
 8006a78:	d302      	bcc.n	8006a80 <__mcmp+0x30>
 8006a7a:	2001      	movs	r0, #1
 8006a7c:	bc30      	pop	{r4, r5}
 8006a7e:	4770      	bx	lr
 8006a80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a84:	e7fa      	b.n	8006a7c <__mcmp+0x2c>
 8006a86:	bf00      	nop

08006a88 <__mdiff>:
 8006a88:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a8c:	6913      	ldr	r3, [r2, #16]
 8006a8e:	690d      	ldr	r5, [r1, #16]
 8006a90:	1aed      	subs	r5, r5, r3
 8006a92:	2d00      	cmp	r5, #0
 8006a94:	460e      	mov	r6, r1
 8006a96:	4690      	mov	r8, r2
 8006a98:	f101 0414 	add.w	r4, r1, #20
 8006a9c:	f102 0714 	add.w	r7, r2, #20
 8006aa0:	d114      	bne.n	8006acc <__mdiff+0x44>
 8006aa2:	009b      	lsls	r3, r3, #2
 8006aa4:	18e2      	adds	r2, r4, r3
 8006aa6:	443b      	add	r3, r7
 8006aa8:	e001      	b.n	8006aae <__mdiff+0x26>
 8006aaa:	42a2      	cmp	r2, r4
 8006aac:	d959      	bls.n	8006b62 <__mdiff+0xda>
 8006aae:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006ab2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006ab6:	458c      	cmp	ip, r1
 8006ab8:	d0f7      	beq.n	8006aaa <__mdiff+0x22>
 8006aba:	d209      	bcs.n	8006ad0 <__mdiff+0x48>
 8006abc:	4622      	mov	r2, r4
 8006abe:	4633      	mov	r3, r6
 8006ac0:	463c      	mov	r4, r7
 8006ac2:	4646      	mov	r6, r8
 8006ac4:	4617      	mov	r7, r2
 8006ac6:	4698      	mov	r8, r3
 8006ac8:	2501      	movs	r5, #1
 8006aca:	e001      	b.n	8006ad0 <__mdiff+0x48>
 8006acc:	dbf6      	blt.n	8006abc <__mdiff+0x34>
 8006ace:	2500      	movs	r5, #0
 8006ad0:	6871      	ldr	r1, [r6, #4]
 8006ad2:	f7ff fda7 	bl	8006624 <_Balloc>
 8006ad6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006ada:	6936      	ldr	r6, [r6, #16]
 8006adc:	60c5      	str	r5, [r0, #12]
 8006ade:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006ae2:	46bc      	mov	ip, r7
 8006ae4:	f100 0514 	add.w	r5, r0, #20
 8006ae8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006aec:	2300      	movs	r3, #0
 8006aee:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006af2:	f854 8b04 	ldr.w	r8, [r4], #4
 8006af6:	b28a      	uxth	r2, r1
 8006af8:	fa13 f388 	uxtah	r3, r3, r8
 8006afc:	0c09      	lsrs	r1, r1, #16
 8006afe:	1a9a      	subs	r2, r3, r2
 8006b00:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006b04:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006b08:	b292      	uxth	r2, r2
 8006b0a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006b0e:	45e6      	cmp	lr, ip
 8006b10:	f845 2b04 	str.w	r2, [r5], #4
 8006b14:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006b18:	d8e9      	bhi.n	8006aee <__mdiff+0x66>
 8006b1a:	42a7      	cmp	r7, r4
 8006b1c:	d917      	bls.n	8006b4e <__mdiff+0xc6>
 8006b1e:	46ae      	mov	lr, r5
 8006b20:	46a4      	mov	ip, r4
 8006b22:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006b26:	fa13 f382 	uxtah	r3, r3, r2
 8006b2a:	1419      	asrs	r1, r3, #16
 8006b2c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006b30:	b29b      	uxth	r3, r3
 8006b32:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006b36:	4567      	cmp	r7, ip
 8006b38:	f84e 2b04 	str.w	r2, [lr], #4
 8006b3c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006b40:	d8ef      	bhi.n	8006b22 <__mdiff+0x9a>
 8006b42:	43e4      	mvns	r4, r4
 8006b44:	4427      	add	r7, r4
 8006b46:	f027 0703 	bic.w	r7, r7, #3
 8006b4a:	3704      	adds	r7, #4
 8006b4c:	443d      	add	r5, r7
 8006b4e:	3d04      	subs	r5, #4
 8006b50:	b922      	cbnz	r2, 8006b5c <__mdiff+0xd4>
 8006b52:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006b56:	3e01      	subs	r6, #1
 8006b58:	2b00      	cmp	r3, #0
 8006b5a:	d0fa      	beq.n	8006b52 <__mdiff+0xca>
 8006b5c:	6106      	str	r6, [r0, #16]
 8006b5e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006b62:	2100      	movs	r1, #0
 8006b64:	f7ff fd5e 	bl	8006624 <_Balloc>
 8006b68:	2201      	movs	r2, #1
 8006b6a:	2300      	movs	r3, #0
 8006b6c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006b70:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006b74 <__d2b>:
 8006b74:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006b78:	460f      	mov	r7, r1
 8006b7a:	b083      	sub	sp, #12
 8006b7c:	2101      	movs	r1, #1
 8006b7e:	ec55 4b10 	vmov	r4, r5, d0
 8006b82:	4616      	mov	r6, r2
 8006b84:	f7ff fd4e 	bl	8006624 <_Balloc>
 8006b88:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006b8c:	4681      	mov	r9, r0
 8006b8e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006b92:	f1b8 0f00 	cmp.w	r8, #0
 8006b96:	d001      	beq.n	8006b9c <__d2b+0x28>
 8006b98:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006b9c:	2c00      	cmp	r4, #0
 8006b9e:	9301      	str	r3, [sp, #4]
 8006ba0:	d024      	beq.n	8006bec <__d2b+0x78>
 8006ba2:	a802      	add	r0, sp, #8
 8006ba4:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006ba8:	f7ff fdcc 	bl	8006744 <__lo0bits>
 8006bac:	2800      	cmp	r0, #0
 8006bae:	d136      	bne.n	8006c1e <__d2b+0xaa>
 8006bb0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006bb4:	f8c9 2014 	str.w	r2, [r9, #20]
 8006bb8:	2b00      	cmp	r3, #0
 8006bba:	bf0c      	ite	eq
 8006bbc:	2101      	moveq	r1, #1
 8006bbe:	2102      	movne	r1, #2
 8006bc0:	f8c9 3018 	str.w	r3, [r9, #24]
 8006bc4:	f8c9 1010 	str.w	r1, [r9, #16]
 8006bc8:	f1b8 0f00 	cmp.w	r8, #0
 8006bcc:	d11b      	bne.n	8006c06 <__d2b+0x92>
 8006bce:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006bd2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006bd6:	6038      	str	r0, [r7, #0]
 8006bd8:	6918      	ldr	r0, [r3, #16]
 8006bda:	f7ff fd93 	bl	8006704 <__hi0bits>
 8006bde:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006be2:	6030      	str	r0, [r6, #0]
 8006be4:	4648      	mov	r0, r9
 8006be6:	b003      	add	sp, #12
 8006be8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006bec:	a801      	add	r0, sp, #4
 8006bee:	f7ff fda9 	bl	8006744 <__lo0bits>
 8006bf2:	9b01      	ldr	r3, [sp, #4]
 8006bf4:	f8c9 3014 	str.w	r3, [r9, #20]
 8006bf8:	2101      	movs	r1, #1
 8006bfa:	3020      	adds	r0, #32
 8006bfc:	f8c9 1010 	str.w	r1, [r9, #16]
 8006c00:	f1b8 0f00 	cmp.w	r8, #0
 8006c04:	d0e3      	beq.n	8006bce <__d2b+0x5a>
 8006c06:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006c0a:	eb08 0300 	add.w	r3, r8, r0
 8006c0e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006c12:	603b      	str	r3, [r7, #0]
 8006c14:	6030      	str	r0, [r6, #0]
 8006c16:	4648      	mov	r0, r9
 8006c18:	b003      	add	sp, #12
 8006c1a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006c1e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006c22:	f1c0 0220 	rsb	r2, r0, #32
 8006c26:	fa03 f202 	lsl.w	r2, r3, r2
 8006c2a:	430a      	orrs	r2, r1
 8006c2c:	40c3      	lsrs	r3, r0
 8006c2e:	9301      	str	r3, [sp, #4]
 8006c30:	f8c9 2014 	str.w	r2, [r9, #20]
 8006c34:	e7c0      	b.n	8006bb8 <__d2b+0x44>
 8006c36:	bf00      	nop

08006c38 <_realloc_r>:
 8006c38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c3c:	4692      	mov	sl, r2
 8006c3e:	b083      	sub	sp, #12
 8006c40:	2900      	cmp	r1, #0
 8006c42:	f000 80a1 	beq.w	8006d88 <_realloc_r+0x150>
 8006c46:	460d      	mov	r5, r1
 8006c48:	4680      	mov	r8, r0
 8006c4a:	f10a 040b 	add.w	r4, sl, #11
 8006c4e:	f7fc f8f3 	bl	8002e38 <__malloc_lock>
 8006c52:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006c56:	2c16      	cmp	r4, #22
 8006c58:	f022 0603 	bic.w	r6, r2, #3
 8006c5c:	f1a5 0708 	sub.w	r7, r5, #8
 8006c60:	d83e      	bhi.n	8006ce0 <_realloc_r+0xa8>
 8006c62:	2410      	movs	r4, #16
 8006c64:	4621      	mov	r1, r4
 8006c66:	45a2      	cmp	sl, r4
 8006c68:	d83f      	bhi.n	8006cea <_realloc_r+0xb2>
 8006c6a:	428e      	cmp	r6, r1
 8006c6c:	eb07 0906 	add.w	r9, r7, r6
 8006c70:	da74      	bge.n	8006d5c <_realloc_r+0x124>
 8006c72:	4bc7      	ldr	r3, [pc, #796]	; (8006f90 <_realloc_r+0x358>)
 8006c74:	6898      	ldr	r0, [r3, #8]
 8006c76:	4548      	cmp	r0, r9
 8006c78:	f000 80aa 	beq.w	8006dd0 <_realloc_r+0x198>
 8006c7c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006c80:	f020 0301 	bic.w	r3, r0, #1
 8006c84:	444b      	add	r3, r9
 8006c86:	685b      	ldr	r3, [r3, #4]
 8006c88:	07db      	lsls	r3, r3, #31
 8006c8a:	f140 8083 	bpl.w	8006d94 <_realloc_r+0x15c>
 8006c8e:	07d2      	lsls	r2, r2, #31
 8006c90:	d534      	bpl.n	8006cfc <_realloc_r+0xc4>
 8006c92:	4651      	mov	r1, sl
 8006c94:	4640      	mov	r0, r8
 8006c96:	f7fb fdcb 	bl	8002830 <_malloc_r>
 8006c9a:	4682      	mov	sl, r0
 8006c9c:	b1e0      	cbz	r0, 8006cd8 <_realloc_r+0xa0>
 8006c9e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ca2:	f023 0301 	bic.w	r3, r3, #1
 8006ca6:	443b      	add	r3, r7
 8006ca8:	f1a0 0208 	sub.w	r2, r0, #8
 8006cac:	4293      	cmp	r3, r2
 8006cae:	f000 80f9 	beq.w	8006ea4 <_realloc_r+0x26c>
 8006cb2:	1f32      	subs	r2, r6, #4
 8006cb4:	2a24      	cmp	r2, #36	; 0x24
 8006cb6:	f200 8107 	bhi.w	8006ec8 <_realloc_r+0x290>
 8006cba:	2a13      	cmp	r2, #19
 8006cbc:	6829      	ldr	r1, [r5, #0]
 8006cbe:	f200 80e6 	bhi.w	8006e8e <_realloc_r+0x256>
 8006cc2:	4603      	mov	r3, r0
 8006cc4:	462a      	mov	r2, r5
 8006cc6:	6019      	str	r1, [r3, #0]
 8006cc8:	6851      	ldr	r1, [r2, #4]
 8006cca:	6059      	str	r1, [r3, #4]
 8006ccc:	6892      	ldr	r2, [r2, #8]
 8006cce:	609a      	str	r2, [r3, #8]
 8006cd0:	4629      	mov	r1, r5
 8006cd2:	4640      	mov	r0, r8
 8006cd4:	f7ff f918 	bl	8005f08 <_free_r>
 8006cd8:	4640      	mov	r0, r8
 8006cda:	f7fc f8b3 	bl	8002e44 <__malloc_unlock>
 8006cde:	e04f      	b.n	8006d80 <_realloc_r+0x148>
 8006ce0:	f024 0407 	bic.w	r4, r4, #7
 8006ce4:	2c00      	cmp	r4, #0
 8006ce6:	4621      	mov	r1, r4
 8006ce8:	dabd      	bge.n	8006c66 <_realloc_r+0x2e>
 8006cea:	f04f 0a00 	mov.w	sl, #0
 8006cee:	230c      	movs	r3, #12
 8006cf0:	4650      	mov	r0, sl
 8006cf2:	f8c8 3000 	str.w	r3, [r8]
 8006cf6:	b003      	add	sp, #12
 8006cf8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006cfc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006d00:	eba7 0b03 	sub.w	fp, r7, r3
 8006d04:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d08:	f022 0203 	bic.w	r2, r2, #3
 8006d0c:	18b3      	adds	r3, r6, r2
 8006d0e:	428b      	cmp	r3, r1
 8006d10:	dbbf      	blt.n	8006c92 <_realloc_r+0x5a>
 8006d12:	46da      	mov	sl, fp
 8006d14:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006d18:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006d1c:	1f32      	subs	r2, r6, #4
 8006d1e:	2a24      	cmp	r2, #36	; 0x24
 8006d20:	60c1      	str	r1, [r0, #12]
 8006d22:	eb0b 0903 	add.w	r9, fp, r3
 8006d26:	6088      	str	r0, [r1, #8]
 8006d28:	f200 80c6 	bhi.w	8006eb8 <_realloc_r+0x280>
 8006d2c:	2a13      	cmp	r2, #19
 8006d2e:	6829      	ldr	r1, [r5, #0]
 8006d30:	f240 80c0 	bls.w	8006eb4 <_realloc_r+0x27c>
 8006d34:	f8cb 1008 	str.w	r1, [fp, #8]
 8006d38:	6869      	ldr	r1, [r5, #4]
 8006d3a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006d3e:	2a1b      	cmp	r2, #27
 8006d40:	68a9      	ldr	r1, [r5, #8]
 8006d42:	f200 80d8 	bhi.w	8006ef6 <_realloc_r+0x2be>
 8006d46:	f10b 0210 	add.w	r2, fp, #16
 8006d4a:	3508      	adds	r5, #8
 8006d4c:	6011      	str	r1, [r2, #0]
 8006d4e:	6869      	ldr	r1, [r5, #4]
 8006d50:	6051      	str	r1, [r2, #4]
 8006d52:	68a9      	ldr	r1, [r5, #8]
 8006d54:	6091      	str	r1, [r2, #8]
 8006d56:	461e      	mov	r6, r3
 8006d58:	465f      	mov	r7, fp
 8006d5a:	4655      	mov	r5, sl
 8006d5c:	687b      	ldr	r3, [r7, #4]
 8006d5e:	1b32      	subs	r2, r6, r4
 8006d60:	2a0f      	cmp	r2, #15
 8006d62:	f003 0301 	and.w	r3, r3, #1
 8006d66:	d822      	bhi.n	8006dae <_realloc_r+0x176>
 8006d68:	4333      	orrs	r3, r6
 8006d6a:	607b      	str	r3, [r7, #4]
 8006d6c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006d70:	f043 0301 	orr.w	r3, r3, #1
 8006d74:	f8c9 3004 	str.w	r3, [r9, #4]
 8006d78:	4640      	mov	r0, r8
 8006d7a:	f7fc f863 	bl	8002e44 <__malloc_unlock>
 8006d7e:	46aa      	mov	sl, r5
 8006d80:	4650      	mov	r0, sl
 8006d82:	b003      	add	sp, #12
 8006d84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d88:	4611      	mov	r1, r2
 8006d8a:	b003      	add	sp, #12
 8006d8c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d90:	f7fb bd4e 	b.w	8002830 <_malloc_r>
 8006d94:	f020 0003 	bic.w	r0, r0, #3
 8006d98:	1833      	adds	r3, r6, r0
 8006d9a:	428b      	cmp	r3, r1
 8006d9c:	db61      	blt.n	8006e62 <_realloc_r+0x22a>
 8006d9e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006da2:	461e      	mov	r6, r3
 8006da4:	60ca      	str	r2, [r1, #12]
 8006da6:	eb07 0903 	add.w	r9, r7, r3
 8006daa:	6091      	str	r1, [r2, #8]
 8006dac:	e7d6      	b.n	8006d5c <_realloc_r+0x124>
 8006dae:	1939      	adds	r1, r7, r4
 8006db0:	4323      	orrs	r3, r4
 8006db2:	f042 0201 	orr.w	r2, r2, #1
 8006db6:	607b      	str	r3, [r7, #4]
 8006db8:	604a      	str	r2, [r1, #4]
 8006dba:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006dbe:	f043 0301 	orr.w	r3, r3, #1
 8006dc2:	3108      	adds	r1, #8
 8006dc4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006dc8:	4640      	mov	r0, r8
 8006dca:	f7ff f89d 	bl	8005f08 <_free_r>
 8006dce:	e7d3      	b.n	8006d78 <_realloc_r+0x140>
 8006dd0:	6840      	ldr	r0, [r0, #4]
 8006dd2:	f020 0903 	bic.w	r9, r0, #3
 8006dd6:	44b1      	add	r9, r6
 8006dd8:	f104 0010 	add.w	r0, r4, #16
 8006ddc:	4581      	cmp	r9, r0
 8006dde:	da77      	bge.n	8006ed0 <_realloc_r+0x298>
 8006de0:	07d2      	lsls	r2, r2, #31
 8006de2:	f53f af56 	bmi.w	8006c92 <_realloc_r+0x5a>
 8006de6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006dea:	eba7 0b02 	sub.w	fp, r7, r2
 8006dee:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006df2:	f022 0203 	bic.w	r2, r2, #3
 8006df6:	4491      	add	r9, r2
 8006df8:	4548      	cmp	r0, r9
 8006dfa:	dc87      	bgt.n	8006d0c <_realloc_r+0xd4>
 8006dfc:	46da      	mov	sl, fp
 8006dfe:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006e02:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006e06:	1f32      	subs	r2, r6, #4
 8006e08:	2a24      	cmp	r2, #36	; 0x24
 8006e0a:	60c1      	str	r1, [r0, #12]
 8006e0c:	6088      	str	r0, [r1, #8]
 8006e0e:	f200 80a1 	bhi.w	8006f54 <_realloc_r+0x31c>
 8006e12:	2a13      	cmp	r2, #19
 8006e14:	6829      	ldr	r1, [r5, #0]
 8006e16:	f240 809b 	bls.w	8006f50 <_realloc_r+0x318>
 8006e1a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006e1e:	6869      	ldr	r1, [r5, #4]
 8006e20:	f8cb 100c 	str.w	r1, [fp, #12]
 8006e24:	2a1b      	cmp	r2, #27
 8006e26:	68a9      	ldr	r1, [r5, #8]
 8006e28:	f200 809b 	bhi.w	8006f62 <_realloc_r+0x32a>
 8006e2c:	f10b 0210 	add.w	r2, fp, #16
 8006e30:	3508      	adds	r5, #8
 8006e32:	6011      	str	r1, [r2, #0]
 8006e34:	6869      	ldr	r1, [r5, #4]
 8006e36:	6051      	str	r1, [r2, #4]
 8006e38:	68a9      	ldr	r1, [r5, #8]
 8006e3a:	6091      	str	r1, [r2, #8]
 8006e3c:	eb0b 0104 	add.w	r1, fp, r4
 8006e40:	eba9 0204 	sub.w	r2, r9, r4
 8006e44:	f042 0201 	orr.w	r2, r2, #1
 8006e48:	6099      	str	r1, [r3, #8]
 8006e4a:	604a      	str	r2, [r1, #4]
 8006e4c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006e50:	f003 0301 	and.w	r3, r3, #1
 8006e54:	431c      	orrs	r4, r3
 8006e56:	4640      	mov	r0, r8
 8006e58:	f8cb 4004 	str.w	r4, [fp, #4]
 8006e5c:	f7fb fff2 	bl	8002e44 <__malloc_unlock>
 8006e60:	e78e      	b.n	8006d80 <_realloc_r+0x148>
 8006e62:	07d3      	lsls	r3, r2, #31
 8006e64:	f53f af15 	bmi.w	8006c92 <_realloc_r+0x5a>
 8006e68:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006e6c:	eba7 0b03 	sub.w	fp, r7, r3
 8006e70:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006e74:	f022 0203 	bic.w	r2, r2, #3
 8006e78:	4410      	add	r0, r2
 8006e7a:	1983      	adds	r3, r0, r6
 8006e7c:	428b      	cmp	r3, r1
 8006e7e:	f6ff af45 	blt.w	8006d0c <_realloc_r+0xd4>
 8006e82:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006e86:	46da      	mov	sl, fp
 8006e88:	60ca      	str	r2, [r1, #12]
 8006e8a:	6091      	str	r1, [r2, #8]
 8006e8c:	e742      	b.n	8006d14 <_realloc_r+0xdc>
 8006e8e:	6001      	str	r1, [r0, #0]
 8006e90:	686b      	ldr	r3, [r5, #4]
 8006e92:	6043      	str	r3, [r0, #4]
 8006e94:	2a1b      	cmp	r2, #27
 8006e96:	d83a      	bhi.n	8006f0e <_realloc_r+0x2d6>
 8006e98:	f105 0208 	add.w	r2, r5, #8
 8006e9c:	f100 0308 	add.w	r3, r0, #8
 8006ea0:	68a9      	ldr	r1, [r5, #8]
 8006ea2:	e710      	b.n	8006cc6 <_realloc_r+0x8e>
 8006ea4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ea8:	f023 0303 	bic.w	r3, r3, #3
 8006eac:	441e      	add	r6, r3
 8006eae:	eb07 0906 	add.w	r9, r7, r6
 8006eb2:	e753      	b.n	8006d5c <_realloc_r+0x124>
 8006eb4:	4652      	mov	r2, sl
 8006eb6:	e749      	b.n	8006d4c <_realloc_r+0x114>
 8006eb8:	4629      	mov	r1, r5
 8006eba:	4650      	mov	r0, sl
 8006ebc:	461e      	mov	r6, r3
 8006ebe:	465f      	mov	r7, fp
 8006ec0:	f7ff fb4c 	bl	800655c <memmove>
 8006ec4:	4655      	mov	r5, sl
 8006ec6:	e749      	b.n	8006d5c <_realloc_r+0x124>
 8006ec8:	4629      	mov	r1, r5
 8006eca:	f7ff fb47 	bl	800655c <memmove>
 8006ece:	e6ff      	b.n	8006cd0 <_realloc_r+0x98>
 8006ed0:	4427      	add	r7, r4
 8006ed2:	eba9 0904 	sub.w	r9, r9, r4
 8006ed6:	f049 0201 	orr.w	r2, r9, #1
 8006eda:	609f      	str	r7, [r3, #8]
 8006edc:	607a      	str	r2, [r7, #4]
 8006ede:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ee2:	f003 0301 	and.w	r3, r3, #1
 8006ee6:	431c      	orrs	r4, r3
 8006ee8:	4640      	mov	r0, r8
 8006eea:	f845 4c04 	str.w	r4, [r5, #-4]
 8006eee:	f7fb ffa9 	bl	8002e44 <__malloc_unlock>
 8006ef2:	46aa      	mov	sl, r5
 8006ef4:	e744      	b.n	8006d80 <_realloc_r+0x148>
 8006ef6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006efa:	68e9      	ldr	r1, [r5, #12]
 8006efc:	f8cb 1014 	str.w	r1, [fp, #20]
 8006f00:	2a24      	cmp	r2, #36	; 0x24
 8006f02:	d010      	beq.n	8006f26 <_realloc_r+0x2ee>
 8006f04:	6929      	ldr	r1, [r5, #16]
 8006f06:	f10b 0218 	add.w	r2, fp, #24
 8006f0a:	3510      	adds	r5, #16
 8006f0c:	e71e      	b.n	8006d4c <_realloc_r+0x114>
 8006f0e:	68ab      	ldr	r3, [r5, #8]
 8006f10:	6083      	str	r3, [r0, #8]
 8006f12:	68eb      	ldr	r3, [r5, #12]
 8006f14:	60c3      	str	r3, [r0, #12]
 8006f16:	2a24      	cmp	r2, #36	; 0x24
 8006f18:	d010      	beq.n	8006f3c <_realloc_r+0x304>
 8006f1a:	f105 0210 	add.w	r2, r5, #16
 8006f1e:	f100 0310 	add.w	r3, r0, #16
 8006f22:	6929      	ldr	r1, [r5, #16]
 8006f24:	e6cf      	b.n	8006cc6 <_realloc_r+0x8e>
 8006f26:	692a      	ldr	r2, [r5, #16]
 8006f28:	f8cb 2018 	str.w	r2, [fp, #24]
 8006f2c:	696a      	ldr	r2, [r5, #20]
 8006f2e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006f32:	69a9      	ldr	r1, [r5, #24]
 8006f34:	f10b 0220 	add.w	r2, fp, #32
 8006f38:	3518      	adds	r5, #24
 8006f3a:	e707      	b.n	8006d4c <_realloc_r+0x114>
 8006f3c:	692b      	ldr	r3, [r5, #16]
 8006f3e:	6103      	str	r3, [r0, #16]
 8006f40:	696b      	ldr	r3, [r5, #20]
 8006f42:	6143      	str	r3, [r0, #20]
 8006f44:	69a9      	ldr	r1, [r5, #24]
 8006f46:	f105 0218 	add.w	r2, r5, #24
 8006f4a:	f100 0318 	add.w	r3, r0, #24
 8006f4e:	e6ba      	b.n	8006cc6 <_realloc_r+0x8e>
 8006f50:	4652      	mov	r2, sl
 8006f52:	e76e      	b.n	8006e32 <_realloc_r+0x1fa>
 8006f54:	4629      	mov	r1, r5
 8006f56:	4650      	mov	r0, sl
 8006f58:	9301      	str	r3, [sp, #4]
 8006f5a:	f7ff faff 	bl	800655c <memmove>
 8006f5e:	9b01      	ldr	r3, [sp, #4]
 8006f60:	e76c      	b.n	8006e3c <_realloc_r+0x204>
 8006f62:	f8cb 1010 	str.w	r1, [fp, #16]
 8006f66:	68e9      	ldr	r1, [r5, #12]
 8006f68:	f8cb 1014 	str.w	r1, [fp, #20]
 8006f6c:	2a24      	cmp	r2, #36	; 0x24
 8006f6e:	d004      	beq.n	8006f7a <_realloc_r+0x342>
 8006f70:	6929      	ldr	r1, [r5, #16]
 8006f72:	f10b 0218 	add.w	r2, fp, #24
 8006f76:	3510      	adds	r5, #16
 8006f78:	e75b      	b.n	8006e32 <_realloc_r+0x1fa>
 8006f7a:	692a      	ldr	r2, [r5, #16]
 8006f7c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006f80:	696a      	ldr	r2, [r5, #20]
 8006f82:	f8cb 201c 	str.w	r2, [fp, #28]
 8006f86:	69a9      	ldr	r1, [r5, #24]
 8006f88:	f10b 0220 	add.w	r2, fp, #32
 8006f8c:	3518      	adds	r5, #24
 8006f8e:	e750      	b.n	8006e32 <_realloc_r+0x1fa>
 8006f90:	200005b4 	.word	0x200005b4

08006f94 <frexp>:
 8006f94:	ec53 2b10 	vmov	r2, r3, d0
 8006f98:	b570      	push	{r4, r5, r6, lr}
 8006f9a:	4e16      	ldr	r6, [pc, #88]	; (8006ff4 <frexp+0x60>)
 8006f9c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006fa0:	2500      	movs	r5, #0
 8006fa2:	42b1      	cmp	r1, r6
 8006fa4:	4604      	mov	r4, r0
 8006fa6:	6005      	str	r5, [r0, #0]
 8006fa8:	dc21      	bgt.n	8006fee <frexp+0x5a>
 8006faa:	ee10 6a10 	vmov	r6, s0
 8006fae:	430e      	orrs	r6, r1
 8006fb0:	d01d      	beq.n	8006fee <frexp+0x5a>
 8006fb2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006fb6:	4618      	mov	r0, r3
 8006fb8:	da0c      	bge.n	8006fd4 <frexp+0x40>
 8006fba:	4619      	mov	r1, r3
 8006fbc:	2200      	movs	r2, #0
 8006fbe:	ee10 0a10 	vmov	r0, s0
 8006fc2:	4b0d      	ldr	r3, [pc, #52]	; (8006ff8 <frexp+0x64>)
 8006fc4:	f7f9 fad8 	bl	8000578 <__aeabi_dmul>
 8006fc8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006fcc:	4602      	mov	r2, r0
 8006fce:	4608      	mov	r0, r1
 8006fd0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006fd4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006fd8:	1509      	asrs	r1, r1, #20
 8006fda:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006fde:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006fe2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006fe6:	4429      	add	r1, r5
 8006fe8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006fec:	6021      	str	r1, [r4, #0]
 8006fee:	ec43 2b10 	vmov	d0, r2, r3
 8006ff2:	bd70      	pop	{r4, r5, r6, pc}
 8006ff4:	7fefffff 	.word	0x7fefffff
 8006ff8:	43500000 	.word	0x43500000

08006ffc <__sread>:
 8006ffc:	b510      	push	{r4, lr}
 8006ffe:	460c      	mov	r4, r1
 8007000:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007004:	f000 fa66 	bl	80074d4 <_read_r>
 8007008:	2800      	cmp	r0, #0
 800700a:	db03      	blt.n	8007014 <__sread+0x18>
 800700c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800700e:	4403      	add	r3, r0
 8007010:	6523      	str	r3, [r4, #80]	; 0x50
 8007012:	bd10      	pop	{r4, pc}
 8007014:	89a3      	ldrh	r3, [r4, #12]
 8007016:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800701a:	81a3      	strh	r3, [r4, #12]
 800701c:	bd10      	pop	{r4, pc}
 800701e:	bf00      	nop

08007020 <__swrite>:
 8007020:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007024:	4616      	mov	r6, r2
 8007026:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800702a:	461f      	mov	r7, r3
 800702c:	05d3      	lsls	r3, r2, #23
 800702e:	460c      	mov	r4, r1
 8007030:	4605      	mov	r5, r0
 8007032:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007036:	d507      	bpl.n	8007048 <__swrite+0x28>
 8007038:	2200      	movs	r2, #0
 800703a:	2302      	movs	r3, #2
 800703c:	f000 fa34 	bl	80074a8 <_lseek_r>
 8007040:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007044:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007048:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800704c:	81a2      	strh	r2, [r4, #12]
 800704e:	463b      	mov	r3, r7
 8007050:	4632      	mov	r2, r6
 8007052:	4628      	mov	r0, r5
 8007054:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8007058:	f000 b85a 	b.w	8007110 <_write_r>

0800705c <__sseek>:
 800705c:	b510      	push	{r4, lr}
 800705e:	460c      	mov	r4, r1
 8007060:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007064:	f000 fa20 	bl	80074a8 <_lseek_r>
 8007068:	89a3      	ldrh	r3, [r4, #12]
 800706a:	1c42      	adds	r2, r0, #1
 800706c:	bf0e      	itee	eq
 800706e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007072:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8007076:	6520      	strne	r0, [r4, #80]	; 0x50
 8007078:	81a3      	strh	r3, [r4, #12]
 800707a:	bd10      	pop	{r4, pc}

0800707c <__sclose>:
 800707c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007080:	f000 b8f0 	b.w	8007264 <_close_r>

08007084 <__sprint_r.part.0>:
 8007084:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007088:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800708a:	049c      	lsls	r4, r3, #18
 800708c:	4692      	mov	sl, r2
 800708e:	d52d      	bpl.n	80070ec <__sprint_r.part.0+0x68>
 8007090:	6893      	ldr	r3, [r2, #8]
 8007092:	6812      	ldr	r2, [r2, #0]
 8007094:	b343      	cbz	r3, 80070e8 <__sprint_r.part.0+0x64>
 8007096:	460e      	mov	r6, r1
 8007098:	4607      	mov	r7, r0
 800709a:	f102 0908 	add.w	r9, r2, #8
 800709e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80070a2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80070a6:	d015      	beq.n	80070d4 <__sprint_r.part.0+0x50>
 80070a8:	3d04      	subs	r5, #4
 80070aa:	2400      	movs	r4, #0
 80070ac:	e001      	b.n	80070b2 <__sprint_r.part.0+0x2e>
 80070ae:	45a0      	cmp	r8, r4
 80070b0:	d00e      	beq.n	80070d0 <__sprint_r.part.0+0x4c>
 80070b2:	4632      	mov	r2, r6
 80070b4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80070b8:	4638      	mov	r0, r7
 80070ba:	f000 f99d 	bl	80073f8 <_fputwc_r>
 80070be:	1c43      	adds	r3, r0, #1
 80070c0:	f104 0401 	add.w	r4, r4, #1
 80070c4:	d1f3      	bne.n	80070ae <__sprint_r.part.0+0x2a>
 80070c6:	2300      	movs	r3, #0
 80070c8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80070cc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070d0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80070d4:	f02b 0b03 	bic.w	fp, fp, #3
 80070d8:	eba3 030b 	sub.w	r3, r3, fp
 80070dc:	f8ca 3008 	str.w	r3, [sl, #8]
 80070e0:	f109 0908 	add.w	r9, r9, #8
 80070e4:	2b00      	cmp	r3, #0
 80070e6:	d1da      	bne.n	800709e <__sprint_r.part.0+0x1a>
 80070e8:	2000      	movs	r0, #0
 80070ea:	e7ec      	b.n	80070c6 <__sprint_r.part.0+0x42>
 80070ec:	f7ff f800 	bl	80060f0 <__sfvwrite_r>
 80070f0:	2300      	movs	r3, #0
 80070f2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80070f6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80070fa:	bf00      	nop

080070fc <__sprint_r>:
 80070fc:	6893      	ldr	r3, [r2, #8]
 80070fe:	b10b      	cbz	r3, 8007104 <__sprint_r+0x8>
 8007100:	f7ff bfc0 	b.w	8007084 <__sprint_r.part.0>
 8007104:	b410      	push	{r4}
 8007106:	4618      	mov	r0, r3
 8007108:	6053      	str	r3, [r2, #4]
 800710a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800710e:	4770      	bx	lr

08007110 <_write_r>:
 8007110:	b570      	push	{r4, r5, r6, lr}
 8007112:	460d      	mov	r5, r1
 8007114:	4c08      	ldr	r4, [pc, #32]	; (8007138 <_write_r+0x28>)
 8007116:	4611      	mov	r1, r2
 8007118:	4606      	mov	r6, r0
 800711a:	461a      	mov	r2, r3
 800711c:	4628      	mov	r0, r5
 800711e:	2300      	movs	r3, #0
 8007120:	6023      	str	r3, [r4, #0]
 8007122:	f7fb fa8b 	bl	800263c <_write>
 8007126:	1c43      	adds	r3, r0, #1
 8007128:	d000      	beq.n	800712c <_write_r+0x1c>
 800712a:	bd70      	pop	{r4, r5, r6, pc}
 800712c:	6823      	ldr	r3, [r4, #0]
 800712e:	2b00      	cmp	r3, #0
 8007130:	d0fb      	beq.n	800712a <_write_r+0x1a>
 8007132:	6033      	str	r3, [r6, #0]
 8007134:	bd70      	pop	{r4, r5, r6, pc}
 8007136:	bf00      	nop
 8007138:	20000b28 	.word	0x20000b28

0800713c <__register_exitproc>:
 800713c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007140:	4d2b      	ldr	r5, [pc, #172]	; (80071f0 <__register_exitproc+0xb4>)
 8007142:	4606      	mov	r6, r0
 8007144:	6828      	ldr	r0, [r5, #0]
 8007146:	4698      	mov	r8, r3
 8007148:	460f      	mov	r7, r1
 800714a:	4691      	mov	r9, r2
 800714c:	f7ff f98a 	bl	8006464 <__retarget_lock_acquire_recursive>
 8007150:	4b28      	ldr	r3, [pc, #160]	; (80071f4 <__register_exitproc+0xb8>)
 8007152:	681c      	ldr	r4, [r3, #0]
 8007154:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007158:	2b00      	cmp	r3, #0
 800715a:	d03d      	beq.n	80071d8 <__register_exitproc+0x9c>
 800715c:	685a      	ldr	r2, [r3, #4]
 800715e:	2a1f      	cmp	r2, #31
 8007160:	dc0d      	bgt.n	800717e <__register_exitproc+0x42>
 8007162:	f102 0c01 	add.w	ip, r2, #1
 8007166:	bb16      	cbnz	r6, 80071ae <__register_exitproc+0x72>
 8007168:	3202      	adds	r2, #2
 800716a:	f8c3 c004 	str.w	ip, [r3, #4]
 800716e:	6828      	ldr	r0, [r5, #0]
 8007170:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007174:	f7ff f978 	bl	8006468 <__retarget_lock_release_recursive>
 8007178:	2000      	movs	r0, #0
 800717a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800717e:	4b1e      	ldr	r3, [pc, #120]	; (80071f8 <__register_exitproc+0xbc>)
 8007180:	b37b      	cbz	r3, 80071e2 <__register_exitproc+0xa6>
 8007182:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007186:	f7fb fb43 	bl	8002810 <malloc>
 800718a:	4603      	mov	r3, r0
 800718c:	b348      	cbz	r0, 80071e2 <__register_exitproc+0xa6>
 800718e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007192:	2100      	movs	r1, #0
 8007194:	e9c0 2100 	strd	r2, r1, [r0]
 8007198:	f04f 0c01 	mov.w	ip, #1
 800719c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80071a0:	460a      	mov	r2, r1
 80071a2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80071a6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80071aa:	2e00      	cmp	r6, #0
 80071ac:	d0dc      	beq.n	8007168 <__register_exitproc+0x2c>
 80071ae:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80071b2:	2401      	movs	r4, #1
 80071b4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80071b8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80071bc:	4094      	lsls	r4, r2
 80071be:	4320      	orrs	r0, r4
 80071c0:	2e02      	cmp	r6, #2
 80071c2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80071c6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80071ca:	d1cd      	bne.n	8007168 <__register_exitproc+0x2c>
 80071cc:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80071d0:	430c      	orrs	r4, r1
 80071d2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80071d6:	e7c7      	b.n	8007168 <__register_exitproc+0x2c>
 80071d8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80071dc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80071e0:	e7bc      	b.n	800715c <__register_exitproc+0x20>
 80071e2:	6828      	ldr	r0, [r5, #0]
 80071e4:	f7ff f940 	bl	8006468 <__retarget_lock_release_recursive>
 80071e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80071ec:	e7c5      	b.n	800717a <__register_exitproc+0x3e>
 80071ee:	bf00      	nop
 80071f0:	200009c4 	.word	0x200009c4
 80071f4:	08007770 	.word	0x08007770
 80071f8:	08002811 	.word	0x08002811

080071fc <_calloc_r>:
 80071fc:	b510      	push	{r4, lr}
 80071fe:	fb02 f101 	mul.w	r1, r2, r1
 8007202:	f7fb fb15 	bl	8002830 <_malloc_r>
 8007206:	4604      	mov	r4, r0
 8007208:	b1d8      	cbz	r0, 8007242 <_calloc_r+0x46>
 800720a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800720e:	f022 0203 	bic.w	r2, r2, #3
 8007212:	3a04      	subs	r2, #4
 8007214:	2a24      	cmp	r2, #36	; 0x24
 8007216:	d81d      	bhi.n	8007254 <_calloc_r+0x58>
 8007218:	2a13      	cmp	r2, #19
 800721a:	d914      	bls.n	8007246 <_calloc_r+0x4a>
 800721c:	2300      	movs	r3, #0
 800721e:	2a1b      	cmp	r2, #27
 8007220:	e9c0 3300 	strd	r3, r3, [r0]
 8007224:	d91b      	bls.n	800725e <_calloc_r+0x62>
 8007226:	2a24      	cmp	r2, #36	; 0x24
 8007228:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800722c:	bf0a      	itet	eq
 800722e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007232:	f100 0210 	addne.w	r2, r0, #16
 8007236:	f100 0218 	addeq.w	r2, r0, #24
 800723a:	2300      	movs	r3, #0
 800723c:	e9c2 3300 	strd	r3, r3, [r2]
 8007240:	6093      	str	r3, [r2, #8]
 8007242:	4620      	mov	r0, r4
 8007244:	bd10      	pop	{r4, pc}
 8007246:	4602      	mov	r2, r0
 8007248:	2300      	movs	r3, #0
 800724a:	e9c2 3300 	strd	r3, r3, [r2]
 800724e:	6093      	str	r3, [r2, #8]
 8007250:	4620      	mov	r0, r4
 8007252:	bd10      	pop	{r4, pc}
 8007254:	2100      	movs	r1, #0
 8007256:	f7fb fda5 	bl	8002da4 <memset>
 800725a:	4620      	mov	r0, r4
 800725c:	bd10      	pop	{r4, pc}
 800725e:	f100 0208 	add.w	r2, r0, #8
 8007262:	e7f1      	b.n	8007248 <_calloc_r+0x4c>

08007264 <_close_r>:
 8007264:	b538      	push	{r3, r4, r5, lr}
 8007266:	4c07      	ldr	r4, [pc, #28]	; (8007284 <_close_r+0x20>)
 8007268:	2300      	movs	r3, #0
 800726a:	4605      	mov	r5, r0
 800726c:	4608      	mov	r0, r1
 800726e:	6023      	str	r3, [r4, #0]
 8007270:	f7fb fa25 	bl	80026be <_close>
 8007274:	1c43      	adds	r3, r0, #1
 8007276:	d000      	beq.n	800727a <_close_r+0x16>
 8007278:	bd38      	pop	{r3, r4, r5, pc}
 800727a:	6823      	ldr	r3, [r4, #0]
 800727c:	2b00      	cmp	r3, #0
 800727e:	d0fb      	beq.n	8007278 <_close_r+0x14>
 8007280:	602b      	str	r3, [r5, #0]
 8007282:	bd38      	pop	{r3, r4, r5, pc}
 8007284:	20000b28 	.word	0x20000b28

08007288 <_fclose_r>:
 8007288:	b570      	push	{r4, r5, r6, lr}
 800728a:	2900      	cmp	r1, #0
 800728c:	d048      	beq.n	8007320 <_fclose_r+0x98>
 800728e:	4605      	mov	r5, r0
 8007290:	460c      	mov	r4, r1
 8007292:	b110      	cbz	r0, 800729a <_fclose_r+0x12>
 8007294:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007296:	2b00      	cmp	r3, #0
 8007298:	d048      	beq.n	800732c <_fclose_r+0xa4>
 800729a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800729c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80072a0:	07d0      	lsls	r0, r2, #31
 80072a2:	d440      	bmi.n	8007326 <_fclose_r+0x9e>
 80072a4:	0599      	lsls	r1, r3, #22
 80072a6:	d530      	bpl.n	800730a <_fclose_r+0x82>
 80072a8:	4621      	mov	r1, r4
 80072aa:	4628      	mov	r0, r5
 80072ac:	f7fe fc84 	bl	8005bb8 <__sflush_r>
 80072b0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80072b2:	4606      	mov	r6, r0
 80072b4:	b133      	cbz	r3, 80072c4 <_fclose_r+0x3c>
 80072b6:	69e1      	ldr	r1, [r4, #28]
 80072b8:	4628      	mov	r0, r5
 80072ba:	4798      	blx	r3
 80072bc:	2800      	cmp	r0, #0
 80072be:	bfb8      	it	lt
 80072c0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80072c4:	89a3      	ldrh	r3, [r4, #12]
 80072c6:	061a      	lsls	r2, r3, #24
 80072c8:	d43c      	bmi.n	8007344 <_fclose_r+0xbc>
 80072ca:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80072cc:	b141      	cbz	r1, 80072e0 <_fclose_r+0x58>
 80072ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80072d2:	4299      	cmp	r1, r3
 80072d4:	d002      	beq.n	80072dc <_fclose_r+0x54>
 80072d6:	4628      	mov	r0, r5
 80072d8:	f7fe fe16 	bl	8005f08 <_free_r>
 80072dc:	2300      	movs	r3, #0
 80072de:	6323      	str	r3, [r4, #48]	; 0x30
 80072e0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80072e2:	b121      	cbz	r1, 80072ee <_fclose_r+0x66>
 80072e4:	4628      	mov	r0, r5
 80072e6:	f7fe fe0f 	bl	8005f08 <_free_r>
 80072ea:	2300      	movs	r3, #0
 80072ec:	6463      	str	r3, [r4, #68]	; 0x44
 80072ee:	f7fe fd95 	bl	8005e1c <__sfp_lock_acquire>
 80072f2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80072f4:	2200      	movs	r2, #0
 80072f6:	07db      	lsls	r3, r3, #31
 80072f8:	81a2      	strh	r2, [r4, #12]
 80072fa:	d51f      	bpl.n	800733c <_fclose_r+0xb4>
 80072fc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80072fe:	f7ff f8af 	bl	8006460 <__retarget_lock_close_recursive>
 8007302:	f7fe fd91 	bl	8005e28 <__sfp_lock_release>
 8007306:	4630      	mov	r0, r6
 8007308:	bd70      	pop	{r4, r5, r6, pc}
 800730a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800730c:	f7ff f8aa 	bl	8006464 <__retarget_lock_acquire_recursive>
 8007310:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007314:	2b00      	cmp	r3, #0
 8007316:	d1c7      	bne.n	80072a8 <_fclose_r+0x20>
 8007318:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800731a:	f016 0601 	ands.w	r6, r6, #1
 800731e:	d016      	beq.n	800734e <_fclose_r+0xc6>
 8007320:	2600      	movs	r6, #0
 8007322:	4630      	mov	r0, r6
 8007324:	bd70      	pop	{r4, r5, r6, pc}
 8007326:	2b00      	cmp	r3, #0
 8007328:	d0fa      	beq.n	8007320 <_fclose_r+0x98>
 800732a:	e7bd      	b.n	80072a8 <_fclose_r+0x20>
 800732c:	f7fe fd4a 	bl	8005dc4 <__sinit>
 8007330:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007332:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007336:	07d0      	lsls	r0, r2, #31
 8007338:	d4f5      	bmi.n	8007326 <_fclose_r+0x9e>
 800733a:	e7b3      	b.n	80072a4 <_fclose_r+0x1c>
 800733c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800733e:	f7ff f893 	bl	8006468 <__retarget_lock_release_recursive>
 8007342:	e7db      	b.n	80072fc <_fclose_r+0x74>
 8007344:	6921      	ldr	r1, [r4, #16]
 8007346:	4628      	mov	r0, r5
 8007348:	f7fe fdde 	bl	8005f08 <_free_r>
 800734c:	e7bd      	b.n	80072ca <_fclose_r+0x42>
 800734e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007350:	f7ff f88a 	bl	8006468 <__retarget_lock_release_recursive>
 8007354:	4630      	mov	r0, r6
 8007356:	bd70      	pop	{r4, r5, r6, pc}

08007358 <__fputwc>:
 8007358:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800735c:	b082      	sub	sp, #8
 800735e:	4681      	mov	r9, r0
 8007360:	4688      	mov	r8, r1
 8007362:	4614      	mov	r4, r2
 8007364:	f7fb fa38 	bl	80027d8 <__locale_mb_cur_max>
 8007368:	2801      	cmp	r0, #1
 800736a:	d103      	bne.n	8007374 <__fputwc+0x1c>
 800736c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007370:	2bfe      	cmp	r3, #254	; 0xfe
 8007372:	d933      	bls.n	80073dc <__fputwc+0x84>
 8007374:	4642      	mov	r2, r8
 8007376:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800737a:	a901      	add	r1, sp, #4
 800737c:	4648      	mov	r0, r9
 800737e:	f000 f917 	bl	80075b0 <_wcrtomb_r>
 8007382:	1c42      	adds	r2, r0, #1
 8007384:	4606      	mov	r6, r0
 8007386:	d02f      	beq.n	80073e8 <__fputwc+0x90>
 8007388:	b320      	cbz	r0, 80073d4 <__fputwc+0x7c>
 800738a:	f89d c004 	ldrb.w	ip, [sp, #4]
 800738e:	2500      	movs	r5, #0
 8007390:	f10d 0a04 	add.w	sl, sp, #4
 8007394:	e009      	b.n	80073aa <__fputwc+0x52>
 8007396:	6823      	ldr	r3, [r4, #0]
 8007398:	1c5a      	adds	r2, r3, #1
 800739a:	6022      	str	r2, [r4, #0]
 800739c:	f883 c000 	strb.w	ip, [r3]
 80073a0:	3501      	adds	r5, #1
 80073a2:	42b5      	cmp	r5, r6
 80073a4:	d216      	bcs.n	80073d4 <__fputwc+0x7c>
 80073a6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80073aa:	68a3      	ldr	r3, [r4, #8]
 80073ac:	3b01      	subs	r3, #1
 80073ae:	2b00      	cmp	r3, #0
 80073b0:	60a3      	str	r3, [r4, #8]
 80073b2:	daf0      	bge.n	8007396 <__fputwc+0x3e>
 80073b4:	69a7      	ldr	r7, [r4, #24]
 80073b6:	42bb      	cmp	r3, r7
 80073b8:	4661      	mov	r1, ip
 80073ba:	4622      	mov	r2, r4
 80073bc:	4648      	mov	r0, r9
 80073be:	db02      	blt.n	80073c6 <__fputwc+0x6e>
 80073c0:	f1bc 0f0a 	cmp.w	ip, #10
 80073c4:	d1e7      	bne.n	8007396 <__fputwc+0x3e>
 80073c6:	f000 f89b 	bl	8007500 <__swbuf_r>
 80073ca:	1c43      	adds	r3, r0, #1
 80073cc:	d1e8      	bne.n	80073a0 <__fputwc+0x48>
 80073ce:	b002      	add	sp, #8
 80073d0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073d4:	4640      	mov	r0, r8
 80073d6:	b002      	add	sp, #8
 80073d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073dc:	fa5f fc88 	uxtb.w	ip, r8
 80073e0:	4606      	mov	r6, r0
 80073e2:	f88d c004 	strb.w	ip, [sp, #4]
 80073e6:	e7d2      	b.n	800738e <__fputwc+0x36>
 80073e8:	89a3      	ldrh	r3, [r4, #12]
 80073ea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80073ee:	81a3      	strh	r3, [r4, #12]
 80073f0:	b002      	add	sp, #8
 80073f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80073f6:	bf00      	nop

080073f8 <_fputwc_r>:
 80073f8:	b530      	push	{r4, r5, lr}
 80073fa:	4605      	mov	r5, r0
 80073fc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80073fe:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8007402:	07c0      	lsls	r0, r0, #31
 8007404:	4614      	mov	r4, r2
 8007406:	b083      	sub	sp, #12
 8007408:	b29a      	uxth	r2, r3
 800740a:	d401      	bmi.n	8007410 <_fputwc_r+0x18>
 800740c:	0590      	lsls	r0, r2, #22
 800740e:	d51c      	bpl.n	800744a <_fputwc_r+0x52>
 8007410:	0490      	lsls	r0, r2, #18
 8007412:	d406      	bmi.n	8007422 <_fputwc_r+0x2a>
 8007414:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007416:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800741a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800741e:	81a3      	strh	r3, [r4, #12]
 8007420:	6662      	str	r2, [r4, #100]	; 0x64
 8007422:	4628      	mov	r0, r5
 8007424:	4622      	mov	r2, r4
 8007426:	f7ff ff97 	bl	8007358 <__fputwc>
 800742a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800742c:	07da      	lsls	r2, r3, #31
 800742e:	4605      	mov	r5, r0
 8007430:	d402      	bmi.n	8007438 <_fputwc_r+0x40>
 8007432:	89a3      	ldrh	r3, [r4, #12]
 8007434:	059b      	lsls	r3, r3, #22
 8007436:	d502      	bpl.n	800743e <_fputwc_r+0x46>
 8007438:	4628      	mov	r0, r5
 800743a:	b003      	add	sp, #12
 800743c:	bd30      	pop	{r4, r5, pc}
 800743e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007440:	f7ff f812 	bl	8006468 <__retarget_lock_release_recursive>
 8007444:	4628      	mov	r0, r5
 8007446:	b003      	add	sp, #12
 8007448:	bd30      	pop	{r4, r5, pc}
 800744a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800744c:	9101      	str	r1, [sp, #4]
 800744e:	f7ff f809 	bl	8006464 <__retarget_lock_acquire_recursive>
 8007452:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007456:	9901      	ldr	r1, [sp, #4]
 8007458:	b29a      	uxth	r2, r3
 800745a:	e7d9      	b.n	8007410 <_fputwc_r+0x18>

0800745c <_fstat_r>:
 800745c:	b538      	push	{r3, r4, r5, lr}
 800745e:	460b      	mov	r3, r1
 8007460:	4c07      	ldr	r4, [pc, #28]	; (8007480 <_fstat_r+0x24>)
 8007462:	4605      	mov	r5, r0
 8007464:	4611      	mov	r1, r2
 8007466:	4618      	mov	r0, r3
 8007468:	2300      	movs	r3, #0
 800746a:	6023      	str	r3, [r4, #0]
 800746c:	f7fb f92a 	bl	80026c4 <_fstat>
 8007470:	1c43      	adds	r3, r0, #1
 8007472:	d000      	beq.n	8007476 <_fstat_r+0x1a>
 8007474:	bd38      	pop	{r3, r4, r5, pc}
 8007476:	6823      	ldr	r3, [r4, #0]
 8007478:	2b00      	cmp	r3, #0
 800747a:	d0fb      	beq.n	8007474 <_fstat_r+0x18>
 800747c:	602b      	str	r3, [r5, #0]
 800747e:	bd38      	pop	{r3, r4, r5, pc}
 8007480:	20000b28 	.word	0x20000b28

08007484 <_isatty_r>:
 8007484:	b538      	push	{r3, r4, r5, lr}
 8007486:	4c07      	ldr	r4, [pc, #28]	; (80074a4 <_isatty_r+0x20>)
 8007488:	2300      	movs	r3, #0
 800748a:	4605      	mov	r5, r0
 800748c:	4608      	mov	r0, r1
 800748e:	6023      	str	r3, [r4, #0]
 8007490:	f7fb f91e 	bl	80026d0 <_isatty>
 8007494:	1c43      	adds	r3, r0, #1
 8007496:	d000      	beq.n	800749a <_isatty_r+0x16>
 8007498:	bd38      	pop	{r3, r4, r5, pc}
 800749a:	6823      	ldr	r3, [r4, #0]
 800749c:	2b00      	cmp	r3, #0
 800749e:	d0fb      	beq.n	8007498 <_isatty_r+0x14>
 80074a0:	602b      	str	r3, [r5, #0]
 80074a2:	bd38      	pop	{r3, r4, r5, pc}
 80074a4:	20000b28 	.word	0x20000b28

080074a8 <_lseek_r>:
 80074a8:	b570      	push	{r4, r5, r6, lr}
 80074aa:	460d      	mov	r5, r1
 80074ac:	4c08      	ldr	r4, [pc, #32]	; (80074d0 <_lseek_r+0x28>)
 80074ae:	4611      	mov	r1, r2
 80074b0:	4606      	mov	r6, r0
 80074b2:	461a      	mov	r2, r3
 80074b4:	4628      	mov	r0, r5
 80074b6:	2300      	movs	r3, #0
 80074b8:	6023      	str	r3, [r4, #0]
 80074ba:	f7fb f90b 	bl	80026d4 <_lseek>
 80074be:	1c43      	adds	r3, r0, #1
 80074c0:	d000      	beq.n	80074c4 <_lseek_r+0x1c>
 80074c2:	bd70      	pop	{r4, r5, r6, pc}
 80074c4:	6823      	ldr	r3, [r4, #0]
 80074c6:	2b00      	cmp	r3, #0
 80074c8:	d0fb      	beq.n	80074c2 <_lseek_r+0x1a>
 80074ca:	6033      	str	r3, [r6, #0]
 80074cc:	bd70      	pop	{r4, r5, r6, pc}
 80074ce:	bf00      	nop
 80074d0:	20000b28 	.word	0x20000b28

080074d4 <_read_r>:
 80074d4:	b570      	push	{r4, r5, r6, lr}
 80074d6:	460d      	mov	r5, r1
 80074d8:	4c08      	ldr	r4, [pc, #32]	; (80074fc <_read_r+0x28>)
 80074da:	4611      	mov	r1, r2
 80074dc:	4606      	mov	r6, r0
 80074de:	461a      	mov	r2, r3
 80074e0:	4628      	mov	r0, r5
 80074e2:	2300      	movs	r3, #0
 80074e4:	6023      	str	r3, [r4, #0]
 80074e6:	f7fb f889 	bl	80025fc <_read>
 80074ea:	1c43      	adds	r3, r0, #1
 80074ec:	d000      	beq.n	80074f0 <_read_r+0x1c>
 80074ee:	bd70      	pop	{r4, r5, r6, pc}
 80074f0:	6823      	ldr	r3, [r4, #0]
 80074f2:	2b00      	cmp	r3, #0
 80074f4:	d0fb      	beq.n	80074ee <_read_r+0x1a>
 80074f6:	6033      	str	r3, [r6, #0]
 80074f8:	bd70      	pop	{r4, r5, r6, pc}
 80074fa:	bf00      	nop
 80074fc:	20000b28 	.word	0x20000b28

08007500 <__swbuf_r>:
 8007500:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007502:	460d      	mov	r5, r1
 8007504:	4614      	mov	r4, r2
 8007506:	4606      	mov	r6, r0
 8007508:	b110      	cbz	r0, 8007510 <__swbuf_r+0x10>
 800750a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800750c:	2b00      	cmp	r3, #0
 800750e:	d043      	beq.n	8007598 <__swbuf_r+0x98>
 8007510:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007514:	69a3      	ldr	r3, [r4, #24]
 8007516:	60a3      	str	r3, [r4, #8]
 8007518:	b291      	uxth	r1, r2
 800751a:	0708      	lsls	r0, r1, #28
 800751c:	d51b      	bpl.n	8007556 <__swbuf_r+0x56>
 800751e:	6923      	ldr	r3, [r4, #16]
 8007520:	b1cb      	cbz	r3, 8007556 <__swbuf_r+0x56>
 8007522:	b2ed      	uxtb	r5, r5
 8007524:	0489      	lsls	r1, r1, #18
 8007526:	462f      	mov	r7, r5
 8007528:	d522      	bpl.n	8007570 <__swbuf_r+0x70>
 800752a:	6822      	ldr	r2, [r4, #0]
 800752c:	6961      	ldr	r1, [r4, #20]
 800752e:	1ad3      	subs	r3, r2, r3
 8007530:	4299      	cmp	r1, r3
 8007532:	dd29      	ble.n	8007588 <__swbuf_r+0x88>
 8007534:	3301      	adds	r3, #1
 8007536:	68a1      	ldr	r1, [r4, #8]
 8007538:	1c50      	adds	r0, r2, #1
 800753a:	3901      	subs	r1, #1
 800753c:	60a1      	str	r1, [r4, #8]
 800753e:	6020      	str	r0, [r4, #0]
 8007540:	7015      	strb	r5, [r2, #0]
 8007542:	6962      	ldr	r2, [r4, #20]
 8007544:	429a      	cmp	r2, r3
 8007546:	d02a      	beq.n	800759e <__swbuf_r+0x9e>
 8007548:	89a3      	ldrh	r3, [r4, #12]
 800754a:	07db      	lsls	r3, r3, #31
 800754c:	d501      	bpl.n	8007552 <__swbuf_r+0x52>
 800754e:	2d0a      	cmp	r5, #10
 8007550:	d025      	beq.n	800759e <__swbuf_r+0x9e>
 8007552:	4638      	mov	r0, r7
 8007554:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007556:	4621      	mov	r1, r4
 8007558:	4630      	mov	r0, r6
 800755a:	f7fd fb13 	bl	8004b84 <__swsetup_r>
 800755e:	bb20      	cbnz	r0, 80075aa <__swbuf_r+0xaa>
 8007560:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007564:	6923      	ldr	r3, [r4, #16]
 8007566:	b291      	uxth	r1, r2
 8007568:	b2ed      	uxtb	r5, r5
 800756a:	0489      	lsls	r1, r1, #18
 800756c:	462f      	mov	r7, r5
 800756e:	d4dc      	bmi.n	800752a <__swbuf_r+0x2a>
 8007570:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007572:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007576:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800757a:	81a2      	strh	r2, [r4, #12]
 800757c:	6822      	ldr	r2, [r4, #0]
 800757e:	6661      	str	r1, [r4, #100]	; 0x64
 8007580:	6961      	ldr	r1, [r4, #20]
 8007582:	1ad3      	subs	r3, r2, r3
 8007584:	4299      	cmp	r1, r3
 8007586:	dcd5      	bgt.n	8007534 <__swbuf_r+0x34>
 8007588:	4621      	mov	r1, r4
 800758a:	4630      	mov	r0, r6
 800758c:	f7fe fbbe 	bl	8005d0c <_fflush_r>
 8007590:	b958      	cbnz	r0, 80075aa <__swbuf_r+0xaa>
 8007592:	6822      	ldr	r2, [r4, #0]
 8007594:	2301      	movs	r3, #1
 8007596:	e7ce      	b.n	8007536 <__swbuf_r+0x36>
 8007598:	f7fe fc14 	bl	8005dc4 <__sinit>
 800759c:	e7b8      	b.n	8007510 <__swbuf_r+0x10>
 800759e:	4621      	mov	r1, r4
 80075a0:	4630      	mov	r0, r6
 80075a2:	f7fe fbb3 	bl	8005d0c <_fflush_r>
 80075a6:	2800      	cmp	r0, #0
 80075a8:	d0d3      	beq.n	8007552 <__swbuf_r+0x52>
 80075aa:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80075ae:	e7d0      	b.n	8007552 <__swbuf_r+0x52>

080075b0 <_wcrtomb_r>:
 80075b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80075b2:	4c11      	ldr	r4, [pc, #68]	; (80075f8 <_wcrtomb_r+0x48>)
 80075b4:	6824      	ldr	r4, [r4, #0]
 80075b6:	b085      	sub	sp, #20
 80075b8:	4606      	mov	r6, r0
 80075ba:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80075bc:	461f      	mov	r7, r3
 80075be:	b151      	cbz	r1, 80075d6 <_wcrtomb_r+0x26>
 80075c0:	4d0e      	ldr	r5, [pc, #56]	; (80075fc <_wcrtomb_r+0x4c>)
 80075c2:	2c00      	cmp	r4, #0
 80075c4:	bf08      	it	eq
 80075c6:	462c      	moveq	r4, r5
 80075c8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075cc:	47a0      	blx	r4
 80075ce:	1c43      	adds	r3, r0, #1
 80075d0:	d00c      	beq.n	80075ec <_wcrtomb_r+0x3c>
 80075d2:	b005      	add	sp, #20
 80075d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075d6:	4a09      	ldr	r2, [pc, #36]	; (80075fc <_wcrtomb_r+0x4c>)
 80075d8:	2c00      	cmp	r4, #0
 80075da:	bf08      	it	eq
 80075dc:	4614      	moveq	r4, r2
 80075de:	460a      	mov	r2, r1
 80075e0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80075e4:	a901      	add	r1, sp, #4
 80075e6:	47a0      	blx	r4
 80075e8:	1c43      	adds	r3, r0, #1
 80075ea:	d1f2      	bne.n	80075d2 <_wcrtomb_r+0x22>
 80075ec:	2200      	movs	r2, #0
 80075ee:	238a      	movs	r3, #138	; 0x8a
 80075f0:	603a      	str	r2, [r7, #0]
 80075f2:	6033      	str	r3, [r6, #0]
 80075f4:	b005      	add	sp, #20
 80075f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075f8:	20000018 	.word	0x20000018
 80075fc:	20000448 	.word	0x20000448

08007600 <_init>:
 8007600:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007602:	bf00      	nop
 8007604:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007606:	bc08      	pop	{r3}
 8007608:	469e      	mov	lr, r3
 800760a:	4770      	bx	lr

0800760c <_fini>:
 800760c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800760e:	bf00      	nop
 8007610:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007612:	bc08      	pop	{r3}
 8007614:	469e      	mov	lr, r3
 8007616:	4770      	bx	lr
