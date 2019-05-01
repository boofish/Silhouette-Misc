
stb_perlin.elf:     file format elf32-littlearm


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
 80001e0:	0800741c 	.word	0x0800741c

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
 80001fc:	0800741c 	.word	0x0800741c

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

08000afc <__aeabi_d2f>:
 8000afc:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000b00:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8000b04:	bf24      	itt	cs
 8000b06:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8000b0a:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8000b0e:	d90d      	bls.n	8000b2c <__aeabi_d2f+0x30>
 8000b10:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8000b14:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8000b18:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8000b1c:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8000b20:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8000b24:	bf08      	it	eq
 8000b26:	f020 0001 	biceq.w	r0, r0, #1
 8000b2a:	4770      	bx	lr
 8000b2c:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8000b30:	d121      	bne.n	8000b76 <__aeabi_d2f+0x7a>
 8000b32:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8000b36:	bfbc      	itt	lt
 8000b38:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8000b3c:	4770      	bxlt	lr
 8000b3e:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000b42:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8000b46:	f1c2 0218 	rsb	r2, r2, #24
 8000b4a:	f1c2 0c20 	rsb	ip, r2, #32
 8000b4e:	fa10 f30c 	lsls.w	r3, r0, ip
 8000b52:	fa20 f002 	lsr.w	r0, r0, r2
 8000b56:	bf18      	it	ne
 8000b58:	f040 0001 	orrne.w	r0, r0, #1
 8000b5c:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000b60:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8000b64:	fa03 fc0c 	lsl.w	ip, r3, ip
 8000b68:	ea40 000c 	orr.w	r0, r0, ip
 8000b6c:	fa23 f302 	lsr.w	r3, r3, r2
 8000b70:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8000b74:	e7cc      	b.n	8000b10 <__aeabi_d2f+0x14>
 8000b76:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8000b7a:	d107      	bne.n	8000b8c <__aeabi_d2f+0x90>
 8000b7c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8000b80:	bf1e      	ittt	ne
 8000b82:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8000b86:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8000b8a:	4770      	bxne	lr
 8000b8c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8000b90:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8000b94:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8000b98:	4770      	bx	lr
 8000b9a:	bf00      	nop

08000b9c <__aeabi_uldivmod>:
 8000b9c:	b953      	cbnz	r3, 8000bb4 <__aeabi_uldivmod+0x18>
 8000b9e:	b94a      	cbnz	r2, 8000bb4 <__aeabi_uldivmod+0x18>
 8000ba0:	2900      	cmp	r1, #0
 8000ba2:	bf08      	it	eq
 8000ba4:	2800      	cmpeq	r0, #0
 8000ba6:	bf1c      	itt	ne
 8000ba8:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000bac:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000bb0:	f000 b972 	b.w	8000e98 <__aeabi_idiv0>
 8000bb4:	f1ad 0c08 	sub.w	ip, sp, #8
 8000bb8:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000bbc:	f000 f806 	bl	8000bcc <__udivmoddi4>
 8000bc0:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000bc4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000bc8:	b004      	add	sp, #16
 8000bca:	4770      	bx	lr

08000bcc <__udivmoddi4>:
 8000bcc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000bd0:	9e08      	ldr	r6, [sp, #32]
 8000bd2:	4604      	mov	r4, r0
 8000bd4:	4688      	mov	r8, r1
 8000bd6:	2b00      	cmp	r3, #0
 8000bd8:	d14b      	bne.n	8000c72 <__udivmoddi4+0xa6>
 8000bda:	428a      	cmp	r2, r1
 8000bdc:	4615      	mov	r5, r2
 8000bde:	d967      	bls.n	8000cb0 <__udivmoddi4+0xe4>
 8000be0:	fab2 f282 	clz	r2, r2
 8000be4:	b14a      	cbz	r2, 8000bfa <__udivmoddi4+0x2e>
 8000be6:	f1c2 0720 	rsb	r7, r2, #32
 8000bea:	fa01 f302 	lsl.w	r3, r1, r2
 8000bee:	fa20 f707 	lsr.w	r7, r0, r7
 8000bf2:	4095      	lsls	r5, r2
 8000bf4:	ea47 0803 	orr.w	r8, r7, r3
 8000bf8:	4094      	lsls	r4, r2
 8000bfa:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000bfe:	0c23      	lsrs	r3, r4, #16
 8000c00:	fbb8 f7fe 	udiv	r7, r8, lr
 8000c04:	fa1f fc85 	uxth.w	ip, r5
 8000c08:	fb0e 8817 	mls	r8, lr, r7, r8
 8000c0c:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000c10:	fb07 f10c 	mul.w	r1, r7, ip
 8000c14:	4299      	cmp	r1, r3
 8000c16:	d909      	bls.n	8000c2c <__udivmoddi4+0x60>
 8000c18:	18eb      	adds	r3, r5, r3
 8000c1a:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000c1e:	f080 811b 	bcs.w	8000e58 <__udivmoddi4+0x28c>
 8000c22:	4299      	cmp	r1, r3
 8000c24:	f240 8118 	bls.w	8000e58 <__udivmoddi4+0x28c>
 8000c28:	3f02      	subs	r7, #2
 8000c2a:	442b      	add	r3, r5
 8000c2c:	1a5b      	subs	r3, r3, r1
 8000c2e:	b2a4      	uxth	r4, r4
 8000c30:	fbb3 f0fe 	udiv	r0, r3, lr
 8000c34:	fb0e 3310 	mls	r3, lr, r0, r3
 8000c38:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000c3c:	fb00 fc0c 	mul.w	ip, r0, ip
 8000c40:	45a4      	cmp	ip, r4
 8000c42:	d909      	bls.n	8000c58 <__udivmoddi4+0x8c>
 8000c44:	192c      	adds	r4, r5, r4
 8000c46:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c4a:	f080 8107 	bcs.w	8000e5c <__udivmoddi4+0x290>
 8000c4e:	45a4      	cmp	ip, r4
 8000c50:	f240 8104 	bls.w	8000e5c <__udivmoddi4+0x290>
 8000c54:	3802      	subs	r0, #2
 8000c56:	442c      	add	r4, r5
 8000c58:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000c5c:	eba4 040c 	sub.w	r4, r4, ip
 8000c60:	2700      	movs	r7, #0
 8000c62:	b11e      	cbz	r6, 8000c6c <__udivmoddi4+0xa0>
 8000c64:	40d4      	lsrs	r4, r2
 8000c66:	2300      	movs	r3, #0
 8000c68:	e9c6 4300 	strd	r4, r3, [r6]
 8000c6c:	4639      	mov	r1, r7
 8000c6e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000c72:	428b      	cmp	r3, r1
 8000c74:	d909      	bls.n	8000c8a <__udivmoddi4+0xbe>
 8000c76:	2e00      	cmp	r6, #0
 8000c78:	f000 80eb 	beq.w	8000e52 <__udivmoddi4+0x286>
 8000c7c:	2700      	movs	r7, #0
 8000c7e:	e9c6 0100 	strd	r0, r1, [r6]
 8000c82:	4638      	mov	r0, r7
 8000c84:	4639      	mov	r1, r7
 8000c86:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000c8a:	fab3 f783 	clz	r7, r3
 8000c8e:	2f00      	cmp	r7, #0
 8000c90:	d147      	bne.n	8000d22 <__udivmoddi4+0x156>
 8000c92:	428b      	cmp	r3, r1
 8000c94:	d302      	bcc.n	8000c9c <__udivmoddi4+0xd0>
 8000c96:	4282      	cmp	r2, r0
 8000c98:	f200 80fa 	bhi.w	8000e90 <__udivmoddi4+0x2c4>
 8000c9c:	1a84      	subs	r4, r0, r2
 8000c9e:	eb61 0303 	sbc.w	r3, r1, r3
 8000ca2:	2001      	movs	r0, #1
 8000ca4:	4698      	mov	r8, r3
 8000ca6:	2e00      	cmp	r6, #0
 8000ca8:	d0e0      	beq.n	8000c6c <__udivmoddi4+0xa0>
 8000caa:	e9c6 4800 	strd	r4, r8, [r6]
 8000cae:	e7dd      	b.n	8000c6c <__udivmoddi4+0xa0>
 8000cb0:	b902      	cbnz	r2, 8000cb4 <__udivmoddi4+0xe8>
 8000cb2:	deff      	udf	#255	; 0xff
 8000cb4:	fab2 f282 	clz	r2, r2
 8000cb8:	2a00      	cmp	r2, #0
 8000cba:	f040 808f 	bne.w	8000ddc <__udivmoddi4+0x210>
 8000cbe:	1b49      	subs	r1, r1, r5
 8000cc0:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000cc4:	fa1f f885 	uxth.w	r8, r5
 8000cc8:	2701      	movs	r7, #1
 8000cca:	fbb1 fcfe 	udiv	ip, r1, lr
 8000cce:	0c23      	lsrs	r3, r4, #16
 8000cd0:	fb0e 111c 	mls	r1, lr, ip, r1
 8000cd4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000cd8:	fb08 f10c 	mul.w	r1, r8, ip
 8000cdc:	4299      	cmp	r1, r3
 8000cde:	d907      	bls.n	8000cf0 <__udivmoddi4+0x124>
 8000ce0:	18eb      	adds	r3, r5, r3
 8000ce2:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000ce6:	d202      	bcs.n	8000cee <__udivmoddi4+0x122>
 8000ce8:	4299      	cmp	r1, r3
 8000cea:	f200 80cd 	bhi.w	8000e88 <__udivmoddi4+0x2bc>
 8000cee:	4684      	mov	ip, r0
 8000cf0:	1a59      	subs	r1, r3, r1
 8000cf2:	b2a3      	uxth	r3, r4
 8000cf4:	fbb1 f0fe 	udiv	r0, r1, lr
 8000cf8:	fb0e 1410 	mls	r4, lr, r0, r1
 8000cfc:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000d00:	fb08 f800 	mul.w	r8, r8, r0
 8000d04:	45a0      	cmp	r8, r4
 8000d06:	d907      	bls.n	8000d18 <__udivmoddi4+0x14c>
 8000d08:	192c      	adds	r4, r5, r4
 8000d0a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000d0e:	d202      	bcs.n	8000d16 <__udivmoddi4+0x14a>
 8000d10:	45a0      	cmp	r8, r4
 8000d12:	f200 80b6 	bhi.w	8000e82 <__udivmoddi4+0x2b6>
 8000d16:	4618      	mov	r0, r3
 8000d18:	eba4 0408 	sub.w	r4, r4, r8
 8000d1c:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000d20:	e79f      	b.n	8000c62 <__udivmoddi4+0x96>
 8000d22:	f1c7 0c20 	rsb	ip, r7, #32
 8000d26:	40bb      	lsls	r3, r7
 8000d28:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000d2c:	ea4e 0e03 	orr.w	lr, lr, r3
 8000d30:	fa01 f407 	lsl.w	r4, r1, r7
 8000d34:	fa20 f50c 	lsr.w	r5, r0, ip
 8000d38:	fa21 f30c 	lsr.w	r3, r1, ip
 8000d3c:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000d40:	4325      	orrs	r5, r4
 8000d42:	fbb3 f9f8 	udiv	r9, r3, r8
 8000d46:	0c2c      	lsrs	r4, r5, #16
 8000d48:	fb08 3319 	mls	r3, r8, r9, r3
 8000d4c:	fa1f fa8e 	uxth.w	sl, lr
 8000d50:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000d54:	fb09 f40a 	mul.w	r4, r9, sl
 8000d58:	429c      	cmp	r4, r3
 8000d5a:	fa02 f207 	lsl.w	r2, r2, r7
 8000d5e:	fa00 f107 	lsl.w	r1, r0, r7
 8000d62:	d90b      	bls.n	8000d7c <__udivmoddi4+0x1b0>
 8000d64:	eb1e 0303 	adds.w	r3, lr, r3
 8000d68:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000d6c:	f080 8087 	bcs.w	8000e7e <__udivmoddi4+0x2b2>
 8000d70:	429c      	cmp	r4, r3
 8000d72:	f240 8084 	bls.w	8000e7e <__udivmoddi4+0x2b2>
 8000d76:	f1a9 0902 	sub.w	r9, r9, #2
 8000d7a:	4473      	add	r3, lr
 8000d7c:	1b1b      	subs	r3, r3, r4
 8000d7e:	b2ad      	uxth	r5, r5
 8000d80:	fbb3 f0f8 	udiv	r0, r3, r8
 8000d84:	fb08 3310 	mls	r3, r8, r0, r3
 8000d88:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000d8c:	fb00 fa0a 	mul.w	sl, r0, sl
 8000d90:	45a2      	cmp	sl, r4
 8000d92:	d908      	bls.n	8000da6 <__udivmoddi4+0x1da>
 8000d94:	eb1e 0404 	adds.w	r4, lr, r4
 8000d98:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000d9c:	d26b      	bcs.n	8000e76 <__udivmoddi4+0x2aa>
 8000d9e:	45a2      	cmp	sl, r4
 8000da0:	d969      	bls.n	8000e76 <__udivmoddi4+0x2aa>
 8000da2:	3802      	subs	r0, #2
 8000da4:	4474      	add	r4, lr
 8000da6:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000daa:	fba0 8902 	umull	r8, r9, r0, r2
 8000dae:	eba4 040a 	sub.w	r4, r4, sl
 8000db2:	454c      	cmp	r4, r9
 8000db4:	46c2      	mov	sl, r8
 8000db6:	464b      	mov	r3, r9
 8000db8:	d354      	bcc.n	8000e64 <__udivmoddi4+0x298>
 8000dba:	d051      	beq.n	8000e60 <__udivmoddi4+0x294>
 8000dbc:	2e00      	cmp	r6, #0
 8000dbe:	d069      	beq.n	8000e94 <__udivmoddi4+0x2c8>
 8000dc0:	ebb1 050a 	subs.w	r5, r1, sl
 8000dc4:	eb64 0403 	sbc.w	r4, r4, r3
 8000dc8:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000dcc:	40fd      	lsrs	r5, r7
 8000dce:	40fc      	lsrs	r4, r7
 8000dd0:	ea4c 0505 	orr.w	r5, ip, r5
 8000dd4:	e9c6 5400 	strd	r5, r4, [r6]
 8000dd8:	2700      	movs	r7, #0
 8000dda:	e747      	b.n	8000c6c <__udivmoddi4+0xa0>
 8000ddc:	f1c2 0320 	rsb	r3, r2, #32
 8000de0:	fa20 f703 	lsr.w	r7, r0, r3
 8000de4:	4095      	lsls	r5, r2
 8000de6:	fa01 f002 	lsl.w	r0, r1, r2
 8000dea:	fa21 f303 	lsr.w	r3, r1, r3
 8000dee:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000df2:	4338      	orrs	r0, r7
 8000df4:	0c01      	lsrs	r1, r0, #16
 8000df6:	fbb3 f7fe 	udiv	r7, r3, lr
 8000dfa:	fa1f f885 	uxth.w	r8, r5
 8000dfe:	fb0e 3317 	mls	r3, lr, r7, r3
 8000e02:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000e06:	fb07 f308 	mul.w	r3, r7, r8
 8000e0a:	428b      	cmp	r3, r1
 8000e0c:	fa04 f402 	lsl.w	r4, r4, r2
 8000e10:	d907      	bls.n	8000e22 <__udivmoddi4+0x256>
 8000e12:	1869      	adds	r1, r5, r1
 8000e14:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000e18:	d22f      	bcs.n	8000e7a <__udivmoddi4+0x2ae>
 8000e1a:	428b      	cmp	r3, r1
 8000e1c:	d92d      	bls.n	8000e7a <__udivmoddi4+0x2ae>
 8000e1e:	3f02      	subs	r7, #2
 8000e20:	4429      	add	r1, r5
 8000e22:	1acb      	subs	r3, r1, r3
 8000e24:	b281      	uxth	r1, r0
 8000e26:	fbb3 f0fe 	udiv	r0, r3, lr
 8000e2a:	fb0e 3310 	mls	r3, lr, r0, r3
 8000e2e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000e32:	fb00 f308 	mul.w	r3, r0, r8
 8000e36:	428b      	cmp	r3, r1
 8000e38:	d907      	bls.n	8000e4a <__udivmoddi4+0x27e>
 8000e3a:	1869      	adds	r1, r5, r1
 8000e3c:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000e40:	d217      	bcs.n	8000e72 <__udivmoddi4+0x2a6>
 8000e42:	428b      	cmp	r3, r1
 8000e44:	d915      	bls.n	8000e72 <__udivmoddi4+0x2a6>
 8000e46:	3802      	subs	r0, #2
 8000e48:	4429      	add	r1, r5
 8000e4a:	1ac9      	subs	r1, r1, r3
 8000e4c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000e50:	e73b      	b.n	8000cca <__udivmoddi4+0xfe>
 8000e52:	4637      	mov	r7, r6
 8000e54:	4630      	mov	r0, r6
 8000e56:	e709      	b.n	8000c6c <__udivmoddi4+0xa0>
 8000e58:	4607      	mov	r7, r0
 8000e5a:	e6e7      	b.n	8000c2c <__udivmoddi4+0x60>
 8000e5c:	4618      	mov	r0, r3
 8000e5e:	e6fb      	b.n	8000c58 <__udivmoddi4+0x8c>
 8000e60:	4541      	cmp	r1, r8
 8000e62:	d2ab      	bcs.n	8000dbc <__udivmoddi4+0x1f0>
 8000e64:	ebb8 0a02 	subs.w	sl, r8, r2
 8000e68:	eb69 020e 	sbc.w	r2, r9, lr
 8000e6c:	3801      	subs	r0, #1
 8000e6e:	4613      	mov	r3, r2
 8000e70:	e7a4      	b.n	8000dbc <__udivmoddi4+0x1f0>
 8000e72:	4660      	mov	r0, ip
 8000e74:	e7e9      	b.n	8000e4a <__udivmoddi4+0x27e>
 8000e76:	4618      	mov	r0, r3
 8000e78:	e795      	b.n	8000da6 <__udivmoddi4+0x1da>
 8000e7a:	4667      	mov	r7, ip
 8000e7c:	e7d1      	b.n	8000e22 <__udivmoddi4+0x256>
 8000e7e:	4681      	mov	r9, r0
 8000e80:	e77c      	b.n	8000d7c <__udivmoddi4+0x1b0>
 8000e82:	3802      	subs	r0, #2
 8000e84:	442c      	add	r4, r5
 8000e86:	e747      	b.n	8000d18 <__udivmoddi4+0x14c>
 8000e88:	f1ac 0c02 	sub.w	ip, ip, #2
 8000e8c:	442b      	add	r3, r5
 8000e8e:	e72f      	b.n	8000cf0 <__udivmoddi4+0x124>
 8000e90:	4638      	mov	r0, r7
 8000e92:	e708      	b.n	8000ca6 <__udivmoddi4+0xda>
 8000e94:	4637      	mov	r7, r6
 8000e96:	e6e9      	b.n	8000c6c <__udivmoddi4+0xa0>

08000e98 <__aeabi_idiv0>:
 8000e98:	4770      	bx	lr
 8000e9a:	bf00      	nop

08000e9c <memcpy>:
 8000e9c:	4684      	mov	ip, r0
 8000e9e:	ea41 0300 	orr.w	r3, r1, r0
 8000ea2:	f013 0303 	ands.w	r3, r3, #3
 8000ea6:	d16d      	bne.n	8000f84 <memcpy+0xe8>
 8000ea8:	3a40      	subs	r2, #64	; 0x40
 8000eaa:	d341      	bcc.n	8000f30 <memcpy+0x94>
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
 8000f2c:	3a40      	subs	r2, #64	; 0x40
 8000f2e:	d2bd      	bcs.n	8000eac <memcpy+0x10>
 8000f30:	3230      	adds	r2, #48	; 0x30
 8000f32:	d311      	bcc.n	8000f58 <memcpy+0xbc>
 8000f34:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f38:	f840 3b04 	str.w	r3, [r0], #4
 8000f3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f40:	f840 3b04 	str.w	r3, [r0], #4
 8000f44:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f48:	f840 3b04 	str.w	r3, [r0], #4
 8000f4c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f50:	f840 3b04 	str.w	r3, [r0], #4
 8000f54:	3a10      	subs	r2, #16
 8000f56:	d2ed      	bcs.n	8000f34 <memcpy+0x98>
 8000f58:	320c      	adds	r2, #12
 8000f5a:	d305      	bcc.n	8000f68 <memcpy+0xcc>
 8000f5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000f60:	f840 3b04 	str.w	r3, [r0], #4
 8000f64:	3a04      	subs	r2, #4
 8000f66:	d2f9      	bcs.n	8000f5c <memcpy+0xc0>
 8000f68:	3204      	adds	r2, #4
 8000f6a:	d008      	beq.n	8000f7e <memcpy+0xe2>
 8000f6c:	07d2      	lsls	r2, r2, #31
 8000f6e:	bf1c      	itt	ne
 8000f70:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000f74:	f800 3b01 	strbne.w	r3, [r0], #1
 8000f78:	d301      	bcc.n	8000f7e <memcpy+0xe2>
 8000f7a:	880b      	ldrh	r3, [r1, #0]
 8000f7c:	8003      	strh	r3, [r0, #0]
 8000f7e:	4660      	mov	r0, ip
 8000f80:	4770      	bx	lr
 8000f82:	bf00      	nop
 8000f84:	2a08      	cmp	r2, #8
 8000f86:	d313      	bcc.n	8000fb0 <memcpy+0x114>
 8000f88:	078b      	lsls	r3, r1, #30
 8000f8a:	d08d      	beq.n	8000ea8 <memcpy+0xc>
 8000f8c:	f010 0303 	ands.w	r3, r0, #3
 8000f90:	d08a      	beq.n	8000ea8 <memcpy+0xc>
 8000f92:	f1c3 0304 	rsb	r3, r3, #4
 8000f96:	1ad2      	subs	r2, r2, r3
 8000f98:	07db      	lsls	r3, r3, #31
 8000f9a:	bf1c      	itt	ne
 8000f9c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000fa0:	f800 3b01 	strbne.w	r3, [r0], #1
 8000fa4:	d380      	bcc.n	8000ea8 <memcpy+0xc>
 8000fa6:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000faa:	f820 3b02 	strh.w	r3, [r0], #2
 8000fae:	e77b      	b.n	8000ea8 <memcpy+0xc>
 8000fb0:	3a04      	subs	r2, #4
 8000fb2:	d3d9      	bcc.n	8000f68 <memcpy+0xcc>
 8000fb4:	3a01      	subs	r2, #1
 8000fb6:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000fba:	f800 3b01 	strb.w	r3, [r0], #1
 8000fbe:	d2f9      	bcs.n	8000fb4 <memcpy+0x118>
 8000fc0:	780b      	ldrb	r3, [r1, #0]
 8000fc2:	7003      	strb	r3, [r0, #0]
 8000fc4:	784b      	ldrb	r3, [r1, #1]
 8000fc6:	7043      	strb	r3, [r0, #1]
 8000fc8:	788b      	ldrb	r3, [r1, #2]
 8000fca:	7083      	strb	r3, [r0, #2]
 8000fcc:	4660      	mov	r0, ip
 8000fce:	4770      	bx	lr
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
 80011cc:	f640 20a0 	movw	r0, #2720	; 0xaa0
 80011d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d4:	6801      	ldr	r1, [r0, #0]
 80011d6:	3101      	adds	r1, #1
 80011d8:	6001      	str	r1, [r0, #0]
 80011da:	4770      	bx	lr

080011dc <HAL_GetTick>:
 80011dc:	f640 20a0 	movw	r0, #2720	; 0xaa0
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
 80014ac:	f647 62e0 	movw	r2, #32480	; 0x7ee0
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
 800151e:	f240 0014 	movw	r0, #20
 8001522:	f241 0108 	movw	r1, #4104	; 0x1008
 8001526:	f647 62d8 	movw	r2, #32472	; 0x7ed8
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
 8001548:	f240 0014 	movw	r0, #20
 800154c:	f241 0108 	movw	r1, #4104	; 0x1008
 8001550:	f647 62d8 	movw	r2, #32472	; 0x7ed8
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
 8001906:	f640 21a4 	movw	r1, #2724	; 0xaa4
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
 8001950:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001954:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001958:	f7ff fecd 	bl	80016f6 <HAL_TIM_Base_Start_IT>
 800195c:	b006      	add	sp, #24
 800195e:	bdb0      	pop	{r4, r5, r7, pc}

08001960 <HAL_TIM_PeriodElapsedCallback>:
 8001960:	f7ff bc34 	b.w	80011cc <HAL_IncTick>

08001964 <TIM6_DAC_IRQHandler>:
 8001964:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 8001a98:	f647 7310 	movw	r3, #32528	; 0x7f10
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
 8001ac0:	f647 7320 	movw	r3, #32544	; 0x7f20
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
 8001c00:	f7fe ffcc 	bl	8000b9c <__aeabi_uldivmod>
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

08001f7a <stb_perlin_noise3>:
 8001f7a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f7c:	af03      	add	r7, sp, #12
 8001f7e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f82:	b081      	sub	sp, #4
 8001f84:	ed2d 8b0e 	vpush	{d8-d14}
 8001f88:	b086      	sub	sp, #24
 8001f8a:	eeb0 9a40 	vmov.f32	s18, s0
 8001f8e:	4604      	mov	r4, r0
 8001f90:	9204      	str	r2, [sp, #16]
 8001f92:	4688      	mov	r8, r1
 8001f94:	eeb0 8a41 	vmov.f32	s16, s2
 8001f98:	eeb0 aa60 	vmov.f32	s20, s1
 8001f9c:	ee19 0a10 	vmov	r0, s18
 8001fa0:	f7fe fa92 	bl	80004c8 <__aeabi_f2d>
 8001fa4:	f000 faf0 	bl	8002588 <floor>
 8001fa8:	f104 02ff 	add.w	r2, r4, #255	; 0xff
 8001fac:	b2d4      	uxtb	r4, r2
 8001fae:	9402      	str	r4, [sp, #8]
 8001fb0:	f7fe fd7c 	bl	8000aac <__aeabi_d2iz>
 8001fb4:	4605      	mov	r5, r0
 8001fb6:	ee1a 0a10 	vmov	r0, s20
 8001fba:	9501      	str	r5, [sp, #4]
 8001fbc:	f7fe fa84 	bl	80004c8 <__aeabi_f2d>
 8001fc0:	402c      	ands	r4, r5
 8001fc2:	f000 fae1 	bl	8002588 <floor>
 8001fc6:	f247 4638 	movw	r6, #29752	; 0x7438
 8001fca:	f108 02ff 	add.w	r2, r8, #255	; 0xff
 8001fce:	f6c0 0600 	movt	r6, #2048	; 0x800
 8001fd2:	fa5f f982 	uxtb.w	r9, r2
 8001fd6:	f856 4024 	ldr.w	r4, [r6, r4, lsl #2]
 8001fda:	9403      	str	r4, [sp, #12]
 8001fdc:	f7fe fd66 	bl	8000aac <__aeabi_d2iz>
 8001fe0:	4683      	mov	fp, r0
 8001fe2:	f10b 0101 	add.w	r1, fp, #1
 8001fe6:	ea01 0009 	and.w	r0, r1, r9
 8001fea:	9005      	str	r0, [sp, #20]
 8001fec:	4404      	add	r4, r0
 8001fee:	ee18 0a10 	vmov	r0, s16
 8001ff2:	f7fe fa69 	bl	80004c8 <__aeabi_f2d>
 8001ff6:	9a04      	ldr	r2, [sp, #16]
 8001ff8:	f856 a024 	ldr.w	sl, [r6, r4, lsl #2]
 8001ffc:	32ff      	adds	r2, #255	; 0xff
 8001ffe:	fa5f f882 	uxtb.w	r8, r2
 8002002:	f000 fac1 	bl	8002588 <floor>
 8002006:	f7fe fd51 	bl	8000aac <__aeabi_d2iz>
 800200a:	ea00 0408 	and.w	r4, r0, r8
 800200e:	f647 6288 	movw	r2, #32392	; 0x7e88
 8002012:	f8dd c004 	ldr.w	ip, [sp, #4]
 8002016:	f647 5ec8 	movw	lr, #32200	; 0x7dc8
 800201a:	9004      	str	r0, [sp, #16]
 800201c:	eebf da00 	vmov.f32	s26, #240	; 0xbf800000 -1.0
 8002020:	eb0a 0104 	add.w	r1, sl, r4
 8002024:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002028:	f6c0 0e00 	movt	lr, #2048	; 0x800
 800202c:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 8002030:	ee02 ca10 	vmov	s4, ip
 8002034:	f001 013f 	and.w	r1, r1, #63	; 0x3f
 8002038:	5c51      	ldrb	r1, [r2, r1]
 800203a:	9a02      	ldr	r2, [sp, #8]
 800203c:	eb0e 1501 	add.w	r5, lr, r1, lsl #4
 8002040:	f10c 0101 	add.w	r1, ip, #1
 8002044:	4011      	ands	r1, r2
 8002046:	f856 2021 	ldr.w	r2, [r6, r1, lsl #2]
 800204a:	ea0b 0109 	and.w	r1, fp, r9
 800204e:	46d9      	mov	r9, fp
 8002050:	ee05 9a10 	vmov	s10, r9
 8002054:	1853      	adds	r3, r2, r1
 8002056:	4693      	mov	fp, r2
 8002058:	1c42      	adds	r2, r0, #1
 800205a:	f647 6088 	movw	r0, #32392	; 0x7e88
 800205e:	f856 3023 	ldr.w	r3, [r6, r3, lsl #2]
 8002062:	ea08 0802 	and.w	r8, r8, r2
 8002066:	f6c0 0000 	movt	r0, #2048	; 0x800
 800206a:	eb03 0208 	add.w	r2, r3, r8
 800206e:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 8002072:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 8002076:	5c82      	ldrb	r2, [r0, r2]
 8002078:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 800207c:	edd2 3a00 	vldr	s7, [r2]
 8002080:	ed92 7a01 	vldr	s14, [r2, #4]
 8002084:	ed92 1a02 	vldr	s2, [r2, #8]
 8002088:	191a      	adds	r2, r3, r4
 800208a:	4603      	mov	r3, r0
 800208c:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 8002090:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 8002094:	5c82      	ldrb	r2, [r0, r2]
 8002096:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 800209a:	edd2 5a00 	vldr	s11, [r2]
 800209e:	ed92 4a01 	vldr	s8, [r2, #4]
 80020a2:	ed92 3a02 	vldr	s6, [r2, #8]
 80020a6:	eb0a 0208 	add.w	r2, sl, r8
 80020aa:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 80020ae:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 80020b2:	5c82      	ldrb	r2, [r0, r2]
 80020b4:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 80020b8:	edd2 6a00 	vldr	s13, [r2]
 80020bc:	edd2 1a01 	vldr	s3, [r2, #4]
 80020c0:	ed92 6a02 	vldr	s12, [r2, #8]
 80020c4:	9a03      	ldr	r2, [sp, #12]
 80020c6:	eeb8 5ac5 	vcvt.f32.s32	s10, s10
 80020ca:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
 80020ce:	ee3a 5a45 	vsub.f32	s10, s20, s10
 80020d2:	ee39 2a42 	vsub.f32	s4, s18, s4
 80020d6:	ed95 9a02 	vldr	s18, [r5, #8]
 80020da:	ee65 2a07 	vmul.f32	s5, s10, s14
 80020de:	ed95 7a01 	vldr	s14, [r5, #4]
 80020e2:	ee35 aa0d 	vadd.f32	s20, s10, s26
 80020e6:	ee25 4a04 	vmul.f32	s8, s10, s8
 80020ea:	4411      	add	r1, r2
 80020ec:	ee6a 1a21 	vmul.f32	s3, s20, s3
 80020f0:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 80020f4:	ee42 1a26 	vmla.f32	s3, s4, s13
 80020f8:	eb01 0208 	add.w	r2, r1, r8
 80020fc:	4421      	add	r1, r4
 80020fe:	ee2a 7a07 	vmul.f32	s14, s20, s14
 8002102:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 8002106:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 800210a:	f001 013f 	and.w	r1, r1, #63	; 0x3f
 800210e:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 8002112:	5c41      	ldrb	r1, [r0, r1]
 8002114:	5c82      	ldrb	r2, [r0, r2]
 8002116:	9805      	ldr	r0, [sp, #20]
 8002118:	eb0e 1101 	add.w	r1, lr, r1, lsl #4
 800211c:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 8002120:	ed91 0a01 	vldr	s0, [r1, #4]
 8002124:	ed91 ba00 	vldr	s22, [r1]
 8002128:	ed91 ca02 	vldr	s24, [r1, #8]
 800212c:	eb0b 0100 	add.w	r1, fp, r0
 8002130:	edd2 0a01 	vldr	s1, [r2, #4]
 8002134:	edd2 7a00 	vldr	s15, [r2]
 8002138:	edd2 4a02 	vldr	s9, [r2, #8]
 800213c:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 8002140:	ee65 0a20 	vmul.f32	s1, s10, s1
 8002144:	ee25 0a00 	vmul.f32	s0, s10, s0
 8002148:	190a      	adds	r2, r1, r4
 800214a:	4441      	add	r1, r8
 800214c:	ee42 0a27 	vmla.f32	s1, s4, s15
 8002150:	edd5 7a00 	vldr	s15, [r5]
 8002154:	ee02 0a0b 	vmla.f32	s0, s4, s22
 8002158:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 800215c:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 8002160:	ee02 7a27 	vmla.f32	s14, s4, s15
 8002164:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 8002168:	ee72 7a0d 	vadd.f32	s15, s4, s26
 800216c:	f001 013f 	and.w	r1, r1, #63	; 0x3f
 8002170:	5c9a      	ldrb	r2, [r3, r2]
 8002172:	5c59      	ldrb	r1, [r3, r1]
 8002174:	ee47 2aa3 	vmla.f32	s5, s15, s7
 8002178:	ee07 4aa5 	vmla.f32	s8, s15, s11
 800217c:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 8002180:	eb0e 1001 	add.w	r0, lr, r1, lsl #4
 8002184:	edd2 3a01 	vldr	s7, [r2, #4]
 8002188:	edd2 5a00 	vldr	s11, [r2]
 800218c:	ed90 ba01 	vldr	s22, [r0, #4]
 8002190:	ed90 ea02 	vldr	s28, [r0, #8]
 8002194:	edd2 6a02 	vldr	s13, [r2, #8]
 8002198:	ee6a 3a23 	vmul.f32	s7, s20, s7
 800219c:	ee2a aa0b 	vmul.f32	s20, s20, s22
 80021a0:	ee47 3aa5 	vmla.f32	s7, s15, s11
 80021a4:	edd0 5a00 	vldr	s11, [r0]
 80021a8:	9804      	ldr	r0, [sp, #16]
 80021aa:	ee0b 0a10 	vmov	s22, r0
 80021ae:	ee07 aaa5 	vmla.f32	s20, s15, s11
 80021b2:	eefa 7a0e 	vmov.f32	s15, #174	; 0xc1700000 -15.0
 80021b6:	eef1 5a08 	vmov.f32	s11, #24	; 0x40c00000  6.0
 80021ba:	eeb8 bacb 	vcvt.f32.s32	s22, s22
 80021be:	ee38 8a4b 	vsub.f32	s16, s16, s22
 80021c2:	ee38 ba0d 	vadd.f32	s22, s16, s26
 80021c6:	ee08 7a09 	vmla.f32	s14, s16, s18
 80021ca:	eeb0 9a67 	vmov.f32	s18, s15
 80021ce:	ee08 0a0c 	vmla.f32	s0, s16, s24
 80021d2:	ee08 4a03 	vmla.f32	s8, s16, s6
 80021d6:	ee48 3a26 	vmla.f32	s7, s16, s13
 80021da:	ee4b 0a24 	vmla.f32	s1, s22, s9
 80021de:	eef2 4a04 	vmov.f32	s9, #36	; 0x41200000  10.0
 80021e2:	ee08 9a25 	vmla.f32	s18, s16, s11
 80021e6:	ee4b 1a06 	vmla.f32	s3, s22, s12
 80021ea:	eeb0 6a67 	vmov.f32	s12, s15
 80021ee:	ee4b 2a01 	vmla.f32	s5, s22, s2
 80021f2:	ee0b aa0e 	vmla.f32	s20, s22, s28
 80021f6:	ee42 7a25 	vmla.f32	s15, s4, s11
 80021fa:	eeb0 ca64 	vmov.f32	s24, s9
 80021fe:	ee05 6a25 	vmla.f32	s12, s10, s11
 8002202:	ee08 ca09 	vmla.f32	s24, s16, s18
 8002206:	ee28 9a0c 	vmul.f32	s18, s16, s24
 800220a:	eeb0 ca64 	vmov.f32	s24, s9
 800220e:	ee42 4a27 	vmla.f32	s9, s4, s15
 8002212:	ee05 ca06 	vmla.f32	s24, s10, s12
 8002216:	ee28 9a09 	vmul.f32	s18, s16, s18
 800221a:	ee25 1a0c 	vmul.f32	s2, s10, s24
 800221e:	ee30 6ac0 	vsub.f32	s12, s1, s0
 8002222:	ee71 0ac7 	vsub.f32	s1, s3, s14
 8002226:	ee72 1ac4 	vsub.f32	s3, s5, s8
 800222a:	ee7a 2a63 	vsub.f32	s5, s20, s7
 800222e:	ee28 3a09 	vmul.f32	s6, s16, s18
 8002232:	ee25 1a01 	vmul.f32	s2, s10, s2
 8002236:	ee03 0a06 	vmla.f32	s0, s6, s12
 800223a:	ee03 7a20 	vmla.f32	s14, s6, s1
 800223e:	ee03 4a21 	vmla.f32	s8, s6, s3
 8002242:	ee43 3a22 	vmla.f32	s7, s6, s5
 8002246:	ee22 3a24 	vmul.f32	s6, s4, s9
 800224a:	ee25 1a01 	vmul.f32	s2, s10, s2
 800224e:	ee37 5a40 	vsub.f32	s10, s14, s0
 8002252:	ee33 6ac4 	vsub.f32	s12, s7, s8
 8002256:	ee22 3a03 	vmul.f32	s6, s4, s6
 800225a:	ee01 0a05 	vmla.f32	s0, s2, s10
 800225e:	ee01 4a06 	vmla.f32	s8, s2, s12
 8002262:	ee22 1a03 	vmul.f32	s2, s4, s6
 8002266:	ee34 2a40 	vsub.f32	s4, s8, s0
 800226a:	ee01 0a02 	vmla.f32	s0, s2, s4
 800226e:	b006      	add	sp, #24
 8002270:	ecbd 8b0e 	vpop	{d8-d14}
 8002274:	b001      	add	sp, #4
 8002276:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800227a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800227c <verify_benchmark>:
 800227c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002280:	4770      	bx	lr

08002282 <initialise_benchmark>:
 8002282:	4770      	bx	lr
 8002284:	0000      	movs	r0, r0
	...

08002288 <benchmark>:
 8002288:	b5f0      	push	{r4, r5, r6, r7, lr}
 800228a:	af03      	add	r7, sp, #12
 800228c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002290:	b081      	sub	sp, #4
 8002292:	ed2d 8b04 	vpush	{d8-d9}
 8002296:	b082      	sub	sp, #8
 8002298:	ed9f 0b33 	vldr	d0, [pc, #204]	; 8002368 <benchmark+0xe0>
 800229c:	f647 4b38 	movw	fp, #31800	; 0x7c38
 80022a0:	2400      	movs	r4, #0
 80022a2:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
 80022a6:	2000      	movs	r0, #0
 80022a8:	f6c0 0b00 	movt	fp, #2048	; 0x800
 80022ac:	ec59 8b10 	vmov	r8, r9, d0
 80022b0:	ed9f 0b2f 	vldr	d0, [pc, #188]	; 8002370 <benchmark+0xe8>
 80022b4:	ec56 5b10 	vmov	r5, r6, d0
 80022b8:	ee00 0a10 	vmov	s0, r0
 80022bc:	9000      	str	r0, [sp, #0]
 80022be:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 80022c2:	ee10 0a10 	vmov	r0, s0
 80022c6:	f7fe f8ff 	bl	80004c8 <__aeabi_f2d>
 80022ca:	4642      	mov	r2, r8
 80022cc:	464b      	mov	r3, r9
 80022ce:	f7fe f953 	bl	8000578 <__aeabi_dmul>
 80022d2:	462a      	mov	r2, r5
 80022d4:	4633      	mov	r3, r6
 80022d6:	f7fd ff99 	bl	800020c <__adddf3>
 80022da:	f7fe fc0f 	bl	8000afc <__aeabi_d2f>
 80022de:	f04f 0a00 	mov.w	sl, #0
 80022e2:	ee09 0a10 	vmov	s18, r0
 80022e6:	f8cd b004 	str.w	fp, [sp, #4]
 80022ea:	ee00 aa10 	vmov	s0, sl
 80022ee:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 80022f2:	ee10 0a10 	vmov	r0, s0
 80022f6:	f7fe f8e7 	bl	80004c8 <__aeabi_f2d>
 80022fa:	4642      	mov	r2, r8
 80022fc:	464b      	mov	r3, r9
 80022fe:	f7fe f93b 	bl	8000578 <__aeabi_dmul>
 8002302:	462a      	mov	r2, r5
 8002304:	4633      	mov	r3, r6
 8002306:	f7fd ff81 	bl	800020c <__adddf3>
 800230a:	f7fe fbf7 	bl	8000afc <__aeabi_d2f>
 800230e:	ee00 0a10 	vmov	s0, r0
 8002312:	eef0 0a49 	vmov.f32	s1, s18
 8002316:	eeb0 1a48 	vmov.f32	s2, s16
 800231a:	2000      	movs	r0, #0
 800231c:	2100      	movs	r1, #0
 800231e:	2200      	movs	r2, #0
 8002320:	f7ff fe2b 	bl	8001f7a <stb_perlin_noise3>
 8002324:	ed9b 1a00 	vldr	s2, [fp]
 8002328:	f10a 0a01 	add.w	sl, sl, #1
 800232c:	f10b 0b04 	add.w	fp, fp, #4
 8002330:	eeb4 0ac1 	vcmpe.f32	s0, s2
 8002334:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002338:	bf18      	it	ne
 800233a:	2401      	movne	r4, #1
 800233c:	f1ba 0f0a 	cmp.w	sl, #10
 8002340:	d1d3      	bne.n	80022ea <benchmark+0x62>
 8002342:	9800      	ldr	r0, [sp, #0]
 8002344:	f8dd b004 	ldr.w	fp, [sp, #4]
 8002348:	3001      	adds	r0, #1
 800234a:	f10b 0b28 	add.w	fp, fp, #40	; 0x28
 800234e:	280a      	cmp	r0, #10
 8002350:	d1b2      	bne.n	80022b8 <benchmark+0x30>
 8002352:	4620      	mov	r0, r4
 8002354:	b002      	add	sp, #8
 8002356:	ecbd 8b04 	vpop	{d8-d9}
 800235a:	b001      	add	sp, #4
 800235c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002360:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002362:	bf00      	nop
 8002364:	bf00      	nop
 8002366:	bf00      	nop
 8002368:	9999999a 	.word	0x9999999a
 800236c:	3fb99999 	.word	0x3fb99999
 8002370:	00000000 	.word	0x00000000
 8002374:	40140000 	.word	0x40140000

08002378 <__io_putchar>:
 8002378:	b580      	push	{r7, lr}
 800237a:	466f      	mov	r7, sp
 800237c:	b082      	sub	sp, #8
 800237e:	9001      	str	r0, [sp, #4]
 8002380:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002384:	a901      	add	r1, sp, #4
 8002386:	2201      	movs	r2, #1
 8002388:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800238c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002390:	f7ff fd05 	bl	8001d9e <HAL_UART_Transmit>
 8002394:	9801      	ldr	r0, [sp, #4]
 8002396:	b002      	add	sp, #8
 8002398:	bd80      	pop	{r7, pc}

0800239a <main>:
 800239a:	b5b0      	push	{r4, r5, r7, lr}
 800239c:	af02      	add	r7, sp, #8
 800239e:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80023a2:	f643 0000 	movw	r0, #14336	; 0x3800
 80023a6:	220c      	movs	r2, #12
 80023a8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023ac:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80023b0:	6008      	str	r0, [r1, #0]
 80023b2:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80023b6:	6048      	str	r0, [r1, #4]
 80023b8:	2000      	movs	r0, #0
 80023ba:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80023be:	6108      	str	r0, [r1, #16]
 80023c0:	6248      	str	r0, [r1, #36]	; 0x24
 80023c2:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80023c6:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80023ca:	2000      	movs	r0, #0
 80023cc:	f7ff fd7c 	bl	8001ec8 <BSP_COM_Init>
 80023d0:	f7ff ff57 	bl	8002282 <initialise_benchmark>
 80023d4:	f647 7030 	movw	r0, #32560	; 0x7f30
 80023d8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023dc:	f000 f9d0 	bl	8002780 <printf>
 80023e0:	f647 70dd 	movw	r0, #32733	; 0x7fdd
 80023e4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023e8:	f000 fa2c 	bl	8002844 <puts>
 80023ec:	f7fe fede 	bl	80011ac <HAL_Init>
 80023f0:	f7fe fef4 	bl	80011dc <HAL_GetTick>
 80023f4:	4604      	mov	r4, r0
 80023f6:	f7ff ff47 	bl	8002288 <benchmark>
 80023fa:	4605      	mov	r5, r0
 80023fc:	f7fe feee 	bl	80011dc <HAL_GetTick>
 8002400:	1b04      	subs	r4, r0, r4
 8002402:	4628      	mov	r0, r5
 8002404:	f7ff ff3a 	bl	800227c <verify_benchmark>
 8002408:	1c41      	adds	r1, r0, #1
 800240a:	d006      	beq.n	800241a <main+0x80>
 800240c:	2801      	cmp	r0, #1
 800240e:	d109      	bne.n	8002424 <main+0x8a>
 8002410:	f647 7049 	movw	r0, #32585	; 0x7f49
 8002414:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002418:	e008      	b.n	800242c <main+0x92>
 800241a:	f647 706d 	movw	r0, #32621	; 0x7f6d
 800241e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002422:	e003      	b.n	800242c <main+0x92>
 8002424:	f647 70a2 	movw	r0, #32674	; 0x7fa2
 8002428:	f6c0 0000 	movt	r0, #2048	; 0x800
 800242c:	4621      	mov	r1, r4
 800242e:	f000 f9a7 	bl	8002780 <printf>
 8002432:	2000      	movs	r0, #0
 8002434:	bdb0      	pop	{r4, r5, r7, pc}

08002436 <SysTick_Handler>:
 8002436:	b580      	push	{r7, lr}
 8002438:	466f      	mov	r7, sp
 800243a:	f7fe fec7 	bl	80011cc <HAL_IncTick>
 800243e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002442:	f7fe bf21 	b.w	8001288 <HAL_SYSTICK_IRQHandler>

08002446 <_read>:
 8002446:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002448:	af03      	add	r7, sp, #12
 800244a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800244e:	4614      	mov	r4, r2
 8002450:	460d      	mov	r5, r1
 8002452:	2c01      	cmp	r4, #1
 8002454:	db06      	blt.n	8002464 <_read+0x1e>
 8002456:	4626      	mov	r6, r4
 8002458:	f3af 8000 	nop.w
 800245c:	f805 0b01 	strb.w	r0, [r5], #1
 8002460:	3e01      	subs	r6, #1
 8002462:	d1f9      	bne.n	8002458 <_read+0x12>
 8002464:	4620      	mov	r0, r4
 8002466:	f85d bb04 	ldr.w	fp, [sp], #4
 800246a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800246c <_write>:
 800246c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800246e:	af03      	add	r7, sp, #12
 8002470:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002474:	4614      	mov	r4, r2
 8002476:	460d      	mov	r5, r1
 8002478:	2c01      	cmp	r4, #1
 800247a:	db06      	blt.n	800248a <_write+0x1e>
 800247c:	4626      	mov	r6, r4
 800247e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002482:	f7ff ff79 	bl	8002378 <__io_putchar>
 8002486:	3e01      	subs	r6, #1
 8002488:	d1f9      	bne.n	800247e <_write+0x12>
 800248a:	4620      	mov	r0, r4
 800248c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002490:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002492 <_sbrk>:
 8002492:	f640 2268 	movw	r2, #2664	; 0xa68
 8002496:	4601      	mov	r1, r0
 8002498:	466b      	mov	r3, sp
 800249a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800249e:	6810      	ldr	r0, [r2, #0]
 80024a0:	2800      	cmp	r0, #0
 80024a2:	bf02      	ittt	eq
 80024a4:	f640 3010 	movweq	r0, #2832	; 0xb10
 80024a8:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024ac:	6010      	streq	r0, [r2, #0]
 80024ae:	4401      	add	r1, r0
 80024b0:	4299      	cmp	r1, r3
 80024b2:	bf9c      	itt	ls
 80024b4:	6011      	strls	r1, [r2, #0]
 80024b6:	4770      	bxls	lr
 80024b8:	b580      	push	{r7, lr}
 80024ba:	466f      	mov	r7, sp
 80024bc:	f000 f8ec 	bl	8002698 <__errno>
 80024c0:	210c      	movs	r1, #12
 80024c2:	6001      	str	r1, [r0, #0]
 80024c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024c8:	bd80      	pop	{r7, pc}

080024ca <_close>:
 80024ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80024ce:	4770      	bx	lr

080024d0 <_fstat>:
 80024d0:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80024d4:	6048      	str	r0, [r1, #4]
 80024d6:	2000      	movs	r0, #0
 80024d8:	4770      	bx	lr

080024da <_isatty>:
 80024da:	2001      	movs	r0, #1
 80024dc:	4770      	bx	lr

080024de <_lseek>:
 80024de:	2000      	movs	r0, #0
 80024e0:	4770      	bx	lr

080024e2 <SystemInit>:
 80024e2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80024e6:	f04f 0c00 	mov.w	ip, #0
 80024ea:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80024ee:	6801      	ldr	r1, [r0, #0]
 80024f0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80024f4:	6001      	str	r1, [r0, #0]
 80024f6:	f241 0100 	movw	r1, #4096	; 0x1000
 80024fa:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80024fe:	680a      	ldr	r2, [r1, #0]
 8002500:	f042 0201 	orr.w	r2, r2, #1
 8002504:	600a      	str	r2, [r1, #0]
 8002506:	f8c1 c008 	str.w	ip, [r1, #8]
 800250a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800250e:	680b      	ldr	r3, [r1, #0]
 8002510:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002514:	401a      	ands	r2, r3
 8002516:	600a      	str	r2, [r1, #0]
 8002518:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800251c:	60ca      	str	r2, [r1, #12]
 800251e:	680a      	ldr	r2, [r1, #0]
 8002520:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002524:	600a      	str	r2, [r1, #0]
 8002526:	f8c1 c018 	str.w	ip, [r1, #24]
 800252a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800252e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002532:	4770      	bx	lr

08002534 <Reset_Handler>:
 8002534:	f8df d034 	ldr.w	sp, [pc, #52]	; 800256c <LoopForever+0x2>
 8002538:	2100      	movs	r1, #0
 800253a:	e003      	b.n	8002544 <LoopCopyDataInit>

0800253c <CopyDataInit>:
 800253c:	4b0c      	ldr	r3, [pc, #48]	; (8002570 <LoopForever+0x6>)
 800253e:	585b      	ldr	r3, [r3, r1]
 8002540:	5043      	str	r3, [r0, r1]
 8002542:	3104      	adds	r1, #4

08002544 <LoopCopyDataInit>:
 8002544:	480b      	ldr	r0, [pc, #44]	; (8002574 <LoopForever+0xa>)
 8002546:	4b0c      	ldr	r3, [pc, #48]	; (8002578 <LoopForever+0xe>)
 8002548:	1842      	adds	r2, r0, r1
 800254a:	429a      	cmp	r2, r3
 800254c:	d3f6      	bcc.n	800253c <CopyDataInit>
 800254e:	4a0b      	ldr	r2, [pc, #44]	; (800257c <LoopForever+0x12>)
 8002550:	e002      	b.n	8002558 <LoopFillZerobss>

08002552 <FillZerobss>:
 8002552:	2300      	movs	r3, #0
 8002554:	f842 3b04 	str.w	r3, [r2], #4

08002558 <LoopFillZerobss>:
 8002558:	4b09      	ldr	r3, [pc, #36]	; (8002580 <LoopForever+0x16>)
 800255a:	429a      	cmp	r2, r3
 800255c:	d3f9      	bcc.n	8002552 <FillZerobss>
 800255e:	f7ff ffc0 	bl	80024e2 <SystemInit>
 8002562:	f000 f89f 	bl	80026a4 <__libc_init_array>
 8002566:	f7ff ff18 	bl	800239a <main>

0800256a <LoopForever>:
 800256a:	e7fe      	b.n	800256a <LoopForever>
 800256c:	20018000 	.word	0x20018000
 8002570:	08008288 	.word	0x08008288
 8002574:	20000000 	.word	0x20000000
 8002578:	200009c8 	.word	0x200009c8
 800257c:	200009c8 	.word	0x200009c8
 8002580:	20000b10 	.word	0x20000b10

08002584 <ADC1_2_IRQHandler>:
 8002584:	e7fe      	b.n	8002584 <ADC1_2_IRQHandler>
	...

08002588 <floor>:
 8002588:	ec51 0b10 	vmov	r0, r1, d0
 800258c:	f3c1 530a 	ubfx	r3, r1, #20, #11
 8002590:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002594:	f2a3 35ff 	subw	r5, r3, #1023	; 0x3ff
 8002598:	2d13      	cmp	r5, #19
 800259a:	460c      	mov	r4, r1
 800259c:	460f      	mov	r7, r1
 800259e:	ee10 6a10 	vmov	r6, s0
 80025a2:	dc1d      	bgt.n	80025e0 <floor+0x58>
 80025a4:	2d00      	cmp	r5, #0
 80025a6:	db3d      	blt.n	8002624 <floor+0x9c>
 80025a8:	4b39      	ldr	r3, [pc, #228]	; (8002690 <floor+0x108>)
 80025aa:	fa43 f805 	asr.w	r8, r3, r5
 80025ae:	ea01 0308 	and.w	r3, r1, r8
 80025b2:	4303      	orrs	r3, r0
 80025b4:	d019      	beq.n	80025ea <floor+0x62>
 80025b6:	a334      	add	r3, pc, #208	; (adr r3, 8002688 <floor+0x100>)
 80025b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80025bc:	f7fd fe26 	bl	800020c <__adddf3>
 80025c0:	2200      	movs	r2, #0
 80025c2:	2300      	movs	r3, #0
 80025c4:	f7fe fa68 	bl	8000a98 <__aeabi_dcmpgt>
 80025c8:	b3d0      	cbz	r0, 8002640 <floor+0xb8>
 80025ca:	2c00      	cmp	r4, #0
 80025cc:	da04      	bge.n	80025d8 <floor+0x50>
 80025ce:	f44f 1380 	mov.w	r3, #1048576	; 0x100000
 80025d2:	fa43 f505 	asr.w	r5, r3, r5
 80025d6:	442f      	add	r7, r5
 80025d8:	ea27 0408 	bic.w	r4, r7, r8
 80025dc:	2600      	movs	r6, #0
 80025de:	e02f      	b.n	8002640 <floor+0xb8>
 80025e0:	2d33      	cmp	r5, #51	; 0x33
 80025e2:	dd06      	ble.n	80025f2 <floor+0x6a>
 80025e4:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 80025e8:	d030      	beq.n	800264c <floor+0xc4>
 80025ea:	ec41 0b10 	vmov	d0, r0, r1
 80025ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80025f2:	f2a3 4313 	subw	r3, r3, #1043	; 0x413
 80025f6:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 80025fa:	fa28 f803 	lsr.w	r8, r8, r3
 80025fe:	ea18 0f00 	tst.w	r8, r0
 8002602:	d0f2      	beq.n	80025ea <floor+0x62>
 8002604:	a320      	add	r3, pc, #128	; (adr r3, 8002688 <floor+0x100>)
 8002606:	e9d3 2300 	ldrd	r2, r3, [r3]
 800260a:	f7fd fdff 	bl	800020c <__adddf3>
 800260e:	2200      	movs	r2, #0
 8002610:	2300      	movs	r3, #0
 8002612:	f7fe fa41 	bl	8000a98 <__aeabi_dcmpgt>
 8002616:	b198      	cbz	r0, 8002640 <floor+0xb8>
 8002618:	2c00      	cmp	r4, #0
 800261a:	db28      	blt.n	800266e <floor+0xe6>
 800261c:	ea26 0608 	bic.w	r6, r6, r8
 8002620:	463c      	mov	r4, r7
 8002622:	e00d      	b.n	8002640 <floor+0xb8>
 8002624:	a318      	add	r3, pc, #96	; (adr r3, 8002688 <floor+0x100>)
 8002626:	e9d3 2300 	ldrd	r2, r3, [r3]
 800262a:	f7fd fdef 	bl	800020c <__adddf3>
 800262e:	2200      	movs	r2, #0
 8002630:	2300      	movs	r3, #0
 8002632:	f7fe fa31 	bl	8000a98 <__aeabi_dcmpgt>
 8002636:	b118      	cbz	r0, 8002640 <floor+0xb8>
 8002638:	2c00      	cmp	r4, #0
 800263a:	db0f      	blt.n	800265c <floor+0xd4>
 800263c:	2600      	movs	r6, #0
 800263e:	4634      	mov	r4, r6
 8002640:	4623      	mov	r3, r4
 8002642:	4632      	mov	r2, r6
 8002644:	ec43 2b10 	vmov	d0, r2, r3
 8002648:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800264c:	ee10 2a10 	vmov	r2, s0
 8002650:	460b      	mov	r3, r1
 8002652:	f7fd fddb 	bl	800020c <__adddf3>
 8002656:	ec41 0b10 	vmov	d0, r0, r1
 800265a:	e7c8      	b.n	80025ee <floor+0x66>
 800265c:	f024 4300 	bic.w	r3, r4, #2147483648	; 0x80000000
 8002660:	4a0c      	ldr	r2, [pc, #48]	; (8002694 <floor+0x10c>)
 8002662:	431e      	orrs	r6, r3
 8002664:	2e00      	cmp	r6, #0
 8002666:	bf18      	it	ne
 8002668:	4614      	movne	r4, r2
 800266a:	2600      	movs	r6, #0
 800266c:	e7e8      	b.n	8002640 <floor+0xb8>
 800266e:	2d14      	cmp	r5, #20
 8002670:	d008      	beq.n	8002684 <floor+0xfc>
 8002672:	2301      	movs	r3, #1
 8002674:	f1c5 0534 	rsb	r5, r5, #52	; 0x34
 8002678:	fa03 f505 	lsl.w	r5, r3, r5
 800267c:	19ae      	adds	r6, r5, r6
 800267e:	bf28      	it	cs
 8002680:	18ff      	addcs	r7, r7, r3
 8002682:	e7cb      	b.n	800261c <floor+0x94>
 8002684:	3701      	adds	r7, #1
 8002686:	e7c9      	b.n	800261c <floor+0x94>
 8002688:	8800759c 	.word	0x8800759c
 800268c:	7e37e43c 	.word	0x7e37e43c
 8002690:	000fffff 	.word	0x000fffff
 8002694:	bff00000 	.word	0xbff00000

08002698 <__errno>:
 8002698:	4b01      	ldr	r3, [pc, #4]	; (80026a0 <__errno+0x8>)
 800269a:	6818      	ldr	r0, [r3, #0]
 800269c:	4770      	bx	lr
 800269e:	bf00      	nop
 80026a0:	20000018 	.word	0x20000018

080026a4 <__libc_init_array>:
 80026a4:	b570      	push	{r4, r5, r6, lr}
 80026a6:	4e0d      	ldr	r6, [pc, #52]	; (80026dc <__libc_init_array+0x38>)
 80026a8:	4d0d      	ldr	r5, [pc, #52]	; (80026e0 <__libc_init_array+0x3c>)
 80026aa:	1b76      	subs	r6, r6, r5
 80026ac:	10b6      	asrs	r6, r6, #2
 80026ae:	d006      	beq.n	80026be <__libc_init_array+0x1a>
 80026b0:	2400      	movs	r4, #0
 80026b2:	3401      	adds	r4, #1
 80026b4:	f855 3b04 	ldr.w	r3, [r5], #4
 80026b8:	4798      	blx	r3
 80026ba:	42a6      	cmp	r6, r4
 80026bc:	d1f9      	bne.n	80026b2 <__libc_init_array+0xe>
 80026be:	4e09      	ldr	r6, [pc, #36]	; (80026e4 <__libc_init_array+0x40>)
 80026c0:	4d09      	ldr	r5, [pc, #36]	; (80026e8 <__libc_init_array+0x44>)
 80026c2:	1b76      	subs	r6, r6, r5
 80026c4:	f004 feaa 	bl	800741c <_init>
 80026c8:	10b6      	asrs	r6, r6, #2
 80026ca:	d006      	beq.n	80026da <__libc_init_array+0x36>
 80026cc:	2400      	movs	r4, #0
 80026ce:	3401      	adds	r4, #1
 80026d0:	f855 3b04 	ldr.w	r3, [r5], #4
 80026d4:	4798      	blx	r3
 80026d6:	42a6      	cmp	r6, r4
 80026d8:	d1f9      	bne.n	80026ce <__libc_init_array+0x2a>
 80026da:	bd70      	pop	{r4, r5, r6, pc}
 80026dc:	08008278 	.word	0x08008278
 80026e0:	08008278 	.word	0x08008278
 80026e4:	08008280 	.word	0x08008280
 80026e8:	08008278 	.word	0x08008278

080026ec <memset>:
 80026ec:	b4f0      	push	{r4, r5, r6, r7}
 80026ee:	0786      	lsls	r6, r0, #30
 80026f0:	d043      	beq.n	800277a <memset+0x8e>
 80026f2:	1e54      	subs	r4, r2, #1
 80026f4:	2a00      	cmp	r2, #0
 80026f6:	d03e      	beq.n	8002776 <memset+0x8a>
 80026f8:	b2ca      	uxtb	r2, r1
 80026fa:	4603      	mov	r3, r0
 80026fc:	e002      	b.n	8002704 <memset+0x18>
 80026fe:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002702:	d338      	bcc.n	8002776 <memset+0x8a>
 8002704:	f803 2b01 	strb.w	r2, [r3], #1
 8002708:	079d      	lsls	r5, r3, #30
 800270a:	d1f8      	bne.n	80026fe <memset+0x12>
 800270c:	2c03      	cmp	r4, #3
 800270e:	d92b      	bls.n	8002768 <memset+0x7c>
 8002710:	b2cd      	uxtb	r5, r1
 8002712:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002716:	2c0f      	cmp	r4, #15
 8002718:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800271c:	d916      	bls.n	800274c <memset+0x60>
 800271e:	f1a4 0710 	sub.w	r7, r4, #16
 8002722:	093f      	lsrs	r7, r7, #4
 8002724:	f103 0620 	add.w	r6, r3, #32
 8002728:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800272c:	f103 0210 	add.w	r2, r3, #16
 8002730:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002734:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002738:	3210      	adds	r2, #16
 800273a:	42b2      	cmp	r2, r6
 800273c:	d1f8      	bne.n	8002730 <memset+0x44>
 800273e:	f004 040f 	and.w	r4, r4, #15
 8002742:	3701      	adds	r7, #1
 8002744:	2c03      	cmp	r4, #3
 8002746:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800274a:	d90d      	bls.n	8002768 <memset+0x7c>
 800274c:	461e      	mov	r6, r3
 800274e:	4622      	mov	r2, r4
 8002750:	3a04      	subs	r2, #4
 8002752:	2a03      	cmp	r2, #3
 8002754:	f846 5b04 	str.w	r5, [r6], #4
 8002758:	d8fa      	bhi.n	8002750 <memset+0x64>
 800275a:	1f22      	subs	r2, r4, #4
 800275c:	f022 0203 	bic.w	r2, r2, #3
 8002760:	3204      	adds	r2, #4
 8002762:	4413      	add	r3, r2
 8002764:	f004 0403 	and.w	r4, r4, #3
 8002768:	b12c      	cbz	r4, 8002776 <memset+0x8a>
 800276a:	b2c9      	uxtb	r1, r1
 800276c:	441c      	add	r4, r3
 800276e:	f803 1b01 	strb.w	r1, [r3], #1
 8002772:	429c      	cmp	r4, r3
 8002774:	d1fb      	bne.n	800276e <memset+0x82>
 8002776:	bcf0      	pop	{r4, r5, r6, r7}
 8002778:	4770      	bx	lr
 800277a:	4614      	mov	r4, r2
 800277c:	4603      	mov	r3, r0
 800277e:	e7c5      	b.n	800270c <memset+0x20>

08002780 <printf>:
 8002780:	b40f      	push	{r0, r1, r2, r3}
 8002782:	b500      	push	{lr}
 8002784:	4907      	ldr	r1, [pc, #28]	; (80027a4 <printf+0x24>)
 8002786:	b083      	sub	sp, #12
 8002788:	ab04      	add	r3, sp, #16
 800278a:	6808      	ldr	r0, [r1, #0]
 800278c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002790:	6881      	ldr	r1, [r0, #8]
 8002792:	9301      	str	r3, [sp, #4]
 8002794:	f000 f860 	bl	8002858 <_vfprintf_r>
 8002798:	b003      	add	sp, #12
 800279a:	f85d eb04 	ldr.w	lr, [sp], #4
 800279e:	b004      	add	sp, #16
 80027a0:	4770      	bx	lr
 80027a2:	bf00      	nop
 80027a4:	20000018 	.word	0x20000018

080027a8 <_puts_r>:
 80027a8:	b570      	push	{r4, r5, r6, lr}
 80027aa:	4605      	mov	r5, r0
 80027ac:	b088      	sub	sp, #32
 80027ae:	4608      	mov	r0, r1
 80027b0:	460c      	mov	r4, r1
 80027b2:	f7fe fc25 	bl	8001000 <strlen>
 80027b6:	4a22      	ldr	r2, [pc, #136]	; (8002840 <_puts_r+0x98>)
 80027b8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80027ba:	9404      	str	r4, [sp, #16]
 80027bc:	2601      	movs	r6, #1
 80027be:	1c44      	adds	r4, r0, #1
 80027c0:	a904      	add	r1, sp, #16
 80027c2:	9206      	str	r2, [sp, #24]
 80027c4:	2202      	movs	r2, #2
 80027c6:	9403      	str	r4, [sp, #12]
 80027c8:	9005      	str	r0, [sp, #20]
 80027ca:	68ac      	ldr	r4, [r5, #8]
 80027cc:	9607      	str	r6, [sp, #28]
 80027ce:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80027d2:	b31b      	cbz	r3, 800281c <_puts_r+0x74>
 80027d4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80027d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80027da:	07ce      	lsls	r6, r1, #31
 80027dc:	b29a      	uxth	r2, r3
 80027de:	d401      	bmi.n	80027e4 <_puts_r+0x3c>
 80027e0:	0590      	lsls	r0, r2, #22
 80027e2:	d525      	bpl.n	8002830 <_puts_r+0x88>
 80027e4:	0491      	lsls	r1, r2, #18
 80027e6:	d406      	bmi.n	80027f6 <_puts_r+0x4e>
 80027e8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80027ea:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80027ee:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80027f2:	81a3      	strh	r3, [r4, #12]
 80027f4:	6662      	str	r2, [r4, #100]	; 0x64
 80027f6:	4628      	mov	r0, r5
 80027f8:	aa01      	add	r2, sp, #4
 80027fa:	4621      	mov	r1, r4
 80027fc:	f003 f860 	bl	80058c0 <__sfvwrite_r>
 8002800:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002802:	2800      	cmp	r0, #0
 8002804:	bf0c      	ite	eq
 8002806:	250a      	moveq	r5, #10
 8002808:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800280c:	07da      	lsls	r2, r3, #31
 800280e:	d402      	bmi.n	8002816 <_puts_r+0x6e>
 8002810:	89a3      	ldrh	r3, [r4, #12]
 8002812:	059b      	lsls	r3, r3, #22
 8002814:	d506      	bpl.n	8002824 <_puts_r+0x7c>
 8002816:	4628      	mov	r0, r5
 8002818:	b008      	add	sp, #32
 800281a:	bd70      	pop	{r4, r5, r6, pc}
 800281c:	4628      	mov	r0, r5
 800281e:	f002 feb9 	bl	8005594 <__sinit>
 8002822:	e7d7      	b.n	80027d4 <_puts_r+0x2c>
 8002824:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002826:	f003 fa07 	bl	8005c38 <__retarget_lock_release_recursive>
 800282a:	4628      	mov	r0, r5
 800282c:	b008      	add	sp, #32
 800282e:	bd70      	pop	{r4, r5, r6, pc}
 8002830:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002832:	f003 f9ff 	bl	8005c34 <__retarget_lock_acquire_recursive>
 8002836:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800283a:	b29a      	uxth	r2, r3
 800283c:	e7d2      	b.n	80027e4 <_puts_r+0x3c>
 800283e:	bf00      	nop
 8002840:	08007fe4 	.word	0x08007fe4

08002844 <puts>:
 8002844:	4b02      	ldr	r3, [pc, #8]	; (8002850 <puts+0xc>)
 8002846:	4601      	mov	r1, r0
 8002848:	6818      	ldr	r0, [r3, #0]
 800284a:	f7ff bfad 	b.w	80027a8 <_puts_r>
 800284e:	bf00      	nop
 8002850:	20000018 	.word	0x20000018
 8002854:	00000000 	.word	0x00000000

08002858 <_vfprintf_r>:
 8002858:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800285c:	b0d7      	sub	sp, #348	; 0x15c
 800285e:	461c      	mov	r4, r3
 8002860:	4689      	mov	r9, r1
 8002862:	4617      	mov	r7, r2
 8002864:	4605      	mov	r5, r0
 8002866:	9003      	str	r0, [sp, #12]
 8002868:	f003 f9d2 	bl	8005c10 <_localeconv_r>
 800286c:	6803      	ldr	r3, [r0, #0]
 800286e:	9316      	str	r3, [sp, #88]	; 0x58
 8002870:	4618      	mov	r0, r3
 8002872:	f7fe fbc5 	bl	8001000 <strlen>
 8002876:	9408      	str	r4, [sp, #32]
 8002878:	9015      	str	r0, [sp, #84]	; 0x54
 800287a:	b11d      	cbz	r5, 8002884 <_vfprintf_r+0x2c>
 800287c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800287e:	2b00      	cmp	r3, #0
 8002880:	f000 8107 	beq.w	8002a92 <_vfprintf_r+0x23a>
 8002884:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002888:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800288c:	07c8      	lsls	r0, r1, #31
 800288e:	b293      	uxth	r3, r2
 8002890:	d402      	bmi.n	8002898 <_vfprintf_r+0x40>
 8002892:	0599      	lsls	r1, r3, #22
 8002894:	f140 811f 	bpl.w	8002ad6 <_vfprintf_r+0x27e>
 8002898:	049e      	lsls	r6, r3, #18
 800289a:	d40a      	bmi.n	80028b2 <_vfprintf_r+0x5a>
 800289c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80028a0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80028a4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80028a8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80028ac:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80028b0:	b29b      	uxth	r3, r3
 80028b2:	071d      	lsls	r5, r3, #28
 80028b4:	f140 80b2 	bpl.w	8002a1c <_vfprintf_r+0x1c4>
 80028b8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80028bc:	2a00      	cmp	r2, #0
 80028be:	f000 80ad 	beq.w	8002a1c <_vfprintf_r+0x1c4>
 80028c2:	f003 021a 	and.w	r2, r3, #26
 80028c6:	2a0a      	cmp	r2, #10
 80028c8:	f000 80c9 	beq.w	8002a5e <_vfprintf_r+0x206>
 80028cc:	2300      	movs	r3, #0
 80028ce:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002ae8 <_vfprintf_r+0x290>
 80028d2:	9310      	str	r3, [sp, #64]	; 0x40
 80028d4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80028d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80028da:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80028de:	931b      	str	r3, [sp, #108]	; 0x6c
 80028e0:	9318      	str	r3, [sp, #96]	; 0x60
 80028e2:	9305      	str	r3, [sp, #20]
 80028e4:	ab2d      	add	r3, sp, #180	; 0xb4
 80028e6:	932a      	str	r3, [sp, #168]	; 0xa8
 80028e8:	469b      	mov	fp, r3
 80028ea:	783b      	ldrb	r3, [r7, #0]
 80028ec:	f8cd 901c 	str.w	r9, [sp, #28]
 80028f0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80028f4:	2b00      	cmp	r3, #0
 80028f6:	f000 8259 	beq.w	8002dac <_vfprintf_r+0x554>
 80028fa:	2b25      	cmp	r3, #37	; 0x25
 80028fc:	463c      	mov	r4, r7
 80028fe:	d102      	bne.n	8002906 <_vfprintf_r+0xae>
 8002900:	e01d      	b.n	800293e <_vfprintf_r+0xe6>
 8002902:	2b25      	cmp	r3, #37	; 0x25
 8002904:	d003      	beq.n	800290e <_vfprintf_r+0xb6>
 8002906:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800290a:	2b00      	cmp	r3, #0
 800290c:	d1f9      	bne.n	8002902 <_vfprintf_r+0xaa>
 800290e:	1be5      	subs	r5, r4, r7
 8002910:	b18d      	cbz	r5, 8002936 <_vfprintf_r+0xde>
 8002912:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002916:	3301      	adds	r3, #1
 8002918:	442a      	add	r2, r5
 800291a:	2b07      	cmp	r3, #7
 800291c:	f8cb 7000 	str.w	r7, [fp]
 8002920:	f8cb 5004 	str.w	r5, [fp, #4]
 8002924:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002928:	f300 80ca 	bgt.w	8002ac0 <_vfprintf_r+0x268>
 800292c:	f10b 0b08 	add.w	fp, fp, #8
 8002930:	9b05      	ldr	r3, [sp, #20]
 8002932:	442b      	add	r3, r5
 8002934:	9305      	str	r3, [sp, #20]
 8002936:	7823      	ldrb	r3, [r4, #0]
 8002938:	2b00      	cmp	r3, #0
 800293a:	f000 8237 	beq.w	8002dac <_vfprintf_r+0x554>
 800293e:	2300      	movs	r3, #0
 8002940:	7866      	ldrb	r6, [r4, #1]
 8002942:	9306      	str	r3, [sp, #24]
 8002944:	4698      	mov	r8, r3
 8002946:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800294a:	f104 0a01 	add.w	sl, r4, #1
 800294e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002952:	252b      	movs	r5, #43	; 0x2b
 8002954:	f10a 0a01 	add.w	sl, sl, #1
 8002958:	f1a6 0320 	sub.w	r3, r6, #32
 800295c:	2b5a      	cmp	r3, #90	; 0x5a
 800295e:	f200 842a 	bhi.w	80031b6 <_vfprintf_r+0x95e>
 8002962:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002966:	03aa      	.short	0x03aa
 8002968:	04280428 	.word	0x04280428
 800296c:	0428029c 	.word	0x0428029c
 8002970:	04280428 	.word	0x04280428
 8002974:	042802a7 	.word	0x042802a7
 8002978:	02c60428 	.word	0x02c60428
 800297c:	042802d2 	.word	0x042802d2
 8002980:	02dc02d7 	.word	0x02dc02d7
 8002984:	02f60428 	.word	0x02f60428
 8002988:	026d026d 	.word	0x026d026d
 800298c:	026d026d 	.word	0x026d026d
 8002990:	026d026d 	.word	0x026d026d
 8002994:	026d026d 	.word	0x026d026d
 8002998:	0428026d 	.word	0x0428026d
 800299c:	04280428 	.word	0x04280428
 80029a0:	04280428 	.word	0x04280428
 80029a4:	04280428 	.word	0x04280428
 80029a8:	042802fb 	.word	0x042802fb
 80029ac:	03f3033c 	.word	0x03f3033c
 80029b0:	02fb02fb 	.word	0x02fb02fb
 80029b4:	042802fb 	.word	0x042802fb
 80029b8:	04280428 	.word	0x04280428
 80029bc:	03ee0428 	.word	0x03ee0428
 80029c0:	04280428 	.word	0x04280428
 80029c4:	0428009a 	.word	0x0428009a
 80029c8:	04280428 	.word	0x04280428
 80029cc:	04280350 	.word	0x04280350
 80029d0:	04280379 	.word	0x04280379
 80029d4:	03900428 	.word	0x03900428
 80029d8:	04280428 	.word	0x04280428
 80029dc:	04280428 	.word	0x04280428
 80029e0:	04280428 	.word	0x04280428
 80029e4:	04280428 	.word	0x04280428
 80029e8:	042802fb 	.word	0x042802fb
 80029ec:	00c5033c 	.word	0x00c5033c
 80029f0:	02fb02fb 	.word	0x02fb02fb
 80029f4:	03d102fb 	.word	0x03d102fb
 80029f8:	007000c5 	.word	0x007000c5
 80029fc:	03b50428 	.word	0x03b50428
 8002a00:	03c20428 	.word	0x03c20428
 8002a04:	03de009c 	.word	0x03de009c
 8002a08:	04280070 	.word	0x04280070
 8002a0c:	00720350 	.word	0x00720350
 8002a10:	0428022c 	.word	0x0428022c
 8002a14:	027c0428 	.word	0x027c0428
 8002a18:	00720428 	.word	0x00720428
 8002a1c:	4649      	mov	r1, r9
 8002a1e:	9803      	ldr	r0, [sp, #12]
 8002a20:	f001 fc9a 	bl	8004358 <__swsetup_r>
 8002a24:	b1a0      	cbz	r0, 8002a50 <_vfprintf_r+0x1f8>
 8002a26:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002a2a:	07d8      	lsls	r0, r3, #31
 8002a2c:	d404      	bmi.n	8002a38 <_vfprintf_r+0x1e0>
 8002a2e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002a32:	0599      	lsls	r1, r3, #22
 8002a34:	f140 83b7 	bpl.w	80031a6 <_vfprintf_r+0x94e>
 8002a38:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002a3c:	9305      	str	r3, [sp, #20]
 8002a3e:	9805      	ldr	r0, [sp, #20]
 8002a40:	b057      	add	sp, #348	; 0x15c
 8002a42:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a46:	f048 0820 	orr.w	r8, r8, #32
 8002a4a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a4e:	e781      	b.n	8002954 <_vfprintf_r+0xfc>
 8002a50:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002a54:	f003 021a 	and.w	r2, r3, #26
 8002a58:	2a0a      	cmp	r2, #10
 8002a5a:	f47f af37 	bne.w	80028cc <_vfprintf_r+0x74>
 8002a5e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002a62:	2a00      	cmp	r2, #0
 8002a64:	f6ff af32 	blt.w	80028cc <_vfprintf_r+0x74>
 8002a68:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002a6c:	07d2      	lsls	r2, r2, #31
 8002a6e:	d405      	bmi.n	8002a7c <_vfprintf_r+0x224>
 8002a70:	059b      	lsls	r3, r3, #22
 8002a72:	d403      	bmi.n	8002a7c <_vfprintf_r+0x224>
 8002a74:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002a78:	f003 f8de 	bl	8005c38 <__retarget_lock_release_recursive>
 8002a7c:	4623      	mov	r3, r4
 8002a7e:	463a      	mov	r2, r7
 8002a80:	4649      	mov	r1, r9
 8002a82:	9803      	ldr	r0, [sp, #12]
 8002a84:	f001 fc26 	bl	80042d4 <__sbprintf>
 8002a88:	9005      	str	r0, [sp, #20]
 8002a8a:	9805      	ldr	r0, [sp, #20]
 8002a8c:	b057      	add	sp, #348	; 0x15c
 8002a8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a92:	9803      	ldr	r0, [sp, #12]
 8002a94:	f002 fd7e 	bl	8005594 <__sinit>
 8002a98:	e6f4      	b.n	8002884 <_vfprintf_r+0x2c>
 8002a9a:	f048 0810 	orr.w	r8, r8, #16
 8002a9e:	f018 0f20 	tst.w	r8, #32
 8002aa2:	f000 836c 	beq.w	800317e <_vfprintf_r+0x926>
 8002aa6:	9c08      	ldr	r4, [sp, #32]
 8002aa8:	3407      	adds	r4, #7
 8002aaa:	f024 0307 	bic.w	r3, r4, #7
 8002aae:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ab2:	f103 0208 	add.w	r2, r3, #8
 8002ab6:	9208      	str	r2, [sp, #32]
 8002ab8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002abc:	2200      	movs	r2, #0
 8002abe:	e18c      	b.n	8002dda <_vfprintf_r+0x582>
 8002ac0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ac2:	9907      	ldr	r1, [sp, #28]
 8002ac4:	9803      	ldr	r0, [sp, #12]
 8002ac6:	f004 f9f5 	bl	8006eb4 <__sprint_r>
 8002aca:	2800      	cmp	r0, #0
 8002acc:	f041 8376 	bne.w	80041bc <_vfprintf_r+0x1964>
 8002ad0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ad4:	e72c      	b.n	8002930 <_vfprintf_r+0xd8>
 8002ad6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002ada:	f003 f8ab 	bl	8005c34 <__retarget_lock_acquire_recursive>
 8002ade:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002ae2:	b293      	uxth	r3, r2
 8002ae4:	e6d8      	b.n	8002898 <_vfprintf_r+0x40>
 8002ae6:	bf00      	nop
	...
 8002af0:	4643      	mov	r3, r8
 8002af2:	069f      	lsls	r7, r3, #26
 8002af4:	f140 832f 	bpl.w	8003156 <_vfprintf_r+0x8fe>
 8002af8:	9c08      	ldr	r4, [sp, #32]
 8002afa:	3407      	adds	r4, #7
 8002afc:	f024 0407 	bic.w	r4, r4, #7
 8002b00:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002b04:	f104 0208 	add.w	r2, r4, #8
 8002b08:	9208      	str	r2, [sp, #32]
 8002b0a:	4604      	mov	r4, r0
 8002b0c:	460d      	mov	r5, r1
 8002b0e:	2800      	cmp	r0, #0
 8002b10:	f171 0200 	sbcs.w	r2, r1, #0
 8002b14:	da05      	bge.n	8002b22 <_vfprintf_r+0x2ca>
 8002b16:	222d      	movs	r2, #45	; 0x2d
 8002b18:	4264      	negs	r4, r4
 8002b1a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002b1e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002b22:	aa56      	add	r2, sp, #344	; 0x158
 8002b24:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b28:	9204      	str	r2, [sp, #16]
 8002b2a:	f000 84b2 	beq.w	8003492 <_vfprintf_r+0xc3a>
 8002b2e:	2201      	movs	r2, #1
 8002b30:	ea54 0105 	orrs.w	r1, r4, r5
 8002b34:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002b38:	f040 8159 	bne.w	8002dee <_vfprintf_r+0x596>
 8002b3c:	f1b9 0f00 	cmp.w	r9, #0
 8002b40:	f040 8619 	bne.w	8003776 <_vfprintf_r+0xf1e>
 8002b44:	2a00      	cmp	r2, #0
 8002b46:	f040 8508 	bne.w	800355a <_vfprintf_r+0xd02>
 8002b4a:	f013 0301 	ands.w	r3, r3, #1
 8002b4e:	af56      	add	r7, sp, #344	; 0x158
 8002b50:	9309      	str	r3, [sp, #36]	; 0x24
 8002b52:	d002      	beq.n	8002b5a <_vfprintf_r+0x302>
 8002b54:	2330      	movs	r3, #48	; 0x30
 8002b56:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002b5a:	2300      	movs	r3, #0
 8002b5c:	930a      	str	r3, [sp, #40]	; 0x28
 8002b5e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002b60:	9314      	str	r3, [sp, #80]	; 0x50
 8002b62:	9311      	str	r3, [sp, #68]	; 0x44
 8002b64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b66:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b6a:	454b      	cmp	r3, r9
 8002b6c:	bfb8      	it	lt
 8002b6e:	464b      	movlt	r3, r9
 8002b70:	9304      	str	r3, [sp, #16]
 8002b72:	b112      	cbz	r2, 8002b7a <_vfprintf_r+0x322>
 8002b74:	9b04      	ldr	r3, [sp, #16]
 8002b76:	3301      	adds	r3, #1
 8002b78:	9304      	str	r3, [sp, #16]
 8002b7a:	f018 0302 	ands.w	r3, r8, #2
 8002b7e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002b80:	d002      	beq.n	8002b88 <_vfprintf_r+0x330>
 8002b82:	9b04      	ldr	r3, [sp, #16]
 8002b84:	3302      	adds	r3, #2
 8002b86:	9304      	str	r3, [sp, #16]
 8002b88:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002b8c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002b8e:	930e      	str	r3, [sp, #56]	; 0x38
 8002b90:	d13f      	bne.n	8002c12 <_vfprintf_r+0x3ba>
 8002b92:	9b06      	ldr	r3, [sp, #24]
 8002b94:	9904      	ldr	r1, [sp, #16]
 8002b96:	1a5d      	subs	r5, r3, r1
 8002b98:	2d00      	cmp	r5, #0
 8002b9a:	dd3a      	ble.n	8002c12 <_vfprintf_r+0x3ba>
 8002b9c:	2d10      	cmp	r5, #16
 8002b9e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ba0:	dd29      	ble.n	8002bf6 <_vfprintf_r+0x39e>
 8002ba2:	4659      	mov	r1, fp
 8002ba4:	4620      	mov	r0, r4
 8002ba6:	9620      	str	r6, [sp, #128]	; 0x80
 8002ba8:	2310      	movs	r3, #16
 8002baa:	9c03      	ldr	r4, [sp, #12]
 8002bac:	9e07      	ldr	r6, [sp, #28]
 8002bae:	46bb      	mov	fp, r7
 8002bb0:	e004      	b.n	8002bbc <_vfprintf_r+0x364>
 8002bb2:	3d10      	subs	r5, #16
 8002bb4:	2d10      	cmp	r5, #16
 8002bb6:	f101 0108 	add.w	r1, r1, #8
 8002bba:	dd18      	ble.n	8002bee <_vfprintf_r+0x396>
 8002bbc:	3201      	adds	r2, #1
 8002bbe:	4fba      	ldr	r7, [pc, #744]	; (8002ea8 <_vfprintf_r+0x650>)
 8002bc0:	3010      	adds	r0, #16
 8002bc2:	2a07      	cmp	r2, #7
 8002bc4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002bc8:	e9c1 7300 	strd	r7, r3, [r1]
 8002bcc:	ddf1      	ble.n	8002bb2 <_vfprintf_r+0x35a>
 8002bce:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bd0:	4631      	mov	r1, r6
 8002bd2:	4620      	mov	r0, r4
 8002bd4:	930c      	str	r3, [sp, #48]	; 0x30
 8002bd6:	f004 f96d 	bl	8006eb4 <__sprint_r>
 8002bda:	2800      	cmp	r0, #0
 8002bdc:	f040 843d 	bne.w	800345a <_vfprintf_r+0xc02>
 8002be0:	3d10      	subs	r5, #16
 8002be2:	2d10      	cmp	r5, #16
 8002be4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002be8:	a92d      	add	r1, sp, #180	; 0xb4
 8002bea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002bec:	dce6      	bgt.n	8002bbc <_vfprintf_r+0x364>
 8002bee:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002bf0:	465f      	mov	r7, fp
 8002bf2:	4604      	mov	r4, r0
 8002bf4:	468b      	mov	fp, r1
 8002bf6:	3201      	adds	r2, #1
 8002bf8:	4bab      	ldr	r3, [pc, #684]	; (8002ea8 <_vfprintf_r+0x650>)
 8002bfa:	442c      	add	r4, r5
 8002bfc:	2a07      	cmp	r2, #7
 8002bfe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c02:	e9cb 3500 	strd	r3, r5, [fp]
 8002c06:	f300 84ff 	bgt.w	8003608 <_vfprintf_r+0xdb0>
 8002c0a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c0e:	f10b 0b08 	add.w	fp, fp, #8
 8002c12:	b172      	cbz	r2, 8002c32 <_vfprintf_r+0x3da>
 8002c14:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c16:	3201      	adds	r2, #1
 8002c18:	3401      	adds	r4, #1
 8002c1a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002c1e:	2101      	movs	r1, #1
 8002c20:	2a07      	cmp	r2, #7
 8002c22:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c26:	e9cb 0100 	strd	r0, r1, [fp]
 8002c2a:	f300 8418 	bgt.w	800345e <_vfprintf_r+0xc06>
 8002c2e:	f10b 0b08 	add.w	fp, fp, #8
 8002c32:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002c34:	b16b      	cbz	r3, 8002c52 <_vfprintf_r+0x3fa>
 8002c36:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c38:	3301      	adds	r3, #1
 8002c3a:	3402      	adds	r4, #2
 8002c3c:	a923      	add	r1, sp, #140	; 0x8c
 8002c3e:	2202      	movs	r2, #2
 8002c40:	2b07      	cmp	r3, #7
 8002c42:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c46:	e9cb 1200 	strd	r1, r2, [fp]
 8002c4a:	f300 8415 	bgt.w	8003478 <_vfprintf_r+0xc20>
 8002c4e:	f10b 0b08 	add.w	fp, fp, #8
 8002c52:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002c54:	2b80      	cmp	r3, #128	; 0x80
 8002c56:	f000 8331 	beq.w	80032bc <_vfprintf_r+0xa64>
 8002c5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002c5c:	eba9 0503 	sub.w	r5, r9, r3
 8002c60:	2d00      	cmp	r5, #0
 8002c62:	dd37      	ble.n	8002cd4 <_vfprintf_r+0x47c>
 8002c64:	2d10      	cmp	r5, #16
 8002c66:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c68:	4b90      	ldr	r3, [pc, #576]	; (8002eac <_vfprintf_r+0x654>)
 8002c6a:	dd28      	ble.n	8002cbe <_vfprintf_r+0x466>
 8002c6c:	4659      	mov	r1, fp
 8002c6e:	4620      	mov	r0, r4
 8002c70:	46bb      	mov	fp, r7
 8002c72:	f04f 0910 	mov.w	r9, #16
 8002c76:	4637      	mov	r7, r6
 8002c78:	461c      	mov	r4, r3
 8002c7a:	9e07      	ldr	r6, [sp, #28]
 8002c7c:	e004      	b.n	8002c88 <_vfprintf_r+0x430>
 8002c7e:	3d10      	subs	r5, #16
 8002c80:	2d10      	cmp	r5, #16
 8002c82:	f101 0108 	add.w	r1, r1, #8
 8002c86:	dd15      	ble.n	8002cb4 <_vfprintf_r+0x45c>
 8002c88:	3201      	adds	r2, #1
 8002c8a:	3010      	adds	r0, #16
 8002c8c:	2a07      	cmp	r2, #7
 8002c8e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002c92:	e9c1 4900 	strd	r4, r9, [r1]
 8002c96:	ddf2      	ble.n	8002c7e <_vfprintf_r+0x426>
 8002c98:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c9a:	4631      	mov	r1, r6
 8002c9c:	9803      	ldr	r0, [sp, #12]
 8002c9e:	f004 f909 	bl	8006eb4 <__sprint_r>
 8002ca2:	2800      	cmp	r0, #0
 8002ca4:	f040 83d9 	bne.w	800345a <_vfprintf_r+0xc02>
 8002ca8:	3d10      	subs	r5, #16
 8002caa:	2d10      	cmp	r5, #16
 8002cac:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002cb0:	a92d      	add	r1, sp, #180	; 0xb4
 8002cb2:	dce9      	bgt.n	8002c88 <_vfprintf_r+0x430>
 8002cb4:	463e      	mov	r6, r7
 8002cb6:	4623      	mov	r3, r4
 8002cb8:	465f      	mov	r7, fp
 8002cba:	4604      	mov	r4, r0
 8002cbc:	468b      	mov	fp, r1
 8002cbe:	3201      	adds	r2, #1
 8002cc0:	442c      	add	r4, r5
 8002cc2:	2a07      	cmp	r2, #7
 8002cc4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002cc8:	e9cb 3500 	strd	r3, r5, [fp]
 8002ccc:	f300 83ef 	bgt.w	80034ae <_vfprintf_r+0xc56>
 8002cd0:	f10b 0b08 	add.w	fp, fp, #8
 8002cd4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002cd8:	f040 8280 	bne.w	80031dc <_vfprintf_r+0x984>
 8002cdc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cde:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ce0:	f8cb 7000 	str.w	r7, [fp]
 8002ce4:	3301      	adds	r3, #1
 8002ce6:	4414      	add	r4, r2
 8002ce8:	2b07      	cmp	r3, #7
 8002cea:	942c      	str	r4, [sp, #176]	; 0xb0
 8002cec:	f8cb 2004 	str.w	r2, [fp, #4]
 8002cf0:	932b      	str	r3, [sp, #172]	; 0xac
 8002cf2:	f300 8392 	bgt.w	800341a <_vfprintf_r+0xbc2>
 8002cf6:	f10b 0b08 	add.w	fp, fp, #8
 8002cfa:	f018 0f04 	tst.w	r8, #4
 8002cfe:	d03b      	beq.n	8002d78 <_vfprintf_r+0x520>
 8002d00:	9b06      	ldr	r3, [sp, #24]
 8002d02:	9a04      	ldr	r2, [sp, #16]
 8002d04:	1a9d      	subs	r5, r3, r2
 8002d06:	2d00      	cmp	r5, #0
 8002d08:	dd36      	ble.n	8002d78 <_vfprintf_r+0x520>
 8002d0a:	2d10      	cmp	r5, #16
 8002d0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d0e:	dd21      	ble.n	8002d54 <_vfprintf_r+0x4fc>
 8002d10:	2610      	movs	r6, #16
 8002d12:	9f03      	ldr	r7, [sp, #12]
 8002d14:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002d18:	e004      	b.n	8002d24 <_vfprintf_r+0x4cc>
 8002d1a:	3d10      	subs	r5, #16
 8002d1c:	2d10      	cmp	r5, #16
 8002d1e:	f10b 0b08 	add.w	fp, fp, #8
 8002d22:	dd17      	ble.n	8002d54 <_vfprintf_r+0x4fc>
 8002d24:	3301      	adds	r3, #1
 8002d26:	4a60      	ldr	r2, [pc, #384]	; (8002ea8 <_vfprintf_r+0x650>)
 8002d28:	3410      	adds	r4, #16
 8002d2a:	2b07      	cmp	r3, #7
 8002d2c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d30:	e9cb 2600 	strd	r2, r6, [fp]
 8002d34:	ddf1      	ble.n	8002d1a <_vfprintf_r+0x4c2>
 8002d36:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d38:	4641      	mov	r1, r8
 8002d3a:	4638      	mov	r0, r7
 8002d3c:	f004 f8ba 	bl	8006eb4 <__sprint_r>
 8002d40:	2800      	cmp	r0, #0
 8002d42:	f040 856c 	bne.w	800381e <_vfprintf_r+0xfc6>
 8002d46:	3d10      	subs	r5, #16
 8002d48:	2d10      	cmp	r5, #16
 8002d4a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002d4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d52:	dce7      	bgt.n	8002d24 <_vfprintf_r+0x4cc>
 8002d54:	3301      	adds	r3, #1
 8002d56:	4a54      	ldr	r2, [pc, #336]	; (8002ea8 <_vfprintf_r+0x650>)
 8002d58:	442c      	add	r4, r5
 8002d5a:	2b07      	cmp	r3, #7
 8002d5c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d60:	e9cb 2500 	strd	r2, r5, [fp]
 8002d64:	dd08      	ble.n	8002d78 <_vfprintf_r+0x520>
 8002d66:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d68:	9907      	ldr	r1, [sp, #28]
 8002d6a:	9803      	ldr	r0, [sp, #12]
 8002d6c:	f004 f8a2 	bl	8006eb4 <__sprint_r>
 8002d70:	2800      	cmp	r0, #0
 8002d72:	f040 82e9 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8002d76:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d78:	9904      	ldr	r1, [sp, #16]
 8002d7a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002d7e:	428a      	cmp	r2, r1
 8002d80:	bfac      	ite	ge
 8002d82:	189b      	addge	r3, r3, r2
 8002d84:	185b      	addlt	r3, r3, r1
 8002d86:	9305      	str	r3, [sp, #20]
 8002d88:	2c00      	cmp	r4, #0
 8002d8a:	f040 82d5 	bne.w	8003338 <_vfprintf_r+0xae0>
 8002d8e:	2300      	movs	r3, #0
 8002d90:	932b      	str	r3, [sp, #172]	; 0xac
 8002d92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d94:	b11b      	cbz	r3, 8002d9e <_vfprintf_r+0x546>
 8002d96:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002d98:	9803      	ldr	r0, [sp, #12]
 8002d9a:	f002 fc9d 	bl	80056d8 <_free_r>
 8002d9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002da2:	4657      	mov	r7, sl
 8002da4:	783b      	ldrb	r3, [r7, #0]
 8002da6:	2b00      	cmp	r3, #0
 8002da8:	f47f ada7 	bne.w	80028fa <_vfprintf_r+0xa2>
 8002dac:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002dae:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002db2:	2b00      	cmp	r3, #0
 8002db4:	f041 80e7 	bne.w	8003f86 <_vfprintf_r+0x172e>
 8002db8:	2300      	movs	r3, #0
 8002dba:	932b      	str	r3, [sp, #172]	; 0xac
 8002dbc:	e2cb      	b.n	8003356 <_vfprintf_r+0xafe>
 8002dbe:	4643      	mov	r3, r8
 8002dc0:	069a      	lsls	r2, r3, #26
 8002dc2:	f140 814e 	bpl.w	8003062 <_vfprintf_r+0x80a>
 8002dc6:	9c08      	ldr	r4, [sp, #32]
 8002dc8:	3407      	adds	r4, #7
 8002dca:	f024 0207 	bic.w	r2, r4, #7
 8002dce:	f102 0108 	add.w	r1, r2, #8
 8002dd2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002dd6:	9108      	str	r1, [sp, #32]
 8002dd8:	2201      	movs	r2, #1
 8002dda:	2100      	movs	r1, #0
 8002ddc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002de0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002de4:	a956      	add	r1, sp, #344	; 0x158
 8002de6:	9104      	str	r1, [sp, #16]
 8002de8:	f47f aea2 	bne.w	8002b30 <_vfprintf_r+0x2d8>
 8002dec:	4698      	mov	r8, r3
 8002dee:	2a01      	cmp	r2, #1
 8002df0:	f000 8350 	beq.w	8003494 <_vfprintf_r+0xc3c>
 8002df4:	2a02      	cmp	r2, #2
 8002df6:	f000 831b 	beq.w	8003430 <_vfprintf_r+0xbd8>
 8002dfa:	a956      	add	r1, sp, #344	; 0x158
 8002dfc:	e000      	b.n	8002e00 <_vfprintf_r+0x5a8>
 8002dfe:	4639      	mov	r1, r7
 8002e00:	08e2      	lsrs	r2, r4, #3
 8002e02:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002e06:	08e8      	lsrs	r0, r5, #3
 8002e08:	f004 0307 	and.w	r3, r4, #7
 8002e0c:	4605      	mov	r5, r0
 8002e0e:	4614      	mov	r4, r2
 8002e10:	3330      	adds	r3, #48	; 0x30
 8002e12:	ea54 0205 	orrs.w	r2, r4, r5
 8002e16:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002e1a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002e1e:	d1ee      	bne.n	8002dfe <_vfprintf_r+0x5a6>
 8002e20:	f018 0f01 	tst.w	r8, #1
 8002e24:	f000 8314 	beq.w	8003450 <_vfprintf_r+0xbf8>
 8002e28:	2b30      	cmp	r3, #48	; 0x30
 8002e2a:	f000 8311 	beq.w	8003450 <_vfprintf_r+0xbf8>
 8002e2e:	9a04      	ldr	r2, [sp, #16]
 8002e30:	3902      	subs	r1, #2
 8002e32:	2330      	movs	r3, #48	; 0x30
 8002e34:	1a52      	subs	r2, r2, r1
 8002e36:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002e3a:	9209      	str	r2, [sp, #36]	; 0x24
 8002e3c:	460f      	mov	r7, r1
 8002e3e:	e68c      	b.n	8002b5a <_vfprintf_r+0x302>
 8002e40:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e44:	2200      	movs	r2, #0
 8002e46:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e4a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002e4e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002e52:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e56:	2b09      	cmp	r3, #9
 8002e58:	d9f5      	bls.n	8002e46 <_vfprintf_r+0x5ee>
 8002e5a:	9206      	str	r2, [sp, #24]
 8002e5c:	e57c      	b.n	8002958 <_vfprintf_r+0x100>
 8002e5e:	4b14      	ldr	r3, [pc, #80]	; (8002eb0 <_vfprintf_r+0x658>)
 8002e60:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e62:	f018 0f20 	tst.w	r8, #32
 8002e66:	f000 8114 	beq.w	8003092 <_vfprintf_r+0x83a>
 8002e6a:	9c08      	ldr	r4, [sp, #32]
 8002e6c:	3407      	adds	r4, #7
 8002e6e:	f024 0307 	bic.w	r3, r4, #7
 8002e72:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002e76:	f103 0208 	add.w	r2, r3, #8
 8002e7a:	9208      	str	r2, [sp, #32]
 8002e7c:	f018 0f01 	tst.w	r8, #1
 8002e80:	d009      	beq.n	8002e96 <_vfprintf_r+0x63e>
 8002e82:	ea54 0305 	orrs.w	r3, r4, r5
 8002e86:	d006      	beq.n	8002e96 <_vfprintf_r+0x63e>
 8002e88:	2330      	movs	r3, #48	; 0x30
 8002e8a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002e8e:	f048 0802 	orr.w	r8, r8, #2
 8002e92:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002e96:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002e9a:	2202      	movs	r2, #2
 8002e9c:	e79d      	b.n	8002dda <_vfprintf_r+0x582>
 8002e9e:	f048 0801 	orr.w	r8, r8, #1
 8002ea2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ea6:	e555      	b.n	8002954 <_vfprintf_r+0xfc>
 8002ea8:	0800802c 	.word	0x0800802c
 8002eac:	0800803c 	.word	0x0800803c
 8002eb0:	08007ff8 	.word	0x08007ff8
 8002eb4:	9e03      	ldr	r6, [sp, #12]
 8002eb6:	4630      	mov	r0, r6
 8002eb8:	f002 feaa 	bl	8005c10 <_localeconv_r>
 8002ebc:	6843      	ldr	r3, [r0, #4]
 8002ebe:	9318      	str	r3, [sp, #96]	; 0x60
 8002ec0:	4618      	mov	r0, r3
 8002ec2:	f7fe f89d 	bl	8001000 <strlen>
 8002ec6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ec8:	4604      	mov	r4, r0
 8002eca:	4630      	mov	r0, r6
 8002ecc:	f002 fea0 	bl	8005c10 <_localeconv_r>
 8002ed0:	6883      	ldr	r3, [r0, #8]
 8002ed2:	931a      	str	r3, [sp, #104]	; 0x68
 8002ed4:	2c00      	cmp	r4, #0
 8002ed6:	f43f adb8 	beq.w	8002a4a <_vfprintf_r+0x1f2>
 8002eda:	f89a 6000 	ldrb.w	r6, [sl]
 8002ede:	2b00      	cmp	r3, #0
 8002ee0:	f43f ad38 	beq.w	8002954 <_vfprintf_r+0xfc>
 8002ee4:	781b      	ldrb	r3, [r3, #0]
 8002ee6:	2b00      	cmp	r3, #0
 8002ee8:	f43f ad34 	beq.w	8002954 <_vfprintf_r+0xfc>
 8002eec:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ef0:	e530      	b.n	8002954 <_vfprintf_r+0xfc>
 8002ef2:	9b08      	ldr	r3, [sp, #32]
 8002ef4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ef8:	681a      	ldr	r2, [r3, #0]
 8002efa:	9206      	str	r2, [sp, #24]
 8002efc:	2a00      	cmp	r2, #0
 8002efe:	f103 0304 	add.w	r3, r3, #4
 8002f02:	f2c0 8697 	blt.w	8003c34 <_vfprintf_r+0x13dc>
 8002f06:	9308      	str	r3, [sp, #32]
 8002f08:	e524      	b.n	8002954 <_vfprintf_r+0xfc>
 8002f0a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f12:	e51f      	b.n	8002954 <_vfprintf_r+0xfc>
 8002f14:	f89a 6000 	ldrb.w	r6, [sl]
 8002f18:	f048 0804 	orr.w	r8, r8, #4
 8002f1c:	e51a      	b.n	8002954 <_vfprintf_r+0xfc>
 8002f1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f22:	2e2a      	cmp	r6, #42	; 0x2a
 8002f24:	f10a 0201 	add.w	r2, sl, #1
 8002f28:	f001 81b0 	beq.w	800428c <_vfprintf_r+0x1a34>
 8002f2c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f30:	2b09      	cmp	r3, #9
 8002f32:	4692      	mov	sl, r2
 8002f34:	f04f 0900 	mov.w	r9, #0
 8002f38:	f63f ad0e 	bhi.w	8002958 <_vfprintf_r+0x100>
 8002f3c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002f40:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002f44:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002f48:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f4c:	2b09      	cmp	r3, #9
 8002f4e:	d9f5      	bls.n	8002f3c <_vfprintf_r+0x6e4>
 8002f50:	e502      	b.n	8002958 <_vfprintf_r+0x100>
 8002f52:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002f56:	f89a 6000 	ldrb.w	r6, [sl]
 8002f5a:	e4fb      	b.n	8002954 <_vfprintf_r+0xfc>
 8002f5c:	9c08      	ldr	r4, [sp, #32]
 8002f5e:	3407      	adds	r4, #7
 8002f60:	f024 0407 	bic.w	r4, r4, #7
 8002f64:	ed94 7b00 	vldr	d7, [r4]
 8002f68:	ec52 1b17 	vmov	r1, r2, d7
 8002f6c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002f70:	931d      	str	r3, [sp, #116]	; 0x74
 8002f72:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002f76:	3408      	adds	r4, #8
 8002f78:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002f7c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002f80:	4bba      	ldr	r3, [pc, #744]	; (800326c <_vfprintf_r+0xa14>)
 8002f82:	9408      	str	r4, [sp, #32]
 8002f84:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002f88:	f7fe f8fa 	bl	8001180 <__aeabi_dcmpun>
 8002f8c:	2800      	cmp	r0, #0
 8002f8e:	f040 846f 	bne.w	8003870 <_vfprintf_r+0x1018>
 8002f92:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002f96:	4bb5      	ldr	r3, [pc, #724]	; (800326c <_vfprintf_r+0xa14>)
 8002f98:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002f9c:	f7fd fd68 	bl	8000a70 <__aeabi_dcmple>
 8002fa0:	2800      	cmp	r0, #0
 8002fa2:	f040 8465 	bne.w	8003870 <_vfprintf_r+0x1018>
 8002fa6:	2200      	movs	r2, #0
 8002fa8:	2300      	movs	r3, #0
 8002faa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fae:	f7fd fd55 	bl	8000a5c <__aeabi_dcmplt>
 8002fb2:	2800      	cmp	r0, #0
 8002fb4:	f040 855b 	bne.w	8003a6e <_vfprintf_r+0x1216>
 8002fb8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002fbc:	4fac      	ldr	r7, [pc, #688]	; (8003270 <_vfprintf_r+0xa18>)
 8002fbe:	4bad      	ldr	r3, [pc, #692]	; (8003274 <_vfprintf_r+0xa1c>)
 8002fc0:	2000      	movs	r0, #0
 8002fc2:	2103      	movs	r1, #3
 8002fc4:	9104      	str	r1, [sp, #16]
 8002fc6:	900a      	str	r0, [sp, #40]	; 0x28
 8002fc8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002fcc:	2e47      	cmp	r6, #71	; 0x47
 8002fce:	bfd8      	it	le
 8002fd0:	461f      	movle	r7, r3
 8002fd2:	9109      	str	r1, [sp, #36]	; 0x24
 8002fd4:	4681      	mov	r9, r0
 8002fd6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002fd8:	9014      	str	r0, [sp, #80]	; 0x50
 8002fda:	9011      	str	r0, [sp, #68]	; 0x44
 8002fdc:	e5c9      	b.n	8002b72 <_vfprintf_r+0x31a>
 8002fde:	9808      	ldr	r0, [sp, #32]
 8002fe0:	2300      	movs	r3, #0
 8002fe2:	6801      	ldr	r1, [r0, #0]
 8002fe4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fe8:	461a      	mov	r2, r3
 8002fea:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002fee:	2301      	movs	r3, #1
 8002ff0:	1d01      	adds	r1, r0, #4
 8002ff2:	9304      	str	r3, [sp, #16]
 8002ff4:	920a      	str	r2, [sp, #40]	; 0x28
 8002ff6:	4691      	mov	r9, r2
 8002ff8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002ffa:	9214      	str	r2, [sp, #80]	; 0x50
 8002ffc:	9211      	str	r2, [sp, #68]	; 0x44
 8002ffe:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003002:	af3d      	add	r7, sp, #244	; 0xf4
 8003004:	e5b9      	b.n	8002b7a <_vfprintf_r+0x322>
 8003006:	9b08      	ldr	r3, [sp, #32]
 8003008:	681f      	ldr	r7, [r3, #0]
 800300a:	2500      	movs	r5, #0
 800300c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003010:	1d1c      	adds	r4, r3, #4
 8003012:	2f00      	cmp	r7, #0
 8003014:	f000 8639 	beq.w	8003c8a <_vfprintf_r+0x1432>
 8003018:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800301c:	f000 8711 	beq.w	8003e42 <_vfprintf_r+0x15ea>
 8003020:	464a      	mov	r2, r9
 8003022:	4629      	mov	r1, r5
 8003024:	4638      	mov	r0, r7
 8003026:	f7fe f85b 	bl	80010e0 <memchr>
 800302a:	900a      	str	r0, [sp, #40]	; 0x28
 800302c:	2800      	cmp	r0, #0
 800302e:	f000 85e7 	beq.w	8003c00 <_vfprintf_r+0x13a8>
 8003032:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003034:	1bdb      	subs	r3, r3, r7
 8003036:	9309      	str	r3, [sp, #36]	; 0x24
 8003038:	46a9      	mov	r9, r5
 800303a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800303e:	9408      	str	r4, [sp, #32]
 8003040:	9304      	str	r3, [sp, #16]
 8003042:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003046:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800304a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800304e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003052:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003056:	e58c      	b.n	8002b72 <_vfprintf_r+0x31a>
 8003058:	f048 0310 	orr.w	r3, r8, #16
 800305c:	069a      	lsls	r2, r3, #26
 800305e:	f53f aeb2 	bmi.w	8002dc6 <_vfprintf_r+0x56e>
 8003062:	9a08      	ldr	r2, [sp, #32]
 8003064:	06df      	lsls	r7, r3, #27
 8003066:	f102 0104 	add.w	r1, r2, #4
 800306a:	f100 837e 	bmi.w	800376a <_vfprintf_r+0xf12>
 800306e:	065d      	lsls	r5, r3, #25
 8003070:	9a08      	ldr	r2, [sp, #32]
 8003072:	f100 84e4 	bmi.w	8003a3e <_vfprintf_r+0x11e6>
 8003076:	059c      	lsls	r4, r3, #22
 8003078:	f140 8377 	bpl.w	800376a <_vfprintf_r+0xf12>
 800307c:	7814      	ldrb	r4, [r2, #0]
 800307e:	9108      	str	r1, [sp, #32]
 8003080:	2500      	movs	r5, #0
 8003082:	2201      	movs	r2, #1
 8003084:	e6a9      	b.n	8002dda <_vfprintf_r+0x582>
 8003086:	4b7c      	ldr	r3, [pc, #496]	; (8003278 <_vfprintf_r+0xa20>)
 8003088:	9317      	str	r3, [sp, #92]	; 0x5c
 800308a:	f018 0f20 	tst.w	r8, #32
 800308e:	f47f aeec 	bne.w	8002e6a <_vfprintf_r+0x612>
 8003092:	9a08      	ldr	r2, [sp, #32]
 8003094:	f018 0f10 	tst.w	r8, #16
 8003098:	f102 0304 	add.w	r3, r2, #4
 800309c:	f040 8354 	bne.w	8003748 <_vfprintf_r+0xef0>
 80030a0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80030a4:	9a08      	ldr	r2, [sp, #32]
 80030a6:	f040 84d0 	bne.w	8003a4a <_vfprintf_r+0x11f2>
 80030aa:	f418 7f00 	tst.w	r8, #512	; 0x200
 80030ae:	f000 834b 	beq.w	8003748 <_vfprintf_r+0xef0>
 80030b2:	7814      	ldrb	r4, [r2, #0]
 80030b4:	9308      	str	r3, [sp, #32]
 80030b6:	2500      	movs	r5, #0
 80030b8:	e6e0      	b.n	8002e7c <_vfprintf_r+0x624>
 80030ba:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80030be:	f89a 6000 	ldrb.w	r6, [sl]
 80030c2:	2b00      	cmp	r3, #0
 80030c4:	f47f ac46 	bne.w	8002954 <_vfprintf_r+0xfc>
 80030c8:	2320      	movs	r3, #32
 80030ca:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80030ce:	e441      	b.n	8002954 <_vfprintf_r+0xfc>
 80030d0:	f89a 6000 	ldrb.w	r6, [sl]
 80030d4:	2e6c      	cmp	r6, #108	; 0x6c
 80030d6:	bf03      	ittte	eq
 80030d8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80030dc:	f048 0820 	orreq.w	r8, r8, #32
 80030e0:	f10a 0a01 	addeq.w	sl, sl, #1
 80030e4:	f048 0810 	orrne.w	r8, r8, #16
 80030e8:	e434      	b.n	8002954 <_vfprintf_r+0xfc>
 80030ea:	9a08      	ldr	r2, [sp, #32]
 80030ec:	f018 0f20 	tst.w	r8, #32
 80030f0:	f852 3b04 	ldr.w	r3, [r2], #4
 80030f4:	9208      	str	r2, [sp, #32]
 80030f6:	f000 83a1 	beq.w	800383c <_vfprintf_r+0xfe4>
 80030fa:	9a05      	ldr	r2, [sp, #20]
 80030fc:	4610      	mov	r0, r2
 80030fe:	17d1      	asrs	r1, r2, #31
 8003100:	e9c3 0100 	strd	r0, r1, [r3]
 8003104:	4657      	mov	r7, sl
 8003106:	e64d      	b.n	8002da4 <_vfprintf_r+0x54c>
 8003108:	f89a 6000 	ldrb.w	r6, [sl]
 800310c:	2e68      	cmp	r6, #104	; 0x68
 800310e:	bf03      	ittte	eq
 8003110:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003114:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003118:	f10a 0a01 	addeq.w	sl, sl, #1
 800311c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003120:	e418      	b.n	8002954 <_vfprintf_r+0xfc>
 8003122:	9908      	ldr	r1, [sp, #32]
 8003124:	4b55      	ldr	r3, [pc, #340]	; (800327c <_vfprintf_r+0xa24>)
 8003126:	680c      	ldr	r4, [r1, #0]
 8003128:	9317      	str	r3, [sp, #92]	; 0x5c
 800312a:	f647 0230 	movw	r2, #30768	; 0x7830
 800312e:	3104      	adds	r1, #4
 8003130:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003134:	f048 0302 	orr.w	r3, r8, #2
 8003138:	9108      	str	r1, [sp, #32]
 800313a:	2500      	movs	r5, #0
 800313c:	2202      	movs	r2, #2
 800313e:	2678      	movs	r6, #120	; 0x78
 8003140:	e64b      	b.n	8002dda <_vfprintf_r+0x582>
 8003142:	f048 0808 	orr.w	r8, r8, #8
 8003146:	f89a 6000 	ldrb.w	r6, [sl]
 800314a:	e403      	b.n	8002954 <_vfprintf_r+0xfc>
 800314c:	f048 0310 	orr.w	r3, r8, #16
 8003150:	069f      	lsls	r7, r3, #26
 8003152:	f53f acd1 	bmi.w	8002af8 <_vfprintf_r+0x2a0>
 8003156:	9908      	ldr	r1, [sp, #32]
 8003158:	06dd      	lsls	r5, r3, #27
 800315a:	f101 0204 	add.w	r2, r1, #4
 800315e:	f100 82fd 	bmi.w	800375c <_vfprintf_r+0xf04>
 8003162:	065c      	lsls	r4, r3, #25
 8003164:	9908      	ldr	r1, [sp, #32]
 8003166:	f100 8475 	bmi.w	8003a54 <_vfprintf_r+0x11fc>
 800316a:	0598      	lsls	r0, r3, #22
 800316c:	f140 82f6 	bpl.w	800375c <_vfprintf_r+0xf04>
 8003170:	f991 4000 	ldrsb.w	r4, [r1]
 8003174:	9208      	str	r2, [sp, #32]
 8003176:	17e5      	asrs	r5, r4, #31
 8003178:	4620      	mov	r0, r4
 800317a:	4629      	mov	r1, r5
 800317c:	e4c7      	b.n	8002b0e <_vfprintf_r+0x2b6>
 800317e:	9a08      	ldr	r2, [sp, #32]
 8003180:	f018 0f10 	tst.w	r8, #16
 8003184:	f102 0304 	add.w	r3, r2, #4
 8003188:	f040 82e3 	bne.w	8003752 <_vfprintf_r+0xefa>
 800318c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003190:	9a08      	ldr	r2, [sp, #32]
 8003192:	f040 8467 	bne.w	8003a64 <_vfprintf_r+0x120c>
 8003196:	f418 7f00 	tst.w	r8, #512	; 0x200
 800319a:	f000 82da 	beq.w	8003752 <_vfprintf_r+0xefa>
 800319e:	7814      	ldrb	r4, [r2, #0]
 80031a0:	9308      	str	r3, [sp, #32]
 80031a2:	2500      	movs	r5, #0
 80031a4:	e488      	b.n	8002ab8 <_vfprintf_r+0x260>
 80031a6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80031aa:	f002 fd45 	bl	8005c38 <__retarget_lock_release_recursive>
 80031ae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80031b2:	9305      	str	r3, [sp, #20]
 80031b4:	e443      	b.n	8002a3e <_vfprintf_r+0x1e6>
 80031b6:	2e00      	cmp	r6, #0
 80031b8:	f43f adf8 	beq.w	8002dac <_vfprintf_r+0x554>
 80031bc:	2300      	movs	r3, #0
 80031be:	2101      	movs	r1, #1
 80031c0:	461a      	mov	r2, r3
 80031c2:	9104      	str	r1, [sp, #16]
 80031c4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80031c8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031cc:	930a      	str	r3, [sp, #40]	; 0x28
 80031ce:	4699      	mov	r9, r3
 80031d0:	930f      	str	r3, [sp, #60]	; 0x3c
 80031d2:	9314      	str	r3, [sp, #80]	; 0x50
 80031d4:	9311      	str	r3, [sp, #68]	; 0x44
 80031d6:	9109      	str	r1, [sp, #36]	; 0x24
 80031d8:	af3d      	add	r7, sp, #244	; 0xf4
 80031da:	e4ce      	b.n	8002b7a <_vfprintf_r+0x322>
 80031dc:	2e65      	cmp	r6, #101	; 0x65
 80031de:	f340 80ca 	ble.w	8003376 <_vfprintf_r+0xb1e>
 80031e2:	2200      	movs	r2, #0
 80031e4:	2300      	movs	r3, #0
 80031e6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031ea:	f7fd fc2d 	bl	8000a48 <__aeabi_dcmpeq>
 80031ee:	2800      	cmp	r0, #0
 80031f0:	f000 8169 	beq.w	80034c6 <_vfprintf_r+0xc6e>
 80031f4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031f6:	4a22      	ldr	r2, [pc, #136]	; (8003280 <_vfprintf_r+0xa28>)
 80031f8:	f8cb 2000 	str.w	r2, [fp]
 80031fc:	3301      	adds	r3, #1
 80031fe:	3401      	adds	r4, #1
 8003200:	2201      	movs	r2, #1
 8003202:	2b07      	cmp	r3, #7
 8003204:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003208:	f8cb 2004 	str.w	r2, [fp, #4]
 800320c:	f300 8406 	bgt.w	8003a1c <_vfprintf_r+0x11c4>
 8003210:	f10b 0b08 	add.w	fp, fp, #8
 8003214:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003216:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003218:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800321a:	4293      	cmp	r3, r2
 800321c:	db03      	blt.n	8003226 <_vfprintf_r+0x9ce>
 800321e:	f018 0f01 	tst.w	r8, #1
 8003222:	f43f ad6a 	beq.w	8002cfa <_vfprintf_r+0x4a2>
 8003226:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003228:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800322a:	f8cb 2000 	str.w	r2, [fp]
 800322e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003230:	f8cb 2004 	str.w	r2, [fp, #4]
 8003234:	3301      	adds	r3, #1
 8003236:	4414      	add	r4, r2
 8003238:	2b07      	cmp	r3, #7
 800323a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800323e:	f300 8517 	bgt.w	8003c70 <_vfprintf_r+0x1418>
 8003242:	f10b 0b08 	add.w	fp, fp, #8
 8003246:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003248:	1e5d      	subs	r5, r3, #1
 800324a:	2d00      	cmp	r5, #0
 800324c:	f77f ad55 	ble.w	8002cfa <_vfprintf_r+0x4a2>
 8003250:	2d10      	cmp	r5, #16
 8003252:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003254:	4b0b      	ldr	r3, [pc, #44]	; (8003284 <_vfprintf_r+0xa2c>)
 8003256:	f340 82e7 	ble.w	8003828 <_vfprintf_r+0xfd0>
 800325a:	4619      	mov	r1, r3
 800325c:	2610      	movs	r6, #16
 800325e:	4623      	mov	r3, r4
 8003260:	9f03      	ldr	r7, [sp, #12]
 8003262:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003266:	460c      	mov	r4, r1
 8003268:	e014      	b.n	8003294 <_vfprintf_r+0xa3c>
 800326a:	bf00      	nop
 800326c:	7fefffff 	.word	0x7fefffff
 8003270:	08007fec 	.word	0x08007fec
 8003274:	08007fe8 	.word	0x08007fe8
 8003278:	0800800c 	.word	0x0800800c
 800327c:	08007ff8 	.word	0x08007ff8
 8003280:	08008028 	.word	0x08008028
 8003284:	0800803c 	.word	0x0800803c
 8003288:	f10b 0b08 	add.w	fp, fp, #8
 800328c:	3d10      	subs	r5, #16
 800328e:	2d10      	cmp	r5, #16
 8003290:	f340 82c7 	ble.w	8003822 <_vfprintf_r+0xfca>
 8003294:	3201      	adds	r2, #1
 8003296:	3310      	adds	r3, #16
 8003298:	2a07      	cmp	r2, #7
 800329a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800329e:	e9cb 4600 	strd	r4, r6, [fp]
 80032a2:	ddf1      	ble.n	8003288 <_vfprintf_r+0xa30>
 80032a4:	aa2a      	add	r2, sp, #168	; 0xa8
 80032a6:	4649      	mov	r1, r9
 80032a8:	4638      	mov	r0, r7
 80032aa:	f003 fe03 	bl	8006eb4 <__sprint_r>
 80032ae:	2800      	cmp	r0, #0
 80032b0:	d14c      	bne.n	800334c <_vfprintf_r+0xaf4>
 80032b2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80032b6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ba:	e7e7      	b.n	800328c <_vfprintf_r+0xa34>
 80032bc:	9b06      	ldr	r3, [sp, #24]
 80032be:	9a04      	ldr	r2, [sp, #16]
 80032c0:	1a9d      	subs	r5, r3, r2
 80032c2:	2d00      	cmp	r5, #0
 80032c4:	f77f acc9 	ble.w	8002c5a <_vfprintf_r+0x402>
 80032c8:	2d10      	cmp	r5, #16
 80032ca:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032cc:	4bbc      	ldr	r3, [pc, #752]	; (80035c0 <_vfprintf_r+0xd68>)
 80032ce:	dd27      	ble.n	8003320 <_vfprintf_r+0xac8>
 80032d0:	4659      	mov	r1, fp
 80032d2:	4620      	mov	r0, r4
 80032d4:	46bb      	mov	fp, r7
 80032d6:	461c      	mov	r4, r3
 80032d8:	4637      	mov	r7, r6
 80032da:	9e07      	ldr	r6, [sp, #28]
 80032dc:	e004      	b.n	80032e8 <_vfprintf_r+0xa90>
 80032de:	3d10      	subs	r5, #16
 80032e0:	2d10      	cmp	r5, #16
 80032e2:	f101 0108 	add.w	r1, r1, #8
 80032e6:	dd16      	ble.n	8003316 <_vfprintf_r+0xabe>
 80032e8:	3201      	adds	r2, #1
 80032ea:	3010      	adds	r0, #16
 80032ec:	2310      	movs	r3, #16
 80032ee:	2a07      	cmp	r2, #7
 80032f0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80032f4:	600c      	str	r4, [r1, #0]
 80032f6:	604b      	str	r3, [r1, #4]
 80032f8:	ddf1      	ble.n	80032de <_vfprintf_r+0xa86>
 80032fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80032fc:	4631      	mov	r1, r6
 80032fe:	9803      	ldr	r0, [sp, #12]
 8003300:	f003 fdd8 	bl	8006eb4 <__sprint_r>
 8003304:	2800      	cmp	r0, #0
 8003306:	f040 80a8 	bne.w	800345a <_vfprintf_r+0xc02>
 800330a:	3d10      	subs	r5, #16
 800330c:	2d10      	cmp	r5, #16
 800330e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003312:	a92d      	add	r1, sp, #180	; 0xb4
 8003314:	dce8      	bgt.n	80032e8 <_vfprintf_r+0xa90>
 8003316:	463e      	mov	r6, r7
 8003318:	4623      	mov	r3, r4
 800331a:	465f      	mov	r7, fp
 800331c:	4604      	mov	r4, r0
 800331e:	468b      	mov	fp, r1
 8003320:	3201      	adds	r2, #1
 8003322:	442c      	add	r4, r5
 8003324:	2a07      	cmp	r2, #7
 8003326:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800332a:	e9cb 3500 	strd	r3, r5, [fp]
 800332e:	f300 8292 	bgt.w	8003856 <_vfprintf_r+0xffe>
 8003332:	f10b 0b08 	add.w	fp, fp, #8
 8003336:	e490      	b.n	8002c5a <_vfprintf_r+0x402>
 8003338:	aa2a      	add	r2, sp, #168	; 0xa8
 800333a:	9907      	ldr	r1, [sp, #28]
 800333c:	9803      	ldr	r0, [sp, #12]
 800333e:	f003 fdb9 	bl	8006eb4 <__sprint_r>
 8003342:	2800      	cmp	r0, #0
 8003344:	f43f ad23 	beq.w	8002d8e <_vfprintf_r+0x536>
 8003348:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800334c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800334e:	b111      	cbz	r1, 8003356 <_vfprintf_r+0xafe>
 8003350:	9803      	ldr	r0, [sp, #12]
 8003352:	f002 f9c1 	bl	80056d8 <_free_r>
 8003356:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800335a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800335e:	07d0      	lsls	r0, r2, #31
 8003360:	d402      	bmi.n	8003368 <_vfprintf_r+0xb10>
 8003362:	0599      	lsls	r1, r3, #22
 8003364:	f140 81d0 	bpl.w	8003708 <_vfprintf_r+0xeb0>
 8003368:	065a      	lsls	r2, r3, #25
 800336a:	f53f ab65 	bmi.w	8002a38 <_vfprintf_r+0x1e0>
 800336e:	9805      	ldr	r0, [sp, #20]
 8003370:	b057      	add	sp, #348	; 0x15c
 8003372:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003376:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003378:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800337a:	2a01      	cmp	r2, #1
 800337c:	f104 0401 	add.w	r4, r4, #1
 8003380:	f103 0501 	add.w	r5, r3, #1
 8003384:	f10b 0608 	add.w	r6, fp, #8
 8003388:	f340 811c 	ble.w	80035c4 <_vfprintf_r+0xd6c>
 800338c:	2301      	movs	r3, #1
 800338e:	2d07      	cmp	r5, #7
 8003390:	f8cb 7000 	str.w	r7, [fp]
 8003394:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003398:	f8cb 3004 	str.w	r3, [fp, #4]
 800339c:	f300 81bb 	bgt.w	8003716 <_vfprintf_r+0xebe>
 80033a0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80033a2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80033a4:	1c69      	adds	r1, r5, #1
 80033a6:	441c      	add	r4, r3
 80033a8:	2907      	cmp	r1, #7
 80033aa:	910b      	str	r1, [sp, #44]	; 0x2c
 80033ac:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80033b0:	e9c6 2300 	strd	r2, r3, [r6]
 80033b4:	f300 81bb 	bgt.w	800372e <_vfprintf_r+0xed6>
 80033b8:	3608      	adds	r6, #8
 80033ba:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80033bc:	1c53      	adds	r3, r2, #1
 80033be:	461d      	mov	r5, r3
 80033c0:	9509      	str	r5, [sp, #36]	; 0x24
 80033c2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80033c4:	930e      	str	r3, [sp, #56]	; 0x38
 80033c6:	2200      	movs	r2, #0
 80033c8:	2300      	movs	r3, #0
 80033ca:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033ce:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80033d2:	f106 0b08 	add.w	fp, r6, #8
 80033d6:	f7fd fb37 	bl	8000a48 <__aeabi_dcmpeq>
 80033da:	2800      	cmp	r0, #0
 80033dc:	f040 80c2 	bne.w	8003564 <_vfprintf_r+0xd0c>
 80033e0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80033e2:	f8c6 9004 	str.w	r9, [r6, #4]
 80033e6:	3701      	adds	r7, #1
 80033e8:	444c      	add	r4, r9
 80033ea:	2d07      	cmp	r5, #7
 80033ec:	6037      	str	r7, [r6, #0]
 80033ee:	942c      	str	r4, [sp, #176]	; 0xb0
 80033f0:	952b      	str	r5, [sp, #172]	; 0xac
 80033f2:	f300 80f9 	bgt.w	80035e8 <_vfprintf_r+0xd90>
 80033f6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80033f8:	f106 0310 	add.w	r3, r6, #16
 80033fc:	3202      	adds	r2, #2
 80033fe:	465e      	mov	r6, fp
 8003400:	9209      	str	r2, [sp, #36]	; 0x24
 8003402:	469b      	mov	fp, r3
 8003404:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003406:	6072      	str	r2, [r6, #4]
 8003408:	4414      	add	r4, r2
 800340a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800340c:	942c      	str	r4, [sp, #176]	; 0xb0
 800340e:	ab26      	add	r3, sp, #152	; 0x98
 8003410:	2a07      	cmp	r2, #7
 8003412:	922b      	str	r2, [sp, #172]	; 0xac
 8003414:	6033      	str	r3, [r6, #0]
 8003416:	f77f ac70 	ble.w	8002cfa <_vfprintf_r+0x4a2>
 800341a:	aa2a      	add	r2, sp, #168	; 0xa8
 800341c:	9907      	ldr	r1, [sp, #28]
 800341e:	9803      	ldr	r0, [sp, #12]
 8003420:	f003 fd48 	bl	8006eb4 <__sprint_r>
 8003424:	2800      	cmp	r0, #0
 8003426:	d18f      	bne.n	8003348 <_vfprintf_r+0xaf0>
 8003428:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800342a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800342e:	e464      	b.n	8002cfa <_vfprintf_r+0x4a2>
 8003430:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003432:	af56      	add	r7, sp, #344	; 0x158
 8003434:	0923      	lsrs	r3, r4, #4
 8003436:	f004 010f 	and.w	r1, r4, #15
 800343a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800343e:	092a      	lsrs	r2, r5, #4
 8003440:	461c      	mov	r4, r3
 8003442:	4615      	mov	r5, r2
 8003444:	5c43      	ldrb	r3, [r0, r1]
 8003446:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800344a:	ea54 0305 	orrs.w	r3, r4, r5
 800344e:	d1f1      	bne.n	8003434 <_vfprintf_r+0xbdc>
 8003450:	9b04      	ldr	r3, [sp, #16]
 8003452:	1bdb      	subs	r3, r3, r7
 8003454:	9309      	str	r3, [sp, #36]	; 0x24
 8003456:	f7ff bb80 	b.w	8002b5a <_vfprintf_r+0x302>
 800345a:	46b1      	mov	r9, r6
 800345c:	e776      	b.n	800334c <_vfprintf_r+0xaf4>
 800345e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003460:	9907      	ldr	r1, [sp, #28]
 8003462:	9803      	ldr	r0, [sp, #12]
 8003464:	f003 fd26 	bl	8006eb4 <__sprint_r>
 8003468:	2800      	cmp	r0, #0
 800346a:	f47f af6d 	bne.w	8003348 <_vfprintf_r+0xaf0>
 800346e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003470:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003474:	f7ff bbdd 	b.w	8002c32 <_vfprintf_r+0x3da>
 8003478:	aa2a      	add	r2, sp, #168	; 0xa8
 800347a:	9907      	ldr	r1, [sp, #28]
 800347c:	9803      	ldr	r0, [sp, #12]
 800347e:	f003 fd19 	bl	8006eb4 <__sprint_r>
 8003482:	2800      	cmp	r0, #0
 8003484:	f47f af60 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003488:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800348a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800348e:	f7ff bbe0 	b.w	8002c52 <_vfprintf_r+0x3fa>
 8003492:	4698      	mov	r8, r3
 8003494:	2d00      	cmp	r5, #0
 8003496:	bf08      	it	eq
 8003498:	2c0a      	cmpeq	r4, #10
 800349a:	f080 8170 	bcs.w	800377e <_vfprintf_r+0xf26>
 800349e:	af56      	add	r7, sp, #344	; 0x158
 80034a0:	3430      	adds	r4, #48	; 0x30
 80034a2:	2301      	movs	r3, #1
 80034a4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80034a8:	9309      	str	r3, [sp, #36]	; 0x24
 80034aa:	f7ff bb56 	b.w	8002b5a <_vfprintf_r+0x302>
 80034ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80034b0:	9907      	ldr	r1, [sp, #28]
 80034b2:	9803      	ldr	r0, [sp, #12]
 80034b4:	f003 fcfe 	bl	8006eb4 <__sprint_r>
 80034b8:	2800      	cmp	r0, #0
 80034ba:	f47f af45 	bne.w	8003348 <_vfprintf_r+0xaf0>
 80034be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034c4:	e406      	b.n	8002cd4 <_vfprintf_r+0x47c>
 80034c6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034c8:	2b00      	cmp	r3, #0
 80034ca:	f340 8273 	ble.w	80039b4 <_vfprintf_r+0x115c>
 80034ce:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80034d2:	4293      	cmp	r3, r2
 80034d4:	bfa8      	it	ge
 80034d6:	4613      	movge	r3, r2
 80034d8:	2b00      	cmp	r3, #0
 80034da:	461d      	mov	r5, r3
 80034dc:	dd0d      	ble.n	80034fa <_vfprintf_r+0xca2>
 80034de:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034e0:	f8cb 7000 	str.w	r7, [fp]
 80034e4:	3301      	adds	r3, #1
 80034e6:	442c      	add	r4, r5
 80034e8:	2b07      	cmp	r3, #7
 80034ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80034ec:	f8cb 5004 	str.w	r5, [fp, #4]
 80034f0:	932b      	str	r3, [sp, #172]	; 0xac
 80034f2:	f300 82c1 	bgt.w	8003a78 <_vfprintf_r+0x1220>
 80034f6:	f10b 0b08 	add.w	fp, fp, #8
 80034fa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034fc:	2d00      	cmp	r5, #0
 80034fe:	bfa8      	it	ge
 8003500:	1b5b      	subge	r3, r3, r5
 8003502:	2b00      	cmp	r3, #0
 8003504:	461d      	mov	r5, r3
 8003506:	f340 8099 	ble.w	800363c <_vfprintf_r+0xde4>
 800350a:	2d10      	cmp	r5, #16
 800350c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800350e:	4b2c      	ldr	r3, [pc, #176]	; (80035c0 <_vfprintf_r+0xd68>)
 8003510:	f340 83db 	ble.w	8003cca <_vfprintf_r+0x1472>
 8003514:	4618      	mov	r0, r3
 8003516:	4621      	mov	r1, r4
 8003518:	465b      	mov	r3, fp
 800351a:	2610      	movs	r6, #16
 800351c:	46bb      	mov	fp, r7
 800351e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003522:	9c07      	ldr	r4, [sp, #28]
 8003524:	4607      	mov	r7, r0
 8003526:	e004      	b.n	8003532 <_vfprintf_r+0xcda>
 8003528:	3308      	adds	r3, #8
 800352a:	3d10      	subs	r5, #16
 800352c:	2d10      	cmp	r5, #16
 800352e:	f340 83c7 	ble.w	8003cc0 <_vfprintf_r+0x1468>
 8003532:	3201      	adds	r2, #1
 8003534:	3110      	adds	r1, #16
 8003536:	2a07      	cmp	r2, #7
 8003538:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800353c:	e9c3 7600 	strd	r7, r6, [r3]
 8003540:	ddf2      	ble.n	8003528 <_vfprintf_r+0xcd0>
 8003542:	aa2a      	add	r2, sp, #168	; 0xa8
 8003544:	4621      	mov	r1, r4
 8003546:	4648      	mov	r0, r9
 8003548:	f003 fcb4 	bl	8006eb4 <__sprint_r>
 800354c:	2800      	cmp	r0, #0
 800354e:	f040 84a5 	bne.w	8003e9c <_vfprintf_r+0x1644>
 8003552:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003556:	ab2d      	add	r3, sp, #180	; 0xb4
 8003558:	e7e7      	b.n	800352a <_vfprintf_r+0xcd2>
 800355a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800355e:	af56      	add	r7, sp, #344	; 0x158
 8003560:	f7ff bafb 	b.w	8002b5a <_vfprintf_r+0x302>
 8003564:	f1b9 0f00 	cmp.w	r9, #0
 8003568:	f77f af4c 	ble.w	8003404 <_vfprintf_r+0xbac>
 800356c:	f1b9 0f10 	cmp.w	r9, #16
 8003570:	4b13      	ldr	r3, [pc, #76]	; (80035c0 <_vfprintf_r+0xd68>)
 8003572:	f340 8659 	ble.w	8004228 <_vfprintf_r+0x19d0>
 8003576:	4619      	mov	r1, r3
 8003578:	4622      	mov	r2, r4
 800357a:	4633      	mov	r3, r6
 800357c:	2710      	movs	r7, #16
 800357e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003582:	9c07      	ldr	r4, [sp, #28]
 8003584:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003586:	460e      	mov	r6, r1
 8003588:	e007      	b.n	800359a <_vfprintf_r+0xd42>
 800358a:	3308      	adds	r3, #8
 800358c:	f1a9 0910 	sub.w	r9, r9, #16
 8003590:	f1b9 0f10 	cmp.w	r9, #16
 8003594:	f340 8353 	ble.w	8003c3e <_vfprintf_r+0x13e6>
 8003598:	3501      	adds	r5, #1
 800359a:	3210      	adds	r2, #16
 800359c:	2d07      	cmp	r5, #7
 800359e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80035a2:	e9c3 6700 	strd	r6, r7, [r3]
 80035a6:	ddf0      	ble.n	800358a <_vfprintf_r+0xd32>
 80035a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035aa:	4621      	mov	r1, r4
 80035ac:	4658      	mov	r0, fp
 80035ae:	f003 fc81 	bl	8006eb4 <__sprint_r>
 80035b2:	2800      	cmp	r0, #0
 80035b4:	f040 8472 	bne.w	8003e9c <_vfprintf_r+0x1644>
 80035b8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80035bc:	ab2d      	add	r3, sp, #180	; 0xb4
 80035be:	e7e5      	b.n	800358c <_vfprintf_r+0xd34>
 80035c0:	0800803c 	.word	0x0800803c
 80035c4:	f018 0f01 	tst.w	r8, #1
 80035c8:	f47f aee0 	bne.w	800338c <_vfprintf_r+0xb34>
 80035cc:	2201      	movs	r2, #1
 80035ce:	2d07      	cmp	r5, #7
 80035d0:	f8cb 7000 	str.w	r7, [fp]
 80035d4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80035d8:	f8cb 2004 	str.w	r2, [fp, #4]
 80035dc:	dc04      	bgt.n	80035e8 <_vfprintf_r+0xd90>
 80035de:	3302      	adds	r3, #2
 80035e0:	9309      	str	r3, [sp, #36]	; 0x24
 80035e2:	f10b 0b10 	add.w	fp, fp, #16
 80035e6:	e70d      	b.n	8003404 <_vfprintf_r+0xbac>
 80035e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035ea:	9907      	ldr	r1, [sp, #28]
 80035ec:	9803      	ldr	r0, [sp, #12]
 80035ee:	f003 fc61 	bl	8006eb4 <__sprint_r>
 80035f2:	2800      	cmp	r0, #0
 80035f4:	f47f aea8 	bne.w	8003348 <_vfprintf_r+0xaf0>
 80035f8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80035fc:	3301      	adds	r3, #1
 80035fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003600:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003604:	ae2d      	add	r6, sp, #180	; 0xb4
 8003606:	e6fd      	b.n	8003404 <_vfprintf_r+0xbac>
 8003608:	aa2a      	add	r2, sp, #168	; 0xa8
 800360a:	9907      	ldr	r1, [sp, #28]
 800360c:	9803      	ldr	r0, [sp, #12]
 800360e:	f003 fc51 	bl	8006eb4 <__sprint_r>
 8003612:	2800      	cmp	r0, #0
 8003614:	f47f ae98 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003618:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800361c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800361e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003622:	f7ff baf6 	b.w	8002c12 <_vfprintf_r+0x3ba>
 8003626:	aa2a      	add	r2, sp, #168	; 0xa8
 8003628:	9907      	ldr	r1, [sp, #28]
 800362a:	9803      	ldr	r0, [sp, #12]
 800362c:	f003 fc42 	bl	8006eb4 <__sprint_r>
 8003630:	2800      	cmp	r0, #0
 8003632:	f47f ae89 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003636:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003638:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800363c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800363e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003642:	443b      	add	r3, r7
 8003644:	4699      	mov	r9, r3
 8003646:	f040 8357 	bne.w	8003cf8 <_vfprintf_r+0x14a0>
 800364a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800364c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800364e:	4293      	cmp	r3, r2
 8003650:	db49      	blt.n	80036e6 <_vfprintf_r+0xe8e>
 8003652:	f018 0f01 	tst.w	r8, #1
 8003656:	d146      	bne.n	80036e6 <_vfprintf_r+0xe8e>
 8003658:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800365a:	18bd      	adds	r5, r7, r2
 800365c:	eba5 0509 	sub.w	r5, r5, r9
 8003660:	1ad3      	subs	r3, r2, r3
 8003662:	429d      	cmp	r5, r3
 8003664:	bfa8      	it	ge
 8003666:	461d      	movge	r5, r3
 8003668:	2d00      	cmp	r5, #0
 800366a:	dd0d      	ble.n	8003688 <_vfprintf_r+0xe30>
 800366c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800366e:	f8cb 9000 	str.w	r9, [fp]
 8003672:	3201      	adds	r2, #1
 8003674:	442c      	add	r4, r5
 8003676:	2a07      	cmp	r2, #7
 8003678:	942c      	str	r4, [sp, #176]	; 0xb0
 800367a:	f8cb 5004 	str.w	r5, [fp, #4]
 800367e:	922b      	str	r2, [sp, #172]	; 0xac
 8003680:	f300 8462 	bgt.w	8003f48 <_vfprintf_r+0x16f0>
 8003684:	f10b 0b08 	add.w	fp, fp, #8
 8003688:	2d00      	cmp	r5, #0
 800368a:	bfac      	ite	ge
 800368c:	1b5d      	subge	r5, r3, r5
 800368e:	461d      	movlt	r5, r3
 8003690:	2d00      	cmp	r5, #0
 8003692:	f77f ab32 	ble.w	8002cfa <_vfprintf_r+0x4a2>
 8003696:	2d10      	cmp	r5, #16
 8003698:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800369a:	4bc5      	ldr	r3, [pc, #788]	; (80039b0 <_vfprintf_r+0x1158>)
 800369c:	f340 80c4 	ble.w	8003828 <_vfprintf_r+0xfd0>
 80036a0:	4619      	mov	r1, r3
 80036a2:	2610      	movs	r6, #16
 80036a4:	4623      	mov	r3, r4
 80036a6:	9f03      	ldr	r7, [sp, #12]
 80036a8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80036ac:	460c      	mov	r4, r1
 80036ae:	e005      	b.n	80036bc <_vfprintf_r+0xe64>
 80036b0:	f10b 0b08 	add.w	fp, fp, #8
 80036b4:	3d10      	subs	r5, #16
 80036b6:	2d10      	cmp	r5, #16
 80036b8:	f340 80b3 	ble.w	8003822 <_vfprintf_r+0xfca>
 80036bc:	3201      	adds	r2, #1
 80036be:	3310      	adds	r3, #16
 80036c0:	2a07      	cmp	r2, #7
 80036c2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80036c6:	e9cb 4600 	strd	r4, r6, [fp]
 80036ca:	ddf1      	ble.n	80036b0 <_vfprintf_r+0xe58>
 80036cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80036ce:	4649      	mov	r1, r9
 80036d0:	4638      	mov	r0, r7
 80036d2:	f003 fbef 	bl	8006eb4 <__sprint_r>
 80036d6:	2800      	cmp	r0, #0
 80036d8:	f47f ae38 	bne.w	800334c <_vfprintf_r+0xaf4>
 80036dc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80036e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036e4:	e7e6      	b.n	80036b4 <_vfprintf_r+0xe5c>
 80036e6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036e8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036ea:	f8cb 1000 	str.w	r1, [fp]
 80036ee:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036f0:	f8cb 1004 	str.w	r1, [fp, #4]
 80036f4:	3201      	adds	r2, #1
 80036f6:	440c      	add	r4, r1
 80036f8:	2a07      	cmp	r2, #7
 80036fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80036fc:	922b      	str	r2, [sp, #172]	; 0xac
 80036fe:	f300 828c 	bgt.w	8003c1a <_vfprintf_r+0x13c2>
 8003702:	f10b 0b08 	add.w	fp, fp, #8
 8003706:	e7a7      	b.n	8003658 <_vfprintf_r+0xe00>
 8003708:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800370c:	f002 fa94 	bl	8005c38 <__retarget_lock_release_recursive>
 8003710:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003714:	e628      	b.n	8003368 <_vfprintf_r+0xb10>
 8003716:	aa2a      	add	r2, sp, #168	; 0xa8
 8003718:	9907      	ldr	r1, [sp, #28]
 800371a:	9803      	ldr	r0, [sp, #12]
 800371c:	f003 fbca 	bl	8006eb4 <__sprint_r>
 8003720:	2800      	cmp	r0, #0
 8003722:	f47f ae11 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003726:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800372a:	ae2d      	add	r6, sp, #180	; 0xb4
 800372c:	e638      	b.n	80033a0 <_vfprintf_r+0xb48>
 800372e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003730:	9907      	ldr	r1, [sp, #28]
 8003732:	9803      	ldr	r0, [sp, #12]
 8003734:	f003 fbbe 	bl	8006eb4 <__sprint_r>
 8003738:	2800      	cmp	r0, #0
 800373a:	f47f ae05 	bne.w	8003348 <_vfprintf_r+0xaf0>
 800373e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003742:	ae2d      	add	r6, sp, #180	; 0xb4
 8003744:	930b      	str	r3, [sp, #44]	; 0x2c
 8003746:	e638      	b.n	80033ba <_vfprintf_r+0xb62>
 8003748:	6814      	ldr	r4, [r2, #0]
 800374a:	9308      	str	r3, [sp, #32]
 800374c:	2500      	movs	r5, #0
 800374e:	f7ff bb95 	b.w	8002e7c <_vfprintf_r+0x624>
 8003752:	6814      	ldr	r4, [r2, #0]
 8003754:	9308      	str	r3, [sp, #32]
 8003756:	2500      	movs	r5, #0
 8003758:	f7ff b9ae 	b.w	8002ab8 <_vfprintf_r+0x260>
 800375c:	680c      	ldr	r4, [r1, #0]
 800375e:	9208      	str	r2, [sp, #32]
 8003760:	17e5      	asrs	r5, r4, #31
 8003762:	4620      	mov	r0, r4
 8003764:	4629      	mov	r1, r5
 8003766:	f7ff b9d2 	b.w	8002b0e <_vfprintf_r+0x2b6>
 800376a:	6814      	ldr	r4, [r2, #0]
 800376c:	9108      	str	r1, [sp, #32]
 800376e:	2201      	movs	r2, #1
 8003770:	2500      	movs	r5, #0
 8003772:	f7ff bb32 	b.w	8002dda <_vfprintf_r+0x582>
 8003776:	2a01      	cmp	r2, #1
 8003778:	f47f ab3c 	bne.w	8002df4 <_vfprintf_r+0x59c>
 800377c:	e68f      	b.n	800349e <_vfprintf_r+0xc46>
 800377e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003782:	2200      	movs	r2, #0
 8003784:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003788:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800378c:	af56      	add	r7, sp, #344	; 0x158
 800378e:	4692      	mov	sl, r2
 8003790:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003794:	461e      	mov	r6, r3
 8003796:	e00a      	b.n	80037ae <_vfprintf_r+0xf56>
 8003798:	2300      	movs	r3, #0
 800379a:	4620      	mov	r0, r4
 800379c:	4629      	mov	r1, r5
 800379e:	220a      	movs	r2, #10
 80037a0:	f7fd f9fc 	bl	8000b9c <__aeabi_uldivmod>
 80037a4:	4604      	mov	r4, r0
 80037a6:	460d      	mov	r5, r1
 80037a8:	ea54 0305 	orrs.w	r3, r4, r5
 80037ac:	d029      	beq.n	8003802 <_vfprintf_r+0xfaa>
 80037ae:	220a      	movs	r2, #10
 80037b0:	2300      	movs	r3, #0
 80037b2:	4620      	mov	r0, r4
 80037b4:	4629      	mov	r1, r5
 80037b6:	f7fd f9f1 	bl	8000b9c <__aeabi_uldivmod>
 80037ba:	3230      	adds	r2, #48	; 0x30
 80037bc:	f807 2c01 	strb.w	r2, [r7, #-1]
 80037c0:	f10a 0a01 	add.w	sl, sl, #1
 80037c4:	3f01      	subs	r7, #1
 80037c6:	2e00      	cmp	r6, #0
 80037c8:	d0e6      	beq.n	8003798 <_vfprintf_r+0xf40>
 80037ca:	f898 3000 	ldrb.w	r3, [r8]
 80037ce:	459a      	cmp	sl, r3
 80037d0:	d1e2      	bne.n	8003798 <_vfprintf_r+0xf40>
 80037d2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80037d6:	d0df      	beq.n	8003798 <_vfprintf_r+0xf40>
 80037d8:	2d00      	cmp	r5, #0
 80037da:	bf08      	it	eq
 80037dc:	2c0a      	cmpeq	r4, #10
 80037de:	d3db      	bcc.n	8003798 <_vfprintf_r+0xf40>
 80037e0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80037e2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80037e4:	1aff      	subs	r7, r7, r3
 80037e6:	461a      	mov	r2, r3
 80037e8:	4638      	mov	r0, r7
 80037ea:	f003 faf5 	bl	8006dd8 <strncpy>
 80037ee:	f898 3001 	ldrb.w	r3, [r8, #1]
 80037f2:	2b00      	cmp	r3, #0
 80037f4:	f000 8496 	beq.w	8004124 <_vfprintf_r+0x18cc>
 80037f8:	f108 0801 	add.w	r8, r8, #1
 80037fc:	f04f 0a00 	mov.w	sl, #0
 8003800:	e7ca      	b.n	8003798 <_vfprintf_r+0xf40>
 8003802:	9b04      	ldr	r3, [sp, #16]
 8003804:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003808:	1bdb      	subs	r3, r3, r7
 800380a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800380e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003810:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003814:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003818:	9309      	str	r3, [sp, #36]	; 0x24
 800381a:	f7ff b99e 	b.w	8002b5a <_vfprintf_r+0x302>
 800381e:	46c1      	mov	r9, r8
 8003820:	e594      	b.n	800334c <_vfprintf_r+0xaf4>
 8003822:	4621      	mov	r1, r4
 8003824:	461c      	mov	r4, r3
 8003826:	460b      	mov	r3, r1
 8003828:	3201      	adds	r2, #1
 800382a:	442c      	add	r4, r5
 800382c:	2a07      	cmp	r2, #7
 800382e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003832:	e9cb 3500 	strd	r3, r5, [fp]
 8003836:	f77f aa5e 	ble.w	8002cf6 <_vfprintf_r+0x49e>
 800383a:	e5ee      	b.n	800341a <_vfprintf_r+0xbc2>
 800383c:	f018 0f10 	tst.w	r8, #16
 8003840:	f040 80f8 	bne.w	8003a34 <_vfprintf_r+0x11dc>
 8003844:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003848:	f000 8351 	beq.w	8003eee <_vfprintf_r+0x1696>
 800384c:	9a05      	ldr	r2, [sp, #20]
 800384e:	801a      	strh	r2, [r3, #0]
 8003850:	4657      	mov	r7, sl
 8003852:	f7ff baa7 	b.w	8002da4 <_vfprintf_r+0x54c>
 8003856:	aa2a      	add	r2, sp, #168	; 0xa8
 8003858:	9907      	ldr	r1, [sp, #28]
 800385a:	9803      	ldr	r0, [sp, #12]
 800385c:	f003 fb2a 	bl	8006eb4 <__sprint_r>
 8003860:	2800      	cmp	r0, #0
 8003862:	f47f ad71 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003866:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003868:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800386c:	f7ff b9f5 	b.w	8002c5a <_vfprintf_r+0x402>
 8003870:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003874:	4602      	mov	r2, r0
 8003876:	460b      	mov	r3, r1
 8003878:	f7fd fc82 	bl	8001180 <__aeabi_dcmpun>
 800387c:	2800      	cmp	r0, #0
 800387e:	f040 8491 	bne.w	80041a4 <_vfprintf_r+0x194c>
 8003882:	2e61      	cmp	r6, #97	; 0x61
 8003884:	f000 8111 	beq.w	8003aaa <_vfprintf_r+0x1252>
 8003888:	2e41      	cmp	r6, #65	; 0x41
 800388a:	f000 8377 	beq.w	8003f7c <_vfprintf_r+0x1724>
 800388e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003892:	f026 0220 	bic.w	r2, r6, #32
 8003896:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800389a:	930e      	str	r3, [sp, #56]	; 0x38
 800389c:	9204      	str	r2, [sp, #16]
 800389e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80038a0:	f000 842d 	beq.w	80040fe <_vfprintf_r+0x18a6>
 80038a4:	2a47      	cmp	r2, #71	; 0x47
 80038a6:	f000 8424 	beq.w	80040f2 <_vfprintf_r+0x189a>
 80038aa:	2b00      	cmp	r3, #0
 80038ac:	f2c0 82f9 	blt.w	8003ea2 <_vfprintf_r+0x164a>
 80038b0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80038b4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80038b8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80038bc:	2e66      	cmp	r6, #102	; 0x66
 80038be:	f000 83eb 	beq.w	8004098 <_vfprintf_r+0x1840>
 80038c2:	2e46      	cmp	r6, #70	; 0x46
 80038c4:	f000 847e 	beq.w	80041c4 <_vfprintf_r+0x196c>
 80038c8:	9b04      	ldr	r3, [sp, #16]
 80038ca:	9803      	ldr	r0, [sp, #12]
 80038cc:	2b45      	cmp	r3, #69	; 0x45
 80038ce:	bf0c      	ite	eq
 80038d0:	f109 0501 	addeq.w	r5, r9, #1
 80038d4:	464d      	movne	r5, r9
 80038d6:	aa28      	add	r2, sp, #160	; 0xa0
 80038d8:	ab25      	add	r3, sp, #148	; 0x94
 80038da:	e9cd 3200 	strd	r3, r2, [sp]
 80038de:	2102      	movs	r1, #2
 80038e0:	ab24      	add	r3, sp, #144	; 0x90
 80038e2:	462a      	mov	r2, r5
 80038e4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80038e8:	f000 fe3e 	bl	8004568 <_dtoa_r>
 80038ec:	2e67      	cmp	r6, #103	; 0x67
 80038ee:	4607      	mov	r7, r0
 80038f0:	f040 849c 	bne.w	800422c <_vfprintf_r+0x19d4>
 80038f4:	f018 0f01 	tst.w	r8, #1
 80038f8:	f040 83f9 	bne.w	80040ee <_vfprintf_r+0x1896>
 80038fc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80038fe:	4640      	mov	r0, r8
 8003900:	1bdb      	subs	r3, r3, r7
 8003902:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003906:	9310      	str	r3, [sp, #64]	; 0x40
 8003908:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800390a:	9311      	str	r3, [sp, #68]	; 0x44
 800390c:	9b04      	ldr	r3, [sp, #16]
 800390e:	2b47      	cmp	r3, #71	; 0x47
 8003910:	f000 81e7 	beq.w	8003ce2 <_vfprintf_r+0x148a>
 8003914:	9b04      	ldr	r3, [sp, #16]
 8003916:	2b46      	cmp	r3, #70	; 0x46
 8003918:	f000 8300 	beq.w	8003f1c <_vfprintf_r+0x16c4>
 800391c:	9904      	ldr	r1, [sp, #16]
 800391e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003920:	b2f2      	uxtb	r2, r6
 8003922:	2941      	cmp	r1, #65	; 0x41
 8003924:	bf08      	it	eq
 8003926:	320f      	addeq	r2, #15
 8003928:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800392c:	bf06      	itte	eq
 800392e:	b2d2      	uxtbeq	r2, r2
 8003930:	2101      	moveq	r1, #1
 8003932:	2100      	movne	r1, #0
 8003934:	2b00      	cmp	r3, #0
 8003936:	9324      	str	r3, [sp, #144]	; 0x90
 8003938:	bfb8      	it	lt
 800393a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800393c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003940:	bfba      	itte	lt
 8003942:	f1c3 0301 	rsblt	r3, r3, #1
 8003946:	222d      	movlt	r2, #45	; 0x2d
 8003948:	222b      	movge	r2, #43	; 0x2b
 800394a:	2b09      	cmp	r3, #9
 800394c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003950:	f300 83f9 	bgt.w	8004146 <_vfprintf_r+0x18ee>
 8003954:	2900      	cmp	r1, #0
 8003956:	f040 8487 	bne.w	8004268 <_vfprintf_r+0x1a10>
 800395a:	2230      	movs	r2, #48	; 0x30
 800395c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003960:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003964:	3330      	adds	r3, #48	; 0x30
 8003966:	7013      	strb	r3, [r2, #0]
 8003968:	1c53      	adds	r3, r2, #1
 800396a:	aa26      	add	r2, sp, #152	; 0x98
 800396c:	1a9b      	subs	r3, r3, r2
 800396e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003970:	9319      	str	r3, [sp, #100]	; 0x64
 8003972:	2a01      	cmp	r2, #1
 8003974:	4413      	add	r3, r2
 8003976:	9309      	str	r3, [sp, #36]	; 0x24
 8003978:	f340 8442 	ble.w	8004200 <_vfprintf_r+0x19a8>
 800397c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800397e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003980:	4413      	add	r3, r2
 8003982:	9309      	str	r3, [sp, #36]	; 0x24
 8003984:	2300      	movs	r3, #0
 8003986:	930f      	str	r3, [sp, #60]	; 0x3c
 8003988:	9314      	str	r3, [sp, #80]	; 0x50
 800398a:	9311      	str	r3, [sp, #68]	; 0x44
 800398c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800398e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003992:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003996:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800399a:	9304      	str	r3, [sp, #16]
 800399c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800399e:	2b00      	cmp	r3, #0
 80039a0:	f040 8275 	bne.w	8003e8e <_vfprintf_r+0x1636>
 80039a4:	4699      	mov	r9, r3
 80039a6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80039aa:	f7ff b8e2 	b.w	8002b72 <_vfprintf_r+0x31a>
 80039ae:	bf00      	nop
 80039b0:	0800803c 	.word	0x0800803c
 80039b4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039b6:	49bd      	ldr	r1, [pc, #756]	; (8003cac <_vfprintf_r+0x1454>)
 80039b8:	f8cb 1000 	str.w	r1, [fp]
 80039bc:	3201      	adds	r2, #1
 80039be:	3401      	adds	r4, #1
 80039c0:	2101      	movs	r1, #1
 80039c2:	2a07      	cmp	r2, #7
 80039c4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039c8:	f8cb 1004 	str.w	r1, [fp, #4]
 80039cc:	dc60      	bgt.n	8003a90 <_vfprintf_r+0x1238>
 80039ce:	f10b 0b08 	add.w	fp, fp, #8
 80039d2:	b92b      	cbnz	r3, 80039e0 <_vfprintf_r+0x1188>
 80039d4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039d6:	b91a      	cbnz	r2, 80039e0 <_vfprintf_r+0x1188>
 80039d8:	f018 0f01 	tst.w	r8, #1
 80039dc:	f43f a98d 	beq.w	8002cfa <_vfprintf_r+0x4a2>
 80039e0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039e2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80039e4:	f8cb 1000 	str.w	r1, [fp]
 80039e8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80039ea:	f8cb 1004 	str.w	r1, [fp, #4]
 80039ee:	3201      	adds	r2, #1
 80039f0:	440c      	add	r4, r1
 80039f2:	2a07      	cmp	r2, #7
 80039f4:	942c      	str	r4, [sp, #176]	; 0xb0
 80039f6:	922b      	str	r2, [sp, #172]	; 0xac
 80039f8:	f300 8282 	bgt.w	8003f00 <_vfprintf_r+0x16a8>
 80039fc:	f10b 0b08 	add.w	fp, fp, #8
 8003a00:	2b00      	cmp	r3, #0
 8003a02:	f2c0 82e7 	blt.w	8003fd4 <_vfprintf_r+0x177c>
 8003a06:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a08:	3201      	adds	r2, #1
 8003a0a:	441c      	add	r4, r3
 8003a0c:	2a07      	cmp	r2, #7
 8003a0e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a12:	e9cb 7300 	strd	r7, r3, [fp]
 8003a16:	f77f a96e 	ble.w	8002cf6 <_vfprintf_r+0x49e>
 8003a1a:	e4fe      	b.n	800341a <_vfprintf_r+0xbc2>
 8003a1c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a1e:	9907      	ldr	r1, [sp, #28]
 8003a20:	9803      	ldr	r0, [sp, #12]
 8003a22:	f003 fa47 	bl	8006eb4 <__sprint_r>
 8003a26:	2800      	cmp	r0, #0
 8003a28:	f47f ac8e 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003a2c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a30:	f7ff bbf0 	b.w	8003214 <_vfprintf_r+0x9bc>
 8003a34:	9a05      	ldr	r2, [sp, #20]
 8003a36:	601a      	str	r2, [r3, #0]
 8003a38:	4657      	mov	r7, sl
 8003a3a:	f7ff b9b3 	b.w	8002da4 <_vfprintf_r+0x54c>
 8003a3e:	8814      	ldrh	r4, [r2, #0]
 8003a40:	9108      	str	r1, [sp, #32]
 8003a42:	2500      	movs	r5, #0
 8003a44:	2201      	movs	r2, #1
 8003a46:	f7ff b9c8 	b.w	8002dda <_vfprintf_r+0x582>
 8003a4a:	8814      	ldrh	r4, [r2, #0]
 8003a4c:	9308      	str	r3, [sp, #32]
 8003a4e:	2500      	movs	r5, #0
 8003a50:	f7ff ba14 	b.w	8002e7c <_vfprintf_r+0x624>
 8003a54:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003a58:	9208      	str	r2, [sp, #32]
 8003a5a:	17e5      	asrs	r5, r4, #31
 8003a5c:	4620      	mov	r0, r4
 8003a5e:	4629      	mov	r1, r5
 8003a60:	f7ff b855 	b.w	8002b0e <_vfprintf_r+0x2b6>
 8003a64:	8814      	ldrh	r4, [r2, #0]
 8003a66:	9308      	str	r3, [sp, #32]
 8003a68:	2500      	movs	r5, #0
 8003a6a:	f7ff b825 	b.w	8002ab8 <_vfprintf_r+0x260>
 8003a6e:	222d      	movs	r2, #45	; 0x2d
 8003a70:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a74:	f7ff baa2 	b.w	8002fbc <_vfprintf_r+0x764>
 8003a78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7a:	9907      	ldr	r1, [sp, #28]
 8003a7c:	9803      	ldr	r0, [sp, #12]
 8003a7e:	f003 fa19 	bl	8006eb4 <__sprint_r>
 8003a82:	2800      	cmp	r0, #0
 8003a84:	f47f ac60 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003a88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a8a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a8e:	e534      	b.n	80034fa <_vfprintf_r+0xca2>
 8003a90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a92:	9907      	ldr	r1, [sp, #28]
 8003a94:	9803      	ldr	r0, [sp, #12]
 8003a96:	f003 fa0d 	bl	8006eb4 <__sprint_r>
 8003a9a:	2800      	cmp	r0, #0
 8003a9c:	f47f ac54 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003aa0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003aa2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003aa4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aa8:	e793      	b.n	80039d2 <_vfprintf_r+0x117a>
 8003aaa:	2330      	movs	r3, #48	; 0x30
 8003aac:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ab0:	2378      	movs	r3, #120	; 0x78
 8003ab2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003ab6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003aba:	f048 0402 	orr.w	r4, r8, #2
 8003abe:	f300 82b0 	bgt.w	8004022 <_vfprintf_r+0x17ca>
 8003ac2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ac6:	930e      	str	r3, [sp, #56]	; 0x38
 8003ac8:	f026 0320 	bic.w	r3, r6, #32
 8003acc:	9304      	str	r3, [sp, #16]
 8003ace:	2200      	movs	r2, #0
 8003ad0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ad2:	920a      	str	r2, [sp, #40]	; 0x28
 8003ad4:	46a0      	mov	r8, r4
 8003ad6:	af3d      	add	r7, sp, #244	; 0xf4
 8003ad8:	2b00      	cmp	r3, #0
 8003ada:	f2c0 81e3 	blt.w	8003ea4 <_vfprintf_r+0x164c>
 8003ade:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003ae2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003ae6:	2300      	movs	r3, #0
 8003ae8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003aea:	2e61      	cmp	r6, #97	; 0x61
 8003aec:	f000 8255 	beq.w	8003f9a <_vfprintf_r+0x1742>
 8003af0:	2e41      	cmp	r6, #65	; 0x41
 8003af2:	f47f aee3 	bne.w	80038bc <_vfprintf_r+0x1064>
 8003af6:	a824      	add	r0, sp, #144	; 0x90
 8003af8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003afc:	f003 f8e2 	bl	8006cc4 <frexp>
 8003b00:	2200      	movs	r2, #0
 8003b02:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b06:	ec51 0b10 	vmov	r0, r1, d0
 8003b0a:	f7fc fd35 	bl	8000578 <__aeabi_dmul>
 8003b0e:	2200      	movs	r2, #0
 8003b10:	2300      	movs	r3, #0
 8003b12:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b16:	f7fc ff97 	bl	8000a48 <__aeabi_dcmpeq>
 8003b1a:	2800      	cmp	r0, #0
 8003b1c:	f040 8305 	bne.w	800412a <_vfprintf_r+0x18d2>
 8003b20:	4b63      	ldr	r3, [pc, #396]	; (8003cb0 <_vfprintf_r+0x1458>)
 8003b22:	9309      	str	r3, [sp, #36]	; 0x24
 8003b24:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003b28:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003b2c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003b30:	9721      	str	r7, [sp, #132]	; 0x84
 8003b32:	46b9      	mov	r9, r7
 8003b34:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003b38:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003b3c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003b40:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003b44:	e003      	b.n	8003b4e <_vfprintf_r+0x12f6>
 8003b46:	f7fc ff7f 	bl	8000a48 <__aeabi_dcmpeq>
 8003b4a:	bb20      	cbnz	r0, 8003b96 <_vfprintf_r+0x133e>
 8003b4c:	46a9      	mov	r9, r5
 8003b4e:	2200      	movs	r2, #0
 8003b50:	4b58      	ldr	r3, [pc, #352]	; (8003cb4 <_vfprintf_r+0x145c>)
 8003b52:	4630      	mov	r0, r6
 8003b54:	4639      	mov	r1, r7
 8003b56:	f7fc fd0f 	bl	8000578 <__aeabi_dmul>
 8003b5a:	460f      	mov	r7, r1
 8003b5c:	4606      	mov	r6, r0
 8003b5e:	f7fc ffa5 	bl	8000aac <__aeabi_d2iz>
 8003b62:	4680      	mov	r8, r0
 8003b64:	f7fc fc9e 	bl	80004a4 <__aeabi_i2d>
 8003b68:	4602      	mov	r2, r0
 8003b6a:	460b      	mov	r3, r1
 8003b6c:	4630      	mov	r0, r6
 8003b6e:	4639      	mov	r1, r7
 8003b70:	f7fc fb4a 	bl	8000208 <__aeabi_dsub>
 8003b74:	464d      	mov	r5, r9
 8003b76:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003b7a:	f805 cb01 	strb.w	ip, [r5], #1
 8003b7e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003b82:	46a3      	mov	fp, r4
 8003b84:	4606      	mov	r6, r0
 8003b86:	460f      	mov	r7, r1
 8003b88:	f04f 0200 	mov.w	r2, #0
 8003b8c:	f04f 0300 	mov.w	r3, #0
 8003b90:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003b94:	d1d7      	bne.n	8003b46 <_vfprintf_r+0x12ee>
 8003b96:	4630      	mov	r0, r6
 8003b98:	4639      	mov	r1, r7
 8003b9a:	2200      	movs	r2, #0
 8003b9c:	4b46      	ldr	r3, [pc, #280]	; (8003cb8 <_vfprintf_r+0x1460>)
 8003b9e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003ba2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003ba4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003ba8:	4644      	mov	r4, r8
 8003baa:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003bae:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003bb2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003bb6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003bba:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003bbc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bc0:	f7fc ff6a 	bl	8000a98 <__aeabi_dcmpgt>
 8003bc4:	2800      	cmp	r0, #0
 8003bc6:	f040 8176 	bne.w	8003eb6 <_vfprintf_r+0x165e>
 8003bca:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003bce:	2200      	movs	r2, #0
 8003bd0:	4b39      	ldr	r3, [pc, #228]	; (8003cb8 <_vfprintf_r+0x1460>)
 8003bd2:	f7fc ff39 	bl	8000a48 <__aeabi_dcmpeq>
 8003bd6:	b110      	cbz	r0, 8003bde <_vfprintf_r+0x1386>
 8003bd8:	07e2      	lsls	r2, r4, #31
 8003bda:	f100 816c 	bmi.w	8003eb6 <_vfprintf_r+0x165e>
 8003bde:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003be0:	2b00      	cmp	r3, #0
 8003be2:	db07      	blt.n	8003bf4 <_vfprintf_r+0x139c>
 8003be4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003be6:	3301      	adds	r3, #1
 8003be8:	442b      	add	r3, r5
 8003bea:	2230      	movs	r2, #48	; 0x30
 8003bec:	f805 2b01 	strb.w	r2, [r5], #1
 8003bf0:	42ab      	cmp	r3, r5
 8003bf2:	d1fb      	bne.n	8003bec <_vfprintf_r+0x1394>
 8003bf4:	1beb      	subs	r3, r5, r7
 8003bf6:	4640      	mov	r0, r8
 8003bf8:	9310      	str	r3, [sp, #64]	; 0x40
 8003bfa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003bfe:	e683      	b.n	8003908 <_vfprintf_r+0x10b0>
 8003c00:	f8cd 9010 	str.w	r9, [sp, #16]
 8003c04:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003c08:	9408      	str	r4, [sp, #32]
 8003c0a:	4681      	mov	r9, r0
 8003c0c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003c0e:	9014      	str	r0, [sp, #80]	; 0x50
 8003c10:	9011      	str	r0, [sp, #68]	; 0x44
 8003c12:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003c16:	f7fe bfac 	b.w	8002b72 <_vfprintf_r+0x31a>
 8003c1a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c1c:	9907      	ldr	r1, [sp, #28]
 8003c1e:	9803      	ldr	r0, [sp, #12]
 8003c20:	f003 f948 	bl	8006eb4 <__sprint_r>
 8003c24:	2800      	cmp	r0, #0
 8003c26:	f47f ab8f 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003c2a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c2c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c32:	e511      	b.n	8003658 <_vfprintf_r+0xe00>
 8003c34:	4252      	negs	r2, r2
 8003c36:	9206      	str	r2, [sp, #24]
 8003c38:	9308      	str	r3, [sp, #32]
 8003c3a:	f7ff b96d 	b.w	8002f18 <_vfprintf_r+0x6c0>
 8003c3e:	4614      	mov	r4, r2
 8003c40:	4632      	mov	r2, r6
 8003c42:	461e      	mov	r6, r3
 8003c44:	4613      	mov	r3, r2
 8003c46:	462a      	mov	r2, r5
 8003c48:	3201      	adds	r2, #1
 8003c4a:	9209      	str	r2, [sp, #36]	; 0x24
 8003c4c:	f106 0208 	add.w	r2, r6, #8
 8003c50:	e9c6 3900 	strd	r3, r9, [r6]
 8003c54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c56:	932b      	str	r3, [sp, #172]	; 0xac
 8003c58:	444c      	add	r4, r9
 8003c5a:	2b07      	cmp	r3, #7
 8003c5c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c5e:	f73f acc3 	bgt.w	80035e8 <_vfprintf_r+0xd90>
 8003c62:	3301      	adds	r3, #1
 8003c64:	9309      	str	r3, [sp, #36]	; 0x24
 8003c66:	f102 0b08 	add.w	fp, r2, #8
 8003c6a:	4616      	mov	r6, r2
 8003c6c:	f7ff bbca 	b.w	8003404 <_vfprintf_r+0xbac>
 8003c70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c72:	9907      	ldr	r1, [sp, #28]
 8003c74:	9803      	ldr	r0, [sp, #12]
 8003c76:	f003 f91d 	bl	8006eb4 <__sprint_r>
 8003c7a:	2800      	cmp	r0, #0
 8003c7c:	f47f ab64 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003c80:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c82:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c86:	f7ff bade 	b.w	8003246 <_vfprintf_r+0x9ee>
 8003c8a:	464b      	mov	r3, r9
 8003c8c:	2b06      	cmp	r3, #6
 8003c8e:	bf28      	it	cs
 8003c90:	2306      	movcs	r3, #6
 8003c92:	46b9      	mov	r9, r7
 8003c94:	970f      	str	r7, [sp, #60]	; 0x3c
 8003c96:	9714      	str	r7, [sp, #80]	; 0x50
 8003c98:	9711      	str	r7, [sp, #68]	; 0x44
 8003c9a:	970a      	str	r7, [sp, #40]	; 0x28
 8003c9c:	463a      	mov	r2, r7
 8003c9e:	9304      	str	r3, [sp, #16]
 8003ca0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003ca4:	4f05      	ldr	r7, [pc, #20]	; (8003cbc <_vfprintf_r+0x1464>)
 8003ca6:	f7fe bf64 	b.w	8002b72 <_vfprintf_r+0x31a>
 8003caa:	bf00      	nop
 8003cac:	08008028 	.word	0x08008028
 8003cb0:	0800800c 	.word	0x0800800c
 8003cb4:	40300000 	.word	0x40300000
 8003cb8:	3fe00000 	.word	0x3fe00000
 8003cbc:	08008020 	.word	0x08008020
 8003cc0:	460c      	mov	r4, r1
 8003cc2:	4639      	mov	r1, r7
 8003cc4:	465f      	mov	r7, fp
 8003cc6:	469b      	mov	fp, r3
 8003cc8:	460b      	mov	r3, r1
 8003cca:	3201      	adds	r2, #1
 8003ccc:	442c      	add	r4, r5
 8003cce:	2a07      	cmp	r2, #7
 8003cd0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cd4:	e9cb 3500 	strd	r3, r5, [fp]
 8003cd8:	f73f aca5 	bgt.w	8003626 <_vfprintf_r+0xdce>
 8003cdc:	f10b 0b08 	add.w	fp, fp, #8
 8003ce0:	e4ac      	b.n	800363c <_vfprintf_r+0xde4>
 8003ce2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ce4:	1cda      	adds	r2, r3, #3
 8003ce6:	db02      	blt.n	8003cee <_vfprintf_r+0x1496>
 8003ce8:	4599      	cmp	r9, r3
 8003cea:	f280 80b5 	bge.w	8003e58 <_vfprintf_r+0x1600>
 8003cee:	3e02      	subs	r6, #2
 8003cf0:	f026 0320 	bic.w	r3, r6, #32
 8003cf4:	9304      	str	r3, [sp, #16]
 8003cf6:	e611      	b.n	800391c <_vfprintf_r+0x10c4>
 8003cf8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cfa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003cfe:	465a      	mov	r2, fp
 8003d00:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003d04:	18fb      	adds	r3, r7, r3
 8003d06:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003d0a:	970c      	str	r7, [sp, #48]	; 0x30
 8003d0c:	4eaf      	ldr	r6, [pc, #700]	; (8003fcc <_vfprintf_r+0x1774>)
 8003d0e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003d12:	9309      	str	r3, [sp, #36]	; 0x24
 8003d14:	464f      	mov	r7, r9
 8003d16:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003d1a:	4621      	mov	r1, r4
 8003d1c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d1e:	2b00      	cmp	r3, #0
 8003d20:	d05b      	beq.n	8003dda <_vfprintf_r+0x1582>
 8003d22:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d24:	2b00      	cmp	r3, #0
 8003d26:	d154      	bne.n	8003dd2 <_vfprintf_r+0x157a>
 8003d28:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d2a:	3b01      	subs	r3, #1
 8003d2c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003d30:	9314      	str	r3, [sp, #80]	; 0x50
 8003d32:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d34:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003d36:	6010      	str	r0, [r2, #0]
 8003d38:	3301      	adds	r3, #1
 8003d3a:	4459      	add	r1, fp
 8003d3c:	2b07      	cmp	r3, #7
 8003d3e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003d40:	f8c2 b004 	str.w	fp, [r2, #4]
 8003d44:	932b      	str	r3, [sp, #172]	; 0xac
 8003d46:	dc68      	bgt.n	8003e1a <_vfprintf_r+0x15c2>
 8003d48:	3208      	adds	r2, #8
 8003d4a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003d4c:	f898 3000 	ldrb.w	r3, [r8]
 8003d50:	1bc5      	subs	r5, r0, r7
 8003d52:	429d      	cmp	r5, r3
 8003d54:	bfa8      	it	ge
 8003d56:	461d      	movge	r5, r3
 8003d58:	2d00      	cmp	r5, #0
 8003d5a:	dd0b      	ble.n	8003d74 <_vfprintf_r+0x151c>
 8003d5c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d5e:	6017      	str	r7, [r2, #0]
 8003d60:	3301      	adds	r3, #1
 8003d62:	4429      	add	r1, r5
 8003d64:	2b07      	cmp	r3, #7
 8003d66:	912c      	str	r1, [sp, #176]	; 0xb0
 8003d68:	6055      	str	r5, [r2, #4]
 8003d6a:	932b      	str	r3, [sp, #172]	; 0xac
 8003d6c:	dc5e      	bgt.n	8003e2c <_vfprintf_r+0x15d4>
 8003d6e:	f898 3000 	ldrb.w	r3, [r8]
 8003d72:	3208      	adds	r2, #8
 8003d74:	2d00      	cmp	r5, #0
 8003d76:	bfac      	ite	ge
 8003d78:	1b5d      	subge	r5, r3, r5
 8003d7a:	461d      	movlt	r5, r3
 8003d7c:	2d00      	cmp	r5, #0
 8003d7e:	dd26      	ble.n	8003dce <_vfprintf_r+0x1576>
 8003d80:	2d10      	cmp	r5, #16
 8003d82:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003d84:	dd3c      	ble.n	8003e00 <_vfprintf_r+0x15a8>
 8003d86:	2410      	movs	r4, #16
 8003d88:	e003      	b.n	8003d92 <_vfprintf_r+0x153a>
 8003d8a:	3208      	adds	r2, #8
 8003d8c:	3d10      	subs	r5, #16
 8003d8e:	2d10      	cmp	r5, #16
 8003d90:	dd36      	ble.n	8003e00 <_vfprintf_r+0x15a8>
 8003d92:	3001      	adds	r0, #1
 8003d94:	3110      	adds	r1, #16
 8003d96:	2807      	cmp	r0, #7
 8003d98:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d9c:	e9c2 6400 	strd	r6, r4, [r2]
 8003da0:	ddf3      	ble.n	8003d8a <_vfprintf_r+0x1532>
 8003da2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003da4:	4651      	mov	r1, sl
 8003da6:	4648      	mov	r0, r9
 8003da8:	f003 f884 	bl	8006eb4 <__sprint_r>
 8003dac:	2800      	cmp	r0, #0
 8003dae:	d150      	bne.n	8003e52 <_vfprintf_r+0x15fa>
 8003db0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003db4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003db6:	e7e9      	b.n	8003d8c <_vfprintf_r+0x1534>
 8003db8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dba:	4651      	mov	r1, sl
 8003dbc:	4648      	mov	r0, r9
 8003dbe:	f003 f879 	bl	8006eb4 <__sprint_r>
 8003dc2:	2800      	cmp	r0, #0
 8003dc4:	d145      	bne.n	8003e52 <_vfprintf_r+0x15fa>
 8003dc6:	f898 3000 	ldrb.w	r3, [r8]
 8003dca:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003dcc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003dce:	441f      	add	r7, r3
 8003dd0:	e7a4      	b.n	8003d1c <_vfprintf_r+0x14c4>
 8003dd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dd4:	3b01      	subs	r3, #1
 8003dd6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003dd8:	e7ab      	b.n	8003d32 <_vfprintf_r+0x14da>
 8003dda:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ddc:	2b00      	cmp	r3, #0
 8003dde:	d1f8      	bne.n	8003dd2 <_vfprintf_r+0x157a>
 8003de0:	46b9      	mov	r9, r7
 8003de2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003de4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003de6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003dea:	18fb      	adds	r3, r7, r3
 8003dec:	4599      	cmp	r9, r3
 8003dee:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003df2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003df6:	4693      	mov	fp, r2
 8003df8:	460c      	mov	r4, r1
 8003dfa:	bf28      	it	cs
 8003dfc:	4699      	movcs	r9, r3
 8003dfe:	e424      	b.n	800364a <_vfprintf_r+0xdf2>
 8003e00:	3001      	adds	r0, #1
 8003e02:	4429      	add	r1, r5
 8003e04:	2807      	cmp	r0, #7
 8003e06:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003e0a:	e9c2 6500 	strd	r6, r5, [r2]
 8003e0e:	dcd3      	bgt.n	8003db8 <_vfprintf_r+0x1560>
 8003e10:	f898 3000 	ldrb.w	r3, [r8]
 8003e14:	3208      	adds	r2, #8
 8003e16:	441f      	add	r7, r3
 8003e18:	e780      	b.n	8003d1c <_vfprintf_r+0x14c4>
 8003e1a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e1c:	4651      	mov	r1, sl
 8003e1e:	4648      	mov	r0, r9
 8003e20:	f003 f848 	bl	8006eb4 <__sprint_r>
 8003e24:	b9a8      	cbnz	r0, 8003e52 <_vfprintf_r+0x15fa>
 8003e26:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e28:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e2a:	e78e      	b.n	8003d4a <_vfprintf_r+0x14f2>
 8003e2c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e2e:	4651      	mov	r1, sl
 8003e30:	4648      	mov	r0, r9
 8003e32:	f003 f83f 	bl	8006eb4 <__sprint_r>
 8003e36:	b960      	cbnz	r0, 8003e52 <_vfprintf_r+0x15fa>
 8003e38:	f898 3000 	ldrb.w	r3, [r8]
 8003e3c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e3e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e40:	e798      	b.n	8003d74 <_vfprintf_r+0x151c>
 8003e42:	4638      	mov	r0, r7
 8003e44:	f7fd f8dc 	bl	8001000 <strlen>
 8003e48:	46a9      	mov	r9, r5
 8003e4a:	4603      	mov	r3, r0
 8003e4c:	9009      	str	r0, [sp, #36]	; 0x24
 8003e4e:	f7ff b8f4 	b.w	800303a <_vfprintf_r+0x7e2>
 8003e52:	46d1      	mov	r9, sl
 8003e54:	f7ff ba7a 	b.w	800334c <_vfprintf_r+0xaf4>
 8003e58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e5a:	4619      	mov	r1, r3
 8003e5c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e5e:	4299      	cmp	r1, r3
 8003e60:	f300 8082 	bgt.w	8003f68 <_vfprintf_r+0x1710>
 8003e64:	07c4      	lsls	r4, r0, #31
 8003e66:	f140 816b 	bpl.w	8004140 <_vfprintf_r+0x18e8>
 8003e6a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e6c:	4413      	add	r3, r2
 8003e6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e70:	0541      	lsls	r1, r0, #21
 8003e72:	d503      	bpl.n	8003e7c <_vfprintf_r+0x1624>
 8003e74:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e76:	2b00      	cmp	r3, #0
 8003e78:	f300 80e6 	bgt.w	8004048 <_vfprintf_r+0x17f0>
 8003e7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e7e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e82:	9304      	str	r3, [sp, #16]
 8003e84:	2667      	movs	r6, #103	; 0x67
 8003e86:	2300      	movs	r3, #0
 8003e88:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e8a:	9314      	str	r3, [sp, #80]	; 0x50
 8003e8c:	e586      	b.n	800399c <_vfprintf_r+0x1144>
 8003e8e:	222d      	movs	r2, #45	; 0x2d
 8003e90:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003e94:	f04f 0900 	mov.w	r9, #0
 8003e98:	f7fe be6c 	b.w	8002b74 <_vfprintf_r+0x31c>
 8003e9c:	46a1      	mov	r9, r4
 8003e9e:	f7ff ba55 	b.w	800334c <_vfprintf_r+0xaf4>
 8003ea2:	900a      	str	r0, [sp, #40]	; 0x28
 8003ea4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003ea8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003eac:	931f      	str	r3, [sp, #124]	; 0x7c
 8003eae:	232d      	movs	r3, #45	; 0x2d
 8003eb0:	911e      	str	r1, [sp, #120]	; 0x78
 8003eb2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003eb4:	e619      	b.n	8003aea <_vfprintf_r+0x1292>
 8003eb6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eb8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003eba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ebc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ec0:	7bd9      	ldrb	r1, [r3, #15]
 8003ec2:	4291      	cmp	r1, r2
 8003ec4:	462b      	mov	r3, r5
 8003ec6:	d109      	bne.n	8003edc <_vfprintf_r+0x1684>
 8003ec8:	2030      	movs	r0, #48	; 0x30
 8003eca:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003ece:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ed0:	1e5a      	subs	r2, r3, #1
 8003ed2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ed4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ed8:	4291      	cmp	r1, r2
 8003eda:	d0f6      	beq.n	8003eca <_vfprintf_r+0x1672>
 8003edc:	2a39      	cmp	r2, #57	; 0x39
 8003ede:	bf0b      	itete	eq
 8003ee0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003ee2:	3201      	addne	r2, #1
 8003ee4:	7a92      	ldrbeq	r2, [r2, #10]
 8003ee6:	b2d2      	uxtbne	r2, r2
 8003ee8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003eec:	e682      	b.n	8003bf4 <_vfprintf_r+0x139c>
 8003eee:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003ef2:	f43f ad9f 	beq.w	8003a34 <_vfprintf_r+0x11dc>
 8003ef6:	9a05      	ldr	r2, [sp, #20]
 8003ef8:	701a      	strb	r2, [r3, #0]
 8003efa:	4657      	mov	r7, sl
 8003efc:	f7fe bf52 	b.w	8002da4 <_vfprintf_r+0x54c>
 8003f00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f02:	9907      	ldr	r1, [sp, #28]
 8003f04:	9803      	ldr	r0, [sp, #12]
 8003f06:	f002 ffd5 	bl	8006eb4 <__sprint_r>
 8003f0a:	2800      	cmp	r0, #0
 8003f0c:	f47f aa1c 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003f10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f12:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f16:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f1a:	e571      	b.n	8003a00 <_vfprintf_r+0x11a8>
 8003f1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f1e:	2b00      	cmp	r3, #0
 8003f20:	f340 8164 	ble.w	80041ec <_vfprintf_r+0x1994>
 8003f24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f26:	f1b9 0f00 	cmp.w	r9, #0
 8003f2a:	f040 8103 	bne.w	8004134 <_vfprintf_r+0x18dc>
 8003f2e:	07c6      	lsls	r6, r0, #31
 8003f30:	f100 8100 	bmi.w	8004134 <_vfprintf_r+0x18dc>
 8003f34:	9309      	str	r3, [sp, #36]	; 0x24
 8003f36:	2666      	movs	r6, #102	; 0x66
 8003f38:	0543      	lsls	r3, r0, #21
 8003f3a:	f100 8086 	bmi.w	800404a <_vfprintf_r+0x17f2>
 8003f3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f40:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f44:	9304      	str	r3, [sp, #16]
 8003f46:	e79e      	b.n	8003e86 <_vfprintf_r+0x162e>
 8003f48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f4a:	9907      	ldr	r1, [sp, #28]
 8003f4c:	9803      	ldr	r0, [sp, #12]
 8003f4e:	f002 ffb1 	bl	8006eb4 <__sprint_r>
 8003f52:	2800      	cmp	r0, #0
 8003f54:	f47f a9f8 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8003f58:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f5a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f5c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f5e:	1ad3      	subs	r3, r2, r3
 8003f60:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f64:	f7ff bb90 	b.w	8003688 <_vfprintf_r+0xe30>
 8003f68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f6a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f6c:	4413      	add	r3, r2
 8003f6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f70:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f72:	2b00      	cmp	r3, #0
 8003f74:	f340 8149 	ble.w	800420a <_vfprintf_r+0x19b2>
 8003f78:	2667      	movs	r6, #103	; 0x67
 8003f7a:	e7dd      	b.n	8003f38 <_vfprintf_r+0x16e0>
 8003f7c:	2330      	movs	r3, #48	; 0x30
 8003f7e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003f82:	2358      	movs	r3, #88	; 0x58
 8003f84:	e595      	b.n	8003ab2 <_vfprintf_r+0x125a>
 8003f86:	9803      	ldr	r0, [sp, #12]
 8003f88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f8a:	4649      	mov	r1, r9
 8003f8c:	f002 ff92 	bl	8006eb4 <__sprint_r>
 8003f90:	2800      	cmp	r0, #0
 8003f92:	f47f a9e0 	bne.w	8003356 <_vfprintf_r+0xafe>
 8003f96:	f7fe bf0f 	b.w	8002db8 <_vfprintf_r+0x560>
 8003f9a:	a824      	add	r0, sp, #144	; 0x90
 8003f9c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fa0:	f002 fe90 	bl	8006cc4 <frexp>
 8003fa4:	2200      	movs	r2, #0
 8003fa6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003faa:	ec51 0b10 	vmov	r0, r1, d0
 8003fae:	f7fc fae3 	bl	8000578 <__aeabi_dmul>
 8003fb2:	2200      	movs	r2, #0
 8003fb4:	2300      	movs	r3, #0
 8003fb6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003fba:	f7fc fd45 	bl	8000a48 <__aeabi_dcmpeq>
 8003fbe:	b108      	cbz	r0, 8003fc4 <_vfprintf_r+0x176c>
 8003fc0:	2301      	movs	r3, #1
 8003fc2:	9324      	str	r3, [sp, #144]	; 0x90
 8003fc4:	4b02      	ldr	r3, [pc, #8]	; (8003fd0 <_vfprintf_r+0x1778>)
 8003fc6:	9309      	str	r3, [sp, #36]	; 0x24
 8003fc8:	e5ac      	b.n	8003b24 <_vfprintf_r+0x12cc>
 8003fca:	bf00      	nop
 8003fcc:	0800803c 	.word	0x0800803c
 8003fd0:	08007ff8 	.word	0x08007ff8
 8003fd4:	425d      	negs	r5, r3
 8003fd6:	3310      	adds	r3, #16
 8003fd8:	4bb9      	ldr	r3, [pc, #740]	; (80042c0 <_vfprintf_r+0x1a68>)
 8003fda:	f280 8097 	bge.w	800410c <_vfprintf_r+0x18b4>
 8003fde:	4619      	mov	r1, r3
 8003fe0:	2610      	movs	r6, #16
 8003fe2:	4623      	mov	r3, r4
 8003fe4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003fe8:	460c      	mov	r4, r1
 8003fea:	e005      	b.n	8003ff8 <_vfprintf_r+0x17a0>
 8003fec:	f10b 0b08 	add.w	fp, fp, #8
 8003ff0:	3d10      	subs	r5, #16
 8003ff2:	2d10      	cmp	r5, #16
 8003ff4:	f340 8087 	ble.w	8004106 <_vfprintf_r+0x18ae>
 8003ff8:	3201      	adds	r2, #1
 8003ffa:	3310      	adds	r3, #16
 8003ffc:	2a07      	cmp	r2, #7
 8003ffe:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004002:	e9cb 4600 	strd	r4, r6, [fp]
 8004006:	ddf1      	ble.n	8003fec <_vfprintf_r+0x1794>
 8004008:	aa2a      	add	r2, sp, #168	; 0xa8
 800400a:	9907      	ldr	r1, [sp, #28]
 800400c:	4648      	mov	r0, r9
 800400e:	f002 ff51 	bl	8006eb4 <__sprint_r>
 8004012:	2800      	cmp	r0, #0
 8004014:	f47f a998 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8004018:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800401c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004020:	e7e6      	b.n	8003ff0 <_vfprintf_r+0x1798>
 8004022:	f109 0101 	add.w	r1, r9, #1
 8004026:	9803      	ldr	r0, [sp, #12]
 8004028:	f001 fe80 	bl	8005d2c <_malloc_r>
 800402c:	4607      	mov	r7, r0
 800402e:	2800      	cmp	r0, #0
 8004030:	f000 813b 	beq.w	80042aa <_vfprintf_r+0x1a52>
 8004034:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004038:	930e      	str	r3, [sp, #56]	; 0x38
 800403a:	f026 0320 	bic.w	r3, r6, #32
 800403e:	9304      	str	r3, [sp, #16]
 8004040:	46a0      	mov	r8, r4
 8004042:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004044:	900a      	str	r0, [sp, #40]	; 0x28
 8004046:	e547      	b.n	8003ad8 <_vfprintf_r+0x1280>
 8004048:	2667      	movs	r6, #103	; 0x67
 800404a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800404c:	2200      	movs	r2, #0
 800404e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004050:	9214      	str	r2, [sp, #80]	; 0x50
 8004052:	7803      	ldrb	r3, [r0, #0]
 8004054:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004056:	2bff      	cmp	r3, #255	; 0xff
 8004058:	d00c      	beq.n	8004074 <_vfprintf_r+0x181c>
 800405a:	4293      	cmp	r3, r2
 800405c:	da0a      	bge.n	8004074 <_vfprintf_r+0x181c>
 800405e:	7841      	ldrb	r1, [r0, #1]
 8004060:	1ad2      	subs	r2, r2, r3
 8004062:	b1a9      	cbz	r1, 8004090 <_vfprintf_r+0x1838>
 8004064:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004066:	3301      	adds	r3, #1
 8004068:	9314      	str	r3, [sp, #80]	; 0x50
 800406a:	460b      	mov	r3, r1
 800406c:	2bff      	cmp	r3, #255	; 0xff
 800406e:	f100 0001 	add.w	r0, r0, #1
 8004072:	d1f2      	bne.n	800405a <_vfprintf_r+0x1802>
 8004074:	9211      	str	r2, [sp, #68]	; 0x44
 8004076:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004078:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800407a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800407c:	901a      	str	r0, [sp, #104]	; 0x68
 800407e:	4413      	add	r3, r2
 8004080:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004082:	fb02 1303 	mla	r3, r2, r3, r1
 8004086:	9309      	str	r3, [sp, #36]	; 0x24
 8004088:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800408c:	9304      	str	r3, [sp, #16]
 800408e:	e485      	b.n	800399c <_vfprintf_r+0x1144>
 8004090:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004092:	3101      	adds	r1, #1
 8004094:	910f      	str	r1, [sp, #60]	; 0x3c
 8004096:	e7de      	b.n	8004056 <_vfprintf_r+0x17fe>
 8004098:	aa28      	add	r2, sp, #160	; 0xa0
 800409a:	ab25      	add	r3, sp, #148	; 0x94
 800409c:	e9cd 3200 	strd	r3, r2, [sp]
 80040a0:	2103      	movs	r1, #3
 80040a2:	ab24      	add	r3, sp, #144	; 0x90
 80040a4:	464a      	mov	r2, r9
 80040a6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040aa:	9803      	ldr	r0, [sp, #12]
 80040ac:	f000 fa5c 	bl	8004568 <_dtoa_r>
 80040b0:	464d      	mov	r5, r9
 80040b2:	4607      	mov	r7, r0
 80040b4:	eb00 0409 	add.w	r4, r0, r9
 80040b8:	783b      	ldrb	r3, [r7, #0]
 80040ba:	2b30      	cmp	r3, #48	; 0x30
 80040bc:	f000 80be 	beq.w	800423c <_vfprintf_r+0x19e4>
 80040c0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80040c2:	442c      	add	r4, r5
 80040c4:	2200      	movs	r2, #0
 80040c6:	2300      	movs	r3, #0
 80040c8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80040cc:	f7fc fcbc 	bl	8000a48 <__aeabi_dcmpeq>
 80040d0:	b108      	cbz	r0, 80040d6 <_vfprintf_r+0x187e>
 80040d2:	4623      	mov	r3, r4
 80040d4:	e413      	b.n	80038fe <_vfprintf_r+0x10a6>
 80040d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040d8:	42a3      	cmp	r3, r4
 80040da:	f4bf ac10 	bcs.w	80038fe <_vfprintf_r+0x10a6>
 80040de:	2130      	movs	r1, #48	; 0x30
 80040e0:	1c5a      	adds	r2, r3, #1
 80040e2:	9228      	str	r2, [sp, #160]	; 0xa0
 80040e4:	7019      	strb	r1, [r3, #0]
 80040e6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040e8:	429c      	cmp	r4, r3
 80040ea:	d8f9      	bhi.n	80040e0 <_vfprintf_r+0x1888>
 80040ec:	e407      	b.n	80038fe <_vfprintf_r+0x10a6>
 80040ee:	197c      	adds	r4, r7, r5
 80040f0:	e7e8      	b.n	80040c4 <_vfprintf_r+0x186c>
 80040f2:	f1b9 0f00 	cmp.w	r9, #0
 80040f6:	f000 8092 	beq.w	800421e <_vfprintf_r+0x19c6>
 80040fa:	900a      	str	r0, [sp, #40]	; 0x28
 80040fc:	e4ec      	b.n	8003ad8 <_vfprintf_r+0x1280>
 80040fe:	900a      	str	r0, [sp, #40]	; 0x28
 8004100:	f04f 0906 	mov.w	r9, #6
 8004104:	e4e8      	b.n	8003ad8 <_vfprintf_r+0x1280>
 8004106:	4621      	mov	r1, r4
 8004108:	461c      	mov	r4, r3
 800410a:	460b      	mov	r3, r1
 800410c:	3201      	adds	r2, #1
 800410e:	442c      	add	r4, r5
 8004110:	2a07      	cmp	r2, #7
 8004112:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004116:	e9cb 3500 	strd	r3, r5, [fp]
 800411a:	f300 80a9 	bgt.w	8004270 <_vfprintf_r+0x1a18>
 800411e:	f10b 0b08 	add.w	fp, fp, #8
 8004122:	e470      	b.n	8003a06 <_vfprintf_r+0x11ae>
 8004124:	469a      	mov	sl, r3
 8004126:	f7ff bb37 	b.w	8003798 <_vfprintf_r+0xf40>
 800412a:	2301      	movs	r3, #1
 800412c:	9324      	str	r3, [sp, #144]	; 0x90
 800412e:	4b65      	ldr	r3, [pc, #404]	; (80042c4 <_vfprintf_r+0x1a6c>)
 8004130:	9309      	str	r3, [sp, #36]	; 0x24
 8004132:	e4f7      	b.n	8003b24 <_vfprintf_r+0x12cc>
 8004134:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004136:	4413      	add	r3, r2
 8004138:	444b      	add	r3, r9
 800413a:	9309      	str	r3, [sp, #36]	; 0x24
 800413c:	2666      	movs	r6, #102	; 0x66
 800413e:	e6fb      	b.n	8003f38 <_vfprintf_r+0x16e0>
 8004140:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004142:	9309      	str	r3, [sp, #36]	; 0x24
 8004144:	e694      	b.n	8003e70 <_vfprintf_r+0x1618>
 8004146:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800414a:	4664      	mov	r4, ip
 800414c:	4d5e      	ldr	r5, [pc, #376]	; (80042c8 <_vfprintf_r+0x1a70>)
 800414e:	e000      	b.n	8004152 <_vfprintf_r+0x18fa>
 8004150:	4614      	mov	r4, r2
 8004152:	fba5 1203 	umull	r1, r2, r5, r3
 8004156:	08d2      	lsrs	r2, r2, #3
 8004158:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800415c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004160:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004164:	4613      	mov	r3, r2
 8004166:	2b09      	cmp	r3, #9
 8004168:	f804 1c01 	strb.w	r1, [r4, #-1]
 800416c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004170:	dcee      	bgt.n	8004150 <_vfprintf_r+0x18f8>
 8004172:	3330      	adds	r3, #48	; 0x30
 8004174:	3c02      	subs	r4, #2
 8004176:	b2db      	uxtb	r3, r3
 8004178:	45a4      	cmp	ip, r4
 800417a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800417e:	f240 8090 	bls.w	80042a2 <_vfprintf_r+0x1a4a>
 8004182:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004186:	4611      	mov	r1, r2
 8004188:	e001      	b.n	800418e <_vfprintf_r+0x1936>
 800418a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800418e:	f804 3b01 	strb.w	r3, [r4], #1
 8004192:	458c      	cmp	ip, r1
 8004194:	d1f9      	bne.n	800418a <_vfprintf_r+0x1932>
 8004196:	ab2a      	add	r3, sp, #168	; 0xa8
 8004198:	1a9b      	subs	r3, r3, r2
 800419a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800419e:	4413      	add	r3, r2
 80041a0:	f7ff bbe3 	b.w	800396a <_vfprintf_r+0x1112>
 80041a4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80041a6:	4f49      	ldr	r7, [pc, #292]	; (80042cc <_vfprintf_r+0x1a74>)
 80041a8:	2b00      	cmp	r3, #0
 80041aa:	bfb6      	itet	lt
 80041ac:	222d      	movlt	r2, #45	; 0x2d
 80041ae:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80041b2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80041b6:	4b46      	ldr	r3, [pc, #280]	; (80042d0 <_vfprintf_r+0x1a78>)
 80041b8:	f7fe bf02 	b.w	8002fc0 <_vfprintf_r+0x768>
 80041bc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80041c0:	f7ff b8c9 	b.w	8003356 <_vfprintf_r+0xafe>
 80041c4:	aa28      	add	r2, sp, #160	; 0xa0
 80041c6:	ab25      	add	r3, sp, #148	; 0x94
 80041c8:	e9cd 3200 	strd	r3, r2, [sp]
 80041cc:	2103      	movs	r1, #3
 80041ce:	ab24      	add	r3, sp, #144	; 0x90
 80041d0:	464a      	mov	r2, r9
 80041d2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041d6:	9803      	ldr	r0, [sp, #12]
 80041d8:	f000 f9c6 	bl	8004568 <_dtoa_r>
 80041dc:	464d      	mov	r5, r9
 80041de:	4607      	mov	r7, r0
 80041e0:	2e46      	cmp	r6, #70	; 0x46
 80041e2:	eb07 0405 	add.w	r4, r7, r5
 80041e6:	f43f af67 	beq.w	80040b8 <_vfprintf_r+0x1860>
 80041ea:	e76b      	b.n	80040c4 <_vfprintf_r+0x186c>
 80041ec:	f1b9 0f00 	cmp.w	r9, #0
 80041f0:	d131      	bne.n	8004256 <_vfprintf_r+0x19fe>
 80041f2:	07c5      	lsls	r5, r0, #31
 80041f4:	d42f      	bmi.n	8004256 <_vfprintf_r+0x19fe>
 80041f6:	2301      	movs	r3, #1
 80041f8:	9304      	str	r3, [sp, #16]
 80041fa:	9309      	str	r3, [sp, #36]	; 0x24
 80041fc:	2666      	movs	r6, #102	; 0x66
 80041fe:	e642      	b.n	8003e86 <_vfprintf_r+0x162e>
 8004200:	07c3      	lsls	r3, r0, #31
 8004202:	f57f abbf 	bpl.w	8003984 <_vfprintf_r+0x112c>
 8004206:	f7ff bbb9 	b.w	800397c <_vfprintf_r+0x1124>
 800420a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800420c:	f1c3 0301 	rsb	r3, r3, #1
 8004210:	441a      	add	r2, r3
 8004212:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004216:	9209      	str	r2, [sp, #36]	; 0x24
 8004218:	9304      	str	r3, [sp, #16]
 800421a:	2667      	movs	r6, #103	; 0x67
 800421c:	e633      	b.n	8003e86 <_vfprintf_r+0x162e>
 800421e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004222:	f04f 0901 	mov.w	r9, #1
 8004226:	e457      	b.n	8003ad8 <_vfprintf_r+0x1280>
 8004228:	465a      	mov	r2, fp
 800422a:	e511      	b.n	8003c50 <_vfprintf_r+0x13f8>
 800422c:	2e47      	cmp	r6, #71	; 0x47
 800422e:	f47f af5e 	bne.w	80040ee <_vfprintf_r+0x1896>
 8004232:	f018 0f01 	tst.w	r8, #1
 8004236:	f43f ab61 	beq.w	80038fc <_vfprintf_r+0x10a4>
 800423a:	e7d1      	b.n	80041e0 <_vfprintf_r+0x1988>
 800423c:	2200      	movs	r2, #0
 800423e:	2300      	movs	r3, #0
 8004240:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004244:	f7fc fc00 	bl	8000a48 <__aeabi_dcmpeq>
 8004248:	2800      	cmp	r0, #0
 800424a:	f47f af39 	bne.w	80040c0 <_vfprintf_r+0x1868>
 800424e:	f1c5 0501 	rsb	r5, r5, #1
 8004252:	9524      	str	r5, [sp, #144]	; 0x90
 8004254:	e735      	b.n	80040c2 <_vfprintf_r+0x186a>
 8004256:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004258:	3301      	adds	r3, #1
 800425a:	444b      	add	r3, r9
 800425c:	9309      	str	r3, [sp, #36]	; 0x24
 800425e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004262:	9304      	str	r3, [sp, #16]
 8004264:	2666      	movs	r6, #102	; 0x66
 8004266:	e60e      	b.n	8003e86 <_vfprintf_r+0x162e>
 8004268:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800426c:	f7ff bb7a 	b.w	8003964 <_vfprintf_r+0x110c>
 8004270:	aa2a      	add	r2, sp, #168	; 0xa8
 8004272:	9907      	ldr	r1, [sp, #28]
 8004274:	9803      	ldr	r0, [sp, #12]
 8004276:	f002 fe1d 	bl	8006eb4 <__sprint_r>
 800427a:	2800      	cmp	r0, #0
 800427c:	f47f a864 	bne.w	8003348 <_vfprintf_r+0xaf0>
 8004280:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004284:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004288:	f7ff bbbd 	b.w	8003a06 <_vfprintf_r+0x11ae>
 800428c:	9908      	ldr	r1, [sp, #32]
 800428e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004292:	680b      	ldr	r3, [r1, #0]
 8004294:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004298:	1d0b      	adds	r3, r1, #4
 800429a:	4692      	mov	sl, r2
 800429c:	9308      	str	r3, [sp, #32]
 800429e:	f7fe bb59 	b.w	8002954 <_vfprintf_r+0xfc>
 80042a2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80042a6:	f7ff bb60 	b.w	800396a <_vfprintf_r+0x1112>
 80042aa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80042ae:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80042b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80042b6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80042ba:	f7ff b84c 	b.w	8003356 <_vfprintf_r+0xafe>
 80042be:	bf00      	nop
 80042c0:	0800803c 	.word	0x0800803c
 80042c4:	0800800c 	.word	0x0800800c
 80042c8:	cccccccd 	.word	0xcccccccd
 80042cc:	08007ff4 	.word	0x08007ff4
 80042d0:	08007ff0 	.word	0x08007ff0

080042d4 <__sbprintf>:
 80042d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80042d8:	460c      	mov	r4, r1
 80042da:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80042de:	8989      	ldrh	r1, [r1, #12]
 80042e0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80042e2:	89e5      	ldrh	r5, [r4, #14]
 80042e4:	9619      	str	r6, [sp, #100]	; 0x64
 80042e6:	f021 0102 	bic.w	r1, r1, #2
 80042ea:	4606      	mov	r6, r0
 80042ec:	69e0      	ldr	r0, [r4, #28]
 80042ee:	f8ad 100c 	strh.w	r1, [sp, #12]
 80042f2:	4617      	mov	r7, r2
 80042f4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80042f8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80042fa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80042fe:	4698      	mov	r8, r3
 8004300:	ad1a      	add	r5, sp, #104	; 0x68
 8004302:	2300      	movs	r3, #0
 8004304:	9007      	str	r0, [sp, #28]
 8004306:	a816      	add	r0, sp, #88	; 0x58
 8004308:	9209      	str	r2, [sp, #36]	; 0x24
 800430a:	9306      	str	r3, [sp, #24]
 800430c:	9500      	str	r5, [sp, #0]
 800430e:	9504      	str	r5, [sp, #16]
 8004310:	9102      	str	r1, [sp, #8]
 8004312:	9105      	str	r1, [sp, #20]
 8004314:	f001 fc8a 	bl	8005c2c <__retarget_lock_init_recursive>
 8004318:	4643      	mov	r3, r8
 800431a:	463a      	mov	r2, r7
 800431c:	4669      	mov	r1, sp
 800431e:	4630      	mov	r0, r6
 8004320:	f7fe fa9a 	bl	8002858 <_vfprintf_r>
 8004324:	1e05      	subs	r5, r0, #0
 8004326:	db07      	blt.n	8004338 <__sbprintf+0x64>
 8004328:	4630      	mov	r0, r6
 800432a:	4669      	mov	r1, sp
 800432c:	f001 f8d6 	bl	80054dc <_fflush_r>
 8004330:	2800      	cmp	r0, #0
 8004332:	bf18      	it	ne
 8004334:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004338:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800433c:	065b      	lsls	r3, r3, #25
 800433e:	d503      	bpl.n	8004348 <__sbprintf+0x74>
 8004340:	89a3      	ldrh	r3, [r4, #12]
 8004342:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004346:	81a3      	strh	r3, [r4, #12]
 8004348:	9816      	ldr	r0, [sp, #88]	; 0x58
 800434a:	f001 fc71 	bl	8005c30 <__retarget_lock_close_recursive>
 800434e:	4628      	mov	r0, r5
 8004350:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004354:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004358 <__swsetup_r>:
 8004358:	b538      	push	{r3, r4, r5, lr}
 800435a:	4b31      	ldr	r3, [pc, #196]	; (8004420 <__swsetup_r+0xc8>)
 800435c:	681b      	ldr	r3, [r3, #0]
 800435e:	4605      	mov	r5, r0
 8004360:	460c      	mov	r4, r1
 8004362:	b113      	cbz	r3, 800436a <__swsetup_r+0x12>
 8004364:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004366:	2a00      	cmp	r2, #0
 8004368:	d03a      	beq.n	80043e0 <__swsetup_r+0x88>
 800436a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800436e:	b293      	uxth	r3, r2
 8004370:	0718      	lsls	r0, r3, #28
 8004372:	d50c      	bpl.n	800438e <__swsetup_r+0x36>
 8004374:	6920      	ldr	r0, [r4, #16]
 8004376:	b1a8      	cbz	r0, 80043a4 <__swsetup_r+0x4c>
 8004378:	f013 0201 	ands.w	r2, r3, #1
 800437c:	d020      	beq.n	80043c0 <__swsetup_r+0x68>
 800437e:	6963      	ldr	r3, [r4, #20]
 8004380:	2200      	movs	r2, #0
 8004382:	425b      	negs	r3, r3
 8004384:	61a3      	str	r3, [r4, #24]
 8004386:	60a2      	str	r2, [r4, #8]
 8004388:	b300      	cbz	r0, 80043cc <__swsetup_r+0x74>
 800438a:	2000      	movs	r0, #0
 800438c:	bd38      	pop	{r3, r4, r5, pc}
 800438e:	06d9      	lsls	r1, r3, #27
 8004390:	d53e      	bpl.n	8004410 <__swsetup_r+0xb8>
 8004392:	0758      	lsls	r0, r3, #29
 8004394:	d428      	bmi.n	80043e8 <__swsetup_r+0x90>
 8004396:	6920      	ldr	r0, [r4, #16]
 8004398:	f042 0308 	orr.w	r3, r2, #8
 800439c:	81a3      	strh	r3, [r4, #12]
 800439e:	b29b      	uxth	r3, r3
 80043a0:	2800      	cmp	r0, #0
 80043a2:	d1e9      	bne.n	8004378 <__swsetup_r+0x20>
 80043a4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80043a8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80043ac:	d0e4      	beq.n	8004378 <__swsetup_r+0x20>
 80043ae:	4628      	mov	r0, r5
 80043b0:	4621      	mov	r1, r4
 80043b2:	f001 fc71 	bl	8005c98 <__smakebuf_r>
 80043b6:	89a3      	ldrh	r3, [r4, #12]
 80043b8:	6920      	ldr	r0, [r4, #16]
 80043ba:	f013 0201 	ands.w	r2, r3, #1
 80043be:	d1de      	bne.n	800437e <__swsetup_r+0x26>
 80043c0:	0799      	lsls	r1, r3, #30
 80043c2:	bf58      	it	pl
 80043c4:	6962      	ldrpl	r2, [r4, #20]
 80043c6:	60a2      	str	r2, [r4, #8]
 80043c8:	2800      	cmp	r0, #0
 80043ca:	d1de      	bne.n	800438a <__swsetup_r+0x32>
 80043cc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80043d0:	061a      	lsls	r2, r3, #24
 80043d2:	d5db      	bpl.n	800438c <__swsetup_r+0x34>
 80043d4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80043d8:	81a3      	strh	r3, [r4, #12]
 80043da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80043de:	bd38      	pop	{r3, r4, r5, pc}
 80043e0:	4618      	mov	r0, r3
 80043e2:	f001 f8d7 	bl	8005594 <__sinit>
 80043e6:	e7c0      	b.n	800436a <__swsetup_r+0x12>
 80043e8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80043ea:	b151      	cbz	r1, 8004402 <__swsetup_r+0xaa>
 80043ec:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80043f0:	4299      	cmp	r1, r3
 80043f2:	d004      	beq.n	80043fe <__swsetup_r+0xa6>
 80043f4:	4628      	mov	r0, r5
 80043f6:	f001 f96f 	bl	80056d8 <_free_r>
 80043fa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80043fe:	2300      	movs	r3, #0
 8004400:	6323      	str	r3, [r4, #48]	; 0x30
 8004402:	2300      	movs	r3, #0
 8004404:	6920      	ldr	r0, [r4, #16]
 8004406:	6063      	str	r3, [r4, #4]
 8004408:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800440c:	6020      	str	r0, [r4, #0]
 800440e:	e7c3      	b.n	8004398 <__swsetup_r+0x40>
 8004410:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004414:	2309      	movs	r3, #9
 8004416:	602b      	str	r3, [r5, #0]
 8004418:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800441c:	81a2      	strh	r2, [r4, #12]
 800441e:	bd38      	pop	{r3, r4, r5, pc}
 8004420:	20000018 	.word	0x20000018

08004424 <register_fini>:
 8004424:	4b02      	ldr	r3, [pc, #8]	; (8004430 <register_fini+0xc>)
 8004426:	b113      	cbz	r3, 800442e <register_fini+0xa>
 8004428:	4802      	ldr	r0, [pc, #8]	; (8004434 <register_fini+0x10>)
 800442a:	f000 b805 	b.w	8004438 <atexit>
 800442e:	4770      	bx	lr
 8004430:	00000000 	.word	0x00000000
 8004434:	08005605 	.word	0x08005605

08004438 <atexit>:
 8004438:	2300      	movs	r3, #0
 800443a:	4601      	mov	r1, r0
 800443c:	461a      	mov	r2, r3
 800443e:	4618      	mov	r0, r3
 8004440:	f002 bd58 	b.w	8006ef4 <__register_exitproc>

08004444 <quorem>:
 8004444:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004448:	6903      	ldr	r3, [r0, #16]
 800444a:	690f      	ldr	r7, [r1, #16]
 800444c:	42bb      	cmp	r3, r7
 800444e:	b083      	sub	sp, #12
 8004450:	f2c0 8086 	blt.w	8004560 <quorem+0x11c>
 8004454:	3f01      	subs	r7, #1
 8004456:	f101 0914 	add.w	r9, r1, #20
 800445a:	f100 0a14 	add.w	sl, r0, #20
 800445e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004462:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004466:	00bc      	lsls	r4, r7, #2
 8004468:	3201      	adds	r2, #1
 800446a:	fbb3 f8f2 	udiv	r8, r3, r2
 800446e:	eb0a 0304 	add.w	r3, sl, r4
 8004472:	9400      	str	r4, [sp, #0]
 8004474:	eb09 0b04 	add.w	fp, r9, r4
 8004478:	9301      	str	r3, [sp, #4]
 800447a:	f1b8 0f00 	cmp.w	r8, #0
 800447e:	d038      	beq.n	80044f2 <quorem+0xae>
 8004480:	2500      	movs	r5, #0
 8004482:	462e      	mov	r6, r5
 8004484:	46ce      	mov	lr, r9
 8004486:	46d4      	mov	ip, sl
 8004488:	f85e 4b04 	ldr.w	r4, [lr], #4
 800448c:	f8dc 3000 	ldr.w	r3, [ip]
 8004490:	b2a2      	uxth	r2, r4
 8004492:	fb08 5502 	mla	r5, r8, r2, r5
 8004496:	0c22      	lsrs	r2, r4, #16
 8004498:	0c2c      	lsrs	r4, r5, #16
 800449a:	fb08 4202 	mla	r2, r8, r2, r4
 800449e:	b2ad      	uxth	r5, r5
 80044a0:	1b75      	subs	r5, r6, r5
 80044a2:	b296      	uxth	r6, r2
 80044a4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80044a8:	fa15 f383 	uxtah	r3, r5, r3
 80044ac:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80044b0:	b29b      	uxth	r3, r3
 80044b2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80044b6:	45f3      	cmp	fp, lr
 80044b8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80044bc:	f84c 3b04 	str.w	r3, [ip], #4
 80044c0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80044c4:	d2e0      	bcs.n	8004488 <quorem+0x44>
 80044c6:	9b00      	ldr	r3, [sp, #0]
 80044c8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80044cc:	b98b      	cbnz	r3, 80044f2 <quorem+0xae>
 80044ce:	9a01      	ldr	r2, [sp, #4]
 80044d0:	1f13      	subs	r3, r2, #4
 80044d2:	459a      	cmp	sl, r3
 80044d4:	d20c      	bcs.n	80044f0 <quorem+0xac>
 80044d6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80044da:	b94b      	cbnz	r3, 80044f0 <quorem+0xac>
 80044dc:	f1a2 0308 	sub.w	r3, r2, #8
 80044e0:	e002      	b.n	80044e8 <quorem+0xa4>
 80044e2:	681a      	ldr	r2, [r3, #0]
 80044e4:	3b04      	subs	r3, #4
 80044e6:	b91a      	cbnz	r2, 80044f0 <quorem+0xac>
 80044e8:	459a      	cmp	sl, r3
 80044ea:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80044ee:	d3f8      	bcc.n	80044e2 <quorem+0x9e>
 80044f0:	6107      	str	r7, [r0, #16]
 80044f2:	4604      	mov	r4, r0
 80044f4:	f002 f944 	bl	8006780 <__mcmp>
 80044f8:	2800      	cmp	r0, #0
 80044fa:	db2d      	blt.n	8004558 <quorem+0x114>
 80044fc:	f108 0801 	add.w	r8, r8, #1
 8004500:	4655      	mov	r5, sl
 8004502:	2300      	movs	r3, #0
 8004504:	f859 1b04 	ldr.w	r1, [r9], #4
 8004508:	6828      	ldr	r0, [r5, #0]
 800450a:	b28a      	uxth	r2, r1
 800450c:	1a9a      	subs	r2, r3, r2
 800450e:	0c0b      	lsrs	r3, r1, #16
 8004510:	fa12 f280 	uxtah	r2, r2, r0
 8004514:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004518:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800451c:	b292      	uxth	r2, r2
 800451e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004522:	45cb      	cmp	fp, r9
 8004524:	f845 2b04 	str.w	r2, [r5], #4
 8004528:	ea4f 4323 	mov.w	r3, r3, asr #16
 800452c:	d2ea      	bcs.n	8004504 <quorem+0xc0>
 800452e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004532:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004536:	b97a      	cbnz	r2, 8004558 <quorem+0x114>
 8004538:	1f1a      	subs	r2, r3, #4
 800453a:	4592      	cmp	sl, r2
 800453c:	d20b      	bcs.n	8004556 <quorem+0x112>
 800453e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004542:	b942      	cbnz	r2, 8004556 <quorem+0x112>
 8004544:	3b08      	subs	r3, #8
 8004546:	e002      	b.n	800454e <quorem+0x10a>
 8004548:	681a      	ldr	r2, [r3, #0]
 800454a:	3b04      	subs	r3, #4
 800454c:	b91a      	cbnz	r2, 8004556 <quorem+0x112>
 800454e:	459a      	cmp	sl, r3
 8004550:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004554:	d3f8      	bcc.n	8004548 <quorem+0x104>
 8004556:	6127      	str	r7, [r4, #16]
 8004558:	4640      	mov	r0, r8
 800455a:	b003      	add	sp, #12
 800455c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004560:	2000      	movs	r0, #0
 8004562:	b003      	add	sp, #12
 8004564:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004568 <_dtoa_r>:
 8004568:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800456c:	ec55 4b10 	vmov	r4, r5, d0
 8004570:	b09b      	sub	sp, #108	; 0x6c
 8004572:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004574:	9102      	str	r1, [sp, #8]
 8004576:	4681      	mov	r9, r0
 8004578:	9207      	str	r2, [sp, #28]
 800457a:	9305      	str	r3, [sp, #20]
 800457c:	e9cd 4500 	strd	r4, r5, [sp]
 8004580:	b156      	cbz	r6, 8004598 <_dtoa_r+0x30>
 8004582:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004584:	6072      	str	r2, [r6, #4]
 8004586:	2301      	movs	r3, #1
 8004588:	4093      	lsls	r3, r2
 800458a:	60b3      	str	r3, [r6, #8]
 800458c:	4631      	mov	r1, r6
 800458e:	f001 ff07 	bl	80063a0 <_Bfree>
 8004592:	2300      	movs	r3, #0
 8004594:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004598:	f1b5 0800 	subs.w	r8, r5, #0
 800459c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800459e:	bfb4      	ite	lt
 80045a0:	2301      	movlt	r3, #1
 80045a2:	2300      	movge	r3, #0
 80045a4:	6013      	str	r3, [r2, #0]
 80045a6:	4b76      	ldr	r3, [pc, #472]	; (8004780 <_dtoa_r+0x218>)
 80045a8:	bfbc      	itt	lt
 80045aa:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80045ae:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80045b2:	ea33 0308 	bics.w	r3, r3, r8
 80045b6:	f000 80a6 	beq.w	8004706 <_dtoa_r+0x19e>
 80045ba:	e9dd 6700 	ldrd	r6, r7, [sp]
 80045be:	2200      	movs	r2, #0
 80045c0:	2300      	movs	r3, #0
 80045c2:	4630      	mov	r0, r6
 80045c4:	4639      	mov	r1, r7
 80045c6:	f7fc fa3f 	bl	8000a48 <__aeabi_dcmpeq>
 80045ca:	4605      	mov	r5, r0
 80045cc:	b178      	cbz	r0, 80045ee <_dtoa_r+0x86>
 80045ce:	9a05      	ldr	r2, [sp, #20]
 80045d0:	2301      	movs	r3, #1
 80045d2:	6013      	str	r3, [r2, #0]
 80045d4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045d6:	2b00      	cmp	r3, #0
 80045d8:	f000 80c0 	beq.w	800475c <_dtoa_r+0x1f4>
 80045dc:	4b69      	ldr	r3, [pc, #420]	; (8004784 <_dtoa_r+0x21c>)
 80045de:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80045e0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80045e4:	6013      	str	r3, [r2, #0]
 80045e6:	4658      	mov	r0, fp
 80045e8:	b01b      	add	sp, #108	; 0x6c
 80045ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045ee:	aa18      	add	r2, sp, #96	; 0x60
 80045f0:	a919      	add	r1, sp, #100	; 0x64
 80045f2:	ec47 6b10 	vmov	d0, r6, r7
 80045f6:	4648      	mov	r0, r9
 80045f8:	f002 f954 	bl	80068a4 <__d2b>
 80045fc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004600:	4682      	mov	sl, r0
 8004602:	f040 80a0 	bne.w	8004746 <_dtoa_r+0x1de>
 8004606:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800460a:	442c      	add	r4, r5
 800460c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004610:	2b20      	cmp	r3, #32
 8004612:	f340 842c 	ble.w	8004e6e <_dtoa_r+0x906>
 8004616:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800461a:	fa08 f803 	lsl.w	r8, r8, r3
 800461e:	9b00      	ldr	r3, [sp, #0]
 8004620:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004624:	fa23 f000 	lsr.w	r0, r3, r0
 8004628:	ea48 0000 	orr.w	r0, r8, r0
 800462c:	f7fb ff2a 	bl	8000484 <__aeabi_ui2d>
 8004630:	2301      	movs	r3, #1
 8004632:	4606      	mov	r6, r0
 8004634:	3c01      	subs	r4, #1
 8004636:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800463a:	930f      	str	r3, [sp, #60]	; 0x3c
 800463c:	4630      	mov	r0, r6
 800463e:	4639      	mov	r1, r7
 8004640:	2200      	movs	r2, #0
 8004642:	4b51      	ldr	r3, [pc, #324]	; (8004788 <_dtoa_r+0x220>)
 8004644:	f7fb fde0 	bl	8000208 <__aeabi_dsub>
 8004648:	a347      	add	r3, pc, #284	; (adr r3, 8004768 <_dtoa_r+0x200>)
 800464a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800464e:	f7fb ff93 	bl	8000578 <__aeabi_dmul>
 8004652:	a347      	add	r3, pc, #284	; (adr r3, 8004770 <_dtoa_r+0x208>)
 8004654:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004658:	f7fb fdd8 	bl	800020c <__adddf3>
 800465c:	4606      	mov	r6, r0
 800465e:	4620      	mov	r0, r4
 8004660:	460f      	mov	r7, r1
 8004662:	f7fb ff1f 	bl	80004a4 <__aeabi_i2d>
 8004666:	a344      	add	r3, pc, #272	; (adr r3, 8004778 <_dtoa_r+0x210>)
 8004668:	e9d3 2300 	ldrd	r2, r3, [r3]
 800466c:	f7fb ff84 	bl	8000578 <__aeabi_dmul>
 8004670:	4602      	mov	r2, r0
 8004672:	460b      	mov	r3, r1
 8004674:	4630      	mov	r0, r6
 8004676:	4639      	mov	r1, r7
 8004678:	f7fb fdc8 	bl	800020c <__adddf3>
 800467c:	4606      	mov	r6, r0
 800467e:	460f      	mov	r7, r1
 8004680:	f7fc fa14 	bl	8000aac <__aeabi_d2iz>
 8004684:	2200      	movs	r2, #0
 8004686:	9006      	str	r0, [sp, #24]
 8004688:	2300      	movs	r3, #0
 800468a:	4630      	mov	r0, r6
 800468c:	4639      	mov	r1, r7
 800468e:	f7fc f9e5 	bl	8000a5c <__aeabi_dcmplt>
 8004692:	2800      	cmp	r0, #0
 8004694:	f040 8273 	bne.w	8004b7e <_dtoa_r+0x616>
 8004698:	9e06      	ldr	r6, [sp, #24]
 800469a:	2e16      	cmp	r6, #22
 800469c:	f200 825d 	bhi.w	8004b5a <_dtoa_r+0x5f2>
 80046a0:	4b3a      	ldr	r3, [pc, #232]	; (800478c <_dtoa_r+0x224>)
 80046a2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80046a6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80046aa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046ae:	f7fc f9f3 	bl	8000a98 <__aeabi_dcmpgt>
 80046b2:	2800      	cmp	r0, #0
 80046b4:	f000 83d7 	beq.w	8004e66 <_dtoa_r+0x8fe>
 80046b8:	1e73      	subs	r3, r6, #1
 80046ba:	9306      	str	r3, [sp, #24]
 80046bc:	2300      	movs	r3, #0
 80046be:	930d      	str	r3, [sp, #52]	; 0x34
 80046c0:	1b2c      	subs	r4, r5, r4
 80046c2:	f1b4 0801 	subs.w	r8, r4, #1
 80046c6:	f100 8254 	bmi.w	8004b72 <_dtoa_r+0x60a>
 80046ca:	2300      	movs	r3, #0
 80046cc:	9308      	str	r3, [sp, #32]
 80046ce:	9b06      	ldr	r3, [sp, #24]
 80046d0:	2b00      	cmp	r3, #0
 80046d2:	f2c0 8245 	blt.w	8004b60 <_dtoa_r+0x5f8>
 80046d6:	4498      	add	r8, r3
 80046d8:	930c      	str	r3, [sp, #48]	; 0x30
 80046da:	2300      	movs	r3, #0
 80046dc:	930b      	str	r3, [sp, #44]	; 0x2c
 80046de:	9b02      	ldr	r3, [sp, #8]
 80046e0:	2b09      	cmp	r3, #9
 80046e2:	d85b      	bhi.n	800479c <_dtoa_r+0x234>
 80046e4:	2b05      	cmp	r3, #5
 80046e6:	f340 83c0 	ble.w	8004e6a <_dtoa_r+0x902>
 80046ea:	3b04      	subs	r3, #4
 80046ec:	9302      	str	r3, [sp, #8]
 80046ee:	2500      	movs	r5, #0
 80046f0:	9b02      	ldr	r3, [sp, #8]
 80046f2:	3b02      	subs	r3, #2
 80046f4:	2b03      	cmp	r3, #3
 80046f6:	f200 8498 	bhi.w	800502a <_dtoa_r+0xac2>
 80046fa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80046fe:	03df      	.short	0x03df
 8004700:	03e803bf 	.word	0x03e803bf
 8004704:	04f5      	.short	0x04f5
 8004706:	9a05      	ldr	r2, [sp, #20]
 8004708:	f242 730f 	movw	r3, #9999	; 0x270f
 800470c:	6013      	str	r3, [r2, #0]
 800470e:	9b00      	ldr	r3, [sp, #0]
 8004710:	b983      	cbnz	r3, 8004734 <_dtoa_r+0x1cc>
 8004712:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004716:	b96b      	cbnz	r3, 8004734 <_dtoa_r+0x1cc>
 8004718:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800471a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004790 <_dtoa_r+0x228>
 800471e:	2b00      	cmp	r3, #0
 8004720:	f43f af61 	beq.w	80045e6 <_dtoa_r+0x7e>
 8004724:	f10b 0308 	add.w	r3, fp, #8
 8004728:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800472a:	4658      	mov	r0, fp
 800472c:	6013      	str	r3, [r2, #0]
 800472e:	b01b      	add	sp, #108	; 0x6c
 8004730:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004734:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004736:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004794 <_dtoa_r+0x22c>
 800473a:	2b00      	cmp	r3, #0
 800473c:	f43f af53 	beq.w	80045e6 <_dtoa_r+0x7e>
 8004740:	f10b 0303 	add.w	r3, fp, #3
 8004744:	e7f0      	b.n	8004728 <_dtoa_r+0x1c0>
 8004746:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800474a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800474e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004750:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004754:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004758:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800475a:	e76f      	b.n	800463c <_dtoa_r+0xd4>
 800475c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004798 <_dtoa_r+0x230>
 8004760:	4658      	mov	r0, fp
 8004762:	b01b      	add	sp, #108	; 0x6c
 8004764:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004768:	636f4361 	.word	0x636f4361
 800476c:	3fd287a7 	.word	0x3fd287a7
 8004770:	8b60c8b3 	.word	0x8b60c8b3
 8004774:	3fc68a28 	.word	0x3fc68a28
 8004778:	509f79fb 	.word	0x509f79fb
 800477c:	3fd34413 	.word	0x3fd34413
 8004780:	7ff00000 	.word	0x7ff00000
 8004784:	08008029 	.word	0x08008029
 8004788:	3ff80000 	.word	0x3ff80000
 800478c:	08008088 	.word	0x08008088
 8004790:	0800804c 	.word	0x0800804c
 8004794:	08008058 	.word	0x08008058
 8004798:	08008028 	.word	0x08008028
 800479c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80047a0:	2501      	movs	r5, #1
 80047a2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80047a6:	2300      	movs	r3, #0
 80047a8:	9302      	str	r3, [sp, #8]
 80047aa:	9307      	str	r3, [sp, #28]
 80047ac:	2100      	movs	r1, #0
 80047ae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80047b2:	940e      	str	r4, [sp, #56]	; 0x38
 80047b4:	4648      	mov	r0, r9
 80047b6:	f001 fdcd 	bl	8006354 <_Balloc>
 80047ba:	2c0e      	cmp	r4, #14
 80047bc:	4683      	mov	fp, r0
 80047be:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80047c2:	f200 80fb 	bhi.w	80049bc <_dtoa_r+0x454>
 80047c6:	2d00      	cmp	r5, #0
 80047c8:	f000 80f8 	beq.w	80049bc <_dtoa_r+0x454>
 80047cc:	ed9d 7b00 	vldr	d7, [sp]
 80047d0:	9906      	ldr	r1, [sp, #24]
 80047d2:	2900      	cmp	r1, #0
 80047d4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80047d8:	f340 83e5 	ble.w	8004fa6 <_dtoa_r+0xa3e>
 80047dc:	4b9d      	ldr	r3, [pc, #628]	; (8004a54 <_dtoa_r+0x4ec>)
 80047de:	f001 020f 	and.w	r2, r1, #15
 80047e2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047e6:	ed93 7b00 	vldr	d7, [r3]
 80047ea:	110c      	asrs	r4, r1, #4
 80047ec:	06e2      	lsls	r2, r4, #27
 80047ee:	ed8d 7b00 	vstr	d7, [sp]
 80047f2:	f140 849e 	bpl.w	8005132 <_dtoa_r+0xbca>
 80047f6:	4b98      	ldr	r3, [pc, #608]	; (8004a58 <_dtoa_r+0x4f0>)
 80047f8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80047fc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004800:	f7fb ffe4 	bl	80007cc <__aeabi_ddiv>
 8004804:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004808:	f004 040f 	and.w	r4, r4, #15
 800480c:	2603      	movs	r6, #3
 800480e:	b17c      	cbz	r4, 8004830 <_dtoa_r+0x2c8>
 8004810:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004814:	4d90      	ldr	r5, [pc, #576]	; (8004a58 <_dtoa_r+0x4f0>)
 8004816:	07e3      	lsls	r3, r4, #31
 8004818:	d504      	bpl.n	8004824 <_dtoa_r+0x2bc>
 800481a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800481e:	f7fb feab 	bl	8000578 <__aeabi_dmul>
 8004822:	3601      	adds	r6, #1
 8004824:	1064      	asrs	r4, r4, #1
 8004826:	f105 0508 	add.w	r5, r5, #8
 800482a:	d1f4      	bne.n	8004816 <_dtoa_r+0x2ae>
 800482c:	e9cd 0100 	strd	r0, r1, [sp]
 8004830:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004834:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004838:	f7fb ffc8 	bl	80007cc <__aeabi_ddiv>
 800483c:	e9cd 0100 	strd	r0, r1, [sp]
 8004840:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004842:	b143      	cbz	r3, 8004856 <_dtoa_r+0x2ee>
 8004844:	2200      	movs	r2, #0
 8004846:	4b85      	ldr	r3, [pc, #532]	; (8004a5c <_dtoa_r+0x4f4>)
 8004848:	e9dd 0100 	ldrd	r0, r1, [sp]
 800484c:	f7fc f906 	bl	8000a5c <__aeabi_dcmplt>
 8004850:	2800      	cmp	r0, #0
 8004852:	f040 84ff 	bne.w	8005254 <_dtoa_r+0xcec>
 8004856:	4630      	mov	r0, r6
 8004858:	f7fb fe24 	bl	80004a4 <__aeabi_i2d>
 800485c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004860:	f7fb fe8a 	bl	8000578 <__aeabi_dmul>
 8004864:	4b7e      	ldr	r3, [pc, #504]	; (8004a60 <_dtoa_r+0x4f8>)
 8004866:	2200      	movs	r2, #0
 8004868:	f7fb fcd0 	bl	800020c <__adddf3>
 800486c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800486e:	4606      	mov	r6, r0
 8004870:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004874:	2b00      	cmp	r3, #0
 8004876:	f000 841c 	beq.w	80050b2 <_dtoa_r+0xb4a>
 800487a:	9b06      	ldr	r3, [sp, #24]
 800487c:	9316      	str	r3, [sp, #88]	; 0x58
 800487e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004880:	9312      	str	r3, [sp, #72]	; 0x48
 8004882:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004886:	f7fc f911 	bl	8000aac <__aeabi_d2iz>
 800488a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800488c:	4b71      	ldr	r3, [pc, #452]	; (8004a54 <_dtoa_r+0x4ec>)
 800488e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004892:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004896:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800489a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800489e:	f7fb fe01 	bl	80004a4 <__aeabi_i2d>
 80048a2:	460b      	mov	r3, r1
 80048a4:	4602      	mov	r2, r0
 80048a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048aa:	e9cd 6700 	strd	r6, r7, [sp]
 80048ae:	f7fb fcab 	bl	8000208 <__aeabi_dsub>
 80048b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048b4:	b2ed      	uxtb	r5, r5
 80048b6:	4606      	mov	r6, r0
 80048b8:	460f      	mov	r7, r1
 80048ba:	f10b 0401 	add.w	r4, fp, #1
 80048be:	2b00      	cmp	r3, #0
 80048c0:	f000 8458 	beq.w	8005174 <_dtoa_r+0xc0c>
 80048c4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80048c8:	2000      	movs	r0, #0
 80048ca:	4966      	ldr	r1, [pc, #408]	; (8004a64 <_dtoa_r+0x4fc>)
 80048cc:	f7fb ff7e 	bl	80007cc <__aeabi_ddiv>
 80048d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048d4:	f7fb fc98 	bl	8000208 <__aeabi_dsub>
 80048d8:	f88b 5000 	strb.w	r5, [fp]
 80048dc:	4632      	mov	r2, r6
 80048de:	463b      	mov	r3, r7
 80048e0:	e9cd 0100 	strd	r0, r1, [sp]
 80048e4:	f7fc f8d8 	bl	8000a98 <__aeabi_dcmpgt>
 80048e8:	2800      	cmp	r0, #0
 80048ea:	f040 8502 	bne.w	80052f2 <_dtoa_r+0xd8a>
 80048ee:	4632      	mov	r2, r6
 80048f0:	463b      	mov	r3, r7
 80048f2:	2000      	movs	r0, #0
 80048f4:	4959      	ldr	r1, [pc, #356]	; (8004a5c <_dtoa_r+0x4f4>)
 80048f6:	f7fb fc87 	bl	8000208 <__aeabi_dsub>
 80048fa:	4602      	mov	r2, r0
 80048fc:	460b      	mov	r3, r1
 80048fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004902:	f7fc f8c9 	bl	8000a98 <__aeabi_dcmpgt>
 8004906:	2800      	cmp	r0, #0
 8004908:	f040 84fb 	bne.w	8005302 <_dtoa_r+0xd9a>
 800490c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800490e:	2a01      	cmp	r2, #1
 8004910:	d050      	beq.n	80049b4 <_dtoa_r+0x44c>
 8004912:	445a      	add	r2, fp
 8004914:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004918:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800491c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004920:	4692      	mov	sl, r2
 8004922:	46cb      	mov	fp, r9
 8004924:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004928:	e00c      	b.n	8004944 <_dtoa_r+0x3dc>
 800492a:	2000      	movs	r0, #0
 800492c:	494b      	ldr	r1, [pc, #300]	; (8004a5c <_dtoa_r+0x4f4>)
 800492e:	f7fb fc6b 	bl	8000208 <__aeabi_dsub>
 8004932:	4642      	mov	r2, r8
 8004934:	464b      	mov	r3, r9
 8004936:	f7fc f891 	bl	8000a5c <__aeabi_dcmplt>
 800493a:	2800      	cmp	r0, #0
 800493c:	f040 84dc 	bne.w	80052f8 <_dtoa_r+0xd90>
 8004940:	4554      	cmp	r4, sl
 8004942:	d030      	beq.n	80049a6 <_dtoa_r+0x43e>
 8004944:	4640      	mov	r0, r8
 8004946:	4649      	mov	r1, r9
 8004948:	2200      	movs	r2, #0
 800494a:	4b47      	ldr	r3, [pc, #284]	; (8004a68 <_dtoa_r+0x500>)
 800494c:	f7fb fe14 	bl	8000578 <__aeabi_dmul>
 8004950:	2200      	movs	r2, #0
 8004952:	4b45      	ldr	r3, [pc, #276]	; (8004a68 <_dtoa_r+0x500>)
 8004954:	4680      	mov	r8, r0
 8004956:	4689      	mov	r9, r1
 8004958:	4630      	mov	r0, r6
 800495a:	4639      	mov	r1, r7
 800495c:	f7fb fe0c 	bl	8000578 <__aeabi_dmul>
 8004960:	460f      	mov	r7, r1
 8004962:	4606      	mov	r6, r0
 8004964:	f7fc f8a2 	bl	8000aac <__aeabi_d2iz>
 8004968:	4605      	mov	r5, r0
 800496a:	f7fb fd9b 	bl	80004a4 <__aeabi_i2d>
 800496e:	4602      	mov	r2, r0
 8004970:	460b      	mov	r3, r1
 8004972:	4630      	mov	r0, r6
 8004974:	4639      	mov	r1, r7
 8004976:	f7fb fc47 	bl	8000208 <__aeabi_dsub>
 800497a:	3530      	adds	r5, #48	; 0x30
 800497c:	b2ed      	uxtb	r5, r5
 800497e:	4642      	mov	r2, r8
 8004980:	464b      	mov	r3, r9
 8004982:	f804 5b01 	strb.w	r5, [r4], #1
 8004986:	4606      	mov	r6, r0
 8004988:	460f      	mov	r7, r1
 800498a:	f7fc f867 	bl	8000a5c <__aeabi_dcmplt>
 800498e:	4632      	mov	r2, r6
 8004990:	463b      	mov	r3, r7
 8004992:	2800      	cmp	r0, #0
 8004994:	d0c9      	beq.n	800492a <_dtoa_r+0x3c2>
 8004996:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004998:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800499c:	9306      	str	r3, [sp, #24]
 800499e:	46d9      	mov	r9, fp
 80049a0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80049a4:	e236      	b.n	8004e14 <_dtoa_r+0x8ac>
 80049a6:	46d9      	mov	r9, fp
 80049a8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80049ac:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80049b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80049b4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80049b8:	e9cd 3400 	strd	r3, r4, [sp]
 80049bc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80049be:	2b00      	cmp	r3, #0
 80049c0:	f2c0 80ae 	blt.w	8004b20 <_dtoa_r+0x5b8>
 80049c4:	9a06      	ldr	r2, [sp, #24]
 80049c6:	2a0e      	cmp	r2, #14
 80049c8:	f300 80aa 	bgt.w	8004b20 <_dtoa_r+0x5b8>
 80049cc:	4b21      	ldr	r3, [pc, #132]	; (8004a54 <_dtoa_r+0x4ec>)
 80049ce:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049d2:	ed93 7b00 	vldr	d7, [r3]
 80049d6:	9b07      	ldr	r3, [sp, #28]
 80049d8:	2b00      	cmp	r3, #0
 80049da:	ed8d 7b02 	vstr	d7, [sp, #8]
 80049de:	f2c0 82be 	blt.w	8004f5e <_dtoa_r+0x9f6>
 80049e2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80049e6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049ea:	4630      	mov	r0, r6
 80049ec:	4639      	mov	r1, r7
 80049ee:	f7fb feed 	bl	80007cc <__aeabi_ddiv>
 80049f2:	f7fc f85b 	bl	8000aac <__aeabi_d2iz>
 80049f6:	4605      	mov	r5, r0
 80049f8:	f7fb fd54 	bl	80004a4 <__aeabi_i2d>
 80049fc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a00:	f7fb fdba 	bl	8000578 <__aeabi_dmul>
 8004a04:	460b      	mov	r3, r1
 8004a06:	4602      	mov	r2, r0
 8004a08:	4639      	mov	r1, r7
 8004a0a:	4630      	mov	r0, r6
 8004a0c:	f7fb fbfc 	bl	8000208 <__aeabi_dsub>
 8004a10:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004a14:	f88b 3000 	strb.w	r3, [fp]
 8004a18:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a1a:	2b01      	cmp	r3, #1
 8004a1c:	4606      	mov	r6, r0
 8004a1e:	460f      	mov	r7, r1
 8004a20:	f10b 0401 	add.w	r4, fp, #1
 8004a24:	d053      	beq.n	8004ace <_dtoa_r+0x566>
 8004a26:	2200      	movs	r2, #0
 8004a28:	4b0f      	ldr	r3, [pc, #60]	; (8004a68 <_dtoa_r+0x500>)
 8004a2a:	f7fb fda5 	bl	8000578 <__aeabi_dmul>
 8004a2e:	2200      	movs	r2, #0
 8004a30:	2300      	movs	r3, #0
 8004a32:	4606      	mov	r6, r0
 8004a34:	460f      	mov	r7, r1
 8004a36:	f7fc f807 	bl	8000a48 <__aeabi_dcmpeq>
 8004a3a:	2800      	cmp	r0, #0
 8004a3c:	f040 81ea 	bne.w	8004e14 <_dtoa_r+0x8ac>
 8004a40:	f8cd a000 	str.w	sl, [sp]
 8004a44:	f8cd 901c 	str.w	r9, [sp, #28]
 8004a48:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a4c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004a50:	e017      	b.n	8004a82 <_dtoa_r+0x51a>
 8004a52:	bf00      	nop
 8004a54:	08008088 	.word	0x08008088
 8004a58:	08008060 	.word	0x08008060
 8004a5c:	3ff00000 	.word	0x3ff00000
 8004a60:	401c0000 	.word	0x401c0000
 8004a64:	3fe00000 	.word	0x3fe00000
 8004a68:	40240000 	.word	0x40240000
 8004a6c:	f7fb fd84 	bl	8000578 <__aeabi_dmul>
 8004a70:	2200      	movs	r2, #0
 8004a72:	2300      	movs	r3, #0
 8004a74:	4606      	mov	r6, r0
 8004a76:	460f      	mov	r7, r1
 8004a78:	f7fb ffe6 	bl	8000a48 <__aeabi_dcmpeq>
 8004a7c:	2800      	cmp	r0, #0
 8004a7e:	f040 833d 	bne.w	80050fc <_dtoa_r+0xb94>
 8004a82:	464a      	mov	r2, r9
 8004a84:	4653      	mov	r3, sl
 8004a86:	4630      	mov	r0, r6
 8004a88:	4639      	mov	r1, r7
 8004a8a:	f7fb fe9f 	bl	80007cc <__aeabi_ddiv>
 8004a8e:	f7fc f80d 	bl	8000aac <__aeabi_d2iz>
 8004a92:	4605      	mov	r5, r0
 8004a94:	f7fb fd06 	bl	80004a4 <__aeabi_i2d>
 8004a98:	464a      	mov	r2, r9
 8004a9a:	4653      	mov	r3, sl
 8004a9c:	f7fb fd6c 	bl	8000578 <__aeabi_dmul>
 8004aa0:	4602      	mov	r2, r0
 8004aa2:	460b      	mov	r3, r1
 8004aa4:	4630      	mov	r0, r6
 8004aa6:	4639      	mov	r1, r7
 8004aa8:	f7fb fbae 	bl	8000208 <__aeabi_dsub>
 8004aac:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004ab0:	f804 cb01 	strb.w	ip, [r4], #1
 8004ab4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004ab8:	45e0      	cmp	r8, ip
 8004aba:	4606      	mov	r6, r0
 8004abc:	460f      	mov	r7, r1
 8004abe:	f04f 0200 	mov.w	r2, #0
 8004ac2:	4bc1      	ldr	r3, [pc, #772]	; (8004dc8 <_dtoa_r+0x860>)
 8004ac4:	d1d2      	bne.n	8004a6c <_dtoa_r+0x504>
 8004ac6:	f8dd a000 	ldr.w	sl, [sp]
 8004aca:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ace:	4632      	mov	r2, r6
 8004ad0:	463b      	mov	r3, r7
 8004ad2:	4630      	mov	r0, r6
 8004ad4:	4639      	mov	r1, r7
 8004ad6:	f7fb fb99 	bl	800020c <__adddf3>
 8004ada:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ade:	4606      	mov	r6, r0
 8004ae0:	460f      	mov	r7, r1
 8004ae2:	f7fb ffd9 	bl	8000a98 <__aeabi_dcmpgt>
 8004ae6:	b958      	cbnz	r0, 8004b00 <_dtoa_r+0x598>
 8004ae8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004aec:	4630      	mov	r0, r6
 8004aee:	4639      	mov	r1, r7
 8004af0:	f7fb ffaa 	bl	8000a48 <__aeabi_dcmpeq>
 8004af4:	2800      	cmp	r0, #0
 8004af6:	f000 818d 	beq.w	8004e14 <_dtoa_r+0x8ac>
 8004afa:	07e9      	lsls	r1, r5, #31
 8004afc:	f140 818a 	bpl.w	8004e14 <_dtoa_r+0x8ac>
 8004b00:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004b04:	e005      	b.n	8004b12 <_dtoa_r+0x5aa>
 8004b06:	459b      	cmp	fp, r3
 8004b08:	f000 8373 	beq.w	80051f2 <_dtoa_r+0xc8a>
 8004b0c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004b10:	461c      	mov	r4, r3
 8004b12:	2d39      	cmp	r5, #57	; 0x39
 8004b14:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b18:	d0f5      	beq.n	8004b06 <_dtoa_r+0x59e>
 8004b1a:	3501      	adds	r5, #1
 8004b1c:	701d      	strb	r5, [r3, #0]
 8004b1e:	e179      	b.n	8004e14 <_dtoa_r+0x8ac>
 8004b20:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b22:	2a00      	cmp	r2, #0
 8004b24:	d03b      	beq.n	8004b9e <_dtoa_r+0x636>
 8004b26:	9a02      	ldr	r2, [sp, #8]
 8004b28:	2a01      	cmp	r2, #1
 8004b2a:	f340 820b 	ble.w	8004f44 <_dtoa_r+0x9dc>
 8004b2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b30:	1e5f      	subs	r7, r3, #1
 8004b32:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b34:	42bb      	cmp	r3, r7
 8004b36:	f2c0 82e6 	blt.w	8005106 <_dtoa_r+0xb9e>
 8004b3a:	1bdf      	subs	r7, r3, r7
 8004b3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b3e:	2b00      	cmp	r3, #0
 8004b40:	f2c0 830b 	blt.w	800515a <_dtoa_r+0xbf2>
 8004b44:	9a08      	ldr	r2, [sp, #32]
 8004b46:	4614      	mov	r4, r2
 8004b48:	441a      	add	r2, r3
 8004b4a:	4498      	add	r8, r3
 8004b4c:	9208      	str	r2, [sp, #32]
 8004b4e:	2101      	movs	r1, #1
 8004b50:	4648      	mov	r0, r9
 8004b52:	f001 fcbf 	bl	80064d4 <__i2b>
 8004b56:	4605      	mov	r5, r0
 8004b58:	e024      	b.n	8004ba4 <_dtoa_r+0x63c>
 8004b5a:	2301      	movs	r3, #1
 8004b5c:	930d      	str	r3, [sp, #52]	; 0x34
 8004b5e:	e5af      	b.n	80046c0 <_dtoa_r+0x158>
 8004b60:	9a08      	ldr	r2, [sp, #32]
 8004b62:	9b06      	ldr	r3, [sp, #24]
 8004b64:	1ad2      	subs	r2, r2, r3
 8004b66:	425b      	negs	r3, r3
 8004b68:	930b      	str	r3, [sp, #44]	; 0x2c
 8004b6a:	2300      	movs	r3, #0
 8004b6c:	9208      	str	r2, [sp, #32]
 8004b6e:	930c      	str	r3, [sp, #48]	; 0x30
 8004b70:	e5b5      	b.n	80046de <_dtoa_r+0x176>
 8004b72:	f1c4 0301 	rsb	r3, r4, #1
 8004b76:	9308      	str	r3, [sp, #32]
 8004b78:	f04f 0800 	mov.w	r8, #0
 8004b7c:	e5a7      	b.n	80046ce <_dtoa_r+0x166>
 8004b7e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004b82:	4640      	mov	r0, r8
 8004b84:	f7fb fc8e 	bl	80004a4 <__aeabi_i2d>
 8004b88:	4632      	mov	r2, r6
 8004b8a:	463b      	mov	r3, r7
 8004b8c:	f7fb ff5c 	bl	8000a48 <__aeabi_dcmpeq>
 8004b90:	2800      	cmp	r0, #0
 8004b92:	f47f ad81 	bne.w	8004698 <_dtoa_r+0x130>
 8004b96:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004b9a:	9306      	str	r3, [sp, #24]
 8004b9c:	e57c      	b.n	8004698 <_dtoa_r+0x130>
 8004b9e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ba0:	9c08      	ldr	r4, [sp, #32]
 8004ba2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004ba4:	2c00      	cmp	r4, #0
 8004ba6:	dd0c      	ble.n	8004bc2 <_dtoa_r+0x65a>
 8004ba8:	f1b8 0f00 	cmp.w	r8, #0
 8004bac:	dd09      	ble.n	8004bc2 <_dtoa_r+0x65a>
 8004bae:	4544      	cmp	r4, r8
 8004bb0:	9a08      	ldr	r2, [sp, #32]
 8004bb2:	4623      	mov	r3, r4
 8004bb4:	bfa8      	it	ge
 8004bb6:	4643      	movge	r3, r8
 8004bb8:	1ad2      	subs	r2, r2, r3
 8004bba:	9208      	str	r2, [sp, #32]
 8004bbc:	1ae4      	subs	r4, r4, r3
 8004bbe:	eba8 0803 	sub.w	r8, r8, r3
 8004bc2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004bc4:	b16b      	cbz	r3, 8004be2 <_dtoa_r+0x67a>
 8004bc6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004bc8:	2a00      	cmp	r2, #0
 8004bca:	f000 8290 	beq.w	80050ee <_dtoa_r+0xb86>
 8004bce:	1bde      	subs	r6, r3, r7
 8004bd0:	2f00      	cmp	r7, #0
 8004bd2:	f040 819b 	bne.w	8004f0c <_dtoa_r+0x9a4>
 8004bd6:	4651      	mov	r1, sl
 8004bd8:	4632      	mov	r2, r6
 8004bda:	4648      	mov	r0, r9
 8004bdc:	f001 fd2a 	bl	8006634 <__pow5mult>
 8004be0:	4682      	mov	sl, r0
 8004be2:	2101      	movs	r1, #1
 8004be4:	4648      	mov	r0, r9
 8004be6:	f001 fc75 	bl	80064d4 <__i2b>
 8004bea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bec:	4606      	mov	r6, r0
 8004bee:	2a00      	cmp	r2, #0
 8004bf0:	f040 8125 	bne.w	8004e3e <_dtoa_r+0x8d6>
 8004bf4:	9b02      	ldr	r3, [sp, #8]
 8004bf6:	2b01      	cmp	r3, #1
 8004bf8:	f340 816c 	ble.w	8004ed4 <_dtoa_r+0x96c>
 8004bfc:	2001      	movs	r0, #1
 8004bfe:	4440      	add	r0, r8
 8004c00:	f010 001f 	ands.w	r0, r0, #31
 8004c04:	f000 8119 	beq.w	8004e3a <_dtoa_r+0x8d2>
 8004c08:	f1c0 0320 	rsb	r3, r0, #32
 8004c0c:	2b04      	cmp	r3, #4
 8004c0e:	f340 83ac 	ble.w	800536a <_dtoa_r+0xe02>
 8004c12:	f1c0 001c 	rsb	r0, r0, #28
 8004c16:	9b08      	ldr	r3, [sp, #32]
 8004c18:	4403      	add	r3, r0
 8004c1a:	9308      	str	r3, [sp, #32]
 8004c1c:	4404      	add	r4, r0
 8004c1e:	4480      	add	r8, r0
 8004c20:	9b08      	ldr	r3, [sp, #32]
 8004c22:	2b00      	cmp	r3, #0
 8004c24:	dd05      	ble.n	8004c32 <_dtoa_r+0x6ca>
 8004c26:	4651      	mov	r1, sl
 8004c28:	461a      	mov	r2, r3
 8004c2a:	4648      	mov	r0, r9
 8004c2c:	f001 fd52 	bl	80066d4 <__lshift>
 8004c30:	4682      	mov	sl, r0
 8004c32:	f1b8 0f00 	cmp.w	r8, #0
 8004c36:	dd05      	ble.n	8004c44 <_dtoa_r+0x6dc>
 8004c38:	4631      	mov	r1, r6
 8004c3a:	4642      	mov	r2, r8
 8004c3c:	4648      	mov	r0, r9
 8004c3e:	f001 fd49 	bl	80066d4 <__lshift>
 8004c42:	4606      	mov	r6, r0
 8004c44:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004c46:	2b00      	cmp	r3, #0
 8004c48:	d177      	bne.n	8004d3a <_dtoa_r+0x7d2>
 8004c4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c4c:	2b00      	cmp	r3, #0
 8004c4e:	f340 8209 	ble.w	8005064 <_dtoa_r+0xafc>
 8004c52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c54:	2b00      	cmp	r3, #0
 8004c56:	f000 8089 	beq.w	8004d6c <_dtoa_r+0x804>
 8004c5a:	2c00      	cmp	r4, #0
 8004c5c:	f300 816b 	bgt.w	8004f36 <_dtoa_r+0x9ce>
 8004c60:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004c62:	2b00      	cmp	r3, #0
 8004c64:	f040 81cd 	bne.w	8005002 <_dtoa_r+0xa9a>
 8004c68:	46a8      	mov	r8, r5
 8004c6a:	9a00      	ldr	r2, [sp, #0]
 8004c6c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004c70:	f002 0201 	and.w	r2, r2, #1
 8004c74:	920a      	str	r2, [sp, #40]	; 0x28
 8004c76:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004c78:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004c7c:	441a      	add	r2, r3
 8004c7e:	465f      	mov	r7, fp
 8004c80:	9209      	str	r2, [sp, #36]	; 0x24
 8004c82:	46b3      	mov	fp, r6
 8004c84:	4659      	mov	r1, fp
 8004c86:	4650      	mov	r0, sl
 8004c88:	f7ff fbdc 	bl	8004444 <quorem>
 8004c8c:	4629      	mov	r1, r5
 8004c8e:	4604      	mov	r4, r0
 8004c90:	4650      	mov	r0, sl
 8004c92:	f001 fd75 	bl	8006780 <__mcmp>
 8004c96:	4659      	mov	r1, fp
 8004c98:	4606      	mov	r6, r0
 8004c9a:	4642      	mov	r2, r8
 8004c9c:	4648      	mov	r0, r9
 8004c9e:	f001 fd8b 	bl	80067b8 <__mdiff>
 8004ca2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004ca6:	9300      	str	r3, [sp, #0]
 8004ca8:	68c3      	ldr	r3, [r0, #12]
 8004caa:	4601      	mov	r1, r0
 8004cac:	2b00      	cmp	r3, #0
 8004cae:	f040 81d4 	bne.w	800505a <_dtoa_r+0xaf2>
 8004cb2:	9008      	str	r0, [sp, #32]
 8004cb4:	4650      	mov	r0, sl
 8004cb6:	f001 fd63 	bl	8006780 <__mcmp>
 8004cba:	9a08      	ldr	r2, [sp, #32]
 8004cbc:	9007      	str	r0, [sp, #28]
 8004cbe:	4611      	mov	r1, r2
 8004cc0:	4648      	mov	r0, r9
 8004cc2:	f001 fb6d 	bl	80063a0 <_Bfree>
 8004cc6:	9b07      	ldr	r3, [sp, #28]
 8004cc8:	b933      	cbnz	r3, 8004cd8 <_dtoa_r+0x770>
 8004cca:	9a02      	ldr	r2, [sp, #8]
 8004ccc:	b922      	cbnz	r2, 8004cd8 <_dtoa_r+0x770>
 8004cce:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004cd0:	2b00      	cmp	r3, #0
 8004cd2:	f000 8319 	beq.w	8005308 <_dtoa_r+0xda0>
 8004cd6:	9b02      	ldr	r3, [sp, #8]
 8004cd8:	2e00      	cmp	r6, #0
 8004cda:	f2c0 821c 	blt.w	8005116 <_dtoa_r+0xbae>
 8004cde:	d105      	bne.n	8004cec <_dtoa_r+0x784>
 8004ce0:	9a02      	ldr	r2, [sp, #8]
 8004ce2:	b91a      	cbnz	r2, 8004cec <_dtoa_r+0x784>
 8004ce4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ce6:	2a00      	cmp	r2, #0
 8004ce8:	f000 8215 	beq.w	8005116 <_dtoa_r+0xbae>
 8004cec:	2b00      	cmp	r3, #0
 8004cee:	f107 0401 	add.w	r4, r7, #1
 8004cf2:	f300 8225 	bgt.w	8005140 <_dtoa_r+0xbd8>
 8004cf6:	9b00      	ldr	r3, [sp, #0]
 8004cf8:	703b      	strb	r3, [r7, #0]
 8004cfa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cfc:	42bb      	cmp	r3, r7
 8004cfe:	f000 8230 	beq.w	8005162 <_dtoa_r+0xbfa>
 8004d02:	4651      	mov	r1, sl
 8004d04:	2300      	movs	r3, #0
 8004d06:	220a      	movs	r2, #10
 8004d08:	4648      	mov	r0, r9
 8004d0a:	f001 fb53 	bl	80063b4 <__multadd>
 8004d0e:	4545      	cmp	r5, r8
 8004d10:	4682      	mov	sl, r0
 8004d12:	4629      	mov	r1, r5
 8004d14:	f04f 0300 	mov.w	r3, #0
 8004d18:	f04f 020a 	mov.w	r2, #10
 8004d1c:	4648      	mov	r0, r9
 8004d1e:	f000 8196 	beq.w	800504e <_dtoa_r+0xae6>
 8004d22:	f001 fb47 	bl	80063b4 <__multadd>
 8004d26:	4641      	mov	r1, r8
 8004d28:	4605      	mov	r5, r0
 8004d2a:	2300      	movs	r3, #0
 8004d2c:	220a      	movs	r2, #10
 8004d2e:	4648      	mov	r0, r9
 8004d30:	f001 fb40 	bl	80063b4 <__multadd>
 8004d34:	4627      	mov	r7, r4
 8004d36:	4680      	mov	r8, r0
 8004d38:	e7a4      	b.n	8004c84 <_dtoa_r+0x71c>
 8004d3a:	4631      	mov	r1, r6
 8004d3c:	4650      	mov	r0, sl
 8004d3e:	f001 fd1f 	bl	8006780 <__mcmp>
 8004d42:	2800      	cmp	r0, #0
 8004d44:	da81      	bge.n	8004c4a <_dtoa_r+0x6e2>
 8004d46:	9f06      	ldr	r7, [sp, #24]
 8004d48:	4651      	mov	r1, sl
 8004d4a:	2300      	movs	r3, #0
 8004d4c:	220a      	movs	r2, #10
 8004d4e:	4648      	mov	r0, r9
 8004d50:	3f01      	subs	r7, #1
 8004d52:	9706      	str	r7, [sp, #24]
 8004d54:	f001 fb2e 	bl	80063b4 <__multadd>
 8004d58:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d5a:	4682      	mov	sl, r0
 8004d5c:	2b00      	cmp	r3, #0
 8004d5e:	f040 82eb 	bne.w	8005338 <_dtoa_r+0xdd0>
 8004d62:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d64:	2b00      	cmp	r3, #0
 8004d66:	f340 82f3 	ble.w	8005350 <_dtoa_r+0xde8>
 8004d6a:	9309      	str	r3, [sp, #36]	; 0x24
 8004d6c:	465c      	mov	r4, fp
 8004d6e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004d72:	e002      	b.n	8004d7a <_dtoa_r+0x812>
 8004d74:	f001 fb1e 	bl	80063b4 <__multadd>
 8004d78:	4682      	mov	sl, r0
 8004d7a:	4631      	mov	r1, r6
 8004d7c:	4650      	mov	r0, sl
 8004d7e:	f7ff fb61 	bl	8004444 <quorem>
 8004d82:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004d86:	f804 7b01 	strb.w	r7, [r4], #1
 8004d8a:	eba4 030b 	sub.w	r3, r4, fp
 8004d8e:	4598      	cmp	r8, r3
 8004d90:	f04f 020a 	mov.w	r2, #10
 8004d94:	f04f 0300 	mov.w	r3, #0
 8004d98:	4651      	mov	r1, sl
 8004d9a:	4648      	mov	r0, r9
 8004d9c:	dcea      	bgt.n	8004d74 <_dtoa_r+0x80c>
 8004d9e:	2300      	movs	r3, #0
 8004da0:	9700      	str	r7, [sp, #0]
 8004da2:	9302      	str	r3, [sp, #8]
 8004da4:	4651      	mov	r1, sl
 8004da6:	2201      	movs	r2, #1
 8004da8:	4648      	mov	r0, r9
 8004daa:	f001 fc93 	bl	80066d4 <__lshift>
 8004dae:	4631      	mov	r1, r6
 8004db0:	4682      	mov	sl, r0
 8004db2:	f001 fce5 	bl	8006780 <__mcmp>
 8004db6:	2800      	cmp	r0, #0
 8004db8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004dbc:	dc14      	bgt.n	8004de8 <_dtoa_r+0x880>
 8004dbe:	d108      	bne.n	8004dd2 <_dtoa_r+0x86a>
 8004dc0:	9b00      	ldr	r3, [sp, #0]
 8004dc2:	07db      	lsls	r3, r3, #31
 8004dc4:	d410      	bmi.n	8004de8 <_dtoa_r+0x880>
 8004dc6:	e004      	b.n	8004dd2 <_dtoa_r+0x86a>
 8004dc8:	40240000 	.word	0x40240000
 8004dcc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004dd0:	461c      	mov	r4, r3
 8004dd2:	2a30      	cmp	r2, #48	; 0x30
 8004dd4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004dd8:	d0f8      	beq.n	8004dcc <_dtoa_r+0x864>
 8004dda:	e00b      	b.n	8004df4 <_dtoa_r+0x88c>
 8004ddc:	459b      	cmp	fp, r3
 8004dde:	f000 814e 	beq.w	800507e <_dtoa_r+0xb16>
 8004de2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004de6:	461c      	mov	r4, r3
 8004de8:	2a39      	cmp	r2, #57	; 0x39
 8004dea:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004dee:	d0f5      	beq.n	8004ddc <_dtoa_r+0x874>
 8004df0:	3201      	adds	r2, #1
 8004df2:	701a      	strb	r2, [r3, #0]
 8004df4:	4631      	mov	r1, r6
 8004df6:	4648      	mov	r0, r9
 8004df8:	f001 fad2 	bl	80063a0 <_Bfree>
 8004dfc:	b155      	cbz	r5, 8004e14 <_dtoa_r+0x8ac>
 8004dfe:	9902      	ldr	r1, [sp, #8]
 8004e00:	b121      	cbz	r1, 8004e0c <_dtoa_r+0x8a4>
 8004e02:	42a9      	cmp	r1, r5
 8004e04:	d002      	beq.n	8004e0c <_dtoa_r+0x8a4>
 8004e06:	4648      	mov	r0, r9
 8004e08:	f001 faca 	bl	80063a0 <_Bfree>
 8004e0c:	4629      	mov	r1, r5
 8004e0e:	4648      	mov	r0, r9
 8004e10:	f001 fac6 	bl	80063a0 <_Bfree>
 8004e14:	4651      	mov	r1, sl
 8004e16:	4648      	mov	r0, r9
 8004e18:	f001 fac2 	bl	80063a0 <_Bfree>
 8004e1c:	2200      	movs	r2, #0
 8004e1e:	9b06      	ldr	r3, [sp, #24]
 8004e20:	7022      	strb	r2, [r4, #0]
 8004e22:	9a05      	ldr	r2, [sp, #20]
 8004e24:	3301      	adds	r3, #1
 8004e26:	6013      	str	r3, [r2, #0]
 8004e28:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004e2a:	2b00      	cmp	r3, #0
 8004e2c:	f43f abdb 	beq.w	80045e6 <_dtoa_r+0x7e>
 8004e30:	4658      	mov	r0, fp
 8004e32:	601c      	str	r4, [r3, #0]
 8004e34:	b01b      	add	sp, #108	; 0x6c
 8004e36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e3a:	201c      	movs	r0, #28
 8004e3c:	e6eb      	b.n	8004c16 <_dtoa_r+0x6ae>
 8004e3e:	4601      	mov	r1, r0
 8004e40:	4648      	mov	r0, r9
 8004e42:	f001 fbf7 	bl	8006634 <__pow5mult>
 8004e46:	9b02      	ldr	r3, [sp, #8]
 8004e48:	2b01      	cmp	r3, #1
 8004e4a:	4606      	mov	r6, r0
 8004e4c:	f340 80d4 	ble.w	8004ff8 <_dtoa_r+0xa90>
 8004e50:	2300      	movs	r3, #0
 8004e52:	930c      	str	r3, [sp, #48]	; 0x30
 8004e54:	6933      	ldr	r3, [r6, #16]
 8004e56:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004e5a:	6918      	ldr	r0, [r3, #16]
 8004e5c:	f001 faea 	bl	8006434 <__hi0bits>
 8004e60:	f1c0 0020 	rsb	r0, r0, #32
 8004e64:	e6cb      	b.n	8004bfe <_dtoa_r+0x696>
 8004e66:	900d      	str	r0, [sp, #52]	; 0x34
 8004e68:	e42a      	b.n	80046c0 <_dtoa_r+0x158>
 8004e6a:	2501      	movs	r5, #1
 8004e6c:	e440      	b.n	80046f0 <_dtoa_r+0x188>
 8004e6e:	f1c3 0820 	rsb	r8, r3, #32
 8004e72:	9b00      	ldr	r3, [sp, #0]
 8004e74:	fa03 f008 	lsl.w	r0, r3, r8
 8004e78:	f7ff bbd8 	b.w	800462c <_dtoa_r+0xc4>
 8004e7c:	2300      	movs	r3, #0
 8004e7e:	930a      	str	r3, [sp, #40]	; 0x28
 8004e80:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004e84:	4413      	add	r3, r2
 8004e86:	930e      	str	r3, [sp, #56]	; 0x38
 8004e88:	3301      	adds	r3, #1
 8004e8a:	2b01      	cmp	r3, #1
 8004e8c:	461e      	mov	r6, r3
 8004e8e:	9309      	str	r3, [sp, #36]	; 0x24
 8004e90:	bfb8      	it	lt
 8004e92:	2601      	movlt	r6, #1
 8004e94:	2100      	movs	r1, #0
 8004e96:	2e17      	cmp	r6, #23
 8004e98:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004e9c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004e9e:	f77f ac89 	ble.w	80047b4 <_dtoa_r+0x24c>
 8004ea2:	2201      	movs	r2, #1
 8004ea4:	2304      	movs	r3, #4
 8004ea6:	005b      	lsls	r3, r3, #1
 8004ea8:	f103 0014 	add.w	r0, r3, #20
 8004eac:	42b0      	cmp	r0, r6
 8004eae:	4611      	mov	r1, r2
 8004eb0:	f102 0201 	add.w	r2, r2, #1
 8004eb4:	d9f7      	bls.n	8004ea6 <_dtoa_r+0x93e>
 8004eb6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004eba:	e47b      	b.n	80047b4 <_dtoa_r+0x24c>
 8004ebc:	2300      	movs	r3, #0
 8004ebe:	930a      	str	r3, [sp, #40]	; 0x28
 8004ec0:	9e07      	ldr	r6, [sp, #28]
 8004ec2:	2e00      	cmp	r6, #0
 8004ec4:	f340 80e2 	ble.w	800508c <_dtoa_r+0xb24>
 8004ec8:	960e      	str	r6, [sp, #56]	; 0x38
 8004eca:	9609      	str	r6, [sp, #36]	; 0x24
 8004ecc:	e7e2      	b.n	8004e94 <_dtoa_r+0x92c>
 8004ece:	2301      	movs	r3, #1
 8004ed0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ed2:	e7f5      	b.n	8004ec0 <_dtoa_r+0x958>
 8004ed4:	9b00      	ldr	r3, [sp, #0]
 8004ed6:	2b00      	cmp	r3, #0
 8004ed8:	f47f ae90 	bne.w	8004bfc <_dtoa_r+0x694>
 8004edc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ee0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	f040 8192 	bne.w	800520e <_dtoa_r+0xca6>
 8004eea:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004eee:	0d1b      	lsrs	r3, r3, #20
 8004ef0:	051b      	lsls	r3, r3, #20
 8004ef2:	b12b      	cbz	r3, 8004f00 <_dtoa_r+0x998>
 8004ef4:	9b08      	ldr	r3, [sp, #32]
 8004ef6:	3301      	adds	r3, #1
 8004ef8:	9308      	str	r3, [sp, #32]
 8004efa:	f108 0801 	add.w	r8, r8, #1
 8004efe:	2301      	movs	r3, #1
 8004f00:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004f02:	930c      	str	r3, [sp, #48]	; 0x30
 8004f04:	2a00      	cmp	r2, #0
 8004f06:	f43f ae79 	beq.w	8004bfc <_dtoa_r+0x694>
 8004f0a:	e7a3      	b.n	8004e54 <_dtoa_r+0x8ec>
 8004f0c:	463a      	mov	r2, r7
 8004f0e:	4629      	mov	r1, r5
 8004f10:	4648      	mov	r0, r9
 8004f12:	f001 fb8f 	bl	8006634 <__pow5mult>
 8004f16:	4652      	mov	r2, sl
 8004f18:	4601      	mov	r1, r0
 8004f1a:	4605      	mov	r5, r0
 8004f1c:	4648      	mov	r0, r9
 8004f1e:	f001 fae3 	bl	80064e8 <__multiply>
 8004f22:	4651      	mov	r1, sl
 8004f24:	4607      	mov	r7, r0
 8004f26:	4648      	mov	r0, r9
 8004f28:	f001 fa3a 	bl	80063a0 <_Bfree>
 8004f2c:	46ba      	mov	sl, r7
 8004f2e:	2e00      	cmp	r6, #0
 8004f30:	f43f ae57 	beq.w	8004be2 <_dtoa_r+0x67a>
 8004f34:	e64f      	b.n	8004bd6 <_dtoa_r+0x66e>
 8004f36:	4629      	mov	r1, r5
 8004f38:	4622      	mov	r2, r4
 8004f3a:	4648      	mov	r0, r9
 8004f3c:	f001 fbca 	bl	80066d4 <__lshift>
 8004f40:	4605      	mov	r5, r0
 8004f42:	e68d      	b.n	8004c60 <_dtoa_r+0x6f8>
 8004f44:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004f46:	2a00      	cmp	r2, #0
 8004f48:	f000 815d 	beq.w	8005206 <_dtoa_r+0xc9e>
 8004f4c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004f50:	9a08      	ldr	r2, [sp, #32]
 8004f52:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004f54:	4614      	mov	r4, r2
 8004f56:	441a      	add	r2, r3
 8004f58:	4498      	add	r8, r3
 8004f5a:	9208      	str	r2, [sp, #32]
 8004f5c:	e5f7      	b.n	8004b4e <_dtoa_r+0x5e6>
 8004f5e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f60:	2b00      	cmp	r3, #0
 8004f62:	f73f ad3e 	bgt.w	80049e2 <_dtoa_r+0x47a>
 8004f66:	f040 80bc 	bne.w	80050e2 <_dtoa_r+0xb7a>
 8004f6a:	ec51 0b17 	vmov	r0, r1, d7
 8004f6e:	2200      	movs	r2, #0
 8004f70:	4bb2      	ldr	r3, [pc, #712]	; (800523c <_dtoa_r+0xcd4>)
 8004f72:	f7fb fb01 	bl	8000578 <__aeabi_dmul>
 8004f76:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f7a:	f7fb fd83 	bl	8000a84 <__aeabi_dcmpge>
 8004f7e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004f80:	4635      	mov	r5, r6
 8004f82:	2800      	cmp	r0, #0
 8004f84:	d176      	bne.n	8005074 <_dtoa_r+0xb0c>
 8004f86:	9a06      	ldr	r2, [sp, #24]
 8004f88:	2331      	movs	r3, #49	; 0x31
 8004f8a:	3201      	adds	r2, #1
 8004f8c:	9206      	str	r2, [sp, #24]
 8004f8e:	f88b 3000 	strb.w	r3, [fp]
 8004f92:	f10b 0401 	add.w	r4, fp, #1
 8004f96:	4631      	mov	r1, r6
 8004f98:	4648      	mov	r0, r9
 8004f9a:	f001 fa01 	bl	80063a0 <_Bfree>
 8004f9e:	2d00      	cmp	r5, #0
 8004fa0:	f47f af34 	bne.w	8004e0c <_dtoa_r+0x8a4>
 8004fa4:	e736      	b.n	8004e14 <_dtoa_r+0x8ac>
 8004fa6:	f000 8142 	beq.w	800522e <_dtoa_r+0xcc6>
 8004faa:	9b06      	ldr	r3, [sp, #24]
 8004fac:	425c      	negs	r4, r3
 8004fae:	4ba4      	ldr	r3, [pc, #656]	; (8005240 <_dtoa_r+0xcd8>)
 8004fb0:	f004 020f 	and.w	r2, r4, #15
 8004fb4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004fb8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004fbc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004fc0:	f7fb fada 	bl	8000578 <__aeabi_dmul>
 8004fc4:	1124      	asrs	r4, r4, #4
 8004fc6:	e9cd 0100 	strd	r0, r1, [sp]
 8004fca:	f000 81c6 	beq.w	800535a <_dtoa_r+0xdf2>
 8004fce:	4d9d      	ldr	r5, [pc, #628]	; (8005244 <_dtoa_r+0xcdc>)
 8004fd0:	2300      	movs	r3, #0
 8004fd2:	2602      	movs	r6, #2
 8004fd4:	07e7      	lsls	r7, r4, #31
 8004fd6:	d505      	bpl.n	8004fe4 <_dtoa_r+0xa7c>
 8004fd8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004fdc:	f7fb facc 	bl	8000578 <__aeabi_dmul>
 8004fe0:	3601      	adds	r6, #1
 8004fe2:	2301      	movs	r3, #1
 8004fe4:	1064      	asrs	r4, r4, #1
 8004fe6:	f105 0508 	add.w	r5, r5, #8
 8004fea:	d1f3      	bne.n	8004fd4 <_dtoa_r+0xa6c>
 8004fec:	2b00      	cmp	r3, #0
 8004fee:	f43f ac27 	beq.w	8004840 <_dtoa_r+0x2d8>
 8004ff2:	e9cd 0100 	strd	r0, r1, [sp]
 8004ff6:	e423      	b.n	8004840 <_dtoa_r+0x2d8>
 8004ff8:	9b00      	ldr	r3, [sp, #0]
 8004ffa:	2b00      	cmp	r3, #0
 8004ffc:	f43f af6e 	beq.w	8004edc <_dtoa_r+0x974>
 8005000:	e726      	b.n	8004e50 <_dtoa_r+0x8e8>
 8005002:	6869      	ldr	r1, [r5, #4]
 8005004:	4648      	mov	r0, r9
 8005006:	f001 f9a5 	bl	8006354 <_Balloc>
 800500a:	692b      	ldr	r3, [r5, #16]
 800500c:	3302      	adds	r3, #2
 800500e:	009a      	lsls	r2, r3, #2
 8005010:	4604      	mov	r4, r0
 8005012:	f105 010c 	add.w	r1, r5, #12
 8005016:	300c      	adds	r0, #12
 8005018:	f7fb ff40 	bl	8000e9c <memcpy>
 800501c:	4621      	mov	r1, r4
 800501e:	2201      	movs	r2, #1
 8005020:	4648      	mov	r0, r9
 8005022:	f001 fb57 	bl	80066d4 <__lshift>
 8005026:	4680      	mov	r8, r0
 8005028:	e61f      	b.n	8004c6a <_dtoa_r+0x702>
 800502a:	2400      	movs	r4, #0
 800502c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005030:	4621      	mov	r1, r4
 8005032:	4648      	mov	r0, r9
 8005034:	f001 f98e 	bl	8006354 <_Balloc>
 8005038:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800503c:	930e      	str	r3, [sp, #56]	; 0x38
 800503e:	9309      	str	r3, [sp, #36]	; 0x24
 8005040:	2301      	movs	r3, #1
 8005042:	4683      	mov	fp, r0
 8005044:	9407      	str	r4, [sp, #28]
 8005046:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800504a:	930a      	str	r3, [sp, #40]	; 0x28
 800504c:	e4b6      	b.n	80049bc <_dtoa_r+0x454>
 800504e:	f001 f9b1 	bl	80063b4 <__multadd>
 8005052:	4627      	mov	r7, r4
 8005054:	4605      	mov	r5, r0
 8005056:	4680      	mov	r8, r0
 8005058:	e614      	b.n	8004c84 <_dtoa_r+0x71c>
 800505a:	4648      	mov	r0, r9
 800505c:	f001 f9a0 	bl	80063a0 <_Bfree>
 8005060:	2301      	movs	r3, #1
 8005062:	e639      	b.n	8004cd8 <_dtoa_r+0x770>
 8005064:	9b02      	ldr	r3, [sp, #8]
 8005066:	2b02      	cmp	r3, #2
 8005068:	f77f adf3 	ble.w	8004c52 <_dtoa_r+0x6ea>
 800506c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800506e:	2b00      	cmp	r3, #0
 8005070:	f000 80cf 	beq.w	8005212 <_dtoa_r+0xcaa>
 8005074:	9b07      	ldr	r3, [sp, #28]
 8005076:	43db      	mvns	r3, r3
 8005078:	9306      	str	r3, [sp, #24]
 800507a:	465c      	mov	r4, fp
 800507c:	e78b      	b.n	8004f96 <_dtoa_r+0xa2e>
 800507e:	9a06      	ldr	r2, [sp, #24]
 8005080:	2331      	movs	r3, #49	; 0x31
 8005082:	3201      	adds	r2, #1
 8005084:	9206      	str	r2, [sp, #24]
 8005086:	f88b 3000 	strb.w	r3, [fp]
 800508a:	e6b3      	b.n	8004df4 <_dtoa_r+0x88c>
 800508c:	2401      	movs	r4, #1
 800508e:	9409      	str	r4, [sp, #36]	; 0x24
 8005090:	9407      	str	r4, [sp, #28]
 8005092:	f7ff bb8b 	b.w	80047ac <_dtoa_r+0x244>
 8005096:	4630      	mov	r0, r6
 8005098:	f7fb fa04 	bl	80004a4 <__aeabi_i2d>
 800509c:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050a0:	f7fb fa6a 	bl	8000578 <__aeabi_dmul>
 80050a4:	2200      	movs	r2, #0
 80050a6:	4b68      	ldr	r3, [pc, #416]	; (8005248 <_dtoa_r+0xce0>)
 80050a8:	f7fb f8b0 	bl	800020c <__adddf3>
 80050ac:	4606      	mov	r6, r0
 80050ae:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80050b2:	2200      	movs	r2, #0
 80050b4:	4b61      	ldr	r3, [pc, #388]	; (800523c <_dtoa_r+0xcd4>)
 80050b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050ba:	f7fb f8a5 	bl	8000208 <__aeabi_dsub>
 80050be:	4632      	mov	r2, r6
 80050c0:	463b      	mov	r3, r7
 80050c2:	4604      	mov	r4, r0
 80050c4:	460d      	mov	r5, r1
 80050c6:	f7fb fce7 	bl	8000a98 <__aeabi_dcmpgt>
 80050ca:	2800      	cmp	r0, #0
 80050cc:	d14f      	bne.n	800516e <_dtoa_r+0xc06>
 80050ce:	4632      	mov	r2, r6
 80050d0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80050d4:	4620      	mov	r0, r4
 80050d6:	4629      	mov	r1, r5
 80050d8:	f7fb fcc0 	bl	8000a5c <__aeabi_dcmplt>
 80050dc:	2800      	cmp	r0, #0
 80050de:	f43f ac69 	beq.w	80049b4 <_dtoa_r+0x44c>
 80050e2:	2600      	movs	r6, #0
 80050e4:	4635      	mov	r5, r6
 80050e6:	e7c5      	b.n	8005074 <_dtoa_r+0xb0c>
 80050e8:	2301      	movs	r3, #1
 80050ea:	930a      	str	r3, [sp, #40]	; 0x28
 80050ec:	e6c8      	b.n	8004e80 <_dtoa_r+0x918>
 80050ee:	4651      	mov	r1, sl
 80050f0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80050f2:	4648      	mov	r0, r9
 80050f4:	f001 fa9e 	bl	8006634 <__pow5mult>
 80050f8:	4682      	mov	sl, r0
 80050fa:	e572      	b.n	8004be2 <_dtoa_r+0x67a>
 80050fc:	f8dd a000 	ldr.w	sl, [sp]
 8005100:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005104:	e686      	b.n	8004e14 <_dtoa_r+0x8ac>
 8005106:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005108:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800510a:	1afb      	subs	r3, r7, r3
 800510c:	441a      	add	r2, r3
 800510e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005112:	2700      	movs	r7, #0
 8005114:	e512      	b.n	8004b3c <_dtoa_r+0x5d4>
 8005116:	2b00      	cmp	r3, #0
 8005118:	9402      	str	r4, [sp, #8]
 800511a:	465e      	mov	r6, fp
 800511c:	f107 0401 	add.w	r4, r7, #1
 8005120:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005124:	f300 80ba 	bgt.w	800529c <_dtoa_r+0xd34>
 8005128:	9b00      	ldr	r3, [sp, #0]
 800512a:	9502      	str	r5, [sp, #8]
 800512c:	703b      	strb	r3, [r7, #0]
 800512e:	4645      	mov	r5, r8
 8005130:	e660      	b.n	8004df4 <_dtoa_r+0x88c>
 8005132:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005136:	2602      	movs	r6, #2
 8005138:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800513c:	f7ff bb67 	b.w	800480e <_dtoa_r+0x2a6>
 8005140:	9b00      	ldr	r3, [sp, #0]
 8005142:	2b39      	cmp	r3, #57	; 0x39
 8005144:	465e      	mov	r6, fp
 8005146:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800514a:	f000 80b9 	beq.w	80052c0 <_dtoa_r+0xd58>
 800514e:	9b00      	ldr	r3, [sp, #0]
 8005150:	9502      	str	r5, [sp, #8]
 8005152:	3301      	adds	r3, #1
 8005154:	703b      	strb	r3, [r7, #0]
 8005156:	4645      	mov	r5, r8
 8005158:	e64c      	b.n	8004df4 <_dtoa_r+0x88c>
 800515a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800515e:	1a9c      	subs	r4, r3, r2
 8005160:	e4f5      	b.n	8004b4e <_dtoa_r+0x5e6>
 8005162:	465e      	mov	r6, fp
 8005164:	9502      	str	r5, [sp, #8]
 8005166:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800516a:	4645      	mov	r5, r8
 800516c:	e61a      	b.n	8004da4 <_dtoa_r+0x83c>
 800516e:	2600      	movs	r6, #0
 8005170:	4635      	mov	r5, r6
 8005172:	e708      	b.n	8004f86 <_dtoa_r+0xa1e>
 8005174:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005178:	e9dd 0100 	ldrd	r0, r1, [sp]
 800517c:	f7fb f9fc 	bl	8000578 <__aeabi_dmul>
 8005180:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005182:	f88b 5000 	strb.w	r5, [fp]
 8005186:	2b01      	cmp	r3, #1
 8005188:	e9cd 0100 	strd	r0, r1, [sp]
 800518c:	d020      	beq.n	80051d0 <_dtoa_r+0xc68>
 800518e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005190:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005194:	445b      	add	r3, fp
 8005196:	4698      	mov	r8, r3
 8005198:	2200      	movs	r2, #0
 800519a:	4b2c      	ldr	r3, [pc, #176]	; (800524c <_dtoa_r+0xce4>)
 800519c:	4630      	mov	r0, r6
 800519e:	4639      	mov	r1, r7
 80051a0:	f7fb f9ea 	bl	8000578 <__aeabi_dmul>
 80051a4:	460f      	mov	r7, r1
 80051a6:	4606      	mov	r6, r0
 80051a8:	f7fb fc80 	bl	8000aac <__aeabi_d2iz>
 80051ac:	4605      	mov	r5, r0
 80051ae:	f7fb f979 	bl	80004a4 <__aeabi_i2d>
 80051b2:	3530      	adds	r5, #48	; 0x30
 80051b4:	4602      	mov	r2, r0
 80051b6:	460b      	mov	r3, r1
 80051b8:	4630      	mov	r0, r6
 80051ba:	4639      	mov	r1, r7
 80051bc:	f7fb f824 	bl	8000208 <__aeabi_dsub>
 80051c0:	f804 5b01 	strb.w	r5, [r4], #1
 80051c4:	4544      	cmp	r4, r8
 80051c6:	4606      	mov	r6, r0
 80051c8:	460f      	mov	r7, r1
 80051ca:	d1e5      	bne.n	8005198 <_dtoa_r+0xc30>
 80051cc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80051d0:	4b1f      	ldr	r3, [pc, #124]	; (8005250 <_dtoa_r+0xce8>)
 80051d2:	2200      	movs	r2, #0
 80051d4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051d8:	f7fb f818 	bl	800020c <__adddf3>
 80051dc:	4632      	mov	r2, r6
 80051de:	463b      	mov	r3, r7
 80051e0:	f7fb fc3c 	bl	8000a5c <__aeabi_dcmplt>
 80051e4:	2800      	cmp	r0, #0
 80051e6:	d070      	beq.n	80052ca <_dtoa_r+0xd62>
 80051e8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051ea:	9306      	str	r3, [sp, #24]
 80051ec:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80051f0:	e48f      	b.n	8004b12 <_dtoa_r+0x5aa>
 80051f2:	2330      	movs	r3, #48	; 0x30
 80051f4:	f88b 3000 	strb.w	r3, [fp]
 80051f8:	9b06      	ldr	r3, [sp, #24]
 80051fa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80051fe:	3301      	adds	r3, #1
 8005200:	9306      	str	r3, [sp, #24]
 8005202:	465b      	mov	r3, fp
 8005204:	e489      	b.n	8004b1a <_dtoa_r+0x5b2>
 8005206:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005208:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800520c:	e6a0      	b.n	8004f50 <_dtoa_r+0x9e8>
 800520e:	2300      	movs	r3, #0
 8005210:	e676      	b.n	8004f00 <_dtoa_r+0x998>
 8005212:	4631      	mov	r1, r6
 8005214:	2205      	movs	r2, #5
 8005216:	4648      	mov	r0, r9
 8005218:	f001 f8cc 	bl	80063b4 <__multadd>
 800521c:	4601      	mov	r1, r0
 800521e:	4606      	mov	r6, r0
 8005220:	4650      	mov	r0, sl
 8005222:	f001 faad 	bl	8006780 <__mcmp>
 8005226:	2800      	cmp	r0, #0
 8005228:	f73f aead 	bgt.w	8004f86 <_dtoa_r+0xa1e>
 800522c:	e722      	b.n	8005074 <_dtoa_r+0xb0c>
 800522e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005232:	2602      	movs	r6, #2
 8005234:	ed8d 7b00 	vstr	d7, [sp]
 8005238:	f7ff bb02 	b.w	8004840 <_dtoa_r+0x2d8>
 800523c:	40140000 	.word	0x40140000
 8005240:	08008088 	.word	0x08008088
 8005244:	08008060 	.word	0x08008060
 8005248:	401c0000 	.word	0x401c0000
 800524c:	40240000 	.word	0x40240000
 8005250:	3fe00000 	.word	0x3fe00000
 8005254:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005256:	2b00      	cmp	r3, #0
 8005258:	f43f af1d 	beq.w	8005096 <_dtoa_r+0xb2e>
 800525c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800525e:	2c00      	cmp	r4, #0
 8005260:	f77f aba8 	ble.w	80049b4 <_dtoa_r+0x44c>
 8005264:	2200      	movs	r2, #0
 8005266:	4b45      	ldr	r3, [pc, #276]	; (800537c <_dtoa_r+0xe14>)
 8005268:	e9dd 0100 	ldrd	r0, r1, [sp]
 800526c:	f7fb f984 	bl	8000578 <__aeabi_dmul>
 8005270:	e9cd 0100 	strd	r0, r1, [sp]
 8005274:	1c70      	adds	r0, r6, #1
 8005276:	f7fb f915 	bl	80004a4 <__aeabi_i2d>
 800527a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800527e:	f7fb f97b 	bl	8000578 <__aeabi_dmul>
 8005282:	4b3f      	ldr	r3, [pc, #252]	; (8005380 <_dtoa_r+0xe18>)
 8005284:	2200      	movs	r2, #0
 8005286:	f7fa ffc1 	bl	800020c <__adddf3>
 800528a:	9b06      	ldr	r3, [sp, #24]
 800528c:	9412      	str	r4, [sp, #72]	; 0x48
 800528e:	3b01      	subs	r3, #1
 8005290:	4606      	mov	r6, r0
 8005292:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005296:	9316      	str	r3, [sp, #88]	; 0x58
 8005298:	f7ff baf3 	b.w	8004882 <_dtoa_r+0x31a>
 800529c:	4651      	mov	r1, sl
 800529e:	2201      	movs	r2, #1
 80052a0:	4648      	mov	r0, r9
 80052a2:	f001 fa17 	bl	80066d4 <__lshift>
 80052a6:	4631      	mov	r1, r6
 80052a8:	4682      	mov	sl, r0
 80052aa:	f001 fa69 	bl	8006780 <__mcmp>
 80052ae:	2800      	cmp	r0, #0
 80052b0:	dd3b      	ble.n	800532a <_dtoa_r+0xdc2>
 80052b2:	9b00      	ldr	r3, [sp, #0]
 80052b4:	2b39      	cmp	r3, #57	; 0x39
 80052b6:	d003      	beq.n	80052c0 <_dtoa_r+0xd58>
 80052b8:	9b02      	ldr	r3, [sp, #8]
 80052ba:	3331      	adds	r3, #49	; 0x31
 80052bc:	9300      	str	r3, [sp, #0]
 80052be:	e733      	b.n	8005128 <_dtoa_r+0xbc0>
 80052c0:	2239      	movs	r2, #57	; 0x39
 80052c2:	9502      	str	r5, [sp, #8]
 80052c4:	703a      	strb	r2, [r7, #0]
 80052c6:	4645      	mov	r5, r8
 80052c8:	e58e      	b.n	8004de8 <_dtoa_r+0x880>
 80052ca:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052ce:	2000      	movs	r0, #0
 80052d0:	492c      	ldr	r1, [pc, #176]	; (8005384 <_dtoa_r+0xe1c>)
 80052d2:	f7fa ff99 	bl	8000208 <__aeabi_dsub>
 80052d6:	4632      	mov	r2, r6
 80052d8:	463b      	mov	r3, r7
 80052da:	f7fb fbdd 	bl	8000a98 <__aeabi_dcmpgt>
 80052de:	b910      	cbnz	r0, 80052e6 <_dtoa_r+0xd7e>
 80052e0:	f7ff bb68 	b.w	80049b4 <_dtoa_r+0x44c>
 80052e4:	4614      	mov	r4, r2
 80052e6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80052ea:	2b30      	cmp	r3, #48	; 0x30
 80052ec:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80052f0:	d0f8      	beq.n	80052e4 <_dtoa_r+0xd7c>
 80052f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80052f4:	9306      	str	r3, [sp, #24]
 80052f6:	e58d      	b.n	8004e14 <_dtoa_r+0x8ac>
 80052f8:	46d9      	mov	r9, fp
 80052fa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80052fe:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005302:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005304:	9306      	str	r3, [sp, #24]
 8005306:	e404      	b.n	8004b12 <_dtoa_r+0x5aa>
 8005308:	9b00      	ldr	r3, [sp, #0]
 800530a:	2b39      	cmp	r3, #57	; 0x39
 800530c:	4621      	mov	r1, r4
 800530e:	4632      	mov	r2, r6
 8005310:	f107 0401 	add.w	r4, r7, #1
 8005314:	465e      	mov	r6, fp
 8005316:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800531a:	d0d1      	beq.n	80052c0 <_dtoa_r+0xd58>
 800531c:	2a00      	cmp	r2, #0
 800531e:	f77f af03 	ble.w	8005128 <_dtoa_r+0xbc0>
 8005322:	460b      	mov	r3, r1
 8005324:	3331      	adds	r3, #49	; 0x31
 8005326:	9300      	str	r3, [sp, #0]
 8005328:	e6fe      	b.n	8005128 <_dtoa_r+0xbc0>
 800532a:	f47f aefd 	bne.w	8005128 <_dtoa_r+0xbc0>
 800532e:	9b00      	ldr	r3, [sp, #0]
 8005330:	07da      	lsls	r2, r3, #31
 8005332:	f57f aef9 	bpl.w	8005128 <_dtoa_r+0xbc0>
 8005336:	e7bc      	b.n	80052b2 <_dtoa_r+0xd4a>
 8005338:	4629      	mov	r1, r5
 800533a:	2300      	movs	r3, #0
 800533c:	220a      	movs	r2, #10
 800533e:	4648      	mov	r0, r9
 8005340:	f001 f838 	bl	80063b4 <__multadd>
 8005344:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005346:	2b00      	cmp	r3, #0
 8005348:	4605      	mov	r5, r0
 800534a:	dd09      	ble.n	8005360 <_dtoa_r+0xdf8>
 800534c:	9309      	str	r3, [sp, #36]	; 0x24
 800534e:	e484      	b.n	8004c5a <_dtoa_r+0x6f2>
 8005350:	9b02      	ldr	r3, [sp, #8]
 8005352:	2b02      	cmp	r3, #2
 8005354:	dc0e      	bgt.n	8005374 <_dtoa_r+0xe0c>
 8005356:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005358:	e507      	b.n	8004d6a <_dtoa_r+0x802>
 800535a:	2602      	movs	r6, #2
 800535c:	f7ff ba70 	b.w	8004840 <_dtoa_r+0x2d8>
 8005360:	9b02      	ldr	r3, [sp, #8]
 8005362:	2b02      	cmp	r3, #2
 8005364:	dc06      	bgt.n	8005374 <_dtoa_r+0xe0c>
 8005366:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005368:	e7f0      	b.n	800534c <_dtoa_r+0xde4>
 800536a:	f43f ac59 	beq.w	8004c20 <_dtoa_r+0x6b8>
 800536e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005372:	e450      	b.n	8004c16 <_dtoa_r+0x6ae>
 8005374:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005376:	9309      	str	r3, [sp, #36]	; 0x24
 8005378:	e678      	b.n	800506c <_dtoa_r+0xb04>
 800537a:	bf00      	nop
 800537c:	40240000 	.word	0x40240000
 8005380:	401c0000 	.word	0x401c0000
 8005384:	3fe00000 	.word	0x3fe00000

08005388 <__sflush_r>:
 8005388:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800538c:	b29a      	uxth	r2, r3
 800538e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005392:	460c      	mov	r4, r1
 8005394:	0711      	lsls	r1, r2, #28
 8005396:	4680      	mov	r8, r0
 8005398:	d444      	bmi.n	8005424 <__sflush_r+0x9c>
 800539a:	6862      	ldr	r2, [r4, #4]
 800539c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80053a0:	2a00      	cmp	r2, #0
 80053a2:	81a3      	strh	r3, [r4, #12]
 80053a4:	dd59      	ble.n	800545a <__sflush_r+0xd2>
 80053a6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80053a8:	2d00      	cmp	r5, #0
 80053aa:	d053      	beq.n	8005454 <__sflush_r+0xcc>
 80053ac:	2200      	movs	r2, #0
 80053ae:	b29b      	uxth	r3, r3
 80053b0:	f8d8 6000 	ldr.w	r6, [r8]
 80053b4:	69e1      	ldr	r1, [r4, #28]
 80053b6:	f8c8 2000 	str.w	r2, [r8]
 80053ba:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80053be:	f040 8083 	bne.w	80054c8 <__sflush_r+0x140>
 80053c2:	2301      	movs	r3, #1
 80053c4:	4640      	mov	r0, r8
 80053c6:	47a8      	blx	r5
 80053c8:	1c42      	adds	r2, r0, #1
 80053ca:	d04a      	beq.n	8005462 <__sflush_r+0xda>
 80053cc:	89a3      	ldrh	r3, [r4, #12]
 80053ce:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80053d0:	69e1      	ldr	r1, [r4, #28]
 80053d2:	075b      	lsls	r3, r3, #29
 80053d4:	d505      	bpl.n	80053e2 <__sflush_r+0x5a>
 80053d6:	6862      	ldr	r2, [r4, #4]
 80053d8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80053da:	1a80      	subs	r0, r0, r2
 80053dc:	b10b      	cbz	r3, 80053e2 <__sflush_r+0x5a>
 80053de:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80053e0:	1ac0      	subs	r0, r0, r3
 80053e2:	4602      	mov	r2, r0
 80053e4:	2300      	movs	r3, #0
 80053e6:	4640      	mov	r0, r8
 80053e8:	47a8      	blx	r5
 80053ea:	1c47      	adds	r7, r0, #1
 80053ec:	d045      	beq.n	800547a <__sflush_r+0xf2>
 80053ee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053f2:	6922      	ldr	r2, [r4, #16]
 80053f4:	6022      	str	r2, [r4, #0]
 80053f6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80053fa:	2200      	movs	r2, #0
 80053fc:	81a3      	strh	r3, [r4, #12]
 80053fe:	04db      	lsls	r3, r3, #19
 8005400:	6062      	str	r2, [r4, #4]
 8005402:	d500      	bpl.n	8005406 <__sflush_r+0x7e>
 8005404:	6520      	str	r0, [r4, #80]	; 0x50
 8005406:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005408:	f8c8 6000 	str.w	r6, [r8]
 800540c:	b311      	cbz	r1, 8005454 <__sflush_r+0xcc>
 800540e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005412:	4299      	cmp	r1, r3
 8005414:	d002      	beq.n	800541c <__sflush_r+0x94>
 8005416:	4640      	mov	r0, r8
 8005418:	f000 f95e 	bl	80056d8 <_free_r>
 800541c:	2000      	movs	r0, #0
 800541e:	6320      	str	r0, [r4, #48]	; 0x30
 8005420:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005424:	6926      	ldr	r6, [r4, #16]
 8005426:	b1ae      	cbz	r6, 8005454 <__sflush_r+0xcc>
 8005428:	6825      	ldr	r5, [r4, #0]
 800542a:	6026      	str	r6, [r4, #0]
 800542c:	0792      	lsls	r2, r2, #30
 800542e:	bf0c      	ite	eq
 8005430:	6963      	ldreq	r3, [r4, #20]
 8005432:	2300      	movne	r3, #0
 8005434:	1bad      	subs	r5, r5, r6
 8005436:	60a3      	str	r3, [r4, #8]
 8005438:	e00a      	b.n	8005450 <__sflush_r+0xc8>
 800543a:	462b      	mov	r3, r5
 800543c:	4632      	mov	r2, r6
 800543e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005440:	69e1      	ldr	r1, [r4, #28]
 8005442:	4640      	mov	r0, r8
 8005444:	47b8      	blx	r7
 8005446:	2800      	cmp	r0, #0
 8005448:	eba5 0500 	sub.w	r5, r5, r0
 800544c:	4406      	add	r6, r0
 800544e:	dd2b      	ble.n	80054a8 <__sflush_r+0x120>
 8005450:	2d00      	cmp	r5, #0
 8005452:	dcf2      	bgt.n	800543a <__sflush_r+0xb2>
 8005454:	2000      	movs	r0, #0
 8005456:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800545a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800545c:	2a00      	cmp	r2, #0
 800545e:	dca2      	bgt.n	80053a6 <__sflush_r+0x1e>
 8005460:	e7f8      	b.n	8005454 <__sflush_r+0xcc>
 8005462:	f8d8 3000 	ldr.w	r3, [r8]
 8005466:	2b00      	cmp	r3, #0
 8005468:	d0b0      	beq.n	80053cc <__sflush_r+0x44>
 800546a:	2b1d      	cmp	r3, #29
 800546c:	d001      	beq.n	8005472 <__sflush_r+0xea>
 800546e:	2b16      	cmp	r3, #22
 8005470:	d12c      	bne.n	80054cc <__sflush_r+0x144>
 8005472:	f8c8 6000 	str.w	r6, [r8]
 8005476:	2000      	movs	r0, #0
 8005478:	e7ed      	b.n	8005456 <__sflush_r+0xce>
 800547a:	f8d8 1000 	ldr.w	r1, [r8]
 800547e:	291d      	cmp	r1, #29
 8005480:	d81a      	bhi.n	80054b8 <__sflush_r+0x130>
 8005482:	4b15      	ldr	r3, [pc, #84]	; (80054d8 <__sflush_r+0x150>)
 8005484:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005488:	40cb      	lsrs	r3, r1
 800548a:	43db      	mvns	r3, r3
 800548c:	f013 0301 	ands.w	r3, r3, #1
 8005490:	d114      	bne.n	80054bc <__sflush_r+0x134>
 8005492:	6925      	ldr	r5, [r4, #16]
 8005494:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005498:	e9c4 5300 	strd	r5, r3, [r4]
 800549c:	04d5      	lsls	r5, r2, #19
 800549e:	81a2      	strh	r2, [r4, #12]
 80054a0:	d5b1      	bpl.n	8005406 <__sflush_r+0x7e>
 80054a2:	2900      	cmp	r1, #0
 80054a4:	d1af      	bne.n	8005406 <__sflush_r+0x7e>
 80054a6:	e7ad      	b.n	8005404 <__sflush_r+0x7c>
 80054a8:	89a3      	ldrh	r3, [r4, #12]
 80054aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054ae:	81a3      	strh	r3, [r4, #12]
 80054b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80054b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80054b8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80054bc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80054c0:	81a2      	strh	r2, [r4, #12]
 80054c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80054c6:	e7c6      	b.n	8005456 <__sflush_r+0xce>
 80054c8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80054ca:	e782      	b.n	80053d2 <__sflush_r+0x4a>
 80054cc:	89a3      	ldrh	r3, [r4, #12]
 80054ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054d2:	81a3      	strh	r3, [r4, #12]
 80054d4:	e7bf      	b.n	8005456 <__sflush_r+0xce>
 80054d6:	bf00      	nop
 80054d8:	20400001 	.word	0x20400001

080054dc <_fflush_r>:
 80054dc:	b538      	push	{r3, r4, r5, lr}
 80054de:	460d      	mov	r5, r1
 80054e0:	4604      	mov	r4, r0
 80054e2:	b108      	cbz	r0, 80054e8 <_fflush_r+0xc>
 80054e4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80054e6:	b1a3      	cbz	r3, 8005512 <_fflush_r+0x36>
 80054e8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80054ec:	b1b8      	cbz	r0, 800551e <_fflush_r+0x42>
 80054ee:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80054f0:	07db      	lsls	r3, r3, #31
 80054f2:	d401      	bmi.n	80054f8 <_fflush_r+0x1c>
 80054f4:	0581      	lsls	r1, r0, #22
 80054f6:	d51a      	bpl.n	800552e <_fflush_r+0x52>
 80054f8:	4620      	mov	r0, r4
 80054fa:	4629      	mov	r1, r5
 80054fc:	f7ff ff44 	bl	8005388 <__sflush_r>
 8005500:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005502:	07da      	lsls	r2, r3, #31
 8005504:	4604      	mov	r4, r0
 8005506:	d402      	bmi.n	800550e <_fflush_r+0x32>
 8005508:	89ab      	ldrh	r3, [r5, #12]
 800550a:	059b      	lsls	r3, r3, #22
 800550c:	d50a      	bpl.n	8005524 <_fflush_r+0x48>
 800550e:	4620      	mov	r0, r4
 8005510:	bd38      	pop	{r3, r4, r5, pc}
 8005512:	f000 f83f 	bl	8005594 <__sinit>
 8005516:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800551a:	2800      	cmp	r0, #0
 800551c:	d1e7      	bne.n	80054ee <_fflush_r+0x12>
 800551e:	4604      	mov	r4, r0
 8005520:	4620      	mov	r0, r4
 8005522:	bd38      	pop	{r3, r4, r5, pc}
 8005524:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005526:	f000 fb87 	bl	8005c38 <__retarget_lock_release_recursive>
 800552a:	4620      	mov	r0, r4
 800552c:	bd38      	pop	{r3, r4, r5, pc}
 800552e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005530:	f000 fb80 	bl	8005c34 <__retarget_lock_acquire_recursive>
 8005534:	e7e0      	b.n	80054f8 <_fflush_r+0x1c>
 8005536:	bf00      	nop

08005538 <std>:
 8005538:	b510      	push	{r4, lr}
 800553a:	2300      	movs	r3, #0
 800553c:	4604      	mov	r4, r0
 800553e:	8181      	strh	r1, [r0, #12]
 8005540:	81c2      	strh	r2, [r0, #14]
 8005542:	e9c0 3300 	strd	r3, r3, [r0]
 8005546:	6083      	str	r3, [r0, #8]
 8005548:	6643      	str	r3, [r0, #100]	; 0x64
 800554a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800554e:	6183      	str	r3, [r0, #24]
 8005550:	4619      	mov	r1, r3
 8005552:	2208      	movs	r2, #8
 8005554:	305c      	adds	r0, #92	; 0x5c
 8005556:	f7fd f8c9 	bl	80026ec <memset>
 800555a:	4807      	ldr	r0, [pc, #28]	; (8005578 <std+0x40>)
 800555c:	4907      	ldr	r1, [pc, #28]	; (800557c <std+0x44>)
 800555e:	4a08      	ldr	r2, [pc, #32]	; (8005580 <std+0x48>)
 8005560:	4b08      	ldr	r3, [pc, #32]	; (8005584 <std+0x4c>)
 8005562:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005564:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005568:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800556c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005570:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005574:	f000 bb5a 	b.w	8005c2c <__retarget_lock_init_recursive>
 8005578:	08006d51 	.word	0x08006d51
 800557c:	08006d75 	.word	0x08006d75
 8005580:	08006db1 	.word	0x08006db1
 8005584:	08006dd1 	.word	0x08006dd1

08005588 <_cleanup_r>:
 8005588:	4901      	ldr	r1, [pc, #4]	; (8005590 <_cleanup_r+0x8>)
 800558a:	f000 bb17 	b.w	8005bbc <_fwalk_reent>
 800558e:	bf00      	nop
 8005590:	08007041 	.word	0x08007041

08005594 <__sinit>:
 8005594:	b510      	push	{r4, lr}
 8005596:	4604      	mov	r4, r0
 8005598:	4812      	ldr	r0, [pc, #72]	; (80055e4 <__sinit+0x50>)
 800559a:	f000 fb4b 	bl	8005c34 <__retarget_lock_acquire_recursive>
 800559e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80055a0:	b9d2      	cbnz	r2, 80055d8 <__sinit+0x44>
 80055a2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80055a6:	4810      	ldr	r0, [pc, #64]	; (80055e8 <__sinit+0x54>)
 80055a8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80055ac:	2103      	movs	r1, #3
 80055ae:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80055b2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80055b4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80055b8:	6860      	ldr	r0, [r4, #4]
 80055ba:	2104      	movs	r1, #4
 80055bc:	f7ff ffbc 	bl	8005538 <std>
 80055c0:	2201      	movs	r2, #1
 80055c2:	2109      	movs	r1, #9
 80055c4:	68a0      	ldr	r0, [r4, #8]
 80055c6:	f7ff ffb7 	bl	8005538 <std>
 80055ca:	2202      	movs	r2, #2
 80055cc:	2112      	movs	r1, #18
 80055ce:	68e0      	ldr	r0, [r4, #12]
 80055d0:	f7ff ffb2 	bl	8005538 <std>
 80055d4:	2301      	movs	r3, #1
 80055d6:	63a3      	str	r3, [r4, #56]	; 0x38
 80055d8:	4802      	ldr	r0, [pc, #8]	; (80055e4 <__sinit+0x50>)
 80055da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80055de:	f000 bb2b 	b.w	8005c38 <__retarget_lock_release_recursive>
 80055e2:	bf00      	nop
 80055e4:	20000af4 	.word	0x20000af4
 80055e8:	08005589 	.word	0x08005589

080055ec <__sfp_lock_acquire>:
 80055ec:	4801      	ldr	r0, [pc, #4]	; (80055f4 <__sfp_lock_acquire+0x8>)
 80055ee:	f000 bb21 	b.w	8005c34 <__retarget_lock_acquire_recursive>
 80055f2:	bf00      	nop
 80055f4:	20000b08 	.word	0x20000b08

080055f8 <__sfp_lock_release>:
 80055f8:	4801      	ldr	r0, [pc, #4]	; (8005600 <__sfp_lock_release+0x8>)
 80055fa:	f000 bb1d 	b.w	8005c38 <__retarget_lock_release_recursive>
 80055fe:	bf00      	nop
 8005600:	20000b08 	.word	0x20000b08

08005604 <__libc_fini_array>:
 8005604:	b538      	push	{r3, r4, r5, lr}
 8005606:	4c0a      	ldr	r4, [pc, #40]	; (8005630 <__libc_fini_array+0x2c>)
 8005608:	4d0a      	ldr	r5, [pc, #40]	; (8005634 <__libc_fini_array+0x30>)
 800560a:	1b64      	subs	r4, r4, r5
 800560c:	10a4      	asrs	r4, r4, #2
 800560e:	d00a      	beq.n	8005626 <__libc_fini_array+0x22>
 8005610:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005614:	3b01      	subs	r3, #1
 8005616:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800561a:	3c01      	subs	r4, #1
 800561c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005620:	4798      	blx	r3
 8005622:	2c00      	cmp	r4, #0
 8005624:	d1f9      	bne.n	800561a <__libc_fini_array+0x16>
 8005626:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800562a:	f001 befd 	b.w	8007428 <_fini>
 800562e:	bf00      	nop
 8005630:	08008284 	.word	0x08008284
 8005634:	08008280 	.word	0x08008280

08005638 <_malloc_trim_r>:
 8005638:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800563a:	4f24      	ldr	r7, [pc, #144]	; (80056cc <_malloc_trim_r+0x94>)
 800563c:	460c      	mov	r4, r1
 800563e:	4606      	mov	r6, r0
 8005640:	f000 fe7c 	bl	800633c <__malloc_lock>
 8005644:	68bb      	ldr	r3, [r7, #8]
 8005646:	685d      	ldr	r5, [r3, #4]
 8005648:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800564c:	310f      	adds	r1, #15
 800564e:	f025 0503 	bic.w	r5, r5, #3
 8005652:	4429      	add	r1, r5
 8005654:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005658:	f021 010f 	bic.w	r1, r1, #15
 800565c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005660:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005664:	db07      	blt.n	8005676 <_malloc_trim_r+0x3e>
 8005666:	2100      	movs	r1, #0
 8005668:	4630      	mov	r0, r6
 800566a:	f001 fb5f 	bl	8006d2c <_sbrk_r>
 800566e:	68bb      	ldr	r3, [r7, #8]
 8005670:	442b      	add	r3, r5
 8005672:	4298      	cmp	r0, r3
 8005674:	d004      	beq.n	8005680 <_malloc_trim_r+0x48>
 8005676:	4630      	mov	r0, r6
 8005678:	f000 fe66 	bl	8006348 <__malloc_unlock>
 800567c:	2000      	movs	r0, #0
 800567e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005680:	4261      	negs	r1, r4
 8005682:	4630      	mov	r0, r6
 8005684:	f001 fb52 	bl	8006d2c <_sbrk_r>
 8005688:	3001      	adds	r0, #1
 800568a:	d00d      	beq.n	80056a8 <_malloc_trim_r+0x70>
 800568c:	4b10      	ldr	r3, [pc, #64]	; (80056d0 <_malloc_trim_r+0x98>)
 800568e:	68ba      	ldr	r2, [r7, #8]
 8005690:	6819      	ldr	r1, [r3, #0]
 8005692:	1b2d      	subs	r5, r5, r4
 8005694:	f045 0501 	orr.w	r5, r5, #1
 8005698:	4630      	mov	r0, r6
 800569a:	1b09      	subs	r1, r1, r4
 800569c:	6055      	str	r5, [r2, #4]
 800569e:	6019      	str	r1, [r3, #0]
 80056a0:	f000 fe52 	bl	8006348 <__malloc_unlock>
 80056a4:	2001      	movs	r0, #1
 80056a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80056a8:	2100      	movs	r1, #0
 80056aa:	4630      	mov	r0, r6
 80056ac:	f001 fb3e 	bl	8006d2c <_sbrk_r>
 80056b0:	68ba      	ldr	r2, [r7, #8]
 80056b2:	1a83      	subs	r3, r0, r2
 80056b4:	2b0f      	cmp	r3, #15
 80056b6:	ddde      	ble.n	8005676 <_malloc_trim_r+0x3e>
 80056b8:	4c06      	ldr	r4, [pc, #24]	; (80056d4 <_malloc_trim_r+0x9c>)
 80056ba:	4905      	ldr	r1, [pc, #20]	; (80056d0 <_malloc_trim_r+0x98>)
 80056bc:	6824      	ldr	r4, [r4, #0]
 80056be:	f043 0301 	orr.w	r3, r3, #1
 80056c2:	1b00      	subs	r0, r0, r4
 80056c4:	6053      	str	r3, [r2, #4]
 80056c6:	6008      	str	r0, [r1, #0]
 80056c8:	e7d5      	b.n	8005676 <_malloc_trim_r+0x3e>
 80056ca:	bf00      	nop
 80056cc:	2000044c 	.word	0x2000044c
 80056d0:	20000a6c 	.word	0x20000a6c
 80056d4:	20000854 	.word	0x20000854

080056d8 <_free_r>:
 80056d8:	2900      	cmp	r1, #0
 80056da:	d053      	beq.n	8005784 <_free_r+0xac>
 80056dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80056de:	460c      	mov	r4, r1
 80056e0:	4606      	mov	r6, r0
 80056e2:	f000 fe2b 	bl	800633c <__malloc_lock>
 80056e6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80056ea:	4f71      	ldr	r7, [pc, #452]	; (80058b0 <_free_r+0x1d8>)
 80056ec:	f02c 0101 	bic.w	r1, ip, #1
 80056f0:	f1a4 0508 	sub.w	r5, r4, #8
 80056f4:	186b      	adds	r3, r5, r1
 80056f6:	68b8      	ldr	r0, [r7, #8]
 80056f8:	685a      	ldr	r2, [r3, #4]
 80056fa:	4298      	cmp	r0, r3
 80056fc:	f022 0203 	bic.w	r2, r2, #3
 8005700:	d053      	beq.n	80057aa <_free_r+0xd2>
 8005702:	f01c 0f01 	tst.w	ip, #1
 8005706:	605a      	str	r2, [r3, #4]
 8005708:	eb03 0002 	add.w	r0, r3, r2
 800570c:	d13b      	bne.n	8005786 <_free_r+0xae>
 800570e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005712:	6840      	ldr	r0, [r0, #4]
 8005714:	eba5 050c 	sub.w	r5, r5, ip
 8005718:	f107 0e08 	add.w	lr, r7, #8
 800571c:	68ac      	ldr	r4, [r5, #8]
 800571e:	4574      	cmp	r4, lr
 8005720:	4461      	add	r1, ip
 8005722:	f000 0001 	and.w	r0, r0, #1
 8005726:	d075      	beq.n	8005814 <_free_r+0x13c>
 8005728:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800572c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005730:	f8cc 4008 	str.w	r4, [ip, #8]
 8005734:	b360      	cbz	r0, 8005790 <_free_r+0xb8>
 8005736:	f041 0301 	orr.w	r3, r1, #1
 800573a:	606b      	str	r3, [r5, #4]
 800573c:	5069      	str	r1, [r5, r1]
 800573e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005742:	d350      	bcc.n	80057e6 <_free_r+0x10e>
 8005744:	0a4b      	lsrs	r3, r1, #9
 8005746:	2b04      	cmp	r3, #4
 8005748:	d870      	bhi.n	800582c <_free_r+0x154>
 800574a:	098b      	lsrs	r3, r1, #6
 800574c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005750:	00e4      	lsls	r4, r4, #3
 8005752:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005756:	1938      	adds	r0, r7, r4
 8005758:	593b      	ldr	r3, [r7, r4]
 800575a:	3808      	subs	r0, #8
 800575c:	4298      	cmp	r0, r3
 800575e:	d078      	beq.n	8005852 <_free_r+0x17a>
 8005760:	685a      	ldr	r2, [r3, #4]
 8005762:	f022 0203 	bic.w	r2, r2, #3
 8005766:	428a      	cmp	r2, r1
 8005768:	d971      	bls.n	800584e <_free_r+0x176>
 800576a:	689b      	ldr	r3, [r3, #8]
 800576c:	4298      	cmp	r0, r3
 800576e:	d1f7      	bne.n	8005760 <_free_r+0x88>
 8005770:	68c3      	ldr	r3, [r0, #12]
 8005772:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005776:	609d      	str	r5, [r3, #8]
 8005778:	60c5      	str	r5, [r0, #12]
 800577a:	4630      	mov	r0, r6
 800577c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005780:	f000 bde2 	b.w	8006348 <__malloc_unlock>
 8005784:	4770      	bx	lr
 8005786:	6840      	ldr	r0, [r0, #4]
 8005788:	f000 0001 	and.w	r0, r0, #1
 800578c:	2800      	cmp	r0, #0
 800578e:	d1d2      	bne.n	8005736 <_free_r+0x5e>
 8005790:	6898      	ldr	r0, [r3, #8]
 8005792:	4c48      	ldr	r4, [pc, #288]	; (80058b4 <_free_r+0x1dc>)
 8005794:	4411      	add	r1, r2
 8005796:	42a0      	cmp	r0, r4
 8005798:	f041 0201 	orr.w	r2, r1, #1
 800579c:	d062      	beq.n	8005864 <_free_r+0x18c>
 800579e:	68db      	ldr	r3, [r3, #12]
 80057a0:	60c3      	str	r3, [r0, #12]
 80057a2:	6098      	str	r0, [r3, #8]
 80057a4:	606a      	str	r2, [r5, #4]
 80057a6:	5069      	str	r1, [r5, r1]
 80057a8:	e7c9      	b.n	800573e <_free_r+0x66>
 80057aa:	f01c 0f01 	tst.w	ip, #1
 80057ae:	440a      	add	r2, r1
 80057b0:	d107      	bne.n	80057c2 <_free_r+0xea>
 80057b2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80057b6:	1aed      	subs	r5, r5, r3
 80057b8:	441a      	add	r2, r3
 80057ba:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80057be:	60cb      	str	r3, [r1, #12]
 80057c0:	6099      	str	r1, [r3, #8]
 80057c2:	4b3d      	ldr	r3, [pc, #244]	; (80058b8 <_free_r+0x1e0>)
 80057c4:	681b      	ldr	r3, [r3, #0]
 80057c6:	f042 0101 	orr.w	r1, r2, #1
 80057ca:	4293      	cmp	r3, r2
 80057cc:	6069      	str	r1, [r5, #4]
 80057ce:	60bd      	str	r5, [r7, #8]
 80057d0:	d804      	bhi.n	80057dc <_free_r+0x104>
 80057d2:	4b3a      	ldr	r3, [pc, #232]	; (80058bc <_free_r+0x1e4>)
 80057d4:	4630      	mov	r0, r6
 80057d6:	6819      	ldr	r1, [r3, #0]
 80057d8:	f7ff ff2e 	bl	8005638 <_malloc_trim_r>
 80057dc:	4630      	mov	r0, r6
 80057de:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80057e2:	f000 bdb1 	b.w	8006348 <__malloc_unlock>
 80057e6:	08c9      	lsrs	r1, r1, #3
 80057e8:	6878      	ldr	r0, [r7, #4]
 80057ea:	1c4a      	adds	r2, r1, #1
 80057ec:	2301      	movs	r3, #1
 80057ee:	1089      	asrs	r1, r1, #2
 80057f0:	408b      	lsls	r3, r1
 80057f2:	4303      	orrs	r3, r0
 80057f4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80057f8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80057fc:	607b      	str	r3, [r7, #4]
 80057fe:	3908      	subs	r1, #8
 8005800:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005804:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005808:	60c5      	str	r5, [r0, #12]
 800580a:	4630      	mov	r0, r6
 800580c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005810:	f000 bd9a 	b.w	8006348 <__malloc_unlock>
 8005814:	2800      	cmp	r0, #0
 8005816:	d145      	bne.n	80058a4 <_free_r+0x1cc>
 8005818:	440a      	add	r2, r1
 800581a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800581e:	f042 0001 	orr.w	r0, r2, #1
 8005822:	60cb      	str	r3, [r1, #12]
 8005824:	6099      	str	r1, [r3, #8]
 8005826:	6068      	str	r0, [r5, #4]
 8005828:	50aa      	str	r2, [r5, r2]
 800582a:	e7d7      	b.n	80057dc <_free_r+0x104>
 800582c:	2b14      	cmp	r3, #20
 800582e:	d908      	bls.n	8005842 <_free_r+0x16a>
 8005830:	2b54      	cmp	r3, #84	; 0x54
 8005832:	d81e      	bhi.n	8005872 <_free_r+0x19a>
 8005834:	0b0b      	lsrs	r3, r1, #12
 8005836:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800583a:	00e4      	lsls	r4, r4, #3
 800583c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005840:	e789      	b.n	8005756 <_free_r+0x7e>
 8005842:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005846:	00e4      	lsls	r4, r4, #3
 8005848:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800584c:	e783      	b.n	8005756 <_free_r+0x7e>
 800584e:	4618      	mov	r0, r3
 8005850:	e78e      	b.n	8005770 <_free_r+0x98>
 8005852:	1093      	asrs	r3, r2, #2
 8005854:	6879      	ldr	r1, [r7, #4]
 8005856:	2201      	movs	r2, #1
 8005858:	fa02 f303 	lsl.w	r3, r2, r3
 800585c:	430b      	orrs	r3, r1
 800585e:	607b      	str	r3, [r7, #4]
 8005860:	4603      	mov	r3, r0
 8005862:	e786      	b.n	8005772 <_free_r+0x9a>
 8005864:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005868:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800586c:	606a      	str	r2, [r5, #4]
 800586e:	5069      	str	r1, [r5, r1]
 8005870:	e7b4      	b.n	80057dc <_free_r+0x104>
 8005872:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005876:	d806      	bhi.n	8005886 <_free_r+0x1ae>
 8005878:	0bcb      	lsrs	r3, r1, #15
 800587a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800587e:	00e4      	lsls	r4, r4, #3
 8005880:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005884:	e767      	b.n	8005756 <_free_r+0x7e>
 8005886:	f240 5254 	movw	r2, #1364	; 0x554
 800588a:	4293      	cmp	r3, r2
 800588c:	d806      	bhi.n	800589c <_free_r+0x1c4>
 800588e:	0c8b      	lsrs	r3, r1, #18
 8005890:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005894:	00e4      	lsls	r4, r4, #3
 8005896:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800589a:	e75c      	b.n	8005756 <_free_r+0x7e>
 800589c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80058a0:	227e      	movs	r2, #126	; 0x7e
 80058a2:	e758      	b.n	8005756 <_free_r+0x7e>
 80058a4:	f041 0201 	orr.w	r2, r1, #1
 80058a8:	606a      	str	r2, [r5, #4]
 80058aa:	6019      	str	r1, [r3, #0]
 80058ac:	e796      	b.n	80057dc <_free_r+0x104>
 80058ae:	bf00      	nop
 80058b0:	2000044c 	.word	0x2000044c
 80058b4:	20000454 	.word	0x20000454
 80058b8:	20000858 	.word	0x20000858
 80058bc:	20000a9c 	.word	0x20000a9c

080058c0 <__sfvwrite_r>:
 80058c0:	6893      	ldr	r3, [r2, #8]
 80058c2:	2b00      	cmp	r3, #0
 80058c4:	f000 80e4 	beq.w	8005a90 <__sfvwrite_r+0x1d0>
 80058c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80058cc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80058d0:	b29b      	uxth	r3, r3
 80058d2:	460c      	mov	r4, r1
 80058d4:	0719      	lsls	r1, r3, #28
 80058d6:	b083      	sub	sp, #12
 80058d8:	4682      	mov	sl, r0
 80058da:	4690      	mov	r8, r2
 80058dc:	d535      	bpl.n	800594a <__sfvwrite_r+0x8a>
 80058de:	6922      	ldr	r2, [r4, #16]
 80058e0:	b39a      	cbz	r2, 800594a <__sfvwrite_r+0x8a>
 80058e2:	f013 0202 	ands.w	r2, r3, #2
 80058e6:	f8d8 6000 	ldr.w	r6, [r8]
 80058ea:	d03d      	beq.n	8005968 <__sfvwrite_r+0xa8>
 80058ec:	2700      	movs	r7, #0
 80058ee:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80058f2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80058f6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005bb8 <__sfvwrite_r+0x2f8>
 80058fa:	463d      	mov	r5, r7
 80058fc:	454d      	cmp	r5, r9
 80058fe:	462b      	mov	r3, r5
 8005900:	463a      	mov	r2, r7
 8005902:	bf28      	it	cs
 8005904:	464b      	movcs	r3, r9
 8005906:	4661      	mov	r1, ip
 8005908:	4650      	mov	r0, sl
 800590a:	b1d5      	cbz	r5, 8005942 <__sfvwrite_r+0x82>
 800590c:	47d8      	blx	fp
 800590e:	2800      	cmp	r0, #0
 8005910:	f340 80c6 	ble.w	8005aa0 <__sfvwrite_r+0x1e0>
 8005914:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005918:	1a1b      	subs	r3, r3, r0
 800591a:	4407      	add	r7, r0
 800591c:	1a2d      	subs	r5, r5, r0
 800591e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005922:	2b00      	cmp	r3, #0
 8005924:	f000 80b0 	beq.w	8005a88 <__sfvwrite_r+0x1c8>
 8005928:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800592c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005930:	454d      	cmp	r5, r9
 8005932:	462b      	mov	r3, r5
 8005934:	463a      	mov	r2, r7
 8005936:	bf28      	it	cs
 8005938:	464b      	movcs	r3, r9
 800593a:	4661      	mov	r1, ip
 800593c:	4650      	mov	r0, sl
 800593e:	2d00      	cmp	r5, #0
 8005940:	d1e4      	bne.n	800590c <__sfvwrite_r+0x4c>
 8005942:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005946:	3608      	adds	r6, #8
 8005948:	e7d8      	b.n	80058fc <__sfvwrite_r+0x3c>
 800594a:	4621      	mov	r1, r4
 800594c:	4650      	mov	r0, sl
 800594e:	f7fe fd03 	bl	8004358 <__swsetup_r>
 8005952:	2800      	cmp	r0, #0
 8005954:	f040 812a 	bne.w	8005bac <__sfvwrite_r+0x2ec>
 8005958:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800595c:	f8d8 6000 	ldr.w	r6, [r8]
 8005960:	b29b      	uxth	r3, r3
 8005962:	f013 0202 	ands.w	r2, r3, #2
 8005966:	d1c1      	bne.n	80058ec <__sfvwrite_r+0x2c>
 8005968:	f013 0901 	ands.w	r9, r3, #1
 800596c:	d15d      	bne.n	8005a2a <__sfvwrite_r+0x16a>
 800596e:	68a7      	ldr	r7, [r4, #8]
 8005970:	6820      	ldr	r0, [r4, #0]
 8005972:	464d      	mov	r5, r9
 8005974:	2d00      	cmp	r5, #0
 8005976:	d054      	beq.n	8005a22 <__sfvwrite_r+0x162>
 8005978:	059a      	lsls	r2, r3, #22
 800597a:	f140 809b 	bpl.w	8005ab4 <__sfvwrite_r+0x1f4>
 800597e:	42af      	cmp	r7, r5
 8005980:	46bb      	mov	fp, r7
 8005982:	f200 80d8 	bhi.w	8005b36 <__sfvwrite_r+0x276>
 8005986:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800598a:	d02f      	beq.n	80059ec <__sfvwrite_r+0x12c>
 800598c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005990:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005994:	eba0 0b01 	sub.w	fp, r0, r1
 8005998:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800599c:	1c68      	adds	r0, r5, #1
 800599e:	107f      	asrs	r7, r7, #1
 80059a0:	4458      	add	r0, fp
 80059a2:	42b8      	cmp	r0, r7
 80059a4:	463a      	mov	r2, r7
 80059a6:	bf84      	itt	hi
 80059a8:	4607      	movhi	r7, r0
 80059aa:	463a      	movhi	r2, r7
 80059ac:	055b      	lsls	r3, r3, #21
 80059ae:	f140 80d3 	bpl.w	8005b58 <__sfvwrite_r+0x298>
 80059b2:	4611      	mov	r1, r2
 80059b4:	4650      	mov	r0, sl
 80059b6:	f000 f9b9 	bl	8005d2c <_malloc_r>
 80059ba:	2800      	cmp	r0, #0
 80059bc:	f000 80f0 	beq.w	8005ba0 <__sfvwrite_r+0x2e0>
 80059c0:	465a      	mov	r2, fp
 80059c2:	6921      	ldr	r1, [r4, #16]
 80059c4:	9001      	str	r0, [sp, #4]
 80059c6:	f7fb fa69 	bl	8000e9c <memcpy>
 80059ca:	89a2      	ldrh	r2, [r4, #12]
 80059cc:	9b01      	ldr	r3, [sp, #4]
 80059ce:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80059d2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80059d6:	81a2      	strh	r2, [r4, #12]
 80059d8:	eba7 020b 	sub.w	r2, r7, fp
 80059dc:	eb03 000b 	add.w	r0, r3, fp
 80059e0:	6167      	str	r7, [r4, #20]
 80059e2:	6123      	str	r3, [r4, #16]
 80059e4:	6020      	str	r0, [r4, #0]
 80059e6:	60a2      	str	r2, [r4, #8]
 80059e8:	462f      	mov	r7, r5
 80059ea:	46ab      	mov	fp, r5
 80059ec:	465a      	mov	r2, fp
 80059ee:	4649      	mov	r1, r9
 80059f0:	f000 fc40 	bl	8006274 <memmove>
 80059f4:	68a2      	ldr	r2, [r4, #8]
 80059f6:	6823      	ldr	r3, [r4, #0]
 80059f8:	1bd2      	subs	r2, r2, r7
 80059fa:	445b      	add	r3, fp
 80059fc:	462f      	mov	r7, r5
 80059fe:	60a2      	str	r2, [r4, #8]
 8005a00:	6023      	str	r3, [r4, #0]
 8005a02:	2500      	movs	r5, #0
 8005a04:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a08:	1bdb      	subs	r3, r3, r7
 8005a0a:	44b9      	add	r9, r7
 8005a0c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a10:	2b00      	cmp	r3, #0
 8005a12:	d039      	beq.n	8005a88 <__sfvwrite_r+0x1c8>
 8005a14:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a18:	68a7      	ldr	r7, [r4, #8]
 8005a1a:	6820      	ldr	r0, [r4, #0]
 8005a1c:	b29b      	uxth	r3, r3
 8005a1e:	2d00      	cmp	r5, #0
 8005a20:	d1aa      	bne.n	8005978 <__sfvwrite_r+0xb8>
 8005a22:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005a26:	3608      	adds	r6, #8
 8005a28:	e7a4      	b.n	8005974 <__sfvwrite_r+0xb4>
 8005a2a:	4633      	mov	r3, r6
 8005a2c:	4691      	mov	r9, r2
 8005a2e:	4610      	mov	r0, r2
 8005a30:	4617      	mov	r7, r2
 8005a32:	464e      	mov	r6, r9
 8005a34:	469b      	mov	fp, r3
 8005a36:	2f00      	cmp	r7, #0
 8005a38:	d06b      	beq.n	8005b12 <__sfvwrite_r+0x252>
 8005a3a:	2800      	cmp	r0, #0
 8005a3c:	d071      	beq.n	8005b22 <__sfvwrite_r+0x262>
 8005a3e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005a42:	6820      	ldr	r0, [r4, #0]
 8005a44:	45b9      	cmp	r9, r7
 8005a46:	464b      	mov	r3, r9
 8005a48:	bf28      	it	cs
 8005a4a:	463b      	movcs	r3, r7
 8005a4c:	4288      	cmp	r0, r1
 8005a4e:	d903      	bls.n	8005a58 <__sfvwrite_r+0x198>
 8005a50:	68a5      	ldr	r5, [r4, #8]
 8005a52:	4415      	add	r5, r2
 8005a54:	42ab      	cmp	r3, r5
 8005a56:	dc71      	bgt.n	8005b3c <__sfvwrite_r+0x27c>
 8005a58:	429a      	cmp	r2, r3
 8005a5a:	f300 8093 	bgt.w	8005b84 <__sfvwrite_r+0x2c4>
 8005a5e:	4613      	mov	r3, r2
 8005a60:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005a62:	69e1      	ldr	r1, [r4, #28]
 8005a64:	4632      	mov	r2, r6
 8005a66:	4650      	mov	r0, sl
 8005a68:	47a8      	blx	r5
 8005a6a:	1e05      	subs	r5, r0, #0
 8005a6c:	dd18      	ble.n	8005aa0 <__sfvwrite_r+0x1e0>
 8005a6e:	ebb9 0905 	subs.w	r9, r9, r5
 8005a72:	d00f      	beq.n	8005a94 <__sfvwrite_r+0x1d4>
 8005a74:	2001      	movs	r0, #1
 8005a76:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a7a:	1b5b      	subs	r3, r3, r5
 8005a7c:	442e      	add	r6, r5
 8005a7e:	1b7f      	subs	r7, r7, r5
 8005a80:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a84:	2b00      	cmp	r3, #0
 8005a86:	d1d6      	bne.n	8005a36 <__sfvwrite_r+0x176>
 8005a88:	2000      	movs	r0, #0
 8005a8a:	b003      	add	sp, #12
 8005a8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a90:	2000      	movs	r0, #0
 8005a92:	4770      	bx	lr
 8005a94:	4621      	mov	r1, r4
 8005a96:	4650      	mov	r0, sl
 8005a98:	f7ff fd20 	bl	80054dc <_fflush_r>
 8005a9c:	2800      	cmp	r0, #0
 8005a9e:	d0ea      	beq.n	8005a76 <__sfvwrite_r+0x1b6>
 8005aa0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005aa4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005aa8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005aac:	81a3      	strh	r3, [r4, #12]
 8005aae:	b003      	add	sp, #12
 8005ab0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ab4:	6923      	ldr	r3, [r4, #16]
 8005ab6:	4283      	cmp	r3, r0
 8005ab8:	d315      	bcc.n	8005ae6 <__sfvwrite_r+0x226>
 8005aba:	6961      	ldr	r1, [r4, #20]
 8005abc:	42a9      	cmp	r1, r5
 8005abe:	d812      	bhi.n	8005ae6 <__sfvwrite_r+0x226>
 8005ac0:	4b3c      	ldr	r3, [pc, #240]	; (8005bb4 <__sfvwrite_r+0x2f4>)
 8005ac2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005ac4:	429d      	cmp	r5, r3
 8005ac6:	bf94      	ite	ls
 8005ac8:	462b      	movls	r3, r5
 8005aca:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005ace:	464a      	mov	r2, r9
 8005ad0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005ad4:	4650      	mov	r0, sl
 8005ad6:	fb01 f303 	mul.w	r3, r1, r3
 8005ada:	69e1      	ldr	r1, [r4, #28]
 8005adc:	47b8      	blx	r7
 8005ade:	1e07      	subs	r7, r0, #0
 8005ae0:	ddde      	ble.n	8005aa0 <__sfvwrite_r+0x1e0>
 8005ae2:	1bed      	subs	r5, r5, r7
 8005ae4:	e78e      	b.n	8005a04 <__sfvwrite_r+0x144>
 8005ae6:	42af      	cmp	r7, r5
 8005ae8:	bf28      	it	cs
 8005aea:	462f      	movcs	r7, r5
 8005aec:	463a      	mov	r2, r7
 8005aee:	4649      	mov	r1, r9
 8005af0:	f000 fbc0 	bl	8006274 <memmove>
 8005af4:	68a3      	ldr	r3, [r4, #8]
 8005af6:	6822      	ldr	r2, [r4, #0]
 8005af8:	1bdb      	subs	r3, r3, r7
 8005afa:	443a      	add	r2, r7
 8005afc:	60a3      	str	r3, [r4, #8]
 8005afe:	6022      	str	r2, [r4, #0]
 8005b00:	2b00      	cmp	r3, #0
 8005b02:	d1ee      	bne.n	8005ae2 <__sfvwrite_r+0x222>
 8005b04:	4621      	mov	r1, r4
 8005b06:	4650      	mov	r0, sl
 8005b08:	f7ff fce8 	bl	80054dc <_fflush_r>
 8005b0c:	2800      	cmp	r0, #0
 8005b0e:	d0e8      	beq.n	8005ae2 <__sfvwrite_r+0x222>
 8005b10:	e7c6      	b.n	8005aa0 <__sfvwrite_r+0x1e0>
 8005b12:	f10b 0308 	add.w	r3, fp, #8
 8005b16:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005b1a:	469b      	mov	fp, r3
 8005b1c:	3308      	adds	r3, #8
 8005b1e:	2f00      	cmp	r7, #0
 8005b20:	d0f9      	beq.n	8005b16 <__sfvwrite_r+0x256>
 8005b22:	463a      	mov	r2, r7
 8005b24:	210a      	movs	r1, #10
 8005b26:	4630      	mov	r0, r6
 8005b28:	f7fb fada 	bl	80010e0 <memchr>
 8005b2c:	b338      	cbz	r0, 8005b7e <__sfvwrite_r+0x2be>
 8005b2e:	3001      	adds	r0, #1
 8005b30:	eba0 0906 	sub.w	r9, r0, r6
 8005b34:	e783      	b.n	8005a3e <__sfvwrite_r+0x17e>
 8005b36:	462f      	mov	r7, r5
 8005b38:	46ab      	mov	fp, r5
 8005b3a:	e757      	b.n	80059ec <__sfvwrite_r+0x12c>
 8005b3c:	4631      	mov	r1, r6
 8005b3e:	462a      	mov	r2, r5
 8005b40:	f000 fb98 	bl	8006274 <memmove>
 8005b44:	6823      	ldr	r3, [r4, #0]
 8005b46:	442b      	add	r3, r5
 8005b48:	6023      	str	r3, [r4, #0]
 8005b4a:	4621      	mov	r1, r4
 8005b4c:	4650      	mov	r0, sl
 8005b4e:	f7ff fcc5 	bl	80054dc <_fflush_r>
 8005b52:	2800      	cmp	r0, #0
 8005b54:	d08b      	beq.n	8005a6e <__sfvwrite_r+0x1ae>
 8005b56:	e7a3      	b.n	8005aa0 <__sfvwrite_r+0x1e0>
 8005b58:	4650      	mov	r0, sl
 8005b5a:	f000 ff05 	bl	8006968 <_realloc_r>
 8005b5e:	4603      	mov	r3, r0
 8005b60:	2800      	cmp	r0, #0
 8005b62:	f47f af39 	bne.w	80059d8 <__sfvwrite_r+0x118>
 8005b66:	6921      	ldr	r1, [r4, #16]
 8005b68:	4650      	mov	r0, sl
 8005b6a:	f7ff fdb5 	bl	80056d8 <_free_r>
 8005b6e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b72:	220c      	movs	r2, #12
 8005b74:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005b78:	f8ca 2000 	str.w	r2, [sl]
 8005b7c:	e792      	b.n	8005aa4 <__sfvwrite_r+0x1e4>
 8005b7e:	f107 0901 	add.w	r9, r7, #1
 8005b82:	e75c      	b.n	8005a3e <__sfvwrite_r+0x17e>
 8005b84:	461a      	mov	r2, r3
 8005b86:	4631      	mov	r1, r6
 8005b88:	9301      	str	r3, [sp, #4]
 8005b8a:	f000 fb73 	bl	8006274 <memmove>
 8005b8e:	9b01      	ldr	r3, [sp, #4]
 8005b90:	68a1      	ldr	r1, [r4, #8]
 8005b92:	6822      	ldr	r2, [r4, #0]
 8005b94:	1ac9      	subs	r1, r1, r3
 8005b96:	441a      	add	r2, r3
 8005b98:	60a1      	str	r1, [r4, #8]
 8005b9a:	6022      	str	r2, [r4, #0]
 8005b9c:	461d      	mov	r5, r3
 8005b9e:	e766      	b.n	8005a6e <__sfvwrite_r+0x1ae>
 8005ba0:	230c      	movs	r3, #12
 8005ba2:	f8ca 3000 	str.w	r3, [sl]
 8005ba6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005baa:	e77b      	b.n	8005aa4 <__sfvwrite_r+0x1e4>
 8005bac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005bb0:	e76b      	b.n	8005a8a <__sfvwrite_r+0x1ca>
 8005bb2:	bf00      	nop
 8005bb4:	7ffffffe 	.word	0x7ffffffe
 8005bb8:	7ffffc00 	.word	0x7ffffc00

08005bbc <_fwalk_reent>:
 8005bbc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005bc0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005bc4:	d01f      	beq.n	8005c06 <_fwalk_reent+0x4a>
 8005bc6:	4688      	mov	r8, r1
 8005bc8:	4606      	mov	r6, r0
 8005bca:	f04f 0900 	mov.w	r9, #0
 8005bce:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005bd2:	3d01      	subs	r5, #1
 8005bd4:	d411      	bmi.n	8005bfa <_fwalk_reent+0x3e>
 8005bd6:	89a3      	ldrh	r3, [r4, #12]
 8005bd8:	2b01      	cmp	r3, #1
 8005bda:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005bde:	4621      	mov	r1, r4
 8005be0:	4630      	mov	r0, r6
 8005be2:	d906      	bls.n	8005bf2 <_fwalk_reent+0x36>
 8005be4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005be8:	3301      	adds	r3, #1
 8005bea:	d002      	beq.n	8005bf2 <_fwalk_reent+0x36>
 8005bec:	47c0      	blx	r8
 8005bee:	ea49 0900 	orr.w	r9, r9, r0
 8005bf2:	1c6b      	adds	r3, r5, #1
 8005bf4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005bf8:	d1ed      	bne.n	8005bd6 <_fwalk_reent+0x1a>
 8005bfa:	683f      	ldr	r7, [r7, #0]
 8005bfc:	2f00      	cmp	r7, #0
 8005bfe:	d1e6      	bne.n	8005bce <_fwalk_reent+0x12>
 8005c00:	4648      	mov	r0, r9
 8005c02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005c06:	46b9      	mov	r9, r7
 8005c08:	4648      	mov	r0, r9
 8005c0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005c0e:	bf00      	nop

08005c10 <_localeconv_r>:
 8005c10:	4a04      	ldr	r2, [pc, #16]	; (8005c24 <_localeconv_r+0x14>)
 8005c12:	4b05      	ldr	r3, [pc, #20]	; (8005c28 <_localeconv_r+0x18>)
 8005c14:	6812      	ldr	r2, [r2, #0]
 8005c16:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005c18:	2800      	cmp	r0, #0
 8005c1a:	bf08      	it	eq
 8005c1c:	4618      	moveq	r0, r3
 8005c1e:	30f0      	adds	r0, #240	; 0xf0
 8005c20:	4770      	bx	lr
 8005c22:	bf00      	nop
 8005c24:	20000018 	.word	0x20000018
 8005c28:	2000085c 	.word	0x2000085c

08005c2c <__retarget_lock_init_recursive>:
 8005c2c:	4770      	bx	lr
 8005c2e:	bf00      	nop

08005c30 <__retarget_lock_close_recursive>:
 8005c30:	4770      	bx	lr
 8005c32:	bf00      	nop

08005c34 <__retarget_lock_acquire_recursive>:
 8005c34:	4770      	bx	lr
 8005c36:	bf00      	nop

08005c38 <__retarget_lock_release_recursive>:
 8005c38:	4770      	bx	lr
 8005c3a:	bf00      	nop

08005c3c <__swhatbuf_r>:
 8005c3c:	b570      	push	{r4, r5, r6, lr}
 8005c3e:	460c      	mov	r4, r1
 8005c40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005c44:	2900      	cmp	r1, #0
 8005c46:	b096      	sub	sp, #88	; 0x58
 8005c48:	4615      	mov	r5, r2
 8005c4a:	461e      	mov	r6, r3
 8005c4c:	da0f      	bge.n	8005c6e <__swhatbuf_r+0x32>
 8005c4e:	89a2      	ldrh	r2, [r4, #12]
 8005c50:	2300      	movs	r3, #0
 8005c52:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005c56:	6033      	str	r3, [r6, #0]
 8005c58:	d104      	bne.n	8005c64 <__swhatbuf_r+0x28>
 8005c5a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005c5e:	602b      	str	r3, [r5, #0]
 8005c60:	b016      	add	sp, #88	; 0x58
 8005c62:	bd70      	pop	{r4, r5, r6, pc}
 8005c64:	2240      	movs	r2, #64	; 0x40
 8005c66:	4618      	mov	r0, r3
 8005c68:	602a      	str	r2, [r5, #0]
 8005c6a:	b016      	add	sp, #88	; 0x58
 8005c6c:	bd70      	pop	{r4, r5, r6, pc}
 8005c6e:	466a      	mov	r2, sp
 8005c70:	f001 fad0 	bl	8007214 <_fstat_r>
 8005c74:	2800      	cmp	r0, #0
 8005c76:	dbea      	blt.n	8005c4e <__swhatbuf_r+0x12>
 8005c78:	9b01      	ldr	r3, [sp, #4]
 8005c7a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005c7e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005c82:	fab3 f383 	clz	r3, r3
 8005c86:	095b      	lsrs	r3, r3, #5
 8005c88:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005c8c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005c90:	6033      	str	r3, [r6, #0]
 8005c92:	602a      	str	r2, [r5, #0]
 8005c94:	b016      	add	sp, #88	; 0x58
 8005c96:	bd70      	pop	{r4, r5, r6, pc}

08005c98 <__smakebuf_r>:
 8005c98:	898a      	ldrh	r2, [r1, #12]
 8005c9a:	0792      	lsls	r2, r2, #30
 8005c9c:	460b      	mov	r3, r1
 8005c9e:	d506      	bpl.n	8005cae <__smakebuf_r+0x16>
 8005ca0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005ca4:	2101      	movs	r1, #1
 8005ca6:	601a      	str	r2, [r3, #0]
 8005ca8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005cac:	4770      	bx	lr
 8005cae:	b570      	push	{r4, r5, r6, lr}
 8005cb0:	b082      	sub	sp, #8
 8005cb2:	ab01      	add	r3, sp, #4
 8005cb4:	466a      	mov	r2, sp
 8005cb6:	460c      	mov	r4, r1
 8005cb8:	4605      	mov	r5, r0
 8005cba:	f7ff ffbf 	bl	8005c3c <__swhatbuf_r>
 8005cbe:	9900      	ldr	r1, [sp, #0]
 8005cc0:	4606      	mov	r6, r0
 8005cc2:	4628      	mov	r0, r5
 8005cc4:	f000 f832 	bl	8005d2c <_malloc_r>
 8005cc8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ccc:	b1d8      	cbz	r0, 8005d06 <__smakebuf_r+0x6e>
 8005cce:	4916      	ldr	r1, [pc, #88]	; (8005d28 <__smakebuf_r+0x90>)
 8005cd0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005cd2:	9a01      	ldr	r2, [sp, #4]
 8005cd4:	9900      	ldr	r1, [sp, #0]
 8005cd6:	6020      	str	r0, [r4, #0]
 8005cd8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005cdc:	81a3      	strh	r3, [r4, #12]
 8005cde:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005ce2:	b91a      	cbnz	r2, 8005cec <__smakebuf_r+0x54>
 8005ce4:	4333      	orrs	r3, r6
 8005ce6:	81a3      	strh	r3, [r4, #12]
 8005ce8:	b002      	add	sp, #8
 8005cea:	bd70      	pop	{r4, r5, r6, pc}
 8005cec:	4628      	mov	r0, r5
 8005cee:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005cf2:	f001 faa3 	bl	800723c <_isatty_r>
 8005cf6:	b1a0      	cbz	r0, 8005d22 <__smakebuf_r+0x8a>
 8005cf8:	89a3      	ldrh	r3, [r4, #12]
 8005cfa:	f023 0303 	bic.w	r3, r3, #3
 8005cfe:	f043 0301 	orr.w	r3, r3, #1
 8005d02:	b21b      	sxth	r3, r3
 8005d04:	e7ee      	b.n	8005ce4 <__smakebuf_r+0x4c>
 8005d06:	059a      	lsls	r2, r3, #22
 8005d08:	d4ee      	bmi.n	8005ce8 <__smakebuf_r+0x50>
 8005d0a:	f023 0303 	bic.w	r3, r3, #3
 8005d0e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005d12:	f043 0302 	orr.w	r3, r3, #2
 8005d16:	2101      	movs	r1, #1
 8005d18:	81a3      	strh	r3, [r4, #12]
 8005d1a:	6022      	str	r2, [r4, #0]
 8005d1c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005d20:	e7e2      	b.n	8005ce8 <__smakebuf_r+0x50>
 8005d22:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d26:	e7dd      	b.n	8005ce4 <__smakebuf_r+0x4c>
 8005d28:	08005589 	.word	0x08005589

08005d2c <_malloc_r>:
 8005d2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005d30:	f101 050b 	add.w	r5, r1, #11
 8005d34:	2d16      	cmp	r5, #22
 8005d36:	b083      	sub	sp, #12
 8005d38:	4606      	mov	r6, r0
 8005d3a:	d823      	bhi.n	8005d84 <_malloc_r+0x58>
 8005d3c:	2910      	cmp	r1, #16
 8005d3e:	f200 80b9 	bhi.w	8005eb4 <_malloc_r+0x188>
 8005d42:	f000 fafb 	bl	800633c <__malloc_lock>
 8005d46:	2510      	movs	r5, #16
 8005d48:	2318      	movs	r3, #24
 8005d4a:	2002      	movs	r0, #2
 8005d4c:	4fc5      	ldr	r7, [pc, #788]	; (8006064 <_malloc_r+0x338>)
 8005d4e:	443b      	add	r3, r7
 8005d50:	f1a3 0208 	sub.w	r2, r3, #8
 8005d54:	685c      	ldr	r4, [r3, #4]
 8005d56:	4294      	cmp	r4, r2
 8005d58:	f000 8166 	beq.w	8006028 <_malloc_r+0x2fc>
 8005d5c:	6863      	ldr	r3, [r4, #4]
 8005d5e:	f023 0303 	bic.w	r3, r3, #3
 8005d62:	4423      	add	r3, r4
 8005d64:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005d68:	685a      	ldr	r2, [r3, #4]
 8005d6a:	60e9      	str	r1, [r5, #12]
 8005d6c:	f042 0201 	orr.w	r2, r2, #1
 8005d70:	608d      	str	r5, [r1, #8]
 8005d72:	4630      	mov	r0, r6
 8005d74:	605a      	str	r2, [r3, #4]
 8005d76:	f000 fae7 	bl	8006348 <__malloc_unlock>
 8005d7a:	3408      	adds	r4, #8
 8005d7c:	4620      	mov	r0, r4
 8005d7e:	b003      	add	sp, #12
 8005d80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d84:	f035 0507 	bics.w	r5, r5, #7
 8005d88:	f100 8094 	bmi.w	8005eb4 <_malloc_r+0x188>
 8005d8c:	42a9      	cmp	r1, r5
 8005d8e:	f200 8091 	bhi.w	8005eb4 <_malloc_r+0x188>
 8005d92:	f000 fad3 	bl	800633c <__malloc_lock>
 8005d96:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005d9a:	f0c0 8183 	bcc.w	80060a4 <_malloc_r+0x378>
 8005d9e:	0a6b      	lsrs	r3, r5, #9
 8005da0:	f000 808f 	beq.w	8005ec2 <_malloc_r+0x196>
 8005da4:	2b04      	cmp	r3, #4
 8005da6:	f200 8146 	bhi.w	8006036 <_malloc_r+0x30a>
 8005daa:	09ab      	lsrs	r3, r5, #6
 8005dac:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005db0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005db4:	00c3      	lsls	r3, r0, #3
 8005db6:	4fab      	ldr	r7, [pc, #684]	; (8006064 <_malloc_r+0x338>)
 8005db8:	443b      	add	r3, r7
 8005dba:	f1a3 0108 	sub.w	r1, r3, #8
 8005dbe:	685c      	ldr	r4, [r3, #4]
 8005dc0:	42a1      	cmp	r1, r4
 8005dc2:	d106      	bne.n	8005dd2 <_malloc_r+0xa6>
 8005dc4:	e00c      	b.n	8005de0 <_malloc_r+0xb4>
 8005dc6:	2a00      	cmp	r2, #0
 8005dc8:	f280 811d 	bge.w	8006006 <_malloc_r+0x2da>
 8005dcc:	68e4      	ldr	r4, [r4, #12]
 8005dce:	42a1      	cmp	r1, r4
 8005dd0:	d006      	beq.n	8005de0 <_malloc_r+0xb4>
 8005dd2:	6863      	ldr	r3, [r4, #4]
 8005dd4:	f023 0303 	bic.w	r3, r3, #3
 8005dd8:	1b5a      	subs	r2, r3, r5
 8005dda:	2a0f      	cmp	r2, #15
 8005ddc:	ddf3      	ble.n	8005dc6 <_malloc_r+0x9a>
 8005dde:	4660      	mov	r0, ip
 8005de0:	693c      	ldr	r4, [r7, #16]
 8005de2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006078 <_malloc_r+0x34c>
 8005de6:	4564      	cmp	r4, ip
 8005de8:	d071      	beq.n	8005ece <_malloc_r+0x1a2>
 8005dea:	6863      	ldr	r3, [r4, #4]
 8005dec:	f023 0303 	bic.w	r3, r3, #3
 8005df0:	1b5a      	subs	r2, r3, r5
 8005df2:	2a0f      	cmp	r2, #15
 8005df4:	f300 8144 	bgt.w	8006080 <_malloc_r+0x354>
 8005df8:	2a00      	cmp	r2, #0
 8005dfa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005dfe:	f280 8126 	bge.w	800604e <_malloc_r+0x322>
 8005e02:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005e06:	f080 8169 	bcs.w	80060dc <_malloc_r+0x3b0>
 8005e0a:	08db      	lsrs	r3, r3, #3
 8005e0c:	1c59      	adds	r1, r3, #1
 8005e0e:	687a      	ldr	r2, [r7, #4]
 8005e10:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005e14:	f8c4 8008 	str.w	r8, [r4, #8]
 8005e18:	f04f 0e01 	mov.w	lr, #1
 8005e1c:	109b      	asrs	r3, r3, #2
 8005e1e:	fa0e f303 	lsl.w	r3, lr, r3
 8005e22:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005e26:	4313      	orrs	r3, r2
 8005e28:	f1ae 0208 	sub.w	r2, lr, #8
 8005e2c:	60e2      	str	r2, [r4, #12]
 8005e2e:	607b      	str	r3, [r7, #4]
 8005e30:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005e34:	f8c8 400c 	str.w	r4, [r8, #12]
 8005e38:	1082      	asrs	r2, r0, #2
 8005e3a:	2401      	movs	r4, #1
 8005e3c:	4094      	lsls	r4, r2
 8005e3e:	429c      	cmp	r4, r3
 8005e40:	d84b      	bhi.n	8005eda <_malloc_r+0x1ae>
 8005e42:	421c      	tst	r4, r3
 8005e44:	d106      	bne.n	8005e54 <_malloc_r+0x128>
 8005e46:	f020 0003 	bic.w	r0, r0, #3
 8005e4a:	0064      	lsls	r4, r4, #1
 8005e4c:	421c      	tst	r4, r3
 8005e4e:	f100 0004 	add.w	r0, r0, #4
 8005e52:	d0fa      	beq.n	8005e4a <_malloc_r+0x11e>
 8005e54:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005e58:	46ce      	mov	lr, r9
 8005e5a:	4680      	mov	r8, r0
 8005e5c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005e60:	459e      	cmp	lr, r3
 8005e62:	d107      	bne.n	8005e74 <_malloc_r+0x148>
 8005e64:	e122      	b.n	80060ac <_malloc_r+0x380>
 8005e66:	2a00      	cmp	r2, #0
 8005e68:	f280 8129 	bge.w	80060be <_malloc_r+0x392>
 8005e6c:	68db      	ldr	r3, [r3, #12]
 8005e6e:	459e      	cmp	lr, r3
 8005e70:	f000 811c 	beq.w	80060ac <_malloc_r+0x380>
 8005e74:	6859      	ldr	r1, [r3, #4]
 8005e76:	f021 0103 	bic.w	r1, r1, #3
 8005e7a:	1b4a      	subs	r2, r1, r5
 8005e7c:	2a0f      	cmp	r2, #15
 8005e7e:	ddf2      	ble.n	8005e66 <_malloc_r+0x13a>
 8005e80:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005e84:	195c      	adds	r4, r3, r5
 8005e86:	f045 0501 	orr.w	r5, r5, #1
 8005e8a:	605d      	str	r5, [r3, #4]
 8005e8c:	f042 0501 	orr.w	r5, r2, #1
 8005e90:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005e94:	4630      	mov	r0, r6
 8005e96:	f8ce 8008 	str.w	r8, [lr, #8]
 8005e9a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005e9e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005ea2:	6065      	str	r5, [r4, #4]
 8005ea4:	505a      	str	r2, [r3, r1]
 8005ea6:	9301      	str	r3, [sp, #4]
 8005ea8:	f000 fa4e 	bl	8006348 <__malloc_unlock>
 8005eac:	9b01      	ldr	r3, [sp, #4]
 8005eae:	f103 0408 	add.w	r4, r3, #8
 8005eb2:	e763      	b.n	8005d7c <_malloc_r+0x50>
 8005eb4:	2400      	movs	r4, #0
 8005eb6:	230c      	movs	r3, #12
 8005eb8:	4620      	mov	r0, r4
 8005eba:	6033      	str	r3, [r6, #0]
 8005ebc:	b003      	add	sp, #12
 8005ebe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ec2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005ec6:	2040      	movs	r0, #64	; 0x40
 8005ec8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005ecc:	e773      	b.n	8005db6 <_malloc_r+0x8a>
 8005ece:	687b      	ldr	r3, [r7, #4]
 8005ed0:	1082      	asrs	r2, r0, #2
 8005ed2:	2401      	movs	r4, #1
 8005ed4:	4094      	lsls	r4, r2
 8005ed6:	429c      	cmp	r4, r3
 8005ed8:	d9b3      	bls.n	8005e42 <_malloc_r+0x116>
 8005eda:	68bc      	ldr	r4, [r7, #8]
 8005edc:	6863      	ldr	r3, [r4, #4]
 8005ede:	f023 0903 	bic.w	r9, r3, #3
 8005ee2:	45a9      	cmp	r9, r5
 8005ee4:	d303      	bcc.n	8005eee <_malloc_r+0x1c2>
 8005ee6:	eba9 0305 	sub.w	r3, r9, r5
 8005eea:	2b0f      	cmp	r3, #15
 8005eec:	dc7b      	bgt.n	8005fe6 <_malloc_r+0x2ba>
 8005eee:	4b5e      	ldr	r3, [pc, #376]	; (8006068 <_malloc_r+0x33c>)
 8005ef0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800607c <_malloc_r+0x350>
 8005ef4:	681a      	ldr	r2, [r3, #0]
 8005ef6:	f8da 3000 	ldr.w	r3, [sl]
 8005efa:	3301      	adds	r3, #1
 8005efc:	eb05 0802 	add.w	r8, r5, r2
 8005f00:	f000 8148 	beq.w	8006194 <_malloc_r+0x468>
 8005f04:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005f08:	f108 080f 	add.w	r8, r8, #15
 8005f0c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005f10:	f028 080f 	bic.w	r8, r8, #15
 8005f14:	4641      	mov	r1, r8
 8005f16:	4630      	mov	r0, r6
 8005f18:	f000 ff08 	bl	8006d2c <_sbrk_r>
 8005f1c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005f20:	4683      	mov	fp, r0
 8005f22:	f000 8104 	beq.w	800612e <_malloc_r+0x402>
 8005f26:	eb04 0009 	add.w	r0, r4, r9
 8005f2a:	4558      	cmp	r0, fp
 8005f2c:	f200 80fd 	bhi.w	800612a <_malloc_r+0x3fe>
 8005f30:	4a4e      	ldr	r2, [pc, #312]	; (800606c <_malloc_r+0x340>)
 8005f32:	6813      	ldr	r3, [r2, #0]
 8005f34:	4443      	add	r3, r8
 8005f36:	6013      	str	r3, [r2, #0]
 8005f38:	f000 814d 	beq.w	80061d6 <_malloc_r+0x4aa>
 8005f3c:	f8da 1000 	ldr.w	r1, [sl]
 8005f40:	3101      	adds	r1, #1
 8005f42:	bf1b      	ittet	ne
 8005f44:	ebab 0000 	subne.w	r0, fp, r0
 8005f48:	181b      	addne	r3, r3, r0
 8005f4a:	f8ca b000 	streq.w	fp, [sl]
 8005f4e:	6013      	strne	r3, [r2, #0]
 8005f50:	f01b 0307 	ands.w	r3, fp, #7
 8005f54:	f000 8134 	beq.w	80061c0 <_malloc_r+0x494>
 8005f58:	f1c3 0108 	rsb	r1, r3, #8
 8005f5c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005f60:	448b      	add	fp, r1
 8005f62:	3308      	adds	r3, #8
 8005f64:	44d8      	add	r8, fp
 8005f66:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005f6a:	eba3 0808 	sub.w	r8, r3, r8
 8005f6e:	4641      	mov	r1, r8
 8005f70:	4630      	mov	r0, r6
 8005f72:	9201      	str	r2, [sp, #4]
 8005f74:	f000 feda 	bl	8006d2c <_sbrk_r>
 8005f78:	1c43      	adds	r3, r0, #1
 8005f7a:	9a01      	ldr	r2, [sp, #4]
 8005f7c:	f000 8146 	beq.w	800620c <_malloc_r+0x4e0>
 8005f80:	eba0 010b 	sub.w	r1, r0, fp
 8005f84:	4441      	add	r1, r8
 8005f86:	f041 0101 	orr.w	r1, r1, #1
 8005f8a:	6813      	ldr	r3, [r2, #0]
 8005f8c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005f90:	4443      	add	r3, r8
 8005f92:	42bc      	cmp	r4, r7
 8005f94:	f8cb 1004 	str.w	r1, [fp, #4]
 8005f98:	6013      	str	r3, [r2, #0]
 8005f9a:	d015      	beq.n	8005fc8 <_malloc_r+0x29c>
 8005f9c:	f1b9 0f0f 	cmp.w	r9, #15
 8005fa0:	f240 8130 	bls.w	8006204 <_malloc_r+0x4d8>
 8005fa4:	6860      	ldr	r0, [r4, #4]
 8005fa6:	f1a9 010c 	sub.w	r1, r9, #12
 8005faa:	f021 0107 	bic.w	r1, r1, #7
 8005fae:	f000 0001 	and.w	r0, r0, #1
 8005fb2:	eb04 0c01 	add.w	ip, r4, r1
 8005fb6:	4308      	orrs	r0, r1
 8005fb8:	f04f 0e05 	mov.w	lr, #5
 8005fbc:	290f      	cmp	r1, #15
 8005fbe:	6060      	str	r0, [r4, #4]
 8005fc0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005fc4:	f200 813a 	bhi.w	800623c <_malloc_r+0x510>
 8005fc8:	4a29      	ldr	r2, [pc, #164]	; (8006070 <_malloc_r+0x344>)
 8005fca:	482a      	ldr	r0, [pc, #168]	; (8006074 <_malloc_r+0x348>)
 8005fcc:	6811      	ldr	r1, [r2, #0]
 8005fce:	68bc      	ldr	r4, [r7, #8]
 8005fd0:	428b      	cmp	r3, r1
 8005fd2:	6801      	ldr	r1, [r0, #0]
 8005fd4:	bf88      	it	hi
 8005fd6:	6013      	strhi	r3, [r2, #0]
 8005fd8:	6862      	ldr	r2, [r4, #4]
 8005fda:	428b      	cmp	r3, r1
 8005fdc:	f022 0203 	bic.w	r2, r2, #3
 8005fe0:	bf88      	it	hi
 8005fe2:	6003      	strhi	r3, [r0, #0]
 8005fe4:	e0a7      	b.n	8006136 <_malloc_r+0x40a>
 8005fe6:	1962      	adds	r2, r4, r5
 8005fe8:	f043 0301 	orr.w	r3, r3, #1
 8005fec:	f045 0501 	orr.w	r5, r5, #1
 8005ff0:	6065      	str	r5, [r4, #4]
 8005ff2:	4630      	mov	r0, r6
 8005ff4:	60ba      	str	r2, [r7, #8]
 8005ff6:	6053      	str	r3, [r2, #4]
 8005ff8:	f000 f9a6 	bl	8006348 <__malloc_unlock>
 8005ffc:	3408      	adds	r4, #8
 8005ffe:	4620      	mov	r0, r4
 8006000:	b003      	add	sp, #12
 8006002:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006006:	4423      	add	r3, r4
 8006008:	68e1      	ldr	r1, [r4, #12]
 800600a:	685a      	ldr	r2, [r3, #4]
 800600c:	68a5      	ldr	r5, [r4, #8]
 800600e:	f042 0201 	orr.w	r2, r2, #1
 8006012:	60e9      	str	r1, [r5, #12]
 8006014:	4630      	mov	r0, r6
 8006016:	608d      	str	r5, [r1, #8]
 8006018:	605a      	str	r2, [r3, #4]
 800601a:	f000 f995 	bl	8006348 <__malloc_unlock>
 800601e:	3408      	adds	r4, #8
 8006020:	4620      	mov	r0, r4
 8006022:	b003      	add	sp, #12
 8006024:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006028:	68dc      	ldr	r4, [r3, #12]
 800602a:	42a3      	cmp	r3, r4
 800602c:	bf08      	it	eq
 800602e:	3002      	addeq	r0, #2
 8006030:	f43f aed6 	beq.w	8005de0 <_malloc_r+0xb4>
 8006034:	e692      	b.n	8005d5c <_malloc_r+0x30>
 8006036:	2b14      	cmp	r3, #20
 8006038:	d971      	bls.n	800611e <_malloc_r+0x3f2>
 800603a:	2b54      	cmp	r3, #84	; 0x54
 800603c:	f200 80ad 	bhi.w	800619a <_malloc_r+0x46e>
 8006040:	0b2b      	lsrs	r3, r5, #12
 8006042:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006046:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800604a:	00c3      	lsls	r3, r0, #3
 800604c:	e6b3      	b.n	8005db6 <_malloc_r+0x8a>
 800604e:	4423      	add	r3, r4
 8006050:	4630      	mov	r0, r6
 8006052:	685a      	ldr	r2, [r3, #4]
 8006054:	f042 0201 	orr.w	r2, r2, #1
 8006058:	605a      	str	r2, [r3, #4]
 800605a:	3408      	adds	r4, #8
 800605c:	f000 f974 	bl	8006348 <__malloc_unlock>
 8006060:	e68c      	b.n	8005d7c <_malloc_r+0x50>
 8006062:	bf00      	nop
 8006064:	2000044c 	.word	0x2000044c
 8006068:	20000a9c 	.word	0x20000a9c
 800606c:	20000a6c 	.word	0x20000a6c
 8006070:	20000a94 	.word	0x20000a94
 8006074:	20000a98 	.word	0x20000a98
 8006078:	20000454 	.word	0x20000454
 800607c:	20000854 	.word	0x20000854
 8006080:	1961      	adds	r1, r4, r5
 8006082:	f045 0e01 	orr.w	lr, r5, #1
 8006086:	f042 0501 	orr.w	r5, r2, #1
 800608a:	f8c4 e004 	str.w	lr, [r4, #4]
 800608e:	4630      	mov	r0, r6
 8006090:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006094:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006098:	604d      	str	r5, [r1, #4]
 800609a:	50e2      	str	r2, [r4, r3]
 800609c:	f000 f954 	bl	8006348 <__malloc_unlock>
 80060a0:	3408      	adds	r4, #8
 80060a2:	e66b      	b.n	8005d7c <_malloc_r+0x50>
 80060a4:	08e8      	lsrs	r0, r5, #3
 80060a6:	f105 0308 	add.w	r3, r5, #8
 80060aa:	e64f      	b.n	8005d4c <_malloc_r+0x20>
 80060ac:	f108 0801 	add.w	r8, r8, #1
 80060b0:	f018 0f03 	tst.w	r8, #3
 80060b4:	f10e 0e08 	add.w	lr, lr, #8
 80060b8:	f47f aed0 	bne.w	8005e5c <_malloc_r+0x130>
 80060bc:	e052      	b.n	8006164 <_malloc_r+0x438>
 80060be:	4419      	add	r1, r3
 80060c0:	461c      	mov	r4, r3
 80060c2:	684a      	ldr	r2, [r1, #4]
 80060c4:	68db      	ldr	r3, [r3, #12]
 80060c6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80060ca:	f042 0201 	orr.w	r2, r2, #1
 80060ce:	604a      	str	r2, [r1, #4]
 80060d0:	4630      	mov	r0, r6
 80060d2:	60eb      	str	r3, [r5, #12]
 80060d4:	609d      	str	r5, [r3, #8]
 80060d6:	f000 f937 	bl	8006348 <__malloc_unlock>
 80060da:	e64f      	b.n	8005d7c <_malloc_r+0x50>
 80060dc:	0a5a      	lsrs	r2, r3, #9
 80060de:	2a04      	cmp	r2, #4
 80060e0:	d935      	bls.n	800614e <_malloc_r+0x422>
 80060e2:	2a14      	cmp	r2, #20
 80060e4:	d86f      	bhi.n	80061c6 <_malloc_r+0x49a>
 80060e6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80060ea:	00c9      	lsls	r1, r1, #3
 80060ec:	325b      	adds	r2, #91	; 0x5b
 80060ee:	eb07 0e01 	add.w	lr, r7, r1
 80060f2:	5879      	ldr	r1, [r7, r1]
 80060f4:	f1ae 0e08 	sub.w	lr, lr, #8
 80060f8:	458e      	cmp	lr, r1
 80060fa:	d058      	beq.n	80061ae <_malloc_r+0x482>
 80060fc:	684a      	ldr	r2, [r1, #4]
 80060fe:	f022 0203 	bic.w	r2, r2, #3
 8006102:	429a      	cmp	r2, r3
 8006104:	d902      	bls.n	800610c <_malloc_r+0x3e0>
 8006106:	6889      	ldr	r1, [r1, #8]
 8006108:	458e      	cmp	lr, r1
 800610a:	d1f7      	bne.n	80060fc <_malloc_r+0x3d0>
 800610c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006110:	687b      	ldr	r3, [r7, #4]
 8006112:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006116:	f8ce 4008 	str.w	r4, [lr, #8]
 800611a:	60cc      	str	r4, [r1, #12]
 800611c:	e68c      	b.n	8005e38 <_malloc_r+0x10c>
 800611e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006122:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006126:	00c3      	lsls	r3, r0, #3
 8006128:	e645      	b.n	8005db6 <_malloc_r+0x8a>
 800612a:	42bc      	cmp	r4, r7
 800612c:	d072      	beq.n	8006214 <_malloc_r+0x4e8>
 800612e:	68bc      	ldr	r4, [r7, #8]
 8006130:	6862      	ldr	r2, [r4, #4]
 8006132:	f022 0203 	bic.w	r2, r2, #3
 8006136:	4295      	cmp	r5, r2
 8006138:	eba2 0305 	sub.w	r3, r2, r5
 800613c:	d802      	bhi.n	8006144 <_malloc_r+0x418>
 800613e:	2b0f      	cmp	r3, #15
 8006140:	f73f af51 	bgt.w	8005fe6 <_malloc_r+0x2ba>
 8006144:	4630      	mov	r0, r6
 8006146:	f000 f8ff 	bl	8006348 <__malloc_unlock>
 800614a:	2400      	movs	r4, #0
 800614c:	e616      	b.n	8005d7c <_malloc_r+0x50>
 800614e:	099a      	lsrs	r2, r3, #6
 8006150:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006154:	00c9      	lsls	r1, r1, #3
 8006156:	3238      	adds	r2, #56	; 0x38
 8006158:	e7c9      	b.n	80060ee <_malloc_r+0x3c2>
 800615a:	f8d9 9000 	ldr.w	r9, [r9]
 800615e:	4599      	cmp	r9, r3
 8006160:	f040 8083 	bne.w	800626a <_malloc_r+0x53e>
 8006164:	f010 0f03 	tst.w	r0, #3
 8006168:	f1a9 0308 	sub.w	r3, r9, #8
 800616c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006170:	d1f3      	bne.n	800615a <_malloc_r+0x42e>
 8006172:	687b      	ldr	r3, [r7, #4]
 8006174:	ea23 0304 	bic.w	r3, r3, r4
 8006178:	607b      	str	r3, [r7, #4]
 800617a:	0064      	lsls	r4, r4, #1
 800617c:	429c      	cmp	r4, r3
 800617e:	f63f aeac 	bhi.w	8005eda <_malloc_r+0x1ae>
 8006182:	b91c      	cbnz	r4, 800618c <_malloc_r+0x460>
 8006184:	e6a9      	b.n	8005eda <_malloc_r+0x1ae>
 8006186:	0064      	lsls	r4, r4, #1
 8006188:	f108 0804 	add.w	r8, r8, #4
 800618c:	421c      	tst	r4, r3
 800618e:	d0fa      	beq.n	8006186 <_malloc_r+0x45a>
 8006190:	4640      	mov	r0, r8
 8006192:	e65f      	b.n	8005e54 <_malloc_r+0x128>
 8006194:	f108 0810 	add.w	r8, r8, #16
 8006198:	e6bc      	b.n	8005f14 <_malloc_r+0x1e8>
 800619a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800619e:	d826      	bhi.n	80061ee <_malloc_r+0x4c2>
 80061a0:	0beb      	lsrs	r3, r5, #15
 80061a2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80061a6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80061aa:	00c3      	lsls	r3, r0, #3
 80061ac:	e603      	b.n	8005db6 <_malloc_r+0x8a>
 80061ae:	687b      	ldr	r3, [r7, #4]
 80061b0:	1092      	asrs	r2, r2, #2
 80061b2:	f04f 0801 	mov.w	r8, #1
 80061b6:	fa08 f202 	lsl.w	r2, r8, r2
 80061ba:	4313      	orrs	r3, r2
 80061bc:	607b      	str	r3, [r7, #4]
 80061be:	e7a8      	b.n	8006112 <_malloc_r+0x3e6>
 80061c0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80061c4:	e6ce      	b.n	8005f64 <_malloc_r+0x238>
 80061c6:	2a54      	cmp	r2, #84	; 0x54
 80061c8:	d829      	bhi.n	800621e <_malloc_r+0x4f2>
 80061ca:	0b1a      	lsrs	r2, r3, #12
 80061cc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80061d0:	00c9      	lsls	r1, r1, #3
 80061d2:	326e      	adds	r2, #110	; 0x6e
 80061d4:	e78b      	b.n	80060ee <_malloc_r+0x3c2>
 80061d6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80061da:	2900      	cmp	r1, #0
 80061dc:	f47f aeae 	bne.w	8005f3c <_malloc_r+0x210>
 80061e0:	eb09 0208 	add.w	r2, r9, r8
 80061e4:	68b9      	ldr	r1, [r7, #8]
 80061e6:	f042 0201 	orr.w	r2, r2, #1
 80061ea:	604a      	str	r2, [r1, #4]
 80061ec:	e6ec      	b.n	8005fc8 <_malloc_r+0x29c>
 80061ee:	f240 5254 	movw	r2, #1364	; 0x554
 80061f2:	4293      	cmp	r3, r2
 80061f4:	d81c      	bhi.n	8006230 <_malloc_r+0x504>
 80061f6:	0cab      	lsrs	r3, r5, #18
 80061f8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80061fc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006200:	00c3      	lsls	r3, r0, #3
 8006202:	e5d8      	b.n	8005db6 <_malloc_r+0x8a>
 8006204:	2301      	movs	r3, #1
 8006206:	f8cb 3004 	str.w	r3, [fp, #4]
 800620a:	e79b      	b.n	8006144 <_malloc_r+0x418>
 800620c:	2101      	movs	r1, #1
 800620e:	f04f 0800 	mov.w	r8, #0
 8006212:	e6ba      	b.n	8005f8a <_malloc_r+0x25e>
 8006214:	4a16      	ldr	r2, [pc, #88]	; (8006270 <_malloc_r+0x544>)
 8006216:	6813      	ldr	r3, [r2, #0]
 8006218:	4443      	add	r3, r8
 800621a:	6013      	str	r3, [r2, #0]
 800621c:	e68e      	b.n	8005f3c <_malloc_r+0x210>
 800621e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006222:	d814      	bhi.n	800624e <_malloc_r+0x522>
 8006224:	0bda      	lsrs	r2, r3, #15
 8006226:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800622a:	00c9      	lsls	r1, r1, #3
 800622c:	3277      	adds	r2, #119	; 0x77
 800622e:	e75e      	b.n	80060ee <_malloc_r+0x3c2>
 8006230:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006234:	207f      	movs	r0, #127	; 0x7f
 8006236:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800623a:	e5bc      	b.n	8005db6 <_malloc_r+0x8a>
 800623c:	f104 0108 	add.w	r1, r4, #8
 8006240:	4630      	mov	r0, r6
 8006242:	9201      	str	r2, [sp, #4]
 8006244:	f7ff fa48 	bl	80056d8 <_free_r>
 8006248:	9a01      	ldr	r2, [sp, #4]
 800624a:	6813      	ldr	r3, [r2, #0]
 800624c:	e6bc      	b.n	8005fc8 <_malloc_r+0x29c>
 800624e:	f240 5154 	movw	r1, #1364	; 0x554
 8006252:	428a      	cmp	r2, r1
 8006254:	d805      	bhi.n	8006262 <_malloc_r+0x536>
 8006256:	0c9a      	lsrs	r2, r3, #18
 8006258:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800625c:	00c9      	lsls	r1, r1, #3
 800625e:	327c      	adds	r2, #124	; 0x7c
 8006260:	e745      	b.n	80060ee <_malloc_r+0x3c2>
 8006262:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006266:	227e      	movs	r2, #126	; 0x7e
 8006268:	e741      	b.n	80060ee <_malloc_r+0x3c2>
 800626a:	687b      	ldr	r3, [r7, #4]
 800626c:	e785      	b.n	800617a <_malloc_r+0x44e>
 800626e:	bf00      	nop
 8006270:	20000a6c 	.word	0x20000a6c

08006274 <memmove>:
 8006274:	4288      	cmp	r0, r1
 8006276:	b4f0      	push	{r4, r5, r6, r7}
 8006278:	d90d      	bls.n	8006296 <memmove+0x22>
 800627a:	188b      	adds	r3, r1, r2
 800627c:	4283      	cmp	r3, r0
 800627e:	d90a      	bls.n	8006296 <memmove+0x22>
 8006280:	1884      	adds	r4, r0, r2
 8006282:	b132      	cbz	r2, 8006292 <memmove+0x1e>
 8006284:	4622      	mov	r2, r4
 8006286:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800628a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800628e:	4299      	cmp	r1, r3
 8006290:	d1f9      	bne.n	8006286 <memmove+0x12>
 8006292:	bcf0      	pop	{r4, r5, r6, r7}
 8006294:	4770      	bx	lr
 8006296:	2a0f      	cmp	r2, #15
 8006298:	d949      	bls.n	800632e <memmove+0xba>
 800629a:	ea40 0301 	orr.w	r3, r0, r1
 800629e:	079b      	lsls	r3, r3, #30
 80062a0:	d147      	bne.n	8006332 <memmove+0xbe>
 80062a2:	f1a2 0310 	sub.w	r3, r2, #16
 80062a6:	091b      	lsrs	r3, r3, #4
 80062a8:	f101 0720 	add.w	r7, r1, #32
 80062ac:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80062b0:	f101 0410 	add.w	r4, r1, #16
 80062b4:	f100 0510 	add.w	r5, r0, #16
 80062b8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80062bc:	f845 6c10 	str.w	r6, [r5, #-16]
 80062c0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80062c4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80062c8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80062cc:	f845 6c08 	str.w	r6, [r5, #-8]
 80062d0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80062d4:	f845 6c04 	str.w	r6, [r5, #-4]
 80062d8:	3410      	adds	r4, #16
 80062da:	42bc      	cmp	r4, r7
 80062dc:	f105 0510 	add.w	r5, r5, #16
 80062e0:	d1ea      	bne.n	80062b8 <memmove+0x44>
 80062e2:	3301      	adds	r3, #1
 80062e4:	f002 050f 	and.w	r5, r2, #15
 80062e8:	011b      	lsls	r3, r3, #4
 80062ea:	2d03      	cmp	r5, #3
 80062ec:	4419      	add	r1, r3
 80062ee:	4403      	add	r3, r0
 80062f0:	d921      	bls.n	8006336 <memmove+0xc2>
 80062f2:	1f1f      	subs	r7, r3, #4
 80062f4:	460e      	mov	r6, r1
 80062f6:	462c      	mov	r4, r5
 80062f8:	3c04      	subs	r4, #4
 80062fa:	f856 cb04 	ldr.w	ip, [r6], #4
 80062fe:	f847 cf04 	str.w	ip, [r7, #4]!
 8006302:	2c03      	cmp	r4, #3
 8006304:	d8f8      	bhi.n	80062f8 <memmove+0x84>
 8006306:	1f2c      	subs	r4, r5, #4
 8006308:	f024 0403 	bic.w	r4, r4, #3
 800630c:	3404      	adds	r4, #4
 800630e:	4423      	add	r3, r4
 8006310:	4421      	add	r1, r4
 8006312:	f002 0203 	and.w	r2, r2, #3
 8006316:	2a00      	cmp	r2, #0
 8006318:	d0bb      	beq.n	8006292 <memmove+0x1e>
 800631a:	3b01      	subs	r3, #1
 800631c:	440a      	add	r2, r1
 800631e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006322:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006326:	4291      	cmp	r1, r2
 8006328:	d1f9      	bne.n	800631e <memmove+0xaa>
 800632a:	bcf0      	pop	{r4, r5, r6, r7}
 800632c:	4770      	bx	lr
 800632e:	4603      	mov	r3, r0
 8006330:	e7f1      	b.n	8006316 <memmove+0xa2>
 8006332:	4603      	mov	r3, r0
 8006334:	e7f1      	b.n	800631a <memmove+0xa6>
 8006336:	462a      	mov	r2, r5
 8006338:	e7ed      	b.n	8006316 <memmove+0xa2>
 800633a:	bf00      	nop

0800633c <__malloc_lock>:
 800633c:	4801      	ldr	r0, [pc, #4]	; (8006344 <__malloc_lock+0x8>)
 800633e:	f7ff bc79 	b.w	8005c34 <__retarget_lock_acquire_recursive>
 8006342:	bf00      	nop
 8006344:	20000af8 	.word	0x20000af8

08006348 <__malloc_unlock>:
 8006348:	4801      	ldr	r0, [pc, #4]	; (8006350 <__malloc_unlock+0x8>)
 800634a:	f7ff bc75 	b.w	8005c38 <__retarget_lock_release_recursive>
 800634e:	bf00      	nop
 8006350:	20000af8 	.word	0x20000af8

08006354 <_Balloc>:
 8006354:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006356:	b570      	push	{r4, r5, r6, lr}
 8006358:	4605      	mov	r5, r0
 800635a:	460c      	mov	r4, r1
 800635c:	b14b      	cbz	r3, 8006372 <_Balloc+0x1e>
 800635e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006362:	b180      	cbz	r0, 8006386 <_Balloc+0x32>
 8006364:	6802      	ldr	r2, [r0, #0]
 8006366:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800636a:	2300      	movs	r3, #0
 800636c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006370:	bd70      	pop	{r4, r5, r6, pc}
 8006372:	2221      	movs	r2, #33	; 0x21
 8006374:	2104      	movs	r1, #4
 8006376:	f000 fe1d 	bl	8006fb4 <_calloc_r>
 800637a:	4603      	mov	r3, r0
 800637c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800637e:	2800      	cmp	r0, #0
 8006380:	d1ed      	bne.n	800635e <_Balloc+0xa>
 8006382:	2000      	movs	r0, #0
 8006384:	bd70      	pop	{r4, r5, r6, pc}
 8006386:	2101      	movs	r1, #1
 8006388:	fa01 f604 	lsl.w	r6, r1, r4
 800638c:	1d72      	adds	r2, r6, #5
 800638e:	4628      	mov	r0, r5
 8006390:	0092      	lsls	r2, r2, #2
 8006392:	f000 fe0f 	bl	8006fb4 <_calloc_r>
 8006396:	2800      	cmp	r0, #0
 8006398:	d0f3      	beq.n	8006382 <_Balloc+0x2e>
 800639a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800639e:	e7e4      	b.n	800636a <_Balloc+0x16>

080063a0 <_Bfree>:
 80063a0:	b131      	cbz	r1, 80063b0 <_Bfree+0x10>
 80063a2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80063a4:	684a      	ldr	r2, [r1, #4]
 80063a6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80063aa:	6008      	str	r0, [r1, #0]
 80063ac:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80063b0:	4770      	bx	lr
 80063b2:	bf00      	nop

080063b4 <__multadd>:
 80063b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80063b6:	690c      	ldr	r4, [r1, #16]
 80063b8:	b083      	sub	sp, #12
 80063ba:	460d      	mov	r5, r1
 80063bc:	4606      	mov	r6, r0
 80063be:	f101 0c14 	add.w	ip, r1, #20
 80063c2:	2700      	movs	r7, #0
 80063c4:	f8dc 0000 	ldr.w	r0, [ip]
 80063c8:	b281      	uxth	r1, r0
 80063ca:	fb02 3301 	mla	r3, r2, r1, r3
 80063ce:	0c01      	lsrs	r1, r0, #16
 80063d0:	0c18      	lsrs	r0, r3, #16
 80063d2:	fb02 0101 	mla	r1, r2, r1, r0
 80063d6:	b29b      	uxth	r3, r3
 80063d8:	3701      	adds	r7, #1
 80063da:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80063de:	42bc      	cmp	r4, r7
 80063e0:	f84c 3b04 	str.w	r3, [ip], #4
 80063e4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80063e8:	dcec      	bgt.n	80063c4 <__multadd+0x10>
 80063ea:	b13b      	cbz	r3, 80063fc <__multadd+0x48>
 80063ec:	68aa      	ldr	r2, [r5, #8]
 80063ee:	42a2      	cmp	r2, r4
 80063f0:	dd07      	ble.n	8006402 <__multadd+0x4e>
 80063f2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80063f6:	3401      	adds	r4, #1
 80063f8:	6153      	str	r3, [r2, #20]
 80063fa:	612c      	str	r4, [r5, #16]
 80063fc:	4628      	mov	r0, r5
 80063fe:	b003      	add	sp, #12
 8006400:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006402:	6869      	ldr	r1, [r5, #4]
 8006404:	9301      	str	r3, [sp, #4]
 8006406:	3101      	adds	r1, #1
 8006408:	4630      	mov	r0, r6
 800640a:	f7ff ffa3 	bl	8006354 <_Balloc>
 800640e:	692a      	ldr	r2, [r5, #16]
 8006410:	3202      	adds	r2, #2
 8006412:	f105 010c 	add.w	r1, r5, #12
 8006416:	4607      	mov	r7, r0
 8006418:	0092      	lsls	r2, r2, #2
 800641a:	300c      	adds	r0, #12
 800641c:	f7fa fd3e 	bl	8000e9c <memcpy>
 8006420:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006422:	6869      	ldr	r1, [r5, #4]
 8006424:	9b01      	ldr	r3, [sp, #4]
 8006426:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800642a:	6028      	str	r0, [r5, #0]
 800642c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006430:	463d      	mov	r5, r7
 8006432:	e7de      	b.n	80063f2 <__multadd+0x3e>

08006434 <__hi0bits>:
 8006434:	0c02      	lsrs	r2, r0, #16
 8006436:	0412      	lsls	r2, r2, #16
 8006438:	4603      	mov	r3, r0
 800643a:	b9c2      	cbnz	r2, 800646e <__hi0bits+0x3a>
 800643c:	0403      	lsls	r3, r0, #16
 800643e:	2010      	movs	r0, #16
 8006440:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006444:	bf04      	itt	eq
 8006446:	021b      	lsleq	r3, r3, #8
 8006448:	3008      	addeq	r0, #8
 800644a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800644e:	bf04      	itt	eq
 8006450:	011b      	lsleq	r3, r3, #4
 8006452:	3004      	addeq	r0, #4
 8006454:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006458:	bf04      	itt	eq
 800645a:	009b      	lsleq	r3, r3, #2
 800645c:	3002      	addeq	r0, #2
 800645e:	2b00      	cmp	r3, #0
 8006460:	db04      	blt.n	800646c <__hi0bits+0x38>
 8006462:	005b      	lsls	r3, r3, #1
 8006464:	d501      	bpl.n	800646a <__hi0bits+0x36>
 8006466:	3001      	adds	r0, #1
 8006468:	4770      	bx	lr
 800646a:	2020      	movs	r0, #32
 800646c:	4770      	bx	lr
 800646e:	2000      	movs	r0, #0
 8006470:	e7e6      	b.n	8006440 <__hi0bits+0xc>
 8006472:	bf00      	nop

08006474 <__lo0bits>:
 8006474:	6803      	ldr	r3, [r0, #0]
 8006476:	f013 0207 	ands.w	r2, r3, #7
 800647a:	4601      	mov	r1, r0
 800647c:	d007      	beq.n	800648e <__lo0bits+0x1a>
 800647e:	07da      	lsls	r2, r3, #31
 8006480:	d41f      	bmi.n	80064c2 <__lo0bits+0x4e>
 8006482:	0798      	lsls	r0, r3, #30
 8006484:	d51f      	bpl.n	80064c6 <__lo0bits+0x52>
 8006486:	085b      	lsrs	r3, r3, #1
 8006488:	600b      	str	r3, [r1, #0]
 800648a:	2001      	movs	r0, #1
 800648c:	4770      	bx	lr
 800648e:	b298      	uxth	r0, r3
 8006490:	b1a0      	cbz	r0, 80064bc <__lo0bits+0x48>
 8006492:	4610      	mov	r0, r2
 8006494:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006498:	bf04      	itt	eq
 800649a:	0a1b      	lsreq	r3, r3, #8
 800649c:	3008      	addeq	r0, #8
 800649e:	071a      	lsls	r2, r3, #28
 80064a0:	bf04      	itt	eq
 80064a2:	091b      	lsreq	r3, r3, #4
 80064a4:	3004      	addeq	r0, #4
 80064a6:	079a      	lsls	r2, r3, #30
 80064a8:	bf04      	itt	eq
 80064aa:	089b      	lsreq	r3, r3, #2
 80064ac:	3002      	addeq	r0, #2
 80064ae:	07da      	lsls	r2, r3, #31
 80064b0:	d402      	bmi.n	80064b8 <__lo0bits+0x44>
 80064b2:	085b      	lsrs	r3, r3, #1
 80064b4:	d00b      	beq.n	80064ce <__lo0bits+0x5a>
 80064b6:	3001      	adds	r0, #1
 80064b8:	600b      	str	r3, [r1, #0]
 80064ba:	4770      	bx	lr
 80064bc:	0c1b      	lsrs	r3, r3, #16
 80064be:	2010      	movs	r0, #16
 80064c0:	e7e8      	b.n	8006494 <__lo0bits+0x20>
 80064c2:	2000      	movs	r0, #0
 80064c4:	4770      	bx	lr
 80064c6:	089b      	lsrs	r3, r3, #2
 80064c8:	600b      	str	r3, [r1, #0]
 80064ca:	2002      	movs	r0, #2
 80064cc:	4770      	bx	lr
 80064ce:	2020      	movs	r0, #32
 80064d0:	4770      	bx	lr
 80064d2:	bf00      	nop

080064d4 <__i2b>:
 80064d4:	b510      	push	{r4, lr}
 80064d6:	460c      	mov	r4, r1
 80064d8:	2101      	movs	r1, #1
 80064da:	f7ff ff3b 	bl	8006354 <_Balloc>
 80064de:	2201      	movs	r2, #1
 80064e0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80064e4:	bd10      	pop	{r4, pc}
 80064e6:	bf00      	nop

080064e8 <__multiply>:
 80064e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064ec:	690e      	ldr	r6, [r1, #16]
 80064ee:	6914      	ldr	r4, [r2, #16]
 80064f0:	42a6      	cmp	r6, r4
 80064f2:	b083      	sub	sp, #12
 80064f4:	460f      	mov	r7, r1
 80064f6:	4615      	mov	r5, r2
 80064f8:	da04      	bge.n	8006504 <__multiply+0x1c>
 80064fa:	4632      	mov	r2, r6
 80064fc:	462f      	mov	r7, r5
 80064fe:	4626      	mov	r6, r4
 8006500:	460d      	mov	r5, r1
 8006502:	4614      	mov	r4, r2
 8006504:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006508:	eb06 0804 	add.w	r8, r6, r4
 800650c:	4543      	cmp	r3, r8
 800650e:	bfb8      	it	lt
 8006510:	3101      	addlt	r1, #1
 8006512:	f7ff ff1f 	bl	8006354 <_Balloc>
 8006516:	f100 0914 	add.w	r9, r0, #20
 800651a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800651e:	45f1      	cmp	r9, lr
 8006520:	9000      	str	r0, [sp, #0]
 8006522:	d205      	bcs.n	8006530 <__multiply+0x48>
 8006524:	464b      	mov	r3, r9
 8006526:	2200      	movs	r2, #0
 8006528:	f843 2b04 	str.w	r2, [r3], #4
 800652c:	459e      	cmp	lr, r3
 800652e:	d8fb      	bhi.n	8006528 <__multiply+0x40>
 8006530:	f105 0a14 	add.w	sl, r5, #20
 8006534:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006538:	f107 0314 	add.w	r3, r7, #20
 800653c:	45a2      	cmp	sl, r4
 800653e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006542:	d261      	bcs.n	8006608 <__multiply+0x120>
 8006544:	1b64      	subs	r4, r4, r5
 8006546:	3c15      	subs	r4, #21
 8006548:	f024 0403 	bic.w	r4, r4, #3
 800654c:	f8cd e004 	str.w	lr, [sp, #4]
 8006550:	44a2      	add	sl, r4
 8006552:	f105 0210 	add.w	r2, r5, #16
 8006556:	469e      	mov	lr, r3
 8006558:	e005      	b.n	8006566 <__multiply+0x7e>
 800655a:	0c2d      	lsrs	r5, r5, #16
 800655c:	d12b      	bne.n	80065b6 <__multiply+0xce>
 800655e:	4592      	cmp	sl, r2
 8006560:	f109 0904 	add.w	r9, r9, #4
 8006564:	d04e      	beq.n	8006604 <__multiply+0x11c>
 8006566:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800656a:	fa1f fb85 	uxth.w	fp, r5
 800656e:	f1bb 0f00 	cmp.w	fp, #0
 8006572:	d0f2      	beq.n	800655a <__multiply+0x72>
 8006574:	4677      	mov	r7, lr
 8006576:	464e      	mov	r6, r9
 8006578:	2000      	movs	r0, #0
 800657a:	e000      	b.n	800657e <__multiply+0x96>
 800657c:	4626      	mov	r6, r4
 800657e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006582:	6834      	ldr	r4, [r6, #0]
 8006584:	b28b      	uxth	r3, r1
 8006586:	b2a5      	uxth	r5, r4
 8006588:	0c09      	lsrs	r1, r1, #16
 800658a:	0c24      	lsrs	r4, r4, #16
 800658c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006590:	4403      	add	r3, r0
 8006592:	fb0b 4001 	mla	r0, fp, r1, r4
 8006596:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800659a:	4634      	mov	r4, r6
 800659c:	b29b      	uxth	r3, r3
 800659e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80065a2:	45bc      	cmp	ip, r7
 80065a4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80065a8:	f844 3b04 	str.w	r3, [r4], #4
 80065ac:	d8e6      	bhi.n	800657c <__multiply+0x94>
 80065ae:	6070      	str	r0, [r6, #4]
 80065b0:	6815      	ldr	r5, [r2, #0]
 80065b2:	0c2d      	lsrs	r5, r5, #16
 80065b4:	d0d3      	beq.n	800655e <__multiply+0x76>
 80065b6:	f8d9 3000 	ldr.w	r3, [r9]
 80065ba:	4676      	mov	r6, lr
 80065bc:	4618      	mov	r0, r3
 80065be:	46cb      	mov	fp, r9
 80065c0:	2100      	movs	r1, #0
 80065c2:	e000      	b.n	80065c6 <__multiply+0xde>
 80065c4:	46a3      	mov	fp, r4
 80065c6:	8834      	ldrh	r4, [r6, #0]
 80065c8:	0c00      	lsrs	r0, r0, #16
 80065ca:	fb05 0004 	mla	r0, r5, r4, r0
 80065ce:	4401      	add	r1, r0
 80065d0:	b29b      	uxth	r3, r3
 80065d2:	465c      	mov	r4, fp
 80065d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80065d8:	f844 3b04 	str.w	r3, [r4], #4
 80065dc:	f856 3b04 	ldr.w	r3, [r6], #4
 80065e0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80065e4:	0c1b      	lsrs	r3, r3, #16
 80065e6:	b287      	uxth	r7, r0
 80065e8:	fb05 7303 	mla	r3, r5, r3, r7
 80065ec:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80065f0:	45b4      	cmp	ip, r6
 80065f2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80065f6:	d8e5      	bhi.n	80065c4 <__multiply+0xdc>
 80065f8:	4592      	cmp	sl, r2
 80065fa:	f8cb 3004 	str.w	r3, [fp, #4]
 80065fe:	f109 0904 	add.w	r9, r9, #4
 8006602:	d1b0      	bne.n	8006566 <__multiply+0x7e>
 8006604:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006608:	f1b8 0f00 	cmp.w	r8, #0
 800660c:	dd0b      	ble.n	8006626 <__multiply+0x13e>
 800660e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006612:	f1ae 0e04 	sub.w	lr, lr, #4
 8006616:	b11b      	cbz	r3, 8006620 <__multiply+0x138>
 8006618:	e005      	b.n	8006626 <__multiply+0x13e>
 800661a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800661e:	b913      	cbnz	r3, 8006626 <__multiply+0x13e>
 8006620:	f1b8 0801 	subs.w	r8, r8, #1
 8006624:	d1f9      	bne.n	800661a <__multiply+0x132>
 8006626:	9800      	ldr	r0, [sp, #0]
 8006628:	f8c0 8010 	str.w	r8, [r0, #16]
 800662c:	b003      	add	sp, #12
 800662e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006632:	bf00      	nop

08006634 <__pow5mult>:
 8006634:	f012 0303 	ands.w	r3, r2, #3
 8006638:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800663c:	4614      	mov	r4, r2
 800663e:	4607      	mov	r7, r0
 8006640:	d12e      	bne.n	80066a0 <__pow5mult+0x6c>
 8006642:	460d      	mov	r5, r1
 8006644:	10a4      	asrs	r4, r4, #2
 8006646:	d01c      	beq.n	8006682 <__pow5mult+0x4e>
 8006648:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800664a:	b396      	cbz	r6, 80066b2 <__pow5mult+0x7e>
 800664c:	07e3      	lsls	r3, r4, #31
 800664e:	f04f 0800 	mov.w	r8, #0
 8006652:	d406      	bmi.n	8006662 <__pow5mult+0x2e>
 8006654:	1064      	asrs	r4, r4, #1
 8006656:	d014      	beq.n	8006682 <__pow5mult+0x4e>
 8006658:	6830      	ldr	r0, [r6, #0]
 800665a:	b1a8      	cbz	r0, 8006688 <__pow5mult+0x54>
 800665c:	4606      	mov	r6, r0
 800665e:	07e3      	lsls	r3, r4, #31
 8006660:	d5f8      	bpl.n	8006654 <__pow5mult+0x20>
 8006662:	4632      	mov	r2, r6
 8006664:	4629      	mov	r1, r5
 8006666:	4638      	mov	r0, r7
 8006668:	f7ff ff3e 	bl	80064e8 <__multiply>
 800666c:	b1b5      	cbz	r5, 800669c <__pow5mult+0x68>
 800666e:	686a      	ldr	r2, [r5, #4]
 8006670:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006672:	1064      	asrs	r4, r4, #1
 8006674:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006678:	6029      	str	r1, [r5, #0]
 800667a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800667e:	4605      	mov	r5, r0
 8006680:	d1ea      	bne.n	8006658 <__pow5mult+0x24>
 8006682:	4628      	mov	r0, r5
 8006684:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006688:	4632      	mov	r2, r6
 800668a:	4631      	mov	r1, r6
 800668c:	4638      	mov	r0, r7
 800668e:	f7ff ff2b 	bl	80064e8 <__multiply>
 8006692:	6030      	str	r0, [r6, #0]
 8006694:	f8c0 8000 	str.w	r8, [r0]
 8006698:	4606      	mov	r6, r0
 800669a:	e7e0      	b.n	800665e <__pow5mult+0x2a>
 800669c:	4605      	mov	r5, r0
 800669e:	e7d9      	b.n	8006654 <__pow5mult+0x20>
 80066a0:	3b01      	subs	r3, #1
 80066a2:	4a0b      	ldr	r2, [pc, #44]	; (80066d0 <__pow5mult+0x9c>)
 80066a4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80066a8:	2300      	movs	r3, #0
 80066aa:	f7ff fe83 	bl	80063b4 <__multadd>
 80066ae:	4605      	mov	r5, r0
 80066b0:	e7c8      	b.n	8006644 <__pow5mult+0x10>
 80066b2:	2101      	movs	r1, #1
 80066b4:	4638      	mov	r0, r7
 80066b6:	f7ff fe4d 	bl	8006354 <_Balloc>
 80066ba:	f240 2371 	movw	r3, #625	; 0x271
 80066be:	6143      	str	r3, [r0, #20]
 80066c0:	2201      	movs	r2, #1
 80066c2:	2300      	movs	r3, #0
 80066c4:	6102      	str	r2, [r0, #16]
 80066c6:	4606      	mov	r6, r0
 80066c8:	64b8      	str	r0, [r7, #72]	; 0x48
 80066ca:	6003      	str	r3, [r0, #0]
 80066cc:	e7be      	b.n	800664c <__pow5mult+0x18>
 80066ce:	bf00      	nop
 80066d0:	08008150 	.word	0x08008150

080066d4 <__lshift>:
 80066d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80066d8:	4691      	mov	r9, r2
 80066da:	690a      	ldr	r2, [r1, #16]
 80066dc:	460e      	mov	r6, r1
 80066de:	ea4f 1469 	mov.w	r4, r9, asr #5
 80066e2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80066e6:	eb04 0802 	add.w	r8, r4, r2
 80066ea:	f108 0501 	add.w	r5, r8, #1
 80066ee:	429d      	cmp	r5, r3
 80066f0:	4607      	mov	r7, r0
 80066f2:	dd04      	ble.n	80066fe <__lshift+0x2a>
 80066f4:	005b      	lsls	r3, r3, #1
 80066f6:	429d      	cmp	r5, r3
 80066f8:	f101 0101 	add.w	r1, r1, #1
 80066fc:	dcfa      	bgt.n	80066f4 <__lshift+0x20>
 80066fe:	4638      	mov	r0, r7
 8006700:	f7ff fe28 	bl	8006354 <_Balloc>
 8006704:	2c00      	cmp	r4, #0
 8006706:	f100 0314 	add.w	r3, r0, #20
 800670a:	dd37      	ble.n	800677c <__lshift+0xa8>
 800670c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006710:	2200      	movs	r2, #0
 8006712:	f843 2b04 	str.w	r2, [r3], #4
 8006716:	428b      	cmp	r3, r1
 8006718:	d1fb      	bne.n	8006712 <__lshift+0x3e>
 800671a:	6934      	ldr	r4, [r6, #16]
 800671c:	f106 0314 	add.w	r3, r6, #20
 8006720:	f019 091f 	ands.w	r9, r9, #31
 8006724:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006728:	d020      	beq.n	800676c <__lshift+0x98>
 800672a:	f1c9 0e20 	rsb	lr, r9, #32
 800672e:	2200      	movs	r2, #0
 8006730:	e000      	b.n	8006734 <__lshift+0x60>
 8006732:	4651      	mov	r1, sl
 8006734:	681c      	ldr	r4, [r3, #0]
 8006736:	468a      	mov	sl, r1
 8006738:	fa04 f409 	lsl.w	r4, r4, r9
 800673c:	4314      	orrs	r4, r2
 800673e:	f84a 4b04 	str.w	r4, [sl], #4
 8006742:	f853 2b04 	ldr.w	r2, [r3], #4
 8006746:	4563      	cmp	r3, ip
 8006748:	fa22 f20e 	lsr.w	r2, r2, lr
 800674c:	d3f1      	bcc.n	8006732 <__lshift+0x5e>
 800674e:	604a      	str	r2, [r1, #4]
 8006750:	b10a      	cbz	r2, 8006756 <__lshift+0x82>
 8006752:	f108 0502 	add.w	r5, r8, #2
 8006756:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006758:	6872      	ldr	r2, [r6, #4]
 800675a:	3d01      	subs	r5, #1
 800675c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006760:	6105      	str	r5, [r0, #16]
 8006762:	6031      	str	r1, [r6, #0]
 8006764:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006768:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800676c:	3904      	subs	r1, #4
 800676e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006772:	f841 2f04 	str.w	r2, [r1, #4]!
 8006776:	459c      	cmp	ip, r3
 8006778:	d8f9      	bhi.n	800676e <__lshift+0x9a>
 800677a:	e7ec      	b.n	8006756 <__lshift+0x82>
 800677c:	4619      	mov	r1, r3
 800677e:	e7cc      	b.n	800671a <__lshift+0x46>

08006780 <__mcmp>:
 8006780:	b430      	push	{r4, r5}
 8006782:	690b      	ldr	r3, [r1, #16]
 8006784:	4605      	mov	r5, r0
 8006786:	6900      	ldr	r0, [r0, #16]
 8006788:	1ac0      	subs	r0, r0, r3
 800678a:	d10f      	bne.n	80067ac <__mcmp+0x2c>
 800678c:	009b      	lsls	r3, r3, #2
 800678e:	3514      	adds	r5, #20
 8006790:	3114      	adds	r1, #20
 8006792:	4419      	add	r1, r3
 8006794:	442b      	add	r3, r5
 8006796:	e001      	b.n	800679c <__mcmp+0x1c>
 8006798:	429d      	cmp	r5, r3
 800679a:	d207      	bcs.n	80067ac <__mcmp+0x2c>
 800679c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80067a0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80067a4:	4294      	cmp	r4, r2
 80067a6:	d0f7      	beq.n	8006798 <__mcmp+0x18>
 80067a8:	d302      	bcc.n	80067b0 <__mcmp+0x30>
 80067aa:	2001      	movs	r0, #1
 80067ac:	bc30      	pop	{r4, r5}
 80067ae:	4770      	bx	lr
 80067b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80067b4:	e7fa      	b.n	80067ac <__mcmp+0x2c>
 80067b6:	bf00      	nop

080067b8 <__mdiff>:
 80067b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067bc:	6913      	ldr	r3, [r2, #16]
 80067be:	690d      	ldr	r5, [r1, #16]
 80067c0:	1aed      	subs	r5, r5, r3
 80067c2:	2d00      	cmp	r5, #0
 80067c4:	460e      	mov	r6, r1
 80067c6:	4690      	mov	r8, r2
 80067c8:	f101 0414 	add.w	r4, r1, #20
 80067cc:	f102 0714 	add.w	r7, r2, #20
 80067d0:	d114      	bne.n	80067fc <__mdiff+0x44>
 80067d2:	009b      	lsls	r3, r3, #2
 80067d4:	18e2      	adds	r2, r4, r3
 80067d6:	443b      	add	r3, r7
 80067d8:	e001      	b.n	80067de <__mdiff+0x26>
 80067da:	42a2      	cmp	r2, r4
 80067dc:	d959      	bls.n	8006892 <__mdiff+0xda>
 80067de:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80067e2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80067e6:	458c      	cmp	ip, r1
 80067e8:	d0f7      	beq.n	80067da <__mdiff+0x22>
 80067ea:	d209      	bcs.n	8006800 <__mdiff+0x48>
 80067ec:	4622      	mov	r2, r4
 80067ee:	4633      	mov	r3, r6
 80067f0:	463c      	mov	r4, r7
 80067f2:	4646      	mov	r6, r8
 80067f4:	4617      	mov	r7, r2
 80067f6:	4698      	mov	r8, r3
 80067f8:	2501      	movs	r5, #1
 80067fa:	e001      	b.n	8006800 <__mdiff+0x48>
 80067fc:	dbf6      	blt.n	80067ec <__mdiff+0x34>
 80067fe:	2500      	movs	r5, #0
 8006800:	6871      	ldr	r1, [r6, #4]
 8006802:	f7ff fda7 	bl	8006354 <_Balloc>
 8006806:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800680a:	6936      	ldr	r6, [r6, #16]
 800680c:	60c5      	str	r5, [r0, #12]
 800680e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006812:	46bc      	mov	ip, r7
 8006814:	f100 0514 	add.w	r5, r0, #20
 8006818:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800681c:	2300      	movs	r3, #0
 800681e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006822:	f854 8b04 	ldr.w	r8, [r4], #4
 8006826:	b28a      	uxth	r2, r1
 8006828:	fa13 f388 	uxtah	r3, r3, r8
 800682c:	0c09      	lsrs	r1, r1, #16
 800682e:	1a9a      	subs	r2, r3, r2
 8006830:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006834:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006838:	b292      	uxth	r2, r2
 800683a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800683e:	45e6      	cmp	lr, ip
 8006840:	f845 2b04 	str.w	r2, [r5], #4
 8006844:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006848:	d8e9      	bhi.n	800681e <__mdiff+0x66>
 800684a:	42a7      	cmp	r7, r4
 800684c:	d917      	bls.n	800687e <__mdiff+0xc6>
 800684e:	46ae      	mov	lr, r5
 8006850:	46a4      	mov	ip, r4
 8006852:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006856:	fa13 f382 	uxtah	r3, r3, r2
 800685a:	1419      	asrs	r1, r3, #16
 800685c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006860:	b29b      	uxth	r3, r3
 8006862:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006866:	4567      	cmp	r7, ip
 8006868:	f84e 2b04 	str.w	r2, [lr], #4
 800686c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006870:	d8ef      	bhi.n	8006852 <__mdiff+0x9a>
 8006872:	43e4      	mvns	r4, r4
 8006874:	4427      	add	r7, r4
 8006876:	f027 0703 	bic.w	r7, r7, #3
 800687a:	3704      	adds	r7, #4
 800687c:	443d      	add	r5, r7
 800687e:	3d04      	subs	r5, #4
 8006880:	b922      	cbnz	r2, 800688c <__mdiff+0xd4>
 8006882:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006886:	3e01      	subs	r6, #1
 8006888:	2b00      	cmp	r3, #0
 800688a:	d0fa      	beq.n	8006882 <__mdiff+0xca>
 800688c:	6106      	str	r6, [r0, #16]
 800688e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006892:	2100      	movs	r1, #0
 8006894:	f7ff fd5e 	bl	8006354 <_Balloc>
 8006898:	2201      	movs	r2, #1
 800689a:	2300      	movs	r3, #0
 800689c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80068a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080068a4 <__d2b>:
 80068a4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80068a8:	460f      	mov	r7, r1
 80068aa:	b083      	sub	sp, #12
 80068ac:	2101      	movs	r1, #1
 80068ae:	ec55 4b10 	vmov	r4, r5, d0
 80068b2:	4616      	mov	r6, r2
 80068b4:	f7ff fd4e 	bl	8006354 <_Balloc>
 80068b8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80068bc:	4681      	mov	r9, r0
 80068be:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80068c2:	f1b8 0f00 	cmp.w	r8, #0
 80068c6:	d001      	beq.n	80068cc <__d2b+0x28>
 80068c8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80068cc:	2c00      	cmp	r4, #0
 80068ce:	9301      	str	r3, [sp, #4]
 80068d0:	d024      	beq.n	800691c <__d2b+0x78>
 80068d2:	a802      	add	r0, sp, #8
 80068d4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80068d8:	f7ff fdcc 	bl	8006474 <__lo0bits>
 80068dc:	2800      	cmp	r0, #0
 80068de:	d136      	bne.n	800694e <__d2b+0xaa>
 80068e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80068e4:	f8c9 2014 	str.w	r2, [r9, #20]
 80068e8:	2b00      	cmp	r3, #0
 80068ea:	bf0c      	ite	eq
 80068ec:	2101      	moveq	r1, #1
 80068ee:	2102      	movne	r1, #2
 80068f0:	f8c9 3018 	str.w	r3, [r9, #24]
 80068f4:	f8c9 1010 	str.w	r1, [r9, #16]
 80068f8:	f1b8 0f00 	cmp.w	r8, #0
 80068fc:	d11b      	bne.n	8006936 <__d2b+0x92>
 80068fe:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006902:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006906:	6038      	str	r0, [r7, #0]
 8006908:	6918      	ldr	r0, [r3, #16]
 800690a:	f7ff fd93 	bl	8006434 <__hi0bits>
 800690e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006912:	6030      	str	r0, [r6, #0]
 8006914:	4648      	mov	r0, r9
 8006916:	b003      	add	sp, #12
 8006918:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800691c:	a801      	add	r0, sp, #4
 800691e:	f7ff fda9 	bl	8006474 <__lo0bits>
 8006922:	9b01      	ldr	r3, [sp, #4]
 8006924:	f8c9 3014 	str.w	r3, [r9, #20]
 8006928:	2101      	movs	r1, #1
 800692a:	3020      	adds	r0, #32
 800692c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006930:	f1b8 0f00 	cmp.w	r8, #0
 8006934:	d0e3      	beq.n	80068fe <__d2b+0x5a>
 8006936:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800693a:	eb08 0300 	add.w	r3, r8, r0
 800693e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006942:	603b      	str	r3, [r7, #0]
 8006944:	6030      	str	r0, [r6, #0]
 8006946:	4648      	mov	r0, r9
 8006948:	b003      	add	sp, #12
 800694a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800694e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006952:	f1c0 0220 	rsb	r2, r0, #32
 8006956:	fa03 f202 	lsl.w	r2, r3, r2
 800695a:	430a      	orrs	r2, r1
 800695c:	40c3      	lsrs	r3, r0
 800695e:	9301      	str	r3, [sp, #4]
 8006960:	f8c9 2014 	str.w	r2, [r9, #20]
 8006964:	e7c0      	b.n	80068e8 <__d2b+0x44>
 8006966:	bf00      	nop

08006968 <_realloc_r>:
 8006968:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800696c:	4692      	mov	sl, r2
 800696e:	b083      	sub	sp, #12
 8006970:	2900      	cmp	r1, #0
 8006972:	f000 80a1 	beq.w	8006ab8 <_realloc_r+0x150>
 8006976:	460d      	mov	r5, r1
 8006978:	4680      	mov	r8, r0
 800697a:	f10a 040b 	add.w	r4, sl, #11
 800697e:	f7ff fcdd 	bl	800633c <__malloc_lock>
 8006982:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006986:	2c16      	cmp	r4, #22
 8006988:	f022 0603 	bic.w	r6, r2, #3
 800698c:	f1a5 0708 	sub.w	r7, r5, #8
 8006990:	d83e      	bhi.n	8006a10 <_realloc_r+0xa8>
 8006992:	2410      	movs	r4, #16
 8006994:	4621      	mov	r1, r4
 8006996:	45a2      	cmp	sl, r4
 8006998:	d83f      	bhi.n	8006a1a <_realloc_r+0xb2>
 800699a:	428e      	cmp	r6, r1
 800699c:	eb07 0906 	add.w	r9, r7, r6
 80069a0:	da74      	bge.n	8006a8c <_realloc_r+0x124>
 80069a2:	4bc7      	ldr	r3, [pc, #796]	; (8006cc0 <_realloc_r+0x358>)
 80069a4:	6898      	ldr	r0, [r3, #8]
 80069a6:	4548      	cmp	r0, r9
 80069a8:	f000 80aa 	beq.w	8006b00 <_realloc_r+0x198>
 80069ac:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80069b0:	f020 0301 	bic.w	r3, r0, #1
 80069b4:	444b      	add	r3, r9
 80069b6:	685b      	ldr	r3, [r3, #4]
 80069b8:	07db      	lsls	r3, r3, #31
 80069ba:	f140 8083 	bpl.w	8006ac4 <_realloc_r+0x15c>
 80069be:	07d2      	lsls	r2, r2, #31
 80069c0:	d534      	bpl.n	8006a2c <_realloc_r+0xc4>
 80069c2:	4651      	mov	r1, sl
 80069c4:	4640      	mov	r0, r8
 80069c6:	f7ff f9b1 	bl	8005d2c <_malloc_r>
 80069ca:	4682      	mov	sl, r0
 80069cc:	b1e0      	cbz	r0, 8006a08 <_realloc_r+0xa0>
 80069ce:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80069d2:	f023 0301 	bic.w	r3, r3, #1
 80069d6:	443b      	add	r3, r7
 80069d8:	f1a0 0208 	sub.w	r2, r0, #8
 80069dc:	4293      	cmp	r3, r2
 80069de:	f000 80f9 	beq.w	8006bd4 <_realloc_r+0x26c>
 80069e2:	1f32      	subs	r2, r6, #4
 80069e4:	2a24      	cmp	r2, #36	; 0x24
 80069e6:	f200 8107 	bhi.w	8006bf8 <_realloc_r+0x290>
 80069ea:	2a13      	cmp	r2, #19
 80069ec:	6829      	ldr	r1, [r5, #0]
 80069ee:	f200 80e6 	bhi.w	8006bbe <_realloc_r+0x256>
 80069f2:	4603      	mov	r3, r0
 80069f4:	462a      	mov	r2, r5
 80069f6:	6019      	str	r1, [r3, #0]
 80069f8:	6851      	ldr	r1, [r2, #4]
 80069fa:	6059      	str	r1, [r3, #4]
 80069fc:	6892      	ldr	r2, [r2, #8]
 80069fe:	609a      	str	r2, [r3, #8]
 8006a00:	4629      	mov	r1, r5
 8006a02:	4640      	mov	r0, r8
 8006a04:	f7fe fe68 	bl	80056d8 <_free_r>
 8006a08:	4640      	mov	r0, r8
 8006a0a:	f7ff fc9d 	bl	8006348 <__malloc_unlock>
 8006a0e:	e04f      	b.n	8006ab0 <_realloc_r+0x148>
 8006a10:	f024 0407 	bic.w	r4, r4, #7
 8006a14:	2c00      	cmp	r4, #0
 8006a16:	4621      	mov	r1, r4
 8006a18:	dabd      	bge.n	8006996 <_realloc_r+0x2e>
 8006a1a:	f04f 0a00 	mov.w	sl, #0
 8006a1e:	230c      	movs	r3, #12
 8006a20:	4650      	mov	r0, sl
 8006a22:	f8c8 3000 	str.w	r3, [r8]
 8006a26:	b003      	add	sp, #12
 8006a28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a2c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a30:	eba7 0b03 	sub.w	fp, r7, r3
 8006a34:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a38:	f022 0203 	bic.w	r2, r2, #3
 8006a3c:	18b3      	adds	r3, r6, r2
 8006a3e:	428b      	cmp	r3, r1
 8006a40:	dbbf      	blt.n	80069c2 <_realloc_r+0x5a>
 8006a42:	46da      	mov	sl, fp
 8006a44:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a48:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a4c:	1f32      	subs	r2, r6, #4
 8006a4e:	2a24      	cmp	r2, #36	; 0x24
 8006a50:	60c1      	str	r1, [r0, #12]
 8006a52:	eb0b 0903 	add.w	r9, fp, r3
 8006a56:	6088      	str	r0, [r1, #8]
 8006a58:	f200 80c6 	bhi.w	8006be8 <_realloc_r+0x280>
 8006a5c:	2a13      	cmp	r2, #19
 8006a5e:	6829      	ldr	r1, [r5, #0]
 8006a60:	f240 80c0 	bls.w	8006be4 <_realloc_r+0x27c>
 8006a64:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a68:	6869      	ldr	r1, [r5, #4]
 8006a6a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a6e:	2a1b      	cmp	r2, #27
 8006a70:	68a9      	ldr	r1, [r5, #8]
 8006a72:	f200 80d8 	bhi.w	8006c26 <_realloc_r+0x2be>
 8006a76:	f10b 0210 	add.w	r2, fp, #16
 8006a7a:	3508      	adds	r5, #8
 8006a7c:	6011      	str	r1, [r2, #0]
 8006a7e:	6869      	ldr	r1, [r5, #4]
 8006a80:	6051      	str	r1, [r2, #4]
 8006a82:	68a9      	ldr	r1, [r5, #8]
 8006a84:	6091      	str	r1, [r2, #8]
 8006a86:	461e      	mov	r6, r3
 8006a88:	465f      	mov	r7, fp
 8006a8a:	4655      	mov	r5, sl
 8006a8c:	687b      	ldr	r3, [r7, #4]
 8006a8e:	1b32      	subs	r2, r6, r4
 8006a90:	2a0f      	cmp	r2, #15
 8006a92:	f003 0301 	and.w	r3, r3, #1
 8006a96:	d822      	bhi.n	8006ade <_realloc_r+0x176>
 8006a98:	4333      	orrs	r3, r6
 8006a9a:	607b      	str	r3, [r7, #4]
 8006a9c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006aa0:	f043 0301 	orr.w	r3, r3, #1
 8006aa4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006aa8:	4640      	mov	r0, r8
 8006aaa:	f7ff fc4d 	bl	8006348 <__malloc_unlock>
 8006aae:	46aa      	mov	sl, r5
 8006ab0:	4650      	mov	r0, sl
 8006ab2:	b003      	add	sp, #12
 8006ab4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ab8:	4611      	mov	r1, r2
 8006aba:	b003      	add	sp, #12
 8006abc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ac0:	f7ff b934 	b.w	8005d2c <_malloc_r>
 8006ac4:	f020 0003 	bic.w	r0, r0, #3
 8006ac8:	1833      	adds	r3, r6, r0
 8006aca:	428b      	cmp	r3, r1
 8006acc:	db61      	blt.n	8006b92 <_realloc_r+0x22a>
 8006ace:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ad2:	461e      	mov	r6, r3
 8006ad4:	60ca      	str	r2, [r1, #12]
 8006ad6:	eb07 0903 	add.w	r9, r7, r3
 8006ada:	6091      	str	r1, [r2, #8]
 8006adc:	e7d6      	b.n	8006a8c <_realloc_r+0x124>
 8006ade:	1939      	adds	r1, r7, r4
 8006ae0:	4323      	orrs	r3, r4
 8006ae2:	f042 0201 	orr.w	r2, r2, #1
 8006ae6:	607b      	str	r3, [r7, #4]
 8006ae8:	604a      	str	r2, [r1, #4]
 8006aea:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006aee:	f043 0301 	orr.w	r3, r3, #1
 8006af2:	3108      	adds	r1, #8
 8006af4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006af8:	4640      	mov	r0, r8
 8006afa:	f7fe fded 	bl	80056d8 <_free_r>
 8006afe:	e7d3      	b.n	8006aa8 <_realloc_r+0x140>
 8006b00:	6840      	ldr	r0, [r0, #4]
 8006b02:	f020 0903 	bic.w	r9, r0, #3
 8006b06:	44b1      	add	r9, r6
 8006b08:	f104 0010 	add.w	r0, r4, #16
 8006b0c:	4581      	cmp	r9, r0
 8006b0e:	da77      	bge.n	8006c00 <_realloc_r+0x298>
 8006b10:	07d2      	lsls	r2, r2, #31
 8006b12:	f53f af56 	bmi.w	80069c2 <_realloc_r+0x5a>
 8006b16:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006b1a:	eba7 0b02 	sub.w	fp, r7, r2
 8006b1e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b22:	f022 0203 	bic.w	r2, r2, #3
 8006b26:	4491      	add	r9, r2
 8006b28:	4548      	cmp	r0, r9
 8006b2a:	dc87      	bgt.n	8006a3c <_realloc_r+0xd4>
 8006b2c:	46da      	mov	sl, fp
 8006b2e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b32:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b36:	1f32      	subs	r2, r6, #4
 8006b38:	2a24      	cmp	r2, #36	; 0x24
 8006b3a:	60c1      	str	r1, [r0, #12]
 8006b3c:	6088      	str	r0, [r1, #8]
 8006b3e:	f200 80a1 	bhi.w	8006c84 <_realloc_r+0x31c>
 8006b42:	2a13      	cmp	r2, #19
 8006b44:	6829      	ldr	r1, [r5, #0]
 8006b46:	f240 809b 	bls.w	8006c80 <_realloc_r+0x318>
 8006b4a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006b4e:	6869      	ldr	r1, [r5, #4]
 8006b50:	f8cb 100c 	str.w	r1, [fp, #12]
 8006b54:	2a1b      	cmp	r2, #27
 8006b56:	68a9      	ldr	r1, [r5, #8]
 8006b58:	f200 809b 	bhi.w	8006c92 <_realloc_r+0x32a>
 8006b5c:	f10b 0210 	add.w	r2, fp, #16
 8006b60:	3508      	adds	r5, #8
 8006b62:	6011      	str	r1, [r2, #0]
 8006b64:	6869      	ldr	r1, [r5, #4]
 8006b66:	6051      	str	r1, [r2, #4]
 8006b68:	68a9      	ldr	r1, [r5, #8]
 8006b6a:	6091      	str	r1, [r2, #8]
 8006b6c:	eb0b 0104 	add.w	r1, fp, r4
 8006b70:	eba9 0204 	sub.w	r2, r9, r4
 8006b74:	f042 0201 	orr.w	r2, r2, #1
 8006b78:	6099      	str	r1, [r3, #8]
 8006b7a:	604a      	str	r2, [r1, #4]
 8006b7c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006b80:	f003 0301 	and.w	r3, r3, #1
 8006b84:	431c      	orrs	r4, r3
 8006b86:	4640      	mov	r0, r8
 8006b88:	f8cb 4004 	str.w	r4, [fp, #4]
 8006b8c:	f7ff fbdc 	bl	8006348 <__malloc_unlock>
 8006b90:	e78e      	b.n	8006ab0 <_realloc_r+0x148>
 8006b92:	07d3      	lsls	r3, r2, #31
 8006b94:	f53f af15 	bmi.w	80069c2 <_realloc_r+0x5a>
 8006b98:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006b9c:	eba7 0b03 	sub.w	fp, r7, r3
 8006ba0:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006ba4:	f022 0203 	bic.w	r2, r2, #3
 8006ba8:	4410      	add	r0, r2
 8006baa:	1983      	adds	r3, r0, r6
 8006bac:	428b      	cmp	r3, r1
 8006bae:	f6ff af45 	blt.w	8006a3c <_realloc_r+0xd4>
 8006bb2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006bb6:	46da      	mov	sl, fp
 8006bb8:	60ca      	str	r2, [r1, #12]
 8006bba:	6091      	str	r1, [r2, #8]
 8006bbc:	e742      	b.n	8006a44 <_realloc_r+0xdc>
 8006bbe:	6001      	str	r1, [r0, #0]
 8006bc0:	686b      	ldr	r3, [r5, #4]
 8006bc2:	6043      	str	r3, [r0, #4]
 8006bc4:	2a1b      	cmp	r2, #27
 8006bc6:	d83a      	bhi.n	8006c3e <_realloc_r+0x2d6>
 8006bc8:	f105 0208 	add.w	r2, r5, #8
 8006bcc:	f100 0308 	add.w	r3, r0, #8
 8006bd0:	68a9      	ldr	r1, [r5, #8]
 8006bd2:	e710      	b.n	80069f6 <_realloc_r+0x8e>
 8006bd4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006bd8:	f023 0303 	bic.w	r3, r3, #3
 8006bdc:	441e      	add	r6, r3
 8006bde:	eb07 0906 	add.w	r9, r7, r6
 8006be2:	e753      	b.n	8006a8c <_realloc_r+0x124>
 8006be4:	4652      	mov	r2, sl
 8006be6:	e749      	b.n	8006a7c <_realloc_r+0x114>
 8006be8:	4629      	mov	r1, r5
 8006bea:	4650      	mov	r0, sl
 8006bec:	461e      	mov	r6, r3
 8006bee:	465f      	mov	r7, fp
 8006bf0:	f7ff fb40 	bl	8006274 <memmove>
 8006bf4:	4655      	mov	r5, sl
 8006bf6:	e749      	b.n	8006a8c <_realloc_r+0x124>
 8006bf8:	4629      	mov	r1, r5
 8006bfa:	f7ff fb3b 	bl	8006274 <memmove>
 8006bfe:	e6ff      	b.n	8006a00 <_realloc_r+0x98>
 8006c00:	4427      	add	r7, r4
 8006c02:	eba9 0904 	sub.w	r9, r9, r4
 8006c06:	f049 0201 	orr.w	r2, r9, #1
 8006c0a:	609f      	str	r7, [r3, #8]
 8006c0c:	607a      	str	r2, [r7, #4]
 8006c0e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006c12:	f003 0301 	and.w	r3, r3, #1
 8006c16:	431c      	orrs	r4, r3
 8006c18:	4640      	mov	r0, r8
 8006c1a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006c1e:	f7ff fb93 	bl	8006348 <__malloc_unlock>
 8006c22:	46aa      	mov	sl, r5
 8006c24:	e744      	b.n	8006ab0 <_realloc_r+0x148>
 8006c26:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c2a:	68e9      	ldr	r1, [r5, #12]
 8006c2c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c30:	2a24      	cmp	r2, #36	; 0x24
 8006c32:	d010      	beq.n	8006c56 <_realloc_r+0x2ee>
 8006c34:	6929      	ldr	r1, [r5, #16]
 8006c36:	f10b 0218 	add.w	r2, fp, #24
 8006c3a:	3510      	adds	r5, #16
 8006c3c:	e71e      	b.n	8006a7c <_realloc_r+0x114>
 8006c3e:	68ab      	ldr	r3, [r5, #8]
 8006c40:	6083      	str	r3, [r0, #8]
 8006c42:	68eb      	ldr	r3, [r5, #12]
 8006c44:	60c3      	str	r3, [r0, #12]
 8006c46:	2a24      	cmp	r2, #36	; 0x24
 8006c48:	d010      	beq.n	8006c6c <_realloc_r+0x304>
 8006c4a:	f105 0210 	add.w	r2, r5, #16
 8006c4e:	f100 0310 	add.w	r3, r0, #16
 8006c52:	6929      	ldr	r1, [r5, #16]
 8006c54:	e6cf      	b.n	80069f6 <_realloc_r+0x8e>
 8006c56:	692a      	ldr	r2, [r5, #16]
 8006c58:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c5c:	696a      	ldr	r2, [r5, #20]
 8006c5e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c62:	69a9      	ldr	r1, [r5, #24]
 8006c64:	f10b 0220 	add.w	r2, fp, #32
 8006c68:	3518      	adds	r5, #24
 8006c6a:	e707      	b.n	8006a7c <_realloc_r+0x114>
 8006c6c:	692b      	ldr	r3, [r5, #16]
 8006c6e:	6103      	str	r3, [r0, #16]
 8006c70:	696b      	ldr	r3, [r5, #20]
 8006c72:	6143      	str	r3, [r0, #20]
 8006c74:	69a9      	ldr	r1, [r5, #24]
 8006c76:	f105 0218 	add.w	r2, r5, #24
 8006c7a:	f100 0318 	add.w	r3, r0, #24
 8006c7e:	e6ba      	b.n	80069f6 <_realloc_r+0x8e>
 8006c80:	4652      	mov	r2, sl
 8006c82:	e76e      	b.n	8006b62 <_realloc_r+0x1fa>
 8006c84:	4629      	mov	r1, r5
 8006c86:	4650      	mov	r0, sl
 8006c88:	9301      	str	r3, [sp, #4]
 8006c8a:	f7ff faf3 	bl	8006274 <memmove>
 8006c8e:	9b01      	ldr	r3, [sp, #4]
 8006c90:	e76c      	b.n	8006b6c <_realloc_r+0x204>
 8006c92:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c96:	68e9      	ldr	r1, [r5, #12]
 8006c98:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c9c:	2a24      	cmp	r2, #36	; 0x24
 8006c9e:	d004      	beq.n	8006caa <_realloc_r+0x342>
 8006ca0:	6929      	ldr	r1, [r5, #16]
 8006ca2:	f10b 0218 	add.w	r2, fp, #24
 8006ca6:	3510      	adds	r5, #16
 8006ca8:	e75b      	b.n	8006b62 <_realloc_r+0x1fa>
 8006caa:	692a      	ldr	r2, [r5, #16]
 8006cac:	f8cb 2018 	str.w	r2, [fp, #24]
 8006cb0:	696a      	ldr	r2, [r5, #20]
 8006cb2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006cb6:	69a9      	ldr	r1, [r5, #24]
 8006cb8:	f10b 0220 	add.w	r2, fp, #32
 8006cbc:	3518      	adds	r5, #24
 8006cbe:	e750      	b.n	8006b62 <_realloc_r+0x1fa>
 8006cc0:	2000044c 	.word	0x2000044c

08006cc4 <frexp>:
 8006cc4:	ec53 2b10 	vmov	r2, r3, d0
 8006cc8:	b570      	push	{r4, r5, r6, lr}
 8006cca:	4e16      	ldr	r6, [pc, #88]	; (8006d24 <frexp+0x60>)
 8006ccc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006cd0:	2500      	movs	r5, #0
 8006cd2:	42b1      	cmp	r1, r6
 8006cd4:	4604      	mov	r4, r0
 8006cd6:	6005      	str	r5, [r0, #0]
 8006cd8:	dc21      	bgt.n	8006d1e <frexp+0x5a>
 8006cda:	ee10 6a10 	vmov	r6, s0
 8006cde:	430e      	orrs	r6, r1
 8006ce0:	d01d      	beq.n	8006d1e <frexp+0x5a>
 8006ce2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006ce6:	4618      	mov	r0, r3
 8006ce8:	da0c      	bge.n	8006d04 <frexp+0x40>
 8006cea:	4619      	mov	r1, r3
 8006cec:	2200      	movs	r2, #0
 8006cee:	ee10 0a10 	vmov	r0, s0
 8006cf2:	4b0d      	ldr	r3, [pc, #52]	; (8006d28 <frexp+0x64>)
 8006cf4:	f7f9 fc40 	bl	8000578 <__aeabi_dmul>
 8006cf8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006cfc:	4602      	mov	r2, r0
 8006cfe:	4608      	mov	r0, r1
 8006d00:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006d04:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006d08:	1509      	asrs	r1, r1, #20
 8006d0a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006d0e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006d12:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006d16:	4429      	add	r1, r5
 8006d18:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006d1c:	6021      	str	r1, [r4, #0]
 8006d1e:	ec43 2b10 	vmov	d0, r2, r3
 8006d22:	bd70      	pop	{r4, r5, r6, pc}
 8006d24:	7fefffff 	.word	0x7fefffff
 8006d28:	43500000 	.word	0x43500000

08006d2c <_sbrk_r>:
 8006d2c:	b538      	push	{r3, r4, r5, lr}
 8006d2e:	4c07      	ldr	r4, [pc, #28]	; (8006d4c <_sbrk_r+0x20>)
 8006d30:	2300      	movs	r3, #0
 8006d32:	4605      	mov	r5, r0
 8006d34:	4608      	mov	r0, r1
 8006d36:	6023      	str	r3, [r4, #0]
 8006d38:	f7fb fbab 	bl	8002492 <_sbrk>
 8006d3c:	1c43      	adds	r3, r0, #1
 8006d3e:	d000      	beq.n	8006d42 <_sbrk_r+0x16>
 8006d40:	bd38      	pop	{r3, r4, r5, pc}
 8006d42:	6823      	ldr	r3, [r4, #0]
 8006d44:	2b00      	cmp	r3, #0
 8006d46:	d0fb      	beq.n	8006d40 <_sbrk_r+0x14>
 8006d48:	602b      	str	r3, [r5, #0]
 8006d4a:	bd38      	pop	{r3, r4, r5, pc}
 8006d4c:	20000b0c 	.word	0x20000b0c

08006d50 <__sread>:
 8006d50:	b510      	push	{r4, lr}
 8006d52:	460c      	mov	r4, r1
 8006d54:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d58:	f000 fabc 	bl	80072d4 <_read_r>
 8006d5c:	2800      	cmp	r0, #0
 8006d5e:	db03      	blt.n	8006d68 <__sread+0x18>
 8006d60:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006d62:	4403      	add	r3, r0
 8006d64:	6523      	str	r3, [r4, #80]	; 0x50
 8006d66:	bd10      	pop	{r4, pc}
 8006d68:	89a3      	ldrh	r3, [r4, #12]
 8006d6a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006d6e:	81a3      	strh	r3, [r4, #12]
 8006d70:	bd10      	pop	{r4, pc}
 8006d72:	bf00      	nop

08006d74 <__swrite>:
 8006d74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006d78:	4616      	mov	r6, r2
 8006d7a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006d7e:	461f      	mov	r7, r3
 8006d80:	05d3      	lsls	r3, r2, #23
 8006d82:	460c      	mov	r4, r1
 8006d84:	4605      	mov	r5, r0
 8006d86:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d8a:	d507      	bpl.n	8006d9c <__swrite+0x28>
 8006d8c:	2200      	movs	r2, #0
 8006d8e:	2302      	movs	r3, #2
 8006d90:	f000 fa74 	bl	800727c <_lseek_r>
 8006d94:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d98:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006d9c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006da0:	81a2      	strh	r2, [r4, #12]
 8006da2:	463b      	mov	r3, r7
 8006da4:	4632      	mov	r2, r6
 8006da6:	4628      	mov	r0, r5
 8006da8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006dac:	f000 b88c 	b.w	8006ec8 <_write_r>

08006db0 <__sseek>:
 8006db0:	b510      	push	{r4, lr}
 8006db2:	460c      	mov	r4, r1
 8006db4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006db8:	f000 fa60 	bl	800727c <_lseek_r>
 8006dbc:	89a3      	ldrh	r3, [r4, #12]
 8006dbe:	1c42      	adds	r2, r0, #1
 8006dc0:	bf0e      	itee	eq
 8006dc2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006dc6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006dca:	6520      	strne	r0, [r4, #80]	; 0x50
 8006dcc:	81a3      	strh	r3, [r4, #12]
 8006dce:	bd10      	pop	{r4, pc}

08006dd0 <__sclose>:
 8006dd0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006dd4:	f000 b922 	b.w	800701c <_close_r>

08006dd8 <strncpy>:
 8006dd8:	ea40 0301 	orr.w	r3, r0, r1
 8006ddc:	079b      	lsls	r3, r3, #30
 8006dde:	b470      	push	{r4, r5, r6}
 8006de0:	d12a      	bne.n	8006e38 <strncpy+0x60>
 8006de2:	2a03      	cmp	r2, #3
 8006de4:	d928      	bls.n	8006e38 <strncpy+0x60>
 8006de6:	460c      	mov	r4, r1
 8006de8:	4603      	mov	r3, r0
 8006dea:	4621      	mov	r1, r4
 8006dec:	f854 6b04 	ldr.w	r6, [r4], #4
 8006df0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006df4:	ea25 0506 	bic.w	r5, r5, r6
 8006df8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006dfc:	d106      	bne.n	8006e0c <strncpy+0x34>
 8006dfe:	3a04      	subs	r2, #4
 8006e00:	2a03      	cmp	r2, #3
 8006e02:	f843 6b04 	str.w	r6, [r3], #4
 8006e06:	4621      	mov	r1, r4
 8006e08:	d8ef      	bhi.n	8006dea <strncpy+0x12>
 8006e0a:	b19a      	cbz	r2, 8006e34 <strncpy+0x5c>
 8006e0c:	780c      	ldrb	r4, [r1, #0]
 8006e0e:	701c      	strb	r4, [r3, #0]
 8006e10:	3a01      	subs	r2, #1
 8006e12:	3301      	adds	r3, #1
 8006e14:	b13c      	cbz	r4, 8006e26 <strncpy+0x4e>
 8006e16:	b16a      	cbz	r2, 8006e34 <strncpy+0x5c>
 8006e18:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006e1c:	f803 4b01 	strb.w	r4, [r3], #1
 8006e20:	3a01      	subs	r2, #1
 8006e22:	2c00      	cmp	r4, #0
 8006e24:	d1f7      	bne.n	8006e16 <strncpy+0x3e>
 8006e26:	b12a      	cbz	r2, 8006e34 <strncpy+0x5c>
 8006e28:	441a      	add	r2, r3
 8006e2a:	2100      	movs	r1, #0
 8006e2c:	f803 1b01 	strb.w	r1, [r3], #1
 8006e30:	4293      	cmp	r3, r2
 8006e32:	d1fb      	bne.n	8006e2c <strncpy+0x54>
 8006e34:	bc70      	pop	{r4, r5, r6}
 8006e36:	4770      	bx	lr
 8006e38:	4603      	mov	r3, r0
 8006e3a:	e7e6      	b.n	8006e0a <strncpy+0x32>

08006e3c <__sprint_r.part.0>:
 8006e3c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e40:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e42:	049c      	lsls	r4, r3, #18
 8006e44:	4692      	mov	sl, r2
 8006e46:	d52d      	bpl.n	8006ea4 <__sprint_r.part.0+0x68>
 8006e48:	6893      	ldr	r3, [r2, #8]
 8006e4a:	6812      	ldr	r2, [r2, #0]
 8006e4c:	b343      	cbz	r3, 8006ea0 <__sprint_r.part.0+0x64>
 8006e4e:	460e      	mov	r6, r1
 8006e50:	4607      	mov	r7, r0
 8006e52:	f102 0908 	add.w	r9, r2, #8
 8006e56:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006e5a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006e5e:	d015      	beq.n	8006e8c <__sprint_r.part.0+0x50>
 8006e60:	3d04      	subs	r5, #4
 8006e62:	2400      	movs	r4, #0
 8006e64:	e001      	b.n	8006e6a <__sprint_r.part.0+0x2e>
 8006e66:	45a0      	cmp	r8, r4
 8006e68:	d00e      	beq.n	8006e88 <__sprint_r.part.0+0x4c>
 8006e6a:	4632      	mov	r2, r6
 8006e6c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006e70:	4638      	mov	r0, r7
 8006e72:	f000 f99d 	bl	80071b0 <_fputwc_r>
 8006e76:	1c43      	adds	r3, r0, #1
 8006e78:	f104 0401 	add.w	r4, r4, #1
 8006e7c:	d1f3      	bne.n	8006e66 <__sprint_r.part.0+0x2a>
 8006e7e:	2300      	movs	r3, #0
 8006e80:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e84:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e88:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006e8c:	f02b 0b03 	bic.w	fp, fp, #3
 8006e90:	eba3 030b 	sub.w	r3, r3, fp
 8006e94:	f8ca 3008 	str.w	r3, [sl, #8]
 8006e98:	f109 0908 	add.w	r9, r9, #8
 8006e9c:	2b00      	cmp	r3, #0
 8006e9e:	d1da      	bne.n	8006e56 <__sprint_r.part.0+0x1a>
 8006ea0:	2000      	movs	r0, #0
 8006ea2:	e7ec      	b.n	8006e7e <__sprint_r.part.0+0x42>
 8006ea4:	f7fe fd0c 	bl	80058c0 <__sfvwrite_r>
 8006ea8:	2300      	movs	r3, #0
 8006eaa:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006eae:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006eb2:	bf00      	nop

08006eb4 <__sprint_r>:
 8006eb4:	6893      	ldr	r3, [r2, #8]
 8006eb6:	b10b      	cbz	r3, 8006ebc <__sprint_r+0x8>
 8006eb8:	f7ff bfc0 	b.w	8006e3c <__sprint_r.part.0>
 8006ebc:	b410      	push	{r4}
 8006ebe:	4618      	mov	r0, r3
 8006ec0:	6053      	str	r3, [r2, #4]
 8006ec2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006ec6:	4770      	bx	lr

08006ec8 <_write_r>:
 8006ec8:	b570      	push	{r4, r5, r6, lr}
 8006eca:	460d      	mov	r5, r1
 8006ecc:	4c08      	ldr	r4, [pc, #32]	; (8006ef0 <_write_r+0x28>)
 8006ece:	4611      	mov	r1, r2
 8006ed0:	4606      	mov	r6, r0
 8006ed2:	461a      	mov	r2, r3
 8006ed4:	4628      	mov	r0, r5
 8006ed6:	2300      	movs	r3, #0
 8006ed8:	6023      	str	r3, [r4, #0]
 8006eda:	f7fb fac7 	bl	800246c <_write>
 8006ede:	1c43      	adds	r3, r0, #1
 8006ee0:	d000      	beq.n	8006ee4 <_write_r+0x1c>
 8006ee2:	bd70      	pop	{r4, r5, r6, pc}
 8006ee4:	6823      	ldr	r3, [r4, #0]
 8006ee6:	2b00      	cmp	r3, #0
 8006ee8:	d0fb      	beq.n	8006ee2 <_write_r+0x1a>
 8006eea:	6033      	str	r3, [r6, #0]
 8006eec:	bd70      	pop	{r4, r5, r6, pc}
 8006eee:	bf00      	nop
 8006ef0:	20000b0c 	.word	0x20000b0c

08006ef4 <__register_exitproc>:
 8006ef4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ef8:	4d2b      	ldr	r5, [pc, #172]	; (8006fa8 <__register_exitproc+0xb4>)
 8006efa:	4606      	mov	r6, r0
 8006efc:	6828      	ldr	r0, [r5, #0]
 8006efe:	4698      	mov	r8, r3
 8006f00:	460f      	mov	r7, r1
 8006f02:	4691      	mov	r9, r2
 8006f04:	f7fe fe96 	bl	8005c34 <__retarget_lock_acquire_recursive>
 8006f08:	4b28      	ldr	r3, [pc, #160]	; (8006fac <__register_exitproc+0xb8>)
 8006f0a:	681c      	ldr	r4, [r3, #0]
 8006f0c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006f10:	2b00      	cmp	r3, #0
 8006f12:	d03d      	beq.n	8006f90 <__register_exitproc+0x9c>
 8006f14:	685a      	ldr	r2, [r3, #4]
 8006f16:	2a1f      	cmp	r2, #31
 8006f18:	dc0d      	bgt.n	8006f36 <__register_exitproc+0x42>
 8006f1a:	f102 0c01 	add.w	ip, r2, #1
 8006f1e:	bb16      	cbnz	r6, 8006f66 <__register_exitproc+0x72>
 8006f20:	3202      	adds	r2, #2
 8006f22:	f8c3 c004 	str.w	ip, [r3, #4]
 8006f26:	6828      	ldr	r0, [r5, #0]
 8006f28:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006f2c:	f7fe fe84 	bl	8005c38 <__retarget_lock_release_recursive>
 8006f30:	2000      	movs	r0, #0
 8006f32:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f36:	4b1e      	ldr	r3, [pc, #120]	; (8006fb0 <__register_exitproc+0xbc>)
 8006f38:	b37b      	cbz	r3, 8006f9a <__register_exitproc+0xa6>
 8006f3a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f3e:	f3af 8000 	nop.w
 8006f42:	4603      	mov	r3, r0
 8006f44:	b348      	cbz	r0, 8006f9a <__register_exitproc+0xa6>
 8006f46:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f4a:	2100      	movs	r1, #0
 8006f4c:	e9c0 2100 	strd	r2, r1, [r0]
 8006f50:	f04f 0c01 	mov.w	ip, #1
 8006f54:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006f58:	460a      	mov	r2, r1
 8006f5a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006f5e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006f62:	2e00      	cmp	r6, #0
 8006f64:	d0dc      	beq.n	8006f20 <__register_exitproc+0x2c>
 8006f66:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006f6a:	2401      	movs	r4, #1
 8006f6c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006f70:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006f74:	4094      	lsls	r4, r2
 8006f76:	4320      	orrs	r0, r4
 8006f78:	2e02      	cmp	r6, #2
 8006f7a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006f7e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006f82:	d1cd      	bne.n	8006f20 <__register_exitproc+0x2c>
 8006f84:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006f88:	430c      	orrs	r4, r1
 8006f8a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006f8e:	e7c7      	b.n	8006f20 <__register_exitproc+0x2c>
 8006f90:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006f94:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006f98:	e7bc      	b.n	8006f14 <__register_exitproc+0x20>
 8006f9a:	6828      	ldr	r0, [r5, #0]
 8006f9c:	f7fe fe4c 	bl	8005c38 <__retarget_lock_release_recursive>
 8006fa0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fa4:	e7c5      	b.n	8006f32 <__register_exitproc+0x3e>
 8006fa6:	bf00      	nop
 8006fa8:	20000448 	.word	0x20000448
 8006fac:	08007fe0 	.word	0x08007fe0
 8006fb0:	00000000 	.word	0x00000000

08006fb4 <_calloc_r>:
 8006fb4:	b510      	push	{r4, lr}
 8006fb6:	fb02 f101 	mul.w	r1, r2, r1
 8006fba:	f7fe feb7 	bl	8005d2c <_malloc_r>
 8006fbe:	4604      	mov	r4, r0
 8006fc0:	b1d8      	cbz	r0, 8006ffa <_calloc_r+0x46>
 8006fc2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006fc6:	f022 0203 	bic.w	r2, r2, #3
 8006fca:	3a04      	subs	r2, #4
 8006fcc:	2a24      	cmp	r2, #36	; 0x24
 8006fce:	d81d      	bhi.n	800700c <_calloc_r+0x58>
 8006fd0:	2a13      	cmp	r2, #19
 8006fd2:	d914      	bls.n	8006ffe <_calloc_r+0x4a>
 8006fd4:	2300      	movs	r3, #0
 8006fd6:	2a1b      	cmp	r2, #27
 8006fd8:	e9c0 3300 	strd	r3, r3, [r0]
 8006fdc:	d91b      	bls.n	8007016 <_calloc_r+0x62>
 8006fde:	2a24      	cmp	r2, #36	; 0x24
 8006fe0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006fe4:	bf0a      	itet	eq
 8006fe6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006fea:	f100 0210 	addne.w	r2, r0, #16
 8006fee:	f100 0218 	addeq.w	r2, r0, #24
 8006ff2:	2300      	movs	r3, #0
 8006ff4:	e9c2 3300 	strd	r3, r3, [r2]
 8006ff8:	6093      	str	r3, [r2, #8]
 8006ffa:	4620      	mov	r0, r4
 8006ffc:	bd10      	pop	{r4, pc}
 8006ffe:	4602      	mov	r2, r0
 8007000:	2300      	movs	r3, #0
 8007002:	e9c2 3300 	strd	r3, r3, [r2]
 8007006:	6093      	str	r3, [r2, #8]
 8007008:	4620      	mov	r0, r4
 800700a:	bd10      	pop	{r4, pc}
 800700c:	2100      	movs	r1, #0
 800700e:	f7fb fb6d 	bl	80026ec <memset>
 8007012:	4620      	mov	r0, r4
 8007014:	bd10      	pop	{r4, pc}
 8007016:	f100 0208 	add.w	r2, r0, #8
 800701a:	e7f1      	b.n	8007000 <_calloc_r+0x4c>

0800701c <_close_r>:
 800701c:	b538      	push	{r3, r4, r5, lr}
 800701e:	4c07      	ldr	r4, [pc, #28]	; (800703c <_close_r+0x20>)
 8007020:	2300      	movs	r3, #0
 8007022:	4605      	mov	r5, r0
 8007024:	4608      	mov	r0, r1
 8007026:	6023      	str	r3, [r4, #0]
 8007028:	f7fb fa4f 	bl	80024ca <_close>
 800702c:	1c43      	adds	r3, r0, #1
 800702e:	d000      	beq.n	8007032 <_close_r+0x16>
 8007030:	bd38      	pop	{r3, r4, r5, pc}
 8007032:	6823      	ldr	r3, [r4, #0]
 8007034:	2b00      	cmp	r3, #0
 8007036:	d0fb      	beq.n	8007030 <_close_r+0x14>
 8007038:	602b      	str	r3, [r5, #0]
 800703a:	bd38      	pop	{r3, r4, r5, pc}
 800703c:	20000b0c 	.word	0x20000b0c

08007040 <_fclose_r>:
 8007040:	b570      	push	{r4, r5, r6, lr}
 8007042:	2900      	cmp	r1, #0
 8007044:	d048      	beq.n	80070d8 <_fclose_r+0x98>
 8007046:	4605      	mov	r5, r0
 8007048:	460c      	mov	r4, r1
 800704a:	b110      	cbz	r0, 8007052 <_fclose_r+0x12>
 800704c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800704e:	2b00      	cmp	r3, #0
 8007050:	d048      	beq.n	80070e4 <_fclose_r+0xa4>
 8007052:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007054:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007058:	07d0      	lsls	r0, r2, #31
 800705a:	d440      	bmi.n	80070de <_fclose_r+0x9e>
 800705c:	0599      	lsls	r1, r3, #22
 800705e:	d530      	bpl.n	80070c2 <_fclose_r+0x82>
 8007060:	4621      	mov	r1, r4
 8007062:	4628      	mov	r0, r5
 8007064:	f7fe f990 	bl	8005388 <__sflush_r>
 8007068:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800706a:	4606      	mov	r6, r0
 800706c:	b133      	cbz	r3, 800707c <_fclose_r+0x3c>
 800706e:	69e1      	ldr	r1, [r4, #28]
 8007070:	4628      	mov	r0, r5
 8007072:	4798      	blx	r3
 8007074:	2800      	cmp	r0, #0
 8007076:	bfb8      	it	lt
 8007078:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800707c:	89a3      	ldrh	r3, [r4, #12]
 800707e:	061a      	lsls	r2, r3, #24
 8007080:	d43c      	bmi.n	80070fc <_fclose_r+0xbc>
 8007082:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007084:	b141      	cbz	r1, 8007098 <_fclose_r+0x58>
 8007086:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800708a:	4299      	cmp	r1, r3
 800708c:	d002      	beq.n	8007094 <_fclose_r+0x54>
 800708e:	4628      	mov	r0, r5
 8007090:	f7fe fb22 	bl	80056d8 <_free_r>
 8007094:	2300      	movs	r3, #0
 8007096:	6323      	str	r3, [r4, #48]	; 0x30
 8007098:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800709a:	b121      	cbz	r1, 80070a6 <_fclose_r+0x66>
 800709c:	4628      	mov	r0, r5
 800709e:	f7fe fb1b 	bl	80056d8 <_free_r>
 80070a2:	2300      	movs	r3, #0
 80070a4:	6463      	str	r3, [r4, #68]	; 0x44
 80070a6:	f7fe faa1 	bl	80055ec <__sfp_lock_acquire>
 80070aa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070ac:	2200      	movs	r2, #0
 80070ae:	07db      	lsls	r3, r3, #31
 80070b0:	81a2      	strh	r2, [r4, #12]
 80070b2:	d51f      	bpl.n	80070f4 <_fclose_r+0xb4>
 80070b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070b6:	f7fe fdbb 	bl	8005c30 <__retarget_lock_close_recursive>
 80070ba:	f7fe fa9d 	bl	80055f8 <__sfp_lock_release>
 80070be:	4630      	mov	r0, r6
 80070c0:	bd70      	pop	{r4, r5, r6, pc}
 80070c2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070c4:	f7fe fdb6 	bl	8005c34 <__retarget_lock_acquire_recursive>
 80070c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070cc:	2b00      	cmp	r3, #0
 80070ce:	d1c7      	bne.n	8007060 <_fclose_r+0x20>
 80070d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80070d2:	f016 0601 	ands.w	r6, r6, #1
 80070d6:	d016      	beq.n	8007106 <_fclose_r+0xc6>
 80070d8:	2600      	movs	r6, #0
 80070da:	4630      	mov	r0, r6
 80070dc:	bd70      	pop	{r4, r5, r6, pc}
 80070de:	2b00      	cmp	r3, #0
 80070e0:	d0fa      	beq.n	80070d8 <_fclose_r+0x98>
 80070e2:	e7bd      	b.n	8007060 <_fclose_r+0x20>
 80070e4:	f7fe fa56 	bl	8005594 <__sinit>
 80070e8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070ee:	07d0      	lsls	r0, r2, #31
 80070f0:	d4f5      	bmi.n	80070de <_fclose_r+0x9e>
 80070f2:	e7b3      	b.n	800705c <_fclose_r+0x1c>
 80070f4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070f6:	f7fe fd9f 	bl	8005c38 <__retarget_lock_release_recursive>
 80070fa:	e7db      	b.n	80070b4 <_fclose_r+0x74>
 80070fc:	6921      	ldr	r1, [r4, #16]
 80070fe:	4628      	mov	r0, r5
 8007100:	f7fe faea 	bl	80056d8 <_free_r>
 8007104:	e7bd      	b.n	8007082 <_fclose_r+0x42>
 8007106:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007108:	f7fe fd96 	bl	8005c38 <__retarget_lock_release_recursive>
 800710c:	4630      	mov	r0, r6
 800710e:	bd70      	pop	{r4, r5, r6, pc}

08007110 <__fputwc>:
 8007110:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007114:	b082      	sub	sp, #8
 8007116:	4681      	mov	r9, r0
 8007118:	4688      	mov	r8, r1
 800711a:	4614      	mov	r4, r2
 800711c:	f000 f8a0 	bl	8007260 <__locale_mb_cur_max>
 8007120:	2801      	cmp	r0, #1
 8007122:	d103      	bne.n	800712c <__fputwc+0x1c>
 8007124:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007128:	2bfe      	cmp	r3, #254	; 0xfe
 800712a:	d933      	bls.n	8007194 <__fputwc+0x84>
 800712c:	4642      	mov	r2, r8
 800712e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007132:	a901      	add	r1, sp, #4
 8007134:	4648      	mov	r0, r9
 8007136:	f000 f93b 	bl	80073b0 <_wcrtomb_r>
 800713a:	1c42      	adds	r2, r0, #1
 800713c:	4606      	mov	r6, r0
 800713e:	d02f      	beq.n	80071a0 <__fputwc+0x90>
 8007140:	b320      	cbz	r0, 800718c <__fputwc+0x7c>
 8007142:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007146:	2500      	movs	r5, #0
 8007148:	f10d 0a04 	add.w	sl, sp, #4
 800714c:	e009      	b.n	8007162 <__fputwc+0x52>
 800714e:	6823      	ldr	r3, [r4, #0]
 8007150:	1c5a      	adds	r2, r3, #1
 8007152:	6022      	str	r2, [r4, #0]
 8007154:	f883 c000 	strb.w	ip, [r3]
 8007158:	3501      	adds	r5, #1
 800715a:	42b5      	cmp	r5, r6
 800715c:	d216      	bcs.n	800718c <__fputwc+0x7c>
 800715e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007162:	68a3      	ldr	r3, [r4, #8]
 8007164:	3b01      	subs	r3, #1
 8007166:	2b00      	cmp	r3, #0
 8007168:	60a3      	str	r3, [r4, #8]
 800716a:	daf0      	bge.n	800714e <__fputwc+0x3e>
 800716c:	69a7      	ldr	r7, [r4, #24]
 800716e:	42bb      	cmp	r3, r7
 8007170:	4661      	mov	r1, ip
 8007172:	4622      	mov	r2, r4
 8007174:	4648      	mov	r0, r9
 8007176:	db02      	blt.n	800717e <__fputwc+0x6e>
 8007178:	f1bc 0f0a 	cmp.w	ip, #10
 800717c:	d1e7      	bne.n	800714e <__fputwc+0x3e>
 800717e:	f000 f8bf 	bl	8007300 <__swbuf_r>
 8007182:	1c43      	adds	r3, r0, #1
 8007184:	d1e8      	bne.n	8007158 <__fputwc+0x48>
 8007186:	b002      	add	sp, #8
 8007188:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800718c:	4640      	mov	r0, r8
 800718e:	b002      	add	sp, #8
 8007190:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007194:	fa5f fc88 	uxtb.w	ip, r8
 8007198:	4606      	mov	r6, r0
 800719a:	f88d c004 	strb.w	ip, [sp, #4]
 800719e:	e7d2      	b.n	8007146 <__fputwc+0x36>
 80071a0:	89a3      	ldrh	r3, [r4, #12]
 80071a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80071a6:	81a3      	strh	r3, [r4, #12]
 80071a8:	b002      	add	sp, #8
 80071aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071ae:	bf00      	nop

080071b0 <_fputwc_r>:
 80071b0:	b530      	push	{r4, r5, lr}
 80071b2:	4605      	mov	r5, r0
 80071b4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80071b6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80071ba:	07c0      	lsls	r0, r0, #31
 80071bc:	4614      	mov	r4, r2
 80071be:	b083      	sub	sp, #12
 80071c0:	b29a      	uxth	r2, r3
 80071c2:	d401      	bmi.n	80071c8 <_fputwc_r+0x18>
 80071c4:	0590      	lsls	r0, r2, #22
 80071c6:	d51c      	bpl.n	8007202 <_fputwc_r+0x52>
 80071c8:	0490      	lsls	r0, r2, #18
 80071ca:	d406      	bmi.n	80071da <_fputwc_r+0x2a>
 80071cc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80071ce:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80071d2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80071d6:	81a3      	strh	r3, [r4, #12]
 80071d8:	6662      	str	r2, [r4, #100]	; 0x64
 80071da:	4628      	mov	r0, r5
 80071dc:	4622      	mov	r2, r4
 80071de:	f7ff ff97 	bl	8007110 <__fputwc>
 80071e2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80071e4:	07da      	lsls	r2, r3, #31
 80071e6:	4605      	mov	r5, r0
 80071e8:	d402      	bmi.n	80071f0 <_fputwc_r+0x40>
 80071ea:	89a3      	ldrh	r3, [r4, #12]
 80071ec:	059b      	lsls	r3, r3, #22
 80071ee:	d502      	bpl.n	80071f6 <_fputwc_r+0x46>
 80071f0:	4628      	mov	r0, r5
 80071f2:	b003      	add	sp, #12
 80071f4:	bd30      	pop	{r4, r5, pc}
 80071f6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071f8:	f7fe fd1e 	bl	8005c38 <__retarget_lock_release_recursive>
 80071fc:	4628      	mov	r0, r5
 80071fe:	b003      	add	sp, #12
 8007200:	bd30      	pop	{r4, r5, pc}
 8007202:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007204:	9101      	str	r1, [sp, #4]
 8007206:	f7fe fd15 	bl	8005c34 <__retarget_lock_acquire_recursive>
 800720a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800720e:	9901      	ldr	r1, [sp, #4]
 8007210:	b29a      	uxth	r2, r3
 8007212:	e7d9      	b.n	80071c8 <_fputwc_r+0x18>

08007214 <_fstat_r>:
 8007214:	b538      	push	{r3, r4, r5, lr}
 8007216:	460b      	mov	r3, r1
 8007218:	4c07      	ldr	r4, [pc, #28]	; (8007238 <_fstat_r+0x24>)
 800721a:	4605      	mov	r5, r0
 800721c:	4611      	mov	r1, r2
 800721e:	4618      	mov	r0, r3
 8007220:	2300      	movs	r3, #0
 8007222:	6023      	str	r3, [r4, #0]
 8007224:	f7fb f954 	bl	80024d0 <_fstat>
 8007228:	1c43      	adds	r3, r0, #1
 800722a:	d000      	beq.n	800722e <_fstat_r+0x1a>
 800722c:	bd38      	pop	{r3, r4, r5, pc}
 800722e:	6823      	ldr	r3, [r4, #0]
 8007230:	2b00      	cmp	r3, #0
 8007232:	d0fb      	beq.n	800722c <_fstat_r+0x18>
 8007234:	602b      	str	r3, [r5, #0]
 8007236:	bd38      	pop	{r3, r4, r5, pc}
 8007238:	20000b0c 	.word	0x20000b0c

0800723c <_isatty_r>:
 800723c:	b538      	push	{r3, r4, r5, lr}
 800723e:	4c07      	ldr	r4, [pc, #28]	; (800725c <_isatty_r+0x20>)
 8007240:	2300      	movs	r3, #0
 8007242:	4605      	mov	r5, r0
 8007244:	4608      	mov	r0, r1
 8007246:	6023      	str	r3, [r4, #0]
 8007248:	f7fb f947 	bl	80024da <_isatty>
 800724c:	1c43      	adds	r3, r0, #1
 800724e:	d000      	beq.n	8007252 <_isatty_r+0x16>
 8007250:	bd38      	pop	{r3, r4, r5, pc}
 8007252:	6823      	ldr	r3, [r4, #0]
 8007254:	2b00      	cmp	r3, #0
 8007256:	d0fb      	beq.n	8007250 <_isatty_r+0x14>
 8007258:	602b      	str	r3, [r5, #0]
 800725a:	bd38      	pop	{r3, r4, r5, pc}
 800725c:	20000b0c 	.word	0x20000b0c

08007260 <__locale_mb_cur_max>:
 8007260:	4b04      	ldr	r3, [pc, #16]	; (8007274 <__locale_mb_cur_max+0x14>)
 8007262:	4a05      	ldr	r2, [pc, #20]	; (8007278 <__locale_mb_cur_max+0x18>)
 8007264:	681b      	ldr	r3, [r3, #0]
 8007266:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007268:	2b00      	cmp	r3, #0
 800726a:	bf08      	it	eq
 800726c:	4613      	moveq	r3, r2
 800726e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007272:	4770      	bx	lr
 8007274:	20000018 	.word	0x20000018
 8007278:	2000085c 	.word	0x2000085c

0800727c <_lseek_r>:
 800727c:	b570      	push	{r4, r5, r6, lr}
 800727e:	460d      	mov	r5, r1
 8007280:	4c08      	ldr	r4, [pc, #32]	; (80072a4 <_lseek_r+0x28>)
 8007282:	4611      	mov	r1, r2
 8007284:	4606      	mov	r6, r0
 8007286:	461a      	mov	r2, r3
 8007288:	4628      	mov	r0, r5
 800728a:	2300      	movs	r3, #0
 800728c:	6023      	str	r3, [r4, #0]
 800728e:	f7fb f926 	bl	80024de <_lseek>
 8007292:	1c43      	adds	r3, r0, #1
 8007294:	d000      	beq.n	8007298 <_lseek_r+0x1c>
 8007296:	bd70      	pop	{r4, r5, r6, pc}
 8007298:	6823      	ldr	r3, [r4, #0]
 800729a:	2b00      	cmp	r3, #0
 800729c:	d0fb      	beq.n	8007296 <_lseek_r+0x1a>
 800729e:	6033      	str	r3, [r6, #0]
 80072a0:	bd70      	pop	{r4, r5, r6, pc}
 80072a2:	bf00      	nop
 80072a4:	20000b0c 	.word	0x20000b0c

080072a8 <__ascii_mbtowc>:
 80072a8:	b082      	sub	sp, #8
 80072aa:	b149      	cbz	r1, 80072c0 <__ascii_mbtowc+0x18>
 80072ac:	b15a      	cbz	r2, 80072c6 <__ascii_mbtowc+0x1e>
 80072ae:	b16b      	cbz	r3, 80072cc <__ascii_mbtowc+0x24>
 80072b0:	7813      	ldrb	r3, [r2, #0]
 80072b2:	600b      	str	r3, [r1, #0]
 80072b4:	7812      	ldrb	r2, [r2, #0]
 80072b6:	1c10      	adds	r0, r2, #0
 80072b8:	bf18      	it	ne
 80072ba:	2001      	movne	r0, #1
 80072bc:	b002      	add	sp, #8
 80072be:	4770      	bx	lr
 80072c0:	a901      	add	r1, sp, #4
 80072c2:	2a00      	cmp	r2, #0
 80072c4:	d1f3      	bne.n	80072ae <__ascii_mbtowc+0x6>
 80072c6:	4610      	mov	r0, r2
 80072c8:	b002      	add	sp, #8
 80072ca:	4770      	bx	lr
 80072cc:	f06f 0001 	mvn.w	r0, #1
 80072d0:	e7f4      	b.n	80072bc <__ascii_mbtowc+0x14>
 80072d2:	bf00      	nop

080072d4 <_read_r>:
 80072d4:	b570      	push	{r4, r5, r6, lr}
 80072d6:	460d      	mov	r5, r1
 80072d8:	4c08      	ldr	r4, [pc, #32]	; (80072fc <_read_r+0x28>)
 80072da:	4611      	mov	r1, r2
 80072dc:	4606      	mov	r6, r0
 80072de:	461a      	mov	r2, r3
 80072e0:	4628      	mov	r0, r5
 80072e2:	2300      	movs	r3, #0
 80072e4:	6023      	str	r3, [r4, #0]
 80072e6:	f7fb f8ae 	bl	8002446 <_read>
 80072ea:	1c43      	adds	r3, r0, #1
 80072ec:	d000      	beq.n	80072f0 <_read_r+0x1c>
 80072ee:	bd70      	pop	{r4, r5, r6, pc}
 80072f0:	6823      	ldr	r3, [r4, #0]
 80072f2:	2b00      	cmp	r3, #0
 80072f4:	d0fb      	beq.n	80072ee <_read_r+0x1a>
 80072f6:	6033      	str	r3, [r6, #0]
 80072f8:	bd70      	pop	{r4, r5, r6, pc}
 80072fa:	bf00      	nop
 80072fc:	20000b0c 	.word	0x20000b0c

08007300 <__swbuf_r>:
 8007300:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007302:	460d      	mov	r5, r1
 8007304:	4614      	mov	r4, r2
 8007306:	4606      	mov	r6, r0
 8007308:	b110      	cbz	r0, 8007310 <__swbuf_r+0x10>
 800730a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800730c:	2b00      	cmp	r3, #0
 800730e:	d043      	beq.n	8007398 <__swbuf_r+0x98>
 8007310:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007314:	69a3      	ldr	r3, [r4, #24]
 8007316:	60a3      	str	r3, [r4, #8]
 8007318:	b291      	uxth	r1, r2
 800731a:	0708      	lsls	r0, r1, #28
 800731c:	d51b      	bpl.n	8007356 <__swbuf_r+0x56>
 800731e:	6923      	ldr	r3, [r4, #16]
 8007320:	b1cb      	cbz	r3, 8007356 <__swbuf_r+0x56>
 8007322:	b2ed      	uxtb	r5, r5
 8007324:	0489      	lsls	r1, r1, #18
 8007326:	462f      	mov	r7, r5
 8007328:	d522      	bpl.n	8007370 <__swbuf_r+0x70>
 800732a:	6822      	ldr	r2, [r4, #0]
 800732c:	6961      	ldr	r1, [r4, #20]
 800732e:	1ad3      	subs	r3, r2, r3
 8007330:	4299      	cmp	r1, r3
 8007332:	dd29      	ble.n	8007388 <__swbuf_r+0x88>
 8007334:	3301      	adds	r3, #1
 8007336:	68a1      	ldr	r1, [r4, #8]
 8007338:	1c50      	adds	r0, r2, #1
 800733a:	3901      	subs	r1, #1
 800733c:	60a1      	str	r1, [r4, #8]
 800733e:	6020      	str	r0, [r4, #0]
 8007340:	7015      	strb	r5, [r2, #0]
 8007342:	6962      	ldr	r2, [r4, #20]
 8007344:	429a      	cmp	r2, r3
 8007346:	d02a      	beq.n	800739e <__swbuf_r+0x9e>
 8007348:	89a3      	ldrh	r3, [r4, #12]
 800734a:	07db      	lsls	r3, r3, #31
 800734c:	d501      	bpl.n	8007352 <__swbuf_r+0x52>
 800734e:	2d0a      	cmp	r5, #10
 8007350:	d025      	beq.n	800739e <__swbuf_r+0x9e>
 8007352:	4638      	mov	r0, r7
 8007354:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007356:	4621      	mov	r1, r4
 8007358:	4630      	mov	r0, r6
 800735a:	f7fc fffd 	bl	8004358 <__swsetup_r>
 800735e:	bb20      	cbnz	r0, 80073aa <__swbuf_r+0xaa>
 8007360:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007364:	6923      	ldr	r3, [r4, #16]
 8007366:	b291      	uxth	r1, r2
 8007368:	b2ed      	uxtb	r5, r5
 800736a:	0489      	lsls	r1, r1, #18
 800736c:	462f      	mov	r7, r5
 800736e:	d4dc      	bmi.n	800732a <__swbuf_r+0x2a>
 8007370:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007372:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007376:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800737a:	81a2      	strh	r2, [r4, #12]
 800737c:	6822      	ldr	r2, [r4, #0]
 800737e:	6661      	str	r1, [r4, #100]	; 0x64
 8007380:	6961      	ldr	r1, [r4, #20]
 8007382:	1ad3      	subs	r3, r2, r3
 8007384:	4299      	cmp	r1, r3
 8007386:	dcd5      	bgt.n	8007334 <__swbuf_r+0x34>
 8007388:	4621      	mov	r1, r4
 800738a:	4630      	mov	r0, r6
 800738c:	f7fe f8a6 	bl	80054dc <_fflush_r>
 8007390:	b958      	cbnz	r0, 80073aa <__swbuf_r+0xaa>
 8007392:	6822      	ldr	r2, [r4, #0]
 8007394:	2301      	movs	r3, #1
 8007396:	e7ce      	b.n	8007336 <__swbuf_r+0x36>
 8007398:	f7fe f8fc 	bl	8005594 <__sinit>
 800739c:	e7b8      	b.n	8007310 <__swbuf_r+0x10>
 800739e:	4621      	mov	r1, r4
 80073a0:	4630      	mov	r0, r6
 80073a2:	f7fe f89b 	bl	80054dc <_fflush_r>
 80073a6:	2800      	cmp	r0, #0
 80073a8:	d0d3      	beq.n	8007352 <__swbuf_r+0x52>
 80073aa:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80073ae:	e7d0      	b.n	8007352 <__swbuf_r+0x52>

080073b0 <_wcrtomb_r>:
 80073b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80073b2:	4c11      	ldr	r4, [pc, #68]	; (80073f8 <_wcrtomb_r+0x48>)
 80073b4:	6824      	ldr	r4, [r4, #0]
 80073b6:	b085      	sub	sp, #20
 80073b8:	4606      	mov	r6, r0
 80073ba:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80073bc:	461f      	mov	r7, r3
 80073be:	b151      	cbz	r1, 80073d6 <_wcrtomb_r+0x26>
 80073c0:	4d0e      	ldr	r5, [pc, #56]	; (80073fc <_wcrtomb_r+0x4c>)
 80073c2:	2c00      	cmp	r4, #0
 80073c4:	bf08      	it	eq
 80073c6:	462c      	moveq	r4, r5
 80073c8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80073cc:	47a0      	blx	r4
 80073ce:	1c43      	adds	r3, r0, #1
 80073d0:	d00c      	beq.n	80073ec <_wcrtomb_r+0x3c>
 80073d2:	b005      	add	sp, #20
 80073d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073d6:	4a09      	ldr	r2, [pc, #36]	; (80073fc <_wcrtomb_r+0x4c>)
 80073d8:	2c00      	cmp	r4, #0
 80073da:	bf08      	it	eq
 80073dc:	4614      	moveq	r4, r2
 80073de:	460a      	mov	r2, r1
 80073e0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80073e4:	a901      	add	r1, sp, #4
 80073e6:	47a0      	blx	r4
 80073e8:	1c43      	adds	r3, r0, #1
 80073ea:	d1f2      	bne.n	80073d2 <_wcrtomb_r+0x22>
 80073ec:	2200      	movs	r2, #0
 80073ee:	238a      	movs	r3, #138	; 0x8a
 80073f0:	603a      	str	r2, [r7, #0]
 80073f2:	6033      	str	r3, [r6, #0]
 80073f4:	b005      	add	sp, #20
 80073f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073f8:	20000018 	.word	0x20000018
 80073fc:	2000085c 	.word	0x2000085c

08007400 <__ascii_wctomb>:
 8007400:	b121      	cbz	r1, 800740c <__ascii_wctomb+0xc>
 8007402:	2aff      	cmp	r2, #255	; 0xff
 8007404:	d804      	bhi.n	8007410 <__ascii_wctomb+0x10>
 8007406:	700a      	strb	r2, [r1, #0]
 8007408:	2001      	movs	r0, #1
 800740a:	4770      	bx	lr
 800740c:	4608      	mov	r0, r1
 800740e:	4770      	bx	lr
 8007410:	238a      	movs	r3, #138	; 0x8a
 8007412:	6003      	str	r3, [r0, #0]
 8007414:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007418:	4770      	bx	lr
 800741a:	bf00      	nop

0800741c <_init>:
 800741c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800741e:	bf00      	nop
 8007420:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007422:	bc08      	pop	{r3}
 8007424:	469e      	mov	lr, r3
 8007426:	4770      	bx	lr

08007428 <_fini>:
 8007428:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800742a:	bf00      	nop
 800742c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800742e:	bc08      	pop	{r3}
 8007430:	469e      	mov	lr, r3
 8007432:	4770      	bx	lr
 8007434:	0000      	movs	r0, r0
	...
