
frac.elf:     file format elf32-littlearm


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
 80001d8:	20000a18 	.word	0x20000a18
 80001dc:	00000000 	.word	0x00000000
 80001e0:	0800727c 	.word	0x0800727c

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a1c 	.word	0x20000a1c
 80001fc:	0800727c 	.word	0x0800727c

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

08000dfc <memcpy>:
 8000dfc:	4684      	mov	ip, r0
 8000dfe:	ea41 0300 	orr.w	r3, r1, r0
 8000e02:	f013 0303 	ands.w	r3, r3, #3
 8000e06:	d16d      	bne.n	8000ee4 <memcpy+0xe8>
 8000e08:	3a40      	subs	r2, #64	; 0x40
 8000e0a:	d341      	bcc.n	8000e90 <memcpy+0x94>
 8000e0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e10:	f840 3b04 	str.w	r3, [r0], #4
 8000e14:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e18:	f840 3b04 	str.w	r3, [r0], #4
 8000e1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e20:	f840 3b04 	str.w	r3, [r0], #4
 8000e24:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e28:	f840 3b04 	str.w	r3, [r0], #4
 8000e2c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e30:	f840 3b04 	str.w	r3, [r0], #4
 8000e34:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e38:	f840 3b04 	str.w	r3, [r0], #4
 8000e3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e40:	f840 3b04 	str.w	r3, [r0], #4
 8000e44:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e48:	f840 3b04 	str.w	r3, [r0], #4
 8000e4c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e50:	f840 3b04 	str.w	r3, [r0], #4
 8000e54:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e58:	f840 3b04 	str.w	r3, [r0], #4
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
 8000e8c:	3a40      	subs	r2, #64	; 0x40
 8000e8e:	d2bd      	bcs.n	8000e0c <memcpy+0x10>
 8000e90:	3230      	adds	r2, #48	; 0x30
 8000e92:	d311      	bcc.n	8000eb8 <memcpy+0xbc>
 8000e94:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e98:	f840 3b04 	str.w	r3, [r0], #4
 8000e9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ea0:	f840 3b04 	str.w	r3, [r0], #4
 8000ea4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ea8:	f840 3b04 	str.w	r3, [r0], #4
 8000eac:	f851 3b04 	ldr.w	r3, [r1], #4
 8000eb0:	f840 3b04 	str.w	r3, [r0], #4
 8000eb4:	3a10      	subs	r2, #16
 8000eb6:	d2ed      	bcs.n	8000e94 <memcpy+0x98>
 8000eb8:	320c      	adds	r2, #12
 8000eba:	d305      	bcc.n	8000ec8 <memcpy+0xcc>
 8000ebc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ec0:	f840 3b04 	str.w	r3, [r0], #4
 8000ec4:	3a04      	subs	r2, #4
 8000ec6:	d2f9      	bcs.n	8000ebc <memcpy+0xc0>
 8000ec8:	3204      	adds	r2, #4
 8000eca:	d008      	beq.n	8000ede <memcpy+0xe2>
 8000ecc:	07d2      	lsls	r2, r2, #31
 8000ece:	bf1c      	itt	ne
 8000ed0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000ed4:	f800 3b01 	strbne.w	r3, [r0], #1
 8000ed8:	d301      	bcc.n	8000ede <memcpy+0xe2>
 8000eda:	880b      	ldrh	r3, [r1, #0]
 8000edc:	8003      	strh	r3, [r0, #0]
 8000ede:	4660      	mov	r0, ip
 8000ee0:	4770      	bx	lr
 8000ee2:	bf00      	nop
 8000ee4:	2a08      	cmp	r2, #8
 8000ee6:	d313      	bcc.n	8000f10 <memcpy+0x114>
 8000ee8:	078b      	lsls	r3, r1, #30
 8000eea:	d08d      	beq.n	8000e08 <memcpy+0xc>
 8000eec:	f010 0303 	ands.w	r3, r0, #3
 8000ef0:	d08a      	beq.n	8000e08 <memcpy+0xc>
 8000ef2:	f1c3 0304 	rsb	r3, r3, #4
 8000ef6:	1ad2      	subs	r2, r2, r3
 8000ef8:	07db      	lsls	r3, r3, #31
 8000efa:	bf1c      	itt	ne
 8000efc:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f00:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f04:	d380      	bcc.n	8000e08 <memcpy+0xc>
 8000f06:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000f0a:	f820 3b02 	strh.w	r3, [r0], #2
 8000f0e:	e77b      	b.n	8000e08 <memcpy+0xc>
 8000f10:	3a04      	subs	r2, #4
 8000f12:	d3d9      	bcc.n	8000ec8 <memcpy+0xcc>
 8000f14:	3a01      	subs	r2, #1
 8000f16:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000f1a:	f800 3b01 	strb.w	r3, [r0], #1
 8000f1e:	d2f9      	bcs.n	8000f14 <memcpy+0x118>
 8000f20:	780b      	ldrb	r3, [r1, #0]
 8000f22:	7003      	strb	r3, [r0, #0]
 8000f24:	784b      	ldrb	r3, [r1, #1]
 8000f26:	7043      	strb	r3, [r0, #1]
 8000f28:	788b      	ldrb	r3, [r1, #2]
 8000f2a:	7083      	strb	r3, [r0, #2]
 8000f2c:	4660      	mov	r0, ip
 8000f2e:	4770      	bx	lr
	...

08000f40 <strlen>:
 8000f40:	f890 f000 	pld	[r0]
 8000f44:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000f48:	f020 0107 	bic.w	r1, r0, #7
 8000f4c:	f06f 0c00 	mvn.w	ip, #0
 8000f50:	f010 0407 	ands.w	r4, r0, #7
 8000f54:	f891 f020 	pld	[r1, #32]
 8000f58:	f040 8049 	bne.w	8000fee <strlen+0xae>
 8000f5c:	f04f 0400 	mov.w	r4, #0
 8000f60:	f06f 0007 	mvn.w	r0, #7
 8000f64:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000f68:	f891 f040 	pld	[r1, #64]	; 0x40
 8000f6c:	f100 0008 	add.w	r0, r0, #8
 8000f70:	fa82 f24c 	uadd8	r2, r2, ip
 8000f74:	faa4 f28c 	sel	r2, r4, ip
 8000f78:	fa83 f34c 	uadd8	r3, r3, ip
 8000f7c:	faa2 f38c 	sel	r3, r2, ip
 8000f80:	bb4b      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000f82:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000f86:	fa82 f24c 	uadd8	r2, r2, ip
 8000f8a:	f100 0008 	add.w	r0, r0, #8
 8000f8e:	faa4 f28c 	sel	r2, r4, ip
 8000f92:	fa83 f34c 	uadd8	r3, r3, ip
 8000f96:	faa2 f38c 	sel	r3, r2, ip
 8000f9a:	b9e3      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000f9c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000fa0:	fa82 f24c 	uadd8	r2, r2, ip
 8000fa4:	f100 0008 	add.w	r0, r0, #8
 8000fa8:	faa4 f28c 	sel	r2, r4, ip
 8000fac:	fa83 f34c 	uadd8	r3, r3, ip
 8000fb0:	faa2 f38c 	sel	r3, r2, ip
 8000fb4:	b97b      	cbnz	r3, 8000fd6 <strlen+0x96>
 8000fb6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8000fba:	f101 0120 	add.w	r1, r1, #32
 8000fbe:	fa82 f24c 	uadd8	r2, r2, ip
 8000fc2:	f100 0008 	add.w	r0, r0, #8
 8000fc6:	faa4 f28c 	sel	r2, r4, ip
 8000fca:	fa83 f34c 	uadd8	r3, r3, ip
 8000fce:	faa2 f38c 	sel	r3, r2, ip
 8000fd2:	2b00      	cmp	r3, #0
 8000fd4:	d0c6      	beq.n	8000f64 <strlen+0x24>
 8000fd6:	2a00      	cmp	r2, #0
 8000fd8:	bf04      	itt	eq
 8000fda:	3004      	addeq	r0, #4
 8000fdc:	461a      	moveq	r2, r3
 8000fde:	ba12      	rev	r2, r2
 8000fe0:	fab2 f282 	clz	r2, r2
 8000fe4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8000fe8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8000fec:	4770      	bx	lr
 8000fee:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000ff2:	f004 0503 	and.w	r5, r4, #3
 8000ff6:	f1c4 0000 	rsb	r0, r4, #0
 8000ffa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8000ffe:	f014 0f04 	tst.w	r4, #4
 8001002:	f891 f040 	pld	[r1, #64]	; 0x40
 8001006:	fa0c f505 	lsl.w	r5, ip, r5
 800100a:	ea62 0205 	orn	r2, r2, r5
 800100e:	bf1c      	itt	ne
 8001010:	ea63 0305 	ornne	r3, r3, r5
 8001014:	4662      	movne	r2, ip
 8001016:	f04f 0400 	mov.w	r4, #0
 800101a:	e7a9      	b.n	8000f70 <strlen+0x30>
 800101c:	0000      	movs	r0, r0
	...

08001020 <memchr>:
 8001020:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8001024:	2a10      	cmp	r2, #16
 8001026:	db2b      	blt.n	8001080 <memchr+0x60>
 8001028:	f010 0f07 	tst.w	r0, #7
 800102c:	d008      	beq.n	8001040 <memchr+0x20>
 800102e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001032:	3a01      	subs	r2, #1
 8001034:	428b      	cmp	r3, r1
 8001036:	d02d      	beq.n	8001094 <memchr+0x74>
 8001038:	f010 0f07 	tst.w	r0, #7
 800103c:	b342      	cbz	r2, 8001090 <memchr+0x70>
 800103e:	d1f6      	bne.n	800102e <memchr+0xe>
 8001040:	b4f0      	push	{r4, r5, r6, r7}
 8001042:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8001046:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800104a:	f022 0407 	bic.w	r4, r2, #7
 800104e:	f07f 0700 	mvns.w	r7, #0
 8001052:	2300      	movs	r3, #0
 8001054:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8001058:	3c08      	subs	r4, #8
 800105a:	ea85 0501 	eor.w	r5, r5, r1
 800105e:	ea86 0601 	eor.w	r6, r6, r1
 8001062:	fa85 f547 	uadd8	r5, r5, r7
 8001066:	faa3 f587 	sel	r5, r3, r7
 800106a:	fa86 f647 	uadd8	r6, r6, r7
 800106e:	faa5 f687 	sel	r6, r5, r7
 8001072:	b98e      	cbnz	r6, 8001098 <memchr+0x78>
 8001074:	d1ee      	bne.n	8001054 <memchr+0x34>
 8001076:	bcf0      	pop	{r4, r5, r6, r7}
 8001078:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800107c:	f002 0207 	and.w	r2, r2, #7
 8001080:	b132      	cbz	r2, 8001090 <memchr+0x70>
 8001082:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001086:	3a01      	subs	r2, #1
 8001088:	ea83 0301 	eor.w	r3, r3, r1
 800108c:	b113      	cbz	r3, 8001094 <memchr+0x74>
 800108e:	d1f8      	bne.n	8001082 <memchr+0x62>
 8001090:	2000      	movs	r0, #0
 8001092:	4770      	bx	lr
 8001094:	3801      	subs	r0, #1
 8001096:	4770      	bx	lr
 8001098:	2d00      	cmp	r5, #0
 800109a:	bf06      	itte	eq
 800109c:	4635      	moveq	r5, r6
 800109e:	3803      	subeq	r0, #3
 80010a0:	3807      	subne	r0, #7
 80010a2:	f015 0f01 	tst.w	r5, #1
 80010a6:	d107      	bne.n	80010b8 <memchr+0x98>
 80010a8:	3001      	adds	r0, #1
 80010aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80010ae:	bf02      	ittt	eq
 80010b0:	3001      	addeq	r0, #1
 80010b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80010b6:	3001      	addeq	r0, #1
 80010b8:	bcf0      	pop	{r4, r5, r6, r7}
 80010ba:	3801      	subs	r0, #1
 80010bc:	4770      	bx	lr
 80010be:	bf00      	nop

080010c0 <__aeabi_dcmpun>:
 80010c0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80010c4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010c8:	d102      	bne.n	80010d0 <__aeabi_dcmpun+0x10>
 80010ca:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80010ce:	d10a      	bne.n	80010e6 <__aeabi_dcmpun+0x26>
 80010d0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80010d4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010d8:	d102      	bne.n	80010e0 <__aeabi_dcmpun+0x20>
 80010da:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80010de:	d102      	bne.n	80010e6 <__aeabi_dcmpun+0x26>
 80010e0:	f04f 0000 	mov.w	r0, #0
 80010e4:	4770      	bx	lr
 80010e6:	f04f 0001 	mov.w	r0, #1
 80010ea:	4770      	bx	lr

080010ec <HAL_Init>:
 80010ec:	b580      	push	{r7, lr}
 80010ee:	466f      	mov	r7, sp
 80010f0:	2003      	movs	r0, #3
 80010f2:	f000 f819 	bl	8001128 <HAL_NVIC_SetPriorityGrouping>
 80010f6:	200f      	movs	r0, #15
 80010f8:	f000 fb84 	bl	8001804 <HAL_InitTick>
 80010fc:	2800      	cmp	r0, #0
 80010fe:	bf1c      	itt	ne
 8001100:	2001      	movne	r0, #1
 8001102:	bd80      	popne	{r7, pc}
 8001104:	f000 f94b 	bl	800139e <HAL_MspInit>
 8001108:	2000      	movs	r0, #0
 800110a:	bd80      	pop	{r7, pc}

0800110c <HAL_IncTick>:
 800110c:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8001110:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001114:	6801      	ldr	r1, [r0, #0]
 8001116:	3101      	adds	r1, #1
 8001118:	6001      	str	r1, [r0, #0]
 800111a:	4770      	bx	lr

0800111c <HAL_GetTick>:
 800111c:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8001120:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001124:	6800      	ldr	r0, [r0, #0]
 8001126:	4770      	bx	lr

08001128 <HAL_NVIC_SetPriorityGrouping>:
 8001128:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800112c:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001130:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001134:	680a      	ldr	r2, [r1, #0]
 8001136:	401a      	ands	r2, r3
 8001138:	f360 220a 	bfi	r2, r0, #8, #3
 800113c:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001140:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001144:	6008      	str	r0, [r1, #0]
 8001146:	4770      	bx	lr

08001148 <HAL_NVIC_SetPriority>:
 8001148:	b580      	push	{r7, lr}
 800114a:	466f      	mov	r7, sp
 800114c:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001150:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001154:	2800      	cmp	r0, #0
 8001156:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800115a:	f000 030f 	and.w	r3, r0, #15
 800115e:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001162:	f1a3 0304 	sub.w	r3, r3, #4
 8001166:	4473      	add	r3, lr
 8001168:	bfb8      	it	lt
 800116a:	f103 0c0c 	addlt.w	ip, r3, #12
 800116e:	f8de 0000 	ldr.w	r0, [lr]
 8001172:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001176:	f100 0e04 	add.w	lr, r0, #4
 800117a:	1ec3      	subs	r3, r0, #3
 800117c:	f080 0007 	eor.w	r0, r0, #7
 8001180:	f1be 0f07 	cmp.w	lr, #7
 8001184:	f04f 0e01 	mov.w	lr, #1
 8001188:	bf38      	it	cc
 800118a:	2300      	movcc	r3, #0
 800118c:	2804      	cmp	r0, #4
 800118e:	bf28      	it	cs
 8001190:	2004      	movcs	r0, #4
 8001192:	fa0e f000 	lsl.w	r0, lr, r0
 8001196:	3801      	subs	r0, #1
 8001198:	4008      	ands	r0, r1
 800119a:	fa0e f103 	lsl.w	r1, lr, r3
 800119e:	310f      	adds	r1, #15
 80011a0:	4098      	lsls	r0, r3
 80011a2:	4011      	ands	r1, r2
 80011a4:	4308      	orrs	r0, r1
 80011a6:	0100      	lsls	r0, r0, #4
 80011a8:	f88c 0000 	strb.w	r0, [ip]
 80011ac:	bd80      	pop	{r7, pc}

080011ae <HAL_NVIC_EnableIRQ>:
 80011ae:	f000 011f 	and.w	r1, r0, #31
 80011b2:	2201      	movs	r2, #1
 80011b4:	0940      	lsrs	r0, r0, #5
 80011b6:	fa02 f101 	lsl.w	r1, r2, r1
 80011ba:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011be:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011c2:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c6:	4770      	bx	lr

080011c8 <HAL_SYSTICK_IRQHandler>:
 80011c8:	f000 b800 	b.w	80011cc <HAL_SYSTICK_Callback>

080011cc <HAL_SYSTICK_Callback>:
 80011cc:	4770      	bx	lr

080011ce <HAL_GPIO_Init>:
 80011ce:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011d0:	af03      	add	r7, sp, #12
 80011d2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011d6:	b082      	sub	sp, #8
 80011d8:	680e      	ldr	r6, [r1, #0]
 80011da:	2e00      	cmp	r6, #0
 80011dc:	f000 80db 	beq.w	8001396 <HAL_GPIO_Init+0x1c8>
 80011e0:	f641 0200 	movw	r2, #6144	; 0x1800
 80011e4:	2507      	movs	r5, #7
 80011e6:	f04f 0801 	mov.w	r8, #1
 80011ea:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80011ee:	4290      	cmp	r0, r2
 80011f0:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80011f4:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80011f8:	bf08      	it	eq
 80011fa:	2506      	moveq	r5, #6
 80011fc:	2b06      	cmp	r3, #6
 80011fe:	bf38      	it	cc
 8001200:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001204:	2200      	movs	r2, #0
 8001206:	9500      	str	r5, [sp, #0]
 8001208:	2500      	movs	r5, #0
 800120a:	f1a8 0a01 	sub.w	sl, r8, #1
 800120e:	2301      	movs	r3, #1
 8001210:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001214:	ea16 090b 	ands.w	r9, r6, fp
 8001218:	f000 80b4 	beq.w	8001384 <HAL_GPIO_Init+0x1b6>
 800121c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001220:	f04e 0610 	orr.w	r6, lr, #16
 8001224:	2e12      	cmp	r6, #18
 8001226:	d115      	bne.n	8001254 <HAL_GPIO_Init+0x86>
 8001228:	f005 061c 	and.w	r6, r5, #28
 800122c:	230f      	movs	r3, #15
 800122e:	fa03 fc06 	lsl.w	ip, r3, r6
 8001232:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001236:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800123a:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800123e:	4404      	add	r4, r0
 8001240:	6a23      	ldr	r3, [r4, #32]
 8001242:	ea23 0c0c 	bic.w	ip, r3, ip
 8001246:	690b      	ldr	r3, [r1, #16]
 8001248:	40b3      	lsls	r3, r6
 800124a:	ea43 030c 	orr.w	r3, r3, ip
 800124e:	6223      	str	r3, [r4, #32]
 8001250:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001254:	6806      	ldr	r6, [r0, #0]
 8001256:	2403      	movs	r4, #3
 8001258:	f00e 0c03 	and.w	ip, lr, #3
 800125c:	f1be 0f12 	cmp.w	lr, #18
 8001260:	fa04 f402 	lsl.w	r4, r4, r2
 8001264:	fa0c f302 	lsl.w	r3, ip, r2
 8001268:	ea26 0604 	bic.w	r6, r6, r4
 800126c:	ea43 0306 	orr.w	r3, r3, r6
 8001270:	ea6f 0604 	mvn.w	r6, r4
 8001274:	6003      	str	r3, [r0, #0]
 8001276:	d816      	bhi.n	80012a6 <HAL_GPIO_Init+0xd8>
 8001278:	2301      	movs	r3, #1
 800127a:	fa03 f30e 	lsl.w	r3, r3, lr
 800127e:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 8001282:	bf1f      	itttt	ne
 8001284:	6883      	ldrne	r3, [r0, #8]
 8001286:	4033      	andne	r3, r6
 8001288:	68cc      	ldrne	r4, [r1, #12]
 800128a:	4094      	lslne	r4, r2
 800128c:	bf1f      	itttt	ne
 800128e:	4323      	orrne	r3, r4
 8001290:	6083      	strne	r3, [r0, #8]
 8001292:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001296:	fa03 f30a 	lslne.w	r3, r3, sl
 800129a:	bf1f      	itttt	ne
 800129c:	6844      	ldrne	r4, [r0, #4]
 800129e:	ea24 040b 	bicne.w	r4, r4, fp
 80012a2:	4323      	orrne	r3, r4
 80012a4:	6043      	strne	r3, [r0, #4]
 80012a6:	f1bc 0f03 	cmp.w	ip, #3
 80012aa:	d108      	bne.n	80012be <HAL_GPIO_Init+0xf0>
 80012ac:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012b0:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012b2:	fa03 f30a 	lsl.w	r3, r3, sl
 80012b6:	ea24 040b 	bic.w	r4, r4, fp
 80012ba:	4323      	orrs	r3, r4
 80012bc:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012be:	68c3      	ldr	r3, [r0, #12]
 80012c0:	4033      	ands	r3, r6
 80012c2:	688e      	ldr	r6, [r1, #8]
 80012c4:	4096      	lsls	r6, r2
 80012c6:	4333      	orrs	r3, r6
 80012c8:	60c3      	str	r3, [r0, #12]
 80012ca:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012ce:	d559      	bpl.n	8001384 <HAL_GPIO_Init+0x1b6>
 80012d0:	f241 0360 	movw	r3, #4192	; 0x1060
 80012d4:	f005 040c 	and.w	r4, r5, #12
 80012d8:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012dc:	461e      	mov	r6, r3
 80012de:	6833      	ldr	r3, [r6, #0]
 80012e0:	f043 0301 	orr.w	r3, r3, #1
 80012e4:	6033      	str	r3, [r6, #0]
 80012e6:	6833      	ldr	r3, [r6, #0]
 80012e8:	f240 4600 	movw	r6, #1024	; 0x400
 80012ec:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80012f0:	46b6      	mov	lr, r6
 80012f2:	f003 0301 	and.w	r3, r3, #1
 80012f6:	9301      	str	r3, [sp, #4]
 80012f8:	f02a 0303 	bic.w	r3, sl, #3
 80012fc:	9e01      	ldr	r6, [sp, #4]
 80012fe:	4473      	add	r3, lr
 8001300:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001304:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001308:	46b2      	mov	sl, r6
 800130a:	260f      	movs	r6, #15
 800130c:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001310:	40a6      	lsls	r6, r4
 8001312:	ea2c 0c06 	bic.w	ip, ip, r6
 8001316:	9e00      	ldr	r6, [sp, #0]
 8001318:	fa06 f404 	lsl.w	r4, r6, r4
 800131c:	ea4c 0604 	orr.w	r6, ip, r4
 8001320:	f843 600a 	str.w	r6, [r3, sl]
 8001324:	f8de 3000 	ldr.w	r3, [lr]
 8001328:	684e      	ldr	r6, [r1, #4]
 800132a:	ea23 0309 	bic.w	r3, r3, r9
 800132e:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001332:	bf18      	it	ne
 8001334:	ea43 0309 	orrne.w	r3, r3, r9
 8001338:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 800133c:	f8ce 3000 	str.w	r3, [lr]
 8001340:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001344:	ea23 0309 	bic.w	r3, r3, r9
 8001348:	bf18      	it	ne
 800134a:	ea43 0309 	orrne.w	r3, r3, r9
 800134e:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001352:	f8ce 3004 	str.w	r3, [lr, #4]
 8001356:	f8de 3008 	ldr.w	r3, [lr, #8]
 800135a:	ea23 0309 	bic.w	r3, r3, r9
 800135e:	bf18      	it	ne
 8001360:	ea43 0309 	orrne.w	r3, r3, r9
 8001364:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001368:	f8ce 3008 	str.w	r3, [lr, #8]
 800136c:	f240 430c 	movw	r3, #1036	; 0x40c
 8001370:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001374:	461c      	mov	r4, r3
 8001376:	6823      	ldr	r3, [r4, #0]
 8001378:	ea23 0309 	bic.w	r3, r3, r9
 800137c:	bf18      	it	ne
 800137e:	ea43 0309 	orrne.w	r3, r3, r9
 8001382:	6023      	str	r3, [r4, #0]
 8001384:	680e      	ldr	r6, [r1, #0]
 8001386:	3202      	adds	r2, #2
 8001388:	3504      	adds	r5, #4
 800138a:	fa36 f308 	lsrs.w	r3, r6, r8
 800138e:	f108 0801 	add.w	r8, r8, #1
 8001392:	f47f af3a 	bne.w	800120a <HAL_GPIO_Init+0x3c>
 8001396:	b002      	add	sp, #8
 8001398:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800139c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800139e <HAL_MspInit>:
 800139e:	4770      	bx	lr

080013a0 <HAL_RCC_GetSysClockFreq>:
 80013a0:	b580      	push	{r7, lr}
 80013a2:	466f      	mov	r7, sp
 80013a4:	f241 010c 	movw	r1, #4108	; 0x100c
 80013a8:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013ac:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013b0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013b4:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013b8:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013bc:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013c0:	6808      	ldr	r0, [r1, #0]
 80013c2:	f012 030c 	ands.w	r3, r2, #12
 80013c6:	d005      	beq.n	80013d4 <HAL_RCC_GetSysClockFreq+0x34>
 80013c8:	2b0c      	cmp	r3, #12
 80013ca:	bf04      	itt	eq
 80013cc:	f000 0003 	andeq.w	r0, r0, #3
 80013d0:	2801      	cmpeq	r0, #1
 80013d2:	d118      	bne.n	8001406 <HAL_RCC_GetSysClockFreq+0x66>
 80013d4:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013d8:	f010 0f08 	tst.w	r0, #8
 80013dc:	d103      	bne.n	80013e6 <HAL_RCC_GetSysClockFreq+0x46>
 80013de:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013e2:	0a00      	lsrs	r0, r0, #8
 80013e4:	e002      	b.n	80013ec <HAL_RCC_GetSysClockFreq+0x4c>
 80013e6:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013ea:	0900      	lsrs	r0, r0, #4
 80013ec:	f247 22b0 	movw	r2, #29360	; 0x72b0
 80013f0:	f000 000f 	and.w	r0, r0, #15
 80013f4:	2b00      	cmp	r3, #0
 80013f6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80013fa:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80013fe:	4610      	mov	r0, r2
 8001400:	bf18      	it	ne
 8001402:	2000      	movne	r0, #0
 8001404:	e00b      	b.n	800141e <HAL_RCC_GetSysClockFreq+0x7e>
 8001406:	f003 000f 	and.w	r0, r3, #15
 800140a:	2804      	cmp	r0, #4
 800140c:	bf04      	itt	eq
 800140e:	4660      	moveq	r0, ip
 8001410:	bd80      	popeq	{r7, pc}
 8001412:	2808      	cmp	r0, #8
 8001414:	bf04      	itt	eq
 8001416:	4670      	moveq	r0, lr
 8001418:	bd80      	popeq	{r7, pc}
 800141a:	2000      	movs	r0, #0
 800141c:	2200      	movs	r2, #0
 800141e:	2b0c      	cmp	r3, #12
 8001420:	bf18      	it	ne
 8001422:	bd80      	popne	{r7, pc}
 8001424:	6808      	ldr	r0, [r1, #0]
 8001426:	f000 0303 	and.w	r3, r0, #3
 800142a:	6808      	ldr	r0, [r1, #0]
 800142c:	2b03      	cmp	r3, #3
 800142e:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001432:	f100 0001 	add.w	r0, r0, #1
 8001436:	d003      	beq.n	8001440 <HAL_RCC_GetSysClockFreq+0xa0>
 8001438:	2b02      	cmp	r3, #2
 800143a:	46e6      	mov	lr, ip
 800143c:	bf18      	it	ne
 800143e:	4696      	movne	lr, r2
 8001440:	680a      	ldr	r2, [r1, #0]
 8001442:	fbbe f0f0 	udiv	r0, lr, r0
 8001446:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800144a:	6809      	ldr	r1, [r1, #0]
 800144c:	4350      	muls	r0, r2
 800144e:	2202      	movs	r2, #2
 8001450:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001454:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001458:	fbb0 f0f1 	udiv	r0, r0, r1
 800145c:	bd80      	pop	{r7, pc}

0800145e <HAL_RCC_GetPCLK1Freq>:
 800145e:	f240 0068 	movw	r0, #104	; 0x68
 8001462:	f241 0108 	movw	r1, #4104	; 0x1008
 8001466:	f247 22a8 	movw	r2, #29352	; 0x72a8
 800146a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800146e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001472:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001476:	6800      	ldr	r0, [r0, #0]
 8001478:	6809      	ldr	r1, [r1, #0]
 800147a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800147e:	5c51      	ldrb	r1, [r2, r1]
 8001480:	f001 011f 	and.w	r1, r1, #31
 8001484:	40c8      	lsrs	r0, r1
 8001486:	4770      	bx	lr

08001488 <HAL_RCC_GetPCLK2Freq>:
 8001488:	f240 0068 	movw	r0, #104	; 0x68
 800148c:	f241 0108 	movw	r1, #4104	; 0x1008
 8001490:	f247 22a8 	movw	r2, #29352	; 0x72a8
 8001494:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001498:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800149c:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014a0:	6800      	ldr	r0, [r0, #0]
 80014a2:	6809      	ldr	r1, [r1, #0]
 80014a4:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014a8:	5c51      	ldrb	r1, [r2, r1]
 80014aa:	f001 011f 	and.w	r1, r1, #31
 80014ae:	40c8      	lsrs	r0, r1
 80014b0:	4770      	bx	lr

080014b2 <HAL_RCC_GetClockConfig>:
 80014b2:	220f      	movs	r2, #15
 80014b4:	6002      	str	r2, [r0, #0]
 80014b6:	f241 0208 	movw	r2, #4104	; 0x1008
 80014ba:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014be:	6813      	ldr	r3, [r2, #0]
 80014c0:	f003 0303 	and.w	r3, r3, #3
 80014c4:	6043      	str	r3, [r0, #4]
 80014c6:	6813      	ldr	r3, [r2, #0]
 80014c8:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014cc:	6083      	str	r3, [r0, #8]
 80014ce:	6813      	ldr	r3, [r2, #0]
 80014d0:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014d4:	60c3      	str	r3, [r0, #12]
 80014d6:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014da:	6812      	ldr	r2, [r2, #0]
 80014dc:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014e0:	6102      	str	r2, [r0, #16]
 80014e2:	f242 0000 	movw	r0, #8192	; 0x2000
 80014e6:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014ea:	6800      	ldr	r0, [r0, #0]
 80014ec:	f000 0007 	and.w	r0, r0, #7
 80014f0:	6008      	str	r0, [r1, #0]
 80014f2:	4770      	bx	lr

080014f4 <HAL_TIM_Base_Init>:
 80014f4:	b5d0      	push	{r4, r6, r7, lr}
 80014f6:	af02      	add	r7, sp, #8
 80014f8:	4604      	mov	r4, r0
 80014fa:	2c00      	cmp	r4, #0
 80014fc:	bf04      	itt	eq
 80014fe:	2001      	moveq	r0, #1
 8001500:	bdd0      	popeq	{r4, r6, r7, pc}
 8001502:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001504:	b920      	cbnz	r0, 8001510 <HAL_TIM_Base_Init+0x1c>
 8001506:	2000      	movs	r0, #0
 8001508:	63e0      	str	r0, [r4, #60]	; 0x3c
 800150a:	4620      	mov	r0, r4
 800150c:	f000 f892 	bl	8001634 <HAL_TIM_Base_MspInit>
 8001510:	2002      	movs	r0, #2
 8001512:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001516:	6420      	str	r0, [r4, #64]	; 0x40
 8001518:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800151c:	6820      	ldr	r0, [r4, #0]
 800151e:	6801      	ldr	r1, [r0, #0]
 8001520:	4290      	cmp	r0, r2
 8001522:	dc0f      	bgt.n	8001544 <HAL_TIM_Base_Init+0x50>
 8001524:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001528:	bf1e      	ittt	ne
 800152a:	f240 4200 	movwne	r2, #1024	; 0x400
 800152e:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001532:	4290      	cmpne	r0, r2
 8001534:	d018      	beq.n	8001568 <HAL_TIM_Base_Init+0x74>
 8001536:	f640 0200 	movw	r2, #2048	; 0x800
 800153a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800153e:	4290      	cmp	r0, r2
 8001540:	d012      	beq.n	8001568 <HAL_TIM_Base_Init+0x74>
 8001542:	e015      	b.n	8001570 <HAL_TIM_Base_Init+0x7c>
 8001544:	f640 4200 	movw	r2, #3072	; 0xc00
 8001548:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800154c:	4290      	cmp	r0, r2
 800154e:	bf1e      	ittt	ne
 8001550:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001554:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001558:	4290      	cmpne	r0, r2
 800155a:	d005      	beq.n	8001568 <HAL_TIM_Base_Init+0x74>
 800155c:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001560:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001564:	4290      	cmp	r0, r2
 8001566:	d103      	bne.n	8001570 <HAL_TIM_Base_Init+0x7c>
 8001568:	68a2      	ldr	r2, [r4, #8]
 800156a:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800156e:	4311      	orrs	r1, r2
 8001570:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001574:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001578:	4290      	cmp	r0, r2
 800157a:	dd14      	ble.n	80015a6 <HAL_TIM_Base_Init+0xb2>
 800157c:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001580:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001584:	4290      	cmp	r0, r2
 8001586:	dd1a      	ble.n	80015be <HAL_TIM_Base_Init+0xca>
 8001588:	f244 0200 	movw	r2, #16384	; 0x4000
 800158c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001590:	4290      	cmp	r0, r2
 8001592:	bf1e      	ittt	ne
 8001594:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001598:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800159c:	4290      	cmpne	r0, r2
 800159e:	d027      	beq.n	80015f0 <HAL_TIM_Base_Init+0xfc>
 80015a0:	f244 4200 	movw	r2, #17408	; 0x4400
 80015a4:	e013      	b.n	80015ce <HAL_TIM_Base_Init+0xda>
 80015a6:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015aa:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ae:	4290      	cmp	r0, r2
 80015b0:	dc12      	bgt.n	80015d8 <HAL_TIM_Base_Init+0xe4>
 80015b2:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015b6:	d01b      	beq.n	80015f0 <HAL_TIM_Base_Init+0xfc>
 80015b8:	f240 4200 	movw	r2, #1024	; 0x400
 80015bc:	e014      	b.n	80015e8 <HAL_TIM_Base_Init+0xf4>
 80015be:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015c2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c6:	4290      	cmp	r0, r2
 80015c8:	d012      	beq.n	80015f0 <HAL_TIM_Base_Init+0xfc>
 80015ca:	f243 4200 	movw	r2, #13312	; 0x3400
 80015ce:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d2:	4290      	cmp	r0, r2
 80015d4:	d00c      	beq.n	80015f0 <HAL_TIM_Base_Init+0xfc>
 80015d6:	e00f      	b.n	80015f8 <HAL_TIM_Base_Init+0x104>
 80015d8:	f640 0200 	movw	r2, #2048	; 0x800
 80015dc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e0:	4290      	cmp	r0, r2
 80015e2:	d005      	beq.n	80015f0 <HAL_TIM_Base_Init+0xfc>
 80015e4:	f640 4200 	movw	r2, #3072	; 0xc00
 80015e8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015ec:	4290      	cmp	r0, r2
 80015ee:	d103      	bne.n	80015f8 <HAL_TIM_Base_Init+0x104>
 80015f0:	6922      	ldr	r2, [r4, #16]
 80015f2:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80015f6:	4311      	orrs	r1, r2
 80015f8:	69a2      	ldr	r2, [r4, #24]
 80015fa:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80015fe:	4311      	orrs	r1, r2
 8001600:	6001      	str	r1, [r0, #0]
 8001602:	68e1      	ldr	r1, [r4, #12]
 8001604:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001606:	6861      	ldr	r1, [r4, #4]
 8001608:	6281      	str	r1, [r0, #40]	; 0x28
 800160a:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800160e:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001612:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001616:	2907      	cmp	r1, #7
 8001618:	d807      	bhi.n	800162a <HAL_TIM_Base_Init+0x136>
 800161a:	2201      	movs	r2, #1
 800161c:	fa02 f101 	lsl.w	r1, r2, r1
 8001620:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001624:	bf1c      	itt	ne
 8001626:	6961      	ldrne	r1, [r4, #20]
 8001628:	6301      	strne	r1, [r0, #48]	; 0x30
 800162a:	2101      	movs	r1, #1
 800162c:	6141      	str	r1, [r0, #20]
 800162e:	2000      	movs	r0, #0
 8001630:	6421      	str	r1, [r4, #64]	; 0x40
 8001632:	bdd0      	pop	{r4, r6, r7, pc}

08001634 <HAL_TIM_Base_MspInit>:
 8001634:	4770      	bx	lr

08001636 <HAL_TIM_Base_Start_IT>:
 8001636:	6800      	ldr	r0, [r0, #0]
 8001638:	68c1      	ldr	r1, [r0, #12]
 800163a:	f041 0101 	orr.w	r1, r1, #1
 800163e:	60c1      	str	r1, [r0, #12]
 8001640:	2107      	movs	r1, #7
 8001642:	6882      	ldr	r2, [r0, #8]
 8001644:	f2c0 0101 	movt	r1, #1
 8001648:	400a      	ands	r2, r1
 800164a:	2a06      	cmp	r2, #6
 800164c:	d008      	beq.n	8001660 <HAL_TIM_Base_Start_IT+0x2a>
 800164e:	6882      	ldr	r2, [r0, #8]
 8001650:	4011      	ands	r1, r2
 8001652:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001656:	bf1e      	ittt	ne
 8001658:	6801      	ldrne	r1, [r0, #0]
 800165a:	f041 0101 	orrne.w	r1, r1, #1
 800165e:	6001      	strne	r1, [r0, #0]
 8001660:	2000      	movs	r0, #0
 8001662:	4770      	bx	lr

08001664 <HAL_TIM_IRQHandler>:
 8001664:	b5d0      	push	{r4, r6, r7, lr}
 8001666:	af02      	add	r7, sp, #8
 8001668:	4604      	mov	r4, r0
 800166a:	6820      	ldr	r0, [r4, #0]
 800166c:	6901      	ldr	r1, [r0, #16]
 800166e:	f011 0f02 	tst.w	r1, #2
 8001672:	bf1c      	itt	ne
 8001674:	68c1      	ldrne	r1, [r0, #12]
 8001676:	f011 0f02 	tstne.w	r1, #2
 800167a:	d015      	beq.n	80016a8 <HAL_TIM_IRQHandler+0x44>
 800167c:	f06f 0102 	mvn.w	r1, #2
 8001680:	6101      	str	r1, [r0, #16]
 8001682:	2101      	movs	r1, #1
 8001684:	61e1      	str	r1, [r4, #28]
 8001686:	6980      	ldr	r0, [r0, #24]
 8001688:	f010 0f03 	tst.w	r0, #3
 800168c:	d003      	beq.n	8001696 <HAL_TIM_IRQHandler+0x32>
 800168e:	4620      	mov	r0, r4
 8001690:	f000 f8b1 	bl	80017f6 <HAL_TIM_IC_CaptureCallback>
 8001694:	e005      	b.n	80016a2 <HAL_TIM_IRQHandler+0x3e>
 8001696:	4620      	mov	r0, r4
 8001698:	f000 f8ae 	bl	80017f8 <HAL_TIM_OC_DelayElapsedCallback>
 800169c:	4620      	mov	r0, r4
 800169e:	f000 f8ac 	bl	80017fa <HAL_TIM_PWM_PulseFinishedCallback>
 80016a2:	2000      	movs	r0, #0
 80016a4:	61e0      	str	r0, [r4, #28]
 80016a6:	6820      	ldr	r0, [r4, #0]
 80016a8:	6901      	ldr	r1, [r0, #16]
 80016aa:	f011 0f04 	tst.w	r1, #4
 80016ae:	bf1c      	itt	ne
 80016b0:	68c1      	ldrne	r1, [r0, #12]
 80016b2:	f011 0f04 	tstne.w	r1, #4
 80016b6:	d015      	beq.n	80016e4 <HAL_TIM_IRQHandler+0x80>
 80016b8:	f06f 0104 	mvn.w	r1, #4
 80016bc:	6101      	str	r1, [r0, #16]
 80016be:	2102      	movs	r1, #2
 80016c0:	61e1      	str	r1, [r4, #28]
 80016c2:	6980      	ldr	r0, [r0, #24]
 80016c4:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016c8:	d003      	beq.n	80016d2 <HAL_TIM_IRQHandler+0x6e>
 80016ca:	4620      	mov	r0, r4
 80016cc:	f000 f893 	bl	80017f6 <HAL_TIM_IC_CaptureCallback>
 80016d0:	e005      	b.n	80016de <HAL_TIM_IRQHandler+0x7a>
 80016d2:	4620      	mov	r0, r4
 80016d4:	f000 f890 	bl	80017f8 <HAL_TIM_OC_DelayElapsedCallback>
 80016d8:	4620      	mov	r0, r4
 80016da:	f000 f88e 	bl	80017fa <HAL_TIM_PWM_PulseFinishedCallback>
 80016de:	2000      	movs	r0, #0
 80016e0:	61e0      	str	r0, [r4, #28]
 80016e2:	6820      	ldr	r0, [r4, #0]
 80016e4:	6901      	ldr	r1, [r0, #16]
 80016e6:	f011 0f08 	tst.w	r1, #8
 80016ea:	bf1c      	itt	ne
 80016ec:	68c1      	ldrne	r1, [r0, #12]
 80016ee:	f011 0f08 	tstne.w	r1, #8
 80016f2:	d015      	beq.n	8001720 <HAL_TIM_IRQHandler+0xbc>
 80016f4:	f06f 0108 	mvn.w	r1, #8
 80016f8:	6101      	str	r1, [r0, #16]
 80016fa:	2104      	movs	r1, #4
 80016fc:	61e1      	str	r1, [r4, #28]
 80016fe:	69c0      	ldr	r0, [r0, #28]
 8001700:	f010 0f03 	tst.w	r0, #3
 8001704:	d003      	beq.n	800170e <HAL_TIM_IRQHandler+0xaa>
 8001706:	4620      	mov	r0, r4
 8001708:	f000 f875 	bl	80017f6 <HAL_TIM_IC_CaptureCallback>
 800170c:	e005      	b.n	800171a <HAL_TIM_IRQHandler+0xb6>
 800170e:	4620      	mov	r0, r4
 8001710:	f000 f872 	bl	80017f8 <HAL_TIM_OC_DelayElapsedCallback>
 8001714:	4620      	mov	r0, r4
 8001716:	f000 f870 	bl	80017fa <HAL_TIM_PWM_PulseFinishedCallback>
 800171a:	2000      	movs	r0, #0
 800171c:	61e0      	str	r0, [r4, #28]
 800171e:	6820      	ldr	r0, [r4, #0]
 8001720:	6901      	ldr	r1, [r0, #16]
 8001722:	f011 0f10 	tst.w	r1, #16
 8001726:	bf1c      	itt	ne
 8001728:	68c1      	ldrne	r1, [r0, #12]
 800172a:	f011 0f10 	tstne.w	r1, #16
 800172e:	d015      	beq.n	800175c <HAL_TIM_IRQHandler+0xf8>
 8001730:	f06f 0110 	mvn.w	r1, #16
 8001734:	6101      	str	r1, [r0, #16]
 8001736:	2108      	movs	r1, #8
 8001738:	61e1      	str	r1, [r4, #28]
 800173a:	69c0      	ldr	r0, [r0, #28]
 800173c:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001740:	d003      	beq.n	800174a <HAL_TIM_IRQHandler+0xe6>
 8001742:	4620      	mov	r0, r4
 8001744:	f000 f857 	bl	80017f6 <HAL_TIM_IC_CaptureCallback>
 8001748:	e005      	b.n	8001756 <HAL_TIM_IRQHandler+0xf2>
 800174a:	4620      	mov	r0, r4
 800174c:	f000 f854 	bl	80017f8 <HAL_TIM_OC_DelayElapsedCallback>
 8001750:	4620      	mov	r0, r4
 8001752:	f000 f852 	bl	80017fa <HAL_TIM_PWM_PulseFinishedCallback>
 8001756:	2000      	movs	r0, #0
 8001758:	61e0      	str	r0, [r4, #28]
 800175a:	6820      	ldr	r0, [r4, #0]
 800175c:	6901      	ldr	r1, [r0, #16]
 800175e:	f011 0f01 	tst.w	r1, #1
 8001762:	bf1c      	itt	ne
 8001764:	68c1      	ldrne	r1, [r0, #12]
 8001766:	f011 0f01 	tstne.w	r1, #1
 800176a:	d006      	beq.n	800177a <HAL_TIM_IRQHandler+0x116>
 800176c:	f06f 0101 	mvn.w	r1, #1
 8001770:	6101      	str	r1, [r0, #16]
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f894 	bl	80018a0 <HAL_TIM_PeriodElapsedCallback>
 8001778:	6820      	ldr	r0, [r4, #0]
 800177a:	6901      	ldr	r1, [r0, #16]
 800177c:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001780:	bf1c      	itt	ne
 8001782:	68c1      	ldrne	r1, [r0, #12]
 8001784:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001788:	d006      	beq.n	8001798 <HAL_TIM_IRQHandler+0x134>
 800178a:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800178e:	6101      	str	r1, [r0, #16]
 8001790:	4620      	mov	r0, r4
 8001792:	f000 f835 	bl	8001800 <HAL_TIMEx_BreakCallback>
 8001796:	6820      	ldr	r0, [r4, #0]
 8001798:	6901      	ldr	r1, [r0, #16]
 800179a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800179e:	bf1c      	itt	ne
 80017a0:	68c1      	ldrne	r1, [r0, #12]
 80017a2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017a6:	d006      	beq.n	80017b6 <HAL_TIM_IRQHandler+0x152>
 80017a8:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017ac:	6101      	str	r1, [r0, #16]
 80017ae:	4620      	mov	r0, r4
 80017b0:	f000 f827 	bl	8001802 <HAL_TIMEx_Break2Callback>
 80017b4:	6820      	ldr	r0, [r4, #0]
 80017b6:	6901      	ldr	r1, [r0, #16]
 80017b8:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017bc:	bf1c      	itt	ne
 80017be:	68c1      	ldrne	r1, [r0, #12]
 80017c0:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017c4:	d006      	beq.n	80017d4 <HAL_TIM_IRQHandler+0x170>
 80017c6:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017ca:	6101      	str	r1, [r0, #16]
 80017cc:	4620      	mov	r0, r4
 80017ce:	f000 f815 	bl	80017fc <HAL_TIM_TriggerCallback>
 80017d2:	6820      	ldr	r0, [r4, #0]
 80017d4:	6901      	ldr	r1, [r0, #16]
 80017d6:	f011 0f20 	tst.w	r1, #32
 80017da:	bf1c      	itt	ne
 80017dc:	68c1      	ldrne	r1, [r0, #12]
 80017de:	f011 0f20 	tstne.w	r1, #32
 80017e2:	d100      	bne.n	80017e6 <HAL_TIM_IRQHandler+0x182>
 80017e4:	bdd0      	pop	{r4, r6, r7, pc}
 80017e6:	f06f 0120 	mvn.w	r1, #32
 80017ea:	6101      	str	r1, [r0, #16]
 80017ec:	4620      	mov	r0, r4
 80017ee:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80017f2:	f000 b804 	b.w	80017fe <HAL_TIMEx_CommutationCallback>

080017f6 <HAL_TIM_IC_CaptureCallback>:
 80017f6:	4770      	bx	lr

080017f8 <HAL_TIM_OC_DelayElapsedCallback>:
 80017f8:	4770      	bx	lr

080017fa <HAL_TIM_PWM_PulseFinishedCallback>:
 80017fa:	4770      	bx	lr

080017fc <HAL_TIM_TriggerCallback>:
 80017fc:	4770      	bx	lr

080017fe <HAL_TIMEx_CommutationCallback>:
 80017fe:	4770      	bx	lr

08001800 <HAL_TIMEx_BreakCallback>:
 8001800:	4770      	bx	lr

08001802 <HAL_TIMEx_Break2Callback>:
 8001802:	4770      	bx	lr

08001804 <HAL_InitTick>:
 8001804:	b5b0      	push	{r4, r5, r7, lr}
 8001806:	af02      	add	r7, sp, #8
 8001808:	b086      	sub	sp, #24
 800180a:	4601      	mov	r1, r0
 800180c:	2036      	movs	r0, #54	; 0x36
 800180e:	2200      	movs	r2, #0
 8001810:	2400      	movs	r4, #0
 8001812:	f7ff fc99 	bl	8001148 <HAL_NVIC_SetPriority>
 8001816:	2036      	movs	r0, #54	; 0x36
 8001818:	f7ff fcc9 	bl	80011ae <HAL_NVIC_EnableIRQ>
 800181c:	f241 0058 	movw	r0, #4184	; 0x1058
 8001820:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001824:	6801      	ldr	r1, [r0, #0]
 8001826:	f041 0110 	orr.w	r1, r1, #16
 800182a:	6001      	str	r1, [r0, #0]
 800182c:	4669      	mov	r1, sp
 800182e:	6800      	ldr	r0, [r0, #0]
 8001830:	f000 0010 	and.w	r0, r0, #16
 8001834:	9001      	str	r0, [sp, #4]
 8001836:	9801      	ldr	r0, [sp, #4]
 8001838:	a801      	add	r0, sp, #4
 800183a:	f7ff fe3a 	bl	80014b2 <HAL_RCC_GetClockConfig>
 800183e:	9d04      	ldr	r5, [sp, #16]
 8001840:	f7ff fe0d 	bl	800145e <HAL_RCC_GetPCLK1Freq>
 8001844:	2d00      	cmp	r5, #0
 8001846:	f640 21f4 	movw	r1, #2804	; 0xaf4
 800184a:	f241 0200 	movw	r2, #4096	; 0x1000
 800184e:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001852:	bf18      	it	ne
 8001854:	2501      	movne	r5, #1
 8001856:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800185a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800185e:	40a8      	lsls	r0, r5
 8001860:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001864:	618c      	str	r4, [r1, #24]
 8001866:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800186a:	fba0 0505 	umull	r0, r5, r0, r5
 800186e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001872:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001876:	e9c1 2000 	strd	r2, r0, [r1]
 800187a:	4608      	mov	r0, r1
 800187c:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001880:	610c      	str	r4, [r1, #16]
 8001882:	f7ff fe37 	bl	80014f4 <HAL_TIM_Base_Init>
 8001886:	2800      	cmp	r0, #0
 8001888:	bf1e      	ittt	ne
 800188a:	2001      	movne	r0, #1
 800188c:	b006      	addne	sp, #24
 800188e:	bdb0      	popne	{r4, r5, r7, pc}
 8001890:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8001894:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001898:	f7ff fecd 	bl	8001636 <HAL_TIM_Base_Start_IT>
 800189c:	b006      	add	sp, #24
 800189e:	bdb0      	pop	{r4, r5, r7, pc}

080018a0 <HAL_TIM_PeriodElapsedCallback>:
 80018a0:	f7ff bc34 	b.w	800110c <HAL_IncTick>

080018a4 <TIM6_DAC_IRQHandler>:
 80018a4:	f640 20f4 	movw	r0, #2804	; 0xaf4
 80018a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018ac:	f7ff beda 	b.w	8001664 <HAL_TIM_IRQHandler>

080018b0 <HAL_UART_Init>:
 80018b0:	b5d0      	push	{r4, r6, r7, lr}
 80018b2:	af02      	add	r7, sp, #8
 80018b4:	4604      	mov	r4, r0
 80018b6:	b194      	cbz	r4, 80018de <HAL_UART_Init+0x2e>
 80018b8:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018ba:	b920      	cbnz	r0, 80018c6 <HAL_UART_Init+0x16>
 80018bc:	2000      	movs	r0, #0
 80018be:	6720      	str	r0, [r4, #112]	; 0x70
 80018c0:	4620      	mov	r0, r4
 80018c2:	f000 f826 	bl	8001912 <HAL_UART_MspInit>
 80018c6:	2024      	movs	r0, #36	; 0x24
 80018c8:	6760      	str	r0, [r4, #116]	; 0x74
 80018ca:	6820      	ldr	r0, [r4, #0]
 80018cc:	6801      	ldr	r1, [r0, #0]
 80018ce:	f021 0101 	bic.w	r1, r1, #1
 80018d2:	6001      	str	r1, [r0, #0]
 80018d4:	4620      	mov	r0, r4
 80018d6:	f000 f81d 	bl	8001914 <UART_SetConfig>
 80018da:	2801      	cmp	r0, #1
 80018dc:	d101      	bne.n	80018e2 <HAL_UART_Init+0x32>
 80018de:	2001      	movs	r0, #1
 80018e0:	bdd0      	pop	{r4, r6, r7, pc}
 80018e2:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018e4:	2800      	cmp	r0, #0
 80018e6:	bf1c      	itt	ne
 80018e8:	4620      	movne	r0, r4
 80018ea:	f000 f944 	blne	8001b76 <UART_AdvFeatureConfig>
 80018ee:	6820      	ldr	r0, [r4, #0]
 80018f0:	6841      	ldr	r1, [r0, #4]
 80018f2:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80018f6:	6041      	str	r1, [r0, #4]
 80018f8:	6881      	ldr	r1, [r0, #8]
 80018fa:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80018fe:	6081      	str	r1, [r0, #8]
 8001900:	6801      	ldr	r1, [r0, #0]
 8001902:	f041 0101 	orr.w	r1, r1, #1
 8001906:	6001      	str	r1, [r0, #0]
 8001908:	4620      	mov	r0, r4
 800190a:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800190e:	f000 b99d 	b.w	8001c4c <UART_CheckIdleState>

08001912 <HAL_UART_MspInit>:
 8001912:	4770      	bx	lr

08001914 <UART_SetConfig>:
 8001914:	b5b0      	push	{r4, r5, r7, lr}
 8001916:	af02      	add	r7, sp, #8
 8001918:	4604      	mov	r4, r0
 800191a:	f646 15f3 	movw	r5, #27123	; 0x69f3
 800191e:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001922:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001926:	6821      	ldr	r1, [r4, #0]
 8001928:	68a0      	ldr	r0, [r4, #8]
 800192a:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 800192e:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001932:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001936:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 800193a:	4310      	orrs	r0, r2
 800193c:	69e2      	ldr	r2, [r4, #28]
 800193e:	4571      	cmp	r1, lr
 8001940:	ea40 0003 	orr.w	r0, r0, r3
 8001944:	680b      	ldr	r3, [r1, #0]
 8001946:	ea40 0002 	orr.w	r0, r0, r2
 800194a:	ea03 0305 	and.w	r3, r3, r5
 800194e:	f04f 0510 	mov.w	r5, #16
 8001952:	ea40 0003 	orr.w	r0, r0, r3
 8001956:	6008      	str	r0, [r1, #0]
 8001958:	6848      	ldr	r0, [r1, #4]
 800195a:	68e3      	ldr	r3, [r4, #12]
 800195c:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001960:	ea40 0003 	orr.w	r0, r0, r3
 8001964:	6048      	str	r0, [r1, #4]
 8001966:	69a0      	ldr	r0, [r4, #24]
 8001968:	bf1c      	itt	ne
 800196a:	6a23      	ldrne	r3, [r4, #32]
 800196c:	4318      	orrne	r0, r3
 800196e:	688b      	ldr	r3, [r1, #8]
 8001970:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001974:	4318      	orrs	r0, r3
 8001976:	f644 73ff 	movw	r3, #20479	; 0x4fff
 800197a:	6088      	str	r0, [r1, #8]
 800197c:	f242 4000 	movw	r0, #9216	; 0x2400
 8001980:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001984:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001988:	4299      	cmp	r1, r3
 800198a:	dc15      	bgt.n	80019b8 <UART_SetConfig+0xa4>
 800198c:	f244 4300 	movw	r3, #17408	; 0x4400
 8001990:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001994:	4299      	cmp	r1, r3
 8001996:	d024      	beq.n	80019e2 <UART_SetConfig+0xce>
 8001998:	f644 0300 	movw	r3, #18432	; 0x4800
 800199c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a0:	4299      	cmp	r1, r3
 80019a2:	d022      	beq.n	80019ea <UART_SetConfig+0xd6>
 80019a4:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019a8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019ac:	4299      	cmp	r1, r3
 80019ae:	d131      	bne.n	8001a14 <UART_SetConfig+0x100>
 80019b0:	f8dc 3000 	ldr.w	r3, [ip]
 80019b4:	099d      	lsrs	r5, r3, #6
 80019b6:	e023      	b.n	8001a00 <UART_SetConfig+0xec>
 80019b8:	f245 0300 	movw	r3, #20480	; 0x5000
 80019bc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019c0:	4299      	cmp	r1, r3
 80019c2:	d016      	beq.n	80019f2 <UART_SetConfig+0xde>
 80019c4:	4571      	cmp	r1, lr
 80019c6:	d018      	beq.n	80019fa <UART_SetConfig+0xe6>
 80019c8:	f643 0300 	movw	r3, #14336	; 0x3800
 80019cc:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019d0:	4299      	cmp	r1, r3
 80019d2:	d11f      	bne.n	8001a14 <UART_SetConfig+0x100>
 80019d4:	f8dc 5000 	ldr.w	r5, [ip]
 80019d8:	f247 23e0 	movw	r3, #29408	; 0x72e0
 80019dc:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019e0:	e012      	b.n	8001a08 <UART_SetConfig+0xf4>
 80019e2:	f8dc 3000 	ldr.w	r3, [ip]
 80019e6:	089d      	lsrs	r5, r3, #2
 80019e8:	e00a      	b.n	8001a00 <UART_SetConfig+0xec>
 80019ea:	f8dc 3000 	ldr.w	r3, [ip]
 80019ee:	091d      	lsrs	r5, r3, #4
 80019f0:	e006      	b.n	8001a00 <UART_SetConfig+0xec>
 80019f2:	f8dc 3000 	ldr.w	r3, [ip]
 80019f6:	0a1d      	lsrs	r5, r3, #8
 80019f8:	e002      	b.n	8001a00 <UART_SetConfig+0xec>
 80019fa:	f8dc 3000 	ldr.w	r3, [ip]
 80019fe:	0a9d      	lsrs	r5, r3, #10
 8001a00:	f247 23f0 	movw	r3, #29424	; 0x72f0
 8001a04:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a08:	f005 0503 	and.w	r5, r5, #3
 8001a0c:	f085 0502 	eor.w	r5, r5, #2
 8001a10:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a14:	4571      	cmp	r1, lr
 8001a16:	d012      	beq.n	8001a3e <UART_SetConfig+0x12a>
 8001a18:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a1c:	d11d      	bne.n	8001a5a <UART_SetConfig+0x146>
 8001a1e:	f005 001f 	and.w	r0, r5, #31
 8001a22:	2101      	movs	r1, #1
 8001a24:	2808      	cmp	r0, #8
 8001a26:	f200 809f 	bhi.w	8001b68 <UART_SetConfig+0x254>
 8001a2a:	e8df f000 	tbb	[pc, r0]
 8001a2e:	4005      	.short	0x4005
 8001a30:	9d499d43 	.word	0x9d499d43
 8001a34:	004f9d9d 	.word	0x004f9d9d
 8001a38:	f7ff fd11 	bl	800145e <HAL_RCC_GetPCLK1Freq>
 8001a3c:	e042      	b.n	8001ac4 <UART_SetConfig+0x1b0>
 8001a3e:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a42:	2101      	movs	r1, #1
 8001a44:	2d04      	cmp	r5, #4
 8001a46:	f200 808f 	bhi.w	8001b68 <UART_SetConfig+0x254>
 8001a4a:	e8df f005 	tbb	[pc, r5]
 8001a4e:	1c03      	.short	0x1c03
 8001a50:	001a8d16 	.word	0x001a8d16
 8001a54:	f7ff fd03 	bl	800145e <HAL_RCC_GetPCLK1Freq>
 8001a58:	e011      	b.n	8001a7e <UART_SetConfig+0x16a>
 8001a5a:	f005 021f 	and.w	r2, r5, #31
 8001a5e:	2101      	movs	r1, #1
 8001a60:	2a08      	cmp	r2, #8
 8001a62:	f200 8081 	bhi.w	8001b68 <UART_SetConfig+0x254>
 8001a66:	e8df f002 	tbb	[pc, r2]
 8001a6a:	4305      	.short	0x4305
 8001a6c:	7f487f46 	.word	0x7f487f46
 8001a70:	004e7f7f 	.word	0x004e7f7f
 8001a74:	f7ff fcf3 	bl	800145e <HAL_RCC_GetPCLK1Freq>
 8001a78:	e041      	b.n	8001afe <UART_SetConfig+0x1ea>
 8001a7a:	f7ff fc91 	bl	80013a0 <HAL_RCC_GetSysClockFreq>
 8001a7e:	b910      	cbnz	r0, 8001a86 <UART_SetConfig+0x172>
 8001a80:	e071      	b.n	8001b66 <UART_SetConfig+0x252>
 8001a82:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a86:	6862      	ldr	r2, [r4, #4]
 8001a88:	2101      	movs	r1, #1
 8001a8a:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001a8e:	4298      	cmp	r0, r3
 8001a90:	d36a      	bcc.n	8001b68 <UART_SetConfig+0x254>
 8001a92:	0313      	lsls	r3, r2, #12
 8001a94:	4298      	cmp	r0, r3
 8001a96:	bf9c      	itt	ls
 8001a98:	2101      	movls	r1, #1
 8001a9a:	2d04      	cmpls	r5, #4
 8001a9c:	d864      	bhi.n	8001b68 <UART_SetConfig+0x254>
 8001a9e:	e8df f005 	tbb	[pc, r5]
 8001aa2:	3e03      	.short	0x3e03
 8001aa4:	00526345 	.word	0x00526345
 8001aa8:	f7ff fcd9 	bl	800145e <HAL_RCC_GetPCLK1Freq>
 8001aac:	e040      	b.n	8001b30 <UART_SetConfig+0x21c>
 8001aae:	f7ff fceb 	bl	8001488 <HAL_RCC_GetPCLK2Freq>
 8001ab2:	e007      	b.n	8001ac4 <UART_SetConfig+0x1b0>
 8001ab4:	6861      	ldr	r1, [r4, #4]
 8001ab6:	f644 0200 	movw	r2, #18432	; 0x4800
 8001aba:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001abe:	e008      	b.n	8001ad2 <UART_SetConfig+0x1be>
 8001ac0:	f7ff fc6e 	bl	80013a0 <HAL_RCC_GetSysClockFreq>
 8001ac4:	6861      	ldr	r1, [r4, #4]
 8001ac6:	0040      	lsls	r0, r0, #1
 8001ac8:	084a      	lsrs	r2, r1, #1
 8001aca:	e003      	b.n	8001ad4 <UART_SetConfig+0x1c0>
 8001acc:	6861      	ldr	r1, [r4, #4]
 8001ace:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ad2:	0848      	lsrs	r0, r1, #1
 8001ad4:	4410      	add	r0, r2
 8001ad6:	fbb0 f0f1 	udiv	r0, r0, r1
 8001ada:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001ade:	4001      	ands	r1, r0
 8001ae0:	2910      	cmp	r1, #16
 8001ae2:	d303      	bcc.n	8001aec <UART_SetConfig+0x1d8>
 8001ae4:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ae8:	4308      	orrs	r0, r1
 8001aea:	e03a      	b.n	8001b62 <UART_SetConfig+0x24e>
 8001aec:	2101      	movs	r1, #1
 8001aee:	e03b      	b.n	8001b68 <UART_SetConfig+0x254>
 8001af0:	f7ff fcca 	bl	8001488 <HAL_RCC_GetPCLK2Freq>
 8001af4:	e003      	b.n	8001afe <UART_SetConfig+0x1ea>
 8001af6:	6862      	ldr	r2, [r4, #4]
 8001af8:	e008      	b.n	8001b0c <UART_SetConfig+0x1f8>
 8001afa:	f7ff fc51 	bl	80013a0 <HAL_RCC_GetSysClockFreq>
 8001afe:	6862      	ldr	r2, [r4, #4]
 8001b00:	4601      	mov	r1, r0
 8001b02:	0850      	lsrs	r0, r2, #1
 8001b04:	e003      	b.n	8001b0e <UART_SetConfig+0x1fa>
 8001b06:	6862      	ldr	r2, [r4, #4]
 8001b08:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b0c:	0851      	lsrs	r1, r2, #1
 8001b0e:	4408      	add	r0, r1
 8001b10:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b14:	b280      	uxth	r0, r0
 8001b16:	2810      	cmp	r0, #16
 8001b18:	d223      	bcs.n	8001b62 <UART_SetConfig+0x24e>
 8001b1a:	2101      	movs	r1, #1
 8001b1c:	e024      	b.n	8001b68 <UART_SetConfig+0x254>
 8001b1e:	2000      	movs	r0, #0
 8001b20:	2100      	movs	r1, #0
 8001b22:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b26:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b2a:	e006      	b.n	8001b3a <UART_SetConfig+0x226>
 8001b2c:	f7ff fc38 	bl	80013a0 <HAL_RCC_GetSysClockFreq>
 8001b30:	6862      	ldr	r2, [r4, #4]
 8001b32:	0e01      	lsrs	r1, r0, #24
 8001b34:	0853      	lsrs	r3, r2, #1
 8001b36:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b3a:	f141 0100 	adc.w	r1, r1, #0
 8001b3e:	2300      	movs	r3, #0
 8001b40:	f7fe ffdc 	bl	8000afc <__aeabi_uldivmod>
 8001b44:	e005      	b.n	8001b52 <UART_SetConfig+0x23e>
 8001b46:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b4a:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b4e:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b52:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b56:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b5a:	f2c0 020f 	movt	r2, #15
 8001b5e:	4291      	cmp	r1, r2
 8001b60:	d807      	bhi.n	8001b72 <UART_SetConfig+0x25e>
 8001b62:	6821      	ldr	r1, [r4, #0]
 8001b64:	60c8      	str	r0, [r1, #12]
 8001b66:	2100      	movs	r1, #0
 8001b68:	2000      	movs	r0, #0
 8001b6a:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b6e:	4608      	mov	r0, r1
 8001b70:	bdb0      	pop	{r4, r5, r7, pc}
 8001b72:	2101      	movs	r1, #1
 8001b74:	e7f8      	b.n	8001b68 <UART_SetConfig+0x254>

08001b76 <UART_AdvFeatureConfig>:
 8001b76:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b78:	f011 0f01 	tst.w	r1, #1
 8001b7c:	d008      	beq.n	8001b90 <UART_AdvFeatureConfig+0x1a>
 8001b7e:	6802      	ldr	r2, [r0, #0]
 8001b80:	6853      	ldr	r3, [r2, #4]
 8001b82:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b86:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001b8a:	ea43 030c 	orr.w	r3, r3, ip
 8001b8e:	6053      	str	r3, [r2, #4]
 8001b90:	078a      	lsls	r2, r1, #30
 8001b92:	d508      	bpl.n	8001ba6 <UART_AdvFeatureConfig+0x30>
 8001b94:	6802      	ldr	r2, [r0, #0]
 8001b96:	6853      	ldr	r3, [r2, #4]
 8001b98:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001b9c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001ba0:	ea43 030c 	orr.w	r3, r3, ip
 8001ba4:	6053      	str	r3, [r2, #4]
 8001ba6:	074a      	lsls	r2, r1, #29
 8001ba8:	d508      	bpl.n	8001bbc <UART_AdvFeatureConfig+0x46>
 8001baa:	6802      	ldr	r2, [r0, #0]
 8001bac:	6853      	ldr	r3, [r2, #4]
 8001bae:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bb2:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bb6:	ea43 030c 	orr.w	r3, r3, ip
 8001bba:	6053      	str	r3, [r2, #4]
 8001bbc:	070a      	lsls	r2, r1, #28
 8001bbe:	d508      	bpl.n	8001bd2 <UART_AdvFeatureConfig+0x5c>
 8001bc0:	6802      	ldr	r2, [r0, #0]
 8001bc2:	6853      	ldr	r3, [r2, #4]
 8001bc4:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bc8:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bcc:	ea43 030c 	orr.w	r3, r3, ip
 8001bd0:	6053      	str	r3, [r2, #4]
 8001bd2:	06ca      	lsls	r2, r1, #27
 8001bd4:	d508      	bpl.n	8001be8 <UART_AdvFeatureConfig+0x72>
 8001bd6:	6802      	ldr	r2, [r0, #0]
 8001bd8:	6893      	ldr	r3, [r2, #8]
 8001bda:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bde:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001be2:	ea43 030c 	orr.w	r3, r3, ip
 8001be6:	6093      	str	r3, [r2, #8]
 8001be8:	068a      	lsls	r2, r1, #26
 8001bea:	d508      	bpl.n	8001bfe <UART_AdvFeatureConfig+0x88>
 8001bec:	6802      	ldr	r2, [r0, #0]
 8001bee:	6893      	ldr	r3, [r2, #8]
 8001bf0:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001bf4:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001bf8:	ea43 030c 	orr.w	r3, r3, ip
 8001bfc:	6093      	str	r3, [r2, #8]
 8001bfe:	b580      	push	{r7, lr}
 8001c00:	466f      	mov	r7, sp
 8001c02:	064a      	lsls	r2, r1, #25
 8001c04:	d515      	bpl.n	8001c32 <UART_AdvFeatureConfig+0xbc>
 8001c06:	f8d0 e000 	ldr.w	lr, [r0]
 8001c0a:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c0e:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c10:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c14:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c18:	ea42 0203 	orr.w	r2, r2, r3
 8001c1c:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c20:	d107      	bne.n	8001c32 <UART_AdvFeatureConfig+0xbc>
 8001c22:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c26:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c28:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c2c:	431a      	orrs	r2, r3
 8001c2e:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c32:	0609      	lsls	r1, r1, #24
 8001c34:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c38:	bf58      	it	pl
 8001c3a:	4770      	bxpl	lr
 8001c3c:	6801      	ldr	r1, [r0, #0]
 8001c3e:	684a      	ldr	r2, [r1, #4]
 8001c40:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c42:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c46:	4310      	orrs	r0, r2
 8001c48:	6048      	str	r0, [r1, #4]
 8001c4a:	4770      	bx	lr

08001c4c <UART_CheckIdleState>:
 8001c4c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c4e:	af03      	add	r7, sp, #12
 8001c50:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c54:	4604      	mov	r4, r0
 8001c56:	2000      	movs	r0, #0
 8001c58:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c5a:	f7ff fa5f 	bl	800111c <HAL_GetTick>
 8001c5e:	4605      	mov	r5, r0
 8001c60:	6820      	ldr	r0, [r4, #0]
 8001c62:	6801      	ldr	r1, [r0, #0]
 8001c64:	f011 0f08 	tst.w	r1, #8
 8001c68:	d00f      	beq.n	8001c8a <UART_CheckIdleState+0x3e>
 8001c6a:	69c1      	ldr	r1, [r0, #28]
 8001c6c:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c70:	d10b      	bne.n	8001c8a <UART_CheckIdleState+0x3e>
 8001c72:	2600      	movs	r6, #0
 8001c74:	f7ff fa52 	bl	800111c <HAL_GetTick>
 8001c78:	1b41      	subs	r1, r0, r5
 8001c7a:	6820      	ldr	r0, [r4, #0]
 8001c7c:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c80:	d11b      	bne.n	8001cba <UART_CheckIdleState+0x6e>
 8001c82:	69c1      	ldr	r1, [r0, #28]
 8001c84:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c88:	d0f4      	beq.n	8001c74 <UART_CheckIdleState+0x28>
 8001c8a:	6801      	ldr	r1, [r0, #0]
 8001c8c:	f011 0f04 	tst.w	r1, #4
 8001c90:	d101      	bne.n	8001c96 <UART_CheckIdleState+0x4a>
 8001c92:	2600      	movs	r6, #0
 8001c94:	e01a      	b.n	8001ccc <UART_CheckIdleState+0x80>
 8001c96:	69c0      	ldr	r0, [r0, #28]
 8001c98:	2600      	movs	r6, #0
 8001c9a:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001c9e:	d115      	bne.n	8001ccc <UART_CheckIdleState+0x80>
 8001ca0:	f7ff fa3c 	bl	800111c <HAL_GetTick>
 8001ca4:	1b41      	subs	r1, r0, r5
 8001ca6:	6820      	ldr	r0, [r4, #0]
 8001ca8:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001cac:	d105      	bne.n	8001cba <UART_CheckIdleState+0x6e>
 8001cae:	69c0      	ldr	r0, [r0, #28]
 8001cb0:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb4:	d0f4      	beq.n	8001ca0 <UART_CheckIdleState+0x54>
 8001cb6:	2600      	movs	r6, #0
 8001cb8:	e008      	b.n	8001ccc <UART_CheckIdleState+0x80>
 8001cba:	6801      	ldr	r1, [r0, #0]
 8001cbc:	2603      	movs	r6, #3
 8001cbe:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cc2:	6001      	str	r1, [r0, #0]
 8001cc4:	6881      	ldr	r1, [r0, #8]
 8001cc6:	f021 0101 	bic.w	r1, r1, #1
 8001cca:	6081      	str	r1, [r0, #8]
 8001ccc:	2020      	movs	r0, #32
 8001cce:	6760      	str	r0, [r4, #116]	; 0x74
 8001cd0:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cd2:	2000      	movs	r0, #0
 8001cd4:	6720      	str	r0, [r4, #112]	; 0x70
 8001cd6:	4630      	mov	r0, r6
 8001cd8:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cdc:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cde <HAL_UART_Transmit>:
 8001cde:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ce0:	af03      	add	r7, sp, #12
 8001ce2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ce6:	b081      	sub	sp, #4
 8001ce8:	4604      	mov	r4, r0
 8001cea:	461d      	mov	r5, r3
 8001cec:	4616      	mov	r6, r2
 8001cee:	4689      	mov	r9, r1
 8001cf0:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001cf2:	2820      	cmp	r0, #32
 8001cf4:	d109      	bne.n	8001d0a <HAL_UART_Transmit+0x2c>
 8001cf6:	f1b9 0f00 	cmp.w	r9, #0
 8001cfa:	f04f 0001 	mov.w	r0, #1
 8001cfe:	bf18      	it	ne
 8001d00:	2e00      	cmpne	r6, #0
 8001d02:	d003      	beq.n	8001d0c <HAL_UART_Transmit+0x2e>
 8001d04:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d06:	2801      	cmp	r0, #1
 8001d08:	d104      	bne.n	8001d14 <HAL_UART_Transmit+0x36>
 8001d0a:	2002      	movs	r0, #2
 8001d0c:	b001      	add	sp, #4
 8001d0e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d12:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d14:	2001      	movs	r0, #1
 8001d16:	6720      	str	r0, [r4, #112]	; 0x70
 8001d18:	2000      	movs	r0, #0
 8001d1a:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d1c:	2021      	movs	r0, #33	; 0x21
 8001d1e:	6760      	str	r0, [r4, #116]	; 0x74
 8001d20:	f7ff f9fc 	bl	800111c <HAL_GetTick>
 8001d24:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d28:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d2c:	4680      	mov	r8, r0
 8001d2e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d32:	f8d4 b000 	ldr.w	fp, [r4]
 8001d36:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d3a:	2900      	cmp	r1, #0
 8001d3c:	d040      	beq.n	8001dc0 <HAL_UART_Transmit+0xe2>
 8001d3e:	f105 0a01 	add.w	sl, r5, #1
 8001d42:	0600      	lsls	r0, r0, #24
 8001d44:	d410      	bmi.n	8001d68 <HAL_UART_Transmit+0x8a>
 8001d46:	465e      	mov	r6, fp
 8001d48:	f1ba 0f00 	cmp.w	sl, #0
 8001d4c:	d007      	beq.n	8001d5e <HAL_UART_Transmit+0x80>
 8001d4e:	b33d      	cbz	r5, 8001da0 <HAL_UART_Transmit+0xc2>
 8001d50:	f7ff f9e4 	bl	800111c <HAL_GetTick>
 8001d54:	6826      	ldr	r6, [r4, #0]
 8001d56:	eba0 0008 	sub.w	r0, r0, r8
 8001d5a:	42a8      	cmp	r0, r5
 8001d5c:	d821      	bhi.n	8001da2 <HAL_UART_Transmit+0xc4>
 8001d5e:	69f0      	ldr	r0, [r6, #28]
 8001d60:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d64:	d0f0      	beq.n	8001d48 <HAL_UART_Transmit+0x6a>
 8001d66:	e000      	b.n	8001d6a <HAL_UART_Transmit+0x8c>
 8001d68:	465e      	mov	r6, fp
 8001d6a:	68a0      	ldr	r0, [r4, #8]
 8001d6c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d70:	bf04      	itt	eq
 8001d72:	6920      	ldreq	r0, [r4, #16]
 8001d74:	2800      	cmpeq	r0, #0
 8001d76:	d002      	beq.n	8001d7e <HAL_UART_Transmit+0xa0>
 8001d78:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d7c:	e003      	b.n	8001d86 <HAL_UART_Transmit+0xa8>
 8001d7e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d82:	f36f 205f 	bfc	r0, #9, #23
 8001d86:	8530      	strh	r0, [r6, #40]	; 0x28
 8001d88:	46b3      	mov	fp, r6
 8001d8a:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001d8e:	3801      	subs	r0, #1
 8001d90:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001d94:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d98:	69f0      	ldr	r0, [r6, #28]
 8001d9a:	2900      	cmp	r1, #0
 8001d9c:	d1d1      	bne.n	8001d42 <HAL_UART_Transmit+0x64>
 8001d9e:	e010      	b.n	8001dc2 <HAL_UART_Transmit+0xe4>
 8001da0:	465e      	mov	r6, fp
 8001da2:	6830      	ldr	r0, [r6, #0]
 8001da4:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001da8:	6030      	str	r0, [r6, #0]
 8001daa:	68b0      	ldr	r0, [r6, #8]
 8001dac:	f020 0001 	bic.w	r0, r0, #1
 8001db0:	60b0      	str	r0, [r6, #8]
 8001db2:	2020      	movs	r0, #32
 8001db4:	6760      	str	r0, [r4, #116]	; 0x74
 8001db6:	67a0      	str	r0, [r4, #120]	; 0x78
 8001db8:	2000      	movs	r0, #0
 8001dba:	6720      	str	r0, [r4, #112]	; 0x70
 8001dbc:	2003      	movs	r0, #3
 8001dbe:	e7a5      	b.n	8001d0c <HAL_UART_Transmit+0x2e>
 8001dc0:	465e      	mov	r6, fp
 8001dc2:	0640      	lsls	r0, r0, #25
 8001dc4:	d411      	bmi.n	8001dea <HAL_UART_Transmit+0x10c>
 8001dc6:	f105 0901 	add.w	r9, r5, #1
 8001dca:	4630      	mov	r0, r6
 8001dcc:	f1b9 0f00 	cmp.w	r9, #0
 8001dd0:	d007      	beq.n	8001de2 <HAL_UART_Transmit+0x104>
 8001dd2:	b17d      	cbz	r5, 8001df4 <HAL_UART_Transmit+0x116>
 8001dd4:	f7ff f9a2 	bl	800111c <HAL_GetTick>
 8001dd8:	eba0 0108 	sub.w	r1, r0, r8
 8001ddc:	6820      	ldr	r0, [r4, #0]
 8001dde:	42a9      	cmp	r1, r5
 8001de0:	d809      	bhi.n	8001df6 <HAL_UART_Transmit+0x118>
 8001de2:	69c1      	ldr	r1, [r0, #28]
 8001de4:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001de8:	d0f0      	beq.n	8001dcc <HAL_UART_Transmit+0xee>
 8001dea:	2020      	movs	r0, #32
 8001dec:	6760      	str	r0, [r4, #116]	; 0x74
 8001dee:	2000      	movs	r0, #0
 8001df0:	6720      	str	r0, [r4, #112]	; 0x70
 8001df2:	e78b      	b.n	8001d0c <HAL_UART_Transmit+0x2e>
 8001df4:	4630      	mov	r0, r6
 8001df6:	6801      	ldr	r1, [r0, #0]
 8001df8:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001dfc:	6001      	str	r1, [r0, #0]
 8001dfe:	6881      	ldr	r1, [r0, #8]
 8001e00:	f021 0101 	bic.w	r1, r1, #1
 8001e04:	6081      	str	r1, [r0, #8]
 8001e06:	e7d4      	b.n	8001db2 <HAL_UART_Transmit+0xd4>

08001e08 <BSP_COM_Init>:
 8001e08:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e0a:	af03      	add	r7, sp, #12
 8001e0c:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e10:	b086      	sub	sp, #24
 8001e12:	4605      	mov	r5, r0
 8001e14:	4688      	mov	r8, r1
 8001e16:	b9f5      	cbnz	r5, 8001e56 <BSP_COM_Init+0x4e>
 8001e18:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e1c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e20:	6801      	ldr	r1, [r0, #0]
 8001e22:	f041 0102 	orr.w	r1, r1, #2
 8001e26:	6001      	str	r1, [r0, #0]
 8001e28:	6801      	ldr	r1, [r0, #0]
 8001e2a:	f001 0102 	and.w	r1, r1, #2
 8001e2e:	9101      	str	r1, [sp, #4]
 8001e30:	9901      	ldr	r1, [sp, #4]
 8001e32:	6801      	ldr	r1, [r0, #0]
 8001e34:	f041 0102 	orr.w	r1, r1, #2
 8001e38:	6001      	str	r1, [r0, #0]
 8001e3a:	6801      	ldr	r1, [r0, #0]
 8001e3c:	f001 0102 	and.w	r1, r1, #2
 8001e40:	9101      	str	r1, [sp, #4]
 8001e42:	9901      	ldr	r1, [sp, #4]
 8001e44:	6941      	ldr	r1, [r0, #20]
 8001e46:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e4a:	6141      	str	r1, [r0, #20]
 8001e4c:	6940      	ldr	r0, [r0, #20]
 8001e4e:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e52:	9001      	str	r0, [sp, #4]
 8001e54:	9801      	ldr	r0, [sp, #4]
 8001e56:	2040      	movs	r0, #64	; 0x40
 8001e58:	2402      	movs	r4, #2
 8001e5a:	ae01      	add	r6, sp, #4
 8001e5c:	f04f 0907 	mov.w	r9, #7
 8001e60:	9001      	str	r0, [sp, #4]
 8001e62:	2000      	movs	r0, #0
 8001e64:	9402      	str	r4, [sp, #8]
 8001e66:	9404      	str	r4, [sp, #16]
 8001e68:	4631      	mov	r1, r6
 8001e6a:	9003      	str	r0, [sp, #12]
 8001e6c:	f240 000c 	movw	r0, #12
 8001e70:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e74:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e78:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e7c:	f7ff f9a7 	bl	80011ce <HAL_GPIO_Init>
 8001e80:	2080      	movs	r0, #128	; 0x80
 8001e82:	4631      	mov	r1, r6
 8001e84:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001e88:	f240 0010 	movw	r0, #16
 8001e8c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e90:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e94:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e98:	f7ff f999 	bl	80011ce <HAL_GPIO_Init>
 8001e9c:	f240 0008 	movw	r0, #8
 8001ea0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ea4:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea8:	f8c8 0000 	str.w	r0, [r8]
 8001eac:	4640      	mov	r0, r8
 8001eae:	f7ff fcff 	bl	80018b0 <HAL_UART_Init>
 8001eb2:	b006      	add	sp, #24
 8001eb4:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001eb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001eba:	0000      	movs	r0, r0
 8001ebc:	0000      	movs	r0, r0
	...

08001ec0 <frac>:
 8001ec0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec2:	af03      	add	r7, sp, #12
 8001ec4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ec8:	b081      	sub	sp, #4
 8001eca:	ed2d 8b0c 	vpush	{d8-d13}
 8001ece:	b090      	sub	sp, #64	; 0x40
 8001ed0:	eeb0 9a41 	vmov.f32	s18, s2
 8001ed4:	ec59 5b10 	vmov	r5, r9, d0
 8001ed8:	e9cd 0105 	strd	r0, r1, [sp, #20]
 8001edc:	eef0 9a61 	vmov.f32	s19, s3
 8001ee0:	ed9f 1bad 	vldr	d1, [pc, #692]	; 8002198 <frac+0x2d8>
 8001ee4:	4628      	mov	r0, r5
 8001ee6:	4649      	mov	r1, r9
 8001ee8:	ec53 2b11 	vmov	r2, r3, d1
 8001eec:	f7fe fdb6 	bl	8000a5c <__aeabi_dcmplt>
 8001ef0:	ed9f 8bab 	vldr	d8, [pc, #684]	; 80021a0 <frac+0x2e0>
 8001ef4:	2800      	cmp	r0, #0
 8001ef6:	f040 8143 	bne.w	8002180 <frac+0x2c0>
 8001efa:	ed9f 0bab 	vldr	d0, [pc, #684]	; 80021a8 <frac+0x2e8>
 8001efe:	4628      	mov	r0, r5
 8001f00:	4649      	mov	r1, r9
 8001f02:	ec53 2b10 	vmov	r2, r3, d0
 8001f06:	f7fe fdc7 	bl	8000a98 <__aeabi_dcmpgt>
 8001f0a:	2800      	cmp	r0, #0
 8001f0c:	f040 8138 	bne.w	8002180 <frac+0x2c0>
 8001f10:	ed9f aba7 	vldr	d10, [pc, #668]	; 80021b0 <frac+0x2f0>
 8001f14:	ec51 0b19 	vmov	r0, r1, d9
 8001f18:	e9cd 100b 	strd	r1, r0, [sp, #44]	; 0x2c
 8001f1c:	ec53 2b1a 	vmov	r2, r3, d10
 8001f20:	461e      	mov	r6, r3
 8001f22:	9201      	str	r2, [sp, #4]
 8001f24:	9604      	str	r6, [sp, #16]
 8001f26:	f7fe fd99 	bl	8000a5c <__aeabi_dcmplt>
 8001f2a:	2800      	cmp	r0, #0
 8001f2c:	f040 8128 	bne.w	8002180 <frac+0x2c0>
 8001f30:	9c06      	ldr	r4, [sp, #24]
 8001f32:	2001      	movs	r0, #1
 8001f34:	2101      	movs	r1, #1
 8001f36:	900a      	str	r0, [sp, #40]	; 0x28
 8001f38:	4628      	mov	r0, r5
 8001f3a:	6021      	str	r1, [r4, #0]
 8001f3c:	4649      	mov	r1, r9
 8001f3e:	f7fe fdb5 	bl	8000aac <__aeabi_d2iz>
 8001f42:	4606      	mov	r6, r0
 8001f44:	9805      	ldr	r0, [sp, #20]
 8001f46:	ed9f 9b9c 	vldr	d9, [pc, #624]	; 80021b8 <frac+0x2f8>
 8001f4a:	ed9f bb9d 	vldr	d11, [pc, #628]	; 80021c0 <frac+0x300>
 8001f4e:	ed9f cb9e 	vldr	d12, [pc, #632]	; 80021c8 <frac+0x308>
 8001f52:	6006      	str	r6, [r0, #0]
 8001f54:	1c70      	adds	r0, r6, #1
 8001f56:	9009      	str	r0, [sp, #36]	; 0x24
 8001f58:	ec50 1b19 	vmov	r1, r0, d9
 8001f5c:	6823      	ldr	r3, [r4, #0]
 8001f5e:	900f      	str	r0, [sp, #60]	; 0x3c
 8001f60:	9804      	ldr	r0, [sp, #16]
 8001f62:	9102      	str	r1, [sp, #8]
 8001f64:	9500      	str	r5, [sp, #0]
 8001f66:	f8cd 901c 	str.w	r9, [sp, #28]
 8001f6a:	0fc0      	lsrs	r0, r0, #31
 8001f6c:	9003      	str	r0, [sp, #12]
 8001f6e:	e02a      	b.n	8001fc6 <frac+0x106>
 8001f70:	4658      	mov	r0, fp
 8001f72:	4649      	mov	r1, r9
 8001f74:	462a      	mov	r2, r5
 8001f76:	4633      	mov	r3, r6
 8001f78:	f7fe fc28 	bl	80007cc <__aeabi_ddiv>
 8001f7c:	4604      	mov	r4, r0
 8001f7e:	464b      	mov	r3, r9
 8001f80:	46d1      	mov	r9, sl
 8001f82:	46c2      	mov	sl, r8
 8001f84:	4688      	mov	r8, r1
 8001f86:	4628      	mov	r0, r5
 8001f88:	4631      	mov	r1, r6
 8001f8a:	465a      	mov	r2, fp
 8001f8c:	f7fe fd84 	bl	8000a98 <__aeabi_dcmpgt>
 8001f90:	2800      	cmp	r0, #0
 8001f92:	bf1c      	itt	ne
 8001f94:	46b0      	movne	r8, r6
 8001f96:	462c      	movne	r4, r5
 8001f98:	4655      	mov	r5, sl
 8001f9a:	4620      	mov	r0, r4
 8001f9c:	4641      	mov	r1, r8
 8001f9e:	f7fe fd85 	bl	8000aac <__aeabi_d2iz>
 8001fa2:	990d      	ldr	r1, [sp, #52]	; 0x34
 8001fa4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001fa6:	fb02 1100 	mla	r1, r2, r0, r1
 8001faa:	9109      	str	r1, [sp, #36]	; 0x24
 8001fac:	4411      	add	r1, r2
 8001fae:	9a05      	ldr	r2, [sp, #20]
 8001fb0:	6011      	str	r1, [r2, #0]
 8001fb2:	990e      	ldr	r1, [sp, #56]	; 0x38
 8001fb4:	9b08      	ldr	r3, [sp, #32]
 8001fb6:	fb01 3300 	mla	r3, r1, r0, r3
 8001fba:	9906      	ldr	r1, [sp, #24]
 8001fbc:	6808      	ldr	r0, [r1, #0]
 8001fbe:	930a      	str	r3, [sp, #40]	; 0x28
 8001fc0:	4403      	add	r3, r0
 8001fc2:	600b      	str	r3, [r1, #0]
 8001fc4:	6816      	ldr	r6, [r2, #0]
 8001fc6:	4618      	mov	r0, r3
 8001fc8:	930e      	str	r3, [sp, #56]	; 0x38
 8001fca:	f7fe fa6b 	bl	80004a4 <__aeabi_i2d>
 8001fce:	462a      	mov	r2, r5
 8001fd0:	464b      	mov	r3, r9
 8001fd2:	f7fe fad1 	bl	8000578 <__aeabi_dmul>
 8001fd6:	4604      	mov	r4, r0
 8001fd8:	4630      	mov	r0, r6
 8001fda:	4688      	mov	r8, r1
 8001fdc:	f7fe fa62 	bl	80004a4 <__aeabi_i2d>
 8001fe0:	4682      	mov	sl, r0
 8001fe2:	468b      	mov	fp, r1
 8001fe4:	4620      	mov	r0, r4
 8001fe6:	4641      	mov	r1, r8
 8001fe8:	4652      	mov	r2, sl
 8001fea:	465b      	mov	r3, fp
 8001fec:	f7fe fd2c 	bl	8000a48 <__aeabi_dcmpeq>
 8001ff0:	b170      	cbz	r0, 8002010 <frac+0x150>
 8001ff2:	980a      	ldr	r0, [sp, #40]	; 0x28
 8001ff4:	464c      	mov	r4, r9
 8001ff6:	eeb0 da4a 	vmov.f32	s26, s20
 8001ffa:	46a8      	mov	r8, r5
 8001ffc:	eef0 da6a 	vmov.f32	s27, s21
 8002000:	9008      	str	r0, [sp, #32]
 8002002:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002004:	900d      	str	r0, [sp, #52]	; 0x34
 8002006:	e9dd 090e 	ldrd	r0, r9, [sp, #56]	; 0x38
 800200a:	f8dd b008 	ldr.w	fp, [sp, #8]
 800200e:	e03f      	b.n	8002090 <frac+0x1d0>
 8002010:	960d      	str	r6, [sp, #52]	; 0x34
 8002012:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8002014:	4630      	mov	r0, r6
 8002016:	f7fe fa45 	bl	80004a4 <__aeabi_i2d>
 800201a:	462a      	mov	r2, r5
 800201c:	464b      	mov	r3, r9
 800201e:	f7fe faab 	bl	8000578 <__aeabi_dmul>
 8002022:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002024:	4681      	mov	r9, r0
 8002026:	9108      	str	r1, [sp, #32]
 8002028:	4628      	mov	r0, r5
 800202a:	f7fe fa3b 	bl	80004a4 <__aeabi_i2d>
 800202e:	9b08      	ldr	r3, [sp, #32]
 8002030:	464a      	mov	r2, r9
 8002032:	f7fe f8e9 	bl	8000208 <__aeabi_dsub>
 8002036:	4681      	mov	r9, r0
 8002038:	9108      	str	r1, [sp, #32]
 800203a:	4620      	mov	r0, r4
 800203c:	4641      	mov	r1, r8
 800203e:	4652      	mov	r2, sl
 8002040:	465b      	mov	r3, fp
 8002042:	f7fe f8e1 	bl	8000208 <__aeabi_dsub>
 8002046:	460b      	mov	r3, r1
 8002048:	9908      	ldr	r1, [sp, #32]
 800204a:	4602      	mov	r2, r0
 800204c:	4648      	mov	r0, r9
 800204e:	f7fe fbbd 	bl	80007cc <__aeabi_ddiv>
 8002052:	f8dd b008 	ldr.w	fp, [sp, #8]
 8002056:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 800205a:	ec41 0b1d 	vmov	d13, r0, r1
 800205e:	465a      	mov	r2, fp
 8002060:	464b      	mov	r3, r9
 8002062:	f7fe fd19 	bl	8000a98 <__aeabi_dcmpgt>
 8002066:	b140      	cbz	r0, 800207a <frac+0x1ba>
 8002068:	4630      	mov	r0, r6
 800206a:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 800206c:	f8dd 8000 	ldr.w	r8, [sp]
 8002070:	9c07      	ldr	r4, [sp, #28]
 8002072:	950d      	str	r5, [sp, #52]	; 0x34
 8002074:	9008      	str	r0, [sp, #32]
 8002076:	980e      	ldr	r0, [sp, #56]	; 0x38
 8002078:	e00a      	b.n	8002090 <frac+0x1d0>
 800207a:	9905      	ldr	r1, [sp, #20]
 800207c:	600d      	str	r5, [r1, #0]
 800207e:	9806      	ldr	r0, [sp, #24]
 8002080:	6802      	ldr	r2, [r0, #0]
 8002082:	9208      	str	r2, [sp, #32]
 8002084:	6006      	str	r6, [r0, #0]
 8002086:	4630      	mov	r0, r6
 8002088:	680e      	ldr	r6, [r1, #0]
 800208a:	f8dd 8000 	ldr.w	r8, [sp]
 800208e:	9c07      	ldr	r4, [sp, #28]
 8002090:	4601      	mov	r1, r0
 8002092:	910e      	str	r1, [sp, #56]	; 0x38
 8002094:	f7fe fa06 	bl	80004a4 <__aeabi_i2d>
 8002098:	4642      	mov	r2, r8
 800209a:	4623      	mov	r3, r4
 800209c:	f7fe fa6c 	bl	8000578 <__aeabi_dmul>
 80020a0:	4604      	mov	r4, r0
 80020a2:	4630      	mov	r0, r6
 80020a4:	460d      	mov	r5, r1
 80020a6:	960a      	str	r6, [sp, #40]	; 0x28
 80020a8:	f7fe f9fc 	bl	80004a4 <__aeabi_i2d>
 80020ac:	4622      	mov	r2, r4
 80020ae:	462b      	mov	r3, r5
 80020b0:	f7fe fb8c 	bl	80007cc <__aeabi_ddiv>
 80020b4:	4602      	mov	r2, r0
 80020b6:	460b      	mov	r3, r1
 80020b8:	4658      	mov	r0, fp
 80020ba:	4649      	mov	r1, r9
 80020bc:	f7fe f8a4 	bl	8000208 <__aeabi_dsub>
 80020c0:	4606      	mov	r6, r0
 80020c2:	9803      	ldr	r0, [sp, #12]
 80020c4:	e9dd 320b 	ldrd	r3, r2, [sp, #44]	; 0x2c
 80020c8:	468a      	mov	sl, r1
 80020ca:	f360 7adf 	bfi	sl, r0, #31, #1
 80020ce:	4630      	mov	r0, r6
 80020d0:	4651      	mov	r1, sl
 80020d2:	ec4a 6b18 	vmov	d8, r6, sl
 80020d6:	f7fe fccb 	bl	8000a70 <__aeabi_dcmple>
 80020da:	bbc8      	cbnz	r0, 8002150 <frac+0x290>
 80020dc:	eeb0 8a49 	vmov.f32	s16, s18
 80020e0:	eef0 8a69 	vmov.f32	s17, s19
 80020e4:	ec51 0b18 	vmov	r0, r1, d8
 80020e8:	ec53 2b1b 	vmov	r2, r3, d11
 80020ec:	f7fe fa44 	bl	8000578 <__aeabi_dmul>
 80020f0:	4604      	mov	r4, r0
 80020f2:	460d      	mov	r5, r1
 80020f4:	4630      	mov	r0, r6
 80020f6:	4651      	mov	r1, sl
 80020f8:	4622      	mov	r2, r4
 80020fa:	462b      	mov	r3, r5
 80020fc:	ec45 4b18 	vmov	d8, r4, r5
 8002100:	f7fe fa3a 	bl	8000578 <__aeabi_dmul>
 8002104:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002106:	465a      	mov	r2, fp
 8002108:	4680      	mov	r8, r0
 800210a:	4689      	mov	r9, r1
 800210c:	f7fe fca6 	bl	8000a5c <__aeabi_dcmplt>
 8002110:	2800      	cmp	r0, #0
 8002112:	d1e7      	bne.n	80020e4 <frac+0x224>
 8002114:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
 8002116:	4658      	mov	r0, fp
 8002118:	4622      	mov	r2, r4
 800211a:	462b      	mov	r3, r5
 800211c:	4631      	mov	r1, r6
 800211e:	f7fe fb55 	bl	80007cc <__aeabi_ddiv>
 8002122:	4604      	mov	r4, r0
 8002124:	460d      	mov	r5, r1
 8002126:	ec53 2b1c 	vmov	r2, r3, d12
 800212a:	4640      	mov	r0, r8
 800212c:	4649      	mov	r1, r9
 800212e:	f7fe f86d 	bl	800020c <__adddf3>
 8002132:	f7fe fcbb 	bl	8000aac <__aeabi_d2iz>
 8002136:	f7fe f9b5 	bl	80004a4 <__aeabi_i2d>
 800213a:	4602      	mov	r2, r0
 800213c:	460b      	mov	r3, r1
 800213e:	4620      	mov	r0, r4
 8002140:	4629      	mov	r1, r5
 8002142:	f7fe fa19 	bl	8000578 <__aeabi_dmul>
 8002146:	f8dd 8000 	ldr.w	r8, [sp]
 800214a:	ec41 0b18 	vmov	d8, r0, r1
 800214e:	46b1      	mov	r9, r6
 8002150:	e9dd 320b 	ldrd	r3, r2, [sp, #44]	; 0x2c
 8002154:	ec51 0b18 	vmov	r0, r1, d8
 8002158:	f7fe fc8a 	bl	8000a70 <__aeabi_dcmple>
 800215c:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8002160:	b970      	cbnz	r0, 8002180 <frac+0x2c0>
 8002162:	9a01      	ldr	r2, [sp, #4]
 8002164:	9b04      	ldr	r3, [sp, #16]
 8002166:	ec56 5b1d 	vmov	r5, r6, d13
 800216a:	4628      	mov	r0, r5
 800216c:	4631      	mov	r1, r6
 800216e:	f7fe fc6b 	bl	8000a48 <__aeabi_dcmpeq>
 8002172:	2800      	cmp	r0, #0
 8002174:	f43f aefc 	beq.w	8001f70 <frac+0xb0>
 8002178:	eeb0 8a4a 	vmov.f32	s16, s20
 800217c:	eef0 8a6a 	vmov.f32	s17, s21
 8002180:	eeb0 0a48 	vmov.f32	s0, s16
 8002184:	eef0 0a68 	vmov.f32	s1, s17
 8002188:	b010      	add	sp, #64	; 0x40
 800218a:	ecbd 8b0c 	vpop	{d8-d13}
 800218e:	b001      	add	sp, #4
 8002190:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002194:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002196:	bf00      	nop
 8002198:	e361ce4c 	.word	0xe361ce4c
 800219c:	3df49da7 	.word	0x3df49da7
 80021a0:	00000000 	.word	0x00000000
 80021a4:	bff00000 	.word	0xbff00000
 80021a8:	20000000 	.word	0x20000000
 80021ac:	4222a05f 	.word	0x4222a05f
	...
 80021bc:	3ff00000 	.word	0x3ff00000
 80021c0:	00000000 	.word	0x00000000
 80021c4:	40240000 	.word	0x40240000
 80021c8:	00000000 	.word	0x00000000
 80021cc:	3fe00000 	.word	0x3fe00000

080021d0 <initialise_benchmark>:
 80021d0:	4770      	bx	lr
 80021d2:	0000      	movs	r0, r0
 80021d4:	0000      	movs	r0, r0
	...

080021d8 <benchmark>:
 80021d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021da:	af03      	add	r7, sp, #12
 80021dc:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021e0:	ed2d 8b02 	vpush	{d8}
 80021e4:	b082      	sub	sp, #8
 80021e6:	f240 0618 	movw	r6, #24
 80021ea:	ed9f 8b39 	vldr	d8, [pc, #228]	; 80022d0 <benchmark+0xf8>
 80021ee:	2000      	movs	r0, #0
 80021f0:	466d      	mov	r5, sp
 80021f2:	ac01      	add	r4, sp, #4
 80021f4:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80021f8:	9001      	str	r0, [sp, #4]
 80021fa:	4620      	mov	r0, r4
 80021fc:	4629      	mov	r1, r5
 80021fe:	ed96 0b00 	vldr	d0, [r6]
 8002202:	eeb0 1a48 	vmov.f32	s2, s16
 8002206:	eef0 1a68 	vmov.f32	s3, s17
 800220a:	f7ff fe59 	bl	8001ec0 <frac>
 800220e:	ed96 0b02 	vldr	d0, [r6, #8]
 8002212:	eeb0 1a48 	vmov.f32	s2, s16
 8002216:	4620      	mov	r0, r4
 8002218:	4629      	mov	r1, r5
 800221a:	eef0 1a68 	vmov.f32	s3, s17
 800221e:	f7ff fe4f 	bl	8001ec0 <frac>
 8002222:	ed96 0b04 	vldr	d0, [r6, #16]
 8002226:	eeb0 1a48 	vmov.f32	s2, s16
 800222a:	4620      	mov	r0, r4
 800222c:	4629      	mov	r1, r5
 800222e:	eef0 1a68 	vmov.f32	s3, s17
 8002232:	f7ff fe45 	bl	8001ec0 <frac>
 8002236:	ed96 0b06 	vldr	d0, [r6, #24]
 800223a:	eeb0 1a48 	vmov.f32	s2, s16
 800223e:	4620      	mov	r0, r4
 8002240:	4629      	mov	r1, r5
 8002242:	eef0 1a68 	vmov.f32	s3, s17
 8002246:	f7ff fe3b 	bl	8001ec0 <frac>
 800224a:	ed96 0b08 	vldr	d0, [r6, #32]
 800224e:	eeb0 1a48 	vmov.f32	s2, s16
 8002252:	4620      	mov	r0, r4
 8002254:	4629      	mov	r1, r5
 8002256:	eef0 1a68 	vmov.f32	s3, s17
 800225a:	f7ff fe31 	bl	8001ec0 <frac>
 800225e:	ed96 0b0a 	vldr	d0, [r6, #40]	; 0x28
 8002262:	eeb0 1a48 	vmov.f32	s2, s16
 8002266:	4620      	mov	r0, r4
 8002268:	4629      	mov	r1, r5
 800226a:	eef0 1a68 	vmov.f32	s3, s17
 800226e:	f7ff fe27 	bl	8001ec0 <frac>
 8002272:	ed96 0b0c 	vldr	d0, [r6, #48]	; 0x30
 8002276:	eeb0 1a48 	vmov.f32	s2, s16
 800227a:	4620      	mov	r0, r4
 800227c:	4629      	mov	r1, r5
 800227e:	eef0 1a68 	vmov.f32	s3, s17
 8002282:	f7ff fe1d 	bl	8001ec0 <frac>
 8002286:	ed96 0b0e 	vldr	d0, [r6, #56]	; 0x38
 800228a:	eeb0 1a48 	vmov.f32	s2, s16
 800228e:	4620      	mov	r0, r4
 8002290:	4629      	mov	r1, r5
 8002292:	eef0 1a68 	vmov.f32	s3, s17
 8002296:	f7ff fe13 	bl	8001ec0 <frac>
 800229a:	ed96 0b10 	vldr	d0, [r6, #64]	; 0x40
 800229e:	eeb0 1a48 	vmov.f32	s2, s16
 80022a2:	4620      	mov	r0, r4
 80022a4:	4629      	mov	r1, r5
 80022a6:	eef0 1a68 	vmov.f32	s3, s17
 80022aa:	f7ff fe09 	bl	8001ec0 <frac>
 80022ae:	ed96 0b12 	vldr	d0, [r6, #72]	; 0x48
 80022b2:	eeb0 1a48 	vmov.f32	s2, s16
 80022b6:	4620      	mov	r0, r4
 80022b8:	4629      	mov	r1, r5
 80022ba:	eef0 1a68 	vmov.f32	s3, s17
 80022be:	f7ff fdff 	bl	8001ec0 <frac>
 80022c2:	9800      	ldr	r0, [sp, #0]
 80022c4:	b002      	add	sp, #8
 80022c6:	ecbd 8b02 	vpop	{d8}
 80022ca:	f85d bb04 	ldr.w	fp, [sp], #4
 80022ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022d0:	d9d7bdbb 	.word	0xd9d7bdbb
 80022d4:	3ddb7cdf 	.word	0x3ddb7cdf

080022d8 <verify_benchmark>:
 80022d8:	f244 2240 	movw	r2, #16960	; 0x4240
 80022dc:	2100      	movs	r1, #0
 80022de:	f2c0 020f 	movt	r2, #15
 80022e2:	4290      	cmp	r0, r2
 80022e4:	bf08      	it	eq
 80022e6:	2101      	moveq	r1, #1
 80022e8:	4608      	mov	r0, r1
 80022ea:	4770      	bx	lr

080022ec <__io_putchar>:
 80022ec:	b580      	push	{r7, lr}
 80022ee:	466f      	mov	r7, sp
 80022f0:	b082      	sub	sp, #8
 80022f2:	9001      	str	r0, [sp, #4]
 80022f4:	f640 2034 	movw	r0, #2612	; 0xa34
 80022f8:	a901      	add	r1, sp, #4
 80022fa:	2201      	movs	r2, #1
 80022fc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002300:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002304:	f7ff fceb 	bl	8001cde <HAL_UART_Transmit>
 8002308:	9801      	ldr	r0, [sp, #4]
 800230a:	b002      	add	sp, #8
 800230c:	bd80      	pop	{r7, pc}

0800230e <main>:
 800230e:	b5b0      	push	{r4, r5, r7, lr}
 8002310:	af02      	add	r7, sp, #8
 8002312:	f640 2134 	movw	r1, #2612	; 0xa34
 8002316:	f643 0000 	movw	r0, #14336	; 0x3800
 800231a:	220c      	movs	r2, #12
 800231c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002320:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002324:	6008      	str	r0, [r1, #0]
 8002326:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800232a:	6048      	str	r0, [r1, #4]
 800232c:	2000      	movs	r0, #0
 800232e:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002332:	6108      	str	r0, [r1, #16]
 8002334:	6248      	str	r0, [r1, #36]	; 0x24
 8002336:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800233a:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800233e:	2000      	movs	r0, #0
 8002340:	f7ff fd62 	bl	8001e08 <BSP_COM_Init>
 8002344:	f7ff ff44 	bl	80021d0 <initialise_benchmark>
 8002348:	f247 3000 	movw	r0, #29440	; 0x7300
 800234c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002350:	f000 f948 	bl	80025e4 <printf>
 8002354:	f247 30a7 	movw	r0, #29607	; 0x73a7
 8002358:	f6c0 0000 	movt	r0, #2048	; 0x800
 800235c:	f000 f9a4 	bl	80026a8 <puts>
 8002360:	f7fe fec4 	bl	80010ec <HAL_Init>
 8002364:	f7fe feda 	bl	800111c <HAL_GetTick>
 8002368:	4604      	mov	r4, r0
 800236a:	f7ff ff35 	bl	80021d8 <benchmark>
 800236e:	4605      	mov	r5, r0
 8002370:	f7fe fed4 	bl	800111c <HAL_GetTick>
 8002374:	1b04      	subs	r4, r0, r4
 8002376:	4628      	mov	r0, r5
 8002378:	f7ff ffae 	bl	80022d8 <verify_benchmark>
 800237c:	1c41      	adds	r1, r0, #1
 800237e:	d006      	beq.n	800238e <main+0x80>
 8002380:	2801      	cmp	r0, #1
 8002382:	d109      	bne.n	8002398 <main+0x8a>
 8002384:	f247 3013 	movw	r0, #29459	; 0x7313
 8002388:	f6c0 0000 	movt	r0, #2048	; 0x800
 800238c:	e008      	b.n	80023a0 <main+0x92>
 800238e:	f247 3037 	movw	r0, #29495	; 0x7337
 8002392:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002396:	e003      	b.n	80023a0 <main+0x92>
 8002398:	f247 306c 	movw	r0, #29548	; 0x736c
 800239c:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023a0:	4621      	mov	r1, r4
 80023a2:	f000 f91f 	bl	80025e4 <printf>
 80023a6:	2000      	movs	r0, #0
 80023a8:	bdb0      	pop	{r4, r5, r7, pc}

080023aa <SysTick_Handler>:
 80023aa:	b580      	push	{r7, lr}
 80023ac:	466f      	mov	r7, sp
 80023ae:	f7fe fead 	bl	800110c <HAL_IncTick>
 80023b2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80023b6:	f7fe bf07 	b.w	80011c8 <HAL_SYSTICK_IRQHandler>

080023ba <_read>:
 80023ba:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023bc:	af03      	add	r7, sp, #12
 80023be:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023c2:	4614      	mov	r4, r2
 80023c4:	460d      	mov	r5, r1
 80023c6:	2c01      	cmp	r4, #1
 80023c8:	db06      	blt.n	80023d8 <_read+0x1e>
 80023ca:	4626      	mov	r6, r4
 80023cc:	f3af 8000 	nop.w
 80023d0:	f805 0b01 	strb.w	r0, [r5], #1
 80023d4:	3e01      	subs	r6, #1
 80023d6:	d1f9      	bne.n	80023cc <_read+0x12>
 80023d8:	4620      	mov	r0, r4
 80023da:	f85d bb04 	ldr.w	fp, [sp], #4
 80023de:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023e0 <_write>:
 80023e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023e2:	af03      	add	r7, sp, #12
 80023e4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023e8:	4614      	mov	r4, r2
 80023ea:	460d      	mov	r5, r1
 80023ec:	2c01      	cmp	r4, #1
 80023ee:	db06      	blt.n	80023fe <_write+0x1e>
 80023f0:	4626      	mov	r6, r4
 80023f2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80023f6:	f7ff ff79 	bl	80022ec <__io_putchar>
 80023fa:	3e01      	subs	r6, #1
 80023fc:	d1f9      	bne.n	80023f2 <_write+0x12>
 80023fe:	4620      	mov	r0, r4
 8002400:	f85d bb04 	ldr.w	fp, [sp], #4
 8002404:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002406 <_sbrk>:
 8002406:	f640 22b8 	movw	r2, #2744	; 0xab8
 800240a:	4601      	mov	r1, r0
 800240c:	466b      	mov	r3, sp
 800240e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002412:	6810      	ldr	r0, [r2, #0]
 8002414:	2800      	cmp	r0, #0
 8002416:	bf02      	ittt	eq
 8002418:	f640 3060 	movweq	r0, #2912	; 0xb60
 800241c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002420:	6010      	streq	r0, [r2, #0]
 8002422:	4401      	add	r1, r0
 8002424:	4299      	cmp	r1, r3
 8002426:	bf9c      	itt	ls
 8002428:	6011      	strls	r1, [r2, #0]
 800242a:	4770      	bxls	lr
 800242c:	b580      	push	{r7, lr}
 800242e:	466f      	mov	r7, sp
 8002430:	f000 f864 	bl	80024fc <__errno>
 8002434:	210c      	movs	r1, #12
 8002436:	6001      	str	r1, [r0, #0]
 8002438:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800243c:	bd80      	pop	{r7, pc}

0800243e <_close>:
 800243e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002442:	4770      	bx	lr

08002444 <_fstat>:
 8002444:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002448:	6048      	str	r0, [r1, #4]
 800244a:	2000      	movs	r0, #0
 800244c:	4770      	bx	lr

0800244e <_isatty>:
 800244e:	2001      	movs	r0, #1
 8002450:	4770      	bx	lr

08002452 <_lseek>:
 8002452:	2000      	movs	r0, #0
 8002454:	4770      	bx	lr

08002456 <SystemInit>:
 8002456:	f64e 5088 	movw	r0, #60808	; 0xed88
 800245a:	f04f 0c00 	mov.w	ip, #0
 800245e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002462:	6801      	ldr	r1, [r0, #0]
 8002464:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002468:	6001      	str	r1, [r0, #0]
 800246a:	f241 0100 	movw	r1, #4096	; 0x1000
 800246e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002472:	680a      	ldr	r2, [r1, #0]
 8002474:	f042 0201 	orr.w	r2, r2, #1
 8002478:	600a      	str	r2, [r1, #0]
 800247a:	f8c1 c008 	str.w	ip, [r1, #8]
 800247e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002482:	680b      	ldr	r3, [r1, #0]
 8002484:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002488:	401a      	ands	r2, r3
 800248a:	600a      	str	r2, [r1, #0]
 800248c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002490:	60ca      	str	r2, [r1, #12]
 8002492:	680a      	ldr	r2, [r1, #0]
 8002494:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002498:	600a      	str	r2, [r1, #0]
 800249a:	f8c1 c018 	str.w	ip, [r1, #24]
 800249e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80024a2:	f840 1c80 	str.w	r1, [r0, #-128]
 80024a6:	4770      	bx	lr

080024a8 <Reset_Handler>:
 80024a8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80024e0 <LoopForever+0x2>
 80024ac:	2100      	movs	r1, #0
 80024ae:	e003      	b.n	80024b8 <LoopCopyDataInit>

080024b0 <CopyDataInit>:
 80024b0:	4b0c      	ldr	r3, [pc, #48]	; (80024e4 <LoopForever+0x6>)
 80024b2:	585b      	ldr	r3, [r3, r1]
 80024b4:	5043      	str	r3, [r0, r1]
 80024b6:	3104      	adds	r1, #4

080024b8 <LoopCopyDataInit>:
 80024b8:	480b      	ldr	r0, [pc, #44]	; (80024e8 <LoopForever+0xa>)
 80024ba:	4b0c      	ldr	r3, [pc, #48]	; (80024ec <LoopForever+0xe>)
 80024bc:	1842      	adds	r2, r0, r1
 80024be:	429a      	cmp	r2, r3
 80024c0:	d3f6      	bcc.n	80024b0 <CopyDataInit>
 80024c2:	4a0b      	ldr	r2, [pc, #44]	; (80024f0 <LoopForever+0x12>)
 80024c4:	e002      	b.n	80024cc <LoopFillZerobss>

080024c6 <FillZerobss>:
 80024c6:	2300      	movs	r3, #0
 80024c8:	f842 3b04 	str.w	r3, [r2], #4

080024cc <LoopFillZerobss>:
 80024cc:	4b09      	ldr	r3, [pc, #36]	; (80024f4 <LoopForever+0x16>)
 80024ce:	429a      	cmp	r2, r3
 80024d0:	d3f9      	bcc.n	80024c6 <FillZerobss>
 80024d2:	f7ff ffc0 	bl	8002456 <SystemInit>
 80024d6:	f000 f817 	bl	8002508 <__libc_init_array>
 80024da:	f7ff ff18 	bl	800230e <main>

080024de <LoopForever>:
 80024de:	e7fe      	b.n	80024de <LoopForever>
 80024e0:	20018000 	.word	0x20018000
 80024e4:	08007650 	.word	0x08007650
 80024e8:	20000000 	.word	0x20000000
 80024ec:	20000a18 	.word	0x20000a18
 80024f0:	20000a18 	.word	0x20000a18
 80024f4:	20000b60 	.word	0x20000b60

080024f8 <ADC1_2_IRQHandler>:
 80024f8:	e7fe      	b.n	80024f8 <ADC1_2_IRQHandler>
	...

080024fc <__errno>:
 80024fc:	4b01      	ldr	r3, [pc, #4]	; (8002504 <__errno+0x8>)
 80024fe:	6818      	ldr	r0, [r3, #0]
 8002500:	4770      	bx	lr
 8002502:	bf00      	nop
 8002504:	2000006c 	.word	0x2000006c

08002508 <__libc_init_array>:
 8002508:	b570      	push	{r4, r5, r6, lr}
 800250a:	4e0d      	ldr	r6, [pc, #52]	; (8002540 <__libc_init_array+0x38>)
 800250c:	4d0d      	ldr	r5, [pc, #52]	; (8002544 <__libc_init_array+0x3c>)
 800250e:	1b76      	subs	r6, r6, r5
 8002510:	10b6      	asrs	r6, r6, #2
 8002512:	d006      	beq.n	8002522 <__libc_init_array+0x1a>
 8002514:	2400      	movs	r4, #0
 8002516:	3401      	adds	r4, #1
 8002518:	f855 3b04 	ldr.w	r3, [r5], #4
 800251c:	4798      	blx	r3
 800251e:	42a6      	cmp	r6, r4
 8002520:	d1f9      	bne.n	8002516 <__libc_init_array+0xe>
 8002522:	4e09      	ldr	r6, [pc, #36]	; (8002548 <__libc_init_array+0x40>)
 8002524:	4d09      	ldr	r5, [pc, #36]	; (800254c <__libc_init_array+0x44>)
 8002526:	1b76      	subs	r6, r6, r5
 8002528:	f004 fea8 	bl	800727c <_init>
 800252c:	10b6      	asrs	r6, r6, #2
 800252e:	d006      	beq.n	800253e <__libc_init_array+0x36>
 8002530:	2400      	movs	r4, #0
 8002532:	3401      	adds	r4, #1
 8002534:	f855 3b04 	ldr.w	r3, [r5], #4
 8002538:	4798      	blx	r3
 800253a:	42a6      	cmp	r6, r4
 800253c:	d1f9      	bne.n	8002532 <__libc_init_array+0x2a>
 800253e:	bd70      	pop	{r4, r5, r6, pc}
 8002540:	08007640 	.word	0x08007640
 8002544:	08007640 	.word	0x08007640
 8002548:	08007648 	.word	0x08007648
 800254c:	08007640 	.word	0x08007640

08002550 <memset>:
 8002550:	b4f0      	push	{r4, r5, r6, r7}
 8002552:	0786      	lsls	r6, r0, #30
 8002554:	d043      	beq.n	80025de <memset+0x8e>
 8002556:	1e54      	subs	r4, r2, #1
 8002558:	2a00      	cmp	r2, #0
 800255a:	d03e      	beq.n	80025da <memset+0x8a>
 800255c:	b2ca      	uxtb	r2, r1
 800255e:	4603      	mov	r3, r0
 8002560:	e002      	b.n	8002568 <memset+0x18>
 8002562:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002566:	d338      	bcc.n	80025da <memset+0x8a>
 8002568:	f803 2b01 	strb.w	r2, [r3], #1
 800256c:	079d      	lsls	r5, r3, #30
 800256e:	d1f8      	bne.n	8002562 <memset+0x12>
 8002570:	2c03      	cmp	r4, #3
 8002572:	d92b      	bls.n	80025cc <memset+0x7c>
 8002574:	b2cd      	uxtb	r5, r1
 8002576:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800257a:	2c0f      	cmp	r4, #15
 800257c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002580:	d916      	bls.n	80025b0 <memset+0x60>
 8002582:	f1a4 0710 	sub.w	r7, r4, #16
 8002586:	093f      	lsrs	r7, r7, #4
 8002588:	f103 0620 	add.w	r6, r3, #32
 800258c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002590:	f103 0210 	add.w	r2, r3, #16
 8002594:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002598:	e942 5502 	strd	r5, r5, [r2, #-8]
 800259c:	3210      	adds	r2, #16
 800259e:	42b2      	cmp	r2, r6
 80025a0:	d1f8      	bne.n	8002594 <memset+0x44>
 80025a2:	f004 040f 	and.w	r4, r4, #15
 80025a6:	3701      	adds	r7, #1
 80025a8:	2c03      	cmp	r4, #3
 80025aa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80025ae:	d90d      	bls.n	80025cc <memset+0x7c>
 80025b0:	461e      	mov	r6, r3
 80025b2:	4622      	mov	r2, r4
 80025b4:	3a04      	subs	r2, #4
 80025b6:	2a03      	cmp	r2, #3
 80025b8:	f846 5b04 	str.w	r5, [r6], #4
 80025bc:	d8fa      	bhi.n	80025b4 <memset+0x64>
 80025be:	1f22      	subs	r2, r4, #4
 80025c0:	f022 0203 	bic.w	r2, r2, #3
 80025c4:	3204      	adds	r2, #4
 80025c6:	4413      	add	r3, r2
 80025c8:	f004 0403 	and.w	r4, r4, #3
 80025cc:	b12c      	cbz	r4, 80025da <memset+0x8a>
 80025ce:	b2c9      	uxtb	r1, r1
 80025d0:	441c      	add	r4, r3
 80025d2:	f803 1b01 	strb.w	r1, [r3], #1
 80025d6:	429c      	cmp	r4, r3
 80025d8:	d1fb      	bne.n	80025d2 <memset+0x82>
 80025da:	bcf0      	pop	{r4, r5, r6, r7}
 80025dc:	4770      	bx	lr
 80025de:	4614      	mov	r4, r2
 80025e0:	4603      	mov	r3, r0
 80025e2:	e7c5      	b.n	8002570 <memset+0x20>

080025e4 <printf>:
 80025e4:	b40f      	push	{r0, r1, r2, r3}
 80025e6:	b500      	push	{lr}
 80025e8:	4907      	ldr	r1, [pc, #28]	; (8002608 <printf+0x24>)
 80025ea:	b083      	sub	sp, #12
 80025ec:	ab04      	add	r3, sp, #16
 80025ee:	6808      	ldr	r0, [r1, #0]
 80025f0:	f853 2b04 	ldr.w	r2, [r3], #4
 80025f4:	6881      	ldr	r1, [r0, #8]
 80025f6:	9301      	str	r3, [sp, #4]
 80025f8:	f000 f85e 	bl	80026b8 <_vfprintf_r>
 80025fc:	b003      	add	sp, #12
 80025fe:	f85d eb04 	ldr.w	lr, [sp], #4
 8002602:	b004      	add	sp, #16
 8002604:	4770      	bx	lr
 8002606:	bf00      	nop
 8002608:	2000006c 	.word	0x2000006c

0800260c <_puts_r>:
 800260c:	b570      	push	{r4, r5, r6, lr}
 800260e:	4605      	mov	r5, r0
 8002610:	b088      	sub	sp, #32
 8002612:	4608      	mov	r0, r1
 8002614:	460c      	mov	r4, r1
 8002616:	f7fe fc93 	bl	8000f40 <strlen>
 800261a:	4a22      	ldr	r2, [pc, #136]	; (80026a4 <_puts_r+0x98>)
 800261c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800261e:	9404      	str	r4, [sp, #16]
 8002620:	2601      	movs	r6, #1
 8002622:	1c44      	adds	r4, r0, #1
 8002624:	a904      	add	r1, sp, #16
 8002626:	9206      	str	r2, [sp, #24]
 8002628:	2202      	movs	r2, #2
 800262a:	9403      	str	r4, [sp, #12]
 800262c:	9005      	str	r0, [sp, #20]
 800262e:	68ac      	ldr	r4, [r5, #8]
 8002630:	9607      	str	r6, [sp, #28]
 8002632:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002636:	b31b      	cbz	r3, 8002680 <_puts_r+0x74>
 8002638:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800263a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800263e:	07ce      	lsls	r6, r1, #31
 8002640:	b29a      	uxth	r2, r3
 8002642:	d401      	bmi.n	8002648 <_puts_r+0x3c>
 8002644:	0590      	lsls	r0, r2, #22
 8002646:	d525      	bpl.n	8002694 <_puts_r+0x88>
 8002648:	0491      	lsls	r1, r2, #18
 800264a:	d406      	bmi.n	800265a <_puts_r+0x4e>
 800264c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800264e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002652:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002656:	81a3      	strh	r3, [r4, #12]
 8002658:	6662      	str	r2, [r4, #100]	; 0x64
 800265a:	4628      	mov	r0, r5
 800265c:	aa01      	add	r2, sp, #4
 800265e:	4621      	mov	r1, r4
 8002660:	f003 f85e 	bl	8005720 <__sfvwrite_r>
 8002664:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002666:	2800      	cmp	r0, #0
 8002668:	bf0c      	ite	eq
 800266a:	250a      	moveq	r5, #10
 800266c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002670:	07da      	lsls	r2, r3, #31
 8002672:	d402      	bmi.n	800267a <_puts_r+0x6e>
 8002674:	89a3      	ldrh	r3, [r4, #12]
 8002676:	059b      	lsls	r3, r3, #22
 8002678:	d506      	bpl.n	8002688 <_puts_r+0x7c>
 800267a:	4628      	mov	r0, r5
 800267c:	b008      	add	sp, #32
 800267e:	bd70      	pop	{r4, r5, r6, pc}
 8002680:	4628      	mov	r0, r5
 8002682:	f002 feb7 	bl	80053f4 <__sinit>
 8002686:	e7d7      	b.n	8002638 <_puts_r+0x2c>
 8002688:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800268a:	f003 fa05 	bl	8005a98 <__retarget_lock_release_recursive>
 800268e:	4628      	mov	r0, r5
 8002690:	b008      	add	sp, #32
 8002692:	bd70      	pop	{r4, r5, r6, pc}
 8002694:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002696:	f003 f9fd 	bl	8005a94 <__retarget_lock_acquire_recursive>
 800269a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800269e:	b29a      	uxth	r2, r3
 80026a0:	e7d2      	b.n	8002648 <_puts_r+0x3c>
 80026a2:	bf00      	nop
 80026a4:	080073b0 	.word	0x080073b0

080026a8 <puts>:
 80026a8:	4b02      	ldr	r3, [pc, #8]	; (80026b4 <puts+0xc>)
 80026aa:	4601      	mov	r1, r0
 80026ac:	6818      	ldr	r0, [r3, #0]
 80026ae:	f7ff bfad 	b.w	800260c <_puts_r>
 80026b2:	bf00      	nop
 80026b4:	2000006c 	.word	0x2000006c

080026b8 <_vfprintf_r>:
 80026b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80026bc:	b0d7      	sub	sp, #348	; 0x15c
 80026be:	461c      	mov	r4, r3
 80026c0:	4689      	mov	r9, r1
 80026c2:	4617      	mov	r7, r2
 80026c4:	4605      	mov	r5, r0
 80026c6:	9003      	str	r0, [sp, #12]
 80026c8:	f003 f9d2 	bl	8005a70 <_localeconv_r>
 80026cc:	6803      	ldr	r3, [r0, #0]
 80026ce:	9316      	str	r3, [sp, #88]	; 0x58
 80026d0:	4618      	mov	r0, r3
 80026d2:	f7fe fc35 	bl	8000f40 <strlen>
 80026d6:	9408      	str	r4, [sp, #32]
 80026d8:	9015      	str	r0, [sp, #84]	; 0x54
 80026da:	b11d      	cbz	r5, 80026e4 <_vfprintf_r+0x2c>
 80026dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80026de:	2b00      	cmp	r3, #0
 80026e0:	f000 8107 	beq.w	80028f2 <_vfprintf_r+0x23a>
 80026e4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80026e8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80026ec:	07c8      	lsls	r0, r1, #31
 80026ee:	b293      	uxth	r3, r2
 80026f0:	d402      	bmi.n	80026f8 <_vfprintf_r+0x40>
 80026f2:	0599      	lsls	r1, r3, #22
 80026f4:	f140 811f 	bpl.w	8002936 <_vfprintf_r+0x27e>
 80026f8:	049e      	lsls	r6, r3, #18
 80026fa:	d40a      	bmi.n	8002712 <_vfprintf_r+0x5a>
 80026fc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002700:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002704:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002708:	f8a9 300c 	strh.w	r3, [r9, #12]
 800270c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002710:	b29b      	uxth	r3, r3
 8002712:	071d      	lsls	r5, r3, #28
 8002714:	f140 80b2 	bpl.w	800287c <_vfprintf_r+0x1c4>
 8002718:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800271c:	2a00      	cmp	r2, #0
 800271e:	f000 80ad 	beq.w	800287c <_vfprintf_r+0x1c4>
 8002722:	f003 021a 	and.w	r2, r3, #26
 8002726:	2a0a      	cmp	r2, #10
 8002728:	f000 80c9 	beq.w	80028be <_vfprintf_r+0x206>
 800272c:	2300      	movs	r3, #0
 800272e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002948 <_vfprintf_r+0x290>
 8002732:	9310      	str	r3, [sp, #64]	; 0x40
 8002734:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002738:	9317      	str	r3, [sp, #92]	; 0x5c
 800273a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800273e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002740:	9318      	str	r3, [sp, #96]	; 0x60
 8002742:	9305      	str	r3, [sp, #20]
 8002744:	ab2d      	add	r3, sp, #180	; 0xb4
 8002746:	932a      	str	r3, [sp, #168]	; 0xa8
 8002748:	469b      	mov	fp, r3
 800274a:	783b      	ldrb	r3, [r7, #0]
 800274c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002750:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002754:	2b00      	cmp	r3, #0
 8002756:	f000 8259 	beq.w	8002c0c <_vfprintf_r+0x554>
 800275a:	2b25      	cmp	r3, #37	; 0x25
 800275c:	463c      	mov	r4, r7
 800275e:	d102      	bne.n	8002766 <_vfprintf_r+0xae>
 8002760:	e01d      	b.n	800279e <_vfprintf_r+0xe6>
 8002762:	2b25      	cmp	r3, #37	; 0x25
 8002764:	d003      	beq.n	800276e <_vfprintf_r+0xb6>
 8002766:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800276a:	2b00      	cmp	r3, #0
 800276c:	d1f9      	bne.n	8002762 <_vfprintf_r+0xaa>
 800276e:	1be5      	subs	r5, r4, r7
 8002770:	b18d      	cbz	r5, 8002796 <_vfprintf_r+0xde>
 8002772:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002776:	3301      	adds	r3, #1
 8002778:	442a      	add	r2, r5
 800277a:	2b07      	cmp	r3, #7
 800277c:	f8cb 7000 	str.w	r7, [fp]
 8002780:	f8cb 5004 	str.w	r5, [fp, #4]
 8002784:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002788:	f300 80ca 	bgt.w	8002920 <_vfprintf_r+0x268>
 800278c:	f10b 0b08 	add.w	fp, fp, #8
 8002790:	9b05      	ldr	r3, [sp, #20]
 8002792:	442b      	add	r3, r5
 8002794:	9305      	str	r3, [sp, #20]
 8002796:	7823      	ldrb	r3, [r4, #0]
 8002798:	2b00      	cmp	r3, #0
 800279a:	f000 8237 	beq.w	8002c0c <_vfprintf_r+0x554>
 800279e:	2300      	movs	r3, #0
 80027a0:	7866      	ldrb	r6, [r4, #1]
 80027a2:	9306      	str	r3, [sp, #24]
 80027a4:	4698      	mov	r8, r3
 80027a6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80027aa:	f104 0a01 	add.w	sl, r4, #1
 80027ae:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80027b2:	252b      	movs	r5, #43	; 0x2b
 80027b4:	f10a 0a01 	add.w	sl, sl, #1
 80027b8:	f1a6 0320 	sub.w	r3, r6, #32
 80027bc:	2b5a      	cmp	r3, #90	; 0x5a
 80027be:	f200 842a 	bhi.w	8003016 <_vfprintf_r+0x95e>
 80027c2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80027c6:	03aa      	.short	0x03aa
 80027c8:	04280428 	.word	0x04280428
 80027cc:	0428029c 	.word	0x0428029c
 80027d0:	04280428 	.word	0x04280428
 80027d4:	042802a7 	.word	0x042802a7
 80027d8:	02c60428 	.word	0x02c60428
 80027dc:	042802d2 	.word	0x042802d2
 80027e0:	02dc02d7 	.word	0x02dc02d7
 80027e4:	02f60428 	.word	0x02f60428
 80027e8:	026d026d 	.word	0x026d026d
 80027ec:	026d026d 	.word	0x026d026d
 80027f0:	026d026d 	.word	0x026d026d
 80027f4:	026d026d 	.word	0x026d026d
 80027f8:	0428026d 	.word	0x0428026d
 80027fc:	04280428 	.word	0x04280428
 8002800:	04280428 	.word	0x04280428
 8002804:	04280428 	.word	0x04280428
 8002808:	042802fb 	.word	0x042802fb
 800280c:	03f3033c 	.word	0x03f3033c
 8002810:	02fb02fb 	.word	0x02fb02fb
 8002814:	042802fb 	.word	0x042802fb
 8002818:	04280428 	.word	0x04280428
 800281c:	03ee0428 	.word	0x03ee0428
 8002820:	04280428 	.word	0x04280428
 8002824:	0428009a 	.word	0x0428009a
 8002828:	04280428 	.word	0x04280428
 800282c:	04280350 	.word	0x04280350
 8002830:	04280379 	.word	0x04280379
 8002834:	03900428 	.word	0x03900428
 8002838:	04280428 	.word	0x04280428
 800283c:	04280428 	.word	0x04280428
 8002840:	04280428 	.word	0x04280428
 8002844:	04280428 	.word	0x04280428
 8002848:	042802fb 	.word	0x042802fb
 800284c:	00c5033c 	.word	0x00c5033c
 8002850:	02fb02fb 	.word	0x02fb02fb
 8002854:	03d102fb 	.word	0x03d102fb
 8002858:	007000c5 	.word	0x007000c5
 800285c:	03b50428 	.word	0x03b50428
 8002860:	03c20428 	.word	0x03c20428
 8002864:	03de009c 	.word	0x03de009c
 8002868:	04280070 	.word	0x04280070
 800286c:	00720350 	.word	0x00720350
 8002870:	0428022c 	.word	0x0428022c
 8002874:	027c0428 	.word	0x027c0428
 8002878:	00720428 	.word	0x00720428
 800287c:	4649      	mov	r1, r9
 800287e:	9803      	ldr	r0, [sp, #12]
 8002880:	f001 fc9a 	bl	80041b8 <__swsetup_r>
 8002884:	b1a0      	cbz	r0, 80028b0 <_vfprintf_r+0x1f8>
 8002886:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800288a:	07d8      	lsls	r0, r3, #31
 800288c:	d404      	bmi.n	8002898 <_vfprintf_r+0x1e0>
 800288e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002892:	0599      	lsls	r1, r3, #22
 8002894:	f140 83b7 	bpl.w	8003006 <_vfprintf_r+0x94e>
 8002898:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800289c:	9305      	str	r3, [sp, #20]
 800289e:	9805      	ldr	r0, [sp, #20]
 80028a0:	b057      	add	sp, #348	; 0x15c
 80028a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028a6:	f048 0820 	orr.w	r8, r8, #32
 80028aa:	f89a 6000 	ldrb.w	r6, [sl]
 80028ae:	e781      	b.n	80027b4 <_vfprintf_r+0xfc>
 80028b0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80028b4:	f003 021a 	and.w	r2, r3, #26
 80028b8:	2a0a      	cmp	r2, #10
 80028ba:	f47f af37 	bne.w	800272c <_vfprintf_r+0x74>
 80028be:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80028c2:	2a00      	cmp	r2, #0
 80028c4:	f6ff af32 	blt.w	800272c <_vfprintf_r+0x74>
 80028c8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80028cc:	07d2      	lsls	r2, r2, #31
 80028ce:	d405      	bmi.n	80028dc <_vfprintf_r+0x224>
 80028d0:	059b      	lsls	r3, r3, #22
 80028d2:	d403      	bmi.n	80028dc <_vfprintf_r+0x224>
 80028d4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80028d8:	f003 f8de 	bl	8005a98 <__retarget_lock_release_recursive>
 80028dc:	4623      	mov	r3, r4
 80028de:	463a      	mov	r2, r7
 80028e0:	4649      	mov	r1, r9
 80028e2:	9803      	ldr	r0, [sp, #12]
 80028e4:	f001 fc26 	bl	8004134 <__sbprintf>
 80028e8:	9005      	str	r0, [sp, #20]
 80028ea:	9805      	ldr	r0, [sp, #20]
 80028ec:	b057      	add	sp, #348	; 0x15c
 80028ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028f2:	9803      	ldr	r0, [sp, #12]
 80028f4:	f002 fd7e 	bl	80053f4 <__sinit>
 80028f8:	e6f4      	b.n	80026e4 <_vfprintf_r+0x2c>
 80028fa:	f048 0810 	orr.w	r8, r8, #16
 80028fe:	f018 0f20 	tst.w	r8, #32
 8002902:	f000 836c 	beq.w	8002fde <_vfprintf_r+0x926>
 8002906:	9c08      	ldr	r4, [sp, #32]
 8002908:	3407      	adds	r4, #7
 800290a:	f024 0307 	bic.w	r3, r4, #7
 800290e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002912:	f103 0208 	add.w	r2, r3, #8
 8002916:	9208      	str	r2, [sp, #32]
 8002918:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800291c:	2200      	movs	r2, #0
 800291e:	e18c      	b.n	8002c3a <_vfprintf_r+0x582>
 8002920:	aa2a      	add	r2, sp, #168	; 0xa8
 8002922:	9907      	ldr	r1, [sp, #28]
 8002924:	9803      	ldr	r0, [sp, #12]
 8002926:	f004 f9f5 	bl	8006d14 <__sprint_r>
 800292a:	2800      	cmp	r0, #0
 800292c:	f041 8376 	bne.w	800401c <_vfprintf_r+0x1964>
 8002930:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002934:	e72c      	b.n	8002790 <_vfprintf_r+0xd8>
 8002936:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800293a:	f003 f8ab 	bl	8005a94 <__retarget_lock_acquire_recursive>
 800293e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002942:	b293      	uxth	r3, r2
 8002944:	e6d8      	b.n	80026f8 <_vfprintf_r+0x40>
 8002946:	bf00      	nop
	...
 8002950:	4643      	mov	r3, r8
 8002952:	069f      	lsls	r7, r3, #26
 8002954:	f140 832f 	bpl.w	8002fb6 <_vfprintf_r+0x8fe>
 8002958:	9c08      	ldr	r4, [sp, #32]
 800295a:	3407      	adds	r4, #7
 800295c:	f024 0407 	bic.w	r4, r4, #7
 8002960:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002964:	f104 0208 	add.w	r2, r4, #8
 8002968:	9208      	str	r2, [sp, #32]
 800296a:	4604      	mov	r4, r0
 800296c:	460d      	mov	r5, r1
 800296e:	2800      	cmp	r0, #0
 8002970:	f171 0200 	sbcs.w	r2, r1, #0
 8002974:	da05      	bge.n	8002982 <_vfprintf_r+0x2ca>
 8002976:	222d      	movs	r2, #45	; 0x2d
 8002978:	4264      	negs	r4, r4
 800297a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800297e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002982:	aa56      	add	r2, sp, #344	; 0x158
 8002984:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002988:	9204      	str	r2, [sp, #16]
 800298a:	f000 84b2 	beq.w	80032f2 <_vfprintf_r+0xc3a>
 800298e:	2201      	movs	r2, #1
 8002990:	ea54 0105 	orrs.w	r1, r4, r5
 8002994:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002998:	f040 8159 	bne.w	8002c4e <_vfprintf_r+0x596>
 800299c:	f1b9 0f00 	cmp.w	r9, #0
 80029a0:	f040 8619 	bne.w	80035d6 <_vfprintf_r+0xf1e>
 80029a4:	2a00      	cmp	r2, #0
 80029a6:	f040 8508 	bne.w	80033ba <_vfprintf_r+0xd02>
 80029aa:	f013 0301 	ands.w	r3, r3, #1
 80029ae:	af56      	add	r7, sp, #344	; 0x158
 80029b0:	9309      	str	r3, [sp, #36]	; 0x24
 80029b2:	d002      	beq.n	80029ba <_vfprintf_r+0x302>
 80029b4:	2330      	movs	r3, #48	; 0x30
 80029b6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80029ba:	2300      	movs	r3, #0
 80029bc:	930a      	str	r3, [sp, #40]	; 0x28
 80029be:	930f      	str	r3, [sp, #60]	; 0x3c
 80029c0:	9314      	str	r3, [sp, #80]	; 0x50
 80029c2:	9311      	str	r3, [sp, #68]	; 0x44
 80029c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80029c6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80029ca:	454b      	cmp	r3, r9
 80029cc:	bfb8      	it	lt
 80029ce:	464b      	movlt	r3, r9
 80029d0:	9304      	str	r3, [sp, #16]
 80029d2:	b112      	cbz	r2, 80029da <_vfprintf_r+0x322>
 80029d4:	9b04      	ldr	r3, [sp, #16]
 80029d6:	3301      	adds	r3, #1
 80029d8:	9304      	str	r3, [sp, #16]
 80029da:	f018 0302 	ands.w	r3, r8, #2
 80029de:	930b      	str	r3, [sp, #44]	; 0x2c
 80029e0:	d002      	beq.n	80029e8 <_vfprintf_r+0x330>
 80029e2:	9b04      	ldr	r3, [sp, #16]
 80029e4:	3302      	adds	r3, #2
 80029e6:	9304      	str	r3, [sp, #16]
 80029e8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80029ec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80029ee:	930e      	str	r3, [sp, #56]	; 0x38
 80029f0:	d13f      	bne.n	8002a72 <_vfprintf_r+0x3ba>
 80029f2:	9b06      	ldr	r3, [sp, #24]
 80029f4:	9904      	ldr	r1, [sp, #16]
 80029f6:	1a5d      	subs	r5, r3, r1
 80029f8:	2d00      	cmp	r5, #0
 80029fa:	dd3a      	ble.n	8002a72 <_vfprintf_r+0x3ba>
 80029fc:	2d10      	cmp	r5, #16
 80029fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a00:	dd29      	ble.n	8002a56 <_vfprintf_r+0x39e>
 8002a02:	4659      	mov	r1, fp
 8002a04:	4620      	mov	r0, r4
 8002a06:	9620      	str	r6, [sp, #128]	; 0x80
 8002a08:	2310      	movs	r3, #16
 8002a0a:	9c03      	ldr	r4, [sp, #12]
 8002a0c:	9e07      	ldr	r6, [sp, #28]
 8002a0e:	46bb      	mov	fp, r7
 8002a10:	e004      	b.n	8002a1c <_vfprintf_r+0x364>
 8002a12:	3d10      	subs	r5, #16
 8002a14:	2d10      	cmp	r5, #16
 8002a16:	f101 0108 	add.w	r1, r1, #8
 8002a1a:	dd18      	ble.n	8002a4e <_vfprintf_r+0x396>
 8002a1c:	3201      	adds	r2, #1
 8002a1e:	4fba      	ldr	r7, [pc, #744]	; (8002d08 <_vfprintf_r+0x650>)
 8002a20:	3010      	adds	r0, #16
 8002a22:	2a07      	cmp	r2, #7
 8002a24:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a28:	e9c1 7300 	strd	r7, r3, [r1]
 8002a2c:	ddf1      	ble.n	8002a12 <_vfprintf_r+0x35a>
 8002a2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a30:	4631      	mov	r1, r6
 8002a32:	4620      	mov	r0, r4
 8002a34:	930c      	str	r3, [sp, #48]	; 0x30
 8002a36:	f004 f96d 	bl	8006d14 <__sprint_r>
 8002a3a:	2800      	cmp	r0, #0
 8002a3c:	f040 843d 	bne.w	80032ba <_vfprintf_r+0xc02>
 8002a40:	3d10      	subs	r5, #16
 8002a42:	2d10      	cmp	r5, #16
 8002a44:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002a48:	a92d      	add	r1, sp, #180	; 0xb4
 8002a4a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002a4c:	dce6      	bgt.n	8002a1c <_vfprintf_r+0x364>
 8002a4e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002a50:	465f      	mov	r7, fp
 8002a52:	4604      	mov	r4, r0
 8002a54:	468b      	mov	fp, r1
 8002a56:	3201      	adds	r2, #1
 8002a58:	4bab      	ldr	r3, [pc, #684]	; (8002d08 <_vfprintf_r+0x650>)
 8002a5a:	442c      	add	r4, r5
 8002a5c:	2a07      	cmp	r2, #7
 8002a5e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a62:	e9cb 3500 	strd	r3, r5, [fp]
 8002a66:	f300 84ff 	bgt.w	8003468 <_vfprintf_r+0xdb0>
 8002a6a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a6e:	f10b 0b08 	add.w	fp, fp, #8
 8002a72:	b172      	cbz	r2, 8002a92 <_vfprintf_r+0x3da>
 8002a74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a76:	3201      	adds	r2, #1
 8002a78:	3401      	adds	r4, #1
 8002a7a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002a7e:	2101      	movs	r1, #1
 8002a80:	2a07      	cmp	r2, #7
 8002a82:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a86:	e9cb 0100 	strd	r0, r1, [fp]
 8002a8a:	f300 8418 	bgt.w	80032be <_vfprintf_r+0xc06>
 8002a8e:	f10b 0b08 	add.w	fp, fp, #8
 8002a92:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002a94:	b16b      	cbz	r3, 8002ab2 <_vfprintf_r+0x3fa>
 8002a96:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a98:	3301      	adds	r3, #1
 8002a9a:	3402      	adds	r4, #2
 8002a9c:	a923      	add	r1, sp, #140	; 0x8c
 8002a9e:	2202      	movs	r2, #2
 8002aa0:	2b07      	cmp	r3, #7
 8002aa2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002aa6:	e9cb 1200 	strd	r1, r2, [fp]
 8002aaa:	f300 8415 	bgt.w	80032d8 <_vfprintf_r+0xc20>
 8002aae:	f10b 0b08 	add.w	fp, fp, #8
 8002ab2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002ab4:	2b80      	cmp	r3, #128	; 0x80
 8002ab6:	f000 8331 	beq.w	800311c <_vfprintf_r+0xa64>
 8002aba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002abc:	eba9 0503 	sub.w	r5, r9, r3
 8002ac0:	2d00      	cmp	r5, #0
 8002ac2:	dd37      	ble.n	8002b34 <_vfprintf_r+0x47c>
 8002ac4:	2d10      	cmp	r5, #16
 8002ac6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ac8:	4b90      	ldr	r3, [pc, #576]	; (8002d0c <_vfprintf_r+0x654>)
 8002aca:	dd28      	ble.n	8002b1e <_vfprintf_r+0x466>
 8002acc:	4659      	mov	r1, fp
 8002ace:	4620      	mov	r0, r4
 8002ad0:	46bb      	mov	fp, r7
 8002ad2:	f04f 0910 	mov.w	r9, #16
 8002ad6:	4637      	mov	r7, r6
 8002ad8:	461c      	mov	r4, r3
 8002ada:	9e07      	ldr	r6, [sp, #28]
 8002adc:	e004      	b.n	8002ae8 <_vfprintf_r+0x430>
 8002ade:	3d10      	subs	r5, #16
 8002ae0:	2d10      	cmp	r5, #16
 8002ae2:	f101 0108 	add.w	r1, r1, #8
 8002ae6:	dd15      	ble.n	8002b14 <_vfprintf_r+0x45c>
 8002ae8:	3201      	adds	r2, #1
 8002aea:	3010      	adds	r0, #16
 8002aec:	2a07      	cmp	r2, #7
 8002aee:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002af2:	e9c1 4900 	strd	r4, r9, [r1]
 8002af6:	ddf2      	ble.n	8002ade <_vfprintf_r+0x426>
 8002af8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002afa:	4631      	mov	r1, r6
 8002afc:	9803      	ldr	r0, [sp, #12]
 8002afe:	f004 f909 	bl	8006d14 <__sprint_r>
 8002b02:	2800      	cmp	r0, #0
 8002b04:	f040 83d9 	bne.w	80032ba <_vfprintf_r+0xc02>
 8002b08:	3d10      	subs	r5, #16
 8002b0a:	2d10      	cmp	r5, #16
 8002b0c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002b10:	a92d      	add	r1, sp, #180	; 0xb4
 8002b12:	dce9      	bgt.n	8002ae8 <_vfprintf_r+0x430>
 8002b14:	463e      	mov	r6, r7
 8002b16:	4623      	mov	r3, r4
 8002b18:	465f      	mov	r7, fp
 8002b1a:	4604      	mov	r4, r0
 8002b1c:	468b      	mov	fp, r1
 8002b1e:	3201      	adds	r2, #1
 8002b20:	442c      	add	r4, r5
 8002b22:	2a07      	cmp	r2, #7
 8002b24:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b28:	e9cb 3500 	strd	r3, r5, [fp]
 8002b2c:	f300 83ef 	bgt.w	800330e <_vfprintf_r+0xc56>
 8002b30:	f10b 0b08 	add.w	fp, fp, #8
 8002b34:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002b38:	f040 8280 	bne.w	800303c <_vfprintf_r+0x984>
 8002b3c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b3e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002b40:	f8cb 7000 	str.w	r7, [fp]
 8002b44:	3301      	adds	r3, #1
 8002b46:	4414      	add	r4, r2
 8002b48:	2b07      	cmp	r3, #7
 8002b4a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002b4c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002b50:	932b      	str	r3, [sp, #172]	; 0xac
 8002b52:	f300 8392 	bgt.w	800327a <_vfprintf_r+0xbc2>
 8002b56:	f10b 0b08 	add.w	fp, fp, #8
 8002b5a:	f018 0f04 	tst.w	r8, #4
 8002b5e:	d03b      	beq.n	8002bd8 <_vfprintf_r+0x520>
 8002b60:	9b06      	ldr	r3, [sp, #24]
 8002b62:	9a04      	ldr	r2, [sp, #16]
 8002b64:	1a9d      	subs	r5, r3, r2
 8002b66:	2d00      	cmp	r5, #0
 8002b68:	dd36      	ble.n	8002bd8 <_vfprintf_r+0x520>
 8002b6a:	2d10      	cmp	r5, #16
 8002b6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b6e:	dd21      	ble.n	8002bb4 <_vfprintf_r+0x4fc>
 8002b70:	2610      	movs	r6, #16
 8002b72:	9f03      	ldr	r7, [sp, #12]
 8002b74:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002b78:	e004      	b.n	8002b84 <_vfprintf_r+0x4cc>
 8002b7a:	3d10      	subs	r5, #16
 8002b7c:	2d10      	cmp	r5, #16
 8002b7e:	f10b 0b08 	add.w	fp, fp, #8
 8002b82:	dd17      	ble.n	8002bb4 <_vfprintf_r+0x4fc>
 8002b84:	3301      	adds	r3, #1
 8002b86:	4a60      	ldr	r2, [pc, #384]	; (8002d08 <_vfprintf_r+0x650>)
 8002b88:	3410      	adds	r4, #16
 8002b8a:	2b07      	cmp	r3, #7
 8002b8c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b90:	e9cb 2600 	strd	r2, r6, [fp]
 8002b94:	ddf1      	ble.n	8002b7a <_vfprintf_r+0x4c2>
 8002b96:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b98:	4641      	mov	r1, r8
 8002b9a:	4638      	mov	r0, r7
 8002b9c:	f004 f8ba 	bl	8006d14 <__sprint_r>
 8002ba0:	2800      	cmp	r0, #0
 8002ba2:	f040 856c 	bne.w	800367e <_vfprintf_r+0xfc6>
 8002ba6:	3d10      	subs	r5, #16
 8002ba8:	2d10      	cmp	r5, #16
 8002baa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002bae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002bb2:	dce7      	bgt.n	8002b84 <_vfprintf_r+0x4cc>
 8002bb4:	3301      	adds	r3, #1
 8002bb6:	4a54      	ldr	r2, [pc, #336]	; (8002d08 <_vfprintf_r+0x650>)
 8002bb8:	442c      	add	r4, r5
 8002bba:	2b07      	cmp	r3, #7
 8002bbc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002bc0:	e9cb 2500 	strd	r2, r5, [fp]
 8002bc4:	dd08      	ble.n	8002bd8 <_vfprintf_r+0x520>
 8002bc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bc8:	9907      	ldr	r1, [sp, #28]
 8002bca:	9803      	ldr	r0, [sp, #12]
 8002bcc:	f004 f8a2 	bl	8006d14 <__sprint_r>
 8002bd0:	2800      	cmp	r0, #0
 8002bd2:	f040 82e9 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8002bd6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002bd8:	9904      	ldr	r1, [sp, #16]
 8002bda:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002bde:	428a      	cmp	r2, r1
 8002be0:	bfac      	ite	ge
 8002be2:	189b      	addge	r3, r3, r2
 8002be4:	185b      	addlt	r3, r3, r1
 8002be6:	9305      	str	r3, [sp, #20]
 8002be8:	2c00      	cmp	r4, #0
 8002bea:	f040 82d5 	bne.w	8003198 <_vfprintf_r+0xae0>
 8002bee:	2300      	movs	r3, #0
 8002bf0:	932b      	str	r3, [sp, #172]	; 0xac
 8002bf2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002bf4:	b11b      	cbz	r3, 8002bfe <_vfprintf_r+0x546>
 8002bf6:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002bf8:	9803      	ldr	r0, [sp, #12]
 8002bfa:	f002 fc9d 	bl	8005538 <_free_r>
 8002bfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c02:	4657      	mov	r7, sl
 8002c04:	783b      	ldrb	r3, [r7, #0]
 8002c06:	2b00      	cmp	r3, #0
 8002c08:	f47f ada7 	bne.w	800275a <_vfprintf_r+0xa2>
 8002c0c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002c0e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002c12:	2b00      	cmp	r3, #0
 8002c14:	f041 80e7 	bne.w	8003de6 <_vfprintf_r+0x172e>
 8002c18:	2300      	movs	r3, #0
 8002c1a:	932b      	str	r3, [sp, #172]	; 0xac
 8002c1c:	e2cb      	b.n	80031b6 <_vfprintf_r+0xafe>
 8002c1e:	4643      	mov	r3, r8
 8002c20:	069a      	lsls	r2, r3, #26
 8002c22:	f140 814e 	bpl.w	8002ec2 <_vfprintf_r+0x80a>
 8002c26:	9c08      	ldr	r4, [sp, #32]
 8002c28:	3407      	adds	r4, #7
 8002c2a:	f024 0207 	bic.w	r2, r4, #7
 8002c2e:	f102 0108 	add.w	r1, r2, #8
 8002c32:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002c36:	9108      	str	r1, [sp, #32]
 8002c38:	2201      	movs	r2, #1
 8002c3a:	2100      	movs	r1, #0
 8002c3c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002c40:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c44:	a956      	add	r1, sp, #344	; 0x158
 8002c46:	9104      	str	r1, [sp, #16]
 8002c48:	f47f aea2 	bne.w	8002990 <_vfprintf_r+0x2d8>
 8002c4c:	4698      	mov	r8, r3
 8002c4e:	2a01      	cmp	r2, #1
 8002c50:	f000 8350 	beq.w	80032f4 <_vfprintf_r+0xc3c>
 8002c54:	2a02      	cmp	r2, #2
 8002c56:	f000 831b 	beq.w	8003290 <_vfprintf_r+0xbd8>
 8002c5a:	a956      	add	r1, sp, #344	; 0x158
 8002c5c:	e000      	b.n	8002c60 <_vfprintf_r+0x5a8>
 8002c5e:	4639      	mov	r1, r7
 8002c60:	08e2      	lsrs	r2, r4, #3
 8002c62:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002c66:	08e8      	lsrs	r0, r5, #3
 8002c68:	f004 0307 	and.w	r3, r4, #7
 8002c6c:	4605      	mov	r5, r0
 8002c6e:	4614      	mov	r4, r2
 8002c70:	3330      	adds	r3, #48	; 0x30
 8002c72:	ea54 0205 	orrs.w	r2, r4, r5
 8002c76:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002c7a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002c7e:	d1ee      	bne.n	8002c5e <_vfprintf_r+0x5a6>
 8002c80:	f018 0f01 	tst.w	r8, #1
 8002c84:	f000 8314 	beq.w	80032b0 <_vfprintf_r+0xbf8>
 8002c88:	2b30      	cmp	r3, #48	; 0x30
 8002c8a:	f000 8311 	beq.w	80032b0 <_vfprintf_r+0xbf8>
 8002c8e:	9a04      	ldr	r2, [sp, #16]
 8002c90:	3902      	subs	r1, #2
 8002c92:	2330      	movs	r3, #48	; 0x30
 8002c94:	1a52      	subs	r2, r2, r1
 8002c96:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002c9a:	9209      	str	r2, [sp, #36]	; 0x24
 8002c9c:	460f      	mov	r7, r1
 8002c9e:	e68c      	b.n	80029ba <_vfprintf_r+0x302>
 8002ca0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ca4:	2200      	movs	r2, #0
 8002ca6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002caa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002cae:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002cb2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002cb6:	2b09      	cmp	r3, #9
 8002cb8:	d9f5      	bls.n	8002ca6 <_vfprintf_r+0x5ee>
 8002cba:	9206      	str	r2, [sp, #24]
 8002cbc:	e57c      	b.n	80027b8 <_vfprintf_r+0x100>
 8002cbe:	4b14      	ldr	r3, [pc, #80]	; (8002d10 <_vfprintf_r+0x658>)
 8002cc0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cc2:	f018 0f20 	tst.w	r8, #32
 8002cc6:	f000 8114 	beq.w	8002ef2 <_vfprintf_r+0x83a>
 8002cca:	9c08      	ldr	r4, [sp, #32]
 8002ccc:	3407      	adds	r4, #7
 8002cce:	f024 0307 	bic.w	r3, r4, #7
 8002cd2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002cd6:	f103 0208 	add.w	r2, r3, #8
 8002cda:	9208      	str	r2, [sp, #32]
 8002cdc:	f018 0f01 	tst.w	r8, #1
 8002ce0:	d009      	beq.n	8002cf6 <_vfprintf_r+0x63e>
 8002ce2:	ea54 0305 	orrs.w	r3, r4, r5
 8002ce6:	d006      	beq.n	8002cf6 <_vfprintf_r+0x63e>
 8002ce8:	2330      	movs	r3, #48	; 0x30
 8002cea:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002cee:	f048 0802 	orr.w	r8, r8, #2
 8002cf2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002cf6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002cfa:	2202      	movs	r2, #2
 8002cfc:	e79d      	b.n	8002c3a <_vfprintf_r+0x582>
 8002cfe:	f048 0801 	orr.w	r8, r8, #1
 8002d02:	f89a 6000 	ldrb.w	r6, [sl]
 8002d06:	e555      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002d08:	080073f8 	.word	0x080073f8
 8002d0c:	08007408 	.word	0x08007408
 8002d10:	080073c4 	.word	0x080073c4
 8002d14:	9e03      	ldr	r6, [sp, #12]
 8002d16:	4630      	mov	r0, r6
 8002d18:	f002 feaa 	bl	8005a70 <_localeconv_r>
 8002d1c:	6843      	ldr	r3, [r0, #4]
 8002d1e:	9318      	str	r3, [sp, #96]	; 0x60
 8002d20:	4618      	mov	r0, r3
 8002d22:	f7fe f90d 	bl	8000f40 <strlen>
 8002d26:	901b      	str	r0, [sp, #108]	; 0x6c
 8002d28:	4604      	mov	r4, r0
 8002d2a:	4630      	mov	r0, r6
 8002d2c:	f002 fea0 	bl	8005a70 <_localeconv_r>
 8002d30:	6883      	ldr	r3, [r0, #8]
 8002d32:	931a      	str	r3, [sp, #104]	; 0x68
 8002d34:	2c00      	cmp	r4, #0
 8002d36:	f43f adb8 	beq.w	80028aa <_vfprintf_r+0x1f2>
 8002d3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d3e:	2b00      	cmp	r3, #0
 8002d40:	f43f ad38 	beq.w	80027b4 <_vfprintf_r+0xfc>
 8002d44:	781b      	ldrb	r3, [r3, #0]
 8002d46:	2b00      	cmp	r3, #0
 8002d48:	f43f ad34 	beq.w	80027b4 <_vfprintf_r+0xfc>
 8002d4c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002d50:	e530      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002d52:	9b08      	ldr	r3, [sp, #32]
 8002d54:	f89a 6000 	ldrb.w	r6, [sl]
 8002d58:	681a      	ldr	r2, [r3, #0]
 8002d5a:	9206      	str	r2, [sp, #24]
 8002d5c:	2a00      	cmp	r2, #0
 8002d5e:	f103 0304 	add.w	r3, r3, #4
 8002d62:	f2c0 8697 	blt.w	8003a94 <_vfprintf_r+0x13dc>
 8002d66:	9308      	str	r3, [sp, #32]
 8002d68:	e524      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002d6a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002d6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d72:	e51f      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002d74:	f89a 6000 	ldrb.w	r6, [sl]
 8002d78:	f048 0804 	orr.w	r8, r8, #4
 8002d7c:	e51a      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002d7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d82:	2e2a      	cmp	r6, #42	; 0x2a
 8002d84:	f10a 0201 	add.w	r2, sl, #1
 8002d88:	f001 81b0 	beq.w	80040ec <_vfprintf_r+0x1a34>
 8002d8c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d90:	2b09      	cmp	r3, #9
 8002d92:	4692      	mov	sl, r2
 8002d94:	f04f 0900 	mov.w	r9, #0
 8002d98:	f63f ad0e 	bhi.w	80027b8 <_vfprintf_r+0x100>
 8002d9c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002da0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002da4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002da8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002dac:	2b09      	cmp	r3, #9
 8002dae:	d9f5      	bls.n	8002d9c <_vfprintf_r+0x6e4>
 8002db0:	e502      	b.n	80027b8 <_vfprintf_r+0x100>
 8002db2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002db6:	f89a 6000 	ldrb.w	r6, [sl]
 8002dba:	e4fb      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002dbc:	9c08      	ldr	r4, [sp, #32]
 8002dbe:	3407      	adds	r4, #7
 8002dc0:	f024 0407 	bic.w	r4, r4, #7
 8002dc4:	ed94 7b00 	vldr	d7, [r4]
 8002dc8:	ec52 1b17 	vmov	r1, r2, d7
 8002dcc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002dd0:	931d      	str	r3, [sp, #116]	; 0x74
 8002dd2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002dd6:	3408      	adds	r4, #8
 8002dd8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002ddc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002de0:	4bba      	ldr	r3, [pc, #744]	; (80030cc <_vfprintf_r+0xa14>)
 8002de2:	9408      	str	r4, [sp, #32]
 8002de4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002de8:	f7fe f96a 	bl	80010c0 <__aeabi_dcmpun>
 8002dec:	2800      	cmp	r0, #0
 8002dee:	f040 846f 	bne.w	80036d0 <_vfprintf_r+0x1018>
 8002df2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002df6:	4bb5      	ldr	r3, [pc, #724]	; (80030cc <_vfprintf_r+0xa14>)
 8002df8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002dfc:	f7fd fe38 	bl	8000a70 <__aeabi_dcmple>
 8002e00:	2800      	cmp	r0, #0
 8002e02:	f040 8465 	bne.w	80036d0 <_vfprintf_r+0x1018>
 8002e06:	2200      	movs	r2, #0
 8002e08:	2300      	movs	r3, #0
 8002e0a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e0e:	f7fd fe25 	bl	8000a5c <__aeabi_dcmplt>
 8002e12:	2800      	cmp	r0, #0
 8002e14:	f040 855b 	bne.w	80038ce <_vfprintf_r+0x1216>
 8002e18:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e1c:	4fac      	ldr	r7, [pc, #688]	; (80030d0 <_vfprintf_r+0xa18>)
 8002e1e:	4bad      	ldr	r3, [pc, #692]	; (80030d4 <_vfprintf_r+0xa1c>)
 8002e20:	2000      	movs	r0, #0
 8002e22:	2103      	movs	r1, #3
 8002e24:	9104      	str	r1, [sp, #16]
 8002e26:	900a      	str	r0, [sp, #40]	; 0x28
 8002e28:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002e2c:	2e47      	cmp	r6, #71	; 0x47
 8002e2e:	bfd8      	it	le
 8002e30:	461f      	movle	r7, r3
 8002e32:	9109      	str	r1, [sp, #36]	; 0x24
 8002e34:	4681      	mov	r9, r0
 8002e36:	900f      	str	r0, [sp, #60]	; 0x3c
 8002e38:	9014      	str	r0, [sp, #80]	; 0x50
 8002e3a:	9011      	str	r0, [sp, #68]	; 0x44
 8002e3c:	e5c9      	b.n	80029d2 <_vfprintf_r+0x31a>
 8002e3e:	9808      	ldr	r0, [sp, #32]
 8002e40:	2300      	movs	r3, #0
 8002e42:	6801      	ldr	r1, [r0, #0]
 8002e44:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e48:	461a      	mov	r2, r3
 8002e4a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002e4e:	2301      	movs	r3, #1
 8002e50:	1d01      	adds	r1, r0, #4
 8002e52:	9304      	str	r3, [sp, #16]
 8002e54:	920a      	str	r2, [sp, #40]	; 0x28
 8002e56:	4691      	mov	r9, r2
 8002e58:	920f      	str	r2, [sp, #60]	; 0x3c
 8002e5a:	9214      	str	r2, [sp, #80]	; 0x50
 8002e5c:	9211      	str	r2, [sp, #68]	; 0x44
 8002e5e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002e62:	af3d      	add	r7, sp, #244	; 0xf4
 8002e64:	e5b9      	b.n	80029da <_vfprintf_r+0x322>
 8002e66:	9b08      	ldr	r3, [sp, #32]
 8002e68:	681f      	ldr	r7, [r3, #0]
 8002e6a:	2500      	movs	r5, #0
 8002e6c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e70:	1d1c      	adds	r4, r3, #4
 8002e72:	2f00      	cmp	r7, #0
 8002e74:	f000 8639 	beq.w	8003aea <_vfprintf_r+0x1432>
 8002e78:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e7c:	f000 8711 	beq.w	8003ca2 <_vfprintf_r+0x15ea>
 8002e80:	464a      	mov	r2, r9
 8002e82:	4629      	mov	r1, r5
 8002e84:	4638      	mov	r0, r7
 8002e86:	f7fe f8cb 	bl	8001020 <memchr>
 8002e8a:	900a      	str	r0, [sp, #40]	; 0x28
 8002e8c:	2800      	cmp	r0, #0
 8002e8e:	f000 85e7 	beq.w	8003a60 <_vfprintf_r+0x13a8>
 8002e92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002e94:	1bdb      	subs	r3, r3, r7
 8002e96:	9309      	str	r3, [sp, #36]	; 0x24
 8002e98:	46a9      	mov	r9, r5
 8002e9a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002e9e:	9408      	str	r4, [sp, #32]
 8002ea0:	9304      	str	r3, [sp, #16]
 8002ea2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002ea6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002eaa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002eae:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002eb2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002eb6:	e58c      	b.n	80029d2 <_vfprintf_r+0x31a>
 8002eb8:	f048 0310 	orr.w	r3, r8, #16
 8002ebc:	069a      	lsls	r2, r3, #26
 8002ebe:	f53f aeb2 	bmi.w	8002c26 <_vfprintf_r+0x56e>
 8002ec2:	9a08      	ldr	r2, [sp, #32]
 8002ec4:	06df      	lsls	r7, r3, #27
 8002ec6:	f102 0104 	add.w	r1, r2, #4
 8002eca:	f100 837e 	bmi.w	80035ca <_vfprintf_r+0xf12>
 8002ece:	065d      	lsls	r5, r3, #25
 8002ed0:	9a08      	ldr	r2, [sp, #32]
 8002ed2:	f100 84e4 	bmi.w	800389e <_vfprintf_r+0x11e6>
 8002ed6:	059c      	lsls	r4, r3, #22
 8002ed8:	f140 8377 	bpl.w	80035ca <_vfprintf_r+0xf12>
 8002edc:	7814      	ldrb	r4, [r2, #0]
 8002ede:	9108      	str	r1, [sp, #32]
 8002ee0:	2500      	movs	r5, #0
 8002ee2:	2201      	movs	r2, #1
 8002ee4:	e6a9      	b.n	8002c3a <_vfprintf_r+0x582>
 8002ee6:	4b7c      	ldr	r3, [pc, #496]	; (80030d8 <_vfprintf_r+0xa20>)
 8002ee8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002eea:	f018 0f20 	tst.w	r8, #32
 8002eee:	f47f aeec 	bne.w	8002cca <_vfprintf_r+0x612>
 8002ef2:	9a08      	ldr	r2, [sp, #32]
 8002ef4:	f018 0f10 	tst.w	r8, #16
 8002ef8:	f102 0304 	add.w	r3, r2, #4
 8002efc:	f040 8354 	bne.w	80035a8 <_vfprintf_r+0xef0>
 8002f00:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f04:	9a08      	ldr	r2, [sp, #32]
 8002f06:	f040 84d0 	bne.w	80038aa <_vfprintf_r+0x11f2>
 8002f0a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f0e:	f000 834b 	beq.w	80035a8 <_vfprintf_r+0xef0>
 8002f12:	7814      	ldrb	r4, [r2, #0]
 8002f14:	9308      	str	r3, [sp, #32]
 8002f16:	2500      	movs	r5, #0
 8002f18:	e6e0      	b.n	8002cdc <_vfprintf_r+0x624>
 8002f1a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002f1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f22:	2b00      	cmp	r3, #0
 8002f24:	f47f ac46 	bne.w	80027b4 <_vfprintf_r+0xfc>
 8002f28:	2320      	movs	r3, #32
 8002f2a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f2e:	e441      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002f30:	f89a 6000 	ldrb.w	r6, [sl]
 8002f34:	2e6c      	cmp	r6, #108	; 0x6c
 8002f36:	bf03      	ittte	eq
 8002f38:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f3c:	f048 0820 	orreq.w	r8, r8, #32
 8002f40:	f10a 0a01 	addeq.w	sl, sl, #1
 8002f44:	f048 0810 	orrne.w	r8, r8, #16
 8002f48:	e434      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002f4a:	9a08      	ldr	r2, [sp, #32]
 8002f4c:	f018 0f20 	tst.w	r8, #32
 8002f50:	f852 3b04 	ldr.w	r3, [r2], #4
 8002f54:	9208      	str	r2, [sp, #32]
 8002f56:	f000 83a1 	beq.w	800369c <_vfprintf_r+0xfe4>
 8002f5a:	9a05      	ldr	r2, [sp, #20]
 8002f5c:	4610      	mov	r0, r2
 8002f5e:	17d1      	asrs	r1, r2, #31
 8002f60:	e9c3 0100 	strd	r0, r1, [r3]
 8002f64:	4657      	mov	r7, sl
 8002f66:	e64d      	b.n	8002c04 <_vfprintf_r+0x54c>
 8002f68:	f89a 6000 	ldrb.w	r6, [sl]
 8002f6c:	2e68      	cmp	r6, #104	; 0x68
 8002f6e:	bf03      	ittte	eq
 8002f70:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f74:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002f78:	f10a 0a01 	addeq.w	sl, sl, #1
 8002f7c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002f80:	e418      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002f82:	9908      	ldr	r1, [sp, #32]
 8002f84:	4b55      	ldr	r3, [pc, #340]	; (80030dc <_vfprintf_r+0xa24>)
 8002f86:	680c      	ldr	r4, [r1, #0]
 8002f88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f8a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002f8e:	3104      	adds	r1, #4
 8002f90:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002f94:	f048 0302 	orr.w	r3, r8, #2
 8002f98:	9108      	str	r1, [sp, #32]
 8002f9a:	2500      	movs	r5, #0
 8002f9c:	2202      	movs	r2, #2
 8002f9e:	2678      	movs	r6, #120	; 0x78
 8002fa0:	e64b      	b.n	8002c3a <_vfprintf_r+0x582>
 8002fa2:	f048 0808 	orr.w	r8, r8, #8
 8002fa6:	f89a 6000 	ldrb.w	r6, [sl]
 8002faa:	e403      	b.n	80027b4 <_vfprintf_r+0xfc>
 8002fac:	f048 0310 	orr.w	r3, r8, #16
 8002fb0:	069f      	lsls	r7, r3, #26
 8002fb2:	f53f acd1 	bmi.w	8002958 <_vfprintf_r+0x2a0>
 8002fb6:	9908      	ldr	r1, [sp, #32]
 8002fb8:	06dd      	lsls	r5, r3, #27
 8002fba:	f101 0204 	add.w	r2, r1, #4
 8002fbe:	f100 82fd 	bmi.w	80035bc <_vfprintf_r+0xf04>
 8002fc2:	065c      	lsls	r4, r3, #25
 8002fc4:	9908      	ldr	r1, [sp, #32]
 8002fc6:	f100 8475 	bmi.w	80038b4 <_vfprintf_r+0x11fc>
 8002fca:	0598      	lsls	r0, r3, #22
 8002fcc:	f140 82f6 	bpl.w	80035bc <_vfprintf_r+0xf04>
 8002fd0:	f991 4000 	ldrsb.w	r4, [r1]
 8002fd4:	9208      	str	r2, [sp, #32]
 8002fd6:	17e5      	asrs	r5, r4, #31
 8002fd8:	4620      	mov	r0, r4
 8002fda:	4629      	mov	r1, r5
 8002fdc:	e4c7      	b.n	800296e <_vfprintf_r+0x2b6>
 8002fde:	9a08      	ldr	r2, [sp, #32]
 8002fe0:	f018 0f10 	tst.w	r8, #16
 8002fe4:	f102 0304 	add.w	r3, r2, #4
 8002fe8:	f040 82e3 	bne.w	80035b2 <_vfprintf_r+0xefa>
 8002fec:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002ff0:	9a08      	ldr	r2, [sp, #32]
 8002ff2:	f040 8467 	bne.w	80038c4 <_vfprintf_r+0x120c>
 8002ff6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002ffa:	f000 82da 	beq.w	80035b2 <_vfprintf_r+0xefa>
 8002ffe:	7814      	ldrb	r4, [r2, #0]
 8003000:	9308      	str	r3, [sp, #32]
 8003002:	2500      	movs	r5, #0
 8003004:	e488      	b.n	8002918 <_vfprintf_r+0x260>
 8003006:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800300a:	f002 fd45 	bl	8005a98 <__retarget_lock_release_recursive>
 800300e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003012:	9305      	str	r3, [sp, #20]
 8003014:	e443      	b.n	800289e <_vfprintf_r+0x1e6>
 8003016:	2e00      	cmp	r6, #0
 8003018:	f43f adf8 	beq.w	8002c0c <_vfprintf_r+0x554>
 800301c:	2300      	movs	r3, #0
 800301e:	2101      	movs	r1, #1
 8003020:	461a      	mov	r2, r3
 8003022:	9104      	str	r1, [sp, #16]
 8003024:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003028:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800302c:	930a      	str	r3, [sp, #40]	; 0x28
 800302e:	4699      	mov	r9, r3
 8003030:	930f      	str	r3, [sp, #60]	; 0x3c
 8003032:	9314      	str	r3, [sp, #80]	; 0x50
 8003034:	9311      	str	r3, [sp, #68]	; 0x44
 8003036:	9109      	str	r1, [sp, #36]	; 0x24
 8003038:	af3d      	add	r7, sp, #244	; 0xf4
 800303a:	e4ce      	b.n	80029da <_vfprintf_r+0x322>
 800303c:	2e65      	cmp	r6, #101	; 0x65
 800303e:	f340 80ca 	ble.w	80031d6 <_vfprintf_r+0xb1e>
 8003042:	2200      	movs	r2, #0
 8003044:	2300      	movs	r3, #0
 8003046:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800304a:	f7fd fcfd 	bl	8000a48 <__aeabi_dcmpeq>
 800304e:	2800      	cmp	r0, #0
 8003050:	f000 8169 	beq.w	8003326 <_vfprintf_r+0xc6e>
 8003054:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003056:	4a22      	ldr	r2, [pc, #136]	; (80030e0 <_vfprintf_r+0xa28>)
 8003058:	f8cb 2000 	str.w	r2, [fp]
 800305c:	3301      	adds	r3, #1
 800305e:	3401      	adds	r4, #1
 8003060:	2201      	movs	r2, #1
 8003062:	2b07      	cmp	r3, #7
 8003064:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003068:	f8cb 2004 	str.w	r2, [fp, #4]
 800306c:	f300 8406 	bgt.w	800387c <_vfprintf_r+0x11c4>
 8003070:	f10b 0b08 	add.w	fp, fp, #8
 8003074:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003076:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003078:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800307a:	4293      	cmp	r3, r2
 800307c:	db03      	blt.n	8003086 <_vfprintf_r+0x9ce>
 800307e:	f018 0f01 	tst.w	r8, #1
 8003082:	f43f ad6a 	beq.w	8002b5a <_vfprintf_r+0x4a2>
 8003086:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003088:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800308a:	f8cb 2000 	str.w	r2, [fp]
 800308e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003090:	f8cb 2004 	str.w	r2, [fp, #4]
 8003094:	3301      	adds	r3, #1
 8003096:	4414      	add	r4, r2
 8003098:	2b07      	cmp	r3, #7
 800309a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800309e:	f300 8517 	bgt.w	8003ad0 <_vfprintf_r+0x1418>
 80030a2:	f10b 0b08 	add.w	fp, fp, #8
 80030a6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80030a8:	1e5d      	subs	r5, r3, #1
 80030aa:	2d00      	cmp	r5, #0
 80030ac:	f77f ad55 	ble.w	8002b5a <_vfprintf_r+0x4a2>
 80030b0:	2d10      	cmp	r5, #16
 80030b2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030b4:	4b0b      	ldr	r3, [pc, #44]	; (80030e4 <_vfprintf_r+0xa2c>)
 80030b6:	f340 82e7 	ble.w	8003688 <_vfprintf_r+0xfd0>
 80030ba:	4619      	mov	r1, r3
 80030bc:	2610      	movs	r6, #16
 80030be:	4623      	mov	r3, r4
 80030c0:	9f03      	ldr	r7, [sp, #12]
 80030c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030c6:	460c      	mov	r4, r1
 80030c8:	e014      	b.n	80030f4 <_vfprintf_r+0xa3c>
 80030ca:	bf00      	nop
 80030cc:	7fefffff 	.word	0x7fefffff
 80030d0:	080073b8 	.word	0x080073b8
 80030d4:	080073b4 	.word	0x080073b4
 80030d8:	080073d8 	.word	0x080073d8
 80030dc:	080073c4 	.word	0x080073c4
 80030e0:	080073f4 	.word	0x080073f4
 80030e4:	08007408 	.word	0x08007408
 80030e8:	f10b 0b08 	add.w	fp, fp, #8
 80030ec:	3d10      	subs	r5, #16
 80030ee:	2d10      	cmp	r5, #16
 80030f0:	f340 82c7 	ble.w	8003682 <_vfprintf_r+0xfca>
 80030f4:	3201      	adds	r2, #1
 80030f6:	3310      	adds	r3, #16
 80030f8:	2a07      	cmp	r2, #7
 80030fa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80030fe:	e9cb 4600 	strd	r4, r6, [fp]
 8003102:	ddf1      	ble.n	80030e8 <_vfprintf_r+0xa30>
 8003104:	aa2a      	add	r2, sp, #168	; 0xa8
 8003106:	4649      	mov	r1, r9
 8003108:	4638      	mov	r0, r7
 800310a:	f003 fe03 	bl	8006d14 <__sprint_r>
 800310e:	2800      	cmp	r0, #0
 8003110:	d14c      	bne.n	80031ac <_vfprintf_r+0xaf4>
 8003112:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003116:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800311a:	e7e7      	b.n	80030ec <_vfprintf_r+0xa34>
 800311c:	9b06      	ldr	r3, [sp, #24]
 800311e:	9a04      	ldr	r2, [sp, #16]
 8003120:	1a9d      	subs	r5, r3, r2
 8003122:	2d00      	cmp	r5, #0
 8003124:	f77f acc9 	ble.w	8002aba <_vfprintf_r+0x402>
 8003128:	2d10      	cmp	r5, #16
 800312a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800312c:	4bbc      	ldr	r3, [pc, #752]	; (8003420 <_vfprintf_r+0xd68>)
 800312e:	dd27      	ble.n	8003180 <_vfprintf_r+0xac8>
 8003130:	4659      	mov	r1, fp
 8003132:	4620      	mov	r0, r4
 8003134:	46bb      	mov	fp, r7
 8003136:	461c      	mov	r4, r3
 8003138:	4637      	mov	r7, r6
 800313a:	9e07      	ldr	r6, [sp, #28]
 800313c:	e004      	b.n	8003148 <_vfprintf_r+0xa90>
 800313e:	3d10      	subs	r5, #16
 8003140:	2d10      	cmp	r5, #16
 8003142:	f101 0108 	add.w	r1, r1, #8
 8003146:	dd16      	ble.n	8003176 <_vfprintf_r+0xabe>
 8003148:	3201      	adds	r2, #1
 800314a:	3010      	adds	r0, #16
 800314c:	2310      	movs	r3, #16
 800314e:	2a07      	cmp	r2, #7
 8003150:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003154:	600c      	str	r4, [r1, #0]
 8003156:	604b      	str	r3, [r1, #4]
 8003158:	ddf1      	ble.n	800313e <_vfprintf_r+0xa86>
 800315a:	aa2a      	add	r2, sp, #168	; 0xa8
 800315c:	4631      	mov	r1, r6
 800315e:	9803      	ldr	r0, [sp, #12]
 8003160:	f003 fdd8 	bl	8006d14 <__sprint_r>
 8003164:	2800      	cmp	r0, #0
 8003166:	f040 80a8 	bne.w	80032ba <_vfprintf_r+0xc02>
 800316a:	3d10      	subs	r5, #16
 800316c:	2d10      	cmp	r5, #16
 800316e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003172:	a92d      	add	r1, sp, #180	; 0xb4
 8003174:	dce8      	bgt.n	8003148 <_vfprintf_r+0xa90>
 8003176:	463e      	mov	r6, r7
 8003178:	4623      	mov	r3, r4
 800317a:	465f      	mov	r7, fp
 800317c:	4604      	mov	r4, r0
 800317e:	468b      	mov	fp, r1
 8003180:	3201      	adds	r2, #1
 8003182:	442c      	add	r4, r5
 8003184:	2a07      	cmp	r2, #7
 8003186:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800318a:	e9cb 3500 	strd	r3, r5, [fp]
 800318e:	f300 8292 	bgt.w	80036b6 <_vfprintf_r+0xffe>
 8003192:	f10b 0b08 	add.w	fp, fp, #8
 8003196:	e490      	b.n	8002aba <_vfprintf_r+0x402>
 8003198:	aa2a      	add	r2, sp, #168	; 0xa8
 800319a:	9907      	ldr	r1, [sp, #28]
 800319c:	9803      	ldr	r0, [sp, #12]
 800319e:	f003 fdb9 	bl	8006d14 <__sprint_r>
 80031a2:	2800      	cmp	r0, #0
 80031a4:	f43f ad23 	beq.w	8002bee <_vfprintf_r+0x536>
 80031a8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80031ac:	990a      	ldr	r1, [sp, #40]	; 0x28
 80031ae:	b111      	cbz	r1, 80031b6 <_vfprintf_r+0xafe>
 80031b0:	9803      	ldr	r0, [sp, #12]
 80031b2:	f002 f9c1 	bl	8005538 <_free_r>
 80031b6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80031ba:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80031be:	07d0      	lsls	r0, r2, #31
 80031c0:	d402      	bmi.n	80031c8 <_vfprintf_r+0xb10>
 80031c2:	0599      	lsls	r1, r3, #22
 80031c4:	f140 81d0 	bpl.w	8003568 <_vfprintf_r+0xeb0>
 80031c8:	065a      	lsls	r2, r3, #25
 80031ca:	f53f ab65 	bmi.w	8002898 <_vfprintf_r+0x1e0>
 80031ce:	9805      	ldr	r0, [sp, #20]
 80031d0:	b057      	add	sp, #348	; 0x15c
 80031d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80031d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031d8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031da:	2a01      	cmp	r2, #1
 80031dc:	f104 0401 	add.w	r4, r4, #1
 80031e0:	f103 0501 	add.w	r5, r3, #1
 80031e4:	f10b 0608 	add.w	r6, fp, #8
 80031e8:	f340 811c 	ble.w	8003424 <_vfprintf_r+0xd6c>
 80031ec:	2301      	movs	r3, #1
 80031ee:	2d07      	cmp	r5, #7
 80031f0:	f8cb 7000 	str.w	r7, [fp]
 80031f4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031f8:	f8cb 3004 	str.w	r3, [fp, #4]
 80031fc:	f300 81bb 	bgt.w	8003576 <_vfprintf_r+0xebe>
 8003200:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003202:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003204:	1c69      	adds	r1, r5, #1
 8003206:	441c      	add	r4, r3
 8003208:	2907      	cmp	r1, #7
 800320a:	910b      	str	r1, [sp, #44]	; 0x2c
 800320c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003210:	e9c6 2300 	strd	r2, r3, [r6]
 8003214:	f300 81bb 	bgt.w	800358e <_vfprintf_r+0xed6>
 8003218:	3608      	adds	r6, #8
 800321a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800321c:	1c53      	adds	r3, r2, #1
 800321e:	461d      	mov	r5, r3
 8003220:	9509      	str	r5, [sp, #36]	; 0x24
 8003222:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003224:	930e      	str	r3, [sp, #56]	; 0x38
 8003226:	2200      	movs	r2, #0
 8003228:	2300      	movs	r3, #0
 800322a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800322e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003232:	f106 0b08 	add.w	fp, r6, #8
 8003236:	f7fd fc07 	bl	8000a48 <__aeabi_dcmpeq>
 800323a:	2800      	cmp	r0, #0
 800323c:	f040 80c2 	bne.w	80033c4 <_vfprintf_r+0xd0c>
 8003240:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003242:	f8c6 9004 	str.w	r9, [r6, #4]
 8003246:	3701      	adds	r7, #1
 8003248:	444c      	add	r4, r9
 800324a:	2d07      	cmp	r5, #7
 800324c:	6037      	str	r7, [r6, #0]
 800324e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003250:	952b      	str	r5, [sp, #172]	; 0xac
 8003252:	f300 80f9 	bgt.w	8003448 <_vfprintf_r+0xd90>
 8003256:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003258:	f106 0310 	add.w	r3, r6, #16
 800325c:	3202      	adds	r2, #2
 800325e:	465e      	mov	r6, fp
 8003260:	9209      	str	r2, [sp, #36]	; 0x24
 8003262:	469b      	mov	fp, r3
 8003264:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003266:	6072      	str	r2, [r6, #4]
 8003268:	4414      	add	r4, r2
 800326a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800326c:	942c      	str	r4, [sp, #176]	; 0xb0
 800326e:	ab26      	add	r3, sp, #152	; 0x98
 8003270:	2a07      	cmp	r2, #7
 8003272:	922b      	str	r2, [sp, #172]	; 0xac
 8003274:	6033      	str	r3, [r6, #0]
 8003276:	f77f ac70 	ble.w	8002b5a <_vfprintf_r+0x4a2>
 800327a:	aa2a      	add	r2, sp, #168	; 0xa8
 800327c:	9907      	ldr	r1, [sp, #28]
 800327e:	9803      	ldr	r0, [sp, #12]
 8003280:	f003 fd48 	bl	8006d14 <__sprint_r>
 8003284:	2800      	cmp	r0, #0
 8003286:	d18f      	bne.n	80031a8 <_vfprintf_r+0xaf0>
 8003288:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800328a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800328e:	e464      	b.n	8002b5a <_vfprintf_r+0x4a2>
 8003290:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003292:	af56      	add	r7, sp, #344	; 0x158
 8003294:	0923      	lsrs	r3, r4, #4
 8003296:	f004 010f 	and.w	r1, r4, #15
 800329a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800329e:	092a      	lsrs	r2, r5, #4
 80032a0:	461c      	mov	r4, r3
 80032a2:	4615      	mov	r5, r2
 80032a4:	5c43      	ldrb	r3, [r0, r1]
 80032a6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80032aa:	ea54 0305 	orrs.w	r3, r4, r5
 80032ae:	d1f1      	bne.n	8003294 <_vfprintf_r+0xbdc>
 80032b0:	9b04      	ldr	r3, [sp, #16]
 80032b2:	1bdb      	subs	r3, r3, r7
 80032b4:	9309      	str	r3, [sp, #36]	; 0x24
 80032b6:	f7ff bb80 	b.w	80029ba <_vfprintf_r+0x302>
 80032ba:	46b1      	mov	r9, r6
 80032bc:	e776      	b.n	80031ac <_vfprintf_r+0xaf4>
 80032be:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c0:	9907      	ldr	r1, [sp, #28]
 80032c2:	9803      	ldr	r0, [sp, #12]
 80032c4:	f003 fd26 	bl	8006d14 <__sprint_r>
 80032c8:	2800      	cmp	r0, #0
 80032ca:	f47f af6d 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 80032ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032d4:	f7ff bbdd 	b.w	8002a92 <_vfprintf_r+0x3da>
 80032d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80032da:	9907      	ldr	r1, [sp, #28]
 80032dc:	9803      	ldr	r0, [sp, #12]
 80032de:	f003 fd19 	bl	8006d14 <__sprint_r>
 80032e2:	2800      	cmp	r0, #0
 80032e4:	f47f af60 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 80032e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ee:	f7ff bbe0 	b.w	8002ab2 <_vfprintf_r+0x3fa>
 80032f2:	4698      	mov	r8, r3
 80032f4:	2d00      	cmp	r5, #0
 80032f6:	bf08      	it	eq
 80032f8:	2c0a      	cmpeq	r4, #10
 80032fa:	f080 8170 	bcs.w	80035de <_vfprintf_r+0xf26>
 80032fe:	af56      	add	r7, sp, #344	; 0x158
 8003300:	3430      	adds	r4, #48	; 0x30
 8003302:	2301      	movs	r3, #1
 8003304:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003308:	9309      	str	r3, [sp, #36]	; 0x24
 800330a:	f7ff bb56 	b.w	80029ba <_vfprintf_r+0x302>
 800330e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003310:	9907      	ldr	r1, [sp, #28]
 8003312:	9803      	ldr	r0, [sp, #12]
 8003314:	f003 fcfe 	bl	8006d14 <__sprint_r>
 8003318:	2800      	cmp	r0, #0
 800331a:	f47f af45 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 800331e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003320:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003324:	e406      	b.n	8002b34 <_vfprintf_r+0x47c>
 8003326:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003328:	2b00      	cmp	r3, #0
 800332a:	f340 8273 	ble.w	8003814 <_vfprintf_r+0x115c>
 800332e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003332:	4293      	cmp	r3, r2
 8003334:	bfa8      	it	ge
 8003336:	4613      	movge	r3, r2
 8003338:	2b00      	cmp	r3, #0
 800333a:	461d      	mov	r5, r3
 800333c:	dd0d      	ble.n	800335a <_vfprintf_r+0xca2>
 800333e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003340:	f8cb 7000 	str.w	r7, [fp]
 8003344:	3301      	adds	r3, #1
 8003346:	442c      	add	r4, r5
 8003348:	2b07      	cmp	r3, #7
 800334a:	942c      	str	r4, [sp, #176]	; 0xb0
 800334c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003350:	932b      	str	r3, [sp, #172]	; 0xac
 8003352:	f300 82c1 	bgt.w	80038d8 <_vfprintf_r+0x1220>
 8003356:	f10b 0b08 	add.w	fp, fp, #8
 800335a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800335c:	2d00      	cmp	r5, #0
 800335e:	bfa8      	it	ge
 8003360:	1b5b      	subge	r3, r3, r5
 8003362:	2b00      	cmp	r3, #0
 8003364:	461d      	mov	r5, r3
 8003366:	f340 8099 	ble.w	800349c <_vfprintf_r+0xde4>
 800336a:	2d10      	cmp	r5, #16
 800336c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800336e:	4b2c      	ldr	r3, [pc, #176]	; (8003420 <_vfprintf_r+0xd68>)
 8003370:	f340 83db 	ble.w	8003b2a <_vfprintf_r+0x1472>
 8003374:	4618      	mov	r0, r3
 8003376:	4621      	mov	r1, r4
 8003378:	465b      	mov	r3, fp
 800337a:	2610      	movs	r6, #16
 800337c:	46bb      	mov	fp, r7
 800337e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003382:	9c07      	ldr	r4, [sp, #28]
 8003384:	4607      	mov	r7, r0
 8003386:	e004      	b.n	8003392 <_vfprintf_r+0xcda>
 8003388:	3308      	adds	r3, #8
 800338a:	3d10      	subs	r5, #16
 800338c:	2d10      	cmp	r5, #16
 800338e:	f340 83c7 	ble.w	8003b20 <_vfprintf_r+0x1468>
 8003392:	3201      	adds	r2, #1
 8003394:	3110      	adds	r1, #16
 8003396:	2a07      	cmp	r2, #7
 8003398:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800339c:	e9c3 7600 	strd	r7, r6, [r3]
 80033a0:	ddf2      	ble.n	8003388 <_vfprintf_r+0xcd0>
 80033a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80033a4:	4621      	mov	r1, r4
 80033a6:	4648      	mov	r0, r9
 80033a8:	f003 fcb4 	bl	8006d14 <__sprint_r>
 80033ac:	2800      	cmp	r0, #0
 80033ae:	f040 84a5 	bne.w	8003cfc <_vfprintf_r+0x1644>
 80033b2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80033b6:	ab2d      	add	r3, sp, #180	; 0xb4
 80033b8:	e7e7      	b.n	800338a <_vfprintf_r+0xcd2>
 80033ba:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80033be:	af56      	add	r7, sp, #344	; 0x158
 80033c0:	f7ff bafb 	b.w	80029ba <_vfprintf_r+0x302>
 80033c4:	f1b9 0f00 	cmp.w	r9, #0
 80033c8:	f77f af4c 	ble.w	8003264 <_vfprintf_r+0xbac>
 80033cc:	f1b9 0f10 	cmp.w	r9, #16
 80033d0:	4b13      	ldr	r3, [pc, #76]	; (8003420 <_vfprintf_r+0xd68>)
 80033d2:	f340 8659 	ble.w	8004088 <_vfprintf_r+0x19d0>
 80033d6:	4619      	mov	r1, r3
 80033d8:	4622      	mov	r2, r4
 80033da:	4633      	mov	r3, r6
 80033dc:	2710      	movs	r7, #16
 80033de:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80033e2:	9c07      	ldr	r4, [sp, #28]
 80033e4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80033e6:	460e      	mov	r6, r1
 80033e8:	e007      	b.n	80033fa <_vfprintf_r+0xd42>
 80033ea:	3308      	adds	r3, #8
 80033ec:	f1a9 0910 	sub.w	r9, r9, #16
 80033f0:	f1b9 0f10 	cmp.w	r9, #16
 80033f4:	f340 8353 	ble.w	8003a9e <_vfprintf_r+0x13e6>
 80033f8:	3501      	adds	r5, #1
 80033fa:	3210      	adds	r2, #16
 80033fc:	2d07      	cmp	r5, #7
 80033fe:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003402:	e9c3 6700 	strd	r6, r7, [r3]
 8003406:	ddf0      	ble.n	80033ea <_vfprintf_r+0xd32>
 8003408:	aa2a      	add	r2, sp, #168	; 0xa8
 800340a:	4621      	mov	r1, r4
 800340c:	4658      	mov	r0, fp
 800340e:	f003 fc81 	bl	8006d14 <__sprint_r>
 8003412:	2800      	cmp	r0, #0
 8003414:	f040 8472 	bne.w	8003cfc <_vfprintf_r+0x1644>
 8003418:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800341c:	ab2d      	add	r3, sp, #180	; 0xb4
 800341e:	e7e5      	b.n	80033ec <_vfprintf_r+0xd34>
 8003420:	08007408 	.word	0x08007408
 8003424:	f018 0f01 	tst.w	r8, #1
 8003428:	f47f aee0 	bne.w	80031ec <_vfprintf_r+0xb34>
 800342c:	2201      	movs	r2, #1
 800342e:	2d07      	cmp	r5, #7
 8003430:	f8cb 7000 	str.w	r7, [fp]
 8003434:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003438:	f8cb 2004 	str.w	r2, [fp, #4]
 800343c:	dc04      	bgt.n	8003448 <_vfprintf_r+0xd90>
 800343e:	3302      	adds	r3, #2
 8003440:	9309      	str	r3, [sp, #36]	; 0x24
 8003442:	f10b 0b10 	add.w	fp, fp, #16
 8003446:	e70d      	b.n	8003264 <_vfprintf_r+0xbac>
 8003448:	aa2a      	add	r2, sp, #168	; 0xa8
 800344a:	9907      	ldr	r1, [sp, #28]
 800344c:	9803      	ldr	r0, [sp, #12]
 800344e:	f003 fc61 	bl	8006d14 <__sprint_r>
 8003452:	2800      	cmp	r0, #0
 8003454:	f47f aea8 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003458:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800345c:	3301      	adds	r3, #1
 800345e:	9309      	str	r3, [sp, #36]	; 0x24
 8003460:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003464:	ae2d      	add	r6, sp, #180	; 0xb4
 8003466:	e6fd      	b.n	8003264 <_vfprintf_r+0xbac>
 8003468:	aa2a      	add	r2, sp, #168	; 0xa8
 800346a:	9907      	ldr	r1, [sp, #28]
 800346c:	9803      	ldr	r0, [sp, #12]
 800346e:	f003 fc51 	bl	8006d14 <__sprint_r>
 8003472:	2800      	cmp	r0, #0
 8003474:	f47f ae98 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003478:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800347c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800347e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003482:	f7ff baf6 	b.w	8002a72 <_vfprintf_r+0x3ba>
 8003486:	aa2a      	add	r2, sp, #168	; 0xa8
 8003488:	9907      	ldr	r1, [sp, #28]
 800348a:	9803      	ldr	r0, [sp, #12]
 800348c:	f003 fc42 	bl	8006d14 <__sprint_r>
 8003490:	2800      	cmp	r0, #0
 8003492:	f47f ae89 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003496:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003498:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800349c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800349e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80034a2:	443b      	add	r3, r7
 80034a4:	4699      	mov	r9, r3
 80034a6:	f040 8357 	bne.w	8003b58 <_vfprintf_r+0x14a0>
 80034aa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034ac:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034ae:	4293      	cmp	r3, r2
 80034b0:	db49      	blt.n	8003546 <_vfprintf_r+0xe8e>
 80034b2:	f018 0f01 	tst.w	r8, #1
 80034b6:	d146      	bne.n	8003546 <_vfprintf_r+0xe8e>
 80034b8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034ba:	18bd      	adds	r5, r7, r2
 80034bc:	eba5 0509 	sub.w	r5, r5, r9
 80034c0:	1ad3      	subs	r3, r2, r3
 80034c2:	429d      	cmp	r5, r3
 80034c4:	bfa8      	it	ge
 80034c6:	461d      	movge	r5, r3
 80034c8:	2d00      	cmp	r5, #0
 80034ca:	dd0d      	ble.n	80034e8 <_vfprintf_r+0xe30>
 80034cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034ce:	f8cb 9000 	str.w	r9, [fp]
 80034d2:	3201      	adds	r2, #1
 80034d4:	442c      	add	r4, r5
 80034d6:	2a07      	cmp	r2, #7
 80034d8:	942c      	str	r4, [sp, #176]	; 0xb0
 80034da:	f8cb 5004 	str.w	r5, [fp, #4]
 80034de:	922b      	str	r2, [sp, #172]	; 0xac
 80034e0:	f300 8462 	bgt.w	8003da8 <_vfprintf_r+0x16f0>
 80034e4:	f10b 0b08 	add.w	fp, fp, #8
 80034e8:	2d00      	cmp	r5, #0
 80034ea:	bfac      	ite	ge
 80034ec:	1b5d      	subge	r5, r3, r5
 80034ee:	461d      	movlt	r5, r3
 80034f0:	2d00      	cmp	r5, #0
 80034f2:	f77f ab32 	ble.w	8002b5a <_vfprintf_r+0x4a2>
 80034f6:	2d10      	cmp	r5, #16
 80034f8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034fa:	4bc5      	ldr	r3, [pc, #788]	; (8003810 <_vfprintf_r+0x1158>)
 80034fc:	f340 80c4 	ble.w	8003688 <_vfprintf_r+0xfd0>
 8003500:	4619      	mov	r1, r3
 8003502:	2610      	movs	r6, #16
 8003504:	4623      	mov	r3, r4
 8003506:	9f03      	ldr	r7, [sp, #12]
 8003508:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800350c:	460c      	mov	r4, r1
 800350e:	e005      	b.n	800351c <_vfprintf_r+0xe64>
 8003510:	f10b 0b08 	add.w	fp, fp, #8
 8003514:	3d10      	subs	r5, #16
 8003516:	2d10      	cmp	r5, #16
 8003518:	f340 80b3 	ble.w	8003682 <_vfprintf_r+0xfca>
 800351c:	3201      	adds	r2, #1
 800351e:	3310      	adds	r3, #16
 8003520:	2a07      	cmp	r2, #7
 8003522:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003526:	e9cb 4600 	strd	r4, r6, [fp]
 800352a:	ddf1      	ble.n	8003510 <_vfprintf_r+0xe58>
 800352c:	aa2a      	add	r2, sp, #168	; 0xa8
 800352e:	4649      	mov	r1, r9
 8003530:	4638      	mov	r0, r7
 8003532:	f003 fbef 	bl	8006d14 <__sprint_r>
 8003536:	2800      	cmp	r0, #0
 8003538:	f47f ae38 	bne.w	80031ac <_vfprintf_r+0xaf4>
 800353c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003540:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003544:	e7e6      	b.n	8003514 <_vfprintf_r+0xe5c>
 8003546:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003548:	9916      	ldr	r1, [sp, #88]	; 0x58
 800354a:	f8cb 1000 	str.w	r1, [fp]
 800354e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003550:	f8cb 1004 	str.w	r1, [fp, #4]
 8003554:	3201      	adds	r2, #1
 8003556:	440c      	add	r4, r1
 8003558:	2a07      	cmp	r2, #7
 800355a:	942c      	str	r4, [sp, #176]	; 0xb0
 800355c:	922b      	str	r2, [sp, #172]	; 0xac
 800355e:	f300 828c 	bgt.w	8003a7a <_vfprintf_r+0x13c2>
 8003562:	f10b 0b08 	add.w	fp, fp, #8
 8003566:	e7a7      	b.n	80034b8 <_vfprintf_r+0xe00>
 8003568:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800356c:	f002 fa94 	bl	8005a98 <__retarget_lock_release_recursive>
 8003570:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003574:	e628      	b.n	80031c8 <_vfprintf_r+0xb10>
 8003576:	aa2a      	add	r2, sp, #168	; 0xa8
 8003578:	9907      	ldr	r1, [sp, #28]
 800357a:	9803      	ldr	r0, [sp, #12]
 800357c:	f003 fbca 	bl	8006d14 <__sprint_r>
 8003580:	2800      	cmp	r0, #0
 8003582:	f47f ae11 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003586:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800358a:	ae2d      	add	r6, sp, #180	; 0xb4
 800358c:	e638      	b.n	8003200 <_vfprintf_r+0xb48>
 800358e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003590:	9907      	ldr	r1, [sp, #28]
 8003592:	9803      	ldr	r0, [sp, #12]
 8003594:	f003 fbbe 	bl	8006d14 <__sprint_r>
 8003598:	2800      	cmp	r0, #0
 800359a:	f47f ae05 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 800359e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80035a2:	ae2d      	add	r6, sp, #180	; 0xb4
 80035a4:	930b      	str	r3, [sp, #44]	; 0x2c
 80035a6:	e638      	b.n	800321a <_vfprintf_r+0xb62>
 80035a8:	6814      	ldr	r4, [r2, #0]
 80035aa:	9308      	str	r3, [sp, #32]
 80035ac:	2500      	movs	r5, #0
 80035ae:	f7ff bb95 	b.w	8002cdc <_vfprintf_r+0x624>
 80035b2:	6814      	ldr	r4, [r2, #0]
 80035b4:	9308      	str	r3, [sp, #32]
 80035b6:	2500      	movs	r5, #0
 80035b8:	f7ff b9ae 	b.w	8002918 <_vfprintf_r+0x260>
 80035bc:	680c      	ldr	r4, [r1, #0]
 80035be:	9208      	str	r2, [sp, #32]
 80035c0:	17e5      	asrs	r5, r4, #31
 80035c2:	4620      	mov	r0, r4
 80035c4:	4629      	mov	r1, r5
 80035c6:	f7ff b9d2 	b.w	800296e <_vfprintf_r+0x2b6>
 80035ca:	6814      	ldr	r4, [r2, #0]
 80035cc:	9108      	str	r1, [sp, #32]
 80035ce:	2201      	movs	r2, #1
 80035d0:	2500      	movs	r5, #0
 80035d2:	f7ff bb32 	b.w	8002c3a <_vfprintf_r+0x582>
 80035d6:	2a01      	cmp	r2, #1
 80035d8:	f47f ab3c 	bne.w	8002c54 <_vfprintf_r+0x59c>
 80035dc:	e68f      	b.n	80032fe <_vfprintf_r+0xc46>
 80035de:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80035e2:	2200      	movs	r2, #0
 80035e4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80035e8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80035ec:	af56      	add	r7, sp, #344	; 0x158
 80035ee:	4692      	mov	sl, r2
 80035f0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80035f4:	461e      	mov	r6, r3
 80035f6:	e00a      	b.n	800360e <_vfprintf_r+0xf56>
 80035f8:	2300      	movs	r3, #0
 80035fa:	4620      	mov	r0, r4
 80035fc:	4629      	mov	r1, r5
 80035fe:	220a      	movs	r2, #10
 8003600:	f7fd fa7c 	bl	8000afc <__aeabi_uldivmod>
 8003604:	4604      	mov	r4, r0
 8003606:	460d      	mov	r5, r1
 8003608:	ea54 0305 	orrs.w	r3, r4, r5
 800360c:	d029      	beq.n	8003662 <_vfprintf_r+0xfaa>
 800360e:	220a      	movs	r2, #10
 8003610:	2300      	movs	r3, #0
 8003612:	4620      	mov	r0, r4
 8003614:	4629      	mov	r1, r5
 8003616:	f7fd fa71 	bl	8000afc <__aeabi_uldivmod>
 800361a:	3230      	adds	r2, #48	; 0x30
 800361c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003620:	f10a 0a01 	add.w	sl, sl, #1
 8003624:	3f01      	subs	r7, #1
 8003626:	2e00      	cmp	r6, #0
 8003628:	d0e6      	beq.n	80035f8 <_vfprintf_r+0xf40>
 800362a:	f898 3000 	ldrb.w	r3, [r8]
 800362e:	459a      	cmp	sl, r3
 8003630:	d1e2      	bne.n	80035f8 <_vfprintf_r+0xf40>
 8003632:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003636:	d0df      	beq.n	80035f8 <_vfprintf_r+0xf40>
 8003638:	2d00      	cmp	r5, #0
 800363a:	bf08      	it	eq
 800363c:	2c0a      	cmpeq	r4, #10
 800363e:	d3db      	bcc.n	80035f8 <_vfprintf_r+0xf40>
 8003640:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003642:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003644:	1aff      	subs	r7, r7, r3
 8003646:	461a      	mov	r2, r3
 8003648:	4638      	mov	r0, r7
 800364a:	f003 faf5 	bl	8006c38 <strncpy>
 800364e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003652:	2b00      	cmp	r3, #0
 8003654:	f000 8496 	beq.w	8003f84 <_vfprintf_r+0x18cc>
 8003658:	f108 0801 	add.w	r8, r8, #1
 800365c:	f04f 0a00 	mov.w	sl, #0
 8003660:	e7ca      	b.n	80035f8 <_vfprintf_r+0xf40>
 8003662:	9b04      	ldr	r3, [sp, #16]
 8003664:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003668:	1bdb      	subs	r3, r3, r7
 800366a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800366e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003670:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003674:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003678:	9309      	str	r3, [sp, #36]	; 0x24
 800367a:	f7ff b99e 	b.w	80029ba <_vfprintf_r+0x302>
 800367e:	46c1      	mov	r9, r8
 8003680:	e594      	b.n	80031ac <_vfprintf_r+0xaf4>
 8003682:	4621      	mov	r1, r4
 8003684:	461c      	mov	r4, r3
 8003686:	460b      	mov	r3, r1
 8003688:	3201      	adds	r2, #1
 800368a:	442c      	add	r4, r5
 800368c:	2a07      	cmp	r2, #7
 800368e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003692:	e9cb 3500 	strd	r3, r5, [fp]
 8003696:	f77f aa5e 	ble.w	8002b56 <_vfprintf_r+0x49e>
 800369a:	e5ee      	b.n	800327a <_vfprintf_r+0xbc2>
 800369c:	f018 0f10 	tst.w	r8, #16
 80036a0:	f040 80f8 	bne.w	8003894 <_vfprintf_r+0x11dc>
 80036a4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80036a8:	f000 8351 	beq.w	8003d4e <_vfprintf_r+0x1696>
 80036ac:	9a05      	ldr	r2, [sp, #20]
 80036ae:	801a      	strh	r2, [r3, #0]
 80036b0:	4657      	mov	r7, sl
 80036b2:	f7ff baa7 	b.w	8002c04 <_vfprintf_r+0x54c>
 80036b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036b8:	9907      	ldr	r1, [sp, #28]
 80036ba:	9803      	ldr	r0, [sp, #12]
 80036bc:	f003 fb2a 	bl	8006d14 <__sprint_r>
 80036c0:	2800      	cmp	r0, #0
 80036c2:	f47f ad71 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 80036c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036cc:	f7ff b9f5 	b.w	8002aba <_vfprintf_r+0x402>
 80036d0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80036d4:	4602      	mov	r2, r0
 80036d6:	460b      	mov	r3, r1
 80036d8:	f7fd fcf2 	bl	80010c0 <__aeabi_dcmpun>
 80036dc:	2800      	cmp	r0, #0
 80036de:	f040 8491 	bne.w	8004004 <_vfprintf_r+0x194c>
 80036e2:	2e61      	cmp	r6, #97	; 0x61
 80036e4:	f000 8111 	beq.w	800390a <_vfprintf_r+0x1252>
 80036e8:	2e41      	cmp	r6, #65	; 0x41
 80036ea:	f000 8377 	beq.w	8003ddc <_vfprintf_r+0x1724>
 80036ee:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80036f2:	f026 0220 	bic.w	r2, r6, #32
 80036f6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80036fa:	930e      	str	r3, [sp, #56]	; 0x38
 80036fc:	9204      	str	r2, [sp, #16]
 80036fe:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003700:	f000 842d 	beq.w	8003f5e <_vfprintf_r+0x18a6>
 8003704:	2a47      	cmp	r2, #71	; 0x47
 8003706:	f000 8424 	beq.w	8003f52 <_vfprintf_r+0x189a>
 800370a:	2b00      	cmp	r3, #0
 800370c:	f2c0 82f9 	blt.w	8003d02 <_vfprintf_r+0x164a>
 8003710:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003714:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003718:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800371c:	2e66      	cmp	r6, #102	; 0x66
 800371e:	f000 83eb 	beq.w	8003ef8 <_vfprintf_r+0x1840>
 8003722:	2e46      	cmp	r6, #70	; 0x46
 8003724:	f000 847e 	beq.w	8004024 <_vfprintf_r+0x196c>
 8003728:	9b04      	ldr	r3, [sp, #16]
 800372a:	9803      	ldr	r0, [sp, #12]
 800372c:	2b45      	cmp	r3, #69	; 0x45
 800372e:	bf0c      	ite	eq
 8003730:	f109 0501 	addeq.w	r5, r9, #1
 8003734:	464d      	movne	r5, r9
 8003736:	aa28      	add	r2, sp, #160	; 0xa0
 8003738:	ab25      	add	r3, sp, #148	; 0x94
 800373a:	e9cd 3200 	strd	r3, r2, [sp]
 800373e:	2102      	movs	r1, #2
 8003740:	ab24      	add	r3, sp, #144	; 0x90
 8003742:	462a      	mov	r2, r5
 8003744:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003748:	f000 fe3e 	bl	80043c8 <_dtoa_r>
 800374c:	2e67      	cmp	r6, #103	; 0x67
 800374e:	4607      	mov	r7, r0
 8003750:	f040 849c 	bne.w	800408c <_vfprintf_r+0x19d4>
 8003754:	f018 0f01 	tst.w	r8, #1
 8003758:	f040 83f9 	bne.w	8003f4e <_vfprintf_r+0x1896>
 800375c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800375e:	4640      	mov	r0, r8
 8003760:	1bdb      	subs	r3, r3, r7
 8003762:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003766:	9310      	str	r3, [sp, #64]	; 0x40
 8003768:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800376a:	9311      	str	r3, [sp, #68]	; 0x44
 800376c:	9b04      	ldr	r3, [sp, #16]
 800376e:	2b47      	cmp	r3, #71	; 0x47
 8003770:	f000 81e7 	beq.w	8003b42 <_vfprintf_r+0x148a>
 8003774:	9b04      	ldr	r3, [sp, #16]
 8003776:	2b46      	cmp	r3, #70	; 0x46
 8003778:	f000 8300 	beq.w	8003d7c <_vfprintf_r+0x16c4>
 800377c:	9904      	ldr	r1, [sp, #16]
 800377e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003780:	b2f2      	uxtb	r2, r6
 8003782:	2941      	cmp	r1, #65	; 0x41
 8003784:	bf08      	it	eq
 8003786:	320f      	addeq	r2, #15
 8003788:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800378c:	bf06      	itte	eq
 800378e:	b2d2      	uxtbeq	r2, r2
 8003790:	2101      	moveq	r1, #1
 8003792:	2100      	movne	r1, #0
 8003794:	2b00      	cmp	r3, #0
 8003796:	9324      	str	r3, [sp, #144]	; 0x90
 8003798:	bfb8      	it	lt
 800379a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800379c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80037a0:	bfba      	itte	lt
 80037a2:	f1c3 0301 	rsblt	r3, r3, #1
 80037a6:	222d      	movlt	r2, #45	; 0x2d
 80037a8:	222b      	movge	r2, #43	; 0x2b
 80037aa:	2b09      	cmp	r3, #9
 80037ac:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80037b0:	f300 83f9 	bgt.w	8003fa6 <_vfprintf_r+0x18ee>
 80037b4:	2900      	cmp	r1, #0
 80037b6:	f040 8487 	bne.w	80040c8 <_vfprintf_r+0x1a10>
 80037ba:	2230      	movs	r2, #48	; 0x30
 80037bc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80037c0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80037c4:	3330      	adds	r3, #48	; 0x30
 80037c6:	7013      	strb	r3, [r2, #0]
 80037c8:	1c53      	adds	r3, r2, #1
 80037ca:	aa26      	add	r2, sp, #152	; 0x98
 80037cc:	1a9b      	subs	r3, r3, r2
 80037ce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037d0:	9319      	str	r3, [sp, #100]	; 0x64
 80037d2:	2a01      	cmp	r2, #1
 80037d4:	4413      	add	r3, r2
 80037d6:	9309      	str	r3, [sp, #36]	; 0x24
 80037d8:	f340 8442 	ble.w	8004060 <_vfprintf_r+0x19a8>
 80037dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80037de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80037e0:	4413      	add	r3, r2
 80037e2:	9309      	str	r3, [sp, #36]	; 0x24
 80037e4:	2300      	movs	r3, #0
 80037e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80037e8:	9314      	str	r3, [sp, #80]	; 0x50
 80037ea:	9311      	str	r3, [sp, #68]	; 0x44
 80037ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80037ee:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80037f2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80037f6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80037fa:	9304      	str	r3, [sp, #16]
 80037fc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80037fe:	2b00      	cmp	r3, #0
 8003800:	f040 8275 	bne.w	8003cee <_vfprintf_r+0x1636>
 8003804:	4699      	mov	r9, r3
 8003806:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800380a:	f7ff b8e2 	b.w	80029d2 <_vfprintf_r+0x31a>
 800380e:	bf00      	nop
 8003810:	08007408 	.word	0x08007408
 8003814:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003816:	49bd      	ldr	r1, [pc, #756]	; (8003b0c <_vfprintf_r+0x1454>)
 8003818:	f8cb 1000 	str.w	r1, [fp]
 800381c:	3201      	adds	r2, #1
 800381e:	3401      	adds	r4, #1
 8003820:	2101      	movs	r1, #1
 8003822:	2a07      	cmp	r2, #7
 8003824:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003828:	f8cb 1004 	str.w	r1, [fp, #4]
 800382c:	dc60      	bgt.n	80038f0 <_vfprintf_r+0x1238>
 800382e:	f10b 0b08 	add.w	fp, fp, #8
 8003832:	b92b      	cbnz	r3, 8003840 <_vfprintf_r+0x1188>
 8003834:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003836:	b91a      	cbnz	r2, 8003840 <_vfprintf_r+0x1188>
 8003838:	f018 0f01 	tst.w	r8, #1
 800383c:	f43f a98d 	beq.w	8002b5a <_vfprintf_r+0x4a2>
 8003840:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003842:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003844:	f8cb 1000 	str.w	r1, [fp]
 8003848:	9915      	ldr	r1, [sp, #84]	; 0x54
 800384a:	f8cb 1004 	str.w	r1, [fp, #4]
 800384e:	3201      	adds	r2, #1
 8003850:	440c      	add	r4, r1
 8003852:	2a07      	cmp	r2, #7
 8003854:	942c      	str	r4, [sp, #176]	; 0xb0
 8003856:	922b      	str	r2, [sp, #172]	; 0xac
 8003858:	f300 8282 	bgt.w	8003d60 <_vfprintf_r+0x16a8>
 800385c:	f10b 0b08 	add.w	fp, fp, #8
 8003860:	2b00      	cmp	r3, #0
 8003862:	f2c0 82e7 	blt.w	8003e34 <_vfprintf_r+0x177c>
 8003866:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003868:	3201      	adds	r2, #1
 800386a:	441c      	add	r4, r3
 800386c:	2a07      	cmp	r2, #7
 800386e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003872:	e9cb 7300 	strd	r7, r3, [fp]
 8003876:	f77f a96e 	ble.w	8002b56 <_vfprintf_r+0x49e>
 800387a:	e4fe      	b.n	800327a <_vfprintf_r+0xbc2>
 800387c:	aa2a      	add	r2, sp, #168	; 0xa8
 800387e:	9907      	ldr	r1, [sp, #28]
 8003880:	9803      	ldr	r0, [sp, #12]
 8003882:	f003 fa47 	bl	8006d14 <__sprint_r>
 8003886:	2800      	cmp	r0, #0
 8003888:	f47f ac8e 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 800388c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003890:	f7ff bbf0 	b.w	8003074 <_vfprintf_r+0x9bc>
 8003894:	9a05      	ldr	r2, [sp, #20]
 8003896:	601a      	str	r2, [r3, #0]
 8003898:	4657      	mov	r7, sl
 800389a:	f7ff b9b3 	b.w	8002c04 <_vfprintf_r+0x54c>
 800389e:	8814      	ldrh	r4, [r2, #0]
 80038a0:	9108      	str	r1, [sp, #32]
 80038a2:	2500      	movs	r5, #0
 80038a4:	2201      	movs	r2, #1
 80038a6:	f7ff b9c8 	b.w	8002c3a <_vfprintf_r+0x582>
 80038aa:	8814      	ldrh	r4, [r2, #0]
 80038ac:	9308      	str	r3, [sp, #32]
 80038ae:	2500      	movs	r5, #0
 80038b0:	f7ff ba14 	b.w	8002cdc <_vfprintf_r+0x624>
 80038b4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80038b8:	9208      	str	r2, [sp, #32]
 80038ba:	17e5      	asrs	r5, r4, #31
 80038bc:	4620      	mov	r0, r4
 80038be:	4629      	mov	r1, r5
 80038c0:	f7ff b855 	b.w	800296e <_vfprintf_r+0x2b6>
 80038c4:	8814      	ldrh	r4, [r2, #0]
 80038c6:	9308      	str	r3, [sp, #32]
 80038c8:	2500      	movs	r5, #0
 80038ca:	f7ff b825 	b.w	8002918 <_vfprintf_r+0x260>
 80038ce:	222d      	movs	r2, #45	; 0x2d
 80038d0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80038d4:	f7ff baa2 	b.w	8002e1c <_vfprintf_r+0x764>
 80038d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038da:	9907      	ldr	r1, [sp, #28]
 80038dc:	9803      	ldr	r0, [sp, #12]
 80038de:	f003 fa19 	bl	8006d14 <__sprint_r>
 80038e2:	2800      	cmp	r0, #0
 80038e4:	f47f ac60 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 80038e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038ee:	e534      	b.n	800335a <_vfprintf_r+0xca2>
 80038f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80038f2:	9907      	ldr	r1, [sp, #28]
 80038f4:	9803      	ldr	r0, [sp, #12]
 80038f6:	f003 fa0d 	bl	8006d14 <__sprint_r>
 80038fa:	2800      	cmp	r0, #0
 80038fc:	f47f ac54 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003900:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003902:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003904:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003908:	e793      	b.n	8003832 <_vfprintf_r+0x117a>
 800390a:	2330      	movs	r3, #48	; 0x30
 800390c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003910:	2378      	movs	r3, #120	; 0x78
 8003912:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003916:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800391a:	f048 0402 	orr.w	r4, r8, #2
 800391e:	f300 82b0 	bgt.w	8003e82 <_vfprintf_r+0x17ca>
 8003922:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003926:	930e      	str	r3, [sp, #56]	; 0x38
 8003928:	f026 0320 	bic.w	r3, r6, #32
 800392c:	9304      	str	r3, [sp, #16]
 800392e:	2200      	movs	r2, #0
 8003930:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003932:	920a      	str	r2, [sp, #40]	; 0x28
 8003934:	46a0      	mov	r8, r4
 8003936:	af3d      	add	r7, sp, #244	; 0xf4
 8003938:	2b00      	cmp	r3, #0
 800393a:	f2c0 81e3 	blt.w	8003d04 <_vfprintf_r+0x164c>
 800393e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003942:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003946:	2300      	movs	r3, #0
 8003948:	930b      	str	r3, [sp, #44]	; 0x2c
 800394a:	2e61      	cmp	r6, #97	; 0x61
 800394c:	f000 8255 	beq.w	8003dfa <_vfprintf_r+0x1742>
 8003950:	2e41      	cmp	r6, #65	; 0x41
 8003952:	f47f aee3 	bne.w	800371c <_vfprintf_r+0x1064>
 8003956:	a824      	add	r0, sp, #144	; 0x90
 8003958:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800395c:	f003 f8e2 	bl	8006b24 <frexp>
 8003960:	2200      	movs	r2, #0
 8003962:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003966:	ec51 0b10 	vmov	r0, r1, d0
 800396a:	f7fc fe05 	bl	8000578 <__aeabi_dmul>
 800396e:	2200      	movs	r2, #0
 8003970:	2300      	movs	r3, #0
 8003972:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003976:	f7fd f867 	bl	8000a48 <__aeabi_dcmpeq>
 800397a:	2800      	cmp	r0, #0
 800397c:	f040 8305 	bne.w	8003f8a <_vfprintf_r+0x18d2>
 8003980:	4b63      	ldr	r3, [pc, #396]	; (8003b10 <_vfprintf_r+0x1458>)
 8003982:	9309      	str	r3, [sp, #36]	; 0x24
 8003984:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003988:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800398c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003990:	9721      	str	r7, [sp, #132]	; 0x84
 8003992:	46b9      	mov	r9, r7
 8003994:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003998:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800399c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80039a0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80039a4:	e003      	b.n	80039ae <_vfprintf_r+0x12f6>
 80039a6:	f7fd f84f 	bl	8000a48 <__aeabi_dcmpeq>
 80039aa:	bb20      	cbnz	r0, 80039f6 <_vfprintf_r+0x133e>
 80039ac:	46a9      	mov	r9, r5
 80039ae:	2200      	movs	r2, #0
 80039b0:	4b58      	ldr	r3, [pc, #352]	; (8003b14 <_vfprintf_r+0x145c>)
 80039b2:	4630      	mov	r0, r6
 80039b4:	4639      	mov	r1, r7
 80039b6:	f7fc fddf 	bl	8000578 <__aeabi_dmul>
 80039ba:	460f      	mov	r7, r1
 80039bc:	4606      	mov	r6, r0
 80039be:	f7fd f875 	bl	8000aac <__aeabi_d2iz>
 80039c2:	4680      	mov	r8, r0
 80039c4:	f7fc fd6e 	bl	80004a4 <__aeabi_i2d>
 80039c8:	4602      	mov	r2, r0
 80039ca:	460b      	mov	r3, r1
 80039cc:	4630      	mov	r0, r6
 80039ce:	4639      	mov	r1, r7
 80039d0:	f7fc fc1a 	bl	8000208 <__aeabi_dsub>
 80039d4:	464d      	mov	r5, r9
 80039d6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80039da:	f805 cb01 	strb.w	ip, [r5], #1
 80039de:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80039e2:	46a3      	mov	fp, r4
 80039e4:	4606      	mov	r6, r0
 80039e6:	460f      	mov	r7, r1
 80039e8:	f04f 0200 	mov.w	r2, #0
 80039ec:	f04f 0300 	mov.w	r3, #0
 80039f0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80039f4:	d1d7      	bne.n	80039a6 <_vfprintf_r+0x12ee>
 80039f6:	4630      	mov	r0, r6
 80039f8:	4639      	mov	r1, r7
 80039fa:	2200      	movs	r2, #0
 80039fc:	4b46      	ldr	r3, [pc, #280]	; (8003b18 <_vfprintf_r+0x1460>)
 80039fe:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003a02:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003a04:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003a08:	4644      	mov	r4, r8
 8003a0a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003a0e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003a12:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003a16:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003a1a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003a1c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a20:	f7fd f83a 	bl	8000a98 <__aeabi_dcmpgt>
 8003a24:	2800      	cmp	r0, #0
 8003a26:	f040 8176 	bne.w	8003d16 <_vfprintf_r+0x165e>
 8003a2a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003a2e:	2200      	movs	r2, #0
 8003a30:	4b39      	ldr	r3, [pc, #228]	; (8003b18 <_vfprintf_r+0x1460>)
 8003a32:	f7fd f809 	bl	8000a48 <__aeabi_dcmpeq>
 8003a36:	b110      	cbz	r0, 8003a3e <_vfprintf_r+0x1386>
 8003a38:	07e2      	lsls	r2, r4, #31
 8003a3a:	f100 816c 	bmi.w	8003d16 <_vfprintf_r+0x165e>
 8003a3e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a40:	2b00      	cmp	r3, #0
 8003a42:	db07      	blt.n	8003a54 <_vfprintf_r+0x139c>
 8003a44:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a46:	3301      	adds	r3, #1
 8003a48:	442b      	add	r3, r5
 8003a4a:	2230      	movs	r2, #48	; 0x30
 8003a4c:	f805 2b01 	strb.w	r2, [r5], #1
 8003a50:	42ab      	cmp	r3, r5
 8003a52:	d1fb      	bne.n	8003a4c <_vfprintf_r+0x1394>
 8003a54:	1beb      	subs	r3, r5, r7
 8003a56:	4640      	mov	r0, r8
 8003a58:	9310      	str	r3, [sp, #64]	; 0x40
 8003a5a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a5e:	e683      	b.n	8003768 <_vfprintf_r+0x10b0>
 8003a60:	f8cd 9010 	str.w	r9, [sp, #16]
 8003a64:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003a68:	9408      	str	r4, [sp, #32]
 8003a6a:	4681      	mov	r9, r0
 8003a6c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003a6e:	9014      	str	r0, [sp, #80]	; 0x50
 8003a70:	9011      	str	r0, [sp, #68]	; 0x44
 8003a72:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a76:	f7fe bfac 	b.w	80029d2 <_vfprintf_r+0x31a>
 8003a7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7c:	9907      	ldr	r1, [sp, #28]
 8003a7e:	9803      	ldr	r0, [sp, #12]
 8003a80:	f003 f948 	bl	8006d14 <__sprint_r>
 8003a84:	2800      	cmp	r0, #0
 8003a86:	f47f ab8f 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003a8a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a8c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a92:	e511      	b.n	80034b8 <_vfprintf_r+0xe00>
 8003a94:	4252      	negs	r2, r2
 8003a96:	9206      	str	r2, [sp, #24]
 8003a98:	9308      	str	r3, [sp, #32]
 8003a9a:	f7ff b96d 	b.w	8002d78 <_vfprintf_r+0x6c0>
 8003a9e:	4614      	mov	r4, r2
 8003aa0:	4632      	mov	r2, r6
 8003aa2:	461e      	mov	r6, r3
 8003aa4:	4613      	mov	r3, r2
 8003aa6:	462a      	mov	r2, r5
 8003aa8:	3201      	adds	r2, #1
 8003aaa:	9209      	str	r2, [sp, #36]	; 0x24
 8003aac:	f106 0208 	add.w	r2, r6, #8
 8003ab0:	e9c6 3900 	strd	r3, r9, [r6]
 8003ab4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ab6:	932b      	str	r3, [sp, #172]	; 0xac
 8003ab8:	444c      	add	r4, r9
 8003aba:	2b07      	cmp	r3, #7
 8003abc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003abe:	f73f acc3 	bgt.w	8003448 <_vfprintf_r+0xd90>
 8003ac2:	3301      	adds	r3, #1
 8003ac4:	9309      	str	r3, [sp, #36]	; 0x24
 8003ac6:	f102 0b08 	add.w	fp, r2, #8
 8003aca:	4616      	mov	r6, r2
 8003acc:	f7ff bbca 	b.w	8003264 <_vfprintf_r+0xbac>
 8003ad0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ad2:	9907      	ldr	r1, [sp, #28]
 8003ad4:	9803      	ldr	r0, [sp, #12]
 8003ad6:	f003 f91d 	bl	8006d14 <__sprint_r>
 8003ada:	2800      	cmp	r0, #0
 8003adc:	f47f ab64 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003ae0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ae2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ae6:	f7ff bade 	b.w	80030a6 <_vfprintf_r+0x9ee>
 8003aea:	464b      	mov	r3, r9
 8003aec:	2b06      	cmp	r3, #6
 8003aee:	bf28      	it	cs
 8003af0:	2306      	movcs	r3, #6
 8003af2:	46b9      	mov	r9, r7
 8003af4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003af6:	9714      	str	r7, [sp, #80]	; 0x50
 8003af8:	9711      	str	r7, [sp, #68]	; 0x44
 8003afa:	970a      	str	r7, [sp, #40]	; 0x28
 8003afc:	463a      	mov	r2, r7
 8003afe:	9304      	str	r3, [sp, #16]
 8003b00:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003b04:	4f05      	ldr	r7, [pc, #20]	; (8003b1c <_vfprintf_r+0x1464>)
 8003b06:	f7fe bf64 	b.w	80029d2 <_vfprintf_r+0x31a>
 8003b0a:	bf00      	nop
 8003b0c:	080073f4 	.word	0x080073f4
 8003b10:	080073d8 	.word	0x080073d8
 8003b14:	40300000 	.word	0x40300000
 8003b18:	3fe00000 	.word	0x3fe00000
 8003b1c:	080073ec 	.word	0x080073ec
 8003b20:	460c      	mov	r4, r1
 8003b22:	4639      	mov	r1, r7
 8003b24:	465f      	mov	r7, fp
 8003b26:	469b      	mov	fp, r3
 8003b28:	460b      	mov	r3, r1
 8003b2a:	3201      	adds	r2, #1
 8003b2c:	442c      	add	r4, r5
 8003b2e:	2a07      	cmp	r2, #7
 8003b30:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b34:	e9cb 3500 	strd	r3, r5, [fp]
 8003b38:	f73f aca5 	bgt.w	8003486 <_vfprintf_r+0xdce>
 8003b3c:	f10b 0b08 	add.w	fp, fp, #8
 8003b40:	e4ac      	b.n	800349c <_vfprintf_r+0xde4>
 8003b42:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b44:	1cda      	adds	r2, r3, #3
 8003b46:	db02      	blt.n	8003b4e <_vfprintf_r+0x1496>
 8003b48:	4599      	cmp	r9, r3
 8003b4a:	f280 80b5 	bge.w	8003cb8 <_vfprintf_r+0x1600>
 8003b4e:	3e02      	subs	r6, #2
 8003b50:	f026 0320 	bic.w	r3, r6, #32
 8003b54:	9304      	str	r3, [sp, #16]
 8003b56:	e611      	b.n	800377c <_vfprintf_r+0x10c4>
 8003b58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b5a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003b5e:	465a      	mov	r2, fp
 8003b60:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003b64:	18fb      	adds	r3, r7, r3
 8003b66:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003b6a:	970c      	str	r7, [sp, #48]	; 0x30
 8003b6c:	4eaf      	ldr	r6, [pc, #700]	; (8003e2c <_vfprintf_r+0x1774>)
 8003b6e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003b72:	9309      	str	r3, [sp, #36]	; 0x24
 8003b74:	464f      	mov	r7, r9
 8003b76:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b7a:	4621      	mov	r1, r4
 8003b7c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b7e:	2b00      	cmp	r3, #0
 8003b80:	d05b      	beq.n	8003c3a <_vfprintf_r+0x1582>
 8003b82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b84:	2b00      	cmp	r3, #0
 8003b86:	d154      	bne.n	8003c32 <_vfprintf_r+0x157a>
 8003b88:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b8a:	3b01      	subs	r3, #1
 8003b8c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003b90:	9314      	str	r3, [sp, #80]	; 0x50
 8003b92:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b94:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003b96:	6010      	str	r0, [r2, #0]
 8003b98:	3301      	adds	r3, #1
 8003b9a:	4459      	add	r1, fp
 8003b9c:	2b07      	cmp	r3, #7
 8003b9e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ba0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ba4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ba6:	dc68      	bgt.n	8003c7a <_vfprintf_r+0x15c2>
 8003ba8:	3208      	adds	r2, #8
 8003baa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003bac:	f898 3000 	ldrb.w	r3, [r8]
 8003bb0:	1bc5      	subs	r5, r0, r7
 8003bb2:	429d      	cmp	r5, r3
 8003bb4:	bfa8      	it	ge
 8003bb6:	461d      	movge	r5, r3
 8003bb8:	2d00      	cmp	r5, #0
 8003bba:	dd0b      	ble.n	8003bd4 <_vfprintf_r+0x151c>
 8003bbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003bbe:	6017      	str	r7, [r2, #0]
 8003bc0:	3301      	adds	r3, #1
 8003bc2:	4429      	add	r1, r5
 8003bc4:	2b07      	cmp	r3, #7
 8003bc6:	912c      	str	r1, [sp, #176]	; 0xb0
 8003bc8:	6055      	str	r5, [r2, #4]
 8003bca:	932b      	str	r3, [sp, #172]	; 0xac
 8003bcc:	dc5e      	bgt.n	8003c8c <_vfprintf_r+0x15d4>
 8003bce:	f898 3000 	ldrb.w	r3, [r8]
 8003bd2:	3208      	adds	r2, #8
 8003bd4:	2d00      	cmp	r5, #0
 8003bd6:	bfac      	ite	ge
 8003bd8:	1b5d      	subge	r5, r3, r5
 8003bda:	461d      	movlt	r5, r3
 8003bdc:	2d00      	cmp	r5, #0
 8003bde:	dd26      	ble.n	8003c2e <_vfprintf_r+0x1576>
 8003be0:	2d10      	cmp	r5, #16
 8003be2:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003be4:	dd3c      	ble.n	8003c60 <_vfprintf_r+0x15a8>
 8003be6:	2410      	movs	r4, #16
 8003be8:	e003      	b.n	8003bf2 <_vfprintf_r+0x153a>
 8003bea:	3208      	adds	r2, #8
 8003bec:	3d10      	subs	r5, #16
 8003bee:	2d10      	cmp	r5, #16
 8003bf0:	dd36      	ble.n	8003c60 <_vfprintf_r+0x15a8>
 8003bf2:	3001      	adds	r0, #1
 8003bf4:	3110      	adds	r1, #16
 8003bf6:	2807      	cmp	r0, #7
 8003bf8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003bfc:	e9c2 6400 	strd	r6, r4, [r2]
 8003c00:	ddf3      	ble.n	8003bea <_vfprintf_r+0x1532>
 8003c02:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c04:	4651      	mov	r1, sl
 8003c06:	4648      	mov	r0, r9
 8003c08:	f003 f884 	bl	8006d14 <__sprint_r>
 8003c0c:	2800      	cmp	r0, #0
 8003c0e:	d150      	bne.n	8003cb2 <_vfprintf_r+0x15fa>
 8003c10:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003c14:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c16:	e7e9      	b.n	8003bec <_vfprintf_r+0x1534>
 8003c18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c1a:	4651      	mov	r1, sl
 8003c1c:	4648      	mov	r0, r9
 8003c1e:	f003 f879 	bl	8006d14 <__sprint_r>
 8003c22:	2800      	cmp	r0, #0
 8003c24:	d145      	bne.n	8003cb2 <_vfprintf_r+0x15fa>
 8003c26:	f898 3000 	ldrb.w	r3, [r8]
 8003c2a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c2c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c2e:	441f      	add	r7, r3
 8003c30:	e7a4      	b.n	8003b7c <_vfprintf_r+0x14c4>
 8003c32:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c34:	3b01      	subs	r3, #1
 8003c36:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c38:	e7ab      	b.n	8003b92 <_vfprintf_r+0x14da>
 8003c3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c3c:	2b00      	cmp	r3, #0
 8003c3e:	d1f8      	bne.n	8003c32 <_vfprintf_r+0x157a>
 8003c40:	46b9      	mov	r9, r7
 8003c42:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c44:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003c46:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003c4a:	18fb      	adds	r3, r7, r3
 8003c4c:	4599      	cmp	r9, r3
 8003c4e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003c52:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003c56:	4693      	mov	fp, r2
 8003c58:	460c      	mov	r4, r1
 8003c5a:	bf28      	it	cs
 8003c5c:	4699      	movcs	r9, r3
 8003c5e:	e424      	b.n	80034aa <_vfprintf_r+0xdf2>
 8003c60:	3001      	adds	r0, #1
 8003c62:	4429      	add	r1, r5
 8003c64:	2807      	cmp	r0, #7
 8003c66:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c6a:	e9c2 6500 	strd	r6, r5, [r2]
 8003c6e:	dcd3      	bgt.n	8003c18 <_vfprintf_r+0x1560>
 8003c70:	f898 3000 	ldrb.w	r3, [r8]
 8003c74:	3208      	adds	r2, #8
 8003c76:	441f      	add	r7, r3
 8003c78:	e780      	b.n	8003b7c <_vfprintf_r+0x14c4>
 8003c7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c7c:	4651      	mov	r1, sl
 8003c7e:	4648      	mov	r0, r9
 8003c80:	f003 f848 	bl	8006d14 <__sprint_r>
 8003c84:	b9a8      	cbnz	r0, 8003cb2 <_vfprintf_r+0x15fa>
 8003c86:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c88:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c8a:	e78e      	b.n	8003baa <_vfprintf_r+0x14f2>
 8003c8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c8e:	4651      	mov	r1, sl
 8003c90:	4648      	mov	r0, r9
 8003c92:	f003 f83f 	bl	8006d14 <__sprint_r>
 8003c96:	b960      	cbnz	r0, 8003cb2 <_vfprintf_r+0x15fa>
 8003c98:	f898 3000 	ldrb.w	r3, [r8]
 8003c9c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c9e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ca0:	e798      	b.n	8003bd4 <_vfprintf_r+0x151c>
 8003ca2:	4638      	mov	r0, r7
 8003ca4:	f7fd f94c 	bl	8000f40 <strlen>
 8003ca8:	46a9      	mov	r9, r5
 8003caa:	4603      	mov	r3, r0
 8003cac:	9009      	str	r0, [sp, #36]	; 0x24
 8003cae:	f7ff b8f4 	b.w	8002e9a <_vfprintf_r+0x7e2>
 8003cb2:	46d1      	mov	r9, sl
 8003cb4:	f7ff ba7a 	b.w	80031ac <_vfprintf_r+0xaf4>
 8003cb8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cba:	4619      	mov	r1, r3
 8003cbc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cbe:	4299      	cmp	r1, r3
 8003cc0:	f300 8082 	bgt.w	8003dc8 <_vfprintf_r+0x1710>
 8003cc4:	07c4      	lsls	r4, r0, #31
 8003cc6:	f140 816b 	bpl.w	8003fa0 <_vfprintf_r+0x18e8>
 8003cca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ccc:	4413      	add	r3, r2
 8003cce:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd0:	0541      	lsls	r1, r0, #21
 8003cd2:	d503      	bpl.n	8003cdc <_vfprintf_r+0x1624>
 8003cd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cd6:	2b00      	cmp	r3, #0
 8003cd8:	f300 80e6 	bgt.w	8003ea8 <_vfprintf_r+0x17f0>
 8003cdc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cde:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ce2:	9304      	str	r3, [sp, #16]
 8003ce4:	2667      	movs	r6, #103	; 0x67
 8003ce6:	2300      	movs	r3, #0
 8003ce8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003cea:	9314      	str	r3, [sp, #80]	; 0x50
 8003cec:	e586      	b.n	80037fc <_vfprintf_r+0x1144>
 8003cee:	222d      	movs	r2, #45	; 0x2d
 8003cf0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003cf4:	f04f 0900 	mov.w	r9, #0
 8003cf8:	f7fe be6c 	b.w	80029d4 <_vfprintf_r+0x31c>
 8003cfc:	46a1      	mov	r9, r4
 8003cfe:	f7ff ba55 	b.w	80031ac <_vfprintf_r+0xaf4>
 8003d02:	900a      	str	r0, [sp, #40]	; 0x28
 8003d04:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003d08:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003d0c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003d0e:	232d      	movs	r3, #45	; 0x2d
 8003d10:	911e      	str	r1, [sp, #120]	; 0x78
 8003d12:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d14:	e619      	b.n	800394a <_vfprintf_r+0x1292>
 8003d16:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d18:	9328      	str	r3, [sp, #160]	; 0xa0
 8003d1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d1c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003d20:	7bd9      	ldrb	r1, [r3, #15]
 8003d22:	4291      	cmp	r1, r2
 8003d24:	462b      	mov	r3, r5
 8003d26:	d109      	bne.n	8003d3c <_vfprintf_r+0x1684>
 8003d28:	2030      	movs	r0, #48	; 0x30
 8003d2a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003d2e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d30:	1e5a      	subs	r2, r3, #1
 8003d32:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d34:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003d38:	4291      	cmp	r1, r2
 8003d3a:	d0f6      	beq.n	8003d2a <_vfprintf_r+0x1672>
 8003d3c:	2a39      	cmp	r2, #57	; 0x39
 8003d3e:	bf0b      	itete	eq
 8003d40:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003d42:	3201      	addne	r2, #1
 8003d44:	7a92      	ldrbeq	r2, [r2, #10]
 8003d46:	b2d2      	uxtbne	r2, r2
 8003d48:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003d4c:	e682      	b.n	8003a54 <_vfprintf_r+0x139c>
 8003d4e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003d52:	f43f ad9f 	beq.w	8003894 <_vfprintf_r+0x11dc>
 8003d56:	9a05      	ldr	r2, [sp, #20]
 8003d58:	701a      	strb	r2, [r3, #0]
 8003d5a:	4657      	mov	r7, sl
 8003d5c:	f7fe bf52 	b.w	8002c04 <_vfprintf_r+0x54c>
 8003d60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d62:	9907      	ldr	r1, [sp, #28]
 8003d64:	9803      	ldr	r0, [sp, #12]
 8003d66:	f002 ffd5 	bl	8006d14 <__sprint_r>
 8003d6a:	2800      	cmp	r0, #0
 8003d6c:	f47f aa1c 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003d70:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d72:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d76:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d7a:	e571      	b.n	8003860 <_vfprintf_r+0x11a8>
 8003d7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d7e:	2b00      	cmp	r3, #0
 8003d80:	f340 8164 	ble.w	800404c <_vfprintf_r+0x1994>
 8003d84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d86:	f1b9 0f00 	cmp.w	r9, #0
 8003d8a:	f040 8103 	bne.w	8003f94 <_vfprintf_r+0x18dc>
 8003d8e:	07c6      	lsls	r6, r0, #31
 8003d90:	f100 8100 	bmi.w	8003f94 <_vfprintf_r+0x18dc>
 8003d94:	9309      	str	r3, [sp, #36]	; 0x24
 8003d96:	2666      	movs	r6, #102	; 0x66
 8003d98:	0543      	lsls	r3, r0, #21
 8003d9a:	f100 8086 	bmi.w	8003eaa <_vfprintf_r+0x17f2>
 8003d9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003da0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003da4:	9304      	str	r3, [sp, #16]
 8003da6:	e79e      	b.n	8003ce6 <_vfprintf_r+0x162e>
 8003da8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003daa:	9907      	ldr	r1, [sp, #28]
 8003dac:	9803      	ldr	r0, [sp, #12]
 8003dae:	f002 ffb1 	bl	8006d14 <__sprint_r>
 8003db2:	2800      	cmp	r0, #0
 8003db4:	f47f a9f8 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003db8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003dba:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003dbc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003dbe:	1ad3      	subs	r3, r2, r3
 8003dc0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003dc4:	f7ff bb90 	b.w	80034e8 <_vfprintf_r+0xe30>
 8003dc8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003dca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003dcc:	4413      	add	r3, r2
 8003dce:	9309      	str	r3, [sp, #36]	; 0x24
 8003dd0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dd2:	2b00      	cmp	r3, #0
 8003dd4:	f340 8149 	ble.w	800406a <_vfprintf_r+0x19b2>
 8003dd8:	2667      	movs	r6, #103	; 0x67
 8003dda:	e7dd      	b.n	8003d98 <_vfprintf_r+0x16e0>
 8003ddc:	2330      	movs	r3, #48	; 0x30
 8003dde:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003de2:	2358      	movs	r3, #88	; 0x58
 8003de4:	e595      	b.n	8003912 <_vfprintf_r+0x125a>
 8003de6:	9803      	ldr	r0, [sp, #12]
 8003de8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dea:	4649      	mov	r1, r9
 8003dec:	f002 ff92 	bl	8006d14 <__sprint_r>
 8003df0:	2800      	cmp	r0, #0
 8003df2:	f47f a9e0 	bne.w	80031b6 <_vfprintf_r+0xafe>
 8003df6:	f7fe bf0f 	b.w	8002c18 <_vfprintf_r+0x560>
 8003dfa:	a824      	add	r0, sp, #144	; 0x90
 8003dfc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e00:	f002 fe90 	bl	8006b24 <frexp>
 8003e04:	2200      	movs	r2, #0
 8003e06:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003e0a:	ec51 0b10 	vmov	r0, r1, d0
 8003e0e:	f7fc fbb3 	bl	8000578 <__aeabi_dmul>
 8003e12:	2200      	movs	r2, #0
 8003e14:	2300      	movs	r3, #0
 8003e16:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003e1a:	f7fc fe15 	bl	8000a48 <__aeabi_dcmpeq>
 8003e1e:	b108      	cbz	r0, 8003e24 <_vfprintf_r+0x176c>
 8003e20:	2301      	movs	r3, #1
 8003e22:	9324      	str	r3, [sp, #144]	; 0x90
 8003e24:	4b02      	ldr	r3, [pc, #8]	; (8003e30 <_vfprintf_r+0x1778>)
 8003e26:	9309      	str	r3, [sp, #36]	; 0x24
 8003e28:	e5ac      	b.n	8003984 <_vfprintf_r+0x12cc>
 8003e2a:	bf00      	nop
 8003e2c:	08007408 	.word	0x08007408
 8003e30:	080073c4 	.word	0x080073c4
 8003e34:	425d      	negs	r5, r3
 8003e36:	3310      	adds	r3, #16
 8003e38:	4bb9      	ldr	r3, [pc, #740]	; (8004120 <_vfprintf_r+0x1a68>)
 8003e3a:	f280 8097 	bge.w	8003f6c <_vfprintf_r+0x18b4>
 8003e3e:	4619      	mov	r1, r3
 8003e40:	2610      	movs	r6, #16
 8003e42:	4623      	mov	r3, r4
 8003e44:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003e48:	460c      	mov	r4, r1
 8003e4a:	e005      	b.n	8003e58 <_vfprintf_r+0x17a0>
 8003e4c:	f10b 0b08 	add.w	fp, fp, #8
 8003e50:	3d10      	subs	r5, #16
 8003e52:	2d10      	cmp	r5, #16
 8003e54:	f340 8087 	ble.w	8003f66 <_vfprintf_r+0x18ae>
 8003e58:	3201      	adds	r2, #1
 8003e5a:	3310      	adds	r3, #16
 8003e5c:	2a07      	cmp	r2, #7
 8003e5e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003e62:	e9cb 4600 	strd	r4, r6, [fp]
 8003e66:	ddf1      	ble.n	8003e4c <_vfprintf_r+0x1794>
 8003e68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e6a:	9907      	ldr	r1, [sp, #28]
 8003e6c:	4648      	mov	r0, r9
 8003e6e:	f002 ff51 	bl	8006d14 <__sprint_r>
 8003e72:	2800      	cmp	r0, #0
 8003e74:	f47f a998 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 8003e78:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003e7c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e80:	e7e6      	b.n	8003e50 <_vfprintf_r+0x1798>
 8003e82:	f109 0101 	add.w	r1, r9, #1
 8003e86:	9803      	ldr	r0, [sp, #12]
 8003e88:	f001 fe80 	bl	8005b8c <_malloc_r>
 8003e8c:	4607      	mov	r7, r0
 8003e8e:	2800      	cmp	r0, #0
 8003e90:	f000 813b 	beq.w	800410a <_vfprintf_r+0x1a52>
 8003e94:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003e98:	930e      	str	r3, [sp, #56]	; 0x38
 8003e9a:	f026 0320 	bic.w	r3, r6, #32
 8003e9e:	9304      	str	r3, [sp, #16]
 8003ea0:	46a0      	mov	r8, r4
 8003ea2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ea4:	900a      	str	r0, [sp, #40]	; 0x28
 8003ea6:	e547      	b.n	8003938 <_vfprintf_r+0x1280>
 8003ea8:	2667      	movs	r6, #103	; 0x67
 8003eaa:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003eac:	2200      	movs	r2, #0
 8003eae:	920f      	str	r2, [sp, #60]	; 0x3c
 8003eb0:	9214      	str	r2, [sp, #80]	; 0x50
 8003eb2:	7803      	ldrb	r3, [r0, #0]
 8003eb4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003eb6:	2bff      	cmp	r3, #255	; 0xff
 8003eb8:	d00c      	beq.n	8003ed4 <_vfprintf_r+0x181c>
 8003eba:	4293      	cmp	r3, r2
 8003ebc:	da0a      	bge.n	8003ed4 <_vfprintf_r+0x181c>
 8003ebe:	7841      	ldrb	r1, [r0, #1]
 8003ec0:	1ad2      	subs	r2, r2, r3
 8003ec2:	b1a9      	cbz	r1, 8003ef0 <_vfprintf_r+0x1838>
 8003ec4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ec6:	3301      	adds	r3, #1
 8003ec8:	9314      	str	r3, [sp, #80]	; 0x50
 8003eca:	460b      	mov	r3, r1
 8003ecc:	2bff      	cmp	r3, #255	; 0xff
 8003ece:	f100 0001 	add.w	r0, r0, #1
 8003ed2:	d1f2      	bne.n	8003eba <_vfprintf_r+0x1802>
 8003ed4:	9211      	str	r2, [sp, #68]	; 0x44
 8003ed6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ed8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003eda:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003edc:	901a      	str	r0, [sp, #104]	; 0x68
 8003ede:	4413      	add	r3, r2
 8003ee0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003ee2:	fb02 1303 	mla	r3, r2, r3, r1
 8003ee6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ee8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003eec:	9304      	str	r3, [sp, #16]
 8003eee:	e485      	b.n	80037fc <_vfprintf_r+0x1144>
 8003ef0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003ef2:	3101      	adds	r1, #1
 8003ef4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ef6:	e7de      	b.n	8003eb6 <_vfprintf_r+0x17fe>
 8003ef8:	aa28      	add	r2, sp, #160	; 0xa0
 8003efa:	ab25      	add	r3, sp, #148	; 0x94
 8003efc:	e9cd 3200 	strd	r3, r2, [sp]
 8003f00:	2103      	movs	r1, #3
 8003f02:	ab24      	add	r3, sp, #144	; 0x90
 8003f04:	464a      	mov	r2, r9
 8003f06:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f0a:	9803      	ldr	r0, [sp, #12]
 8003f0c:	f000 fa5c 	bl	80043c8 <_dtoa_r>
 8003f10:	464d      	mov	r5, r9
 8003f12:	4607      	mov	r7, r0
 8003f14:	eb00 0409 	add.w	r4, r0, r9
 8003f18:	783b      	ldrb	r3, [r7, #0]
 8003f1a:	2b30      	cmp	r3, #48	; 0x30
 8003f1c:	f000 80be 	beq.w	800409c <_vfprintf_r+0x19e4>
 8003f20:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003f22:	442c      	add	r4, r5
 8003f24:	2200      	movs	r2, #0
 8003f26:	2300      	movs	r3, #0
 8003f28:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f2c:	f7fc fd8c 	bl	8000a48 <__aeabi_dcmpeq>
 8003f30:	b108      	cbz	r0, 8003f36 <_vfprintf_r+0x187e>
 8003f32:	4623      	mov	r3, r4
 8003f34:	e413      	b.n	800375e <_vfprintf_r+0x10a6>
 8003f36:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f38:	42a3      	cmp	r3, r4
 8003f3a:	f4bf ac10 	bcs.w	800375e <_vfprintf_r+0x10a6>
 8003f3e:	2130      	movs	r1, #48	; 0x30
 8003f40:	1c5a      	adds	r2, r3, #1
 8003f42:	9228      	str	r2, [sp, #160]	; 0xa0
 8003f44:	7019      	strb	r1, [r3, #0]
 8003f46:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f48:	429c      	cmp	r4, r3
 8003f4a:	d8f9      	bhi.n	8003f40 <_vfprintf_r+0x1888>
 8003f4c:	e407      	b.n	800375e <_vfprintf_r+0x10a6>
 8003f4e:	197c      	adds	r4, r7, r5
 8003f50:	e7e8      	b.n	8003f24 <_vfprintf_r+0x186c>
 8003f52:	f1b9 0f00 	cmp.w	r9, #0
 8003f56:	f000 8092 	beq.w	800407e <_vfprintf_r+0x19c6>
 8003f5a:	900a      	str	r0, [sp, #40]	; 0x28
 8003f5c:	e4ec      	b.n	8003938 <_vfprintf_r+0x1280>
 8003f5e:	900a      	str	r0, [sp, #40]	; 0x28
 8003f60:	f04f 0906 	mov.w	r9, #6
 8003f64:	e4e8      	b.n	8003938 <_vfprintf_r+0x1280>
 8003f66:	4621      	mov	r1, r4
 8003f68:	461c      	mov	r4, r3
 8003f6a:	460b      	mov	r3, r1
 8003f6c:	3201      	adds	r2, #1
 8003f6e:	442c      	add	r4, r5
 8003f70:	2a07      	cmp	r2, #7
 8003f72:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f76:	e9cb 3500 	strd	r3, r5, [fp]
 8003f7a:	f300 80a9 	bgt.w	80040d0 <_vfprintf_r+0x1a18>
 8003f7e:	f10b 0b08 	add.w	fp, fp, #8
 8003f82:	e470      	b.n	8003866 <_vfprintf_r+0x11ae>
 8003f84:	469a      	mov	sl, r3
 8003f86:	f7ff bb37 	b.w	80035f8 <_vfprintf_r+0xf40>
 8003f8a:	2301      	movs	r3, #1
 8003f8c:	9324      	str	r3, [sp, #144]	; 0x90
 8003f8e:	4b65      	ldr	r3, [pc, #404]	; (8004124 <_vfprintf_r+0x1a6c>)
 8003f90:	9309      	str	r3, [sp, #36]	; 0x24
 8003f92:	e4f7      	b.n	8003984 <_vfprintf_r+0x12cc>
 8003f94:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f96:	4413      	add	r3, r2
 8003f98:	444b      	add	r3, r9
 8003f9a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f9c:	2666      	movs	r6, #102	; 0x66
 8003f9e:	e6fb      	b.n	8003d98 <_vfprintf_r+0x16e0>
 8003fa0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fa2:	9309      	str	r3, [sp, #36]	; 0x24
 8003fa4:	e694      	b.n	8003cd0 <_vfprintf_r+0x1618>
 8003fa6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003faa:	4664      	mov	r4, ip
 8003fac:	4d5e      	ldr	r5, [pc, #376]	; (8004128 <_vfprintf_r+0x1a70>)
 8003fae:	e000      	b.n	8003fb2 <_vfprintf_r+0x18fa>
 8003fb0:	4614      	mov	r4, r2
 8003fb2:	fba5 1203 	umull	r1, r2, r5, r3
 8003fb6:	08d2      	lsrs	r2, r2, #3
 8003fb8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003fbc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003fc0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003fc4:	4613      	mov	r3, r2
 8003fc6:	2b09      	cmp	r3, #9
 8003fc8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003fcc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003fd0:	dcee      	bgt.n	8003fb0 <_vfprintf_r+0x18f8>
 8003fd2:	3330      	adds	r3, #48	; 0x30
 8003fd4:	3c02      	subs	r4, #2
 8003fd6:	b2db      	uxtb	r3, r3
 8003fd8:	45a4      	cmp	ip, r4
 8003fda:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003fde:	f240 8090 	bls.w	8004102 <_vfprintf_r+0x1a4a>
 8003fe2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003fe6:	4611      	mov	r1, r2
 8003fe8:	e001      	b.n	8003fee <_vfprintf_r+0x1936>
 8003fea:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003fee:	f804 3b01 	strb.w	r3, [r4], #1
 8003ff2:	458c      	cmp	ip, r1
 8003ff4:	d1f9      	bne.n	8003fea <_vfprintf_r+0x1932>
 8003ff6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003ff8:	1a9b      	subs	r3, r3, r2
 8003ffa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ffe:	4413      	add	r3, r2
 8004000:	f7ff bbe3 	b.w	80037ca <_vfprintf_r+0x1112>
 8004004:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004006:	4f49      	ldr	r7, [pc, #292]	; (800412c <_vfprintf_r+0x1a74>)
 8004008:	2b00      	cmp	r3, #0
 800400a:	bfb6      	itet	lt
 800400c:	222d      	movlt	r2, #45	; 0x2d
 800400e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004012:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004016:	4b46      	ldr	r3, [pc, #280]	; (8004130 <_vfprintf_r+0x1a78>)
 8004018:	f7fe bf02 	b.w	8002e20 <_vfprintf_r+0x768>
 800401c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004020:	f7ff b8c9 	b.w	80031b6 <_vfprintf_r+0xafe>
 8004024:	aa28      	add	r2, sp, #160	; 0xa0
 8004026:	ab25      	add	r3, sp, #148	; 0x94
 8004028:	e9cd 3200 	strd	r3, r2, [sp]
 800402c:	2103      	movs	r1, #3
 800402e:	ab24      	add	r3, sp, #144	; 0x90
 8004030:	464a      	mov	r2, r9
 8004032:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004036:	9803      	ldr	r0, [sp, #12]
 8004038:	f000 f9c6 	bl	80043c8 <_dtoa_r>
 800403c:	464d      	mov	r5, r9
 800403e:	4607      	mov	r7, r0
 8004040:	2e46      	cmp	r6, #70	; 0x46
 8004042:	eb07 0405 	add.w	r4, r7, r5
 8004046:	f43f af67 	beq.w	8003f18 <_vfprintf_r+0x1860>
 800404a:	e76b      	b.n	8003f24 <_vfprintf_r+0x186c>
 800404c:	f1b9 0f00 	cmp.w	r9, #0
 8004050:	d131      	bne.n	80040b6 <_vfprintf_r+0x19fe>
 8004052:	07c5      	lsls	r5, r0, #31
 8004054:	d42f      	bmi.n	80040b6 <_vfprintf_r+0x19fe>
 8004056:	2301      	movs	r3, #1
 8004058:	9304      	str	r3, [sp, #16]
 800405a:	9309      	str	r3, [sp, #36]	; 0x24
 800405c:	2666      	movs	r6, #102	; 0x66
 800405e:	e642      	b.n	8003ce6 <_vfprintf_r+0x162e>
 8004060:	07c3      	lsls	r3, r0, #31
 8004062:	f57f abbf 	bpl.w	80037e4 <_vfprintf_r+0x112c>
 8004066:	f7ff bbb9 	b.w	80037dc <_vfprintf_r+0x1124>
 800406a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800406c:	f1c3 0301 	rsb	r3, r3, #1
 8004070:	441a      	add	r2, r3
 8004072:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004076:	9209      	str	r2, [sp, #36]	; 0x24
 8004078:	9304      	str	r3, [sp, #16]
 800407a:	2667      	movs	r6, #103	; 0x67
 800407c:	e633      	b.n	8003ce6 <_vfprintf_r+0x162e>
 800407e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004082:	f04f 0901 	mov.w	r9, #1
 8004086:	e457      	b.n	8003938 <_vfprintf_r+0x1280>
 8004088:	465a      	mov	r2, fp
 800408a:	e511      	b.n	8003ab0 <_vfprintf_r+0x13f8>
 800408c:	2e47      	cmp	r6, #71	; 0x47
 800408e:	f47f af5e 	bne.w	8003f4e <_vfprintf_r+0x1896>
 8004092:	f018 0f01 	tst.w	r8, #1
 8004096:	f43f ab61 	beq.w	800375c <_vfprintf_r+0x10a4>
 800409a:	e7d1      	b.n	8004040 <_vfprintf_r+0x1988>
 800409c:	2200      	movs	r2, #0
 800409e:	2300      	movs	r3, #0
 80040a0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80040a4:	f7fc fcd0 	bl	8000a48 <__aeabi_dcmpeq>
 80040a8:	2800      	cmp	r0, #0
 80040aa:	f47f af39 	bne.w	8003f20 <_vfprintf_r+0x1868>
 80040ae:	f1c5 0501 	rsb	r5, r5, #1
 80040b2:	9524      	str	r5, [sp, #144]	; 0x90
 80040b4:	e735      	b.n	8003f22 <_vfprintf_r+0x186a>
 80040b6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80040b8:	3301      	adds	r3, #1
 80040ba:	444b      	add	r3, r9
 80040bc:	9309      	str	r3, [sp, #36]	; 0x24
 80040be:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80040c2:	9304      	str	r3, [sp, #16]
 80040c4:	2666      	movs	r6, #102	; 0x66
 80040c6:	e60e      	b.n	8003ce6 <_vfprintf_r+0x162e>
 80040c8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80040cc:	f7ff bb7a 	b.w	80037c4 <_vfprintf_r+0x110c>
 80040d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80040d2:	9907      	ldr	r1, [sp, #28]
 80040d4:	9803      	ldr	r0, [sp, #12]
 80040d6:	f002 fe1d 	bl	8006d14 <__sprint_r>
 80040da:	2800      	cmp	r0, #0
 80040dc:	f47f a864 	bne.w	80031a8 <_vfprintf_r+0xaf0>
 80040e0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80040e4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040e8:	f7ff bbbd 	b.w	8003866 <_vfprintf_r+0x11ae>
 80040ec:	9908      	ldr	r1, [sp, #32]
 80040ee:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80040f2:	680b      	ldr	r3, [r1, #0]
 80040f4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80040f8:	1d0b      	adds	r3, r1, #4
 80040fa:	4692      	mov	sl, r2
 80040fc:	9308      	str	r3, [sp, #32]
 80040fe:	f7fe bb59 	b.w	80027b4 <_vfprintf_r+0xfc>
 8004102:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004106:	f7ff bb60 	b.w	80037ca <_vfprintf_r+0x1112>
 800410a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800410e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004112:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004116:	f8a9 300c 	strh.w	r3, [r9, #12]
 800411a:	f7ff b84c 	b.w	80031b6 <_vfprintf_r+0xafe>
 800411e:	bf00      	nop
 8004120:	08007408 	.word	0x08007408
 8004124:	080073d8 	.word	0x080073d8
 8004128:	cccccccd 	.word	0xcccccccd
 800412c:	080073c0 	.word	0x080073c0
 8004130:	080073bc 	.word	0x080073bc

08004134 <__sbprintf>:
 8004134:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004138:	460c      	mov	r4, r1
 800413a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800413e:	8989      	ldrh	r1, [r1, #12]
 8004140:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004142:	89e5      	ldrh	r5, [r4, #14]
 8004144:	9619      	str	r6, [sp, #100]	; 0x64
 8004146:	f021 0102 	bic.w	r1, r1, #2
 800414a:	4606      	mov	r6, r0
 800414c:	69e0      	ldr	r0, [r4, #28]
 800414e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004152:	4617      	mov	r7, r2
 8004154:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004158:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800415a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800415e:	4698      	mov	r8, r3
 8004160:	ad1a      	add	r5, sp, #104	; 0x68
 8004162:	2300      	movs	r3, #0
 8004164:	9007      	str	r0, [sp, #28]
 8004166:	a816      	add	r0, sp, #88	; 0x58
 8004168:	9209      	str	r2, [sp, #36]	; 0x24
 800416a:	9306      	str	r3, [sp, #24]
 800416c:	9500      	str	r5, [sp, #0]
 800416e:	9504      	str	r5, [sp, #16]
 8004170:	9102      	str	r1, [sp, #8]
 8004172:	9105      	str	r1, [sp, #20]
 8004174:	f001 fc8a 	bl	8005a8c <__retarget_lock_init_recursive>
 8004178:	4643      	mov	r3, r8
 800417a:	463a      	mov	r2, r7
 800417c:	4669      	mov	r1, sp
 800417e:	4630      	mov	r0, r6
 8004180:	f7fe fa9a 	bl	80026b8 <_vfprintf_r>
 8004184:	1e05      	subs	r5, r0, #0
 8004186:	db07      	blt.n	8004198 <__sbprintf+0x64>
 8004188:	4630      	mov	r0, r6
 800418a:	4669      	mov	r1, sp
 800418c:	f001 f8d6 	bl	800533c <_fflush_r>
 8004190:	2800      	cmp	r0, #0
 8004192:	bf18      	it	ne
 8004194:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004198:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800419c:	065b      	lsls	r3, r3, #25
 800419e:	d503      	bpl.n	80041a8 <__sbprintf+0x74>
 80041a0:	89a3      	ldrh	r3, [r4, #12]
 80041a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041a6:	81a3      	strh	r3, [r4, #12]
 80041a8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80041aa:	f001 fc71 	bl	8005a90 <__retarget_lock_close_recursive>
 80041ae:	4628      	mov	r0, r5
 80041b0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80041b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080041b8 <__swsetup_r>:
 80041b8:	b538      	push	{r3, r4, r5, lr}
 80041ba:	4b31      	ldr	r3, [pc, #196]	; (8004280 <__swsetup_r+0xc8>)
 80041bc:	681b      	ldr	r3, [r3, #0]
 80041be:	4605      	mov	r5, r0
 80041c0:	460c      	mov	r4, r1
 80041c2:	b113      	cbz	r3, 80041ca <__swsetup_r+0x12>
 80041c4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80041c6:	2a00      	cmp	r2, #0
 80041c8:	d03a      	beq.n	8004240 <__swsetup_r+0x88>
 80041ca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80041ce:	b293      	uxth	r3, r2
 80041d0:	0718      	lsls	r0, r3, #28
 80041d2:	d50c      	bpl.n	80041ee <__swsetup_r+0x36>
 80041d4:	6920      	ldr	r0, [r4, #16]
 80041d6:	b1a8      	cbz	r0, 8004204 <__swsetup_r+0x4c>
 80041d8:	f013 0201 	ands.w	r2, r3, #1
 80041dc:	d020      	beq.n	8004220 <__swsetup_r+0x68>
 80041de:	6963      	ldr	r3, [r4, #20]
 80041e0:	2200      	movs	r2, #0
 80041e2:	425b      	negs	r3, r3
 80041e4:	61a3      	str	r3, [r4, #24]
 80041e6:	60a2      	str	r2, [r4, #8]
 80041e8:	b300      	cbz	r0, 800422c <__swsetup_r+0x74>
 80041ea:	2000      	movs	r0, #0
 80041ec:	bd38      	pop	{r3, r4, r5, pc}
 80041ee:	06d9      	lsls	r1, r3, #27
 80041f0:	d53e      	bpl.n	8004270 <__swsetup_r+0xb8>
 80041f2:	0758      	lsls	r0, r3, #29
 80041f4:	d428      	bmi.n	8004248 <__swsetup_r+0x90>
 80041f6:	6920      	ldr	r0, [r4, #16]
 80041f8:	f042 0308 	orr.w	r3, r2, #8
 80041fc:	81a3      	strh	r3, [r4, #12]
 80041fe:	b29b      	uxth	r3, r3
 8004200:	2800      	cmp	r0, #0
 8004202:	d1e9      	bne.n	80041d8 <__swsetup_r+0x20>
 8004204:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004208:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800420c:	d0e4      	beq.n	80041d8 <__swsetup_r+0x20>
 800420e:	4628      	mov	r0, r5
 8004210:	4621      	mov	r1, r4
 8004212:	f001 fc71 	bl	8005af8 <__smakebuf_r>
 8004216:	89a3      	ldrh	r3, [r4, #12]
 8004218:	6920      	ldr	r0, [r4, #16]
 800421a:	f013 0201 	ands.w	r2, r3, #1
 800421e:	d1de      	bne.n	80041de <__swsetup_r+0x26>
 8004220:	0799      	lsls	r1, r3, #30
 8004222:	bf58      	it	pl
 8004224:	6962      	ldrpl	r2, [r4, #20]
 8004226:	60a2      	str	r2, [r4, #8]
 8004228:	2800      	cmp	r0, #0
 800422a:	d1de      	bne.n	80041ea <__swsetup_r+0x32>
 800422c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004230:	061a      	lsls	r2, r3, #24
 8004232:	d5db      	bpl.n	80041ec <__swsetup_r+0x34>
 8004234:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004238:	81a3      	strh	r3, [r4, #12]
 800423a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800423e:	bd38      	pop	{r3, r4, r5, pc}
 8004240:	4618      	mov	r0, r3
 8004242:	f001 f8d7 	bl	80053f4 <__sinit>
 8004246:	e7c0      	b.n	80041ca <__swsetup_r+0x12>
 8004248:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800424a:	b151      	cbz	r1, 8004262 <__swsetup_r+0xaa>
 800424c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004250:	4299      	cmp	r1, r3
 8004252:	d004      	beq.n	800425e <__swsetup_r+0xa6>
 8004254:	4628      	mov	r0, r5
 8004256:	f001 f96f 	bl	8005538 <_free_r>
 800425a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800425e:	2300      	movs	r3, #0
 8004260:	6323      	str	r3, [r4, #48]	; 0x30
 8004262:	2300      	movs	r3, #0
 8004264:	6920      	ldr	r0, [r4, #16]
 8004266:	6063      	str	r3, [r4, #4]
 8004268:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800426c:	6020      	str	r0, [r4, #0]
 800426e:	e7c3      	b.n	80041f8 <__swsetup_r+0x40>
 8004270:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004274:	2309      	movs	r3, #9
 8004276:	602b      	str	r3, [r5, #0]
 8004278:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800427c:	81a2      	strh	r2, [r4, #12]
 800427e:	bd38      	pop	{r3, r4, r5, pc}
 8004280:	2000006c 	.word	0x2000006c

08004284 <register_fini>:
 8004284:	4b02      	ldr	r3, [pc, #8]	; (8004290 <register_fini+0xc>)
 8004286:	b113      	cbz	r3, 800428e <register_fini+0xa>
 8004288:	4802      	ldr	r0, [pc, #8]	; (8004294 <register_fini+0x10>)
 800428a:	f000 b805 	b.w	8004298 <atexit>
 800428e:	4770      	bx	lr
 8004290:	00000000 	.word	0x00000000
 8004294:	08005465 	.word	0x08005465

08004298 <atexit>:
 8004298:	2300      	movs	r3, #0
 800429a:	4601      	mov	r1, r0
 800429c:	461a      	mov	r2, r3
 800429e:	4618      	mov	r0, r3
 80042a0:	f002 bd58 	b.w	8006d54 <__register_exitproc>

080042a4 <quorem>:
 80042a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80042a8:	6903      	ldr	r3, [r0, #16]
 80042aa:	690f      	ldr	r7, [r1, #16]
 80042ac:	42bb      	cmp	r3, r7
 80042ae:	b083      	sub	sp, #12
 80042b0:	f2c0 8086 	blt.w	80043c0 <quorem+0x11c>
 80042b4:	3f01      	subs	r7, #1
 80042b6:	f101 0914 	add.w	r9, r1, #20
 80042ba:	f100 0a14 	add.w	sl, r0, #20
 80042be:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80042c2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80042c6:	00bc      	lsls	r4, r7, #2
 80042c8:	3201      	adds	r2, #1
 80042ca:	fbb3 f8f2 	udiv	r8, r3, r2
 80042ce:	eb0a 0304 	add.w	r3, sl, r4
 80042d2:	9400      	str	r4, [sp, #0]
 80042d4:	eb09 0b04 	add.w	fp, r9, r4
 80042d8:	9301      	str	r3, [sp, #4]
 80042da:	f1b8 0f00 	cmp.w	r8, #0
 80042de:	d038      	beq.n	8004352 <quorem+0xae>
 80042e0:	2500      	movs	r5, #0
 80042e2:	462e      	mov	r6, r5
 80042e4:	46ce      	mov	lr, r9
 80042e6:	46d4      	mov	ip, sl
 80042e8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80042ec:	f8dc 3000 	ldr.w	r3, [ip]
 80042f0:	b2a2      	uxth	r2, r4
 80042f2:	fb08 5502 	mla	r5, r8, r2, r5
 80042f6:	0c22      	lsrs	r2, r4, #16
 80042f8:	0c2c      	lsrs	r4, r5, #16
 80042fa:	fb08 4202 	mla	r2, r8, r2, r4
 80042fe:	b2ad      	uxth	r5, r5
 8004300:	1b75      	subs	r5, r6, r5
 8004302:	b296      	uxth	r6, r2
 8004304:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004308:	fa15 f383 	uxtah	r3, r5, r3
 800430c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004310:	b29b      	uxth	r3, r3
 8004312:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004316:	45f3      	cmp	fp, lr
 8004318:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800431c:	f84c 3b04 	str.w	r3, [ip], #4
 8004320:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004324:	d2e0      	bcs.n	80042e8 <quorem+0x44>
 8004326:	9b00      	ldr	r3, [sp, #0]
 8004328:	f85a 3003 	ldr.w	r3, [sl, r3]
 800432c:	b98b      	cbnz	r3, 8004352 <quorem+0xae>
 800432e:	9a01      	ldr	r2, [sp, #4]
 8004330:	1f13      	subs	r3, r2, #4
 8004332:	459a      	cmp	sl, r3
 8004334:	d20c      	bcs.n	8004350 <quorem+0xac>
 8004336:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800433a:	b94b      	cbnz	r3, 8004350 <quorem+0xac>
 800433c:	f1a2 0308 	sub.w	r3, r2, #8
 8004340:	e002      	b.n	8004348 <quorem+0xa4>
 8004342:	681a      	ldr	r2, [r3, #0]
 8004344:	3b04      	subs	r3, #4
 8004346:	b91a      	cbnz	r2, 8004350 <quorem+0xac>
 8004348:	459a      	cmp	sl, r3
 800434a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800434e:	d3f8      	bcc.n	8004342 <quorem+0x9e>
 8004350:	6107      	str	r7, [r0, #16]
 8004352:	4604      	mov	r4, r0
 8004354:	f002 f944 	bl	80065e0 <__mcmp>
 8004358:	2800      	cmp	r0, #0
 800435a:	db2d      	blt.n	80043b8 <quorem+0x114>
 800435c:	f108 0801 	add.w	r8, r8, #1
 8004360:	4655      	mov	r5, sl
 8004362:	2300      	movs	r3, #0
 8004364:	f859 1b04 	ldr.w	r1, [r9], #4
 8004368:	6828      	ldr	r0, [r5, #0]
 800436a:	b28a      	uxth	r2, r1
 800436c:	1a9a      	subs	r2, r3, r2
 800436e:	0c0b      	lsrs	r3, r1, #16
 8004370:	fa12 f280 	uxtah	r2, r2, r0
 8004374:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004378:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800437c:	b292      	uxth	r2, r2
 800437e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004382:	45cb      	cmp	fp, r9
 8004384:	f845 2b04 	str.w	r2, [r5], #4
 8004388:	ea4f 4323 	mov.w	r3, r3, asr #16
 800438c:	d2ea      	bcs.n	8004364 <quorem+0xc0>
 800438e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004392:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004396:	b97a      	cbnz	r2, 80043b8 <quorem+0x114>
 8004398:	1f1a      	subs	r2, r3, #4
 800439a:	4592      	cmp	sl, r2
 800439c:	d20b      	bcs.n	80043b6 <quorem+0x112>
 800439e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80043a2:	b942      	cbnz	r2, 80043b6 <quorem+0x112>
 80043a4:	3b08      	subs	r3, #8
 80043a6:	e002      	b.n	80043ae <quorem+0x10a>
 80043a8:	681a      	ldr	r2, [r3, #0]
 80043aa:	3b04      	subs	r3, #4
 80043ac:	b91a      	cbnz	r2, 80043b6 <quorem+0x112>
 80043ae:	459a      	cmp	sl, r3
 80043b0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80043b4:	d3f8      	bcc.n	80043a8 <quorem+0x104>
 80043b6:	6127      	str	r7, [r4, #16]
 80043b8:	4640      	mov	r0, r8
 80043ba:	b003      	add	sp, #12
 80043bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043c0:	2000      	movs	r0, #0
 80043c2:	b003      	add	sp, #12
 80043c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080043c8 <_dtoa_r>:
 80043c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80043cc:	ec55 4b10 	vmov	r4, r5, d0
 80043d0:	b09b      	sub	sp, #108	; 0x6c
 80043d2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80043d4:	9102      	str	r1, [sp, #8]
 80043d6:	4681      	mov	r9, r0
 80043d8:	9207      	str	r2, [sp, #28]
 80043da:	9305      	str	r3, [sp, #20]
 80043dc:	e9cd 4500 	strd	r4, r5, [sp]
 80043e0:	b156      	cbz	r6, 80043f8 <_dtoa_r+0x30>
 80043e2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80043e4:	6072      	str	r2, [r6, #4]
 80043e6:	2301      	movs	r3, #1
 80043e8:	4093      	lsls	r3, r2
 80043ea:	60b3      	str	r3, [r6, #8]
 80043ec:	4631      	mov	r1, r6
 80043ee:	f001 ff07 	bl	8006200 <_Bfree>
 80043f2:	2300      	movs	r3, #0
 80043f4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80043f8:	f1b5 0800 	subs.w	r8, r5, #0
 80043fc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80043fe:	bfb4      	ite	lt
 8004400:	2301      	movlt	r3, #1
 8004402:	2300      	movge	r3, #0
 8004404:	6013      	str	r3, [r2, #0]
 8004406:	4b76      	ldr	r3, [pc, #472]	; (80045e0 <_dtoa_r+0x218>)
 8004408:	bfbc      	itt	lt
 800440a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800440e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004412:	ea33 0308 	bics.w	r3, r3, r8
 8004416:	f000 80a6 	beq.w	8004566 <_dtoa_r+0x19e>
 800441a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800441e:	2200      	movs	r2, #0
 8004420:	2300      	movs	r3, #0
 8004422:	4630      	mov	r0, r6
 8004424:	4639      	mov	r1, r7
 8004426:	f7fc fb0f 	bl	8000a48 <__aeabi_dcmpeq>
 800442a:	4605      	mov	r5, r0
 800442c:	b178      	cbz	r0, 800444e <_dtoa_r+0x86>
 800442e:	9a05      	ldr	r2, [sp, #20]
 8004430:	2301      	movs	r3, #1
 8004432:	6013      	str	r3, [r2, #0]
 8004434:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004436:	2b00      	cmp	r3, #0
 8004438:	f000 80c0 	beq.w	80045bc <_dtoa_r+0x1f4>
 800443c:	4b69      	ldr	r3, [pc, #420]	; (80045e4 <_dtoa_r+0x21c>)
 800443e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004440:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004444:	6013      	str	r3, [r2, #0]
 8004446:	4658      	mov	r0, fp
 8004448:	b01b      	add	sp, #108	; 0x6c
 800444a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800444e:	aa18      	add	r2, sp, #96	; 0x60
 8004450:	a919      	add	r1, sp, #100	; 0x64
 8004452:	ec47 6b10 	vmov	d0, r6, r7
 8004456:	4648      	mov	r0, r9
 8004458:	f002 f954 	bl	8006704 <__d2b>
 800445c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004460:	4682      	mov	sl, r0
 8004462:	f040 80a0 	bne.w	80045a6 <_dtoa_r+0x1de>
 8004466:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800446a:	442c      	add	r4, r5
 800446c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004470:	2b20      	cmp	r3, #32
 8004472:	f340 842c 	ble.w	8004cce <_dtoa_r+0x906>
 8004476:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800447a:	fa08 f803 	lsl.w	r8, r8, r3
 800447e:	9b00      	ldr	r3, [sp, #0]
 8004480:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004484:	fa23 f000 	lsr.w	r0, r3, r0
 8004488:	ea48 0000 	orr.w	r0, r8, r0
 800448c:	f7fb fffa 	bl	8000484 <__aeabi_ui2d>
 8004490:	2301      	movs	r3, #1
 8004492:	4606      	mov	r6, r0
 8004494:	3c01      	subs	r4, #1
 8004496:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800449a:	930f      	str	r3, [sp, #60]	; 0x3c
 800449c:	4630      	mov	r0, r6
 800449e:	4639      	mov	r1, r7
 80044a0:	2200      	movs	r2, #0
 80044a2:	4b51      	ldr	r3, [pc, #324]	; (80045e8 <_dtoa_r+0x220>)
 80044a4:	f7fb feb0 	bl	8000208 <__aeabi_dsub>
 80044a8:	a347      	add	r3, pc, #284	; (adr r3, 80045c8 <_dtoa_r+0x200>)
 80044aa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044ae:	f7fc f863 	bl	8000578 <__aeabi_dmul>
 80044b2:	a347      	add	r3, pc, #284	; (adr r3, 80045d0 <_dtoa_r+0x208>)
 80044b4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044b8:	f7fb fea8 	bl	800020c <__adddf3>
 80044bc:	4606      	mov	r6, r0
 80044be:	4620      	mov	r0, r4
 80044c0:	460f      	mov	r7, r1
 80044c2:	f7fb ffef 	bl	80004a4 <__aeabi_i2d>
 80044c6:	a344      	add	r3, pc, #272	; (adr r3, 80045d8 <_dtoa_r+0x210>)
 80044c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044cc:	f7fc f854 	bl	8000578 <__aeabi_dmul>
 80044d0:	4602      	mov	r2, r0
 80044d2:	460b      	mov	r3, r1
 80044d4:	4630      	mov	r0, r6
 80044d6:	4639      	mov	r1, r7
 80044d8:	f7fb fe98 	bl	800020c <__adddf3>
 80044dc:	4606      	mov	r6, r0
 80044de:	460f      	mov	r7, r1
 80044e0:	f7fc fae4 	bl	8000aac <__aeabi_d2iz>
 80044e4:	2200      	movs	r2, #0
 80044e6:	9006      	str	r0, [sp, #24]
 80044e8:	2300      	movs	r3, #0
 80044ea:	4630      	mov	r0, r6
 80044ec:	4639      	mov	r1, r7
 80044ee:	f7fc fab5 	bl	8000a5c <__aeabi_dcmplt>
 80044f2:	2800      	cmp	r0, #0
 80044f4:	f040 8273 	bne.w	80049de <_dtoa_r+0x616>
 80044f8:	9e06      	ldr	r6, [sp, #24]
 80044fa:	2e16      	cmp	r6, #22
 80044fc:	f200 825d 	bhi.w	80049ba <_dtoa_r+0x5f2>
 8004500:	4b3a      	ldr	r3, [pc, #232]	; (80045ec <_dtoa_r+0x224>)
 8004502:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004506:	e9d3 0100 	ldrd	r0, r1, [r3]
 800450a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800450e:	f7fc fac3 	bl	8000a98 <__aeabi_dcmpgt>
 8004512:	2800      	cmp	r0, #0
 8004514:	f000 83d7 	beq.w	8004cc6 <_dtoa_r+0x8fe>
 8004518:	1e73      	subs	r3, r6, #1
 800451a:	9306      	str	r3, [sp, #24]
 800451c:	2300      	movs	r3, #0
 800451e:	930d      	str	r3, [sp, #52]	; 0x34
 8004520:	1b2c      	subs	r4, r5, r4
 8004522:	f1b4 0801 	subs.w	r8, r4, #1
 8004526:	f100 8254 	bmi.w	80049d2 <_dtoa_r+0x60a>
 800452a:	2300      	movs	r3, #0
 800452c:	9308      	str	r3, [sp, #32]
 800452e:	9b06      	ldr	r3, [sp, #24]
 8004530:	2b00      	cmp	r3, #0
 8004532:	f2c0 8245 	blt.w	80049c0 <_dtoa_r+0x5f8>
 8004536:	4498      	add	r8, r3
 8004538:	930c      	str	r3, [sp, #48]	; 0x30
 800453a:	2300      	movs	r3, #0
 800453c:	930b      	str	r3, [sp, #44]	; 0x2c
 800453e:	9b02      	ldr	r3, [sp, #8]
 8004540:	2b09      	cmp	r3, #9
 8004542:	d85b      	bhi.n	80045fc <_dtoa_r+0x234>
 8004544:	2b05      	cmp	r3, #5
 8004546:	f340 83c0 	ble.w	8004cca <_dtoa_r+0x902>
 800454a:	3b04      	subs	r3, #4
 800454c:	9302      	str	r3, [sp, #8]
 800454e:	2500      	movs	r5, #0
 8004550:	9b02      	ldr	r3, [sp, #8]
 8004552:	3b02      	subs	r3, #2
 8004554:	2b03      	cmp	r3, #3
 8004556:	f200 8498 	bhi.w	8004e8a <_dtoa_r+0xac2>
 800455a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800455e:	03df      	.short	0x03df
 8004560:	03e803bf 	.word	0x03e803bf
 8004564:	04f5      	.short	0x04f5
 8004566:	9a05      	ldr	r2, [sp, #20]
 8004568:	f242 730f 	movw	r3, #9999	; 0x270f
 800456c:	6013      	str	r3, [r2, #0]
 800456e:	9b00      	ldr	r3, [sp, #0]
 8004570:	b983      	cbnz	r3, 8004594 <_dtoa_r+0x1cc>
 8004572:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004576:	b96b      	cbnz	r3, 8004594 <_dtoa_r+0x1cc>
 8004578:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800457a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80045f0 <_dtoa_r+0x228>
 800457e:	2b00      	cmp	r3, #0
 8004580:	f43f af61 	beq.w	8004446 <_dtoa_r+0x7e>
 8004584:	f10b 0308 	add.w	r3, fp, #8
 8004588:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800458a:	4658      	mov	r0, fp
 800458c:	6013      	str	r3, [r2, #0]
 800458e:	b01b      	add	sp, #108	; 0x6c
 8004590:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004594:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004596:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80045f4 <_dtoa_r+0x22c>
 800459a:	2b00      	cmp	r3, #0
 800459c:	f43f af53 	beq.w	8004446 <_dtoa_r+0x7e>
 80045a0:	f10b 0303 	add.w	r3, fp, #3
 80045a4:	e7f0      	b.n	8004588 <_dtoa_r+0x1c0>
 80045a6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80045aa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80045ae:	950f      	str	r5, [sp, #60]	; 0x3c
 80045b0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80045b4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80045b8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80045ba:	e76f      	b.n	800449c <_dtoa_r+0xd4>
 80045bc:	f8df b038 	ldr.w	fp, [pc, #56]	; 80045f8 <_dtoa_r+0x230>
 80045c0:	4658      	mov	r0, fp
 80045c2:	b01b      	add	sp, #108	; 0x6c
 80045c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045c8:	636f4361 	.word	0x636f4361
 80045cc:	3fd287a7 	.word	0x3fd287a7
 80045d0:	8b60c8b3 	.word	0x8b60c8b3
 80045d4:	3fc68a28 	.word	0x3fc68a28
 80045d8:	509f79fb 	.word	0x509f79fb
 80045dc:	3fd34413 	.word	0x3fd34413
 80045e0:	7ff00000 	.word	0x7ff00000
 80045e4:	080073f5 	.word	0x080073f5
 80045e8:	3ff80000 	.word	0x3ff80000
 80045ec:	08007450 	.word	0x08007450
 80045f0:	08007418 	.word	0x08007418
 80045f4:	08007424 	.word	0x08007424
 80045f8:	080073f4 	.word	0x080073f4
 80045fc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004600:	2501      	movs	r5, #1
 8004602:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004606:	2300      	movs	r3, #0
 8004608:	9302      	str	r3, [sp, #8]
 800460a:	9307      	str	r3, [sp, #28]
 800460c:	2100      	movs	r1, #0
 800460e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004612:	940e      	str	r4, [sp, #56]	; 0x38
 8004614:	4648      	mov	r0, r9
 8004616:	f001 fdcd 	bl	80061b4 <_Balloc>
 800461a:	2c0e      	cmp	r4, #14
 800461c:	4683      	mov	fp, r0
 800461e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004622:	f200 80fb 	bhi.w	800481c <_dtoa_r+0x454>
 8004626:	2d00      	cmp	r5, #0
 8004628:	f000 80f8 	beq.w	800481c <_dtoa_r+0x454>
 800462c:	ed9d 7b00 	vldr	d7, [sp]
 8004630:	9906      	ldr	r1, [sp, #24]
 8004632:	2900      	cmp	r1, #0
 8004634:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004638:	f340 83e5 	ble.w	8004e06 <_dtoa_r+0xa3e>
 800463c:	4b9d      	ldr	r3, [pc, #628]	; (80048b4 <_dtoa_r+0x4ec>)
 800463e:	f001 020f 	and.w	r2, r1, #15
 8004642:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004646:	ed93 7b00 	vldr	d7, [r3]
 800464a:	110c      	asrs	r4, r1, #4
 800464c:	06e2      	lsls	r2, r4, #27
 800464e:	ed8d 7b00 	vstr	d7, [sp]
 8004652:	f140 849e 	bpl.w	8004f92 <_dtoa_r+0xbca>
 8004656:	4b98      	ldr	r3, [pc, #608]	; (80048b8 <_dtoa_r+0x4f0>)
 8004658:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800465c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004660:	f7fc f8b4 	bl	80007cc <__aeabi_ddiv>
 8004664:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004668:	f004 040f 	and.w	r4, r4, #15
 800466c:	2603      	movs	r6, #3
 800466e:	b17c      	cbz	r4, 8004690 <_dtoa_r+0x2c8>
 8004670:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004674:	4d90      	ldr	r5, [pc, #576]	; (80048b8 <_dtoa_r+0x4f0>)
 8004676:	07e3      	lsls	r3, r4, #31
 8004678:	d504      	bpl.n	8004684 <_dtoa_r+0x2bc>
 800467a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800467e:	f7fb ff7b 	bl	8000578 <__aeabi_dmul>
 8004682:	3601      	adds	r6, #1
 8004684:	1064      	asrs	r4, r4, #1
 8004686:	f105 0508 	add.w	r5, r5, #8
 800468a:	d1f4      	bne.n	8004676 <_dtoa_r+0x2ae>
 800468c:	e9cd 0100 	strd	r0, r1, [sp]
 8004690:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004694:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004698:	f7fc f898 	bl	80007cc <__aeabi_ddiv>
 800469c:	e9cd 0100 	strd	r0, r1, [sp]
 80046a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046a2:	b143      	cbz	r3, 80046b6 <_dtoa_r+0x2ee>
 80046a4:	2200      	movs	r2, #0
 80046a6:	4b85      	ldr	r3, [pc, #532]	; (80048bc <_dtoa_r+0x4f4>)
 80046a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046ac:	f7fc f9d6 	bl	8000a5c <__aeabi_dcmplt>
 80046b0:	2800      	cmp	r0, #0
 80046b2:	f040 84ff 	bne.w	80050b4 <_dtoa_r+0xcec>
 80046b6:	4630      	mov	r0, r6
 80046b8:	f7fb fef4 	bl	80004a4 <__aeabi_i2d>
 80046bc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046c0:	f7fb ff5a 	bl	8000578 <__aeabi_dmul>
 80046c4:	4b7e      	ldr	r3, [pc, #504]	; (80048c0 <_dtoa_r+0x4f8>)
 80046c6:	2200      	movs	r2, #0
 80046c8:	f7fb fda0 	bl	800020c <__adddf3>
 80046cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046ce:	4606      	mov	r6, r0
 80046d0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80046d4:	2b00      	cmp	r3, #0
 80046d6:	f000 841c 	beq.w	8004f12 <_dtoa_r+0xb4a>
 80046da:	9b06      	ldr	r3, [sp, #24]
 80046dc:	9316      	str	r3, [sp, #88]	; 0x58
 80046de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046e0:	9312      	str	r3, [sp, #72]	; 0x48
 80046e2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046e6:	f7fc f9e1 	bl	8000aac <__aeabi_d2iz>
 80046ea:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80046ec:	4b71      	ldr	r3, [pc, #452]	; (80048b4 <_dtoa_r+0x4ec>)
 80046ee:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046f2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80046f6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80046fa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80046fe:	f7fb fed1 	bl	80004a4 <__aeabi_i2d>
 8004702:	460b      	mov	r3, r1
 8004704:	4602      	mov	r2, r0
 8004706:	e9dd 0100 	ldrd	r0, r1, [sp]
 800470a:	e9cd 6700 	strd	r6, r7, [sp]
 800470e:	f7fb fd7b 	bl	8000208 <__aeabi_dsub>
 8004712:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004714:	b2ed      	uxtb	r5, r5
 8004716:	4606      	mov	r6, r0
 8004718:	460f      	mov	r7, r1
 800471a:	f10b 0401 	add.w	r4, fp, #1
 800471e:	2b00      	cmp	r3, #0
 8004720:	f000 8458 	beq.w	8004fd4 <_dtoa_r+0xc0c>
 8004724:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004728:	2000      	movs	r0, #0
 800472a:	4966      	ldr	r1, [pc, #408]	; (80048c4 <_dtoa_r+0x4fc>)
 800472c:	f7fc f84e 	bl	80007cc <__aeabi_ddiv>
 8004730:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004734:	f7fb fd68 	bl	8000208 <__aeabi_dsub>
 8004738:	f88b 5000 	strb.w	r5, [fp]
 800473c:	4632      	mov	r2, r6
 800473e:	463b      	mov	r3, r7
 8004740:	e9cd 0100 	strd	r0, r1, [sp]
 8004744:	f7fc f9a8 	bl	8000a98 <__aeabi_dcmpgt>
 8004748:	2800      	cmp	r0, #0
 800474a:	f040 8502 	bne.w	8005152 <_dtoa_r+0xd8a>
 800474e:	4632      	mov	r2, r6
 8004750:	463b      	mov	r3, r7
 8004752:	2000      	movs	r0, #0
 8004754:	4959      	ldr	r1, [pc, #356]	; (80048bc <_dtoa_r+0x4f4>)
 8004756:	f7fb fd57 	bl	8000208 <__aeabi_dsub>
 800475a:	4602      	mov	r2, r0
 800475c:	460b      	mov	r3, r1
 800475e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004762:	f7fc f999 	bl	8000a98 <__aeabi_dcmpgt>
 8004766:	2800      	cmp	r0, #0
 8004768:	f040 84fb 	bne.w	8005162 <_dtoa_r+0xd9a>
 800476c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800476e:	2a01      	cmp	r2, #1
 8004770:	d050      	beq.n	8004814 <_dtoa_r+0x44c>
 8004772:	445a      	add	r2, fp
 8004774:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004778:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800477c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004780:	4692      	mov	sl, r2
 8004782:	46cb      	mov	fp, r9
 8004784:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004788:	e00c      	b.n	80047a4 <_dtoa_r+0x3dc>
 800478a:	2000      	movs	r0, #0
 800478c:	494b      	ldr	r1, [pc, #300]	; (80048bc <_dtoa_r+0x4f4>)
 800478e:	f7fb fd3b 	bl	8000208 <__aeabi_dsub>
 8004792:	4642      	mov	r2, r8
 8004794:	464b      	mov	r3, r9
 8004796:	f7fc f961 	bl	8000a5c <__aeabi_dcmplt>
 800479a:	2800      	cmp	r0, #0
 800479c:	f040 84dc 	bne.w	8005158 <_dtoa_r+0xd90>
 80047a0:	4554      	cmp	r4, sl
 80047a2:	d030      	beq.n	8004806 <_dtoa_r+0x43e>
 80047a4:	4640      	mov	r0, r8
 80047a6:	4649      	mov	r1, r9
 80047a8:	2200      	movs	r2, #0
 80047aa:	4b47      	ldr	r3, [pc, #284]	; (80048c8 <_dtoa_r+0x500>)
 80047ac:	f7fb fee4 	bl	8000578 <__aeabi_dmul>
 80047b0:	2200      	movs	r2, #0
 80047b2:	4b45      	ldr	r3, [pc, #276]	; (80048c8 <_dtoa_r+0x500>)
 80047b4:	4680      	mov	r8, r0
 80047b6:	4689      	mov	r9, r1
 80047b8:	4630      	mov	r0, r6
 80047ba:	4639      	mov	r1, r7
 80047bc:	f7fb fedc 	bl	8000578 <__aeabi_dmul>
 80047c0:	460f      	mov	r7, r1
 80047c2:	4606      	mov	r6, r0
 80047c4:	f7fc f972 	bl	8000aac <__aeabi_d2iz>
 80047c8:	4605      	mov	r5, r0
 80047ca:	f7fb fe6b 	bl	80004a4 <__aeabi_i2d>
 80047ce:	4602      	mov	r2, r0
 80047d0:	460b      	mov	r3, r1
 80047d2:	4630      	mov	r0, r6
 80047d4:	4639      	mov	r1, r7
 80047d6:	f7fb fd17 	bl	8000208 <__aeabi_dsub>
 80047da:	3530      	adds	r5, #48	; 0x30
 80047dc:	b2ed      	uxtb	r5, r5
 80047de:	4642      	mov	r2, r8
 80047e0:	464b      	mov	r3, r9
 80047e2:	f804 5b01 	strb.w	r5, [r4], #1
 80047e6:	4606      	mov	r6, r0
 80047e8:	460f      	mov	r7, r1
 80047ea:	f7fc f937 	bl	8000a5c <__aeabi_dcmplt>
 80047ee:	4632      	mov	r2, r6
 80047f0:	463b      	mov	r3, r7
 80047f2:	2800      	cmp	r0, #0
 80047f4:	d0c9      	beq.n	800478a <_dtoa_r+0x3c2>
 80047f6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80047f8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80047fc:	9306      	str	r3, [sp, #24]
 80047fe:	46d9      	mov	r9, fp
 8004800:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004804:	e236      	b.n	8004c74 <_dtoa_r+0x8ac>
 8004806:	46d9      	mov	r9, fp
 8004808:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800480c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004810:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004814:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004818:	e9cd 3400 	strd	r3, r4, [sp]
 800481c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800481e:	2b00      	cmp	r3, #0
 8004820:	f2c0 80ae 	blt.w	8004980 <_dtoa_r+0x5b8>
 8004824:	9a06      	ldr	r2, [sp, #24]
 8004826:	2a0e      	cmp	r2, #14
 8004828:	f300 80aa 	bgt.w	8004980 <_dtoa_r+0x5b8>
 800482c:	4b21      	ldr	r3, [pc, #132]	; (80048b4 <_dtoa_r+0x4ec>)
 800482e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004832:	ed93 7b00 	vldr	d7, [r3]
 8004836:	9b07      	ldr	r3, [sp, #28]
 8004838:	2b00      	cmp	r3, #0
 800483a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800483e:	f2c0 82be 	blt.w	8004dbe <_dtoa_r+0x9f6>
 8004842:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004846:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800484a:	4630      	mov	r0, r6
 800484c:	4639      	mov	r1, r7
 800484e:	f7fb ffbd 	bl	80007cc <__aeabi_ddiv>
 8004852:	f7fc f92b 	bl	8000aac <__aeabi_d2iz>
 8004856:	4605      	mov	r5, r0
 8004858:	f7fb fe24 	bl	80004a4 <__aeabi_i2d>
 800485c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004860:	f7fb fe8a 	bl	8000578 <__aeabi_dmul>
 8004864:	460b      	mov	r3, r1
 8004866:	4602      	mov	r2, r0
 8004868:	4639      	mov	r1, r7
 800486a:	4630      	mov	r0, r6
 800486c:	f7fb fccc 	bl	8000208 <__aeabi_dsub>
 8004870:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004874:	f88b 3000 	strb.w	r3, [fp]
 8004878:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800487a:	2b01      	cmp	r3, #1
 800487c:	4606      	mov	r6, r0
 800487e:	460f      	mov	r7, r1
 8004880:	f10b 0401 	add.w	r4, fp, #1
 8004884:	d053      	beq.n	800492e <_dtoa_r+0x566>
 8004886:	2200      	movs	r2, #0
 8004888:	4b0f      	ldr	r3, [pc, #60]	; (80048c8 <_dtoa_r+0x500>)
 800488a:	f7fb fe75 	bl	8000578 <__aeabi_dmul>
 800488e:	2200      	movs	r2, #0
 8004890:	2300      	movs	r3, #0
 8004892:	4606      	mov	r6, r0
 8004894:	460f      	mov	r7, r1
 8004896:	f7fc f8d7 	bl	8000a48 <__aeabi_dcmpeq>
 800489a:	2800      	cmp	r0, #0
 800489c:	f040 81ea 	bne.w	8004c74 <_dtoa_r+0x8ac>
 80048a0:	f8cd a000 	str.w	sl, [sp]
 80048a4:	f8cd 901c 	str.w	r9, [sp, #28]
 80048a8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80048ac:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80048b0:	e017      	b.n	80048e2 <_dtoa_r+0x51a>
 80048b2:	bf00      	nop
 80048b4:	08007450 	.word	0x08007450
 80048b8:	08007428 	.word	0x08007428
 80048bc:	3ff00000 	.word	0x3ff00000
 80048c0:	401c0000 	.word	0x401c0000
 80048c4:	3fe00000 	.word	0x3fe00000
 80048c8:	40240000 	.word	0x40240000
 80048cc:	f7fb fe54 	bl	8000578 <__aeabi_dmul>
 80048d0:	2200      	movs	r2, #0
 80048d2:	2300      	movs	r3, #0
 80048d4:	4606      	mov	r6, r0
 80048d6:	460f      	mov	r7, r1
 80048d8:	f7fc f8b6 	bl	8000a48 <__aeabi_dcmpeq>
 80048dc:	2800      	cmp	r0, #0
 80048de:	f040 833d 	bne.w	8004f5c <_dtoa_r+0xb94>
 80048e2:	464a      	mov	r2, r9
 80048e4:	4653      	mov	r3, sl
 80048e6:	4630      	mov	r0, r6
 80048e8:	4639      	mov	r1, r7
 80048ea:	f7fb ff6f 	bl	80007cc <__aeabi_ddiv>
 80048ee:	f7fc f8dd 	bl	8000aac <__aeabi_d2iz>
 80048f2:	4605      	mov	r5, r0
 80048f4:	f7fb fdd6 	bl	80004a4 <__aeabi_i2d>
 80048f8:	464a      	mov	r2, r9
 80048fa:	4653      	mov	r3, sl
 80048fc:	f7fb fe3c 	bl	8000578 <__aeabi_dmul>
 8004900:	4602      	mov	r2, r0
 8004902:	460b      	mov	r3, r1
 8004904:	4630      	mov	r0, r6
 8004906:	4639      	mov	r1, r7
 8004908:	f7fb fc7e 	bl	8000208 <__aeabi_dsub>
 800490c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004910:	f804 cb01 	strb.w	ip, [r4], #1
 8004914:	eba4 0c0b 	sub.w	ip, r4, fp
 8004918:	45e0      	cmp	r8, ip
 800491a:	4606      	mov	r6, r0
 800491c:	460f      	mov	r7, r1
 800491e:	f04f 0200 	mov.w	r2, #0
 8004922:	4bc1      	ldr	r3, [pc, #772]	; (8004c28 <_dtoa_r+0x860>)
 8004924:	d1d2      	bne.n	80048cc <_dtoa_r+0x504>
 8004926:	f8dd a000 	ldr.w	sl, [sp]
 800492a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800492e:	4632      	mov	r2, r6
 8004930:	463b      	mov	r3, r7
 8004932:	4630      	mov	r0, r6
 8004934:	4639      	mov	r1, r7
 8004936:	f7fb fc69 	bl	800020c <__adddf3>
 800493a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800493e:	4606      	mov	r6, r0
 8004940:	460f      	mov	r7, r1
 8004942:	f7fc f8a9 	bl	8000a98 <__aeabi_dcmpgt>
 8004946:	b958      	cbnz	r0, 8004960 <_dtoa_r+0x598>
 8004948:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800494c:	4630      	mov	r0, r6
 800494e:	4639      	mov	r1, r7
 8004950:	f7fc f87a 	bl	8000a48 <__aeabi_dcmpeq>
 8004954:	2800      	cmp	r0, #0
 8004956:	f000 818d 	beq.w	8004c74 <_dtoa_r+0x8ac>
 800495a:	07e9      	lsls	r1, r5, #31
 800495c:	f140 818a 	bpl.w	8004c74 <_dtoa_r+0x8ac>
 8004960:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004964:	e005      	b.n	8004972 <_dtoa_r+0x5aa>
 8004966:	459b      	cmp	fp, r3
 8004968:	f000 8373 	beq.w	8005052 <_dtoa_r+0xc8a>
 800496c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004970:	461c      	mov	r4, r3
 8004972:	2d39      	cmp	r5, #57	; 0x39
 8004974:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004978:	d0f5      	beq.n	8004966 <_dtoa_r+0x59e>
 800497a:	3501      	adds	r5, #1
 800497c:	701d      	strb	r5, [r3, #0]
 800497e:	e179      	b.n	8004c74 <_dtoa_r+0x8ac>
 8004980:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004982:	2a00      	cmp	r2, #0
 8004984:	d03b      	beq.n	80049fe <_dtoa_r+0x636>
 8004986:	9a02      	ldr	r2, [sp, #8]
 8004988:	2a01      	cmp	r2, #1
 800498a:	f340 820b 	ble.w	8004da4 <_dtoa_r+0x9dc>
 800498e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004990:	1e5f      	subs	r7, r3, #1
 8004992:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004994:	42bb      	cmp	r3, r7
 8004996:	f2c0 82e6 	blt.w	8004f66 <_dtoa_r+0xb9e>
 800499a:	1bdf      	subs	r7, r3, r7
 800499c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800499e:	2b00      	cmp	r3, #0
 80049a0:	f2c0 830b 	blt.w	8004fba <_dtoa_r+0xbf2>
 80049a4:	9a08      	ldr	r2, [sp, #32]
 80049a6:	4614      	mov	r4, r2
 80049a8:	441a      	add	r2, r3
 80049aa:	4498      	add	r8, r3
 80049ac:	9208      	str	r2, [sp, #32]
 80049ae:	2101      	movs	r1, #1
 80049b0:	4648      	mov	r0, r9
 80049b2:	f001 fcbf 	bl	8006334 <__i2b>
 80049b6:	4605      	mov	r5, r0
 80049b8:	e024      	b.n	8004a04 <_dtoa_r+0x63c>
 80049ba:	2301      	movs	r3, #1
 80049bc:	930d      	str	r3, [sp, #52]	; 0x34
 80049be:	e5af      	b.n	8004520 <_dtoa_r+0x158>
 80049c0:	9a08      	ldr	r2, [sp, #32]
 80049c2:	9b06      	ldr	r3, [sp, #24]
 80049c4:	1ad2      	subs	r2, r2, r3
 80049c6:	425b      	negs	r3, r3
 80049c8:	930b      	str	r3, [sp, #44]	; 0x2c
 80049ca:	2300      	movs	r3, #0
 80049cc:	9208      	str	r2, [sp, #32]
 80049ce:	930c      	str	r3, [sp, #48]	; 0x30
 80049d0:	e5b5      	b.n	800453e <_dtoa_r+0x176>
 80049d2:	f1c4 0301 	rsb	r3, r4, #1
 80049d6:	9308      	str	r3, [sp, #32]
 80049d8:	f04f 0800 	mov.w	r8, #0
 80049dc:	e5a7      	b.n	800452e <_dtoa_r+0x166>
 80049de:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80049e2:	4640      	mov	r0, r8
 80049e4:	f7fb fd5e 	bl	80004a4 <__aeabi_i2d>
 80049e8:	4632      	mov	r2, r6
 80049ea:	463b      	mov	r3, r7
 80049ec:	f7fc f82c 	bl	8000a48 <__aeabi_dcmpeq>
 80049f0:	2800      	cmp	r0, #0
 80049f2:	f47f ad81 	bne.w	80044f8 <_dtoa_r+0x130>
 80049f6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80049fa:	9306      	str	r3, [sp, #24]
 80049fc:	e57c      	b.n	80044f8 <_dtoa_r+0x130>
 80049fe:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a00:	9c08      	ldr	r4, [sp, #32]
 8004a02:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004a04:	2c00      	cmp	r4, #0
 8004a06:	dd0c      	ble.n	8004a22 <_dtoa_r+0x65a>
 8004a08:	f1b8 0f00 	cmp.w	r8, #0
 8004a0c:	dd09      	ble.n	8004a22 <_dtoa_r+0x65a>
 8004a0e:	4544      	cmp	r4, r8
 8004a10:	9a08      	ldr	r2, [sp, #32]
 8004a12:	4623      	mov	r3, r4
 8004a14:	bfa8      	it	ge
 8004a16:	4643      	movge	r3, r8
 8004a18:	1ad2      	subs	r2, r2, r3
 8004a1a:	9208      	str	r2, [sp, #32]
 8004a1c:	1ae4      	subs	r4, r4, r3
 8004a1e:	eba8 0803 	sub.w	r8, r8, r3
 8004a22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a24:	b16b      	cbz	r3, 8004a42 <_dtoa_r+0x67a>
 8004a26:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a28:	2a00      	cmp	r2, #0
 8004a2a:	f000 8290 	beq.w	8004f4e <_dtoa_r+0xb86>
 8004a2e:	1bde      	subs	r6, r3, r7
 8004a30:	2f00      	cmp	r7, #0
 8004a32:	f040 819b 	bne.w	8004d6c <_dtoa_r+0x9a4>
 8004a36:	4651      	mov	r1, sl
 8004a38:	4632      	mov	r2, r6
 8004a3a:	4648      	mov	r0, r9
 8004a3c:	f001 fd2a 	bl	8006494 <__pow5mult>
 8004a40:	4682      	mov	sl, r0
 8004a42:	2101      	movs	r1, #1
 8004a44:	4648      	mov	r0, r9
 8004a46:	f001 fc75 	bl	8006334 <__i2b>
 8004a4a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a4c:	4606      	mov	r6, r0
 8004a4e:	2a00      	cmp	r2, #0
 8004a50:	f040 8125 	bne.w	8004c9e <_dtoa_r+0x8d6>
 8004a54:	9b02      	ldr	r3, [sp, #8]
 8004a56:	2b01      	cmp	r3, #1
 8004a58:	f340 816c 	ble.w	8004d34 <_dtoa_r+0x96c>
 8004a5c:	2001      	movs	r0, #1
 8004a5e:	4440      	add	r0, r8
 8004a60:	f010 001f 	ands.w	r0, r0, #31
 8004a64:	f000 8119 	beq.w	8004c9a <_dtoa_r+0x8d2>
 8004a68:	f1c0 0320 	rsb	r3, r0, #32
 8004a6c:	2b04      	cmp	r3, #4
 8004a6e:	f340 83ac 	ble.w	80051ca <_dtoa_r+0xe02>
 8004a72:	f1c0 001c 	rsb	r0, r0, #28
 8004a76:	9b08      	ldr	r3, [sp, #32]
 8004a78:	4403      	add	r3, r0
 8004a7a:	9308      	str	r3, [sp, #32]
 8004a7c:	4404      	add	r4, r0
 8004a7e:	4480      	add	r8, r0
 8004a80:	9b08      	ldr	r3, [sp, #32]
 8004a82:	2b00      	cmp	r3, #0
 8004a84:	dd05      	ble.n	8004a92 <_dtoa_r+0x6ca>
 8004a86:	4651      	mov	r1, sl
 8004a88:	461a      	mov	r2, r3
 8004a8a:	4648      	mov	r0, r9
 8004a8c:	f001 fd52 	bl	8006534 <__lshift>
 8004a90:	4682      	mov	sl, r0
 8004a92:	f1b8 0f00 	cmp.w	r8, #0
 8004a96:	dd05      	ble.n	8004aa4 <_dtoa_r+0x6dc>
 8004a98:	4631      	mov	r1, r6
 8004a9a:	4642      	mov	r2, r8
 8004a9c:	4648      	mov	r0, r9
 8004a9e:	f001 fd49 	bl	8006534 <__lshift>
 8004aa2:	4606      	mov	r6, r0
 8004aa4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004aa6:	2b00      	cmp	r3, #0
 8004aa8:	d177      	bne.n	8004b9a <_dtoa_r+0x7d2>
 8004aaa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004aac:	2b00      	cmp	r3, #0
 8004aae:	f340 8209 	ble.w	8004ec4 <_dtoa_r+0xafc>
 8004ab2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ab4:	2b00      	cmp	r3, #0
 8004ab6:	f000 8089 	beq.w	8004bcc <_dtoa_r+0x804>
 8004aba:	2c00      	cmp	r4, #0
 8004abc:	f300 816b 	bgt.w	8004d96 <_dtoa_r+0x9ce>
 8004ac0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004ac2:	2b00      	cmp	r3, #0
 8004ac4:	f040 81cd 	bne.w	8004e62 <_dtoa_r+0xa9a>
 8004ac8:	46a8      	mov	r8, r5
 8004aca:	9a00      	ldr	r2, [sp, #0]
 8004acc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004ad0:	f002 0201 	and.w	r2, r2, #1
 8004ad4:	920a      	str	r2, [sp, #40]	; 0x28
 8004ad6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004ad8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004adc:	441a      	add	r2, r3
 8004ade:	465f      	mov	r7, fp
 8004ae0:	9209      	str	r2, [sp, #36]	; 0x24
 8004ae2:	46b3      	mov	fp, r6
 8004ae4:	4659      	mov	r1, fp
 8004ae6:	4650      	mov	r0, sl
 8004ae8:	f7ff fbdc 	bl	80042a4 <quorem>
 8004aec:	4629      	mov	r1, r5
 8004aee:	4604      	mov	r4, r0
 8004af0:	4650      	mov	r0, sl
 8004af2:	f001 fd75 	bl	80065e0 <__mcmp>
 8004af6:	4659      	mov	r1, fp
 8004af8:	4606      	mov	r6, r0
 8004afa:	4642      	mov	r2, r8
 8004afc:	4648      	mov	r0, r9
 8004afe:	f001 fd8b 	bl	8006618 <__mdiff>
 8004b02:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004b06:	9300      	str	r3, [sp, #0]
 8004b08:	68c3      	ldr	r3, [r0, #12]
 8004b0a:	4601      	mov	r1, r0
 8004b0c:	2b00      	cmp	r3, #0
 8004b0e:	f040 81d4 	bne.w	8004eba <_dtoa_r+0xaf2>
 8004b12:	9008      	str	r0, [sp, #32]
 8004b14:	4650      	mov	r0, sl
 8004b16:	f001 fd63 	bl	80065e0 <__mcmp>
 8004b1a:	9a08      	ldr	r2, [sp, #32]
 8004b1c:	9007      	str	r0, [sp, #28]
 8004b1e:	4611      	mov	r1, r2
 8004b20:	4648      	mov	r0, r9
 8004b22:	f001 fb6d 	bl	8006200 <_Bfree>
 8004b26:	9b07      	ldr	r3, [sp, #28]
 8004b28:	b933      	cbnz	r3, 8004b38 <_dtoa_r+0x770>
 8004b2a:	9a02      	ldr	r2, [sp, #8]
 8004b2c:	b922      	cbnz	r2, 8004b38 <_dtoa_r+0x770>
 8004b2e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b30:	2b00      	cmp	r3, #0
 8004b32:	f000 8319 	beq.w	8005168 <_dtoa_r+0xda0>
 8004b36:	9b02      	ldr	r3, [sp, #8]
 8004b38:	2e00      	cmp	r6, #0
 8004b3a:	f2c0 821c 	blt.w	8004f76 <_dtoa_r+0xbae>
 8004b3e:	d105      	bne.n	8004b4c <_dtoa_r+0x784>
 8004b40:	9a02      	ldr	r2, [sp, #8]
 8004b42:	b91a      	cbnz	r2, 8004b4c <_dtoa_r+0x784>
 8004b44:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b46:	2a00      	cmp	r2, #0
 8004b48:	f000 8215 	beq.w	8004f76 <_dtoa_r+0xbae>
 8004b4c:	2b00      	cmp	r3, #0
 8004b4e:	f107 0401 	add.w	r4, r7, #1
 8004b52:	f300 8225 	bgt.w	8004fa0 <_dtoa_r+0xbd8>
 8004b56:	9b00      	ldr	r3, [sp, #0]
 8004b58:	703b      	strb	r3, [r7, #0]
 8004b5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b5c:	42bb      	cmp	r3, r7
 8004b5e:	f000 8230 	beq.w	8004fc2 <_dtoa_r+0xbfa>
 8004b62:	4651      	mov	r1, sl
 8004b64:	2300      	movs	r3, #0
 8004b66:	220a      	movs	r2, #10
 8004b68:	4648      	mov	r0, r9
 8004b6a:	f001 fb53 	bl	8006214 <__multadd>
 8004b6e:	4545      	cmp	r5, r8
 8004b70:	4682      	mov	sl, r0
 8004b72:	4629      	mov	r1, r5
 8004b74:	f04f 0300 	mov.w	r3, #0
 8004b78:	f04f 020a 	mov.w	r2, #10
 8004b7c:	4648      	mov	r0, r9
 8004b7e:	f000 8196 	beq.w	8004eae <_dtoa_r+0xae6>
 8004b82:	f001 fb47 	bl	8006214 <__multadd>
 8004b86:	4641      	mov	r1, r8
 8004b88:	4605      	mov	r5, r0
 8004b8a:	2300      	movs	r3, #0
 8004b8c:	220a      	movs	r2, #10
 8004b8e:	4648      	mov	r0, r9
 8004b90:	f001 fb40 	bl	8006214 <__multadd>
 8004b94:	4627      	mov	r7, r4
 8004b96:	4680      	mov	r8, r0
 8004b98:	e7a4      	b.n	8004ae4 <_dtoa_r+0x71c>
 8004b9a:	4631      	mov	r1, r6
 8004b9c:	4650      	mov	r0, sl
 8004b9e:	f001 fd1f 	bl	80065e0 <__mcmp>
 8004ba2:	2800      	cmp	r0, #0
 8004ba4:	da81      	bge.n	8004aaa <_dtoa_r+0x6e2>
 8004ba6:	9f06      	ldr	r7, [sp, #24]
 8004ba8:	4651      	mov	r1, sl
 8004baa:	2300      	movs	r3, #0
 8004bac:	220a      	movs	r2, #10
 8004bae:	4648      	mov	r0, r9
 8004bb0:	3f01      	subs	r7, #1
 8004bb2:	9706      	str	r7, [sp, #24]
 8004bb4:	f001 fb2e 	bl	8006214 <__multadd>
 8004bb8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bba:	4682      	mov	sl, r0
 8004bbc:	2b00      	cmp	r3, #0
 8004bbe:	f040 82eb 	bne.w	8005198 <_dtoa_r+0xdd0>
 8004bc2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004bc4:	2b00      	cmp	r3, #0
 8004bc6:	f340 82f3 	ble.w	80051b0 <_dtoa_r+0xde8>
 8004bca:	9309      	str	r3, [sp, #36]	; 0x24
 8004bcc:	465c      	mov	r4, fp
 8004bce:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004bd2:	e002      	b.n	8004bda <_dtoa_r+0x812>
 8004bd4:	f001 fb1e 	bl	8006214 <__multadd>
 8004bd8:	4682      	mov	sl, r0
 8004bda:	4631      	mov	r1, r6
 8004bdc:	4650      	mov	r0, sl
 8004bde:	f7ff fb61 	bl	80042a4 <quorem>
 8004be2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004be6:	f804 7b01 	strb.w	r7, [r4], #1
 8004bea:	eba4 030b 	sub.w	r3, r4, fp
 8004bee:	4598      	cmp	r8, r3
 8004bf0:	f04f 020a 	mov.w	r2, #10
 8004bf4:	f04f 0300 	mov.w	r3, #0
 8004bf8:	4651      	mov	r1, sl
 8004bfa:	4648      	mov	r0, r9
 8004bfc:	dcea      	bgt.n	8004bd4 <_dtoa_r+0x80c>
 8004bfe:	2300      	movs	r3, #0
 8004c00:	9700      	str	r7, [sp, #0]
 8004c02:	9302      	str	r3, [sp, #8]
 8004c04:	4651      	mov	r1, sl
 8004c06:	2201      	movs	r2, #1
 8004c08:	4648      	mov	r0, r9
 8004c0a:	f001 fc93 	bl	8006534 <__lshift>
 8004c0e:	4631      	mov	r1, r6
 8004c10:	4682      	mov	sl, r0
 8004c12:	f001 fce5 	bl	80065e0 <__mcmp>
 8004c16:	2800      	cmp	r0, #0
 8004c18:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004c1c:	dc14      	bgt.n	8004c48 <_dtoa_r+0x880>
 8004c1e:	d108      	bne.n	8004c32 <_dtoa_r+0x86a>
 8004c20:	9b00      	ldr	r3, [sp, #0]
 8004c22:	07db      	lsls	r3, r3, #31
 8004c24:	d410      	bmi.n	8004c48 <_dtoa_r+0x880>
 8004c26:	e004      	b.n	8004c32 <_dtoa_r+0x86a>
 8004c28:	40240000 	.word	0x40240000
 8004c2c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004c30:	461c      	mov	r4, r3
 8004c32:	2a30      	cmp	r2, #48	; 0x30
 8004c34:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c38:	d0f8      	beq.n	8004c2c <_dtoa_r+0x864>
 8004c3a:	e00b      	b.n	8004c54 <_dtoa_r+0x88c>
 8004c3c:	459b      	cmp	fp, r3
 8004c3e:	f000 814e 	beq.w	8004ede <_dtoa_r+0xb16>
 8004c42:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004c46:	461c      	mov	r4, r3
 8004c48:	2a39      	cmp	r2, #57	; 0x39
 8004c4a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c4e:	d0f5      	beq.n	8004c3c <_dtoa_r+0x874>
 8004c50:	3201      	adds	r2, #1
 8004c52:	701a      	strb	r2, [r3, #0]
 8004c54:	4631      	mov	r1, r6
 8004c56:	4648      	mov	r0, r9
 8004c58:	f001 fad2 	bl	8006200 <_Bfree>
 8004c5c:	b155      	cbz	r5, 8004c74 <_dtoa_r+0x8ac>
 8004c5e:	9902      	ldr	r1, [sp, #8]
 8004c60:	b121      	cbz	r1, 8004c6c <_dtoa_r+0x8a4>
 8004c62:	42a9      	cmp	r1, r5
 8004c64:	d002      	beq.n	8004c6c <_dtoa_r+0x8a4>
 8004c66:	4648      	mov	r0, r9
 8004c68:	f001 faca 	bl	8006200 <_Bfree>
 8004c6c:	4629      	mov	r1, r5
 8004c6e:	4648      	mov	r0, r9
 8004c70:	f001 fac6 	bl	8006200 <_Bfree>
 8004c74:	4651      	mov	r1, sl
 8004c76:	4648      	mov	r0, r9
 8004c78:	f001 fac2 	bl	8006200 <_Bfree>
 8004c7c:	2200      	movs	r2, #0
 8004c7e:	9b06      	ldr	r3, [sp, #24]
 8004c80:	7022      	strb	r2, [r4, #0]
 8004c82:	9a05      	ldr	r2, [sp, #20]
 8004c84:	3301      	adds	r3, #1
 8004c86:	6013      	str	r3, [r2, #0]
 8004c88:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c8a:	2b00      	cmp	r3, #0
 8004c8c:	f43f abdb 	beq.w	8004446 <_dtoa_r+0x7e>
 8004c90:	4658      	mov	r0, fp
 8004c92:	601c      	str	r4, [r3, #0]
 8004c94:	b01b      	add	sp, #108	; 0x6c
 8004c96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c9a:	201c      	movs	r0, #28
 8004c9c:	e6eb      	b.n	8004a76 <_dtoa_r+0x6ae>
 8004c9e:	4601      	mov	r1, r0
 8004ca0:	4648      	mov	r0, r9
 8004ca2:	f001 fbf7 	bl	8006494 <__pow5mult>
 8004ca6:	9b02      	ldr	r3, [sp, #8]
 8004ca8:	2b01      	cmp	r3, #1
 8004caa:	4606      	mov	r6, r0
 8004cac:	f340 80d4 	ble.w	8004e58 <_dtoa_r+0xa90>
 8004cb0:	2300      	movs	r3, #0
 8004cb2:	930c      	str	r3, [sp, #48]	; 0x30
 8004cb4:	6933      	ldr	r3, [r6, #16]
 8004cb6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004cba:	6918      	ldr	r0, [r3, #16]
 8004cbc:	f001 faea 	bl	8006294 <__hi0bits>
 8004cc0:	f1c0 0020 	rsb	r0, r0, #32
 8004cc4:	e6cb      	b.n	8004a5e <_dtoa_r+0x696>
 8004cc6:	900d      	str	r0, [sp, #52]	; 0x34
 8004cc8:	e42a      	b.n	8004520 <_dtoa_r+0x158>
 8004cca:	2501      	movs	r5, #1
 8004ccc:	e440      	b.n	8004550 <_dtoa_r+0x188>
 8004cce:	f1c3 0820 	rsb	r8, r3, #32
 8004cd2:	9b00      	ldr	r3, [sp, #0]
 8004cd4:	fa03 f008 	lsl.w	r0, r3, r8
 8004cd8:	f7ff bbd8 	b.w	800448c <_dtoa_r+0xc4>
 8004cdc:	2300      	movs	r3, #0
 8004cde:	930a      	str	r3, [sp, #40]	; 0x28
 8004ce0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004ce4:	4413      	add	r3, r2
 8004ce6:	930e      	str	r3, [sp, #56]	; 0x38
 8004ce8:	3301      	adds	r3, #1
 8004cea:	2b01      	cmp	r3, #1
 8004cec:	461e      	mov	r6, r3
 8004cee:	9309      	str	r3, [sp, #36]	; 0x24
 8004cf0:	bfb8      	it	lt
 8004cf2:	2601      	movlt	r6, #1
 8004cf4:	2100      	movs	r1, #0
 8004cf6:	2e17      	cmp	r6, #23
 8004cf8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004cfc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004cfe:	f77f ac89 	ble.w	8004614 <_dtoa_r+0x24c>
 8004d02:	2201      	movs	r2, #1
 8004d04:	2304      	movs	r3, #4
 8004d06:	005b      	lsls	r3, r3, #1
 8004d08:	f103 0014 	add.w	r0, r3, #20
 8004d0c:	42b0      	cmp	r0, r6
 8004d0e:	4611      	mov	r1, r2
 8004d10:	f102 0201 	add.w	r2, r2, #1
 8004d14:	d9f7      	bls.n	8004d06 <_dtoa_r+0x93e>
 8004d16:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d1a:	e47b      	b.n	8004614 <_dtoa_r+0x24c>
 8004d1c:	2300      	movs	r3, #0
 8004d1e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d20:	9e07      	ldr	r6, [sp, #28]
 8004d22:	2e00      	cmp	r6, #0
 8004d24:	f340 80e2 	ble.w	8004eec <_dtoa_r+0xb24>
 8004d28:	960e      	str	r6, [sp, #56]	; 0x38
 8004d2a:	9609      	str	r6, [sp, #36]	; 0x24
 8004d2c:	e7e2      	b.n	8004cf4 <_dtoa_r+0x92c>
 8004d2e:	2301      	movs	r3, #1
 8004d30:	930a      	str	r3, [sp, #40]	; 0x28
 8004d32:	e7f5      	b.n	8004d20 <_dtoa_r+0x958>
 8004d34:	9b00      	ldr	r3, [sp, #0]
 8004d36:	2b00      	cmp	r3, #0
 8004d38:	f47f ae90 	bne.w	8004a5c <_dtoa_r+0x694>
 8004d3c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004d40:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004d44:	2b00      	cmp	r3, #0
 8004d46:	f040 8192 	bne.w	800506e <_dtoa_r+0xca6>
 8004d4a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004d4e:	0d1b      	lsrs	r3, r3, #20
 8004d50:	051b      	lsls	r3, r3, #20
 8004d52:	b12b      	cbz	r3, 8004d60 <_dtoa_r+0x998>
 8004d54:	9b08      	ldr	r3, [sp, #32]
 8004d56:	3301      	adds	r3, #1
 8004d58:	9308      	str	r3, [sp, #32]
 8004d5a:	f108 0801 	add.w	r8, r8, #1
 8004d5e:	2301      	movs	r3, #1
 8004d60:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d62:	930c      	str	r3, [sp, #48]	; 0x30
 8004d64:	2a00      	cmp	r2, #0
 8004d66:	f43f ae79 	beq.w	8004a5c <_dtoa_r+0x694>
 8004d6a:	e7a3      	b.n	8004cb4 <_dtoa_r+0x8ec>
 8004d6c:	463a      	mov	r2, r7
 8004d6e:	4629      	mov	r1, r5
 8004d70:	4648      	mov	r0, r9
 8004d72:	f001 fb8f 	bl	8006494 <__pow5mult>
 8004d76:	4652      	mov	r2, sl
 8004d78:	4601      	mov	r1, r0
 8004d7a:	4605      	mov	r5, r0
 8004d7c:	4648      	mov	r0, r9
 8004d7e:	f001 fae3 	bl	8006348 <__multiply>
 8004d82:	4651      	mov	r1, sl
 8004d84:	4607      	mov	r7, r0
 8004d86:	4648      	mov	r0, r9
 8004d88:	f001 fa3a 	bl	8006200 <_Bfree>
 8004d8c:	46ba      	mov	sl, r7
 8004d8e:	2e00      	cmp	r6, #0
 8004d90:	f43f ae57 	beq.w	8004a42 <_dtoa_r+0x67a>
 8004d94:	e64f      	b.n	8004a36 <_dtoa_r+0x66e>
 8004d96:	4629      	mov	r1, r5
 8004d98:	4622      	mov	r2, r4
 8004d9a:	4648      	mov	r0, r9
 8004d9c:	f001 fbca 	bl	8006534 <__lshift>
 8004da0:	4605      	mov	r5, r0
 8004da2:	e68d      	b.n	8004ac0 <_dtoa_r+0x6f8>
 8004da4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004da6:	2a00      	cmp	r2, #0
 8004da8:	f000 815d 	beq.w	8005066 <_dtoa_r+0xc9e>
 8004dac:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004db0:	9a08      	ldr	r2, [sp, #32]
 8004db2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004db4:	4614      	mov	r4, r2
 8004db6:	441a      	add	r2, r3
 8004db8:	4498      	add	r8, r3
 8004dba:	9208      	str	r2, [sp, #32]
 8004dbc:	e5f7      	b.n	80049ae <_dtoa_r+0x5e6>
 8004dbe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dc0:	2b00      	cmp	r3, #0
 8004dc2:	f73f ad3e 	bgt.w	8004842 <_dtoa_r+0x47a>
 8004dc6:	f040 80bc 	bne.w	8004f42 <_dtoa_r+0xb7a>
 8004dca:	ec51 0b17 	vmov	r0, r1, d7
 8004dce:	2200      	movs	r2, #0
 8004dd0:	4bb2      	ldr	r3, [pc, #712]	; (800509c <_dtoa_r+0xcd4>)
 8004dd2:	f7fb fbd1 	bl	8000578 <__aeabi_dmul>
 8004dd6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dda:	f7fb fe53 	bl	8000a84 <__aeabi_dcmpge>
 8004dde:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004de0:	4635      	mov	r5, r6
 8004de2:	2800      	cmp	r0, #0
 8004de4:	d176      	bne.n	8004ed4 <_dtoa_r+0xb0c>
 8004de6:	9a06      	ldr	r2, [sp, #24]
 8004de8:	2331      	movs	r3, #49	; 0x31
 8004dea:	3201      	adds	r2, #1
 8004dec:	9206      	str	r2, [sp, #24]
 8004dee:	f88b 3000 	strb.w	r3, [fp]
 8004df2:	f10b 0401 	add.w	r4, fp, #1
 8004df6:	4631      	mov	r1, r6
 8004df8:	4648      	mov	r0, r9
 8004dfa:	f001 fa01 	bl	8006200 <_Bfree>
 8004dfe:	2d00      	cmp	r5, #0
 8004e00:	f47f af34 	bne.w	8004c6c <_dtoa_r+0x8a4>
 8004e04:	e736      	b.n	8004c74 <_dtoa_r+0x8ac>
 8004e06:	f000 8142 	beq.w	800508e <_dtoa_r+0xcc6>
 8004e0a:	9b06      	ldr	r3, [sp, #24]
 8004e0c:	425c      	negs	r4, r3
 8004e0e:	4ba4      	ldr	r3, [pc, #656]	; (80050a0 <_dtoa_r+0xcd8>)
 8004e10:	f004 020f 	and.w	r2, r4, #15
 8004e14:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e1c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004e20:	f7fb fbaa 	bl	8000578 <__aeabi_dmul>
 8004e24:	1124      	asrs	r4, r4, #4
 8004e26:	e9cd 0100 	strd	r0, r1, [sp]
 8004e2a:	f000 81c6 	beq.w	80051ba <_dtoa_r+0xdf2>
 8004e2e:	4d9d      	ldr	r5, [pc, #628]	; (80050a4 <_dtoa_r+0xcdc>)
 8004e30:	2300      	movs	r3, #0
 8004e32:	2602      	movs	r6, #2
 8004e34:	07e7      	lsls	r7, r4, #31
 8004e36:	d505      	bpl.n	8004e44 <_dtoa_r+0xa7c>
 8004e38:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004e3c:	f7fb fb9c 	bl	8000578 <__aeabi_dmul>
 8004e40:	3601      	adds	r6, #1
 8004e42:	2301      	movs	r3, #1
 8004e44:	1064      	asrs	r4, r4, #1
 8004e46:	f105 0508 	add.w	r5, r5, #8
 8004e4a:	d1f3      	bne.n	8004e34 <_dtoa_r+0xa6c>
 8004e4c:	2b00      	cmp	r3, #0
 8004e4e:	f43f ac27 	beq.w	80046a0 <_dtoa_r+0x2d8>
 8004e52:	e9cd 0100 	strd	r0, r1, [sp]
 8004e56:	e423      	b.n	80046a0 <_dtoa_r+0x2d8>
 8004e58:	9b00      	ldr	r3, [sp, #0]
 8004e5a:	2b00      	cmp	r3, #0
 8004e5c:	f43f af6e 	beq.w	8004d3c <_dtoa_r+0x974>
 8004e60:	e726      	b.n	8004cb0 <_dtoa_r+0x8e8>
 8004e62:	6869      	ldr	r1, [r5, #4]
 8004e64:	4648      	mov	r0, r9
 8004e66:	f001 f9a5 	bl	80061b4 <_Balloc>
 8004e6a:	692b      	ldr	r3, [r5, #16]
 8004e6c:	3302      	adds	r3, #2
 8004e6e:	009a      	lsls	r2, r3, #2
 8004e70:	4604      	mov	r4, r0
 8004e72:	f105 010c 	add.w	r1, r5, #12
 8004e76:	300c      	adds	r0, #12
 8004e78:	f7fb ffc0 	bl	8000dfc <memcpy>
 8004e7c:	4621      	mov	r1, r4
 8004e7e:	2201      	movs	r2, #1
 8004e80:	4648      	mov	r0, r9
 8004e82:	f001 fb57 	bl	8006534 <__lshift>
 8004e86:	4680      	mov	r8, r0
 8004e88:	e61f      	b.n	8004aca <_dtoa_r+0x702>
 8004e8a:	2400      	movs	r4, #0
 8004e8c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004e90:	4621      	mov	r1, r4
 8004e92:	4648      	mov	r0, r9
 8004e94:	f001 f98e 	bl	80061b4 <_Balloc>
 8004e98:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004e9c:	930e      	str	r3, [sp, #56]	; 0x38
 8004e9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004ea0:	2301      	movs	r3, #1
 8004ea2:	4683      	mov	fp, r0
 8004ea4:	9407      	str	r4, [sp, #28]
 8004ea6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004eaa:	930a      	str	r3, [sp, #40]	; 0x28
 8004eac:	e4b6      	b.n	800481c <_dtoa_r+0x454>
 8004eae:	f001 f9b1 	bl	8006214 <__multadd>
 8004eb2:	4627      	mov	r7, r4
 8004eb4:	4605      	mov	r5, r0
 8004eb6:	4680      	mov	r8, r0
 8004eb8:	e614      	b.n	8004ae4 <_dtoa_r+0x71c>
 8004eba:	4648      	mov	r0, r9
 8004ebc:	f001 f9a0 	bl	8006200 <_Bfree>
 8004ec0:	2301      	movs	r3, #1
 8004ec2:	e639      	b.n	8004b38 <_dtoa_r+0x770>
 8004ec4:	9b02      	ldr	r3, [sp, #8]
 8004ec6:	2b02      	cmp	r3, #2
 8004ec8:	f77f adf3 	ble.w	8004ab2 <_dtoa_r+0x6ea>
 8004ecc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ece:	2b00      	cmp	r3, #0
 8004ed0:	f000 80cf 	beq.w	8005072 <_dtoa_r+0xcaa>
 8004ed4:	9b07      	ldr	r3, [sp, #28]
 8004ed6:	43db      	mvns	r3, r3
 8004ed8:	9306      	str	r3, [sp, #24]
 8004eda:	465c      	mov	r4, fp
 8004edc:	e78b      	b.n	8004df6 <_dtoa_r+0xa2e>
 8004ede:	9a06      	ldr	r2, [sp, #24]
 8004ee0:	2331      	movs	r3, #49	; 0x31
 8004ee2:	3201      	adds	r2, #1
 8004ee4:	9206      	str	r2, [sp, #24]
 8004ee6:	f88b 3000 	strb.w	r3, [fp]
 8004eea:	e6b3      	b.n	8004c54 <_dtoa_r+0x88c>
 8004eec:	2401      	movs	r4, #1
 8004eee:	9409      	str	r4, [sp, #36]	; 0x24
 8004ef0:	9407      	str	r4, [sp, #28]
 8004ef2:	f7ff bb8b 	b.w	800460c <_dtoa_r+0x244>
 8004ef6:	4630      	mov	r0, r6
 8004ef8:	f7fb fad4 	bl	80004a4 <__aeabi_i2d>
 8004efc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f00:	f7fb fb3a 	bl	8000578 <__aeabi_dmul>
 8004f04:	2200      	movs	r2, #0
 8004f06:	4b68      	ldr	r3, [pc, #416]	; (80050a8 <_dtoa_r+0xce0>)
 8004f08:	f7fb f980 	bl	800020c <__adddf3>
 8004f0c:	4606      	mov	r6, r0
 8004f0e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f12:	2200      	movs	r2, #0
 8004f14:	4b61      	ldr	r3, [pc, #388]	; (800509c <_dtoa_r+0xcd4>)
 8004f16:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f1a:	f7fb f975 	bl	8000208 <__aeabi_dsub>
 8004f1e:	4632      	mov	r2, r6
 8004f20:	463b      	mov	r3, r7
 8004f22:	4604      	mov	r4, r0
 8004f24:	460d      	mov	r5, r1
 8004f26:	f7fb fdb7 	bl	8000a98 <__aeabi_dcmpgt>
 8004f2a:	2800      	cmp	r0, #0
 8004f2c:	d14f      	bne.n	8004fce <_dtoa_r+0xc06>
 8004f2e:	4632      	mov	r2, r6
 8004f30:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004f34:	4620      	mov	r0, r4
 8004f36:	4629      	mov	r1, r5
 8004f38:	f7fb fd90 	bl	8000a5c <__aeabi_dcmplt>
 8004f3c:	2800      	cmp	r0, #0
 8004f3e:	f43f ac69 	beq.w	8004814 <_dtoa_r+0x44c>
 8004f42:	2600      	movs	r6, #0
 8004f44:	4635      	mov	r5, r6
 8004f46:	e7c5      	b.n	8004ed4 <_dtoa_r+0xb0c>
 8004f48:	2301      	movs	r3, #1
 8004f4a:	930a      	str	r3, [sp, #40]	; 0x28
 8004f4c:	e6c8      	b.n	8004ce0 <_dtoa_r+0x918>
 8004f4e:	4651      	mov	r1, sl
 8004f50:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004f52:	4648      	mov	r0, r9
 8004f54:	f001 fa9e 	bl	8006494 <__pow5mult>
 8004f58:	4682      	mov	sl, r0
 8004f5a:	e572      	b.n	8004a42 <_dtoa_r+0x67a>
 8004f5c:	f8dd a000 	ldr.w	sl, [sp]
 8004f60:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004f64:	e686      	b.n	8004c74 <_dtoa_r+0x8ac>
 8004f66:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004f68:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004f6a:	1afb      	subs	r3, r7, r3
 8004f6c:	441a      	add	r2, r3
 8004f6e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004f72:	2700      	movs	r7, #0
 8004f74:	e512      	b.n	800499c <_dtoa_r+0x5d4>
 8004f76:	2b00      	cmp	r3, #0
 8004f78:	9402      	str	r4, [sp, #8]
 8004f7a:	465e      	mov	r6, fp
 8004f7c:	f107 0401 	add.w	r4, r7, #1
 8004f80:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f84:	f300 80ba 	bgt.w	80050fc <_dtoa_r+0xd34>
 8004f88:	9b00      	ldr	r3, [sp, #0]
 8004f8a:	9502      	str	r5, [sp, #8]
 8004f8c:	703b      	strb	r3, [r7, #0]
 8004f8e:	4645      	mov	r5, r8
 8004f90:	e660      	b.n	8004c54 <_dtoa_r+0x88c>
 8004f92:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f96:	2602      	movs	r6, #2
 8004f98:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004f9c:	f7ff bb67 	b.w	800466e <_dtoa_r+0x2a6>
 8004fa0:	9b00      	ldr	r3, [sp, #0]
 8004fa2:	2b39      	cmp	r3, #57	; 0x39
 8004fa4:	465e      	mov	r6, fp
 8004fa6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004faa:	f000 80b9 	beq.w	8005120 <_dtoa_r+0xd58>
 8004fae:	9b00      	ldr	r3, [sp, #0]
 8004fb0:	9502      	str	r5, [sp, #8]
 8004fb2:	3301      	adds	r3, #1
 8004fb4:	703b      	strb	r3, [r7, #0]
 8004fb6:	4645      	mov	r5, r8
 8004fb8:	e64c      	b.n	8004c54 <_dtoa_r+0x88c>
 8004fba:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004fbe:	1a9c      	subs	r4, r3, r2
 8004fc0:	e4f5      	b.n	80049ae <_dtoa_r+0x5e6>
 8004fc2:	465e      	mov	r6, fp
 8004fc4:	9502      	str	r5, [sp, #8]
 8004fc6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004fca:	4645      	mov	r5, r8
 8004fcc:	e61a      	b.n	8004c04 <_dtoa_r+0x83c>
 8004fce:	2600      	movs	r6, #0
 8004fd0:	4635      	mov	r5, r6
 8004fd2:	e708      	b.n	8004de6 <_dtoa_r+0xa1e>
 8004fd4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004fd8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fdc:	f7fb facc 	bl	8000578 <__aeabi_dmul>
 8004fe0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004fe2:	f88b 5000 	strb.w	r5, [fp]
 8004fe6:	2b01      	cmp	r3, #1
 8004fe8:	e9cd 0100 	strd	r0, r1, [sp]
 8004fec:	d020      	beq.n	8005030 <_dtoa_r+0xc68>
 8004fee:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004ff0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004ff4:	445b      	add	r3, fp
 8004ff6:	4698      	mov	r8, r3
 8004ff8:	2200      	movs	r2, #0
 8004ffa:	4b2c      	ldr	r3, [pc, #176]	; (80050ac <_dtoa_r+0xce4>)
 8004ffc:	4630      	mov	r0, r6
 8004ffe:	4639      	mov	r1, r7
 8005000:	f7fb faba 	bl	8000578 <__aeabi_dmul>
 8005004:	460f      	mov	r7, r1
 8005006:	4606      	mov	r6, r0
 8005008:	f7fb fd50 	bl	8000aac <__aeabi_d2iz>
 800500c:	4605      	mov	r5, r0
 800500e:	f7fb fa49 	bl	80004a4 <__aeabi_i2d>
 8005012:	3530      	adds	r5, #48	; 0x30
 8005014:	4602      	mov	r2, r0
 8005016:	460b      	mov	r3, r1
 8005018:	4630      	mov	r0, r6
 800501a:	4639      	mov	r1, r7
 800501c:	f7fb f8f4 	bl	8000208 <__aeabi_dsub>
 8005020:	f804 5b01 	strb.w	r5, [r4], #1
 8005024:	4544      	cmp	r4, r8
 8005026:	4606      	mov	r6, r0
 8005028:	460f      	mov	r7, r1
 800502a:	d1e5      	bne.n	8004ff8 <_dtoa_r+0xc30>
 800502c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005030:	4b1f      	ldr	r3, [pc, #124]	; (80050b0 <_dtoa_r+0xce8>)
 8005032:	2200      	movs	r2, #0
 8005034:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005038:	f7fb f8e8 	bl	800020c <__adddf3>
 800503c:	4632      	mov	r2, r6
 800503e:	463b      	mov	r3, r7
 8005040:	f7fb fd0c 	bl	8000a5c <__aeabi_dcmplt>
 8005044:	2800      	cmp	r0, #0
 8005046:	d070      	beq.n	800512a <_dtoa_r+0xd62>
 8005048:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800504a:	9306      	str	r3, [sp, #24]
 800504c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005050:	e48f      	b.n	8004972 <_dtoa_r+0x5aa>
 8005052:	2330      	movs	r3, #48	; 0x30
 8005054:	f88b 3000 	strb.w	r3, [fp]
 8005058:	9b06      	ldr	r3, [sp, #24]
 800505a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800505e:	3301      	adds	r3, #1
 8005060:	9306      	str	r3, [sp, #24]
 8005062:	465b      	mov	r3, fp
 8005064:	e489      	b.n	800497a <_dtoa_r+0x5b2>
 8005066:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005068:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800506c:	e6a0      	b.n	8004db0 <_dtoa_r+0x9e8>
 800506e:	2300      	movs	r3, #0
 8005070:	e676      	b.n	8004d60 <_dtoa_r+0x998>
 8005072:	4631      	mov	r1, r6
 8005074:	2205      	movs	r2, #5
 8005076:	4648      	mov	r0, r9
 8005078:	f001 f8cc 	bl	8006214 <__multadd>
 800507c:	4601      	mov	r1, r0
 800507e:	4606      	mov	r6, r0
 8005080:	4650      	mov	r0, sl
 8005082:	f001 faad 	bl	80065e0 <__mcmp>
 8005086:	2800      	cmp	r0, #0
 8005088:	f73f aead 	bgt.w	8004de6 <_dtoa_r+0xa1e>
 800508c:	e722      	b.n	8004ed4 <_dtoa_r+0xb0c>
 800508e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005092:	2602      	movs	r6, #2
 8005094:	ed8d 7b00 	vstr	d7, [sp]
 8005098:	f7ff bb02 	b.w	80046a0 <_dtoa_r+0x2d8>
 800509c:	40140000 	.word	0x40140000
 80050a0:	08007450 	.word	0x08007450
 80050a4:	08007428 	.word	0x08007428
 80050a8:	401c0000 	.word	0x401c0000
 80050ac:	40240000 	.word	0x40240000
 80050b0:	3fe00000 	.word	0x3fe00000
 80050b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050b6:	2b00      	cmp	r3, #0
 80050b8:	f43f af1d 	beq.w	8004ef6 <_dtoa_r+0xb2e>
 80050bc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80050be:	2c00      	cmp	r4, #0
 80050c0:	f77f aba8 	ble.w	8004814 <_dtoa_r+0x44c>
 80050c4:	2200      	movs	r2, #0
 80050c6:	4b45      	ldr	r3, [pc, #276]	; (80051dc <_dtoa_r+0xe14>)
 80050c8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050cc:	f7fb fa54 	bl	8000578 <__aeabi_dmul>
 80050d0:	e9cd 0100 	strd	r0, r1, [sp]
 80050d4:	1c70      	adds	r0, r6, #1
 80050d6:	f7fb f9e5 	bl	80004a4 <__aeabi_i2d>
 80050da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050de:	f7fb fa4b 	bl	8000578 <__aeabi_dmul>
 80050e2:	4b3f      	ldr	r3, [pc, #252]	; (80051e0 <_dtoa_r+0xe18>)
 80050e4:	2200      	movs	r2, #0
 80050e6:	f7fb f891 	bl	800020c <__adddf3>
 80050ea:	9b06      	ldr	r3, [sp, #24]
 80050ec:	9412      	str	r4, [sp, #72]	; 0x48
 80050ee:	3b01      	subs	r3, #1
 80050f0:	4606      	mov	r6, r0
 80050f2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80050f6:	9316      	str	r3, [sp, #88]	; 0x58
 80050f8:	f7ff baf3 	b.w	80046e2 <_dtoa_r+0x31a>
 80050fc:	4651      	mov	r1, sl
 80050fe:	2201      	movs	r2, #1
 8005100:	4648      	mov	r0, r9
 8005102:	f001 fa17 	bl	8006534 <__lshift>
 8005106:	4631      	mov	r1, r6
 8005108:	4682      	mov	sl, r0
 800510a:	f001 fa69 	bl	80065e0 <__mcmp>
 800510e:	2800      	cmp	r0, #0
 8005110:	dd3b      	ble.n	800518a <_dtoa_r+0xdc2>
 8005112:	9b00      	ldr	r3, [sp, #0]
 8005114:	2b39      	cmp	r3, #57	; 0x39
 8005116:	d003      	beq.n	8005120 <_dtoa_r+0xd58>
 8005118:	9b02      	ldr	r3, [sp, #8]
 800511a:	3331      	adds	r3, #49	; 0x31
 800511c:	9300      	str	r3, [sp, #0]
 800511e:	e733      	b.n	8004f88 <_dtoa_r+0xbc0>
 8005120:	2239      	movs	r2, #57	; 0x39
 8005122:	9502      	str	r5, [sp, #8]
 8005124:	703a      	strb	r2, [r7, #0]
 8005126:	4645      	mov	r5, r8
 8005128:	e58e      	b.n	8004c48 <_dtoa_r+0x880>
 800512a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800512e:	2000      	movs	r0, #0
 8005130:	492c      	ldr	r1, [pc, #176]	; (80051e4 <_dtoa_r+0xe1c>)
 8005132:	f7fb f869 	bl	8000208 <__aeabi_dsub>
 8005136:	4632      	mov	r2, r6
 8005138:	463b      	mov	r3, r7
 800513a:	f7fb fcad 	bl	8000a98 <__aeabi_dcmpgt>
 800513e:	b910      	cbnz	r0, 8005146 <_dtoa_r+0xd7e>
 8005140:	f7ff bb68 	b.w	8004814 <_dtoa_r+0x44c>
 8005144:	4614      	mov	r4, r2
 8005146:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800514a:	2b30      	cmp	r3, #48	; 0x30
 800514c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005150:	d0f8      	beq.n	8005144 <_dtoa_r+0xd7c>
 8005152:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005154:	9306      	str	r3, [sp, #24]
 8005156:	e58d      	b.n	8004c74 <_dtoa_r+0x8ac>
 8005158:	46d9      	mov	r9, fp
 800515a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800515e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005162:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005164:	9306      	str	r3, [sp, #24]
 8005166:	e404      	b.n	8004972 <_dtoa_r+0x5aa>
 8005168:	9b00      	ldr	r3, [sp, #0]
 800516a:	2b39      	cmp	r3, #57	; 0x39
 800516c:	4621      	mov	r1, r4
 800516e:	4632      	mov	r2, r6
 8005170:	f107 0401 	add.w	r4, r7, #1
 8005174:	465e      	mov	r6, fp
 8005176:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800517a:	d0d1      	beq.n	8005120 <_dtoa_r+0xd58>
 800517c:	2a00      	cmp	r2, #0
 800517e:	f77f af03 	ble.w	8004f88 <_dtoa_r+0xbc0>
 8005182:	460b      	mov	r3, r1
 8005184:	3331      	adds	r3, #49	; 0x31
 8005186:	9300      	str	r3, [sp, #0]
 8005188:	e6fe      	b.n	8004f88 <_dtoa_r+0xbc0>
 800518a:	f47f aefd 	bne.w	8004f88 <_dtoa_r+0xbc0>
 800518e:	9b00      	ldr	r3, [sp, #0]
 8005190:	07da      	lsls	r2, r3, #31
 8005192:	f57f aef9 	bpl.w	8004f88 <_dtoa_r+0xbc0>
 8005196:	e7bc      	b.n	8005112 <_dtoa_r+0xd4a>
 8005198:	4629      	mov	r1, r5
 800519a:	2300      	movs	r3, #0
 800519c:	220a      	movs	r2, #10
 800519e:	4648      	mov	r0, r9
 80051a0:	f001 f838 	bl	8006214 <__multadd>
 80051a4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80051a6:	2b00      	cmp	r3, #0
 80051a8:	4605      	mov	r5, r0
 80051aa:	dd09      	ble.n	80051c0 <_dtoa_r+0xdf8>
 80051ac:	9309      	str	r3, [sp, #36]	; 0x24
 80051ae:	e484      	b.n	8004aba <_dtoa_r+0x6f2>
 80051b0:	9b02      	ldr	r3, [sp, #8]
 80051b2:	2b02      	cmp	r3, #2
 80051b4:	dc0e      	bgt.n	80051d4 <_dtoa_r+0xe0c>
 80051b6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80051b8:	e507      	b.n	8004bca <_dtoa_r+0x802>
 80051ba:	2602      	movs	r6, #2
 80051bc:	f7ff ba70 	b.w	80046a0 <_dtoa_r+0x2d8>
 80051c0:	9b02      	ldr	r3, [sp, #8]
 80051c2:	2b02      	cmp	r3, #2
 80051c4:	dc06      	bgt.n	80051d4 <_dtoa_r+0xe0c>
 80051c6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80051c8:	e7f0      	b.n	80051ac <_dtoa_r+0xde4>
 80051ca:	f43f ac59 	beq.w	8004a80 <_dtoa_r+0x6b8>
 80051ce:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80051d2:	e450      	b.n	8004a76 <_dtoa_r+0x6ae>
 80051d4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80051d6:	9309      	str	r3, [sp, #36]	; 0x24
 80051d8:	e678      	b.n	8004ecc <_dtoa_r+0xb04>
 80051da:	bf00      	nop
 80051dc:	40240000 	.word	0x40240000
 80051e0:	401c0000 	.word	0x401c0000
 80051e4:	3fe00000 	.word	0x3fe00000

080051e8 <__sflush_r>:
 80051e8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80051ec:	b29a      	uxth	r2, r3
 80051ee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80051f2:	460c      	mov	r4, r1
 80051f4:	0711      	lsls	r1, r2, #28
 80051f6:	4680      	mov	r8, r0
 80051f8:	d444      	bmi.n	8005284 <__sflush_r+0x9c>
 80051fa:	6862      	ldr	r2, [r4, #4]
 80051fc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005200:	2a00      	cmp	r2, #0
 8005202:	81a3      	strh	r3, [r4, #12]
 8005204:	dd59      	ble.n	80052ba <__sflush_r+0xd2>
 8005206:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005208:	2d00      	cmp	r5, #0
 800520a:	d053      	beq.n	80052b4 <__sflush_r+0xcc>
 800520c:	2200      	movs	r2, #0
 800520e:	b29b      	uxth	r3, r3
 8005210:	f8d8 6000 	ldr.w	r6, [r8]
 8005214:	69e1      	ldr	r1, [r4, #28]
 8005216:	f8c8 2000 	str.w	r2, [r8]
 800521a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800521e:	f040 8083 	bne.w	8005328 <__sflush_r+0x140>
 8005222:	2301      	movs	r3, #1
 8005224:	4640      	mov	r0, r8
 8005226:	47a8      	blx	r5
 8005228:	1c42      	adds	r2, r0, #1
 800522a:	d04a      	beq.n	80052c2 <__sflush_r+0xda>
 800522c:	89a3      	ldrh	r3, [r4, #12]
 800522e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005230:	69e1      	ldr	r1, [r4, #28]
 8005232:	075b      	lsls	r3, r3, #29
 8005234:	d505      	bpl.n	8005242 <__sflush_r+0x5a>
 8005236:	6862      	ldr	r2, [r4, #4]
 8005238:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800523a:	1a80      	subs	r0, r0, r2
 800523c:	b10b      	cbz	r3, 8005242 <__sflush_r+0x5a>
 800523e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005240:	1ac0      	subs	r0, r0, r3
 8005242:	4602      	mov	r2, r0
 8005244:	2300      	movs	r3, #0
 8005246:	4640      	mov	r0, r8
 8005248:	47a8      	blx	r5
 800524a:	1c47      	adds	r7, r0, #1
 800524c:	d045      	beq.n	80052da <__sflush_r+0xf2>
 800524e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005252:	6922      	ldr	r2, [r4, #16]
 8005254:	6022      	str	r2, [r4, #0]
 8005256:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800525a:	2200      	movs	r2, #0
 800525c:	81a3      	strh	r3, [r4, #12]
 800525e:	04db      	lsls	r3, r3, #19
 8005260:	6062      	str	r2, [r4, #4]
 8005262:	d500      	bpl.n	8005266 <__sflush_r+0x7e>
 8005264:	6520      	str	r0, [r4, #80]	; 0x50
 8005266:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005268:	f8c8 6000 	str.w	r6, [r8]
 800526c:	b311      	cbz	r1, 80052b4 <__sflush_r+0xcc>
 800526e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005272:	4299      	cmp	r1, r3
 8005274:	d002      	beq.n	800527c <__sflush_r+0x94>
 8005276:	4640      	mov	r0, r8
 8005278:	f000 f95e 	bl	8005538 <_free_r>
 800527c:	2000      	movs	r0, #0
 800527e:	6320      	str	r0, [r4, #48]	; 0x30
 8005280:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005284:	6926      	ldr	r6, [r4, #16]
 8005286:	b1ae      	cbz	r6, 80052b4 <__sflush_r+0xcc>
 8005288:	6825      	ldr	r5, [r4, #0]
 800528a:	6026      	str	r6, [r4, #0]
 800528c:	0792      	lsls	r2, r2, #30
 800528e:	bf0c      	ite	eq
 8005290:	6963      	ldreq	r3, [r4, #20]
 8005292:	2300      	movne	r3, #0
 8005294:	1bad      	subs	r5, r5, r6
 8005296:	60a3      	str	r3, [r4, #8]
 8005298:	e00a      	b.n	80052b0 <__sflush_r+0xc8>
 800529a:	462b      	mov	r3, r5
 800529c:	4632      	mov	r2, r6
 800529e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80052a0:	69e1      	ldr	r1, [r4, #28]
 80052a2:	4640      	mov	r0, r8
 80052a4:	47b8      	blx	r7
 80052a6:	2800      	cmp	r0, #0
 80052a8:	eba5 0500 	sub.w	r5, r5, r0
 80052ac:	4406      	add	r6, r0
 80052ae:	dd2b      	ble.n	8005308 <__sflush_r+0x120>
 80052b0:	2d00      	cmp	r5, #0
 80052b2:	dcf2      	bgt.n	800529a <__sflush_r+0xb2>
 80052b4:	2000      	movs	r0, #0
 80052b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80052ba:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80052bc:	2a00      	cmp	r2, #0
 80052be:	dca2      	bgt.n	8005206 <__sflush_r+0x1e>
 80052c0:	e7f8      	b.n	80052b4 <__sflush_r+0xcc>
 80052c2:	f8d8 3000 	ldr.w	r3, [r8]
 80052c6:	2b00      	cmp	r3, #0
 80052c8:	d0b0      	beq.n	800522c <__sflush_r+0x44>
 80052ca:	2b1d      	cmp	r3, #29
 80052cc:	d001      	beq.n	80052d2 <__sflush_r+0xea>
 80052ce:	2b16      	cmp	r3, #22
 80052d0:	d12c      	bne.n	800532c <__sflush_r+0x144>
 80052d2:	f8c8 6000 	str.w	r6, [r8]
 80052d6:	2000      	movs	r0, #0
 80052d8:	e7ed      	b.n	80052b6 <__sflush_r+0xce>
 80052da:	f8d8 1000 	ldr.w	r1, [r8]
 80052de:	291d      	cmp	r1, #29
 80052e0:	d81a      	bhi.n	8005318 <__sflush_r+0x130>
 80052e2:	4b15      	ldr	r3, [pc, #84]	; (8005338 <__sflush_r+0x150>)
 80052e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80052e8:	40cb      	lsrs	r3, r1
 80052ea:	43db      	mvns	r3, r3
 80052ec:	f013 0301 	ands.w	r3, r3, #1
 80052f0:	d114      	bne.n	800531c <__sflush_r+0x134>
 80052f2:	6925      	ldr	r5, [r4, #16]
 80052f4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80052f8:	e9c4 5300 	strd	r5, r3, [r4]
 80052fc:	04d5      	lsls	r5, r2, #19
 80052fe:	81a2      	strh	r2, [r4, #12]
 8005300:	d5b1      	bpl.n	8005266 <__sflush_r+0x7e>
 8005302:	2900      	cmp	r1, #0
 8005304:	d1af      	bne.n	8005266 <__sflush_r+0x7e>
 8005306:	e7ad      	b.n	8005264 <__sflush_r+0x7c>
 8005308:	89a3      	ldrh	r3, [r4, #12]
 800530a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800530e:	81a3      	strh	r3, [r4, #12]
 8005310:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005314:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005318:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800531c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005320:	81a2      	strh	r2, [r4, #12]
 8005322:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005326:	e7c6      	b.n	80052b6 <__sflush_r+0xce>
 8005328:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800532a:	e782      	b.n	8005232 <__sflush_r+0x4a>
 800532c:	89a3      	ldrh	r3, [r4, #12]
 800532e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005332:	81a3      	strh	r3, [r4, #12]
 8005334:	e7bf      	b.n	80052b6 <__sflush_r+0xce>
 8005336:	bf00      	nop
 8005338:	20400001 	.word	0x20400001

0800533c <_fflush_r>:
 800533c:	b538      	push	{r3, r4, r5, lr}
 800533e:	460d      	mov	r5, r1
 8005340:	4604      	mov	r4, r0
 8005342:	b108      	cbz	r0, 8005348 <_fflush_r+0xc>
 8005344:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005346:	b1a3      	cbz	r3, 8005372 <_fflush_r+0x36>
 8005348:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800534c:	b1b8      	cbz	r0, 800537e <_fflush_r+0x42>
 800534e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005350:	07db      	lsls	r3, r3, #31
 8005352:	d401      	bmi.n	8005358 <_fflush_r+0x1c>
 8005354:	0581      	lsls	r1, r0, #22
 8005356:	d51a      	bpl.n	800538e <_fflush_r+0x52>
 8005358:	4620      	mov	r0, r4
 800535a:	4629      	mov	r1, r5
 800535c:	f7ff ff44 	bl	80051e8 <__sflush_r>
 8005360:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005362:	07da      	lsls	r2, r3, #31
 8005364:	4604      	mov	r4, r0
 8005366:	d402      	bmi.n	800536e <_fflush_r+0x32>
 8005368:	89ab      	ldrh	r3, [r5, #12]
 800536a:	059b      	lsls	r3, r3, #22
 800536c:	d50a      	bpl.n	8005384 <_fflush_r+0x48>
 800536e:	4620      	mov	r0, r4
 8005370:	bd38      	pop	{r3, r4, r5, pc}
 8005372:	f000 f83f 	bl	80053f4 <__sinit>
 8005376:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800537a:	2800      	cmp	r0, #0
 800537c:	d1e7      	bne.n	800534e <_fflush_r+0x12>
 800537e:	4604      	mov	r4, r0
 8005380:	4620      	mov	r0, r4
 8005382:	bd38      	pop	{r3, r4, r5, pc}
 8005384:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005386:	f000 fb87 	bl	8005a98 <__retarget_lock_release_recursive>
 800538a:	4620      	mov	r0, r4
 800538c:	bd38      	pop	{r3, r4, r5, pc}
 800538e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005390:	f000 fb80 	bl	8005a94 <__retarget_lock_acquire_recursive>
 8005394:	e7e0      	b.n	8005358 <_fflush_r+0x1c>
 8005396:	bf00      	nop

08005398 <std>:
 8005398:	b510      	push	{r4, lr}
 800539a:	2300      	movs	r3, #0
 800539c:	4604      	mov	r4, r0
 800539e:	8181      	strh	r1, [r0, #12]
 80053a0:	81c2      	strh	r2, [r0, #14]
 80053a2:	e9c0 3300 	strd	r3, r3, [r0]
 80053a6:	6083      	str	r3, [r0, #8]
 80053a8:	6643      	str	r3, [r0, #100]	; 0x64
 80053aa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80053ae:	6183      	str	r3, [r0, #24]
 80053b0:	4619      	mov	r1, r3
 80053b2:	2208      	movs	r2, #8
 80053b4:	305c      	adds	r0, #92	; 0x5c
 80053b6:	f7fd f8cb 	bl	8002550 <memset>
 80053ba:	4807      	ldr	r0, [pc, #28]	; (80053d8 <std+0x40>)
 80053bc:	4907      	ldr	r1, [pc, #28]	; (80053dc <std+0x44>)
 80053be:	4a08      	ldr	r2, [pc, #32]	; (80053e0 <std+0x48>)
 80053c0:	4b08      	ldr	r3, [pc, #32]	; (80053e4 <std+0x4c>)
 80053c2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80053c4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80053c8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80053cc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80053d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80053d4:	f000 bb5a 	b.w	8005a8c <__retarget_lock_init_recursive>
 80053d8:	08006bb1 	.word	0x08006bb1
 80053dc:	08006bd5 	.word	0x08006bd5
 80053e0:	08006c11 	.word	0x08006c11
 80053e4:	08006c31 	.word	0x08006c31

080053e8 <_cleanup_r>:
 80053e8:	4901      	ldr	r1, [pc, #4]	; (80053f0 <_cleanup_r+0x8>)
 80053ea:	f000 bb17 	b.w	8005a1c <_fwalk_reent>
 80053ee:	bf00      	nop
 80053f0:	08006ea1 	.word	0x08006ea1

080053f4 <__sinit>:
 80053f4:	b510      	push	{r4, lr}
 80053f6:	4604      	mov	r4, r0
 80053f8:	4812      	ldr	r0, [pc, #72]	; (8005444 <__sinit+0x50>)
 80053fa:	f000 fb4b 	bl	8005a94 <__retarget_lock_acquire_recursive>
 80053fe:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005400:	b9d2      	cbnz	r2, 8005438 <__sinit+0x44>
 8005402:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005406:	4810      	ldr	r0, [pc, #64]	; (8005448 <__sinit+0x54>)
 8005408:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800540c:	2103      	movs	r1, #3
 800540e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005412:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005414:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005418:	6860      	ldr	r0, [r4, #4]
 800541a:	2104      	movs	r1, #4
 800541c:	f7ff ffbc 	bl	8005398 <std>
 8005420:	2201      	movs	r2, #1
 8005422:	2109      	movs	r1, #9
 8005424:	68a0      	ldr	r0, [r4, #8]
 8005426:	f7ff ffb7 	bl	8005398 <std>
 800542a:	2202      	movs	r2, #2
 800542c:	2112      	movs	r1, #18
 800542e:	68e0      	ldr	r0, [r4, #12]
 8005430:	f7ff ffb2 	bl	8005398 <std>
 8005434:	2301      	movs	r3, #1
 8005436:	63a3      	str	r3, [r4, #56]	; 0x38
 8005438:	4802      	ldr	r0, [pc, #8]	; (8005444 <__sinit+0x50>)
 800543a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800543e:	f000 bb2b 	b.w	8005a98 <__retarget_lock_release_recursive>
 8005442:	bf00      	nop
 8005444:	20000b44 	.word	0x20000b44
 8005448:	080053e9 	.word	0x080053e9

0800544c <__sfp_lock_acquire>:
 800544c:	4801      	ldr	r0, [pc, #4]	; (8005454 <__sfp_lock_acquire+0x8>)
 800544e:	f000 bb21 	b.w	8005a94 <__retarget_lock_acquire_recursive>
 8005452:	bf00      	nop
 8005454:	20000b58 	.word	0x20000b58

08005458 <__sfp_lock_release>:
 8005458:	4801      	ldr	r0, [pc, #4]	; (8005460 <__sfp_lock_release+0x8>)
 800545a:	f000 bb1d 	b.w	8005a98 <__retarget_lock_release_recursive>
 800545e:	bf00      	nop
 8005460:	20000b58 	.word	0x20000b58

08005464 <__libc_fini_array>:
 8005464:	b538      	push	{r3, r4, r5, lr}
 8005466:	4c0a      	ldr	r4, [pc, #40]	; (8005490 <__libc_fini_array+0x2c>)
 8005468:	4d0a      	ldr	r5, [pc, #40]	; (8005494 <__libc_fini_array+0x30>)
 800546a:	1b64      	subs	r4, r4, r5
 800546c:	10a4      	asrs	r4, r4, #2
 800546e:	d00a      	beq.n	8005486 <__libc_fini_array+0x22>
 8005470:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005474:	3b01      	subs	r3, #1
 8005476:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800547a:	3c01      	subs	r4, #1
 800547c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005480:	4798      	blx	r3
 8005482:	2c00      	cmp	r4, #0
 8005484:	d1f9      	bne.n	800547a <__libc_fini_array+0x16>
 8005486:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800548a:	f001 befd 	b.w	8007288 <_fini>
 800548e:	bf00      	nop
 8005490:	0800764c 	.word	0x0800764c
 8005494:	08007648 	.word	0x08007648

08005498 <_malloc_trim_r>:
 8005498:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800549a:	4f24      	ldr	r7, [pc, #144]	; (800552c <_malloc_trim_r+0x94>)
 800549c:	460c      	mov	r4, r1
 800549e:	4606      	mov	r6, r0
 80054a0:	f000 fe7c 	bl	800619c <__malloc_lock>
 80054a4:	68bb      	ldr	r3, [r7, #8]
 80054a6:	685d      	ldr	r5, [r3, #4]
 80054a8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80054ac:	310f      	adds	r1, #15
 80054ae:	f025 0503 	bic.w	r5, r5, #3
 80054b2:	4429      	add	r1, r5
 80054b4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80054b8:	f021 010f 	bic.w	r1, r1, #15
 80054bc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80054c0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80054c4:	db07      	blt.n	80054d6 <_malloc_trim_r+0x3e>
 80054c6:	2100      	movs	r1, #0
 80054c8:	4630      	mov	r0, r6
 80054ca:	f001 fb5f 	bl	8006b8c <_sbrk_r>
 80054ce:	68bb      	ldr	r3, [r7, #8]
 80054d0:	442b      	add	r3, r5
 80054d2:	4298      	cmp	r0, r3
 80054d4:	d004      	beq.n	80054e0 <_malloc_trim_r+0x48>
 80054d6:	4630      	mov	r0, r6
 80054d8:	f000 fe66 	bl	80061a8 <__malloc_unlock>
 80054dc:	2000      	movs	r0, #0
 80054de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80054e0:	4261      	negs	r1, r4
 80054e2:	4630      	mov	r0, r6
 80054e4:	f001 fb52 	bl	8006b8c <_sbrk_r>
 80054e8:	3001      	adds	r0, #1
 80054ea:	d00d      	beq.n	8005508 <_malloc_trim_r+0x70>
 80054ec:	4b10      	ldr	r3, [pc, #64]	; (8005530 <_malloc_trim_r+0x98>)
 80054ee:	68ba      	ldr	r2, [r7, #8]
 80054f0:	6819      	ldr	r1, [r3, #0]
 80054f2:	1b2d      	subs	r5, r5, r4
 80054f4:	f045 0501 	orr.w	r5, r5, #1
 80054f8:	4630      	mov	r0, r6
 80054fa:	1b09      	subs	r1, r1, r4
 80054fc:	6055      	str	r5, [r2, #4]
 80054fe:	6019      	str	r1, [r3, #0]
 8005500:	f000 fe52 	bl	80061a8 <__malloc_unlock>
 8005504:	2001      	movs	r0, #1
 8005506:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005508:	2100      	movs	r1, #0
 800550a:	4630      	mov	r0, r6
 800550c:	f001 fb3e 	bl	8006b8c <_sbrk_r>
 8005510:	68ba      	ldr	r2, [r7, #8]
 8005512:	1a83      	subs	r3, r0, r2
 8005514:	2b0f      	cmp	r3, #15
 8005516:	ddde      	ble.n	80054d6 <_malloc_trim_r+0x3e>
 8005518:	4c06      	ldr	r4, [pc, #24]	; (8005534 <_malloc_trim_r+0x9c>)
 800551a:	4905      	ldr	r1, [pc, #20]	; (8005530 <_malloc_trim_r+0x98>)
 800551c:	6824      	ldr	r4, [r4, #0]
 800551e:	f043 0301 	orr.w	r3, r3, #1
 8005522:	1b00      	subs	r0, r0, r4
 8005524:	6053      	str	r3, [r2, #4]
 8005526:	6008      	str	r0, [r1, #0]
 8005528:	e7d5      	b.n	80054d6 <_malloc_trim_r+0x3e>
 800552a:	bf00      	nop
 800552c:	2000049c 	.word	0x2000049c
 8005530:	20000abc 	.word	0x20000abc
 8005534:	200008a4 	.word	0x200008a4

08005538 <_free_r>:
 8005538:	2900      	cmp	r1, #0
 800553a:	d053      	beq.n	80055e4 <_free_r+0xac>
 800553c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800553e:	460c      	mov	r4, r1
 8005540:	4606      	mov	r6, r0
 8005542:	f000 fe2b 	bl	800619c <__malloc_lock>
 8005546:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800554a:	4f71      	ldr	r7, [pc, #452]	; (8005710 <_free_r+0x1d8>)
 800554c:	f02c 0101 	bic.w	r1, ip, #1
 8005550:	f1a4 0508 	sub.w	r5, r4, #8
 8005554:	186b      	adds	r3, r5, r1
 8005556:	68b8      	ldr	r0, [r7, #8]
 8005558:	685a      	ldr	r2, [r3, #4]
 800555a:	4298      	cmp	r0, r3
 800555c:	f022 0203 	bic.w	r2, r2, #3
 8005560:	d053      	beq.n	800560a <_free_r+0xd2>
 8005562:	f01c 0f01 	tst.w	ip, #1
 8005566:	605a      	str	r2, [r3, #4]
 8005568:	eb03 0002 	add.w	r0, r3, r2
 800556c:	d13b      	bne.n	80055e6 <_free_r+0xae>
 800556e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005572:	6840      	ldr	r0, [r0, #4]
 8005574:	eba5 050c 	sub.w	r5, r5, ip
 8005578:	f107 0e08 	add.w	lr, r7, #8
 800557c:	68ac      	ldr	r4, [r5, #8]
 800557e:	4574      	cmp	r4, lr
 8005580:	4461      	add	r1, ip
 8005582:	f000 0001 	and.w	r0, r0, #1
 8005586:	d075      	beq.n	8005674 <_free_r+0x13c>
 8005588:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800558c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005590:	f8cc 4008 	str.w	r4, [ip, #8]
 8005594:	b360      	cbz	r0, 80055f0 <_free_r+0xb8>
 8005596:	f041 0301 	orr.w	r3, r1, #1
 800559a:	606b      	str	r3, [r5, #4]
 800559c:	5069      	str	r1, [r5, r1]
 800559e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80055a2:	d350      	bcc.n	8005646 <_free_r+0x10e>
 80055a4:	0a4b      	lsrs	r3, r1, #9
 80055a6:	2b04      	cmp	r3, #4
 80055a8:	d870      	bhi.n	800568c <_free_r+0x154>
 80055aa:	098b      	lsrs	r3, r1, #6
 80055ac:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80055b0:	00e4      	lsls	r4, r4, #3
 80055b2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80055b6:	1938      	adds	r0, r7, r4
 80055b8:	593b      	ldr	r3, [r7, r4]
 80055ba:	3808      	subs	r0, #8
 80055bc:	4298      	cmp	r0, r3
 80055be:	d078      	beq.n	80056b2 <_free_r+0x17a>
 80055c0:	685a      	ldr	r2, [r3, #4]
 80055c2:	f022 0203 	bic.w	r2, r2, #3
 80055c6:	428a      	cmp	r2, r1
 80055c8:	d971      	bls.n	80056ae <_free_r+0x176>
 80055ca:	689b      	ldr	r3, [r3, #8]
 80055cc:	4298      	cmp	r0, r3
 80055ce:	d1f7      	bne.n	80055c0 <_free_r+0x88>
 80055d0:	68c3      	ldr	r3, [r0, #12]
 80055d2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80055d6:	609d      	str	r5, [r3, #8]
 80055d8:	60c5      	str	r5, [r0, #12]
 80055da:	4630      	mov	r0, r6
 80055dc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80055e0:	f000 bde2 	b.w	80061a8 <__malloc_unlock>
 80055e4:	4770      	bx	lr
 80055e6:	6840      	ldr	r0, [r0, #4]
 80055e8:	f000 0001 	and.w	r0, r0, #1
 80055ec:	2800      	cmp	r0, #0
 80055ee:	d1d2      	bne.n	8005596 <_free_r+0x5e>
 80055f0:	6898      	ldr	r0, [r3, #8]
 80055f2:	4c48      	ldr	r4, [pc, #288]	; (8005714 <_free_r+0x1dc>)
 80055f4:	4411      	add	r1, r2
 80055f6:	42a0      	cmp	r0, r4
 80055f8:	f041 0201 	orr.w	r2, r1, #1
 80055fc:	d062      	beq.n	80056c4 <_free_r+0x18c>
 80055fe:	68db      	ldr	r3, [r3, #12]
 8005600:	60c3      	str	r3, [r0, #12]
 8005602:	6098      	str	r0, [r3, #8]
 8005604:	606a      	str	r2, [r5, #4]
 8005606:	5069      	str	r1, [r5, r1]
 8005608:	e7c9      	b.n	800559e <_free_r+0x66>
 800560a:	f01c 0f01 	tst.w	ip, #1
 800560e:	440a      	add	r2, r1
 8005610:	d107      	bne.n	8005622 <_free_r+0xea>
 8005612:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005616:	1aed      	subs	r5, r5, r3
 8005618:	441a      	add	r2, r3
 800561a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800561e:	60cb      	str	r3, [r1, #12]
 8005620:	6099      	str	r1, [r3, #8]
 8005622:	4b3d      	ldr	r3, [pc, #244]	; (8005718 <_free_r+0x1e0>)
 8005624:	681b      	ldr	r3, [r3, #0]
 8005626:	f042 0101 	orr.w	r1, r2, #1
 800562a:	4293      	cmp	r3, r2
 800562c:	6069      	str	r1, [r5, #4]
 800562e:	60bd      	str	r5, [r7, #8]
 8005630:	d804      	bhi.n	800563c <_free_r+0x104>
 8005632:	4b3a      	ldr	r3, [pc, #232]	; (800571c <_free_r+0x1e4>)
 8005634:	4630      	mov	r0, r6
 8005636:	6819      	ldr	r1, [r3, #0]
 8005638:	f7ff ff2e 	bl	8005498 <_malloc_trim_r>
 800563c:	4630      	mov	r0, r6
 800563e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005642:	f000 bdb1 	b.w	80061a8 <__malloc_unlock>
 8005646:	08c9      	lsrs	r1, r1, #3
 8005648:	6878      	ldr	r0, [r7, #4]
 800564a:	1c4a      	adds	r2, r1, #1
 800564c:	2301      	movs	r3, #1
 800564e:	1089      	asrs	r1, r1, #2
 8005650:	408b      	lsls	r3, r1
 8005652:	4303      	orrs	r3, r0
 8005654:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005658:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800565c:	607b      	str	r3, [r7, #4]
 800565e:	3908      	subs	r1, #8
 8005660:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005664:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005668:	60c5      	str	r5, [r0, #12]
 800566a:	4630      	mov	r0, r6
 800566c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005670:	f000 bd9a 	b.w	80061a8 <__malloc_unlock>
 8005674:	2800      	cmp	r0, #0
 8005676:	d145      	bne.n	8005704 <_free_r+0x1cc>
 8005678:	440a      	add	r2, r1
 800567a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800567e:	f042 0001 	orr.w	r0, r2, #1
 8005682:	60cb      	str	r3, [r1, #12]
 8005684:	6099      	str	r1, [r3, #8]
 8005686:	6068      	str	r0, [r5, #4]
 8005688:	50aa      	str	r2, [r5, r2]
 800568a:	e7d7      	b.n	800563c <_free_r+0x104>
 800568c:	2b14      	cmp	r3, #20
 800568e:	d908      	bls.n	80056a2 <_free_r+0x16a>
 8005690:	2b54      	cmp	r3, #84	; 0x54
 8005692:	d81e      	bhi.n	80056d2 <_free_r+0x19a>
 8005694:	0b0b      	lsrs	r3, r1, #12
 8005696:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800569a:	00e4      	lsls	r4, r4, #3
 800569c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80056a0:	e789      	b.n	80055b6 <_free_r+0x7e>
 80056a2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80056a6:	00e4      	lsls	r4, r4, #3
 80056a8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80056ac:	e783      	b.n	80055b6 <_free_r+0x7e>
 80056ae:	4618      	mov	r0, r3
 80056b0:	e78e      	b.n	80055d0 <_free_r+0x98>
 80056b2:	1093      	asrs	r3, r2, #2
 80056b4:	6879      	ldr	r1, [r7, #4]
 80056b6:	2201      	movs	r2, #1
 80056b8:	fa02 f303 	lsl.w	r3, r2, r3
 80056bc:	430b      	orrs	r3, r1
 80056be:	607b      	str	r3, [r7, #4]
 80056c0:	4603      	mov	r3, r0
 80056c2:	e786      	b.n	80055d2 <_free_r+0x9a>
 80056c4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80056c8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80056cc:	606a      	str	r2, [r5, #4]
 80056ce:	5069      	str	r1, [r5, r1]
 80056d0:	e7b4      	b.n	800563c <_free_r+0x104>
 80056d2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80056d6:	d806      	bhi.n	80056e6 <_free_r+0x1ae>
 80056d8:	0bcb      	lsrs	r3, r1, #15
 80056da:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80056de:	00e4      	lsls	r4, r4, #3
 80056e0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80056e4:	e767      	b.n	80055b6 <_free_r+0x7e>
 80056e6:	f240 5254 	movw	r2, #1364	; 0x554
 80056ea:	4293      	cmp	r3, r2
 80056ec:	d806      	bhi.n	80056fc <_free_r+0x1c4>
 80056ee:	0c8b      	lsrs	r3, r1, #18
 80056f0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80056f4:	00e4      	lsls	r4, r4, #3
 80056f6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80056fa:	e75c      	b.n	80055b6 <_free_r+0x7e>
 80056fc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005700:	227e      	movs	r2, #126	; 0x7e
 8005702:	e758      	b.n	80055b6 <_free_r+0x7e>
 8005704:	f041 0201 	orr.w	r2, r1, #1
 8005708:	606a      	str	r2, [r5, #4]
 800570a:	6019      	str	r1, [r3, #0]
 800570c:	e796      	b.n	800563c <_free_r+0x104>
 800570e:	bf00      	nop
 8005710:	2000049c 	.word	0x2000049c
 8005714:	200004a4 	.word	0x200004a4
 8005718:	200008a8 	.word	0x200008a8
 800571c:	20000aec 	.word	0x20000aec

08005720 <__sfvwrite_r>:
 8005720:	6893      	ldr	r3, [r2, #8]
 8005722:	2b00      	cmp	r3, #0
 8005724:	f000 80e4 	beq.w	80058f0 <__sfvwrite_r+0x1d0>
 8005728:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800572c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005730:	b29b      	uxth	r3, r3
 8005732:	460c      	mov	r4, r1
 8005734:	0719      	lsls	r1, r3, #28
 8005736:	b083      	sub	sp, #12
 8005738:	4682      	mov	sl, r0
 800573a:	4690      	mov	r8, r2
 800573c:	d535      	bpl.n	80057aa <__sfvwrite_r+0x8a>
 800573e:	6922      	ldr	r2, [r4, #16]
 8005740:	b39a      	cbz	r2, 80057aa <__sfvwrite_r+0x8a>
 8005742:	f013 0202 	ands.w	r2, r3, #2
 8005746:	f8d8 6000 	ldr.w	r6, [r8]
 800574a:	d03d      	beq.n	80057c8 <__sfvwrite_r+0xa8>
 800574c:	2700      	movs	r7, #0
 800574e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005752:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005756:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005a18 <__sfvwrite_r+0x2f8>
 800575a:	463d      	mov	r5, r7
 800575c:	454d      	cmp	r5, r9
 800575e:	462b      	mov	r3, r5
 8005760:	463a      	mov	r2, r7
 8005762:	bf28      	it	cs
 8005764:	464b      	movcs	r3, r9
 8005766:	4661      	mov	r1, ip
 8005768:	4650      	mov	r0, sl
 800576a:	b1d5      	cbz	r5, 80057a2 <__sfvwrite_r+0x82>
 800576c:	47d8      	blx	fp
 800576e:	2800      	cmp	r0, #0
 8005770:	f340 80c6 	ble.w	8005900 <__sfvwrite_r+0x1e0>
 8005774:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005778:	1a1b      	subs	r3, r3, r0
 800577a:	4407      	add	r7, r0
 800577c:	1a2d      	subs	r5, r5, r0
 800577e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005782:	2b00      	cmp	r3, #0
 8005784:	f000 80b0 	beq.w	80058e8 <__sfvwrite_r+0x1c8>
 8005788:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800578c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005790:	454d      	cmp	r5, r9
 8005792:	462b      	mov	r3, r5
 8005794:	463a      	mov	r2, r7
 8005796:	bf28      	it	cs
 8005798:	464b      	movcs	r3, r9
 800579a:	4661      	mov	r1, ip
 800579c:	4650      	mov	r0, sl
 800579e:	2d00      	cmp	r5, #0
 80057a0:	d1e4      	bne.n	800576c <__sfvwrite_r+0x4c>
 80057a2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80057a6:	3608      	adds	r6, #8
 80057a8:	e7d8      	b.n	800575c <__sfvwrite_r+0x3c>
 80057aa:	4621      	mov	r1, r4
 80057ac:	4650      	mov	r0, sl
 80057ae:	f7fe fd03 	bl	80041b8 <__swsetup_r>
 80057b2:	2800      	cmp	r0, #0
 80057b4:	f040 812a 	bne.w	8005a0c <__sfvwrite_r+0x2ec>
 80057b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057bc:	f8d8 6000 	ldr.w	r6, [r8]
 80057c0:	b29b      	uxth	r3, r3
 80057c2:	f013 0202 	ands.w	r2, r3, #2
 80057c6:	d1c1      	bne.n	800574c <__sfvwrite_r+0x2c>
 80057c8:	f013 0901 	ands.w	r9, r3, #1
 80057cc:	d15d      	bne.n	800588a <__sfvwrite_r+0x16a>
 80057ce:	68a7      	ldr	r7, [r4, #8]
 80057d0:	6820      	ldr	r0, [r4, #0]
 80057d2:	464d      	mov	r5, r9
 80057d4:	2d00      	cmp	r5, #0
 80057d6:	d054      	beq.n	8005882 <__sfvwrite_r+0x162>
 80057d8:	059a      	lsls	r2, r3, #22
 80057da:	f140 809b 	bpl.w	8005914 <__sfvwrite_r+0x1f4>
 80057de:	42af      	cmp	r7, r5
 80057e0:	46bb      	mov	fp, r7
 80057e2:	f200 80d8 	bhi.w	8005996 <__sfvwrite_r+0x276>
 80057e6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80057ea:	d02f      	beq.n	800584c <__sfvwrite_r+0x12c>
 80057ec:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80057f0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80057f4:	eba0 0b01 	sub.w	fp, r0, r1
 80057f8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80057fc:	1c68      	adds	r0, r5, #1
 80057fe:	107f      	asrs	r7, r7, #1
 8005800:	4458      	add	r0, fp
 8005802:	42b8      	cmp	r0, r7
 8005804:	463a      	mov	r2, r7
 8005806:	bf84      	itt	hi
 8005808:	4607      	movhi	r7, r0
 800580a:	463a      	movhi	r2, r7
 800580c:	055b      	lsls	r3, r3, #21
 800580e:	f140 80d3 	bpl.w	80059b8 <__sfvwrite_r+0x298>
 8005812:	4611      	mov	r1, r2
 8005814:	4650      	mov	r0, sl
 8005816:	f000 f9b9 	bl	8005b8c <_malloc_r>
 800581a:	2800      	cmp	r0, #0
 800581c:	f000 80f0 	beq.w	8005a00 <__sfvwrite_r+0x2e0>
 8005820:	465a      	mov	r2, fp
 8005822:	6921      	ldr	r1, [r4, #16]
 8005824:	9001      	str	r0, [sp, #4]
 8005826:	f7fb fae9 	bl	8000dfc <memcpy>
 800582a:	89a2      	ldrh	r2, [r4, #12]
 800582c:	9b01      	ldr	r3, [sp, #4]
 800582e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005832:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005836:	81a2      	strh	r2, [r4, #12]
 8005838:	eba7 020b 	sub.w	r2, r7, fp
 800583c:	eb03 000b 	add.w	r0, r3, fp
 8005840:	6167      	str	r7, [r4, #20]
 8005842:	6123      	str	r3, [r4, #16]
 8005844:	6020      	str	r0, [r4, #0]
 8005846:	60a2      	str	r2, [r4, #8]
 8005848:	462f      	mov	r7, r5
 800584a:	46ab      	mov	fp, r5
 800584c:	465a      	mov	r2, fp
 800584e:	4649      	mov	r1, r9
 8005850:	f000 fc40 	bl	80060d4 <memmove>
 8005854:	68a2      	ldr	r2, [r4, #8]
 8005856:	6823      	ldr	r3, [r4, #0]
 8005858:	1bd2      	subs	r2, r2, r7
 800585a:	445b      	add	r3, fp
 800585c:	462f      	mov	r7, r5
 800585e:	60a2      	str	r2, [r4, #8]
 8005860:	6023      	str	r3, [r4, #0]
 8005862:	2500      	movs	r5, #0
 8005864:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005868:	1bdb      	subs	r3, r3, r7
 800586a:	44b9      	add	r9, r7
 800586c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005870:	2b00      	cmp	r3, #0
 8005872:	d039      	beq.n	80058e8 <__sfvwrite_r+0x1c8>
 8005874:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005878:	68a7      	ldr	r7, [r4, #8]
 800587a:	6820      	ldr	r0, [r4, #0]
 800587c:	b29b      	uxth	r3, r3
 800587e:	2d00      	cmp	r5, #0
 8005880:	d1aa      	bne.n	80057d8 <__sfvwrite_r+0xb8>
 8005882:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005886:	3608      	adds	r6, #8
 8005888:	e7a4      	b.n	80057d4 <__sfvwrite_r+0xb4>
 800588a:	4633      	mov	r3, r6
 800588c:	4691      	mov	r9, r2
 800588e:	4610      	mov	r0, r2
 8005890:	4617      	mov	r7, r2
 8005892:	464e      	mov	r6, r9
 8005894:	469b      	mov	fp, r3
 8005896:	2f00      	cmp	r7, #0
 8005898:	d06b      	beq.n	8005972 <__sfvwrite_r+0x252>
 800589a:	2800      	cmp	r0, #0
 800589c:	d071      	beq.n	8005982 <__sfvwrite_r+0x262>
 800589e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80058a2:	6820      	ldr	r0, [r4, #0]
 80058a4:	45b9      	cmp	r9, r7
 80058a6:	464b      	mov	r3, r9
 80058a8:	bf28      	it	cs
 80058aa:	463b      	movcs	r3, r7
 80058ac:	4288      	cmp	r0, r1
 80058ae:	d903      	bls.n	80058b8 <__sfvwrite_r+0x198>
 80058b0:	68a5      	ldr	r5, [r4, #8]
 80058b2:	4415      	add	r5, r2
 80058b4:	42ab      	cmp	r3, r5
 80058b6:	dc71      	bgt.n	800599c <__sfvwrite_r+0x27c>
 80058b8:	429a      	cmp	r2, r3
 80058ba:	f300 8093 	bgt.w	80059e4 <__sfvwrite_r+0x2c4>
 80058be:	4613      	mov	r3, r2
 80058c0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80058c2:	69e1      	ldr	r1, [r4, #28]
 80058c4:	4632      	mov	r2, r6
 80058c6:	4650      	mov	r0, sl
 80058c8:	47a8      	blx	r5
 80058ca:	1e05      	subs	r5, r0, #0
 80058cc:	dd18      	ble.n	8005900 <__sfvwrite_r+0x1e0>
 80058ce:	ebb9 0905 	subs.w	r9, r9, r5
 80058d2:	d00f      	beq.n	80058f4 <__sfvwrite_r+0x1d4>
 80058d4:	2001      	movs	r0, #1
 80058d6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80058da:	1b5b      	subs	r3, r3, r5
 80058dc:	442e      	add	r6, r5
 80058de:	1b7f      	subs	r7, r7, r5
 80058e0:	f8c8 3008 	str.w	r3, [r8, #8]
 80058e4:	2b00      	cmp	r3, #0
 80058e6:	d1d6      	bne.n	8005896 <__sfvwrite_r+0x176>
 80058e8:	2000      	movs	r0, #0
 80058ea:	b003      	add	sp, #12
 80058ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058f0:	2000      	movs	r0, #0
 80058f2:	4770      	bx	lr
 80058f4:	4621      	mov	r1, r4
 80058f6:	4650      	mov	r0, sl
 80058f8:	f7ff fd20 	bl	800533c <_fflush_r>
 80058fc:	2800      	cmp	r0, #0
 80058fe:	d0ea      	beq.n	80058d6 <__sfvwrite_r+0x1b6>
 8005900:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005904:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005908:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800590c:	81a3      	strh	r3, [r4, #12]
 800590e:	b003      	add	sp, #12
 8005910:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005914:	6923      	ldr	r3, [r4, #16]
 8005916:	4283      	cmp	r3, r0
 8005918:	d315      	bcc.n	8005946 <__sfvwrite_r+0x226>
 800591a:	6961      	ldr	r1, [r4, #20]
 800591c:	42a9      	cmp	r1, r5
 800591e:	d812      	bhi.n	8005946 <__sfvwrite_r+0x226>
 8005920:	4b3c      	ldr	r3, [pc, #240]	; (8005a14 <__sfvwrite_r+0x2f4>)
 8005922:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005924:	429d      	cmp	r5, r3
 8005926:	bf94      	ite	ls
 8005928:	462b      	movls	r3, r5
 800592a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800592e:	464a      	mov	r2, r9
 8005930:	fb93 f3f1 	sdiv	r3, r3, r1
 8005934:	4650      	mov	r0, sl
 8005936:	fb01 f303 	mul.w	r3, r1, r3
 800593a:	69e1      	ldr	r1, [r4, #28]
 800593c:	47b8      	blx	r7
 800593e:	1e07      	subs	r7, r0, #0
 8005940:	ddde      	ble.n	8005900 <__sfvwrite_r+0x1e0>
 8005942:	1bed      	subs	r5, r5, r7
 8005944:	e78e      	b.n	8005864 <__sfvwrite_r+0x144>
 8005946:	42af      	cmp	r7, r5
 8005948:	bf28      	it	cs
 800594a:	462f      	movcs	r7, r5
 800594c:	463a      	mov	r2, r7
 800594e:	4649      	mov	r1, r9
 8005950:	f000 fbc0 	bl	80060d4 <memmove>
 8005954:	68a3      	ldr	r3, [r4, #8]
 8005956:	6822      	ldr	r2, [r4, #0]
 8005958:	1bdb      	subs	r3, r3, r7
 800595a:	443a      	add	r2, r7
 800595c:	60a3      	str	r3, [r4, #8]
 800595e:	6022      	str	r2, [r4, #0]
 8005960:	2b00      	cmp	r3, #0
 8005962:	d1ee      	bne.n	8005942 <__sfvwrite_r+0x222>
 8005964:	4621      	mov	r1, r4
 8005966:	4650      	mov	r0, sl
 8005968:	f7ff fce8 	bl	800533c <_fflush_r>
 800596c:	2800      	cmp	r0, #0
 800596e:	d0e8      	beq.n	8005942 <__sfvwrite_r+0x222>
 8005970:	e7c6      	b.n	8005900 <__sfvwrite_r+0x1e0>
 8005972:	f10b 0308 	add.w	r3, fp, #8
 8005976:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800597a:	469b      	mov	fp, r3
 800597c:	3308      	adds	r3, #8
 800597e:	2f00      	cmp	r7, #0
 8005980:	d0f9      	beq.n	8005976 <__sfvwrite_r+0x256>
 8005982:	463a      	mov	r2, r7
 8005984:	210a      	movs	r1, #10
 8005986:	4630      	mov	r0, r6
 8005988:	f7fb fb4a 	bl	8001020 <memchr>
 800598c:	b338      	cbz	r0, 80059de <__sfvwrite_r+0x2be>
 800598e:	3001      	adds	r0, #1
 8005990:	eba0 0906 	sub.w	r9, r0, r6
 8005994:	e783      	b.n	800589e <__sfvwrite_r+0x17e>
 8005996:	462f      	mov	r7, r5
 8005998:	46ab      	mov	fp, r5
 800599a:	e757      	b.n	800584c <__sfvwrite_r+0x12c>
 800599c:	4631      	mov	r1, r6
 800599e:	462a      	mov	r2, r5
 80059a0:	f000 fb98 	bl	80060d4 <memmove>
 80059a4:	6823      	ldr	r3, [r4, #0]
 80059a6:	442b      	add	r3, r5
 80059a8:	6023      	str	r3, [r4, #0]
 80059aa:	4621      	mov	r1, r4
 80059ac:	4650      	mov	r0, sl
 80059ae:	f7ff fcc5 	bl	800533c <_fflush_r>
 80059b2:	2800      	cmp	r0, #0
 80059b4:	d08b      	beq.n	80058ce <__sfvwrite_r+0x1ae>
 80059b6:	e7a3      	b.n	8005900 <__sfvwrite_r+0x1e0>
 80059b8:	4650      	mov	r0, sl
 80059ba:	f000 ff05 	bl	80067c8 <_realloc_r>
 80059be:	4603      	mov	r3, r0
 80059c0:	2800      	cmp	r0, #0
 80059c2:	f47f af39 	bne.w	8005838 <__sfvwrite_r+0x118>
 80059c6:	6921      	ldr	r1, [r4, #16]
 80059c8:	4650      	mov	r0, sl
 80059ca:	f7ff fdb5 	bl	8005538 <_free_r>
 80059ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059d2:	220c      	movs	r2, #12
 80059d4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80059d8:	f8ca 2000 	str.w	r2, [sl]
 80059dc:	e792      	b.n	8005904 <__sfvwrite_r+0x1e4>
 80059de:	f107 0901 	add.w	r9, r7, #1
 80059e2:	e75c      	b.n	800589e <__sfvwrite_r+0x17e>
 80059e4:	461a      	mov	r2, r3
 80059e6:	4631      	mov	r1, r6
 80059e8:	9301      	str	r3, [sp, #4]
 80059ea:	f000 fb73 	bl	80060d4 <memmove>
 80059ee:	9b01      	ldr	r3, [sp, #4]
 80059f0:	68a1      	ldr	r1, [r4, #8]
 80059f2:	6822      	ldr	r2, [r4, #0]
 80059f4:	1ac9      	subs	r1, r1, r3
 80059f6:	441a      	add	r2, r3
 80059f8:	60a1      	str	r1, [r4, #8]
 80059fa:	6022      	str	r2, [r4, #0]
 80059fc:	461d      	mov	r5, r3
 80059fe:	e766      	b.n	80058ce <__sfvwrite_r+0x1ae>
 8005a00:	230c      	movs	r3, #12
 8005a02:	f8ca 3000 	str.w	r3, [sl]
 8005a06:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a0a:	e77b      	b.n	8005904 <__sfvwrite_r+0x1e4>
 8005a0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a10:	e76b      	b.n	80058ea <__sfvwrite_r+0x1ca>
 8005a12:	bf00      	nop
 8005a14:	7ffffffe 	.word	0x7ffffffe
 8005a18:	7ffffc00 	.word	0x7ffffc00

08005a1c <_fwalk_reent>:
 8005a1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005a20:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005a24:	d01f      	beq.n	8005a66 <_fwalk_reent+0x4a>
 8005a26:	4688      	mov	r8, r1
 8005a28:	4606      	mov	r6, r0
 8005a2a:	f04f 0900 	mov.w	r9, #0
 8005a2e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005a32:	3d01      	subs	r5, #1
 8005a34:	d411      	bmi.n	8005a5a <_fwalk_reent+0x3e>
 8005a36:	89a3      	ldrh	r3, [r4, #12]
 8005a38:	2b01      	cmp	r3, #1
 8005a3a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005a3e:	4621      	mov	r1, r4
 8005a40:	4630      	mov	r0, r6
 8005a42:	d906      	bls.n	8005a52 <_fwalk_reent+0x36>
 8005a44:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005a48:	3301      	adds	r3, #1
 8005a4a:	d002      	beq.n	8005a52 <_fwalk_reent+0x36>
 8005a4c:	47c0      	blx	r8
 8005a4e:	ea49 0900 	orr.w	r9, r9, r0
 8005a52:	1c6b      	adds	r3, r5, #1
 8005a54:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005a58:	d1ed      	bne.n	8005a36 <_fwalk_reent+0x1a>
 8005a5a:	683f      	ldr	r7, [r7, #0]
 8005a5c:	2f00      	cmp	r7, #0
 8005a5e:	d1e6      	bne.n	8005a2e <_fwalk_reent+0x12>
 8005a60:	4648      	mov	r0, r9
 8005a62:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a66:	46b9      	mov	r9, r7
 8005a68:	4648      	mov	r0, r9
 8005a6a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a6e:	bf00      	nop

08005a70 <_localeconv_r>:
 8005a70:	4a04      	ldr	r2, [pc, #16]	; (8005a84 <_localeconv_r+0x14>)
 8005a72:	4b05      	ldr	r3, [pc, #20]	; (8005a88 <_localeconv_r+0x18>)
 8005a74:	6812      	ldr	r2, [r2, #0]
 8005a76:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005a78:	2800      	cmp	r0, #0
 8005a7a:	bf08      	it	eq
 8005a7c:	4618      	moveq	r0, r3
 8005a7e:	30f0      	adds	r0, #240	; 0xf0
 8005a80:	4770      	bx	lr
 8005a82:	bf00      	nop
 8005a84:	2000006c 	.word	0x2000006c
 8005a88:	200008ac 	.word	0x200008ac

08005a8c <__retarget_lock_init_recursive>:
 8005a8c:	4770      	bx	lr
 8005a8e:	bf00      	nop

08005a90 <__retarget_lock_close_recursive>:
 8005a90:	4770      	bx	lr
 8005a92:	bf00      	nop

08005a94 <__retarget_lock_acquire_recursive>:
 8005a94:	4770      	bx	lr
 8005a96:	bf00      	nop

08005a98 <__retarget_lock_release_recursive>:
 8005a98:	4770      	bx	lr
 8005a9a:	bf00      	nop

08005a9c <__swhatbuf_r>:
 8005a9c:	b570      	push	{r4, r5, r6, lr}
 8005a9e:	460c      	mov	r4, r1
 8005aa0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005aa4:	2900      	cmp	r1, #0
 8005aa6:	b096      	sub	sp, #88	; 0x58
 8005aa8:	4615      	mov	r5, r2
 8005aaa:	461e      	mov	r6, r3
 8005aac:	da0f      	bge.n	8005ace <__swhatbuf_r+0x32>
 8005aae:	89a2      	ldrh	r2, [r4, #12]
 8005ab0:	2300      	movs	r3, #0
 8005ab2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005ab6:	6033      	str	r3, [r6, #0]
 8005ab8:	d104      	bne.n	8005ac4 <__swhatbuf_r+0x28>
 8005aba:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005abe:	602b      	str	r3, [r5, #0]
 8005ac0:	b016      	add	sp, #88	; 0x58
 8005ac2:	bd70      	pop	{r4, r5, r6, pc}
 8005ac4:	2240      	movs	r2, #64	; 0x40
 8005ac6:	4618      	mov	r0, r3
 8005ac8:	602a      	str	r2, [r5, #0]
 8005aca:	b016      	add	sp, #88	; 0x58
 8005acc:	bd70      	pop	{r4, r5, r6, pc}
 8005ace:	466a      	mov	r2, sp
 8005ad0:	f001 fad0 	bl	8007074 <_fstat_r>
 8005ad4:	2800      	cmp	r0, #0
 8005ad6:	dbea      	blt.n	8005aae <__swhatbuf_r+0x12>
 8005ad8:	9b01      	ldr	r3, [sp, #4]
 8005ada:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005ade:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005ae2:	fab3 f383 	clz	r3, r3
 8005ae6:	095b      	lsrs	r3, r3, #5
 8005ae8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005aec:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005af0:	6033      	str	r3, [r6, #0]
 8005af2:	602a      	str	r2, [r5, #0]
 8005af4:	b016      	add	sp, #88	; 0x58
 8005af6:	bd70      	pop	{r4, r5, r6, pc}

08005af8 <__smakebuf_r>:
 8005af8:	898a      	ldrh	r2, [r1, #12]
 8005afa:	0792      	lsls	r2, r2, #30
 8005afc:	460b      	mov	r3, r1
 8005afe:	d506      	bpl.n	8005b0e <__smakebuf_r+0x16>
 8005b00:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005b04:	2101      	movs	r1, #1
 8005b06:	601a      	str	r2, [r3, #0]
 8005b08:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005b0c:	4770      	bx	lr
 8005b0e:	b570      	push	{r4, r5, r6, lr}
 8005b10:	b082      	sub	sp, #8
 8005b12:	ab01      	add	r3, sp, #4
 8005b14:	466a      	mov	r2, sp
 8005b16:	460c      	mov	r4, r1
 8005b18:	4605      	mov	r5, r0
 8005b1a:	f7ff ffbf 	bl	8005a9c <__swhatbuf_r>
 8005b1e:	9900      	ldr	r1, [sp, #0]
 8005b20:	4606      	mov	r6, r0
 8005b22:	4628      	mov	r0, r5
 8005b24:	f000 f832 	bl	8005b8c <_malloc_r>
 8005b28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b2c:	b1d8      	cbz	r0, 8005b66 <__smakebuf_r+0x6e>
 8005b2e:	4916      	ldr	r1, [pc, #88]	; (8005b88 <__smakebuf_r+0x90>)
 8005b30:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005b32:	9a01      	ldr	r2, [sp, #4]
 8005b34:	9900      	ldr	r1, [sp, #0]
 8005b36:	6020      	str	r0, [r4, #0]
 8005b38:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005b3c:	81a3      	strh	r3, [r4, #12]
 8005b3e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005b42:	b91a      	cbnz	r2, 8005b4c <__smakebuf_r+0x54>
 8005b44:	4333      	orrs	r3, r6
 8005b46:	81a3      	strh	r3, [r4, #12]
 8005b48:	b002      	add	sp, #8
 8005b4a:	bd70      	pop	{r4, r5, r6, pc}
 8005b4c:	4628      	mov	r0, r5
 8005b4e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005b52:	f001 faa3 	bl	800709c <_isatty_r>
 8005b56:	b1a0      	cbz	r0, 8005b82 <__smakebuf_r+0x8a>
 8005b58:	89a3      	ldrh	r3, [r4, #12]
 8005b5a:	f023 0303 	bic.w	r3, r3, #3
 8005b5e:	f043 0301 	orr.w	r3, r3, #1
 8005b62:	b21b      	sxth	r3, r3
 8005b64:	e7ee      	b.n	8005b44 <__smakebuf_r+0x4c>
 8005b66:	059a      	lsls	r2, r3, #22
 8005b68:	d4ee      	bmi.n	8005b48 <__smakebuf_r+0x50>
 8005b6a:	f023 0303 	bic.w	r3, r3, #3
 8005b6e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005b72:	f043 0302 	orr.w	r3, r3, #2
 8005b76:	2101      	movs	r1, #1
 8005b78:	81a3      	strh	r3, [r4, #12]
 8005b7a:	6022      	str	r2, [r4, #0]
 8005b7c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005b80:	e7e2      	b.n	8005b48 <__smakebuf_r+0x50>
 8005b82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b86:	e7dd      	b.n	8005b44 <__smakebuf_r+0x4c>
 8005b88:	080053e9 	.word	0x080053e9

08005b8c <_malloc_r>:
 8005b8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005b90:	f101 050b 	add.w	r5, r1, #11
 8005b94:	2d16      	cmp	r5, #22
 8005b96:	b083      	sub	sp, #12
 8005b98:	4606      	mov	r6, r0
 8005b9a:	d823      	bhi.n	8005be4 <_malloc_r+0x58>
 8005b9c:	2910      	cmp	r1, #16
 8005b9e:	f200 80b9 	bhi.w	8005d14 <_malloc_r+0x188>
 8005ba2:	f000 fafb 	bl	800619c <__malloc_lock>
 8005ba6:	2510      	movs	r5, #16
 8005ba8:	2318      	movs	r3, #24
 8005baa:	2002      	movs	r0, #2
 8005bac:	4fc5      	ldr	r7, [pc, #788]	; (8005ec4 <_malloc_r+0x338>)
 8005bae:	443b      	add	r3, r7
 8005bb0:	f1a3 0208 	sub.w	r2, r3, #8
 8005bb4:	685c      	ldr	r4, [r3, #4]
 8005bb6:	4294      	cmp	r4, r2
 8005bb8:	f000 8166 	beq.w	8005e88 <_malloc_r+0x2fc>
 8005bbc:	6863      	ldr	r3, [r4, #4]
 8005bbe:	f023 0303 	bic.w	r3, r3, #3
 8005bc2:	4423      	add	r3, r4
 8005bc4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005bc8:	685a      	ldr	r2, [r3, #4]
 8005bca:	60e9      	str	r1, [r5, #12]
 8005bcc:	f042 0201 	orr.w	r2, r2, #1
 8005bd0:	608d      	str	r5, [r1, #8]
 8005bd2:	4630      	mov	r0, r6
 8005bd4:	605a      	str	r2, [r3, #4]
 8005bd6:	f000 fae7 	bl	80061a8 <__malloc_unlock>
 8005bda:	3408      	adds	r4, #8
 8005bdc:	4620      	mov	r0, r4
 8005bde:	b003      	add	sp, #12
 8005be0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005be4:	f035 0507 	bics.w	r5, r5, #7
 8005be8:	f100 8094 	bmi.w	8005d14 <_malloc_r+0x188>
 8005bec:	42a9      	cmp	r1, r5
 8005bee:	f200 8091 	bhi.w	8005d14 <_malloc_r+0x188>
 8005bf2:	f000 fad3 	bl	800619c <__malloc_lock>
 8005bf6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005bfa:	f0c0 8183 	bcc.w	8005f04 <_malloc_r+0x378>
 8005bfe:	0a6b      	lsrs	r3, r5, #9
 8005c00:	f000 808f 	beq.w	8005d22 <_malloc_r+0x196>
 8005c04:	2b04      	cmp	r3, #4
 8005c06:	f200 8146 	bhi.w	8005e96 <_malloc_r+0x30a>
 8005c0a:	09ab      	lsrs	r3, r5, #6
 8005c0c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005c10:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005c14:	00c3      	lsls	r3, r0, #3
 8005c16:	4fab      	ldr	r7, [pc, #684]	; (8005ec4 <_malloc_r+0x338>)
 8005c18:	443b      	add	r3, r7
 8005c1a:	f1a3 0108 	sub.w	r1, r3, #8
 8005c1e:	685c      	ldr	r4, [r3, #4]
 8005c20:	42a1      	cmp	r1, r4
 8005c22:	d106      	bne.n	8005c32 <_malloc_r+0xa6>
 8005c24:	e00c      	b.n	8005c40 <_malloc_r+0xb4>
 8005c26:	2a00      	cmp	r2, #0
 8005c28:	f280 811d 	bge.w	8005e66 <_malloc_r+0x2da>
 8005c2c:	68e4      	ldr	r4, [r4, #12]
 8005c2e:	42a1      	cmp	r1, r4
 8005c30:	d006      	beq.n	8005c40 <_malloc_r+0xb4>
 8005c32:	6863      	ldr	r3, [r4, #4]
 8005c34:	f023 0303 	bic.w	r3, r3, #3
 8005c38:	1b5a      	subs	r2, r3, r5
 8005c3a:	2a0f      	cmp	r2, #15
 8005c3c:	ddf3      	ble.n	8005c26 <_malloc_r+0x9a>
 8005c3e:	4660      	mov	r0, ip
 8005c40:	693c      	ldr	r4, [r7, #16]
 8005c42:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005ed8 <_malloc_r+0x34c>
 8005c46:	4564      	cmp	r4, ip
 8005c48:	d071      	beq.n	8005d2e <_malloc_r+0x1a2>
 8005c4a:	6863      	ldr	r3, [r4, #4]
 8005c4c:	f023 0303 	bic.w	r3, r3, #3
 8005c50:	1b5a      	subs	r2, r3, r5
 8005c52:	2a0f      	cmp	r2, #15
 8005c54:	f300 8144 	bgt.w	8005ee0 <_malloc_r+0x354>
 8005c58:	2a00      	cmp	r2, #0
 8005c5a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005c5e:	f280 8126 	bge.w	8005eae <_malloc_r+0x322>
 8005c62:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005c66:	f080 8169 	bcs.w	8005f3c <_malloc_r+0x3b0>
 8005c6a:	08db      	lsrs	r3, r3, #3
 8005c6c:	1c59      	adds	r1, r3, #1
 8005c6e:	687a      	ldr	r2, [r7, #4]
 8005c70:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005c74:	f8c4 8008 	str.w	r8, [r4, #8]
 8005c78:	f04f 0e01 	mov.w	lr, #1
 8005c7c:	109b      	asrs	r3, r3, #2
 8005c7e:	fa0e f303 	lsl.w	r3, lr, r3
 8005c82:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005c86:	4313      	orrs	r3, r2
 8005c88:	f1ae 0208 	sub.w	r2, lr, #8
 8005c8c:	60e2      	str	r2, [r4, #12]
 8005c8e:	607b      	str	r3, [r7, #4]
 8005c90:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005c94:	f8c8 400c 	str.w	r4, [r8, #12]
 8005c98:	1082      	asrs	r2, r0, #2
 8005c9a:	2401      	movs	r4, #1
 8005c9c:	4094      	lsls	r4, r2
 8005c9e:	429c      	cmp	r4, r3
 8005ca0:	d84b      	bhi.n	8005d3a <_malloc_r+0x1ae>
 8005ca2:	421c      	tst	r4, r3
 8005ca4:	d106      	bne.n	8005cb4 <_malloc_r+0x128>
 8005ca6:	f020 0003 	bic.w	r0, r0, #3
 8005caa:	0064      	lsls	r4, r4, #1
 8005cac:	421c      	tst	r4, r3
 8005cae:	f100 0004 	add.w	r0, r0, #4
 8005cb2:	d0fa      	beq.n	8005caa <_malloc_r+0x11e>
 8005cb4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005cb8:	46ce      	mov	lr, r9
 8005cba:	4680      	mov	r8, r0
 8005cbc:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005cc0:	459e      	cmp	lr, r3
 8005cc2:	d107      	bne.n	8005cd4 <_malloc_r+0x148>
 8005cc4:	e122      	b.n	8005f0c <_malloc_r+0x380>
 8005cc6:	2a00      	cmp	r2, #0
 8005cc8:	f280 8129 	bge.w	8005f1e <_malloc_r+0x392>
 8005ccc:	68db      	ldr	r3, [r3, #12]
 8005cce:	459e      	cmp	lr, r3
 8005cd0:	f000 811c 	beq.w	8005f0c <_malloc_r+0x380>
 8005cd4:	6859      	ldr	r1, [r3, #4]
 8005cd6:	f021 0103 	bic.w	r1, r1, #3
 8005cda:	1b4a      	subs	r2, r1, r5
 8005cdc:	2a0f      	cmp	r2, #15
 8005cde:	ddf2      	ble.n	8005cc6 <_malloc_r+0x13a>
 8005ce0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005ce4:	195c      	adds	r4, r3, r5
 8005ce6:	f045 0501 	orr.w	r5, r5, #1
 8005cea:	605d      	str	r5, [r3, #4]
 8005cec:	f042 0501 	orr.w	r5, r2, #1
 8005cf0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005cf4:	4630      	mov	r0, r6
 8005cf6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005cfa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005cfe:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005d02:	6065      	str	r5, [r4, #4]
 8005d04:	505a      	str	r2, [r3, r1]
 8005d06:	9301      	str	r3, [sp, #4]
 8005d08:	f000 fa4e 	bl	80061a8 <__malloc_unlock>
 8005d0c:	9b01      	ldr	r3, [sp, #4]
 8005d0e:	f103 0408 	add.w	r4, r3, #8
 8005d12:	e763      	b.n	8005bdc <_malloc_r+0x50>
 8005d14:	2400      	movs	r4, #0
 8005d16:	230c      	movs	r3, #12
 8005d18:	4620      	mov	r0, r4
 8005d1a:	6033      	str	r3, [r6, #0]
 8005d1c:	b003      	add	sp, #12
 8005d1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d22:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005d26:	2040      	movs	r0, #64	; 0x40
 8005d28:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005d2c:	e773      	b.n	8005c16 <_malloc_r+0x8a>
 8005d2e:	687b      	ldr	r3, [r7, #4]
 8005d30:	1082      	asrs	r2, r0, #2
 8005d32:	2401      	movs	r4, #1
 8005d34:	4094      	lsls	r4, r2
 8005d36:	429c      	cmp	r4, r3
 8005d38:	d9b3      	bls.n	8005ca2 <_malloc_r+0x116>
 8005d3a:	68bc      	ldr	r4, [r7, #8]
 8005d3c:	6863      	ldr	r3, [r4, #4]
 8005d3e:	f023 0903 	bic.w	r9, r3, #3
 8005d42:	45a9      	cmp	r9, r5
 8005d44:	d303      	bcc.n	8005d4e <_malloc_r+0x1c2>
 8005d46:	eba9 0305 	sub.w	r3, r9, r5
 8005d4a:	2b0f      	cmp	r3, #15
 8005d4c:	dc7b      	bgt.n	8005e46 <_malloc_r+0x2ba>
 8005d4e:	4b5e      	ldr	r3, [pc, #376]	; (8005ec8 <_malloc_r+0x33c>)
 8005d50:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005edc <_malloc_r+0x350>
 8005d54:	681a      	ldr	r2, [r3, #0]
 8005d56:	f8da 3000 	ldr.w	r3, [sl]
 8005d5a:	3301      	adds	r3, #1
 8005d5c:	eb05 0802 	add.w	r8, r5, r2
 8005d60:	f000 8148 	beq.w	8005ff4 <_malloc_r+0x468>
 8005d64:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005d68:	f108 080f 	add.w	r8, r8, #15
 8005d6c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005d70:	f028 080f 	bic.w	r8, r8, #15
 8005d74:	4641      	mov	r1, r8
 8005d76:	4630      	mov	r0, r6
 8005d78:	f000 ff08 	bl	8006b8c <_sbrk_r>
 8005d7c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005d80:	4683      	mov	fp, r0
 8005d82:	f000 8104 	beq.w	8005f8e <_malloc_r+0x402>
 8005d86:	eb04 0009 	add.w	r0, r4, r9
 8005d8a:	4558      	cmp	r0, fp
 8005d8c:	f200 80fd 	bhi.w	8005f8a <_malloc_r+0x3fe>
 8005d90:	4a4e      	ldr	r2, [pc, #312]	; (8005ecc <_malloc_r+0x340>)
 8005d92:	6813      	ldr	r3, [r2, #0]
 8005d94:	4443      	add	r3, r8
 8005d96:	6013      	str	r3, [r2, #0]
 8005d98:	f000 814d 	beq.w	8006036 <_malloc_r+0x4aa>
 8005d9c:	f8da 1000 	ldr.w	r1, [sl]
 8005da0:	3101      	adds	r1, #1
 8005da2:	bf1b      	ittet	ne
 8005da4:	ebab 0000 	subne.w	r0, fp, r0
 8005da8:	181b      	addne	r3, r3, r0
 8005daa:	f8ca b000 	streq.w	fp, [sl]
 8005dae:	6013      	strne	r3, [r2, #0]
 8005db0:	f01b 0307 	ands.w	r3, fp, #7
 8005db4:	f000 8134 	beq.w	8006020 <_malloc_r+0x494>
 8005db8:	f1c3 0108 	rsb	r1, r3, #8
 8005dbc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005dc0:	448b      	add	fp, r1
 8005dc2:	3308      	adds	r3, #8
 8005dc4:	44d8      	add	r8, fp
 8005dc6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005dca:	eba3 0808 	sub.w	r8, r3, r8
 8005dce:	4641      	mov	r1, r8
 8005dd0:	4630      	mov	r0, r6
 8005dd2:	9201      	str	r2, [sp, #4]
 8005dd4:	f000 feda 	bl	8006b8c <_sbrk_r>
 8005dd8:	1c43      	adds	r3, r0, #1
 8005dda:	9a01      	ldr	r2, [sp, #4]
 8005ddc:	f000 8146 	beq.w	800606c <_malloc_r+0x4e0>
 8005de0:	eba0 010b 	sub.w	r1, r0, fp
 8005de4:	4441      	add	r1, r8
 8005de6:	f041 0101 	orr.w	r1, r1, #1
 8005dea:	6813      	ldr	r3, [r2, #0]
 8005dec:	f8c7 b008 	str.w	fp, [r7, #8]
 8005df0:	4443      	add	r3, r8
 8005df2:	42bc      	cmp	r4, r7
 8005df4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005df8:	6013      	str	r3, [r2, #0]
 8005dfa:	d015      	beq.n	8005e28 <_malloc_r+0x29c>
 8005dfc:	f1b9 0f0f 	cmp.w	r9, #15
 8005e00:	f240 8130 	bls.w	8006064 <_malloc_r+0x4d8>
 8005e04:	6860      	ldr	r0, [r4, #4]
 8005e06:	f1a9 010c 	sub.w	r1, r9, #12
 8005e0a:	f021 0107 	bic.w	r1, r1, #7
 8005e0e:	f000 0001 	and.w	r0, r0, #1
 8005e12:	eb04 0c01 	add.w	ip, r4, r1
 8005e16:	4308      	orrs	r0, r1
 8005e18:	f04f 0e05 	mov.w	lr, #5
 8005e1c:	290f      	cmp	r1, #15
 8005e1e:	6060      	str	r0, [r4, #4]
 8005e20:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005e24:	f200 813a 	bhi.w	800609c <_malloc_r+0x510>
 8005e28:	4a29      	ldr	r2, [pc, #164]	; (8005ed0 <_malloc_r+0x344>)
 8005e2a:	482a      	ldr	r0, [pc, #168]	; (8005ed4 <_malloc_r+0x348>)
 8005e2c:	6811      	ldr	r1, [r2, #0]
 8005e2e:	68bc      	ldr	r4, [r7, #8]
 8005e30:	428b      	cmp	r3, r1
 8005e32:	6801      	ldr	r1, [r0, #0]
 8005e34:	bf88      	it	hi
 8005e36:	6013      	strhi	r3, [r2, #0]
 8005e38:	6862      	ldr	r2, [r4, #4]
 8005e3a:	428b      	cmp	r3, r1
 8005e3c:	f022 0203 	bic.w	r2, r2, #3
 8005e40:	bf88      	it	hi
 8005e42:	6003      	strhi	r3, [r0, #0]
 8005e44:	e0a7      	b.n	8005f96 <_malloc_r+0x40a>
 8005e46:	1962      	adds	r2, r4, r5
 8005e48:	f043 0301 	orr.w	r3, r3, #1
 8005e4c:	f045 0501 	orr.w	r5, r5, #1
 8005e50:	6065      	str	r5, [r4, #4]
 8005e52:	4630      	mov	r0, r6
 8005e54:	60ba      	str	r2, [r7, #8]
 8005e56:	6053      	str	r3, [r2, #4]
 8005e58:	f000 f9a6 	bl	80061a8 <__malloc_unlock>
 8005e5c:	3408      	adds	r4, #8
 8005e5e:	4620      	mov	r0, r4
 8005e60:	b003      	add	sp, #12
 8005e62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e66:	4423      	add	r3, r4
 8005e68:	68e1      	ldr	r1, [r4, #12]
 8005e6a:	685a      	ldr	r2, [r3, #4]
 8005e6c:	68a5      	ldr	r5, [r4, #8]
 8005e6e:	f042 0201 	orr.w	r2, r2, #1
 8005e72:	60e9      	str	r1, [r5, #12]
 8005e74:	4630      	mov	r0, r6
 8005e76:	608d      	str	r5, [r1, #8]
 8005e78:	605a      	str	r2, [r3, #4]
 8005e7a:	f000 f995 	bl	80061a8 <__malloc_unlock>
 8005e7e:	3408      	adds	r4, #8
 8005e80:	4620      	mov	r0, r4
 8005e82:	b003      	add	sp, #12
 8005e84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e88:	68dc      	ldr	r4, [r3, #12]
 8005e8a:	42a3      	cmp	r3, r4
 8005e8c:	bf08      	it	eq
 8005e8e:	3002      	addeq	r0, #2
 8005e90:	f43f aed6 	beq.w	8005c40 <_malloc_r+0xb4>
 8005e94:	e692      	b.n	8005bbc <_malloc_r+0x30>
 8005e96:	2b14      	cmp	r3, #20
 8005e98:	d971      	bls.n	8005f7e <_malloc_r+0x3f2>
 8005e9a:	2b54      	cmp	r3, #84	; 0x54
 8005e9c:	f200 80ad 	bhi.w	8005ffa <_malloc_r+0x46e>
 8005ea0:	0b2b      	lsrs	r3, r5, #12
 8005ea2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005ea6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005eaa:	00c3      	lsls	r3, r0, #3
 8005eac:	e6b3      	b.n	8005c16 <_malloc_r+0x8a>
 8005eae:	4423      	add	r3, r4
 8005eb0:	4630      	mov	r0, r6
 8005eb2:	685a      	ldr	r2, [r3, #4]
 8005eb4:	f042 0201 	orr.w	r2, r2, #1
 8005eb8:	605a      	str	r2, [r3, #4]
 8005eba:	3408      	adds	r4, #8
 8005ebc:	f000 f974 	bl	80061a8 <__malloc_unlock>
 8005ec0:	e68c      	b.n	8005bdc <_malloc_r+0x50>
 8005ec2:	bf00      	nop
 8005ec4:	2000049c 	.word	0x2000049c
 8005ec8:	20000aec 	.word	0x20000aec
 8005ecc:	20000abc 	.word	0x20000abc
 8005ed0:	20000ae4 	.word	0x20000ae4
 8005ed4:	20000ae8 	.word	0x20000ae8
 8005ed8:	200004a4 	.word	0x200004a4
 8005edc:	200008a4 	.word	0x200008a4
 8005ee0:	1961      	adds	r1, r4, r5
 8005ee2:	f045 0e01 	orr.w	lr, r5, #1
 8005ee6:	f042 0501 	orr.w	r5, r2, #1
 8005eea:	f8c4 e004 	str.w	lr, [r4, #4]
 8005eee:	4630      	mov	r0, r6
 8005ef0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ef4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ef8:	604d      	str	r5, [r1, #4]
 8005efa:	50e2      	str	r2, [r4, r3]
 8005efc:	f000 f954 	bl	80061a8 <__malloc_unlock>
 8005f00:	3408      	adds	r4, #8
 8005f02:	e66b      	b.n	8005bdc <_malloc_r+0x50>
 8005f04:	08e8      	lsrs	r0, r5, #3
 8005f06:	f105 0308 	add.w	r3, r5, #8
 8005f0a:	e64f      	b.n	8005bac <_malloc_r+0x20>
 8005f0c:	f108 0801 	add.w	r8, r8, #1
 8005f10:	f018 0f03 	tst.w	r8, #3
 8005f14:	f10e 0e08 	add.w	lr, lr, #8
 8005f18:	f47f aed0 	bne.w	8005cbc <_malloc_r+0x130>
 8005f1c:	e052      	b.n	8005fc4 <_malloc_r+0x438>
 8005f1e:	4419      	add	r1, r3
 8005f20:	461c      	mov	r4, r3
 8005f22:	684a      	ldr	r2, [r1, #4]
 8005f24:	68db      	ldr	r3, [r3, #12]
 8005f26:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005f2a:	f042 0201 	orr.w	r2, r2, #1
 8005f2e:	604a      	str	r2, [r1, #4]
 8005f30:	4630      	mov	r0, r6
 8005f32:	60eb      	str	r3, [r5, #12]
 8005f34:	609d      	str	r5, [r3, #8]
 8005f36:	f000 f937 	bl	80061a8 <__malloc_unlock>
 8005f3a:	e64f      	b.n	8005bdc <_malloc_r+0x50>
 8005f3c:	0a5a      	lsrs	r2, r3, #9
 8005f3e:	2a04      	cmp	r2, #4
 8005f40:	d935      	bls.n	8005fae <_malloc_r+0x422>
 8005f42:	2a14      	cmp	r2, #20
 8005f44:	d86f      	bhi.n	8006026 <_malloc_r+0x49a>
 8005f46:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005f4a:	00c9      	lsls	r1, r1, #3
 8005f4c:	325b      	adds	r2, #91	; 0x5b
 8005f4e:	eb07 0e01 	add.w	lr, r7, r1
 8005f52:	5879      	ldr	r1, [r7, r1]
 8005f54:	f1ae 0e08 	sub.w	lr, lr, #8
 8005f58:	458e      	cmp	lr, r1
 8005f5a:	d058      	beq.n	800600e <_malloc_r+0x482>
 8005f5c:	684a      	ldr	r2, [r1, #4]
 8005f5e:	f022 0203 	bic.w	r2, r2, #3
 8005f62:	429a      	cmp	r2, r3
 8005f64:	d902      	bls.n	8005f6c <_malloc_r+0x3e0>
 8005f66:	6889      	ldr	r1, [r1, #8]
 8005f68:	458e      	cmp	lr, r1
 8005f6a:	d1f7      	bne.n	8005f5c <_malloc_r+0x3d0>
 8005f6c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005f70:	687b      	ldr	r3, [r7, #4]
 8005f72:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005f76:	f8ce 4008 	str.w	r4, [lr, #8]
 8005f7a:	60cc      	str	r4, [r1, #12]
 8005f7c:	e68c      	b.n	8005c98 <_malloc_r+0x10c>
 8005f7e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005f82:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005f86:	00c3      	lsls	r3, r0, #3
 8005f88:	e645      	b.n	8005c16 <_malloc_r+0x8a>
 8005f8a:	42bc      	cmp	r4, r7
 8005f8c:	d072      	beq.n	8006074 <_malloc_r+0x4e8>
 8005f8e:	68bc      	ldr	r4, [r7, #8]
 8005f90:	6862      	ldr	r2, [r4, #4]
 8005f92:	f022 0203 	bic.w	r2, r2, #3
 8005f96:	4295      	cmp	r5, r2
 8005f98:	eba2 0305 	sub.w	r3, r2, r5
 8005f9c:	d802      	bhi.n	8005fa4 <_malloc_r+0x418>
 8005f9e:	2b0f      	cmp	r3, #15
 8005fa0:	f73f af51 	bgt.w	8005e46 <_malloc_r+0x2ba>
 8005fa4:	4630      	mov	r0, r6
 8005fa6:	f000 f8ff 	bl	80061a8 <__malloc_unlock>
 8005faa:	2400      	movs	r4, #0
 8005fac:	e616      	b.n	8005bdc <_malloc_r+0x50>
 8005fae:	099a      	lsrs	r2, r3, #6
 8005fb0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005fb4:	00c9      	lsls	r1, r1, #3
 8005fb6:	3238      	adds	r2, #56	; 0x38
 8005fb8:	e7c9      	b.n	8005f4e <_malloc_r+0x3c2>
 8005fba:	f8d9 9000 	ldr.w	r9, [r9]
 8005fbe:	4599      	cmp	r9, r3
 8005fc0:	f040 8083 	bne.w	80060ca <_malloc_r+0x53e>
 8005fc4:	f010 0f03 	tst.w	r0, #3
 8005fc8:	f1a9 0308 	sub.w	r3, r9, #8
 8005fcc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005fd0:	d1f3      	bne.n	8005fba <_malloc_r+0x42e>
 8005fd2:	687b      	ldr	r3, [r7, #4]
 8005fd4:	ea23 0304 	bic.w	r3, r3, r4
 8005fd8:	607b      	str	r3, [r7, #4]
 8005fda:	0064      	lsls	r4, r4, #1
 8005fdc:	429c      	cmp	r4, r3
 8005fde:	f63f aeac 	bhi.w	8005d3a <_malloc_r+0x1ae>
 8005fe2:	b91c      	cbnz	r4, 8005fec <_malloc_r+0x460>
 8005fe4:	e6a9      	b.n	8005d3a <_malloc_r+0x1ae>
 8005fe6:	0064      	lsls	r4, r4, #1
 8005fe8:	f108 0804 	add.w	r8, r8, #4
 8005fec:	421c      	tst	r4, r3
 8005fee:	d0fa      	beq.n	8005fe6 <_malloc_r+0x45a>
 8005ff0:	4640      	mov	r0, r8
 8005ff2:	e65f      	b.n	8005cb4 <_malloc_r+0x128>
 8005ff4:	f108 0810 	add.w	r8, r8, #16
 8005ff8:	e6bc      	b.n	8005d74 <_malloc_r+0x1e8>
 8005ffa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005ffe:	d826      	bhi.n	800604e <_malloc_r+0x4c2>
 8006000:	0beb      	lsrs	r3, r5, #15
 8006002:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006006:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800600a:	00c3      	lsls	r3, r0, #3
 800600c:	e603      	b.n	8005c16 <_malloc_r+0x8a>
 800600e:	687b      	ldr	r3, [r7, #4]
 8006010:	1092      	asrs	r2, r2, #2
 8006012:	f04f 0801 	mov.w	r8, #1
 8006016:	fa08 f202 	lsl.w	r2, r8, r2
 800601a:	4313      	orrs	r3, r2
 800601c:	607b      	str	r3, [r7, #4]
 800601e:	e7a8      	b.n	8005f72 <_malloc_r+0x3e6>
 8006020:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006024:	e6ce      	b.n	8005dc4 <_malloc_r+0x238>
 8006026:	2a54      	cmp	r2, #84	; 0x54
 8006028:	d829      	bhi.n	800607e <_malloc_r+0x4f2>
 800602a:	0b1a      	lsrs	r2, r3, #12
 800602c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006030:	00c9      	lsls	r1, r1, #3
 8006032:	326e      	adds	r2, #110	; 0x6e
 8006034:	e78b      	b.n	8005f4e <_malloc_r+0x3c2>
 8006036:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800603a:	2900      	cmp	r1, #0
 800603c:	f47f aeae 	bne.w	8005d9c <_malloc_r+0x210>
 8006040:	eb09 0208 	add.w	r2, r9, r8
 8006044:	68b9      	ldr	r1, [r7, #8]
 8006046:	f042 0201 	orr.w	r2, r2, #1
 800604a:	604a      	str	r2, [r1, #4]
 800604c:	e6ec      	b.n	8005e28 <_malloc_r+0x29c>
 800604e:	f240 5254 	movw	r2, #1364	; 0x554
 8006052:	4293      	cmp	r3, r2
 8006054:	d81c      	bhi.n	8006090 <_malloc_r+0x504>
 8006056:	0cab      	lsrs	r3, r5, #18
 8006058:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800605c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006060:	00c3      	lsls	r3, r0, #3
 8006062:	e5d8      	b.n	8005c16 <_malloc_r+0x8a>
 8006064:	2301      	movs	r3, #1
 8006066:	f8cb 3004 	str.w	r3, [fp, #4]
 800606a:	e79b      	b.n	8005fa4 <_malloc_r+0x418>
 800606c:	2101      	movs	r1, #1
 800606e:	f04f 0800 	mov.w	r8, #0
 8006072:	e6ba      	b.n	8005dea <_malloc_r+0x25e>
 8006074:	4a16      	ldr	r2, [pc, #88]	; (80060d0 <_malloc_r+0x544>)
 8006076:	6813      	ldr	r3, [r2, #0]
 8006078:	4443      	add	r3, r8
 800607a:	6013      	str	r3, [r2, #0]
 800607c:	e68e      	b.n	8005d9c <_malloc_r+0x210>
 800607e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006082:	d814      	bhi.n	80060ae <_malloc_r+0x522>
 8006084:	0bda      	lsrs	r2, r3, #15
 8006086:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800608a:	00c9      	lsls	r1, r1, #3
 800608c:	3277      	adds	r2, #119	; 0x77
 800608e:	e75e      	b.n	8005f4e <_malloc_r+0x3c2>
 8006090:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006094:	207f      	movs	r0, #127	; 0x7f
 8006096:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800609a:	e5bc      	b.n	8005c16 <_malloc_r+0x8a>
 800609c:	f104 0108 	add.w	r1, r4, #8
 80060a0:	4630      	mov	r0, r6
 80060a2:	9201      	str	r2, [sp, #4]
 80060a4:	f7ff fa48 	bl	8005538 <_free_r>
 80060a8:	9a01      	ldr	r2, [sp, #4]
 80060aa:	6813      	ldr	r3, [r2, #0]
 80060ac:	e6bc      	b.n	8005e28 <_malloc_r+0x29c>
 80060ae:	f240 5154 	movw	r1, #1364	; 0x554
 80060b2:	428a      	cmp	r2, r1
 80060b4:	d805      	bhi.n	80060c2 <_malloc_r+0x536>
 80060b6:	0c9a      	lsrs	r2, r3, #18
 80060b8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80060bc:	00c9      	lsls	r1, r1, #3
 80060be:	327c      	adds	r2, #124	; 0x7c
 80060c0:	e745      	b.n	8005f4e <_malloc_r+0x3c2>
 80060c2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80060c6:	227e      	movs	r2, #126	; 0x7e
 80060c8:	e741      	b.n	8005f4e <_malloc_r+0x3c2>
 80060ca:	687b      	ldr	r3, [r7, #4]
 80060cc:	e785      	b.n	8005fda <_malloc_r+0x44e>
 80060ce:	bf00      	nop
 80060d0:	20000abc 	.word	0x20000abc

080060d4 <memmove>:
 80060d4:	4288      	cmp	r0, r1
 80060d6:	b4f0      	push	{r4, r5, r6, r7}
 80060d8:	d90d      	bls.n	80060f6 <memmove+0x22>
 80060da:	188b      	adds	r3, r1, r2
 80060dc:	4283      	cmp	r3, r0
 80060de:	d90a      	bls.n	80060f6 <memmove+0x22>
 80060e0:	1884      	adds	r4, r0, r2
 80060e2:	b132      	cbz	r2, 80060f2 <memmove+0x1e>
 80060e4:	4622      	mov	r2, r4
 80060e6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80060ea:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80060ee:	4299      	cmp	r1, r3
 80060f0:	d1f9      	bne.n	80060e6 <memmove+0x12>
 80060f2:	bcf0      	pop	{r4, r5, r6, r7}
 80060f4:	4770      	bx	lr
 80060f6:	2a0f      	cmp	r2, #15
 80060f8:	d949      	bls.n	800618e <memmove+0xba>
 80060fa:	ea40 0301 	orr.w	r3, r0, r1
 80060fe:	079b      	lsls	r3, r3, #30
 8006100:	d147      	bne.n	8006192 <memmove+0xbe>
 8006102:	f1a2 0310 	sub.w	r3, r2, #16
 8006106:	091b      	lsrs	r3, r3, #4
 8006108:	f101 0720 	add.w	r7, r1, #32
 800610c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006110:	f101 0410 	add.w	r4, r1, #16
 8006114:	f100 0510 	add.w	r5, r0, #16
 8006118:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800611c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006120:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006124:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006128:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800612c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006130:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006134:	f845 6c04 	str.w	r6, [r5, #-4]
 8006138:	3410      	adds	r4, #16
 800613a:	42bc      	cmp	r4, r7
 800613c:	f105 0510 	add.w	r5, r5, #16
 8006140:	d1ea      	bne.n	8006118 <memmove+0x44>
 8006142:	3301      	adds	r3, #1
 8006144:	f002 050f 	and.w	r5, r2, #15
 8006148:	011b      	lsls	r3, r3, #4
 800614a:	2d03      	cmp	r5, #3
 800614c:	4419      	add	r1, r3
 800614e:	4403      	add	r3, r0
 8006150:	d921      	bls.n	8006196 <memmove+0xc2>
 8006152:	1f1f      	subs	r7, r3, #4
 8006154:	460e      	mov	r6, r1
 8006156:	462c      	mov	r4, r5
 8006158:	3c04      	subs	r4, #4
 800615a:	f856 cb04 	ldr.w	ip, [r6], #4
 800615e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006162:	2c03      	cmp	r4, #3
 8006164:	d8f8      	bhi.n	8006158 <memmove+0x84>
 8006166:	1f2c      	subs	r4, r5, #4
 8006168:	f024 0403 	bic.w	r4, r4, #3
 800616c:	3404      	adds	r4, #4
 800616e:	4423      	add	r3, r4
 8006170:	4421      	add	r1, r4
 8006172:	f002 0203 	and.w	r2, r2, #3
 8006176:	2a00      	cmp	r2, #0
 8006178:	d0bb      	beq.n	80060f2 <memmove+0x1e>
 800617a:	3b01      	subs	r3, #1
 800617c:	440a      	add	r2, r1
 800617e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006182:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006186:	4291      	cmp	r1, r2
 8006188:	d1f9      	bne.n	800617e <memmove+0xaa>
 800618a:	bcf0      	pop	{r4, r5, r6, r7}
 800618c:	4770      	bx	lr
 800618e:	4603      	mov	r3, r0
 8006190:	e7f1      	b.n	8006176 <memmove+0xa2>
 8006192:	4603      	mov	r3, r0
 8006194:	e7f1      	b.n	800617a <memmove+0xa6>
 8006196:	462a      	mov	r2, r5
 8006198:	e7ed      	b.n	8006176 <memmove+0xa2>
 800619a:	bf00      	nop

0800619c <__malloc_lock>:
 800619c:	4801      	ldr	r0, [pc, #4]	; (80061a4 <__malloc_lock+0x8>)
 800619e:	f7ff bc79 	b.w	8005a94 <__retarget_lock_acquire_recursive>
 80061a2:	bf00      	nop
 80061a4:	20000b48 	.word	0x20000b48

080061a8 <__malloc_unlock>:
 80061a8:	4801      	ldr	r0, [pc, #4]	; (80061b0 <__malloc_unlock+0x8>)
 80061aa:	f7ff bc75 	b.w	8005a98 <__retarget_lock_release_recursive>
 80061ae:	bf00      	nop
 80061b0:	20000b48 	.word	0x20000b48

080061b4 <_Balloc>:
 80061b4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80061b6:	b570      	push	{r4, r5, r6, lr}
 80061b8:	4605      	mov	r5, r0
 80061ba:	460c      	mov	r4, r1
 80061bc:	b14b      	cbz	r3, 80061d2 <_Balloc+0x1e>
 80061be:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80061c2:	b180      	cbz	r0, 80061e6 <_Balloc+0x32>
 80061c4:	6802      	ldr	r2, [r0, #0]
 80061c6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80061ca:	2300      	movs	r3, #0
 80061cc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80061d0:	bd70      	pop	{r4, r5, r6, pc}
 80061d2:	2221      	movs	r2, #33	; 0x21
 80061d4:	2104      	movs	r1, #4
 80061d6:	f000 fe1d 	bl	8006e14 <_calloc_r>
 80061da:	4603      	mov	r3, r0
 80061dc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80061de:	2800      	cmp	r0, #0
 80061e0:	d1ed      	bne.n	80061be <_Balloc+0xa>
 80061e2:	2000      	movs	r0, #0
 80061e4:	bd70      	pop	{r4, r5, r6, pc}
 80061e6:	2101      	movs	r1, #1
 80061e8:	fa01 f604 	lsl.w	r6, r1, r4
 80061ec:	1d72      	adds	r2, r6, #5
 80061ee:	4628      	mov	r0, r5
 80061f0:	0092      	lsls	r2, r2, #2
 80061f2:	f000 fe0f 	bl	8006e14 <_calloc_r>
 80061f6:	2800      	cmp	r0, #0
 80061f8:	d0f3      	beq.n	80061e2 <_Balloc+0x2e>
 80061fa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80061fe:	e7e4      	b.n	80061ca <_Balloc+0x16>

08006200 <_Bfree>:
 8006200:	b131      	cbz	r1, 8006210 <_Bfree+0x10>
 8006202:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006204:	684a      	ldr	r2, [r1, #4]
 8006206:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800620a:	6008      	str	r0, [r1, #0]
 800620c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006210:	4770      	bx	lr
 8006212:	bf00      	nop

08006214 <__multadd>:
 8006214:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006216:	690c      	ldr	r4, [r1, #16]
 8006218:	b083      	sub	sp, #12
 800621a:	460d      	mov	r5, r1
 800621c:	4606      	mov	r6, r0
 800621e:	f101 0c14 	add.w	ip, r1, #20
 8006222:	2700      	movs	r7, #0
 8006224:	f8dc 0000 	ldr.w	r0, [ip]
 8006228:	b281      	uxth	r1, r0
 800622a:	fb02 3301 	mla	r3, r2, r1, r3
 800622e:	0c01      	lsrs	r1, r0, #16
 8006230:	0c18      	lsrs	r0, r3, #16
 8006232:	fb02 0101 	mla	r1, r2, r1, r0
 8006236:	b29b      	uxth	r3, r3
 8006238:	3701      	adds	r7, #1
 800623a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800623e:	42bc      	cmp	r4, r7
 8006240:	f84c 3b04 	str.w	r3, [ip], #4
 8006244:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006248:	dcec      	bgt.n	8006224 <__multadd+0x10>
 800624a:	b13b      	cbz	r3, 800625c <__multadd+0x48>
 800624c:	68aa      	ldr	r2, [r5, #8]
 800624e:	42a2      	cmp	r2, r4
 8006250:	dd07      	ble.n	8006262 <__multadd+0x4e>
 8006252:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006256:	3401      	adds	r4, #1
 8006258:	6153      	str	r3, [r2, #20]
 800625a:	612c      	str	r4, [r5, #16]
 800625c:	4628      	mov	r0, r5
 800625e:	b003      	add	sp, #12
 8006260:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006262:	6869      	ldr	r1, [r5, #4]
 8006264:	9301      	str	r3, [sp, #4]
 8006266:	3101      	adds	r1, #1
 8006268:	4630      	mov	r0, r6
 800626a:	f7ff ffa3 	bl	80061b4 <_Balloc>
 800626e:	692a      	ldr	r2, [r5, #16]
 8006270:	3202      	adds	r2, #2
 8006272:	f105 010c 	add.w	r1, r5, #12
 8006276:	4607      	mov	r7, r0
 8006278:	0092      	lsls	r2, r2, #2
 800627a:	300c      	adds	r0, #12
 800627c:	f7fa fdbe 	bl	8000dfc <memcpy>
 8006280:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006282:	6869      	ldr	r1, [r5, #4]
 8006284:	9b01      	ldr	r3, [sp, #4]
 8006286:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800628a:	6028      	str	r0, [r5, #0]
 800628c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006290:	463d      	mov	r5, r7
 8006292:	e7de      	b.n	8006252 <__multadd+0x3e>

08006294 <__hi0bits>:
 8006294:	0c02      	lsrs	r2, r0, #16
 8006296:	0412      	lsls	r2, r2, #16
 8006298:	4603      	mov	r3, r0
 800629a:	b9c2      	cbnz	r2, 80062ce <__hi0bits+0x3a>
 800629c:	0403      	lsls	r3, r0, #16
 800629e:	2010      	movs	r0, #16
 80062a0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80062a4:	bf04      	itt	eq
 80062a6:	021b      	lsleq	r3, r3, #8
 80062a8:	3008      	addeq	r0, #8
 80062aa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80062ae:	bf04      	itt	eq
 80062b0:	011b      	lsleq	r3, r3, #4
 80062b2:	3004      	addeq	r0, #4
 80062b4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80062b8:	bf04      	itt	eq
 80062ba:	009b      	lsleq	r3, r3, #2
 80062bc:	3002      	addeq	r0, #2
 80062be:	2b00      	cmp	r3, #0
 80062c0:	db04      	blt.n	80062cc <__hi0bits+0x38>
 80062c2:	005b      	lsls	r3, r3, #1
 80062c4:	d501      	bpl.n	80062ca <__hi0bits+0x36>
 80062c6:	3001      	adds	r0, #1
 80062c8:	4770      	bx	lr
 80062ca:	2020      	movs	r0, #32
 80062cc:	4770      	bx	lr
 80062ce:	2000      	movs	r0, #0
 80062d0:	e7e6      	b.n	80062a0 <__hi0bits+0xc>
 80062d2:	bf00      	nop

080062d4 <__lo0bits>:
 80062d4:	6803      	ldr	r3, [r0, #0]
 80062d6:	f013 0207 	ands.w	r2, r3, #7
 80062da:	4601      	mov	r1, r0
 80062dc:	d007      	beq.n	80062ee <__lo0bits+0x1a>
 80062de:	07da      	lsls	r2, r3, #31
 80062e0:	d41f      	bmi.n	8006322 <__lo0bits+0x4e>
 80062e2:	0798      	lsls	r0, r3, #30
 80062e4:	d51f      	bpl.n	8006326 <__lo0bits+0x52>
 80062e6:	085b      	lsrs	r3, r3, #1
 80062e8:	600b      	str	r3, [r1, #0]
 80062ea:	2001      	movs	r0, #1
 80062ec:	4770      	bx	lr
 80062ee:	b298      	uxth	r0, r3
 80062f0:	b1a0      	cbz	r0, 800631c <__lo0bits+0x48>
 80062f2:	4610      	mov	r0, r2
 80062f4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80062f8:	bf04      	itt	eq
 80062fa:	0a1b      	lsreq	r3, r3, #8
 80062fc:	3008      	addeq	r0, #8
 80062fe:	071a      	lsls	r2, r3, #28
 8006300:	bf04      	itt	eq
 8006302:	091b      	lsreq	r3, r3, #4
 8006304:	3004      	addeq	r0, #4
 8006306:	079a      	lsls	r2, r3, #30
 8006308:	bf04      	itt	eq
 800630a:	089b      	lsreq	r3, r3, #2
 800630c:	3002      	addeq	r0, #2
 800630e:	07da      	lsls	r2, r3, #31
 8006310:	d402      	bmi.n	8006318 <__lo0bits+0x44>
 8006312:	085b      	lsrs	r3, r3, #1
 8006314:	d00b      	beq.n	800632e <__lo0bits+0x5a>
 8006316:	3001      	adds	r0, #1
 8006318:	600b      	str	r3, [r1, #0]
 800631a:	4770      	bx	lr
 800631c:	0c1b      	lsrs	r3, r3, #16
 800631e:	2010      	movs	r0, #16
 8006320:	e7e8      	b.n	80062f4 <__lo0bits+0x20>
 8006322:	2000      	movs	r0, #0
 8006324:	4770      	bx	lr
 8006326:	089b      	lsrs	r3, r3, #2
 8006328:	600b      	str	r3, [r1, #0]
 800632a:	2002      	movs	r0, #2
 800632c:	4770      	bx	lr
 800632e:	2020      	movs	r0, #32
 8006330:	4770      	bx	lr
 8006332:	bf00      	nop

08006334 <__i2b>:
 8006334:	b510      	push	{r4, lr}
 8006336:	460c      	mov	r4, r1
 8006338:	2101      	movs	r1, #1
 800633a:	f7ff ff3b 	bl	80061b4 <_Balloc>
 800633e:	2201      	movs	r2, #1
 8006340:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006344:	bd10      	pop	{r4, pc}
 8006346:	bf00      	nop

08006348 <__multiply>:
 8006348:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800634c:	690e      	ldr	r6, [r1, #16]
 800634e:	6914      	ldr	r4, [r2, #16]
 8006350:	42a6      	cmp	r6, r4
 8006352:	b083      	sub	sp, #12
 8006354:	460f      	mov	r7, r1
 8006356:	4615      	mov	r5, r2
 8006358:	da04      	bge.n	8006364 <__multiply+0x1c>
 800635a:	4632      	mov	r2, r6
 800635c:	462f      	mov	r7, r5
 800635e:	4626      	mov	r6, r4
 8006360:	460d      	mov	r5, r1
 8006362:	4614      	mov	r4, r2
 8006364:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006368:	eb06 0804 	add.w	r8, r6, r4
 800636c:	4543      	cmp	r3, r8
 800636e:	bfb8      	it	lt
 8006370:	3101      	addlt	r1, #1
 8006372:	f7ff ff1f 	bl	80061b4 <_Balloc>
 8006376:	f100 0914 	add.w	r9, r0, #20
 800637a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800637e:	45f1      	cmp	r9, lr
 8006380:	9000      	str	r0, [sp, #0]
 8006382:	d205      	bcs.n	8006390 <__multiply+0x48>
 8006384:	464b      	mov	r3, r9
 8006386:	2200      	movs	r2, #0
 8006388:	f843 2b04 	str.w	r2, [r3], #4
 800638c:	459e      	cmp	lr, r3
 800638e:	d8fb      	bhi.n	8006388 <__multiply+0x40>
 8006390:	f105 0a14 	add.w	sl, r5, #20
 8006394:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006398:	f107 0314 	add.w	r3, r7, #20
 800639c:	45a2      	cmp	sl, r4
 800639e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80063a2:	d261      	bcs.n	8006468 <__multiply+0x120>
 80063a4:	1b64      	subs	r4, r4, r5
 80063a6:	3c15      	subs	r4, #21
 80063a8:	f024 0403 	bic.w	r4, r4, #3
 80063ac:	f8cd e004 	str.w	lr, [sp, #4]
 80063b0:	44a2      	add	sl, r4
 80063b2:	f105 0210 	add.w	r2, r5, #16
 80063b6:	469e      	mov	lr, r3
 80063b8:	e005      	b.n	80063c6 <__multiply+0x7e>
 80063ba:	0c2d      	lsrs	r5, r5, #16
 80063bc:	d12b      	bne.n	8006416 <__multiply+0xce>
 80063be:	4592      	cmp	sl, r2
 80063c0:	f109 0904 	add.w	r9, r9, #4
 80063c4:	d04e      	beq.n	8006464 <__multiply+0x11c>
 80063c6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80063ca:	fa1f fb85 	uxth.w	fp, r5
 80063ce:	f1bb 0f00 	cmp.w	fp, #0
 80063d2:	d0f2      	beq.n	80063ba <__multiply+0x72>
 80063d4:	4677      	mov	r7, lr
 80063d6:	464e      	mov	r6, r9
 80063d8:	2000      	movs	r0, #0
 80063da:	e000      	b.n	80063de <__multiply+0x96>
 80063dc:	4626      	mov	r6, r4
 80063de:	f857 1b04 	ldr.w	r1, [r7], #4
 80063e2:	6834      	ldr	r4, [r6, #0]
 80063e4:	b28b      	uxth	r3, r1
 80063e6:	b2a5      	uxth	r5, r4
 80063e8:	0c09      	lsrs	r1, r1, #16
 80063ea:	0c24      	lsrs	r4, r4, #16
 80063ec:	fb0b 5303 	mla	r3, fp, r3, r5
 80063f0:	4403      	add	r3, r0
 80063f2:	fb0b 4001 	mla	r0, fp, r1, r4
 80063f6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80063fa:	4634      	mov	r4, r6
 80063fc:	b29b      	uxth	r3, r3
 80063fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006402:	45bc      	cmp	ip, r7
 8006404:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006408:	f844 3b04 	str.w	r3, [r4], #4
 800640c:	d8e6      	bhi.n	80063dc <__multiply+0x94>
 800640e:	6070      	str	r0, [r6, #4]
 8006410:	6815      	ldr	r5, [r2, #0]
 8006412:	0c2d      	lsrs	r5, r5, #16
 8006414:	d0d3      	beq.n	80063be <__multiply+0x76>
 8006416:	f8d9 3000 	ldr.w	r3, [r9]
 800641a:	4676      	mov	r6, lr
 800641c:	4618      	mov	r0, r3
 800641e:	46cb      	mov	fp, r9
 8006420:	2100      	movs	r1, #0
 8006422:	e000      	b.n	8006426 <__multiply+0xde>
 8006424:	46a3      	mov	fp, r4
 8006426:	8834      	ldrh	r4, [r6, #0]
 8006428:	0c00      	lsrs	r0, r0, #16
 800642a:	fb05 0004 	mla	r0, r5, r4, r0
 800642e:	4401      	add	r1, r0
 8006430:	b29b      	uxth	r3, r3
 8006432:	465c      	mov	r4, fp
 8006434:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006438:	f844 3b04 	str.w	r3, [r4], #4
 800643c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006440:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006444:	0c1b      	lsrs	r3, r3, #16
 8006446:	b287      	uxth	r7, r0
 8006448:	fb05 7303 	mla	r3, r5, r3, r7
 800644c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006450:	45b4      	cmp	ip, r6
 8006452:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006456:	d8e5      	bhi.n	8006424 <__multiply+0xdc>
 8006458:	4592      	cmp	sl, r2
 800645a:	f8cb 3004 	str.w	r3, [fp, #4]
 800645e:	f109 0904 	add.w	r9, r9, #4
 8006462:	d1b0      	bne.n	80063c6 <__multiply+0x7e>
 8006464:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006468:	f1b8 0f00 	cmp.w	r8, #0
 800646c:	dd0b      	ble.n	8006486 <__multiply+0x13e>
 800646e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006472:	f1ae 0e04 	sub.w	lr, lr, #4
 8006476:	b11b      	cbz	r3, 8006480 <__multiply+0x138>
 8006478:	e005      	b.n	8006486 <__multiply+0x13e>
 800647a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800647e:	b913      	cbnz	r3, 8006486 <__multiply+0x13e>
 8006480:	f1b8 0801 	subs.w	r8, r8, #1
 8006484:	d1f9      	bne.n	800647a <__multiply+0x132>
 8006486:	9800      	ldr	r0, [sp, #0]
 8006488:	f8c0 8010 	str.w	r8, [r0, #16]
 800648c:	b003      	add	sp, #12
 800648e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006492:	bf00      	nop

08006494 <__pow5mult>:
 8006494:	f012 0303 	ands.w	r3, r2, #3
 8006498:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800649c:	4614      	mov	r4, r2
 800649e:	4607      	mov	r7, r0
 80064a0:	d12e      	bne.n	8006500 <__pow5mult+0x6c>
 80064a2:	460d      	mov	r5, r1
 80064a4:	10a4      	asrs	r4, r4, #2
 80064a6:	d01c      	beq.n	80064e2 <__pow5mult+0x4e>
 80064a8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80064aa:	b396      	cbz	r6, 8006512 <__pow5mult+0x7e>
 80064ac:	07e3      	lsls	r3, r4, #31
 80064ae:	f04f 0800 	mov.w	r8, #0
 80064b2:	d406      	bmi.n	80064c2 <__pow5mult+0x2e>
 80064b4:	1064      	asrs	r4, r4, #1
 80064b6:	d014      	beq.n	80064e2 <__pow5mult+0x4e>
 80064b8:	6830      	ldr	r0, [r6, #0]
 80064ba:	b1a8      	cbz	r0, 80064e8 <__pow5mult+0x54>
 80064bc:	4606      	mov	r6, r0
 80064be:	07e3      	lsls	r3, r4, #31
 80064c0:	d5f8      	bpl.n	80064b4 <__pow5mult+0x20>
 80064c2:	4632      	mov	r2, r6
 80064c4:	4629      	mov	r1, r5
 80064c6:	4638      	mov	r0, r7
 80064c8:	f7ff ff3e 	bl	8006348 <__multiply>
 80064cc:	b1b5      	cbz	r5, 80064fc <__pow5mult+0x68>
 80064ce:	686a      	ldr	r2, [r5, #4]
 80064d0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80064d2:	1064      	asrs	r4, r4, #1
 80064d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80064d8:	6029      	str	r1, [r5, #0]
 80064da:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80064de:	4605      	mov	r5, r0
 80064e0:	d1ea      	bne.n	80064b8 <__pow5mult+0x24>
 80064e2:	4628      	mov	r0, r5
 80064e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064e8:	4632      	mov	r2, r6
 80064ea:	4631      	mov	r1, r6
 80064ec:	4638      	mov	r0, r7
 80064ee:	f7ff ff2b 	bl	8006348 <__multiply>
 80064f2:	6030      	str	r0, [r6, #0]
 80064f4:	f8c0 8000 	str.w	r8, [r0]
 80064f8:	4606      	mov	r6, r0
 80064fa:	e7e0      	b.n	80064be <__pow5mult+0x2a>
 80064fc:	4605      	mov	r5, r0
 80064fe:	e7d9      	b.n	80064b4 <__pow5mult+0x20>
 8006500:	3b01      	subs	r3, #1
 8006502:	4a0b      	ldr	r2, [pc, #44]	; (8006530 <__pow5mult+0x9c>)
 8006504:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006508:	2300      	movs	r3, #0
 800650a:	f7ff fe83 	bl	8006214 <__multadd>
 800650e:	4605      	mov	r5, r0
 8006510:	e7c8      	b.n	80064a4 <__pow5mult+0x10>
 8006512:	2101      	movs	r1, #1
 8006514:	4638      	mov	r0, r7
 8006516:	f7ff fe4d 	bl	80061b4 <_Balloc>
 800651a:	f240 2371 	movw	r3, #625	; 0x271
 800651e:	6143      	str	r3, [r0, #20]
 8006520:	2201      	movs	r2, #1
 8006522:	2300      	movs	r3, #0
 8006524:	6102      	str	r2, [r0, #16]
 8006526:	4606      	mov	r6, r0
 8006528:	64b8      	str	r0, [r7, #72]	; 0x48
 800652a:	6003      	str	r3, [r0, #0]
 800652c:	e7be      	b.n	80064ac <__pow5mult+0x18>
 800652e:	bf00      	nop
 8006530:	08007518 	.word	0x08007518

08006534 <__lshift>:
 8006534:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006538:	4691      	mov	r9, r2
 800653a:	690a      	ldr	r2, [r1, #16]
 800653c:	460e      	mov	r6, r1
 800653e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006542:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006546:	eb04 0802 	add.w	r8, r4, r2
 800654a:	f108 0501 	add.w	r5, r8, #1
 800654e:	429d      	cmp	r5, r3
 8006550:	4607      	mov	r7, r0
 8006552:	dd04      	ble.n	800655e <__lshift+0x2a>
 8006554:	005b      	lsls	r3, r3, #1
 8006556:	429d      	cmp	r5, r3
 8006558:	f101 0101 	add.w	r1, r1, #1
 800655c:	dcfa      	bgt.n	8006554 <__lshift+0x20>
 800655e:	4638      	mov	r0, r7
 8006560:	f7ff fe28 	bl	80061b4 <_Balloc>
 8006564:	2c00      	cmp	r4, #0
 8006566:	f100 0314 	add.w	r3, r0, #20
 800656a:	dd37      	ble.n	80065dc <__lshift+0xa8>
 800656c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006570:	2200      	movs	r2, #0
 8006572:	f843 2b04 	str.w	r2, [r3], #4
 8006576:	428b      	cmp	r3, r1
 8006578:	d1fb      	bne.n	8006572 <__lshift+0x3e>
 800657a:	6934      	ldr	r4, [r6, #16]
 800657c:	f106 0314 	add.w	r3, r6, #20
 8006580:	f019 091f 	ands.w	r9, r9, #31
 8006584:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006588:	d020      	beq.n	80065cc <__lshift+0x98>
 800658a:	f1c9 0e20 	rsb	lr, r9, #32
 800658e:	2200      	movs	r2, #0
 8006590:	e000      	b.n	8006594 <__lshift+0x60>
 8006592:	4651      	mov	r1, sl
 8006594:	681c      	ldr	r4, [r3, #0]
 8006596:	468a      	mov	sl, r1
 8006598:	fa04 f409 	lsl.w	r4, r4, r9
 800659c:	4314      	orrs	r4, r2
 800659e:	f84a 4b04 	str.w	r4, [sl], #4
 80065a2:	f853 2b04 	ldr.w	r2, [r3], #4
 80065a6:	4563      	cmp	r3, ip
 80065a8:	fa22 f20e 	lsr.w	r2, r2, lr
 80065ac:	d3f1      	bcc.n	8006592 <__lshift+0x5e>
 80065ae:	604a      	str	r2, [r1, #4]
 80065b0:	b10a      	cbz	r2, 80065b6 <__lshift+0x82>
 80065b2:	f108 0502 	add.w	r5, r8, #2
 80065b6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80065b8:	6872      	ldr	r2, [r6, #4]
 80065ba:	3d01      	subs	r5, #1
 80065bc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80065c0:	6105      	str	r5, [r0, #16]
 80065c2:	6031      	str	r1, [r6, #0]
 80065c4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80065c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80065cc:	3904      	subs	r1, #4
 80065ce:	f853 2b04 	ldr.w	r2, [r3], #4
 80065d2:	f841 2f04 	str.w	r2, [r1, #4]!
 80065d6:	459c      	cmp	ip, r3
 80065d8:	d8f9      	bhi.n	80065ce <__lshift+0x9a>
 80065da:	e7ec      	b.n	80065b6 <__lshift+0x82>
 80065dc:	4619      	mov	r1, r3
 80065de:	e7cc      	b.n	800657a <__lshift+0x46>

080065e0 <__mcmp>:
 80065e0:	b430      	push	{r4, r5}
 80065e2:	690b      	ldr	r3, [r1, #16]
 80065e4:	4605      	mov	r5, r0
 80065e6:	6900      	ldr	r0, [r0, #16]
 80065e8:	1ac0      	subs	r0, r0, r3
 80065ea:	d10f      	bne.n	800660c <__mcmp+0x2c>
 80065ec:	009b      	lsls	r3, r3, #2
 80065ee:	3514      	adds	r5, #20
 80065f0:	3114      	adds	r1, #20
 80065f2:	4419      	add	r1, r3
 80065f4:	442b      	add	r3, r5
 80065f6:	e001      	b.n	80065fc <__mcmp+0x1c>
 80065f8:	429d      	cmp	r5, r3
 80065fa:	d207      	bcs.n	800660c <__mcmp+0x2c>
 80065fc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006600:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006604:	4294      	cmp	r4, r2
 8006606:	d0f7      	beq.n	80065f8 <__mcmp+0x18>
 8006608:	d302      	bcc.n	8006610 <__mcmp+0x30>
 800660a:	2001      	movs	r0, #1
 800660c:	bc30      	pop	{r4, r5}
 800660e:	4770      	bx	lr
 8006610:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006614:	e7fa      	b.n	800660c <__mcmp+0x2c>
 8006616:	bf00      	nop

08006618 <__mdiff>:
 8006618:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800661c:	6913      	ldr	r3, [r2, #16]
 800661e:	690d      	ldr	r5, [r1, #16]
 8006620:	1aed      	subs	r5, r5, r3
 8006622:	2d00      	cmp	r5, #0
 8006624:	460e      	mov	r6, r1
 8006626:	4690      	mov	r8, r2
 8006628:	f101 0414 	add.w	r4, r1, #20
 800662c:	f102 0714 	add.w	r7, r2, #20
 8006630:	d114      	bne.n	800665c <__mdiff+0x44>
 8006632:	009b      	lsls	r3, r3, #2
 8006634:	18e2      	adds	r2, r4, r3
 8006636:	443b      	add	r3, r7
 8006638:	e001      	b.n	800663e <__mdiff+0x26>
 800663a:	42a2      	cmp	r2, r4
 800663c:	d959      	bls.n	80066f2 <__mdiff+0xda>
 800663e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006642:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006646:	458c      	cmp	ip, r1
 8006648:	d0f7      	beq.n	800663a <__mdiff+0x22>
 800664a:	d209      	bcs.n	8006660 <__mdiff+0x48>
 800664c:	4622      	mov	r2, r4
 800664e:	4633      	mov	r3, r6
 8006650:	463c      	mov	r4, r7
 8006652:	4646      	mov	r6, r8
 8006654:	4617      	mov	r7, r2
 8006656:	4698      	mov	r8, r3
 8006658:	2501      	movs	r5, #1
 800665a:	e001      	b.n	8006660 <__mdiff+0x48>
 800665c:	dbf6      	blt.n	800664c <__mdiff+0x34>
 800665e:	2500      	movs	r5, #0
 8006660:	6871      	ldr	r1, [r6, #4]
 8006662:	f7ff fda7 	bl	80061b4 <_Balloc>
 8006666:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800666a:	6936      	ldr	r6, [r6, #16]
 800666c:	60c5      	str	r5, [r0, #12]
 800666e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006672:	46bc      	mov	ip, r7
 8006674:	f100 0514 	add.w	r5, r0, #20
 8006678:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800667c:	2300      	movs	r3, #0
 800667e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006682:	f854 8b04 	ldr.w	r8, [r4], #4
 8006686:	b28a      	uxth	r2, r1
 8006688:	fa13 f388 	uxtah	r3, r3, r8
 800668c:	0c09      	lsrs	r1, r1, #16
 800668e:	1a9a      	subs	r2, r3, r2
 8006690:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006694:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006698:	b292      	uxth	r2, r2
 800669a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800669e:	45e6      	cmp	lr, ip
 80066a0:	f845 2b04 	str.w	r2, [r5], #4
 80066a4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80066a8:	d8e9      	bhi.n	800667e <__mdiff+0x66>
 80066aa:	42a7      	cmp	r7, r4
 80066ac:	d917      	bls.n	80066de <__mdiff+0xc6>
 80066ae:	46ae      	mov	lr, r5
 80066b0:	46a4      	mov	ip, r4
 80066b2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80066b6:	fa13 f382 	uxtah	r3, r3, r2
 80066ba:	1419      	asrs	r1, r3, #16
 80066bc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80066c0:	b29b      	uxth	r3, r3
 80066c2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80066c6:	4567      	cmp	r7, ip
 80066c8:	f84e 2b04 	str.w	r2, [lr], #4
 80066cc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80066d0:	d8ef      	bhi.n	80066b2 <__mdiff+0x9a>
 80066d2:	43e4      	mvns	r4, r4
 80066d4:	4427      	add	r7, r4
 80066d6:	f027 0703 	bic.w	r7, r7, #3
 80066da:	3704      	adds	r7, #4
 80066dc:	443d      	add	r5, r7
 80066de:	3d04      	subs	r5, #4
 80066e0:	b922      	cbnz	r2, 80066ec <__mdiff+0xd4>
 80066e2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80066e6:	3e01      	subs	r6, #1
 80066e8:	2b00      	cmp	r3, #0
 80066ea:	d0fa      	beq.n	80066e2 <__mdiff+0xca>
 80066ec:	6106      	str	r6, [r0, #16]
 80066ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80066f2:	2100      	movs	r1, #0
 80066f4:	f7ff fd5e 	bl	80061b4 <_Balloc>
 80066f8:	2201      	movs	r2, #1
 80066fa:	2300      	movs	r3, #0
 80066fc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006700:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006704 <__d2b>:
 8006704:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006708:	460f      	mov	r7, r1
 800670a:	b083      	sub	sp, #12
 800670c:	2101      	movs	r1, #1
 800670e:	ec55 4b10 	vmov	r4, r5, d0
 8006712:	4616      	mov	r6, r2
 8006714:	f7ff fd4e 	bl	80061b4 <_Balloc>
 8006718:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800671c:	4681      	mov	r9, r0
 800671e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006722:	f1b8 0f00 	cmp.w	r8, #0
 8006726:	d001      	beq.n	800672c <__d2b+0x28>
 8006728:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800672c:	2c00      	cmp	r4, #0
 800672e:	9301      	str	r3, [sp, #4]
 8006730:	d024      	beq.n	800677c <__d2b+0x78>
 8006732:	a802      	add	r0, sp, #8
 8006734:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006738:	f7ff fdcc 	bl	80062d4 <__lo0bits>
 800673c:	2800      	cmp	r0, #0
 800673e:	d136      	bne.n	80067ae <__d2b+0xaa>
 8006740:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006744:	f8c9 2014 	str.w	r2, [r9, #20]
 8006748:	2b00      	cmp	r3, #0
 800674a:	bf0c      	ite	eq
 800674c:	2101      	moveq	r1, #1
 800674e:	2102      	movne	r1, #2
 8006750:	f8c9 3018 	str.w	r3, [r9, #24]
 8006754:	f8c9 1010 	str.w	r1, [r9, #16]
 8006758:	f1b8 0f00 	cmp.w	r8, #0
 800675c:	d11b      	bne.n	8006796 <__d2b+0x92>
 800675e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006762:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006766:	6038      	str	r0, [r7, #0]
 8006768:	6918      	ldr	r0, [r3, #16]
 800676a:	f7ff fd93 	bl	8006294 <__hi0bits>
 800676e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006772:	6030      	str	r0, [r6, #0]
 8006774:	4648      	mov	r0, r9
 8006776:	b003      	add	sp, #12
 8006778:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800677c:	a801      	add	r0, sp, #4
 800677e:	f7ff fda9 	bl	80062d4 <__lo0bits>
 8006782:	9b01      	ldr	r3, [sp, #4]
 8006784:	f8c9 3014 	str.w	r3, [r9, #20]
 8006788:	2101      	movs	r1, #1
 800678a:	3020      	adds	r0, #32
 800678c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006790:	f1b8 0f00 	cmp.w	r8, #0
 8006794:	d0e3      	beq.n	800675e <__d2b+0x5a>
 8006796:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800679a:	eb08 0300 	add.w	r3, r8, r0
 800679e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80067a2:	603b      	str	r3, [r7, #0]
 80067a4:	6030      	str	r0, [r6, #0]
 80067a6:	4648      	mov	r0, r9
 80067a8:	b003      	add	sp, #12
 80067aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80067ae:	e9dd 1300 	ldrd	r1, r3, [sp]
 80067b2:	f1c0 0220 	rsb	r2, r0, #32
 80067b6:	fa03 f202 	lsl.w	r2, r3, r2
 80067ba:	430a      	orrs	r2, r1
 80067bc:	40c3      	lsrs	r3, r0
 80067be:	9301      	str	r3, [sp, #4]
 80067c0:	f8c9 2014 	str.w	r2, [r9, #20]
 80067c4:	e7c0      	b.n	8006748 <__d2b+0x44>
 80067c6:	bf00      	nop

080067c8 <_realloc_r>:
 80067c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067cc:	4692      	mov	sl, r2
 80067ce:	b083      	sub	sp, #12
 80067d0:	2900      	cmp	r1, #0
 80067d2:	f000 80a1 	beq.w	8006918 <_realloc_r+0x150>
 80067d6:	460d      	mov	r5, r1
 80067d8:	4680      	mov	r8, r0
 80067da:	f10a 040b 	add.w	r4, sl, #11
 80067de:	f7ff fcdd 	bl	800619c <__malloc_lock>
 80067e2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80067e6:	2c16      	cmp	r4, #22
 80067e8:	f022 0603 	bic.w	r6, r2, #3
 80067ec:	f1a5 0708 	sub.w	r7, r5, #8
 80067f0:	d83e      	bhi.n	8006870 <_realloc_r+0xa8>
 80067f2:	2410      	movs	r4, #16
 80067f4:	4621      	mov	r1, r4
 80067f6:	45a2      	cmp	sl, r4
 80067f8:	d83f      	bhi.n	800687a <_realloc_r+0xb2>
 80067fa:	428e      	cmp	r6, r1
 80067fc:	eb07 0906 	add.w	r9, r7, r6
 8006800:	da74      	bge.n	80068ec <_realloc_r+0x124>
 8006802:	4bc7      	ldr	r3, [pc, #796]	; (8006b20 <_realloc_r+0x358>)
 8006804:	6898      	ldr	r0, [r3, #8]
 8006806:	4548      	cmp	r0, r9
 8006808:	f000 80aa 	beq.w	8006960 <_realloc_r+0x198>
 800680c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006810:	f020 0301 	bic.w	r3, r0, #1
 8006814:	444b      	add	r3, r9
 8006816:	685b      	ldr	r3, [r3, #4]
 8006818:	07db      	lsls	r3, r3, #31
 800681a:	f140 8083 	bpl.w	8006924 <_realloc_r+0x15c>
 800681e:	07d2      	lsls	r2, r2, #31
 8006820:	d534      	bpl.n	800688c <_realloc_r+0xc4>
 8006822:	4651      	mov	r1, sl
 8006824:	4640      	mov	r0, r8
 8006826:	f7ff f9b1 	bl	8005b8c <_malloc_r>
 800682a:	4682      	mov	sl, r0
 800682c:	b1e0      	cbz	r0, 8006868 <_realloc_r+0xa0>
 800682e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006832:	f023 0301 	bic.w	r3, r3, #1
 8006836:	443b      	add	r3, r7
 8006838:	f1a0 0208 	sub.w	r2, r0, #8
 800683c:	4293      	cmp	r3, r2
 800683e:	f000 80f9 	beq.w	8006a34 <_realloc_r+0x26c>
 8006842:	1f32      	subs	r2, r6, #4
 8006844:	2a24      	cmp	r2, #36	; 0x24
 8006846:	f200 8107 	bhi.w	8006a58 <_realloc_r+0x290>
 800684a:	2a13      	cmp	r2, #19
 800684c:	6829      	ldr	r1, [r5, #0]
 800684e:	f200 80e6 	bhi.w	8006a1e <_realloc_r+0x256>
 8006852:	4603      	mov	r3, r0
 8006854:	462a      	mov	r2, r5
 8006856:	6019      	str	r1, [r3, #0]
 8006858:	6851      	ldr	r1, [r2, #4]
 800685a:	6059      	str	r1, [r3, #4]
 800685c:	6892      	ldr	r2, [r2, #8]
 800685e:	609a      	str	r2, [r3, #8]
 8006860:	4629      	mov	r1, r5
 8006862:	4640      	mov	r0, r8
 8006864:	f7fe fe68 	bl	8005538 <_free_r>
 8006868:	4640      	mov	r0, r8
 800686a:	f7ff fc9d 	bl	80061a8 <__malloc_unlock>
 800686e:	e04f      	b.n	8006910 <_realloc_r+0x148>
 8006870:	f024 0407 	bic.w	r4, r4, #7
 8006874:	2c00      	cmp	r4, #0
 8006876:	4621      	mov	r1, r4
 8006878:	dabd      	bge.n	80067f6 <_realloc_r+0x2e>
 800687a:	f04f 0a00 	mov.w	sl, #0
 800687e:	230c      	movs	r3, #12
 8006880:	4650      	mov	r0, sl
 8006882:	f8c8 3000 	str.w	r3, [r8]
 8006886:	b003      	add	sp, #12
 8006888:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800688c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006890:	eba7 0b03 	sub.w	fp, r7, r3
 8006894:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006898:	f022 0203 	bic.w	r2, r2, #3
 800689c:	18b3      	adds	r3, r6, r2
 800689e:	428b      	cmp	r3, r1
 80068a0:	dbbf      	blt.n	8006822 <_realloc_r+0x5a>
 80068a2:	46da      	mov	sl, fp
 80068a4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80068a8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80068ac:	1f32      	subs	r2, r6, #4
 80068ae:	2a24      	cmp	r2, #36	; 0x24
 80068b0:	60c1      	str	r1, [r0, #12]
 80068b2:	eb0b 0903 	add.w	r9, fp, r3
 80068b6:	6088      	str	r0, [r1, #8]
 80068b8:	f200 80c6 	bhi.w	8006a48 <_realloc_r+0x280>
 80068bc:	2a13      	cmp	r2, #19
 80068be:	6829      	ldr	r1, [r5, #0]
 80068c0:	f240 80c0 	bls.w	8006a44 <_realloc_r+0x27c>
 80068c4:	f8cb 1008 	str.w	r1, [fp, #8]
 80068c8:	6869      	ldr	r1, [r5, #4]
 80068ca:	f8cb 100c 	str.w	r1, [fp, #12]
 80068ce:	2a1b      	cmp	r2, #27
 80068d0:	68a9      	ldr	r1, [r5, #8]
 80068d2:	f200 80d8 	bhi.w	8006a86 <_realloc_r+0x2be>
 80068d6:	f10b 0210 	add.w	r2, fp, #16
 80068da:	3508      	adds	r5, #8
 80068dc:	6011      	str	r1, [r2, #0]
 80068de:	6869      	ldr	r1, [r5, #4]
 80068e0:	6051      	str	r1, [r2, #4]
 80068e2:	68a9      	ldr	r1, [r5, #8]
 80068e4:	6091      	str	r1, [r2, #8]
 80068e6:	461e      	mov	r6, r3
 80068e8:	465f      	mov	r7, fp
 80068ea:	4655      	mov	r5, sl
 80068ec:	687b      	ldr	r3, [r7, #4]
 80068ee:	1b32      	subs	r2, r6, r4
 80068f0:	2a0f      	cmp	r2, #15
 80068f2:	f003 0301 	and.w	r3, r3, #1
 80068f6:	d822      	bhi.n	800693e <_realloc_r+0x176>
 80068f8:	4333      	orrs	r3, r6
 80068fa:	607b      	str	r3, [r7, #4]
 80068fc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006900:	f043 0301 	orr.w	r3, r3, #1
 8006904:	f8c9 3004 	str.w	r3, [r9, #4]
 8006908:	4640      	mov	r0, r8
 800690a:	f7ff fc4d 	bl	80061a8 <__malloc_unlock>
 800690e:	46aa      	mov	sl, r5
 8006910:	4650      	mov	r0, sl
 8006912:	b003      	add	sp, #12
 8006914:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006918:	4611      	mov	r1, r2
 800691a:	b003      	add	sp, #12
 800691c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006920:	f7ff b934 	b.w	8005b8c <_malloc_r>
 8006924:	f020 0003 	bic.w	r0, r0, #3
 8006928:	1833      	adds	r3, r6, r0
 800692a:	428b      	cmp	r3, r1
 800692c:	db61      	blt.n	80069f2 <_realloc_r+0x22a>
 800692e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006932:	461e      	mov	r6, r3
 8006934:	60ca      	str	r2, [r1, #12]
 8006936:	eb07 0903 	add.w	r9, r7, r3
 800693a:	6091      	str	r1, [r2, #8]
 800693c:	e7d6      	b.n	80068ec <_realloc_r+0x124>
 800693e:	1939      	adds	r1, r7, r4
 8006940:	4323      	orrs	r3, r4
 8006942:	f042 0201 	orr.w	r2, r2, #1
 8006946:	607b      	str	r3, [r7, #4]
 8006948:	604a      	str	r2, [r1, #4]
 800694a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800694e:	f043 0301 	orr.w	r3, r3, #1
 8006952:	3108      	adds	r1, #8
 8006954:	f8c9 3004 	str.w	r3, [r9, #4]
 8006958:	4640      	mov	r0, r8
 800695a:	f7fe fded 	bl	8005538 <_free_r>
 800695e:	e7d3      	b.n	8006908 <_realloc_r+0x140>
 8006960:	6840      	ldr	r0, [r0, #4]
 8006962:	f020 0903 	bic.w	r9, r0, #3
 8006966:	44b1      	add	r9, r6
 8006968:	f104 0010 	add.w	r0, r4, #16
 800696c:	4581      	cmp	r9, r0
 800696e:	da77      	bge.n	8006a60 <_realloc_r+0x298>
 8006970:	07d2      	lsls	r2, r2, #31
 8006972:	f53f af56 	bmi.w	8006822 <_realloc_r+0x5a>
 8006976:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800697a:	eba7 0b02 	sub.w	fp, r7, r2
 800697e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006982:	f022 0203 	bic.w	r2, r2, #3
 8006986:	4491      	add	r9, r2
 8006988:	4548      	cmp	r0, r9
 800698a:	dc87      	bgt.n	800689c <_realloc_r+0xd4>
 800698c:	46da      	mov	sl, fp
 800698e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006992:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006996:	1f32      	subs	r2, r6, #4
 8006998:	2a24      	cmp	r2, #36	; 0x24
 800699a:	60c1      	str	r1, [r0, #12]
 800699c:	6088      	str	r0, [r1, #8]
 800699e:	f200 80a1 	bhi.w	8006ae4 <_realloc_r+0x31c>
 80069a2:	2a13      	cmp	r2, #19
 80069a4:	6829      	ldr	r1, [r5, #0]
 80069a6:	f240 809b 	bls.w	8006ae0 <_realloc_r+0x318>
 80069aa:	f8cb 1008 	str.w	r1, [fp, #8]
 80069ae:	6869      	ldr	r1, [r5, #4]
 80069b0:	f8cb 100c 	str.w	r1, [fp, #12]
 80069b4:	2a1b      	cmp	r2, #27
 80069b6:	68a9      	ldr	r1, [r5, #8]
 80069b8:	f200 809b 	bhi.w	8006af2 <_realloc_r+0x32a>
 80069bc:	f10b 0210 	add.w	r2, fp, #16
 80069c0:	3508      	adds	r5, #8
 80069c2:	6011      	str	r1, [r2, #0]
 80069c4:	6869      	ldr	r1, [r5, #4]
 80069c6:	6051      	str	r1, [r2, #4]
 80069c8:	68a9      	ldr	r1, [r5, #8]
 80069ca:	6091      	str	r1, [r2, #8]
 80069cc:	eb0b 0104 	add.w	r1, fp, r4
 80069d0:	eba9 0204 	sub.w	r2, r9, r4
 80069d4:	f042 0201 	orr.w	r2, r2, #1
 80069d8:	6099      	str	r1, [r3, #8]
 80069da:	604a      	str	r2, [r1, #4]
 80069dc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80069e0:	f003 0301 	and.w	r3, r3, #1
 80069e4:	431c      	orrs	r4, r3
 80069e6:	4640      	mov	r0, r8
 80069e8:	f8cb 4004 	str.w	r4, [fp, #4]
 80069ec:	f7ff fbdc 	bl	80061a8 <__malloc_unlock>
 80069f0:	e78e      	b.n	8006910 <_realloc_r+0x148>
 80069f2:	07d3      	lsls	r3, r2, #31
 80069f4:	f53f af15 	bmi.w	8006822 <_realloc_r+0x5a>
 80069f8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80069fc:	eba7 0b03 	sub.w	fp, r7, r3
 8006a00:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a04:	f022 0203 	bic.w	r2, r2, #3
 8006a08:	4410      	add	r0, r2
 8006a0a:	1983      	adds	r3, r0, r6
 8006a0c:	428b      	cmp	r3, r1
 8006a0e:	f6ff af45 	blt.w	800689c <_realloc_r+0xd4>
 8006a12:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006a16:	46da      	mov	sl, fp
 8006a18:	60ca      	str	r2, [r1, #12]
 8006a1a:	6091      	str	r1, [r2, #8]
 8006a1c:	e742      	b.n	80068a4 <_realloc_r+0xdc>
 8006a1e:	6001      	str	r1, [r0, #0]
 8006a20:	686b      	ldr	r3, [r5, #4]
 8006a22:	6043      	str	r3, [r0, #4]
 8006a24:	2a1b      	cmp	r2, #27
 8006a26:	d83a      	bhi.n	8006a9e <_realloc_r+0x2d6>
 8006a28:	f105 0208 	add.w	r2, r5, #8
 8006a2c:	f100 0308 	add.w	r3, r0, #8
 8006a30:	68a9      	ldr	r1, [r5, #8]
 8006a32:	e710      	b.n	8006856 <_realloc_r+0x8e>
 8006a34:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006a38:	f023 0303 	bic.w	r3, r3, #3
 8006a3c:	441e      	add	r6, r3
 8006a3e:	eb07 0906 	add.w	r9, r7, r6
 8006a42:	e753      	b.n	80068ec <_realloc_r+0x124>
 8006a44:	4652      	mov	r2, sl
 8006a46:	e749      	b.n	80068dc <_realloc_r+0x114>
 8006a48:	4629      	mov	r1, r5
 8006a4a:	4650      	mov	r0, sl
 8006a4c:	461e      	mov	r6, r3
 8006a4e:	465f      	mov	r7, fp
 8006a50:	f7ff fb40 	bl	80060d4 <memmove>
 8006a54:	4655      	mov	r5, sl
 8006a56:	e749      	b.n	80068ec <_realloc_r+0x124>
 8006a58:	4629      	mov	r1, r5
 8006a5a:	f7ff fb3b 	bl	80060d4 <memmove>
 8006a5e:	e6ff      	b.n	8006860 <_realloc_r+0x98>
 8006a60:	4427      	add	r7, r4
 8006a62:	eba9 0904 	sub.w	r9, r9, r4
 8006a66:	f049 0201 	orr.w	r2, r9, #1
 8006a6a:	609f      	str	r7, [r3, #8]
 8006a6c:	607a      	str	r2, [r7, #4]
 8006a6e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a72:	f003 0301 	and.w	r3, r3, #1
 8006a76:	431c      	orrs	r4, r3
 8006a78:	4640      	mov	r0, r8
 8006a7a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006a7e:	f7ff fb93 	bl	80061a8 <__malloc_unlock>
 8006a82:	46aa      	mov	sl, r5
 8006a84:	e744      	b.n	8006910 <_realloc_r+0x148>
 8006a86:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a8a:	68e9      	ldr	r1, [r5, #12]
 8006a8c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a90:	2a24      	cmp	r2, #36	; 0x24
 8006a92:	d010      	beq.n	8006ab6 <_realloc_r+0x2ee>
 8006a94:	6929      	ldr	r1, [r5, #16]
 8006a96:	f10b 0218 	add.w	r2, fp, #24
 8006a9a:	3510      	adds	r5, #16
 8006a9c:	e71e      	b.n	80068dc <_realloc_r+0x114>
 8006a9e:	68ab      	ldr	r3, [r5, #8]
 8006aa0:	6083      	str	r3, [r0, #8]
 8006aa2:	68eb      	ldr	r3, [r5, #12]
 8006aa4:	60c3      	str	r3, [r0, #12]
 8006aa6:	2a24      	cmp	r2, #36	; 0x24
 8006aa8:	d010      	beq.n	8006acc <_realloc_r+0x304>
 8006aaa:	f105 0210 	add.w	r2, r5, #16
 8006aae:	f100 0310 	add.w	r3, r0, #16
 8006ab2:	6929      	ldr	r1, [r5, #16]
 8006ab4:	e6cf      	b.n	8006856 <_realloc_r+0x8e>
 8006ab6:	692a      	ldr	r2, [r5, #16]
 8006ab8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006abc:	696a      	ldr	r2, [r5, #20]
 8006abe:	f8cb 201c 	str.w	r2, [fp, #28]
 8006ac2:	69a9      	ldr	r1, [r5, #24]
 8006ac4:	f10b 0220 	add.w	r2, fp, #32
 8006ac8:	3518      	adds	r5, #24
 8006aca:	e707      	b.n	80068dc <_realloc_r+0x114>
 8006acc:	692b      	ldr	r3, [r5, #16]
 8006ace:	6103      	str	r3, [r0, #16]
 8006ad0:	696b      	ldr	r3, [r5, #20]
 8006ad2:	6143      	str	r3, [r0, #20]
 8006ad4:	69a9      	ldr	r1, [r5, #24]
 8006ad6:	f105 0218 	add.w	r2, r5, #24
 8006ada:	f100 0318 	add.w	r3, r0, #24
 8006ade:	e6ba      	b.n	8006856 <_realloc_r+0x8e>
 8006ae0:	4652      	mov	r2, sl
 8006ae2:	e76e      	b.n	80069c2 <_realloc_r+0x1fa>
 8006ae4:	4629      	mov	r1, r5
 8006ae6:	4650      	mov	r0, sl
 8006ae8:	9301      	str	r3, [sp, #4]
 8006aea:	f7ff faf3 	bl	80060d4 <memmove>
 8006aee:	9b01      	ldr	r3, [sp, #4]
 8006af0:	e76c      	b.n	80069cc <_realloc_r+0x204>
 8006af2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006af6:	68e9      	ldr	r1, [r5, #12]
 8006af8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006afc:	2a24      	cmp	r2, #36	; 0x24
 8006afe:	d004      	beq.n	8006b0a <_realloc_r+0x342>
 8006b00:	6929      	ldr	r1, [r5, #16]
 8006b02:	f10b 0218 	add.w	r2, fp, #24
 8006b06:	3510      	adds	r5, #16
 8006b08:	e75b      	b.n	80069c2 <_realloc_r+0x1fa>
 8006b0a:	692a      	ldr	r2, [r5, #16]
 8006b0c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b10:	696a      	ldr	r2, [r5, #20]
 8006b12:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b16:	69a9      	ldr	r1, [r5, #24]
 8006b18:	f10b 0220 	add.w	r2, fp, #32
 8006b1c:	3518      	adds	r5, #24
 8006b1e:	e750      	b.n	80069c2 <_realloc_r+0x1fa>
 8006b20:	2000049c 	.word	0x2000049c

08006b24 <frexp>:
 8006b24:	ec53 2b10 	vmov	r2, r3, d0
 8006b28:	b570      	push	{r4, r5, r6, lr}
 8006b2a:	4e16      	ldr	r6, [pc, #88]	; (8006b84 <frexp+0x60>)
 8006b2c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006b30:	2500      	movs	r5, #0
 8006b32:	42b1      	cmp	r1, r6
 8006b34:	4604      	mov	r4, r0
 8006b36:	6005      	str	r5, [r0, #0]
 8006b38:	dc21      	bgt.n	8006b7e <frexp+0x5a>
 8006b3a:	ee10 6a10 	vmov	r6, s0
 8006b3e:	430e      	orrs	r6, r1
 8006b40:	d01d      	beq.n	8006b7e <frexp+0x5a>
 8006b42:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006b46:	4618      	mov	r0, r3
 8006b48:	da0c      	bge.n	8006b64 <frexp+0x40>
 8006b4a:	4619      	mov	r1, r3
 8006b4c:	2200      	movs	r2, #0
 8006b4e:	ee10 0a10 	vmov	r0, s0
 8006b52:	4b0d      	ldr	r3, [pc, #52]	; (8006b88 <frexp+0x64>)
 8006b54:	f7f9 fd10 	bl	8000578 <__aeabi_dmul>
 8006b58:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006b5c:	4602      	mov	r2, r0
 8006b5e:	4608      	mov	r0, r1
 8006b60:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006b64:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006b68:	1509      	asrs	r1, r1, #20
 8006b6a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006b6e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006b72:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006b76:	4429      	add	r1, r5
 8006b78:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006b7c:	6021      	str	r1, [r4, #0]
 8006b7e:	ec43 2b10 	vmov	d0, r2, r3
 8006b82:	bd70      	pop	{r4, r5, r6, pc}
 8006b84:	7fefffff 	.word	0x7fefffff
 8006b88:	43500000 	.word	0x43500000

08006b8c <_sbrk_r>:
 8006b8c:	b538      	push	{r3, r4, r5, lr}
 8006b8e:	4c07      	ldr	r4, [pc, #28]	; (8006bac <_sbrk_r+0x20>)
 8006b90:	2300      	movs	r3, #0
 8006b92:	4605      	mov	r5, r0
 8006b94:	4608      	mov	r0, r1
 8006b96:	6023      	str	r3, [r4, #0]
 8006b98:	f7fb fc35 	bl	8002406 <_sbrk>
 8006b9c:	1c43      	adds	r3, r0, #1
 8006b9e:	d000      	beq.n	8006ba2 <_sbrk_r+0x16>
 8006ba0:	bd38      	pop	{r3, r4, r5, pc}
 8006ba2:	6823      	ldr	r3, [r4, #0]
 8006ba4:	2b00      	cmp	r3, #0
 8006ba6:	d0fb      	beq.n	8006ba0 <_sbrk_r+0x14>
 8006ba8:	602b      	str	r3, [r5, #0]
 8006baa:	bd38      	pop	{r3, r4, r5, pc}
 8006bac:	20000b5c 	.word	0x20000b5c

08006bb0 <__sread>:
 8006bb0:	b510      	push	{r4, lr}
 8006bb2:	460c      	mov	r4, r1
 8006bb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006bb8:	f000 fabc 	bl	8007134 <_read_r>
 8006bbc:	2800      	cmp	r0, #0
 8006bbe:	db03      	blt.n	8006bc8 <__sread+0x18>
 8006bc0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006bc2:	4403      	add	r3, r0
 8006bc4:	6523      	str	r3, [r4, #80]	; 0x50
 8006bc6:	bd10      	pop	{r4, pc}
 8006bc8:	89a3      	ldrh	r3, [r4, #12]
 8006bca:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006bce:	81a3      	strh	r3, [r4, #12]
 8006bd0:	bd10      	pop	{r4, pc}
 8006bd2:	bf00      	nop

08006bd4 <__swrite>:
 8006bd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006bd8:	4616      	mov	r6, r2
 8006bda:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006bde:	461f      	mov	r7, r3
 8006be0:	05d3      	lsls	r3, r2, #23
 8006be2:	460c      	mov	r4, r1
 8006be4:	4605      	mov	r5, r0
 8006be6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006bea:	d507      	bpl.n	8006bfc <__swrite+0x28>
 8006bec:	2200      	movs	r2, #0
 8006bee:	2302      	movs	r3, #2
 8006bf0:	f000 fa74 	bl	80070dc <_lseek_r>
 8006bf4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006bf8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006bfc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006c00:	81a2      	strh	r2, [r4, #12]
 8006c02:	463b      	mov	r3, r7
 8006c04:	4632      	mov	r2, r6
 8006c06:	4628      	mov	r0, r5
 8006c08:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006c0c:	f000 b88c 	b.w	8006d28 <_write_r>

08006c10 <__sseek>:
 8006c10:	b510      	push	{r4, lr}
 8006c12:	460c      	mov	r4, r1
 8006c14:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c18:	f000 fa60 	bl	80070dc <_lseek_r>
 8006c1c:	89a3      	ldrh	r3, [r4, #12]
 8006c1e:	1c42      	adds	r2, r0, #1
 8006c20:	bf0e      	itee	eq
 8006c22:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006c26:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006c2a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006c2c:	81a3      	strh	r3, [r4, #12]
 8006c2e:	bd10      	pop	{r4, pc}

08006c30 <__sclose>:
 8006c30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c34:	f000 b922 	b.w	8006e7c <_close_r>

08006c38 <strncpy>:
 8006c38:	ea40 0301 	orr.w	r3, r0, r1
 8006c3c:	079b      	lsls	r3, r3, #30
 8006c3e:	b470      	push	{r4, r5, r6}
 8006c40:	d12a      	bne.n	8006c98 <strncpy+0x60>
 8006c42:	2a03      	cmp	r2, #3
 8006c44:	d928      	bls.n	8006c98 <strncpy+0x60>
 8006c46:	460c      	mov	r4, r1
 8006c48:	4603      	mov	r3, r0
 8006c4a:	4621      	mov	r1, r4
 8006c4c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006c50:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006c54:	ea25 0506 	bic.w	r5, r5, r6
 8006c58:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006c5c:	d106      	bne.n	8006c6c <strncpy+0x34>
 8006c5e:	3a04      	subs	r2, #4
 8006c60:	2a03      	cmp	r2, #3
 8006c62:	f843 6b04 	str.w	r6, [r3], #4
 8006c66:	4621      	mov	r1, r4
 8006c68:	d8ef      	bhi.n	8006c4a <strncpy+0x12>
 8006c6a:	b19a      	cbz	r2, 8006c94 <strncpy+0x5c>
 8006c6c:	780c      	ldrb	r4, [r1, #0]
 8006c6e:	701c      	strb	r4, [r3, #0]
 8006c70:	3a01      	subs	r2, #1
 8006c72:	3301      	adds	r3, #1
 8006c74:	b13c      	cbz	r4, 8006c86 <strncpy+0x4e>
 8006c76:	b16a      	cbz	r2, 8006c94 <strncpy+0x5c>
 8006c78:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006c7c:	f803 4b01 	strb.w	r4, [r3], #1
 8006c80:	3a01      	subs	r2, #1
 8006c82:	2c00      	cmp	r4, #0
 8006c84:	d1f7      	bne.n	8006c76 <strncpy+0x3e>
 8006c86:	b12a      	cbz	r2, 8006c94 <strncpy+0x5c>
 8006c88:	441a      	add	r2, r3
 8006c8a:	2100      	movs	r1, #0
 8006c8c:	f803 1b01 	strb.w	r1, [r3], #1
 8006c90:	4293      	cmp	r3, r2
 8006c92:	d1fb      	bne.n	8006c8c <strncpy+0x54>
 8006c94:	bc70      	pop	{r4, r5, r6}
 8006c96:	4770      	bx	lr
 8006c98:	4603      	mov	r3, r0
 8006c9a:	e7e6      	b.n	8006c6a <strncpy+0x32>

08006c9c <__sprint_r.part.0>:
 8006c9c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ca0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006ca2:	049c      	lsls	r4, r3, #18
 8006ca4:	4692      	mov	sl, r2
 8006ca6:	d52d      	bpl.n	8006d04 <__sprint_r.part.0+0x68>
 8006ca8:	6893      	ldr	r3, [r2, #8]
 8006caa:	6812      	ldr	r2, [r2, #0]
 8006cac:	b343      	cbz	r3, 8006d00 <__sprint_r.part.0+0x64>
 8006cae:	460e      	mov	r6, r1
 8006cb0:	4607      	mov	r7, r0
 8006cb2:	f102 0908 	add.w	r9, r2, #8
 8006cb6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006cba:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006cbe:	d015      	beq.n	8006cec <__sprint_r.part.0+0x50>
 8006cc0:	3d04      	subs	r5, #4
 8006cc2:	2400      	movs	r4, #0
 8006cc4:	e001      	b.n	8006cca <__sprint_r.part.0+0x2e>
 8006cc6:	45a0      	cmp	r8, r4
 8006cc8:	d00e      	beq.n	8006ce8 <__sprint_r.part.0+0x4c>
 8006cca:	4632      	mov	r2, r6
 8006ccc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006cd0:	4638      	mov	r0, r7
 8006cd2:	f000 f99d 	bl	8007010 <_fputwc_r>
 8006cd6:	1c43      	adds	r3, r0, #1
 8006cd8:	f104 0401 	add.w	r4, r4, #1
 8006cdc:	d1f3      	bne.n	8006cc6 <__sprint_r.part.0+0x2a>
 8006cde:	2300      	movs	r3, #0
 8006ce0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ce4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ce8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006cec:	f02b 0b03 	bic.w	fp, fp, #3
 8006cf0:	eba3 030b 	sub.w	r3, r3, fp
 8006cf4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006cf8:	f109 0908 	add.w	r9, r9, #8
 8006cfc:	2b00      	cmp	r3, #0
 8006cfe:	d1da      	bne.n	8006cb6 <__sprint_r.part.0+0x1a>
 8006d00:	2000      	movs	r0, #0
 8006d02:	e7ec      	b.n	8006cde <__sprint_r.part.0+0x42>
 8006d04:	f7fe fd0c 	bl	8005720 <__sfvwrite_r>
 8006d08:	2300      	movs	r3, #0
 8006d0a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d12:	bf00      	nop

08006d14 <__sprint_r>:
 8006d14:	6893      	ldr	r3, [r2, #8]
 8006d16:	b10b      	cbz	r3, 8006d1c <__sprint_r+0x8>
 8006d18:	f7ff bfc0 	b.w	8006c9c <__sprint_r.part.0>
 8006d1c:	b410      	push	{r4}
 8006d1e:	4618      	mov	r0, r3
 8006d20:	6053      	str	r3, [r2, #4]
 8006d22:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006d26:	4770      	bx	lr

08006d28 <_write_r>:
 8006d28:	b570      	push	{r4, r5, r6, lr}
 8006d2a:	460d      	mov	r5, r1
 8006d2c:	4c08      	ldr	r4, [pc, #32]	; (8006d50 <_write_r+0x28>)
 8006d2e:	4611      	mov	r1, r2
 8006d30:	4606      	mov	r6, r0
 8006d32:	461a      	mov	r2, r3
 8006d34:	4628      	mov	r0, r5
 8006d36:	2300      	movs	r3, #0
 8006d38:	6023      	str	r3, [r4, #0]
 8006d3a:	f7fb fb51 	bl	80023e0 <_write>
 8006d3e:	1c43      	adds	r3, r0, #1
 8006d40:	d000      	beq.n	8006d44 <_write_r+0x1c>
 8006d42:	bd70      	pop	{r4, r5, r6, pc}
 8006d44:	6823      	ldr	r3, [r4, #0]
 8006d46:	2b00      	cmp	r3, #0
 8006d48:	d0fb      	beq.n	8006d42 <_write_r+0x1a>
 8006d4a:	6033      	str	r3, [r6, #0]
 8006d4c:	bd70      	pop	{r4, r5, r6, pc}
 8006d4e:	bf00      	nop
 8006d50:	20000b5c 	.word	0x20000b5c

08006d54 <__register_exitproc>:
 8006d54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006d58:	4d2b      	ldr	r5, [pc, #172]	; (8006e08 <__register_exitproc+0xb4>)
 8006d5a:	4606      	mov	r6, r0
 8006d5c:	6828      	ldr	r0, [r5, #0]
 8006d5e:	4698      	mov	r8, r3
 8006d60:	460f      	mov	r7, r1
 8006d62:	4691      	mov	r9, r2
 8006d64:	f7fe fe96 	bl	8005a94 <__retarget_lock_acquire_recursive>
 8006d68:	4b28      	ldr	r3, [pc, #160]	; (8006e0c <__register_exitproc+0xb8>)
 8006d6a:	681c      	ldr	r4, [r3, #0]
 8006d6c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006d70:	2b00      	cmp	r3, #0
 8006d72:	d03d      	beq.n	8006df0 <__register_exitproc+0x9c>
 8006d74:	685a      	ldr	r2, [r3, #4]
 8006d76:	2a1f      	cmp	r2, #31
 8006d78:	dc0d      	bgt.n	8006d96 <__register_exitproc+0x42>
 8006d7a:	f102 0c01 	add.w	ip, r2, #1
 8006d7e:	bb16      	cbnz	r6, 8006dc6 <__register_exitproc+0x72>
 8006d80:	3202      	adds	r2, #2
 8006d82:	f8c3 c004 	str.w	ip, [r3, #4]
 8006d86:	6828      	ldr	r0, [r5, #0]
 8006d88:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006d8c:	f7fe fe84 	bl	8005a98 <__retarget_lock_release_recursive>
 8006d90:	2000      	movs	r0, #0
 8006d92:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006d96:	4b1e      	ldr	r3, [pc, #120]	; (8006e10 <__register_exitproc+0xbc>)
 8006d98:	b37b      	cbz	r3, 8006dfa <__register_exitproc+0xa6>
 8006d9a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006d9e:	f3af 8000 	nop.w
 8006da2:	4603      	mov	r3, r0
 8006da4:	b348      	cbz	r0, 8006dfa <__register_exitproc+0xa6>
 8006da6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006daa:	2100      	movs	r1, #0
 8006dac:	e9c0 2100 	strd	r2, r1, [r0]
 8006db0:	f04f 0c01 	mov.w	ip, #1
 8006db4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006db8:	460a      	mov	r2, r1
 8006dba:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006dbe:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006dc2:	2e00      	cmp	r6, #0
 8006dc4:	d0dc      	beq.n	8006d80 <__register_exitproc+0x2c>
 8006dc6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006dca:	2401      	movs	r4, #1
 8006dcc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006dd0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006dd4:	4094      	lsls	r4, r2
 8006dd6:	4320      	orrs	r0, r4
 8006dd8:	2e02      	cmp	r6, #2
 8006dda:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006dde:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006de2:	d1cd      	bne.n	8006d80 <__register_exitproc+0x2c>
 8006de4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006de8:	430c      	orrs	r4, r1
 8006dea:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006dee:	e7c7      	b.n	8006d80 <__register_exitproc+0x2c>
 8006df0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006df4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006df8:	e7bc      	b.n	8006d74 <__register_exitproc+0x20>
 8006dfa:	6828      	ldr	r0, [r5, #0]
 8006dfc:	f7fe fe4c 	bl	8005a98 <__retarget_lock_release_recursive>
 8006e00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e04:	e7c5      	b.n	8006d92 <__register_exitproc+0x3e>
 8006e06:	bf00      	nop
 8006e08:	20000498 	.word	0x20000498
 8006e0c:	080073ac 	.word	0x080073ac
 8006e10:	00000000 	.word	0x00000000

08006e14 <_calloc_r>:
 8006e14:	b510      	push	{r4, lr}
 8006e16:	fb02 f101 	mul.w	r1, r2, r1
 8006e1a:	f7fe feb7 	bl	8005b8c <_malloc_r>
 8006e1e:	4604      	mov	r4, r0
 8006e20:	b1d8      	cbz	r0, 8006e5a <_calloc_r+0x46>
 8006e22:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006e26:	f022 0203 	bic.w	r2, r2, #3
 8006e2a:	3a04      	subs	r2, #4
 8006e2c:	2a24      	cmp	r2, #36	; 0x24
 8006e2e:	d81d      	bhi.n	8006e6c <_calloc_r+0x58>
 8006e30:	2a13      	cmp	r2, #19
 8006e32:	d914      	bls.n	8006e5e <_calloc_r+0x4a>
 8006e34:	2300      	movs	r3, #0
 8006e36:	2a1b      	cmp	r2, #27
 8006e38:	e9c0 3300 	strd	r3, r3, [r0]
 8006e3c:	d91b      	bls.n	8006e76 <_calloc_r+0x62>
 8006e3e:	2a24      	cmp	r2, #36	; 0x24
 8006e40:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006e44:	bf0a      	itet	eq
 8006e46:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006e4a:	f100 0210 	addne.w	r2, r0, #16
 8006e4e:	f100 0218 	addeq.w	r2, r0, #24
 8006e52:	2300      	movs	r3, #0
 8006e54:	e9c2 3300 	strd	r3, r3, [r2]
 8006e58:	6093      	str	r3, [r2, #8]
 8006e5a:	4620      	mov	r0, r4
 8006e5c:	bd10      	pop	{r4, pc}
 8006e5e:	4602      	mov	r2, r0
 8006e60:	2300      	movs	r3, #0
 8006e62:	e9c2 3300 	strd	r3, r3, [r2]
 8006e66:	6093      	str	r3, [r2, #8]
 8006e68:	4620      	mov	r0, r4
 8006e6a:	bd10      	pop	{r4, pc}
 8006e6c:	2100      	movs	r1, #0
 8006e6e:	f7fb fb6f 	bl	8002550 <memset>
 8006e72:	4620      	mov	r0, r4
 8006e74:	bd10      	pop	{r4, pc}
 8006e76:	f100 0208 	add.w	r2, r0, #8
 8006e7a:	e7f1      	b.n	8006e60 <_calloc_r+0x4c>

08006e7c <_close_r>:
 8006e7c:	b538      	push	{r3, r4, r5, lr}
 8006e7e:	4c07      	ldr	r4, [pc, #28]	; (8006e9c <_close_r+0x20>)
 8006e80:	2300      	movs	r3, #0
 8006e82:	4605      	mov	r5, r0
 8006e84:	4608      	mov	r0, r1
 8006e86:	6023      	str	r3, [r4, #0]
 8006e88:	f7fb fad9 	bl	800243e <_close>
 8006e8c:	1c43      	adds	r3, r0, #1
 8006e8e:	d000      	beq.n	8006e92 <_close_r+0x16>
 8006e90:	bd38      	pop	{r3, r4, r5, pc}
 8006e92:	6823      	ldr	r3, [r4, #0]
 8006e94:	2b00      	cmp	r3, #0
 8006e96:	d0fb      	beq.n	8006e90 <_close_r+0x14>
 8006e98:	602b      	str	r3, [r5, #0]
 8006e9a:	bd38      	pop	{r3, r4, r5, pc}
 8006e9c:	20000b5c 	.word	0x20000b5c

08006ea0 <_fclose_r>:
 8006ea0:	b570      	push	{r4, r5, r6, lr}
 8006ea2:	2900      	cmp	r1, #0
 8006ea4:	d048      	beq.n	8006f38 <_fclose_r+0x98>
 8006ea6:	4605      	mov	r5, r0
 8006ea8:	460c      	mov	r4, r1
 8006eaa:	b110      	cbz	r0, 8006eb2 <_fclose_r+0x12>
 8006eac:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006eae:	2b00      	cmp	r3, #0
 8006eb0:	d048      	beq.n	8006f44 <_fclose_r+0xa4>
 8006eb2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006eb4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006eb8:	07d0      	lsls	r0, r2, #31
 8006eba:	d440      	bmi.n	8006f3e <_fclose_r+0x9e>
 8006ebc:	0599      	lsls	r1, r3, #22
 8006ebe:	d530      	bpl.n	8006f22 <_fclose_r+0x82>
 8006ec0:	4621      	mov	r1, r4
 8006ec2:	4628      	mov	r0, r5
 8006ec4:	f7fe f990 	bl	80051e8 <__sflush_r>
 8006ec8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006eca:	4606      	mov	r6, r0
 8006ecc:	b133      	cbz	r3, 8006edc <_fclose_r+0x3c>
 8006ece:	69e1      	ldr	r1, [r4, #28]
 8006ed0:	4628      	mov	r0, r5
 8006ed2:	4798      	blx	r3
 8006ed4:	2800      	cmp	r0, #0
 8006ed6:	bfb8      	it	lt
 8006ed8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006edc:	89a3      	ldrh	r3, [r4, #12]
 8006ede:	061a      	lsls	r2, r3, #24
 8006ee0:	d43c      	bmi.n	8006f5c <_fclose_r+0xbc>
 8006ee2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006ee4:	b141      	cbz	r1, 8006ef8 <_fclose_r+0x58>
 8006ee6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006eea:	4299      	cmp	r1, r3
 8006eec:	d002      	beq.n	8006ef4 <_fclose_r+0x54>
 8006eee:	4628      	mov	r0, r5
 8006ef0:	f7fe fb22 	bl	8005538 <_free_r>
 8006ef4:	2300      	movs	r3, #0
 8006ef6:	6323      	str	r3, [r4, #48]	; 0x30
 8006ef8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006efa:	b121      	cbz	r1, 8006f06 <_fclose_r+0x66>
 8006efc:	4628      	mov	r0, r5
 8006efe:	f7fe fb1b 	bl	8005538 <_free_r>
 8006f02:	2300      	movs	r3, #0
 8006f04:	6463      	str	r3, [r4, #68]	; 0x44
 8006f06:	f7fe faa1 	bl	800544c <__sfp_lock_acquire>
 8006f0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f0c:	2200      	movs	r2, #0
 8006f0e:	07db      	lsls	r3, r3, #31
 8006f10:	81a2      	strh	r2, [r4, #12]
 8006f12:	d51f      	bpl.n	8006f54 <_fclose_r+0xb4>
 8006f14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f16:	f7fe fdbb 	bl	8005a90 <__retarget_lock_close_recursive>
 8006f1a:	f7fe fa9d 	bl	8005458 <__sfp_lock_release>
 8006f1e:	4630      	mov	r0, r6
 8006f20:	bd70      	pop	{r4, r5, r6, pc}
 8006f22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f24:	f7fe fdb6 	bl	8005a94 <__retarget_lock_acquire_recursive>
 8006f28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f2c:	2b00      	cmp	r3, #0
 8006f2e:	d1c7      	bne.n	8006ec0 <_fclose_r+0x20>
 8006f30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006f32:	f016 0601 	ands.w	r6, r6, #1
 8006f36:	d016      	beq.n	8006f66 <_fclose_r+0xc6>
 8006f38:	2600      	movs	r6, #0
 8006f3a:	4630      	mov	r0, r6
 8006f3c:	bd70      	pop	{r4, r5, r6, pc}
 8006f3e:	2b00      	cmp	r3, #0
 8006f40:	d0fa      	beq.n	8006f38 <_fclose_r+0x98>
 8006f42:	e7bd      	b.n	8006ec0 <_fclose_r+0x20>
 8006f44:	f7fe fa56 	bl	80053f4 <__sinit>
 8006f48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f4e:	07d0      	lsls	r0, r2, #31
 8006f50:	d4f5      	bmi.n	8006f3e <_fclose_r+0x9e>
 8006f52:	e7b3      	b.n	8006ebc <_fclose_r+0x1c>
 8006f54:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f56:	f7fe fd9f 	bl	8005a98 <__retarget_lock_release_recursive>
 8006f5a:	e7db      	b.n	8006f14 <_fclose_r+0x74>
 8006f5c:	6921      	ldr	r1, [r4, #16]
 8006f5e:	4628      	mov	r0, r5
 8006f60:	f7fe faea 	bl	8005538 <_free_r>
 8006f64:	e7bd      	b.n	8006ee2 <_fclose_r+0x42>
 8006f66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f68:	f7fe fd96 	bl	8005a98 <__retarget_lock_release_recursive>
 8006f6c:	4630      	mov	r0, r6
 8006f6e:	bd70      	pop	{r4, r5, r6, pc}

08006f70 <__fputwc>:
 8006f70:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006f74:	b082      	sub	sp, #8
 8006f76:	4681      	mov	r9, r0
 8006f78:	4688      	mov	r8, r1
 8006f7a:	4614      	mov	r4, r2
 8006f7c:	f000 f8a0 	bl	80070c0 <__locale_mb_cur_max>
 8006f80:	2801      	cmp	r0, #1
 8006f82:	d103      	bne.n	8006f8c <__fputwc+0x1c>
 8006f84:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006f88:	2bfe      	cmp	r3, #254	; 0xfe
 8006f8a:	d933      	bls.n	8006ff4 <__fputwc+0x84>
 8006f8c:	4642      	mov	r2, r8
 8006f8e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006f92:	a901      	add	r1, sp, #4
 8006f94:	4648      	mov	r0, r9
 8006f96:	f000 f93b 	bl	8007210 <_wcrtomb_r>
 8006f9a:	1c42      	adds	r2, r0, #1
 8006f9c:	4606      	mov	r6, r0
 8006f9e:	d02f      	beq.n	8007000 <__fputwc+0x90>
 8006fa0:	b320      	cbz	r0, 8006fec <__fputwc+0x7c>
 8006fa2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006fa6:	2500      	movs	r5, #0
 8006fa8:	f10d 0a04 	add.w	sl, sp, #4
 8006fac:	e009      	b.n	8006fc2 <__fputwc+0x52>
 8006fae:	6823      	ldr	r3, [r4, #0]
 8006fb0:	1c5a      	adds	r2, r3, #1
 8006fb2:	6022      	str	r2, [r4, #0]
 8006fb4:	f883 c000 	strb.w	ip, [r3]
 8006fb8:	3501      	adds	r5, #1
 8006fba:	42b5      	cmp	r5, r6
 8006fbc:	d216      	bcs.n	8006fec <__fputwc+0x7c>
 8006fbe:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006fc2:	68a3      	ldr	r3, [r4, #8]
 8006fc4:	3b01      	subs	r3, #1
 8006fc6:	2b00      	cmp	r3, #0
 8006fc8:	60a3      	str	r3, [r4, #8]
 8006fca:	daf0      	bge.n	8006fae <__fputwc+0x3e>
 8006fcc:	69a7      	ldr	r7, [r4, #24]
 8006fce:	42bb      	cmp	r3, r7
 8006fd0:	4661      	mov	r1, ip
 8006fd2:	4622      	mov	r2, r4
 8006fd4:	4648      	mov	r0, r9
 8006fd6:	db02      	blt.n	8006fde <__fputwc+0x6e>
 8006fd8:	f1bc 0f0a 	cmp.w	ip, #10
 8006fdc:	d1e7      	bne.n	8006fae <__fputwc+0x3e>
 8006fde:	f000 f8bf 	bl	8007160 <__swbuf_r>
 8006fe2:	1c43      	adds	r3, r0, #1
 8006fe4:	d1e8      	bne.n	8006fb8 <__fputwc+0x48>
 8006fe6:	b002      	add	sp, #8
 8006fe8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fec:	4640      	mov	r0, r8
 8006fee:	b002      	add	sp, #8
 8006ff0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006ff4:	fa5f fc88 	uxtb.w	ip, r8
 8006ff8:	4606      	mov	r6, r0
 8006ffa:	f88d c004 	strb.w	ip, [sp, #4]
 8006ffe:	e7d2      	b.n	8006fa6 <__fputwc+0x36>
 8007000:	89a3      	ldrh	r3, [r4, #12]
 8007002:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007006:	81a3      	strh	r3, [r4, #12]
 8007008:	b002      	add	sp, #8
 800700a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800700e:	bf00      	nop

08007010 <_fputwc_r>:
 8007010:	b530      	push	{r4, r5, lr}
 8007012:	4605      	mov	r5, r0
 8007014:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007016:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800701a:	07c0      	lsls	r0, r0, #31
 800701c:	4614      	mov	r4, r2
 800701e:	b083      	sub	sp, #12
 8007020:	b29a      	uxth	r2, r3
 8007022:	d401      	bmi.n	8007028 <_fputwc_r+0x18>
 8007024:	0590      	lsls	r0, r2, #22
 8007026:	d51c      	bpl.n	8007062 <_fputwc_r+0x52>
 8007028:	0490      	lsls	r0, r2, #18
 800702a:	d406      	bmi.n	800703a <_fputwc_r+0x2a>
 800702c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800702e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007032:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007036:	81a3      	strh	r3, [r4, #12]
 8007038:	6662      	str	r2, [r4, #100]	; 0x64
 800703a:	4628      	mov	r0, r5
 800703c:	4622      	mov	r2, r4
 800703e:	f7ff ff97 	bl	8006f70 <__fputwc>
 8007042:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007044:	07da      	lsls	r2, r3, #31
 8007046:	4605      	mov	r5, r0
 8007048:	d402      	bmi.n	8007050 <_fputwc_r+0x40>
 800704a:	89a3      	ldrh	r3, [r4, #12]
 800704c:	059b      	lsls	r3, r3, #22
 800704e:	d502      	bpl.n	8007056 <_fputwc_r+0x46>
 8007050:	4628      	mov	r0, r5
 8007052:	b003      	add	sp, #12
 8007054:	bd30      	pop	{r4, r5, pc}
 8007056:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007058:	f7fe fd1e 	bl	8005a98 <__retarget_lock_release_recursive>
 800705c:	4628      	mov	r0, r5
 800705e:	b003      	add	sp, #12
 8007060:	bd30      	pop	{r4, r5, pc}
 8007062:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007064:	9101      	str	r1, [sp, #4]
 8007066:	f7fe fd15 	bl	8005a94 <__retarget_lock_acquire_recursive>
 800706a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800706e:	9901      	ldr	r1, [sp, #4]
 8007070:	b29a      	uxth	r2, r3
 8007072:	e7d9      	b.n	8007028 <_fputwc_r+0x18>

08007074 <_fstat_r>:
 8007074:	b538      	push	{r3, r4, r5, lr}
 8007076:	460b      	mov	r3, r1
 8007078:	4c07      	ldr	r4, [pc, #28]	; (8007098 <_fstat_r+0x24>)
 800707a:	4605      	mov	r5, r0
 800707c:	4611      	mov	r1, r2
 800707e:	4618      	mov	r0, r3
 8007080:	2300      	movs	r3, #0
 8007082:	6023      	str	r3, [r4, #0]
 8007084:	f7fb f9de 	bl	8002444 <_fstat>
 8007088:	1c43      	adds	r3, r0, #1
 800708a:	d000      	beq.n	800708e <_fstat_r+0x1a>
 800708c:	bd38      	pop	{r3, r4, r5, pc}
 800708e:	6823      	ldr	r3, [r4, #0]
 8007090:	2b00      	cmp	r3, #0
 8007092:	d0fb      	beq.n	800708c <_fstat_r+0x18>
 8007094:	602b      	str	r3, [r5, #0]
 8007096:	bd38      	pop	{r3, r4, r5, pc}
 8007098:	20000b5c 	.word	0x20000b5c

0800709c <_isatty_r>:
 800709c:	b538      	push	{r3, r4, r5, lr}
 800709e:	4c07      	ldr	r4, [pc, #28]	; (80070bc <_isatty_r+0x20>)
 80070a0:	2300      	movs	r3, #0
 80070a2:	4605      	mov	r5, r0
 80070a4:	4608      	mov	r0, r1
 80070a6:	6023      	str	r3, [r4, #0]
 80070a8:	f7fb f9d1 	bl	800244e <_isatty>
 80070ac:	1c43      	adds	r3, r0, #1
 80070ae:	d000      	beq.n	80070b2 <_isatty_r+0x16>
 80070b0:	bd38      	pop	{r3, r4, r5, pc}
 80070b2:	6823      	ldr	r3, [r4, #0]
 80070b4:	2b00      	cmp	r3, #0
 80070b6:	d0fb      	beq.n	80070b0 <_isatty_r+0x14>
 80070b8:	602b      	str	r3, [r5, #0]
 80070ba:	bd38      	pop	{r3, r4, r5, pc}
 80070bc:	20000b5c 	.word	0x20000b5c

080070c0 <__locale_mb_cur_max>:
 80070c0:	4b04      	ldr	r3, [pc, #16]	; (80070d4 <__locale_mb_cur_max+0x14>)
 80070c2:	4a05      	ldr	r2, [pc, #20]	; (80070d8 <__locale_mb_cur_max+0x18>)
 80070c4:	681b      	ldr	r3, [r3, #0]
 80070c6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80070c8:	2b00      	cmp	r3, #0
 80070ca:	bf08      	it	eq
 80070cc:	4613      	moveq	r3, r2
 80070ce:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80070d2:	4770      	bx	lr
 80070d4:	2000006c 	.word	0x2000006c
 80070d8:	200008ac 	.word	0x200008ac

080070dc <_lseek_r>:
 80070dc:	b570      	push	{r4, r5, r6, lr}
 80070de:	460d      	mov	r5, r1
 80070e0:	4c08      	ldr	r4, [pc, #32]	; (8007104 <_lseek_r+0x28>)
 80070e2:	4611      	mov	r1, r2
 80070e4:	4606      	mov	r6, r0
 80070e6:	461a      	mov	r2, r3
 80070e8:	4628      	mov	r0, r5
 80070ea:	2300      	movs	r3, #0
 80070ec:	6023      	str	r3, [r4, #0]
 80070ee:	f7fb f9b0 	bl	8002452 <_lseek>
 80070f2:	1c43      	adds	r3, r0, #1
 80070f4:	d000      	beq.n	80070f8 <_lseek_r+0x1c>
 80070f6:	bd70      	pop	{r4, r5, r6, pc}
 80070f8:	6823      	ldr	r3, [r4, #0]
 80070fa:	2b00      	cmp	r3, #0
 80070fc:	d0fb      	beq.n	80070f6 <_lseek_r+0x1a>
 80070fe:	6033      	str	r3, [r6, #0]
 8007100:	bd70      	pop	{r4, r5, r6, pc}
 8007102:	bf00      	nop
 8007104:	20000b5c 	.word	0x20000b5c

08007108 <__ascii_mbtowc>:
 8007108:	b082      	sub	sp, #8
 800710a:	b149      	cbz	r1, 8007120 <__ascii_mbtowc+0x18>
 800710c:	b15a      	cbz	r2, 8007126 <__ascii_mbtowc+0x1e>
 800710e:	b16b      	cbz	r3, 800712c <__ascii_mbtowc+0x24>
 8007110:	7813      	ldrb	r3, [r2, #0]
 8007112:	600b      	str	r3, [r1, #0]
 8007114:	7812      	ldrb	r2, [r2, #0]
 8007116:	1c10      	adds	r0, r2, #0
 8007118:	bf18      	it	ne
 800711a:	2001      	movne	r0, #1
 800711c:	b002      	add	sp, #8
 800711e:	4770      	bx	lr
 8007120:	a901      	add	r1, sp, #4
 8007122:	2a00      	cmp	r2, #0
 8007124:	d1f3      	bne.n	800710e <__ascii_mbtowc+0x6>
 8007126:	4610      	mov	r0, r2
 8007128:	b002      	add	sp, #8
 800712a:	4770      	bx	lr
 800712c:	f06f 0001 	mvn.w	r0, #1
 8007130:	e7f4      	b.n	800711c <__ascii_mbtowc+0x14>
 8007132:	bf00      	nop

08007134 <_read_r>:
 8007134:	b570      	push	{r4, r5, r6, lr}
 8007136:	460d      	mov	r5, r1
 8007138:	4c08      	ldr	r4, [pc, #32]	; (800715c <_read_r+0x28>)
 800713a:	4611      	mov	r1, r2
 800713c:	4606      	mov	r6, r0
 800713e:	461a      	mov	r2, r3
 8007140:	4628      	mov	r0, r5
 8007142:	2300      	movs	r3, #0
 8007144:	6023      	str	r3, [r4, #0]
 8007146:	f7fb f938 	bl	80023ba <_read>
 800714a:	1c43      	adds	r3, r0, #1
 800714c:	d000      	beq.n	8007150 <_read_r+0x1c>
 800714e:	bd70      	pop	{r4, r5, r6, pc}
 8007150:	6823      	ldr	r3, [r4, #0]
 8007152:	2b00      	cmp	r3, #0
 8007154:	d0fb      	beq.n	800714e <_read_r+0x1a>
 8007156:	6033      	str	r3, [r6, #0]
 8007158:	bd70      	pop	{r4, r5, r6, pc}
 800715a:	bf00      	nop
 800715c:	20000b5c 	.word	0x20000b5c

08007160 <__swbuf_r>:
 8007160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007162:	460d      	mov	r5, r1
 8007164:	4614      	mov	r4, r2
 8007166:	4606      	mov	r6, r0
 8007168:	b110      	cbz	r0, 8007170 <__swbuf_r+0x10>
 800716a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800716c:	2b00      	cmp	r3, #0
 800716e:	d043      	beq.n	80071f8 <__swbuf_r+0x98>
 8007170:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007174:	69a3      	ldr	r3, [r4, #24]
 8007176:	60a3      	str	r3, [r4, #8]
 8007178:	b291      	uxth	r1, r2
 800717a:	0708      	lsls	r0, r1, #28
 800717c:	d51b      	bpl.n	80071b6 <__swbuf_r+0x56>
 800717e:	6923      	ldr	r3, [r4, #16]
 8007180:	b1cb      	cbz	r3, 80071b6 <__swbuf_r+0x56>
 8007182:	b2ed      	uxtb	r5, r5
 8007184:	0489      	lsls	r1, r1, #18
 8007186:	462f      	mov	r7, r5
 8007188:	d522      	bpl.n	80071d0 <__swbuf_r+0x70>
 800718a:	6822      	ldr	r2, [r4, #0]
 800718c:	6961      	ldr	r1, [r4, #20]
 800718e:	1ad3      	subs	r3, r2, r3
 8007190:	4299      	cmp	r1, r3
 8007192:	dd29      	ble.n	80071e8 <__swbuf_r+0x88>
 8007194:	3301      	adds	r3, #1
 8007196:	68a1      	ldr	r1, [r4, #8]
 8007198:	1c50      	adds	r0, r2, #1
 800719a:	3901      	subs	r1, #1
 800719c:	60a1      	str	r1, [r4, #8]
 800719e:	6020      	str	r0, [r4, #0]
 80071a0:	7015      	strb	r5, [r2, #0]
 80071a2:	6962      	ldr	r2, [r4, #20]
 80071a4:	429a      	cmp	r2, r3
 80071a6:	d02a      	beq.n	80071fe <__swbuf_r+0x9e>
 80071a8:	89a3      	ldrh	r3, [r4, #12]
 80071aa:	07db      	lsls	r3, r3, #31
 80071ac:	d501      	bpl.n	80071b2 <__swbuf_r+0x52>
 80071ae:	2d0a      	cmp	r5, #10
 80071b0:	d025      	beq.n	80071fe <__swbuf_r+0x9e>
 80071b2:	4638      	mov	r0, r7
 80071b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80071b6:	4621      	mov	r1, r4
 80071b8:	4630      	mov	r0, r6
 80071ba:	f7fc fffd 	bl	80041b8 <__swsetup_r>
 80071be:	bb20      	cbnz	r0, 800720a <__swbuf_r+0xaa>
 80071c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80071c4:	6923      	ldr	r3, [r4, #16]
 80071c6:	b291      	uxth	r1, r2
 80071c8:	b2ed      	uxtb	r5, r5
 80071ca:	0489      	lsls	r1, r1, #18
 80071cc:	462f      	mov	r7, r5
 80071ce:	d4dc      	bmi.n	800718a <__swbuf_r+0x2a>
 80071d0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80071d2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80071d6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80071da:	81a2      	strh	r2, [r4, #12]
 80071dc:	6822      	ldr	r2, [r4, #0]
 80071de:	6661      	str	r1, [r4, #100]	; 0x64
 80071e0:	6961      	ldr	r1, [r4, #20]
 80071e2:	1ad3      	subs	r3, r2, r3
 80071e4:	4299      	cmp	r1, r3
 80071e6:	dcd5      	bgt.n	8007194 <__swbuf_r+0x34>
 80071e8:	4621      	mov	r1, r4
 80071ea:	4630      	mov	r0, r6
 80071ec:	f7fe f8a6 	bl	800533c <_fflush_r>
 80071f0:	b958      	cbnz	r0, 800720a <__swbuf_r+0xaa>
 80071f2:	6822      	ldr	r2, [r4, #0]
 80071f4:	2301      	movs	r3, #1
 80071f6:	e7ce      	b.n	8007196 <__swbuf_r+0x36>
 80071f8:	f7fe f8fc 	bl	80053f4 <__sinit>
 80071fc:	e7b8      	b.n	8007170 <__swbuf_r+0x10>
 80071fe:	4621      	mov	r1, r4
 8007200:	4630      	mov	r0, r6
 8007202:	f7fe f89b 	bl	800533c <_fflush_r>
 8007206:	2800      	cmp	r0, #0
 8007208:	d0d3      	beq.n	80071b2 <__swbuf_r+0x52>
 800720a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800720e:	e7d0      	b.n	80071b2 <__swbuf_r+0x52>

08007210 <_wcrtomb_r>:
 8007210:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007212:	4c11      	ldr	r4, [pc, #68]	; (8007258 <_wcrtomb_r+0x48>)
 8007214:	6824      	ldr	r4, [r4, #0]
 8007216:	b085      	sub	sp, #20
 8007218:	4606      	mov	r6, r0
 800721a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800721c:	461f      	mov	r7, r3
 800721e:	b151      	cbz	r1, 8007236 <_wcrtomb_r+0x26>
 8007220:	4d0e      	ldr	r5, [pc, #56]	; (800725c <_wcrtomb_r+0x4c>)
 8007222:	2c00      	cmp	r4, #0
 8007224:	bf08      	it	eq
 8007226:	462c      	moveq	r4, r5
 8007228:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800722c:	47a0      	blx	r4
 800722e:	1c43      	adds	r3, r0, #1
 8007230:	d00c      	beq.n	800724c <_wcrtomb_r+0x3c>
 8007232:	b005      	add	sp, #20
 8007234:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007236:	4a09      	ldr	r2, [pc, #36]	; (800725c <_wcrtomb_r+0x4c>)
 8007238:	2c00      	cmp	r4, #0
 800723a:	bf08      	it	eq
 800723c:	4614      	moveq	r4, r2
 800723e:	460a      	mov	r2, r1
 8007240:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007244:	a901      	add	r1, sp, #4
 8007246:	47a0      	blx	r4
 8007248:	1c43      	adds	r3, r0, #1
 800724a:	d1f2      	bne.n	8007232 <_wcrtomb_r+0x22>
 800724c:	2200      	movs	r2, #0
 800724e:	238a      	movs	r3, #138	; 0x8a
 8007250:	603a      	str	r2, [r7, #0]
 8007252:	6033      	str	r3, [r6, #0]
 8007254:	b005      	add	sp, #20
 8007256:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007258:	2000006c 	.word	0x2000006c
 800725c:	200008ac 	.word	0x200008ac

08007260 <__ascii_wctomb>:
 8007260:	b121      	cbz	r1, 800726c <__ascii_wctomb+0xc>
 8007262:	2aff      	cmp	r2, #255	; 0xff
 8007264:	d804      	bhi.n	8007270 <__ascii_wctomb+0x10>
 8007266:	700a      	strb	r2, [r1, #0]
 8007268:	2001      	movs	r0, #1
 800726a:	4770      	bx	lr
 800726c:	4608      	mov	r0, r1
 800726e:	4770      	bx	lr
 8007270:	238a      	movs	r3, #138	; 0x8a
 8007272:	6003      	str	r3, [r0, #0]
 8007274:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007278:	4770      	bx	lr
 800727a:	bf00      	nop

0800727c <_init>:
 800727c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800727e:	bf00      	nop
 8007280:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007282:	bc08      	pop	{r3}
 8007284:	469e      	mov	lr, r3
 8007286:	4770      	bx	lr

08007288 <_fini>:
 8007288:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800728a:	bf00      	nop
 800728c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800728e:	bc08      	pop	{r3}
 8007290:	469e      	mov	lr, r3
 8007292:	4770      	bx	lr
 8007294:	0000      	movs	r0, r0
	...
