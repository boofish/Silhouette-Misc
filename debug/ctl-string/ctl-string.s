
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
 80001e0:	08007388 	.word	0x08007388

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
 80001fc:	08007388 	.word	0x08007388

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
 8001152:	f000 f819 	bl	8001188 <HAL_NVIC_SetPriorityGrouping>
 8001156:	200f      	movs	r0, #15
 8001158:	f000 fb84 	bl	8001864 <HAL_InitTick>
 800115c:	2800      	cmp	r0, #0
 800115e:	bf1c      	itt	ne
 8001160:	2001      	movne	r0, #1
 8001162:	bd80      	popne	{r7, pc}
 8001164:	f000 f94b 	bl	80013fe <HAL_MspInit>
 8001168:	2000      	movs	r0, #0
 800116a:	bd80      	pop	{r7, pc}

0800116c <HAL_IncTick>:
 800116c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001170:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001174:	6801      	ldr	r1, [r0, #0]
 8001176:	3101      	adds	r1, #1
 8001178:	6001      	str	r1, [r0, #0]
 800117a:	4770      	bx	lr

0800117c <HAL_GetTick>:
 800117c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001180:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001184:	6800      	ldr	r0, [r0, #0]
 8001186:	4770      	bx	lr

08001188 <HAL_NVIC_SetPriorityGrouping>:
 8001188:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800118c:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001190:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001194:	680a      	ldr	r2, [r1, #0]
 8001196:	401a      	ands	r2, r3
 8001198:	f360 220a 	bfi	r2, r0, #8, #3
 800119c:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011a0:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 80011a4:	6008      	str	r0, [r1, #0]
 80011a6:	4770      	bx	lr

080011a8 <HAL_NVIC_SetPriority>:
 80011a8:	b580      	push	{r7, lr}
 80011aa:	466f      	mov	r7, sp
 80011ac:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 80011b0:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 80011b4:	2800      	cmp	r0, #0
 80011b6:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 80011ba:	f000 030f 	and.w	r3, r0, #15
 80011be:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 80011c2:	f1a3 0304 	sub.w	r3, r3, #4
 80011c6:	4473      	add	r3, lr
 80011c8:	bfb8      	it	lt
 80011ca:	f103 0c0c 	addlt.w	ip, r3, #12
 80011ce:	f8de 0000 	ldr.w	r0, [lr]
 80011d2:	f3c0 2002 	ubfx	r0, r0, #8, #3
 80011d6:	f100 0e04 	add.w	lr, r0, #4
 80011da:	1ec3      	subs	r3, r0, #3
 80011dc:	f080 0007 	eor.w	r0, r0, #7
 80011e0:	f1be 0f07 	cmp.w	lr, #7
 80011e4:	f04f 0e01 	mov.w	lr, #1
 80011e8:	bf38      	it	cc
 80011ea:	2300      	movcc	r3, #0
 80011ec:	2804      	cmp	r0, #4
 80011ee:	bf28      	it	cs
 80011f0:	2004      	movcs	r0, #4
 80011f2:	fa0e f000 	lsl.w	r0, lr, r0
 80011f6:	3801      	subs	r0, #1
 80011f8:	4008      	ands	r0, r1
 80011fa:	fa0e f103 	lsl.w	r1, lr, r3
 80011fe:	310f      	adds	r1, #15
 8001200:	4098      	lsls	r0, r3
 8001202:	4011      	ands	r1, r2
 8001204:	4308      	orrs	r0, r1
 8001206:	0100      	lsls	r0, r0, #4
 8001208:	f88c 0000 	strb.w	r0, [ip]
 800120c:	bd80      	pop	{r7, pc}

0800120e <HAL_NVIC_EnableIRQ>:
 800120e:	f000 011f 	and.w	r1, r0, #31
 8001212:	2201      	movs	r2, #1
 8001214:	0940      	lsrs	r0, r0, #5
 8001216:	fa02 f101 	lsl.w	r1, r2, r1
 800121a:	f24e 1200 	movw	r2, #57600	; 0xe100
 800121e:	f2ce 0200 	movt	r2, #57344	; 0xe000
 8001222:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001226:	4770      	bx	lr

08001228 <HAL_SYSTICK_IRQHandler>:
 8001228:	f000 b800 	b.w	800122c <HAL_SYSTICK_Callback>

0800122c <HAL_SYSTICK_Callback>:
 800122c:	4770      	bx	lr

0800122e <HAL_GPIO_Init>:
 800122e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001230:	af03      	add	r7, sp, #12
 8001232:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001236:	b082      	sub	sp, #8
 8001238:	680e      	ldr	r6, [r1, #0]
 800123a:	2e00      	cmp	r6, #0
 800123c:	f000 80db 	beq.w	80013f6 <HAL_GPIO_Init+0x1c8>
 8001240:	f641 0200 	movw	r2, #6144	; 0x1800
 8001244:	2507      	movs	r5, #7
 8001246:	f04f 0801 	mov.w	r8, #1
 800124a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800124e:	4290      	cmp	r0, r2
 8001250:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001254:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001258:	bf08      	it	eq
 800125a:	2506      	moveq	r5, #6
 800125c:	2b06      	cmp	r3, #6
 800125e:	bf38      	it	cc
 8001260:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001264:	2200      	movs	r2, #0
 8001266:	9500      	str	r5, [sp, #0]
 8001268:	2500      	movs	r5, #0
 800126a:	f1a8 0a01 	sub.w	sl, r8, #1
 800126e:	2301      	movs	r3, #1
 8001270:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001274:	ea16 090b 	ands.w	r9, r6, fp
 8001278:	f000 80b4 	beq.w	80013e4 <HAL_GPIO_Init+0x1b6>
 800127c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001280:	f04e 0610 	orr.w	r6, lr, #16
 8001284:	2e12      	cmp	r6, #18
 8001286:	d115      	bne.n	80012b4 <HAL_GPIO_Init+0x86>
 8001288:	f005 061c 	and.w	r6, r5, #28
 800128c:	230f      	movs	r3, #15
 800128e:	fa03 fc06 	lsl.w	ip, r3, r6
 8001292:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001296:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800129a:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800129e:	4404      	add	r4, r0
 80012a0:	6a23      	ldr	r3, [r4, #32]
 80012a2:	ea23 0c0c 	bic.w	ip, r3, ip
 80012a6:	690b      	ldr	r3, [r1, #16]
 80012a8:	40b3      	lsls	r3, r6
 80012aa:	ea43 030c 	orr.w	r3, r3, ip
 80012ae:	6223      	str	r3, [r4, #32]
 80012b0:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012b4:	6806      	ldr	r6, [r0, #0]
 80012b6:	2403      	movs	r4, #3
 80012b8:	f00e 0c03 	and.w	ip, lr, #3
 80012bc:	f1be 0f12 	cmp.w	lr, #18
 80012c0:	fa04 f402 	lsl.w	r4, r4, r2
 80012c4:	fa0c f302 	lsl.w	r3, ip, r2
 80012c8:	ea26 0604 	bic.w	r6, r6, r4
 80012cc:	ea43 0306 	orr.w	r3, r3, r6
 80012d0:	ea6f 0604 	mvn.w	r6, r4
 80012d4:	6003      	str	r3, [r0, #0]
 80012d6:	d816      	bhi.n	8001306 <HAL_GPIO_Init+0xd8>
 80012d8:	2301      	movs	r3, #1
 80012da:	fa03 f30e 	lsl.w	r3, r3, lr
 80012de:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012e2:	bf1f      	itttt	ne
 80012e4:	6883      	ldrne	r3, [r0, #8]
 80012e6:	4033      	andne	r3, r6
 80012e8:	68cc      	ldrne	r4, [r1, #12]
 80012ea:	4094      	lslne	r4, r2
 80012ec:	bf1f      	itttt	ne
 80012ee:	4323      	orrne	r3, r4
 80012f0:	6083      	strne	r3, [r0, #8]
 80012f2:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012f6:	fa03 f30a 	lslne.w	r3, r3, sl
 80012fa:	bf1f      	itttt	ne
 80012fc:	6844      	ldrne	r4, [r0, #4]
 80012fe:	ea24 040b 	bicne.w	r4, r4, fp
 8001302:	4323      	orrne	r3, r4
 8001304:	6043      	strne	r3, [r0, #4]
 8001306:	f1bc 0f03 	cmp.w	ip, #3
 800130a:	d108      	bne.n	800131e <HAL_GPIO_Init+0xf0>
 800130c:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 8001310:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 8001312:	fa03 f30a 	lsl.w	r3, r3, sl
 8001316:	ea24 040b 	bic.w	r4, r4, fp
 800131a:	4323      	orrs	r3, r4
 800131c:	62c3      	str	r3, [r0, #44]	; 0x2c
 800131e:	68c3      	ldr	r3, [r0, #12]
 8001320:	4033      	ands	r3, r6
 8001322:	688e      	ldr	r6, [r1, #8]
 8001324:	4096      	lsls	r6, r2
 8001326:	4333      	orrs	r3, r6
 8001328:	60c3      	str	r3, [r0, #12]
 800132a:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800132e:	d559      	bpl.n	80013e4 <HAL_GPIO_Init+0x1b6>
 8001330:	f241 0360 	movw	r3, #4192	; 0x1060
 8001334:	f005 040c 	and.w	r4, r5, #12
 8001338:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800133c:	461e      	mov	r6, r3
 800133e:	6833      	ldr	r3, [r6, #0]
 8001340:	f043 0301 	orr.w	r3, r3, #1
 8001344:	6033      	str	r3, [r6, #0]
 8001346:	6833      	ldr	r3, [r6, #0]
 8001348:	f240 4600 	movw	r6, #1024	; 0x400
 800134c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001350:	46b6      	mov	lr, r6
 8001352:	f003 0301 	and.w	r3, r3, #1
 8001356:	9301      	str	r3, [sp, #4]
 8001358:	f02a 0303 	bic.w	r3, sl, #3
 800135c:	9e01      	ldr	r6, [sp, #4]
 800135e:	4473      	add	r3, lr
 8001360:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001364:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001368:	46b2      	mov	sl, r6
 800136a:	260f      	movs	r6, #15
 800136c:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001370:	40a6      	lsls	r6, r4
 8001372:	ea2c 0c06 	bic.w	ip, ip, r6
 8001376:	9e00      	ldr	r6, [sp, #0]
 8001378:	fa06 f404 	lsl.w	r4, r6, r4
 800137c:	ea4c 0604 	orr.w	r6, ip, r4
 8001380:	f843 600a 	str.w	r6, [r3, sl]
 8001384:	f8de 3000 	ldr.w	r3, [lr]
 8001388:	684e      	ldr	r6, [r1, #4]
 800138a:	ea23 0309 	bic.w	r3, r3, r9
 800138e:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001392:	bf18      	it	ne
 8001394:	ea43 0309 	orrne.w	r3, r3, r9
 8001398:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 800139c:	f8ce 3000 	str.w	r3, [lr]
 80013a0:	f8de 3004 	ldr.w	r3, [lr, #4]
 80013a4:	ea23 0309 	bic.w	r3, r3, r9
 80013a8:	bf18      	it	ne
 80013aa:	ea43 0309 	orrne.w	r3, r3, r9
 80013ae:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 80013b2:	f8ce 3004 	str.w	r3, [lr, #4]
 80013b6:	f8de 3008 	ldr.w	r3, [lr, #8]
 80013ba:	ea23 0309 	bic.w	r3, r3, r9
 80013be:	bf18      	it	ne
 80013c0:	ea43 0309 	orrne.w	r3, r3, r9
 80013c4:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013c8:	f8ce 3008 	str.w	r3, [lr, #8]
 80013cc:	f240 430c 	movw	r3, #1036	; 0x40c
 80013d0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013d4:	461c      	mov	r4, r3
 80013d6:	6823      	ldr	r3, [r4, #0]
 80013d8:	ea23 0309 	bic.w	r3, r3, r9
 80013dc:	bf18      	it	ne
 80013de:	ea43 0309 	orrne.w	r3, r3, r9
 80013e2:	6023      	str	r3, [r4, #0]
 80013e4:	680e      	ldr	r6, [r1, #0]
 80013e6:	3202      	adds	r2, #2
 80013e8:	3504      	adds	r5, #4
 80013ea:	fa36 f308 	lsrs.w	r3, r6, r8
 80013ee:	f108 0801 	add.w	r8, r8, #1
 80013f2:	f47f af3a 	bne.w	800126a <HAL_GPIO_Init+0x3c>
 80013f6:	b002      	add	sp, #8
 80013f8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013fc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013fe <HAL_MspInit>:
 80013fe:	4770      	bx	lr

08001400 <HAL_RCC_GetSysClockFreq>:
 8001400:	b580      	push	{r7, lr}
 8001402:	466f      	mov	r7, sp
 8001404:	f241 010c 	movw	r1, #4108	; 0x100c
 8001408:	f241 2e00 	movw	lr, #4608	; 0x1200
 800140c:	f242 4c00 	movw	ip, #9216	; 0x2400
 8001410:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001414:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001418:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 800141c:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001420:	6808      	ldr	r0, [r1, #0]
 8001422:	f012 030c 	ands.w	r3, r2, #12
 8001426:	d005      	beq.n	8001434 <HAL_RCC_GetSysClockFreq+0x34>
 8001428:	2b0c      	cmp	r3, #12
 800142a:	bf04      	itt	eq
 800142c:	f000 0003 	andeq.w	r0, r0, #3
 8001430:	2801      	cmpeq	r0, #1
 8001432:	d118      	bne.n	8001466 <HAL_RCC_GetSysClockFreq+0x66>
 8001434:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001438:	f010 0f08 	tst.w	r0, #8
 800143c:	d103      	bne.n	8001446 <HAL_RCC_GetSysClockFreq+0x46>
 800143e:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001442:	0a00      	lsrs	r0, r0, #8
 8001444:	e002      	b.n	800144c <HAL_RCC_GetSysClockFreq+0x4c>
 8001446:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800144a:	0900      	lsrs	r0, r0, #4
 800144c:	f247 32f8 	movw	r2, #29688	; 0x73f8
 8001450:	f000 000f 	and.w	r0, r0, #15
 8001454:	2b00      	cmp	r3, #0
 8001456:	f6c0 0200 	movt	r2, #2048	; 0x800
 800145a:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 800145e:	4610      	mov	r0, r2
 8001460:	bf18      	it	ne
 8001462:	2000      	movne	r0, #0
 8001464:	e00b      	b.n	800147e <HAL_RCC_GetSysClockFreq+0x7e>
 8001466:	f003 000f 	and.w	r0, r3, #15
 800146a:	2804      	cmp	r0, #4
 800146c:	bf04      	itt	eq
 800146e:	4660      	moveq	r0, ip
 8001470:	bd80      	popeq	{r7, pc}
 8001472:	2808      	cmp	r0, #8
 8001474:	bf04      	itt	eq
 8001476:	4670      	moveq	r0, lr
 8001478:	bd80      	popeq	{r7, pc}
 800147a:	2000      	movs	r0, #0
 800147c:	2200      	movs	r2, #0
 800147e:	2b0c      	cmp	r3, #12
 8001480:	bf18      	it	ne
 8001482:	bd80      	popne	{r7, pc}
 8001484:	6808      	ldr	r0, [r1, #0]
 8001486:	f000 0303 	and.w	r3, r0, #3
 800148a:	6808      	ldr	r0, [r1, #0]
 800148c:	2b03      	cmp	r3, #3
 800148e:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001492:	f100 0001 	add.w	r0, r0, #1
 8001496:	d003      	beq.n	80014a0 <HAL_RCC_GetSysClockFreq+0xa0>
 8001498:	2b02      	cmp	r3, #2
 800149a:	46e6      	mov	lr, ip
 800149c:	bf18      	it	ne
 800149e:	4696      	movne	lr, r2
 80014a0:	680a      	ldr	r2, [r1, #0]
 80014a2:	fbbe f0f0 	udiv	r0, lr, r0
 80014a6:	f3c2 2206 	ubfx	r2, r2, #8, #7
 80014aa:	6809      	ldr	r1, [r1, #0]
 80014ac:	4350      	muls	r0, r2
 80014ae:	2202      	movs	r2, #2
 80014b0:	f3c1 6141 	ubfx	r1, r1, #25, #2
 80014b4:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 80014b8:	fbb0 f0f1 	udiv	r0, r0, r1
 80014bc:	bd80      	pop	{r7, pc}

080014be <HAL_RCC_GetPCLK1Freq>:
 80014be:	f240 0014 	movw	r0, #20
 80014c2:	f241 0108 	movw	r1, #4104	; 0x1008
 80014c6:	f247 32f0 	movw	r2, #29680	; 0x73f0
 80014ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014ce:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014d2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014d6:	6800      	ldr	r0, [r0, #0]
 80014d8:	6809      	ldr	r1, [r1, #0]
 80014da:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014de:	5c51      	ldrb	r1, [r2, r1]
 80014e0:	f001 011f 	and.w	r1, r1, #31
 80014e4:	40c8      	lsrs	r0, r1
 80014e6:	4770      	bx	lr

080014e8 <HAL_RCC_GetPCLK2Freq>:
 80014e8:	f240 0014 	movw	r0, #20
 80014ec:	f241 0108 	movw	r1, #4104	; 0x1008
 80014f0:	f247 32f0 	movw	r2, #29680	; 0x73f0
 80014f4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014f8:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014fc:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001500:	6800      	ldr	r0, [r0, #0]
 8001502:	6809      	ldr	r1, [r1, #0]
 8001504:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001508:	5c51      	ldrb	r1, [r2, r1]
 800150a:	f001 011f 	and.w	r1, r1, #31
 800150e:	40c8      	lsrs	r0, r1
 8001510:	4770      	bx	lr

08001512 <HAL_RCC_GetClockConfig>:
 8001512:	220f      	movs	r2, #15
 8001514:	6002      	str	r2, [r0, #0]
 8001516:	f241 0208 	movw	r2, #4104	; 0x1008
 800151a:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800151e:	6813      	ldr	r3, [r2, #0]
 8001520:	f003 0303 	and.w	r3, r3, #3
 8001524:	6043      	str	r3, [r0, #4]
 8001526:	6813      	ldr	r3, [r2, #0]
 8001528:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800152c:	6083      	str	r3, [r0, #8]
 800152e:	6813      	ldr	r3, [r2, #0]
 8001530:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001534:	60c3      	str	r3, [r0, #12]
 8001536:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800153a:	6812      	ldr	r2, [r2, #0]
 800153c:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001540:	6102      	str	r2, [r0, #16]
 8001542:	f242 0000 	movw	r0, #8192	; 0x2000
 8001546:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800154a:	6800      	ldr	r0, [r0, #0]
 800154c:	f000 0007 	and.w	r0, r0, #7
 8001550:	6008      	str	r0, [r1, #0]
 8001552:	4770      	bx	lr

08001554 <HAL_TIM_Base_Init>:
 8001554:	b5d0      	push	{r4, r6, r7, lr}
 8001556:	af02      	add	r7, sp, #8
 8001558:	4604      	mov	r4, r0
 800155a:	2c00      	cmp	r4, #0
 800155c:	bf04      	itt	eq
 800155e:	2001      	moveq	r0, #1
 8001560:	bdd0      	popeq	{r4, r6, r7, pc}
 8001562:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001564:	b920      	cbnz	r0, 8001570 <HAL_TIM_Base_Init+0x1c>
 8001566:	2000      	movs	r0, #0
 8001568:	63e0      	str	r0, [r4, #60]	; 0x3c
 800156a:	4620      	mov	r0, r4
 800156c:	f000 f892 	bl	8001694 <HAL_TIM_Base_MspInit>
 8001570:	2002      	movs	r0, #2
 8001572:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001576:	6420      	str	r0, [r4, #64]	; 0x40
 8001578:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800157c:	6820      	ldr	r0, [r4, #0]
 800157e:	6801      	ldr	r1, [r0, #0]
 8001580:	4290      	cmp	r0, r2
 8001582:	dc0f      	bgt.n	80015a4 <HAL_TIM_Base_Init+0x50>
 8001584:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001588:	bf1e      	ittt	ne
 800158a:	f240 4200 	movwne	r2, #1024	; 0x400
 800158e:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001592:	4290      	cmpne	r0, r2
 8001594:	d018      	beq.n	80015c8 <HAL_TIM_Base_Init+0x74>
 8001596:	f640 0200 	movw	r2, #2048	; 0x800
 800159a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800159e:	4290      	cmp	r0, r2
 80015a0:	d012      	beq.n	80015c8 <HAL_TIM_Base_Init+0x74>
 80015a2:	e015      	b.n	80015d0 <HAL_TIM_Base_Init+0x7c>
 80015a4:	f640 4200 	movw	r2, #3072	; 0xc00
 80015a8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ac:	4290      	cmp	r0, r2
 80015ae:	bf1e      	ittt	ne
 80015b0:	f243 4200 	movwne	r2, #13312	; 0x3400
 80015b4:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015b8:	4290      	cmpne	r0, r2
 80015ba:	d005      	beq.n	80015c8 <HAL_TIM_Base_Init+0x74>
 80015bc:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015c0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c4:	4290      	cmp	r0, r2
 80015c6:	d103      	bne.n	80015d0 <HAL_TIM_Base_Init+0x7c>
 80015c8:	68a2      	ldr	r2, [r4, #8]
 80015ca:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015ce:	4311      	orrs	r1, r2
 80015d0:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015d4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d8:	4290      	cmp	r0, r2
 80015da:	dd14      	ble.n	8001606 <HAL_TIM_Base_Init+0xb2>
 80015dc:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015e0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015e4:	4290      	cmp	r0, r2
 80015e6:	dd1a      	ble.n	800161e <HAL_TIM_Base_Init+0xca>
 80015e8:	f244 0200 	movw	r2, #16384	; 0x4000
 80015ec:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015f0:	4290      	cmp	r0, r2
 80015f2:	bf1e      	ittt	ne
 80015f4:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015f8:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015fc:	4290      	cmpne	r0, r2
 80015fe:	d027      	beq.n	8001650 <HAL_TIM_Base_Init+0xfc>
 8001600:	f244 4200 	movw	r2, #17408	; 0x4400
 8001604:	e013      	b.n	800162e <HAL_TIM_Base_Init+0xda>
 8001606:	f240 72ff 	movw	r2, #2047	; 0x7ff
 800160a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800160e:	4290      	cmp	r0, r2
 8001610:	dc12      	bgt.n	8001638 <HAL_TIM_Base_Init+0xe4>
 8001612:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001616:	d01b      	beq.n	8001650 <HAL_TIM_Base_Init+0xfc>
 8001618:	f240 4200 	movw	r2, #1024	; 0x400
 800161c:	e014      	b.n	8001648 <HAL_TIM_Base_Init+0xf4>
 800161e:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001622:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001626:	4290      	cmp	r0, r2
 8001628:	d012      	beq.n	8001650 <HAL_TIM_Base_Init+0xfc>
 800162a:	f243 4200 	movw	r2, #13312	; 0x3400
 800162e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001632:	4290      	cmp	r0, r2
 8001634:	d00c      	beq.n	8001650 <HAL_TIM_Base_Init+0xfc>
 8001636:	e00f      	b.n	8001658 <HAL_TIM_Base_Init+0x104>
 8001638:	f640 0200 	movw	r2, #2048	; 0x800
 800163c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001640:	4290      	cmp	r0, r2
 8001642:	d005      	beq.n	8001650 <HAL_TIM_Base_Init+0xfc>
 8001644:	f640 4200 	movw	r2, #3072	; 0xc00
 8001648:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800164c:	4290      	cmp	r0, r2
 800164e:	d103      	bne.n	8001658 <HAL_TIM_Base_Init+0x104>
 8001650:	6922      	ldr	r2, [r4, #16]
 8001652:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001656:	4311      	orrs	r1, r2
 8001658:	69a2      	ldr	r2, [r4, #24]
 800165a:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 800165e:	4311      	orrs	r1, r2
 8001660:	6001      	str	r1, [r0, #0]
 8001662:	68e1      	ldr	r1, [r4, #12]
 8001664:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001666:	6861      	ldr	r1, [r4, #4]
 8001668:	6281      	str	r1, [r0, #40]	; 0x28
 800166a:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800166e:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001672:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001676:	2907      	cmp	r1, #7
 8001678:	d807      	bhi.n	800168a <HAL_TIM_Base_Init+0x136>
 800167a:	2201      	movs	r2, #1
 800167c:	fa02 f101 	lsl.w	r1, r2, r1
 8001680:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001684:	bf1c      	itt	ne
 8001686:	6961      	ldrne	r1, [r4, #20]
 8001688:	6301      	strne	r1, [r0, #48]	; 0x30
 800168a:	2101      	movs	r1, #1
 800168c:	6141      	str	r1, [r0, #20]
 800168e:	2000      	movs	r0, #0
 8001690:	6421      	str	r1, [r4, #64]	; 0x40
 8001692:	bdd0      	pop	{r4, r6, r7, pc}

08001694 <HAL_TIM_Base_MspInit>:
 8001694:	4770      	bx	lr

08001696 <HAL_TIM_Base_Start_IT>:
 8001696:	6800      	ldr	r0, [r0, #0]
 8001698:	68c1      	ldr	r1, [r0, #12]
 800169a:	f041 0101 	orr.w	r1, r1, #1
 800169e:	60c1      	str	r1, [r0, #12]
 80016a0:	2107      	movs	r1, #7
 80016a2:	6882      	ldr	r2, [r0, #8]
 80016a4:	f2c0 0101 	movt	r1, #1
 80016a8:	400a      	ands	r2, r1
 80016aa:	2a06      	cmp	r2, #6
 80016ac:	d008      	beq.n	80016c0 <HAL_TIM_Base_Start_IT+0x2a>
 80016ae:	6882      	ldr	r2, [r0, #8]
 80016b0:	4011      	ands	r1, r2
 80016b2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80016b6:	bf1e      	ittt	ne
 80016b8:	6801      	ldrne	r1, [r0, #0]
 80016ba:	f041 0101 	orrne.w	r1, r1, #1
 80016be:	6001      	strne	r1, [r0, #0]
 80016c0:	2000      	movs	r0, #0
 80016c2:	4770      	bx	lr

080016c4 <HAL_TIM_IRQHandler>:
 80016c4:	b5d0      	push	{r4, r6, r7, lr}
 80016c6:	af02      	add	r7, sp, #8
 80016c8:	4604      	mov	r4, r0
 80016ca:	6820      	ldr	r0, [r4, #0]
 80016cc:	6901      	ldr	r1, [r0, #16]
 80016ce:	f011 0f02 	tst.w	r1, #2
 80016d2:	bf1c      	itt	ne
 80016d4:	68c1      	ldrne	r1, [r0, #12]
 80016d6:	f011 0f02 	tstne.w	r1, #2
 80016da:	d015      	beq.n	8001708 <HAL_TIM_IRQHandler+0x44>
 80016dc:	f06f 0102 	mvn.w	r1, #2
 80016e0:	6101      	str	r1, [r0, #16]
 80016e2:	2101      	movs	r1, #1
 80016e4:	61e1      	str	r1, [r4, #28]
 80016e6:	6980      	ldr	r0, [r0, #24]
 80016e8:	f010 0f03 	tst.w	r0, #3
 80016ec:	d003      	beq.n	80016f6 <HAL_TIM_IRQHandler+0x32>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f8b1 	bl	8001856 <HAL_TIM_IC_CaptureCallback>
 80016f4:	e005      	b.n	8001702 <HAL_TIM_IRQHandler+0x3e>
 80016f6:	4620      	mov	r0, r4
 80016f8:	f000 f8ae 	bl	8001858 <HAL_TIM_OC_DelayElapsedCallback>
 80016fc:	4620      	mov	r0, r4
 80016fe:	f000 f8ac 	bl	800185a <HAL_TIM_PWM_PulseFinishedCallback>
 8001702:	2000      	movs	r0, #0
 8001704:	61e0      	str	r0, [r4, #28]
 8001706:	6820      	ldr	r0, [r4, #0]
 8001708:	6901      	ldr	r1, [r0, #16]
 800170a:	f011 0f04 	tst.w	r1, #4
 800170e:	bf1c      	itt	ne
 8001710:	68c1      	ldrne	r1, [r0, #12]
 8001712:	f011 0f04 	tstne.w	r1, #4
 8001716:	d015      	beq.n	8001744 <HAL_TIM_IRQHandler+0x80>
 8001718:	f06f 0104 	mvn.w	r1, #4
 800171c:	6101      	str	r1, [r0, #16]
 800171e:	2102      	movs	r1, #2
 8001720:	61e1      	str	r1, [r4, #28]
 8001722:	6980      	ldr	r0, [r0, #24]
 8001724:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001728:	d003      	beq.n	8001732 <HAL_TIM_IRQHandler+0x6e>
 800172a:	4620      	mov	r0, r4
 800172c:	f000 f893 	bl	8001856 <HAL_TIM_IC_CaptureCallback>
 8001730:	e005      	b.n	800173e <HAL_TIM_IRQHandler+0x7a>
 8001732:	4620      	mov	r0, r4
 8001734:	f000 f890 	bl	8001858 <HAL_TIM_OC_DelayElapsedCallback>
 8001738:	4620      	mov	r0, r4
 800173a:	f000 f88e 	bl	800185a <HAL_TIM_PWM_PulseFinishedCallback>
 800173e:	2000      	movs	r0, #0
 8001740:	61e0      	str	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f08 	tst.w	r1, #8
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f08 	tstne.w	r1, #8
 8001752:	d015      	beq.n	8001780 <HAL_TIM_IRQHandler+0xbc>
 8001754:	f06f 0108 	mvn.w	r1, #8
 8001758:	6101      	str	r1, [r0, #16]
 800175a:	2104      	movs	r1, #4
 800175c:	61e1      	str	r1, [r4, #28]
 800175e:	69c0      	ldr	r0, [r0, #28]
 8001760:	f010 0f03 	tst.w	r0, #3
 8001764:	d003      	beq.n	800176e <HAL_TIM_IRQHandler+0xaa>
 8001766:	4620      	mov	r0, r4
 8001768:	f000 f875 	bl	8001856 <HAL_TIM_IC_CaptureCallback>
 800176c:	e005      	b.n	800177a <HAL_TIM_IRQHandler+0xb6>
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f872 	bl	8001858 <HAL_TIM_OC_DelayElapsedCallback>
 8001774:	4620      	mov	r0, r4
 8001776:	f000 f870 	bl	800185a <HAL_TIM_PWM_PulseFinishedCallback>
 800177a:	2000      	movs	r0, #0
 800177c:	61e0      	str	r0, [r4, #28]
 800177e:	6820      	ldr	r0, [r4, #0]
 8001780:	6901      	ldr	r1, [r0, #16]
 8001782:	f011 0f10 	tst.w	r1, #16
 8001786:	bf1c      	itt	ne
 8001788:	68c1      	ldrne	r1, [r0, #12]
 800178a:	f011 0f10 	tstne.w	r1, #16
 800178e:	d015      	beq.n	80017bc <HAL_TIM_IRQHandler+0xf8>
 8001790:	f06f 0110 	mvn.w	r1, #16
 8001794:	6101      	str	r1, [r0, #16]
 8001796:	2108      	movs	r1, #8
 8001798:	61e1      	str	r1, [r4, #28]
 800179a:	69c0      	ldr	r0, [r0, #28]
 800179c:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017a0:	d003      	beq.n	80017aa <HAL_TIM_IRQHandler+0xe6>
 80017a2:	4620      	mov	r0, r4
 80017a4:	f000 f857 	bl	8001856 <HAL_TIM_IC_CaptureCallback>
 80017a8:	e005      	b.n	80017b6 <HAL_TIM_IRQHandler+0xf2>
 80017aa:	4620      	mov	r0, r4
 80017ac:	f000 f854 	bl	8001858 <HAL_TIM_OC_DelayElapsedCallback>
 80017b0:	4620      	mov	r0, r4
 80017b2:	f000 f852 	bl	800185a <HAL_TIM_PWM_PulseFinishedCallback>
 80017b6:	2000      	movs	r0, #0
 80017b8:	61e0      	str	r0, [r4, #28]
 80017ba:	6820      	ldr	r0, [r4, #0]
 80017bc:	6901      	ldr	r1, [r0, #16]
 80017be:	f011 0f01 	tst.w	r1, #1
 80017c2:	bf1c      	itt	ne
 80017c4:	68c1      	ldrne	r1, [r0, #12]
 80017c6:	f011 0f01 	tstne.w	r1, #1
 80017ca:	d006      	beq.n	80017da <HAL_TIM_IRQHandler+0x116>
 80017cc:	f06f 0101 	mvn.w	r1, #1
 80017d0:	6101      	str	r1, [r0, #16]
 80017d2:	4620      	mov	r0, r4
 80017d4:	f000 f894 	bl	8001900 <HAL_TIM_PeriodElapsedCallback>
 80017d8:	6820      	ldr	r0, [r4, #0]
 80017da:	6901      	ldr	r1, [r0, #16]
 80017dc:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017e0:	bf1c      	itt	ne
 80017e2:	68c1      	ldrne	r1, [r0, #12]
 80017e4:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017e8:	d006      	beq.n	80017f8 <HAL_TIM_IRQHandler+0x134>
 80017ea:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017ee:	6101      	str	r1, [r0, #16]
 80017f0:	4620      	mov	r0, r4
 80017f2:	f000 f835 	bl	8001860 <HAL_TIMEx_BreakCallback>
 80017f6:	6820      	ldr	r0, [r4, #0]
 80017f8:	6901      	ldr	r1, [r0, #16]
 80017fa:	f411 7f80 	tst.w	r1, #256	; 0x100
 80017fe:	bf1c      	itt	ne
 8001800:	68c1      	ldrne	r1, [r0, #12]
 8001802:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001806:	d006      	beq.n	8001816 <HAL_TIM_IRQHandler+0x152>
 8001808:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800180c:	6101      	str	r1, [r0, #16]
 800180e:	4620      	mov	r0, r4
 8001810:	f000 f827 	bl	8001862 <HAL_TIMEx_Break2Callback>
 8001814:	6820      	ldr	r0, [r4, #0]
 8001816:	6901      	ldr	r1, [r0, #16]
 8001818:	f011 0f40 	tst.w	r1, #64	; 0x40
 800181c:	bf1c      	itt	ne
 800181e:	68c1      	ldrne	r1, [r0, #12]
 8001820:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001824:	d006      	beq.n	8001834 <HAL_TIM_IRQHandler+0x170>
 8001826:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800182a:	6101      	str	r1, [r0, #16]
 800182c:	4620      	mov	r0, r4
 800182e:	f000 f815 	bl	800185c <HAL_TIM_TriggerCallback>
 8001832:	6820      	ldr	r0, [r4, #0]
 8001834:	6901      	ldr	r1, [r0, #16]
 8001836:	f011 0f20 	tst.w	r1, #32
 800183a:	bf1c      	itt	ne
 800183c:	68c1      	ldrne	r1, [r0, #12]
 800183e:	f011 0f20 	tstne.w	r1, #32
 8001842:	d100      	bne.n	8001846 <HAL_TIM_IRQHandler+0x182>
 8001844:	bdd0      	pop	{r4, r6, r7, pc}
 8001846:	f06f 0120 	mvn.w	r1, #32
 800184a:	6101      	str	r1, [r0, #16]
 800184c:	4620      	mov	r0, r4
 800184e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001852:	f000 b804 	b.w	800185e <HAL_TIMEx_CommutationCallback>

08001856 <HAL_TIM_IC_CaptureCallback>:
 8001856:	4770      	bx	lr

08001858 <HAL_TIM_OC_DelayElapsedCallback>:
 8001858:	4770      	bx	lr

0800185a <HAL_TIM_PWM_PulseFinishedCallback>:
 800185a:	4770      	bx	lr

0800185c <HAL_TIM_TriggerCallback>:
 800185c:	4770      	bx	lr

0800185e <HAL_TIMEx_CommutationCallback>:
 800185e:	4770      	bx	lr

08001860 <HAL_TIMEx_BreakCallback>:
 8001860:	4770      	bx	lr

08001862 <HAL_TIMEx_Break2Callback>:
 8001862:	4770      	bx	lr

08001864 <HAL_InitTick>:
 8001864:	b5b0      	push	{r4, r5, r7, lr}
 8001866:	af02      	add	r7, sp, #8
 8001868:	b086      	sub	sp, #24
 800186a:	4601      	mov	r1, r0
 800186c:	2036      	movs	r0, #54	; 0x36
 800186e:	2200      	movs	r2, #0
 8001870:	2400      	movs	r4, #0
 8001872:	f7ff fc99 	bl	80011a8 <HAL_NVIC_SetPriority>
 8001876:	2036      	movs	r0, #54	; 0x36
 8001878:	f7ff fcc9 	bl	800120e <HAL_NVIC_EnableIRQ>
 800187c:	f241 0058 	movw	r0, #4184	; 0x1058
 8001880:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001884:	6801      	ldr	r1, [r0, #0]
 8001886:	f041 0110 	orr.w	r1, r1, #16
 800188a:	6001      	str	r1, [r0, #0]
 800188c:	4669      	mov	r1, sp
 800188e:	6800      	ldr	r0, [r0, #0]
 8001890:	f000 0010 	and.w	r0, r0, #16
 8001894:	9001      	str	r0, [sp, #4]
 8001896:	9801      	ldr	r0, [sp, #4]
 8001898:	a801      	add	r0, sp, #4
 800189a:	f7ff fe3a 	bl	8001512 <HAL_RCC_GetClockConfig>
 800189e:	9d04      	ldr	r5, [sp, #16]
 80018a0:	f7ff fe0d 	bl	80014be <HAL_RCC_GetPCLK1Freq>
 80018a4:	2d00      	cmp	r5, #0
 80018a6:	f640 21b8 	movw	r1, #2744	; 0xab8
 80018aa:	f241 0200 	movw	r2, #4096	; 0x1000
 80018ae:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018b2:	bf18      	it	ne
 80018b4:	2501      	movne	r5, #1
 80018b6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018ba:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018be:	40a8      	lsls	r0, r5
 80018c0:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018c4:	618c      	str	r4, [r1, #24]
 80018c6:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018ca:	fba0 0505 	umull	r0, r5, r0, r5
 80018ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018d2:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018d6:	e9c1 2000 	strd	r2, r0, [r1]
 80018da:	4608      	mov	r0, r1
 80018dc:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018e0:	610c      	str	r4, [r1, #16]
 80018e2:	f7ff fe37 	bl	8001554 <HAL_TIM_Base_Init>
 80018e6:	2800      	cmp	r0, #0
 80018e8:	bf1e      	ittt	ne
 80018ea:	2001      	movne	r0, #1
 80018ec:	b006      	addne	sp, #24
 80018ee:	bdb0      	popne	{r4, r5, r7, pc}
 80018f0:	f640 20b8 	movw	r0, #2744	; 0xab8
 80018f4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018f8:	f7ff fecd 	bl	8001696 <HAL_TIM_Base_Start_IT>
 80018fc:	b006      	add	sp, #24
 80018fe:	bdb0      	pop	{r4, r5, r7, pc}

08001900 <HAL_TIM_PeriodElapsedCallback>:
 8001900:	f7ff bc34 	b.w	800116c <HAL_IncTick>

08001904 <TIM6_DAC_IRQHandler>:
 8001904:	f640 20b8 	movw	r0, #2744	; 0xab8
 8001908:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190c:	f7ff beda 	b.w	80016c4 <HAL_TIM_IRQHandler>

08001910 <HAL_UART_Init>:
 8001910:	b5d0      	push	{r4, r6, r7, lr}
 8001912:	af02      	add	r7, sp, #8
 8001914:	4604      	mov	r4, r0
 8001916:	b194      	cbz	r4, 800193e <HAL_UART_Init+0x2e>
 8001918:	6f60      	ldr	r0, [r4, #116]	; 0x74
 800191a:	b920      	cbnz	r0, 8001926 <HAL_UART_Init+0x16>
 800191c:	2000      	movs	r0, #0
 800191e:	6720      	str	r0, [r4, #112]	; 0x70
 8001920:	4620      	mov	r0, r4
 8001922:	f000 f826 	bl	8001972 <HAL_UART_MspInit>
 8001926:	2024      	movs	r0, #36	; 0x24
 8001928:	6760      	str	r0, [r4, #116]	; 0x74
 800192a:	6820      	ldr	r0, [r4, #0]
 800192c:	6801      	ldr	r1, [r0, #0]
 800192e:	f021 0101 	bic.w	r1, r1, #1
 8001932:	6001      	str	r1, [r0, #0]
 8001934:	4620      	mov	r0, r4
 8001936:	f000 f81d 	bl	8001974 <UART_SetConfig>
 800193a:	2801      	cmp	r0, #1
 800193c:	d101      	bne.n	8001942 <HAL_UART_Init+0x32>
 800193e:	2001      	movs	r0, #1
 8001940:	bdd0      	pop	{r4, r6, r7, pc}
 8001942:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001944:	2800      	cmp	r0, #0
 8001946:	bf1c      	itt	ne
 8001948:	4620      	movne	r0, r4
 800194a:	f000 f944 	blne	8001bd6 <UART_AdvFeatureConfig>
 800194e:	6820      	ldr	r0, [r4, #0]
 8001950:	6841      	ldr	r1, [r0, #4]
 8001952:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001956:	6041      	str	r1, [r0, #4]
 8001958:	6881      	ldr	r1, [r0, #8]
 800195a:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800195e:	6081      	str	r1, [r0, #8]
 8001960:	6801      	ldr	r1, [r0, #0]
 8001962:	f041 0101 	orr.w	r1, r1, #1
 8001966:	6001      	str	r1, [r0, #0]
 8001968:	4620      	mov	r0, r4
 800196a:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800196e:	f000 b99d 	b.w	8001cac <UART_CheckIdleState>

08001972 <HAL_UART_MspInit>:
 8001972:	4770      	bx	lr

08001974 <UART_SetConfig>:
 8001974:	b5b0      	push	{r4, r5, r7, lr}
 8001976:	af02      	add	r7, sp, #8
 8001978:	4604      	mov	r4, r0
 800197a:	f646 15f3 	movw	r5, #27123	; 0x69f3
 800197e:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001982:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001986:	6821      	ldr	r1, [r4, #0]
 8001988:	68a0      	ldr	r0, [r4, #8]
 800198a:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 800198e:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001992:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001996:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 800199a:	4310      	orrs	r0, r2
 800199c:	69e2      	ldr	r2, [r4, #28]
 800199e:	4571      	cmp	r1, lr
 80019a0:	ea40 0003 	orr.w	r0, r0, r3
 80019a4:	680b      	ldr	r3, [r1, #0]
 80019a6:	ea40 0002 	orr.w	r0, r0, r2
 80019aa:	ea03 0305 	and.w	r3, r3, r5
 80019ae:	f04f 0510 	mov.w	r5, #16
 80019b2:	ea40 0003 	orr.w	r0, r0, r3
 80019b6:	6008      	str	r0, [r1, #0]
 80019b8:	6848      	ldr	r0, [r1, #4]
 80019ba:	68e3      	ldr	r3, [r4, #12]
 80019bc:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 80019c0:	ea40 0003 	orr.w	r0, r0, r3
 80019c4:	6048      	str	r0, [r1, #4]
 80019c6:	69a0      	ldr	r0, [r4, #24]
 80019c8:	bf1c      	itt	ne
 80019ca:	6a23      	ldrne	r3, [r4, #32]
 80019cc:	4318      	orrne	r0, r3
 80019ce:	688b      	ldr	r3, [r1, #8]
 80019d0:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 80019d4:	4318      	orrs	r0, r3
 80019d6:	f644 73ff 	movw	r3, #20479	; 0x4fff
 80019da:	6088      	str	r0, [r1, #8]
 80019dc:	f242 4000 	movw	r0, #9216	; 0x2400
 80019e0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019e4:	f2c0 00f4 	movt	r0, #244	; 0xf4
 80019e8:	4299      	cmp	r1, r3
 80019ea:	dc15      	bgt.n	8001a18 <UART_SetConfig+0xa4>
 80019ec:	f244 4300 	movw	r3, #17408	; 0x4400
 80019f0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019f4:	4299      	cmp	r1, r3
 80019f6:	d024      	beq.n	8001a42 <UART_SetConfig+0xce>
 80019f8:	f644 0300 	movw	r3, #18432	; 0x4800
 80019fc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a00:	4299      	cmp	r1, r3
 8001a02:	d022      	beq.n	8001a4a <UART_SetConfig+0xd6>
 8001a04:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a08:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a0c:	4299      	cmp	r1, r3
 8001a0e:	d131      	bne.n	8001a74 <UART_SetConfig+0x100>
 8001a10:	f8dc 3000 	ldr.w	r3, [ip]
 8001a14:	099d      	lsrs	r5, r3, #6
 8001a16:	e023      	b.n	8001a60 <UART_SetConfig+0xec>
 8001a18:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a1c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a20:	4299      	cmp	r1, r3
 8001a22:	d016      	beq.n	8001a52 <UART_SetConfig+0xde>
 8001a24:	4571      	cmp	r1, lr
 8001a26:	d018      	beq.n	8001a5a <UART_SetConfig+0xe6>
 8001a28:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a2c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a30:	4299      	cmp	r1, r3
 8001a32:	d11f      	bne.n	8001a74 <UART_SetConfig+0x100>
 8001a34:	f8dc 5000 	ldr.w	r5, [ip]
 8001a38:	f247 4328 	movw	r3, #29736	; 0x7428
 8001a3c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a40:	e012      	b.n	8001a68 <UART_SetConfig+0xf4>
 8001a42:	f8dc 3000 	ldr.w	r3, [ip]
 8001a46:	089d      	lsrs	r5, r3, #2
 8001a48:	e00a      	b.n	8001a60 <UART_SetConfig+0xec>
 8001a4a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a4e:	091d      	lsrs	r5, r3, #4
 8001a50:	e006      	b.n	8001a60 <UART_SetConfig+0xec>
 8001a52:	f8dc 3000 	ldr.w	r3, [ip]
 8001a56:	0a1d      	lsrs	r5, r3, #8
 8001a58:	e002      	b.n	8001a60 <UART_SetConfig+0xec>
 8001a5a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a5e:	0a9d      	lsrs	r5, r3, #10
 8001a60:	f247 4338 	movw	r3, #29752	; 0x7438
 8001a64:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a68:	f005 0503 	and.w	r5, r5, #3
 8001a6c:	f085 0502 	eor.w	r5, r5, #2
 8001a70:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a74:	4571      	cmp	r1, lr
 8001a76:	d012      	beq.n	8001a9e <UART_SetConfig+0x12a>
 8001a78:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a7c:	d11d      	bne.n	8001aba <UART_SetConfig+0x146>
 8001a7e:	f005 001f 	and.w	r0, r5, #31
 8001a82:	2101      	movs	r1, #1
 8001a84:	2808      	cmp	r0, #8
 8001a86:	f200 809f 	bhi.w	8001bc8 <UART_SetConfig+0x254>
 8001a8a:	e8df f000 	tbb	[pc, r0]
 8001a8e:	4005      	.short	0x4005
 8001a90:	9d499d43 	.word	0x9d499d43
 8001a94:	004f9d9d 	.word	0x004f9d9d
 8001a98:	f7ff fd11 	bl	80014be <HAL_RCC_GetPCLK1Freq>
 8001a9c:	e042      	b.n	8001b24 <UART_SetConfig+0x1b0>
 8001a9e:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001aa2:	2101      	movs	r1, #1
 8001aa4:	2d04      	cmp	r5, #4
 8001aa6:	f200 808f 	bhi.w	8001bc8 <UART_SetConfig+0x254>
 8001aaa:	e8df f005 	tbb	[pc, r5]
 8001aae:	1c03      	.short	0x1c03
 8001ab0:	001a8d16 	.word	0x001a8d16
 8001ab4:	f7ff fd03 	bl	80014be <HAL_RCC_GetPCLK1Freq>
 8001ab8:	e011      	b.n	8001ade <UART_SetConfig+0x16a>
 8001aba:	f005 021f 	and.w	r2, r5, #31
 8001abe:	2101      	movs	r1, #1
 8001ac0:	2a08      	cmp	r2, #8
 8001ac2:	f200 8081 	bhi.w	8001bc8 <UART_SetConfig+0x254>
 8001ac6:	e8df f002 	tbb	[pc, r2]
 8001aca:	4305      	.short	0x4305
 8001acc:	7f487f46 	.word	0x7f487f46
 8001ad0:	004e7f7f 	.word	0x004e7f7f
 8001ad4:	f7ff fcf3 	bl	80014be <HAL_RCC_GetPCLK1Freq>
 8001ad8:	e041      	b.n	8001b5e <UART_SetConfig+0x1ea>
 8001ada:	f7ff fc91 	bl	8001400 <HAL_RCC_GetSysClockFreq>
 8001ade:	b910      	cbnz	r0, 8001ae6 <UART_SetConfig+0x172>
 8001ae0:	e071      	b.n	8001bc6 <UART_SetConfig+0x252>
 8001ae2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001ae6:	6862      	ldr	r2, [r4, #4]
 8001ae8:	2101      	movs	r1, #1
 8001aea:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001aee:	4298      	cmp	r0, r3
 8001af0:	d36a      	bcc.n	8001bc8 <UART_SetConfig+0x254>
 8001af2:	0313      	lsls	r3, r2, #12
 8001af4:	4298      	cmp	r0, r3
 8001af6:	bf9c      	itt	ls
 8001af8:	2101      	movls	r1, #1
 8001afa:	2d04      	cmpls	r5, #4
 8001afc:	d864      	bhi.n	8001bc8 <UART_SetConfig+0x254>
 8001afe:	e8df f005 	tbb	[pc, r5]
 8001b02:	3e03      	.short	0x3e03
 8001b04:	00526345 	.word	0x00526345
 8001b08:	f7ff fcd9 	bl	80014be <HAL_RCC_GetPCLK1Freq>
 8001b0c:	e040      	b.n	8001b90 <UART_SetConfig+0x21c>
 8001b0e:	f7ff fceb 	bl	80014e8 <HAL_RCC_GetPCLK2Freq>
 8001b12:	e007      	b.n	8001b24 <UART_SetConfig+0x1b0>
 8001b14:	6861      	ldr	r1, [r4, #4]
 8001b16:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b1a:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b1e:	e008      	b.n	8001b32 <UART_SetConfig+0x1be>
 8001b20:	f7ff fc6e 	bl	8001400 <HAL_RCC_GetSysClockFreq>
 8001b24:	6861      	ldr	r1, [r4, #4]
 8001b26:	0040      	lsls	r0, r0, #1
 8001b28:	084a      	lsrs	r2, r1, #1
 8001b2a:	e003      	b.n	8001b34 <UART_SetConfig+0x1c0>
 8001b2c:	6861      	ldr	r1, [r4, #4]
 8001b2e:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b32:	0848      	lsrs	r0, r1, #1
 8001b34:	4410      	add	r0, r2
 8001b36:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b3a:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b3e:	4001      	ands	r1, r0
 8001b40:	2910      	cmp	r1, #16
 8001b42:	d303      	bcc.n	8001b4c <UART_SetConfig+0x1d8>
 8001b44:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b48:	4308      	orrs	r0, r1
 8001b4a:	e03a      	b.n	8001bc2 <UART_SetConfig+0x24e>
 8001b4c:	2101      	movs	r1, #1
 8001b4e:	e03b      	b.n	8001bc8 <UART_SetConfig+0x254>
 8001b50:	f7ff fcca 	bl	80014e8 <HAL_RCC_GetPCLK2Freq>
 8001b54:	e003      	b.n	8001b5e <UART_SetConfig+0x1ea>
 8001b56:	6862      	ldr	r2, [r4, #4]
 8001b58:	e008      	b.n	8001b6c <UART_SetConfig+0x1f8>
 8001b5a:	f7ff fc51 	bl	8001400 <HAL_RCC_GetSysClockFreq>
 8001b5e:	6862      	ldr	r2, [r4, #4]
 8001b60:	4601      	mov	r1, r0
 8001b62:	0850      	lsrs	r0, r2, #1
 8001b64:	e003      	b.n	8001b6e <UART_SetConfig+0x1fa>
 8001b66:	6862      	ldr	r2, [r4, #4]
 8001b68:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b6c:	0851      	lsrs	r1, r2, #1
 8001b6e:	4408      	add	r0, r1
 8001b70:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b74:	b280      	uxth	r0, r0
 8001b76:	2810      	cmp	r0, #16
 8001b78:	d223      	bcs.n	8001bc2 <UART_SetConfig+0x24e>
 8001b7a:	2101      	movs	r1, #1
 8001b7c:	e024      	b.n	8001bc8 <UART_SetConfig+0x254>
 8001b7e:	2000      	movs	r0, #0
 8001b80:	2100      	movs	r1, #0
 8001b82:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b86:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b8a:	e006      	b.n	8001b9a <UART_SetConfig+0x226>
 8001b8c:	f7ff fc38 	bl	8001400 <HAL_RCC_GetSysClockFreq>
 8001b90:	6862      	ldr	r2, [r4, #4]
 8001b92:	0e01      	lsrs	r1, r0, #24
 8001b94:	0853      	lsrs	r3, r2, #1
 8001b96:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b9a:	f141 0100 	adc.w	r1, r1, #0
 8001b9e:	2300      	movs	r3, #0
 8001ba0:	f7fe ff1c 	bl	80009dc <__aeabi_uldivmod>
 8001ba4:	e005      	b.n	8001bb2 <UART_SetConfig+0x23e>
 8001ba6:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001baa:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bae:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bb2:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001bb6:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001bba:	f2c0 020f 	movt	r2, #15
 8001bbe:	4291      	cmp	r1, r2
 8001bc0:	d807      	bhi.n	8001bd2 <UART_SetConfig+0x25e>
 8001bc2:	6821      	ldr	r1, [r4, #0]
 8001bc4:	60c8      	str	r0, [r1, #12]
 8001bc6:	2100      	movs	r1, #0
 8001bc8:	2000      	movs	r0, #0
 8001bca:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001bce:	4608      	mov	r0, r1
 8001bd0:	bdb0      	pop	{r4, r5, r7, pc}
 8001bd2:	2101      	movs	r1, #1
 8001bd4:	e7f8      	b.n	8001bc8 <UART_SetConfig+0x254>

08001bd6 <UART_AdvFeatureConfig>:
 8001bd6:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001bd8:	f011 0f01 	tst.w	r1, #1
 8001bdc:	d008      	beq.n	8001bf0 <UART_AdvFeatureConfig+0x1a>
 8001bde:	6802      	ldr	r2, [r0, #0]
 8001be0:	6853      	ldr	r3, [r2, #4]
 8001be2:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001be6:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001bea:	ea43 030c 	orr.w	r3, r3, ip
 8001bee:	6053      	str	r3, [r2, #4]
 8001bf0:	078a      	lsls	r2, r1, #30
 8001bf2:	d508      	bpl.n	8001c06 <UART_AdvFeatureConfig+0x30>
 8001bf4:	6802      	ldr	r2, [r0, #0]
 8001bf6:	6853      	ldr	r3, [r2, #4]
 8001bf8:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001bfc:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c00:	ea43 030c 	orr.w	r3, r3, ip
 8001c04:	6053      	str	r3, [r2, #4]
 8001c06:	074a      	lsls	r2, r1, #29
 8001c08:	d508      	bpl.n	8001c1c <UART_AdvFeatureConfig+0x46>
 8001c0a:	6802      	ldr	r2, [r0, #0]
 8001c0c:	6853      	ldr	r3, [r2, #4]
 8001c0e:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c12:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c16:	ea43 030c 	orr.w	r3, r3, ip
 8001c1a:	6053      	str	r3, [r2, #4]
 8001c1c:	070a      	lsls	r2, r1, #28
 8001c1e:	d508      	bpl.n	8001c32 <UART_AdvFeatureConfig+0x5c>
 8001c20:	6802      	ldr	r2, [r0, #0]
 8001c22:	6853      	ldr	r3, [r2, #4]
 8001c24:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c28:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c2c:	ea43 030c 	orr.w	r3, r3, ip
 8001c30:	6053      	str	r3, [r2, #4]
 8001c32:	06ca      	lsls	r2, r1, #27
 8001c34:	d508      	bpl.n	8001c48 <UART_AdvFeatureConfig+0x72>
 8001c36:	6802      	ldr	r2, [r0, #0]
 8001c38:	6893      	ldr	r3, [r2, #8]
 8001c3a:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c3e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c42:	ea43 030c 	orr.w	r3, r3, ip
 8001c46:	6093      	str	r3, [r2, #8]
 8001c48:	068a      	lsls	r2, r1, #26
 8001c4a:	d508      	bpl.n	8001c5e <UART_AdvFeatureConfig+0x88>
 8001c4c:	6802      	ldr	r2, [r0, #0]
 8001c4e:	6893      	ldr	r3, [r2, #8]
 8001c50:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c54:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c58:	ea43 030c 	orr.w	r3, r3, ip
 8001c5c:	6093      	str	r3, [r2, #8]
 8001c5e:	b580      	push	{r7, lr}
 8001c60:	466f      	mov	r7, sp
 8001c62:	064a      	lsls	r2, r1, #25
 8001c64:	d515      	bpl.n	8001c92 <UART_AdvFeatureConfig+0xbc>
 8001c66:	f8d0 e000 	ldr.w	lr, [r0]
 8001c6a:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c6e:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c70:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c74:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c78:	ea42 0203 	orr.w	r2, r2, r3
 8001c7c:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c80:	d107      	bne.n	8001c92 <UART_AdvFeatureConfig+0xbc>
 8001c82:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c86:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c88:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c8c:	431a      	orrs	r2, r3
 8001c8e:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c92:	0609      	lsls	r1, r1, #24
 8001c94:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c98:	bf58      	it	pl
 8001c9a:	4770      	bxpl	lr
 8001c9c:	6801      	ldr	r1, [r0, #0]
 8001c9e:	684a      	ldr	r2, [r1, #4]
 8001ca0:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001ca2:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001ca6:	4310      	orrs	r0, r2
 8001ca8:	6048      	str	r0, [r1, #4]
 8001caa:	4770      	bx	lr

08001cac <UART_CheckIdleState>:
 8001cac:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cae:	af03      	add	r7, sp, #12
 8001cb0:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001cb4:	4604      	mov	r4, r0
 8001cb6:	2000      	movs	r0, #0
 8001cb8:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001cba:	f7ff fa5f 	bl	800117c <HAL_GetTick>
 8001cbe:	4605      	mov	r5, r0
 8001cc0:	6820      	ldr	r0, [r4, #0]
 8001cc2:	6801      	ldr	r1, [r0, #0]
 8001cc4:	f011 0f08 	tst.w	r1, #8
 8001cc8:	d00f      	beq.n	8001cea <UART_CheckIdleState+0x3e>
 8001cca:	69c1      	ldr	r1, [r0, #28]
 8001ccc:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001cd0:	d10b      	bne.n	8001cea <UART_CheckIdleState+0x3e>
 8001cd2:	2600      	movs	r6, #0
 8001cd4:	f7ff fa52 	bl	800117c <HAL_GetTick>
 8001cd8:	1b41      	subs	r1, r0, r5
 8001cda:	6820      	ldr	r0, [r4, #0]
 8001cdc:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ce0:	d11b      	bne.n	8001d1a <UART_CheckIdleState+0x6e>
 8001ce2:	69c1      	ldr	r1, [r0, #28]
 8001ce4:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001ce8:	d0f4      	beq.n	8001cd4 <UART_CheckIdleState+0x28>
 8001cea:	6801      	ldr	r1, [r0, #0]
 8001cec:	f011 0f04 	tst.w	r1, #4
 8001cf0:	d101      	bne.n	8001cf6 <UART_CheckIdleState+0x4a>
 8001cf2:	2600      	movs	r6, #0
 8001cf4:	e01a      	b.n	8001d2c <UART_CheckIdleState+0x80>
 8001cf6:	69c0      	ldr	r0, [r0, #28]
 8001cf8:	2600      	movs	r6, #0
 8001cfa:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cfe:	d115      	bne.n	8001d2c <UART_CheckIdleState+0x80>
 8001d00:	f7ff fa3c 	bl	800117c <HAL_GetTick>
 8001d04:	1b41      	subs	r1, r0, r5
 8001d06:	6820      	ldr	r0, [r4, #0]
 8001d08:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d0c:	d105      	bne.n	8001d1a <UART_CheckIdleState+0x6e>
 8001d0e:	69c0      	ldr	r0, [r0, #28]
 8001d10:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d14:	d0f4      	beq.n	8001d00 <UART_CheckIdleState+0x54>
 8001d16:	2600      	movs	r6, #0
 8001d18:	e008      	b.n	8001d2c <UART_CheckIdleState+0x80>
 8001d1a:	6801      	ldr	r1, [r0, #0]
 8001d1c:	2603      	movs	r6, #3
 8001d1e:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d22:	6001      	str	r1, [r0, #0]
 8001d24:	6881      	ldr	r1, [r0, #8]
 8001d26:	f021 0101 	bic.w	r1, r1, #1
 8001d2a:	6081      	str	r1, [r0, #8]
 8001d2c:	2020      	movs	r0, #32
 8001d2e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d30:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d32:	2000      	movs	r0, #0
 8001d34:	6720      	str	r0, [r4, #112]	; 0x70
 8001d36:	4630      	mov	r0, r6
 8001d38:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d3c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d3e <HAL_UART_Transmit>:
 8001d3e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d40:	af03      	add	r7, sp, #12
 8001d42:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d46:	b081      	sub	sp, #4
 8001d48:	4604      	mov	r4, r0
 8001d4a:	461d      	mov	r5, r3
 8001d4c:	4616      	mov	r6, r2
 8001d4e:	4689      	mov	r9, r1
 8001d50:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d52:	2820      	cmp	r0, #32
 8001d54:	d109      	bne.n	8001d6a <HAL_UART_Transmit+0x2c>
 8001d56:	f1b9 0f00 	cmp.w	r9, #0
 8001d5a:	f04f 0001 	mov.w	r0, #1
 8001d5e:	bf18      	it	ne
 8001d60:	2e00      	cmpne	r6, #0
 8001d62:	d003      	beq.n	8001d6c <HAL_UART_Transmit+0x2e>
 8001d64:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d66:	2801      	cmp	r0, #1
 8001d68:	d104      	bne.n	8001d74 <HAL_UART_Transmit+0x36>
 8001d6a:	2002      	movs	r0, #2
 8001d6c:	b001      	add	sp, #4
 8001d6e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d72:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d74:	2001      	movs	r0, #1
 8001d76:	6720      	str	r0, [r4, #112]	; 0x70
 8001d78:	2000      	movs	r0, #0
 8001d7a:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d7c:	2021      	movs	r0, #33	; 0x21
 8001d7e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d80:	f7ff f9fc 	bl	800117c <HAL_GetTick>
 8001d84:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d88:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d8c:	4680      	mov	r8, r0
 8001d8e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d92:	f8d4 b000 	ldr.w	fp, [r4]
 8001d96:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d9a:	2900      	cmp	r1, #0
 8001d9c:	d040      	beq.n	8001e20 <HAL_UART_Transmit+0xe2>
 8001d9e:	f105 0a01 	add.w	sl, r5, #1
 8001da2:	0600      	lsls	r0, r0, #24
 8001da4:	d410      	bmi.n	8001dc8 <HAL_UART_Transmit+0x8a>
 8001da6:	465e      	mov	r6, fp
 8001da8:	f1ba 0f00 	cmp.w	sl, #0
 8001dac:	d007      	beq.n	8001dbe <HAL_UART_Transmit+0x80>
 8001dae:	b33d      	cbz	r5, 8001e00 <HAL_UART_Transmit+0xc2>
 8001db0:	f7ff f9e4 	bl	800117c <HAL_GetTick>
 8001db4:	6826      	ldr	r6, [r4, #0]
 8001db6:	eba0 0008 	sub.w	r0, r0, r8
 8001dba:	42a8      	cmp	r0, r5
 8001dbc:	d821      	bhi.n	8001e02 <HAL_UART_Transmit+0xc4>
 8001dbe:	69f0      	ldr	r0, [r6, #28]
 8001dc0:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001dc4:	d0f0      	beq.n	8001da8 <HAL_UART_Transmit+0x6a>
 8001dc6:	e000      	b.n	8001dca <HAL_UART_Transmit+0x8c>
 8001dc8:	465e      	mov	r6, fp
 8001dca:	68a0      	ldr	r0, [r4, #8]
 8001dcc:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001dd0:	bf04      	itt	eq
 8001dd2:	6920      	ldreq	r0, [r4, #16]
 8001dd4:	2800      	cmpeq	r0, #0
 8001dd6:	d002      	beq.n	8001dde <HAL_UART_Transmit+0xa0>
 8001dd8:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001ddc:	e003      	b.n	8001de6 <HAL_UART_Transmit+0xa8>
 8001dde:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001de2:	f36f 205f 	bfc	r0, #9, #23
 8001de6:	8530      	strh	r0, [r6, #40]	; 0x28
 8001de8:	46b3      	mov	fp, r6
 8001dea:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001dee:	3801      	subs	r0, #1
 8001df0:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001df4:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001df8:	69f0      	ldr	r0, [r6, #28]
 8001dfa:	2900      	cmp	r1, #0
 8001dfc:	d1d1      	bne.n	8001da2 <HAL_UART_Transmit+0x64>
 8001dfe:	e010      	b.n	8001e22 <HAL_UART_Transmit+0xe4>
 8001e00:	465e      	mov	r6, fp
 8001e02:	6830      	ldr	r0, [r6, #0]
 8001e04:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e08:	6030      	str	r0, [r6, #0]
 8001e0a:	68b0      	ldr	r0, [r6, #8]
 8001e0c:	f020 0001 	bic.w	r0, r0, #1
 8001e10:	60b0      	str	r0, [r6, #8]
 8001e12:	2020      	movs	r0, #32
 8001e14:	6760      	str	r0, [r4, #116]	; 0x74
 8001e16:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e18:	2000      	movs	r0, #0
 8001e1a:	6720      	str	r0, [r4, #112]	; 0x70
 8001e1c:	2003      	movs	r0, #3
 8001e1e:	e7a5      	b.n	8001d6c <HAL_UART_Transmit+0x2e>
 8001e20:	465e      	mov	r6, fp
 8001e22:	0640      	lsls	r0, r0, #25
 8001e24:	d411      	bmi.n	8001e4a <HAL_UART_Transmit+0x10c>
 8001e26:	f105 0901 	add.w	r9, r5, #1
 8001e2a:	4630      	mov	r0, r6
 8001e2c:	f1b9 0f00 	cmp.w	r9, #0
 8001e30:	d007      	beq.n	8001e42 <HAL_UART_Transmit+0x104>
 8001e32:	b17d      	cbz	r5, 8001e54 <HAL_UART_Transmit+0x116>
 8001e34:	f7ff f9a2 	bl	800117c <HAL_GetTick>
 8001e38:	eba0 0108 	sub.w	r1, r0, r8
 8001e3c:	6820      	ldr	r0, [r4, #0]
 8001e3e:	42a9      	cmp	r1, r5
 8001e40:	d809      	bhi.n	8001e56 <HAL_UART_Transmit+0x118>
 8001e42:	69c1      	ldr	r1, [r0, #28]
 8001e44:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e48:	d0f0      	beq.n	8001e2c <HAL_UART_Transmit+0xee>
 8001e4a:	2020      	movs	r0, #32
 8001e4c:	6760      	str	r0, [r4, #116]	; 0x74
 8001e4e:	2000      	movs	r0, #0
 8001e50:	6720      	str	r0, [r4, #112]	; 0x70
 8001e52:	e78b      	b.n	8001d6c <HAL_UART_Transmit+0x2e>
 8001e54:	4630      	mov	r0, r6
 8001e56:	6801      	ldr	r1, [r0, #0]
 8001e58:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e5c:	6001      	str	r1, [r0, #0]
 8001e5e:	6881      	ldr	r1, [r0, #8]
 8001e60:	f021 0101 	bic.w	r1, r1, #1
 8001e64:	6081      	str	r1, [r0, #8]
 8001e66:	e7d4      	b.n	8001e12 <HAL_UART_Transmit+0xd4>

08001e68 <BSP_COM_Init>:
 8001e68:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e6a:	af03      	add	r7, sp, #12
 8001e6c:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e70:	b086      	sub	sp, #24
 8001e72:	4605      	mov	r5, r0
 8001e74:	4688      	mov	r8, r1
 8001e76:	b9f5      	cbnz	r5, 8001eb6 <BSP_COM_Init+0x4e>
 8001e78:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e7c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e80:	6801      	ldr	r1, [r0, #0]
 8001e82:	f041 0102 	orr.w	r1, r1, #2
 8001e86:	6001      	str	r1, [r0, #0]
 8001e88:	6801      	ldr	r1, [r0, #0]
 8001e8a:	f001 0102 	and.w	r1, r1, #2
 8001e8e:	9101      	str	r1, [sp, #4]
 8001e90:	9901      	ldr	r1, [sp, #4]
 8001e92:	6801      	ldr	r1, [r0, #0]
 8001e94:	f041 0102 	orr.w	r1, r1, #2
 8001e98:	6001      	str	r1, [r0, #0]
 8001e9a:	6801      	ldr	r1, [r0, #0]
 8001e9c:	f001 0102 	and.w	r1, r1, #2
 8001ea0:	9101      	str	r1, [sp, #4]
 8001ea2:	9901      	ldr	r1, [sp, #4]
 8001ea4:	6941      	ldr	r1, [r0, #20]
 8001ea6:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001eaa:	6141      	str	r1, [r0, #20]
 8001eac:	6940      	ldr	r0, [r0, #20]
 8001eae:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001eb2:	9001      	str	r0, [sp, #4]
 8001eb4:	9801      	ldr	r0, [sp, #4]
 8001eb6:	2040      	movs	r0, #64	; 0x40
 8001eb8:	2402      	movs	r4, #2
 8001eba:	ae01      	add	r6, sp, #4
 8001ebc:	f04f 0907 	mov.w	r9, #7
 8001ec0:	9001      	str	r0, [sp, #4]
 8001ec2:	2000      	movs	r0, #0
 8001ec4:	9402      	str	r4, [sp, #8]
 8001ec6:	9404      	str	r4, [sp, #16]
 8001ec8:	4631      	mov	r1, r6
 8001eca:	9003      	str	r0, [sp, #12]
 8001ecc:	f240 000c 	movw	r0, #12
 8001ed0:	f8cd 9014 	str.w	r9, [sp, #20]
 8001ed4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ed8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001edc:	f7ff f9a7 	bl	800122e <HAL_GPIO_Init>
 8001ee0:	2080      	movs	r0, #128	; 0x80
 8001ee2:	4631      	mov	r1, r6
 8001ee4:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001ee8:	f240 0010 	movw	r0, #16
 8001eec:	f8cd 9014 	str.w	r9, [sp, #20]
 8001ef0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ef4:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ef8:	f7ff f999 	bl	800122e <HAL_GPIO_Init>
 8001efc:	f240 0008 	movw	r0, #8
 8001f00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f04:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f08:	f8c8 0000 	str.w	r0, [r8]
 8001f0c:	4640      	mov	r0, r8
 8001f0e:	f7ff fcff 	bl	8001910 <HAL_UART_Init>
 8001f12:	b006      	add	sp, #24
 8001f14:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f18:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f1a <__io_putchar>:
 8001f1a:	b580      	push	{r7, lr}
 8001f1c:	466f      	mov	r7, sp
 8001f1e:	b082      	sub	sp, #8
 8001f20:	9001      	str	r0, [sp, #4]
 8001f22:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f26:	a901      	add	r1, sp, #4
 8001f28:	2201      	movs	r2, #1
 8001f2a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f2e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f32:	f7ff ff04 	bl	8001d3e <HAL_UART_Transmit>
 8001f36:	9801      	ldr	r0, [sp, #4]
 8001f38:	b002      	add	sp, #8
 8001f3a:	bd80      	pop	{r7, pc}

08001f3c <main>:
 8001f3c:	b5b0      	push	{r4, r5, r7, lr}
 8001f3e:	af02      	add	r7, sp, #8
 8001f40:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001f44:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f48:	220c      	movs	r2, #12
 8001f4a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f4e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f52:	6008      	str	r0, [r1, #0]
 8001f54:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f58:	6048      	str	r0, [r1, #4]
 8001f5a:	2000      	movs	r0, #0
 8001f5c:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f60:	6108      	str	r0, [r1, #16]
 8001f62:	6248      	str	r0, [r1, #36]	; 0x24
 8001f64:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f68:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f6c:	2000      	movs	r0, #0
 8001f6e:	f7ff ff7b 	bl	8001e68 <BSP_COM_Init>
 8001f72:	f000 f9f3 	bl	800235c <initialise_benchmark>
 8001f76:	f247 4048 	movw	r0, #29768	; 0x7448
 8001f7a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f7e:	f000 fe2b 	bl	8002bd8 <printf>
 8001f82:	f247 40f5 	movw	r0, #29941	; 0x74f5
 8001f86:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f8a:	f000 fe87 	bl	8002c9c <puts>
 8001f8e:	f7ff f8dd 	bl	800114c <HAL_Init>
 8001f92:	f7ff f8f3 	bl	800117c <HAL_GetTick>
 8001f96:	4604      	mov	r4, r0
 8001f98:	f000 f8d0 	bl	800213c <benchmark>
 8001f9c:	4605      	mov	r5, r0
 8001f9e:	f7ff f8ed 	bl	800117c <HAL_GetTick>
 8001fa2:	1b04      	subs	r4, r0, r4
 8001fa4:	4628      	mov	r0, r5
 8001fa6:	f000 fa07 	bl	80023b8 <verify_benchmark>
 8001faa:	1c41      	adds	r1, r0, #1
 8001fac:	d006      	beq.n	8001fbc <main+0x80>
 8001fae:	2801      	cmp	r0, #1
 8001fb0:	d109      	bne.n	8001fc6 <main+0x8a>
 8001fb2:	f247 4061 	movw	r0, #29793	; 0x7461
 8001fb6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fba:	e008      	b.n	8001fce <main+0x92>
 8001fbc:	f247 4085 	movw	r0, #29829	; 0x7485
 8001fc0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fc4:	e003      	b.n	8001fce <main+0x92>
 8001fc6:	f247 40ba 	movw	r0, #29882	; 0x74ba
 8001fca:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fce:	4621      	mov	r1, r4
 8001fd0:	f000 fe02 	bl	8002bd8 <printf>
 8001fd4:	2000      	movs	r0, #0
 8001fd6:	bdb0      	pop	{r4, r5, r7, pc}

08001fd8 <SysTick_Handler>:
 8001fd8:	b580      	push	{r7, lr}
 8001fda:	466f      	mov	r7, sp
 8001fdc:	f7ff f8c6 	bl	800116c <HAL_IncTick>
 8001fe0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001fe4:	f7ff b920 	b.w	8001228 <HAL_SYSTICK_IRQHandler>

08001fe8 <ctl_StringAppend>:
 8001fe8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fea:	af03      	add	r7, sp, #12
 8001fec:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ff0:	b081      	sub	sp, #4
 8001ff2:	4689      	mov	r9, r1
 8001ff4:	4604      	mov	r4, r0
 8001ff6:	4648      	mov	r0, r9
 8001ff8:	f7fe ff22 	bl	8000e40 <strlen>
 8001ffc:	e9d4 8502 	ldrd	r8, r5, [r4, #8]
 8002000:	4606      	mov	r6, r0
 8002002:	eb08 0b06 	add.w	fp, r8, r6
 8002006:	45ab      	cmp	fp, r5
 8002008:	d202      	bcs.n	8002010 <ctl_StringAppend+0x28>
 800200a:	f8d4 a004 	ldr.w	sl, [r4, #4]
 800200e:	e027      	b.n	8002060 <ctl_StringAppend+0x78>
 8002010:	6820      	ldr	r0, [r4, #0]
 8002012:	fbbb f1f0 	udiv	r1, fp, r0
 8002016:	3101      	adds	r1, #1
 8002018:	4348      	muls	r0, r1
 800201a:	9000      	str	r0, [sp, #0]
 800201c:	f000 fabc 	bl	8002598 <malloc>
 8002020:	4682      	mov	sl, r0
 8002022:	f1ba 0f00 	cmp.w	sl, #0
 8002026:	d023      	beq.n	8002070 <ctl_StringAppend+0x88>
 8002028:	6861      	ldr	r1, [r4, #4]
 800202a:	4650      	mov	r0, sl
 800202c:	462a      	mov	r2, r5
 800202e:	f000 fa6b 	bl	8002508 <__aeabi_memcpy>
 8002032:	4628      	mov	r0, r5
 8002034:	f7fe fa26 	bl	8000484 <__aeabi_ui2d>
 8002038:	ed9f 0b15 	vldr	d0, [pc, #84]	; 8002090 <ctl_StringAppend+0xa8>
 800203c:	4605      	mov	r5, r0
 800203e:	460e      	mov	r6, r1
 8002040:	ec53 2b10 	vmov	r2, r3, d0
 8002044:	f7fe fa98 	bl	8000578 <__aeabi_dmul>
 8002048:	4602      	mov	r2, r0
 800204a:	460b      	mov	r3, r1
 800204c:	4628      	mov	r0, r5
 800204e:	4631      	mov	r1, r6
 8002050:	f7fe f8dc 	bl	800020c <__adddf3>
 8002054:	f7fe fca2 	bl	800099c <__aeabi_d2uiz>
 8002058:	9900      	ldr	r1, [sp, #0]
 800205a:	60e1      	str	r1, [r4, #12]
 800205c:	e9c4 0a00 	strd	r0, sl, [r4]
 8002060:	eb0a 0008 	add.w	r0, sl, r8
 8002064:	4649      	mov	r1, r9
 8002066:	3801      	subs	r0, #1
 8002068:	f000 fe32 	bl	8002cd0 <strcpy>
 800206c:	2000      	movs	r0, #0
 800206e:	e008      	b.n	8002082 <ctl_StringAppend+0x9a>
 8002070:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002074:	2164      	movs	r1, #100	; 0x64
 8002076:	eba8 0b06 	sub.w	fp, r8, r6
 800207a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800207e:	6001      	str	r1, [r0, #0]
 8002080:	2001      	movs	r0, #1
 8002082:	f8c4 b008 	str.w	fp, [r4, #8]
 8002086:	b001      	add	sp, #4
 8002088:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800208c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800208e:	bf00      	nop
 8002090:	66666666 	.word	0x66666666
 8002094:	3fe66666 	.word	0x3fe66666

08002098 <ctl_StringCmpNoCase>:
 8002098:	b5f0      	push	{r4, r5, r6, r7, lr}
 800209a:	af03      	add	r7, sp, #12
 800209c:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 80020a0:	4680      	mov	r8, r0
 80020a2:	4689      	mov	r9, r1
 80020a4:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80020a8:	7805      	ldrb	r5, [r0, #0]
 80020aa:	b31d      	cbz	r5, 80020f4 <ctl_StringCmpNoCase+0x5c>
 80020ac:	2600      	movs	r6, #0
 80020ae:	f819 0006 	ldrb.w	r0, [r9, r6]
 80020b2:	b308      	cbz	r0, 80020f8 <ctl_StringCmpNoCase+0x60>
 80020b4:	f000 fa62 	bl	800257c <__locale_ctype_ptr>
 80020b8:	4428      	add	r0, r5
 80020ba:	f819 4006 	ldrb.w	r4, [r9, r6]
 80020be:	f890 a001 	ldrb.w	sl, [r0, #1]
 80020c2:	f000 fa5b 	bl	800257c <__locale_ctype_ptr>
 80020c6:	4420      	add	r0, r4
 80020c8:	7840      	ldrb	r0, [r0, #1]
 80020ca:	f000 0003 	and.w	r0, r0, #3
 80020ce:	2801      	cmp	r0, #1
 80020d0:	f00a 0003 	and.w	r0, sl, #3
 80020d4:	bf08      	it	eq
 80020d6:	3420      	addeq	r4, #32
 80020d8:	2801      	cmp	r0, #1
 80020da:	bf08      	it	eq
 80020dc:	3520      	addeq	r5, #32
 80020de:	42a5      	cmp	r5, r4
 80020e0:	d111      	bne.n	8002106 <ctl_StringCmpNoCase+0x6e>
 80020e2:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80020e6:	4430      	add	r0, r6
 80020e8:	3601      	adds	r6, #1
 80020ea:	7845      	ldrb	r5, [r0, #1]
 80020ec:	2d00      	cmp	r5, #0
 80020ee:	d1de      	bne.n	80020ae <ctl_StringCmpNoCase+0x16>
 80020f0:	2500      	movs	r5, #0
 80020f2:	e001      	b.n	80020f8 <ctl_StringCmpNoCase+0x60>
 80020f4:	2500      	movs	r5, #0
 80020f6:	2600      	movs	r6, #0
 80020f8:	f819 0006 	ldrb.w	r0, [r9, r6]
 80020fc:	b2e9      	uxtb	r1, r5
 80020fe:	1a08      	subs	r0, r1, r0
 8002100:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8002104:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002106:	f8d8 0004 	ldr.w	r0, [r8, #4]
 800210a:	5d84      	ldrb	r4, [r0, r6]
 800210c:	f000 fa36 	bl	800257c <__locale_ctype_ptr>
 8002110:	4420      	add	r0, r4
 8002112:	7840      	ldrb	r0, [r0, #1]
 8002114:	f000 0003 	and.w	r0, r0, #3
 8002118:	2801      	cmp	r0, #1
 800211a:	bf08      	it	eq
 800211c:	3420      	addeq	r4, #32
 800211e:	f819 5006 	ldrb.w	r5, [r9, r6]
 8002122:	f000 fa2b 	bl	800257c <__locale_ctype_ptr>
 8002126:	4428      	add	r0, r5
 8002128:	7840      	ldrb	r0, [r0, #1]
 800212a:	f000 0003 	and.w	r0, r0, #3
 800212e:	2801      	cmp	r0, #1
 8002130:	bf08      	it	eq
 8002132:	3520      	addeq	r5, #32
 8002134:	1b60      	subs	r0, r4, r5
 8002136:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 800213a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800213c <benchmark>:
 800213c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800213e:	af03      	add	r7, sp, #12
 8002140:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002144:	b081      	sub	sp, #4
 8002146:	2010      	movs	r0, #16
 8002148:	f000 fa26 	bl	8002598 <malloc>
 800214c:	4605      	mov	r5, r0
 800214e:	b16d      	cbz	r5, 800216c <benchmark+0x30>
 8002150:	2464      	movs	r4, #100	; 0x64
 8002152:	2064      	movs	r0, #100	; 0x64
 8002154:	602c      	str	r4, [r5, #0]
 8002156:	f000 fa1f 	bl	8002598 <malloc>
 800215a:	2800      	cmp	r0, #0
 800215c:	6068      	str	r0, [r5, #4]
 800215e:	d008      	beq.n	8002172 <benchmark+0x36>
 8002160:	2100      	movs	r1, #0
 8002162:	46ab      	mov	fp, r5
 8002164:	e9c5 1402 	strd	r1, r4, [r5, #8]
 8002168:	7001      	strb	r1, [r0, #0]
 800216a:	e00c      	b.n	8002186 <benchmark+0x4a>
 800216c:	f04f 0b00 	mov.w	fp, #0
 8002170:	e009      	b.n	8002186 <benchmark+0x4a>
 8002172:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002176:	f04f 0b00 	mov.w	fp, #0
 800217a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800217e:	6004      	str	r4, [r0, #0]
 8002180:	2001      	movs	r0, #1
 8002182:	e9c5 0b02 	strd	r0, fp, [r5, #8]
 8002186:	2010      	movs	r0, #16
 8002188:	f000 fa06 	bl	8002598 <malloc>
 800218c:	4605      	mov	r5, r0
 800218e:	b16d      	cbz	r5, 80021ac <benchmark+0x70>
 8002190:	2464      	movs	r4, #100	; 0x64
 8002192:	2064      	movs	r0, #100	; 0x64
 8002194:	602c      	str	r4, [r5, #0]
 8002196:	f000 f9ff 	bl	8002598 <malloc>
 800219a:	2800      	cmp	r0, #0
 800219c:	6068      	str	r0, [r5, #4]
 800219e:	d008      	beq.n	80021b2 <benchmark+0x76>
 80021a0:	2100      	movs	r1, #0
 80021a2:	46a8      	mov	r8, r5
 80021a4:	e9c5 1402 	strd	r1, r4, [r5, #8]
 80021a8:	7001      	strb	r1, [r0, #0]
 80021aa:	e00c      	b.n	80021c6 <benchmark+0x8a>
 80021ac:	f04f 0800 	mov.w	r8, #0
 80021b0:	e009      	b.n	80021c6 <benchmark+0x8a>
 80021b2:	f640 20fc 	movw	r0, #2812	; 0xafc
 80021b6:	f04f 0800 	mov.w	r8, #0
 80021ba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021be:	6004      	str	r4, [r0, #0]
 80021c0:	2001      	movs	r0, #1
 80021c2:	e9c5 0802 	strd	r0, r8, [r5, #8]
 80021c6:	f640 2064 	movw	r0, #2660	; 0xa64
 80021ca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ce:	f8d0 9000 	ldr.w	r9, [r0]
 80021d2:	4648      	mov	r0, r9
 80021d4:	f7fe fe34 	bl	8000e40 <strlen>
 80021d8:	f8db a00c 	ldr.w	sl, [fp, #12]
 80021dc:	4605      	mov	r5, r0
 80021de:	45aa      	cmp	sl, r5
 80021e0:	d216      	bcs.n	8002210 <benchmark+0xd4>
 80021e2:	f8db 0000 	ldr.w	r0, [fp]
 80021e6:	fbb5 f1f0 	udiv	r1, r5, r0
 80021ea:	3101      	adds	r1, #1
 80021ec:	fb01 f400 	mul.w	r4, r1, r0
 80021f0:	4620      	mov	r0, r4
 80021f2:	f000 f9d1 	bl	8002598 <malloc>
 80021f6:	4606      	mov	r6, r0
 80021f8:	b19e      	cbz	r6, 8002222 <benchmark+0xe6>
 80021fa:	f8db 1004 	ldr.w	r1, [fp, #4]
 80021fe:	4630      	mov	r0, r6
 8002200:	4652      	mov	r2, sl
 8002202:	f000 f981 	bl	8002508 <__aeabi_memcpy>
 8002206:	f8cb 400c 	str.w	r4, [fp, #12]
 800220a:	f8cb 6004 	str.w	r6, [fp, #4]
 800220e:	e001      	b.n	8002214 <benchmark+0xd8>
 8002210:	f8db 6004 	ldr.w	r6, [fp, #4]
 8002214:	4630      	mov	r0, r6
 8002216:	4649      	mov	r1, r9
 8002218:	f000 fd5a 	bl	8002cd0 <strcpy>
 800221c:	f8cb 5008 	str.w	r5, [fp, #8]
 8002220:	e005      	b.n	800222e <benchmark+0xf2>
 8002222:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002226:	2164      	movs	r1, #100	; 0x64
 8002228:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800222c:	6001      	str	r1, [r0, #0]
 800222e:	f640 2068 	movw	r0, #2664	; 0xa68
 8002232:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002236:	6801      	ldr	r1, [r0, #0]
 8002238:	4658      	mov	r0, fp
 800223a:	f7ff fed5 	bl	8001fe8 <ctl_StringAppend>
 800223e:	f640 206c 	movw	r0, #2668	; 0xa6c
 8002242:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002246:	f8d0 9000 	ldr.w	r9, [r0]
 800224a:	4648      	mov	r0, r9
 800224c:	f7fe fdf8 	bl	8000e40 <strlen>
 8002250:	f8d8 a00c 	ldr.w	sl, [r8, #12]
 8002254:	4606      	mov	r6, r0
 8002256:	45b2      	cmp	sl, r6
 8002258:	d216      	bcs.n	8002288 <benchmark+0x14c>
 800225a:	f8d8 0000 	ldr.w	r0, [r8]
 800225e:	fbb6 f1f0 	udiv	r1, r6, r0
 8002262:	3101      	adds	r1, #1
 8002264:	fb01 f400 	mul.w	r4, r1, r0
 8002268:	4620      	mov	r0, r4
 800226a:	f000 f995 	bl	8002598 <malloc>
 800226e:	4605      	mov	r5, r0
 8002270:	b19d      	cbz	r5, 800229a <benchmark+0x15e>
 8002272:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8002276:	4628      	mov	r0, r5
 8002278:	4652      	mov	r2, sl
 800227a:	f000 f945 	bl	8002508 <__aeabi_memcpy>
 800227e:	f8c8 400c 	str.w	r4, [r8, #12]
 8002282:	f8c8 5004 	str.w	r5, [r8, #4]
 8002286:	e001      	b.n	800228c <benchmark+0x150>
 8002288:	f8d8 5004 	ldr.w	r5, [r8, #4]
 800228c:	4628      	mov	r0, r5
 800228e:	4649      	mov	r1, r9
 8002290:	f000 fd1e 	bl	8002cd0 <strcpy>
 8002294:	f8c8 6008 	str.w	r6, [r8, #8]
 8002298:	e007      	b.n	80022aa <benchmark+0x16e>
 800229a:	f640 20fc 	movw	r0, #2812	; 0xafc
 800229e:	2164      	movs	r1, #100	; 0x64
 80022a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022a4:	6001      	str	r1, [r0, #0]
 80022a6:	f8d8 6008 	ldr.w	r6, [r8, #8]
 80022aa:	f8db 500c 	ldr.w	r5, [fp, #12]
 80022ae:	42b5      	cmp	r5, r6
 80022b0:	d216      	bcs.n	80022e0 <benchmark+0x1a4>
 80022b2:	f8db 0000 	ldr.w	r0, [fp]
 80022b6:	fbb6 f1f0 	udiv	r1, r6, r0
 80022ba:	3101      	adds	r1, #1
 80022bc:	fb01 f900 	mul.w	r9, r1, r0
 80022c0:	4648      	mov	r0, r9
 80022c2:	f000 f969 	bl	8002598 <malloc>
 80022c6:	4606      	mov	r6, r0
 80022c8:	b1b6      	cbz	r6, 80022f8 <benchmark+0x1bc>
 80022ca:	f8db 1004 	ldr.w	r1, [fp, #4]
 80022ce:	4630      	mov	r0, r6
 80022d0:	462a      	mov	r2, r5
 80022d2:	f000 f919 	bl	8002508 <__aeabi_memcpy>
 80022d6:	f8cb 900c 	str.w	r9, [fp, #12]
 80022da:	f8cb 6004 	str.w	r6, [fp, #4]
 80022de:	e001      	b.n	80022e4 <benchmark+0x1a8>
 80022e0:	f8db 6004 	ldr.w	r6, [fp, #4]
 80022e4:	f8d8 1004 	ldr.w	r1, [r8, #4]
 80022e8:	4630      	mov	r0, r6
 80022ea:	f000 fcf1 	bl	8002cd0 <strcpy>
 80022ee:	f8d8 0008 	ldr.w	r0, [r8, #8]
 80022f2:	f8cb 0008 	str.w	r0, [fp, #8]
 80022f6:	e005      	b.n	8002304 <benchmark+0x1c8>
 80022f8:	f640 20fc 	movw	r0, #2812	; 0xafc
 80022fc:	2164      	movs	r1, #100	; 0x64
 80022fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002302:	6001      	str	r1, [r0, #0]
 8002304:	f640 2570 	movw	r5, #2672	; 0xa70
 8002308:	4658      	mov	r0, fp
 800230a:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800230e:	6829      	ldr	r1, [r5, #0]
 8002310:	f7ff fec2 	bl	8002098 <ctl_StringCmpNoCase>
 8002314:	2600      	movs	r6, #0
 8002316:	b170      	cbz	r0, 8002336 <benchmark+0x1fa>
 8002318:	f640 2474 	movw	r4, #2676	; 0xa74
 800231c:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002320:	6821      	ldr	r1, [r4, #0]
 8002322:	4658      	mov	r0, fp
 8002324:	f7ff fe60 	bl	8001fe8 <ctl_StringAppend>
 8002328:	6829      	ldr	r1, [r5, #0]
 800232a:	4658      	mov	r0, fp
 800232c:	f7ff feb4 	bl	8002098 <ctl_StringCmpNoCase>
 8002330:	3601      	adds	r6, #1
 8002332:	2800      	cmp	r0, #0
 8002334:	d1f4      	bne.n	8002320 <benchmark+0x1e4>
 8002336:	f8db 0004 	ldr.w	r0, [fp, #4]
 800233a:	f000 f935 	bl	80025a8 <free>
 800233e:	4658      	mov	r0, fp
 8002340:	f000 f932 	bl	80025a8 <free>
 8002344:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8002348:	f000 f92e 	bl	80025a8 <free>
 800234c:	4640      	mov	r0, r8
 800234e:	f000 f92b 	bl	80025a8 <free>
 8002352:	4630      	mov	r0, r6
 8002354:	b001      	add	sp, #4
 8002356:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800235a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800235c <initialise_benchmark>:
 800235c:	f640 2064 	movw	r0, #2660	; 0xa64
 8002360:	f247 31a0 	movw	r1, #29600	; 0x73a0
 8002364:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002368:	f6c0 0100 	movt	r1, #2048	; 0x800
 800236c:	6001      	str	r1, [r0, #0]
 800236e:	f640 2068 	movw	r0, #2664	; 0xa68
 8002372:	f247 31b1 	movw	r1, #29617	; 0x73b1
 8002376:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800237a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800237e:	6001      	str	r1, [r0, #0]
 8002380:	f640 206c 	movw	r0, #2668	; 0xa6c
 8002384:	f247 31c0 	movw	r1, #29632	; 0x73c0
 8002388:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800238c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002390:	6001      	str	r1, [r0, #0]
 8002392:	f640 2070 	movw	r0, #2672	; 0xa70
 8002396:	f247 31c4 	movw	r1, #29636	; 0x73c4
 800239a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800239e:	f6c0 0100 	movt	r1, #2048	; 0x800
 80023a2:	6001      	str	r1, [r0, #0]
 80023a4:	f640 2074 	movw	r0, #2676	; 0xa74
 80023a8:	f247 31dc 	movw	r1, #29660	; 0x73dc
 80023ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023b0:	f6c0 0100 	movt	r1, #2048	; 0x800
 80023b4:	6001      	str	r1, [r0, #0]
 80023b6:	4770      	bx	lr

080023b8 <verify_benchmark>:
 80023b8:	2100      	movs	r1, #0
 80023ba:	2815      	cmp	r0, #21
 80023bc:	bf08      	it	eq
 80023be:	2101      	moveq	r1, #1
 80023c0:	4608      	mov	r0, r1
 80023c2:	4770      	bx	lr

080023c4 <_read>:
 80023c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023c6:	af03      	add	r7, sp, #12
 80023c8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023cc:	4614      	mov	r4, r2
 80023ce:	460d      	mov	r5, r1
 80023d0:	2c01      	cmp	r4, #1
 80023d2:	db06      	blt.n	80023e2 <_read+0x1e>
 80023d4:	4626      	mov	r6, r4
 80023d6:	f3af 8000 	nop.w
 80023da:	f805 0b01 	strb.w	r0, [r5], #1
 80023de:	3e01      	subs	r6, #1
 80023e0:	d1f9      	bne.n	80023d6 <_read+0x12>
 80023e2:	4620      	mov	r0, r4
 80023e4:	f85d bb04 	ldr.w	fp, [sp], #4
 80023e8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023ea <_write>:
 80023ea:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023ec:	af03      	add	r7, sp, #12
 80023ee:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023f2:	4614      	mov	r4, r2
 80023f4:	460d      	mov	r5, r1
 80023f6:	2c01      	cmp	r4, #1
 80023f8:	db06      	blt.n	8002408 <_write+0x1e>
 80023fa:	4626      	mov	r6, r4
 80023fc:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002400:	f7ff fd8b 	bl	8001f1a <__io_putchar>
 8002404:	3e01      	subs	r6, #1
 8002406:	d1f9      	bne.n	80023fc <_write+0x12>
 8002408:	4620      	mov	r0, r4
 800240a:	f85d bb04 	ldr.w	fp, [sp], #4
 800240e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002410 <_sbrk>:
 8002410:	f640 227c 	movw	r2, #2684	; 0xa7c
 8002414:	4601      	mov	r1, r0
 8002416:	466b      	mov	r3, sp
 8002418:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800241c:	6810      	ldr	r0, [r2, #0]
 800241e:	2800      	cmp	r0, #0
 8002420:	bf02      	ittt	eq
 8002422:	f640 3030 	movweq	r0, #2864	; 0xb30
 8002426:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800242a:	6010      	streq	r0, [r2, #0]
 800242c:	4401      	add	r1, r0
 800242e:	4299      	cmp	r1, r3
 8002430:	bf9c      	itt	ls
 8002432:	6011      	strls	r1, [r2, #0]
 8002434:	4770      	bxls	lr
 8002436:	b580      	push	{r7, lr}
 8002438:	466f      	mov	r7, sp
 800243a:	f000 f867 	bl	800250c <__errno>
 800243e:	210c      	movs	r1, #12
 8002440:	6001      	str	r1, [r0, #0]
 8002442:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002446:	bd80      	pop	{r7, pc}

08002448 <_close>:
 8002448:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800244c:	4770      	bx	lr

0800244e <_fstat>:
 800244e:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002452:	6048      	str	r0, [r1, #4]
 8002454:	2000      	movs	r0, #0
 8002456:	4770      	bx	lr

08002458 <_isatty>:
 8002458:	2001      	movs	r0, #1
 800245a:	4770      	bx	lr

0800245c <_lseek>:
 800245c:	2000      	movs	r0, #0
 800245e:	4770      	bx	lr

08002460 <SystemInit>:
 8002460:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002464:	f04f 0c00 	mov.w	ip, #0
 8002468:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800246c:	6801      	ldr	r1, [r0, #0]
 800246e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002472:	6001      	str	r1, [r0, #0]
 8002474:	f241 0100 	movw	r1, #4096	; 0x1000
 8002478:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800247c:	680a      	ldr	r2, [r1, #0]
 800247e:	f042 0201 	orr.w	r2, r2, #1
 8002482:	600a      	str	r2, [r1, #0]
 8002484:	f8c1 c008 	str.w	ip, [r1, #8]
 8002488:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800248c:	680b      	ldr	r3, [r1, #0]
 800248e:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002492:	401a      	ands	r2, r3
 8002494:	600a      	str	r2, [r1, #0]
 8002496:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800249a:	60ca      	str	r2, [r1, #12]
 800249c:	680a      	ldr	r2, [r1, #0]
 800249e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80024a2:	600a      	str	r2, [r1, #0]
 80024a4:	f8c1 c018 	str.w	ip, [r1, #24]
 80024a8:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80024ac:	f840 1c80 	str.w	r1, [r0, #-128]
 80024b0:	4770      	bx	lr
	...

080024b4 <Reset_Handler>:
 80024b4:	f8df d034 	ldr.w	sp, [pc, #52]	; 80024ec <LoopForever+0x2>
 80024b8:	2100      	movs	r1, #0
 80024ba:	e003      	b.n	80024c4 <LoopCopyDataInit>

080024bc <CopyDataInit>:
 80024bc:	4b0c      	ldr	r3, [pc, #48]	; (80024f0 <LoopForever+0x6>)
 80024be:	585b      	ldr	r3, [r3, r1]
 80024c0:	5043      	str	r3, [r0, r1]
 80024c2:	3104      	adds	r1, #4

080024c4 <LoopCopyDataInit>:
 80024c4:	480b      	ldr	r0, [pc, #44]	; (80024f4 <LoopForever+0xa>)
 80024c6:	4b0c      	ldr	r3, [pc, #48]	; (80024f8 <LoopForever+0xe>)
 80024c8:	1842      	adds	r2, r0, r1
 80024ca:	429a      	cmp	r2, r3
 80024cc:	d3f6      	bcc.n	80024bc <CopyDataInit>
 80024ce:	4a0b      	ldr	r2, [pc, #44]	; (80024fc <LoopForever+0x12>)
 80024d0:	e002      	b.n	80024d8 <LoopFillZerobss>

080024d2 <FillZerobss>:
 80024d2:	2300      	movs	r3, #0
 80024d4:	f842 3b04 	str.w	r3, [r2], #4

080024d8 <LoopFillZerobss>:
 80024d8:	4b09      	ldr	r3, [pc, #36]	; (8002500 <LoopForever+0x16>)
 80024da:	429a      	cmp	r2, r3
 80024dc:	d3f9      	bcc.n	80024d2 <FillZerobss>
 80024de:	f7ff ffbf 	bl	8002460 <SystemInit>
 80024e2:	f000 f819 	bl	8002518 <__libc_init_array>
 80024e6:	f7ff fd29 	bl	8001f3c <main>

080024ea <LoopForever>:
 80024ea:	e7fe      	b.n	80024ea <LoopForever>
 80024ec:	20018000 	.word	0x20018000
 80024f0:	080077a0 	.word	0x080077a0
 80024f4:	20000000 	.word	0x20000000
 80024f8:	200009c8 	.word	0x200009c8
 80024fc:	200009c8 	.word	0x200009c8
 8002500:	20000b2c 	.word	0x20000b2c

08002504 <ADC1_2_IRQHandler>:
 8002504:	e7fe      	b.n	8002504 <ADC1_2_IRQHandler>
	...

08002508 <__aeabi_memcpy>:
 8002508:	f7fe bbe8 	b.w	8000cdc <memcpy>

0800250c <__errno>:
 800250c:	4b01      	ldr	r3, [pc, #4]	; (8002514 <__errno+0x8>)
 800250e:	6818      	ldr	r0, [r3, #0]
 8002510:	4770      	bx	lr
 8002512:	bf00      	nop
 8002514:	20000018 	.word	0x20000018

08002518 <__libc_init_array>:
 8002518:	b570      	push	{r4, r5, r6, lr}
 800251a:	4e0d      	ldr	r6, [pc, #52]	; (8002550 <__libc_init_array+0x38>)
 800251c:	4d0d      	ldr	r5, [pc, #52]	; (8002554 <__libc_init_array+0x3c>)
 800251e:	1b76      	subs	r6, r6, r5
 8002520:	10b6      	asrs	r6, r6, #2
 8002522:	d006      	beq.n	8002532 <__libc_init_array+0x1a>
 8002524:	2400      	movs	r4, #0
 8002526:	3401      	adds	r4, #1
 8002528:	f855 3b04 	ldr.w	r3, [r5], #4
 800252c:	4798      	blx	r3
 800252e:	42a6      	cmp	r6, r4
 8002530:	d1f9      	bne.n	8002526 <__libc_init_array+0xe>
 8002532:	4e09      	ldr	r6, [pc, #36]	; (8002558 <__libc_init_array+0x40>)
 8002534:	4d09      	ldr	r5, [pc, #36]	; (800255c <__libc_init_array+0x44>)
 8002536:	1b76      	subs	r6, r6, r5
 8002538:	f004 ff26 	bl	8007388 <_init>
 800253c:	10b6      	asrs	r6, r6, #2
 800253e:	d006      	beq.n	800254e <__libc_init_array+0x36>
 8002540:	2400      	movs	r4, #0
 8002542:	3401      	adds	r4, #1
 8002544:	f855 3b04 	ldr.w	r3, [r5], #4
 8002548:	4798      	blx	r3
 800254a:	42a6      	cmp	r6, r4
 800254c:	d1f9      	bne.n	8002542 <__libc_init_array+0x2a>
 800254e:	bd70      	pop	{r4, r5, r6, pc}
 8002550:	08007790 	.word	0x08007790
 8002554:	08007790 	.word	0x08007790
 8002558:	08007798 	.word	0x08007798
 800255c:	08007790 	.word	0x08007790

08002560 <__locale_mb_cur_max>:
 8002560:	4b04      	ldr	r3, [pc, #16]	; (8002574 <__locale_mb_cur_max+0x14>)
 8002562:	4a05      	ldr	r2, [pc, #20]	; (8002578 <__locale_mb_cur_max+0x18>)
 8002564:	681b      	ldr	r3, [r3, #0]
 8002566:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8002568:	2b00      	cmp	r3, #0
 800256a:	bf08      	it	eq
 800256c:	4613      	moveq	r3, r2
 800256e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8002572:	4770      	bx	lr
 8002574:	20000018 	.word	0x20000018
 8002578:	20000448 	.word	0x20000448

0800257c <__locale_ctype_ptr>:
 800257c:	4b04      	ldr	r3, [pc, #16]	; (8002590 <__locale_ctype_ptr+0x14>)
 800257e:	4a05      	ldr	r2, [pc, #20]	; (8002594 <__locale_ctype_ptr+0x18>)
 8002580:	681b      	ldr	r3, [r3, #0]
 8002582:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8002584:	2b00      	cmp	r3, #0
 8002586:	bf08      	it	eq
 8002588:	4613      	moveq	r3, r2
 800258a:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
 800258e:	4770      	bx	lr
 8002590:	20000018 	.word	0x20000018
 8002594:	20000448 	.word	0x20000448

08002598 <malloc>:
 8002598:	4b02      	ldr	r3, [pc, #8]	; (80025a4 <malloc+0xc>)
 800259a:	4601      	mov	r1, r0
 800259c:	6818      	ldr	r0, [r3, #0]
 800259e:	f000 b80b 	b.w	80025b8 <_malloc_r>
 80025a2:	bf00      	nop
 80025a4:	20000018 	.word	0x20000018

080025a8 <free>:
 80025a8:	4b02      	ldr	r3, [pc, #8]	; (80025b4 <free+0xc>)
 80025aa:	4601      	mov	r1, r0
 80025ac:	6818      	ldr	r0, [r3, #0]
 80025ae:	f003 bb6f 	b.w	8005c90 <_free_r>
 80025b2:	bf00      	nop
 80025b4:	20000018 	.word	0x20000018

080025b8 <_malloc_r>:
 80025b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80025bc:	f101 050b 	add.w	r5, r1, #11
 80025c0:	2d16      	cmp	r5, #22
 80025c2:	b083      	sub	sp, #12
 80025c4:	4606      	mov	r6, r0
 80025c6:	d823      	bhi.n	8002610 <_malloc_r+0x58>
 80025c8:	2910      	cmp	r1, #16
 80025ca:	f200 80b9 	bhi.w	8002740 <_malloc_r+0x188>
 80025ce:	f000 faf7 	bl	8002bc0 <__malloc_lock>
 80025d2:	2510      	movs	r5, #16
 80025d4:	2318      	movs	r3, #24
 80025d6:	2002      	movs	r0, #2
 80025d8:	4fc5      	ldr	r7, [pc, #788]	; (80028f0 <_malloc_r+0x338>)
 80025da:	443b      	add	r3, r7
 80025dc:	f1a3 0208 	sub.w	r2, r3, #8
 80025e0:	685c      	ldr	r4, [r3, #4]
 80025e2:	4294      	cmp	r4, r2
 80025e4:	f000 8166 	beq.w	80028b4 <_malloc_r+0x2fc>
 80025e8:	6863      	ldr	r3, [r4, #4]
 80025ea:	f023 0303 	bic.w	r3, r3, #3
 80025ee:	4423      	add	r3, r4
 80025f0:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80025f4:	685a      	ldr	r2, [r3, #4]
 80025f6:	60e9      	str	r1, [r5, #12]
 80025f8:	f042 0201 	orr.w	r2, r2, #1
 80025fc:	608d      	str	r5, [r1, #8]
 80025fe:	4630      	mov	r0, r6
 8002600:	605a      	str	r2, [r3, #4]
 8002602:	f000 fae3 	bl	8002bcc <__malloc_unlock>
 8002606:	3408      	adds	r4, #8
 8002608:	4620      	mov	r0, r4
 800260a:	b003      	add	sp, #12
 800260c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002610:	f035 0507 	bics.w	r5, r5, #7
 8002614:	f100 8094 	bmi.w	8002740 <_malloc_r+0x188>
 8002618:	42a9      	cmp	r1, r5
 800261a:	f200 8091 	bhi.w	8002740 <_malloc_r+0x188>
 800261e:	f000 facf 	bl	8002bc0 <__malloc_lock>
 8002622:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8002626:	f0c0 8183 	bcc.w	8002930 <_malloc_r+0x378>
 800262a:	0a6b      	lsrs	r3, r5, #9
 800262c:	f000 808f 	beq.w	800274e <_malloc_r+0x196>
 8002630:	2b04      	cmp	r3, #4
 8002632:	f200 8146 	bhi.w	80028c2 <_malloc_r+0x30a>
 8002636:	09ab      	lsrs	r3, r5, #6
 8002638:	f103 0039 	add.w	r0, r3, #57	; 0x39
 800263c:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8002640:	00c3      	lsls	r3, r0, #3
 8002642:	4fab      	ldr	r7, [pc, #684]	; (80028f0 <_malloc_r+0x338>)
 8002644:	443b      	add	r3, r7
 8002646:	f1a3 0108 	sub.w	r1, r3, #8
 800264a:	685c      	ldr	r4, [r3, #4]
 800264c:	42a1      	cmp	r1, r4
 800264e:	d106      	bne.n	800265e <_malloc_r+0xa6>
 8002650:	e00c      	b.n	800266c <_malloc_r+0xb4>
 8002652:	2a00      	cmp	r2, #0
 8002654:	f280 811d 	bge.w	8002892 <_malloc_r+0x2da>
 8002658:	68e4      	ldr	r4, [r4, #12]
 800265a:	42a1      	cmp	r1, r4
 800265c:	d006      	beq.n	800266c <_malloc_r+0xb4>
 800265e:	6863      	ldr	r3, [r4, #4]
 8002660:	f023 0303 	bic.w	r3, r3, #3
 8002664:	1b5a      	subs	r2, r3, r5
 8002666:	2a0f      	cmp	r2, #15
 8002668:	ddf3      	ble.n	8002652 <_malloc_r+0x9a>
 800266a:	4660      	mov	r0, ip
 800266c:	693c      	ldr	r4, [r7, #16]
 800266e:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002904 <_malloc_r+0x34c>
 8002672:	4564      	cmp	r4, ip
 8002674:	d071      	beq.n	800275a <_malloc_r+0x1a2>
 8002676:	6863      	ldr	r3, [r4, #4]
 8002678:	f023 0303 	bic.w	r3, r3, #3
 800267c:	1b5a      	subs	r2, r3, r5
 800267e:	2a0f      	cmp	r2, #15
 8002680:	f300 8144 	bgt.w	800290c <_malloc_r+0x354>
 8002684:	2a00      	cmp	r2, #0
 8002686:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800268a:	f280 8126 	bge.w	80028da <_malloc_r+0x322>
 800268e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002692:	f080 8169 	bcs.w	8002968 <_malloc_r+0x3b0>
 8002696:	08db      	lsrs	r3, r3, #3
 8002698:	1c59      	adds	r1, r3, #1
 800269a:	687a      	ldr	r2, [r7, #4]
 800269c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80026a0:	f8c4 8008 	str.w	r8, [r4, #8]
 80026a4:	f04f 0e01 	mov.w	lr, #1
 80026a8:	109b      	asrs	r3, r3, #2
 80026aa:	fa0e f303 	lsl.w	r3, lr, r3
 80026ae:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80026b2:	4313      	orrs	r3, r2
 80026b4:	f1ae 0208 	sub.w	r2, lr, #8
 80026b8:	60e2      	str	r2, [r4, #12]
 80026ba:	607b      	str	r3, [r7, #4]
 80026bc:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80026c0:	f8c8 400c 	str.w	r4, [r8, #12]
 80026c4:	1082      	asrs	r2, r0, #2
 80026c6:	2401      	movs	r4, #1
 80026c8:	4094      	lsls	r4, r2
 80026ca:	429c      	cmp	r4, r3
 80026cc:	d84b      	bhi.n	8002766 <_malloc_r+0x1ae>
 80026ce:	421c      	tst	r4, r3
 80026d0:	d106      	bne.n	80026e0 <_malloc_r+0x128>
 80026d2:	f020 0003 	bic.w	r0, r0, #3
 80026d6:	0064      	lsls	r4, r4, #1
 80026d8:	421c      	tst	r4, r3
 80026da:	f100 0004 	add.w	r0, r0, #4
 80026de:	d0fa      	beq.n	80026d6 <_malloc_r+0x11e>
 80026e0:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80026e4:	46ce      	mov	lr, r9
 80026e6:	4680      	mov	r8, r0
 80026e8:	f8de 300c 	ldr.w	r3, [lr, #12]
 80026ec:	459e      	cmp	lr, r3
 80026ee:	d107      	bne.n	8002700 <_malloc_r+0x148>
 80026f0:	e122      	b.n	8002938 <_malloc_r+0x380>
 80026f2:	2a00      	cmp	r2, #0
 80026f4:	f280 8129 	bge.w	800294a <_malloc_r+0x392>
 80026f8:	68db      	ldr	r3, [r3, #12]
 80026fa:	459e      	cmp	lr, r3
 80026fc:	f000 811c 	beq.w	8002938 <_malloc_r+0x380>
 8002700:	6859      	ldr	r1, [r3, #4]
 8002702:	f021 0103 	bic.w	r1, r1, #3
 8002706:	1b4a      	subs	r2, r1, r5
 8002708:	2a0f      	cmp	r2, #15
 800270a:	ddf2      	ble.n	80026f2 <_malloc_r+0x13a>
 800270c:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8002710:	195c      	adds	r4, r3, r5
 8002712:	f045 0501 	orr.w	r5, r5, #1
 8002716:	605d      	str	r5, [r3, #4]
 8002718:	f042 0501 	orr.w	r5, r2, #1
 800271c:	f8c8 e00c 	str.w	lr, [r8, #12]
 8002720:	4630      	mov	r0, r6
 8002722:	f8ce 8008 	str.w	r8, [lr, #8]
 8002726:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800272a:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800272e:	6065      	str	r5, [r4, #4]
 8002730:	505a      	str	r2, [r3, r1]
 8002732:	9301      	str	r3, [sp, #4]
 8002734:	f000 fa4a 	bl	8002bcc <__malloc_unlock>
 8002738:	9b01      	ldr	r3, [sp, #4]
 800273a:	f103 0408 	add.w	r4, r3, #8
 800273e:	e763      	b.n	8002608 <_malloc_r+0x50>
 8002740:	2400      	movs	r4, #0
 8002742:	230c      	movs	r3, #12
 8002744:	4620      	mov	r0, r4
 8002746:	6033      	str	r3, [r6, #0]
 8002748:	b003      	add	sp, #12
 800274a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800274e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002752:	2040      	movs	r0, #64	; 0x40
 8002754:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8002758:	e773      	b.n	8002642 <_malloc_r+0x8a>
 800275a:	687b      	ldr	r3, [r7, #4]
 800275c:	1082      	asrs	r2, r0, #2
 800275e:	2401      	movs	r4, #1
 8002760:	4094      	lsls	r4, r2
 8002762:	429c      	cmp	r4, r3
 8002764:	d9b3      	bls.n	80026ce <_malloc_r+0x116>
 8002766:	68bc      	ldr	r4, [r7, #8]
 8002768:	6863      	ldr	r3, [r4, #4]
 800276a:	f023 0903 	bic.w	r9, r3, #3
 800276e:	45a9      	cmp	r9, r5
 8002770:	d303      	bcc.n	800277a <_malloc_r+0x1c2>
 8002772:	eba9 0305 	sub.w	r3, r9, r5
 8002776:	2b0f      	cmp	r3, #15
 8002778:	dc7b      	bgt.n	8002872 <_malloc_r+0x2ba>
 800277a:	4b5e      	ldr	r3, [pc, #376]	; (80028f4 <_malloc_r+0x33c>)
 800277c:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002908 <_malloc_r+0x350>
 8002780:	681a      	ldr	r2, [r3, #0]
 8002782:	f8da 3000 	ldr.w	r3, [sl]
 8002786:	3301      	adds	r3, #1
 8002788:	eb05 0802 	add.w	r8, r5, r2
 800278c:	f000 8148 	beq.w	8002a20 <_malloc_r+0x468>
 8002790:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002794:	f108 080f 	add.w	r8, r8, #15
 8002798:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800279c:	f028 080f 	bic.w	r8, r8, #15
 80027a0:	4641      	mov	r1, r8
 80027a2:	4630      	mov	r0, r6
 80027a4:	f000 fa82 	bl	8002cac <_sbrk_r>
 80027a8:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80027ac:	4683      	mov	fp, r0
 80027ae:	f000 8104 	beq.w	80029ba <_malloc_r+0x402>
 80027b2:	eb04 0009 	add.w	r0, r4, r9
 80027b6:	4558      	cmp	r0, fp
 80027b8:	f200 80fd 	bhi.w	80029b6 <_malloc_r+0x3fe>
 80027bc:	4a4e      	ldr	r2, [pc, #312]	; (80028f8 <_malloc_r+0x340>)
 80027be:	6813      	ldr	r3, [r2, #0]
 80027c0:	4443      	add	r3, r8
 80027c2:	6013      	str	r3, [r2, #0]
 80027c4:	f000 814d 	beq.w	8002a62 <_malloc_r+0x4aa>
 80027c8:	f8da 1000 	ldr.w	r1, [sl]
 80027cc:	3101      	adds	r1, #1
 80027ce:	bf1b      	ittet	ne
 80027d0:	ebab 0000 	subne.w	r0, fp, r0
 80027d4:	181b      	addne	r3, r3, r0
 80027d6:	f8ca b000 	streq.w	fp, [sl]
 80027da:	6013      	strne	r3, [r2, #0]
 80027dc:	f01b 0307 	ands.w	r3, fp, #7
 80027e0:	f000 8134 	beq.w	8002a4c <_malloc_r+0x494>
 80027e4:	f1c3 0108 	rsb	r1, r3, #8
 80027e8:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80027ec:	448b      	add	fp, r1
 80027ee:	3308      	adds	r3, #8
 80027f0:	44d8      	add	r8, fp
 80027f2:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80027f6:	eba3 0808 	sub.w	r8, r3, r8
 80027fa:	4641      	mov	r1, r8
 80027fc:	4630      	mov	r0, r6
 80027fe:	9201      	str	r2, [sp, #4]
 8002800:	f000 fa54 	bl	8002cac <_sbrk_r>
 8002804:	1c43      	adds	r3, r0, #1
 8002806:	9a01      	ldr	r2, [sp, #4]
 8002808:	f000 8146 	beq.w	8002a98 <_malloc_r+0x4e0>
 800280c:	eba0 010b 	sub.w	r1, r0, fp
 8002810:	4441      	add	r1, r8
 8002812:	f041 0101 	orr.w	r1, r1, #1
 8002816:	6813      	ldr	r3, [r2, #0]
 8002818:	f8c7 b008 	str.w	fp, [r7, #8]
 800281c:	4443      	add	r3, r8
 800281e:	42bc      	cmp	r4, r7
 8002820:	f8cb 1004 	str.w	r1, [fp, #4]
 8002824:	6013      	str	r3, [r2, #0]
 8002826:	d015      	beq.n	8002854 <_malloc_r+0x29c>
 8002828:	f1b9 0f0f 	cmp.w	r9, #15
 800282c:	f240 8130 	bls.w	8002a90 <_malloc_r+0x4d8>
 8002830:	6860      	ldr	r0, [r4, #4]
 8002832:	f1a9 010c 	sub.w	r1, r9, #12
 8002836:	f021 0107 	bic.w	r1, r1, #7
 800283a:	f000 0001 	and.w	r0, r0, #1
 800283e:	eb04 0c01 	add.w	ip, r4, r1
 8002842:	4308      	orrs	r0, r1
 8002844:	f04f 0e05 	mov.w	lr, #5
 8002848:	290f      	cmp	r1, #15
 800284a:	6060      	str	r0, [r4, #4]
 800284c:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8002850:	f200 813a 	bhi.w	8002ac8 <_malloc_r+0x510>
 8002854:	4a29      	ldr	r2, [pc, #164]	; (80028fc <_malloc_r+0x344>)
 8002856:	482a      	ldr	r0, [pc, #168]	; (8002900 <_malloc_r+0x348>)
 8002858:	6811      	ldr	r1, [r2, #0]
 800285a:	68bc      	ldr	r4, [r7, #8]
 800285c:	428b      	cmp	r3, r1
 800285e:	6801      	ldr	r1, [r0, #0]
 8002860:	bf88      	it	hi
 8002862:	6013      	strhi	r3, [r2, #0]
 8002864:	6862      	ldr	r2, [r4, #4]
 8002866:	428b      	cmp	r3, r1
 8002868:	f022 0203 	bic.w	r2, r2, #3
 800286c:	bf88      	it	hi
 800286e:	6003      	strhi	r3, [r0, #0]
 8002870:	e0a7      	b.n	80029c2 <_malloc_r+0x40a>
 8002872:	1962      	adds	r2, r4, r5
 8002874:	f043 0301 	orr.w	r3, r3, #1
 8002878:	f045 0501 	orr.w	r5, r5, #1
 800287c:	6065      	str	r5, [r4, #4]
 800287e:	4630      	mov	r0, r6
 8002880:	60ba      	str	r2, [r7, #8]
 8002882:	6053      	str	r3, [r2, #4]
 8002884:	f000 f9a2 	bl	8002bcc <__malloc_unlock>
 8002888:	3408      	adds	r4, #8
 800288a:	4620      	mov	r0, r4
 800288c:	b003      	add	sp, #12
 800288e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002892:	4423      	add	r3, r4
 8002894:	68e1      	ldr	r1, [r4, #12]
 8002896:	685a      	ldr	r2, [r3, #4]
 8002898:	68a5      	ldr	r5, [r4, #8]
 800289a:	f042 0201 	orr.w	r2, r2, #1
 800289e:	60e9      	str	r1, [r5, #12]
 80028a0:	4630      	mov	r0, r6
 80028a2:	608d      	str	r5, [r1, #8]
 80028a4:	605a      	str	r2, [r3, #4]
 80028a6:	f000 f991 	bl	8002bcc <__malloc_unlock>
 80028aa:	3408      	adds	r4, #8
 80028ac:	4620      	mov	r0, r4
 80028ae:	b003      	add	sp, #12
 80028b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028b4:	68dc      	ldr	r4, [r3, #12]
 80028b6:	42a3      	cmp	r3, r4
 80028b8:	bf08      	it	eq
 80028ba:	3002      	addeq	r0, #2
 80028bc:	f43f aed6 	beq.w	800266c <_malloc_r+0xb4>
 80028c0:	e692      	b.n	80025e8 <_malloc_r+0x30>
 80028c2:	2b14      	cmp	r3, #20
 80028c4:	d971      	bls.n	80029aa <_malloc_r+0x3f2>
 80028c6:	2b54      	cmp	r3, #84	; 0x54
 80028c8:	f200 80ad 	bhi.w	8002a26 <_malloc_r+0x46e>
 80028cc:	0b2b      	lsrs	r3, r5, #12
 80028ce:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80028d2:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80028d6:	00c3      	lsls	r3, r0, #3
 80028d8:	e6b3      	b.n	8002642 <_malloc_r+0x8a>
 80028da:	4423      	add	r3, r4
 80028dc:	4630      	mov	r0, r6
 80028de:	685a      	ldr	r2, [r3, #4]
 80028e0:	f042 0201 	orr.w	r2, r2, #1
 80028e4:	605a      	str	r2, [r3, #4]
 80028e6:	3408      	adds	r4, #8
 80028e8:	f000 f970 	bl	8002bcc <__malloc_unlock>
 80028ec:	e68c      	b.n	8002608 <_malloc_r+0x50>
 80028ee:	bf00      	nop
 80028f0:	200005b4 	.word	0x200005b4
 80028f4:	20000ab0 	.word	0x20000ab0
 80028f8:	20000a80 	.word	0x20000a80
 80028fc:	20000aa8 	.word	0x20000aa8
 8002900:	20000aac 	.word	0x20000aac
 8002904:	200005bc 	.word	0x200005bc
 8002908:	200009bc 	.word	0x200009bc
 800290c:	1961      	adds	r1, r4, r5
 800290e:	f045 0e01 	orr.w	lr, r5, #1
 8002912:	f042 0501 	orr.w	r5, r2, #1
 8002916:	f8c4 e004 	str.w	lr, [r4, #4]
 800291a:	4630      	mov	r0, r6
 800291c:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002920:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002924:	604d      	str	r5, [r1, #4]
 8002926:	50e2      	str	r2, [r4, r3]
 8002928:	f000 f950 	bl	8002bcc <__malloc_unlock>
 800292c:	3408      	adds	r4, #8
 800292e:	e66b      	b.n	8002608 <_malloc_r+0x50>
 8002930:	08e8      	lsrs	r0, r5, #3
 8002932:	f105 0308 	add.w	r3, r5, #8
 8002936:	e64f      	b.n	80025d8 <_malloc_r+0x20>
 8002938:	f108 0801 	add.w	r8, r8, #1
 800293c:	f018 0f03 	tst.w	r8, #3
 8002940:	f10e 0e08 	add.w	lr, lr, #8
 8002944:	f47f aed0 	bne.w	80026e8 <_malloc_r+0x130>
 8002948:	e052      	b.n	80029f0 <_malloc_r+0x438>
 800294a:	4419      	add	r1, r3
 800294c:	461c      	mov	r4, r3
 800294e:	684a      	ldr	r2, [r1, #4]
 8002950:	68db      	ldr	r3, [r3, #12]
 8002952:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002956:	f042 0201 	orr.w	r2, r2, #1
 800295a:	604a      	str	r2, [r1, #4]
 800295c:	4630      	mov	r0, r6
 800295e:	60eb      	str	r3, [r5, #12]
 8002960:	609d      	str	r5, [r3, #8]
 8002962:	f000 f933 	bl	8002bcc <__malloc_unlock>
 8002966:	e64f      	b.n	8002608 <_malloc_r+0x50>
 8002968:	0a5a      	lsrs	r2, r3, #9
 800296a:	2a04      	cmp	r2, #4
 800296c:	d935      	bls.n	80029da <_malloc_r+0x422>
 800296e:	2a14      	cmp	r2, #20
 8002970:	d86f      	bhi.n	8002a52 <_malloc_r+0x49a>
 8002972:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002976:	00c9      	lsls	r1, r1, #3
 8002978:	325b      	adds	r2, #91	; 0x5b
 800297a:	eb07 0e01 	add.w	lr, r7, r1
 800297e:	5879      	ldr	r1, [r7, r1]
 8002980:	f1ae 0e08 	sub.w	lr, lr, #8
 8002984:	458e      	cmp	lr, r1
 8002986:	d058      	beq.n	8002a3a <_malloc_r+0x482>
 8002988:	684a      	ldr	r2, [r1, #4]
 800298a:	f022 0203 	bic.w	r2, r2, #3
 800298e:	429a      	cmp	r2, r3
 8002990:	d902      	bls.n	8002998 <_malloc_r+0x3e0>
 8002992:	6889      	ldr	r1, [r1, #8]
 8002994:	458e      	cmp	lr, r1
 8002996:	d1f7      	bne.n	8002988 <_malloc_r+0x3d0>
 8002998:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 800299c:	687b      	ldr	r3, [r7, #4]
 800299e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80029a2:	f8ce 4008 	str.w	r4, [lr, #8]
 80029a6:	60cc      	str	r4, [r1, #12]
 80029a8:	e68c      	b.n	80026c4 <_malloc_r+0x10c>
 80029aa:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80029ae:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80029b2:	00c3      	lsls	r3, r0, #3
 80029b4:	e645      	b.n	8002642 <_malloc_r+0x8a>
 80029b6:	42bc      	cmp	r4, r7
 80029b8:	d072      	beq.n	8002aa0 <_malloc_r+0x4e8>
 80029ba:	68bc      	ldr	r4, [r7, #8]
 80029bc:	6862      	ldr	r2, [r4, #4]
 80029be:	f022 0203 	bic.w	r2, r2, #3
 80029c2:	4295      	cmp	r5, r2
 80029c4:	eba2 0305 	sub.w	r3, r2, r5
 80029c8:	d802      	bhi.n	80029d0 <_malloc_r+0x418>
 80029ca:	2b0f      	cmp	r3, #15
 80029cc:	f73f af51 	bgt.w	8002872 <_malloc_r+0x2ba>
 80029d0:	4630      	mov	r0, r6
 80029d2:	f000 f8fb 	bl	8002bcc <__malloc_unlock>
 80029d6:	2400      	movs	r4, #0
 80029d8:	e616      	b.n	8002608 <_malloc_r+0x50>
 80029da:	099a      	lsrs	r2, r3, #6
 80029dc:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80029e0:	00c9      	lsls	r1, r1, #3
 80029e2:	3238      	adds	r2, #56	; 0x38
 80029e4:	e7c9      	b.n	800297a <_malloc_r+0x3c2>
 80029e6:	f8d9 9000 	ldr.w	r9, [r9]
 80029ea:	4599      	cmp	r9, r3
 80029ec:	f040 8083 	bne.w	8002af6 <_malloc_r+0x53e>
 80029f0:	f010 0f03 	tst.w	r0, #3
 80029f4:	f1a9 0308 	sub.w	r3, r9, #8
 80029f8:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80029fc:	d1f3      	bne.n	80029e6 <_malloc_r+0x42e>
 80029fe:	687b      	ldr	r3, [r7, #4]
 8002a00:	ea23 0304 	bic.w	r3, r3, r4
 8002a04:	607b      	str	r3, [r7, #4]
 8002a06:	0064      	lsls	r4, r4, #1
 8002a08:	429c      	cmp	r4, r3
 8002a0a:	f63f aeac 	bhi.w	8002766 <_malloc_r+0x1ae>
 8002a0e:	b91c      	cbnz	r4, 8002a18 <_malloc_r+0x460>
 8002a10:	e6a9      	b.n	8002766 <_malloc_r+0x1ae>
 8002a12:	0064      	lsls	r4, r4, #1
 8002a14:	f108 0804 	add.w	r8, r8, #4
 8002a18:	421c      	tst	r4, r3
 8002a1a:	d0fa      	beq.n	8002a12 <_malloc_r+0x45a>
 8002a1c:	4640      	mov	r0, r8
 8002a1e:	e65f      	b.n	80026e0 <_malloc_r+0x128>
 8002a20:	f108 0810 	add.w	r8, r8, #16
 8002a24:	e6bc      	b.n	80027a0 <_malloc_r+0x1e8>
 8002a26:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002a2a:	d826      	bhi.n	8002a7a <_malloc_r+0x4c2>
 8002a2c:	0beb      	lsrs	r3, r5, #15
 8002a2e:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002a32:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002a36:	00c3      	lsls	r3, r0, #3
 8002a38:	e603      	b.n	8002642 <_malloc_r+0x8a>
 8002a3a:	687b      	ldr	r3, [r7, #4]
 8002a3c:	1092      	asrs	r2, r2, #2
 8002a3e:	f04f 0801 	mov.w	r8, #1
 8002a42:	fa08 f202 	lsl.w	r2, r8, r2
 8002a46:	4313      	orrs	r3, r2
 8002a48:	607b      	str	r3, [r7, #4]
 8002a4a:	e7a8      	b.n	800299e <_malloc_r+0x3e6>
 8002a4c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002a50:	e6ce      	b.n	80027f0 <_malloc_r+0x238>
 8002a52:	2a54      	cmp	r2, #84	; 0x54
 8002a54:	d829      	bhi.n	8002aaa <_malloc_r+0x4f2>
 8002a56:	0b1a      	lsrs	r2, r3, #12
 8002a58:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002a5c:	00c9      	lsls	r1, r1, #3
 8002a5e:	326e      	adds	r2, #110	; 0x6e
 8002a60:	e78b      	b.n	800297a <_malloc_r+0x3c2>
 8002a62:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002a66:	2900      	cmp	r1, #0
 8002a68:	f47f aeae 	bne.w	80027c8 <_malloc_r+0x210>
 8002a6c:	eb09 0208 	add.w	r2, r9, r8
 8002a70:	68b9      	ldr	r1, [r7, #8]
 8002a72:	f042 0201 	orr.w	r2, r2, #1
 8002a76:	604a      	str	r2, [r1, #4]
 8002a78:	e6ec      	b.n	8002854 <_malloc_r+0x29c>
 8002a7a:	f240 5254 	movw	r2, #1364	; 0x554
 8002a7e:	4293      	cmp	r3, r2
 8002a80:	d81c      	bhi.n	8002abc <_malloc_r+0x504>
 8002a82:	0cab      	lsrs	r3, r5, #18
 8002a84:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002a88:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002a8c:	00c3      	lsls	r3, r0, #3
 8002a8e:	e5d8      	b.n	8002642 <_malloc_r+0x8a>
 8002a90:	2301      	movs	r3, #1
 8002a92:	f8cb 3004 	str.w	r3, [fp, #4]
 8002a96:	e79b      	b.n	80029d0 <_malloc_r+0x418>
 8002a98:	2101      	movs	r1, #1
 8002a9a:	f04f 0800 	mov.w	r8, #0
 8002a9e:	e6ba      	b.n	8002816 <_malloc_r+0x25e>
 8002aa0:	4a16      	ldr	r2, [pc, #88]	; (8002afc <_malloc_r+0x544>)
 8002aa2:	6813      	ldr	r3, [r2, #0]
 8002aa4:	4443      	add	r3, r8
 8002aa6:	6013      	str	r3, [r2, #0]
 8002aa8:	e68e      	b.n	80027c8 <_malloc_r+0x210>
 8002aaa:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002aae:	d814      	bhi.n	8002ada <_malloc_r+0x522>
 8002ab0:	0bda      	lsrs	r2, r3, #15
 8002ab2:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002ab6:	00c9      	lsls	r1, r1, #3
 8002ab8:	3277      	adds	r2, #119	; 0x77
 8002aba:	e75e      	b.n	800297a <_malloc_r+0x3c2>
 8002abc:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002ac0:	207f      	movs	r0, #127	; 0x7f
 8002ac2:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002ac6:	e5bc      	b.n	8002642 <_malloc_r+0x8a>
 8002ac8:	f104 0108 	add.w	r1, r4, #8
 8002acc:	4630      	mov	r0, r6
 8002ace:	9201      	str	r2, [sp, #4]
 8002ad0:	f003 f8de 	bl	8005c90 <_free_r>
 8002ad4:	9a01      	ldr	r2, [sp, #4]
 8002ad6:	6813      	ldr	r3, [r2, #0]
 8002ad8:	e6bc      	b.n	8002854 <_malloc_r+0x29c>
 8002ada:	f240 5154 	movw	r1, #1364	; 0x554
 8002ade:	428a      	cmp	r2, r1
 8002ae0:	d805      	bhi.n	8002aee <_malloc_r+0x536>
 8002ae2:	0c9a      	lsrs	r2, r3, #18
 8002ae4:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002ae8:	00c9      	lsls	r1, r1, #3
 8002aea:	327c      	adds	r2, #124	; 0x7c
 8002aec:	e745      	b.n	800297a <_malloc_r+0x3c2>
 8002aee:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002af2:	227e      	movs	r2, #126	; 0x7e
 8002af4:	e741      	b.n	800297a <_malloc_r+0x3c2>
 8002af6:	687b      	ldr	r3, [r7, #4]
 8002af8:	e785      	b.n	8002a06 <_malloc_r+0x44e>
 8002afa:	bf00      	nop
 8002afc:	20000a80 	.word	0x20000a80

08002b00 <__ascii_mbtowc>:
 8002b00:	b082      	sub	sp, #8
 8002b02:	b149      	cbz	r1, 8002b18 <__ascii_mbtowc+0x18>
 8002b04:	b15a      	cbz	r2, 8002b1e <__ascii_mbtowc+0x1e>
 8002b06:	b16b      	cbz	r3, 8002b24 <__ascii_mbtowc+0x24>
 8002b08:	7813      	ldrb	r3, [r2, #0]
 8002b0a:	600b      	str	r3, [r1, #0]
 8002b0c:	7812      	ldrb	r2, [r2, #0]
 8002b0e:	1c10      	adds	r0, r2, #0
 8002b10:	bf18      	it	ne
 8002b12:	2001      	movne	r0, #1
 8002b14:	b002      	add	sp, #8
 8002b16:	4770      	bx	lr
 8002b18:	a901      	add	r1, sp, #4
 8002b1a:	2a00      	cmp	r2, #0
 8002b1c:	d1f3      	bne.n	8002b06 <__ascii_mbtowc+0x6>
 8002b1e:	4610      	mov	r0, r2
 8002b20:	b002      	add	sp, #8
 8002b22:	4770      	bx	lr
 8002b24:	f06f 0001 	mvn.w	r0, #1
 8002b28:	e7f4      	b.n	8002b14 <__ascii_mbtowc+0x14>
 8002b2a:	bf00      	nop

08002b2c <memset>:
 8002b2c:	b4f0      	push	{r4, r5, r6, r7}
 8002b2e:	0786      	lsls	r6, r0, #30
 8002b30:	d043      	beq.n	8002bba <memset+0x8e>
 8002b32:	1e54      	subs	r4, r2, #1
 8002b34:	2a00      	cmp	r2, #0
 8002b36:	d03e      	beq.n	8002bb6 <memset+0x8a>
 8002b38:	b2ca      	uxtb	r2, r1
 8002b3a:	4603      	mov	r3, r0
 8002b3c:	e002      	b.n	8002b44 <memset+0x18>
 8002b3e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002b42:	d338      	bcc.n	8002bb6 <memset+0x8a>
 8002b44:	f803 2b01 	strb.w	r2, [r3], #1
 8002b48:	079d      	lsls	r5, r3, #30
 8002b4a:	d1f8      	bne.n	8002b3e <memset+0x12>
 8002b4c:	2c03      	cmp	r4, #3
 8002b4e:	d92b      	bls.n	8002ba8 <memset+0x7c>
 8002b50:	b2cd      	uxtb	r5, r1
 8002b52:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002b56:	2c0f      	cmp	r4, #15
 8002b58:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002b5c:	d916      	bls.n	8002b8c <memset+0x60>
 8002b5e:	f1a4 0710 	sub.w	r7, r4, #16
 8002b62:	093f      	lsrs	r7, r7, #4
 8002b64:	f103 0620 	add.w	r6, r3, #32
 8002b68:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002b6c:	f103 0210 	add.w	r2, r3, #16
 8002b70:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002b74:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002b78:	3210      	adds	r2, #16
 8002b7a:	42b2      	cmp	r2, r6
 8002b7c:	d1f8      	bne.n	8002b70 <memset+0x44>
 8002b7e:	f004 040f 	and.w	r4, r4, #15
 8002b82:	3701      	adds	r7, #1
 8002b84:	2c03      	cmp	r4, #3
 8002b86:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002b8a:	d90d      	bls.n	8002ba8 <memset+0x7c>
 8002b8c:	461e      	mov	r6, r3
 8002b8e:	4622      	mov	r2, r4
 8002b90:	3a04      	subs	r2, #4
 8002b92:	2a03      	cmp	r2, #3
 8002b94:	f846 5b04 	str.w	r5, [r6], #4
 8002b98:	d8fa      	bhi.n	8002b90 <memset+0x64>
 8002b9a:	1f22      	subs	r2, r4, #4
 8002b9c:	f022 0203 	bic.w	r2, r2, #3
 8002ba0:	3204      	adds	r2, #4
 8002ba2:	4413      	add	r3, r2
 8002ba4:	f004 0403 	and.w	r4, r4, #3
 8002ba8:	b12c      	cbz	r4, 8002bb6 <memset+0x8a>
 8002baa:	b2c9      	uxtb	r1, r1
 8002bac:	441c      	add	r4, r3
 8002bae:	f803 1b01 	strb.w	r1, [r3], #1
 8002bb2:	429c      	cmp	r4, r3
 8002bb4:	d1fb      	bne.n	8002bae <memset+0x82>
 8002bb6:	bcf0      	pop	{r4, r5, r6, r7}
 8002bb8:	4770      	bx	lr
 8002bba:	4614      	mov	r4, r2
 8002bbc:	4603      	mov	r3, r0
 8002bbe:	e7c5      	b.n	8002b4c <memset+0x20>

08002bc0 <__malloc_lock>:
 8002bc0:	4801      	ldr	r0, [pc, #4]	; (8002bc8 <__malloc_lock+0x8>)
 8002bc2:	f003 bb13 	b.w	80061ec <__retarget_lock_acquire_recursive>
 8002bc6:	bf00      	nop
 8002bc8:	20000b14 	.word	0x20000b14

08002bcc <__malloc_unlock>:
 8002bcc:	4801      	ldr	r0, [pc, #4]	; (8002bd4 <__malloc_unlock+0x8>)
 8002bce:	f003 bb0f 	b.w	80061f0 <__retarget_lock_release_recursive>
 8002bd2:	bf00      	nop
 8002bd4:	20000b14 	.word	0x20000b14

08002bd8 <printf>:
 8002bd8:	b40f      	push	{r0, r1, r2, r3}
 8002bda:	b500      	push	{lr}
 8002bdc:	4907      	ldr	r1, [pc, #28]	; (8002bfc <printf+0x24>)
 8002bde:	b083      	sub	sp, #12
 8002be0:	ab04      	add	r3, sp, #16
 8002be2:	6808      	ldr	r0, [r1, #0]
 8002be4:	f853 2b04 	ldr.w	r2, [r3], #4
 8002be8:	6881      	ldr	r1, [r0, #8]
 8002bea:	9301      	str	r3, [sp, #4]
 8002bec:	f000 f900 	bl	8002df0 <_vfprintf_r>
 8002bf0:	b003      	add	sp, #12
 8002bf2:	f85d eb04 	ldr.w	lr, [sp], #4
 8002bf6:	b004      	add	sp, #16
 8002bf8:	4770      	bx	lr
 8002bfa:	bf00      	nop
 8002bfc:	20000018 	.word	0x20000018

08002c00 <_puts_r>:
 8002c00:	b570      	push	{r4, r5, r6, lr}
 8002c02:	4605      	mov	r5, r0
 8002c04:	b088      	sub	sp, #32
 8002c06:	4608      	mov	r0, r1
 8002c08:	460c      	mov	r4, r1
 8002c0a:	f7fe f919 	bl	8000e40 <strlen>
 8002c0e:	4a22      	ldr	r2, [pc, #136]	; (8002c98 <_puts_r+0x98>)
 8002c10:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002c12:	9404      	str	r4, [sp, #16]
 8002c14:	2601      	movs	r6, #1
 8002c16:	1c44      	adds	r4, r0, #1
 8002c18:	a904      	add	r1, sp, #16
 8002c1a:	9206      	str	r2, [sp, #24]
 8002c1c:	2202      	movs	r2, #2
 8002c1e:	9403      	str	r4, [sp, #12]
 8002c20:	9005      	str	r0, [sp, #20]
 8002c22:	68ac      	ldr	r4, [r5, #8]
 8002c24:	9607      	str	r6, [sp, #28]
 8002c26:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002c2a:	b31b      	cbz	r3, 8002c74 <_puts_r+0x74>
 8002c2c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002c2e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002c32:	07ce      	lsls	r6, r1, #31
 8002c34:	b29a      	uxth	r2, r3
 8002c36:	d401      	bmi.n	8002c3c <_puts_r+0x3c>
 8002c38:	0590      	lsls	r0, r2, #22
 8002c3a:	d525      	bpl.n	8002c88 <_puts_r+0x88>
 8002c3c:	0491      	lsls	r1, r2, #18
 8002c3e:	d406      	bmi.n	8002c4e <_puts_r+0x4e>
 8002c40:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002c42:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002c46:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002c4a:	81a3      	strh	r3, [r4, #12]
 8002c4c:	6662      	str	r2, [r4, #100]	; 0x64
 8002c4e:	4628      	mov	r0, r5
 8002c50:	aa01      	add	r2, sp, #4
 8002c52:	4621      	mov	r1, r4
 8002c54:	f003 f910 	bl	8005e78 <__sfvwrite_r>
 8002c58:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002c5a:	2800      	cmp	r0, #0
 8002c5c:	bf0c      	ite	eq
 8002c5e:	250a      	moveq	r5, #10
 8002c60:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002c64:	07da      	lsls	r2, r3, #31
 8002c66:	d402      	bmi.n	8002c6e <_puts_r+0x6e>
 8002c68:	89a3      	ldrh	r3, [r4, #12]
 8002c6a:	059b      	lsls	r3, r3, #22
 8002c6c:	d506      	bpl.n	8002c7c <_puts_r+0x7c>
 8002c6e:	4628      	mov	r0, r5
 8002c70:	b008      	add	sp, #32
 8002c72:	bd70      	pop	{r4, r5, r6, pc}
 8002c74:	4628      	mov	r0, r5
 8002c76:	f002 ff69 	bl	8005b4c <__sinit>
 8002c7a:	e7d7      	b.n	8002c2c <_puts_r+0x2c>
 8002c7c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002c7e:	f003 fab7 	bl	80061f0 <__retarget_lock_release_recursive>
 8002c82:	4628      	mov	r0, r5
 8002c84:	b008      	add	sp, #32
 8002c86:	bd70      	pop	{r4, r5, r6, pc}
 8002c88:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002c8a:	f003 faaf 	bl	80061ec <__retarget_lock_acquire_recursive>
 8002c8e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002c92:	b29a      	uxth	r2, r3
 8002c94:	e7d2      	b.n	8002c3c <_puts_r+0x3c>
 8002c96:	bf00      	nop
 8002c98:	0800750c 	.word	0x0800750c

08002c9c <puts>:
 8002c9c:	4b02      	ldr	r3, [pc, #8]	; (8002ca8 <puts+0xc>)
 8002c9e:	4601      	mov	r1, r0
 8002ca0:	6818      	ldr	r0, [r3, #0]
 8002ca2:	f7ff bfad 	b.w	8002c00 <_puts_r>
 8002ca6:	bf00      	nop
 8002ca8:	20000018 	.word	0x20000018

08002cac <_sbrk_r>:
 8002cac:	b538      	push	{r3, r4, r5, lr}
 8002cae:	4c07      	ldr	r4, [pc, #28]	; (8002ccc <_sbrk_r+0x20>)
 8002cb0:	2300      	movs	r3, #0
 8002cb2:	4605      	mov	r5, r0
 8002cb4:	4608      	mov	r0, r1
 8002cb6:	6023      	str	r3, [r4, #0]
 8002cb8:	f7ff fbaa 	bl	8002410 <_sbrk>
 8002cbc:	1c43      	adds	r3, r0, #1
 8002cbe:	d000      	beq.n	8002cc2 <_sbrk_r+0x16>
 8002cc0:	bd38      	pop	{r3, r4, r5, pc}
 8002cc2:	6823      	ldr	r3, [r4, #0]
 8002cc4:	2b00      	cmp	r3, #0
 8002cc6:	d0fb      	beq.n	8002cc0 <_sbrk_r+0x14>
 8002cc8:	602b      	str	r3, [r5, #0]
 8002cca:	bd38      	pop	{r3, r4, r5, pc}
 8002ccc:	20000b28 	.word	0x20000b28

08002cd0 <strcpy>:
 8002cd0:	ea80 0201 	eor.w	r2, r0, r1
 8002cd4:	4684      	mov	ip, r0
 8002cd6:	f012 0f03 	tst.w	r2, #3
 8002cda:	d14f      	bne.n	8002d7c <strcpy+0xac>
 8002cdc:	f011 0f03 	tst.w	r1, #3
 8002ce0:	d132      	bne.n	8002d48 <strcpy+0x78>
 8002ce2:	f84d 4d04 	str.w	r4, [sp, #-4]!
 8002ce6:	f011 0f04 	tst.w	r1, #4
 8002cea:	f851 3b04 	ldr.w	r3, [r1], #4
 8002cee:	d00b      	beq.n	8002d08 <strcpy+0x38>
 8002cf0:	f1a3 3201 	sub.w	r2, r3, #16843009	; 0x1010101
 8002cf4:	439a      	bics	r2, r3
 8002cf6:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002cfa:	bf04      	itt	eq
 8002cfc:	f84c 3b04 	streq.w	r3, [ip], #4
 8002d00:	f851 3b04 	ldreq.w	r3, [r1], #4
 8002d04:	d116      	bne.n	8002d34 <strcpy+0x64>
 8002d06:	bf00      	nop
 8002d08:	f851 4b04 	ldr.w	r4, [r1], #4
 8002d0c:	f1a3 3201 	sub.w	r2, r3, #16843009	; 0x1010101
 8002d10:	439a      	bics	r2, r3
 8002d12:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002d16:	f1a4 3201 	sub.w	r2, r4, #16843009	; 0x1010101
 8002d1a:	d10b      	bne.n	8002d34 <strcpy+0x64>
 8002d1c:	f84c 3b04 	str.w	r3, [ip], #4
 8002d20:	43a2      	bics	r2, r4
 8002d22:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 8002d26:	bf04      	itt	eq
 8002d28:	f851 3b04 	ldreq.w	r3, [r1], #4
 8002d2c:	f84c 4b04 	streq.w	r4, [ip], #4
 8002d30:	d0ea      	beq.n	8002d08 <strcpy+0x38>
 8002d32:	4623      	mov	r3, r4
 8002d34:	f80c 3b01 	strb.w	r3, [ip], #1
 8002d38:	f013 0fff 	tst.w	r3, #255	; 0xff
 8002d3c:	ea4f 2333 	mov.w	r3, r3, ror #8
 8002d40:	d1f8      	bne.n	8002d34 <strcpy+0x64>
 8002d42:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002d46:	4770      	bx	lr
 8002d48:	f011 0f01 	tst.w	r1, #1
 8002d4c:	d006      	beq.n	8002d5c <strcpy+0x8c>
 8002d4e:	f811 2b01 	ldrb.w	r2, [r1], #1
 8002d52:	f80c 2b01 	strb.w	r2, [ip], #1
 8002d56:	2a00      	cmp	r2, #0
 8002d58:	bf08      	it	eq
 8002d5a:	4770      	bxeq	lr
 8002d5c:	f011 0f02 	tst.w	r1, #2
 8002d60:	d0bf      	beq.n	8002ce2 <strcpy+0x12>
 8002d62:	f831 2b02 	ldrh.w	r2, [r1], #2
 8002d66:	f012 0fff 	tst.w	r2, #255	; 0xff
 8002d6a:	bf16      	itet	ne
 8002d6c:	f82c 2b02 	strhne.w	r2, [ip], #2
 8002d70:	f88c 2000 	strbeq.w	r2, [ip]
 8002d74:	f412 4f7f 	tstne.w	r2, #65280	; 0xff00
 8002d78:	d1b3      	bne.n	8002ce2 <strcpy+0x12>
 8002d7a:	4770      	bx	lr
 8002d7c:	f811 2b01 	ldrb.w	r2, [r1], #1
 8002d80:	f80c 2b01 	strb.w	r2, [ip], #1
 8002d84:	2a00      	cmp	r2, #0
 8002d86:	d1f9      	bne.n	8002d7c <strcpy+0xac>
 8002d88:	4770      	bx	lr
 8002d8a:	bf00      	nop

08002d8c <strncpy>:
 8002d8c:	ea40 0301 	orr.w	r3, r0, r1
 8002d90:	079b      	lsls	r3, r3, #30
 8002d92:	b470      	push	{r4, r5, r6}
 8002d94:	d12a      	bne.n	8002dec <strncpy+0x60>
 8002d96:	2a03      	cmp	r2, #3
 8002d98:	d928      	bls.n	8002dec <strncpy+0x60>
 8002d9a:	460c      	mov	r4, r1
 8002d9c:	4603      	mov	r3, r0
 8002d9e:	4621      	mov	r1, r4
 8002da0:	f854 6b04 	ldr.w	r6, [r4], #4
 8002da4:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8002da8:	ea25 0506 	bic.w	r5, r5, r6
 8002dac:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8002db0:	d106      	bne.n	8002dc0 <strncpy+0x34>
 8002db2:	3a04      	subs	r2, #4
 8002db4:	2a03      	cmp	r2, #3
 8002db6:	f843 6b04 	str.w	r6, [r3], #4
 8002dba:	4621      	mov	r1, r4
 8002dbc:	d8ef      	bhi.n	8002d9e <strncpy+0x12>
 8002dbe:	b19a      	cbz	r2, 8002de8 <strncpy+0x5c>
 8002dc0:	780c      	ldrb	r4, [r1, #0]
 8002dc2:	701c      	strb	r4, [r3, #0]
 8002dc4:	3a01      	subs	r2, #1
 8002dc6:	3301      	adds	r3, #1
 8002dc8:	b13c      	cbz	r4, 8002dda <strncpy+0x4e>
 8002dca:	b16a      	cbz	r2, 8002de8 <strncpy+0x5c>
 8002dcc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8002dd0:	f803 4b01 	strb.w	r4, [r3], #1
 8002dd4:	3a01      	subs	r2, #1
 8002dd6:	2c00      	cmp	r4, #0
 8002dd8:	d1f7      	bne.n	8002dca <strncpy+0x3e>
 8002dda:	b12a      	cbz	r2, 8002de8 <strncpy+0x5c>
 8002ddc:	441a      	add	r2, r3
 8002dde:	2100      	movs	r1, #0
 8002de0:	f803 1b01 	strb.w	r1, [r3], #1
 8002de4:	4293      	cmp	r3, r2
 8002de6:	d1fb      	bne.n	8002de0 <strncpy+0x54>
 8002de8:	bc70      	pop	{r4, r5, r6}
 8002dea:	4770      	bx	lr
 8002dec:	4603      	mov	r3, r0
 8002dee:	e7e6      	b.n	8002dbe <strncpy+0x32>

08002df0 <_vfprintf_r>:
 8002df0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002df4:	b0d7      	sub	sp, #348	; 0x15c
 8002df6:	461c      	mov	r4, r3
 8002df8:	4689      	mov	r9, r1
 8002dfa:	4617      	mov	r7, r2
 8002dfc:	4605      	mov	r5, r0
 8002dfe:	9003      	str	r0, [sp, #12]
 8002e00:	f003 f9e2 	bl	80061c8 <_localeconv_r>
 8002e04:	6803      	ldr	r3, [r0, #0]
 8002e06:	9316      	str	r3, [sp, #88]	; 0x58
 8002e08:	4618      	mov	r0, r3
 8002e0a:	f7fe f819 	bl	8000e40 <strlen>
 8002e0e:	9408      	str	r4, [sp, #32]
 8002e10:	9015      	str	r0, [sp, #84]	; 0x54
 8002e12:	b11d      	cbz	r5, 8002e1c <_vfprintf_r+0x2c>
 8002e14:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002e16:	2b00      	cmp	r3, #0
 8002e18:	f000 8107 	beq.w	800302a <_vfprintf_r+0x23a>
 8002e1c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e20:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002e24:	07c8      	lsls	r0, r1, #31
 8002e26:	b293      	uxth	r3, r2
 8002e28:	d402      	bmi.n	8002e30 <_vfprintf_r+0x40>
 8002e2a:	0599      	lsls	r1, r3, #22
 8002e2c:	f140 811f 	bpl.w	800306e <_vfprintf_r+0x27e>
 8002e30:	049e      	lsls	r6, r3, #18
 8002e32:	d40a      	bmi.n	8002e4a <_vfprintf_r+0x5a>
 8002e34:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e38:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002e3c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002e40:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002e44:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002e48:	b29b      	uxth	r3, r3
 8002e4a:	071d      	lsls	r5, r3, #28
 8002e4c:	f140 80b2 	bpl.w	8002fb4 <_vfprintf_r+0x1c4>
 8002e50:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002e54:	2a00      	cmp	r2, #0
 8002e56:	f000 80ad 	beq.w	8002fb4 <_vfprintf_r+0x1c4>
 8002e5a:	f003 021a 	and.w	r2, r3, #26
 8002e5e:	2a0a      	cmp	r2, #10
 8002e60:	f000 80c9 	beq.w	8002ff6 <_vfprintf_r+0x206>
 8002e64:	2300      	movs	r3, #0
 8002e66:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003080 <_vfprintf_r+0x290>
 8002e6a:	9310      	str	r3, [sp, #64]	; 0x40
 8002e6c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002e70:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e72:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002e76:	931b      	str	r3, [sp, #108]	; 0x6c
 8002e78:	9318      	str	r3, [sp, #96]	; 0x60
 8002e7a:	9305      	str	r3, [sp, #20]
 8002e7c:	ab2d      	add	r3, sp, #180	; 0xb4
 8002e7e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002e80:	469b      	mov	fp, r3
 8002e82:	783b      	ldrb	r3, [r7, #0]
 8002e84:	f8cd 901c 	str.w	r9, [sp, #28]
 8002e88:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e8c:	2b00      	cmp	r3, #0
 8002e8e:	f000 8259 	beq.w	8003344 <_vfprintf_r+0x554>
 8002e92:	2b25      	cmp	r3, #37	; 0x25
 8002e94:	463c      	mov	r4, r7
 8002e96:	d102      	bne.n	8002e9e <_vfprintf_r+0xae>
 8002e98:	e01d      	b.n	8002ed6 <_vfprintf_r+0xe6>
 8002e9a:	2b25      	cmp	r3, #37	; 0x25
 8002e9c:	d003      	beq.n	8002ea6 <_vfprintf_r+0xb6>
 8002e9e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002ea2:	2b00      	cmp	r3, #0
 8002ea4:	d1f9      	bne.n	8002e9a <_vfprintf_r+0xaa>
 8002ea6:	1be5      	subs	r5, r4, r7
 8002ea8:	b18d      	cbz	r5, 8002ece <_vfprintf_r+0xde>
 8002eaa:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002eae:	3301      	adds	r3, #1
 8002eb0:	442a      	add	r2, r5
 8002eb2:	2b07      	cmp	r3, #7
 8002eb4:	f8cb 7000 	str.w	r7, [fp]
 8002eb8:	f8cb 5004 	str.w	r5, [fp, #4]
 8002ebc:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002ec0:	f300 80ca 	bgt.w	8003058 <_vfprintf_r+0x268>
 8002ec4:	f10b 0b08 	add.w	fp, fp, #8
 8002ec8:	9b05      	ldr	r3, [sp, #20]
 8002eca:	442b      	add	r3, r5
 8002ecc:	9305      	str	r3, [sp, #20]
 8002ece:	7823      	ldrb	r3, [r4, #0]
 8002ed0:	2b00      	cmp	r3, #0
 8002ed2:	f000 8237 	beq.w	8003344 <_vfprintf_r+0x554>
 8002ed6:	2300      	movs	r3, #0
 8002ed8:	7866      	ldrb	r6, [r4, #1]
 8002eda:	9306      	str	r3, [sp, #24]
 8002edc:	4698      	mov	r8, r3
 8002ede:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ee2:	f104 0a01 	add.w	sl, r4, #1
 8002ee6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002eea:	252b      	movs	r5, #43	; 0x2b
 8002eec:	f10a 0a01 	add.w	sl, sl, #1
 8002ef0:	f1a6 0320 	sub.w	r3, r6, #32
 8002ef4:	2b5a      	cmp	r3, #90	; 0x5a
 8002ef6:	f200 842a 	bhi.w	800374e <_vfprintf_r+0x95e>
 8002efa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002efe:	03aa      	.short	0x03aa
 8002f00:	04280428 	.word	0x04280428
 8002f04:	0428029c 	.word	0x0428029c
 8002f08:	04280428 	.word	0x04280428
 8002f0c:	042802a7 	.word	0x042802a7
 8002f10:	02c60428 	.word	0x02c60428
 8002f14:	042802d2 	.word	0x042802d2
 8002f18:	02dc02d7 	.word	0x02dc02d7
 8002f1c:	02f60428 	.word	0x02f60428
 8002f20:	026d026d 	.word	0x026d026d
 8002f24:	026d026d 	.word	0x026d026d
 8002f28:	026d026d 	.word	0x026d026d
 8002f2c:	026d026d 	.word	0x026d026d
 8002f30:	0428026d 	.word	0x0428026d
 8002f34:	04280428 	.word	0x04280428
 8002f38:	04280428 	.word	0x04280428
 8002f3c:	04280428 	.word	0x04280428
 8002f40:	042802fb 	.word	0x042802fb
 8002f44:	03f3033c 	.word	0x03f3033c
 8002f48:	02fb02fb 	.word	0x02fb02fb
 8002f4c:	042802fb 	.word	0x042802fb
 8002f50:	04280428 	.word	0x04280428
 8002f54:	03ee0428 	.word	0x03ee0428
 8002f58:	04280428 	.word	0x04280428
 8002f5c:	0428009a 	.word	0x0428009a
 8002f60:	04280428 	.word	0x04280428
 8002f64:	04280350 	.word	0x04280350
 8002f68:	04280379 	.word	0x04280379
 8002f6c:	03900428 	.word	0x03900428
 8002f70:	04280428 	.word	0x04280428
 8002f74:	04280428 	.word	0x04280428
 8002f78:	04280428 	.word	0x04280428
 8002f7c:	04280428 	.word	0x04280428
 8002f80:	042802fb 	.word	0x042802fb
 8002f84:	00c5033c 	.word	0x00c5033c
 8002f88:	02fb02fb 	.word	0x02fb02fb
 8002f8c:	03d102fb 	.word	0x03d102fb
 8002f90:	007000c5 	.word	0x007000c5
 8002f94:	03b50428 	.word	0x03b50428
 8002f98:	03c20428 	.word	0x03c20428
 8002f9c:	03de009c 	.word	0x03de009c
 8002fa0:	04280070 	.word	0x04280070
 8002fa4:	00720350 	.word	0x00720350
 8002fa8:	0428022c 	.word	0x0428022c
 8002fac:	027c0428 	.word	0x027c0428
 8002fb0:	00720428 	.word	0x00720428
 8002fb4:	4649      	mov	r1, r9
 8002fb6:	9803      	ldr	r0, [sp, #12]
 8002fb8:	f001 fca8 	bl	800490c <__swsetup_r>
 8002fbc:	b1a0      	cbz	r0, 8002fe8 <_vfprintf_r+0x1f8>
 8002fbe:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002fc2:	07d8      	lsls	r0, r3, #31
 8002fc4:	d404      	bmi.n	8002fd0 <_vfprintf_r+0x1e0>
 8002fc6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002fca:	0599      	lsls	r1, r3, #22
 8002fcc:	f140 83b7 	bpl.w	800373e <_vfprintf_r+0x94e>
 8002fd0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002fd4:	9305      	str	r3, [sp, #20]
 8002fd6:	9805      	ldr	r0, [sp, #20]
 8002fd8:	b057      	add	sp, #348	; 0x15c
 8002fda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002fde:	f048 0820 	orr.w	r8, r8, #32
 8002fe2:	f89a 6000 	ldrb.w	r6, [sl]
 8002fe6:	e781      	b.n	8002eec <_vfprintf_r+0xfc>
 8002fe8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002fec:	f003 021a 	and.w	r2, r3, #26
 8002ff0:	2a0a      	cmp	r2, #10
 8002ff2:	f47f af37 	bne.w	8002e64 <_vfprintf_r+0x74>
 8002ff6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002ffa:	2a00      	cmp	r2, #0
 8002ffc:	f6ff af32 	blt.w	8002e64 <_vfprintf_r+0x74>
 8003000:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003004:	07d2      	lsls	r2, r2, #31
 8003006:	d405      	bmi.n	8003014 <_vfprintf_r+0x224>
 8003008:	059b      	lsls	r3, r3, #22
 800300a:	d403      	bmi.n	8003014 <_vfprintf_r+0x224>
 800300c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003010:	f003 f8ee 	bl	80061f0 <__retarget_lock_release_recursive>
 8003014:	4623      	mov	r3, r4
 8003016:	463a      	mov	r2, r7
 8003018:	4649      	mov	r1, r9
 800301a:	9803      	ldr	r0, [sp, #12]
 800301c:	f001 fc26 	bl	800486c <__sbprintf>
 8003020:	9005      	str	r0, [sp, #20]
 8003022:	9805      	ldr	r0, [sp, #20]
 8003024:	b057      	add	sp, #348	; 0x15c
 8003026:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800302a:	9803      	ldr	r0, [sp, #12]
 800302c:	f002 fd8e 	bl	8005b4c <__sinit>
 8003030:	e6f4      	b.n	8002e1c <_vfprintf_r+0x2c>
 8003032:	f048 0810 	orr.w	r8, r8, #16
 8003036:	f018 0f20 	tst.w	r8, #32
 800303a:	f000 836c 	beq.w	8003716 <_vfprintf_r+0x926>
 800303e:	9c08      	ldr	r4, [sp, #32]
 8003040:	3407      	adds	r4, #7
 8003042:	f024 0307 	bic.w	r3, r4, #7
 8003046:	e9d3 4500 	ldrd	r4, r5, [r3]
 800304a:	f103 0208 	add.w	r2, r3, #8
 800304e:	9208      	str	r2, [sp, #32]
 8003050:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003054:	2200      	movs	r2, #0
 8003056:	e18c      	b.n	8003372 <_vfprintf_r+0x582>
 8003058:	aa2a      	add	r2, sp, #168	; 0xa8
 800305a:	9907      	ldr	r1, [sp, #28]
 800305c:	9803      	ldr	r0, [sp, #12]
 800305e:	f003 ff11 	bl	8006e84 <__sprint_r>
 8003062:	2800      	cmp	r0, #0
 8003064:	f041 8376 	bne.w	8004754 <_vfprintf_r+0x1964>
 8003068:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800306c:	e72c      	b.n	8002ec8 <_vfprintf_r+0xd8>
 800306e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003072:	f003 f8bb 	bl	80061ec <__retarget_lock_acquire_recursive>
 8003076:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800307a:	b293      	uxth	r3, r2
 800307c:	e6d8      	b.n	8002e30 <_vfprintf_r+0x40>
 800307e:	bf00      	nop
	...
 8003088:	4643      	mov	r3, r8
 800308a:	069f      	lsls	r7, r3, #26
 800308c:	f140 832f 	bpl.w	80036ee <_vfprintf_r+0x8fe>
 8003090:	9c08      	ldr	r4, [sp, #32]
 8003092:	3407      	adds	r4, #7
 8003094:	f024 0407 	bic.w	r4, r4, #7
 8003098:	e9d4 0100 	ldrd	r0, r1, [r4]
 800309c:	f104 0208 	add.w	r2, r4, #8
 80030a0:	9208      	str	r2, [sp, #32]
 80030a2:	4604      	mov	r4, r0
 80030a4:	460d      	mov	r5, r1
 80030a6:	2800      	cmp	r0, #0
 80030a8:	f171 0200 	sbcs.w	r2, r1, #0
 80030ac:	da05      	bge.n	80030ba <_vfprintf_r+0x2ca>
 80030ae:	222d      	movs	r2, #45	; 0x2d
 80030b0:	4264      	negs	r4, r4
 80030b2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80030b6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80030ba:	aa56      	add	r2, sp, #344	; 0x158
 80030bc:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030c0:	9204      	str	r2, [sp, #16]
 80030c2:	f000 84b2 	beq.w	8003a2a <_vfprintf_r+0xc3a>
 80030c6:	2201      	movs	r2, #1
 80030c8:	ea54 0105 	orrs.w	r1, r4, r5
 80030cc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80030d0:	f040 8159 	bne.w	8003386 <_vfprintf_r+0x596>
 80030d4:	f1b9 0f00 	cmp.w	r9, #0
 80030d8:	f040 8619 	bne.w	8003d0e <_vfprintf_r+0xf1e>
 80030dc:	2a00      	cmp	r2, #0
 80030de:	f040 8508 	bne.w	8003af2 <_vfprintf_r+0xd02>
 80030e2:	f013 0301 	ands.w	r3, r3, #1
 80030e6:	af56      	add	r7, sp, #344	; 0x158
 80030e8:	9309      	str	r3, [sp, #36]	; 0x24
 80030ea:	d002      	beq.n	80030f2 <_vfprintf_r+0x302>
 80030ec:	2330      	movs	r3, #48	; 0x30
 80030ee:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80030f2:	2300      	movs	r3, #0
 80030f4:	930a      	str	r3, [sp, #40]	; 0x28
 80030f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80030f8:	9314      	str	r3, [sp, #80]	; 0x50
 80030fa:	9311      	str	r3, [sp, #68]	; 0x44
 80030fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80030fe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003102:	454b      	cmp	r3, r9
 8003104:	bfb8      	it	lt
 8003106:	464b      	movlt	r3, r9
 8003108:	9304      	str	r3, [sp, #16]
 800310a:	b112      	cbz	r2, 8003112 <_vfprintf_r+0x322>
 800310c:	9b04      	ldr	r3, [sp, #16]
 800310e:	3301      	adds	r3, #1
 8003110:	9304      	str	r3, [sp, #16]
 8003112:	f018 0302 	ands.w	r3, r8, #2
 8003116:	930b      	str	r3, [sp, #44]	; 0x2c
 8003118:	d002      	beq.n	8003120 <_vfprintf_r+0x330>
 800311a:	9b04      	ldr	r3, [sp, #16]
 800311c:	3302      	adds	r3, #2
 800311e:	9304      	str	r3, [sp, #16]
 8003120:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8003124:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003126:	930e      	str	r3, [sp, #56]	; 0x38
 8003128:	d13f      	bne.n	80031aa <_vfprintf_r+0x3ba>
 800312a:	9b06      	ldr	r3, [sp, #24]
 800312c:	9904      	ldr	r1, [sp, #16]
 800312e:	1a5d      	subs	r5, r3, r1
 8003130:	2d00      	cmp	r5, #0
 8003132:	dd3a      	ble.n	80031aa <_vfprintf_r+0x3ba>
 8003134:	2d10      	cmp	r5, #16
 8003136:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003138:	dd29      	ble.n	800318e <_vfprintf_r+0x39e>
 800313a:	4659      	mov	r1, fp
 800313c:	4620      	mov	r0, r4
 800313e:	9620      	str	r6, [sp, #128]	; 0x80
 8003140:	2310      	movs	r3, #16
 8003142:	9c03      	ldr	r4, [sp, #12]
 8003144:	9e07      	ldr	r6, [sp, #28]
 8003146:	46bb      	mov	fp, r7
 8003148:	e004      	b.n	8003154 <_vfprintf_r+0x364>
 800314a:	3d10      	subs	r5, #16
 800314c:	2d10      	cmp	r5, #16
 800314e:	f101 0108 	add.w	r1, r1, #8
 8003152:	dd18      	ble.n	8003186 <_vfprintf_r+0x396>
 8003154:	3201      	adds	r2, #1
 8003156:	4fba      	ldr	r7, [pc, #744]	; (8003440 <_vfprintf_r+0x650>)
 8003158:	3010      	adds	r0, #16
 800315a:	2a07      	cmp	r2, #7
 800315c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003160:	e9c1 7300 	strd	r7, r3, [r1]
 8003164:	ddf1      	ble.n	800314a <_vfprintf_r+0x35a>
 8003166:	aa2a      	add	r2, sp, #168	; 0xa8
 8003168:	4631      	mov	r1, r6
 800316a:	4620      	mov	r0, r4
 800316c:	930c      	str	r3, [sp, #48]	; 0x30
 800316e:	f003 fe89 	bl	8006e84 <__sprint_r>
 8003172:	2800      	cmp	r0, #0
 8003174:	f040 843d 	bne.w	80039f2 <_vfprintf_r+0xc02>
 8003178:	3d10      	subs	r5, #16
 800317a:	2d10      	cmp	r5, #16
 800317c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003180:	a92d      	add	r1, sp, #180	; 0xb4
 8003182:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003184:	dce6      	bgt.n	8003154 <_vfprintf_r+0x364>
 8003186:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003188:	465f      	mov	r7, fp
 800318a:	4604      	mov	r4, r0
 800318c:	468b      	mov	fp, r1
 800318e:	3201      	adds	r2, #1
 8003190:	4bab      	ldr	r3, [pc, #684]	; (8003440 <_vfprintf_r+0x650>)
 8003192:	442c      	add	r4, r5
 8003194:	2a07      	cmp	r2, #7
 8003196:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800319a:	e9cb 3500 	strd	r3, r5, [fp]
 800319e:	f300 84ff 	bgt.w	8003ba0 <_vfprintf_r+0xdb0>
 80031a2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031a6:	f10b 0b08 	add.w	fp, fp, #8
 80031aa:	b172      	cbz	r2, 80031ca <_vfprintf_r+0x3da>
 80031ac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031ae:	3201      	adds	r2, #1
 80031b0:	3401      	adds	r4, #1
 80031b2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80031b6:	2101      	movs	r1, #1
 80031b8:	2a07      	cmp	r2, #7
 80031ba:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031be:	e9cb 0100 	strd	r0, r1, [fp]
 80031c2:	f300 8418 	bgt.w	80039f6 <_vfprintf_r+0xc06>
 80031c6:	f10b 0b08 	add.w	fp, fp, #8
 80031ca:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80031cc:	b16b      	cbz	r3, 80031ea <_vfprintf_r+0x3fa>
 80031ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031d0:	3301      	adds	r3, #1
 80031d2:	3402      	adds	r4, #2
 80031d4:	a923      	add	r1, sp, #140	; 0x8c
 80031d6:	2202      	movs	r2, #2
 80031d8:	2b07      	cmp	r3, #7
 80031da:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80031de:	e9cb 1200 	strd	r1, r2, [fp]
 80031e2:	f300 8415 	bgt.w	8003a10 <_vfprintf_r+0xc20>
 80031e6:	f10b 0b08 	add.w	fp, fp, #8
 80031ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80031ec:	2b80      	cmp	r3, #128	; 0x80
 80031ee:	f000 8331 	beq.w	8003854 <_vfprintf_r+0xa64>
 80031f2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80031f4:	eba9 0503 	sub.w	r5, r9, r3
 80031f8:	2d00      	cmp	r5, #0
 80031fa:	dd37      	ble.n	800326c <_vfprintf_r+0x47c>
 80031fc:	2d10      	cmp	r5, #16
 80031fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003200:	4b90      	ldr	r3, [pc, #576]	; (8003444 <_vfprintf_r+0x654>)
 8003202:	dd28      	ble.n	8003256 <_vfprintf_r+0x466>
 8003204:	4659      	mov	r1, fp
 8003206:	4620      	mov	r0, r4
 8003208:	46bb      	mov	fp, r7
 800320a:	f04f 0910 	mov.w	r9, #16
 800320e:	4637      	mov	r7, r6
 8003210:	461c      	mov	r4, r3
 8003212:	9e07      	ldr	r6, [sp, #28]
 8003214:	e004      	b.n	8003220 <_vfprintf_r+0x430>
 8003216:	3d10      	subs	r5, #16
 8003218:	2d10      	cmp	r5, #16
 800321a:	f101 0108 	add.w	r1, r1, #8
 800321e:	dd15      	ble.n	800324c <_vfprintf_r+0x45c>
 8003220:	3201      	adds	r2, #1
 8003222:	3010      	adds	r0, #16
 8003224:	2a07      	cmp	r2, #7
 8003226:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800322a:	e9c1 4900 	strd	r4, r9, [r1]
 800322e:	ddf2      	ble.n	8003216 <_vfprintf_r+0x426>
 8003230:	aa2a      	add	r2, sp, #168	; 0xa8
 8003232:	4631      	mov	r1, r6
 8003234:	9803      	ldr	r0, [sp, #12]
 8003236:	f003 fe25 	bl	8006e84 <__sprint_r>
 800323a:	2800      	cmp	r0, #0
 800323c:	f040 83d9 	bne.w	80039f2 <_vfprintf_r+0xc02>
 8003240:	3d10      	subs	r5, #16
 8003242:	2d10      	cmp	r5, #16
 8003244:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003248:	a92d      	add	r1, sp, #180	; 0xb4
 800324a:	dce9      	bgt.n	8003220 <_vfprintf_r+0x430>
 800324c:	463e      	mov	r6, r7
 800324e:	4623      	mov	r3, r4
 8003250:	465f      	mov	r7, fp
 8003252:	4604      	mov	r4, r0
 8003254:	468b      	mov	fp, r1
 8003256:	3201      	adds	r2, #1
 8003258:	442c      	add	r4, r5
 800325a:	2a07      	cmp	r2, #7
 800325c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003260:	e9cb 3500 	strd	r3, r5, [fp]
 8003264:	f300 83ef 	bgt.w	8003a46 <_vfprintf_r+0xc56>
 8003268:	f10b 0b08 	add.w	fp, fp, #8
 800326c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003270:	f040 8280 	bne.w	8003774 <_vfprintf_r+0x984>
 8003274:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003276:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003278:	f8cb 7000 	str.w	r7, [fp]
 800327c:	3301      	adds	r3, #1
 800327e:	4414      	add	r4, r2
 8003280:	2b07      	cmp	r3, #7
 8003282:	942c      	str	r4, [sp, #176]	; 0xb0
 8003284:	f8cb 2004 	str.w	r2, [fp, #4]
 8003288:	932b      	str	r3, [sp, #172]	; 0xac
 800328a:	f300 8392 	bgt.w	80039b2 <_vfprintf_r+0xbc2>
 800328e:	f10b 0b08 	add.w	fp, fp, #8
 8003292:	f018 0f04 	tst.w	r8, #4
 8003296:	d03b      	beq.n	8003310 <_vfprintf_r+0x520>
 8003298:	9b06      	ldr	r3, [sp, #24]
 800329a:	9a04      	ldr	r2, [sp, #16]
 800329c:	1a9d      	subs	r5, r3, r2
 800329e:	2d00      	cmp	r5, #0
 80032a0:	dd36      	ble.n	8003310 <_vfprintf_r+0x520>
 80032a2:	2d10      	cmp	r5, #16
 80032a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032a6:	dd21      	ble.n	80032ec <_vfprintf_r+0x4fc>
 80032a8:	2610      	movs	r6, #16
 80032aa:	9f03      	ldr	r7, [sp, #12]
 80032ac:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80032b0:	e004      	b.n	80032bc <_vfprintf_r+0x4cc>
 80032b2:	3d10      	subs	r5, #16
 80032b4:	2d10      	cmp	r5, #16
 80032b6:	f10b 0b08 	add.w	fp, fp, #8
 80032ba:	dd17      	ble.n	80032ec <_vfprintf_r+0x4fc>
 80032bc:	3301      	adds	r3, #1
 80032be:	4a60      	ldr	r2, [pc, #384]	; (8003440 <_vfprintf_r+0x650>)
 80032c0:	3410      	adds	r4, #16
 80032c2:	2b07      	cmp	r3, #7
 80032c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032c8:	e9cb 2600 	strd	r2, r6, [fp]
 80032cc:	ddf1      	ble.n	80032b2 <_vfprintf_r+0x4c2>
 80032ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d0:	4641      	mov	r1, r8
 80032d2:	4638      	mov	r0, r7
 80032d4:	f003 fdd6 	bl	8006e84 <__sprint_r>
 80032d8:	2800      	cmp	r0, #0
 80032da:	f040 856c 	bne.w	8003db6 <_vfprintf_r+0xfc6>
 80032de:	3d10      	subs	r5, #16
 80032e0:	2d10      	cmp	r5, #16
 80032e2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ea:	dce7      	bgt.n	80032bc <_vfprintf_r+0x4cc>
 80032ec:	3301      	adds	r3, #1
 80032ee:	4a54      	ldr	r2, [pc, #336]	; (8003440 <_vfprintf_r+0x650>)
 80032f0:	442c      	add	r4, r5
 80032f2:	2b07      	cmp	r3, #7
 80032f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032f8:	e9cb 2500 	strd	r2, r5, [fp]
 80032fc:	dd08      	ble.n	8003310 <_vfprintf_r+0x520>
 80032fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003300:	9907      	ldr	r1, [sp, #28]
 8003302:	9803      	ldr	r0, [sp, #12]
 8003304:	f003 fdbe 	bl	8006e84 <__sprint_r>
 8003308:	2800      	cmp	r0, #0
 800330a:	f040 82e9 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 800330e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003310:	9904      	ldr	r1, [sp, #16]
 8003312:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8003316:	428a      	cmp	r2, r1
 8003318:	bfac      	ite	ge
 800331a:	189b      	addge	r3, r3, r2
 800331c:	185b      	addlt	r3, r3, r1
 800331e:	9305      	str	r3, [sp, #20]
 8003320:	2c00      	cmp	r4, #0
 8003322:	f040 82d5 	bne.w	80038d0 <_vfprintf_r+0xae0>
 8003326:	2300      	movs	r3, #0
 8003328:	932b      	str	r3, [sp, #172]	; 0xac
 800332a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800332c:	b11b      	cbz	r3, 8003336 <_vfprintf_r+0x546>
 800332e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003330:	9803      	ldr	r0, [sp, #12]
 8003332:	f002 fcad 	bl	8005c90 <_free_r>
 8003336:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800333a:	4657      	mov	r7, sl
 800333c:	783b      	ldrb	r3, [r7, #0]
 800333e:	2b00      	cmp	r3, #0
 8003340:	f47f ada7 	bne.w	8002e92 <_vfprintf_r+0xa2>
 8003344:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8003346:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800334a:	2b00      	cmp	r3, #0
 800334c:	f041 80e7 	bne.w	800451e <_vfprintf_r+0x172e>
 8003350:	2300      	movs	r3, #0
 8003352:	932b      	str	r3, [sp, #172]	; 0xac
 8003354:	e2cb      	b.n	80038ee <_vfprintf_r+0xafe>
 8003356:	4643      	mov	r3, r8
 8003358:	069a      	lsls	r2, r3, #26
 800335a:	f140 814e 	bpl.w	80035fa <_vfprintf_r+0x80a>
 800335e:	9c08      	ldr	r4, [sp, #32]
 8003360:	3407      	adds	r4, #7
 8003362:	f024 0207 	bic.w	r2, r4, #7
 8003366:	f102 0108 	add.w	r1, r2, #8
 800336a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800336e:	9108      	str	r1, [sp, #32]
 8003370:	2201      	movs	r2, #1
 8003372:	2100      	movs	r1, #0
 8003374:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003378:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800337c:	a956      	add	r1, sp, #344	; 0x158
 800337e:	9104      	str	r1, [sp, #16]
 8003380:	f47f aea2 	bne.w	80030c8 <_vfprintf_r+0x2d8>
 8003384:	4698      	mov	r8, r3
 8003386:	2a01      	cmp	r2, #1
 8003388:	f000 8350 	beq.w	8003a2c <_vfprintf_r+0xc3c>
 800338c:	2a02      	cmp	r2, #2
 800338e:	f000 831b 	beq.w	80039c8 <_vfprintf_r+0xbd8>
 8003392:	a956      	add	r1, sp, #344	; 0x158
 8003394:	e000      	b.n	8003398 <_vfprintf_r+0x5a8>
 8003396:	4639      	mov	r1, r7
 8003398:	08e2      	lsrs	r2, r4, #3
 800339a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800339e:	08e8      	lsrs	r0, r5, #3
 80033a0:	f004 0307 	and.w	r3, r4, #7
 80033a4:	4605      	mov	r5, r0
 80033a6:	4614      	mov	r4, r2
 80033a8:	3330      	adds	r3, #48	; 0x30
 80033aa:	ea54 0205 	orrs.w	r2, r4, r5
 80033ae:	f801 3c01 	strb.w	r3, [r1, #-1]
 80033b2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80033b6:	d1ee      	bne.n	8003396 <_vfprintf_r+0x5a6>
 80033b8:	f018 0f01 	tst.w	r8, #1
 80033bc:	f000 8314 	beq.w	80039e8 <_vfprintf_r+0xbf8>
 80033c0:	2b30      	cmp	r3, #48	; 0x30
 80033c2:	f000 8311 	beq.w	80039e8 <_vfprintf_r+0xbf8>
 80033c6:	9a04      	ldr	r2, [sp, #16]
 80033c8:	3902      	subs	r1, #2
 80033ca:	2330      	movs	r3, #48	; 0x30
 80033cc:	1a52      	subs	r2, r2, r1
 80033ce:	f807 3c01 	strb.w	r3, [r7, #-1]
 80033d2:	9209      	str	r2, [sp, #36]	; 0x24
 80033d4:	460f      	mov	r7, r1
 80033d6:	e68c      	b.n	80030f2 <_vfprintf_r+0x302>
 80033d8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80033dc:	2200      	movs	r2, #0
 80033de:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80033e2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80033e6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80033ea:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80033ee:	2b09      	cmp	r3, #9
 80033f0:	d9f5      	bls.n	80033de <_vfprintf_r+0x5ee>
 80033f2:	9206      	str	r2, [sp, #24]
 80033f4:	e57c      	b.n	8002ef0 <_vfprintf_r+0x100>
 80033f6:	4b14      	ldr	r3, [pc, #80]	; (8003448 <_vfprintf_r+0x658>)
 80033f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80033fa:	f018 0f20 	tst.w	r8, #32
 80033fe:	f000 8114 	beq.w	800362a <_vfprintf_r+0x83a>
 8003402:	9c08      	ldr	r4, [sp, #32]
 8003404:	3407      	adds	r4, #7
 8003406:	f024 0307 	bic.w	r3, r4, #7
 800340a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800340e:	f103 0208 	add.w	r2, r3, #8
 8003412:	9208      	str	r2, [sp, #32]
 8003414:	f018 0f01 	tst.w	r8, #1
 8003418:	d009      	beq.n	800342e <_vfprintf_r+0x63e>
 800341a:	ea54 0305 	orrs.w	r3, r4, r5
 800341e:	d006      	beq.n	800342e <_vfprintf_r+0x63e>
 8003420:	2330      	movs	r3, #48	; 0x30
 8003422:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8003426:	f048 0802 	orr.w	r8, r8, #2
 800342a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800342e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003432:	2202      	movs	r2, #2
 8003434:	e79d      	b.n	8003372 <_vfprintf_r+0x582>
 8003436:	f048 0801 	orr.w	r8, r8, #1
 800343a:	f89a 6000 	ldrb.w	r6, [sl]
 800343e:	e555      	b.n	8002eec <_vfprintf_r+0xfc>
 8003440:	08007554 	.word	0x08007554
 8003444:	08007564 	.word	0x08007564
 8003448:	08007520 	.word	0x08007520
 800344c:	9e03      	ldr	r6, [sp, #12]
 800344e:	4630      	mov	r0, r6
 8003450:	f002 feba 	bl	80061c8 <_localeconv_r>
 8003454:	6843      	ldr	r3, [r0, #4]
 8003456:	9318      	str	r3, [sp, #96]	; 0x60
 8003458:	4618      	mov	r0, r3
 800345a:	f7fd fcf1 	bl	8000e40 <strlen>
 800345e:	901b      	str	r0, [sp, #108]	; 0x6c
 8003460:	4604      	mov	r4, r0
 8003462:	4630      	mov	r0, r6
 8003464:	f002 feb0 	bl	80061c8 <_localeconv_r>
 8003468:	6883      	ldr	r3, [r0, #8]
 800346a:	931a      	str	r3, [sp, #104]	; 0x68
 800346c:	2c00      	cmp	r4, #0
 800346e:	f43f adb8 	beq.w	8002fe2 <_vfprintf_r+0x1f2>
 8003472:	f89a 6000 	ldrb.w	r6, [sl]
 8003476:	2b00      	cmp	r3, #0
 8003478:	f43f ad38 	beq.w	8002eec <_vfprintf_r+0xfc>
 800347c:	781b      	ldrb	r3, [r3, #0]
 800347e:	2b00      	cmp	r3, #0
 8003480:	f43f ad34 	beq.w	8002eec <_vfprintf_r+0xfc>
 8003484:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003488:	e530      	b.n	8002eec <_vfprintf_r+0xfc>
 800348a:	9b08      	ldr	r3, [sp, #32]
 800348c:	f89a 6000 	ldrb.w	r6, [sl]
 8003490:	681a      	ldr	r2, [r3, #0]
 8003492:	9206      	str	r2, [sp, #24]
 8003494:	2a00      	cmp	r2, #0
 8003496:	f103 0304 	add.w	r3, r3, #4
 800349a:	f2c0 8697 	blt.w	80041cc <_vfprintf_r+0x13dc>
 800349e:	9308      	str	r3, [sp, #32]
 80034a0:	e524      	b.n	8002eec <_vfprintf_r+0xfc>
 80034a2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80034a6:	f89a 6000 	ldrb.w	r6, [sl]
 80034aa:	e51f      	b.n	8002eec <_vfprintf_r+0xfc>
 80034ac:	f89a 6000 	ldrb.w	r6, [sl]
 80034b0:	f048 0804 	orr.w	r8, r8, #4
 80034b4:	e51a      	b.n	8002eec <_vfprintf_r+0xfc>
 80034b6:	f89a 6000 	ldrb.w	r6, [sl]
 80034ba:	2e2a      	cmp	r6, #42	; 0x2a
 80034bc:	f10a 0201 	add.w	r2, sl, #1
 80034c0:	f001 81b0 	beq.w	8004824 <_vfprintf_r+0x1a34>
 80034c4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80034c8:	2b09      	cmp	r3, #9
 80034ca:	4692      	mov	sl, r2
 80034cc:	f04f 0900 	mov.w	r9, #0
 80034d0:	f63f ad0e 	bhi.w	8002ef0 <_vfprintf_r+0x100>
 80034d4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80034d8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80034dc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80034e0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80034e4:	2b09      	cmp	r3, #9
 80034e6:	d9f5      	bls.n	80034d4 <_vfprintf_r+0x6e4>
 80034e8:	e502      	b.n	8002ef0 <_vfprintf_r+0x100>
 80034ea:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80034ee:	f89a 6000 	ldrb.w	r6, [sl]
 80034f2:	e4fb      	b.n	8002eec <_vfprintf_r+0xfc>
 80034f4:	9c08      	ldr	r4, [sp, #32]
 80034f6:	3407      	adds	r4, #7
 80034f8:	f024 0407 	bic.w	r4, r4, #7
 80034fc:	ed94 7b00 	vldr	d7, [r4]
 8003500:	ec52 1b17 	vmov	r1, r2, d7
 8003504:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003508:	931d      	str	r3, [sp, #116]	; 0x74
 800350a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800350e:	3408      	adds	r4, #8
 8003510:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003514:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003518:	4bba      	ldr	r3, [pc, #744]	; (8003804 <_vfprintf_r+0xa14>)
 800351a:	9408      	str	r4, [sp, #32]
 800351c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003520:	f7fd fdd6 	bl	80010d0 <__aeabi_dcmpun>
 8003524:	2800      	cmp	r0, #0
 8003526:	f040 846f 	bne.w	8003e08 <_vfprintf_r+0x1018>
 800352a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800352e:	4bb5      	ldr	r3, [pc, #724]	; (8003804 <_vfprintf_r+0xa14>)
 8003530:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003534:	f7fd fdae 	bl	8001094 <__aeabi_dcmple>
 8003538:	2800      	cmp	r0, #0
 800353a:	f040 8465 	bne.w	8003e08 <_vfprintf_r+0x1018>
 800353e:	2200      	movs	r2, #0
 8003540:	2300      	movs	r3, #0
 8003542:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003546:	f7fd fd9b 	bl	8001080 <__aeabi_dcmplt>
 800354a:	2800      	cmp	r0, #0
 800354c:	f040 855b 	bne.w	8004006 <_vfprintf_r+0x1216>
 8003550:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003554:	4fac      	ldr	r7, [pc, #688]	; (8003808 <_vfprintf_r+0xa18>)
 8003556:	4bad      	ldr	r3, [pc, #692]	; (800380c <_vfprintf_r+0xa1c>)
 8003558:	2000      	movs	r0, #0
 800355a:	2103      	movs	r1, #3
 800355c:	9104      	str	r1, [sp, #16]
 800355e:	900a      	str	r0, [sp, #40]	; 0x28
 8003560:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8003564:	2e47      	cmp	r6, #71	; 0x47
 8003566:	bfd8      	it	le
 8003568:	461f      	movle	r7, r3
 800356a:	9109      	str	r1, [sp, #36]	; 0x24
 800356c:	4681      	mov	r9, r0
 800356e:	900f      	str	r0, [sp, #60]	; 0x3c
 8003570:	9014      	str	r0, [sp, #80]	; 0x50
 8003572:	9011      	str	r0, [sp, #68]	; 0x44
 8003574:	e5c9      	b.n	800310a <_vfprintf_r+0x31a>
 8003576:	9808      	ldr	r0, [sp, #32]
 8003578:	2300      	movs	r3, #0
 800357a:	6801      	ldr	r1, [r0, #0]
 800357c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003580:	461a      	mov	r2, r3
 8003582:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8003586:	2301      	movs	r3, #1
 8003588:	1d01      	adds	r1, r0, #4
 800358a:	9304      	str	r3, [sp, #16]
 800358c:	920a      	str	r2, [sp, #40]	; 0x28
 800358e:	4691      	mov	r9, r2
 8003590:	920f      	str	r2, [sp, #60]	; 0x3c
 8003592:	9214      	str	r2, [sp, #80]	; 0x50
 8003594:	9211      	str	r2, [sp, #68]	; 0x44
 8003596:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800359a:	af3d      	add	r7, sp, #244	; 0xf4
 800359c:	e5b9      	b.n	8003112 <_vfprintf_r+0x322>
 800359e:	9b08      	ldr	r3, [sp, #32]
 80035a0:	681f      	ldr	r7, [r3, #0]
 80035a2:	2500      	movs	r5, #0
 80035a4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80035a8:	1d1c      	adds	r4, r3, #4
 80035aa:	2f00      	cmp	r7, #0
 80035ac:	f000 8639 	beq.w	8004222 <_vfprintf_r+0x1432>
 80035b0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80035b4:	f000 8711 	beq.w	80043da <_vfprintf_r+0x15ea>
 80035b8:	464a      	mov	r2, r9
 80035ba:	4629      	mov	r1, r5
 80035bc:	4638      	mov	r0, r7
 80035be:	f7fd fcaf 	bl	8000f20 <memchr>
 80035c2:	900a      	str	r0, [sp, #40]	; 0x28
 80035c4:	2800      	cmp	r0, #0
 80035c6:	f000 85e7 	beq.w	8004198 <_vfprintf_r+0x13a8>
 80035ca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80035cc:	1bdb      	subs	r3, r3, r7
 80035ce:	9309      	str	r3, [sp, #36]	; 0x24
 80035d0:	46a9      	mov	r9, r5
 80035d2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035d6:	9408      	str	r4, [sp, #32]
 80035d8:	9304      	str	r3, [sp, #16]
 80035da:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80035de:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80035e2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80035e6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80035ea:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035ee:	e58c      	b.n	800310a <_vfprintf_r+0x31a>
 80035f0:	f048 0310 	orr.w	r3, r8, #16
 80035f4:	069a      	lsls	r2, r3, #26
 80035f6:	f53f aeb2 	bmi.w	800335e <_vfprintf_r+0x56e>
 80035fa:	9a08      	ldr	r2, [sp, #32]
 80035fc:	06df      	lsls	r7, r3, #27
 80035fe:	f102 0104 	add.w	r1, r2, #4
 8003602:	f100 837e 	bmi.w	8003d02 <_vfprintf_r+0xf12>
 8003606:	065d      	lsls	r5, r3, #25
 8003608:	9a08      	ldr	r2, [sp, #32]
 800360a:	f100 84e4 	bmi.w	8003fd6 <_vfprintf_r+0x11e6>
 800360e:	059c      	lsls	r4, r3, #22
 8003610:	f140 8377 	bpl.w	8003d02 <_vfprintf_r+0xf12>
 8003614:	7814      	ldrb	r4, [r2, #0]
 8003616:	9108      	str	r1, [sp, #32]
 8003618:	2500      	movs	r5, #0
 800361a:	2201      	movs	r2, #1
 800361c:	e6a9      	b.n	8003372 <_vfprintf_r+0x582>
 800361e:	4b7c      	ldr	r3, [pc, #496]	; (8003810 <_vfprintf_r+0xa20>)
 8003620:	9317      	str	r3, [sp, #92]	; 0x5c
 8003622:	f018 0f20 	tst.w	r8, #32
 8003626:	f47f aeec 	bne.w	8003402 <_vfprintf_r+0x612>
 800362a:	9a08      	ldr	r2, [sp, #32]
 800362c:	f018 0f10 	tst.w	r8, #16
 8003630:	f102 0304 	add.w	r3, r2, #4
 8003634:	f040 8354 	bne.w	8003ce0 <_vfprintf_r+0xef0>
 8003638:	f018 0f40 	tst.w	r8, #64	; 0x40
 800363c:	9a08      	ldr	r2, [sp, #32]
 800363e:	f040 84d0 	bne.w	8003fe2 <_vfprintf_r+0x11f2>
 8003642:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003646:	f000 834b 	beq.w	8003ce0 <_vfprintf_r+0xef0>
 800364a:	7814      	ldrb	r4, [r2, #0]
 800364c:	9308      	str	r3, [sp, #32]
 800364e:	2500      	movs	r5, #0
 8003650:	e6e0      	b.n	8003414 <_vfprintf_r+0x624>
 8003652:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8003656:	f89a 6000 	ldrb.w	r6, [sl]
 800365a:	2b00      	cmp	r3, #0
 800365c:	f47f ac46 	bne.w	8002eec <_vfprintf_r+0xfc>
 8003660:	2320      	movs	r3, #32
 8003662:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003666:	e441      	b.n	8002eec <_vfprintf_r+0xfc>
 8003668:	f89a 6000 	ldrb.w	r6, [sl]
 800366c:	2e6c      	cmp	r6, #108	; 0x6c
 800366e:	bf03      	ittte	eq
 8003670:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003674:	f048 0820 	orreq.w	r8, r8, #32
 8003678:	f10a 0a01 	addeq.w	sl, sl, #1
 800367c:	f048 0810 	orrne.w	r8, r8, #16
 8003680:	e434      	b.n	8002eec <_vfprintf_r+0xfc>
 8003682:	9a08      	ldr	r2, [sp, #32]
 8003684:	f018 0f20 	tst.w	r8, #32
 8003688:	f852 3b04 	ldr.w	r3, [r2], #4
 800368c:	9208      	str	r2, [sp, #32]
 800368e:	f000 83a1 	beq.w	8003dd4 <_vfprintf_r+0xfe4>
 8003692:	9a05      	ldr	r2, [sp, #20]
 8003694:	4610      	mov	r0, r2
 8003696:	17d1      	asrs	r1, r2, #31
 8003698:	e9c3 0100 	strd	r0, r1, [r3]
 800369c:	4657      	mov	r7, sl
 800369e:	e64d      	b.n	800333c <_vfprintf_r+0x54c>
 80036a0:	f89a 6000 	ldrb.w	r6, [sl]
 80036a4:	2e68      	cmp	r6, #104	; 0x68
 80036a6:	bf03      	ittte	eq
 80036a8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80036ac:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80036b0:	f10a 0a01 	addeq.w	sl, sl, #1
 80036b4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80036b8:	e418      	b.n	8002eec <_vfprintf_r+0xfc>
 80036ba:	9908      	ldr	r1, [sp, #32]
 80036bc:	4b55      	ldr	r3, [pc, #340]	; (8003814 <_vfprintf_r+0xa24>)
 80036be:	680c      	ldr	r4, [r1, #0]
 80036c0:	9317      	str	r3, [sp, #92]	; 0x5c
 80036c2:	f647 0230 	movw	r2, #30768	; 0x7830
 80036c6:	3104      	adds	r1, #4
 80036c8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80036cc:	f048 0302 	orr.w	r3, r8, #2
 80036d0:	9108      	str	r1, [sp, #32]
 80036d2:	2500      	movs	r5, #0
 80036d4:	2202      	movs	r2, #2
 80036d6:	2678      	movs	r6, #120	; 0x78
 80036d8:	e64b      	b.n	8003372 <_vfprintf_r+0x582>
 80036da:	f048 0808 	orr.w	r8, r8, #8
 80036de:	f89a 6000 	ldrb.w	r6, [sl]
 80036e2:	e403      	b.n	8002eec <_vfprintf_r+0xfc>
 80036e4:	f048 0310 	orr.w	r3, r8, #16
 80036e8:	069f      	lsls	r7, r3, #26
 80036ea:	f53f acd1 	bmi.w	8003090 <_vfprintf_r+0x2a0>
 80036ee:	9908      	ldr	r1, [sp, #32]
 80036f0:	06dd      	lsls	r5, r3, #27
 80036f2:	f101 0204 	add.w	r2, r1, #4
 80036f6:	f100 82fd 	bmi.w	8003cf4 <_vfprintf_r+0xf04>
 80036fa:	065c      	lsls	r4, r3, #25
 80036fc:	9908      	ldr	r1, [sp, #32]
 80036fe:	f100 8475 	bmi.w	8003fec <_vfprintf_r+0x11fc>
 8003702:	0598      	lsls	r0, r3, #22
 8003704:	f140 82f6 	bpl.w	8003cf4 <_vfprintf_r+0xf04>
 8003708:	f991 4000 	ldrsb.w	r4, [r1]
 800370c:	9208      	str	r2, [sp, #32]
 800370e:	17e5      	asrs	r5, r4, #31
 8003710:	4620      	mov	r0, r4
 8003712:	4629      	mov	r1, r5
 8003714:	e4c7      	b.n	80030a6 <_vfprintf_r+0x2b6>
 8003716:	9a08      	ldr	r2, [sp, #32]
 8003718:	f018 0f10 	tst.w	r8, #16
 800371c:	f102 0304 	add.w	r3, r2, #4
 8003720:	f040 82e3 	bne.w	8003cea <_vfprintf_r+0xefa>
 8003724:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003728:	9a08      	ldr	r2, [sp, #32]
 800372a:	f040 8467 	bne.w	8003ffc <_vfprintf_r+0x120c>
 800372e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003732:	f000 82da 	beq.w	8003cea <_vfprintf_r+0xefa>
 8003736:	7814      	ldrb	r4, [r2, #0]
 8003738:	9308      	str	r3, [sp, #32]
 800373a:	2500      	movs	r5, #0
 800373c:	e488      	b.n	8003050 <_vfprintf_r+0x260>
 800373e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003742:	f002 fd55 	bl	80061f0 <__retarget_lock_release_recursive>
 8003746:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800374a:	9305      	str	r3, [sp, #20]
 800374c:	e443      	b.n	8002fd6 <_vfprintf_r+0x1e6>
 800374e:	2e00      	cmp	r6, #0
 8003750:	f43f adf8 	beq.w	8003344 <_vfprintf_r+0x554>
 8003754:	2300      	movs	r3, #0
 8003756:	2101      	movs	r1, #1
 8003758:	461a      	mov	r2, r3
 800375a:	9104      	str	r1, [sp, #16]
 800375c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003760:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003764:	930a      	str	r3, [sp, #40]	; 0x28
 8003766:	4699      	mov	r9, r3
 8003768:	930f      	str	r3, [sp, #60]	; 0x3c
 800376a:	9314      	str	r3, [sp, #80]	; 0x50
 800376c:	9311      	str	r3, [sp, #68]	; 0x44
 800376e:	9109      	str	r1, [sp, #36]	; 0x24
 8003770:	af3d      	add	r7, sp, #244	; 0xf4
 8003772:	e4ce      	b.n	8003112 <_vfprintf_r+0x322>
 8003774:	2e65      	cmp	r6, #101	; 0x65
 8003776:	f340 80ca 	ble.w	800390e <_vfprintf_r+0xb1e>
 800377a:	2200      	movs	r2, #0
 800377c:	2300      	movs	r3, #0
 800377e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003782:	f7fd fc73 	bl	800106c <__aeabi_dcmpeq>
 8003786:	2800      	cmp	r0, #0
 8003788:	f000 8169 	beq.w	8003a5e <_vfprintf_r+0xc6e>
 800378c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800378e:	4a22      	ldr	r2, [pc, #136]	; (8003818 <_vfprintf_r+0xa28>)
 8003790:	f8cb 2000 	str.w	r2, [fp]
 8003794:	3301      	adds	r3, #1
 8003796:	3401      	adds	r4, #1
 8003798:	2201      	movs	r2, #1
 800379a:	2b07      	cmp	r3, #7
 800379c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80037a0:	f8cb 2004 	str.w	r2, [fp, #4]
 80037a4:	f300 8406 	bgt.w	8003fb4 <_vfprintf_r+0x11c4>
 80037a8:	f10b 0b08 	add.w	fp, fp, #8
 80037ac:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037ae:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037b2:	4293      	cmp	r3, r2
 80037b4:	db03      	blt.n	80037be <_vfprintf_r+0x9ce>
 80037b6:	f018 0f01 	tst.w	r8, #1
 80037ba:	f43f ad6a 	beq.w	8003292 <_vfprintf_r+0x4a2>
 80037be:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037c0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80037c2:	f8cb 2000 	str.w	r2, [fp]
 80037c6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80037c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80037cc:	3301      	adds	r3, #1
 80037ce:	4414      	add	r4, r2
 80037d0:	2b07      	cmp	r3, #7
 80037d2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80037d6:	f300 8517 	bgt.w	8004208 <_vfprintf_r+0x1418>
 80037da:	f10b 0b08 	add.w	fp, fp, #8
 80037de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80037e0:	1e5d      	subs	r5, r3, #1
 80037e2:	2d00      	cmp	r5, #0
 80037e4:	f77f ad55 	ble.w	8003292 <_vfprintf_r+0x4a2>
 80037e8:	2d10      	cmp	r5, #16
 80037ea:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037ec:	4b0b      	ldr	r3, [pc, #44]	; (800381c <_vfprintf_r+0xa2c>)
 80037ee:	f340 82e7 	ble.w	8003dc0 <_vfprintf_r+0xfd0>
 80037f2:	4619      	mov	r1, r3
 80037f4:	2610      	movs	r6, #16
 80037f6:	4623      	mov	r3, r4
 80037f8:	9f03      	ldr	r7, [sp, #12]
 80037fa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80037fe:	460c      	mov	r4, r1
 8003800:	e014      	b.n	800382c <_vfprintf_r+0xa3c>
 8003802:	bf00      	nop
 8003804:	7fefffff 	.word	0x7fefffff
 8003808:	08007514 	.word	0x08007514
 800380c:	08007510 	.word	0x08007510
 8003810:	08007534 	.word	0x08007534
 8003814:	08007520 	.word	0x08007520
 8003818:	08007550 	.word	0x08007550
 800381c:	08007564 	.word	0x08007564
 8003820:	f10b 0b08 	add.w	fp, fp, #8
 8003824:	3d10      	subs	r5, #16
 8003826:	2d10      	cmp	r5, #16
 8003828:	f340 82c7 	ble.w	8003dba <_vfprintf_r+0xfca>
 800382c:	3201      	adds	r2, #1
 800382e:	3310      	adds	r3, #16
 8003830:	2a07      	cmp	r2, #7
 8003832:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003836:	e9cb 4600 	strd	r4, r6, [fp]
 800383a:	ddf1      	ble.n	8003820 <_vfprintf_r+0xa30>
 800383c:	aa2a      	add	r2, sp, #168	; 0xa8
 800383e:	4649      	mov	r1, r9
 8003840:	4638      	mov	r0, r7
 8003842:	f003 fb1f 	bl	8006e84 <__sprint_r>
 8003846:	2800      	cmp	r0, #0
 8003848:	d14c      	bne.n	80038e4 <_vfprintf_r+0xaf4>
 800384a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800384e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003852:	e7e7      	b.n	8003824 <_vfprintf_r+0xa34>
 8003854:	9b06      	ldr	r3, [sp, #24]
 8003856:	9a04      	ldr	r2, [sp, #16]
 8003858:	1a9d      	subs	r5, r3, r2
 800385a:	2d00      	cmp	r5, #0
 800385c:	f77f acc9 	ble.w	80031f2 <_vfprintf_r+0x402>
 8003860:	2d10      	cmp	r5, #16
 8003862:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003864:	4bbc      	ldr	r3, [pc, #752]	; (8003b58 <_vfprintf_r+0xd68>)
 8003866:	dd27      	ble.n	80038b8 <_vfprintf_r+0xac8>
 8003868:	4659      	mov	r1, fp
 800386a:	4620      	mov	r0, r4
 800386c:	46bb      	mov	fp, r7
 800386e:	461c      	mov	r4, r3
 8003870:	4637      	mov	r7, r6
 8003872:	9e07      	ldr	r6, [sp, #28]
 8003874:	e004      	b.n	8003880 <_vfprintf_r+0xa90>
 8003876:	3d10      	subs	r5, #16
 8003878:	2d10      	cmp	r5, #16
 800387a:	f101 0108 	add.w	r1, r1, #8
 800387e:	dd16      	ble.n	80038ae <_vfprintf_r+0xabe>
 8003880:	3201      	adds	r2, #1
 8003882:	3010      	adds	r0, #16
 8003884:	2310      	movs	r3, #16
 8003886:	2a07      	cmp	r2, #7
 8003888:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800388c:	600c      	str	r4, [r1, #0]
 800388e:	604b      	str	r3, [r1, #4]
 8003890:	ddf1      	ble.n	8003876 <_vfprintf_r+0xa86>
 8003892:	aa2a      	add	r2, sp, #168	; 0xa8
 8003894:	4631      	mov	r1, r6
 8003896:	9803      	ldr	r0, [sp, #12]
 8003898:	f003 faf4 	bl	8006e84 <__sprint_r>
 800389c:	2800      	cmp	r0, #0
 800389e:	f040 80a8 	bne.w	80039f2 <_vfprintf_r+0xc02>
 80038a2:	3d10      	subs	r5, #16
 80038a4:	2d10      	cmp	r5, #16
 80038a6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80038aa:	a92d      	add	r1, sp, #180	; 0xb4
 80038ac:	dce8      	bgt.n	8003880 <_vfprintf_r+0xa90>
 80038ae:	463e      	mov	r6, r7
 80038b0:	4623      	mov	r3, r4
 80038b2:	465f      	mov	r7, fp
 80038b4:	4604      	mov	r4, r0
 80038b6:	468b      	mov	fp, r1
 80038b8:	3201      	adds	r2, #1
 80038ba:	442c      	add	r4, r5
 80038bc:	2a07      	cmp	r2, #7
 80038be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038c2:	e9cb 3500 	strd	r3, r5, [fp]
 80038c6:	f300 8292 	bgt.w	8003dee <_vfprintf_r+0xffe>
 80038ca:	f10b 0b08 	add.w	fp, fp, #8
 80038ce:	e490      	b.n	80031f2 <_vfprintf_r+0x402>
 80038d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80038d2:	9907      	ldr	r1, [sp, #28]
 80038d4:	9803      	ldr	r0, [sp, #12]
 80038d6:	f003 fad5 	bl	8006e84 <__sprint_r>
 80038da:	2800      	cmp	r0, #0
 80038dc:	f43f ad23 	beq.w	8003326 <_vfprintf_r+0x536>
 80038e0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80038e4:	990a      	ldr	r1, [sp, #40]	; 0x28
 80038e6:	b111      	cbz	r1, 80038ee <_vfprintf_r+0xafe>
 80038e8:	9803      	ldr	r0, [sp, #12]
 80038ea:	f002 f9d1 	bl	8005c90 <_free_r>
 80038ee:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80038f2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80038f6:	07d0      	lsls	r0, r2, #31
 80038f8:	d402      	bmi.n	8003900 <_vfprintf_r+0xb10>
 80038fa:	0599      	lsls	r1, r3, #22
 80038fc:	f140 81d0 	bpl.w	8003ca0 <_vfprintf_r+0xeb0>
 8003900:	065a      	lsls	r2, r3, #25
 8003902:	f53f ab65 	bmi.w	8002fd0 <_vfprintf_r+0x1e0>
 8003906:	9805      	ldr	r0, [sp, #20]
 8003908:	b057      	add	sp, #348	; 0x15c
 800390a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800390e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003910:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003912:	2a01      	cmp	r2, #1
 8003914:	f104 0401 	add.w	r4, r4, #1
 8003918:	f103 0501 	add.w	r5, r3, #1
 800391c:	f10b 0608 	add.w	r6, fp, #8
 8003920:	f340 811c 	ble.w	8003b5c <_vfprintf_r+0xd6c>
 8003924:	2301      	movs	r3, #1
 8003926:	2d07      	cmp	r5, #7
 8003928:	f8cb 7000 	str.w	r7, [fp]
 800392c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003930:	f8cb 3004 	str.w	r3, [fp, #4]
 8003934:	f300 81bb 	bgt.w	8003cae <_vfprintf_r+0xebe>
 8003938:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800393a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800393c:	1c69      	adds	r1, r5, #1
 800393e:	441c      	add	r4, r3
 8003940:	2907      	cmp	r1, #7
 8003942:	910b      	str	r1, [sp, #44]	; 0x2c
 8003944:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003948:	e9c6 2300 	strd	r2, r3, [r6]
 800394c:	f300 81bb 	bgt.w	8003cc6 <_vfprintf_r+0xed6>
 8003950:	3608      	adds	r6, #8
 8003952:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003954:	1c53      	adds	r3, r2, #1
 8003956:	461d      	mov	r5, r3
 8003958:	9509      	str	r5, [sp, #36]	; 0x24
 800395a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 800395c:	930e      	str	r3, [sp, #56]	; 0x38
 800395e:	2200      	movs	r2, #0
 8003960:	2300      	movs	r3, #0
 8003962:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003966:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 800396a:	f106 0b08 	add.w	fp, r6, #8
 800396e:	f7fd fb7d 	bl	800106c <__aeabi_dcmpeq>
 8003972:	2800      	cmp	r0, #0
 8003974:	f040 80c2 	bne.w	8003afc <_vfprintf_r+0xd0c>
 8003978:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800397a:	f8c6 9004 	str.w	r9, [r6, #4]
 800397e:	3701      	adds	r7, #1
 8003980:	444c      	add	r4, r9
 8003982:	2d07      	cmp	r5, #7
 8003984:	6037      	str	r7, [r6, #0]
 8003986:	942c      	str	r4, [sp, #176]	; 0xb0
 8003988:	952b      	str	r5, [sp, #172]	; 0xac
 800398a:	f300 80f9 	bgt.w	8003b80 <_vfprintf_r+0xd90>
 800398e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003990:	f106 0310 	add.w	r3, r6, #16
 8003994:	3202      	adds	r2, #2
 8003996:	465e      	mov	r6, fp
 8003998:	9209      	str	r2, [sp, #36]	; 0x24
 800399a:	469b      	mov	fp, r3
 800399c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800399e:	6072      	str	r2, [r6, #4]
 80039a0:	4414      	add	r4, r2
 80039a2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80039a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80039a6:	ab26      	add	r3, sp, #152	; 0x98
 80039a8:	2a07      	cmp	r2, #7
 80039aa:	922b      	str	r2, [sp, #172]	; 0xac
 80039ac:	6033      	str	r3, [r6, #0]
 80039ae:	f77f ac70 	ble.w	8003292 <_vfprintf_r+0x4a2>
 80039b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039b4:	9907      	ldr	r1, [sp, #28]
 80039b6:	9803      	ldr	r0, [sp, #12]
 80039b8:	f003 fa64 	bl	8006e84 <__sprint_r>
 80039bc:	2800      	cmp	r0, #0
 80039be:	d18f      	bne.n	80038e0 <_vfprintf_r+0xaf0>
 80039c0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039c2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039c6:	e464      	b.n	8003292 <_vfprintf_r+0x4a2>
 80039c8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80039ca:	af56      	add	r7, sp, #344	; 0x158
 80039cc:	0923      	lsrs	r3, r4, #4
 80039ce:	f004 010f 	and.w	r1, r4, #15
 80039d2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80039d6:	092a      	lsrs	r2, r5, #4
 80039d8:	461c      	mov	r4, r3
 80039da:	4615      	mov	r5, r2
 80039dc:	5c43      	ldrb	r3, [r0, r1]
 80039de:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80039e2:	ea54 0305 	orrs.w	r3, r4, r5
 80039e6:	d1f1      	bne.n	80039cc <_vfprintf_r+0xbdc>
 80039e8:	9b04      	ldr	r3, [sp, #16]
 80039ea:	1bdb      	subs	r3, r3, r7
 80039ec:	9309      	str	r3, [sp, #36]	; 0x24
 80039ee:	f7ff bb80 	b.w	80030f2 <_vfprintf_r+0x302>
 80039f2:	46b1      	mov	r9, r6
 80039f4:	e776      	b.n	80038e4 <_vfprintf_r+0xaf4>
 80039f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f8:	9907      	ldr	r1, [sp, #28]
 80039fa:	9803      	ldr	r0, [sp, #12]
 80039fc:	f003 fa42 	bl	8006e84 <__sprint_r>
 8003a00:	2800      	cmp	r0, #0
 8003a02:	f47f af6d 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003a06:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a08:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a0c:	f7ff bbdd 	b.w	80031ca <_vfprintf_r+0x3da>
 8003a10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a12:	9907      	ldr	r1, [sp, #28]
 8003a14:	9803      	ldr	r0, [sp, #12]
 8003a16:	f003 fa35 	bl	8006e84 <__sprint_r>
 8003a1a:	2800      	cmp	r0, #0
 8003a1c:	f47f af60 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003a20:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a22:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a26:	f7ff bbe0 	b.w	80031ea <_vfprintf_r+0x3fa>
 8003a2a:	4698      	mov	r8, r3
 8003a2c:	2d00      	cmp	r5, #0
 8003a2e:	bf08      	it	eq
 8003a30:	2c0a      	cmpeq	r4, #10
 8003a32:	f080 8170 	bcs.w	8003d16 <_vfprintf_r+0xf26>
 8003a36:	af56      	add	r7, sp, #344	; 0x158
 8003a38:	3430      	adds	r4, #48	; 0x30
 8003a3a:	2301      	movs	r3, #1
 8003a3c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003a40:	9309      	str	r3, [sp, #36]	; 0x24
 8003a42:	f7ff bb56 	b.w	80030f2 <_vfprintf_r+0x302>
 8003a46:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a48:	9907      	ldr	r1, [sp, #28]
 8003a4a:	9803      	ldr	r0, [sp, #12]
 8003a4c:	f003 fa1a 	bl	8006e84 <__sprint_r>
 8003a50:	2800      	cmp	r0, #0
 8003a52:	f47f af45 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003a56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a5c:	e406      	b.n	800326c <_vfprintf_r+0x47c>
 8003a5e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a60:	2b00      	cmp	r3, #0
 8003a62:	f340 8273 	ble.w	8003f4c <_vfprintf_r+0x115c>
 8003a66:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003a6a:	4293      	cmp	r3, r2
 8003a6c:	bfa8      	it	ge
 8003a6e:	4613      	movge	r3, r2
 8003a70:	2b00      	cmp	r3, #0
 8003a72:	461d      	mov	r5, r3
 8003a74:	dd0d      	ble.n	8003a92 <_vfprintf_r+0xca2>
 8003a76:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a78:	f8cb 7000 	str.w	r7, [fp]
 8003a7c:	3301      	adds	r3, #1
 8003a7e:	442c      	add	r4, r5
 8003a80:	2b07      	cmp	r3, #7
 8003a82:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a84:	f8cb 5004 	str.w	r5, [fp, #4]
 8003a88:	932b      	str	r3, [sp, #172]	; 0xac
 8003a8a:	f300 82c1 	bgt.w	8004010 <_vfprintf_r+0x1220>
 8003a8e:	f10b 0b08 	add.w	fp, fp, #8
 8003a92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a94:	2d00      	cmp	r5, #0
 8003a96:	bfa8      	it	ge
 8003a98:	1b5b      	subge	r3, r3, r5
 8003a9a:	2b00      	cmp	r3, #0
 8003a9c:	461d      	mov	r5, r3
 8003a9e:	f340 8099 	ble.w	8003bd4 <_vfprintf_r+0xde4>
 8003aa2:	2d10      	cmp	r5, #16
 8003aa4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003aa6:	4b2c      	ldr	r3, [pc, #176]	; (8003b58 <_vfprintf_r+0xd68>)
 8003aa8:	f340 83db 	ble.w	8004262 <_vfprintf_r+0x1472>
 8003aac:	4618      	mov	r0, r3
 8003aae:	4621      	mov	r1, r4
 8003ab0:	465b      	mov	r3, fp
 8003ab2:	2610      	movs	r6, #16
 8003ab4:	46bb      	mov	fp, r7
 8003ab6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003aba:	9c07      	ldr	r4, [sp, #28]
 8003abc:	4607      	mov	r7, r0
 8003abe:	e004      	b.n	8003aca <_vfprintf_r+0xcda>
 8003ac0:	3308      	adds	r3, #8
 8003ac2:	3d10      	subs	r5, #16
 8003ac4:	2d10      	cmp	r5, #16
 8003ac6:	f340 83c7 	ble.w	8004258 <_vfprintf_r+0x1468>
 8003aca:	3201      	adds	r2, #1
 8003acc:	3110      	adds	r1, #16
 8003ace:	2a07      	cmp	r2, #7
 8003ad0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003ad4:	e9c3 7600 	strd	r7, r6, [r3]
 8003ad8:	ddf2      	ble.n	8003ac0 <_vfprintf_r+0xcd0>
 8003ada:	aa2a      	add	r2, sp, #168	; 0xa8
 8003adc:	4621      	mov	r1, r4
 8003ade:	4648      	mov	r0, r9
 8003ae0:	f003 f9d0 	bl	8006e84 <__sprint_r>
 8003ae4:	2800      	cmp	r0, #0
 8003ae6:	f040 84a5 	bne.w	8004434 <_vfprintf_r+0x1644>
 8003aea:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003aee:	ab2d      	add	r3, sp, #180	; 0xb4
 8003af0:	e7e7      	b.n	8003ac2 <_vfprintf_r+0xcd2>
 8003af2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003af6:	af56      	add	r7, sp, #344	; 0x158
 8003af8:	f7ff bafb 	b.w	80030f2 <_vfprintf_r+0x302>
 8003afc:	f1b9 0f00 	cmp.w	r9, #0
 8003b00:	f77f af4c 	ble.w	800399c <_vfprintf_r+0xbac>
 8003b04:	f1b9 0f10 	cmp.w	r9, #16
 8003b08:	4b13      	ldr	r3, [pc, #76]	; (8003b58 <_vfprintf_r+0xd68>)
 8003b0a:	f340 8659 	ble.w	80047c0 <_vfprintf_r+0x19d0>
 8003b0e:	4619      	mov	r1, r3
 8003b10:	4622      	mov	r2, r4
 8003b12:	4633      	mov	r3, r6
 8003b14:	2710      	movs	r7, #16
 8003b16:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003b1a:	9c07      	ldr	r4, [sp, #28]
 8003b1c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003b1e:	460e      	mov	r6, r1
 8003b20:	e007      	b.n	8003b32 <_vfprintf_r+0xd42>
 8003b22:	3308      	adds	r3, #8
 8003b24:	f1a9 0910 	sub.w	r9, r9, #16
 8003b28:	f1b9 0f10 	cmp.w	r9, #16
 8003b2c:	f340 8353 	ble.w	80041d6 <_vfprintf_r+0x13e6>
 8003b30:	3501      	adds	r5, #1
 8003b32:	3210      	adds	r2, #16
 8003b34:	2d07      	cmp	r5, #7
 8003b36:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003b3a:	e9c3 6700 	strd	r6, r7, [r3]
 8003b3e:	ddf0      	ble.n	8003b22 <_vfprintf_r+0xd32>
 8003b40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b42:	4621      	mov	r1, r4
 8003b44:	4658      	mov	r0, fp
 8003b46:	f003 f99d 	bl	8006e84 <__sprint_r>
 8003b4a:	2800      	cmp	r0, #0
 8003b4c:	f040 8472 	bne.w	8004434 <_vfprintf_r+0x1644>
 8003b50:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003b54:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b56:	e7e5      	b.n	8003b24 <_vfprintf_r+0xd34>
 8003b58:	08007564 	.word	0x08007564
 8003b5c:	f018 0f01 	tst.w	r8, #1
 8003b60:	f47f aee0 	bne.w	8003924 <_vfprintf_r+0xb34>
 8003b64:	2201      	movs	r2, #1
 8003b66:	2d07      	cmp	r5, #7
 8003b68:	f8cb 7000 	str.w	r7, [fp]
 8003b6c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003b70:	f8cb 2004 	str.w	r2, [fp, #4]
 8003b74:	dc04      	bgt.n	8003b80 <_vfprintf_r+0xd90>
 8003b76:	3302      	adds	r3, #2
 8003b78:	9309      	str	r3, [sp, #36]	; 0x24
 8003b7a:	f10b 0b10 	add.w	fp, fp, #16
 8003b7e:	e70d      	b.n	800399c <_vfprintf_r+0xbac>
 8003b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b82:	9907      	ldr	r1, [sp, #28]
 8003b84:	9803      	ldr	r0, [sp, #12]
 8003b86:	f003 f97d 	bl	8006e84 <__sprint_r>
 8003b8a:	2800      	cmp	r0, #0
 8003b8c:	f47f aea8 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003b90:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003b94:	3301      	adds	r3, #1
 8003b96:	9309      	str	r3, [sp, #36]	; 0x24
 8003b98:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003b9c:	ae2d      	add	r6, sp, #180	; 0xb4
 8003b9e:	e6fd      	b.n	800399c <_vfprintf_r+0xbac>
 8003ba0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ba2:	9907      	ldr	r1, [sp, #28]
 8003ba4:	9803      	ldr	r0, [sp, #12]
 8003ba6:	f003 f96d 	bl	8006e84 <__sprint_r>
 8003baa:	2800      	cmp	r0, #0
 8003bac:	f47f ae98 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003bb0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003bb4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bb6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bba:	f7ff baf6 	b.w	80031aa <_vfprintf_r+0x3ba>
 8003bbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc0:	9907      	ldr	r1, [sp, #28]
 8003bc2:	9803      	ldr	r0, [sp, #12]
 8003bc4:	f003 f95e 	bl	8006e84 <__sprint_r>
 8003bc8:	2800      	cmp	r0, #0
 8003bca:	f47f ae89 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003bce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bd0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bd6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003bda:	443b      	add	r3, r7
 8003bdc:	4699      	mov	r9, r3
 8003bde:	f040 8357 	bne.w	8004290 <_vfprintf_r+0x14a0>
 8003be2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003be4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003be6:	4293      	cmp	r3, r2
 8003be8:	db49      	blt.n	8003c7e <_vfprintf_r+0xe8e>
 8003bea:	f018 0f01 	tst.w	r8, #1
 8003bee:	d146      	bne.n	8003c7e <_vfprintf_r+0xe8e>
 8003bf0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bf2:	18bd      	adds	r5, r7, r2
 8003bf4:	eba5 0509 	sub.w	r5, r5, r9
 8003bf8:	1ad3      	subs	r3, r2, r3
 8003bfa:	429d      	cmp	r5, r3
 8003bfc:	bfa8      	it	ge
 8003bfe:	461d      	movge	r5, r3
 8003c00:	2d00      	cmp	r5, #0
 8003c02:	dd0d      	ble.n	8003c20 <_vfprintf_r+0xe30>
 8003c04:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c06:	f8cb 9000 	str.w	r9, [fp]
 8003c0a:	3201      	adds	r2, #1
 8003c0c:	442c      	add	r4, r5
 8003c0e:	2a07      	cmp	r2, #7
 8003c10:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c12:	f8cb 5004 	str.w	r5, [fp, #4]
 8003c16:	922b      	str	r2, [sp, #172]	; 0xac
 8003c18:	f300 8462 	bgt.w	80044e0 <_vfprintf_r+0x16f0>
 8003c1c:	f10b 0b08 	add.w	fp, fp, #8
 8003c20:	2d00      	cmp	r5, #0
 8003c22:	bfac      	ite	ge
 8003c24:	1b5d      	subge	r5, r3, r5
 8003c26:	461d      	movlt	r5, r3
 8003c28:	2d00      	cmp	r5, #0
 8003c2a:	f77f ab32 	ble.w	8003292 <_vfprintf_r+0x4a2>
 8003c2e:	2d10      	cmp	r5, #16
 8003c30:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c32:	4bc5      	ldr	r3, [pc, #788]	; (8003f48 <_vfprintf_r+0x1158>)
 8003c34:	f340 80c4 	ble.w	8003dc0 <_vfprintf_r+0xfd0>
 8003c38:	4619      	mov	r1, r3
 8003c3a:	2610      	movs	r6, #16
 8003c3c:	4623      	mov	r3, r4
 8003c3e:	9f03      	ldr	r7, [sp, #12]
 8003c40:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c44:	460c      	mov	r4, r1
 8003c46:	e005      	b.n	8003c54 <_vfprintf_r+0xe64>
 8003c48:	f10b 0b08 	add.w	fp, fp, #8
 8003c4c:	3d10      	subs	r5, #16
 8003c4e:	2d10      	cmp	r5, #16
 8003c50:	f340 80b3 	ble.w	8003dba <_vfprintf_r+0xfca>
 8003c54:	3201      	adds	r2, #1
 8003c56:	3310      	adds	r3, #16
 8003c58:	2a07      	cmp	r2, #7
 8003c5a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c5e:	e9cb 4600 	strd	r4, r6, [fp]
 8003c62:	ddf1      	ble.n	8003c48 <_vfprintf_r+0xe58>
 8003c64:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c66:	4649      	mov	r1, r9
 8003c68:	4638      	mov	r0, r7
 8003c6a:	f003 f90b 	bl	8006e84 <__sprint_r>
 8003c6e:	2800      	cmp	r0, #0
 8003c70:	f47f ae38 	bne.w	80038e4 <_vfprintf_r+0xaf4>
 8003c74:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c78:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c7c:	e7e6      	b.n	8003c4c <_vfprintf_r+0xe5c>
 8003c7e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c80:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003c82:	f8cb 1000 	str.w	r1, [fp]
 8003c86:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003c88:	f8cb 1004 	str.w	r1, [fp, #4]
 8003c8c:	3201      	adds	r2, #1
 8003c8e:	440c      	add	r4, r1
 8003c90:	2a07      	cmp	r2, #7
 8003c92:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c94:	922b      	str	r2, [sp, #172]	; 0xac
 8003c96:	f300 828c 	bgt.w	80041b2 <_vfprintf_r+0x13c2>
 8003c9a:	f10b 0b08 	add.w	fp, fp, #8
 8003c9e:	e7a7      	b.n	8003bf0 <_vfprintf_r+0xe00>
 8003ca0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003ca4:	f002 faa4 	bl	80061f0 <__retarget_lock_release_recursive>
 8003ca8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003cac:	e628      	b.n	8003900 <_vfprintf_r+0xb10>
 8003cae:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cb0:	9907      	ldr	r1, [sp, #28]
 8003cb2:	9803      	ldr	r0, [sp, #12]
 8003cb4:	f003 f8e6 	bl	8006e84 <__sprint_r>
 8003cb8:	2800      	cmp	r0, #0
 8003cba:	f47f ae11 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003cbe:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003cc2:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cc4:	e638      	b.n	8003938 <_vfprintf_r+0xb48>
 8003cc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cc8:	9907      	ldr	r1, [sp, #28]
 8003cca:	9803      	ldr	r0, [sp, #12]
 8003ccc:	f003 f8da 	bl	8006e84 <__sprint_r>
 8003cd0:	2800      	cmp	r0, #0
 8003cd2:	f47f ae05 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003cd6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003cda:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cdc:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cde:	e638      	b.n	8003952 <_vfprintf_r+0xb62>
 8003ce0:	6814      	ldr	r4, [r2, #0]
 8003ce2:	9308      	str	r3, [sp, #32]
 8003ce4:	2500      	movs	r5, #0
 8003ce6:	f7ff bb95 	b.w	8003414 <_vfprintf_r+0x624>
 8003cea:	6814      	ldr	r4, [r2, #0]
 8003cec:	9308      	str	r3, [sp, #32]
 8003cee:	2500      	movs	r5, #0
 8003cf0:	f7ff b9ae 	b.w	8003050 <_vfprintf_r+0x260>
 8003cf4:	680c      	ldr	r4, [r1, #0]
 8003cf6:	9208      	str	r2, [sp, #32]
 8003cf8:	17e5      	asrs	r5, r4, #31
 8003cfa:	4620      	mov	r0, r4
 8003cfc:	4629      	mov	r1, r5
 8003cfe:	f7ff b9d2 	b.w	80030a6 <_vfprintf_r+0x2b6>
 8003d02:	6814      	ldr	r4, [r2, #0]
 8003d04:	9108      	str	r1, [sp, #32]
 8003d06:	2201      	movs	r2, #1
 8003d08:	2500      	movs	r5, #0
 8003d0a:	f7ff bb32 	b.w	8003372 <_vfprintf_r+0x582>
 8003d0e:	2a01      	cmp	r2, #1
 8003d10:	f47f ab3c 	bne.w	800338c <_vfprintf_r+0x59c>
 8003d14:	e68f      	b.n	8003a36 <_vfprintf_r+0xc46>
 8003d16:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003d1a:	2200      	movs	r2, #0
 8003d1c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003d20:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003d24:	af56      	add	r7, sp, #344	; 0x158
 8003d26:	4692      	mov	sl, r2
 8003d28:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003d2c:	461e      	mov	r6, r3
 8003d2e:	e00a      	b.n	8003d46 <_vfprintf_r+0xf56>
 8003d30:	2300      	movs	r3, #0
 8003d32:	4620      	mov	r0, r4
 8003d34:	4629      	mov	r1, r5
 8003d36:	220a      	movs	r2, #10
 8003d38:	f7fc fe50 	bl	80009dc <__aeabi_uldivmod>
 8003d3c:	4604      	mov	r4, r0
 8003d3e:	460d      	mov	r5, r1
 8003d40:	ea54 0305 	orrs.w	r3, r4, r5
 8003d44:	d029      	beq.n	8003d9a <_vfprintf_r+0xfaa>
 8003d46:	220a      	movs	r2, #10
 8003d48:	2300      	movs	r3, #0
 8003d4a:	4620      	mov	r0, r4
 8003d4c:	4629      	mov	r1, r5
 8003d4e:	f7fc fe45 	bl	80009dc <__aeabi_uldivmod>
 8003d52:	3230      	adds	r2, #48	; 0x30
 8003d54:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003d58:	f10a 0a01 	add.w	sl, sl, #1
 8003d5c:	3f01      	subs	r7, #1
 8003d5e:	2e00      	cmp	r6, #0
 8003d60:	d0e6      	beq.n	8003d30 <_vfprintf_r+0xf40>
 8003d62:	f898 3000 	ldrb.w	r3, [r8]
 8003d66:	459a      	cmp	sl, r3
 8003d68:	d1e2      	bne.n	8003d30 <_vfprintf_r+0xf40>
 8003d6a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003d6e:	d0df      	beq.n	8003d30 <_vfprintf_r+0xf40>
 8003d70:	2d00      	cmp	r5, #0
 8003d72:	bf08      	it	eq
 8003d74:	2c0a      	cmpeq	r4, #10
 8003d76:	d3db      	bcc.n	8003d30 <_vfprintf_r+0xf40>
 8003d78:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003d7a:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003d7c:	1aff      	subs	r7, r7, r3
 8003d7e:	461a      	mov	r2, r3
 8003d80:	4638      	mov	r0, r7
 8003d82:	f7ff f803 	bl	8002d8c <strncpy>
 8003d86:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003d8a:	2b00      	cmp	r3, #0
 8003d8c:	f000 8496 	beq.w	80046bc <_vfprintf_r+0x18cc>
 8003d90:	f108 0801 	add.w	r8, r8, #1
 8003d94:	f04f 0a00 	mov.w	sl, #0
 8003d98:	e7ca      	b.n	8003d30 <_vfprintf_r+0xf40>
 8003d9a:	9b04      	ldr	r3, [sp, #16]
 8003d9c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003da0:	1bdb      	subs	r3, r3, r7
 8003da2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003da6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003da8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003dac:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003db0:	9309      	str	r3, [sp, #36]	; 0x24
 8003db2:	f7ff b99e 	b.w	80030f2 <_vfprintf_r+0x302>
 8003db6:	46c1      	mov	r9, r8
 8003db8:	e594      	b.n	80038e4 <_vfprintf_r+0xaf4>
 8003dba:	4621      	mov	r1, r4
 8003dbc:	461c      	mov	r4, r3
 8003dbe:	460b      	mov	r3, r1
 8003dc0:	3201      	adds	r2, #1
 8003dc2:	442c      	add	r4, r5
 8003dc4:	2a07      	cmp	r2, #7
 8003dc6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003dca:	e9cb 3500 	strd	r3, r5, [fp]
 8003dce:	f77f aa5e 	ble.w	800328e <_vfprintf_r+0x49e>
 8003dd2:	e5ee      	b.n	80039b2 <_vfprintf_r+0xbc2>
 8003dd4:	f018 0f10 	tst.w	r8, #16
 8003dd8:	f040 80f8 	bne.w	8003fcc <_vfprintf_r+0x11dc>
 8003ddc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003de0:	f000 8351 	beq.w	8004486 <_vfprintf_r+0x1696>
 8003de4:	9a05      	ldr	r2, [sp, #20]
 8003de6:	801a      	strh	r2, [r3, #0]
 8003de8:	4657      	mov	r7, sl
 8003dea:	f7ff baa7 	b.w	800333c <_vfprintf_r+0x54c>
 8003dee:	aa2a      	add	r2, sp, #168	; 0xa8
 8003df0:	9907      	ldr	r1, [sp, #28]
 8003df2:	9803      	ldr	r0, [sp, #12]
 8003df4:	f003 f846 	bl	8006e84 <__sprint_r>
 8003df8:	2800      	cmp	r0, #0
 8003dfa:	f47f ad71 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003dfe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e00:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e04:	f7ff b9f5 	b.w	80031f2 <_vfprintf_r+0x402>
 8003e08:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003e0c:	4602      	mov	r2, r0
 8003e0e:	460b      	mov	r3, r1
 8003e10:	f7fd f95e 	bl	80010d0 <__aeabi_dcmpun>
 8003e14:	2800      	cmp	r0, #0
 8003e16:	f040 8491 	bne.w	800473c <_vfprintf_r+0x194c>
 8003e1a:	2e61      	cmp	r6, #97	; 0x61
 8003e1c:	f000 8111 	beq.w	8004042 <_vfprintf_r+0x1252>
 8003e20:	2e41      	cmp	r6, #65	; 0x41
 8003e22:	f000 8377 	beq.w	8004514 <_vfprintf_r+0x1724>
 8003e26:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003e2a:	f026 0220 	bic.w	r2, r6, #32
 8003e2e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003e32:	930e      	str	r3, [sp, #56]	; 0x38
 8003e34:	9204      	str	r2, [sp, #16]
 8003e36:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e38:	f000 842d 	beq.w	8004696 <_vfprintf_r+0x18a6>
 8003e3c:	2a47      	cmp	r2, #71	; 0x47
 8003e3e:	f000 8424 	beq.w	800468a <_vfprintf_r+0x189a>
 8003e42:	2b00      	cmp	r3, #0
 8003e44:	f2c0 82f9 	blt.w	800443a <_vfprintf_r+0x164a>
 8003e48:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003e4c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003e50:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003e54:	2e66      	cmp	r6, #102	; 0x66
 8003e56:	f000 83eb 	beq.w	8004630 <_vfprintf_r+0x1840>
 8003e5a:	2e46      	cmp	r6, #70	; 0x46
 8003e5c:	f000 847e 	beq.w	800475c <_vfprintf_r+0x196c>
 8003e60:	9b04      	ldr	r3, [sp, #16]
 8003e62:	9803      	ldr	r0, [sp, #12]
 8003e64:	2b45      	cmp	r3, #69	; 0x45
 8003e66:	bf0c      	ite	eq
 8003e68:	f109 0501 	addeq.w	r5, r9, #1
 8003e6c:	464d      	movne	r5, r9
 8003e6e:	aa28      	add	r2, sp, #160	; 0xa0
 8003e70:	ab25      	add	r3, sp, #148	; 0x94
 8003e72:	e9cd 3200 	strd	r3, r2, [sp]
 8003e76:	2102      	movs	r1, #2
 8003e78:	ab24      	add	r3, sp, #144	; 0x90
 8003e7a:	462a      	mov	r2, r5
 8003e7c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e80:	f000 fe4e 	bl	8004b20 <_dtoa_r>
 8003e84:	2e67      	cmp	r6, #103	; 0x67
 8003e86:	4607      	mov	r7, r0
 8003e88:	f040 849c 	bne.w	80047c4 <_vfprintf_r+0x19d4>
 8003e8c:	f018 0f01 	tst.w	r8, #1
 8003e90:	f040 83f9 	bne.w	8004686 <_vfprintf_r+0x1896>
 8003e94:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e96:	4640      	mov	r0, r8
 8003e98:	1bdb      	subs	r3, r3, r7
 8003e9a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003e9e:	9310      	str	r3, [sp, #64]	; 0x40
 8003ea0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ea2:	9311      	str	r3, [sp, #68]	; 0x44
 8003ea4:	9b04      	ldr	r3, [sp, #16]
 8003ea6:	2b47      	cmp	r3, #71	; 0x47
 8003ea8:	f000 81e7 	beq.w	800427a <_vfprintf_r+0x148a>
 8003eac:	9b04      	ldr	r3, [sp, #16]
 8003eae:	2b46      	cmp	r3, #70	; 0x46
 8003eb0:	f000 8300 	beq.w	80044b4 <_vfprintf_r+0x16c4>
 8003eb4:	9904      	ldr	r1, [sp, #16]
 8003eb6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003eb8:	b2f2      	uxtb	r2, r6
 8003eba:	2941      	cmp	r1, #65	; 0x41
 8003ebc:	bf08      	it	eq
 8003ebe:	320f      	addeq	r2, #15
 8003ec0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003ec4:	bf06      	itte	eq
 8003ec6:	b2d2      	uxtbeq	r2, r2
 8003ec8:	2101      	moveq	r1, #1
 8003eca:	2100      	movne	r1, #0
 8003ecc:	2b00      	cmp	r3, #0
 8003ece:	9324      	str	r3, [sp, #144]	; 0x90
 8003ed0:	bfb8      	it	lt
 8003ed2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003ed4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003ed8:	bfba      	itte	lt
 8003eda:	f1c3 0301 	rsblt	r3, r3, #1
 8003ede:	222d      	movlt	r2, #45	; 0x2d
 8003ee0:	222b      	movge	r2, #43	; 0x2b
 8003ee2:	2b09      	cmp	r3, #9
 8003ee4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003ee8:	f300 83f9 	bgt.w	80046de <_vfprintf_r+0x18ee>
 8003eec:	2900      	cmp	r1, #0
 8003eee:	f040 8487 	bne.w	8004800 <_vfprintf_r+0x1a10>
 8003ef2:	2230      	movs	r2, #48	; 0x30
 8003ef4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003ef8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003efc:	3330      	adds	r3, #48	; 0x30
 8003efe:	7013      	strb	r3, [r2, #0]
 8003f00:	1c53      	adds	r3, r2, #1
 8003f02:	aa26      	add	r2, sp, #152	; 0x98
 8003f04:	1a9b      	subs	r3, r3, r2
 8003f06:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f08:	9319      	str	r3, [sp, #100]	; 0x64
 8003f0a:	2a01      	cmp	r2, #1
 8003f0c:	4413      	add	r3, r2
 8003f0e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f10:	f340 8442 	ble.w	8004798 <_vfprintf_r+0x19a8>
 8003f14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f16:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f18:	4413      	add	r3, r2
 8003f1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f1c:	2300      	movs	r3, #0
 8003f1e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f20:	9314      	str	r3, [sp, #80]	; 0x50
 8003f22:	9311      	str	r3, [sp, #68]	; 0x44
 8003f24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f26:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003f2a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f2e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003f32:	9304      	str	r3, [sp, #16]
 8003f34:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003f36:	2b00      	cmp	r3, #0
 8003f38:	f040 8275 	bne.w	8004426 <_vfprintf_r+0x1636>
 8003f3c:	4699      	mov	r9, r3
 8003f3e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f42:	f7ff b8e2 	b.w	800310a <_vfprintf_r+0x31a>
 8003f46:	bf00      	nop
 8003f48:	08007564 	.word	0x08007564
 8003f4c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f4e:	49bd      	ldr	r1, [pc, #756]	; (8004244 <_vfprintf_r+0x1454>)
 8003f50:	f8cb 1000 	str.w	r1, [fp]
 8003f54:	3201      	adds	r2, #1
 8003f56:	3401      	adds	r4, #1
 8003f58:	2101      	movs	r1, #1
 8003f5a:	2a07      	cmp	r2, #7
 8003f5c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f60:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f64:	dc60      	bgt.n	8004028 <_vfprintf_r+0x1238>
 8003f66:	f10b 0b08 	add.w	fp, fp, #8
 8003f6a:	b92b      	cbnz	r3, 8003f78 <_vfprintf_r+0x1188>
 8003f6c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f6e:	b91a      	cbnz	r2, 8003f78 <_vfprintf_r+0x1188>
 8003f70:	f018 0f01 	tst.w	r8, #1
 8003f74:	f43f a98d 	beq.w	8003292 <_vfprintf_r+0x4a2>
 8003f78:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f7a:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003f7c:	f8cb 1000 	str.w	r1, [fp]
 8003f80:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003f82:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f86:	3201      	adds	r2, #1
 8003f88:	440c      	add	r4, r1
 8003f8a:	2a07      	cmp	r2, #7
 8003f8c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f8e:	922b      	str	r2, [sp, #172]	; 0xac
 8003f90:	f300 8282 	bgt.w	8004498 <_vfprintf_r+0x16a8>
 8003f94:	f10b 0b08 	add.w	fp, fp, #8
 8003f98:	2b00      	cmp	r3, #0
 8003f9a:	f2c0 82e7 	blt.w	800456c <_vfprintf_r+0x177c>
 8003f9e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fa0:	3201      	adds	r2, #1
 8003fa2:	441c      	add	r4, r3
 8003fa4:	2a07      	cmp	r2, #7
 8003fa6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003faa:	e9cb 7300 	strd	r7, r3, [fp]
 8003fae:	f77f a96e 	ble.w	800328e <_vfprintf_r+0x49e>
 8003fb2:	e4fe      	b.n	80039b2 <_vfprintf_r+0xbc2>
 8003fb4:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fb6:	9907      	ldr	r1, [sp, #28]
 8003fb8:	9803      	ldr	r0, [sp, #12]
 8003fba:	f002 ff63 	bl	8006e84 <__sprint_r>
 8003fbe:	2800      	cmp	r0, #0
 8003fc0:	f47f ac8e 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8003fc4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fc8:	f7ff bbf0 	b.w	80037ac <_vfprintf_r+0x9bc>
 8003fcc:	9a05      	ldr	r2, [sp, #20]
 8003fce:	601a      	str	r2, [r3, #0]
 8003fd0:	4657      	mov	r7, sl
 8003fd2:	f7ff b9b3 	b.w	800333c <_vfprintf_r+0x54c>
 8003fd6:	8814      	ldrh	r4, [r2, #0]
 8003fd8:	9108      	str	r1, [sp, #32]
 8003fda:	2500      	movs	r5, #0
 8003fdc:	2201      	movs	r2, #1
 8003fde:	f7ff b9c8 	b.w	8003372 <_vfprintf_r+0x582>
 8003fe2:	8814      	ldrh	r4, [r2, #0]
 8003fe4:	9308      	str	r3, [sp, #32]
 8003fe6:	2500      	movs	r5, #0
 8003fe8:	f7ff ba14 	b.w	8003414 <_vfprintf_r+0x624>
 8003fec:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003ff0:	9208      	str	r2, [sp, #32]
 8003ff2:	17e5      	asrs	r5, r4, #31
 8003ff4:	4620      	mov	r0, r4
 8003ff6:	4629      	mov	r1, r5
 8003ff8:	f7ff b855 	b.w	80030a6 <_vfprintf_r+0x2b6>
 8003ffc:	8814      	ldrh	r4, [r2, #0]
 8003ffe:	9308      	str	r3, [sp, #32]
 8004000:	2500      	movs	r5, #0
 8004002:	f7ff b825 	b.w	8003050 <_vfprintf_r+0x260>
 8004006:	222d      	movs	r2, #45	; 0x2d
 8004008:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800400c:	f7ff baa2 	b.w	8003554 <_vfprintf_r+0x764>
 8004010:	aa2a      	add	r2, sp, #168	; 0xa8
 8004012:	9907      	ldr	r1, [sp, #28]
 8004014:	9803      	ldr	r0, [sp, #12]
 8004016:	f002 ff35 	bl	8006e84 <__sprint_r>
 800401a:	2800      	cmp	r0, #0
 800401c:	f47f ac60 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8004020:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004022:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004026:	e534      	b.n	8003a92 <_vfprintf_r+0xca2>
 8004028:	aa2a      	add	r2, sp, #168	; 0xa8
 800402a:	9907      	ldr	r1, [sp, #28]
 800402c:	9803      	ldr	r0, [sp, #12]
 800402e:	f002 ff29 	bl	8006e84 <__sprint_r>
 8004032:	2800      	cmp	r0, #0
 8004034:	f47f ac54 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8004038:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800403a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800403c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004040:	e793      	b.n	8003f6a <_vfprintf_r+0x117a>
 8004042:	2330      	movs	r3, #48	; 0x30
 8004044:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004048:	2378      	movs	r3, #120	; 0x78
 800404a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800404e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8004052:	f048 0402 	orr.w	r4, r8, #2
 8004056:	f300 82b0 	bgt.w	80045ba <_vfprintf_r+0x17ca>
 800405a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800405e:	930e      	str	r3, [sp, #56]	; 0x38
 8004060:	f026 0320 	bic.w	r3, r6, #32
 8004064:	9304      	str	r3, [sp, #16]
 8004066:	2200      	movs	r2, #0
 8004068:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800406a:	920a      	str	r2, [sp, #40]	; 0x28
 800406c:	46a0      	mov	r8, r4
 800406e:	af3d      	add	r7, sp, #244	; 0xf4
 8004070:	2b00      	cmp	r3, #0
 8004072:	f2c0 81e3 	blt.w	800443c <_vfprintf_r+0x164c>
 8004076:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800407a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800407e:	2300      	movs	r3, #0
 8004080:	930b      	str	r3, [sp, #44]	; 0x2c
 8004082:	2e61      	cmp	r6, #97	; 0x61
 8004084:	f000 8255 	beq.w	8004532 <_vfprintf_r+0x1742>
 8004088:	2e41      	cmp	r6, #65	; 0x41
 800408a:	f47f aee3 	bne.w	8003e54 <_vfprintf_r+0x1064>
 800408e:	a824      	add	r0, sp, #144	; 0x90
 8004090:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004094:	f002 fe42 	bl	8006d1c <frexp>
 8004098:	2200      	movs	r2, #0
 800409a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800409e:	ec51 0b10 	vmov	r0, r1, d0
 80040a2:	f7fc fa69 	bl	8000578 <__aeabi_dmul>
 80040a6:	2200      	movs	r2, #0
 80040a8:	2300      	movs	r3, #0
 80040aa:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80040ae:	f7fc ffdd 	bl	800106c <__aeabi_dcmpeq>
 80040b2:	2800      	cmp	r0, #0
 80040b4:	f040 8305 	bne.w	80046c2 <_vfprintf_r+0x18d2>
 80040b8:	4b63      	ldr	r3, [pc, #396]	; (8004248 <_vfprintf_r+0x1458>)
 80040ba:	9309      	str	r3, [sp, #36]	; 0x24
 80040bc:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80040c0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80040c4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80040c8:	9721      	str	r7, [sp, #132]	; 0x84
 80040ca:	46b9      	mov	r9, r7
 80040cc:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80040d0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80040d4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80040d8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80040dc:	e003      	b.n	80040e6 <_vfprintf_r+0x12f6>
 80040de:	f7fc ffc5 	bl	800106c <__aeabi_dcmpeq>
 80040e2:	bb20      	cbnz	r0, 800412e <_vfprintf_r+0x133e>
 80040e4:	46a9      	mov	r9, r5
 80040e6:	2200      	movs	r2, #0
 80040e8:	4b58      	ldr	r3, [pc, #352]	; (800424c <_vfprintf_r+0x145c>)
 80040ea:	4630      	mov	r0, r6
 80040ec:	4639      	mov	r1, r7
 80040ee:	f7fc fa43 	bl	8000578 <__aeabi_dmul>
 80040f2:	460f      	mov	r7, r1
 80040f4:	4606      	mov	r6, r0
 80040f6:	f7fd f801 	bl	80010fc <__aeabi_d2iz>
 80040fa:	4680      	mov	r8, r0
 80040fc:	f7fc f9d2 	bl	80004a4 <__aeabi_i2d>
 8004100:	4602      	mov	r2, r0
 8004102:	460b      	mov	r3, r1
 8004104:	4630      	mov	r0, r6
 8004106:	4639      	mov	r1, r7
 8004108:	f7fc f87e 	bl	8000208 <__aeabi_dsub>
 800410c:	464d      	mov	r5, r9
 800410e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8004112:	f805 cb01 	strb.w	ip, [r5], #1
 8004116:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800411a:	46a3      	mov	fp, r4
 800411c:	4606      	mov	r6, r0
 800411e:	460f      	mov	r7, r1
 8004120:	f04f 0200 	mov.w	r2, #0
 8004124:	f04f 0300 	mov.w	r3, #0
 8004128:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800412c:	d1d7      	bne.n	80040de <_vfprintf_r+0x12ee>
 800412e:	4630      	mov	r0, r6
 8004130:	4639      	mov	r1, r7
 8004132:	2200      	movs	r2, #0
 8004134:	4b46      	ldr	r3, [pc, #280]	; (8004250 <_vfprintf_r+0x1460>)
 8004136:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800413a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800413c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004140:	4644      	mov	r4, r8
 8004142:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8004146:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800414a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800414e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8004152:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8004154:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004158:	f7fc ffb0 	bl	80010bc <__aeabi_dcmpgt>
 800415c:	2800      	cmp	r0, #0
 800415e:	f040 8176 	bne.w	800444e <_vfprintf_r+0x165e>
 8004162:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004166:	2200      	movs	r2, #0
 8004168:	4b39      	ldr	r3, [pc, #228]	; (8004250 <_vfprintf_r+0x1460>)
 800416a:	f7fc ff7f 	bl	800106c <__aeabi_dcmpeq>
 800416e:	b110      	cbz	r0, 8004176 <_vfprintf_r+0x1386>
 8004170:	07e2      	lsls	r2, r4, #31
 8004172:	f100 816c 	bmi.w	800444e <_vfprintf_r+0x165e>
 8004176:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004178:	2b00      	cmp	r3, #0
 800417a:	db07      	blt.n	800418c <_vfprintf_r+0x139c>
 800417c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800417e:	3301      	adds	r3, #1
 8004180:	442b      	add	r3, r5
 8004182:	2230      	movs	r2, #48	; 0x30
 8004184:	f805 2b01 	strb.w	r2, [r5], #1
 8004188:	42ab      	cmp	r3, r5
 800418a:	d1fb      	bne.n	8004184 <_vfprintf_r+0x1394>
 800418c:	1beb      	subs	r3, r5, r7
 800418e:	4640      	mov	r0, r8
 8004190:	9310      	str	r3, [sp, #64]	; 0x40
 8004192:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004196:	e683      	b.n	8003ea0 <_vfprintf_r+0x10b0>
 8004198:	f8cd 9010 	str.w	r9, [sp, #16]
 800419c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80041a0:	9408      	str	r4, [sp, #32]
 80041a2:	4681      	mov	r9, r0
 80041a4:	900f      	str	r0, [sp, #60]	; 0x3c
 80041a6:	9014      	str	r0, [sp, #80]	; 0x50
 80041a8:	9011      	str	r0, [sp, #68]	; 0x44
 80041aa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041ae:	f7fe bfac 	b.w	800310a <_vfprintf_r+0x31a>
 80041b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80041b4:	9907      	ldr	r1, [sp, #28]
 80041b6:	9803      	ldr	r0, [sp, #12]
 80041b8:	f002 fe64 	bl	8006e84 <__sprint_r>
 80041bc:	2800      	cmp	r0, #0
 80041be:	f47f ab8f 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 80041c2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80041c4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80041c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041ca:	e511      	b.n	8003bf0 <_vfprintf_r+0xe00>
 80041cc:	4252      	negs	r2, r2
 80041ce:	9206      	str	r2, [sp, #24]
 80041d0:	9308      	str	r3, [sp, #32]
 80041d2:	f7ff b96d 	b.w	80034b0 <_vfprintf_r+0x6c0>
 80041d6:	4614      	mov	r4, r2
 80041d8:	4632      	mov	r2, r6
 80041da:	461e      	mov	r6, r3
 80041dc:	4613      	mov	r3, r2
 80041de:	462a      	mov	r2, r5
 80041e0:	3201      	adds	r2, #1
 80041e2:	9209      	str	r2, [sp, #36]	; 0x24
 80041e4:	f106 0208 	add.w	r2, r6, #8
 80041e8:	e9c6 3900 	strd	r3, r9, [r6]
 80041ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80041ee:	932b      	str	r3, [sp, #172]	; 0xac
 80041f0:	444c      	add	r4, r9
 80041f2:	2b07      	cmp	r3, #7
 80041f4:	942c      	str	r4, [sp, #176]	; 0xb0
 80041f6:	f73f acc3 	bgt.w	8003b80 <_vfprintf_r+0xd90>
 80041fa:	3301      	adds	r3, #1
 80041fc:	9309      	str	r3, [sp, #36]	; 0x24
 80041fe:	f102 0b08 	add.w	fp, r2, #8
 8004202:	4616      	mov	r6, r2
 8004204:	f7ff bbca 	b.w	800399c <_vfprintf_r+0xbac>
 8004208:	aa2a      	add	r2, sp, #168	; 0xa8
 800420a:	9907      	ldr	r1, [sp, #28]
 800420c:	9803      	ldr	r0, [sp, #12]
 800420e:	f002 fe39 	bl	8006e84 <__sprint_r>
 8004212:	2800      	cmp	r0, #0
 8004214:	f47f ab64 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8004218:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800421a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800421e:	f7ff bade 	b.w	80037de <_vfprintf_r+0x9ee>
 8004222:	464b      	mov	r3, r9
 8004224:	2b06      	cmp	r3, #6
 8004226:	bf28      	it	cs
 8004228:	2306      	movcs	r3, #6
 800422a:	46b9      	mov	r9, r7
 800422c:	970f      	str	r7, [sp, #60]	; 0x3c
 800422e:	9714      	str	r7, [sp, #80]	; 0x50
 8004230:	9711      	str	r7, [sp, #68]	; 0x44
 8004232:	970a      	str	r7, [sp, #40]	; 0x28
 8004234:	463a      	mov	r2, r7
 8004236:	9304      	str	r3, [sp, #16]
 8004238:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800423c:	4f05      	ldr	r7, [pc, #20]	; (8004254 <_vfprintf_r+0x1464>)
 800423e:	f7fe bf64 	b.w	800310a <_vfprintf_r+0x31a>
 8004242:	bf00      	nop
 8004244:	08007550 	.word	0x08007550
 8004248:	08007534 	.word	0x08007534
 800424c:	40300000 	.word	0x40300000
 8004250:	3fe00000 	.word	0x3fe00000
 8004254:	08007548 	.word	0x08007548
 8004258:	460c      	mov	r4, r1
 800425a:	4639      	mov	r1, r7
 800425c:	465f      	mov	r7, fp
 800425e:	469b      	mov	fp, r3
 8004260:	460b      	mov	r3, r1
 8004262:	3201      	adds	r2, #1
 8004264:	442c      	add	r4, r5
 8004266:	2a07      	cmp	r2, #7
 8004268:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800426c:	e9cb 3500 	strd	r3, r5, [fp]
 8004270:	f73f aca5 	bgt.w	8003bbe <_vfprintf_r+0xdce>
 8004274:	f10b 0b08 	add.w	fp, fp, #8
 8004278:	e4ac      	b.n	8003bd4 <_vfprintf_r+0xde4>
 800427a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800427c:	1cda      	adds	r2, r3, #3
 800427e:	db02      	blt.n	8004286 <_vfprintf_r+0x1496>
 8004280:	4599      	cmp	r9, r3
 8004282:	f280 80b5 	bge.w	80043f0 <_vfprintf_r+0x1600>
 8004286:	3e02      	subs	r6, #2
 8004288:	f026 0320 	bic.w	r3, r6, #32
 800428c:	9304      	str	r3, [sp, #16]
 800428e:	e611      	b.n	8003eb4 <_vfprintf_r+0x10c4>
 8004290:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004292:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8004296:	465a      	mov	r2, fp
 8004298:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800429c:	18fb      	adds	r3, r7, r3
 800429e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80042a2:	970c      	str	r7, [sp, #48]	; 0x30
 80042a4:	4eaf      	ldr	r6, [pc, #700]	; (8004564 <_vfprintf_r+0x1774>)
 80042a6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80042aa:	9309      	str	r3, [sp, #36]	; 0x24
 80042ac:	464f      	mov	r7, r9
 80042ae:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80042b2:	4621      	mov	r1, r4
 80042b4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	d05b      	beq.n	8004372 <_vfprintf_r+0x1582>
 80042ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80042bc:	2b00      	cmp	r3, #0
 80042be:	d154      	bne.n	800436a <_vfprintf_r+0x157a>
 80042c0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042c2:	3b01      	subs	r3, #1
 80042c4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80042c8:	9314      	str	r3, [sp, #80]	; 0x50
 80042ca:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80042cc:	9818      	ldr	r0, [sp, #96]	; 0x60
 80042ce:	6010      	str	r0, [r2, #0]
 80042d0:	3301      	adds	r3, #1
 80042d2:	4459      	add	r1, fp
 80042d4:	2b07      	cmp	r3, #7
 80042d6:	912c      	str	r1, [sp, #176]	; 0xb0
 80042d8:	f8c2 b004 	str.w	fp, [r2, #4]
 80042dc:	932b      	str	r3, [sp, #172]	; 0xac
 80042de:	dc68      	bgt.n	80043b2 <_vfprintf_r+0x15c2>
 80042e0:	3208      	adds	r2, #8
 80042e2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80042e4:	f898 3000 	ldrb.w	r3, [r8]
 80042e8:	1bc5      	subs	r5, r0, r7
 80042ea:	429d      	cmp	r5, r3
 80042ec:	bfa8      	it	ge
 80042ee:	461d      	movge	r5, r3
 80042f0:	2d00      	cmp	r5, #0
 80042f2:	dd0b      	ble.n	800430c <_vfprintf_r+0x151c>
 80042f4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80042f6:	6017      	str	r7, [r2, #0]
 80042f8:	3301      	adds	r3, #1
 80042fa:	4429      	add	r1, r5
 80042fc:	2b07      	cmp	r3, #7
 80042fe:	912c      	str	r1, [sp, #176]	; 0xb0
 8004300:	6055      	str	r5, [r2, #4]
 8004302:	932b      	str	r3, [sp, #172]	; 0xac
 8004304:	dc5e      	bgt.n	80043c4 <_vfprintf_r+0x15d4>
 8004306:	f898 3000 	ldrb.w	r3, [r8]
 800430a:	3208      	adds	r2, #8
 800430c:	2d00      	cmp	r5, #0
 800430e:	bfac      	ite	ge
 8004310:	1b5d      	subge	r5, r3, r5
 8004312:	461d      	movlt	r5, r3
 8004314:	2d00      	cmp	r5, #0
 8004316:	dd26      	ble.n	8004366 <_vfprintf_r+0x1576>
 8004318:	2d10      	cmp	r5, #16
 800431a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800431c:	dd3c      	ble.n	8004398 <_vfprintf_r+0x15a8>
 800431e:	2410      	movs	r4, #16
 8004320:	e003      	b.n	800432a <_vfprintf_r+0x153a>
 8004322:	3208      	adds	r2, #8
 8004324:	3d10      	subs	r5, #16
 8004326:	2d10      	cmp	r5, #16
 8004328:	dd36      	ble.n	8004398 <_vfprintf_r+0x15a8>
 800432a:	3001      	adds	r0, #1
 800432c:	3110      	adds	r1, #16
 800432e:	2807      	cmp	r0, #7
 8004330:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004334:	e9c2 6400 	strd	r6, r4, [r2]
 8004338:	ddf3      	ble.n	8004322 <_vfprintf_r+0x1532>
 800433a:	aa2a      	add	r2, sp, #168	; 0xa8
 800433c:	4651      	mov	r1, sl
 800433e:	4648      	mov	r0, r9
 8004340:	f002 fda0 	bl	8006e84 <__sprint_r>
 8004344:	2800      	cmp	r0, #0
 8004346:	d150      	bne.n	80043ea <_vfprintf_r+0x15fa>
 8004348:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800434c:	aa2d      	add	r2, sp, #180	; 0xb4
 800434e:	e7e9      	b.n	8004324 <_vfprintf_r+0x1534>
 8004350:	aa2a      	add	r2, sp, #168	; 0xa8
 8004352:	4651      	mov	r1, sl
 8004354:	4648      	mov	r0, r9
 8004356:	f002 fd95 	bl	8006e84 <__sprint_r>
 800435a:	2800      	cmp	r0, #0
 800435c:	d145      	bne.n	80043ea <_vfprintf_r+0x15fa>
 800435e:	f898 3000 	ldrb.w	r3, [r8]
 8004362:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004364:	aa2d      	add	r2, sp, #180	; 0xb4
 8004366:	441f      	add	r7, r3
 8004368:	e7a4      	b.n	80042b4 <_vfprintf_r+0x14c4>
 800436a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800436c:	3b01      	subs	r3, #1
 800436e:	930f      	str	r3, [sp, #60]	; 0x3c
 8004370:	e7ab      	b.n	80042ca <_vfprintf_r+0x14da>
 8004372:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004374:	2b00      	cmp	r3, #0
 8004376:	d1f8      	bne.n	800436a <_vfprintf_r+0x157a>
 8004378:	46b9      	mov	r9, r7
 800437a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800437c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800437e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004382:	18fb      	adds	r3, r7, r3
 8004384:	4599      	cmp	r9, r3
 8004386:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800438a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800438e:	4693      	mov	fp, r2
 8004390:	460c      	mov	r4, r1
 8004392:	bf28      	it	cs
 8004394:	4699      	movcs	r9, r3
 8004396:	e424      	b.n	8003be2 <_vfprintf_r+0xdf2>
 8004398:	3001      	adds	r0, #1
 800439a:	4429      	add	r1, r5
 800439c:	2807      	cmp	r0, #7
 800439e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80043a2:	e9c2 6500 	strd	r6, r5, [r2]
 80043a6:	dcd3      	bgt.n	8004350 <_vfprintf_r+0x1560>
 80043a8:	f898 3000 	ldrb.w	r3, [r8]
 80043ac:	3208      	adds	r2, #8
 80043ae:	441f      	add	r7, r3
 80043b0:	e780      	b.n	80042b4 <_vfprintf_r+0x14c4>
 80043b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80043b4:	4651      	mov	r1, sl
 80043b6:	4648      	mov	r0, r9
 80043b8:	f002 fd64 	bl	8006e84 <__sprint_r>
 80043bc:	b9a8      	cbnz	r0, 80043ea <_vfprintf_r+0x15fa>
 80043be:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80043c0:	aa2d      	add	r2, sp, #180	; 0xb4
 80043c2:	e78e      	b.n	80042e2 <_vfprintf_r+0x14f2>
 80043c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80043c6:	4651      	mov	r1, sl
 80043c8:	4648      	mov	r0, r9
 80043ca:	f002 fd5b 	bl	8006e84 <__sprint_r>
 80043ce:	b960      	cbnz	r0, 80043ea <_vfprintf_r+0x15fa>
 80043d0:	f898 3000 	ldrb.w	r3, [r8]
 80043d4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80043d6:	aa2d      	add	r2, sp, #180	; 0xb4
 80043d8:	e798      	b.n	800430c <_vfprintf_r+0x151c>
 80043da:	4638      	mov	r0, r7
 80043dc:	f7fc fd30 	bl	8000e40 <strlen>
 80043e0:	46a9      	mov	r9, r5
 80043e2:	4603      	mov	r3, r0
 80043e4:	9009      	str	r0, [sp, #36]	; 0x24
 80043e6:	f7ff b8f4 	b.w	80035d2 <_vfprintf_r+0x7e2>
 80043ea:	46d1      	mov	r9, sl
 80043ec:	f7ff ba7a 	b.w	80038e4 <_vfprintf_r+0xaf4>
 80043f0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043f2:	4619      	mov	r1, r3
 80043f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043f6:	4299      	cmp	r1, r3
 80043f8:	f300 8082 	bgt.w	8004500 <_vfprintf_r+0x1710>
 80043fc:	07c4      	lsls	r4, r0, #31
 80043fe:	f140 816b 	bpl.w	80046d8 <_vfprintf_r+0x18e8>
 8004402:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004404:	4413      	add	r3, r2
 8004406:	9309      	str	r3, [sp, #36]	; 0x24
 8004408:	0541      	lsls	r1, r0, #21
 800440a:	d503      	bpl.n	8004414 <_vfprintf_r+0x1624>
 800440c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800440e:	2b00      	cmp	r3, #0
 8004410:	f300 80e6 	bgt.w	80045e0 <_vfprintf_r+0x17f0>
 8004414:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004416:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800441a:	9304      	str	r3, [sp, #16]
 800441c:	2667      	movs	r6, #103	; 0x67
 800441e:	2300      	movs	r3, #0
 8004420:	930f      	str	r3, [sp, #60]	; 0x3c
 8004422:	9314      	str	r3, [sp, #80]	; 0x50
 8004424:	e586      	b.n	8003f34 <_vfprintf_r+0x1144>
 8004426:	222d      	movs	r2, #45	; 0x2d
 8004428:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800442c:	f04f 0900 	mov.w	r9, #0
 8004430:	f7fe be6c 	b.w	800310c <_vfprintf_r+0x31c>
 8004434:	46a1      	mov	r9, r4
 8004436:	f7ff ba55 	b.w	80038e4 <_vfprintf_r+0xaf4>
 800443a:	900a      	str	r0, [sp, #40]	; 0x28
 800443c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004440:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8004444:	931f      	str	r3, [sp, #124]	; 0x7c
 8004446:	232d      	movs	r3, #45	; 0x2d
 8004448:	911e      	str	r1, [sp, #120]	; 0x78
 800444a:	930b      	str	r3, [sp, #44]	; 0x2c
 800444c:	e619      	b.n	8004082 <_vfprintf_r+0x1292>
 800444e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004450:	9328      	str	r3, [sp, #160]	; 0xa0
 8004452:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004454:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004458:	7bd9      	ldrb	r1, [r3, #15]
 800445a:	4291      	cmp	r1, r2
 800445c:	462b      	mov	r3, r5
 800445e:	d109      	bne.n	8004474 <_vfprintf_r+0x1684>
 8004460:	2030      	movs	r0, #48	; 0x30
 8004462:	f803 0c01 	strb.w	r0, [r3, #-1]
 8004466:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004468:	1e5a      	subs	r2, r3, #1
 800446a:	9228      	str	r2, [sp, #160]	; 0xa0
 800446c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004470:	4291      	cmp	r1, r2
 8004472:	d0f6      	beq.n	8004462 <_vfprintf_r+0x1672>
 8004474:	2a39      	cmp	r2, #57	; 0x39
 8004476:	bf0b      	itete	eq
 8004478:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800447a:	3201      	addne	r2, #1
 800447c:	7a92      	ldrbeq	r2, [r2, #10]
 800447e:	b2d2      	uxtbne	r2, r2
 8004480:	f803 2c01 	strb.w	r2, [r3, #-1]
 8004484:	e682      	b.n	800418c <_vfprintf_r+0x139c>
 8004486:	f418 7f00 	tst.w	r8, #512	; 0x200
 800448a:	f43f ad9f 	beq.w	8003fcc <_vfprintf_r+0x11dc>
 800448e:	9a05      	ldr	r2, [sp, #20]
 8004490:	701a      	strb	r2, [r3, #0]
 8004492:	4657      	mov	r7, sl
 8004494:	f7fe bf52 	b.w	800333c <_vfprintf_r+0x54c>
 8004498:	aa2a      	add	r2, sp, #168	; 0xa8
 800449a:	9907      	ldr	r1, [sp, #28]
 800449c:	9803      	ldr	r0, [sp, #12]
 800449e:	f002 fcf1 	bl	8006e84 <__sprint_r>
 80044a2:	2800      	cmp	r0, #0
 80044a4:	f47f aa1c 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 80044a8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80044aa:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80044ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044b2:	e571      	b.n	8003f98 <_vfprintf_r+0x11a8>
 80044b4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044b6:	2b00      	cmp	r3, #0
 80044b8:	f340 8164 	ble.w	8004784 <_vfprintf_r+0x1994>
 80044bc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044be:	f1b9 0f00 	cmp.w	r9, #0
 80044c2:	f040 8103 	bne.w	80046cc <_vfprintf_r+0x18dc>
 80044c6:	07c6      	lsls	r6, r0, #31
 80044c8:	f100 8100 	bmi.w	80046cc <_vfprintf_r+0x18dc>
 80044cc:	9309      	str	r3, [sp, #36]	; 0x24
 80044ce:	2666      	movs	r6, #102	; 0x66
 80044d0:	0543      	lsls	r3, r0, #21
 80044d2:	f100 8086 	bmi.w	80045e2 <_vfprintf_r+0x17f2>
 80044d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044d8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80044dc:	9304      	str	r3, [sp, #16]
 80044de:	e79e      	b.n	800441e <_vfprintf_r+0x162e>
 80044e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80044e2:	9907      	ldr	r1, [sp, #28]
 80044e4:	9803      	ldr	r0, [sp, #12]
 80044e6:	f002 fccd 	bl	8006e84 <__sprint_r>
 80044ea:	2800      	cmp	r0, #0
 80044ec:	f47f a9f8 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 80044f0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80044f2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80044f4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80044f6:	1ad3      	subs	r3, r2, r3
 80044f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044fc:	f7ff bb90 	b.w	8003c20 <_vfprintf_r+0xe30>
 8004500:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004502:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004504:	4413      	add	r3, r2
 8004506:	9309      	str	r3, [sp, #36]	; 0x24
 8004508:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800450a:	2b00      	cmp	r3, #0
 800450c:	f340 8149 	ble.w	80047a2 <_vfprintf_r+0x19b2>
 8004510:	2667      	movs	r6, #103	; 0x67
 8004512:	e7dd      	b.n	80044d0 <_vfprintf_r+0x16e0>
 8004514:	2330      	movs	r3, #48	; 0x30
 8004516:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800451a:	2358      	movs	r3, #88	; 0x58
 800451c:	e595      	b.n	800404a <_vfprintf_r+0x125a>
 800451e:	9803      	ldr	r0, [sp, #12]
 8004520:	aa2a      	add	r2, sp, #168	; 0xa8
 8004522:	4649      	mov	r1, r9
 8004524:	f002 fcae 	bl	8006e84 <__sprint_r>
 8004528:	2800      	cmp	r0, #0
 800452a:	f47f a9e0 	bne.w	80038ee <_vfprintf_r+0xafe>
 800452e:	f7fe bf0f 	b.w	8003350 <_vfprintf_r+0x560>
 8004532:	a824      	add	r0, sp, #144	; 0x90
 8004534:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004538:	f002 fbf0 	bl	8006d1c <frexp>
 800453c:	2200      	movs	r2, #0
 800453e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004542:	ec51 0b10 	vmov	r0, r1, d0
 8004546:	f7fc f817 	bl	8000578 <__aeabi_dmul>
 800454a:	2200      	movs	r2, #0
 800454c:	2300      	movs	r3, #0
 800454e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004552:	f7fc fd8b 	bl	800106c <__aeabi_dcmpeq>
 8004556:	b108      	cbz	r0, 800455c <_vfprintf_r+0x176c>
 8004558:	2301      	movs	r3, #1
 800455a:	9324      	str	r3, [sp, #144]	; 0x90
 800455c:	4b02      	ldr	r3, [pc, #8]	; (8004568 <_vfprintf_r+0x1778>)
 800455e:	9309      	str	r3, [sp, #36]	; 0x24
 8004560:	e5ac      	b.n	80040bc <_vfprintf_r+0x12cc>
 8004562:	bf00      	nop
 8004564:	08007564 	.word	0x08007564
 8004568:	08007520 	.word	0x08007520
 800456c:	425d      	negs	r5, r3
 800456e:	3310      	adds	r3, #16
 8004570:	4bb9      	ldr	r3, [pc, #740]	; (8004858 <_vfprintf_r+0x1a68>)
 8004572:	f280 8097 	bge.w	80046a4 <_vfprintf_r+0x18b4>
 8004576:	4619      	mov	r1, r3
 8004578:	2610      	movs	r6, #16
 800457a:	4623      	mov	r3, r4
 800457c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004580:	460c      	mov	r4, r1
 8004582:	e005      	b.n	8004590 <_vfprintf_r+0x17a0>
 8004584:	f10b 0b08 	add.w	fp, fp, #8
 8004588:	3d10      	subs	r5, #16
 800458a:	2d10      	cmp	r5, #16
 800458c:	f340 8087 	ble.w	800469e <_vfprintf_r+0x18ae>
 8004590:	3201      	adds	r2, #1
 8004592:	3310      	adds	r3, #16
 8004594:	2a07      	cmp	r2, #7
 8004596:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800459a:	e9cb 4600 	strd	r4, r6, [fp]
 800459e:	ddf1      	ble.n	8004584 <_vfprintf_r+0x1794>
 80045a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80045a2:	9907      	ldr	r1, [sp, #28]
 80045a4:	4648      	mov	r0, r9
 80045a6:	f002 fc6d 	bl	8006e84 <__sprint_r>
 80045aa:	2800      	cmp	r0, #0
 80045ac:	f47f a998 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 80045b0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80045b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045b8:	e7e6      	b.n	8004588 <_vfprintf_r+0x1798>
 80045ba:	f109 0101 	add.w	r1, r9, #1
 80045be:	9803      	ldr	r0, [sp, #12]
 80045c0:	f7fd fffa 	bl	80025b8 <_malloc_r>
 80045c4:	4607      	mov	r7, r0
 80045c6:	2800      	cmp	r0, #0
 80045c8:	f000 813b 	beq.w	8004842 <_vfprintf_r+0x1a52>
 80045cc:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80045d0:	930e      	str	r3, [sp, #56]	; 0x38
 80045d2:	f026 0320 	bic.w	r3, r6, #32
 80045d6:	9304      	str	r3, [sp, #16]
 80045d8:	46a0      	mov	r8, r4
 80045da:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80045dc:	900a      	str	r0, [sp, #40]	; 0x28
 80045de:	e547      	b.n	8004070 <_vfprintf_r+0x1280>
 80045e0:	2667      	movs	r6, #103	; 0x67
 80045e2:	981a      	ldr	r0, [sp, #104]	; 0x68
 80045e4:	2200      	movs	r2, #0
 80045e6:	920f      	str	r2, [sp, #60]	; 0x3c
 80045e8:	9214      	str	r2, [sp, #80]	; 0x50
 80045ea:	7803      	ldrb	r3, [r0, #0]
 80045ec:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80045ee:	2bff      	cmp	r3, #255	; 0xff
 80045f0:	d00c      	beq.n	800460c <_vfprintf_r+0x181c>
 80045f2:	4293      	cmp	r3, r2
 80045f4:	da0a      	bge.n	800460c <_vfprintf_r+0x181c>
 80045f6:	7841      	ldrb	r1, [r0, #1]
 80045f8:	1ad2      	subs	r2, r2, r3
 80045fa:	b1a9      	cbz	r1, 8004628 <_vfprintf_r+0x1838>
 80045fc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80045fe:	3301      	adds	r3, #1
 8004600:	9314      	str	r3, [sp, #80]	; 0x50
 8004602:	460b      	mov	r3, r1
 8004604:	2bff      	cmp	r3, #255	; 0xff
 8004606:	f100 0001 	add.w	r0, r0, #1
 800460a:	d1f2      	bne.n	80045f2 <_vfprintf_r+0x1802>
 800460c:	9211      	str	r2, [sp, #68]	; 0x44
 800460e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004610:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004612:	9909      	ldr	r1, [sp, #36]	; 0x24
 8004614:	901a      	str	r0, [sp, #104]	; 0x68
 8004616:	4413      	add	r3, r2
 8004618:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800461a:	fb02 1303 	mla	r3, r2, r3, r1
 800461e:	9309      	str	r3, [sp, #36]	; 0x24
 8004620:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004624:	9304      	str	r3, [sp, #16]
 8004626:	e485      	b.n	8003f34 <_vfprintf_r+0x1144>
 8004628:	990f      	ldr	r1, [sp, #60]	; 0x3c
 800462a:	3101      	adds	r1, #1
 800462c:	910f      	str	r1, [sp, #60]	; 0x3c
 800462e:	e7de      	b.n	80045ee <_vfprintf_r+0x17fe>
 8004630:	aa28      	add	r2, sp, #160	; 0xa0
 8004632:	ab25      	add	r3, sp, #148	; 0x94
 8004634:	e9cd 3200 	strd	r3, r2, [sp]
 8004638:	2103      	movs	r1, #3
 800463a:	ab24      	add	r3, sp, #144	; 0x90
 800463c:	464a      	mov	r2, r9
 800463e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004642:	9803      	ldr	r0, [sp, #12]
 8004644:	f000 fa6c 	bl	8004b20 <_dtoa_r>
 8004648:	464d      	mov	r5, r9
 800464a:	4607      	mov	r7, r0
 800464c:	eb00 0409 	add.w	r4, r0, r9
 8004650:	783b      	ldrb	r3, [r7, #0]
 8004652:	2b30      	cmp	r3, #48	; 0x30
 8004654:	f000 80be 	beq.w	80047d4 <_vfprintf_r+0x19e4>
 8004658:	9d24      	ldr	r5, [sp, #144]	; 0x90
 800465a:	442c      	add	r4, r5
 800465c:	2200      	movs	r2, #0
 800465e:	2300      	movs	r3, #0
 8004660:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004664:	f7fc fd02 	bl	800106c <__aeabi_dcmpeq>
 8004668:	b108      	cbz	r0, 800466e <_vfprintf_r+0x187e>
 800466a:	4623      	mov	r3, r4
 800466c:	e413      	b.n	8003e96 <_vfprintf_r+0x10a6>
 800466e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004670:	42a3      	cmp	r3, r4
 8004672:	f4bf ac10 	bcs.w	8003e96 <_vfprintf_r+0x10a6>
 8004676:	2130      	movs	r1, #48	; 0x30
 8004678:	1c5a      	adds	r2, r3, #1
 800467a:	9228      	str	r2, [sp, #160]	; 0xa0
 800467c:	7019      	strb	r1, [r3, #0]
 800467e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004680:	429c      	cmp	r4, r3
 8004682:	d8f9      	bhi.n	8004678 <_vfprintf_r+0x1888>
 8004684:	e407      	b.n	8003e96 <_vfprintf_r+0x10a6>
 8004686:	197c      	adds	r4, r7, r5
 8004688:	e7e8      	b.n	800465c <_vfprintf_r+0x186c>
 800468a:	f1b9 0f00 	cmp.w	r9, #0
 800468e:	f000 8092 	beq.w	80047b6 <_vfprintf_r+0x19c6>
 8004692:	900a      	str	r0, [sp, #40]	; 0x28
 8004694:	e4ec      	b.n	8004070 <_vfprintf_r+0x1280>
 8004696:	900a      	str	r0, [sp, #40]	; 0x28
 8004698:	f04f 0906 	mov.w	r9, #6
 800469c:	e4e8      	b.n	8004070 <_vfprintf_r+0x1280>
 800469e:	4621      	mov	r1, r4
 80046a0:	461c      	mov	r4, r3
 80046a2:	460b      	mov	r3, r1
 80046a4:	3201      	adds	r2, #1
 80046a6:	442c      	add	r4, r5
 80046a8:	2a07      	cmp	r2, #7
 80046aa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80046ae:	e9cb 3500 	strd	r3, r5, [fp]
 80046b2:	f300 80a9 	bgt.w	8004808 <_vfprintf_r+0x1a18>
 80046b6:	f10b 0b08 	add.w	fp, fp, #8
 80046ba:	e470      	b.n	8003f9e <_vfprintf_r+0x11ae>
 80046bc:	469a      	mov	sl, r3
 80046be:	f7ff bb37 	b.w	8003d30 <_vfprintf_r+0xf40>
 80046c2:	2301      	movs	r3, #1
 80046c4:	9324      	str	r3, [sp, #144]	; 0x90
 80046c6:	4b65      	ldr	r3, [pc, #404]	; (800485c <_vfprintf_r+0x1a6c>)
 80046c8:	9309      	str	r3, [sp, #36]	; 0x24
 80046ca:	e4f7      	b.n	80040bc <_vfprintf_r+0x12cc>
 80046cc:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80046ce:	4413      	add	r3, r2
 80046d0:	444b      	add	r3, r9
 80046d2:	9309      	str	r3, [sp, #36]	; 0x24
 80046d4:	2666      	movs	r6, #102	; 0x66
 80046d6:	e6fb      	b.n	80044d0 <_vfprintf_r+0x16e0>
 80046d8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80046da:	9309      	str	r3, [sp, #36]	; 0x24
 80046dc:	e694      	b.n	8004408 <_vfprintf_r+0x1618>
 80046de:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80046e2:	4664      	mov	r4, ip
 80046e4:	4d5e      	ldr	r5, [pc, #376]	; (8004860 <_vfprintf_r+0x1a70>)
 80046e6:	e000      	b.n	80046ea <_vfprintf_r+0x18fa>
 80046e8:	4614      	mov	r4, r2
 80046ea:	fba5 1203 	umull	r1, r2, r5, r3
 80046ee:	08d2      	lsrs	r2, r2, #3
 80046f0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80046f4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80046f8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80046fc:	4613      	mov	r3, r2
 80046fe:	2b09      	cmp	r3, #9
 8004700:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004704:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004708:	dcee      	bgt.n	80046e8 <_vfprintf_r+0x18f8>
 800470a:	3330      	adds	r3, #48	; 0x30
 800470c:	3c02      	subs	r4, #2
 800470e:	b2db      	uxtb	r3, r3
 8004710:	45a4      	cmp	ip, r4
 8004712:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004716:	f240 8090 	bls.w	800483a <_vfprintf_r+0x1a4a>
 800471a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800471e:	4611      	mov	r1, r2
 8004720:	e001      	b.n	8004726 <_vfprintf_r+0x1936>
 8004722:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004726:	f804 3b01 	strb.w	r3, [r4], #1
 800472a:	458c      	cmp	ip, r1
 800472c:	d1f9      	bne.n	8004722 <_vfprintf_r+0x1932>
 800472e:	ab2a      	add	r3, sp, #168	; 0xa8
 8004730:	1a9b      	subs	r3, r3, r2
 8004732:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004736:	4413      	add	r3, r2
 8004738:	f7ff bbe3 	b.w	8003f02 <_vfprintf_r+0x1112>
 800473c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800473e:	4f49      	ldr	r7, [pc, #292]	; (8004864 <_vfprintf_r+0x1a74>)
 8004740:	2b00      	cmp	r3, #0
 8004742:	bfb6      	itet	lt
 8004744:	222d      	movlt	r2, #45	; 0x2d
 8004746:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 800474a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 800474e:	4b46      	ldr	r3, [pc, #280]	; (8004868 <_vfprintf_r+0x1a78>)
 8004750:	f7fe bf02 	b.w	8003558 <_vfprintf_r+0x768>
 8004754:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004758:	f7ff b8c9 	b.w	80038ee <_vfprintf_r+0xafe>
 800475c:	aa28      	add	r2, sp, #160	; 0xa0
 800475e:	ab25      	add	r3, sp, #148	; 0x94
 8004760:	e9cd 3200 	strd	r3, r2, [sp]
 8004764:	2103      	movs	r1, #3
 8004766:	ab24      	add	r3, sp, #144	; 0x90
 8004768:	464a      	mov	r2, r9
 800476a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800476e:	9803      	ldr	r0, [sp, #12]
 8004770:	f000 f9d6 	bl	8004b20 <_dtoa_r>
 8004774:	464d      	mov	r5, r9
 8004776:	4607      	mov	r7, r0
 8004778:	2e46      	cmp	r6, #70	; 0x46
 800477a:	eb07 0405 	add.w	r4, r7, r5
 800477e:	f43f af67 	beq.w	8004650 <_vfprintf_r+0x1860>
 8004782:	e76b      	b.n	800465c <_vfprintf_r+0x186c>
 8004784:	f1b9 0f00 	cmp.w	r9, #0
 8004788:	d131      	bne.n	80047ee <_vfprintf_r+0x19fe>
 800478a:	07c5      	lsls	r5, r0, #31
 800478c:	d42f      	bmi.n	80047ee <_vfprintf_r+0x19fe>
 800478e:	2301      	movs	r3, #1
 8004790:	9304      	str	r3, [sp, #16]
 8004792:	9309      	str	r3, [sp, #36]	; 0x24
 8004794:	2666      	movs	r6, #102	; 0x66
 8004796:	e642      	b.n	800441e <_vfprintf_r+0x162e>
 8004798:	07c3      	lsls	r3, r0, #31
 800479a:	f57f abbf 	bpl.w	8003f1c <_vfprintf_r+0x112c>
 800479e:	f7ff bbb9 	b.w	8003f14 <_vfprintf_r+0x1124>
 80047a2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80047a4:	f1c3 0301 	rsb	r3, r3, #1
 80047a8:	441a      	add	r2, r3
 80047aa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80047ae:	9209      	str	r2, [sp, #36]	; 0x24
 80047b0:	9304      	str	r3, [sp, #16]
 80047b2:	2667      	movs	r6, #103	; 0x67
 80047b4:	e633      	b.n	800441e <_vfprintf_r+0x162e>
 80047b6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80047ba:	f04f 0901 	mov.w	r9, #1
 80047be:	e457      	b.n	8004070 <_vfprintf_r+0x1280>
 80047c0:	465a      	mov	r2, fp
 80047c2:	e511      	b.n	80041e8 <_vfprintf_r+0x13f8>
 80047c4:	2e47      	cmp	r6, #71	; 0x47
 80047c6:	f47f af5e 	bne.w	8004686 <_vfprintf_r+0x1896>
 80047ca:	f018 0f01 	tst.w	r8, #1
 80047ce:	f43f ab61 	beq.w	8003e94 <_vfprintf_r+0x10a4>
 80047d2:	e7d1      	b.n	8004778 <_vfprintf_r+0x1988>
 80047d4:	2200      	movs	r2, #0
 80047d6:	2300      	movs	r3, #0
 80047d8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80047dc:	f7fc fc46 	bl	800106c <__aeabi_dcmpeq>
 80047e0:	2800      	cmp	r0, #0
 80047e2:	f47f af39 	bne.w	8004658 <_vfprintf_r+0x1868>
 80047e6:	f1c5 0501 	rsb	r5, r5, #1
 80047ea:	9524      	str	r5, [sp, #144]	; 0x90
 80047ec:	e735      	b.n	800465a <_vfprintf_r+0x186a>
 80047ee:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80047f0:	3301      	adds	r3, #1
 80047f2:	444b      	add	r3, r9
 80047f4:	9309      	str	r3, [sp, #36]	; 0x24
 80047f6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80047fa:	9304      	str	r3, [sp, #16]
 80047fc:	2666      	movs	r6, #102	; 0x66
 80047fe:	e60e      	b.n	800441e <_vfprintf_r+0x162e>
 8004800:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004804:	f7ff bb7a 	b.w	8003efc <_vfprintf_r+0x110c>
 8004808:	aa2a      	add	r2, sp, #168	; 0xa8
 800480a:	9907      	ldr	r1, [sp, #28]
 800480c:	9803      	ldr	r0, [sp, #12]
 800480e:	f002 fb39 	bl	8006e84 <__sprint_r>
 8004812:	2800      	cmp	r0, #0
 8004814:	f47f a864 	bne.w	80038e0 <_vfprintf_r+0xaf0>
 8004818:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800481c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004820:	f7ff bbbd 	b.w	8003f9e <_vfprintf_r+0x11ae>
 8004824:	9908      	ldr	r1, [sp, #32]
 8004826:	f89a 6001 	ldrb.w	r6, [sl, #1]
 800482a:	680b      	ldr	r3, [r1, #0]
 800482c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004830:	1d0b      	adds	r3, r1, #4
 8004832:	4692      	mov	sl, r2
 8004834:	9308      	str	r3, [sp, #32]
 8004836:	f7fe bb59 	b.w	8002eec <_vfprintf_r+0xfc>
 800483a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 800483e:	f7ff bb60 	b.w	8003f02 <_vfprintf_r+0x1112>
 8004842:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004846:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800484a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800484e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004852:	f7ff b84c 	b.w	80038ee <_vfprintf_r+0xafe>
 8004856:	bf00      	nop
 8004858:	08007564 	.word	0x08007564
 800485c:	08007534 	.word	0x08007534
 8004860:	cccccccd 	.word	0xcccccccd
 8004864:	0800751c 	.word	0x0800751c
 8004868:	08007518 	.word	0x08007518

0800486c <__sbprintf>:
 800486c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004870:	460c      	mov	r4, r1
 8004872:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004876:	8989      	ldrh	r1, [r1, #12]
 8004878:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800487a:	89e5      	ldrh	r5, [r4, #14]
 800487c:	9619      	str	r6, [sp, #100]	; 0x64
 800487e:	f021 0102 	bic.w	r1, r1, #2
 8004882:	4606      	mov	r6, r0
 8004884:	69e0      	ldr	r0, [r4, #28]
 8004886:	f8ad 100c 	strh.w	r1, [sp, #12]
 800488a:	4617      	mov	r7, r2
 800488c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004890:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004892:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004896:	4698      	mov	r8, r3
 8004898:	ad1a      	add	r5, sp, #104	; 0x68
 800489a:	2300      	movs	r3, #0
 800489c:	9007      	str	r0, [sp, #28]
 800489e:	a816      	add	r0, sp, #88	; 0x58
 80048a0:	9209      	str	r2, [sp, #36]	; 0x24
 80048a2:	9306      	str	r3, [sp, #24]
 80048a4:	9500      	str	r5, [sp, #0]
 80048a6:	9504      	str	r5, [sp, #16]
 80048a8:	9102      	str	r1, [sp, #8]
 80048aa:	9105      	str	r1, [sp, #20]
 80048ac:	f001 fc9a 	bl	80061e4 <__retarget_lock_init_recursive>
 80048b0:	4643      	mov	r3, r8
 80048b2:	463a      	mov	r2, r7
 80048b4:	4669      	mov	r1, sp
 80048b6:	4630      	mov	r0, r6
 80048b8:	f7fe fa9a 	bl	8002df0 <_vfprintf_r>
 80048bc:	1e05      	subs	r5, r0, #0
 80048be:	db07      	blt.n	80048d0 <__sbprintf+0x64>
 80048c0:	4630      	mov	r0, r6
 80048c2:	4669      	mov	r1, sp
 80048c4:	f001 f8e6 	bl	8005a94 <_fflush_r>
 80048c8:	2800      	cmp	r0, #0
 80048ca:	bf18      	it	ne
 80048cc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80048d0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80048d4:	065b      	lsls	r3, r3, #25
 80048d6:	d503      	bpl.n	80048e0 <__sbprintf+0x74>
 80048d8:	89a3      	ldrh	r3, [r4, #12]
 80048da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80048de:	81a3      	strh	r3, [r4, #12]
 80048e0:	9816      	ldr	r0, [sp, #88]	; 0x58
 80048e2:	f001 fc81 	bl	80061e8 <__retarget_lock_close_recursive>
 80048e6:	4628      	mov	r0, r5
 80048e8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80048ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080048f0 <__ascii_wctomb>:
 80048f0:	b121      	cbz	r1, 80048fc <__ascii_wctomb+0xc>
 80048f2:	2aff      	cmp	r2, #255	; 0xff
 80048f4:	d804      	bhi.n	8004900 <__ascii_wctomb+0x10>
 80048f6:	700a      	strb	r2, [r1, #0]
 80048f8:	2001      	movs	r0, #1
 80048fa:	4770      	bx	lr
 80048fc:	4608      	mov	r0, r1
 80048fe:	4770      	bx	lr
 8004900:	238a      	movs	r3, #138	; 0x8a
 8004902:	6003      	str	r3, [r0, #0]
 8004904:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004908:	4770      	bx	lr
 800490a:	bf00      	nop

0800490c <__swsetup_r>:
 800490c:	b538      	push	{r3, r4, r5, lr}
 800490e:	4b31      	ldr	r3, [pc, #196]	; (80049d4 <__swsetup_r+0xc8>)
 8004910:	681b      	ldr	r3, [r3, #0]
 8004912:	4605      	mov	r5, r0
 8004914:	460c      	mov	r4, r1
 8004916:	b113      	cbz	r3, 800491e <__swsetup_r+0x12>
 8004918:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800491a:	2a00      	cmp	r2, #0
 800491c:	d03a      	beq.n	8004994 <__swsetup_r+0x88>
 800491e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004922:	b293      	uxth	r3, r2
 8004924:	0718      	lsls	r0, r3, #28
 8004926:	d50c      	bpl.n	8004942 <__swsetup_r+0x36>
 8004928:	6920      	ldr	r0, [r4, #16]
 800492a:	b1a8      	cbz	r0, 8004958 <__swsetup_r+0x4c>
 800492c:	f013 0201 	ands.w	r2, r3, #1
 8004930:	d020      	beq.n	8004974 <__swsetup_r+0x68>
 8004932:	6963      	ldr	r3, [r4, #20]
 8004934:	2200      	movs	r2, #0
 8004936:	425b      	negs	r3, r3
 8004938:	61a3      	str	r3, [r4, #24]
 800493a:	60a2      	str	r2, [r4, #8]
 800493c:	b300      	cbz	r0, 8004980 <__swsetup_r+0x74>
 800493e:	2000      	movs	r0, #0
 8004940:	bd38      	pop	{r3, r4, r5, pc}
 8004942:	06d9      	lsls	r1, r3, #27
 8004944:	d53e      	bpl.n	80049c4 <__swsetup_r+0xb8>
 8004946:	0758      	lsls	r0, r3, #29
 8004948:	d428      	bmi.n	800499c <__swsetup_r+0x90>
 800494a:	6920      	ldr	r0, [r4, #16]
 800494c:	f042 0308 	orr.w	r3, r2, #8
 8004950:	81a3      	strh	r3, [r4, #12]
 8004952:	b29b      	uxth	r3, r3
 8004954:	2800      	cmp	r0, #0
 8004956:	d1e9      	bne.n	800492c <__swsetup_r+0x20>
 8004958:	f403 7220 	and.w	r2, r3, #640	; 0x280
 800495c:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004960:	d0e4      	beq.n	800492c <__swsetup_r+0x20>
 8004962:	4628      	mov	r0, r5
 8004964:	4621      	mov	r1, r4
 8004966:	f001 fc73 	bl	8006250 <__smakebuf_r>
 800496a:	89a3      	ldrh	r3, [r4, #12]
 800496c:	6920      	ldr	r0, [r4, #16]
 800496e:	f013 0201 	ands.w	r2, r3, #1
 8004972:	d1de      	bne.n	8004932 <__swsetup_r+0x26>
 8004974:	0799      	lsls	r1, r3, #30
 8004976:	bf58      	it	pl
 8004978:	6962      	ldrpl	r2, [r4, #20]
 800497a:	60a2      	str	r2, [r4, #8]
 800497c:	2800      	cmp	r0, #0
 800497e:	d1de      	bne.n	800493e <__swsetup_r+0x32>
 8004980:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004984:	061a      	lsls	r2, r3, #24
 8004986:	d5db      	bpl.n	8004940 <__swsetup_r+0x34>
 8004988:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800498c:	81a3      	strh	r3, [r4, #12]
 800498e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004992:	bd38      	pop	{r3, r4, r5, pc}
 8004994:	4618      	mov	r0, r3
 8004996:	f001 f8d9 	bl	8005b4c <__sinit>
 800499a:	e7c0      	b.n	800491e <__swsetup_r+0x12>
 800499c:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800499e:	b151      	cbz	r1, 80049b6 <__swsetup_r+0xaa>
 80049a0:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80049a4:	4299      	cmp	r1, r3
 80049a6:	d004      	beq.n	80049b2 <__swsetup_r+0xa6>
 80049a8:	4628      	mov	r0, r5
 80049aa:	f001 f971 	bl	8005c90 <_free_r>
 80049ae:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80049b2:	2300      	movs	r3, #0
 80049b4:	6323      	str	r3, [r4, #48]	; 0x30
 80049b6:	2300      	movs	r3, #0
 80049b8:	6920      	ldr	r0, [r4, #16]
 80049ba:	6063      	str	r3, [r4, #4]
 80049bc:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80049c0:	6020      	str	r0, [r4, #0]
 80049c2:	e7c3      	b.n	800494c <__swsetup_r+0x40>
 80049c4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80049c8:	2309      	movs	r3, #9
 80049ca:	602b      	str	r3, [r5, #0]
 80049cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80049d0:	81a2      	strh	r2, [r4, #12]
 80049d2:	bd38      	pop	{r3, r4, r5, pc}
 80049d4:	20000018 	.word	0x20000018

080049d8 <register_fini>:
 80049d8:	4b02      	ldr	r3, [pc, #8]	; (80049e4 <register_fini+0xc>)
 80049da:	b113      	cbz	r3, 80049e2 <register_fini+0xa>
 80049dc:	4802      	ldr	r0, [pc, #8]	; (80049e8 <register_fini+0x10>)
 80049de:	f000 b805 	b.w	80049ec <atexit>
 80049e2:	4770      	bx	lr
 80049e4:	00000000 	.word	0x00000000
 80049e8:	08005bbd 	.word	0x08005bbd

080049ec <atexit>:
 80049ec:	2300      	movs	r3, #0
 80049ee:	4601      	mov	r1, r0
 80049f0:	461a      	mov	r2, r3
 80049f2:	4618      	mov	r0, r3
 80049f4:	f002 ba66 	b.w	8006ec4 <__register_exitproc>

080049f8 <quorem>:
 80049f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80049fc:	6903      	ldr	r3, [r0, #16]
 80049fe:	690f      	ldr	r7, [r1, #16]
 8004a00:	42bb      	cmp	r3, r7
 8004a02:	b083      	sub	sp, #12
 8004a04:	f2c0 8086 	blt.w	8004b14 <quorem+0x11c>
 8004a08:	3f01      	subs	r7, #1
 8004a0a:	f101 0914 	add.w	r9, r1, #20
 8004a0e:	f100 0a14 	add.w	sl, r0, #20
 8004a12:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004a16:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004a1a:	00bc      	lsls	r4, r7, #2
 8004a1c:	3201      	adds	r2, #1
 8004a1e:	fbb3 f8f2 	udiv	r8, r3, r2
 8004a22:	eb0a 0304 	add.w	r3, sl, r4
 8004a26:	9400      	str	r4, [sp, #0]
 8004a28:	eb09 0b04 	add.w	fp, r9, r4
 8004a2c:	9301      	str	r3, [sp, #4]
 8004a2e:	f1b8 0f00 	cmp.w	r8, #0
 8004a32:	d038      	beq.n	8004aa6 <quorem+0xae>
 8004a34:	2500      	movs	r5, #0
 8004a36:	462e      	mov	r6, r5
 8004a38:	46ce      	mov	lr, r9
 8004a3a:	46d4      	mov	ip, sl
 8004a3c:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004a40:	f8dc 3000 	ldr.w	r3, [ip]
 8004a44:	b2a2      	uxth	r2, r4
 8004a46:	fb08 5502 	mla	r5, r8, r2, r5
 8004a4a:	0c22      	lsrs	r2, r4, #16
 8004a4c:	0c2c      	lsrs	r4, r5, #16
 8004a4e:	fb08 4202 	mla	r2, r8, r2, r4
 8004a52:	b2ad      	uxth	r5, r5
 8004a54:	1b75      	subs	r5, r6, r5
 8004a56:	b296      	uxth	r6, r2
 8004a58:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004a5c:	fa15 f383 	uxtah	r3, r5, r3
 8004a60:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004a64:	b29b      	uxth	r3, r3
 8004a66:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004a6a:	45f3      	cmp	fp, lr
 8004a6c:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004a70:	f84c 3b04 	str.w	r3, [ip], #4
 8004a74:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004a78:	d2e0      	bcs.n	8004a3c <quorem+0x44>
 8004a7a:	9b00      	ldr	r3, [sp, #0]
 8004a7c:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004a80:	b98b      	cbnz	r3, 8004aa6 <quorem+0xae>
 8004a82:	9a01      	ldr	r2, [sp, #4]
 8004a84:	1f13      	subs	r3, r2, #4
 8004a86:	459a      	cmp	sl, r3
 8004a88:	d20c      	bcs.n	8004aa4 <quorem+0xac>
 8004a8a:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004a8e:	b94b      	cbnz	r3, 8004aa4 <quorem+0xac>
 8004a90:	f1a2 0308 	sub.w	r3, r2, #8
 8004a94:	e002      	b.n	8004a9c <quorem+0xa4>
 8004a96:	681a      	ldr	r2, [r3, #0]
 8004a98:	3b04      	subs	r3, #4
 8004a9a:	b91a      	cbnz	r2, 8004aa4 <quorem+0xac>
 8004a9c:	459a      	cmp	sl, r3
 8004a9e:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004aa2:	d3f8      	bcc.n	8004a96 <quorem+0x9e>
 8004aa4:	6107      	str	r7, [r0, #16]
 8004aa6:	4604      	mov	r4, r0
 8004aa8:	f001 fe96 	bl	80067d8 <__mcmp>
 8004aac:	2800      	cmp	r0, #0
 8004aae:	db2d      	blt.n	8004b0c <quorem+0x114>
 8004ab0:	f108 0801 	add.w	r8, r8, #1
 8004ab4:	4655      	mov	r5, sl
 8004ab6:	2300      	movs	r3, #0
 8004ab8:	f859 1b04 	ldr.w	r1, [r9], #4
 8004abc:	6828      	ldr	r0, [r5, #0]
 8004abe:	b28a      	uxth	r2, r1
 8004ac0:	1a9a      	subs	r2, r3, r2
 8004ac2:	0c0b      	lsrs	r3, r1, #16
 8004ac4:	fa12 f280 	uxtah	r2, r2, r0
 8004ac8:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004acc:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004ad0:	b292      	uxth	r2, r2
 8004ad2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004ad6:	45cb      	cmp	fp, r9
 8004ad8:	f845 2b04 	str.w	r2, [r5], #4
 8004adc:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004ae0:	d2ea      	bcs.n	8004ab8 <quorem+0xc0>
 8004ae2:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004ae6:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004aea:	b97a      	cbnz	r2, 8004b0c <quorem+0x114>
 8004aec:	1f1a      	subs	r2, r3, #4
 8004aee:	4592      	cmp	sl, r2
 8004af0:	d20b      	bcs.n	8004b0a <quorem+0x112>
 8004af2:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004af6:	b942      	cbnz	r2, 8004b0a <quorem+0x112>
 8004af8:	3b08      	subs	r3, #8
 8004afa:	e002      	b.n	8004b02 <quorem+0x10a>
 8004afc:	681a      	ldr	r2, [r3, #0]
 8004afe:	3b04      	subs	r3, #4
 8004b00:	b91a      	cbnz	r2, 8004b0a <quorem+0x112>
 8004b02:	459a      	cmp	sl, r3
 8004b04:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004b08:	d3f8      	bcc.n	8004afc <quorem+0x104>
 8004b0a:	6127      	str	r7, [r4, #16]
 8004b0c:	4640      	mov	r0, r8
 8004b0e:	b003      	add	sp, #12
 8004b10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b14:	2000      	movs	r0, #0
 8004b16:	b003      	add	sp, #12
 8004b18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b1c:	0000      	movs	r0, r0
	...

08004b20 <_dtoa_r>:
 8004b20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004b24:	ec55 4b10 	vmov	r4, r5, d0
 8004b28:	b09b      	sub	sp, #108	; 0x6c
 8004b2a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004b2c:	9102      	str	r1, [sp, #8]
 8004b2e:	4681      	mov	r9, r0
 8004b30:	9207      	str	r2, [sp, #28]
 8004b32:	9305      	str	r3, [sp, #20]
 8004b34:	e9cd 4500 	strd	r4, r5, [sp]
 8004b38:	b156      	cbz	r6, 8004b50 <_dtoa_r+0x30>
 8004b3a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004b3c:	6072      	str	r2, [r6, #4]
 8004b3e:	2301      	movs	r3, #1
 8004b40:	4093      	lsls	r3, r2
 8004b42:	60b3      	str	r3, [r6, #8]
 8004b44:	4631      	mov	r1, r6
 8004b46:	f001 fc57 	bl	80063f8 <_Bfree>
 8004b4a:	2300      	movs	r3, #0
 8004b4c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004b50:	f1b5 0800 	subs.w	r8, r5, #0
 8004b54:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004b56:	bfb4      	ite	lt
 8004b58:	2301      	movlt	r3, #1
 8004b5a:	2300      	movge	r3, #0
 8004b5c:	6013      	str	r3, [r2, #0]
 8004b5e:	4b76      	ldr	r3, [pc, #472]	; (8004d38 <_dtoa_r+0x218>)
 8004b60:	bfbc      	itt	lt
 8004b62:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004b66:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004b6a:	ea33 0308 	bics.w	r3, r3, r8
 8004b6e:	f000 80a6 	beq.w	8004cbe <_dtoa_r+0x19e>
 8004b72:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b76:	2200      	movs	r2, #0
 8004b78:	2300      	movs	r3, #0
 8004b7a:	4630      	mov	r0, r6
 8004b7c:	4639      	mov	r1, r7
 8004b7e:	f7fc fa75 	bl	800106c <__aeabi_dcmpeq>
 8004b82:	4605      	mov	r5, r0
 8004b84:	b178      	cbz	r0, 8004ba6 <_dtoa_r+0x86>
 8004b86:	9a05      	ldr	r2, [sp, #20]
 8004b88:	2301      	movs	r3, #1
 8004b8a:	6013      	str	r3, [r2, #0]
 8004b8c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b8e:	2b00      	cmp	r3, #0
 8004b90:	f000 80c0 	beq.w	8004d14 <_dtoa_r+0x1f4>
 8004b94:	4b69      	ldr	r3, [pc, #420]	; (8004d3c <_dtoa_r+0x21c>)
 8004b96:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004b98:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004b9c:	6013      	str	r3, [r2, #0]
 8004b9e:	4658      	mov	r0, fp
 8004ba0:	b01b      	add	sp, #108	; 0x6c
 8004ba2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004ba6:	aa18      	add	r2, sp, #96	; 0x60
 8004ba8:	a919      	add	r1, sp, #100	; 0x64
 8004baa:	ec47 6b10 	vmov	d0, r6, r7
 8004bae:	4648      	mov	r0, r9
 8004bb0:	f001 fea4 	bl	80068fc <__d2b>
 8004bb4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004bb8:	4682      	mov	sl, r0
 8004bba:	f040 80a0 	bne.w	8004cfe <_dtoa_r+0x1de>
 8004bbe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004bc2:	442c      	add	r4, r5
 8004bc4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004bc8:	2b20      	cmp	r3, #32
 8004bca:	f340 842c 	ble.w	8005426 <_dtoa_r+0x906>
 8004bce:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004bd2:	fa08 f803 	lsl.w	r8, r8, r3
 8004bd6:	9b00      	ldr	r3, [sp, #0]
 8004bd8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004bdc:	fa23 f000 	lsr.w	r0, r3, r0
 8004be0:	ea48 0000 	orr.w	r0, r8, r0
 8004be4:	f7fb fc4e 	bl	8000484 <__aeabi_ui2d>
 8004be8:	2301      	movs	r3, #1
 8004bea:	4606      	mov	r6, r0
 8004bec:	3c01      	subs	r4, #1
 8004bee:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004bf2:	930f      	str	r3, [sp, #60]	; 0x3c
 8004bf4:	4630      	mov	r0, r6
 8004bf6:	4639      	mov	r1, r7
 8004bf8:	2200      	movs	r2, #0
 8004bfa:	4b51      	ldr	r3, [pc, #324]	; (8004d40 <_dtoa_r+0x220>)
 8004bfc:	f7fb fb04 	bl	8000208 <__aeabi_dsub>
 8004c00:	a347      	add	r3, pc, #284	; (adr r3, 8004d20 <_dtoa_r+0x200>)
 8004c02:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c06:	f7fb fcb7 	bl	8000578 <__aeabi_dmul>
 8004c0a:	a347      	add	r3, pc, #284	; (adr r3, 8004d28 <_dtoa_r+0x208>)
 8004c0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c10:	f7fb fafc 	bl	800020c <__adddf3>
 8004c14:	4606      	mov	r6, r0
 8004c16:	4620      	mov	r0, r4
 8004c18:	460f      	mov	r7, r1
 8004c1a:	f7fb fc43 	bl	80004a4 <__aeabi_i2d>
 8004c1e:	a344      	add	r3, pc, #272	; (adr r3, 8004d30 <_dtoa_r+0x210>)
 8004c20:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c24:	f7fb fca8 	bl	8000578 <__aeabi_dmul>
 8004c28:	4602      	mov	r2, r0
 8004c2a:	460b      	mov	r3, r1
 8004c2c:	4630      	mov	r0, r6
 8004c2e:	4639      	mov	r1, r7
 8004c30:	f7fb faec 	bl	800020c <__adddf3>
 8004c34:	4606      	mov	r6, r0
 8004c36:	460f      	mov	r7, r1
 8004c38:	f7fc fa60 	bl	80010fc <__aeabi_d2iz>
 8004c3c:	2200      	movs	r2, #0
 8004c3e:	9006      	str	r0, [sp, #24]
 8004c40:	2300      	movs	r3, #0
 8004c42:	4630      	mov	r0, r6
 8004c44:	4639      	mov	r1, r7
 8004c46:	f7fc fa1b 	bl	8001080 <__aeabi_dcmplt>
 8004c4a:	2800      	cmp	r0, #0
 8004c4c:	f040 8273 	bne.w	8005136 <_dtoa_r+0x616>
 8004c50:	9e06      	ldr	r6, [sp, #24]
 8004c52:	2e16      	cmp	r6, #22
 8004c54:	f200 825d 	bhi.w	8005112 <_dtoa_r+0x5f2>
 8004c58:	4b3a      	ldr	r3, [pc, #232]	; (8004d44 <_dtoa_r+0x224>)
 8004c5a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004c5e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004c62:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c66:	f7fc fa29 	bl	80010bc <__aeabi_dcmpgt>
 8004c6a:	2800      	cmp	r0, #0
 8004c6c:	f000 83d7 	beq.w	800541e <_dtoa_r+0x8fe>
 8004c70:	1e73      	subs	r3, r6, #1
 8004c72:	9306      	str	r3, [sp, #24]
 8004c74:	2300      	movs	r3, #0
 8004c76:	930d      	str	r3, [sp, #52]	; 0x34
 8004c78:	1b2c      	subs	r4, r5, r4
 8004c7a:	f1b4 0801 	subs.w	r8, r4, #1
 8004c7e:	f100 8254 	bmi.w	800512a <_dtoa_r+0x60a>
 8004c82:	2300      	movs	r3, #0
 8004c84:	9308      	str	r3, [sp, #32]
 8004c86:	9b06      	ldr	r3, [sp, #24]
 8004c88:	2b00      	cmp	r3, #0
 8004c8a:	f2c0 8245 	blt.w	8005118 <_dtoa_r+0x5f8>
 8004c8e:	4498      	add	r8, r3
 8004c90:	930c      	str	r3, [sp, #48]	; 0x30
 8004c92:	2300      	movs	r3, #0
 8004c94:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c96:	9b02      	ldr	r3, [sp, #8]
 8004c98:	2b09      	cmp	r3, #9
 8004c9a:	d85b      	bhi.n	8004d54 <_dtoa_r+0x234>
 8004c9c:	2b05      	cmp	r3, #5
 8004c9e:	f340 83c0 	ble.w	8005422 <_dtoa_r+0x902>
 8004ca2:	3b04      	subs	r3, #4
 8004ca4:	9302      	str	r3, [sp, #8]
 8004ca6:	2500      	movs	r5, #0
 8004ca8:	9b02      	ldr	r3, [sp, #8]
 8004caa:	3b02      	subs	r3, #2
 8004cac:	2b03      	cmp	r3, #3
 8004cae:	f200 8498 	bhi.w	80055e2 <_dtoa_r+0xac2>
 8004cb2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004cb6:	03df      	.short	0x03df
 8004cb8:	03e803bf 	.word	0x03e803bf
 8004cbc:	04f5      	.short	0x04f5
 8004cbe:	9a05      	ldr	r2, [sp, #20]
 8004cc0:	f242 730f 	movw	r3, #9999	; 0x270f
 8004cc4:	6013      	str	r3, [r2, #0]
 8004cc6:	9b00      	ldr	r3, [sp, #0]
 8004cc8:	b983      	cbnz	r3, 8004cec <_dtoa_r+0x1cc>
 8004cca:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004cce:	b96b      	cbnz	r3, 8004cec <_dtoa_r+0x1cc>
 8004cd0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cd2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004d48 <_dtoa_r+0x228>
 8004cd6:	2b00      	cmp	r3, #0
 8004cd8:	f43f af61 	beq.w	8004b9e <_dtoa_r+0x7e>
 8004cdc:	f10b 0308 	add.w	r3, fp, #8
 8004ce0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004ce2:	4658      	mov	r0, fp
 8004ce4:	6013      	str	r3, [r2, #0]
 8004ce6:	b01b      	add	sp, #108	; 0x6c
 8004ce8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cec:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cee:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004d4c <_dtoa_r+0x22c>
 8004cf2:	2b00      	cmp	r3, #0
 8004cf4:	f43f af53 	beq.w	8004b9e <_dtoa_r+0x7e>
 8004cf8:	f10b 0303 	add.w	r3, fp, #3
 8004cfc:	e7f0      	b.n	8004ce0 <_dtoa_r+0x1c0>
 8004cfe:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004d02:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004d06:	950f      	str	r5, [sp, #60]	; 0x3c
 8004d08:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004d0c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004d10:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004d12:	e76f      	b.n	8004bf4 <_dtoa_r+0xd4>
 8004d14:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004d50 <_dtoa_r+0x230>
 8004d18:	4658      	mov	r0, fp
 8004d1a:	b01b      	add	sp, #108	; 0x6c
 8004d1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d20:	636f4361 	.word	0x636f4361
 8004d24:	3fd287a7 	.word	0x3fd287a7
 8004d28:	8b60c8b3 	.word	0x8b60c8b3
 8004d2c:	3fc68a28 	.word	0x3fc68a28
 8004d30:	509f79fb 	.word	0x509f79fb
 8004d34:	3fd34413 	.word	0x3fd34413
 8004d38:	7ff00000 	.word	0x7ff00000
 8004d3c:	08007551 	.word	0x08007551
 8004d40:	3ff80000 	.word	0x3ff80000
 8004d44:	080076b0 	.word	0x080076b0
 8004d48:	08007678 	.word	0x08007678
 8004d4c:	08007684 	.word	0x08007684
 8004d50:	08007550 	.word	0x08007550
 8004d54:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004d58:	2501      	movs	r5, #1
 8004d5a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004d5e:	2300      	movs	r3, #0
 8004d60:	9302      	str	r3, [sp, #8]
 8004d62:	9307      	str	r3, [sp, #28]
 8004d64:	2100      	movs	r1, #0
 8004d66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d6a:	940e      	str	r4, [sp, #56]	; 0x38
 8004d6c:	4648      	mov	r0, r9
 8004d6e:	f001 fb1d 	bl	80063ac <_Balloc>
 8004d72:	2c0e      	cmp	r4, #14
 8004d74:	4683      	mov	fp, r0
 8004d76:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d7a:	f200 80fb 	bhi.w	8004f74 <_dtoa_r+0x454>
 8004d7e:	2d00      	cmp	r5, #0
 8004d80:	f000 80f8 	beq.w	8004f74 <_dtoa_r+0x454>
 8004d84:	ed9d 7b00 	vldr	d7, [sp]
 8004d88:	9906      	ldr	r1, [sp, #24]
 8004d8a:	2900      	cmp	r1, #0
 8004d8c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004d90:	f340 83e5 	ble.w	800555e <_dtoa_r+0xa3e>
 8004d94:	4b9d      	ldr	r3, [pc, #628]	; (800500c <_dtoa_r+0x4ec>)
 8004d96:	f001 020f 	and.w	r2, r1, #15
 8004d9a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004d9e:	ed93 7b00 	vldr	d7, [r3]
 8004da2:	110c      	asrs	r4, r1, #4
 8004da4:	06e2      	lsls	r2, r4, #27
 8004da6:	ed8d 7b00 	vstr	d7, [sp]
 8004daa:	f140 849e 	bpl.w	80056ea <_dtoa_r+0xbca>
 8004dae:	4b98      	ldr	r3, [pc, #608]	; (8005010 <_dtoa_r+0x4f0>)
 8004db0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004db4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004db8:	f7fb fd08 	bl	80007cc <__aeabi_ddiv>
 8004dbc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004dc0:	f004 040f 	and.w	r4, r4, #15
 8004dc4:	2603      	movs	r6, #3
 8004dc6:	b17c      	cbz	r4, 8004de8 <_dtoa_r+0x2c8>
 8004dc8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dcc:	4d90      	ldr	r5, [pc, #576]	; (8005010 <_dtoa_r+0x4f0>)
 8004dce:	07e3      	lsls	r3, r4, #31
 8004dd0:	d504      	bpl.n	8004ddc <_dtoa_r+0x2bc>
 8004dd2:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004dd6:	f7fb fbcf 	bl	8000578 <__aeabi_dmul>
 8004dda:	3601      	adds	r6, #1
 8004ddc:	1064      	asrs	r4, r4, #1
 8004dde:	f105 0508 	add.w	r5, r5, #8
 8004de2:	d1f4      	bne.n	8004dce <_dtoa_r+0x2ae>
 8004de4:	e9cd 0100 	strd	r0, r1, [sp]
 8004de8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dec:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004df0:	f7fb fcec 	bl	80007cc <__aeabi_ddiv>
 8004df4:	e9cd 0100 	strd	r0, r1, [sp]
 8004df8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004dfa:	b143      	cbz	r3, 8004e0e <_dtoa_r+0x2ee>
 8004dfc:	2200      	movs	r2, #0
 8004dfe:	4b85      	ldr	r3, [pc, #532]	; (8005014 <_dtoa_r+0x4f4>)
 8004e00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e04:	f7fc f93c 	bl	8001080 <__aeabi_dcmplt>
 8004e08:	2800      	cmp	r0, #0
 8004e0a:	f040 84ff 	bne.w	800580c <_dtoa_r+0xcec>
 8004e0e:	4630      	mov	r0, r6
 8004e10:	f7fb fb48 	bl	80004a4 <__aeabi_i2d>
 8004e14:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e18:	f7fb fbae 	bl	8000578 <__aeabi_dmul>
 8004e1c:	4b7e      	ldr	r3, [pc, #504]	; (8005018 <_dtoa_r+0x4f8>)
 8004e1e:	2200      	movs	r2, #0
 8004e20:	f7fb f9f4 	bl	800020c <__adddf3>
 8004e24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e26:	4606      	mov	r6, r0
 8004e28:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e2c:	2b00      	cmp	r3, #0
 8004e2e:	f000 841c 	beq.w	800566a <_dtoa_r+0xb4a>
 8004e32:	9b06      	ldr	r3, [sp, #24]
 8004e34:	9316      	str	r3, [sp, #88]	; 0x58
 8004e36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e38:	9312      	str	r3, [sp, #72]	; 0x48
 8004e3a:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e3e:	f7fc f95d 	bl	80010fc <__aeabi_d2iz>
 8004e42:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004e44:	4b71      	ldr	r3, [pc, #452]	; (800500c <_dtoa_r+0x4ec>)
 8004e46:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e4a:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004e4e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004e52:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004e56:	f7fb fb25 	bl	80004a4 <__aeabi_i2d>
 8004e5a:	460b      	mov	r3, r1
 8004e5c:	4602      	mov	r2, r0
 8004e5e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e62:	e9cd 6700 	strd	r6, r7, [sp]
 8004e66:	f7fb f9cf 	bl	8000208 <__aeabi_dsub>
 8004e6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e6c:	b2ed      	uxtb	r5, r5
 8004e6e:	4606      	mov	r6, r0
 8004e70:	460f      	mov	r7, r1
 8004e72:	f10b 0401 	add.w	r4, fp, #1
 8004e76:	2b00      	cmp	r3, #0
 8004e78:	f000 8458 	beq.w	800572c <_dtoa_r+0xc0c>
 8004e7c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e80:	2000      	movs	r0, #0
 8004e82:	4966      	ldr	r1, [pc, #408]	; (800501c <_dtoa_r+0x4fc>)
 8004e84:	f7fb fca2 	bl	80007cc <__aeabi_ddiv>
 8004e88:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e8c:	f7fb f9bc 	bl	8000208 <__aeabi_dsub>
 8004e90:	f88b 5000 	strb.w	r5, [fp]
 8004e94:	4632      	mov	r2, r6
 8004e96:	463b      	mov	r3, r7
 8004e98:	e9cd 0100 	strd	r0, r1, [sp]
 8004e9c:	f7fc f90e 	bl	80010bc <__aeabi_dcmpgt>
 8004ea0:	2800      	cmp	r0, #0
 8004ea2:	f040 8502 	bne.w	80058aa <_dtoa_r+0xd8a>
 8004ea6:	4632      	mov	r2, r6
 8004ea8:	463b      	mov	r3, r7
 8004eaa:	2000      	movs	r0, #0
 8004eac:	4959      	ldr	r1, [pc, #356]	; (8005014 <_dtoa_r+0x4f4>)
 8004eae:	f7fb f9ab 	bl	8000208 <__aeabi_dsub>
 8004eb2:	4602      	mov	r2, r0
 8004eb4:	460b      	mov	r3, r1
 8004eb6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004eba:	f7fc f8ff 	bl	80010bc <__aeabi_dcmpgt>
 8004ebe:	2800      	cmp	r0, #0
 8004ec0:	f040 84fb 	bne.w	80058ba <_dtoa_r+0xd9a>
 8004ec4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004ec6:	2a01      	cmp	r2, #1
 8004ec8:	d050      	beq.n	8004f6c <_dtoa_r+0x44c>
 8004eca:	445a      	add	r2, fp
 8004ecc:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004ed0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004ed4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004ed8:	4692      	mov	sl, r2
 8004eda:	46cb      	mov	fp, r9
 8004edc:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004ee0:	e00c      	b.n	8004efc <_dtoa_r+0x3dc>
 8004ee2:	2000      	movs	r0, #0
 8004ee4:	494b      	ldr	r1, [pc, #300]	; (8005014 <_dtoa_r+0x4f4>)
 8004ee6:	f7fb f98f 	bl	8000208 <__aeabi_dsub>
 8004eea:	4642      	mov	r2, r8
 8004eec:	464b      	mov	r3, r9
 8004eee:	f7fc f8c7 	bl	8001080 <__aeabi_dcmplt>
 8004ef2:	2800      	cmp	r0, #0
 8004ef4:	f040 84dc 	bne.w	80058b0 <_dtoa_r+0xd90>
 8004ef8:	4554      	cmp	r4, sl
 8004efa:	d030      	beq.n	8004f5e <_dtoa_r+0x43e>
 8004efc:	4640      	mov	r0, r8
 8004efe:	4649      	mov	r1, r9
 8004f00:	2200      	movs	r2, #0
 8004f02:	4b47      	ldr	r3, [pc, #284]	; (8005020 <_dtoa_r+0x500>)
 8004f04:	f7fb fb38 	bl	8000578 <__aeabi_dmul>
 8004f08:	2200      	movs	r2, #0
 8004f0a:	4b45      	ldr	r3, [pc, #276]	; (8005020 <_dtoa_r+0x500>)
 8004f0c:	4680      	mov	r8, r0
 8004f0e:	4689      	mov	r9, r1
 8004f10:	4630      	mov	r0, r6
 8004f12:	4639      	mov	r1, r7
 8004f14:	f7fb fb30 	bl	8000578 <__aeabi_dmul>
 8004f18:	460f      	mov	r7, r1
 8004f1a:	4606      	mov	r6, r0
 8004f1c:	f7fc f8ee 	bl	80010fc <__aeabi_d2iz>
 8004f20:	4605      	mov	r5, r0
 8004f22:	f7fb fabf 	bl	80004a4 <__aeabi_i2d>
 8004f26:	4602      	mov	r2, r0
 8004f28:	460b      	mov	r3, r1
 8004f2a:	4630      	mov	r0, r6
 8004f2c:	4639      	mov	r1, r7
 8004f2e:	f7fb f96b 	bl	8000208 <__aeabi_dsub>
 8004f32:	3530      	adds	r5, #48	; 0x30
 8004f34:	b2ed      	uxtb	r5, r5
 8004f36:	4642      	mov	r2, r8
 8004f38:	464b      	mov	r3, r9
 8004f3a:	f804 5b01 	strb.w	r5, [r4], #1
 8004f3e:	4606      	mov	r6, r0
 8004f40:	460f      	mov	r7, r1
 8004f42:	f7fc f89d 	bl	8001080 <__aeabi_dcmplt>
 8004f46:	4632      	mov	r2, r6
 8004f48:	463b      	mov	r3, r7
 8004f4a:	2800      	cmp	r0, #0
 8004f4c:	d0c9      	beq.n	8004ee2 <_dtoa_r+0x3c2>
 8004f4e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f50:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f54:	9306      	str	r3, [sp, #24]
 8004f56:	46d9      	mov	r9, fp
 8004f58:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f5c:	e236      	b.n	80053cc <_dtoa_r+0x8ac>
 8004f5e:	46d9      	mov	r9, fp
 8004f60:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004f64:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f68:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f6c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004f70:	e9cd 3400 	strd	r3, r4, [sp]
 8004f74:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004f76:	2b00      	cmp	r3, #0
 8004f78:	f2c0 80ae 	blt.w	80050d8 <_dtoa_r+0x5b8>
 8004f7c:	9a06      	ldr	r2, [sp, #24]
 8004f7e:	2a0e      	cmp	r2, #14
 8004f80:	f300 80aa 	bgt.w	80050d8 <_dtoa_r+0x5b8>
 8004f84:	4b21      	ldr	r3, [pc, #132]	; (800500c <_dtoa_r+0x4ec>)
 8004f86:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f8a:	ed93 7b00 	vldr	d7, [r3]
 8004f8e:	9b07      	ldr	r3, [sp, #28]
 8004f90:	2b00      	cmp	r3, #0
 8004f92:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004f96:	f2c0 82be 	blt.w	8005516 <_dtoa_r+0x9f6>
 8004f9a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004f9e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004fa2:	4630      	mov	r0, r6
 8004fa4:	4639      	mov	r1, r7
 8004fa6:	f7fb fc11 	bl	80007cc <__aeabi_ddiv>
 8004faa:	f7fc f8a7 	bl	80010fc <__aeabi_d2iz>
 8004fae:	4605      	mov	r5, r0
 8004fb0:	f7fb fa78 	bl	80004a4 <__aeabi_i2d>
 8004fb4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004fb8:	f7fb fade 	bl	8000578 <__aeabi_dmul>
 8004fbc:	460b      	mov	r3, r1
 8004fbe:	4602      	mov	r2, r0
 8004fc0:	4639      	mov	r1, r7
 8004fc2:	4630      	mov	r0, r6
 8004fc4:	f7fb f920 	bl	8000208 <__aeabi_dsub>
 8004fc8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004fcc:	f88b 3000 	strb.w	r3, [fp]
 8004fd0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fd2:	2b01      	cmp	r3, #1
 8004fd4:	4606      	mov	r6, r0
 8004fd6:	460f      	mov	r7, r1
 8004fd8:	f10b 0401 	add.w	r4, fp, #1
 8004fdc:	d053      	beq.n	8005086 <_dtoa_r+0x566>
 8004fde:	2200      	movs	r2, #0
 8004fe0:	4b0f      	ldr	r3, [pc, #60]	; (8005020 <_dtoa_r+0x500>)
 8004fe2:	f7fb fac9 	bl	8000578 <__aeabi_dmul>
 8004fe6:	2200      	movs	r2, #0
 8004fe8:	2300      	movs	r3, #0
 8004fea:	4606      	mov	r6, r0
 8004fec:	460f      	mov	r7, r1
 8004fee:	f7fc f83d 	bl	800106c <__aeabi_dcmpeq>
 8004ff2:	2800      	cmp	r0, #0
 8004ff4:	f040 81ea 	bne.w	80053cc <_dtoa_r+0x8ac>
 8004ff8:	f8cd a000 	str.w	sl, [sp]
 8004ffc:	f8cd 901c 	str.w	r9, [sp, #28]
 8005000:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005004:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005008:	e017      	b.n	800503a <_dtoa_r+0x51a>
 800500a:	bf00      	nop
 800500c:	080076b0 	.word	0x080076b0
 8005010:	08007688 	.word	0x08007688
 8005014:	3ff00000 	.word	0x3ff00000
 8005018:	401c0000 	.word	0x401c0000
 800501c:	3fe00000 	.word	0x3fe00000
 8005020:	40240000 	.word	0x40240000
 8005024:	f7fb faa8 	bl	8000578 <__aeabi_dmul>
 8005028:	2200      	movs	r2, #0
 800502a:	2300      	movs	r3, #0
 800502c:	4606      	mov	r6, r0
 800502e:	460f      	mov	r7, r1
 8005030:	f7fc f81c 	bl	800106c <__aeabi_dcmpeq>
 8005034:	2800      	cmp	r0, #0
 8005036:	f040 833d 	bne.w	80056b4 <_dtoa_r+0xb94>
 800503a:	464a      	mov	r2, r9
 800503c:	4653      	mov	r3, sl
 800503e:	4630      	mov	r0, r6
 8005040:	4639      	mov	r1, r7
 8005042:	f7fb fbc3 	bl	80007cc <__aeabi_ddiv>
 8005046:	f7fc f859 	bl	80010fc <__aeabi_d2iz>
 800504a:	4605      	mov	r5, r0
 800504c:	f7fb fa2a 	bl	80004a4 <__aeabi_i2d>
 8005050:	464a      	mov	r2, r9
 8005052:	4653      	mov	r3, sl
 8005054:	f7fb fa90 	bl	8000578 <__aeabi_dmul>
 8005058:	4602      	mov	r2, r0
 800505a:	460b      	mov	r3, r1
 800505c:	4630      	mov	r0, r6
 800505e:	4639      	mov	r1, r7
 8005060:	f7fb f8d2 	bl	8000208 <__aeabi_dsub>
 8005064:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005068:	f804 cb01 	strb.w	ip, [r4], #1
 800506c:	eba4 0c0b 	sub.w	ip, r4, fp
 8005070:	45e0      	cmp	r8, ip
 8005072:	4606      	mov	r6, r0
 8005074:	460f      	mov	r7, r1
 8005076:	f04f 0200 	mov.w	r2, #0
 800507a:	4bc1      	ldr	r3, [pc, #772]	; (8005380 <_dtoa_r+0x860>)
 800507c:	d1d2      	bne.n	8005024 <_dtoa_r+0x504>
 800507e:	f8dd a000 	ldr.w	sl, [sp]
 8005082:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005086:	4632      	mov	r2, r6
 8005088:	463b      	mov	r3, r7
 800508a:	4630      	mov	r0, r6
 800508c:	4639      	mov	r1, r7
 800508e:	f7fb f8bd 	bl	800020c <__adddf3>
 8005092:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005096:	4606      	mov	r6, r0
 8005098:	460f      	mov	r7, r1
 800509a:	f7fc f80f 	bl	80010bc <__aeabi_dcmpgt>
 800509e:	b958      	cbnz	r0, 80050b8 <_dtoa_r+0x598>
 80050a0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050a4:	4630      	mov	r0, r6
 80050a6:	4639      	mov	r1, r7
 80050a8:	f7fb ffe0 	bl	800106c <__aeabi_dcmpeq>
 80050ac:	2800      	cmp	r0, #0
 80050ae:	f000 818d 	beq.w	80053cc <_dtoa_r+0x8ac>
 80050b2:	07e9      	lsls	r1, r5, #31
 80050b4:	f140 818a 	bpl.w	80053cc <_dtoa_r+0x8ac>
 80050b8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050bc:	e005      	b.n	80050ca <_dtoa_r+0x5aa>
 80050be:	459b      	cmp	fp, r3
 80050c0:	f000 8373 	beq.w	80057aa <_dtoa_r+0xc8a>
 80050c4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80050c8:	461c      	mov	r4, r3
 80050ca:	2d39      	cmp	r5, #57	; 0x39
 80050cc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050d0:	d0f5      	beq.n	80050be <_dtoa_r+0x59e>
 80050d2:	3501      	adds	r5, #1
 80050d4:	701d      	strb	r5, [r3, #0]
 80050d6:	e179      	b.n	80053cc <_dtoa_r+0x8ac>
 80050d8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80050da:	2a00      	cmp	r2, #0
 80050dc:	d03b      	beq.n	8005156 <_dtoa_r+0x636>
 80050de:	9a02      	ldr	r2, [sp, #8]
 80050e0:	2a01      	cmp	r2, #1
 80050e2:	f340 820b 	ble.w	80054fc <_dtoa_r+0x9dc>
 80050e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050e8:	1e5f      	subs	r7, r3, #1
 80050ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80050ec:	42bb      	cmp	r3, r7
 80050ee:	f2c0 82e6 	blt.w	80056be <_dtoa_r+0xb9e>
 80050f2:	1bdf      	subs	r7, r3, r7
 80050f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050f6:	2b00      	cmp	r3, #0
 80050f8:	f2c0 830b 	blt.w	8005712 <_dtoa_r+0xbf2>
 80050fc:	9a08      	ldr	r2, [sp, #32]
 80050fe:	4614      	mov	r4, r2
 8005100:	441a      	add	r2, r3
 8005102:	4498      	add	r8, r3
 8005104:	9208      	str	r2, [sp, #32]
 8005106:	2101      	movs	r1, #1
 8005108:	4648      	mov	r0, r9
 800510a:	f001 fa0f 	bl	800652c <__i2b>
 800510e:	4605      	mov	r5, r0
 8005110:	e024      	b.n	800515c <_dtoa_r+0x63c>
 8005112:	2301      	movs	r3, #1
 8005114:	930d      	str	r3, [sp, #52]	; 0x34
 8005116:	e5af      	b.n	8004c78 <_dtoa_r+0x158>
 8005118:	9a08      	ldr	r2, [sp, #32]
 800511a:	9b06      	ldr	r3, [sp, #24]
 800511c:	1ad2      	subs	r2, r2, r3
 800511e:	425b      	negs	r3, r3
 8005120:	930b      	str	r3, [sp, #44]	; 0x2c
 8005122:	2300      	movs	r3, #0
 8005124:	9208      	str	r2, [sp, #32]
 8005126:	930c      	str	r3, [sp, #48]	; 0x30
 8005128:	e5b5      	b.n	8004c96 <_dtoa_r+0x176>
 800512a:	f1c4 0301 	rsb	r3, r4, #1
 800512e:	9308      	str	r3, [sp, #32]
 8005130:	f04f 0800 	mov.w	r8, #0
 8005134:	e5a7      	b.n	8004c86 <_dtoa_r+0x166>
 8005136:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800513a:	4640      	mov	r0, r8
 800513c:	f7fb f9b2 	bl	80004a4 <__aeabi_i2d>
 8005140:	4632      	mov	r2, r6
 8005142:	463b      	mov	r3, r7
 8005144:	f7fb ff92 	bl	800106c <__aeabi_dcmpeq>
 8005148:	2800      	cmp	r0, #0
 800514a:	f47f ad81 	bne.w	8004c50 <_dtoa_r+0x130>
 800514e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8005152:	9306      	str	r3, [sp, #24]
 8005154:	e57c      	b.n	8004c50 <_dtoa_r+0x130>
 8005156:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005158:	9c08      	ldr	r4, [sp, #32]
 800515a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800515c:	2c00      	cmp	r4, #0
 800515e:	dd0c      	ble.n	800517a <_dtoa_r+0x65a>
 8005160:	f1b8 0f00 	cmp.w	r8, #0
 8005164:	dd09      	ble.n	800517a <_dtoa_r+0x65a>
 8005166:	4544      	cmp	r4, r8
 8005168:	9a08      	ldr	r2, [sp, #32]
 800516a:	4623      	mov	r3, r4
 800516c:	bfa8      	it	ge
 800516e:	4643      	movge	r3, r8
 8005170:	1ad2      	subs	r2, r2, r3
 8005172:	9208      	str	r2, [sp, #32]
 8005174:	1ae4      	subs	r4, r4, r3
 8005176:	eba8 0803 	sub.w	r8, r8, r3
 800517a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800517c:	b16b      	cbz	r3, 800519a <_dtoa_r+0x67a>
 800517e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005180:	2a00      	cmp	r2, #0
 8005182:	f000 8290 	beq.w	80056a6 <_dtoa_r+0xb86>
 8005186:	1bde      	subs	r6, r3, r7
 8005188:	2f00      	cmp	r7, #0
 800518a:	f040 819b 	bne.w	80054c4 <_dtoa_r+0x9a4>
 800518e:	4651      	mov	r1, sl
 8005190:	4632      	mov	r2, r6
 8005192:	4648      	mov	r0, r9
 8005194:	f001 fa7a 	bl	800668c <__pow5mult>
 8005198:	4682      	mov	sl, r0
 800519a:	2101      	movs	r1, #1
 800519c:	4648      	mov	r0, r9
 800519e:	f001 f9c5 	bl	800652c <__i2b>
 80051a2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051a4:	4606      	mov	r6, r0
 80051a6:	2a00      	cmp	r2, #0
 80051a8:	f040 8125 	bne.w	80053f6 <_dtoa_r+0x8d6>
 80051ac:	9b02      	ldr	r3, [sp, #8]
 80051ae:	2b01      	cmp	r3, #1
 80051b0:	f340 816c 	ble.w	800548c <_dtoa_r+0x96c>
 80051b4:	2001      	movs	r0, #1
 80051b6:	4440      	add	r0, r8
 80051b8:	f010 001f 	ands.w	r0, r0, #31
 80051bc:	f000 8119 	beq.w	80053f2 <_dtoa_r+0x8d2>
 80051c0:	f1c0 0320 	rsb	r3, r0, #32
 80051c4:	2b04      	cmp	r3, #4
 80051c6:	f340 83ac 	ble.w	8005922 <_dtoa_r+0xe02>
 80051ca:	f1c0 001c 	rsb	r0, r0, #28
 80051ce:	9b08      	ldr	r3, [sp, #32]
 80051d0:	4403      	add	r3, r0
 80051d2:	9308      	str	r3, [sp, #32]
 80051d4:	4404      	add	r4, r0
 80051d6:	4480      	add	r8, r0
 80051d8:	9b08      	ldr	r3, [sp, #32]
 80051da:	2b00      	cmp	r3, #0
 80051dc:	dd05      	ble.n	80051ea <_dtoa_r+0x6ca>
 80051de:	4651      	mov	r1, sl
 80051e0:	461a      	mov	r2, r3
 80051e2:	4648      	mov	r0, r9
 80051e4:	f001 faa2 	bl	800672c <__lshift>
 80051e8:	4682      	mov	sl, r0
 80051ea:	f1b8 0f00 	cmp.w	r8, #0
 80051ee:	dd05      	ble.n	80051fc <_dtoa_r+0x6dc>
 80051f0:	4631      	mov	r1, r6
 80051f2:	4642      	mov	r2, r8
 80051f4:	4648      	mov	r0, r9
 80051f6:	f001 fa99 	bl	800672c <__lshift>
 80051fa:	4606      	mov	r6, r0
 80051fc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80051fe:	2b00      	cmp	r3, #0
 8005200:	d177      	bne.n	80052f2 <_dtoa_r+0x7d2>
 8005202:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005204:	2b00      	cmp	r3, #0
 8005206:	f340 8209 	ble.w	800561c <_dtoa_r+0xafc>
 800520a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800520c:	2b00      	cmp	r3, #0
 800520e:	f000 8089 	beq.w	8005324 <_dtoa_r+0x804>
 8005212:	2c00      	cmp	r4, #0
 8005214:	f300 816b 	bgt.w	80054ee <_dtoa_r+0x9ce>
 8005218:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800521a:	2b00      	cmp	r3, #0
 800521c:	f040 81cd 	bne.w	80055ba <_dtoa_r+0xa9a>
 8005220:	46a8      	mov	r8, r5
 8005222:	9a00      	ldr	r2, [sp, #0]
 8005224:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005228:	f002 0201 	and.w	r2, r2, #1
 800522c:	920a      	str	r2, [sp, #40]	; 0x28
 800522e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005230:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8005234:	441a      	add	r2, r3
 8005236:	465f      	mov	r7, fp
 8005238:	9209      	str	r2, [sp, #36]	; 0x24
 800523a:	46b3      	mov	fp, r6
 800523c:	4659      	mov	r1, fp
 800523e:	4650      	mov	r0, sl
 8005240:	f7ff fbda 	bl	80049f8 <quorem>
 8005244:	4629      	mov	r1, r5
 8005246:	4604      	mov	r4, r0
 8005248:	4650      	mov	r0, sl
 800524a:	f001 fac5 	bl	80067d8 <__mcmp>
 800524e:	4659      	mov	r1, fp
 8005250:	4606      	mov	r6, r0
 8005252:	4642      	mov	r2, r8
 8005254:	4648      	mov	r0, r9
 8005256:	f001 fadb 	bl	8006810 <__mdiff>
 800525a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800525e:	9300      	str	r3, [sp, #0]
 8005260:	68c3      	ldr	r3, [r0, #12]
 8005262:	4601      	mov	r1, r0
 8005264:	2b00      	cmp	r3, #0
 8005266:	f040 81d4 	bne.w	8005612 <_dtoa_r+0xaf2>
 800526a:	9008      	str	r0, [sp, #32]
 800526c:	4650      	mov	r0, sl
 800526e:	f001 fab3 	bl	80067d8 <__mcmp>
 8005272:	9a08      	ldr	r2, [sp, #32]
 8005274:	9007      	str	r0, [sp, #28]
 8005276:	4611      	mov	r1, r2
 8005278:	4648      	mov	r0, r9
 800527a:	f001 f8bd 	bl	80063f8 <_Bfree>
 800527e:	9b07      	ldr	r3, [sp, #28]
 8005280:	b933      	cbnz	r3, 8005290 <_dtoa_r+0x770>
 8005282:	9a02      	ldr	r2, [sp, #8]
 8005284:	b922      	cbnz	r2, 8005290 <_dtoa_r+0x770>
 8005286:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005288:	2b00      	cmp	r3, #0
 800528a:	f000 8319 	beq.w	80058c0 <_dtoa_r+0xda0>
 800528e:	9b02      	ldr	r3, [sp, #8]
 8005290:	2e00      	cmp	r6, #0
 8005292:	f2c0 821c 	blt.w	80056ce <_dtoa_r+0xbae>
 8005296:	d105      	bne.n	80052a4 <_dtoa_r+0x784>
 8005298:	9a02      	ldr	r2, [sp, #8]
 800529a:	b91a      	cbnz	r2, 80052a4 <_dtoa_r+0x784>
 800529c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800529e:	2a00      	cmp	r2, #0
 80052a0:	f000 8215 	beq.w	80056ce <_dtoa_r+0xbae>
 80052a4:	2b00      	cmp	r3, #0
 80052a6:	f107 0401 	add.w	r4, r7, #1
 80052aa:	f300 8225 	bgt.w	80056f8 <_dtoa_r+0xbd8>
 80052ae:	9b00      	ldr	r3, [sp, #0]
 80052b0:	703b      	strb	r3, [r7, #0]
 80052b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052b4:	42bb      	cmp	r3, r7
 80052b6:	f000 8230 	beq.w	800571a <_dtoa_r+0xbfa>
 80052ba:	4651      	mov	r1, sl
 80052bc:	2300      	movs	r3, #0
 80052be:	220a      	movs	r2, #10
 80052c0:	4648      	mov	r0, r9
 80052c2:	f001 f8a3 	bl	800640c <__multadd>
 80052c6:	4545      	cmp	r5, r8
 80052c8:	4682      	mov	sl, r0
 80052ca:	4629      	mov	r1, r5
 80052cc:	f04f 0300 	mov.w	r3, #0
 80052d0:	f04f 020a 	mov.w	r2, #10
 80052d4:	4648      	mov	r0, r9
 80052d6:	f000 8196 	beq.w	8005606 <_dtoa_r+0xae6>
 80052da:	f001 f897 	bl	800640c <__multadd>
 80052de:	4641      	mov	r1, r8
 80052e0:	4605      	mov	r5, r0
 80052e2:	2300      	movs	r3, #0
 80052e4:	220a      	movs	r2, #10
 80052e6:	4648      	mov	r0, r9
 80052e8:	f001 f890 	bl	800640c <__multadd>
 80052ec:	4627      	mov	r7, r4
 80052ee:	4680      	mov	r8, r0
 80052f0:	e7a4      	b.n	800523c <_dtoa_r+0x71c>
 80052f2:	4631      	mov	r1, r6
 80052f4:	4650      	mov	r0, sl
 80052f6:	f001 fa6f 	bl	80067d8 <__mcmp>
 80052fa:	2800      	cmp	r0, #0
 80052fc:	da81      	bge.n	8005202 <_dtoa_r+0x6e2>
 80052fe:	9f06      	ldr	r7, [sp, #24]
 8005300:	4651      	mov	r1, sl
 8005302:	2300      	movs	r3, #0
 8005304:	220a      	movs	r2, #10
 8005306:	4648      	mov	r0, r9
 8005308:	3f01      	subs	r7, #1
 800530a:	9706      	str	r7, [sp, #24]
 800530c:	f001 f87e 	bl	800640c <__multadd>
 8005310:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005312:	4682      	mov	sl, r0
 8005314:	2b00      	cmp	r3, #0
 8005316:	f040 82eb 	bne.w	80058f0 <_dtoa_r+0xdd0>
 800531a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800531c:	2b00      	cmp	r3, #0
 800531e:	f340 82f3 	ble.w	8005908 <_dtoa_r+0xde8>
 8005322:	9309      	str	r3, [sp, #36]	; 0x24
 8005324:	465c      	mov	r4, fp
 8005326:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800532a:	e002      	b.n	8005332 <_dtoa_r+0x812>
 800532c:	f001 f86e 	bl	800640c <__multadd>
 8005330:	4682      	mov	sl, r0
 8005332:	4631      	mov	r1, r6
 8005334:	4650      	mov	r0, sl
 8005336:	f7ff fb5f 	bl	80049f8 <quorem>
 800533a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800533e:	f804 7b01 	strb.w	r7, [r4], #1
 8005342:	eba4 030b 	sub.w	r3, r4, fp
 8005346:	4598      	cmp	r8, r3
 8005348:	f04f 020a 	mov.w	r2, #10
 800534c:	f04f 0300 	mov.w	r3, #0
 8005350:	4651      	mov	r1, sl
 8005352:	4648      	mov	r0, r9
 8005354:	dcea      	bgt.n	800532c <_dtoa_r+0x80c>
 8005356:	2300      	movs	r3, #0
 8005358:	9700      	str	r7, [sp, #0]
 800535a:	9302      	str	r3, [sp, #8]
 800535c:	4651      	mov	r1, sl
 800535e:	2201      	movs	r2, #1
 8005360:	4648      	mov	r0, r9
 8005362:	f001 f9e3 	bl	800672c <__lshift>
 8005366:	4631      	mov	r1, r6
 8005368:	4682      	mov	sl, r0
 800536a:	f001 fa35 	bl	80067d8 <__mcmp>
 800536e:	2800      	cmp	r0, #0
 8005370:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005374:	dc14      	bgt.n	80053a0 <_dtoa_r+0x880>
 8005376:	d108      	bne.n	800538a <_dtoa_r+0x86a>
 8005378:	9b00      	ldr	r3, [sp, #0]
 800537a:	07db      	lsls	r3, r3, #31
 800537c:	d410      	bmi.n	80053a0 <_dtoa_r+0x880>
 800537e:	e004      	b.n	800538a <_dtoa_r+0x86a>
 8005380:	40240000 	.word	0x40240000
 8005384:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005388:	461c      	mov	r4, r3
 800538a:	2a30      	cmp	r2, #48	; 0x30
 800538c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005390:	d0f8      	beq.n	8005384 <_dtoa_r+0x864>
 8005392:	e00b      	b.n	80053ac <_dtoa_r+0x88c>
 8005394:	459b      	cmp	fp, r3
 8005396:	f000 814e 	beq.w	8005636 <_dtoa_r+0xb16>
 800539a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800539e:	461c      	mov	r4, r3
 80053a0:	2a39      	cmp	r2, #57	; 0x39
 80053a2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80053a6:	d0f5      	beq.n	8005394 <_dtoa_r+0x874>
 80053a8:	3201      	adds	r2, #1
 80053aa:	701a      	strb	r2, [r3, #0]
 80053ac:	4631      	mov	r1, r6
 80053ae:	4648      	mov	r0, r9
 80053b0:	f001 f822 	bl	80063f8 <_Bfree>
 80053b4:	b155      	cbz	r5, 80053cc <_dtoa_r+0x8ac>
 80053b6:	9902      	ldr	r1, [sp, #8]
 80053b8:	b121      	cbz	r1, 80053c4 <_dtoa_r+0x8a4>
 80053ba:	42a9      	cmp	r1, r5
 80053bc:	d002      	beq.n	80053c4 <_dtoa_r+0x8a4>
 80053be:	4648      	mov	r0, r9
 80053c0:	f001 f81a 	bl	80063f8 <_Bfree>
 80053c4:	4629      	mov	r1, r5
 80053c6:	4648      	mov	r0, r9
 80053c8:	f001 f816 	bl	80063f8 <_Bfree>
 80053cc:	4651      	mov	r1, sl
 80053ce:	4648      	mov	r0, r9
 80053d0:	f001 f812 	bl	80063f8 <_Bfree>
 80053d4:	2200      	movs	r2, #0
 80053d6:	9b06      	ldr	r3, [sp, #24]
 80053d8:	7022      	strb	r2, [r4, #0]
 80053da:	9a05      	ldr	r2, [sp, #20]
 80053dc:	3301      	adds	r3, #1
 80053de:	6013      	str	r3, [r2, #0]
 80053e0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80053e2:	2b00      	cmp	r3, #0
 80053e4:	f43f abdb 	beq.w	8004b9e <_dtoa_r+0x7e>
 80053e8:	4658      	mov	r0, fp
 80053ea:	601c      	str	r4, [r3, #0]
 80053ec:	b01b      	add	sp, #108	; 0x6c
 80053ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80053f2:	201c      	movs	r0, #28
 80053f4:	e6eb      	b.n	80051ce <_dtoa_r+0x6ae>
 80053f6:	4601      	mov	r1, r0
 80053f8:	4648      	mov	r0, r9
 80053fa:	f001 f947 	bl	800668c <__pow5mult>
 80053fe:	9b02      	ldr	r3, [sp, #8]
 8005400:	2b01      	cmp	r3, #1
 8005402:	4606      	mov	r6, r0
 8005404:	f340 80d4 	ble.w	80055b0 <_dtoa_r+0xa90>
 8005408:	2300      	movs	r3, #0
 800540a:	930c      	str	r3, [sp, #48]	; 0x30
 800540c:	6933      	ldr	r3, [r6, #16]
 800540e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005412:	6918      	ldr	r0, [r3, #16]
 8005414:	f001 f83a 	bl	800648c <__hi0bits>
 8005418:	f1c0 0020 	rsb	r0, r0, #32
 800541c:	e6cb      	b.n	80051b6 <_dtoa_r+0x696>
 800541e:	900d      	str	r0, [sp, #52]	; 0x34
 8005420:	e42a      	b.n	8004c78 <_dtoa_r+0x158>
 8005422:	2501      	movs	r5, #1
 8005424:	e440      	b.n	8004ca8 <_dtoa_r+0x188>
 8005426:	f1c3 0820 	rsb	r8, r3, #32
 800542a:	9b00      	ldr	r3, [sp, #0]
 800542c:	fa03 f008 	lsl.w	r0, r3, r8
 8005430:	f7ff bbd8 	b.w	8004be4 <_dtoa_r+0xc4>
 8005434:	2300      	movs	r3, #0
 8005436:	930a      	str	r3, [sp, #40]	; 0x28
 8005438:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800543c:	4413      	add	r3, r2
 800543e:	930e      	str	r3, [sp, #56]	; 0x38
 8005440:	3301      	adds	r3, #1
 8005442:	2b01      	cmp	r3, #1
 8005444:	461e      	mov	r6, r3
 8005446:	9309      	str	r3, [sp, #36]	; 0x24
 8005448:	bfb8      	it	lt
 800544a:	2601      	movlt	r6, #1
 800544c:	2100      	movs	r1, #0
 800544e:	2e17      	cmp	r6, #23
 8005450:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005454:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005456:	f77f ac89 	ble.w	8004d6c <_dtoa_r+0x24c>
 800545a:	2201      	movs	r2, #1
 800545c:	2304      	movs	r3, #4
 800545e:	005b      	lsls	r3, r3, #1
 8005460:	f103 0014 	add.w	r0, r3, #20
 8005464:	42b0      	cmp	r0, r6
 8005466:	4611      	mov	r1, r2
 8005468:	f102 0201 	add.w	r2, r2, #1
 800546c:	d9f7      	bls.n	800545e <_dtoa_r+0x93e>
 800546e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005472:	e47b      	b.n	8004d6c <_dtoa_r+0x24c>
 8005474:	2300      	movs	r3, #0
 8005476:	930a      	str	r3, [sp, #40]	; 0x28
 8005478:	9e07      	ldr	r6, [sp, #28]
 800547a:	2e00      	cmp	r6, #0
 800547c:	f340 80e2 	ble.w	8005644 <_dtoa_r+0xb24>
 8005480:	960e      	str	r6, [sp, #56]	; 0x38
 8005482:	9609      	str	r6, [sp, #36]	; 0x24
 8005484:	e7e2      	b.n	800544c <_dtoa_r+0x92c>
 8005486:	2301      	movs	r3, #1
 8005488:	930a      	str	r3, [sp, #40]	; 0x28
 800548a:	e7f5      	b.n	8005478 <_dtoa_r+0x958>
 800548c:	9b00      	ldr	r3, [sp, #0]
 800548e:	2b00      	cmp	r3, #0
 8005490:	f47f ae90 	bne.w	80051b4 <_dtoa_r+0x694>
 8005494:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005498:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800549c:	2b00      	cmp	r3, #0
 800549e:	f040 8192 	bne.w	80057c6 <_dtoa_r+0xca6>
 80054a2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80054a6:	0d1b      	lsrs	r3, r3, #20
 80054a8:	051b      	lsls	r3, r3, #20
 80054aa:	b12b      	cbz	r3, 80054b8 <_dtoa_r+0x998>
 80054ac:	9b08      	ldr	r3, [sp, #32]
 80054ae:	3301      	adds	r3, #1
 80054b0:	9308      	str	r3, [sp, #32]
 80054b2:	f108 0801 	add.w	r8, r8, #1
 80054b6:	2301      	movs	r3, #1
 80054b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80054ba:	930c      	str	r3, [sp, #48]	; 0x30
 80054bc:	2a00      	cmp	r2, #0
 80054be:	f43f ae79 	beq.w	80051b4 <_dtoa_r+0x694>
 80054c2:	e7a3      	b.n	800540c <_dtoa_r+0x8ec>
 80054c4:	463a      	mov	r2, r7
 80054c6:	4629      	mov	r1, r5
 80054c8:	4648      	mov	r0, r9
 80054ca:	f001 f8df 	bl	800668c <__pow5mult>
 80054ce:	4652      	mov	r2, sl
 80054d0:	4601      	mov	r1, r0
 80054d2:	4605      	mov	r5, r0
 80054d4:	4648      	mov	r0, r9
 80054d6:	f001 f833 	bl	8006540 <__multiply>
 80054da:	4651      	mov	r1, sl
 80054dc:	4607      	mov	r7, r0
 80054de:	4648      	mov	r0, r9
 80054e0:	f000 ff8a 	bl	80063f8 <_Bfree>
 80054e4:	46ba      	mov	sl, r7
 80054e6:	2e00      	cmp	r6, #0
 80054e8:	f43f ae57 	beq.w	800519a <_dtoa_r+0x67a>
 80054ec:	e64f      	b.n	800518e <_dtoa_r+0x66e>
 80054ee:	4629      	mov	r1, r5
 80054f0:	4622      	mov	r2, r4
 80054f2:	4648      	mov	r0, r9
 80054f4:	f001 f91a 	bl	800672c <__lshift>
 80054f8:	4605      	mov	r5, r0
 80054fa:	e68d      	b.n	8005218 <_dtoa_r+0x6f8>
 80054fc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80054fe:	2a00      	cmp	r2, #0
 8005500:	f000 815d 	beq.w	80057be <_dtoa_r+0xc9e>
 8005504:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005508:	9a08      	ldr	r2, [sp, #32]
 800550a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800550c:	4614      	mov	r4, r2
 800550e:	441a      	add	r2, r3
 8005510:	4498      	add	r8, r3
 8005512:	9208      	str	r2, [sp, #32]
 8005514:	e5f7      	b.n	8005106 <_dtoa_r+0x5e6>
 8005516:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005518:	2b00      	cmp	r3, #0
 800551a:	f73f ad3e 	bgt.w	8004f9a <_dtoa_r+0x47a>
 800551e:	f040 80bc 	bne.w	800569a <_dtoa_r+0xb7a>
 8005522:	ec51 0b17 	vmov	r0, r1, d7
 8005526:	2200      	movs	r2, #0
 8005528:	4bb2      	ldr	r3, [pc, #712]	; (80057f4 <_dtoa_r+0xcd4>)
 800552a:	f7fb f825 	bl	8000578 <__aeabi_dmul>
 800552e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005532:	f7fb fdb9 	bl	80010a8 <__aeabi_dcmpge>
 8005536:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005538:	4635      	mov	r5, r6
 800553a:	2800      	cmp	r0, #0
 800553c:	d176      	bne.n	800562c <_dtoa_r+0xb0c>
 800553e:	9a06      	ldr	r2, [sp, #24]
 8005540:	2331      	movs	r3, #49	; 0x31
 8005542:	3201      	adds	r2, #1
 8005544:	9206      	str	r2, [sp, #24]
 8005546:	f88b 3000 	strb.w	r3, [fp]
 800554a:	f10b 0401 	add.w	r4, fp, #1
 800554e:	4631      	mov	r1, r6
 8005550:	4648      	mov	r0, r9
 8005552:	f000 ff51 	bl	80063f8 <_Bfree>
 8005556:	2d00      	cmp	r5, #0
 8005558:	f47f af34 	bne.w	80053c4 <_dtoa_r+0x8a4>
 800555c:	e736      	b.n	80053cc <_dtoa_r+0x8ac>
 800555e:	f000 8142 	beq.w	80057e6 <_dtoa_r+0xcc6>
 8005562:	9b06      	ldr	r3, [sp, #24]
 8005564:	425c      	negs	r4, r3
 8005566:	4ba4      	ldr	r3, [pc, #656]	; (80057f8 <_dtoa_r+0xcd8>)
 8005568:	f004 020f 	and.w	r2, r4, #15
 800556c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005570:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005574:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005578:	f7fa fffe 	bl	8000578 <__aeabi_dmul>
 800557c:	1124      	asrs	r4, r4, #4
 800557e:	e9cd 0100 	strd	r0, r1, [sp]
 8005582:	f000 81c6 	beq.w	8005912 <_dtoa_r+0xdf2>
 8005586:	4d9d      	ldr	r5, [pc, #628]	; (80057fc <_dtoa_r+0xcdc>)
 8005588:	2300      	movs	r3, #0
 800558a:	2602      	movs	r6, #2
 800558c:	07e7      	lsls	r7, r4, #31
 800558e:	d505      	bpl.n	800559c <_dtoa_r+0xa7c>
 8005590:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005594:	f7fa fff0 	bl	8000578 <__aeabi_dmul>
 8005598:	3601      	adds	r6, #1
 800559a:	2301      	movs	r3, #1
 800559c:	1064      	asrs	r4, r4, #1
 800559e:	f105 0508 	add.w	r5, r5, #8
 80055a2:	d1f3      	bne.n	800558c <_dtoa_r+0xa6c>
 80055a4:	2b00      	cmp	r3, #0
 80055a6:	f43f ac27 	beq.w	8004df8 <_dtoa_r+0x2d8>
 80055aa:	e9cd 0100 	strd	r0, r1, [sp]
 80055ae:	e423      	b.n	8004df8 <_dtoa_r+0x2d8>
 80055b0:	9b00      	ldr	r3, [sp, #0]
 80055b2:	2b00      	cmp	r3, #0
 80055b4:	f43f af6e 	beq.w	8005494 <_dtoa_r+0x974>
 80055b8:	e726      	b.n	8005408 <_dtoa_r+0x8e8>
 80055ba:	6869      	ldr	r1, [r5, #4]
 80055bc:	4648      	mov	r0, r9
 80055be:	f000 fef5 	bl	80063ac <_Balloc>
 80055c2:	692b      	ldr	r3, [r5, #16]
 80055c4:	3302      	adds	r3, #2
 80055c6:	009a      	lsls	r2, r3, #2
 80055c8:	4604      	mov	r4, r0
 80055ca:	f105 010c 	add.w	r1, r5, #12
 80055ce:	300c      	adds	r0, #12
 80055d0:	f7fb fb84 	bl	8000cdc <memcpy>
 80055d4:	4621      	mov	r1, r4
 80055d6:	2201      	movs	r2, #1
 80055d8:	4648      	mov	r0, r9
 80055da:	f001 f8a7 	bl	800672c <__lshift>
 80055de:	4680      	mov	r8, r0
 80055e0:	e61f      	b.n	8005222 <_dtoa_r+0x702>
 80055e2:	2400      	movs	r4, #0
 80055e4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80055e8:	4621      	mov	r1, r4
 80055ea:	4648      	mov	r0, r9
 80055ec:	f000 fede 	bl	80063ac <_Balloc>
 80055f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80055f4:	930e      	str	r3, [sp, #56]	; 0x38
 80055f6:	9309      	str	r3, [sp, #36]	; 0x24
 80055f8:	2301      	movs	r3, #1
 80055fa:	4683      	mov	fp, r0
 80055fc:	9407      	str	r4, [sp, #28]
 80055fe:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005602:	930a      	str	r3, [sp, #40]	; 0x28
 8005604:	e4b6      	b.n	8004f74 <_dtoa_r+0x454>
 8005606:	f000 ff01 	bl	800640c <__multadd>
 800560a:	4627      	mov	r7, r4
 800560c:	4605      	mov	r5, r0
 800560e:	4680      	mov	r8, r0
 8005610:	e614      	b.n	800523c <_dtoa_r+0x71c>
 8005612:	4648      	mov	r0, r9
 8005614:	f000 fef0 	bl	80063f8 <_Bfree>
 8005618:	2301      	movs	r3, #1
 800561a:	e639      	b.n	8005290 <_dtoa_r+0x770>
 800561c:	9b02      	ldr	r3, [sp, #8]
 800561e:	2b02      	cmp	r3, #2
 8005620:	f77f adf3 	ble.w	800520a <_dtoa_r+0x6ea>
 8005624:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005626:	2b00      	cmp	r3, #0
 8005628:	f000 80cf 	beq.w	80057ca <_dtoa_r+0xcaa>
 800562c:	9b07      	ldr	r3, [sp, #28]
 800562e:	43db      	mvns	r3, r3
 8005630:	9306      	str	r3, [sp, #24]
 8005632:	465c      	mov	r4, fp
 8005634:	e78b      	b.n	800554e <_dtoa_r+0xa2e>
 8005636:	9a06      	ldr	r2, [sp, #24]
 8005638:	2331      	movs	r3, #49	; 0x31
 800563a:	3201      	adds	r2, #1
 800563c:	9206      	str	r2, [sp, #24]
 800563e:	f88b 3000 	strb.w	r3, [fp]
 8005642:	e6b3      	b.n	80053ac <_dtoa_r+0x88c>
 8005644:	2401      	movs	r4, #1
 8005646:	9409      	str	r4, [sp, #36]	; 0x24
 8005648:	9407      	str	r4, [sp, #28]
 800564a:	f7ff bb8b 	b.w	8004d64 <_dtoa_r+0x244>
 800564e:	4630      	mov	r0, r6
 8005650:	f7fa ff28 	bl	80004a4 <__aeabi_i2d>
 8005654:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005658:	f7fa ff8e 	bl	8000578 <__aeabi_dmul>
 800565c:	2200      	movs	r2, #0
 800565e:	4b68      	ldr	r3, [pc, #416]	; (8005800 <_dtoa_r+0xce0>)
 8005660:	f7fa fdd4 	bl	800020c <__adddf3>
 8005664:	4606      	mov	r6, r0
 8005666:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800566a:	2200      	movs	r2, #0
 800566c:	4b61      	ldr	r3, [pc, #388]	; (80057f4 <_dtoa_r+0xcd4>)
 800566e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005672:	f7fa fdc9 	bl	8000208 <__aeabi_dsub>
 8005676:	4632      	mov	r2, r6
 8005678:	463b      	mov	r3, r7
 800567a:	4604      	mov	r4, r0
 800567c:	460d      	mov	r5, r1
 800567e:	f7fb fd1d 	bl	80010bc <__aeabi_dcmpgt>
 8005682:	2800      	cmp	r0, #0
 8005684:	d14f      	bne.n	8005726 <_dtoa_r+0xc06>
 8005686:	4632      	mov	r2, r6
 8005688:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800568c:	4620      	mov	r0, r4
 800568e:	4629      	mov	r1, r5
 8005690:	f7fb fcf6 	bl	8001080 <__aeabi_dcmplt>
 8005694:	2800      	cmp	r0, #0
 8005696:	f43f ac69 	beq.w	8004f6c <_dtoa_r+0x44c>
 800569a:	2600      	movs	r6, #0
 800569c:	4635      	mov	r5, r6
 800569e:	e7c5      	b.n	800562c <_dtoa_r+0xb0c>
 80056a0:	2301      	movs	r3, #1
 80056a2:	930a      	str	r3, [sp, #40]	; 0x28
 80056a4:	e6c8      	b.n	8005438 <_dtoa_r+0x918>
 80056a6:	4651      	mov	r1, sl
 80056a8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80056aa:	4648      	mov	r0, r9
 80056ac:	f000 ffee 	bl	800668c <__pow5mult>
 80056b0:	4682      	mov	sl, r0
 80056b2:	e572      	b.n	800519a <_dtoa_r+0x67a>
 80056b4:	f8dd a000 	ldr.w	sl, [sp]
 80056b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80056bc:	e686      	b.n	80053cc <_dtoa_r+0x8ac>
 80056be:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80056c0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80056c2:	1afb      	subs	r3, r7, r3
 80056c4:	441a      	add	r2, r3
 80056c6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80056ca:	2700      	movs	r7, #0
 80056cc:	e512      	b.n	80050f4 <_dtoa_r+0x5d4>
 80056ce:	2b00      	cmp	r3, #0
 80056d0:	9402      	str	r4, [sp, #8]
 80056d2:	465e      	mov	r6, fp
 80056d4:	f107 0401 	add.w	r4, r7, #1
 80056d8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80056dc:	f300 80ba 	bgt.w	8005854 <_dtoa_r+0xd34>
 80056e0:	9b00      	ldr	r3, [sp, #0]
 80056e2:	9502      	str	r5, [sp, #8]
 80056e4:	703b      	strb	r3, [r7, #0]
 80056e6:	4645      	mov	r5, r8
 80056e8:	e660      	b.n	80053ac <_dtoa_r+0x88c>
 80056ea:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80056ee:	2602      	movs	r6, #2
 80056f0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80056f4:	f7ff bb67 	b.w	8004dc6 <_dtoa_r+0x2a6>
 80056f8:	9b00      	ldr	r3, [sp, #0]
 80056fa:	2b39      	cmp	r3, #57	; 0x39
 80056fc:	465e      	mov	r6, fp
 80056fe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005702:	f000 80b9 	beq.w	8005878 <_dtoa_r+0xd58>
 8005706:	9b00      	ldr	r3, [sp, #0]
 8005708:	9502      	str	r5, [sp, #8]
 800570a:	3301      	adds	r3, #1
 800570c:	703b      	strb	r3, [r7, #0]
 800570e:	4645      	mov	r5, r8
 8005710:	e64c      	b.n	80053ac <_dtoa_r+0x88c>
 8005712:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005716:	1a9c      	subs	r4, r3, r2
 8005718:	e4f5      	b.n	8005106 <_dtoa_r+0x5e6>
 800571a:	465e      	mov	r6, fp
 800571c:	9502      	str	r5, [sp, #8]
 800571e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005722:	4645      	mov	r5, r8
 8005724:	e61a      	b.n	800535c <_dtoa_r+0x83c>
 8005726:	2600      	movs	r6, #0
 8005728:	4635      	mov	r5, r6
 800572a:	e708      	b.n	800553e <_dtoa_r+0xa1e>
 800572c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005730:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005734:	f7fa ff20 	bl	8000578 <__aeabi_dmul>
 8005738:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800573a:	f88b 5000 	strb.w	r5, [fp]
 800573e:	2b01      	cmp	r3, #1
 8005740:	e9cd 0100 	strd	r0, r1, [sp]
 8005744:	d020      	beq.n	8005788 <_dtoa_r+0xc68>
 8005746:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005748:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800574c:	445b      	add	r3, fp
 800574e:	4698      	mov	r8, r3
 8005750:	2200      	movs	r2, #0
 8005752:	4b2c      	ldr	r3, [pc, #176]	; (8005804 <_dtoa_r+0xce4>)
 8005754:	4630      	mov	r0, r6
 8005756:	4639      	mov	r1, r7
 8005758:	f7fa ff0e 	bl	8000578 <__aeabi_dmul>
 800575c:	460f      	mov	r7, r1
 800575e:	4606      	mov	r6, r0
 8005760:	f7fb fccc 	bl	80010fc <__aeabi_d2iz>
 8005764:	4605      	mov	r5, r0
 8005766:	f7fa fe9d 	bl	80004a4 <__aeabi_i2d>
 800576a:	3530      	adds	r5, #48	; 0x30
 800576c:	4602      	mov	r2, r0
 800576e:	460b      	mov	r3, r1
 8005770:	4630      	mov	r0, r6
 8005772:	4639      	mov	r1, r7
 8005774:	f7fa fd48 	bl	8000208 <__aeabi_dsub>
 8005778:	f804 5b01 	strb.w	r5, [r4], #1
 800577c:	4544      	cmp	r4, r8
 800577e:	4606      	mov	r6, r0
 8005780:	460f      	mov	r7, r1
 8005782:	d1e5      	bne.n	8005750 <_dtoa_r+0xc30>
 8005784:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005788:	4b1f      	ldr	r3, [pc, #124]	; (8005808 <_dtoa_r+0xce8>)
 800578a:	2200      	movs	r2, #0
 800578c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005790:	f7fa fd3c 	bl	800020c <__adddf3>
 8005794:	4632      	mov	r2, r6
 8005796:	463b      	mov	r3, r7
 8005798:	f7fb fc72 	bl	8001080 <__aeabi_dcmplt>
 800579c:	2800      	cmp	r0, #0
 800579e:	d070      	beq.n	8005882 <_dtoa_r+0xd62>
 80057a0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80057a2:	9306      	str	r3, [sp, #24]
 80057a4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057a8:	e48f      	b.n	80050ca <_dtoa_r+0x5aa>
 80057aa:	2330      	movs	r3, #48	; 0x30
 80057ac:	f88b 3000 	strb.w	r3, [fp]
 80057b0:	9b06      	ldr	r3, [sp, #24]
 80057b2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057b6:	3301      	adds	r3, #1
 80057b8:	9306      	str	r3, [sp, #24]
 80057ba:	465b      	mov	r3, fp
 80057bc:	e489      	b.n	80050d2 <_dtoa_r+0x5b2>
 80057be:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80057c0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80057c4:	e6a0      	b.n	8005508 <_dtoa_r+0x9e8>
 80057c6:	2300      	movs	r3, #0
 80057c8:	e676      	b.n	80054b8 <_dtoa_r+0x998>
 80057ca:	4631      	mov	r1, r6
 80057cc:	2205      	movs	r2, #5
 80057ce:	4648      	mov	r0, r9
 80057d0:	f000 fe1c 	bl	800640c <__multadd>
 80057d4:	4601      	mov	r1, r0
 80057d6:	4606      	mov	r6, r0
 80057d8:	4650      	mov	r0, sl
 80057da:	f000 fffd 	bl	80067d8 <__mcmp>
 80057de:	2800      	cmp	r0, #0
 80057e0:	f73f aead 	bgt.w	800553e <_dtoa_r+0xa1e>
 80057e4:	e722      	b.n	800562c <_dtoa_r+0xb0c>
 80057e6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80057ea:	2602      	movs	r6, #2
 80057ec:	ed8d 7b00 	vstr	d7, [sp]
 80057f0:	f7ff bb02 	b.w	8004df8 <_dtoa_r+0x2d8>
 80057f4:	40140000 	.word	0x40140000
 80057f8:	080076b0 	.word	0x080076b0
 80057fc:	08007688 	.word	0x08007688
 8005800:	401c0000 	.word	0x401c0000
 8005804:	40240000 	.word	0x40240000
 8005808:	3fe00000 	.word	0x3fe00000
 800580c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800580e:	2b00      	cmp	r3, #0
 8005810:	f43f af1d 	beq.w	800564e <_dtoa_r+0xb2e>
 8005814:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005816:	2c00      	cmp	r4, #0
 8005818:	f77f aba8 	ble.w	8004f6c <_dtoa_r+0x44c>
 800581c:	2200      	movs	r2, #0
 800581e:	4b45      	ldr	r3, [pc, #276]	; (8005934 <_dtoa_r+0xe14>)
 8005820:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005824:	f7fa fea8 	bl	8000578 <__aeabi_dmul>
 8005828:	e9cd 0100 	strd	r0, r1, [sp]
 800582c:	1c70      	adds	r0, r6, #1
 800582e:	f7fa fe39 	bl	80004a4 <__aeabi_i2d>
 8005832:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005836:	f7fa fe9f 	bl	8000578 <__aeabi_dmul>
 800583a:	4b3f      	ldr	r3, [pc, #252]	; (8005938 <_dtoa_r+0xe18>)
 800583c:	2200      	movs	r2, #0
 800583e:	f7fa fce5 	bl	800020c <__adddf3>
 8005842:	9b06      	ldr	r3, [sp, #24]
 8005844:	9412      	str	r4, [sp, #72]	; 0x48
 8005846:	3b01      	subs	r3, #1
 8005848:	4606      	mov	r6, r0
 800584a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800584e:	9316      	str	r3, [sp, #88]	; 0x58
 8005850:	f7ff baf3 	b.w	8004e3a <_dtoa_r+0x31a>
 8005854:	4651      	mov	r1, sl
 8005856:	2201      	movs	r2, #1
 8005858:	4648      	mov	r0, r9
 800585a:	f000 ff67 	bl	800672c <__lshift>
 800585e:	4631      	mov	r1, r6
 8005860:	4682      	mov	sl, r0
 8005862:	f000 ffb9 	bl	80067d8 <__mcmp>
 8005866:	2800      	cmp	r0, #0
 8005868:	dd3b      	ble.n	80058e2 <_dtoa_r+0xdc2>
 800586a:	9b00      	ldr	r3, [sp, #0]
 800586c:	2b39      	cmp	r3, #57	; 0x39
 800586e:	d003      	beq.n	8005878 <_dtoa_r+0xd58>
 8005870:	9b02      	ldr	r3, [sp, #8]
 8005872:	3331      	adds	r3, #49	; 0x31
 8005874:	9300      	str	r3, [sp, #0]
 8005876:	e733      	b.n	80056e0 <_dtoa_r+0xbc0>
 8005878:	2239      	movs	r2, #57	; 0x39
 800587a:	9502      	str	r5, [sp, #8]
 800587c:	703a      	strb	r2, [r7, #0]
 800587e:	4645      	mov	r5, r8
 8005880:	e58e      	b.n	80053a0 <_dtoa_r+0x880>
 8005882:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005886:	2000      	movs	r0, #0
 8005888:	492c      	ldr	r1, [pc, #176]	; (800593c <_dtoa_r+0xe1c>)
 800588a:	f7fa fcbd 	bl	8000208 <__aeabi_dsub>
 800588e:	4632      	mov	r2, r6
 8005890:	463b      	mov	r3, r7
 8005892:	f7fb fc13 	bl	80010bc <__aeabi_dcmpgt>
 8005896:	b910      	cbnz	r0, 800589e <_dtoa_r+0xd7e>
 8005898:	f7ff bb68 	b.w	8004f6c <_dtoa_r+0x44c>
 800589c:	4614      	mov	r4, r2
 800589e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80058a2:	2b30      	cmp	r3, #48	; 0x30
 80058a4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80058a8:	d0f8      	beq.n	800589c <_dtoa_r+0xd7c>
 80058aa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058ac:	9306      	str	r3, [sp, #24]
 80058ae:	e58d      	b.n	80053cc <_dtoa_r+0x8ac>
 80058b0:	46d9      	mov	r9, fp
 80058b2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80058b6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80058ba:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058bc:	9306      	str	r3, [sp, #24]
 80058be:	e404      	b.n	80050ca <_dtoa_r+0x5aa>
 80058c0:	9b00      	ldr	r3, [sp, #0]
 80058c2:	2b39      	cmp	r3, #57	; 0x39
 80058c4:	4621      	mov	r1, r4
 80058c6:	4632      	mov	r2, r6
 80058c8:	f107 0401 	add.w	r4, r7, #1
 80058cc:	465e      	mov	r6, fp
 80058ce:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80058d2:	d0d1      	beq.n	8005878 <_dtoa_r+0xd58>
 80058d4:	2a00      	cmp	r2, #0
 80058d6:	f77f af03 	ble.w	80056e0 <_dtoa_r+0xbc0>
 80058da:	460b      	mov	r3, r1
 80058dc:	3331      	adds	r3, #49	; 0x31
 80058de:	9300      	str	r3, [sp, #0]
 80058e0:	e6fe      	b.n	80056e0 <_dtoa_r+0xbc0>
 80058e2:	f47f aefd 	bne.w	80056e0 <_dtoa_r+0xbc0>
 80058e6:	9b00      	ldr	r3, [sp, #0]
 80058e8:	07da      	lsls	r2, r3, #31
 80058ea:	f57f aef9 	bpl.w	80056e0 <_dtoa_r+0xbc0>
 80058ee:	e7bc      	b.n	800586a <_dtoa_r+0xd4a>
 80058f0:	4629      	mov	r1, r5
 80058f2:	2300      	movs	r3, #0
 80058f4:	220a      	movs	r2, #10
 80058f6:	4648      	mov	r0, r9
 80058f8:	f000 fd88 	bl	800640c <__multadd>
 80058fc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80058fe:	2b00      	cmp	r3, #0
 8005900:	4605      	mov	r5, r0
 8005902:	dd09      	ble.n	8005918 <_dtoa_r+0xdf8>
 8005904:	9309      	str	r3, [sp, #36]	; 0x24
 8005906:	e484      	b.n	8005212 <_dtoa_r+0x6f2>
 8005908:	9b02      	ldr	r3, [sp, #8]
 800590a:	2b02      	cmp	r3, #2
 800590c:	dc0e      	bgt.n	800592c <_dtoa_r+0xe0c>
 800590e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005910:	e507      	b.n	8005322 <_dtoa_r+0x802>
 8005912:	2602      	movs	r6, #2
 8005914:	f7ff ba70 	b.w	8004df8 <_dtoa_r+0x2d8>
 8005918:	9b02      	ldr	r3, [sp, #8]
 800591a:	2b02      	cmp	r3, #2
 800591c:	dc06      	bgt.n	800592c <_dtoa_r+0xe0c>
 800591e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005920:	e7f0      	b.n	8005904 <_dtoa_r+0xde4>
 8005922:	f43f ac59 	beq.w	80051d8 <_dtoa_r+0x6b8>
 8005926:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800592a:	e450      	b.n	80051ce <_dtoa_r+0x6ae>
 800592c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800592e:	9309      	str	r3, [sp, #36]	; 0x24
 8005930:	e678      	b.n	8005624 <_dtoa_r+0xb04>
 8005932:	bf00      	nop
 8005934:	40240000 	.word	0x40240000
 8005938:	401c0000 	.word	0x401c0000
 800593c:	3fe00000 	.word	0x3fe00000

08005940 <__sflush_r>:
 8005940:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005944:	b29a      	uxth	r2, r3
 8005946:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800594a:	460c      	mov	r4, r1
 800594c:	0711      	lsls	r1, r2, #28
 800594e:	4680      	mov	r8, r0
 8005950:	d444      	bmi.n	80059dc <__sflush_r+0x9c>
 8005952:	6862      	ldr	r2, [r4, #4]
 8005954:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005958:	2a00      	cmp	r2, #0
 800595a:	81a3      	strh	r3, [r4, #12]
 800595c:	dd59      	ble.n	8005a12 <__sflush_r+0xd2>
 800595e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005960:	2d00      	cmp	r5, #0
 8005962:	d053      	beq.n	8005a0c <__sflush_r+0xcc>
 8005964:	2200      	movs	r2, #0
 8005966:	b29b      	uxth	r3, r3
 8005968:	f8d8 6000 	ldr.w	r6, [r8]
 800596c:	69e1      	ldr	r1, [r4, #28]
 800596e:	f8c8 2000 	str.w	r2, [r8]
 8005972:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005976:	f040 8083 	bne.w	8005a80 <__sflush_r+0x140>
 800597a:	2301      	movs	r3, #1
 800597c:	4640      	mov	r0, r8
 800597e:	47a8      	blx	r5
 8005980:	1c42      	adds	r2, r0, #1
 8005982:	d04a      	beq.n	8005a1a <__sflush_r+0xda>
 8005984:	89a3      	ldrh	r3, [r4, #12]
 8005986:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005988:	69e1      	ldr	r1, [r4, #28]
 800598a:	075b      	lsls	r3, r3, #29
 800598c:	d505      	bpl.n	800599a <__sflush_r+0x5a>
 800598e:	6862      	ldr	r2, [r4, #4]
 8005990:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005992:	1a80      	subs	r0, r0, r2
 8005994:	b10b      	cbz	r3, 800599a <__sflush_r+0x5a>
 8005996:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005998:	1ac0      	subs	r0, r0, r3
 800599a:	4602      	mov	r2, r0
 800599c:	2300      	movs	r3, #0
 800599e:	4640      	mov	r0, r8
 80059a0:	47a8      	blx	r5
 80059a2:	1c47      	adds	r7, r0, #1
 80059a4:	d045      	beq.n	8005a32 <__sflush_r+0xf2>
 80059a6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059aa:	6922      	ldr	r2, [r4, #16]
 80059ac:	6022      	str	r2, [r4, #0]
 80059ae:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80059b2:	2200      	movs	r2, #0
 80059b4:	81a3      	strh	r3, [r4, #12]
 80059b6:	04db      	lsls	r3, r3, #19
 80059b8:	6062      	str	r2, [r4, #4]
 80059ba:	d500      	bpl.n	80059be <__sflush_r+0x7e>
 80059bc:	6520      	str	r0, [r4, #80]	; 0x50
 80059be:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80059c0:	f8c8 6000 	str.w	r6, [r8]
 80059c4:	b311      	cbz	r1, 8005a0c <__sflush_r+0xcc>
 80059c6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80059ca:	4299      	cmp	r1, r3
 80059cc:	d002      	beq.n	80059d4 <__sflush_r+0x94>
 80059ce:	4640      	mov	r0, r8
 80059d0:	f000 f95e 	bl	8005c90 <_free_r>
 80059d4:	2000      	movs	r0, #0
 80059d6:	6320      	str	r0, [r4, #48]	; 0x30
 80059d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80059dc:	6926      	ldr	r6, [r4, #16]
 80059de:	b1ae      	cbz	r6, 8005a0c <__sflush_r+0xcc>
 80059e0:	6825      	ldr	r5, [r4, #0]
 80059e2:	6026      	str	r6, [r4, #0]
 80059e4:	0792      	lsls	r2, r2, #30
 80059e6:	bf0c      	ite	eq
 80059e8:	6963      	ldreq	r3, [r4, #20]
 80059ea:	2300      	movne	r3, #0
 80059ec:	1bad      	subs	r5, r5, r6
 80059ee:	60a3      	str	r3, [r4, #8]
 80059f0:	e00a      	b.n	8005a08 <__sflush_r+0xc8>
 80059f2:	462b      	mov	r3, r5
 80059f4:	4632      	mov	r2, r6
 80059f6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80059f8:	69e1      	ldr	r1, [r4, #28]
 80059fa:	4640      	mov	r0, r8
 80059fc:	47b8      	blx	r7
 80059fe:	2800      	cmp	r0, #0
 8005a00:	eba5 0500 	sub.w	r5, r5, r0
 8005a04:	4406      	add	r6, r0
 8005a06:	dd2b      	ble.n	8005a60 <__sflush_r+0x120>
 8005a08:	2d00      	cmp	r5, #0
 8005a0a:	dcf2      	bgt.n	80059f2 <__sflush_r+0xb2>
 8005a0c:	2000      	movs	r0, #0
 8005a0e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a12:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005a14:	2a00      	cmp	r2, #0
 8005a16:	dca2      	bgt.n	800595e <__sflush_r+0x1e>
 8005a18:	e7f8      	b.n	8005a0c <__sflush_r+0xcc>
 8005a1a:	f8d8 3000 	ldr.w	r3, [r8]
 8005a1e:	2b00      	cmp	r3, #0
 8005a20:	d0b0      	beq.n	8005984 <__sflush_r+0x44>
 8005a22:	2b1d      	cmp	r3, #29
 8005a24:	d001      	beq.n	8005a2a <__sflush_r+0xea>
 8005a26:	2b16      	cmp	r3, #22
 8005a28:	d12c      	bne.n	8005a84 <__sflush_r+0x144>
 8005a2a:	f8c8 6000 	str.w	r6, [r8]
 8005a2e:	2000      	movs	r0, #0
 8005a30:	e7ed      	b.n	8005a0e <__sflush_r+0xce>
 8005a32:	f8d8 1000 	ldr.w	r1, [r8]
 8005a36:	291d      	cmp	r1, #29
 8005a38:	d81a      	bhi.n	8005a70 <__sflush_r+0x130>
 8005a3a:	4b15      	ldr	r3, [pc, #84]	; (8005a90 <__sflush_r+0x150>)
 8005a3c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a40:	40cb      	lsrs	r3, r1
 8005a42:	43db      	mvns	r3, r3
 8005a44:	f013 0301 	ands.w	r3, r3, #1
 8005a48:	d114      	bne.n	8005a74 <__sflush_r+0x134>
 8005a4a:	6925      	ldr	r5, [r4, #16]
 8005a4c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005a50:	e9c4 5300 	strd	r5, r3, [r4]
 8005a54:	04d5      	lsls	r5, r2, #19
 8005a56:	81a2      	strh	r2, [r4, #12]
 8005a58:	d5b1      	bpl.n	80059be <__sflush_r+0x7e>
 8005a5a:	2900      	cmp	r1, #0
 8005a5c:	d1af      	bne.n	80059be <__sflush_r+0x7e>
 8005a5e:	e7ad      	b.n	80059bc <__sflush_r+0x7c>
 8005a60:	89a3      	ldrh	r3, [r4, #12]
 8005a62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a66:	81a3      	strh	r3, [r4, #12]
 8005a68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a6c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a70:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a74:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005a78:	81a2      	strh	r2, [r4, #12]
 8005a7a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a7e:	e7c6      	b.n	8005a0e <__sflush_r+0xce>
 8005a80:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005a82:	e782      	b.n	800598a <__sflush_r+0x4a>
 8005a84:	89a3      	ldrh	r3, [r4, #12]
 8005a86:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a8a:	81a3      	strh	r3, [r4, #12]
 8005a8c:	e7bf      	b.n	8005a0e <__sflush_r+0xce>
 8005a8e:	bf00      	nop
 8005a90:	20400001 	.word	0x20400001

08005a94 <_fflush_r>:
 8005a94:	b538      	push	{r3, r4, r5, lr}
 8005a96:	460d      	mov	r5, r1
 8005a98:	4604      	mov	r4, r0
 8005a9a:	b108      	cbz	r0, 8005aa0 <_fflush_r+0xc>
 8005a9c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005a9e:	b1a3      	cbz	r3, 8005aca <_fflush_r+0x36>
 8005aa0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005aa4:	b1b8      	cbz	r0, 8005ad6 <_fflush_r+0x42>
 8005aa6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005aa8:	07db      	lsls	r3, r3, #31
 8005aaa:	d401      	bmi.n	8005ab0 <_fflush_r+0x1c>
 8005aac:	0581      	lsls	r1, r0, #22
 8005aae:	d51a      	bpl.n	8005ae6 <_fflush_r+0x52>
 8005ab0:	4620      	mov	r0, r4
 8005ab2:	4629      	mov	r1, r5
 8005ab4:	f7ff ff44 	bl	8005940 <__sflush_r>
 8005ab8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005aba:	07da      	lsls	r2, r3, #31
 8005abc:	4604      	mov	r4, r0
 8005abe:	d402      	bmi.n	8005ac6 <_fflush_r+0x32>
 8005ac0:	89ab      	ldrh	r3, [r5, #12]
 8005ac2:	059b      	lsls	r3, r3, #22
 8005ac4:	d50a      	bpl.n	8005adc <_fflush_r+0x48>
 8005ac6:	4620      	mov	r0, r4
 8005ac8:	bd38      	pop	{r3, r4, r5, pc}
 8005aca:	f000 f83f 	bl	8005b4c <__sinit>
 8005ace:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005ad2:	2800      	cmp	r0, #0
 8005ad4:	d1e7      	bne.n	8005aa6 <_fflush_r+0x12>
 8005ad6:	4604      	mov	r4, r0
 8005ad8:	4620      	mov	r0, r4
 8005ada:	bd38      	pop	{r3, r4, r5, pc}
 8005adc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005ade:	f000 fb87 	bl	80061f0 <__retarget_lock_release_recursive>
 8005ae2:	4620      	mov	r0, r4
 8005ae4:	bd38      	pop	{r3, r4, r5, pc}
 8005ae6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005ae8:	f000 fb80 	bl	80061ec <__retarget_lock_acquire_recursive>
 8005aec:	e7e0      	b.n	8005ab0 <_fflush_r+0x1c>
 8005aee:	bf00      	nop

08005af0 <std>:
 8005af0:	b510      	push	{r4, lr}
 8005af2:	2300      	movs	r3, #0
 8005af4:	4604      	mov	r4, r0
 8005af6:	8181      	strh	r1, [r0, #12]
 8005af8:	81c2      	strh	r2, [r0, #14]
 8005afa:	e9c0 3300 	strd	r3, r3, [r0]
 8005afe:	6083      	str	r3, [r0, #8]
 8005b00:	6643      	str	r3, [r0, #100]	; 0x64
 8005b02:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005b06:	6183      	str	r3, [r0, #24]
 8005b08:	4619      	mov	r1, r3
 8005b0a:	2208      	movs	r2, #8
 8005b0c:	305c      	adds	r0, #92	; 0x5c
 8005b0e:	f7fd f80d 	bl	8002b2c <memset>
 8005b12:	4807      	ldr	r0, [pc, #28]	; (8005b30 <std+0x40>)
 8005b14:	4907      	ldr	r1, [pc, #28]	; (8005b34 <std+0x44>)
 8005b16:	4a08      	ldr	r2, [pc, #32]	; (8005b38 <std+0x48>)
 8005b18:	4b08      	ldr	r3, [pc, #32]	; (8005b3c <std+0x4c>)
 8005b1a:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005b1c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005b20:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005b24:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005b28:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b2c:	f000 bb5a 	b.w	80061e4 <__retarget_lock_init_recursive>
 8005b30:	08006d85 	.word	0x08006d85
 8005b34:	08006da9 	.word	0x08006da9
 8005b38:	08006de5 	.word	0x08006de5
 8005b3c:	08006e05 	.word	0x08006e05

08005b40 <_cleanup_r>:
 8005b40:	4901      	ldr	r1, [pc, #4]	; (8005b48 <_cleanup_r+0x8>)
 8005b42:	f000 bb17 	b.w	8006174 <_fwalk_reent>
 8005b46:	bf00      	nop
 8005b48:	08007011 	.word	0x08007011

08005b4c <__sinit>:
 8005b4c:	b510      	push	{r4, lr}
 8005b4e:	4604      	mov	r4, r0
 8005b50:	4812      	ldr	r0, [pc, #72]	; (8005b9c <__sinit+0x50>)
 8005b52:	f000 fb4b 	bl	80061ec <__retarget_lock_acquire_recursive>
 8005b56:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005b58:	b9d2      	cbnz	r2, 8005b90 <__sinit+0x44>
 8005b5a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005b5e:	4810      	ldr	r0, [pc, #64]	; (8005ba0 <__sinit+0x54>)
 8005b60:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005b64:	2103      	movs	r1, #3
 8005b66:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005b6a:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005b6c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005b70:	6860      	ldr	r0, [r4, #4]
 8005b72:	2104      	movs	r1, #4
 8005b74:	f7ff ffbc 	bl	8005af0 <std>
 8005b78:	2201      	movs	r2, #1
 8005b7a:	2109      	movs	r1, #9
 8005b7c:	68a0      	ldr	r0, [r4, #8]
 8005b7e:	f7ff ffb7 	bl	8005af0 <std>
 8005b82:	2202      	movs	r2, #2
 8005b84:	2112      	movs	r1, #18
 8005b86:	68e0      	ldr	r0, [r4, #12]
 8005b88:	f7ff ffb2 	bl	8005af0 <std>
 8005b8c:	2301      	movs	r3, #1
 8005b8e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005b90:	4802      	ldr	r0, [pc, #8]	; (8005b9c <__sinit+0x50>)
 8005b92:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b96:	f000 bb2b 	b.w	80061f0 <__retarget_lock_release_recursive>
 8005b9a:	bf00      	nop
 8005b9c:	20000b10 	.word	0x20000b10
 8005ba0:	08005b41 	.word	0x08005b41

08005ba4 <__sfp_lock_acquire>:
 8005ba4:	4801      	ldr	r0, [pc, #4]	; (8005bac <__sfp_lock_acquire+0x8>)
 8005ba6:	f000 bb21 	b.w	80061ec <__retarget_lock_acquire_recursive>
 8005baa:	bf00      	nop
 8005bac:	20000b24 	.word	0x20000b24

08005bb0 <__sfp_lock_release>:
 8005bb0:	4801      	ldr	r0, [pc, #4]	; (8005bb8 <__sfp_lock_release+0x8>)
 8005bb2:	f000 bb1d 	b.w	80061f0 <__retarget_lock_release_recursive>
 8005bb6:	bf00      	nop
 8005bb8:	20000b24 	.word	0x20000b24

08005bbc <__libc_fini_array>:
 8005bbc:	b538      	push	{r3, r4, r5, lr}
 8005bbe:	4c0a      	ldr	r4, [pc, #40]	; (8005be8 <__libc_fini_array+0x2c>)
 8005bc0:	4d0a      	ldr	r5, [pc, #40]	; (8005bec <__libc_fini_array+0x30>)
 8005bc2:	1b64      	subs	r4, r4, r5
 8005bc4:	10a4      	asrs	r4, r4, #2
 8005bc6:	d00a      	beq.n	8005bde <__libc_fini_array+0x22>
 8005bc8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005bcc:	3b01      	subs	r3, #1
 8005bce:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005bd2:	3c01      	subs	r4, #1
 8005bd4:	f855 3904 	ldr.w	r3, [r5], #-4
 8005bd8:	4798      	blx	r3
 8005bda:	2c00      	cmp	r4, #0
 8005bdc:	d1f9      	bne.n	8005bd2 <__libc_fini_array+0x16>
 8005bde:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005be2:	f001 bbd7 	b.w	8007394 <_fini>
 8005be6:	bf00      	nop
 8005be8:	0800779c 	.word	0x0800779c
 8005bec:	08007798 	.word	0x08007798

08005bf0 <_malloc_trim_r>:
 8005bf0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005bf2:	4f24      	ldr	r7, [pc, #144]	; (8005c84 <_malloc_trim_r+0x94>)
 8005bf4:	460c      	mov	r4, r1
 8005bf6:	4606      	mov	r6, r0
 8005bf8:	f7fc ffe2 	bl	8002bc0 <__malloc_lock>
 8005bfc:	68bb      	ldr	r3, [r7, #8]
 8005bfe:	685d      	ldr	r5, [r3, #4]
 8005c00:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005c04:	310f      	adds	r1, #15
 8005c06:	f025 0503 	bic.w	r5, r5, #3
 8005c0a:	4429      	add	r1, r5
 8005c0c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005c10:	f021 010f 	bic.w	r1, r1, #15
 8005c14:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005c18:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005c1c:	db07      	blt.n	8005c2e <_malloc_trim_r+0x3e>
 8005c1e:	2100      	movs	r1, #0
 8005c20:	4630      	mov	r0, r6
 8005c22:	f7fd f843 	bl	8002cac <_sbrk_r>
 8005c26:	68bb      	ldr	r3, [r7, #8]
 8005c28:	442b      	add	r3, r5
 8005c2a:	4298      	cmp	r0, r3
 8005c2c:	d004      	beq.n	8005c38 <_malloc_trim_r+0x48>
 8005c2e:	4630      	mov	r0, r6
 8005c30:	f7fc ffcc 	bl	8002bcc <__malloc_unlock>
 8005c34:	2000      	movs	r0, #0
 8005c36:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c38:	4261      	negs	r1, r4
 8005c3a:	4630      	mov	r0, r6
 8005c3c:	f7fd f836 	bl	8002cac <_sbrk_r>
 8005c40:	3001      	adds	r0, #1
 8005c42:	d00d      	beq.n	8005c60 <_malloc_trim_r+0x70>
 8005c44:	4b10      	ldr	r3, [pc, #64]	; (8005c88 <_malloc_trim_r+0x98>)
 8005c46:	68ba      	ldr	r2, [r7, #8]
 8005c48:	6819      	ldr	r1, [r3, #0]
 8005c4a:	1b2d      	subs	r5, r5, r4
 8005c4c:	f045 0501 	orr.w	r5, r5, #1
 8005c50:	4630      	mov	r0, r6
 8005c52:	1b09      	subs	r1, r1, r4
 8005c54:	6055      	str	r5, [r2, #4]
 8005c56:	6019      	str	r1, [r3, #0]
 8005c58:	f7fc ffb8 	bl	8002bcc <__malloc_unlock>
 8005c5c:	2001      	movs	r0, #1
 8005c5e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c60:	2100      	movs	r1, #0
 8005c62:	4630      	mov	r0, r6
 8005c64:	f7fd f822 	bl	8002cac <_sbrk_r>
 8005c68:	68ba      	ldr	r2, [r7, #8]
 8005c6a:	1a83      	subs	r3, r0, r2
 8005c6c:	2b0f      	cmp	r3, #15
 8005c6e:	ddde      	ble.n	8005c2e <_malloc_trim_r+0x3e>
 8005c70:	4c06      	ldr	r4, [pc, #24]	; (8005c8c <_malloc_trim_r+0x9c>)
 8005c72:	4905      	ldr	r1, [pc, #20]	; (8005c88 <_malloc_trim_r+0x98>)
 8005c74:	6824      	ldr	r4, [r4, #0]
 8005c76:	f043 0301 	orr.w	r3, r3, #1
 8005c7a:	1b00      	subs	r0, r0, r4
 8005c7c:	6053      	str	r3, [r2, #4]
 8005c7e:	6008      	str	r0, [r1, #0]
 8005c80:	e7d5      	b.n	8005c2e <_malloc_trim_r+0x3e>
 8005c82:	bf00      	nop
 8005c84:	200005b4 	.word	0x200005b4
 8005c88:	20000a80 	.word	0x20000a80
 8005c8c:	200009bc 	.word	0x200009bc

08005c90 <_free_r>:
 8005c90:	2900      	cmp	r1, #0
 8005c92:	d053      	beq.n	8005d3c <_free_r+0xac>
 8005c94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c96:	460c      	mov	r4, r1
 8005c98:	4606      	mov	r6, r0
 8005c9a:	f7fc ff91 	bl	8002bc0 <__malloc_lock>
 8005c9e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005ca2:	4f71      	ldr	r7, [pc, #452]	; (8005e68 <_free_r+0x1d8>)
 8005ca4:	f02c 0101 	bic.w	r1, ip, #1
 8005ca8:	f1a4 0508 	sub.w	r5, r4, #8
 8005cac:	186b      	adds	r3, r5, r1
 8005cae:	68b8      	ldr	r0, [r7, #8]
 8005cb0:	685a      	ldr	r2, [r3, #4]
 8005cb2:	4298      	cmp	r0, r3
 8005cb4:	f022 0203 	bic.w	r2, r2, #3
 8005cb8:	d053      	beq.n	8005d62 <_free_r+0xd2>
 8005cba:	f01c 0f01 	tst.w	ip, #1
 8005cbe:	605a      	str	r2, [r3, #4]
 8005cc0:	eb03 0002 	add.w	r0, r3, r2
 8005cc4:	d13b      	bne.n	8005d3e <_free_r+0xae>
 8005cc6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005cca:	6840      	ldr	r0, [r0, #4]
 8005ccc:	eba5 050c 	sub.w	r5, r5, ip
 8005cd0:	f107 0e08 	add.w	lr, r7, #8
 8005cd4:	68ac      	ldr	r4, [r5, #8]
 8005cd6:	4574      	cmp	r4, lr
 8005cd8:	4461      	add	r1, ip
 8005cda:	f000 0001 	and.w	r0, r0, #1
 8005cde:	d075      	beq.n	8005dcc <_free_r+0x13c>
 8005ce0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005ce4:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005ce8:	f8cc 4008 	str.w	r4, [ip, #8]
 8005cec:	b360      	cbz	r0, 8005d48 <_free_r+0xb8>
 8005cee:	f041 0301 	orr.w	r3, r1, #1
 8005cf2:	606b      	str	r3, [r5, #4]
 8005cf4:	5069      	str	r1, [r5, r1]
 8005cf6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005cfa:	d350      	bcc.n	8005d9e <_free_r+0x10e>
 8005cfc:	0a4b      	lsrs	r3, r1, #9
 8005cfe:	2b04      	cmp	r3, #4
 8005d00:	d870      	bhi.n	8005de4 <_free_r+0x154>
 8005d02:	098b      	lsrs	r3, r1, #6
 8005d04:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005d08:	00e4      	lsls	r4, r4, #3
 8005d0a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005d0e:	1938      	adds	r0, r7, r4
 8005d10:	593b      	ldr	r3, [r7, r4]
 8005d12:	3808      	subs	r0, #8
 8005d14:	4298      	cmp	r0, r3
 8005d16:	d078      	beq.n	8005e0a <_free_r+0x17a>
 8005d18:	685a      	ldr	r2, [r3, #4]
 8005d1a:	f022 0203 	bic.w	r2, r2, #3
 8005d1e:	428a      	cmp	r2, r1
 8005d20:	d971      	bls.n	8005e06 <_free_r+0x176>
 8005d22:	689b      	ldr	r3, [r3, #8]
 8005d24:	4298      	cmp	r0, r3
 8005d26:	d1f7      	bne.n	8005d18 <_free_r+0x88>
 8005d28:	68c3      	ldr	r3, [r0, #12]
 8005d2a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005d2e:	609d      	str	r5, [r3, #8]
 8005d30:	60c5      	str	r5, [r0, #12]
 8005d32:	4630      	mov	r0, r6
 8005d34:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d38:	f7fc bf48 	b.w	8002bcc <__malloc_unlock>
 8005d3c:	4770      	bx	lr
 8005d3e:	6840      	ldr	r0, [r0, #4]
 8005d40:	f000 0001 	and.w	r0, r0, #1
 8005d44:	2800      	cmp	r0, #0
 8005d46:	d1d2      	bne.n	8005cee <_free_r+0x5e>
 8005d48:	6898      	ldr	r0, [r3, #8]
 8005d4a:	4c48      	ldr	r4, [pc, #288]	; (8005e6c <_free_r+0x1dc>)
 8005d4c:	4411      	add	r1, r2
 8005d4e:	42a0      	cmp	r0, r4
 8005d50:	f041 0201 	orr.w	r2, r1, #1
 8005d54:	d062      	beq.n	8005e1c <_free_r+0x18c>
 8005d56:	68db      	ldr	r3, [r3, #12]
 8005d58:	60c3      	str	r3, [r0, #12]
 8005d5a:	6098      	str	r0, [r3, #8]
 8005d5c:	606a      	str	r2, [r5, #4]
 8005d5e:	5069      	str	r1, [r5, r1]
 8005d60:	e7c9      	b.n	8005cf6 <_free_r+0x66>
 8005d62:	f01c 0f01 	tst.w	ip, #1
 8005d66:	440a      	add	r2, r1
 8005d68:	d107      	bne.n	8005d7a <_free_r+0xea>
 8005d6a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005d6e:	1aed      	subs	r5, r5, r3
 8005d70:	441a      	add	r2, r3
 8005d72:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005d76:	60cb      	str	r3, [r1, #12]
 8005d78:	6099      	str	r1, [r3, #8]
 8005d7a:	4b3d      	ldr	r3, [pc, #244]	; (8005e70 <_free_r+0x1e0>)
 8005d7c:	681b      	ldr	r3, [r3, #0]
 8005d7e:	f042 0101 	orr.w	r1, r2, #1
 8005d82:	4293      	cmp	r3, r2
 8005d84:	6069      	str	r1, [r5, #4]
 8005d86:	60bd      	str	r5, [r7, #8]
 8005d88:	d804      	bhi.n	8005d94 <_free_r+0x104>
 8005d8a:	4b3a      	ldr	r3, [pc, #232]	; (8005e74 <_free_r+0x1e4>)
 8005d8c:	4630      	mov	r0, r6
 8005d8e:	6819      	ldr	r1, [r3, #0]
 8005d90:	f7ff ff2e 	bl	8005bf0 <_malloc_trim_r>
 8005d94:	4630      	mov	r0, r6
 8005d96:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d9a:	f7fc bf17 	b.w	8002bcc <__malloc_unlock>
 8005d9e:	08c9      	lsrs	r1, r1, #3
 8005da0:	6878      	ldr	r0, [r7, #4]
 8005da2:	1c4a      	adds	r2, r1, #1
 8005da4:	2301      	movs	r3, #1
 8005da6:	1089      	asrs	r1, r1, #2
 8005da8:	408b      	lsls	r3, r1
 8005daa:	4303      	orrs	r3, r0
 8005dac:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005db0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005db4:	607b      	str	r3, [r7, #4]
 8005db6:	3908      	subs	r1, #8
 8005db8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005dbc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005dc0:	60c5      	str	r5, [r0, #12]
 8005dc2:	4630      	mov	r0, r6
 8005dc4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005dc8:	f7fc bf00 	b.w	8002bcc <__malloc_unlock>
 8005dcc:	2800      	cmp	r0, #0
 8005dce:	d145      	bne.n	8005e5c <_free_r+0x1cc>
 8005dd0:	440a      	add	r2, r1
 8005dd2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005dd6:	f042 0001 	orr.w	r0, r2, #1
 8005dda:	60cb      	str	r3, [r1, #12]
 8005ddc:	6099      	str	r1, [r3, #8]
 8005dde:	6068      	str	r0, [r5, #4]
 8005de0:	50aa      	str	r2, [r5, r2]
 8005de2:	e7d7      	b.n	8005d94 <_free_r+0x104>
 8005de4:	2b14      	cmp	r3, #20
 8005de6:	d908      	bls.n	8005dfa <_free_r+0x16a>
 8005de8:	2b54      	cmp	r3, #84	; 0x54
 8005dea:	d81e      	bhi.n	8005e2a <_free_r+0x19a>
 8005dec:	0b0b      	lsrs	r3, r1, #12
 8005dee:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005df2:	00e4      	lsls	r4, r4, #3
 8005df4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005df8:	e789      	b.n	8005d0e <_free_r+0x7e>
 8005dfa:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005dfe:	00e4      	lsls	r4, r4, #3
 8005e00:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005e04:	e783      	b.n	8005d0e <_free_r+0x7e>
 8005e06:	4618      	mov	r0, r3
 8005e08:	e78e      	b.n	8005d28 <_free_r+0x98>
 8005e0a:	1093      	asrs	r3, r2, #2
 8005e0c:	6879      	ldr	r1, [r7, #4]
 8005e0e:	2201      	movs	r2, #1
 8005e10:	fa02 f303 	lsl.w	r3, r2, r3
 8005e14:	430b      	orrs	r3, r1
 8005e16:	607b      	str	r3, [r7, #4]
 8005e18:	4603      	mov	r3, r0
 8005e1a:	e786      	b.n	8005d2a <_free_r+0x9a>
 8005e1c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005e20:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005e24:	606a      	str	r2, [r5, #4]
 8005e26:	5069      	str	r1, [r5, r1]
 8005e28:	e7b4      	b.n	8005d94 <_free_r+0x104>
 8005e2a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e2e:	d806      	bhi.n	8005e3e <_free_r+0x1ae>
 8005e30:	0bcb      	lsrs	r3, r1, #15
 8005e32:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005e36:	00e4      	lsls	r4, r4, #3
 8005e38:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005e3c:	e767      	b.n	8005d0e <_free_r+0x7e>
 8005e3e:	f240 5254 	movw	r2, #1364	; 0x554
 8005e42:	4293      	cmp	r3, r2
 8005e44:	d806      	bhi.n	8005e54 <_free_r+0x1c4>
 8005e46:	0c8b      	lsrs	r3, r1, #18
 8005e48:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005e4c:	00e4      	lsls	r4, r4, #3
 8005e4e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005e52:	e75c      	b.n	8005d0e <_free_r+0x7e>
 8005e54:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005e58:	227e      	movs	r2, #126	; 0x7e
 8005e5a:	e758      	b.n	8005d0e <_free_r+0x7e>
 8005e5c:	f041 0201 	orr.w	r2, r1, #1
 8005e60:	606a      	str	r2, [r5, #4]
 8005e62:	6019      	str	r1, [r3, #0]
 8005e64:	e796      	b.n	8005d94 <_free_r+0x104>
 8005e66:	bf00      	nop
 8005e68:	200005b4 	.word	0x200005b4
 8005e6c:	200005bc 	.word	0x200005bc
 8005e70:	200009c0 	.word	0x200009c0
 8005e74:	20000ab0 	.word	0x20000ab0

08005e78 <__sfvwrite_r>:
 8005e78:	6893      	ldr	r3, [r2, #8]
 8005e7a:	2b00      	cmp	r3, #0
 8005e7c:	f000 80e4 	beq.w	8006048 <__sfvwrite_r+0x1d0>
 8005e80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005e84:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005e88:	b29b      	uxth	r3, r3
 8005e8a:	460c      	mov	r4, r1
 8005e8c:	0719      	lsls	r1, r3, #28
 8005e8e:	b083      	sub	sp, #12
 8005e90:	4682      	mov	sl, r0
 8005e92:	4690      	mov	r8, r2
 8005e94:	d535      	bpl.n	8005f02 <__sfvwrite_r+0x8a>
 8005e96:	6922      	ldr	r2, [r4, #16]
 8005e98:	b39a      	cbz	r2, 8005f02 <__sfvwrite_r+0x8a>
 8005e9a:	f013 0202 	ands.w	r2, r3, #2
 8005e9e:	f8d8 6000 	ldr.w	r6, [r8]
 8005ea2:	d03d      	beq.n	8005f20 <__sfvwrite_r+0xa8>
 8005ea4:	2700      	movs	r7, #0
 8005ea6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005eaa:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005eae:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006170 <__sfvwrite_r+0x2f8>
 8005eb2:	463d      	mov	r5, r7
 8005eb4:	454d      	cmp	r5, r9
 8005eb6:	462b      	mov	r3, r5
 8005eb8:	463a      	mov	r2, r7
 8005eba:	bf28      	it	cs
 8005ebc:	464b      	movcs	r3, r9
 8005ebe:	4661      	mov	r1, ip
 8005ec0:	4650      	mov	r0, sl
 8005ec2:	b1d5      	cbz	r5, 8005efa <__sfvwrite_r+0x82>
 8005ec4:	47d8      	blx	fp
 8005ec6:	2800      	cmp	r0, #0
 8005ec8:	f340 80c6 	ble.w	8006058 <__sfvwrite_r+0x1e0>
 8005ecc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ed0:	1a1b      	subs	r3, r3, r0
 8005ed2:	4407      	add	r7, r0
 8005ed4:	1a2d      	subs	r5, r5, r0
 8005ed6:	f8c8 3008 	str.w	r3, [r8, #8]
 8005eda:	2b00      	cmp	r3, #0
 8005edc:	f000 80b0 	beq.w	8006040 <__sfvwrite_r+0x1c8>
 8005ee0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005ee4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ee8:	454d      	cmp	r5, r9
 8005eea:	462b      	mov	r3, r5
 8005eec:	463a      	mov	r2, r7
 8005eee:	bf28      	it	cs
 8005ef0:	464b      	movcs	r3, r9
 8005ef2:	4661      	mov	r1, ip
 8005ef4:	4650      	mov	r0, sl
 8005ef6:	2d00      	cmp	r5, #0
 8005ef8:	d1e4      	bne.n	8005ec4 <__sfvwrite_r+0x4c>
 8005efa:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005efe:	3608      	adds	r6, #8
 8005f00:	e7d8      	b.n	8005eb4 <__sfvwrite_r+0x3c>
 8005f02:	4621      	mov	r1, r4
 8005f04:	4650      	mov	r0, sl
 8005f06:	f7fe fd01 	bl	800490c <__swsetup_r>
 8005f0a:	2800      	cmp	r0, #0
 8005f0c:	f040 812a 	bne.w	8006164 <__sfvwrite_r+0x2ec>
 8005f10:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f14:	f8d8 6000 	ldr.w	r6, [r8]
 8005f18:	b29b      	uxth	r3, r3
 8005f1a:	f013 0202 	ands.w	r2, r3, #2
 8005f1e:	d1c1      	bne.n	8005ea4 <__sfvwrite_r+0x2c>
 8005f20:	f013 0901 	ands.w	r9, r3, #1
 8005f24:	d15d      	bne.n	8005fe2 <__sfvwrite_r+0x16a>
 8005f26:	68a7      	ldr	r7, [r4, #8]
 8005f28:	6820      	ldr	r0, [r4, #0]
 8005f2a:	464d      	mov	r5, r9
 8005f2c:	2d00      	cmp	r5, #0
 8005f2e:	d054      	beq.n	8005fda <__sfvwrite_r+0x162>
 8005f30:	059a      	lsls	r2, r3, #22
 8005f32:	f140 809b 	bpl.w	800606c <__sfvwrite_r+0x1f4>
 8005f36:	42af      	cmp	r7, r5
 8005f38:	46bb      	mov	fp, r7
 8005f3a:	f200 80d8 	bhi.w	80060ee <__sfvwrite_r+0x276>
 8005f3e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005f42:	d02f      	beq.n	8005fa4 <__sfvwrite_r+0x12c>
 8005f44:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005f48:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005f4c:	eba0 0b01 	sub.w	fp, r0, r1
 8005f50:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005f54:	1c68      	adds	r0, r5, #1
 8005f56:	107f      	asrs	r7, r7, #1
 8005f58:	4458      	add	r0, fp
 8005f5a:	42b8      	cmp	r0, r7
 8005f5c:	463a      	mov	r2, r7
 8005f5e:	bf84      	itt	hi
 8005f60:	4607      	movhi	r7, r0
 8005f62:	463a      	movhi	r2, r7
 8005f64:	055b      	lsls	r3, r3, #21
 8005f66:	f140 80d3 	bpl.w	8006110 <__sfvwrite_r+0x298>
 8005f6a:	4611      	mov	r1, r2
 8005f6c:	4650      	mov	r0, sl
 8005f6e:	f7fc fb23 	bl	80025b8 <_malloc_r>
 8005f72:	2800      	cmp	r0, #0
 8005f74:	f000 80f0 	beq.w	8006158 <__sfvwrite_r+0x2e0>
 8005f78:	465a      	mov	r2, fp
 8005f7a:	6921      	ldr	r1, [r4, #16]
 8005f7c:	9001      	str	r0, [sp, #4]
 8005f7e:	f7fa fead 	bl	8000cdc <memcpy>
 8005f82:	89a2      	ldrh	r2, [r4, #12]
 8005f84:	9b01      	ldr	r3, [sp, #4]
 8005f86:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005f8a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005f8e:	81a2      	strh	r2, [r4, #12]
 8005f90:	eba7 020b 	sub.w	r2, r7, fp
 8005f94:	eb03 000b 	add.w	r0, r3, fp
 8005f98:	6167      	str	r7, [r4, #20]
 8005f9a:	6123      	str	r3, [r4, #16]
 8005f9c:	6020      	str	r0, [r4, #0]
 8005f9e:	60a2      	str	r2, [r4, #8]
 8005fa0:	462f      	mov	r7, r5
 8005fa2:	46ab      	mov	fp, r5
 8005fa4:	465a      	mov	r2, fp
 8005fa6:	4649      	mov	r1, r9
 8005fa8:	f000 f99c 	bl	80062e4 <memmove>
 8005fac:	68a2      	ldr	r2, [r4, #8]
 8005fae:	6823      	ldr	r3, [r4, #0]
 8005fb0:	1bd2      	subs	r2, r2, r7
 8005fb2:	445b      	add	r3, fp
 8005fb4:	462f      	mov	r7, r5
 8005fb6:	60a2      	str	r2, [r4, #8]
 8005fb8:	6023      	str	r3, [r4, #0]
 8005fba:	2500      	movs	r5, #0
 8005fbc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005fc0:	1bdb      	subs	r3, r3, r7
 8005fc2:	44b9      	add	r9, r7
 8005fc4:	f8c8 3008 	str.w	r3, [r8, #8]
 8005fc8:	2b00      	cmp	r3, #0
 8005fca:	d039      	beq.n	8006040 <__sfvwrite_r+0x1c8>
 8005fcc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fd0:	68a7      	ldr	r7, [r4, #8]
 8005fd2:	6820      	ldr	r0, [r4, #0]
 8005fd4:	b29b      	uxth	r3, r3
 8005fd6:	2d00      	cmp	r5, #0
 8005fd8:	d1aa      	bne.n	8005f30 <__sfvwrite_r+0xb8>
 8005fda:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005fde:	3608      	adds	r6, #8
 8005fe0:	e7a4      	b.n	8005f2c <__sfvwrite_r+0xb4>
 8005fe2:	4633      	mov	r3, r6
 8005fe4:	4691      	mov	r9, r2
 8005fe6:	4610      	mov	r0, r2
 8005fe8:	4617      	mov	r7, r2
 8005fea:	464e      	mov	r6, r9
 8005fec:	469b      	mov	fp, r3
 8005fee:	2f00      	cmp	r7, #0
 8005ff0:	d06b      	beq.n	80060ca <__sfvwrite_r+0x252>
 8005ff2:	2800      	cmp	r0, #0
 8005ff4:	d071      	beq.n	80060da <__sfvwrite_r+0x262>
 8005ff6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005ffa:	6820      	ldr	r0, [r4, #0]
 8005ffc:	45b9      	cmp	r9, r7
 8005ffe:	464b      	mov	r3, r9
 8006000:	bf28      	it	cs
 8006002:	463b      	movcs	r3, r7
 8006004:	4288      	cmp	r0, r1
 8006006:	d903      	bls.n	8006010 <__sfvwrite_r+0x198>
 8006008:	68a5      	ldr	r5, [r4, #8]
 800600a:	4415      	add	r5, r2
 800600c:	42ab      	cmp	r3, r5
 800600e:	dc71      	bgt.n	80060f4 <__sfvwrite_r+0x27c>
 8006010:	429a      	cmp	r2, r3
 8006012:	f300 8093 	bgt.w	800613c <__sfvwrite_r+0x2c4>
 8006016:	4613      	mov	r3, r2
 8006018:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800601a:	69e1      	ldr	r1, [r4, #28]
 800601c:	4632      	mov	r2, r6
 800601e:	4650      	mov	r0, sl
 8006020:	47a8      	blx	r5
 8006022:	1e05      	subs	r5, r0, #0
 8006024:	dd18      	ble.n	8006058 <__sfvwrite_r+0x1e0>
 8006026:	ebb9 0905 	subs.w	r9, r9, r5
 800602a:	d00f      	beq.n	800604c <__sfvwrite_r+0x1d4>
 800602c:	2001      	movs	r0, #1
 800602e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006032:	1b5b      	subs	r3, r3, r5
 8006034:	442e      	add	r6, r5
 8006036:	1b7f      	subs	r7, r7, r5
 8006038:	f8c8 3008 	str.w	r3, [r8, #8]
 800603c:	2b00      	cmp	r3, #0
 800603e:	d1d6      	bne.n	8005fee <__sfvwrite_r+0x176>
 8006040:	2000      	movs	r0, #0
 8006042:	b003      	add	sp, #12
 8006044:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006048:	2000      	movs	r0, #0
 800604a:	4770      	bx	lr
 800604c:	4621      	mov	r1, r4
 800604e:	4650      	mov	r0, sl
 8006050:	f7ff fd20 	bl	8005a94 <_fflush_r>
 8006054:	2800      	cmp	r0, #0
 8006056:	d0ea      	beq.n	800602e <__sfvwrite_r+0x1b6>
 8006058:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800605c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006060:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006064:	81a3      	strh	r3, [r4, #12]
 8006066:	b003      	add	sp, #12
 8006068:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800606c:	6923      	ldr	r3, [r4, #16]
 800606e:	4283      	cmp	r3, r0
 8006070:	d315      	bcc.n	800609e <__sfvwrite_r+0x226>
 8006072:	6961      	ldr	r1, [r4, #20]
 8006074:	42a9      	cmp	r1, r5
 8006076:	d812      	bhi.n	800609e <__sfvwrite_r+0x226>
 8006078:	4b3c      	ldr	r3, [pc, #240]	; (800616c <__sfvwrite_r+0x2f4>)
 800607a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800607c:	429d      	cmp	r5, r3
 800607e:	bf94      	ite	ls
 8006080:	462b      	movls	r3, r5
 8006082:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8006086:	464a      	mov	r2, r9
 8006088:	fb93 f3f1 	sdiv	r3, r3, r1
 800608c:	4650      	mov	r0, sl
 800608e:	fb01 f303 	mul.w	r3, r1, r3
 8006092:	69e1      	ldr	r1, [r4, #28]
 8006094:	47b8      	blx	r7
 8006096:	1e07      	subs	r7, r0, #0
 8006098:	ddde      	ble.n	8006058 <__sfvwrite_r+0x1e0>
 800609a:	1bed      	subs	r5, r5, r7
 800609c:	e78e      	b.n	8005fbc <__sfvwrite_r+0x144>
 800609e:	42af      	cmp	r7, r5
 80060a0:	bf28      	it	cs
 80060a2:	462f      	movcs	r7, r5
 80060a4:	463a      	mov	r2, r7
 80060a6:	4649      	mov	r1, r9
 80060a8:	f000 f91c 	bl	80062e4 <memmove>
 80060ac:	68a3      	ldr	r3, [r4, #8]
 80060ae:	6822      	ldr	r2, [r4, #0]
 80060b0:	1bdb      	subs	r3, r3, r7
 80060b2:	443a      	add	r2, r7
 80060b4:	60a3      	str	r3, [r4, #8]
 80060b6:	6022      	str	r2, [r4, #0]
 80060b8:	2b00      	cmp	r3, #0
 80060ba:	d1ee      	bne.n	800609a <__sfvwrite_r+0x222>
 80060bc:	4621      	mov	r1, r4
 80060be:	4650      	mov	r0, sl
 80060c0:	f7ff fce8 	bl	8005a94 <_fflush_r>
 80060c4:	2800      	cmp	r0, #0
 80060c6:	d0e8      	beq.n	800609a <__sfvwrite_r+0x222>
 80060c8:	e7c6      	b.n	8006058 <__sfvwrite_r+0x1e0>
 80060ca:	f10b 0308 	add.w	r3, fp, #8
 80060ce:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80060d2:	469b      	mov	fp, r3
 80060d4:	3308      	adds	r3, #8
 80060d6:	2f00      	cmp	r7, #0
 80060d8:	d0f9      	beq.n	80060ce <__sfvwrite_r+0x256>
 80060da:	463a      	mov	r2, r7
 80060dc:	210a      	movs	r1, #10
 80060de:	4630      	mov	r0, r6
 80060e0:	f7fa ff1e 	bl	8000f20 <memchr>
 80060e4:	b338      	cbz	r0, 8006136 <__sfvwrite_r+0x2be>
 80060e6:	3001      	adds	r0, #1
 80060e8:	eba0 0906 	sub.w	r9, r0, r6
 80060ec:	e783      	b.n	8005ff6 <__sfvwrite_r+0x17e>
 80060ee:	462f      	mov	r7, r5
 80060f0:	46ab      	mov	fp, r5
 80060f2:	e757      	b.n	8005fa4 <__sfvwrite_r+0x12c>
 80060f4:	4631      	mov	r1, r6
 80060f6:	462a      	mov	r2, r5
 80060f8:	f000 f8f4 	bl	80062e4 <memmove>
 80060fc:	6823      	ldr	r3, [r4, #0]
 80060fe:	442b      	add	r3, r5
 8006100:	6023      	str	r3, [r4, #0]
 8006102:	4621      	mov	r1, r4
 8006104:	4650      	mov	r0, sl
 8006106:	f7ff fcc5 	bl	8005a94 <_fflush_r>
 800610a:	2800      	cmp	r0, #0
 800610c:	d08b      	beq.n	8006026 <__sfvwrite_r+0x1ae>
 800610e:	e7a3      	b.n	8006058 <__sfvwrite_r+0x1e0>
 8006110:	4650      	mov	r0, sl
 8006112:	f000 fc55 	bl	80069c0 <_realloc_r>
 8006116:	4603      	mov	r3, r0
 8006118:	2800      	cmp	r0, #0
 800611a:	f47f af39 	bne.w	8005f90 <__sfvwrite_r+0x118>
 800611e:	6921      	ldr	r1, [r4, #16]
 8006120:	4650      	mov	r0, sl
 8006122:	f7ff fdb5 	bl	8005c90 <_free_r>
 8006126:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800612a:	220c      	movs	r2, #12
 800612c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006130:	f8ca 2000 	str.w	r2, [sl]
 8006134:	e792      	b.n	800605c <__sfvwrite_r+0x1e4>
 8006136:	f107 0901 	add.w	r9, r7, #1
 800613a:	e75c      	b.n	8005ff6 <__sfvwrite_r+0x17e>
 800613c:	461a      	mov	r2, r3
 800613e:	4631      	mov	r1, r6
 8006140:	9301      	str	r3, [sp, #4]
 8006142:	f000 f8cf 	bl	80062e4 <memmove>
 8006146:	9b01      	ldr	r3, [sp, #4]
 8006148:	68a1      	ldr	r1, [r4, #8]
 800614a:	6822      	ldr	r2, [r4, #0]
 800614c:	1ac9      	subs	r1, r1, r3
 800614e:	441a      	add	r2, r3
 8006150:	60a1      	str	r1, [r4, #8]
 8006152:	6022      	str	r2, [r4, #0]
 8006154:	461d      	mov	r5, r3
 8006156:	e766      	b.n	8006026 <__sfvwrite_r+0x1ae>
 8006158:	230c      	movs	r3, #12
 800615a:	f8ca 3000 	str.w	r3, [sl]
 800615e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006162:	e77b      	b.n	800605c <__sfvwrite_r+0x1e4>
 8006164:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006168:	e76b      	b.n	8006042 <__sfvwrite_r+0x1ca>
 800616a:	bf00      	nop
 800616c:	7ffffffe 	.word	0x7ffffffe
 8006170:	7ffffc00 	.word	0x7ffffc00

08006174 <_fwalk_reent>:
 8006174:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006178:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800617c:	d01f      	beq.n	80061be <_fwalk_reent+0x4a>
 800617e:	4688      	mov	r8, r1
 8006180:	4606      	mov	r6, r0
 8006182:	f04f 0900 	mov.w	r9, #0
 8006186:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800618a:	3d01      	subs	r5, #1
 800618c:	d411      	bmi.n	80061b2 <_fwalk_reent+0x3e>
 800618e:	89a3      	ldrh	r3, [r4, #12]
 8006190:	2b01      	cmp	r3, #1
 8006192:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006196:	4621      	mov	r1, r4
 8006198:	4630      	mov	r0, r6
 800619a:	d906      	bls.n	80061aa <_fwalk_reent+0x36>
 800619c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80061a0:	3301      	adds	r3, #1
 80061a2:	d002      	beq.n	80061aa <_fwalk_reent+0x36>
 80061a4:	47c0      	blx	r8
 80061a6:	ea49 0900 	orr.w	r9, r9, r0
 80061aa:	1c6b      	adds	r3, r5, #1
 80061ac:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80061b0:	d1ed      	bne.n	800618e <_fwalk_reent+0x1a>
 80061b2:	683f      	ldr	r7, [r7, #0]
 80061b4:	2f00      	cmp	r7, #0
 80061b6:	d1e6      	bne.n	8006186 <_fwalk_reent+0x12>
 80061b8:	4648      	mov	r0, r9
 80061ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061be:	46b9      	mov	r9, r7
 80061c0:	4648      	mov	r0, r9
 80061c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061c6:	bf00      	nop

080061c8 <_localeconv_r>:
 80061c8:	4a04      	ldr	r2, [pc, #16]	; (80061dc <_localeconv_r+0x14>)
 80061ca:	4b05      	ldr	r3, [pc, #20]	; (80061e0 <_localeconv_r+0x18>)
 80061cc:	6812      	ldr	r2, [r2, #0]
 80061ce:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80061d0:	2800      	cmp	r0, #0
 80061d2:	bf08      	it	eq
 80061d4:	4618      	moveq	r0, r3
 80061d6:	30f0      	adds	r0, #240	; 0xf0
 80061d8:	4770      	bx	lr
 80061da:	bf00      	nop
 80061dc:	20000018 	.word	0x20000018
 80061e0:	20000448 	.word	0x20000448

080061e4 <__retarget_lock_init_recursive>:
 80061e4:	4770      	bx	lr
 80061e6:	bf00      	nop

080061e8 <__retarget_lock_close_recursive>:
 80061e8:	4770      	bx	lr
 80061ea:	bf00      	nop

080061ec <__retarget_lock_acquire_recursive>:
 80061ec:	4770      	bx	lr
 80061ee:	bf00      	nop

080061f0 <__retarget_lock_release_recursive>:
 80061f0:	4770      	bx	lr
 80061f2:	bf00      	nop

080061f4 <__swhatbuf_r>:
 80061f4:	b570      	push	{r4, r5, r6, lr}
 80061f6:	460c      	mov	r4, r1
 80061f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80061fc:	2900      	cmp	r1, #0
 80061fe:	b096      	sub	sp, #88	; 0x58
 8006200:	4615      	mov	r5, r2
 8006202:	461e      	mov	r6, r3
 8006204:	da0f      	bge.n	8006226 <__swhatbuf_r+0x32>
 8006206:	89a2      	ldrh	r2, [r4, #12]
 8006208:	2300      	movs	r3, #0
 800620a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800620e:	6033      	str	r3, [r6, #0]
 8006210:	d104      	bne.n	800621c <__swhatbuf_r+0x28>
 8006212:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006216:	602b      	str	r3, [r5, #0]
 8006218:	b016      	add	sp, #88	; 0x58
 800621a:	bd70      	pop	{r4, r5, r6, pc}
 800621c:	2240      	movs	r2, #64	; 0x40
 800621e:	4618      	mov	r0, r3
 8006220:	602a      	str	r2, [r5, #0]
 8006222:	b016      	add	sp, #88	; 0x58
 8006224:	bd70      	pop	{r4, r5, r6, pc}
 8006226:	466a      	mov	r2, sp
 8006228:	f000 ffdc 	bl	80071e4 <_fstat_r>
 800622c:	2800      	cmp	r0, #0
 800622e:	dbea      	blt.n	8006206 <__swhatbuf_r+0x12>
 8006230:	9b01      	ldr	r3, [sp, #4]
 8006232:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006236:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800623a:	fab3 f383 	clz	r3, r3
 800623e:	095b      	lsrs	r3, r3, #5
 8006240:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006244:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006248:	6033      	str	r3, [r6, #0]
 800624a:	602a      	str	r2, [r5, #0]
 800624c:	b016      	add	sp, #88	; 0x58
 800624e:	bd70      	pop	{r4, r5, r6, pc}

08006250 <__smakebuf_r>:
 8006250:	898a      	ldrh	r2, [r1, #12]
 8006252:	0792      	lsls	r2, r2, #30
 8006254:	460b      	mov	r3, r1
 8006256:	d506      	bpl.n	8006266 <__smakebuf_r+0x16>
 8006258:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800625c:	2101      	movs	r1, #1
 800625e:	601a      	str	r2, [r3, #0]
 8006260:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006264:	4770      	bx	lr
 8006266:	b570      	push	{r4, r5, r6, lr}
 8006268:	b082      	sub	sp, #8
 800626a:	ab01      	add	r3, sp, #4
 800626c:	466a      	mov	r2, sp
 800626e:	460c      	mov	r4, r1
 8006270:	4605      	mov	r5, r0
 8006272:	f7ff ffbf 	bl	80061f4 <__swhatbuf_r>
 8006276:	9900      	ldr	r1, [sp, #0]
 8006278:	4606      	mov	r6, r0
 800627a:	4628      	mov	r0, r5
 800627c:	f7fc f99c 	bl	80025b8 <_malloc_r>
 8006280:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006284:	b1d8      	cbz	r0, 80062be <__smakebuf_r+0x6e>
 8006286:	4916      	ldr	r1, [pc, #88]	; (80062e0 <__smakebuf_r+0x90>)
 8006288:	63e9      	str	r1, [r5, #60]	; 0x3c
 800628a:	9a01      	ldr	r2, [sp, #4]
 800628c:	9900      	ldr	r1, [sp, #0]
 800628e:	6020      	str	r0, [r4, #0]
 8006290:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006294:	81a3      	strh	r3, [r4, #12]
 8006296:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800629a:	b91a      	cbnz	r2, 80062a4 <__smakebuf_r+0x54>
 800629c:	4333      	orrs	r3, r6
 800629e:	81a3      	strh	r3, [r4, #12]
 80062a0:	b002      	add	sp, #8
 80062a2:	bd70      	pop	{r4, r5, r6, pc}
 80062a4:	4628      	mov	r0, r5
 80062a6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80062aa:	f000 ffaf 	bl	800720c <_isatty_r>
 80062ae:	b1a0      	cbz	r0, 80062da <__smakebuf_r+0x8a>
 80062b0:	89a3      	ldrh	r3, [r4, #12]
 80062b2:	f023 0303 	bic.w	r3, r3, #3
 80062b6:	f043 0301 	orr.w	r3, r3, #1
 80062ba:	b21b      	sxth	r3, r3
 80062bc:	e7ee      	b.n	800629c <__smakebuf_r+0x4c>
 80062be:	059a      	lsls	r2, r3, #22
 80062c0:	d4ee      	bmi.n	80062a0 <__smakebuf_r+0x50>
 80062c2:	f023 0303 	bic.w	r3, r3, #3
 80062c6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80062ca:	f043 0302 	orr.w	r3, r3, #2
 80062ce:	2101      	movs	r1, #1
 80062d0:	81a3      	strh	r3, [r4, #12]
 80062d2:	6022      	str	r2, [r4, #0]
 80062d4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80062d8:	e7e2      	b.n	80062a0 <__smakebuf_r+0x50>
 80062da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80062de:	e7dd      	b.n	800629c <__smakebuf_r+0x4c>
 80062e0:	08005b41 	.word	0x08005b41

080062e4 <memmove>:
 80062e4:	4288      	cmp	r0, r1
 80062e6:	b4f0      	push	{r4, r5, r6, r7}
 80062e8:	d90d      	bls.n	8006306 <memmove+0x22>
 80062ea:	188b      	adds	r3, r1, r2
 80062ec:	4283      	cmp	r3, r0
 80062ee:	d90a      	bls.n	8006306 <memmove+0x22>
 80062f0:	1884      	adds	r4, r0, r2
 80062f2:	b132      	cbz	r2, 8006302 <memmove+0x1e>
 80062f4:	4622      	mov	r2, r4
 80062f6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80062fa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80062fe:	4299      	cmp	r1, r3
 8006300:	d1f9      	bne.n	80062f6 <memmove+0x12>
 8006302:	bcf0      	pop	{r4, r5, r6, r7}
 8006304:	4770      	bx	lr
 8006306:	2a0f      	cmp	r2, #15
 8006308:	d949      	bls.n	800639e <memmove+0xba>
 800630a:	ea40 0301 	orr.w	r3, r0, r1
 800630e:	079b      	lsls	r3, r3, #30
 8006310:	d147      	bne.n	80063a2 <memmove+0xbe>
 8006312:	f1a2 0310 	sub.w	r3, r2, #16
 8006316:	091b      	lsrs	r3, r3, #4
 8006318:	f101 0720 	add.w	r7, r1, #32
 800631c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006320:	f101 0410 	add.w	r4, r1, #16
 8006324:	f100 0510 	add.w	r5, r0, #16
 8006328:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800632c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006330:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006334:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006338:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800633c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006340:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006344:	f845 6c04 	str.w	r6, [r5, #-4]
 8006348:	3410      	adds	r4, #16
 800634a:	42bc      	cmp	r4, r7
 800634c:	f105 0510 	add.w	r5, r5, #16
 8006350:	d1ea      	bne.n	8006328 <memmove+0x44>
 8006352:	3301      	adds	r3, #1
 8006354:	f002 050f 	and.w	r5, r2, #15
 8006358:	011b      	lsls	r3, r3, #4
 800635a:	2d03      	cmp	r5, #3
 800635c:	4419      	add	r1, r3
 800635e:	4403      	add	r3, r0
 8006360:	d921      	bls.n	80063a6 <memmove+0xc2>
 8006362:	1f1f      	subs	r7, r3, #4
 8006364:	460e      	mov	r6, r1
 8006366:	462c      	mov	r4, r5
 8006368:	3c04      	subs	r4, #4
 800636a:	f856 cb04 	ldr.w	ip, [r6], #4
 800636e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006372:	2c03      	cmp	r4, #3
 8006374:	d8f8      	bhi.n	8006368 <memmove+0x84>
 8006376:	1f2c      	subs	r4, r5, #4
 8006378:	f024 0403 	bic.w	r4, r4, #3
 800637c:	3404      	adds	r4, #4
 800637e:	4423      	add	r3, r4
 8006380:	4421      	add	r1, r4
 8006382:	f002 0203 	and.w	r2, r2, #3
 8006386:	2a00      	cmp	r2, #0
 8006388:	d0bb      	beq.n	8006302 <memmove+0x1e>
 800638a:	3b01      	subs	r3, #1
 800638c:	440a      	add	r2, r1
 800638e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006392:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006396:	4291      	cmp	r1, r2
 8006398:	d1f9      	bne.n	800638e <memmove+0xaa>
 800639a:	bcf0      	pop	{r4, r5, r6, r7}
 800639c:	4770      	bx	lr
 800639e:	4603      	mov	r3, r0
 80063a0:	e7f1      	b.n	8006386 <memmove+0xa2>
 80063a2:	4603      	mov	r3, r0
 80063a4:	e7f1      	b.n	800638a <memmove+0xa6>
 80063a6:	462a      	mov	r2, r5
 80063a8:	e7ed      	b.n	8006386 <memmove+0xa2>
 80063aa:	bf00      	nop

080063ac <_Balloc>:
 80063ac:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80063ae:	b570      	push	{r4, r5, r6, lr}
 80063b0:	4605      	mov	r5, r0
 80063b2:	460c      	mov	r4, r1
 80063b4:	b14b      	cbz	r3, 80063ca <_Balloc+0x1e>
 80063b6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80063ba:	b180      	cbz	r0, 80063de <_Balloc+0x32>
 80063bc:	6802      	ldr	r2, [r0, #0]
 80063be:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80063c2:	2300      	movs	r3, #0
 80063c4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80063c8:	bd70      	pop	{r4, r5, r6, pc}
 80063ca:	2221      	movs	r2, #33	; 0x21
 80063cc:	2104      	movs	r1, #4
 80063ce:	f000 fdd9 	bl	8006f84 <_calloc_r>
 80063d2:	4603      	mov	r3, r0
 80063d4:	64e8      	str	r0, [r5, #76]	; 0x4c
 80063d6:	2800      	cmp	r0, #0
 80063d8:	d1ed      	bne.n	80063b6 <_Balloc+0xa>
 80063da:	2000      	movs	r0, #0
 80063dc:	bd70      	pop	{r4, r5, r6, pc}
 80063de:	2101      	movs	r1, #1
 80063e0:	fa01 f604 	lsl.w	r6, r1, r4
 80063e4:	1d72      	adds	r2, r6, #5
 80063e6:	4628      	mov	r0, r5
 80063e8:	0092      	lsls	r2, r2, #2
 80063ea:	f000 fdcb 	bl	8006f84 <_calloc_r>
 80063ee:	2800      	cmp	r0, #0
 80063f0:	d0f3      	beq.n	80063da <_Balloc+0x2e>
 80063f2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80063f6:	e7e4      	b.n	80063c2 <_Balloc+0x16>

080063f8 <_Bfree>:
 80063f8:	b131      	cbz	r1, 8006408 <_Bfree+0x10>
 80063fa:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80063fc:	684a      	ldr	r2, [r1, #4]
 80063fe:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006402:	6008      	str	r0, [r1, #0]
 8006404:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006408:	4770      	bx	lr
 800640a:	bf00      	nop

0800640c <__multadd>:
 800640c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800640e:	690c      	ldr	r4, [r1, #16]
 8006410:	b083      	sub	sp, #12
 8006412:	460d      	mov	r5, r1
 8006414:	4606      	mov	r6, r0
 8006416:	f101 0c14 	add.w	ip, r1, #20
 800641a:	2700      	movs	r7, #0
 800641c:	f8dc 0000 	ldr.w	r0, [ip]
 8006420:	b281      	uxth	r1, r0
 8006422:	fb02 3301 	mla	r3, r2, r1, r3
 8006426:	0c01      	lsrs	r1, r0, #16
 8006428:	0c18      	lsrs	r0, r3, #16
 800642a:	fb02 0101 	mla	r1, r2, r1, r0
 800642e:	b29b      	uxth	r3, r3
 8006430:	3701      	adds	r7, #1
 8006432:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006436:	42bc      	cmp	r4, r7
 8006438:	f84c 3b04 	str.w	r3, [ip], #4
 800643c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006440:	dcec      	bgt.n	800641c <__multadd+0x10>
 8006442:	b13b      	cbz	r3, 8006454 <__multadd+0x48>
 8006444:	68aa      	ldr	r2, [r5, #8]
 8006446:	42a2      	cmp	r2, r4
 8006448:	dd07      	ble.n	800645a <__multadd+0x4e>
 800644a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800644e:	3401      	adds	r4, #1
 8006450:	6153      	str	r3, [r2, #20]
 8006452:	612c      	str	r4, [r5, #16]
 8006454:	4628      	mov	r0, r5
 8006456:	b003      	add	sp, #12
 8006458:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800645a:	6869      	ldr	r1, [r5, #4]
 800645c:	9301      	str	r3, [sp, #4]
 800645e:	3101      	adds	r1, #1
 8006460:	4630      	mov	r0, r6
 8006462:	f7ff ffa3 	bl	80063ac <_Balloc>
 8006466:	692a      	ldr	r2, [r5, #16]
 8006468:	3202      	adds	r2, #2
 800646a:	f105 010c 	add.w	r1, r5, #12
 800646e:	4607      	mov	r7, r0
 8006470:	0092      	lsls	r2, r2, #2
 8006472:	300c      	adds	r0, #12
 8006474:	f7fa fc32 	bl	8000cdc <memcpy>
 8006478:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800647a:	6869      	ldr	r1, [r5, #4]
 800647c:	9b01      	ldr	r3, [sp, #4]
 800647e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006482:	6028      	str	r0, [r5, #0]
 8006484:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006488:	463d      	mov	r5, r7
 800648a:	e7de      	b.n	800644a <__multadd+0x3e>

0800648c <__hi0bits>:
 800648c:	0c02      	lsrs	r2, r0, #16
 800648e:	0412      	lsls	r2, r2, #16
 8006490:	4603      	mov	r3, r0
 8006492:	b9c2      	cbnz	r2, 80064c6 <__hi0bits+0x3a>
 8006494:	0403      	lsls	r3, r0, #16
 8006496:	2010      	movs	r0, #16
 8006498:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800649c:	bf04      	itt	eq
 800649e:	021b      	lsleq	r3, r3, #8
 80064a0:	3008      	addeq	r0, #8
 80064a2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80064a6:	bf04      	itt	eq
 80064a8:	011b      	lsleq	r3, r3, #4
 80064aa:	3004      	addeq	r0, #4
 80064ac:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80064b0:	bf04      	itt	eq
 80064b2:	009b      	lsleq	r3, r3, #2
 80064b4:	3002      	addeq	r0, #2
 80064b6:	2b00      	cmp	r3, #0
 80064b8:	db04      	blt.n	80064c4 <__hi0bits+0x38>
 80064ba:	005b      	lsls	r3, r3, #1
 80064bc:	d501      	bpl.n	80064c2 <__hi0bits+0x36>
 80064be:	3001      	adds	r0, #1
 80064c0:	4770      	bx	lr
 80064c2:	2020      	movs	r0, #32
 80064c4:	4770      	bx	lr
 80064c6:	2000      	movs	r0, #0
 80064c8:	e7e6      	b.n	8006498 <__hi0bits+0xc>
 80064ca:	bf00      	nop

080064cc <__lo0bits>:
 80064cc:	6803      	ldr	r3, [r0, #0]
 80064ce:	f013 0207 	ands.w	r2, r3, #7
 80064d2:	4601      	mov	r1, r0
 80064d4:	d007      	beq.n	80064e6 <__lo0bits+0x1a>
 80064d6:	07da      	lsls	r2, r3, #31
 80064d8:	d41f      	bmi.n	800651a <__lo0bits+0x4e>
 80064da:	0798      	lsls	r0, r3, #30
 80064dc:	d51f      	bpl.n	800651e <__lo0bits+0x52>
 80064de:	085b      	lsrs	r3, r3, #1
 80064e0:	600b      	str	r3, [r1, #0]
 80064e2:	2001      	movs	r0, #1
 80064e4:	4770      	bx	lr
 80064e6:	b298      	uxth	r0, r3
 80064e8:	b1a0      	cbz	r0, 8006514 <__lo0bits+0x48>
 80064ea:	4610      	mov	r0, r2
 80064ec:	f013 0fff 	tst.w	r3, #255	; 0xff
 80064f0:	bf04      	itt	eq
 80064f2:	0a1b      	lsreq	r3, r3, #8
 80064f4:	3008      	addeq	r0, #8
 80064f6:	071a      	lsls	r2, r3, #28
 80064f8:	bf04      	itt	eq
 80064fa:	091b      	lsreq	r3, r3, #4
 80064fc:	3004      	addeq	r0, #4
 80064fe:	079a      	lsls	r2, r3, #30
 8006500:	bf04      	itt	eq
 8006502:	089b      	lsreq	r3, r3, #2
 8006504:	3002      	addeq	r0, #2
 8006506:	07da      	lsls	r2, r3, #31
 8006508:	d402      	bmi.n	8006510 <__lo0bits+0x44>
 800650a:	085b      	lsrs	r3, r3, #1
 800650c:	d00b      	beq.n	8006526 <__lo0bits+0x5a>
 800650e:	3001      	adds	r0, #1
 8006510:	600b      	str	r3, [r1, #0]
 8006512:	4770      	bx	lr
 8006514:	0c1b      	lsrs	r3, r3, #16
 8006516:	2010      	movs	r0, #16
 8006518:	e7e8      	b.n	80064ec <__lo0bits+0x20>
 800651a:	2000      	movs	r0, #0
 800651c:	4770      	bx	lr
 800651e:	089b      	lsrs	r3, r3, #2
 8006520:	600b      	str	r3, [r1, #0]
 8006522:	2002      	movs	r0, #2
 8006524:	4770      	bx	lr
 8006526:	2020      	movs	r0, #32
 8006528:	4770      	bx	lr
 800652a:	bf00      	nop

0800652c <__i2b>:
 800652c:	b510      	push	{r4, lr}
 800652e:	460c      	mov	r4, r1
 8006530:	2101      	movs	r1, #1
 8006532:	f7ff ff3b 	bl	80063ac <_Balloc>
 8006536:	2201      	movs	r2, #1
 8006538:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800653c:	bd10      	pop	{r4, pc}
 800653e:	bf00      	nop

08006540 <__multiply>:
 8006540:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006544:	690e      	ldr	r6, [r1, #16]
 8006546:	6914      	ldr	r4, [r2, #16]
 8006548:	42a6      	cmp	r6, r4
 800654a:	b083      	sub	sp, #12
 800654c:	460f      	mov	r7, r1
 800654e:	4615      	mov	r5, r2
 8006550:	da04      	bge.n	800655c <__multiply+0x1c>
 8006552:	4632      	mov	r2, r6
 8006554:	462f      	mov	r7, r5
 8006556:	4626      	mov	r6, r4
 8006558:	460d      	mov	r5, r1
 800655a:	4614      	mov	r4, r2
 800655c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006560:	eb06 0804 	add.w	r8, r6, r4
 8006564:	4543      	cmp	r3, r8
 8006566:	bfb8      	it	lt
 8006568:	3101      	addlt	r1, #1
 800656a:	f7ff ff1f 	bl	80063ac <_Balloc>
 800656e:	f100 0914 	add.w	r9, r0, #20
 8006572:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006576:	45f1      	cmp	r9, lr
 8006578:	9000      	str	r0, [sp, #0]
 800657a:	d205      	bcs.n	8006588 <__multiply+0x48>
 800657c:	464b      	mov	r3, r9
 800657e:	2200      	movs	r2, #0
 8006580:	f843 2b04 	str.w	r2, [r3], #4
 8006584:	459e      	cmp	lr, r3
 8006586:	d8fb      	bhi.n	8006580 <__multiply+0x40>
 8006588:	f105 0a14 	add.w	sl, r5, #20
 800658c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006590:	f107 0314 	add.w	r3, r7, #20
 8006594:	45a2      	cmp	sl, r4
 8006596:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800659a:	d261      	bcs.n	8006660 <__multiply+0x120>
 800659c:	1b64      	subs	r4, r4, r5
 800659e:	3c15      	subs	r4, #21
 80065a0:	f024 0403 	bic.w	r4, r4, #3
 80065a4:	f8cd e004 	str.w	lr, [sp, #4]
 80065a8:	44a2      	add	sl, r4
 80065aa:	f105 0210 	add.w	r2, r5, #16
 80065ae:	469e      	mov	lr, r3
 80065b0:	e005      	b.n	80065be <__multiply+0x7e>
 80065b2:	0c2d      	lsrs	r5, r5, #16
 80065b4:	d12b      	bne.n	800660e <__multiply+0xce>
 80065b6:	4592      	cmp	sl, r2
 80065b8:	f109 0904 	add.w	r9, r9, #4
 80065bc:	d04e      	beq.n	800665c <__multiply+0x11c>
 80065be:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80065c2:	fa1f fb85 	uxth.w	fp, r5
 80065c6:	f1bb 0f00 	cmp.w	fp, #0
 80065ca:	d0f2      	beq.n	80065b2 <__multiply+0x72>
 80065cc:	4677      	mov	r7, lr
 80065ce:	464e      	mov	r6, r9
 80065d0:	2000      	movs	r0, #0
 80065d2:	e000      	b.n	80065d6 <__multiply+0x96>
 80065d4:	4626      	mov	r6, r4
 80065d6:	f857 1b04 	ldr.w	r1, [r7], #4
 80065da:	6834      	ldr	r4, [r6, #0]
 80065dc:	b28b      	uxth	r3, r1
 80065de:	b2a5      	uxth	r5, r4
 80065e0:	0c09      	lsrs	r1, r1, #16
 80065e2:	0c24      	lsrs	r4, r4, #16
 80065e4:	fb0b 5303 	mla	r3, fp, r3, r5
 80065e8:	4403      	add	r3, r0
 80065ea:	fb0b 4001 	mla	r0, fp, r1, r4
 80065ee:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80065f2:	4634      	mov	r4, r6
 80065f4:	b29b      	uxth	r3, r3
 80065f6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80065fa:	45bc      	cmp	ip, r7
 80065fc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006600:	f844 3b04 	str.w	r3, [r4], #4
 8006604:	d8e6      	bhi.n	80065d4 <__multiply+0x94>
 8006606:	6070      	str	r0, [r6, #4]
 8006608:	6815      	ldr	r5, [r2, #0]
 800660a:	0c2d      	lsrs	r5, r5, #16
 800660c:	d0d3      	beq.n	80065b6 <__multiply+0x76>
 800660e:	f8d9 3000 	ldr.w	r3, [r9]
 8006612:	4676      	mov	r6, lr
 8006614:	4618      	mov	r0, r3
 8006616:	46cb      	mov	fp, r9
 8006618:	2100      	movs	r1, #0
 800661a:	e000      	b.n	800661e <__multiply+0xde>
 800661c:	46a3      	mov	fp, r4
 800661e:	8834      	ldrh	r4, [r6, #0]
 8006620:	0c00      	lsrs	r0, r0, #16
 8006622:	fb05 0004 	mla	r0, r5, r4, r0
 8006626:	4401      	add	r1, r0
 8006628:	b29b      	uxth	r3, r3
 800662a:	465c      	mov	r4, fp
 800662c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006630:	f844 3b04 	str.w	r3, [r4], #4
 8006634:	f856 3b04 	ldr.w	r3, [r6], #4
 8006638:	f8db 0004 	ldr.w	r0, [fp, #4]
 800663c:	0c1b      	lsrs	r3, r3, #16
 800663e:	b287      	uxth	r7, r0
 8006640:	fb05 7303 	mla	r3, r5, r3, r7
 8006644:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006648:	45b4      	cmp	ip, r6
 800664a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800664e:	d8e5      	bhi.n	800661c <__multiply+0xdc>
 8006650:	4592      	cmp	sl, r2
 8006652:	f8cb 3004 	str.w	r3, [fp, #4]
 8006656:	f109 0904 	add.w	r9, r9, #4
 800665a:	d1b0      	bne.n	80065be <__multiply+0x7e>
 800665c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006660:	f1b8 0f00 	cmp.w	r8, #0
 8006664:	dd0b      	ble.n	800667e <__multiply+0x13e>
 8006666:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800666a:	f1ae 0e04 	sub.w	lr, lr, #4
 800666e:	b11b      	cbz	r3, 8006678 <__multiply+0x138>
 8006670:	e005      	b.n	800667e <__multiply+0x13e>
 8006672:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006676:	b913      	cbnz	r3, 800667e <__multiply+0x13e>
 8006678:	f1b8 0801 	subs.w	r8, r8, #1
 800667c:	d1f9      	bne.n	8006672 <__multiply+0x132>
 800667e:	9800      	ldr	r0, [sp, #0]
 8006680:	f8c0 8010 	str.w	r8, [r0, #16]
 8006684:	b003      	add	sp, #12
 8006686:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800668a:	bf00      	nop

0800668c <__pow5mult>:
 800668c:	f012 0303 	ands.w	r3, r2, #3
 8006690:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006694:	4614      	mov	r4, r2
 8006696:	4607      	mov	r7, r0
 8006698:	d12e      	bne.n	80066f8 <__pow5mult+0x6c>
 800669a:	460d      	mov	r5, r1
 800669c:	10a4      	asrs	r4, r4, #2
 800669e:	d01c      	beq.n	80066da <__pow5mult+0x4e>
 80066a0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80066a2:	b396      	cbz	r6, 800670a <__pow5mult+0x7e>
 80066a4:	07e3      	lsls	r3, r4, #31
 80066a6:	f04f 0800 	mov.w	r8, #0
 80066aa:	d406      	bmi.n	80066ba <__pow5mult+0x2e>
 80066ac:	1064      	asrs	r4, r4, #1
 80066ae:	d014      	beq.n	80066da <__pow5mult+0x4e>
 80066b0:	6830      	ldr	r0, [r6, #0]
 80066b2:	b1a8      	cbz	r0, 80066e0 <__pow5mult+0x54>
 80066b4:	4606      	mov	r6, r0
 80066b6:	07e3      	lsls	r3, r4, #31
 80066b8:	d5f8      	bpl.n	80066ac <__pow5mult+0x20>
 80066ba:	4632      	mov	r2, r6
 80066bc:	4629      	mov	r1, r5
 80066be:	4638      	mov	r0, r7
 80066c0:	f7ff ff3e 	bl	8006540 <__multiply>
 80066c4:	b1b5      	cbz	r5, 80066f4 <__pow5mult+0x68>
 80066c6:	686a      	ldr	r2, [r5, #4]
 80066c8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80066ca:	1064      	asrs	r4, r4, #1
 80066cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80066d0:	6029      	str	r1, [r5, #0]
 80066d2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80066d6:	4605      	mov	r5, r0
 80066d8:	d1ea      	bne.n	80066b0 <__pow5mult+0x24>
 80066da:	4628      	mov	r0, r5
 80066dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80066e0:	4632      	mov	r2, r6
 80066e2:	4631      	mov	r1, r6
 80066e4:	4638      	mov	r0, r7
 80066e6:	f7ff ff2b 	bl	8006540 <__multiply>
 80066ea:	6030      	str	r0, [r6, #0]
 80066ec:	f8c0 8000 	str.w	r8, [r0]
 80066f0:	4606      	mov	r6, r0
 80066f2:	e7e0      	b.n	80066b6 <__pow5mult+0x2a>
 80066f4:	4605      	mov	r5, r0
 80066f6:	e7d9      	b.n	80066ac <__pow5mult+0x20>
 80066f8:	3b01      	subs	r3, #1
 80066fa:	4a0b      	ldr	r2, [pc, #44]	; (8006728 <__pow5mult+0x9c>)
 80066fc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006700:	2300      	movs	r3, #0
 8006702:	f7ff fe83 	bl	800640c <__multadd>
 8006706:	4605      	mov	r5, r0
 8006708:	e7c8      	b.n	800669c <__pow5mult+0x10>
 800670a:	2101      	movs	r1, #1
 800670c:	4638      	mov	r0, r7
 800670e:	f7ff fe4d 	bl	80063ac <_Balloc>
 8006712:	f240 2371 	movw	r3, #625	; 0x271
 8006716:	6143      	str	r3, [r0, #20]
 8006718:	2201      	movs	r2, #1
 800671a:	2300      	movs	r3, #0
 800671c:	6102      	str	r2, [r0, #16]
 800671e:	4606      	mov	r6, r0
 8006720:	64b8      	str	r0, [r7, #72]	; 0x48
 8006722:	6003      	str	r3, [r0, #0]
 8006724:	e7be      	b.n	80066a4 <__pow5mult+0x18>
 8006726:	bf00      	nop
 8006728:	08007778 	.word	0x08007778

0800672c <__lshift>:
 800672c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006730:	4691      	mov	r9, r2
 8006732:	690a      	ldr	r2, [r1, #16]
 8006734:	460e      	mov	r6, r1
 8006736:	ea4f 1469 	mov.w	r4, r9, asr #5
 800673a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800673e:	eb04 0802 	add.w	r8, r4, r2
 8006742:	f108 0501 	add.w	r5, r8, #1
 8006746:	429d      	cmp	r5, r3
 8006748:	4607      	mov	r7, r0
 800674a:	dd04      	ble.n	8006756 <__lshift+0x2a>
 800674c:	005b      	lsls	r3, r3, #1
 800674e:	429d      	cmp	r5, r3
 8006750:	f101 0101 	add.w	r1, r1, #1
 8006754:	dcfa      	bgt.n	800674c <__lshift+0x20>
 8006756:	4638      	mov	r0, r7
 8006758:	f7ff fe28 	bl	80063ac <_Balloc>
 800675c:	2c00      	cmp	r4, #0
 800675e:	f100 0314 	add.w	r3, r0, #20
 8006762:	dd37      	ble.n	80067d4 <__lshift+0xa8>
 8006764:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006768:	2200      	movs	r2, #0
 800676a:	f843 2b04 	str.w	r2, [r3], #4
 800676e:	428b      	cmp	r3, r1
 8006770:	d1fb      	bne.n	800676a <__lshift+0x3e>
 8006772:	6934      	ldr	r4, [r6, #16]
 8006774:	f106 0314 	add.w	r3, r6, #20
 8006778:	f019 091f 	ands.w	r9, r9, #31
 800677c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006780:	d020      	beq.n	80067c4 <__lshift+0x98>
 8006782:	f1c9 0e20 	rsb	lr, r9, #32
 8006786:	2200      	movs	r2, #0
 8006788:	e000      	b.n	800678c <__lshift+0x60>
 800678a:	4651      	mov	r1, sl
 800678c:	681c      	ldr	r4, [r3, #0]
 800678e:	468a      	mov	sl, r1
 8006790:	fa04 f409 	lsl.w	r4, r4, r9
 8006794:	4314      	orrs	r4, r2
 8006796:	f84a 4b04 	str.w	r4, [sl], #4
 800679a:	f853 2b04 	ldr.w	r2, [r3], #4
 800679e:	4563      	cmp	r3, ip
 80067a0:	fa22 f20e 	lsr.w	r2, r2, lr
 80067a4:	d3f1      	bcc.n	800678a <__lshift+0x5e>
 80067a6:	604a      	str	r2, [r1, #4]
 80067a8:	b10a      	cbz	r2, 80067ae <__lshift+0x82>
 80067aa:	f108 0502 	add.w	r5, r8, #2
 80067ae:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80067b0:	6872      	ldr	r2, [r6, #4]
 80067b2:	3d01      	subs	r5, #1
 80067b4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80067b8:	6105      	str	r5, [r0, #16]
 80067ba:	6031      	str	r1, [r6, #0]
 80067bc:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80067c0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80067c4:	3904      	subs	r1, #4
 80067c6:	f853 2b04 	ldr.w	r2, [r3], #4
 80067ca:	f841 2f04 	str.w	r2, [r1, #4]!
 80067ce:	459c      	cmp	ip, r3
 80067d0:	d8f9      	bhi.n	80067c6 <__lshift+0x9a>
 80067d2:	e7ec      	b.n	80067ae <__lshift+0x82>
 80067d4:	4619      	mov	r1, r3
 80067d6:	e7cc      	b.n	8006772 <__lshift+0x46>

080067d8 <__mcmp>:
 80067d8:	b430      	push	{r4, r5}
 80067da:	690b      	ldr	r3, [r1, #16]
 80067dc:	4605      	mov	r5, r0
 80067de:	6900      	ldr	r0, [r0, #16]
 80067e0:	1ac0      	subs	r0, r0, r3
 80067e2:	d10f      	bne.n	8006804 <__mcmp+0x2c>
 80067e4:	009b      	lsls	r3, r3, #2
 80067e6:	3514      	adds	r5, #20
 80067e8:	3114      	adds	r1, #20
 80067ea:	4419      	add	r1, r3
 80067ec:	442b      	add	r3, r5
 80067ee:	e001      	b.n	80067f4 <__mcmp+0x1c>
 80067f0:	429d      	cmp	r5, r3
 80067f2:	d207      	bcs.n	8006804 <__mcmp+0x2c>
 80067f4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80067f8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80067fc:	4294      	cmp	r4, r2
 80067fe:	d0f7      	beq.n	80067f0 <__mcmp+0x18>
 8006800:	d302      	bcc.n	8006808 <__mcmp+0x30>
 8006802:	2001      	movs	r0, #1
 8006804:	bc30      	pop	{r4, r5}
 8006806:	4770      	bx	lr
 8006808:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800680c:	e7fa      	b.n	8006804 <__mcmp+0x2c>
 800680e:	bf00      	nop

08006810 <__mdiff>:
 8006810:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006814:	6913      	ldr	r3, [r2, #16]
 8006816:	690d      	ldr	r5, [r1, #16]
 8006818:	1aed      	subs	r5, r5, r3
 800681a:	2d00      	cmp	r5, #0
 800681c:	460e      	mov	r6, r1
 800681e:	4690      	mov	r8, r2
 8006820:	f101 0414 	add.w	r4, r1, #20
 8006824:	f102 0714 	add.w	r7, r2, #20
 8006828:	d114      	bne.n	8006854 <__mdiff+0x44>
 800682a:	009b      	lsls	r3, r3, #2
 800682c:	18e2      	adds	r2, r4, r3
 800682e:	443b      	add	r3, r7
 8006830:	e001      	b.n	8006836 <__mdiff+0x26>
 8006832:	42a2      	cmp	r2, r4
 8006834:	d959      	bls.n	80068ea <__mdiff+0xda>
 8006836:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800683a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800683e:	458c      	cmp	ip, r1
 8006840:	d0f7      	beq.n	8006832 <__mdiff+0x22>
 8006842:	d209      	bcs.n	8006858 <__mdiff+0x48>
 8006844:	4622      	mov	r2, r4
 8006846:	4633      	mov	r3, r6
 8006848:	463c      	mov	r4, r7
 800684a:	4646      	mov	r6, r8
 800684c:	4617      	mov	r7, r2
 800684e:	4698      	mov	r8, r3
 8006850:	2501      	movs	r5, #1
 8006852:	e001      	b.n	8006858 <__mdiff+0x48>
 8006854:	dbf6      	blt.n	8006844 <__mdiff+0x34>
 8006856:	2500      	movs	r5, #0
 8006858:	6871      	ldr	r1, [r6, #4]
 800685a:	f7ff fda7 	bl	80063ac <_Balloc>
 800685e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006862:	6936      	ldr	r6, [r6, #16]
 8006864:	60c5      	str	r5, [r0, #12]
 8006866:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800686a:	46bc      	mov	ip, r7
 800686c:	f100 0514 	add.w	r5, r0, #20
 8006870:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006874:	2300      	movs	r3, #0
 8006876:	f85c 1b04 	ldr.w	r1, [ip], #4
 800687a:	f854 8b04 	ldr.w	r8, [r4], #4
 800687e:	b28a      	uxth	r2, r1
 8006880:	fa13 f388 	uxtah	r3, r3, r8
 8006884:	0c09      	lsrs	r1, r1, #16
 8006886:	1a9a      	subs	r2, r3, r2
 8006888:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800688c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006890:	b292      	uxth	r2, r2
 8006892:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006896:	45e6      	cmp	lr, ip
 8006898:	f845 2b04 	str.w	r2, [r5], #4
 800689c:	ea4f 4323 	mov.w	r3, r3, asr #16
 80068a0:	d8e9      	bhi.n	8006876 <__mdiff+0x66>
 80068a2:	42a7      	cmp	r7, r4
 80068a4:	d917      	bls.n	80068d6 <__mdiff+0xc6>
 80068a6:	46ae      	mov	lr, r5
 80068a8:	46a4      	mov	ip, r4
 80068aa:	f85c 2b04 	ldr.w	r2, [ip], #4
 80068ae:	fa13 f382 	uxtah	r3, r3, r2
 80068b2:	1419      	asrs	r1, r3, #16
 80068b4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80068b8:	b29b      	uxth	r3, r3
 80068ba:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80068be:	4567      	cmp	r7, ip
 80068c0:	f84e 2b04 	str.w	r2, [lr], #4
 80068c4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80068c8:	d8ef      	bhi.n	80068aa <__mdiff+0x9a>
 80068ca:	43e4      	mvns	r4, r4
 80068cc:	4427      	add	r7, r4
 80068ce:	f027 0703 	bic.w	r7, r7, #3
 80068d2:	3704      	adds	r7, #4
 80068d4:	443d      	add	r5, r7
 80068d6:	3d04      	subs	r5, #4
 80068d8:	b922      	cbnz	r2, 80068e4 <__mdiff+0xd4>
 80068da:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80068de:	3e01      	subs	r6, #1
 80068e0:	2b00      	cmp	r3, #0
 80068e2:	d0fa      	beq.n	80068da <__mdiff+0xca>
 80068e4:	6106      	str	r6, [r0, #16]
 80068e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80068ea:	2100      	movs	r1, #0
 80068ec:	f7ff fd5e 	bl	80063ac <_Balloc>
 80068f0:	2201      	movs	r2, #1
 80068f2:	2300      	movs	r3, #0
 80068f4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80068f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080068fc <__d2b>:
 80068fc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006900:	460f      	mov	r7, r1
 8006902:	b083      	sub	sp, #12
 8006904:	2101      	movs	r1, #1
 8006906:	ec55 4b10 	vmov	r4, r5, d0
 800690a:	4616      	mov	r6, r2
 800690c:	f7ff fd4e 	bl	80063ac <_Balloc>
 8006910:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006914:	4681      	mov	r9, r0
 8006916:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800691a:	f1b8 0f00 	cmp.w	r8, #0
 800691e:	d001      	beq.n	8006924 <__d2b+0x28>
 8006920:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006924:	2c00      	cmp	r4, #0
 8006926:	9301      	str	r3, [sp, #4]
 8006928:	d024      	beq.n	8006974 <__d2b+0x78>
 800692a:	a802      	add	r0, sp, #8
 800692c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006930:	f7ff fdcc 	bl	80064cc <__lo0bits>
 8006934:	2800      	cmp	r0, #0
 8006936:	d136      	bne.n	80069a6 <__d2b+0xaa>
 8006938:	e9dd 2300 	ldrd	r2, r3, [sp]
 800693c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006940:	2b00      	cmp	r3, #0
 8006942:	bf0c      	ite	eq
 8006944:	2101      	moveq	r1, #1
 8006946:	2102      	movne	r1, #2
 8006948:	f8c9 3018 	str.w	r3, [r9, #24]
 800694c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006950:	f1b8 0f00 	cmp.w	r8, #0
 8006954:	d11b      	bne.n	800698e <__d2b+0x92>
 8006956:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800695a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800695e:	6038      	str	r0, [r7, #0]
 8006960:	6918      	ldr	r0, [r3, #16]
 8006962:	f7ff fd93 	bl	800648c <__hi0bits>
 8006966:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800696a:	6030      	str	r0, [r6, #0]
 800696c:	4648      	mov	r0, r9
 800696e:	b003      	add	sp, #12
 8006970:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006974:	a801      	add	r0, sp, #4
 8006976:	f7ff fda9 	bl	80064cc <__lo0bits>
 800697a:	9b01      	ldr	r3, [sp, #4]
 800697c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006980:	2101      	movs	r1, #1
 8006982:	3020      	adds	r0, #32
 8006984:	f8c9 1010 	str.w	r1, [r9, #16]
 8006988:	f1b8 0f00 	cmp.w	r8, #0
 800698c:	d0e3      	beq.n	8006956 <__d2b+0x5a>
 800698e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006992:	eb08 0300 	add.w	r3, r8, r0
 8006996:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800699a:	603b      	str	r3, [r7, #0]
 800699c:	6030      	str	r0, [r6, #0]
 800699e:	4648      	mov	r0, r9
 80069a0:	b003      	add	sp, #12
 80069a2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80069a6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80069aa:	f1c0 0220 	rsb	r2, r0, #32
 80069ae:	fa03 f202 	lsl.w	r2, r3, r2
 80069b2:	430a      	orrs	r2, r1
 80069b4:	40c3      	lsrs	r3, r0
 80069b6:	9301      	str	r3, [sp, #4]
 80069b8:	f8c9 2014 	str.w	r2, [r9, #20]
 80069bc:	e7c0      	b.n	8006940 <__d2b+0x44>
 80069be:	bf00      	nop

080069c0 <_realloc_r>:
 80069c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069c4:	4692      	mov	sl, r2
 80069c6:	b083      	sub	sp, #12
 80069c8:	2900      	cmp	r1, #0
 80069ca:	f000 80a1 	beq.w	8006b10 <_realloc_r+0x150>
 80069ce:	460d      	mov	r5, r1
 80069d0:	4680      	mov	r8, r0
 80069d2:	f10a 040b 	add.w	r4, sl, #11
 80069d6:	f7fc f8f3 	bl	8002bc0 <__malloc_lock>
 80069da:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80069de:	2c16      	cmp	r4, #22
 80069e0:	f022 0603 	bic.w	r6, r2, #3
 80069e4:	f1a5 0708 	sub.w	r7, r5, #8
 80069e8:	d83e      	bhi.n	8006a68 <_realloc_r+0xa8>
 80069ea:	2410      	movs	r4, #16
 80069ec:	4621      	mov	r1, r4
 80069ee:	45a2      	cmp	sl, r4
 80069f0:	d83f      	bhi.n	8006a72 <_realloc_r+0xb2>
 80069f2:	428e      	cmp	r6, r1
 80069f4:	eb07 0906 	add.w	r9, r7, r6
 80069f8:	da74      	bge.n	8006ae4 <_realloc_r+0x124>
 80069fa:	4bc7      	ldr	r3, [pc, #796]	; (8006d18 <_realloc_r+0x358>)
 80069fc:	6898      	ldr	r0, [r3, #8]
 80069fe:	4548      	cmp	r0, r9
 8006a00:	f000 80aa 	beq.w	8006b58 <_realloc_r+0x198>
 8006a04:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006a08:	f020 0301 	bic.w	r3, r0, #1
 8006a0c:	444b      	add	r3, r9
 8006a0e:	685b      	ldr	r3, [r3, #4]
 8006a10:	07db      	lsls	r3, r3, #31
 8006a12:	f140 8083 	bpl.w	8006b1c <_realloc_r+0x15c>
 8006a16:	07d2      	lsls	r2, r2, #31
 8006a18:	d534      	bpl.n	8006a84 <_realloc_r+0xc4>
 8006a1a:	4651      	mov	r1, sl
 8006a1c:	4640      	mov	r0, r8
 8006a1e:	f7fb fdcb 	bl	80025b8 <_malloc_r>
 8006a22:	4682      	mov	sl, r0
 8006a24:	b1e0      	cbz	r0, 8006a60 <_realloc_r+0xa0>
 8006a26:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a2a:	f023 0301 	bic.w	r3, r3, #1
 8006a2e:	443b      	add	r3, r7
 8006a30:	f1a0 0208 	sub.w	r2, r0, #8
 8006a34:	4293      	cmp	r3, r2
 8006a36:	f000 80f9 	beq.w	8006c2c <_realloc_r+0x26c>
 8006a3a:	1f32      	subs	r2, r6, #4
 8006a3c:	2a24      	cmp	r2, #36	; 0x24
 8006a3e:	f200 8107 	bhi.w	8006c50 <_realloc_r+0x290>
 8006a42:	2a13      	cmp	r2, #19
 8006a44:	6829      	ldr	r1, [r5, #0]
 8006a46:	f200 80e6 	bhi.w	8006c16 <_realloc_r+0x256>
 8006a4a:	4603      	mov	r3, r0
 8006a4c:	462a      	mov	r2, r5
 8006a4e:	6019      	str	r1, [r3, #0]
 8006a50:	6851      	ldr	r1, [r2, #4]
 8006a52:	6059      	str	r1, [r3, #4]
 8006a54:	6892      	ldr	r2, [r2, #8]
 8006a56:	609a      	str	r2, [r3, #8]
 8006a58:	4629      	mov	r1, r5
 8006a5a:	4640      	mov	r0, r8
 8006a5c:	f7ff f918 	bl	8005c90 <_free_r>
 8006a60:	4640      	mov	r0, r8
 8006a62:	f7fc f8b3 	bl	8002bcc <__malloc_unlock>
 8006a66:	e04f      	b.n	8006b08 <_realloc_r+0x148>
 8006a68:	f024 0407 	bic.w	r4, r4, #7
 8006a6c:	2c00      	cmp	r4, #0
 8006a6e:	4621      	mov	r1, r4
 8006a70:	dabd      	bge.n	80069ee <_realloc_r+0x2e>
 8006a72:	f04f 0a00 	mov.w	sl, #0
 8006a76:	230c      	movs	r3, #12
 8006a78:	4650      	mov	r0, sl
 8006a7a:	f8c8 3000 	str.w	r3, [r8]
 8006a7e:	b003      	add	sp, #12
 8006a80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a84:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a88:	eba7 0b03 	sub.w	fp, r7, r3
 8006a8c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a90:	f022 0203 	bic.w	r2, r2, #3
 8006a94:	18b3      	adds	r3, r6, r2
 8006a96:	428b      	cmp	r3, r1
 8006a98:	dbbf      	blt.n	8006a1a <_realloc_r+0x5a>
 8006a9a:	46da      	mov	sl, fp
 8006a9c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006aa0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006aa4:	1f32      	subs	r2, r6, #4
 8006aa6:	2a24      	cmp	r2, #36	; 0x24
 8006aa8:	60c1      	str	r1, [r0, #12]
 8006aaa:	eb0b 0903 	add.w	r9, fp, r3
 8006aae:	6088      	str	r0, [r1, #8]
 8006ab0:	f200 80c6 	bhi.w	8006c40 <_realloc_r+0x280>
 8006ab4:	2a13      	cmp	r2, #19
 8006ab6:	6829      	ldr	r1, [r5, #0]
 8006ab8:	f240 80c0 	bls.w	8006c3c <_realloc_r+0x27c>
 8006abc:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ac0:	6869      	ldr	r1, [r5, #4]
 8006ac2:	f8cb 100c 	str.w	r1, [fp, #12]
 8006ac6:	2a1b      	cmp	r2, #27
 8006ac8:	68a9      	ldr	r1, [r5, #8]
 8006aca:	f200 80d8 	bhi.w	8006c7e <_realloc_r+0x2be>
 8006ace:	f10b 0210 	add.w	r2, fp, #16
 8006ad2:	3508      	adds	r5, #8
 8006ad4:	6011      	str	r1, [r2, #0]
 8006ad6:	6869      	ldr	r1, [r5, #4]
 8006ad8:	6051      	str	r1, [r2, #4]
 8006ada:	68a9      	ldr	r1, [r5, #8]
 8006adc:	6091      	str	r1, [r2, #8]
 8006ade:	461e      	mov	r6, r3
 8006ae0:	465f      	mov	r7, fp
 8006ae2:	4655      	mov	r5, sl
 8006ae4:	687b      	ldr	r3, [r7, #4]
 8006ae6:	1b32      	subs	r2, r6, r4
 8006ae8:	2a0f      	cmp	r2, #15
 8006aea:	f003 0301 	and.w	r3, r3, #1
 8006aee:	d822      	bhi.n	8006b36 <_realloc_r+0x176>
 8006af0:	4333      	orrs	r3, r6
 8006af2:	607b      	str	r3, [r7, #4]
 8006af4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006af8:	f043 0301 	orr.w	r3, r3, #1
 8006afc:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b00:	4640      	mov	r0, r8
 8006b02:	f7fc f863 	bl	8002bcc <__malloc_unlock>
 8006b06:	46aa      	mov	sl, r5
 8006b08:	4650      	mov	r0, sl
 8006b0a:	b003      	add	sp, #12
 8006b0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b10:	4611      	mov	r1, r2
 8006b12:	b003      	add	sp, #12
 8006b14:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b18:	f7fb bd4e 	b.w	80025b8 <_malloc_r>
 8006b1c:	f020 0003 	bic.w	r0, r0, #3
 8006b20:	1833      	adds	r3, r6, r0
 8006b22:	428b      	cmp	r3, r1
 8006b24:	db61      	blt.n	8006bea <_realloc_r+0x22a>
 8006b26:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b2a:	461e      	mov	r6, r3
 8006b2c:	60ca      	str	r2, [r1, #12]
 8006b2e:	eb07 0903 	add.w	r9, r7, r3
 8006b32:	6091      	str	r1, [r2, #8]
 8006b34:	e7d6      	b.n	8006ae4 <_realloc_r+0x124>
 8006b36:	1939      	adds	r1, r7, r4
 8006b38:	4323      	orrs	r3, r4
 8006b3a:	f042 0201 	orr.w	r2, r2, #1
 8006b3e:	607b      	str	r3, [r7, #4]
 8006b40:	604a      	str	r2, [r1, #4]
 8006b42:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b46:	f043 0301 	orr.w	r3, r3, #1
 8006b4a:	3108      	adds	r1, #8
 8006b4c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b50:	4640      	mov	r0, r8
 8006b52:	f7ff f89d 	bl	8005c90 <_free_r>
 8006b56:	e7d3      	b.n	8006b00 <_realloc_r+0x140>
 8006b58:	6840      	ldr	r0, [r0, #4]
 8006b5a:	f020 0903 	bic.w	r9, r0, #3
 8006b5e:	44b1      	add	r9, r6
 8006b60:	f104 0010 	add.w	r0, r4, #16
 8006b64:	4581      	cmp	r9, r0
 8006b66:	da77      	bge.n	8006c58 <_realloc_r+0x298>
 8006b68:	07d2      	lsls	r2, r2, #31
 8006b6a:	f53f af56 	bmi.w	8006a1a <_realloc_r+0x5a>
 8006b6e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006b72:	eba7 0b02 	sub.w	fp, r7, r2
 8006b76:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b7a:	f022 0203 	bic.w	r2, r2, #3
 8006b7e:	4491      	add	r9, r2
 8006b80:	4548      	cmp	r0, r9
 8006b82:	dc87      	bgt.n	8006a94 <_realloc_r+0xd4>
 8006b84:	46da      	mov	sl, fp
 8006b86:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b8a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b8e:	1f32      	subs	r2, r6, #4
 8006b90:	2a24      	cmp	r2, #36	; 0x24
 8006b92:	60c1      	str	r1, [r0, #12]
 8006b94:	6088      	str	r0, [r1, #8]
 8006b96:	f200 80a1 	bhi.w	8006cdc <_realloc_r+0x31c>
 8006b9a:	2a13      	cmp	r2, #19
 8006b9c:	6829      	ldr	r1, [r5, #0]
 8006b9e:	f240 809b 	bls.w	8006cd8 <_realloc_r+0x318>
 8006ba2:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ba6:	6869      	ldr	r1, [r5, #4]
 8006ba8:	f8cb 100c 	str.w	r1, [fp, #12]
 8006bac:	2a1b      	cmp	r2, #27
 8006bae:	68a9      	ldr	r1, [r5, #8]
 8006bb0:	f200 809b 	bhi.w	8006cea <_realloc_r+0x32a>
 8006bb4:	f10b 0210 	add.w	r2, fp, #16
 8006bb8:	3508      	adds	r5, #8
 8006bba:	6011      	str	r1, [r2, #0]
 8006bbc:	6869      	ldr	r1, [r5, #4]
 8006bbe:	6051      	str	r1, [r2, #4]
 8006bc0:	68a9      	ldr	r1, [r5, #8]
 8006bc2:	6091      	str	r1, [r2, #8]
 8006bc4:	eb0b 0104 	add.w	r1, fp, r4
 8006bc8:	eba9 0204 	sub.w	r2, r9, r4
 8006bcc:	f042 0201 	orr.w	r2, r2, #1
 8006bd0:	6099      	str	r1, [r3, #8]
 8006bd2:	604a      	str	r2, [r1, #4]
 8006bd4:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006bd8:	f003 0301 	and.w	r3, r3, #1
 8006bdc:	431c      	orrs	r4, r3
 8006bde:	4640      	mov	r0, r8
 8006be0:	f8cb 4004 	str.w	r4, [fp, #4]
 8006be4:	f7fb fff2 	bl	8002bcc <__malloc_unlock>
 8006be8:	e78e      	b.n	8006b08 <_realloc_r+0x148>
 8006bea:	07d3      	lsls	r3, r2, #31
 8006bec:	f53f af15 	bmi.w	8006a1a <_realloc_r+0x5a>
 8006bf0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006bf4:	eba7 0b03 	sub.w	fp, r7, r3
 8006bf8:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006bfc:	f022 0203 	bic.w	r2, r2, #3
 8006c00:	4410      	add	r0, r2
 8006c02:	1983      	adds	r3, r0, r6
 8006c04:	428b      	cmp	r3, r1
 8006c06:	f6ff af45 	blt.w	8006a94 <_realloc_r+0xd4>
 8006c0a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006c0e:	46da      	mov	sl, fp
 8006c10:	60ca      	str	r2, [r1, #12]
 8006c12:	6091      	str	r1, [r2, #8]
 8006c14:	e742      	b.n	8006a9c <_realloc_r+0xdc>
 8006c16:	6001      	str	r1, [r0, #0]
 8006c18:	686b      	ldr	r3, [r5, #4]
 8006c1a:	6043      	str	r3, [r0, #4]
 8006c1c:	2a1b      	cmp	r2, #27
 8006c1e:	d83a      	bhi.n	8006c96 <_realloc_r+0x2d6>
 8006c20:	f105 0208 	add.w	r2, r5, #8
 8006c24:	f100 0308 	add.w	r3, r0, #8
 8006c28:	68a9      	ldr	r1, [r5, #8]
 8006c2a:	e710      	b.n	8006a4e <_realloc_r+0x8e>
 8006c2c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006c30:	f023 0303 	bic.w	r3, r3, #3
 8006c34:	441e      	add	r6, r3
 8006c36:	eb07 0906 	add.w	r9, r7, r6
 8006c3a:	e753      	b.n	8006ae4 <_realloc_r+0x124>
 8006c3c:	4652      	mov	r2, sl
 8006c3e:	e749      	b.n	8006ad4 <_realloc_r+0x114>
 8006c40:	4629      	mov	r1, r5
 8006c42:	4650      	mov	r0, sl
 8006c44:	461e      	mov	r6, r3
 8006c46:	465f      	mov	r7, fp
 8006c48:	f7ff fb4c 	bl	80062e4 <memmove>
 8006c4c:	4655      	mov	r5, sl
 8006c4e:	e749      	b.n	8006ae4 <_realloc_r+0x124>
 8006c50:	4629      	mov	r1, r5
 8006c52:	f7ff fb47 	bl	80062e4 <memmove>
 8006c56:	e6ff      	b.n	8006a58 <_realloc_r+0x98>
 8006c58:	4427      	add	r7, r4
 8006c5a:	eba9 0904 	sub.w	r9, r9, r4
 8006c5e:	f049 0201 	orr.w	r2, r9, #1
 8006c62:	609f      	str	r7, [r3, #8]
 8006c64:	607a      	str	r2, [r7, #4]
 8006c66:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006c6a:	f003 0301 	and.w	r3, r3, #1
 8006c6e:	431c      	orrs	r4, r3
 8006c70:	4640      	mov	r0, r8
 8006c72:	f845 4c04 	str.w	r4, [r5, #-4]
 8006c76:	f7fb ffa9 	bl	8002bcc <__malloc_unlock>
 8006c7a:	46aa      	mov	sl, r5
 8006c7c:	e744      	b.n	8006b08 <_realloc_r+0x148>
 8006c7e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c82:	68e9      	ldr	r1, [r5, #12]
 8006c84:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c88:	2a24      	cmp	r2, #36	; 0x24
 8006c8a:	d010      	beq.n	8006cae <_realloc_r+0x2ee>
 8006c8c:	6929      	ldr	r1, [r5, #16]
 8006c8e:	f10b 0218 	add.w	r2, fp, #24
 8006c92:	3510      	adds	r5, #16
 8006c94:	e71e      	b.n	8006ad4 <_realloc_r+0x114>
 8006c96:	68ab      	ldr	r3, [r5, #8]
 8006c98:	6083      	str	r3, [r0, #8]
 8006c9a:	68eb      	ldr	r3, [r5, #12]
 8006c9c:	60c3      	str	r3, [r0, #12]
 8006c9e:	2a24      	cmp	r2, #36	; 0x24
 8006ca0:	d010      	beq.n	8006cc4 <_realloc_r+0x304>
 8006ca2:	f105 0210 	add.w	r2, r5, #16
 8006ca6:	f100 0310 	add.w	r3, r0, #16
 8006caa:	6929      	ldr	r1, [r5, #16]
 8006cac:	e6cf      	b.n	8006a4e <_realloc_r+0x8e>
 8006cae:	692a      	ldr	r2, [r5, #16]
 8006cb0:	f8cb 2018 	str.w	r2, [fp, #24]
 8006cb4:	696a      	ldr	r2, [r5, #20]
 8006cb6:	f8cb 201c 	str.w	r2, [fp, #28]
 8006cba:	69a9      	ldr	r1, [r5, #24]
 8006cbc:	f10b 0220 	add.w	r2, fp, #32
 8006cc0:	3518      	adds	r5, #24
 8006cc2:	e707      	b.n	8006ad4 <_realloc_r+0x114>
 8006cc4:	692b      	ldr	r3, [r5, #16]
 8006cc6:	6103      	str	r3, [r0, #16]
 8006cc8:	696b      	ldr	r3, [r5, #20]
 8006cca:	6143      	str	r3, [r0, #20]
 8006ccc:	69a9      	ldr	r1, [r5, #24]
 8006cce:	f105 0218 	add.w	r2, r5, #24
 8006cd2:	f100 0318 	add.w	r3, r0, #24
 8006cd6:	e6ba      	b.n	8006a4e <_realloc_r+0x8e>
 8006cd8:	4652      	mov	r2, sl
 8006cda:	e76e      	b.n	8006bba <_realloc_r+0x1fa>
 8006cdc:	4629      	mov	r1, r5
 8006cde:	4650      	mov	r0, sl
 8006ce0:	9301      	str	r3, [sp, #4]
 8006ce2:	f7ff faff 	bl	80062e4 <memmove>
 8006ce6:	9b01      	ldr	r3, [sp, #4]
 8006ce8:	e76c      	b.n	8006bc4 <_realloc_r+0x204>
 8006cea:	f8cb 1010 	str.w	r1, [fp, #16]
 8006cee:	68e9      	ldr	r1, [r5, #12]
 8006cf0:	f8cb 1014 	str.w	r1, [fp, #20]
 8006cf4:	2a24      	cmp	r2, #36	; 0x24
 8006cf6:	d004      	beq.n	8006d02 <_realloc_r+0x342>
 8006cf8:	6929      	ldr	r1, [r5, #16]
 8006cfa:	f10b 0218 	add.w	r2, fp, #24
 8006cfe:	3510      	adds	r5, #16
 8006d00:	e75b      	b.n	8006bba <_realloc_r+0x1fa>
 8006d02:	692a      	ldr	r2, [r5, #16]
 8006d04:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d08:	696a      	ldr	r2, [r5, #20]
 8006d0a:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d0e:	69a9      	ldr	r1, [r5, #24]
 8006d10:	f10b 0220 	add.w	r2, fp, #32
 8006d14:	3518      	adds	r5, #24
 8006d16:	e750      	b.n	8006bba <_realloc_r+0x1fa>
 8006d18:	200005b4 	.word	0x200005b4

08006d1c <frexp>:
 8006d1c:	ec53 2b10 	vmov	r2, r3, d0
 8006d20:	b570      	push	{r4, r5, r6, lr}
 8006d22:	4e16      	ldr	r6, [pc, #88]	; (8006d7c <frexp+0x60>)
 8006d24:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006d28:	2500      	movs	r5, #0
 8006d2a:	42b1      	cmp	r1, r6
 8006d2c:	4604      	mov	r4, r0
 8006d2e:	6005      	str	r5, [r0, #0]
 8006d30:	dc21      	bgt.n	8006d76 <frexp+0x5a>
 8006d32:	ee10 6a10 	vmov	r6, s0
 8006d36:	430e      	orrs	r6, r1
 8006d38:	d01d      	beq.n	8006d76 <frexp+0x5a>
 8006d3a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006d3e:	4618      	mov	r0, r3
 8006d40:	da0c      	bge.n	8006d5c <frexp+0x40>
 8006d42:	4619      	mov	r1, r3
 8006d44:	2200      	movs	r2, #0
 8006d46:	ee10 0a10 	vmov	r0, s0
 8006d4a:	4b0d      	ldr	r3, [pc, #52]	; (8006d80 <frexp+0x64>)
 8006d4c:	f7f9 fc14 	bl	8000578 <__aeabi_dmul>
 8006d50:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006d54:	4602      	mov	r2, r0
 8006d56:	4608      	mov	r0, r1
 8006d58:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006d5c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006d60:	1509      	asrs	r1, r1, #20
 8006d62:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006d66:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006d6a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006d6e:	4429      	add	r1, r5
 8006d70:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006d74:	6021      	str	r1, [r4, #0]
 8006d76:	ec43 2b10 	vmov	d0, r2, r3
 8006d7a:	bd70      	pop	{r4, r5, r6, pc}
 8006d7c:	7fefffff 	.word	0x7fefffff
 8006d80:	43500000 	.word	0x43500000

08006d84 <__sread>:
 8006d84:	b510      	push	{r4, lr}
 8006d86:	460c      	mov	r4, r1
 8006d88:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d8c:	f000 fa66 	bl	800725c <_read_r>
 8006d90:	2800      	cmp	r0, #0
 8006d92:	db03      	blt.n	8006d9c <__sread+0x18>
 8006d94:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006d96:	4403      	add	r3, r0
 8006d98:	6523      	str	r3, [r4, #80]	; 0x50
 8006d9a:	bd10      	pop	{r4, pc}
 8006d9c:	89a3      	ldrh	r3, [r4, #12]
 8006d9e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006da2:	81a3      	strh	r3, [r4, #12]
 8006da4:	bd10      	pop	{r4, pc}
 8006da6:	bf00      	nop

08006da8 <__swrite>:
 8006da8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006dac:	4616      	mov	r6, r2
 8006dae:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006db2:	461f      	mov	r7, r3
 8006db4:	05d3      	lsls	r3, r2, #23
 8006db6:	460c      	mov	r4, r1
 8006db8:	4605      	mov	r5, r0
 8006dba:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006dbe:	d507      	bpl.n	8006dd0 <__swrite+0x28>
 8006dc0:	2200      	movs	r2, #0
 8006dc2:	2302      	movs	r3, #2
 8006dc4:	f000 fa34 	bl	8007230 <_lseek_r>
 8006dc8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dcc:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006dd0:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006dd4:	81a2      	strh	r2, [r4, #12]
 8006dd6:	463b      	mov	r3, r7
 8006dd8:	4632      	mov	r2, r6
 8006dda:	4628      	mov	r0, r5
 8006ddc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006de0:	f000 b85a 	b.w	8006e98 <_write_r>

08006de4 <__sseek>:
 8006de4:	b510      	push	{r4, lr}
 8006de6:	460c      	mov	r4, r1
 8006de8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006dec:	f000 fa20 	bl	8007230 <_lseek_r>
 8006df0:	89a3      	ldrh	r3, [r4, #12]
 8006df2:	1c42      	adds	r2, r0, #1
 8006df4:	bf0e      	itee	eq
 8006df6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006dfa:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006dfe:	6520      	strne	r0, [r4, #80]	; 0x50
 8006e00:	81a3      	strh	r3, [r4, #12]
 8006e02:	bd10      	pop	{r4, pc}

08006e04 <__sclose>:
 8006e04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e08:	f000 b8f0 	b.w	8006fec <_close_r>

08006e0c <__sprint_r.part.0>:
 8006e0c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e10:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e12:	049c      	lsls	r4, r3, #18
 8006e14:	4692      	mov	sl, r2
 8006e16:	d52d      	bpl.n	8006e74 <__sprint_r.part.0+0x68>
 8006e18:	6893      	ldr	r3, [r2, #8]
 8006e1a:	6812      	ldr	r2, [r2, #0]
 8006e1c:	b343      	cbz	r3, 8006e70 <__sprint_r.part.0+0x64>
 8006e1e:	460e      	mov	r6, r1
 8006e20:	4607      	mov	r7, r0
 8006e22:	f102 0908 	add.w	r9, r2, #8
 8006e26:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006e2a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006e2e:	d015      	beq.n	8006e5c <__sprint_r.part.0+0x50>
 8006e30:	3d04      	subs	r5, #4
 8006e32:	2400      	movs	r4, #0
 8006e34:	e001      	b.n	8006e3a <__sprint_r.part.0+0x2e>
 8006e36:	45a0      	cmp	r8, r4
 8006e38:	d00e      	beq.n	8006e58 <__sprint_r.part.0+0x4c>
 8006e3a:	4632      	mov	r2, r6
 8006e3c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006e40:	4638      	mov	r0, r7
 8006e42:	f000 f99d 	bl	8007180 <_fputwc_r>
 8006e46:	1c43      	adds	r3, r0, #1
 8006e48:	f104 0401 	add.w	r4, r4, #1
 8006e4c:	d1f3      	bne.n	8006e36 <__sprint_r.part.0+0x2a>
 8006e4e:	2300      	movs	r3, #0
 8006e50:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e54:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e58:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006e5c:	f02b 0b03 	bic.w	fp, fp, #3
 8006e60:	eba3 030b 	sub.w	r3, r3, fp
 8006e64:	f8ca 3008 	str.w	r3, [sl, #8]
 8006e68:	f109 0908 	add.w	r9, r9, #8
 8006e6c:	2b00      	cmp	r3, #0
 8006e6e:	d1da      	bne.n	8006e26 <__sprint_r.part.0+0x1a>
 8006e70:	2000      	movs	r0, #0
 8006e72:	e7ec      	b.n	8006e4e <__sprint_r.part.0+0x42>
 8006e74:	f7ff f800 	bl	8005e78 <__sfvwrite_r>
 8006e78:	2300      	movs	r3, #0
 8006e7a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e7e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e82:	bf00      	nop

08006e84 <__sprint_r>:
 8006e84:	6893      	ldr	r3, [r2, #8]
 8006e86:	b10b      	cbz	r3, 8006e8c <__sprint_r+0x8>
 8006e88:	f7ff bfc0 	b.w	8006e0c <__sprint_r.part.0>
 8006e8c:	b410      	push	{r4}
 8006e8e:	4618      	mov	r0, r3
 8006e90:	6053      	str	r3, [r2, #4]
 8006e92:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006e96:	4770      	bx	lr

08006e98 <_write_r>:
 8006e98:	b570      	push	{r4, r5, r6, lr}
 8006e9a:	460d      	mov	r5, r1
 8006e9c:	4c08      	ldr	r4, [pc, #32]	; (8006ec0 <_write_r+0x28>)
 8006e9e:	4611      	mov	r1, r2
 8006ea0:	4606      	mov	r6, r0
 8006ea2:	461a      	mov	r2, r3
 8006ea4:	4628      	mov	r0, r5
 8006ea6:	2300      	movs	r3, #0
 8006ea8:	6023      	str	r3, [r4, #0]
 8006eaa:	f7fb fa9e 	bl	80023ea <_write>
 8006eae:	1c43      	adds	r3, r0, #1
 8006eb0:	d000      	beq.n	8006eb4 <_write_r+0x1c>
 8006eb2:	bd70      	pop	{r4, r5, r6, pc}
 8006eb4:	6823      	ldr	r3, [r4, #0]
 8006eb6:	2b00      	cmp	r3, #0
 8006eb8:	d0fb      	beq.n	8006eb2 <_write_r+0x1a>
 8006eba:	6033      	str	r3, [r6, #0]
 8006ebc:	bd70      	pop	{r4, r5, r6, pc}
 8006ebe:	bf00      	nop
 8006ec0:	20000b28 	.word	0x20000b28

08006ec4 <__register_exitproc>:
 8006ec4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ec8:	4d2b      	ldr	r5, [pc, #172]	; (8006f78 <__register_exitproc+0xb4>)
 8006eca:	4606      	mov	r6, r0
 8006ecc:	6828      	ldr	r0, [r5, #0]
 8006ece:	4698      	mov	r8, r3
 8006ed0:	460f      	mov	r7, r1
 8006ed2:	4691      	mov	r9, r2
 8006ed4:	f7ff f98a 	bl	80061ec <__retarget_lock_acquire_recursive>
 8006ed8:	4b28      	ldr	r3, [pc, #160]	; (8006f7c <__register_exitproc+0xb8>)
 8006eda:	681c      	ldr	r4, [r3, #0]
 8006edc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ee0:	2b00      	cmp	r3, #0
 8006ee2:	d03d      	beq.n	8006f60 <__register_exitproc+0x9c>
 8006ee4:	685a      	ldr	r2, [r3, #4]
 8006ee6:	2a1f      	cmp	r2, #31
 8006ee8:	dc0d      	bgt.n	8006f06 <__register_exitproc+0x42>
 8006eea:	f102 0c01 	add.w	ip, r2, #1
 8006eee:	bb16      	cbnz	r6, 8006f36 <__register_exitproc+0x72>
 8006ef0:	3202      	adds	r2, #2
 8006ef2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006ef6:	6828      	ldr	r0, [r5, #0]
 8006ef8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006efc:	f7ff f978 	bl	80061f0 <__retarget_lock_release_recursive>
 8006f00:	2000      	movs	r0, #0
 8006f02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f06:	4b1e      	ldr	r3, [pc, #120]	; (8006f80 <__register_exitproc+0xbc>)
 8006f08:	b37b      	cbz	r3, 8006f6a <__register_exitproc+0xa6>
 8006f0a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f0e:	f7fb fb43 	bl	8002598 <malloc>
 8006f12:	4603      	mov	r3, r0
 8006f14:	b348      	cbz	r0, 8006f6a <__register_exitproc+0xa6>
 8006f16:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f1a:	2100      	movs	r1, #0
 8006f1c:	e9c0 2100 	strd	r2, r1, [r0]
 8006f20:	f04f 0c01 	mov.w	ip, #1
 8006f24:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006f28:	460a      	mov	r2, r1
 8006f2a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006f2e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006f32:	2e00      	cmp	r6, #0
 8006f34:	d0dc      	beq.n	8006ef0 <__register_exitproc+0x2c>
 8006f36:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006f3a:	2401      	movs	r4, #1
 8006f3c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006f40:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006f44:	4094      	lsls	r4, r2
 8006f46:	4320      	orrs	r0, r4
 8006f48:	2e02      	cmp	r6, #2
 8006f4a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006f4e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006f52:	d1cd      	bne.n	8006ef0 <__register_exitproc+0x2c>
 8006f54:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006f58:	430c      	orrs	r4, r1
 8006f5a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006f5e:	e7c7      	b.n	8006ef0 <__register_exitproc+0x2c>
 8006f60:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006f64:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006f68:	e7bc      	b.n	8006ee4 <__register_exitproc+0x20>
 8006f6a:	6828      	ldr	r0, [r5, #0]
 8006f6c:	f7ff f940 	bl	80061f0 <__retarget_lock_release_recursive>
 8006f70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f74:	e7c5      	b.n	8006f02 <__register_exitproc+0x3e>
 8006f76:	bf00      	nop
 8006f78:	200009c4 	.word	0x200009c4
 8006f7c:	080074f8 	.word	0x080074f8
 8006f80:	08002599 	.word	0x08002599

08006f84 <_calloc_r>:
 8006f84:	b510      	push	{r4, lr}
 8006f86:	fb02 f101 	mul.w	r1, r2, r1
 8006f8a:	f7fb fb15 	bl	80025b8 <_malloc_r>
 8006f8e:	4604      	mov	r4, r0
 8006f90:	b1d8      	cbz	r0, 8006fca <_calloc_r+0x46>
 8006f92:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006f96:	f022 0203 	bic.w	r2, r2, #3
 8006f9a:	3a04      	subs	r2, #4
 8006f9c:	2a24      	cmp	r2, #36	; 0x24
 8006f9e:	d81d      	bhi.n	8006fdc <_calloc_r+0x58>
 8006fa0:	2a13      	cmp	r2, #19
 8006fa2:	d914      	bls.n	8006fce <_calloc_r+0x4a>
 8006fa4:	2300      	movs	r3, #0
 8006fa6:	2a1b      	cmp	r2, #27
 8006fa8:	e9c0 3300 	strd	r3, r3, [r0]
 8006fac:	d91b      	bls.n	8006fe6 <_calloc_r+0x62>
 8006fae:	2a24      	cmp	r2, #36	; 0x24
 8006fb0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006fb4:	bf0a      	itet	eq
 8006fb6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006fba:	f100 0210 	addne.w	r2, r0, #16
 8006fbe:	f100 0218 	addeq.w	r2, r0, #24
 8006fc2:	2300      	movs	r3, #0
 8006fc4:	e9c2 3300 	strd	r3, r3, [r2]
 8006fc8:	6093      	str	r3, [r2, #8]
 8006fca:	4620      	mov	r0, r4
 8006fcc:	bd10      	pop	{r4, pc}
 8006fce:	4602      	mov	r2, r0
 8006fd0:	2300      	movs	r3, #0
 8006fd2:	e9c2 3300 	strd	r3, r3, [r2]
 8006fd6:	6093      	str	r3, [r2, #8]
 8006fd8:	4620      	mov	r0, r4
 8006fda:	bd10      	pop	{r4, pc}
 8006fdc:	2100      	movs	r1, #0
 8006fde:	f7fb fda5 	bl	8002b2c <memset>
 8006fe2:	4620      	mov	r0, r4
 8006fe4:	bd10      	pop	{r4, pc}
 8006fe6:	f100 0208 	add.w	r2, r0, #8
 8006fea:	e7f1      	b.n	8006fd0 <_calloc_r+0x4c>

08006fec <_close_r>:
 8006fec:	b538      	push	{r3, r4, r5, lr}
 8006fee:	4c07      	ldr	r4, [pc, #28]	; (800700c <_close_r+0x20>)
 8006ff0:	2300      	movs	r3, #0
 8006ff2:	4605      	mov	r5, r0
 8006ff4:	4608      	mov	r0, r1
 8006ff6:	6023      	str	r3, [r4, #0]
 8006ff8:	f7fb fa26 	bl	8002448 <_close>
 8006ffc:	1c43      	adds	r3, r0, #1
 8006ffe:	d000      	beq.n	8007002 <_close_r+0x16>
 8007000:	bd38      	pop	{r3, r4, r5, pc}
 8007002:	6823      	ldr	r3, [r4, #0]
 8007004:	2b00      	cmp	r3, #0
 8007006:	d0fb      	beq.n	8007000 <_close_r+0x14>
 8007008:	602b      	str	r3, [r5, #0]
 800700a:	bd38      	pop	{r3, r4, r5, pc}
 800700c:	20000b28 	.word	0x20000b28

08007010 <_fclose_r>:
 8007010:	b570      	push	{r4, r5, r6, lr}
 8007012:	2900      	cmp	r1, #0
 8007014:	d048      	beq.n	80070a8 <_fclose_r+0x98>
 8007016:	4605      	mov	r5, r0
 8007018:	460c      	mov	r4, r1
 800701a:	b110      	cbz	r0, 8007022 <_fclose_r+0x12>
 800701c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800701e:	2b00      	cmp	r3, #0
 8007020:	d048      	beq.n	80070b4 <_fclose_r+0xa4>
 8007022:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007024:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007028:	07d0      	lsls	r0, r2, #31
 800702a:	d440      	bmi.n	80070ae <_fclose_r+0x9e>
 800702c:	0599      	lsls	r1, r3, #22
 800702e:	d530      	bpl.n	8007092 <_fclose_r+0x82>
 8007030:	4621      	mov	r1, r4
 8007032:	4628      	mov	r0, r5
 8007034:	f7fe fc84 	bl	8005940 <__sflush_r>
 8007038:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800703a:	4606      	mov	r6, r0
 800703c:	b133      	cbz	r3, 800704c <_fclose_r+0x3c>
 800703e:	69e1      	ldr	r1, [r4, #28]
 8007040:	4628      	mov	r0, r5
 8007042:	4798      	blx	r3
 8007044:	2800      	cmp	r0, #0
 8007046:	bfb8      	it	lt
 8007048:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800704c:	89a3      	ldrh	r3, [r4, #12]
 800704e:	061a      	lsls	r2, r3, #24
 8007050:	d43c      	bmi.n	80070cc <_fclose_r+0xbc>
 8007052:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007054:	b141      	cbz	r1, 8007068 <_fclose_r+0x58>
 8007056:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800705a:	4299      	cmp	r1, r3
 800705c:	d002      	beq.n	8007064 <_fclose_r+0x54>
 800705e:	4628      	mov	r0, r5
 8007060:	f7fe fe16 	bl	8005c90 <_free_r>
 8007064:	2300      	movs	r3, #0
 8007066:	6323      	str	r3, [r4, #48]	; 0x30
 8007068:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800706a:	b121      	cbz	r1, 8007076 <_fclose_r+0x66>
 800706c:	4628      	mov	r0, r5
 800706e:	f7fe fe0f 	bl	8005c90 <_free_r>
 8007072:	2300      	movs	r3, #0
 8007074:	6463      	str	r3, [r4, #68]	; 0x44
 8007076:	f7fe fd95 	bl	8005ba4 <__sfp_lock_acquire>
 800707a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800707c:	2200      	movs	r2, #0
 800707e:	07db      	lsls	r3, r3, #31
 8007080:	81a2      	strh	r2, [r4, #12]
 8007082:	d51f      	bpl.n	80070c4 <_fclose_r+0xb4>
 8007084:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007086:	f7ff f8af 	bl	80061e8 <__retarget_lock_close_recursive>
 800708a:	f7fe fd91 	bl	8005bb0 <__sfp_lock_release>
 800708e:	4630      	mov	r0, r6
 8007090:	bd70      	pop	{r4, r5, r6, pc}
 8007092:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007094:	f7ff f8aa 	bl	80061ec <__retarget_lock_acquire_recursive>
 8007098:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800709c:	2b00      	cmp	r3, #0
 800709e:	d1c7      	bne.n	8007030 <_fclose_r+0x20>
 80070a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80070a2:	f016 0601 	ands.w	r6, r6, #1
 80070a6:	d016      	beq.n	80070d6 <_fclose_r+0xc6>
 80070a8:	2600      	movs	r6, #0
 80070aa:	4630      	mov	r0, r6
 80070ac:	bd70      	pop	{r4, r5, r6, pc}
 80070ae:	2b00      	cmp	r3, #0
 80070b0:	d0fa      	beq.n	80070a8 <_fclose_r+0x98>
 80070b2:	e7bd      	b.n	8007030 <_fclose_r+0x20>
 80070b4:	f7fe fd4a 	bl	8005b4c <__sinit>
 80070b8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070be:	07d0      	lsls	r0, r2, #31
 80070c0:	d4f5      	bmi.n	80070ae <_fclose_r+0x9e>
 80070c2:	e7b3      	b.n	800702c <_fclose_r+0x1c>
 80070c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070c6:	f7ff f893 	bl	80061f0 <__retarget_lock_release_recursive>
 80070ca:	e7db      	b.n	8007084 <_fclose_r+0x74>
 80070cc:	6921      	ldr	r1, [r4, #16]
 80070ce:	4628      	mov	r0, r5
 80070d0:	f7fe fdde 	bl	8005c90 <_free_r>
 80070d4:	e7bd      	b.n	8007052 <_fclose_r+0x42>
 80070d6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070d8:	f7ff f88a 	bl	80061f0 <__retarget_lock_release_recursive>
 80070dc:	4630      	mov	r0, r6
 80070de:	bd70      	pop	{r4, r5, r6, pc}

080070e0 <__fputwc>:
 80070e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80070e4:	b082      	sub	sp, #8
 80070e6:	4681      	mov	r9, r0
 80070e8:	4688      	mov	r8, r1
 80070ea:	4614      	mov	r4, r2
 80070ec:	f7fb fa38 	bl	8002560 <__locale_mb_cur_max>
 80070f0:	2801      	cmp	r0, #1
 80070f2:	d103      	bne.n	80070fc <__fputwc+0x1c>
 80070f4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80070f8:	2bfe      	cmp	r3, #254	; 0xfe
 80070fa:	d933      	bls.n	8007164 <__fputwc+0x84>
 80070fc:	4642      	mov	r2, r8
 80070fe:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007102:	a901      	add	r1, sp, #4
 8007104:	4648      	mov	r0, r9
 8007106:	f000 f917 	bl	8007338 <_wcrtomb_r>
 800710a:	1c42      	adds	r2, r0, #1
 800710c:	4606      	mov	r6, r0
 800710e:	d02f      	beq.n	8007170 <__fputwc+0x90>
 8007110:	b320      	cbz	r0, 800715c <__fputwc+0x7c>
 8007112:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007116:	2500      	movs	r5, #0
 8007118:	f10d 0a04 	add.w	sl, sp, #4
 800711c:	e009      	b.n	8007132 <__fputwc+0x52>
 800711e:	6823      	ldr	r3, [r4, #0]
 8007120:	1c5a      	adds	r2, r3, #1
 8007122:	6022      	str	r2, [r4, #0]
 8007124:	f883 c000 	strb.w	ip, [r3]
 8007128:	3501      	adds	r5, #1
 800712a:	42b5      	cmp	r5, r6
 800712c:	d216      	bcs.n	800715c <__fputwc+0x7c>
 800712e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007132:	68a3      	ldr	r3, [r4, #8]
 8007134:	3b01      	subs	r3, #1
 8007136:	2b00      	cmp	r3, #0
 8007138:	60a3      	str	r3, [r4, #8]
 800713a:	daf0      	bge.n	800711e <__fputwc+0x3e>
 800713c:	69a7      	ldr	r7, [r4, #24]
 800713e:	42bb      	cmp	r3, r7
 8007140:	4661      	mov	r1, ip
 8007142:	4622      	mov	r2, r4
 8007144:	4648      	mov	r0, r9
 8007146:	db02      	blt.n	800714e <__fputwc+0x6e>
 8007148:	f1bc 0f0a 	cmp.w	ip, #10
 800714c:	d1e7      	bne.n	800711e <__fputwc+0x3e>
 800714e:	f000 f89b 	bl	8007288 <__swbuf_r>
 8007152:	1c43      	adds	r3, r0, #1
 8007154:	d1e8      	bne.n	8007128 <__fputwc+0x48>
 8007156:	b002      	add	sp, #8
 8007158:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800715c:	4640      	mov	r0, r8
 800715e:	b002      	add	sp, #8
 8007160:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007164:	fa5f fc88 	uxtb.w	ip, r8
 8007168:	4606      	mov	r6, r0
 800716a:	f88d c004 	strb.w	ip, [sp, #4]
 800716e:	e7d2      	b.n	8007116 <__fputwc+0x36>
 8007170:	89a3      	ldrh	r3, [r4, #12]
 8007172:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007176:	81a3      	strh	r3, [r4, #12]
 8007178:	b002      	add	sp, #8
 800717a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800717e:	bf00      	nop

08007180 <_fputwc_r>:
 8007180:	b530      	push	{r4, r5, lr}
 8007182:	4605      	mov	r5, r0
 8007184:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007186:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800718a:	07c0      	lsls	r0, r0, #31
 800718c:	4614      	mov	r4, r2
 800718e:	b083      	sub	sp, #12
 8007190:	b29a      	uxth	r2, r3
 8007192:	d401      	bmi.n	8007198 <_fputwc_r+0x18>
 8007194:	0590      	lsls	r0, r2, #22
 8007196:	d51c      	bpl.n	80071d2 <_fputwc_r+0x52>
 8007198:	0490      	lsls	r0, r2, #18
 800719a:	d406      	bmi.n	80071aa <_fputwc_r+0x2a>
 800719c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800719e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80071a2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80071a6:	81a3      	strh	r3, [r4, #12]
 80071a8:	6662      	str	r2, [r4, #100]	; 0x64
 80071aa:	4628      	mov	r0, r5
 80071ac:	4622      	mov	r2, r4
 80071ae:	f7ff ff97 	bl	80070e0 <__fputwc>
 80071b2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80071b4:	07da      	lsls	r2, r3, #31
 80071b6:	4605      	mov	r5, r0
 80071b8:	d402      	bmi.n	80071c0 <_fputwc_r+0x40>
 80071ba:	89a3      	ldrh	r3, [r4, #12]
 80071bc:	059b      	lsls	r3, r3, #22
 80071be:	d502      	bpl.n	80071c6 <_fputwc_r+0x46>
 80071c0:	4628      	mov	r0, r5
 80071c2:	b003      	add	sp, #12
 80071c4:	bd30      	pop	{r4, r5, pc}
 80071c6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071c8:	f7ff f812 	bl	80061f0 <__retarget_lock_release_recursive>
 80071cc:	4628      	mov	r0, r5
 80071ce:	b003      	add	sp, #12
 80071d0:	bd30      	pop	{r4, r5, pc}
 80071d2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071d4:	9101      	str	r1, [sp, #4]
 80071d6:	f7ff f809 	bl	80061ec <__retarget_lock_acquire_recursive>
 80071da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071de:	9901      	ldr	r1, [sp, #4]
 80071e0:	b29a      	uxth	r2, r3
 80071e2:	e7d9      	b.n	8007198 <_fputwc_r+0x18>

080071e4 <_fstat_r>:
 80071e4:	b538      	push	{r3, r4, r5, lr}
 80071e6:	460b      	mov	r3, r1
 80071e8:	4c07      	ldr	r4, [pc, #28]	; (8007208 <_fstat_r+0x24>)
 80071ea:	4605      	mov	r5, r0
 80071ec:	4611      	mov	r1, r2
 80071ee:	4618      	mov	r0, r3
 80071f0:	2300      	movs	r3, #0
 80071f2:	6023      	str	r3, [r4, #0]
 80071f4:	f7fb f92b 	bl	800244e <_fstat>
 80071f8:	1c43      	adds	r3, r0, #1
 80071fa:	d000      	beq.n	80071fe <_fstat_r+0x1a>
 80071fc:	bd38      	pop	{r3, r4, r5, pc}
 80071fe:	6823      	ldr	r3, [r4, #0]
 8007200:	2b00      	cmp	r3, #0
 8007202:	d0fb      	beq.n	80071fc <_fstat_r+0x18>
 8007204:	602b      	str	r3, [r5, #0]
 8007206:	bd38      	pop	{r3, r4, r5, pc}
 8007208:	20000b28 	.word	0x20000b28

0800720c <_isatty_r>:
 800720c:	b538      	push	{r3, r4, r5, lr}
 800720e:	4c07      	ldr	r4, [pc, #28]	; (800722c <_isatty_r+0x20>)
 8007210:	2300      	movs	r3, #0
 8007212:	4605      	mov	r5, r0
 8007214:	4608      	mov	r0, r1
 8007216:	6023      	str	r3, [r4, #0]
 8007218:	f7fb f91e 	bl	8002458 <_isatty>
 800721c:	1c43      	adds	r3, r0, #1
 800721e:	d000      	beq.n	8007222 <_isatty_r+0x16>
 8007220:	bd38      	pop	{r3, r4, r5, pc}
 8007222:	6823      	ldr	r3, [r4, #0]
 8007224:	2b00      	cmp	r3, #0
 8007226:	d0fb      	beq.n	8007220 <_isatty_r+0x14>
 8007228:	602b      	str	r3, [r5, #0]
 800722a:	bd38      	pop	{r3, r4, r5, pc}
 800722c:	20000b28 	.word	0x20000b28

08007230 <_lseek_r>:
 8007230:	b570      	push	{r4, r5, r6, lr}
 8007232:	460d      	mov	r5, r1
 8007234:	4c08      	ldr	r4, [pc, #32]	; (8007258 <_lseek_r+0x28>)
 8007236:	4611      	mov	r1, r2
 8007238:	4606      	mov	r6, r0
 800723a:	461a      	mov	r2, r3
 800723c:	4628      	mov	r0, r5
 800723e:	2300      	movs	r3, #0
 8007240:	6023      	str	r3, [r4, #0]
 8007242:	f7fb f90b 	bl	800245c <_lseek>
 8007246:	1c43      	adds	r3, r0, #1
 8007248:	d000      	beq.n	800724c <_lseek_r+0x1c>
 800724a:	bd70      	pop	{r4, r5, r6, pc}
 800724c:	6823      	ldr	r3, [r4, #0]
 800724e:	2b00      	cmp	r3, #0
 8007250:	d0fb      	beq.n	800724a <_lseek_r+0x1a>
 8007252:	6033      	str	r3, [r6, #0]
 8007254:	bd70      	pop	{r4, r5, r6, pc}
 8007256:	bf00      	nop
 8007258:	20000b28 	.word	0x20000b28

0800725c <_read_r>:
 800725c:	b570      	push	{r4, r5, r6, lr}
 800725e:	460d      	mov	r5, r1
 8007260:	4c08      	ldr	r4, [pc, #32]	; (8007284 <_read_r+0x28>)
 8007262:	4611      	mov	r1, r2
 8007264:	4606      	mov	r6, r0
 8007266:	461a      	mov	r2, r3
 8007268:	4628      	mov	r0, r5
 800726a:	2300      	movs	r3, #0
 800726c:	6023      	str	r3, [r4, #0]
 800726e:	f7fb f8a9 	bl	80023c4 <_read>
 8007272:	1c43      	adds	r3, r0, #1
 8007274:	d000      	beq.n	8007278 <_read_r+0x1c>
 8007276:	bd70      	pop	{r4, r5, r6, pc}
 8007278:	6823      	ldr	r3, [r4, #0]
 800727a:	2b00      	cmp	r3, #0
 800727c:	d0fb      	beq.n	8007276 <_read_r+0x1a>
 800727e:	6033      	str	r3, [r6, #0]
 8007280:	bd70      	pop	{r4, r5, r6, pc}
 8007282:	bf00      	nop
 8007284:	20000b28 	.word	0x20000b28

08007288 <__swbuf_r>:
 8007288:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800728a:	460d      	mov	r5, r1
 800728c:	4614      	mov	r4, r2
 800728e:	4606      	mov	r6, r0
 8007290:	b110      	cbz	r0, 8007298 <__swbuf_r+0x10>
 8007292:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007294:	2b00      	cmp	r3, #0
 8007296:	d043      	beq.n	8007320 <__swbuf_r+0x98>
 8007298:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800729c:	69a3      	ldr	r3, [r4, #24]
 800729e:	60a3      	str	r3, [r4, #8]
 80072a0:	b291      	uxth	r1, r2
 80072a2:	0708      	lsls	r0, r1, #28
 80072a4:	d51b      	bpl.n	80072de <__swbuf_r+0x56>
 80072a6:	6923      	ldr	r3, [r4, #16]
 80072a8:	b1cb      	cbz	r3, 80072de <__swbuf_r+0x56>
 80072aa:	b2ed      	uxtb	r5, r5
 80072ac:	0489      	lsls	r1, r1, #18
 80072ae:	462f      	mov	r7, r5
 80072b0:	d522      	bpl.n	80072f8 <__swbuf_r+0x70>
 80072b2:	6822      	ldr	r2, [r4, #0]
 80072b4:	6961      	ldr	r1, [r4, #20]
 80072b6:	1ad3      	subs	r3, r2, r3
 80072b8:	4299      	cmp	r1, r3
 80072ba:	dd29      	ble.n	8007310 <__swbuf_r+0x88>
 80072bc:	3301      	adds	r3, #1
 80072be:	68a1      	ldr	r1, [r4, #8]
 80072c0:	1c50      	adds	r0, r2, #1
 80072c2:	3901      	subs	r1, #1
 80072c4:	60a1      	str	r1, [r4, #8]
 80072c6:	6020      	str	r0, [r4, #0]
 80072c8:	7015      	strb	r5, [r2, #0]
 80072ca:	6962      	ldr	r2, [r4, #20]
 80072cc:	429a      	cmp	r2, r3
 80072ce:	d02a      	beq.n	8007326 <__swbuf_r+0x9e>
 80072d0:	89a3      	ldrh	r3, [r4, #12]
 80072d2:	07db      	lsls	r3, r3, #31
 80072d4:	d501      	bpl.n	80072da <__swbuf_r+0x52>
 80072d6:	2d0a      	cmp	r5, #10
 80072d8:	d025      	beq.n	8007326 <__swbuf_r+0x9e>
 80072da:	4638      	mov	r0, r7
 80072dc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80072de:	4621      	mov	r1, r4
 80072e0:	4630      	mov	r0, r6
 80072e2:	f7fd fb13 	bl	800490c <__swsetup_r>
 80072e6:	bb20      	cbnz	r0, 8007332 <__swbuf_r+0xaa>
 80072e8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80072ec:	6923      	ldr	r3, [r4, #16]
 80072ee:	b291      	uxth	r1, r2
 80072f0:	b2ed      	uxtb	r5, r5
 80072f2:	0489      	lsls	r1, r1, #18
 80072f4:	462f      	mov	r7, r5
 80072f6:	d4dc      	bmi.n	80072b2 <__swbuf_r+0x2a>
 80072f8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80072fa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80072fe:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007302:	81a2      	strh	r2, [r4, #12]
 8007304:	6822      	ldr	r2, [r4, #0]
 8007306:	6661      	str	r1, [r4, #100]	; 0x64
 8007308:	6961      	ldr	r1, [r4, #20]
 800730a:	1ad3      	subs	r3, r2, r3
 800730c:	4299      	cmp	r1, r3
 800730e:	dcd5      	bgt.n	80072bc <__swbuf_r+0x34>
 8007310:	4621      	mov	r1, r4
 8007312:	4630      	mov	r0, r6
 8007314:	f7fe fbbe 	bl	8005a94 <_fflush_r>
 8007318:	b958      	cbnz	r0, 8007332 <__swbuf_r+0xaa>
 800731a:	6822      	ldr	r2, [r4, #0]
 800731c:	2301      	movs	r3, #1
 800731e:	e7ce      	b.n	80072be <__swbuf_r+0x36>
 8007320:	f7fe fc14 	bl	8005b4c <__sinit>
 8007324:	e7b8      	b.n	8007298 <__swbuf_r+0x10>
 8007326:	4621      	mov	r1, r4
 8007328:	4630      	mov	r0, r6
 800732a:	f7fe fbb3 	bl	8005a94 <_fflush_r>
 800732e:	2800      	cmp	r0, #0
 8007330:	d0d3      	beq.n	80072da <__swbuf_r+0x52>
 8007332:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007336:	e7d0      	b.n	80072da <__swbuf_r+0x52>

08007338 <_wcrtomb_r>:
 8007338:	b5f0      	push	{r4, r5, r6, r7, lr}
 800733a:	4c11      	ldr	r4, [pc, #68]	; (8007380 <_wcrtomb_r+0x48>)
 800733c:	6824      	ldr	r4, [r4, #0]
 800733e:	b085      	sub	sp, #20
 8007340:	4606      	mov	r6, r0
 8007342:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007344:	461f      	mov	r7, r3
 8007346:	b151      	cbz	r1, 800735e <_wcrtomb_r+0x26>
 8007348:	4d0e      	ldr	r5, [pc, #56]	; (8007384 <_wcrtomb_r+0x4c>)
 800734a:	2c00      	cmp	r4, #0
 800734c:	bf08      	it	eq
 800734e:	462c      	moveq	r4, r5
 8007350:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007354:	47a0      	blx	r4
 8007356:	1c43      	adds	r3, r0, #1
 8007358:	d00c      	beq.n	8007374 <_wcrtomb_r+0x3c>
 800735a:	b005      	add	sp, #20
 800735c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800735e:	4a09      	ldr	r2, [pc, #36]	; (8007384 <_wcrtomb_r+0x4c>)
 8007360:	2c00      	cmp	r4, #0
 8007362:	bf08      	it	eq
 8007364:	4614      	moveq	r4, r2
 8007366:	460a      	mov	r2, r1
 8007368:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800736c:	a901      	add	r1, sp, #4
 800736e:	47a0      	blx	r4
 8007370:	1c43      	adds	r3, r0, #1
 8007372:	d1f2      	bne.n	800735a <_wcrtomb_r+0x22>
 8007374:	2200      	movs	r2, #0
 8007376:	238a      	movs	r3, #138	; 0x8a
 8007378:	603a      	str	r2, [r7, #0]
 800737a:	6033      	str	r3, [r6, #0]
 800737c:	b005      	add	sp, #20
 800737e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007380:	20000018 	.word	0x20000018
 8007384:	20000448 	.word	0x20000448

08007388 <_init>:
 8007388:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800738a:	bf00      	nop
 800738c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800738e:	bc08      	pop	{r3}
 8007390:	469e      	mov	lr, r3
 8007392:	4770      	bx	lr

08007394 <_fini>:
 8007394:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007396:	bf00      	nop
 8007398:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800739a:	bc08      	pop	{r3}
 800739c:	469e      	mov	lr, r3
 800739e:	4770      	bx	lr
