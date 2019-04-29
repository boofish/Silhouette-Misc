
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
 80001d8:	200009e0 	.word	0x200009e0
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08009a48 	.word	0x08009a48

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
 80001fc:	08009a48 	.word	0x08009a48

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
 80011cc:	f241 5010 	movw	r0, #5392	; 0x1510
 80011d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d4:	6801      	ldr	r1, [r0, #0]
 80011d6:	3101      	adds	r1, #1
 80011d8:	6001      	str	r1, [r0, #0]
 80011da:	4770      	bx	lr

080011dc <HAL_GetTick>:
 80011dc:	f241 5010 	movw	r0, #5392	; 0x1510
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
 80014ac:	f649 423c 	movw	r2, #39996	; 0x9c3c
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
 8001526:	f649 4234 	movw	r2, #39988	; 0x9c34
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
 8001550:	f649 4234 	movw	r2, #39988	; 0x9c34
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
 8001906:	f241 5114 	movw	r1, #5396	; 0x1514
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
 8001950:	f241 5014 	movw	r0, #5396	; 0x1514
 8001954:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001958:	f7ff fecd 	bl	80016f6 <HAL_TIM_Base_Start_IT>
 800195c:	b006      	add	sp, #24
 800195e:	bdb0      	pop	{r4, r5, r7, pc}

08001960 <HAL_TIM_PeriodElapsedCallback>:
 8001960:	f7ff bc34 	b.w	80011cc <HAL_IncTick>

08001964 <TIM6_DAC_IRQHandler>:
 8001964:	f241 5014 	movw	r0, #5396	; 0x1514
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
 8001a98:	f649 436c 	movw	r3, #40044	; 0x9c6c
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
 8001ac0:	f649 437c 	movw	r3, #40060	; 0x9c7c
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

08001ec8 <osSystickHandler>:
 8001ec8:	b580      	push	{r7, lr}
 8001eca:	466f      	mov	r7, sp
 8001ecc:	f000 f92d 	bl	800212a <xTaskGetSchedulerState>
 8001ed0:	2801      	cmp	r0, #1
 8001ed2:	bf1c      	itt	ne
 8001ed4:	e8bd 4080 	ldmiane.w	sp!, {r7, lr}
 8001ed8:	f000 b984 	bne.w	80021e4 <xPortSysTickHandler>
 8001edc:	bd80      	pop	{r7, pc}

08001ede <vListInsertEnd>:
 8001ede:	6842      	ldr	r2, [r0, #4]
 8001ee0:	604a      	str	r2, [r1, #4]
 8001ee2:	6893      	ldr	r3, [r2, #8]
 8001ee4:	608b      	str	r3, [r1, #8]
 8001ee6:	6893      	ldr	r3, [r2, #8]
 8001ee8:	6059      	str	r1, [r3, #4]
 8001eea:	6091      	str	r1, [r2, #8]
 8001eec:	6108      	str	r0, [r1, #16]
 8001eee:	6801      	ldr	r1, [r0, #0]
 8001ef0:	3101      	adds	r1, #1
 8001ef2:	6001      	str	r1, [r0, #0]
 8001ef4:	4770      	bx	lr

08001ef6 <uxListRemove>:
 8001ef6:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
 8001efa:	6901      	ldr	r1, [r0, #16]
 8001efc:	609a      	str	r2, [r3, #8]
 8001efe:	6882      	ldr	r2, [r0, #8]
 8001f00:	6053      	str	r3, [r2, #4]
 8001f02:	684b      	ldr	r3, [r1, #4]
 8001f04:	4283      	cmp	r3, r0
 8001f06:	bf08      	it	eq
 8001f08:	604a      	streq	r2, [r1, #4]
 8001f0a:	2200      	movs	r2, #0
 8001f0c:	6102      	str	r2, [r0, #16]
 8001f0e:	6808      	ldr	r0, [r1, #0]
 8001f10:	3801      	subs	r0, #1
 8001f12:	6008      	str	r0, [r1, #0]
 8001f14:	6808      	ldr	r0, [r1, #0]
 8001f16:	4770      	bx	lr

08001f18 <vTaskSwitchContext>:
 8001f18:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001f1c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f20:	6800      	ldr	r0, [r0, #0]
 8001f22:	2800      	cmp	r0, #0
 8001f24:	bf1f      	itttt	ne
 8001f26:	f640 20f4 	movwne	r0, #2804	; 0xaf4
 8001f2a:	f2c2 0000 	movtne	r0, #8192	; 0x2000
 8001f2e:	2101      	movne	r1, #1
 8001f30:	6001      	strne	r1, [r0, #0]
 8001f32:	bf18      	it	ne
 8001f34:	4770      	bxne	lr
 8001f36:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8001f3a:	2100      	movs	r1, #0
 8001f3c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f40:	6001      	str	r1, [r0, #0]
 8001f42:	f640 208c 	movw	r0, #2700	; 0xa8c
 8001f46:	f640 2100 	movw	r1, #2560	; 0xa00
 8001f4a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f4e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f52:	6800      	ldr	r0, [r0, #0]
 8001f54:	fab0 f080 	clz	r0, r0
 8001f58:	b2c0      	uxtb	r0, r0
 8001f5a:	f1c0 001f 	rsb	r0, r0, #31
 8001f5e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8001f62:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8001f66:	b18a      	cbz	r2, 8001f8c <vTaskSwitchContext+0x74>
 8001f68:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8001f6c:	f851 0f04 	ldr.w	r0, [r1, #4]!
 8001f70:	6840      	ldr	r0, [r0, #4]
 8001f72:	1d0a      	adds	r2, r1, #4
 8001f74:	6008      	str	r0, [r1, #0]
 8001f76:	4290      	cmp	r0, r2
 8001f78:	bf04      	itt	eq
 8001f7a:	6840      	ldreq	r0, [r0, #4]
 8001f7c:	6008      	streq	r0, [r1, #0]
 8001f7e:	f640 11fc 	movw	r1, #2556	; 0x9fc
 8001f82:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f86:	68c0      	ldr	r0, [r0, #12]
 8001f88:	6008      	str	r0, [r1, #0]
 8001f8a:	4770      	bx	lr
 8001f8c:	f04f 0050 	mov.w	r0, #80	; 0x50
 8001f90:	f380 8811 	msr	BASEPRI, r0
 8001f94:	f3bf 8f6f 	isb	sy
 8001f98:	f3bf 8f4f 	dsb	sy
 8001f9c:	e7fe      	b.n	8001f9c <vTaskSwitchContext+0x84>

08001f9e <xTaskIncrementTick>:
 8001f9e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fa0:	af03      	add	r7, sp, #12
 8001fa2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001fa6:	b081      	sub	sp, #4
 8001fa8:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001fac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fb0:	6800      	ldr	r0, [r0, #0]
 8001fb2:	b140      	cbz	r0, 8001fc6 <xTaskIncrementTick+0x28>
 8001fb4:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8001fb8:	2400      	movs	r4, #0
 8001fba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fbe:	6801      	ldr	r1, [r0, #0]
 8001fc0:	3101      	adds	r1, #1
 8001fc2:	6001      	str	r1, [r0, #0]
 8001fc4:	e085      	b.n	80020d2 <xTaskIncrementTick+0x134>
 8001fc6:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	6801      	ldr	r1, [r0, #0]
 8001fd0:	1c4e      	adds	r6, r1, #1
 8001fd2:	6006      	str	r6, [r0, #0]
 8001fd4:	d058      	beq.n	8002088 <xTaskIncrementTick+0xea>
 8001fd6:	f640 21ec 	movw	r1, #2796	; 0xaec
 8001fda:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fde:	6808      	ldr	r0, [r1, #0]
 8001fe0:	4286      	cmp	r6, r0
 8001fe2:	d201      	bcs.n	8001fe8 <xTaskIncrementTick+0x4a>
 8001fe4:	2400      	movs	r4, #0
 8001fe6:	e063      	b.n	80020b0 <xTaskIncrementTick+0x112>
 8001fe8:	f640 29b8 	movw	r9, #2744	; 0xab8
 8001fec:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001ff0:	f8d9 0000 	ldr.w	r0, [r9]
 8001ff4:	6800      	ldr	r0, [r0, #0]
 8001ff6:	2800      	cmp	r0, #0
 8001ff8:	d056      	beq.n	80020a8 <xTaskIncrementTick+0x10a>
 8001ffa:	f640 2b8c 	movw	fp, #2700	; 0xa8c
 8001ffe:	2400      	movs	r4, #0
 8002000:	f04f 0a01 	mov.w	sl, #1
 8002004:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002008:	f8d9 0000 	ldr.w	r0, [r9]
 800200c:	68c0      	ldr	r0, [r0, #12]
 800200e:	f8d0 800c 	ldr.w	r8, [r0, #12]
 8002012:	4645      	mov	r5, r8
 8002014:	f855 0f04 	ldr.w	r0, [r5, #4]!
 8002018:	4286      	cmp	r6, r0
 800201a:	d330      	bcc.n	800207e <xTaskIncrementTick+0xe0>
 800201c:	4628      	mov	r0, r5
 800201e:	f7ff ff6a 	bl	8001ef6 <uxListRemove>
 8002022:	f8d8 0028 	ldr.w	r0, [r8, #40]	; 0x28
 8002026:	2800      	cmp	r0, #0
 8002028:	bf1c      	itt	ne
 800202a:	f108 0018 	addne.w	r0, r8, #24
 800202e:	f7ff ff62 	blne	8001ef6 <uxListRemove>
 8002032:	f8d8 002c 	ldr.w	r0, [r8, #44]	; 0x2c
 8002036:	f8db 2000 	ldr.w	r2, [fp]
 800203a:	fa0a f100 	lsl.w	r1, sl, r0
 800203e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002042:	4311      	orrs	r1, r2
 8002044:	f8cb 1000 	str.w	r1, [fp]
 8002048:	f640 2100 	movw	r1, #2560	; 0xa00
 800204c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002050:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8002054:	4629      	mov	r1, r5
 8002056:	f7ff ff42 	bl	8001ede <vListInsertEnd>
 800205a:	f640 11fc 	movw	r1, #2556	; 0x9fc
 800205e:	f8d8 002c 	ldr.w	r0, [r8, #44]	; 0x2c
 8002062:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002066:	6809      	ldr	r1, [r1, #0]
 8002068:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 800206a:	4288      	cmp	r0, r1
 800206c:	bf28      	it	cs
 800206e:	4654      	movcs	r4, sl
 8002070:	f8d9 0000 	ldr.w	r0, [r9]
 8002074:	6800      	ldr	r0, [r0, #0]
 8002076:	2800      	cmp	r0, #0
 8002078:	d1c6      	bne.n	8002008 <xTaskIncrementTick+0x6a>
 800207a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800207e:	f640 21ec 	movw	r1, #2796	; 0xaec
 8002082:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002086:	e012      	b.n	80020ae <xTaskIncrementTick+0x110>
 8002088:	f640 20b8 	movw	r0, #2744	; 0xab8
 800208c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002090:	6801      	ldr	r1, [r0, #0]
 8002092:	6809      	ldr	r1, [r1, #0]
 8002094:	b351      	cbz	r1, 80020ec <xTaskIncrementTick+0x14e>
 8002096:	f04f 0050 	mov.w	r0, #80	; 0x50
 800209a:	f380 8811 	msr	BASEPRI, r0
 800209e:	f3bf 8f6f 	isb	sy
 80020a2:	f3bf 8f4f 	dsb	sy
 80020a6:	e7fe      	b.n	80020a6 <xTaskIncrementTick+0x108>
 80020a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020ac:	2400      	movs	r4, #0
 80020ae:	6008      	str	r0, [r1, #0]
 80020b0:	f640 10fc 	movw	r0, #2556	; 0x9fc
 80020b4:	f640 2100 	movw	r1, #2560	; 0xa00
 80020b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020bc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020c0:	6800      	ldr	r0, [r0, #0]
 80020c2:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 80020c4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80020c8:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 80020cc:	2801      	cmp	r0, #1
 80020ce:	bf88      	it	hi
 80020d0:	2401      	movhi	r4, #1
 80020d2:	f640 20f4 	movw	r0, #2804	; 0xaf4
 80020d6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020da:	6800      	ldr	r0, [r0, #0]
 80020dc:	2800      	cmp	r0, #0
 80020de:	bf18      	it	ne
 80020e0:	2401      	movne	r4, #1
 80020e2:	4620      	mov	r0, r4
 80020e4:	b001      	add	sp, #4
 80020e6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80020ec:	f640 22bc 	movw	r2, #2748	; 0xabc
 80020f0:	6801      	ldr	r1, [r0, #0]
 80020f2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020f6:	6813      	ldr	r3, [r2, #0]
 80020f8:	6003      	str	r3, [r0, #0]
 80020fa:	6011      	str	r1, [r2, #0]
 80020fc:	f640 21fc 	movw	r1, #2812	; 0xafc
 8002100:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002104:	680a      	ldr	r2, [r1, #0]
 8002106:	3201      	adds	r2, #1
 8002108:	600a      	str	r2, [r1, #0]
 800210a:	6801      	ldr	r1, [r0, #0]
 800210c:	6809      	ldr	r1, [r1, #0]
 800210e:	b121      	cbz	r1, 800211a <xTaskIncrementTick+0x17c>
 8002110:	6800      	ldr	r0, [r0, #0]
 8002112:	68c0      	ldr	r0, [r0, #12]
 8002114:	68c0      	ldr	r0, [r0, #12]
 8002116:	6840      	ldr	r0, [r0, #4]
 8002118:	e001      	b.n	800211e <xTaskIncrementTick+0x180>
 800211a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800211e:	f640 21ec 	movw	r1, #2796	; 0xaec
 8002122:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002126:	6008      	str	r0, [r1, #0]
 8002128:	e755      	b.n	8001fd6 <xTaskIncrementTick+0x38>

0800212a <xTaskGetSchedulerState>:
 800212a:	f640 20b0 	movw	r0, #2736	; 0xab0
 800212e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002132:	6800      	ldr	r0, [r0, #0]
 8002134:	2800      	cmp	r0, #0
 8002136:	bf04      	itt	eq
 8002138:	2001      	moveq	r0, #1
 800213a:	4770      	bxeq	lr
 800213c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8002140:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002144:	6801      	ldr	r1, [r0, #0]
 8002146:	2000      	movs	r0, #0
 8002148:	2900      	cmp	r1, #0
 800214a:	bf08      	it	eq
 800214c:	2002      	moveq	r0, #2
 800214e:	4770      	bx	lr

08002150 <SVC_Handler>:
 8002150:	4b07      	ldr	r3, [pc, #28]	; (8002170 <pxCurrentTCBConst2>)
 8002152:	6819      	ldr	r1, [r3, #0]
 8002154:	6808      	ldr	r0, [r1, #0]
 8002156:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800215a:	f380 8809 	msr	PSP, r0
 800215e:	f3bf 8f6f 	isb	sy
 8002162:	f04f 0000 	mov.w	r0, #0
 8002166:	f380 8811 	msr	BASEPRI, r0
 800216a:	4770      	bx	lr
 800216c:	bf00      	nop
 800216e:	bf00      	nop

08002170 <pxCurrentTCBConst2>:
 8002170:	200009fc 	.word	0x200009fc
	...

08002180 <PendSV_Handler>:
 8002180:	f3ef 8009 	mrs	r0, PSP
 8002184:	f3bf 8f6f 	isb	sy
 8002188:	4b15      	ldr	r3, [pc, #84]	; (80021e0 <pxCurrentTCBConst>)
 800218a:	681a      	ldr	r2, [r3, #0]
 800218c:	f01e 0f10 	tst.w	lr, #16
 8002190:	bf08      	it	eq
 8002192:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8002196:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800219a:	6010      	str	r0, [r2, #0]
 800219c:	e92d 0009 	stmdb	sp!, {r0, r3}
 80021a0:	f04f 0050 	mov.w	r0, #80	; 0x50
 80021a4:	f380 8811 	msr	BASEPRI, r0
 80021a8:	f3bf 8f4f 	dsb	sy
 80021ac:	f3bf 8f6f 	isb	sy
 80021b0:	f7ff feb2 	bl	8001f18 <vTaskSwitchContext>
 80021b4:	f04f 0000 	mov.w	r0, #0
 80021b8:	f380 8811 	msr	BASEPRI, r0
 80021bc:	e8bd 0009 	ldmia.w	sp!, {r0, r3}
 80021c0:	6819      	ldr	r1, [r3, #0]
 80021c2:	6808      	ldr	r0, [r1, #0]
 80021c4:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80021c8:	f01e 0f10 	tst.w	lr, #16
 80021cc:	bf08      	it	eq
 80021ce:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 80021d2:	f380 8809 	msr	PSP, r0
 80021d6:	f3bf 8f6f 	isb	sy
 80021da:	4770      	bx	lr
 80021dc:	bf00      	nop
 80021de:	bf00      	nop

080021e0 <pxCurrentTCBConst>:
 80021e0:	200009fc 	.word	0x200009fc

080021e4 <xPortSysTickHandler>:
 80021e4:	b580      	push	{r7, lr}
 80021e6:	466f      	mov	r7, sp
 80021e8:	f04f 0050 	mov.w	r0, #80	; 0x50
 80021ec:	f380 8811 	msr	BASEPRI, r0
 80021f0:	f3bf 8f6f 	isb	sy
 80021f4:	f3bf 8f4f 	dsb	sy
 80021f8:	f7ff fed1 	bl	8001f9e <xTaskIncrementTick>
 80021fc:	2800      	cmp	r0, #0
 80021fe:	bf1f      	itttt	ne
 8002200:	f64e 5004 	movwne	r0, #60676	; 0xed04
 8002204:	f2ce 0000 	movtne	r0, #57344	; 0xe000
 8002208:	f04f 5180 	movne.w	r1, #268435456	; 0x10000000
 800220c:	6001      	strne	r1, [r0, #0]
 800220e:	2000      	movs	r0, #0
 8002210:	f380 8811 	msr	BASEPRI, r0
 8002214:	bd80      	pop	{r7, pc}

08002216 <BSP_COM_Init>:
 8002216:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002218:	af03      	add	r7, sp, #12
 800221a:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 800221e:	b086      	sub	sp, #24
 8002220:	4605      	mov	r5, r0
 8002222:	4688      	mov	r8, r1
 8002224:	b9f5      	cbnz	r5, 8002264 <BSP_COM_Init+0x4e>
 8002226:	f241 004c 	movw	r0, #4172	; 0x104c
 800222a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800222e:	6801      	ldr	r1, [r0, #0]
 8002230:	f041 0102 	orr.w	r1, r1, #2
 8002234:	6001      	str	r1, [r0, #0]
 8002236:	6801      	ldr	r1, [r0, #0]
 8002238:	f001 0102 	and.w	r1, r1, #2
 800223c:	9101      	str	r1, [sp, #4]
 800223e:	9901      	ldr	r1, [sp, #4]
 8002240:	6801      	ldr	r1, [r0, #0]
 8002242:	f041 0102 	orr.w	r1, r1, #2
 8002246:	6001      	str	r1, [r0, #0]
 8002248:	6801      	ldr	r1, [r0, #0]
 800224a:	f001 0102 	and.w	r1, r1, #2
 800224e:	9101      	str	r1, [sp, #4]
 8002250:	9901      	ldr	r1, [sp, #4]
 8002252:	6941      	ldr	r1, [r0, #20]
 8002254:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8002258:	6141      	str	r1, [r0, #20]
 800225a:	6940      	ldr	r0, [r0, #20]
 800225c:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8002260:	9001      	str	r0, [sp, #4]
 8002262:	9801      	ldr	r0, [sp, #4]
 8002264:	2040      	movs	r0, #64	; 0x40
 8002266:	2402      	movs	r4, #2
 8002268:	ae01      	add	r6, sp, #4
 800226a:	f04f 0907 	mov.w	r9, #7
 800226e:	9001      	str	r0, [sp, #4]
 8002270:	2000      	movs	r0, #0
 8002272:	9402      	str	r4, [sp, #8]
 8002274:	9404      	str	r4, [sp, #16]
 8002276:	4631      	mov	r1, r6
 8002278:	9003      	str	r0, [sp, #12]
 800227a:	f240 000c 	movw	r0, #12
 800227e:	f8cd 9014 	str.w	r9, [sp, #20]
 8002282:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002286:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 800228a:	f7ff f800 	bl	800128e <HAL_GPIO_Init>
 800228e:	2080      	movs	r0, #128	; 0x80
 8002290:	4631      	mov	r1, r6
 8002292:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8002296:	f240 0010 	movw	r0, #16
 800229a:	f8cd 9014 	str.w	r9, [sp, #20]
 800229e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022a2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80022a6:	f7fe fff2 	bl	800128e <HAL_GPIO_Init>
 80022aa:	f240 0008 	movw	r0, #8
 80022ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022b2:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 80022b6:	f8c8 0000 	str.w	r0, [r8]
 80022ba:	4640      	mov	r0, r8
 80022bc:	f7ff fb58 	bl	8001970 <HAL_UART_Init>
 80022c0:	b006      	add	sp, #24
 80022c2:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 80022c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022c8 <gethex>:
 80022c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022ca:	af03      	add	r7, sp, #12
 80022cc:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80022d0:	b085      	sub	sp, #20
 80022d2:	6805      	ldr	r5, [r0, #0]
 80022d4:	468c      	mov	ip, r1
 80022d6:	2100      	movs	r1, #0
 80022d8:	186e      	adds	r6, r5, r1
 80022da:	3101      	adds	r1, #1
 80022dc:	78b4      	ldrb	r4, [r6, #2]
 80022de:	2c30      	cmp	r4, #48	; 0x30
 80022e0:	d0fa      	beq.n	80022d8 <gethex+0x10>
 80022e2:	f649 2a60 	movw	sl, #39520	; 0x9a60
 80022e6:	440d      	add	r5, r1
 80022e8:	e9cd 3203 	strd	r3, r2, [sp, #12]
 80022ec:	f6c0 0a00 	movt	sl, #2048	; 0x800
 80022f0:	f105 0b01 	add.w	fp, r5, #1
 80022f4:	f81a 6004 	ldrb.w	r6, [sl, r4]
 80022f8:	b196      	cbz	r6, 8002320 <gethex+0x58>
 80022fa:	46e0      	mov	r8, ip
 80022fc:	f04f 0e00 	mov.w	lr, #0
 8002300:	f04f 0c00 	mov.w	ip, #0
 8002304:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8002308:	f10b 0501 	add.w	r5, fp, #1
 800230c:	b33e      	cbz	r6, 800235e <gethex+0x96>
 800230e:	f815 4b01 	ldrb.w	r4, [r5], #1
 8002312:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8002316:	2e00      	cmp	r6, #0
 8002318:	d1f9      	bne.n	800230e <gethex+0x46>
 800231a:	f1a5 0901 	sub.w	r9, r5, #1
 800231e:	e01f      	b.n	8002360 <gethex+0x98>
 8002320:	3901      	subs	r1, #1
 8002322:	2c2e      	cmp	r4, #46	; 0x2e
 8002324:	d136      	bne.n	8002394 <gethex+0xcc>
 8002326:	46ae      	mov	lr, r5
 8002328:	f81e 4f02 	ldrb.w	r4, [lr, #2]!
 800232c:	f81a 6004 	ldrb.w	r6, [sl, r4]
 8002330:	b3b6      	cbz	r6, 80023a0 <gethex+0xd8>
 8002332:	2c30      	cmp	r4, #48	; 0x30
 8002334:	46f3      	mov	fp, lr
 8002336:	d106      	bne.n	8002346 <gethex+0x7e>
 8002338:	1ce9      	adds	r1, r5, #3
 800233a:	f811 4b01 	ldrb.w	r4, [r1], #1
 800233e:	2c30      	cmp	r4, #48	; 0x30
 8002340:	d0fb      	beq.n	800233a <gethex+0x72>
 8002342:	f1a1 0b01 	sub.w	fp, r1, #1
 8002346:	f81a 1004 	ldrb.w	r1, [sl, r4]
 800234a:	46e0      	mov	r8, ip
 800234c:	f04f 0c00 	mov.w	ip, #0
 8002350:	2900      	cmp	r1, #0
 8002352:	f04f 0101 	mov.w	r1, #1
 8002356:	bf08      	it	eq
 8002358:	f04f 0c01 	moveq.w	ip, #1
 800235c:	e7d2      	b.n	8002304 <gethex+0x3c>
 800235e:	46d9      	mov	r9, fp
 8002360:	f1be 0f00 	cmp.w	lr, #0
 8002364:	4663      	mov	r3, ip
 8002366:	46c4      	mov	ip, r8
 8002368:	bf08      	it	eq
 800236a:	2c2e      	cmpeq	r4, #46	; 0x2e
 800236c:	d109      	bne.n	8002382 <gethex+0xba>
 800236e:	f1a5 0901 	sub.w	r9, r5, #1
 8002372:	f819 4f01 	ldrb.w	r4, [r9, #1]!
 8002376:	f81a 6004 	ldrb.w	r6, [sl, r4]
 800237a:	2e00      	cmp	r6, #0
 800237c:	d1f9      	bne.n	8002372 <gethex+0xaa>
 800237e:	46ae      	mov	lr, r5
 8002380:	e002      	b.n	8002388 <gethex+0xc0>
 8002382:	f1be 0f00 	cmp.w	lr, #0
 8002386:	d009      	beq.n	800239c <gethex+0xd4>
 8002388:	eba9 020e 	sub.w	r2, r9, lr
 800238c:	2600      	movs	r6, #0
 800238e:	eba6 0682 	sub.w	r6, r6, r2, lsl #2
 8002392:	e008      	b.n	80023a6 <gethex+0xde>
 8002394:	2301      	movs	r3, #1
 8002396:	2600      	movs	r6, #0
 8002398:	46d9      	mov	r9, fp
 800239a:	e004      	b.n	80023a6 <gethex+0xde>
 800239c:	2600      	movs	r6, #0
 800239e:	e002      	b.n	80023a6 <gethex+0xde>
 80023a0:	2301      	movs	r3, #1
 80023a2:	2600      	movs	r6, #0
 80023a4:	46f1      	mov	r9, lr
 80023a6:	f044 0220 	orr.w	r2, r4, #32
 80023aa:	2a70      	cmp	r2, #112	; 0x70
 80023ac:	d10b      	bne.n	80023c6 <gethex+0xfe>
 80023ae:	f899 2001 	ldrb.w	r2, [r9, #1]
 80023b2:	2500      	movs	r5, #0
 80023b4:	2a2b      	cmp	r2, #43	; 0x2b
 80023b6:	d002      	beq.n	80023be <gethex+0xf6>
 80023b8:	2a2d      	cmp	r2, #45	; 0x2d
 80023ba:	d109      	bne.n	80023d0 <gethex+0x108>
 80023bc:	2501      	movs	r5, #1
 80023be:	f899 2002 	ldrb.w	r2, [r9, #2]
 80023c2:	2402      	movs	r4, #2
 80023c4:	e005      	b.n	80023d2 <gethex+0x10a>
 80023c6:	f04f 0800 	mov.w	r8, #0
 80023ca:	464c      	mov	r4, r9
 80023cc:	2500      	movs	r5, #0
 80023ce:	e045      	b.n	800245c <gethex+0x194>
 80023d0:	2401      	movs	r4, #1
 80023d2:	f81a e002 	ldrb.w	lr, [sl, r2]
 80023d6:	f1ae 0201 	sub.w	r2, lr, #1
 80023da:	b2d2      	uxtb	r2, r2
 80023dc:	2a18      	cmp	r2, #24
 80023de:	d903      	bls.n	80023e8 <gethex+0x120>
 80023e0:	f04f 0800 	mov.w	r8, #0
 80023e4:	464c      	mov	r4, r9
 80023e6:	e039      	b.n	800245c <gethex+0x194>
 80023e8:	9602      	str	r6, [sp, #8]
 80023ea:	e9cd 5c00 	strd	r5, ip, [sp]
 80023ee:	eb09 0504 	add.w	r5, r9, r4
 80023f2:	f04f 0800 	mov.w	r8, #0
 80023f6:	462c      	mov	r4, r5
 80023f8:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 80023fc:	f81a 6002 	ldrb.w	r6, [sl, r2]
 8002400:	1e72      	subs	r2, r6, #1
 8002402:	fa5f fc82 	uxtb.w	ip, r2
 8002406:	f1ae 0210 	sub.w	r2, lr, #16
 800240a:	f1bc 0f18 	cmp.w	ip, #24
 800240e:	d81c      	bhi.n	800244a <gethex+0x182>
 8002410:	1cac      	adds	r4, r5, #2
 8002412:	469c      	mov	ip, r3
 8002414:	2500      	movs	r5, #0
 8002416:	ebb8 6fd2 	cmp.w	r8, r2, lsr #27
 800241a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800241e:	ea4f 0242 	mov.w	r2, r2, lsl #1
 8002422:	bf18      	it	ne
 8002424:	2501      	movne	r5, #1
 8002426:	fa52 fe86 	uxtab	lr, r2, r6
 800242a:	f814 6b01 	ldrb.w	r6, [r4], #1
 800242e:	f1ae 0210 	sub.w	r2, lr, #16
 8002432:	f81a 6006 	ldrb.w	r6, [sl, r6]
 8002436:	1e73      	subs	r3, r6, #1
 8002438:	b2db      	uxtb	r3, r3
 800243a:	2b19      	cmp	r3, #25
 800243c:	d3eb      	bcc.n	8002416 <gethex+0x14e>
 800243e:	46a8      	mov	r8, r5
 8002440:	9d01      	ldr	r5, [sp, #4]
 8002442:	4663      	mov	r3, ip
 8002444:	3c01      	subs	r4, #1
 8002446:	46ac      	mov	ip, r5
 8002448:	e001      	b.n	800244e <gethex+0x186>
 800244a:	f8dd c004 	ldr.w	ip, [sp, #4]
 800244e:	9d00      	ldr	r5, [sp, #0]
 8002450:	2d00      	cmp	r5, #0
 8002452:	bf18      	it	ne
 8002454:	f1ce 0210 	rsbne	r2, lr, #16
 8002458:	9e02      	ldr	r6, [sp, #8]
 800245a:	4416      	add	r6, r2
 800245c:	2900      	cmp	r1, #0
 800245e:	bf08      	it	eq
 8002460:	f1ab 0401 	subeq.w	r4, fp, #1
 8002464:	2b00      	cmp	r3, #0
 8002466:	6004      	str	r4, [r0, #0]
 8002468:	d109      	bne.n	800247e <gethex+0x1b6>
 800246a:	f1b8 0f00 	cmp.w	r8, #0
 800246e:	d00d      	beq.n	800248c <gethex+0x1c4>
 8002470:	b335      	cbz	r5, 80024c0 <gethex+0x1f8>
 8002472:	4664      	mov	r4, ip
 8002474:	f002 fb80 	bl	8004b78 <__errno>
 8002478:	46a4      	mov	ip, r4
 800247a:	2122      	movs	r1, #34	; 0x22
 800247c:	6001      	str	r1, [r0, #0]
 800247e:	2000      	movs	r0, #0
 8002480:	e9cc 0000 	strd	r0, r0, [ip]
 8002484:	b005      	add	sp, #20
 8002486:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800248a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800248c:	ea6f 000b 	mvn.w	r0, fp
 8002490:	2500      	movs	r5, #0
 8002492:	9602      	str	r6, [sp, #8]
 8002494:	4448      	add	r0, r9
 8002496:	2808      	cmp	r0, #8
 8002498:	db07      	blt.n	80024aa <gethex+0x1e2>
 800249a:	0841      	lsrs	r1, r0, #1
 800249c:	280f      	cmp	r0, #15
 800249e:	f105 0501 	add.w	r5, r5, #1
 80024a2:	4608      	mov	r0, r1
 80024a4:	d8f9      	bhi.n	800249a <gethex+0x1d2>
 80024a6:	2d07      	cmp	r5, #7
 80024a8:	dc30      	bgt.n	800250c <gethex+0x244>
 80024aa:	f640 302c 	movw	r0, #2860	; 0xb2c
 80024ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024b2:	f850 4025 	ldr.w	r4, [r0, r5, lsl #2]
 80024b6:	b174      	cbz	r4, 80024d6 <gethex+0x20e>
 80024b8:	6821      	ldr	r1, [r4, #0]
 80024ba:	f840 1025 	str.w	r1, [r0, r5, lsl #2]
 80024be:	e042      	b.n	8002546 <gethex+0x27e>
 80024c0:	9904      	ldr	r1, [sp, #16]
 80024c2:	9803      	ldr	r0, [sp, #12]
 80024c4:	2901      	cmp	r1, #1
 80024c6:	f000 8131 	beq.w	800272c <gethex+0x464>
 80024ca:	2903      	cmp	r1, #3
 80024cc:	d027      	beq.n	800251e <gethex+0x256>
 80024ce:	2902      	cmp	r1, #2
 80024d0:	d128      	bne.n	8002524 <gethex+0x25c>
 80024d2:	bb38      	cbnz	r0, 8002524 <gethex+0x25c>
 80024d4:	e12a      	b.n	800272c <gethex+0x464>
 80024d6:	f240 0128 	movw	r1, #40	; 0x28
 80024da:	f640 3250 	movw	r2, #2896	; 0xb50
 80024de:	2001      	movs	r0, #1
 80024e0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80024e4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024e8:	fa00 f805 	lsl.w	r8, r0, r5
 80024ec:	201b      	movs	r0, #27
 80024ee:	680c      	ldr	r4, [r1, #0]
 80024f0:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 80024f4:	1aa2      	subs	r2, r4, r2
 80024f6:	10d2      	asrs	r2, r2, #3
 80024f8:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80024fc:	08c0      	lsrs	r0, r0, #3
 80024fe:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8002502:	d818      	bhi.n	8002536 <gethex+0x26e>
 8002504:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 8002508:	6008      	str	r0, [r1, #0]
 800250a:	e01a      	b.n	8002542 <gethex+0x27a>
 800250c:	2001      	movs	r0, #1
 800250e:	4666      	mov	r6, ip
 8002510:	fa00 f805 	lsl.w	r8, r0, r5
 8002514:	201b      	movs	r0, #27
 8002516:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 800251a:	08c0      	lsrs	r0, r0, #3
 800251c:	e00c      	b.n	8002538 <gethex+0x270>
 800251e:	2800      	cmp	r0, #0
 8002520:	f040 8104 	bne.w	800272c <gethex+0x464>
 8002524:	f244 007f 	movw	r0, #16511	; 0x407f
 8002528:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800252c:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 8002530:	e9cc 1000 	strd	r1, r0, [ip]
 8002534:	e7a6      	b.n	8002484 <gethex+0x1bc>
 8002536:	4666      	mov	r6, ip
 8002538:	00c0      	lsls	r0, r0, #3
 800253a:	f002 fb6b 	bl	8004c14 <malloc>
 800253e:	4604      	mov	r4, r0
 8002540:	46b4      	mov	ip, r6
 8002542:	e9c4 5801 	strd	r5, r8, [r4, #4]
 8002546:	f104 0814 	add.w	r8, r4, #20
 800254a:	2100      	movs	r1, #0
 800254c:	2200      	movs	r2, #0
 800254e:	4640      	mov	r0, r8
 8002550:	e9c4 1103 	strd	r1, r1, [r4, #12]
 8002554:	45d9      	cmp	r9, fp
 8002556:	d811      	bhi.n	800257c <gethex+0x2b4>
 8002558:	e015      	b.n	8002586 <gethex+0x2be>
 800255a:	2a20      	cmp	r2, #32
 800255c:	bf01      	itttt	eq
 800255e:	f840 1b04 	streq.w	r1, [r0], #4
 8002562:	f899 3000 	ldrbeq.w	r3, [r9]
 8002566:	2100      	moveq	r1, #0
 8002568:	2200      	moveq	r2, #0
 800256a:	f81a 3003 	ldrb.w	r3, [sl, r3]
 800256e:	f003 030f 	and.w	r3, r3, #15
 8002572:	4093      	lsls	r3, r2
 8002574:	3204      	adds	r2, #4
 8002576:	4319      	orrs	r1, r3
 8002578:	45d9      	cmp	r9, fp
 800257a:	d904      	bls.n	8002586 <gethex+0x2be>
 800257c:	f819 3d01 	ldrb.w	r3, [r9, #-1]!
 8002580:	2b2e      	cmp	r3, #46	; 0x2e
 8002582:	d0f9      	beq.n	8002578 <gethex+0x2b0>
 8002584:	e7e9      	b.n	800255a <gethex+0x292>
 8002586:	f840 1b04 	str.w	r1, [r0], #4
 800258a:	2600      	movs	r6, #0
 800258c:	2210      	movs	r2, #16
 800258e:	eba0 0308 	sub.w	r3, r0, r8
 8002592:	ebb6 4f11 	cmp.w	r6, r1, lsr #16
 8002596:	ea4f 00a3 	mov.w	r0, r3, asr #2
 800259a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 800259e:	6120      	str	r0, [r4, #16]
 80025a0:	bf08      	it	eq
 80025a2:	0409      	lsleq	r1, r1, #16
 80025a4:	bf18      	it	ne
 80025a6:	2200      	movne	r2, #0
 80025a8:	ebb6 6f11 	cmp.w	r6, r1, lsr #24
 80025ac:	bf04      	itt	eq
 80025ae:	f042 0208 	orreq.w	r2, r2, #8
 80025b2:	0209      	lsleq	r1, r1, #8
 80025b4:	ebb6 7f11 	cmp.w	r6, r1, lsr #28
 80025b8:	bf04      	itt	eq
 80025ba:	f042 0204 	orreq.w	r2, r2, #4
 80025be:	0109      	lsleq	r1, r1, #4
 80025c0:	ebb6 7f91 	cmp.w	r6, r1, lsr #30
 80025c4:	bf04      	itt	eq
 80025c6:	f042 0202 	orreq.w	r2, r2, #2
 80025ca:	0089      	lsleq	r1, r1, #2
 80025cc:	2900      	cmp	r1, #0
 80025ce:	db03      	blt.n	80025d8 <gethex+0x310>
 80025d0:	0049      	lsls	r1, r1, #1
 80025d2:	bf4c      	ite	mi
 80025d4:	3201      	addmi	r2, #1
 80025d6:	2220      	movpl	r2, #32
 80025d8:	1a99      	subs	r1, r3, r2
 80025da:	2939      	cmp	r1, #57	; 0x39
 80025dc:	db17      	blt.n	800260e <gethex+0x346>
 80025de:	f1a1 0638 	sub.w	r6, r1, #56	; 0x38
 80025e2:	4603      	mov	r3, r0
 80025e4:	1172      	asrs	r2, r6, #5
 80025e6:	4282      	cmp	r2, r0
 80025e8:	dc2a      	bgt.n	8002640 <gethex+0x378>
 80025ea:	da28      	bge.n	800263e <gethex+0x376>
 80025ec:	f016 031f 	ands.w	r3, r6, #31
 80025f0:	d025      	beq.n	800263e <gethex+0x376>
 80025f2:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 80025f6:	46e6      	mov	lr, ip
 80025f8:	f8d5 c014 	ldr.w	ip, [r5, #20]
 80025fc:	fa2c f503 	lsr.w	r5, ip, r3
 8002600:	fa05 f303 	lsl.w	r3, r5, r3
 8002604:	4563      	cmp	r3, ip
 8002606:	46f4      	mov	ip, lr
 8002608:	4613      	mov	r3, r2
 800260a:	d019      	beq.n	8002640 <gethex+0x378>
 800260c:	e022      	b.n	8002654 <gethex+0x38c>
 800260e:	2938      	cmp	r1, #56	; 0x38
 8002610:	d105      	bne.n	800261e <gethex+0x356>
 8002612:	9e02      	ldr	r6, [sp, #8]
 8002614:	f04f 0900 	mov.w	r9, #0
 8002618:	2e7f      	cmp	r6, #127	; 0x7f
 800261a:	da59      	bge.n	80026d0 <gethex+0x408>
 800261c:	e062      	b.n	80026e4 <gethex+0x41c>
 800261e:	f1c1 0638 	rsb	r6, r1, #56	; 0x38
 8002622:	4620      	mov	r0, r4
 8002624:	4664      	mov	r4, ip
 8002626:	4631      	mov	r1, r6
 8002628:	f000 fab4 	bl	8002b94 <lshift>
 800262c:	46a4      	mov	ip, r4
 800262e:	4604      	mov	r4, r0
 8002630:	9802      	ldr	r0, [sp, #8]
 8002632:	f04f 0900 	mov.w	r9, #0
 8002636:	f104 0814 	add.w	r8, r4, #20
 800263a:	1b80      	subs	r0, r0, r6
 800263c:	e045      	b.n	80026ca <gethex+0x402>
 800263e:	4613      	mov	r3, r2
 8002640:	eb04 0283 	add.w	r2, r4, r3, lsl #2
 8002644:	3210      	adds	r2, #16
 8002646:	1d13      	adds	r3, r2, #4
 8002648:	4543      	cmp	r3, r8
 800264a:	d923      	bls.n	8002694 <gethex+0x3cc>
 800264c:	f852 3904 	ldr.w	r3, [r2], #-4
 8002650:	2b00      	cmp	r3, #0
 8002652:	d0f8      	beq.n	8002646 <gethex+0x37e>
 8002654:	f1a1 0239 	sub.w	r2, r1, #57	; 0x39
 8002658:	46e2      	mov	sl, ip
 800265a:	f04f 0901 	mov.w	r9, #1
 800265e:	f002 0c1f 	and.w	ip, r2, #31
 8002662:	1152      	asrs	r2, r2, #5
 8002664:	eb04 0582 	add.w	r5, r4, r2, lsl #2
 8002668:	fa09 f30c 	lsl.w	r3, r9, ip
 800266c:	696d      	ldr	r5, [r5, #20]
 800266e:	421d      	tst	r5, r3
 8002670:	d024      	beq.n	80026bc <gethex+0x3f4>
 8002672:	293a      	cmp	r1, #58	; 0x3a
 8002674:	db20      	blt.n	80026b8 <gethex+0x3f0>
 8002676:	4282      	cmp	r2, r0
 8002678:	dc11      	bgt.n	800269e <gethex+0x3d6>
 800267a:	f1bc 0f00 	cmp.w	ip, #0
 800267e:	d00d      	beq.n	800269c <gethex+0x3d4>
 8002680:	4282      	cmp	r2, r0
 8002682:	da0b      	bge.n	800269c <gethex+0x3d4>
 8002684:	fa25 f00c 	lsr.w	r0, r5, ip
 8002688:	fa00 f00c 	lsl.w	r0, r0, ip
 800268c:	42a8      	cmp	r0, r5
 800268e:	4610      	mov	r0, r2
 8002690:	d005      	beq.n	800269e <gethex+0x3d6>
 8002692:	e00e      	b.n	80026b2 <gethex+0x3ea>
 8002694:	46e2      	mov	sl, ip
 8002696:	f04f 0900 	mov.w	r9, #0
 800269a:	e00f      	b.n	80026bc <gethex+0x3f4>
 800269c:	4610      	mov	r0, r2
 800269e:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80026a2:	3010      	adds	r0, #16
 80026a4:	1d01      	adds	r1, r0, #4
 80026a6:	4541      	cmp	r1, r8
 80026a8:	d906      	bls.n	80026b8 <gethex+0x3f0>
 80026aa:	f850 1904 	ldr.w	r1, [r0], #-4
 80026ae:	2900      	cmp	r1, #0
 80026b0:	d0f8      	beq.n	80026a4 <gethex+0x3dc>
 80026b2:	f04f 0903 	mov.w	r9, #3
 80026b6:	e001      	b.n	80026bc <gethex+0x3f4>
 80026b8:	f04f 0902 	mov.w	r9, #2
 80026bc:	4620      	mov	r0, r4
 80026be:	4631      	mov	r1, r6
 80026c0:	f000 fa01 	bl	8002ac6 <rshift>
 80026c4:	9802      	ldr	r0, [sp, #8]
 80026c6:	46d4      	mov	ip, sl
 80026c8:	4430      	add	r0, r6
 80026ca:	4606      	mov	r6, r0
 80026cc:	2e7f      	cmp	r6, #127	; 0x7f
 80026ce:	db09      	blt.n	80026e4 <gethex+0x41c>
 80026d0:	b364      	cbz	r4, 800272c <gethex+0x464>
 80026d2:	6860      	ldr	r0, [r4, #4]
 80026d4:	2808      	cmp	r0, #8
 80026d6:	db20      	blt.n	800271a <gethex+0x452>
 80026d8:	4620      	mov	r0, r4
 80026da:	4664      	mov	r4, ip
 80026dc:	f002 faa2 	bl	8004c24 <free>
 80026e0:	46a4      	mov	ip, r4
 80026e2:	e023      	b.n	800272c <gethex+0x464>
 80026e4:	f116 0fba 	cmn.w	r6, #186	; 0xba
 80026e8:	dc10      	bgt.n	800270c <gethex+0x444>
 80026ea:	f06f 00b8 	mvn.w	r0, #184	; 0xb8
 80026ee:	1b86      	subs	r6, r0, r6
 80026f0:	2e38      	cmp	r6, #56	; 0x38
 80026f2:	db26      	blt.n	8002742 <gethex+0x47a>
 80026f4:	2c00      	cmp	r4, #0
 80026f6:	f43f aebc 	beq.w	8002472 <gethex+0x1aa>
 80026fa:	6860      	ldr	r0, [r4, #4]
 80026fc:	2808      	cmp	r0, #8
 80026fe:	db3f      	blt.n	8002780 <gethex+0x4b8>
 8002700:	4620      	mov	r0, r4
 8002702:	4664      	mov	r4, ip
 8002704:	f002 fa8e 	bl	8004c24 <free>
 8002708:	46a4      	mov	ip, r4
 800270a:	e6b2      	b.n	8002472 <gethex+0x1aa>
 800270c:	f04f 0b18 	mov.w	fp, #24
 8002710:	2500      	movs	r5, #0
 8002712:	f1b9 0f00 	cmp.w	r9, #0
 8002716:	d173      	bne.n	8002800 <gethex+0x538>
 8002718:	e0ec      	b.n	80028f4 <gethex+0x62c>
 800271a:	f640 312c 	movw	r1, #2860	; 0xb2c
 800271e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002722:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8002726:	6022      	str	r2, [r4, #0]
 8002728:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 800272c:	4664      	mov	r4, ip
 800272e:	f002 fa23 	bl	8004b78 <__errno>
 8002732:	2122      	movs	r1, #34	; 0x22
 8002734:	6001      	str	r1, [r0, #0]
 8002736:	f44f 40ff 	mov.w	r0, #32640	; 0x7f80
 800273a:	2100      	movs	r1, #0
 800273c:	e9c4 1000 	strd	r1, r0, [r4]
 8002740:	e6a0      	b.n	8002484 <gethex+0x1bc>
 8002742:	f1b9 0f00 	cmp.w	r9, #0
 8002746:	f1a6 0a01 	sub.w	sl, r6, #1
 800274a:	f04f 0b01 	mov.w	fp, #1
 800274e:	f04f 0901 	mov.w	r9, #1
 8002752:	d133      	bne.n	80027bc <gethex+0x4f4>
 8002754:	2e02      	cmp	r6, #2
 8002756:	db2d      	blt.n	80027b4 <gethex+0x4ec>
 8002758:	6921      	ldr	r1, [r4, #16]
 800275a:	ea4f 106a 	mov.w	r0, sl, asr #5
 800275e:	4288      	cmp	r0, r1
 8002760:	dc19      	bgt.n	8002796 <gethex+0x4ce>
 8002762:	da17      	bge.n	8002794 <gethex+0x4cc>
 8002764:	f01a 011f 	ands.w	r1, sl, #31
 8002768:	d014      	beq.n	8002794 <gethex+0x4cc>
 800276a:	eb04 0280 	add.w	r2, r4, r0, lsl #2
 800276e:	6952      	ldr	r2, [r2, #20]
 8002770:	fa22 f301 	lsr.w	r3, r2, r1
 8002774:	fa03 f101 	lsl.w	r1, r3, r1
 8002778:	4291      	cmp	r1, r2
 800277a:	4601      	mov	r1, r0
 800277c:	d00b      	beq.n	8002796 <gethex+0x4ce>
 800277e:	e016      	b.n	80027ae <gethex+0x4e6>
 8002780:	f640 312c 	movw	r1, #2860	; 0xb2c
 8002784:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002788:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800278c:	6022      	str	r2, [r4, #0]
 800278e:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 8002792:	e66e      	b.n	8002472 <gethex+0x1aa>
 8002794:	4601      	mov	r1, r0
 8002796:	eb04 0181 	add.w	r1, r4, r1, lsl #2
 800279a:	f104 0014 	add.w	r0, r4, #20
 800279e:	3110      	adds	r1, #16
 80027a0:	1d0a      	adds	r2, r1, #4
 80027a2:	4282      	cmp	r2, r0
 80027a4:	d906      	bls.n	80027b4 <gethex+0x4ec>
 80027a6:	f851 2904 	ldr.w	r2, [r1], #-4
 80027aa:	2a00      	cmp	r2, #0
 80027ac:	d0f8      	beq.n	80027a0 <gethex+0x4d8>
 80027ae:	f04f 0901 	mov.w	r9, #1
 80027b2:	e001      	b.n	80027b8 <gethex+0x4f0>
 80027b4:	f04f 0900 	mov.w	r9, #0
 80027b8:	f04f 0b01 	mov.w	fp, #1
 80027bc:	f8cd c004 	str.w	ip, [sp, #4]
 80027c0:	ea4f 106a 	mov.w	r0, sl, asr #5
 80027c4:	4631      	mov	r1, r6
 80027c6:	f858 5020 	ldr.w	r5, [r8, r0, lsl #2]
 80027ca:	4620      	mov	r0, r4
 80027cc:	f000 f97b 	bl	8002ac6 <rshift>
 80027d0:	f00a 001f 	and.w	r0, sl, #31
 80027d4:	f1c6 0138 	rsb	r1, r6, #56	; 0x38
 80027d8:	f06f 06b8 	mvn.w	r6, #184	; 0xb8
 80027dc:	fa0b f000 	lsl.w	r0, fp, r0
 80027e0:	f001 0b1f 	and.w	fp, r1, #31
 80027e4:	4205      	tst	r5, r0
 80027e6:	f04f 0501 	mov.w	r5, #1
 80027ea:	d004      	beq.n	80027f6 <gethex+0x52e>
 80027ec:	f8dd c004 	ldr.w	ip, [sp, #4]
 80027f0:	f049 0902 	orr.w	r9, r9, #2
 80027f4:	e004      	b.n	8002800 <gethex+0x538>
 80027f6:	f8dd c004 	ldr.w	ip, [sp, #4]
 80027fa:	f1b9 0f00 	cmp.w	r9, #0
 80027fe:	d079      	beq.n	80028f4 <gethex+0x62c>
 8002800:	9804      	ldr	r0, [sp, #16]
 8002802:	2803      	cmp	r0, #3
 8002804:	d012      	beq.n	800282c <gethex+0x564>
 8002806:	2802      	cmp	r0, #2
 8002808:	d00b      	beq.n	8002822 <gethex+0x55a>
 800280a:	2801      	cmp	r0, #1
 800280c:	d172      	bne.n	80028f4 <gethex+0x62c>
 800280e:	ea5f 7089 	movs.w	r0, r9, lsl #30
 8002812:	d56f      	bpl.n	80028f4 <gethex+0x62c>
 8002814:	f8d8 0000 	ldr.w	r0, [r8]
 8002818:	ea40 0009 	orr.w	r0, r0, r9
 800281c:	07c0      	lsls	r0, r0, #31
 800281e:	d108      	bne.n	8002832 <gethex+0x56a>
 8002820:	e068      	b.n	80028f4 <gethex+0x62c>
 8002822:	9803      	ldr	r0, [sp, #12]
 8002824:	f1c0 0001 	rsb	r0, r0, #1
 8002828:	b918      	cbnz	r0, 8002832 <gethex+0x56a>
 800282a:	e063      	b.n	80028f4 <gethex+0x62c>
 800282c:	9803      	ldr	r0, [sp, #12]
 800282e:	2800      	cmp	r0, #0
 8002830:	d060      	beq.n	80028f4 <gethex+0x62c>
 8002832:	f8d4 8010 	ldr.w	r8, [r4, #16]
 8002836:	f104 0014 	add.w	r0, r4, #20
 800283a:	2200      	movs	r2, #0
 800283c:	eb00 0188 	add.w	r1, r0, r8, lsl #2
 8002840:	6803      	ldr	r3, [r0, #0]
 8002842:	3301      	adds	r3, #1
 8002844:	d11c      	bne.n	8002880 <gethex+0x5b8>
 8002846:	f840 2b04 	str.w	r2, [r0], #4
 800284a:	4288      	cmp	r0, r1
 800284c:	d3f8      	bcc.n	8002840 <gethex+0x578>
 800284e:	68a0      	ldr	r0, [r4, #8]
 8002850:	4580      	cmp	r8, r0
 8002852:	db47      	blt.n	80028e4 <gethex+0x61c>
 8002854:	6860      	ldr	r0, [r4, #4]
 8002856:	e9cd b601 	strd	fp, r6, [sp, #4]
 800285a:	f100 0a01 	add.w	sl, r0, #1
 800285e:	f1ba 0f07 	cmp.w	sl, #7
 8002862:	dc10      	bgt.n	8002886 <gethex+0x5be>
 8002864:	f640 302c 	movw	r0, #2860	; 0xb2c
 8002868:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800286c:	f850 602a 	ldr.w	r6, [r0, sl, lsl #2]
 8002870:	2e00      	cmp	r6, #0
 8002872:	f000 80d0 	beq.w	8002a16 <gethex+0x74e>
 8002876:	6831      	ldr	r1, [r6, #0]
 8002878:	46e3      	mov	fp, ip
 800287a:	f840 102a 	str.w	r1, [r0, sl, lsl #2]
 800287e:	e010      	b.n	80028a2 <gethex+0x5da>
 8002880:	6003      	str	r3, [r0, #0]
 8002882:	bbbd      	cbnz	r5, 80028f4 <gethex+0x62c>
 8002884:	e04e      	b.n	8002924 <gethex+0x65c>
 8002886:	2001      	movs	r0, #1
 8002888:	46e3      	mov	fp, ip
 800288a:	fa00 f90a 	lsl.w	r9, r0, sl
 800288e:	201b      	movs	r0, #27
 8002890:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8002894:	08c0      	lsrs	r0, r0, #3
 8002896:	00c0      	lsls	r0, r0, #3
 8002898:	f002 f9bc 	bl	8004c14 <malloc>
 800289c:	4606      	mov	r6, r0
 800289e:	e9c6 a901 	strd	sl, r9, [r6, #4]
 80028a2:	2100      	movs	r1, #0
 80028a4:	4630      	mov	r0, r6
 80028a6:	2208      	movs	r2, #8
 80028a8:	6131      	str	r1, [r6, #16]
 80028aa:	f840 1f0c 	str.w	r1, [r0, #12]!
 80028ae:	6921      	ldr	r1, [r4, #16]
 80028b0:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 80028b4:	f104 010c 	add.w	r1, r4, #12
 80028b8:	f002 f95c 	bl	8004b74 <__aeabi_memcpy>
 80028bc:	6860      	ldr	r0, [r4, #4]
 80028be:	2808      	cmp	r0, #8
 80028c0:	db03      	blt.n	80028ca <gethex+0x602>
 80028c2:	4620      	mov	r0, r4
 80028c4:	f002 f9ae 	bl	8004c24 <free>
 80028c8:	e008      	b.n	80028dc <gethex+0x614>
 80028ca:	f640 312c 	movw	r1, #2860	; 0xb2c
 80028ce:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80028d2:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 80028d6:	6022      	str	r2, [r4, #0]
 80028d8:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 80028dc:	4634      	mov	r4, r6
 80028de:	46dc      	mov	ip, fp
 80028e0:	e9dd b601 	ldrd	fp, r6, [sp, #4]
 80028e4:	6920      	ldr	r0, [r4, #16]
 80028e6:	1c41      	adds	r1, r0, #1
 80028e8:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80028ec:	6121      	str	r1, [r4, #16]
 80028ee:	2101      	movs	r1, #1
 80028f0:	6141      	str	r1, [r0, #20]
 80028f2:	b1bd      	cbz	r5, 8002924 <gethex+0x65c>
 80028f4:	2c00      	cmp	r4, #0
 80028f6:	f43f adc5 	beq.w	8002484 <gethex+0x1bc>
 80028fa:	6860      	ldr	r0, [r4, #4]
 80028fc:	2808      	cmp	r0, #8
 80028fe:	db07      	blt.n	8002910 <gethex+0x648>
 8002900:	4620      	mov	r0, r4
 8002902:	b005      	add	sp, #20
 8002904:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002908:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 800290c:	f002 b98a 	b.w	8004c24 <free>
 8002910:	f640 312c 	movw	r1, #2860	; 0xb2c
 8002914:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002918:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 800291c:	6022      	str	r2, [r4, #0]
 800291e:	f841 4020 	str.w	r4, [r1, r0, lsl #2]
 8002922:	e5af      	b.n	8002484 <gethex+0x1bc>
 8002924:	6920      	ldr	r0, [r4, #16]
 8002926:	4540      	cmp	r0, r8
 8002928:	dc3e      	bgt.n	80029a8 <gethex+0x6e0>
 800292a:	f1bb 0f00 	cmp.w	fp, #0
 800292e:	d0e4      	beq.n	80028fa <gethex+0x632>
 8002930:	eb04 0188 	add.w	r1, r4, r8, lsl #2
 8002934:	46e1      	mov	r9, ip
 8002936:	f04f 0c00 	mov.w	ip, #0
 800293a:	46b2      	mov	sl, r6
 800293c:	f8d1 e010 	ldr.w	lr, [r1, #16]
 8002940:	2110      	movs	r1, #16
 8002942:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 8002946:	4673      	mov	r3, lr
 8002948:	bf08      	it	eq
 800294a:	041b      	lsleq	r3, r3, #16
 800294c:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 8002950:	461e      	mov	r6, r3
 8002952:	bf08      	it	eq
 8002954:	0236      	lsleq	r6, r6, #8
 8002956:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 800295a:	4635      	mov	r5, r6
 800295c:	bf08      	it	eq
 800295e:	012d      	lsleq	r5, r5, #4
 8002960:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 8002964:	462a      	mov	r2, r5
 8002966:	bf08      	it	eq
 8002968:	0092      	lsleq	r2, r2, #2
 800296a:	ebbc 4f1e 	cmp.w	ip, lr, lsr #16
 800296e:	bf18      	it	ne
 8002970:	2100      	movne	r1, #0
 8002972:	ebbc 6f13 	cmp.w	ip, r3, lsr #24
 8002976:	bf08      	it	eq
 8002978:	f041 0108 	orreq.w	r1, r1, #8
 800297c:	ebbc 7f16 	cmp.w	ip, r6, lsr #28
 8002980:	bf08      	it	eq
 8002982:	f041 0104 	orreq.w	r1, r1, #4
 8002986:	ebbc 7f95 	cmp.w	ip, r5, lsr #30
 800298a:	bf08      	it	eq
 800298c:	f041 0102 	orreq.w	r1, r1, #2
 8002990:	2a00      	cmp	r2, #0
 8002992:	db03      	blt.n	800299c <gethex+0x6d4>
 8002994:	0052      	lsls	r2, r2, #1
 8002996:	bf4c      	ite	mi
 8002998:	3101      	addmi	r1, #1
 800299a:	2120      	movpl	r1, #32
 800299c:	f1cb 0220 	rsb	r2, fp, #32
 80029a0:	46cc      	mov	ip, r9
 80029a2:	4656      	mov	r6, sl
 80029a4:	4291      	cmp	r1, r2
 80029a6:	daa5      	bge.n	80028f4 <gethex+0x62c>
 80029a8:	f104 0114 	add.w	r1, r4, #20
 80029ac:	2801      	cmp	r0, #1
 80029ae:	460b      	mov	r3, r1
 80029b0:	db25      	blt.n	80029fe <gethex+0x736>
 80029b2:	4623      	mov	r3, r4
 80029b4:	2801      	cmp	r0, #1
 80029b6:	f853 2f14 	ldr.w	r2, [r3, #20]!
 80029ba:	ea4f 0252 	mov.w	r2, r2, lsr #1
 80029be:	d101      	bne.n	80029c4 <gethex+0x6fc>
 80029c0:	4608      	mov	r0, r1
 80029c2:	e016      	b.n	80029f2 <gethex+0x72a>
 80029c4:	46b6      	mov	lr, r6
 80029c6:	f06f 0604 	mvn.w	r6, #4
 80029ca:	eb03 0380 	add.w	r3, r3, r0, lsl #2
 80029ce:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 80029d2:	f104 0618 	add.w	r6, r4, #24
 80029d6:	0880      	lsrs	r0, r0, #2
 80029d8:	6835      	ldr	r5, [r6, #0]
 80029da:	ea42 72c5 	orr.w	r2, r2, r5, lsl #31
 80029de:	f846 2c04 	str.w	r2, [r6, #-4]
 80029e2:	3604      	adds	r6, #4
 80029e4:	086a      	lsrs	r2, r5, #1
 80029e6:	429e      	cmp	r6, r3
 80029e8:	d3f6      	bcc.n	80029d8 <gethex+0x710>
 80029ea:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 80029ee:	4676      	mov	r6, lr
 80029f0:	3018      	adds	r0, #24
 80029f2:	4603      	mov	r3, r0
 80029f4:	2a00      	cmp	r2, #0
 80029f6:	f843 2b04 	str.w	r2, [r3], #4
 80029fa:	bf08      	it	eq
 80029fc:	4603      	moveq	r3, r0
 80029fe:	1a5a      	subs	r2, r3, r1
 8002a00:	1090      	asrs	r0, r2, #2
 8002a02:	6120      	str	r0, [r4, #16]
 8002a04:	2000      	movs	r0, #0
 8002a06:	ebb0 0fa2 	cmp.w	r0, r2, asr #2
 8002a0a:	bf08      	it	eq
 8002a0c:	6008      	streq	r0, [r1, #0]
 8002a0e:	2e7d      	cmp	r6, #125	; 0x7d
 8002a10:	f73f ae5f 	bgt.w	80026d2 <gethex+0x40a>
 8002a14:	e771      	b.n	80028fa <gethex+0x632>
 8002a16:	f240 0128 	movw	r1, #40	; 0x28
 8002a1a:	f640 3250 	movw	r2, #2896	; 0xb50
 8002a1e:	2001      	movs	r0, #1
 8002a20:	46e3      	mov	fp, ip
 8002a22:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a26:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a2a:	fa00 f90a 	lsl.w	r9, r0, sl
 8002a2e:	201b      	movs	r0, #27
 8002a30:	680e      	ldr	r6, [r1, #0]
 8002a32:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8002a36:	1ab2      	subs	r2, r6, r2
 8002a38:	10d2      	asrs	r2, r2, #3
 8002a3a:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 8002a3e:	08c0      	lsrs	r0, r0, #3
 8002a40:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8002a44:	f63f af27 	bhi.w	8002896 <gethex+0x5ce>
 8002a48:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 8002a4c:	6008      	str	r0, [r1, #0]
 8002a4e:	e726      	b.n	800289e <gethex+0x5d6>

08002a50 <Balloc>:
 8002a50:	b5b0      	push	{r4, r5, r7, lr}
 8002a52:	af02      	add	r7, sp, #8
 8002a54:	4604      	mov	r4, r0
 8002a56:	2c07      	cmp	r4, #7
 8002a58:	dc0a      	bgt.n	8002a70 <Balloc+0x20>
 8002a5a:	f640 312c 	movw	r1, #2860	; 0xb2c
 8002a5e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a62:	f851 0024 	ldr.w	r0, [r1, r4, lsl #2]
 8002a66:	b198      	cbz	r0, 8002a90 <Balloc+0x40>
 8002a68:	6802      	ldr	r2, [r0, #0]
 8002a6a:	f841 2024 	str.w	r2, [r1, r4, lsl #2]
 8002a6e:	e00b      	b.n	8002a88 <Balloc+0x38>
 8002a70:	2001      	movs	r0, #1
 8002a72:	fa00 f504 	lsl.w	r5, r0, r4
 8002a76:	201b      	movs	r0, #27
 8002a78:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8002a7c:	08c1      	lsrs	r1, r0, #3
 8002a7e:	00c8      	lsls	r0, r1, #3
 8002a80:	f002 f8c8 	bl	8004c14 <malloc>
 8002a84:	e9c0 4501 	strd	r4, r5, [r0, #4]
 8002a88:	2100      	movs	r1, #0
 8002a8a:	e9c0 1103 	strd	r1, r1, [r0, #12]
 8002a8e:	bdb0      	pop	{r4, r5, r7, pc}
 8002a90:	f240 0228 	movw	r2, #40	; 0x28
 8002a94:	2001      	movs	r0, #1
 8002a96:	f640 3350 	movw	r3, #2896	; 0xb50
 8002a9a:	fa00 f504 	lsl.w	r5, r0, r4
 8002a9e:	201b      	movs	r0, #27
 8002aa0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002aa4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002aa8:	eb00 0185 	add.w	r1, r0, r5, lsl #2
 8002aac:	6810      	ldr	r0, [r2, #0]
 8002aae:	1ac3      	subs	r3, r0, r3
 8002ab0:	10db      	asrs	r3, r3, #3
 8002ab2:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 8002ab6:	08c9      	lsrs	r1, r1, #3
 8002ab8:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 8002abc:	d8df      	bhi.n	8002a7e <Balloc+0x2e>
 8002abe:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 8002ac2:	6011      	str	r1, [r2, #0]
 8002ac4:	e7de      	b.n	8002a84 <Balloc+0x34>

08002ac6 <rshift>:
 8002ac6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002ac8:	af03      	add	r7, sp, #12
 8002aca:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8002ace:	6904      	ldr	r4, [r0, #16]
 8002ad0:	ea4f 1e61 	mov.w	lr, r1, asr #5
 8002ad4:	f100 0c14 	add.w	ip, r0, #20
 8002ad8:	4662      	mov	r2, ip
 8002ada:	45a6      	cmp	lr, r4
 8002adc:	da4d      	bge.n	8002b7a <rshift+0xb4>
 8002ade:	eb0c 0384 	add.w	r3, ip, r4, lsl #2
 8002ae2:	f011 091f 	ands.w	r9, r1, #31
 8002ae6:	d024      	beq.n	8002b32 <rshift+0x6c>
 8002ae8:	eb0c 058e 	add.w	r5, ip, lr, lsl #2
 8002aec:	f855 1b04 	ldr.w	r1, [r5], #4
 8002af0:	fa21 f109 	lsr.w	r1, r1, r9
 8002af4:	429d      	cmp	r5, r3
 8002af6:	d239      	bcs.n	8002b6c <rshift+0xa6>
 8002af8:	f06f 0604 	mvn.w	r6, #4
 8002afc:	f1c9 0520 	rsb	r5, r9, #32
 8002b00:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8002b04:	f100 0618 	add.w	r6, r0, #24
 8002b08:	eba4 048e 	sub.w	r4, r4, lr, lsl #2
 8002b0c:	f024 0403 	bic.w	r4, r4, #3
 8002b10:	eb06 0804 	add.w	r8, r6, r4
 8002b14:	ea4f 048e 	mov.w	r4, lr, lsl #2
 8002b18:	59a2      	ldr	r2, [r4, r6]
 8002b1a:	40aa      	lsls	r2, r5
 8002b1c:	4311      	orrs	r1, r2
 8002b1e:	f846 1c04 	str.w	r1, [r6, #-4]
 8002b22:	59a1      	ldr	r1, [r4, r6]
 8002b24:	3604      	adds	r6, #4
 8002b26:	1932      	adds	r2, r6, r4
 8002b28:	429a      	cmp	r2, r3
 8002b2a:	fa21 f109 	lsr.w	r1, r1, r9
 8002b2e:	d3f3      	bcc.n	8002b18 <rshift+0x52>
 8002b30:	e01d      	b.n	8002b6e <rshift+0xa8>
 8002b32:	eb00 0484 	add.w	r4, r0, r4, lsl #2
 8002b36:	f100 0118 	add.w	r1, r0, #24
 8002b3a:	4666      	mov	r6, ip
 8002b3c:	eb01 028e 	add.w	r2, r1, lr, lsl #2
 8002b40:	3414      	adds	r4, #20
 8002b42:	42a2      	cmp	r2, r4
 8002b44:	bf88      	it	hi
 8002b46:	4614      	movhi	r4, r2
 8002b48:	f06f 0214 	mvn.w	r2, #20
 8002b4c:	1a12      	subs	r2, r2, r0
 8002b4e:	eba2 028e 	sub.w	r2, r2, lr, lsl #2
 8002b52:	4422      	add	r2, r4
 8002b54:	f022 0203 	bic.w	r2, r2, #3
 8002b58:	440a      	add	r2, r1
 8002b5a:	ea4f 018e 	mov.w	r1, lr, lsl #2
 8002b5e:	598d      	ldr	r5, [r1, r6]
 8002b60:	f846 5b04 	str.w	r5, [r6], #4
 8002b64:	1875      	adds	r5, r6, r1
 8002b66:	429d      	cmp	r5, r3
 8002b68:	d3f9      	bcc.n	8002b5e <rshift+0x98>
 8002b6a:	e006      	b.n	8002b7a <rshift+0xb4>
 8002b6c:	46e0      	mov	r8, ip
 8002b6e:	4642      	mov	r2, r8
 8002b70:	2900      	cmp	r1, #0
 8002b72:	f842 1b04 	str.w	r1, [r2], #4
 8002b76:	bf08      	it	eq
 8002b78:	4642      	moveq	r2, r8
 8002b7a:	eba2 010c 	sub.w	r1, r2, ip
 8002b7e:	108a      	asrs	r2, r1, #2
 8002b80:	6102      	str	r2, [r0, #16]
 8002b82:	2000      	movs	r0, #0
 8002b84:	ebb0 0fa1 	cmp.w	r0, r1, asr #2
 8002b88:	bf08      	it	eq
 8002b8a:	f8cc 0000 	streq.w	r0, [ip]
 8002b8e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002b92:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b94 <lshift>:
 8002b94:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002b96:	af03      	add	r7, sp, #12
 8002b98:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002b9c:	b081      	sub	sp, #4
 8002b9e:	4682      	mov	sl, r0
 8002ba0:	4689      	mov	r9, r1
 8002ba2:	e9da 0101 	ldrd	r0, r1, [sl, #4]
 8002ba6:	f8da 2010 	ldr.w	r2, [sl, #16]
 8002baa:	ea4f 1669 	mov.w	r6, r9, asr #5
 8002bae:	eb02 1b69 	add.w	fp, r2, r9, asr #5
 8002bb2:	458b      	cmp	fp, r1
 8002bb4:	db06      	blt.n	8002bc4 <lshift+0x30>
 8002bb6:	004a      	lsls	r2, r1, #1
 8002bb8:	ebbb 0f41 	cmp.w	fp, r1, lsl #1
 8002bbc:	f100 0001 	add.w	r0, r0, #1
 8002bc0:	4611      	mov	r1, r2
 8002bc2:	daf8      	bge.n	8002bb6 <lshift+0x22>
 8002bc4:	f7ff ff44 	bl	8002a50 <Balloc>
 8002bc8:	4680      	mov	r8, r0
 8002bca:	2e01      	cmp	r6, #1
 8002bcc:	f108 0014 	add.w	r0, r8, #20
 8002bd0:	db05      	blt.n	8002bde <lshift+0x4a>
 8002bd2:	00b1      	lsls	r1, r6, #2
 8002bd4:	f001 ffca 	bl	8004b6c <__aeabi_memclr>
 8002bd8:	eb08 0086 	add.w	r0, r8, r6, lsl #2
 8002bdc:	3014      	adds	r0, #20
 8002bde:	f8da 1010 	ldr.w	r1, [sl, #16]
 8002be2:	f10a 0214 	add.w	r2, sl, #20
 8002be6:	f10b 0e01 	add.w	lr, fp, #1
 8002bea:	f019 091f 	ands.w	r9, r9, #31
 8002bee:	eb02 0381 	add.w	r3, r2, r1, lsl #2
 8002bf2:	d025      	beq.n	8002c40 <lshift+0xac>
 8002bf4:	eb0a 0181 	add.w	r1, sl, r1, lsl #2
 8002bf8:	f10a 0418 	add.w	r4, sl, #24
 8002bfc:	f06f 0514 	mvn.w	r5, #20
 8002c00:	3114      	adds	r1, #20
 8002c02:	eba5 050a 	sub.w	r5, r5, sl
 8002c06:	42a1      	cmp	r1, r4
 8002c08:	bf88      	it	hi
 8002c0a:	460c      	movhi	r4, r1
 8002c0c:	1961      	adds	r1, r4, r5
 8002c0e:	2501      	movs	r5, #1
 8002c10:	2400      	movs	r4, #0
 8002c12:	eb05 0c91 	add.w	ip, r5, r1, lsr #2
 8002c16:	f1c9 0120 	rsb	r1, r9, #32
 8002c1a:	4605      	mov	r5, r0
 8002c1c:	6816      	ldr	r6, [r2, #0]
 8002c1e:	fa06 f609 	lsl.w	r6, r6, r9
 8002c22:	4334      	orrs	r4, r6
 8002c24:	f845 4b04 	str.w	r4, [r5], #4
 8002c28:	f852 4b04 	ldr.w	r4, [r2], #4
 8002c2c:	40cc      	lsrs	r4, r1
 8002c2e:	429a      	cmp	r2, r3
 8002c30:	d3f4      	bcc.n	8002c1c <lshift+0x88>
 8002c32:	2c00      	cmp	r4, #0
 8002c34:	f840 402c 	str.w	r4, [r0, ip, lsl #2]
 8002c38:	bf18      	it	ne
 8002c3a:	f10b 0e02 	addne.w	lr, fp, #2
 8002c3e:	e005      	b.n	8002c4c <lshift+0xb8>
 8002c40:	f852 1b04 	ldr.w	r1, [r2], #4
 8002c44:	f840 1b04 	str.w	r1, [r0], #4
 8002c48:	429a      	cmp	r2, r3
 8002c4a:	d3f9      	bcc.n	8002c40 <lshift+0xac>
 8002c4c:	f1ae 0001 	sub.w	r0, lr, #1
 8002c50:	f8c8 0010 	str.w	r0, [r8, #16]
 8002c54:	4650      	mov	r0, sl
 8002c56:	f000 f805 	bl	8002c64 <Bfree>
 8002c5a:	4640      	mov	r0, r8
 8002c5c:	b001      	add	sp, #4
 8002c5e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002c62:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002c64 <Bfree>:
 8002c64:	2800      	cmp	r0, #0
 8002c66:	bf08      	it	eq
 8002c68:	4770      	bxeq	lr
 8002c6a:	6841      	ldr	r1, [r0, #4]
 8002c6c:	2908      	cmp	r1, #8
 8002c6e:	bfa8      	it	ge
 8002c70:	f001 bfd8 	bge.w	8004c24 <free>
 8002c74:	f640 322c 	movw	r2, #2860	; 0xb2c
 8002c78:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c7c:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 8002c80:	6003      	str	r3, [r0, #0]
 8002c82:	f842 0021 	str.w	r0, [r2, r1, lsl #2]
 8002c86:	4770      	bx	lr

08002c88 <strtod>:
 8002c88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002c8a:	af03      	add	r7, sp, #12
 8002c8c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002c90:	b081      	sub	sp, #4
 8002c92:	ed2d 8b10 	vpush	{d8-d15}
 8002c96:	b098      	sub	sp, #96	; 0x60
 8002c98:	4689      	mov	r9, r1
 8002c9a:	2100      	movs	r1, #0
 8002c9c:	f100 0b01 	add.w	fp, r0, #1
 8002ca0:	e9cd 110c 	strd	r1, r1, [sp, #48]	; 0x30
 8002ca4:	f1ab 0101 	sub.w	r1, fp, #1
 8002ca8:	910f      	str	r1, [sp, #60]	; 0x3c
 8002caa:	f81b 6c01 	ldrb.w	r6, [fp, #-1]
 8002cae:	2e2d      	cmp	r6, #45	; 0x2d
 8002cb0:	d834      	bhi.n	8002d1c <strtod+0x94>
 8002cb2:	e8df f016 	tbh	[pc, r6, lsl #1]
 8002cb6:	01f6      	.short	0x01f6
 8002cb8:	00330033 	.word	0x00330033
 8002cbc:	00330033 	.word	0x00330033
 8002cc0:	00330033 	.word	0x00330033
 8002cc4:	00330033 	.word	0x00330033
 8002cc8:	002e002e 	.word	0x002e002e
 8002ccc:	002e002e 	.word	0x002e002e
 8002cd0:	0033002e 	.word	0x0033002e
 8002cd4:	00330033 	.word	0x00330033
 8002cd8:	00330033 	.word	0x00330033
 8002cdc:	00330033 	.word	0x00330033
 8002ce0:	00330033 	.word	0x00330033
 8002ce4:	00330033 	.word	0x00330033
 8002ce8:	00330033 	.word	0x00330033
 8002cec:	00330033 	.word	0x00330033
 8002cf0:	00330033 	.word	0x00330033
 8002cf4:	002e0033 	.word	0x002e0033
 8002cf8:	00330033 	.word	0x00330033
 8002cfc:	00330033 	.word	0x00330033
 8002d00:	00330033 	.word	0x00330033
 8002d04:	00330033 	.word	0x00330033
 8002d08:	00330033 	.word	0x00330033
 8002d0c:	00330031 	.word	0x00330031
 8002d10:	0036      	.short	0x0036
 8002d12:	f10b 0b01 	add.w	fp, fp, #1
 8002d16:	e7c5      	b.n	8002ca4 <strtod+0x1c>
 8002d18:	2300      	movs	r3, #0
 8002d1a:	e003      	b.n	8002d24 <strtod+0x9c>
 8002d1c:	2300      	movs	r3, #0
 8002d1e:	468b      	mov	fp, r1
 8002d20:	e007      	b.n	8002d32 <strtod+0xaa>
 8002d22:	2301      	movs	r3, #1
 8002d24:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8002d28:	f89b 6000 	ldrb.w	r6, [fp]
 8002d2c:	2e00      	cmp	r6, #0
 8002d2e:	f000 81b8 	beq.w	80030a2 <strtod+0x41a>
 8002d32:	2e30      	cmp	r6, #48	; 0x30
 8002d34:	9308      	str	r3, [sp, #32]
 8002d36:	d10b      	bne.n	8002d50 <strtod+0xc8>
 8002d38:	f89b 1001 	ldrb.w	r1, [fp, #1]
 8002d3c:	f041 0120 	orr.w	r1, r1, #32
 8002d40:	2978      	cmp	r1, #120	; 0x78
 8002d42:	d166      	bne.n	8002e12 <strtod+0x18a>
 8002d44:	a80f      	add	r0, sp, #60	; 0x3c
 8002d46:	a90c      	add	r1, sp, #48	; 0x30
 8002d48:	2201      	movs	r2, #1
 8002d4a:	f7ff fabd 	bl	80022c8 <gethex>
 8002d4e:	e1ab      	b.n	80030a8 <strtod+0x420>
 8002d50:	f04f 0e00 	mov.w	lr, #0
 8002d54:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002d58:	2400      	movs	r4, #0
 8002d5a:	b2c9      	uxtb	r1, r1
 8002d5c:	2909      	cmp	r1, #9
 8002d5e:	d830      	bhi.n	8002dc2 <strtod+0x13a>
 8002d60:	f04f 0a00 	mov.w	sl, #0
 8002d64:	2500      	movs	r5, #0
 8002d66:	2d08      	cmp	r5, #8
 8002d68:	dc06      	bgt.n	8002d78 <strtod+0xf0>
 8002d6a:	eb0a 018a 	add.w	r1, sl, sl, lsl #2
 8002d6e:	eb06 0141 	add.w	r1, r6, r1, lsl #1
 8002d72:	f1a1 0a30 	sub.w	sl, r1, #48	; 0x30
 8002d76:	e007      	b.n	8002d88 <strtod+0x100>
 8002d78:	2d10      	cmp	r5, #16
 8002d7a:	bfde      	ittt	le
 8002d7c:	eb04 0184 	addle.w	r1, r4, r4, lsl #2
 8002d80:	eb06 0141 	addle.w	r1, r6, r1, lsl #1
 8002d84:	f1a1 0430 	suble.w	r4, r1, #48	; 0x30
 8002d88:	eb0b 0105 	add.w	r1, fp, r5
 8002d8c:	3501      	adds	r5, #1
 8002d8e:	1c4a      	adds	r2, r1, #1
 8002d90:	920f      	str	r2, [sp, #60]	; 0x3c
 8002d92:	784e      	ldrb	r6, [r1, #1]
 8002d94:	f1a6 0130 	sub.w	r1, r6, #48	; 0x30
 8002d98:	b2c9      	uxtb	r1, r1
 8002d9a:	290a      	cmp	r1, #10
 8002d9c:	d3e3      	bcc.n	8002d66 <strtod+0xde>
 8002d9e:	eb0b 0c05 	add.w	ip, fp, r5
 8002da2:	45dc      	cmp	ip, fp
 8002da4:	d911      	bls.n	8002dca <strtod+0x142>
 8002da6:	2100      	movs	r1, #0
 8002da8:	910b      	str	r1, [sp, #44]	; 0x2c
 8002daa:	4661      	mov	r1, ip
 8002dac:	f811 2d01 	ldrb.w	r2, [r1, #-1]!
 8002db0:	2a30      	cmp	r2, #48	; 0x30
 8002db2:	d10c      	bne.n	8002dce <strtod+0x146>
 8002db4:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002db6:	4559      	cmp	r1, fp
 8002db8:	f102 0201 	add.w	r2, r2, #1
 8002dbc:	920b      	str	r2, [sp, #44]	; 0x2c
 8002dbe:	d8f5      	bhi.n	8002dac <strtod+0x124>
 8002dc0:	e005      	b.n	8002dce <strtod+0x146>
 8002dc2:	46dc      	mov	ip, fp
 8002dc4:	f04f 0a00 	mov.w	sl, #0
 8002dc8:	2500      	movs	r5, #0
 8002dca:	2100      	movs	r1, #0
 8002dcc:	910b      	str	r1, [sp, #44]	; 0x2c
 8002dce:	2e2e      	cmp	r6, #46	; 0x2e
 8002dd0:	d118      	bne.n	8002e04 <strtod+0x17c>
 8002dd2:	f10c 0301 	add.w	r3, ip, #1
 8002dd6:	f8cd e018 	str.w	lr, [sp, #24]
 8002dda:	ebab 010c 	sub.w	r1, fp, ip
 8002dde:	2d00      	cmp	r5, #0
 8002de0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002de2:	eba3 020b 	sub.w	r2, r3, fp
 8002de6:	f89c 6001 	ldrb.w	r6, [ip, #1]
 8002dea:	eb02 0e01 	add.w	lr, r2, r1
 8002dee:	f04f 0100 	mov.w	r1, #0
 8002df2:	950a      	str	r5, [sp, #40]	; 0x28
 8002df4:	f8cd e014 	str.w	lr, [sp, #20]
 8002df8:	d01a      	beq.n	8002e30 <strtod+0x1a8>
 8002dfa:	46a8      	mov	r8, r5
 8002dfc:	2200      	movs	r2, #0
 8002dfe:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
 8002e02:	e02f      	b.n	8002e64 <strtod+0x1dc>
 8002e04:	2100      	movs	r1, #0
 8002e06:	2200      	movs	r2, #0
 8002e08:	46a8      	mov	r8, r5
 8002e0a:	9107      	str	r1, [sp, #28]
 8002e0c:	2100      	movs	r1, #0
 8002e0e:	9205      	str	r2, [sp, #20]
 8002e10:	e067      	b.n	8002ee2 <strtod+0x25a>
 8002e12:	f10b 0101 	add.w	r1, fp, #1
 8002e16:	910f      	str	r1, [sp, #60]	; 0x3c
 8002e18:	f811 6b01 	ldrb.w	r6, [r1], #1
 8002e1c:	2e30      	cmp	r6, #48	; 0x30
 8002e1e:	d0fa      	beq.n	8002e16 <strtod+0x18e>
 8002e20:	2e00      	cmp	r6, #0
 8002e22:	f000 8141 	beq.w	80030a8 <strtod+0x420>
 8002e26:	f1a1 0b01 	sub.w	fp, r1, #1
 8002e2a:	f04f 0e01 	mov.w	lr, #1
 8002e2e:	e791      	b.n	8002d54 <strtod+0xcc>
 8002e30:	2e30      	cmp	r6, #48	; 0x30
 8002e32:	d10a      	bne.n	8002e4a <strtod+0x1c2>
 8002e34:	eb0c 0201 	add.w	r2, ip, r1
 8002e38:	3101      	adds	r1, #1
 8002e3a:	1c93      	adds	r3, r2, #2
 8002e3c:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e3e:	7896      	ldrb	r6, [r2, #2]
 8002e40:	2e30      	cmp	r6, #48	; 0x30
 8002e42:	d0f7      	beq.n	8002e34 <strtod+0x1ac>
 8002e44:	eb0c 0201 	add.w	r2, ip, r1
 8002e48:	1c53      	adds	r3, r2, #1
 8002e4a:	f1a6 0231 	sub.w	r2, r6, #49	; 0x31
 8002e4e:	f04f 0800 	mov.w	r8, #0
 8002e52:	9309      	str	r3, [sp, #36]	; 0x24
 8002e54:	2a09      	cmp	r2, #9
 8002e56:	f04f 0200 	mov.w	r2, #0
 8002e5a:	d307      	bcc.n	8002e6c <strtod+0x1e4>
 8002e5c:	469c      	mov	ip, r3
 8002e5e:	2200      	movs	r2, #0
 8002e60:	9207      	str	r2, [sp, #28]
 8002e62:	e03b      	b.n	8002edc <strtod+0x254>
 8002e64:	f1a6 0530 	sub.w	r5, r6, #48	; 0x30
 8002e68:	2d09      	cmp	r5, #9
 8002e6a:	d832      	bhi.n	8002ed2 <strtod+0x24a>
 8002e6c:	4645      	mov	r5, r8
 8002e6e:	469e      	mov	lr, r3
 8002e70:	f1b6 0830 	subs.w	r8, r6, #48	; 0x30
 8002e74:	f102 0301 	add.w	r3, r2, #1
 8002e78:	f000 80a3 	beq.w	8002fc2 <strtod+0x33a>
 8002e7c:	f04f 0c00 	mov.w	ip, #0
 8002e80:	2d09      	cmp	r5, #9
 8002e82:	4419      	add	r1, r3
 8002e84:	f105 0301 	add.w	r3, r5, #1
 8002e88:	bfb8      	it	lt
 8002e8a:	f04f 0c01 	movlt.w	ip, #1
 8002e8e:	2a01      	cmp	r2, #1
 8002e90:	f2c0 809a 	blt.w	8002fc8 <strtod+0x340>
 8002e94:	eb05 0b02 	add.w	fp, r5, r2
 8002e98:	461e      	mov	r6, r3
 8002e9a:	ea5f 73cc 	movs.w	r3, ip, lsl #31
 8002e9e:	d004      	beq.n	8002eaa <strtod+0x222>
 8002ea0:	eb0a 038a 	add.w	r3, sl, sl, lsl #2
 8002ea4:	ea4f 0a43 	mov.w	sl, r3, lsl #1
 8002ea8:	e004      	b.n	8002eb4 <strtod+0x22c>
 8002eaa:	eb04 0384 	add.w	r3, r4, r4, lsl #2
 8002eae:	2e12      	cmp	r6, #18
 8002eb0:	bfb8      	it	lt
 8002eb2:	005c      	lsllt	r4, r3, #1
 8002eb4:	2e09      	cmp	r6, #9
 8002eb6:	f04f 0c00 	mov.w	ip, #0
 8002eba:	f106 0301 	add.w	r3, r6, #1
 8002ebe:	bfb8      	it	lt
 8002ec0:	f04f 0c01 	movlt.w	ip, #1
 8002ec4:	3a01      	subs	r2, #1
 8002ec6:	d1e7      	bne.n	8002e98 <strtod+0x210>
 8002ec8:	f10b 0301 	add.w	r3, fp, #1
 8002ecc:	2e09      	cmp	r6, #9
 8002ece:	db7d      	blt.n	8002fcc <strtod+0x344>
 8002ed0:	e081      	b.n	8002fd6 <strtod+0x34e>
 8002ed2:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002ed6:	9107      	str	r1, [sp, #28]
 8002ed8:	469c      	mov	ip, r3
 8002eda:	4611      	mov	r1, r2
 8002edc:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002ede:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002ee2:	f046 0220 	orr.w	r2, r6, #32
 8002ee6:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
 8002eea:	2a65      	cmp	r2, #101	; 0x65
 8002eec:	d163      	bne.n	8002fb6 <strtod+0x32e>
 8002eee:	ea48 020e 	orr.w	r2, r8, lr
 8002ef2:	430a      	orrs	r2, r1
 8002ef4:	f000 80d5 	beq.w	80030a2 <strtod+0x41a>
 8002ef8:	f10c 0801 	add.w	r8, ip, #1
 8002efc:	2200      	movs	r2, #0
 8002efe:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
 8002f02:	f89c 3001 	ldrb.w	r3, [ip, #1]
 8002f06:	2b2b      	cmp	r3, #43	; 0x2b
 8002f08:	d002      	beq.n	8002f10 <strtod+0x288>
 8002f0a:	2b2d      	cmp	r3, #45	; 0x2d
 8002f0c:	d106      	bne.n	8002f1c <strtod+0x294>
 8002f0e:	2201      	movs	r2, #1
 8002f10:	f10c 0802 	add.w	r8, ip, #2
 8002f14:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
 8002f18:	f89c 3002 	ldrb.w	r3, [ip, #2]
 8002f1c:	f1a3 0030 	sub.w	r0, r3, #48	; 0x30
 8002f20:	2809      	cmp	r0, #9
 8002f22:	d868      	bhi.n	8002ff6 <strtod+0x36e>
 8002f24:	2b30      	cmp	r3, #48	; 0x30
 8002f26:	d108      	bne.n	8002f3a <strtod+0x2b2>
 8002f28:	f108 0001 	add.w	r0, r8, #1
 8002f2c:	900f      	str	r0, [sp, #60]	; 0x3c
 8002f2e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8002f32:	2b30      	cmp	r3, #48	; 0x30
 8002f34:	d0fa      	beq.n	8002f2c <strtod+0x2a4>
 8002f36:	f1a0 0801 	sub.w	r8, r0, #1
 8002f3a:	f1a3 0031 	sub.w	r0, r3, #49	; 0x31
 8002f3e:	2808      	cmp	r0, #8
 8002f40:	d85b      	bhi.n	8002ffa <strtod+0x372>
 8002f42:	f8cd e018 	str.w	lr, [sp, #24]
 8002f46:	f108 0e01 	add.w	lr, r8, #1
 8002f4a:	3b30      	subs	r3, #48	; 0x30
 8002f4c:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
 8002f50:	f898 6001 	ldrb.w	r6, [r8, #1]
 8002f54:	f1a6 0030 	sub.w	r0, r6, #48	; 0x30
 8002f58:	b2c0      	uxtb	r0, r0
 8002f5a:	2809      	cmp	r0, #9
 8002f5c:	d813      	bhi.n	8002f86 <strtod+0x2fe>
 8002f5e:	f108 0002 	add.w	r0, r8, #2
 8002f62:	9204      	str	r2, [sp, #16]
 8002f64:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8002f68:	900f      	str	r0, [sp, #60]	; 0x3c
 8002f6a:	005b      	lsls	r3, r3, #1
 8002f6c:	fa53 f386 	uxtab	r3, r3, r6
 8002f70:	f810 6b01 	ldrb.w	r6, [r0], #1
 8002f74:	3b30      	subs	r3, #48	; 0x30
 8002f76:	f1a6 0230 	sub.w	r2, r6, #48	; 0x30
 8002f7a:	b2d2      	uxtb	r2, r2
 8002f7c:	2a0a      	cmp	r2, #10
 8002f7e:	d3f1      	bcc.n	8002f64 <strtod+0x2dc>
 8002f80:	9a04      	ldr	r2, [sp, #16]
 8002f82:	f1a0 0e01 	sub.w	lr, r0, #1
 8002f86:	ebae 0008 	sub.w	r0, lr, r8
 8002f8a:	461e      	mov	r6, r3
 8002f8c:	2808      	cmp	r0, #8
 8002f8e:	f644 601f 	movw	r0, #19999	; 0x4e1f
 8002f92:	bfc8      	it	gt
 8002f94:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 8002f98:	4283      	cmp	r3, r0
 8002f9a:	bfc8      	it	gt
 8002f9c:	f644 661f 	movwgt	r6, #19999	; 0x4e1f
 8002fa0:	2a00      	cmp	r2, #0
 8002fa2:	bf18      	it	ne
 8002fa4:	4276      	negne	r6, r6
 8002fa6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002faa:	f8dd e018 	ldr.w	lr, [sp, #24]
 8002fae:	f1b8 0f00 	cmp.w	r8, #0
 8002fb2:	d128      	bne.n	8003006 <strtod+0x37e>
 8002fb4:	e071      	b.n	800309a <strtod+0x412>
 8002fb6:	2600      	movs	r6, #0
 8002fb8:	4684      	mov	ip, r0
 8002fba:	f1b8 0f00 	cmp.w	r8, #0
 8002fbe:	d122      	bne.n	8003006 <strtod+0x37e>
 8002fc0:	e06b      	b.n	800309a <strtod+0x412>
 8002fc2:	461a      	mov	r2, r3
 8002fc4:	46a8      	mov	r8, r5
 8002fc6:	e010      	b.n	8002fea <strtod+0x362>
 8002fc8:	2d08      	cmp	r5, #8
 8002fca:	dc04      	bgt.n	8002fd6 <strtod+0x34e>
 8002fcc:	eb0a 028a 	add.w	r2, sl, sl, lsl #2
 8002fd0:	eb08 0a42 	add.w	sl, r8, r2, lsl #1
 8002fd4:	e005      	b.n	8002fe2 <strtod+0x35a>
 8002fd6:	2b11      	cmp	r3, #17
 8002fd8:	bfdc      	itt	le
 8002fda:	eb04 0284 	addle.w	r2, r4, r4, lsl #2
 8002fde:	eb08 0442 	addle.w	r4, r8, r2, lsl #1
 8002fe2:	4698      	mov	r8, r3
 8002fe4:	2200      	movs	r2, #0
 8002fe6:	2300      	movs	r3, #0
 8002fe8:	930b      	str	r3, [sp, #44]	; 0x2c
 8002fea:	f10e 0301 	add.w	r3, lr, #1
 8002fee:	930f      	str	r3, [sp, #60]	; 0x3c
 8002ff0:	f89e 6001 	ldrb.w	r6, [lr, #1]
 8002ff4:	e736      	b.n	8002e64 <strtod+0x1dc>
 8002ff6:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8002ffa:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002ffe:	2600      	movs	r6, #0
 8003000:	f1b8 0f00 	cmp.w	r8, #0
 8003004:	d049      	beq.n	800309a <strtod+0x412>
 8003006:	4650      	mov	r0, sl
 8003008:	f7fd fa3c 	bl	8000484 <__aeabi_ui2d>
 800300c:	46ac      	mov	ip, r5
 800300e:	ec41 0b10 	vmov	d0, r0, r1
 8003012:	f1b8 0f11 	cmp.w	r8, #17
 8003016:	4645      	mov	r5, r8
 8003018:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800301c:	bfa8      	it	ge
 800301e:	2511      	movge	r5, #17
 8003020:	f1bc 0f00 	cmp.w	ip, #0
 8003024:	bf08      	it	eq
 8003026:	46c4      	moveq	ip, r8
 8003028:	2d0a      	cmp	r5, #10
 800302a:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
 800302e:	db1c      	blt.n	800306a <strtod+0x3e2>
 8003030:	f649 3260 	movw	r2, #39776	; 0x9b60
 8003034:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003038:	eb02 02c5 	add.w	r2, r2, r5, lsl #3
 800303c:	ed12 0b12 	vldr	d0, [r2, #-72]	; 0xffffffb8
 8003040:	ec53 2b10 	vmov	r2, r3, d0
 8003044:	f7fd fa98 	bl	8000578 <__aeabi_dmul>
 8003048:	9006      	str	r0, [sp, #24]
 800304a:	4620      	mov	r0, r4
 800304c:	4688      	mov	r8, r1
 800304e:	f7fd fa19 	bl	8000484 <__aeabi_ui2d>
 8003052:	9a06      	ldr	r2, [sp, #24]
 8003054:	4643      	mov	r3, r8
 8003056:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800305a:	f7fd f8d7 	bl	800020c <__adddf3>
 800305e:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003062:	ec41 0b10 	vmov	d0, r0, r1
 8003066:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800306a:	9807      	ldr	r0, [sp, #28]
 800306c:	f1b8 0f0f 	cmp.w	r8, #15
 8003070:	eba6 0000 	sub.w	r0, r6, r0
 8003074:	dc52      	bgt.n	800311c <strtod+0x494>
 8003076:	b1b8      	cbz	r0, 80030a8 <strtod+0x420>
 8003078:	2801      	cmp	r0, #1
 800307a:	db35      	blt.n	80030e8 <strtod+0x460>
 800307c:	2818      	cmp	r0, #24
 800307e:	4602      	mov	r2, r0
 8003080:	dc46      	bgt.n	8003110 <strtod+0x488>
 8003082:	f649 3060 	movw	r0, #39776	; 0x9b60
 8003086:	f6c0 0000 	movt	r0, #2048	; 0x800
 800308a:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
 800308e:	ed90 1b00 	vldr	d1, [r0]
 8003092:	ec51 0b11 	vmov	r0, r1, d1
 8003096:	f000 bd6e 	b.w	8003b76 <strtod+0xeee>
 800309a:	ea51 000e 	orrs.w	r0, r1, lr
 800309e:	4660      	mov	r0, ip
 80030a0:	d102      	bne.n	80030a8 <strtod+0x420>
 80030a2:	900f      	str	r0, [sp, #60]	; 0x3c
 80030a4:	2000      	movs	r0, #0
 80030a6:	9008      	str	r0, [sp, #32]
 80030a8:	f1b9 0f00 	cmp.w	r9, #0
 80030ac:	ed9f 0bea 	vldr	d0, [pc, #936]	; 8003458 <strtod+0x7d0>
 80030b0:	bf1c      	itt	ne
 80030b2:	980f      	ldrne	r0, [sp, #60]	; 0x3c
 80030b4:	f8c9 0000 	strne.w	r0, [r9]
 80030b8:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 80030bc:	ec51 0b10 	vmov	r0, r1, d0
 80030c0:	ec55 4b11 	vmov	r4, r5, d1
 80030c4:	4622      	mov	r2, r4
 80030c6:	462b      	mov	r3, r5
 80030c8:	f7fd f89e 	bl	8000208 <__aeabi_dsub>
 80030cc:	9a08      	ldr	r2, [sp, #32]
 80030ce:	2a00      	cmp	r2, #0
 80030d0:	bf04      	itt	eq
 80030d2:	4629      	moveq	r1, r5
 80030d4:	4620      	moveq	r0, r4
 80030d6:	ec41 0b10 	vmov	d0, r0, r1
 80030da:	b018      	add	sp, #96	; 0x60
 80030dc:	ecbd 8b10 	vpop	{d8-d15}
 80030e0:	b001      	add	sp, #4
 80030e2:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80030e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80030e8:	f110 0f18 	cmn.w	r0, #24
 80030ec:	db16      	blt.n	800311c <strtod+0x494>
 80030ee:	4601      	mov	r1, r0
 80030f0:	f649 3060 	movw	r0, #39776	; 0x9b60
 80030f4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80030f8:	eba0 00c1 	sub.w	r0, r0, r1, lsl #3
 80030fc:	ed90 1b00 	vldr	d1, [r0]
 8003100:	ec51 0b10 	vmov	r0, r1, d0
 8003104:	ec53 2b11 	vmov	r2, r3, d1
 8003108:	f7fd fb60 	bl	80007cc <__aeabi_ddiv>
 800310c:	f000 bd37 	b.w	8003b7e <strtod+0xef6>
 8003110:	f1c8 0027 	rsb	r0, r8, #39	; 0x27
 8003114:	4282      	cmp	r2, r0
 8003116:	4610      	mov	r0, r2
 8003118:	f340 8517 	ble.w	8003b4a <strtod+0xec2>
 800311c:	4602      	mov	r2, r0
 800311e:	eba8 0005 	sub.w	r0, r8, r5
 8003122:	f8cd 9004 	str.w	r9, [sp, #4]
 8003126:	1814      	adds	r4, r2, r0
 8003128:	9204      	str	r2, [sp, #16]
 800312a:	2c01      	cmp	r4, #1
 800312c:	db21      	blt.n	8003172 <strtod+0x4ea>
 800312e:	f014 000f 	ands.w	r0, r4, #15
 8003132:	d013      	beq.n	800315c <strtod+0x4d4>
 8003134:	f649 3160 	movw	r1, #39776	; 0x9b60
 8003138:	ec53 2b10 	vmov	r2, r3, d0
 800313c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003140:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8003144:	ed90 1b00 	vldr	d1, [r0]
 8003148:	ec51 0b11 	vmov	r0, r1, d1
 800314c:	f7fd fa14 	bl	8000578 <__aeabi_dmul>
 8003150:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003154:	ec41 0b10 	vmov	d0, r0, r1
 8003158:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 800315c:	f024 000f 	bic.w	r0, r4, #15
 8003160:	2800      	cmp	r0, #0
 8003162:	d069      	beq.n	8003238 <strtod+0x5b0>
 8003164:	f5b0 7f9a 	cmp.w	r0, #308	; 0x134
 8003168:	dd2a      	ble.n	80031c0 <strtod+0x538>
 800316a:	f04f 0900 	mov.w	r9, #0
 800316e:	f000 bcc7 	b.w	8003b00 <strtod+0xe78>
 8003172:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003176:	dc5f      	bgt.n	8003238 <strtod+0x5b0>
 8003178:	4264      	negs	r4, r4
 800317a:	f014 000f 	ands.w	r0, r4, #15
 800317e:	d013      	beq.n	80031a8 <strtod+0x520>
 8003180:	f649 3160 	movw	r1, #39776	; 0x9b60
 8003184:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003188:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 800318c:	ed90 1b00 	vldr	d1, [r0]
 8003190:	ec51 0b10 	vmov	r0, r1, d0
 8003194:	ec53 2b11 	vmov	r2, r3, d1
 8003198:	f7fd fb18 	bl	80007cc <__aeabi_ddiv>
 800319c:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80031a0:	ec41 0b10 	vmov	d0, r0, r1
 80031a4:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 80031a8:	2000      	movs	r0, #0
 80031aa:	ebb0 1f24 	cmp.w	r0, r4, asr #4
 80031ae:	d043      	beq.n	8003238 <strtod+0x5b0>
 80031b0:	1125      	asrs	r5, r4, #4
 80031b2:	2d03      	cmp	r5, #3
 80031b4:	f340 851d 	ble.w	8003bf2 <strtod+0xf6a>
 80031b8:	f04f 0900 	mov.w	r9, #0
 80031bc:	f000 bdfd 	b.w	8003dba <strtod+0x1132>
 80031c0:	2c20      	cmp	r4, #32
 80031c2:	d31c      	bcc.n	80031fe <strtod+0x576>
 80031c4:	f649 4590 	movw	r5, #40080	; 0x9c90
 80031c8:	0926      	lsrs	r6, r4, #4
 80031ca:	2400      	movs	r4, #0
 80031cc:	f6c0 0500 	movt	r5, #2048	; 0x800
 80031d0:	07f0      	lsls	r0, r6, #31
 80031d2:	d00b      	beq.n	80031ec <strtod+0x564>
 80031d4:	ed95 1b00 	vldr	d1, [r5]
 80031d8:	ec53 2b10 	vmov	r2, r3, d0
 80031dc:	ec51 0b11 	vmov	r0, r1, d1
 80031e0:	f7fd f9ca 	bl	8000578 <__aeabi_dmul>
 80031e4:	ec41 0b10 	vmov	d0, r0, r1
 80031e8:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 80031ec:	0870      	lsrs	r0, r6, #1
 80031ee:	2e03      	cmp	r6, #3
 80031f0:	f105 0508 	add.w	r5, r5, #8
 80031f4:	f104 0401 	add.w	r4, r4, #1
 80031f8:	4606      	mov	r6, r0
 80031fa:	d8e9      	bhi.n	80031d0 <strtod+0x548>
 80031fc:	e000      	b.n	8003200 <strtod+0x578>
 80031fe:	2400      	movs	r4, #0
 8003200:	f649 4090 	movw	r0, #40080	; 0x9c90
 8003204:	f5a1 51e0 	sub.w	r1, r1, #7168	; 0x1c00
 8003208:	f6c0 0000 	movt	r0, #2048	; 0x800
 800320c:	910d      	str	r1, [sp, #52]	; 0x34
 800320e:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 8003212:	ed9d 1b0c 	vldr	d1, [sp, #48]	; 0x30
 8003216:	ed90 0b00 	vldr	d0, [r0]
 800321a:	ec53 2b11 	vmov	r2, r3, d1
 800321e:	ec51 0b10 	vmov	r0, r1, d0
 8003222:	f7fd f9a9 	bl	8000578 <__aeabi_dmul>
 8003226:	ec41 0b10 	vmov	d0, r0, r1
 800322a:	f501 50e0 	add.w	r0, r1, #7168	; 0x1c00
 800322e:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003232:	900d      	str	r0, [sp, #52]	; 0x34
 8003234:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003238:	f108 0008 	add.w	r0, r8, #8
 800323c:	2812      	cmp	r0, #18
 800323e:	db1b      	blt.n	8003278 <strtod+0x5f0>
 8003240:	f648 6139 	movw	r1, #36409	; 0x8e39
 8003244:	2400      	movs	r4, #0
 8003246:	f6c3 01e3 	movt	r1, #14563	; 0x38e3
 800324a:	fb50 f001 	smmul	r0, r0, r1
 800324e:	1041      	asrs	r1, r0, #1
 8003250:	eb01 70d0 	add.w	r0, r1, r0, lsr #31
 8003254:	2101      	movs	r1, #1
 8003256:	004a      	lsls	r2, r1, #1
 8003258:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
 800325c:	f104 0401 	add.w	r4, r4, #1
 8003260:	4611      	mov	r1, r2
 8003262:	dcf8      	bgt.n	8003256 <strtod+0x5ce>
 8003264:	2c07      	cmp	r4, #7
 8003266:	dd08      	ble.n	800327a <strtod+0x5f2>
 8003268:	2001      	movs	r0, #1
 800326a:	fa00 f504 	lsl.w	r5, r0, r4
 800326e:	201b      	movs	r0, #27
 8003270:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8003274:	08c0      	lsrs	r0, r0, #3
 8003276:	e02b      	b.n	80032d0 <strtod+0x648>
 8003278:	2400      	movs	r4, #0
 800327a:	f640 302c 	movw	r0, #2860	; 0xb2c
 800327e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003282:	f850 9024 	ldr.w	r9, [r0, r4, lsl #2]
 8003286:	f1b9 0f00 	cmp.w	r9, #0
 800328a:	d004      	beq.n	8003296 <strtod+0x60e>
 800328c:	f8d9 1000 	ldr.w	r1, [r9]
 8003290:	f840 1024 	str.w	r1, [r0, r4, lsl #2]
 8003294:	e024      	b.n	80032e0 <strtod+0x658>
 8003296:	f240 0128 	movw	r1, #40	; 0x28
 800329a:	f640 3250 	movw	r2, #2896	; 0xb50
 800329e:	2001      	movs	r0, #1
 80032a0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80032a4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80032a8:	fa00 f504 	lsl.w	r5, r0, r4
 80032ac:	201b      	movs	r0, #27
 80032ae:	f8d1 9000 	ldr.w	r9, [r1]
 80032b2:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 80032b6:	eba9 0202 	sub.w	r2, r9, r2
 80032ba:	10d2      	asrs	r2, r2, #3
 80032bc:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 80032c0:	08c0      	lsrs	r0, r0, #3
 80032c2:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80032c6:	d803      	bhi.n	80032d0 <strtod+0x648>
 80032c8:	eb09 00c0 	add.w	r0, r9, r0, lsl #3
 80032cc:	6008      	str	r0, [r1, #0]
 80032ce:	e005      	b.n	80032dc <strtod+0x654>
 80032d0:	00c0      	lsls	r0, r0, #3
 80032d2:	f001 fc9f 	bl	8004c14 <malloc>
 80032d6:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80032da:	4681      	mov	r9, r0
 80032dc:	e9c9 4501 	strd	r4, r5, [r9, #4]
 80032e0:	f1bc 0f0a 	cmp.w	ip, #10
 80032e4:	f04f 0000 	mov.w	r0, #0
 80032e8:	f04f 0101 	mov.w	r1, #1
 80032ec:	f109 020c 	add.w	r2, r9, #12
 80032f0:	e882 0403 	stmia.w	r2, {r0, r1, sl}
 80032f4:	f2c0 809e 	blt.w	8003434 <strtod+0x7ac>
 80032f8:	f10b 0e09 	add.w	lr, fp, #9
 80032fc:	f04f 0809 	mov.w	r8, #9
 8003300:	f04f 0a0a 	mov.w	sl, #10
 8003304:	2501      	movs	r5, #1
 8003306:	e021      	b.n	800334c <strtod+0x6c4>
 8003308:	f240 0228 	movw	r2, #40	; 0x28
 800330c:	2001      	movs	r0, #1
 800330e:	f640 3150 	movw	r1, #2896	; 0xb50
 8003312:	fa00 f306 	lsl.w	r3, r0, r6
 8003316:	201b      	movs	r0, #27
 8003318:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800331c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003320:	eb00 0c83 	add.w	ip, r0, r3, lsl #2
 8003324:	6810      	ldr	r0, [r2, #0]
 8003326:	ea4f 02dc 	mov.w	r2, ip, lsr #3
 800332a:	1a41      	subs	r1, r0, r1
 800332c:	10c9      	asrs	r1, r1, #3
 800332e:	eb01 01dc 	add.w	r1, r1, ip, lsr #3
 8003332:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8003336:	d807      	bhi.n	8003348 <strtod+0x6c0>
 8003338:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 800333c:	f240 0228 	movw	r2, #40	; 0x28
 8003340:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003344:	6011      	str	r1, [r2, #0]
 8003346:	e03a      	b.n	80033be <strtod+0x736>
 8003348:	9306      	str	r3, [sp, #24]
 800334a:	e034      	b.n	80033b6 <strtod+0x72e>
 800334c:	f89e 0000 	ldrb.w	r0, [lr]
 8003350:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 8003354:	2000      	movs	r0, #0
 8003356:	17d1      	asrs	r1, r2, #31
 8003358:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 800335c:	460c      	mov	r4, r1
 800335e:	3001      	adds	r0, #1
 8003360:	2100      	movs	r1, #0
 8003362:	695e      	ldr	r6, [r3, #20]
 8003364:	42a8      	cmp	r0, r5
 8003366:	fbe6 240a 	umlal	r2, r4, r6, sl
 800336a:	615a      	str	r2, [r3, #20]
 800336c:	4622      	mov	r2, r4
 800336e:	dbf3      	blt.n	8003358 <strtod+0x6d0>
 8003370:	f10e 0e01 	add.w	lr, lr, #1
 8003374:	2c00      	cmp	r4, #0
 8003376:	d050      	beq.n	800341a <strtod+0x792>
 8003378:	f8d9 0008 	ldr.w	r0, [r9, #8]
 800337c:	4285      	cmp	r5, r0
 800337e:	db46      	blt.n	800340e <strtod+0x786>
 8003380:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003384:	f8cd e01c 	str.w	lr, [sp, #28]
 8003388:	1c46      	adds	r6, r0, #1
 800338a:	2e07      	cmp	r6, #7
 800338c:	dc0b      	bgt.n	80033a6 <strtod+0x71e>
 800338e:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003392:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003396:	f851 0026 	ldr.w	r0, [r1, r6, lsl #2]
 800339a:	2800      	cmp	r0, #0
 800339c:	d0b4      	beq.n	8003308 <strtod+0x680>
 800339e:	6802      	ldr	r2, [r0, #0]
 80033a0:	f841 2026 	str.w	r2, [r1, r6, lsl #2]
 80033a4:	e00d      	b.n	80033c2 <strtod+0x73a>
 80033a6:	2001      	movs	r0, #1
 80033a8:	fa00 f106 	lsl.w	r1, r0, r6
 80033ac:	201b      	movs	r0, #27
 80033ae:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80033b2:	9106      	str	r1, [sp, #24]
 80033b4:	08c2      	lsrs	r2, r0, #3
 80033b6:	00d0      	lsls	r0, r2, #3
 80033b8:	f001 fc2c 	bl	8004c14 <malloc>
 80033bc:	9b06      	ldr	r3, [sp, #24]
 80033be:	e9c0 6301 	strd	r6, r3, [r0, #4]
 80033c2:	2100      	movs	r1, #0
 80033c4:	4606      	mov	r6, r0
 80033c6:	2208      	movs	r2, #8
 80033c8:	6101      	str	r1, [r0, #16]
 80033ca:	f840 1f0c 	str.w	r1, [r0, #12]!
 80033ce:	f8d9 1010 	ldr.w	r1, [r9, #16]
 80033d2:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 80033d6:	f109 010c 	add.w	r1, r9, #12
 80033da:	f001 fbcb 	bl	8004b74 <__aeabi_memcpy>
 80033de:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80033e2:	2808      	cmp	r0, #8
 80033e4:	db03      	blt.n	80033ee <strtod+0x766>
 80033e6:	4648      	mov	r0, r9
 80033e8:	f001 fc1c 	bl	8004c24 <free>
 80033ec:	e00a      	b.n	8003404 <strtod+0x77c>
 80033ee:	f640 312c 	movw	r1, #2860	; 0xb2c
 80033f2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80033f6:	460a      	mov	r2, r1
 80033f8:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80033fc:	f8c9 1000 	str.w	r1, [r9]
 8003400:	f842 9020 	str.w	r9, [r2, r0, lsl #2]
 8003404:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003408:	f8dd e01c 	ldr.w	lr, [sp, #28]
 800340c:	46b1      	mov	r9, r6
 800340e:	eb09 0085 	add.w	r0, r9, r5, lsl #2
 8003412:	3501      	adds	r5, #1
 8003414:	6144      	str	r4, [r0, #20]
 8003416:	f8c9 5010 	str.w	r5, [r9, #16]
 800341a:	f108 0801 	add.w	r8, r8, #1
 800341e:	45e0      	cmp	r8, ip
 8003420:	d194      	bne.n	800334c <strtod+0x6c4>
 8003422:	9905      	ldr	r1, [sp, #20]
 8003424:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8003428:	eb0b 000c 	add.w	r0, fp, ip
 800342c:	1844      	adds	r4, r0, r1
 800342e:	45c4      	cmp	ip, r8
 8003430:	db09      	blt.n	8003446 <strtod+0x7be>
 8003432:	e0c0      	b.n	80035b6 <strtod+0x92e>
 8003434:	9805      	ldr	r0, [sp, #20]
 8003436:	f04f 0c09 	mov.w	ip, #9
 800343a:	4458      	add	r0, fp
 800343c:	f100 0409 	add.w	r4, r0, #9
 8003440:	45c4      	cmp	ip, r8
 8003442:	f280 80b8 	bge.w	80035b6 <strtod+0x92e>
 8003446:	f640 3e2c 	movw	lr, #2860	; 0xb2c
 800344a:	250a      	movs	r5, #10
 800344c:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003450:	e03d      	b.n	80034ce <strtod+0x846>
 8003452:	bf00      	nop
 8003454:	bf00      	nop
 8003456:	bf00      	nop
 8003458:	00000000 	.word	0x00000000
 800345c:	80000000 	.word	0x80000000
 8003460:	00000000 	.word	0x00000000
 8003464:	40000000 	.word	0x40000000
 8003468:	00000000 	.word	0x00000000
 800346c:	3fe00000 	.word	0x3fe00000
 8003470:	94a03595 	.word	0x94a03595
 8003474:	3fdfffff 	.word	0x3fdfffff
 8003478:	35afe535 	.word	0x35afe535
 800347c:	3fe00000 	.word	0x3fe00000
 8003480:	00000000 	.word	0x00000000
 8003484:	3ff00000 	.word	0x3ff00000
 8003488:	00000000 	.word	0x00000000
 800348c:	bff00000 	.word	0xbff00000
 8003490:	f240 0228 	movw	r2, #40	; 0x28
 8003494:	f640 3150 	movw	r1, #2896	; 0xb50
 8003498:	2001      	movs	r0, #1
 800349a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800349e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034a2:	fa00 f308 	lsl.w	r3, r0, r8
 80034a6:	201b      	movs	r0, #27
 80034a8:	6816      	ldr	r6, [r2, #0]
 80034aa:	eb00 0083 	add.w	r0, r0, r3, lsl #2
 80034ae:	1a71      	subs	r1, r6, r1
 80034b0:	10c9      	asrs	r1, r1, #3
 80034b2:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 80034b6:	08c0      	lsrs	r0, r0, #3
 80034b8:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 80034bc:	d804      	bhi.n	80034c8 <strtod+0x840>
 80034be:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
 80034c2:	4664      	mov	r4, ip
 80034c4:	6010      	str	r0, [r2, #0]
 80034c6:	e03c      	b.n	8003542 <strtod+0x8ba>
 80034c8:	9307      	str	r3, [sp, #28]
 80034ca:	4664      	mov	r4, ip
 80034cc:	e034      	b.n	8003538 <strtod+0x8b0>
 80034ce:	7820      	ldrb	r0, [r4, #0]
 80034d0:	f8d9 a010 	ldr.w	sl, [r9, #16]
 80034d4:	f1a0 0230 	sub.w	r2, r0, #48	; 0x30
 80034d8:	2000      	movs	r0, #0
 80034da:	17d1      	asrs	r1, r2, #31
 80034dc:	eb09 0380 	add.w	r3, r9, r0, lsl #2
 80034e0:	468b      	mov	fp, r1
 80034e2:	3001      	adds	r0, #1
 80034e4:	2100      	movs	r1, #0
 80034e6:	695e      	ldr	r6, [r3, #20]
 80034e8:	4550      	cmp	r0, sl
 80034ea:	fbe6 2b05 	umlal	r2, fp, r6, r5
 80034ee:	615a      	str	r2, [r3, #20]
 80034f0:	465a      	mov	r2, fp
 80034f2:	dbf3      	blt.n	80034dc <strtod+0x854>
 80034f4:	3401      	adds	r4, #1
 80034f6:	f1bb 0f00 	cmp.w	fp, #0
 80034fa:	d058      	beq.n	80035ae <strtod+0x926>
 80034fc:	f8d9 0008 	ldr.w	r0, [r9, #8]
 8003500:	4582      	cmp	sl, r0
 8003502:	db4c      	blt.n	800359e <strtod+0x916>
 8003504:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003508:	940a      	str	r4, [sp, #40]	; 0x28
 800350a:	f100 0801 	add.w	r8, r0, #1
 800350e:	f1b8 0f07 	cmp.w	r8, #7
 8003512:	dc08      	bgt.n	8003526 <strtod+0x89e>
 8003514:	f85e 6028 	ldr.w	r6, [lr, r8, lsl #2]
 8003518:	2e00      	cmp	r6, #0
 800351a:	d0b9      	beq.n	8003490 <strtod+0x808>
 800351c:	6830      	ldr	r0, [r6, #0]
 800351e:	4664      	mov	r4, ip
 8003520:	f84e 0028 	str.w	r0, [lr, r8, lsl #2]
 8003524:	e00f      	b.n	8003546 <strtod+0x8be>
 8003526:	2001      	movs	r0, #1
 8003528:	4664      	mov	r4, ip
 800352a:	fa00 f108 	lsl.w	r1, r0, r8
 800352e:	201b      	movs	r0, #27
 8003530:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003534:	9107      	str	r1, [sp, #28]
 8003536:	08c0      	lsrs	r0, r0, #3
 8003538:	00c0      	lsls	r0, r0, #3
 800353a:	f001 fb6b 	bl	8004c14 <malloc>
 800353e:	9b07      	ldr	r3, [sp, #28]
 8003540:	4606      	mov	r6, r0
 8003542:	e9c6 8301 	strd	r8, r3, [r6, #4]
 8003546:	2100      	movs	r1, #0
 8003548:	4630      	mov	r0, r6
 800354a:	2208      	movs	r2, #8
 800354c:	6131      	str	r1, [r6, #16]
 800354e:	f840 1f0c 	str.w	r1, [r0, #12]!
 8003552:	f8d9 1010 	ldr.w	r1, [r9, #16]
 8003556:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 800355a:	f109 010c 	add.w	r1, r9, #12
 800355e:	f001 fb09 	bl	8004b74 <__aeabi_memcpy>
 8003562:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003566:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800356a:	2808      	cmp	r0, #8
 800356c:	db0a      	blt.n	8003584 <strtod+0x8fc>
 800356e:	4648      	mov	r0, r9
 8003570:	f001 fb58 	bl	8004c24 <free>
 8003574:	46a4      	mov	ip, r4
 8003576:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8003578:	f640 3e2c 	movw	lr, #2860	; 0xb2c
 800357c:	46b1      	mov	r9, r6
 800357e:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003582:	e00c      	b.n	800359e <strtod+0x916>
 8003584:	f640 3e2c 	movw	lr, #2860	; 0xb2c
 8003588:	46a4      	mov	ip, r4
 800358a:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800358e:	f85e 1020 	ldr.w	r1, [lr, r0, lsl #2]
 8003592:	f8c9 1000 	str.w	r1, [r9]
 8003596:	f84e 9020 	str.w	r9, [lr, r0, lsl #2]
 800359a:	46b1      	mov	r9, r6
 800359c:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800359e:	eb09 008a 	add.w	r0, r9, sl, lsl #2
 80035a2:	f8c0 b014 	str.w	fp, [r0, #20]
 80035a6:	f10a 0001 	add.w	r0, sl, #1
 80035aa:	f8c9 0010 	str.w	r0, [r9, #16]
 80035ae:	f10c 0c01 	add.w	ip, ip, #1
 80035b2:	45c4      	cmp	ip, r8
 80035b4:	d18b      	bne.n	80034ce <strtod+0x846>
 80035b6:	9804      	ldr	r0, [sp, #16]
 80035b8:	2100      	movs	r1, #0
 80035ba:	ed1f 9b57 	vldr	d9, [pc, #-348]	; 8003460 <strtod+0x7d8>
 80035be:	ed1f ab56 	vldr	d10, [pc, #-344]	; 8003468 <strtod+0x7e0>
 80035c2:	ed1f bb5b 	vldr	d11, [pc, #-364]	; 8003458 <strtod+0x7d0>
 80035c6:	ed1f db56 	vldr	d13, [pc, #-344]	; 8003470 <strtod+0x7e8>
 80035ca:	ed1f eb55 	vldr	d14, [pc, #-340]	; 8003478 <strtod+0x7f0>
 80035ce:	ed1f fb54 	vldr	d15, [pc, #-336]	; 8003480 <strtod+0x7f8>
 80035d2:	ed1f cb53 	vldr	d12, [pc, #-332]	; 8003488 <strtod+0x800>
 80035d6:	f640 362c 	movw	r6, #2860	; 0xb2c
 80035da:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80035de:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80035e2:	bfc8      	it	gt
 80035e4:	4601      	movgt	r1, r0
 80035e6:	f1c0 0000 	rsb	r0, r0, #0
 80035ea:	9107      	str	r1, [sp, #28]
 80035ec:	bfc8      	it	gt
 80035ee:	2000      	movgt	r0, #0
 80035f0:	9004      	str	r0, [sp, #16]
 80035f2:	f109 000c 	add.w	r0, r9, #12
 80035f6:	9005      	str	r0, [sp, #20]
 80035f8:	e005      	b.n	8003606 <strtod+0x97e>
 80035fa:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80035fe:	f8cb 1000 	str.w	r1, [fp]
 8003602:	f846 b020 	str.w	fp, [r6, r0, lsl #2]
 8003606:	f8d9 4004 	ldr.w	r4, [r9, #4]
 800360a:	2c07      	cmp	r4, #7
 800360c:	dc0a      	bgt.n	8003624 <strtod+0x99c>
 800360e:	f856 0024 	ldr.w	r0, [r6, r4, lsl #2]
 8003612:	4632      	mov	r2, r6
 8003614:	2601      	movs	r6, #1
 8003616:	2800      	cmp	r0, #0
 8003618:	d045      	beq.n	80036a6 <strtod+0xa1e>
 800361a:	6801      	ldr	r1, [r0, #0]
 800361c:	4693      	mov	fp, r2
 800361e:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
 8003622:	e00c      	b.n	800363e <strtod+0x9b6>
 8003624:	46b3      	mov	fp, r6
 8003626:	2601      	movs	r6, #1
 8003628:	201b      	movs	r0, #27
 800362a:	fa06 f504 	lsl.w	r5, r6, r4
 800362e:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 8003632:	08c2      	lsrs	r2, r0, #3
 8003634:	00d0      	lsls	r0, r2, #3
 8003636:	f001 faed 	bl	8004c14 <malloc>
 800363a:	e9c0 4501 	strd	r4, r5, [r0, #4]
 800363e:	2100      	movs	r1, #0
 8003640:	2208      	movs	r2, #8
 8003642:	6101      	str	r1, [r0, #16]
 8003644:	900a      	str	r0, [sp, #40]	; 0x28
 8003646:	f840 1f0c 	str.w	r1, [r0, #12]!
 800364a:	f8d9 1010 	ldr.w	r1, [r9, #16]
 800364e:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8003652:	9905      	ldr	r1, [sp, #20]
 8003654:	f001 fa8e 	bl	8004b74 <__aeabi_memcpy>
 8003658:	a80c      	add	r0, sp, #48	; 0x30
 800365a:	a911      	add	r1, sp, #68	; 0x44
 800365c:	aa10      	add	r2, sp, #64	; 0x40
 800365e:	f000 fcd7 	bl	8004010 <d2b>
 8003662:	f8db 8004 	ldr.w	r8, [fp, #4]
 8003666:	4682      	mov	sl, r0
 8003668:	f1b8 0f00 	cmp.w	r8, #0
 800366c:	d005      	beq.n	800367a <strtod+0x9f2>
 800366e:	f8d8 0000 	ldr.w	r0, [r8]
 8003672:	9904      	ldr	r1, [sp, #16]
 8003674:	f8cb 0004 	str.w	r0, [fp, #4]
 8003678:	e03c      	b.n	80036f4 <strtod+0xa6c>
 800367a:	f240 0228 	movw	r2, #40	; 0x28
 800367e:	f640 3050 	movw	r0, #2896	; 0xb50
 8003682:	2104      	movs	r1, #4
 8003684:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003688:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800368c:	f8d2 8000 	ldr.w	r8, [r2]
 8003690:	eba8 0000 	sub.w	r0, r8, r0
 8003694:	eb01 00e0 	add.w	r0, r1, r0, asr #3
 8003698:	f5b0 7f90 	cmp.w	r0, #288	; 0x120
 800369c:	d820      	bhi.n	80036e0 <strtod+0xa58>
 800369e:	f108 0020 	add.w	r0, r8, #32
 80036a2:	6010      	str	r0, [r2, #0]
 80036a4:	e020      	b.n	80036e8 <strtod+0xa60>
 80036a6:	f240 0828 	movw	r8, #40	; 0x28
 80036aa:	fa06 f504 	lsl.w	r5, r6, r4
 80036ae:	201b      	movs	r0, #27
 80036b0:	4693      	mov	fp, r2
 80036b2:	f640 3150 	movw	r1, #2896	; 0xb50
 80036b6:	f2c2 0800 	movt	r8, #8192	; 0x2000
 80036ba:	eb00 0285 	add.w	r2, r0, r5, lsl #2
 80036be:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036c2:	f8d8 0000 	ldr.w	r0, [r8]
 80036c6:	1a41      	subs	r1, r0, r1
 80036c8:	10c9      	asrs	r1, r1, #3
 80036ca:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 80036ce:	08d2      	lsrs	r2, r2, #3
 80036d0:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 80036d4:	d8ae      	bhi.n	8003634 <strtod+0x9ac>
 80036d6:	eb00 01c2 	add.w	r1, r0, r2, lsl #3
 80036da:	f8c8 1000 	str.w	r1, [r8]
 80036de:	e7ac      	b.n	800363a <strtod+0x9b2>
 80036e0:	2020      	movs	r0, #32
 80036e2:	f001 fa97 	bl	8004c14 <malloc>
 80036e6:	4680      	mov	r8, r0
 80036e8:	9904      	ldr	r1, [sp, #16]
 80036ea:	2002      	movs	r0, #2
 80036ec:	f8c8 6004 	str.w	r6, [r8, #4]
 80036f0:	f8c8 0008 	str.w	r0, [r8, #8]
 80036f4:	2000      	movs	r0, #0
 80036f6:	460d      	mov	r5, r1
 80036f8:	e9c8 0603 	strd	r0, r6, [r8, #12]
 80036fc:	f8c8 6014 	str.w	r6, [r8, #20]
 8003700:	9811      	ldr	r0, [sp, #68]	; 0x44
 8003702:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003706:	bfc8      	it	gt
 8003708:	4405      	addgt	r5, r0
 800370a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800370c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8003710:	f1c3 0239 	rsb	r2, r3, #57	; 0x39
 8003714:	bfd8      	it	le
 8003716:	4403      	addle	r3, r0
 8003718:	9807      	ldr	r0, [sp, #28]
 800371a:	eb05 0b02 	add.w	fp, r5, r2
 800371e:	3039      	adds	r0, #57	; 0x39
 8003720:	1ac4      	subs	r4, r0, r3
 8003722:	45a3      	cmp	fp, r4
 8003724:	4620      	mov	r0, r4
 8003726:	bfb8      	it	lt
 8003728:	4658      	movlt	r0, fp
 800372a:	42a8      	cmp	r0, r5
 800372c:	bfc8      	it	gt
 800372e:	4628      	movgt	r0, r5
 8003730:	2801      	cmp	r0, #1
 8003732:	bfa2      	ittt	ge
 8003734:	1a2d      	subge	r5, r5, r0
 8003736:	1a24      	subge	r4, r4, r0
 8003738:	ebab 0b00 	subge.w	fp, fp, r0
 800373c:	2901      	cmp	r1, #1
 800373e:	db1e      	blt.n	800377e <strtod+0xaf6>
 8003740:	4640      	mov	r0, r8
 8003742:	f000 fd27 	bl	8004194 <pow5mult>
 8003746:	4651      	mov	r1, sl
 8003748:	4680      	mov	r8, r0
 800374a:	f000 fe29 	bl	80043a0 <mult>
 800374e:	4606      	mov	r6, r0
 8003750:	f1ba 0f00 	cmp.w	sl, #0
 8003754:	d012      	beq.n	800377c <strtod+0xaf4>
 8003756:	f8da 0004 	ldr.w	r0, [sl, #4]
 800375a:	2808      	cmp	r0, #8
 800375c:	db03      	blt.n	8003766 <strtod+0xade>
 800375e:	4650      	mov	r0, sl
 8003760:	f001 fa60 	bl	8004c24 <free>
 8003764:	e00a      	b.n	800377c <strtod+0xaf4>
 8003766:	f640 312c 	movw	r1, #2860	; 0xb2c
 800376a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800376e:	460a      	mov	r2, r1
 8003770:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003774:	f8ca 1000 	str.w	r1, [sl]
 8003778:	f842 a020 	str.w	sl, [r2, r0, lsl #2]
 800377c:	46b2      	mov	sl, r6
 800377e:	f1bb 0f01 	cmp.w	fp, #1
 8003782:	db04      	blt.n	800378e <strtod+0xb06>
 8003784:	4650      	mov	r0, sl
 8003786:	4659      	mov	r1, fp
 8003788:	f7ff fa04 	bl	8002b94 <lshift>
 800378c:	4682      	mov	sl, r0
 800378e:	9907      	ldr	r1, [sp, #28]
 8003790:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003792:	2901      	cmp	r1, #1
 8003794:	db03      	blt.n	800379e <strtod+0xb16>
 8003796:	4610      	mov	r0, r2
 8003798:	f000 fcfc 	bl	8004194 <pow5mult>
 800379c:	4602      	mov	r2, r0
 800379e:	2c01      	cmp	r4, #1
 80037a0:	db04      	blt.n	80037ac <strtod+0xb24>
 80037a2:	4610      	mov	r0, r2
 80037a4:	4621      	mov	r1, r4
 80037a6:	f7ff f9f5 	bl	8002b94 <lshift>
 80037aa:	4602      	mov	r2, r0
 80037ac:	2d01      	cmp	r5, #1
 80037ae:	db06      	blt.n	80037be <strtod+0xb36>
 80037b0:	4640      	mov	r0, r8
 80037b2:	4629      	mov	r1, r5
 80037b4:	4614      	mov	r4, r2
 80037b6:	f7ff f9ed 	bl	8002b94 <lshift>
 80037ba:	4622      	mov	r2, r4
 80037bc:	4680      	mov	r8, r0
 80037be:	4650      	mov	r0, sl
 80037c0:	4611      	mov	r1, r2
 80037c2:	4615      	mov	r5, r2
 80037c4:	f000 feaf 	bl	8004526 <diff>
 80037c8:	4683      	mov	fp, r0
 80037ca:	4641      	mov	r1, r8
 80037cc:	f8db 000c 	ldr.w	r0, [fp, #12]
 80037d0:	9009      	str	r0, [sp, #36]	; 0x24
 80037d2:	2000      	movs	r0, #0
 80037d4:	f8cb 000c 	str.w	r0, [fp, #12]
 80037d8:	4658      	mov	r0, fp
 80037da:	f000 ff78 	bl	80046ce <cmp>
 80037de:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80037e2:	f8cd 8018 	str.w	r8, [sp, #24]
 80037e6:	f340 8169 	ble.w	8003abc <strtod+0xe34>
 80037ea:	2800      	cmp	r0, #0
 80037ec:	f000 8170 	beq.w	8003ad0 <strtod+0xe48>
 80037f0:	4658      	mov	r0, fp
 80037f2:	a913      	add	r1, sp, #76	; 0x4c
 80037f4:	f001 f824 	bl	8004840 <b2d>
 80037f8:	eeb0 8a40 	vmov.f32	s16, s0
 80037fc:	4640      	mov	r0, r8
 80037fe:	a912      	add	r1, sp, #72	; 0x48
 8003800:	eef0 8a60 	vmov.f32	s17, s1
 8003804:	ed8d 8b16 	vstr	d8, [sp, #88]	; 0x58
 8003808:	f001 f81a 	bl	8004840 <b2d>
 800380c:	ed8d 0b14 	vstr	d0, [sp, #80]	; 0x50
 8003810:	ac14      	add	r4, sp, #80	; 0x50
 8003812:	f8d8 0010 	ldr.w	r0, [r8, #16]
 8003816:	f8db 1010 	ldr.w	r1, [fp, #16]
 800381a:	1a08      	subs	r0, r1, r0
 800381c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003820:	1a51      	subs	r1, r2, r1
 8003822:	ec53 2b10 	vmov	r2, r3, d0
 8003826:	eb01 1040 	add.w	r0, r1, r0, lsl #5
 800382a:	a916      	add	r1, sp, #88	; 0x58
 800382c:	2800      	cmp	r0, #0
 800382e:	bfc8      	it	gt
 8003830:	460c      	movgt	r4, r1
 8003832:	950a      	str	r5, [sp, #40]	; 0x28
 8003834:	6861      	ldr	r1, [r4, #4]
 8003836:	bf48      	it	mi
 8003838:	4240      	negmi	r0, r0
 800383a:	eb01 16c0 	add.w	r6, r1, r0, lsl #7
 800383e:	ec51 0b18 	vmov	r0, r1, d8
 8003842:	f7fc ffc3 	bl	80007cc <__aeabi_ddiv>
 8003846:	ec53 2b19 	vmov	r2, r3, d9
 800384a:	4605      	mov	r5, r0
 800384c:	4688      	mov	r8, r1
 800384e:	6066      	str	r6, [r4, #4]
 8003850:	f7fd f90e 	bl	8000a70 <__aeabi_dcmple>
 8003854:	b9d8      	cbnz	r0, 800388e <strtod+0xc06>
 8003856:	ec53 2b1a 	vmov	r2, r3, d10
 800385a:	4628      	mov	r0, r5
 800385c:	4641      	mov	r1, r8
 800385e:	f7fc fe8b 	bl	8000578 <__aeabi_dmul>
 8003862:	4604      	mov	r4, r0
 8003864:	460d      	mov	r5, r1
 8003866:	ec51 0b1b 	vmov	r0, r1, d11
 800386a:	4622      	mov	r2, r4
 800386c:	462b      	mov	r3, r5
 800386e:	ec45 4b18 	vmov	d8, r4, r5
 8003872:	f7fc fcc9 	bl	8000208 <__aeabi_dsub>
 8003876:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003878:	f640 362c 	movw	r6, #2860	; 0xb2c
 800387c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003880:	2a00      	cmp	r2, #0
 8003882:	bf1c      	itt	ne
 8003884:	4629      	movne	r1, r5
 8003886:	4620      	movne	r0, r4
 8003888:	ec41 0b10 	vmov	d0, r0, r1
 800388c:	e026      	b.n	80038dc <strtod+0xc54>
 800388e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003890:	f640 362c 	movw	r6, #2860	; 0xb2c
 8003894:	eeb0 8a4f 	vmov.f32	s16, s30
 8003898:	eeb0 0a4f 	vmov.f32	s0, s30
 800389c:	eef0 8a6f 	vmov.f32	s17, s31
 80038a0:	eef0 0a6f 	vmov.f32	s1, s31
 80038a4:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80038a8:	b9c0      	cbnz	r0, 80038dc <strtod+0xc54>
 80038aa:	980c      	ldr	r0, [sp, #48]	; 0x30
 80038ac:	eeb0 8a4f 	vmov.f32	s16, s30
 80038b0:	eeb0 0a4c 	vmov.f32	s0, s24
 80038b4:	eef0 8a6f 	vmov.f32	s17, s31
 80038b8:	eef0 0a6c 	vmov.f32	s1, s25
 80038bc:	b970      	cbnz	r0, 80038dc <strtod+0xc54>
 80038be:	980d      	ldr	r0, [sp, #52]	; 0x34
 80038c0:	217f      	movs	r1, #127	; 0x7f
 80038c2:	eeb0 8a4f 	vmov.f32	s16, s30
 80038c6:	eeb0 0a4c 	vmov.f32	s0, s24
 80038ca:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 80038ce:	eef0 8a6f 	vmov.f32	s17, s31
 80038d2:	eef0 0a6c 	vmov.f32	s1, s25
 80038d6:	4208      	tst	r0, r1
 80038d8:	f000 80c7 	beq.w	8003a6a <strtod+0xde2>
 80038dc:	980d      	ldr	r0, [sp, #52]	; 0x34
 80038de:	f400 44ff 	and.w	r4, r0, #32640	; 0x7f80
 80038e2:	f5b4 5fe0 	cmp.w	r4, #7168	; 0x1c00
 80038e6:	d829      	bhi.n	800393c <strtod+0xcb4>
 80038e8:	f500 50e0 	add.w	r0, r0, #7168	; 0x1c00
 80038ec:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 80038ee:	2200      	movs	r2, #0
 80038f0:	f400 41ff 	and.w	r1, r0, #32640	; 0x7f80
 80038f4:	f5a1 53dc 	sub.w	r3, r1, #7040	; 0x1b80
 80038f8:	990c      	ldr	r1, [sp, #48]	; 0x30
 80038fa:	900d      	str	r0, [sp, #52]	; 0x34
 80038fc:	9103      	str	r1, [sp, #12]
 80038fe:	ec51 0b10 	vmov	r0, r1, d0
 8003902:	f7fc fe39 	bl	8000578 <__aeabi_dmul>
 8003906:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 800390a:	ec53 2b10 	vmov	r2, r3, d0
 800390e:	f7fc fc7d 	bl	800020c <__adddf3>
 8003912:	4680      	mov	r8, r0
 8003914:	f401 40ff 	and.w	r0, r1, #32640	; 0x7f80
 8003918:	ec41 8b10 	vmov	d0, r8, r1
 800391c:	f5b0 5fe0 	cmp.w	r0, #7168	; 0x1c00
 8003920:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003924:	d81e      	bhi.n	8003964 <strtod+0xcdc>
 8003926:	9903      	ldr	r1, [sp, #12]
 8003928:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 800392c:	4308      	orrs	r0, r1
 800392e:	f000 812c 	beq.w	8003b8a <strtod+0xf02>
 8003932:	2080      	movs	r0, #128	; 0x80
 8003934:	900d      	str	r0, [sp, #52]	; 0x34
 8003936:	2000      	movs	r0, #0
 8003938:	900c      	str	r0, [sp, #48]	; 0x30
 800393a:	e04d      	b.n	80039d8 <strtod+0xd50>
 800393c:	f5a4 53dc 	sub.w	r3, r4, #7040	; 0x1b80
 8003940:	ec51 0b10 	vmov	r0, r1, d0
 8003944:	2200      	movs	r2, #0
 8003946:	f7fc fe17 	bl	8000578 <__aeabi_dmul>
 800394a:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 800394e:	ec53 2b10 	vmov	r2, r3, d0
 8003952:	f7fc fc5b 	bl	800020c <__adddf3>
 8003956:	4680      	mov	r8, r0
 8003958:	460d      	mov	r5, r1
 800395a:	ec45 8b10 	vmov	d0, r8, r5
 800395e:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003962:	e002      	b.n	800396a <strtod+0xce2>
 8003964:	f5a1 55e0 	sub.w	r5, r1, #7168	; 0x1c00
 8003968:	950d      	str	r5, [sp, #52]	; 0x34
 800396a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 800396c:	2800      	cmp	r0, #0
 800396e:	bf04      	itt	eq
 8003970:	f405 40ff 	andeq.w	r0, r5, #32640	; 0x7f80
 8003974:	4284      	cmpeq	r4, r0
 8003976:	d12f      	bne.n	80039d8 <strtod+0xd50>
 8003978:	e9cd ba02 	strd	fp, sl, [sp, #8]
 800397c:	ec5a 4b18 	vmov	r4, sl, d8
 8003980:	4620      	mov	r0, r4
 8003982:	4651      	mov	r1, sl
 8003984:	f7fd f892 	bl	8000aac <__aeabi_d2iz>
 8003988:	f7fc fd8c 	bl	80004a4 <__aeabi_i2d>
 800398c:	4602      	mov	r2, r0
 800398e:	460b      	mov	r3, r1
 8003990:	4620      	mov	r0, r4
 8003992:	4651      	mov	r1, sl
 8003994:	f7fc fc38 	bl	8000208 <__aeabi_dsub>
 8003998:	4682      	mov	sl, r0
 800399a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800399c:	468b      	mov	fp, r1
 800399e:	2800      	cmp	r0, #0
 80039a0:	bf02      	ittt	eq
 80039a2:	f64f 7080 	movweq	r0, #65408	; 0xff80
 80039a6:	ea25 0000 	biceq.w	r0, r5, r0
 80039aa:	ea50 0008 	orrseq.w	r0, r0, r8
 80039ae:	d053      	beq.n	8003a58 <strtod+0xdd0>
 80039b0:	ec53 2b1d 	vmov	r2, r3, d13
 80039b4:	4650      	mov	r0, sl
 80039b6:	4659      	mov	r1, fp
 80039b8:	f7fd f850 	bl	8000a5c <__aeabi_dcmplt>
 80039bc:	2800      	cmp	r0, #0
 80039be:	f040 80f3 	bne.w	8003ba8 <strtod+0xf20>
 80039c2:	ec53 2b1e 	vmov	r2, r3, d14
 80039c6:	4650      	mov	r0, sl
 80039c8:	4659      	mov	r1, fp
 80039ca:	f7fd f865 	bl	8000a98 <__aeabi_dcmpgt>
 80039ce:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 80039d2:	2800      	cmp	r0, #0
 80039d4:	f040 80e0 	bne.w	8003b98 <strtod+0xf10>
 80039d8:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80039da:	9d06      	ldr	r5, [sp, #24]
 80039dc:	f1ba 0f00 	cmp.w	sl, #0
 80039e0:	d00e      	beq.n	8003a00 <strtod+0xd78>
 80039e2:	f8da 0004 	ldr.w	r0, [sl, #4]
 80039e6:	2808      	cmp	r0, #8
 80039e8:	db04      	blt.n	80039f4 <strtod+0xd6c>
 80039ea:	4650      	mov	r0, sl
 80039ec:	f001 f91a 	bl	8004c24 <free>
 80039f0:	b93c      	cbnz	r4, 8003a02 <strtod+0xd7a>
 80039f2:	e013      	b.n	8003a1c <strtod+0xd94>
 80039f4:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 80039f8:	f8ca 1000 	str.w	r1, [sl]
 80039fc:	f846 a020 	str.w	sl, [r6, r0, lsl #2]
 8003a00:	b164      	cbz	r4, 8003a1c <strtod+0xd94>
 8003a02:	6860      	ldr	r0, [r4, #4]
 8003a04:	2808      	cmp	r0, #8
 8003a06:	db04      	blt.n	8003a12 <strtod+0xd8a>
 8003a08:	4620      	mov	r0, r4
 8003a0a:	f001 f90b 	bl	8004c24 <free>
 8003a0e:	b935      	cbnz	r5, 8003a1e <strtod+0xd96>
 8003a10:	e015      	b.n	8003a3e <strtod+0xdb6>
 8003a12:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003a16:	6021      	str	r1, [r4, #0]
 8003a18:	f846 4020 	str.w	r4, [r6, r0, lsl #2]
 8003a1c:	b17d      	cbz	r5, 8003a3e <strtod+0xdb6>
 8003a1e:	6868      	ldr	r0, [r5, #4]
 8003a20:	2808      	cmp	r0, #8
 8003a22:	db07      	blt.n	8003a34 <strtod+0xdac>
 8003a24:	4628      	mov	r0, r5
 8003a26:	f001 f8fd 	bl	8004c24 <free>
 8003a2a:	f1bb 0f00 	cmp.w	fp, #0
 8003a2e:	f43f adea 	beq.w	8003606 <strtod+0x97e>
 8003a32:	e008      	b.n	8003a46 <strtod+0xdbe>
 8003a34:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
 8003a38:	6029      	str	r1, [r5, #0]
 8003a3a:	f846 5020 	str.w	r5, [r6, r0, lsl #2]
 8003a3e:	f1bb 0f00 	cmp.w	fp, #0
 8003a42:	f43f ade0 	beq.w	8003606 <strtod+0x97e>
 8003a46:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003a4a:	2808      	cmp	r0, #8
 8003a4c:	f6ff add5 	blt.w	80035fa <strtod+0x972>
 8003a50:	4658      	mov	r0, fp
 8003a52:	f001 f8e7 	bl	8004c24 <free>
 8003a56:	e5d6      	b.n	8003606 <strtod+0x97e>
 8003a58:	ed9f 0be3 	vldr	d0, [pc, #908]	; 8003de8 <strtod+0x1160>
 8003a5c:	4650      	mov	r0, sl
 8003a5e:	4659      	mov	r1, fp
 8003a60:	ec53 2b10 	vmov	r2, r3, d0
 8003a64:	f7fc fffa 	bl	8000a5c <__aeabi_dcmplt>
 8003a68:	e7b1      	b.n	80039ce <strtod+0xd46>
 8003a6a:	ec56 4b1a 	vmov	r4, r6, d10
 8003a6e:	4628      	mov	r0, r5
 8003a70:	4641      	mov	r1, r8
 8003a72:	4622      	mov	r2, r4
 8003a74:	4633      	mov	r3, r6
 8003a76:	f7fc fd7f 	bl	8000578 <__aeabi_dmul>
 8003a7a:	f8cd a00c 	str.w	sl, [sp, #12]
 8003a7e:	4682      	mov	sl, r0
 8003a80:	f8cd b008 	str.w	fp, [sp, #8]
 8003a84:	468b      	mov	fp, r1
 8003a86:	ec53 2b1f 	vmov	r2, r3, d15
 8003a8a:	4628      	mov	r0, r5
 8003a8c:	4641      	mov	r1, r8
 8003a8e:	f7fc ffe5 	bl	8000a5c <__aeabi_dcmplt>
 8003a92:	2800      	cmp	r0, #0
 8003a94:	ec51 0b1b 	vmov	r0, r1, d11
 8003a98:	bf1c      	itt	ne
 8003a9a:	46b3      	movne	fp, r6
 8003a9c:	46a2      	movne	sl, r4
 8003a9e:	f640 362c 	movw	r6, #2860	; 0xb2c
 8003aa2:	ec4b ab18 	vmov	d8, sl, fp
 8003aa6:	4652      	mov	r2, sl
 8003aa8:	465b      	mov	r3, fp
 8003aaa:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8003aae:	f8dd b008 	ldr.w	fp, [sp, #8]
 8003ab2:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003ab6:	f7fc fba7 	bl	8000208 <__aeabi_dsub>
 8003aba:	e6e5      	b.n	8003888 <strtod+0xc00>
 8003abc:	980c      	ldr	r0, [sp, #48]	; 0x30
 8003abe:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003ac0:	4308      	orrs	r0, r1
 8003ac2:	d026      	beq.n	8003b12 <strtod+0xe8a>
 8003ac4:	462b      	mov	r3, r5
 8003ac6:	f1ba 0f00 	cmp.w	sl, #0
 8003aca:	f040 8209 	bne.w	8003ee0 <strtod+0x1258>
 8003ace:	e21d      	b.n	8003f0c <strtod+0x1284>
 8003ad0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003ad2:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003ad4:	f64f 7180 	movw	r1, #65408	; 0xff80
 8003ad8:	ea20 0101 	bic.w	r1, r0, r1
 8003adc:	b37a      	cbz	r2, 8003b3e <strtod+0xeb6>
 8003ade:	227f      	movs	r2, #127	; 0x7f
 8003ae0:	f6cf 72ff 	movt	r2, #65535	; 0xffff
 8003ae4:	4291      	cmp	r1, r2
 8003ae6:	bf04      	itt	eq
 8003ae8:	990c      	ldreq	r1, [sp, #48]	; 0x30
 8003aea:	f111 0101 	addseq.w	r1, r1, #1
 8003aee:	d165      	bne.n	8003bbc <strtod+0xf34>
 8003af0:	217f      	movs	r1, #127	; 0x7f
 8003af2:	462b      	mov	r3, r5
 8003af4:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003af8:	f501 4180 	add.w	r1, r1, #16384	; 0x4000
 8003afc:	4288      	cmp	r0, r1
 8003afe:	d172      	bne.n	8003be6 <strtod+0xf5e>
 8003b00:	207f      	movs	r0, #127	; 0x7f
 8003b02:	f6cf 70ff 	movt	r0, #65535	; 0xffff
 8003b06:	f500 4080 	add.w	r0, r0, #16384	; 0x4000
 8003b0a:	900d      	str	r0, [sp, #52]	; 0x34
 8003b0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003b10:	e155      	b.n	8003dbe <strtod+0x1136>
 8003b12:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003b14:	217f      	movs	r1, #127	; 0x7f
 8003b16:	462b      	mov	r3, r5
 8003b18:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003b1c:	4208      	tst	r0, r1
 8003b1e:	f040 81dc 	bne.w	8003eda <strtod+0x1252>
 8003b22:	4658      	mov	r0, fp
 8003b24:	461e      	mov	r6, r3
 8003b26:	e9d0 8004 	ldrd	r8, r0, [r0, #16]
 8003b2a:	2800      	cmp	r0, #0
 8003b2c:	f040 80bd 	bne.w	8003caa <strtod+0x1022>
 8003b30:	f1b8 0f02 	cmp.w	r8, #2
 8003b34:	f280 80b9 	bge.w	8003caa <strtod+0x1022>
 8003b38:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003b3c:	e244      	b.n	8003fc8 <strtod+0x1340>
 8003b3e:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8003b40:	462b      	mov	r3, r5
 8003b42:	4311      	orrs	r1, r2
 8003b44:	f040 81c9 	bne.w	8003eda <strtod+0x1252>
 8003b48:	e12e      	b.n	8003da8 <strtod+0x1120>
 8003b4a:	f649 3460 	movw	r4, #39776	; 0x9b60
 8003b4e:	4602      	mov	r2, r0
 8003b50:	f1c8 000f 	rsb	r0, r8, #15
 8003b54:	f6c0 0400 	movt	r4, #2048	; 0x800
 8003b58:	1a15      	subs	r5, r2, r0
 8003b5a:	ec53 2b10 	vmov	r2, r3, d0
 8003b5e:	eb04 01c0 	add.w	r1, r4, r0, lsl #3
 8003b62:	ed91 1b00 	vldr	d1, [r1]
 8003b66:	ec51 0b11 	vmov	r0, r1, d1
 8003b6a:	f7fc fd05 	bl	8000578 <__aeabi_dmul>
 8003b6e:	eb04 02c5 	add.w	r2, r4, r5, lsl #3
 8003b72:	ed92 0b00 	vldr	d0, [r2]
 8003b76:	ec53 2b10 	vmov	r2, r3, d0
 8003b7a:	f7fc fcfd 	bl	8000578 <__aeabi_dmul>
 8003b7e:	ec41 0b10 	vmov	d0, r0, r1
 8003b82:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003b86:	f7ff ba8f 	b.w	80030a8 <strtod+0x420>
 8003b8a:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003b8c:	2800      	cmp	r0, #0
 8003b8e:	db03      	blt.n	8003b98 <strtod+0xf10>
 8003b90:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003b92:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003b96:	e110      	b.n	8003dba <strtod+0x1132>
 8003b98:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003b9a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003b9e:	f1ba 0f00 	cmp.w	sl, #0
 8003ba2:	f040 819d 	bne.w	8003ee0 <strtod+0x1258>
 8003ba6:	e1b1      	b.n	8003f0c <strtod+0x1284>
 8003ba8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003baa:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003bae:	e9dd ba02 	ldrd	fp, sl, [sp, #8]
 8003bb2:	f1ba 0f00 	cmp.w	sl, #0
 8003bb6:	f040 8193 	bne.w	8003ee0 <strtod+0x1258>
 8003bba:	e1a7      	b.n	8003f0c <strtod+0x1284>
 8003bbc:	ed9d 0b0c 	vldr	d0, [sp, #48]	; 0x30
 8003bc0:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003bc4:	2200      	movs	r2, #0
 8003bc6:	f5a0 53dc 	sub.w	r3, r0, #7040	; 0x1b80
 8003bca:	ec51 0b10 	vmov	r0, r1, d0
 8003bce:	f7fc fb1d 	bl	800020c <__adddf3>
 8003bd2:	ec41 0b10 	vmov	d0, r0, r1
 8003bd6:	462b      	mov	r3, r5
 8003bd8:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003bdc:	f1ba 0f00 	cmp.w	sl, #0
 8003be0:	f040 817e 	bne.w	8003ee0 <strtod+0x1258>
 8003be4:	e192      	b.n	8003f0c <strtod+0x1284>
 8003be6:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003bea:	3080      	adds	r0, #128	; 0x80
 8003bec:	900d      	str	r0, [sp, #52]	; 0x34
 8003bee:	2000      	movs	r0, #0
 8003bf0:	e172      	b.n	8003ed8 <strtod+0x1250>
 8003bf2:	2400      	movs	r4, #0
 8003bf4:	2d02      	cmp	r5, #2
 8003bf6:	db19      	blt.n	8003c2c <strtod+0xfa4>
 8003bf8:	f649 46a0 	movw	r6, #40096	; 0x9ca0
 8003bfc:	f6c0 0600 	movt	r6, #2048	; 0x800
 8003c00:	07e8      	lsls	r0, r5, #31
 8003c02:	d00b      	beq.n	8003c1c <strtod+0xf94>
 8003c04:	ed96 1b00 	vldr	d1, [r6]
 8003c08:	ec53 2b10 	vmov	r2, r3, d0
 8003c0c:	ec51 0b11 	vmov	r0, r1, d1
 8003c10:	f7fc fcb2 	bl	8000578 <__aeabi_dmul>
 8003c14:	ec41 0b10 	vmov	d0, r0, r1
 8003c18:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003c1c:	0868      	lsrs	r0, r5, #1
 8003c1e:	2d03      	cmp	r5, #3
 8003c20:	f106 0608 	add.w	r6, r6, #8
 8003c24:	f104 0401 	add.w	r4, r4, #1
 8003c28:	4605      	mov	r5, r0
 8003c2a:	d8e9      	bhi.n	8003c00 <strtod+0xf78>
 8003c2c:	f649 40a0 	movw	r0, #40096	; 0x9ca0
 8003c30:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003c34:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
 8003c38:	ec54 6b10 	vmov	r6, r4, d0
 8003c3c:	ed90 1b00 	vldr	d1, [r0]
 8003c40:	4630      	mov	r0, r6
 8003c42:	4621      	mov	r1, r4
 8003c44:	ec55 2b11 	vmov	r2, r5, d1
 8003c48:	462b      	mov	r3, r5
 8003c4a:	9207      	str	r2, [sp, #28]
 8003c4c:	f7fc fc94 	bl	8000578 <__aeabi_dmul>
 8003c50:	ed9f 1b67 	vldr	d1, [pc, #412]	; 8003df0 <strtod+0x1168>
 8003c54:	ec41 0b10 	vmov	d0, r0, r1
 8003c58:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003c5c:	ec53 2b11 	vmov	r2, r3, d1
 8003c60:	9203      	str	r2, [sp, #12]
 8003c62:	9306      	str	r3, [sp, #24]
 8003c64:	f7fc fef0 	bl	8000a48 <__aeabi_dcmpeq>
 8003c68:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8003c6c:	2800      	cmp	r0, #0
 8003c6e:	f43f aae3 	beq.w	8003238 <strtod+0x5b0>
 8003c72:	4630      	mov	r0, r6
 8003c74:	4621      	mov	r1, r4
 8003c76:	4632      	mov	r2, r6
 8003c78:	4623      	mov	r3, r4
 8003c7a:	f7fc fac7 	bl	800020c <__adddf3>
 8003c7e:	9a07      	ldr	r2, [sp, #28]
 8003c80:	462b      	mov	r3, r5
 8003c82:	f7fc fc79 	bl	8000578 <__aeabi_dmul>
 8003c86:	9a03      	ldr	r2, [sp, #12]
 8003c88:	9b06      	ldr	r3, [sp, #24]
 8003c8a:	ec41 0b10 	vmov	d0, r0, r1
 8003c8e:	ed8d 0b0c 	vstr	d0, [sp, #48]	; 0x30
 8003c92:	f7fc fed9 	bl	8000a48 <__aeabi_dcmpeq>
 8003c96:	f04f 0900 	mov.w	r9, #0
 8003c9a:	2800      	cmp	r0, #0
 8003c9c:	f47f aa8e 	bne.w	80031bc <strtod+0x534>
 8003ca0:	2080      	movs	r0, #128	; 0x80
 8003ca2:	e9cd 900c 	strd	r9, r0, [sp, #48]	; 0x30
 8003ca6:	f7ff bac5 	b.w	8003234 <strtod+0x5ac>
 8003caa:	4658      	mov	r0, fp
 8003cac:	e9d0 5001 	ldrd	r5, r0, [r0, #4]
 8003cb0:	4580      	cmp	r8, r0
 8003cb2:	db06      	blt.n	8003cc2 <strtod+0x103a>
 8003cb4:	0041      	lsls	r1, r0, #1
 8003cb6:	ebb8 0f40 	cmp.w	r8, r0, lsl #1
 8003cba:	f105 0501 	add.w	r5, r5, #1
 8003cbe:	4608      	mov	r0, r1
 8003cc0:	daf8      	bge.n	8003cb4 <strtod+0x102c>
 8003cc2:	2d07      	cmp	r5, #7
 8003cc4:	dc0c      	bgt.n	8003ce0 <strtod+0x1058>
 8003cc6:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003cca:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003cce:	f851 4025 	ldr.w	r4, [r1, r5, lsl #2]
 8003cd2:	2c00      	cmp	r4, #0
 8003cd4:	f000 817e 	beq.w	8003fd4 <strtod+0x134c>
 8003cd8:	6820      	ldr	r0, [r4, #0]
 8003cda:	f841 0025 	str.w	r0, [r1, r5, lsl #2]
 8003cde:	e010      	b.n	8003d02 <strtod+0x107a>
 8003ce0:	2001      	movs	r0, #1
 8003ce2:	f8cd a00c 	str.w	sl, [sp, #12]
 8003ce6:	fa00 fa05 	lsl.w	sl, r0, r5
 8003cea:	201b      	movs	r0, #27
 8003cec:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 8003cf0:	08c0      	lsrs	r0, r0, #3
 8003cf2:	00c0      	lsls	r0, r0, #3
 8003cf4:	f000 ff8e 	bl	8004c14 <malloc>
 8003cf8:	4604      	mov	r4, r0
 8003cfa:	e9c4 5a01 	strd	r5, sl, [r4, #4]
 8003cfe:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8003d02:	2000      	movs	r0, #0
 8003d04:	f06f 0114 	mvn.w	r1, #20
 8003d08:	f10b 0318 	add.w	r3, fp, #24
 8003d0c:	e9c4 0003 	strd	r0, r0, [r4, #12]
 8003d10:	eba1 020b 	sub.w	r2, r1, fp
 8003d14:	f8db 1010 	ldr.w	r1, [fp, #16]
 8003d18:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8003d1c:	3114      	adds	r1, #20
 8003d1e:	4299      	cmp	r1, r3
 8003d20:	bf88      	it	hi
 8003d22:	460b      	movhi	r3, r1
 8003d24:	441a      	add	r2, r3
 8003d26:	2314      	movs	r3, #20
 8003d28:	ea4f 0c92 	mov.w	ip, r2, lsr #2
 8003d2c:	f85b 5003 	ldr.w	r5, [fp, r3]
 8003d30:	ea40 0045 	orr.w	r0, r0, r5, lsl #1
 8003d34:	1d1d      	adds	r5, r3, #4
 8003d36:	50e0      	str	r0, [r4, r3]
 8003d38:	eb0b 0205 	add.w	r2, fp, r5
 8003d3c:	f85b 0003 	ldr.w	r0, [fp, r3]
 8003d40:	428a      	cmp	r2, r1
 8003d42:	462b      	mov	r3, r5
 8003d44:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 8003d48:	d3f0      	bcc.n	8003d2c <strtod+0x10a4>
 8003d4a:	eb04 018c 	add.w	r1, r4, ip, lsl #2
 8003d4e:	2800      	cmp	r0, #0
 8003d50:	6188      	str	r0, [r1, #24]
 8003d52:	f04f 0102 	mov.w	r1, #2
 8003d56:	bf08      	it	eq
 8003d58:	2101      	moveq	r1, #1
 8003d5a:	f1bb 0f00 	cmp.w	fp, #0
 8003d5e:	eb08 0001 	add.w	r0, r8, r1
 8003d62:	f1a0 0001 	sub.w	r0, r0, #1
 8003d66:	6120      	str	r0, [r4, #16]
 8003d68:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003d6c:	d012      	beq.n	8003d94 <strtod+0x110c>
 8003d6e:	f8db 3004 	ldr.w	r3, [fp, #4]
 8003d72:	2b08      	cmp	r3, #8
 8003d74:	db03      	blt.n	8003d7e <strtod+0x10f6>
 8003d76:	4658      	mov	r0, fp
 8003d78:	f000 ff54 	bl	8004c24 <free>
 8003d7c:	e00a      	b.n	8003d94 <strtod+0x110c>
 8003d7e:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003d82:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003d86:	460a      	mov	r2, r1
 8003d88:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8003d8c:	f8cb 1000 	str.w	r1, [fp]
 8003d90:	f842 b023 	str.w	fp, [r2, r3, lsl #2]
 8003d94:	4620      	mov	r0, r4
 8003d96:	4641      	mov	r1, r8
 8003d98:	f000 fc99 	bl	80046ce <cmp>
 8003d9c:	2801      	cmp	r0, #1
 8003d9e:	f2c0 8112 	blt.w	8003fc6 <strtod+0x133e>
 8003da2:	980d      	ldr	r0, [sp, #52]	; 0x34
 8003da4:	46a3      	mov	fp, r4
 8003da6:	4633      	mov	r3, r6
 8003da8:	f400 40ff 	and.w	r0, r0, #32640	; 0x7f80
 8003dac:	2880      	cmp	r0, #128	; 0x80
 8003dae:	f200 8089 	bhi.w	8003ec4 <strtod+0x123c>
 8003db2:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003db4:	2800      	cmp	r0, #0
 8003db6:	f2c0 8090 	blt.w	8003eda <strtod+0x1252>
 8003dba:	2000      	movs	r0, #0
 8003dbc:	900d      	str	r0, [sp, #52]	; 0x34
 8003dbe:	f1b9 0f00 	cmp.w	r9, #0
 8003dc2:	900c      	str	r0, [sp, #48]	; 0x30
 8003dc4:	d076      	beq.n	8003eb4 <strtod+0x122c>
 8003dc6:	f1ba 0f00 	cmp.w	sl, #0
 8003dca:	d01f      	beq.n	8003e0c <strtod+0x1184>
 8003dcc:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003dd0:	2808      	cmp	r0, #8
 8003dd2:	db11      	blt.n	8003df8 <strtod+0x1170>
 8003dd4:	4650      	mov	r0, sl
 8003dd6:	461c      	mov	r4, r3
 8003dd8:	f000 ff24 	bl	8004c24 <free>
 8003ddc:	4623      	mov	r3, r4
 8003dde:	2b00      	cmp	r3, #0
 8003de0:	d116      	bne.n	8003e10 <strtod+0x1188>
 8003de2:	e028      	b.n	8003e36 <strtod+0x11ae>
 8003de4:	bf00      	nop
 8003de6:	bf00      	nop
 8003de8:	94a03595 	.word	0x94a03595
 8003dec:	3fcfffff 	.word	0x3fcfffff
	...
 8003df8:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003dfc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003e00:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003e04:	f8ca 2000 	str.w	r2, [sl]
 8003e08:	f841 a020 	str.w	sl, [r1, r0, lsl #2]
 8003e0c:	2b00      	cmp	r3, #0
 8003e0e:	d012      	beq.n	8003e36 <strtod+0x11ae>
 8003e10:	6858      	ldr	r0, [r3, #4]
 8003e12:	2808      	cmp	r0, #8
 8003e14:	db06      	blt.n	8003e24 <strtod+0x119c>
 8003e16:	4618      	mov	r0, r3
 8003e18:	f000 ff04 	bl	8004c24 <free>
 8003e1c:	f1b8 0f00 	cmp.w	r8, #0
 8003e20:	d10c      	bne.n	8003e3c <strtod+0x11b4>
 8003e22:	e01d      	b.n	8003e60 <strtod+0x11d8>
 8003e24:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003e28:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003e2c:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003e30:	601a      	str	r2, [r3, #0]
 8003e32:	f841 3020 	str.w	r3, [r1, r0, lsl #2]
 8003e36:	f1b8 0f00 	cmp.w	r8, #0
 8003e3a:	d011      	beq.n	8003e60 <strtod+0x11d8>
 8003e3c:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8003e40:	2808      	cmp	r0, #8
 8003e42:	db03      	blt.n	8003e4c <strtod+0x11c4>
 8003e44:	4640      	mov	r0, r8
 8003e46:	f000 feed 	bl	8004c24 <free>
 8003e4a:	e009      	b.n	8003e60 <strtod+0x11d8>
 8003e4c:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003e50:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003e54:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003e58:	f8c8 2000 	str.w	r2, [r8]
 8003e5c:	f841 8020 	str.w	r8, [r1, r0, lsl #2]
 8003e60:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003e64:	2808      	cmp	r0, #8
 8003e66:	db06      	blt.n	8003e76 <strtod+0x11ee>
 8003e68:	4648      	mov	r0, r9
 8003e6a:	f000 fedb 	bl	8004c24 <free>
 8003e6e:	f1bb 0f00 	cmp.w	fp, #0
 8003e72:	d10d      	bne.n	8003e90 <strtod+0x1208>
 8003e74:	e01e      	b.n	8003eb4 <strtod+0x122c>
 8003e76:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003e7a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003e7e:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003e82:	f8c9 2000 	str.w	r2, [r9]
 8003e86:	f841 9020 	str.w	r9, [r1, r0, lsl #2]
 8003e8a:	f1bb 0f00 	cmp.w	fp, #0
 8003e8e:	d011      	beq.n	8003eb4 <strtod+0x122c>
 8003e90:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003e94:	2808      	cmp	r0, #8
 8003e96:	db03      	blt.n	8003ea0 <strtod+0x1218>
 8003e98:	4658      	mov	r0, fp
 8003e9a:	f000 fec3 	bl	8004c24 <free>
 8003e9e:	e009      	b.n	8003eb4 <strtod+0x122c>
 8003ea0:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003ea4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ea8:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8003eac:	f8cb 2000 	str.w	r2, [fp]
 8003eb0:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
 8003eb4:	f000 fe60 	bl	8004b78 <__errno>
 8003eb8:	2122      	movs	r1, #34	; 0x22
 8003eba:	6001      	str	r1, [r0, #0]
 8003ebc:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003ec0:	f7ff b8f2 	b.w	80030a8 <strtod+0x420>
 8003ec4:	f64f 7180 	movw	r1, #65408	; 0xff80
 8003ec8:	4408      	add	r0, r1
 8003eca:	217f      	movs	r1, #127	; 0x7f
 8003ecc:	f6cf 71ff 	movt	r1, #65535	; 0xffff
 8003ed0:	4308      	orrs	r0, r1
 8003ed2:	900d      	str	r0, [sp, #52]	; 0x34
 8003ed4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ed8:	900c      	str	r0, [sp, #48]	; 0x30
 8003eda:	f1ba 0f00 	cmp.w	sl, #0
 8003ede:	d015      	beq.n	8003f0c <strtod+0x1284>
 8003ee0:	f8da 0004 	ldr.w	r0, [sl, #4]
 8003ee4:	2808      	cmp	r0, #8
 8003ee6:	db06      	blt.n	8003ef6 <strtod+0x126e>
 8003ee8:	4650      	mov	r0, sl
 8003eea:	461c      	mov	r4, r3
 8003eec:	f000 fe9a 	bl	8004c24 <free>
 8003ef0:	4623      	mov	r3, r4
 8003ef2:	b963      	cbnz	r3, 8003f0e <strtod+0x1286>
 8003ef4:	e01f      	b.n	8003f36 <strtod+0x12ae>
 8003ef6:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003efa:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003efe:	460a      	mov	r2, r1
 8003f00:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003f04:	f8ca 1000 	str.w	r1, [sl]
 8003f08:	f842 a020 	str.w	sl, [r2, r0, lsl #2]
 8003f0c:	b19b      	cbz	r3, 8003f36 <strtod+0x12ae>
 8003f0e:	6858      	ldr	r0, [r3, #4]
 8003f10:	2808      	cmp	r0, #8
 8003f12:	db06      	blt.n	8003f22 <strtod+0x129a>
 8003f14:	4618      	mov	r0, r3
 8003f16:	f000 fe85 	bl	8004c24 <free>
 8003f1a:	f1b8 0f00 	cmp.w	r8, #0
 8003f1e:	d10d      	bne.n	8003f3c <strtod+0x12b4>
 8003f20:	e01f      	b.n	8003f62 <strtod+0x12da>
 8003f22:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003f26:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f2a:	460a      	mov	r2, r1
 8003f2c:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003f30:	6019      	str	r1, [r3, #0]
 8003f32:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
 8003f36:	f1b8 0f00 	cmp.w	r8, #0
 8003f3a:	d012      	beq.n	8003f62 <strtod+0x12da>
 8003f3c:	f8d8 0004 	ldr.w	r0, [r8, #4]
 8003f40:	2808      	cmp	r0, #8
 8003f42:	db03      	blt.n	8003f4c <strtod+0x12c4>
 8003f44:	4640      	mov	r0, r8
 8003f46:	f000 fe6d 	bl	8004c24 <free>
 8003f4a:	e00a      	b.n	8003f62 <strtod+0x12da>
 8003f4c:	f640 312c 	movw	r1, #2860	; 0xb2c
 8003f50:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f54:	460a      	mov	r2, r1
 8003f56:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8003f5a:	f8c8 1000 	str.w	r1, [r8]
 8003f5e:	f842 8020 	str.w	r8, [r2, r0, lsl #2]
 8003f62:	f640 342c 	movw	r4, #2860	; 0xb2c
 8003f66:	f1b9 0f00 	cmp.w	r9, #0
 8003f6a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003f6e:	d010      	beq.n	8003f92 <strtod+0x130a>
 8003f70:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8003f74:	2808      	cmp	r0, #8
 8003f76:	db06      	blt.n	8003f86 <strtod+0x12fe>
 8003f78:	4648      	mov	r0, r9
 8003f7a:	f000 fe53 	bl	8004c24 <free>
 8003f7e:	f1bb 0f00 	cmp.w	fp, #0
 8003f82:	d109      	bne.n	8003f98 <strtod+0x1310>
 8003f84:	e013      	b.n	8003fae <strtod+0x1326>
 8003f86:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8003f8a:	f8c9 1000 	str.w	r1, [r9]
 8003f8e:	f844 9020 	str.w	r9, [r4, r0, lsl #2]
 8003f92:	f1bb 0f00 	cmp.w	fp, #0
 8003f96:	d00a      	beq.n	8003fae <strtod+0x1326>
 8003f98:	f8db 0004 	ldr.w	r0, [fp, #4]
 8003f9c:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003fa0:	2808      	cmp	r0, #8
 8003fa2:	db08      	blt.n	8003fb6 <strtod+0x132e>
 8003fa4:	4658      	mov	r0, fp
 8003fa6:	f000 fe3d 	bl	8004c24 <free>
 8003faa:	f7ff b87d 	b.w	80030a8 <strtod+0x420>
 8003fae:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8003fb2:	f7ff b879 	b.w	80030a8 <strtod+0x420>
 8003fb6:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8003fba:	f8cb 1000 	str.w	r1, [fp]
 8003fbe:	f844 b020 	str.w	fp, [r4, r0, lsl #2]
 8003fc2:	f7ff b871 	b.w	80030a8 <strtod+0x420>
 8003fc6:	46a3      	mov	fp, r4
 8003fc8:	4633      	mov	r3, r6
 8003fca:	f1ba 0f00 	cmp.w	sl, #0
 8003fce:	f47f af87 	bne.w	8003ee0 <strtod+0x1258>
 8003fd2:	e79b      	b.n	8003f0c <strtod+0x1284>
 8003fd4:	f240 0228 	movw	r2, #40	; 0x28
 8003fd8:	f640 3150 	movw	r1, #2896	; 0xb50
 8003fdc:	2001      	movs	r0, #1
 8003fde:	f8cd a00c 	str.w	sl, [sp, #12]
 8003fe2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003fe6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003fea:	fa00 fa05 	lsl.w	sl, r0, r5
 8003fee:	201b      	movs	r0, #27
 8003ff0:	6814      	ldr	r4, [r2, #0]
 8003ff2:	eb00 008a 	add.w	r0, r0, sl, lsl #2
 8003ff6:	1a61      	subs	r1, r4, r1
 8003ff8:	10c9      	asrs	r1, r1, #3
 8003ffa:	eb01 01d0 	add.w	r1, r1, r0, lsr #3
 8003ffe:	08c0      	lsrs	r0, r0, #3
 8004000:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
 8004004:	f63f ae75 	bhi.w	8003cf2 <strtod+0x106a>
 8004008:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
 800400c:	6010      	str	r0, [r2, #0]
 800400e:	e674      	b.n	8003cfa <strtod+0x1072>

08004010 <d2b>:
 8004010:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004012:	af03      	add	r7, sp, #12
 8004014:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8004018:	4689      	mov	r9, r1
 800401a:	f640 312c 	movw	r1, #2860	; 0xb2c
 800401e:	4606      	mov	r6, r0
 8004020:	4690      	mov	r8, r2
 8004022:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004026:	6848      	ldr	r0, [r1, #4]
 8004028:	b110      	cbz	r0, 8004030 <d2b+0x20>
 800402a:	6802      	ldr	r2, [r0, #0]
 800402c:	604a      	str	r2, [r1, #4]
 800402e:	e01a      	b.n	8004066 <d2b+0x56>
 8004030:	f240 0128 	movw	r1, #40	; 0x28
 8004034:	f640 3250 	movw	r2, #2896	; 0xb50
 8004038:	2304      	movs	r3, #4
 800403a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800403e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004042:	6808      	ldr	r0, [r1, #0]
 8004044:	1a82      	subs	r2, r0, r2
 8004046:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 800404a:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 800404e:	d803      	bhi.n	8004058 <d2b+0x48>
 8004050:	f100 0220 	add.w	r2, r0, #32
 8004054:	600a      	str	r2, [r1, #0]
 8004056:	e002      	b.n	800405e <d2b+0x4e>
 8004058:	2020      	movs	r0, #32
 800405a:	f000 fddb 	bl	8004c14 <malloc>
 800405e:	2101      	movs	r1, #1
 8004060:	2202      	movs	r2, #2
 8004062:	e9c0 1201 	strd	r1, r2, [r0, #4]
 8004066:	2100      	movs	r1, #0
 8004068:	2301      	movs	r3, #1
 800406a:	e9c0 1103 	strd	r1, r1, [r0, #12]
 800406e:	6872      	ldr	r2, [r6, #4]
 8004070:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
 8004074:	4615      	mov	r5, r2
 8004076:	6071      	str	r1, [r6, #4]
 8004078:	f363 55df 	bfi	r5, r3, #23, #9
 800407c:	0dc9      	lsrs	r1, r1, #23
 800407e:	6836      	ldr	r6, [r6, #0]
 8004080:	b146      	cbz	r6, 8004094 <d2b+0x84>
 8004082:	0772      	lsls	r2, r6, #29
 8004084:	d00f      	beq.n	80040a6 <d2b+0x96>
 8004086:	07f2      	lsls	r2, r6, #31
 8004088:	d133      	bne.n	80040f2 <d2b+0xe2>
 800408a:	07b2      	lsls	r2, r6, #30
 800408c:	d45c      	bmi.n	8004148 <d2b+0x138>
 800408e:	08b4      	lsrs	r4, r6, #2
 8004090:	2302      	movs	r3, #2
 8004092:	e067      	b.n	8004164 <d2b+0x154>
 8004094:	0753      	lsls	r3, r2, #29
 8004096:	d030      	beq.n	80040fa <d2b+0xea>
 8004098:	07d3      	lsls	r3, r2, #31
 800409a:	d153      	bne.n	8004144 <d2b+0x134>
 800409c:	0792      	lsls	r2, r2, #30
 800409e:	d458      	bmi.n	8004152 <d2b+0x142>
 80040a0:	08ad      	lsrs	r5, r5, #2
 80040a2:	2302      	movs	r3, #2
 80040a4:	e057      	b.n	8004156 <d2b+0x146>
 80040a6:	b2b2      	uxth	r2, r6
 80040a8:	4634      	mov	r4, r6
 80040aa:	2300      	movs	r3, #0
 80040ac:	f04f 0c00 	mov.w	ip, #0
 80040b0:	2a00      	cmp	r2, #0
 80040b2:	bf08      	it	eq
 80040b4:	0c24      	lsreq	r4, r4, #16
 80040b6:	bf08      	it	eq
 80040b8:	2310      	moveq	r3, #16
 80040ba:	b2e2      	uxtb	r2, r4
 80040bc:	2a00      	cmp	r2, #0
 80040be:	bf04      	itt	eq
 80040c0:	f043 0308 	orreq.w	r3, r3, #8
 80040c4:	0a24      	lsreq	r4, r4, #8
 80040c6:	f014 020f 	ands.w	r2, r4, #15
 80040ca:	bf04      	itt	eq
 80040cc:	f043 0304 	orreq.w	r3, r3, #4
 80040d0:	0924      	lsreq	r4, r4, #4
 80040d2:	f014 0203 	ands.w	r2, r4, #3
 80040d6:	bf04      	itt	eq
 80040d8:	f043 0302 	orreq.w	r3, r3, #2
 80040dc:	08a4      	lsreq	r4, r4, #2
 80040de:	f014 0f01 	tst.w	r4, #1
 80040e2:	d104      	bne.n	80040ee <d2b+0xde>
 80040e4:	ebbc 0f54 	cmp.w	ip, r4, lsr #1
 80040e8:	d03a      	beq.n	8004160 <d2b+0x150>
 80040ea:	0864      	lsrs	r4, r4, #1
 80040ec:	3301      	adds	r3, #1
 80040ee:	bbcb      	cbnz	r3, 8004164 <d2b+0x154>
 80040f0:	e000      	b.n	80040f4 <d2b+0xe4>
 80040f2:	4634      	mov	r4, r6
 80040f4:	6144      	str	r4, [r0, #20]
 80040f6:	2300      	movs	r3, #0
 80040f8:	e03b      	b.n	8004172 <d2b+0x162>
 80040fa:	b292      	uxth	r2, r2
 80040fc:	2300      	movs	r3, #0
 80040fe:	2600      	movs	r6, #0
 8004100:	2a00      	cmp	r2, #0
 8004102:	462a      	mov	r2, r5
 8004104:	bf08      	it	eq
 8004106:	0c12      	lsreq	r2, r2, #16
 8004108:	bf08      	it	eq
 800410a:	2310      	moveq	r3, #16
 800410c:	b2d4      	uxtb	r4, r2
 800410e:	2c00      	cmp	r4, #0
 8004110:	bf04      	itt	eq
 8004112:	f043 0308 	orreq.w	r3, r3, #8
 8004116:	0a12      	lsreq	r2, r2, #8
 8004118:	f012 040f 	ands.w	r4, r2, #15
 800411c:	bf04      	itt	eq
 800411e:	f043 0304 	orreq.w	r3, r3, #4
 8004122:	0912      	lsreq	r2, r2, #4
 8004124:	f012 0403 	ands.w	r4, r2, #3
 8004128:	bf04      	itt	eq
 800412a:	f043 0302 	orreq.w	r3, r3, #2
 800412e:	0892      	lsreq	r2, r2, #2
 8004130:	f012 0f01 	tst.w	r2, #1
 8004134:	d10b      	bne.n	800414e <d2b+0x13e>
 8004136:	ebb6 0f52 	cmp.w	r6, r2, lsr #1
 800413a:	bf1a      	itte	ne
 800413c:	0855      	lsrne	r5, r2, #1
 800413e:	3301      	addne	r3, #1
 8004140:	2320      	moveq	r3, #32
 8004142:	e008      	b.n	8004156 <d2b+0x146>
 8004144:	2300      	movs	r3, #0
 8004146:	e006      	b.n	8004156 <d2b+0x146>
 8004148:	0874      	lsrs	r4, r6, #1
 800414a:	2301      	movs	r3, #1
 800414c:	e00a      	b.n	8004164 <d2b+0x154>
 800414e:	4615      	mov	r5, r2
 8004150:	e001      	b.n	8004156 <d2b+0x146>
 8004152:	086d      	lsrs	r5, r5, #1
 8004154:	2301      	movs	r3, #1
 8004156:	2201      	movs	r2, #1
 8004158:	3320      	adds	r3, #32
 800415a:	e9c0 2504 	strd	r2, r5, [r0, #16]
 800415e:	e00e      	b.n	800417e <d2b+0x16e>
 8004160:	2320      	movs	r3, #32
 8004162:	4634      	mov	r4, r6
 8004164:	f1c3 0220 	rsb	r2, r3, #32
 8004168:	fa05 f202 	lsl.w	r2, r5, r2
 800416c:	40dd      	lsrs	r5, r3
 800416e:	4322      	orrs	r2, r4
 8004170:	6142      	str	r2, [r0, #20]
 8004172:	2201      	movs	r2, #1
 8004174:	2d00      	cmp	r5, #0
 8004176:	6185      	str	r5, [r0, #24]
 8004178:	bf18      	it	ne
 800417a:	2202      	movne	r2, #2
 800417c:	6102      	str	r2, [r0, #16]
 800417e:	4419      	add	r1, r3
 8004180:	39b8      	subs	r1, #184	; 0xb8
 8004182:	f8c9 1000 	str.w	r1, [r9]
 8004186:	f1c3 0138 	rsb	r1, r3, #56	; 0x38
 800418a:	f8c8 1000 	str.w	r1, [r8]
 800418e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8004192:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004194 <pow5mult>:
 8004194:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004196:	af03      	add	r7, sp, #12
 8004198:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800419c:	b081      	sub	sp, #4
 800419e:	4688      	mov	r8, r1
 80041a0:	4683      	mov	fp, r0
 80041a2:	f018 0003 	ands.w	r0, r8, #3
 80041a6:	d024      	beq.n	80041f2 <pow5mult+0x5e>
 80041a8:	f649 4118 	movw	r1, #39960	; 0x9c18
 80041ac:	f8db 9010 	ldr.w	r9, [fp, #16]
 80041b0:	2500      	movs	r5, #0
 80041b2:	2300      	movs	r3, #0
 80041b4:	2200      	movs	r2, #0
 80041b6:	f6c0 0100 	movt	r1, #2048	; 0x800
 80041ba:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 80041be:	f850 cc04 	ldr.w	ip, [r0, #-4]
 80041c2:	ea4f 7eec 	mov.w	lr, ip, asr #31
 80041c6:	eb0b 0482 	add.w	r4, fp, r2, lsl #2
 80041ca:	3201      	adds	r2, #1
 80041cc:	6966      	ldr	r6, [r4, #20]
 80041ce:	fba6 010c 	umull	r0, r1, r6, ip
 80041d2:	1940      	adds	r0, r0, r5
 80041d4:	6160      	str	r0, [r4, #20]
 80041d6:	fb06 100e 	mla	r0, r6, lr, r1
 80041da:	eb40 0503 	adc.w	r5, r0, r3
 80041de:	2300      	movs	r3, #0
 80041e0:	454a      	cmp	r2, r9
 80041e2:	dbf0      	blt.n	80041c6 <pow5mult+0x32>
 80041e4:	b12d      	cbz	r5, 80041f2 <pow5mult+0x5e>
 80041e6:	f8db 0008 	ldr.w	r0, [fp, #8]
 80041ea:	4581      	cmp	r9, r0
 80041ec:	da03      	bge.n	80041f6 <pow5mult+0x62>
 80041ee:	46da      	mov	sl, fp
 80041f0:	e043      	b.n	800427a <pow5mult+0xe6>
 80041f2:	46da      	mov	sl, fp
 80041f4:	e048      	b.n	8004288 <pow5mult+0xf4>
 80041f6:	f8db 0004 	ldr.w	r0, [fp, #4]
 80041fa:	1c44      	adds	r4, r0, #1
 80041fc:	2c07      	cmp	r4, #7
 80041fe:	dc0e      	bgt.n	800421e <pow5mult+0x8a>
 8004200:	f640 302c 	movw	r0, #2860	; 0xb2c
 8004204:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004208:	f850 a024 	ldr.w	sl, [r0, r4, lsl #2]
 800420c:	f1ba 0f00 	cmp.w	sl, #0
 8004210:	f000 80a8 	beq.w	8004364 <pow5mult+0x1d0>
 8004214:	f8da 1000 	ldr.w	r1, [sl]
 8004218:	f840 1024 	str.w	r1, [r0, r4, lsl #2]
 800421c:	e00c      	b.n	8004238 <pow5mult+0xa4>
 800421e:	2001      	movs	r0, #1
 8004220:	fa00 f604 	lsl.w	r6, r0, r4
 8004224:	201b      	movs	r0, #27
 8004226:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 800422a:	08c0      	lsrs	r0, r0, #3
 800422c:	00c0      	lsls	r0, r0, #3
 800422e:	f000 fcf1 	bl	8004c14 <malloc>
 8004232:	4682      	mov	sl, r0
 8004234:	e9ca 4601 	strd	r4, r6, [sl, #4]
 8004238:	2100      	movs	r1, #0
 800423a:	4650      	mov	r0, sl
 800423c:	2208      	movs	r2, #8
 800423e:	f8ca 1010 	str.w	r1, [sl, #16]
 8004242:	f840 1f0c 	str.w	r1, [r0, #12]!
 8004246:	f8db 1010 	ldr.w	r1, [fp, #16]
 800424a:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 800424e:	f10b 010c 	add.w	r1, fp, #12
 8004252:	f000 fc8f 	bl	8004b74 <__aeabi_memcpy>
 8004256:	f8db 0004 	ldr.w	r0, [fp, #4]
 800425a:	2808      	cmp	r0, #8
 800425c:	db03      	blt.n	8004266 <pow5mult+0xd2>
 800425e:	4658      	mov	r0, fp
 8004260:	f000 fce0 	bl	8004c24 <free>
 8004264:	e009      	b.n	800427a <pow5mult+0xe6>
 8004266:	f640 312c 	movw	r1, #2860	; 0xb2c
 800426a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800426e:	f851 2020 	ldr.w	r2, [r1, r0, lsl #2]
 8004272:	f8cb 2000 	str.w	r2, [fp]
 8004276:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
 800427a:	eb0a 0089 	add.w	r0, sl, r9, lsl #2
 800427e:	6145      	str	r5, [r0, #20]
 8004280:	f109 0001 	add.w	r0, r9, #1
 8004284:	f8ca 0010 	str.w	r0, [sl, #16]
 8004288:	2000      	movs	r0, #0
 800428a:	ebb0 0fa8 	cmp.w	r0, r8, asr #2
 800428e:	d064      	beq.n	800435a <pow5mult+0x1c6>
 8004290:	f241 4550 	movw	r5, #5200	; 0x1450
 8004294:	ea4f 04a8 	mov.w	r4, r8, asr #2
 8004298:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800429c:	6828      	ldr	r0, [r5, #0]
 800429e:	bb60      	cbnz	r0, 80042fa <pow5mult+0x166>
 80042a0:	f640 312c 	movw	r1, #2860	; 0xb2c
 80042a4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80042a8:	6848      	ldr	r0, [r1, #4]
 80042aa:	b110      	cbz	r0, 80042b2 <pow5mult+0x11e>
 80042ac:	6802      	ldr	r2, [r0, #0]
 80042ae:	604a      	str	r2, [r1, #4]
 80042b0:	e01a      	b.n	80042e8 <pow5mult+0x154>
 80042b2:	f240 0128 	movw	r1, #40	; 0x28
 80042b6:	f640 3250 	movw	r2, #2896	; 0xb50
 80042ba:	2304      	movs	r3, #4
 80042bc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80042c0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80042c4:	6808      	ldr	r0, [r1, #0]
 80042c6:	1a82      	subs	r2, r0, r2
 80042c8:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 80042cc:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 80042d0:	d803      	bhi.n	80042da <pow5mult+0x146>
 80042d2:	f100 0220 	add.w	r2, r0, #32
 80042d6:	600a      	str	r2, [r1, #0]
 80042d8:	e002      	b.n	80042e0 <pow5mult+0x14c>
 80042da:	2020      	movs	r0, #32
 80042dc:	f000 fc9a 	bl	8004c14 <malloc>
 80042e0:	2101      	movs	r1, #1
 80042e2:	2202      	movs	r2, #2
 80042e4:	e9c0 1201 	strd	r1, r2, [r0, #4]
 80042e8:	2100      	movs	r1, #0
 80042ea:	2301      	movs	r3, #1
 80042ec:	f240 2271 	movw	r2, #625	; 0x271
 80042f0:	e9c0 1303 	strd	r1, r3, [r0, #12]
 80042f4:	6142      	str	r2, [r0, #20]
 80042f6:	6028      	str	r0, [r5, #0]
 80042f8:	6001      	str	r1, [r0, #0]
 80042fa:	f640 392c 	movw	r9, #2860	; 0xb2c
 80042fe:	f04f 0800 	mov.w	r8, #0
 8004302:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8004306:	e006      	b.n	8004316 <pow5mult+0x182>
 8004308:	4628      	mov	r0, r5
 800430a:	4629      	mov	r1, r5
 800430c:	f000 f848 	bl	80043a0 <mult>
 8004310:	6028      	str	r0, [r5, #0]
 8004312:	f8c0 8000 	str.w	r8, [r0]
 8004316:	4605      	mov	r5, r0
 8004318:	07e0      	lsls	r0, r4, #31
 800431a:	d016      	beq.n	800434a <pow5mult+0x1b6>
 800431c:	4650      	mov	r0, sl
 800431e:	4629      	mov	r1, r5
 8004320:	f000 f83e 	bl	80043a0 <mult>
 8004324:	4606      	mov	r6, r0
 8004326:	f1ba 0f00 	cmp.w	sl, #0
 800432a:	d00d      	beq.n	8004348 <pow5mult+0x1b4>
 800432c:	f8da 0004 	ldr.w	r0, [sl, #4]
 8004330:	2808      	cmp	r0, #8
 8004332:	db03      	blt.n	800433c <pow5mult+0x1a8>
 8004334:	4650      	mov	r0, sl
 8004336:	f000 fc75 	bl	8004c24 <free>
 800433a:	e005      	b.n	8004348 <pow5mult+0x1b4>
 800433c:	f859 1020 	ldr.w	r1, [r9, r0, lsl #2]
 8004340:	f8ca 1000 	str.w	r1, [sl]
 8004344:	f849 a020 	str.w	sl, [r9, r0, lsl #2]
 8004348:	46b2      	mov	sl, r6
 800434a:	ebb8 0f64 	cmp.w	r8, r4, asr #1
 800434e:	d004      	beq.n	800435a <pow5mult+0x1c6>
 8004350:	6828      	ldr	r0, [r5, #0]
 8004352:	1064      	asrs	r4, r4, #1
 8004354:	2800      	cmp	r0, #0
 8004356:	d1de      	bne.n	8004316 <pow5mult+0x182>
 8004358:	e7d6      	b.n	8004308 <pow5mult+0x174>
 800435a:	4650      	mov	r0, sl
 800435c:	b001      	add	sp, #4
 800435e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8004362:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004364:	f240 0128 	movw	r1, #40	; 0x28
 8004368:	f640 3250 	movw	r2, #2896	; 0xb50
 800436c:	2001      	movs	r0, #1
 800436e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004372:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004376:	fa00 f604 	lsl.w	r6, r0, r4
 800437a:	201b      	movs	r0, #27
 800437c:	f8d1 a000 	ldr.w	sl, [r1]
 8004380:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 8004384:	ebaa 0202 	sub.w	r2, sl, r2
 8004388:	10d2      	asrs	r2, r2, #3
 800438a:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 800438e:	08c0      	lsrs	r0, r0, #3
 8004390:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 8004394:	f63f af4a 	bhi.w	800422c <pow5mult+0x98>
 8004398:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 800439c:	6008      	str	r0, [r1, #0]
 800439e:	e749      	b.n	8004234 <pow5mult+0xa0>

080043a0 <mult>:
 80043a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80043a2:	af03      	add	r7, sp, #12
 80043a4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80043a8:	b083      	sub	sp, #12
 80043aa:	690b      	ldr	r3, [r1, #16]
 80043ac:	6902      	ldr	r2, [r0, #16]
 80043ae:	4605      	mov	r5, r0
 80043b0:	429a      	cmp	r2, r3
 80043b2:	bfb8      	it	lt
 80043b4:	460d      	movlt	r5, r1
 80043b6:	e9d5 6301 	ldrd	r6, r3, [r5, #4]
 80043ba:	692c      	ldr	r4, [r5, #16]
 80043bc:	bfb8      	it	lt
 80043be:	4601      	movlt	r1, r0
 80043c0:	f8d1 b010 	ldr.w	fp, [r1, #16]
 80043c4:	eb0b 0204 	add.w	r2, fp, r4
 80043c8:	429a      	cmp	r2, r3
 80043ca:	bfc8      	it	gt
 80043cc:	3601      	addgt	r6, #1
 80043ce:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80043d2:	2e07      	cmp	r6, #7
 80043d4:	dc0e      	bgt.n	80043f4 <mult+0x54>
 80043d6:	f640 302c 	movw	r0, #2860	; 0xb2c
 80043da:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80043de:	f850 a026 	ldr.w	sl, [r0, r6, lsl #2]
 80043e2:	f1ba 0f00 	cmp.w	sl, #0
 80043e6:	f000 8080 	beq.w	80044ea <mult+0x14a>
 80043ea:	f8da 1000 	ldr.w	r1, [sl]
 80043ee:	f840 1026 	str.w	r1, [r0, r6, lsl #2]
 80043f2:	e00d      	b.n	8004410 <mult+0x70>
 80043f4:	2001      	movs	r0, #1
 80043f6:	fa00 f806 	lsl.w	r8, r0, r6
 80043fa:	201b      	movs	r0, #27
 80043fc:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 8004400:	08c0      	lsrs	r0, r0, #3
 8004402:	00c0      	lsls	r0, r0, #3
 8004404:	f000 fc06 	bl	8004c14 <malloc>
 8004408:	4682      	mov	sl, r0
 800440a:	e9ca 6801 	strd	r6, r8, [sl, #4]
 800440e:	9a02      	ldr	r2, [sp, #8]
 8004410:	2000      	movs	r0, #0
 8004412:	f10a 0914 	add.w	r9, sl, #20
 8004416:	2a01      	cmp	r2, #1
 8004418:	e9ca 0003 	strd	r0, r0, [sl, #12]
 800441c:	db12      	blt.n	8004444 <mult+0xa4>
 800441e:	eb0a 0182 	add.w	r1, sl, r2, lsl #2
 8004422:	f10a 0218 	add.w	r2, sl, #24
 8004426:	f06f 0014 	mvn.w	r0, #20
 800442a:	3114      	adds	r1, #20
 800442c:	eba0 000a 	sub.w	r0, r0, sl
 8004430:	4291      	cmp	r1, r2
 8004432:	bf88      	it	hi
 8004434:	460a      	movhi	r2, r1
 8004436:	4410      	add	r0, r2
 8004438:	3004      	adds	r0, #4
 800443a:	f020 0103 	bic.w	r1, r0, #3
 800443e:	4648      	mov	r0, r9
 8004440:	f000 fb94 	bl	8004b6c <__aeabi_memclr>
 8004444:	f1bb 0f01 	cmp.w	fp, #1
 8004448:	db39      	blt.n	80044be <mult+0x11e>
 800444a:	9901      	ldr	r1, [sp, #4]
 800444c:	f105 0218 	add.w	r2, r5, #24
 8004450:	f105 0314 	add.w	r3, r5, #20
 8004454:	eb01 008b 	add.w	r0, r1, fp, lsl #2
 8004458:	f101 0e14 	add.w	lr, r1, #20
 800445c:	f100 0c14 	add.w	ip, r0, #20
 8004460:	eb05 0084 	add.w	r0, r5, r4, lsl #2
 8004464:	f100 0814 	add.w	r8, r0, #20
 8004468:	f06f 0014 	mvn.w	r0, #20
 800446c:	4590      	cmp	r8, r2
 800446e:	eba0 0005 	sub.w	r0, r0, r5
 8004472:	bf88      	it	hi
 8004474:	4642      	movhi	r2, r8
 8004476:	4410      	add	r0, r2
 8004478:	f020 0003 	bic.w	r0, r0, #3
 800447c:	4450      	add	r0, sl
 800447e:	f100 0b18 	add.w	fp, r0, #24
 8004482:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004486:	2c00      	cmp	r4, #0
 8004488:	d013      	beq.n	80044b2 <mult+0x112>
 800448a:	2000      	movs	r0, #0
 800448c:	2500      	movs	r5, #0
 800448e:	2200      	movs	r2, #0
 8004490:	f859 6000 	ldr.w	r6, [r9, r0]
 8004494:	5819      	ldr	r1, [r3, r0]
 8004496:	1976      	adds	r6, r6, r5
 8004498:	f142 0500 	adc.w	r5, r2, #0
 800449c:	2200      	movs	r2, #0
 800449e:	fbe1 6504 	umlal	r6, r5, r1, r4
 80044a2:	f849 6000 	str.w	r6, [r9, r0]
 80044a6:	3004      	adds	r0, #4
 80044a8:	1819      	adds	r1, r3, r0
 80044aa:	4541      	cmp	r1, r8
 80044ac:	d3f0      	bcc.n	8004490 <mult+0xf0>
 80044ae:	f8cb 5000 	str.w	r5, [fp]
 80044b2:	f10b 0b04 	add.w	fp, fp, #4
 80044b6:	f109 0904 	add.w	r9, r9, #4
 80044ba:	45e6      	cmp	lr, ip
 80044bc:	d3e1      	bcc.n	8004482 <mult+0xe2>
 80044be:	9802      	ldr	r0, [sp, #8]
 80044c0:	2801      	cmp	r0, #1
 80044c2:	db0b      	blt.n	80044dc <mult+0x13c>
 80044c4:	3004      	adds	r0, #4
 80044c6:	f85a 1020 	ldr.w	r1, [sl, r0, lsl #2]
 80044ca:	b931      	cbnz	r1, 80044da <mult+0x13a>
 80044cc:	1e41      	subs	r1, r0, #1
 80044ce:	3804      	subs	r0, #4
 80044d0:	2801      	cmp	r0, #1
 80044d2:	4608      	mov	r0, r1
 80044d4:	dcf7      	bgt.n	80044c6 <mult+0x126>
 80044d6:	1f08      	subs	r0, r1, #4
 80044d8:	e000      	b.n	80044dc <mult+0x13c>
 80044da:	3804      	subs	r0, #4
 80044dc:	f8ca 0010 	str.w	r0, [sl, #16]
 80044e0:	4650      	mov	r0, sl
 80044e2:	b003      	add	sp, #12
 80044e4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80044e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80044ea:	f240 0328 	movw	r3, #40	; 0x28
 80044ee:	f640 3250 	movw	r2, #2896	; 0xb50
 80044f2:	2001      	movs	r0, #1
 80044f4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80044f8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80044fc:	fa00 f806 	lsl.w	r8, r0, r6
 8004500:	201b      	movs	r0, #27
 8004502:	f8d3 a000 	ldr.w	sl, [r3]
 8004506:	eb00 0088 	add.w	r0, r0, r8, lsl #2
 800450a:	ebaa 0202 	sub.w	r2, sl, r2
 800450e:	10d2      	asrs	r2, r2, #3
 8004510:	eb02 02d0 	add.w	r2, r2, r0, lsr #3
 8004514:	08c0      	lsrs	r0, r0, #3
 8004516:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 800451a:	f63f af72 	bhi.w	8004402 <mult+0x62>
 800451e:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
 8004522:	6018      	str	r0, [r3, #0]
 8004524:	e771      	b.n	800440a <mult+0x6a>

08004526 <diff>:
 8004526:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004528:	af03      	add	r7, sp, #12
 800452a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800452e:	b081      	sub	sp, #4
 8004530:	460d      	mov	r5, r1
 8004532:	4682      	mov	sl, r0
 8004534:	f000 f8cb 	bl	80046ce <cmp>
 8004538:	2800      	cmp	r0, #0
 800453a:	d016      	beq.n	800456a <diff+0x44>
 800453c:	46ab      	mov	fp, r5
 800453e:	ea4f 78d0 	mov.w	r8, r0, lsr #31
 8004542:	bfbc      	itt	lt
 8004544:	46d3      	movlt	fp, sl
 8004546:	46aa      	movlt	sl, r5
 8004548:	f8da 5004 	ldr.w	r5, [sl, #4]
 800454c:	2d07      	cmp	r5, #7
 800454e:	dc16      	bgt.n	800457e <diff+0x58>
 8004550:	f640 312c 	movw	r1, #2860	; 0xb2c
 8004554:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004558:	f851 0025 	ldr.w	r0, [r1, r5, lsl #2]
 800455c:	2800      	cmp	r0, #0
 800455e:	f000 808a 	beq.w	8004676 <diff+0x150>
 8004562:	6802      	ldr	r2, [r0, #0]
 8004564:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
 8004568:	e015      	b.n	8004596 <diff+0x70>
 800456a:	f640 312c 	movw	r1, #2860	; 0xb2c
 800456e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004572:	6808      	ldr	r0, [r1, #0]
 8004574:	2800      	cmp	r0, #0
 8004576:	d06a      	beq.n	800464e <diff+0x128>
 8004578:	6802      	ldr	r2, [r0, #0]
 800457a:	600a      	str	r2, [r1, #0]
 800457c:	e09e      	b.n	80046bc <diff+0x196>
 800457e:	2001      	movs	r0, #1
 8004580:	fa00 f905 	lsl.w	r9, r0, r5
 8004584:	201b      	movs	r0, #27
 8004586:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 800458a:	08c1      	lsrs	r1, r0, #3
 800458c:	00c8      	lsls	r0, r1, #3
 800458e:	f000 fb41 	bl	8004c14 <malloc>
 8004592:	e9c0 5901 	strd	r5, r9, [r0, #4]
 8004596:	2100      	movs	r1, #0
 8004598:	f10b 0518 	add.w	r5, fp, #24
 800459c:	f06f 0214 	mvn.w	r2, #20
 80045a0:	2414      	movs	r4, #20
 80045a2:	e9c0 8103 	strd	r8, r1, [r0, #12]
 80045a6:	eba2 020b 	sub.w	r2, r2, fp
 80045aa:	f8db 3010 	ldr.w	r3, [fp, #16]
 80045ae:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
 80045b2:	f103 0814 	add.w	r8, r3, #20
 80045b6:	45a8      	cmp	r8, r5
 80045b8:	bf88      	it	hi
 80045ba:	4645      	movhi	r5, r8
 80045bc:	f8da e010 	ldr.w	lr, [sl, #16]
 80045c0:	442a      	add	r2, r5
 80045c2:	f022 0203 	bic.w	r2, r2, #3
 80045c6:	1885      	adds	r5, r0, r2
 80045c8:	4452      	add	r2, sl
 80045ca:	f105 0c18 	add.w	ip, r5, #24
 80045ce:	f102 0518 	add.w	r5, r2, #24
 80045d2:	2200      	movs	r2, #0
 80045d4:	f85b 6004 	ldr.w	r6, [fp, r4]
 80045d8:	f85a 3004 	ldr.w	r3, [sl, r4]
 80045dc:	1b9b      	subs	r3, r3, r6
 80045de:	f161 0600 	sbc.w	r6, r1, #0
 80045e2:	1a9a      	subs	r2, r3, r2
 80045e4:	5102      	str	r2, [r0, r4]
 80045e6:	f104 0404 	add.w	r4, r4, #4
 80045ea:	eb66 0201 	sbc.w	r2, r6, r1
 80045ee:	eb0b 0304 	add.w	r3, fp, r4
 80045f2:	f002 0201 	and.w	r2, r2, #1
 80045f6:	4543      	cmp	r3, r8
 80045f8:	d3ec      	bcc.n	80045d4 <diff+0xae>
 80045fa:	eb0a 038e 	add.w	r3, sl, lr, lsl #2
 80045fe:	3314      	adds	r3, #20
 8004600:	429d      	cmp	r5, r3
 8004602:	d219      	bcs.n	8004638 <diff+0x112>
 8004604:	2413      	movs	r4, #19
 8004606:	2601      	movs	r6, #1
 8004608:	eb04 048e 	add.w	r4, r4, lr, lsl #2
 800460c:	1b64      	subs	r4, r4, r5
 800460e:	4454      	add	r4, sl
 8004610:	eb06 0894 	add.w	r8, r6, r4, lsr #2
 8004614:	4666      	mov	r6, ip
 8004616:	f855 4b04 	ldr.w	r4, [r5], #4
 800461a:	1aa2      	subs	r2, r4, r2
 800461c:	f846 2b04 	str.w	r2, [r6], #4
 8004620:	f04f 0200 	mov.w	r2, #0
 8004624:	eb62 0101 	sbc.w	r1, r2, r1
 8004628:	429d      	cmp	r5, r3
 800462a:	f001 0201 	and.w	r2, r1, #1
 800462e:	f04f 0100 	mov.w	r1, #0
 8004632:	d3f0      	bcc.n	8004616 <diff+0xf0>
 8004634:	eb0c 0c88 	add.w	ip, ip, r8, lsl #2
 8004638:	f1ac 0204 	sub.w	r2, ip, #4
 800463c:	f10e 0101 	add.w	r1, lr, #1
 8004640:	f852 3904 	ldr.w	r3, [r2], #-4
 8004644:	3901      	subs	r1, #1
 8004646:	2b00      	cmp	r3, #0
 8004648:	d0fa      	beq.n	8004640 <diff+0x11a>
 800464a:	6101      	str	r1, [r0, #16]
 800464c:	e03b      	b.n	80046c6 <diff+0x1a0>
 800464e:	f240 0128 	movw	r1, #40	; 0x28
 8004652:	f640 3250 	movw	r2, #2896	; 0xb50
 8004656:	2303      	movs	r3, #3
 8004658:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800465c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004660:	6808      	ldr	r0, [r1, #0]
 8004662:	1a82      	subs	r2, r0, r2
 8004664:	eb03 02e2 	add.w	r2, r3, r2, asr #3
 8004668:	f5b2 7f90 	cmp.w	r2, #288	; 0x120
 800466c:	d81f      	bhi.n	80046ae <diff+0x188>
 800466e:	f100 0218 	add.w	r2, r0, #24
 8004672:	600a      	str	r2, [r1, #0]
 8004674:	e01e      	b.n	80046b4 <diff+0x18e>
 8004676:	f240 0228 	movw	r2, #40	; 0x28
 800467a:	2001      	movs	r0, #1
 800467c:	f640 3350 	movw	r3, #2896	; 0xb50
 8004680:	fa00 f905 	lsl.w	r9, r0, r5
 8004684:	201b      	movs	r0, #27
 8004686:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800468a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800468e:	eb00 0189 	add.w	r1, r0, r9, lsl #2
 8004692:	6810      	ldr	r0, [r2, #0]
 8004694:	1ac3      	subs	r3, r0, r3
 8004696:	10db      	asrs	r3, r3, #3
 8004698:	eb03 03d1 	add.w	r3, r3, r1, lsr #3
 800469c:	08c9      	lsrs	r1, r1, #3
 800469e:	f5b3 7f90 	cmp.w	r3, #288	; 0x120
 80046a2:	f63f af73 	bhi.w	800458c <diff+0x66>
 80046a6:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
 80046aa:	6011      	str	r1, [r2, #0]
 80046ac:	e771      	b.n	8004592 <diff+0x6c>
 80046ae:	2018      	movs	r0, #24
 80046b0:	f000 fab0 	bl	8004c14 <malloc>
 80046b4:	2100      	movs	r1, #0
 80046b6:	2201      	movs	r2, #1
 80046b8:	e9c0 1201 	strd	r1, r2, [r0, #4]
 80046bc:	2100      	movs	r1, #0
 80046be:	2201      	movs	r2, #1
 80046c0:	e9c0 1203 	strd	r1, r2, [r0, #12]
 80046c4:	6141      	str	r1, [r0, #20]
 80046c6:	b001      	add	sp, #4
 80046c8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80046cc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080046ce <cmp>:
 80046ce:	b580      	push	{r7, lr}
 80046d0:	466f      	mov	r7, sp
 80046d2:	6902      	ldr	r2, [r0, #16]
 80046d4:	f8d1 c010 	ldr.w	ip, [r1, #16]
 80046d8:	2a02      	cmp	r2, #2
 80046da:	db03      	blt.n	80046e4 <cmp+0x16>
 80046dc:	eb00 0382 	add.w	r3, r0, r2, lsl #2
 80046e0:	691b      	ldr	r3, [r3, #16]
 80046e2:	b323      	cbz	r3, 800472e <cmp+0x60>
 80046e4:	f1bc 0f02 	cmp.w	ip, #2
 80046e8:	db03      	blt.n	80046f2 <cmp+0x24>
 80046ea:	eb01 038c 	add.w	r3, r1, ip, lsl #2
 80046ee:	691b      	ldr	r3, [r3, #16]
 80046f0:	b353      	cbz	r3, 8004748 <cmp+0x7a>
 80046f2:	ebb2 020c 	subs.w	r2, r2, ip
 80046f6:	d111      	bne.n	800471c <cmp+0x4e>
 80046f8:	2210      	movs	r2, #16
 80046fa:	eb02 038c 	add.w	r3, r2, ip, lsl #2
 80046fe:	f100 0c14 	add.w	ip, r0, #20
 8004702:	18c2      	adds	r2, r0, r3
 8004704:	4419      	add	r1, r3
 8004706:	680b      	ldr	r3, [r1, #0]
 8004708:	6810      	ldr	r0, [r2, #0]
 800470a:	4298      	cmp	r0, r3
 800470c:	d108      	bne.n	8004720 <cmp+0x52>
 800470e:	1f10      	subs	r0, r2, #4
 8004710:	4562      	cmp	r2, ip
 8004712:	f1a1 0104 	sub.w	r1, r1, #4
 8004716:	4602      	mov	r2, r0
 8004718:	d8f5      	bhi.n	8004706 <cmp+0x38>
 800471a:	2200      	movs	r2, #0
 800471c:	4610      	mov	r0, r2
 800471e:	bd80      	pop	{r7, pc}
 8004720:	f04f 0201 	mov.w	r2, #1
 8004724:	bf38      	it	cc
 8004726:	f04f 32ff 	movcc.w	r2, #4294967295	; 0xffffffff
 800472a:	4610      	mov	r0, r2
 800472c:	bd80      	pop	{r7, pc}
 800472e:	f240 0030 	movw	r0, #48	; 0x30
 8004732:	f649 41f2 	movw	r1, #40178	; 0x9cf2
 8004736:	f649 42f6 	movw	r2, #40182	; 0x9cf6
 800473a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800473e:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004742:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004746:	e00b      	b.n	8004760 <cmp+0x92>
 8004748:	f240 0030 	movw	r0, #48	; 0x30
 800474c:	f649 41f2 	movw	r1, #40178	; 0x9cf2
 8004750:	f649 521a 	movw	r2, #40218	; 0x9d1a
 8004754:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004758:	f6c0 0100 	movt	r1, #2048	; 0x800
 800475c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8004760:	6800      	ldr	r0, [r0, #0]
 8004762:	68c0      	ldr	r0, [r0, #12]
 8004764:	f000 fa1e 	bl	8004ba4 <fprintf>
 8004768:	2001      	movs	r0, #1
 800476a:	f000 fa0b 	bl	8004b84 <exit>
	...

08004770 <benchmark>:
 8004770:	b5d0      	push	{r4, r6, r7, lr}
 8004772:	af02      	add	r7, sp, #8
 8004774:	b082      	sub	sp, #8
 8004776:	ed9f 0b30 	vldr	d0, [pc, #192]	; 8004838 <benchmark+0xc8>
 800477a:	f240 0414 	movw	r4, #20
 800477e:	2100      	movs	r1, #0
 8004780:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8004784:	ed8d 0b00 	vstr	d0, [sp]
 8004788:	6820      	ldr	r0, [r4, #0]
 800478a:	f7fe fa7d 	bl	8002c88 <strtod>
 800478e:	ed9d 1b00 	vldr	d1, [sp]
 8004792:	ec51 0b10 	vmov	r0, r1, d0
 8004796:	ec53 2b11 	vmov	r2, r3, d1
 800479a:	f7fb fd37 	bl	800020c <__adddf3>
 800479e:	ec41 0b10 	vmov	d0, r0, r1
 80047a2:	2100      	movs	r1, #0
 80047a4:	ed8d 0b00 	vstr	d0, [sp]
 80047a8:	6860      	ldr	r0, [r4, #4]
 80047aa:	f7fe fa6d 	bl	8002c88 <strtod>
 80047ae:	ed9d 1b00 	vldr	d1, [sp]
 80047b2:	ec51 0b10 	vmov	r0, r1, d0
 80047b6:	ec53 2b11 	vmov	r2, r3, d1
 80047ba:	f7fb fd27 	bl	800020c <__adddf3>
 80047be:	ec41 0b10 	vmov	d0, r0, r1
 80047c2:	2100      	movs	r1, #0
 80047c4:	ed8d 0b00 	vstr	d0, [sp]
 80047c8:	68a0      	ldr	r0, [r4, #8]
 80047ca:	f7fe fa5d 	bl	8002c88 <strtod>
 80047ce:	ed9d 1b00 	vldr	d1, [sp]
 80047d2:	ec51 0b10 	vmov	r0, r1, d0
 80047d6:	ec53 2b11 	vmov	r2, r3, d1
 80047da:	f7fb fd17 	bl	800020c <__adddf3>
 80047de:	ec41 0b10 	vmov	d0, r0, r1
 80047e2:	2100      	movs	r1, #0
 80047e4:	ed8d 0b00 	vstr	d0, [sp]
 80047e8:	68e0      	ldr	r0, [r4, #12]
 80047ea:	f7fe fa4d 	bl	8002c88 <strtod>
 80047ee:	ed9d 1b00 	vldr	d1, [sp]
 80047f2:	ec51 0b10 	vmov	r0, r1, d0
 80047f6:	ec53 2b11 	vmov	r2, r3, d1
 80047fa:	f7fb fd07 	bl	800020c <__adddf3>
 80047fe:	ec41 0b10 	vmov	d0, r0, r1
 8004802:	2100      	movs	r1, #0
 8004804:	ed8d 0b00 	vstr	d0, [sp]
 8004808:	6920      	ldr	r0, [r4, #16]
 800480a:	f7fe fa3d 	bl	8002c88 <strtod>
 800480e:	ed9d 1b00 	vldr	d1, [sp]
 8004812:	ec51 0b10 	vmov	r0, r1, d0
 8004816:	ec53 2b11 	vmov	r2, r3, d1
 800481a:	f7fb fcf7 	bl	800020c <__adddf3>
 800481e:	ec41 0b10 	vmov	d0, r0, r1
 8004822:	ed8d 0b00 	vstr	d0, [sp]
 8004826:	ed9d 0b00 	vldr	d0, [sp]
 800482a:	ec51 0b10 	vmov	r0, r1, d0
 800482e:	f7fc f93d 	bl	8000aac <__aeabi_d2iz>
 8004832:	b002      	add	sp, #8
 8004834:	bdd0      	pop	{r4, r6, r7, pc}
 8004836:	bf00      	nop
	...

08004840 <b2d>:
 8004840:	b5b0      	push	{r4, r5, r7, lr}
 8004842:	af02      	add	r7, sp, #8
 8004844:	6902      	ldr	r2, [r0, #16]
 8004846:	f100 0c14 	add.w	ip, r0, #20
 800484a:	eb0c 0e82 	add.w	lr, ip, r2, lsl #2
 800484e:	4673      	mov	r3, lr
 8004850:	f853 0d04 	ldr.w	r0, [r3, #-4]!
 8004854:	2800      	cmp	r0, #0
 8004856:	d05c      	beq.n	8004912 <b2d+0xd2>
 8004858:	2500      	movs	r5, #0
 800485a:	4604      	mov	r4, r0
 800485c:	2210      	movs	r2, #16
 800485e:	ebb5 4f10 	cmp.w	r5, r0, lsr #16
 8004862:	bf08      	it	eq
 8004864:	0424      	lsleq	r4, r4, #16
 8004866:	bf18      	it	ne
 8004868:	2200      	movne	r2, #0
 800486a:	ebb5 6f14 	cmp.w	r5, r4, lsr #24
 800486e:	bf04      	itt	eq
 8004870:	f042 0208 	orreq.w	r2, r2, #8
 8004874:	0224      	lsleq	r4, r4, #8
 8004876:	ebb5 7f14 	cmp.w	r5, r4, lsr #28
 800487a:	bf04      	itt	eq
 800487c:	f042 0204 	orreq.w	r2, r2, #4
 8004880:	0124      	lsleq	r4, r4, #4
 8004882:	ebb5 7f94 	cmp.w	r5, r4, lsr #30
 8004886:	bf04      	itt	eq
 8004888:	f042 0202 	orreq.w	r2, r2, #2
 800488c:	00a4      	lsleq	r4, r4, #2
 800488e:	2c00      	cmp	r4, #0
 8004890:	db06      	blt.n	80048a0 <b2d+0x60>
 8004892:	0064      	lsls	r4, r4, #1
 8004894:	d403      	bmi.n	800489e <b2d+0x5e>
 8004896:	2200      	movs	r2, #0
 8004898:	600a      	str	r2, [r1, #0]
 800489a:	2220      	movs	r2, #32
 800489c:	e016      	b.n	80048cc <b2d+0x8c>
 800489e:	3201      	adds	r2, #1
 80048a0:	f1c2 0420 	rsb	r4, r2, #32
 80048a4:	2a07      	cmp	r2, #7
 80048a6:	600c      	str	r4, [r1, #0]
 80048a8:	dc10      	bgt.n	80048cc <b2d+0x8c>
 80048aa:	4563      	cmp	r3, ip
 80048ac:	f1c2 0108 	rsb	r1, r2, #8
 80048b0:	f102 0218 	add.w	r2, r2, #24
 80048b4:	bf8c      	ite	hi
 80048b6:	f85e 3c08 	ldrhi.w	r3, [lr, #-8]
 80048ba:	2300      	movls	r3, #0
 80048bc:	fa20 f501 	lsr.w	r5, r0, r1
 80048c0:	4090      	lsls	r0, r2
 80048c2:	fa23 f101 	lsr.w	r1, r3, r1
 80048c6:	ea41 0400 	orr.w	r4, r1, r0
 80048ca:	e01d      	b.n	8004908 <b2d+0xc8>
 80048cc:	4563      	cmp	r3, ip
 80048ce:	bf86      	itte	hi
 80048d0:	f85e 4d08 	ldrhi.w	r4, [lr, #-8]!
 80048d4:	4673      	movhi	r3, lr
 80048d6:	2400      	movls	r4, #0
 80048d8:	f1b2 0108 	subs.w	r1, r2, #8
 80048dc:	d013      	beq.n	8004906 <b2d+0xc6>
 80048de:	fa00 f501 	lsl.w	r5, r0, r1
 80048e2:	f1c2 0028 	rsb	r0, r2, #40	; 0x28
 80048e6:	4563      	cmp	r3, ip
 80048e8:	fa04 f101 	lsl.w	r1, r4, r1
 80048ec:	fa24 f200 	lsr.w	r2, r4, r0
 80048f0:	ea45 0502 	orr.w	r5, r5, r2
 80048f4:	bf8c      	ite	hi
 80048f6:	f853 2c04 	ldrhi.w	r2, [r3, #-4]
 80048fa:	2200      	movls	r2, #0
 80048fc:	fa22 f000 	lsr.w	r0, r2, r0
 8004900:	ea40 0401 	orr.w	r4, r0, r1
 8004904:	e000      	b.n	8004908 <b2d+0xc8>
 8004906:	4605      	mov	r5, r0
 8004908:	f045 4081 	orr.w	r0, r5, #1082130432	; 0x40800000
 800490c:	ec40 4b10 	vmov	d0, r4, r0
 8004910:	bdb0      	pop	{r4, r5, r7, pc}
 8004912:	f240 0030 	movw	r0, #48	; 0x30
 8004916:	f649 41f2 	movw	r1, #40178	; 0x9cf2
 800491a:	f649 523e 	movw	r2, #40254	; 0x9d3e
 800491e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004922:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004926:	f6c0 0200 	movt	r2, #2048	; 0x800
 800492a:	6800      	ldr	r0, [r0, #0]
 800492c:	68c0      	ldr	r0, [r0, #12]
 800492e:	f000 f939 	bl	8004ba4 <fprintf>
 8004932:	2001      	movs	r0, #1
 8004934:	f000 f926 	bl	8004b84 <exit>

08004938 <__io_putchar>:
 8004938:	b580      	push	{r7, lr}
 800493a:	466f      	mov	r7, sp
 800493c:	b082      	sub	sp, #8
 800493e:	9001      	str	r0, [sp, #4]
 8004940:	f241 4054 	movw	r0, #5204	; 0x1454
 8004944:	a901      	add	r1, sp, #4
 8004946:	2201      	movs	r2, #1
 8004948:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800494c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004950:	f7fd fa25 	bl	8001d9e <HAL_UART_Transmit>
 8004954:	9801      	ldr	r0, [sp, #4]
 8004956:	b002      	add	sp, #8
 8004958:	bd80      	pop	{r7, pc}

0800495a <initialise_benchmark>:
 800495a:	2000      	movs	r0, #0
 800495c:	4770      	bx	lr

0800495e <verify_benchmark>:
 800495e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004962:	4770      	bx	lr

08004964 <main>:
 8004964:	b5b0      	push	{r4, r5, r7, lr}
 8004966:	af02      	add	r7, sp, #8
 8004968:	f241 4154 	movw	r1, #5204	; 0x1454
 800496c:	f643 0000 	movw	r0, #14336	; 0x3800
 8004970:	220c      	movs	r2, #12
 8004972:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004976:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800497a:	6008      	str	r0, [r1, #0]
 800497c:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8004980:	6048      	str	r0, [r1, #4]
 8004982:	2000      	movs	r0, #0
 8004984:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8004988:	6108      	str	r0, [r1, #16]
 800498a:	6248      	str	r0, [r1, #36]	; 0x24
 800498c:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8004990:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8004994:	2000      	movs	r0, #0
 8004996:	f7fd fc3e 	bl	8002216 <BSP_COM_Init>
 800499a:	f649 50f0 	movw	r0, #40432	; 0x9df0
 800499e:	f6c0 0000 	movt	r0, #2048	; 0x800
 80049a2:	f000 fca3 	bl	80052ec <puts>
 80049a6:	f7fc fc01 	bl	80011ac <HAL_Init>
 80049aa:	f649 6010 	movw	r0, #40464	; 0x9e10
 80049ae:	f6c0 0000 	movt	r0, #2048	; 0x800
 80049b2:	f000 fc9b 	bl	80052ec <puts>
 80049b6:	f7ff ffd0 	bl	800495a <initialise_benchmark>
 80049ba:	f7fc fc0f 	bl	80011dc <HAL_GetTick>
 80049be:	4601      	mov	r1, r0
 80049c0:	f649 507e 	movw	r0, #40318	; 0x9d7e
 80049c4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80049c8:	f000 fc2e 	bl	8005228 <printf>
 80049cc:	f7ff fed0 	bl	8004770 <benchmark>
 80049d0:	4605      	mov	r5, r0
 80049d2:	f7fc fc03 	bl	80011dc <HAL_GetTick>
 80049d6:	4604      	mov	r4, r0
 80049d8:	4628      	mov	r0, r5
 80049da:	f7ff ffc0 	bl	800495e <verify_benchmark>
 80049de:	4601      	mov	r1, r0
 80049e0:	b141      	cbz	r1, 80049f4 <main+0x90>
 80049e2:	f649 50a2 	movw	r0, #40354	; 0x9da2
 80049e6:	4622      	mov	r2, r4
 80049e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80049ec:	f000 fc1c 	bl	8005228 <printf>
 80049f0:	2000      	movs	r0, #0
 80049f2:	bdb0      	pop	{r4, r5, r7, pc}
 80049f4:	f649 50c9 	movw	r0, #40393	; 0x9dc9
 80049f8:	2100      	movs	r1, #0
 80049fa:	f6c0 0000 	movt	r0, #2048	; 0x800
 80049fe:	f000 fc13 	bl	8005228 <printf>
 8004a02:	2000      	movs	r0, #0
 8004a04:	bdb0      	pop	{r4, r5, r7, pc}

08004a06 <SysTick_Handler>:
 8004a06:	b580      	push	{r7, lr}
 8004a08:	466f      	mov	r7, sp
 8004a0a:	f7fc fbdf 	bl	80011cc <HAL_IncTick>
 8004a0e:	f7fc fc3b 	bl	8001288 <HAL_SYSTICK_IRQHandler>
 8004a12:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004a16:	f7fd ba57 	b.w	8001ec8 <osSystickHandler>

08004a1a <_exit>:
 8004a1a:	b580      	push	{r7, lr}
 8004a1c:	466f      	mov	r7, sp
 8004a1e:	f000 f8ab 	bl	8004b78 <__errno>
 8004a22:	2116      	movs	r1, #22
 8004a24:	6001      	str	r1, [r0, #0]
 8004a26:	e7fe      	b.n	8004a26 <_exit+0xc>

08004a28 <_read>:
 8004a28:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004a2a:	af03      	add	r7, sp, #12
 8004a2c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8004a30:	4614      	mov	r4, r2
 8004a32:	460d      	mov	r5, r1
 8004a34:	2c01      	cmp	r4, #1
 8004a36:	db06      	blt.n	8004a46 <_read+0x1e>
 8004a38:	4626      	mov	r6, r4
 8004a3a:	f3af 8000 	nop.w
 8004a3e:	f805 0b01 	strb.w	r0, [r5], #1
 8004a42:	3e01      	subs	r6, #1
 8004a44:	d1f9      	bne.n	8004a3a <_read+0x12>
 8004a46:	4620      	mov	r0, r4
 8004a48:	f85d bb04 	ldr.w	fp, [sp], #4
 8004a4c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004a4e <_write>:
 8004a4e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004a50:	af03      	add	r7, sp, #12
 8004a52:	f84d bd04 	str.w	fp, [sp, #-4]!
 8004a56:	4614      	mov	r4, r2
 8004a58:	460d      	mov	r5, r1
 8004a5a:	2c01      	cmp	r4, #1
 8004a5c:	db06      	blt.n	8004a6c <_write+0x1e>
 8004a5e:	4626      	mov	r6, r4
 8004a60:	f815 0b01 	ldrb.w	r0, [r5], #1
 8004a64:	f7ff ff68 	bl	8004938 <__io_putchar>
 8004a68:	3e01      	subs	r6, #1
 8004a6a:	d1f9      	bne.n	8004a60 <_write+0x12>
 8004a6c:	4620      	mov	r0, r4
 8004a6e:	f85d bb04 	ldr.w	fp, [sp], #4
 8004a72:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004a74 <_sbrk>:
 8004a74:	f241 42d8 	movw	r2, #5336	; 0x14d8
 8004a78:	4601      	mov	r1, r0
 8004a7a:	466b      	mov	r3, sp
 8004a7c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004a80:	6810      	ldr	r0, [r2, #0]
 8004a82:	2800      	cmp	r0, #0
 8004a84:	bf02      	ittt	eq
 8004a86:	f241 5080 	movweq	r0, #5504	; 0x1580
 8004a8a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8004a8e:	6010      	streq	r0, [r2, #0]
 8004a90:	4401      	add	r1, r0
 8004a92:	4299      	cmp	r1, r3
 8004a94:	bf9c      	itt	ls
 8004a96:	6011      	strls	r1, [r2, #0]
 8004a98:	4770      	bxls	lr
 8004a9a:	b580      	push	{r7, lr}
 8004a9c:	466f      	mov	r7, sp
 8004a9e:	f000 f86b 	bl	8004b78 <__errno>
 8004aa2:	210c      	movs	r1, #12
 8004aa4:	6001      	str	r1, [r0, #0]
 8004aa6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004aaa:	bd80      	pop	{r7, pc}

08004aac <_close>:
 8004aac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004ab0:	4770      	bx	lr

08004ab2 <_fstat>:
 8004ab2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8004ab6:	6048      	str	r0, [r1, #4]
 8004ab8:	2000      	movs	r0, #0
 8004aba:	4770      	bx	lr

08004abc <_isatty>:
 8004abc:	2001      	movs	r0, #1
 8004abe:	4770      	bx	lr

08004ac0 <_lseek>:
 8004ac0:	2000      	movs	r0, #0
 8004ac2:	4770      	bx	lr

08004ac4 <SystemInit>:
 8004ac4:	f64e 5088 	movw	r0, #60808	; 0xed88
 8004ac8:	f04f 0c00 	mov.w	ip, #0
 8004acc:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8004ad0:	6801      	ldr	r1, [r0, #0]
 8004ad2:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8004ad6:	6001      	str	r1, [r0, #0]
 8004ad8:	f241 0100 	movw	r1, #4096	; 0x1000
 8004adc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8004ae0:	680a      	ldr	r2, [r1, #0]
 8004ae2:	f042 0201 	orr.w	r2, r2, #1
 8004ae6:	600a      	str	r2, [r1, #0]
 8004ae8:	f8c1 c008 	str.w	ip, [r1, #8]
 8004aec:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8004af0:	680b      	ldr	r3, [r1, #0]
 8004af2:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8004af6:	401a      	ands	r2, r3
 8004af8:	600a      	str	r2, [r1, #0]
 8004afa:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8004afe:	60ca      	str	r2, [r1, #12]
 8004b00:	680a      	ldr	r2, [r1, #0]
 8004b02:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8004b06:	600a      	str	r2, [r1, #0]
 8004b08:	f8c1 c018 	str.w	ip, [r1, #24]
 8004b0c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8004b10:	f840 1c80 	str.w	r1, [r0, #-128]
 8004b14:	4770      	bx	lr
	...

08004b18 <Reset_Handler>:
 8004b18:	f8df d034 	ldr.w	sp, [pc, #52]	; 8004b50 <LoopForever+0x2>
 8004b1c:	2100      	movs	r1, #0
 8004b1e:	e003      	b.n	8004b28 <LoopCopyDataInit>

08004b20 <CopyDataInit>:
 8004b20:	4b0c      	ldr	r3, [pc, #48]	; (8004b54 <LoopForever+0x6>)
 8004b22:	585b      	ldr	r3, [r3, r1]
 8004b24:	5043      	str	r3, [r0, r1]
 8004b26:	3104      	adds	r1, #4

08004b28 <LoopCopyDataInit>:
 8004b28:	480b      	ldr	r0, [pc, #44]	; (8004b58 <LoopForever+0xa>)
 8004b2a:	4b0c      	ldr	r3, [pc, #48]	; (8004b5c <LoopForever+0xe>)
 8004b2c:	1842      	adds	r2, r0, r1
 8004b2e:	429a      	cmp	r2, r3
 8004b30:	d3f6      	bcc.n	8004b20 <CopyDataInit>
 8004b32:	4a0b      	ldr	r2, [pc, #44]	; (8004b60 <LoopForever+0x12>)
 8004b34:	e002      	b.n	8004b3c <LoopFillZerobss>

08004b36 <FillZerobss>:
 8004b36:	2300      	movs	r3, #0
 8004b38:	f842 3b04 	str.w	r3, [r2], #4

08004b3c <LoopFillZerobss>:
 8004b3c:	4b09      	ldr	r3, [pc, #36]	; (8004b64 <LoopForever+0x16>)
 8004b3e:	429a      	cmp	r2, r3
 8004b40:	d3f9      	bcc.n	8004b36 <FillZerobss>
 8004b42:	f7ff ffbf 	bl	8004ac4 <SystemInit>
 8004b46:	f000 f841 	bl	8004bcc <__libc_init_array>
 8004b4a:	f7ff ff0b 	bl	8004964 <main>

08004b4e <LoopForever>:
 8004b4e:	e7fe      	b.n	8004b4e <LoopForever>
 8004b50:	20018000 	.word	0x20018000
 8004b54:	0800a0d8 	.word	0x0800a0d8
 8004b58:	20000000 	.word	0x20000000
 8004b5c:	200009e0 	.word	0x200009e0
 8004b60:	200009e0 	.word	0x200009e0
 8004b64:	20001580 	.word	0x20001580

08004b68 <ADC1_2_IRQHandler>:
 8004b68:	e7fe      	b.n	8004b68 <ADC1_2_IRQHandler>
	...

08004b6c <__aeabi_memclr>:
 8004b6c:	2200      	movs	r2, #0
 8004b6e:	f7fc b945 	b.w	8000dfc <__aeabi_memset>
 8004b72:	bf00      	nop

08004b74 <__aeabi_memcpy>:
 8004b74:	f7fc b990 	b.w	8000e98 <memcpy>

08004b78 <__errno>:
 8004b78:	4b01      	ldr	r3, [pc, #4]	; (8004b80 <__errno+0x8>)
 8004b7a:	6818      	ldr	r0, [r3, #0]
 8004b7c:	4770      	bx	lr
 8004b7e:	bf00      	nop
 8004b80:	20000030 	.word	0x20000030

08004b84 <exit>:
 8004b84:	b508      	push	{r3, lr}
 8004b86:	2100      	movs	r1, #0
 8004b88:	4604      	mov	r4, r0
 8004b8a:	f002 f9b9 	bl	8006f00 <__call_exitprocs>
 8004b8e:	4b04      	ldr	r3, [pc, #16]	; (8004ba0 <exit+0x1c>)
 8004b90:	6818      	ldr	r0, [r3, #0]
 8004b92:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 8004b94:	b103      	cbz	r3, 8004b98 <exit+0x14>
 8004b96:	4798      	blx	r3
 8004b98:	4620      	mov	r0, r4
 8004b9a:	f7ff ff3e 	bl	8004a1a <_exit>
 8004b9e:	bf00      	nop
 8004ba0:	08009e30 	.word	0x08009e30

08004ba4 <fprintf>:
 8004ba4:	b40e      	push	{r1, r2, r3}
 8004ba6:	b510      	push	{r4, lr}
 8004ba8:	b083      	sub	sp, #12
 8004baa:	ab05      	add	r3, sp, #20
 8004bac:	4c06      	ldr	r4, [pc, #24]	; (8004bc8 <fprintf+0x24>)
 8004bae:	f853 2b04 	ldr.w	r2, [r3], #4
 8004bb2:	9301      	str	r3, [sp, #4]
 8004bb4:	4601      	mov	r1, r0
 8004bb6:	6820      	ldr	r0, [r4, #0]
 8004bb8:	f000 fbb2 	bl	8005320 <_vfprintf_r>
 8004bbc:	b003      	add	sp, #12
 8004bbe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004bc2:	b003      	add	sp, #12
 8004bc4:	4770      	bx	lr
 8004bc6:	bf00      	nop
 8004bc8:	20000030 	.word	0x20000030

08004bcc <__libc_init_array>:
 8004bcc:	b570      	push	{r4, r5, r6, lr}
 8004bce:	4e0d      	ldr	r6, [pc, #52]	; (8004c04 <__libc_init_array+0x38>)
 8004bd0:	4d0d      	ldr	r5, [pc, #52]	; (8004c08 <__libc_init_array+0x3c>)
 8004bd2:	1b76      	subs	r6, r6, r5
 8004bd4:	10b6      	asrs	r6, r6, #2
 8004bd6:	d006      	beq.n	8004be6 <__libc_init_array+0x1a>
 8004bd8:	2400      	movs	r4, #0
 8004bda:	3401      	adds	r4, #1
 8004bdc:	f855 3b04 	ldr.w	r3, [r5], #4
 8004be0:	4798      	blx	r3
 8004be2:	42a6      	cmp	r6, r4
 8004be4:	d1f9      	bne.n	8004bda <__libc_init_array+0xe>
 8004be6:	4e09      	ldr	r6, [pc, #36]	; (8004c0c <__libc_init_array+0x40>)
 8004be8:	4d09      	ldr	r5, [pc, #36]	; (8004c10 <__libc_init_array+0x44>)
 8004bea:	1b76      	subs	r6, r6, r5
 8004bec:	f004 ff2c 	bl	8009a48 <_init>
 8004bf0:	10b6      	asrs	r6, r6, #2
 8004bf2:	d006      	beq.n	8004c02 <__libc_init_array+0x36>
 8004bf4:	2400      	movs	r4, #0
 8004bf6:	3401      	adds	r4, #1
 8004bf8:	f855 3b04 	ldr.w	r3, [r5], #4
 8004bfc:	4798      	blx	r3
 8004bfe:	42a6      	cmp	r6, r4
 8004c00:	d1f9      	bne.n	8004bf6 <__libc_init_array+0x2a>
 8004c02:	bd70      	pop	{r4, r5, r6, pc}
 8004c04:	0800a0c8 	.word	0x0800a0c8
 8004c08:	0800a0c8 	.word	0x0800a0c8
 8004c0c:	0800a0d0 	.word	0x0800a0d0
 8004c10:	0800a0c8 	.word	0x0800a0c8

08004c14 <malloc>:
 8004c14:	4b02      	ldr	r3, [pc, #8]	; (8004c20 <malloc+0xc>)
 8004c16:	4601      	mov	r1, r0
 8004c18:	6818      	ldr	r0, [r3, #0]
 8004c1a:	f000 b80b 	b.w	8004c34 <_malloc_r>
 8004c1e:	bf00      	nop
 8004c20:	20000030 	.word	0x20000030

08004c24 <free>:
 8004c24:	4b02      	ldr	r3, [pc, #8]	; (8004c30 <free+0xc>)
 8004c26:	4601      	mov	r1, r0
 8004c28:	6818      	ldr	r0, [r3, #0]
 8004c2a:	f003 bb2d 	b.w	8008288 <_free_r>
 8004c2e:	bf00      	nop
 8004c30:	20000030 	.word	0x20000030

08004c34 <_malloc_r>:
 8004c34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004c38:	f101 050b 	add.w	r5, r1, #11
 8004c3c:	2d16      	cmp	r5, #22
 8004c3e:	b083      	sub	sp, #12
 8004c40:	4606      	mov	r6, r0
 8004c42:	d823      	bhi.n	8004c8c <_malloc_r+0x58>
 8004c44:	2910      	cmp	r1, #16
 8004c46:	f200 80b9 	bhi.w	8004dbc <_malloc_r+0x188>
 8004c4a:	f000 fae1 	bl	8005210 <__malloc_lock>
 8004c4e:	2510      	movs	r5, #16
 8004c50:	2318      	movs	r3, #24
 8004c52:	2002      	movs	r0, #2
 8004c54:	4fc5      	ldr	r7, [pc, #788]	; (8004f6c <_malloc_r+0x338>)
 8004c56:	443b      	add	r3, r7
 8004c58:	f1a3 0208 	sub.w	r2, r3, #8
 8004c5c:	685c      	ldr	r4, [r3, #4]
 8004c5e:	4294      	cmp	r4, r2
 8004c60:	f000 8166 	beq.w	8004f30 <_malloc_r+0x2fc>
 8004c64:	6863      	ldr	r3, [r4, #4]
 8004c66:	f023 0303 	bic.w	r3, r3, #3
 8004c6a:	4423      	add	r3, r4
 8004c6c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8004c70:	685a      	ldr	r2, [r3, #4]
 8004c72:	60e9      	str	r1, [r5, #12]
 8004c74:	f042 0201 	orr.w	r2, r2, #1
 8004c78:	608d      	str	r5, [r1, #8]
 8004c7a:	4630      	mov	r0, r6
 8004c7c:	605a      	str	r2, [r3, #4]
 8004c7e:	f000 facd 	bl	800521c <__malloc_unlock>
 8004c82:	3408      	adds	r4, #8
 8004c84:	4620      	mov	r0, r4
 8004c86:	b003      	add	sp, #12
 8004c88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c8c:	f035 0507 	bics.w	r5, r5, #7
 8004c90:	f100 8094 	bmi.w	8004dbc <_malloc_r+0x188>
 8004c94:	42a9      	cmp	r1, r5
 8004c96:	f200 8091 	bhi.w	8004dbc <_malloc_r+0x188>
 8004c9a:	f000 fab9 	bl	8005210 <__malloc_lock>
 8004c9e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8004ca2:	f0c0 8183 	bcc.w	8004fac <_malloc_r+0x378>
 8004ca6:	0a6b      	lsrs	r3, r5, #9
 8004ca8:	f000 808f 	beq.w	8004dca <_malloc_r+0x196>
 8004cac:	2b04      	cmp	r3, #4
 8004cae:	f200 8146 	bhi.w	8004f3e <_malloc_r+0x30a>
 8004cb2:	09ab      	lsrs	r3, r5, #6
 8004cb4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8004cb8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8004cbc:	00c3      	lsls	r3, r0, #3
 8004cbe:	4fab      	ldr	r7, [pc, #684]	; (8004f6c <_malloc_r+0x338>)
 8004cc0:	443b      	add	r3, r7
 8004cc2:	f1a3 0108 	sub.w	r1, r3, #8
 8004cc6:	685c      	ldr	r4, [r3, #4]
 8004cc8:	42a1      	cmp	r1, r4
 8004cca:	d106      	bne.n	8004cda <_malloc_r+0xa6>
 8004ccc:	e00c      	b.n	8004ce8 <_malloc_r+0xb4>
 8004cce:	2a00      	cmp	r2, #0
 8004cd0:	f280 811d 	bge.w	8004f0e <_malloc_r+0x2da>
 8004cd4:	68e4      	ldr	r4, [r4, #12]
 8004cd6:	42a1      	cmp	r1, r4
 8004cd8:	d006      	beq.n	8004ce8 <_malloc_r+0xb4>
 8004cda:	6863      	ldr	r3, [r4, #4]
 8004cdc:	f023 0303 	bic.w	r3, r3, #3
 8004ce0:	1b5a      	subs	r2, r3, r5
 8004ce2:	2a0f      	cmp	r2, #15
 8004ce4:	ddf3      	ble.n	8004cce <_malloc_r+0x9a>
 8004ce6:	4660      	mov	r0, ip
 8004ce8:	693c      	ldr	r4, [r7, #16]
 8004cea:	f8df c294 	ldr.w	ip, [pc, #660]	; 8004f80 <_malloc_r+0x34c>
 8004cee:	4564      	cmp	r4, ip
 8004cf0:	d071      	beq.n	8004dd6 <_malloc_r+0x1a2>
 8004cf2:	6863      	ldr	r3, [r4, #4]
 8004cf4:	f023 0303 	bic.w	r3, r3, #3
 8004cf8:	1b5a      	subs	r2, r3, r5
 8004cfa:	2a0f      	cmp	r2, #15
 8004cfc:	f300 8144 	bgt.w	8004f88 <_malloc_r+0x354>
 8004d00:	2a00      	cmp	r2, #0
 8004d02:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8004d06:	f280 8126 	bge.w	8004f56 <_malloc_r+0x322>
 8004d0a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8004d0e:	f080 8169 	bcs.w	8004fe4 <_malloc_r+0x3b0>
 8004d12:	08db      	lsrs	r3, r3, #3
 8004d14:	1c59      	adds	r1, r3, #1
 8004d16:	687a      	ldr	r2, [r7, #4]
 8004d18:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8004d1c:	f8c4 8008 	str.w	r8, [r4, #8]
 8004d20:	f04f 0e01 	mov.w	lr, #1
 8004d24:	109b      	asrs	r3, r3, #2
 8004d26:	fa0e f303 	lsl.w	r3, lr, r3
 8004d2a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8004d2e:	4313      	orrs	r3, r2
 8004d30:	f1ae 0208 	sub.w	r2, lr, #8
 8004d34:	60e2      	str	r2, [r4, #12]
 8004d36:	607b      	str	r3, [r7, #4]
 8004d38:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8004d3c:	f8c8 400c 	str.w	r4, [r8, #12]
 8004d40:	1082      	asrs	r2, r0, #2
 8004d42:	2401      	movs	r4, #1
 8004d44:	4094      	lsls	r4, r2
 8004d46:	429c      	cmp	r4, r3
 8004d48:	d84b      	bhi.n	8004de2 <_malloc_r+0x1ae>
 8004d4a:	421c      	tst	r4, r3
 8004d4c:	d106      	bne.n	8004d5c <_malloc_r+0x128>
 8004d4e:	f020 0003 	bic.w	r0, r0, #3
 8004d52:	0064      	lsls	r4, r4, #1
 8004d54:	421c      	tst	r4, r3
 8004d56:	f100 0004 	add.w	r0, r0, #4
 8004d5a:	d0fa      	beq.n	8004d52 <_malloc_r+0x11e>
 8004d5c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8004d60:	46ce      	mov	lr, r9
 8004d62:	4680      	mov	r8, r0
 8004d64:	f8de 300c 	ldr.w	r3, [lr, #12]
 8004d68:	459e      	cmp	lr, r3
 8004d6a:	d107      	bne.n	8004d7c <_malloc_r+0x148>
 8004d6c:	e122      	b.n	8004fb4 <_malloc_r+0x380>
 8004d6e:	2a00      	cmp	r2, #0
 8004d70:	f280 8129 	bge.w	8004fc6 <_malloc_r+0x392>
 8004d74:	68db      	ldr	r3, [r3, #12]
 8004d76:	459e      	cmp	lr, r3
 8004d78:	f000 811c 	beq.w	8004fb4 <_malloc_r+0x380>
 8004d7c:	6859      	ldr	r1, [r3, #4]
 8004d7e:	f021 0103 	bic.w	r1, r1, #3
 8004d82:	1b4a      	subs	r2, r1, r5
 8004d84:	2a0f      	cmp	r2, #15
 8004d86:	ddf2      	ble.n	8004d6e <_malloc_r+0x13a>
 8004d88:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8004d8c:	195c      	adds	r4, r3, r5
 8004d8e:	f045 0501 	orr.w	r5, r5, #1
 8004d92:	605d      	str	r5, [r3, #4]
 8004d94:	f042 0501 	orr.w	r5, r2, #1
 8004d98:	f8c8 e00c 	str.w	lr, [r8, #12]
 8004d9c:	4630      	mov	r0, r6
 8004d9e:	f8ce 8008 	str.w	r8, [lr, #8]
 8004da2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8004da6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8004daa:	6065      	str	r5, [r4, #4]
 8004dac:	505a      	str	r2, [r3, r1]
 8004dae:	9301      	str	r3, [sp, #4]
 8004db0:	f000 fa34 	bl	800521c <__malloc_unlock>
 8004db4:	9b01      	ldr	r3, [sp, #4]
 8004db6:	f103 0408 	add.w	r4, r3, #8
 8004dba:	e763      	b.n	8004c84 <_malloc_r+0x50>
 8004dbc:	2400      	movs	r4, #0
 8004dbe:	230c      	movs	r3, #12
 8004dc0:	4620      	mov	r0, r4
 8004dc2:	6033      	str	r3, [r6, #0]
 8004dc4:	b003      	add	sp, #12
 8004dc6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004dca:	f44f 7300 	mov.w	r3, #512	; 0x200
 8004dce:	2040      	movs	r0, #64	; 0x40
 8004dd0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8004dd4:	e773      	b.n	8004cbe <_malloc_r+0x8a>
 8004dd6:	687b      	ldr	r3, [r7, #4]
 8004dd8:	1082      	asrs	r2, r0, #2
 8004dda:	2401      	movs	r4, #1
 8004ddc:	4094      	lsls	r4, r2
 8004dde:	429c      	cmp	r4, r3
 8004de0:	d9b3      	bls.n	8004d4a <_malloc_r+0x116>
 8004de2:	68bc      	ldr	r4, [r7, #8]
 8004de4:	6863      	ldr	r3, [r4, #4]
 8004de6:	f023 0903 	bic.w	r9, r3, #3
 8004dea:	45a9      	cmp	r9, r5
 8004dec:	d303      	bcc.n	8004df6 <_malloc_r+0x1c2>
 8004dee:	eba9 0305 	sub.w	r3, r9, r5
 8004df2:	2b0f      	cmp	r3, #15
 8004df4:	dc7b      	bgt.n	8004eee <_malloc_r+0x2ba>
 8004df6:	4b5e      	ldr	r3, [pc, #376]	; (8004f70 <_malloc_r+0x33c>)
 8004df8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8004f84 <_malloc_r+0x350>
 8004dfc:	681a      	ldr	r2, [r3, #0]
 8004dfe:	f8da 3000 	ldr.w	r3, [sl]
 8004e02:	3301      	adds	r3, #1
 8004e04:	eb05 0802 	add.w	r8, r5, r2
 8004e08:	f000 8148 	beq.w	800509c <_malloc_r+0x468>
 8004e0c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8004e10:	f108 080f 	add.w	r8, r8, #15
 8004e14:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8004e18:	f028 080f 	bic.w	r8, r8, #15
 8004e1c:	4641      	mov	r1, r8
 8004e1e:	4630      	mov	r0, r6
 8004e20:	f000 fa6c 	bl	80052fc <_sbrk_r>
 8004e24:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8004e28:	4683      	mov	fp, r0
 8004e2a:	f000 8104 	beq.w	8005036 <_malloc_r+0x402>
 8004e2e:	eb04 0009 	add.w	r0, r4, r9
 8004e32:	4558      	cmp	r0, fp
 8004e34:	f200 80fd 	bhi.w	8005032 <_malloc_r+0x3fe>
 8004e38:	4a4e      	ldr	r2, [pc, #312]	; (8004f74 <_malloc_r+0x340>)
 8004e3a:	6813      	ldr	r3, [r2, #0]
 8004e3c:	4443      	add	r3, r8
 8004e3e:	6013      	str	r3, [r2, #0]
 8004e40:	f000 814d 	beq.w	80050de <_malloc_r+0x4aa>
 8004e44:	f8da 1000 	ldr.w	r1, [sl]
 8004e48:	3101      	adds	r1, #1
 8004e4a:	bf1b      	ittet	ne
 8004e4c:	ebab 0000 	subne.w	r0, fp, r0
 8004e50:	181b      	addne	r3, r3, r0
 8004e52:	f8ca b000 	streq.w	fp, [sl]
 8004e56:	6013      	strne	r3, [r2, #0]
 8004e58:	f01b 0307 	ands.w	r3, fp, #7
 8004e5c:	f000 8134 	beq.w	80050c8 <_malloc_r+0x494>
 8004e60:	f1c3 0108 	rsb	r1, r3, #8
 8004e64:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8004e68:	448b      	add	fp, r1
 8004e6a:	3308      	adds	r3, #8
 8004e6c:	44d8      	add	r8, fp
 8004e6e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8004e72:	eba3 0808 	sub.w	r8, r3, r8
 8004e76:	4641      	mov	r1, r8
 8004e78:	4630      	mov	r0, r6
 8004e7a:	9201      	str	r2, [sp, #4]
 8004e7c:	f000 fa3e 	bl	80052fc <_sbrk_r>
 8004e80:	1c43      	adds	r3, r0, #1
 8004e82:	9a01      	ldr	r2, [sp, #4]
 8004e84:	f000 8146 	beq.w	8005114 <_malloc_r+0x4e0>
 8004e88:	eba0 010b 	sub.w	r1, r0, fp
 8004e8c:	4441      	add	r1, r8
 8004e8e:	f041 0101 	orr.w	r1, r1, #1
 8004e92:	6813      	ldr	r3, [r2, #0]
 8004e94:	f8c7 b008 	str.w	fp, [r7, #8]
 8004e98:	4443      	add	r3, r8
 8004e9a:	42bc      	cmp	r4, r7
 8004e9c:	f8cb 1004 	str.w	r1, [fp, #4]
 8004ea0:	6013      	str	r3, [r2, #0]
 8004ea2:	d015      	beq.n	8004ed0 <_malloc_r+0x29c>
 8004ea4:	f1b9 0f0f 	cmp.w	r9, #15
 8004ea8:	f240 8130 	bls.w	800510c <_malloc_r+0x4d8>
 8004eac:	6860      	ldr	r0, [r4, #4]
 8004eae:	f1a9 010c 	sub.w	r1, r9, #12
 8004eb2:	f021 0107 	bic.w	r1, r1, #7
 8004eb6:	f000 0001 	and.w	r0, r0, #1
 8004eba:	eb04 0c01 	add.w	ip, r4, r1
 8004ebe:	4308      	orrs	r0, r1
 8004ec0:	f04f 0e05 	mov.w	lr, #5
 8004ec4:	290f      	cmp	r1, #15
 8004ec6:	6060      	str	r0, [r4, #4]
 8004ec8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8004ecc:	f200 813a 	bhi.w	8005144 <_malloc_r+0x510>
 8004ed0:	4a29      	ldr	r2, [pc, #164]	; (8004f78 <_malloc_r+0x344>)
 8004ed2:	482a      	ldr	r0, [pc, #168]	; (8004f7c <_malloc_r+0x348>)
 8004ed4:	6811      	ldr	r1, [r2, #0]
 8004ed6:	68bc      	ldr	r4, [r7, #8]
 8004ed8:	428b      	cmp	r3, r1
 8004eda:	6801      	ldr	r1, [r0, #0]
 8004edc:	bf88      	it	hi
 8004ede:	6013      	strhi	r3, [r2, #0]
 8004ee0:	6862      	ldr	r2, [r4, #4]
 8004ee2:	428b      	cmp	r3, r1
 8004ee4:	f022 0203 	bic.w	r2, r2, #3
 8004ee8:	bf88      	it	hi
 8004eea:	6003      	strhi	r3, [r0, #0]
 8004eec:	e0a7      	b.n	800503e <_malloc_r+0x40a>
 8004eee:	1962      	adds	r2, r4, r5
 8004ef0:	f043 0301 	orr.w	r3, r3, #1
 8004ef4:	f045 0501 	orr.w	r5, r5, #1
 8004ef8:	6065      	str	r5, [r4, #4]
 8004efa:	4630      	mov	r0, r6
 8004efc:	60ba      	str	r2, [r7, #8]
 8004efe:	6053      	str	r3, [r2, #4]
 8004f00:	f000 f98c 	bl	800521c <__malloc_unlock>
 8004f04:	3408      	adds	r4, #8
 8004f06:	4620      	mov	r0, r4
 8004f08:	b003      	add	sp, #12
 8004f0a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f0e:	4423      	add	r3, r4
 8004f10:	68e1      	ldr	r1, [r4, #12]
 8004f12:	685a      	ldr	r2, [r3, #4]
 8004f14:	68a5      	ldr	r5, [r4, #8]
 8004f16:	f042 0201 	orr.w	r2, r2, #1
 8004f1a:	60e9      	str	r1, [r5, #12]
 8004f1c:	4630      	mov	r0, r6
 8004f1e:	608d      	str	r5, [r1, #8]
 8004f20:	605a      	str	r2, [r3, #4]
 8004f22:	f000 f97b 	bl	800521c <__malloc_unlock>
 8004f26:	3408      	adds	r4, #8
 8004f28:	4620      	mov	r0, r4
 8004f2a:	b003      	add	sp, #12
 8004f2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f30:	68dc      	ldr	r4, [r3, #12]
 8004f32:	42a3      	cmp	r3, r4
 8004f34:	bf08      	it	eq
 8004f36:	3002      	addeq	r0, #2
 8004f38:	f43f aed6 	beq.w	8004ce8 <_malloc_r+0xb4>
 8004f3c:	e692      	b.n	8004c64 <_malloc_r+0x30>
 8004f3e:	2b14      	cmp	r3, #20
 8004f40:	d971      	bls.n	8005026 <_malloc_r+0x3f2>
 8004f42:	2b54      	cmp	r3, #84	; 0x54
 8004f44:	f200 80ad 	bhi.w	80050a2 <_malloc_r+0x46e>
 8004f48:	0b2b      	lsrs	r3, r5, #12
 8004f4a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8004f4e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8004f52:	00c3      	lsls	r3, r0, #3
 8004f54:	e6b3      	b.n	8004cbe <_malloc_r+0x8a>
 8004f56:	4423      	add	r3, r4
 8004f58:	4630      	mov	r0, r6
 8004f5a:	685a      	ldr	r2, [r3, #4]
 8004f5c:	f042 0201 	orr.w	r2, r2, #1
 8004f60:	605a      	str	r2, [r3, #4]
 8004f62:	3408      	adds	r4, #8
 8004f64:	f000 f95a 	bl	800521c <__malloc_unlock>
 8004f68:	e68c      	b.n	8004c84 <_malloc_r+0x50>
 8004f6a:	bf00      	nop
 8004f6c:	20000460 	.word	0x20000460
 8004f70:	2000150c 	.word	0x2000150c
 8004f74:	200014dc 	.word	0x200014dc
 8004f78:	20001504 	.word	0x20001504
 8004f7c:	20001508 	.word	0x20001508
 8004f80:	20000468 	.word	0x20000468
 8004f84:	20000868 	.word	0x20000868
 8004f88:	1961      	adds	r1, r4, r5
 8004f8a:	f045 0e01 	orr.w	lr, r5, #1
 8004f8e:	f042 0501 	orr.w	r5, r2, #1
 8004f92:	f8c4 e004 	str.w	lr, [r4, #4]
 8004f96:	4630      	mov	r0, r6
 8004f98:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8004f9c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8004fa0:	604d      	str	r5, [r1, #4]
 8004fa2:	50e2      	str	r2, [r4, r3]
 8004fa4:	f000 f93a 	bl	800521c <__malloc_unlock>
 8004fa8:	3408      	adds	r4, #8
 8004faa:	e66b      	b.n	8004c84 <_malloc_r+0x50>
 8004fac:	08e8      	lsrs	r0, r5, #3
 8004fae:	f105 0308 	add.w	r3, r5, #8
 8004fb2:	e64f      	b.n	8004c54 <_malloc_r+0x20>
 8004fb4:	f108 0801 	add.w	r8, r8, #1
 8004fb8:	f018 0f03 	tst.w	r8, #3
 8004fbc:	f10e 0e08 	add.w	lr, lr, #8
 8004fc0:	f47f aed0 	bne.w	8004d64 <_malloc_r+0x130>
 8004fc4:	e052      	b.n	800506c <_malloc_r+0x438>
 8004fc6:	4419      	add	r1, r3
 8004fc8:	461c      	mov	r4, r3
 8004fca:	684a      	ldr	r2, [r1, #4]
 8004fcc:	68db      	ldr	r3, [r3, #12]
 8004fce:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8004fd2:	f042 0201 	orr.w	r2, r2, #1
 8004fd6:	604a      	str	r2, [r1, #4]
 8004fd8:	4630      	mov	r0, r6
 8004fda:	60eb      	str	r3, [r5, #12]
 8004fdc:	609d      	str	r5, [r3, #8]
 8004fde:	f000 f91d 	bl	800521c <__malloc_unlock>
 8004fe2:	e64f      	b.n	8004c84 <_malloc_r+0x50>
 8004fe4:	0a5a      	lsrs	r2, r3, #9
 8004fe6:	2a04      	cmp	r2, #4
 8004fe8:	d935      	bls.n	8005056 <_malloc_r+0x422>
 8004fea:	2a14      	cmp	r2, #20
 8004fec:	d86f      	bhi.n	80050ce <_malloc_r+0x49a>
 8004fee:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8004ff2:	00c9      	lsls	r1, r1, #3
 8004ff4:	325b      	adds	r2, #91	; 0x5b
 8004ff6:	eb07 0e01 	add.w	lr, r7, r1
 8004ffa:	5879      	ldr	r1, [r7, r1]
 8004ffc:	f1ae 0e08 	sub.w	lr, lr, #8
 8005000:	458e      	cmp	lr, r1
 8005002:	d058      	beq.n	80050b6 <_malloc_r+0x482>
 8005004:	684a      	ldr	r2, [r1, #4]
 8005006:	f022 0203 	bic.w	r2, r2, #3
 800500a:	429a      	cmp	r2, r3
 800500c:	d902      	bls.n	8005014 <_malloc_r+0x3e0>
 800500e:	6889      	ldr	r1, [r1, #8]
 8005010:	458e      	cmp	lr, r1
 8005012:	d1f7      	bne.n	8005004 <_malloc_r+0x3d0>
 8005014:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005018:	687b      	ldr	r3, [r7, #4]
 800501a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800501e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005022:	60cc      	str	r4, [r1, #12]
 8005024:	e68c      	b.n	8004d40 <_malloc_r+0x10c>
 8005026:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800502a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800502e:	00c3      	lsls	r3, r0, #3
 8005030:	e645      	b.n	8004cbe <_malloc_r+0x8a>
 8005032:	42bc      	cmp	r4, r7
 8005034:	d072      	beq.n	800511c <_malloc_r+0x4e8>
 8005036:	68bc      	ldr	r4, [r7, #8]
 8005038:	6862      	ldr	r2, [r4, #4]
 800503a:	f022 0203 	bic.w	r2, r2, #3
 800503e:	4295      	cmp	r5, r2
 8005040:	eba2 0305 	sub.w	r3, r2, r5
 8005044:	d802      	bhi.n	800504c <_malloc_r+0x418>
 8005046:	2b0f      	cmp	r3, #15
 8005048:	f73f af51 	bgt.w	8004eee <_malloc_r+0x2ba>
 800504c:	4630      	mov	r0, r6
 800504e:	f000 f8e5 	bl	800521c <__malloc_unlock>
 8005052:	2400      	movs	r4, #0
 8005054:	e616      	b.n	8004c84 <_malloc_r+0x50>
 8005056:	099a      	lsrs	r2, r3, #6
 8005058:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800505c:	00c9      	lsls	r1, r1, #3
 800505e:	3238      	adds	r2, #56	; 0x38
 8005060:	e7c9      	b.n	8004ff6 <_malloc_r+0x3c2>
 8005062:	f8d9 9000 	ldr.w	r9, [r9]
 8005066:	4599      	cmp	r9, r3
 8005068:	f040 8083 	bne.w	8005172 <_malloc_r+0x53e>
 800506c:	f010 0f03 	tst.w	r0, #3
 8005070:	f1a9 0308 	sub.w	r3, r9, #8
 8005074:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005078:	d1f3      	bne.n	8005062 <_malloc_r+0x42e>
 800507a:	687b      	ldr	r3, [r7, #4]
 800507c:	ea23 0304 	bic.w	r3, r3, r4
 8005080:	607b      	str	r3, [r7, #4]
 8005082:	0064      	lsls	r4, r4, #1
 8005084:	429c      	cmp	r4, r3
 8005086:	f63f aeac 	bhi.w	8004de2 <_malloc_r+0x1ae>
 800508a:	b91c      	cbnz	r4, 8005094 <_malloc_r+0x460>
 800508c:	e6a9      	b.n	8004de2 <_malloc_r+0x1ae>
 800508e:	0064      	lsls	r4, r4, #1
 8005090:	f108 0804 	add.w	r8, r8, #4
 8005094:	421c      	tst	r4, r3
 8005096:	d0fa      	beq.n	800508e <_malloc_r+0x45a>
 8005098:	4640      	mov	r0, r8
 800509a:	e65f      	b.n	8004d5c <_malloc_r+0x128>
 800509c:	f108 0810 	add.w	r8, r8, #16
 80050a0:	e6bc      	b.n	8004e1c <_malloc_r+0x1e8>
 80050a2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80050a6:	d826      	bhi.n	80050f6 <_malloc_r+0x4c2>
 80050a8:	0beb      	lsrs	r3, r5, #15
 80050aa:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80050ae:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80050b2:	00c3      	lsls	r3, r0, #3
 80050b4:	e603      	b.n	8004cbe <_malloc_r+0x8a>
 80050b6:	687b      	ldr	r3, [r7, #4]
 80050b8:	1092      	asrs	r2, r2, #2
 80050ba:	f04f 0801 	mov.w	r8, #1
 80050be:	fa08 f202 	lsl.w	r2, r8, r2
 80050c2:	4313      	orrs	r3, r2
 80050c4:	607b      	str	r3, [r7, #4]
 80050c6:	e7a8      	b.n	800501a <_malloc_r+0x3e6>
 80050c8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80050cc:	e6ce      	b.n	8004e6c <_malloc_r+0x238>
 80050ce:	2a54      	cmp	r2, #84	; 0x54
 80050d0:	d829      	bhi.n	8005126 <_malloc_r+0x4f2>
 80050d2:	0b1a      	lsrs	r2, r3, #12
 80050d4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80050d8:	00c9      	lsls	r1, r1, #3
 80050da:	326e      	adds	r2, #110	; 0x6e
 80050dc:	e78b      	b.n	8004ff6 <_malloc_r+0x3c2>
 80050de:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80050e2:	2900      	cmp	r1, #0
 80050e4:	f47f aeae 	bne.w	8004e44 <_malloc_r+0x210>
 80050e8:	eb09 0208 	add.w	r2, r9, r8
 80050ec:	68b9      	ldr	r1, [r7, #8]
 80050ee:	f042 0201 	orr.w	r2, r2, #1
 80050f2:	604a      	str	r2, [r1, #4]
 80050f4:	e6ec      	b.n	8004ed0 <_malloc_r+0x29c>
 80050f6:	f240 5254 	movw	r2, #1364	; 0x554
 80050fa:	4293      	cmp	r3, r2
 80050fc:	d81c      	bhi.n	8005138 <_malloc_r+0x504>
 80050fe:	0cab      	lsrs	r3, r5, #18
 8005100:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005104:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005108:	00c3      	lsls	r3, r0, #3
 800510a:	e5d8      	b.n	8004cbe <_malloc_r+0x8a>
 800510c:	2301      	movs	r3, #1
 800510e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005112:	e79b      	b.n	800504c <_malloc_r+0x418>
 8005114:	2101      	movs	r1, #1
 8005116:	f04f 0800 	mov.w	r8, #0
 800511a:	e6ba      	b.n	8004e92 <_malloc_r+0x25e>
 800511c:	4a16      	ldr	r2, [pc, #88]	; (8005178 <_malloc_r+0x544>)
 800511e:	6813      	ldr	r3, [r2, #0]
 8005120:	4443      	add	r3, r8
 8005122:	6013      	str	r3, [r2, #0]
 8005124:	e68e      	b.n	8004e44 <_malloc_r+0x210>
 8005126:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800512a:	d814      	bhi.n	8005156 <_malloc_r+0x522>
 800512c:	0bda      	lsrs	r2, r3, #15
 800512e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005132:	00c9      	lsls	r1, r1, #3
 8005134:	3277      	adds	r2, #119	; 0x77
 8005136:	e75e      	b.n	8004ff6 <_malloc_r+0x3c2>
 8005138:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800513c:	207f      	movs	r0, #127	; 0x7f
 800513e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005142:	e5bc      	b.n	8004cbe <_malloc_r+0x8a>
 8005144:	f104 0108 	add.w	r1, r4, #8
 8005148:	4630      	mov	r0, r6
 800514a:	9201      	str	r2, [sp, #4]
 800514c:	f003 f89c 	bl	8008288 <_free_r>
 8005150:	9a01      	ldr	r2, [sp, #4]
 8005152:	6813      	ldr	r3, [r2, #0]
 8005154:	e6bc      	b.n	8004ed0 <_malloc_r+0x29c>
 8005156:	f240 5154 	movw	r1, #1364	; 0x554
 800515a:	428a      	cmp	r2, r1
 800515c:	d805      	bhi.n	800516a <_malloc_r+0x536>
 800515e:	0c9a      	lsrs	r2, r3, #18
 8005160:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005164:	00c9      	lsls	r1, r1, #3
 8005166:	327c      	adds	r2, #124	; 0x7c
 8005168:	e745      	b.n	8004ff6 <_malloc_r+0x3c2>
 800516a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800516e:	227e      	movs	r2, #126	; 0x7e
 8005170:	e741      	b.n	8004ff6 <_malloc_r+0x3c2>
 8005172:	687b      	ldr	r3, [r7, #4]
 8005174:	e785      	b.n	8005082 <_malloc_r+0x44e>
 8005176:	bf00      	nop
 8005178:	200014dc 	.word	0x200014dc

0800517c <memset>:
 800517c:	b4f0      	push	{r4, r5, r6, r7}
 800517e:	0786      	lsls	r6, r0, #30
 8005180:	d043      	beq.n	800520a <memset+0x8e>
 8005182:	1e54      	subs	r4, r2, #1
 8005184:	2a00      	cmp	r2, #0
 8005186:	d03e      	beq.n	8005206 <memset+0x8a>
 8005188:	b2ca      	uxtb	r2, r1
 800518a:	4603      	mov	r3, r0
 800518c:	e002      	b.n	8005194 <memset+0x18>
 800518e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8005192:	d338      	bcc.n	8005206 <memset+0x8a>
 8005194:	f803 2b01 	strb.w	r2, [r3], #1
 8005198:	079d      	lsls	r5, r3, #30
 800519a:	d1f8      	bne.n	800518e <memset+0x12>
 800519c:	2c03      	cmp	r4, #3
 800519e:	d92b      	bls.n	80051f8 <memset+0x7c>
 80051a0:	b2cd      	uxtb	r5, r1
 80051a2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80051a6:	2c0f      	cmp	r4, #15
 80051a8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80051ac:	d916      	bls.n	80051dc <memset+0x60>
 80051ae:	f1a4 0710 	sub.w	r7, r4, #16
 80051b2:	093f      	lsrs	r7, r7, #4
 80051b4:	f103 0620 	add.w	r6, r3, #32
 80051b8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80051bc:	f103 0210 	add.w	r2, r3, #16
 80051c0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80051c4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80051c8:	3210      	adds	r2, #16
 80051ca:	42b2      	cmp	r2, r6
 80051cc:	d1f8      	bne.n	80051c0 <memset+0x44>
 80051ce:	f004 040f 	and.w	r4, r4, #15
 80051d2:	3701      	adds	r7, #1
 80051d4:	2c03      	cmp	r4, #3
 80051d6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80051da:	d90d      	bls.n	80051f8 <memset+0x7c>
 80051dc:	461e      	mov	r6, r3
 80051de:	4622      	mov	r2, r4
 80051e0:	3a04      	subs	r2, #4
 80051e2:	2a03      	cmp	r2, #3
 80051e4:	f846 5b04 	str.w	r5, [r6], #4
 80051e8:	d8fa      	bhi.n	80051e0 <memset+0x64>
 80051ea:	1f22      	subs	r2, r4, #4
 80051ec:	f022 0203 	bic.w	r2, r2, #3
 80051f0:	3204      	adds	r2, #4
 80051f2:	4413      	add	r3, r2
 80051f4:	f004 0403 	and.w	r4, r4, #3
 80051f8:	b12c      	cbz	r4, 8005206 <memset+0x8a>
 80051fa:	b2c9      	uxtb	r1, r1
 80051fc:	441c      	add	r4, r3
 80051fe:	f803 1b01 	strb.w	r1, [r3], #1
 8005202:	429c      	cmp	r4, r3
 8005204:	d1fb      	bne.n	80051fe <memset+0x82>
 8005206:	bcf0      	pop	{r4, r5, r6, r7}
 8005208:	4770      	bx	lr
 800520a:	4614      	mov	r4, r2
 800520c:	4603      	mov	r3, r0
 800520e:	e7c5      	b.n	800519c <memset+0x20>

08005210 <__malloc_lock>:
 8005210:	4801      	ldr	r0, [pc, #4]	; (8005218 <__malloc_lock+0x8>)
 8005212:	f003 bae7 	b.w	80087e4 <__retarget_lock_acquire_recursive>
 8005216:	bf00      	nop
 8005218:	20001568 	.word	0x20001568

0800521c <__malloc_unlock>:
 800521c:	4801      	ldr	r0, [pc, #4]	; (8005224 <__malloc_unlock+0x8>)
 800521e:	f003 bae3 	b.w	80087e8 <__retarget_lock_release_recursive>
 8005222:	bf00      	nop
 8005224:	20001568 	.word	0x20001568

08005228 <printf>:
 8005228:	b40f      	push	{r0, r1, r2, r3}
 800522a:	b500      	push	{lr}
 800522c:	4907      	ldr	r1, [pc, #28]	; (800524c <printf+0x24>)
 800522e:	b083      	sub	sp, #12
 8005230:	ab04      	add	r3, sp, #16
 8005232:	6808      	ldr	r0, [r1, #0]
 8005234:	f853 2b04 	ldr.w	r2, [r3], #4
 8005238:	6881      	ldr	r1, [r0, #8]
 800523a:	9301      	str	r3, [sp, #4]
 800523c:	f000 f870 	bl	8005320 <_vfprintf_r>
 8005240:	b003      	add	sp, #12
 8005242:	f85d eb04 	ldr.w	lr, [sp], #4
 8005246:	b004      	add	sp, #16
 8005248:	4770      	bx	lr
 800524a:	bf00      	nop
 800524c:	20000030 	.word	0x20000030

08005250 <_puts_r>:
 8005250:	b570      	push	{r4, r5, r6, lr}
 8005252:	4605      	mov	r5, r0
 8005254:	b088      	sub	sp, #32
 8005256:	4608      	mov	r0, r1
 8005258:	460c      	mov	r4, r1
 800525a:	f7fb fed1 	bl	8001000 <strlen>
 800525e:	4a22      	ldr	r2, [pc, #136]	; (80052e8 <_puts_r+0x98>)
 8005260:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005262:	9404      	str	r4, [sp, #16]
 8005264:	2601      	movs	r6, #1
 8005266:	1c44      	adds	r4, r0, #1
 8005268:	a904      	add	r1, sp, #16
 800526a:	9206      	str	r2, [sp, #24]
 800526c:	2202      	movs	r2, #2
 800526e:	9403      	str	r4, [sp, #12]
 8005270:	9005      	str	r0, [sp, #20]
 8005272:	68ac      	ldr	r4, [r5, #8]
 8005274:	9607      	str	r6, [sp, #28]
 8005276:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800527a:	b31b      	cbz	r3, 80052c4 <_puts_r+0x74>
 800527c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800527e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005282:	07ce      	lsls	r6, r1, #31
 8005284:	b29a      	uxth	r2, r3
 8005286:	d401      	bmi.n	800528c <_puts_r+0x3c>
 8005288:	0590      	lsls	r0, r2, #22
 800528a:	d525      	bpl.n	80052d8 <_puts_r+0x88>
 800528c:	0491      	lsls	r1, r2, #18
 800528e:	d406      	bmi.n	800529e <_puts_r+0x4e>
 8005290:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8005292:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8005296:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800529a:	81a3      	strh	r3, [r4, #12]
 800529c:	6662      	str	r2, [r4, #100]	; 0x64
 800529e:	4628      	mov	r0, r5
 80052a0:	aa01      	add	r2, sp, #4
 80052a2:	4621      	mov	r1, r4
 80052a4:	f003 f8e4 	bl	8008470 <__sfvwrite_r>
 80052a8:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80052aa:	2800      	cmp	r0, #0
 80052ac:	bf0c      	ite	eq
 80052ae:	250a      	moveq	r5, #10
 80052b0:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80052b4:	07da      	lsls	r2, r3, #31
 80052b6:	d402      	bmi.n	80052be <_puts_r+0x6e>
 80052b8:	89a3      	ldrh	r3, [r4, #12]
 80052ba:	059b      	lsls	r3, r3, #22
 80052bc:	d506      	bpl.n	80052cc <_puts_r+0x7c>
 80052be:	4628      	mov	r0, r5
 80052c0:	b008      	add	sp, #32
 80052c2:	bd70      	pop	{r4, r5, r6, pc}
 80052c4:	4628      	mov	r0, r5
 80052c6:	f002 ff3d 	bl	8008144 <__sinit>
 80052ca:	e7d7      	b.n	800527c <_puts_r+0x2c>
 80052cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80052ce:	f003 fa8b 	bl	80087e8 <__retarget_lock_release_recursive>
 80052d2:	4628      	mov	r0, r5
 80052d4:	b008      	add	sp, #32
 80052d6:	bd70      	pop	{r4, r5, r6, pc}
 80052d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80052da:	f003 fa83 	bl	80087e4 <__retarget_lock_acquire_recursive>
 80052de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80052e2:	b29a      	uxth	r2, r3
 80052e4:	e7d2      	b.n	800528c <_puts_r+0x3c>
 80052e6:	bf00      	nop
 80052e8:	08009e34 	.word	0x08009e34

080052ec <puts>:
 80052ec:	4b02      	ldr	r3, [pc, #8]	; (80052f8 <puts+0xc>)
 80052ee:	4601      	mov	r1, r0
 80052f0:	6818      	ldr	r0, [r3, #0]
 80052f2:	f7ff bfad 	b.w	8005250 <_puts_r>
 80052f6:	bf00      	nop
 80052f8:	20000030 	.word	0x20000030

080052fc <_sbrk_r>:
 80052fc:	b538      	push	{r3, r4, r5, lr}
 80052fe:	4c07      	ldr	r4, [pc, #28]	; (800531c <_sbrk_r+0x20>)
 8005300:	2300      	movs	r3, #0
 8005302:	4605      	mov	r5, r0
 8005304:	4608      	mov	r0, r1
 8005306:	6023      	str	r3, [r4, #0]
 8005308:	f7ff fbb4 	bl	8004a74 <_sbrk>
 800530c:	1c43      	adds	r3, r0, #1
 800530e:	d000      	beq.n	8005312 <_sbrk_r+0x16>
 8005310:	bd38      	pop	{r3, r4, r5, pc}
 8005312:	6823      	ldr	r3, [r4, #0]
 8005314:	2b00      	cmp	r3, #0
 8005316:	d0fb      	beq.n	8005310 <_sbrk_r+0x14>
 8005318:	602b      	str	r3, [r5, #0]
 800531a:	bd38      	pop	{r3, r4, r5, pc}
 800531c:	2000157c 	.word	0x2000157c

08005320 <_vfprintf_r>:
 8005320:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005324:	b0d7      	sub	sp, #348	; 0x15c
 8005326:	461c      	mov	r4, r3
 8005328:	4689      	mov	r9, r1
 800532a:	4617      	mov	r7, r2
 800532c:	4605      	mov	r5, r0
 800532e:	9003      	str	r0, [sp, #12]
 8005330:	f003 fa46 	bl	80087c0 <_localeconv_r>
 8005334:	6803      	ldr	r3, [r0, #0]
 8005336:	9316      	str	r3, [sp, #88]	; 0x58
 8005338:	4618      	mov	r0, r3
 800533a:	f7fb fe61 	bl	8001000 <strlen>
 800533e:	9408      	str	r4, [sp, #32]
 8005340:	9015      	str	r0, [sp, #84]	; 0x54
 8005342:	b11d      	cbz	r5, 800534c <_vfprintf_r+0x2c>
 8005344:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8005346:	2b00      	cmp	r3, #0
 8005348:	f000 8107 	beq.w	800555a <_vfprintf_r+0x23a>
 800534c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005350:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8005354:	07c8      	lsls	r0, r1, #31
 8005356:	b293      	uxth	r3, r2
 8005358:	d402      	bmi.n	8005360 <_vfprintf_r+0x40>
 800535a:	0599      	lsls	r1, r3, #22
 800535c:	f140 811f 	bpl.w	800559e <_vfprintf_r+0x27e>
 8005360:	049e      	lsls	r6, r3, #18
 8005362:	d40a      	bmi.n	800537a <_vfprintf_r+0x5a>
 8005364:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8005368:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800536c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8005370:	f8a9 300c 	strh.w	r3, [r9, #12]
 8005374:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8005378:	b29b      	uxth	r3, r3
 800537a:	071d      	lsls	r5, r3, #28
 800537c:	f140 80b2 	bpl.w	80054e4 <_vfprintf_r+0x1c4>
 8005380:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8005384:	2a00      	cmp	r2, #0
 8005386:	f000 80ad 	beq.w	80054e4 <_vfprintf_r+0x1c4>
 800538a:	f003 021a 	and.w	r2, r3, #26
 800538e:	2a0a      	cmp	r2, #10
 8005390:	f000 80c9 	beq.w	8005526 <_vfprintf_r+0x206>
 8005394:	2300      	movs	r3, #0
 8005396:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80055b0 <_vfprintf_r+0x290>
 800539a:	9310      	str	r3, [sp, #64]	; 0x40
 800539c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80053a0:	9317      	str	r3, [sp, #92]	; 0x5c
 80053a2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80053a6:	931b      	str	r3, [sp, #108]	; 0x6c
 80053a8:	9318      	str	r3, [sp, #96]	; 0x60
 80053aa:	9305      	str	r3, [sp, #20]
 80053ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80053ae:	932a      	str	r3, [sp, #168]	; 0xa8
 80053b0:	469b      	mov	fp, r3
 80053b2:	783b      	ldrb	r3, [r7, #0]
 80053b4:	f8cd 901c 	str.w	r9, [sp, #28]
 80053b8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80053bc:	2b00      	cmp	r3, #0
 80053be:	f000 8259 	beq.w	8005874 <_vfprintf_r+0x554>
 80053c2:	2b25      	cmp	r3, #37	; 0x25
 80053c4:	463c      	mov	r4, r7
 80053c6:	d102      	bne.n	80053ce <_vfprintf_r+0xae>
 80053c8:	e01d      	b.n	8005406 <_vfprintf_r+0xe6>
 80053ca:	2b25      	cmp	r3, #37	; 0x25
 80053cc:	d003      	beq.n	80053d6 <_vfprintf_r+0xb6>
 80053ce:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80053d2:	2b00      	cmp	r3, #0
 80053d4:	d1f9      	bne.n	80053ca <_vfprintf_r+0xaa>
 80053d6:	1be5      	subs	r5, r4, r7
 80053d8:	b18d      	cbz	r5, 80053fe <_vfprintf_r+0xde>
 80053da:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80053de:	3301      	adds	r3, #1
 80053e0:	442a      	add	r2, r5
 80053e2:	2b07      	cmp	r3, #7
 80053e4:	f8cb 7000 	str.w	r7, [fp]
 80053e8:	f8cb 5004 	str.w	r5, [fp, #4]
 80053ec:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80053f0:	f300 80ca 	bgt.w	8005588 <_vfprintf_r+0x268>
 80053f4:	f10b 0b08 	add.w	fp, fp, #8
 80053f8:	9b05      	ldr	r3, [sp, #20]
 80053fa:	442b      	add	r3, r5
 80053fc:	9305      	str	r3, [sp, #20]
 80053fe:	7823      	ldrb	r3, [r4, #0]
 8005400:	2b00      	cmp	r3, #0
 8005402:	f000 8237 	beq.w	8005874 <_vfprintf_r+0x554>
 8005406:	2300      	movs	r3, #0
 8005408:	7866      	ldrb	r6, [r4, #1]
 800540a:	9306      	str	r3, [sp, #24]
 800540c:	4698      	mov	r8, r3
 800540e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005412:	f104 0a01 	add.w	sl, r4, #1
 8005416:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800541a:	252b      	movs	r5, #43	; 0x2b
 800541c:	f10a 0a01 	add.w	sl, sl, #1
 8005420:	f1a6 0320 	sub.w	r3, r6, #32
 8005424:	2b5a      	cmp	r3, #90	; 0x5a
 8005426:	f200 842a 	bhi.w	8005c7e <_vfprintf_r+0x95e>
 800542a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800542e:	03aa      	.short	0x03aa
 8005430:	04280428 	.word	0x04280428
 8005434:	0428029c 	.word	0x0428029c
 8005438:	04280428 	.word	0x04280428
 800543c:	042802a7 	.word	0x042802a7
 8005440:	02c60428 	.word	0x02c60428
 8005444:	042802d2 	.word	0x042802d2
 8005448:	02dc02d7 	.word	0x02dc02d7
 800544c:	02f60428 	.word	0x02f60428
 8005450:	026d026d 	.word	0x026d026d
 8005454:	026d026d 	.word	0x026d026d
 8005458:	026d026d 	.word	0x026d026d
 800545c:	026d026d 	.word	0x026d026d
 8005460:	0428026d 	.word	0x0428026d
 8005464:	04280428 	.word	0x04280428
 8005468:	04280428 	.word	0x04280428
 800546c:	04280428 	.word	0x04280428
 8005470:	042802fb 	.word	0x042802fb
 8005474:	03f3033c 	.word	0x03f3033c
 8005478:	02fb02fb 	.word	0x02fb02fb
 800547c:	042802fb 	.word	0x042802fb
 8005480:	04280428 	.word	0x04280428
 8005484:	03ee0428 	.word	0x03ee0428
 8005488:	04280428 	.word	0x04280428
 800548c:	0428009a 	.word	0x0428009a
 8005490:	04280428 	.word	0x04280428
 8005494:	04280350 	.word	0x04280350
 8005498:	04280379 	.word	0x04280379
 800549c:	03900428 	.word	0x03900428
 80054a0:	04280428 	.word	0x04280428
 80054a4:	04280428 	.word	0x04280428
 80054a8:	04280428 	.word	0x04280428
 80054ac:	04280428 	.word	0x04280428
 80054b0:	042802fb 	.word	0x042802fb
 80054b4:	00c5033c 	.word	0x00c5033c
 80054b8:	02fb02fb 	.word	0x02fb02fb
 80054bc:	03d102fb 	.word	0x03d102fb
 80054c0:	007000c5 	.word	0x007000c5
 80054c4:	03b50428 	.word	0x03b50428
 80054c8:	03c20428 	.word	0x03c20428
 80054cc:	03de009c 	.word	0x03de009c
 80054d0:	04280070 	.word	0x04280070
 80054d4:	00720350 	.word	0x00720350
 80054d8:	0428022c 	.word	0x0428022c
 80054dc:	027c0428 	.word	0x027c0428
 80054e0:	00720428 	.word	0x00720428
 80054e4:	4649      	mov	r1, r9
 80054e6:	9803      	ldr	r0, [sp, #12]
 80054e8:	f001 fc9a 	bl	8006e20 <__swsetup_r>
 80054ec:	b1a0      	cbz	r0, 8005518 <_vfprintf_r+0x1f8>
 80054ee:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80054f2:	07d8      	lsls	r0, r3, #31
 80054f4:	d404      	bmi.n	8005500 <_vfprintf_r+0x1e0>
 80054f6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80054fa:	0599      	lsls	r1, r3, #22
 80054fc:	f140 83b7 	bpl.w	8005c6e <_vfprintf_r+0x94e>
 8005500:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005504:	9305      	str	r3, [sp, #20]
 8005506:	9805      	ldr	r0, [sp, #20]
 8005508:	b057      	add	sp, #348	; 0x15c
 800550a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800550e:	f048 0820 	orr.w	r8, r8, #32
 8005512:	f89a 6000 	ldrb.w	r6, [sl]
 8005516:	e781      	b.n	800541c <_vfprintf_r+0xfc>
 8005518:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800551c:	f003 021a 	and.w	r2, r3, #26
 8005520:	2a0a      	cmp	r2, #10
 8005522:	f47f af37 	bne.w	8005394 <_vfprintf_r+0x74>
 8005526:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800552a:	2a00      	cmp	r2, #0
 800552c:	f6ff af32 	blt.w	8005394 <_vfprintf_r+0x74>
 8005530:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005534:	07d2      	lsls	r2, r2, #31
 8005536:	d405      	bmi.n	8005544 <_vfprintf_r+0x224>
 8005538:	059b      	lsls	r3, r3, #22
 800553a:	d403      	bmi.n	8005544 <_vfprintf_r+0x224>
 800553c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005540:	f003 f952 	bl	80087e8 <__retarget_lock_release_recursive>
 8005544:	4623      	mov	r3, r4
 8005546:	463a      	mov	r2, r7
 8005548:	4649      	mov	r1, r9
 800554a:	9803      	ldr	r0, [sp, #12]
 800554c:	f001 fc26 	bl	8006d9c <__sbprintf>
 8005550:	9005      	str	r0, [sp, #20]
 8005552:	9805      	ldr	r0, [sp, #20]
 8005554:	b057      	add	sp, #348	; 0x15c
 8005556:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800555a:	9803      	ldr	r0, [sp, #12]
 800555c:	f002 fdf2 	bl	8008144 <__sinit>
 8005560:	e6f4      	b.n	800534c <_vfprintf_r+0x2c>
 8005562:	f048 0810 	orr.w	r8, r8, #16
 8005566:	f018 0f20 	tst.w	r8, #32
 800556a:	f000 836c 	beq.w	8005c46 <_vfprintf_r+0x926>
 800556e:	9c08      	ldr	r4, [sp, #32]
 8005570:	3407      	adds	r4, #7
 8005572:	f024 0307 	bic.w	r3, r4, #7
 8005576:	e9d3 4500 	ldrd	r4, r5, [r3]
 800557a:	f103 0208 	add.w	r2, r3, #8
 800557e:	9208      	str	r2, [sp, #32]
 8005580:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005584:	2200      	movs	r2, #0
 8005586:	e18c      	b.n	80058a2 <_vfprintf_r+0x582>
 8005588:	aa2a      	add	r2, sp, #168	; 0xa8
 800558a:	9907      	ldr	r1, [sp, #28]
 800558c:	9803      	ldr	r0, [sp, #12]
 800558e:	f003 ffa7 	bl	80094e0 <__sprint_r>
 8005592:	2800      	cmp	r0, #0
 8005594:	f041 8376 	bne.w	8006c84 <_vfprintf_r+0x1964>
 8005598:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800559c:	e72c      	b.n	80053f8 <_vfprintf_r+0xd8>
 800559e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80055a2:	f003 f91f 	bl	80087e4 <__retarget_lock_acquire_recursive>
 80055a6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80055aa:	b293      	uxth	r3, r2
 80055ac:	e6d8      	b.n	8005360 <_vfprintf_r+0x40>
 80055ae:	bf00      	nop
	...
 80055b8:	4643      	mov	r3, r8
 80055ba:	069f      	lsls	r7, r3, #26
 80055bc:	f140 832f 	bpl.w	8005c1e <_vfprintf_r+0x8fe>
 80055c0:	9c08      	ldr	r4, [sp, #32]
 80055c2:	3407      	adds	r4, #7
 80055c4:	f024 0407 	bic.w	r4, r4, #7
 80055c8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80055cc:	f104 0208 	add.w	r2, r4, #8
 80055d0:	9208      	str	r2, [sp, #32]
 80055d2:	4604      	mov	r4, r0
 80055d4:	460d      	mov	r5, r1
 80055d6:	2800      	cmp	r0, #0
 80055d8:	f171 0200 	sbcs.w	r2, r1, #0
 80055dc:	da05      	bge.n	80055ea <_vfprintf_r+0x2ca>
 80055de:	222d      	movs	r2, #45	; 0x2d
 80055e0:	4264      	negs	r4, r4
 80055e2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80055e6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80055ea:	aa56      	add	r2, sp, #344	; 0x158
 80055ec:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80055f0:	9204      	str	r2, [sp, #16]
 80055f2:	f000 84b2 	beq.w	8005f5a <_vfprintf_r+0xc3a>
 80055f6:	2201      	movs	r2, #1
 80055f8:	ea54 0105 	orrs.w	r1, r4, r5
 80055fc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8005600:	f040 8159 	bne.w	80058b6 <_vfprintf_r+0x596>
 8005604:	f1b9 0f00 	cmp.w	r9, #0
 8005608:	f040 8619 	bne.w	800623e <_vfprintf_r+0xf1e>
 800560c:	2a00      	cmp	r2, #0
 800560e:	f040 8508 	bne.w	8006022 <_vfprintf_r+0xd02>
 8005612:	f013 0301 	ands.w	r3, r3, #1
 8005616:	af56      	add	r7, sp, #344	; 0x158
 8005618:	9309      	str	r3, [sp, #36]	; 0x24
 800561a:	d002      	beq.n	8005622 <_vfprintf_r+0x302>
 800561c:	2330      	movs	r3, #48	; 0x30
 800561e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005622:	2300      	movs	r3, #0
 8005624:	930a      	str	r3, [sp, #40]	; 0x28
 8005626:	930f      	str	r3, [sp, #60]	; 0x3c
 8005628:	9314      	str	r3, [sp, #80]	; 0x50
 800562a:	9311      	str	r3, [sp, #68]	; 0x44
 800562c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800562e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005632:	454b      	cmp	r3, r9
 8005634:	bfb8      	it	lt
 8005636:	464b      	movlt	r3, r9
 8005638:	9304      	str	r3, [sp, #16]
 800563a:	b112      	cbz	r2, 8005642 <_vfprintf_r+0x322>
 800563c:	9b04      	ldr	r3, [sp, #16]
 800563e:	3301      	adds	r3, #1
 8005640:	9304      	str	r3, [sp, #16]
 8005642:	f018 0302 	ands.w	r3, r8, #2
 8005646:	930b      	str	r3, [sp, #44]	; 0x2c
 8005648:	d002      	beq.n	8005650 <_vfprintf_r+0x330>
 800564a:	9b04      	ldr	r3, [sp, #16]
 800564c:	3302      	adds	r3, #2
 800564e:	9304      	str	r3, [sp, #16]
 8005650:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8005654:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005656:	930e      	str	r3, [sp, #56]	; 0x38
 8005658:	d13f      	bne.n	80056da <_vfprintf_r+0x3ba>
 800565a:	9b06      	ldr	r3, [sp, #24]
 800565c:	9904      	ldr	r1, [sp, #16]
 800565e:	1a5d      	subs	r5, r3, r1
 8005660:	2d00      	cmp	r5, #0
 8005662:	dd3a      	ble.n	80056da <_vfprintf_r+0x3ba>
 8005664:	2d10      	cmp	r5, #16
 8005666:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005668:	dd29      	ble.n	80056be <_vfprintf_r+0x39e>
 800566a:	4659      	mov	r1, fp
 800566c:	4620      	mov	r0, r4
 800566e:	9620      	str	r6, [sp, #128]	; 0x80
 8005670:	2310      	movs	r3, #16
 8005672:	9c03      	ldr	r4, [sp, #12]
 8005674:	9e07      	ldr	r6, [sp, #28]
 8005676:	46bb      	mov	fp, r7
 8005678:	e004      	b.n	8005684 <_vfprintf_r+0x364>
 800567a:	3d10      	subs	r5, #16
 800567c:	2d10      	cmp	r5, #16
 800567e:	f101 0108 	add.w	r1, r1, #8
 8005682:	dd18      	ble.n	80056b6 <_vfprintf_r+0x396>
 8005684:	3201      	adds	r2, #1
 8005686:	4fba      	ldr	r7, [pc, #744]	; (8005970 <_vfprintf_r+0x650>)
 8005688:	3010      	adds	r0, #16
 800568a:	2a07      	cmp	r2, #7
 800568c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005690:	e9c1 7300 	strd	r7, r3, [r1]
 8005694:	ddf1      	ble.n	800567a <_vfprintf_r+0x35a>
 8005696:	aa2a      	add	r2, sp, #168	; 0xa8
 8005698:	4631      	mov	r1, r6
 800569a:	4620      	mov	r0, r4
 800569c:	930c      	str	r3, [sp, #48]	; 0x30
 800569e:	f003 ff1f 	bl	80094e0 <__sprint_r>
 80056a2:	2800      	cmp	r0, #0
 80056a4:	f040 843d 	bne.w	8005f22 <_vfprintf_r+0xc02>
 80056a8:	3d10      	subs	r5, #16
 80056aa:	2d10      	cmp	r5, #16
 80056ac:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80056b0:	a92d      	add	r1, sp, #180	; 0xb4
 80056b2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80056b4:	dce6      	bgt.n	8005684 <_vfprintf_r+0x364>
 80056b6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80056b8:	465f      	mov	r7, fp
 80056ba:	4604      	mov	r4, r0
 80056bc:	468b      	mov	fp, r1
 80056be:	3201      	adds	r2, #1
 80056c0:	4bab      	ldr	r3, [pc, #684]	; (8005970 <_vfprintf_r+0x650>)
 80056c2:	442c      	add	r4, r5
 80056c4:	2a07      	cmp	r2, #7
 80056c6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80056ca:	e9cb 3500 	strd	r3, r5, [fp]
 80056ce:	f300 84ff 	bgt.w	80060d0 <_vfprintf_r+0xdb0>
 80056d2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80056d6:	f10b 0b08 	add.w	fp, fp, #8
 80056da:	b172      	cbz	r2, 80056fa <_vfprintf_r+0x3da>
 80056dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80056de:	3201      	adds	r2, #1
 80056e0:	3401      	adds	r4, #1
 80056e2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80056e6:	2101      	movs	r1, #1
 80056e8:	2a07      	cmp	r2, #7
 80056ea:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80056ee:	e9cb 0100 	strd	r0, r1, [fp]
 80056f2:	f300 8418 	bgt.w	8005f26 <_vfprintf_r+0xc06>
 80056f6:	f10b 0b08 	add.w	fp, fp, #8
 80056fa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80056fc:	b16b      	cbz	r3, 800571a <_vfprintf_r+0x3fa>
 80056fe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005700:	3301      	adds	r3, #1
 8005702:	3402      	adds	r4, #2
 8005704:	a923      	add	r1, sp, #140	; 0x8c
 8005706:	2202      	movs	r2, #2
 8005708:	2b07      	cmp	r3, #7
 800570a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800570e:	e9cb 1200 	strd	r1, r2, [fp]
 8005712:	f300 8415 	bgt.w	8005f40 <_vfprintf_r+0xc20>
 8005716:	f10b 0b08 	add.w	fp, fp, #8
 800571a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800571c:	2b80      	cmp	r3, #128	; 0x80
 800571e:	f000 8331 	beq.w	8005d84 <_vfprintf_r+0xa64>
 8005722:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005724:	eba9 0503 	sub.w	r5, r9, r3
 8005728:	2d00      	cmp	r5, #0
 800572a:	dd37      	ble.n	800579c <_vfprintf_r+0x47c>
 800572c:	2d10      	cmp	r5, #16
 800572e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005730:	4b90      	ldr	r3, [pc, #576]	; (8005974 <_vfprintf_r+0x654>)
 8005732:	dd28      	ble.n	8005786 <_vfprintf_r+0x466>
 8005734:	4659      	mov	r1, fp
 8005736:	4620      	mov	r0, r4
 8005738:	46bb      	mov	fp, r7
 800573a:	f04f 0910 	mov.w	r9, #16
 800573e:	4637      	mov	r7, r6
 8005740:	461c      	mov	r4, r3
 8005742:	9e07      	ldr	r6, [sp, #28]
 8005744:	e004      	b.n	8005750 <_vfprintf_r+0x430>
 8005746:	3d10      	subs	r5, #16
 8005748:	2d10      	cmp	r5, #16
 800574a:	f101 0108 	add.w	r1, r1, #8
 800574e:	dd15      	ble.n	800577c <_vfprintf_r+0x45c>
 8005750:	3201      	adds	r2, #1
 8005752:	3010      	adds	r0, #16
 8005754:	2a07      	cmp	r2, #7
 8005756:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800575a:	e9c1 4900 	strd	r4, r9, [r1]
 800575e:	ddf2      	ble.n	8005746 <_vfprintf_r+0x426>
 8005760:	aa2a      	add	r2, sp, #168	; 0xa8
 8005762:	4631      	mov	r1, r6
 8005764:	9803      	ldr	r0, [sp, #12]
 8005766:	f003 febb 	bl	80094e0 <__sprint_r>
 800576a:	2800      	cmp	r0, #0
 800576c:	f040 83d9 	bne.w	8005f22 <_vfprintf_r+0xc02>
 8005770:	3d10      	subs	r5, #16
 8005772:	2d10      	cmp	r5, #16
 8005774:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005778:	a92d      	add	r1, sp, #180	; 0xb4
 800577a:	dce9      	bgt.n	8005750 <_vfprintf_r+0x430>
 800577c:	463e      	mov	r6, r7
 800577e:	4623      	mov	r3, r4
 8005780:	465f      	mov	r7, fp
 8005782:	4604      	mov	r4, r0
 8005784:	468b      	mov	fp, r1
 8005786:	3201      	adds	r2, #1
 8005788:	442c      	add	r4, r5
 800578a:	2a07      	cmp	r2, #7
 800578c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005790:	e9cb 3500 	strd	r3, r5, [fp]
 8005794:	f300 83ef 	bgt.w	8005f76 <_vfprintf_r+0xc56>
 8005798:	f10b 0b08 	add.w	fp, fp, #8
 800579c:	f418 7f80 	tst.w	r8, #256	; 0x100
 80057a0:	f040 8280 	bne.w	8005ca4 <_vfprintf_r+0x984>
 80057a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80057a6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80057a8:	f8cb 7000 	str.w	r7, [fp]
 80057ac:	3301      	adds	r3, #1
 80057ae:	4414      	add	r4, r2
 80057b0:	2b07      	cmp	r3, #7
 80057b2:	942c      	str	r4, [sp, #176]	; 0xb0
 80057b4:	f8cb 2004 	str.w	r2, [fp, #4]
 80057b8:	932b      	str	r3, [sp, #172]	; 0xac
 80057ba:	f300 8392 	bgt.w	8005ee2 <_vfprintf_r+0xbc2>
 80057be:	f10b 0b08 	add.w	fp, fp, #8
 80057c2:	f018 0f04 	tst.w	r8, #4
 80057c6:	d03b      	beq.n	8005840 <_vfprintf_r+0x520>
 80057c8:	9b06      	ldr	r3, [sp, #24]
 80057ca:	9a04      	ldr	r2, [sp, #16]
 80057cc:	1a9d      	subs	r5, r3, r2
 80057ce:	2d00      	cmp	r5, #0
 80057d0:	dd36      	ble.n	8005840 <_vfprintf_r+0x520>
 80057d2:	2d10      	cmp	r5, #16
 80057d4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80057d6:	dd21      	ble.n	800581c <_vfprintf_r+0x4fc>
 80057d8:	2610      	movs	r6, #16
 80057da:	9f03      	ldr	r7, [sp, #12]
 80057dc:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80057e0:	e004      	b.n	80057ec <_vfprintf_r+0x4cc>
 80057e2:	3d10      	subs	r5, #16
 80057e4:	2d10      	cmp	r5, #16
 80057e6:	f10b 0b08 	add.w	fp, fp, #8
 80057ea:	dd17      	ble.n	800581c <_vfprintf_r+0x4fc>
 80057ec:	3301      	adds	r3, #1
 80057ee:	4a60      	ldr	r2, [pc, #384]	; (8005970 <_vfprintf_r+0x650>)
 80057f0:	3410      	adds	r4, #16
 80057f2:	2b07      	cmp	r3, #7
 80057f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80057f8:	e9cb 2600 	strd	r2, r6, [fp]
 80057fc:	ddf1      	ble.n	80057e2 <_vfprintf_r+0x4c2>
 80057fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8005800:	4641      	mov	r1, r8
 8005802:	4638      	mov	r0, r7
 8005804:	f003 fe6c 	bl	80094e0 <__sprint_r>
 8005808:	2800      	cmp	r0, #0
 800580a:	f040 856c 	bne.w	80062e6 <_vfprintf_r+0xfc6>
 800580e:	3d10      	subs	r5, #16
 8005810:	2d10      	cmp	r5, #16
 8005812:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005816:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800581a:	dce7      	bgt.n	80057ec <_vfprintf_r+0x4cc>
 800581c:	3301      	adds	r3, #1
 800581e:	4a54      	ldr	r2, [pc, #336]	; (8005970 <_vfprintf_r+0x650>)
 8005820:	442c      	add	r4, r5
 8005822:	2b07      	cmp	r3, #7
 8005824:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005828:	e9cb 2500 	strd	r2, r5, [fp]
 800582c:	dd08      	ble.n	8005840 <_vfprintf_r+0x520>
 800582e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005830:	9907      	ldr	r1, [sp, #28]
 8005832:	9803      	ldr	r0, [sp, #12]
 8005834:	f003 fe54 	bl	80094e0 <__sprint_r>
 8005838:	2800      	cmp	r0, #0
 800583a:	f040 82e9 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 800583e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005840:	9904      	ldr	r1, [sp, #16]
 8005842:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8005846:	428a      	cmp	r2, r1
 8005848:	bfac      	ite	ge
 800584a:	189b      	addge	r3, r3, r2
 800584c:	185b      	addlt	r3, r3, r1
 800584e:	9305      	str	r3, [sp, #20]
 8005850:	2c00      	cmp	r4, #0
 8005852:	f040 82d5 	bne.w	8005e00 <_vfprintf_r+0xae0>
 8005856:	2300      	movs	r3, #0
 8005858:	932b      	str	r3, [sp, #172]	; 0xac
 800585a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800585c:	b11b      	cbz	r3, 8005866 <_vfprintf_r+0x546>
 800585e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005860:	9803      	ldr	r0, [sp, #12]
 8005862:	f002 fd11 	bl	8008288 <_free_r>
 8005866:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800586a:	4657      	mov	r7, sl
 800586c:	783b      	ldrb	r3, [r7, #0]
 800586e:	2b00      	cmp	r3, #0
 8005870:	f47f ada7 	bne.w	80053c2 <_vfprintf_r+0xa2>
 8005874:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005876:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800587a:	2b00      	cmp	r3, #0
 800587c:	f041 80e7 	bne.w	8006a4e <_vfprintf_r+0x172e>
 8005880:	2300      	movs	r3, #0
 8005882:	932b      	str	r3, [sp, #172]	; 0xac
 8005884:	e2cb      	b.n	8005e1e <_vfprintf_r+0xafe>
 8005886:	4643      	mov	r3, r8
 8005888:	069a      	lsls	r2, r3, #26
 800588a:	f140 814e 	bpl.w	8005b2a <_vfprintf_r+0x80a>
 800588e:	9c08      	ldr	r4, [sp, #32]
 8005890:	3407      	adds	r4, #7
 8005892:	f024 0207 	bic.w	r2, r4, #7
 8005896:	f102 0108 	add.w	r1, r2, #8
 800589a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800589e:	9108      	str	r1, [sp, #32]
 80058a0:	2201      	movs	r2, #1
 80058a2:	2100      	movs	r1, #0
 80058a4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80058a8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80058ac:	a956      	add	r1, sp, #344	; 0x158
 80058ae:	9104      	str	r1, [sp, #16]
 80058b0:	f47f aea2 	bne.w	80055f8 <_vfprintf_r+0x2d8>
 80058b4:	4698      	mov	r8, r3
 80058b6:	2a01      	cmp	r2, #1
 80058b8:	f000 8350 	beq.w	8005f5c <_vfprintf_r+0xc3c>
 80058bc:	2a02      	cmp	r2, #2
 80058be:	f000 831b 	beq.w	8005ef8 <_vfprintf_r+0xbd8>
 80058c2:	a956      	add	r1, sp, #344	; 0x158
 80058c4:	e000      	b.n	80058c8 <_vfprintf_r+0x5a8>
 80058c6:	4639      	mov	r1, r7
 80058c8:	08e2      	lsrs	r2, r4, #3
 80058ca:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80058ce:	08e8      	lsrs	r0, r5, #3
 80058d0:	f004 0307 	and.w	r3, r4, #7
 80058d4:	4605      	mov	r5, r0
 80058d6:	4614      	mov	r4, r2
 80058d8:	3330      	adds	r3, #48	; 0x30
 80058da:	ea54 0205 	orrs.w	r2, r4, r5
 80058de:	f801 3c01 	strb.w	r3, [r1, #-1]
 80058e2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80058e6:	d1ee      	bne.n	80058c6 <_vfprintf_r+0x5a6>
 80058e8:	f018 0f01 	tst.w	r8, #1
 80058ec:	f000 8314 	beq.w	8005f18 <_vfprintf_r+0xbf8>
 80058f0:	2b30      	cmp	r3, #48	; 0x30
 80058f2:	f000 8311 	beq.w	8005f18 <_vfprintf_r+0xbf8>
 80058f6:	9a04      	ldr	r2, [sp, #16]
 80058f8:	3902      	subs	r1, #2
 80058fa:	2330      	movs	r3, #48	; 0x30
 80058fc:	1a52      	subs	r2, r2, r1
 80058fe:	f807 3c01 	strb.w	r3, [r7, #-1]
 8005902:	9209      	str	r2, [sp, #36]	; 0x24
 8005904:	460f      	mov	r7, r1
 8005906:	e68c      	b.n	8005622 <_vfprintf_r+0x302>
 8005908:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800590c:	2200      	movs	r2, #0
 800590e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005912:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8005916:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800591a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800591e:	2b09      	cmp	r3, #9
 8005920:	d9f5      	bls.n	800590e <_vfprintf_r+0x5ee>
 8005922:	9206      	str	r2, [sp, #24]
 8005924:	e57c      	b.n	8005420 <_vfprintf_r+0x100>
 8005926:	4b14      	ldr	r3, [pc, #80]	; (8005978 <_vfprintf_r+0x658>)
 8005928:	9317      	str	r3, [sp, #92]	; 0x5c
 800592a:	f018 0f20 	tst.w	r8, #32
 800592e:	f000 8114 	beq.w	8005b5a <_vfprintf_r+0x83a>
 8005932:	9c08      	ldr	r4, [sp, #32]
 8005934:	3407      	adds	r4, #7
 8005936:	f024 0307 	bic.w	r3, r4, #7
 800593a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800593e:	f103 0208 	add.w	r2, r3, #8
 8005942:	9208      	str	r2, [sp, #32]
 8005944:	f018 0f01 	tst.w	r8, #1
 8005948:	d009      	beq.n	800595e <_vfprintf_r+0x63e>
 800594a:	ea54 0305 	orrs.w	r3, r4, r5
 800594e:	d006      	beq.n	800595e <_vfprintf_r+0x63e>
 8005950:	2330      	movs	r3, #48	; 0x30
 8005952:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8005956:	f048 0802 	orr.w	r8, r8, #2
 800595a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800595e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8005962:	2202      	movs	r2, #2
 8005964:	e79d      	b.n	80058a2 <_vfprintf_r+0x582>
 8005966:	f048 0801 	orr.w	r8, r8, #1
 800596a:	f89a 6000 	ldrb.w	r6, [sl]
 800596e:	e555      	b.n	800541c <_vfprintf_r+0xfc>
 8005970:	08009e7c 	.word	0x08009e7c
 8005974:	08009e8c 	.word	0x08009e8c
 8005978:	08009e48 	.word	0x08009e48
 800597c:	9e03      	ldr	r6, [sp, #12]
 800597e:	4630      	mov	r0, r6
 8005980:	f002 ff1e 	bl	80087c0 <_localeconv_r>
 8005984:	6843      	ldr	r3, [r0, #4]
 8005986:	9318      	str	r3, [sp, #96]	; 0x60
 8005988:	4618      	mov	r0, r3
 800598a:	f7fb fb39 	bl	8001000 <strlen>
 800598e:	901b      	str	r0, [sp, #108]	; 0x6c
 8005990:	4604      	mov	r4, r0
 8005992:	4630      	mov	r0, r6
 8005994:	f002 ff14 	bl	80087c0 <_localeconv_r>
 8005998:	6883      	ldr	r3, [r0, #8]
 800599a:	931a      	str	r3, [sp, #104]	; 0x68
 800599c:	2c00      	cmp	r4, #0
 800599e:	f43f adb8 	beq.w	8005512 <_vfprintf_r+0x1f2>
 80059a2:	f89a 6000 	ldrb.w	r6, [sl]
 80059a6:	2b00      	cmp	r3, #0
 80059a8:	f43f ad38 	beq.w	800541c <_vfprintf_r+0xfc>
 80059ac:	781b      	ldrb	r3, [r3, #0]
 80059ae:	2b00      	cmp	r3, #0
 80059b0:	f43f ad34 	beq.w	800541c <_vfprintf_r+0xfc>
 80059b4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80059b8:	e530      	b.n	800541c <_vfprintf_r+0xfc>
 80059ba:	9b08      	ldr	r3, [sp, #32]
 80059bc:	f89a 6000 	ldrb.w	r6, [sl]
 80059c0:	681a      	ldr	r2, [r3, #0]
 80059c2:	9206      	str	r2, [sp, #24]
 80059c4:	2a00      	cmp	r2, #0
 80059c6:	f103 0304 	add.w	r3, r3, #4
 80059ca:	f2c0 8697 	blt.w	80066fc <_vfprintf_r+0x13dc>
 80059ce:	9308      	str	r3, [sp, #32]
 80059d0:	e524      	b.n	800541c <_vfprintf_r+0xfc>
 80059d2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80059d6:	f89a 6000 	ldrb.w	r6, [sl]
 80059da:	e51f      	b.n	800541c <_vfprintf_r+0xfc>
 80059dc:	f89a 6000 	ldrb.w	r6, [sl]
 80059e0:	f048 0804 	orr.w	r8, r8, #4
 80059e4:	e51a      	b.n	800541c <_vfprintf_r+0xfc>
 80059e6:	f89a 6000 	ldrb.w	r6, [sl]
 80059ea:	2e2a      	cmp	r6, #42	; 0x2a
 80059ec:	f10a 0201 	add.w	r2, sl, #1
 80059f0:	f001 81b0 	beq.w	8006d54 <_vfprintf_r+0x1a34>
 80059f4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80059f8:	2b09      	cmp	r3, #9
 80059fa:	4692      	mov	sl, r2
 80059fc:	f04f 0900 	mov.w	r9, #0
 8005a00:	f63f ad0e 	bhi.w	8005420 <_vfprintf_r+0x100>
 8005a04:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8005a08:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8005a0c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8005a10:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005a14:	2b09      	cmp	r3, #9
 8005a16:	d9f5      	bls.n	8005a04 <_vfprintf_r+0x6e4>
 8005a18:	e502      	b.n	8005420 <_vfprintf_r+0x100>
 8005a1a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8005a1e:	f89a 6000 	ldrb.w	r6, [sl]
 8005a22:	e4fb      	b.n	800541c <_vfprintf_r+0xfc>
 8005a24:	9c08      	ldr	r4, [sp, #32]
 8005a26:	3407      	adds	r4, #7
 8005a28:	f024 0407 	bic.w	r4, r4, #7
 8005a2c:	ed94 7b00 	vldr	d7, [r4]
 8005a30:	ec52 1b17 	vmov	r1, r2, d7
 8005a34:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005a38:	931d      	str	r3, [sp, #116]	; 0x74
 8005a3a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8005a3e:	3408      	adds	r4, #8
 8005a40:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005a44:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005a48:	4bba      	ldr	r3, [pc, #744]	; (8005d34 <_vfprintf_r+0xa14>)
 8005a4a:	9408      	str	r4, [sp, #32]
 8005a4c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005a50:	f7fb fb96 	bl	8001180 <__aeabi_dcmpun>
 8005a54:	2800      	cmp	r0, #0
 8005a56:	f040 846f 	bne.w	8006338 <_vfprintf_r+0x1018>
 8005a5a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005a5e:	4bb5      	ldr	r3, [pc, #724]	; (8005d34 <_vfprintf_r+0xa14>)
 8005a60:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8005a64:	f7fb f804 	bl	8000a70 <__aeabi_dcmple>
 8005a68:	2800      	cmp	r0, #0
 8005a6a:	f040 8465 	bne.w	8006338 <_vfprintf_r+0x1018>
 8005a6e:	2200      	movs	r2, #0
 8005a70:	2300      	movs	r3, #0
 8005a72:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005a76:	f7fa fff1 	bl	8000a5c <__aeabi_dcmplt>
 8005a7a:	2800      	cmp	r0, #0
 8005a7c:	f040 855b 	bne.w	8006536 <_vfprintf_r+0x1216>
 8005a80:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005a84:	4fac      	ldr	r7, [pc, #688]	; (8005d38 <_vfprintf_r+0xa18>)
 8005a86:	4bad      	ldr	r3, [pc, #692]	; (8005d3c <_vfprintf_r+0xa1c>)
 8005a88:	2000      	movs	r0, #0
 8005a8a:	2103      	movs	r1, #3
 8005a8c:	9104      	str	r1, [sp, #16]
 8005a8e:	900a      	str	r0, [sp, #40]	; 0x28
 8005a90:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8005a94:	2e47      	cmp	r6, #71	; 0x47
 8005a96:	bfd8      	it	le
 8005a98:	461f      	movle	r7, r3
 8005a9a:	9109      	str	r1, [sp, #36]	; 0x24
 8005a9c:	4681      	mov	r9, r0
 8005a9e:	900f      	str	r0, [sp, #60]	; 0x3c
 8005aa0:	9014      	str	r0, [sp, #80]	; 0x50
 8005aa2:	9011      	str	r0, [sp, #68]	; 0x44
 8005aa4:	e5c9      	b.n	800563a <_vfprintf_r+0x31a>
 8005aa6:	9808      	ldr	r0, [sp, #32]
 8005aa8:	2300      	movs	r3, #0
 8005aaa:	6801      	ldr	r1, [r0, #0]
 8005aac:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005ab0:	461a      	mov	r2, r3
 8005ab2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8005ab6:	2301      	movs	r3, #1
 8005ab8:	1d01      	adds	r1, r0, #4
 8005aba:	9304      	str	r3, [sp, #16]
 8005abc:	920a      	str	r2, [sp, #40]	; 0x28
 8005abe:	4691      	mov	r9, r2
 8005ac0:	920f      	str	r2, [sp, #60]	; 0x3c
 8005ac2:	9214      	str	r2, [sp, #80]	; 0x50
 8005ac4:	9211      	str	r2, [sp, #68]	; 0x44
 8005ac6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8005aca:	af3d      	add	r7, sp, #244	; 0xf4
 8005acc:	e5b9      	b.n	8005642 <_vfprintf_r+0x322>
 8005ace:	9b08      	ldr	r3, [sp, #32]
 8005ad0:	681f      	ldr	r7, [r3, #0]
 8005ad2:	2500      	movs	r5, #0
 8005ad4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8005ad8:	1d1c      	adds	r4, r3, #4
 8005ada:	2f00      	cmp	r7, #0
 8005adc:	f000 8639 	beq.w	8006752 <_vfprintf_r+0x1432>
 8005ae0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005ae4:	f000 8711 	beq.w	800690a <_vfprintf_r+0x15ea>
 8005ae8:	464a      	mov	r2, r9
 8005aea:	4629      	mov	r1, r5
 8005aec:	4638      	mov	r0, r7
 8005aee:	f7fb faf7 	bl	80010e0 <memchr>
 8005af2:	900a      	str	r0, [sp, #40]	; 0x28
 8005af4:	2800      	cmp	r0, #0
 8005af6:	f000 85e7 	beq.w	80066c8 <_vfprintf_r+0x13a8>
 8005afa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005afc:	1bdb      	subs	r3, r3, r7
 8005afe:	9309      	str	r3, [sp, #36]	; 0x24
 8005b00:	46a9      	mov	r9, r5
 8005b02:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005b06:	9408      	str	r4, [sp, #32]
 8005b08:	9304      	str	r3, [sp, #16]
 8005b0a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8005b0e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8005b12:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005b16:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8005b1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005b1e:	e58c      	b.n	800563a <_vfprintf_r+0x31a>
 8005b20:	f048 0310 	orr.w	r3, r8, #16
 8005b24:	069a      	lsls	r2, r3, #26
 8005b26:	f53f aeb2 	bmi.w	800588e <_vfprintf_r+0x56e>
 8005b2a:	9a08      	ldr	r2, [sp, #32]
 8005b2c:	06df      	lsls	r7, r3, #27
 8005b2e:	f102 0104 	add.w	r1, r2, #4
 8005b32:	f100 837e 	bmi.w	8006232 <_vfprintf_r+0xf12>
 8005b36:	065d      	lsls	r5, r3, #25
 8005b38:	9a08      	ldr	r2, [sp, #32]
 8005b3a:	f100 84e4 	bmi.w	8006506 <_vfprintf_r+0x11e6>
 8005b3e:	059c      	lsls	r4, r3, #22
 8005b40:	f140 8377 	bpl.w	8006232 <_vfprintf_r+0xf12>
 8005b44:	7814      	ldrb	r4, [r2, #0]
 8005b46:	9108      	str	r1, [sp, #32]
 8005b48:	2500      	movs	r5, #0
 8005b4a:	2201      	movs	r2, #1
 8005b4c:	e6a9      	b.n	80058a2 <_vfprintf_r+0x582>
 8005b4e:	4b7c      	ldr	r3, [pc, #496]	; (8005d40 <_vfprintf_r+0xa20>)
 8005b50:	9317      	str	r3, [sp, #92]	; 0x5c
 8005b52:	f018 0f20 	tst.w	r8, #32
 8005b56:	f47f aeec 	bne.w	8005932 <_vfprintf_r+0x612>
 8005b5a:	9a08      	ldr	r2, [sp, #32]
 8005b5c:	f018 0f10 	tst.w	r8, #16
 8005b60:	f102 0304 	add.w	r3, r2, #4
 8005b64:	f040 8354 	bne.w	8006210 <_vfprintf_r+0xef0>
 8005b68:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005b6c:	9a08      	ldr	r2, [sp, #32]
 8005b6e:	f040 84d0 	bne.w	8006512 <_vfprintf_r+0x11f2>
 8005b72:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005b76:	f000 834b 	beq.w	8006210 <_vfprintf_r+0xef0>
 8005b7a:	7814      	ldrb	r4, [r2, #0]
 8005b7c:	9308      	str	r3, [sp, #32]
 8005b7e:	2500      	movs	r5, #0
 8005b80:	e6e0      	b.n	8005944 <_vfprintf_r+0x624>
 8005b82:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8005b86:	f89a 6000 	ldrb.w	r6, [sl]
 8005b8a:	2b00      	cmp	r3, #0
 8005b8c:	f47f ac46 	bne.w	800541c <_vfprintf_r+0xfc>
 8005b90:	2320      	movs	r3, #32
 8005b92:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005b96:	e441      	b.n	800541c <_vfprintf_r+0xfc>
 8005b98:	f89a 6000 	ldrb.w	r6, [sl]
 8005b9c:	2e6c      	cmp	r6, #108	; 0x6c
 8005b9e:	bf03      	ittte	eq
 8005ba0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8005ba4:	f048 0820 	orreq.w	r8, r8, #32
 8005ba8:	f10a 0a01 	addeq.w	sl, sl, #1
 8005bac:	f048 0810 	orrne.w	r8, r8, #16
 8005bb0:	e434      	b.n	800541c <_vfprintf_r+0xfc>
 8005bb2:	9a08      	ldr	r2, [sp, #32]
 8005bb4:	f018 0f20 	tst.w	r8, #32
 8005bb8:	f852 3b04 	ldr.w	r3, [r2], #4
 8005bbc:	9208      	str	r2, [sp, #32]
 8005bbe:	f000 83a1 	beq.w	8006304 <_vfprintf_r+0xfe4>
 8005bc2:	9a05      	ldr	r2, [sp, #20]
 8005bc4:	4610      	mov	r0, r2
 8005bc6:	17d1      	asrs	r1, r2, #31
 8005bc8:	e9c3 0100 	strd	r0, r1, [r3]
 8005bcc:	4657      	mov	r7, sl
 8005bce:	e64d      	b.n	800586c <_vfprintf_r+0x54c>
 8005bd0:	f89a 6000 	ldrb.w	r6, [sl]
 8005bd4:	2e68      	cmp	r6, #104	; 0x68
 8005bd6:	bf03      	ittte	eq
 8005bd8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8005bdc:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8005be0:	f10a 0a01 	addeq.w	sl, sl, #1
 8005be4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8005be8:	e418      	b.n	800541c <_vfprintf_r+0xfc>
 8005bea:	9908      	ldr	r1, [sp, #32]
 8005bec:	4b55      	ldr	r3, [pc, #340]	; (8005d44 <_vfprintf_r+0xa24>)
 8005bee:	680c      	ldr	r4, [r1, #0]
 8005bf0:	9317      	str	r3, [sp, #92]	; 0x5c
 8005bf2:	f647 0230 	movw	r2, #30768	; 0x7830
 8005bf6:	3104      	adds	r1, #4
 8005bf8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8005bfc:	f048 0302 	orr.w	r3, r8, #2
 8005c00:	9108      	str	r1, [sp, #32]
 8005c02:	2500      	movs	r5, #0
 8005c04:	2202      	movs	r2, #2
 8005c06:	2678      	movs	r6, #120	; 0x78
 8005c08:	e64b      	b.n	80058a2 <_vfprintf_r+0x582>
 8005c0a:	f048 0808 	orr.w	r8, r8, #8
 8005c0e:	f89a 6000 	ldrb.w	r6, [sl]
 8005c12:	e403      	b.n	800541c <_vfprintf_r+0xfc>
 8005c14:	f048 0310 	orr.w	r3, r8, #16
 8005c18:	069f      	lsls	r7, r3, #26
 8005c1a:	f53f acd1 	bmi.w	80055c0 <_vfprintf_r+0x2a0>
 8005c1e:	9908      	ldr	r1, [sp, #32]
 8005c20:	06dd      	lsls	r5, r3, #27
 8005c22:	f101 0204 	add.w	r2, r1, #4
 8005c26:	f100 82fd 	bmi.w	8006224 <_vfprintf_r+0xf04>
 8005c2a:	065c      	lsls	r4, r3, #25
 8005c2c:	9908      	ldr	r1, [sp, #32]
 8005c2e:	f100 8475 	bmi.w	800651c <_vfprintf_r+0x11fc>
 8005c32:	0598      	lsls	r0, r3, #22
 8005c34:	f140 82f6 	bpl.w	8006224 <_vfprintf_r+0xf04>
 8005c38:	f991 4000 	ldrsb.w	r4, [r1]
 8005c3c:	9208      	str	r2, [sp, #32]
 8005c3e:	17e5      	asrs	r5, r4, #31
 8005c40:	4620      	mov	r0, r4
 8005c42:	4629      	mov	r1, r5
 8005c44:	e4c7      	b.n	80055d6 <_vfprintf_r+0x2b6>
 8005c46:	9a08      	ldr	r2, [sp, #32]
 8005c48:	f018 0f10 	tst.w	r8, #16
 8005c4c:	f102 0304 	add.w	r3, r2, #4
 8005c50:	f040 82e3 	bne.w	800621a <_vfprintf_r+0xefa>
 8005c54:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005c58:	9a08      	ldr	r2, [sp, #32]
 8005c5a:	f040 8467 	bne.w	800652c <_vfprintf_r+0x120c>
 8005c5e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005c62:	f000 82da 	beq.w	800621a <_vfprintf_r+0xefa>
 8005c66:	7814      	ldrb	r4, [r2, #0]
 8005c68:	9308      	str	r3, [sp, #32]
 8005c6a:	2500      	movs	r5, #0
 8005c6c:	e488      	b.n	8005580 <_vfprintf_r+0x260>
 8005c6e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005c72:	f002 fdb9 	bl	80087e8 <__retarget_lock_release_recursive>
 8005c76:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005c7a:	9305      	str	r3, [sp, #20]
 8005c7c:	e443      	b.n	8005506 <_vfprintf_r+0x1e6>
 8005c7e:	2e00      	cmp	r6, #0
 8005c80:	f43f adf8 	beq.w	8005874 <_vfprintf_r+0x554>
 8005c84:	2300      	movs	r3, #0
 8005c86:	2101      	movs	r1, #1
 8005c88:	461a      	mov	r2, r3
 8005c8a:	9104      	str	r1, [sp, #16]
 8005c8c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8005c90:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005c94:	930a      	str	r3, [sp, #40]	; 0x28
 8005c96:	4699      	mov	r9, r3
 8005c98:	930f      	str	r3, [sp, #60]	; 0x3c
 8005c9a:	9314      	str	r3, [sp, #80]	; 0x50
 8005c9c:	9311      	str	r3, [sp, #68]	; 0x44
 8005c9e:	9109      	str	r1, [sp, #36]	; 0x24
 8005ca0:	af3d      	add	r7, sp, #244	; 0xf4
 8005ca2:	e4ce      	b.n	8005642 <_vfprintf_r+0x322>
 8005ca4:	2e65      	cmp	r6, #101	; 0x65
 8005ca6:	f340 80ca 	ble.w	8005e3e <_vfprintf_r+0xb1e>
 8005caa:	2200      	movs	r2, #0
 8005cac:	2300      	movs	r3, #0
 8005cae:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005cb2:	f7fa fec9 	bl	8000a48 <__aeabi_dcmpeq>
 8005cb6:	2800      	cmp	r0, #0
 8005cb8:	f000 8169 	beq.w	8005f8e <_vfprintf_r+0xc6e>
 8005cbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005cbe:	4a22      	ldr	r2, [pc, #136]	; (8005d48 <_vfprintf_r+0xa28>)
 8005cc0:	f8cb 2000 	str.w	r2, [fp]
 8005cc4:	3301      	adds	r3, #1
 8005cc6:	3401      	adds	r4, #1
 8005cc8:	2201      	movs	r2, #1
 8005cca:	2b07      	cmp	r3, #7
 8005ccc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005cd0:	f8cb 2004 	str.w	r2, [fp, #4]
 8005cd4:	f300 8406 	bgt.w	80064e4 <_vfprintf_r+0x11c4>
 8005cd8:	f10b 0b08 	add.w	fp, fp, #8
 8005cdc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005cde:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005ce0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005ce2:	4293      	cmp	r3, r2
 8005ce4:	db03      	blt.n	8005cee <_vfprintf_r+0x9ce>
 8005ce6:	f018 0f01 	tst.w	r8, #1
 8005cea:	f43f ad6a 	beq.w	80057c2 <_vfprintf_r+0x4a2>
 8005cee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005cf0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005cf2:	f8cb 2000 	str.w	r2, [fp]
 8005cf6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005cf8:	f8cb 2004 	str.w	r2, [fp, #4]
 8005cfc:	3301      	adds	r3, #1
 8005cfe:	4414      	add	r4, r2
 8005d00:	2b07      	cmp	r3, #7
 8005d02:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005d06:	f300 8517 	bgt.w	8006738 <_vfprintf_r+0x1418>
 8005d0a:	f10b 0b08 	add.w	fp, fp, #8
 8005d0e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005d10:	1e5d      	subs	r5, r3, #1
 8005d12:	2d00      	cmp	r5, #0
 8005d14:	f77f ad55 	ble.w	80057c2 <_vfprintf_r+0x4a2>
 8005d18:	2d10      	cmp	r5, #16
 8005d1a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005d1c:	4b0b      	ldr	r3, [pc, #44]	; (8005d4c <_vfprintf_r+0xa2c>)
 8005d1e:	f340 82e7 	ble.w	80062f0 <_vfprintf_r+0xfd0>
 8005d22:	4619      	mov	r1, r3
 8005d24:	2610      	movs	r6, #16
 8005d26:	4623      	mov	r3, r4
 8005d28:	9f03      	ldr	r7, [sp, #12]
 8005d2a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005d2e:	460c      	mov	r4, r1
 8005d30:	e014      	b.n	8005d5c <_vfprintf_r+0xa3c>
 8005d32:	bf00      	nop
 8005d34:	7fefffff 	.word	0x7fefffff
 8005d38:	08009e3c 	.word	0x08009e3c
 8005d3c:	08009e38 	.word	0x08009e38
 8005d40:	08009e5c 	.word	0x08009e5c
 8005d44:	08009e48 	.word	0x08009e48
 8005d48:	08009e78 	.word	0x08009e78
 8005d4c:	08009e8c 	.word	0x08009e8c
 8005d50:	f10b 0b08 	add.w	fp, fp, #8
 8005d54:	3d10      	subs	r5, #16
 8005d56:	2d10      	cmp	r5, #16
 8005d58:	f340 82c7 	ble.w	80062ea <_vfprintf_r+0xfca>
 8005d5c:	3201      	adds	r2, #1
 8005d5e:	3310      	adds	r3, #16
 8005d60:	2a07      	cmp	r2, #7
 8005d62:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005d66:	e9cb 4600 	strd	r4, r6, [fp]
 8005d6a:	ddf1      	ble.n	8005d50 <_vfprintf_r+0xa30>
 8005d6c:	aa2a      	add	r2, sp, #168	; 0xa8
 8005d6e:	4649      	mov	r1, r9
 8005d70:	4638      	mov	r0, r7
 8005d72:	f003 fbb5 	bl	80094e0 <__sprint_r>
 8005d76:	2800      	cmp	r0, #0
 8005d78:	d14c      	bne.n	8005e14 <_vfprintf_r+0xaf4>
 8005d7a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005d7e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005d82:	e7e7      	b.n	8005d54 <_vfprintf_r+0xa34>
 8005d84:	9b06      	ldr	r3, [sp, #24]
 8005d86:	9a04      	ldr	r2, [sp, #16]
 8005d88:	1a9d      	subs	r5, r3, r2
 8005d8a:	2d00      	cmp	r5, #0
 8005d8c:	f77f acc9 	ble.w	8005722 <_vfprintf_r+0x402>
 8005d90:	2d10      	cmp	r5, #16
 8005d92:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005d94:	4bbc      	ldr	r3, [pc, #752]	; (8006088 <_vfprintf_r+0xd68>)
 8005d96:	dd27      	ble.n	8005de8 <_vfprintf_r+0xac8>
 8005d98:	4659      	mov	r1, fp
 8005d9a:	4620      	mov	r0, r4
 8005d9c:	46bb      	mov	fp, r7
 8005d9e:	461c      	mov	r4, r3
 8005da0:	4637      	mov	r7, r6
 8005da2:	9e07      	ldr	r6, [sp, #28]
 8005da4:	e004      	b.n	8005db0 <_vfprintf_r+0xa90>
 8005da6:	3d10      	subs	r5, #16
 8005da8:	2d10      	cmp	r5, #16
 8005daa:	f101 0108 	add.w	r1, r1, #8
 8005dae:	dd16      	ble.n	8005dde <_vfprintf_r+0xabe>
 8005db0:	3201      	adds	r2, #1
 8005db2:	3010      	adds	r0, #16
 8005db4:	2310      	movs	r3, #16
 8005db6:	2a07      	cmp	r2, #7
 8005db8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005dbc:	600c      	str	r4, [r1, #0]
 8005dbe:	604b      	str	r3, [r1, #4]
 8005dc0:	ddf1      	ble.n	8005da6 <_vfprintf_r+0xa86>
 8005dc2:	aa2a      	add	r2, sp, #168	; 0xa8
 8005dc4:	4631      	mov	r1, r6
 8005dc6:	9803      	ldr	r0, [sp, #12]
 8005dc8:	f003 fb8a 	bl	80094e0 <__sprint_r>
 8005dcc:	2800      	cmp	r0, #0
 8005dce:	f040 80a8 	bne.w	8005f22 <_vfprintf_r+0xc02>
 8005dd2:	3d10      	subs	r5, #16
 8005dd4:	2d10      	cmp	r5, #16
 8005dd6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005dda:	a92d      	add	r1, sp, #180	; 0xb4
 8005ddc:	dce8      	bgt.n	8005db0 <_vfprintf_r+0xa90>
 8005dde:	463e      	mov	r6, r7
 8005de0:	4623      	mov	r3, r4
 8005de2:	465f      	mov	r7, fp
 8005de4:	4604      	mov	r4, r0
 8005de6:	468b      	mov	fp, r1
 8005de8:	3201      	adds	r2, #1
 8005dea:	442c      	add	r4, r5
 8005dec:	2a07      	cmp	r2, #7
 8005dee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005df2:	e9cb 3500 	strd	r3, r5, [fp]
 8005df6:	f300 8292 	bgt.w	800631e <_vfprintf_r+0xffe>
 8005dfa:	f10b 0b08 	add.w	fp, fp, #8
 8005dfe:	e490      	b.n	8005722 <_vfprintf_r+0x402>
 8005e00:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e02:	9907      	ldr	r1, [sp, #28]
 8005e04:	9803      	ldr	r0, [sp, #12]
 8005e06:	f003 fb6b 	bl	80094e0 <__sprint_r>
 8005e0a:	2800      	cmp	r0, #0
 8005e0c:	f43f ad23 	beq.w	8005856 <_vfprintf_r+0x536>
 8005e10:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005e14:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005e16:	b111      	cbz	r1, 8005e1e <_vfprintf_r+0xafe>
 8005e18:	9803      	ldr	r0, [sp, #12]
 8005e1a:	f002 fa35 	bl	8008288 <_free_r>
 8005e1e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8005e22:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005e26:	07d0      	lsls	r0, r2, #31
 8005e28:	d402      	bmi.n	8005e30 <_vfprintf_r+0xb10>
 8005e2a:	0599      	lsls	r1, r3, #22
 8005e2c:	f140 81d0 	bpl.w	80061d0 <_vfprintf_r+0xeb0>
 8005e30:	065a      	lsls	r2, r3, #25
 8005e32:	f53f ab65 	bmi.w	8005500 <_vfprintf_r+0x1e0>
 8005e36:	9805      	ldr	r0, [sp, #20]
 8005e38:	b057      	add	sp, #348	; 0x15c
 8005e3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e3e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005e40:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005e42:	2a01      	cmp	r2, #1
 8005e44:	f104 0401 	add.w	r4, r4, #1
 8005e48:	f103 0501 	add.w	r5, r3, #1
 8005e4c:	f10b 0608 	add.w	r6, fp, #8
 8005e50:	f340 811c 	ble.w	800608c <_vfprintf_r+0xd6c>
 8005e54:	2301      	movs	r3, #1
 8005e56:	2d07      	cmp	r5, #7
 8005e58:	f8cb 7000 	str.w	r7, [fp]
 8005e5c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005e60:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e64:	f300 81bb 	bgt.w	80061de <_vfprintf_r+0xebe>
 8005e68:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005e6a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005e6c:	1c69      	adds	r1, r5, #1
 8005e6e:	441c      	add	r4, r3
 8005e70:	2907      	cmp	r1, #7
 8005e72:	910b      	str	r1, [sp, #44]	; 0x2c
 8005e74:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8005e78:	e9c6 2300 	strd	r2, r3, [r6]
 8005e7c:	f300 81bb 	bgt.w	80061f6 <_vfprintf_r+0xed6>
 8005e80:	3608      	adds	r6, #8
 8005e82:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005e84:	1c53      	adds	r3, r2, #1
 8005e86:	461d      	mov	r5, r3
 8005e88:	9509      	str	r5, [sp, #36]	; 0x24
 8005e8a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005e8c:	930e      	str	r3, [sp, #56]	; 0x38
 8005e8e:	2200      	movs	r2, #0
 8005e90:	2300      	movs	r3, #0
 8005e92:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005e96:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005e9a:	f106 0b08 	add.w	fp, r6, #8
 8005e9e:	f7fa fdd3 	bl	8000a48 <__aeabi_dcmpeq>
 8005ea2:	2800      	cmp	r0, #0
 8005ea4:	f040 80c2 	bne.w	800602c <_vfprintf_r+0xd0c>
 8005ea8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005eaa:	f8c6 9004 	str.w	r9, [r6, #4]
 8005eae:	3701      	adds	r7, #1
 8005eb0:	444c      	add	r4, r9
 8005eb2:	2d07      	cmp	r5, #7
 8005eb4:	6037      	str	r7, [r6, #0]
 8005eb6:	942c      	str	r4, [sp, #176]	; 0xb0
 8005eb8:	952b      	str	r5, [sp, #172]	; 0xac
 8005eba:	f300 80f9 	bgt.w	80060b0 <_vfprintf_r+0xd90>
 8005ebe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005ec0:	f106 0310 	add.w	r3, r6, #16
 8005ec4:	3202      	adds	r2, #2
 8005ec6:	465e      	mov	r6, fp
 8005ec8:	9209      	str	r2, [sp, #36]	; 0x24
 8005eca:	469b      	mov	fp, r3
 8005ecc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8005ece:	6072      	str	r2, [r6, #4]
 8005ed0:	4414      	add	r4, r2
 8005ed2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005ed4:	942c      	str	r4, [sp, #176]	; 0xb0
 8005ed6:	ab26      	add	r3, sp, #152	; 0x98
 8005ed8:	2a07      	cmp	r2, #7
 8005eda:	922b      	str	r2, [sp, #172]	; 0xac
 8005edc:	6033      	str	r3, [r6, #0]
 8005ede:	f77f ac70 	ble.w	80057c2 <_vfprintf_r+0x4a2>
 8005ee2:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ee4:	9907      	ldr	r1, [sp, #28]
 8005ee6:	9803      	ldr	r0, [sp, #12]
 8005ee8:	f003 fafa 	bl	80094e0 <__sprint_r>
 8005eec:	2800      	cmp	r0, #0
 8005eee:	d18f      	bne.n	8005e10 <_vfprintf_r+0xaf0>
 8005ef0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005ef2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005ef6:	e464      	b.n	80057c2 <_vfprintf_r+0x4a2>
 8005ef8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8005efa:	af56      	add	r7, sp, #344	; 0x158
 8005efc:	0923      	lsrs	r3, r4, #4
 8005efe:	f004 010f 	and.w	r1, r4, #15
 8005f02:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8005f06:	092a      	lsrs	r2, r5, #4
 8005f08:	461c      	mov	r4, r3
 8005f0a:	4615      	mov	r5, r2
 8005f0c:	5c43      	ldrb	r3, [r0, r1]
 8005f0e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8005f12:	ea54 0305 	orrs.w	r3, r4, r5
 8005f16:	d1f1      	bne.n	8005efc <_vfprintf_r+0xbdc>
 8005f18:	9b04      	ldr	r3, [sp, #16]
 8005f1a:	1bdb      	subs	r3, r3, r7
 8005f1c:	9309      	str	r3, [sp, #36]	; 0x24
 8005f1e:	f7ff bb80 	b.w	8005622 <_vfprintf_r+0x302>
 8005f22:	46b1      	mov	r9, r6
 8005f24:	e776      	b.n	8005e14 <_vfprintf_r+0xaf4>
 8005f26:	aa2a      	add	r2, sp, #168	; 0xa8
 8005f28:	9907      	ldr	r1, [sp, #28]
 8005f2a:	9803      	ldr	r0, [sp, #12]
 8005f2c:	f003 fad8 	bl	80094e0 <__sprint_r>
 8005f30:	2800      	cmp	r0, #0
 8005f32:	f47f af6d 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8005f36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005f38:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005f3c:	f7ff bbdd 	b.w	80056fa <_vfprintf_r+0x3da>
 8005f40:	aa2a      	add	r2, sp, #168	; 0xa8
 8005f42:	9907      	ldr	r1, [sp, #28]
 8005f44:	9803      	ldr	r0, [sp, #12]
 8005f46:	f003 facb 	bl	80094e0 <__sprint_r>
 8005f4a:	2800      	cmp	r0, #0
 8005f4c:	f47f af60 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8005f50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005f52:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005f56:	f7ff bbe0 	b.w	800571a <_vfprintf_r+0x3fa>
 8005f5a:	4698      	mov	r8, r3
 8005f5c:	2d00      	cmp	r5, #0
 8005f5e:	bf08      	it	eq
 8005f60:	2c0a      	cmpeq	r4, #10
 8005f62:	f080 8170 	bcs.w	8006246 <_vfprintf_r+0xf26>
 8005f66:	af56      	add	r7, sp, #344	; 0x158
 8005f68:	3430      	adds	r4, #48	; 0x30
 8005f6a:	2301      	movs	r3, #1
 8005f6c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8005f70:	9309      	str	r3, [sp, #36]	; 0x24
 8005f72:	f7ff bb56 	b.w	8005622 <_vfprintf_r+0x302>
 8005f76:	aa2a      	add	r2, sp, #168	; 0xa8
 8005f78:	9907      	ldr	r1, [sp, #28]
 8005f7a:	9803      	ldr	r0, [sp, #12]
 8005f7c:	f003 fab0 	bl	80094e0 <__sprint_r>
 8005f80:	2800      	cmp	r0, #0
 8005f82:	f47f af45 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8005f86:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005f88:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005f8c:	e406      	b.n	800579c <_vfprintf_r+0x47c>
 8005f8e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005f90:	2b00      	cmp	r3, #0
 8005f92:	f340 8273 	ble.w	800647c <_vfprintf_r+0x115c>
 8005f96:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8005f9a:	4293      	cmp	r3, r2
 8005f9c:	bfa8      	it	ge
 8005f9e:	4613      	movge	r3, r2
 8005fa0:	2b00      	cmp	r3, #0
 8005fa2:	461d      	mov	r5, r3
 8005fa4:	dd0d      	ble.n	8005fc2 <_vfprintf_r+0xca2>
 8005fa6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005fa8:	f8cb 7000 	str.w	r7, [fp]
 8005fac:	3301      	adds	r3, #1
 8005fae:	442c      	add	r4, r5
 8005fb0:	2b07      	cmp	r3, #7
 8005fb2:	942c      	str	r4, [sp, #176]	; 0xb0
 8005fb4:	f8cb 5004 	str.w	r5, [fp, #4]
 8005fb8:	932b      	str	r3, [sp, #172]	; 0xac
 8005fba:	f300 82c1 	bgt.w	8006540 <_vfprintf_r+0x1220>
 8005fbe:	f10b 0b08 	add.w	fp, fp, #8
 8005fc2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005fc4:	2d00      	cmp	r5, #0
 8005fc6:	bfa8      	it	ge
 8005fc8:	1b5b      	subge	r3, r3, r5
 8005fca:	2b00      	cmp	r3, #0
 8005fcc:	461d      	mov	r5, r3
 8005fce:	f340 8099 	ble.w	8006104 <_vfprintf_r+0xde4>
 8005fd2:	2d10      	cmp	r5, #16
 8005fd4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005fd6:	4b2c      	ldr	r3, [pc, #176]	; (8006088 <_vfprintf_r+0xd68>)
 8005fd8:	f340 83db 	ble.w	8006792 <_vfprintf_r+0x1472>
 8005fdc:	4618      	mov	r0, r3
 8005fde:	4621      	mov	r1, r4
 8005fe0:	465b      	mov	r3, fp
 8005fe2:	2610      	movs	r6, #16
 8005fe4:	46bb      	mov	fp, r7
 8005fe6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005fea:	9c07      	ldr	r4, [sp, #28]
 8005fec:	4607      	mov	r7, r0
 8005fee:	e004      	b.n	8005ffa <_vfprintf_r+0xcda>
 8005ff0:	3308      	adds	r3, #8
 8005ff2:	3d10      	subs	r5, #16
 8005ff4:	2d10      	cmp	r5, #16
 8005ff6:	f340 83c7 	ble.w	8006788 <_vfprintf_r+0x1468>
 8005ffa:	3201      	adds	r2, #1
 8005ffc:	3110      	adds	r1, #16
 8005ffe:	2a07      	cmp	r2, #7
 8006000:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8006004:	e9c3 7600 	strd	r7, r6, [r3]
 8006008:	ddf2      	ble.n	8005ff0 <_vfprintf_r+0xcd0>
 800600a:	aa2a      	add	r2, sp, #168	; 0xa8
 800600c:	4621      	mov	r1, r4
 800600e:	4648      	mov	r0, r9
 8006010:	f003 fa66 	bl	80094e0 <__sprint_r>
 8006014:	2800      	cmp	r0, #0
 8006016:	f040 84a5 	bne.w	8006964 <_vfprintf_r+0x1644>
 800601a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800601e:	ab2d      	add	r3, sp, #180	; 0xb4
 8006020:	e7e7      	b.n	8005ff2 <_vfprintf_r+0xcd2>
 8006022:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8006026:	af56      	add	r7, sp, #344	; 0x158
 8006028:	f7ff bafb 	b.w	8005622 <_vfprintf_r+0x302>
 800602c:	f1b9 0f00 	cmp.w	r9, #0
 8006030:	f77f af4c 	ble.w	8005ecc <_vfprintf_r+0xbac>
 8006034:	f1b9 0f10 	cmp.w	r9, #16
 8006038:	4b13      	ldr	r3, [pc, #76]	; (8006088 <_vfprintf_r+0xd68>)
 800603a:	f340 8659 	ble.w	8006cf0 <_vfprintf_r+0x19d0>
 800603e:	4619      	mov	r1, r3
 8006040:	4622      	mov	r2, r4
 8006042:	4633      	mov	r3, r6
 8006044:	2710      	movs	r7, #16
 8006046:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800604a:	9c07      	ldr	r4, [sp, #28]
 800604c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800604e:	460e      	mov	r6, r1
 8006050:	e007      	b.n	8006062 <_vfprintf_r+0xd42>
 8006052:	3308      	adds	r3, #8
 8006054:	f1a9 0910 	sub.w	r9, r9, #16
 8006058:	f1b9 0f10 	cmp.w	r9, #16
 800605c:	f340 8353 	ble.w	8006706 <_vfprintf_r+0x13e6>
 8006060:	3501      	adds	r5, #1
 8006062:	3210      	adds	r2, #16
 8006064:	2d07      	cmp	r5, #7
 8006066:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800606a:	e9c3 6700 	strd	r6, r7, [r3]
 800606e:	ddf0      	ble.n	8006052 <_vfprintf_r+0xd32>
 8006070:	aa2a      	add	r2, sp, #168	; 0xa8
 8006072:	4621      	mov	r1, r4
 8006074:	4658      	mov	r0, fp
 8006076:	f003 fa33 	bl	80094e0 <__sprint_r>
 800607a:	2800      	cmp	r0, #0
 800607c:	f040 8472 	bne.w	8006964 <_vfprintf_r+0x1644>
 8006080:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8006084:	ab2d      	add	r3, sp, #180	; 0xb4
 8006086:	e7e5      	b.n	8006054 <_vfprintf_r+0xd34>
 8006088:	08009e8c 	.word	0x08009e8c
 800608c:	f018 0f01 	tst.w	r8, #1
 8006090:	f47f aee0 	bne.w	8005e54 <_vfprintf_r+0xb34>
 8006094:	2201      	movs	r2, #1
 8006096:	2d07      	cmp	r5, #7
 8006098:	f8cb 7000 	str.w	r7, [fp]
 800609c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80060a0:	f8cb 2004 	str.w	r2, [fp, #4]
 80060a4:	dc04      	bgt.n	80060b0 <_vfprintf_r+0xd90>
 80060a6:	3302      	adds	r3, #2
 80060a8:	9309      	str	r3, [sp, #36]	; 0x24
 80060aa:	f10b 0b10 	add.w	fp, fp, #16
 80060ae:	e70d      	b.n	8005ecc <_vfprintf_r+0xbac>
 80060b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80060b2:	9907      	ldr	r1, [sp, #28]
 80060b4:	9803      	ldr	r0, [sp, #12]
 80060b6:	f003 fa13 	bl	80094e0 <__sprint_r>
 80060ba:	2800      	cmp	r0, #0
 80060bc:	f47f aea8 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80060c0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80060c4:	3301      	adds	r3, #1
 80060c6:	9309      	str	r3, [sp, #36]	; 0x24
 80060c8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80060cc:	ae2d      	add	r6, sp, #180	; 0xb4
 80060ce:	e6fd      	b.n	8005ecc <_vfprintf_r+0xbac>
 80060d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80060d2:	9907      	ldr	r1, [sp, #28]
 80060d4:	9803      	ldr	r0, [sp, #12]
 80060d6:	f003 fa03 	bl	80094e0 <__sprint_r>
 80060da:	2800      	cmp	r0, #0
 80060dc:	f47f ae98 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80060e0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80060e4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80060e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80060ea:	f7ff baf6 	b.w	80056da <_vfprintf_r+0x3ba>
 80060ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80060f0:	9907      	ldr	r1, [sp, #28]
 80060f2:	9803      	ldr	r0, [sp, #12]
 80060f4:	f003 f9f4 	bl	80094e0 <__sprint_r>
 80060f8:	2800      	cmp	r0, #0
 80060fa:	f47f ae89 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80060fe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006100:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006104:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006106:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800610a:	443b      	add	r3, r7
 800610c:	4699      	mov	r9, r3
 800610e:	f040 8357 	bne.w	80067c0 <_vfprintf_r+0x14a0>
 8006112:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006114:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006116:	4293      	cmp	r3, r2
 8006118:	db49      	blt.n	80061ae <_vfprintf_r+0xe8e>
 800611a:	f018 0f01 	tst.w	r8, #1
 800611e:	d146      	bne.n	80061ae <_vfprintf_r+0xe8e>
 8006120:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006122:	18bd      	adds	r5, r7, r2
 8006124:	eba5 0509 	sub.w	r5, r5, r9
 8006128:	1ad3      	subs	r3, r2, r3
 800612a:	429d      	cmp	r5, r3
 800612c:	bfa8      	it	ge
 800612e:	461d      	movge	r5, r3
 8006130:	2d00      	cmp	r5, #0
 8006132:	dd0d      	ble.n	8006150 <_vfprintf_r+0xe30>
 8006134:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006136:	f8cb 9000 	str.w	r9, [fp]
 800613a:	3201      	adds	r2, #1
 800613c:	442c      	add	r4, r5
 800613e:	2a07      	cmp	r2, #7
 8006140:	942c      	str	r4, [sp, #176]	; 0xb0
 8006142:	f8cb 5004 	str.w	r5, [fp, #4]
 8006146:	922b      	str	r2, [sp, #172]	; 0xac
 8006148:	f300 8462 	bgt.w	8006a10 <_vfprintf_r+0x16f0>
 800614c:	f10b 0b08 	add.w	fp, fp, #8
 8006150:	2d00      	cmp	r5, #0
 8006152:	bfac      	ite	ge
 8006154:	1b5d      	subge	r5, r3, r5
 8006156:	461d      	movlt	r5, r3
 8006158:	2d00      	cmp	r5, #0
 800615a:	f77f ab32 	ble.w	80057c2 <_vfprintf_r+0x4a2>
 800615e:	2d10      	cmp	r5, #16
 8006160:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006162:	4bc5      	ldr	r3, [pc, #788]	; (8006478 <_vfprintf_r+0x1158>)
 8006164:	f340 80c4 	ble.w	80062f0 <_vfprintf_r+0xfd0>
 8006168:	4619      	mov	r1, r3
 800616a:	2610      	movs	r6, #16
 800616c:	4623      	mov	r3, r4
 800616e:	9f03      	ldr	r7, [sp, #12]
 8006170:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006174:	460c      	mov	r4, r1
 8006176:	e005      	b.n	8006184 <_vfprintf_r+0xe64>
 8006178:	f10b 0b08 	add.w	fp, fp, #8
 800617c:	3d10      	subs	r5, #16
 800617e:	2d10      	cmp	r5, #16
 8006180:	f340 80b3 	ble.w	80062ea <_vfprintf_r+0xfca>
 8006184:	3201      	adds	r2, #1
 8006186:	3310      	adds	r3, #16
 8006188:	2a07      	cmp	r2, #7
 800618a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800618e:	e9cb 4600 	strd	r4, r6, [fp]
 8006192:	ddf1      	ble.n	8006178 <_vfprintf_r+0xe58>
 8006194:	aa2a      	add	r2, sp, #168	; 0xa8
 8006196:	4649      	mov	r1, r9
 8006198:	4638      	mov	r0, r7
 800619a:	f003 f9a1 	bl	80094e0 <__sprint_r>
 800619e:	2800      	cmp	r0, #0
 80061a0:	f47f ae38 	bne.w	8005e14 <_vfprintf_r+0xaf4>
 80061a4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80061a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80061ac:	e7e6      	b.n	800617c <_vfprintf_r+0xe5c>
 80061ae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80061b0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80061b2:	f8cb 1000 	str.w	r1, [fp]
 80061b6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80061b8:	f8cb 1004 	str.w	r1, [fp, #4]
 80061bc:	3201      	adds	r2, #1
 80061be:	440c      	add	r4, r1
 80061c0:	2a07      	cmp	r2, #7
 80061c2:	942c      	str	r4, [sp, #176]	; 0xb0
 80061c4:	922b      	str	r2, [sp, #172]	; 0xac
 80061c6:	f300 828c 	bgt.w	80066e2 <_vfprintf_r+0x13c2>
 80061ca:	f10b 0b08 	add.w	fp, fp, #8
 80061ce:	e7a7      	b.n	8006120 <_vfprintf_r+0xe00>
 80061d0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80061d4:	f002 fb08 	bl	80087e8 <__retarget_lock_release_recursive>
 80061d8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80061dc:	e628      	b.n	8005e30 <_vfprintf_r+0xb10>
 80061de:	aa2a      	add	r2, sp, #168	; 0xa8
 80061e0:	9907      	ldr	r1, [sp, #28]
 80061e2:	9803      	ldr	r0, [sp, #12]
 80061e4:	f003 f97c 	bl	80094e0 <__sprint_r>
 80061e8:	2800      	cmp	r0, #0
 80061ea:	f47f ae11 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80061ee:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80061f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80061f4:	e638      	b.n	8005e68 <_vfprintf_r+0xb48>
 80061f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80061f8:	9907      	ldr	r1, [sp, #28]
 80061fa:	9803      	ldr	r0, [sp, #12]
 80061fc:	f003 f970 	bl	80094e0 <__sprint_r>
 8006200:	2800      	cmp	r0, #0
 8006202:	f47f ae05 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006206:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800620a:	ae2d      	add	r6, sp, #180	; 0xb4
 800620c:	930b      	str	r3, [sp, #44]	; 0x2c
 800620e:	e638      	b.n	8005e82 <_vfprintf_r+0xb62>
 8006210:	6814      	ldr	r4, [r2, #0]
 8006212:	9308      	str	r3, [sp, #32]
 8006214:	2500      	movs	r5, #0
 8006216:	f7ff bb95 	b.w	8005944 <_vfprintf_r+0x624>
 800621a:	6814      	ldr	r4, [r2, #0]
 800621c:	9308      	str	r3, [sp, #32]
 800621e:	2500      	movs	r5, #0
 8006220:	f7ff b9ae 	b.w	8005580 <_vfprintf_r+0x260>
 8006224:	680c      	ldr	r4, [r1, #0]
 8006226:	9208      	str	r2, [sp, #32]
 8006228:	17e5      	asrs	r5, r4, #31
 800622a:	4620      	mov	r0, r4
 800622c:	4629      	mov	r1, r5
 800622e:	f7ff b9d2 	b.w	80055d6 <_vfprintf_r+0x2b6>
 8006232:	6814      	ldr	r4, [r2, #0]
 8006234:	9108      	str	r1, [sp, #32]
 8006236:	2201      	movs	r2, #1
 8006238:	2500      	movs	r5, #0
 800623a:	f7ff bb32 	b.w	80058a2 <_vfprintf_r+0x582>
 800623e:	2a01      	cmp	r2, #1
 8006240:	f47f ab3c 	bne.w	80058bc <_vfprintf_r+0x59c>
 8006244:	e68f      	b.n	8005f66 <_vfprintf_r+0xc46>
 8006246:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800624a:	2200      	movs	r2, #0
 800624c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8006250:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8006254:	af56      	add	r7, sp, #344	; 0x158
 8006256:	4692      	mov	sl, r2
 8006258:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800625c:	461e      	mov	r6, r3
 800625e:	e00a      	b.n	8006276 <_vfprintf_r+0xf56>
 8006260:	2300      	movs	r3, #0
 8006262:	4620      	mov	r0, r4
 8006264:	4629      	mov	r1, r5
 8006266:	220a      	movs	r2, #10
 8006268:	f7fa fc48 	bl	8000afc <__aeabi_uldivmod>
 800626c:	4604      	mov	r4, r0
 800626e:	460d      	mov	r5, r1
 8006270:	ea54 0305 	orrs.w	r3, r4, r5
 8006274:	d029      	beq.n	80062ca <_vfprintf_r+0xfaa>
 8006276:	220a      	movs	r2, #10
 8006278:	2300      	movs	r3, #0
 800627a:	4620      	mov	r0, r4
 800627c:	4629      	mov	r1, r5
 800627e:	f7fa fc3d 	bl	8000afc <__aeabi_uldivmod>
 8006282:	3230      	adds	r2, #48	; 0x30
 8006284:	f807 2c01 	strb.w	r2, [r7, #-1]
 8006288:	f10a 0a01 	add.w	sl, sl, #1
 800628c:	3f01      	subs	r7, #1
 800628e:	2e00      	cmp	r6, #0
 8006290:	d0e6      	beq.n	8006260 <_vfprintf_r+0xf40>
 8006292:	f898 3000 	ldrb.w	r3, [r8]
 8006296:	459a      	cmp	sl, r3
 8006298:	d1e2      	bne.n	8006260 <_vfprintf_r+0xf40>
 800629a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800629e:	d0df      	beq.n	8006260 <_vfprintf_r+0xf40>
 80062a0:	2d00      	cmp	r5, #0
 80062a2:	bf08      	it	eq
 80062a4:	2c0a      	cmpeq	r4, #10
 80062a6:	d3db      	bcc.n	8006260 <_vfprintf_r+0xf40>
 80062a8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80062aa:	9918      	ldr	r1, [sp, #96]	; 0x60
 80062ac:	1aff      	subs	r7, r7, r3
 80062ae:	461a      	mov	r2, r3
 80062b0:	4638      	mov	r0, r7
 80062b2:	f003 f8a7 	bl	8009404 <strncpy>
 80062b6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80062ba:	2b00      	cmp	r3, #0
 80062bc:	f000 8496 	beq.w	8006bec <_vfprintf_r+0x18cc>
 80062c0:	f108 0801 	add.w	r8, r8, #1
 80062c4:	f04f 0a00 	mov.w	sl, #0
 80062c8:	e7ca      	b.n	8006260 <_vfprintf_r+0xf40>
 80062ca:	9b04      	ldr	r3, [sp, #16]
 80062cc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80062d0:	1bdb      	subs	r3, r3, r7
 80062d2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80062d6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80062d8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80062dc:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80062e0:	9309      	str	r3, [sp, #36]	; 0x24
 80062e2:	f7ff b99e 	b.w	8005622 <_vfprintf_r+0x302>
 80062e6:	46c1      	mov	r9, r8
 80062e8:	e594      	b.n	8005e14 <_vfprintf_r+0xaf4>
 80062ea:	4621      	mov	r1, r4
 80062ec:	461c      	mov	r4, r3
 80062ee:	460b      	mov	r3, r1
 80062f0:	3201      	adds	r2, #1
 80062f2:	442c      	add	r4, r5
 80062f4:	2a07      	cmp	r2, #7
 80062f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80062fa:	e9cb 3500 	strd	r3, r5, [fp]
 80062fe:	f77f aa5e 	ble.w	80057be <_vfprintf_r+0x49e>
 8006302:	e5ee      	b.n	8005ee2 <_vfprintf_r+0xbc2>
 8006304:	f018 0f10 	tst.w	r8, #16
 8006308:	f040 80f8 	bne.w	80064fc <_vfprintf_r+0x11dc>
 800630c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8006310:	f000 8351 	beq.w	80069b6 <_vfprintf_r+0x1696>
 8006314:	9a05      	ldr	r2, [sp, #20]
 8006316:	801a      	strh	r2, [r3, #0]
 8006318:	4657      	mov	r7, sl
 800631a:	f7ff baa7 	b.w	800586c <_vfprintf_r+0x54c>
 800631e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006320:	9907      	ldr	r1, [sp, #28]
 8006322:	9803      	ldr	r0, [sp, #12]
 8006324:	f003 f8dc 	bl	80094e0 <__sprint_r>
 8006328:	2800      	cmp	r0, #0
 800632a:	f47f ad71 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 800632e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006330:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006334:	f7ff b9f5 	b.w	8005722 <_vfprintf_r+0x402>
 8006338:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800633c:	4602      	mov	r2, r0
 800633e:	460b      	mov	r3, r1
 8006340:	f7fa ff1e 	bl	8001180 <__aeabi_dcmpun>
 8006344:	2800      	cmp	r0, #0
 8006346:	f040 8491 	bne.w	8006c6c <_vfprintf_r+0x194c>
 800634a:	2e61      	cmp	r6, #97	; 0x61
 800634c:	f000 8111 	beq.w	8006572 <_vfprintf_r+0x1252>
 8006350:	2e41      	cmp	r6, #65	; 0x41
 8006352:	f000 8377 	beq.w	8006a44 <_vfprintf_r+0x1724>
 8006356:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800635a:	f026 0220 	bic.w	r2, r6, #32
 800635e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006362:	930e      	str	r3, [sp, #56]	; 0x38
 8006364:	9204      	str	r2, [sp, #16]
 8006366:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006368:	f000 842d 	beq.w	8006bc6 <_vfprintf_r+0x18a6>
 800636c:	2a47      	cmp	r2, #71	; 0x47
 800636e:	f000 8424 	beq.w	8006bba <_vfprintf_r+0x189a>
 8006372:	2b00      	cmp	r3, #0
 8006374:	f2c0 82f9 	blt.w	800696a <_vfprintf_r+0x164a>
 8006378:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800637c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8006380:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8006384:	2e66      	cmp	r6, #102	; 0x66
 8006386:	f000 83eb 	beq.w	8006b60 <_vfprintf_r+0x1840>
 800638a:	2e46      	cmp	r6, #70	; 0x46
 800638c:	f000 847e 	beq.w	8006c8c <_vfprintf_r+0x196c>
 8006390:	9b04      	ldr	r3, [sp, #16]
 8006392:	9803      	ldr	r0, [sp, #12]
 8006394:	2b45      	cmp	r3, #69	; 0x45
 8006396:	bf0c      	ite	eq
 8006398:	f109 0501 	addeq.w	r5, r9, #1
 800639c:	464d      	movne	r5, r9
 800639e:	aa28      	add	r2, sp, #160	; 0xa0
 80063a0:	ab25      	add	r3, sp, #148	; 0x94
 80063a2:	e9cd 3200 	strd	r3, r2, [sp]
 80063a6:	2102      	movs	r1, #2
 80063a8:	ab24      	add	r3, sp, #144	; 0x90
 80063aa:	462a      	mov	r2, r5
 80063ac:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80063b0:	f000 feb2 	bl	8007118 <_dtoa_r>
 80063b4:	2e67      	cmp	r6, #103	; 0x67
 80063b6:	4607      	mov	r7, r0
 80063b8:	f040 849c 	bne.w	8006cf4 <_vfprintf_r+0x19d4>
 80063bc:	f018 0f01 	tst.w	r8, #1
 80063c0:	f040 83f9 	bne.w	8006bb6 <_vfprintf_r+0x1896>
 80063c4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80063c6:	4640      	mov	r0, r8
 80063c8:	1bdb      	subs	r3, r3, r7
 80063ca:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80063ce:	9310      	str	r3, [sp, #64]	; 0x40
 80063d0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80063d2:	9311      	str	r3, [sp, #68]	; 0x44
 80063d4:	9b04      	ldr	r3, [sp, #16]
 80063d6:	2b47      	cmp	r3, #71	; 0x47
 80063d8:	f000 81e7 	beq.w	80067aa <_vfprintf_r+0x148a>
 80063dc:	9b04      	ldr	r3, [sp, #16]
 80063de:	2b46      	cmp	r3, #70	; 0x46
 80063e0:	f000 8300 	beq.w	80069e4 <_vfprintf_r+0x16c4>
 80063e4:	9904      	ldr	r1, [sp, #16]
 80063e6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80063e8:	b2f2      	uxtb	r2, r6
 80063ea:	2941      	cmp	r1, #65	; 0x41
 80063ec:	bf08      	it	eq
 80063ee:	320f      	addeq	r2, #15
 80063f0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80063f4:	bf06      	itte	eq
 80063f6:	b2d2      	uxtbeq	r2, r2
 80063f8:	2101      	moveq	r1, #1
 80063fa:	2100      	movne	r1, #0
 80063fc:	2b00      	cmp	r3, #0
 80063fe:	9324      	str	r3, [sp, #144]	; 0x90
 8006400:	bfb8      	it	lt
 8006402:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8006404:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8006408:	bfba      	itte	lt
 800640a:	f1c3 0301 	rsblt	r3, r3, #1
 800640e:	222d      	movlt	r2, #45	; 0x2d
 8006410:	222b      	movge	r2, #43	; 0x2b
 8006412:	2b09      	cmp	r3, #9
 8006414:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8006418:	f300 83f9 	bgt.w	8006c0e <_vfprintf_r+0x18ee>
 800641c:	2900      	cmp	r1, #0
 800641e:	f040 8487 	bne.w	8006d30 <_vfprintf_r+0x1a10>
 8006422:	2230      	movs	r2, #48	; 0x30
 8006424:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8006428:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800642c:	3330      	adds	r3, #48	; 0x30
 800642e:	7013      	strb	r3, [r2, #0]
 8006430:	1c53      	adds	r3, r2, #1
 8006432:	aa26      	add	r2, sp, #152	; 0x98
 8006434:	1a9b      	subs	r3, r3, r2
 8006436:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006438:	9319      	str	r3, [sp, #100]	; 0x64
 800643a:	2a01      	cmp	r2, #1
 800643c:	4413      	add	r3, r2
 800643e:	9309      	str	r3, [sp, #36]	; 0x24
 8006440:	f340 8442 	ble.w	8006cc8 <_vfprintf_r+0x19a8>
 8006444:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006446:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006448:	4413      	add	r3, r2
 800644a:	9309      	str	r3, [sp, #36]	; 0x24
 800644c:	2300      	movs	r3, #0
 800644e:	930f      	str	r3, [sp, #60]	; 0x3c
 8006450:	9314      	str	r3, [sp, #80]	; 0x50
 8006452:	9311      	str	r3, [sp, #68]	; 0x44
 8006454:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006456:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800645a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800645e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8006462:	9304      	str	r3, [sp, #16]
 8006464:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006466:	2b00      	cmp	r3, #0
 8006468:	f040 8275 	bne.w	8006956 <_vfprintf_r+0x1636>
 800646c:	4699      	mov	r9, r3
 800646e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006472:	f7ff b8e2 	b.w	800563a <_vfprintf_r+0x31a>
 8006476:	bf00      	nop
 8006478:	08009e8c 	.word	0x08009e8c
 800647c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800647e:	49bd      	ldr	r1, [pc, #756]	; (8006774 <_vfprintf_r+0x1454>)
 8006480:	f8cb 1000 	str.w	r1, [fp]
 8006484:	3201      	adds	r2, #1
 8006486:	3401      	adds	r4, #1
 8006488:	2101      	movs	r1, #1
 800648a:	2a07      	cmp	r2, #7
 800648c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006490:	f8cb 1004 	str.w	r1, [fp, #4]
 8006494:	dc60      	bgt.n	8006558 <_vfprintf_r+0x1238>
 8006496:	f10b 0b08 	add.w	fp, fp, #8
 800649a:	b92b      	cbnz	r3, 80064a8 <_vfprintf_r+0x1188>
 800649c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800649e:	b91a      	cbnz	r2, 80064a8 <_vfprintf_r+0x1188>
 80064a0:	f018 0f01 	tst.w	r8, #1
 80064a4:	f43f a98d 	beq.w	80057c2 <_vfprintf_r+0x4a2>
 80064a8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80064aa:	9916      	ldr	r1, [sp, #88]	; 0x58
 80064ac:	f8cb 1000 	str.w	r1, [fp]
 80064b0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80064b2:	f8cb 1004 	str.w	r1, [fp, #4]
 80064b6:	3201      	adds	r2, #1
 80064b8:	440c      	add	r4, r1
 80064ba:	2a07      	cmp	r2, #7
 80064bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80064be:	922b      	str	r2, [sp, #172]	; 0xac
 80064c0:	f300 8282 	bgt.w	80069c8 <_vfprintf_r+0x16a8>
 80064c4:	f10b 0b08 	add.w	fp, fp, #8
 80064c8:	2b00      	cmp	r3, #0
 80064ca:	f2c0 82e7 	blt.w	8006a9c <_vfprintf_r+0x177c>
 80064ce:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80064d0:	3201      	adds	r2, #1
 80064d2:	441c      	add	r4, r3
 80064d4:	2a07      	cmp	r2, #7
 80064d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80064da:	e9cb 7300 	strd	r7, r3, [fp]
 80064de:	f77f a96e 	ble.w	80057be <_vfprintf_r+0x49e>
 80064e2:	e4fe      	b.n	8005ee2 <_vfprintf_r+0xbc2>
 80064e4:	aa2a      	add	r2, sp, #168	; 0xa8
 80064e6:	9907      	ldr	r1, [sp, #28]
 80064e8:	9803      	ldr	r0, [sp, #12]
 80064ea:	f002 fff9 	bl	80094e0 <__sprint_r>
 80064ee:	2800      	cmp	r0, #0
 80064f0:	f47f ac8e 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80064f4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80064f8:	f7ff bbf0 	b.w	8005cdc <_vfprintf_r+0x9bc>
 80064fc:	9a05      	ldr	r2, [sp, #20]
 80064fe:	601a      	str	r2, [r3, #0]
 8006500:	4657      	mov	r7, sl
 8006502:	f7ff b9b3 	b.w	800586c <_vfprintf_r+0x54c>
 8006506:	8814      	ldrh	r4, [r2, #0]
 8006508:	9108      	str	r1, [sp, #32]
 800650a:	2500      	movs	r5, #0
 800650c:	2201      	movs	r2, #1
 800650e:	f7ff b9c8 	b.w	80058a2 <_vfprintf_r+0x582>
 8006512:	8814      	ldrh	r4, [r2, #0]
 8006514:	9308      	str	r3, [sp, #32]
 8006516:	2500      	movs	r5, #0
 8006518:	f7ff ba14 	b.w	8005944 <_vfprintf_r+0x624>
 800651c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8006520:	9208      	str	r2, [sp, #32]
 8006522:	17e5      	asrs	r5, r4, #31
 8006524:	4620      	mov	r0, r4
 8006526:	4629      	mov	r1, r5
 8006528:	f7ff b855 	b.w	80055d6 <_vfprintf_r+0x2b6>
 800652c:	8814      	ldrh	r4, [r2, #0]
 800652e:	9308      	str	r3, [sp, #32]
 8006530:	2500      	movs	r5, #0
 8006532:	f7ff b825 	b.w	8005580 <_vfprintf_r+0x260>
 8006536:	222d      	movs	r2, #45	; 0x2d
 8006538:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800653c:	f7ff baa2 	b.w	8005a84 <_vfprintf_r+0x764>
 8006540:	aa2a      	add	r2, sp, #168	; 0xa8
 8006542:	9907      	ldr	r1, [sp, #28]
 8006544:	9803      	ldr	r0, [sp, #12]
 8006546:	f002 ffcb 	bl	80094e0 <__sprint_r>
 800654a:	2800      	cmp	r0, #0
 800654c:	f47f ac60 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006550:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006552:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006556:	e534      	b.n	8005fc2 <_vfprintf_r+0xca2>
 8006558:	aa2a      	add	r2, sp, #168	; 0xa8
 800655a:	9907      	ldr	r1, [sp, #28]
 800655c:	9803      	ldr	r0, [sp, #12]
 800655e:	f002 ffbf 	bl	80094e0 <__sprint_r>
 8006562:	2800      	cmp	r0, #0
 8006564:	f47f ac54 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006568:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800656a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800656c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006570:	e793      	b.n	800649a <_vfprintf_r+0x117a>
 8006572:	2330      	movs	r3, #48	; 0x30
 8006574:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006578:	2378      	movs	r3, #120	; 0x78
 800657a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800657e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8006582:	f048 0402 	orr.w	r4, r8, #2
 8006586:	f300 82b0 	bgt.w	8006aea <_vfprintf_r+0x17ca>
 800658a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800658e:	930e      	str	r3, [sp, #56]	; 0x38
 8006590:	f026 0320 	bic.w	r3, r6, #32
 8006594:	9304      	str	r3, [sp, #16]
 8006596:	2200      	movs	r2, #0
 8006598:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800659a:	920a      	str	r2, [sp, #40]	; 0x28
 800659c:	46a0      	mov	r8, r4
 800659e:	af3d      	add	r7, sp, #244	; 0xf4
 80065a0:	2b00      	cmp	r3, #0
 80065a2:	f2c0 81e3 	blt.w	800696c <_vfprintf_r+0x164c>
 80065a6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80065aa:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80065ae:	2300      	movs	r3, #0
 80065b0:	930b      	str	r3, [sp, #44]	; 0x2c
 80065b2:	2e61      	cmp	r6, #97	; 0x61
 80065b4:	f000 8255 	beq.w	8006a62 <_vfprintf_r+0x1742>
 80065b8:	2e41      	cmp	r6, #65	; 0x41
 80065ba:	f47f aee3 	bne.w	8006384 <_vfprintf_r+0x1064>
 80065be:	a824      	add	r0, sp, #144	; 0x90
 80065c0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80065c4:	f002 fea6 	bl	8009314 <frexp>
 80065c8:	2200      	movs	r2, #0
 80065ca:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80065ce:	ec51 0b10 	vmov	r0, r1, d0
 80065d2:	f7f9 ffd1 	bl	8000578 <__aeabi_dmul>
 80065d6:	2200      	movs	r2, #0
 80065d8:	2300      	movs	r3, #0
 80065da:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80065de:	f7fa fa33 	bl	8000a48 <__aeabi_dcmpeq>
 80065e2:	2800      	cmp	r0, #0
 80065e4:	f040 8305 	bne.w	8006bf2 <_vfprintf_r+0x18d2>
 80065e8:	4b63      	ldr	r3, [pc, #396]	; (8006778 <_vfprintf_r+0x1458>)
 80065ea:	9309      	str	r3, [sp, #36]	; 0x24
 80065ec:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80065f0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80065f4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80065f8:	9721      	str	r7, [sp, #132]	; 0x84
 80065fa:	46b9      	mov	r9, r7
 80065fc:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8006600:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8006604:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8006608:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800660c:	e003      	b.n	8006616 <_vfprintf_r+0x12f6>
 800660e:	f7fa fa1b 	bl	8000a48 <__aeabi_dcmpeq>
 8006612:	bb20      	cbnz	r0, 800665e <_vfprintf_r+0x133e>
 8006614:	46a9      	mov	r9, r5
 8006616:	2200      	movs	r2, #0
 8006618:	4b58      	ldr	r3, [pc, #352]	; (800677c <_vfprintf_r+0x145c>)
 800661a:	4630      	mov	r0, r6
 800661c:	4639      	mov	r1, r7
 800661e:	f7f9 ffab 	bl	8000578 <__aeabi_dmul>
 8006622:	460f      	mov	r7, r1
 8006624:	4606      	mov	r6, r0
 8006626:	f7fa fa41 	bl	8000aac <__aeabi_d2iz>
 800662a:	4680      	mov	r8, r0
 800662c:	f7f9 ff3a 	bl	80004a4 <__aeabi_i2d>
 8006630:	4602      	mov	r2, r0
 8006632:	460b      	mov	r3, r1
 8006634:	4630      	mov	r0, r6
 8006636:	4639      	mov	r1, r7
 8006638:	f7f9 fde6 	bl	8000208 <__aeabi_dsub>
 800663c:	464d      	mov	r5, r9
 800663e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8006642:	f805 cb01 	strb.w	ip, [r5], #1
 8006646:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800664a:	46a3      	mov	fp, r4
 800664c:	4606      	mov	r6, r0
 800664e:	460f      	mov	r7, r1
 8006650:	f04f 0200 	mov.w	r2, #0
 8006654:	f04f 0300 	mov.w	r3, #0
 8006658:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800665c:	d1d7      	bne.n	800660e <_vfprintf_r+0x12ee>
 800665e:	4630      	mov	r0, r6
 8006660:	4639      	mov	r1, r7
 8006662:	2200      	movs	r2, #0
 8006664:	4b46      	ldr	r3, [pc, #280]	; (8006780 <_vfprintf_r+0x1460>)
 8006666:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800666a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800666c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8006670:	4644      	mov	r4, r8
 8006672:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8006676:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800667a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800667e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8006682:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8006684:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006688:	f7fa fa06 	bl	8000a98 <__aeabi_dcmpgt>
 800668c:	2800      	cmp	r0, #0
 800668e:	f040 8176 	bne.w	800697e <_vfprintf_r+0x165e>
 8006692:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8006696:	2200      	movs	r2, #0
 8006698:	4b39      	ldr	r3, [pc, #228]	; (8006780 <_vfprintf_r+0x1460>)
 800669a:	f7fa f9d5 	bl	8000a48 <__aeabi_dcmpeq>
 800669e:	b110      	cbz	r0, 80066a6 <_vfprintf_r+0x1386>
 80066a0:	07e2      	lsls	r2, r4, #31
 80066a2:	f100 816c 	bmi.w	800697e <_vfprintf_r+0x165e>
 80066a6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80066a8:	2b00      	cmp	r3, #0
 80066aa:	db07      	blt.n	80066bc <_vfprintf_r+0x139c>
 80066ac:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80066ae:	3301      	adds	r3, #1
 80066b0:	442b      	add	r3, r5
 80066b2:	2230      	movs	r2, #48	; 0x30
 80066b4:	f805 2b01 	strb.w	r2, [r5], #1
 80066b8:	42ab      	cmp	r3, r5
 80066ba:	d1fb      	bne.n	80066b4 <_vfprintf_r+0x1394>
 80066bc:	1beb      	subs	r3, r5, r7
 80066be:	4640      	mov	r0, r8
 80066c0:	9310      	str	r3, [sp, #64]	; 0x40
 80066c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80066c6:	e683      	b.n	80063d0 <_vfprintf_r+0x10b0>
 80066c8:	f8cd 9010 	str.w	r9, [sp, #16]
 80066cc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80066d0:	9408      	str	r4, [sp, #32]
 80066d2:	4681      	mov	r9, r0
 80066d4:	900f      	str	r0, [sp, #60]	; 0x3c
 80066d6:	9014      	str	r0, [sp, #80]	; 0x50
 80066d8:	9011      	str	r0, [sp, #68]	; 0x44
 80066da:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80066de:	f7fe bfac 	b.w	800563a <_vfprintf_r+0x31a>
 80066e2:	aa2a      	add	r2, sp, #168	; 0xa8
 80066e4:	9907      	ldr	r1, [sp, #28]
 80066e6:	9803      	ldr	r0, [sp, #12]
 80066e8:	f002 fefa 	bl	80094e0 <__sprint_r>
 80066ec:	2800      	cmp	r0, #0
 80066ee:	f47f ab8f 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80066f2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80066f4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80066f6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80066fa:	e511      	b.n	8006120 <_vfprintf_r+0xe00>
 80066fc:	4252      	negs	r2, r2
 80066fe:	9206      	str	r2, [sp, #24]
 8006700:	9308      	str	r3, [sp, #32]
 8006702:	f7ff b96d 	b.w	80059e0 <_vfprintf_r+0x6c0>
 8006706:	4614      	mov	r4, r2
 8006708:	4632      	mov	r2, r6
 800670a:	461e      	mov	r6, r3
 800670c:	4613      	mov	r3, r2
 800670e:	462a      	mov	r2, r5
 8006710:	3201      	adds	r2, #1
 8006712:	9209      	str	r2, [sp, #36]	; 0x24
 8006714:	f106 0208 	add.w	r2, r6, #8
 8006718:	e9c6 3900 	strd	r3, r9, [r6]
 800671c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800671e:	932b      	str	r3, [sp, #172]	; 0xac
 8006720:	444c      	add	r4, r9
 8006722:	2b07      	cmp	r3, #7
 8006724:	942c      	str	r4, [sp, #176]	; 0xb0
 8006726:	f73f acc3 	bgt.w	80060b0 <_vfprintf_r+0xd90>
 800672a:	3301      	adds	r3, #1
 800672c:	9309      	str	r3, [sp, #36]	; 0x24
 800672e:	f102 0b08 	add.w	fp, r2, #8
 8006732:	4616      	mov	r6, r2
 8006734:	f7ff bbca 	b.w	8005ecc <_vfprintf_r+0xbac>
 8006738:	aa2a      	add	r2, sp, #168	; 0xa8
 800673a:	9907      	ldr	r1, [sp, #28]
 800673c:	9803      	ldr	r0, [sp, #12]
 800673e:	f002 fecf 	bl	80094e0 <__sprint_r>
 8006742:	2800      	cmp	r0, #0
 8006744:	f47f ab64 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006748:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800674a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800674e:	f7ff bade 	b.w	8005d0e <_vfprintf_r+0x9ee>
 8006752:	464b      	mov	r3, r9
 8006754:	2b06      	cmp	r3, #6
 8006756:	bf28      	it	cs
 8006758:	2306      	movcs	r3, #6
 800675a:	46b9      	mov	r9, r7
 800675c:	970f      	str	r7, [sp, #60]	; 0x3c
 800675e:	9714      	str	r7, [sp, #80]	; 0x50
 8006760:	9711      	str	r7, [sp, #68]	; 0x44
 8006762:	970a      	str	r7, [sp, #40]	; 0x28
 8006764:	463a      	mov	r2, r7
 8006766:	9304      	str	r3, [sp, #16]
 8006768:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800676c:	4f05      	ldr	r7, [pc, #20]	; (8006784 <_vfprintf_r+0x1464>)
 800676e:	f7fe bf64 	b.w	800563a <_vfprintf_r+0x31a>
 8006772:	bf00      	nop
 8006774:	08009e78 	.word	0x08009e78
 8006778:	08009e5c 	.word	0x08009e5c
 800677c:	40300000 	.word	0x40300000
 8006780:	3fe00000 	.word	0x3fe00000
 8006784:	08009e70 	.word	0x08009e70
 8006788:	460c      	mov	r4, r1
 800678a:	4639      	mov	r1, r7
 800678c:	465f      	mov	r7, fp
 800678e:	469b      	mov	fp, r3
 8006790:	460b      	mov	r3, r1
 8006792:	3201      	adds	r2, #1
 8006794:	442c      	add	r4, r5
 8006796:	2a07      	cmp	r2, #7
 8006798:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800679c:	e9cb 3500 	strd	r3, r5, [fp]
 80067a0:	f73f aca5 	bgt.w	80060ee <_vfprintf_r+0xdce>
 80067a4:	f10b 0b08 	add.w	fp, fp, #8
 80067a8:	e4ac      	b.n	8006104 <_vfprintf_r+0xde4>
 80067aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80067ac:	1cda      	adds	r2, r3, #3
 80067ae:	db02      	blt.n	80067b6 <_vfprintf_r+0x1496>
 80067b0:	4599      	cmp	r9, r3
 80067b2:	f280 80b5 	bge.w	8006920 <_vfprintf_r+0x1600>
 80067b6:	3e02      	subs	r6, #2
 80067b8:	f026 0320 	bic.w	r3, r6, #32
 80067bc:	9304      	str	r3, [sp, #16]
 80067be:	e611      	b.n	80063e4 <_vfprintf_r+0x10c4>
 80067c0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80067c2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80067c6:	465a      	mov	r2, fp
 80067c8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80067cc:	18fb      	adds	r3, r7, r3
 80067ce:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80067d2:	970c      	str	r7, [sp, #48]	; 0x30
 80067d4:	4eaf      	ldr	r6, [pc, #700]	; (8006a94 <_vfprintf_r+0x1774>)
 80067d6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80067da:	9309      	str	r3, [sp, #36]	; 0x24
 80067dc:	464f      	mov	r7, r9
 80067de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80067e2:	4621      	mov	r1, r4
 80067e4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80067e6:	2b00      	cmp	r3, #0
 80067e8:	d05b      	beq.n	80068a2 <_vfprintf_r+0x1582>
 80067ea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80067ec:	2b00      	cmp	r3, #0
 80067ee:	d154      	bne.n	800689a <_vfprintf_r+0x157a>
 80067f0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80067f2:	3b01      	subs	r3, #1
 80067f4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80067f8:	9314      	str	r3, [sp, #80]	; 0x50
 80067fa:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80067fc:	9818      	ldr	r0, [sp, #96]	; 0x60
 80067fe:	6010      	str	r0, [r2, #0]
 8006800:	3301      	adds	r3, #1
 8006802:	4459      	add	r1, fp
 8006804:	2b07      	cmp	r3, #7
 8006806:	912c      	str	r1, [sp, #176]	; 0xb0
 8006808:	f8c2 b004 	str.w	fp, [r2, #4]
 800680c:	932b      	str	r3, [sp, #172]	; 0xac
 800680e:	dc68      	bgt.n	80068e2 <_vfprintf_r+0x15c2>
 8006810:	3208      	adds	r2, #8
 8006812:	9809      	ldr	r0, [sp, #36]	; 0x24
 8006814:	f898 3000 	ldrb.w	r3, [r8]
 8006818:	1bc5      	subs	r5, r0, r7
 800681a:	429d      	cmp	r5, r3
 800681c:	bfa8      	it	ge
 800681e:	461d      	movge	r5, r3
 8006820:	2d00      	cmp	r5, #0
 8006822:	dd0b      	ble.n	800683c <_vfprintf_r+0x151c>
 8006824:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006826:	6017      	str	r7, [r2, #0]
 8006828:	3301      	adds	r3, #1
 800682a:	4429      	add	r1, r5
 800682c:	2b07      	cmp	r3, #7
 800682e:	912c      	str	r1, [sp, #176]	; 0xb0
 8006830:	6055      	str	r5, [r2, #4]
 8006832:	932b      	str	r3, [sp, #172]	; 0xac
 8006834:	dc5e      	bgt.n	80068f4 <_vfprintf_r+0x15d4>
 8006836:	f898 3000 	ldrb.w	r3, [r8]
 800683a:	3208      	adds	r2, #8
 800683c:	2d00      	cmp	r5, #0
 800683e:	bfac      	ite	ge
 8006840:	1b5d      	subge	r5, r3, r5
 8006842:	461d      	movlt	r5, r3
 8006844:	2d00      	cmp	r5, #0
 8006846:	dd26      	ble.n	8006896 <_vfprintf_r+0x1576>
 8006848:	2d10      	cmp	r5, #16
 800684a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800684c:	dd3c      	ble.n	80068c8 <_vfprintf_r+0x15a8>
 800684e:	2410      	movs	r4, #16
 8006850:	e003      	b.n	800685a <_vfprintf_r+0x153a>
 8006852:	3208      	adds	r2, #8
 8006854:	3d10      	subs	r5, #16
 8006856:	2d10      	cmp	r5, #16
 8006858:	dd36      	ble.n	80068c8 <_vfprintf_r+0x15a8>
 800685a:	3001      	adds	r0, #1
 800685c:	3110      	adds	r1, #16
 800685e:	2807      	cmp	r0, #7
 8006860:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8006864:	e9c2 6400 	strd	r6, r4, [r2]
 8006868:	ddf3      	ble.n	8006852 <_vfprintf_r+0x1532>
 800686a:	aa2a      	add	r2, sp, #168	; 0xa8
 800686c:	4651      	mov	r1, sl
 800686e:	4648      	mov	r0, r9
 8006870:	f002 fe36 	bl	80094e0 <__sprint_r>
 8006874:	2800      	cmp	r0, #0
 8006876:	d150      	bne.n	800691a <_vfprintf_r+0x15fa>
 8006878:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800687c:	aa2d      	add	r2, sp, #180	; 0xb4
 800687e:	e7e9      	b.n	8006854 <_vfprintf_r+0x1534>
 8006880:	aa2a      	add	r2, sp, #168	; 0xa8
 8006882:	4651      	mov	r1, sl
 8006884:	4648      	mov	r0, r9
 8006886:	f002 fe2b 	bl	80094e0 <__sprint_r>
 800688a:	2800      	cmp	r0, #0
 800688c:	d145      	bne.n	800691a <_vfprintf_r+0x15fa>
 800688e:	f898 3000 	ldrb.w	r3, [r8]
 8006892:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006894:	aa2d      	add	r2, sp, #180	; 0xb4
 8006896:	441f      	add	r7, r3
 8006898:	e7a4      	b.n	80067e4 <_vfprintf_r+0x14c4>
 800689a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800689c:	3b01      	subs	r3, #1
 800689e:	930f      	str	r3, [sp, #60]	; 0x3c
 80068a0:	e7ab      	b.n	80067fa <_vfprintf_r+0x14da>
 80068a2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80068a4:	2b00      	cmp	r3, #0
 80068a6:	d1f8      	bne.n	800689a <_vfprintf_r+0x157a>
 80068a8:	46b9      	mov	r9, r7
 80068aa:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80068ac:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80068ae:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80068b2:	18fb      	adds	r3, r7, r3
 80068b4:	4599      	cmp	r9, r3
 80068b6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80068ba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80068be:	4693      	mov	fp, r2
 80068c0:	460c      	mov	r4, r1
 80068c2:	bf28      	it	cs
 80068c4:	4699      	movcs	r9, r3
 80068c6:	e424      	b.n	8006112 <_vfprintf_r+0xdf2>
 80068c8:	3001      	adds	r0, #1
 80068ca:	4429      	add	r1, r5
 80068cc:	2807      	cmp	r0, #7
 80068ce:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80068d2:	e9c2 6500 	strd	r6, r5, [r2]
 80068d6:	dcd3      	bgt.n	8006880 <_vfprintf_r+0x1560>
 80068d8:	f898 3000 	ldrb.w	r3, [r8]
 80068dc:	3208      	adds	r2, #8
 80068de:	441f      	add	r7, r3
 80068e0:	e780      	b.n	80067e4 <_vfprintf_r+0x14c4>
 80068e2:	aa2a      	add	r2, sp, #168	; 0xa8
 80068e4:	4651      	mov	r1, sl
 80068e6:	4648      	mov	r0, r9
 80068e8:	f002 fdfa 	bl	80094e0 <__sprint_r>
 80068ec:	b9a8      	cbnz	r0, 800691a <_vfprintf_r+0x15fa>
 80068ee:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80068f0:	aa2d      	add	r2, sp, #180	; 0xb4
 80068f2:	e78e      	b.n	8006812 <_vfprintf_r+0x14f2>
 80068f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80068f6:	4651      	mov	r1, sl
 80068f8:	4648      	mov	r0, r9
 80068fa:	f002 fdf1 	bl	80094e0 <__sprint_r>
 80068fe:	b960      	cbnz	r0, 800691a <_vfprintf_r+0x15fa>
 8006900:	f898 3000 	ldrb.w	r3, [r8]
 8006904:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8006906:	aa2d      	add	r2, sp, #180	; 0xb4
 8006908:	e798      	b.n	800683c <_vfprintf_r+0x151c>
 800690a:	4638      	mov	r0, r7
 800690c:	f7fa fb78 	bl	8001000 <strlen>
 8006910:	46a9      	mov	r9, r5
 8006912:	4603      	mov	r3, r0
 8006914:	9009      	str	r0, [sp, #36]	; 0x24
 8006916:	f7ff b8f4 	b.w	8005b02 <_vfprintf_r+0x7e2>
 800691a:	46d1      	mov	r9, sl
 800691c:	f7ff ba7a 	b.w	8005e14 <_vfprintf_r+0xaf4>
 8006920:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006922:	4619      	mov	r1, r3
 8006924:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006926:	4299      	cmp	r1, r3
 8006928:	f300 8082 	bgt.w	8006a30 <_vfprintf_r+0x1710>
 800692c:	07c4      	lsls	r4, r0, #31
 800692e:	f140 816b 	bpl.w	8006c08 <_vfprintf_r+0x18e8>
 8006932:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006934:	4413      	add	r3, r2
 8006936:	9309      	str	r3, [sp, #36]	; 0x24
 8006938:	0541      	lsls	r1, r0, #21
 800693a:	d503      	bpl.n	8006944 <_vfprintf_r+0x1624>
 800693c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800693e:	2b00      	cmp	r3, #0
 8006940:	f300 80e6 	bgt.w	8006b10 <_vfprintf_r+0x17f0>
 8006944:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006946:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800694a:	9304      	str	r3, [sp, #16]
 800694c:	2667      	movs	r6, #103	; 0x67
 800694e:	2300      	movs	r3, #0
 8006950:	930f      	str	r3, [sp, #60]	; 0x3c
 8006952:	9314      	str	r3, [sp, #80]	; 0x50
 8006954:	e586      	b.n	8006464 <_vfprintf_r+0x1144>
 8006956:	222d      	movs	r2, #45	; 0x2d
 8006958:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800695c:	f04f 0900 	mov.w	r9, #0
 8006960:	f7fe be6c 	b.w	800563c <_vfprintf_r+0x31c>
 8006964:	46a1      	mov	r9, r4
 8006966:	f7ff ba55 	b.w	8005e14 <_vfprintf_r+0xaf4>
 800696a:	900a      	str	r0, [sp, #40]	; 0x28
 800696c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006970:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8006974:	931f      	str	r3, [sp, #124]	; 0x7c
 8006976:	232d      	movs	r3, #45	; 0x2d
 8006978:	911e      	str	r1, [sp, #120]	; 0x78
 800697a:	930b      	str	r3, [sp, #44]	; 0x2c
 800697c:	e619      	b.n	80065b2 <_vfprintf_r+0x1292>
 800697e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006980:	9328      	str	r3, [sp, #160]	; 0xa0
 8006982:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006984:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006988:	7bd9      	ldrb	r1, [r3, #15]
 800698a:	4291      	cmp	r1, r2
 800698c:	462b      	mov	r3, r5
 800698e:	d109      	bne.n	80069a4 <_vfprintf_r+0x1684>
 8006990:	2030      	movs	r0, #48	; 0x30
 8006992:	f803 0c01 	strb.w	r0, [r3, #-1]
 8006996:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006998:	1e5a      	subs	r2, r3, #1
 800699a:	9228      	str	r2, [sp, #160]	; 0xa0
 800699c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80069a0:	4291      	cmp	r1, r2
 80069a2:	d0f6      	beq.n	8006992 <_vfprintf_r+0x1672>
 80069a4:	2a39      	cmp	r2, #57	; 0x39
 80069a6:	bf0b      	itete	eq
 80069a8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80069aa:	3201      	addne	r2, #1
 80069ac:	7a92      	ldrbeq	r2, [r2, #10]
 80069ae:	b2d2      	uxtbne	r2, r2
 80069b0:	f803 2c01 	strb.w	r2, [r3, #-1]
 80069b4:	e682      	b.n	80066bc <_vfprintf_r+0x139c>
 80069b6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80069ba:	f43f ad9f 	beq.w	80064fc <_vfprintf_r+0x11dc>
 80069be:	9a05      	ldr	r2, [sp, #20]
 80069c0:	701a      	strb	r2, [r3, #0]
 80069c2:	4657      	mov	r7, sl
 80069c4:	f7fe bf52 	b.w	800586c <_vfprintf_r+0x54c>
 80069c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80069ca:	9907      	ldr	r1, [sp, #28]
 80069cc:	9803      	ldr	r0, [sp, #12]
 80069ce:	f002 fd87 	bl	80094e0 <__sprint_r>
 80069d2:	2800      	cmp	r0, #0
 80069d4:	f47f aa1c 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 80069d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80069da:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80069de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80069e2:	e571      	b.n	80064c8 <_vfprintf_r+0x11a8>
 80069e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80069e6:	2b00      	cmp	r3, #0
 80069e8:	f340 8164 	ble.w	8006cb4 <_vfprintf_r+0x1994>
 80069ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80069ee:	f1b9 0f00 	cmp.w	r9, #0
 80069f2:	f040 8103 	bne.w	8006bfc <_vfprintf_r+0x18dc>
 80069f6:	07c6      	lsls	r6, r0, #31
 80069f8:	f100 8100 	bmi.w	8006bfc <_vfprintf_r+0x18dc>
 80069fc:	9309      	str	r3, [sp, #36]	; 0x24
 80069fe:	2666      	movs	r6, #102	; 0x66
 8006a00:	0543      	lsls	r3, r0, #21
 8006a02:	f100 8086 	bmi.w	8006b12 <_vfprintf_r+0x17f2>
 8006a06:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006a08:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006a0c:	9304      	str	r3, [sp, #16]
 8006a0e:	e79e      	b.n	800694e <_vfprintf_r+0x162e>
 8006a10:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a12:	9907      	ldr	r1, [sp, #28]
 8006a14:	9803      	ldr	r0, [sp, #12]
 8006a16:	f002 fd63 	bl	80094e0 <__sprint_r>
 8006a1a:	2800      	cmp	r0, #0
 8006a1c:	f47f a9f8 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006a20:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006a22:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8006a24:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006a26:	1ad3      	subs	r3, r2, r3
 8006a28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006a2c:	f7ff bb90 	b.w	8006150 <_vfprintf_r+0xe30>
 8006a30:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006a32:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006a34:	4413      	add	r3, r2
 8006a36:	9309      	str	r3, [sp, #36]	; 0x24
 8006a38:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006a3a:	2b00      	cmp	r3, #0
 8006a3c:	f340 8149 	ble.w	8006cd2 <_vfprintf_r+0x19b2>
 8006a40:	2667      	movs	r6, #103	; 0x67
 8006a42:	e7dd      	b.n	8006a00 <_vfprintf_r+0x16e0>
 8006a44:	2330      	movs	r3, #48	; 0x30
 8006a46:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006a4a:	2358      	movs	r3, #88	; 0x58
 8006a4c:	e595      	b.n	800657a <_vfprintf_r+0x125a>
 8006a4e:	9803      	ldr	r0, [sp, #12]
 8006a50:	aa2a      	add	r2, sp, #168	; 0xa8
 8006a52:	4649      	mov	r1, r9
 8006a54:	f002 fd44 	bl	80094e0 <__sprint_r>
 8006a58:	2800      	cmp	r0, #0
 8006a5a:	f47f a9e0 	bne.w	8005e1e <_vfprintf_r+0xafe>
 8006a5e:	f7fe bf0f 	b.w	8005880 <_vfprintf_r+0x560>
 8006a62:	a824      	add	r0, sp, #144	; 0x90
 8006a64:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006a68:	f002 fc54 	bl	8009314 <frexp>
 8006a6c:	2200      	movs	r2, #0
 8006a6e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8006a72:	ec51 0b10 	vmov	r0, r1, d0
 8006a76:	f7f9 fd7f 	bl	8000578 <__aeabi_dmul>
 8006a7a:	2200      	movs	r2, #0
 8006a7c:	2300      	movs	r3, #0
 8006a7e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8006a82:	f7f9 ffe1 	bl	8000a48 <__aeabi_dcmpeq>
 8006a86:	b108      	cbz	r0, 8006a8c <_vfprintf_r+0x176c>
 8006a88:	2301      	movs	r3, #1
 8006a8a:	9324      	str	r3, [sp, #144]	; 0x90
 8006a8c:	4b02      	ldr	r3, [pc, #8]	; (8006a98 <_vfprintf_r+0x1778>)
 8006a8e:	9309      	str	r3, [sp, #36]	; 0x24
 8006a90:	e5ac      	b.n	80065ec <_vfprintf_r+0x12cc>
 8006a92:	bf00      	nop
 8006a94:	08009e8c 	.word	0x08009e8c
 8006a98:	08009e48 	.word	0x08009e48
 8006a9c:	425d      	negs	r5, r3
 8006a9e:	3310      	adds	r3, #16
 8006aa0:	4bb9      	ldr	r3, [pc, #740]	; (8006d88 <_vfprintf_r+0x1a68>)
 8006aa2:	f280 8097 	bge.w	8006bd4 <_vfprintf_r+0x18b4>
 8006aa6:	4619      	mov	r1, r3
 8006aa8:	2610      	movs	r6, #16
 8006aaa:	4623      	mov	r3, r4
 8006aac:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006ab0:	460c      	mov	r4, r1
 8006ab2:	e005      	b.n	8006ac0 <_vfprintf_r+0x17a0>
 8006ab4:	f10b 0b08 	add.w	fp, fp, #8
 8006ab8:	3d10      	subs	r5, #16
 8006aba:	2d10      	cmp	r5, #16
 8006abc:	f340 8087 	ble.w	8006bce <_vfprintf_r+0x18ae>
 8006ac0:	3201      	adds	r2, #1
 8006ac2:	3310      	adds	r3, #16
 8006ac4:	2a07      	cmp	r2, #7
 8006ac6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8006aca:	e9cb 4600 	strd	r4, r6, [fp]
 8006ace:	ddf1      	ble.n	8006ab4 <_vfprintf_r+0x1794>
 8006ad0:	aa2a      	add	r2, sp, #168	; 0xa8
 8006ad2:	9907      	ldr	r1, [sp, #28]
 8006ad4:	4648      	mov	r0, r9
 8006ad6:	f002 fd03 	bl	80094e0 <__sprint_r>
 8006ada:	2800      	cmp	r0, #0
 8006adc:	f47f a998 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006ae0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8006ae4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006ae8:	e7e6      	b.n	8006ab8 <_vfprintf_r+0x1798>
 8006aea:	f109 0101 	add.w	r1, r9, #1
 8006aee:	9803      	ldr	r0, [sp, #12]
 8006af0:	f7fe f8a0 	bl	8004c34 <_malloc_r>
 8006af4:	4607      	mov	r7, r0
 8006af6:	2800      	cmp	r0, #0
 8006af8:	f000 813b 	beq.w	8006d72 <_vfprintf_r+0x1a52>
 8006afc:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8006b00:	930e      	str	r3, [sp, #56]	; 0x38
 8006b02:	f026 0320 	bic.w	r3, r6, #32
 8006b06:	9304      	str	r3, [sp, #16]
 8006b08:	46a0      	mov	r8, r4
 8006b0a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006b0c:	900a      	str	r0, [sp, #40]	; 0x28
 8006b0e:	e547      	b.n	80065a0 <_vfprintf_r+0x1280>
 8006b10:	2667      	movs	r6, #103	; 0x67
 8006b12:	981a      	ldr	r0, [sp, #104]	; 0x68
 8006b14:	2200      	movs	r2, #0
 8006b16:	920f      	str	r2, [sp, #60]	; 0x3c
 8006b18:	9214      	str	r2, [sp, #80]	; 0x50
 8006b1a:	7803      	ldrb	r3, [r0, #0]
 8006b1c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8006b1e:	2bff      	cmp	r3, #255	; 0xff
 8006b20:	d00c      	beq.n	8006b3c <_vfprintf_r+0x181c>
 8006b22:	4293      	cmp	r3, r2
 8006b24:	da0a      	bge.n	8006b3c <_vfprintf_r+0x181c>
 8006b26:	7841      	ldrb	r1, [r0, #1]
 8006b28:	1ad2      	subs	r2, r2, r3
 8006b2a:	b1a9      	cbz	r1, 8006b58 <_vfprintf_r+0x1838>
 8006b2c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006b2e:	3301      	adds	r3, #1
 8006b30:	9314      	str	r3, [sp, #80]	; 0x50
 8006b32:	460b      	mov	r3, r1
 8006b34:	2bff      	cmp	r3, #255	; 0xff
 8006b36:	f100 0001 	add.w	r0, r0, #1
 8006b3a:	d1f2      	bne.n	8006b22 <_vfprintf_r+0x1802>
 8006b3c:	9211      	str	r2, [sp, #68]	; 0x44
 8006b3e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006b40:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8006b42:	9909      	ldr	r1, [sp, #36]	; 0x24
 8006b44:	901a      	str	r0, [sp, #104]	; 0x68
 8006b46:	4413      	add	r3, r2
 8006b48:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8006b4a:	fb02 1303 	mla	r3, r2, r3, r1
 8006b4e:	9309      	str	r3, [sp, #36]	; 0x24
 8006b50:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006b54:	9304      	str	r3, [sp, #16]
 8006b56:	e485      	b.n	8006464 <_vfprintf_r+0x1144>
 8006b58:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8006b5a:	3101      	adds	r1, #1
 8006b5c:	910f      	str	r1, [sp, #60]	; 0x3c
 8006b5e:	e7de      	b.n	8006b1e <_vfprintf_r+0x17fe>
 8006b60:	aa28      	add	r2, sp, #160	; 0xa0
 8006b62:	ab25      	add	r3, sp, #148	; 0x94
 8006b64:	e9cd 3200 	strd	r3, r2, [sp]
 8006b68:	2103      	movs	r1, #3
 8006b6a:	ab24      	add	r3, sp, #144	; 0x90
 8006b6c:	464a      	mov	r2, r9
 8006b6e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006b72:	9803      	ldr	r0, [sp, #12]
 8006b74:	f000 fad0 	bl	8007118 <_dtoa_r>
 8006b78:	464d      	mov	r5, r9
 8006b7a:	4607      	mov	r7, r0
 8006b7c:	eb00 0409 	add.w	r4, r0, r9
 8006b80:	783b      	ldrb	r3, [r7, #0]
 8006b82:	2b30      	cmp	r3, #48	; 0x30
 8006b84:	f000 80be 	beq.w	8006d04 <_vfprintf_r+0x19e4>
 8006b88:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8006b8a:	442c      	add	r4, r5
 8006b8c:	2200      	movs	r2, #0
 8006b8e:	2300      	movs	r3, #0
 8006b90:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8006b94:	f7f9 ff58 	bl	8000a48 <__aeabi_dcmpeq>
 8006b98:	b108      	cbz	r0, 8006b9e <_vfprintf_r+0x187e>
 8006b9a:	4623      	mov	r3, r4
 8006b9c:	e413      	b.n	80063c6 <_vfprintf_r+0x10a6>
 8006b9e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006ba0:	42a3      	cmp	r3, r4
 8006ba2:	f4bf ac10 	bcs.w	80063c6 <_vfprintf_r+0x10a6>
 8006ba6:	2130      	movs	r1, #48	; 0x30
 8006ba8:	1c5a      	adds	r2, r3, #1
 8006baa:	9228      	str	r2, [sp, #160]	; 0xa0
 8006bac:	7019      	strb	r1, [r3, #0]
 8006bae:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006bb0:	429c      	cmp	r4, r3
 8006bb2:	d8f9      	bhi.n	8006ba8 <_vfprintf_r+0x1888>
 8006bb4:	e407      	b.n	80063c6 <_vfprintf_r+0x10a6>
 8006bb6:	197c      	adds	r4, r7, r5
 8006bb8:	e7e8      	b.n	8006b8c <_vfprintf_r+0x186c>
 8006bba:	f1b9 0f00 	cmp.w	r9, #0
 8006bbe:	f000 8092 	beq.w	8006ce6 <_vfprintf_r+0x19c6>
 8006bc2:	900a      	str	r0, [sp, #40]	; 0x28
 8006bc4:	e4ec      	b.n	80065a0 <_vfprintf_r+0x1280>
 8006bc6:	900a      	str	r0, [sp, #40]	; 0x28
 8006bc8:	f04f 0906 	mov.w	r9, #6
 8006bcc:	e4e8      	b.n	80065a0 <_vfprintf_r+0x1280>
 8006bce:	4621      	mov	r1, r4
 8006bd0:	461c      	mov	r4, r3
 8006bd2:	460b      	mov	r3, r1
 8006bd4:	3201      	adds	r2, #1
 8006bd6:	442c      	add	r4, r5
 8006bd8:	2a07      	cmp	r2, #7
 8006bda:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006bde:	e9cb 3500 	strd	r3, r5, [fp]
 8006be2:	f300 80a9 	bgt.w	8006d38 <_vfprintf_r+0x1a18>
 8006be6:	f10b 0b08 	add.w	fp, fp, #8
 8006bea:	e470      	b.n	80064ce <_vfprintf_r+0x11ae>
 8006bec:	469a      	mov	sl, r3
 8006bee:	f7ff bb37 	b.w	8006260 <_vfprintf_r+0xf40>
 8006bf2:	2301      	movs	r3, #1
 8006bf4:	9324      	str	r3, [sp, #144]	; 0x90
 8006bf6:	4b65      	ldr	r3, [pc, #404]	; (8006d8c <_vfprintf_r+0x1a6c>)
 8006bf8:	9309      	str	r3, [sp, #36]	; 0x24
 8006bfa:	e4f7      	b.n	80065ec <_vfprintf_r+0x12cc>
 8006bfc:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8006bfe:	4413      	add	r3, r2
 8006c00:	444b      	add	r3, r9
 8006c02:	9309      	str	r3, [sp, #36]	; 0x24
 8006c04:	2666      	movs	r6, #102	; 0x66
 8006c06:	e6fb      	b.n	8006a00 <_vfprintf_r+0x16e0>
 8006c08:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006c0a:	9309      	str	r3, [sp, #36]	; 0x24
 8006c0c:	e694      	b.n	8006938 <_vfprintf_r+0x1618>
 8006c0e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8006c12:	4664      	mov	r4, ip
 8006c14:	4d5e      	ldr	r5, [pc, #376]	; (8006d90 <_vfprintf_r+0x1a70>)
 8006c16:	e000      	b.n	8006c1a <_vfprintf_r+0x18fa>
 8006c18:	4614      	mov	r4, r2
 8006c1a:	fba5 1203 	umull	r1, r2, r5, r3
 8006c1e:	08d2      	lsrs	r2, r2, #3
 8006c20:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8006c24:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8006c28:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8006c2c:	4613      	mov	r3, r2
 8006c2e:	2b09      	cmp	r3, #9
 8006c30:	f804 1c01 	strb.w	r1, [r4, #-1]
 8006c34:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006c38:	dcee      	bgt.n	8006c18 <_vfprintf_r+0x18f8>
 8006c3a:	3330      	adds	r3, #48	; 0x30
 8006c3c:	3c02      	subs	r4, #2
 8006c3e:	b2db      	uxtb	r3, r3
 8006c40:	45a4      	cmp	ip, r4
 8006c42:	f802 3c01 	strb.w	r3, [r2, #-1]
 8006c46:	f240 8090 	bls.w	8006d6a <_vfprintf_r+0x1a4a>
 8006c4a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8006c4e:	4611      	mov	r1, r2
 8006c50:	e001      	b.n	8006c56 <_vfprintf_r+0x1936>
 8006c52:	f811 3b01 	ldrb.w	r3, [r1], #1
 8006c56:	f804 3b01 	strb.w	r3, [r4], #1
 8006c5a:	458c      	cmp	ip, r1
 8006c5c:	d1f9      	bne.n	8006c52 <_vfprintf_r+0x1932>
 8006c5e:	ab2a      	add	r3, sp, #168	; 0xa8
 8006c60:	1a9b      	subs	r3, r3, r2
 8006c62:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8006c66:	4413      	add	r3, r2
 8006c68:	f7ff bbe3 	b.w	8006432 <_vfprintf_r+0x1112>
 8006c6c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006c6e:	4f49      	ldr	r7, [pc, #292]	; (8006d94 <_vfprintf_r+0x1a74>)
 8006c70:	2b00      	cmp	r3, #0
 8006c72:	bfb6      	itet	lt
 8006c74:	222d      	movlt	r2, #45	; 0x2d
 8006c76:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8006c7a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8006c7e:	4b46      	ldr	r3, [pc, #280]	; (8006d98 <_vfprintf_r+0x1a78>)
 8006c80:	f7fe bf02 	b.w	8005a88 <_vfprintf_r+0x768>
 8006c84:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006c88:	f7ff b8c9 	b.w	8005e1e <_vfprintf_r+0xafe>
 8006c8c:	aa28      	add	r2, sp, #160	; 0xa0
 8006c8e:	ab25      	add	r3, sp, #148	; 0x94
 8006c90:	e9cd 3200 	strd	r3, r2, [sp]
 8006c94:	2103      	movs	r1, #3
 8006c96:	ab24      	add	r3, sp, #144	; 0x90
 8006c98:	464a      	mov	r2, r9
 8006c9a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006c9e:	9803      	ldr	r0, [sp, #12]
 8006ca0:	f000 fa3a 	bl	8007118 <_dtoa_r>
 8006ca4:	464d      	mov	r5, r9
 8006ca6:	4607      	mov	r7, r0
 8006ca8:	2e46      	cmp	r6, #70	; 0x46
 8006caa:	eb07 0405 	add.w	r4, r7, r5
 8006cae:	f43f af67 	beq.w	8006b80 <_vfprintf_r+0x1860>
 8006cb2:	e76b      	b.n	8006b8c <_vfprintf_r+0x186c>
 8006cb4:	f1b9 0f00 	cmp.w	r9, #0
 8006cb8:	d131      	bne.n	8006d1e <_vfprintf_r+0x19fe>
 8006cba:	07c5      	lsls	r5, r0, #31
 8006cbc:	d42f      	bmi.n	8006d1e <_vfprintf_r+0x19fe>
 8006cbe:	2301      	movs	r3, #1
 8006cc0:	9304      	str	r3, [sp, #16]
 8006cc2:	9309      	str	r3, [sp, #36]	; 0x24
 8006cc4:	2666      	movs	r6, #102	; 0x66
 8006cc6:	e642      	b.n	800694e <_vfprintf_r+0x162e>
 8006cc8:	07c3      	lsls	r3, r0, #31
 8006cca:	f57f abbf 	bpl.w	800644c <_vfprintf_r+0x112c>
 8006cce:	f7ff bbb9 	b.w	8006444 <_vfprintf_r+0x1124>
 8006cd2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006cd4:	f1c3 0301 	rsb	r3, r3, #1
 8006cd8:	441a      	add	r2, r3
 8006cda:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8006cde:	9209      	str	r2, [sp, #36]	; 0x24
 8006ce0:	9304      	str	r3, [sp, #16]
 8006ce2:	2667      	movs	r6, #103	; 0x67
 8006ce4:	e633      	b.n	800694e <_vfprintf_r+0x162e>
 8006ce6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006cea:	f04f 0901 	mov.w	r9, #1
 8006cee:	e457      	b.n	80065a0 <_vfprintf_r+0x1280>
 8006cf0:	465a      	mov	r2, fp
 8006cf2:	e511      	b.n	8006718 <_vfprintf_r+0x13f8>
 8006cf4:	2e47      	cmp	r6, #71	; 0x47
 8006cf6:	f47f af5e 	bne.w	8006bb6 <_vfprintf_r+0x1896>
 8006cfa:	f018 0f01 	tst.w	r8, #1
 8006cfe:	f43f ab61 	beq.w	80063c4 <_vfprintf_r+0x10a4>
 8006d02:	e7d1      	b.n	8006ca8 <_vfprintf_r+0x1988>
 8006d04:	2200      	movs	r2, #0
 8006d06:	2300      	movs	r3, #0
 8006d08:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8006d0c:	f7f9 fe9c 	bl	8000a48 <__aeabi_dcmpeq>
 8006d10:	2800      	cmp	r0, #0
 8006d12:	f47f af39 	bne.w	8006b88 <_vfprintf_r+0x1868>
 8006d16:	f1c5 0501 	rsb	r5, r5, #1
 8006d1a:	9524      	str	r5, [sp, #144]	; 0x90
 8006d1c:	e735      	b.n	8006b8a <_vfprintf_r+0x186a>
 8006d1e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006d20:	3301      	adds	r3, #1
 8006d22:	444b      	add	r3, r9
 8006d24:	9309      	str	r3, [sp, #36]	; 0x24
 8006d26:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006d2a:	9304      	str	r3, [sp, #16]
 8006d2c:	2666      	movs	r6, #102	; 0x66
 8006d2e:	e60e      	b.n	800694e <_vfprintf_r+0x162e>
 8006d30:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8006d34:	f7ff bb7a 	b.w	800642c <_vfprintf_r+0x110c>
 8006d38:	aa2a      	add	r2, sp, #168	; 0xa8
 8006d3a:	9907      	ldr	r1, [sp, #28]
 8006d3c:	9803      	ldr	r0, [sp, #12]
 8006d3e:	f002 fbcf 	bl	80094e0 <__sprint_r>
 8006d42:	2800      	cmp	r0, #0
 8006d44:	f47f a864 	bne.w	8005e10 <_vfprintf_r+0xaf0>
 8006d48:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006d4c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006d50:	f7ff bbbd 	b.w	80064ce <_vfprintf_r+0x11ae>
 8006d54:	9908      	ldr	r1, [sp, #32]
 8006d56:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8006d5a:	680b      	ldr	r3, [r1, #0]
 8006d5c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8006d60:	1d0b      	adds	r3, r1, #4
 8006d62:	4692      	mov	sl, r2
 8006d64:	9308      	str	r3, [sp, #32]
 8006d66:	f7fe bb59 	b.w	800541c <_vfprintf_r+0xfc>
 8006d6a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8006d6e:	f7ff bb60 	b.w	8006432 <_vfprintf_r+0x1112>
 8006d72:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006d76:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006d7a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d7e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8006d82:	f7ff b84c 	b.w	8005e1e <_vfprintf_r+0xafe>
 8006d86:	bf00      	nop
 8006d88:	08009e8c 	.word	0x08009e8c
 8006d8c:	08009e5c 	.word	0x08009e5c
 8006d90:	cccccccd 	.word	0xcccccccd
 8006d94:	08009e44 	.word	0x08009e44
 8006d98:	08009e40 	.word	0x08009e40

08006d9c <__sbprintf>:
 8006d9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006da0:	460c      	mov	r4, r1
 8006da2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8006da6:	8989      	ldrh	r1, [r1, #12]
 8006da8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006daa:	89e5      	ldrh	r5, [r4, #14]
 8006dac:	9619      	str	r6, [sp, #100]	; 0x64
 8006dae:	f021 0102 	bic.w	r1, r1, #2
 8006db2:	4606      	mov	r6, r0
 8006db4:	69e0      	ldr	r0, [r4, #28]
 8006db6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8006dba:	4617      	mov	r7, r2
 8006dbc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8006dc0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8006dc2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8006dc6:	4698      	mov	r8, r3
 8006dc8:	ad1a      	add	r5, sp, #104	; 0x68
 8006dca:	2300      	movs	r3, #0
 8006dcc:	9007      	str	r0, [sp, #28]
 8006dce:	a816      	add	r0, sp, #88	; 0x58
 8006dd0:	9209      	str	r2, [sp, #36]	; 0x24
 8006dd2:	9306      	str	r3, [sp, #24]
 8006dd4:	9500      	str	r5, [sp, #0]
 8006dd6:	9504      	str	r5, [sp, #16]
 8006dd8:	9102      	str	r1, [sp, #8]
 8006dda:	9105      	str	r1, [sp, #20]
 8006ddc:	f001 fcfe 	bl	80087dc <__retarget_lock_init_recursive>
 8006de0:	4643      	mov	r3, r8
 8006de2:	463a      	mov	r2, r7
 8006de4:	4669      	mov	r1, sp
 8006de6:	4630      	mov	r0, r6
 8006de8:	f7fe fa9a 	bl	8005320 <_vfprintf_r>
 8006dec:	1e05      	subs	r5, r0, #0
 8006dee:	db07      	blt.n	8006e00 <__sbprintf+0x64>
 8006df0:	4630      	mov	r0, r6
 8006df2:	4669      	mov	r1, sp
 8006df4:	f001 f94a 	bl	800808c <_fflush_r>
 8006df8:	2800      	cmp	r0, #0
 8006dfa:	bf18      	it	ne
 8006dfc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8006e00:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8006e04:	065b      	lsls	r3, r3, #25
 8006e06:	d503      	bpl.n	8006e10 <__sbprintf+0x74>
 8006e08:	89a3      	ldrh	r3, [r4, #12]
 8006e0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e0e:	81a3      	strh	r3, [r4, #12]
 8006e10:	9816      	ldr	r0, [sp, #88]	; 0x58
 8006e12:	f001 fce5 	bl	80087e0 <__retarget_lock_close_recursive>
 8006e16:	4628      	mov	r0, r5
 8006e18:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8006e1c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006e20 <__swsetup_r>:
 8006e20:	b538      	push	{r3, r4, r5, lr}
 8006e22:	4b31      	ldr	r3, [pc, #196]	; (8006ee8 <__swsetup_r+0xc8>)
 8006e24:	681b      	ldr	r3, [r3, #0]
 8006e26:	4605      	mov	r5, r0
 8006e28:	460c      	mov	r4, r1
 8006e2a:	b113      	cbz	r3, 8006e32 <__swsetup_r+0x12>
 8006e2c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006e2e:	2a00      	cmp	r2, #0
 8006e30:	d03a      	beq.n	8006ea8 <__swsetup_r+0x88>
 8006e32:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e36:	b293      	uxth	r3, r2
 8006e38:	0718      	lsls	r0, r3, #28
 8006e3a:	d50c      	bpl.n	8006e56 <__swsetup_r+0x36>
 8006e3c:	6920      	ldr	r0, [r4, #16]
 8006e3e:	b1a8      	cbz	r0, 8006e6c <__swsetup_r+0x4c>
 8006e40:	f013 0201 	ands.w	r2, r3, #1
 8006e44:	d020      	beq.n	8006e88 <__swsetup_r+0x68>
 8006e46:	6963      	ldr	r3, [r4, #20]
 8006e48:	2200      	movs	r2, #0
 8006e4a:	425b      	negs	r3, r3
 8006e4c:	61a3      	str	r3, [r4, #24]
 8006e4e:	60a2      	str	r2, [r4, #8]
 8006e50:	b300      	cbz	r0, 8006e94 <__swsetup_r+0x74>
 8006e52:	2000      	movs	r0, #0
 8006e54:	bd38      	pop	{r3, r4, r5, pc}
 8006e56:	06d9      	lsls	r1, r3, #27
 8006e58:	d53e      	bpl.n	8006ed8 <__swsetup_r+0xb8>
 8006e5a:	0758      	lsls	r0, r3, #29
 8006e5c:	d428      	bmi.n	8006eb0 <__swsetup_r+0x90>
 8006e5e:	6920      	ldr	r0, [r4, #16]
 8006e60:	f042 0308 	orr.w	r3, r2, #8
 8006e64:	81a3      	strh	r3, [r4, #12]
 8006e66:	b29b      	uxth	r3, r3
 8006e68:	2800      	cmp	r0, #0
 8006e6a:	d1e9      	bne.n	8006e40 <__swsetup_r+0x20>
 8006e6c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8006e70:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8006e74:	d0e4      	beq.n	8006e40 <__swsetup_r+0x20>
 8006e76:	4628      	mov	r0, r5
 8006e78:	4621      	mov	r1, r4
 8006e7a:	f001 fce5 	bl	8008848 <__smakebuf_r>
 8006e7e:	89a3      	ldrh	r3, [r4, #12]
 8006e80:	6920      	ldr	r0, [r4, #16]
 8006e82:	f013 0201 	ands.w	r2, r3, #1
 8006e86:	d1de      	bne.n	8006e46 <__swsetup_r+0x26>
 8006e88:	0799      	lsls	r1, r3, #30
 8006e8a:	bf58      	it	pl
 8006e8c:	6962      	ldrpl	r2, [r4, #20]
 8006e8e:	60a2      	str	r2, [r4, #8]
 8006e90:	2800      	cmp	r0, #0
 8006e92:	d1de      	bne.n	8006e52 <__swsetup_r+0x32>
 8006e94:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e98:	061a      	lsls	r2, r3, #24
 8006e9a:	d5db      	bpl.n	8006e54 <__swsetup_r+0x34>
 8006e9c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006ea0:	81a3      	strh	r3, [r4, #12]
 8006ea2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ea6:	bd38      	pop	{r3, r4, r5, pc}
 8006ea8:	4618      	mov	r0, r3
 8006eaa:	f001 f94b 	bl	8008144 <__sinit>
 8006eae:	e7c0      	b.n	8006e32 <__swsetup_r+0x12>
 8006eb0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006eb2:	b151      	cbz	r1, 8006eca <__swsetup_r+0xaa>
 8006eb4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006eb8:	4299      	cmp	r1, r3
 8006eba:	d004      	beq.n	8006ec6 <__swsetup_r+0xa6>
 8006ebc:	4628      	mov	r0, r5
 8006ebe:	f001 f9e3 	bl	8008288 <_free_r>
 8006ec2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ec6:	2300      	movs	r3, #0
 8006ec8:	6323      	str	r3, [r4, #48]	; 0x30
 8006eca:	2300      	movs	r3, #0
 8006ecc:	6920      	ldr	r0, [r4, #16]
 8006ece:	6063      	str	r3, [r4, #4]
 8006ed0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8006ed4:	6020      	str	r0, [r4, #0]
 8006ed6:	e7c3      	b.n	8006e60 <__swsetup_r+0x40>
 8006ed8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006edc:	2309      	movs	r3, #9
 8006ede:	602b      	str	r3, [r5, #0]
 8006ee0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ee4:	81a2      	strh	r2, [r4, #12]
 8006ee6:	bd38      	pop	{r3, r4, r5, pc}
 8006ee8:	20000030 	.word	0x20000030

08006eec <register_fini>:
 8006eec:	4b02      	ldr	r3, [pc, #8]	; (8006ef8 <register_fini+0xc>)
 8006eee:	b113      	cbz	r3, 8006ef6 <register_fini+0xa>
 8006ef0:	4802      	ldr	r0, [pc, #8]	; (8006efc <register_fini+0x10>)
 8006ef2:	f000 b879 	b.w	8006fe8 <atexit>
 8006ef6:	4770      	bx	lr
 8006ef8:	00000000 	.word	0x00000000
 8006efc:	080081b5 	.word	0x080081b5

08006f00 <__call_exitprocs>:
 8006f00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006f04:	4b35      	ldr	r3, [pc, #212]	; (8006fdc <__call_exitprocs+0xdc>)
 8006f06:	b085      	sub	sp, #20
 8006f08:	460f      	mov	r7, r1
 8006f0a:	9003      	str	r0, [sp, #12]
 8006f0c:	6818      	ldr	r0, [r3, #0]
 8006f0e:	f001 fc69 	bl	80087e4 <__retarget_lock_acquire_recursive>
 8006f12:	4b33      	ldr	r3, [pc, #204]	; (8006fe0 <__call_exitprocs+0xe0>)
 8006f14:	681b      	ldr	r3, [r3, #0]
 8006f16:	9301      	str	r3, [sp, #4]
 8006f18:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 8006f1c:	9302      	str	r3, [sp, #8]
 8006f1e:	46b9      	mov	r9, r7
 8006f20:	9b01      	ldr	r3, [sp, #4]
 8006f22:	f8d3 6148 	ldr.w	r6, [r3, #328]	; 0x148
 8006f26:	b33e      	cbz	r6, 8006f78 <__call_exitprocs+0x78>
 8006f28:	f8dd a008 	ldr.w	sl, [sp, #8]
 8006f2c:	f04f 0801 	mov.w	r8, #1
 8006f30:	6874      	ldr	r4, [r6, #4]
 8006f32:	1e65      	subs	r5, r4, #1
 8006f34:	d40f      	bmi.n	8006f56 <__call_exitprocs+0x56>
 8006f36:	3401      	adds	r4, #1
 8006f38:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8006f3c:	2700      	movs	r7, #0
 8006f3e:	f1b9 0f00 	cmp.w	r9, #0
 8006f42:	d020      	beq.n	8006f86 <__call_exitprocs+0x86>
 8006f44:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 8006f48:	454b      	cmp	r3, r9
 8006f4a:	d01c      	beq.n	8006f86 <__call_exitprocs+0x86>
 8006f4c:	3d01      	subs	r5, #1
 8006f4e:	1c6b      	adds	r3, r5, #1
 8006f50:	f1a4 0404 	sub.w	r4, r4, #4
 8006f54:	d1f3      	bne.n	8006f3e <__call_exitprocs+0x3e>
 8006f56:	4b23      	ldr	r3, [pc, #140]	; (8006fe4 <__call_exitprocs+0xe4>)
 8006f58:	b173      	cbz	r3, 8006f78 <__call_exitprocs+0x78>
 8006f5a:	e9d6 3200 	ldrd	r3, r2, [r6]
 8006f5e:	2a00      	cmp	r2, #0
 8006f60:	d134      	bne.n	8006fcc <__call_exitprocs+0xcc>
 8006f62:	2b00      	cmp	r3, #0
 8006f64:	d032      	beq.n	8006fcc <__call_exitprocs+0xcc>
 8006f66:	4630      	mov	r0, r6
 8006f68:	f8ca 3000 	str.w	r3, [sl]
 8006f6c:	f7fd fe5a 	bl	8004c24 <free>
 8006f70:	f8da 6000 	ldr.w	r6, [sl]
 8006f74:	2e00      	cmp	r6, #0
 8006f76:	d1db      	bne.n	8006f30 <__call_exitprocs+0x30>
 8006f78:	4b18      	ldr	r3, [pc, #96]	; (8006fdc <__call_exitprocs+0xdc>)
 8006f7a:	6818      	ldr	r0, [r3, #0]
 8006f7c:	b005      	add	sp, #20
 8006f7e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006f82:	f001 bc31 	b.w	80087e8 <__retarget_lock_release_recursive>
 8006f86:	6873      	ldr	r3, [r6, #4]
 8006f88:	6822      	ldr	r2, [r4, #0]
 8006f8a:	3b01      	subs	r3, #1
 8006f8c:	42ab      	cmp	r3, r5
 8006f8e:	bf0c      	ite	eq
 8006f90:	6075      	streq	r5, [r6, #4]
 8006f92:	6027      	strne	r7, [r4, #0]
 8006f94:	2a00      	cmp	r2, #0
 8006f96:	d0d9      	beq.n	8006f4c <__call_exitprocs+0x4c>
 8006f98:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
 8006f9c:	f8d6 b004 	ldr.w	fp, [r6, #4]
 8006fa0:	fa08 f305 	lsl.w	r3, r8, r5
 8006fa4:	420b      	tst	r3, r1
 8006fa6:	d108      	bne.n	8006fba <__call_exitprocs+0xba>
 8006fa8:	4790      	blx	r2
 8006faa:	6873      	ldr	r3, [r6, #4]
 8006fac:	455b      	cmp	r3, fp
 8006fae:	d1b7      	bne.n	8006f20 <__call_exitprocs+0x20>
 8006fb0:	f8da 3000 	ldr.w	r3, [sl]
 8006fb4:	42b3      	cmp	r3, r6
 8006fb6:	d0c9      	beq.n	8006f4c <__call_exitprocs+0x4c>
 8006fb8:	e7b2      	b.n	8006f20 <__call_exitprocs+0x20>
 8006fba:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 8006fbe:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 8006fc2:	4203      	tst	r3, r0
 8006fc4:	d107      	bne.n	8006fd6 <__call_exitprocs+0xd6>
 8006fc6:	9803      	ldr	r0, [sp, #12]
 8006fc8:	4790      	blx	r2
 8006fca:	e7ee      	b.n	8006faa <__call_exitprocs+0xaa>
 8006fcc:	46b2      	mov	sl, r6
 8006fce:	461e      	mov	r6, r3
 8006fd0:	2e00      	cmp	r6, #0
 8006fd2:	d1ad      	bne.n	8006f30 <__call_exitprocs+0x30>
 8006fd4:	e7d0      	b.n	8006f78 <__call_exitprocs+0x78>
 8006fd6:	4608      	mov	r0, r1
 8006fd8:	4790      	blx	r2
 8006fda:	e7e6      	b.n	8006faa <__call_exitprocs+0xaa>
 8006fdc:	20000870 	.word	0x20000870
 8006fe0:	08009e30 	.word	0x08009e30
 8006fe4:	08004c25 	.word	0x08004c25

08006fe8 <atexit>:
 8006fe8:	2300      	movs	r3, #0
 8006fea:	4601      	mov	r1, r0
 8006fec:	461a      	mov	r2, r3
 8006fee:	4618      	mov	r0, r3
 8006ff0:	f002 ba96 	b.w	8009520 <__register_exitproc>

08006ff4 <quorem>:
 8006ff4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ff8:	6903      	ldr	r3, [r0, #16]
 8006ffa:	690f      	ldr	r7, [r1, #16]
 8006ffc:	42bb      	cmp	r3, r7
 8006ffe:	b083      	sub	sp, #12
 8007000:	f2c0 8086 	blt.w	8007110 <quorem+0x11c>
 8007004:	3f01      	subs	r7, #1
 8007006:	f101 0914 	add.w	r9, r1, #20
 800700a:	f100 0a14 	add.w	sl, r0, #20
 800700e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8007012:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8007016:	00bc      	lsls	r4, r7, #2
 8007018:	3201      	adds	r2, #1
 800701a:	fbb3 f8f2 	udiv	r8, r3, r2
 800701e:	eb0a 0304 	add.w	r3, sl, r4
 8007022:	9400      	str	r4, [sp, #0]
 8007024:	eb09 0b04 	add.w	fp, r9, r4
 8007028:	9301      	str	r3, [sp, #4]
 800702a:	f1b8 0f00 	cmp.w	r8, #0
 800702e:	d038      	beq.n	80070a2 <quorem+0xae>
 8007030:	2500      	movs	r5, #0
 8007032:	462e      	mov	r6, r5
 8007034:	46ce      	mov	lr, r9
 8007036:	46d4      	mov	ip, sl
 8007038:	f85e 4b04 	ldr.w	r4, [lr], #4
 800703c:	f8dc 3000 	ldr.w	r3, [ip]
 8007040:	b2a2      	uxth	r2, r4
 8007042:	fb08 5502 	mla	r5, r8, r2, r5
 8007046:	0c22      	lsrs	r2, r4, #16
 8007048:	0c2c      	lsrs	r4, r5, #16
 800704a:	fb08 4202 	mla	r2, r8, r2, r4
 800704e:	b2ad      	uxth	r5, r5
 8007050:	1b75      	subs	r5, r6, r5
 8007052:	b296      	uxth	r6, r2
 8007054:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8007058:	fa15 f383 	uxtah	r3, r5, r3
 800705c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8007060:	b29b      	uxth	r3, r3
 8007062:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8007066:	45f3      	cmp	fp, lr
 8007068:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800706c:	f84c 3b04 	str.w	r3, [ip], #4
 8007070:	ea4f 4626 	mov.w	r6, r6, asr #16
 8007074:	d2e0      	bcs.n	8007038 <quorem+0x44>
 8007076:	9b00      	ldr	r3, [sp, #0]
 8007078:	f85a 3003 	ldr.w	r3, [sl, r3]
 800707c:	b98b      	cbnz	r3, 80070a2 <quorem+0xae>
 800707e:	9a01      	ldr	r2, [sp, #4]
 8007080:	1f13      	subs	r3, r2, #4
 8007082:	459a      	cmp	sl, r3
 8007084:	d20c      	bcs.n	80070a0 <quorem+0xac>
 8007086:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800708a:	b94b      	cbnz	r3, 80070a0 <quorem+0xac>
 800708c:	f1a2 0308 	sub.w	r3, r2, #8
 8007090:	e002      	b.n	8007098 <quorem+0xa4>
 8007092:	681a      	ldr	r2, [r3, #0]
 8007094:	3b04      	subs	r3, #4
 8007096:	b91a      	cbnz	r2, 80070a0 <quorem+0xac>
 8007098:	459a      	cmp	sl, r3
 800709a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800709e:	d3f8      	bcc.n	8007092 <quorem+0x9e>
 80070a0:	6107      	str	r7, [r0, #16]
 80070a2:	4604      	mov	r4, r0
 80070a4:	f001 fe94 	bl	8008dd0 <__mcmp>
 80070a8:	2800      	cmp	r0, #0
 80070aa:	db2d      	blt.n	8007108 <quorem+0x114>
 80070ac:	f108 0801 	add.w	r8, r8, #1
 80070b0:	4655      	mov	r5, sl
 80070b2:	2300      	movs	r3, #0
 80070b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80070b8:	6828      	ldr	r0, [r5, #0]
 80070ba:	b28a      	uxth	r2, r1
 80070bc:	1a9a      	subs	r2, r3, r2
 80070be:	0c0b      	lsrs	r3, r1, #16
 80070c0:	fa12 f280 	uxtah	r2, r2, r0
 80070c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80070c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80070cc:	b292      	uxth	r2, r2
 80070ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80070d2:	45cb      	cmp	fp, r9
 80070d4:	f845 2b04 	str.w	r2, [r5], #4
 80070d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80070dc:	d2ea      	bcs.n	80070b4 <quorem+0xc0>
 80070de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80070e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80070e6:	b97a      	cbnz	r2, 8007108 <quorem+0x114>
 80070e8:	1f1a      	subs	r2, r3, #4
 80070ea:	4592      	cmp	sl, r2
 80070ec:	d20b      	bcs.n	8007106 <quorem+0x112>
 80070ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80070f2:	b942      	cbnz	r2, 8007106 <quorem+0x112>
 80070f4:	3b08      	subs	r3, #8
 80070f6:	e002      	b.n	80070fe <quorem+0x10a>
 80070f8:	681a      	ldr	r2, [r3, #0]
 80070fa:	3b04      	subs	r3, #4
 80070fc:	b91a      	cbnz	r2, 8007106 <quorem+0x112>
 80070fe:	459a      	cmp	sl, r3
 8007100:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8007104:	d3f8      	bcc.n	80070f8 <quorem+0x104>
 8007106:	6127      	str	r7, [r4, #16]
 8007108:	4640      	mov	r0, r8
 800710a:	b003      	add	sp, #12
 800710c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007110:	2000      	movs	r0, #0
 8007112:	b003      	add	sp, #12
 8007114:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08007118 <_dtoa_r>:
 8007118:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800711c:	ec55 4b10 	vmov	r4, r5, d0
 8007120:	b09b      	sub	sp, #108	; 0x6c
 8007122:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8007124:	9102      	str	r1, [sp, #8]
 8007126:	4681      	mov	r9, r0
 8007128:	9207      	str	r2, [sp, #28]
 800712a:	9305      	str	r3, [sp, #20]
 800712c:	e9cd 4500 	strd	r4, r5, [sp]
 8007130:	b156      	cbz	r6, 8007148 <_dtoa_r+0x30>
 8007132:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8007134:	6072      	str	r2, [r6, #4]
 8007136:	2301      	movs	r3, #1
 8007138:	4093      	lsls	r3, r2
 800713a:	60b3      	str	r3, [r6, #8]
 800713c:	4631      	mov	r1, r6
 800713e:	f001 fc57 	bl	80089f0 <_Bfree>
 8007142:	2300      	movs	r3, #0
 8007144:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8007148:	f1b5 0800 	subs.w	r8, r5, #0
 800714c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800714e:	bfb4      	ite	lt
 8007150:	2301      	movlt	r3, #1
 8007152:	2300      	movge	r3, #0
 8007154:	6013      	str	r3, [r2, #0]
 8007156:	4b76      	ldr	r3, [pc, #472]	; (8007330 <_dtoa_r+0x218>)
 8007158:	bfbc      	itt	lt
 800715a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800715e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8007162:	ea33 0308 	bics.w	r3, r3, r8
 8007166:	f000 80a6 	beq.w	80072b6 <_dtoa_r+0x19e>
 800716a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800716e:	2200      	movs	r2, #0
 8007170:	2300      	movs	r3, #0
 8007172:	4630      	mov	r0, r6
 8007174:	4639      	mov	r1, r7
 8007176:	f7f9 fc67 	bl	8000a48 <__aeabi_dcmpeq>
 800717a:	4605      	mov	r5, r0
 800717c:	b178      	cbz	r0, 800719e <_dtoa_r+0x86>
 800717e:	9a05      	ldr	r2, [sp, #20]
 8007180:	2301      	movs	r3, #1
 8007182:	6013      	str	r3, [r2, #0]
 8007184:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8007186:	2b00      	cmp	r3, #0
 8007188:	f000 80c0 	beq.w	800730c <_dtoa_r+0x1f4>
 800718c:	4b69      	ldr	r3, [pc, #420]	; (8007334 <_dtoa_r+0x21c>)
 800718e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8007190:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8007194:	6013      	str	r3, [r2, #0]
 8007196:	4658      	mov	r0, fp
 8007198:	b01b      	add	sp, #108	; 0x6c
 800719a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800719e:	aa18      	add	r2, sp, #96	; 0x60
 80071a0:	a919      	add	r1, sp, #100	; 0x64
 80071a2:	ec47 6b10 	vmov	d0, r6, r7
 80071a6:	4648      	mov	r0, r9
 80071a8:	f001 fea4 	bl	8008ef4 <__d2b>
 80071ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80071b0:	4682      	mov	sl, r0
 80071b2:	f040 80a0 	bne.w	80072f6 <_dtoa_r+0x1de>
 80071b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80071ba:	442c      	add	r4, r5
 80071bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80071c0:	2b20      	cmp	r3, #32
 80071c2:	f340 842c 	ble.w	8007a1e <_dtoa_r+0x906>
 80071c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80071ca:	fa08 f803 	lsl.w	r8, r8, r3
 80071ce:	9b00      	ldr	r3, [sp, #0]
 80071d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80071d4:	fa23 f000 	lsr.w	r0, r3, r0
 80071d8:	ea48 0000 	orr.w	r0, r8, r0
 80071dc:	f7f9 f952 	bl	8000484 <__aeabi_ui2d>
 80071e0:	2301      	movs	r3, #1
 80071e2:	4606      	mov	r6, r0
 80071e4:	3c01      	subs	r4, #1
 80071e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80071ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80071ec:	4630      	mov	r0, r6
 80071ee:	4639      	mov	r1, r7
 80071f0:	2200      	movs	r2, #0
 80071f2:	4b51      	ldr	r3, [pc, #324]	; (8007338 <_dtoa_r+0x220>)
 80071f4:	f7f9 f808 	bl	8000208 <__aeabi_dsub>
 80071f8:	a347      	add	r3, pc, #284	; (adr r3, 8007318 <_dtoa_r+0x200>)
 80071fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80071fe:	f7f9 f9bb 	bl	8000578 <__aeabi_dmul>
 8007202:	a347      	add	r3, pc, #284	; (adr r3, 8007320 <_dtoa_r+0x208>)
 8007204:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007208:	f7f9 f800 	bl	800020c <__adddf3>
 800720c:	4606      	mov	r6, r0
 800720e:	4620      	mov	r0, r4
 8007210:	460f      	mov	r7, r1
 8007212:	f7f9 f947 	bl	80004a4 <__aeabi_i2d>
 8007216:	a344      	add	r3, pc, #272	; (adr r3, 8007328 <_dtoa_r+0x210>)
 8007218:	e9d3 2300 	ldrd	r2, r3, [r3]
 800721c:	f7f9 f9ac 	bl	8000578 <__aeabi_dmul>
 8007220:	4602      	mov	r2, r0
 8007222:	460b      	mov	r3, r1
 8007224:	4630      	mov	r0, r6
 8007226:	4639      	mov	r1, r7
 8007228:	f7f8 fff0 	bl	800020c <__adddf3>
 800722c:	4606      	mov	r6, r0
 800722e:	460f      	mov	r7, r1
 8007230:	f7f9 fc3c 	bl	8000aac <__aeabi_d2iz>
 8007234:	2200      	movs	r2, #0
 8007236:	9006      	str	r0, [sp, #24]
 8007238:	2300      	movs	r3, #0
 800723a:	4630      	mov	r0, r6
 800723c:	4639      	mov	r1, r7
 800723e:	f7f9 fc0d 	bl	8000a5c <__aeabi_dcmplt>
 8007242:	2800      	cmp	r0, #0
 8007244:	f040 8273 	bne.w	800772e <_dtoa_r+0x616>
 8007248:	9e06      	ldr	r6, [sp, #24]
 800724a:	2e16      	cmp	r6, #22
 800724c:	f200 825d 	bhi.w	800770a <_dtoa_r+0x5f2>
 8007250:	4b3a      	ldr	r3, [pc, #232]	; (800733c <_dtoa_r+0x224>)
 8007252:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8007256:	e9d3 0100 	ldrd	r0, r1, [r3]
 800725a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800725e:	f7f9 fc1b 	bl	8000a98 <__aeabi_dcmpgt>
 8007262:	2800      	cmp	r0, #0
 8007264:	f000 83d7 	beq.w	8007a16 <_dtoa_r+0x8fe>
 8007268:	1e73      	subs	r3, r6, #1
 800726a:	9306      	str	r3, [sp, #24]
 800726c:	2300      	movs	r3, #0
 800726e:	930d      	str	r3, [sp, #52]	; 0x34
 8007270:	1b2c      	subs	r4, r5, r4
 8007272:	f1b4 0801 	subs.w	r8, r4, #1
 8007276:	f100 8254 	bmi.w	8007722 <_dtoa_r+0x60a>
 800727a:	2300      	movs	r3, #0
 800727c:	9308      	str	r3, [sp, #32]
 800727e:	9b06      	ldr	r3, [sp, #24]
 8007280:	2b00      	cmp	r3, #0
 8007282:	f2c0 8245 	blt.w	8007710 <_dtoa_r+0x5f8>
 8007286:	4498      	add	r8, r3
 8007288:	930c      	str	r3, [sp, #48]	; 0x30
 800728a:	2300      	movs	r3, #0
 800728c:	930b      	str	r3, [sp, #44]	; 0x2c
 800728e:	9b02      	ldr	r3, [sp, #8]
 8007290:	2b09      	cmp	r3, #9
 8007292:	d85b      	bhi.n	800734c <_dtoa_r+0x234>
 8007294:	2b05      	cmp	r3, #5
 8007296:	f340 83c0 	ble.w	8007a1a <_dtoa_r+0x902>
 800729a:	3b04      	subs	r3, #4
 800729c:	9302      	str	r3, [sp, #8]
 800729e:	2500      	movs	r5, #0
 80072a0:	9b02      	ldr	r3, [sp, #8]
 80072a2:	3b02      	subs	r3, #2
 80072a4:	2b03      	cmp	r3, #3
 80072a6:	f200 8498 	bhi.w	8007bda <_dtoa_r+0xac2>
 80072aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80072ae:	03df      	.short	0x03df
 80072b0:	03e803bf 	.word	0x03e803bf
 80072b4:	04f5      	.short	0x04f5
 80072b6:	9a05      	ldr	r2, [sp, #20]
 80072b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80072bc:	6013      	str	r3, [r2, #0]
 80072be:	9b00      	ldr	r3, [sp, #0]
 80072c0:	b983      	cbnz	r3, 80072e4 <_dtoa_r+0x1cc>
 80072c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80072c6:	b96b      	cbnz	r3, 80072e4 <_dtoa_r+0x1cc>
 80072c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80072ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8007340 <_dtoa_r+0x228>
 80072ce:	2b00      	cmp	r3, #0
 80072d0:	f43f af61 	beq.w	8007196 <_dtoa_r+0x7e>
 80072d4:	f10b 0308 	add.w	r3, fp, #8
 80072d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80072da:	4658      	mov	r0, fp
 80072dc:	6013      	str	r3, [r2, #0]
 80072de:	b01b      	add	sp, #108	; 0x6c
 80072e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80072e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80072e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8007344 <_dtoa_r+0x22c>
 80072ea:	2b00      	cmp	r3, #0
 80072ec:	f43f af53 	beq.w	8007196 <_dtoa_r+0x7e>
 80072f0:	f10b 0303 	add.w	r3, fp, #3
 80072f4:	e7f0      	b.n	80072d8 <_dtoa_r+0x1c0>
 80072f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80072fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80072fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8007300:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8007304:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8007308:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800730a:	e76f      	b.n	80071ec <_dtoa_r+0xd4>
 800730c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8007348 <_dtoa_r+0x230>
 8007310:	4658      	mov	r0, fp
 8007312:	b01b      	add	sp, #108	; 0x6c
 8007314:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007318:	636f4361 	.word	0x636f4361
 800731c:	3fd287a7 	.word	0x3fd287a7
 8007320:	8b60c8b3 	.word	0x8b60c8b3
 8007324:	3fc68a28 	.word	0x3fc68a28
 8007328:	509f79fb 	.word	0x509f79fb
 800732c:	3fd34413 	.word	0x3fd34413
 8007330:	7ff00000 	.word	0x7ff00000
 8007334:	08009e79 	.word	0x08009e79
 8007338:	3ff80000 	.word	0x3ff80000
 800733c:	08009ed8 	.word	0x08009ed8
 8007340:	08009e9c 	.word	0x08009e9c
 8007344:	08009ea8 	.word	0x08009ea8
 8007348:	08009e78 	.word	0x08009e78
 800734c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8007350:	2501      	movs	r5, #1
 8007352:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8007356:	2300      	movs	r3, #0
 8007358:	9302      	str	r3, [sp, #8]
 800735a:	9307      	str	r3, [sp, #28]
 800735c:	2100      	movs	r1, #0
 800735e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007362:	940e      	str	r4, [sp, #56]	; 0x38
 8007364:	4648      	mov	r0, r9
 8007366:	f001 fb1d 	bl	80089a4 <_Balloc>
 800736a:	2c0e      	cmp	r4, #14
 800736c:	4683      	mov	fp, r0
 800736e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007372:	f200 80fb 	bhi.w	800756c <_dtoa_r+0x454>
 8007376:	2d00      	cmp	r5, #0
 8007378:	f000 80f8 	beq.w	800756c <_dtoa_r+0x454>
 800737c:	ed9d 7b00 	vldr	d7, [sp]
 8007380:	9906      	ldr	r1, [sp, #24]
 8007382:	2900      	cmp	r1, #0
 8007384:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8007388:	f340 83e5 	ble.w	8007b56 <_dtoa_r+0xa3e>
 800738c:	4b9d      	ldr	r3, [pc, #628]	; (8007604 <_dtoa_r+0x4ec>)
 800738e:	f001 020f 	and.w	r2, r1, #15
 8007392:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007396:	ed93 7b00 	vldr	d7, [r3]
 800739a:	110c      	asrs	r4, r1, #4
 800739c:	06e2      	lsls	r2, r4, #27
 800739e:	ed8d 7b00 	vstr	d7, [sp]
 80073a2:	f140 849e 	bpl.w	8007ce2 <_dtoa_r+0xbca>
 80073a6:	4b98      	ldr	r3, [pc, #608]	; (8007608 <_dtoa_r+0x4f0>)
 80073a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80073ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80073b0:	f7f9 fa0c 	bl	80007cc <__aeabi_ddiv>
 80073b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80073b8:	f004 040f 	and.w	r4, r4, #15
 80073bc:	2603      	movs	r6, #3
 80073be:	b17c      	cbz	r4, 80073e0 <_dtoa_r+0x2c8>
 80073c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80073c4:	4d90      	ldr	r5, [pc, #576]	; (8007608 <_dtoa_r+0x4f0>)
 80073c6:	07e3      	lsls	r3, r4, #31
 80073c8:	d504      	bpl.n	80073d4 <_dtoa_r+0x2bc>
 80073ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80073ce:	f7f9 f8d3 	bl	8000578 <__aeabi_dmul>
 80073d2:	3601      	adds	r6, #1
 80073d4:	1064      	asrs	r4, r4, #1
 80073d6:	f105 0508 	add.w	r5, r5, #8
 80073da:	d1f4      	bne.n	80073c6 <_dtoa_r+0x2ae>
 80073dc:	e9cd 0100 	strd	r0, r1, [sp]
 80073e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80073e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80073e8:	f7f9 f9f0 	bl	80007cc <__aeabi_ddiv>
 80073ec:	e9cd 0100 	strd	r0, r1, [sp]
 80073f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80073f2:	b143      	cbz	r3, 8007406 <_dtoa_r+0x2ee>
 80073f4:	2200      	movs	r2, #0
 80073f6:	4b85      	ldr	r3, [pc, #532]	; (800760c <_dtoa_r+0x4f4>)
 80073f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80073fc:	f7f9 fb2e 	bl	8000a5c <__aeabi_dcmplt>
 8007400:	2800      	cmp	r0, #0
 8007402:	f040 84ff 	bne.w	8007e04 <_dtoa_r+0xcec>
 8007406:	4630      	mov	r0, r6
 8007408:	f7f9 f84c 	bl	80004a4 <__aeabi_i2d>
 800740c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007410:	f7f9 f8b2 	bl	8000578 <__aeabi_dmul>
 8007414:	4b7e      	ldr	r3, [pc, #504]	; (8007610 <_dtoa_r+0x4f8>)
 8007416:	2200      	movs	r2, #0
 8007418:	f7f8 fef8 	bl	800020c <__adddf3>
 800741c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800741e:	4606      	mov	r6, r0
 8007420:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007424:	2b00      	cmp	r3, #0
 8007426:	f000 841c 	beq.w	8007c62 <_dtoa_r+0xb4a>
 800742a:	9b06      	ldr	r3, [sp, #24]
 800742c:	9316      	str	r3, [sp, #88]	; 0x58
 800742e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007430:	9312      	str	r3, [sp, #72]	; 0x48
 8007432:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007436:	f7f9 fb39 	bl	8000aac <__aeabi_d2iz>
 800743a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800743c:	4b71      	ldr	r3, [pc, #452]	; (8007604 <_dtoa_r+0x4ec>)
 800743e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007442:	ed13 7b02 	vldr	d7, [r3, #-8]
 8007446:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800744a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800744e:	f7f9 f829 	bl	80004a4 <__aeabi_i2d>
 8007452:	460b      	mov	r3, r1
 8007454:	4602      	mov	r2, r0
 8007456:	e9dd 0100 	ldrd	r0, r1, [sp]
 800745a:	e9cd 6700 	strd	r6, r7, [sp]
 800745e:	f7f8 fed3 	bl	8000208 <__aeabi_dsub>
 8007462:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007464:	b2ed      	uxtb	r5, r5
 8007466:	4606      	mov	r6, r0
 8007468:	460f      	mov	r7, r1
 800746a:	f10b 0401 	add.w	r4, fp, #1
 800746e:	2b00      	cmp	r3, #0
 8007470:	f000 8458 	beq.w	8007d24 <_dtoa_r+0xc0c>
 8007474:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007478:	2000      	movs	r0, #0
 800747a:	4966      	ldr	r1, [pc, #408]	; (8007614 <_dtoa_r+0x4fc>)
 800747c:	f7f9 f9a6 	bl	80007cc <__aeabi_ddiv>
 8007480:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007484:	f7f8 fec0 	bl	8000208 <__aeabi_dsub>
 8007488:	f88b 5000 	strb.w	r5, [fp]
 800748c:	4632      	mov	r2, r6
 800748e:	463b      	mov	r3, r7
 8007490:	e9cd 0100 	strd	r0, r1, [sp]
 8007494:	f7f9 fb00 	bl	8000a98 <__aeabi_dcmpgt>
 8007498:	2800      	cmp	r0, #0
 800749a:	f040 8502 	bne.w	8007ea2 <_dtoa_r+0xd8a>
 800749e:	4632      	mov	r2, r6
 80074a0:	463b      	mov	r3, r7
 80074a2:	2000      	movs	r0, #0
 80074a4:	4959      	ldr	r1, [pc, #356]	; (800760c <_dtoa_r+0x4f4>)
 80074a6:	f7f8 feaf 	bl	8000208 <__aeabi_dsub>
 80074aa:	4602      	mov	r2, r0
 80074ac:	460b      	mov	r3, r1
 80074ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80074b2:	f7f9 faf1 	bl	8000a98 <__aeabi_dcmpgt>
 80074b6:	2800      	cmp	r0, #0
 80074b8:	f040 84fb 	bne.w	8007eb2 <_dtoa_r+0xd9a>
 80074bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80074be:	2a01      	cmp	r2, #1
 80074c0:	d050      	beq.n	8007564 <_dtoa_r+0x44c>
 80074c2:	445a      	add	r2, fp
 80074c4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80074c8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80074cc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80074d0:	4692      	mov	sl, r2
 80074d2:	46cb      	mov	fp, r9
 80074d4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80074d8:	e00c      	b.n	80074f4 <_dtoa_r+0x3dc>
 80074da:	2000      	movs	r0, #0
 80074dc:	494b      	ldr	r1, [pc, #300]	; (800760c <_dtoa_r+0x4f4>)
 80074de:	f7f8 fe93 	bl	8000208 <__aeabi_dsub>
 80074e2:	4642      	mov	r2, r8
 80074e4:	464b      	mov	r3, r9
 80074e6:	f7f9 fab9 	bl	8000a5c <__aeabi_dcmplt>
 80074ea:	2800      	cmp	r0, #0
 80074ec:	f040 84dc 	bne.w	8007ea8 <_dtoa_r+0xd90>
 80074f0:	4554      	cmp	r4, sl
 80074f2:	d030      	beq.n	8007556 <_dtoa_r+0x43e>
 80074f4:	4640      	mov	r0, r8
 80074f6:	4649      	mov	r1, r9
 80074f8:	2200      	movs	r2, #0
 80074fa:	4b47      	ldr	r3, [pc, #284]	; (8007618 <_dtoa_r+0x500>)
 80074fc:	f7f9 f83c 	bl	8000578 <__aeabi_dmul>
 8007500:	2200      	movs	r2, #0
 8007502:	4b45      	ldr	r3, [pc, #276]	; (8007618 <_dtoa_r+0x500>)
 8007504:	4680      	mov	r8, r0
 8007506:	4689      	mov	r9, r1
 8007508:	4630      	mov	r0, r6
 800750a:	4639      	mov	r1, r7
 800750c:	f7f9 f834 	bl	8000578 <__aeabi_dmul>
 8007510:	460f      	mov	r7, r1
 8007512:	4606      	mov	r6, r0
 8007514:	f7f9 faca 	bl	8000aac <__aeabi_d2iz>
 8007518:	4605      	mov	r5, r0
 800751a:	f7f8 ffc3 	bl	80004a4 <__aeabi_i2d>
 800751e:	4602      	mov	r2, r0
 8007520:	460b      	mov	r3, r1
 8007522:	4630      	mov	r0, r6
 8007524:	4639      	mov	r1, r7
 8007526:	f7f8 fe6f 	bl	8000208 <__aeabi_dsub>
 800752a:	3530      	adds	r5, #48	; 0x30
 800752c:	b2ed      	uxtb	r5, r5
 800752e:	4642      	mov	r2, r8
 8007530:	464b      	mov	r3, r9
 8007532:	f804 5b01 	strb.w	r5, [r4], #1
 8007536:	4606      	mov	r6, r0
 8007538:	460f      	mov	r7, r1
 800753a:	f7f9 fa8f 	bl	8000a5c <__aeabi_dcmplt>
 800753e:	4632      	mov	r2, r6
 8007540:	463b      	mov	r3, r7
 8007542:	2800      	cmp	r0, #0
 8007544:	d0c9      	beq.n	80074da <_dtoa_r+0x3c2>
 8007546:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007548:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800754c:	9306      	str	r3, [sp, #24]
 800754e:	46d9      	mov	r9, fp
 8007550:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007554:	e236      	b.n	80079c4 <_dtoa_r+0x8ac>
 8007556:	46d9      	mov	r9, fp
 8007558:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800755c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007560:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007564:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8007568:	e9cd 3400 	strd	r3, r4, [sp]
 800756c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800756e:	2b00      	cmp	r3, #0
 8007570:	f2c0 80ae 	blt.w	80076d0 <_dtoa_r+0x5b8>
 8007574:	9a06      	ldr	r2, [sp, #24]
 8007576:	2a0e      	cmp	r2, #14
 8007578:	f300 80aa 	bgt.w	80076d0 <_dtoa_r+0x5b8>
 800757c:	4b21      	ldr	r3, [pc, #132]	; (8007604 <_dtoa_r+0x4ec>)
 800757e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007582:	ed93 7b00 	vldr	d7, [r3]
 8007586:	9b07      	ldr	r3, [sp, #28]
 8007588:	2b00      	cmp	r3, #0
 800758a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800758e:	f2c0 82be 	blt.w	8007b0e <_dtoa_r+0x9f6>
 8007592:	e9dd 6700 	ldrd	r6, r7, [sp]
 8007596:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800759a:	4630      	mov	r0, r6
 800759c:	4639      	mov	r1, r7
 800759e:	f7f9 f915 	bl	80007cc <__aeabi_ddiv>
 80075a2:	f7f9 fa83 	bl	8000aac <__aeabi_d2iz>
 80075a6:	4605      	mov	r5, r0
 80075a8:	f7f8 ff7c 	bl	80004a4 <__aeabi_i2d>
 80075ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80075b0:	f7f8 ffe2 	bl	8000578 <__aeabi_dmul>
 80075b4:	460b      	mov	r3, r1
 80075b6:	4602      	mov	r2, r0
 80075b8:	4639      	mov	r1, r7
 80075ba:	4630      	mov	r0, r6
 80075bc:	f7f8 fe24 	bl	8000208 <__aeabi_dsub>
 80075c0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80075c4:	f88b 3000 	strb.w	r3, [fp]
 80075c8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80075ca:	2b01      	cmp	r3, #1
 80075cc:	4606      	mov	r6, r0
 80075ce:	460f      	mov	r7, r1
 80075d0:	f10b 0401 	add.w	r4, fp, #1
 80075d4:	d053      	beq.n	800767e <_dtoa_r+0x566>
 80075d6:	2200      	movs	r2, #0
 80075d8:	4b0f      	ldr	r3, [pc, #60]	; (8007618 <_dtoa_r+0x500>)
 80075da:	f7f8 ffcd 	bl	8000578 <__aeabi_dmul>
 80075de:	2200      	movs	r2, #0
 80075e0:	2300      	movs	r3, #0
 80075e2:	4606      	mov	r6, r0
 80075e4:	460f      	mov	r7, r1
 80075e6:	f7f9 fa2f 	bl	8000a48 <__aeabi_dcmpeq>
 80075ea:	2800      	cmp	r0, #0
 80075ec:	f040 81ea 	bne.w	80079c4 <_dtoa_r+0x8ac>
 80075f0:	f8cd a000 	str.w	sl, [sp]
 80075f4:	f8cd 901c 	str.w	r9, [sp, #28]
 80075f8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80075fc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8007600:	e017      	b.n	8007632 <_dtoa_r+0x51a>
 8007602:	bf00      	nop
 8007604:	08009ed8 	.word	0x08009ed8
 8007608:	08009eb0 	.word	0x08009eb0
 800760c:	3ff00000 	.word	0x3ff00000
 8007610:	401c0000 	.word	0x401c0000
 8007614:	3fe00000 	.word	0x3fe00000
 8007618:	40240000 	.word	0x40240000
 800761c:	f7f8 ffac 	bl	8000578 <__aeabi_dmul>
 8007620:	2200      	movs	r2, #0
 8007622:	2300      	movs	r3, #0
 8007624:	4606      	mov	r6, r0
 8007626:	460f      	mov	r7, r1
 8007628:	f7f9 fa0e 	bl	8000a48 <__aeabi_dcmpeq>
 800762c:	2800      	cmp	r0, #0
 800762e:	f040 833d 	bne.w	8007cac <_dtoa_r+0xb94>
 8007632:	464a      	mov	r2, r9
 8007634:	4653      	mov	r3, sl
 8007636:	4630      	mov	r0, r6
 8007638:	4639      	mov	r1, r7
 800763a:	f7f9 f8c7 	bl	80007cc <__aeabi_ddiv>
 800763e:	f7f9 fa35 	bl	8000aac <__aeabi_d2iz>
 8007642:	4605      	mov	r5, r0
 8007644:	f7f8 ff2e 	bl	80004a4 <__aeabi_i2d>
 8007648:	464a      	mov	r2, r9
 800764a:	4653      	mov	r3, sl
 800764c:	f7f8 ff94 	bl	8000578 <__aeabi_dmul>
 8007650:	4602      	mov	r2, r0
 8007652:	460b      	mov	r3, r1
 8007654:	4630      	mov	r0, r6
 8007656:	4639      	mov	r1, r7
 8007658:	f7f8 fdd6 	bl	8000208 <__aeabi_dsub>
 800765c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8007660:	f804 cb01 	strb.w	ip, [r4], #1
 8007664:	eba4 0c0b 	sub.w	ip, r4, fp
 8007668:	45e0      	cmp	r8, ip
 800766a:	4606      	mov	r6, r0
 800766c:	460f      	mov	r7, r1
 800766e:	f04f 0200 	mov.w	r2, #0
 8007672:	4bc1      	ldr	r3, [pc, #772]	; (8007978 <_dtoa_r+0x860>)
 8007674:	d1d2      	bne.n	800761c <_dtoa_r+0x504>
 8007676:	f8dd a000 	ldr.w	sl, [sp]
 800767a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800767e:	4632      	mov	r2, r6
 8007680:	463b      	mov	r3, r7
 8007682:	4630      	mov	r0, r6
 8007684:	4639      	mov	r1, r7
 8007686:	f7f8 fdc1 	bl	800020c <__adddf3>
 800768a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800768e:	4606      	mov	r6, r0
 8007690:	460f      	mov	r7, r1
 8007692:	f7f9 fa01 	bl	8000a98 <__aeabi_dcmpgt>
 8007696:	b958      	cbnz	r0, 80076b0 <_dtoa_r+0x598>
 8007698:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800769c:	4630      	mov	r0, r6
 800769e:	4639      	mov	r1, r7
 80076a0:	f7f9 f9d2 	bl	8000a48 <__aeabi_dcmpeq>
 80076a4:	2800      	cmp	r0, #0
 80076a6:	f000 818d 	beq.w	80079c4 <_dtoa_r+0x8ac>
 80076aa:	07e9      	lsls	r1, r5, #31
 80076ac:	f140 818a 	bpl.w	80079c4 <_dtoa_r+0x8ac>
 80076b0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80076b4:	e005      	b.n	80076c2 <_dtoa_r+0x5aa>
 80076b6:	459b      	cmp	fp, r3
 80076b8:	f000 8373 	beq.w	8007da2 <_dtoa_r+0xc8a>
 80076bc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80076c0:	461c      	mov	r4, r3
 80076c2:	2d39      	cmp	r5, #57	; 0x39
 80076c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80076c8:	d0f5      	beq.n	80076b6 <_dtoa_r+0x59e>
 80076ca:	3501      	adds	r5, #1
 80076cc:	701d      	strb	r5, [r3, #0]
 80076ce:	e179      	b.n	80079c4 <_dtoa_r+0x8ac>
 80076d0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80076d2:	2a00      	cmp	r2, #0
 80076d4:	d03b      	beq.n	800774e <_dtoa_r+0x636>
 80076d6:	9a02      	ldr	r2, [sp, #8]
 80076d8:	2a01      	cmp	r2, #1
 80076da:	f340 820b 	ble.w	8007af4 <_dtoa_r+0x9dc>
 80076de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80076e0:	1e5f      	subs	r7, r3, #1
 80076e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80076e4:	42bb      	cmp	r3, r7
 80076e6:	f2c0 82e6 	blt.w	8007cb6 <_dtoa_r+0xb9e>
 80076ea:	1bdf      	subs	r7, r3, r7
 80076ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80076ee:	2b00      	cmp	r3, #0
 80076f0:	f2c0 830b 	blt.w	8007d0a <_dtoa_r+0xbf2>
 80076f4:	9a08      	ldr	r2, [sp, #32]
 80076f6:	4614      	mov	r4, r2
 80076f8:	441a      	add	r2, r3
 80076fa:	4498      	add	r8, r3
 80076fc:	9208      	str	r2, [sp, #32]
 80076fe:	2101      	movs	r1, #1
 8007700:	4648      	mov	r0, r9
 8007702:	f001 fa0f 	bl	8008b24 <__i2b>
 8007706:	4605      	mov	r5, r0
 8007708:	e024      	b.n	8007754 <_dtoa_r+0x63c>
 800770a:	2301      	movs	r3, #1
 800770c:	930d      	str	r3, [sp, #52]	; 0x34
 800770e:	e5af      	b.n	8007270 <_dtoa_r+0x158>
 8007710:	9a08      	ldr	r2, [sp, #32]
 8007712:	9b06      	ldr	r3, [sp, #24]
 8007714:	1ad2      	subs	r2, r2, r3
 8007716:	425b      	negs	r3, r3
 8007718:	930b      	str	r3, [sp, #44]	; 0x2c
 800771a:	2300      	movs	r3, #0
 800771c:	9208      	str	r2, [sp, #32]
 800771e:	930c      	str	r3, [sp, #48]	; 0x30
 8007720:	e5b5      	b.n	800728e <_dtoa_r+0x176>
 8007722:	f1c4 0301 	rsb	r3, r4, #1
 8007726:	9308      	str	r3, [sp, #32]
 8007728:	f04f 0800 	mov.w	r8, #0
 800772c:	e5a7      	b.n	800727e <_dtoa_r+0x166>
 800772e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8007732:	4640      	mov	r0, r8
 8007734:	f7f8 feb6 	bl	80004a4 <__aeabi_i2d>
 8007738:	4632      	mov	r2, r6
 800773a:	463b      	mov	r3, r7
 800773c:	f7f9 f984 	bl	8000a48 <__aeabi_dcmpeq>
 8007740:	2800      	cmp	r0, #0
 8007742:	f47f ad81 	bne.w	8007248 <_dtoa_r+0x130>
 8007746:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800774a:	9306      	str	r3, [sp, #24]
 800774c:	e57c      	b.n	8007248 <_dtoa_r+0x130>
 800774e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007750:	9c08      	ldr	r4, [sp, #32]
 8007752:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007754:	2c00      	cmp	r4, #0
 8007756:	dd0c      	ble.n	8007772 <_dtoa_r+0x65a>
 8007758:	f1b8 0f00 	cmp.w	r8, #0
 800775c:	dd09      	ble.n	8007772 <_dtoa_r+0x65a>
 800775e:	4544      	cmp	r4, r8
 8007760:	9a08      	ldr	r2, [sp, #32]
 8007762:	4623      	mov	r3, r4
 8007764:	bfa8      	it	ge
 8007766:	4643      	movge	r3, r8
 8007768:	1ad2      	subs	r2, r2, r3
 800776a:	9208      	str	r2, [sp, #32]
 800776c:	1ae4      	subs	r4, r4, r3
 800776e:	eba8 0803 	sub.w	r8, r8, r3
 8007772:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007774:	b16b      	cbz	r3, 8007792 <_dtoa_r+0x67a>
 8007776:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007778:	2a00      	cmp	r2, #0
 800777a:	f000 8290 	beq.w	8007c9e <_dtoa_r+0xb86>
 800777e:	1bde      	subs	r6, r3, r7
 8007780:	2f00      	cmp	r7, #0
 8007782:	f040 819b 	bne.w	8007abc <_dtoa_r+0x9a4>
 8007786:	4651      	mov	r1, sl
 8007788:	4632      	mov	r2, r6
 800778a:	4648      	mov	r0, r9
 800778c:	f001 fa7a 	bl	8008c84 <__pow5mult>
 8007790:	4682      	mov	sl, r0
 8007792:	2101      	movs	r1, #1
 8007794:	4648      	mov	r0, r9
 8007796:	f001 f9c5 	bl	8008b24 <__i2b>
 800779a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800779c:	4606      	mov	r6, r0
 800779e:	2a00      	cmp	r2, #0
 80077a0:	f040 8125 	bne.w	80079ee <_dtoa_r+0x8d6>
 80077a4:	9b02      	ldr	r3, [sp, #8]
 80077a6:	2b01      	cmp	r3, #1
 80077a8:	f340 816c 	ble.w	8007a84 <_dtoa_r+0x96c>
 80077ac:	2001      	movs	r0, #1
 80077ae:	4440      	add	r0, r8
 80077b0:	f010 001f 	ands.w	r0, r0, #31
 80077b4:	f000 8119 	beq.w	80079ea <_dtoa_r+0x8d2>
 80077b8:	f1c0 0320 	rsb	r3, r0, #32
 80077bc:	2b04      	cmp	r3, #4
 80077be:	f340 83ac 	ble.w	8007f1a <_dtoa_r+0xe02>
 80077c2:	f1c0 001c 	rsb	r0, r0, #28
 80077c6:	9b08      	ldr	r3, [sp, #32]
 80077c8:	4403      	add	r3, r0
 80077ca:	9308      	str	r3, [sp, #32]
 80077cc:	4404      	add	r4, r0
 80077ce:	4480      	add	r8, r0
 80077d0:	9b08      	ldr	r3, [sp, #32]
 80077d2:	2b00      	cmp	r3, #0
 80077d4:	dd05      	ble.n	80077e2 <_dtoa_r+0x6ca>
 80077d6:	4651      	mov	r1, sl
 80077d8:	461a      	mov	r2, r3
 80077da:	4648      	mov	r0, r9
 80077dc:	f001 faa2 	bl	8008d24 <__lshift>
 80077e0:	4682      	mov	sl, r0
 80077e2:	f1b8 0f00 	cmp.w	r8, #0
 80077e6:	dd05      	ble.n	80077f4 <_dtoa_r+0x6dc>
 80077e8:	4631      	mov	r1, r6
 80077ea:	4642      	mov	r2, r8
 80077ec:	4648      	mov	r0, r9
 80077ee:	f001 fa99 	bl	8008d24 <__lshift>
 80077f2:	4606      	mov	r6, r0
 80077f4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80077f6:	2b00      	cmp	r3, #0
 80077f8:	d177      	bne.n	80078ea <_dtoa_r+0x7d2>
 80077fa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80077fc:	2b00      	cmp	r3, #0
 80077fe:	f340 8209 	ble.w	8007c14 <_dtoa_r+0xafc>
 8007802:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007804:	2b00      	cmp	r3, #0
 8007806:	f000 8089 	beq.w	800791c <_dtoa_r+0x804>
 800780a:	2c00      	cmp	r4, #0
 800780c:	f300 816b 	bgt.w	8007ae6 <_dtoa_r+0x9ce>
 8007810:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007812:	2b00      	cmp	r3, #0
 8007814:	f040 81cd 	bne.w	8007bb2 <_dtoa_r+0xa9a>
 8007818:	46a8      	mov	r8, r5
 800781a:	9a00      	ldr	r2, [sp, #0]
 800781c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007820:	f002 0201 	and.w	r2, r2, #1
 8007824:	920a      	str	r2, [sp, #40]	; 0x28
 8007826:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007828:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800782c:	441a      	add	r2, r3
 800782e:	465f      	mov	r7, fp
 8007830:	9209      	str	r2, [sp, #36]	; 0x24
 8007832:	46b3      	mov	fp, r6
 8007834:	4659      	mov	r1, fp
 8007836:	4650      	mov	r0, sl
 8007838:	f7ff fbdc 	bl	8006ff4 <quorem>
 800783c:	4629      	mov	r1, r5
 800783e:	4604      	mov	r4, r0
 8007840:	4650      	mov	r0, sl
 8007842:	f001 fac5 	bl	8008dd0 <__mcmp>
 8007846:	4659      	mov	r1, fp
 8007848:	4606      	mov	r6, r0
 800784a:	4642      	mov	r2, r8
 800784c:	4648      	mov	r0, r9
 800784e:	f001 fadb 	bl	8008e08 <__mdiff>
 8007852:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8007856:	9300      	str	r3, [sp, #0]
 8007858:	68c3      	ldr	r3, [r0, #12]
 800785a:	4601      	mov	r1, r0
 800785c:	2b00      	cmp	r3, #0
 800785e:	f040 81d4 	bne.w	8007c0a <_dtoa_r+0xaf2>
 8007862:	9008      	str	r0, [sp, #32]
 8007864:	4650      	mov	r0, sl
 8007866:	f001 fab3 	bl	8008dd0 <__mcmp>
 800786a:	9a08      	ldr	r2, [sp, #32]
 800786c:	9007      	str	r0, [sp, #28]
 800786e:	4611      	mov	r1, r2
 8007870:	4648      	mov	r0, r9
 8007872:	f001 f8bd 	bl	80089f0 <_Bfree>
 8007876:	9b07      	ldr	r3, [sp, #28]
 8007878:	b933      	cbnz	r3, 8007888 <_dtoa_r+0x770>
 800787a:	9a02      	ldr	r2, [sp, #8]
 800787c:	b922      	cbnz	r2, 8007888 <_dtoa_r+0x770>
 800787e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007880:	2b00      	cmp	r3, #0
 8007882:	f000 8319 	beq.w	8007eb8 <_dtoa_r+0xda0>
 8007886:	9b02      	ldr	r3, [sp, #8]
 8007888:	2e00      	cmp	r6, #0
 800788a:	f2c0 821c 	blt.w	8007cc6 <_dtoa_r+0xbae>
 800788e:	d105      	bne.n	800789c <_dtoa_r+0x784>
 8007890:	9a02      	ldr	r2, [sp, #8]
 8007892:	b91a      	cbnz	r2, 800789c <_dtoa_r+0x784>
 8007894:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007896:	2a00      	cmp	r2, #0
 8007898:	f000 8215 	beq.w	8007cc6 <_dtoa_r+0xbae>
 800789c:	2b00      	cmp	r3, #0
 800789e:	f107 0401 	add.w	r4, r7, #1
 80078a2:	f300 8225 	bgt.w	8007cf0 <_dtoa_r+0xbd8>
 80078a6:	9b00      	ldr	r3, [sp, #0]
 80078a8:	703b      	strb	r3, [r7, #0]
 80078aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80078ac:	42bb      	cmp	r3, r7
 80078ae:	f000 8230 	beq.w	8007d12 <_dtoa_r+0xbfa>
 80078b2:	4651      	mov	r1, sl
 80078b4:	2300      	movs	r3, #0
 80078b6:	220a      	movs	r2, #10
 80078b8:	4648      	mov	r0, r9
 80078ba:	f001 f8a3 	bl	8008a04 <__multadd>
 80078be:	4545      	cmp	r5, r8
 80078c0:	4682      	mov	sl, r0
 80078c2:	4629      	mov	r1, r5
 80078c4:	f04f 0300 	mov.w	r3, #0
 80078c8:	f04f 020a 	mov.w	r2, #10
 80078cc:	4648      	mov	r0, r9
 80078ce:	f000 8196 	beq.w	8007bfe <_dtoa_r+0xae6>
 80078d2:	f001 f897 	bl	8008a04 <__multadd>
 80078d6:	4641      	mov	r1, r8
 80078d8:	4605      	mov	r5, r0
 80078da:	2300      	movs	r3, #0
 80078dc:	220a      	movs	r2, #10
 80078de:	4648      	mov	r0, r9
 80078e0:	f001 f890 	bl	8008a04 <__multadd>
 80078e4:	4627      	mov	r7, r4
 80078e6:	4680      	mov	r8, r0
 80078e8:	e7a4      	b.n	8007834 <_dtoa_r+0x71c>
 80078ea:	4631      	mov	r1, r6
 80078ec:	4650      	mov	r0, sl
 80078ee:	f001 fa6f 	bl	8008dd0 <__mcmp>
 80078f2:	2800      	cmp	r0, #0
 80078f4:	da81      	bge.n	80077fa <_dtoa_r+0x6e2>
 80078f6:	9f06      	ldr	r7, [sp, #24]
 80078f8:	4651      	mov	r1, sl
 80078fa:	2300      	movs	r3, #0
 80078fc:	220a      	movs	r2, #10
 80078fe:	4648      	mov	r0, r9
 8007900:	3f01      	subs	r7, #1
 8007902:	9706      	str	r7, [sp, #24]
 8007904:	f001 f87e 	bl	8008a04 <__multadd>
 8007908:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800790a:	4682      	mov	sl, r0
 800790c:	2b00      	cmp	r3, #0
 800790e:	f040 82eb 	bne.w	8007ee8 <_dtoa_r+0xdd0>
 8007912:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007914:	2b00      	cmp	r3, #0
 8007916:	f340 82f3 	ble.w	8007f00 <_dtoa_r+0xde8>
 800791a:	9309      	str	r3, [sp, #36]	; 0x24
 800791c:	465c      	mov	r4, fp
 800791e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007922:	e002      	b.n	800792a <_dtoa_r+0x812>
 8007924:	f001 f86e 	bl	8008a04 <__multadd>
 8007928:	4682      	mov	sl, r0
 800792a:	4631      	mov	r1, r6
 800792c:	4650      	mov	r0, sl
 800792e:	f7ff fb61 	bl	8006ff4 <quorem>
 8007932:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8007936:	f804 7b01 	strb.w	r7, [r4], #1
 800793a:	eba4 030b 	sub.w	r3, r4, fp
 800793e:	4598      	cmp	r8, r3
 8007940:	f04f 020a 	mov.w	r2, #10
 8007944:	f04f 0300 	mov.w	r3, #0
 8007948:	4651      	mov	r1, sl
 800794a:	4648      	mov	r0, r9
 800794c:	dcea      	bgt.n	8007924 <_dtoa_r+0x80c>
 800794e:	2300      	movs	r3, #0
 8007950:	9700      	str	r7, [sp, #0]
 8007952:	9302      	str	r3, [sp, #8]
 8007954:	4651      	mov	r1, sl
 8007956:	2201      	movs	r2, #1
 8007958:	4648      	mov	r0, r9
 800795a:	f001 f9e3 	bl	8008d24 <__lshift>
 800795e:	4631      	mov	r1, r6
 8007960:	4682      	mov	sl, r0
 8007962:	f001 fa35 	bl	8008dd0 <__mcmp>
 8007966:	2800      	cmp	r0, #0
 8007968:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800796c:	dc14      	bgt.n	8007998 <_dtoa_r+0x880>
 800796e:	d108      	bne.n	8007982 <_dtoa_r+0x86a>
 8007970:	9b00      	ldr	r3, [sp, #0]
 8007972:	07db      	lsls	r3, r3, #31
 8007974:	d410      	bmi.n	8007998 <_dtoa_r+0x880>
 8007976:	e004      	b.n	8007982 <_dtoa_r+0x86a>
 8007978:	40240000 	.word	0x40240000
 800797c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007980:	461c      	mov	r4, r3
 8007982:	2a30      	cmp	r2, #48	; 0x30
 8007984:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007988:	d0f8      	beq.n	800797c <_dtoa_r+0x864>
 800798a:	e00b      	b.n	80079a4 <_dtoa_r+0x88c>
 800798c:	459b      	cmp	fp, r3
 800798e:	f000 814e 	beq.w	8007c2e <_dtoa_r+0xb16>
 8007992:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8007996:	461c      	mov	r4, r3
 8007998:	2a39      	cmp	r2, #57	; 0x39
 800799a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800799e:	d0f5      	beq.n	800798c <_dtoa_r+0x874>
 80079a0:	3201      	adds	r2, #1
 80079a2:	701a      	strb	r2, [r3, #0]
 80079a4:	4631      	mov	r1, r6
 80079a6:	4648      	mov	r0, r9
 80079a8:	f001 f822 	bl	80089f0 <_Bfree>
 80079ac:	b155      	cbz	r5, 80079c4 <_dtoa_r+0x8ac>
 80079ae:	9902      	ldr	r1, [sp, #8]
 80079b0:	b121      	cbz	r1, 80079bc <_dtoa_r+0x8a4>
 80079b2:	42a9      	cmp	r1, r5
 80079b4:	d002      	beq.n	80079bc <_dtoa_r+0x8a4>
 80079b6:	4648      	mov	r0, r9
 80079b8:	f001 f81a 	bl	80089f0 <_Bfree>
 80079bc:	4629      	mov	r1, r5
 80079be:	4648      	mov	r0, r9
 80079c0:	f001 f816 	bl	80089f0 <_Bfree>
 80079c4:	4651      	mov	r1, sl
 80079c6:	4648      	mov	r0, r9
 80079c8:	f001 f812 	bl	80089f0 <_Bfree>
 80079cc:	2200      	movs	r2, #0
 80079ce:	9b06      	ldr	r3, [sp, #24]
 80079d0:	7022      	strb	r2, [r4, #0]
 80079d2:	9a05      	ldr	r2, [sp, #20]
 80079d4:	3301      	adds	r3, #1
 80079d6:	6013      	str	r3, [r2, #0]
 80079d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80079da:	2b00      	cmp	r3, #0
 80079dc:	f43f abdb 	beq.w	8007196 <_dtoa_r+0x7e>
 80079e0:	4658      	mov	r0, fp
 80079e2:	601c      	str	r4, [r3, #0]
 80079e4:	b01b      	add	sp, #108	; 0x6c
 80079e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079ea:	201c      	movs	r0, #28
 80079ec:	e6eb      	b.n	80077c6 <_dtoa_r+0x6ae>
 80079ee:	4601      	mov	r1, r0
 80079f0:	4648      	mov	r0, r9
 80079f2:	f001 f947 	bl	8008c84 <__pow5mult>
 80079f6:	9b02      	ldr	r3, [sp, #8]
 80079f8:	2b01      	cmp	r3, #1
 80079fa:	4606      	mov	r6, r0
 80079fc:	f340 80d4 	ble.w	8007ba8 <_dtoa_r+0xa90>
 8007a00:	2300      	movs	r3, #0
 8007a02:	930c      	str	r3, [sp, #48]	; 0x30
 8007a04:	6933      	ldr	r3, [r6, #16]
 8007a06:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8007a0a:	6918      	ldr	r0, [r3, #16]
 8007a0c:	f001 f83a 	bl	8008a84 <__hi0bits>
 8007a10:	f1c0 0020 	rsb	r0, r0, #32
 8007a14:	e6cb      	b.n	80077ae <_dtoa_r+0x696>
 8007a16:	900d      	str	r0, [sp, #52]	; 0x34
 8007a18:	e42a      	b.n	8007270 <_dtoa_r+0x158>
 8007a1a:	2501      	movs	r5, #1
 8007a1c:	e440      	b.n	80072a0 <_dtoa_r+0x188>
 8007a1e:	f1c3 0820 	rsb	r8, r3, #32
 8007a22:	9b00      	ldr	r3, [sp, #0]
 8007a24:	fa03 f008 	lsl.w	r0, r3, r8
 8007a28:	f7ff bbd8 	b.w	80071dc <_dtoa_r+0xc4>
 8007a2c:	2300      	movs	r3, #0
 8007a2e:	930a      	str	r3, [sp, #40]	; 0x28
 8007a30:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8007a34:	4413      	add	r3, r2
 8007a36:	930e      	str	r3, [sp, #56]	; 0x38
 8007a38:	3301      	adds	r3, #1
 8007a3a:	2b01      	cmp	r3, #1
 8007a3c:	461e      	mov	r6, r3
 8007a3e:	9309      	str	r3, [sp, #36]	; 0x24
 8007a40:	bfb8      	it	lt
 8007a42:	2601      	movlt	r6, #1
 8007a44:	2100      	movs	r1, #0
 8007a46:	2e17      	cmp	r6, #23
 8007a48:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007a4c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8007a4e:	f77f ac89 	ble.w	8007364 <_dtoa_r+0x24c>
 8007a52:	2201      	movs	r2, #1
 8007a54:	2304      	movs	r3, #4
 8007a56:	005b      	lsls	r3, r3, #1
 8007a58:	f103 0014 	add.w	r0, r3, #20
 8007a5c:	42b0      	cmp	r0, r6
 8007a5e:	4611      	mov	r1, r2
 8007a60:	f102 0201 	add.w	r2, r2, #1
 8007a64:	d9f7      	bls.n	8007a56 <_dtoa_r+0x93e>
 8007a66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8007a6a:	e47b      	b.n	8007364 <_dtoa_r+0x24c>
 8007a6c:	2300      	movs	r3, #0
 8007a6e:	930a      	str	r3, [sp, #40]	; 0x28
 8007a70:	9e07      	ldr	r6, [sp, #28]
 8007a72:	2e00      	cmp	r6, #0
 8007a74:	f340 80e2 	ble.w	8007c3c <_dtoa_r+0xb24>
 8007a78:	960e      	str	r6, [sp, #56]	; 0x38
 8007a7a:	9609      	str	r6, [sp, #36]	; 0x24
 8007a7c:	e7e2      	b.n	8007a44 <_dtoa_r+0x92c>
 8007a7e:	2301      	movs	r3, #1
 8007a80:	930a      	str	r3, [sp, #40]	; 0x28
 8007a82:	e7f5      	b.n	8007a70 <_dtoa_r+0x958>
 8007a84:	9b00      	ldr	r3, [sp, #0]
 8007a86:	2b00      	cmp	r3, #0
 8007a88:	f47f ae90 	bne.w	80077ac <_dtoa_r+0x694>
 8007a8c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007a90:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8007a94:	2b00      	cmp	r3, #0
 8007a96:	f040 8192 	bne.w	8007dbe <_dtoa_r+0xca6>
 8007a9a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8007a9e:	0d1b      	lsrs	r3, r3, #20
 8007aa0:	051b      	lsls	r3, r3, #20
 8007aa2:	b12b      	cbz	r3, 8007ab0 <_dtoa_r+0x998>
 8007aa4:	9b08      	ldr	r3, [sp, #32]
 8007aa6:	3301      	adds	r3, #1
 8007aa8:	9308      	str	r3, [sp, #32]
 8007aaa:	f108 0801 	add.w	r8, r8, #1
 8007aae:	2301      	movs	r3, #1
 8007ab0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007ab2:	930c      	str	r3, [sp, #48]	; 0x30
 8007ab4:	2a00      	cmp	r2, #0
 8007ab6:	f43f ae79 	beq.w	80077ac <_dtoa_r+0x694>
 8007aba:	e7a3      	b.n	8007a04 <_dtoa_r+0x8ec>
 8007abc:	463a      	mov	r2, r7
 8007abe:	4629      	mov	r1, r5
 8007ac0:	4648      	mov	r0, r9
 8007ac2:	f001 f8df 	bl	8008c84 <__pow5mult>
 8007ac6:	4652      	mov	r2, sl
 8007ac8:	4601      	mov	r1, r0
 8007aca:	4605      	mov	r5, r0
 8007acc:	4648      	mov	r0, r9
 8007ace:	f001 f833 	bl	8008b38 <__multiply>
 8007ad2:	4651      	mov	r1, sl
 8007ad4:	4607      	mov	r7, r0
 8007ad6:	4648      	mov	r0, r9
 8007ad8:	f000 ff8a 	bl	80089f0 <_Bfree>
 8007adc:	46ba      	mov	sl, r7
 8007ade:	2e00      	cmp	r6, #0
 8007ae0:	f43f ae57 	beq.w	8007792 <_dtoa_r+0x67a>
 8007ae4:	e64f      	b.n	8007786 <_dtoa_r+0x66e>
 8007ae6:	4629      	mov	r1, r5
 8007ae8:	4622      	mov	r2, r4
 8007aea:	4648      	mov	r0, r9
 8007aec:	f001 f91a 	bl	8008d24 <__lshift>
 8007af0:	4605      	mov	r5, r0
 8007af2:	e68d      	b.n	8007810 <_dtoa_r+0x6f8>
 8007af4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8007af6:	2a00      	cmp	r2, #0
 8007af8:	f000 815d 	beq.w	8007db6 <_dtoa_r+0xc9e>
 8007afc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8007b00:	9a08      	ldr	r2, [sp, #32]
 8007b02:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007b04:	4614      	mov	r4, r2
 8007b06:	441a      	add	r2, r3
 8007b08:	4498      	add	r8, r3
 8007b0a:	9208      	str	r2, [sp, #32]
 8007b0c:	e5f7      	b.n	80076fe <_dtoa_r+0x5e6>
 8007b0e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007b10:	2b00      	cmp	r3, #0
 8007b12:	f73f ad3e 	bgt.w	8007592 <_dtoa_r+0x47a>
 8007b16:	f040 80bc 	bne.w	8007c92 <_dtoa_r+0xb7a>
 8007b1a:	ec51 0b17 	vmov	r0, r1, d7
 8007b1e:	2200      	movs	r2, #0
 8007b20:	4bb2      	ldr	r3, [pc, #712]	; (8007dec <_dtoa_r+0xcd4>)
 8007b22:	f7f8 fd29 	bl	8000578 <__aeabi_dmul>
 8007b26:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007b2a:	f7f8 ffab 	bl	8000a84 <__aeabi_dcmpge>
 8007b2e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8007b30:	4635      	mov	r5, r6
 8007b32:	2800      	cmp	r0, #0
 8007b34:	d176      	bne.n	8007c24 <_dtoa_r+0xb0c>
 8007b36:	9a06      	ldr	r2, [sp, #24]
 8007b38:	2331      	movs	r3, #49	; 0x31
 8007b3a:	3201      	adds	r2, #1
 8007b3c:	9206      	str	r2, [sp, #24]
 8007b3e:	f88b 3000 	strb.w	r3, [fp]
 8007b42:	f10b 0401 	add.w	r4, fp, #1
 8007b46:	4631      	mov	r1, r6
 8007b48:	4648      	mov	r0, r9
 8007b4a:	f000 ff51 	bl	80089f0 <_Bfree>
 8007b4e:	2d00      	cmp	r5, #0
 8007b50:	f47f af34 	bne.w	80079bc <_dtoa_r+0x8a4>
 8007b54:	e736      	b.n	80079c4 <_dtoa_r+0x8ac>
 8007b56:	f000 8142 	beq.w	8007dde <_dtoa_r+0xcc6>
 8007b5a:	9b06      	ldr	r3, [sp, #24]
 8007b5c:	425c      	negs	r4, r3
 8007b5e:	4ba4      	ldr	r3, [pc, #656]	; (8007df0 <_dtoa_r+0xcd8>)
 8007b60:	f004 020f 	and.w	r2, r4, #15
 8007b64:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007b68:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007b6c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007b70:	f7f8 fd02 	bl	8000578 <__aeabi_dmul>
 8007b74:	1124      	asrs	r4, r4, #4
 8007b76:	e9cd 0100 	strd	r0, r1, [sp]
 8007b7a:	f000 81c6 	beq.w	8007f0a <_dtoa_r+0xdf2>
 8007b7e:	4d9d      	ldr	r5, [pc, #628]	; (8007df4 <_dtoa_r+0xcdc>)
 8007b80:	2300      	movs	r3, #0
 8007b82:	2602      	movs	r6, #2
 8007b84:	07e7      	lsls	r7, r4, #31
 8007b86:	d505      	bpl.n	8007b94 <_dtoa_r+0xa7c>
 8007b88:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007b8c:	f7f8 fcf4 	bl	8000578 <__aeabi_dmul>
 8007b90:	3601      	adds	r6, #1
 8007b92:	2301      	movs	r3, #1
 8007b94:	1064      	asrs	r4, r4, #1
 8007b96:	f105 0508 	add.w	r5, r5, #8
 8007b9a:	d1f3      	bne.n	8007b84 <_dtoa_r+0xa6c>
 8007b9c:	2b00      	cmp	r3, #0
 8007b9e:	f43f ac27 	beq.w	80073f0 <_dtoa_r+0x2d8>
 8007ba2:	e9cd 0100 	strd	r0, r1, [sp]
 8007ba6:	e423      	b.n	80073f0 <_dtoa_r+0x2d8>
 8007ba8:	9b00      	ldr	r3, [sp, #0]
 8007baa:	2b00      	cmp	r3, #0
 8007bac:	f43f af6e 	beq.w	8007a8c <_dtoa_r+0x974>
 8007bb0:	e726      	b.n	8007a00 <_dtoa_r+0x8e8>
 8007bb2:	6869      	ldr	r1, [r5, #4]
 8007bb4:	4648      	mov	r0, r9
 8007bb6:	f000 fef5 	bl	80089a4 <_Balloc>
 8007bba:	692b      	ldr	r3, [r5, #16]
 8007bbc:	3302      	adds	r3, #2
 8007bbe:	009a      	lsls	r2, r3, #2
 8007bc0:	4604      	mov	r4, r0
 8007bc2:	f105 010c 	add.w	r1, r5, #12
 8007bc6:	300c      	adds	r0, #12
 8007bc8:	f7f9 f966 	bl	8000e98 <memcpy>
 8007bcc:	4621      	mov	r1, r4
 8007bce:	2201      	movs	r2, #1
 8007bd0:	4648      	mov	r0, r9
 8007bd2:	f001 f8a7 	bl	8008d24 <__lshift>
 8007bd6:	4680      	mov	r8, r0
 8007bd8:	e61f      	b.n	800781a <_dtoa_r+0x702>
 8007bda:	2400      	movs	r4, #0
 8007bdc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8007be0:	4621      	mov	r1, r4
 8007be2:	4648      	mov	r0, r9
 8007be4:	f000 fede 	bl	80089a4 <_Balloc>
 8007be8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007bec:	930e      	str	r3, [sp, #56]	; 0x38
 8007bee:	9309      	str	r3, [sp, #36]	; 0x24
 8007bf0:	2301      	movs	r3, #1
 8007bf2:	4683      	mov	fp, r0
 8007bf4:	9407      	str	r4, [sp, #28]
 8007bf6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8007bfa:	930a      	str	r3, [sp, #40]	; 0x28
 8007bfc:	e4b6      	b.n	800756c <_dtoa_r+0x454>
 8007bfe:	f000 ff01 	bl	8008a04 <__multadd>
 8007c02:	4627      	mov	r7, r4
 8007c04:	4605      	mov	r5, r0
 8007c06:	4680      	mov	r8, r0
 8007c08:	e614      	b.n	8007834 <_dtoa_r+0x71c>
 8007c0a:	4648      	mov	r0, r9
 8007c0c:	f000 fef0 	bl	80089f0 <_Bfree>
 8007c10:	2301      	movs	r3, #1
 8007c12:	e639      	b.n	8007888 <_dtoa_r+0x770>
 8007c14:	9b02      	ldr	r3, [sp, #8]
 8007c16:	2b02      	cmp	r3, #2
 8007c18:	f77f adf3 	ble.w	8007802 <_dtoa_r+0x6ea>
 8007c1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c1e:	2b00      	cmp	r3, #0
 8007c20:	f000 80cf 	beq.w	8007dc2 <_dtoa_r+0xcaa>
 8007c24:	9b07      	ldr	r3, [sp, #28]
 8007c26:	43db      	mvns	r3, r3
 8007c28:	9306      	str	r3, [sp, #24]
 8007c2a:	465c      	mov	r4, fp
 8007c2c:	e78b      	b.n	8007b46 <_dtoa_r+0xa2e>
 8007c2e:	9a06      	ldr	r2, [sp, #24]
 8007c30:	2331      	movs	r3, #49	; 0x31
 8007c32:	3201      	adds	r2, #1
 8007c34:	9206      	str	r2, [sp, #24]
 8007c36:	f88b 3000 	strb.w	r3, [fp]
 8007c3a:	e6b3      	b.n	80079a4 <_dtoa_r+0x88c>
 8007c3c:	2401      	movs	r4, #1
 8007c3e:	9409      	str	r4, [sp, #36]	; 0x24
 8007c40:	9407      	str	r4, [sp, #28]
 8007c42:	f7ff bb8b 	b.w	800735c <_dtoa_r+0x244>
 8007c46:	4630      	mov	r0, r6
 8007c48:	f7f8 fc2c 	bl	80004a4 <__aeabi_i2d>
 8007c4c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007c50:	f7f8 fc92 	bl	8000578 <__aeabi_dmul>
 8007c54:	2200      	movs	r2, #0
 8007c56:	4b68      	ldr	r3, [pc, #416]	; (8007df8 <_dtoa_r+0xce0>)
 8007c58:	f7f8 fad8 	bl	800020c <__adddf3>
 8007c5c:	4606      	mov	r6, r0
 8007c5e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007c62:	2200      	movs	r2, #0
 8007c64:	4b61      	ldr	r3, [pc, #388]	; (8007dec <_dtoa_r+0xcd4>)
 8007c66:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007c6a:	f7f8 facd 	bl	8000208 <__aeabi_dsub>
 8007c6e:	4632      	mov	r2, r6
 8007c70:	463b      	mov	r3, r7
 8007c72:	4604      	mov	r4, r0
 8007c74:	460d      	mov	r5, r1
 8007c76:	f7f8 ff0f 	bl	8000a98 <__aeabi_dcmpgt>
 8007c7a:	2800      	cmp	r0, #0
 8007c7c:	d14f      	bne.n	8007d1e <_dtoa_r+0xc06>
 8007c7e:	4632      	mov	r2, r6
 8007c80:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8007c84:	4620      	mov	r0, r4
 8007c86:	4629      	mov	r1, r5
 8007c88:	f7f8 fee8 	bl	8000a5c <__aeabi_dcmplt>
 8007c8c:	2800      	cmp	r0, #0
 8007c8e:	f43f ac69 	beq.w	8007564 <_dtoa_r+0x44c>
 8007c92:	2600      	movs	r6, #0
 8007c94:	4635      	mov	r5, r6
 8007c96:	e7c5      	b.n	8007c24 <_dtoa_r+0xb0c>
 8007c98:	2301      	movs	r3, #1
 8007c9a:	930a      	str	r3, [sp, #40]	; 0x28
 8007c9c:	e6c8      	b.n	8007a30 <_dtoa_r+0x918>
 8007c9e:	4651      	mov	r1, sl
 8007ca0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8007ca2:	4648      	mov	r0, r9
 8007ca4:	f000 ffee 	bl	8008c84 <__pow5mult>
 8007ca8:	4682      	mov	sl, r0
 8007caa:	e572      	b.n	8007792 <_dtoa_r+0x67a>
 8007cac:	f8dd a000 	ldr.w	sl, [sp]
 8007cb0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007cb4:	e686      	b.n	80079c4 <_dtoa_r+0x8ac>
 8007cb6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007cb8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007cba:	1afb      	subs	r3, r7, r3
 8007cbc:	441a      	add	r2, r3
 8007cbe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8007cc2:	2700      	movs	r7, #0
 8007cc4:	e512      	b.n	80076ec <_dtoa_r+0x5d4>
 8007cc6:	2b00      	cmp	r3, #0
 8007cc8:	9402      	str	r4, [sp, #8]
 8007cca:	465e      	mov	r6, fp
 8007ccc:	f107 0401 	add.w	r4, r7, #1
 8007cd0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007cd4:	f300 80ba 	bgt.w	8007e4c <_dtoa_r+0xd34>
 8007cd8:	9b00      	ldr	r3, [sp, #0]
 8007cda:	9502      	str	r5, [sp, #8]
 8007cdc:	703b      	strb	r3, [r7, #0]
 8007cde:	4645      	mov	r5, r8
 8007ce0:	e660      	b.n	80079a4 <_dtoa_r+0x88c>
 8007ce2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8007ce6:	2602      	movs	r6, #2
 8007ce8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8007cec:	f7ff bb67 	b.w	80073be <_dtoa_r+0x2a6>
 8007cf0:	9b00      	ldr	r3, [sp, #0]
 8007cf2:	2b39      	cmp	r3, #57	; 0x39
 8007cf4:	465e      	mov	r6, fp
 8007cf6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007cfa:	f000 80b9 	beq.w	8007e70 <_dtoa_r+0xd58>
 8007cfe:	9b00      	ldr	r3, [sp, #0]
 8007d00:	9502      	str	r5, [sp, #8]
 8007d02:	3301      	adds	r3, #1
 8007d04:	703b      	strb	r3, [r7, #0]
 8007d06:	4645      	mov	r5, r8
 8007d08:	e64c      	b.n	80079a4 <_dtoa_r+0x88c>
 8007d0a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8007d0e:	1a9c      	subs	r4, r3, r2
 8007d10:	e4f5      	b.n	80076fe <_dtoa_r+0x5e6>
 8007d12:	465e      	mov	r6, fp
 8007d14:	9502      	str	r5, [sp, #8]
 8007d16:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007d1a:	4645      	mov	r5, r8
 8007d1c:	e61a      	b.n	8007954 <_dtoa_r+0x83c>
 8007d1e:	2600      	movs	r6, #0
 8007d20:	4635      	mov	r5, r6
 8007d22:	e708      	b.n	8007b36 <_dtoa_r+0xa1e>
 8007d24:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007d28:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007d2c:	f7f8 fc24 	bl	8000578 <__aeabi_dmul>
 8007d30:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007d32:	f88b 5000 	strb.w	r5, [fp]
 8007d36:	2b01      	cmp	r3, #1
 8007d38:	e9cd 0100 	strd	r0, r1, [sp]
 8007d3c:	d020      	beq.n	8007d80 <_dtoa_r+0xc68>
 8007d3e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007d40:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8007d44:	445b      	add	r3, fp
 8007d46:	4698      	mov	r8, r3
 8007d48:	2200      	movs	r2, #0
 8007d4a:	4b2c      	ldr	r3, [pc, #176]	; (8007dfc <_dtoa_r+0xce4>)
 8007d4c:	4630      	mov	r0, r6
 8007d4e:	4639      	mov	r1, r7
 8007d50:	f7f8 fc12 	bl	8000578 <__aeabi_dmul>
 8007d54:	460f      	mov	r7, r1
 8007d56:	4606      	mov	r6, r0
 8007d58:	f7f8 fea8 	bl	8000aac <__aeabi_d2iz>
 8007d5c:	4605      	mov	r5, r0
 8007d5e:	f7f8 fba1 	bl	80004a4 <__aeabi_i2d>
 8007d62:	3530      	adds	r5, #48	; 0x30
 8007d64:	4602      	mov	r2, r0
 8007d66:	460b      	mov	r3, r1
 8007d68:	4630      	mov	r0, r6
 8007d6a:	4639      	mov	r1, r7
 8007d6c:	f7f8 fa4c 	bl	8000208 <__aeabi_dsub>
 8007d70:	f804 5b01 	strb.w	r5, [r4], #1
 8007d74:	4544      	cmp	r4, r8
 8007d76:	4606      	mov	r6, r0
 8007d78:	460f      	mov	r7, r1
 8007d7a:	d1e5      	bne.n	8007d48 <_dtoa_r+0xc30>
 8007d7c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8007d80:	4b1f      	ldr	r3, [pc, #124]	; (8007e00 <_dtoa_r+0xce8>)
 8007d82:	2200      	movs	r2, #0
 8007d84:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007d88:	f7f8 fa40 	bl	800020c <__adddf3>
 8007d8c:	4632      	mov	r2, r6
 8007d8e:	463b      	mov	r3, r7
 8007d90:	f7f8 fe64 	bl	8000a5c <__aeabi_dcmplt>
 8007d94:	2800      	cmp	r0, #0
 8007d96:	d070      	beq.n	8007e7a <_dtoa_r+0xd62>
 8007d98:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007d9a:	9306      	str	r3, [sp, #24]
 8007d9c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007da0:	e48f      	b.n	80076c2 <_dtoa_r+0x5aa>
 8007da2:	2330      	movs	r3, #48	; 0x30
 8007da4:	f88b 3000 	strb.w	r3, [fp]
 8007da8:	9b06      	ldr	r3, [sp, #24]
 8007daa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8007dae:	3301      	adds	r3, #1
 8007db0:	9306      	str	r3, [sp, #24]
 8007db2:	465b      	mov	r3, fp
 8007db4:	e489      	b.n	80076ca <_dtoa_r+0x5b2>
 8007db6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8007db8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8007dbc:	e6a0      	b.n	8007b00 <_dtoa_r+0x9e8>
 8007dbe:	2300      	movs	r3, #0
 8007dc0:	e676      	b.n	8007ab0 <_dtoa_r+0x998>
 8007dc2:	4631      	mov	r1, r6
 8007dc4:	2205      	movs	r2, #5
 8007dc6:	4648      	mov	r0, r9
 8007dc8:	f000 fe1c 	bl	8008a04 <__multadd>
 8007dcc:	4601      	mov	r1, r0
 8007dce:	4606      	mov	r6, r0
 8007dd0:	4650      	mov	r0, sl
 8007dd2:	f000 fffd 	bl	8008dd0 <__mcmp>
 8007dd6:	2800      	cmp	r0, #0
 8007dd8:	f73f aead 	bgt.w	8007b36 <_dtoa_r+0xa1e>
 8007ddc:	e722      	b.n	8007c24 <_dtoa_r+0xb0c>
 8007dde:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8007de2:	2602      	movs	r6, #2
 8007de4:	ed8d 7b00 	vstr	d7, [sp]
 8007de8:	f7ff bb02 	b.w	80073f0 <_dtoa_r+0x2d8>
 8007dec:	40140000 	.word	0x40140000
 8007df0:	08009ed8 	.word	0x08009ed8
 8007df4:	08009eb0 	.word	0x08009eb0
 8007df8:	401c0000 	.word	0x401c0000
 8007dfc:	40240000 	.word	0x40240000
 8007e00:	3fe00000 	.word	0x3fe00000
 8007e04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007e06:	2b00      	cmp	r3, #0
 8007e08:	f43f af1d 	beq.w	8007c46 <_dtoa_r+0xb2e>
 8007e0c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8007e0e:	2c00      	cmp	r4, #0
 8007e10:	f77f aba8 	ble.w	8007564 <_dtoa_r+0x44c>
 8007e14:	2200      	movs	r2, #0
 8007e16:	4b45      	ldr	r3, [pc, #276]	; (8007f2c <_dtoa_r+0xe14>)
 8007e18:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007e1c:	f7f8 fbac 	bl	8000578 <__aeabi_dmul>
 8007e20:	e9cd 0100 	strd	r0, r1, [sp]
 8007e24:	1c70      	adds	r0, r6, #1
 8007e26:	f7f8 fb3d 	bl	80004a4 <__aeabi_i2d>
 8007e2a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007e2e:	f7f8 fba3 	bl	8000578 <__aeabi_dmul>
 8007e32:	4b3f      	ldr	r3, [pc, #252]	; (8007f30 <_dtoa_r+0xe18>)
 8007e34:	2200      	movs	r2, #0
 8007e36:	f7f8 f9e9 	bl	800020c <__adddf3>
 8007e3a:	9b06      	ldr	r3, [sp, #24]
 8007e3c:	9412      	str	r4, [sp, #72]	; 0x48
 8007e3e:	3b01      	subs	r3, #1
 8007e40:	4606      	mov	r6, r0
 8007e42:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007e46:	9316      	str	r3, [sp, #88]	; 0x58
 8007e48:	f7ff baf3 	b.w	8007432 <_dtoa_r+0x31a>
 8007e4c:	4651      	mov	r1, sl
 8007e4e:	2201      	movs	r2, #1
 8007e50:	4648      	mov	r0, r9
 8007e52:	f000 ff67 	bl	8008d24 <__lshift>
 8007e56:	4631      	mov	r1, r6
 8007e58:	4682      	mov	sl, r0
 8007e5a:	f000 ffb9 	bl	8008dd0 <__mcmp>
 8007e5e:	2800      	cmp	r0, #0
 8007e60:	dd3b      	ble.n	8007eda <_dtoa_r+0xdc2>
 8007e62:	9b00      	ldr	r3, [sp, #0]
 8007e64:	2b39      	cmp	r3, #57	; 0x39
 8007e66:	d003      	beq.n	8007e70 <_dtoa_r+0xd58>
 8007e68:	9b02      	ldr	r3, [sp, #8]
 8007e6a:	3331      	adds	r3, #49	; 0x31
 8007e6c:	9300      	str	r3, [sp, #0]
 8007e6e:	e733      	b.n	8007cd8 <_dtoa_r+0xbc0>
 8007e70:	2239      	movs	r2, #57	; 0x39
 8007e72:	9502      	str	r5, [sp, #8]
 8007e74:	703a      	strb	r2, [r7, #0]
 8007e76:	4645      	mov	r5, r8
 8007e78:	e58e      	b.n	8007998 <_dtoa_r+0x880>
 8007e7a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007e7e:	2000      	movs	r0, #0
 8007e80:	492c      	ldr	r1, [pc, #176]	; (8007f34 <_dtoa_r+0xe1c>)
 8007e82:	f7f8 f9c1 	bl	8000208 <__aeabi_dsub>
 8007e86:	4632      	mov	r2, r6
 8007e88:	463b      	mov	r3, r7
 8007e8a:	f7f8 fe05 	bl	8000a98 <__aeabi_dcmpgt>
 8007e8e:	b910      	cbnz	r0, 8007e96 <_dtoa_r+0xd7e>
 8007e90:	f7ff bb68 	b.w	8007564 <_dtoa_r+0x44c>
 8007e94:	4614      	mov	r4, r2
 8007e96:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8007e9a:	2b30      	cmp	r3, #48	; 0x30
 8007e9c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8007ea0:	d0f8      	beq.n	8007e94 <_dtoa_r+0xd7c>
 8007ea2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007ea4:	9306      	str	r3, [sp, #24]
 8007ea6:	e58d      	b.n	80079c4 <_dtoa_r+0x8ac>
 8007ea8:	46d9      	mov	r9, fp
 8007eaa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8007eae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8007eb2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8007eb4:	9306      	str	r3, [sp, #24]
 8007eb6:	e404      	b.n	80076c2 <_dtoa_r+0x5aa>
 8007eb8:	9b00      	ldr	r3, [sp, #0]
 8007eba:	2b39      	cmp	r3, #57	; 0x39
 8007ebc:	4621      	mov	r1, r4
 8007ebe:	4632      	mov	r2, r6
 8007ec0:	f107 0401 	add.w	r4, r7, #1
 8007ec4:	465e      	mov	r6, fp
 8007ec6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8007eca:	d0d1      	beq.n	8007e70 <_dtoa_r+0xd58>
 8007ecc:	2a00      	cmp	r2, #0
 8007ece:	f77f af03 	ble.w	8007cd8 <_dtoa_r+0xbc0>
 8007ed2:	460b      	mov	r3, r1
 8007ed4:	3331      	adds	r3, #49	; 0x31
 8007ed6:	9300      	str	r3, [sp, #0]
 8007ed8:	e6fe      	b.n	8007cd8 <_dtoa_r+0xbc0>
 8007eda:	f47f aefd 	bne.w	8007cd8 <_dtoa_r+0xbc0>
 8007ede:	9b00      	ldr	r3, [sp, #0]
 8007ee0:	07da      	lsls	r2, r3, #31
 8007ee2:	f57f aef9 	bpl.w	8007cd8 <_dtoa_r+0xbc0>
 8007ee6:	e7bc      	b.n	8007e62 <_dtoa_r+0xd4a>
 8007ee8:	4629      	mov	r1, r5
 8007eea:	2300      	movs	r3, #0
 8007eec:	220a      	movs	r2, #10
 8007eee:	4648      	mov	r0, r9
 8007ef0:	f000 fd88 	bl	8008a04 <__multadd>
 8007ef4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007ef6:	2b00      	cmp	r3, #0
 8007ef8:	4605      	mov	r5, r0
 8007efa:	dd09      	ble.n	8007f10 <_dtoa_r+0xdf8>
 8007efc:	9309      	str	r3, [sp, #36]	; 0x24
 8007efe:	e484      	b.n	800780a <_dtoa_r+0x6f2>
 8007f00:	9b02      	ldr	r3, [sp, #8]
 8007f02:	2b02      	cmp	r3, #2
 8007f04:	dc0e      	bgt.n	8007f24 <_dtoa_r+0xe0c>
 8007f06:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007f08:	e507      	b.n	800791a <_dtoa_r+0x802>
 8007f0a:	2602      	movs	r6, #2
 8007f0c:	f7ff ba70 	b.w	80073f0 <_dtoa_r+0x2d8>
 8007f10:	9b02      	ldr	r3, [sp, #8]
 8007f12:	2b02      	cmp	r3, #2
 8007f14:	dc06      	bgt.n	8007f24 <_dtoa_r+0xe0c>
 8007f16:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007f18:	e7f0      	b.n	8007efc <_dtoa_r+0xde4>
 8007f1a:	f43f ac59 	beq.w	80077d0 <_dtoa_r+0x6b8>
 8007f1e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8007f22:	e450      	b.n	80077c6 <_dtoa_r+0x6ae>
 8007f24:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007f26:	9309      	str	r3, [sp, #36]	; 0x24
 8007f28:	e678      	b.n	8007c1c <_dtoa_r+0xb04>
 8007f2a:	bf00      	nop
 8007f2c:	40240000 	.word	0x40240000
 8007f30:	401c0000 	.word	0x401c0000
 8007f34:	3fe00000 	.word	0x3fe00000

08007f38 <__sflush_r>:
 8007f38:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007f3c:	b29a      	uxth	r2, r3
 8007f3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007f42:	460c      	mov	r4, r1
 8007f44:	0711      	lsls	r1, r2, #28
 8007f46:	4680      	mov	r8, r0
 8007f48:	d444      	bmi.n	8007fd4 <__sflush_r+0x9c>
 8007f4a:	6862      	ldr	r2, [r4, #4]
 8007f4c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007f50:	2a00      	cmp	r2, #0
 8007f52:	81a3      	strh	r3, [r4, #12]
 8007f54:	dd59      	ble.n	800800a <__sflush_r+0xd2>
 8007f56:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007f58:	2d00      	cmp	r5, #0
 8007f5a:	d053      	beq.n	8008004 <__sflush_r+0xcc>
 8007f5c:	2200      	movs	r2, #0
 8007f5e:	b29b      	uxth	r3, r3
 8007f60:	f8d8 6000 	ldr.w	r6, [r8]
 8007f64:	69e1      	ldr	r1, [r4, #28]
 8007f66:	f8c8 2000 	str.w	r2, [r8]
 8007f6a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8007f6e:	f040 8083 	bne.w	8008078 <__sflush_r+0x140>
 8007f72:	2301      	movs	r3, #1
 8007f74:	4640      	mov	r0, r8
 8007f76:	47a8      	blx	r5
 8007f78:	1c42      	adds	r2, r0, #1
 8007f7a:	d04a      	beq.n	8008012 <__sflush_r+0xda>
 8007f7c:	89a3      	ldrh	r3, [r4, #12]
 8007f7e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007f80:	69e1      	ldr	r1, [r4, #28]
 8007f82:	075b      	lsls	r3, r3, #29
 8007f84:	d505      	bpl.n	8007f92 <__sflush_r+0x5a>
 8007f86:	6862      	ldr	r2, [r4, #4]
 8007f88:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8007f8a:	1a80      	subs	r0, r0, r2
 8007f8c:	b10b      	cbz	r3, 8007f92 <__sflush_r+0x5a>
 8007f8e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007f90:	1ac0      	subs	r0, r0, r3
 8007f92:	4602      	mov	r2, r0
 8007f94:	2300      	movs	r3, #0
 8007f96:	4640      	mov	r0, r8
 8007f98:	47a8      	blx	r5
 8007f9a:	1c47      	adds	r7, r0, #1
 8007f9c:	d045      	beq.n	800802a <__sflush_r+0xf2>
 8007f9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007fa2:	6922      	ldr	r2, [r4, #16]
 8007fa4:	6022      	str	r2, [r4, #0]
 8007fa6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007faa:	2200      	movs	r2, #0
 8007fac:	81a3      	strh	r3, [r4, #12]
 8007fae:	04db      	lsls	r3, r3, #19
 8007fb0:	6062      	str	r2, [r4, #4]
 8007fb2:	d500      	bpl.n	8007fb6 <__sflush_r+0x7e>
 8007fb4:	6520      	str	r0, [r4, #80]	; 0x50
 8007fb6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007fb8:	f8c8 6000 	str.w	r6, [r8]
 8007fbc:	b311      	cbz	r1, 8008004 <__sflush_r+0xcc>
 8007fbe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007fc2:	4299      	cmp	r1, r3
 8007fc4:	d002      	beq.n	8007fcc <__sflush_r+0x94>
 8007fc6:	4640      	mov	r0, r8
 8007fc8:	f000 f95e 	bl	8008288 <_free_r>
 8007fcc:	2000      	movs	r0, #0
 8007fce:	6320      	str	r0, [r4, #48]	; 0x30
 8007fd0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007fd4:	6926      	ldr	r6, [r4, #16]
 8007fd6:	b1ae      	cbz	r6, 8008004 <__sflush_r+0xcc>
 8007fd8:	6825      	ldr	r5, [r4, #0]
 8007fda:	6026      	str	r6, [r4, #0]
 8007fdc:	0792      	lsls	r2, r2, #30
 8007fde:	bf0c      	ite	eq
 8007fe0:	6963      	ldreq	r3, [r4, #20]
 8007fe2:	2300      	movne	r3, #0
 8007fe4:	1bad      	subs	r5, r5, r6
 8007fe6:	60a3      	str	r3, [r4, #8]
 8007fe8:	e00a      	b.n	8008000 <__sflush_r+0xc8>
 8007fea:	462b      	mov	r3, r5
 8007fec:	4632      	mov	r2, r6
 8007fee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007ff0:	69e1      	ldr	r1, [r4, #28]
 8007ff2:	4640      	mov	r0, r8
 8007ff4:	47b8      	blx	r7
 8007ff6:	2800      	cmp	r0, #0
 8007ff8:	eba5 0500 	sub.w	r5, r5, r0
 8007ffc:	4406      	add	r6, r0
 8007ffe:	dd2b      	ble.n	8008058 <__sflush_r+0x120>
 8008000:	2d00      	cmp	r5, #0
 8008002:	dcf2      	bgt.n	8007fea <__sflush_r+0xb2>
 8008004:	2000      	movs	r0, #0
 8008006:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800800a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800800c:	2a00      	cmp	r2, #0
 800800e:	dca2      	bgt.n	8007f56 <__sflush_r+0x1e>
 8008010:	e7f8      	b.n	8008004 <__sflush_r+0xcc>
 8008012:	f8d8 3000 	ldr.w	r3, [r8]
 8008016:	2b00      	cmp	r3, #0
 8008018:	d0b0      	beq.n	8007f7c <__sflush_r+0x44>
 800801a:	2b1d      	cmp	r3, #29
 800801c:	d001      	beq.n	8008022 <__sflush_r+0xea>
 800801e:	2b16      	cmp	r3, #22
 8008020:	d12c      	bne.n	800807c <__sflush_r+0x144>
 8008022:	f8c8 6000 	str.w	r6, [r8]
 8008026:	2000      	movs	r0, #0
 8008028:	e7ed      	b.n	8008006 <__sflush_r+0xce>
 800802a:	f8d8 1000 	ldr.w	r1, [r8]
 800802e:	291d      	cmp	r1, #29
 8008030:	d81a      	bhi.n	8008068 <__sflush_r+0x130>
 8008032:	4b15      	ldr	r3, [pc, #84]	; (8008088 <__sflush_r+0x150>)
 8008034:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008038:	40cb      	lsrs	r3, r1
 800803a:	43db      	mvns	r3, r3
 800803c:	f013 0301 	ands.w	r3, r3, #1
 8008040:	d114      	bne.n	800806c <__sflush_r+0x134>
 8008042:	6925      	ldr	r5, [r4, #16]
 8008044:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8008048:	e9c4 5300 	strd	r5, r3, [r4]
 800804c:	04d5      	lsls	r5, r2, #19
 800804e:	81a2      	strh	r2, [r4, #12]
 8008050:	d5b1      	bpl.n	8007fb6 <__sflush_r+0x7e>
 8008052:	2900      	cmp	r1, #0
 8008054:	d1af      	bne.n	8007fb6 <__sflush_r+0x7e>
 8008056:	e7ad      	b.n	8007fb4 <__sflush_r+0x7c>
 8008058:	89a3      	ldrh	r3, [r4, #12]
 800805a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800805e:	81a3      	strh	r3, [r4, #12]
 8008060:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008064:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008068:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800806c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8008070:	81a2      	strh	r2, [r4, #12]
 8008072:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008076:	e7c6      	b.n	8008006 <__sflush_r+0xce>
 8008078:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800807a:	e782      	b.n	8007f82 <__sflush_r+0x4a>
 800807c:	89a3      	ldrh	r3, [r4, #12]
 800807e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008082:	81a3      	strh	r3, [r4, #12]
 8008084:	e7bf      	b.n	8008006 <__sflush_r+0xce>
 8008086:	bf00      	nop
 8008088:	20400001 	.word	0x20400001

0800808c <_fflush_r>:
 800808c:	b538      	push	{r3, r4, r5, lr}
 800808e:	460d      	mov	r5, r1
 8008090:	4604      	mov	r4, r0
 8008092:	b108      	cbz	r0, 8008098 <_fflush_r+0xc>
 8008094:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008096:	b1a3      	cbz	r3, 80080c2 <_fflush_r+0x36>
 8008098:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800809c:	b1b8      	cbz	r0, 80080ce <_fflush_r+0x42>
 800809e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80080a0:	07db      	lsls	r3, r3, #31
 80080a2:	d401      	bmi.n	80080a8 <_fflush_r+0x1c>
 80080a4:	0581      	lsls	r1, r0, #22
 80080a6:	d51a      	bpl.n	80080de <_fflush_r+0x52>
 80080a8:	4620      	mov	r0, r4
 80080aa:	4629      	mov	r1, r5
 80080ac:	f7ff ff44 	bl	8007f38 <__sflush_r>
 80080b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80080b2:	07da      	lsls	r2, r3, #31
 80080b4:	4604      	mov	r4, r0
 80080b6:	d402      	bmi.n	80080be <_fflush_r+0x32>
 80080b8:	89ab      	ldrh	r3, [r5, #12]
 80080ba:	059b      	lsls	r3, r3, #22
 80080bc:	d50a      	bpl.n	80080d4 <_fflush_r+0x48>
 80080be:	4620      	mov	r0, r4
 80080c0:	bd38      	pop	{r3, r4, r5, pc}
 80080c2:	f000 f83f 	bl	8008144 <__sinit>
 80080c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80080ca:	2800      	cmp	r0, #0
 80080cc:	d1e7      	bne.n	800809e <_fflush_r+0x12>
 80080ce:	4604      	mov	r4, r0
 80080d0:	4620      	mov	r0, r4
 80080d2:	bd38      	pop	{r3, r4, r5, pc}
 80080d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80080d6:	f000 fb87 	bl	80087e8 <__retarget_lock_release_recursive>
 80080da:	4620      	mov	r0, r4
 80080dc:	bd38      	pop	{r3, r4, r5, pc}
 80080de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80080e0:	f000 fb80 	bl	80087e4 <__retarget_lock_acquire_recursive>
 80080e4:	e7e0      	b.n	80080a8 <_fflush_r+0x1c>
 80080e6:	bf00      	nop

080080e8 <std>:
 80080e8:	b510      	push	{r4, lr}
 80080ea:	2300      	movs	r3, #0
 80080ec:	4604      	mov	r4, r0
 80080ee:	8181      	strh	r1, [r0, #12]
 80080f0:	81c2      	strh	r2, [r0, #14]
 80080f2:	e9c0 3300 	strd	r3, r3, [r0]
 80080f6:	6083      	str	r3, [r0, #8]
 80080f8:	6643      	str	r3, [r0, #100]	; 0x64
 80080fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80080fe:	6183      	str	r3, [r0, #24]
 8008100:	4619      	mov	r1, r3
 8008102:	2208      	movs	r2, #8
 8008104:	305c      	adds	r0, #92	; 0x5c
 8008106:	f7fd f839 	bl	800517c <memset>
 800810a:	4807      	ldr	r0, [pc, #28]	; (8008128 <std+0x40>)
 800810c:	4907      	ldr	r1, [pc, #28]	; (800812c <std+0x44>)
 800810e:	4a08      	ldr	r2, [pc, #32]	; (8008130 <std+0x48>)
 8008110:	4b08      	ldr	r3, [pc, #32]	; (8008134 <std+0x4c>)
 8008112:	62e3      	str	r3, [r4, #44]	; 0x2c
 8008114:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8008118:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800811c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8008120:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008124:	f000 bb5a 	b.w	80087dc <__retarget_lock_init_recursive>
 8008128:	0800937d 	.word	0x0800937d
 800812c:	080093a1 	.word	0x080093a1
 8008130:	080093dd 	.word	0x080093dd
 8008134:	080093fd 	.word	0x080093fd

08008138 <_cleanup_r>:
 8008138:	4901      	ldr	r1, [pc, #4]	; (8008140 <_cleanup_r+0x8>)
 800813a:	f000 bb17 	b.w	800876c <_fwalk_reent>
 800813e:	bf00      	nop
 8008140:	0800966d 	.word	0x0800966d

08008144 <__sinit>:
 8008144:	b510      	push	{r4, lr}
 8008146:	4604      	mov	r4, r0
 8008148:	4812      	ldr	r0, [pc, #72]	; (8008194 <__sinit+0x50>)
 800814a:	f000 fb4b 	bl	80087e4 <__retarget_lock_acquire_recursive>
 800814e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8008150:	b9d2      	cbnz	r2, 8008188 <__sinit+0x44>
 8008152:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8008156:	4810      	ldr	r0, [pc, #64]	; (8008198 <__sinit+0x54>)
 8008158:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800815c:	2103      	movs	r1, #3
 800815e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8008162:	63e0      	str	r0, [r4, #60]	; 0x3c
 8008164:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8008168:	6860      	ldr	r0, [r4, #4]
 800816a:	2104      	movs	r1, #4
 800816c:	f7ff ffbc 	bl	80080e8 <std>
 8008170:	2201      	movs	r2, #1
 8008172:	2109      	movs	r1, #9
 8008174:	68a0      	ldr	r0, [r4, #8]
 8008176:	f7ff ffb7 	bl	80080e8 <std>
 800817a:	2202      	movs	r2, #2
 800817c:	2112      	movs	r1, #18
 800817e:	68e0      	ldr	r0, [r4, #12]
 8008180:	f7ff ffb2 	bl	80080e8 <std>
 8008184:	2301      	movs	r3, #1
 8008186:	63a3      	str	r3, [r4, #56]	; 0x38
 8008188:	4802      	ldr	r0, [pc, #8]	; (8008194 <__sinit+0x50>)
 800818a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800818e:	f000 bb2b 	b.w	80087e8 <__retarget_lock_release_recursive>
 8008192:	bf00      	nop
 8008194:	20001564 	.word	0x20001564
 8008198:	08008139 	.word	0x08008139

0800819c <__sfp_lock_acquire>:
 800819c:	4801      	ldr	r0, [pc, #4]	; (80081a4 <__sfp_lock_acquire+0x8>)
 800819e:	f000 bb21 	b.w	80087e4 <__retarget_lock_acquire_recursive>
 80081a2:	bf00      	nop
 80081a4:	20001578 	.word	0x20001578

080081a8 <__sfp_lock_release>:
 80081a8:	4801      	ldr	r0, [pc, #4]	; (80081b0 <__sfp_lock_release+0x8>)
 80081aa:	f000 bb1d 	b.w	80087e8 <__retarget_lock_release_recursive>
 80081ae:	bf00      	nop
 80081b0:	20001578 	.word	0x20001578

080081b4 <__libc_fini_array>:
 80081b4:	b538      	push	{r3, r4, r5, lr}
 80081b6:	4c0a      	ldr	r4, [pc, #40]	; (80081e0 <__libc_fini_array+0x2c>)
 80081b8:	4d0a      	ldr	r5, [pc, #40]	; (80081e4 <__libc_fini_array+0x30>)
 80081ba:	1b64      	subs	r4, r4, r5
 80081bc:	10a4      	asrs	r4, r4, #2
 80081be:	d00a      	beq.n	80081d6 <__libc_fini_array+0x22>
 80081c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80081c4:	3b01      	subs	r3, #1
 80081c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80081ca:	3c01      	subs	r4, #1
 80081cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80081d0:	4798      	blx	r3
 80081d2:	2c00      	cmp	r4, #0
 80081d4:	d1f9      	bne.n	80081ca <__libc_fini_array+0x16>
 80081d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80081da:	f001 bc3b 	b.w	8009a54 <_fini>
 80081de:	bf00      	nop
 80081e0:	0800a0d4 	.word	0x0800a0d4
 80081e4:	0800a0d0 	.word	0x0800a0d0

080081e8 <_malloc_trim_r>:
 80081e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80081ea:	4f24      	ldr	r7, [pc, #144]	; (800827c <_malloc_trim_r+0x94>)
 80081ec:	460c      	mov	r4, r1
 80081ee:	4606      	mov	r6, r0
 80081f0:	f7fd f80e 	bl	8005210 <__malloc_lock>
 80081f4:	68bb      	ldr	r3, [r7, #8]
 80081f6:	685d      	ldr	r5, [r3, #4]
 80081f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80081fc:	310f      	adds	r1, #15
 80081fe:	f025 0503 	bic.w	r5, r5, #3
 8008202:	4429      	add	r1, r5
 8008204:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8008208:	f021 010f 	bic.w	r1, r1, #15
 800820c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8008210:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8008214:	db07      	blt.n	8008226 <_malloc_trim_r+0x3e>
 8008216:	2100      	movs	r1, #0
 8008218:	4630      	mov	r0, r6
 800821a:	f7fd f86f 	bl	80052fc <_sbrk_r>
 800821e:	68bb      	ldr	r3, [r7, #8]
 8008220:	442b      	add	r3, r5
 8008222:	4298      	cmp	r0, r3
 8008224:	d004      	beq.n	8008230 <_malloc_trim_r+0x48>
 8008226:	4630      	mov	r0, r6
 8008228:	f7fc fff8 	bl	800521c <__malloc_unlock>
 800822c:	2000      	movs	r0, #0
 800822e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008230:	4261      	negs	r1, r4
 8008232:	4630      	mov	r0, r6
 8008234:	f7fd f862 	bl	80052fc <_sbrk_r>
 8008238:	3001      	adds	r0, #1
 800823a:	d00d      	beq.n	8008258 <_malloc_trim_r+0x70>
 800823c:	4b10      	ldr	r3, [pc, #64]	; (8008280 <_malloc_trim_r+0x98>)
 800823e:	68ba      	ldr	r2, [r7, #8]
 8008240:	6819      	ldr	r1, [r3, #0]
 8008242:	1b2d      	subs	r5, r5, r4
 8008244:	f045 0501 	orr.w	r5, r5, #1
 8008248:	4630      	mov	r0, r6
 800824a:	1b09      	subs	r1, r1, r4
 800824c:	6055      	str	r5, [r2, #4]
 800824e:	6019      	str	r1, [r3, #0]
 8008250:	f7fc ffe4 	bl	800521c <__malloc_unlock>
 8008254:	2001      	movs	r0, #1
 8008256:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008258:	2100      	movs	r1, #0
 800825a:	4630      	mov	r0, r6
 800825c:	f7fd f84e 	bl	80052fc <_sbrk_r>
 8008260:	68ba      	ldr	r2, [r7, #8]
 8008262:	1a83      	subs	r3, r0, r2
 8008264:	2b0f      	cmp	r3, #15
 8008266:	ddde      	ble.n	8008226 <_malloc_trim_r+0x3e>
 8008268:	4c06      	ldr	r4, [pc, #24]	; (8008284 <_malloc_trim_r+0x9c>)
 800826a:	4905      	ldr	r1, [pc, #20]	; (8008280 <_malloc_trim_r+0x98>)
 800826c:	6824      	ldr	r4, [r4, #0]
 800826e:	f043 0301 	orr.w	r3, r3, #1
 8008272:	1b00      	subs	r0, r0, r4
 8008274:	6053      	str	r3, [r2, #4]
 8008276:	6008      	str	r0, [r1, #0]
 8008278:	e7d5      	b.n	8008226 <_malloc_trim_r+0x3e>
 800827a:	bf00      	nop
 800827c:	20000460 	.word	0x20000460
 8008280:	200014dc 	.word	0x200014dc
 8008284:	20000868 	.word	0x20000868

08008288 <_free_r>:
 8008288:	2900      	cmp	r1, #0
 800828a:	d053      	beq.n	8008334 <_free_r+0xac>
 800828c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800828e:	460c      	mov	r4, r1
 8008290:	4606      	mov	r6, r0
 8008292:	f7fc ffbd 	bl	8005210 <__malloc_lock>
 8008296:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800829a:	4f71      	ldr	r7, [pc, #452]	; (8008460 <_free_r+0x1d8>)
 800829c:	f02c 0101 	bic.w	r1, ip, #1
 80082a0:	f1a4 0508 	sub.w	r5, r4, #8
 80082a4:	186b      	adds	r3, r5, r1
 80082a6:	68b8      	ldr	r0, [r7, #8]
 80082a8:	685a      	ldr	r2, [r3, #4]
 80082aa:	4298      	cmp	r0, r3
 80082ac:	f022 0203 	bic.w	r2, r2, #3
 80082b0:	d053      	beq.n	800835a <_free_r+0xd2>
 80082b2:	f01c 0f01 	tst.w	ip, #1
 80082b6:	605a      	str	r2, [r3, #4]
 80082b8:	eb03 0002 	add.w	r0, r3, r2
 80082bc:	d13b      	bne.n	8008336 <_free_r+0xae>
 80082be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80082c2:	6840      	ldr	r0, [r0, #4]
 80082c4:	eba5 050c 	sub.w	r5, r5, ip
 80082c8:	f107 0e08 	add.w	lr, r7, #8
 80082cc:	68ac      	ldr	r4, [r5, #8]
 80082ce:	4574      	cmp	r4, lr
 80082d0:	4461      	add	r1, ip
 80082d2:	f000 0001 	and.w	r0, r0, #1
 80082d6:	d075      	beq.n	80083c4 <_free_r+0x13c>
 80082d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80082dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80082e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80082e4:	b360      	cbz	r0, 8008340 <_free_r+0xb8>
 80082e6:	f041 0301 	orr.w	r3, r1, #1
 80082ea:	606b      	str	r3, [r5, #4]
 80082ec:	5069      	str	r1, [r5, r1]
 80082ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80082f2:	d350      	bcc.n	8008396 <_free_r+0x10e>
 80082f4:	0a4b      	lsrs	r3, r1, #9
 80082f6:	2b04      	cmp	r3, #4
 80082f8:	d870      	bhi.n	80083dc <_free_r+0x154>
 80082fa:	098b      	lsrs	r3, r1, #6
 80082fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8008300:	00e4      	lsls	r4, r4, #3
 8008302:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8008306:	1938      	adds	r0, r7, r4
 8008308:	593b      	ldr	r3, [r7, r4]
 800830a:	3808      	subs	r0, #8
 800830c:	4298      	cmp	r0, r3
 800830e:	d078      	beq.n	8008402 <_free_r+0x17a>
 8008310:	685a      	ldr	r2, [r3, #4]
 8008312:	f022 0203 	bic.w	r2, r2, #3
 8008316:	428a      	cmp	r2, r1
 8008318:	d971      	bls.n	80083fe <_free_r+0x176>
 800831a:	689b      	ldr	r3, [r3, #8]
 800831c:	4298      	cmp	r0, r3
 800831e:	d1f7      	bne.n	8008310 <_free_r+0x88>
 8008320:	68c3      	ldr	r3, [r0, #12]
 8008322:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8008326:	609d      	str	r5, [r3, #8]
 8008328:	60c5      	str	r5, [r0, #12]
 800832a:	4630      	mov	r0, r6
 800832c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008330:	f7fc bf74 	b.w	800521c <__malloc_unlock>
 8008334:	4770      	bx	lr
 8008336:	6840      	ldr	r0, [r0, #4]
 8008338:	f000 0001 	and.w	r0, r0, #1
 800833c:	2800      	cmp	r0, #0
 800833e:	d1d2      	bne.n	80082e6 <_free_r+0x5e>
 8008340:	6898      	ldr	r0, [r3, #8]
 8008342:	4c48      	ldr	r4, [pc, #288]	; (8008464 <_free_r+0x1dc>)
 8008344:	4411      	add	r1, r2
 8008346:	42a0      	cmp	r0, r4
 8008348:	f041 0201 	orr.w	r2, r1, #1
 800834c:	d062      	beq.n	8008414 <_free_r+0x18c>
 800834e:	68db      	ldr	r3, [r3, #12]
 8008350:	60c3      	str	r3, [r0, #12]
 8008352:	6098      	str	r0, [r3, #8]
 8008354:	606a      	str	r2, [r5, #4]
 8008356:	5069      	str	r1, [r5, r1]
 8008358:	e7c9      	b.n	80082ee <_free_r+0x66>
 800835a:	f01c 0f01 	tst.w	ip, #1
 800835e:	440a      	add	r2, r1
 8008360:	d107      	bne.n	8008372 <_free_r+0xea>
 8008362:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8008366:	1aed      	subs	r5, r5, r3
 8008368:	441a      	add	r2, r3
 800836a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800836e:	60cb      	str	r3, [r1, #12]
 8008370:	6099      	str	r1, [r3, #8]
 8008372:	4b3d      	ldr	r3, [pc, #244]	; (8008468 <_free_r+0x1e0>)
 8008374:	681b      	ldr	r3, [r3, #0]
 8008376:	f042 0101 	orr.w	r1, r2, #1
 800837a:	4293      	cmp	r3, r2
 800837c:	6069      	str	r1, [r5, #4]
 800837e:	60bd      	str	r5, [r7, #8]
 8008380:	d804      	bhi.n	800838c <_free_r+0x104>
 8008382:	4b3a      	ldr	r3, [pc, #232]	; (800846c <_free_r+0x1e4>)
 8008384:	4630      	mov	r0, r6
 8008386:	6819      	ldr	r1, [r3, #0]
 8008388:	f7ff ff2e 	bl	80081e8 <_malloc_trim_r>
 800838c:	4630      	mov	r0, r6
 800838e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8008392:	f7fc bf43 	b.w	800521c <__malloc_unlock>
 8008396:	08c9      	lsrs	r1, r1, #3
 8008398:	6878      	ldr	r0, [r7, #4]
 800839a:	1c4a      	adds	r2, r1, #1
 800839c:	2301      	movs	r3, #1
 800839e:	1089      	asrs	r1, r1, #2
 80083a0:	408b      	lsls	r3, r1
 80083a2:	4303      	orrs	r3, r0
 80083a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80083a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80083ac:	607b      	str	r3, [r7, #4]
 80083ae:	3908      	subs	r1, #8
 80083b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80083b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80083b8:	60c5      	str	r5, [r0, #12]
 80083ba:	4630      	mov	r0, r6
 80083bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80083c0:	f7fc bf2c 	b.w	800521c <__malloc_unlock>
 80083c4:	2800      	cmp	r0, #0
 80083c6:	d145      	bne.n	8008454 <_free_r+0x1cc>
 80083c8:	440a      	add	r2, r1
 80083ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80083ce:	f042 0001 	orr.w	r0, r2, #1
 80083d2:	60cb      	str	r3, [r1, #12]
 80083d4:	6099      	str	r1, [r3, #8]
 80083d6:	6068      	str	r0, [r5, #4]
 80083d8:	50aa      	str	r2, [r5, r2]
 80083da:	e7d7      	b.n	800838c <_free_r+0x104>
 80083dc:	2b14      	cmp	r3, #20
 80083de:	d908      	bls.n	80083f2 <_free_r+0x16a>
 80083e0:	2b54      	cmp	r3, #84	; 0x54
 80083e2:	d81e      	bhi.n	8008422 <_free_r+0x19a>
 80083e4:	0b0b      	lsrs	r3, r1, #12
 80083e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80083ea:	00e4      	lsls	r4, r4, #3
 80083ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80083f0:	e789      	b.n	8008306 <_free_r+0x7e>
 80083f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80083f6:	00e4      	lsls	r4, r4, #3
 80083f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80083fc:	e783      	b.n	8008306 <_free_r+0x7e>
 80083fe:	4618      	mov	r0, r3
 8008400:	e78e      	b.n	8008320 <_free_r+0x98>
 8008402:	1093      	asrs	r3, r2, #2
 8008404:	6879      	ldr	r1, [r7, #4]
 8008406:	2201      	movs	r2, #1
 8008408:	fa02 f303 	lsl.w	r3, r2, r3
 800840c:	430b      	orrs	r3, r1
 800840e:	607b      	str	r3, [r7, #4]
 8008410:	4603      	mov	r3, r0
 8008412:	e786      	b.n	8008322 <_free_r+0x9a>
 8008414:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8008418:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800841c:	606a      	str	r2, [r5, #4]
 800841e:	5069      	str	r1, [r5, r1]
 8008420:	e7b4      	b.n	800838c <_free_r+0x104>
 8008422:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008426:	d806      	bhi.n	8008436 <_free_r+0x1ae>
 8008428:	0bcb      	lsrs	r3, r1, #15
 800842a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800842e:	00e4      	lsls	r4, r4, #3
 8008430:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8008434:	e767      	b.n	8008306 <_free_r+0x7e>
 8008436:	f240 5254 	movw	r2, #1364	; 0x554
 800843a:	4293      	cmp	r3, r2
 800843c:	d806      	bhi.n	800844c <_free_r+0x1c4>
 800843e:	0c8b      	lsrs	r3, r1, #18
 8008440:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8008444:	00e4      	lsls	r4, r4, #3
 8008446:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800844a:	e75c      	b.n	8008306 <_free_r+0x7e>
 800844c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8008450:	227e      	movs	r2, #126	; 0x7e
 8008452:	e758      	b.n	8008306 <_free_r+0x7e>
 8008454:	f041 0201 	orr.w	r2, r1, #1
 8008458:	606a      	str	r2, [r5, #4]
 800845a:	6019      	str	r1, [r3, #0]
 800845c:	e796      	b.n	800838c <_free_r+0x104>
 800845e:	bf00      	nop
 8008460:	20000460 	.word	0x20000460
 8008464:	20000468 	.word	0x20000468
 8008468:	2000086c 	.word	0x2000086c
 800846c:	2000150c 	.word	0x2000150c

08008470 <__sfvwrite_r>:
 8008470:	6893      	ldr	r3, [r2, #8]
 8008472:	2b00      	cmp	r3, #0
 8008474:	f000 80e4 	beq.w	8008640 <__sfvwrite_r+0x1d0>
 8008478:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800847c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008480:	b29b      	uxth	r3, r3
 8008482:	460c      	mov	r4, r1
 8008484:	0719      	lsls	r1, r3, #28
 8008486:	b083      	sub	sp, #12
 8008488:	4682      	mov	sl, r0
 800848a:	4690      	mov	r8, r2
 800848c:	d535      	bpl.n	80084fa <__sfvwrite_r+0x8a>
 800848e:	6922      	ldr	r2, [r4, #16]
 8008490:	b39a      	cbz	r2, 80084fa <__sfvwrite_r+0x8a>
 8008492:	f013 0202 	ands.w	r2, r3, #2
 8008496:	f8d8 6000 	ldr.w	r6, [r8]
 800849a:	d03d      	beq.n	8008518 <__sfvwrite_r+0xa8>
 800849c:	2700      	movs	r7, #0
 800849e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80084a2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80084a6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008768 <__sfvwrite_r+0x2f8>
 80084aa:	463d      	mov	r5, r7
 80084ac:	454d      	cmp	r5, r9
 80084ae:	462b      	mov	r3, r5
 80084b0:	463a      	mov	r2, r7
 80084b2:	bf28      	it	cs
 80084b4:	464b      	movcs	r3, r9
 80084b6:	4661      	mov	r1, ip
 80084b8:	4650      	mov	r0, sl
 80084ba:	b1d5      	cbz	r5, 80084f2 <__sfvwrite_r+0x82>
 80084bc:	47d8      	blx	fp
 80084be:	2800      	cmp	r0, #0
 80084c0:	f340 80c6 	ble.w	8008650 <__sfvwrite_r+0x1e0>
 80084c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80084c8:	1a1b      	subs	r3, r3, r0
 80084ca:	4407      	add	r7, r0
 80084cc:	1a2d      	subs	r5, r5, r0
 80084ce:	f8c8 3008 	str.w	r3, [r8, #8]
 80084d2:	2b00      	cmp	r3, #0
 80084d4:	f000 80b0 	beq.w	8008638 <__sfvwrite_r+0x1c8>
 80084d8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80084dc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80084e0:	454d      	cmp	r5, r9
 80084e2:	462b      	mov	r3, r5
 80084e4:	463a      	mov	r2, r7
 80084e6:	bf28      	it	cs
 80084e8:	464b      	movcs	r3, r9
 80084ea:	4661      	mov	r1, ip
 80084ec:	4650      	mov	r0, sl
 80084ee:	2d00      	cmp	r5, #0
 80084f0:	d1e4      	bne.n	80084bc <__sfvwrite_r+0x4c>
 80084f2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80084f6:	3608      	adds	r6, #8
 80084f8:	e7d8      	b.n	80084ac <__sfvwrite_r+0x3c>
 80084fa:	4621      	mov	r1, r4
 80084fc:	4650      	mov	r0, sl
 80084fe:	f7fe fc8f 	bl	8006e20 <__swsetup_r>
 8008502:	2800      	cmp	r0, #0
 8008504:	f040 812a 	bne.w	800875c <__sfvwrite_r+0x2ec>
 8008508:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800850c:	f8d8 6000 	ldr.w	r6, [r8]
 8008510:	b29b      	uxth	r3, r3
 8008512:	f013 0202 	ands.w	r2, r3, #2
 8008516:	d1c1      	bne.n	800849c <__sfvwrite_r+0x2c>
 8008518:	f013 0901 	ands.w	r9, r3, #1
 800851c:	d15d      	bne.n	80085da <__sfvwrite_r+0x16a>
 800851e:	68a7      	ldr	r7, [r4, #8]
 8008520:	6820      	ldr	r0, [r4, #0]
 8008522:	464d      	mov	r5, r9
 8008524:	2d00      	cmp	r5, #0
 8008526:	d054      	beq.n	80085d2 <__sfvwrite_r+0x162>
 8008528:	059a      	lsls	r2, r3, #22
 800852a:	f140 809b 	bpl.w	8008664 <__sfvwrite_r+0x1f4>
 800852e:	42af      	cmp	r7, r5
 8008530:	46bb      	mov	fp, r7
 8008532:	f200 80d8 	bhi.w	80086e6 <__sfvwrite_r+0x276>
 8008536:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800853a:	d02f      	beq.n	800859c <__sfvwrite_r+0x12c>
 800853c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008540:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008544:	eba0 0b01 	sub.w	fp, r0, r1
 8008548:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800854c:	1c68      	adds	r0, r5, #1
 800854e:	107f      	asrs	r7, r7, #1
 8008550:	4458      	add	r0, fp
 8008552:	42b8      	cmp	r0, r7
 8008554:	463a      	mov	r2, r7
 8008556:	bf84      	itt	hi
 8008558:	4607      	movhi	r7, r0
 800855a:	463a      	movhi	r2, r7
 800855c:	055b      	lsls	r3, r3, #21
 800855e:	f140 80d3 	bpl.w	8008708 <__sfvwrite_r+0x298>
 8008562:	4611      	mov	r1, r2
 8008564:	4650      	mov	r0, sl
 8008566:	f7fc fb65 	bl	8004c34 <_malloc_r>
 800856a:	2800      	cmp	r0, #0
 800856c:	f000 80f0 	beq.w	8008750 <__sfvwrite_r+0x2e0>
 8008570:	465a      	mov	r2, fp
 8008572:	6921      	ldr	r1, [r4, #16]
 8008574:	9001      	str	r0, [sp, #4]
 8008576:	f7f8 fc8f 	bl	8000e98 <memcpy>
 800857a:	89a2      	ldrh	r2, [r4, #12]
 800857c:	9b01      	ldr	r3, [sp, #4]
 800857e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008582:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008586:	81a2      	strh	r2, [r4, #12]
 8008588:	eba7 020b 	sub.w	r2, r7, fp
 800858c:	eb03 000b 	add.w	r0, r3, fp
 8008590:	6167      	str	r7, [r4, #20]
 8008592:	6123      	str	r3, [r4, #16]
 8008594:	6020      	str	r0, [r4, #0]
 8008596:	60a2      	str	r2, [r4, #8]
 8008598:	462f      	mov	r7, r5
 800859a:	46ab      	mov	fp, r5
 800859c:	465a      	mov	r2, fp
 800859e:	4649      	mov	r1, r9
 80085a0:	f000 f99c 	bl	80088dc <memmove>
 80085a4:	68a2      	ldr	r2, [r4, #8]
 80085a6:	6823      	ldr	r3, [r4, #0]
 80085a8:	1bd2      	subs	r2, r2, r7
 80085aa:	445b      	add	r3, fp
 80085ac:	462f      	mov	r7, r5
 80085ae:	60a2      	str	r2, [r4, #8]
 80085b0:	6023      	str	r3, [r4, #0]
 80085b2:	2500      	movs	r5, #0
 80085b4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80085b8:	1bdb      	subs	r3, r3, r7
 80085ba:	44b9      	add	r9, r7
 80085bc:	f8c8 3008 	str.w	r3, [r8, #8]
 80085c0:	2b00      	cmp	r3, #0
 80085c2:	d039      	beq.n	8008638 <__sfvwrite_r+0x1c8>
 80085c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80085c8:	68a7      	ldr	r7, [r4, #8]
 80085ca:	6820      	ldr	r0, [r4, #0]
 80085cc:	b29b      	uxth	r3, r3
 80085ce:	2d00      	cmp	r5, #0
 80085d0:	d1aa      	bne.n	8008528 <__sfvwrite_r+0xb8>
 80085d2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80085d6:	3608      	adds	r6, #8
 80085d8:	e7a4      	b.n	8008524 <__sfvwrite_r+0xb4>
 80085da:	4633      	mov	r3, r6
 80085dc:	4691      	mov	r9, r2
 80085de:	4610      	mov	r0, r2
 80085e0:	4617      	mov	r7, r2
 80085e2:	464e      	mov	r6, r9
 80085e4:	469b      	mov	fp, r3
 80085e6:	2f00      	cmp	r7, #0
 80085e8:	d06b      	beq.n	80086c2 <__sfvwrite_r+0x252>
 80085ea:	2800      	cmp	r0, #0
 80085ec:	d071      	beq.n	80086d2 <__sfvwrite_r+0x262>
 80085ee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80085f2:	6820      	ldr	r0, [r4, #0]
 80085f4:	45b9      	cmp	r9, r7
 80085f6:	464b      	mov	r3, r9
 80085f8:	bf28      	it	cs
 80085fa:	463b      	movcs	r3, r7
 80085fc:	4288      	cmp	r0, r1
 80085fe:	d903      	bls.n	8008608 <__sfvwrite_r+0x198>
 8008600:	68a5      	ldr	r5, [r4, #8]
 8008602:	4415      	add	r5, r2
 8008604:	42ab      	cmp	r3, r5
 8008606:	dc71      	bgt.n	80086ec <__sfvwrite_r+0x27c>
 8008608:	429a      	cmp	r2, r3
 800860a:	f300 8093 	bgt.w	8008734 <__sfvwrite_r+0x2c4>
 800860e:	4613      	mov	r3, r2
 8008610:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008612:	69e1      	ldr	r1, [r4, #28]
 8008614:	4632      	mov	r2, r6
 8008616:	4650      	mov	r0, sl
 8008618:	47a8      	blx	r5
 800861a:	1e05      	subs	r5, r0, #0
 800861c:	dd18      	ble.n	8008650 <__sfvwrite_r+0x1e0>
 800861e:	ebb9 0905 	subs.w	r9, r9, r5
 8008622:	d00f      	beq.n	8008644 <__sfvwrite_r+0x1d4>
 8008624:	2001      	movs	r0, #1
 8008626:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800862a:	1b5b      	subs	r3, r3, r5
 800862c:	442e      	add	r6, r5
 800862e:	1b7f      	subs	r7, r7, r5
 8008630:	f8c8 3008 	str.w	r3, [r8, #8]
 8008634:	2b00      	cmp	r3, #0
 8008636:	d1d6      	bne.n	80085e6 <__sfvwrite_r+0x176>
 8008638:	2000      	movs	r0, #0
 800863a:	b003      	add	sp, #12
 800863c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008640:	2000      	movs	r0, #0
 8008642:	4770      	bx	lr
 8008644:	4621      	mov	r1, r4
 8008646:	4650      	mov	r0, sl
 8008648:	f7ff fd20 	bl	800808c <_fflush_r>
 800864c:	2800      	cmp	r0, #0
 800864e:	d0ea      	beq.n	8008626 <__sfvwrite_r+0x1b6>
 8008650:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008654:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008658:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800865c:	81a3      	strh	r3, [r4, #12]
 800865e:	b003      	add	sp, #12
 8008660:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008664:	6923      	ldr	r3, [r4, #16]
 8008666:	4283      	cmp	r3, r0
 8008668:	d315      	bcc.n	8008696 <__sfvwrite_r+0x226>
 800866a:	6961      	ldr	r1, [r4, #20]
 800866c:	42a9      	cmp	r1, r5
 800866e:	d812      	bhi.n	8008696 <__sfvwrite_r+0x226>
 8008670:	4b3c      	ldr	r3, [pc, #240]	; (8008764 <__sfvwrite_r+0x2f4>)
 8008672:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008674:	429d      	cmp	r5, r3
 8008676:	bf94      	ite	ls
 8008678:	462b      	movls	r3, r5
 800867a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800867e:	464a      	mov	r2, r9
 8008680:	fb93 f3f1 	sdiv	r3, r3, r1
 8008684:	4650      	mov	r0, sl
 8008686:	fb01 f303 	mul.w	r3, r1, r3
 800868a:	69e1      	ldr	r1, [r4, #28]
 800868c:	47b8      	blx	r7
 800868e:	1e07      	subs	r7, r0, #0
 8008690:	ddde      	ble.n	8008650 <__sfvwrite_r+0x1e0>
 8008692:	1bed      	subs	r5, r5, r7
 8008694:	e78e      	b.n	80085b4 <__sfvwrite_r+0x144>
 8008696:	42af      	cmp	r7, r5
 8008698:	bf28      	it	cs
 800869a:	462f      	movcs	r7, r5
 800869c:	463a      	mov	r2, r7
 800869e:	4649      	mov	r1, r9
 80086a0:	f000 f91c 	bl	80088dc <memmove>
 80086a4:	68a3      	ldr	r3, [r4, #8]
 80086a6:	6822      	ldr	r2, [r4, #0]
 80086a8:	1bdb      	subs	r3, r3, r7
 80086aa:	443a      	add	r2, r7
 80086ac:	60a3      	str	r3, [r4, #8]
 80086ae:	6022      	str	r2, [r4, #0]
 80086b0:	2b00      	cmp	r3, #0
 80086b2:	d1ee      	bne.n	8008692 <__sfvwrite_r+0x222>
 80086b4:	4621      	mov	r1, r4
 80086b6:	4650      	mov	r0, sl
 80086b8:	f7ff fce8 	bl	800808c <_fflush_r>
 80086bc:	2800      	cmp	r0, #0
 80086be:	d0e8      	beq.n	8008692 <__sfvwrite_r+0x222>
 80086c0:	e7c6      	b.n	8008650 <__sfvwrite_r+0x1e0>
 80086c2:	f10b 0308 	add.w	r3, fp, #8
 80086c6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80086ca:	469b      	mov	fp, r3
 80086cc:	3308      	adds	r3, #8
 80086ce:	2f00      	cmp	r7, #0
 80086d0:	d0f9      	beq.n	80086c6 <__sfvwrite_r+0x256>
 80086d2:	463a      	mov	r2, r7
 80086d4:	210a      	movs	r1, #10
 80086d6:	4630      	mov	r0, r6
 80086d8:	f7f8 fd02 	bl	80010e0 <memchr>
 80086dc:	b338      	cbz	r0, 800872e <__sfvwrite_r+0x2be>
 80086de:	3001      	adds	r0, #1
 80086e0:	eba0 0906 	sub.w	r9, r0, r6
 80086e4:	e783      	b.n	80085ee <__sfvwrite_r+0x17e>
 80086e6:	462f      	mov	r7, r5
 80086e8:	46ab      	mov	fp, r5
 80086ea:	e757      	b.n	800859c <__sfvwrite_r+0x12c>
 80086ec:	4631      	mov	r1, r6
 80086ee:	462a      	mov	r2, r5
 80086f0:	f000 f8f4 	bl	80088dc <memmove>
 80086f4:	6823      	ldr	r3, [r4, #0]
 80086f6:	442b      	add	r3, r5
 80086f8:	6023      	str	r3, [r4, #0]
 80086fa:	4621      	mov	r1, r4
 80086fc:	4650      	mov	r0, sl
 80086fe:	f7ff fcc5 	bl	800808c <_fflush_r>
 8008702:	2800      	cmp	r0, #0
 8008704:	d08b      	beq.n	800861e <__sfvwrite_r+0x1ae>
 8008706:	e7a3      	b.n	8008650 <__sfvwrite_r+0x1e0>
 8008708:	4650      	mov	r0, sl
 800870a:	f000 fc55 	bl	8008fb8 <_realloc_r>
 800870e:	4603      	mov	r3, r0
 8008710:	2800      	cmp	r0, #0
 8008712:	f47f af39 	bne.w	8008588 <__sfvwrite_r+0x118>
 8008716:	6921      	ldr	r1, [r4, #16]
 8008718:	4650      	mov	r0, sl
 800871a:	f7ff fdb5 	bl	8008288 <_free_r>
 800871e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008722:	220c      	movs	r2, #12
 8008724:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008728:	f8ca 2000 	str.w	r2, [sl]
 800872c:	e792      	b.n	8008654 <__sfvwrite_r+0x1e4>
 800872e:	f107 0901 	add.w	r9, r7, #1
 8008732:	e75c      	b.n	80085ee <__sfvwrite_r+0x17e>
 8008734:	461a      	mov	r2, r3
 8008736:	4631      	mov	r1, r6
 8008738:	9301      	str	r3, [sp, #4]
 800873a:	f000 f8cf 	bl	80088dc <memmove>
 800873e:	9b01      	ldr	r3, [sp, #4]
 8008740:	68a1      	ldr	r1, [r4, #8]
 8008742:	6822      	ldr	r2, [r4, #0]
 8008744:	1ac9      	subs	r1, r1, r3
 8008746:	441a      	add	r2, r3
 8008748:	60a1      	str	r1, [r4, #8]
 800874a:	6022      	str	r2, [r4, #0]
 800874c:	461d      	mov	r5, r3
 800874e:	e766      	b.n	800861e <__sfvwrite_r+0x1ae>
 8008750:	230c      	movs	r3, #12
 8008752:	f8ca 3000 	str.w	r3, [sl]
 8008756:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800875a:	e77b      	b.n	8008654 <__sfvwrite_r+0x1e4>
 800875c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008760:	e76b      	b.n	800863a <__sfvwrite_r+0x1ca>
 8008762:	bf00      	nop
 8008764:	7ffffffe 	.word	0x7ffffffe
 8008768:	7ffffc00 	.word	0x7ffffc00

0800876c <_fwalk_reent>:
 800876c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008770:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8008774:	d01f      	beq.n	80087b6 <_fwalk_reent+0x4a>
 8008776:	4688      	mov	r8, r1
 8008778:	4606      	mov	r6, r0
 800877a:	f04f 0900 	mov.w	r9, #0
 800877e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8008782:	3d01      	subs	r5, #1
 8008784:	d411      	bmi.n	80087aa <_fwalk_reent+0x3e>
 8008786:	89a3      	ldrh	r3, [r4, #12]
 8008788:	2b01      	cmp	r3, #1
 800878a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800878e:	4621      	mov	r1, r4
 8008790:	4630      	mov	r0, r6
 8008792:	d906      	bls.n	80087a2 <_fwalk_reent+0x36>
 8008794:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8008798:	3301      	adds	r3, #1
 800879a:	d002      	beq.n	80087a2 <_fwalk_reent+0x36>
 800879c:	47c0      	blx	r8
 800879e:	ea49 0900 	orr.w	r9, r9, r0
 80087a2:	1c6b      	adds	r3, r5, #1
 80087a4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80087a8:	d1ed      	bne.n	8008786 <_fwalk_reent+0x1a>
 80087aa:	683f      	ldr	r7, [r7, #0]
 80087ac:	2f00      	cmp	r7, #0
 80087ae:	d1e6      	bne.n	800877e <_fwalk_reent+0x12>
 80087b0:	4648      	mov	r0, r9
 80087b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80087b6:	46b9      	mov	r9, r7
 80087b8:	4648      	mov	r0, r9
 80087ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80087be:	bf00      	nop

080087c0 <_localeconv_r>:
 80087c0:	4a04      	ldr	r2, [pc, #16]	; (80087d4 <_localeconv_r+0x14>)
 80087c2:	4b05      	ldr	r3, [pc, #20]	; (80087d8 <_localeconv_r+0x18>)
 80087c4:	6812      	ldr	r2, [r2, #0]
 80087c6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80087c8:	2800      	cmp	r0, #0
 80087ca:	bf08      	it	eq
 80087cc:	4618      	moveq	r0, r3
 80087ce:	30f0      	adds	r0, #240	; 0xf0
 80087d0:	4770      	bx	lr
 80087d2:	bf00      	nop
 80087d4:	20000030 	.word	0x20000030
 80087d8:	20000874 	.word	0x20000874

080087dc <__retarget_lock_init_recursive>:
 80087dc:	4770      	bx	lr
 80087de:	bf00      	nop

080087e0 <__retarget_lock_close_recursive>:
 80087e0:	4770      	bx	lr
 80087e2:	bf00      	nop

080087e4 <__retarget_lock_acquire_recursive>:
 80087e4:	4770      	bx	lr
 80087e6:	bf00      	nop

080087e8 <__retarget_lock_release_recursive>:
 80087e8:	4770      	bx	lr
 80087ea:	bf00      	nop

080087ec <__swhatbuf_r>:
 80087ec:	b570      	push	{r4, r5, r6, lr}
 80087ee:	460c      	mov	r4, r1
 80087f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80087f4:	2900      	cmp	r1, #0
 80087f6:	b096      	sub	sp, #88	; 0x58
 80087f8:	4615      	mov	r5, r2
 80087fa:	461e      	mov	r6, r3
 80087fc:	da0f      	bge.n	800881e <__swhatbuf_r+0x32>
 80087fe:	89a2      	ldrh	r2, [r4, #12]
 8008800:	2300      	movs	r3, #0
 8008802:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8008806:	6033      	str	r3, [r6, #0]
 8008808:	d104      	bne.n	8008814 <__swhatbuf_r+0x28>
 800880a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800880e:	602b      	str	r3, [r5, #0]
 8008810:	b016      	add	sp, #88	; 0x58
 8008812:	bd70      	pop	{r4, r5, r6, pc}
 8008814:	2240      	movs	r2, #64	; 0x40
 8008816:	4618      	mov	r0, r3
 8008818:	602a      	str	r2, [r5, #0]
 800881a:	b016      	add	sp, #88	; 0x58
 800881c:	bd70      	pop	{r4, r5, r6, pc}
 800881e:	466a      	mov	r2, sp
 8008820:	f001 f80e 	bl	8009840 <_fstat_r>
 8008824:	2800      	cmp	r0, #0
 8008826:	dbea      	blt.n	80087fe <__swhatbuf_r+0x12>
 8008828:	9b01      	ldr	r3, [sp, #4]
 800882a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800882e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8008832:	fab3 f383 	clz	r3, r3
 8008836:	095b      	lsrs	r3, r3, #5
 8008838:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800883c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008840:	6033      	str	r3, [r6, #0]
 8008842:	602a      	str	r2, [r5, #0]
 8008844:	b016      	add	sp, #88	; 0x58
 8008846:	bd70      	pop	{r4, r5, r6, pc}

08008848 <__smakebuf_r>:
 8008848:	898a      	ldrh	r2, [r1, #12]
 800884a:	0792      	lsls	r2, r2, #30
 800884c:	460b      	mov	r3, r1
 800884e:	d506      	bpl.n	800885e <__smakebuf_r+0x16>
 8008850:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8008854:	2101      	movs	r1, #1
 8008856:	601a      	str	r2, [r3, #0]
 8008858:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800885c:	4770      	bx	lr
 800885e:	b570      	push	{r4, r5, r6, lr}
 8008860:	b082      	sub	sp, #8
 8008862:	ab01      	add	r3, sp, #4
 8008864:	466a      	mov	r2, sp
 8008866:	460c      	mov	r4, r1
 8008868:	4605      	mov	r5, r0
 800886a:	f7ff ffbf 	bl	80087ec <__swhatbuf_r>
 800886e:	9900      	ldr	r1, [sp, #0]
 8008870:	4606      	mov	r6, r0
 8008872:	4628      	mov	r0, r5
 8008874:	f7fc f9de 	bl	8004c34 <_malloc_r>
 8008878:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800887c:	b1d8      	cbz	r0, 80088b6 <__smakebuf_r+0x6e>
 800887e:	4916      	ldr	r1, [pc, #88]	; (80088d8 <__smakebuf_r+0x90>)
 8008880:	63e9      	str	r1, [r5, #60]	; 0x3c
 8008882:	9a01      	ldr	r2, [sp, #4]
 8008884:	9900      	ldr	r1, [sp, #0]
 8008886:	6020      	str	r0, [r4, #0]
 8008888:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800888c:	81a3      	strh	r3, [r4, #12]
 800888e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8008892:	b91a      	cbnz	r2, 800889c <__smakebuf_r+0x54>
 8008894:	4333      	orrs	r3, r6
 8008896:	81a3      	strh	r3, [r4, #12]
 8008898:	b002      	add	sp, #8
 800889a:	bd70      	pop	{r4, r5, r6, pc}
 800889c:	4628      	mov	r0, r5
 800889e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80088a2:	f000 ffe1 	bl	8009868 <_isatty_r>
 80088a6:	b1a0      	cbz	r0, 80088d2 <__smakebuf_r+0x8a>
 80088a8:	89a3      	ldrh	r3, [r4, #12]
 80088aa:	f023 0303 	bic.w	r3, r3, #3
 80088ae:	f043 0301 	orr.w	r3, r3, #1
 80088b2:	b21b      	sxth	r3, r3
 80088b4:	e7ee      	b.n	8008894 <__smakebuf_r+0x4c>
 80088b6:	059a      	lsls	r2, r3, #22
 80088b8:	d4ee      	bmi.n	8008898 <__smakebuf_r+0x50>
 80088ba:	f023 0303 	bic.w	r3, r3, #3
 80088be:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80088c2:	f043 0302 	orr.w	r3, r3, #2
 80088c6:	2101      	movs	r1, #1
 80088c8:	81a3      	strh	r3, [r4, #12]
 80088ca:	6022      	str	r2, [r4, #0]
 80088cc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80088d0:	e7e2      	b.n	8008898 <__smakebuf_r+0x50>
 80088d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80088d6:	e7dd      	b.n	8008894 <__smakebuf_r+0x4c>
 80088d8:	08008139 	.word	0x08008139

080088dc <memmove>:
 80088dc:	4288      	cmp	r0, r1
 80088de:	b4f0      	push	{r4, r5, r6, r7}
 80088e0:	d90d      	bls.n	80088fe <memmove+0x22>
 80088e2:	188b      	adds	r3, r1, r2
 80088e4:	4283      	cmp	r3, r0
 80088e6:	d90a      	bls.n	80088fe <memmove+0x22>
 80088e8:	1884      	adds	r4, r0, r2
 80088ea:	b132      	cbz	r2, 80088fa <memmove+0x1e>
 80088ec:	4622      	mov	r2, r4
 80088ee:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80088f2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80088f6:	4299      	cmp	r1, r3
 80088f8:	d1f9      	bne.n	80088ee <memmove+0x12>
 80088fa:	bcf0      	pop	{r4, r5, r6, r7}
 80088fc:	4770      	bx	lr
 80088fe:	2a0f      	cmp	r2, #15
 8008900:	d949      	bls.n	8008996 <memmove+0xba>
 8008902:	ea40 0301 	orr.w	r3, r0, r1
 8008906:	079b      	lsls	r3, r3, #30
 8008908:	d147      	bne.n	800899a <memmove+0xbe>
 800890a:	f1a2 0310 	sub.w	r3, r2, #16
 800890e:	091b      	lsrs	r3, r3, #4
 8008910:	f101 0720 	add.w	r7, r1, #32
 8008914:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008918:	f101 0410 	add.w	r4, r1, #16
 800891c:	f100 0510 	add.w	r5, r0, #16
 8008920:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008924:	f845 6c10 	str.w	r6, [r5, #-16]
 8008928:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800892c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008930:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008934:	f845 6c08 	str.w	r6, [r5, #-8]
 8008938:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800893c:	f845 6c04 	str.w	r6, [r5, #-4]
 8008940:	3410      	adds	r4, #16
 8008942:	42bc      	cmp	r4, r7
 8008944:	f105 0510 	add.w	r5, r5, #16
 8008948:	d1ea      	bne.n	8008920 <memmove+0x44>
 800894a:	3301      	adds	r3, #1
 800894c:	f002 050f 	and.w	r5, r2, #15
 8008950:	011b      	lsls	r3, r3, #4
 8008952:	2d03      	cmp	r5, #3
 8008954:	4419      	add	r1, r3
 8008956:	4403      	add	r3, r0
 8008958:	d921      	bls.n	800899e <memmove+0xc2>
 800895a:	1f1f      	subs	r7, r3, #4
 800895c:	460e      	mov	r6, r1
 800895e:	462c      	mov	r4, r5
 8008960:	3c04      	subs	r4, #4
 8008962:	f856 cb04 	ldr.w	ip, [r6], #4
 8008966:	f847 cf04 	str.w	ip, [r7, #4]!
 800896a:	2c03      	cmp	r4, #3
 800896c:	d8f8      	bhi.n	8008960 <memmove+0x84>
 800896e:	1f2c      	subs	r4, r5, #4
 8008970:	f024 0403 	bic.w	r4, r4, #3
 8008974:	3404      	adds	r4, #4
 8008976:	4423      	add	r3, r4
 8008978:	4421      	add	r1, r4
 800897a:	f002 0203 	and.w	r2, r2, #3
 800897e:	2a00      	cmp	r2, #0
 8008980:	d0bb      	beq.n	80088fa <memmove+0x1e>
 8008982:	3b01      	subs	r3, #1
 8008984:	440a      	add	r2, r1
 8008986:	f811 4b01 	ldrb.w	r4, [r1], #1
 800898a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800898e:	4291      	cmp	r1, r2
 8008990:	d1f9      	bne.n	8008986 <memmove+0xaa>
 8008992:	bcf0      	pop	{r4, r5, r6, r7}
 8008994:	4770      	bx	lr
 8008996:	4603      	mov	r3, r0
 8008998:	e7f1      	b.n	800897e <memmove+0xa2>
 800899a:	4603      	mov	r3, r0
 800899c:	e7f1      	b.n	8008982 <memmove+0xa6>
 800899e:	462a      	mov	r2, r5
 80089a0:	e7ed      	b.n	800897e <memmove+0xa2>
 80089a2:	bf00      	nop

080089a4 <_Balloc>:
 80089a4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80089a6:	b570      	push	{r4, r5, r6, lr}
 80089a8:	4605      	mov	r5, r0
 80089aa:	460c      	mov	r4, r1
 80089ac:	b14b      	cbz	r3, 80089c2 <_Balloc+0x1e>
 80089ae:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80089b2:	b180      	cbz	r0, 80089d6 <_Balloc+0x32>
 80089b4:	6802      	ldr	r2, [r0, #0]
 80089b6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80089ba:	2300      	movs	r3, #0
 80089bc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80089c0:	bd70      	pop	{r4, r5, r6, pc}
 80089c2:	2221      	movs	r2, #33	; 0x21
 80089c4:	2104      	movs	r1, #4
 80089c6:	f000 fe0b 	bl	80095e0 <_calloc_r>
 80089ca:	4603      	mov	r3, r0
 80089cc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80089ce:	2800      	cmp	r0, #0
 80089d0:	d1ed      	bne.n	80089ae <_Balloc+0xa>
 80089d2:	2000      	movs	r0, #0
 80089d4:	bd70      	pop	{r4, r5, r6, pc}
 80089d6:	2101      	movs	r1, #1
 80089d8:	fa01 f604 	lsl.w	r6, r1, r4
 80089dc:	1d72      	adds	r2, r6, #5
 80089de:	4628      	mov	r0, r5
 80089e0:	0092      	lsls	r2, r2, #2
 80089e2:	f000 fdfd 	bl	80095e0 <_calloc_r>
 80089e6:	2800      	cmp	r0, #0
 80089e8:	d0f3      	beq.n	80089d2 <_Balloc+0x2e>
 80089ea:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80089ee:	e7e4      	b.n	80089ba <_Balloc+0x16>

080089f0 <_Bfree>:
 80089f0:	b131      	cbz	r1, 8008a00 <_Bfree+0x10>
 80089f2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80089f4:	684a      	ldr	r2, [r1, #4]
 80089f6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80089fa:	6008      	str	r0, [r1, #0]
 80089fc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8008a00:	4770      	bx	lr
 8008a02:	bf00      	nop

08008a04 <__multadd>:
 8008a04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008a06:	690c      	ldr	r4, [r1, #16]
 8008a08:	b083      	sub	sp, #12
 8008a0a:	460d      	mov	r5, r1
 8008a0c:	4606      	mov	r6, r0
 8008a0e:	f101 0c14 	add.w	ip, r1, #20
 8008a12:	2700      	movs	r7, #0
 8008a14:	f8dc 0000 	ldr.w	r0, [ip]
 8008a18:	b281      	uxth	r1, r0
 8008a1a:	fb02 3301 	mla	r3, r2, r1, r3
 8008a1e:	0c01      	lsrs	r1, r0, #16
 8008a20:	0c18      	lsrs	r0, r3, #16
 8008a22:	fb02 0101 	mla	r1, r2, r1, r0
 8008a26:	b29b      	uxth	r3, r3
 8008a28:	3701      	adds	r7, #1
 8008a2a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8008a2e:	42bc      	cmp	r4, r7
 8008a30:	f84c 3b04 	str.w	r3, [ip], #4
 8008a34:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8008a38:	dcec      	bgt.n	8008a14 <__multadd+0x10>
 8008a3a:	b13b      	cbz	r3, 8008a4c <__multadd+0x48>
 8008a3c:	68aa      	ldr	r2, [r5, #8]
 8008a3e:	42a2      	cmp	r2, r4
 8008a40:	dd07      	ble.n	8008a52 <__multadd+0x4e>
 8008a42:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8008a46:	3401      	adds	r4, #1
 8008a48:	6153      	str	r3, [r2, #20]
 8008a4a:	612c      	str	r4, [r5, #16]
 8008a4c:	4628      	mov	r0, r5
 8008a4e:	b003      	add	sp, #12
 8008a50:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008a52:	6869      	ldr	r1, [r5, #4]
 8008a54:	9301      	str	r3, [sp, #4]
 8008a56:	3101      	adds	r1, #1
 8008a58:	4630      	mov	r0, r6
 8008a5a:	f7ff ffa3 	bl	80089a4 <_Balloc>
 8008a5e:	692a      	ldr	r2, [r5, #16]
 8008a60:	3202      	adds	r2, #2
 8008a62:	f105 010c 	add.w	r1, r5, #12
 8008a66:	4607      	mov	r7, r0
 8008a68:	0092      	lsls	r2, r2, #2
 8008a6a:	300c      	adds	r0, #12
 8008a6c:	f7f8 fa14 	bl	8000e98 <memcpy>
 8008a70:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8008a72:	6869      	ldr	r1, [r5, #4]
 8008a74:	9b01      	ldr	r3, [sp, #4]
 8008a76:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8008a7a:	6028      	str	r0, [r5, #0]
 8008a7c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8008a80:	463d      	mov	r5, r7
 8008a82:	e7de      	b.n	8008a42 <__multadd+0x3e>

08008a84 <__hi0bits>:
 8008a84:	0c02      	lsrs	r2, r0, #16
 8008a86:	0412      	lsls	r2, r2, #16
 8008a88:	4603      	mov	r3, r0
 8008a8a:	b9c2      	cbnz	r2, 8008abe <__hi0bits+0x3a>
 8008a8c:	0403      	lsls	r3, r0, #16
 8008a8e:	2010      	movs	r0, #16
 8008a90:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8008a94:	bf04      	itt	eq
 8008a96:	021b      	lsleq	r3, r3, #8
 8008a98:	3008      	addeq	r0, #8
 8008a9a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8008a9e:	bf04      	itt	eq
 8008aa0:	011b      	lsleq	r3, r3, #4
 8008aa2:	3004      	addeq	r0, #4
 8008aa4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8008aa8:	bf04      	itt	eq
 8008aaa:	009b      	lsleq	r3, r3, #2
 8008aac:	3002      	addeq	r0, #2
 8008aae:	2b00      	cmp	r3, #0
 8008ab0:	db04      	blt.n	8008abc <__hi0bits+0x38>
 8008ab2:	005b      	lsls	r3, r3, #1
 8008ab4:	d501      	bpl.n	8008aba <__hi0bits+0x36>
 8008ab6:	3001      	adds	r0, #1
 8008ab8:	4770      	bx	lr
 8008aba:	2020      	movs	r0, #32
 8008abc:	4770      	bx	lr
 8008abe:	2000      	movs	r0, #0
 8008ac0:	e7e6      	b.n	8008a90 <__hi0bits+0xc>
 8008ac2:	bf00      	nop

08008ac4 <__lo0bits>:
 8008ac4:	6803      	ldr	r3, [r0, #0]
 8008ac6:	f013 0207 	ands.w	r2, r3, #7
 8008aca:	4601      	mov	r1, r0
 8008acc:	d007      	beq.n	8008ade <__lo0bits+0x1a>
 8008ace:	07da      	lsls	r2, r3, #31
 8008ad0:	d41f      	bmi.n	8008b12 <__lo0bits+0x4e>
 8008ad2:	0798      	lsls	r0, r3, #30
 8008ad4:	d51f      	bpl.n	8008b16 <__lo0bits+0x52>
 8008ad6:	085b      	lsrs	r3, r3, #1
 8008ad8:	600b      	str	r3, [r1, #0]
 8008ada:	2001      	movs	r0, #1
 8008adc:	4770      	bx	lr
 8008ade:	b298      	uxth	r0, r3
 8008ae0:	b1a0      	cbz	r0, 8008b0c <__lo0bits+0x48>
 8008ae2:	4610      	mov	r0, r2
 8008ae4:	f013 0fff 	tst.w	r3, #255	; 0xff
 8008ae8:	bf04      	itt	eq
 8008aea:	0a1b      	lsreq	r3, r3, #8
 8008aec:	3008      	addeq	r0, #8
 8008aee:	071a      	lsls	r2, r3, #28
 8008af0:	bf04      	itt	eq
 8008af2:	091b      	lsreq	r3, r3, #4
 8008af4:	3004      	addeq	r0, #4
 8008af6:	079a      	lsls	r2, r3, #30
 8008af8:	bf04      	itt	eq
 8008afa:	089b      	lsreq	r3, r3, #2
 8008afc:	3002      	addeq	r0, #2
 8008afe:	07da      	lsls	r2, r3, #31
 8008b00:	d402      	bmi.n	8008b08 <__lo0bits+0x44>
 8008b02:	085b      	lsrs	r3, r3, #1
 8008b04:	d00b      	beq.n	8008b1e <__lo0bits+0x5a>
 8008b06:	3001      	adds	r0, #1
 8008b08:	600b      	str	r3, [r1, #0]
 8008b0a:	4770      	bx	lr
 8008b0c:	0c1b      	lsrs	r3, r3, #16
 8008b0e:	2010      	movs	r0, #16
 8008b10:	e7e8      	b.n	8008ae4 <__lo0bits+0x20>
 8008b12:	2000      	movs	r0, #0
 8008b14:	4770      	bx	lr
 8008b16:	089b      	lsrs	r3, r3, #2
 8008b18:	600b      	str	r3, [r1, #0]
 8008b1a:	2002      	movs	r0, #2
 8008b1c:	4770      	bx	lr
 8008b1e:	2020      	movs	r0, #32
 8008b20:	4770      	bx	lr
 8008b22:	bf00      	nop

08008b24 <__i2b>:
 8008b24:	b510      	push	{r4, lr}
 8008b26:	460c      	mov	r4, r1
 8008b28:	2101      	movs	r1, #1
 8008b2a:	f7ff ff3b 	bl	80089a4 <_Balloc>
 8008b2e:	2201      	movs	r2, #1
 8008b30:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8008b34:	bd10      	pop	{r4, pc}
 8008b36:	bf00      	nop

08008b38 <__multiply>:
 8008b38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008b3c:	690e      	ldr	r6, [r1, #16]
 8008b3e:	6914      	ldr	r4, [r2, #16]
 8008b40:	42a6      	cmp	r6, r4
 8008b42:	b083      	sub	sp, #12
 8008b44:	460f      	mov	r7, r1
 8008b46:	4615      	mov	r5, r2
 8008b48:	da04      	bge.n	8008b54 <__multiply+0x1c>
 8008b4a:	4632      	mov	r2, r6
 8008b4c:	462f      	mov	r7, r5
 8008b4e:	4626      	mov	r6, r4
 8008b50:	460d      	mov	r5, r1
 8008b52:	4614      	mov	r4, r2
 8008b54:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8008b58:	eb06 0804 	add.w	r8, r6, r4
 8008b5c:	4543      	cmp	r3, r8
 8008b5e:	bfb8      	it	lt
 8008b60:	3101      	addlt	r1, #1
 8008b62:	f7ff ff1f 	bl	80089a4 <_Balloc>
 8008b66:	f100 0914 	add.w	r9, r0, #20
 8008b6a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8008b6e:	45f1      	cmp	r9, lr
 8008b70:	9000      	str	r0, [sp, #0]
 8008b72:	d205      	bcs.n	8008b80 <__multiply+0x48>
 8008b74:	464b      	mov	r3, r9
 8008b76:	2200      	movs	r2, #0
 8008b78:	f843 2b04 	str.w	r2, [r3], #4
 8008b7c:	459e      	cmp	lr, r3
 8008b7e:	d8fb      	bhi.n	8008b78 <__multiply+0x40>
 8008b80:	f105 0a14 	add.w	sl, r5, #20
 8008b84:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8008b88:	f107 0314 	add.w	r3, r7, #20
 8008b8c:	45a2      	cmp	sl, r4
 8008b8e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8008b92:	d261      	bcs.n	8008c58 <__multiply+0x120>
 8008b94:	1b64      	subs	r4, r4, r5
 8008b96:	3c15      	subs	r4, #21
 8008b98:	f024 0403 	bic.w	r4, r4, #3
 8008b9c:	f8cd e004 	str.w	lr, [sp, #4]
 8008ba0:	44a2      	add	sl, r4
 8008ba2:	f105 0210 	add.w	r2, r5, #16
 8008ba6:	469e      	mov	lr, r3
 8008ba8:	e005      	b.n	8008bb6 <__multiply+0x7e>
 8008baa:	0c2d      	lsrs	r5, r5, #16
 8008bac:	d12b      	bne.n	8008c06 <__multiply+0xce>
 8008bae:	4592      	cmp	sl, r2
 8008bb0:	f109 0904 	add.w	r9, r9, #4
 8008bb4:	d04e      	beq.n	8008c54 <__multiply+0x11c>
 8008bb6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8008bba:	fa1f fb85 	uxth.w	fp, r5
 8008bbe:	f1bb 0f00 	cmp.w	fp, #0
 8008bc2:	d0f2      	beq.n	8008baa <__multiply+0x72>
 8008bc4:	4677      	mov	r7, lr
 8008bc6:	464e      	mov	r6, r9
 8008bc8:	2000      	movs	r0, #0
 8008bca:	e000      	b.n	8008bce <__multiply+0x96>
 8008bcc:	4626      	mov	r6, r4
 8008bce:	f857 1b04 	ldr.w	r1, [r7], #4
 8008bd2:	6834      	ldr	r4, [r6, #0]
 8008bd4:	b28b      	uxth	r3, r1
 8008bd6:	b2a5      	uxth	r5, r4
 8008bd8:	0c09      	lsrs	r1, r1, #16
 8008bda:	0c24      	lsrs	r4, r4, #16
 8008bdc:	fb0b 5303 	mla	r3, fp, r3, r5
 8008be0:	4403      	add	r3, r0
 8008be2:	fb0b 4001 	mla	r0, fp, r1, r4
 8008be6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8008bea:	4634      	mov	r4, r6
 8008bec:	b29b      	uxth	r3, r3
 8008bee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8008bf2:	45bc      	cmp	ip, r7
 8008bf4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8008bf8:	f844 3b04 	str.w	r3, [r4], #4
 8008bfc:	d8e6      	bhi.n	8008bcc <__multiply+0x94>
 8008bfe:	6070      	str	r0, [r6, #4]
 8008c00:	6815      	ldr	r5, [r2, #0]
 8008c02:	0c2d      	lsrs	r5, r5, #16
 8008c04:	d0d3      	beq.n	8008bae <__multiply+0x76>
 8008c06:	f8d9 3000 	ldr.w	r3, [r9]
 8008c0a:	4676      	mov	r6, lr
 8008c0c:	4618      	mov	r0, r3
 8008c0e:	46cb      	mov	fp, r9
 8008c10:	2100      	movs	r1, #0
 8008c12:	e000      	b.n	8008c16 <__multiply+0xde>
 8008c14:	46a3      	mov	fp, r4
 8008c16:	8834      	ldrh	r4, [r6, #0]
 8008c18:	0c00      	lsrs	r0, r0, #16
 8008c1a:	fb05 0004 	mla	r0, r5, r4, r0
 8008c1e:	4401      	add	r1, r0
 8008c20:	b29b      	uxth	r3, r3
 8008c22:	465c      	mov	r4, fp
 8008c24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8008c28:	f844 3b04 	str.w	r3, [r4], #4
 8008c2c:	f856 3b04 	ldr.w	r3, [r6], #4
 8008c30:	f8db 0004 	ldr.w	r0, [fp, #4]
 8008c34:	0c1b      	lsrs	r3, r3, #16
 8008c36:	b287      	uxth	r7, r0
 8008c38:	fb05 7303 	mla	r3, r5, r3, r7
 8008c3c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8008c40:	45b4      	cmp	ip, r6
 8008c42:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8008c46:	d8e5      	bhi.n	8008c14 <__multiply+0xdc>
 8008c48:	4592      	cmp	sl, r2
 8008c4a:	f8cb 3004 	str.w	r3, [fp, #4]
 8008c4e:	f109 0904 	add.w	r9, r9, #4
 8008c52:	d1b0      	bne.n	8008bb6 <__multiply+0x7e>
 8008c54:	f8dd e004 	ldr.w	lr, [sp, #4]
 8008c58:	f1b8 0f00 	cmp.w	r8, #0
 8008c5c:	dd0b      	ble.n	8008c76 <__multiply+0x13e>
 8008c5e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8008c62:	f1ae 0e04 	sub.w	lr, lr, #4
 8008c66:	b11b      	cbz	r3, 8008c70 <__multiply+0x138>
 8008c68:	e005      	b.n	8008c76 <__multiply+0x13e>
 8008c6a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8008c6e:	b913      	cbnz	r3, 8008c76 <__multiply+0x13e>
 8008c70:	f1b8 0801 	subs.w	r8, r8, #1
 8008c74:	d1f9      	bne.n	8008c6a <__multiply+0x132>
 8008c76:	9800      	ldr	r0, [sp, #0]
 8008c78:	f8c0 8010 	str.w	r8, [r0, #16]
 8008c7c:	b003      	add	sp, #12
 8008c7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008c82:	bf00      	nop

08008c84 <__pow5mult>:
 8008c84:	f012 0303 	ands.w	r3, r2, #3
 8008c88:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008c8c:	4614      	mov	r4, r2
 8008c8e:	4607      	mov	r7, r0
 8008c90:	d12e      	bne.n	8008cf0 <__pow5mult+0x6c>
 8008c92:	460d      	mov	r5, r1
 8008c94:	10a4      	asrs	r4, r4, #2
 8008c96:	d01c      	beq.n	8008cd2 <__pow5mult+0x4e>
 8008c98:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8008c9a:	b396      	cbz	r6, 8008d02 <__pow5mult+0x7e>
 8008c9c:	07e3      	lsls	r3, r4, #31
 8008c9e:	f04f 0800 	mov.w	r8, #0
 8008ca2:	d406      	bmi.n	8008cb2 <__pow5mult+0x2e>
 8008ca4:	1064      	asrs	r4, r4, #1
 8008ca6:	d014      	beq.n	8008cd2 <__pow5mult+0x4e>
 8008ca8:	6830      	ldr	r0, [r6, #0]
 8008caa:	b1a8      	cbz	r0, 8008cd8 <__pow5mult+0x54>
 8008cac:	4606      	mov	r6, r0
 8008cae:	07e3      	lsls	r3, r4, #31
 8008cb0:	d5f8      	bpl.n	8008ca4 <__pow5mult+0x20>
 8008cb2:	4632      	mov	r2, r6
 8008cb4:	4629      	mov	r1, r5
 8008cb6:	4638      	mov	r0, r7
 8008cb8:	f7ff ff3e 	bl	8008b38 <__multiply>
 8008cbc:	b1b5      	cbz	r5, 8008cec <__pow5mult+0x68>
 8008cbe:	686a      	ldr	r2, [r5, #4]
 8008cc0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008cc2:	1064      	asrs	r4, r4, #1
 8008cc4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008cc8:	6029      	str	r1, [r5, #0]
 8008cca:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8008cce:	4605      	mov	r5, r0
 8008cd0:	d1ea      	bne.n	8008ca8 <__pow5mult+0x24>
 8008cd2:	4628      	mov	r0, r5
 8008cd4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008cd8:	4632      	mov	r2, r6
 8008cda:	4631      	mov	r1, r6
 8008cdc:	4638      	mov	r0, r7
 8008cde:	f7ff ff2b 	bl	8008b38 <__multiply>
 8008ce2:	6030      	str	r0, [r6, #0]
 8008ce4:	f8c0 8000 	str.w	r8, [r0]
 8008ce8:	4606      	mov	r6, r0
 8008cea:	e7e0      	b.n	8008cae <__pow5mult+0x2a>
 8008cec:	4605      	mov	r5, r0
 8008cee:	e7d9      	b.n	8008ca4 <__pow5mult+0x20>
 8008cf0:	3b01      	subs	r3, #1
 8008cf2:	4a0b      	ldr	r2, [pc, #44]	; (8008d20 <__pow5mult+0x9c>)
 8008cf4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8008cf8:	2300      	movs	r3, #0
 8008cfa:	f7ff fe83 	bl	8008a04 <__multadd>
 8008cfe:	4605      	mov	r5, r0
 8008d00:	e7c8      	b.n	8008c94 <__pow5mult+0x10>
 8008d02:	2101      	movs	r1, #1
 8008d04:	4638      	mov	r0, r7
 8008d06:	f7ff fe4d 	bl	80089a4 <_Balloc>
 8008d0a:	f240 2371 	movw	r3, #625	; 0x271
 8008d0e:	6143      	str	r3, [r0, #20]
 8008d10:	2201      	movs	r2, #1
 8008d12:	2300      	movs	r3, #0
 8008d14:	6102      	str	r2, [r0, #16]
 8008d16:	4606      	mov	r6, r0
 8008d18:	64b8      	str	r0, [r7, #72]	; 0x48
 8008d1a:	6003      	str	r3, [r0, #0]
 8008d1c:	e7be      	b.n	8008c9c <__pow5mult+0x18>
 8008d1e:	bf00      	nop
 8008d20:	08009fa0 	.word	0x08009fa0

08008d24 <__lshift>:
 8008d24:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008d28:	4691      	mov	r9, r2
 8008d2a:	690a      	ldr	r2, [r1, #16]
 8008d2c:	460e      	mov	r6, r1
 8008d2e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8008d32:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8008d36:	eb04 0802 	add.w	r8, r4, r2
 8008d3a:	f108 0501 	add.w	r5, r8, #1
 8008d3e:	429d      	cmp	r5, r3
 8008d40:	4607      	mov	r7, r0
 8008d42:	dd04      	ble.n	8008d4e <__lshift+0x2a>
 8008d44:	005b      	lsls	r3, r3, #1
 8008d46:	429d      	cmp	r5, r3
 8008d48:	f101 0101 	add.w	r1, r1, #1
 8008d4c:	dcfa      	bgt.n	8008d44 <__lshift+0x20>
 8008d4e:	4638      	mov	r0, r7
 8008d50:	f7ff fe28 	bl	80089a4 <_Balloc>
 8008d54:	2c00      	cmp	r4, #0
 8008d56:	f100 0314 	add.w	r3, r0, #20
 8008d5a:	dd37      	ble.n	8008dcc <__lshift+0xa8>
 8008d5c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008d60:	2200      	movs	r2, #0
 8008d62:	f843 2b04 	str.w	r2, [r3], #4
 8008d66:	428b      	cmp	r3, r1
 8008d68:	d1fb      	bne.n	8008d62 <__lshift+0x3e>
 8008d6a:	6934      	ldr	r4, [r6, #16]
 8008d6c:	f106 0314 	add.w	r3, r6, #20
 8008d70:	f019 091f 	ands.w	r9, r9, #31
 8008d74:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8008d78:	d020      	beq.n	8008dbc <__lshift+0x98>
 8008d7a:	f1c9 0e20 	rsb	lr, r9, #32
 8008d7e:	2200      	movs	r2, #0
 8008d80:	e000      	b.n	8008d84 <__lshift+0x60>
 8008d82:	4651      	mov	r1, sl
 8008d84:	681c      	ldr	r4, [r3, #0]
 8008d86:	468a      	mov	sl, r1
 8008d88:	fa04 f409 	lsl.w	r4, r4, r9
 8008d8c:	4314      	orrs	r4, r2
 8008d8e:	f84a 4b04 	str.w	r4, [sl], #4
 8008d92:	f853 2b04 	ldr.w	r2, [r3], #4
 8008d96:	4563      	cmp	r3, ip
 8008d98:	fa22 f20e 	lsr.w	r2, r2, lr
 8008d9c:	d3f1      	bcc.n	8008d82 <__lshift+0x5e>
 8008d9e:	604a      	str	r2, [r1, #4]
 8008da0:	b10a      	cbz	r2, 8008da6 <__lshift+0x82>
 8008da2:	f108 0502 	add.w	r5, r8, #2
 8008da6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008da8:	6872      	ldr	r2, [r6, #4]
 8008daa:	3d01      	subs	r5, #1
 8008dac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008db0:	6105      	str	r5, [r0, #16]
 8008db2:	6031      	str	r1, [r6, #0]
 8008db4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8008db8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008dbc:	3904      	subs	r1, #4
 8008dbe:	f853 2b04 	ldr.w	r2, [r3], #4
 8008dc2:	f841 2f04 	str.w	r2, [r1, #4]!
 8008dc6:	459c      	cmp	ip, r3
 8008dc8:	d8f9      	bhi.n	8008dbe <__lshift+0x9a>
 8008dca:	e7ec      	b.n	8008da6 <__lshift+0x82>
 8008dcc:	4619      	mov	r1, r3
 8008dce:	e7cc      	b.n	8008d6a <__lshift+0x46>

08008dd0 <__mcmp>:
 8008dd0:	b430      	push	{r4, r5}
 8008dd2:	690b      	ldr	r3, [r1, #16]
 8008dd4:	4605      	mov	r5, r0
 8008dd6:	6900      	ldr	r0, [r0, #16]
 8008dd8:	1ac0      	subs	r0, r0, r3
 8008dda:	d10f      	bne.n	8008dfc <__mcmp+0x2c>
 8008ddc:	009b      	lsls	r3, r3, #2
 8008dde:	3514      	adds	r5, #20
 8008de0:	3114      	adds	r1, #20
 8008de2:	4419      	add	r1, r3
 8008de4:	442b      	add	r3, r5
 8008de6:	e001      	b.n	8008dec <__mcmp+0x1c>
 8008de8:	429d      	cmp	r5, r3
 8008dea:	d207      	bcs.n	8008dfc <__mcmp+0x2c>
 8008dec:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8008df0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8008df4:	4294      	cmp	r4, r2
 8008df6:	d0f7      	beq.n	8008de8 <__mcmp+0x18>
 8008df8:	d302      	bcc.n	8008e00 <__mcmp+0x30>
 8008dfa:	2001      	movs	r0, #1
 8008dfc:	bc30      	pop	{r4, r5}
 8008dfe:	4770      	bx	lr
 8008e00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008e04:	e7fa      	b.n	8008dfc <__mcmp+0x2c>
 8008e06:	bf00      	nop

08008e08 <__mdiff>:
 8008e08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008e0c:	6913      	ldr	r3, [r2, #16]
 8008e0e:	690d      	ldr	r5, [r1, #16]
 8008e10:	1aed      	subs	r5, r5, r3
 8008e12:	2d00      	cmp	r5, #0
 8008e14:	460e      	mov	r6, r1
 8008e16:	4690      	mov	r8, r2
 8008e18:	f101 0414 	add.w	r4, r1, #20
 8008e1c:	f102 0714 	add.w	r7, r2, #20
 8008e20:	d114      	bne.n	8008e4c <__mdiff+0x44>
 8008e22:	009b      	lsls	r3, r3, #2
 8008e24:	18e2      	adds	r2, r4, r3
 8008e26:	443b      	add	r3, r7
 8008e28:	e001      	b.n	8008e2e <__mdiff+0x26>
 8008e2a:	42a2      	cmp	r2, r4
 8008e2c:	d959      	bls.n	8008ee2 <__mdiff+0xda>
 8008e2e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8008e32:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8008e36:	458c      	cmp	ip, r1
 8008e38:	d0f7      	beq.n	8008e2a <__mdiff+0x22>
 8008e3a:	d209      	bcs.n	8008e50 <__mdiff+0x48>
 8008e3c:	4622      	mov	r2, r4
 8008e3e:	4633      	mov	r3, r6
 8008e40:	463c      	mov	r4, r7
 8008e42:	4646      	mov	r6, r8
 8008e44:	4617      	mov	r7, r2
 8008e46:	4698      	mov	r8, r3
 8008e48:	2501      	movs	r5, #1
 8008e4a:	e001      	b.n	8008e50 <__mdiff+0x48>
 8008e4c:	dbf6      	blt.n	8008e3c <__mdiff+0x34>
 8008e4e:	2500      	movs	r5, #0
 8008e50:	6871      	ldr	r1, [r6, #4]
 8008e52:	f7ff fda7 	bl	80089a4 <_Balloc>
 8008e56:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8008e5a:	6936      	ldr	r6, [r6, #16]
 8008e5c:	60c5      	str	r5, [r0, #12]
 8008e5e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8008e62:	46bc      	mov	ip, r7
 8008e64:	f100 0514 	add.w	r5, r0, #20
 8008e68:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8008e6c:	2300      	movs	r3, #0
 8008e6e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8008e72:	f854 8b04 	ldr.w	r8, [r4], #4
 8008e76:	b28a      	uxth	r2, r1
 8008e78:	fa13 f388 	uxtah	r3, r3, r8
 8008e7c:	0c09      	lsrs	r1, r1, #16
 8008e7e:	1a9a      	subs	r2, r3, r2
 8008e80:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8008e84:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8008e88:	b292      	uxth	r2, r2
 8008e8a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8008e8e:	45e6      	cmp	lr, ip
 8008e90:	f845 2b04 	str.w	r2, [r5], #4
 8008e94:	ea4f 4323 	mov.w	r3, r3, asr #16
 8008e98:	d8e9      	bhi.n	8008e6e <__mdiff+0x66>
 8008e9a:	42a7      	cmp	r7, r4
 8008e9c:	d917      	bls.n	8008ece <__mdiff+0xc6>
 8008e9e:	46ae      	mov	lr, r5
 8008ea0:	46a4      	mov	ip, r4
 8008ea2:	f85c 2b04 	ldr.w	r2, [ip], #4
 8008ea6:	fa13 f382 	uxtah	r3, r3, r2
 8008eaa:	1419      	asrs	r1, r3, #16
 8008eac:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8008eb0:	b29b      	uxth	r3, r3
 8008eb2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8008eb6:	4567      	cmp	r7, ip
 8008eb8:	f84e 2b04 	str.w	r2, [lr], #4
 8008ebc:	ea4f 4321 	mov.w	r3, r1, asr #16
 8008ec0:	d8ef      	bhi.n	8008ea2 <__mdiff+0x9a>
 8008ec2:	43e4      	mvns	r4, r4
 8008ec4:	4427      	add	r7, r4
 8008ec6:	f027 0703 	bic.w	r7, r7, #3
 8008eca:	3704      	adds	r7, #4
 8008ecc:	443d      	add	r5, r7
 8008ece:	3d04      	subs	r5, #4
 8008ed0:	b922      	cbnz	r2, 8008edc <__mdiff+0xd4>
 8008ed2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8008ed6:	3e01      	subs	r6, #1
 8008ed8:	2b00      	cmp	r3, #0
 8008eda:	d0fa      	beq.n	8008ed2 <__mdiff+0xca>
 8008edc:	6106      	str	r6, [r0, #16]
 8008ede:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008ee2:	2100      	movs	r1, #0
 8008ee4:	f7ff fd5e 	bl	80089a4 <_Balloc>
 8008ee8:	2201      	movs	r2, #1
 8008eea:	2300      	movs	r3, #0
 8008eec:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8008ef0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08008ef4 <__d2b>:
 8008ef4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8008ef8:	460f      	mov	r7, r1
 8008efa:	b083      	sub	sp, #12
 8008efc:	2101      	movs	r1, #1
 8008efe:	ec55 4b10 	vmov	r4, r5, d0
 8008f02:	4616      	mov	r6, r2
 8008f04:	f7ff fd4e 	bl	80089a4 <_Balloc>
 8008f08:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8008f0c:	4681      	mov	r9, r0
 8008f0e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8008f12:	f1b8 0f00 	cmp.w	r8, #0
 8008f16:	d001      	beq.n	8008f1c <__d2b+0x28>
 8008f18:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8008f1c:	2c00      	cmp	r4, #0
 8008f1e:	9301      	str	r3, [sp, #4]
 8008f20:	d024      	beq.n	8008f6c <__d2b+0x78>
 8008f22:	a802      	add	r0, sp, #8
 8008f24:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008f28:	f7ff fdcc 	bl	8008ac4 <__lo0bits>
 8008f2c:	2800      	cmp	r0, #0
 8008f2e:	d136      	bne.n	8008f9e <__d2b+0xaa>
 8008f30:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008f34:	f8c9 2014 	str.w	r2, [r9, #20]
 8008f38:	2b00      	cmp	r3, #0
 8008f3a:	bf0c      	ite	eq
 8008f3c:	2101      	moveq	r1, #1
 8008f3e:	2102      	movne	r1, #2
 8008f40:	f8c9 3018 	str.w	r3, [r9, #24]
 8008f44:	f8c9 1010 	str.w	r1, [r9, #16]
 8008f48:	f1b8 0f00 	cmp.w	r8, #0
 8008f4c:	d11b      	bne.n	8008f86 <__d2b+0x92>
 8008f4e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8008f52:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8008f56:	6038      	str	r0, [r7, #0]
 8008f58:	6918      	ldr	r0, [r3, #16]
 8008f5a:	f7ff fd93 	bl	8008a84 <__hi0bits>
 8008f5e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8008f62:	6030      	str	r0, [r6, #0]
 8008f64:	4648      	mov	r0, r9
 8008f66:	b003      	add	sp, #12
 8008f68:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008f6c:	a801      	add	r0, sp, #4
 8008f6e:	f7ff fda9 	bl	8008ac4 <__lo0bits>
 8008f72:	9b01      	ldr	r3, [sp, #4]
 8008f74:	f8c9 3014 	str.w	r3, [r9, #20]
 8008f78:	2101      	movs	r1, #1
 8008f7a:	3020      	adds	r0, #32
 8008f7c:	f8c9 1010 	str.w	r1, [r9, #16]
 8008f80:	f1b8 0f00 	cmp.w	r8, #0
 8008f84:	d0e3      	beq.n	8008f4e <__d2b+0x5a>
 8008f86:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8008f8a:	eb08 0300 	add.w	r3, r8, r0
 8008f8e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8008f92:	603b      	str	r3, [r7, #0]
 8008f94:	6030      	str	r0, [r6, #0]
 8008f96:	4648      	mov	r0, r9
 8008f98:	b003      	add	sp, #12
 8008f9a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008f9e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8008fa2:	f1c0 0220 	rsb	r2, r0, #32
 8008fa6:	fa03 f202 	lsl.w	r2, r3, r2
 8008faa:	430a      	orrs	r2, r1
 8008fac:	40c3      	lsrs	r3, r0
 8008fae:	9301      	str	r3, [sp, #4]
 8008fb0:	f8c9 2014 	str.w	r2, [r9, #20]
 8008fb4:	e7c0      	b.n	8008f38 <__d2b+0x44>
 8008fb6:	bf00      	nop

08008fb8 <_realloc_r>:
 8008fb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008fbc:	4692      	mov	sl, r2
 8008fbe:	b083      	sub	sp, #12
 8008fc0:	2900      	cmp	r1, #0
 8008fc2:	f000 80a1 	beq.w	8009108 <_realloc_r+0x150>
 8008fc6:	460d      	mov	r5, r1
 8008fc8:	4680      	mov	r8, r0
 8008fca:	f10a 040b 	add.w	r4, sl, #11
 8008fce:	f7fc f91f 	bl	8005210 <__malloc_lock>
 8008fd2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8008fd6:	2c16      	cmp	r4, #22
 8008fd8:	f022 0603 	bic.w	r6, r2, #3
 8008fdc:	f1a5 0708 	sub.w	r7, r5, #8
 8008fe0:	d83e      	bhi.n	8009060 <_realloc_r+0xa8>
 8008fe2:	2410      	movs	r4, #16
 8008fe4:	4621      	mov	r1, r4
 8008fe6:	45a2      	cmp	sl, r4
 8008fe8:	d83f      	bhi.n	800906a <_realloc_r+0xb2>
 8008fea:	428e      	cmp	r6, r1
 8008fec:	eb07 0906 	add.w	r9, r7, r6
 8008ff0:	da74      	bge.n	80090dc <_realloc_r+0x124>
 8008ff2:	4bc7      	ldr	r3, [pc, #796]	; (8009310 <_realloc_r+0x358>)
 8008ff4:	6898      	ldr	r0, [r3, #8]
 8008ff6:	4548      	cmp	r0, r9
 8008ff8:	f000 80aa 	beq.w	8009150 <_realloc_r+0x198>
 8008ffc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8009000:	f020 0301 	bic.w	r3, r0, #1
 8009004:	444b      	add	r3, r9
 8009006:	685b      	ldr	r3, [r3, #4]
 8009008:	07db      	lsls	r3, r3, #31
 800900a:	f140 8083 	bpl.w	8009114 <_realloc_r+0x15c>
 800900e:	07d2      	lsls	r2, r2, #31
 8009010:	d534      	bpl.n	800907c <_realloc_r+0xc4>
 8009012:	4651      	mov	r1, sl
 8009014:	4640      	mov	r0, r8
 8009016:	f7fb fe0d 	bl	8004c34 <_malloc_r>
 800901a:	4682      	mov	sl, r0
 800901c:	b1e0      	cbz	r0, 8009058 <_realloc_r+0xa0>
 800901e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009022:	f023 0301 	bic.w	r3, r3, #1
 8009026:	443b      	add	r3, r7
 8009028:	f1a0 0208 	sub.w	r2, r0, #8
 800902c:	4293      	cmp	r3, r2
 800902e:	f000 80f9 	beq.w	8009224 <_realloc_r+0x26c>
 8009032:	1f32      	subs	r2, r6, #4
 8009034:	2a24      	cmp	r2, #36	; 0x24
 8009036:	f200 8107 	bhi.w	8009248 <_realloc_r+0x290>
 800903a:	2a13      	cmp	r2, #19
 800903c:	6829      	ldr	r1, [r5, #0]
 800903e:	f200 80e6 	bhi.w	800920e <_realloc_r+0x256>
 8009042:	4603      	mov	r3, r0
 8009044:	462a      	mov	r2, r5
 8009046:	6019      	str	r1, [r3, #0]
 8009048:	6851      	ldr	r1, [r2, #4]
 800904a:	6059      	str	r1, [r3, #4]
 800904c:	6892      	ldr	r2, [r2, #8]
 800904e:	609a      	str	r2, [r3, #8]
 8009050:	4629      	mov	r1, r5
 8009052:	4640      	mov	r0, r8
 8009054:	f7ff f918 	bl	8008288 <_free_r>
 8009058:	4640      	mov	r0, r8
 800905a:	f7fc f8df 	bl	800521c <__malloc_unlock>
 800905e:	e04f      	b.n	8009100 <_realloc_r+0x148>
 8009060:	f024 0407 	bic.w	r4, r4, #7
 8009064:	2c00      	cmp	r4, #0
 8009066:	4621      	mov	r1, r4
 8009068:	dabd      	bge.n	8008fe6 <_realloc_r+0x2e>
 800906a:	f04f 0a00 	mov.w	sl, #0
 800906e:	230c      	movs	r3, #12
 8009070:	4650      	mov	r0, sl
 8009072:	f8c8 3000 	str.w	r3, [r8]
 8009076:	b003      	add	sp, #12
 8009078:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800907c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009080:	eba7 0b03 	sub.w	fp, r7, r3
 8009084:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009088:	f022 0203 	bic.w	r2, r2, #3
 800908c:	18b3      	adds	r3, r6, r2
 800908e:	428b      	cmp	r3, r1
 8009090:	dbbf      	blt.n	8009012 <_realloc_r+0x5a>
 8009092:	46da      	mov	sl, fp
 8009094:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009098:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800909c:	1f32      	subs	r2, r6, #4
 800909e:	2a24      	cmp	r2, #36	; 0x24
 80090a0:	60c1      	str	r1, [r0, #12]
 80090a2:	eb0b 0903 	add.w	r9, fp, r3
 80090a6:	6088      	str	r0, [r1, #8]
 80090a8:	f200 80c6 	bhi.w	8009238 <_realloc_r+0x280>
 80090ac:	2a13      	cmp	r2, #19
 80090ae:	6829      	ldr	r1, [r5, #0]
 80090b0:	f240 80c0 	bls.w	8009234 <_realloc_r+0x27c>
 80090b4:	f8cb 1008 	str.w	r1, [fp, #8]
 80090b8:	6869      	ldr	r1, [r5, #4]
 80090ba:	f8cb 100c 	str.w	r1, [fp, #12]
 80090be:	2a1b      	cmp	r2, #27
 80090c0:	68a9      	ldr	r1, [r5, #8]
 80090c2:	f200 80d8 	bhi.w	8009276 <_realloc_r+0x2be>
 80090c6:	f10b 0210 	add.w	r2, fp, #16
 80090ca:	3508      	adds	r5, #8
 80090cc:	6011      	str	r1, [r2, #0]
 80090ce:	6869      	ldr	r1, [r5, #4]
 80090d0:	6051      	str	r1, [r2, #4]
 80090d2:	68a9      	ldr	r1, [r5, #8]
 80090d4:	6091      	str	r1, [r2, #8]
 80090d6:	461e      	mov	r6, r3
 80090d8:	465f      	mov	r7, fp
 80090da:	4655      	mov	r5, sl
 80090dc:	687b      	ldr	r3, [r7, #4]
 80090de:	1b32      	subs	r2, r6, r4
 80090e0:	2a0f      	cmp	r2, #15
 80090e2:	f003 0301 	and.w	r3, r3, #1
 80090e6:	d822      	bhi.n	800912e <_realloc_r+0x176>
 80090e8:	4333      	orrs	r3, r6
 80090ea:	607b      	str	r3, [r7, #4]
 80090ec:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80090f0:	f043 0301 	orr.w	r3, r3, #1
 80090f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80090f8:	4640      	mov	r0, r8
 80090fa:	f7fc f88f 	bl	800521c <__malloc_unlock>
 80090fe:	46aa      	mov	sl, r5
 8009100:	4650      	mov	r0, sl
 8009102:	b003      	add	sp, #12
 8009104:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009108:	4611      	mov	r1, r2
 800910a:	b003      	add	sp, #12
 800910c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009110:	f7fb bd90 	b.w	8004c34 <_malloc_r>
 8009114:	f020 0003 	bic.w	r0, r0, #3
 8009118:	1833      	adds	r3, r6, r0
 800911a:	428b      	cmp	r3, r1
 800911c:	db61      	blt.n	80091e2 <_realloc_r+0x22a>
 800911e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009122:	461e      	mov	r6, r3
 8009124:	60ca      	str	r2, [r1, #12]
 8009126:	eb07 0903 	add.w	r9, r7, r3
 800912a:	6091      	str	r1, [r2, #8]
 800912c:	e7d6      	b.n	80090dc <_realloc_r+0x124>
 800912e:	1939      	adds	r1, r7, r4
 8009130:	4323      	orrs	r3, r4
 8009132:	f042 0201 	orr.w	r2, r2, #1
 8009136:	607b      	str	r3, [r7, #4]
 8009138:	604a      	str	r2, [r1, #4]
 800913a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800913e:	f043 0301 	orr.w	r3, r3, #1
 8009142:	3108      	adds	r1, #8
 8009144:	f8c9 3004 	str.w	r3, [r9, #4]
 8009148:	4640      	mov	r0, r8
 800914a:	f7ff f89d 	bl	8008288 <_free_r>
 800914e:	e7d3      	b.n	80090f8 <_realloc_r+0x140>
 8009150:	6840      	ldr	r0, [r0, #4]
 8009152:	f020 0903 	bic.w	r9, r0, #3
 8009156:	44b1      	add	r9, r6
 8009158:	f104 0010 	add.w	r0, r4, #16
 800915c:	4581      	cmp	r9, r0
 800915e:	da77      	bge.n	8009250 <_realloc_r+0x298>
 8009160:	07d2      	lsls	r2, r2, #31
 8009162:	f53f af56 	bmi.w	8009012 <_realloc_r+0x5a>
 8009166:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800916a:	eba7 0b02 	sub.w	fp, r7, r2
 800916e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8009172:	f022 0203 	bic.w	r2, r2, #3
 8009176:	4491      	add	r9, r2
 8009178:	4548      	cmp	r0, r9
 800917a:	dc87      	bgt.n	800908c <_realloc_r+0xd4>
 800917c:	46da      	mov	sl, fp
 800917e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009182:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8009186:	1f32      	subs	r2, r6, #4
 8009188:	2a24      	cmp	r2, #36	; 0x24
 800918a:	60c1      	str	r1, [r0, #12]
 800918c:	6088      	str	r0, [r1, #8]
 800918e:	f200 80a1 	bhi.w	80092d4 <_realloc_r+0x31c>
 8009192:	2a13      	cmp	r2, #19
 8009194:	6829      	ldr	r1, [r5, #0]
 8009196:	f240 809b 	bls.w	80092d0 <_realloc_r+0x318>
 800919a:	f8cb 1008 	str.w	r1, [fp, #8]
 800919e:	6869      	ldr	r1, [r5, #4]
 80091a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80091a4:	2a1b      	cmp	r2, #27
 80091a6:	68a9      	ldr	r1, [r5, #8]
 80091a8:	f200 809b 	bhi.w	80092e2 <_realloc_r+0x32a>
 80091ac:	f10b 0210 	add.w	r2, fp, #16
 80091b0:	3508      	adds	r5, #8
 80091b2:	6011      	str	r1, [r2, #0]
 80091b4:	6869      	ldr	r1, [r5, #4]
 80091b6:	6051      	str	r1, [r2, #4]
 80091b8:	68a9      	ldr	r1, [r5, #8]
 80091ba:	6091      	str	r1, [r2, #8]
 80091bc:	eb0b 0104 	add.w	r1, fp, r4
 80091c0:	eba9 0204 	sub.w	r2, r9, r4
 80091c4:	f042 0201 	orr.w	r2, r2, #1
 80091c8:	6099      	str	r1, [r3, #8]
 80091ca:	604a      	str	r2, [r1, #4]
 80091cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80091d0:	f003 0301 	and.w	r3, r3, #1
 80091d4:	431c      	orrs	r4, r3
 80091d6:	4640      	mov	r0, r8
 80091d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80091dc:	f7fc f81e 	bl	800521c <__malloc_unlock>
 80091e0:	e78e      	b.n	8009100 <_realloc_r+0x148>
 80091e2:	07d3      	lsls	r3, r2, #31
 80091e4:	f53f af15 	bmi.w	8009012 <_realloc_r+0x5a>
 80091e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80091ec:	eba7 0b03 	sub.w	fp, r7, r3
 80091f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80091f4:	f022 0203 	bic.w	r2, r2, #3
 80091f8:	4410      	add	r0, r2
 80091fa:	1983      	adds	r3, r0, r6
 80091fc:	428b      	cmp	r3, r1
 80091fe:	f6ff af45 	blt.w	800908c <_realloc_r+0xd4>
 8009202:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8009206:	46da      	mov	sl, fp
 8009208:	60ca      	str	r2, [r1, #12]
 800920a:	6091      	str	r1, [r2, #8]
 800920c:	e742      	b.n	8009094 <_realloc_r+0xdc>
 800920e:	6001      	str	r1, [r0, #0]
 8009210:	686b      	ldr	r3, [r5, #4]
 8009212:	6043      	str	r3, [r0, #4]
 8009214:	2a1b      	cmp	r2, #27
 8009216:	d83a      	bhi.n	800928e <_realloc_r+0x2d6>
 8009218:	f105 0208 	add.w	r2, r5, #8
 800921c:	f100 0308 	add.w	r3, r0, #8
 8009220:	68a9      	ldr	r1, [r5, #8]
 8009222:	e710      	b.n	8009046 <_realloc_r+0x8e>
 8009224:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009228:	f023 0303 	bic.w	r3, r3, #3
 800922c:	441e      	add	r6, r3
 800922e:	eb07 0906 	add.w	r9, r7, r6
 8009232:	e753      	b.n	80090dc <_realloc_r+0x124>
 8009234:	4652      	mov	r2, sl
 8009236:	e749      	b.n	80090cc <_realloc_r+0x114>
 8009238:	4629      	mov	r1, r5
 800923a:	4650      	mov	r0, sl
 800923c:	461e      	mov	r6, r3
 800923e:	465f      	mov	r7, fp
 8009240:	f7ff fb4c 	bl	80088dc <memmove>
 8009244:	4655      	mov	r5, sl
 8009246:	e749      	b.n	80090dc <_realloc_r+0x124>
 8009248:	4629      	mov	r1, r5
 800924a:	f7ff fb47 	bl	80088dc <memmove>
 800924e:	e6ff      	b.n	8009050 <_realloc_r+0x98>
 8009250:	4427      	add	r7, r4
 8009252:	eba9 0904 	sub.w	r9, r9, r4
 8009256:	f049 0201 	orr.w	r2, r9, #1
 800925a:	609f      	str	r7, [r3, #8]
 800925c:	607a      	str	r2, [r7, #4]
 800925e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009262:	f003 0301 	and.w	r3, r3, #1
 8009266:	431c      	orrs	r4, r3
 8009268:	4640      	mov	r0, r8
 800926a:	f845 4c04 	str.w	r4, [r5, #-4]
 800926e:	f7fb ffd5 	bl	800521c <__malloc_unlock>
 8009272:	46aa      	mov	sl, r5
 8009274:	e744      	b.n	8009100 <_realloc_r+0x148>
 8009276:	f8cb 1010 	str.w	r1, [fp, #16]
 800927a:	68e9      	ldr	r1, [r5, #12]
 800927c:	f8cb 1014 	str.w	r1, [fp, #20]
 8009280:	2a24      	cmp	r2, #36	; 0x24
 8009282:	d010      	beq.n	80092a6 <_realloc_r+0x2ee>
 8009284:	6929      	ldr	r1, [r5, #16]
 8009286:	f10b 0218 	add.w	r2, fp, #24
 800928a:	3510      	adds	r5, #16
 800928c:	e71e      	b.n	80090cc <_realloc_r+0x114>
 800928e:	68ab      	ldr	r3, [r5, #8]
 8009290:	6083      	str	r3, [r0, #8]
 8009292:	68eb      	ldr	r3, [r5, #12]
 8009294:	60c3      	str	r3, [r0, #12]
 8009296:	2a24      	cmp	r2, #36	; 0x24
 8009298:	d010      	beq.n	80092bc <_realloc_r+0x304>
 800929a:	f105 0210 	add.w	r2, r5, #16
 800929e:	f100 0310 	add.w	r3, r0, #16
 80092a2:	6929      	ldr	r1, [r5, #16]
 80092a4:	e6cf      	b.n	8009046 <_realloc_r+0x8e>
 80092a6:	692a      	ldr	r2, [r5, #16]
 80092a8:	f8cb 2018 	str.w	r2, [fp, #24]
 80092ac:	696a      	ldr	r2, [r5, #20]
 80092ae:	f8cb 201c 	str.w	r2, [fp, #28]
 80092b2:	69a9      	ldr	r1, [r5, #24]
 80092b4:	f10b 0220 	add.w	r2, fp, #32
 80092b8:	3518      	adds	r5, #24
 80092ba:	e707      	b.n	80090cc <_realloc_r+0x114>
 80092bc:	692b      	ldr	r3, [r5, #16]
 80092be:	6103      	str	r3, [r0, #16]
 80092c0:	696b      	ldr	r3, [r5, #20]
 80092c2:	6143      	str	r3, [r0, #20]
 80092c4:	69a9      	ldr	r1, [r5, #24]
 80092c6:	f105 0218 	add.w	r2, r5, #24
 80092ca:	f100 0318 	add.w	r3, r0, #24
 80092ce:	e6ba      	b.n	8009046 <_realloc_r+0x8e>
 80092d0:	4652      	mov	r2, sl
 80092d2:	e76e      	b.n	80091b2 <_realloc_r+0x1fa>
 80092d4:	4629      	mov	r1, r5
 80092d6:	4650      	mov	r0, sl
 80092d8:	9301      	str	r3, [sp, #4]
 80092da:	f7ff faff 	bl	80088dc <memmove>
 80092de:	9b01      	ldr	r3, [sp, #4]
 80092e0:	e76c      	b.n	80091bc <_realloc_r+0x204>
 80092e2:	f8cb 1010 	str.w	r1, [fp, #16]
 80092e6:	68e9      	ldr	r1, [r5, #12]
 80092e8:	f8cb 1014 	str.w	r1, [fp, #20]
 80092ec:	2a24      	cmp	r2, #36	; 0x24
 80092ee:	d004      	beq.n	80092fa <_realloc_r+0x342>
 80092f0:	6929      	ldr	r1, [r5, #16]
 80092f2:	f10b 0218 	add.w	r2, fp, #24
 80092f6:	3510      	adds	r5, #16
 80092f8:	e75b      	b.n	80091b2 <_realloc_r+0x1fa>
 80092fa:	692a      	ldr	r2, [r5, #16]
 80092fc:	f8cb 2018 	str.w	r2, [fp, #24]
 8009300:	696a      	ldr	r2, [r5, #20]
 8009302:	f8cb 201c 	str.w	r2, [fp, #28]
 8009306:	69a9      	ldr	r1, [r5, #24]
 8009308:	f10b 0220 	add.w	r2, fp, #32
 800930c:	3518      	adds	r5, #24
 800930e:	e750      	b.n	80091b2 <_realloc_r+0x1fa>
 8009310:	20000460 	.word	0x20000460

08009314 <frexp>:
 8009314:	ec53 2b10 	vmov	r2, r3, d0
 8009318:	b570      	push	{r4, r5, r6, lr}
 800931a:	4e16      	ldr	r6, [pc, #88]	; (8009374 <frexp+0x60>)
 800931c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8009320:	2500      	movs	r5, #0
 8009322:	42b1      	cmp	r1, r6
 8009324:	4604      	mov	r4, r0
 8009326:	6005      	str	r5, [r0, #0]
 8009328:	dc21      	bgt.n	800936e <frexp+0x5a>
 800932a:	ee10 6a10 	vmov	r6, s0
 800932e:	430e      	orrs	r6, r1
 8009330:	d01d      	beq.n	800936e <frexp+0x5a>
 8009332:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8009336:	4618      	mov	r0, r3
 8009338:	da0c      	bge.n	8009354 <frexp+0x40>
 800933a:	4619      	mov	r1, r3
 800933c:	2200      	movs	r2, #0
 800933e:	ee10 0a10 	vmov	r0, s0
 8009342:	4b0d      	ldr	r3, [pc, #52]	; (8009378 <frexp+0x64>)
 8009344:	f7f7 f918 	bl	8000578 <__aeabi_dmul>
 8009348:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800934c:	4602      	mov	r2, r0
 800934e:	4608      	mov	r0, r1
 8009350:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8009354:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8009358:	1509      	asrs	r1, r1, #20
 800935a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800935e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8009362:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8009366:	4429      	add	r1, r5
 8009368:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800936c:	6021      	str	r1, [r4, #0]
 800936e:	ec43 2b10 	vmov	d0, r2, r3
 8009372:	bd70      	pop	{r4, r5, r6, pc}
 8009374:	7fefffff 	.word	0x7fefffff
 8009378:	43500000 	.word	0x43500000

0800937c <__sread>:
 800937c:	b510      	push	{r4, lr}
 800937e:	460c      	mov	r4, r1
 8009380:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009384:	f000 fabc 	bl	8009900 <_read_r>
 8009388:	2800      	cmp	r0, #0
 800938a:	db03      	blt.n	8009394 <__sread+0x18>
 800938c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800938e:	4403      	add	r3, r0
 8009390:	6523      	str	r3, [r4, #80]	; 0x50
 8009392:	bd10      	pop	{r4, pc}
 8009394:	89a3      	ldrh	r3, [r4, #12]
 8009396:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800939a:	81a3      	strh	r3, [r4, #12]
 800939c:	bd10      	pop	{r4, pc}
 800939e:	bf00      	nop

080093a0 <__swrite>:
 80093a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80093a4:	4616      	mov	r6, r2
 80093a6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80093aa:	461f      	mov	r7, r3
 80093ac:	05d3      	lsls	r3, r2, #23
 80093ae:	460c      	mov	r4, r1
 80093b0:	4605      	mov	r5, r0
 80093b2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80093b6:	d507      	bpl.n	80093c8 <__swrite+0x28>
 80093b8:	2200      	movs	r2, #0
 80093ba:	2302      	movs	r3, #2
 80093bc:	f000 fa74 	bl	80098a8 <_lseek_r>
 80093c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80093c4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80093c8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80093cc:	81a2      	strh	r2, [r4, #12]
 80093ce:	463b      	mov	r3, r7
 80093d0:	4632      	mov	r2, r6
 80093d2:	4628      	mov	r0, r5
 80093d4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80093d8:	f000 b88c 	b.w	80094f4 <_write_r>

080093dc <__sseek>:
 80093dc:	b510      	push	{r4, lr}
 80093de:	460c      	mov	r4, r1
 80093e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80093e4:	f000 fa60 	bl	80098a8 <_lseek_r>
 80093e8:	89a3      	ldrh	r3, [r4, #12]
 80093ea:	1c42      	adds	r2, r0, #1
 80093ec:	bf0e      	itee	eq
 80093ee:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80093f2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80093f6:	6520      	strne	r0, [r4, #80]	; 0x50
 80093f8:	81a3      	strh	r3, [r4, #12]
 80093fa:	bd10      	pop	{r4, pc}

080093fc <__sclose>:
 80093fc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009400:	f000 b922 	b.w	8009648 <_close_r>

08009404 <strncpy>:
 8009404:	ea40 0301 	orr.w	r3, r0, r1
 8009408:	079b      	lsls	r3, r3, #30
 800940a:	b470      	push	{r4, r5, r6}
 800940c:	d12a      	bne.n	8009464 <strncpy+0x60>
 800940e:	2a03      	cmp	r2, #3
 8009410:	d928      	bls.n	8009464 <strncpy+0x60>
 8009412:	460c      	mov	r4, r1
 8009414:	4603      	mov	r3, r0
 8009416:	4621      	mov	r1, r4
 8009418:	f854 6b04 	ldr.w	r6, [r4], #4
 800941c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8009420:	ea25 0506 	bic.w	r5, r5, r6
 8009424:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8009428:	d106      	bne.n	8009438 <strncpy+0x34>
 800942a:	3a04      	subs	r2, #4
 800942c:	2a03      	cmp	r2, #3
 800942e:	f843 6b04 	str.w	r6, [r3], #4
 8009432:	4621      	mov	r1, r4
 8009434:	d8ef      	bhi.n	8009416 <strncpy+0x12>
 8009436:	b19a      	cbz	r2, 8009460 <strncpy+0x5c>
 8009438:	780c      	ldrb	r4, [r1, #0]
 800943a:	701c      	strb	r4, [r3, #0]
 800943c:	3a01      	subs	r2, #1
 800943e:	3301      	adds	r3, #1
 8009440:	b13c      	cbz	r4, 8009452 <strncpy+0x4e>
 8009442:	b16a      	cbz	r2, 8009460 <strncpy+0x5c>
 8009444:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8009448:	f803 4b01 	strb.w	r4, [r3], #1
 800944c:	3a01      	subs	r2, #1
 800944e:	2c00      	cmp	r4, #0
 8009450:	d1f7      	bne.n	8009442 <strncpy+0x3e>
 8009452:	b12a      	cbz	r2, 8009460 <strncpy+0x5c>
 8009454:	441a      	add	r2, r3
 8009456:	2100      	movs	r1, #0
 8009458:	f803 1b01 	strb.w	r1, [r3], #1
 800945c:	4293      	cmp	r3, r2
 800945e:	d1fb      	bne.n	8009458 <strncpy+0x54>
 8009460:	bc70      	pop	{r4, r5, r6}
 8009462:	4770      	bx	lr
 8009464:	4603      	mov	r3, r0
 8009466:	e7e6      	b.n	8009436 <strncpy+0x32>

08009468 <__sprint_r.part.0>:
 8009468:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800946c:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800946e:	049c      	lsls	r4, r3, #18
 8009470:	4692      	mov	sl, r2
 8009472:	d52d      	bpl.n	80094d0 <__sprint_r.part.0+0x68>
 8009474:	6893      	ldr	r3, [r2, #8]
 8009476:	6812      	ldr	r2, [r2, #0]
 8009478:	b343      	cbz	r3, 80094cc <__sprint_r.part.0+0x64>
 800947a:	460e      	mov	r6, r1
 800947c:	4607      	mov	r7, r0
 800947e:	f102 0908 	add.w	r9, r2, #8
 8009482:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8009486:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800948a:	d015      	beq.n	80094b8 <__sprint_r.part.0+0x50>
 800948c:	3d04      	subs	r5, #4
 800948e:	2400      	movs	r4, #0
 8009490:	e001      	b.n	8009496 <__sprint_r.part.0+0x2e>
 8009492:	45a0      	cmp	r8, r4
 8009494:	d00e      	beq.n	80094b4 <__sprint_r.part.0+0x4c>
 8009496:	4632      	mov	r2, r6
 8009498:	f855 1f04 	ldr.w	r1, [r5, #4]!
 800949c:	4638      	mov	r0, r7
 800949e:	f000 f99d 	bl	80097dc <_fputwc_r>
 80094a2:	1c43      	adds	r3, r0, #1
 80094a4:	f104 0401 	add.w	r4, r4, #1
 80094a8:	d1f3      	bne.n	8009492 <__sprint_r.part.0+0x2a>
 80094aa:	2300      	movs	r3, #0
 80094ac:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80094b0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80094b4:	f8da 3008 	ldr.w	r3, [sl, #8]
 80094b8:	f02b 0b03 	bic.w	fp, fp, #3
 80094bc:	eba3 030b 	sub.w	r3, r3, fp
 80094c0:	f8ca 3008 	str.w	r3, [sl, #8]
 80094c4:	f109 0908 	add.w	r9, r9, #8
 80094c8:	2b00      	cmp	r3, #0
 80094ca:	d1da      	bne.n	8009482 <__sprint_r.part.0+0x1a>
 80094cc:	2000      	movs	r0, #0
 80094ce:	e7ec      	b.n	80094aa <__sprint_r.part.0+0x42>
 80094d0:	f7fe ffce 	bl	8008470 <__sfvwrite_r>
 80094d4:	2300      	movs	r3, #0
 80094d6:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80094da:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80094de:	bf00      	nop

080094e0 <__sprint_r>:
 80094e0:	6893      	ldr	r3, [r2, #8]
 80094e2:	b10b      	cbz	r3, 80094e8 <__sprint_r+0x8>
 80094e4:	f7ff bfc0 	b.w	8009468 <__sprint_r.part.0>
 80094e8:	b410      	push	{r4}
 80094ea:	4618      	mov	r0, r3
 80094ec:	6053      	str	r3, [r2, #4]
 80094ee:	f85d 4b04 	ldr.w	r4, [sp], #4
 80094f2:	4770      	bx	lr

080094f4 <_write_r>:
 80094f4:	b570      	push	{r4, r5, r6, lr}
 80094f6:	460d      	mov	r5, r1
 80094f8:	4c08      	ldr	r4, [pc, #32]	; (800951c <_write_r+0x28>)
 80094fa:	4611      	mov	r1, r2
 80094fc:	4606      	mov	r6, r0
 80094fe:	461a      	mov	r2, r3
 8009500:	4628      	mov	r0, r5
 8009502:	2300      	movs	r3, #0
 8009504:	6023      	str	r3, [r4, #0]
 8009506:	f7fb faa2 	bl	8004a4e <_write>
 800950a:	1c43      	adds	r3, r0, #1
 800950c:	d000      	beq.n	8009510 <_write_r+0x1c>
 800950e:	bd70      	pop	{r4, r5, r6, pc}
 8009510:	6823      	ldr	r3, [r4, #0]
 8009512:	2b00      	cmp	r3, #0
 8009514:	d0fb      	beq.n	800950e <_write_r+0x1a>
 8009516:	6033      	str	r3, [r6, #0]
 8009518:	bd70      	pop	{r4, r5, r6, pc}
 800951a:	bf00      	nop
 800951c:	2000157c 	.word	0x2000157c

08009520 <__register_exitproc>:
 8009520:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8009524:	4d2b      	ldr	r5, [pc, #172]	; (80095d4 <__register_exitproc+0xb4>)
 8009526:	4606      	mov	r6, r0
 8009528:	6828      	ldr	r0, [r5, #0]
 800952a:	4698      	mov	r8, r3
 800952c:	460f      	mov	r7, r1
 800952e:	4691      	mov	r9, r2
 8009530:	f7ff f958 	bl	80087e4 <__retarget_lock_acquire_recursive>
 8009534:	4b28      	ldr	r3, [pc, #160]	; (80095d8 <__register_exitproc+0xb8>)
 8009536:	681c      	ldr	r4, [r3, #0]
 8009538:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 800953c:	2b00      	cmp	r3, #0
 800953e:	d03d      	beq.n	80095bc <__register_exitproc+0x9c>
 8009540:	685a      	ldr	r2, [r3, #4]
 8009542:	2a1f      	cmp	r2, #31
 8009544:	dc0d      	bgt.n	8009562 <__register_exitproc+0x42>
 8009546:	f102 0c01 	add.w	ip, r2, #1
 800954a:	bb16      	cbnz	r6, 8009592 <__register_exitproc+0x72>
 800954c:	3202      	adds	r2, #2
 800954e:	f8c3 c004 	str.w	ip, [r3, #4]
 8009552:	6828      	ldr	r0, [r5, #0]
 8009554:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8009558:	f7ff f946 	bl	80087e8 <__retarget_lock_release_recursive>
 800955c:	2000      	movs	r0, #0
 800955e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009562:	4b1e      	ldr	r3, [pc, #120]	; (80095dc <__register_exitproc+0xbc>)
 8009564:	b37b      	cbz	r3, 80095c6 <__register_exitproc+0xa6>
 8009566:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800956a:	f7fb fb53 	bl	8004c14 <malloc>
 800956e:	4603      	mov	r3, r0
 8009570:	b348      	cbz	r0, 80095c6 <__register_exitproc+0xa6>
 8009572:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8009576:	2100      	movs	r1, #0
 8009578:	e9c0 2100 	strd	r2, r1, [r0]
 800957c:	f04f 0c01 	mov.w	ip, #1
 8009580:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8009584:	460a      	mov	r2, r1
 8009586:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800958a:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800958e:	2e00      	cmp	r6, #0
 8009590:	d0dc      	beq.n	800954c <__register_exitproc+0x2c>
 8009592:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8009596:	2401      	movs	r4, #1
 8009598:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800959c:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80095a0:	4094      	lsls	r4, r2
 80095a2:	4320      	orrs	r0, r4
 80095a4:	2e02      	cmp	r6, #2
 80095a6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80095aa:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80095ae:	d1cd      	bne.n	800954c <__register_exitproc+0x2c>
 80095b0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80095b4:	430c      	orrs	r4, r1
 80095b6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80095ba:	e7c7      	b.n	800954c <__register_exitproc+0x2c>
 80095bc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80095c0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80095c4:	e7bc      	b.n	8009540 <__register_exitproc+0x20>
 80095c6:	6828      	ldr	r0, [r5, #0]
 80095c8:	f7ff f90e 	bl	80087e8 <__retarget_lock_release_recursive>
 80095cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80095d0:	e7c5      	b.n	800955e <__register_exitproc+0x3e>
 80095d2:	bf00      	nop
 80095d4:	20000870 	.word	0x20000870
 80095d8:	08009e30 	.word	0x08009e30
 80095dc:	08004c15 	.word	0x08004c15

080095e0 <_calloc_r>:
 80095e0:	b510      	push	{r4, lr}
 80095e2:	fb02 f101 	mul.w	r1, r2, r1
 80095e6:	f7fb fb25 	bl	8004c34 <_malloc_r>
 80095ea:	4604      	mov	r4, r0
 80095ec:	b1d8      	cbz	r0, 8009626 <_calloc_r+0x46>
 80095ee:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80095f2:	f022 0203 	bic.w	r2, r2, #3
 80095f6:	3a04      	subs	r2, #4
 80095f8:	2a24      	cmp	r2, #36	; 0x24
 80095fa:	d81d      	bhi.n	8009638 <_calloc_r+0x58>
 80095fc:	2a13      	cmp	r2, #19
 80095fe:	d914      	bls.n	800962a <_calloc_r+0x4a>
 8009600:	2300      	movs	r3, #0
 8009602:	2a1b      	cmp	r2, #27
 8009604:	e9c0 3300 	strd	r3, r3, [r0]
 8009608:	d91b      	bls.n	8009642 <_calloc_r+0x62>
 800960a:	2a24      	cmp	r2, #36	; 0x24
 800960c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8009610:	bf0a      	itet	eq
 8009612:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8009616:	f100 0210 	addne.w	r2, r0, #16
 800961a:	f100 0218 	addeq.w	r2, r0, #24
 800961e:	2300      	movs	r3, #0
 8009620:	e9c2 3300 	strd	r3, r3, [r2]
 8009624:	6093      	str	r3, [r2, #8]
 8009626:	4620      	mov	r0, r4
 8009628:	bd10      	pop	{r4, pc}
 800962a:	4602      	mov	r2, r0
 800962c:	2300      	movs	r3, #0
 800962e:	e9c2 3300 	strd	r3, r3, [r2]
 8009632:	6093      	str	r3, [r2, #8]
 8009634:	4620      	mov	r0, r4
 8009636:	bd10      	pop	{r4, pc}
 8009638:	2100      	movs	r1, #0
 800963a:	f7fb fd9f 	bl	800517c <memset>
 800963e:	4620      	mov	r0, r4
 8009640:	bd10      	pop	{r4, pc}
 8009642:	f100 0208 	add.w	r2, r0, #8
 8009646:	e7f1      	b.n	800962c <_calloc_r+0x4c>

08009648 <_close_r>:
 8009648:	b538      	push	{r3, r4, r5, lr}
 800964a:	4c07      	ldr	r4, [pc, #28]	; (8009668 <_close_r+0x20>)
 800964c:	2300      	movs	r3, #0
 800964e:	4605      	mov	r5, r0
 8009650:	4608      	mov	r0, r1
 8009652:	6023      	str	r3, [r4, #0]
 8009654:	f7fb fa2a 	bl	8004aac <_close>
 8009658:	1c43      	adds	r3, r0, #1
 800965a:	d000      	beq.n	800965e <_close_r+0x16>
 800965c:	bd38      	pop	{r3, r4, r5, pc}
 800965e:	6823      	ldr	r3, [r4, #0]
 8009660:	2b00      	cmp	r3, #0
 8009662:	d0fb      	beq.n	800965c <_close_r+0x14>
 8009664:	602b      	str	r3, [r5, #0]
 8009666:	bd38      	pop	{r3, r4, r5, pc}
 8009668:	2000157c 	.word	0x2000157c

0800966c <_fclose_r>:
 800966c:	b570      	push	{r4, r5, r6, lr}
 800966e:	2900      	cmp	r1, #0
 8009670:	d048      	beq.n	8009704 <_fclose_r+0x98>
 8009672:	4605      	mov	r5, r0
 8009674:	460c      	mov	r4, r1
 8009676:	b110      	cbz	r0, 800967e <_fclose_r+0x12>
 8009678:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800967a:	2b00      	cmp	r3, #0
 800967c:	d048      	beq.n	8009710 <_fclose_r+0xa4>
 800967e:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009680:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009684:	07d0      	lsls	r0, r2, #31
 8009686:	d440      	bmi.n	800970a <_fclose_r+0x9e>
 8009688:	0599      	lsls	r1, r3, #22
 800968a:	d530      	bpl.n	80096ee <_fclose_r+0x82>
 800968c:	4621      	mov	r1, r4
 800968e:	4628      	mov	r0, r5
 8009690:	f7fe fc52 	bl	8007f38 <__sflush_r>
 8009694:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8009696:	4606      	mov	r6, r0
 8009698:	b133      	cbz	r3, 80096a8 <_fclose_r+0x3c>
 800969a:	69e1      	ldr	r1, [r4, #28]
 800969c:	4628      	mov	r0, r5
 800969e:	4798      	blx	r3
 80096a0:	2800      	cmp	r0, #0
 80096a2:	bfb8      	it	lt
 80096a4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80096a8:	89a3      	ldrh	r3, [r4, #12]
 80096aa:	061a      	lsls	r2, r3, #24
 80096ac:	d43c      	bmi.n	8009728 <_fclose_r+0xbc>
 80096ae:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80096b0:	b141      	cbz	r1, 80096c4 <_fclose_r+0x58>
 80096b2:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80096b6:	4299      	cmp	r1, r3
 80096b8:	d002      	beq.n	80096c0 <_fclose_r+0x54>
 80096ba:	4628      	mov	r0, r5
 80096bc:	f7fe fde4 	bl	8008288 <_free_r>
 80096c0:	2300      	movs	r3, #0
 80096c2:	6323      	str	r3, [r4, #48]	; 0x30
 80096c4:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80096c6:	b121      	cbz	r1, 80096d2 <_fclose_r+0x66>
 80096c8:	4628      	mov	r0, r5
 80096ca:	f7fe fddd 	bl	8008288 <_free_r>
 80096ce:	2300      	movs	r3, #0
 80096d0:	6463      	str	r3, [r4, #68]	; 0x44
 80096d2:	f7fe fd63 	bl	800819c <__sfp_lock_acquire>
 80096d6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80096d8:	2200      	movs	r2, #0
 80096da:	07db      	lsls	r3, r3, #31
 80096dc:	81a2      	strh	r2, [r4, #12]
 80096de:	d51f      	bpl.n	8009720 <_fclose_r+0xb4>
 80096e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80096e2:	f7ff f87d 	bl	80087e0 <__retarget_lock_close_recursive>
 80096e6:	f7fe fd5f 	bl	80081a8 <__sfp_lock_release>
 80096ea:	4630      	mov	r0, r6
 80096ec:	bd70      	pop	{r4, r5, r6, pc}
 80096ee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80096f0:	f7ff f878 	bl	80087e4 <__retarget_lock_acquire_recursive>
 80096f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80096f8:	2b00      	cmp	r3, #0
 80096fa:	d1c7      	bne.n	800968c <_fclose_r+0x20>
 80096fc:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80096fe:	f016 0601 	ands.w	r6, r6, #1
 8009702:	d016      	beq.n	8009732 <_fclose_r+0xc6>
 8009704:	2600      	movs	r6, #0
 8009706:	4630      	mov	r0, r6
 8009708:	bd70      	pop	{r4, r5, r6, pc}
 800970a:	2b00      	cmp	r3, #0
 800970c:	d0fa      	beq.n	8009704 <_fclose_r+0x98>
 800970e:	e7bd      	b.n	800968c <_fclose_r+0x20>
 8009710:	f7fe fd18 	bl	8008144 <__sinit>
 8009714:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8009716:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800971a:	07d0      	lsls	r0, r2, #31
 800971c:	d4f5      	bmi.n	800970a <_fclose_r+0x9e>
 800971e:	e7b3      	b.n	8009688 <_fclose_r+0x1c>
 8009720:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009722:	f7ff f861 	bl	80087e8 <__retarget_lock_release_recursive>
 8009726:	e7db      	b.n	80096e0 <_fclose_r+0x74>
 8009728:	6921      	ldr	r1, [r4, #16]
 800972a:	4628      	mov	r0, r5
 800972c:	f7fe fdac 	bl	8008288 <_free_r>
 8009730:	e7bd      	b.n	80096ae <_fclose_r+0x42>
 8009732:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009734:	f7ff f858 	bl	80087e8 <__retarget_lock_release_recursive>
 8009738:	4630      	mov	r0, r6
 800973a:	bd70      	pop	{r4, r5, r6, pc}

0800973c <__fputwc>:
 800973c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009740:	b082      	sub	sp, #8
 8009742:	4681      	mov	r9, r0
 8009744:	4688      	mov	r8, r1
 8009746:	4614      	mov	r4, r2
 8009748:	f000 f8a0 	bl	800988c <__locale_mb_cur_max>
 800974c:	2801      	cmp	r0, #1
 800974e:	d103      	bne.n	8009758 <__fputwc+0x1c>
 8009750:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8009754:	2bfe      	cmp	r3, #254	; 0xfe
 8009756:	d933      	bls.n	80097c0 <__fputwc+0x84>
 8009758:	4642      	mov	r2, r8
 800975a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800975e:	a901      	add	r1, sp, #4
 8009760:	4648      	mov	r0, r9
 8009762:	f000 f93b 	bl	80099dc <_wcrtomb_r>
 8009766:	1c42      	adds	r2, r0, #1
 8009768:	4606      	mov	r6, r0
 800976a:	d02f      	beq.n	80097cc <__fputwc+0x90>
 800976c:	b320      	cbz	r0, 80097b8 <__fputwc+0x7c>
 800976e:	f89d c004 	ldrb.w	ip, [sp, #4]
 8009772:	2500      	movs	r5, #0
 8009774:	f10d 0a04 	add.w	sl, sp, #4
 8009778:	e009      	b.n	800978e <__fputwc+0x52>
 800977a:	6823      	ldr	r3, [r4, #0]
 800977c:	1c5a      	adds	r2, r3, #1
 800977e:	6022      	str	r2, [r4, #0]
 8009780:	f883 c000 	strb.w	ip, [r3]
 8009784:	3501      	adds	r5, #1
 8009786:	42b5      	cmp	r5, r6
 8009788:	d216      	bcs.n	80097b8 <__fputwc+0x7c>
 800978a:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800978e:	68a3      	ldr	r3, [r4, #8]
 8009790:	3b01      	subs	r3, #1
 8009792:	2b00      	cmp	r3, #0
 8009794:	60a3      	str	r3, [r4, #8]
 8009796:	daf0      	bge.n	800977a <__fputwc+0x3e>
 8009798:	69a7      	ldr	r7, [r4, #24]
 800979a:	42bb      	cmp	r3, r7
 800979c:	4661      	mov	r1, ip
 800979e:	4622      	mov	r2, r4
 80097a0:	4648      	mov	r0, r9
 80097a2:	db02      	blt.n	80097aa <__fputwc+0x6e>
 80097a4:	f1bc 0f0a 	cmp.w	ip, #10
 80097a8:	d1e7      	bne.n	800977a <__fputwc+0x3e>
 80097aa:	f000 f8bf 	bl	800992c <__swbuf_r>
 80097ae:	1c43      	adds	r3, r0, #1
 80097b0:	d1e8      	bne.n	8009784 <__fputwc+0x48>
 80097b2:	b002      	add	sp, #8
 80097b4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80097b8:	4640      	mov	r0, r8
 80097ba:	b002      	add	sp, #8
 80097bc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80097c0:	fa5f fc88 	uxtb.w	ip, r8
 80097c4:	4606      	mov	r6, r0
 80097c6:	f88d c004 	strb.w	ip, [sp, #4]
 80097ca:	e7d2      	b.n	8009772 <__fputwc+0x36>
 80097cc:	89a3      	ldrh	r3, [r4, #12]
 80097ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80097d2:	81a3      	strh	r3, [r4, #12]
 80097d4:	b002      	add	sp, #8
 80097d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80097da:	bf00      	nop

080097dc <_fputwc_r>:
 80097dc:	b530      	push	{r4, r5, lr}
 80097de:	4605      	mov	r5, r0
 80097e0:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80097e2:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80097e6:	07c0      	lsls	r0, r0, #31
 80097e8:	4614      	mov	r4, r2
 80097ea:	b083      	sub	sp, #12
 80097ec:	b29a      	uxth	r2, r3
 80097ee:	d401      	bmi.n	80097f4 <_fputwc_r+0x18>
 80097f0:	0590      	lsls	r0, r2, #22
 80097f2:	d51c      	bpl.n	800982e <_fputwc_r+0x52>
 80097f4:	0490      	lsls	r0, r2, #18
 80097f6:	d406      	bmi.n	8009806 <_fputwc_r+0x2a>
 80097f8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80097fa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80097fe:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009802:	81a3      	strh	r3, [r4, #12]
 8009804:	6662      	str	r2, [r4, #100]	; 0x64
 8009806:	4628      	mov	r0, r5
 8009808:	4622      	mov	r2, r4
 800980a:	f7ff ff97 	bl	800973c <__fputwc>
 800980e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8009810:	07da      	lsls	r2, r3, #31
 8009812:	4605      	mov	r5, r0
 8009814:	d402      	bmi.n	800981c <_fputwc_r+0x40>
 8009816:	89a3      	ldrh	r3, [r4, #12]
 8009818:	059b      	lsls	r3, r3, #22
 800981a:	d502      	bpl.n	8009822 <_fputwc_r+0x46>
 800981c:	4628      	mov	r0, r5
 800981e:	b003      	add	sp, #12
 8009820:	bd30      	pop	{r4, r5, pc}
 8009822:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009824:	f7fe ffe0 	bl	80087e8 <__retarget_lock_release_recursive>
 8009828:	4628      	mov	r0, r5
 800982a:	b003      	add	sp, #12
 800982c:	bd30      	pop	{r4, r5, pc}
 800982e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8009830:	9101      	str	r1, [sp, #4]
 8009832:	f7fe ffd7 	bl	80087e4 <__retarget_lock_acquire_recursive>
 8009836:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800983a:	9901      	ldr	r1, [sp, #4]
 800983c:	b29a      	uxth	r2, r3
 800983e:	e7d9      	b.n	80097f4 <_fputwc_r+0x18>

08009840 <_fstat_r>:
 8009840:	b538      	push	{r3, r4, r5, lr}
 8009842:	460b      	mov	r3, r1
 8009844:	4c07      	ldr	r4, [pc, #28]	; (8009864 <_fstat_r+0x24>)
 8009846:	4605      	mov	r5, r0
 8009848:	4611      	mov	r1, r2
 800984a:	4618      	mov	r0, r3
 800984c:	2300      	movs	r3, #0
 800984e:	6023      	str	r3, [r4, #0]
 8009850:	f7fb f92f 	bl	8004ab2 <_fstat>
 8009854:	1c43      	adds	r3, r0, #1
 8009856:	d000      	beq.n	800985a <_fstat_r+0x1a>
 8009858:	bd38      	pop	{r3, r4, r5, pc}
 800985a:	6823      	ldr	r3, [r4, #0]
 800985c:	2b00      	cmp	r3, #0
 800985e:	d0fb      	beq.n	8009858 <_fstat_r+0x18>
 8009860:	602b      	str	r3, [r5, #0]
 8009862:	bd38      	pop	{r3, r4, r5, pc}
 8009864:	2000157c 	.word	0x2000157c

08009868 <_isatty_r>:
 8009868:	b538      	push	{r3, r4, r5, lr}
 800986a:	4c07      	ldr	r4, [pc, #28]	; (8009888 <_isatty_r+0x20>)
 800986c:	2300      	movs	r3, #0
 800986e:	4605      	mov	r5, r0
 8009870:	4608      	mov	r0, r1
 8009872:	6023      	str	r3, [r4, #0]
 8009874:	f7fb f922 	bl	8004abc <_isatty>
 8009878:	1c43      	adds	r3, r0, #1
 800987a:	d000      	beq.n	800987e <_isatty_r+0x16>
 800987c:	bd38      	pop	{r3, r4, r5, pc}
 800987e:	6823      	ldr	r3, [r4, #0]
 8009880:	2b00      	cmp	r3, #0
 8009882:	d0fb      	beq.n	800987c <_isatty_r+0x14>
 8009884:	602b      	str	r3, [r5, #0]
 8009886:	bd38      	pop	{r3, r4, r5, pc}
 8009888:	2000157c 	.word	0x2000157c

0800988c <__locale_mb_cur_max>:
 800988c:	4b04      	ldr	r3, [pc, #16]	; (80098a0 <__locale_mb_cur_max+0x14>)
 800988e:	4a05      	ldr	r2, [pc, #20]	; (80098a4 <__locale_mb_cur_max+0x18>)
 8009890:	681b      	ldr	r3, [r3, #0]
 8009892:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8009894:	2b00      	cmp	r3, #0
 8009896:	bf08      	it	eq
 8009898:	4613      	moveq	r3, r2
 800989a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800989e:	4770      	bx	lr
 80098a0:	20000030 	.word	0x20000030
 80098a4:	20000874 	.word	0x20000874

080098a8 <_lseek_r>:
 80098a8:	b570      	push	{r4, r5, r6, lr}
 80098aa:	460d      	mov	r5, r1
 80098ac:	4c08      	ldr	r4, [pc, #32]	; (80098d0 <_lseek_r+0x28>)
 80098ae:	4611      	mov	r1, r2
 80098b0:	4606      	mov	r6, r0
 80098b2:	461a      	mov	r2, r3
 80098b4:	4628      	mov	r0, r5
 80098b6:	2300      	movs	r3, #0
 80098b8:	6023      	str	r3, [r4, #0]
 80098ba:	f7fb f901 	bl	8004ac0 <_lseek>
 80098be:	1c43      	adds	r3, r0, #1
 80098c0:	d000      	beq.n	80098c4 <_lseek_r+0x1c>
 80098c2:	bd70      	pop	{r4, r5, r6, pc}
 80098c4:	6823      	ldr	r3, [r4, #0]
 80098c6:	2b00      	cmp	r3, #0
 80098c8:	d0fb      	beq.n	80098c2 <_lseek_r+0x1a>
 80098ca:	6033      	str	r3, [r6, #0]
 80098cc:	bd70      	pop	{r4, r5, r6, pc}
 80098ce:	bf00      	nop
 80098d0:	2000157c 	.word	0x2000157c

080098d4 <__ascii_mbtowc>:
 80098d4:	b082      	sub	sp, #8
 80098d6:	b149      	cbz	r1, 80098ec <__ascii_mbtowc+0x18>
 80098d8:	b15a      	cbz	r2, 80098f2 <__ascii_mbtowc+0x1e>
 80098da:	b16b      	cbz	r3, 80098f8 <__ascii_mbtowc+0x24>
 80098dc:	7813      	ldrb	r3, [r2, #0]
 80098de:	600b      	str	r3, [r1, #0]
 80098e0:	7812      	ldrb	r2, [r2, #0]
 80098e2:	1c10      	adds	r0, r2, #0
 80098e4:	bf18      	it	ne
 80098e6:	2001      	movne	r0, #1
 80098e8:	b002      	add	sp, #8
 80098ea:	4770      	bx	lr
 80098ec:	a901      	add	r1, sp, #4
 80098ee:	2a00      	cmp	r2, #0
 80098f0:	d1f3      	bne.n	80098da <__ascii_mbtowc+0x6>
 80098f2:	4610      	mov	r0, r2
 80098f4:	b002      	add	sp, #8
 80098f6:	4770      	bx	lr
 80098f8:	f06f 0001 	mvn.w	r0, #1
 80098fc:	e7f4      	b.n	80098e8 <__ascii_mbtowc+0x14>
 80098fe:	bf00      	nop

08009900 <_read_r>:
 8009900:	b570      	push	{r4, r5, r6, lr}
 8009902:	460d      	mov	r5, r1
 8009904:	4c08      	ldr	r4, [pc, #32]	; (8009928 <_read_r+0x28>)
 8009906:	4611      	mov	r1, r2
 8009908:	4606      	mov	r6, r0
 800990a:	461a      	mov	r2, r3
 800990c:	4628      	mov	r0, r5
 800990e:	2300      	movs	r3, #0
 8009910:	6023      	str	r3, [r4, #0]
 8009912:	f7fb f889 	bl	8004a28 <_read>
 8009916:	1c43      	adds	r3, r0, #1
 8009918:	d000      	beq.n	800991c <_read_r+0x1c>
 800991a:	bd70      	pop	{r4, r5, r6, pc}
 800991c:	6823      	ldr	r3, [r4, #0]
 800991e:	2b00      	cmp	r3, #0
 8009920:	d0fb      	beq.n	800991a <_read_r+0x1a>
 8009922:	6033      	str	r3, [r6, #0]
 8009924:	bd70      	pop	{r4, r5, r6, pc}
 8009926:	bf00      	nop
 8009928:	2000157c 	.word	0x2000157c

0800992c <__swbuf_r>:
 800992c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800992e:	460d      	mov	r5, r1
 8009930:	4614      	mov	r4, r2
 8009932:	4606      	mov	r6, r0
 8009934:	b110      	cbz	r0, 800993c <__swbuf_r+0x10>
 8009936:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009938:	2b00      	cmp	r3, #0
 800993a:	d043      	beq.n	80099c4 <__swbuf_r+0x98>
 800993c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009940:	69a3      	ldr	r3, [r4, #24]
 8009942:	60a3      	str	r3, [r4, #8]
 8009944:	b291      	uxth	r1, r2
 8009946:	0708      	lsls	r0, r1, #28
 8009948:	d51b      	bpl.n	8009982 <__swbuf_r+0x56>
 800994a:	6923      	ldr	r3, [r4, #16]
 800994c:	b1cb      	cbz	r3, 8009982 <__swbuf_r+0x56>
 800994e:	b2ed      	uxtb	r5, r5
 8009950:	0489      	lsls	r1, r1, #18
 8009952:	462f      	mov	r7, r5
 8009954:	d522      	bpl.n	800999c <__swbuf_r+0x70>
 8009956:	6822      	ldr	r2, [r4, #0]
 8009958:	6961      	ldr	r1, [r4, #20]
 800995a:	1ad3      	subs	r3, r2, r3
 800995c:	4299      	cmp	r1, r3
 800995e:	dd29      	ble.n	80099b4 <__swbuf_r+0x88>
 8009960:	3301      	adds	r3, #1
 8009962:	68a1      	ldr	r1, [r4, #8]
 8009964:	1c50      	adds	r0, r2, #1
 8009966:	3901      	subs	r1, #1
 8009968:	60a1      	str	r1, [r4, #8]
 800996a:	6020      	str	r0, [r4, #0]
 800996c:	7015      	strb	r5, [r2, #0]
 800996e:	6962      	ldr	r2, [r4, #20]
 8009970:	429a      	cmp	r2, r3
 8009972:	d02a      	beq.n	80099ca <__swbuf_r+0x9e>
 8009974:	89a3      	ldrh	r3, [r4, #12]
 8009976:	07db      	lsls	r3, r3, #31
 8009978:	d501      	bpl.n	800997e <__swbuf_r+0x52>
 800997a:	2d0a      	cmp	r5, #10
 800997c:	d025      	beq.n	80099ca <__swbuf_r+0x9e>
 800997e:	4638      	mov	r0, r7
 8009980:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009982:	4621      	mov	r1, r4
 8009984:	4630      	mov	r0, r6
 8009986:	f7fd fa4b 	bl	8006e20 <__swsetup_r>
 800998a:	bb20      	cbnz	r0, 80099d6 <__swbuf_r+0xaa>
 800998c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009990:	6923      	ldr	r3, [r4, #16]
 8009992:	b291      	uxth	r1, r2
 8009994:	b2ed      	uxtb	r5, r5
 8009996:	0489      	lsls	r1, r1, #18
 8009998:	462f      	mov	r7, r5
 800999a:	d4dc      	bmi.n	8009956 <__swbuf_r+0x2a>
 800999c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800999e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80099a2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80099a6:	81a2      	strh	r2, [r4, #12]
 80099a8:	6822      	ldr	r2, [r4, #0]
 80099aa:	6661      	str	r1, [r4, #100]	; 0x64
 80099ac:	6961      	ldr	r1, [r4, #20]
 80099ae:	1ad3      	subs	r3, r2, r3
 80099b0:	4299      	cmp	r1, r3
 80099b2:	dcd5      	bgt.n	8009960 <__swbuf_r+0x34>
 80099b4:	4621      	mov	r1, r4
 80099b6:	4630      	mov	r0, r6
 80099b8:	f7fe fb68 	bl	800808c <_fflush_r>
 80099bc:	b958      	cbnz	r0, 80099d6 <__swbuf_r+0xaa>
 80099be:	6822      	ldr	r2, [r4, #0]
 80099c0:	2301      	movs	r3, #1
 80099c2:	e7ce      	b.n	8009962 <__swbuf_r+0x36>
 80099c4:	f7fe fbbe 	bl	8008144 <__sinit>
 80099c8:	e7b8      	b.n	800993c <__swbuf_r+0x10>
 80099ca:	4621      	mov	r1, r4
 80099cc:	4630      	mov	r0, r6
 80099ce:	f7fe fb5d 	bl	800808c <_fflush_r>
 80099d2:	2800      	cmp	r0, #0
 80099d4:	d0d3      	beq.n	800997e <__swbuf_r+0x52>
 80099d6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80099da:	e7d0      	b.n	800997e <__swbuf_r+0x52>

080099dc <_wcrtomb_r>:
 80099dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80099de:	4c11      	ldr	r4, [pc, #68]	; (8009a24 <_wcrtomb_r+0x48>)
 80099e0:	6824      	ldr	r4, [r4, #0]
 80099e2:	b085      	sub	sp, #20
 80099e4:	4606      	mov	r6, r0
 80099e6:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80099e8:	461f      	mov	r7, r3
 80099ea:	b151      	cbz	r1, 8009a02 <_wcrtomb_r+0x26>
 80099ec:	4d0e      	ldr	r5, [pc, #56]	; (8009a28 <_wcrtomb_r+0x4c>)
 80099ee:	2c00      	cmp	r4, #0
 80099f0:	bf08      	it	eq
 80099f2:	462c      	moveq	r4, r5
 80099f4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80099f8:	47a0      	blx	r4
 80099fa:	1c43      	adds	r3, r0, #1
 80099fc:	d00c      	beq.n	8009a18 <_wcrtomb_r+0x3c>
 80099fe:	b005      	add	sp, #20
 8009a00:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009a02:	4a09      	ldr	r2, [pc, #36]	; (8009a28 <_wcrtomb_r+0x4c>)
 8009a04:	2c00      	cmp	r4, #0
 8009a06:	bf08      	it	eq
 8009a08:	4614      	moveq	r4, r2
 8009a0a:	460a      	mov	r2, r1
 8009a0c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009a10:	a901      	add	r1, sp, #4
 8009a12:	47a0      	blx	r4
 8009a14:	1c43      	adds	r3, r0, #1
 8009a16:	d1f2      	bne.n	80099fe <_wcrtomb_r+0x22>
 8009a18:	2200      	movs	r2, #0
 8009a1a:	238a      	movs	r3, #138	; 0x8a
 8009a1c:	603a      	str	r2, [r7, #0]
 8009a1e:	6033      	str	r3, [r6, #0]
 8009a20:	b005      	add	sp, #20
 8009a22:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009a24:	20000030 	.word	0x20000030
 8009a28:	20000874 	.word	0x20000874

08009a2c <__ascii_wctomb>:
 8009a2c:	b121      	cbz	r1, 8009a38 <__ascii_wctomb+0xc>
 8009a2e:	2aff      	cmp	r2, #255	; 0xff
 8009a30:	d804      	bhi.n	8009a3c <__ascii_wctomb+0x10>
 8009a32:	700a      	strb	r2, [r1, #0]
 8009a34:	2001      	movs	r0, #1
 8009a36:	4770      	bx	lr
 8009a38:	4608      	mov	r0, r1
 8009a3a:	4770      	bx	lr
 8009a3c:	238a      	movs	r3, #138	; 0x8a
 8009a3e:	6003      	str	r3, [r0, #0]
 8009a40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009a44:	4770      	bx	lr
 8009a46:	bf00      	nop

08009a48 <_init>:
 8009a48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009a4a:	bf00      	nop
 8009a4c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009a4e:	bc08      	pop	{r3}
 8009a50:	469e      	mov	lr, r3
 8009a52:	4770      	bx	lr

08009a54 <_fini>:
 8009a54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009a56:	bf00      	nop
 8009a58:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009a5a:	bc08      	pop	{r3}
 8009a5c:	469e      	mov	lr, r3
 8009a5e:	4770      	bx	lr
