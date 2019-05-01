
st.elf:     file format elf32-littlearm


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
 80001e0:	0800759c 	.word	0x0800759c

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
 80001fc:	0800759c 	.word	0x0800759c

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

08000ad8 <__aeabi_uldivmod>:
 8000ad8:	b953      	cbnz	r3, 8000af0 <__aeabi_uldivmod+0x18>
 8000ada:	b94a      	cbnz	r2, 8000af0 <__aeabi_uldivmod+0x18>
 8000adc:	2900      	cmp	r1, #0
 8000ade:	bf08      	it	eq
 8000ae0:	2800      	cmpeq	r0, #0
 8000ae2:	bf1c      	itt	ne
 8000ae4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000ae8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000aec:	f000 b972 	b.w	8000dd4 <__aeabi_idiv0>
 8000af0:	f1ad 0c08 	sub.w	ip, sp, #8
 8000af4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000af8:	f000 f806 	bl	8000b08 <__udivmoddi4>
 8000afc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000b00:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000b04:	b004      	add	sp, #16
 8000b06:	4770      	bx	lr

08000b08 <__udivmoddi4>:
 8000b08:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b0c:	9e08      	ldr	r6, [sp, #32]
 8000b0e:	4604      	mov	r4, r0
 8000b10:	4688      	mov	r8, r1
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	d14b      	bne.n	8000bae <__udivmoddi4+0xa6>
 8000b16:	428a      	cmp	r2, r1
 8000b18:	4615      	mov	r5, r2
 8000b1a:	d967      	bls.n	8000bec <__udivmoddi4+0xe4>
 8000b1c:	fab2 f282 	clz	r2, r2
 8000b20:	b14a      	cbz	r2, 8000b36 <__udivmoddi4+0x2e>
 8000b22:	f1c2 0720 	rsb	r7, r2, #32
 8000b26:	fa01 f302 	lsl.w	r3, r1, r2
 8000b2a:	fa20 f707 	lsr.w	r7, r0, r7
 8000b2e:	4095      	lsls	r5, r2
 8000b30:	ea47 0803 	orr.w	r8, r7, r3
 8000b34:	4094      	lsls	r4, r2
 8000b36:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000b3a:	0c23      	lsrs	r3, r4, #16
 8000b3c:	fbb8 f7fe 	udiv	r7, r8, lr
 8000b40:	fa1f fc85 	uxth.w	ip, r5
 8000b44:	fb0e 8817 	mls	r8, lr, r7, r8
 8000b48:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000b4c:	fb07 f10c 	mul.w	r1, r7, ip
 8000b50:	4299      	cmp	r1, r3
 8000b52:	d909      	bls.n	8000b68 <__udivmoddi4+0x60>
 8000b54:	18eb      	adds	r3, r5, r3
 8000b56:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000b5a:	f080 811b 	bcs.w	8000d94 <__udivmoddi4+0x28c>
 8000b5e:	4299      	cmp	r1, r3
 8000b60:	f240 8118 	bls.w	8000d94 <__udivmoddi4+0x28c>
 8000b64:	3f02      	subs	r7, #2
 8000b66:	442b      	add	r3, r5
 8000b68:	1a5b      	subs	r3, r3, r1
 8000b6a:	b2a4      	uxth	r4, r4
 8000b6c:	fbb3 f0fe 	udiv	r0, r3, lr
 8000b70:	fb0e 3310 	mls	r3, lr, r0, r3
 8000b74:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8000b78:	fb00 fc0c 	mul.w	ip, r0, ip
 8000b7c:	45a4      	cmp	ip, r4
 8000b7e:	d909      	bls.n	8000b94 <__udivmoddi4+0x8c>
 8000b80:	192c      	adds	r4, r5, r4
 8000b82:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000b86:	f080 8107 	bcs.w	8000d98 <__udivmoddi4+0x290>
 8000b8a:	45a4      	cmp	ip, r4
 8000b8c:	f240 8104 	bls.w	8000d98 <__udivmoddi4+0x290>
 8000b90:	3802      	subs	r0, #2
 8000b92:	442c      	add	r4, r5
 8000b94:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8000b98:	eba4 040c 	sub.w	r4, r4, ip
 8000b9c:	2700      	movs	r7, #0
 8000b9e:	b11e      	cbz	r6, 8000ba8 <__udivmoddi4+0xa0>
 8000ba0:	40d4      	lsrs	r4, r2
 8000ba2:	2300      	movs	r3, #0
 8000ba4:	e9c6 4300 	strd	r4, r3, [r6]
 8000ba8:	4639      	mov	r1, r7
 8000baa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bae:	428b      	cmp	r3, r1
 8000bb0:	d909      	bls.n	8000bc6 <__udivmoddi4+0xbe>
 8000bb2:	2e00      	cmp	r6, #0
 8000bb4:	f000 80eb 	beq.w	8000d8e <__udivmoddi4+0x286>
 8000bb8:	2700      	movs	r7, #0
 8000bba:	e9c6 0100 	strd	r0, r1, [r6]
 8000bbe:	4638      	mov	r0, r7
 8000bc0:	4639      	mov	r1, r7
 8000bc2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bc6:	fab3 f783 	clz	r7, r3
 8000bca:	2f00      	cmp	r7, #0
 8000bcc:	d147      	bne.n	8000c5e <__udivmoddi4+0x156>
 8000bce:	428b      	cmp	r3, r1
 8000bd0:	d302      	bcc.n	8000bd8 <__udivmoddi4+0xd0>
 8000bd2:	4282      	cmp	r2, r0
 8000bd4:	f200 80fa 	bhi.w	8000dcc <__udivmoddi4+0x2c4>
 8000bd8:	1a84      	subs	r4, r0, r2
 8000bda:	eb61 0303 	sbc.w	r3, r1, r3
 8000bde:	2001      	movs	r0, #1
 8000be0:	4698      	mov	r8, r3
 8000be2:	2e00      	cmp	r6, #0
 8000be4:	d0e0      	beq.n	8000ba8 <__udivmoddi4+0xa0>
 8000be6:	e9c6 4800 	strd	r4, r8, [r6]
 8000bea:	e7dd      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000bec:	b902      	cbnz	r2, 8000bf0 <__udivmoddi4+0xe8>
 8000bee:	deff      	udf	#255	; 0xff
 8000bf0:	fab2 f282 	clz	r2, r2
 8000bf4:	2a00      	cmp	r2, #0
 8000bf6:	f040 808f 	bne.w	8000d18 <__udivmoddi4+0x210>
 8000bfa:	1b49      	subs	r1, r1, r5
 8000bfc:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000c00:	fa1f f885 	uxth.w	r8, r5
 8000c04:	2701      	movs	r7, #1
 8000c06:	fbb1 fcfe 	udiv	ip, r1, lr
 8000c0a:	0c23      	lsrs	r3, r4, #16
 8000c0c:	fb0e 111c 	mls	r1, lr, ip, r1
 8000c10:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000c14:	fb08 f10c 	mul.w	r1, r8, ip
 8000c18:	4299      	cmp	r1, r3
 8000c1a:	d907      	bls.n	8000c2c <__udivmoddi4+0x124>
 8000c1c:	18eb      	adds	r3, r5, r3
 8000c1e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 8000c22:	d202      	bcs.n	8000c2a <__udivmoddi4+0x122>
 8000c24:	4299      	cmp	r1, r3
 8000c26:	f200 80cd 	bhi.w	8000dc4 <__udivmoddi4+0x2bc>
 8000c2a:	4684      	mov	ip, r0
 8000c2c:	1a59      	subs	r1, r3, r1
 8000c2e:	b2a3      	uxth	r3, r4
 8000c30:	fbb1 f0fe 	udiv	r0, r1, lr
 8000c34:	fb0e 1410 	mls	r4, lr, r0, r1
 8000c38:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000c3c:	fb08 f800 	mul.w	r8, r8, r0
 8000c40:	45a0      	cmp	r8, r4
 8000c42:	d907      	bls.n	8000c54 <__udivmoddi4+0x14c>
 8000c44:	192c      	adds	r4, r5, r4
 8000c46:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000c4a:	d202      	bcs.n	8000c52 <__udivmoddi4+0x14a>
 8000c4c:	45a0      	cmp	r8, r4
 8000c4e:	f200 80b6 	bhi.w	8000dbe <__udivmoddi4+0x2b6>
 8000c52:	4618      	mov	r0, r3
 8000c54:	eba4 0408 	sub.w	r4, r4, r8
 8000c58:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000c5c:	e79f      	b.n	8000b9e <__udivmoddi4+0x96>
 8000c5e:	f1c7 0c20 	rsb	ip, r7, #32
 8000c62:	40bb      	lsls	r3, r7
 8000c64:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000c68:	ea4e 0e03 	orr.w	lr, lr, r3
 8000c6c:	fa01 f407 	lsl.w	r4, r1, r7
 8000c70:	fa20 f50c 	lsr.w	r5, r0, ip
 8000c74:	fa21 f30c 	lsr.w	r3, r1, ip
 8000c78:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8000c7c:	4325      	orrs	r5, r4
 8000c7e:	fbb3 f9f8 	udiv	r9, r3, r8
 8000c82:	0c2c      	lsrs	r4, r5, #16
 8000c84:	fb08 3319 	mls	r3, r8, r9, r3
 8000c88:	fa1f fa8e 	uxth.w	sl, lr
 8000c8c:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8000c90:	fb09 f40a 	mul.w	r4, r9, sl
 8000c94:	429c      	cmp	r4, r3
 8000c96:	fa02 f207 	lsl.w	r2, r2, r7
 8000c9a:	fa00 f107 	lsl.w	r1, r0, r7
 8000c9e:	d90b      	bls.n	8000cb8 <__udivmoddi4+0x1b0>
 8000ca0:	eb1e 0303 	adds.w	r3, lr, r3
 8000ca4:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000ca8:	f080 8087 	bcs.w	8000dba <__udivmoddi4+0x2b2>
 8000cac:	429c      	cmp	r4, r3
 8000cae:	f240 8084 	bls.w	8000dba <__udivmoddi4+0x2b2>
 8000cb2:	f1a9 0902 	sub.w	r9, r9, #2
 8000cb6:	4473      	add	r3, lr
 8000cb8:	1b1b      	subs	r3, r3, r4
 8000cba:	b2ad      	uxth	r5, r5
 8000cbc:	fbb3 f0f8 	udiv	r0, r3, r8
 8000cc0:	fb08 3310 	mls	r3, r8, r0, r3
 8000cc4:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8000cc8:	fb00 fa0a 	mul.w	sl, r0, sl
 8000ccc:	45a2      	cmp	sl, r4
 8000cce:	d908      	bls.n	8000ce2 <__udivmoddi4+0x1da>
 8000cd0:	eb1e 0404 	adds.w	r4, lr, r4
 8000cd4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000cd8:	d26b      	bcs.n	8000db2 <__udivmoddi4+0x2aa>
 8000cda:	45a2      	cmp	sl, r4
 8000cdc:	d969      	bls.n	8000db2 <__udivmoddi4+0x2aa>
 8000cde:	3802      	subs	r0, #2
 8000ce0:	4474      	add	r4, lr
 8000ce2:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8000ce6:	fba0 8902 	umull	r8, r9, r0, r2
 8000cea:	eba4 040a 	sub.w	r4, r4, sl
 8000cee:	454c      	cmp	r4, r9
 8000cf0:	46c2      	mov	sl, r8
 8000cf2:	464b      	mov	r3, r9
 8000cf4:	d354      	bcc.n	8000da0 <__udivmoddi4+0x298>
 8000cf6:	d051      	beq.n	8000d9c <__udivmoddi4+0x294>
 8000cf8:	2e00      	cmp	r6, #0
 8000cfa:	d069      	beq.n	8000dd0 <__udivmoddi4+0x2c8>
 8000cfc:	ebb1 050a 	subs.w	r5, r1, sl
 8000d00:	eb64 0403 	sbc.w	r4, r4, r3
 8000d04:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000d08:	40fd      	lsrs	r5, r7
 8000d0a:	40fc      	lsrs	r4, r7
 8000d0c:	ea4c 0505 	orr.w	r5, ip, r5
 8000d10:	e9c6 5400 	strd	r5, r4, [r6]
 8000d14:	2700      	movs	r7, #0
 8000d16:	e747      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000d18:	f1c2 0320 	rsb	r3, r2, #32
 8000d1c:	fa20 f703 	lsr.w	r7, r0, r3
 8000d20:	4095      	lsls	r5, r2
 8000d22:	fa01 f002 	lsl.w	r0, r1, r2
 8000d26:	fa21 f303 	lsr.w	r3, r1, r3
 8000d2a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000d2e:	4338      	orrs	r0, r7
 8000d30:	0c01      	lsrs	r1, r0, #16
 8000d32:	fbb3 f7fe 	udiv	r7, r3, lr
 8000d36:	fa1f f885 	uxth.w	r8, r5
 8000d3a:	fb0e 3317 	mls	r3, lr, r7, r3
 8000d3e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d42:	fb07 f308 	mul.w	r3, r7, r8
 8000d46:	428b      	cmp	r3, r1
 8000d48:	fa04 f402 	lsl.w	r4, r4, r2
 8000d4c:	d907      	bls.n	8000d5e <__udivmoddi4+0x256>
 8000d4e:	1869      	adds	r1, r5, r1
 8000d50:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 8000d54:	d22f      	bcs.n	8000db6 <__udivmoddi4+0x2ae>
 8000d56:	428b      	cmp	r3, r1
 8000d58:	d92d      	bls.n	8000db6 <__udivmoddi4+0x2ae>
 8000d5a:	3f02      	subs	r7, #2
 8000d5c:	4429      	add	r1, r5
 8000d5e:	1acb      	subs	r3, r1, r3
 8000d60:	b281      	uxth	r1, r0
 8000d62:	fbb3 f0fe 	udiv	r0, r3, lr
 8000d66:	fb0e 3310 	mls	r3, lr, r0, r3
 8000d6a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000d6e:	fb00 f308 	mul.w	r3, r0, r8
 8000d72:	428b      	cmp	r3, r1
 8000d74:	d907      	bls.n	8000d86 <__udivmoddi4+0x27e>
 8000d76:	1869      	adds	r1, r5, r1
 8000d78:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 8000d7c:	d217      	bcs.n	8000dae <__udivmoddi4+0x2a6>
 8000d7e:	428b      	cmp	r3, r1
 8000d80:	d915      	bls.n	8000dae <__udivmoddi4+0x2a6>
 8000d82:	3802      	subs	r0, #2
 8000d84:	4429      	add	r1, r5
 8000d86:	1ac9      	subs	r1, r1, r3
 8000d88:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8000d8c:	e73b      	b.n	8000c06 <__udivmoddi4+0xfe>
 8000d8e:	4637      	mov	r7, r6
 8000d90:	4630      	mov	r0, r6
 8000d92:	e709      	b.n	8000ba8 <__udivmoddi4+0xa0>
 8000d94:	4607      	mov	r7, r0
 8000d96:	e6e7      	b.n	8000b68 <__udivmoddi4+0x60>
 8000d98:	4618      	mov	r0, r3
 8000d9a:	e6fb      	b.n	8000b94 <__udivmoddi4+0x8c>
 8000d9c:	4541      	cmp	r1, r8
 8000d9e:	d2ab      	bcs.n	8000cf8 <__udivmoddi4+0x1f0>
 8000da0:	ebb8 0a02 	subs.w	sl, r8, r2
 8000da4:	eb69 020e 	sbc.w	r2, r9, lr
 8000da8:	3801      	subs	r0, #1
 8000daa:	4613      	mov	r3, r2
 8000dac:	e7a4      	b.n	8000cf8 <__udivmoddi4+0x1f0>
 8000dae:	4660      	mov	r0, ip
 8000db0:	e7e9      	b.n	8000d86 <__udivmoddi4+0x27e>
 8000db2:	4618      	mov	r0, r3
 8000db4:	e795      	b.n	8000ce2 <__udivmoddi4+0x1da>
 8000db6:	4667      	mov	r7, ip
 8000db8:	e7d1      	b.n	8000d5e <__udivmoddi4+0x256>
 8000dba:	4681      	mov	r9, r0
 8000dbc:	e77c      	b.n	8000cb8 <__udivmoddi4+0x1b0>
 8000dbe:	3802      	subs	r0, #2
 8000dc0:	442c      	add	r4, r5
 8000dc2:	e747      	b.n	8000c54 <__udivmoddi4+0x14c>
 8000dc4:	f1ac 0c02 	sub.w	ip, ip, #2
 8000dc8:	442b      	add	r3, r5
 8000dca:	e72f      	b.n	8000c2c <__udivmoddi4+0x124>
 8000dcc:	4638      	mov	r0, r7
 8000dce:	e708      	b.n	8000be2 <__udivmoddi4+0xda>
 8000dd0:	4637      	mov	r7, r6
 8000dd2:	e6e9      	b.n	8000ba8 <__udivmoddi4+0xa0>

08000dd4 <__aeabi_idiv0>:
 8000dd4:	4770      	bx	lr
 8000dd6:	bf00      	nop

08000dd8 <memcpy>:
 8000dd8:	4684      	mov	ip, r0
 8000dda:	ea41 0300 	orr.w	r3, r1, r0
 8000dde:	f013 0303 	ands.w	r3, r3, #3
 8000de2:	d16d      	bne.n	8000ec0 <memcpy+0xe8>
 8000de4:	3a40      	subs	r2, #64	; 0x40
 8000de6:	d341      	bcc.n	8000e6c <memcpy+0x94>
 8000de8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dec:	f840 3b04 	str.w	r3, [r0], #4
 8000df0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000df4:	f840 3b04 	str.w	r3, [r0], #4
 8000df8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000dfc:	f840 3b04 	str.w	r3, [r0], #4
 8000e00:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e04:	f840 3b04 	str.w	r3, [r0], #4
 8000e08:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e0c:	f840 3b04 	str.w	r3, [r0], #4
 8000e10:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e14:	f840 3b04 	str.w	r3, [r0], #4
 8000e18:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e1c:	f840 3b04 	str.w	r3, [r0], #4
 8000e20:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e24:	f840 3b04 	str.w	r3, [r0], #4
 8000e28:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e2c:	f840 3b04 	str.w	r3, [r0], #4
 8000e30:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e34:	f840 3b04 	str.w	r3, [r0], #4
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
 8000e68:	3a40      	subs	r2, #64	; 0x40
 8000e6a:	d2bd      	bcs.n	8000de8 <memcpy+0x10>
 8000e6c:	3230      	adds	r2, #48	; 0x30
 8000e6e:	d311      	bcc.n	8000e94 <memcpy+0xbc>
 8000e70:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e74:	f840 3b04 	str.w	r3, [r0], #4
 8000e78:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e7c:	f840 3b04 	str.w	r3, [r0], #4
 8000e80:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e84:	f840 3b04 	str.w	r3, [r0], #4
 8000e88:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e8c:	f840 3b04 	str.w	r3, [r0], #4
 8000e90:	3a10      	subs	r2, #16
 8000e92:	d2ed      	bcs.n	8000e70 <memcpy+0x98>
 8000e94:	320c      	adds	r2, #12
 8000e96:	d305      	bcc.n	8000ea4 <memcpy+0xcc>
 8000e98:	f851 3b04 	ldr.w	r3, [r1], #4
 8000e9c:	f840 3b04 	str.w	r3, [r0], #4
 8000ea0:	3a04      	subs	r2, #4
 8000ea2:	d2f9      	bcs.n	8000e98 <memcpy+0xc0>
 8000ea4:	3204      	adds	r2, #4
 8000ea6:	d008      	beq.n	8000eba <memcpy+0xe2>
 8000ea8:	07d2      	lsls	r2, r2, #31
 8000eaa:	bf1c      	itt	ne
 8000eac:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000eb0:	f800 3b01 	strbne.w	r3, [r0], #1
 8000eb4:	d301      	bcc.n	8000eba <memcpy+0xe2>
 8000eb6:	880b      	ldrh	r3, [r1, #0]
 8000eb8:	8003      	strh	r3, [r0, #0]
 8000eba:	4660      	mov	r0, ip
 8000ebc:	4770      	bx	lr
 8000ebe:	bf00      	nop
 8000ec0:	2a08      	cmp	r2, #8
 8000ec2:	d313      	bcc.n	8000eec <memcpy+0x114>
 8000ec4:	078b      	lsls	r3, r1, #30
 8000ec6:	d08d      	beq.n	8000de4 <memcpy+0xc>
 8000ec8:	f010 0303 	ands.w	r3, r0, #3
 8000ecc:	d08a      	beq.n	8000de4 <memcpy+0xc>
 8000ece:	f1c3 0304 	rsb	r3, r3, #4
 8000ed2:	1ad2      	subs	r2, r2, r3
 8000ed4:	07db      	lsls	r3, r3, #31
 8000ed6:	bf1c      	itt	ne
 8000ed8:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000edc:	f800 3b01 	strbne.w	r3, [r0], #1
 8000ee0:	d380      	bcc.n	8000de4 <memcpy+0xc>
 8000ee2:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000ee6:	f820 3b02 	strh.w	r3, [r0], #2
 8000eea:	e77b      	b.n	8000de4 <memcpy+0xc>
 8000eec:	3a04      	subs	r2, #4
 8000eee:	d3d9      	bcc.n	8000ea4 <memcpy+0xcc>
 8000ef0:	3a01      	subs	r2, #1
 8000ef2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000ef6:	f800 3b01 	strb.w	r3, [r0], #1
 8000efa:	d2f9      	bcs.n	8000ef0 <memcpy+0x118>
 8000efc:	780b      	ldrb	r3, [r1, #0]
 8000efe:	7003      	strb	r3, [r0, #0]
 8000f00:	784b      	ldrb	r3, [r1, #1]
 8000f02:	7043      	strb	r3, [r0, #1]
 8000f04:	788b      	ldrb	r3, [r1, #2]
 8000f06:	7083      	strb	r3, [r0, #2]
 8000f08:	4660      	mov	r0, ip
 8000f0a:	4770      	bx	lr
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

080010c0 <__aeabi_d2iz>:
 80010c0:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80010c4:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80010c8:	d215      	bcs.n	80010f6 <__aeabi_d2iz+0x36>
 80010ca:	d511      	bpl.n	80010f0 <__aeabi_d2iz+0x30>
 80010cc:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80010d0:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80010d4:	d912      	bls.n	80010fc <__aeabi_d2iz+0x3c>
 80010d6:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80010da:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80010de:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80010e2:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80010e6:	fa23 f002 	lsr.w	r0, r3, r2
 80010ea:	bf18      	it	ne
 80010ec:	4240      	negne	r0, r0
 80010ee:	4770      	bx	lr
 80010f0:	f04f 0000 	mov.w	r0, #0
 80010f4:	4770      	bx	lr
 80010f6:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80010fa:	d105      	bne.n	8001108 <__aeabi_d2iz+0x48>
 80010fc:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8001100:	bf08      	it	eq
 8001102:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8001106:	4770      	bx	lr
 8001108:	f04f 0000 	mov.w	r0, #0
 800110c:	4770      	bx	lr
 800110e:	bf00      	nop

08001110 <HAL_Init>:
 8001110:	b580      	push	{r7, lr}
 8001112:	466f      	mov	r7, sp
 8001114:	2003      	movs	r0, #3
 8001116:	f000 f819 	bl	800114c <HAL_NVIC_SetPriorityGrouping>
 800111a:	200f      	movs	r0, #15
 800111c:	f000 fb84 	bl	8001828 <HAL_InitTick>
 8001120:	2800      	cmp	r0, #0
 8001122:	bf1c      	itt	ne
 8001124:	2001      	movne	r0, #1
 8001126:	bd80      	popne	{r7, pc}
 8001128:	f000 f94b 	bl	80013c2 <HAL_MspInit>
 800112c:	2000      	movs	r0, #0
 800112e:	bd80      	pop	{r7, pc}

08001130 <HAL_IncTick>:
 8001130:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8001134:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001138:	6801      	ldr	r1, [r0, #0]
 800113a:	3101      	adds	r1, #1
 800113c:	6001      	str	r1, [r0, #0]
 800113e:	4770      	bx	lr

08001140 <HAL_GetTick>:
 8001140:	f640 20a0 	movw	r0, #2720	; 0xaa0
 8001144:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001148:	6800      	ldr	r0, [r0, #0]
 800114a:	4770      	bx	lr

0800114c <HAL_NVIC_SetPriorityGrouping>:
 800114c:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001150:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001154:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001158:	680a      	ldr	r2, [r1, #0]
 800115a:	401a      	ands	r2, r3
 800115c:	f360 220a 	bfi	r2, r0, #8, #3
 8001160:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001164:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001168:	6008      	str	r0, [r1, #0]
 800116a:	4770      	bx	lr

0800116c <HAL_NVIC_SetPriority>:
 800116c:	b580      	push	{r7, lr}
 800116e:	466f      	mov	r7, sp
 8001170:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001174:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001178:	2800      	cmp	r0, #0
 800117a:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 800117e:	f000 030f 	and.w	r3, r0, #15
 8001182:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001186:	f1a3 0304 	sub.w	r3, r3, #4
 800118a:	4473      	add	r3, lr
 800118c:	bfb8      	it	lt
 800118e:	f103 0c0c 	addlt.w	ip, r3, #12
 8001192:	f8de 0000 	ldr.w	r0, [lr]
 8001196:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800119a:	f100 0e04 	add.w	lr, r0, #4
 800119e:	1ec3      	subs	r3, r0, #3
 80011a0:	f080 0007 	eor.w	r0, r0, #7
 80011a4:	f1be 0f07 	cmp.w	lr, #7
 80011a8:	f04f 0e01 	mov.w	lr, #1
 80011ac:	bf38      	it	cc
 80011ae:	2300      	movcc	r3, #0
 80011b0:	2804      	cmp	r0, #4
 80011b2:	bf28      	it	cs
 80011b4:	2004      	movcs	r0, #4
 80011b6:	fa0e f000 	lsl.w	r0, lr, r0
 80011ba:	3801      	subs	r0, #1
 80011bc:	4008      	ands	r0, r1
 80011be:	fa0e f103 	lsl.w	r1, lr, r3
 80011c2:	310f      	adds	r1, #15
 80011c4:	4098      	lsls	r0, r3
 80011c6:	4011      	ands	r1, r2
 80011c8:	4308      	orrs	r0, r1
 80011ca:	0100      	lsls	r0, r0, #4
 80011cc:	f88c 0000 	strb.w	r0, [ip]
 80011d0:	bd80      	pop	{r7, pc}

080011d2 <HAL_NVIC_EnableIRQ>:
 80011d2:	f000 011f 	and.w	r1, r0, #31
 80011d6:	2201      	movs	r2, #1
 80011d8:	0940      	lsrs	r0, r0, #5
 80011da:	fa02 f101 	lsl.w	r1, r2, r1
 80011de:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011e2:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011e6:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011ea:	4770      	bx	lr

080011ec <HAL_SYSTICK_IRQHandler>:
 80011ec:	f000 b800 	b.w	80011f0 <HAL_SYSTICK_Callback>

080011f0 <HAL_SYSTICK_Callback>:
 80011f0:	4770      	bx	lr

080011f2 <HAL_GPIO_Init>:
 80011f2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011f4:	af03      	add	r7, sp, #12
 80011f6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011fa:	b082      	sub	sp, #8
 80011fc:	680e      	ldr	r6, [r1, #0]
 80011fe:	2e00      	cmp	r6, #0
 8001200:	f000 80db 	beq.w	80013ba <HAL_GPIO_Init+0x1c8>
 8001204:	f641 0200 	movw	r2, #6144	; 0x1800
 8001208:	2507      	movs	r5, #7
 800120a:	f04f 0801 	mov.w	r8, #1
 800120e:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001212:	4290      	cmp	r0, r2
 8001214:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001218:	ea4f 23b2 	mov.w	r3, r2, ror #10
 800121c:	bf08      	it	eq
 800121e:	2506      	moveq	r5, #6
 8001220:	2b06      	cmp	r3, #6
 8001222:	bf38      	it	cc
 8001224:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001228:	2200      	movs	r2, #0
 800122a:	9500      	str	r5, [sp, #0]
 800122c:	2500      	movs	r5, #0
 800122e:	f1a8 0a01 	sub.w	sl, r8, #1
 8001232:	2301      	movs	r3, #1
 8001234:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001238:	ea16 090b 	ands.w	r9, r6, fp
 800123c:	f000 80b4 	beq.w	80013a8 <HAL_GPIO_Init+0x1b6>
 8001240:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001244:	f04e 0610 	orr.w	r6, lr, #16
 8001248:	2e12      	cmp	r6, #18
 800124a:	d115      	bne.n	8001278 <HAL_GPIO_Init+0x86>
 800124c:	f005 061c 	and.w	r6, r5, #28
 8001250:	230f      	movs	r3, #15
 8001252:	fa03 fc06 	lsl.w	ip, r3, r6
 8001256:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 800125a:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125e:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001262:	4404      	add	r4, r0
 8001264:	6a23      	ldr	r3, [r4, #32]
 8001266:	ea23 0c0c 	bic.w	ip, r3, ip
 800126a:	690b      	ldr	r3, [r1, #16]
 800126c:	40b3      	lsls	r3, r6
 800126e:	ea43 030c 	orr.w	r3, r3, ip
 8001272:	6223      	str	r3, [r4, #32]
 8001274:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001278:	6806      	ldr	r6, [r0, #0]
 800127a:	2403      	movs	r4, #3
 800127c:	f00e 0c03 	and.w	ip, lr, #3
 8001280:	f1be 0f12 	cmp.w	lr, #18
 8001284:	fa04 f402 	lsl.w	r4, r4, r2
 8001288:	fa0c f302 	lsl.w	r3, ip, r2
 800128c:	ea26 0604 	bic.w	r6, r6, r4
 8001290:	ea43 0306 	orr.w	r3, r3, r6
 8001294:	ea6f 0604 	mvn.w	r6, r4
 8001298:	6003      	str	r3, [r0, #0]
 800129a:	d816      	bhi.n	80012ca <HAL_GPIO_Init+0xd8>
 800129c:	2301      	movs	r3, #1
 800129e:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a2:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a6:	bf1f      	itttt	ne
 80012a8:	6883      	ldrne	r3, [r0, #8]
 80012aa:	4033      	andne	r3, r6
 80012ac:	68cc      	ldrne	r4, [r1, #12]
 80012ae:	4094      	lslne	r4, r2
 80012b0:	bf1f      	itttt	ne
 80012b2:	4323      	orrne	r3, r4
 80012b4:	6083      	strne	r3, [r0, #8]
 80012b6:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012ba:	fa03 f30a 	lslne.w	r3, r3, sl
 80012be:	bf1f      	itttt	ne
 80012c0:	6844      	ldrne	r4, [r0, #4]
 80012c2:	ea24 040b 	bicne.w	r4, r4, fp
 80012c6:	4323      	orrne	r3, r4
 80012c8:	6043      	strne	r3, [r0, #4]
 80012ca:	f1bc 0f03 	cmp.w	ip, #3
 80012ce:	d108      	bne.n	80012e2 <HAL_GPIO_Init+0xf0>
 80012d0:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012d4:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012d6:	fa03 f30a 	lsl.w	r3, r3, sl
 80012da:	ea24 040b 	bic.w	r4, r4, fp
 80012de:	4323      	orrs	r3, r4
 80012e0:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012e2:	68c3      	ldr	r3, [r0, #12]
 80012e4:	4033      	ands	r3, r6
 80012e6:	688e      	ldr	r6, [r1, #8]
 80012e8:	4096      	lsls	r6, r2
 80012ea:	4333      	orrs	r3, r6
 80012ec:	60c3      	str	r3, [r0, #12]
 80012ee:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012f2:	d559      	bpl.n	80013a8 <HAL_GPIO_Init+0x1b6>
 80012f4:	f241 0360 	movw	r3, #4192	; 0x1060
 80012f8:	f005 040c 	and.w	r4, r5, #12
 80012fc:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001300:	461e      	mov	r6, r3
 8001302:	6833      	ldr	r3, [r6, #0]
 8001304:	f043 0301 	orr.w	r3, r3, #1
 8001308:	6033      	str	r3, [r6, #0]
 800130a:	6833      	ldr	r3, [r6, #0]
 800130c:	f240 4600 	movw	r6, #1024	; 0x400
 8001310:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001314:	46b6      	mov	lr, r6
 8001316:	f003 0301 	and.w	r3, r3, #1
 800131a:	9301      	str	r3, [sp, #4]
 800131c:	f02a 0303 	bic.w	r3, sl, #3
 8001320:	9e01      	ldr	r6, [sp, #4]
 8001322:	4473      	add	r3, lr
 8001324:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001328:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800132c:	46b2      	mov	sl, r6
 800132e:	260f      	movs	r6, #15
 8001330:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001334:	40a6      	lsls	r6, r4
 8001336:	ea2c 0c06 	bic.w	ip, ip, r6
 800133a:	9e00      	ldr	r6, [sp, #0]
 800133c:	fa06 f404 	lsl.w	r4, r6, r4
 8001340:	ea4c 0604 	orr.w	r6, ip, r4
 8001344:	f843 600a 	str.w	r6, [r3, sl]
 8001348:	f8de 3000 	ldr.w	r3, [lr]
 800134c:	684e      	ldr	r6, [r1, #4]
 800134e:	ea23 0309 	bic.w	r3, r3, r9
 8001352:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 8001356:	bf18      	it	ne
 8001358:	ea43 0309 	orrne.w	r3, r3, r9
 800135c:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001360:	f8ce 3000 	str.w	r3, [lr]
 8001364:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001368:	ea23 0309 	bic.w	r3, r3, r9
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 8001376:	f8ce 3004 	str.w	r3, [lr, #4]
 800137a:	f8de 3008 	ldr.w	r3, [lr, #8]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 800138c:	f8ce 3008 	str.w	r3, [lr, #8]
 8001390:	f240 430c 	movw	r3, #1036	; 0x40c
 8001394:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001398:	461c      	mov	r4, r3
 800139a:	6823      	ldr	r3, [r4, #0]
 800139c:	ea23 0309 	bic.w	r3, r3, r9
 80013a0:	bf18      	it	ne
 80013a2:	ea43 0309 	orrne.w	r3, r3, r9
 80013a6:	6023      	str	r3, [r4, #0]
 80013a8:	680e      	ldr	r6, [r1, #0]
 80013aa:	3202      	adds	r2, #2
 80013ac:	3504      	adds	r5, #4
 80013ae:	fa36 f308 	lsrs.w	r3, r6, r8
 80013b2:	f108 0801 	add.w	r8, r8, #1
 80013b6:	f47f af3a 	bne.w	800122e <HAL_GPIO_Init+0x3c>
 80013ba:	b002      	add	sp, #8
 80013bc:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013c0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013c2 <HAL_MspInit>:
 80013c2:	4770      	bx	lr

080013c4 <HAL_RCC_GetSysClockFreq>:
 80013c4:	b580      	push	{r7, lr}
 80013c6:	466f      	mov	r7, sp
 80013c8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013cc:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013d0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013d4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013d8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013dc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013e0:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013e4:	6808      	ldr	r0, [r1, #0]
 80013e6:	f012 030c 	ands.w	r3, r2, #12
 80013ea:	d005      	beq.n	80013f8 <HAL_RCC_GetSysClockFreq+0x34>
 80013ec:	2b0c      	cmp	r3, #12
 80013ee:	bf04      	itt	eq
 80013f0:	f000 0003 	andeq.w	r0, r0, #3
 80013f4:	2801      	cmpeq	r0, #1
 80013f6:	d118      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x66>
 80013f8:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013fc:	f010 0f08 	tst.w	r0, #8
 8001400:	d103      	bne.n	800140a <HAL_RCC_GetSysClockFreq+0x46>
 8001402:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001406:	0a00      	lsrs	r0, r0, #8
 8001408:	e002      	b.n	8001410 <HAL_RCC_GetSysClockFreq+0x4c>
 800140a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800140e:	0900      	lsrs	r0, r0, #4
 8001410:	f247 52d0 	movw	r2, #30160	; 0x75d0
 8001414:	f000 000f 	and.w	r0, r0, #15
 8001418:	2b00      	cmp	r3, #0
 800141a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800141e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001422:	4610      	mov	r0, r2
 8001424:	bf18      	it	ne
 8001426:	2000      	movne	r0, #0
 8001428:	e00b      	b.n	8001442 <HAL_RCC_GetSysClockFreq+0x7e>
 800142a:	f003 000f 	and.w	r0, r3, #15
 800142e:	2804      	cmp	r0, #4
 8001430:	bf04      	itt	eq
 8001432:	4660      	moveq	r0, ip
 8001434:	bd80      	popeq	{r7, pc}
 8001436:	2808      	cmp	r0, #8
 8001438:	bf04      	itt	eq
 800143a:	4670      	moveq	r0, lr
 800143c:	bd80      	popeq	{r7, pc}
 800143e:	2000      	movs	r0, #0
 8001440:	2200      	movs	r2, #0
 8001442:	2b0c      	cmp	r3, #12
 8001444:	bf18      	it	ne
 8001446:	bd80      	popne	{r7, pc}
 8001448:	6808      	ldr	r0, [r1, #0]
 800144a:	f000 0303 	and.w	r3, r0, #3
 800144e:	6808      	ldr	r0, [r1, #0]
 8001450:	2b03      	cmp	r3, #3
 8001452:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001456:	f100 0001 	add.w	r0, r0, #1
 800145a:	d003      	beq.n	8001464 <HAL_RCC_GetSysClockFreq+0xa0>
 800145c:	2b02      	cmp	r3, #2
 800145e:	46e6      	mov	lr, ip
 8001460:	bf18      	it	ne
 8001462:	4696      	movne	lr, r2
 8001464:	680a      	ldr	r2, [r1, #0]
 8001466:	fbbe f0f0 	udiv	r0, lr, r0
 800146a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800146e:	6809      	ldr	r1, [r1, #0]
 8001470:	4350      	muls	r0, r2
 8001472:	2202      	movs	r2, #2
 8001474:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001478:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800147c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001480:	bd80      	pop	{r7, pc}

08001482 <HAL_RCC_GetPCLK1Freq>:
 8001482:	f240 0014 	movw	r0, #20
 8001486:	f241 0108 	movw	r1, #4104	; 0x1008
 800148a:	f247 52c8 	movw	r2, #30152	; 0x75c8
 800148e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001492:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001496:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149a:	6800      	ldr	r0, [r0, #0]
 800149c:	6809      	ldr	r1, [r1, #0]
 800149e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014a2:	5c51      	ldrb	r1, [r2, r1]
 80014a4:	f001 011f 	and.w	r1, r1, #31
 80014a8:	40c8      	lsrs	r0, r1
 80014aa:	4770      	bx	lr

080014ac <HAL_RCC_GetPCLK2Freq>:
 80014ac:	f240 0014 	movw	r0, #20
 80014b0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014b4:	f247 52c8 	movw	r2, #30152	; 0x75c8
 80014b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014bc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014c0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014c4:	6800      	ldr	r0, [r0, #0]
 80014c6:	6809      	ldr	r1, [r1, #0]
 80014c8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014cc:	5c51      	ldrb	r1, [r2, r1]
 80014ce:	f001 011f 	and.w	r1, r1, #31
 80014d2:	40c8      	lsrs	r0, r1
 80014d4:	4770      	bx	lr

080014d6 <HAL_RCC_GetClockConfig>:
 80014d6:	220f      	movs	r2, #15
 80014d8:	6002      	str	r2, [r0, #0]
 80014da:	f241 0208 	movw	r2, #4104	; 0x1008
 80014de:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014e2:	6813      	ldr	r3, [r2, #0]
 80014e4:	f003 0303 	and.w	r3, r3, #3
 80014e8:	6043      	str	r3, [r0, #4]
 80014ea:	6813      	ldr	r3, [r2, #0]
 80014ec:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014f0:	6083      	str	r3, [r0, #8]
 80014f2:	6813      	ldr	r3, [r2, #0]
 80014f4:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014f8:	60c3      	str	r3, [r0, #12]
 80014fa:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014fe:	6812      	ldr	r2, [r2, #0]
 8001500:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001504:	6102      	str	r2, [r0, #16]
 8001506:	f242 0000 	movw	r0, #8192	; 0x2000
 800150a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800150e:	6800      	ldr	r0, [r0, #0]
 8001510:	f000 0007 	and.w	r0, r0, #7
 8001514:	6008      	str	r0, [r1, #0]
 8001516:	4770      	bx	lr

08001518 <HAL_TIM_Base_Init>:
 8001518:	b5d0      	push	{r4, r6, r7, lr}
 800151a:	af02      	add	r7, sp, #8
 800151c:	4604      	mov	r4, r0
 800151e:	2c00      	cmp	r4, #0
 8001520:	bf04      	itt	eq
 8001522:	2001      	moveq	r0, #1
 8001524:	bdd0      	popeq	{r4, r6, r7, pc}
 8001526:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001528:	b920      	cbnz	r0, 8001534 <HAL_TIM_Base_Init+0x1c>
 800152a:	2000      	movs	r0, #0
 800152c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800152e:	4620      	mov	r0, r4
 8001530:	f000 f892 	bl	8001658 <HAL_TIM_Base_MspInit>
 8001534:	2002      	movs	r0, #2
 8001536:	f640 32ff 	movw	r2, #3071	; 0xbff
 800153a:	6420      	str	r0, [r4, #64]	; 0x40
 800153c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001540:	6820      	ldr	r0, [r4, #0]
 8001542:	6801      	ldr	r1, [r0, #0]
 8001544:	4290      	cmp	r0, r2
 8001546:	dc0f      	bgt.n	8001568 <HAL_TIM_Base_Init+0x50>
 8001548:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800154c:	bf1e      	ittt	ne
 800154e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001552:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001556:	4290      	cmpne	r0, r2
 8001558:	d018      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 800155a:	f640 0200 	movw	r2, #2048	; 0x800
 800155e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001562:	4290      	cmp	r0, r2
 8001564:	d012      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 8001566:	e015      	b.n	8001594 <HAL_TIM_Base_Init+0x7c>
 8001568:	f640 4200 	movw	r2, #3072	; 0xc00
 800156c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001570:	4290      	cmp	r0, r2
 8001572:	bf1e      	ittt	ne
 8001574:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001578:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800157c:	4290      	cmpne	r0, r2
 800157e:	d005      	beq.n	800158c <HAL_TIM_Base_Init+0x74>
 8001580:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001584:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001588:	4290      	cmp	r0, r2
 800158a:	d103      	bne.n	8001594 <HAL_TIM_Base_Init+0x7c>
 800158c:	68a2      	ldr	r2, [r4, #8]
 800158e:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001592:	4311      	orrs	r1, r2
 8001594:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001598:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800159c:	4290      	cmp	r0, r2
 800159e:	dd14      	ble.n	80015ca <HAL_TIM_Base_Init+0xb2>
 80015a0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	dd1a      	ble.n	80015e2 <HAL_TIM_Base_Init+0xca>
 80015ac:	f244 0200 	movw	r2, #16384	; 0x4000
 80015b0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015b4:	4290      	cmp	r0, r2
 80015b6:	bf1e      	ittt	ne
 80015b8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015bc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015c0:	4290      	cmpne	r0, r2
 80015c2:	d027      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015c4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015c8:	e013      	b.n	80015f2 <HAL_TIM_Base_Init+0xda>
 80015ca:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ce:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015d2:	4290      	cmp	r0, r2
 80015d4:	dc12      	bgt.n	80015fc <HAL_TIM_Base_Init+0xe4>
 80015d6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015da:	d01b      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015dc:	f240 4200 	movw	r2, #1024	; 0x400
 80015e0:	e014      	b.n	800160c <HAL_TIM_Base_Init+0xf4>
 80015e2:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015e6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ea:	4290      	cmp	r0, r2
 80015ec:	d012      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015ee:	f243 4200 	movw	r2, #13312	; 0x3400
 80015f2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015f6:	4290      	cmp	r0, r2
 80015f8:	d00c      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 80015fa:	e00f      	b.n	800161c <HAL_TIM_Base_Init+0x104>
 80015fc:	f640 0200 	movw	r2, #2048	; 0x800
 8001600:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001604:	4290      	cmp	r0, r2
 8001606:	d005      	beq.n	8001614 <HAL_TIM_Base_Init+0xfc>
 8001608:	f640 4200 	movw	r2, #3072	; 0xc00
 800160c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001610:	4290      	cmp	r0, r2
 8001612:	d103      	bne.n	800161c <HAL_TIM_Base_Init+0x104>
 8001614:	6922      	ldr	r2, [r4, #16]
 8001616:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800161a:	4311      	orrs	r1, r2
 800161c:	69a2      	ldr	r2, [r4, #24]
 800161e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001622:	4311      	orrs	r1, r2
 8001624:	6001      	str	r1, [r0, #0]
 8001626:	68e1      	ldr	r1, [r4, #12]
 8001628:	62c1      	str	r1, [r0, #44]	; 0x2c
 800162a:	6861      	ldr	r1, [r4, #4]
 800162c:	6281      	str	r1, [r0, #40]	; 0x28
 800162e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001632:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001636:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800163a:	2907      	cmp	r1, #7
 800163c:	d807      	bhi.n	800164e <HAL_TIM_Base_Init+0x136>
 800163e:	2201      	movs	r2, #1
 8001640:	fa02 f101 	lsl.w	r1, r2, r1
 8001644:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001648:	bf1c      	itt	ne
 800164a:	6961      	ldrne	r1, [r4, #20]
 800164c:	6301      	strne	r1, [r0, #48]	; 0x30
 800164e:	2101      	movs	r1, #1
 8001650:	6141      	str	r1, [r0, #20]
 8001652:	2000      	movs	r0, #0
 8001654:	6421      	str	r1, [r4, #64]	; 0x40
 8001656:	bdd0      	pop	{r4, r6, r7, pc}

08001658 <HAL_TIM_Base_MspInit>:
 8001658:	4770      	bx	lr

0800165a <HAL_TIM_Base_Start_IT>:
 800165a:	6800      	ldr	r0, [r0, #0]
 800165c:	68c1      	ldr	r1, [r0, #12]
 800165e:	f041 0101 	orr.w	r1, r1, #1
 8001662:	60c1      	str	r1, [r0, #12]
 8001664:	2107      	movs	r1, #7
 8001666:	6882      	ldr	r2, [r0, #8]
 8001668:	f2c0 0101 	movt	r1, #1
 800166c:	400a      	ands	r2, r1
 800166e:	2a06      	cmp	r2, #6
 8001670:	d008      	beq.n	8001684 <HAL_TIM_Base_Start_IT+0x2a>
 8001672:	6882      	ldr	r2, [r0, #8]
 8001674:	4011      	ands	r1, r2
 8001676:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800167a:	bf1e      	ittt	ne
 800167c:	6801      	ldrne	r1, [r0, #0]
 800167e:	f041 0101 	orrne.w	r1, r1, #1
 8001682:	6001      	strne	r1, [r0, #0]
 8001684:	2000      	movs	r0, #0
 8001686:	4770      	bx	lr

08001688 <HAL_TIM_IRQHandler>:
 8001688:	b5d0      	push	{r4, r6, r7, lr}
 800168a:	af02      	add	r7, sp, #8
 800168c:	4604      	mov	r4, r0
 800168e:	6820      	ldr	r0, [r4, #0]
 8001690:	6901      	ldr	r1, [r0, #16]
 8001692:	f011 0f02 	tst.w	r1, #2
 8001696:	bf1c      	itt	ne
 8001698:	68c1      	ldrne	r1, [r0, #12]
 800169a:	f011 0f02 	tstne.w	r1, #2
 800169e:	d015      	beq.n	80016cc <HAL_TIM_IRQHandler+0x44>
 80016a0:	f06f 0102 	mvn.w	r1, #2
 80016a4:	6101      	str	r1, [r0, #16]
 80016a6:	2101      	movs	r1, #1
 80016a8:	61e1      	str	r1, [r4, #28]
 80016aa:	6980      	ldr	r0, [r0, #24]
 80016ac:	f010 0f03 	tst.w	r0, #3
 80016b0:	d003      	beq.n	80016ba <HAL_TIM_IRQHandler+0x32>
 80016b2:	4620      	mov	r0, r4
 80016b4:	f000 f8b1 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 80016b8:	e005      	b.n	80016c6 <HAL_TIM_IRQHandler+0x3e>
 80016ba:	4620      	mov	r0, r4
 80016bc:	f000 f8ae 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 80016c0:	4620      	mov	r0, r4
 80016c2:	f000 f8ac 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 80016c6:	2000      	movs	r0, #0
 80016c8:	61e0      	str	r0, [r4, #28]
 80016ca:	6820      	ldr	r0, [r4, #0]
 80016cc:	6901      	ldr	r1, [r0, #16]
 80016ce:	f011 0f04 	tst.w	r1, #4
 80016d2:	bf1c      	itt	ne
 80016d4:	68c1      	ldrne	r1, [r0, #12]
 80016d6:	f011 0f04 	tstne.w	r1, #4
 80016da:	d015      	beq.n	8001708 <HAL_TIM_IRQHandler+0x80>
 80016dc:	f06f 0104 	mvn.w	r1, #4
 80016e0:	6101      	str	r1, [r0, #16]
 80016e2:	2102      	movs	r1, #2
 80016e4:	61e1      	str	r1, [r4, #28]
 80016e6:	6980      	ldr	r0, [r0, #24]
 80016e8:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016ec:	d003      	beq.n	80016f6 <HAL_TIM_IRQHandler+0x6e>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f893 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 80016f4:	e005      	b.n	8001702 <HAL_TIM_IRQHandler+0x7a>
 80016f6:	4620      	mov	r0, r4
 80016f8:	f000 f890 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 80016fc:	4620      	mov	r0, r4
 80016fe:	f000 f88e 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 8001702:	2000      	movs	r0, #0
 8001704:	61e0      	str	r0, [r4, #28]
 8001706:	6820      	ldr	r0, [r4, #0]
 8001708:	6901      	ldr	r1, [r0, #16]
 800170a:	f011 0f08 	tst.w	r1, #8
 800170e:	bf1c      	itt	ne
 8001710:	68c1      	ldrne	r1, [r0, #12]
 8001712:	f011 0f08 	tstne.w	r1, #8
 8001716:	d015      	beq.n	8001744 <HAL_TIM_IRQHandler+0xbc>
 8001718:	f06f 0108 	mvn.w	r1, #8
 800171c:	6101      	str	r1, [r0, #16]
 800171e:	2104      	movs	r1, #4
 8001720:	61e1      	str	r1, [r4, #28]
 8001722:	69c0      	ldr	r0, [r0, #28]
 8001724:	f010 0f03 	tst.w	r0, #3
 8001728:	d003      	beq.n	8001732 <HAL_TIM_IRQHandler+0xaa>
 800172a:	4620      	mov	r0, r4
 800172c:	f000 f875 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 8001730:	e005      	b.n	800173e <HAL_TIM_IRQHandler+0xb6>
 8001732:	4620      	mov	r0, r4
 8001734:	f000 f872 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 8001738:	4620      	mov	r0, r4
 800173a:	f000 f870 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 800173e:	2000      	movs	r0, #0
 8001740:	61e0      	str	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f10 	tst.w	r1, #16
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f10 	tstne.w	r1, #16
 8001752:	d015      	beq.n	8001780 <HAL_TIM_IRQHandler+0xf8>
 8001754:	f06f 0110 	mvn.w	r1, #16
 8001758:	6101      	str	r1, [r0, #16]
 800175a:	2108      	movs	r1, #8
 800175c:	61e1      	str	r1, [r4, #28]
 800175e:	69c0      	ldr	r0, [r0, #28]
 8001760:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001764:	d003      	beq.n	800176e <HAL_TIM_IRQHandler+0xe6>
 8001766:	4620      	mov	r0, r4
 8001768:	f000 f857 	bl	800181a <HAL_TIM_IC_CaptureCallback>
 800176c:	e005      	b.n	800177a <HAL_TIM_IRQHandler+0xf2>
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f854 	bl	800181c <HAL_TIM_OC_DelayElapsedCallback>
 8001774:	4620      	mov	r0, r4
 8001776:	f000 f852 	bl	800181e <HAL_TIM_PWM_PulseFinishedCallback>
 800177a:	2000      	movs	r0, #0
 800177c:	61e0      	str	r0, [r4, #28]
 800177e:	6820      	ldr	r0, [r4, #0]
 8001780:	6901      	ldr	r1, [r0, #16]
 8001782:	f011 0f01 	tst.w	r1, #1
 8001786:	bf1c      	itt	ne
 8001788:	68c1      	ldrne	r1, [r0, #12]
 800178a:	f011 0f01 	tstne.w	r1, #1
 800178e:	d006      	beq.n	800179e <HAL_TIM_IRQHandler+0x116>
 8001790:	f06f 0101 	mvn.w	r1, #1
 8001794:	6101      	str	r1, [r0, #16]
 8001796:	4620      	mov	r0, r4
 8001798:	f000 f894 	bl	80018c4 <HAL_TIM_PeriodElapsedCallback>
 800179c:	6820      	ldr	r0, [r4, #0]
 800179e:	6901      	ldr	r1, [r0, #16]
 80017a0:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017a4:	bf1c      	itt	ne
 80017a6:	68c1      	ldrne	r1, [r0, #12]
 80017a8:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017ac:	d006      	beq.n	80017bc <HAL_TIM_IRQHandler+0x134>
 80017ae:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017b2:	6101      	str	r1, [r0, #16]
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f835 	bl	8001824 <HAL_TIMEx_BreakCallback>
 80017ba:	6820      	ldr	r0, [r4, #0]
 80017bc:	6901      	ldr	r1, [r0, #16]
 80017be:	f411 7f80 	tst.w	r1, #256	; 0x100
 80017c2:	bf1c      	itt	ne
 80017c4:	68c1      	ldrne	r1, [r0, #12]
 80017c6:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017ca:	d006      	beq.n	80017da <HAL_TIM_IRQHandler+0x152>
 80017cc:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017d0:	6101      	str	r1, [r0, #16]
 80017d2:	4620      	mov	r0, r4
 80017d4:	f000 f827 	bl	8001826 <HAL_TIMEx_Break2Callback>
 80017d8:	6820      	ldr	r0, [r4, #0]
 80017da:	6901      	ldr	r1, [r0, #16]
 80017dc:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017e0:	bf1c      	itt	ne
 80017e2:	68c1      	ldrne	r1, [r0, #12]
 80017e4:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017e8:	d006      	beq.n	80017f8 <HAL_TIM_IRQHandler+0x170>
 80017ea:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017ee:	6101      	str	r1, [r0, #16]
 80017f0:	4620      	mov	r0, r4
 80017f2:	f000 f815 	bl	8001820 <HAL_TIM_TriggerCallback>
 80017f6:	6820      	ldr	r0, [r4, #0]
 80017f8:	6901      	ldr	r1, [r0, #16]
 80017fa:	f011 0f20 	tst.w	r1, #32
 80017fe:	bf1c      	itt	ne
 8001800:	68c1      	ldrne	r1, [r0, #12]
 8001802:	f011 0f20 	tstne.w	r1, #32
 8001806:	d100      	bne.n	800180a <HAL_TIM_IRQHandler+0x182>
 8001808:	bdd0      	pop	{r4, r6, r7, pc}
 800180a:	f06f 0120 	mvn.w	r1, #32
 800180e:	6101      	str	r1, [r0, #16]
 8001810:	4620      	mov	r0, r4
 8001812:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001816:	f000 b804 	b.w	8001822 <HAL_TIMEx_CommutationCallback>

0800181a <HAL_TIM_IC_CaptureCallback>:
 800181a:	4770      	bx	lr

0800181c <HAL_TIM_OC_DelayElapsedCallback>:
 800181c:	4770      	bx	lr

0800181e <HAL_TIM_PWM_PulseFinishedCallback>:
 800181e:	4770      	bx	lr

08001820 <HAL_TIM_TriggerCallback>:
 8001820:	4770      	bx	lr

08001822 <HAL_TIMEx_CommutationCallback>:
 8001822:	4770      	bx	lr

08001824 <HAL_TIMEx_BreakCallback>:
 8001824:	4770      	bx	lr

08001826 <HAL_TIMEx_Break2Callback>:
 8001826:	4770      	bx	lr

08001828 <HAL_InitTick>:
 8001828:	b5b0      	push	{r4, r5, r7, lr}
 800182a:	af02      	add	r7, sp, #8
 800182c:	b086      	sub	sp, #24
 800182e:	4601      	mov	r1, r0
 8001830:	2036      	movs	r0, #54	; 0x36
 8001832:	2200      	movs	r2, #0
 8001834:	2400      	movs	r4, #0
 8001836:	f7ff fc99 	bl	800116c <HAL_NVIC_SetPriority>
 800183a:	2036      	movs	r0, #54	; 0x36
 800183c:	f7ff fcc9 	bl	80011d2 <HAL_NVIC_EnableIRQ>
 8001840:	f241 0058 	movw	r0, #4184	; 0x1058
 8001844:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001848:	6801      	ldr	r1, [r0, #0]
 800184a:	f041 0110 	orr.w	r1, r1, #16
 800184e:	6001      	str	r1, [r0, #0]
 8001850:	4669      	mov	r1, sp
 8001852:	6800      	ldr	r0, [r0, #0]
 8001854:	f000 0010 	and.w	r0, r0, #16
 8001858:	9001      	str	r0, [sp, #4]
 800185a:	9801      	ldr	r0, [sp, #4]
 800185c:	a801      	add	r0, sp, #4
 800185e:	f7ff fe3a 	bl	80014d6 <HAL_RCC_GetClockConfig>
 8001862:	9d04      	ldr	r5, [sp, #16]
 8001864:	f7ff fe0d 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001868:	2d00      	cmp	r5, #0
 800186a:	f640 21a4 	movw	r1, #2724	; 0xaa4
 800186e:	f241 0200 	movw	r2, #4096	; 0x1000
 8001872:	f240 33e7 	movw	r3, #999	; 0x3e7
 8001876:	bf18      	it	ne
 8001878:	2501      	movne	r5, #1
 800187a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800187e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001882:	40a8      	lsls	r0, r5
 8001884:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001888:	618c      	str	r4, [r1, #24]
 800188a:	f2c4 351b 	movt	r5, #17179	; 0x431b
 800188e:	fba0 0505 	umull	r0, r5, r0, r5
 8001892:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001896:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 800189a:	e9c1 2000 	strd	r2, r0, [r1]
 800189e:	4608      	mov	r0, r1
 80018a0:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018a4:	610c      	str	r4, [r1, #16]
 80018a6:	f7ff fe37 	bl	8001518 <HAL_TIM_Base_Init>
 80018aa:	2800      	cmp	r0, #0
 80018ac:	bf1e      	ittt	ne
 80018ae:	2001      	movne	r0, #1
 80018b0:	b006      	addne	sp, #24
 80018b2:	bdb0      	popne	{r4, r5, r7, pc}
 80018b4:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80018b8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018bc:	f7ff fecd 	bl	800165a <HAL_TIM_Base_Start_IT>
 80018c0:	b006      	add	sp, #24
 80018c2:	bdb0      	pop	{r4, r5, r7, pc}

080018c4 <HAL_TIM_PeriodElapsedCallback>:
 80018c4:	f7ff bc34 	b.w	8001130 <HAL_IncTick>

080018c8 <TIM6_DAC_IRQHandler>:
 80018c8:	f640 20a4 	movw	r0, #2724	; 0xaa4
 80018cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018d0:	f7ff beda 	b.w	8001688 <HAL_TIM_IRQHandler>

080018d4 <HAL_UART_Init>:
 80018d4:	b5d0      	push	{r4, r6, r7, lr}
 80018d6:	af02      	add	r7, sp, #8
 80018d8:	4604      	mov	r4, r0
 80018da:	b194      	cbz	r4, 8001902 <HAL_UART_Init+0x2e>
 80018dc:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018de:	b920      	cbnz	r0, 80018ea <HAL_UART_Init+0x16>
 80018e0:	2000      	movs	r0, #0
 80018e2:	6720      	str	r0, [r4, #112]	; 0x70
 80018e4:	4620      	mov	r0, r4
 80018e6:	f000 f826 	bl	8001936 <HAL_UART_MspInit>
 80018ea:	2024      	movs	r0, #36	; 0x24
 80018ec:	6760      	str	r0, [r4, #116]	; 0x74
 80018ee:	6820      	ldr	r0, [r4, #0]
 80018f0:	6801      	ldr	r1, [r0, #0]
 80018f2:	f021 0101 	bic.w	r1, r1, #1
 80018f6:	6001      	str	r1, [r0, #0]
 80018f8:	4620      	mov	r0, r4
 80018fa:	f000 f81d 	bl	8001938 <UART_SetConfig>
 80018fe:	2801      	cmp	r0, #1
 8001900:	d101      	bne.n	8001906 <HAL_UART_Init+0x32>
 8001902:	2001      	movs	r0, #1
 8001904:	bdd0      	pop	{r4, r6, r7, pc}
 8001906:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001908:	2800      	cmp	r0, #0
 800190a:	bf1c      	itt	ne
 800190c:	4620      	movne	r0, r4
 800190e:	f000 f944 	blne	8001b9a <UART_AdvFeatureConfig>
 8001912:	6820      	ldr	r0, [r4, #0]
 8001914:	6841      	ldr	r1, [r0, #4]
 8001916:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 800191a:	6041      	str	r1, [r0, #4]
 800191c:	6881      	ldr	r1, [r0, #8]
 800191e:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001922:	6081      	str	r1, [r0, #8]
 8001924:	6801      	ldr	r1, [r0, #0]
 8001926:	f041 0101 	orr.w	r1, r1, #1
 800192a:	6001      	str	r1, [r0, #0]
 800192c:	4620      	mov	r0, r4
 800192e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001932:	f000 b99d 	b.w	8001c70 <UART_CheckIdleState>

08001936 <HAL_UART_MspInit>:
 8001936:	4770      	bx	lr

08001938 <UART_SetConfig>:
 8001938:	b5b0      	push	{r4, r5, r7, lr}
 800193a:	af02      	add	r7, sp, #8
 800193c:	4604      	mov	r4, r0
 800193e:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001942:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001946:	f241 0c88 	movw	ip, #4232	; 0x1088
 800194a:	6821      	ldr	r1, [r4, #0]
 800194c:	68a0      	ldr	r0, [r4, #8]
 800194e:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001952:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001956:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 800195a:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 800195e:	4310      	orrs	r0, r2
 8001960:	69e2      	ldr	r2, [r4, #28]
 8001962:	4571      	cmp	r1, lr
 8001964:	ea40 0003 	orr.w	r0, r0, r3
 8001968:	680b      	ldr	r3, [r1, #0]
 800196a:	ea40 0002 	orr.w	r0, r0, r2
 800196e:	ea03 0305 	and.w	r3, r3, r5
 8001972:	f04f 0510 	mov.w	r5, #16
 8001976:	ea40 0003 	orr.w	r0, r0, r3
 800197a:	6008      	str	r0, [r1, #0]
 800197c:	6848      	ldr	r0, [r1, #4]
 800197e:	68e3      	ldr	r3, [r4, #12]
 8001980:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001984:	ea40 0003 	orr.w	r0, r0, r3
 8001988:	6048      	str	r0, [r1, #4]
 800198a:	69a0      	ldr	r0, [r4, #24]
 800198c:	bf1c      	itt	ne
 800198e:	6a23      	ldrne	r3, [r4, #32]
 8001990:	4318      	orrne	r0, r3
 8001992:	688b      	ldr	r3, [r1, #8]
 8001994:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001998:	4318      	orrs	r0, r3
 800199a:	f644 73ff 	movw	r3, #20479	; 0x4fff
 800199e:	6088      	str	r0, [r1, #8]
 80019a0:	f242 4000 	movw	r0, #9216	; 0x2400
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	f2c0 00f4 	movt	r0, #244	; 0xf4
 80019ac:	4299      	cmp	r1, r3
 80019ae:	dc15      	bgt.n	80019dc <UART_SetConfig+0xa4>
 80019b0:	f244 4300 	movw	r3, #17408	; 0x4400
 80019b4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019b8:	4299      	cmp	r1, r3
 80019ba:	d024      	beq.n	8001a06 <UART_SetConfig+0xce>
 80019bc:	f644 0300 	movw	r3, #18432	; 0x4800
 80019c0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019c4:	4299      	cmp	r1, r3
 80019c6:	d022      	beq.n	8001a0e <UART_SetConfig+0xd6>
 80019c8:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019cc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019d0:	4299      	cmp	r1, r3
 80019d2:	d131      	bne.n	8001a38 <UART_SetConfig+0x100>
 80019d4:	f8dc 3000 	ldr.w	r3, [ip]
 80019d8:	099d      	lsrs	r5, r3, #6
 80019da:	e023      	b.n	8001a24 <UART_SetConfig+0xec>
 80019dc:	f245 0300 	movw	r3, #20480	; 0x5000
 80019e0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019e4:	4299      	cmp	r1, r3
 80019e6:	d016      	beq.n	8001a16 <UART_SetConfig+0xde>
 80019e8:	4571      	cmp	r1, lr
 80019ea:	d018      	beq.n	8001a1e <UART_SetConfig+0xe6>
 80019ec:	f643 0300 	movw	r3, #14336	; 0x3800
 80019f0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019f4:	4299      	cmp	r1, r3
 80019f6:	d11f      	bne.n	8001a38 <UART_SetConfig+0x100>
 80019f8:	f8dc 5000 	ldr.w	r5, [ip]
 80019fc:	f247 6300 	movw	r3, #30208	; 0x7600
 8001a00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a04:	e012      	b.n	8001a2c <UART_SetConfig+0xf4>
 8001a06:	f8dc 3000 	ldr.w	r3, [ip]
 8001a0a:	089d      	lsrs	r5, r3, #2
 8001a0c:	e00a      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a0e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a12:	091d      	lsrs	r5, r3, #4
 8001a14:	e006      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a16:	f8dc 3000 	ldr.w	r3, [ip]
 8001a1a:	0a1d      	lsrs	r5, r3, #8
 8001a1c:	e002      	b.n	8001a24 <UART_SetConfig+0xec>
 8001a1e:	f8dc 3000 	ldr.w	r3, [ip]
 8001a22:	0a9d      	lsrs	r5, r3, #10
 8001a24:	f247 6310 	movw	r3, #30224	; 0x7610
 8001a28:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a2c:	f005 0503 	and.w	r5, r5, #3
 8001a30:	f085 0502 	eor.w	r5, r5, #2
 8001a34:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a38:	4571      	cmp	r1, lr
 8001a3a:	d012      	beq.n	8001a62 <UART_SetConfig+0x12a>
 8001a3c:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a40:	d11d      	bne.n	8001a7e <UART_SetConfig+0x146>
 8001a42:	f005 001f 	and.w	r0, r5, #31
 8001a46:	2101      	movs	r1, #1
 8001a48:	2808      	cmp	r0, #8
 8001a4a:	f200 809f 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a4e:	e8df f000 	tbb	[pc, r0]
 8001a52:	4005      	.short	0x4005
 8001a54:	9d499d43 	.word	0x9d499d43
 8001a58:	004f9d9d 	.word	0x004f9d9d
 8001a5c:	f7ff fd11 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a60:	e042      	b.n	8001ae8 <UART_SetConfig+0x1b0>
 8001a62:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a66:	2101      	movs	r1, #1
 8001a68:	2d04      	cmp	r5, #4
 8001a6a:	f200 808f 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a6e:	e8df f005 	tbb	[pc, r5]
 8001a72:	1c03      	.short	0x1c03
 8001a74:	001a8d16 	.word	0x001a8d16
 8001a78:	f7ff fd03 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a7c:	e011      	b.n	8001aa2 <UART_SetConfig+0x16a>
 8001a7e:	f005 021f 	and.w	r2, r5, #31
 8001a82:	2101      	movs	r1, #1
 8001a84:	2a08      	cmp	r2, #8
 8001a86:	f200 8081 	bhi.w	8001b8c <UART_SetConfig+0x254>
 8001a8a:	e8df f002 	tbb	[pc, r2]
 8001a8e:	4305      	.short	0x4305
 8001a90:	7f487f46 	.word	0x7f487f46
 8001a94:	004e7f7f 	.word	0x004e7f7f
 8001a98:	f7ff fcf3 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001a9c:	e041      	b.n	8001b22 <UART_SetConfig+0x1ea>
 8001a9e:	f7ff fc91 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001aa2:	b910      	cbnz	r0, 8001aaa <UART_SetConfig+0x172>
 8001aa4:	e071      	b.n	8001b8a <UART_SetConfig+0x252>
 8001aa6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001aaa:	6862      	ldr	r2, [r4, #4]
 8001aac:	2101      	movs	r1, #1
 8001aae:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001ab2:	4298      	cmp	r0, r3
 8001ab4:	d36a      	bcc.n	8001b8c <UART_SetConfig+0x254>
 8001ab6:	0313      	lsls	r3, r2, #12
 8001ab8:	4298      	cmp	r0, r3
 8001aba:	bf9c      	itt	ls
 8001abc:	2101      	movls	r1, #1
 8001abe:	2d04      	cmpls	r5, #4
 8001ac0:	d864      	bhi.n	8001b8c <UART_SetConfig+0x254>
 8001ac2:	e8df f005 	tbb	[pc, r5]
 8001ac6:	3e03      	.short	0x3e03
 8001ac8:	00526345 	.word	0x00526345
 8001acc:	f7ff fcd9 	bl	8001482 <HAL_RCC_GetPCLK1Freq>
 8001ad0:	e040      	b.n	8001b54 <UART_SetConfig+0x21c>
 8001ad2:	f7ff fceb 	bl	80014ac <HAL_RCC_GetPCLK2Freq>
 8001ad6:	e007      	b.n	8001ae8 <UART_SetConfig+0x1b0>
 8001ad8:	6861      	ldr	r1, [r4, #4]
 8001ada:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ade:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001ae2:	e008      	b.n	8001af6 <UART_SetConfig+0x1be>
 8001ae4:	f7ff fc6e 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001ae8:	6861      	ldr	r1, [r4, #4]
 8001aea:	0040      	lsls	r0, r0, #1
 8001aec:	084a      	lsrs	r2, r1, #1
 8001aee:	e003      	b.n	8001af8 <UART_SetConfig+0x1c0>
 8001af0:	6861      	ldr	r1, [r4, #4]
 8001af2:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001af6:	0848      	lsrs	r0, r1, #1
 8001af8:	4410      	add	r0, r2
 8001afa:	fbb0 f0f1 	udiv	r0, r0, r1
 8001afe:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b02:	4001      	ands	r1, r0
 8001b04:	2910      	cmp	r1, #16
 8001b06:	d303      	bcc.n	8001b10 <UART_SetConfig+0x1d8>
 8001b08:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b0c:	4308      	orrs	r0, r1
 8001b0e:	e03a      	b.n	8001b86 <UART_SetConfig+0x24e>
 8001b10:	2101      	movs	r1, #1
 8001b12:	e03b      	b.n	8001b8c <UART_SetConfig+0x254>
 8001b14:	f7ff fcca 	bl	80014ac <HAL_RCC_GetPCLK2Freq>
 8001b18:	e003      	b.n	8001b22 <UART_SetConfig+0x1ea>
 8001b1a:	6862      	ldr	r2, [r4, #4]
 8001b1c:	e008      	b.n	8001b30 <UART_SetConfig+0x1f8>
 8001b1e:	f7ff fc51 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001b22:	6862      	ldr	r2, [r4, #4]
 8001b24:	4601      	mov	r1, r0
 8001b26:	0850      	lsrs	r0, r2, #1
 8001b28:	e003      	b.n	8001b32 <UART_SetConfig+0x1fa>
 8001b2a:	6862      	ldr	r2, [r4, #4]
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	0851      	lsrs	r1, r2, #1
 8001b32:	4408      	add	r0, r1
 8001b34:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b38:	b280      	uxth	r0, r0
 8001b3a:	2810      	cmp	r0, #16
 8001b3c:	d223      	bcs.n	8001b86 <UART_SetConfig+0x24e>
 8001b3e:	2101      	movs	r1, #1
 8001b40:	e024      	b.n	8001b8c <UART_SetConfig+0x254>
 8001b42:	2000      	movs	r0, #0
 8001b44:	2100      	movs	r1, #0
 8001b46:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b4a:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b4e:	e006      	b.n	8001b5e <UART_SetConfig+0x226>
 8001b50:	f7ff fc38 	bl	80013c4 <HAL_RCC_GetSysClockFreq>
 8001b54:	6862      	ldr	r2, [r4, #4]
 8001b56:	0e01      	lsrs	r1, r0, #24
 8001b58:	0853      	lsrs	r3, r2, #1
 8001b5a:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b5e:	f141 0100 	adc.w	r1, r1, #0
 8001b62:	2300      	movs	r3, #0
 8001b64:	f7fe ffb8 	bl	8000ad8 <__aeabi_uldivmod>
 8001b68:	e005      	b.n	8001b76 <UART_SetConfig+0x23e>
 8001b6a:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b6e:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b72:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b76:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b7a:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b7e:	f2c0 020f 	movt	r2, #15
 8001b82:	4291      	cmp	r1, r2
 8001b84:	d807      	bhi.n	8001b96 <UART_SetConfig+0x25e>
 8001b86:	6821      	ldr	r1, [r4, #0]
 8001b88:	60c8      	str	r0, [r1, #12]
 8001b8a:	2100      	movs	r1, #0
 8001b8c:	2000      	movs	r0, #0
 8001b8e:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b92:	4608      	mov	r0, r1
 8001b94:	bdb0      	pop	{r4, r5, r7, pc}
 8001b96:	2101      	movs	r1, #1
 8001b98:	e7f8      	b.n	8001b8c <UART_SetConfig+0x254>

08001b9a <UART_AdvFeatureConfig>:
 8001b9a:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b9c:	f011 0f01 	tst.w	r1, #1
 8001ba0:	d008      	beq.n	8001bb4 <UART_AdvFeatureConfig+0x1a>
 8001ba2:	6802      	ldr	r2, [r0, #0]
 8001ba4:	6853      	ldr	r3, [r2, #4]
 8001ba6:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001baa:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001bae:	ea43 030c 	orr.w	r3, r3, ip
 8001bb2:	6053      	str	r3, [r2, #4]
 8001bb4:	078a      	lsls	r2, r1, #30
 8001bb6:	d508      	bpl.n	8001bca <UART_AdvFeatureConfig+0x30>
 8001bb8:	6802      	ldr	r2, [r0, #0]
 8001bba:	6853      	ldr	r3, [r2, #4]
 8001bbc:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001bc0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001bc4:	ea43 030c 	orr.w	r3, r3, ip
 8001bc8:	6053      	str	r3, [r2, #4]
 8001bca:	074a      	lsls	r2, r1, #29
 8001bcc:	d508      	bpl.n	8001be0 <UART_AdvFeatureConfig+0x46>
 8001bce:	6802      	ldr	r2, [r0, #0]
 8001bd0:	6853      	ldr	r3, [r2, #4]
 8001bd2:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bd6:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bda:	ea43 030c 	orr.w	r3, r3, ip
 8001bde:	6053      	str	r3, [r2, #4]
 8001be0:	070a      	lsls	r2, r1, #28
 8001be2:	d508      	bpl.n	8001bf6 <UART_AdvFeatureConfig+0x5c>
 8001be4:	6802      	ldr	r2, [r0, #0]
 8001be6:	6853      	ldr	r3, [r2, #4]
 8001be8:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bec:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bf0:	ea43 030c 	orr.w	r3, r3, ip
 8001bf4:	6053      	str	r3, [r2, #4]
 8001bf6:	06ca      	lsls	r2, r1, #27
 8001bf8:	d508      	bpl.n	8001c0c <UART_AdvFeatureConfig+0x72>
 8001bfa:	6802      	ldr	r2, [r0, #0]
 8001bfc:	6893      	ldr	r3, [r2, #8]
 8001bfe:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c02:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c06:	ea43 030c 	orr.w	r3, r3, ip
 8001c0a:	6093      	str	r3, [r2, #8]
 8001c0c:	068a      	lsls	r2, r1, #26
 8001c0e:	d508      	bpl.n	8001c22 <UART_AdvFeatureConfig+0x88>
 8001c10:	6802      	ldr	r2, [r0, #0]
 8001c12:	6893      	ldr	r3, [r2, #8]
 8001c14:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c18:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c1c:	ea43 030c 	orr.w	r3, r3, ip
 8001c20:	6093      	str	r3, [r2, #8]
 8001c22:	b580      	push	{r7, lr}
 8001c24:	466f      	mov	r7, sp
 8001c26:	064a      	lsls	r2, r1, #25
 8001c28:	d515      	bpl.n	8001c56 <UART_AdvFeatureConfig+0xbc>
 8001c2a:	f8d0 e000 	ldr.w	lr, [r0]
 8001c2e:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c32:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c34:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c38:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c3c:	ea42 0203 	orr.w	r2, r2, r3
 8001c40:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c44:	d107      	bne.n	8001c56 <UART_AdvFeatureConfig+0xbc>
 8001c46:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c4a:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c4c:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c50:	431a      	orrs	r2, r3
 8001c52:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c56:	0609      	lsls	r1, r1, #24
 8001c58:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c5c:	bf58      	it	pl
 8001c5e:	4770      	bxpl	lr
 8001c60:	6801      	ldr	r1, [r0, #0]
 8001c62:	684a      	ldr	r2, [r1, #4]
 8001c64:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c66:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c6a:	4310      	orrs	r0, r2
 8001c6c:	6048      	str	r0, [r1, #4]
 8001c6e:	4770      	bx	lr

08001c70 <UART_CheckIdleState>:
 8001c70:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c72:	af03      	add	r7, sp, #12
 8001c74:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c78:	4604      	mov	r4, r0
 8001c7a:	2000      	movs	r0, #0
 8001c7c:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c7e:	f7ff fa5f 	bl	8001140 <HAL_GetTick>
 8001c82:	4605      	mov	r5, r0
 8001c84:	6820      	ldr	r0, [r4, #0]
 8001c86:	6801      	ldr	r1, [r0, #0]
 8001c88:	f011 0f08 	tst.w	r1, #8
 8001c8c:	d00f      	beq.n	8001cae <UART_CheckIdleState+0x3e>
 8001c8e:	69c1      	ldr	r1, [r0, #28]
 8001c90:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c94:	d10b      	bne.n	8001cae <UART_CheckIdleState+0x3e>
 8001c96:	2600      	movs	r6, #0
 8001c98:	f7ff fa52 	bl	8001140 <HAL_GetTick>
 8001c9c:	1b41      	subs	r1, r0, r5
 8001c9e:	6820      	ldr	r0, [r4, #0]
 8001ca0:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ca4:	d11b      	bne.n	8001cde <UART_CheckIdleState+0x6e>
 8001ca6:	69c1      	ldr	r1, [r0, #28]
 8001ca8:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001cac:	d0f4      	beq.n	8001c98 <UART_CheckIdleState+0x28>
 8001cae:	6801      	ldr	r1, [r0, #0]
 8001cb0:	f011 0f04 	tst.w	r1, #4
 8001cb4:	d101      	bne.n	8001cba <UART_CheckIdleState+0x4a>
 8001cb6:	2600      	movs	r6, #0
 8001cb8:	e01a      	b.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cba:	69c0      	ldr	r0, [r0, #28]
 8001cbc:	2600      	movs	r6, #0
 8001cbe:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cc2:	d115      	bne.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cc4:	f7ff fa3c 	bl	8001140 <HAL_GetTick>
 8001cc8:	1b41      	subs	r1, r0, r5
 8001cca:	6820      	ldr	r0, [r4, #0]
 8001ccc:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001cd0:	d105      	bne.n	8001cde <UART_CheckIdleState+0x6e>
 8001cd2:	69c0      	ldr	r0, [r0, #28]
 8001cd4:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cd8:	d0f4      	beq.n	8001cc4 <UART_CheckIdleState+0x54>
 8001cda:	2600      	movs	r6, #0
 8001cdc:	e008      	b.n	8001cf0 <UART_CheckIdleState+0x80>
 8001cde:	6801      	ldr	r1, [r0, #0]
 8001ce0:	2603      	movs	r6, #3
 8001ce2:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001ce6:	6001      	str	r1, [r0, #0]
 8001ce8:	6881      	ldr	r1, [r0, #8]
 8001cea:	f021 0101 	bic.w	r1, r1, #1
 8001cee:	6081      	str	r1, [r0, #8]
 8001cf0:	2020      	movs	r0, #32
 8001cf2:	6760      	str	r0, [r4, #116]	; 0x74
 8001cf4:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cf6:	2000      	movs	r0, #0
 8001cf8:	6720      	str	r0, [r4, #112]	; 0x70
 8001cfa:	4630      	mov	r0, r6
 8001cfc:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d00:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d02 <HAL_UART_Transmit>:
 8001d02:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d04:	af03      	add	r7, sp, #12
 8001d06:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001d0a:	b081      	sub	sp, #4
 8001d0c:	4604      	mov	r4, r0
 8001d0e:	461d      	mov	r5, r3
 8001d10:	4616      	mov	r6, r2
 8001d12:	4689      	mov	r9, r1
 8001d14:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d16:	2820      	cmp	r0, #32
 8001d18:	d109      	bne.n	8001d2e <HAL_UART_Transmit+0x2c>
 8001d1a:	f1b9 0f00 	cmp.w	r9, #0
 8001d1e:	f04f 0001 	mov.w	r0, #1
 8001d22:	bf18      	it	ne
 8001d24:	2e00      	cmpne	r6, #0
 8001d26:	d003      	beq.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001d28:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d2a:	2801      	cmp	r0, #1
 8001d2c:	d104      	bne.n	8001d38 <HAL_UART_Transmit+0x36>
 8001d2e:	2002      	movs	r0, #2
 8001d30:	b001      	add	sp, #4
 8001d32:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d36:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d38:	2001      	movs	r0, #1
 8001d3a:	6720      	str	r0, [r4, #112]	; 0x70
 8001d3c:	2000      	movs	r0, #0
 8001d3e:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d40:	2021      	movs	r0, #33	; 0x21
 8001d42:	6760      	str	r0, [r4, #116]	; 0x74
 8001d44:	f7ff f9fc 	bl	8001140 <HAL_GetTick>
 8001d48:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d4c:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d50:	4680      	mov	r8, r0
 8001d52:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d56:	f8d4 b000 	ldr.w	fp, [r4]
 8001d5a:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d5e:	2900      	cmp	r1, #0
 8001d60:	d040      	beq.n	8001de4 <HAL_UART_Transmit+0xe2>
 8001d62:	f105 0a01 	add.w	sl, r5, #1
 8001d66:	0600      	lsls	r0, r0, #24
 8001d68:	d410      	bmi.n	8001d8c <HAL_UART_Transmit+0x8a>
 8001d6a:	465e      	mov	r6, fp
 8001d6c:	f1ba 0f00 	cmp.w	sl, #0
 8001d70:	d007      	beq.n	8001d82 <HAL_UART_Transmit+0x80>
 8001d72:	b33d      	cbz	r5, 8001dc4 <HAL_UART_Transmit+0xc2>
 8001d74:	f7ff f9e4 	bl	8001140 <HAL_GetTick>
 8001d78:	6826      	ldr	r6, [r4, #0]
 8001d7a:	eba0 0008 	sub.w	r0, r0, r8
 8001d7e:	42a8      	cmp	r0, r5
 8001d80:	d821      	bhi.n	8001dc6 <HAL_UART_Transmit+0xc4>
 8001d82:	69f0      	ldr	r0, [r6, #28]
 8001d84:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d88:	d0f0      	beq.n	8001d6c <HAL_UART_Transmit+0x6a>
 8001d8a:	e000      	b.n	8001d8e <HAL_UART_Transmit+0x8c>
 8001d8c:	465e      	mov	r6, fp
 8001d8e:	68a0      	ldr	r0, [r4, #8]
 8001d90:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d94:	bf04      	itt	eq
 8001d96:	6920      	ldreq	r0, [r4, #16]
 8001d98:	2800      	cmpeq	r0, #0
 8001d9a:	d002      	beq.n	8001da2 <HAL_UART_Transmit+0xa0>
 8001d9c:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001da0:	e003      	b.n	8001daa <HAL_UART_Transmit+0xa8>
 8001da2:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001da6:	f36f 205f 	bfc	r0, #9, #23
 8001daa:	8530      	strh	r0, [r6, #40]	; 0x28
 8001dac:	46b3      	mov	fp, r6
 8001dae:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001db2:	3801      	subs	r0, #1
 8001db4:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001db8:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dbc:	69f0      	ldr	r0, [r6, #28]
 8001dbe:	2900      	cmp	r1, #0
 8001dc0:	d1d1      	bne.n	8001d66 <HAL_UART_Transmit+0x64>
 8001dc2:	e010      	b.n	8001de6 <HAL_UART_Transmit+0xe4>
 8001dc4:	465e      	mov	r6, fp
 8001dc6:	6830      	ldr	r0, [r6, #0]
 8001dc8:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001dcc:	6030      	str	r0, [r6, #0]
 8001dce:	68b0      	ldr	r0, [r6, #8]
 8001dd0:	f020 0001 	bic.w	r0, r0, #1
 8001dd4:	60b0      	str	r0, [r6, #8]
 8001dd6:	2020      	movs	r0, #32
 8001dd8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dda:	67a0      	str	r0, [r4, #120]	; 0x78
 8001ddc:	2000      	movs	r0, #0
 8001dde:	6720      	str	r0, [r4, #112]	; 0x70
 8001de0:	2003      	movs	r0, #3
 8001de2:	e7a5      	b.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001de4:	465e      	mov	r6, fp
 8001de6:	0640      	lsls	r0, r0, #25
 8001de8:	d411      	bmi.n	8001e0e <HAL_UART_Transmit+0x10c>
 8001dea:	f105 0901 	add.w	r9, r5, #1
 8001dee:	4630      	mov	r0, r6
 8001df0:	f1b9 0f00 	cmp.w	r9, #0
 8001df4:	d007      	beq.n	8001e06 <HAL_UART_Transmit+0x104>
 8001df6:	b17d      	cbz	r5, 8001e18 <HAL_UART_Transmit+0x116>
 8001df8:	f7ff f9a2 	bl	8001140 <HAL_GetTick>
 8001dfc:	eba0 0108 	sub.w	r1, r0, r8
 8001e00:	6820      	ldr	r0, [r4, #0]
 8001e02:	42a9      	cmp	r1, r5
 8001e04:	d809      	bhi.n	8001e1a <HAL_UART_Transmit+0x118>
 8001e06:	69c1      	ldr	r1, [r0, #28]
 8001e08:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e0c:	d0f0      	beq.n	8001df0 <HAL_UART_Transmit+0xee>
 8001e0e:	2020      	movs	r0, #32
 8001e10:	6760      	str	r0, [r4, #116]	; 0x74
 8001e12:	2000      	movs	r0, #0
 8001e14:	6720      	str	r0, [r4, #112]	; 0x70
 8001e16:	e78b      	b.n	8001d30 <HAL_UART_Transmit+0x2e>
 8001e18:	4630      	mov	r0, r6
 8001e1a:	6801      	ldr	r1, [r0, #0]
 8001e1c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e20:	6001      	str	r1, [r0, #0]
 8001e22:	6881      	ldr	r1, [r0, #8]
 8001e24:	f021 0101 	bic.w	r1, r1, #1
 8001e28:	6081      	str	r1, [r0, #8]
 8001e2a:	e7d4      	b.n	8001dd6 <HAL_UART_Transmit+0xd4>

08001e2c <BSP_COM_Init>:
 8001e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e2e:	af03      	add	r7, sp, #12
 8001e30:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e34:	b086      	sub	sp, #24
 8001e36:	4605      	mov	r5, r0
 8001e38:	4688      	mov	r8, r1
 8001e3a:	b9f5      	cbnz	r5, 8001e7a <BSP_COM_Init+0x4e>
 8001e3c:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e40:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e44:	6801      	ldr	r1, [r0, #0]
 8001e46:	f041 0102 	orr.w	r1, r1, #2
 8001e4a:	6001      	str	r1, [r0, #0]
 8001e4c:	6801      	ldr	r1, [r0, #0]
 8001e4e:	f001 0102 	and.w	r1, r1, #2
 8001e52:	9101      	str	r1, [sp, #4]
 8001e54:	9901      	ldr	r1, [sp, #4]
 8001e56:	6801      	ldr	r1, [r0, #0]
 8001e58:	f041 0102 	orr.w	r1, r1, #2
 8001e5c:	6001      	str	r1, [r0, #0]
 8001e5e:	6801      	ldr	r1, [r0, #0]
 8001e60:	f001 0102 	and.w	r1, r1, #2
 8001e64:	9101      	str	r1, [sp, #4]
 8001e66:	9901      	ldr	r1, [sp, #4]
 8001e68:	6941      	ldr	r1, [r0, #20]
 8001e6a:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e6e:	6141      	str	r1, [r0, #20]
 8001e70:	6940      	ldr	r0, [r0, #20]
 8001e72:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e76:	9001      	str	r0, [sp, #4]
 8001e78:	9801      	ldr	r0, [sp, #4]
 8001e7a:	2040      	movs	r0, #64	; 0x40
 8001e7c:	2402      	movs	r4, #2
 8001e7e:	ae01      	add	r6, sp, #4
 8001e80:	f04f 0907 	mov.w	r9, #7
 8001e84:	9001      	str	r0, [sp, #4]
 8001e86:	2000      	movs	r0, #0
 8001e88:	9402      	str	r4, [sp, #8]
 8001e8a:	9404      	str	r4, [sp, #16]
 8001e8c:	4631      	mov	r1, r6
 8001e8e:	9003      	str	r0, [sp, #12]
 8001e90:	f240 000c 	movw	r0, #12
 8001e94:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e98:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e9c:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea0:	f7ff f9a7 	bl	80011f2 <HAL_GPIO_Init>
 8001ea4:	2080      	movs	r0, #128	; 0x80
 8001ea6:	4631      	mov	r1, r6
 8001ea8:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001eac:	f240 0010 	movw	r0, #16
 8001eb0:	f8cd 9014 	str.w	r9, [sp, #20]
 8001eb4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eb8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ebc:	f7ff f999 	bl	80011f2 <HAL_GPIO_Init>
 8001ec0:	f240 0008 	movw	r0, #8
 8001ec4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ec8:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ecc:	f8c8 0000 	str.w	r0, [r8]
 8001ed0:	4640      	mov	r0, r8
 8001ed2:	f7ff fcff 	bl	80018d4 <HAL_UART_Init>
 8001ed6:	b006      	add	sp, #24
 8001ed8:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001edc:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ede <initialise_benchmark>:
 8001ede:	4770      	bx	lr

08001ee0 <benchmark>:
 8001ee0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ee2:	af03      	add	r7, sp, #12
 8001ee4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ee8:	b081      	sub	sp, #4
 8001eea:	ed2d 8b08 	vpush	{d8-d11}
 8001eee:	b086      	sub	sp, #24
 8001ef0:	ed9f 0bb9 	vldr	d0, [pc, #740]	; 80021d8 <benchmark+0x2f8>
 8001ef4:	f640 20e8 	movw	r0, #2792	; 0xae8
 8001ef8:	2600      	movs	r6, #0
 8001efa:	ed9f 8bb5 	vldr	d8, [pc, #724]	; 80021d0 <benchmark+0x2f0>
 8001efe:	f241 49c7 	movw	r9, #5319	; 0x14c7
 8001f02:	f04f 0800 	mov.w	r8, #0
 8001f06:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f0a:	f2c1 0931 	movt	r9, #4145	; 0x1031
 8001f0e:	6006      	str	r6, [r0, #0]
 8001f10:	ec50 1b10 	vmov	r1, r0, d0
 8001f14:	ed9f 0bb2 	vldr	d0, [pc, #712]	; 80021e0 <benchmark+0x300>
 8001f18:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8001f1c:	ec5b 0b10 	vmov	r0, fp, d0
 8001f20:	9003      	str	r0, [sp, #12]
 8001f22:	2085      	movs	r0, #133	; 0x85
 8001f24:	fb08 f000 	mul.w	r0, r8, r0
 8001f28:	3051      	adds	r0, #81	; 0x51
 8001f2a:	fb50 f109 	smmul	r1, r0, r9
 8001f2e:	124a      	asrs	r2, r1, #9
 8001f30:	eb02 71d1 	add.w	r1, r2, r1, lsr #31
 8001f34:	f641 729f 	movw	r2, #8095	; 0x1f9f
 8001f38:	fb01 0812 	mls	r8, r1, r2, r0
 8001f3c:	4640      	mov	r0, r8
 8001f3e:	f7fe fab1 	bl	80004a4 <__aeabi_i2d>
 8001f42:	e9dd 3204 	ldrd	r3, r2, [sp, #16]
 8001f46:	f7fe fc41 	bl	80007cc <__aeabi_ddiv>
 8001f4a:	ec55 4b18 	vmov	r4, r5, d8
 8001f4e:	4602      	mov	r2, r0
 8001f50:	460b      	mov	r3, r1
 8001f52:	4620      	mov	r0, r4
 8001f54:	4629      	mov	r1, r5
 8001f56:	f7fe f959 	bl	800020c <__adddf3>
 8001f5a:	f640 6220 	movw	r2, #3616	; 0xe20
 8001f5e:	46ca      	mov	sl, r9
 8001f60:	ec41 0b19 	vmov	d9, r0, r1
 8001f64:	4620      	mov	r0, r4
 8001f66:	4629      	mov	r1, r5
 8001f68:	465b      	mov	r3, fp
 8001f6a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f6e:	eb02 0906 	add.w	r9, r2, r6
 8001f72:	9a03      	ldr	r2, [sp, #12]
 8001f74:	f7fe f94a 	bl	800020c <__adddf3>
 8001f78:	3608      	adds	r6, #8
 8001f7a:	ed89 9b00 	vstr	d9, [r9]
 8001f7e:	ec41 0b18 	vmov	d8, r0, r1
 8001f82:	46d1      	mov	r9, sl
 8001f84:	f5b6 7f48 	cmp.w	r6, #800	; 0x320
 8001f88:	d1cb      	bne.n	8001f22 <benchmark+0x42>
 8001f8a:	ed9f ab91 	vldr	d10, [pc, #580]	; 80021d0 <benchmark+0x2f0>
 8001f8e:	f640 21e8 	movw	r1, #2792	; 0xae8
 8001f92:	f640 6418 	movw	r4, #3608	; 0xe18
 8001f96:	f8cd b000 	str.w	fp, [sp]
 8001f9a:	f640 6b20 	movw	fp, #3616	; 0xe20
 8001f9e:	f641 203b 	movw	r0, #6715	; 0x1a3b
 8001fa2:	2500      	movs	r5, #0
 8001fa4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fa8:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8001fac:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8001fb0:	6008      	str	r0, [r1, #0]
 8001fb2:	e9c4 5500 	strd	r5, r5, [r4]
 8001fb6:	eb0b 0005 	add.w	r0, fp, r5
 8001fba:	ed90 0b00 	vldr	d0, [r0]
 8001fbe:	ec51 0b1a 	vmov	r0, r1, d10
 8001fc2:	ec53 2b10 	vmov	r2, r3, d0
 8001fc6:	f7fe f921 	bl	800020c <__adddf3>
 8001fca:	3508      	adds	r5, #8
 8001fcc:	ec41 0b1a 	vmov	d10, r0, r1
 8001fd0:	f5b5 7f48 	cmp.w	r5, #800	; 0x320
 8001fd4:	d1ef      	bne.n	8001fb6 <benchmark+0xd6>
 8001fd6:	ed9f 0b84 	vldr	d0, [pc, #528]	; 80021e8 <benchmark+0x308>
 8001fda:	ec53 5b10 	vmov	r5, r3, d0
 8001fde:	462a      	mov	r2, r5
 8001fe0:	9302      	str	r3, [sp, #8]
 8001fe2:	f7fe fbf3 	bl	80007cc <__aeabi_ddiv>
 8001fe6:	ed9f 9b7a 	vldr	d9, [pc, #488]	; 80021d0 <benchmark+0x2f0>
 8001fea:	4606      	mov	r6, r0
 8001fec:	4688      	mov	r8, r1
 8001fee:	ed84 ab00 	vstr	d10, [r4]
 8001ff2:	2400      	movs	r4, #0
 8001ff4:	ec48 6b18 	vmov	d8, r6, r8
 8001ff8:	eb0b 0004 	add.w	r0, fp, r4
 8001ffc:	4632      	mov	r2, r6
 8001ffe:	4643      	mov	r3, r8
 8002000:	ed90 0b00 	vldr	d0, [r0]
 8002004:	ec51 0b10 	vmov	r0, r1, d0
 8002008:	f7fe f8fe 	bl	8000208 <__aeabi_dsub>
 800200c:	4602      	mov	r2, r0
 800200e:	460b      	mov	r3, r1
 8002010:	f7fe fab2 	bl	8000578 <__aeabi_dmul>
 8002014:	4602      	mov	r2, r0
 8002016:	460b      	mov	r3, r1
 8002018:	ec51 0b19 	vmov	r0, r1, d9
 800201c:	f7fe f8f6 	bl	800020c <__adddf3>
 8002020:	3408      	adds	r4, #8
 8002022:	ec41 0b19 	vmov	d9, r0, r1
 8002026:	f5b4 7f48 	cmp.w	r4, #800	; 0x320
 800202a:	d1e5      	bne.n	8001ff8 <benchmark+0x118>
 800202c:	9b02      	ldr	r3, [sp, #8]
 800202e:	462a      	mov	r2, r5
 8002030:	9501      	str	r5, [sp, #4]
 8002032:	f7fe fbcb 	bl	80007cc <__aeabi_ddiv>
 8002036:	ed9f ab66 	vldr	d10, [pc, #408]	; 80021d0 <benchmark+0x2f0>
 800203a:	ec41 0b19 	vmov	d9, r0, r1
 800203e:	ec53 2b1a 	vmov	r2, r3, d10
 8002042:	f7fe fd0b 	bl	8000a5c <__aeabi_dcmplt>
 8002046:	2800      	cmp	r0, #0
 8002048:	f040 80ab 	bne.w	80021a2 <benchmark+0x2c2>
 800204c:	f641 2b3b 	movw	fp, #6715	; 0x1a3b
 8002050:	f8dd 8000 	ldr.w	r8, [sp]
 8002054:	2600      	movs	r6, #0
 8002056:	2085      	movs	r0, #133	; 0x85
 8002058:	fb0b f000 	mul.w	r0, fp, r0
 800205c:	3051      	adds	r0, #81	; 0x51
 800205e:	fb50 f109 	smmul	r1, r0, r9
 8002062:	124a      	asrs	r2, r1, #9
 8002064:	eb02 71d1 	add.w	r1, r2, r1, lsr #31
 8002068:	f641 729f 	movw	r2, #8095	; 0x1f9f
 800206c:	fb01 0b12 	mls	fp, r1, r2, r0
 8002070:	4658      	mov	r0, fp
 8002072:	f7fe fa17 	bl	80004a4 <__aeabi_i2d>
 8002076:	e9dd 3204 	ldrd	r3, r2, [sp, #16]
 800207a:	f7fe fba7 	bl	80007cc <__aeabi_ddiv>
 800207e:	ec55 4b1a 	vmov	r4, r5, d10
 8002082:	4602      	mov	r2, r0
 8002084:	460b      	mov	r3, r1
 8002086:	4620      	mov	r0, r4
 8002088:	4629      	mov	r1, r5
 800208a:	f7fe f8bf 	bl	800020c <__adddf3>
 800208e:	f640 22f0 	movw	r2, #2800	; 0xaf0
 8002092:	ec41 0b19 	vmov	d9, r0, r1
 8002096:	4620      	mov	r0, r4
 8002098:	4629      	mov	r1, r5
 800209a:	4643      	mov	r3, r8
 800209c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020a0:	eb02 0906 	add.w	r9, r2, r6
 80020a4:	9a03      	ldr	r2, [sp, #12]
 80020a6:	f7fe f8b1 	bl	800020c <__adddf3>
 80020aa:	3608      	adds	r6, #8
 80020ac:	ed89 9b00 	vstr	d9, [r9]
 80020b0:	ec41 0b1a 	vmov	d10, r0, r1
 80020b4:	46d1      	mov	r9, sl
 80020b6:	f5b6 7f48 	cmp.w	r6, #800	; 0x320
 80020ba:	d1cc      	bne.n	8002056 <benchmark+0x176>
 80020bc:	ed9f bb44 	vldr	d11, [pc, #272]	; 80021d0 <benchmark+0x2f0>
 80020c0:	f640 20e8 	movw	r0, #2792	; 0xae8
 80020c4:	f241 1640 	movw	r6, #4416	; 0x1140
 80020c8:	f640 29f0 	movw	r9, #2800	; 0xaf0
 80020cc:	2400      	movs	r4, #0
 80020ce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020d2:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80020d6:	f2c2 0900 	movt	r9, #8192	; 0x2000
 80020da:	f8c0 b000 	str.w	fp, [r0]
 80020de:	e9c6 4400 	strd	r4, r4, [r6]
 80020e2:	eb09 0004 	add.w	r0, r9, r4
 80020e6:	ed90 0b00 	vldr	d0, [r0]
 80020ea:	ec51 0b1b 	vmov	r0, r1, d11
 80020ee:	ec53 2b10 	vmov	r2, r3, d0
 80020f2:	f7fe f88b 	bl	800020c <__adddf3>
 80020f6:	3408      	adds	r4, #8
 80020f8:	ec41 0b1b 	vmov	d11, r0, r1
 80020fc:	f5b4 7f48 	cmp.w	r4, #800	; 0x320
 8002100:	d1ef      	bne.n	80020e2 <benchmark+0x202>
 8002102:	f8dd 8004 	ldr.w	r8, [sp, #4]
 8002106:	9b02      	ldr	r3, [sp, #8]
 8002108:	4642      	mov	r2, r8
 800210a:	f7fe fb5f 	bl	80007cc <__aeabi_ddiv>
 800210e:	ed9f ab30 	vldr	d10, [pc, #192]	; 80021d0 <benchmark+0x2f0>
 8002112:	4604      	mov	r4, r0
 8002114:	460d      	mov	r5, r1
 8002116:	ed86 bb00 	vstr	d11, [r6]
 800211a:	2600      	movs	r6, #0
 800211c:	ec45 4b19 	vmov	d9, r4, r5
 8002120:	eb09 0006 	add.w	r0, r9, r6
 8002124:	4622      	mov	r2, r4
 8002126:	462b      	mov	r3, r5
 8002128:	ed90 0b00 	vldr	d0, [r0]
 800212c:	ec51 0b10 	vmov	r0, r1, d0
 8002130:	f7fe f86a 	bl	8000208 <__aeabi_dsub>
 8002134:	4602      	mov	r2, r0
 8002136:	460b      	mov	r3, r1
 8002138:	f7fe fa1e 	bl	8000578 <__aeabi_dmul>
 800213c:	4602      	mov	r2, r0
 800213e:	460b      	mov	r3, r1
 8002140:	ec51 0b1a 	vmov	r0, r1, d10
 8002144:	f7fe f862 	bl	800020c <__adddf3>
 8002148:	3608      	adds	r6, #8
 800214a:	ec41 0b1a 	vmov	d10, r0, r1
 800214e:	f5b6 7f48 	cmp.w	r6, #800	; 0x320
 8002152:	d1e5      	bne.n	8002120 <benchmark+0x240>
 8002154:	9b02      	ldr	r3, [sp, #8]
 8002156:	4642      	mov	r2, r8
 8002158:	f7fe fb38 	bl	80007cc <__aeabi_ddiv>
 800215c:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 80021d0 <benchmark+0x2f0>
 8002160:	ec41 0b1a 	vmov	d10, r0, r1
 8002164:	ec53 2b10 	vmov	r2, r3, d0
 8002168:	f7fe fc78 	bl	8000a5c <__aeabi_dcmplt>
 800216c:	bb30      	cbnz	r0, 80021bc <benchmark+0x2dc>
 800216e:	f640 6020 	movw	r0, #3616	; 0xe20
 8002172:	f640 21f0 	movw	r1, #2800	; 0xaf0
 8002176:	eeb0 0a48 	vmov.f32	s0, s16
 800217a:	eeb0 1a49 	vmov.f32	s2, s18
 800217e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002182:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002186:	eef0 0a68 	vmov.f32	s1, s17
 800218a:	eef0 1a69 	vmov.f32	s3, s19
 800218e:	f000 f82f 	bl	80021f0 <Calc_LinCorrCoef>
 8002192:	2000      	movs	r0, #0
 8002194:	b006      	add	sp, #24
 8002196:	ecbd 8b08 	vpop	{d8-d11}
 800219a:	b001      	add	sp, #4
 800219c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80021a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80021a2:	eeb0 0a49 	vmov.f32	s0, s18
 80021a6:	eef0 0a69 	vmov.f32	s1, s19
 80021aa:	f000 fa0d 	bl	80025c8 <sqrt>
 80021ae:	f640 20e8 	movw	r0, #2792	; 0xae8
 80021b2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021b6:	f8d0 b000 	ldr.w	fp, [r0]
 80021ba:	e749      	b.n	8002050 <benchmark+0x170>
 80021bc:	eeb0 0a4a 	vmov.f32	s0, s20
 80021c0:	eef0 0a6a 	vmov.f32	s1, s21
 80021c4:	f000 fa00 	bl	80025c8 <sqrt>
 80021c8:	e7d1      	b.n	800216e <benchmark+0x28e>
 80021ca:	bf00      	nop
 80021cc:	bf00      	nop
 80021ce:	bf00      	nop
	...
 80021dc:	40bf9f00 	.word	0x40bf9f00
 80021e0:	00000000 	.word	0x00000000
 80021e4:	3ff00000 	.word	0x3ff00000
 80021e8:	00000000 	.word	0x00000000
 80021ec:	40590000 	.word	0x40590000

080021f0 <Calc_LinCorrCoef>:
 80021f0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021f2:	af03      	add	r7, sp, #12
 80021f4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80021f8:	b081      	sub	sp, #4
 80021fa:	ed2d 8b06 	vpush	{d8-d10}
 80021fe:	b088      	sub	sp, #32
 8002200:	ed9f 8b45 	vldr	d8, [pc, #276]	; 8002318 <Calc_LinCorrCoef+0x128>
 8002204:	e9cd 0105 	strd	r0, r1, [sp, #20]
 8002208:	ec51 0b10 	vmov	r0, r1, d0
 800220c:	2600      	movs	r6, #0
 800220e:	e9cd 1003 	strd	r1, r0, [sp, #12]
 8002212:	ec51 0b11 	vmov	r0, r1, d1
 8002216:	e9cd 1001 	strd	r1, r0, [sp, #4]
 800221a:	eeb0 9a48 	vmov.f32	s18, s16
 800221e:	eeb0 aa48 	vmov.f32	s20, s16
 8002222:	eef0 9a68 	vmov.f32	s19, s17
 8002226:	eef0 aa68 	vmov.f32	s21, s17
 800222a:	9805      	ldr	r0, [sp, #20]
 800222c:	4430      	add	r0, r6
 800222e:	ed90 0b00 	vldr	d0, [r0]
 8002232:	e9dd 3203 	ldrd	r3, r2, [sp, #12]
 8002236:	ec51 0b10 	vmov	r0, r1, d0
 800223a:	f7fd ffe5 	bl	8000208 <__aeabi_dsub>
 800223e:	4683      	mov	fp, r0
 8002240:	9806      	ldr	r0, [sp, #24]
 8002242:	460c      	mov	r4, r1
 8002244:	4430      	add	r0, r6
 8002246:	ed90 0b00 	vldr	d0, [r0]
 800224a:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
 800224e:	ec51 0b10 	vmov	r0, r1, d0
 8002252:	f7fd ffd9 	bl	8000208 <__aeabi_dsub>
 8002256:	4681      	mov	r9, r0
 8002258:	468a      	mov	sl, r1
 800225a:	4658      	mov	r0, fp
 800225c:	4621      	mov	r1, r4
 800225e:	464a      	mov	r2, r9
 8002260:	4653      	mov	r3, sl
 8002262:	f7fe f989 	bl	8000578 <__aeabi_dmul>
 8002266:	4602      	mov	r2, r0
 8002268:	460b      	mov	r3, r1
 800226a:	ec51 0b1a 	vmov	r0, r1, d10
 800226e:	f7fd ffcd 	bl	800020c <__adddf3>
 8002272:	9007      	str	r0, [sp, #28]
 8002274:	4688      	mov	r8, r1
 8002276:	4658      	mov	r0, fp
 8002278:	4621      	mov	r1, r4
 800227a:	465a      	mov	r2, fp
 800227c:	4623      	mov	r3, r4
 800227e:	f7fe f97b 	bl	8000578 <__aeabi_dmul>
 8002282:	4602      	mov	r2, r0
 8002284:	460b      	mov	r3, r1
 8002286:	ec51 0b19 	vmov	r0, r1, d9
 800228a:	f7fd ffbf 	bl	800020c <__adddf3>
 800228e:	4604      	mov	r4, r0
 8002290:	460d      	mov	r5, r1
 8002292:	4648      	mov	r0, r9
 8002294:	4651      	mov	r1, sl
 8002296:	464a      	mov	r2, r9
 8002298:	4653      	mov	r3, sl
 800229a:	f7fe f96d 	bl	8000578 <__aeabi_dmul>
 800229e:	4602      	mov	r2, r0
 80022a0:	460b      	mov	r3, r1
 80022a2:	ec51 0b18 	vmov	r0, r1, d8
 80022a6:	f7fd ffb1 	bl	800020c <__adddf3>
 80022aa:	ec45 4b19 	vmov	d9, r4, r5
 80022ae:	9c07      	ldr	r4, [sp, #28]
 80022b0:	3608      	adds	r6, #8
 80022b2:	ec41 0b18 	vmov	d8, r0, r1
 80022b6:	f5b6 7f48 	cmp.w	r6, #800	; 0x320
 80022ba:	ec48 4b1a 	vmov	d10, r4, r8
 80022be:	d1b4      	bne.n	800222a <Calc_LinCorrCoef+0x3a>
 80022c0:	eeb0 0a49 	vmov.f32	s0, s18
 80022c4:	eef0 0a69 	vmov.f32	s1, s19
 80022c8:	f000 f97e 	bl	80025c8 <sqrt>
 80022cc:	eeb0 9a40 	vmov.f32	s18, s0
 80022d0:	eeb0 0a48 	vmov.f32	s0, s16
 80022d4:	eef0 9a60 	vmov.f32	s19, s1
 80022d8:	eef0 0a68 	vmov.f32	s1, s17
 80022dc:	f000 f974 	bl	80025c8 <sqrt>
 80022e0:	ec51 0b19 	vmov	r0, r1, d9
 80022e4:	ec53 2b10 	vmov	r2, r3, d0
 80022e8:	f7fe f946 	bl	8000578 <__aeabi_dmul>
 80022ec:	4602      	mov	r2, r0
 80022ee:	460b      	mov	r3, r1
 80022f0:	4620      	mov	r0, r4
 80022f2:	4641      	mov	r1, r8
 80022f4:	f7fe fa6a 	bl	80007cc <__aeabi_ddiv>
 80022f8:	f640 6210 	movw	r2, #3600	; 0xe10
 80022fc:	ec41 0b10 	vmov	d0, r0, r1
 8002300:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002304:	ed82 0b00 	vstr	d0, [r2]
 8002308:	b008      	add	sp, #32
 800230a:	ecbd 8b06 	vpop	{d8-d10}
 800230e:	b001      	add	sp, #4
 8002310:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002314:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002316:	bf00      	nop
	...

08002320 <verify_benchmark>:
 8002320:	b5d0      	push	{r4, r6, r7, lr}
 8002322:	af02      	add	r7, sp, #8
 8002324:	ed2d 8b02 	vpush	{d8}
 8002328:	f640 6018 	movw	r0, #3608	; 0xe18
 800232c:	ed9f 0b1c 	vldr	d0, [pc, #112]	; 80023a0 <verify_benchmark+0x80>
 8002330:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002334:	ed90 1b00 	vldr	d1, [r0]
 8002338:	ec53 2b10 	vmov	r2, r3, d0
 800233c:	ec51 0b11 	vmov	r0, r1, d1
 8002340:	f7fe fb82 	bl	8000a48 <__aeabi_dcmpeq>
 8002344:	4604      	mov	r4, r0
 8002346:	f241 1040 	movw	r0, #4416	; 0x1140
 800234a:	ed9f 0b17 	vldr	d0, [pc, #92]	; 80023a8 <verify_benchmark+0x88>
 800234e:	ed9f 8b18 	vldr	d8, [pc, #96]	; 80023b0 <verify_benchmark+0x90>
 8002352:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002356:	2c00      	cmp	r4, #0
 8002358:	ed90 1b00 	vldr	d1, [r0]
 800235c:	bf18      	it	ne
 800235e:	2401      	movne	r4, #1
 8002360:	ec53 2b10 	vmov	r2, r3, d0
 8002364:	ec51 0b11 	vmov	r0, r1, d1
 8002368:	f7fe fb6e 	bl	8000a48 <__aeabi_dcmpeq>
 800236c:	f640 6110 	movw	r1, #3600	; 0xe10
 8002370:	2800      	cmp	r0, #0
 8002372:	ec53 2b18 	vmov	r2, r3, d8
 8002376:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800237a:	bf18      	it	ne
 800237c:	2001      	movne	r0, #1
 800237e:	ed91 0b00 	vldr	d0, [r1]
 8002382:	4004      	ands	r4, r0
 8002384:	ec51 0b10 	vmov	r0, r1, d0
 8002388:	f7fe fb5e 	bl	8000a48 <__aeabi_dcmpeq>
 800238c:	2800      	cmp	r0, #0
 800238e:	bf18      	it	ne
 8002390:	2001      	movne	r0, #1
 8002392:	4020      	ands	r0, r4
 8002394:	ecbd 8b02 	vpop	{d8}
 8002398:	bdd0      	pop	{r4, r6, r7, pc}
 800239a:	bf00      	nop
 800239c:	bf00      	nop
 800239e:	bf00      	nop
 80023a0:	a1eacfc6 	.word	0xa1eacfc6
 80023a4:	40b38700 	.word	0x40b38700
 80023a8:	d641766e 	.word	0xd641766e
 80023ac:	40b384d7 	.word	0x40b384d7
 80023b0:	665bad45 	.word	0x665bad45
 80023b4:	3fefff2e 	.word	0x3fefff2e

080023b8 <__io_putchar>:
 80023b8:	b580      	push	{r7, lr}
 80023ba:	466f      	mov	r7, sp
 80023bc:	b082      	sub	sp, #8
 80023be:	9001      	str	r0, [sp, #4]
 80023c0:	f640 10e4 	movw	r0, #2532	; 0x9e4
 80023c4:	a901      	add	r1, sp, #4
 80023c6:	2201      	movs	r2, #1
 80023c8:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80023cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023d0:	f7ff fc97 	bl	8001d02 <HAL_UART_Transmit>
 80023d4:	9801      	ldr	r0, [sp, #4]
 80023d6:	b002      	add	sp, #8
 80023d8:	bd80      	pop	{r7, pc}

080023da <main>:
 80023da:	b5b0      	push	{r4, r5, r7, lr}
 80023dc:	af02      	add	r7, sp, #8
 80023de:	f640 11e4 	movw	r1, #2532	; 0x9e4
 80023e2:	f643 0000 	movw	r0, #14336	; 0x3800
 80023e6:	220c      	movs	r2, #12
 80023e8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80023ec:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80023f0:	6008      	str	r0, [r1, #0]
 80023f2:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80023f6:	6048      	str	r0, [r1, #4]
 80023f8:	2000      	movs	r0, #0
 80023fa:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80023fe:	6108      	str	r0, [r1, #16]
 8002400:	6248      	str	r0, [r1, #36]	; 0x24
 8002402:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002406:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800240a:	2000      	movs	r0, #0
 800240c:	f7ff fd0e 	bl	8001e2c <BSP_COM_Init>
 8002410:	f7ff fd65 	bl	8001ede <initialise_benchmark>
 8002414:	f247 6020 	movw	r0, #30240	; 0x7620
 8002418:	f6c0 0000 	movt	r0, #2048	; 0x800
 800241c:	f000 fa70 	bl	8002900 <printf>
 8002420:	f247 60c5 	movw	r0, #30405	; 0x76c5
 8002424:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002428:	f000 facc 	bl	80029c4 <puts>
 800242c:	f7fe fe70 	bl	8001110 <HAL_Init>
 8002430:	f7fe fe86 	bl	8001140 <HAL_GetTick>
 8002434:	4604      	mov	r4, r0
 8002436:	f7ff fd53 	bl	8001ee0 <benchmark>
 800243a:	4605      	mov	r5, r0
 800243c:	f7fe fe80 	bl	8001140 <HAL_GetTick>
 8002440:	1b04      	subs	r4, r0, r4
 8002442:	4628      	mov	r0, r5
 8002444:	f7ff ff6c 	bl	8002320 <verify_benchmark>
 8002448:	1c41      	adds	r1, r0, #1
 800244a:	d006      	beq.n	800245a <main+0x80>
 800244c:	2801      	cmp	r0, #1
 800244e:	d109      	bne.n	8002464 <main+0x8a>
 8002450:	f247 6031 	movw	r0, #30257	; 0x7631
 8002454:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002458:	e008      	b.n	800246c <main+0x92>
 800245a:	f247 6055 	movw	r0, #30293	; 0x7655
 800245e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002462:	e003      	b.n	800246c <main+0x92>
 8002464:	f247 608a 	movw	r0, #30346	; 0x768a
 8002468:	f6c0 0000 	movt	r0, #2048	; 0x800
 800246c:	4621      	mov	r1, r4
 800246e:	f000 fa47 	bl	8002900 <printf>
 8002472:	2000      	movs	r0, #0
 8002474:	bdb0      	pop	{r4, r5, r7, pc}

08002476 <SysTick_Handler>:
 8002476:	b580      	push	{r7, lr}
 8002478:	466f      	mov	r7, sp
 800247a:	f7fe fe59 	bl	8001130 <HAL_IncTick>
 800247e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002482:	f7fe beb3 	b.w	80011ec <HAL_SYSTICK_IRQHandler>

08002486 <_read>:
 8002486:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002488:	af03      	add	r7, sp, #12
 800248a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800248e:	4614      	mov	r4, r2
 8002490:	460d      	mov	r5, r1
 8002492:	2c01      	cmp	r4, #1
 8002494:	db06      	blt.n	80024a4 <_read+0x1e>
 8002496:	4626      	mov	r6, r4
 8002498:	f3af 8000 	nop.w
 800249c:	f805 0b01 	strb.w	r0, [r5], #1
 80024a0:	3e01      	subs	r6, #1
 80024a2:	d1f9      	bne.n	8002498 <_read+0x12>
 80024a4:	4620      	mov	r0, r4
 80024a6:	f85d bb04 	ldr.w	fp, [sp], #4
 80024aa:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024ac <_write>:
 80024ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024ae:	af03      	add	r7, sp, #12
 80024b0:	f84d bd04 	str.w	fp, [sp, #-4]!
 80024b4:	4614      	mov	r4, r2
 80024b6:	460d      	mov	r5, r1
 80024b8:	2c01      	cmp	r4, #1
 80024ba:	db06      	blt.n	80024ca <_write+0x1e>
 80024bc:	4626      	mov	r6, r4
 80024be:	f815 0b01 	ldrb.w	r0, [r5], #1
 80024c2:	f7ff ff79 	bl	80023b8 <__io_putchar>
 80024c6:	3e01      	subs	r6, #1
 80024c8:	d1f9      	bne.n	80024be <_write+0x12>
 80024ca:	4620      	mov	r0, r4
 80024cc:	f85d bb04 	ldr.w	fp, [sp], #4
 80024d0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024d2 <_sbrk>:
 80024d2:	f640 2268 	movw	r2, #2664	; 0xa68
 80024d6:	4601      	mov	r1, r0
 80024d8:	466b      	mov	r3, sp
 80024da:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80024de:	6810      	ldr	r0, [r2, #0]
 80024e0:	2800      	cmp	r0, #0
 80024e2:	bf02      	ittt	eq
 80024e4:	f241 1070 	movweq	r0, #4464	; 0x1170
 80024e8:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80024ec:	6010      	streq	r0, [r2, #0]
 80024ee:	4401      	add	r1, r0
 80024f0:	4299      	cmp	r1, r3
 80024f2:	bf9c      	itt	ls
 80024f4:	6011      	strls	r1, [r2, #0]
 80024f6:	4770      	bxls	lr
 80024f8:	b580      	push	{r7, lr}
 80024fa:	466f      	mov	r7, sp
 80024fc:	f000 f98c 	bl	8002818 <__errno>
 8002500:	210c      	movs	r1, #12
 8002502:	6001      	str	r1, [r0, #0]
 8002504:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002508:	bd80      	pop	{r7, pc}

0800250a <_close>:
 800250a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800250e:	4770      	bx	lr

08002510 <_fstat>:
 8002510:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002514:	6048      	str	r0, [r1, #4]
 8002516:	2000      	movs	r0, #0
 8002518:	4770      	bx	lr

0800251a <_isatty>:
 800251a:	2001      	movs	r0, #1
 800251c:	4770      	bx	lr

0800251e <_lseek>:
 800251e:	2000      	movs	r0, #0
 8002520:	4770      	bx	lr

08002522 <SystemInit>:
 8002522:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002526:	f04f 0c00 	mov.w	ip, #0
 800252a:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800252e:	6801      	ldr	r1, [r0, #0]
 8002530:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002534:	6001      	str	r1, [r0, #0]
 8002536:	f241 0100 	movw	r1, #4096	; 0x1000
 800253a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800253e:	680a      	ldr	r2, [r1, #0]
 8002540:	f042 0201 	orr.w	r2, r2, #1
 8002544:	600a      	str	r2, [r1, #0]
 8002546:	f8c1 c008 	str.w	ip, [r1, #8]
 800254a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800254e:	680b      	ldr	r3, [r1, #0]
 8002550:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002554:	401a      	ands	r2, r3
 8002556:	600a      	str	r2, [r1, #0]
 8002558:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800255c:	60ca      	str	r2, [r1, #12]
 800255e:	680a      	ldr	r2, [r1, #0]
 8002560:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002564:	600a      	str	r2, [r1, #0]
 8002566:	f8c1 c018 	str.w	ip, [r1, #24]
 800256a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800256e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002572:	4770      	bx	lr

08002574 <Reset_Handler>:
 8002574:	f8df d034 	ldr.w	sp, [pc, #52]	; 80025ac <LoopForever+0x2>
 8002578:	2100      	movs	r1, #0
 800257a:	e003      	b.n	8002584 <LoopCopyDataInit>

0800257c <CopyDataInit>:
 800257c:	4b0c      	ldr	r3, [pc, #48]	; (80025b0 <LoopForever+0x6>)
 800257e:	585b      	ldr	r3, [r3, r1]
 8002580:	5043      	str	r3, [r0, r1]
 8002582:	3104      	adds	r1, #4

08002584 <LoopCopyDataInit>:
 8002584:	480b      	ldr	r0, [pc, #44]	; (80025b4 <LoopForever+0xa>)
 8002586:	4b0c      	ldr	r3, [pc, #48]	; (80025b8 <LoopForever+0xe>)
 8002588:	1842      	adds	r2, r0, r1
 800258a:	429a      	cmp	r2, r3
 800258c:	d3f6      	bcc.n	800257c <CopyDataInit>
 800258e:	4a0b      	ldr	r2, [pc, #44]	; (80025bc <LoopForever+0x12>)
 8002590:	e002      	b.n	8002598 <LoopFillZerobss>

08002592 <FillZerobss>:
 8002592:	2300      	movs	r3, #0
 8002594:	f842 3b04 	str.w	r3, [r2], #4

08002598 <LoopFillZerobss>:
 8002598:	4b09      	ldr	r3, [pc, #36]	; (80025c0 <LoopForever+0x16>)
 800259a:	429a      	cmp	r2, r3
 800259c:	d3f9      	bcc.n	8002592 <FillZerobss>
 800259e:	f7ff ffc0 	bl	8002522 <SystemInit>
 80025a2:	f000 f93f 	bl	8002824 <__libc_init_array>
 80025a6:	f7ff ff18 	bl	80023da <main>

080025aa <LoopForever>:
 80025aa:	e7fe      	b.n	80025aa <LoopForever>
 80025ac:	20018000 	.word	0x20018000
 80025b0:	08007978 	.word	0x08007978
 80025b4:	20000000 	.word	0x20000000
 80025b8:	200009c8 	.word	0x200009c8
 80025bc:	200009c8 	.word	0x200009c8
 80025c0:	20001170 	.word	0x20001170

080025c4 <ADC1_2_IRQHandler>:
 80025c4:	e7fe      	b.n	80025c4 <ADC1_2_IRQHandler>
	...

080025c8 <sqrt>:
 80025c8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80025cc:	ed2d 8b02 	vpush	{d8}
 80025d0:	b08b      	sub	sp, #44	; 0x2c
 80025d2:	ec55 4b10 	vmov	r4, r5, d0
 80025d6:	f000 f853 	bl	8002680 <__ieee754_sqrt>
 80025da:	4b27      	ldr	r3, [pc, #156]	; (8002678 <sqrt+0xb0>)
 80025dc:	eeb0 8a40 	vmov.f32	s16, s0
 80025e0:	eef0 8a60 	vmov.f32	s17, s1
 80025e4:	f993 6000 	ldrsb.w	r6, [r3]
 80025e8:	1c73      	adds	r3, r6, #1
 80025ea:	d012      	beq.n	8002612 <sqrt+0x4a>
 80025ec:	4622      	mov	r2, r4
 80025ee:	462b      	mov	r3, r5
 80025f0:	4620      	mov	r0, r4
 80025f2:	4629      	mov	r1, r5
 80025f4:	f7fe fa5a 	bl	8000aac <__aeabi_dcmpun>
 80025f8:	4607      	mov	r7, r0
 80025fa:	b950      	cbnz	r0, 8002612 <sqrt+0x4a>
 80025fc:	f04f 0800 	mov.w	r8, #0
 8002600:	f04f 0900 	mov.w	r9, #0
 8002604:	4620      	mov	r0, r4
 8002606:	4629      	mov	r1, r5
 8002608:	4642      	mov	r2, r8
 800260a:	464b      	mov	r3, r9
 800260c:	f7fe fa26 	bl	8000a5c <__aeabi_dcmplt>
 8002610:	b940      	cbnz	r0, 8002624 <sqrt+0x5c>
 8002612:	eeb0 0a48 	vmov.f32	s0, s16
 8002616:	eef0 0a68 	vmov.f32	s1, s17
 800261a:	b00b      	add	sp, #44	; 0x2c
 800261c:	ecbd 8b02 	vpop	{d8}
 8002620:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002624:	2201      	movs	r2, #1
 8002626:	4b15      	ldr	r3, [pc, #84]	; (800267c <sqrt+0xb4>)
 8002628:	9708      	str	r7, [sp, #32]
 800262a:	9200      	str	r2, [sp, #0]
 800262c:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8002630:	e9cd 4502 	strd	r4, r5, [sp, #8]
 8002634:	9301      	str	r3, [sp, #4]
 8002636:	b196      	cbz	r6, 800265e <sqrt+0x96>
 8002638:	4642      	mov	r2, r8
 800263a:	464b      	mov	r3, r9
 800263c:	4640      	mov	r0, r8
 800263e:	4649      	mov	r1, r9
 8002640:	f7fe f8c4 	bl	80007cc <__aeabi_ddiv>
 8002644:	2e02      	cmp	r6, #2
 8002646:	e9cd 0106 	strd	r0, r1, [sp, #24]
 800264a:	d10a      	bne.n	8002662 <sqrt+0x9a>
 800264c:	f000 f8e4 	bl	8002818 <__errno>
 8002650:	2321      	movs	r3, #33	; 0x21
 8002652:	6003      	str	r3, [r0, #0]
 8002654:	9b08      	ldr	r3, [sp, #32]
 8002656:	b953      	cbnz	r3, 800266e <sqrt+0xa6>
 8002658:	ed9d 8b06 	vldr	d8, [sp, #24]
 800265c:	e7d9      	b.n	8002612 <sqrt+0x4a>
 800265e:	e9cd 8906 	strd	r8, r9, [sp, #24]
 8002662:	4668      	mov	r0, sp
 8002664:	f000 f8d6 	bl	8002814 <matherr>
 8002668:	2800      	cmp	r0, #0
 800266a:	d1f3      	bne.n	8002654 <sqrt+0x8c>
 800266c:	e7ee      	b.n	800264c <sqrt+0x84>
 800266e:	f000 f8d3 	bl	8002818 <__errno>
 8002672:	9b08      	ldr	r3, [sp, #32]
 8002674:	6003      	str	r3, [r0, #0]
 8002676:	e7ef      	b.n	8002658 <sqrt+0x90>
 8002678:	20000018 	.word	0x20000018
 800267c:	080076c8 	.word	0x080076c8

08002680 <__ieee754_sqrt>:
 8002680:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002684:	4a62      	ldr	r2, [pc, #392]	; (8002810 <__ieee754_sqrt+0x190>)
 8002686:	ec57 6b10 	vmov	r6, r7, d0
 800268a:	43ba      	bics	r2, r7
 800268c:	f000 8095 	beq.w	80027ba <__ieee754_sqrt+0x13a>
 8002690:	2f00      	cmp	r7, #0
 8002692:	463b      	mov	r3, r7
 8002694:	ee10 1a10 	vmov	r1, s0
 8002698:	4634      	mov	r4, r6
 800269a:	dd54      	ble.n	8002746 <__ieee754_sqrt+0xc6>
 800269c:	153f      	asrs	r7, r7, #20
 800269e:	f000 80af 	beq.w	8002800 <__ieee754_sqrt+0x180>
 80026a2:	f3c3 0313 	ubfx	r3, r3, #0, #20
 80026a6:	f2a7 37ff 	subw	r7, r7, #1023	; 0x3ff
 80026aa:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80026ae:	0fe2      	lsrs	r2, r4, #31
 80026b0:	07f9      	lsls	r1, r7, #31
 80026b2:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 80026b6:	ea4f 0544 	mov.w	r5, r4, lsl #1
 80026ba:	d503      	bpl.n	80026c4 <__ieee754_sqrt+0x44>
 80026bc:	0fed      	lsrs	r5, r5, #31
 80026be:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 80026c2:	00a5      	lsls	r5, r4, #2
 80026c4:	2600      	movs	r6, #0
 80026c6:	107f      	asrs	r7, r7, #1
 80026c8:	46b4      	mov	ip, r6
 80026ca:	2216      	movs	r2, #22
 80026cc:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 80026d0:	eb0c 0001 	add.w	r0, ip, r1
 80026d4:	4298      	cmp	r0, r3
 80026d6:	ea4f 74d5 	mov.w	r4, r5, lsr #31
 80026da:	ea4f 0545 	mov.w	r5, r5, lsl #1
 80026de:	dc03      	bgt.n	80026e8 <__ieee754_sqrt+0x68>
 80026e0:	1a1b      	subs	r3, r3, r0
 80026e2:	eb00 0c01 	add.w	ip, r0, r1
 80026e6:	440e      	add	r6, r1
 80026e8:	3a01      	subs	r2, #1
 80026ea:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 80026ee:	ea4f 0151 	mov.w	r1, r1, lsr #1
 80026f2:	d1ed      	bne.n	80026d0 <__ieee754_sqrt+0x50>
 80026f4:	4610      	mov	r0, r2
 80026f6:	4696      	mov	lr, r2
 80026f8:	2420      	movs	r4, #32
 80026fa:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 80026fe:	e009      	b.n	8002714 <__ieee754_sqrt+0x94>
 8002700:	d052      	beq.n	80027a8 <__ieee754_sqrt+0x128>
 8002702:	005b      	lsls	r3, r3, #1
 8002704:	3c01      	subs	r4, #1
 8002706:	eb03 73d5 	add.w	r3, r3, r5, lsr #31
 800270a:	ea4f 0252 	mov.w	r2, r2, lsr #1
 800270e:	ea4f 0545 	mov.w	r5, r5, lsl #1
 8002712:	d036      	beq.n	8002782 <__ieee754_sqrt+0x102>
 8002714:	4563      	cmp	r3, ip
 8002716:	eb02 010e 	add.w	r1, r2, lr
 800271a:	ddf1      	ble.n	8002700 <__ieee754_sqrt+0x80>
 800271c:	2900      	cmp	r1, #0
 800271e:	eb01 0e02 	add.w	lr, r1, r2
 8002722:	db0a      	blt.n	800273a <__ieee754_sqrt+0xba>
 8002724:	46e0      	mov	r8, ip
 8002726:	eba3 030c 	sub.w	r3, r3, ip
 800272a:	42a9      	cmp	r1, r5
 800272c:	bf88      	it	hi
 800272e:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 8002732:	1a6d      	subs	r5, r5, r1
 8002734:	4410      	add	r0, r2
 8002736:	46c4      	mov	ip, r8
 8002738:	e7e3      	b.n	8002702 <__ieee754_sqrt+0x82>
 800273a:	f1be 0f00 	cmp.w	lr, #0
 800273e:	dbf1      	blt.n	8002724 <__ieee754_sqrt+0xa4>
 8002740:	f10c 0801 	add.w	r8, ip, #1
 8002744:	e7ef      	b.n	8002726 <__ieee754_sqrt+0xa6>
 8002746:	f027 4200 	bic.w	r2, r7, #2147483648	; 0x80000000
 800274a:	4332      	orrs	r2, r6
 800274c:	d02a      	beq.n	80027a4 <__ieee754_sqrt+0x124>
 800274e:	2f00      	cmp	r7, #0
 8002750:	d149      	bne.n	80027e6 <__ieee754_sqrt+0x166>
 8002752:	0aca      	lsrs	r2, r1, #11
 8002754:	3b15      	subs	r3, #21
 8002756:	0549      	lsls	r1, r1, #21
 8002758:	2a00      	cmp	r2, #0
 800275a:	d0fa      	beq.n	8002752 <__ieee754_sqrt+0xd2>
 800275c:	f412 1080 	ands.w	r0, r2, #1048576	; 0x100000
 8002760:	d001      	beq.n	8002766 <__ieee754_sqrt+0xe6>
 8002762:	e050      	b.n	8002806 <__ieee754_sqrt+0x186>
 8002764:	4620      	mov	r0, r4
 8002766:	0052      	lsls	r2, r2, #1
 8002768:	02d5      	lsls	r5, r2, #11
 800276a:	f100 0401 	add.w	r4, r0, #1
 800276e:	d5f9      	bpl.n	8002764 <__ieee754_sqrt+0xe4>
 8002770:	f1c4 0520 	rsb	r5, r4, #32
 8002774:	fa01 f404 	lsl.w	r4, r1, r4
 8002778:	40e9      	lsrs	r1, r5
 800277a:	1a1f      	subs	r7, r3, r0
 800277c:	ea41 0302 	orr.w	r3, r1, r2
 8002780:	e78f      	b.n	80026a2 <__ieee754_sqrt+0x22>
 8002782:	432b      	orrs	r3, r5
 8002784:	d129      	bne.n	80027da <__ieee754_sqrt+0x15a>
 8002786:	0844      	lsrs	r4, r0, #1
 8002788:	1071      	asrs	r1, r6, #1
 800278a:	07f3      	lsls	r3, r6, #31
 800278c:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 8002790:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 8002794:	bf48      	it	mi
 8002796:	f044 4400 	orrmi.w	r4, r4, #2147483648	; 0x80000000
 800279a:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 800279e:	4622      	mov	r2, r4
 80027a0:	ec43 2b10 	vmov	d0, r2, r3
 80027a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027a8:	42a9      	cmp	r1, r5
 80027aa:	d8aa      	bhi.n	8002702 <__ieee754_sqrt+0x82>
 80027ac:	2900      	cmp	r1, #0
 80027ae:	eb01 0e02 	add.w	lr, r1, r2
 80027b2:	dbc2      	blt.n	800273a <__ieee754_sqrt+0xba>
 80027b4:	4698      	mov	r8, r3
 80027b6:	2300      	movs	r3, #0
 80027b8:	e7bb      	b.n	8002732 <__ieee754_sqrt+0xb2>
 80027ba:	ee10 2a10 	vmov	r2, s0
 80027be:	463b      	mov	r3, r7
 80027c0:	ee10 0a10 	vmov	r0, s0
 80027c4:	4639      	mov	r1, r7
 80027c6:	f7fd fed7 	bl	8000578 <__aeabi_dmul>
 80027ca:	4632      	mov	r2, r6
 80027cc:	463b      	mov	r3, r7
 80027ce:	f7fd fd1d 	bl	800020c <__adddf3>
 80027d2:	ec41 0b10 	vmov	d0, r0, r1
 80027d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027da:	1c42      	adds	r2, r0, #1
 80027dc:	bf16      	itet	ne
 80027de:	1c42      	addne	r2, r0, #1
 80027e0:	3601      	addeq	r6, #1
 80027e2:	0854      	lsrne	r4, r2, #1
 80027e4:	e7d0      	b.n	8002788 <__ieee754_sqrt+0x108>
 80027e6:	ee10 2a10 	vmov	r2, s0
 80027ea:	4630      	mov	r0, r6
 80027ec:	4639      	mov	r1, r7
 80027ee:	f7fd fd0b 	bl	8000208 <__aeabi_dsub>
 80027f2:	4602      	mov	r2, r0
 80027f4:	460b      	mov	r3, r1
 80027f6:	f7fd ffe9 	bl	80007cc <__aeabi_ddiv>
 80027fa:	ec41 0b10 	vmov	d0, r0, r1
 80027fe:	e7d1      	b.n	80027a4 <__ieee754_sqrt+0x124>
 8002800:	461a      	mov	r2, r3
 8002802:	463b      	mov	r3, r7
 8002804:	e7aa      	b.n	800275c <__ieee754_sqrt+0xdc>
 8002806:	460c      	mov	r4, r1
 8002808:	2520      	movs	r5, #32
 800280a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800280e:	e7b3      	b.n	8002778 <__ieee754_sqrt+0xf8>
 8002810:	7ff00000 	.word	0x7ff00000

08002814 <matherr>:
 8002814:	2000      	movs	r0, #0
 8002816:	4770      	bx	lr

08002818 <__errno>:
 8002818:	4b01      	ldr	r3, [pc, #4]	; (8002820 <__errno+0x8>)
 800281a:	6818      	ldr	r0, [r3, #0]
 800281c:	4770      	bx	lr
 800281e:	bf00      	nop
 8002820:	2000001c 	.word	0x2000001c

08002824 <__libc_init_array>:
 8002824:	b570      	push	{r4, r5, r6, lr}
 8002826:	4e0d      	ldr	r6, [pc, #52]	; (800285c <__libc_init_array+0x38>)
 8002828:	4d0d      	ldr	r5, [pc, #52]	; (8002860 <__libc_init_array+0x3c>)
 800282a:	1b76      	subs	r6, r6, r5
 800282c:	10b6      	asrs	r6, r6, #2
 800282e:	d006      	beq.n	800283e <__libc_init_array+0x1a>
 8002830:	2400      	movs	r4, #0
 8002832:	3401      	adds	r4, #1
 8002834:	f855 3b04 	ldr.w	r3, [r5], #4
 8002838:	4798      	blx	r3
 800283a:	42a6      	cmp	r6, r4
 800283c:	d1f9      	bne.n	8002832 <__libc_init_array+0xe>
 800283e:	4e09      	ldr	r6, [pc, #36]	; (8002864 <__libc_init_array+0x40>)
 8002840:	4d09      	ldr	r5, [pc, #36]	; (8002868 <__libc_init_array+0x44>)
 8002842:	1b76      	subs	r6, r6, r5
 8002844:	f004 feaa 	bl	800759c <_init>
 8002848:	10b6      	asrs	r6, r6, #2
 800284a:	d006      	beq.n	800285a <__libc_init_array+0x36>
 800284c:	2400      	movs	r4, #0
 800284e:	3401      	adds	r4, #1
 8002850:	f855 3b04 	ldr.w	r3, [r5], #4
 8002854:	4798      	blx	r3
 8002856:	42a6      	cmp	r6, r4
 8002858:	d1f9      	bne.n	800284e <__libc_init_array+0x2a>
 800285a:	bd70      	pop	{r4, r5, r6, pc}
 800285c:	08007968 	.word	0x08007968
 8002860:	08007968 	.word	0x08007968
 8002864:	08007970 	.word	0x08007970
 8002868:	08007968 	.word	0x08007968

0800286c <memset>:
 800286c:	b4f0      	push	{r4, r5, r6, r7}
 800286e:	0786      	lsls	r6, r0, #30
 8002870:	d043      	beq.n	80028fa <memset+0x8e>
 8002872:	1e54      	subs	r4, r2, #1
 8002874:	2a00      	cmp	r2, #0
 8002876:	d03e      	beq.n	80028f6 <memset+0x8a>
 8002878:	b2ca      	uxtb	r2, r1
 800287a:	4603      	mov	r3, r0
 800287c:	e002      	b.n	8002884 <memset+0x18>
 800287e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002882:	d338      	bcc.n	80028f6 <memset+0x8a>
 8002884:	f803 2b01 	strb.w	r2, [r3], #1
 8002888:	079d      	lsls	r5, r3, #30
 800288a:	d1f8      	bne.n	800287e <memset+0x12>
 800288c:	2c03      	cmp	r4, #3
 800288e:	d92b      	bls.n	80028e8 <memset+0x7c>
 8002890:	b2cd      	uxtb	r5, r1
 8002892:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002896:	2c0f      	cmp	r4, #15
 8002898:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800289c:	d916      	bls.n	80028cc <memset+0x60>
 800289e:	f1a4 0710 	sub.w	r7, r4, #16
 80028a2:	093f      	lsrs	r7, r7, #4
 80028a4:	f103 0620 	add.w	r6, r3, #32
 80028a8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80028ac:	f103 0210 	add.w	r2, r3, #16
 80028b0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80028b4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80028b8:	3210      	adds	r2, #16
 80028ba:	42b2      	cmp	r2, r6
 80028bc:	d1f8      	bne.n	80028b0 <memset+0x44>
 80028be:	f004 040f 	and.w	r4, r4, #15
 80028c2:	3701      	adds	r7, #1
 80028c4:	2c03      	cmp	r4, #3
 80028c6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80028ca:	d90d      	bls.n	80028e8 <memset+0x7c>
 80028cc:	461e      	mov	r6, r3
 80028ce:	4622      	mov	r2, r4
 80028d0:	3a04      	subs	r2, #4
 80028d2:	2a03      	cmp	r2, #3
 80028d4:	f846 5b04 	str.w	r5, [r6], #4
 80028d8:	d8fa      	bhi.n	80028d0 <memset+0x64>
 80028da:	1f22      	subs	r2, r4, #4
 80028dc:	f022 0203 	bic.w	r2, r2, #3
 80028e0:	3204      	adds	r2, #4
 80028e2:	4413      	add	r3, r2
 80028e4:	f004 0403 	and.w	r4, r4, #3
 80028e8:	b12c      	cbz	r4, 80028f6 <memset+0x8a>
 80028ea:	b2c9      	uxtb	r1, r1
 80028ec:	441c      	add	r4, r3
 80028ee:	f803 1b01 	strb.w	r1, [r3], #1
 80028f2:	429c      	cmp	r4, r3
 80028f4:	d1fb      	bne.n	80028ee <memset+0x82>
 80028f6:	bcf0      	pop	{r4, r5, r6, r7}
 80028f8:	4770      	bx	lr
 80028fa:	4614      	mov	r4, r2
 80028fc:	4603      	mov	r3, r0
 80028fe:	e7c5      	b.n	800288c <memset+0x20>

08002900 <printf>:
 8002900:	b40f      	push	{r0, r1, r2, r3}
 8002902:	b500      	push	{lr}
 8002904:	4907      	ldr	r1, [pc, #28]	; (8002924 <printf+0x24>)
 8002906:	b083      	sub	sp, #12
 8002908:	ab04      	add	r3, sp, #16
 800290a:	6808      	ldr	r0, [r1, #0]
 800290c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002910:	6881      	ldr	r1, [r0, #8]
 8002912:	9301      	str	r3, [sp, #4]
 8002914:	f000 f860 	bl	80029d8 <_vfprintf_r>
 8002918:	b003      	add	sp, #12
 800291a:	f85d eb04 	ldr.w	lr, [sp], #4
 800291e:	b004      	add	sp, #16
 8002920:	4770      	bx	lr
 8002922:	bf00      	nop
 8002924:	2000001c 	.word	0x2000001c

08002928 <_puts_r>:
 8002928:	b570      	push	{r4, r5, r6, lr}
 800292a:	4605      	mov	r5, r0
 800292c:	b088      	sub	sp, #32
 800292e:	4608      	mov	r0, r1
 8002930:	460c      	mov	r4, r1
 8002932:	f7fe fb05 	bl	8000f40 <strlen>
 8002936:	4a22      	ldr	r2, [pc, #136]	; (80029c0 <_puts_r+0x98>)
 8002938:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800293a:	9404      	str	r4, [sp, #16]
 800293c:	2601      	movs	r6, #1
 800293e:	1c44      	adds	r4, r0, #1
 8002940:	a904      	add	r1, sp, #16
 8002942:	9206      	str	r2, [sp, #24]
 8002944:	2202      	movs	r2, #2
 8002946:	9403      	str	r4, [sp, #12]
 8002948:	9005      	str	r0, [sp, #20]
 800294a:	68ac      	ldr	r4, [r5, #8]
 800294c:	9607      	str	r6, [sp, #28]
 800294e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002952:	b31b      	cbz	r3, 800299c <_puts_r+0x74>
 8002954:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002956:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800295a:	07ce      	lsls	r6, r1, #31
 800295c:	b29a      	uxth	r2, r3
 800295e:	d401      	bmi.n	8002964 <_puts_r+0x3c>
 8002960:	0590      	lsls	r0, r2, #22
 8002962:	d525      	bpl.n	80029b0 <_puts_r+0x88>
 8002964:	0491      	lsls	r1, r2, #18
 8002966:	d406      	bmi.n	8002976 <_puts_r+0x4e>
 8002968:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800296a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800296e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002972:	81a3      	strh	r3, [r4, #12]
 8002974:	6662      	str	r2, [r4, #100]	; 0x64
 8002976:	4628      	mov	r0, r5
 8002978:	aa01      	add	r2, sp, #4
 800297a:	4621      	mov	r1, r4
 800297c:	f003 f860 	bl	8005a40 <__sfvwrite_r>
 8002980:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002982:	2800      	cmp	r0, #0
 8002984:	bf0c      	ite	eq
 8002986:	250a      	moveq	r5, #10
 8002988:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800298c:	07da      	lsls	r2, r3, #31
 800298e:	d402      	bmi.n	8002996 <_puts_r+0x6e>
 8002990:	89a3      	ldrh	r3, [r4, #12]
 8002992:	059b      	lsls	r3, r3, #22
 8002994:	d506      	bpl.n	80029a4 <_puts_r+0x7c>
 8002996:	4628      	mov	r0, r5
 8002998:	b008      	add	sp, #32
 800299a:	bd70      	pop	{r4, r5, r6, pc}
 800299c:	4628      	mov	r0, r5
 800299e:	f002 feb9 	bl	8005714 <__sinit>
 80029a2:	e7d7      	b.n	8002954 <_puts_r+0x2c>
 80029a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80029a6:	f003 fa07 	bl	8005db8 <__retarget_lock_release_recursive>
 80029aa:	4628      	mov	r0, r5
 80029ac:	b008      	add	sp, #32
 80029ae:	bd70      	pop	{r4, r5, r6, pc}
 80029b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80029b2:	f003 f9ff 	bl	8005db4 <__retarget_lock_acquire_recursive>
 80029b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029ba:	b29a      	uxth	r2, r3
 80029bc:	e7d2      	b.n	8002964 <_puts_r+0x3c>
 80029be:	bf00      	nop
 80029c0:	080076d4 	.word	0x080076d4

080029c4 <puts>:
 80029c4:	4b02      	ldr	r3, [pc, #8]	; (80029d0 <puts+0xc>)
 80029c6:	4601      	mov	r1, r0
 80029c8:	6818      	ldr	r0, [r3, #0]
 80029ca:	f7ff bfad 	b.w	8002928 <_puts_r>
 80029ce:	bf00      	nop
 80029d0:	2000001c 	.word	0x2000001c
 80029d4:	00000000 	.word	0x00000000

080029d8 <_vfprintf_r>:
 80029d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80029dc:	b0d7      	sub	sp, #348	; 0x15c
 80029de:	461c      	mov	r4, r3
 80029e0:	4689      	mov	r9, r1
 80029e2:	4617      	mov	r7, r2
 80029e4:	4605      	mov	r5, r0
 80029e6:	9003      	str	r0, [sp, #12]
 80029e8:	f003 f9d2 	bl	8005d90 <_localeconv_r>
 80029ec:	6803      	ldr	r3, [r0, #0]
 80029ee:	9316      	str	r3, [sp, #88]	; 0x58
 80029f0:	4618      	mov	r0, r3
 80029f2:	f7fe faa5 	bl	8000f40 <strlen>
 80029f6:	9408      	str	r4, [sp, #32]
 80029f8:	9015      	str	r0, [sp, #84]	; 0x54
 80029fa:	b11d      	cbz	r5, 8002a04 <_vfprintf_r+0x2c>
 80029fc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80029fe:	2b00      	cmp	r3, #0
 8002a00:	f000 8107 	beq.w	8002c12 <_vfprintf_r+0x23a>
 8002a04:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a08:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a0c:	07c8      	lsls	r0, r1, #31
 8002a0e:	b293      	uxth	r3, r2
 8002a10:	d402      	bmi.n	8002a18 <_vfprintf_r+0x40>
 8002a12:	0599      	lsls	r1, r3, #22
 8002a14:	f140 811f 	bpl.w	8002c56 <_vfprintf_r+0x27e>
 8002a18:	049e      	lsls	r6, r3, #18
 8002a1a:	d40a      	bmi.n	8002a32 <_vfprintf_r+0x5a>
 8002a1c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a20:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002a24:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002a28:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002a2c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002a30:	b29b      	uxth	r3, r3
 8002a32:	071d      	lsls	r5, r3, #28
 8002a34:	f140 80b2 	bpl.w	8002b9c <_vfprintf_r+0x1c4>
 8002a38:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002a3c:	2a00      	cmp	r2, #0
 8002a3e:	f000 80ad 	beq.w	8002b9c <_vfprintf_r+0x1c4>
 8002a42:	f003 021a 	and.w	r2, r3, #26
 8002a46:	2a0a      	cmp	r2, #10
 8002a48:	f000 80c9 	beq.w	8002bde <_vfprintf_r+0x206>
 8002a4c:	2300      	movs	r3, #0
 8002a4e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002c68 <_vfprintf_r+0x290>
 8002a52:	9310      	str	r3, [sp, #64]	; 0x40
 8002a54:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002a58:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a5a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002a5e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002a60:	9318      	str	r3, [sp, #96]	; 0x60
 8002a62:	9305      	str	r3, [sp, #20]
 8002a64:	ab2d      	add	r3, sp, #180	; 0xb4
 8002a66:	932a      	str	r3, [sp, #168]	; 0xa8
 8002a68:	469b      	mov	fp, r3
 8002a6a:	783b      	ldrb	r3, [r7, #0]
 8002a6c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002a70:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a74:	2b00      	cmp	r3, #0
 8002a76:	f000 8259 	beq.w	8002f2c <_vfprintf_r+0x554>
 8002a7a:	2b25      	cmp	r3, #37	; 0x25
 8002a7c:	463c      	mov	r4, r7
 8002a7e:	d102      	bne.n	8002a86 <_vfprintf_r+0xae>
 8002a80:	e01d      	b.n	8002abe <_vfprintf_r+0xe6>
 8002a82:	2b25      	cmp	r3, #37	; 0x25
 8002a84:	d003      	beq.n	8002a8e <_vfprintf_r+0xb6>
 8002a86:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002a8a:	2b00      	cmp	r3, #0
 8002a8c:	d1f9      	bne.n	8002a82 <_vfprintf_r+0xaa>
 8002a8e:	1be5      	subs	r5, r4, r7
 8002a90:	b18d      	cbz	r5, 8002ab6 <_vfprintf_r+0xde>
 8002a92:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002a96:	3301      	adds	r3, #1
 8002a98:	442a      	add	r2, r5
 8002a9a:	2b07      	cmp	r3, #7
 8002a9c:	f8cb 7000 	str.w	r7, [fp]
 8002aa0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002aa4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002aa8:	f300 80ca 	bgt.w	8002c40 <_vfprintf_r+0x268>
 8002aac:	f10b 0b08 	add.w	fp, fp, #8
 8002ab0:	9b05      	ldr	r3, [sp, #20]
 8002ab2:	442b      	add	r3, r5
 8002ab4:	9305      	str	r3, [sp, #20]
 8002ab6:	7823      	ldrb	r3, [r4, #0]
 8002ab8:	2b00      	cmp	r3, #0
 8002aba:	f000 8237 	beq.w	8002f2c <_vfprintf_r+0x554>
 8002abe:	2300      	movs	r3, #0
 8002ac0:	7866      	ldrb	r6, [r4, #1]
 8002ac2:	9306      	str	r3, [sp, #24]
 8002ac4:	4698      	mov	r8, r3
 8002ac6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002aca:	f104 0a01 	add.w	sl, r4, #1
 8002ace:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002ad2:	252b      	movs	r5, #43	; 0x2b
 8002ad4:	f10a 0a01 	add.w	sl, sl, #1
 8002ad8:	f1a6 0320 	sub.w	r3, r6, #32
 8002adc:	2b5a      	cmp	r3, #90	; 0x5a
 8002ade:	f200 842a 	bhi.w	8003336 <_vfprintf_r+0x95e>
 8002ae2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002ae6:	03aa      	.short	0x03aa
 8002ae8:	04280428 	.word	0x04280428
 8002aec:	0428029c 	.word	0x0428029c
 8002af0:	04280428 	.word	0x04280428
 8002af4:	042802a7 	.word	0x042802a7
 8002af8:	02c60428 	.word	0x02c60428
 8002afc:	042802d2 	.word	0x042802d2
 8002b00:	02dc02d7 	.word	0x02dc02d7
 8002b04:	02f60428 	.word	0x02f60428
 8002b08:	026d026d 	.word	0x026d026d
 8002b0c:	026d026d 	.word	0x026d026d
 8002b10:	026d026d 	.word	0x026d026d
 8002b14:	026d026d 	.word	0x026d026d
 8002b18:	0428026d 	.word	0x0428026d
 8002b1c:	04280428 	.word	0x04280428
 8002b20:	04280428 	.word	0x04280428
 8002b24:	04280428 	.word	0x04280428
 8002b28:	042802fb 	.word	0x042802fb
 8002b2c:	03f3033c 	.word	0x03f3033c
 8002b30:	02fb02fb 	.word	0x02fb02fb
 8002b34:	042802fb 	.word	0x042802fb
 8002b38:	04280428 	.word	0x04280428
 8002b3c:	03ee0428 	.word	0x03ee0428
 8002b40:	04280428 	.word	0x04280428
 8002b44:	0428009a 	.word	0x0428009a
 8002b48:	04280428 	.word	0x04280428
 8002b4c:	04280350 	.word	0x04280350
 8002b50:	04280379 	.word	0x04280379
 8002b54:	03900428 	.word	0x03900428
 8002b58:	04280428 	.word	0x04280428
 8002b5c:	04280428 	.word	0x04280428
 8002b60:	04280428 	.word	0x04280428
 8002b64:	04280428 	.word	0x04280428
 8002b68:	042802fb 	.word	0x042802fb
 8002b6c:	00c5033c 	.word	0x00c5033c
 8002b70:	02fb02fb 	.word	0x02fb02fb
 8002b74:	03d102fb 	.word	0x03d102fb
 8002b78:	007000c5 	.word	0x007000c5
 8002b7c:	03b50428 	.word	0x03b50428
 8002b80:	03c20428 	.word	0x03c20428
 8002b84:	03de009c 	.word	0x03de009c
 8002b88:	04280070 	.word	0x04280070
 8002b8c:	00720350 	.word	0x00720350
 8002b90:	0428022c 	.word	0x0428022c
 8002b94:	027c0428 	.word	0x027c0428
 8002b98:	00720428 	.word	0x00720428
 8002b9c:	4649      	mov	r1, r9
 8002b9e:	9803      	ldr	r0, [sp, #12]
 8002ba0:	f001 fc9a 	bl	80044d8 <__swsetup_r>
 8002ba4:	b1a0      	cbz	r0, 8002bd0 <_vfprintf_r+0x1f8>
 8002ba6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002baa:	07d8      	lsls	r0, r3, #31
 8002bac:	d404      	bmi.n	8002bb8 <_vfprintf_r+0x1e0>
 8002bae:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002bb2:	0599      	lsls	r1, r3, #22
 8002bb4:	f140 83b7 	bpl.w	8003326 <_vfprintf_r+0x94e>
 8002bb8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002bbc:	9305      	str	r3, [sp, #20]
 8002bbe:	9805      	ldr	r0, [sp, #20]
 8002bc0:	b057      	add	sp, #348	; 0x15c
 8002bc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002bc6:	f048 0820 	orr.w	r8, r8, #32
 8002bca:	f89a 6000 	ldrb.w	r6, [sl]
 8002bce:	e781      	b.n	8002ad4 <_vfprintf_r+0xfc>
 8002bd0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002bd4:	f003 021a 	and.w	r2, r3, #26
 8002bd8:	2a0a      	cmp	r2, #10
 8002bda:	f47f af37 	bne.w	8002a4c <_vfprintf_r+0x74>
 8002bde:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002be2:	2a00      	cmp	r2, #0
 8002be4:	f6ff af32 	blt.w	8002a4c <_vfprintf_r+0x74>
 8002be8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002bec:	07d2      	lsls	r2, r2, #31
 8002bee:	d405      	bmi.n	8002bfc <_vfprintf_r+0x224>
 8002bf0:	059b      	lsls	r3, r3, #22
 8002bf2:	d403      	bmi.n	8002bfc <_vfprintf_r+0x224>
 8002bf4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002bf8:	f003 f8de 	bl	8005db8 <__retarget_lock_release_recursive>
 8002bfc:	4623      	mov	r3, r4
 8002bfe:	463a      	mov	r2, r7
 8002c00:	4649      	mov	r1, r9
 8002c02:	9803      	ldr	r0, [sp, #12]
 8002c04:	f001 fc26 	bl	8004454 <__sbprintf>
 8002c08:	9005      	str	r0, [sp, #20]
 8002c0a:	9805      	ldr	r0, [sp, #20]
 8002c0c:	b057      	add	sp, #348	; 0x15c
 8002c0e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c12:	9803      	ldr	r0, [sp, #12]
 8002c14:	f002 fd7e 	bl	8005714 <__sinit>
 8002c18:	e6f4      	b.n	8002a04 <_vfprintf_r+0x2c>
 8002c1a:	f048 0810 	orr.w	r8, r8, #16
 8002c1e:	f018 0f20 	tst.w	r8, #32
 8002c22:	f000 836c 	beq.w	80032fe <_vfprintf_r+0x926>
 8002c26:	9c08      	ldr	r4, [sp, #32]
 8002c28:	3407      	adds	r4, #7
 8002c2a:	f024 0307 	bic.w	r3, r4, #7
 8002c2e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002c32:	f103 0208 	add.w	r2, r3, #8
 8002c36:	9208      	str	r2, [sp, #32]
 8002c38:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002c3c:	2200      	movs	r2, #0
 8002c3e:	e18c      	b.n	8002f5a <_vfprintf_r+0x582>
 8002c40:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c42:	9907      	ldr	r1, [sp, #28]
 8002c44:	9803      	ldr	r0, [sp, #12]
 8002c46:	f004 f9f5 	bl	8007034 <__sprint_r>
 8002c4a:	2800      	cmp	r0, #0
 8002c4c:	f041 8376 	bne.w	800433c <_vfprintf_r+0x1964>
 8002c50:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c54:	e72c      	b.n	8002ab0 <_vfprintf_r+0xd8>
 8002c56:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c5a:	f003 f8ab 	bl	8005db4 <__retarget_lock_acquire_recursive>
 8002c5e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002c62:	b293      	uxth	r3, r2
 8002c64:	e6d8      	b.n	8002a18 <_vfprintf_r+0x40>
 8002c66:	bf00      	nop
	...
 8002c70:	4643      	mov	r3, r8
 8002c72:	069f      	lsls	r7, r3, #26
 8002c74:	f140 832f 	bpl.w	80032d6 <_vfprintf_r+0x8fe>
 8002c78:	9c08      	ldr	r4, [sp, #32]
 8002c7a:	3407      	adds	r4, #7
 8002c7c:	f024 0407 	bic.w	r4, r4, #7
 8002c80:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002c84:	f104 0208 	add.w	r2, r4, #8
 8002c88:	9208      	str	r2, [sp, #32]
 8002c8a:	4604      	mov	r4, r0
 8002c8c:	460d      	mov	r5, r1
 8002c8e:	2800      	cmp	r0, #0
 8002c90:	f171 0200 	sbcs.w	r2, r1, #0
 8002c94:	da05      	bge.n	8002ca2 <_vfprintf_r+0x2ca>
 8002c96:	222d      	movs	r2, #45	; 0x2d
 8002c98:	4264      	negs	r4, r4
 8002c9a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002c9e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002ca2:	aa56      	add	r2, sp, #344	; 0x158
 8002ca4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ca8:	9204      	str	r2, [sp, #16]
 8002caa:	f000 84b2 	beq.w	8003612 <_vfprintf_r+0xc3a>
 8002cae:	2201      	movs	r2, #1
 8002cb0:	ea54 0105 	orrs.w	r1, r4, r5
 8002cb4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002cb8:	f040 8159 	bne.w	8002f6e <_vfprintf_r+0x596>
 8002cbc:	f1b9 0f00 	cmp.w	r9, #0
 8002cc0:	f040 8619 	bne.w	80038f6 <_vfprintf_r+0xf1e>
 8002cc4:	2a00      	cmp	r2, #0
 8002cc6:	f040 8508 	bne.w	80036da <_vfprintf_r+0xd02>
 8002cca:	f013 0301 	ands.w	r3, r3, #1
 8002cce:	af56      	add	r7, sp, #344	; 0x158
 8002cd0:	9309      	str	r3, [sp, #36]	; 0x24
 8002cd2:	d002      	beq.n	8002cda <_vfprintf_r+0x302>
 8002cd4:	2330      	movs	r3, #48	; 0x30
 8002cd6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002cda:	2300      	movs	r3, #0
 8002cdc:	930a      	str	r3, [sp, #40]	; 0x28
 8002cde:	930f      	str	r3, [sp, #60]	; 0x3c
 8002ce0:	9314      	str	r3, [sp, #80]	; 0x50
 8002ce2:	9311      	str	r3, [sp, #68]	; 0x44
 8002ce4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002ce6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002cea:	454b      	cmp	r3, r9
 8002cec:	bfb8      	it	lt
 8002cee:	464b      	movlt	r3, r9
 8002cf0:	9304      	str	r3, [sp, #16]
 8002cf2:	b112      	cbz	r2, 8002cfa <_vfprintf_r+0x322>
 8002cf4:	9b04      	ldr	r3, [sp, #16]
 8002cf6:	3301      	adds	r3, #1
 8002cf8:	9304      	str	r3, [sp, #16]
 8002cfa:	f018 0302 	ands.w	r3, r8, #2
 8002cfe:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d00:	d002      	beq.n	8002d08 <_vfprintf_r+0x330>
 8002d02:	9b04      	ldr	r3, [sp, #16]
 8002d04:	3302      	adds	r3, #2
 8002d06:	9304      	str	r3, [sp, #16]
 8002d08:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002d0c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d0e:	930e      	str	r3, [sp, #56]	; 0x38
 8002d10:	d13f      	bne.n	8002d92 <_vfprintf_r+0x3ba>
 8002d12:	9b06      	ldr	r3, [sp, #24]
 8002d14:	9904      	ldr	r1, [sp, #16]
 8002d16:	1a5d      	subs	r5, r3, r1
 8002d18:	2d00      	cmp	r5, #0
 8002d1a:	dd3a      	ble.n	8002d92 <_vfprintf_r+0x3ba>
 8002d1c:	2d10      	cmp	r5, #16
 8002d1e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d20:	dd29      	ble.n	8002d76 <_vfprintf_r+0x39e>
 8002d22:	4659      	mov	r1, fp
 8002d24:	4620      	mov	r0, r4
 8002d26:	9620      	str	r6, [sp, #128]	; 0x80
 8002d28:	2310      	movs	r3, #16
 8002d2a:	9c03      	ldr	r4, [sp, #12]
 8002d2c:	9e07      	ldr	r6, [sp, #28]
 8002d2e:	46bb      	mov	fp, r7
 8002d30:	e004      	b.n	8002d3c <_vfprintf_r+0x364>
 8002d32:	3d10      	subs	r5, #16
 8002d34:	2d10      	cmp	r5, #16
 8002d36:	f101 0108 	add.w	r1, r1, #8
 8002d3a:	dd18      	ble.n	8002d6e <_vfprintf_r+0x396>
 8002d3c:	3201      	adds	r2, #1
 8002d3e:	4fba      	ldr	r7, [pc, #744]	; (8003028 <_vfprintf_r+0x650>)
 8002d40:	3010      	adds	r0, #16
 8002d42:	2a07      	cmp	r2, #7
 8002d44:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d48:	e9c1 7300 	strd	r7, r3, [r1]
 8002d4c:	ddf1      	ble.n	8002d32 <_vfprintf_r+0x35a>
 8002d4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d50:	4631      	mov	r1, r6
 8002d52:	4620      	mov	r0, r4
 8002d54:	930c      	str	r3, [sp, #48]	; 0x30
 8002d56:	f004 f96d 	bl	8007034 <__sprint_r>
 8002d5a:	2800      	cmp	r0, #0
 8002d5c:	f040 843d 	bne.w	80035da <_vfprintf_r+0xc02>
 8002d60:	3d10      	subs	r5, #16
 8002d62:	2d10      	cmp	r5, #16
 8002d64:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d68:	a92d      	add	r1, sp, #180	; 0xb4
 8002d6a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002d6c:	dce6      	bgt.n	8002d3c <_vfprintf_r+0x364>
 8002d6e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002d70:	465f      	mov	r7, fp
 8002d72:	4604      	mov	r4, r0
 8002d74:	468b      	mov	fp, r1
 8002d76:	3201      	adds	r2, #1
 8002d78:	4bab      	ldr	r3, [pc, #684]	; (8003028 <_vfprintf_r+0x650>)
 8002d7a:	442c      	add	r4, r5
 8002d7c:	2a07      	cmp	r2, #7
 8002d7e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d82:	e9cb 3500 	strd	r3, r5, [fp]
 8002d86:	f300 84ff 	bgt.w	8003788 <_vfprintf_r+0xdb0>
 8002d8a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d8e:	f10b 0b08 	add.w	fp, fp, #8
 8002d92:	b172      	cbz	r2, 8002db2 <_vfprintf_r+0x3da>
 8002d94:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d96:	3201      	adds	r2, #1
 8002d98:	3401      	adds	r4, #1
 8002d9a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002d9e:	2101      	movs	r1, #1
 8002da0:	2a07      	cmp	r2, #7
 8002da2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002da6:	e9cb 0100 	strd	r0, r1, [fp]
 8002daa:	f300 8418 	bgt.w	80035de <_vfprintf_r+0xc06>
 8002dae:	f10b 0b08 	add.w	fp, fp, #8
 8002db2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002db4:	b16b      	cbz	r3, 8002dd2 <_vfprintf_r+0x3fa>
 8002db6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002db8:	3301      	adds	r3, #1
 8002dba:	3402      	adds	r4, #2
 8002dbc:	a923      	add	r1, sp, #140	; 0x8c
 8002dbe:	2202      	movs	r2, #2
 8002dc0:	2b07      	cmp	r3, #7
 8002dc2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002dc6:	e9cb 1200 	strd	r1, r2, [fp]
 8002dca:	f300 8415 	bgt.w	80035f8 <_vfprintf_r+0xc20>
 8002dce:	f10b 0b08 	add.w	fp, fp, #8
 8002dd2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002dd4:	2b80      	cmp	r3, #128	; 0x80
 8002dd6:	f000 8331 	beq.w	800343c <_vfprintf_r+0xa64>
 8002dda:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002ddc:	eba9 0503 	sub.w	r5, r9, r3
 8002de0:	2d00      	cmp	r5, #0
 8002de2:	dd37      	ble.n	8002e54 <_vfprintf_r+0x47c>
 8002de4:	2d10      	cmp	r5, #16
 8002de6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002de8:	4b90      	ldr	r3, [pc, #576]	; (800302c <_vfprintf_r+0x654>)
 8002dea:	dd28      	ble.n	8002e3e <_vfprintf_r+0x466>
 8002dec:	4659      	mov	r1, fp
 8002dee:	4620      	mov	r0, r4
 8002df0:	46bb      	mov	fp, r7
 8002df2:	f04f 0910 	mov.w	r9, #16
 8002df6:	4637      	mov	r7, r6
 8002df8:	461c      	mov	r4, r3
 8002dfa:	9e07      	ldr	r6, [sp, #28]
 8002dfc:	e004      	b.n	8002e08 <_vfprintf_r+0x430>
 8002dfe:	3d10      	subs	r5, #16
 8002e00:	2d10      	cmp	r5, #16
 8002e02:	f101 0108 	add.w	r1, r1, #8
 8002e06:	dd15      	ble.n	8002e34 <_vfprintf_r+0x45c>
 8002e08:	3201      	adds	r2, #1
 8002e0a:	3010      	adds	r0, #16
 8002e0c:	2a07      	cmp	r2, #7
 8002e0e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e12:	e9c1 4900 	strd	r4, r9, [r1]
 8002e16:	ddf2      	ble.n	8002dfe <_vfprintf_r+0x426>
 8002e18:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e1a:	4631      	mov	r1, r6
 8002e1c:	9803      	ldr	r0, [sp, #12]
 8002e1e:	f004 f909 	bl	8007034 <__sprint_r>
 8002e22:	2800      	cmp	r0, #0
 8002e24:	f040 83d9 	bne.w	80035da <_vfprintf_r+0xc02>
 8002e28:	3d10      	subs	r5, #16
 8002e2a:	2d10      	cmp	r5, #16
 8002e2c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e30:	a92d      	add	r1, sp, #180	; 0xb4
 8002e32:	dce9      	bgt.n	8002e08 <_vfprintf_r+0x430>
 8002e34:	463e      	mov	r6, r7
 8002e36:	4623      	mov	r3, r4
 8002e38:	465f      	mov	r7, fp
 8002e3a:	4604      	mov	r4, r0
 8002e3c:	468b      	mov	fp, r1
 8002e3e:	3201      	adds	r2, #1
 8002e40:	442c      	add	r4, r5
 8002e42:	2a07      	cmp	r2, #7
 8002e44:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e48:	e9cb 3500 	strd	r3, r5, [fp]
 8002e4c:	f300 83ef 	bgt.w	800362e <_vfprintf_r+0xc56>
 8002e50:	f10b 0b08 	add.w	fp, fp, #8
 8002e54:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002e58:	f040 8280 	bne.w	800335c <_vfprintf_r+0x984>
 8002e5c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e5e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e60:	f8cb 7000 	str.w	r7, [fp]
 8002e64:	3301      	adds	r3, #1
 8002e66:	4414      	add	r4, r2
 8002e68:	2b07      	cmp	r3, #7
 8002e6a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e6c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e70:	932b      	str	r3, [sp, #172]	; 0xac
 8002e72:	f300 8392 	bgt.w	800359a <_vfprintf_r+0xbc2>
 8002e76:	f10b 0b08 	add.w	fp, fp, #8
 8002e7a:	f018 0f04 	tst.w	r8, #4
 8002e7e:	d03b      	beq.n	8002ef8 <_vfprintf_r+0x520>
 8002e80:	9b06      	ldr	r3, [sp, #24]
 8002e82:	9a04      	ldr	r2, [sp, #16]
 8002e84:	1a9d      	subs	r5, r3, r2
 8002e86:	2d00      	cmp	r5, #0
 8002e88:	dd36      	ble.n	8002ef8 <_vfprintf_r+0x520>
 8002e8a:	2d10      	cmp	r5, #16
 8002e8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e8e:	dd21      	ble.n	8002ed4 <_vfprintf_r+0x4fc>
 8002e90:	2610      	movs	r6, #16
 8002e92:	9f03      	ldr	r7, [sp, #12]
 8002e94:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002e98:	e004      	b.n	8002ea4 <_vfprintf_r+0x4cc>
 8002e9a:	3d10      	subs	r5, #16
 8002e9c:	2d10      	cmp	r5, #16
 8002e9e:	f10b 0b08 	add.w	fp, fp, #8
 8002ea2:	dd17      	ble.n	8002ed4 <_vfprintf_r+0x4fc>
 8002ea4:	3301      	adds	r3, #1
 8002ea6:	4a60      	ldr	r2, [pc, #384]	; (8003028 <_vfprintf_r+0x650>)
 8002ea8:	3410      	adds	r4, #16
 8002eaa:	2b07      	cmp	r3, #7
 8002eac:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002eb0:	e9cb 2600 	strd	r2, r6, [fp]
 8002eb4:	ddf1      	ble.n	8002e9a <_vfprintf_r+0x4c2>
 8002eb6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eb8:	4641      	mov	r1, r8
 8002eba:	4638      	mov	r0, r7
 8002ebc:	f004 f8ba 	bl	8007034 <__sprint_r>
 8002ec0:	2800      	cmp	r0, #0
 8002ec2:	f040 856c 	bne.w	800399e <_vfprintf_r+0xfc6>
 8002ec6:	3d10      	subs	r5, #16
 8002ec8:	2d10      	cmp	r5, #16
 8002eca:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002ece:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ed2:	dce7      	bgt.n	8002ea4 <_vfprintf_r+0x4cc>
 8002ed4:	3301      	adds	r3, #1
 8002ed6:	4a54      	ldr	r2, [pc, #336]	; (8003028 <_vfprintf_r+0x650>)
 8002ed8:	442c      	add	r4, r5
 8002eda:	2b07      	cmp	r3, #7
 8002edc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ee0:	e9cb 2500 	strd	r2, r5, [fp]
 8002ee4:	dd08      	ble.n	8002ef8 <_vfprintf_r+0x520>
 8002ee6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee8:	9907      	ldr	r1, [sp, #28]
 8002eea:	9803      	ldr	r0, [sp, #12]
 8002eec:	f004 f8a2 	bl	8007034 <__sprint_r>
 8002ef0:	2800      	cmp	r0, #0
 8002ef2:	f040 82e9 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8002ef6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ef8:	9904      	ldr	r1, [sp, #16]
 8002efa:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002efe:	428a      	cmp	r2, r1
 8002f00:	bfac      	ite	ge
 8002f02:	189b      	addge	r3, r3, r2
 8002f04:	185b      	addlt	r3, r3, r1
 8002f06:	9305      	str	r3, [sp, #20]
 8002f08:	2c00      	cmp	r4, #0
 8002f0a:	f040 82d5 	bne.w	80034b8 <_vfprintf_r+0xae0>
 8002f0e:	2300      	movs	r3, #0
 8002f10:	932b      	str	r3, [sp, #172]	; 0xac
 8002f12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f14:	b11b      	cbz	r3, 8002f1e <_vfprintf_r+0x546>
 8002f16:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f18:	9803      	ldr	r0, [sp, #12]
 8002f1a:	f002 fc9d 	bl	8005858 <_free_r>
 8002f1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f22:	4657      	mov	r7, sl
 8002f24:	783b      	ldrb	r3, [r7, #0]
 8002f26:	2b00      	cmp	r3, #0
 8002f28:	f47f ada7 	bne.w	8002a7a <_vfprintf_r+0xa2>
 8002f2c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002f2e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f32:	2b00      	cmp	r3, #0
 8002f34:	f041 80e7 	bne.w	8004106 <_vfprintf_r+0x172e>
 8002f38:	2300      	movs	r3, #0
 8002f3a:	932b      	str	r3, [sp, #172]	; 0xac
 8002f3c:	e2cb      	b.n	80034d6 <_vfprintf_r+0xafe>
 8002f3e:	4643      	mov	r3, r8
 8002f40:	069a      	lsls	r2, r3, #26
 8002f42:	f140 814e 	bpl.w	80031e2 <_vfprintf_r+0x80a>
 8002f46:	9c08      	ldr	r4, [sp, #32]
 8002f48:	3407      	adds	r4, #7
 8002f4a:	f024 0207 	bic.w	r2, r4, #7
 8002f4e:	f102 0108 	add.w	r1, r2, #8
 8002f52:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002f56:	9108      	str	r1, [sp, #32]
 8002f58:	2201      	movs	r2, #1
 8002f5a:	2100      	movs	r1, #0
 8002f5c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002f60:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f64:	a956      	add	r1, sp, #344	; 0x158
 8002f66:	9104      	str	r1, [sp, #16]
 8002f68:	f47f aea2 	bne.w	8002cb0 <_vfprintf_r+0x2d8>
 8002f6c:	4698      	mov	r8, r3
 8002f6e:	2a01      	cmp	r2, #1
 8002f70:	f000 8350 	beq.w	8003614 <_vfprintf_r+0xc3c>
 8002f74:	2a02      	cmp	r2, #2
 8002f76:	f000 831b 	beq.w	80035b0 <_vfprintf_r+0xbd8>
 8002f7a:	a956      	add	r1, sp, #344	; 0x158
 8002f7c:	e000      	b.n	8002f80 <_vfprintf_r+0x5a8>
 8002f7e:	4639      	mov	r1, r7
 8002f80:	08e2      	lsrs	r2, r4, #3
 8002f82:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002f86:	08e8      	lsrs	r0, r5, #3
 8002f88:	f004 0307 	and.w	r3, r4, #7
 8002f8c:	4605      	mov	r5, r0
 8002f8e:	4614      	mov	r4, r2
 8002f90:	3330      	adds	r3, #48	; 0x30
 8002f92:	ea54 0205 	orrs.w	r2, r4, r5
 8002f96:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002f9a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002f9e:	d1ee      	bne.n	8002f7e <_vfprintf_r+0x5a6>
 8002fa0:	f018 0f01 	tst.w	r8, #1
 8002fa4:	f000 8314 	beq.w	80035d0 <_vfprintf_r+0xbf8>
 8002fa8:	2b30      	cmp	r3, #48	; 0x30
 8002faa:	f000 8311 	beq.w	80035d0 <_vfprintf_r+0xbf8>
 8002fae:	9a04      	ldr	r2, [sp, #16]
 8002fb0:	3902      	subs	r1, #2
 8002fb2:	2330      	movs	r3, #48	; 0x30
 8002fb4:	1a52      	subs	r2, r2, r1
 8002fb6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002fba:	9209      	str	r2, [sp, #36]	; 0x24
 8002fbc:	460f      	mov	r7, r1
 8002fbe:	e68c      	b.n	8002cda <_vfprintf_r+0x302>
 8002fc0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002fc4:	2200      	movs	r2, #0
 8002fc6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002fca:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002fce:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002fd2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002fd6:	2b09      	cmp	r3, #9
 8002fd8:	d9f5      	bls.n	8002fc6 <_vfprintf_r+0x5ee>
 8002fda:	9206      	str	r2, [sp, #24]
 8002fdc:	e57c      	b.n	8002ad8 <_vfprintf_r+0x100>
 8002fde:	4b14      	ldr	r3, [pc, #80]	; (8003030 <_vfprintf_r+0x658>)
 8002fe0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fe2:	f018 0f20 	tst.w	r8, #32
 8002fe6:	f000 8114 	beq.w	8003212 <_vfprintf_r+0x83a>
 8002fea:	9c08      	ldr	r4, [sp, #32]
 8002fec:	3407      	adds	r4, #7
 8002fee:	f024 0307 	bic.w	r3, r4, #7
 8002ff2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ff6:	f103 0208 	add.w	r2, r3, #8
 8002ffa:	9208      	str	r2, [sp, #32]
 8002ffc:	f018 0f01 	tst.w	r8, #1
 8003000:	d009      	beq.n	8003016 <_vfprintf_r+0x63e>
 8003002:	ea54 0305 	orrs.w	r3, r4, r5
 8003006:	d006      	beq.n	8003016 <_vfprintf_r+0x63e>
 8003008:	2330      	movs	r3, #48	; 0x30
 800300a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800300e:	f048 0802 	orr.w	r8, r8, #2
 8003012:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003016:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800301a:	2202      	movs	r2, #2
 800301c:	e79d      	b.n	8002f5a <_vfprintf_r+0x582>
 800301e:	f048 0801 	orr.w	r8, r8, #1
 8003022:	f89a 6000 	ldrb.w	r6, [sl]
 8003026:	e555      	b.n	8002ad4 <_vfprintf_r+0xfc>
 8003028:	0800771c 	.word	0x0800771c
 800302c:	0800772c 	.word	0x0800772c
 8003030:	080076e8 	.word	0x080076e8
 8003034:	9e03      	ldr	r6, [sp, #12]
 8003036:	4630      	mov	r0, r6
 8003038:	f002 feaa 	bl	8005d90 <_localeconv_r>
 800303c:	6843      	ldr	r3, [r0, #4]
 800303e:	9318      	str	r3, [sp, #96]	; 0x60
 8003040:	4618      	mov	r0, r3
 8003042:	f7fd ff7d 	bl	8000f40 <strlen>
 8003046:	901b      	str	r0, [sp, #108]	; 0x6c
 8003048:	4604      	mov	r4, r0
 800304a:	4630      	mov	r0, r6
 800304c:	f002 fea0 	bl	8005d90 <_localeconv_r>
 8003050:	6883      	ldr	r3, [r0, #8]
 8003052:	931a      	str	r3, [sp, #104]	; 0x68
 8003054:	2c00      	cmp	r4, #0
 8003056:	f43f adb8 	beq.w	8002bca <_vfprintf_r+0x1f2>
 800305a:	f89a 6000 	ldrb.w	r6, [sl]
 800305e:	2b00      	cmp	r3, #0
 8003060:	f43f ad38 	beq.w	8002ad4 <_vfprintf_r+0xfc>
 8003064:	781b      	ldrb	r3, [r3, #0]
 8003066:	2b00      	cmp	r3, #0
 8003068:	f43f ad34 	beq.w	8002ad4 <_vfprintf_r+0xfc>
 800306c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003070:	e530      	b.n	8002ad4 <_vfprintf_r+0xfc>
 8003072:	9b08      	ldr	r3, [sp, #32]
 8003074:	f89a 6000 	ldrb.w	r6, [sl]
 8003078:	681a      	ldr	r2, [r3, #0]
 800307a:	9206      	str	r2, [sp, #24]
 800307c:	2a00      	cmp	r2, #0
 800307e:	f103 0304 	add.w	r3, r3, #4
 8003082:	f2c0 8697 	blt.w	8003db4 <_vfprintf_r+0x13dc>
 8003086:	9308      	str	r3, [sp, #32]
 8003088:	e524      	b.n	8002ad4 <_vfprintf_r+0xfc>
 800308a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800308e:	f89a 6000 	ldrb.w	r6, [sl]
 8003092:	e51f      	b.n	8002ad4 <_vfprintf_r+0xfc>
 8003094:	f89a 6000 	ldrb.w	r6, [sl]
 8003098:	f048 0804 	orr.w	r8, r8, #4
 800309c:	e51a      	b.n	8002ad4 <_vfprintf_r+0xfc>
 800309e:	f89a 6000 	ldrb.w	r6, [sl]
 80030a2:	2e2a      	cmp	r6, #42	; 0x2a
 80030a4:	f10a 0201 	add.w	r2, sl, #1
 80030a8:	f001 81b0 	beq.w	800440c <_vfprintf_r+0x1a34>
 80030ac:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80030b0:	2b09      	cmp	r3, #9
 80030b2:	4692      	mov	sl, r2
 80030b4:	f04f 0900 	mov.w	r9, #0
 80030b8:	f63f ad0e 	bhi.w	8002ad8 <_vfprintf_r+0x100>
 80030bc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80030c0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80030c4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80030c8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80030cc:	2b09      	cmp	r3, #9
 80030ce:	d9f5      	bls.n	80030bc <_vfprintf_r+0x6e4>
 80030d0:	e502      	b.n	8002ad8 <_vfprintf_r+0x100>
 80030d2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80030d6:	f89a 6000 	ldrb.w	r6, [sl]
 80030da:	e4fb      	b.n	8002ad4 <_vfprintf_r+0xfc>
 80030dc:	9c08      	ldr	r4, [sp, #32]
 80030de:	3407      	adds	r4, #7
 80030e0:	f024 0407 	bic.w	r4, r4, #7
 80030e4:	ed94 7b00 	vldr	d7, [r4]
 80030e8:	ec52 1b17 	vmov	r1, r2, d7
 80030ec:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80030f0:	931d      	str	r3, [sp, #116]	; 0x74
 80030f2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80030f6:	3408      	adds	r4, #8
 80030f8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80030fc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003100:	4bba      	ldr	r3, [pc, #744]	; (80033ec <_vfprintf_r+0xa14>)
 8003102:	9408      	str	r4, [sp, #32]
 8003104:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003108:	f7fd fcd0 	bl	8000aac <__aeabi_dcmpun>
 800310c:	2800      	cmp	r0, #0
 800310e:	f040 846f 	bne.w	80039f0 <_vfprintf_r+0x1018>
 8003112:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003116:	4bb5      	ldr	r3, [pc, #724]	; (80033ec <_vfprintf_r+0xa14>)
 8003118:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800311c:	f7fd fca8 	bl	8000a70 <__aeabi_dcmple>
 8003120:	2800      	cmp	r0, #0
 8003122:	f040 8465 	bne.w	80039f0 <_vfprintf_r+0x1018>
 8003126:	2200      	movs	r2, #0
 8003128:	2300      	movs	r3, #0
 800312a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800312e:	f7fd fc95 	bl	8000a5c <__aeabi_dcmplt>
 8003132:	2800      	cmp	r0, #0
 8003134:	f040 855b 	bne.w	8003bee <_vfprintf_r+0x1216>
 8003138:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800313c:	4fac      	ldr	r7, [pc, #688]	; (80033f0 <_vfprintf_r+0xa18>)
 800313e:	4bad      	ldr	r3, [pc, #692]	; (80033f4 <_vfprintf_r+0xa1c>)
 8003140:	2000      	movs	r0, #0
 8003142:	2103      	movs	r1, #3
 8003144:	9104      	str	r1, [sp, #16]
 8003146:	900a      	str	r0, [sp, #40]	; 0x28
 8003148:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800314c:	2e47      	cmp	r6, #71	; 0x47
 800314e:	bfd8      	it	le
 8003150:	461f      	movle	r7, r3
 8003152:	9109      	str	r1, [sp, #36]	; 0x24
 8003154:	4681      	mov	r9, r0
 8003156:	900f      	str	r0, [sp, #60]	; 0x3c
 8003158:	9014      	str	r0, [sp, #80]	; 0x50
 800315a:	9011      	str	r0, [sp, #68]	; 0x44
 800315c:	e5c9      	b.n	8002cf2 <_vfprintf_r+0x31a>
 800315e:	9808      	ldr	r0, [sp, #32]
 8003160:	2300      	movs	r3, #0
 8003162:	6801      	ldr	r1, [r0, #0]
 8003164:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003168:	461a      	mov	r2, r3
 800316a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800316e:	2301      	movs	r3, #1
 8003170:	1d01      	adds	r1, r0, #4
 8003172:	9304      	str	r3, [sp, #16]
 8003174:	920a      	str	r2, [sp, #40]	; 0x28
 8003176:	4691      	mov	r9, r2
 8003178:	920f      	str	r2, [sp, #60]	; 0x3c
 800317a:	9214      	str	r2, [sp, #80]	; 0x50
 800317c:	9211      	str	r2, [sp, #68]	; 0x44
 800317e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003182:	af3d      	add	r7, sp, #244	; 0xf4
 8003184:	e5b9      	b.n	8002cfa <_vfprintf_r+0x322>
 8003186:	9b08      	ldr	r3, [sp, #32]
 8003188:	681f      	ldr	r7, [r3, #0]
 800318a:	2500      	movs	r5, #0
 800318c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003190:	1d1c      	adds	r4, r3, #4
 8003192:	2f00      	cmp	r7, #0
 8003194:	f000 8639 	beq.w	8003e0a <_vfprintf_r+0x1432>
 8003198:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800319c:	f000 8711 	beq.w	8003fc2 <_vfprintf_r+0x15ea>
 80031a0:	464a      	mov	r2, r9
 80031a2:	4629      	mov	r1, r5
 80031a4:	4638      	mov	r0, r7
 80031a6:	f7fd ff3b 	bl	8001020 <memchr>
 80031aa:	900a      	str	r0, [sp, #40]	; 0x28
 80031ac:	2800      	cmp	r0, #0
 80031ae:	f000 85e7 	beq.w	8003d80 <_vfprintf_r+0x13a8>
 80031b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80031b4:	1bdb      	subs	r3, r3, r7
 80031b6:	9309      	str	r3, [sp, #36]	; 0x24
 80031b8:	46a9      	mov	r9, r5
 80031ba:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80031be:	9408      	str	r4, [sp, #32]
 80031c0:	9304      	str	r3, [sp, #16]
 80031c2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80031c6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80031ca:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80031ce:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80031d2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031d6:	e58c      	b.n	8002cf2 <_vfprintf_r+0x31a>
 80031d8:	f048 0310 	orr.w	r3, r8, #16
 80031dc:	069a      	lsls	r2, r3, #26
 80031de:	f53f aeb2 	bmi.w	8002f46 <_vfprintf_r+0x56e>
 80031e2:	9a08      	ldr	r2, [sp, #32]
 80031e4:	06df      	lsls	r7, r3, #27
 80031e6:	f102 0104 	add.w	r1, r2, #4
 80031ea:	f100 837e 	bmi.w	80038ea <_vfprintf_r+0xf12>
 80031ee:	065d      	lsls	r5, r3, #25
 80031f0:	9a08      	ldr	r2, [sp, #32]
 80031f2:	f100 84e4 	bmi.w	8003bbe <_vfprintf_r+0x11e6>
 80031f6:	059c      	lsls	r4, r3, #22
 80031f8:	f140 8377 	bpl.w	80038ea <_vfprintf_r+0xf12>
 80031fc:	7814      	ldrb	r4, [r2, #0]
 80031fe:	9108      	str	r1, [sp, #32]
 8003200:	2500      	movs	r5, #0
 8003202:	2201      	movs	r2, #1
 8003204:	e6a9      	b.n	8002f5a <_vfprintf_r+0x582>
 8003206:	4b7c      	ldr	r3, [pc, #496]	; (80033f8 <_vfprintf_r+0xa20>)
 8003208:	9317      	str	r3, [sp, #92]	; 0x5c
 800320a:	f018 0f20 	tst.w	r8, #32
 800320e:	f47f aeec 	bne.w	8002fea <_vfprintf_r+0x612>
 8003212:	9a08      	ldr	r2, [sp, #32]
 8003214:	f018 0f10 	tst.w	r8, #16
 8003218:	f102 0304 	add.w	r3, r2, #4
 800321c:	f040 8354 	bne.w	80038c8 <_vfprintf_r+0xef0>
 8003220:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003224:	9a08      	ldr	r2, [sp, #32]
 8003226:	f040 84d0 	bne.w	8003bca <_vfprintf_r+0x11f2>
 800322a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800322e:	f000 834b 	beq.w	80038c8 <_vfprintf_r+0xef0>
 8003232:	7814      	ldrb	r4, [r2, #0]
 8003234:	9308      	str	r3, [sp, #32]
 8003236:	2500      	movs	r5, #0
 8003238:	e6e0      	b.n	8002ffc <_vfprintf_r+0x624>
 800323a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800323e:	f89a 6000 	ldrb.w	r6, [sl]
 8003242:	2b00      	cmp	r3, #0
 8003244:	f47f ac46 	bne.w	8002ad4 <_vfprintf_r+0xfc>
 8003248:	2320      	movs	r3, #32
 800324a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800324e:	e441      	b.n	8002ad4 <_vfprintf_r+0xfc>
 8003250:	f89a 6000 	ldrb.w	r6, [sl]
 8003254:	2e6c      	cmp	r6, #108	; 0x6c
 8003256:	bf03      	ittte	eq
 8003258:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800325c:	f048 0820 	orreq.w	r8, r8, #32
 8003260:	f10a 0a01 	addeq.w	sl, sl, #1
 8003264:	f048 0810 	orrne.w	r8, r8, #16
 8003268:	e434      	b.n	8002ad4 <_vfprintf_r+0xfc>
 800326a:	9a08      	ldr	r2, [sp, #32]
 800326c:	f018 0f20 	tst.w	r8, #32
 8003270:	f852 3b04 	ldr.w	r3, [r2], #4
 8003274:	9208      	str	r2, [sp, #32]
 8003276:	f000 83a1 	beq.w	80039bc <_vfprintf_r+0xfe4>
 800327a:	9a05      	ldr	r2, [sp, #20]
 800327c:	4610      	mov	r0, r2
 800327e:	17d1      	asrs	r1, r2, #31
 8003280:	e9c3 0100 	strd	r0, r1, [r3]
 8003284:	4657      	mov	r7, sl
 8003286:	e64d      	b.n	8002f24 <_vfprintf_r+0x54c>
 8003288:	f89a 6000 	ldrb.w	r6, [sl]
 800328c:	2e68      	cmp	r6, #104	; 0x68
 800328e:	bf03      	ittte	eq
 8003290:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003294:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003298:	f10a 0a01 	addeq.w	sl, sl, #1
 800329c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80032a0:	e418      	b.n	8002ad4 <_vfprintf_r+0xfc>
 80032a2:	9908      	ldr	r1, [sp, #32]
 80032a4:	4b55      	ldr	r3, [pc, #340]	; (80033fc <_vfprintf_r+0xa24>)
 80032a6:	680c      	ldr	r4, [r1, #0]
 80032a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80032aa:	f647 0230 	movw	r2, #30768	; 0x7830
 80032ae:	3104      	adds	r1, #4
 80032b0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80032b4:	f048 0302 	orr.w	r3, r8, #2
 80032b8:	9108      	str	r1, [sp, #32]
 80032ba:	2500      	movs	r5, #0
 80032bc:	2202      	movs	r2, #2
 80032be:	2678      	movs	r6, #120	; 0x78
 80032c0:	e64b      	b.n	8002f5a <_vfprintf_r+0x582>
 80032c2:	f048 0808 	orr.w	r8, r8, #8
 80032c6:	f89a 6000 	ldrb.w	r6, [sl]
 80032ca:	e403      	b.n	8002ad4 <_vfprintf_r+0xfc>
 80032cc:	f048 0310 	orr.w	r3, r8, #16
 80032d0:	069f      	lsls	r7, r3, #26
 80032d2:	f53f acd1 	bmi.w	8002c78 <_vfprintf_r+0x2a0>
 80032d6:	9908      	ldr	r1, [sp, #32]
 80032d8:	06dd      	lsls	r5, r3, #27
 80032da:	f101 0204 	add.w	r2, r1, #4
 80032de:	f100 82fd 	bmi.w	80038dc <_vfprintf_r+0xf04>
 80032e2:	065c      	lsls	r4, r3, #25
 80032e4:	9908      	ldr	r1, [sp, #32]
 80032e6:	f100 8475 	bmi.w	8003bd4 <_vfprintf_r+0x11fc>
 80032ea:	0598      	lsls	r0, r3, #22
 80032ec:	f140 82f6 	bpl.w	80038dc <_vfprintf_r+0xf04>
 80032f0:	f991 4000 	ldrsb.w	r4, [r1]
 80032f4:	9208      	str	r2, [sp, #32]
 80032f6:	17e5      	asrs	r5, r4, #31
 80032f8:	4620      	mov	r0, r4
 80032fa:	4629      	mov	r1, r5
 80032fc:	e4c7      	b.n	8002c8e <_vfprintf_r+0x2b6>
 80032fe:	9a08      	ldr	r2, [sp, #32]
 8003300:	f018 0f10 	tst.w	r8, #16
 8003304:	f102 0304 	add.w	r3, r2, #4
 8003308:	f040 82e3 	bne.w	80038d2 <_vfprintf_r+0xefa>
 800330c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003310:	9a08      	ldr	r2, [sp, #32]
 8003312:	f040 8467 	bne.w	8003be4 <_vfprintf_r+0x120c>
 8003316:	f418 7f00 	tst.w	r8, #512	; 0x200
 800331a:	f000 82da 	beq.w	80038d2 <_vfprintf_r+0xefa>
 800331e:	7814      	ldrb	r4, [r2, #0]
 8003320:	9308      	str	r3, [sp, #32]
 8003322:	2500      	movs	r5, #0
 8003324:	e488      	b.n	8002c38 <_vfprintf_r+0x260>
 8003326:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800332a:	f002 fd45 	bl	8005db8 <__retarget_lock_release_recursive>
 800332e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003332:	9305      	str	r3, [sp, #20]
 8003334:	e443      	b.n	8002bbe <_vfprintf_r+0x1e6>
 8003336:	2e00      	cmp	r6, #0
 8003338:	f43f adf8 	beq.w	8002f2c <_vfprintf_r+0x554>
 800333c:	2300      	movs	r3, #0
 800333e:	2101      	movs	r1, #1
 8003340:	461a      	mov	r2, r3
 8003342:	9104      	str	r1, [sp, #16]
 8003344:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003348:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800334c:	930a      	str	r3, [sp, #40]	; 0x28
 800334e:	4699      	mov	r9, r3
 8003350:	930f      	str	r3, [sp, #60]	; 0x3c
 8003352:	9314      	str	r3, [sp, #80]	; 0x50
 8003354:	9311      	str	r3, [sp, #68]	; 0x44
 8003356:	9109      	str	r1, [sp, #36]	; 0x24
 8003358:	af3d      	add	r7, sp, #244	; 0xf4
 800335a:	e4ce      	b.n	8002cfa <_vfprintf_r+0x322>
 800335c:	2e65      	cmp	r6, #101	; 0x65
 800335e:	f340 80ca 	ble.w	80034f6 <_vfprintf_r+0xb1e>
 8003362:	2200      	movs	r2, #0
 8003364:	2300      	movs	r3, #0
 8003366:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800336a:	f7fd fb6d 	bl	8000a48 <__aeabi_dcmpeq>
 800336e:	2800      	cmp	r0, #0
 8003370:	f000 8169 	beq.w	8003646 <_vfprintf_r+0xc6e>
 8003374:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003376:	4a22      	ldr	r2, [pc, #136]	; (8003400 <_vfprintf_r+0xa28>)
 8003378:	f8cb 2000 	str.w	r2, [fp]
 800337c:	3301      	adds	r3, #1
 800337e:	3401      	adds	r4, #1
 8003380:	2201      	movs	r2, #1
 8003382:	2b07      	cmp	r3, #7
 8003384:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003388:	f8cb 2004 	str.w	r2, [fp, #4]
 800338c:	f300 8406 	bgt.w	8003b9c <_vfprintf_r+0x11c4>
 8003390:	f10b 0b08 	add.w	fp, fp, #8
 8003394:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003396:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003398:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800339a:	4293      	cmp	r3, r2
 800339c:	db03      	blt.n	80033a6 <_vfprintf_r+0x9ce>
 800339e:	f018 0f01 	tst.w	r8, #1
 80033a2:	f43f ad6a 	beq.w	8002e7a <_vfprintf_r+0x4a2>
 80033a6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033a8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80033aa:	f8cb 2000 	str.w	r2, [fp]
 80033ae:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033b0:	f8cb 2004 	str.w	r2, [fp, #4]
 80033b4:	3301      	adds	r3, #1
 80033b6:	4414      	add	r4, r2
 80033b8:	2b07      	cmp	r3, #7
 80033ba:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80033be:	f300 8517 	bgt.w	8003df0 <_vfprintf_r+0x1418>
 80033c2:	f10b 0b08 	add.w	fp, fp, #8
 80033c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80033c8:	1e5d      	subs	r5, r3, #1
 80033ca:	2d00      	cmp	r5, #0
 80033cc:	f77f ad55 	ble.w	8002e7a <_vfprintf_r+0x4a2>
 80033d0:	2d10      	cmp	r5, #16
 80033d2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033d4:	4b0b      	ldr	r3, [pc, #44]	; (8003404 <_vfprintf_r+0xa2c>)
 80033d6:	f340 82e7 	ble.w	80039a8 <_vfprintf_r+0xfd0>
 80033da:	4619      	mov	r1, r3
 80033dc:	2610      	movs	r6, #16
 80033de:	4623      	mov	r3, r4
 80033e0:	9f03      	ldr	r7, [sp, #12]
 80033e2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80033e6:	460c      	mov	r4, r1
 80033e8:	e014      	b.n	8003414 <_vfprintf_r+0xa3c>
 80033ea:	bf00      	nop
 80033ec:	7fefffff 	.word	0x7fefffff
 80033f0:	080076dc 	.word	0x080076dc
 80033f4:	080076d8 	.word	0x080076d8
 80033f8:	080076fc 	.word	0x080076fc
 80033fc:	080076e8 	.word	0x080076e8
 8003400:	08007718 	.word	0x08007718
 8003404:	0800772c 	.word	0x0800772c
 8003408:	f10b 0b08 	add.w	fp, fp, #8
 800340c:	3d10      	subs	r5, #16
 800340e:	2d10      	cmp	r5, #16
 8003410:	f340 82c7 	ble.w	80039a2 <_vfprintf_r+0xfca>
 8003414:	3201      	adds	r2, #1
 8003416:	3310      	adds	r3, #16
 8003418:	2a07      	cmp	r2, #7
 800341a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800341e:	e9cb 4600 	strd	r4, r6, [fp]
 8003422:	ddf1      	ble.n	8003408 <_vfprintf_r+0xa30>
 8003424:	aa2a      	add	r2, sp, #168	; 0xa8
 8003426:	4649      	mov	r1, r9
 8003428:	4638      	mov	r0, r7
 800342a:	f003 fe03 	bl	8007034 <__sprint_r>
 800342e:	2800      	cmp	r0, #0
 8003430:	d14c      	bne.n	80034cc <_vfprintf_r+0xaf4>
 8003432:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003436:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800343a:	e7e7      	b.n	800340c <_vfprintf_r+0xa34>
 800343c:	9b06      	ldr	r3, [sp, #24]
 800343e:	9a04      	ldr	r2, [sp, #16]
 8003440:	1a9d      	subs	r5, r3, r2
 8003442:	2d00      	cmp	r5, #0
 8003444:	f77f acc9 	ble.w	8002dda <_vfprintf_r+0x402>
 8003448:	2d10      	cmp	r5, #16
 800344a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800344c:	4bbc      	ldr	r3, [pc, #752]	; (8003740 <_vfprintf_r+0xd68>)
 800344e:	dd27      	ble.n	80034a0 <_vfprintf_r+0xac8>
 8003450:	4659      	mov	r1, fp
 8003452:	4620      	mov	r0, r4
 8003454:	46bb      	mov	fp, r7
 8003456:	461c      	mov	r4, r3
 8003458:	4637      	mov	r7, r6
 800345a:	9e07      	ldr	r6, [sp, #28]
 800345c:	e004      	b.n	8003468 <_vfprintf_r+0xa90>
 800345e:	3d10      	subs	r5, #16
 8003460:	2d10      	cmp	r5, #16
 8003462:	f101 0108 	add.w	r1, r1, #8
 8003466:	dd16      	ble.n	8003496 <_vfprintf_r+0xabe>
 8003468:	3201      	adds	r2, #1
 800346a:	3010      	adds	r0, #16
 800346c:	2310      	movs	r3, #16
 800346e:	2a07      	cmp	r2, #7
 8003470:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003474:	600c      	str	r4, [r1, #0]
 8003476:	604b      	str	r3, [r1, #4]
 8003478:	ddf1      	ble.n	800345e <_vfprintf_r+0xa86>
 800347a:	aa2a      	add	r2, sp, #168	; 0xa8
 800347c:	4631      	mov	r1, r6
 800347e:	9803      	ldr	r0, [sp, #12]
 8003480:	f003 fdd8 	bl	8007034 <__sprint_r>
 8003484:	2800      	cmp	r0, #0
 8003486:	f040 80a8 	bne.w	80035da <_vfprintf_r+0xc02>
 800348a:	3d10      	subs	r5, #16
 800348c:	2d10      	cmp	r5, #16
 800348e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003492:	a92d      	add	r1, sp, #180	; 0xb4
 8003494:	dce8      	bgt.n	8003468 <_vfprintf_r+0xa90>
 8003496:	463e      	mov	r6, r7
 8003498:	4623      	mov	r3, r4
 800349a:	465f      	mov	r7, fp
 800349c:	4604      	mov	r4, r0
 800349e:	468b      	mov	fp, r1
 80034a0:	3201      	adds	r2, #1
 80034a2:	442c      	add	r4, r5
 80034a4:	2a07      	cmp	r2, #7
 80034a6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034aa:	e9cb 3500 	strd	r3, r5, [fp]
 80034ae:	f300 8292 	bgt.w	80039d6 <_vfprintf_r+0xffe>
 80034b2:	f10b 0b08 	add.w	fp, fp, #8
 80034b6:	e490      	b.n	8002dda <_vfprintf_r+0x402>
 80034b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ba:	9907      	ldr	r1, [sp, #28]
 80034bc:	9803      	ldr	r0, [sp, #12]
 80034be:	f003 fdb9 	bl	8007034 <__sprint_r>
 80034c2:	2800      	cmp	r0, #0
 80034c4:	f43f ad23 	beq.w	8002f0e <_vfprintf_r+0x536>
 80034c8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80034cc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80034ce:	b111      	cbz	r1, 80034d6 <_vfprintf_r+0xafe>
 80034d0:	9803      	ldr	r0, [sp, #12]
 80034d2:	f002 f9c1 	bl	8005858 <_free_r>
 80034d6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80034da:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80034de:	07d0      	lsls	r0, r2, #31
 80034e0:	d402      	bmi.n	80034e8 <_vfprintf_r+0xb10>
 80034e2:	0599      	lsls	r1, r3, #22
 80034e4:	f140 81d0 	bpl.w	8003888 <_vfprintf_r+0xeb0>
 80034e8:	065a      	lsls	r2, r3, #25
 80034ea:	f53f ab65 	bmi.w	8002bb8 <_vfprintf_r+0x1e0>
 80034ee:	9805      	ldr	r0, [sp, #20]
 80034f0:	b057      	add	sp, #348	; 0x15c
 80034f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80034f6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034f8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034fa:	2a01      	cmp	r2, #1
 80034fc:	f104 0401 	add.w	r4, r4, #1
 8003500:	f103 0501 	add.w	r5, r3, #1
 8003504:	f10b 0608 	add.w	r6, fp, #8
 8003508:	f340 811c 	ble.w	8003744 <_vfprintf_r+0xd6c>
 800350c:	2301      	movs	r3, #1
 800350e:	2d07      	cmp	r5, #7
 8003510:	f8cb 7000 	str.w	r7, [fp]
 8003514:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003518:	f8cb 3004 	str.w	r3, [fp, #4]
 800351c:	f300 81bb 	bgt.w	8003896 <_vfprintf_r+0xebe>
 8003520:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003522:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003524:	1c69      	adds	r1, r5, #1
 8003526:	441c      	add	r4, r3
 8003528:	2907      	cmp	r1, #7
 800352a:	910b      	str	r1, [sp, #44]	; 0x2c
 800352c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003530:	e9c6 2300 	strd	r2, r3, [r6]
 8003534:	f300 81bb 	bgt.w	80038ae <_vfprintf_r+0xed6>
 8003538:	3608      	adds	r6, #8
 800353a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800353c:	1c53      	adds	r3, r2, #1
 800353e:	461d      	mov	r5, r3
 8003540:	9509      	str	r5, [sp, #36]	; 0x24
 8003542:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003544:	930e      	str	r3, [sp, #56]	; 0x38
 8003546:	2200      	movs	r2, #0
 8003548:	2300      	movs	r3, #0
 800354a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800354e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003552:	f106 0b08 	add.w	fp, r6, #8
 8003556:	f7fd fa77 	bl	8000a48 <__aeabi_dcmpeq>
 800355a:	2800      	cmp	r0, #0
 800355c:	f040 80c2 	bne.w	80036e4 <_vfprintf_r+0xd0c>
 8003560:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003562:	f8c6 9004 	str.w	r9, [r6, #4]
 8003566:	3701      	adds	r7, #1
 8003568:	444c      	add	r4, r9
 800356a:	2d07      	cmp	r5, #7
 800356c:	6037      	str	r7, [r6, #0]
 800356e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003570:	952b      	str	r5, [sp, #172]	; 0xac
 8003572:	f300 80f9 	bgt.w	8003768 <_vfprintf_r+0xd90>
 8003576:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003578:	f106 0310 	add.w	r3, r6, #16
 800357c:	3202      	adds	r2, #2
 800357e:	465e      	mov	r6, fp
 8003580:	9209      	str	r2, [sp, #36]	; 0x24
 8003582:	469b      	mov	fp, r3
 8003584:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003586:	6072      	str	r2, [r6, #4]
 8003588:	4414      	add	r4, r2
 800358a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800358c:	942c      	str	r4, [sp, #176]	; 0xb0
 800358e:	ab26      	add	r3, sp, #152	; 0x98
 8003590:	2a07      	cmp	r2, #7
 8003592:	922b      	str	r2, [sp, #172]	; 0xac
 8003594:	6033      	str	r3, [r6, #0]
 8003596:	f77f ac70 	ble.w	8002e7a <_vfprintf_r+0x4a2>
 800359a:	aa2a      	add	r2, sp, #168	; 0xa8
 800359c:	9907      	ldr	r1, [sp, #28]
 800359e:	9803      	ldr	r0, [sp, #12]
 80035a0:	f003 fd48 	bl	8007034 <__sprint_r>
 80035a4:	2800      	cmp	r0, #0
 80035a6:	d18f      	bne.n	80034c8 <_vfprintf_r+0xaf0>
 80035a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035ae:	e464      	b.n	8002e7a <_vfprintf_r+0x4a2>
 80035b0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80035b2:	af56      	add	r7, sp, #344	; 0x158
 80035b4:	0923      	lsrs	r3, r4, #4
 80035b6:	f004 010f 	and.w	r1, r4, #15
 80035ba:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80035be:	092a      	lsrs	r2, r5, #4
 80035c0:	461c      	mov	r4, r3
 80035c2:	4615      	mov	r5, r2
 80035c4:	5c43      	ldrb	r3, [r0, r1]
 80035c6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80035ca:	ea54 0305 	orrs.w	r3, r4, r5
 80035ce:	d1f1      	bne.n	80035b4 <_vfprintf_r+0xbdc>
 80035d0:	9b04      	ldr	r3, [sp, #16]
 80035d2:	1bdb      	subs	r3, r3, r7
 80035d4:	9309      	str	r3, [sp, #36]	; 0x24
 80035d6:	f7ff bb80 	b.w	8002cda <_vfprintf_r+0x302>
 80035da:	46b1      	mov	r9, r6
 80035dc:	e776      	b.n	80034cc <_vfprintf_r+0xaf4>
 80035de:	aa2a      	add	r2, sp, #168	; 0xa8
 80035e0:	9907      	ldr	r1, [sp, #28]
 80035e2:	9803      	ldr	r0, [sp, #12]
 80035e4:	f003 fd26 	bl	8007034 <__sprint_r>
 80035e8:	2800      	cmp	r0, #0
 80035ea:	f47f af6d 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80035ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035f4:	f7ff bbdd 	b.w	8002db2 <_vfprintf_r+0x3da>
 80035f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035fa:	9907      	ldr	r1, [sp, #28]
 80035fc:	9803      	ldr	r0, [sp, #12]
 80035fe:	f003 fd19 	bl	8007034 <__sprint_r>
 8003602:	2800      	cmp	r0, #0
 8003604:	f47f af60 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003608:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800360a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800360e:	f7ff bbe0 	b.w	8002dd2 <_vfprintf_r+0x3fa>
 8003612:	4698      	mov	r8, r3
 8003614:	2d00      	cmp	r5, #0
 8003616:	bf08      	it	eq
 8003618:	2c0a      	cmpeq	r4, #10
 800361a:	f080 8170 	bcs.w	80038fe <_vfprintf_r+0xf26>
 800361e:	af56      	add	r7, sp, #344	; 0x158
 8003620:	3430      	adds	r4, #48	; 0x30
 8003622:	2301      	movs	r3, #1
 8003624:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003628:	9309      	str	r3, [sp, #36]	; 0x24
 800362a:	f7ff bb56 	b.w	8002cda <_vfprintf_r+0x302>
 800362e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003630:	9907      	ldr	r1, [sp, #28]
 8003632:	9803      	ldr	r0, [sp, #12]
 8003634:	f003 fcfe 	bl	8007034 <__sprint_r>
 8003638:	2800      	cmp	r0, #0
 800363a:	f47f af45 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 800363e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003640:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003644:	e406      	b.n	8002e54 <_vfprintf_r+0x47c>
 8003646:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003648:	2b00      	cmp	r3, #0
 800364a:	f340 8273 	ble.w	8003b34 <_vfprintf_r+0x115c>
 800364e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003652:	4293      	cmp	r3, r2
 8003654:	bfa8      	it	ge
 8003656:	4613      	movge	r3, r2
 8003658:	2b00      	cmp	r3, #0
 800365a:	461d      	mov	r5, r3
 800365c:	dd0d      	ble.n	800367a <_vfprintf_r+0xca2>
 800365e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003660:	f8cb 7000 	str.w	r7, [fp]
 8003664:	3301      	adds	r3, #1
 8003666:	442c      	add	r4, r5
 8003668:	2b07      	cmp	r3, #7
 800366a:	942c      	str	r4, [sp, #176]	; 0xb0
 800366c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003670:	932b      	str	r3, [sp, #172]	; 0xac
 8003672:	f300 82c1 	bgt.w	8003bf8 <_vfprintf_r+0x1220>
 8003676:	f10b 0b08 	add.w	fp, fp, #8
 800367a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800367c:	2d00      	cmp	r5, #0
 800367e:	bfa8      	it	ge
 8003680:	1b5b      	subge	r3, r3, r5
 8003682:	2b00      	cmp	r3, #0
 8003684:	461d      	mov	r5, r3
 8003686:	f340 8099 	ble.w	80037bc <_vfprintf_r+0xde4>
 800368a:	2d10      	cmp	r5, #16
 800368c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800368e:	4b2c      	ldr	r3, [pc, #176]	; (8003740 <_vfprintf_r+0xd68>)
 8003690:	f340 83db 	ble.w	8003e4a <_vfprintf_r+0x1472>
 8003694:	4618      	mov	r0, r3
 8003696:	4621      	mov	r1, r4
 8003698:	465b      	mov	r3, fp
 800369a:	2610      	movs	r6, #16
 800369c:	46bb      	mov	fp, r7
 800369e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80036a2:	9c07      	ldr	r4, [sp, #28]
 80036a4:	4607      	mov	r7, r0
 80036a6:	e004      	b.n	80036b2 <_vfprintf_r+0xcda>
 80036a8:	3308      	adds	r3, #8
 80036aa:	3d10      	subs	r5, #16
 80036ac:	2d10      	cmp	r5, #16
 80036ae:	f340 83c7 	ble.w	8003e40 <_vfprintf_r+0x1468>
 80036b2:	3201      	adds	r2, #1
 80036b4:	3110      	adds	r1, #16
 80036b6:	2a07      	cmp	r2, #7
 80036b8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80036bc:	e9c3 7600 	strd	r7, r6, [r3]
 80036c0:	ddf2      	ble.n	80036a8 <_vfprintf_r+0xcd0>
 80036c2:	aa2a      	add	r2, sp, #168	; 0xa8
 80036c4:	4621      	mov	r1, r4
 80036c6:	4648      	mov	r0, r9
 80036c8:	f003 fcb4 	bl	8007034 <__sprint_r>
 80036cc:	2800      	cmp	r0, #0
 80036ce:	f040 84a5 	bne.w	800401c <_vfprintf_r+0x1644>
 80036d2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80036d6:	ab2d      	add	r3, sp, #180	; 0xb4
 80036d8:	e7e7      	b.n	80036aa <_vfprintf_r+0xcd2>
 80036da:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80036de:	af56      	add	r7, sp, #344	; 0x158
 80036e0:	f7ff bafb 	b.w	8002cda <_vfprintf_r+0x302>
 80036e4:	f1b9 0f00 	cmp.w	r9, #0
 80036e8:	f77f af4c 	ble.w	8003584 <_vfprintf_r+0xbac>
 80036ec:	f1b9 0f10 	cmp.w	r9, #16
 80036f0:	4b13      	ldr	r3, [pc, #76]	; (8003740 <_vfprintf_r+0xd68>)
 80036f2:	f340 8659 	ble.w	80043a8 <_vfprintf_r+0x19d0>
 80036f6:	4619      	mov	r1, r3
 80036f8:	4622      	mov	r2, r4
 80036fa:	4633      	mov	r3, r6
 80036fc:	2710      	movs	r7, #16
 80036fe:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003702:	9c07      	ldr	r4, [sp, #28]
 8003704:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003706:	460e      	mov	r6, r1
 8003708:	e007      	b.n	800371a <_vfprintf_r+0xd42>
 800370a:	3308      	adds	r3, #8
 800370c:	f1a9 0910 	sub.w	r9, r9, #16
 8003710:	f1b9 0f10 	cmp.w	r9, #16
 8003714:	f340 8353 	ble.w	8003dbe <_vfprintf_r+0x13e6>
 8003718:	3501      	adds	r5, #1
 800371a:	3210      	adds	r2, #16
 800371c:	2d07      	cmp	r5, #7
 800371e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003722:	e9c3 6700 	strd	r6, r7, [r3]
 8003726:	ddf0      	ble.n	800370a <_vfprintf_r+0xd32>
 8003728:	aa2a      	add	r2, sp, #168	; 0xa8
 800372a:	4621      	mov	r1, r4
 800372c:	4658      	mov	r0, fp
 800372e:	f003 fc81 	bl	8007034 <__sprint_r>
 8003732:	2800      	cmp	r0, #0
 8003734:	f040 8472 	bne.w	800401c <_vfprintf_r+0x1644>
 8003738:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800373c:	ab2d      	add	r3, sp, #180	; 0xb4
 800373e:	e7e5      	b.n	800370c <_vfprintf_r+0xd34>
 8003740:	0800772c 	.word	0x0800772c
 8003744:	f018 0f01 	tst.w	r8, #1
 8003748:	f47f aee0 	bne.w	800350c <_vfprintf_r+0xb34>
 800374c:	2201      	movs	r2, #1
 800374e:	2d07      	cmp	r5, #7
 8003750:	f8cb 7000 	str.w	r7, [fp]
 8003754:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003758:	f8cb 2004 	str.w	r2, [fp, #4]
 800375c:	dc04      	bgt.n	8003768 <_vfprintf_r+0xd90>
 800375e:	3302      	adds	r3, #2
 8003760:	9309      	str	r3, [sp, #36]	; 0x24
 8003762:	f10b 0b10 	add.w	fp, fp, #16
 8003766:	e70d      	b.n	8003584 <_vfprintf_r+0xbac>
 8003768:	aa2a      	add	r2, sp, #168	; 0xa8
 800376a:	9907      	ldr	r1, [sp, #28]
 800376c:	9803      	ldr	r0, [sp, #12]
 800376e:	f003 fc61 	bl	8007034 <__sprint_r>
 8003772:	2800      	cmp	r0, #0
 8003774:	f47f aea8 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003778:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800377c:	3301      	adds	r3, #1
 800377e:	9309      	str	r3, [sp, #36]	; 0x24
 8003780:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003784:	ae2d      	add	r6, sp, #180	; 0xb4
 8003786:	e6fd      	b.n	8003584 <_vfprintf_r+0xbac>
 8003788:	aa2a      	add	r2, sp, #168	; 0xa8
 800378a:	9907      	ldr	r1, [sp, #28]
 800378c:	9803      	ldr	r0, [sp, #12]
 800378e:	f003 fc51 	bl	8007034 <__sprint_r>
 8003792:	2800      	cmp	r0, #0
 8003794:	f47f ae98 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003798:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800379c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800379e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037a2:	f7ff baf6 	b.w	8002d92 <_vfprintf_r+0x3ba>
 80037a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80037a8:	9907      	ldr	r1, [sp, #28]
 80037aa:	9803      	ldr	r0, [sp, #12]
 80037ac:	f003 fc42 	bl	8007034 <__sprint_r>
 80037b0:	2800      	cmp	r0, #0
 80037b2:	f47f ae89 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80037b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037bc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037be:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80037c2:	443b      	add	r3, r7
 80037c4:	4699      	mov	r9, r3
 80037c6:	f040 8357 	bne.w	8003e78 <_vfprintf_r+0x14a0>
 80037ca:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037cc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037ce:	4293      	cmp	r3, r2
 80037d0:	db49      	blt.n	8003866 <_vfprintf_r+0xe8e>
 80037d2:	f018 0f01 	tst.w	r8, #1
 80037d6:	d146      	bne.n	8003866 <_vfprintf_r+0xe8e>
 80037d8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037da:	18bd      	adds	r5, r7, r2
 80037dc:	eba5 0509 	sub.w	r5, r5, r9
 80037e0:	1ad3      	subs	r3, r2, r3
 80037e2:	429d      	cmp	r5, r3
 80037e4:	bfa8      	it	ge
 80037e6:	461d      	movge	r5, r3
 80037e8:	2d00      	cmp	r5, #0
 80037ea:	dd0d      	ble.n	8003808 <_vfprintf_r+0xe30>
 80037ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037ee:	f8cb 9000 	str.w	r9, [fp]
 80037f2:	3201      	adds	r2, #1
 80037f4:	442c      	add	r4, r5
 80037f6:	2a07      	cmp	r2, #7
 80037f8:	942c      	str	r4, [sp, #176]	; 0xb0
 80037fa:	f8cb 5004 	str.w	r5, [fp, #4]
 80037fe:	922b      	str	r2, [sp, #172]	; 0xac
 8003800:	f300 8462 	bgt.w	80040c8 <_vfprintf_r+0x16f0>
 8003804:	f10b 0b08 	add.w	fp, fp, #8
 8003808:	2d00      	cmp	r5, #0
 800380a:	bfac      	ite	ge
 800380c:	1b5d      	subge	r5, r3, r5
 800380e:	461d      	movlt	r5, r3
 8003810:	2d00      	cmp	r5, #0
 8003812:	f77f ab32 	ble.w	8002e7a <_vfprintf_r+0x4a2>
 8003816:	2d10      	cmp	r5, #16
 8003818:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800381a:	4bc5      	ldr	r3, [pc, #788]	; (8003b30 <_vfprintf_r+0x1158>)
 800381c:	f340 80c4 	ble.w	80039a8 <_vfprintf_r+0xfd0>
 8003820:	4619      	mov	r1, r3
 8003822:	2610      	movs	r6, #16
 8003824:	4623      	mov	r3, r4
 8003826:	9f03      	ldr	r7, [sp, #12]
 8003828:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800382c:	460c      	mov	r4, r1
 800382e:	e005      	b.n	800383c <_vfprintf_r+0xe64>
 8003830:	f10b 0b08 	add.w	fp, fp, #8
 8003834:	3d10      	subs	r5, #16
 8003836:	2d10      	cmp	r5, #16
 8003838:	f340 80b3 	ble.w	80039a2 <_vfprintf_r+0xfca>
 800383c:	3201      	adds	r2, #1
 800383e:	3310      	adds	r3, #16
 8003840:	2a07      	cmp	r2, #7
 8003842:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003846:	e9cb 4600 	strd	r4, r6, [fp]
 800384a:	ddf1      	ble.n	8003830 <_vfprintf_r+0xe58>
 800384c:	aa2a      	add	r2, sp, #168	; 0xa8
 800384e:	4649      	mov	r1, r9
 8003850:	4638      	mov	r0, r7
 8003852:	f003 fbef 	bl	8007034 <__sprint_r>
 8003856:	2800      	cmp	r0, #0
 8003858:	f47f ae38 	bne.w	80034cc <_vfprintf_r+0xaf4>
 800385c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003860:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003864:	e7e6      	b.n	8003834 <_vfprintf_r+0xe5c>
 8003866:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003868:	9916      	ldr	r1, [sp, #88]	; 0x58
 800386a:	f8cb 1000 	str.w	r1, [fp]
 800386e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003870:	f8cb 1004 	str.w	r1, [fp, #4]
 8003874:	3201      	adds	r2, #1
 8003876:	440c      	add	r4, r1
 8003878:	2a07      	cmp	r2, #7
 800387a:	942c      	str	r4, [sp, #176]	; 0xb0
 800387c:	922b      	str	r2, [sp, #172]	; 0xac
 800387e:	f300 828c 	bgt.w	8003d9a <_vfprintf_r+0x13c2>
 8003882:	f10b 0b08 	add.w	fp, fp, #8
 8003886:	e7a7      	b.n	80037d8 <_vfprintf_r+0xe00>
 8003888:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800388c:	f002 fa94 	bl	8005db8 <__retarget_lock_release_recursive>
 8003890:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003894:	e628      	b.n	80034e8 <_vfprintf_r+0xb10>
 8003896:	aa2a      	add	r2, sp, #168	; 0xa8
 8003898:	9907      	ldr	r1, [sp, #28]
 800389a:	9803      	ldr	r0, [sp, #12]
 800389c:	f003 fbca 	bl	8007034 <__sprint_r>
 80038a0:	2800      	cmp	r0, #0
 80038a2:	f47f ae11 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80038a6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80038aa:	ae2d      	add	r6, sp, #180	; 0xb4
 80038ac:	e638      	b.n	8003520 <_vfprintf_r+0xb48>
 80038ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80038b0:	9907      	ldr	r1, [sp, #28]
 80038b2:	9803      	ldr	r0, [sp, #12]
 80038b4:	f003 fbbe 	bl	8007034 <__sprint_r>
 80038b8:	2800      	cmp	r0, #0
 80038ba:	f47f ae05 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80038be:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80038c2:	ae2d      	add	r6, sp, #180	; 0xb4
 80038c4:	930b      	str	r3, [sp, #44]	; 0x2c
 80038c6:	e638      	b.n	800353a <_vfprintf_r+0xb62>
 80038c8:	6814      	ldr	r4, [r2, #0]
 80038ca:	9308      	str	r3, [sp, #32]
 80038cc:	2500      	movs	r5, #0
 80038ce:	f7ff bb95 	b.w	8002ffc <_vfprintf_r+0x624>
 80038d2:	6814      	ldr	r4, [r2, #0]
 80038d4:	9308      	str	r3, [sp, #32]
 80038d6:	2500      	movs	r5, #0
 80038d8:	f7ff b9ae 	b.w	8002c38 <_vfprintf_r+0x260>
 80038dc:	680c      	ldr	r4, [r1, #0]
 80038de:	9208      	str	r2, [sp, #32]
 80038e0:	17e5      	asrs	r5, r4, #31
 80038e2:	4620      	mov	r0, r4
 80038e4:	4629      	mov	r1, r5
 80038e6:	f7ff b9d2 	b.w	8002c8e <_vfprintf_r+0x2b6>
 80038ea:	6814      	ldr	r4, [r2, #0]
 80038ec:	9108      	str	r1, [sp, #32]
 80038ee:	2201      	movs	r2, #1
 80038f0:	2500      	movs	r5, #0
 80038f2:	f7ff bb32 	b.w	8002f5a <_vfprintf_r+0x582>
 80038f6:	2a01      	cmp	r2, #1
 80038f8:	f47f ab3c 	bne.w	8002f74 <_vfprintf_r+0x59c>
 80038fc:	e68f      	b.n	800361e <_vfprintf_r+0xc46>
 80038fe:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003902:	2200      	movs	r2, #0
 8003904:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003908:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800390c:	af56      	add	r7, sp, #344	; 0x158
 800390e:	4692      	mov	sl, r2
 8003910:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003914:	461e      	mov	r6, r3
 8003916:	e00a      	b.n	800392e <_vfprintf_r+0xf56>
 8003918:	2300      	movs	r3, #0
 800391a:	4620      	mov	r0, r4
 800391c:	4629      	mov	r1, r5
 800391e:	220a      	movs	r2, #10
 8003920:	f7fd f8da 	bl	8000ad8 <__aeabi_uldivmod>
 8003924:	4604      	mov	r4, r0
 8003926:	460d      	mov	r5, r1
 8003928:	ea54 0305 	orrs.w	r3, r4, r5
 800392c:	d029      	beq.n	8003982 <_vfprintf_r+0xfaa>
 800392e:	220a      	movs	r2, #10
 8003930:	2300      	movs	r3, #0
 8003932:	4620      	mov	r0, r4
 8003934:	4629      	mov	r1, r5
 8003936:	f7fd f8cf 	bl	8000ad8 <__aeabi_uldivmod>
 800393a:	3230      	adds	r2, #48	; 0x30
 800393c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003940:	f10a 0a01 	add.w	sl, sl, #1
 8003944:	3f01      	subs	r7, #1
 8003946:	2e00      	cmp	r6, #0
 8003948:	d0e6      	beq.n	8003918 <_vfprintf_r+0xf40>
 800394a:	f898 3000 	ldrb.w	r3, [r8]
 800394e:	459a      	cmp	sl, r3
 8003950:	d1e2      	bne.n	8003918 <_vfprintf_r+0xf40>
 8003952:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003956:	d0df      	beq.n	8003918 <_vfprintf_r+0xf40>
 8003958:	2d00      	cmp	r5, #0
 800395a:	bf08      	it	eq
 800395c:	2c0a      	cmpeq	r4, #10
 800395e:	d3db      	bcc.n	8003918 <_vfprintf_r+0xf40>
 8003960:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003962:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003964:	1aff      	subs	r7, r7, r3
 8003966:	461a      	mov	r2, r3
 8003968:	4638      	mov	r0, r7
 800396a:	f003 faf5 	bl	8006f58 <strncpy>
 800396e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003972:	2b00      	cmp	r3, #0
 8003974:	f000 8496 	beq.w	80042a4 <_vfprintf_r+0x18cc>
 8003978:	f108 0801 	add.w	r8, r8, #1
 800397c:	f04f 0a00 	mov.w	sl, #0
 8003980:	e7ca      	b.n	8003918 <_vfprintf_r+0xf40>
 8003982:	9b04      	ldr	r3, [sp, #16]
 8003984:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003988:	1bdb      	subs	r3, r3, r7
 800398a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800398e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003990:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003994:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003998:	9309      	str	r3, [sp, #36]	; 0x24
 800399a:	f7ff b99e 	b.w	8002cda <_vfprintf_r+0x302>
 800399e:	46c1      	mov	r9, r8
 80039a0:	e594      	b.n	80034cc <_vfprintf_r+0xaf4>
 80039a2:	4621      	mov	r1, r4
 80039a4:	461c      	mov	r4, r3
 80039a6:	460b      	mov	r3, r1
 80039a8:	3201      	adds	r2, #1
 80039aa:	442c      	add	r4, r5
 80039ac:	2a07      	cmp	r2, #7
 80039ae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039b2:	e9cb 3500 	strd	r3, r5, [fp]
 80039b6:	f77f aa5e 	ble.w	8002e76 <_vfprintf_r+0x49e>
 80039ba:	e5ee      	b.n	800359a <_vfprintf_r+0xbc2>
 80039bc:	f018 0f10 	tst.w	r8, #16
 80039c0:	f040 80f8 	bne.w	8003bb4 <_vfprintf_r+0x11dc>
 80039c4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80039c8:	f000 8351 	beq.w	800406e <_vfprintf_r+0x1696>
 80039cc:	9a05      	ldr	r2, [sp, #20]
 80039ce:	801a      	strh	r2, [r3, #0]
 80039d0:	4657      	mov	r7, sl
 80039d2:	f7ff baa7 	b.w	8002f24 <_vfprintf_r+0x54c>
 80039d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80039d8:	9907      	ldr	r1, [sp, #28]
 80039da:	9803      	ldr	r0, [sp, #12]
 80039dc:	f003 fb2a 	bl	8007034 <__sprint_r>
 80039e0:	2800      	cmp	r0, #0
 80039e2:	f47f ad71 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80039e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039ec:	f7ff b9f5 	b.w	8002dda <_vfprintf_r+0x402>
 80039f0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80039f4:	4602      	mov	r2, r0
 80039f6:	460b      	mov	r3, r1
 80039f8:	f7fd f858 	bl	8000aac <__aeabi_dcmpun>
 80039fc:	2800      	cmp	r0, #0
 80039fe:	f040 8491 	bne.w	8004324 <_vfprintf_r+0x194c>
 8003a02:	2e61      	cmp	r6, #97	; 0x61
 8003a04:	f000 8111 	beq.w	8003c2a <_vfprintf_r+0x1252>
 8003a08:	2e41      	cmp	r6, #65	; 0x41
 8003a0a:	f000 8377 	beq.w	80040fc <_vfprintf_r+0x1724>
 8003a0e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003a12:	f026 0220 	bic.w	r2, r6, #32
 8003a16:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003a1a:	930e      	str	r3, [sp, #56]	; 0x38
 8003a1c:	9204      	str	r2, [sp, #16]
 8003a1e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a20:	f000 842d 	beq.w	800427e <_vfprintf_r+0x18a6>
 8003a24:	2a47      	cmp	r2, #71	; 0x47
 8003a26:	f000 8424 	beq.w	8004272 <_vfprintf_r+0x189a>
 8003a2a:	2b00      	cmp	r3, #0
 8003a2c:	f2c0 82f9 	blt.w	8004022 <_vfprintf_r+0x164a>
 8003a30:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003a34:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003a38:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003a3c:	2e66      	cmp	r6, #102	; 0x66
 8003a3e:	f000 83eb 	beq.w	8004218 <_vfprintf_r+0x1840>
 8003a42:	2e46      	cmp	r6, #70	; 0x46
 8003a44:	f000 847e 	beq.w	8004344 <_vfprintf_r+0x196c>
 8003a48:	9b04      	ldr	r3, [sp, #16]
 8003a4a:	9803      	ldr	r0, [sp, #12]
 8003a4c:	2b45      	cmp	r3, #69	; 0x45
 8003a4e:	bf0c      	ite	eq
 8003a50:	f109 0501 	addeq.w	r5, r9, #1
 8003a54:	464d      	movne	r5, r9
 8003a56:	aa28      	add	r2, sp, #160	; 0xa0
 8003a58:	ab25      	add	r3, sp, #148	; 0x94
 8003a5a:	e9cd 3200 	strd	r3, r2, [sp]
 8003a5e:	2102      	movs	r1, #2
 8003a60:	ab24      	add	r3, sp, #144	; 0x90
 8003a62:	462a      	mov	r2, r5
 8003a64:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a68:	f000 fe3e 	bl	80046e8 <_dtoa_r>
 8003a6c:	2e67      	cmp	r6, #103	; 0x67
 8003a6e:	4607      	mov	r7, r0
 8003a70:	f040 849c 	bne.w	80043ac <_vfprintf_r+0x19d4>
 8003a74:	f018 0f01 	tst.w	r8, #1
 8003a78:	f040 83f9 	bne.w	800426e <_vfprintf_r+0x1896>
 8003a7c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a7e:	4640      	mov	r0, r8
 8003a80:	1bdb      	subs	r3, r3, r7
 8003a82:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a86:	9310      	str	r3, [sp, #64]	; 0x40
 8003a88:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a8a:	9311      	str	r3, [sp, #68]	; 0x44
 8003a8c:	9b04      	ldr	r3, [sp, #16]
 8003a8e:	2b47      	cmp	r3, #71	; 0x47
 8003a90:	f000 81e7 	beq.w	8003e62 <_vfprintf_r+0x148a>
 8003a94:	9b04      	ldr	r3, [sp, #16]
 8003a96:	2b46      	cmp	r3, #70	; 0x46
 8003a98:	f000 8300 	beq.w	800409c <_vfprintf_r+0x16c4>
 8003a9c:	9904      	ldr	r1, [sp, #16]
 8003a9e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aa0:	b2f2      	uxtb	r2, r6
 8003aa2:	2941      	cmp	r1, #65	; 0x41
 8003aa4:	bf08      	it	eq
 8003aa6:	320f      	addeq	r2, #15
 8003aa8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003aac:	bf06      	itte	eq
 8003aae:	b2d2      	uxtbeq	r2, r2
 8003ab0:	2101      	moveq	r1, #1
 8003ab2:	2100      	movne	r1, #0
 8003ab4:	2b00      	cmp	r3, #0
 8003ab6:	9324      	str	r3, [sp, #144]	; 0x90
 8003ab8:	bfb8      	it	lt
 8003aba:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003abc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003ac0:	bfba      	itte	lt
 8003ac2:	f1c3 0301 	rsblt	r3, r3, #1
 8003ac6:	222d      	movlt	r2, #45	; 0x2d
 8003ac8:	222b      	movge	r2, #43	; 0x2b
 8003aca:	2b09      	cmp	r3, #9
 8003acc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003ad0:	f300 83f9 	bgt.w	80042c6 <_vfprintf_r+0x18ee>
 8003ad4:	2900      	cmp	r1, #0
 8003ad6:	f040 8487 	bne.w	80043e8 <_vfprintf_r+0x1a10>
 8003ada:	2230      	movs	r2, #48	; 0x30
 8003adc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003ae0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003ae4:	3330      	adds	r3, #48	; 0x30
 8003ae6:	7013      	strb	r3, [r2, #0]
 8003ae8:	1c53      	adds	r3, r2, #1
 8003aea:	aa26      	add	r2, sp, #152	; 0x98
 8003aec:	1a9b      	subs	r3, r3, r2
 8003aee:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003af0:	9319      	str	r3, [sp, #100]	; 0x64
 8003af2:	2a01      	cmp	r2, #1
 8003af4:	4413      	add	r3, r2
 8003af6:	9309      	str	r3, [sp, #36]	; 0x24
 8003af8:	f340 8442 	ble.w	8004380 <_vfprintf_r+0x19a8>
 8003afc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003afe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b00:	4413      	add	r3, r2
 8003b02:	9309      	str	r3, [sp, #36]	; 0x24
 8003b04:	2300      	movs	r3, #0
 8003b06:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b08:	9314      	str	r3, [sp, #80]	; 0x50
 8003b0a:	9311      	str	r3, [sp, #68]	; 0x44
 8003b0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b0e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003b12:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b16:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003b1a:	9304      	str	r3, [sp, #16]
 8003b1c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003b1e:	2b00      	cmp	r3, #0
 8003b20:	f040 8275 	bne.w	800400e <_vfprintf_r+0x1636>
 8003b24:	4699      	mov	r9, r3
 8003b26:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b2a:	f7ff b8e2 	b.w	8002cf2 <_vfprintf_r+0x31a>
 8003b2e:	bf00      	nop
 8003b30:	0800772c 	.word	0x0800772c
 8003b34:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b36:	49bd      	ldr	r1, [pc, #756]	; (8003e2c <_vfprintf_r+0x1454>)
 8003b38:	f8cb 1000 	str.w	r1, [fp]
 8003b3c:	3201      	adds	r2, #1
 8003b3e:	3401      	adds	r4, #1
 8003b40:	2101      	movs	r1, #1
 8003b42:	2a07      	cmp	r2, #7
 8003b44:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b48:	f8cb 1004 	str.w	r1, [fp, #4]
 8003b4c:	dc60      	bgt.n	8003c10 <_vfprintf_r+0x1238>
 8003b4e:	f10b 0b08 	add.w	fp, fp, #8
 8003b52:	b92b      	cbnz	r3, 8003b60 <_vfprintf_r+0x1188>
 8003b54:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b56:	b91a      	cbnz	r2, 8003b60 <_vfprintf_r+0x1188>
 8003b58:	f018 0f01 	tst.w	r8, #1
 8003b5c:	f43f a98d 	beq.w	8002e7a <_vfprintf_r+0x4a2>
 8003b60:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b62:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003b64:	f8cb 1000 	str.w	r1, [fp]
 8003b68:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003b6a:	f8cb 1004 	str.w	r1, [fp, #4]
 8003b6e:	3201      	adds	r2, #1
 8003b70:	440c      	add	r4, r1
 8003b72:	2a07      	cmp	r2, #7
 8003b74:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b76:	922b      	str	r2, [sp, #172]	; 0xac
 8003b78:	f300 8282 	bgt.w	8004080 <_vfprintf_r+0x16a8>
 8003b7c:	f10b 0b08 	add.w	fp, fp, #8
 8003b80:	2b00      	cmp	r3, #0
 8003b82:	f2c0 82e7 	blt.w	8004154 <_vfprintf_r+0x177c>
 8003b86:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b88:	3201      	adds	r2, #1
 8003b8a:	441c      	add	r4, r3
 8003b8c:	2a07      	cmp	r2, #7
 8003b8e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b92:	e9cb 7300 	strd	r7, r3, [fp]
 8003b96:	f77f a96e 	ble.w	8002e76 <_vfprintf_r+0x49e>
 8003b9a:	e4fe      	b.n	800359a <_vfprintf_r+0xbc2>
 8003b9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b9e:	9907      	ldr	r1, [sp, #28]
 8003ba0:	9803      	ldr	r0, [sp, #12]
 8003ba2:	f003 fa47 	bl	8007034 <__sprint_r>
 8003ba6:	2800      	cmp	r0, #0
 8003ba8:	f47f ac8e 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003bac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bb0:	f7ff bbf0 	b.w	8003394 <_vfprintf_r+0x9bc>
 8003bb4:	9a05      	ldr	r2, [sp, #20]
 8003bb6:	601a      	str	r2, [r3, #0]
 8003bb8:	4657      	mov	r7, sl
 8003bba:	f7ff b9b3 	b.w	8002f24 <_vfprintf_r+0x54c>
 8003bbe:	8814      	ldrh	r4, [r2, #0]
 8003bc0:	9108      	str	r1, [sp, #32]
 8003bc2:	2500      	movs	r5, #0
 8003bc4:	2201      	movs	r2, #1
 8003bc6:	f7ff b9c8 	b.w	8002f5a <_vfprintf_r+0x582>
 8003bca:	8814      	ldrh	r4, [r2, #0]
 8003bcc:	9308      	str	r3, [sp, #32]
 8003bce:	2500      	movs	r5, #0
 8003bd0:	f7ff ba14 	b.w	8002ffc <_vfprintf_r+0x624>
 8003bd4:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003bd8:	9208      	str	r2, [sp, #32]
 8003bda:	17e5      	asrs	r5, r4, #31
 8003bdc:	4620      	mov	r0, r4
 8003bde:	4629      	mov	r1, r5
 8003be0:	f7ff b855 	b.w	8002c8e <_vfprintf_r+0x2b6>
 8003be4:	8814      	ldrh	r4, [r2, #0]
 8003be6:	9308      	str	r3, [sp, #32]
 8003be8:	2500      	movs	r5, #0
 8003bea:	f7ff b825 	b.w	8002c38 <_vfprintf_r+0x260>
 8003bee:	222d      	movs	r2, #45	; 0x2d
 8003bf0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003bf4:	f7ff baa2 	b.w	800313c <_vfprintf_r+0x764>
 8003bf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bfa:	9907      	ldr	r1, [sp, #28]
 8003bfc:	9803      	ldr	r0, [sp, #12]
 8003bfe:	f003 fa19 	bl	8007034 <__sprint_r>
 8003c02:	2800      	cmp	r0, #0
 8003c04:	f47f ac60 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003c08:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c0a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c0e:	e534      	b.n	800367a <_vfprintf_r+0xca2>
 8003c10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c12:	9907      	ldr	r1, [sp, #28]
 8003c14:	9803      	ldr	r0, [sp, #12]
 8003c16:	f003 fa0d 	bl	8007034 <__sprint_r>
 8003c1a:	2800      	cmp	r0, #0
 8003c1c:	f47f ac54 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003c20:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c22:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c24:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c28:	e793      	b.n	8003b52 <_vfprintf_r+0x117a>
 8003c2a:	2330      	movs	r3, #48	; 0x30
 8003c2c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c30:	2378      	movs	r3, #120	; 0x78
 8003c32:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003c36:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003c3a:	f048 0402 	orr.w	r4, r8, #2
 8003c3e:	f300 82b0 	bgt.w	80041a2 <_vfprintf_r+0x17ca>
 8003c42:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c46:	930e      	str	r3, [sp, #56]	; 0x38
 8003c48:	f026 0320 	bic.w	r3, r6, #32
 8003c4c:	9304      	str	r3, [sp, #16]
 8003c4e:	2200      	movs	r2, #0
 8003c50:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c52:	920a      	str	r2, [sp, #40]	; 0x28
 8003c54:	46a0      	mov	r8, r4
 8003c56:	af3d      	add	r7, sp, #244	; 0xf4
 8003c58:	2b00      	cmp	r3, #0
 8003c5a:	f2c0 81e3 	blt.w	8004024 <_vfprintf_r+0x164c>
 8003c5e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003c62:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003c66:	2300      	movs	r3, #0
 8003c68:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c6a:	2e61      	cmp	r6, #97	; 0x61
 8003c6c:	f000 8255 	beq.w	800411a <_vfprintf_r+0x1742>
 8003c70:	2e41      	cmp	r6, #65	; 0x41
 8003c72:	f47f aee3 	bne.w	8003a3c <_vfprintf_r+0x1064>
 8003c76:	a824      	add	r0, sp, #144	; 0x90
 8003c78:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c7c:	f003 f8e2 	bl	8006e44 <frexp>
 8003c80:	2200      	movs	r2, #0
 8003c82:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c86:	ec51 0b10 	vmov	r0, r1, d0
 8003c8a:	f7fc fc75 	bl	8000578 <__aeabi_dmul>
 8003c8e:	2200      	movs	r2, #0
 8003c90:	2300      	movs	r3, #0
 8003c92:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c96:	f7fc fed7 	bl	8000a48 <__aeabi_dcmpeq>
 8003c9a:	2800      	cmp	r0, #0
 8003c9c:	f040 8305 	bne.w	80042aa <_vfprintf_r+0x18d2>
 8003ca0:	4b63      	ldr	r3, [pc, #396]	; (8003e30 <_vfprintf_r+0x1458>)
 8003ca2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ca4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003ca8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003cac:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003cb0:	9721      	str	r7, [sp, #132]	; 0x84
 8003cb2:	46b9      	mov	r9, r7
 8003cb4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003cb8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003cbc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003cc0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003cc4:	e003      	b.n	8003cce <_vfprintf_r+0x12f6>
 8003cc6:	f7fc febf 	bl	8000a48 <__aeabi_dcmpeq>
 8003cca:	bb20      	cbnz	r0, 8003d16 <_vfprintf_r+0x133e>
 8003ccc:	46a9      	mov	r9, r5
 8003cce:	2200      	movs	r2, #0
 8003cd0:	4b58      	ldr	r3, [pc, #352]	; (8003e34 <_vfprintf_r+0x145c>)
 8003cd2:	4630      	mov	r0, r6
 8003cd4:	4639      	mov	r1, r7
 8003cd6:	f7fc fc4f 	bl	8000578 <__aeabi_dmul>
 8003cda:	460f      	mov	r7, r1
 8003cdc:	4606      	mov	r6, r0
 8003cde:	f7fd f9ef 	bl	80010c0 <__aeabi_d2iz>
 8003ce2:	4680      	mov	r8, r0
 8003ce4:	f7fc fbde 	bl	80004a4 <__aeabi_i2d>
 8003ce8:	4602      	mov	r2, r0
 8003cea:	460b      	mov	r3, r1
 8003cec:	4630      	mov	r0, r6
 8003cee:	4639      	mov	r1, r7
 8003cf0:	f7fc fa8a 	bl	8000208 <__aeabi_dsub>
 8003cf4:	464d      	mov	r5, r9
 8003cf6:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003cfa:	f805 cb01 	strb.w	ip, [r5], #1
 8003cfe:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d02:	46a3      	mov	fp, r4
 8003d04:	4606      	mov	r6, r0
 8003d06:	460f      	mov	r7, r1
 8003d08:	f04f 0200 	mov.w	r2, #0
 8003d0c:	f04f 0300 	mov.w	r3, #0
 8003d10:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003d14:	d1d7      	bne.n	8003cc6 <_vfprintf_r+0x12ee>
 8003d16:	4630      	mov	r0, r6
 8003d18:	4639      	mov	r1, r7
 8003d1a:	2200      	movs	r2, #0
 8003d1c:	4b46      	ldr	r3, [pc, #280]	; (8003e38 <_vfprintf_r+0x1460>)
 8003d1e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003d22:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003d24:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003d28:	4644      	mov	r4, r8
 8003d2a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003d2e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003d32:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003d36:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003d3a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003d3c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d40:	f7fc feaa 	bl	8000a98 <__aeabi_dcmpgt>
 8003d44:	2800      	cmp	r0, #0
 8003d46:	f040 8176 	bne.w	8004036 <_vfprintf_r+0x165e>
 8003d4a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003d4e:	2200      	movs	r2, #0
 8003d50:	4b39      	ldr	r3, [pc, #228]	; (8003e38 <_vfprintf_r+0x1460>)
 8003d52:	f7fc fe79 	bl	8000a48 <__aeabi_dcmpeq>
 8003d56:	b110      	cbz	r0, 8003d5e <_vfprintf_r+0x1386>
 8003d58:	07e2      	lsls	r2, r4, #31
 8003d5a:	f100 816c 	bmi.w	8004036 <_vfprintf_r+0x165e>
 8003d5e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d60:	2b00      	cmp	r3, #0
 8003d62:	db07      	blt.n	8003d74 <_vfprintf_r+0x139c>
 8003d64:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d66:	3301      	adds	r3, #1
 8003d68:	442b      	add	r3, r5
 8003d6a:	2230      	movs	r2, #48	; 0x30
 8003d6c:	f805 2b01 	strb.w	r2, [r5], #1
 8003d70:	42ab      	cmp	r3, r5
 8003d72:	d1fb      	bne.n	8003d6c <_vfprintf_r+0x1394>
 8003d74:	1beb      	subs	r3, r5, r7
 8003d76:	4640      	mov	r0, r8
 8003d78:	9310      	str	r3, [sp, #64]	; 0x40
 8003d7a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003d7e:	e683      	b.n	8003a88 <_vfprintf_r+0x10b0>
 8003d80:	f8cd 9010 	str.w	r9, [sp, #16]
 8003d84:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003d88:	9408      	str	r4, [sp, #32]
 8003d8a:	4681      	mov	r9, r0
 8003d8c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003d8e:	9014      	str	r0, [sp, #80]	; 0x50
 8003d90:	9011      	str	r0, [sp, #68]	; 0x44
 8003d92:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003d96:	f7fe bfac 	b.w	8002cf2 <_vfprintf_r+0x31a>
 8003d9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d9c:	9907      	ldr	r1, [sp, #28]
 8003d9e:	9803      	ldr	r0, [sp, #12]
 8003da0:	f003 f948 	bl	8007034 <__sprint_r>
 8003da4:	2800      	cmp	r0, #0
 8003da6:	f47f ab8f 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003daa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003dac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003dae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003db2:	e511      	b.n	80037d8 <_vfprintf_r+0xe00>
 8003db4:	4252      	negs	r2, r2
 8003db6:	9206      	str	r2, [sp, #24]
 8003db8:	9308      	str	r3, [sp, #32]
 8003dba:	f7ff b96d 	b.w	8003098 <_vfprintf_r+0x6c0>
 8003dbe:	4614      	mov	r4, r2
 8003dc0:	4632      	mov	r2, r6
 8003dc2:	461e      	mov	r6, r3
 8003dc4:	4613      	mov	r3, r2
 8003dc6:	462a      	mov	r2, r5
 8003dc8:	3201      	adds	r2, #1
 8003dca:	9209      	str	r2, [sp, #36]	; 0x24
 8003dcc:	f106 0208 	add.w	r2, r6, #8
 8003dd0:	e9c6 3900 	strd	r3, r9, [r6]
 8003dd4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003dd6:	932b      	str	r3, [sp, #172]	; 0xac
 8003dd8:	444c      	add	r4, r9
 8003dda:	2b07      	cmp	r3, #7
 8003ddc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003dde:	f73f acc3 	bgt.w	8003768 <_vfprintf_r+0xd90>
 8003de2:	3301      	adds	r3, #1
 8003de4:	9309      	str	r3, [sp, #36]	; 0x24
 8003de6:	f102 0b08 	add.w	fp, r2, #8
 8003dea:	4616      	mov	r6, r2
 8003dec:	f7ff bbca 	b.w	8003584 <_vfprintf_r+0xbac>
 8003df0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003df2:	9907      	ldr	r1, [sp, #28]
 8003df4:	9803      	ldr	r0, [sp, #12]
 8003df6:	f003 f91d 	bl	8007034 <__sprint_r>
 8003dfa:	2800      	cmp	r0, #0
 8003dfc:	f47f ab64 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8003e00:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e02:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e06:	f7ff bade 	b.w	80033c6 <_vfprintf_r+0x9ee>
 8003e0a:	464b      	mov	r3, r9
 8003e0c:	2b06      	cmp	r3, #6
 8003e0e:	bf28      	it	cs
 8003e10:	2306      	movcs	r3, #6
 8003e12:	46b9      	mov	r9, r7
 8003e14:	970f      	str	r7, [sp, #60]	; 0x3c
 8003e16:	9714      	str	r7, [sp, #80]	; 0x50
 8003e18:	9711      	str	r7, [sp, #68]	; 0x44
 8003e1a:	970a      	str	r7, [sp, #40]	; 0x28
 8003e1c:	463a      	mov	r2, r7
 8003e1e:	9304      	str	r3, [sp, #16]
 8003e20:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003e24:	4f05      	ldr	r7, [pc, #20]	; (8003e3c <_vfprintf_r+0x1464>)
 8003e26:	f7fe bf64 	b.w	8002cf2 <_vfprintf_r+0x31a>
 8003e2a:	bf00      	nop
 8003e2c:	08007718 	.word	0x08007718
 8003e30:	080076fc 	.word	0x080076fc
 8003e34:	40300000 	.word	0x40300000
 8003e38:	3fe00000 	.word	0x3fe00000
 8003e3c:	08007710 	.word	0x08007710
 8003e40:	460c      	mov	r4, r1
 8003e42:	4639      	mov	r1, r7
 8003e44:	465f      	mov	r7, fp
 8003e46:	469b      	mov	fp, r3
 8003e48:	460b      	mov	r3, r1
 8003e4a:	3201      	adds	r2, #1
 8003e4c:	442c      	add	r4, r5
 8003e4e:	2a07      	cmp	r2, #7
 8003e50:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e54:	e9cb 3500 	strd	r3, r5, [fp]
 8003e58:	f73f aca5 	bgt.w	80037a6 <_vfprintf_r+0xdce>
 8003e5c:	f10b 0b08 	add.w	fp, fp, #8
 8003e60:	e4ac      	b.n	80037bc <_vfprintf_r+0xde4>
 8003e62:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e64:	1cda      	adds	r2, r3, #3
 8003e66:	db02      	blt.n	8003e6e <_vfprintf_r+0x1496>
 8003e68:	4599      	cmp	r9, r3
 8003e6a:	f280 80b5 	bge.w	8003fd8 <_vfprintf_r+0x1600>
 8003e6e:	3e02      	subs	r6, #2
 8003e70:	f026 0320 	bic.w	r3, r6, #32
 8003e74:	9304      	str	r3, [sp, #16]
 8003e76:	e611      	b.n	8003a9c <_vfprintf_r+0x10c4>
 8003e78:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e7a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003e7e:	465a      	mov	r2, fp
 8003e80:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003e84:	18fb      	adds	r3, r7, r3
 8003e86:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003e8a:	970c      	str	r7, [sp, #48]	; 0x30
 8003e8c:	4eaf      	ldr	r6, [pc, #700]	; (800414c <_vfprintf_r+0x1774>)
 8003e8e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003e92:	9309      	str	r3, [sp, #36]	; 0x24
 8003e94:	464f      	mov	r7, r9
 8003e96:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003e9a:	4621      	mov	r1, r4
 8003e9c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e9e:	2b00      	cmp	r3, #0
 8003ea0:	d05b      	beq.n	8003f5a <_vfprintf_r+0x1582>
 8003ea2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ea4:	2b00      	cmp	r3, #0
 8003ea6:	d154      	bne.n	8003f52 <_vfprintf_r+0x157a>
 8003ea8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003eaa:	3b01      	subs	r3, #1
 8003eac:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003eb0:	9314      	str	r3, [sp, #80]	; 0x50
 8003eb2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003eb4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003eb6:	6010      	str	r0, [r2, #0]
 8003eb8:	3301      	adds	r3, #1
 8003eba:	4459      	add	r1, fp
 8003ebc:	2b07      	cmp	r3, #7
 8003ebe:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ec0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ec4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ec6:	dc68      	bgt.n	8003f9a <_vfprintf_r+0x15c2>
 8003ec8:	3208      	adds	r2, #8
 8003eca:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003ecc:	f898 3000 	ldrb.w	r3, [r8]
 8003ed0:	1bc5      	subs	r5, r0, r7
 8003ed2:	429d      	cmp	r5, r3
 8003ed4:	bfa8      	it	ge
 8003ed6:	461d      	movge	r5, r3
 8003ed8:	2d00      	cmp	r5, #0
 8003eda:	dd0b      	ble.n	8003ef4 <_vfprintf_r+0x151c>
 8003edc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ede:	6017      	str	r7, [r2, #0]
 8003ee0:	3301      	adds	r3, #1
 8003ee2:	4429      	add	r1, r5
 8003ee4:	2b07      	cmp	r3, #7
 8003ee6:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ee8:	6055      	str	r5, [r2, #4]
 8003eea:	932b      	str	r3, [sp, #172]	; 0xac
 8003eec:	dc5e      	bgt.n	8003fac <_vfprintf_r+0x15d4>
 8003eee:	f898 3000 	ldrb.w	r3, [r8]
 8003ef2:	3208      	adds	r2, #8
 8003ef4:	2d00      	cmp	r5, #0
 8003ef6:	bfac      	ite	ge
 8003ef8:	1b5d      	subge	r5, r3, r5
 8003efa:	461d      	movlt	r5, r3
 8003efc:	2d00      	cmp	r5, #0
 8003efe:	dd26      	ble.n	8003f4e <_vfprintf_r+0x1576>
 8003f00:	2d10      	cmp	r5, #16
 8003f02:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f04:	dd3c      	ble.n	8003f80 <_vfprintf_r+0x15a8>
 8003f06:	2410      	movs	r4, #16
 8003f08:	e003      	b.n	8003f12 <_vfprintf_r+0x153a>
 8003f0a:	3208      	adds	r2, #8
 8003f0c:	3d10      	subs	r5, #16
 8003f0e:	2d10      	cmp	r5, #16
 8003f10:	dd36      	ble.n	8003f80 <_vfprintf_r+0x15a8>
 8003f12:	3001      	adds	r0, #1
 8003f14:	3110      	adds	r1, #16
 8003f16:	2807      	cmp	r0, #7
 8003f18:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f1c:	e9c2 6400 	strd	r6, r4, [r2]
 8003f20:	ddf3      	ble.n	8003f0a <_vfprintf_r+0x1532>
 8003f22:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f24:	4651      	mov	r1, sl
 8003f26:	4648      	mov	r0, r9
 8003f28:	f003 f884 	bl	8007034 <__sprint_r>
 8003f2c:	2800      	cmp	r0, #0
 8003f2e:	d150      	bne.n	8003fd2 <_vfprintf_r+0x15fa>
 8003f30:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003f34:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f36:	e7e9      	b.n	8003f0c <_vfprintf_r+0x1534>
 8003f38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f3a:	4651      	mov	r1, sl
 8003f3c:	4648      	mov	r0, r9
 8003f3e:	f003 f879 	bl	8007034 <__sprint_r>
 8003f42:	2800      	cmp	r0, #0
 8003f44:	d145      	bne.n	8003fd2 <_vfprintf_r+0x15fa>
 8003f46:	f898 3000 	ldrb.w	r3, [r8]
 8003f4a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f4c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f4e:	441f      	add	r7, r3
 8003f50:	e7a4      	b.n	8003e9c <_vfprintf_r+0x14c4>
 8003f52:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f54:	3b01      	subs	r3, #1
 8003f56:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f58:	e7ab      	b.n	8003eb2 <_vfprintf_r+0x14da>
 8003f5a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f5c:	2b00      	cmp	r3, #0
 8003f5e:	d1f8      	bne.n	8003f52 <_vfprintf_r+0x157a>
 8003f60:	46b9      	mov	r9, r7
 8003f62:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f64:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003f66:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003f6a:	18fb      	adds	r3, r7, r3
 8003f6c:	4599      	cmp	r9, r3
 8003f6e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003f72:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003f76:	4693      	mov	fp, r2
 8003f78:	460c      	mov	r4, r1
 8003f7a:	bf28      	it	cs
 8003f7c:	4699      	movcs	r9, r3
 8003f7e:	e424      	b.n	80037ca <_vfprintf_r+0xdf2>
 8003f80:	3001      	adds	r0, #1
 8003f82:	4429      	add	r1, r5
 8003f84:	2807      	cmp	r0, #7
 8003f86:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f8a:	e9c2 6500 	strd	r6, r5, [r2]
 8003f8e:	dcd3      	bgt.n	8003f38 <_vfprintf_r+0x1560>
 8003f90:	f898 3000 	ldrb.w	r3, [r8]
 8003f94:	3208      	adds	r2, #8
 8003f96:	441f      	add	r7, r3
 8003f98:	e780      	b.n	8003e9c <_vfprintf_r+0x14c4>
 8003f9a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f9c:	4651      	mov	r1, sl
 8003f9e:	4648      	mov	r0, r9
 8003fa0:	f003 f848 	bl	8007034 <__sprint_r>
 8003fa4:	b9a8      	cbnz	r0, 8003fd2 <_vfprintf_r+0x15fa>
 8003fa6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fa8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003faa:	e78e      	b.n	8003eca <_vfprintf_r+0x14f2>
 8003fac:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fae:	4651      	mov	r1, sl
 8003fb0:	4648      	mov	r0, r9
 8003fb2:	f003 f83f 	bl	8007034 <__sprint_r>
 8003fb6:	b960      	cbnz	r0, 8003fd2 <_vfprintf_r+0x15fa>
 8003fb8:	f898 3000 	ldrb.w	r3, [r8]
 8003fbc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fbe:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fc0:	e798      	b.n	8003ef4 <_vfprintf_r+0x151c>
 8003fc2:	4638      	mov	r0, r7
 8003fc4:	f7fc ffbc 	bl	8000f40 <strlen>
 8003fc8:	46a9      	mov	r9, r5
 8003fca:	4603      	mov	r3, r0
 8003fcc:	9009      	str	r0, [sp, #36]	; 0x24
 8003fce:	f7ff b8f4 	b.w	80031ba <_vfprintf_r+0x7e2>
 8003fd2:	46d1      	mov	r9, sl
 8003fd4:	f7ff ba7a 	b.w	80034cc <_vfprintf_r+0xaf4>
 8003fd8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fda:	4619      	mov	r1, r3
 8003fdc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fde:	4299      	cmp	r1, r3
 8003fe0:	f300 8082 	bgt.w	80040e8 <_vfprintf_r+0x1710>
 8003fe4:	07c4      	lsls	r4, r0, #31
 8003fe6:	f140 816b 	bpl.w	80042c0 <_vfprintf_r+0x18e8>
 8003fea:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003fec:	4413      	add	r3, r2
 8003fee:	9309      	str	r3, [sp, #36]	; 0x24
 8003ff0:	0541      	lsls	r1, r0, #21
 8003ff2:	d503      	bpl.n	8003ffc <_vfprintf_r+0x1624>
 8003ff4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ff6:	2b00      	cmp	r3, #0
 8003ff8:	f300 80e6 	bgt.w	80041c8 <_vfprintf_r+0x17f0>
 8003ffc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ffe:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004002:	9304      	str	r3, [sp, #16]
 8004004:	2667      	movs	r6, #103	; 0x67
 8004006:	2300      	movs	r3, #0
 8004008:	930f      	str	r3, [sp, #60]	; 0x3c
 800400a:	9314      	str	r3, [sp, #80]	; 0x50
 800400c:	e586      	b.n	8003b1c <_vfprintf_r+0x1144>
 800400e:	222d      	movs	r2, #45	; 0x2d
 8004010:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004014:	f04f 0900 	mov.w	r9, #0
 8004018:	f7fe be6c 	b.w	8002cf4 <_vfprintf_r+0x31c>
 800401c:	46a1      	mov	r9, r4
 800401e:	f7ff ba55 	b.w	80034cc <_vfprintf_r+0xaf4>
 8004022:	900a      	str	r0, [sp, #40]	; 0x28
 8004024:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004028:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800402c:	931f      	str	r3, [sp, #124]	; 0x7c
 800402e:	232d      	movs	r3, #45	; 0x2d
 8004030:	911e      	str	r1, [sp, #120]	; 0x78
 8004032:	930b      	str	r3, [sp, #44]	; 0x2c
 8004034:	e619      	b.n	8003c6a <_vfprintf_r+0x1292>
 8004036:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004038:	9328      	str	r3, [sp, #160]	; 0xa0
 800403a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800403c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004040:	7bd9      	ldrb	r1, [r3, #15]
 8004042:	4291      	cmp	r1, r2
 8004044:	462b      	mov	r3, r5
 8004046:	d109      	bne.n	800405c <_vfprintf_r+0x1684>
 8004048:	2030      	movs	r0, #48	; 0x30
 800404a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800404e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004050:	1e5a      	subs	r2, r3, #1
 8004052:	9228      	str	r2, [sp, #160]	; 0xa0
 8004054:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004058:	4291      	cmp	r1, r2
 800405a:	d0f6      	beq.n	800404a <_vfprintf_r+0x1672>
 800405c:	2a39      	cmp	r2, #57	; 0x39
 800405e:	bf0b      	itete	eq
 8004060:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004062:	3201      	addne	r2, #1
 8004064:	7a92      	ldrbeq	r2, [r2, #10]
 8004066:	b2d2      	uxtbne	r2, r2
 8004068:	f803 2c01 	strb.w	r2, [r3, #-1]
 800406c:	e682      	b.n	8003d74 <_vfprintf_r+0x139c>
 800406e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004072:	f43f ad9f 	beq.w	8003bb4 <_vfprintf_r+0x11dc>
 8004076:	9a05      	ldr	r2, [sp, #20]
 8004078:	701a      	strb	r2, [r3, #0]
 800407a:	4657      	mov	r7, sl
 800407c:	f7fe bf52 	b.w	8002f24 <_vfprintf_r+0x54c>
 8004080:	aa2a      	add	r2, sp, #168	; 0xa8
 8004082:	9907      	ldr	r1, [sp, #28]
 8004084:	9803      	ldr	r0, [sp, #12]
 8004086:	f002 ffd5 	bl	8007034 <__sprint_r>
 800408a:	2800      	cmp	r0, #0
 800408c:	f47f aa1c 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8004090:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004092:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004096:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800409a:	e571      	b.n	8003b80 <_vfprintf_r+0x11a8>
 800409c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800409e:	2b00      	cmp	r3, #0
 80040a0:	f340 8164 	ble.w	800436c <_vfprintf_r+0x1994>
 80040a4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040a6:	f1b9 0f00 	cmp.w	r9, #0
 80040aa:	f040 8103 	bne.w	80042b4 <_vfprintf_r+0x18dc>
 80040ae:	07c6      	lsls	r6, r0, #31
 80040b0:	f100 8100 	bmi.w	80042b4 <_vfprintf_r+0x18dc>
 80040b4:	9309      	str	r3, [sp, #36]	; 0x24
 80040b6:	2666      	movs	r6, #102	; 0x66
 80040b8:	0543      	lsls	r3, r0, #21
 80040ba:	f100 8086 	bmi.w	80041ca <_vfprintf_r+0x17f2>
 80040be:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040c0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80040c4:	9304      	str	r3, [sp, #16]
 80040c6:	e79e      	b.n	8004006 <_vfprintf_r+0x162e>
 80040c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040ca:	9907      	ldr	r1, [sp, #28]
 80040cc:	9803      	ldr	r0, [sp, #12]
 80040ce:	f002 ffb1 	bl	8007034 <__sprint_r>
 80040d2:	2800      	cmp	r0, #0
 80040d4:	f47f a9f8 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 80040d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80040da:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80040dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80040de:	1ad3      	subs	r3, r2, r3
 80040e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040e4:	f7ff bb90 	b.w	8003808 <_vfprintf_r+0xe30>
 80040e8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040ea:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80040ec:	4413      	add	r3, r2
 80040ee:	9309      	str	r3, [sp, #36]	; 0x24
 80040f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040f2:	2b00      	cmp	r3, #0
 80040f4:	f340 8149 	ble.w	800438a <_vfprintf_r+0x19b2>
 80040f8:	2667      	movs	r6, #103	; 0x67
 80040fa:	e7dd      	b.n	80040b8 <_vfprintf_r+0x16e0>
 80040fc:	2330      	movs	r3, #48	; 0x30
 80040fe:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004102:	2358      	movs	r3, #88	; 0x58
 8004104:	e595      	b.n	8003c32 <_vfprintf_r+0x125a>
 8004106:	9803      	ldr	r0, [sp, #12]
 8004108:	aa2a      	add	r2, sp, #168	; 0xa8
 800410a:	4649      	mov	r1, r9
 800410c:	f002 ff92 	bl	8007034 <__sprint_r>
 8004110:	2800      	cmp	r0, #0
 8004112:	f47f a9e0 	bne.w	80034d6 <_vfprintf_r+0xafe>
 8004116:	f7fe bf0f 	b.w	8002f38 <_vfprintf_r+0x560>
 800411a:	a824      	add	r0, sp, #144	; 0x90
 800411c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004120:	f002 fe90 	bl	8006e44 <frexp>
 8004124:	2200      	movs	r2, #0
 8004126:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800412a:	ec51 0b10 	vmov	r0, r1, d0
 800412e:	f7fc fa23 	bl	8000578 <__aeabi_dmul>
 8004132:	2200      	movs	r2, #0
 8004134:	2300      	movs	r3, #0
 8004136:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800413a:	f7fc fc85 	bl	8000a48 <__aeabi_dcmpeq>
 800413e:	b108      	cbz	r0, 8004144 <_vfprintf_r+0x176c>
 8004140:	2301      	movs	r3, #1
 8004142:	9324      	str	r3, [sp, #144]	; 0x90
 8004144:	4b02      	ldr	r3, [pc, #8]	; (8004150 <_vfprintf_r+0x1778>)
 8004146:	9309      	str	r3, [sp, #36]	; 0x24
 8004148:	e5ac      	b.n	8003ca4 <_vfprintf_r+0x12cc>
 800414a:	bf00      	nop
 800414c:	0800772c 	.word	0x0800772c
 8004150:	080076e8 	.word	0x080076e8
 8004154:	425d      	negs	r5, r3
 8004156:	3310      	adds	r3, #16
 8004158:	4bb9      	ldr	r3, [pc, #740]	; (8004440 <_vfprintf_r+0x1a68>)
 800415a:	f280 8097 	bge.w	800428c <_vfprintf_r+0x18b4>
 800415e:	4619      	mov	r1, r3
 8004160:	2610      	movs	r6, #16
 8004162:	4623      	mov	r3, r4
 8004164:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004168:	460c      	mov	r4, r1
 800416a:	e005      	b.n	8004178 <_vfprintf_r+0x17a0>
 800416c:	f10b 0b08 	add.w	fp, fp, #8
 8004170:	3d10      	subs	r5, #16
 8004172:	2d10      	cmp	r5, #16
 8004174:	f340 8087 	ble.w	8004286 <_vfprintf_r+0x18ae>
 8004178:	3201      	adds	r2, #1
 800417a:	3310      	adds	r3, #16
 800417c:	2a07      	cmp	r2, #7
 800417e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004182:	e9cb 4600 	strd	r4, r6, [fp]
 8004186:	ddf1      	ble.n	800416c <_vfprintf_r+0x1794>
 8004188:	aa2a      	add	r2, sp, #168	; 0xa8
 800418a:	9907      	ldr	r1, [sp, #28]
 800418c:	4648      	mov	r0, r9
 800418e:	f002 ff51 	bl	8007034 <__sprint_r>
 8004192:	2800      	cmp	r0, #0
 8004194:	f47f a998 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8004198:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800419c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041a0:	e7e6      	b.n	8004170 <_vfprintf_r+0x1798>
 80041a2:	f109 0101 	add.w	r1, r9, #1
 80041a6:	9803      	ldr	r0, [sp, #12]
 80041a8:	f001 fe80 	bl	8005eac <_malloc_r>
 80041ac:	4607      	mov	r7, r0
 80041ae:	2800      	cmp	r0, #0
 80041b0:	f000 813b 	beq.w	800442a <_vfprintf_r+0x1a52>
 80041b4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80041b8:	930e      	str	r3, [sp, #56]	; 0x38
 80041ba:	f026 0320 	bic.w	r3, r6, #32
 80041be:	9304      	str	r3, [sp, #16]
 80041c0:	46a0      	mov	r8, r4
 80041c2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80041c4:	900a      	str	r0, [sp, #40]	; 0x28
 80041c6:	e547      	b.n	8003c58 <_vfprintf_r+0x1280>
 80041c8:	2667      	movs	r6, #103	; 0x67
 80041ca:	981a      	ldr	r0, [sp, #104]	; 0x68
 80041cc:	2200      	movs	r2, #0
 80041ce:	920f      	str	r2, [sp, #60]	; 0x3c
 80041d0:	9214      	str	r2, [sp, #80]	; 0x50
 80041d2:	7803      	ldrb	r3, [r0, #0]
 80041d4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80041d6:	2bff      	cmp	r3, #255	; 0xff
 80041d8:	d00c      	beq.n	80041f4 <_vfprintf_r+0x181c>
 80041da:	4293      	cmp	r3, r2
 80041dc:	da0a      	bge.n	80041f4 <_vfprintf_r+0x181c>
 80041de:	7841      	ldrb	r1, [r0, #1]
 80041e0:	1ad2      	subs	r2, r2, r3
 80041e2:	b1a9      	cbz	r1, 8004210 <_vfprintf_r+0x1838>
 80041e4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80041e6:	3301      	adds	r3, #1
 80041e8:	9314      	str	r3, [sp, #80]	; 0x50
 80041ea:	460b      	mov	r3, r1
 80041ec:	2bff      	cmp	r3, #255	; 0xff
 80041ee:	f100 0001 	add.w	r0, r0, #1
 80041f2:	d1f2      	bne.n	80041da <_vfprintf_r+0x1802>
 80041f4:	9211      	str	r2, [sp, #68]	; 0x44
 80041f6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80041f8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80041fa:	9909      	ldr	r1, [sp, #36]	; 0x24
 80041fc:	901a      	str	r0, [sp, #104]	; 0x68
 80041fe:	4413      	add	r3, r2
 8004200:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004202:	fb02 1303 	mla	r3, r2, r3, r1
 8004206:	9309      	str	r3, [sp, #36]	; 0x24
 8004208:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800420c:	9304      	str	r3, [sp, #16]
 800420e:	e485      	b.n	8003b1c <_vfprintf_r+0x1144>
 8004210:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004212:	3101      	adds	r1, #1
 8004214:	910f      	str	r1, [sp, #60]	; 0x3c
 8004216:	e7de      	b.n	80041d6 <_vfprintf_r+0x17fe>
 8004218:	aa28      	add	r2, sp, #160	; 0xa0
 800421a:	ab25      	add	r3, sp, #148	; 0x94
 800421c:	e9cd 3200 	strd	r3, r2, [sp]
 8004220:	2103      	movs	r1, #3
 8004222:	ab24      	add	r3, sp, #144	; 0x90
 8004224:	464a      	mov	r2, r9
 8004226:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800422a:	9803      	ldr	r0, [sp, #12]
 800422c:	f000 fa5c 	bl	80046e8 <_dtoa_r>
 8004230:	464d      	mov	r5, r9
 8004232:	4607      	mov	r7, r0
 8004234:	eb00 0409 	add.w	r4, r0, r9
 8004238:	783b      	ldrb	r3, [r7, #0]
 800423a:	2b30      	cmp	r3, #48	; 0x30
 800423c:	f000 80be 	beq.w	80043bc <_vfprintf_r+0x19e4>
 8004240:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004242:	442c      	add	r4, r5
 8004244:	2200      	movs	r2, #0
 8004246:	2300      	movs	r3, #0
 8004248:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800424c:	f7fc fbfc 	bl	8000a48 <__aeabi_dcmpeq>
 8004250:	b108      	cbz	r0, 8004256 <_vfprintf_r+0x187e>
 8004252:	4623      	mov	r3, r4
 8004254:	e413      	b.n	8003a7e <_vfprintf_r+0x10a6>
 8004256:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004258:	42a3      	cmp	r3, r4
 800425a:	f4bf ac10 	bcs.w	8003a7e <_vfprintf_r+0x10a6>
 800425e:	2130      	movs	r1, #48	; 0x30
 8004260:	1c5a      	adds	r2, r3, #1
 8004262:	9228      	str	r2, [sp, #160]	; 0xa0
 8004264:	7019      	strb	r1, [r3, #0]
 8004266:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004268:	429c      	cmp	r4, r3
 800426a:	d8f9      	bhi.n	8004260 <_vfprintf_r+0x1888>
 800426c:	e407      	b.n	8003a7e <_vfprintf_r+0x10a6>
 800426e:	197c      	adds	r4, r7, r5
 8004270:	e7e8      	b.n	8004244 <_vfprintf_r+0x186c>
 8004272:	f1b9 0f00 	cmp.w	r9, #0
 8004276:	f000 8092 	beq.w	800439e <_vfprintf_r+0x19c6>
 800427a:	900a      	str	r0, [sp, #40]	; 0x28
 800427c:	e4ec      	b.n	8003c58 <_vfprintf_r+0x1280>
 800427e:	900a      	str	r0, [sp, #40]	; 0x28
 8004280:	f04f 0906 	mov.w	r9, #6
 8004284:	e4e8      	b.n	8003c58 <_vfprintf_r+0x1280>
 8004286:	4621      	mov	r1, r4
 8004288:	461c      	mov	r4, r3
 800428a:	460b      	mov	r3, r1
 800428c:	3201      	adds	r2, #1
 800428e:	442c      	add	r4, r5
 8004290:	2a07      	cmp	r2, #7
 8004292:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004296:	e9cb 3500 	strd	r3, r5, [fp]
 800429a:	f300 80a9 	bgt.w	80043f0 <_vfprintf_r+0x1a18>
 800429e:	f10b 0b08 	add.w	fp, fp, #8
 80042a2:	e470      	b.n	8003b86 <_vfprintf_r+0x11ae>
 80042a4:	469a      	mov	sl, r3
 80042a6:	f7ff bb37 	b.w	8003918 <_vfprintf_r+0xf40>
 80042aa:	2301      	movs	r3, #1
 80042ac:	9324      	str	r3, [sp, #144]	; 0x90
 80042ae:	4b65      	ldr	r3, [pc, #404]	; (8004444 <_vfprintf_r+0x1a6c>)
 80042b0:	9309      	str	r3, [sp, #36]	; 0x24
 80042b2:	e4f7      	b.n	8003ca4 <_vfprintf_r+0x12cc>
 80042b4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80042b6:	4413      	add	r3, r2
 80042b8:	444b      	add	r3, r9
 80042ba:	9309      	str	r3, [sp, #36]	; 0x24
 80042bc:	2666      	movs	r6, #102	; 0x66
 80042be:	e6fb      	b.n	80040b8 <_vfprintf_r+0x16e0>
 80042c0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80042c2:	9309      	str	r3, [sp, #36]	; 0x24
 80042c4:	e694      	b.n	8003ff0 <_vfprintf_r+0x1618>
 80042c6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80042ca:	4664      	mov	r4, ip
 80042cc:	4d5e      	ldr	r5, [pc, #376]	; (8004448 <_vfprintf_r+0x1a70>)
 80042ce:	e000      	b.n	80042d2 <_vfprintf_r+0x18fa>
 80042d0:	4614      	mov	r4, r2
 80042d2:	fba5 1203 	umull	r1, r2, r5, r3
 80042d6:	08d2      	lsrs	r2, r2, #3
 80042d8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80042dc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80042e0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80042e4:	4613      	mov	r3, r2
 80042e6:	2b09      	cmp	r3, #9
 80042e8:	f804 1c01 	strb.w	r1, [r4, #-1]
 80042ec:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80042f0:	dcee      	bgt.n	80042d0 <_vfprintf_r+0x18f8>
 80042f2:	3330      	adds	r3, #48	; 0x30
 80042f4:	3c02      	subs	r4, #2
 80042f6:	b2db      	uxtb	r3, r3
 80042f8:	45a4      	cmp	ip, r4
 80042fa:	f802 3c01 	strb.w	r3, [r2, #-1]
 80042fe:	f240 8090 	bls.w	8004422 <_vfprintf_r+0x1a4a>
 8004302:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004306:	4611      	mov	r1, r2
 8004308:	e001      	b.n	800430e <_vfprintf_r+0x1936>
 800430a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800430e:	f804 3b01 	strb.w	r3, [r4], #1
 8004312:	458c      	cmp	ip, r1
 8004314:	d1f9      	bne.n	800430a <_vfprintf_r+0x1932>
 8004316:	ab2a      	add	r3, sp, #168	; 0xa8
 8004318:	1a9b      	subs	r3, r3, r2
 800431a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800431e:	4413      	add	r3, r2
 8004320:	f7ff bbe3 	b.w	8003aea <_vfprintf_r+0x1112>
 8004324:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004326:	4f49      	ldr	r7, [pc, #292]	; (800444c <_vfprintf_r+0x1a74>)
 8004328:	2b00      	cmp	r3, #0
 800432a:	bfb6      	itet	lt
 800432c:	222d      	movlt	r2, #45	; 0x2d
 800432e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004332:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004336:	4b46      	ldr	r3, [pc, #280]	; (8004450 <_vfprintf_r+0x1a78>)
 8004338:	f7fe bf02 	b.w	8003140 <_vfprintf_r+0x768>
 800433c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004340:	f7ff b8c9 	b.w	80034d6 <_vfprintf_r+0xafe>
 8004344:	aa28      	add	r2, sp, #160	; 0xa0
 8004346:	ab25      	add	r3, sp, #148	; 0x94
 8004348:	e9cd 3200 	strd	r3, r2, [sp]
 800434c:	2103      	movs	r1, #3
 800434e:	ab24      	add	r3, sp, #144	; 0x90
 8004350:	464a      	mov	r2, r9
 8004352:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004356:	9803      	ldr	r0, [sp, #12]
 8004358:	f000 f9c6 	bl	80046e8 <_dtoa_r>
 800435c:	464d      	mov	r5, r9
 800435e:	4607      	mov	r7, r0
 8004360:	2e46      	cmp	r6, #70	; 0x46
 8004362:	eb07 0405 	add.w	r4, r7, r5
 8004366:	f43f af67 	beq.w	8004238 <_vfprintf_r+0x1860>
 800436a:	e76b      	b.n	8004244 <_vfprintf_r+0x186c>
 800436c:	f1b9 0f00 	cmp.w	r9, #0
 8004370:	d131      	bne.n	80043d6 <_vfprintf_r+0x19fe>
 8004372:	07c5      	lsls	r5, r0, #31
 8004374:	d42f      	bmi.n	80043d6 <_vfprintf_r+0x19fe>
 8004376:	2301      	movs	r3, #1
 8004378:	9304      	str	r3, [sp, #16]
 800437a:	9309      	str	r3, [sp, #36]	; 0x24
 800437c:	2666      	movs	r6, #102	; 0x66
 800437e:	e642      	b.n	8004006 <_vfprintf_r+0x162e>
 8004380:	07c3      	lsls	r3, r0, #31
 8004382:	f57f abbf 	bpl.w	8003b04 <_vfprintf_r+0x112c>
 8004386:	f7ff bbb9 	b.w	8003afc <_vfprintf_r+0x1124>
 800438a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800438c:	f1c3 0301 	rsb	r3, r3, #1
 8004390:	441a      	add	r2, r3
 8004392:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004396:	9209      	str	r2, [sp, #36]	; 0x24
 8004398:	9304      	str	r3, [sp, #16]
 800439a:	2667      	movs	r6, #103	; 0x67
 800439c:	e633      	b.n	8004006 <_vfprintf_r+0x162e>
 800439e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80043a2:	f04f 0901 	mov.w	r9, #1
 80043a6:	e457      	b.n	8003c58 <_vfprintf_r+0x1280>
 80043a8:	465a      	mov	r2, fp
 80043aa:	e511      	b.n	8003dd0 <_vfprintf_r+0x13f8>
 80043ac:	2e47      	cmp	r6, #71	; 0x47
 80043ae:	f47f af5e 	bne.w	800426e <_vfprintf_r+0x1896>
 80043b2:	f018 0f01 	tst.w	r8, #1
 80043b6:	f43f ab61 	beq.w	8003a7c <_vfprintf_r+0x10a4>
 80043ba:	e7d1      	b.n	8004360 <_vfprintf_r+0x1988>
 80043bc:	2200      	movs	r2, #0
 80043be:	2300      	movs	r3, #0
 80043c0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80043c4:	f7fc fb40 	bl	8000a48 <__aeabi_dcmpeq>
 80043c8:	2800      	cmp	r0, #0
 80043ca:	f47f af39 	bne.w	8004240 <_vfprintf_r+0x1868>
 80043ce:	f1c5 0501 	rsb	r5, r5, #1
 80043d2:	9524      	str	r5, [sp, #144]	; 0x90
 80043d4:	e735      	b.n	8004242 <_vfprintf_r+0x186a>
 80043d6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80043d8:	3301      	adds	r3, #1
 80043da:	444b      	add	r3, r9
 80043dc:	9309      	str	r3, [sp, #36]	; 0x24
 80043de:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80043e2:	9304      	str	r3, [sp, #16]
 80043e4:	2666      	movs	r6, #102	; 0x66
 80043e6:	e60e      	b.n	8004006 <_vfprintf_r+0x162e>
 80043e8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80043ec:	f7ff bb7a 	b.w	8003ae4 <_vfprintf_r+0x110c>
 80043f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80043f2:	9907      	ldr	r1, [sp, #28]
 80043f4:	9803      	ldr	r0, [sp, #12]
 80043f6:	f002 fe1d 	bl	8007034 <__sprint_r>
 80043fa:	2800      	cmp	r0, #0
 80043fc:	f47f a864 	bne.w	80034c8 <_vfprintf_r+0xaf0>
 8004400:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004404:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004408:	f7ff bbbd 	b.w	8003b86 <_vfprintf_r+0x11ae>
 800440c:	9908      	ldr	r1, [sp, #32]
 800440e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004412:	680b      	ldr	r3, [r1, #0]
 8004414:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004418:	1d0b      	adds	r3, r1, #4
 800441a:	4692      	mov	sl, r2
 800441c:	9308      	str	r3, [sp, #32]
 800441e:	f7fe bb59 	b.w	8002ad4 <_vfprintf_r+0xfc>
 8004422:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004426:	f7ff bb60 	b.w	8003aea <_vfprintf_r+0x1112>
 800442a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800442e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004432:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004436:	f8a9 300c 	strh.w	r3, [r9, #12]
 800443a:	f7ff b84c 	b.w	80034d6 <_vfprintf_r+0xafe>
 800443e:	bf00      	nop
 8004440:	0800772c 	.word	0x0800772c
 8004444:	080076fc 	.word	0x080076fc
 8004448:	cccccccd 	.word	0xcccccccd
 800444c:	080076e4 	.word	0x080076e4
 8004450:	080076e0 	.word	0x080076e0

08004454 <__sbprintf>:
 8004454:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004458:	460c      	mov	r4, r1
 800445a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800445e:	8989      	ldrh	r1, [r1, #12]
 8004460:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004462:	89e5      	ldrh	r5, [r4, #14]
 8004464:	9619      	str	r6, [sp, #100]	; 0x64
 8004466:	f021 0102 	bic.w	r1, r1, #2
 800446a:	4606      	mov	r6, r0
 800446c:	69e0      	ldr	r0, [r4, #28]
 800446e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004472:	4617      	mov	r7, r2
 8004474:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004478:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800447a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800447e:	4698      	mov	r8, r3
 8004480:	ad1a      	add	r5, sp, #104	; 0x68
 8004482:	2300      	movs	r3, #0
 8004484:	9007      	str	r0, [sp, #28]
 8004486:	a816      	add	r0, sp, #88	; 0x58
 8004488:	9209      	str	r2, [sp, #36]	; 0x24
 800448a:	9306      	str	r3, [sp, #24]
 800448c:	9500      	str	r5, [sp, #0]
 800448e:	9504      	str	r5, [sp, #16]
 8004490:	9102      	str	r1, [sp, #8]
 8004492:	9105      	str	r1, [sp, #20]
 8004494:	f001 fc8a 	bl	8005dac <__retarget_lock_init_recursive>
 8004498:	4643      	mov	r3, r8
 800449a:	463a      	mov	r2, r7
 800449c:	4669      	mov	r1, sp
 800449e:	4630      	mov	r0, r6
 80044a0:	f7fe fa9a 	bl	80029d8 <_vfprintf_r>
 80044a4:	1e05      	subs	r5, r0, #0
 80044a6:	db07      	blt.n	80044b8 <__sbprintf+0x64>
 80044a8:	4630      	mov	r0, r6
 80044aa:	4669      	mov	r1, sp
 80044ac:	f001 f8d6 	bl	800565c <_fflush_r>
 80044b0:	2800      	cmp	r0, #0
 80044b2:	bf18      	it	ne
 80044b4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80044b8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80044bc:	065b      	lsls	r3, r3, #25
 80044be:	d503      	bpl.n	80044c8 <__sbprintf+0x74>
 80044c0:	89a3      	ldrh	r3, [r4, #12]
 80044c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044c6:	81a3      	strh	r3, [r4, #12]
 80044c8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80044ca:	f001 fc71 	bl	8005db0 <__retarget_lock_close_recursive>
 80044ce:	4628      	mov	r0, r5
 80044d0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80044d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080044d8 <__swsetup_r>:
 80044d8:	b538      	push	{r3, r4, r5, lr}
 80044da:	4b31      	ldr	r3, [pc, #196]	; (80045a0 <__swsetup_r+0xc8>)
 80044dc:	681b      	ldr	r3, [r3, #0]
 80044de:	4605      	mov	r5, r0
 80044e0:	460c      	mov	r4, r1
 80044e2:	b113      	cbz	r3, 80044ea <__swsetup_r+0x12>
 80044e4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80044e6:	2a00      	cmp	r2, #0
 80044e8:	d03a      	beq.n	8004560 <__swsetup_r+0x88>
 80044ea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80044ee:	b293      	uxth	r3, r2
 80044f0:	0718      	lsls	r0, r3, #28
 80044f2:	d50c      	bpl.n	800450e <__swsetup_r+0x36>
 80044f4:	6920      	ldr	r0, [r4, #16]
 80044f6:	b1a8      	cbz	r0, 8004524 <__swsetup_r+0x4c>
 80044f8:	f013 0201 	ands.w	r2, r3, #1
 80044fc:	d020      	beq.n	8004540 <__swsetup_r+0x68>
 80044fe:	6963      	ldr	r3, [r4, #20]
 8004500:	2200      	movs	r2, #0
 8004502:	425b      	negs	r3, r3
 8004504:	61a3      	str	r3, [r4, #24]
 8004506:	60a2      	str	r2, [r4, #8]
 8004508:	b300      	cbz	r0, 800454c <__swsetup_r+0x74>
 800450a:	2000      	movs	r0, #0
 800450c:	bd38      	pop	{r3, r4, r5, pc}
 800450e:	06d9      	lsls	r1, r3, #27
 8004510:	d53e      	bpl.n	8004590 <__swsetup_r+0xb8>
 8004512:	0758      	lsls	r0, r3, #29
 8004514:	d428      	bmi.n	8004568 <__swsetup_r+0x90>
 8004516:	6920      	ldr	r0, [r4, #16]
 8004518:	f042 0308 	orr.w	r3, r2, #8
 800451c:	81a3      	strh	r3, [r4, #12]
 800451e:	b29b      	uxth	r3, r3
 8004520:	2800      	cmp	r0, #0
 8004522:	d1e9      	bne.n	80044f8 <__swsetup_r+0x20>
 8004524:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004528:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800452c:	d0e4      	beq.n	80044f8 <__swsetup_r+0x20>
 800452e:	4628      	mov	r0, r5
 8004530:	4621      	mov	r1, r4
 8004532:	f001 fc71 	bl	8005e18 <__smakebuf_r>
 8004536:	89a3      	ldrh	r3, [r4, #12]
 8004538:	6920      	ldr	r0, [r4, #16]
 800453a:	f013 0201 	ands.w	r2, r3, #1
 800453e:	d1de      	bne.n	80044fe <__swsetup_r+0x26>
 8004540:	0799      	lsls	r1, r3, #30
 8004542:	bf58      	it	pl
 8004544:	6962      	ldrpl	r2, [r4, #20]
 8004546:	60a2      	str	r2, [r4, #8]
 8004548:	2800      	cmp	r0, #0
 800454a:	d1de      	bne.n	800450a <__swsetup_r+0x32>
 800454c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004550:	061a      	lsls	r2, r3, #24
 8004552:	d5db      	bpl.n	800450c <__swsetup_r+0x34>
 8004554:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004558:	81a3      	strh	r3, [r4, #12]
 800455a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800455e:	bd38      	pop	{r3, r4, r5, pc}
 8004560:	4618      	mov	r0, r3
 8004562:	f001 f8d7 	bl	8005714 <__sinit>
 8004566:	e7c0      	b.n	80044ea <__swsetup_r+0x12>
 8004568:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800456a:	b151      	cbz	r1, 8004582 <__swsetup_r+0xaa>
 800456c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004570:	4299      	cmp	r1, r3
 8004572:	d004      	beq.n	800457e <__swsetup_r+0xa6>
 8004574:	4628      	mov	r0, r5
 8004576:	f001 f96f 	bl	8005858 <_free_r>
 800457a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800457e:	2300      	movs	r3, #0
 8004580:	6323      	str	r3, [r4, #48]	; 0x30
 8004582:	2300      	movs	r3, #0
 8004584:	6920      	ldr	r0, [r4, #16]
 8004586:	6063      	str	r3, [r4, #4]
 8004588:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800458c:	6020      	str	r0, [r4, #0]
 800458e:	e7c3      	b.n	8004518 <__swsetup_r+0x40>
 8004590:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004594:	2309      	movs	r3, #9
 8004596:	602b      	str	r3, [r5, #0]
 8004598:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800459c:	81a2      	strh	r2, [r4, #12]
 800459e:	bd38      	pop	{r3, r4, r5, pc}
 80045a0:	2000001c 	.word	0x2000001c

080045a4 <register_fini>:
 80045a4:	4b02      	ldr	r3, [pc, #8]	; (80045b0 <register_fini+0xc>)
 80045a6:	b113      	cbz	r3, 80045ae <register_fini+0xa>
 80045a8:	4802      	ldr	r0, [pc, #8]	; (80045b4 <register_fini+0x10>)
 80045aa:	f000 b805 	b.w	80045b8 <atexit>
 80045ae:	4770      	bx	lr
 80045b0:	00000000 	.word	0x00000000
 80045b4:	08005785 	.word	0x08005785

080045b8 <atexit>:
 80045b8:	2300      	movs	r3, #0
 80045ba:	4601      	mov	r1, r0
 80045bc:	461a      	mov	r2, r3
 80045be:	4618      	mov	r0, r3
 80045c0:	f002 bd58 	b.w	8007074 <__register_exitproc>

080045c4 <quorem>:
 80045c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80045c8:	6903      	ldr	r3, [r0, #16]
 80045ca:	690f      	ldr	r7, [r1, #16]
 80045cc:	42bb      	cmp	r3, r7
 80045ce:	b083      	sub	sp, #12
 80045d0:	f2c0 8086 	blt.w	80046e0 <quorem+0x11c>
 80045d4:	3f01      	subs	r7, #1
 80045d6:	f101 0914 	add.w	r9, r1, #20
 80045da:	f100 0a14 	add.w	sl, r0, #20
 80045de:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80045e2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80045e6:	00bc      	lsls	r4, r7, #2
 80045e8:	3201      	adds	r2, #1
 80045ea:	fbb3 f8f2 	udiv	r8, r3, r2
 80045ee:	eb0a 0304 	add.w	r3, sl, r4
 80045f2:	9400      	str	r4, [sp, #0]
 80045f4:	eb09 0b04 	add.w	fp, r9, r4
 80045f8:	9301      	str	r3, [sp, #4]
 80045fa:	f1b8 0f00 	cmp.w	r8, #0
 80045fe:	d038      	beq.n	8004672 <quorem+0xae>
 8004600:	2500      	movs	r5, #0
 8004602:	462e      	mov	r6, r5
 8004604:	46ce      	mov	lr, r9
 8004606:	46d4      	mov	ip, sl
 8004608:	f85e 4b04 	ldr.w	r4, [lr], #4
 800460c:	f8dc 3000 	ldr.w	r3, [ip]
 8004610:	b2a2      	uxth	r2, r4
 8004612:	fb08 5502 	mla	r5, r8, r2, r5
 8004616:	0c22      	lsrs	r2, r4, #16
 8004618:	0c2c      	lsrs	r4, r5, #16
 800461a:	fb08 4202 	mla	r2, r8, r2, r4
 800461e:	b2ad      	uxth	r5, r5
 8004620:	1b75      	subs	r5, r6, r5
 8004622:	b296      	uxth	r6, r2
 8004624:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004628:	fa15 f383 	uxtah	r3, r5, r3
 800462c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004630:	b29b      	uxth	r3, r3
 8004632:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004636:	45f3      	cmp	fp, lr
 8004638:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800463c:	f84c 3b04 	str.w	r3, [ip], #4
 8004640:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004644:	d2e0      	bcs.n	8004608 <quorem+0x44>
 8004646:	9b00      	ldr	r3, [sp, #0]
 8004648:	f85a 3003 	ldr.w	r3, [sl, r3]
 800464c:	b98b      	cbnz	r3, 8004672 <quorem+0xae>
 800464e:	9a01      	ldr	r2, [sp, #4]
 8004650:	1f13      	subs	r3, r2, #4
 8004652:	459a      	cmp	sl, r3
 8004654:	d20c      	bcs.n	8004670 <quorem+0xac>
 8004656:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800465a:	b94b      	cbnz	r3, 8004670 <quorem+0xac>
 800465c:	f1a2 0308 	sub.w	r3, r2, #8
 8004660:	e002      	b.n	8004668 <quorem+0xa4>
 8004662:	681a      	ldr	r2, [r3, #0]
 8004664:	3b04      	subs	r3, #4
 8004666:	b91a      	cbnz	r2, 8004670 <quorem+0xac>
 8004668:	459a      	cmp	sl, r3
 800466a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800466e:	d3f8      	bcc.n	8004662 <quorem+0x9e>
 8004670:	6107      	str	r7, [r0, #16]
 8004672:	4604      	mov	r4, r0
 8004674:	f002 f944 	bl	8006900 <__mcmp>
 8004678:	2800      	cmp	r0, #0
 800467a:	db2d      	blt.n	80046d8 <quorem+0x114>
 800467c:	f108 0801 	add.w	r8, r8, #1
 8004680:	4655      	mov	r5, sl
 8004682:	2300      	movs	r3, #0
 8004684:	f859 1b04 	ldr.w	r1, [r9], #4
 8004688:	6828      	ldr	r0, [r5, #0]
 800468a:	b28a      	uxth	r2, r1
 800468c:	1a9a      	subs	r2, r3, r2
 800468e:	0c0b      	lsrs	r3, r1, #16
 8004690:	fa12 f280 	uxtah	r2, r2, r0
 8004694:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004698:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800469c:	b292      	uxth	r2, r2
 800469e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80046a2:	45cb      	cmp	fp, r9
 80046a4:	f845 2b04 	str.w	r2, [r5], #4
 80046a8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80046ac:	d2ea      	bcs.n	8004684 <quorem+0xc0>
 80046ae:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80046b2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80046b6:	b97a      	cbnz	r2, 80046d8 <quorem+0x114>
 80046b8:	1f1a      	subs	r2, r3, #4
 80046ba:	4592      	cmp	sl, r2
 80046bc:	d20b      	bcs.n	80046d6 <quorem+0x112>
 80046be:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80046c2:	b942      	cbnz	r2, 80046d6 <quorem+0x112>
 80046c4:	3b08      	subs	r3, #8
 80046c6:	e002      	b.n	80046ce <quorem+0x10a>
 80046c8:	681a      	ldr	r2, [r3, #0]
 80046ca:	3b04      	subs	r3, #4
 80046cc:	b91a      	cbnz	r2, 80046d6 <quorem+0x112>
 80046ce:	459a      	cmp	sl, r3
 80046d0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80046d4:	d3f8      	bcc.n	80046c8 <quorem+0x104>
 80046d6:	6127      	str	r7, [r4, #16]
 80046d8:	4640      	mov	r0, r8
 80046da:	b003      	add	sp, #12
 80046dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80046e0:	2000      	movs	r0, #0
 80046e2:	b003      	add	sp, #12
 80046e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080046e8 <_dtoa_r>:
 80046e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80046ec:	ec55 4b10 	vmov	r4, r5, d0
 80046f0:	b09b      	sub	sp, #108	; 0x6c
 80046f2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80046f4:	9102      	str	r1, [sp, #8]
 80046f6:	4681      	mov	r9, r0
 80046f8:	9207      	str	r2, [sp, #28]
 80046fa:	9305      	str	r3, [sp, #20]
 80046fc:	e9cd 4500 	strd	r4, r5, [sp]
 8004700:	b156      	cbz	r6, 8004718 <_dtoa_r+0x30>
 8004702:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004704:	6072      	str	r2, [r6, #4]
 8004706:	2301      	movs	r3, #1
 8004708:	4093      	lsls	r3, r2
 800470a:	60b3      	str	r3, [r6, #8]
 800470c:	4631      	mov	r1, r6
 800470e:	f001 ff07 	bl	8006520 <_Bfree>
 8004712:	2300      	movs	r3, #0
 8004714:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004718:	f1b5 0800 	subs.w	r8, r5, #0
 800471c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800471e:	bfb4      	ite	lt
 8004720:	2301      	movlt	r3, #1
 8004722:	2300      	movge	r3, #0
 8004724:	6013      	str	r3, [r2, #0]
 8004726:	4b76      	ldr	r3, [pc, #472]	; (8004900 <_dtoa_r+0x218>)
 8004728:	bfbc      	itt	lt
 800472a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800472e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004732:	ea33 0308 	bics.w	r3, r3, r8
 8004736:	f000 80a6 	beq.w	8004886 <_dtoa_r+0x19e>
 800473a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800473e:	2200      	movs	r2, #0
 8004740:	2300      	movs	r3, #0
 8004742:	4630      	mov	r0, r6
 8004744:	4639      	mov	r1, r7
 8004746:	f7fc f97f 	bl	8000a48 <__aeabi_dcmpeq>
 800474a:	4605      	mov	r5, r0
 800474c:	b178      	cbz	r0, 800476e <_dtoa_r+0x86>
 800474e:	9a05      	ldr	r2, [sp, #20]
 8004750:	2301      	movs	r3, #1
 8004752:	6013      	str	r3, [r2, #0]
 8004754:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004756:	2b00      	cmp	r3, #0
 8004758:	f000 80c0 	beq.w	80048dc <_dtoa_r+0x1f4>
 800475c:	4b69      	ldr	r3, [pc, #420]	; (8004904 <_dtoa_r+0x21c>)
 800475e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004760:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004764:	6013      	str	r3, [r2, #0]
 8004766:	4658      	mov	r0, fp
 8004768:	b01b      	add	sp, #108	; 0x6c
 800476a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800476e:	aa18      	add	r2, sp, #96	; 0x60
 8004770:	a919      	add	r1, sp, #100	; 0x64
 8004772:	ec47 6b10 	vmov	d0, r6, r7
 8004776:	4648      	mov	r0, r9
 8004778:	f002 f954 	bl	8006a24 <__d2b>
 800477c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004780:	4682      	mov	sl, r0
 8004782:	f040 80a0 	bne.w	80048c6 <_dtoa_r+0x1de>
 8004786:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800478a:	442c      	add	r4, r5
 800478c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004790:	2b20      	cmp	r3, #32
 8004792:	f340 842c 	ble.w	8004fee <_dtoa_r+0x906>
 8004796:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800479a:	fa08 f803 	lsl.w	r8, r8, r3
 800479e:	9b00      	ldr	r3, [sp, #0]
 80047a0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80047a4:	fa23 f000 	lsr.w	r0, r3, r0
 80047a8:	ea48 0000 	orr.w	r0, r8, r0
 80047ac:	f7fb fe6a 	bl	8000484 <__aeabi_ui2d>
 80047b0:	2301      	movs	r3, #1
 80047b2:	4606      	mov	r6, r0
 80047b4:	3c01      	subs	r4, #1
 80047b6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80047ba:	930f      	str	r3, [sp, #60]	; 0x3c
 80047bc:	4630      	mov	r0, r6
 80047be:	4639      	mov	r1, r7
 80047c0:	2200      	movs	r2, #0
 80047c2:	4b51      	ldr	r3, [pc, #324]	; (8004908 <_dtoa_r+0x220>)
 80047c4:	f7fb fd20 	bl	8000208 <__aeabi_dsub>
 80047c8:	a347      	add	r3, pc, #284	; (adr r3, 80048e8 <_dtoa_r+0x200>)
 80047ca:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047ce:	f7fb fed3 	bl	8000578 <__aeabi_dmul>
 80047d2:	a347      	add	r3, pc, #284	; (adr r3, 80048f0 <_dtoa_r+0x208>)
 80047d4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047d8:	f7fb fd18 	bl	800020c <__adddf3>
 80047dc:	4606      	mov	r6, r0
 80047de:	4620      	mov	r0, r4
 80047e0:	460f      	mov	r7, r1
 80047e2:	f7fb fe5f 	bl	80004a4 <__aeabi_i2d>
 80047e6:	a344      	add	r3, pc, #272	; (adr r3, 80048f8 <_dtoa_r+0x210>)
 80047e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047ec:	f7fb fec4 	bl	8000578 <__aeabi_dmul>
 80047f0:	4602      	mov	r2, r0
 80047f2:	460b      	mov	r3, r1
 80047f4:	4630      	mov	r0, r6
 80047f6:	4639      	mov	r1, r7
 80047f8:	f7fb fd08 	bl	800020c <__adddf3>
 80047fc:	4606      	mov	r6, r0
 80047fe:	460f      	mov	r7, r1
 8004800:	f7fc fc5e 	bl	80010c0 <__aeabi_d2iz>
 8004804:	2200      	movs	r2, #0
 8004806:	9006      	str	r0, [sp, #24]
 8004808:	2300      	movs	r3, #0
 800480a:	4630      	mov	r0, r6
 800480c:	4639      	mov	r1, r7
 800480e:	f7fc f925 	bl	8000a5c <__aeabi_dcmplt>
 8004812:	2800      	cmp	r0, #0
 8004814:	f040 8273 	bne.w	8004cfe <_dtoa_r+0x616>
 8004818:	9e06      	ldr	r6, [sp, #24]
 800481a:	2e16      	cmp	r6, #22
 800481c:	f200 825d 	bhi.w	8004cda <_dtoa_r+0x5f2>
 8004820:	4b3a      	ldr	r3, [pc, #232]	; (800490c <_dtoa_r+0x224>)
 8004822:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004826:	e9d3 0100 	ldrd	r0, r1, [r3]
 800482a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800482e:	f7fc f933 	bl	8000a98 <__aeabi_dcmpgt>
 8004832:	2800      	cmp	r0, #0
 8004834:	f000 83d7 	beq.w	8004fe6 <_dtoa_r+0x8fe>
 8004838:	1e73      	subs	r3, r6, #1
 800483a:	9306      	str	r3, [sp, #24]
 800483c:	2300      	movs	r3, #0
 800483e:	930d      	str	r3, [sp, #52]	; 0x34
 8004840:	1b2c      	subs	r4, r5, r4
 8004842:	f1b4 0801 	subs.w	r8, r4, #1
 8004846:	f100 8254 	bmi.w	8004cf2 <_dtoa_r+0x60a>
 800484a:	2300      	movs	r3, #0
 800484c:	9308      	str	r3, [sp, #32]
 800484e:	9b06      	ldr	r3, [sp, #24]
 8004850:	2b00      	cmp	r3, #0
 8004852:	f2c0 8245 	blt.w	8004ce0 <_dtoa_r+0x5f8>
 8004856:	4498      	add	r8, r3
 8004858:	930c      	str	r3, [sp, #48]	; 0x30
 800485a:	2300      	movs	r3, #0
 800485c:	930b      	str	r3, [sp, #44]	; 0x2c
 800485e:	9b02      	ldr	r3, [sp, #8]
 8004860:	2b09      	cmp	r3, #9
 8004862:	d85b      	bhi.n	800491c <_dtoa_r+0x234>
 8004864:	2b05      	cmp	r3, #5
 8004866:	f340 83c0 	ble.w	8004fea <_dtoa_r+0x902>
 800486a:	3b04      	subs	r3, #4
 800486c:	9302      	str	r3, [sp, #8]
 800486e:	2500      	movs	r5, #0
 8004870:	9b02      	ldr	r3, [sp, #8]
 8004872:	3b02      	subs	r3, #2
 8004874:	2b03      	cmp	r3, #3
 8004876:	f200 8498 	bhi.w	80051aa <_dtoa_r+0xac2>
 800487a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800487e:	03df      	.short	0x03df
 8004880:	03e803bf 	.word	0x03e803bf
 8004884:	04f5      	.short	0x04f5
 8004886:	9a05      	ldr	r2, [sp, #20]
 8004888:	f242 730f 	movw	r3, #9999	; 0x270f
 800488c:	6013      	str	r3, [r2, #0]
 800488e:	9b00      	ldr	r3, [sp, #0]
 8004890:	b983      	cbnz	r3, 80048b4 <_dtoa_r+0x1cc>
 8004892:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004896:	b96b      	cbnz	r3, 80048b4 <_dtoa_r+0x1cc>
 8004898:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800489a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004910 <_dtoa_r+0x228>
 800489e:	2b00      	cmp	r3, #0
 80048a0:	f43f af61 	beq.w	8004766 <_dtoa_r+0x7e>
 80048a4:	f10b 0308 	add.w	r3, fp, #8
 80048a8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80048aa:	4658      	mov	r0, fp
 80048ac:	6013      	str	r3, [r2, #0]
 80048ae:	b01b      	add	sp, #108	; 0x6c
 80048b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048b4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048b6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004914 <_dtoa_r+0x22c>
 80048ba:	2b00      	cmp	r3, #0
 80048bc:	f43f af53 	beq.w	8004766 <_dtoa_r+0x7e>
 80048c0:	f10b 0303 	add.w	r3, fp, #3
 80048c4:	e7f0      	b.n	80048a8 <_dtoa_r+0x1c0>
 80048c6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80048ca:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80048ce:	950f      	str	r5, [sp, #60]	; 0x3c
 80048d0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80048d4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80048d8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80048da:	e76f      	b.n	80047bc <_dtoa_r+0xd4>
 80048dc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004918 <_dtoa_r+0x230>
 80048e0:	4658      	mov	r0, fp
 80048e2:	b01b      	add	sp, #108	; 0x6c
 80048e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048e8:	636f4361 	.word	0x636f4361
 80048ec:	3fd287a7 	.word	0x3fd287a7
 80048f0:	8b60c8b3 	.word	0x8b60c8b3
 80048f4:	3fc68a28 	.word	0x3fc68a28
 80048f8:	509f79fb 	.word	0x509f79fb
 80048fc:	3fd34413 	.word	0x3fd34413
 8004900:	7ff00000 	.word	0x7ff00000
 8004904:	08007719 	.word	0x08007719
 8004908:	3ff80000 	.word	0x3ff80000
 800490c:	08007778 	.word	0x08007778
 8004910:	0800773c 	.word	0x0800773c
 8004914:	08007748 	.word	0x08007748
 8004918:	08007718 	.word	0x08007718
 800491c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004920:	2501      	movs	r5, #1
 8004922:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004926:	2300      	movs	r3, #0
 8004928:	9302      	str	r3, [sp, #8]
 800492a:	9307      	str	r3, [sp, #28]
 800492c:	2100      	movs	r1, #0
 800492e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004932:	940e      	str	r4, [sp, #56]	; 0x38
 8004934:	4648      	mov	r0, r9
 8004936:	f001 fdcd 	bl	80064d4 <_Balloc>
 800493a:	2c0e      	cmp	r4, #14
 800493c:	4683      	mov	fp, r0
 800493e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004942:	f200 80fb 	bhi.w	8004b3c <_dtoa_r+0x454>
 8004946:	2d00      	cmp	r5, #0
 8004948:	f000 80f8 	beq.w	8004b3c <_dtoa_r+0x454>
 800494c:	ed9d 7b00 	vldr	d7, [sp]
 8004950:	9906      	ldr	r1, [sp, #24]
 8004952:	2900      	cmp	r1, #0
 8004954:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004958:	f340 83e5 	ble.w	8005126 <_dtoa_r+0xa3e>
 800495c:	4b9d      	ldr	r3, [pc, #628]	; (8004bd4 <_dtoa_r+0x4ec>)
 800495e:	f001 020f 	and.w	r2, r1, #15
 8004962:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004966:	ed93 7b00 	vldr	d7, [r3]
 800496a:	110c      	asrs	r4, r1, #4
 800496c:	06e2      	lsls	r2, r4, #27
 800496e:	ed8d 7b00 	vstr	d7, [sp]
 8004972:	f140 849e 	bpl.w	80052b2 <_dtoa_r+0xbca>
 8004976:	4b98      	ldr	r3, [pc, #608]	; (8004bd8 <_dtoa_r+0x4f0>)
 8004978:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800497c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004980:	f7fb ff24 	bl	80007cc <__aeabi_ddiv>
 8004984:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004988:	f004 040f 	and.w	r4, r4, #15
 800498c:	2603      	movs	r6, #3
 800498e:	b17c      	cbz	r4, 80049b0 <_dtoa_r+0x2c8>
 8004990:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004994:	4d90      	ldr	r5, [pc, #576]	; (8004bd8 <_dtoa_r+0x4f0>)
 8004996:	07e3      	lsls	r3, r4, #31
 8004998:	d504      	bpl.n	80049a4 <_dtoa_r+0x2bc>
 800499a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800499e:	f7fb fdeb 	bl	8000578 <__aeabi_dmul>
 80049a2:	3601      	adds	r6, #1
 80049a4:	1064      	asrs	r4, r4, #1
 80049a6:	f105 0508 	add.w	r5, r5, #8
 80049aa:	d1f4      	bne.n	8004996 <_dtoa_r+0x2ae>
 80049ac:	e9cd 0100 	strd	r0, r1, [sp]
 80049b0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049b4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80049b8:	f7fb ff08 	bl	80007cc <__aeabi_ddiv>
 80049bc:	e9cd 0100 	strd	r0, r1, [sp]
 80049c0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80049c2:	b143      	cbz	r3, 80049d6 <_dtoa_r+0x2ee>
 80049c4:	2200      	movs	r2, #0
 80049c6:	4b85      	ldr	r3, [pc, #532]	; (8004bdc <_dtoa_r+0x4f4>)
 80049c8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049cc:	f7fc f846 	bl	8000a5c <__aeabi_dcmplt>
 80049d0:	2800      	cmp	r0, #0
 80049d2:	f040 84ff 	bne.w	80053d4 <_dtoa_r+0xcec>
 80049d6:	4630      	mov	r0, r6
 80049d8:	f7fb fd64 	bl	80004a4 <__aeabi_i2d>
 80049dc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049e0:	f7fb fdca 	bl	8000578 <__aeabi_dmul>
 80049e4:	4b7e      	ldr	r3, [pc, #504]	; (8004be0 <_dtoa_r+0x4f8>)
 80049e6:	2200      	movs	r2, #0
 80049e8:	f7fb fc10 	bl	800020c <__adddf3>
 80049ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049ee:	4606      	mov	r6, r0
 80049f0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80049f4:	2b00      	cmp	r3, #0
 80049f6:	f000 841c 	beq.w	8005232 <_dtoa_r+0xb4a>
 80049fa:	9b06      	ldr	r3, [sp, #24]
 80049fc:	9316      	str	r3, [sp, #88]	; 0x58
 80049fe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a00:	9312      	str	r3, [sp, #72]	; 0x48
 8004a02:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a06:	f7fc fb5b 	bl	80010c0 <__aeabi_d2iz>
 8004a0a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a0c:	4b71      	ldr	r3, [pc, #452]	; (8004bd4 <_dtoa_r+0x4ec>)
 8004a0e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a12:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004a16:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004a1a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004a1e:	f7fb fd41 	bl	80004a4 <__aeabi_i2d>
 8004a22:	460b      	mov	r3, r1
 8004a24:	4602      	mov	r2, r0
 8004a26:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a2a:	e9cd 6700 	strd	r6, r7, [sp]
 8004a2e:	f7fb fbeb 	bl	8000208 <__aeabi_dsub>
 8004a32:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a34:	b2ed      	uxtb	r5, r5
 8004a36:	4606      	mov	r6, r0
 8004a38:	460f      	mov	r7, r1
 8004a3a:	f10b 0401 	add.w	r4, fp, #1
 8004a3e:	2b00      	cmp	r3, #0
 8004a40:	f000 8458 	beq.w	80052f4 <_dtoa_r+0xc0c>
 8004a44:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004a48:	2000      	movs	r0, #0
 8004a4a:	4966      	ldr	r1, [pc, #408]	; (8004be4 <_dtoa_r+0x4fc>)
 8004a4c:	f7fb febe 	bl	80007cc <__aeabi_ddiv>
 8004a50:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a54:	f7fb fbd8 	bl	8000208 <__aeabi_dsub>
 8004a58:	f88b 5000 	strb.w	r5, [fp]
 8004a5c:	4632      	mov	r2, r6
 8004a5e:	463b      	mov	r3, r7
 8004a60:	e9cd 0100 	strd	r0, r1, [sp]
 8004a64:	f7fc f818 	bl	8000a98 <__aeabi_dcmpgt>
 8004a68:	2800      	cmp	r0, #0
 8004a6a:	f040 8502 	bne.w	8005472 <_dtoa_r+0xd8a>
 8004a6e:	4632      	mov	r2, r6
 8004a70:	463b      	mov	r3, r7
 8004a72:	2000      	movs	r0, #0
 8004a74:	4959      	ldr	r1, [pc, #356]	; (8004bdc <_dtoa_r+0x4f4>)
 8004a76:	f7fb fbc7 	bl	8000208 <__aeabi_dsub>
 8004a7a:	4602      	mov	r2, r0
 8004a7c:	460b      	mov	r3, r1
 8004a7e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a82:	f7fc f809 	bl	8000a98 <__aeabi_dcmpgt>
 8004a86:	2800      	cmp	r0, #0
 8004a88:	f040 84fb 	bne.w	8005482 <_dtoa_r+0xd9a>
 8004a8c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a8e:	2a01      	cmp	r2, #1
 8004a90:	d050      	beq.n	8004b34 <_dtoa_r+0x44c>
 8004a92:	445a      	add	r2, fp
 8004a94:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004a98:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004a9c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004aa0:	4692      	mov	sl, r2
 8004aa2:	46cb      	mov	fp, r9
 8004aa4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004aa8:	e00c      	b.n	8004ac4 <_dtoa_r+0x3dc>
 8004aaa:	2000      	movs	r0, #0
 8004aac:	494b      	ldr	r1, [pc, #300]	; (8004bdc <_dtoa_r+0x4f4>)
 8004aae:	f7fb fbab 	bl	8000208 <__aeabi_dsub>
 8004ab2:	4642      	mov	r2, r8
 8004ab4:	464b      	mov	r3, r9
 8004ab6:	f7fb ffd1 	bl	8000a5c <__aeabi_dcmplt>
 8004aba:	2800      	cmp	r0, #0
 8004abc:	f040 84dc 	bne.w	8005478 <_dtoa_r+0xd90>
 8004ac0:	4554      	cmp	r4, sl
 8004ac2:	d030      	beq.n	8004b26 <_dtoa_r+0x43e>
 8004ac4:	4640      	mov	r0, r8
 8004ac6:	4649      	mov	r1, r9
 8004ac8:	2200      	movs	r2, #0
 8004aca:	4b47      	ldr	r3, [pc, #284]	; (8004be8 <_dtoa_r+0x500>)
 8004acc:	f7fb fd54 	bl	8000578 <__aeabi_dmul>
 8004ad0:	2200      	movs	r2, #0
 8004ad2:	4b45      	ldr	r3, [pc, #276]	; (8004be8 <_dtoa_r+0x500>)
 8004ad4:	4680      	mov	r8, r0
 8004ad6:	4689      	mov	r9, r1
 8004ad8:	4630      	mov	r0, r6
 8004ada:	4639      	mov	r1, r7
 8004adc:	f7fb fd4c 	bl	8000578 <__aeabi_dmul>
 8004ae0:	460f      	mov	r7, r1
 8004ae2:	4606      	mov	r6, r0
 8004ae4:	f7fc faec 	bl	80010c0 <__aeabi_d2iz>
 8004ae8:	4605      	mov	r5, r0
 8004aea:	f7fb fcdb 	bl	80004a4 <__aeabi_i2d>
 8004aee:	4602      	mov	r2, r0
 8004af0:	460b      	mov	r3, r1
 8004af2:	4630      	mov	r0, r6
 8004af4:	4639      	mov	r1, r7
 8004af6:	f7fb fb87 	bl	8000208 <__aeabi_dsub>
 8004afa:	3530      	adds	r5, #48	; 0x30
 8004afc:	b2ed      	uxtb	r5, r5
 8004afe:	4642      	mov	r2, r8
 8004b00:	464b      	mov	r3, r9
 8004b02:	f804 5b01 	strb.w	r5, [r4], #1
 8004b06:	4606      	mov	r6, r0
 8004b08:	460f      	mov	r7, r1
 8004b0a:	f7fb ffa7 	bl	8000a5c <__aeabi_dcmplt>
 8004b0e:	4632      	mov	r2, r6
 8004b10:	463b      	mov	r3, r7
 8004b12:	2800      	cmp	r0, #0
 8004b14:	d0c9      	beq.n	8004aaa <_dtoa_r+0x3c2>
 8004b16:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004b18:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b1c:	9306      	str	r3, [sp, #24]
 8004b1e:	46d9      	mov	r9, fp
 8004b20:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b24:	e236      	b.n	8004f94 <_dtoa_r+0x8ac>
 8004b26:	46d9      	mov	r9, fp
 8004b28:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004b2c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b30:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b34:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004b38:	e9cd 3400 	strd	r3, r4, [sp]
 8004b3c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004b3e:	2b00      	cmp	r3, #0
 8004b40:	f2c0 80ae 	blt.w	8004ca0 <_dtoa_r+0x5b8>
 8004b44:	9a06      	ldr	r2, [sp, #24]
 8004b46:	2a0e      	cmp	r2, #14
 8004b48:	f300 80aa 	bgt.w	8004ca0 <_dtoa_r+0x5b8>
 8004b4c:	4b21      	ldr	r3, [pc, #132]	; (8004bd4 <_dtoa_r+0x4ec>)
 8004b4e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b52:	ed93 7b00 	vldr	d7, [r3]
 8004b56:	9b07      	ldr	r3, [sp, #28]
 8004b58:	2b00      	cmp	r3, #0
 8004b5a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004b5e:	f2c0 82be 	blt.w	80050de <_dtoa_r+0x9f6>
 8004b62:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b66:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b6a:	4630      	mov	r0, r6
 8004b6c:	4639      	mov	r1, r7
 8004b6e:	f7fb fe2d 	bl	80007cc <__aeabi_ddiv>
 8004b72:	f7fc faa5 	bl	80010c0 <__aeabi_d2iz>
 8004b76:	4605      	mov	r5, r0
 8004b78:	f7fb fc94 	bl	80004a4 <__aeabi_i2d>
 8004b7c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b80:	f7fb fcfa 	bl	8000578 <__aeabi_dmul>
 8004b84:	460b      	mov	r3, r1
 8004b86:	4602      	mov	r2, r0
 8004b88:	4639      	mov	r1, r7
 8004b8a:	4630      	mov	r0, r6
 8004b8c:	f7fb fb3c 	bl	8000208 <__aeabi_dsub>
 8004b90:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004b94:	f88b 3000 	strb.w	r3, [fp]
 8004b98:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b9a:	2b01      	cmp	r3, #1
 8004b9c:	4606      	mov	r6, r0
 8004b9e:	460f      	mov	r7, r1
 8004ba0:	f10b 0401 	add.w	r4, fp, #1
 8004ba4:	d053      	beq.n	8004c4e <_dtoa_r+0x566>
 8004ba6:	2200      	movs	r2, #0
 8004ba8:	4b0f      	ldr	r3, [pc, #60]	; (8004be8 <_dtoa_r+0x500>)
 8004baa:	f7fb fce5 	bl	8000578 <__aeabi_dmul>
 8004bae:	2200      	movs	r2, #0
 8004bb0:	2300      	movs	r3, #0
 8004bb2:	4606      	mov	r6, r0
 8004bb4:	460f      	mov	r7, r1
 8004bb6:	f7fb ff47 	bl	8000a48 <__aeabi_dcmpeq>
 8004bba:	2800      	cmp	r0, #0
 8004bbc:	f040 81ea 	bne.w	8004f94 <_dtoa_r+0x8ac>
 8004bc0:	f8cd a000 	str.w	sl, [sp]
 8004bc4:	f8cd 901c 	str.w	r9, [sp, #28]
 8004bc8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004bcc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004bd0:	e017      	b.n	8004c02 <_dtoa_r+0x51a>
 8004bd2:	bf00      	nop
 8004bd4:	08007778 	.word	0x08007778
 8004bd8:	08007750 	.word	0x08007750
 8004bdc:	3ff00000 	.word	0x3ff00000
 8004be0:	401c0000 	.word	0x401c0000
 8004be4:	3fe00000 	.word	0x3fe00000
 8004be8:	40240000 	.word	0x40240000
 8004bec:	f7fb fcc4 	bl	8000578 <__aeabi_dmul>
 8004bf0:	2200      	movs	r2, #0
 8004bf2:	2300      	movs	r3, #0
 8004bf4:	4606      	mov	r6, r0
 8004bf6:	460f      	mov	r7, r1
 8004bf8:	f7fb ff26 	bl	8000a48 <__aeabi_dcmpeq>
 8004bfc:	2800      	cmp	r0, #0
 8004bfe:	f040 833d 	bne.w	800527c <_dtoa_r+0xb94>
 8004c02:	464a      	mov	r2, r9
 8004c04:	4653      	mov	r3, sl
 8004c06:	4630      	mov	r0, r6
 8004c08:	4639      	mov	r1, r7
 8004c0a:	f7fb fddf 	bl	80007cc <__aeabi_ddiv>
 8004c0e:	f7fc fa57 	bl	80010c0 <__aeabi_d2iz>
 8004c12:	4605      	mov	r5, r0
 8004c14:	f7fb fc46 	bl	80004a4 <__aeabi_i2d>
 8004c18:	464a      	mov	r2, r9
 8004c1a:	4653      	mov	r3, sl
 8004c1c:	f7fb fcac 	bl	8000578 <__aeabi_dmul>
 8004c20:	4602      	mov	r2, r0
 8004c22:	460b      	mov	r3, r1
 8004c24:	4630      	mov	r0, r6
 8004c26:	4639      	mov	r1, r7
 8004c28:	f7fb faee 	bl	8000208 <__aeabi_dsub>
 8004c2c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004c30:	f804 cb01 	strb.w	ip, [r4], #1
 8004c34:	eba4 0c0b 	sub.w	ip, r4, fp
 8004c38:	45e0      	cmp	r8, ip
 8004c3a:	4606      	mov	r6, r0
 8004c3c:	460f      	mov	r7, r1
 8004c3e:	f04f 0200 	mov.w	r2, #0
 8004c42:	4bc1      	ldr	r3, [pc, #772]	; (8004f48 <_dtoa_r+0x860>)
 8004c44:	d1d2      	bne.n	8004bec <_dtoa_r+0x504>
 8004c46:	f8dd a000 	ldr.w	sl, [sp]
 8004c4a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c4e:	4632      	mov	r2, r6
 8004c50:	463b      	mov	r3, r7
 8004c52:	4630      	mov	r0, r6
 8004c54:	4639      	mov	r1, r7
 8004c56:	f7fb fad9 	bl	800020c <__adddf3>
 8004c5a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c5e:	4606      	mov	r6, r0
 8004c60:	460f      	mov	r7, r1
 8004c62:	f7fb ff19 	bl	8000a98 <__aeabi_dcmpgt>
 8004c66:	b958      	cbnz	r0, 8004c80 <_dtoa_r+0x598>
 8004c68:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c6c:	4630      	mov	r0, r6
 8004c6e:	4639      	mov	r1, r7
 8004c70:	f7fb feea 	bl	8000a48 <__aeabi_dcmpeq>
 8004c74:	2800      	cmp	r0, #0
 8004c76:	f000 818d 	beq.w	8004f94 <_dtoa_r+0x8ac>
 8004c7a:	07e9      	lsls	r1, r5, #31
 8004c7c:	f140 818a 	bpl.w	8004f94 <_dtoa_r+0x8ac>
 8004c80:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c84:	e005      	b.n	8004c92 <_dtoa_r+0x5aa>
 8004c86:	459b      	cmp	fp, r3
 8004c88:	f000 8373 	beq.w	8005372 <_dtoa_r+0xc8a>
 8004c8c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004c90:	461c      	mov	r4, r3
 8004c92:	2d39      	cmp	r5, #57	; 0x39
 8004c94:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c98:	d0f5      	beq.n	8004c86 <_dtoa_r+0x59e>
 8004c9a:	3501      	adds	r5, #1
 8004c9c:	701d      	strb	r5, [r3, #0]
 8004c9e:	e179      	b.n	8004f94 <_dtoa_r+0x8ac>
 8004ca0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ca2:	2a00      	cmp	r2, #0
 8004ca4:	d03b      	beq.n	8004d1e <_dtoa_r+0x636>
 8004ca6:	9a02      	ldr	r2, [sp, #8]
 8004ca8:	2a01      	cmp	r2, #1
 8004caa:	f340 820b 	ble.w	80050c4 <_dtoa_r+0x9dc>
 8004cae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cb0:	1e5f      	subs	r7, r3, #1
 8004cb2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cb4:	42bb      	cmp	r3, r7
 8004cb6:	f2c0 82e6 	blt.w	8005286 <_dtoa_r+0xb9e>
 8004cba:	1bdf      	subs	r7, r3, r7
 8004cbc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cbe:	2b00      	cmp	r3, #0
 8004cc0:	f2c0 830b 	blt.w	80052da <_dtoa_r+0xbf2>
 8004cc4:	9a08      	ldr	r2, [sp, #32]
 8004cc6:	4614      	mov	r4, r2
 8004cc8:	441a      	add	r2, r3
 8004cca:	4498      	add	r8, r3
 8004ccc:	9208      	str	r2, [sp, #32]
 8004cce:	2101      	movs	r1, #1
 8004cd0:	4648      	mov	r0, r9
 8004cd2:	f001 fcbf 	bl	8006654 <__i2b>
 8004cd6:	4605      	mov	r5, r0
 8004cd8:	e024      	b.n	8004d24 <_dtoa_r+0x63c>
 8004cda:	2301      	movs	r3, #1
 8004cdc:	930d      	str	r3, [sp, #52]	; 0x34
 8004cde:	e5af      	b.n	8004840 <_dtoa_r+0x158>
 8004ce0:	9a08      	ldr	r2, [sp, #32]
 8004ce2:	9b06      	ldr	r3, [sp, #24]
 8004ce4:	1ad2      	subs	r2, r2, r3
 8004ce6:	425b      	negs	r3, r3
 8004ce8:	930b      	str	r3, [sp, #44]	; 0x2c
 8004cea:	2300      	movs	r3, #0
 8004cec:	9208      	str	r2, [sp, #32]
 8004cee:	930c      	str	r3, [sp, #48]	; 0x30
 8004cf0:	e5b5      	b.n	800485e <_dtoa_r+0x176>
 8004cf2:	f1c4 0301 	rsb	r3, r4, #1
 8004cf6:	9308      	str	r3, [sp, #32]
 8004cf8:	f04f 0800 	mov.w	r8, #0
 8004cfc:	e5a7      	b.n	800484e <_dtoa_r+0x166>
 8004cfe:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d02:	4640      	mov	r0, r8
 8004d04:	f7fb fbce 	bl	80004a4 <__aeabi_i2d>
 8004d08:	4632      	mov	r2, r6
 8004d0a:	463b      	mov	r3, r7
 8004d0c:	f7fb fe9c 	bl	8000a48 <__aeabi_dcmpeq>
 8004d10:	2800      	cmp	r0, #0
 8004d12:	f47f ad81 	bne.w	8004818 <_dtoa_r+0x130>
 8004d16:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004d1a:	9306      	str	r3, [sp, #24]
 8004d1c:	e57c      	b.n	8004818 <_dtoa_r+0x130>
 8004d1e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d20:	9c08      	ldr	r4, [sp, #32]
 8004d22:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004d24:	2c00      	cmp	r4, #0
 8004d26:	dd0c      	ble.n	8004d42 <_dtoa_r+0x65a>
 8004d28:	f1b8 0f00 	cmp.w	r8, #0
 8004d2c:	dd09      	ble.n	8004d42 <_dtoa_r+0x65a>
 8004d2e:	4544      	cmp	r4, r8
 8004d30:	9a08      	ldr	r2, [sp, #32]
 8004d32:	4623      	mov	r3, r4
 8004d34:	bfa8      	it	ge
 8004d36:	4643      	movge	r3, r8
 8004d38:	1ad2      	subs	r2, r2, r3
 8004d3a:	9208      	str	r2, [sp, #32]
 8004d3c:	1ae4      	subs	r4, r4, r3
 8004d3e:	eba8 0803 	sub.w	r8, r8, r3
 8004d42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d44:	b16b      	cbz	r3, 8004d62 <_dtoa_r+0x67a>
 8004d46:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d48:	2a00      	cmp	r2, #0
 8004d4a:	f000 8290 	beq.w	800526e <_dtoa_r+0xb86>
 8004d4e:	1bde      	subs	r6, r3, r7
 8004d50:	2f00      	cmp	r7, #0
 8004d52:	f040 819b 	bne.w	800508c <_dtoa_r+0x9a4>
 8004d56:	4651      	mov	r1, sl
 8004d58:	4632      	mov	r2, r6
 8004d5a:	4648      	mov	r0, r9
 8004d5c:	f001 fd2a 	bl	80067b4 <__pow5mult>
 8004d60:	4682      	mov	sl, r0
 8004d62:	2101      	movs	r1, #1
 8004d64:	4648      	mov	r0, r9
 8004d66:	f001 fc75 	bl	8006654 <__i2b>
 8004d6a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d6c:	4606      	mov	r6, r0
 8004d6e:	2a00      	cmp	r2, #0
 8004d70:	f040 8125 	bne.w	8004fbe <_dtoa_r+0x8d6>
 8004d74:	9b02      	ldr	r3, [sp, #8]
 8004d76:	2b01      	cmp	r3, #1
 8004d78:	f340 816c 	ble.w	8005054 <_dtoa_r+0x96c>
 8004d7c:	2001      	movs	r0, #1
 8004d7e:	4440      	add	r0, r8
 8004d80:	f010 001f 	ands.w	r0, r0, #31
 8004d84:	f000 8119 	beq.w	8004fba <_dtoa_r+0x8d2>
 8004d88:	f1c0 0320 	rsb	r3, r0, #32
 8004d8c:	2b04      	cmp	r3, #4
 8004d8e:	f340 83ac 	ble.w	80054ea <_dtoa_r+0xe02>
 8004d92:	f1c0 001c 	rsb	r0, r0, #28
 8004d96:	9b08      	ldr	r3, [sp, #32]
 8004d98:	4403      	add	r3, r0
 8004d9a:	9308      	str	r3, [sp, #32]
 8004d9c:	4404      	add	r4, r0
 8004d9e:	4480      	add	r8, r0
 8004da0:	9b08      	ldr	r3, [sp, #32]
 8004da2:	2b00      	cmp	r3, #0
 8004da4:	dd05      	ble.n	8004db2 <_dtoa_r+0x6ca>
 8004da6:	4651      	mov	r1, sl
 8004da8:	461a      	mov	r2, r3
 8004daa:	4648      	mov	r0, r9
 8004dac:	f001 fd52 	bl	8006854 <__lshift>
 8004db0:	4682      	mov	sl, r0
 8004db2:	f1b8 0f00 	cmp.w	r8, #0
 8004db6:	dd05      	ble.n	8004dc4 <_dtoa_r+0x6dc>
 8004db8:	4631      	mov	r1, r6
 8004dba:	4642      	mov	r2, r8
 8004dbc:	4648      	mov	r0, r9
 8004dbe:	f001 fd49 	bl	8006854 <__lshift>
 8004dc2:	4606      	mov	r6, r0
 8004dc4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004dc6:	2b00      	cmp	r3, #0
 8004dc8:	d177      	bne.n	8004eba <_dtoa_r+0x7d2>
 8004dca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dcc:	2b00      	cmp	r3, #0
 8004dce:	f340 8209 	ble.w	80051e4 <_dtoa_r+0xafc>
 8004dd2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004dd4:	2b00      	cmp	r3, #0
 8004dd6:	f000 8089 	beq.w	8004eec <_dtoa_r+0x804>
 8004dda:	2c00      	cmp	r4, #0
 8004ddc:	f300 816b 	bgt.w	80050b6 <_dtoa_r+0x9ce>
 8004de0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004de2:	2b00      	cmp	r3, #0
 8004de4:	f040 81cd 	bne.w	8005182 <_dtoa_r+0xa9a>
 8004de8:	46a8      	mov	r8, r5
 8004dea:	9a00      	ldr	r2, [sp, #0]
 8004dec:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004df0:	f002 0201 	and.w	r2, r2, #1
 8004df4:	920a      	str	r2, [sp, #40]	; 0x28
 8004df6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004df8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004dfc:	441a      	add	r2, r3
 8004dfe:	465f      	mov	r7, fp
 8004e00:	9209      	str	r2, [sp, #36]	; 0x24
 8004e02:	46b3      	mov	fp, r6
 8004e04:	4659      	mov	r1, fp
 8004e06:	4650      	mov	r0, sl
 8004e08:	f7ff fbdc 	bl	80045c4 <quorem>
 8004e0c:	4629      	mov	r1, r5
 8004e0e:	4604      	mov	r4, r0
 8004e10:	4650      	mov	r0, sl
 8004e12:	f001 fd75 	bl	8006900 <__mcmp>
 8004e16:	4659      	mov	r1, fp
 8004e18:	4606      	mov	r6, r0
 8004e1a:	4642      	mov	r2, r8
 8004e1c:	4648      	mov	r0, r9
 8004e1e:	f001 fd8b 	bl	8006938 <__mdiff>
 8004e22:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004e26:	9300      	str	r3, [sp, #0]
 8004e28:	68c3      	ldr	r3, [r0, #12]
 8004e2a:	4601      	mov	r1, r0
 8004e2c:	2b00      	cmp	r3, #0
 8004e2e:	f040 81d4 	bne.w	80051da <_dtoa_r+0xaf2>
 8004e32:	9008      	str	r0, [sp, #32]
 8004e34:	4650      	mov	r0, sl
 8004e36:	f001 fd63 	bl	8006900 <__mcmp>
 8004e3a:	9a08      	ldr	r2, [sp, #32]
 8004e3c:	9007      	str	r0, [sp, #28]
 8004e3e:	4611      	mov	r1, r2
 8004e40:	4648      	mov	r0, r9
 8004e42:	f001 fb6d 	bl	8006520 <_Bfree>
 8004e46:	9b07      	ldr	r3, [sp, #28]
 8004e48:	b933      	cbnz	r3, 8004e58 <_dtoa_r+0x770>
 8004e4a:	9a02      	ldr	r2, [sp, #8]
 8004e4c:	b922      	cbnz	r2, 8004e58 <_dtoa_r+0x770>
 8004e4e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e50:	2b00      	cmp	r3, #0
 8004e52:	f000 8319 	beq.w	8005488 <_dtoa_r+0xda0>
 8004e56:	9b02      	ldr	r3, [sp, #8]
 8004e58:	2e00      	cmp	r6, #0
 8004e5a:	f2c0 821c 	blt.w	8005296 <_dtoa_r+0xbae>
 8004e5e:	d105      	bne.n	8004e6c <_dtoa_r+0x784>
 8004e60:	9a02      	ldr	r2, [sp, #8]
 8004e62:	b91a      	cbnz	r2, 8004e6c <_dtoa_r+0x784>
 8004e64:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004e66:	2a00      	cmp	r2, #0
 8004e68:	f000 8215 	beq.w	8005296 <_dtoa_r+0xbae>
 8004e6c:	2b00      	cmp	r3, #0
 8004e6e:	f107 0401 	add.w	r4, r7, #1
 8004e72:	f300 8225 	bgt.w	80052c0 <_dtoa_r+0xbd8>
 8004e76:	9b00      	ldr	r3, [sp, #0]
 8004e78:	703b      	strb	r3, [r7, #0]
 8004e7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e7c:	42bb      	cmp	r3, r7
 8004e7e:	f000 8230 	beq.w	80052e2 <_dtoa_r+0xbfa>
 8004e82:	4651      	mov	r1, sl
 8004e84:	2300      	movs	r3, #0
 8004e86:	220a      	movs	r2, #10
 8004e88:	4648      	mov	r0, r9
 8004e8a:	f001 fb53 	bl	8006534 <__multadd>
 8004e8e:	4545      	cmp	r5, r8
 8004e90:	4682      	mov	sl, r0
 8004e92:	4629      	mov	r1, r5
 8004e94:	f04f 0300 	mov.w	r3, #0
 8004e98:	f04f 020a 	mov.w	r2, #10
 8004e9c:	4648      	mov	r0, r9
 8004e9e:	f000 8196 	beq.w	80051ce <_dtoa_r+0xae6>
 8004ea2:	f001 fb47 	bl	8006534 <__multadd>
 8004ea6:	4641      	mov	r1, r8
 8004ea8:	4605      	mov	r5, r0
 8004eaa:	2300      	movs	r3, #0
 8004eac:	220a      	movs	r2, #10
 8004eae:	4648      	mov	r0, r9
 8004eb0:	f001 fb40 	bl	8006534 <__multadd>
 8004eb4:	4627      	mov	r7, r4
 8004eb6:	4680      	mov	r8, r0
 8004eb8:	e7a4      	b.n	8004e04 <_dtoa_r+0x71c>
 8004eba:	4631      	mov	r1, r6
 8004ebc:	4650      	mov	r0, sl
 8004ebe:	f001 fd1f 	bl	8006900 <__mcmp>
 8004ec2:	2800      	cmp	r0, #0
 8004ec4:	da81      	bge.n	8004dca <_dtoa_r+0x6e2>
 8004ec6:	9f06      	ldr	r7, [sp, #24]
 8004ec8:	4651      	mov	r1, sl
 8004eca:	2300      	movs	r3, #0
 8004ecc:	220a      	movs	r2, #10
 8004ece:	4648      	mov	r0, r9
 8004ed0:	3f01      	subs	r7, #1
 8004ed2:	9706      	str	r7, [sp, #24]
 8004ed4:	f001 fb2e 	bl	8006534 <__multadd>
 8004ed8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004eda:	4682      	mov	sl, r0
 8004edc:	2b00      	cmp	r3, #0
 8004ede:	f040 82eb 	bne.w	80054b8 <_dtoa_r+0xdd0>
 8004ee2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	f340 82f3 	ble.w	80054d0 <_dtoa_r+0xde8>
 8004eea:	9309      	str	r3, [sp, #36]	; 0x24
 8004eec:	465c      	mov	r4, fp
 8004eee:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004ef2:	e002      	b.n	8004efa <_dtoa_r+0x812>
 8004ef4:	f001 fb1e 	bl	8006534 <__multadd>
 8004ef8:	4682      	mov	sl, r0
 8004efa:	4631      	mov	r1, r6
 8004efc:	4650      	mov	r0, sl
 8004efe:	f7ff fb61 	bl	80045c4 <quorem>
 8004f02:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f06:	f804 7b01 	strb.w	r7, [r4], #1
 8004f0a:	eba4 030b 	sub.w	r3, r4, fp
 8004f0e:	4598      	cmp	r8, r3
 8004f10:	f04f 020a 	mov.w	r2, #10
 8004f14:	f04f 0300 	mov.w	r3, #0
 8004f18:	4651      	mov	r1, sl
 8004f1a:	4648      	mov	r0, r9
 8004f1c:	dcea      	bgt.n	8004ef4 <_dtoa_r+0x80c>
 8004f1e:	2300      	movs	r3, #0
 8004f20:	9700      	str	r7, [sp, #0]
 8004f22:	9302      	str	r3, [sp, #8]
 8004f24:	4651      	mov	r1, sl
 8004f26:	2201      	movs	r2, #1
 8004f28:	4648      	mov	r0, r9
 8004f2a:	f001 fc93 	bl	8006854 <__lshift>
 8004f2e:	4631      	mov	r1, r6
 8004f30:	4682      	mov	sl, r0
 8004f32:	f001 fce5 	bl	8006900 <__mcmp>
 8004f36:	2800      	cmp	r0, #0
 8004f38:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004f3c:	dc14      	bgt.n	8004f68 <_dtoa_r+0x880>
 8004f3e:	d108      	bne.n	8004f52 <_dtoa_r+0x86a>
 8004f40:	9b00      	ldr	r3, [sp, #0]
 8004f42:	07db      	lsls	r3, r3, #31
 8004f44:	d410      	bmi.n	8004f68 <_dtoa_r+0x880>
 8004f46:	e004      	b.n	8004f52 <_dtoa_r+0x86a>
 8004f48:	40240000 	.word	0x40240000
 8004f4c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004f50:	461c      	mov	r4, r3
 8004f52:	2a30      	cmp	r2, #48	; 0x30
 8004f54:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f58:	d0f8      	beq.n	8004f4c <_dtoa_r+0x864>
 8004f5a:	e00b      	b.n	8004f74 <_dtoa_r+0x88c>
 8004f5c:	459b      	cmp	fp, r3
 8004f5e:	f000 814e 	beq.w	80051fe <_dtoa_r+0xb16>
 8004f62:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004f66:	461c      	mov	r4, r3
 8004f68:	2a39      	cmp	r2, #57	; 0x39
 8004f6a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f6e:	d0f5      	beq.n	8004f5c <_dtoa_r+0x874>
 8004f70:	3201      	adds	r2, #1
 8004f72:	701a      	strb	r2, [r3, #0]
 8004f74:	4631      	mov	r1, r6
 8004f76:	4648      	mov	r0, r9
 8004f78:	f001 fad2 	bl	8006520 <_Bfree>
 8004f7c:	b155      	cbz	r5, 8004f94 <_dtoa_r+0x8ac>
 8004f7e:	9902      	ldr	r1, [sp, #8]
 8004f80:	b121      	cbz	r1, 8004f8c <_dtoa_r+0x8a4>
 8004f82:	42a9      	cmp	r1, r5
 8004f84:	d002      	beq.n	8004f8c <_dtoa_r+0x8a4>
 8004f86:	4648      	mov	r0, r9
 8004f88:	f001 faca 	bl	8006520 <_Bfree>
 8004f8c:	4629      	mov	r1, r5
 8004f8e:	4648      	mov	r0, r9
 8004f90:	f001 fac6 	bl	8006520 <_Bfree>
 8004f94:	4651      	mov	r1, sl
 8004f96:	4648      	mov	r0, r9
 8004f98:	f001 fac2 	bl	8006520 <_Bfree>
 8004f9c:	2200      	movs	r2, #0
 8004f9e:	9b06      	ldr	r3, [sp, #24]
 8004fa0:	7022      	strb	r2, [r4, #0]
 8004fa2:	9a05      	ldr	r2, [sp, #20]
 8004fa4:	3301      	adds	r3, #1
 8004fa6:	6013      	str	r3, [r2, #0]
 8004fa8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004faa:	2b00      	cmp	r3, #0
 8004fac:	f43f abdb 	beq.w	8004766 <_dtoa_r+0x7e>
 8004fb0:	4658      	mov	r0, fp
 8004fb2:	601c      	str	r4, [r3, #0]
 8004fb4:	b01b      	add	sp, #108	; 0x6c
 8004fb6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004fba:	201c      	movs	r0, #28
 8004fbc:	e6eb      	b.n	8004d96 <_dtoa_r+0x6ae>
 8004fbe:	4601      	mov	r1, r0
 8004fc0:	4648      	mov	r0, r9
 8004fc2:	f001 fbf7 	bl	80067b4 <__pow5mult>
 8004fc6:	9b02      	ldr	r3, [sp, #8]
 8004fc8:	2b01      	cmp	r3, #1
 8004fca:	4606      	mov	r6, r0
 8004fcc:	f340 80d4 	ble.w	8005178 <_dtoa_r+0xa90>
 8004fd0:	2300      	movs	r3, #0
 8004fd2:	930c      	str	r3, [sp, #48]	; 0x30
 8004fd4:	6933      	ldr	r3, [r6, #16]
 8004fd6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004fda:	6918      	ldr	r0, [r3, #16]
 8004fdc:	f001 faea 	bl	80065b4 <__hi0bits>
 8004fe0:	f1c0 0020 	rsb	r0, r0, #32
 8004fe4:	e6cb      	b.n	8004d7e <_dtoa_r+0x696>
 8004fe6:	900d      	str	r0, [sp, #52]	; 0x34
 8004fe8:	e42a      	b.n	8004840 <_dtoa_r+0x158>
 8004fea:	2501      	movs	r5, #1
 8004fec:	e440      	b.n	8004870 <_dtoa_r+0x188>
 8004fee:	f1c3 0820 	rsb	r8, r3, #32
 8004ff2:	9b00      	ldr	r3, [sp, #0]
 8004ff4:	fa03 f008 	lsl.w	r0, r3, r8
 8004ff8:	f7ff bbd8 	b.w	80047ac <_dtoa_r+0xc4>
 8004ffc:	2300      	movs	r3, #0
 8004ffe:	930a      	str	r3, [sp, #40]	; 0x28
 8005000:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005004:	4413      	add	r3, r2
 8005006:	930e      	str	r3, [sp, #56]	; 0x38
 8005008:	3301      	adds	r3, #1
 800500a:	2b01      	cmp	r3, #1
 800500c:	461e      	mov	r6, r3
 800500e:	9309      	str	r3, [sp, #36]	; 0x24
 8005010:	bfb8      	it	lt
 8005012:	2601      	movlt	r6, #1
 8005014:	2100      	movs	r1, #0
 8005016:	2e17      	cmp	r6, #23
 8005018:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800501c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800501e:	f77f ac89 	ble.w	8004934 <_dtoa_r+0x24c>
 8005022:	2201      	movs	r2, #1
 8005024:	2304      	movs	r3, #4
 8005026:	005b      	lsls	r3, r3, #1
 8005028:	f103 0014 	add.w	r0, r3, #20
 800502c:	42b0      	cmp	r0, r6
 800502e:	4611      	mov	r1, r2
 8005030:	f102 0201 	add.w	r2, r2, #1
 8005034:	d9f7      	bls.n	8005026 <_dtoa_r+0x93e>
 8005036:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800503a:	e47b      	b.n	8004934 <_dtoa_r+0x24c>
 800503c:	2300      	movs	r3, #0
 800503e:	930a      	str	r3, [sp, #40]	; 0x28
 8005040:	9e07      	ldr	r6, [sp, #28]
 8005042:	2e00      	cmp	r6, #0
 8005044:	f340 80e2 	ble.w	800520c <_dtoa_r+0xb24>
 8005048:	960e      	str	r6, [sp, #56]	; 0x38
 800504a:	9609      	str	r6, [sp, #36]	; 0x24
 800504c:	e7e2      	b.n	8005014 <_dtoa_r+0x92c>
 800504e:	2301      	movs	r3, #1
 8005050:	930a      	str	r3, [sp, #40]	; 0x28
 8005052:	e7f5      	b.n	8005040 <_dtoa_r+0x958>
 8005054:	9b00      	ldr	r3, [sp, #0]
 8005056:	2b00      	cmp	r3, #0
 8005058:	f47f ae90 	bne.w	8004d7c <_dtoa_r+0x694>
 800505c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005060:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005064:	2b00      	cmp	r3, #0
 8005066:	f040 8192 	bne.w	800538e <_dtoa_r+0xca6>
 800506a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800506e:	0d1b      	lsrs	r3, r3, #20
 8005070:	051b      	lsls	r3, r3, #20
 8005072:	b12b      	cbz	r3, 8005080 <_dtoa_r+0x998>
 8005074:	9b08      	ldr	r3, [sp, #32]
 8005076:	3301      	adds	r3, #1
 8005078:	9308      	str	r3, [sp, #32]
 800507a:	f108 0801 	add.w	r8, r8, #1
 800507e:	2301      	movs	r3, #1
 8005080:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005082:	930c      	str	r3, [sp, #48]	; 0x30
 8005084:	2a00      	cmp	r2, #0
 8005086:	f43f ae79 	beq.w	8004d7c <_dtoa_r+0x694>
 800508a:	e7a3      	b.n	8004fd4 <_dtoa_r+0x8ec>
 800508c:	463a      	mov	r2, r7
 800508e:	4629      	mov	r1, r5
 8005090:	4648      	mov	r0, r9
 8005092:	f001 fb8f 	bl	80067b4 <__pow5mult>
 8005096:	4652      	mov	r2, sl
 8005098:	4601      	mov	r1, r0
 800509a:	4605      	mov	r5, r0
 800509c:	4648      	mov	r0, r9
 800509e:	f001 fae3 	bl	8006668 <__multiply>
 80050a2:	4651      	mov	r1, sl
 80050a4:	4607      	mov	r7, r0
 80050a6:	4648      	mov	r0, r9
 80050a8:	f001 fa3a 	bl	8006520 <_Bfree>
 80050ac:	46ba      	mov	sl, r7
 80050ae:	2e00      	cmp	r6, #0
 80050b0:	f43f ae57 	beq.w	8004d62 <_dtoa_r+0x67a>
 80050b4:	e64f      	b.n	8004d56 <_dtoa_r+0x66e>
 80050b6:	4629      	mov	r1, r5
 80050b8:	4622      	mov	r2, r4
 80050ba:	4648      	mov	r0, r9
 80050bc:	f001 fbca 	bl	8006854 <__lshift>
 80050c0:	4605      	mov	r5, r0
 80050c2:	e68d      	b.n	8004de0 <_dtoa_r+0x6f8>
 80050c4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80050c6:	2a00      	cmp	r2, #0
 80050c8:	f000 815d 	beq.w	8005386 <_dtoa_r+0xc9e>
 80050cc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80050d0:	9a08      	ldr	r2, [sp, #32]
 80050d2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80050d4:	4614      	mov	r4, r2
 80050d6:	441a      	add	r2, r3
 80050d8:	4498      	add	r8, r3
 80050da:	9208      	str	r2, [sp, #32]
 80050dc:	e5f7      	b.n	8004cce <_dtoa_r+0x5e6>
 80050de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050e0:	2b00      	cmp	r3, #0
 80050e2:	f73f ad3e 	bgt.w	8004b62 <_dtoa_r+0x47a>
 80050e6:	f040 80bc 	bne.w	8005262 <_dtoa_r+0xb7a>
 80050ea:	ec51 0b17 	vmov	r0, r1, d7
 80050ee:	2200      	movs	r2, #0
 80050f0:	4bb2      	ldr	r3, [pc, #712]	; (80053bc <_dtoa_r+0xcd4>)
 80050f2:	f7fb fa41 	bl	8000578 <__aeabi_dmul>
 80050f6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050fa:	f7fb fcc3 	bl	8000a84 <__aeabi_dcmpge>
 80050fe:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005100:	4635      	mov	r5, r6
 8005102:	2800      	cmp	r0, #0
 8005104:	d176      	bne.n	80051f4 <_dtoa_r+0xb0c>
 8005106:	9a06      	ldr	r2, [sp, #24]
 8005108:	2331      	movs	r3, #49	; 0x31
 800510a:	3201      	adds	r2, #1
 800510c:	9206      	str	r2, [sp, #24]
 800510e:	f88b 3000 	strb.w	r3, [fp]
 8005112:	f10b 0401 	add.w	r4, fp, #1
 8005116:	4631      	mov	r1, r6
 8005118:	4648      	mov	r0, r9
 800511a:	f001 fa01 	bl	8006520 <_Bfree>
 800511e:	2d00      	cmp	r5, #0
 8005120:	f47f af34 	bne.w	8004f8c <_dtoa_r+0x8a4>
 8005124:	e736      	b.n	8004f94 <_dtoa_r+0x8ac>
 8005126:	f000 8142 	beq.w	80053ae <_dtoa_r+0xcc6>
 800512a:	9b06      	ldr	r3, [sp, #24]
 800512c:	425c      	negs	r4, r3
 800512e:	4ba4      	ldr	r3, [pc, #656]	; (80053c0 <_dtoa_r+0xcd8>)
 8005130:	f004 020f 	and.w	r2, r4, #15
 8005134:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005138:	e9d3 2300 	ldrd	r2, r3, [r3]
 800513c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005140:	f7fb fa1a 	bl	8000578 <__aeabi_dmul>
 8005144:	1124      	asrs	r4, r4, #4
 8005146:	e9cd 0100 	strd	r0, r1, [sp]
 800514a:	f000 81c6 	beq.w	80054da <_dtoa_r+0xdf2>
 800514e:	4d9d      	ldr	r5, [pc, #628]	; (80053c4 <_dtoa_r+0xcdc>)
 8005150:	2300      	movs	r3, #0
 8005152:	2602      	movs	r6, #2
 8005154:	07e7      	lsls	r7, r4, #31
 8005156:	d505      	bpl.n	8005164 <_dtoa_r+0xa7c>
 8005158:	e9d5 2300 	ldrd	r2, r3, [r5]
 800515c:	f7fb fa0c 	bl	8000578 <__aeabi_dmul>
 8005160:	3601      	adds	r6, #1
 8005162:	2301      	movs	r3, #1
 8005164:	1064      	asrs	r4, r4, #1
 8005166:	f105 0508 	add.w	r5, r5, #8
 800516a:	d1f3      	bne.n	8005154 <_dtoa_r+0xa6c>
 800516c:	2b00      	cmp	r3, #0
 800516e:	f43f ac27 	beq.w	80049c0 <_dtoa_r+0x2d8>
 8005172:	e9cd 0100 	strd	r0, r1, [sp]
 8005176:	e423      	b.n	80049c0 <_dtoa_r+0x2d8>
 8005178:	9b00      	ldr	r3, [sp, #0]
 800517a:	2b00      	cmp	r3, #0
 800517c:	f43f af6e 	beq.w	800505c <_dtoa_r+0x974>
 8005180:	e726      	b.n	8004fd0 <_dtoa_r+0x8e8>
 8005182:	6869      	ldr	r1, [r5, #4]
 8005184:	4648      	mov	r0, r9
 8005186:	f001 f9a5 	bl	80064d4 <_Balloc>
 800518a:	692b      	ldr	r3, [r5, #16]
 800518c:	3302      	adds	r3, #2
 800518e:	009a      	lsls	r2, r3, #2
 8005190:	4604      	mov	r4, r0
 8005192:	f105 010c 	add.w	r1, r5, #12
 8005196:	300c      	adds	r0, #12
 8005198:	f7fb fe1e 	bl	8000dd8 <memcpy>
 800519c:	4621      	mov	r1, r4
 800519e:	2201      	movs	r2, #1
 80051a0:	4648      	mov	r0, r9
 80051a2:	f001 fb57 	bl	8006854 <__lshift>
 80051a6:	4680      	mov	r8, r0
 80051a8:	e61f      	b.n	8004dea <_dtoa_r+0x702>
 80051aa:	2400      	movs	r4, #0
 80051ac:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80051b0:	4621      	mov	r1, r4
 80051b2:	4648      	mov	r0, r9
 80051b4:	f001 f98e 	bl	80064d4 <_Balloc>
 80051b8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80051bc:	930e      	str	r3, [sp, #56]	; 0x38
 80051be:	9309      	str	r3, [sp, #36]	; 0x24
 80051c0:	2301      	movs	r3, #1
 80051c2:	4683      	mov	fp, r0
 80051c4:	9407      	str	r4, [sp, #28]
 80051c6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80051ca:	930a      	str	r3, [sp, #40]	; 0x28
 80051cc:	e4b6      	b.n	8004b3c <_dtoa_r+0x454>
 80051ce:	f001 f9b1 	bl	8006534 <__multadd>
 80051d2:	4627      	mov	r7, r4
 80051d4:	4605      	mov	r5, r0
 80051d6:	4680      	mov	r8, r0
 80051d8:	e614      	b.n	8004e04 <_dtoa_r+0x71c>
 80051da:	4648      	mov	r0, r9
 80051dc:	f001 f9a0 	bl	8006520 <_Bfree>
 80051e0:	2301      	movs	r3, #1
 80051e2:	e639      	b.n	8004e58 <_dtoa_r+0x770>
 80051e4:	9b02      	ldr	r3, [sp, #8]
 80051e6:	2b02      	cmp	r3, #2
 80051e8:	f77f adf3 	ble.w	8004dd2 <_dtoa_r+0x6ea>
 80051ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051ee:	2b00      	cmp	r3, #0
 80051f0:	f000 80cf 	beq.w	8005392 <_dtoa_r+0xcaa>
 80051f4:	9b07      	ldr	r3, [sp, #28]
 80051f6:	43db      	mvns	r3, r3
 80051f8:	9306      	str	r3, [sp, #24]
 80051fa:	465c      	mov	r4, fp
 80051fc:	e78b      	b.n	8005116 <_dtoa_r+0xa2e>
 80051fe:	9a06      	ldr	r2, [sp, #24]
 8005200:	2331      	movs	r3, #49	; 0x31
 8005202:	3201      	adds	r2, #1
 8005204:	9206      	str	r2, [sp, #24]
 8005206:	f88b 3000 	strb.w	r3, [fp]
 800520a:	e6b3      	b.n	8004f74 <_dtoa_r+0x88c>
 800520c:	2401      	movs	r4, #1
 800520e:	9409      	str	r4, [sp, #36]	; 0x24
 8005210:	9407      	str	r4, [sp, #28]
 8005212:	f7ff bb8b 	b.w	800492c <_dtoa_r+0x244>
 8005216:	4630      	mov	r0, r6
 8005218:	f7fb f944 	bl	80004a4 <__aeabi_i2d>
 800521c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005220:	f7fb f9aa 	bl	8000578 <__aeabi_dmul>
 8005224:	2200      	movs	r2, #0
 8005226:	4b68      	ldr	r3, [pc, #416]	; (80053c8 <_dtoa_r+0xce0>)
 8005228:	f7fa fff0 	bl	800020c <__adddf3>
 800522c:	4606      	mov	r6, r0
 800522e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005232:	2200      	movs	r2, #0
 8005234:	4b61      	ldr	r3, [pc, #388]	; (80053bc <_dtoa_r+0xcd4>)
 8005236:	e9dd 0100 	ldrd	r0, r1, [sp]
 800523a:	f7fa ffe5 	bl	8000208 <__aeabi_dsub>
 800523e:	4632      	mov	r2, r6
 8005240:	463b      	mov	r3, r7
 8005242:	4604      	mov	r4, r0
 8005244:	460d      	mov	r5, r1
 8005246:	f7fb fc27 	bl	8000a98 <__aeabi_dcmpgt>
 800524a:	2800      	cmp	r0, #0
 800524c:	d14f      	bne.n	80052ee <_dtoa_r+0xc06>
 800524e:	4632      	mov	r2, r6
 8005250:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005254:	4620      	mov	r0, r4
 8005256:	4629      	mov	r1, r5
 8005258:	f7fb fc00 	bl	8000a5c <__aeabi_dcmplt>
 800525c:	2800      	cmp	r0, #0
 800525e:	f43f ac69 	beq.w	8004b34 <_dtoa_r+0x44c>
 8005262:	2600      	movs	r6, #0
 8005264:	4635      	mov	r5, r6
 8005266:	e7c5      	b.n	80051f4 <_dtoa_r+0xb0c>
 8005268:	2301      	movs	r3, #1
 800526a:	930a      	str	r3, [sp, #40]	; 0x28
 800526c:	e6c8      	b.n	8005000 <_dtoa_r+0x918>
 800526e:	4651      	mov	r1, sl
 8005270:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005272:	4648      	mov	r0, r9
 8005274:	f001 fa9e 	bl	80067b4 <__pow5mult>
 8005278:	4682      	mov	sl, r0
 800527a:	e572      	b.n	8004d62 <_dtoa_r+0x67a>
 800527c:	f8dd a000 	ldr.w	sl, [sp]
 8005280:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005284:	e686      	b.n	8004f94 <_dtoa_r+0x8ac>
 8005286:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005288:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800528a:	1afb      	subs	r3, r7, r3
 800528c:	441a      	add	r2, r3
 800528e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005292:	2700      	movs	r7, #0
 8005294:	e512      	b.n	8004cbc <_dtoa_r+0x5d4>
 8005296:	2b00      	cmp	r3, #0
 8005298:	9402      	str	r4, [sp, #8]
 800529a:	465e      	mov	r6, fp
 800529c:	f107 0401 	add.w	r4, r7, #1
 80052a0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052a4:	f300 80ba 	bgt.w	800541c <_dtoa_r+0xd34>
 80052a8:	9b00      	ldr	r3, [sp, #0]
 80052aa:	9502      	str	r5, [sp, #8]
 80052ac:	703b      	strb	r3, [r7, #0]
 80052ae:	4645      	mov	r5, r8
 80052b0:	e660      	b.n	8004f74 <_dtoa_r+0x88c>
 80052b2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80052b6:	2602      	movs	r6, #2
 80052b8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80052bc:	f7ff bb67 	b.w	800498e <_dtoa_r+0x2a6>
 80052c0:	9b00      	ldr	r3, [sp, #0]
 80052c2:	2b39      	cmp	r3, #57	; 0x39
 80052c4:	465e      	mov	r6, fp
 80052c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052ca:	f000 80b9 	beq.w	8005440 <_dtoa_r+0xd58>
 80052ce:	9b00      	ldr	r3, [sp, #0]
 80052d0:	9502      	str	r5, [sp, #8]
 80052d2:	3301      	adds	r3, #1
 80052d4:	703b      	strb	r3, [r7, #0]
 80052d6:	4645      	mov	r5, r8
 80052d8:	e64c      	b.n	8004f74 <_dtoa_r+0x88c>
 80052da:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80052de:	1a9c      	subs	r4, r3, r2
 80052e0:	e4f5      	b.n	8004cce <_dtoa_r+0x5e6>
 80052e2:	465e      	mov	r6, fp
 80052e4:	9502      	str	r5, [sp, #8]
 80052e6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052ea:	4645      	mov	r5, r8
 80052ec:	e61a      	b.n	8004f24 <_dtoa_r+0x83c>
 80052ee:	2600      	movs	r6, #0
 80052f0:	4635      	mov	r5, r6
 80052f2:	e708      	b.n	8005106 <_dtoa_r+0xa1e>
 80052f4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80052f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052fc:	f7fb f93c 	bl	8000578 <__aeabi_dmul>
 8005300:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005302:	f88b 5000 	strb.w	r5, [fp]
 8005306:	2b01      	cmp	r3, #1
 8005308:	e9cd 0100 	strd	r0, r1, [sp]
 800530c:	d020      	beq.n	8005350 <_dtoa_r+0xc68>
 800530e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005310:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005314:	445b      	add	r3, fp
 8005316:	4698      	mov	r8, r3
 8005318:	2200      	movs	r2, #0
 800531a:	4b2c      	ldr	r3, [pc, #176]	; (80053cc <_dtoa_r+0xce4>)
 800531c:	4630      	mov	r0, r6
 800531e:	4639      	mov	r1, r7
 8005320:	f7fb f92a 	bl	8000578 <__aeabi_dmul>
 8005324:	460f      	mov	r7, r1
 8005326:	4606      	mov	r6, r0
 8005328:	f7fb feca 	bl	80010c0 <__aeabi_d2iz>
 800532c:	4605      	mov	r5, r0
 800532e:	f7fb f8b9 	bl	80004a4 <__aeabi_i2d>
 8005332:	3530      	adds	r5, #48	; 0x30
 8005334:	4602      	mov	r2, r0
 8005336:	460b      	mov	r3, r1
 8005338:	4630      	mov	r0, r6
 800533a:	4639      	mov	r1, r7
 800533c:	f7fa ff64 	bl	8000208 <__aeabi_dsub>
 8005340:	f804 5b01 	strb.w	r5, [r4], #1
 8005344:	4544      	cmp	r4, r8
 8005346:	4606      	mov	r6, r0
 8005348:	460f      	mov	r7, r1
 800534a:	d1e5      	bne.n	8005318 <_dtoa_r+0xc30>
 800534c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005350:	4b1f      	ldr	r3, [pc, #124]	; (80053d0 <_dtoa_r+0xce8>)
 8005352:	2200      	movs	r2, #0
 8005354:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005358:	f7fa ff58 	bl	800020c <__adddf3>
 800535c:	4632      	mov	r2, r6
 800535e:	463b      	mov	r3, r7
 8005360:	f7fb fb7c 	bl	8000a5c <__aeabi_dcmplt>
 8005364:	2800      	cmp	r0, #0
 8005366:	d070      	beq.n	800544a <_dtoa_r+0xd62>
 8005368:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800536a:	9306      	str	r3, [sp, #24]
 800536c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005370:	e48f      	b.n	8004c92 <_dtoa_r+0x5aa>
 8005372:	2330      	movs	r3, #48	; 0x30
 8005374:	f88b 3000 	strb.w	r3, [fp]
 8005378:	9b06      	ldr	r3, [sp, #24]
 800537a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800537e:	3301      	adds	r3, #1
 8005380:	9306      	str	r3, [sp, #24]
 8005382:	465b      	mov	r3, fp
 8005384:	e489      	b.n	8004c9a <_dtoa_r+0x5b2>
 8005386:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005388:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800538c:	e6a0      	b.n	80050d0 <_dtoa_r+0x9e8>
 800538e:	2300      	movs	r3, #0
 8005390:	e676      	b.n	8005080 <_dtoa_r+0x998>
 8005392:	4631      	mov	r1, r6
 8005394:	2205      	movs	r2, #5
 8005396:	4648      	mov	r0, r9
 8005398:	f001 f8cc 	bl	8006534 <__multadd>
 800539c:	4601      	mov	r1, r0
 800539e:	4606      	mov	r6, r0
 80053a0:	4650      	mov	r0, sl
 80053a2:	f001 faad 	bl	8006900 <__mcmp>
 80053a6:	2800      	cmp	r0, #0
 80053a8:	f73f aead 	bgt.w	8005106 <_dtoa_r+0xa1e>
 80053ac:	e722      	b.n	80051f4 <_dtoa_r+0xb0c>
 80053ae:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80053b2:	2602      	movs	r6, #2
 80053b4:	ed8d 7b00 	vstr	d7, [sp]
 80053b8:	f7ff bb02 	b.w	80049c0 <_dtoa_r+0x2d8>
 80053bc:	40140000 	.word	0x40140000
 80053c0:	08007778 	.word	0x08007778
 80053c4:	08007750 	.word	0x08007750
 80053c8:	401c0000 	.word	0x401c0000
 80053cc:	40240000 	.word	0x40240000
 80053d0:	3fe00000 	.word	0x3fe00000
 80053d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80053d6:	2b00      	cmp	r3, #0
 80053d8:	f43f af1d 	beq.w	8005216 <_dtoa_r+0xb2e>
 80053dc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80053de:	2c00      	cmp	r4, #0
 80053e0:	f77f aba8 	ble.w	8004b34 <_dtoa_r+0x44c>
 80053e4:	2200      	movs	r2, #0
 80053e6:	4b45      	ldr	r3, [pc, #276]	; (80054fc <_dtoa_r+0xe14>)
 80053e8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053ec:	f7fb f8c4 	bl	8000578 <__aeabi_dmul>
 80053f0:	e9cd 0100 	strd	r0, r1, [sp]
 80053f4:	1c70      	adds	r0, r6, #1
 80053f6:	f7fb f855 	bl	80004a4 <__aeabi_i2d>
 80053fa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053fe:	f7fb f8bb 	bl	8000578 <__aeabi_dmul>
 8005402:	4b3f      	ldr	r3, [pc, #252]	; (8005500 <_dtoa_r+0xe18>)
 8005404:	2200      	movs	r2, #0
 8005406:	f7fa ff01 	bl	800020c <__adddf3>
 800540a:	9b06      	ldr	r3, [sp, #24]
 800540c:	9412      	str	r4, [sp, #72]	; 0x48
 800540e:	3b01      	subs	r3, #1
 8005410:	4606      	mov	r6, r0
 8005412:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005416:	9316      	str	r3, [sp, #88]	; 0x58
 8005418:	f7ff baf3 	b.w	8004a02 <_dtoa_r+0x31a>
 800541c:	4651      	mov	r1, sl
 800541e:	2201      	movs	r2, #1
 8005420:	4648      	mov	r0, r9
 8005422:	f001 fa17 	bl	8006854 <__lshift>
 8005426:	4631      	mov	r1, r6
 8005428:	4682      	mov	sl, r0
 800542a:	f001 fa69 	bl	8006900 <__mcmp>
 800542e:	2800      	cmp	r0, #0
 8005430:	dd3b      	ble.n	80054aa <_dtoa_r+0xdc2>
 8005432:	9b00      	ldr	r3, [sp, #0]
 8005434:	2b39      	cmp	r3, #57	; 0x39
 8005436:	d003      	beq.n	8005440 <_dtoa_r+0xd58>
 8005438:	9b02      	ldr	r3, [sp, #8]
 800543a:	3331      	adds	r3, #49	; 0x31
 800543c:	9300      	str	r3, [sp, #0]
 800543e:	e733      	b.n	80052a8 <_dtoa_r+0xbc0>
 8005440:	2239      	movs	r2, #57	; 0x39
 8005442:	9502      	str	r5, [sp, #8]
 8005444:	703a      	strb	r2, [r7, #0]
 8005446:	4645      	mov	r5, r8
 8005448:	e58e      	b.n	8004f68 <_dtoa_r+0x880>
 800544a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800544e:	2000      	movs	r0, #0
 8005450:	492c      	ldr	r1, [pc, #176]	; (8005504 <_dtoa_r+0xe1c>)
 8005452:	f7fa fed9 	bl	8000208 <__aeabi_dsub>
 8005456:	4632      	mov	r2, r6
 8005458:	463b      	mov	r3, r7
 800545a:	f7fb fb1d 	bl	8000a98 <__aeabi_dcmpgt>
 800545e:	b910      	cbnz	r0, 8005466 <_dtoa_r+0xd7e>
 8005460:	f7ff bb68 	b.w	8004b34 <_dtoa_r+0x44c>
 8005464:	4614      	mov	r4, r2
 8005466:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800546a:	2b30      	cmp	r3, #48	; 0x30
 800546c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005470:	d0f8      	beq.n	8005464 <_dtoa_r+0xd7c>
 8005472:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005474:	9306      	str	r3, [sp, #24]
 8005476:	e58d      	b.n	8004f94 <_dtoa_r+0x8ac>
 8005478:	46d9      	mov	r9, fp
 800547a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800547e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005482:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005484:	9306      	str	r3, [sp, #24]
 8005486:	e404      	b.n	8004c92 <_dtoa_r+0x5aa>
 8005488:	9b00      	ldr	r3, [sp, #0]
 800548a:	2b39      	cmp	r3, #57	; 0x39
 800548c:	4621      	mov	r1, r4
 800548e:	4632      	mov	r2, r6
 8005490:	f107 0401 	add.w	r4, r7, #1
 8005494:	465e      	mov	r6, fp
 8005496:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800549a:	d0d1      	beq.n	8005440 <_dtoa_r+0xd58>
 800549c:	2a00      	cmp	r2, #0
 800549e:	f77f af03 	ble.w	80052a8 <_dtoa_r+0xbc0>
 80054a2:	460b      	mov	r3, r1
 80054a4:	3331      	adds	r3, #49	; 0x31
 80054a6:	9300      	str	r3, [sp, #0]
 80054a8:	e6fe      	b.n	80052a8 <_dtoa_r+0xbc0>
 80054aa:	f47f aefd 	bne.w	80052a8 <_dtoa_r+0xbc0>
 80054ae:	9b00      	ldr	r3, [sp, #0]
 80054b0:	07da      	lsls	r2, r3, #31
 80054b2:	f57f aef9 	bpl.w	80052a8 <_dtoa_r+0xbc0>
 80054b6:	e7bc      	b.n	8005432 <_dtoa_r+0xd4a>
 80054b8:	4629      	mov	r1, r5
 80054ba:	2300      	movs	r3, #0
 80054bc:	220a      	movs	r2, #10
 80054be:	4648      	mov	r0, r9
 80054c0:	f001 f838 	bl	8006534 <__multadd>
 80054c4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054c6:	2b00      	cmp	r3, #0
 80054c8:	4605      	mov	r5, r0
 80054ca:	dd09      	ble.n	80054e0 <_dtoa_r+0xdf8>
 80054cc:	9309      	str	r3, [sp, #36]	; 0x24
 80054ce:	e484      	b.n	8004dda <_dtoa_r+0x6f2>
 80054d0:	9b02      	ldr	r3, [sp, #8]
 80054d2:	2b02      	cmp	r3, #2
 80054d4:	dc0e      	bgt.n	80054f4 <_dtoa_r+0xe0c>
 80054d6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054d8:	e507      	b.n	8004eea <_dtoa_r+0x802>
 80054da:	2602      	movs	r6, #2
 80054dc:	f7ff ba70 	b.w	80049c0 <_dtoa_r+0x2d8>
 80054e0:	9b02      	ldr	r3, [sp, #8]
 80054e2:	2b02      	cmp	r3, #2
 80054e4:	dc06      	bgt.n	80054f4 <_dtoa_r+0xe0c>
 80054e6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054e8:	e7f0      	b.n	80054cc <_dtoa_r+0xde4>
 80054ea:	f43f ac59 	beq.w	8004da0 <_dtoa_r+0x6b8>
 80054ee:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80054f2:	e450      	b.n	8004d96 <_dtoa_r+0x6ae>
 80054f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054f6:	9309      	str	r3, [sp, #36]	; 0x24
 80054f8:	e678      	b.n	80051ec <_dtoa_r+0xb04>
 80054fa:	bf00      	nop
 80054fc:	40240000 	.word	0x40240000
 8005500:	401c0000 	.word	0x401c0000
 8005504:	3fe00000 	.word	0x3fe00000

08005508 <__sflush_r>:
 8005508:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800550c:	b29a      	uxth	r2, r3
 800550e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005512:	460c      	mov	r4, r1
 8005514:	0711      	lsls	r1, r2, #28
 8005516:	4680      	mov	r8, r0
 8005518:	d444      	bmi.n	80055a4 <__sflush_r+0x9c>
 800551a:	6862      	ldr	r2, [r4, #4]
 800551c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005520:	2a00      	cmp	r2, #0
 8005522:	81a3      	strh	r3, [r4, #12]
 8005524:	dd59      	ble.n	80055da <__sflush_r+0xd2>
 8005526:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005528:	2d00      	cmp	r5, #0
 800552a:	d053      	beq.n	80055d4 <__sflush_r+0xcc>
 800552c:	2200      	movs	r2, #0
 800552e:	b29b      	uxth	r3, r3
 8005530:	f8d8 6000 	ldr.w	r6, [r8]
 8005534:	69e1      	ldr	r1, [r4, #28]
 8005536:	f8c8 2000 	str.w	r2, [r8]
 800553a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800553e:	f040 8083 	bne.w	8005648 <__sflush_r+0x140>
 8005542:	2301      	movs	r3, #1
 8005544:	4640      	mov	r0, r8
 8005546:	47a8      	blx	r5
 8005548:	1c42      	adds	r2, r0, #1
 800554a:	d04a      	beq.n	80055e2 <__sflush_r+0xda>
 800554c:	89a3      	ldrh	r3, [r4, #12]
 800554e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005550:	69e1      	ldr	r1, [r4, #28]
 8005552:	075b      	lsls	r3, r3, #29
 8005554:	d505      	bpl.n	8005562 <__sflush_r+0x5a>
 8005556:	6862      	ldr	r2, [r4, #4]
 8005558:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800555a:	1a80      	subs	r0, r0, r2
 800555c:	b10b      	cbz	r3, 8005562 <__sflush_r+0x5a>
 800555e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005560:	1ac0      	subs	r0, r0, r3
 8005562:	4602      	mov	r2, r0
 8005564:	2300      	movs	r3, #0
 8005566:	4640      	mov	r0, r8
 8005568:	47a8      	blx	r5
 800556a:	1c47      	adds	r7, r0, #1
 800556c:	d045      	beq.n	80055fa <__sflush_r+0xf2>
 800556e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005572:	6922      	ldr	r2, [r4, #16]
 8005574:	6022      	str	r2, [r4, #0]
 8005576:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800557a:	2200      	movs	r2, #0
 800557c:	81a3      	strh	r3, [r4, #12]
 800557e:	04db      	lsls	r3, r3, #19
 8005580:	6062      	str	r2, [r4, #4]
 8005582:	d500      	bpl.n	8005586 <__sflush_r+0x7e>
 8005584:	6520      	str	r0, [r4, #80]	; 0x50
 8005586:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005588:	f8c8 6000 	str.w	r6, [r8]
 800558c:	b311      	cbz	r1, 80055d4 <__sflush_r+0xcc>
 800558e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005592:	4299      	cmp	r1, r3
 8005594:	d002      	beq.n	800559c <__sflush_r+0x94>
 8005596:	4640      	mov	r0, r8
 8005598:	f000 f95e 	bl	8005858 <_free_r>
 800559c:	2000      	movs	r0, #0
 800559e:	6320      	str	r0, [r4, #48]	; 0x30
 80055a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055a4:	6926      	ldr	r6, [r4, #16]
 80055a6:	b1ae      	cbz	r6, 80055d4 <__sflush_r+0xcc>
 80055a8:	6825      	ldr	r5, [r4, #0]
 80055aa:	6026      	str	r6, [r4, #0]
 80055ac:	0792      	lsls	r2, r2, #30
 80055ae:	bf0c      	ite	eq
 80055b0:	6963      	ldreq	r3, [r4, #20]
 80055b2:	2300      	movne	r3, #0
 80055b4:	1bad      	subs	r5, r5, r6
 80055b6:	60a3      	str	r3, [r4, #8]
 80055b8:	e00a      	b.n	80055d0 <__sflush_r+0xc8>
 80055ba:	462b      	mov	r3, r5
 80055bc:	4632      	mov	r2, r6
 80055be:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80055c0:	69e1      	ldr	r1, [r4, #28]
 80055c2:	4640      	mov	r0, r8
 80055c4:	47b8      	blx	r7
 80055c6:	2800      	cmp	r0, #0
 80055c8:	eba5 0500 	sub.w	r5, r5, r0
 80055cc:	4406      	add	r6, r0
 80055ce:	dd2b      	ble.n	8005628 <__sflush_r+0x120>
 80055d0:	2d00      	cmp	r5, #0
 80055d2:	dcf2      	bgt.n	80055ba <__sflush_r+0xb2>
 80055d4:	2000      	movs	r0, #0
 80055d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055da:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80055dc:	2a00      	cmp	r2, #0
 80055de:	dca2      	bgt.n	8005526 <__sflush_r+0x1e>
 80055e0:	e7f8      	b.n	80055d4 <__sflush_r+0xcc>
 80055e2:	f8d8 3000 	ldr.w	r3, [r8]
 80055e6:	2b00      	cmp	r3, #0
 80055e8:	d0b0      	beq.n	800554c <__sflush_r+0x44>
 80055ea:	2b1d      	cmp	r3, #29
 80055ec:	d001      	beq.n	80055f2 <__sflush_r+0xea>
 80055ee:	2b16      	cmp	r3, #22
 80055f0:	d12c      	bne.n	800564c <__sflush_r+0x144>
 80055f2:	f8c8 6000 	str.w	r6, [r8]
 80055f6:	2000      	movs	r0, #0
 80055f8:	e7ed      	b.n	80055d6 <__sflush_r+0xce>
 80055fa:	f8d8 1000 	ldr.w	r1, [r8]
 80055fe:	291d      	cmp	r1, #29
 8005600:	d81a      	bhi.n	8005638 <__sflush_r+0x130>
 8005602:	4b15      	ldr	r3, [pc, #84]	; (8005658 <__sflush_r+0x150>)
 8005604:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005608:	40cb      	lsrs	r3, r1
 800560a:	43db      	mvns	r3, r3
 800560c:	f013 0301 	ands.w	r3, r3, #1
 8005610:	d114      	bne.n	800563c <__sflush_r+0x134>
 8005612:	6925      	ldr	r5, [r4, #16]
 8005614:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005618:	e9c4 5300 	strd	r5, r3, [r4]
 800561c:	04d5      	lsls	r5, r2, #19
 800561e:	81a2      	strh	r2, [r4, #12]
 8005620:	d5b1      	bpl.n	8005586 <__sflush_r+0x7e>
 8005622:	2900      	cmp	r1, #0
 8005624:	d1af      	bne.n	8005586 <__sflush_r+0x7e>
 8005626:	e7ad      	b.n	8005584 <__sflush_r+0x7c>
 8005628:	89a3      	ldrh	r3, [r4, #12]
 800562a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800562e:	81a3      	strh	r3, [r4, #12]
 8005630:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005634:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005638:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800563c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005640:	81a2      	strh	r2, [r4, #12]
 8005642:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005646:	e7c6      	b.n	80055d6 <__sflush_r+0xce>
 8005648:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800564a:	e782      	b.n	8005552 <__sflush_r+0x4a>
 800564c:	89a3      	ldrh	r3, [r4, #12]
 800564e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005652:	81a3      	strh	r3, [r4, #12]
 8005654:	e7bf      	b.n	80055d6 <__sflush_r+0xce>
 8005656:	bf00      	nop
 8005658:	20400001 	.word	0x20400001

0800565c <_fflush_r>:
 800565c:	b538      	push	{r3, r4, r5, lr}
 800565e:	460d      	mov	r5, r1
 8005660:	4604      	mov	r4, r0
 8005662:	b108      	cbz	r0, 8005668 <_fflush_r+0xc>
 8005664:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005666:	b1a3      	cbz	r3, 8005692 <_fflush_r+0x36>
 8005668:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800566c:	b1b8      	cbz	r0, 800569e <_fflush_r+0x42>
 800566e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005670:	07db      	lsls	r3, r3, #31
 8005672:	d401      	bmi.n	8005678 <_fflush_r+0x1c>
 8005674:	0581      	lsls	r1, r0, #22
 8005676:	d51a      	bpl.n	80056ae <_fflush_r+0x52>
 8005678:	4620      	mov	r0, r4
 800567a:	4629      	mov	r1, r5
 800567c:	f7ff ff44 	bl	8005508 <__sflush_r>
 8005680:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005682:	07da      	lsls	r2, r3, #31
 8005684:	4604      	mov	r4, r0
 8005686:	d402      	bmi.n	800568e <_fflush_r+0x32>
 8005688:	89ab      	ldrh	r3, [r5, #12]
 800568a:	059b      	lsls	r3, r3, #22
 800568c:	d50a      	bpl.n	80056a4 <_fflush_r+0x48>
 800568e:	4620      	mov	r0, r4
 8005690:	bd38      	pop	{r3, r4, r5, pc}
 8005692:	f000 f83f 	bl	8005714 <__sinit>
 8005696:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800569a:	2800      	cmp	r0, #0
 800569c:	d1e7      	bne.n	800566e <_fflush_r+0x12>
 800569e:	4604      	mov	r4, r0
 80056a0:	4620      	mov	r0, r4
 80056a2:	bd38      	pop	{r3, r4, r5, pc}
 80056a4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80056a6:	f000 fb87 	bl	8005db8 <__retarget_lock_release_recursive>
 80056aa:	4620      	mov	r0, r4
 80056ac:	bd38      	pop	{r3, r4, r5, pc}
 80056ae:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80056b0:	f000 fb80 	bl	8005db4 <__retarget_lock_acquire_recursive>
 80056b4:	e7e0      	b.n	8005678 <_fflush_r+0x1c>
 80056b6:	bf00      	nop

080056b8 <std>:
 80056b8:	b510      	push	{r4, lr}
 80056ba:	2300      	movs	r3, #0
 80056bc:	4604      	mov	r4, r0
 80056be:	8181      	strh	r1, [r0, #12]
 80056c0:	81c2      	strh	r2, [r0, #14]
 80056c2:	e9c0 3300 	strd	r3, r3, [r0]
 80056c6:	6083      	str	r3, [r0, #8]
 80056c8:	6643      	str	r3, [r0, #100]	; 0x64
 80056ca:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80056ce:	6183      	str	r3, [r0, #24]
 80056d0:	4619      	mov	r1, r3
 80056d2:	2208      	movs	r2, #8
 80056d4:	305c      	adds	r0, #92	; 0x5c
 80056d6:	f7fd f8c9 	bl	800286c <memset>
 80056da:	4807      	ldr	r0, [pc, #28]	; (80056f8 <std+0x40>)
 80056dc:	4907      	ldr	r1, [pc, #28]	; (80056fc <std+0x44>)
 80056de:	4a08      	ldr	r2, [pc, #32]	; (8005700 <std+0x48>)
 80056e0:	4b08      	ldr	r3, [pc, #32]	; (8005704 <std+0x4c>)
 80056e2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80056e4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80056e8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80056ec:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80056f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80056f4:	f000 bb5a 	b.w	8005dac <__retarget_lock_init_recursive>
 80056f8:	08006ed1 	.word	0x08006ed1
 80056fc:	08006ef5 	.word	0x08006ef5
 8005700:	08006f31 	.word	0x08006f31
 8005704:	08006f51 	.word	0x08006f51

08005708 <_cleanup_r>:
 8005708:	4901      	ldr	r1, [pc, #4]	; (8005710 <_cleanup_r+0x8>)
 800570a:	f000 bb17 	b.w	8005d3c <_fwalk_reent>
 800570e:	bf00      	nop
 8005710:	080071c1 	.word	0x080071c1

08005714 <__sinit>:
 8005714:	b510      	push	{r4, lr}
 8005716:	4604      	mov	r4, r0
 8005718:	4812      	ldr	r0, [pc, #72]	; (8005764 <__sinit+0x50>)
 800571a:	f000 fb4b 	bl	8005db4 <__retarget_lock_acquire_recursive>
 800571e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005720:	b9d2      	cbnz	r2, 8005758 <__sinit+0x44>
 8005722:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005726:	4810      	ldr	r0, [pc, #64]	; (8005768 <__sinit+0x54>)
 8005728:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800572c:	2103      	movs	r1, #3
 800572e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005732:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005734:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005738:	6860      	ldr	r0, [r4, #4]
 800573a:	2104      	movs	r1, #4
 800573c:	f7ff ffbc 	bl	80056b8 <std>
 8005740:	2201      	movs	r2, #1
 8005742:	2109      	movs	r1, #9
 8005744:	68a0      	ldr	r0, [r4, #8]
 8005746:	f7ff ffb7 	bl	80056b8 <std>
 800574a:	2202      	movs	r2, #2
 800574c:	2112      	movs	r1, #18
 800574e:	68e0      	ldr	r0, [r4, #12]
 8005750:	f7ff ffb2 	bl	80056b8 <std>
 8005754:	2301      	movs	r3, #1
 8005756:	63a3      	str	r3, [r4, #56]	; 0x38
 8005758:	4802      	ldr	r0, [pc, #8]	; (8005764 <__sinit+0x50>)
 800575a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800575e:	f000 bb2b 	b.w	8005db8 <__retarget_lock_release_recursive>
 8005762:	bf00      	nop
 8005764:	20001154 	.word	0x20001154
 8005768:	08005709 	.word	0x08005709

0800576c <__sfp_lock_acquire>:
 800576c:	4801      	ldr	r0, [pc, #4]	; (8005774 <__sfp_lock_acquire+0x8>)
 800576e:	f000 bb21 	b.w	8005db4 <__retarget_lock_acquire_recursive>
 8005772:	bf00      	nop
 8005774:	20001168 	.word	0x20001168

08005778 <__sfp_lock_release>:
 8005778:	4801      	ldr	r0, [pc, #4]	; (8005780 <__sfp_lock_release+0x8>)
 800577a:	f000 bb1d 	b.w	8005db8 <__retarget_lock_release_recursive>
 800577e:	bf00      	nop
 8005780:	20001168 	.word	0x20001168

08005784 <__libc_fini_array>:
 8005784:	b538      	push	{r3, r4, r5, lr}
 8005786:	4c0a      	ldr	r4, [pc, #40]	; (80057b0 <__libc_fini_array+0x2c>)
 8005788:	4d0a      	ldr	r5, [pc, #40]	; (80057b4 <__libc_fini_array+0x30>)
 800578a:	1b64      	subs	r4, r4, r5
 800578c:	10a4      	asrs	r4, r4, #2
 800578e:	d00a      	beq.n	80057a6 <__libc_fini_array+0x22>
 8005790:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005794:	3b01      	subs	r3, #1
 8005796:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800579a:	3c01      	subs	r4, #1
 800579c:	f855 3904 	ldr.w	r3, [r5], #-4
 80057a0:	4798      	blx	r3
 80057a2:	2c00      	cmp	r4, #0
 80057a4:	d1f9      	bne.n	800579a <__libc_fini_array+0x16>
 80057a6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80057aa:	f001 befd 	b.w	80075a8 <_fini>
 80057ae:	bf00      	nop
 80057b0:	08007974 	.word	0x08007974
 80057b4:	08007970 	.word	0x08007970

080057b8 <_malloc_trim_r>:
 80057b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80057ba:	4f24      	ldr	r7, [pc, #144]	; (800584c <_malloc_trim_r+0x94>)
 80057bc:	460c      	mov	r4, r1
 80057be:	4606      	mov	r6, r0
 80057c0:	f000 fe7c 	bl	80064bc <__malloc_lock>
 80057c4:	68bb      	ldr	r3, [r7, #8]
 80057c6:	685d      	ldr	r5, [r3, #4]
 80057c8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80057cc:	310f      	adds	r1, #15
 80057ce:	f025 0503 	bic.w	r5, r5, #3
 80057d2:	4429      	add	r1, r5
 80057d4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80057d8:	f021 010f 	bic.w	r1, r1, #15
 80057dc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80057e0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80057e4:	db07      	blt.n	80057f6 <_malloc_trim_r+0x3e>
 80057e6:	2100      	movs	r1, #0
 80057e8:	4630      	mov	r0, r6
 80057ea:	f001 fb5f 	bl	8006eac <_sbrk_r>
 80057ee:	68bb      	ldr	r3, [r7, #8]
 80057f0:	442b      	add	r3, r5
 80057f2:	4298      	cmp	r0, r3
 80057f4:	d004      	beq.n	8005800 <_malloc_trim_r+0x48>
 80057f6:	4630      	mov	r0, r6
 80057f8:	f000 fe66 	bl	80064c8 <__malloc_unlock>
 80057fc:	2000      	movs	r0, #0
 80057fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005800:	4261      	negs	r1, r4
 8005802:	4630      	mov	r0, r6
 8005804:	f001 fb52 	bl	8006eac <_sbrk_r>
 8005808:	3001      	adds	r0, #1
 800580a:	d00d      	beq.n	8005828 <_malloc_trim_r+0x70>
 800580c:	4b10      	ldr	r3, [pc, #64]	; (8005850 <_malloc_trim_r+0x98>)
 800580e:	68ba      	ldr	r2, [r7, #8]
 8005810:	6819      	ldr	r1, [r3, #0]
 8005812:	1b2d      	subs	r5, r5, r4
 8005814:	f045 0501 	orr.w	r5, r5, #1
 8005818:	4630      	mov	r0, r6
 800581a:	1b09      	subs	r1, r1, r4
 800581c:	6055      	str	r5, [r2, #4]
 800581e:	6019      	str	r1, [r3, #0]
 8005820:	f000 fe52 	bl	80064c8 <__malloc_unlock>
 8005824:	2001      	movs	r0, #1
 8005826:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005828:	2100      	movs	r1, #0
 800582a:	4630      	mov	r0, r6
 800582c:	f001 fb3e 	bl	8006eac <_sbrk_r>
 8005830:	68ba      	ldr	r2, [r7, #8]
 8005832:	1a83      	subs	r3, r0, r2
 8005834:	2b0f      	cmp	r3, #15
 8005836:	ddde      	ble.n	80057f6 <_malloc_trim_r+0x3e>
 8005838:	4c06      	ldr	r4, [pc, #24]	; (8005854 <_malloc_trim_r+0x9c>)
 800583a:	4905      	ldr	r1, [pc, #20]	; (8005850 <_malloc_trim_r+0x98>)
 800583c:	6824      	ldr	r4, [r4, #0]
 800583e:	f043 0301 	orr.w	r3, r3, #1
 8005842:	1b00      	subs	r0, r0, r4
 8005844:	6053      	str	r3, [r2, #4]
 8005846:	6008      	str	r0, [r1, #0]
 8005848:	e7d5      	b.n	80057f6 <_malloc_trim_r+0x3e>
 800584a:	bf00      	nop
 800584c:	2000044c 	.word	0x2000044c
 8005850:	20000a6c 	.word	0x20000a6c
 8005854:	20000854 	.word	0x20000854

08005858 <_free_r>:
 8005858:	2900      	cmp	r1, #0
 800585a:	d053      	beq.n	8005904 <_free_r+0xac>
 800585c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800585e:	460c      	mov	r4, r1
 8005860:	4606      	mov	r6, r0
 8005862:	f000 fe2b 	bl	80064bc <__malloc_lock>
 8005866:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800586a:	4f71      	ldr	r7, [pc, #452]	; (8005a30 <_free_r+0x1d8>)
 800586c:	f02c 0101 	bic.w	r1, ip, #1
 8005870:	f1a4 0508 	sub.w	r5, r4, #8
 8005874:	186b      	adds	r3, r5, r1
 8005876:	68b8      	ldr	r0, [r7, #8]
 8005878:	685a      	ldr	r2, [r3, #4]
 800587a:	4298      	cmp	r0, r3
 800587c:	f022 0203 	bic.w	r2, r2, #3
 8005880:	d053      	beq.n	800592a <_free_r+0xd2>
 8005882:	f01c 0f01 	tst.w	ip, #1
 8005886:	605a      	str	r2, [r3, #4]
 8005888:	eb03 0002 	add.w	r0, r3, r2
 800588c:	d13b      	bne.n	8005906 <_free_r+0xae>
 800588e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005892:	6840      	ldr	r0, [r0, #4]
 8005894:	eba5 050c 	sub.w	r5, r5, ip
 8005898:	f107 0e08 	add.w	lr, r7, #8
 800589c:	68ac      	ldr	r4, [r5, #8]
 800589e:	4574      	cmp	r4, lr
 80058a0:	4461      	add	r1, ip
 80058a2:	f000 0001 	and.w	r0, r0, #1
 80058a6:	d075      	beq.n	8005994 <_free_r+0x13c>
 80058a8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80058ac:	f8c4 c00c 	str.w	ip, [r4, #12]
 80058b0:	f8cc 4008 	str.w	r4, [ip, #8]
 80058b4:	b360      	cbz	r0, 8005910 <_free_r+0xb8>
 80058b6:	f041 0301 	orr.w	r3, r1, #1
 80058ba:	606b      	str	r3, [r5, #4]
 80058bc:	5069      	str	r1, [r5, r1]
 80058be:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80058c2:	d350      	bcc.n	8005966 <_free_r+0x10e>
 80058c4:	0a4b      	lsrs	r3, r1, #9
 80058c6:	2b04      	cmp	r3, #4
 80058c8:	d870      	bhi.n	80059ac <_free_r+0x154>
 80058ca:	098b      	lsrs	r3, r1, #6
 80058cc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80058d0:	00e4      	lsls	r4, r4, #3
 80058d2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80058d6:	1938      	adds	r0, r7, r4
 80058d8:	593b      	ldr	r3, [r7, r4]
 80058da:	3808      	subs	r0, #8
 80058dc:	4298      	cmp	r0, r3
 80058de:	d078      	beq.n	80059d2 <_free_r+0x17a>
 80058e0:	685a      	ldr	r2, [r3, #4]
 80058e2:	f022 0203 	bic.w	r2, r2, #3
 80058e6:	428a      	cmp	r2, r1
 80058e8:	d971      	bls.n	80059ce <_free_r+0x176>
 80058ea:	689b      	ldr	r3, [r3, #8]
 80058ec:	4298      	cmp	r0, r3
 80058ee:	d1f7      	bne.n	80058e0 <_free_r+0x88>
 80058f0:	68c3      	ldr	r3, [r0, #12]
 80058f2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80058f6:	609d      	str	r5, [r3, #8]
 80058f8:	60c5      	str	r5, [r0, #12]
 80058fa:	4630      	mov	r0, r6
 80058fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005900:	f000 bde2 	b.w	80064c8 <__malloc_unlock>
 8005904:	4770      	bx	lr
 8005906:	6840      	ldr	r0, [r0, #4]
 8005908:	f000 0001 	and.w	r0, r0, #1
 800590c:	2800      	cmp	r0, #0
 800590e:	d1d2      	bne.n	80058b6 <_free_r+0x5e>
 8005910:	6898      	ldr	r0, [r3, #8]
 8005912:	4c48      	ldr	r4, [pc, #288]	; (8005a34 <_free_r+0x1dc>)
 8005914:	4411      	add	r1, r2
 8005916:	42a0      	cmp	r0, r4
 8005918:	f041 0201 	orr.w	r2, r1, #1
 800591c:	d062      	beq.n	80059e4 <_free_r+0x18c>
 800591e:	68db      	ldr	r3, [r3, #12]
 8005920:	60c3      	str	r3, [r0, #12]
 8005922:	6098      	str	r0, [r3, #8]
 8005924:	606a      	str	r2, [r5, #4]
 8005926:	5069      	str	r1, [r5, r1]
 8005928:	e7c9      	b.n	80058be <_free_r+0x66>
 800592a:	f01c 0f01 	tst.w	ip, #1
 800592e:	440a      	add	r2, r1
 8005930:	d107      	bne.n	8005942 <_free_r+0xea>
 8005932:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005936:	1aed      	subs	r5, r5, r3
 8005938:	441a      	add	r2, r3
 800593a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800593e:	60cb      	str	r3, [r1, #12]
 8005940:	6099      	str	r1, [r3, #8]
 8005942:	4b3d      	ldr	r3, [pc, #244]	; (8005a38 <_free_r+0x1e0>)
 8005944:	681b      	ldr	r3, [r3, #0]
 8005946:	f042 0101 	orr.w	r1, r2, #1
 800594a:	4293      	cmp	r3, r2
 800594c:	6069      	str	r1, [r5, #4]
 800594e:	60bd      	str	r5, [r7, #8]
 8005950:	d804      	bhi.n	800595c <_free_r+0x104>
 8005952:	4b3a      	ldr	r3, [pc, #232]	; (8005a3c <_free_r+0x1e4>)
 8005954:	4630      	mov	r0, r6
 8005956:	6819      	ldr	r1, [r3, #0]
 8005958:	f7ff ff2e 	bl	80057b8 <_malloc_trim_r>
 800595c:	4630      	mov	r0, r6
 800595e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005962:	f000 bdb1 	b.w	80064c8 <__malloc_unlock>
 8005966:	08c9      	lsrs	r1, r1, #3
 8005968:	6878      	ldr	r0, [r7, #4]
 800596a:	1c4a      	adds	r2, r1, #1
 800596c:	2301      	movs	r3, #1
 800596e:	1089      	asrs	r1, r1, #2
 8005970:	408b      	lsls	r3, r1
 8005972:	4303      	orrs	r3, r0
 8005974:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005978:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800597c:	607b      	str	r3, [r7, #4]
 800597e:	3908      	subs	r1, #8
 8005980:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005984:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005988:	60c5      	str	r5, [r0, #12]
 800598a:	4630      	mov	r0, r6
 800598c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005990:	f000 bd9a 	b.w	80064c8 <__malloc_unlock>
 8005994:	2800      	cmp	r0, #0
 8005996:	d145      	bne.n	8005a24 <_free_r+0x1cc>
 8005998:	440a      	add	r2, r1
 800599a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800599e:	f042 0001 	orr.w	r0, r2, #1
 80059a2:	60cb      	str	r3, [r1, #12]
 80059a4:	6099      	str	r1, [r3, #8]
 80059a6:	6068      	str	r0, [r5, #4]
 80059a8:	50aa      	str	r2, [r5, r2]
 80059aa:	e7d7      	b.n	800595c <_free_r+0x104>
 80059ac:	2b14      	cmp	r3, #20
 80059ae:	d908      	bls.n	80059c2 <_free_r+0x16a>
 80059b0:	2b54      	cmp	r3, #84	; 0x54
 80059b2:	d81e      	bhi.n	80059f2 <_free_r+0x19a>
 80059b4:	0b0b      	lsrs	r3, r1, #12
 80059b6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80059ba:	00e4      	lsls	r4, r4, #3
 80059bc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80059c0:	e789      	b.n	80058d6 <_free_r+0x7e>
 80059c2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80059c6:	00e4      	lsls	r4, r4, #3
 80059c8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80059cc:	e783      	b.n	80058d6 <_free_r+0x7e>
 80059ce:	4618      	mov	r0, r3
 80059d0:	e78e      	b.n	80058f0 <_free_r+0x98>
 80059d2:	1093      	asrs	r3, r2, #2
 80059d4:	6879      	ldr	r1, [r7, #4]
 80059d6:	2201      	movs	r2, #1
 80059d8:	fa02 f303 	lsl.w	r3, r2, r3
 80059dc:	430b      	orrs	r3, r1
 80059de:	607b      	str	r3, [r7, #4]
 80059e0:	4603      	mov	r3, r0
 80059e2:	e786      	b.n	80058f2 <_free_r+0x9a>
 80059e4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80059e8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80059ec:	606a      	str	r2, [r5, #4]
 80059ee:	5069      	str	r1, [r5, r1]
 80059f0:	e7b4      	b.n	800595c <_free_r+0x104>
 80059f2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80059f6:	d806      	bhi.n	8005a06 <_free_r+0x1ae>
 80059f8:	0bcb      	lsrs	r3, r1, #15
 80059fa:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80059fe:	00e4      	lsls	r4, r4, #3
 8005a00:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a04:	e767      	b.n	80058d6 <_free_r+0x7e>
 8005a06:	f240 5254 	movw	r2, #1364	; 0x554
 8005a0a:	4293      	cmp	r3, r2
 8005a0c:	d806      	bhi.n	8005a1c <_free_r+0x1c4>
 8005a0e:	0c8b      	lsrs	r3, r1, #18
 8005a10:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005a14:	00e4      	lsls	r4, r4, #3
 8005a16:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005a1a:	e75c      	b.n	80058d6 <_free_r+0x7e>
 8005a1c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005a20:	227e      	movs	r2, #126	; 0x7e
 8005a22:	e758      	b.n	80058d6 <_free_r+0x7e>
 8005a24:	f041 0201 	orr.w	r2, r1, #1
 8005a28:	606a      	str	r2, [r5, #4]
 8005a2a:	6019      	str	r1, [r3, #0]
 8005a2c:	e796      	b.n	800595c <_free_r+0x104>
 8005a2e:	bf00      	nop
 8005a30:	2000044c 	.word	0x2000044c
 8005a34:	20000454 	.word	0x20000454
 8005a38:	20000858 	.word	0x20000858
 8005a3c:	20000a9c 	.word	0x20000a9c

08005a40 <__sfvwrite_r>:
 8005a40:	6893      	ldr	r3, [r2, #8]
 8005a42:	2b00      	cmp	r3, #0
 8005a44:	f000 80e4 	beq.w	8005c10 <__sfvwrite_r+0x1d0>
 8005a48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a4c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005a50:	b29b      	uxth	r3, r3
 8005a52:	460c      	mov	r4, r1
 8005a54:	0719      	lsls	r1, r3, #28
 8005a56:	b083      	sub	sp, #12
 8005a58:	4682      	mov	sl, r0
 8005a5a:	4690      	mov	r8, r2
 8005a5c:	d535      	bpl.n	8005aca <__sfvwrite_r+0x8a>
 8005a5e:	6922      	ldr	r2, [r4, #16]
 8005a60:	b39a      	cbz	r2, 8005aca <__sfvwrite_r+0x8a>
 8005a62:	f013 0202 	ands.w	r2, r3, #2
 8005a66:	f8d8 6000 	ldr.w	r6, [r8]
 8005a6a:	d03d      	beq.n	8005ae8 <__sfvwrite_r+0xa8>
 8005a6c:	2700      	movs	r7, #0
 8005a6e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005a72:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005a76:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005d38 <__sfvwrite_r+0x2f8>
 8005a7a:	463d      	mov	r5, r7
 8005a7c:	454d      	cmp	r5, r9
 8005a7e:	462b      	mov	r3, r5
 8005a80:	463a      	mov	r2, r7
 8005a82:	bf28      	it	cs
 8005a84:	464b      	movcs	r3, r9
 8005a86:	4661      	mov	r1, ip
 8005a88:	4650      	mov	r0, sl
 8005a8a:	b1d5      	cbz	r5, 8005ac2 <__sfvwrite_r+0x82>
 8005a8c:	47d8      	blx	fp
 8005a8e:	2800      	cmp	r0, #0
 8005a90:	f340 80c6 	ble.w	8005c20 <__sfvwrite_r+0x1e0>
 8005a94:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a98:	1a1b      	subs	r3, r3, r0
 8005a9a:	4407      	add	r7, r0
 8005a9c:	1a2d      	subs	r5, r5, r0
 8005a9e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005aa2:	2b00      	cmp	r3, #0
 8005aa4:	f000 80b0 	beq.w	8005c08 <__sfvwrite_r+0x1c8>
 8005aa8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005aac:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ab0:	454d      	cmp	r5, r9
 8005ab2:	462b      	mov	r3, r5
 8005ab4:	463a      	mov	r2, r7
 8005ab6:	bf28      	it	cs
 8005ab8:	464b      	movcs	r3, r9
 8005aba:	4661      	mov	r1, ip
 8005abc:	4650      	mov	r0, sl
 8005abe:	2d00      	cmp	r5, #0
 8005ac0:	d1e4      	bne.n	8005a8c <__sfvwrite_r+0x4c>
 8005ac2:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005ac6:	3608      	adds	r6, #8
 8005ac8:	e7d8      	b.n	8005a7c <__sfvwrite_r+0x3c>
 8005aca:	4621      	mov	r1, r4
 8005acc:	4650      	mov	r0, sl
 8005ace:	f7fe fd03 	bl	80044d8 <__swsetup_r>
 8005ad2:	2800      	cmp	r0, #0
 8005ad4:	f040 812a 	bne.w	8005d2c <__sfvwrite_r+0x2ec>
 8005ad8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005adc:	f8d8 6000 	ldr.w	r6, [r8]
 8005ae0:	b29b      	uxth	r3, r3
 8005ae2:	f013 0202 	ands.w	r2, r3, #2
 8005ae6:	d1c1      	bne.n	8005a6c <__sfvwrite_r+0x2c>
 8005ae8:	f013 0901 	ands.w	r9, r3, #1
 8005aec:	d15d      	bne.n	8005baa <__sfvwrite_r+0x16a>
 8005aee:	68a7      	ldr	r7, [r4, #8]
 8005af0:	6820      	ldr	r0, [r4, #0]
 8005af2:	464d      	mov	r5, r9
 8005af4:	2d00      	cmp	r5, #0
 8005af6:	d054      	beq.n	8005ba2 <__sfvwrite_r+0x162>
 8005af8:	059a      	lsls	r2, r3, #22
 8005afa:	f140 809b 	bpl.w	8005c34 <__sfvwrite_r+0x1f4>
 8005afe:	42af      	cmp	r7, r5
 8005b00:	46bb      	mov	fp, r7
 8005b02:	f200 80d8 	bhi.w	8005cb6 <__sfvwrite_r+0x276>
 8005b06:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005b0a:	d02f      	beq.n	8005b6c <__sfvwrite_r+0x12c>
 8005b0c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005b10:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005b14:	eba0 0b01 	sub.w	fp, r0, r1
 8005b18:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005b1c:	1c68      	adds	r0, r5, #1
 8005b1e:	107f      	asrs	r7, r7, #1
 8005b20:	4458      	add	r0, fp
 8005b22:	42b8      	cmp	r0, r7
 8005b24:	463a      	mov	r2, r7
 8005b26:	bf84      	itt	hi
 8005b28:	4607      	movhi	r7, r0
 8005b2a:	463a      	movhi	r2, r7
 8005b2c:	055b      	lsls	r3, r3, #21
 8005b2e:	f140 80d3 	bpl.w	8005cd8 <__sfvwrite_r+0x298>
 8005b32:	4611      	mov	r1, r2
 8005b34:	4650      	mov	r0, sl
 8005b36:	f000 f9b9 	bl	8005eac <_malloc_r>
 8005b3a:	2800      	cmp	r0, #0
 8005b3c:	f000 80f0 	beq.w	8005d20 <__sfvwrite_r+0x2e0>
 8005b40:	465a      	mov	r2, fp
 8005b42:	6921      	ldr	r1, [r4, #16]
 8005b44:	9001      	str	r0, [sp, #4]
 8005b46:	f7fb f947 	bl	8000dd8 <memcpy>
 8005b4a:	89a2      	ldrh	r2, [r4, #12]
 8005b4c:	9b01      	ldr	r3, [sp, #4]
 8005b4e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005b52:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005b56:	81a2      	strh	r2, [r4, #12]
 8005b58:	eba7 020b 	sub.w	r2, r7, fp
 8005b5c:	eb03 000b 	add.w	r0, r3, fp
 8005b60:	6167      	str	r7, [r4, #20]
 8005b62:	6123      	str	r3, [r4, #16]
 8005b64:	6020      	str	r0, [r4, #0]
 8005b66:	60a2      	str	r2, [r4, #8]
 8005b68:	462f      	mov	r7, r5
 8005b6a:	46ab      	mov	fp, r5
 8005b6c:	465a      	mov	r2, fp
 8005b6e:	4649      	mov	r1, r9
 8005b70:	f000 fc40 	bl	80063f4 <memmove>
 8005b74:	68a2      	ldr	r2, [r4, #8]
 8005b76:	6823      	ldr	r3, [r4, #0]
 8005b78:	1bd2      	subs	r2, r2, r7
 8005b7a:	445b      	add	r3, fp
 8005b7c:	462f      	mov	r7, r5
 8005b7e:	60a2      	str	r2, [r4, #8]
 8005b80:	6023      	str	r3, [r4, #0]
 8005b82:	2500      	movs	r5, #0
 8005b84:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b88:	1bdb      	subs	r3, r3, r7
 8005b8a:	44b9      	add	r9, r7
 8005b8c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b90:	2b00      	cmp	r3, #0
 8005b92:	d039      	beq.n	8005c08 <__sfvwrite_r+0x1c8>
 8005b94:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b98:	68a7      	ldr	r7, [r4, #8]
 8005b9a:	6820      	ldr	r0, [r4, #0]
 8005b9c:	b29b      	uxth	r3, r3
 8005b9e:	2d00      	cmp	r5, #0
 8005ba0:	d1aa      	bne.n	8005af8 <__sfvwrite_r+0xb8>
 8005ba2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005ba6:	3608      	adds	r6, #8
 8005ba8:	e7a4      	b.n	8005af4 <__sfvwrite_r+0xb4>
 8005baa:	4633      	mov	r3, r6
 8005bac:	4691      	mov	r9, r2
 8005bae:	4610      	mov	r0, r2
 8005bb0:	4617      	mov	r7, r2
 8005bb2:	464e      	mov	r6, r9
 8005bb4:	469b      	mov	fp, r3
 8005bb6:	2f00      	cmp	r7, #0
 8005bb8:	d06b      	beq.n	8005c92 <__sfvwrite_r+0x252>
 8005bba:	2800      	cmp	r0, #0
 8005bbc:	d071      	beq.n	8005ca2 <__sfvwrite_r+0x262>
 8005bbe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005bc2:	6820      	ldr	r0, [r4, #0]
 8005bc4:	45b9      	cmp	r9, r7
 8005bc6:	464b      	mov	r3, r9
 8005bc8:	bf28      	it	cs
 8005bca:	463b      	movcs	r3, r7
 8005bcc:	4288      	cmp	r0, r1
 8005bce:	d903      	bls.n	8005bd8 <__sfvwrite_r+0x198>
 8005bd0:	68a5      	ldr	r5, [r4, #8]
 8005bd2:	4415      	add	r5, r2
 8005bd4:	42ab      	cmp	r3, r5
 8005bd6:	dc71      	bgt.n	8005cbc <__sfvwrite_r+0x27c>
 8005bd8:	429a      	cmp	r2, r3
 8005bda:	f300 8093 	bgt.w	8005d04 <__sfvwrite_r+0x2c4>
 8005bde:	4613      	mov	r3, r2
 8005be0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005be2:	69e1      	ldr	r1, [r4, #28]
 8005be4:	4632      	mov	r2, r6
 8005be6:	4650      	mov	r0, sl
 8005be8:	47a8      	blx	r5
 8005bea:	1e05      	subs	r5, r0, #0
 8005bec:	dd18      	ble.n	8005c20 <__sfvwrite_r+0x1e0>
 8005bee:	ebb9 0905 	subs.w	r9, r9, r5
 8005bf2:	d00f      	beq.n	8005c14 <__sfvwrite_r+0x1d4>
 8005bf4:	2001      	movs	r0, #1
 8005bf6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005bfa:	1b5b      	subs	r3, r3, r5
 8005bfc:	442e      	add	r6, r5
 8005bfe:	1b7f      	subs	r7, r7, r5
 8005c00:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c04:	2b00      	cmp	r3, #0
 8005c06:	d1d6      	bne.n	8005bb6 <__sfvwrite_r+0x176>
 8005c08:	2000      	movs	r0, #0
 8005c0a:	b003      	add	sp, #12
 8005c0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c10:	2000      	movs	r0, #0
 8005c12:	4770      	bx	lr
 8005c14:	4621      	mov	r1, r4
 8005c16:	4650      	mov	r0, sl
 8005c18:	f7ff fd20 	bl	800565c <_fflush_r>
 8005c1c:	2800      	cmp	r0, #0
 8005c1e:	d0ea      	beq.n	8005bf6 <__sfvwrite_r+0x1b6>
 8005c20:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c24:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005c28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c2c:	81a3      	strh	r3, [r4, #12]
 8005c2e:	b003      	add	sp, #12
 8005c30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c34:	6923      	ldr	r3, [r4, #16]
 8005c36:	4283      	cmp	r3, r0
 8005c38:	d315      	bcc.n	8005c66 <__sfvwrite_r+0x226>
 8005c3a:	6961      	ldr	r1, [r4, #20]
 8005c3c:	42a9      	cmp	r1, r5
 8005c3e:	d812      	bhi.n	8005c66 <__sfvwrite_r+0x226>
 8005c40:	4b3c      	ldr	r3, [pc, #240]	; (8005d34 <__sfvwrite_r+0x2f4>)
 8005c42:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005c44:	429d      	cmp	r5, r3
 8005c46:	bf94      	ite	ls
 8005c48:	462b      	movls	r3, r5
 8005c4a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005c4e:	464a      	mov	r2, r9
 8005c50:	fb93 f3f1 	sdiv	r3, r3, r1
 8005c54:	4650      	mov	r0, sl
 8005c56:	fb01 f303 	mul.w	r3, r1, r3
 8005c5a:	69e1      	ldr	r1, [r4, #28]
 8005c5c:	47b8      	blx	r7
 8005c5e:	1e07      	subs	r7, r0, #0
 8005c60:	ddde      	ble.n	8005c20 <__sfvwrite_r+0x1e0>
 8005c62:	1bed      	subs	r5, r5, r7
 8005c64:	e78e      	b.n	8005b84 <__sfvwrite_r+0x144>
 8005c66:	42af      	cmp	r7, r5
 8005c68:	bf28      	it	cs
 8005c6a:	462f      	movcs	r7, r5
 8005c6c:	463a      	mov	r2, r7
 8005c6e:	4649      	mov	r1, r9
 8005c70:	f000 fbc0 	bl	80063f4 <memmove>
 8005c74:	68a3      	ldr	r3, [r4, #8]
 8005c76:	6822      	ldr	r2, [r4, #0]
 8005c78:	1bdb      	subs	r3, r3, r7
 8005c7a:	443a      	add	r2, r7
 8005c7c:	60a3      	str	r3, [r4, #8]
 8005c7e:	6022      	str	r2, [r4, #0]
 8005c80:	2b00      	cmp	r3, #0
 8005c82:	d1ee      	bne.n	8005c62 <__sfvwrite_r+0x222>
 8005c84:	4621      	mov	r1, r4
 8005c86:	4650      	mov	r0, sl
 8005c88:	f7ff fce8 	bl	800565c <_fflush_r>
 8005c8c:	2800      	cmp	r0, #0
 8005c8e:	d0e8      	beq.n	8005c62 <__sfvwrite_r+0x222>
 8005c90:	e7c6      	b.n	8005c20 <__sfvwrite_r+0x1e0>
 8005c92:	f10b 0308 	add.w	r3, fp, #8
 8005c96:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005c9a:	469b      	mov	fp, r3
 8005c9c:	3308      	adds	r3, #8
 8005c9e:	2f00      	cmp	r7, #0
 8005ca0:	d0f9      	beq.n	8005c96 <__sfvwrite_r+0x256>
 8005ca2:	463a      	mov	r2, r7
 8005ca4:	210a      	movs	r1, #10
 8005ca6:	4630      	mov	r0, r6
 8005ca8:	f7fb f9ba 	bl	8001020 <memchr>
 8005cac:	b338      	cbz	r0, 8005cfe <__sfvwrite_r+0x2be>
 8005cae:	3001      	adds	r0, #1
 8005cb0:	eba0 0906 	sub.w	r9, r0, r6
 8005cb4:	e783      	b.n	8005bbe <__sfvwrite_r+0x17e>
 8005cb6:	462f      	mov	r7, r5
 8005cb8:	46ab      	mov	fp, r5
 8005cba:	e757      	b.n	8005b6c <__sfvwrite_r+0x12c>
 8005cbc:	4631      	mov	r1, r6
 8005cbe:	462a      	mov	r2, r5
 8005cc0:	f000 fb98 	bl	80063f4 <memmove>
 8005cc4:	6823      	ldr	r3, [r4, #0]
 8005cc6:	442b      	add	r3, r5
 8005cc8:	6023      	str	r3, [r4, #0]
 8005cca:	4621      	mov	r1, r4
 8005ccc:	4650      	mov	r0, sl
 8005cce:	f7ff fcc5 	bl	800565c <_fflush_r>
 8005cd2:	2800      	cmp	r0, #0
 8005cd4:	d08b      	beq.n	8005bee <__sfvwrite_r+0x1ae>
 8005cd6:	e7a3      	b.n	8005c20 <__sfvwrite_r+0x1e0>
 8005cd8:	4650      	mov	r0, sl
 8005cda:	f000 ff05 	bl	8006ae8 <_realloc_r>
 8005cde:	4603      	mov	r3, r0
 8005ce0:	2800      	cmp	r0, #0
 8005ce2:	f47f af39 	bne.w	8005b58 <__sfvwrite_r+0x118>
 8005ce6:	6921      	ldr	r1, [r4, #16]
 8005ce8:	4650      	mov	r0, sl
 8005cea:	f7ff fdb5 	bl	8005858 <_free_r>
 8005cee:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005cf2:	220c      	movs	r2, #12
 8005cf4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005cf8:	f8ca 2000 	str.w	r2, [sl]
 8005cfc:	e792      	b.n	8005c24 <__sfvwrite_r+0x1e4>
 8005cfe:	f107 0901 	add.w	r9, r7, #1
 8005d02:	e75c      	b.n	8005bbe <__sfvwrite_r+0x17e>
 8005d04:	461a      	mov	r2, r3
 8005d06:	4631      	mov	r1, r6
 8005d08:	9301      	str	r3, [sp, #4]
 8005d0a:	f000 fb73 	bl	80063f4 <memmove>
 8005d0e:	9b01      	ldr	r3, [sp, #4]
 8005d10:	68a1      	ldr	r1, [r4, #8]
 8005d12:	6822      	ldr	r2, [r4, #0]
 8005d14:	1ac9      	subs	r1, r1, r3
 8005d16:	441a      	add	r2, r3
 8005d18:	60a1      	str	r1, [r4, #8]
 8005d1a:	6022      	str	r2, [r4, #0]
 8005d1c:	461d      	mov	r5, r3
 8005d1e:	e766      	b.n	8005bee <__sfvwrite_r+0x1ae>
 8005d20:	230c      	movs	r3, #12
 8005d22:	f8ca 3000 	str.w	r3, [sl]
 8005d26:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d2a:	e77b      	b.n	8005c24 <__sfvwrite_r+0x1e4>
 8005d2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005d30:	e76b      	b.n	8005c0a <__sfvwrite_r+0x1ca>
 8005d32:	bf00      	nop
 8005d34:	7ffffffe 	.word	0x7ffffffe
 8005d38:	7ffffc00 	.word	0x7ffffc00

08005d3c <_fwalk_reent>:
 8005d3c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005d40:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005d44:	d01f      	beq.n	8005d86 <_fwalk_reent+0x4a>
 8005d46:	4688      	mov	r8, r1
 8005d48:	4606      	mov	r6, r0
 8005d4a:	f04f 0900 	mov.w	r9, #0
 8005d4e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005d52:	3d01      	subs	r5, #1
 8005d54:	d411      	bmi.n	8005d7a <_fwalk_reent+0x3e>
 8005d56:	89a3      	ldrh	r3, [r4, #12]
 8005d58:	2b01      	cmp	r3, #1
 8005d5a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005d5e:	4621      	mov	r1, r4
 8005d60:	4630      	mov	r0, r6
 8005d62:	d906      	bls.n	8005d72 <_fwalk_reent+0x36>
 8005d64:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005d68:	3301      	adds	r3, #1
 8005d6a:	d002      	beq.n	8005d72 <_fwalk_reent+0x36>
 8005d6c:	47c0      	blx	r8
 8005d6e:	ea49 0900 	orr.w	r9, r9, r0
 8005d72:	1c6b      	adds	r3, r5, #1
 8005d74:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005d78:	d1ed      	bne.n	8005d56 <_fwalk_reent+0x1a>
 8005d7a:	683f      	ldr	r7, [r7, #0]
 8005d7c:	2f00      	cmp	r7, #0
 8005d7e:	d1e6      	bne.n	8005d4e <_fwalk_reent+0x12>
 8005d80:	4648      	mov	r0, r9
 8005d82:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005d86:	46b9      	mov	r9, r7
 8005d88:	4648      	mov	r0, r9
 8005d8a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005d8e:	bf00      	nop

08005d90 <_localeconv_r>:
 8005d90:	4a04      	ldr	r2, [pc, #16]	; (8005da4 <_localeconv_r+0x14>)
 8005d92:	4b05      	ldr	r3, [pc, #20]	; (8005da8 <_localeconv_r+0x18>)
 8005d94:	6812      	ldr	r2, [r2, #0]
 8005d96:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005d98:	2800      	cmp	r0, #0
 8005d9a:	bf08      	it	eq
 8005d9c:	4618      	moveq	r0, r3
 8005d9e:	30f0      	adds	r0, #240	; 0xf0
 8005da0:	4770      	bx	lr
 8005da2:	bf00      	nop
 8005da4:	2000001c 	.word	0x2000001c
 8005da8:	2000085c 	.word	0x2000085c

08005dac <__retarget_lock_init_recursive>:
 8005dac:	4770      	bx	lr
 8005dae:	bf00      	nop

08005db0 <__retarget_lock_close_recursive>:
 8005db0:	4770      	bx	lr
 8005db2:	bf00      	nop

08005db4 <__retarget_lock_acquire_recursive>:
 8005db4:	4770      	bx	lr
 8005db6:	bf00      	nop

08005db8 <__retarget_lock_release_recursive>:
 8005db8:	4770      	bx	lr
 8005dba:	bf00      	nop

08005dbc <__swhatbuf_r>:
 8005dbc:	b570      	push	{r4, r5, r6, lr}
 8005dbe:	460c      	mov	r4, r1
 8005dc0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005dc4:	2900      	cmp	r1, #0
 8005dc6:	b096      	sub	sp, #88	; 0x58
 8005dc8:	4615      	mov	r5, r2
 8005dca:	461e      	mov	r6, r3
 8005dcc:	da0f      	bge.n	8005dee <__swhatbuf_r+0x32>
 8005dce:	89a2      	ldrh	r2, [r4, #12]
 8005dd0:	2300      	movs	r3, #0
 8005dd2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005dd6:	6033      	str	r3, [r6, #0]
 8005dd8:	d104      	bne.n	8005de4 <__swhatbuf_r+0x28>
 8005dda:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005dde:	602b      	str	r3, [r5, #0]
 8005de0:	b016      	add	sp, #88	; 0x58
 8005de2:	bd70      	pop	{r4, r5, r6, pc}
 8005de4:	2240      	movs	r2, #64	; 0x40
 8005de6:	4618      	mov	r0, r3
 8005de8:	602a      	str	r2, [r5, #0]
 8005dea:	b016      	add	sp, #88	; 0x58
 8005dec:	bd70      	pop	{r4, r5, r6, pc}
 8005dee:	466a      	mov	r2, sp
 8005df0:	f001 fad0 	bl	8007394 <_fstat_r>
 8005df4:	2800      	cmp	r0, #0
 8005df6:	dbea      	blt.n	8005dce <__swhatbuf_r+0x12>
 8005df8:	9b01      	ldr	r3, [sp, #4]
 8005dfa:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005dfe:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e02:	fab3 f383 	clz	r3, r3
 8005e06:	095b      	lsrs	r3, r3, #5
 8005e08:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005e0c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005e10:	6033      	str	r3, [r6, #0]
 8005e12:	602a      	str	r2, [r5, #0]
 8005e14:	b016      	add	sp, #88	; 0x58
 8005e16:	bd70      	pop	{r4, r5, r6, pc}

08005e18 <__smakebuf_r>:
 8005e18:	898a      	ldrh	r2, [r1, #12]
 8005e1a:	0792      	lsls	r2, r2, #30
 8005e1c:	460b      	mov	r3, r1
 8005e1e:	d506      	bpl.n	8005e2e <__smakebuf_r+0x16>
 8005e20:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005e24:	2101      	movs	r1, #1
 8005e26:	601a      	str	r2, [r3, #0]
 8005e28:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005e2c:	4770      	bx	lr
 8005e2e:	b570      	push	{r4, r5, r6, lr}
 8005e30:	b082      	sub	sp, #8
 8005e32:	ab01      	add	r3, sp, #4
 8005e34:	466a      	mov	r2, sp
 8005e36:	460c      	mov	r4, r1
 8005e38:	4605      	mov	r5, r0
 8005e3a:	f7ff ffbf 	bl	8005dbc <__swhatbuf_r>
 8005e3e:	9900      	ldr	r1, [sp, #0]
 8005e40:	4606      	mov	r6, r0
 8005e42:	4628      	mov	r0, r5
 8005e44:	f000 f832 	bl	8005eac <_malloc_r>
 8005e48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e4c:	b1d8      	cbz	r0, 8005e86 <__smakebuf_r+0x6e>
 8005e4e:	4916      	ldr	r1, [pc, #88]	; (8005ea8 <__smakebuf_r+0x90>)
 8005e50:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005e52:	9a01      	ldr	r2, [sp, #4]
 8005e54:	9900      	ldr	r1, [sp, #0]
 8005e56:	6020      	str	r0, [r4, #0]
 8005e58:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005e5c:	81a3      	strh	r3, [r4, #12]
 8005e5e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005e62:	b91a      	cbnz	r2, 8005e6c <__smakebuf_r+0x54>
 8005e64:	4333      	orrs	r3, r6
 8005e66:	81a3      	strh	r3, [r4, #12]
 8005e68:	b002      	add	sp, #8
 8005e6a:	bd70      	pop	{r4, r5, r6, pc}
 8005e6c:	4628      	mov	r0, r5
 8005e6e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005e72:	f001 faa3 	bl	80073bc <_isatty_r>
 8005e76:	b1a0      	cbz	r0, 8005ea2 <__smakebuf_r+0x8a>
 8005e78:	89a3      	ldrh	r3, [r4, #12]
 8005e7a:	f023 0303 	bic.w	r3, r3, #3
 8005e7e:	f043 0301 	orr.w	r3, r3, #1
 8005e82:	b21b      	sxth	r3, r3
 8005e84:	e7ee      	b.n	8005e64 <__smakebuf_r+0x4c>
 8005e86:	059a      	lsls	r2, r3, #22
 8005e88:	d4ee      	bmi.n	8005e68 <__smakebuf_r+0x50>
 8005e8a:	f023 0303 	bic.w	r3, r3, #3
 8005e8e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005e92:	f043 0302 	orr.w	r3, r3, #2
 8005e96:	2101      	movs	r1, #1
 8005e98:	81a3      	strh	r3, [r4, #12]
 8005e9a:	6022      	str	r2, [r4, #0]
 8005e9c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005ea0:	e7e2      	b.n	8005e68 <__smakebuf_r+0x50>
 8005ea2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ea6:	e7dd      	b.n	8005e64 <__smakebuf_r+0x4c>
 8005ea8:	08005709 	.word	0x08005709

08005eac <_malloc_r>:
 8005eac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005eb0:	f101 050b 	add.w	r5, r1, #11
 8005eb4:	2d16      	cmp	r5, #22
 8005eb6:	b083      	sub	sp, #12
 8005eb8:	4606      	mov	r6, r0
 8005eba:	d823      	bhi.n	8005f04 <_malloc_r+0x58>
 8005ebc:	2910      	cmp	r1, #16
 8005ebe:	f200 80b9 	bhi.w	8006034 <_malloc_r+0x188>
 8005ec2:	f000 fafb 	bl	80064bc <__malloc_lock>
 8005ec6:	2510      	movs	r5, #16
 8005ec8:	2318      	movs	r3, #24
 8005eca:	2002      	movs	r0, #2
 8005ecc:	4fc5      	ldr	r7, [pc, #788]	; (80061e4 <_malloc_r+0x338>)
 8005ece:	443b      	add	r3, r7
 8005ed0:	f1a3 0208 	sub.w	r2, r3, #8
 8005ed4:	685c      	ldr	r4, [r3, #4]
 8005ed6:	4294      	cmp	r4, r2
 8005ed8:	f000 8166 	beq.w	80061a8 <_malloc_r+0x2fc>
 8005edc:	6863      	ldr	r3, [r4, #4]
 8005ede:	f023 0303 	bic.w	r3, r3, #3
 8005ee2:	4423      	add	r3, r4
 8005ee4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005ee8:	685a      	ldr	r2, [r3, #4]
 8005eea:	60e9      	str	r1, [r5, #12]
 8005eec:	f042 0201 	orr.w	r2, r2, #1
 8005ef0:	608d      	str	r5, [r1, #8]
 8005ef2:	4630      	mov	r0, r6
 8005ef4:	605a      	str	r2, [r3, #4]
 8005ef6:	f000 fae7 	bl	80064c8 <__malloc_unlock>
 8005efa:	3408      	adds	r4, #8
 8005efc:	4620      	mov	r0, r4
 8005efe:	b003      	add	sp, #12
 8005f00:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f04:	f035 0507 	bics.w	r5, r5, #7
 8005f08:	f100 8094 	bmi.w	8006034 <_malloc_r+0x188>
 8005f0c:	42a9      	cmp	r1, r5
 8005f0e:	f200 8091 	bhi.w	8006034 <_malloc_r+0x188>
 8005f12:	f000 fad3 	bl	80064bc <__malloc_lock>
 8005f16:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005f1a:	f0c0 8183 	bcc.w	8006224 <_malloc_r+0x378>
 8005f1e:	0a6b      	lsrs	r3, r5, #9
 8005f20:	f000 808f 	beq.w	8006042 <_malloc_r+0x196>
 8005f24:	2b04      	cmp	r3, #4
 8005f26:	f200 8146 	bhi.w	80061b6 <_malloc_r+0x30a>
 8005f2a:	09ab      	lsrs	r3, r5, #6
 8005f2c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005f30:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005f34:	00c3      	lsls	r3, r0, #3
 8005f36:	4fab      	ldr	r7, [pc, #684]	; (80061e4 <_malloc_r+0x338>)
 8005f38:	443b      	add	r3, r7
 8005f3a:	f1a3 0108 	sub.w	r1, r3, #8
 8005f3e:	685c      	ldr	r4, [r3, #4]
 8005f40:	42a1      	cmp	r1, r4
 8005f42:	d106      	bne.n	8005f52 <_malloc_r+0xa6>
 8005f44:	e00c      	b.n	8005f60 <_malloc_r+0xb4>
 8005f46:	2a00      	cmp	r2, #0
 8005f48:	f280 811d 	bge.w	8006186 <_malloc_r+0x2da>
 8005f4c:	68e4      	ldr	r4, [r4, #12]
 8005f4e:	42a1      	cmp	r1, r4
 8005f50:	d006      	beq.n	8005f60 <_malloc_r+0xb4>
 8005f52:	6863      	ldr	r3, [r4, #4]
 8005f54:	f023 0303 	bic.w	r3, r3, #3
 8005f58:	1b5a      	subs	r2, r3, r5
 8005f5a:	2a0f      	cmp	r2, #15
 8005f5c:	ddf3      	ble.n	8005f46 <_malloc_r+0x9a>
 8005f5e:	4660      	mov	r0, ip
 8005f60:	693c      	ldr	r4, [r7, #16]
 8005f62:	f8df c294 	ldr.w	ip, [pc, #660]	; 80061f8 <_malloc_r+0x34c>
 8005f66:	4564      	cmp	r4, ip
 8005f68:	d071      	beq.n	800604e <_malloc_r+0x1a2>
 8005f6a:	6863      	ldr	r3, [r4, #4]
 8005f6c:	f023 0303 	bic.w	r3, r3, #3
 8005f70:	1b5a      	subs	r2, r3, r5
 8005f72:	2a0f      	cmp	r2, #15
 8005f74:	f300 8144 	bgt.w	8006200 <_malloc_r+0x354>
 8005f78:	2a00      	cmp	r2, #0
 8005f7a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005f7e:	f280 8126 	bge.w	80061ce <_malloc_r+0x322>
 8005f82:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005f86:	f080 8169 	bcs.w	800625c <_malloc_r+0x3b0>
 8005f8a:	08db      	lsrs	r3, r3, #3
 8005f8c:	1c59      	adds	r1, r3, #1
 8005f8e:	687a      	ldr	r2, [r7, #4]
 8005f90:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005f94:	f8c4 8008 	str.w	r8, [r4, #8]
 8005f98:	f04f 0e01 	mov.w	lr, #1
 8005f9c:	109b      	asrs	r3, r3, #2
 8005f9e:	fa0e f303 	lsl.w	r3, lr, r3
 8005fa2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005fa6:	4313      	orrs	r3, r2
 8005fa8:	f1ae 0208 	sub.w	r2, lr, #8
 8005fac:	60e2      	str	r2, [r4, #12]
 8005fae:	607b      	str	r3, [r7, #4]
 8005fb0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005fb4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005fb8:	1082      	asrs	r2, r0, #2
 8005fba:	2401      	movs	r4, #1
 8005fbc:	4094      	lsls	r4, r2
 8005fbe:	429c      	cmp	r4, r3
 8005fc0:	d84b      	bhi.n	800605a <_malloc_r+0x1ae>
 8005fc2:	421c      	tst	r4, r3
 8005fc4:	d106      	bne.n	8005fd4 <_malloc_r+0x128>
 8005fc6:	f020 0003 	bic.w	r0, r0, #3
 8005fca:	0064      	lsls	r4, r4, #1
 8005fcc:	421c      	tst	r4, r3
 8005fce:	f100 0004 	add.w	r0, r0, #4
 8005fd2:	d0fa      	beq.n	8005fca <_malloc_r+0x11e>
 8005fd4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005fd8:	46ce      	mov	lr, r9
 8005fda:	4680      	mov	r8, r0
 8005fdc:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005fe0:	459e      	cmp	lr, r3
 8005fe2:	d107      	bne.n	8005ff4 <_malloc_r+0x148>
 8005fe4:	e122      	b.n	800622c <_malloc_r+0x380>
 8005fe6:	2a00      	cmp	r2, #0
 8005fe8:	f280 8129 	bge.w	800623e <_malloc_r+0x392>
 8005fec:	68db      	ldr	r3, [r3, #12]
 8005fee:	459e      	cmp	lr, r3
 8005ff0:	f000 811c 	beq.w	800622c <_malloc_r+0x380>
 8005ff4:	6859      	ldr	r1, [r3, #4]
 8005ff6:	f021 0103 	bic.w	r1, r1, #3
 8005ffa:	1b4a      	subs	r2, r1, r5
 8005ffc:	2a0f      	cmp	r2, #15
 8005ffe:	ddf2      	ble.n	8005fe6 <_malloc_r+0x13a>
 8006000:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006004:	195c      	adds	r4, r3, r5
 8006006:	f045 0501 	orr.w	r5, r5, #1
 800600a:	605d      	str	r5, [r3, #4]
 800600c:	f042 0501 	orr.w	r5, r2, #1
 8006010:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006014:	4630      	mov	r0, r6
 8006016:	f8ce 8008 	str.w	r8, [lr, #8]
 800601a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800601e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006022:	6065      	str	r5, [r4, #4]
 8006024:	505a      	str	r2, [r3, r1]
 8006026:	9301      	str	r3, [sp, #4]
 8006028:	f000 fa4e 	bl	80064c8 <__malloc_unlock>
 800602c:	9b01      	ldr	r3, [sp, #4]
 800602e:	f103 0408 	add.w	r4, r3, #8
 8006032:	e763      	b.n	8005efc <_malloc_r+0x50>
 8006034:	2400      	movs	r4, #0
 8006036:	230c      	movs	r3, #12
 8006038:	4620      	mov	r0, r4
 800603a:	6033      	str	r3, [r6, #0]
 800603c:	b003      	add	sp, #12
 800603e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006042:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006046:	2040      	movs	r0, #64	; 0x40
 8006048:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800604c:	e773      	b.n	8005f36 <_malloc_r+0x8a>
 800604e:	687b      	ldr	r3, [r7, #4]
 8006050:	1082      	asrs	r2, r0, #2
 8006052:	2401      	movs	r4, #1
 8006054:	4094      	lsls	r4, r2
 8006056:	429c      	cmp	r4, r3
 8006058:	d9b3      	bls.n	8005fc2 <_malloc_r+0x116>
 800605a:	68bc      	ldr	r4, [r7, #8]
 800605c:	6863      	ldr	r3, [r4, #4]
 800605e:	f023 0903 	bic.w	r9, r3, #3
 8006062:	45a9      	cmp	r9, r5
 8006064:	d303      	bcc.n	800606e <_malloc_r+0x1c2>
 8006066:	eba9 0305 	sub.w	r3, r9, r5
 800606a:	2b0f      	cmp	r3, #15
 800606c:	dc7b      	bgt.n	8006166 <_malloc_r+0x2ba>
 800606e:	4b5e      	ldr	r3, [pc, #376]	; (80061e8 <_malloc_r+0x33c>)
 8006070:	f8df a188 	ldr.w	sl, [pc, #392]	; 80061fc <_malloc_r+0x350>
 8006074:	681a      	ldr	r2, [r3, #0]
 8006076:	f8da 3000 	ldr.w	r3, [sl]
 800607a:	3301      	adds	r3, #1
 800607c:	eb05 0802 	add.w	r8, r5, r2
 8006080:	f000 8148 	beq.w	8006314 <_malloc_r+0x468>
 8006084:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006088:	f108 080f 	add.w	r8, r8, #15
 800608c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006090:	f028 080f 	bic.w	r8, r8, #15
 8006094:	4641      	mov	r1, r8
 8006096:	4630      	mov	r0, r6
 8006098:	f000 ff08 	bl	8006eac <_sbrk_r>
 800609c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80060a0:	4683      	mov	fp, r0
 80060a2:	f000 8104 	beq.w	80062ae <_malloc_r+0x402>
 80060a6:	eb04 0009 	add.w	r0, r4, r9
 80060aa:	4558      	cmp	r0, fp
 80060ac:	f200 80fd 	bhi.w	80062aa <_malloc_r+0x3fe>
 80060b0:	4a4e      	ldr	r2, [pc, #312]	; (80061ec <_malloc_r+0x340>)
 80060b2:	6813      	ldr	r3, [r2, #0]
 80060b4:	4443      	add	r3, r8
 80060b6:	6013      	str	r3, [r2, #0]
 80060b8:	f000 814d 	beq.w	8006356 <_malloc_r+0x4aa>
 80060bc:	f8da 1000 	ldr.w	r1, [sl]
 80060c0:	3101      	adds	r1, #1
 80060c2:	bf1b      	ittet	ne
 80060c4:	ebab 0000 	subne.w	r0, fp, r0
 80060c8:	181b      	addne	r3, r3, r0
 80060ca:	f8ca b000 	streq.w	fp, [sl]
 80060ce:	6013      	strne	r3, [r2, #0]
 80060d0:	f01b 0307 	ands.w	r3, fp, #7
 80060d4:	f000 8134 	beq.w	8006340 <_malloc_r+0x494>
 80060d8:	f1c3 0108 	rsb	r1, r3, #8
 80060dc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80060e0:	448b      	add	fp, r1
 80060e2:	3308      	adds	r3, #8
 80060e4:	44d8      	add	r8, fp
 80060e6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80060ea:	eba3 0808 	sub.w	r8, r3, r8
 80060ee:	4641      	mov	r1, r8
 80060f0:	4630      	mov	r0, r6
 80060f2:	9201      	str	r2, [sp, #4]
 80060f4:	f000 feda 	bl	8006eac <_sbrk_r>
 80060f8:	1c43      	adds	r3, r0, #1
 80060fa:	9a01      	ldr	r2, [sp, #4]
 80060fc:	f000 8146 	beq.w	800638c <_malloc_r+0x4e0>
 8006100:	eba0 010b 	sub.w	r1, r0, fp
 8006104:	4441      	add	r1, r8
 8006106:	f041 0101 	orr.w	r1, r1, #1
 800610a:	6813      	ldr	r3, [r2, #0]
 800610c:	f8c7 b008 	str.w	fp, [r7, #8]
 8006110:	4443      	add	r3, r8
 8006112:	42bc      	cmp	r4, r7
 8006114:	f8cb 1004 	str.w	r1, [fp, #4]
 8006118:	6013      	str	r3, [r2, #0]
 800611a:	d015      	beq.n	8006148 <_malloc_r+0x29c>
 800611c:	f1b9 0f0f 	cmp.w	r9, #15
 8006120:	f240 8130 	bls.w	8006384 <_malloc_r+0x4d8>
 8006124:	6860      	ldr	r0, [r4, #4]
 8006126:	f1a9 010c 	sub.w	r1, r9, #12
 800612a:	f021 0107 	bic.w	r1, r1, #7
 800612e:	f000 0001 	and.w	r0, r0, #1
 8006132:	eb04 0c01 	add.w	ip, r4, r1
 8006136:	4308      	orrs	r0, r1
 8006138:	f04f 0e05 	mov.w	lr, #5
 800613c:	290f      	cmp	r1, #15
 800613e:	6060      	str	r0, [r4, #4]
 8006140:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006144:	f200 813a 	bhi.w	80063bc <_malloc_r+0x510>
 8006148:	4a29      	ldr	r2, [pc, #164]	; (80061f0 <_malloc_r+0x344>)
 800614a:	482a      	ldr	r0, [pc, #168]	; (80061f4 <_malloc_r+0x348>)
 800614c:	6811      	ldr	r1, [r2, #0]
 800614e:	68bc      	ldr	r4, [r7, #8]
 8006150:	428b      	cmp	r3, r1
 8006152:	6801      	ldr	r1, [r0, #0]
 8006154:	bf88      	it	hi
 8006156:	6013      	strhi	r3, [r2, #0]
 8006158:	6862      	ldr	r2, [r4, #4]
 800615a:	428b      	cmp	r3, r1
 800615c:	f022 0203 	bic.w	r2, r2, #3
 8006160:	bf88      	it	hi
 8006162:	6003      	strhi	r3, [r0, #0]
 8006164:	e0a7      	b.n	80062b6 <_malloc_r+0x40a>
 8006166:	1962      	adds	r2, r4, r5
 8006168:	f043 0301 	orr.w	r3, r3, #1
 800616c:	f045 0501 	orr.w	r5, r5, #1
 8006170:	6065      	str	r5, [r4, #4]
 8006172:	4630      	mov	r0, r6
 8006174:	60ba      	str	r2, [r7, #8]
 8006176:	6053      	str	r3, [r2, #4]
 8006178:	f000 f9a6 	bl	80064c8 <__malloc_unlock>
 800617c:	3408      	adds	r4, #8
 800617e:	4620      	mov	r0, r4
 8006180:	b003      	add	sp, #12
 8006182:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006186:	4423      	add	r3, r4
 8006188:	68e1      	ldr	r1, [r4, #12]
 800618a:	685a      	ldr	r2, [r3, #4]
 800618c:	68a5      	ldr	r5, [r4, #8]
 800618e:	f042 0201 	orr.w	r2, r2, #1
 8006192:	60e9      	str	r1, [r5, #12]
 8006194:	4630      	mov	r0, r6
 8006196:	608d      	str	r5, [r1, #8]
 8006198:	605a      	str	r2, [r3, #4]
 800619a:	f000 f995 	bl	80064c8 <__malloc_unlock>
 800619e:	3408      	adds	r4, #8
 80061a0:	4620      	mov	r0, r4
 80061a2:	b003      	add	sp, #12
 80061a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061a8:	68dc      	ldr	r4, [r3, #12]
 80061aa:	42a3      	cmp	r3, r4
 80061ac:	bf08      	it	eq
 80061ae:	3002      	addeq	r0, #2
 80061b0:	f43f aed6 	beq.w	8005f60 <_malloc_r+0xb4>
 80061b4:	e692      	b.n	8005edc <_malloc_r+0x30>
 80061b6:	2b14      	cmp	r3, #20
 80061b8:	d971      	bls.n	800629e <_malloc_r+0x3f2>
 80061ba:	2b54      	cmp	r3, #84	; 0x54
 80061bc:	f200 80ad 	bhi.w	800631a <_malloc_r+0x46e>
 80061c0:	0b2b      	lsrs	r3, r5, #12
 80061c2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80061c6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80061ca:	00c3      	lsls	r3, r0, #3
 80061cc:	e6b3      	b.n	8005f36 <_malloc_r+0x8a>
 80061ce:	4423      	add	r3, r4
 80061d0:	4630      	mov	r0, r6
 80061d2:	685a      	ldr	r2, [r3, #4]
 80061d4:	f042 0201 	orr.w	r2, r2, #1
 80061d8:	605a      	str	r2, [r3, #4]
 80061da:	3408      	adds	r4, #8
 80061dc:	f000 f974 	bl	80064c8 <__malloc_unlock>
 80061e0:	e68c      	b.n	8005efc <_malloc_r+0x50>
 80061e2:	bf00      	nop
 80061e4:	2000044c 	.word	0x2000044c
 80061e8:	20000a9c 	.word	0x20000a9c
 80061ec:	20000a6c 	.word	0x20000a6c
 80061f0:	20000a94 	.word	0x20000a94
 80061f4:	20000a98 	.word	0x20000a98
 80061f8:	20000454 	.word	0x20000454
 80061fc:	20000854 	.word	0x20000854
 8006200:	1961      	adds	r1, r4, r5
 8006202:	f045 0e01 	orr.w	lr, r5, #1
 8006206:	f042 0501 	orr.w	r5, r2, #1
 800620a:	f8c4 e004 	str.w	lr, [r4, #4]
 800620e:	4630      	mov	r0, r6
 8006210:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006214:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006218:	604d      	str	r5, [r1, #4]
 800621a:	50e2      	str	r2, [r4, r3]
 800621c:	f000 f954 	bl	80064c8 <__malloc_unlock>
 8006220:	3408      	adds	r4, #8
 8006222:	e66b      	b.n	8005efc <_malloc_r+0x50>
 8006224:	08e8      	lsrs	r0, r5, #3
 8006226:	f105 0308 	add.w	r3, r5, #8
 800622a:	e64f      	b.n	8005ecc <_malloc_r+0x20>
 800622c:	f108 0801 	add.w	r8, r8, #1
 8006230:	f018 0f03 	tst.w	r8, #3
 8006234:	f10e 0e08 	add.w	lr, lr, #8
 8006238:	f47f aed0 	bne.w	8005fdc <_malloc_r+0x130>
 800623c:	e052      	b.n	80062e4 <_malloc_r+0x438>
 800623e:	4419      	add	r1, r3
 8006240:	461c      	mov	r4, r3
 8006242:	684a      	ldr	r2, [r1, #4]
 8006244:	68db      	ldr	r3, [r3, #12]
 8006246:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800624a:	f042 0201 	orr.w	r2, r2, #1
 800624e:	604a      	str	r2, [r1, #4]
 8006250:	4630      	mov	r0, r6
 8006252:	60eb      	str	r3, [r5, #12]
 8006254:	609d      	str	r5, [r3, #8]
 8006256:	f000 f937 	bl	80064c8 <__malloc_unlock>
 800625a:	e64f      	b.n	8005efc <_malloc_r+0x50>
 800625c:	0a5a      	lsrs	r2, r3, #9
 800625e:	2a04      	cmp	r2, #4
 8006260:	d935      	bls.n	80062ce <_malloc_r+0x422>
 8006262:	2a14      	cmp	r2, #20
 8006264:	d86f      	bhi.n	8006346 <_malloc_r+0x49a>
 8006266:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800626a:	00c9      	lsls	r1, r1, #3
 800626c:	325b      	adds	r2, #91	; 0x5b
 800626e:	eb07 0e01 	add.w	lr, r7, r1
 8006272:	5879      	ldr	r1, [r7, r1]
 8006274:	f1ae 0e08 	sub.w	lr, lr, #8
 8006278:	458e      	cmp	lr, r1
 800627a:	d058      	beq.n	800632e <_malloc_r+0x482>
 800627c:	684a      	ldr	r2, [r1, #4]
 800627e:	f022 0203 	bic.w	r2, r2, #3
 8006282:	429a      	cmp	r2, r3
 8006284:	d902      	bls.n	800628c <_malloc_r+0x3e0>
 8006286:	6889      	ldr	r1, [r1, #8]
 8006288:	458e      	cmp	lr, r1
 800628a:	d1f7      	bne.n	800627c <_malloc_r+0x3d0>
 800628c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006290:	687b      	ldr	r3, [r7, #4]
 8006292:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006296:	f8ce 4008 	str.w	r4, [lr, #8]
 800629a:	60cc      	str	r4, [r1, #12]
 800629c:	e68c      	b.n	8005fb8 <_malloc_r+0x10c>
 800629e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80062a2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80062a6:	00c3      	lsls	r3, r0, #3
 80062a8:	e645      	b.n	8005f36 <_malloc_r+0x8a>
 80062aa:	42bc      	cmp	r4, r7
 80062ac:	d072      	beq.n	8006394 <_malloc_r+0x4e8>
 80062ae:	68bc      	ldr	r4, [r7, #8]
 80062b0:	6862      	ldr	r2, [r4, #4]
 80062b2:	f022 0203 	bic.w	r2, r2, #3
 80062b6:	4295      	cmp	r5, r2
 80062b8:	eba2 0305 	sub.w	r3, r2, r5
 80062bc:	d802      	bhi.n	80062c4 <_malloc_r+0x418>
 80062be:	2b0f      	cmp	r3, #15
 80062c0:	f73f af51 	bgt.w	8006166 <_malloc_r+0x2ba>
 80062c4:	4630      	mov	r0, r6
 80062c6:	f000 f8ff 	bl	80064c8 <__malloc_unlock>
 80062ca:	2400      	movs	r4, #0
 80062cc:	e616      	b.n	8005efc <_malloc_r+0x50>
 80062ce:	099a      	lsrs	r2, r3, #6
 80062d0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80062d4:	00c9      	lsls	r1, r1, #3
 80062d6:	3238      	adds	r2, #56	; 0x38
 80062d8:	e7c9      	b.n	800626e <_malloc_r+0x3c2>
 80062da:	f8d9 9000 	ldr.w	r9, [r9]
 80062de:	4599      	cmp	r9, r3
 80062e0:	f040 8083 	bne.w	80063ea <_malloc_r+0x53e>
 80062e4:	f010 0f03 	tst.w	r0, #3
 80062e8:	f1a9 0308 	sub.w	r3, r9, #8
 80062ec:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80062f0:	d1f3      	bne.n	80062da <_malloc_r+0x42e>
 80062f2:	687b      	ldr	r3, [r7, #4]
 80062f4:	ea23 0304 	bic.w	r3, r3, r4
 80062f8:	607b      	str	r3, [r7, #4]
 80062fa:	0064      	lsls	r4, r4, #1
 80062fc:	429c      	cmp	r4, r3
 80062fe:	f63f aeac 	bhi.w	800605a <_malloc_r+0x1ae>
 8006302:	b91c      	cbnz	r4, 800630c <_malloc_r+0x460>
 8006304:	e6a9      	b.n	800605a <_malloc_r+0x1ae>
 8006306:	0064      	lsls	r4, r4, #1
 8006308:	f108 0804 	add.w	r8, r8, #4
 800630c:	421c      	tst	r4, r3
 800630e:	d0fa      	beq.n	8006306 <_malloc_r+0x45a>
 8006310:	4640      	mov	r0, r8
 8006312:	e65f      	b.n	8005fd4 <_malloc_r+0x128>
 8006314:	f108 0810 	add.w	r8, r8, #16
 8006318:	e6bc      	b.n	8006094 <_malloc_r+0x1e8>
 800631a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800631e:	d826      	bhi.n	800636e <_malloc_r+0x4c2>
 8006320:	0beb      	lsrs	r3, r5, #15
 8006322:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006326:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800632a:	00c3      	lsls	r3, r0, #3
 800632c:	e603      	b.n	8005f36 <_malloc_r+0x8a>
 800632e:	687b      	ldr	r3, [r7, #4]
 8006330:	1092      	asrs	r2, r2, #2
 8006332:	f04f 0801 	mov.w	r8, #1
 8006336:	fa08 f202 	lsl.w	r2, r8, r2
 800633a:	4313      	orrs	r3, r2
 800633c:	607b      	str	r3, [r7, #4]
 800633e:	e7a8      	b.n	8006292 <_malloc_r+0x3e6>
 8006340:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006344:	e6ce      	b.n	80060e4 <_malloc_r+0x238>
 8006346:	2a54      	cmp	r2, #84	; 0x54
 8006348:	d829      	bhi.n	800639e <_malloc_r+0x4f2>
 800634a:	0b1a      	lsrs	r2, r3, #12
 800634c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006350:	00c9      	lsls	r1, r1, #3
 8006352:	326e      	adds	r2, #110	; 0x6e
 8006354:	e78b      	b.n	800626e <_malloc_r+0x3c2>
 8006356:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800635a:	2900      	cmp	r1, #0
 800635c:	f47f aeae 	bne.w	80060bc <_malloc_r+0x210>
 8006360:	eb09 0208 	add.w	r2, r9, r8
 8006364:	68b9      	ldr	r1, [r7, #8]
 8006366:	f042 0201 	orr.w	r2, r2, #1
 800636a:	604a      	str	r2, [r1, #4]
 800636c:	e6ec      	b.n	8006148 <_malloc_r+0x29c>
 800636e:	f240 5254 	movw	r2, #1364	; 0x554
 8006372:	4293      	cmp	r3, r2
 8006374:	d81c      	bhi.n	80063b0 <_malloc_r+0x504>
 8006376:	0cab      	lsrs	r3, r5, #18
 8006378:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800637c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006380:	00c3      	lsls	r3, r0, #3
 8006382:	e5d8      	b.n	8005f36 <_malloc_r+0x8a>
 8006384:	2301      	movs	r3, #1
 8006386:	f8cb 3004 	str.w	r3, [fp, #4]
 800638a:	e79b      	b.n	80062c4 <_malloc_r+0x418>
 800638c:	2101      	movs	r1, #1
 800638e:	f04f 0800 	mov.w	r8, #0
 8006392:	e6ba      	b.n	800610a <_malloc_r+0x25e>
 8006394:	4a16      	ldr	r2, [pc, #88]	; (80063f0 <_malloc_r+0x544>)
 8006396:	6813      	ldr	r3, [r2, #0]
 8006398:	4443      	add	r3, r8
 800639a:	6013      	str	r3, [r2, #0]
 800639c:	e68e      	b.n	80060bc <_malloc_r+0x210>
 800639e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80063a2:	d814      	bhi.n	80063ce <_malloc_r+0x522>
 80063a4:	0bda      	lsrs	r2, r3, #15
 80063a6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80063aa:	00c9      	lsls	r1, r1, #3
 80063ac:	3277      	adds	r2, #119	; 0x77
 80063ae:	e75e      	b.n	800626e <_malloc_r+0x3c2>
 80063b0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80063b4:	207f      	movs	r0, #127	; 0x7f
 80063b6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80063ba:	e5bc      	b.n	8005f36 <_malloc_r+0x8a>
 80063bc:	f104 0108 	add.w	r1, r4, #8
 80063c0:	4630      	mov	r0, r6
 80063c2:	9201      	str	r2, [sp, #4]
 80063c4:	f7ff fa48 	bl	8005858 <_free_r>
 80063c8:	9a01      	ldr	r2, [sp, #4]
 80063ca:	6813      	ldr	r3, [r2, #0]
 80063cc:	e6bc      	b.n	8006148 <_malloc_r+0x29c>
 80063ce:	f240 5154 	movw	r1, #1364	; 0x554
 80063d2:	428a      	cmp	r2, r1
 80063d4:	d805      	bhi.n	80063e2 <_malloc_r+0x536>
 80063d6:	0c9a      	lsrs	r2, r3, #18
 80063d8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80063dc:	00c9      	lsls	r1, r1, #3
 80063de:	327c      	adds	r2, #124	; 0x7c
 80063e0:	e745      	b.n	800626e <_malloc_r+0x3c2>
 80063e2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80063e6:	227e      	movs	r2, #126	; 0x7e
 80063e8:	e741      	b.n	800626e <_malloc_r+0x3c2>
 80063ea:	687b      	ldr	r3, [r7, #4]
 80063ec:	e785      	b.n	80062fa <_malloc_r+0x44e>
 80063ee:	bf00      	nop
 80063f0:	20000a6c 	.word	0x20000a6c

080063f4 <memmove>:
 80063f4:	4288      	cmp	r0, r1
 80063f6:	b4f0      	push	{r4, r5, r6, r7}
 80063f8:	d90d      	bls.n	8006416 <memmove+0x22>
 80063fa:	188b      	adds	r3, r1, r2
 80063fc:	4283      	cmp	r3, r0
 80063fe:	d90a      	bls.n	8006416 <memmove+0x22>
 8006400:	1884      	adds	r4, r0, r2
 8006402:	b132      	cbz	r2, 8006412 <memmove+0x1e>
 8006404:	4622      	mov	r2, r4
 8006406:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800640a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800640e:	4299      	cmp	r1, r3
 8006410:	d1f9      	bne.n	8006406 <memmove+0x12>
 8006412:	bcf0      	pop	{r4, r5, r6, r7}
 8006414:	4770      	bx	lr
 8006416:	2a0f      	cmp	r2, #15
 8006418:	d949      	bls.n	80064ae <memmove+0xba>
 800641a:	ea40 0301 	orr.w	r3, r0, r1
 800641e:	079b      	lsls	r3, r3, #30
 8006420:	d147      	bne.n	80064b2 <memmove+0xbe>
 8006422:	f1a2 0310 	sub.w	r3, r2, #16
 8006426:	091b      	lsrs	r3, r3, #4
 8006428:	f101 0720 	add.w	r7, r1, #32
 800642c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006430:	f101 0410 	add.w	r4, r1, #16
 8006434:	f100 0510 	add.w	r5, r0, #16
 8006438:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800643c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006440:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006444:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006448:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800644c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006450:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006454:	f845 6c04 	str.w	r6, [r5, #-4]
 8006458:	3410      	adds	r4, #16
 800645a:	42bc      	cmp	r4, r7
 800645c:	f105 0510 	add.w	r5, r5, #16
 8006460:	d1ea      	bne.n	8006438 <memmove+0x44>
 8006462:	3301      	adds	r3, #1
 8006464:	f002 050f 	and.w	r5, r2, #15
 8006468:	011b      	lsls	r3, r3, #4
 800646a:	2d03      	cmp	r5, #3
 800646c:	4419      	add	r1, r3
 800646e:	4403      	add	r3, r0
 8006470:	d921      	bls.n	80064b6 <memmove+0xc2>
 8006472:	1f1f      	subs	r7, r3, #4
 8006474:	460e      	mov	r6, r1
 8006476:	462c      	mov	r4, r5
 8006478:	3c04      	subs	r4, #4
 800647a:	f856 cb04 	ldr.w	ip, [r6], #4
 800647e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006482:	2c03      	cmp	r4, #3
 8006484:	d8f8      	bhi.n	8006478 <memmove+0x84>
 8006486:	1f2c      	subs	r4, r5, #4
 8006488:	f024 0403 	bic.w	r4, r4, #3
 800648c:	3404      	adds	r4, #4
 800648e:	4423      	add	r3, r4
 8006490:	4421      	add	r1, r4
 8006492:	f002 0203 	and.w	r2, r2, #3
 8006496:	2a00      	cmp	r2, #0
 8006498:	d0bb      	beq.n	8006412 <memmove+0x1e>
 800649a:	3b01      	subs	r3, #1
 800649c:	440a      	add	r2, r1
 800649e:	f811 4b01 	ldrb.w	r4, [r1], #1
 80064a2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80064a6:	4291      	cmp	r1, r2
 80064a8:	d1f9      	bne.n	800649e <memmove+0xaa>
 80064aa:	bcf0      	pop	{r4, r5, r6, r7}
 80064ac:	4770      	bx	lr
 80064ae:	4603      	mov	r3, r0
 80064b0:	e7f1      	b.n	8006496 <memmove+0xa2>
 80064b2:	4603      	mov	r3, r0
 80064b4:	e7f1      	b.n	800649a <memmove+0xa6>
 80064b6:	462a      	mov	r2, r5
 80064b8:	e7ed      	b.n	8006496 <memmove+0xa2>
 80064ba:	bf00      	nop

080064bc <__malloc_lock>:
 80064bc:	4801      	ldr	r0, [pc, #4]	; (80064c4 <__malloc_lock+0x8>)
 80064be:	f7ff bc79 	b.w	8005db4 <__retarget_lock_acquire_recursive>
 80064c2:	bf00      	nop
 80064c4:	20001158 	.word	0x20001158

080064c8 <__malloc_unlock>:
 80064c8:	4801      	ldr	r0, [pc, #4]	; (80064d0 <__malloc_unlock+0x8>)
 80064ca:	f7ff bc75 	b.w	8005db8 <__retarget_lock_release_recursive>
 80064ce:	bf00      	nop
 80064d0:	20001158 	.word	0x20001158

080064d4 <_Balloc>:
 80064d4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80064d6:	b570      	push	{r4, r5, r6, lr}
 80064d8:	4605      	mov	r5, r0
 80064da:	460c      	mov	r4, r1
 80064dc:	b14b      	cbz	r3, 80064f2 <_Balloc+0x1e>
 80064de:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80064e2:	b180      	cbz	r0, 8006506 <_Balloc+0x32>
 80064e4:	6802      	ldr	r2, [r0, #0]
 80064e6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80064ea:	2300      	movs	r3, #0
 80064ec:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80064f0:	bd70      	pop	{r4, r5, r6, pc}
 80064f2:	2221      	movs	r2, #33	; 0x21
 80064f4:	2104      	movs	r1, #4
 80064f6:	f000 fe1d 	bl	8007134 <_calloc_r>
 80064fa:	4603      	mov	r3, r0
 80064fc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80064fe:	2800      	cmp	r0, #0
 8006500:	d1ed      	bne.n	80064de <_Balloc+0xa>
 8006502:	2000      	movs	r0, #0
 8006504:	bd70      	pop	{r4, r5, r6, pc}
 8006506:	2101      	movs	r1, #1
 8006508:	fa01 f604 	lsl.w	r6, r1, r4
 800650c:	1d72      	adds	r2, r6, #5
 800650e:	4628      	mov	r0, r5
 8006510:	0092      	lsls	r2, r2, #2
 8006512:	f000 fe0f 	bl	8007134 <_calloc_r>
 8006516:	2800      	cmp	r0, #0
 8006518:	d0f3      	beq.n	8006502 <_Balloc+0x2e>
 800651a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800651e:	e7e4      	b.n	80064ea <_Balloc+0x16>

08006520 <_Bfree>:
 8006520:	b131      	cbz	r1, 8006530 <_Bfree+0x10>
 8006522:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006524:	684a      	ldr	r2, [r1, #4]
 8006526:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800652a:	6008      	str	r0, [r1, #0]
 800652c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006530:	4770      	bx	lr
 8006532:	bf00      	nop

08006534 <__multadd>:
 8006534:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006536:	690c      	ldr	r4, [r1, #16]
 8006538:	b083      	sub	sp, #12
 800653a:	460d      	mov	r5, r1
 800653c:	4606      	mov	r6, r0
 800653e:	f101 0c14 	add.w	ip, r1, #20
 8006542:	2700      	movs	r7, #0
 8006544:	f8dc 0000 	ldr.w	r0, [ip]
 8006548:	b281      	uxth	r1, r0
 800654a:	fb02 3301 	mla	r3, r2, r1, r3
 800654e:	0c01      	lsrs	r1, r0, #16
 8006550:	0c18      	lsrs	r0, r3, #16
 8006552:	fb02 0101 	mla	r1, r2, r1, r0
 8006556:	b29b      	uxth	r3, r3
 8006558:	3701      	adds	r7, #1
 800655a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800655e:	42bc      	cmp	r4, r7
 8006560:	f84c 3b04 	str.w	r3, [ip], #4
 8006564:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006568:	dcec      	bgt.n	8006544 <__multadd+0x10>
 800656a:	b13b      	cbz	r3, 800657c <__multadd+0x48>
 800656c:	68aa      	ldr	r2, [r5, #8]
 800656e:	42a2      	cmp	r2, r4
 8006570:	dd07      	ble.n	8006582 <__multadd+0x4e>
 8006572:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006576:	3401      	adds	r4, #1
 8006578:	6153      	str	r3, [r2, #20]
 800657a:	612c      	str	r4, [r5, #16]
 800657c:	4628      	mov	r0, r5
 800657e:	b003      	add	sp, #12
 8006580:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006582:	6869      	ldr	r1, [r5, #4]
 8006584:	9301      	str	r3, [sp, #4]
 8006586:	3101      	adds	r1, #1
 8006588:	4630      	mov	r0, r6
 800658a:	f7ff ffa3 	bl	80064d4 <_Balloc>
 800658e:	692a      	ldr	r2, [r5, #16]
 8006590:	3202      	adds	r2, #2
 8006592:	f105 010c 	add.w	r1, r5, #12
 8006596:	4607      	mov	r7, r0
 8006598:	0092      	lsls	r2, r2, #2
 800659a:	300c      	adds	r0, #12
 800659c:	f7fa fc1c 	bl	8000dd8 <memcpy>
 80065a0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80065a2:	6869      	ldr	r1, [r5, #4]
 80065a4:	9b01      	ldr	r3, [sp, #4]
 80065a6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80065aa:	6028      	str	r0, [r5, #0]
 80065ac:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80065b0:	463d      	mov	r5, r7
 80065b2:	e7de      	b.n	8006572 <__multadd+0x3e>

080065b4 <__hi0bits>:
 80065b4:	0c02      	lsrs	r2, r0, #16
 80065b6:	0412      	lsls	r2, r2, #16
 80065b8:	4603      	mov	r3, r0
 80065ba:	b9c2      	cbnz	r2, 80065ee <__hi0bits+0x3a>
 80065bc:	0403      	lsls	r3, r0, #16
 80065be:	2010      	movs	r0, #16
 80065c0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80065c4:	bf04      	itt	eq
 80065c6:	021b      	lsleq	r3, r3, #8
 80065c8:	3008      	addeq	r0, #8
 80065ca:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80065ce:	bf04      	itt	eq
 80065d0:	011b      	lsleq	r3, r3, #4
 80065d2:	3004      	addeq	r0, #4
 80065d4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80065d8:	bf04      	itt	eq
 80065da:	009b      	lsleq	r3, r3, #2
 80065dc:	3002      	addeq	r0, #2
 80065de:	2b00      	cmp	r3, #0
 80065e0:	db04      	blt.n	80065ec <__hi0bits+0x38>
 80065e2:	005b      	lsls	r3, r3, #1
 80065e4:	d501      	bpl.n	80065ea <__hi0bits+0x36>
 80065e6:	3001      	adds	r0, #1
 80065e8:	4770      	bx	lr
 80065ea:	2020      	movs	r0, #32
 80065ec:	4770      	bx	lr
 80065ee:	2000      	movs	r0, #0
 80065f0:	e7e6      	b.n	80065c0 <__hi0bits+0xc>
 80065f2:	bf00      	nop

080065f4 <__lo0bits>:
 80065f4:	6803      	ldr	r3, [r0, #0]
 80065f6:	f013 0207 	ands.w	r2, r3, #7
 80065fa:	4601      	mov	r1, r0
 80065fc:	d007      	beq.n	800660e <__lo0bits+0x1a>
 80065fe:	07da      	lsls	r2, r3, #31
 8006600:	d41f      	bmi.n	8006642 <__lo0bits+0x4e>
 8006602:	0798      	lsls	r0, r3, #30
 8006604:	d51f      	bpl.n	8006646 <__lo0bits+0x52>
 8006606:	085b      	lsrs	r3, r3, #1
 8006608:	600b      	str	r3, [r1, #0]
 800660a:	2001      	movs	r0, #1
 800660c:	4770      	bx	lr
 800660e:	b298      	uxth	r0, r3
 8006610:	b1a0      	cbz	r0, 800663c <__lo0bits+0x48>
 8006612:	4610      	mov	r0, r2
 8006614:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006618:	bf04      	itt	eq
 800661a:	0a1b      	lsreq	r3, r3, #8
 800661c:	3008      	addeq	r0, #8
 800661e:	071a      	lsls	r2, r3, #28
 8006620:	bf04      	itt	eq
 8006622:	091b      	lsreq	r3, r3, #4
 8006624:	3004      	addeq	r0, #4
 8006626:	079a      	lsls	r2, r3, #30
 8006628:	bf04      	itt	eq
 800662a:	089b      	lsreq	r3, r3, #2
 800662c:	3002      	addeq	r0, #2
 800662e:	07da      	lsls	r2, r3, #31
 8006630:	d402      	bmi.n	8006638 <__lo0bits+0x44>
 8006632:	085b      	lsrs	r3, r3, #1
 8006634:	d00b      	beq.n	800664e <__lo0bits+0x5a>
 8006636:	3001      	adds	r0, #1
 8006638:	600b      	str	r3, [r1, #0]
 800663a:	4770      	bx	lr
 800663c:	0c1b      	lsrs	r3, r3, #16
 800663e:	2010      	movs	r0, #16
 8006640:	e7e8      	b.n	8006614 <__lo0bits+0x20>
 8006642:	2000      	movs	r0, #0
 8006644:	4770      	bx	lr
 8006646:	089b      	lsrs	r3, r3, #2
 8006648:	600b      	str	r3, [r1, #0]
 800664a:	2002      	movs	r0, #2
 800664c:	4770      	bx	lr
 800664e:	2020      	movs	r0, #32
 8006650:	4770      	bx	lr
 8006652:	bf00      	nop

08006654 <__i2b>:
 8006654:	b510      	push	{r4, lr}
 8006656:	460c      	mov	r4, r1
 8006658:	2101      	movs	r1, #1
 800665a:	f7ff ff3b 	bl	80064d4 <_Balloc>
 800665e:	2201      	movs	r2, #1
 8006660:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006664:	bd10      	pop	{r4, pc}
 8006666:	bf00      	nop

08006668 <__multiply>:
 8006668:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800666c:	690e      	ldr	r6, [r1, #16]
 800666e:	6914      	ldr	r4, [r2, #16]
 8006670:	42a6      	cmp	r6, r4
 8006672:	b083      	sub	sp, #12
 8006674:	460f      	mov	r7, r1
 8006676:	4615      	mov	r5, r2
 8006678:	da04      	bge.n	8006684 <__multiply+0x1c>
 800667a:	4632      	mov	r2, r6
 800667c:	462f      	mov	r7, r5
 800667e:	4626      	mov	r6, r4
 8006680:	460d      	mov	r5, r1
 8006682:	4614      	mov	r4, r2
 8006684:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006688:	eb06 0804 	add.w	r8, r6, r4
 800668c:	4543      	cmp	r3, r8
 800668e:	bfb8      	it	lt
 8006690:	3101      	addlt	r1, #1
 8006692:	f7ff ff1f 	bl	80064d4 <_Balloc>
 8006696:	f100 0914 	add.w	r9, r0, #20
 800669a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800669e:	45f1      	cmp	r9, lr
 80066a0:	9000      	str	r0, [sp, #0]
 80066a2:	d205      	bcs.n	80066b0 <__multiply+0x48>
 80066a4:	464b      	mov	r3, r9
 80066a6:	2200      	movs	r2, #0
 80066a8:	f843 2b04 	str.w	r2, [r3], #4
 80066ac:	459e      	cmp	lr, r3
 80066ae:	d8fb      	bhi.n	80066a8 <__multiply+0x40>
 80066b0:	f105 0a14 	add.w	sl, r5, #20
 80066b4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80066b8:	f107 0314 	add.w	r3, r7, #20
 80066bc:	45a2      	cmp	sl, r4
 80066be:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80066c2:	d261      	bcs.n	8006788 <__multiply+0x120>
 80066c4:	1b64      	subs	r4, r4, r5
 80066c6:	3c15      	subs	r4, #21
 80066c8:	f024 0403 	bic.w	r4, r4, #3
 80066cc:	f8cd e004 	str.w	lr, [sp, #4]
 80066d0:	44a2      	add	sl, r4
 80066d2:	f105 0210 	add.w	r2, r5, #16
 80066d6:	469e      	mov	lr, r3
 80066d8:	e005      	b.n	80066e6 <__multiply+0x7e>
 80066da:	0c2d      	lsrs	r5, r5, #16
 80066dc:	d12b      	bne.n	8006736 <__multiply+0xce>
 80066de:	4592      	cmp	sl, r2
 80066e0:	f109 0904 	add.w	r9, r9, #4
 80066e4:	d04e      	beq.n	8006784 <__multiply+0x11c>
 80066e6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80066ea:	fa1f fb85 	uxth.w	fp, r5
 80066ee:	f1bb 0f00 	cmp.w	fp, #0
 80066f2:	d0f2      	beq.n	80066da <__multiply+0x72>
 80066f4:	4677      	mov	r7, lr
 80066f6:	464e      	mov	r6, r9
 80066f8:	2000      	movs	r0, #0
 80066fa:	e000      	b.n	80066fe <__multiply+0x96>
 80066fc:	4626      	mov	r6, r4
 80066fe:	f857 1b04 	ldr.w	r1, [r7], #4
 8006702:	6834      	ldr	r4, [r6, #0]
 8006704:	b28b      	uxth	r3, r1
 8006706:	b2a5      	uxth	r5, r4
 8006708:	0c09      	lsrs	r1, r1, #16
 800670a:	0c24      	lsrs	r4, r4, #16
 800670c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006710:	4403      	add	r3, r0
 8006712:	fb0b 4001 	mla	r0, fp, r1, r4
 8006716:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800671a:	4634      	mov	r4, r6
 800671c:	b29b      	uxth	r3, r3
 800671e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006722:	45bc      	cmp	ip, r7
 8006724:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006728:	f844 3b04 	str.w	r3, [r4], #4
 800672c:	d8e6      	bhi.n	80066fc <__multiply+0x94>
 800672e:	6070      	str	r0, [r6, #4]
 8006730:	6815      	ldr	r5, [r2, #0]
 8006732:	0c2d      	lsrs	r5, r5, #16
 8006734:	d0d3      	beq.n	80066de <__multiply+0x76>
 8006736:	f8d9 3000 	ldr.w	r3, [r9]
 800673a:	4676      	mov	r6, lr
 800673c:	4618      	mov	r0, r3
 800673e:	46cb      	mov	fp, r9
 8006740:	2100      	movs	r1, #0
 8006742:	e000      	b.n	8006746 <__multiply+0xde>
 8006744:	46a3      	mov	fp, r4
 8006746:	8834      	ldrh	r4, [r6, #0]
 8006748:	0c00      	lsrs	r0, r0, #16
 800674a:	fb05 0004 	mla	r0, r5, r4, r0
 800674e:	4401      	add	r1, r0
 8006750:	b29b      	uxth	r3, r3
 8006752:	465c      	mov	r4, fp
 8006754:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006758:	f844 3b04 	str.w	r3, [r4], #4
 800675c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006760:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006764:	0c1b      	lsrs	r3, r3, #16
 8006766:	b287      	uxth	r7, r0
 8006768:	fb05 7303 	mla	r3, r5, r3, r7
 800676c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006770:	45b4      	cmp	ip, r6
 8006772:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006776:	d8e5      	bhi.n	8006744 <__multiply+0xdc>
 8006778:	4592      	cmp	sl, r2
 800677a:	f8cb 3004 	str.w	r3, [fp, #4]
 800677e:	f109 0904 	add.w	r9, r9, #4
 8006782:	d1b0      	bne.n	80066e6 <__multiply+0x7e>
 8006784:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006788:	f1b8 0f00 	cmp.w	r8, #0
 800678c:	dd0b      	ble.n	80067a6 <__multiply+0x13e>
 800678e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006792:	f1ae 0e04 	sub.w	lr, lr, #4
 8006796:	b11b      	cbz	r3, 80067a0 <__multiply+0x138>
 8006798:	e005      	b.n	80067a6 <__multiply+0x13e>
 800679a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800679e:	b913      	cbnz	r3, 80067a6 <__multiply+0x13e>
 80067a0:	f1b8 0801 	subs.w	r8, r8, #1
 80067a4:	d1f9      	bne.n	800679a <__multiply+0x132>
 80067a6:	9800      	ldr	r0, [sp, #0]
 80067a8:	f8c0 8010 	str.w	r8, [r0, #16]
 80067ac:	b003      	add	sp, #12
 80067ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80067b2:	bf00      	nop

080067b4 <__pow5mult>:
 80067b4:	f012 0303 	ands.w	r3, r2, #3
 80067b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067bc:	4614      	mov	r4, r2
 80067be:	4607      	mov	r7, r0
 80067c0:	d12e      	bne.n	8006820 <__pow5mult+0x6c>
 80067c2:	460d      	mov	r5, r1
 80067c4:	10a4      	asrs	r4, r4, #2
 80067c6:	d01c      	beq.n	8006802 <__pow5mult+0x4e>
 80067c8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80067ca:	b396      	cbz	r6, 8006832 <__pow5mult+0x7e>
 80067cc:	07e3      	lsls	r3, r4, #31
 80067ce:	f04f 0800 	mov.w	r8, #0
 80067d2:	d406      	bmi.n	80067e2 <__pow5mult+0x2e>
 80067d4:	1064      	asrs	r4, r4, #1
 80067d6:	d014      	beq.n	8006802 <__pow5mult+0x4e>
 80067d8:	6830      	ldr	r0, [r6, #0]
 80067da:	b1a8      	cbz	r0, 8006808 <__pow5mult+0x54>
 80067dc:	4606      	mov	r6, r0
 80067de:	07e3      	lsls	r3, r4, #31
 80067e0:	d5f8      	bpl.n	80067d4 <__pow5mult+0x20>
 80067e2:	4632      	mov	r2, r6
 80067e4:	4629      	mov	r1, r5
 80067e6:	4638      	mov	r0, r7
 80067e8:	f7ff ff3e 	bl	8006668 <__multiply>
 80067ec:	b1b5      	cbz	r5, 800681c <__pow5mult+0x68>
 80067ee:	686a      	ldr	r2, [r5, #4]
 80067f0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80067f2:	1064      	asrs	r4, r4, #1
 80067f4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80067f8:	6029      	str	r1, [r5, #0]
 80067fa:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80067fe:	4605      	mov	r5, r0
 8006800:	d1ea      	bne.n	80067d8 <__pow5mult+0x24>
 8006802:	4628      	mov	r0, r5
 8006804:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006808:	4632      	mov	r2, r6
 800680a:	4631      	mov	r1, r6
 800680c:	4638      	mov	r0, r7
 800680e:	f7ff ff2b 	bl	8006668 <__multiply>
 8006812:	6030      	str	r0, [r6, #0]
 8006814:	f8c0 8000 	str.w	r8, [r0]
 8006818:	4606      	mov	r6, r0
 800681a:	e7e0      	b.n	80067de <__pow5mult+0x2a>
 800681c:	4605      	mov	r5, r0
 800681e:	e7d9      	b.n	80067d4 <__pow5mult+0x20>
 8006820:	3b01      	subs	r3, #1
 8006822:	4a0b      	ldr	r2, [pc, #44]	; (8006850 <__pow5mult+0x9c>)
 8006824:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006828:	2300      	movs	r3, #0
 800682a:	f7ff fe83 	bl	8006534 <__multadd>
 800682e:	4605      	mov	r5, r0
 8006830:	e7c8      	b.n	80067c4 <__pow5mult+0x10>
 8006832:	2101      	movs	r1, #1
 8006834:	4638      	mov	r0, r7
 8006836:	f7ff fe4d 	bl	80064d4 <_Balloc>
 800683a:	f240 2371 	movw	r3, #625	; 0x271
 800683e:	6143      	str	r3, [r0, #20]
 8006840:	2201      	movs	r2, #1
 8006842:	2300      	movs	r3, #0
 8006844:	6102      	str	r2, [r0, #16]
 8006846:	4606      	mov	r6, r0
 8006848:	64b8      	str	r0, [r7, #72]	; 0x48
 800684a:	6003      	str	r3, [r0, #0]
 800684c:	e7be      	b.n	80067cc <__pow5mult+0x18>
 800684e:	bf00      	nop
 8006850:	08007840 	.word	0x08007840

08006854 <__lshift>:
 8006854:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006858:	4691      	mov	r9, r2
 800685a:	690a      	ldr	r2, [r1, #16]
 800685c:	460e      	mov	r6, r1
 800685e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006862:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006866:	eb04 0802 	add.w	r8, r4, r2
 800686a:	f108 0501 	add.w	r5, r8, #1
 800686e:	429d      	cmp	r5, r3
 8006870:	4607      	mov	r7, r0
 8006872:	dd04      	ble.n	800687e <__lshift+0x2a>
 8006874:	005b      	lsls	r3, r3, #1
 8006876:	429d      	cmp	r5, r3
 8006878:	f101 0101 	add.w	r1, r1, #1
 800687c:	dcfa      	bgt.n	8006874 <__lshift+0x20>
 800687e:	4638      	mov	r0, r7
 8006880:	f7ff fe28 	bl	80064d4 <_Balloc>
 8006884:	2c00      	cmp	r4, #0
 8006886:	f100 0314 	add.w	r3, r0, #20
 800688a:	dd37      	ble.n	80068fc <__lshift+0xa8>
 800688c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006890:	2200      	movs	r2, #0
 8006892:	f843 2b04 	str.w	r2, [r3], #4
 8006896:	428b      	cmp	r3, r1
 8006898:	d1fb      	bne.n	8006892 <__lshift+0x3e>
 800689a:	6934      	ldr	r4, [r6, #16]
 800689c:	f106 0314 	add.w	r3, r6, #20
 80068a0:	f019 091f 	ands.w	r9, r9, #31
 80068a4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80068a8:	d020      	beq.n	80068ec <__lshift+0x98>
 80068aa:	f1c9 0e20 	rsb	lr, r9, #32
 80068ae:	2200      	movs	r2, #0
 80068b0:	e000      	b.n	80068b4 <__lshift+0x60>
 80068b2:	4651      	mov	r1, sl
 80068b4:	681c      	ldr	r4, [r3, #0]
 80068b6:	468a      	mov	sl, r1
 80068b8:	fa04 f409 	lsl.w	r4, r4, r9
 80068bc:	4314      	orrs	r4, r2
 80068be:	f84a 4b04 	str.w	r4, [sl], #4
 80068c2:	f853 2b04 	ldr.w	r2, [r3], #4
 80068c6:	4563      	cmp	r3, ip
 80068c8:	fa22 f20e 	lsr.w	r2, r2, lr
 80068cc:	d3f1      	bcc.n	80068b2 <__lshift+0x5e>
 80068ce:	604a      	str	r2, [r1, #4]
 80068d0:	b10a      	cbz	r2, 80068d6 <__lshift+0x82>
 80068d2:	f108 0502 	add.w	r5, r8, #2
 80068d6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80068d8:	6872      	ldr	r2, [r6, #4]
 80068da:	3d01      	subs	r5, #1
 80068dc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80068e0:	6105      	str	r5, [r0, #16]
 80068e2:	6031      	str	r1, [r6, #0]
 80068e4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80068e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80068ec:	3904      	subs	r1, #4
 80068ee:	f853 2b04 	ldr.w	r2, [r3], #4
 80068f2:	f841 2f04 	str.w	r2, [r1, #4]!
 80068f6:	459c      	cmp	ip, r3
 80068f8:	d8f9      	bhi.n	80068ee <__lshift+0x9a>
 80068fa:	e7ec      	b.n	80068d6 <__lshift+0x82>
 80068fc:	4619      	mov	r1, r3
 80068fe:	e7cc      	b.n	800689a <__lshift+0x46>

08006900 <__mcmp>:
 8006900:	b430      	push	{r4, r5}
 8006902:	690b      	ldr	r3, [r1, #16]
 8006904:	4605      	mov	r5, r0
 8006906:	6900      	ldr	r0, [r0, #16]
 8006908:	1ac0      	subs	r0, r0, r3
 800690a:	d10f      	bne.n	800692c <__mcmp+0x2c>
 800690c:	009b      	lsls	r3, r3, #2
 800690e:	3514      	adds	r5, #20
 8006910:	3114      	adds	r1, #20
 8006912:	4419      	add	r1, r3
 8006914:	442b      	add	r3, r5
 8006916:	e001      	b.n	800691c <__mcmp+0x1c>
 8006918:	429d      	cmp	r5, r3
 800691a:	d207      	bcs.n	800692c <__mcmp+0x2c>
 800691c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006920:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006924:	4294      	cmp	r4, r2
 8006926:	d0f7      	beq.n	8006918 <__mcmp+0x18>
 8006928:	d302      	bcc.n	8006930 <__mcmp+0x30>
 800692a:	2001      	movs	r0, #1
 800692c:	bc30      	pop	{r4, r5}
 800692e:	4770      	bx	lr
 8006930:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006934:	e7fa      	b.n	800692c <__mcmp+0x2c>
 8006936:	bf00      	nop

08006938 <__mdiff>:
 8006938:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800693c:	6913      	ldr	r3, [r2, #16]
 800693e:	690d      	ldr	r5, [r1, #16]
 8006940:	1aed      	subs	r5, r5, r3
 8006942:	2d00      	cmp	r5, #0
 8006944:	460e      	mov	r6, r1
 8006946:	4690      	mov	r8, r2
 8006948:	f101 0414 	add.w	r4, r1, #20
 800694c:	f102 0714 	add.w	r7, r2, #20
 8006950:	d114      	bne.n	800697c <__mdiff+0x44>
 8006952:	009b      	lsls	r3, r3, #2
 8006954:	18e2      	adds	r2, r4, r3
 8006956:	443b      	add	r3, r7
 8006958:	e001      	b.n	800695e <__mdiff+0x26>
 800695a:	42a2      	cmp	r2, r4
 800695c:	d959      	bls.n	8006a12 <__mdiff+0xda>
 800695e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006962:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006966:	458c      	cmp	ip, r1
 8006968:	d0f7      	beq.n	800695a <__mdiff+0x22>
 800696a:	d209      	bcs.n	8006980 <__mdiff+0x48>
 800696c:	4622      	mov	r2, r4
 800696e:	4633      	mov	r3, r6
 8006970:	463c      	mov	r4, r7
 8006972:	4646      	mov	r6, r8
 8006974:	4617      	mov	r7, r2
 8006976:	4698      	mov	r8, r3
 8006978:	2501      	movs	r5, #1
 800697a:	e001      	b.n	8006980 <__mdiff+0x48>
 800697c:	dbf6      	blt.n	800696c <__mdiff+0x34>
 800697e:	2500      	movs	r5, #0
 8006980:	6871      	ldr	r1, [r6, #4]
 8006982:	f7ff fda7 	bl	80064d4 <_Balloc>
 8006986:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800698a:	6936      	ldr	r6, [r6, #16]
 800698c:	60c5      	str	r5, [r0, #12]
 800698e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006992:	46bc      	mov	ip, r7
 8006994:	f100 0514 	add.w	r5, r0, #20
 8006998:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800699c:	2300      	movs	r3, #0
 800699e:	f85c 1b04 	ldr.w	r1, [ip], #4
 80069a2:	f854 8b04 	ldr.w	r8, [r4], #4
 80069a6:	b28a      	uxth	r2, r1
 80069a8:	fa13 f388 	uxtah	r3, r3, r8
 80069ac:	0c09      	lsrs	r1, r1, #16
 80069ae:	1a9a      	subs	r2, r3, r2
 80069b0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80069b4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80069b8:	b292      	uxth	r2, r2
 80069ba:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80069be:	45e6      	cmp	lr, ip
 80069c0:	f845 2b04 	str.w	r2, [r5], #4
 80069c4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80069c8:	d8e9      	bhi.n	800699e <__mdiff+0x66>
 80069ca:	42a7      	cmp	r7, r4
 80069cc:	d917      	bls.n	80069fe <__mdiff+0xc6>
 80069ce:	46ae      	mov	lr, r5
 80069d0:	46a4      	mov	ip, r4
 80069d2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80069d6:	fa13 f382 	uxtah	r3, r3, r2
 80069da:	1419      	asrs	r1, r3, #16
 80069dc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80069e0:	b29b      	uxth	r3, r3
 80069e2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80069e6:	4567      	cmp	r7, ip
 80069e8:	f84e 2b04 	str.w	r2, [lr], #4
 80069ec:	ea4f 4321 	mov.w	r3, r1, asr #16
 80069f0:	d8ef      	bhi.n	80069d2 <__mdiff+0x9a>
 80069f2:	43e4      	mvns	r4, r4
 80069f4:	4427      	add	r7, r4
 80069f6:	f027 0703 	bic.w	r7, r7, #3
 80069fa:	3704      	adds	r7, #4
 80069fc:	443d      	add	r5, r7
 80069fe:	3d04      	subs	r5, #4
 8006a00:	b922      	cbnz	r2, 8006a0c <__mdiff+0xd4>
 8006a02:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006a06:	3e01      	subs	r6, #1
 8006a08:	2b00      	cmp	r3, #0
 8006a0a:	d0fa      	beq.n	8006a02 <__mdiff+0xca>
 8006a0c:	6106      	str	r6, [r0, #16]
 8006a0e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006a12:	2100      	movs	r1, #0
 8006a14:	f7ff fd5e 	bl	80064d4 <_Balloc>
 8006a18:	2201      	movs	r2, #1
 8006a1a:	2300      	movs	r3, #0
 8006a1c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006a20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006a24 <__d2b>:
 8006a24:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006a28:	460f      	mov	r7, r1
 8006a2a:	b083      	sub	sp, #12
 8006a2c:	2101      	movs	r1, #1
 8006a2e:	ec55 4b10 	vmov	r4, r5, d0
 8006a32:	4616      	mov	r6, r2
 8006a34:	f7ff fd4e 	bl	80064d4 <_Balloc>
 8006a38:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006a3c:	4681      	mov	r9, r0
 8006a3e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006a42:	f1b8 0f00 	cmp.w	r8, #0
 8006a46:	d001      	beq.n	8006a4c <__d2b+0x28>
 8006a48:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006a4c:	2c00      	cmp	r4, #0
 8006a4e:	9301      	str	r3, [sp, #4]
 8006a50:	d024      	beq.n	8006a9c <__d2b+0x78>
 8006a52:	a802      	add	r0, sp, #8
 8006a54:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006a58:	f7ff fdcc 	bl	80065f4 <__lo0bits>
 8006a5c:	2800      	cmp	r0, #0
 8006a5e:	d136      	bne.n	8006ace <__d2b+0xaa>
 8006a60:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006a64:	f8c9 2014 	str.w	r2, [r9, #20]
 8006a68:	2b00      	cmp	r3, #0
 8006a6a:	bf0c      	ite	eq
 8006a6c:	2101      	moveq	r1, #1
 8006a6e:	2102      	movne	r1, #2
 8006a70:	f8c9 3018 	str.w	r3, [r9, #24]
 8006a74:	f8c9 1010 	str.w	r1, [r9, #16]
 8006a78:	f1b8 0f00 	cmp.w	r8, #0
 8006a7c:	d11b      	bne.n	8006ab6 <__d2b+0x92>
 8006a7e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006a82:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006a86:	6038      	str	r0, [r7, #0]
 8006a88:	6918      	ldr	r0, [r3, #16]
 8006a8a:	f7ff fd93 	bl	80065b4 <__hi0bits>
 8006a8e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006a92:	6030      	str	r0, [r6, #0]
 8006a94:	4648      	mov	r0, r9
 8006a96:	b003      	add	sp, #12
 8006a98:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006a9c:	a801      	add	r0, sp, #4
 8006a9e:	f7ff fda9 	bl	80065f4 <__lo0bits>
 8006aa2:	9b01      	ldr	r3, [sp, #4]
 8006aa4:	f8c9 3014 	str.w	r3, [r9, #20]
 8006aa8:	2101      	movs	r1, #1
 8006aaa:	3020      	adds	r0, #32
 8006aac:	f8c9 1010 	str.w	r1, [r9, #16]
 8006ab0:	f1b8 0f00 	cmp.w	r8, #0
 8006ab4:	d0e3      	beq.n	8006a7e <__d2b+0x5a>
 8006ab6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006aba:	eb08 0300 	add.w	r3, r8, r0
 8006abe:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006ac2:	603b      	str	r3, [r7, #0]
 8006ac4:	6030      	str	r0, [r6, #0]
 8006ac6:	4648      	mov	r0, r9
 8006ac8:	b003      	add	sp, #12
 8006aca:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006ace:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006ad2:	f1c0 0220 	rsb	r2, r0, #32
 8006ad6:	fa03 f202 	lsl.w	r2, r3, r2
 8006ada:	430a      	orrs	r2, r1
 8006adc:	40c3      	lsrs	r3, r0
 8006ade:	9301      	str	r3, [sp, #4]
 8006ae0:	f8c9 2014 	str.w	r2, [r9, #20]
 8006ae4:	e7c0      	b.n	8006a68 <__d2b+0x44>
 8006ae6:	bf00      	nop

08006ae8 <_realloc_r>:
 8006ae8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006aec:	4692      	mov	sl, r2
 8006aee:	b083      	sub	sp, #12
 8006af0:	2900      	cmp	r1, #0
 8006af2:	f000 80a1 	beq.w	8006c38 <_realloc_r+0x150>
 8006af6:	460d      	mov	r5, r1
 8006af8:	4680      	mov	r8, r0
 8006afa:	f10a 040b 	add.w	r4, sl, #11
 8006afe:	f7ff fcdd 	bl	80064bc <__malloc_lock>
 8006b02:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006b06:	2c16      	cmp	r4, #22
 8006b08:	f022 0603 	bic.w	r6, r2, #3
 8006b0c:	f1a5 0708 	sub.w	r7, r5, #8
 8006b10:	d83e      	bhi.n	8006b90 <_realloc_r+0xa8>
 8006b12:	2410      	movs	r4, #16
 8006b14:	4621      	mov	r1, r4
 8006b16:	45a2      	cmp	sl, r4
 8006b18:	d83f      	bhi.n	8006b9a <_realloc_r+0xb2>
 8006b1a:	428e      	cmp	r6, r1
 8006b1c:	eb07 0906 	add.w	r9, r7, r6
 8006b20:	da74      	bge.n	8006c0c <_realloc_r+0x124>
 8006b22:	4bc7      	ldr	r3, [pc, #796]	; (8006e40 <_realloc_r+0x358>)
 8006b24:	6898      	ldr	r0, [r3, #8]
 8006b26:	4548      	cmp	r0, r9
 8006b28:	f000 80aa 	beq.w	8006c80 <_realloc_r+0x198>
 8006b2c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006b30:	f020 0301 	bic.w	r3, r0, #1
 8006b34:	444b      	add	r3, r9
 8006b36:	685b      	ldr	r3, [r3, #4]
 8006b38:	07db      	lsls	r3, r3, #31
 8006b3a:	f140 8083 	bpl.w	8006c44 <_realloc_r+0x15c>
 8006b3e:	07d2      	lsls	r2, r2, #31
 8006b40:	d534      	bpl.n	8006bac <_realloc_r+0xc4>
 8006b42:	4651      	mov	r1, sl
 8006b44:	4640      	mov	r0, r8
 8006b46:	f7ff f9b1 	bl	8005eac <_malloc_r>
 8006b4a:	4682      	mov	sl, r0
 8006b4c:	b1e0      	cbz	r0, 8006b88 <_realloc_r+0xa0>
 8006b4e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b52:	f023 0301 	bic.w	r3, r3, #1
 8006b56:	443b      	add	r3, r7
 8006b58:	f1a0 0208 	sub.w	r2, r0, #8
 8006b5c:	4293      	cmp	r3, r2
 8006b5e:	f000 80f9 	beq.w	8006d54 <_realloc_r+0x26c>
 8006b62:	1f32      	subs	r2, r6, #4
 8006b64:	2a24      	cmp	r2, #36	; 0x24
 8006b66:	f200 8107 	bhi.w	8006d78 <_realloc_r+0x290>
 8006b6a:	2a13      	cmp	r2, #19
 8006b6c:	6829      	ldr	r1, [r5, #0]
 8006b6e:	f200 80e6 	bhi.w	8006d3e <_realloc_r+0x256>
 8006b72:	4603      	mov	r3, r0
 8006b74:	462a      	mov	r2, r5
 8006b76:	6019      	str	r1, [r3, #0]
 8006b78:	6851      	ldr	r1, [r2, #4]
 8006b7a:	6059      	str	r1, [r3, #4]
 8006b7c:	6892      	ldr	r2, [r2, #8]
 8006b7e:	609a      	str	r2, [r3, #8]
 8006b80:	4629      	mov	r1, r5
 8006b82:	4640      	mov	r0, r8
 8006b84:	f7fe fe68 	bl	8005858 <_free_r>
 8006b88:	4640      	mov	r0, r8
 8006b8a:	f7ff fc9d 	bl	80064c8 <__malloc_unlock>
 8006b8e:	e04f      	b.n	8006c30 <_realloc_r+0x148>
 8006b90:	f024 0407 	bic.w	r4, r4, #7
 8006b94:	2c00      	cmp	r4, #0
 8006b96:	4621      	mov	r1, r4
 8006b98:	dabd      	bge.n	8006b16 <_realloc_r+0x2e>
 8006b9a:	f04f 0a00 	mov.w	sl, #0
 8006b9e:	230c      	movs	r3, #12
 8006ba0:	4650      	mov	r0, sl
 8006ba2:	f8c8 3000 	str.w	r3, [r8]
 8006ba6:	b003      	add	sp, #12
 8006ba8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006bac:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006bb0:	eba7 0b03 	sub.w	fp, r7, r3
 8006bb4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006bb8:	f022 0203 	bic.w	r2, r2, #3
 8006bbc:	18b3      	adds	r3, r6, r2
 8006bbe:	428b      	cmp	r3, r1
 8006bc0:	dbbf      	blt.n	8006b42 <_realloc_r+0x5a>
 8006bc2:	46da      	mov	sl, fp
 8006bc4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006bc8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006bcc:	1f32      	subs	r2, r6, #4
 8006bce:	2a24      	cmp	r2, #36	; 0x24
 8006bd0:	60c1      	str	r1, [r0, #12]
 8006bd2:	eb0b 0903 	add.w	r9, fp, r3
 8006bd6:	6088      	str	r0, [r1, #8]
 8006bd8:	f200 80c6 	bhi.w	8006d68 <_realloc_r+0x280>
 8006bdc:	2a13      	cmp	r2, #19
 8006bde:	6829      	ldr	r1, [r5, #0]
 8006be0:	f240 80c0 	bls.w	8006d64 <_realloc_r+0x27c>
 8006be4:	f8cb 1008 	str.w	r1, [fp, #8]
 8006be8:	6869      	ldr	r1, [r5, #4]
 8006bea:	f8cb 100c 	str.w	r1, [fp, #12]
 8006bee:	2a1b      	cmp	r2, #27
 8006bf0:	68a9      	ldr	r1, [r5, #8]
 8006bf2:	f200 80d8 	bhi.w	8006da6 <_realloc_r+0x2be>
 8006bf6:	f10b 0210 	add.w	r2, fp, #16
 8006bfa:	3508      	adds	r5, #8
 8006bfc:	6011      	str	r1, [r2, #0]
 8006bfe:	6869      	ldr	r1, [r5, #4]
 8006c00:	6051      	str	r1, [r2, #4]
 8006c02:	68a9      	ldr	r1, [r5, #8]
 8006c04:	6091      	str	r1, [r2, #8]
 8006c06:	461e      	mov	r6, r3
 8006c08:	465f      	mov	r7, fp
 8006c0a:	4655      	mov	r5, sl
 8006c0c:	687b      	ldr	r3, [r7, #4]
 8006c0e:	1b32      	subs	r2, r6, r4
 8006c10:	2a0f      	cmp	r2, #15
 8006c12:	f003 0301 	and.w	r3, r3, #1
 8006c16:	d822      	bhi.n	8006c5e <_realloc_r+0x176>
 8006c18:	4333      	orrs	r3, r6
 8006c1a:	607b      	str	r3, [r7, #4]
 8006c1c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006c20:	f043 0301 	orr.w	r3, r3, #1
 8006c24:	f8c9 3004 	str.w	r3, [r9, #4]
 8006c28:	4640      	mov	r0, r8
 8006c2a:	f7ff fc4d 	bl	80064c8 <__malloc_unlock>
 8006c2e:	46aa      	mov	sl, r5
 8006c30:	4650      	mov	r0, sl
 8006c32:	b003      	add	sp, #12
 8006c34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c38:	4611      	mov	r1, r2
 8006c3a:	b003      	add	sp, #12
 8006c3c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c40:	f7ff b934 	b.w	8005eac <_malloc_r>
 8006c44:	f020 0003 	bic.w	r0, r0, #3
 8006c48:	1833      	adds	r3, r6, r0
 8006c4a:	428b      	cmp	r3, r1
 8006c4c:	db61      	blt.n	8006d12 <_realloc_r+0x22a>
 8006c4e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006c52:	461e      	mov	r6, r3
 8006c54:	60ca      	str	r2, [r1, #12]
 8006c56:	eb07 0903 	add.w	r9, r7, r3
 8006c5a:	6091      	str	r1, [r2, #8]
 8006c5c:	e7d6      	b.n	8006c0c <_realloc_r+0x124>
 8006c5e:	1939      	adds	r1, r7, r4
 8006c60:	4323      	orrs	r3, r4
 8006c62:	f042 0201 	orr.w	r2, r2, #1
 8006c66:	607b      	str	r3, [r7, #4]
 8006c68:	604a      	str	r2, [r1, #4]
 8006c6a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006c6e:	f043 0301 	orr.w	r3, r3, #1
 8006c72:	3108      	adds	r1, #8
 8006c74:	f8c9 3004 	str.w	r3, [r9, #4]
 8006c78:	4640      	mov	r0, r8
 8006c7a:	f7fe fded 	bl	8005858 <_free_r>
 8006c7e:	e7d3      	b.n	8006c28 <_realloc_r+0x140>
 8006c80:	6840      	ldr	r0, [r0, #4]
 8006c82:	f020 0903 	bic.w	r9, r0, #3
 8006c86:	44b1      	add	r9, r6
 8006c88:	f104 0010 	add.w	r0, r4, #16
 8006c8c:	4581      	cmp	r9, r0
 8006c8e:	da77      	bge.n	8006d80 <_realloc_r+0x298>
 8006c90:	07d2      	lsls	r2, r2, #31
 8006c92:	f53f af56 	bmi.w	8006b42 <_realloc_r+0x5a>
 8006c96:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006c9a:	eba7 0b02 	sub.w	fp, r7, r2
 8006c9e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006ca2:	f022 0203 	bic.w	r2, r2, #3
 8006ca6:	4491      	add	r9, r2
 8006ca8:	4548      	cmp	r0, r9
 8006caa:	dc87      	bgt.n	8006bbc <_realloc_r+0xd4>
 8006cac:	46da      	mov	sl, fp
 8006cae:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006cb2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006cb6:	1f32      	subs	r2, r6, #4
 8006cb8:	2a24      	cmp	r2, #36	; 0x24
 8006cba:	60c1      	str	r1, [r0, #12]
 8006cbc:	6088      	str	r0, [r1, #8]
 8006cbe:	f200 80a1 	bhi.w	8006e04 <_realloc_r+0x31c>
 8006cc2:	2a13      	cmp	r2, #19
 8006cc4:	6829      	ldr	r1, [r5, #0]
 8006cc6:	f240 809b 	bls.w	8006e00 <_realloc_r+0x318>
 8006cca:	f8cb 1008 	str.w	r1, [fp, #8]
 8006cce:	6869      	ldr	r1, [r5, #4]
 8006cd0:	f8cb 100c 	str.w	r1, [fp, #12]
 8006cd4:	2a1b      	cmp	r2, #27
 8006cd6:	68a9      	ldr	r1, [r5, #8]
 8006cd8:	f200 809b 	bhi.w	8006e12 <_realloc_r+0x32a>
 8006cdc:	f10b 0210 	add.w	r2, fp, #16
 8006ce0:	3508      	adds	r5, #8
 8006ce2:	6011      	str	r1, [r2, #0]
 8006ce4:	6869      	ldr	r1, [r5, #4]
 8006ce6:	6051      	str	r1, [r2, #4]
 8006ce8:	68a9      	ldr	r1, [r5, #8]
 8006cea:	6091      	str	r1, [r2, #8]
 8006cec:	eb0b 0104 	add.w	r1, fp, r4
 8006cf0:	eba9 0204 	sub.w	r2, r9, r4
 8006cf4:	f042 0201 	orr.w	r2, r2, #1
 8006cf8:	6099      	str	r1, [r3, #8]
 8006cfa:	604a      	str	r2, [r1, #4]
 8006cfc:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006d00:	f003 0301 	and.w	r3, r3, #1
 8006d04:	431c      	orrs	r4, r3
 8006d06:	4640      	mov	r0, r8
 8006d08:	f8cb 4004 	str.w	r4, [fp, #4]
 8006d0c:	f7ff fbdc 	bl	80064c8 <__malloc_unlock>
 8006d10:	e78e      	b.n	8006c30 <_realloc_r+0x148>
 8006d12:	07d3      	lsls	r3, r2, #31
 8006d14:	f53f af15 	bmi.w	8006b42 <_realloc_r+0x5a>
 8006d18:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006d1c:	eba7 0b03 	sub.w	fp, r7, r3
 8006d20:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d24:	f022 0203 	bic.w	r2, r2, #3
 8006d28:	4410      	add	r0, r2
 8006d2a:	1983      	adds	r3, r0, r6
 8006d2c:	428b      	cmp	r3, r1
 8006d2e:	f6ff af45 	blt.w	8006bbc <_realloc_r+0xd4>
 8006d32:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006d36:	46da      	mov	sl, fp
 8006d38:	60ca      	str	r2, [r1, #12]
 8006d3a:	6091      	str	r1, [r2, #8]
 8006d3c:	e742      	b.n	8006bc4 <_realloc_r+0xdc>
 8006d3e:	6001      	str	r1, [r0, #0]
 8006d40:	686b      	ldr	r3, [r5, #4]
 8006d42:	6043      	str	r3, [r0, #4]
 8006d44:	2a1b      	cmp	r2, #27
 8006d46:	d83a      	bhi.n	8006dbe <_realloc_r+0x2d6>
 8006d48:	f105 0208 	add.w	r2, r5, #8
 8006d4c:	f100 0308 	add.w	r3, r0, #8
 8006d50:	68a9      	ldr	r1, [r5, #8]
 8006d52:	e710      	b.n	8006b76 <_realloc_r+0x8e>
 8006d54:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006d58:	f023 0303 	bic.w	r3, r3, #3
 8006d5c:	441e      	add	r6, r3
 8006d5e:	eb07 0906 	add.w	r9, r7, r6
 8006d62:	e753      	b.n	8006c0c <_realloc_r+0x124>
 8006d64:	4652      	mov	r2, sl
 8006d66:	e749      	b.n	8006bfc <_realloc_r+0x114>
 8006d68:	4629      	mov	r1, r5
 8006d6a:	4650      	mov	r0, sl
 8006d6c:	461e      	mov	r6, r3
 8006d6e:	465f      	mov	r7, fp
 8006d70:	f7ff fb40 	bl	80063f4 <memmove>
 8006d74:	4655      	mov	r5, sl
 8006d76:	e749      	b.n	8006c0c <_realloc_r+0x124>
 8006d78:	4629      	mov	r1, r5
 8006d7a:	f7ff fb3b 	bl	80063f4 <memmove>
 8006d7e:	e6ff      	b.n	8006b80 <_realloc_r+0x98>
 8006d80:	4427      	add	r7, r4
 8006d82:	eba9 0904 	sub.w	r9, r9, r4
 8006d86:	f049 0201 	orr.w	r2, r9, #1
 8006d8a:	609f      	str	r7, [r3, #8]
 8006d8c:	607a      	str	r2, [r7, #4]
 8006d8e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006d92:	f003 0301 	and.w	r3, r3, #1
 8006d96:	431c      	orrs	r4, r3
 8006d98:	4640      	mov	r0, r8
 8006d9a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006d9e:	f7ff fb93 	bl	80064c8 <__malloc_unlock>
 8006da2:	46aa      	mov	sl, r5
 8006da4:	e744      	b.n	8006c30 <_realloc_r+0x148>
 8006da6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006daa:	68e9      	ldr	r1, [r5, #12]
 8006dac:	f8cb 1014 	str.w	r1, [fp, #20]
 8006db0:	2a24      	cmp	r2, #36	; 0x24
 8006db2:	d010      	beq.n	8006dd6 <_realloc_r+0x2ee>
 8006db4:	6929      	ldr	r1, [r5, #16]
 8006db6:	f10b 0218 	add.w	r2, fp, #24
 8006dba:	3510      	adds	r5, #16
 8006dbc:	e71e      	b.n	8006bfc <_realloc_r+0x114>
 8006dbe:	68ab      	ldr	r3, [r5, #8]
 8006dc0:	6083      	str	r3, [r0, #8]
 8006dc2:	68eb      	ldr	r3, [r5, #12]
 8006dc4:	60c3      	str	r3, [r0, #12]
 8006dc6:	2a24      	cmp	r2, #36	; 0x24
 8006dc8:	d010      	beq.n	8006dec <_realloc_r+0x304>
 8006dca:	f105 0210 	add.w	r2, r5, #16
 8006dce:	f100 0310 	add.w	r3, r0, #16
 8006dd2:	6929      	ldr	r1, [r5, #16]
 8006dd4:	e6cf      	b.n	8006b76 <_realloc_r+0x8e>
 8006dd6:	692a      	ldr	r2, [r5, #16]
 8006dd8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ddc:	696a      	ldr	r2, [r5, #20]
 8006dde:	f8cb 201c 	str.w	r2, [fp, #28]
 8006de2:	69a9      	ldr	r1, [r5, #24]
 8006de4:	f10b 0220 	add.w	r2, fp, #32
 8006de8:	3518      	adds	r5, #24
 8006dea:	e707      	b.n	8006bfc <_realloc_r+0x114>
 8006dec:	692b      	ldr	r3, [r5, #16]
 8006dee:	6103      	str	r3, [r0, #16]
 8006df0:	696b      	ldr	r3, [r5, #20]
 8006df2:	6143      	str	r3, [r0, #20]
 8006df4:	69a9      	ldr	r1, [r5, #24]
 8006df6:	f105 0218 	add.w	r2, r5, #24
 8006dfa:	f100 0318 	add.w	r3, r0, #24
 8006dfe:	e6ba      	b.n	8006b76 <_realloc_r+0x8e>
 8006e00:	4652      	mov	r2, sl
 8006e02:	e76e      	b.n	8006ce2 <_realloc_r+0x1fa>
 8006e04:	4629      	mov	r1, r5
 8006e06:	4650      	mov	r0, sl
 8006e08:	9301      	str	r3, [sp, #4]
 8006e0a:	f7ff faf3 	bl	80063f4 <memmove>
 8006e0e:	9b01      	ldr	r3, [sp, #4]
 8006e10:	e76c      	b.n	8006cec <_realloc_r+0x204>
 8006e12:	f8cb 1010 	str.w	r1, [fp, #16]
 8006e16:	68e9      	ldr	r1, [r5, #12]
 8006e18:	f8cb 1014 	str.w	r1, [fp, #20]
 8006e1c:	2a24      	cmp	r2, #36	; 0x24
 8006e1e:	d004      	beq.n	8006e2a <_realloc_r+0x342>
 8006e20:	6929      	ldr	r1, [r5, #16]
 8006e22:	f10b 0218 	add.w	r2, fp, #24
 8006e26:	3510      	adds	r5, #16
 8006e28:	e75b      	b.n	8006ce2 <_realloc_r+0x1fa>
 8006e2a:	692a      	ldr	r2, [r5, #16]
 8006e2c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006e30:	696a      	ldr	r2, [r5, #20]
 8006e32:	f8cb 201c 	str.w	r2, [fp, #28]
 8006e36:	69a9      	ldr	r1, [r5, #24]
 8006e38:	f10b 0220 	add.w	r2, fp, #32
 8006e3c:	3518      	adds	r5, #24
 8006e3e:	e750      	b.n	8006ce2 <_realloc_r+0x1fa>
 8006e40:	2000044c 	.word	0x2000044c

08006e44 <frexp>:
 8006e44:	ec53 2b10 	vmov	r2, r3, d0
 8006e48:	b570      	push	{r4, r5, r6, lr}
 8006e4a:	4e16      	ldr	r6, [pc, #88]	; (8006ea4 <frexp+0x60>)
 8006e4c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006e50:	2500      	movs	r5, #0
 8006e52:	42b1      	cmp	r1, r6
 8006e54:	4604      	mov	r4, r0
 8006e56:	6005      	str	r5, [r0, #0]
 8006e58:	dc21      	bgt.n	8006e9e <frexp+0x5a>
 8006e5a:	ee10 6a10 	vmov	r6, s0
 8006e5e:	430e      	orrs	r6, r1
 8006e60:	d01d      	beq.n	8006e9e <frexp+0x5a>
 8006e62:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006e66:	4618      	mov	r0, r3
 8006e68:	da0c      	bge.n	8006e84 <frexp+0x40>
 8006e6a:	4619      	mov	r1, r3
 8006e6c:	2200      	movs	r2, #0
 8006e6e:	ee10 0a10 	vmov	r0, s0
 8006e72:	4b0d      	ldr	r3, [pc, #52]	; (8006ea8 <frexp+0x64>)
 8006e74:	f7f9 fb80 	bl	8000578 <__aeabi_dmul>
 8006e78:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006e7c:	4602      	mov	r2, r0
 8006e7e:	4608      	mov	r0, r1
 8006e80:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006e84:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006e88:	1509      	asrs	r1, r1, #20
 8006e8a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006e8e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006e92:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006e96:	4429      	add	r1, r5
 8006e98:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006e9c:	6021      	str	r1, [r4, #0]
 8006e9e:	ec43 2b10 	vmov	d0, r2, r3
 8006ea2:	bd70      	pop	{r4, r5, r6, pc}
 8006ea4:	7fefffff 	.word	0x7fefffff
 8006ea8:	43500000 	.word	0x43500000

08006eac <_sbrk_r>:
 8006eac:	b538      	push	{r3, r4, r5, lr}
 8006eae:	4c07      	ldr	r4, [pc, #28]	; (8006ecc <_sbrk_r+0x20>)
 8006eb0:	2300      	movs	r3, #0
 8006eb2:	4605      	mov	r5, r0
 8006eb4:	4608      	mov	r0, r1
 8006eb6:	6023      	str	r3, [r4, #0]
 8006eb8:	f7fb fb0b 	bl	80024d2 <_sbrk>
 8006ebc:	1c43      	adds	r3, r0, #1
 8006ebe:	d000      	beq.n	8006ec2 <_sbrk_r+0x16>
 8006ec0:	bd38      	pop	{r3, r4, r5, pc}
 8006ec2:	6823      	ldr	r3, [r4, #0]
 8006ec4:	2b00      	cmp	r3, #0
 8006ec6:	d0fb      	beq.n	8006ec0 <_sbrk_r+0x14>
 8006ec8:	602b      	str	r3, [r5, #0]
 8006eca:	bd38      	pop	{r3, r4, r5, pc}
 8006ecc:	2000116c 	.word	0x2000116c

08006ed0 <__sread>:
 8006ed0:	b510      	push	{r4, lr}
 8006ed2:	460c      	mov	r4, r1
 8006ed4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ed8:	f000 fabc 	bl	8007454 <_read_r>
 8006edc:	2800      	cmp	r0, #0
 8006ede:	db03      	blt.n	8006ee8 <__sread+0x18>
 8006ee0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006ee2:	4403      	add	r3, r0
 8006ee4:	6523      	str	r3, [r4, #80]	; 0x50
 8006ee6:	bd10      	pop	{r4, pc}
 8006ee8:	89a3      	ldrh	r3, [r4, #12]
 8006eea:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006eee:	81a3      	strh	r3, [r4, #12]
 8006ef0:	bd10      	pop	{r4, pc}
 8006ef2:	bf00      	nop

08006ef4 <__swrite>:
 8006ef4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006ef8:	4616      	mov	r6, r2
 8006efa:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006efe:	461f      	mov	r7, r3
 8006f00:	05d3      	lsls	r3, r2, #23
 8006f02:	460c      	mov	r4, r1
 8006f04:	4605      	mov	r5, r0
 8006f06:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f0a:	d507      	bpl.n	8006f1c <__swrite+0x28>
 8006f0c:	2200      	movs	r2, #0
 8006f0e:	2302      	movs	r3, #2
 8006f10:	f000 fa74 	bl	80073fc <_lseek_r>
 8006f14:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f18:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006f1c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006f20:	81a2      	strh	r2, [r4, #12]
 8006f22:	463b      	mov	r3, r7
 8006f24:	4632      	mov	r2, r6
 8006f26:	4628      	mov	r0, r5
 8006f28:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006f2c:	f000 b88c 	b.w	8007048 <_write_r>

08006f30 <__sseek>:
 8006f30:	b510      	push	{r4, lr}
 8006f32:	460c      	mov	r4, r1
 8006f34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f38:	f000 fa60 	bl	80073fc <_lseek_r>
 8006f3c:	89a3      	ldrh	r3, [r4, #12]
 8006f3e:	1c42      	adds	r2, r0, #1
 8006f40:	bf0e      	itee	eq
 8006f42:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006f46:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006f4a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006f4c:	81a3      	strh	r3, [r4, #12]
 8006f4e:	bd10      	pop	{r4, pc}

08006f50 <__sclose>:
 8006f50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006f54:	f000 b922 	b.w	800719c <_close_r>

08006f58 <strncpy>:
 8006f58:	ea40 0301 	orr.w	r3, r0, r1
 8006f5c:	079b      	lsls	r3, r3, #30
 8006f5e:	b470      	push	{r4, r5, r6}
 8006f60:	d12a      	bne.n	8006fb8 <strncpy+0x60>
 8006f62:	2a03      	cmp	r2, #3
 8006f64:	d928      	bls.n	8006fb8 <strncpy+0x60>
 8006f66:	460c      	mov	r4, r1
 8006f68:	4603      	mov	r3, r0
 8006f6a:	4621      	mov	r1, r4
 8006f6c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006f70:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006f74:	ea25 0506 	bic.w	r5, r5, r6
 8006f78:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006f7c:	d106      	bne.n	8006f8c <strncpy+0x34>
 8006f7e:	3a04      	subs	r2, #4
 8006f80:	2a03      	cmp	r2, #3
 8006f82:	f843 6b04 	str.w	r6, [r3], #4
 8006f86:	4621      	mov	r1, r4
 8006f88:	d8ef      	bhi.n	8006f6a <strncpy+0x12>
 8006f8a:	b19a      	cbz	r2, 8006fb4 <strncpy+0x5c>
 8006f8c:	780c      	ldrb	r4, [r1, #0]
 8006f8e:	701c      	strb	r4, [r3, #0]
 8006f90:	3a01      	subs	r2, #1
 8006f92:	3301      	adds	r3, #1
 8006f94:	b13c      	cbz	r4, 8006fa6 <strncpy+0x4e>
 8006f96:	b16a      	cbz	r2, 8006fb4 <strncpy+0x5c>
 8006f98:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006f9c:	f803 4b01 	strb.w	r4, [r3], #1
 8006fa0:	3a01      	subs	r2, #1
 8006fa2:	2c00      	cmp	r4, #0
 8006fa4:	d1f7      	bne.n	8006f96 <strncpy+0x3e>
 8006fa6:	b12a      	cbz	r2, 8006fb4 <strncpy+0x5c>
 8006fa8:	441a      	add	r2, r3
 8006faa:	2100      	movs	r1, #0
 8006fac:	f803 1b01 	strb.w	r1, [r3], #1
 8006fb0:	4293      	cmp	r3, r2
 8006fb2:	d1fb      	bne.n	8006fac <strncpy+0x54>
 8006fb4:	bc70      	pop	{r4, r5, r6}
 8006fb6:	4770      	bx	lr
 8006fb8:	4603      	mov	r3, r0
 8006fba:	e7e6      	b.n	8006f8a <strncpy+0x32>

08006fbc <__sprint_r.part.0>:
 8006fbc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006fc0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006fc2:	049c      	lsls	r4, r3, #18
 8006fc4:	4692      	mov	sl, r2
 8006fc6:	d52d      	bpl.n	8007024 <__sprint_r.part.0+0x68>
 8006fc8:	6893      	ldr	r3, [r2, #8]
 8006fca:	6812      	ldr	r2, [r2, #0]
 8006fcc:	b343      	cbz	r3, 8007020 <__sprint_r.part.0+0x64>
 8006fce:	460e      	mov	r6, r1
 8006fd0:	4607      	mov	r7, r0
 8006fd2:	f102 0908 	add.w	r9, r2, #8
 8006fd6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006fda:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006fde:	d015      	beq.n	800700c <__sprint_r.part.0+0x50>
 8006fe0:	3d04      	subs	r5, #4
 8006fe2:	2400      	movs	r4, #0
 8006fe4:	e001      	b.n	8006fea <__sprint_r.part.0+0x2e>
 8006fe6:	45a0      	cmp	r8, r4
 8006fe8:	d00e      	beq.n	8007008 <__sprint_r.part.0+0x4c>
 8006fea:	4632      	mov	r2, r6
 8006fec:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006ff0:	4638      	mov	r0, r7
 8006ff2:	f000 f99d 	bl	8007330 <_fputwc_r>
 8006ff6:	1c43      	adds	r3, r0, #1
 8006ff8:	f104 0401 	add.w	r4, r4, #1
 8006ffc:	d1f3      	bne.n	8006fe6 <__sprint_r.part.0+0x2a>
 8006ffe:	2300      	movs	r3, #0
 8007000:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007004:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007008:	f8da 3008 	ldr.w	r3, [sl, #8]
 800700c:	f02b 0b03 	bic.w	fp, fp, #3
 8007010:	eba3 030b 	sub.w	r3, r3, fp
 8007014:	f8ca 3008 	str.w	r3, [sl, #8]
 8007018:	f109 0908 	add.w	r9, r9, #8
 800701c:	2b00      	cmp	r3, #0
 800701e:	d1da      	bne.n	8006fd6 <__sprint_r.part.0+0x1a>
 8007020:	2000      	movs	r0, #0
 8007022:	e7ec      	b.n	8006ffe <__sprint_r.part.0+0x42>
 8007024:	f7fe fd0c 	bl	8005a40 <__sfvwrite_r>
 8007028:	2300      	movs	r3, #0
 800702a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800702e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007032:	bf00      	nop

08007034 <__sprint_r>:
 8007034:	6893      	ldr	r3, [r2, #8]
 8007036:	b10b      	cbz	r3, 800703c <__sprint_r+0x8>
 8007038:	f7ff bfc0 	b.w	8006fbc <__sprint_r.part.0>
 800703c:	b410      	push	{r4}
 800703e:	4618      	mov	r0, r3
 8007040:	6053      	str	r3, [r2, #4]
 8007042:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007046:	4770      	bx	lr

08007048 <_write_r>:
 8007048:	b570      	push	{r4, r5, r6, lr}
 800704a:	460d      	mov	r5, r1
 800704c:	4c08      	ldr	r4, [pc, #32]	; (8007070 <_write_r+0x28>)
 800704e:	4611      	mov	r1, r2
 8007050:	4606      	mov	r6, r0
 8007052:	461a      	mov	r2, r3
 8007054:	4628      	mov	r0, r5
 8007056:	2300      	movs	r3, #0
 8007058:	6023      	str	r3, [r4, #0]
 800705a:	f7fb fa27 	bl	80024ac <_write>
 800705e:	1c43      	adds	r3, r0, #1
 8007060:	d000      	beq.n	8007064 <_write_r+0x1c>
 8007062:	bd70      	pop	{r4, r5, r6, pc}
 8007064:	6823      	ldr	r3, [r4, #0]
 8007066:	2b00      	cmp	r3, #0
 8007068:	d0fb      	beq.n	8007062 <_write_r+0x1a>
 800706a:	6033      	str	r3, [r6, #0]
 800706c:	bd70      	pop	{r4, r5, r6, pc}
 800706e:	bf00      	nop
 8007070:	2000116c 	.word	0x2000116c

08007074 <__register_exitproc>:
 8007074:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007078:	4d2b      	ldr	r5, [pc, #172]	; (8007128 <__register_exitproc+0xb4>)
 800707a:	4606      	mov	r6, r0
 800707c:	6828      	ldr	r0, [r5, #0]
 800707e:	4698      	mov	r8, r3
 8007080:	460f      	mov	r7, r1
 8007082:	4691      	mov	r9, r2
 8007084:	f7fe fe96 	bl	8005db4 <__retarget_lock_acquire_recursive>
 8007088:	4b28      	ldr	r3, [pc, #160]	; (800712c <__register_exitproc+0xb8>)
 800708a:	681c      	ldr	r4, [r3, #0]
 800708c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007090:	2b00      	cmp	r3, #0
 8007092:	d03d      	beq.n	8007110 <__register_exitproc+0x9c>
 8007094:	685a      	ldr	r2, [r3, #4]
 8007096:	2a1f      	cmp	r2, #31
 8007098:	dc0d      	bgt.n	80070b6 <__register_exitproc+0x42>
 800709a:	f102 0c01 	add.w	ip, r2, #1
 800709e:	bb16      	cbnz	r6, 80070e6 <__register_exitproc+0x72>
 80070a0:	3202      	adds	r2, #2
 80070a2:	f8c3 c004 	str.w	ip, [r3, #4]
 80070a6:	6828      	ldr	r0, [r5, #0]
 80070a8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80070ac:	f7fe fe84 	bl	8005db8 <__retarget_lock_release_recursive>
 80070b0:	2000      	movs	r0, #0
 80070b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80070b6:	4b1e      	ldr	r3, [pc, #120]	; (8007130 <__register_exitproc+0xbc>)
 80070b8:	b37b      	cbz	r3, 800711a <__register_exitproc+0xa6>
 80070ba:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80070be:	f3af 8000 	nop.w
 80070c2:	4603      	mov	r3, r0
 80070c4:	b348      	cbz	r0, 800711a <__register_exitproc+0xa6>
 80070c6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80070ca:	2100      	movs	r1, #0
 80070cc:	e9c0 2100 	strd	r2, r1, [r0]
 80070d0:	f04f 0c01 	mov.w	ip, #1
 80070d4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80070d8:	460a      	mov	r2, r1
 80070da:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80070de:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80070e2:	2e00      	cmp	r6, #0
 80070e4:	d0dc      	beq.n	80070a0 <__register_exitproc+0x2c>
 80070e6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80070ea:	2401      	movs	r4, #1
 80070ec:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80070f0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80070f4:	4094      	lsls	r4, r2
 80070f6:	4320      	orrs	r0, r4
 80070f8:	2e02      	cmp	r6, #2
 80070fa:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80070fe:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007102:	d1cd      	bne.n	80070a0 <__register_exitproc+0x2c>
 8007104:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007108:	430c      	orrs	r4, r1
 800710a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800710e:	e7c7      	b.n	80070a0 <__register_exitproc+0x2c>
 8007110:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007114:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007118:	e7bc      	b.n	8007094 <__register_exitproc+0x20>
 800711a:	6828      	ldr	r0, [r5, #0]
 800711c:	f7fe fe4c 	bl	8005db8 <__retarget_lock_release_recursive>
 8007120:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007124:	e7c5      	b.n	80070b2 <__register_exitproc+0x3e>
 8007126:	bf00      	nop
 8007128:	20000448 	.word	0x20000448
 800712c:	080076d0 	.word	0x080076d0
 8007130:	00000000 	.word	0x00000000

08007134 <_calloc_r>:
 8007134:	b510      	push	{r4, lr}
 8007136:	fb02 f101 	mul.w	r1, r2, r1
 800713a:	f7fe feb7 	bl	8005eac <_malloc_r>
 800713e:	4604      	mov	r4, r0
 8007140:	b1d8      	cbz	r0, 800717a <_calloc_r+0x46>
 8007142:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007146:	f022 0203 	bic.w	r2, r2, #3
 800714a:	3a04      	subs	r2, #4
 800714c:	2a24      	cmp	r2, #36	; 0x24
 800714e:	d81d      	bhi.n	800718c <_calloc_r+0x58>
 8007150:	2a13      	cmp	r2, #19
 8007152:	d914      	bls.n	800717e <_calloc_r+0x4a>
 8007154:	2300      	movs	r3, #0
 8007156:	2a1b      	cmp	r2, #27
 8007158:	e9c0 3300 	strd	r3, r3, [r0]
 800715c:	d91b      	bls.n	8007196 <_calloc_r+0x62>
 800715e:	2a24      	cmp	r2, #36	; 0x24
 8007160:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007164:	bf0a      	itet	eq
 8007166:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800716a:	f100 0210 	addne.w	r2, r0, #16
 800716e:	f100 0218 	addeq.w	r2, r0, #24
 8007172:	2300      	movs	r3, #0
 8007174:	e9c2 3300 	strd	r3, r3, [r2]
 8007178:	6093      	str	r3, [r2, #8]
 800717a:	4620      	mov	r0, r4
 800717c:	bd10      	pop	{r4, pc}
 800717e:	4602      	mov	r2, r0
 8007180:	2300      	movs	r3, #0
 8007182:	e9c2 3300 	strd	r3, r3, [r2]
 8007186:	6093      	str	r3, [r2, #8]
 8007188:	4620      	mov	r0, r4
 800718a:	bd10      	pop	{r4, pc}
 800718c:	2100      	movs	r1, #0
 800718e:	f7fb fb6d 	bl	800286c <memset>
 8007192:	4620      	mov	r0, r4
 8007194:	bd10      	pop	{r4, pc}
 8007196:	f100 0208 	add.w	r2, r0, #8
 800719a:	e7f1      	b.n	8007180 <_calloc_r+0x4c>

0800719c <_close_r>:
 800719c:	b538      	push	{r3, r4, r5, lr}
 800719e:	4c07      	ldr	r4, [pc, #28]	; (80071bc <_close_r+0x20>)
 80071a0:	2300      	movs	r3, #0
 80071a2:	4605      	mov	r5, r0
 80071a4:	4608      	mov	r0, r1
 80071a6:	6023      	str	r3, [r4, #0]
 80071a8:	f7fb f9af 	bl	800250a <_close>
 80071ac:	1c43      	adds	r3, r0, #1
 80071ae:	d000      	beq.n	80071b2 <_close_r+0x16>
 80071b0:	bd38      	pop	{r3, r4, r5, pc}
 80071b2:	6823      	ldr	r3, [r4, #0]
 80071b4:	2b00      	cmp	r3, #0
 80071b6:	d0fb      	beq.n	80071b0 <_close_r+0x14>
 80071b8:	602b      	str	r3, [r5, #0]
 80071ba:	bd38      	pop	{r3, r4, r5, pc}
 80071bc:	2000116c 	.word	0x2000116c

080071c0 <_fclose_r>:
 80071c0:	b570      	push	{r4, r5, r6, lr}
 80071c2:	2900      	cmp	r1, #0
 80071c4:	d048      	beq.n	8007258 <_fclose_r+0x98>
 80071c6:	4605      	mov	r5, r0
 80071c8:	460c      	mov	r4, r1
 80071ca:	b110      	cbz	r0, 80071d2 <_fclose_r+0x12>
 80071cc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80071ce:	2b00      	cmp	r3, #0
 80071d0:	d048      	beq.n	8007264 <_fclose_r+0xa4>
 80071d2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80071d4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071d8:	07d0      	lsls	r0, r2, #31
 80071da:	d440      	bmi.n	800725e <_fclose_r+0x9e>
 80071dc:	0599      	lsls	r1, r3, #22
 80071de:	d530      	bpl.n	8007242 <_fclose_r+0x82>
 80071e0:	4621      	mov	r1, r4
 80071e2:	4628      	mov	r0, r5
 80071e4:	f7fe f990 	bl	8005508 <__sflush_r>
 80071e8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80071ea:	4606      	mov	r6, r0
 80071ec:	b133      	cbz	r3, 80071fc <_fclose_r+0x3c>
 80071ee:	69e1      	ldr	r1, [r4, #28]
 80071f0:	4628      	mov	r0, r5
 80071f2:	4798      	blx	r3
 80071f4:	2800      	cmp	r0, #0
 80071f6:	bfb8      	it	lt
 80071f8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80071fc:	89a3      	ldrh	r3, [r4, #12]
 80071fe:	061a      	lsls	r2, r3, #24
 8007200:	d43c      	bmi.n	800727c <_fclose_r+0xbc>
 8007202:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007204:	b141      	cbz	r1, 8007218 <_fclose_r+0x58>
 8007206:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800720a:	4299      	cmp	r1, r3
 800720c:	d002      	beq.n	8007214 <_fclose_r+0x54>
 800720e:	4628      	mov	r0, r5
 8007210:	f7fe fb22 	bl	8005858 <_free_r>
 8007214:	2300      	movs	r3, #0
 8007216:	6323      	str	r3, [r4, #48]	; 0x30
 8007218:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800721a:	b121      	cbz	r1, 8007226 <_fclose_r+0x66>
 800721c:	4628      	mov	r0, r5
 800721e:	f7fe fb1b 	bl	8005858 <_free_r>
 8007222:	2300      	movs	r3, #0
 8007224:	6463      	str	r3, [r4, #68]	; 0x44
 8007226:	f7fe faa1 	bl	800576c <__sfp_lock_acquire>
 800722a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800722c:	2200      	movs	r2, #0
 800722e:	07db      	lsls	r3, r3, #31
 8007230:	81a2      	strh	r2, [r4, #12]
 8007232:	d51f      	bpl.n	8007274 <_fclose_r+0xb4>
 8007234:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007236:	f7fe fdbb 	bl	8005db0 <__retarget_lock_close_recursive>
 800723a:	f7fe fa9d 	bl	8005778 <__sfp_lock_release>
 800723e:	4630      	mov	r0, r6
 8007240:	bd70      	pop	{r4, r5, r6, pc}
 8007242:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007244:	f7fe fdb6 	bl	8005db4 <__retarget_lock_acquire_recursive>
 8007248:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800724c:	2b00      	cmp	r3, #0
 800724e:	d1c7      	bne.n	80071e0 <_fclose_r+0x20>
 8007250:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007252:	f016 0601 	ands.w	r6, r6, #1
 8007256:	d016      	beq.n	8007286 <_fclose_r+0xc6>
 8007258:	2600      	movs	r6, #0
 800725a:	4630      	mov	r0, r6
 800725c:	bd70      	pop	{r4, r5, r6, pc}
 800725e:	2b00      	cmp	r3, #0
 8007260:	d0fa      	beq.n	8007258 <_fclose_r+0x98>
 8007262:	e7bd      	b.n	80071e0 <_fclose_r+0x20>
 8007264:	f7fe fa56 	bl	8005714 <__sinit>
 8007268:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800726a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800726e:	07d0      	lsls	r0, r2, #31
 8007270:	d4f5      	bmi.n	800725e <_fclose_r+0x9e>
 8007272:	e7b3      	b.n	80071dc <_fclose_r+0x1c>
 8007274:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007276:	f7fe fd9f 	bl	8005db8 <__retarget_lock_release_recursive>
 800727a:	e7db      	b.n	8007234 <_fclose_r+0x74>
 800727c:	6921      	ldr	r1, [r4, #16]
 800727e:	4628      	mov	r0, r5
 8007280:	f7fe faea 	bl	8005858 <_free_r>
 8007284:	e7bd      	b.n	8007202 <_fclose_r+0x42>
 8007286:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007288:	f7fe fd96 	bl	8005db8 <__retarget_lock_release_recursive>
 800728c:	4630      	mov	r0, r6
 800728e:	bd70      	pop	{r4, r5, r6, pc}

08007290 <__fputwc>:
 8007290:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007294:	b082      	sub	sp, #8
 8007296:	4681      	mov	r9, r0
 8007298:	4688      	mov	r8, r1
 800729a:	4614      	mov	r4, r2
 800729c:	f000 f8a0 	bl	80073e0 <__locale_mb_cur_max>
 80072a0:	2801      	cmp	r0, #1
 80072a2:	d103      	bne.n	80072ac <__fputwc+0x1c>
 80072a4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80072a8:	2bfe      	cmp	r3, #254	; 0xfe
 80072aa:	d933      	bls.n	8007314 <__fputwc+0x84>
 80072ac:	4642      	mov	r2, r8
 80072ae:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80072b2:	a901      	add	r1, sp, #4
 80072b4:	4648      	mov	r0, r9
 80072b6:	f000 f93b 	bl	8007530 <_wcrtomb_r>
 80072ba:	1c42      	adds	r2, r0, #1
 80072bc:	4606      	mov	r6, r0
 80072be:	d02f      	beq.n	8007320 <__fputwc+0x90>
 80072c0:	b320      	cbz	r0, 800730c <__fputwc+0x7c>
 80072c2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80072c6:	2500      	movs	r5, #0
 80072c8:	f10d 0a04 	add.w	sl, sp, #4
 80072cc:	e009      	b.n	80072e2 <__fputwc+0x52>
 80072ce:	6823      	ldr	r3, [r4, #0]
 80072d0:	1c5a      	adds	r2, r3, #1
 80072d2:	6022      	str	r2, [r4, #0]
 80072d4:	f883 c000 	strb.w	ip, [r3]
 80072d8:	3501      	adds	r5, #1
 80072da:	42b5      	cmp	r5, r6
 80072dc:	d216      	bcs.n	800730c <__fputwc+0x7c>
 80072de:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80072e2:	68a3      	ldr	r3, [r4, #8]
 80072e4:	3b01      	subs	r3, #1
 80072e6:	2b00      	cmp	r3, #0
 80072e8:	60a3      	str	r3, [r4, #8]
 80072ea:	daf0      	bge.n	80072ce <__fputwc+0x3e>
 80072ec:	69a7      	ldr	r7, [r4, #24]
 80072ee:	42bb      	cmp	r3, r7
 80072f0:	4661      	mov	r1, ip
 80072f2:	4622      	mov	r2, r4
 80072f4:	4648      	mov	r0, r9
 80072f6:	db02      	blt.n	80072fe <__fputwc+0x6e>
 80072f8:	f1bc 0f0a 	cmp.w	ip, #10
 80072fc:	d1e7      	bne.n	80072ce <__fputwc+0x3e>
 80072fe:	f000 f8bf 	bl	8007480 <__swbuf_r>
 8007302:	1c43      	adds	r3, r0, #1
 8007304:	d1e8      	bne.n	80072d8 <__fputwc+0x48>
 8007306:	b002      	add	sp, #8
 8007308:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800730c:	4640      	mov	r0, r8
 800730e:	b002      	add	sp, #8
 8007310:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007314:	fa5f fc88 	uxtb.w	ip, r8
 8007318:	4606      	mov	r6, r0
 800731a:	f88d c004 	strb.w	ip, [sp, #4]
 800731e:	e7d2      	b.n	80072c6 <__fputwc+0x36>
 8007320:	89a3      	ldrh	r3, [r4, #12]
 8007322:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007326:	81a3      	strh	r3, [r4, #12]
 8007328:	b002      	add	sp, #8
 800732a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800732e:	bf00      	nop

08007330 <_fputwc_r>:
 8007330:	b530      	push	{r4, r5, lr}
 8007332:	4605      	mov	r5, r0
 8007334:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007336:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800733a:	07c0      	lsls	r0, r0, #31
 800733c:	4614      	mov	r4, r2
 800733e:	b083      	sub	sp, #12
 8007340:	b29a      	uxth	r2, r3
 8007342:	d401      	bmi.n	8007348 <_fputwc_r+0x18>
 8007344:	0590      	lsls	r0, r2, #22
 8007346:	d51c      	bpl.n	8007382 <_fputwc_r+0x52>
 8007348:	0490      	lsls	r0, r2, #18
 800734a:	d406      	bmi.n	800735a <_fputwc_r+0x2a>
 800734c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800734e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007352:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007356:	81a3      	strh	r3, [r4, #12]
 8007358:	6662      	str	r2, [r4, #100]	; 0x64
 800735a:	4628      	mov	r0, r5
 800735c:	4622      	mov	r2, r4
 800735e:	f7ff ff97 	bl	8007290 <__fputwc>
 8007362:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007364:	07da      	lsls	r2, r3, #31
 8007366:	4605      	mov	r5, r0
 8007368:	d402      	bmi.n	8007370 <_fputwc_r+0x40>
 800736a:	89a3      	ldrh	r3, [r4, #12]
 800736c:	059b      	lsls	r3, r3, #22
 800736e:	d502      	bpl.n	8007376 <_fputwc_r+0x46>
 8007370:	4628      	mov	r0, r5
 8007372:	b003      	add	sp, #12
 8007374:	bd30      	pop	{r4, r5, pc}
 8007376:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007378:	f7fe fd1e 	bl	8005db8 <__retarget_lock_release_recursive>
 800737c:	4628      	mov	r0, r5
 800737e:	b003      	add	sp, #12
 8007380:	bd30      	pop	{r4, r5, pc}
 8007382:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007384:	9101      	str	r1, [sp, #4]
 8007386:	f7fe fd15 	bl	8005db4 <__retarget_lock_acquire_recursive>
 800738a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800738e:	9901      	ldr	r1, [sp, #4]
 8007390:	b29a      	uxth	r2, r3
 8007392:	e7d9      	b.n	8007348 <_fputwc_r+0x18>

08007394 <_fstat_r>:
 8007394:	b538      	push	{r3, r4, r5, lr}
 8007396:	460b      	mov	r3, r1
 8007398:	4c07      	ldr	r4, [pc, #28]	; (80073b8 <_fstat_r+0x24>)
 800739a:	4605      	mov	r5, r0
 800739c:	4611      	mov	r1, r2
 800739e:	4618      	mov	r0, r3
 80073a0:	2300      	movs	r3, #0
 80073a2:	6023      	str	r3, [r4, #0]
 80073a4:	f7fb f8b4 	bl	8002510 <_fstat>
 80073a8:	1c43      	adds	r3, r0, #1
 80073aa:	d000      	beq.n	80073ae <_fstat_r+0x1a>
 80073ac:	bd38      	pop	{r3, r4, r5, pc}
 80073ae:	6823      	ldr	r3, [r4, #0]
 80073b0:	2b00      	cmp	r3, #0
 80073b2:	d0fb      	beq.n	80073ac <_fstat_r+0x18>
 80073b4:	602b      	str	r3, [r5, #0]
 80073b6:	bd38      	pop	{r3, r4, r5, pc}
 80073b8:	2000116c 	.word	0x2000116c

080073bc <_isatty_r>:
 80073bc:	b538      	push	{r3, r4, r5, lr}
 80073be:	4c07      	ldr	r4, [pc, #28]	; (80073dc <_isatty_r+0x20>)
 80073c0:	2300      	movs	r3, #0
 80073c2:	4605      	mov	r5, r0
 80073c4:	4608      	mov	r0, r1
 80073c6:	6023      	str	r3, [r4, #0]
 80073c8:	f7fb f8a7 	bl	800251a <_isatty>
 80073cc:	1c43      	adds	r3, r0, #1
 80073ce:	d000      	beq.n	80073d2 <_isatty_r+0x16>
 80073d0:	bd38      	pop	{r3, r4, r5, pc}
 80073d2:	6823      	ldr	r3, [r4, #0]
 80073d4:	2b00      	cmp	r3, #0
 80073d6:	d0fb      	beq.n	80073d0 <_isatty_r+0x14>
 80073d8:	602b      	str	r3, [r5, #0]
 80073da:	bd38      	pop	{r3, r4, r5, pc}
 80073dc:	2000116c 	.word	0x2000116c

080073e0 <__locale_mb_cur_max>:
 80073e0:	4b04      	ldr	r3, [pc, #16]	; (80073f4 <__locale_mb_cur_max+0x14>)
 80073e2:	4a05      	ldr	r2, [pc, #20]	; (80073f8 <__locale_mb_cur_max+0x18>)
 80073e4:	681b      	ldr	r3, [r3, #0]
 80073e6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80073e8:	2b00      	cmp	r3, #0
 80073ea:	bf08      	it	eq
 80073ec:	4613      	moveq	r3, r2
 80073ee:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80073f2:	4770      	bx	lr
 80073f4:	2000001c 	.word	0x2000001c
 80073f8:	2000085c 	.word	0x2000085c

080073fc <_lseek_r>:
 80073fc:	b570      	push	{r4, r5, r6, lr}
 80073fe:	460d      	mov	r5, r1
 8007400:	4c08      	ldr	r4, [pc, #32]	; (8007424 <_lseek_r+0x28>)
 8007402:	4611      	mov	r1, r2
 8007404:	4606      	mov	r6, r0
 8007406:	461a      	mov	r2, r3
 8007408:	4628      	mov	r0, r5
 800740a:	2300      	movs	r3, #0
 800740c:	6023      	str	r3, [r4, #0]
 800740e:	f7fb f886 	bl	800251e <_lseek>
 8007412:	1c43      	adds	r3, r0, #1
 8007414:	d000      	beq.n	8007418 <_lseek_r+0x1c>
 8007416:	bd70      	pop	{r4, r5, r6, pc}
 8007418:	6823      	ldr	r3, [r4, #0]
 800741a:	2b00      	cmp	r3, #0
 800741c:	d0fb      	beq.n	8007416 <_lseek_r+0x1a>
 800741e:	6033      	str	r3, [r6, #0]
 8007420:	bd70      	pop	{r4, r5, r6, pc}
 8007422:	bf00      	nop
 8007424:	2000116c 	.word	0x2000116c

08007428 <__ascii_mbtowc>:
 8007428:	b082      	sub	sp, #8
 800742a:	b149      	cbz	r1, 8007440 <__ascii_mbtowc+0x18>
 800742c:	b15a      	cbz	r2, 8007446 <__ascii_mbtowc+0x1e>
 800742e:	b16b      	cbz	r3, 800744c <__ascii_mbtowc+0x24>
 8007430:	7813      	ldrb	r3, [r2, #0]
 8007432:	600b      	str	r3, [r1, #0]
 8007434:	7812      	ldrb	r2, [r2, #0]
 8007436:	1c10      	adds	r0, r2, #0
 8007438:	bf18      	it	ne
 800743a:	2001      	movne	r0, #1
 800743c:	b002      	add	sp, #8
 800743e:	4770      	bx	lr
 8007440:	a901      	add	r1, sp, #4
 8007442:	2a00      	cmp	r2, #0
 8007444:	d1f3      	bne.n	800742e <__ascii_mbtowc+0x6>
 8007446:	4610      	mov	r0, r2
 8007448:	b002      	add	sp, #8
 800744a:	4770      	bx	lr
 800744c:	f06f 0001 	mvn.w	r0, #1
 8007450:	e7f4      	b.n	800743c <__ascii_mbtowc+0x14>
 8007452:	bf00      	nop

08007454 <_read_r>:
 8007454:	b570      	push	{r4, r5, r6, lr}
 8007456:	460d      	mov	r5, r1
 8007458:	4c08      	ldr	r4, [pc, #32]	; (800747c <_read_r+0x28>)
 800745a:	4611      	mov	r1, r2
 800745c:	4606      	mov	r6, r0
 800745e:	461a      	mov	r2, r3
 8007460:	4628      	mov	r0, r5
 8007462:	2300      	movs	r3, #0
 8007464:	6023      	str	r3, [r4, #0]
 8007466:	f7fb f80e 	bl	8002486 <_read>
 800746a:	1c43      	adds	r3, r0, #1
 800746c:	d000      	beq.n	8007470 <_read_r+0x1c>
 800746e:	bd70      	pop	{r4, r5, r6, pc}
 8007470:	6823      	ldr	r3, [r4, #0]
 8007472:	2b00      	cmp	r3, #0
 8007474:	d0fb      	beq.n	800746e <_read_r+0x1a>
 8007476:	6033      	str	r3, [r6, #0]
 8007478:	bd70      	pop	{r4, r5, r6, pc}
 800747a:	bf00      	nop
 800747c:	2000116c 	.word	0x2000116c

08007480 <__swbuf_r>:
 8007480:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007482:	460d      	mov	r5, r1
 8007484:	4614      	mov	r4, r2
 8007486:	4606      	mov	r6, r0
 8007488:	b110      	cbz	r0, 8007490 <__swbuf_r+0x10>
 800748a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800748c:	2b00      	cmp	r3, #0
 800748e:	d043      	beq.n	8007518 <__swbuf_r+0x98>
 8007490:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007494:	69a3      	ldr	r3, [r4, #24]
 8007496:	60a3      	str	r3, [r4, #8]
 8007498:	b291      	uxth	r1, r2
 800749a:	0708      	lsls	r0, r1, #28
 800749c:	d51b      	bpl.n	80074d6 <__swbuf_r+0x56>
 800749e:	6923      	ldr	r3, [r4, #16]
 80074a0:	b1cb      	cbz	r3, 80074d6 <__swbuf_r+0x56>
 80074a2:	b2ed      	uxtb	r5, r5
 80074a4:	0489      	lsls	r1, r1, #18
 80074a6:	462f      	mov	r7, r5
 80074a8:	d522      	bpl.n	80074f0 <__swbuf_r+0x70>
 80074aa:	6822      	ldr	r2, [r4, #0]
 80074ac:	6961      	ldr	r1, [r4, #20]
 80074ae:	1ad3      	subs	r3, r2, r3
 80074b0:	4299      	cmp	r1, r3
 80074b2:	dd29      	ble.n	8007508 <__swbuf_r+0x88>
 80074b4:	3301      	adds	r3, #1
 80074b6:	68a1      	ldr	r1, [r4, #8]
 80074b8:	1c50      	adds	r0, r2, #1
 80074ba:	3901      	subs	r1, #1
 80074bc:	60a1      	str	r1, [r4, #8]
 80074be:	6020      	str	r0, [r4, #0]
 80074c0:	7015      	strb	r5, [r2, #0]
 80074c2:	6962      	ldr	r2, [r4, #20]
 80074c4:	429a      	cmp	r2, r3
 80074c6:	d02a      	beq.n	800751e <__swbuf_r+0x9e>
 80074c8:	89a3      	ldrh	r3, [r4, #12]
 80074ca:	07db      	lsls	r3, r3, #31
 80074cc:	d501      	bpl.n	80074d2 <__swbuf_r+0x52>
 80074ce:	2d0a      	cmp	r5, #10
 80074d0:	d025      	beq.n	800751e <__swbuf_r+0x9e>
 80074d2:	4638      	mov	r0, r7
 80074d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80074d6:	4621      	mov	r1, r4
 80074d8:	4630      	mov	r0, r6
 80074da:	f7fc fffd 	bl	80044d8 <__swsetup_r>
 80074de:	bb20      	cbnz	r0, 800752a <__swbuf_r+0xaa>
 80074e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80074e4:	6923      	ldr	r3, [r4, #16]
 80074e6:	b291      	uxth	r1, r2
 80074e8:	b2ed      	uxtb	r5, r5
 80074ea:	0489      	lsls	r1, r1, #18
 80074ec:	462f      	mov	r7, r5
 80074ee:	d4dc      	bmi.n	80074aa <__swbuf_r+0x2a>
 80074f0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80074f2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80074f6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80074fa:	81a2      	strh	r2, [r4, #12]
 80074fc:	6822      	ldr	r2, [r4, #0]
 80074fe:	6661      	str	r1, [r4, #100]	; 0x64
 8007500:	6961      	ldr	r1, [r4, #20]
 8007502:	1ad3      	subs	r3, r2, r3
 8007504:	4299      	cmp	r1, r3
 8007506:	dcd5      	bgt.n	80074b4 <__swbuf_r+0x34>
 8007508:	4621      	mov	r1, r4
 800750a:	4630      	mov	r0, r6
 800750c:	f7fe f8a6 	bl	800565c <_fflush_r>
 8007510:	b958      	cbnz	r0, 800752a <__swbuf_r+0xaa>
 8007512:	6822      	ldr	r2, [r4, #0]
 8007514:	2301      	movs	r3, #1
 8007516:	e7ce      	b.n	80074b6 <__swbuf_r+0x36>
 8007518:	f7fe f8fc 	bl	8005714 <__sinit>
 800751c:	e7b8      	b.n	8007490 <__swbuf_r+0x10>
 800751e:	4621      	mov	r1, r4
 8007520:	4630      	mov	r0, r6
 8007522:	f7fe f89b 	bl	800565c <_fflush_r>
 8007526:	2800      	cmp	r0, #0
 8007528:	d0d3      	beq.n	80074d2 <__swbuf_r+0x52>
 800752a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800752e:	e7d0      	b.n	80074d2 <__swbuf_r+0x52>

08007530 <_wcrtomb_r>:
 8007530:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007532:	4c11      	ldr	r4, [pc, #68]	; (8007578 <_wcrtomb_r+0x48>)
 8007534:	6824      	ldr	r4, [r4, #0]
 8007536:	b085      	sub	sp, #20
 8007538:	4606      	mov	r6, r0
 800753a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800753c:	461f      	mov	r7, r3
 800753e:	b151      	cbz	r1, 8007556 <_wcrtomb_r+0x26>
 8007540:	4d0e      	ldr	r5, [pc, #56]	; (800757c <_wcrtomb_r+0x4c>)
 8007542:	2c00      	cmp	r4, #0
 8007544:	bf08      	it	eq
 8007546:	462c      	moveq	r4, r5
 8007548:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800754c:	47a0      	blx	r4
 800754e:	1c43      	adds	r3, r0, #1
 8007550:	d00c      	beq.n	800756c <_wcrtomb_r+0x3c>
 8007552:	b005      	add	sp, #20
 8007554:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007556:	4a09      	ldr	r2, [pc, #36]	; (800757c <_wcrtomb_r+0x4c>)
 8007558:	2c00      	cmp	r4, #0
 800755a:	bf08      	it	eq
 800755c:	4614      	moveq	r4, r2
 800755e:	460a      	mov	r2, r1
 8007560:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007564:	a901      	add	r1, sp, #4
 8007566:	47a0      	blx	r4
 8007568:	1c43      	adds	r3, r0, #1
 800756a:	d1f2      	bne.n	8007552 <_wcrtomb_r+0x22>
 800756c:	2200      	movs	r2, #0
 800756e:	238a      	movs	r3, #138	; 0x8a
 8007570:	603a      	str	r2, [r7, #0]
 8007572:	6033      	str	r3, [r6, #0]
 8007574:	b005      	add	sp, #20
 8007576:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007578:	2000001c 	.word	0x2000001c
 800757c:	2000085c 	.word	0x2000085c

08007580 <__ascii_wctomb>:
 8007580:	b121      	cbz	r1, 800758c <__ascii_wctomb+0xc>
 8007582:	2aff      	cmp	r2, #255	; 0xff
 8007584:	d804      	bhi.n	8007590 <__ascii_wctomb+0x10>
 8007586:	700a      	strb	r2, [r1, #0]
 8007588:	2001      	movs	r0, #1
 800758a:	4770      	bx	lr
 800758c:	4608      	mov	r0, r1
 800758e:	4770      	bx	lr
 8007590:	238a      	movs	r3, #138	; 0x8a
 8007592:	6003      	str	r3, [r0, #0]
 8007594:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007598:	4770      	bx	lr
 800759a:	bf00      	nop

0800759c <_init>:
 800759c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800759e:	bf00      	nop
 80075a0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80075a2:	bc08      	pop	{r3}
 80075a4:	469e      	mov	lr, r3
 80075a6:	4770      	bx	lr

080075a8 <_fini>:
 80075a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80075aa:	bf00      	nop
 80075ac:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80075ae:	bc08      	pop	{r3}
 80075b0:	469e      	mov	lr, r3
 80075b2:	4770      	bx	lr
 80075b4:	0000      	movs	r0, r0
	...
