
dijkstra.elf:     file format elf32-littlearm


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
 80001d8:	20000b58 	.word	0x20000b58
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007188 	.word	0x08007188

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000b5c 	.word	0x20000b5c
 80001fc:	08007188 	.word	0x08007188

08000200 <__aeabi_uldivmod>:
 8000200:	b953      	cbnz	r3, 8000218 <__aeabi_uldivmod+0x18>
 8000202:	b94a      	cbnz	r2, 8000218 <__aeabi_uldivmod+0x18>
 8000204:	2900      	cmp	r1, #0
 8000206:	bf08      	it	eq
 8000208:	2800      	cmpeq	r0, #0
 800020a:	bf1c      	itt	ne
 800020c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000210:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000214:	f000 b972 	b.w	80004fc <__aeabi_idiv0>
 8000218:	f1ad 0c08 	sub.w	ip, sp, #8
 800021c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000220:	f000 f806 	bl	8000230 <__udivmoddi4>
 8000224:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000228:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800022c:	b004      	add	sp, #16
 800022e:	4770      	bx	lr

08000230 <__udivmoddi4>:
 8000230:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000234:	9e08      	ldr	r6, [sp, #32]
 8000236:	4604      	mov	r4, r0
 8000238:	4688      	mov	r8, r1
 800023a:	2b00      	cmp	r3, #0
 800023c:	d14b      	bne.n	80002d6 <__udivmoddi4+0xa6>
 800023e:	428a      	cmp	r2, r1
 8000240:	4615      	mov	r5, r2
 8000242:	d967      	bls.n	8000314 <__udivmoddi4+0xe4>
 8000244:	fab2 f282 	clz	r2, r2
 8000248:	b14a      	cbz	r2, 800025e <__udivmoddi4+0x2e>
 800024a:	f1c2 0720 	rsb	r7, r2, #32
 800024e:	fa01 f302 	lsl.w	r3, r1, r2
 8000252:	fa20 f707 	lsr.w	r7, r0, r7
 8000256:	4095      	lsls	r5, r2
 8000258:	ea47 0803 	orr.w	r8, r7, r3
 800025c:	4094      	lsls	r4, r2
 800025e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000262:	0c23      	lsrs	r3, r4, #16
 8000264:	fbb8 f7fe 	udiv	r7, r8, lr
 8000268:	fa1f fc85 	uxth.w	ip, r5
 800026c:	fb0e 8817 	mls	r8, lr, r7, r8
 8000270:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000274:	fb07 f10c 	mul.w	r1, r7, ip
 8000278:	4299      	cmp	r1, r3
 800027a:	d909      	bls.n	8000290 <__udivmoddi4+0x60>
 800027c:	18eb      	adds	r3, r5, r3
 800027e:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000282:	f080 811b 	bcs.w	80004bc <__udivmoddi4+0x28c>
 8000286:	4299      	cmp	r1, r3
 8000288:	f240 8118 	bls.w	80004bc <__udivmoddi4+0x28c>
 800028c:	3f02      	subs	r7, #2
 800028e:	442b      	add	r3, r5
 8000290:	1a5b      	subs	r3, r3, r1
 8000292:	b2a4      	uxth	r4, r4
 8000294:	fbb3 f0fe 	udiv	r0, r3, lr
 8000298:	fb0e 3310 	mls	r3, lr, r0, r3
 800029c:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80002a0:	fb00 fc0c 	mul.w	ip, r0, ip
 80002a4:	45a4      	cmp	ip, r4
 80002a6:	d909      	bls.n	80002bc <__udivmoddi4+0x8c>
 80002a8:	192c      	adds	r4, r5, r4
 80002aa:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 80002ae:	f080 8107 	bcs.w	80004c0 <__udivmoddi4+0x290>
 80002b2:	45a4      	cmp	ip, r4
 80002b4:	f240 8104 	bls.w	80004c0 <__udivmoddi4+0x290>
 80002b8:	3802      	subs	r0, #2
 80002ba:	442c      	add	r4, r5
 80002bc:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 80002c0:	eba4 040c 	sub.w	r4, r4, ip
 80002c4:	2700      	movs	r7, #0
 80002c6:	b11e      	cbz	r6, 80002d0 <__udivmoddi4+0xa0>
 80002c8:	40d4      	lsrs	r4, r2
 80002ca:	2300      	movs	r3, #0
 80002cc:	e9c6 4300 	strd	r4, r3, [r6]
 80002d0:	4639      	mov	r1, r7
 80002d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002d6:	428b      	cmp	r3, r1
 80002d8:	d909      	bls.n	80002ee <__udivmoddi4+0xbe>
 80002da:	2e00      	cmp	r6, #0
 80002dc:	f000 80eb 	beq.w	80004b6 <__udivmoddi4+0x286>
 80002e0:	2700      	movs	r7, #0
 80002e2:	e9c6 0100 	strd	r0, r1, [r6]
 80002e6:	4638      	mov	r0, r7
 80002e8:	4639      	mov	r1, r7
 80002ea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002ee:	fab3 f783 	clz	r7, r3
 80002f2:	2f00      	cmp	r7, #0
 80002f4:	d147      	bne.n	8000386 <__udivmoddi4+0x156>
 80002f6:	428b      	cmp	r3, r1
 80002f8:	d302      	bcc.n	8000300 <__udivmoddi4+0xd0>
 80002fa:	4282      	cmp	r2, r0
 80002fc:	f200 80fa 	bhi.w	80004f4 <__udivmoddi4+0x2c4>
 8000300:	1a84      	subs	r4, r0, r2
 8000302:	eb61 0303 	sbc.w	r3, r1, r3
 8000306:	2001      	movs	r0, #1
 8000308:	4698      	mov	r8, r3
 800030a:	2e00      	cmp	r6, #0
 800030c:	d0e0      	beq.n	80002d0 <__udivmoddi4+0xa0>
 800030e:	e9c6 4800 	strd	r4, r8, [r6]
 8000312:	e7dd      	b.n	80002d0 <__udivmoddi4+0xa0>
 8000314:	b902      	cbnz	r2, 8000318 <__udivmoddi4+0xe8>
 8000316:	deff      	udf	#255	; 0xff
 8000318:	fab2 f282 	clz	r2, r2
 800031c:	2a00      	cmp	r2, #0
 800031e:	f040 808f 	bne.w	8000440 <__udivmoddi4+0x210>
 8000322:	1b49      	subs	r1, r1, r5
 8000324:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000328:	fa1f f885 	uxth.w	r8, r5
 800032c:	2701      	movs	r7, #1
 800032e:	fbb1 fcfe 	udiv	ip, r1, lr
 8000332:	0c23      	lsrs	r3, r4, #16
 8000334:	fb0e 111c 	mls	r1, lr, ip, r1
 8000338:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800033c:	fb08 f10c 	mul.w	r1, r8, ip
 8000340:	4299      	cmp	r1, r3
 8000342:	d907      	bls.n	8000354 <__udivmoddi4+0x124>
 8000344:	18eb      	adds	r3, r5, r3
 8000346:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 800034a:	d202      	bcs.n	8000352 <__udivmoddi4+0x122>
 800034c:	4299      	cmp	r1, r3
 800034e:	f200 80cd 	bhi.w	80004ec <__udivmoddi4+0x2bc>
 8000352:	4684      	mov	ip, r0
 8000354:	1a59      	subs	r1, r3, r1
 8000356:	b2a3      	uxth	r3, r4
 8000358:	fbb1 f0fe 	udiv	r0, r1, lr
 800035c:	fb0e 1410 	mls	r4, lr, r0, r1
 8000360:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000364:	fb08 f800 	mul.w	r8, r8, r0
 8000368:	45a0      	cmp	r8, r4
 800036a:	d907      	bls.n	800037c <__udivmoddi4+0x14c>
 800036c:	192c      	adds	r4, r5, r4
 800036e:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000372:	d202      	bcs.n	800037a <__udivmoddi4+0x14a>
 8000374:	45a0      	cmp	r8, r4
 8000376:	f200 80b6 	bhi.w	80004e6 <__udivmoddi4+0x2b6>
 800037a:	4618      	mov	r0, r3
 800037c:	eba4 0408 	sub.w	r4, r4, r8
 8000380:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000384:	e79f      	b.n	80002c6 <__udivmoddi4+0x96>
 8000386:	f1c7 0c20 	rsb	ip, r7, #32
 800038a:	40bb      	lsls	r3, r7
 800038c:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000390:	ea4e 0e03 	orr.w	lr, lr, r3
 8000394:	fa01 f407 	lsl.w	r4, r1, r7
 8000398:	fa20 f50c 	lsr.w	r5, r0, ip
 800039c:	fa21 f30c 	lsr.w	r3, r1, ip
 80003a0:	ea4f 481e 	mov.w	r8, lr, lsr #16
 80003a4:	4325      	orrs	r5, r4
 80003a6:	fbb3 f9f8 	udiv	r9, r3, r8
 80003aa:	0c2c      	lsrs	r4, r5, #16
 80003ac:	fb08 3319 	mls	r3, r8, r9, r3
 80003b0:	fa1f fa8e 	uxth.w	sl, lr
 80003b4:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 80003b8:	fb09 f40a 	mul.w	r4, r9, sl
 80003bc:	429c      	cmp	r4, r3
 80003be:	fa02 f207 	lsl.w	r2, r2, r7
 80003c2:	fa00 f107 	lsl.w	r1, r0, r7
 80003c6:	d90b      	bls.n	80003e0 <__udivmoddi4+0x1b0>
 80003c8:	eb1e 0303 	adds.w	r3, lr, r3
 80003cc:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 80003d0:	f080 8087 	bcs.w	80004e2 <__udivmoddi4+0x2b2>
 80003d4:	429c      	cmp	r4, r3
 80003d6:	f240 8084 	bls.w	80004e2 <__udivmoddi4+0x2b2>
 80003da:	f1a9 0902 	sub.w	r9, r9, #2
 80003de:	4473      	add	r3, lr
 80003e0:	1b1b      	subs	r3, r3, r4
 80003e2:	b2ad      	uxth	r5, r5
 80003e4:	fbb3 f0f8 	udiv	r0, r3, r8
 80003e8:	fb08 3310 	mls	r3, r8, r0, r3
 80003ec:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 80003f0:	fb00 fa0a 	mul.w	sl, r0, sl
 80003f4:	45a2      	cmp	sl, r4
 80003f6:	d908      	bls.n	800040a <__udivmoddi4+0x1da>
 80003f8:	eb1e 0404 	adds.w	r4, lr, r4
 80003fc:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000400:	d26b      	bcs.n	80004da <__udivmoddi4+0x2aa>
 8000402:	45a2      	cmp	sl, r4
 8000404:	d969      	bls.n	80004da <__udivmoddi4+0x2aa>
 8000406:	3802      	subs	r0, #2
 8000408:	4474      	add	r4, lr
 800040a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 800040e:	fba0 8902 	umull	r8, r9, r0, r2
 8000412:	eba4 040a 	sub.w	r4, r4, sl
 8000416:	454c      	cmp	r4, r9
 8000418:	46c2      	mov	sl, r8
 800041a:	464b      	mov	r3, r9
 800041c:	d354      	bcc.n	80004c8 <__udivmoddi4+0x298>
 800041e:	d051      	beq.n	80004c4 <__udivmoddi4+0x294>
 8000420:	2e00      	cmp	r6, #0
 8000422:	d069      	beq.n	80004f8 <__udivmoddi4+0x2c8>
 8000424:	ebb1 050a 	subs.w	r5, r1, sl
 8000428:	eb64 0403 	sbc.w	r4, r4, r3
 800042c:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000430:	40fd      	lsrs	r5, r7
 8000432:	40fc      	lsrs	r4, r7
 8000434:	ea4c 0505 	orr.w	r5, ip, r5
 8000438:	e9c6 5400 	strd	r5, r4, [r6]
 800043c:	2700      	movs	r7, #0
 800043e:	e747      	b.n	80002d0 <__udivmoddi4+0xa0>
 8000440:	f1c2 0320 	rsb	r3, r2, #32
 8000444:	fa20 f703 	lsr.w	r7, r0, r3
 8000448:	4095      	lsls	r5, r2
 800044a:	fa01 f002 	lsl.w	r0, r1, r2
 800044e:	fa21 f303 	lsr.w	r3, r1, r3
 8000452:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000456:	4338      	orrs	r0, r7
 8000458:	0c01      	lsrs	r1, r0, #16
 800045a:	fbb3 f7fe 	udiv	r7, r3, lr
 800045e:	fa1f f885 	uxth.w	r8, r5
 8000462:	fb0e 3317 	mls	r3, lr, r7, r3
 8000466:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800046a:	fb07 f308 	mul.w	r3, r7, r8
 800046e:	428b      	cmp	r3, r1
 8000470:	fa04 f402 	lsl.w	r4, r4, r2
 8000474:	d907      	bls.n	8000486 <__udivmoddi4+0x256>
 8000476:	1869      	adds	r1, r5, r1
 8000478:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 800047c:	d22f      	bcs.n	80004de <__udivmoddi4+0x2ae>
 800047e:	428b      	cmp	r3, r1
 8000480:	d92d      	bls.n	80004de <__udivmoddi4+0x2ae>
 8000482:	3f02      	subs	r7, #2
 8000484:	4429      	add	r1, r5
 8000486:	1acb      	subs	r3, r1, r3
 8000488:	b281      	uxth	r1, r0
 800048a:	fbb3 f0fe 	udiv	r0, r3, lr
 800048e:	fb0e 3310 	mls	r3, lr, r0, r3
 8000492:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000496:	fb00 f308 	mul.w	r3, r0, r8
 800049a:	428b      	cmp	r3, r1
 800049c:	d907      	bls.n	80004ae <__udivmoddi4+0x27e>
 800049e:	1869      	adds	r1, r5, r1
 80004a0:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 80004a4:	d217      	bcs.n	80004d6 <__udivmoddi4+0x2a6>
 80004a6:	428b      	cmp	r3, r1
 80004a8:	d915      	bls.n	80004d6 <__udivmoddi4+0x2a6>
 80004aa:	3802      	subs	r0, #2
 80004ac:	4429      	add	r1, r5
 80004ae:	1ac9      	subs	r1, r1, r3
 80004b0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 80004b4:	e73b      	b.n	800032e <__udivmoddi4+0xfe>
 80004b6:	4637      	mov	r7, r6
 80004b8:	4630      	mov	r0, r6
 80004ba:	e709      	b.n	80002d0 <__udivmoddi4+0xa0>
 80004bc:	4607      	mov	r7, r0
 80004be:	e6e7      	b.n	8000290 <__udivmoddi4+0x60>
 80004c0:	4618      	mov	r0, r3
 80004c2:	e6fb      	b.n	80002bc <__udivmoddi4+0x8c>
 80004c4:	4541      	cmp	r1, r8
 80004c6:	d2ab      	bcs.n	8000420 <__udivmoddi4+0x1f0>
 80004c8:	ebb8 0a02 	subs.w	sl, r8, r2
 80004cc:	eb69 020e 	sbc.w	r2, r9, lr
 80004d0:	3801      	subs	r0, #1
 80004d2:	4613      	mov	r3, r2
 80004d4:	e7a4      	b.n	8000420 <__udivmoddi4+0x1f0>
 80004d6:	4660      	mov	r0, ip
 80004d8:	e7e9      	b.n	80004ae <__udivmoddi4+0x27e>
 80004da:	4618      	mov	r0, r3
 80004dc:	e795      	b.n	800040a <__udivmoddi4+0x1da>
 80004de:	4667      	mov	r7, ip
 80004e0:	e7d1      	b.n	8000486 <__udivmoddi4+0x256>
 80004e2:	4681      	mov	r9, r0
 80004e4:	e77c      	b.n	80003e0 <__udivmoddi4+0x1b0>
 80004e6:	3802      	subs	r0, #2
 80004e8:	442c      	add	r4, r5
 80004ea:	e747      	b.n	800037c <__udivmoddi4+0x14c>
 80004ec:	f1ac 0c02 	sub.w	ip, ip, #2
 80004f0:	442b      	add	r3, r5
 80004f2:	e72f      	b.n	8000354 <__udivmoddi4+0x124>
 80004f4:	4638      	mov	r0, r7
 80004f6:	e708      	b.n	800030a <__udivmoddi4+0xda>
 80004f8:	4637      	mov	r7, r6
 80004fa:	e6e9      	b.n	80002d0 <__udivmoddi4+0xa0>

080004fc <__aeabi_idiv0>:
 80004fc:	4770      	bx	lr
 80004fe:	bf00      	nop

08000500 <memcpy>:
 8000500:	4684      	mov	ip, r0
 8000502:	ea41 0300 	orr.w	r3, r1, r0
 8000506:	f013 0303 	ands.w	r3, r3, #3
 800050a:	d16d      	bne.n	80005e8 <memcpy+0xe8>
 800050c:	3a40      	subs	r2, #64	; 0x40
 800050e:	d341      	bcc.n	8000594 <memcpy+0x94>
 8000510:	f851 3b04 	ldr.w	r3, [r1], #4
 8000514:	f840 3b04 	str.w	r3, [r0], #4
 8000518:	f851 3b04 	ldr.w	r3, [r1], #4
 800051c:	f840 3b04 	str.w	r3, [r0], #4
 8000520:	f851 3b04 	ldr.w	r3, [r1], #4
 8000524:	f840 3b04 	str.w	r3, [r0], #4
 8000528:	f851 3b04 	ldr.w	r3, [r1], #4
 800052c:	f840 3b04 	str.w	r3, [r0], #4
 8000530:	f851 3b04 	ldr.w	r3, [r1], #4
 8000534:	f840 3b04 	str.w	r3, [r0], #4
 8000538:	f851 3b04 	ldr.w	r3, [r1], #4
 800053c:	f840 3b04 	str.w	r3, [r0], #4
 8000540:	f851 3b04 	ldr.w	r3, [r1], #4
 8000544:	f840 3b04 	str.w	r3, [r0], #4
 8000548:	f851 3b04 	ldr.w	r3, [r1], #4
 800054c:	f840 3b04 	str.w	r3, [r0], #4
 8000550:	f851 3b04 	ldr.w	r3, [r1], #4
 8000554:	f840 3b04 	str.w	r3, [r0], #4
 8000558:	f851 3b04 	ldr.w	r3, [r1], #4
 800055c:	f840 3b04 	str.w	r3, [r0], #4
 8000560:	f851 3b04 	ldr.w	r3, [r1], #4
 8000564:	f840 3b04 	str.w	r3, [r0], #4
 8000568:	f851 3b04 	ldr.w	r3, [r1], #4
 800056c:	f840 3b04 	str.w	r3, [r0], #4
 8000570:	f851 3b04 	ldr.w	r3, [r1], #4
 8000574:	f840 3b04 	str.w	r3, [r0], #4
 8000578:	f851 3b04 	ldr.w	r3, [r1], #4
 800057c:	f840 3b04 	str.w	r3, [r0], #4
 8000580:	f851 3b04 	ldr.w	r3, [r1], #4
 8000584:	f840 3b04 	str.w	r3, [r0], #4
 8000588:	f851 3b04 	ldr.w	r3, [r1], #4
 800058c:	f840 3b04 	str.w	r3, [r0], #4
 8000590:	3a40      	subs	r2, #64	; 0x40
 8000592:	d2bd      	bcs.n	8000510 <memcpy+0x10>
 8000594:	3230      	adds	r2, #48	; 0x30
 8000596:	d311      	bcc.n	80005bc <memcpy+0xbc>
 8000598:	f851 3b04 	ldr.w	r3, [r1], #4
 800059c:	f840 3b04 	str.w	r3, [r0], #4
 80005a0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005a4:	f840 3b04 	str.w	r3, [r0], #4
 80005a8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005ac:	f840 3b04 	str.w	r3, [r0], #4
 80005b0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b4:	f840 3b04 	str.w	r3, [r0], #4
 80005b8:	3a10      	subs	r2, #16
 80005ba:	d2ed      	bcs.n	8000598 <memcpy+0x98>
 80005bc:	320c      	adds	r2, #12
 80005be:	d305      	bcc.n	80005cc <memcpy+0xcc>
 80005c0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c4:	f840 3b04 	str.w	r3, [r0], #4
 80005c8:	3a04      	subs	r2, #4
 80005ca:	d2f9      	bcs.n	80005c0 <memcpy+0xc0>
 80005cc:	3204      	adds	r2, #4
 80005ce:	d008      	beq.n	80005e2 <memcpy+0xe2>
 80005d0:	07d2      	lsls	r2, r2, #31
 80005d2:	bf1c      	itt	ne
 80005d4:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80005d8:	f800 3b01 	strbne.w	r3, [r0], #1
 80005dc:	d301      	bcc.n	80005e2 <memcpy+0xe2>
 80005de:	880b      	ldrh	r3, [r1, #0]
 80005e0:	8003      	strh	r3, [r0, #0]
 80005e2:	4660      	mov	r0, ip
 80005e4:	4770      	bx	lr
 80005e6:	bf00      	nop
 80005e8:	2a08      	cmp	r2, #8
 80005ea:	d313      	bcc.n	8000614 <memcpy+0x114>
 80005ec:	078b      	lsls	r3, r1, #30
 80005ee:	d08d      	beq.n	800050c <memcpy+0xc>
 80005f0:	f010 0303 	ands.w	r3, r0, #3
 80005f4:	d08a      	beq.n	800050c <memcpy+0xc>
 80005f6:	f1c3 0304 	rsb	r3, r3, #4
 80005fa:	1ad2      	subs	r2, r2, r3
 80005fc:	07db      	lsls	r3, r3, #31
 80005fe:	bf1c      	itt	ne
 8000600:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000604:	f800 3b01 	strbne.w	r3, [r0], #1
 8000608:	d380      	bcc.n	800050c <memcpy+0xc>
 800060a:	f831 3b02 	ldrh.w	r3, [r1], #2
 800060e:	f820 3b02 	strh.w	r3, [r0], #2
 8000612:	e77b      	b.n	800050c <memcpy+0xc>
 8000614:	3a04      	subs	r2, #4
 8000616:	d3d9      	bcc.n	80005cc <memcpy+0xcc>
 8000618:	3a01      	subs	r2, #1
 800061a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800061e:	f800 3b01 	strb.w	r3, [r0], #1
 8000622:	d2f9      	bcs.n	8000618 <memcpy+0x118>
 8000624:	780b      	ldrb	r3, [r1, #0]
 8000626:	7003      	strb	r3, [r0, #0]
 8000628:	784b      	ldrb	r3, [r1, #1]
 800062a:	7043      	strb	r3, [r0, #1]
 800062c:	788b      	ldrb	r3, [r1, #2]
 800062e:	7083      	strb	r3, [r0, #2]
 8000630:	4660      	mov	r0, ip
 8000632:	4770      	bx	lr
	...

08000640 <strlen>:
 8000640:	f890 f000 	pld	[r0]
 8000644:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000648:	f020 0107 	bic.w	r1, r0, #7
 800064c:	f06f 0c00 	mvn.w	ip, #0
 8000650:	f010 0407 	ands.w	r4, r0, #7
 8000654:	f891 f020 	pld	[r1, #32]
 8000658:	f040 8049 	bne.w	80006ee <strlen+0xae>
 800065c:	f04f 0400 	mov.w	r4, #0
 8000660:	f06f 0007 	mvn.w	r0, #7
 8000664:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000668:	f891 f040 	pld	[r1, #64]	; 0x40
 800066c:	f100 0008 	add.w	r0, r0, #8
 8000670:	fa82 f24c 	uadd8	r2, r2, ip
 8000674:	faa4 f28c 	sel	r2, r4, ip
 8000678:	fa83 f34c 	uadd8	r3, r3, ip
 800067c:	faa2 f38c 	sel	r3, r2, ip
 8000680:	bb4b      	cbnz	r3, 80006d6 <strlen+0x96>
 8000682:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000686:	fa82 f24c 	uadd8	r2, r2, ip
 800068a:	f100 0008 	add.w	r0, r0, #8
 800068e:	faa4 f28c 	sel	r2, r4, ip
 8000692:	fa83 f34c 	uadd8	r3, r3, ip
 8000696:	faa2 f38c 	sel	r3, r2, ip
 800069a:	b9e3      	cbnz	r3, 80006d6 <strlen+0x96>
 800069c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80006a0:	fa82 f24c 	uadd8	r2, r2, ip
 80006a4:	f100 0008 	add.w	r0, r0, #8
 80006a8:	faa4 f28c 	sel	r2, r4, ip
 80006ac:	fa83 f34c 	uadd8	r3, r3, ip
 80006b0:	faa2 f38c 	sel	r3, r2, ip
 80006b4:	b97b      	cbnz	r3, 80006d6 <strlen+0x96>
 80006b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80006ba:	f101 0120 	add.w	r1, r1, #32
 80006be:	fa82 f24c 	uadd8	r2, r2, ip
 80006c2:	f100 0008 	add.w	r0, r0, #8
 80006c6:	faa4 f28c 	sel	r2, r4, ip
 80006ca:	fa83 f34c 	uadd8	r3, r3, ip
 80006ce:	faa2 f38c 	sel	r3, r2, ip
 80006d2:	2b00      	cmp	r3, #0
 80006d4:	d0c6      	beq.n	8000664 <strlen+0x24>
 80006d6:	2a00      	cmp	r2, #0
 80006d8:	bf04      	itt	eq
 80006da:	3004      	addeq	r0, #4
 80006dc:	461a      	moveq	r2, r3
 80006de:	ba12      	rev	r2, r2
 80006e0:	fab2 f282 	clz	r2, r2
 80006e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80006e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80006ec:	4770      	bx	lr
 80006ee:	e9d1 2300 	ldrd	r2, r3, [r1]
 80006f2:	f004 0503 	and.w	r5, r4, #3
 80006f6:	f1c4 0000 	rsb	r0, r4, #0
 80006fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80006fe:	f014 0f04 	tst.w	r4, #4
 8000702:	f891 f040 	pld	[r1, #64]	; 0x40
 8000706:	fa0c f505 	lsl.w	r5, ip, r5
 800070a:	ea62 0205 	orn	r2, r2, r5
 800070e:	bf1c      	itt	ne
 8000710:	ea63 0305 	ornne	r3, r3, r5
 8000714:	4662      	movne	r2, ip
 8000716:	f04f 0400 	mov.w	r4, #0
 800071a:	e7a9      	b.n	8000670 <strlen+0x30>
 800071c:	0000      	movs	r0, r0
	...

08000720 <memchr>:
 8000720:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000724:	2a10      	cmp	r2, #16
 8000726:	db2b      	blt.n	8000780 <memchr+0x60>
 8000728:	f010 0f07 	tst.w	r0, #7
 800072c:	d008      	beq.n	8000740 <memchr+0x20>
 800072e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000732:	3a01      	subs	r2, #1
 8000734:	428b      	cmp	r3, r1
 8000736:	d02d      	beq.n	8000794 <memchr+0x74>
 8000738:	f010 0f07 	tst.w	r0, #7
 800073c:	b342      	cbz	r2, 8000790 <memchr+0x70>
 800073e:	d1f6      	bne.n	800072e <memchr+0xe>
 8000740:	b4f0      	push	{r4, r5, r6, r7}
 8000742:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000746:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800074a:	f022 0407 	bic.w	r4, r2, #7
 800074e:	f07f 0700 	mvns.w	r7, #0
 8000752:	2300      	movs	r3, #0
 8000754:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000758:	3c08      	subs	r4, #8
 800075a:	ea85 0501 	eor.w	r5, r5, r1
 800075e:	ea86 0601 	eor.w	r6, r6, r1
 8000762:	fa85 f547 	uadd8	r5, r5, r7
 8000766:	faa3 f587 	sel	r5, r3, r7
 800076a:	fa86 f647 	uadd8	r6, r6, r7
 800076e:	faa5 f687 	sel	r6, r5, r7
 8000772:	b98e      	cbnz	r6, 8000798 <memchr+0x78>
 8000774:	d1ee      	bne.n	8000754 <memchr+0x34>
 8000776:	bcf0      	pop	{r4, r5, r6, r7}
 8000778:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800077c:	f002 0207 	and.w	r2, r2, #7
 8000780:	b132      	cbz	r2, 8000790 <memchr+0x70>
 8000782:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000786:	3a01      	subs	r2, #1
 8000788:	ea83 0301 	eor.w	r3, r3, r1
 800078c:	b113      	cbz	r3, 8000794 <memchr+0x74>
 800078e:	d1f8      	bne.n	8000782 <memchr+0x62>
 8000790:	2000      	movs	r0, #0
 8000792:	4770      	bx	lr
 8000794:	3801      	subs	r0, #1
 8000796:	4770      	bx	lr
 8000798:	2d00      	cmp	r5, #0
 800079a:	bf06      	itte	eq
 800079c:	4635      	moveq	r5, r6
 800079e:	3803      	subeq	r0, #3
 80007a0:	3807      	subne	r0, #7
 80007a2:	f015 0f01 	tst.w	r5, #1
 80007a6:	d107      	bne.n	80007b8 <memchr+0x98>
 80007a8:	3001      	adds	r0, #1
 80007aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80007ae:	bf02      	ittt	eq
 80007b0:	3001      	addeq	r0, #1
 80007b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80007b6:	3001      	addeq	r0, #1
 80007b8:	bcf0      	pop	{r4, r5, r6, r7}
 80007ba:	3801      	subs	r0, #1
 80007bc:	4770      	bx	lr
 80007be:	bf00      	nop

080007c0 <__aeabi_drsub>:
 80007c0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80007c4:	e002      	b.n	80007cc <__adddf3>
 80007c6:	bf00      	nop

080007c8 <__aeabi_dsub>:
 80007c8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080007cc <__adddf3>:
 80007cc:	b530      	push	{r4, r5, lr}
 80007ce:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80007d2:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80007d6:	ea94 0f05 	teq	r4, r5
 80007da:	bf08      	it	eq
 80007dc:	ea90 0f02 	teqeq	r0, r2
 80007e0:	bf1f      	itttt	ne
 80007e2:	ea54 0c00 	orrsne.w	ip, r4, r0
 80007e6:	ea55 0c02 	orrsne.w	ip, r5, r2
 80007ea:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80007ee:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80007f2:	f000 80e2 	beq.w	80009ba <__adddf3+0x1ee>
 80007f6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80007fa:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80007fe:	bfb8      	it	lt
 8000800:	426d      	neglt	r5, r5
 8000802:	dd0c      	ble.n	800081e <__adddf3+0x52>
 8000804:	442c      	add	r4, r5
 8000806:	ea80 0202 	eor.w	r2, r0, r2
 800080a:	ea81 0303 	eor.w	r3, r1, r3
 800080e:	ea82 0000 	eor.w	r0, r2, r0
 8000812:	ea83 0101 	eor.w	r1, r3, r1
 8000816:	ea80 0202 	eor.w	r2, r0, r2
 800081a:	ea81 0303 	eor.w	r3, r1, r3
 800081e:	2d36      	cmp	r5, #54	; 0x36
 8000820:	bf88      	it	hi
 8000822:	bd30      	pophi	{r4, r5, pc}
 8000824:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000828:	ea4f 3101 	mov.w	r1, r1, lsl #12
 800082c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8000830:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000834:	d002      	beq.n	800083c <__adddf3+0x70>
 8000836:	4240      	negs	r0, r0
 8000838:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800083c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000840:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000844:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000848:	d002      	beq.n	8000850 <__adddf3+0x84>
 800084a:	4252      	negs	r2, r2
 800084c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000850:	ea94 0f05 	teq	r4, r5
 8000854:	f000 80a7 	beq.w	80009a6 <__adddf3+0x1da>
 8000858:	f1a4 0401 	sub.w	r4, r4, #1
 800085c:	f1d5 0e20 	rsbs	lr, r5, #32
 8000860:	db0d      	blt.n	800087e <__adddf3+0xb2>
 8000862:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000866:	fa22 f205 	lsr.w	r2, r2, r5
 800086a:	1880      	adds	r0, r0, r2
 800086c:	f141 0100 	adc.w	r1, r1, #0
 8000870:	fa03 f20e 	lsl.w	r2, r3, lr
 8000874:	1880      	adds	r0, r0, r2
 8000876:	fa43 f305 	asr.w	r3, r3, r5
 800087a:	4159      	adcs	r1, r3
 800087c:	e00e      	b.n	800089c <__adddf3+0xd0>
 800087e:	f1a5 0520 	sub.w	r5, r5, #32
 8000882:	f10e 0e20 	add.w	lr, lr, #32
 8000886:	2a01      	cmp	r2, #1
 8000888:	fa03 fc0e 	lsl.w	ip, r3, lr
 800088c:	bf28      	it	cs
 800088e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000892:	fa43 f305 	asr.w	r3, r3, r5
 8000896:	18c0      	adds	r0, r0, r3
 8000898:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 800089c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80008a0:	d507      	bpl.n	80008b2 <__adddf3+0xe6>
 80008a2:	f04f 0e00 	mov.w	lr, #0
 80008a6:	f1dc 0c00 	rsbs	ip, ip, #0
 80008aa:	eb7e 0000 	sbcs.w	r0, lr, r0
 80008ae:	eb6e 0101 	sbc.w	r1, lr, r1
 80008b2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80008b6:	d31b      	bcc.n	80008f0 <__adddf3+0x124>
 80008b8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80008bc:	d30c      	bcc.n	80008d8 <__adddf3+0x10c>
 80008be:	0849      	lsrs	r1, r1, #1
 80008c0:	ea5f 0030 	movs.w	r0, r0, rrx
 80008c4:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80008c8:	f104 0401 	add.w	r4, r4, #1
 80008cc:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80008d0:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80008d4:	f080 809a 	bcs.w	8000a0c <__adddf3+0x240>
 80008d8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 80008dc:	bf08      	it	eq
 80008de:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80008e2:	f150 0000 	adcs.w	r0, r0, #0
 80008e6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80008ea:	ea41 0105 	orr.w	r1, r1, r5
 80008ee:	bd30      	pop	{r4, r5, pc}
 80008f0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80008f4:	4140      	adcs	r0, r0
 80008f6:	eb41 0101 	adc.w	r1, r1, r1
 80008fa:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008fe:	f1a4 0401 	sub.w	r4, r4, #1
 8000902:	d1e9      	bne.n	80008d8 <__adddf3+0x10c>
 8000904:	f091 0f00 	teq	r1, #0
 8000908:	bf04      	itt	eq
 800090a:	4601      	moveq	r1, r0
 800090c:	2000      	moveq	r0, #0
 800090e:	fab1 f381 	clz	r3, r1
 8000912:	bf08      	it	eq
 8000914:	3320      	addeq	r3, #32
 8000916:	f1a3 030b 	sub.w	r3, r3, #11
 800091a:	f1b3 0220 	subs.w	r2, r3, #32
 800091e:	da0c      	bge.n	800093a <__adddf3+0x16e>
 8000920:	320c      	adds	r2, #12
 8000922:	dd08      	ble.n	8000936 <__adddf3+0x16a>
 8000924:	f102 0c14 	add.w	ip, r2, #20
 8000928:	f1c2 020c 	rsb	r2, r2, #12
 800092c:	fa01 f00c 	lsl.w	r0, r1, ip
 8000930:	fa21 f102 	lsr.w	r1, r1, r2
 8000934:	e00c      	b.n	8000950 <__adddf3+0x184>
 8000936:	f102 0214 	add.w	r2, r2, #20
 800093a:	bfd8      	it	le
 800093c:	f1c2 0c20 	rsble	ip, r2, #32
 8000940:	fa01 f102 	lsl.w	r1, r1, r2
 8000944:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000948:	bfdc      	itt	le
 800094a:	ea41 010c 	orrle.w	r1, r1, ip
 800094e:	4090      	lslle	r0, r2
 8000950:	1ae4      	subs	r4, r4, r3
 8000952:	bfa2      	ittt	ge
 8000954:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000958:	4329      	orrge	r1, r5
 800095a:	bd30      	popge	{r4, r5, pc}
 800095c:	ea6f 0404 	mvn.w	r4, r4
 8000960:	3c1f      	subs	r4, #31
 8000962:	da1c      	bge.n	800099e <__adddf3+0x1d2>
 8000964:	340c      	adds	r4, #12
 8000966:	dc0e      	bgt.n	8000986 <__adddf3+0x1ba>
 8000968:	f104 0414 	add.w	r4, r4, #20
 800096c:	f1c4 0220 	rsb	r2, r4, #32
 8000970:	fa20 f004 	lsr.w	r0, r0, r4
 8000974:	fa01 f302 	lsl.w	r3, r1, r2
 8000978:	ea40 0003 	orr.w	r0, r0, r3
 800097c:	fa21 f304 	lsr.w	r3, r1, r4
 8000980:	ea45 0103 	orr.w	r1, r5, r3
 8000984:	bd30      	pop	{r4, r5, pc}
 8000986:	f1c4 040c 	rsb	r4, r4, #12
 800098a:	f1c4 0220 	rsb	r2, r4, #32
 800098e:	fa20 f002 	lsr.w	r0, r0, r2
 8000992:	fa01 f304 	lsl.w	r3, r1, r4
 8000996:	ea40 0003 	orr.w	r0, r0, r3
 800099a:	4629      	mov	r1, r5
 800099c:	bd30      	pop	{r4, r5, pc}
 800099e:	fa21 f004 	lsr.w	r0, r1, r4
 80009a2:	4629      	mov	r1, r5
 80009a4:	bd30      	pop	{r4, r5, pc}
 80009a6:	f094 0f00 	teq	r4, #0
 80009aa:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80009ae:	bf06      	itte	eq
 80009b0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80009b4:	3401      	addeq	r4, #1
 80009b6:	3d01      	subne	r5, #1
 80009b8:	e74e      	b.n	8000858 <__adddf3+0x8c>
 80009ba:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80009be:	bf18      	it	ne
 80009c0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80009c4:	d029      	beq.n	8000a1a <__adddf3+0x24e>
 80009c6:	ea94 0f05 	teq	r4, r5
 80009ca:	bf08      	it	eq
 80009cc:	ea90 0f02 	teqeq	r0, r2
 80009d0:	d005      	beq.n	80009de <__adddf3+0x212>
 80009d2:	ea54 0c00 	orrs.w	ip, r4, r0
 80009d6:	bf04      	itt	eq
 80009d8:	4619      	moveq	r1, r3
 80009da:	4610      	moveq	r0, r2
 80009dc:	bd30      	pop	{r4, r5, pc}
 80009de:	ea91 0f03 	teq	r1, r3
 80009e2:	bf1e      	ittt	ne
 80009e4:	2100      	movne	r1, #0
 80009e6:	2000      	movne	r0, #0
 80009e8:	bd30      	popne	{r4, r5, pc}
 80009ea:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 80009ee:	d105      	bne.n	80009fc <__adddf3+0x230>
 80009f0:	0040      	lsls	r0, r0, #1
 80009f2:	4149      	adcs	r1, r1
 80009f4:	bf28      	it	cs
 80009f6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 80009fa:	bd30      	pop	{r4, r5, pc}
 80009fc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000a00:	bf3c      	itt	cc
 8000a02:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000a06:	bd30      	popcc	{r4, r5, pc}
 8000a08:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000a0c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000a10:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000a14:	f04f 0000 	mov.w	r0, #0
 8000a18:	bd30      	pop	{r4, r5, pc}
 8000a1a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000a1e:	bf1a      	itte	ne
 8000a20:	4619      	movne	r1, r3
 8000a22:	4610      	movne	r0, r2
 8000a24:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000a28:	bf1c      	itt	ne
 8000a2a:	460b      	movne	r3, r1
 8000a2c:	4602      	movne	r2, r0
 8000a2e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000a32:	bf06      	itte	eq
 8000a34:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000a38:	ea91 0f03 	teqeq	r1, r3
 8000a3c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000a40:	bd30      	pop	{r4, r5, pc}
 8000a42:	bf00      	nop

08000a44 <__aeabi_ui2d>:
 8000a44:	f090 0f00 	teq	r0, #0
 8000a48:	bf04      	itt	eq
 8000a4a:	2100      	moveq	r1, #0
 8000a4c:	4770      	bxeq	lr
 8000a4e:	b530      	push	{r4, r5, lr}
 8000a50:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a54:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a58:	f04f 0500 	mov.w	r5, #0
 8000a5c:	f04f 0100 	mov.w	r1, #0
 8000a60:	e750      	b.n	8000904 <__adddf3+0x138>
 8000a62:	bf00      	nop

08000a64 <__aeabi_i2d>:
 8000a64:	f090 0f00 	teq	r0, #0
 8000a68:	bf04      	itt	eq
 8000a6a:	2100      	moveq	r1, #0
 8000a6c:	4770      	bxeq	lr
 8000a6e:	b530      	push	{r4, r5, lr}
 8000a70:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a74:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a78:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000a7c:	bf48      	it	mi
 8000a7e:	4240      	negmi	r0, r0
 8000a80:	f04f 0100 	mov.w	r1, #0
 8000a84:	e73e      	b.n	8000904 <__adddf3+0x138>
 8000a86:	bf00      	nop

08000a88 <__aeabi_f2d>:
 8000a88:	0042      	lsls	r2, r0, #1
 8000a8a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000a8e:	ea4f 0131 	mov.w	r1, r1, rrx
 8000a92:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000a96:	bf1f      	itttt	ne
 8000a98:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000a9c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000aa0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000aa4:	4770      	bxne	lr
 8000aa6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000aaa:	bf08      	it	eq
 8000aac:	4770      	bxeq	lr
 8000aae:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000ab2:	bf04      	itt	eq
 8000ab4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000ab8:	4770      	bxeq	lr
 8000aba:	b530      	push	{r4, r5, lr}
 8000abc:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000ac0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000ac4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000ac8:	e71c      	b.n	8000904 <__adddf3+0x138>
 8000aca:	bf00      	nop

08000acc <__aeabi_ul2d>:
 8000acc:	ea50 0201 	orrs.w	r2, r0, r1
 8000ad0:	bf08      	it	eq
 8000ad2:	4770      	bxeq	lr
 8000ad4:	b530      	push	{r4, r5, lr}
 8000ad6:	f04f 0500 	mov.w	r5, #0
 8000ada:	e00a      	b.n	8000af2 <__aeabi_l2d+0x16>

08000adc <__aeabi_l2d>:
 8000adc:	ea50 0201 	orrs.w	r2, r0, r1
 8000ae0:	bf08      	it	eq
 8000ae2:	4770      	bxeq	lr
 8000ae4:	b530      	push	{r4, r5, lr}
 8000ae6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000aea:	d502      	bpl.n	8000af2 <__aeabi_l2d+0x16>
 8000aec:	4240      	negs	r0, r0
 8000aee:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000af2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000af6:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000afa:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000afe:	f43f aed8 	beq.w	80008b2 <__adddf3+0xe6>
 8000b02:	f04f 0203 	mov.w	r2, #3
 8000b06:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b0a:	bf18      	it	ne
 8000b0c:	3203      	addne	r2, #3
 8000b0e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b12:	bf18      	it	ne
 8000b14:	3203      	addne	r2, #3
 8000b16:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000b1a:	f1c2 0320 	rsb	r3, r2, #32
 8000b1e:	fa00 fc03 	lsl.w	ip, r0, r3
 8000b22:	fa20 f002 	lsr.w	r0, r0, r2
 8000b26:	fa01 fe03 	lsl.w	lr, r1, r3
 8000b2a:	ea40 000e 	orr.w	r0, r0, lr
 8000b2e:	fa21 f102 	lsr.w	r1, r1, r2
 8000b32:	4414      	add	r4, r2
 8000b34:	e6bd      	b.n	80008b2 <__adddf3+0xe6>
 8000b36:	bf00      	nop

08000b38 <__aeabi_dmul>:
 8000b38:	b570      	push	{r4, r5, r6, lr}
 8000b3a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000b3e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000b42:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000b46:	bf1d      	ittte	ne
 8000b48:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000b4c:	ea94 0f0c 	teqne	r4, ip
 8000b50:	ea95 0f0c 	teqne	r5, ip
 8000b54:	f000 f8de 	bleq	8000d14 <__aeabi_dmul+0x1dc>
 8000b58:	442c      	add	r4, r5
 8000b5a:	ea81 0603 	eor.w	r6, r1, r3
 8000b5e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000b62:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000b66:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000b6a:	bf18      	it	ne
 8000b6c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000b70:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000b74:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000b78:	d038      	beq.n	8000bec <__aeabi_dmul+0xb4>
 8000b7a:	fba0 ce02 	umull	ip, lr, r0, r2
 8000b7e:	f04f 0500 	mov.w	r5, #0
 8000b82:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000b86:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000b8a:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000b8e:	f04f 0600 	mov.w	r6, #0
 8000b92:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000b96:	f09c 0f00 	teq	ip, #0
 8000b9a:	bf18      	it	ne
 8000b9c:	f04e 0e01 	orrne.w	lr, lr, #1
 8000ba0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000ba4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000ba8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000bac:	d204      	bcs.n	8000bb8 <__aeabi_dmul+0x80>
 8000bae:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000bb2:	416d      	adcs	r5, r5
 8000bb4:	eb46 0606 	adc.w	r6, r6, r6
 8000bb8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000bbc:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000bc0:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000bc4:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000bc8:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000bcc:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000bd0:	bf88      	it	hi
 8000bd2:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000bd6:	d81e      	bhi.n	8000c16 <__aeabi_dmul+0xde>
 8000bd8:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000bdc:	bf08      	it	eq
 8000bde:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000be2:	f150 0000 	adcs.w	r0, r0, #0
 8000be6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000bea:	bd70      	pop	{r4, r5, r6, pc}
 8000bec:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000bf0:	ea46 0101 	orr.w	r1, r6, r1
 8000bf4:	ea40 0002 	orr.w	r0, r0, r2
 8000bf8:	ea81 0103 	eor.w	r1, r1, r3
 8000bfc:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000c00:	bfc2      	ittt	gt
 8000c02:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000c06:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000c0a:	bd70      	popgt	{r4, r5, r6, pc}
 8000c0c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c10:	f04f 0e00 	mov.w	lr, #0
 8000c14:	3c01      	subs	r4, #1
 8000c16:	f300 80ab 	bgt.w	8000d70 <__aeabi_dmul+0x238>
 8000c1a:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000c1e:	bfde      	ittt	le
 8000c20:	2000      	movle	r0, #0
 8000c22:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000c26:	bd70      	pople	{r4, r5, r6, pc}
 8000c28:	f1c4 0400 	rsb	r4, r4, #0
 8000c2c:	3c20      	subs	r4, #32
 8000c2e:	da35      	bge.n	8000c9c <__aeabi_dmul+0x164>
 8000c30:	340c      	adds	r4, #12
 8000c32:	dc1b      	bgt.n	8000c6c <__aeabi_dmul+0x134>
 8000c34:	f104 0414 	add.w	r4, r4, #20
 8000c38:	f1c4 0520 	rsb	r5, r4, #32
 8000c3c:	fa00 f305 	lsl.w	r3, r0, r5
 8000c40:	fa20 f004 	lsr.w	r0, r0, r4
 8000c44:	fa01 f205 	lsl.w	r2, r1, r5
 8000c48:	ea40 0002 	orr.w	r0, r0, r2
 8000c4c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000c50:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000c54:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000c58:	fa21 f604 	lsr.w	r6, r1, r4
 8000c5c:	eb42 0106 	adc.w	r1, r2, r6
 8000c60:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000c64:	bf08      	it	eq
 8000c66:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000c6a:	bd70      	pop	{r4, r5, r6, pc}
 8000c6c:	f1c4 040c 	rsb	r4, r4, #12
 8000c70:	f1c4 0520 	rsb	r5, r4, #32
 8000c74:	fa00 f304 	lsl.w	r3, r0, r4
 8000c78:	fa20 f005 	lsr.w	r0, r0, r5
 8000c7c:	fa01 f204 	lsl.w	r2, r1, r4
 8000c80:	ea40 0002 	orr.w	r0, r0, r2
 8000c84:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000c88:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000c8c:	f141 0100 	adc.w	r1, r1, #0
 8000c90:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000c94:	bf08      	it	eq
 8000c96:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000c9a:	bd70      	pop	{r4, r5, r6, pc}
 8000c9c:	f1c4 0520 	rsb	r5, r4, #32
 8000ca0:	fa00 f205 	lsl.w	r2, r0, r5
 8000ca4:	ea4e 0e02 	orr.w	lr, lr, r2
 8000ca8:	fa20 f304 	lsr.w	r3, r0, r4
 8000cac:	fa01 f205 	lsl.w	r2, r1, r5
 8000cb0:	ea43 0302 	orr.w	r3, r3, r2
 8000cb4:	fa21 f004 	lsr.w	r0, r1, r4
 8000cb8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000cbc:	fa21 f204 	lsr.w	r2, r1, r4
 8000cc0:	ea20 0002 	bic.w	r0, r0, r2
 8000cc4:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000cc8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000ccc:	bf08      	it	eq
 8000cce:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000cd2:	bd70      	pop	{r4, r5, r6, pc}
 8000cd4:	f094 0f00 	teq	r4, #0
 8000cd8:	d10f      	bne.n	8000cfa <__aeabi_dmul+0x1c2>
 8000cda:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000cde:	0040      	lsls	r0, r0, #1
 8000ce0:	eb41 0101 	adc.w	r1, r1, r1
 8000ce4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000ce8:	bf08      	it	eq
 8000cea:	3c01      	subeq	r4, #1
 8000cec:	d0f7      	beq.n	8000cde <__aeabi_dmul+0x1a6>
 8000cee:	ea41 0106 	orr.w	r1, r1, r6
 8000cf2:	f095 0f00 	teq	r5, #0
 8000cf6:	bf18      	it	ne
 8000cf8:	4770      	bxne	lr
 8000cfa:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000cfe:	0052      	lsls	r2, r2, #1
 8000d00:	eb43 0303 	adc.w	r3, r3, r3
 8000d04:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000d08:	bf08      	it	eq
 8000d0a:	3d01      	subeq	r5, #1
 8000d0c:	d0f7      	beq.n	8000cfe <__aeabi_dmul+0x1c6>
 8000d0e:	ea43 0306 	orr.w	r3, r3, r6
 8000d12:	4770      	bx	lr
 8000d14:	ea94 0f0c 	teq	r4, ip
 8000d18:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000d1c:	bf18      	it	ne
 8000d1e:	ea95 0f0c 	teqne	r5, ip
 8000d22:	d00c      	beq.n	8000d3e <__aeabi_dmul+0x206>
 8000d24:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d28:	bf18      	it	ne
 8000d2a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d2e:	d1d1      	bne.n	8000cd4 <__aeabi_dmul+0x19c>
 8000d30:	ea81 0103 	eor.w	r1, r1, r3
 8000d34:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d38:	f04f 0000 	mov.w	r0, #0
 8000d3c:	bd70      	pop	{r4, r5, r6, pc}
 8000d3e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d42:	bf06      	itte	eq
 8000d44:	4610      	moveq	r0, r2
 8000d46:	4619      	moveq	r1, r3
 8000d48:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d4c:	d019      	beq.n	8000d82 <__aeabi_dmul+0x24a>
 8000d4e:	ea94 0f0c 	teq	r4, ip
 8000d52:	d102      	bne.n	8000d5a <__aeabi_dmul+0x222>
 8000d54:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000d58:	d113      	bne.n	8000d82 <__aeabi_dmul+0x24a>
 8000d5a:	ea95 0f0c 	teq	r5, ip
 8000d5e:	d105      	bne.n	8000d6c <__aeabi_dmul+0x234>
 8000d60:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000d64:	bf1c      	itt	ne
 8000d66:	4610      	movne	r0, r2
 8000d68:	4619      	movne	r1, r3
 8000d6a:	d10a      	bne.n	8000d82 <__aeabi_dmul+0x24a>
 8000d6c:	ea81 0103 	eor.w	r1, r1, r3
 8000d70:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d74:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000d78:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000d7c:	f04f 0000 	mov.w	r0, #0
 8000d80:	bd70      	pop	{r4, r5, r6, pc}
 8000d82:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000d86:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000d8a:	bd70      	pop	{r4, r5, r6, pc}

08000d8c <__aeabi_ddiv>:
 8000d8c:	b570      	push	{r4, r5, r6, lr}
 8000d8e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000d92:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000d96:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000d9a:	bf1d      	ittte	ne
 8000d9c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000da0:	ea94 0f0c 	teqne	r4, ip
 8000da4:	ea95 0f0c 	teqne	r5, ip
 8000da8:	f000 f8a7 	bleq	8000efa <__aeabi_ddiv+0x16e>
 8000dac:	eba4 0405 	sub.w	r4, r4, r5
 8000db0:	ea81 0e03 	eor.w	lr, r1, r3
 8000db4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000db8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000dbc:	f000 8088 	beq.w	8000ed0 <__aeabi_ddiv+0x144>
 8000dc0:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000dc4:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000dc8:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000dcc:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000dd0:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000dd4:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000dd8:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000ddc:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000de0:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000de4:	429d      	cmp	r5, r3
 8000de6:	bf08      	it	eq
 8000de8:	4296      	cmpeq	r6, r2
 8000dea:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000dee:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000df2:	d202      	bcs.n	8000dfa <__aeabi_ddiv+0x6e>
 8000df4:	085b      	lsrs	r3, r3, #1
 8000df6:	ea4f 0232 	mov.w	r2, r2, rrx
 8000dfa:	1ab6      	subs	r6, r6, r2
 8000dfc:	eb65 0503 	sbc.w	r5, r5, r3
 8000e00:	085b      	lsrs	r3, r3, #1
 8000e02:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e06:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000e0a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000e0e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e12:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e16:	bf22      	ittt	cs
 8000e18:	1ab6      	subcs	r6, r6, r2
 8000e1a:	4675      	movcs	r5, lr
 8000e1c:	ea40 000c 	orrcs.w	r0, r0, ip
 8000e20:	085b      	lsrs	r3, r3, #1
 8000e22:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e26:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e2a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e2e:	bf22      	ittt	cs
 8000e30:	1ab6      	subcs	r6, r6, r2
 8000e32:	4675      	movcs	r5, lr
 8000e34:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000e38:	085b      	lsrs	r3, r3, #1
 8000e3a:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e3e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e42:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e46:	bf22      	ittt	cs
 8000e48:	1ab6      	subcs	r6, r6, r2
 8000e4a:	4675      	movcs	r5, lr
 8000e4c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000e50:	085b      	lsrs	r3, r3, #1
 8000e52:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e56:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e5a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e5e:	bf22      	ittt	cs
 8000e60:	1ab6      	subcs	r6, r6, r2
 8000e62:	4675      	movcs	r5, lr
 8000e64:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000e68:	ea55 0e06 	orrs.w	lr, r5, r6
 8000e6c:	d018      	beq.n	8000ea0 <__aeabi_ddiv+0x114>
 8000e6e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000e72:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000e76:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000e7a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000e7e:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000e82:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000e86:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000e8a:	d1c0      	bne.n	8000e0e <__aeabi_ddiv+0x82>
 8000e8c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000e90:	d10b      	bne.n	8000eaa <__aeabi_ddiv+0x11e>
 8000e92:	ea41 0100 	orr.w	r1, r1, r0
 8000e96:	f04f 0000 	mov.w	r0, #0
 8000e9a:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000e9e:	e7b6      	b.n	8000e0e <__aeabi_ddiv+0x82>
 8000ea0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000ea4:	bf04      	itt	eq
 8000ea6:	4301      	orreq	r1, r0
 8000ea8:	2000      	moveq	r0, #0
 8000eaa:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000eae:	bf88      	it	hi
 8000eb0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000eb4:	f63f aeaf 	bhi.w	8000c16 <__aeabi_dmul+0xde>
 8000eb8:	ebb5 0c03 	subs.w	ip, r5, r3
 8000ebc:	bf04      	itt	eq
 8000ebe:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000ec2:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000ec6:	f150 0000 	adcs.w	r0, r0, #0
 8000eca:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000ece:	bd70      	pop	{r4, r5, r6, pc}
 8000ed0:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000ed4:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000ed8:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000edc:	bfc2      	ittt	gt
 8000ede:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000ee2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000ee6:	bd70      	popgt	{r4, r5, r6, pc}
 8000ee8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000eec:	f04f 0e00 	mov.w	lr, #0
 8000ef0:	3c01      	subs	r4, #1
 8000ef2:	e690      	b.n	8000c16 <__aeabi_dmul+0xde>
 8000ef4:	ea45 0e06 	orr.w	lr, r5, r6
 8000ef8:	e68d      	b.n	8000c16 <__aeabi_dmul+0xde>
 8000efa:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000efe:	ea94 0f0c 	teq	r4, ip
 8000f02:	bf08      	it	eq
 8000f04:	ea95 0f0c 	teqeq	r5, ip
 8000f08:	f43f af3b 	beq.w	8000d82 <__aeabi_dmul+0x24a>
 8000f0c:	ea94 0f0c 	teq	r4, ip
 8000f10:	d10a      	bne.n	8000f28 <__aeabi_ddiv+0x19c>
 8000f12:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000f16:	f47f af34 	bne.w	8000d82 <__aeabi_dmul+0x24a>
 8000f1a:	ea95 0f0c 	teq	r5, ip
 8000f1e:	f47f af25 	bne.w	8000d6c <__aeabi_dmul+0x234>
 8000f22:	4610      	mov	r0, r2
 8000f24:	4619      	mov	r1, r3
 8000f26:	e72c      	b.n	8000d82 <__aeabi_dmul+0x24a>
 8000f28:	ea95 0f0c 	teq	r5, ip
 8000f2c:	d106      	bne.n	8000f3c <__aeabi_ddiv+0x1b0>
 8000f2e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000f32:	f43f aefd 	beq.w	8000d30 <__aeabi_dmul+0x1f8>
 8000f36:	4610      	mov	r0, r2
 8000f38:	4619      	mov	r1, r3
 8000f3a:	e722      	b.n	8000d82 <__aeabi_dmul+0x24a>
 8000f3c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000f40:	bf18      	it	ne
 8000f42:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000f46:	f47f aec5 	bne.w	8000cd4 <__aeabi_dmul+0x19c>
 8000f4a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8000f4e:	f47f af0d 	bne.w	8000d6c <__aeabi_dmul+0x234>
 8000f52:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000f56:	f47f aeeb 	bne.w	8000d30 <__aeabi_dmul+0x1f8>
 8000f5a:	e712      	b.n	8000d82 <__aeabi_dmul+0x24a>

08000f5c <__gedf2>:
 8000f5c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8000f60:	e006      	b.n	8000f70 <__cmpdf2+0x4>
 8000f62:	bf00      	nop

08000f64 <__ledf2>:
 8000f64:	f04f 0c01 	mov.w	ip, #1
 8000f68:	e002      	b.n	8000f70 <__cmpdf2+0x4>
 8000f6a:	bf00      	nop

08000f6c <__cmpdf2>:
 8000f6c:	f04f 0c01 	mov.w	ip, #1
 8000f70:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000f74:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000f78:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000f7c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000f80:	bf18      	it	ne
 8000f82:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8000f86:	d01b      	beq.n	8000fc0 <__cmpdf2+0x54>
 8000f88:	b001      	add	sp, #4
 8000f8a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8000f8e:	bf0c      	ite	eq
 8000f90:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000f94:	ea91 0f03 	teqne	r1, r3
 8000f98:	bf02      	ittt	eq
 8000f9a:	ea90 0f02 	teqeq	r0, r2
 8000f9e:	2000      	moveq	r0, #0
 8000fa0:	4770      	bxeq	lr
 8000fa2:	f110 0f00 	cmn.w	r0, #0
 8000fa6:	ea91 0f03 	teq	r1, r3
 8000faa:	bf58      	it	pl
 8000fac:	4299      	cmppl	r1, r3
 8000fae:	bf08      	it	eq
 8000fb0:	4290      	cmpeq	r0, r2
 8000fb2:	bf2c      	ite	cs
 8000fb4:	17d8      	asrcs	r0, r3, #31
 8000fb6:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8000fba:	f040 0001 	orr.w	r0, r0, #1
 8000fbe:	4770      	bx	lr
 8000fc0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000fc4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fc8:	d102      	bne.n	8000fd0 <__cmpdf2+0x64>
 8000fca:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000fce:	d107      	bne.n	8000fe0 <__cmpdf2+0x74>
 8000fd0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000fd4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fd8:	d1d6      	bne.n	8000f88 <__cmpdf2+0x1c>
 8000fda:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000fde:	d0d3      	beq.n	8000f88 <__cmpdf2+0x1c>
 8000fe0:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000fe4:	4770      	bx	lr
 8000fe6:	bf00      	nop

08000fe8 <__aeabi_cdrcmple>:
 8000fe8:	4684      	mov	ip, r0
 8000fea:	4610      	mov	r0, r2
 8000fec:	4662      	mov	r2, ip
 8000fee:	468c      	mov	ip, r1
 8000ff0:	4619      	mov	r1, r3
 8000ff2:	4663      	mov	r3, ip
 8000ff4:	e000      	b.n	8000ff8 <__aeabi_cdcmpeq>
 8000ff6:	bf00      	nop

08000ff8 <__aeabi_cdcmpeq>:
 8000ff8:	b501      	push	{r0, lr}
 8000ffa:	f7ff ffb7 	bl	8000f6c <__cmpdf2>
 8000ffe:	2800      	cmp	r0, #0
 8001000:	bf48      	it	mi
 8001002:	f110 0f00 	cmnmi.w	r0, #0
 8001006:	bd01      	pop	{r0, pc}

08001008 <__aeabi_dcmpeq>:
 8001008:	f84d ed08 	str.w	lr, [sp, #-8]!
 800100c:	f7ff fff4 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001010:	bf0c      	ite	eq
 8001012:	2001      	moveq	r0, #1
 8001014:	2000      	movne	r0, #0
 8001016:	f85d fb08 	ldr.w	pc, [sp], #8
 800101a:	bf00      	nop

0800101c <__aeabi_dcmplt>:
 800101c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001020:	f7ff ffea 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001024:	bf34      	ite	cc
 8001026:	2001      	movcc	r0, #1
 8001028:	2000      	movcs	r0, #0
 800102a:	f85d fb08 	ldr.w	pc, [sp], #8
 800102e:	bf00      	nop

08001030 <__aeabi_dcmple>:
 8001030:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001034:	f7ff ffe0 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001038:	bf94      	ite	ls
 800103a:	2001      	movls	r0, #1
 800103c:	2000      	movhi	r0, #0
 800103e:	f85d fb08 	ldr.w	pc, [sp], #8
 8001042:	bf00      	nop

08001044 <__aeabi_dcmpge>:
 8001044:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001048:	f7ff ffce 	bl	8000fe8 <__aeabi_cdrcmple>
 800104c:	bf94      	ite	ls
 800104e:	2001      	movls	r0, #1
 8001050:	2000      	movhi	r0, #0
 8001052:	f85d fb08 	ldr.w	pc, [sp], #8
 8001056:	bf00      	nop

08001058 <__aeabi_dcmpgt>:
 8001058:	f84d ed08 	str.w	lr, [sp, #-8]!
 800105c:	f7ff ffc4 	bl	8000fe8 <__aeabi_cdrcmple>
 8001060:	bf34      	ite	cc
 8001062:	2001      	movcc	r0, #1
 8001064:	2000      	movcs	r0, #0
 8001066:	f85d fb08 	ldr.w	pc, [sp], #8
 800106a:	bf00      	nop

0800106c <__aeabi_dcmpun>:
 800106c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001070:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001074:	d102      	bne.n	800107c <__aeabi_dcmpun+0x10>
 8001076:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800107a:	d10a      	bne.n	8001092 <__aeabi_dcmpun+0x26>
 800107c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001080:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001084:	d102      	bne.n	800108c <__aeabi_dcmpun+0x20>
 8001086:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800108a:	d102      	bne.n	8001092 <__aeabi_dcmpun+0x26>
 800108c:	f04f 0000 	mov.w	r0, #0
 8001090:	4770      	bx	lr
 8001092:	f04f 0001 	mov.w	r0, #1
 8001096:	4770      	bx	lr

08001098 <__aeabi_d2iz>:
 8001098:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800109c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80010a0:	d215      	bcs.n	80010ce <__aeabi_d2iz+0x36>
 80010a2:	d511      	bpl.n	80010c8 <__aeabi_d2iz+0x30>
 80010a4:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80010a8:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80010ac:	d912      	bls.n	80010d4 <__aeabi_d2iz+0x3c>
 80010ae:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80010b2:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80010b6:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80010ba:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80010be:	fa23 f002 	lsr.w	r0, r3, r2
 80010c2:	bf18      	it	ne
 80010c4:	4240      	negne	r0, r0
 80010c6:	4770      	bx	lr
 80010c8:	f04f 0000 	mov.w	r0, #0
 80010cc:	4770      	bx	lr
 80010ce:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80010d2:	d105      	bne.n	80010e0 <__aeabi_d2iz+0x48>
 80010d4:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 80010d8:	bf08      	it	eq
 80010da:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80010de:	4770      	bx	lr
 80010e0:	f04f 0000 	mov.w	r0, #0
 80010e4:	4770      	bx	lr
 80010e6:	bf00      	nop

080010e8 <HAL_Init>:
 80010e8:	b580      	push	{r7, lr}
 80010ea:	466f      	mov	r7, sp
 80010ec:	2003      	movs	r0, #3
 80010ee:	f000 f819 	bl	8001124 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fb84 	bl	8001800 <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f94b 	bl	800139a <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 403c 	movw	r0, #3132	; 0xc3c
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 403c 	movw	r0, #3132	; 0xc3c
 800111c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001120:	6800      	ldr	r0, [r0, #0]
 8001122:	4770      	bx	lr

08001124 <HAL_NVIC_SetPriorityGrouping>:
 8001124:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001128:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112c:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001130:	680a      	ldr	r2, [r1, #0]
 8001132:	401a      	ands	r2, r3
 8001134:	f360 220a 	bfi	r2, r0, #8, #3
 8001138:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113c:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001140:	6008      	str	r0, [r1, #0]
 8001142:	4770      	bx	lr

08001144 <HAL_NVIC_SetPriority>:
 8001144:	b580      	push	{r7, lr}
 8001146:	466f      	mov	r7, sp
 8001148:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001150:	2800      	cmp	r0, #0
 8001152:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001156:	f000 030f 	and.w	r3, r0, #15
 800115a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800115e:	f1a3 0304 	sub.w	r3, r3, #4
 8001162:	4473      	add	r3, lr
 8001164:	bfb8      	it	lt
 8001166:	f103 0c0c 	addlt.w	ip, r3, #12
 800116a:	f8de 0000 	ldr.w	r0, [lr]
 800116e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001172:	f100 0e04 	add.w	lr, r0, #4
 8001176:	1ec3      	subs	r3, r0, #3
 8001178:	f080 0007 	eor.w	r0, r0, #7
 800117c:	f1be 0f07 	cmp.w	lr, #7
 8001180:	f04f 0e01 	mov.w	lr, #1
 8001184:	bf38      	it	cc
 8001186:	2300      	movcc	r3, #0
 8001188:	2804      	cmp	r0, #4
 800118a:	bf28      	it	cs
 800118c:	2004      	movcs	r0, #4
 800118e:	fa0e f000 	lsl.w	r0, lr, r0
 8001192:	3801      	subs	r0, #1
 8001194:	4008      	ands	r0, r1
 8001196:	fa0e f103 	lsl.w	r1, lr, r3
 800119a:	310f      	adds	r1, #15
 800119c:	4098      	lsls	r0, r3
 800119e:	4011      	ands	r1, r2
 80011a0:	4308      	orrs	r0, r1
 80011a2:	0100      	lsls	r0, r0, #4
 80011a4:	f88c 0000 	strb.w	r0, [ip]
 80011a8:	bd80      	pop	{r7, pc}

080011aa <HAL_NVIC_EnableIRQ>:
 80011aa:	f000 011f 	and.w	r1, r0, #31
 80011ae:	2201      	movs	r2, #1
 80011b0:	0940      	lsrs	r0, r0, #5
 80011b2:	fa02 f101 	lsl.w	r1, r2, r1
 80011b6:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011ba:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011be:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c2:	4770      	bx	lr

080011c4 <HAL_SYSTICK_IRQHandler>:
 80011c4:	f000 b800 	b.w	80011c8 <HAL_SYSTICK_Callback>

080011c8 <HAL_SYSTICK_Callback>:
 80011c8:	4770      	bx	lr

080011ca <HAL_GPIO_Init>:
 80011ca:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011cc:	af03      	add	r7, sp, #12
 80011ce:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011d2:	b082      	sub	sp, #8
 80011d4:	680e      	ldr	r6, [r1, #0]
 80011d6:	2e00      	cmp	r6, #0
 80011d8:	f000 80db 	beq.w	8001392 <HAL_GPIO_Init+0x1c8>
 80011dc:	f641 0200 	movw	r2, #6144	; 0x1800
 80011e0:	2507      	movs	r5, #7
 80011e2:	f04f 0801 	mov.w	r8, #1
 80011e6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80011ea:	4290      	cmp	r0, r2
 80011ec:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80011f0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80011f4:	bf08      	it	eq
 80011f6:	2506      	moveq	r5, #6
 80011f8:	2b06      	cmp	r3, #6
 80011fa:	bf38      	it	cc
 80011fc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001200:	2200      	movs	r2, #0
 8001202:	9500      	str	r5, [sp, #0]
 8001204:	2500      	movs	r5, #0
 8001206:	f1a8 0a01 	sub.w	sl, r8, #1
 800120a:	2301      	movs	r3, #1
 800120c:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001210:	ea16 090b 	ands.w	r9, r6, fp
 8001214:	f000 80b4 	beq.w	8001380 <HAL_GPIO_Init+0x1b6>
 8001218:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800121c:	f04e 0610 	orr.w	r6, lr, #16
 8001220:	2e12      	cmp	r6, #18
 8001222:	d115      	bne.n	8001250 <HAL_GPIO_Init+0x86>
 8001224:	f005 061c 	and.w	r6, r5, #28
 8001228:	230f      	movs	r3, #15
 800122a:	fa03 fc06 	lsl.w	ip, r3, r6
 800122e:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001232:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001236:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800123a:	4404      	add	r4, r0
 800123c:	6a23      	ldr	r3, [r4, #32]
 800123e:	ea23 0c0c 	bic.w	ip, r3, ip
 8001242:	690b      	ldr	r3, [r1, #16]
 8001244:	40b3      	lsls	r3, r6
 8001246:	ea43 030c 	orr.w	r3, r3, ip
 800124a:	6223      	str	r3, [r4, #32]
 800124c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001250:	6806      	ldr	r6, [r0, #0]
 8001252:	2403      	movs	r4, #3
 8001254:	f00e 0c03 	and.w	ip, lr, #3
 8001258:	f1be 0f12 	cmp.w	lr, #18
 800125c:	fa04 f402 	lsl.w	r4, r4, r2
 8001260:	fa0c f302 	lsl.w	r3, ip, r2
 8001264:	ea26 0604 	bic.w	r6, r6, r4
 8001268:	ea43 0306 	orr.w	r3, r3, r6
 800126c:	ea6f 0604 	mvn.w	r6, r4
 8001270:	6003      	str	r3, [r0, #0]
 8001272:	d816      	bhi.n	80012a2 <HAL_GPIO_Init+0xd8>
 8001274:	2301      	movs	r3, #1
 8001276:	fa03 f30e 	lsl.w	r3, r3, lr
 800127a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800127e:	bf1f      	itttt	ne
 8001280:	6883      	ldrne	r3, [r0, #8]
 8001282:	4033      	andne	r3, r6
 8001284:	68cc      	ldrne	r4, [r1, #12]
 8001286:	4094      	lslne	r4, r2
 8001288:	bf1f      	itttt	ne
 800128a:	4323      	orrne	r3, r4
 800128c:	6083      	strne	r3, [r0, #8]
 800128e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001292:	fa03 f30a 	lslne.w	r3, r3, sl
 8001296:	bf1f      	itttt	ne
 8001298:	6844      	ldrne	r4, [r0, #4]
 800129a:	ea24 040b 	bicne.w	r4, r4, fp
 800129e:	4323      	orrne	r3, r4
 80012a0:	6043      	strne	r3, [r0, #4]
 80012a2:	f1bc 0f03 	cmp.w	ip, #3
 80012a6:	d108      	bne.n	80012ba <HAL_GPIO_Init+0xf0>
 80012a8:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012ac:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012ae:	fa03 f30a 	lsl.w	r3, r3, sl
 80012b2:	ea24 040b 	bic.w	r4, r4, fp
 80012b6:	4323      	orrs	r3, r4
 80012b8:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012ba:	68c3      	ldr	r3, [r0, #12]
 80012bc:	4033      	ands	r3, r6
 80012be:	688e      	ldr	r6, [r1, #8]
 80012c0:	4096      	lsls	r6, r2
 80012c2:	4333      	orrs	r3, r6
 80012c4:	60c3      	str	r3, [r0, #12]
 80012c6:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012ca:	d559      	bpl.n	8001380 <HAL_GPIO_Init+0x1b6>
 80012cc:	f241 0360 	movw	r3, #4192	; 0x1060
 80012d0:	f005 040c 	and.w	r4, r5, #12
 80012d4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012d8:	461e      	mov	r6, r3
 80012da:	6833      	ldr	r3, [r6, #0]
 80012dc:	f043 0301 	orr.w	r3, r3, #1
 80012e0:	6033      	str	r3, [r6, #0]
 80012e2:	6833      	ldr	r3, [r6, #0]
 80012e4:	f240 4600 	movw	r6, #1024	; 0x400
 80012e8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80012ec:	46b6      	mov	lr, r6
 80012ee:	f003 0301 	and.w	r3, r3, #1
 80012f2:	9301      	str	r3, [sp, #4]
 80012f4:	f02a 0303 	bic.w	r3, sl, #3
 80012f8:	9e01      	ldr	r6, [sp, #4]
 80012fa:	4473      	add	r3, lr
 80012fc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001300:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001304:	46b2      	mov	sl, r6
 8001306:	260f      	movs	r6, #15
 8001308:	f853 c00a 	ldr.w	ip, [r3, sl]
 800130c:	40a6      	lsls	r6, r4
 800130e:	ea2c 0c06 	bic.w	ip, ip, r6
 8001312:	9e00      	ldr	r6, [sp, #0]
 8001314:	fa06 f404 	lsl.w	r4, r6, r4
 8001318:	ea4c 0604 	orr.w	r6, ip, r4
 800131c:	f843 600a 	str.w	r6, [r3, sl]
 8001320:	f8de 3000 	ldr.w	r3, [lr]
 8001324:	684e      	ldr	r6, [r1, #4]
 8001326:	ea23 0309 	bic.w	r3, r3, r9
 800132a:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800132e:	bf18      	it	ne
 8001330:	ea43 0309 	orrne.w	r3, r3, r9
 8001334:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001338:	f8ce 3000 	str.w	r3, [lr]
 800133c:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001340:	ea23 0309 	bic.w	r3, r3, r9
 8001344:	bf18      	it	ne
 8001346:	ea43 0309 	orrne.w	r3, r3, r9
 800134a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800134e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001352:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001356:	ea23 0309 	bic.w	r3, r3, r9
 800135a:	bf18      	it	ne
 800135c:	ea43 0309 	orrne.w	r3, r3, r9
 8001360:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001364:	f8ce 3008 	str.w	r3, [lr, #8]
 8001368:	f240 430c 	movw	r3, #1036	; 0x40c
 800136c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001370:	461c      	mov	r4, r3
 8001372:	6823      	ldr	r3, [r4, #0]
 8001374:	ea23 0309 	bic.w	r3, r3, r9
 8001378:	bf18      	it	ne
 800137a:	ea43 0309 	orrne.w	r3, r3, r9
 800137e:	6023      	str	r3, [r4, #0]
 8001380:	680e      	ldr	r6, [r1, #0]
 8001382:	3202      	adds	r2, #2
 8001384:	3504      	adds	r5, #4
 8001386:	fa36 f308 	lsrs.w	r3, r6, r8
 800138a:	f108 0801 	add.w	r8, r8, #1
 800138e:	f47f af3a 	bne.w	8001206 <HAL_GPIO_Init+0x3c>
 8001392:	b002      	add	sp, #8
 8001394:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001398:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800139a <HAL_MspInit>:
 800139a:	4770      	bx	lr

0800139c <HAL_RCC_GetSysClockFreq>:
 800139c:	b580      	push	{r7, lr}
 800139e:	466f      	mov	r7, sp
 80013a0:	f241 010c 	movw	r1, #4108	; 0x100c
 80013a4:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013a8:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013ac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013b0:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013b4:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013b8:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013bc:	6808      	ldr	r0, [r1, #0]
 80013be:	f012 030c 	ands.w	r3, r2, #12
 80013c2:	d005      	beq.n	80013d0 <HAL_RCC_GetSysClockFreq+0x34>
 80013c4:	2b0c      	cmp	r3, #12
 80013c6:	bf04      	itt	eq
 80013c8:	f000 0003 	andeq.w	r0, r0, #3
 80013cc:	2801      	cmpeq	r0, #1
 80013ce:	d118      	bne.n	8001402 <HAL_RCC_GetSysClockFreq+0x66>
 80013d0:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013d4:	f010 0f08 	tst.w	r0, #8
 80013d8:	d103      	bne.n	80013e2 <HAL_RCC_GetSysClockFreq+0x46>
 80013da:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013de:	0a00      	lsrs	r0, r0, #8
 80013e0:	e002      	b.n	80013e8 <HAL_RCC_GetSysClockFreq+0x4c>
 80013e2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013e6:	0900      	lsrs	r0, r0, #4
 80013e8:	f247 3248 	movw	r2, #29512	; 0x7348
 80013ec:	f000 000f 	and.w	r0, r0, #15
 80013f0:	2b00      	cmp	r3, #0
 80013f2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80013f6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80013fa:	4610      	mov	r0, r2
 80013fc:	bf18      	it	ne
 80013fe:	2000      	movne	r0, #0
 8001400:	e00b      	b.n	800141a <HAL_RCC_GetSysClockFreq+0x7e>
 8001402:	f003 000f 	and.w	r0, r3, #15
 8001406:	2804      	cmp	r0, #4
 8001408:	bf04      	itt	eq
 800140a:	4660      	moveq	r0, ip
 800140c:	bd80      	popeq	{r7, pc}
 800140e:	2808      	cmp	r0, #8
 8001410:	bf04      	itt	eq
 8001412:	4670      	moveq	r0, lr
 8001414:	bd80      	popeq	{r7, pc}
 8001416:	2000      	movs	r0, #0
 8001418:	2200      	movs	r2, #0
 800141a:	2b0c      	cmp	r3, #12
 800141c:	bf18      	it	ne
 800141e:	bd80      	popne	{r7, pc}
 8001420:	6808      	ldr	r0, [r1, #0]
 8001422:	f000 0303 	and.w	r3, r0, #3
 8001426:	6808      	ldr	r0, [r1, #0]
 8001428:	2b03      	cmp	r3, #3
 800142a:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800142e:	f100 0001 	add.w	r0, r0, #1
 8001432:	d003      	beq.n	800143c <HAL_RCC_GetSysClockFreq+0xa0>
 8001434:	2b02      	cmp	r3, #2
 8001436:	46e6      	mov	lr, ip
 8001438:	bf18      	it	ne
 800143a:	4696      	movne	lr, r2
 800143c:	680a      	ldr	r2, [r1, #0]
 800143e:	fbbe f0f0 	udiv	r0, lr, r0
 8001442:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001446:	6809      	ldr	r1, [r1, #0]
 8001448:	4350      	muls	r0, r2
 800144a:	2202      	movs	r2, #2
 800144c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001450:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001454:	fbb0 f0f1 	udiv	r0, r0, r1
 8001458:	bd80      	pop	{r7, pc}

0800145a <HAL_RCC_GetPCLK1Freq>:
 800145a:	f240 10a4 	movw	r0, #420	; 0x1a4
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 3240 	movw	r2, #29504	; 0x7340
 8001466:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800146a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800146e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001472:	6800      	ldr	r0, [r0, #0]
 8001474:	6809      	ldr	r1, [r1, #0]
 8001476:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800147a:	5c51      	ldrb	r1, [r2, r1]
 800147c:	f001 011f 	and.w	r1, r1, #31
 8001480:	40c8      	lsrs	r0, r1
 8001482:	4770      	bx	lr

08001484 <HAL_RCC_GetPCLK2Freq>:
 8001484:	f240 10a4 	movw	r0, #420	; 0x1a4
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 3240 	movw	r2, #29504	; 0x7340
 8001490:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001494:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001498:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149c:	6800      	ldr	r0, [r0, #0]
 800149e:	6809      	ldr	r1, [r1, #0]
 80014a0:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014a4:	5c51      	ldrb	r1, [r2, r1]
 80014a6:	f001 011f 	and.w	r1, r1, #31
 80014aa:	40c8      	lsrs	r0, r1
 80014ac:	4770      	bx	lr

080014ae <HAL_RCC_GetClockConfig>:
 80014ae:	220f      	movs	r2, #15
 80014b0:	6002      	str	r2, [r0, #0]
 80014b2:	f241 0208 	movw	r2, #4104	; 0x1008
 80014b6:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014ba:	6813      	ldr	r3, [r2, #0]
 80014bc:	f003 0303 	and.w	r3, r3, #3
 80014c0:	6043      	str	r3, [r0, #4]
 80014c2:	6813      	ldr	r3, [r2, #0]
 80014c4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014c8:	6083      	str	r3, [r0, #8]
 80014ca:	6813      	ldr	r3, [r2, #0]
 80014cc:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014d0:	60c3      	str	r3, [r0, #12]
 80014d2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014d6:	6812      	ldr	r2, [r2, #0]
 80014d8:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014dc:	6102      	str	r2, [r0, #16]
 80014de:	f242 0000 	movw	r0, #8192	; 0x2000
 80014e2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014e6:	6800      	ldr	r0, [r0, #0]
 80014e8:	f000 0007 	and.w	r0, r0, #7
 80014ec:	6008      	str	r0, [r1, #0]
 80014ee:	4770      	bx	lr

080014f0 <HAL_TIM_Base_Init>:
 80014f0:	b5d0      	push	{r4, r6, r7, lr}
 80014f2:	af02      	add	r7, sp, #8
 80014f4:	4604      	mov	r4, r0
 80014f6:	2c00      	cmp	r4, #0
 80014f8:	bf04      	itt	eq
 80014fa:	2001      	moveq	r0, #1
 80014fc:	bdd0      	popeq	{r4, r6, r7, pc}
 80014fe:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001500:	b920      	cbnz	r0, 800150c <HAL_TIM_Base_Init+0x1c>
 8001502:	2000      	movs	r0, #0
 8001504:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001506:	4620      	mov	r0, r4
 8001508:	f000 f892 	bl	8001630 <HAL_TIM_Base_MspInit>
 800150c:	2002      	movs	r0, #2
 800150e:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001512:	6420      	str	r0, [r4, #64]	; 0x40
 8001514:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001518:	6820      	ldr	r0, [r4, #0]
 800151a:	6801      	ldr	r1, [r0, #0]
 800151c:	4290      	cmp	r0, r2
 800151e:	dc0f      	bgt.n	8001540 <HAL_TIM_Base_Init+0x50>
 8001520:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001524:	bf1e      	ittt	ne
 8001526:	f240 4200 	movwne	r2, #1024	; 0x400
 800152a:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800152e:	4290      	cmpne	r0, r2
 8001530:	d018      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001532:	f640 0200 	movw	r2, #2048	; 0x800
 8001536:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800153a:	4290      	cmp	r0, r2
 800153c:	d012      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 800153e:	e015      	b.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001540:	f640 4200 	movw	r2, #3072	; 0xc00
 8001544:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001548:	4290      	cmp	r0, r2
 800154a:	bf1e      	ittt	ne
 800154c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001550:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001554:	4290      	cmpne	r0, r2
 8001556:	d005      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001558:	f642 4200 	movw	r2, #11264	; 0x2c00
 800155c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001560:	4290      	cmp	r0, r2
 8001562:	d103      	bne.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001564:	68a2      	ldr	r2, [r4, #8]
 8001566:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800156a:	4311      	orrs	r1, r2
 800156c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001570:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001574:	4290      	cmp	r0, r2
 8001576:	dd14      	ble.n	80015a2 <HAL_TIM_Base_Init+0xb2>
 8001578:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800157c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001580:	4290      	cmp	r0, r2
 8001582:	dd1a      	ble.n	80015ba <HAL_TIM_Base_Init+0xca>
 8001584:	f244 0200 	movw	r2, #16384	; 0x4000
 8001588:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800158c:	4290      	cmp	r0, r2
 800158e:	bf1e      	ittt	ne
 8001590:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001594:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001598:	4290      	cmpne	r0, r2
 800159a:	d027      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 800159c:	f244 4200 	movw	r2, #17408	; 0x4400
 80015a0:	e013      	b.n	80015ca <HAL_TIM_Base_Init+0xda>
 80015a2:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015a6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015aa:	4290      	cmp	r0, r2
 80015ac:	dc12      	bgt.n	80015d4 <HAL_TIM_Base_Init+0xe4>
 80015ae:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015b2:	d01b      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015b4:	f240 4200 	movw	r2, #1024	; 0x400
 80015b8:	e014      	b.n	80015e4 <HAL_TIM_Base_Init+0xf4>
 80015ba:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015be:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c2:	4290      	cmp	r0, r2
 80015c4:	d012      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015c6:	f243 4200 	movw	r2, #13312	; 0x3400
 80015ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ce:	4290      	cmp	r0, r2
 80015d0:	d00c      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015d2:	e00f      	b.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015d4:	f640 0200 	movw	r2, #2048	; 0x800
 80015d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015dc:	4290      	cmp	r0, r2
 80015de:	d005      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015e0:	f640 4200 	movw	r2, #3072	; 0xc00
 80015e4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e8:	4290      	cmp	r0, r2
 80015ea:	d103      	bne.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015ec:	6922      	ldr	r2, [r4, #16]
 80015ee:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80015f2:	4311      	orrs	r1, r2
 80015f4:	69a2      	ldr	r2, [r4, #24]
 80015f6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80015fa:	4311      	orrs	r1, r2
 80015fc:	6001      	str	r1, [r0, #0]
 80015fe:	68e1      	ldr	r1, [r4, #12]
 8001600:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001602:	6861      	ldr	r1, [r4, #4]
 8001604:	6281      	str	r1, [r0, #40]	; 0x28
 8001606:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800160a:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800160e:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001612:	2907      	cmp	r1, #7
 8001614:	d807      	bhi.n	8001626 <HAL_TIM_Base_Init+0x136>
 8001616:	2201      	movs	r2, #1
 8001618:	fa02 f101 	lsl.w	r1, r2, r1
 800161c:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001620:	bf1c      	itt	ne
 8001622:	6961      	ldrne	r1, [r4, #20]
 8001624:	6301      	strne	r1, [r0, #48]	; 0x30
 8001626:	2101      	movs	r1, #1
 8001628:	6141      	str	r1, [r0, #20]
 800162a:	2000      	movs	r0, #0
 800162c:	6421      	str	r1, [r4, #64]	; 0x40
 800162e:	bdd0      	pop	{r4, r6, r7, pc}

08001630 <HAL_TIM_Base_MspInit>:
 8001630:	4770      	bx	lr

08001632 <HAL_TIM_Base_Start_IT>:
 8001632:	6800      	ldr	r0, [r0, #0]
 8001634:	68c1      	ldr	r1, [r0, #12]
 8001636:	f041 0101 	orr.w	r1, r1, #1
 800163a:	60c1      	str	r1, [r0, #12]
 800163c:	2107      	movs	r1, #7
 800163e:	6882      	ldr	r2, [r0, #8]
 8001640:	f2c0 0101 	movt	r1, #1
 8001644:	400a      	ands	r2, r1
 8001646:	2a06      	cmp	r2, #6
 8001648:	d008      	beq.n	800165c <HAL_TIM_Base_Start_IT+0x2a>
 800164a:	6882      	ldr	r2, [r0, #8]
 800164c:	4011      	ands	r1, r2
 800164e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001652:	bf1e      	ittt	ne
 8001654:	6801      	ldrne	r1, [r0, #0]
 8001656:	f041 0101 	orrne.w	r1, r1, #1
 800165a:	6001      	strne	r1, [r0, #0]
 800165c:	2000      	movs	r0, #0
 800165e:	4770      	bx	lr

08001660 <HAL_TIM_IRQHandler>:
 8001660:	b5d0      	push	{r4, r6, r7, lr}
 8001662:	af02      	add	r7, sp, #8
 8001664:	4604      	mov	r4, r0
 8001666:	6820      	ldr	r0, [r4, #0]
 8001668:	6901      	ldr	r1, [r0, #16]
 800166a:	f011 0f02 	tst.w	r1, #2
 800166e:	bf1c      	itt	ne
 8001670:	68c1      	ldrne	r1, [r0, #12]
 8001672:	f011 0f02 	tstne.w	r1, #2
 8001676:	d015      	beq.n	80016a4 <HAL_TIM_IRQHandler+0x44>
 8001678:	f06f 0102 	mvn.w	r1, #2
 800167c:	6101      	str	r1, [r0, #16]
 800167e:	2101      	movs	r1, #1
 8001680:	61e1      	str	r1, [r4, #28]
 8001682:	6980      	ldr	r0, [r0, #24]
 8001684:	f010 0f03 	tst.w	r0, #3
 8001688:	d003      	beq.n	8001692 <HAL_TIM_IRQHandler+0x32>
 800168a:	4620      	mov	r0, r4
 800168c:	f000 f8b1 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001690:	e005      	b.n	800169e <HAL_TIM_IRQHandler+0x3e>
 8001692:	4620      	mov	r0, r4
 8001694:	f000 f8ae 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001698:	4620      	mov	r0, r4
 800169a:	f000 f8ac 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 800169e:	2000      	movs	r0, #0
 80016a0:	61e0      	str	r0, [r4, #28]
 80016a2:	6820      	ldr	r0, [r4, #0]
 80016a4:	6901      	ldr	r1, [r0, #16]
 80016a6:	f011 0f04 	tst.w	r1, #4
 80016aa:	bf1c      	itt	ne
 80016ac:	68c1      	ldrne	r1, [r0, #12]
 80016ae:	f011 0f04 	tstne.w	r1, #4
 80016b2:	d015      	beq.n	80016e0 <HAL_TIM_IRQHandler+0x80>
 80016b4:	f06f 0104 	mvn.w	r1, #4
 80016b8:	6101      	str	r1, [r0, #16]
 80016ba:	2102      	movs	r1, #2
 80016bc:	61e1      	str	r1, [r4, #28]
 80016be:	6980      	ldr	r0, [r0, #24]
 80016c0:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016c4:	d003      	beq.n	80016ce <HAL_TIM_IRQHandler+0x6e>
 80016c6:	4620      	mov	r0, r4
 80016c8:	f000 f893 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 80016cc:	e005      	b.n	80016da <HAL_TIM_IRQHandler+0x7a>
 80016ce:	4620      	mov	r0, r4
 80016d0:	f000 f890 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 80016d4:	4620      	mov	r0, r4
 80016d6:	f000 f88e 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 80016da:	2000      	movs	r0, #0
 80016dc:	61e0      	str	r0, [r4, #28]
 80016de:	6820      	ldr	r0, [r4, #0]
 80016e0:	6901      	ldr	r1, [r0, #16]
 80016e2:	f011 0f08 	tst.w	r1, #8
 80016e6:	bf1c      	itt	ne
 80016e8:	68c1      	ldrne	r1, [r0, #12]
 80016ea:	f011 0f08 	tstne.w	r1, #8
 80016ee:	d015      	beq.n	800171c <HAL_TIM_IRQHandler+0xbc>
 80016f0:	f06f 0108 	mvn.w	r1, #8
 80016f4:	6101      	str	r1, [r0, #16]
 80016f6:	2104      	movs	r1, #4
 80016f8:	61e1      	str	r1, [r4, #28]
 80016fa:	69c0      	ldr	r0, [r0, #28]
 80016fc:	f010 0f03 	tst.w	r0, #3
 8001700:	d003      	beq.n	800170a <HAL_TIM_IRQHandler+0xaa>
 8001702:	4620      	mov	r0, r4
 8001704:	f000 f875 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001708:	e005      	b.n	8001716 <HAL_TIM_IRQHandler+0xb6>
 800170a:	4620      	mov	r0, r4
 800170c:	f000 f872 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001710:	4620      	mov	r0, r4
 8001712:	f000 f870 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001716:	2000      	movs	r0, #0
 8001718:	61e0      	str	r0, [r4, #28]
 800171a:	6820      	ldr	r0, [r4, #0]
 800171c:	6901      	ldr	r1, [r0, #16]
 800171e:	f011 0f10 	tst.w	r1, #16
 8001722:	bf1c      	itt	ne
 8001724:	68c1      	ldrne	r1, [r0, #12]
 8001726:	f011 0f10 	tstne.w	r1, #16
 800172a:	d015      	beq.n	8001758 <HAL_TIM_IRQHandler+0xf8>
 800172c:	f06f 0110 	mvn.w	r1, #16
 8001730:	6101      	str	r1, [r0, #16]
 8001732:	2108      	movs	r1, #8
 8001734:	61e1      	str	r1, [r4, #28]
 8001736:	69c0      	ldr	r0, [r0, #28]
 8001738:	f410 7f40 	tst.w	r0, #768	; 0x300
 800173c:	d003      	beq.n	8001746 <HAL_TIM_IRQHandler+0xe6>
 800173e:	4620      	mov	r0, r4
 8001740:	f000 f857 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001744:	e005      	b.n	8001752 <HAL_TIM_IRQHandler+0xf2>
 8001746:	4620      	mov	r0, r4
 8001748:	f000 f854 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 800174c:	4620      	mov	r0, r4
 800174e:	f000 f852 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001752:	2000      	movs	r0, #0
 8001754:	61e0      	str	r0, [r4, #28]
 8001756:	6820      	ldr	r0, [r4, #0]
 8001758:	6901      	ldr	r1, [r0, #16]
 800175a:	f011 0f01 	tst.w	r1, #1
 800175e:	bf1c      	itt	ne
 8001760:	68c1      	ldrne	r1, [r0, #12]
 8001762:	f011 0f01 	tstne.w	r1, #1
 8001766:	d006      	beq.n	8001776 <HAL_TIM_IRQHandler+0x116>
 8001768:	f06f 0101 	mvn.w	r1, #1
 800176c:	6101      	str	r1, [r0, #16]
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f894 	bl	800189c <HAL_TIM_PeriodElapsedCallback>
 8001774:	6820      	ldr	r0, [r4, #0]
 8001776:	6901      	ldr	r1, [r0, #16]
 8001778:	f011 0f80 	tst.w	r1, #128	; 0x80
 800177c:	bf1c      	itt	ne
 800177e:	68c1      	ldrne	r1, [r0, #12]
 8001780:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001784:	d006      	beq.n	8001794 <HAL_TIM_IRQHandler+0x134>
 8001786:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800178a:	6101      	str	r1, [r0, #16]
 800178c:	4620      	mov	r0, r4
 800178e:	f000 f835 	bl	80017fc <HAL_TIMEx_BreakCallback>
 8001792:	6820      	ldr	r0, [r4, #0]
 8001794:	6901      	ldr	r1, [r0, #16]
 8001796:	f411 7f80 	tst.w	r1, #256	; 0x100
 800179a:	bf1c      	itt	ne
 800179c:	68c1      	ldrne	r1, [r0, #12]
 800179e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017a2:	d006      	beq.n	80017b2 <HAL_TIM_IRQHandler+0x152>
 80017a4:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017a8:	6101      	str	r1, [r0, #16]
 80017aa:	4620      	mov	r0, r4
 80017ac:	f000 f827 	bl	80017fe <HAL_TIMEx_Break2Callback>
 80017b0:	6820      	ldr	r0, [r4, #0]
 80017b2:	6901      	ldr	r1, [r0, #16]
 80017b4:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017b8:	bf1c      	itt	ne
 80017ba:	68c1      	ldrne	r1, [r0, #12]
 80017bc:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017c0:	d006      	beq.n	80017d0 <HAL_TIM_IRQHandler+0x170>
 80017c2:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017c6:	6101      	str	r1, [r0, #16]
 80017c8:	4620      	mov	r0, r4
 80017ca:	f000 f815 	bl	80017f8 <HAL_TIM_TriggerCallback>
 80017ce:	6820      	ldr	r0, [r4, #0]
 80017d0:	6901      	ldr	r1, [r0, #16]
 80017d2:	f011 0f20 	tst.w	r1, #32
 80017d6:	bf1c      	itt	ne
 80017d8:	68c1      	ldrne	r1, [r0, #12]
 80017da:	f011 0f20 	tstne.w	r1, #32
 80017de:	d100      	bne.n	80017e2 <HAL_TIM_IRQHandler+0x182>
 80017e0:	bdd0      	pop	{r4, r6, r7, pc}
 80017e2:	f06f 0120 	mvn.w	r1, #32
 80017e6:	6101      	str	r1, [r0, #16]
 80017e8:	4620      	mov	r0, r4
 80017ea:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80017ee:	f000 b804 	b.w	80017fa <HAL_TIMEx_CommutationCallback>

080017f2 <HAL_TIM_IC_CaptureCallback>:
 80017f2:	4770      	bx	lr

080017f4 <HAL_TIM_OC_DelayElapsedCallback>:
 80017f4:	4770      	bx	lr

080017f6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80017f6:	4770      	bx	lr

080017f8 <HAL_TIM_TriggerCallback>:
 80017f8:	4770      	bx	lr

080017fa <HAL_TIMEx_CommutationCallback>:
 80017fa:	4770      	bx	lr

080017fc <HAL_TIMEx_BreakCallback>:
 80017fc:	4770      	bx	lr

080017fe <HAL_TIMEx_Break2Callback>:
 80017fe:	4770      	bx	lr

08001800 <HAL_InitTick>:
 8001800:	b5b0      	push	{r4, r5, r7, lr}
 8001802:	af02      	add	r7, sp, #8
 8001804:	b086      	sub	sp, #24
 8001806:	4601      	mov	r1, r0
 8001808:	2036      	movs	r0, #54	; 0x36
 800180a:	2200      	movs	r2, #0
 800180c:	2400      	movs	r4, #0
 800180e:	f7ff fc99 	bl	8001144 <HAL_NVIC_SetPriority>
 8001812:	2036      	movs	r0, #54	; 0x36
 8001814:	f7ff fcc9 	bl	80011aa <HAL_NVIC_EnableIRQ>
 8001818:	f241 0058 	movw	r0, #4184	; 0x1058
 800181c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001820:	6801      	ldr	r1, [r0, #0]
 8001822:	f041 0110 	orr.w	r1, r1, #16
 8001826:	6001      	str	r1, [r0, #0]
 8001828:	4669      	mov	r1, sp
 800182a:	6800      	ldr	r0, [r0, #0]
 800182c:	f000 0010 	and.w	r0, r0, #16
 8001830:	9001      	str	r0, [sp, #4]
 8001832:	9801      	ldr	r0, [sp, #4]
 8001834:	a801      	add	r0, sp, #4
 8001836:	f7ff fe3a 	bl	80014ae <HAL_RCC_GetClockConfig>
 800183a:	9d04      	ldr	r5, [sp, #16]
 800183c:	f7ff fe0d 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001840:	2d00      	cmp	r5, #0
 8001842:	f640 4140 	movw	r1, #3136	; 0xc40
 8001846:	f241 0200 	movw	r2, #4096	; 0x1000
 800184a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800184e:	bf18      	it	ne
 8001850:	2501      	movne	r5, #1
 8001852:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001856:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800185a:	40a8      	lsls	r0, r5
 800185c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001860:	618c      	str	r4, [r1, #24]
 8001862:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001866:	fba0 0505 	umull	r0, r5, r0, r5
 800186a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800186e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001872:	e9c1 2000 	strd	r2, r0, [r1]
 8001876:	4608      	mov	r0, r1
 8001878:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800187c:	610c      	str	r4, [r1, #16]
 800187e:	f7ff fe37 	bl	80014f0 <HAL_TIM_Base_Init>
 8001882:	2800      	cmp	r0, #0
 8001884:	bf1e      	ittt	ne
 8001886:	2001      	movne	r0, #1
 8001888:	b006      	addne	sp, #24
 800188a:	bdb0      	popne	{r4, r5, r7, pc}
 800188c:	f640 4040 	movw	r0, #3136	; 0xc40
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 4040 	movw	r0, #3136	; 0xc40
 80018a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018a8:	f7ff beda 	b.w	8001660 <HAL_TIM_IRQHandler>

080018ac <HAL_UART_Init>:
 80018ac:	b5d0      	push	{r4, r6, r7, lr}
 80018ae:	af02      	add	r7, sp, #8
 80018b0:	4604      	mov	r4, r0
 80018b2:	b194      	cbz	r4, 80018da <HAL_UART_Init+0x2e>
 80018b4:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018b6:	b920      	cbnz	r0, 80018c2 <HAL_UART_Init+0x16>
 80018b8:	2000      	movs	r0, #0
 80018ba:	6720      	str	r0, [r4, #112]	; 0x70
 80018bc:	4620      	mov	r0, r4
 80018be:	f000 f826 	bl	800190e <HAL_UART_MspInit>
 80018c2:	2024      	movs	r0, #36	; 0x24
 80018c4:	6760      	str	r0, [r4, #116]	; 0x74
 80018c6:	6820      	ldr	r0, [r4, #0]
 80018c8:	6801      	ldr	r1, [r0, #0]
 80018ca:	f021 0101 	bic.w	r1, r1, #1
 80018ce:	6001      	str	r1, [r0, #0]
 80018d0:	4620      	mov	r0, r4
 80018d2:	f000 f81d 	bl	8001910 <UART_SetConfig>
 80018d6:	2801      	cmp	r0, #1
 80018d8:	d101      	bne.n	80018de <HAL_UART_Init+0x32>
 80018da:	2001      	movs	r0, #1
 80018dc:	bdd0      	pop	{r4, r6, r7, pc}
 80018de:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018e0:	2800      	cmp	r0, #0
 80018e2:	bf1c      	itt	ne
 80018e4:	4620      	movne	r0, r4
 80018e6:	f000 f944 	blne	8001b72 <UART_AdvFeatureConfig>
 80018ea:	6820      	ldr	r0, [r4, #0]
 80018ec:	6841      	ldr	r1, [r0, #4]
 80018ee:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80018f2:	6041      	str	r1, [r0, #4]
 80018f4:	6881      	ldr	r1, [r0, #8]
 80018f6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80018fa:	6081      	str	r1, [r0, #8]
 80018fc:	6801      	ldr	r1, [r0, #0]
 80018fe:	f041 0101 	orr.w	r1, r1, #1
 8001902:	6001      	str	r1, [r0, #0]
 8001904:	4620      	mov	r0, r4
 8001906:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800190a:	f000 b99d 	b.w	8001c48 <UART_CheckIdleState>

0800190e <HAL_UART_MspInit>:
 800190e:	4770      	bx	lr

08001910 <UART_SetConfig>:
 8001910:	b5b0      	push	{r4, r5, r7, lr}
 8001912:	af02      	add	r7, sp, #8
 8001914:	4604      	mov	r4, r0
 8001916:	f646 15f3 	movw	r5, #27123	; 0x69f3
 800191a:	f248 0e00 	movw	lr, #32768	; 0x8000
 800191e:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001922:	6821      	ldr	r1, [r4, #0]
 8001924:	68a0      	ldr	r0, [r4, #8]
 8001926:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 800192a:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 800192e:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001932:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001936:	4310      	orrs	r0, r2
 8001938:	69e2      	ldr	r2, [r4, #28]
 800193a:	4571      	cmp	r1, lr
 800193c:	ea40 0003 	orr.w	r0, r0, r3
 8001940:	680b      	ldr	r3, [r1, #0]
 8001942:	ea40 0002 	orr.w	r0, r0, r2
 8001946:	ea03 0305 	and.w	r3, r3, r5
 800194a:	f04f 0510 	mov.w	r5, #16
 800194e:	ea40 0003 	orr.w	r0, r0, r3
 8001952:	6008      	str	r0, [r1, #0]
 8001954:	6848      	ldr	r0, [r1, #4]
 8001956:	68e3      	ldr	r3, [r4, #12]
 8001958:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 800195c:	ea40 0003 	orr.w	r0, r0, r3
 8001960:	6048      	str	r0, [r1, #4]
 8001962:	69a0      	ldr	r0, [r4, #24]
 8001964:	bf1c      	itt	ne
 8001966:	6a23      	ldrne	r3, [r4, #32]
 8001968:	4318      	orrne	r0, r3
 800196a:	688b      	ldr	r3, [r1, #8]
 800196c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001970:	4318      	orrs	r0, r3
 8001972:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001976:	6088      	str	r0, [r1, #8]
 8001978:	f242 4000 	movw	r0, #9216	; 0x2400
 800197c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001980:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001984:	4299      	cmp	r1, r3
 8001986:	dc15      	bgt.n	80019b4 <UART_SetConfig+0xa4>
 8001988:	f244 4300 	movw	r3, #17408	; 0x4400
 800198c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001990:	4299      	cmp	r1, r3
 8001992:	d024      	beq.n	80019de <UART_SetConfig+0xce>
 8001994:	f644 0300 	movw	r3, #18432	; 0x4800
 8001998:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800199c:	4299      	cmp	r1, r3
 800199e:	d022      	beq.n	80019e6 <UART_SetConfig+0xd6>
 80019a0:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	4299      	cmp	r1, r3
 80019aa:	d131      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019ac:	f8dc 3000 	ldr.w	r3, [ip]
 80019b0:	099d      	lsrs	r5, r3, #6
 80019b2:	e023      	b.n	80019fc <UART_SetConfig+0xec>
 80019b4:	f245 0300 	movw	r3, #20480	; 0x5000
 80019b8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019bc:	4299      	cmp	r1, r3
 80019be:	d016      	beq.n	80019ee <UART_SetConfig+0xde>
 80019c0:	4571      	cmp	r1, lr
 80019c2:	d018      	beq.n	80019f6 <UART_SetConfig+0xe6>
 80019c4:	f643 0300 	movw	r3, #14336	; 0x3800
 80019c8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019cc:	4299      	cmp	r1, r3
 80019ce:	d11f      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019d0:	f8dc 5000 	ldr.w	r5, [ip]
 80019d4:	f247 3378 	movw	r3, #29560	; 0x7378
 80019d8:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019dc:	e012      	b.n	8001a04 <UART_SetConfig+0xf4>
 80019de:	f8dc 3000 	ldr.w	r3, [ip]
 80019e2:	089d      	lsrs	r5, r3, #2
 80019e4:	e00a      	b.n	80019fc <UART_SetConfig+0xec>
 80019e6:	f8dc 3000 	ldr.w	r3, [ip]
 80019ea:	091d      	lsrs	r5, r3, #4
 80019ec:	e006      	b.n	80019fc <UART_SetConfig+0xec>
 80019ee:	f8dc 3000 	ldr.w	r3, [ip]
 80019f2:	0a1d      	lsrs	r5, r3, #8
 80019f4:	e002      	b.n	80019fc <UART_SetConfig+0xec>
 80019f6:	f8dc 3000 	ldr.w	r3, [ip]
 80019fa:	0a9d      	lsrs	r5, r3, #10
 80019fc:	f247 3388 	movw	r3, #29576	; 0x7388
 8001a00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a04:	f005 0503 	and.w	r5, r5, #3
 8001a08:	f085 0502 	eor.w	r5, r5, #2
 8001a0c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a10:	4571      	cmp	r1, lr
 8001a12:	d012      	beq.n	8001a3a <UART_SetConfig+0x12a>
 8001a14:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a18:	d11d      	bne.n	8001a56 <UART_SetConfig+0x146>
 8001a1a:	f005 001f 	and.w	r0, r5, #31
 8001a1e:	2101      	movs	r1, #1
 8001a20:	2808      	cmp	r0, #8
 8001a22:	f200 809f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a26:	e8df f000 	tbb	[pc, r0]
 8001a2a:	4005      	.short	0x4005
 8001a2c:	9d499d43 	.word	0x9d499d43
 8001a30:	004f9d9d 	.word	0x004f9d9d
 8001a34:	f7ff fd11 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a38:	e042      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001a3a:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a3e:	2101      	movs	r1, #1
 8001a40:	2d04      	cmp	r5, #4
 8001a42:	f200 808f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a46:	e8df f005 	tbb	[pc, r5]
 8001a4a:	1c03      	.short	0x1c03
 8001a4c:	001a8d16 	.word	0x001a8d16
 8001a50:	f7ff fd03 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a54:	e011      	b.n	8001a7a <UART_SetConfig+0x16a>
 8001a56:	f005 021f 	and.w	r2, r5, #31
 8001a5a:	2101      	movs	r1, #1
 8001a5c:	2a08      	cmp	r2, #8
 8001a5e:	f200 8081 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a62:	e8df f002 	tbb	[pc, r2]
 8001a66:	4305      	.short	0x4305
 8001a68:	7f487f46 	.word	0x7f487f46
 8001a6c:	004e7f7f 	.word	0x004e7f7f
 8001a70:	f7ff fcf3 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a74:	e041      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001a76:	f7ff fc91 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001a7a:	b910      	cbnz	r0, 8001a82 <UART_SetConfig+0x172>
 8001a7c:	e071      	b.n	8001b62 <UART_SetConfig+0x252>
 8001a7e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a82:	6862      	ldr	r2, [r4, #4]
 8001a84:	2101      	movs	r1, #1
 8001a86:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001a8a:	4298      	cmp	r0, r3
 8001a8c:	d36a      	bcc.n	8001b64 <UART_SetConfig+0x254>
 8001a8e:	0313      	lsls	r3, r2, #12
 8001a90:	4298      	cmp	r0, r3
 8001a92:	bf9c      	itt	ls
 8001a94:	2101      	movls	r1, #1
 8001a96:	2d04      	cmpls	r5, #4
 8001a98:	d864      	bhi.n	8001b64 <UART_SetConfig+0x254>
 8001a9a:	e8df f005 	tbb	[pc, r5]
 8001a9e:	3e03      	.short	0x3e03
 8001aa0:	00526345 	.word	0x00526345
 8001aa4:	f7ff fcd9 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001aa8:	e040      	b.n	8001b2c <UART_SetConfig+0x21c>
 8001aaa:	f7ff fceb 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001aae:	e007      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001ab0:	6861      	ldr	r1, [r4, #4]
 8001ab2:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ab6:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001aba:	e008      	b.n	8001ace <UART_SetConfig+0x1be>
 8001abc:	f7ff fc6e 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001ac0:	6861      	ldr	r1, [r4, #4]
 8001ac2:	0040      	lsls	r0, r0, #1
 8001ac4:	084a      	lsrs	r2, r1, #1
 8001ac6:	e003      	b.n	8001ad0 <UART_SetConfig+0x1c0>
 8001ac8:	6861      	ldr	r1, [r4, #4]
 8001aca:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ace:	0848      	lsrs	r0, r1, #1
 8001ad0:	4410      	add	r0, r2
 8001ad2:	fbb0 f0f1 	udiv	r0, r0, r1
 8001ad6:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001ada:	4001      	ands	r1, r0
 8001adc:	2910      	cmp	r1, #16
 8001ade:	d303      	bcc.n	8001ae8 <UART_SetConfig+0x1d8>
 8001ae0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ae4:	4308      	orrs	r0, r1
 8001ae6:	e03a      	b.n	8001b5e <UART_SetConfig+0x24e>
 8001ae8:	2101      	movs	r1, #1
 8001aea:	e03b      	b.n	8001b64 <UART_SetConfig+0x254>
 8001aec:	f7ff fcca 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001af0:	e003      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001af2:	6862      	ldr	r2, [r4, #4]
 8001af4:	e008      	b.n	8001b08 <UART_SetConfig+0x1f8>
 8001af6:	f7ff fc51 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001afa:	6862      	ldr	r2, [r4, #4]
 8001afc:	4601      	mov	r1, r0
 8001afe:	0850      	lsrs	r0, r2, #1
 8001b00:	e003      	b.n	8001b0a <UART_SetConfig+0x1fa>
 8001b02:	6862      	ldr	r2, [r4, #4]
 8001b04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b08:	0851      	lsrs	r1, r2, #1
 8001b0a:	4408      	add	r0, r1
 8001b0c:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b10:	b280      	uxth	r0, r0
 8001b12:	2810      	cmp	r0, #16
 8001b14:	d223      	bcs.n	8001b5e <UART_SetConfig+0x24e>
 8001b16:	2101      	movs	r1, #1
 8001b18:	e024      	b.n	8001b64 <UART_SetConfig+0x254>
 8001b1a:	2000      	movs	r0, #0
 8001b1c:	2100      	movs	r1, #0
 8001b1e:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b22:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b26:	e006      	b.n	8001b36 <UART_SetConfig+0x226>
 8001b28:	f7ff fc38 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001b2c:	6862      	ldr	r2, [r4, #4]
 8001b2e:	0e01      	lsrs	r1, r0, #24
 8001b30:	0853      	lsrs	r3, r2, #1
 8001b32:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b36:	f141 0100 	adc.w	r1, r1, #0
 8001b3a:	2300      	movs	r3, #0
 8001b3c:	f7fe fb60 	bl	8000200 <__aeabi_uldivmod>
 8001b40:	e005      	b.n	8001b4e <UART_SetConfig+0x23e>
 8001b42:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b46:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b4a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b4e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b52:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b56:	f2c0 020f 	movt	r2, #15
 8001b5a:	4291      	cmp	r1, r2
 8001b5c:	d807      	bhi.n	8001b6e <UART_SetConfig+0x25e>
 8001b5e:	6821      	ldr	r1, [r4, #0]
 8001b60:	60c8      	str	r0, [r1, #12]
 8001b62:	2100      	movs	r1, #0
 8001b64:	2000      	movs	r0, #0
 8001b66:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b6a:	4608      	mov	r0, r1
 8001b6c:	bdb0      	pop	{r4, r5, r7, pc}
 8001b6e:	2101      	movs	r1, #1
 8001b70:	e7f8      	b.n	8001b64 <UART_SetConfig+0x254>

08001b72 <UART_AdvFeatureConfig>:
 8001b72:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b74:	f011 0f01 	tst.w	r1, #1
 8001b78:	d008      	beq.n	8001b8c <UART_AdvFeatureConfig+0x1a>
 8001b7a:	6802      	ldr	r2, [r0, #0]
 8001b7c:	6853      	ldr	r3, [r2, #4]
 8001b7e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b82:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001b86:	ea43 030c 	orr.w	r3, r3, ip
 8001b8a:	6053      	str	r3, [r2, #4]
 8001b8c:	078a      	lsls	r2, r1, #30
 8001b8e:	d508      	bpl.n	8001ba2 <UART_AdvFeatureConfig+0x30>
 8001b90:	6802      	ldr	r2, [r0, #0]
 8001b92:	6853      	ldr	r3, [r2, #4]
 8001b94:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001b98:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001b9c:	ea43 030c 	orr.w	r3, r3, ip
 8001ba0:	6053      	str	r3, [r2, #4]
 8001ba2:	074a      	lsls	r2, r1, #29
 8001ba4:	d508      	bpl.n	8001bb8 <UART_AdvFeatureConfig+0x46>
 8001ba6:	6802      	ldr	r2, [r0, #0]
 8001ba8:	6853      	ldr	r3, [r2, #4]
 8001baa:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bae:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bb2:	ea43 030c 	orr.w	r3, r3, ip
 8001bb6:	6053      	str	r3, [r2, #4]
 8001bb8:	070a      	lsls	r2, r1, #28
 8001bba:	d508      	bpl.n	8001bce <UART_AdvFeatureConfig+0x5c>
 8001bbc:	6802      	ldr	r2, [r0, #0]
 8001bbe:	6853      	ldr	r3, [r2, #4]
 8001bc0:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bc4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bc8:	ea43 030c 	orr.w	r3, r3, ip
 8001bcc:	6053      	str	r3, [r2, #4]
 8001bce:	06ca      	lsls	r2, r1, #27
 8001bd0:	d508      	bpl.n	8001be4 <UART_AdvFeatureConfig+0x72>
 8001bd2:	6802      	ldr	r2, [r0, #0]
 8001bd4:	6893      	ldr	r3, [r2, #8]
 8001bd6:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bda:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001bde:	ea43 030c 	orr.w	r3, r3, ip
 8001be2:	6093      	str	r3, [r2, #8]
 8001be4:	068a      	lsls	r2, r1, #26
 8001be6:	d508      	bpl.n	8001bfa <UART_AdvFeatureConfig+0x88>
 8001be8:	6802      	ldr	r2, [r0, #0]
 8001bea:	6893      	ldr	r3, [r2, #8]
 8001bec:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001bf0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001bf4:	ea43 030c 	orr.w	r3, r3, ip
 8001bf8:	6093      	str	r3, [r2, #8]
 8001bfa:	b580      	push	{r7, lr}
 8001bfc:	466f      	mov	r7, sp
 8001bfe:	064a      	lsls	r2, r1, #25
 8001c00:	d515      	bpl.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c02:	f8d0 e000 	ldr.w	lr, [r0]
 8001c06:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c0a:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c0c:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c10:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c14:	ea42 0203 	orr.w	r2, r2, r3
 8001c18:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c1c:	d107      	bne.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c1e:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c22:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c24:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c28:	431a      	orrs	r2, r3
 8001c2a:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c2e:	0609      	lsls	r1, r1, #24
 8001c30:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c34:	bf58      	it	pl
 8001c36:	4770      	bxpl	lr
 8001c38:	6801      	ldr	r1, [r0, #0]
 8001c3a:	684a      	ldr	r2, [r1, #4]
 8001c3c:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c3e:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c42:	4310      	orrs	r0, r2
 8001c44:	6048      	str	r0, [r1, #4]
 8001c46:	4770      	bx	lr

08001c48 <UART_CheckIdleState>:
 8001c48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c4a:	af03      	add	r7, sp, #12
 8001c4c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c50:	4604      	mov	r4, r0
 8001c52:	2000      	movs	r0, #0
 8001c54:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c56:	f7ff fa5f 	bl	8001118 <HAL_GetTick>
 8001c5a:	4605      	mov	r5, r0
 8001c5c:	6820      	ldr	r0, [r4, #0]
 8001c5e:	6801      	ldr	r1, [r0, #0]
 8001c60:	f011 0f08 	tst.w	r1, #8
 8001c64:	d00f      	beq.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c66:	69c1      	ldr	r1, [r0, #28]
 8001c68:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c6c:	d10b      	bne.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c6e:	2600      	movs	r6, #0
 8001c70:	f7ff fa52 	bl	8001118 <HAL_GetTick>
 8001c74:	1b41      	subs	r1, r0, r5
 8001c76:	6820      	ldr	r0, [r4, #0]
 8001c78:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c7c:	d11b      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001c7e:	69c1      	ldr	r1, [r0, #28]
 8001c80:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c84:	d0f4      	beq.n	8001c70 <UART_CheckIdleState+0x28>
 8001c86:	6801      	ldr	r1, [r0, #0]
 8001c88:	f011 0f04 	tst.w	r1, #4
 8001c8c:	d101      	bne.n	8001c92 <UART_CheckIdleState+0x4a>
 8001c8e:	2600      	movs	r6, #0
 8001c90:	e01a      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c92:	69c0      	ldr	r0, [r0, #28]
 8001c94:	2600      	movs	r6, #0
 8001c96:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001c9a:	d115      	bne.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c9c:	f7ff fa3c 	bl	8001118 <HAL_GetTick>
 8001ca0:	1b41      	subs	r1, r0, r5
 8001ca2:	6820      	ldr	r0, [r4, #0]
 8001ca4:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ca8:	d105      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001caa:	69c0      	ldr	r0, [r0, #28]
 8001cac:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb0:	d0f4      	beq.n	8001c9c <UART_CheckIdleState+0x54>
 8001cb2:	2600      	movs	r6, #0
 8001cb4:	e008      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001cb6:	6801      	ldr	r1, [r0, #0]
 8001cb8:	2603      	movs	r6, #3
 8001cba:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cbe:	6001      	str	r1, [r0, #0]
 8001cc0:	6881      	ldr	r1, [r0, #8]
 8001cc2:	f021 0101 	bic.w	r1, r1, #1
 8001cc6:	6081      	str	r1, [r0, #8]
 8001cc8:	2020      	movs	r0, #32
 8001cca:	6760      	str	r0, [r4, #116]	; 0x74
 8001ccc:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cce:	2000      	movs	r0, #0
 8001cd0:	6720      	str	r0, [r4, #112]	; 0x70
 8001cd2:	4630      	mov	r0, r6
 8001cd4:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cda <HAL_UART_Transmit>:
 8001cda:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cdc:	af03      	add	r7, sp, #12
 8001cde:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ce2:	b081      	sub	sp, #4
 8001ce4:	4604      	mov	r4, r0
 8001ce6:	461d      	mov	r5, r3
 8001ce8:	4616      	mov	r6, r2
 8001cea:	4689      	mov	r9, r1
 8001cec:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001cee:	2820      	cmp	r0, #32
 8001cf0:	d109      	bne.n	8001d06 <HAL_UART_Transmit+0x2c>
 8001cf2:	f1b9 0f00 	cmp.w	r9, #0
 8001cf6:	f04f 0001 	mov.w	r0, #1
 8001cfa:	bf18      	it	ne
 8001cfc:	2e00      	cmpne	r6, #0
 8001cfe:	d003      	beq.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001d00:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d02:	2801      	cmp	r0, #1
 8001d04:	d104      	bne.n	8001d10 <HAL_UART_Transmit+0x36>
 8001d06:	2002      	movs	r0, #2
 8001d08:	b001      	add	sp, #4
 8001d0a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d10:	2001      	movs	r0, #1
 8001d12:	6720      	str	r0, [r4, #112]	; 0x70
 8001d14:	2000      	movs	r0, #0
 8001d16:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d18:	2021      	movs	r0, #33	; 0x21
 8001d1a:	6760      	str	r0, [r4, #116]	; 0x74
 8001d1c:	f7ff f9fc 	bl	8001118 <HAL_GetTick>
 8001d20:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d24:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d28:	4680      	mov	r8, r0
 8001d2a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d2e:	f8d4 b000 	ldr.w	fp, [r4]
 8001d32:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d36:	2900      	cmp	r1, #0
 8001d38:	d040      	beq.n	8001dbc <HAL_UART_Transmit+0xe2>
 8001d3a:	f105 0a01 	add.w	sl, r5, #1
 8001d3e:	0600      	lsls	r0, r0, #24
 8001d40:	d410      	bmi.n	8001d64 <HAL_UART_Transmit+0x8a>
 8001d42:	465e      	mov	r6, fp
 8001d44:	f1ba 0f00 	cmp.w	sl, #0
 8001d48:	d007      	beq.n	8001d5a <HAL_UART_Transmit+0x80>
 8001d4a:	b33d      	cbz	r5, 8001d9c <HAL_UART_Transmit+0xc2>
 8001d4c:	f7ff f9e4 	bl	8001118 <HAL_GetTick>
 8001d50:	6826      	ldr	r6, [r4, #0]
 8001d52:	eba0 0008 	sub.w	r0, r0, r8
 8001d56:	42a8      	cmp	r0, r5
 8001d58:	d821      	bhi.n	8001d9e <HAL_UART_Transmit+0xc4>
 8001d5a:	69f0      	ldr	r0, [r6, #28]
 8001d5c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d60:	d0f0      	beq.n	8001d44 <HAL_UART_Transmit+0x6a>
 8001d62:	e000      	b.n	8001d66 <HAL_UART_Transmit+0x8c>
 8001d64:	465e      	mov	r6, fp
 8001d66:	68a0      	ldr	r0, [r4, #8]
 8001d68:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d6c:	bf04      	itt	eq
 8001d6e:	6920      	ldreq	r0, [r4, #16]
 8001d70:	2800      	cmpeq	r0, #0
 8001d72:	d002      	beq.n	8001d7a <HAL_UART_Transmit+0xa0>
 8001d74:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d78:	e003      	b.n	8001d82 <HAL_UART_Transmit+0xa8>
 8001d7a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d7e:	f36f 205f 	bfc	r0, #9, #23
 8001d82:	8530      	strh	r0, [r6, #40]	; 0x28
 8001d84:	46b3      	mov	fp, r6
 8001d86:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001d8a:	3801      	subs	r0, #1
 8001d8c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001d90:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d94:	69f0      	ldr	r0, [r6, #28]
 8001d96:	2900      	cmp	r1, #0
 8001d98:	d1d1      	bne.n	8001d3e <HAL_UART_Transmit+0x64>
 8001d9a:	e010      	b.n	8001dbe <HAL_UART_Transmit+0xe4>
 8001d9c:	465e      	mov	r6, fp
 8001d9e:	6830      	ldr	r0, [r6, #0]
 8001da0:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001da4:	6030      	str	r0, [r6, #0]
 8001da6:	68b0      	ldr	r0, [r6, #8]
 8001da8:	f020 0001 	bic.w	r0, r0, #1
 8001dac:	60b0      	str	r0, [r6, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	6760      	str	r0, [r4, #116]	; 0x74
 8001db2:	67a0      	str	r0, [r4, #120]	; 0x78
 8001db4:	2000      	movs	r0, #0
 8001db6:	6720      	str	r0, [r4, #112]	; 0x70
 8001db8:	2003      	movs	r0, #3
 8001dba:	e7a5      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001dbc:	465e      	mov	r6, fp
 8001dbe:	0640      	lsls	r0, r0, #25
 8001dc0:	d411      	bmi.n	8001de6 <HAL_UART_Transmit+0x10c>
 8001dc2:	f105 0901 	add.w	r9, r5, #1
 8001dc6:	4630      	mov	r0, r6
 8001dc8:	f1b9 0f00 	cmp.w	r9, #0
 8001dcc:	d007      	beq.n	8001dde <HAL_UART_Transmit+0x104>
 8001dce:	b17d      	cbz	r5, 8001df0 <HAL_UART_Transmit+0x116>
 8001dd0:	f7ff f9a2 	bl	8001118 <HAL_GetTick>
 8001dd4:	eba0 0108 	sub.w	r1, r0, r8
 8001dd8:	6820      	ldr	r0, [r4, #0]
 8001dda:	42a9      	cmp	r1, r5
 8001ddc:	d809      	bhi.n	8001df2 <HAL_UART_Transmit+0x118>
 8001dde:	69c1      	ldr	r1, [r0, #28]
 8001de0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001de4:	d0f0      	beq.n	8001dc8 <HAL_UART_Transmit+0xee>
 8001de6:	2020      	movs	r0, #32
 8001de8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dea:	2000      	movs	r0, #0
 8001dec:	6720      	str	r0, [r4, #112]	; 0x70
 8001dee:	e78b      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001df0:	4630      	mov	r0, r6
 8001df2:	6801      	ldr	r1, [r0, #0]
 8001df4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001df8:	6001      	str	r1, [r0, #0]
 8001dfa:	6881      	ldr	r1, [r0, #8]
 8001dfc:	f021 0101 	bic.w	r1, r1, #1
 8001e00:	6081      	str	r1, [r0, #8]
 8001e02:	e7d4      	b.n	8001dae <HAL_UART_Transmit+0xd4>

08001e04 <BSP_COM_Init>:
 8001e04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e06:	af03      	add	r7, sp, #12
 8001e08:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e0c:	b086      	sub	sp, #24
 8001e0e:	4605      	mov	r5, r0
 8001e10:	4688      	mov	r8, r1
 8001e12:	b9f5      	cbnz	r5, 8001e52 <BSP_COM_Init+0x4e>
 8001e14:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e18:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e1c:	6801      	ldr	r1, [r0, #0]
 8001e1e:	f041 0102 	orr.w	r1, r1, #2
 8001e22:	6001      	str	r1, [r0, #0]
 8001e24:	6801      	ldr	r1, [r0, #0]
 8001e26:	f001 0102 	and.w	r1, r1, #2
 8001e2a:	9101      	str	r1, [sp, #4]
 8001e2c:	9901      	ldr	r1, [sp, #4]
 8001e2e:	6801      	ldr	r1, [r0, #0]
 8001e30:	f041 0102 	orr.w	r1, r1, #2
 8001e34:	6001      	str	r1, [r0, #0]
 8001e36:	6801      	ldr	r1, [r0, #0]
 8001e38:	f001 0102 	and.w	r1, r1, #2
 8001e3c:	9101      	str	r1, [sp, #4]
 8001e3e:	9901      	ldr	r1, [sp, #4]
 8001e40:	6941      	ldr	r1, [r0, #20]
 8001e42:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e46:	6141      	str	r1, [r0, #20]
 8001e48:	6940      	ldr	r0, [r0, #20]
 8001e4a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e4e:	9001      	str	r0, [sp, #4]
 8001e50:	9801      	ldr	r0, [sp, #4]
 8001e52:	2040      	movs	r0, #64	; 0x40
 8001e54:	2402      	movs	r4, #2
 8001e56:	ae01      	add	r6, sp, #4
 8001e58:	f04f 0907 	mov.w	r9, #7
 8001e5c:	9001      	str	r0, [sp, #4]
 8001e5e:	2000      	movs	r0, #0
 8001e60:	9402      	str	r4, [sp, #8]
 8001e62:	9404      	str	r4, [sp, #16]
 8001e64:	4631      	mov	r1, r6
 8001e66:	9003      	str	r0, [sp, #12]
 8001e68:	f240 000c 	movw	r0, #12
 8001e6c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e74:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e78:	f7ff f9a7 	bl	80011ca <HAL_GPIO_Init>
 8001e7c:	2080      	movs	r0, #128	; 0x80
 8001e7e:	4631      	mov	r1, r6
 8001e80:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001e84:	f240 0010 	movw	r0, #16
 8001e88:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e90:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e94:	f7ff f999 	bl	80011ca <HAL_GPIO_Init>
 8001e98:	f240 0008 	movw	r0, #8
 8001e9c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ea0:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea4:	f8c8 0000 	str.w	r0, [r8]
 8001ea8:	4640      	mov	r0, r8
 8001eaa:	f7ff fcff 	bl	80018ac <HAL_UART_Init>
 8001eae:	b006      	add	sp, #24
 8001eb0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001eb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001eb6 <dijkstra>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b081      	sub	sp, #4
 8001ec0:	f640 4284 	movw	r2, #3204	; 0xc84
 8001ec4:	460d      	mov	r5, r1
 8001ec6:	4681      	mov	r9, r0
 8001ec8:	f640 6070 	movw	r0, #3696	; 0xe70
 8001ecc:	f242 740f 	movw	r4, #9999	; 0x270f
 8001ed0:	210a      	movs	r1, #10
 8001ed2:	2600      	movs	r6, #0
 8001ed4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001ed8:	45a9      	cmp	r9, r5
 8001eda:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ede:	e9c2 4400 	strd	r4, r4, [r2]
 8001ee2:	e9c2 4402 	strd	r4, r4, [r2, #8]
 8001ee6:	e9c2 4404 	strd	r4, r4, [r2, #16]
 8001eea:	e9c2 4406 	strd	r4, r4, [r2, #24]
 8001eee:	e9c2 4408 	strd	r4, r4, [r2, #32]
 8001ef2:	e9c2 440a 	strd	r4, r4, [r2, #40]	; 0x28
 8001ef6:	e9c2 440c 	strd	r4, r4, [r2, #48]	; 0x30
 8001efa:	e9c2 440e 	strd	r4, r4, [r2, #56]	; 0x38
 8001efe:	e9c2 4410 	strd	r4, r4, [r2, #64]	; 0x40
 8001f02:	e9c2 4412 	strd	r4, r4, [r2, #72]	; 0x48
 8001f06:	6001      	str	r1, [r0, #0]
 8001f08:	f000 80d6 	beq.w	80020b8 <dijkstra+0x202>
 8001f0c:	eb02 00c9 	add.w	r0, r2, r9, lsl #3
 8001f10:	f842 6039 	str.w	r6, [r2, r9, lsl #3]
 8001f14:	6044      	str	r4, [r0, #4]
 8001f16:	2010      	movs	r0, #16
 8001f18:	f000 fa8e 	bl	8002438 <malloc>
 8001f1c:	f640 3374 	movw	r3, #2932	; 0xb74
 8001f20:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8001f24:	6819      	ldr	r1, [r3, #0]
 8001f26:	e9c0 9600 	strd	r9, r6, [r0]
 8001f2a:	e9c0 4602 	strd	r4, r6, [r0, #8]
 8001f2e:	9500      	str	r5, [sp, #0]
 8001f30:	2900      	cmp	r1, #0
 8001f32:	d005      	beq.n	8001f40 <dijkstra+0x8a>
 8001f34:	460a      	mov	r2, r1
 8001f36:	f852 1f0c 	ldr.w	r1, [r2, #12]!
 8001f3a:	2900      	cmp	r1, #0
 8001f3c:	d1fa      	bne.n	8001f34 <dijkstra+0x7e>
 8001f3e:	e000      	b.n	8001f42 <dijkstra+0x8c>
 8001f40:	461a      	mov	r2, r3
 8001f42:	6010      	str	r0, [r2, #0]
 8001f44:	f640 3278 	movw	r2, #2936	; 0xb78
 8001f48:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f4c:	6810      	ldr	r0, [r2, #0]
 8001f4e:	f100 0c01 	add.w	ip, r0, #1
 8001f52:	2800      	cmp	r0, #0
 8001f54:	f8c2 c000 	str.w	ip, [r2]
 8001f58:	f640 4284 	movw	r2, #3204	; 0xc84
 8001f5c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f60:	f2c0 80a7 	blt.w	80020b2 <dijkstra+0x1fc>
 8001f64:	f640 616c 	movw	r1, #3692	; 0xe6c
 8001f68:	f640 6864 	movw	r8, #3684	; 0xe64
 8001f6c:	f640 6478 	movw	r4, #3704	; 0xe78
 8001f70:	f240 0514 	movw	r5, #20
 8001f74:	f640 6668 	movw	r6, #3688	; 0xe68
 8001f78:	f242 7b0f 	movw	fp, #9999	; 0x270f
 8001f7c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f80:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001f84:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8001f88:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8001f8c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8001f90:	6818      	ldr	r0, [r3, #0]
 8001f92:	b348      	cbz	r0, 8001fe8 <dijkstra+0x132>
 8001f94:	6802      	ldr	r2, [r0, #0]
 8001f96:	f640 6174 	movw	r1, #3700	; 0xe74
 8001f9a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f9e:	6022      	str	r2, [r4, #0]
 8001fa0:	6842      	ldr	r2, [r0, #4]
 8001fa2:	f8c8 2000 	str.w	r2, [r8]
 8001fa6:	6882      	ldr	r2, [r0, #8]
 8001fa8:	600a      	str	r2, [r1, #0]
 8001faa:	f1ac 0101 	sub.w	r1, ip, #1
 8001fae:	68c2      	ldr	r2, [r0, #12]
 8001fb0:	601a      	str	r2, [r3, #0]
 8001fb2:	f640 3278 	movw	r2, #2936	; 0xb78
 8001fb6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fba:	6011      	str	r1, [r2, #0]
 8001fbc:	f000 fa44 	bl	8002448 <free>
 8001fc0:	f640 616c 	movw	r1, #3692	; 0xe6c
 8001fc4:	f640 6668 	movw	r6, #3688	; 0xe68
 8001fc8:	f240 0514 	movw	r5, #20
 8001fcc:	f640 3374 	movw	r3, #2932	; 0xb74
 8001fd0:	f640 4284 	movw	r2, #3204	; 0xc84
 8001fd4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fd8:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8001fdc:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8001fe0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8001fe4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fe8:	f8d8 9000 	ldr.w	r9, [r8]
 8001fec:	6824      	ldr	r4, [r4, #0]
 8001fee:	f04f 0a00 	mov.w	sl, #0
 8001ff2:	f8c1 a000 	str.w	sl, [r1]
 8001ff6:	eb04 0084 	add.w	r0, r4, r4, lsl #2
 8001ffa:	eb05 00c0 	add.w	r0, r5, r0, lsl #3
 8001ffe:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
 8002002:	4558      	cmp	r0, fp
 8002004:	6030      	str	r0, [r6, #0]
 8002006:	d03a      	beq.n	800207e <dijkstra+0x1c8>
 8002008:	eb09 0800 	add.w	r8, r9, r0
 800200c:	f852 003a 	ldr.w	r0, [r2, sl, lsl #3]
 8002010:	4558      	cmp	r0, fp
 8002012:	d001      	beq.n	8002018 <dijkstra+0x162>
 8002014:	4540      	cmp	r0, r8
 8002016:	dd32      	ble.n	800207e <dijkstra+0x1c8>
 8002018:	eb02 00ca 	add.w	r0, r2, sl, lsl #3
 800201c:	f842 803a 	str.w	r8, [r2, sl, lsl #3]
 8002020:	6044      	str	r4, [r0, #4]
 8002022:	2010      	movs	r0, #16
 8002024:	f000 fa08 	bl	8002438 <malloc>
 8002028:	f640 3374 	movw	r3, #2932	; 0xb74
 800202c:	2200      	movs	r2, #0
 800202e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002032:	6819      	ldr	r1, [r3, #0]
 8002034:	e9c0 a800 	strd	sl, r8, [r0]
 8002038:	6084      	str	r4, [r0, #8]
 800203a:	60c2      	str	r2, [r0, #12]
 800203c:	b129      	cbz	r1, 800204a <dijkstra+0x194>
 800203e:	460a      	mov	r2, r1
 8002040:	f852 1f0c 	ldr.w	r1, [r2, #12]!
 8002044:	2900      	cmp	r1, #0
 8002046:	d1fa      	bne.n	800203e <dijkstra+0x188>
 8002048:	e000      	b.n	800204c <dijkstra+0x196>
 800204a:	461a      	mov	r2, r3
 800204c:	6010      	str	r0, [r2, #0]
 800204e:	f640 3078 	movw	r0, #2936	; 0xb78
 8002052:	f240 0514 	movw	r5, #20
 8002056:	f640 6668 	movw	r6, #3688	; 0xe68
 800205a:	f640 616c 	movw	r1, #3692	; 0xe6c
 800205e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002062:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002066:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800206a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800206e:	4602      	mov	r2, r0
 8002070:	6810      	ldr	r0, [r2, #0]
 8002072:	3001      	adds	r0, #1
 8002074:	6010      	str	r0, [r2, #0]
 8002076:	f640 4284 	movw	r2, #3204	; 0xc84
 800207a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800207e:	f10a 0a01 	add.w	sl, sl, #1
 8002082:	f1ba 0f0a 	cmp.w	sl, #10
 8002086:	f8c1 a000 	str.w	sl, [r1]
 800208a:	dbb4      	blt.n	8001ff6 <dijkstra+0x140>
 800208c:	f640 3078 	movw	r0, #2936	; 0xb78
 8002090:	f640 6464 	movw	r4, #3684	; 0xe64
 8002094:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002098:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800209c:	f8d0 c000 	ldr.w	ip, [r0]
 80020a0:	46a0      	mov	r8, r4
 80020a2:	f640 6478 	movw	r4, #3704	; 0xe78
 80020a6:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80020aa:	f1bc 0f01 	cmp.w	ip, #1
 80020ae:	f6bf af6f 	bge.w	8001f90 <dijkstra+0xda>
 80020b2:	9800      	ldr	r0, [sp, #0]
 80020b4:	f852 6030 	ldr.w	r6, [r2, r0, lsl #3]
 80020b8:	4630      	mov	r0, r6
 80020ba:	b001      	add	sp, #4
 80020bc:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020c0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020c2 <initialise_benchmark>:
 80020c2:	4770      	bx	lr

080020c4 <benchmark>:
 80020c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020c6:	af03      	add	r7, sp, #12
 80020c8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020cc:	f640 357c 	movw	r5, #2940	; 0xb7c
 80020d0:	f640 46d4 	movw	r6, #3284	; 0xcd4
 80020d4:	2400      	movs	r4, #0
 80020d6:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80020da:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80020de:	602c      	str	r4, [r5, #0]
 80020e0:	2000      	movs	r0, #0
 80020e2:	4621      	mov	r1, r4
 80020e4:	f7ff fee7 	bl	8001eb6 <dijkstra>
 80020e8:	6829      	ldr	r1, [r5, #0]
 80020ea:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 80020ee:	1c48      	adds	r0, r1, #1
 80020f0:	4621      	mov	r1, r4
 80020f2:	6028      	str	r0, [r5, #0]
 80020f4:	2001      	movs	r0, #1
 80020f6:	f7ff fede 	bl	8001eb6 <dijkstra>
 80020fa:	6829      	ldr	r1, [r5, #0]
 80020fc:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002100:	1c48      	adds	r0, r1, #1
 8002102:	4621      	mov	r1, r4
 8002104:	6028      	str	r0, [r5, #0]
 8002106:	2002      	movs	r0, #2
 8002108:	f7ff fed5 	bl	8001eb6 <dijkstra>
 800210c:	6829      	ldr	r1, [r5, #0]
 800210e:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002112:	1c48      	adds	r0, r1, #1
 8002114:	4621      	mov	r1, r4
 8002116:	6028      	str	r0, [r5, #0]
 8002118:	2003      	movs	r0, #3
 800211a:	f7ff fecc 	bl	8001eb6 <dijkstra>
 800211e:	6829      	ldr	r1, [r5, #0]
 8002120:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002124:	1c48      	adds	r0, r1, #1
 8002126:	4621      	mov	r1, r4
 8002128:	6028      	str	r0, [r5, #0]
 800212a:	2004      	movs	r0, #4
 800212c:	f7ff fec3 	bl	8001eb6 <dijkstra>
 8002130:	6829      	ldr	r1, [r5, #0]
 8002132:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002136:	1c48      	adds	r0, r1, #1
 8002138:	4621      	mov	r1, r4
 800213a:	6028      	str	r0, [r5, #0]
 800213c:	2005      	movs	r0, #5
 800213e:	f7ff feba 	bl	8001eb6 <dijkstra>
 8002142:	6829      	ldr	r1, [r5, #0]
 8002144:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002148:	1c48      	adds	r0, r1, #1
 800214a:	4621      	mov	r1, r4
 800214c:	6028      	str	r0, [r5, #0]
 800214e:	2006      	movs	r0, #6
 8002150:	f7ff feb1 	bl	8001eb6 <dijkstra>
 8002154:	6829      	ldr	r1, [r5, #0]
 8002156:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 800215a:	1c48      	adds	r0, r1, #1
 800215c:	4621      	mov	r1, r4
 800215e:	6028      	str	r0, [r5, #0]
 8002160:	2007      	movs	r0, #7
 8002162:	f7ff fea8 	bl	8001eb6 <dijkstra>
 8002166:	6829      	ldr	r1, [r5, #0]
 8002168:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 800216c:	1c48      	adds	r0, r1, #1
 800216e:	4621      	mov	r1, r4
 8002170:	6028      	str	r0, [r5, #0]
 8002172:	2008      	movs	r0, #8
 8002174:	f7ff fe9f 	bl	8001eb6 <dijkstra>
 8002178:	6829      	ldr	r1, [r5, #0]
 800217a:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 800217e:	1c48      	adds	r0, r1, #1
 8002180:	4621      	mov	r1, r4
 8002182:	6028      	str	r0, [r5, #0]
 8002184:	2009      	movs	r0, #9
 8002186:	f7ff fe96 	bl	8001eb6 <dijkstra>
 800218a:	6829      	ldr	r1, [r5, #0]
 800218c:	3401      	adds	r4, #1
 800218e:	2c0a      	cmp	r4, #10
 8002190:	f846 0021 	str.w	r0, [r6, r1, lsl #2]
 8002194:	f101 0001 	add.w	r0, r1, #1
 8002198:	6028      	str	r0, [r5, #0]
 800219a:	d1a1      	bne.n	80020e0 <benchmark+0x1c>
 800219c:	2000      	movs	r0, #0
 800219e:	f85d bb04 	ldr.w	fp, [sp], #4
 80021a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a4 <verify_benchmark>:
 80021a4:	f247 1ca0 	movw	ip, #29088	; 0x71a0
 80021a8:	f640 42d4 	movw	r2, #3284	; 0xcd4
 80021ac:	2000      	movs	r0, #0
 80021ae:	f6c0 0c00 	movt	ip, #2048	; 0x800
 80021b2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021b6:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 80021ba:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80021be:	4299      	cmp	r1, r3
 80021c0:	bf1c      	itt	ne
 80021c2:	2000      	movne	r0, #0
 80021c4:	4770      	bxne	lr
 80021c6:	3001      	adds	r0, #1
 80021c8:	2863      	cmp	r0, #99	; 0x63
 80021ca:	bfc4      	itt	gt
 80021cc:	2001      	movgt	r0, #1
 80021ce:	4770      	bxgt	lr
 80021d0:	e7f1      	b.n	80021b6 <verify_benchmark+0x12>

080021d2 <__io_putchar>:
 80021d2:	b580      	push	{r7, lr}
 80021d4:	466f      	mov	r7, sp
 80021d6:	b082      	sub	sp, #8
 80021d8:	9001      	str	r0, [sp, #4]
 80021da:	f640 3080 	movw	r0, #2944	; 0xb80
 80021de:	a901      	add	r1, sp, #4
 80021e0:	2201      	movs	r2, #1
 80021e2:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80021e6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021ea:	f7ff fd76 	bl	8001cda <HAL_UART_Transmit>
 80021ee:	9801      	ldr	r0, [sp, #4]
 80021f0:	b002      	add	sp, #8
 80021f2:	bd80      	pop	{r7, pc}

080021f4 <main>:
 80021f4:	b5b0      	push	{r4, r5, r7, lr}
 80021f6:	af02      	add	r7, sp, #8
 80021f8:	f640 3180 	movw	r1, #2944	; 0xb80
 80021fc:	f643 0000 	movw	r0, #14336	; 0x3800
 8002200:	220c      	movs	r2, #12
 8002202:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002206:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800220a:	6008      	str	r0, [r1, #0]
 800220c:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002210:	6048      	str	r0, [r1, #4]
 8002212:	2000      	movs	r0, #0
 8002214:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002218:	6108      	str	r0, [r1, #16]
 800221a:	6248      	str	r0, [r1, #36]	; 0x24
 800221c:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002220:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002224:	2000      	movs	r0, #0
 8002226:	f7ff fded 	bl	8001e04 <BSP_COM_Init>
 800222a:	f7ff ff4a 	bl	80020c2 <initialise_benchmark>
 800222e:	f247 3098 	movw	r0, #29592	; 0x7398
 8002232:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002236:	f000 fc09 	bl	8002a4c <printf>
 800223a:	f247 4043 	movw	r0, #29763	; 0x7443
 800223e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002242:	f000 fc65 	bl	8002b10 <puts>
 8002246:	f7fe ff4f 	bl	80010e8 <HAL_Init>
 800224a:	f7fe ff65 	bl	8001118 <HAL_GetTick>
 800224e:	4604      	mov	r4, r0
 8002250:	f7ff ff38 	bl	80020c4 <benchmark>
 8002254:	4605      	mov	r5, r0
 8002256:	f7fe ff5f 	bl	8001118 <HAL_GetTick>
 800225a:	1b04      	subs	r4, r0, r4
 800225c:	4628      	mov	r0, r5
 800225e:	f7ff ffa1 	bl	80021a4 <verify_benchmark>
 8002262:	1c41      	adds	r1, r0, #1
 8002264:	d006      	beq.n	8002274 <main+0x80>
 8002266:	2801      	cmp	r0, #1
 8002268:	d109      	bne.n	800227e <main+0x8a>
 800226a:	f247 30af 	movw	r0, #29615	; 0x73af
 800226e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002272:	e008      	b.n	8002286 <main+0x92>
 8002274:	f247 30d3 	movw	r0, #29651	; 0x73d3
 8002278:	f6c0 0000 	movt	r0, #2048	; 0x800
 800227c:	e003      	b.n	8002286 <main+0x92>
 800227e:	f247 4008 	movw	r0, #29704	; 0x7408
 8002282:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002286:	4621      	mov	r1, r4
 8002288:	f000 fbe0 	bl	8002a4c <printf>
 800228c:	2000      	movs	r0, #0
 800228e:	bdb0      	pop	{r4, r5, r7, pc}

08002290 <SysTick_Handler>:
 8002290:	b580      	push	{r7, lr}
 8002292:	466f      	mov	r7, sp
 8002294:	f7fe ff38 	bl	8001108 <HAL_IncTick>
 8002298:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800229c:	f7fe bf92 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080022a0 <_read>:
 80022a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022a2:	af03      	add	r7, sp, #12
 80022a4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80022a8:	4614      	mov	r4, r2
 80022aa:	460d      	mov	r5, r1
 80022ac:	2c01      	cmp	r4, #1
 80022ae:	db06      	blt.n	80022be <_read+0x1e>
 80022b0:	4626      	mov	r6, r4
 80022b2:	f3af 8000 	nop.w
 80022b6:	f805 0b01 	strb.w	r0, [r5], #1
 80022ba:	3e01      	subs	r6, #1
 80022bc:	d1f9      	bne.n	80022b2 <_read+0x12>
 80022be:	4620      	mov	r0, r4
 80022c0:	f85d bb04 	ldr.w	fp, [sp], #4
 80022c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022c6 <_write>:
 80022c6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022c8:	af03      	add	r7, sp, #12
 80022ca:	f84d bd04 	str.w	fp, [sp, #-4]!
 80022ce:	4614      	mov	r4, r2
 80022d0:	460d      	mov	r5, r1
 80022d2:	2c01      	cmp	r4, #1
 80022d4:	db06      	blt.n	80022e4 <_write+0x1e>
 80022d6:	4626      	mov	r6, r4
 80022d8:	f815 0b01 	ldrb.w	r0, [r5], #1
 80022dc:	f7ff ff79 	bl	80021d2 <__io_putchar>
 80022e0:	3e01      	subs	r6, #1
 80022e2:	d1f9      	bne.n	80022d8 <_write+0x12>
 80022e4:	4620      	mov	r0, r4
 80022e6:	f85d bb04 	ldr.w	fp, [sp], #4
 80022ea:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022ec <_sbrk>:
 80022ec:	f640 4204 	movw	r2, #3076	; 0xc04
 80022f0:	4601      	mov	r1, r0
 80022f2:	466b      	mov	r3, sp
 80022f4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80022f8:	6810      	ldr	r0, [r2, #0]
 80022fa:	2800      	cmp	r0, #0
 80022fc:	bf02      	ittt	eq
 80022fe:	f640 60a8 	movweq	r0, #3752	; 0xea8
 8002302:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002306:	6010      	streq	r0, [r2, #0]
 8002308:	4401      	add	r1, r0
 800230a:	4299      	cmp	r1, r3
 800230c:	bf9c      	itt	ls
 800230e:	6011      	strls	r1, [r2, #0]
 8002310:	4770      	bxls	lr
 8002312:	b580      	push	{r7, lr}
 8002314:	466f      	mov	r7, sp
 8002316:	f000 f865 	bl	80023e4 <__errno>
 800231a:	210c      	movs	r1, #12
 800231c:	6001      	str	r1, [r0, #0]
 800231e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002322:	bd80      	pop	{r7, pc}

08002324 <_close>:
 8002324:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002328:	4770      	bx	lr

0800232a <_fstat>:
 800232a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800232e:	6048      	str	r0, [r1, #4]
 8002330:	2000      	movs	r0, #0
 8002332:	4770      	bx	lr

08002334 <_isatty>:
 8002334:	2001      	movs	r0, #1
 8002336:	4770      	bx	lr

08002338 <_lseek>:
 8002338:	2000      	movs	r0, #0
 800233a:	4770      	bx	lr

0800233c <SystemInit>:
 800233c:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002340:	f04f 0c00 	mov.w	ip, #0
 8002344:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002348:	6801      	ldr	r1, [r0, #0]
 800234a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800234e:	6001      	str	r1, [r0, #0]
 8002350:	f241 0100 	movw	r1, #4096	; 0x1000
 8002354:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002358:	680a      	ldr	r2, [r1, #0]
 800235a:	f042 0201 	orr.w	r2, r2, #1
 800235e:	600a      	str	r2, [r1, #0]
 8002360:	f8c1 c008 	str.w	ip, [r1, #8]
 8002364:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002368:	680b      	ldr	r3, [r1, #0]
 800236a:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800236e:	401a      	ands	r2, r3
 8002370:	600a      	str	r2, [r1, #0]
 8002372:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002376:	60ca      	str	r2, [r1, #12]
 8002378:	680a      	ldr	r2, [r1, #0]
 800237a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800237e:	600a      	str	r2, [r1, #0]
 8002380:	f8c1 c018 	str.w	ip, [r1, #24]
 8002384:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002388:	f840 1c80 	str.w	r1, [r0, #-128]
 800238c:	4770      	bx	lr
	...

08002390 <Reset_Handler>:
 8002390:	f8df d034 	ldr.w	sp, [pc, #52]	; 80023c8 <LoopForever+0x2>
 8002394:	2100      	movs	r1, #0
 8002396:	e003      	b.n	80023a0 <LoopCopyDataInit>

08002398 <CopyDataInit>:
 8002398:	4b0c      	ldr	r3, [pc, #48]	; (80023cc <LoopForever+0x6>)
 800239a:	585b      	ldr	r3, [r3, r1]
 800239c:	5043      	str	r3, [r0, r1]
 800239e:	3104      	adds	r1, #4

080023a0 <LoopCopyDataInit>:
 80023a0:	480b      	ldr	r0, [pc, #44]	; (80023d0 <LoopForever+0xa>)
 80023a2:	4b0c      	ldr	r3, [pc, #48]	; (80023d4 <LoopForever+0xe>)
 80023a4:	1842      	adds	r2, r0, r1
 80023a6:	429a      	cmp	r2, r3
 80023a8:	d3f6      	bcc.n	8002398 <CopyDataInit>
 80023aa:	4a0b      	ldr	r2, [pc, #44]	; (80023d8 <LoopForever+0x12>)
 80023ac:	e002      	b.n	80023b4 <LoopFillZerobss>

080023ae <FillZerobss>:
 80023ae:	2300      	movs	r3, #0
 80023b0:	f842 3b04 	str.w	r3, [r2], #4

080023b4 <LoopFillZerobss>:
 80023b4:	4b09      	ldr	r3, [pc, #36]	; (80023dc <LoopForever+0x16>)
 80023b6:	429a      	cmp	r2, r3
 80023b8:	d3f9      	bcc.n	80023ae <FillZerobss>
 80023ba:	f7ff ffbf 	bl	800233c <SystemInit>
 80023be:	f000 f817 	bl	80023f0 <__libc_init_array>
 80023c2:	f7ff ff17 	bl	80021f4 <main>

080023c6 <LoopForever>:
 80023c6:	e7fe      	b.n	80023c6 <LoopForever>
 80023c8:	20018000 	.word	0x20018000
 80023cc:	080076f0 	.word	0x080076f0
 80023d0:	20000000 	.word	0x20000000
 80023d4:	20000b58 	.word	0x20000b58
 80023d8:	20000b58 	.word	0x20000b58
 80023dc:	20000ea4 	.word	0x20000ea4

080023e0 <ADC1_2_IRQHandler>:
 80023e0:	e7fe      	b.n	80023e0 <ADC1_2_IRQHandler>
	...

080023e4 <__errno>:
 80023e4:	4b01      	ldr	r3, [pc, #4]	; (80023ec <__errno+0x8>)
 80023e6:	6818      	ldr	r0, [r3, #0]
 80023e8:	4770      	bx	lr
 80023ea:	bf00      	nop
 80023ec:	200001a8 	.word	0x200001a8

080023f0 <__libc_init_array>:
 80023f0:	b570      	push	{r4, r5, r6, lr}
 80023f2:	4e0d      	ldr	r6, [pc, #52]	; (8002428 <__libc_init_array+0x38>)
 80023f4:	4d0d      	ldr	r5, [pc, #52]	; (800242c <__libc_init_array+0x3c>)
 80023f6:	1b76      	subs	r6, r6, r5
 80023f8:	10b6      	asrs	r6, r6, #2
 80023fa:	d006      	beq.n	800240a <__libc_init_array+0x1a>
 80023fc:	2400      	movs	r4, #0
 80023fe:	3401      	adds	r4, #1
 8002400:	f855 3b04 	ldr.w	r3, [r5], #4
 8002404:	4798      	blx	r3
 8002406:	42a6      	cmp	r6, r4
 8002408:	d1f9      	bne.n	80023fe <__libc_init_array+0xe>
 800240a:	4e09      	ldr	r6, [pc, #36]	; (8002430 <__libc_init_array+0x40>)
 800240c:	4d09      	ldr	r5, [pc, #36]	; (8002434 <__libc_init_array+0x44>)
 800240e:	1b76      	subs	r6, r6, r5
 8002410:	f004 feba 	bl	8007188 <_init>
 8002414:	10b6      	asrs	r6, r6, #2
 8002416:	d006      	beq.n	8002426 <__libc_init_array+0x36>
 8002418:	2400      	movs	r4, #0
 800241a:	3401      	adds	r4, #1
 800241c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002420:	4798      	blx	r3
 8002422:	42a6      	cmp	r6, r4
 8002424:	d1f9      	bne.n	800241a <__libc_init_array+0x2a>
 8002426:	bd70      	pop	{r4, r5, r6, pc}
 8002428:	080076e0 	.word	0x080076e0
 800242c:	080076e0 	.word	0x080076e0
 8002430:	080076e8 	.word	0x080076e8
 8002434:	080076e0 	.word	0x080076e0

08002438 <malloc>:
 8002438:	4b02      	ldr	r3, [pc, #8]	; (8002444 <malloc+0xc>)
 800243a:	4601      	mov	r1, r0
 800243c:	6818      	ldr	r0, [r3, #0]
 800243e:	f000 b80b 	b.w	8002458 <_malloc_r>
 8002442:	bf00      	nop
 8002444:	200001a8 	.word	0x200001a8

08002448 <free>:
 8002448:	4b02      	ldr	r3, [pc, #8]	; (8002454 <free+0xc>)
 800244a:	4601      	mov	r1, r0
 800244c:	6818      	ldr	r0, [r3, #0]
 800244e:	f003 babb 	b.w	80059c8 <_free_r>
 8002452:	bf00      	nop
 8002454:	200001a8 	.word	0x200001a8

08002458 <_malloc_r>:
 8002458:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800245c:	f101 050b 	add.w	r5, r1, #11
 8002460:	2d16      	cmp	r5, #22
 8002462:	b083      	sub	sp, #12
 8002464:	4606      	mov	r6, r0
 8002466:	d823      	bhi.n	80024b0 <_malloc_r+0x58>
 8002468:	2910      	cmp	r1, #16
 800246a:	f200 80b9 	bhi.w	80025e0 <_malloc_r+0x188>
 800246e:	f000 fae1 	bl	8002a34 <__malloc_lock>
 8002472:	2510      	movs	r5, #16
 8002474:	2318      	movs	r3, #24
 8002476:	2002      	movs	r0, #2
 8002478:	4fc5      	ldr	r7, [pc, #788]	; (8002790 <_malloc_r+0x338>)
 800247a:	443b      	add	r3, r7
 800247c:	f1a3 0208 	sub.w	r2, r3, #8
 8002480:	685c      	ldr	r4, [r3, #4]
 8002482:	4294      	cmp	r4, r2
 8002484:	f000 8166 	beq.w	8002754 <_malloc_r+0x2fc>
 8002488:	6863      	ldr	r3, [r4, #4]
 800248a:	f023 0303 	bic.w	r3, r3, #3
 800248e:	4423      	add	r3, r4
 8002490:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8002494:	685a      	ldr	r2, [r3, #4]
 8002496:	60e9      	str	r1, [r5, #12]
 8002498:	f042 0201 	orr.w	r2, r2, #1
 800249c:	608d      	str	r5, [r1, #8]
 800249e:	4630      	mov	r0, r6
 80024a0:	605a      	str	r2, [r3, #4]
 80024a2:	f000 facd 	bl	8002a40 <__malloc_unlock>
 80024a6:	3408      	adds	r4, #8
 80024a8:	4620      	mov	r0, r4
 80024aa:	b003      	add	sp, #12
 80024ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024b0:	f035 0507 	bics.w	r5, r5, #7
 80024b4:	f100 8094 	bmi.w	80025e0 <_malloc_r+0x188>
 80024b8:	42a9      	cmp	r1, r5
 80024ba:	f200 8091 	bhi.w	80025e0 <_malloc_r+0x188>
 80024be:	f000 fab9 	bl	8002a34 <__malloc_lock>
 80024c2:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80024c6:	f0c0 8183 	bcc.w	80027d0 <_malloc_r+0x378>
 80024ca:	0a6b      	lsrs	r3, r5, #9
 80024cc:	f000 808f 	beq.w	80025ee <_malloc_r+0x196>
 80024d0:	2b04      	cmp	r3, #4
 80024d2:	f200 8146 	bhi.w	8002762 <_malloc_r+0x30a>
 80024d6:	09ab      	lsrs	r3, r5, #6
 80024d8:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80024dc:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80024e0:	00c3      	lsls	r3, r0, #3
 80024e2:	4fab      	ldr	r7, [pc, #684]	; (8002790 <_malloc_r+0x338>)
 80024e4:	443b      	add	r3, r7
 80024e6:	f1a3 0108 	sub.w	r1, r3, #8
 80024ea:	685c      	ldr	r4, [r3, #4]
 80024ec:	42a1      	cmp	r1, r4
 80024ee:	d106      	bne.n	80024fe <_malloc_r+0xa6>
 80024f0:	e00c      	b.n	800250c <_malloc_r+0xb4>
 80024f2:	2a00      	cmp	r2, #0
 80024f4:	f280 811d 	bge.w	8002732 <_malloc_r+0x2da>
 80024f8:	68e4      	ldr	r4, [r4, #12]
 80024fa:	42a1      	cmp	r1, r4
 80024fc:	d006      	beq.n	800250c <_malloc_r+0xb4>
 80024fe:	6863      	ldr	r3, [r4, #4]
 8002500:	f023 0303 	bic.w	r3, r3, #3
 8002504:	1b5a      	subs	r2, r3, r5
 8002506:	2a0f      	cmp	r2, #15
 8002508:	ddf3      	ble.n	80024f2 <_malloc_r+0x9a>
 800250a:	4660      	mov	r0, ip
 800250c:	693c      	ldr	r4, [r7, #16]
 800250e:	f8df c294 	ldr.w	ip, [pc, #660]	; 80027a4 <_malloc_r+0x34c>
 8002512:	4564      	cmp	r4, ip
 8002514:	d071      	beq.n	80025fa <_malloc_r+0x1a2>
 8002516:	6863      	ldr	r3, [r4, #4]
 8002518:	f023 0303 	bic.w	r3, r3, #3
 800251c:	1b5a      	subs	r2, r3, r5
 800251e:	2a0f      	cmp	r2, #15
 8002520:	f300 8144 	bgt.w	80027ac <_malloc_r+0x354>
 8002524:	2a00      	cmp	r2, #0
 8002526:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800252a:	f280 8126 	bge.w	800277a <_malloc_r+0x322>
 800252e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002532:	f080 8169 	bcs.w	8002808 <_malloc_r+0x3b0>
 8002536:	08db      	lsrs	r3, r3, #3
 8002538:	1c59      	adds	r1, r3, #1
 800253a:	687a      	ldr	r2, [r7, #4]
 800253c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002540:	f8c4 8008 	str.w	r8, [r4, #8]
 8002544:	f04f 0e01 	mov.w	lr, #1
 8002548:	109b      	asrs	r3, r3, #2
 800254a:	fa0e f303 	lsl.w	r3, lr, r3
 800254e:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8002552:	4313      	orrs	r3, r2
 8002554:	f1ae 0208 	sub.w	r2, lr, #8
 8002558:	60e2      	str	r2, [r4, #12]
 800255a:	607b      	str	r3, [r7, #4]
 800255c:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002560:	f8c8 400c 	str.w	r4, [r8, #12]
 8002564:	1082      	asrs	r2, r0, #2
 8002566:	2401      	movs	r4, #1
 8002568:	4094      	lsls	r4, r2
 800256a:	429c      	cmp	r4, r3
 800256c:	d84b      	bhi.n	8002606 <_malloc_r+0x1ae>
 800256e:	421c      	tst	r4, r3
 8002570:	d106      	bne.n	8002580 <_malloc_r+0x128>
 8002572:	f020 0003 	bic.w	r0, r0, #3
 8002576:	0064      	lsls	r4, r4, #1
 8002578:	421c      	tst	r4, r3
 800257a:	f100 0004 	add.w	r0, r0, #4
 800257e:	d0fa      	beq.n	8002576 <_malloc_r+0x11e>
 8002580:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8002584:	46ce      	mov	lr, r9
 8002586:	4680      	mov	r8, r0
 8002588:	f8de 300c 	ldr.w	r3, [lr, #12]
 800258c:	459e      	cmp	lr, r3
 800258e:	d107      	bne.n	80025a0 <_malloc_r+0x148>
 8002590:	e122      	b.n	80027d8 <_malloc_r+0x380>
 8002592:	2a00      	cmp	r2, #0
 8002594:	f280 8129 	bge.w	80027ea <_malloc_r+0x392>
 8002598:	68db      	ldr	r3, [r3, #12]
 800259a:	459e      	cmp	lr, r3
 800259c:	f000 811c 	beq.w	80027d8 <_malloc_r+0x380>
 80025a0:	6859      	ldr	r1, [r3, #4]
 80025a2:	f021 0103 	bic.w	r1, r1, #3
 80025a6:	1b4a      	subs	r2, r1, r5
 80025a8:	2a0f      	cmp	r2, #15
 80025aa:	ddf2      	ble.n	8002592 <_malloc_r+0x13a>
 80025ac:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80025b0:	195c      	adds	r4, r3, r5
 80025b2:	f045 0501 	orr.w	r5, r5, #1
 80025b6:	605d      	str	r5, [r3, #4]
 80025b8:	f042 0501 	orr.w	r5, r2, #1
 80025bc:	f8c8 e00c 	str.w	lr, [r8, #12]
 80025c0:	4630      	mov	r0, r6
 80025c2:	f8ce 8008 	str.w	r8, [lr, #8]
 80025c6:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80025ca:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80025ce:	6065      	str	r5, [r4, #4]
 80025d0:	505a      	str	r2, [r3, r1]
 80025d2:	9301      	str	r3, [sp, #4]
 80025d4:	f000 fa34 	bl	8002a40 <__malloc_unlock>
 80025d8:	9b01      	ldr	r3, [sp, #4]
 80025da:	f103 0408 	add.w	r4, r3, #8
 80025de:	e763      	b.n	80024a8 <_malloc_r+0x50>
 80025e0:	2400      	movs	r4, #0
 80025e2:	230c      	movs	r3, #12
 80025e4:	4620      	mov	r0, r4
 80025e6:	6033      	str	r3, [r6, #0]
 80025e8:	b003      	add	sp, #12
 80025ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025ee:	f44f 7300 	mov.w	r3, #512	; 0x200
 80025f2:	2040      	movs	r0, #64	; 0x40
 80025f4:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80025f8:	e773      	b.n	80024e2 <_malloc_r+0x8a>
 80025fa:	687b      	ldr	r3, [r7, #4]
 80025fc:	1082      	asrs	r2, r0, #2
 80025fe:	2401      	movs	r4, #1
 8002600:	4094      	lsls	r4, r2
 8002602:	429c      	cmp	r4, r3
 8002604:	d9b3      	bls.n	800256e <_malloc_r+0x116>
 8002606:	68bc      	ldr	r4, [r7, #8]
 8002608:	6863      	ldr	r3, [r4, #4]
 800260a:	f023 0903 	bic.w	r9, r3, #3
 800260e:	45a9      	cmp	r9, r5
 8002610:	d303      	bcc.n	800261a <_malloc_r+0x1c2>
 8002612:	eba9 0305 	sub.w	r3, r9, r5
 8002616:	2b0f      	cmp	r3, #15
 8002618:	dc7b      	bgt.n	8002712 <_malloc_r+0x2ba>
 800261a:	4b5e      	ldr	r3, [pc, #376]	; (8002794 <_malloc_r+0x33c>)
 800261c:	f8df a188 	ldr.w	sl, [pc, #392]	; 80027a8 <_malloc_r+0x350>
 8002620:	681a      	ldr	r2, [r3, #0]
 8002622:	f8da 3000 	ldr.w	r3, [sl]
 8002626:	3301      	adds	r3, #1
 8002628:	eb05 0802 	add.w	r8, r5, r2
 800262c:	f000 8148 	beq.w	80028c0 <_malloc_r+0x468>
 8002630:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002634:	f108 080f 	add.w	r8, r8, #15
 8002638:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800263c:	f028 080f 	bic.w	r8, r8, #15
 8002640:	4641      	mov	r1, r8
 8002642:	4630      	mov	r0, r6
 8002644:	f000 fa6c 	bl	8002b20 <_sbrk_r>
 8002648:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800264c:	4683      	mov	fp, r0
 800264e:	f000 8104 	beq.w	800285a <_malloc_r+0x402>
 8002652:	eb04 0009 	add.w	r0, r4, r9
 8002656:	4558      	cmp	r0, fp
 8002658:	f200 80fd 	bhi.w	8002856 <_malloc_r+0x3fe>
 800265c:	4a4e      	ldr	r2, [pc, #312]	; (8002798 <_malloc_r+0x340>)
 800265e:	6813      	ldr	r3, [r2, #0]
 8002660:	4443      	add	r3, r8
 8002662:	6013      	str	r3, [r2, #0]
 8002664:	f000 814d 	beq.w	8002902 <_malloc_r+0x4aa>
 8002668:	f8da 1000 	ldr.w	r1, [sl]
 800266c:	3101      	adds	r1, #1
 800266e:	bf1b      	ittet	ne
 8002670:	ebab 0000 	subne.w	r0, fp, r0
 8002674:	181b      	addne	r3, r3, r0
 8002676:	f8ca b000 	streq.w	fp, [sl]
 800267a:	6013      	strne	r3, [r2, #0]
 800267c:	f01b 0307 	ands.w	r3, fp, #7
 8002680:	f000 8134 	beq.w	80028ec <_malloc_r+0x494>
 8002684:	f1c3 0108 	rsb	r1, r3, #8
 8002688:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 800268c:	448b      	add	fp, r1
 800268e:	3308      	adds	r3, #8
 8002690:	44d8      	add	r8, fp
 8002692:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8002696:	eba3 0808 	sub.w	r8, r3, r8
 800269a:	4641      	mov	r1, r8
 800269c:	4630      	mov	r0, r6
 800269e:	9201      	str	r2, [sp, #4]
 80026a0:	f000 fa3e 	bl	8002b20 <_sbrk_r>
 80026a4:	1c43      	adds	r3, r0, #1
 80026a6:	9a01      	ldr	r2, [sp, #4]
 80026a8:	f000 8146 	beq.w	8002938 <_malloc_r+0x4e0>
 80026ac:	eba0 010b 	sub.w	r1, r0, fp
 80026b0:	4441      	add	r1, r8
 80026b2:	f041 0101 	orr.w	r1, r1, #1
 80026b6:	6813      	ldr	r3, [r2, #0]
 80026b8:	f8c7 b008 	str.w	fp, [r7, #8]
 80026bc:	4443      	add	r3, r8
 80026be:	42bc      	cmp	r4, r7
 80026c0:	f8cb 1004 	str.w	r1, [fp, #4]
 80026c4:	6013      	str	r3, [r2, #0]
 80026c6:	d015      	beq.n	80026f4 <_malloc_r+0x29c>
 80026c8:	f1b9 0f0f 	cmp.w	r9, #15
 80026cc:	f240 8130 	bls.w	8002930 <_malloc_r+0x4d8>
 80026d0:	6860      	ldr	r0, [r4, #4]
 80026d2:	f1a9 010c 	sub.w	r1, r9, #12
 80026d6:	f021 0107 	bic.w	r1, r1, #7
 80026da:	f000 0001 	and.w	r0, r0, #1
 80026de:	eb04 0c01 	add.w	ip, r4, r1
 80026e2:	4308      	orrs	r0, r1
 80026e4:	f04f 0e05 	mov.w	lr, #5
 80026e8:	290f      	cmp	r1, #15
 80026ea:	6060      	str	r0, [r4, #4]
 80026ec:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80026f0:	f200 813a 	bhi.w	8002968 <_malloc_r+0x510>
 80026f4:	4a29      	ldr	r2, [pc, #164]	; (800279c <_malloc_r+0x344>)
 80026f6:	482a      	ldr	r0, [pc, #168]	; (80027a0 <_malloc_r+0x348>)
 80026f8:	6811      	ldr	r1, [r2, #0]
 80026fa:	68bc      	ldr	r4, [r7, #8]
 80026fc:	428b      	cmp	r3, r1
 80026fe:	6801      	ldr	r1, [r0, #0]
 8002700:	bf88      	it	hi
 8002702:	6013      	strhi	r3, [r2, #0]
 8002704:	6862      	ldr	r2, [r4, #4]
 8002706:	428b      	cmp	r3, r1
 8002708:	f022 0203 	bic.w	r2, r2, #3
 800270c:	bf88      	it	hi
 800270e:	6003      	strhi	r3, [r0, #0]
 8002710:	e0a7      	b.n	8002862 <_malloc_r+0x40a>
 8002712:	1962      	adds	r2, r4, r5
 8002714:	f043 0301 	orr.w	r3, r3, #1
 8002718:	f045 0501 	orr.w	r5, r5, #1
 800271c:	6065      	str	r5, [r4, #4]
 800271e:	4630      	mov	r0, r6
 8002720:	60ba      	str	r2, [r7, #8]
 8002722:	6053      	str	r3, [r2, #4]
 8002724:	f000 f98c 	bl	8002a40 <__malloc_unlock>
 8002728:	3408      	adds	r4, #8
 800272a:	4620      	mov	r0, r4
 800272c:	b003      	add	sp, #12
 800272e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002732:	4423      	add	r3, r4
 8002734:	68e1      	ldr	r1, [r4, #12]
 8002736:	685a      	ldr	r2, [r3, #4]
 8002738:	68a5      	ldr	r5, [r4, #8]
 800273a:	f042 0201 	orr.w	r2, r2, #1
 800273e:	60e9      	str	r1, [r5, #12]
 8002740:	4630      	mov	r0, r6
 8002742:	608d      	str	r5, [r1, #8]
 8002744:	605a      	str	r2, [r3, #4]
 8002746:	f000 f97b 	bl	8002a40 <__malloc_unlock>
 800274a:	3408      	adds	r4, #8
 800274c:	4620      	mov	r0, r4
 800274e:	b003      	add	sp, #12
 8002750:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002754:	68dc      	ldr	r4, [r3, #12]
 8002756:	42a3      	cmp	r3, r4
 8002758:	bf08      	it	eq
 800275a:	3002      	addeq	r0, #2
 800275c:	f43f aed6 	beq.w	800250c <_malloc_r+0xb4>
 8002760:	e692      	b.n	8002488 <_malloc_r+0x30>
 8002762:	2b14      	cmp	r3, #20
 8002764:	d971      	bls.n	800284a <_malloc_r+0x3f2>
 8002766:	2b54      	cmp	r3, #84	; 0x54
 8002768:	f200 80ad 	bhi.w	80028c6 <_malloc_r+0x46e>
 800276c:	0b2b      	lsrs	r3, r5, #12
 800276e:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8002772:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8002776:	00c3      	lsls	r3, r0, #3
 8002778:	e6b3      	b.n	80024e2 <_malloc_r+0x8a>
 800277a:	4423      	add	r3, r4
 800277c:	4630      	mov	r0, r6
 800277e:	685a      	ldr	r2, [r3, #4]
 8002780:	f042 0201 	orr.w	r2, r2, #1
 8002784:	605a      	str	r2, [r3, #4]
 8002786:	3408      	adds	r4, #8
 8002788:	f000 f95a 	bl	8002a40 <__malloc_unlock>
 800278c:	e68c      	b.n	80024a8 <_malloc_r+0x50>
 800278e:	bf00      	nop
 8002790:	200005d8 	.word	0x200005d8
 8002794:	20000c38 	.word	0x20000c38
 8002798:	20000c08 	.word	0x20000c08
 800279c:	20000c30 	.word	0x20000c30
 80027a0:	20000c34 	.word	0x20000c34
 80027a4:	200005e0 	.word	0x200005e0
 80027a8:	200009e0 	.word	0x200009e0
 80027ac:	1961      	adds	r1, r4, r5
 80027ae:	f045 0e01 	orr.w	lr, r5, #1
 80027b2:	f042 0501 	orr.w	r5, r2, #1
 80027b6:	f8c4 e004 	str.w	lr, [r4, #4]
 80027ba:	4630      	mov	r0, r6
 80027bc:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80027c0:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80027c4:	604d      	str	r5, [r1, #4]
 80027c6:	50e2      	str	r2, [r4, r3]
 80027c8:	f000 f93a 	bl	8002a40 <__malloc_unlock>
 80027cc:	3408      	adds	r4, #8
 80027ce:	e66b      	b.n	80024a8 <_malloc_r+0x50>
 80027d0:	08e8      	lsrs	r0, r5, #3
 80027d2:	f105 0308 	add.w	r3, r5, #8
 80027d6:	e64f      	b.n	8002478 <_malloc_r+0x20>
 80027d8:	f108 0801 	add.w	r8, r8, #1
 80027dc:	f018 0f03 	tst.w	r8, #3
 80027e0:	f10e 0e08 	add.w	lr, lr, #8
 80027e4:	f47f aed0 	bne.w	8002588 <_malloc_r+0x130>
 80027e8:	e052      	b.n	8002890 <_malloc_r+0x438>
 80027ea:	4419      	add	r1, r3
 80027ec:	461c      	mov	r4, r3
 80027ee:	684a      	ldr	r2, [r1, #4]
 80027f0:	68db      	ldr	r3, [r3, #12]
 80027f2:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80027f6:	f042 0201 	orr.w	r2, r2, #1
 80027fa:	604a      	str	r2, [r1, #4]
 80027fc:	4630      	mov	r0, r6
 80027fe:	60eb      	str	r3, [r5, #12]
 8002800:	609d      	str	r5, [r3, #8]
 8002802:	f000 f91d 	bl	8002a40 <__malloc_unlock>
 8002806:	e64f      	b.n	80024a8 <_malloc_r+0x50>
 8002808:	0a5a      	lsrs	r2, r3, #9
 800280a:	2a04      	cmp	r2, #4
 800280c:	d935      	bls.n	800287a <_malloc_r+0x422>
 800280e:	2a14      	cmp	r2, #20
 8002810:	d86f      	bhi.n	80028f2 <_malloc_r+0x49a>
 8002812:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002816:	00c9      	lsls	r1, r1, #3
 8002818:	325b      	adds	r2, #91	; 0x5b
 800281a:	eb07 0e01 	add.w	lr, r7, r1
 800281e:	5879      	ldr	r1, [r7, r1]
 8002820:	f1ae 0e08 	sub.w	lr, lr, #8
 8002824:	458e      	cmp	lr, r1
 8002826:	d058      	beq.n	80028da <_malloc_r+0x482>
 8002828:	684a      	ldr	r2, [r1, #4]
 800282a:	f022 0203 	bic.w	r2, r2, #3
 800282e:	429a      	cmp	r2, r3
 8002830:	d902      	bls.n	8002838 <_malloc_r+0x3e0>
 8002832:	6889      	ldr	r1, [r1, #8]
 8002834:	458e      	cmp	lr, r1
 8002836:	d1f7      	bne.n	8002828 <_malloc_r+0x3d0>
 8002838:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 800283c:	687b      	ldr	r3, [r7, #4]
 800283e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002842:	f8ce 4008 	str.w	r4, [lr, #8]
 8002846:	60cc      	str	r4, [r1, #12]
 8002848:	e68c      	b.n	8002564 <_malloc_r+0x10c>
 800284a:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800284e:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002852:	00c3      	lsls	r3, r0, #3
 8002854:	e645      	b.n	80024e2 <_malloc_r+0x8a>
 8002856:	42bc      	cmp	r4, r7
 8002858:	d072      	beq.n	8002940 <_malloc_r+0x4e8>
 800285a:	68bc      	ldr	r4, [r7, #8]
 800285c:	6862      	ldr	r2, [r4, #4]
 800285e:	f022 0203 	bic.w	r2, r2, #3
 8002862:	4295      	cmp	r5, r2
 8002864:	eba2 0305 	sub.w	r3, r2, r5
 8002868:	d802      	bhi.n	8002870 <_malloc_r+0x418>
 800286a:	2b0f      	cmp	r3, #15
 800286c:	f73f af51 	bgt.w	8002712 <_malloc_r+0x2ba>
 8002870:	4630      	mov	r0, r6
 8002872:	f000 f8e5 	bl	8002a40 <__malloc_unlock>
 8002876:	2400      	movs	r4, #0
 8002878:	e616      	b.n	80024a8 <_malloc_r+0x50>
 800287a:	099a      	lsrs	r2, r3, #6
 800287c:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002880:	00c9      	lsls	r1, r1, #3
 8002882:	3238      	adds	r2, #56	; 0x38
 8002884:	e7c9      	b.n	800281a <_malloc_r+0x3c2>
 8002886:	f8d9 9000 	ldr.w	r9, [r9]
 800288a:	4599      	cmp	r9, r3
 800288c:	f040 8083 	bne.w	8002996 <_malloc_r+0x53e>
 8002890:	f010 0f03 	tst.w	r0, #3
 8002894:	f1a9 0308 	sub.w	r3, r9, #8
 8002898:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 800289c:	d1f3      	bne.n	8002886 <_malloc_r+0x42e>
 800289e:	687b      	ldr	r3, [r7, #4]
 80028a0:	ea23 0304 	bic.w	r3, r3, r4
 80028a4:	607b      	str	r3, [r7, #4]
 80028a6:	0064      	lsls	r4, r4, #1
 80028a8:	429c      	cmp	r4, r3
 80028aa:	f63f aeac 	bhi.w	8002606 <_malloc_r+0x1ae>
 80028ae:	b91c      	cbnz	r4, 80028b8 <_malloc_r+0x460>
 80028b0:	e6a9      	b.n	8002606 <_malloc_r+0x1ae>
 80028b2:	0064      	lsls	r4, r4, #1
 80028b4:	f108 0804 	add.w	r8, r8, #4
 80028b8:	421c      	tst	r4, r3
 80028ba:	d0fa      	beq.n	80028b2 <_malloc_r+0x45a>
 80028bc:	4640      	mov	r0, r8
 80028be:	e65f      	b.n	8002580 <_malloc_r+0x128>
 80028c0:	f108 0810 	add.w	r8, r8, #16
 80028c4:	e6bc      	b.n	8002640 <_malloc_r+0x1e8>
 80028c6:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80028ca:	d826      	bhi.n	800291a <_malloc_r+0x4c2>
 80028cc:	0beb      	lsrs	r3, r5, #15
 80028ce:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80028d2:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80028d6:	00c3      	lsls	r3, r0, #3
 80028d8:	e603      	b.n	80024e2 <_malloc_r+0x8a>
 80028da:	687b      	ldr	r3, [r7, #4]
 80028dc:	1092      	asrs	r2, r2, #2
 80028de:	f04f 0801 	mov.w	r8, #1
 80028e2:	fa08 f202 	lsl.w	r2, r8, r2
 80028e6:	4313      	orrs	r3, r2
 80028e8:	607b      	str	r3, [r7, #4]
 80028ea:	e7a8      	b.n	800283e <_malloc_r+0x3e6>
 80028ec:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80028f0:	e6ce      	b.n	8002690 <_malloc_r+0x238>
 80028f2:	2a54      	cmp	r2, #84	; 0x54
 80028f4:	d829      	bhi.n	800294a <_malloc_r+0x4f2>
 80028f6:	0b1a      	lsrs	r2, r3, #12
 80028f8:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80028fc:	00c9      	lsls	r1, r1, #3
 80028fe:	326e      	adds	r2, #110	; 0x6e
 8002900:	e78b      	b.n	800281a <_malloc_r+0x3c2>
 8002902:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002906:	2900      	cmp	r1, #0
 8002908:	f47f aeae 	bne.w	8002668 <_malloc_r+0x210>
 800290c:	eb09 0208 	add.w	r2, r9, r8
 8002910:	68b9      	ldr	r1, [r7, #8]
 8002912:	f042 0201 	orr.w	r2, r2, #1
 8002916:	604a      	str	r2, [r1, #4]
 8002918:	e6ec      	b.n	80026f4 <_malloc_r+0x29c>
 800291a:	f240 5254 	movw	r2, #1364	; 0x554
 800291e:	4293      	cmp	r3, r2
 8002920:	d81c      	bhi.n	800295c <_malloc_r+0x504>
 8002922:	0cab      	lsrs	r3, r5, #18
 8002924:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002928:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 800292c:	00c3      	lsls	r3, r0, #3
 800292e:	e5d8      	b.n	80024e2 <_malloc_r+0x8a>
 8002930:	2301      	movs	r3, #1
 8002932:	f8cb 3004 	str.w	r3, [fp, #4]
 8002936:	e79b      	b.n	8002870 <_malloc_r+0x418>
 8002938:	2101      	movs	r1, #1
 800293a:	f04f 0800 	mov.w	r8, #0
 800293e:	e6ba      	b.n	80026b6 <_malloc_r+0x25e>
 8002940:	4a16      	ldr	r2, [pc, #88]	; (800299c <_malloc_r+0x544>)
 8002942:	6813      	ldr	r3, [r2, #0]
 8002944:	4443      	add	r3, r8
 8002946:	6013      	str	r3, [r2, #0]
 8002948:	e68e      	b.n	8002668 <_malloc_r+0x210>
 800294a:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800294e:	d814      	bhi.n	800297a <_malloc_r+0x522>
 8002950:	0bda      	lsrs	r2, r3, #15
 8002952:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002956:	00c9      	lsls	r1, r1, #3
 8002958:	3277      	adds	r2, #119	; 0x77
 800295a:	e75e      	b.n	800281a <_malloc_r+0x3c2>
 800295c:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002960:	207f      	movs	r0, #127	; 0x7f
 8002962:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002966:	e5bc      	b.n	80024e2 <_malloc_r+0x8a>
 8002968:	f104 0108 	add.w	r1, r4, #8
 800296c:	4630      	mov	r0, r6
 800296e:	9201      	str	r2, [sp, #4]
 8002970:	f003 f82a 	bl	80059c8 <_free_r>
 8002974:	9a01      	ldr	r2, [sp, #4]
 8002976:	6813      	ldr	r3, [r2, #0]
 8002978:	e6bc      	b.n	80026f4 <_malloc_r+0x29c>
 800297a:	f240 5154 	movw	r1, #1364	; 0x554
 800297e:	428a      	cmp	r2, r1
 8002980:	d805      	bhi.n	800298e <_malloc_r+0x536>
 8002982:	0c9a      	lsrs	r2, r3, #18
 8002984:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002988:	00c9      	lsls	r1, r1, #3
 800298a:	327c      	adds	r2, #124	; 0x7c
 800298c:	e745      	b.n	800281a <_malloc_r+0x3c2>
 800298e:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002992:	227e      	movs	r2, #126	; 0x7e
 8002994:	e741      	b.n	800281a <_malloc_r+0x3c2>
 8002996:	687b      	ldr	r3, [r7, #4]
 8002998:	e785      	b.n	80028a6 <_malloc_r+0x44e>
 800299a:	bf00      	nop
 800299c:	20000c08 	.word	0x20000c08

080029a0 <memset>:
 80029a0:	b4f0      	push	{r4, r5, r6, r7}
 80029a2:	0786      	lsls	r6, r0, #30
 80029a4:	d043      	beq.n	8002a2e <memset+0x8e>
 80029a6:	1e54      	subs	r4, r2, #1
 80029a8:	2a00      	cmp	r2, #0
 80029aa:	d03e      	beq.n	8002a2a <memset+0x8a>
 80029ac:	b2ca      	uxtb	r2, r1
 80029ae:	4603      	mov	r3, r0
 80029b0:	e002      	b.n	80029b8 <memset+0x18>
 80029b2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80029b6:	d338      	bcc.n	8002a2a <memset+0x8a>
 80029b8:	f803 2b01 	strb.w	r2, [r3], #1
 80029bc:	079d      	lsls	r5, r3, #30
 80029be:	d1f8      	bne.n	80029b2 <memset+0x12>
 80029c0:	2c03      	cmp	r4, #3
 80029c2:	d92b      	bls.n	8002a1c <memset+0x7c>
 80029c4:	b2cd      	uxtb	r5, r1
 80029c6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80029ca:	2c0f      	cmp	r4, #15
 80029cc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80029d0:	d916      	bls.n	8002a00 <memset+0x60>
 80029d2:	f1a4 0710 	sub.w	r7, r4, #16
 80029d6:	093f      	lsrs	r7, r7, #4
 80029d8:	f103 0620 	add.w	r6, r3, #32
 80029dc:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80029e0:	f103 0210 	add.w	r2, r3, #16
 80029e4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80029e8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80029ec:	3210      	adds	r2, #16
 80029ee:	42b2      	cmp	r2, r6
 80029f0:	d1f8      	bne.n	80029e4 <memset+0x44>
 80029f2:	f004 040f 	and.w	r4, r4, #15
 80029f6:	3701      	adds	r7, #1
 80029f8:	2c03      	cmp	r4, #3
 80029fa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80029fe:	d90d      	bls.n	8002a1c <memset+0x7c>
 8002a00:	461e      	mov	r6, r3
 8002a02:	4622      	mov	r2, r4
 8002a04:	3a04      	subs	r2, #4
 8002a06:	2a03      	cmp	r2, #3
 8002a08:	f846 5b04 	str.w	r5, [r6], #4
 8002a0c:	d8fa      	bhi.n	8002a04 <memset+0x64>
 8002a0e:	1f22      	subs	r2, r4, #4
 8002a10:	f022 0203 	bic.w	r2, r2, #3
 8002a14:	3204      	adds	r2, #4
 8002a16:	4413      	add	r3, r2
 8002a18:	f004 0403 	and.w	r4, r4, #3
 8002a1c:	b12c      	cbz	r4, 8002a2a <memset+0x8a>
 8002a1e:	b2c9      	uxtb	r1, r1
 8002a20:	441c      	add	r4, r3
 8002a22:	f803 1b01 	strb.w	r1, [r3], #1
 8002a26:	429c      	cmp	r4, r3
 8002a28:	d1fb      	bne.n	8002a22 <memset+0x82>
 8002a2a:	bcf0      	pop	{r4, r5, r6, r7}
 8002a2c:	4770      	bx	lr
 8002a2e:	4614      	mov	r4, r2
 8002a30:	4603      	mov	r3, r0
 8002a32:	e7c5      	b.n	80029c0 <memset+0x20>

08002a34 <__malloc_lock>:
 8002a34:	4801      	ldr	r0, [pc, #4]	; (8002a3c <__malloc_lock+0x8>)
 8002a36:	f003 ba75 	b.w	8005f24 <__retarget_lock_acquire_recursive>
 8002a3a:	bf00      	nop
 8002a3c:	20000e8c 	.word	0x20000e8c

08002a40 <__malloc_unlock>:
 8002a40:	4801      	ldr	r0, [pc, #4]	; (8002a48 <__malloc_unlock+0x8>)
 8002a42:	f003 ba71 	b.w	8005f28 <__retarget_lock_release_recursive>
 8002a46:	bf00      	nop
 8002a48:	20000e8c 	.word	0x20000e8c

08002a4c <printf>:
 8002a4c:	b40f      	push	{r0, r1, r2, r3}
 8002a4e:	b500      	push	{lr}
 8002a50:	4907      	ldr	r1, [pc, #28]	; (8002a70 <printf+0x24>)
 8002a52:	b083      	sub	sp, #12
 8002a54:	ab04      	add	r3, sp, #16
 8002a56:	6808      	ldr	r0, [r1, #0]
 8002a58:	f853 2b04 	ldr.w	r2, [r3], #4
 8002a5c:	6881      	ldr	r1, [r0, #8]
 8002a5e:	9301      	str	r3, [sp, #4]
 8002a60:	f000 f872 	bl	8002b48 <_vfprintf_r>
 8002a64:	b003      	add	sp, #12
 8002a66:	f85d eb04 	ldr.w	lr, [sp], #4
 8002a6a:	b004      	add	sp, #16
 8002a6c:	4770      	bx	lr
 8002a6e:	bf00      	nop
 8002a70:	200001a8 	.word	0x200001a8

08002a74 <_puts_r>:
 8002a74:	b570      	push	{r4, r5, r6, lr}
 8002a76:	4605      	mov	r5, r0
 8002a78:	b088      	sub	sp, #32
 8002a7a:	4608      	mov	r0, r1
 8002a7c:	460c      	mov	r4, r1
 8002a7e:	f7fd fddf 	bl	8000640 <strlen>
 8002a82:	4a22      	ldr	r2, [pc, #136]	; (8002b0c <_puts_r+0x98>)
 8002a84:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a86:	9404      	str	r4, [sp, #16]
 8002a88:	2601      	movs	r6, #1
 8002a8a:	1c44      	adds	r4, r0, #1
 8002a8c:	a904      	add	r1, sp, #16
 8002a8e:	9206      	str	r2, [sp, #24]
 8002a90:	2202      	movs	r2, #2
 8002a92:	9403      	str	r4, [sp, #12]
 8002a94:	9005      	str	r0, [sp, #20]
 8002a96:	68ac      	ldr	r4, [r5, #8]
 8002a98:	9607      	str	r6, [sp, #28]
 8002a9a:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002a9e:	b31b      	cbz	r3, 8002ae8 <_puts_r+0x74>
 8002aa0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002aa2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002aa6:	07ce      	lsls	r6, r1, #31
 8002aa8:	b29a      	uxth	r2, r3
 8002aaa:	d401      	bmi.n	8002ab0 <_puts_r+0x3c>
 8002aac:	0590      	lsls	r0, r2, #22
 8002aae:	d525      	bpl.n	8002afc <_puts_r+0x88>
 8002ab0:	0491      	lsls	r1, r2, #18
 8002ab2:	d406      	bmi.n	8002ac2 <_puts_r+0x4e>
 8002ab4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002ab6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002aba:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002abe:	81a3      	strh	r3, [r4, #12]
 8002ac0:	6662      	str	r2, [r4, #100]	; 0x64
 8002ac2:	4628      	mov	r0, r5
 8002ac4:	aa01      	add	r2, sp, #4
 8002ac6:	4621      	mov	r1, r4
 8002ac8:	f003 f872 	bl	8005bb0 <__sfvwrite_r>
 8002acc:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002ace:	2800      	cmp	r0, #0
 8002ad0:	bf0c      	ite	eq
 8002ad2:	250a      	moveq	r5, #10
 8002ad4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002ad8:	07da      	lsls	r2, r3, #31
 8002ada:	d402      	bmi.n	8002ae2 <_puts_r+0x6e>
 8002adc:	89a3      	ldrh	r3, [r4, #12]
 8002ade:	059b      	lsls	r3, r3, #22
 8002ae0:	d506      	bpl.n	8002af0 <_puts_r+0x7c>
 8002ae2:	4628      	mov	r0, r5
 8002ae4:	b008      	add	sp, #32
 8002ae6:	bd70      	pop	{r4, r5, r6, pc}
 8002ae8:	4628      	mov	r0, r5
 8002aea:	f002 fecb 	bl	8005884 <__sinit>
 8002aee:	e7d7      	b.n	8002aa0 <_puts_r+0x2c>
 8002af0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002af2:	f003 fa19 	bl	8005f28 <__retarget_lock_release_recursive>
 8002af6:	4628      	mov	r0, r5
 8002af8:	b008      	add	sp, #32
 8002afa:	bd70      	pop	{r4, r5, r6, pc}
 8002afc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002afe:	f003 fa11 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8002b02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002b06:	b29a      	uxth	r2, r3
 8002b08:	e7d2      	b.n	8002ab0 <_puts_r+0x3c>
 8002b0a:	bf00      	nop
 8002b0c:	0800744c 	.word	0x0800744c

08002b10 <puts>:
 8002b10:	4b02      	ldr	r3, [pc, #8]	; (8002b1c <puts+0xc>)
 8002b12:	4601      	mov	r1, r0
 8002b14:	6818      	ldr	r0, [r3, #0]
 8002b16:	f7ff bfad 	b.w	8002a74 <_puts_r>
 8002b1a:	bf00      	nop
 8002b1c:	200001a8 	.word	0x200001a8

08002b20 <_sbrk_r>:
 8002b20:	b538      	push	{r3, r4, r5, lr}
 8002b22:	4c07      	ldr	r4, [pc, #28]	; (8002b40 <_sbrk_r+0x20>)
 8002b24:	2300      	movs	r3, #0
 8002b26:	4605      	mov	r5, r0
 8002b28:	4608      	mov	r0, r1
 8002b2a:	6023      	str	r3, [r4, #0]
 8002b2c:	f7ff fbde 	bl	80022ec <_sbrk>
 8002b30:	1c43      	adds	r3, r0, #1
 8002b32:	d000      	beq.n	8002b36 <_sbrk_r+0x16>
 8002b34:	bd38      	pop	{r3, r4, r5, pc}
 8002b36:	6823      	ldr	r3, [r4, #0]
 8002b38:	2b00      	cmp	r3, #0
 8002b3a:	d0fb      	beq.n	8002b34 <_sbrk_r+0x14>
 8002b3c:	602b      	str	r3, [r5, #0]
 8002b3e:	bd38      	pop	{r3, r4, r5, pc}
 8002b40:	20000ea0 	.word	0x20000ea0
 8002b44:	00000000 	.word	0x00000000

08002b48 <_vfprintf_r>:
 8002b48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002b4c:	b0d7      	sub	sp, #348	; 0x15c
 8002b4e:	461c      	mov	r4, r3
 8002b50:	4689      	mov	r9, r1
 8002b52:	4617      	mov	r7, r2
 8002b54:	4605      	mov	r5, r0
 8002b56:	9003      	str	r0, [sp, #12]
 8002b58:	f003 f9d2 	bl	8005f00 <_localeconv_r>
 8002b5c:	6803      	ldr	r3, [r0, #0]
 8002b5e:	9316      	str	r3, [sp, #88]	; 0x58
 8002b60:	4618      	mov	r0, r3
 8002b62:	f7fd fd6d 	bl	8000640 <strlen>
 8002b66:	9408      	str	r4, [sp, #32]
 8002b68:	9015      	str	r0, [sp, #84]	; 0x54
 8002b6a:	b11d      	cbz	r5, 8002b74 <_vfprintf_r+0x2c>
 8002b6c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002b6e:	2b00      	cmp	r3, #0
 8002b70:	f000 8107 	beq.w	8002d82 <_vfprintf_r+0x23a>
 8002b74:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002b78:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002b7c:	07c8      	lsls	r0, r1, #31
 8002b7e:	b293      	uxth	r3, r2
 8002b80:	d402      	bmi.n	8002b88 <_vfprintf_r+0x40>
 8002b82:	0599      	lsls	r1, r3, #22
 8002b84:	f140 811f 	bpl.w	8002dc6 <_vfprintf_r+0x27e>
 8002b88:	049e      	lsls	r6, r3, #18
 8002b8a:	d40a      	bmi.n	8002ba2 <_vfprintf_r+0x5a>
 8002b8c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002b90:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002b94:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002b98:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002b9c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002ba0:	b29b      	uxth	r3, r3
 8002ba2:	071d      	lsls	r5, r3, #28
 8002ba4:	f140 80b2 	bpl.w	8002d0c <_vfprintf_r+0x1c4>
 8002ba8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002bac:	2a00      	cmp	r2, #0
 8002bae:	f000 80ad 	beq.w	8002d0c <_vfprintf_r+0x1c4>
 8002bb2:	f003 021a 	and.w	r2, r3, #26
 8002bb6:	2a0a      	cmp	r2, #10
 8002bb8:	f000 80c9 	beq.w	8002d4e <_vfprintf_r+0x206>
 8002bbc:	2300      	movs	r3, #0
 8002bbe:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002dd8 <_vfprintf_r+0x290>
 8002bc2:	9310      	str	r3, [sp, #64]	; 0x40
 8002bc4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002bc8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002bce:	931b      	str	r3, [sp, #108]	; 0x6c
 8002bd0:	9318      	str	r3, [sp, #96]	; 0x60
 8002bd2:	9305      	str	r3, [sp, #20]
 8002bd4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002bd6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002bd8:	469b      	mov	fp, r3
 8002bda:	783b      	ldrb	r3, [r7, #0]
 8002bdc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002be0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002be4:	2b00      	cmp	r3, #0
 8002be6:	f000 8259 	beq.w	800309c <_vfprintf_r+0x554>
 8002bea:	2b25      	cmp	r3, #37	; 0x25
 8002bec:	463c      	mov	r4, r7
 8002bee:	d102      	bne.n	8002bf6 <_vfprintf_r+0xae>
 8002bf0:	e01d      	b.n	8002c2e <_vfprintf_r+0xe6>
 8002bf2:	2b25      	cmp	r3, #37	; 0x25
 8002bf4:	d003      	beq.n	8002bfe <_vfprintf_r+0xb6>
 8002bf6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002bfa:	2b00      	cmp	r3, #0
 8002bfc:	d1f9      	bne.n	8002bf2 <_vfprintf_r+0xaa>
 8002bfe:	1be5      	subs	r5, r4, r7
 8002c00:	b18d      	cbz	r5, 8002c26 <_vfprintf_r+0xde>
 8002c02:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002c06:	3301      	adds	r3, #1
 8002c08:	442a      	add	r2, r5
 8002c0a:	2b07      	cmp	r3, #7
 8002c0c:	f8cb 7000 	str.w	r7, [fp]
 8002c10:	f8cb 5004 	str.w	r5, [fp, #4]
 8002c14:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002c18:	f300 80ca 	bgt.w	8002db0 <_vfprintf_r+0x268>
 8002c1c:	f10b 0b08 	add.w	fp, fp, #8
 8002c20:	9b05      	ldr	r3, [sp, #20]
 8002c22:	442b      	add	r3, r5
 8002c24:	9305      	str	r3, [sp, #20]
 8002c26:	7823      	ldrb	r3, [r4, #0]
 8002c28:	2b00      	cmp	r3, #0
 8002c2a:	f000 8237 	beq.w	800309c <_vfprintf_r+0x554>
 8002c2e:	2300      	movs	r3, #0
 8002c30:	7866      	ldrb	r6, [r4, #1]
 8002c32:	9306      	str	r3, [sp, #24]
 8002c34:	4698      	mov	r8, r3
 8002c36:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c3a:	f104 0a01 	add.w	sl, r4, #1
 8002c3e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002c42:	252b      	movs	r5, #43	; 0x2b
 8002c44:	f10a 0a01 	add.w	sl, sl, #1
 8002c48:	f1a6 0320 	sub.w	r3, r6, #32
 8002c4c:	2b5a      	cmp	r3, #90	; 0x5a
 8002c4e:	f200 842a 	bhi.w	80034a6 <_vfprintf_r+0x95e>
 8002c52:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002c56:	03aa      	.short	0x03aa
 8002c58:	04280428 	.word	0x04280428
 8002c5c:	0428029c 	.word	0x0428029c
 8002c60:	04280428 	.word	0x04280428
 8002c64:	042802a7 	.word	0x042802a7
 8002c68:	02c60428 	.word	0x02c60428
 8002c6c:	042802d2 	.word	0x042802d2
 8002c70:	02dc02d7 	.word	0x02dc02d7
 8002c74:	02f60428 	.word	0x02f60428
 8002c78:	026d026d 	.word	0x026d026d
 8002c7c:	026d026d 	.word	0x026d026d
 8002c80:	026d026d 	.word	0x026d026d
 8002c84:	026d026d 	.word	0x026d026d
 8002c88:	0428026d 	.word	0x0428026d
 8002c8c:	04280428 	.word	0x04280428
 8002c90:	04280428 	.word	0x04280428
 8002c94:	04280428 	.word	0x04280428
 8002c98:	042802fb 	.word	0x042802fb
 8002c9c:	03f3033c 	.word	0x03f3033c
 8002ca0:	02fb02fb 	.word	0x02fb02fb
 8002ca4:	042802fb 	.word	0x042802fb
 8002ca8:	04280428 	.word	0x04280428
 8002cac:	03ee0428 	.word	0x03ee0428
 8002cb0:	04280428 	.word	0x04280428
 8002cb4:	0428009a 	.word	0x0428009a
 8002cb8:	04280428 	.word	0x04280428
 8002cbc:	04280350 	.word	0x04280350
 8002cc0:	04280379 	.word	0x04280379
 8002cc4:	03900428 	.word	0x03900428
 8002cc8:	04280428 	.word	0x04280428
 8002ccc:	04280428 	.word	0x04280428
 8002cd0:	04280428 	.word	0x04280428
 8002cd4:	04280428 	.word	0x04280428
 8002cd8:	042802fb 	.word	0x042802fb
 8002cdc:	00c5033c 	.word	0x00c5033c
 8002ce0:	02fb02fb 	.word	0x02fb02fb
 8002ce4:	03d102fb 	.word	0x03d102fb
 8002ce8:	007000c5 	.word	0x007000c5
 8002cec:	03b50428 	.word	0x03b50428
 8002cf0:	03c20428 	.word	0x03c20428
 8002cf4:	03de009c 	.word	0x03de009c
 8002cf8:	04280070 	.word	0x04280070
 8002cfc:	00720350 	.word	0x00720350
 8002d00:	0428022c 	.word	0x0428022c
 8002d04:	027c0428 	.word	0x027c0428
 8002d08:	00720428 	.word	0x00720428
 8002d0c:	4649      	mov	r1, r9
 8002d0e:	9803      	ldr	r0, [sp, #12]
 8002d10:	f001 fc9a 	bl	8004648 <__swsetup_r>
 8002d14:	b1a0      	cbz	r0, 8002d40 <_vfprintf_r+0x1f8>
 8002d16:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002d1a:	07d8      	lsls	r0, r3, #31
 8002d1c:	d404      	bmi.n	8002d28 <_vfprintf_r+0x1e0>
 8002d1e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002d22:	0599      	lsls	r1, r3, #22
 8002d24:	f140 83b7 	bpl.w	8003496 <_vfprintf_r+0x94e>
 8002d28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d2c:	9305      	str	r3, [sp, #20]
 8002d2e:	9805      	ldr	r0, [sp, #20]
 8002d30:	b057      	add	sp, #348	; 0x15c
 8002d32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d36:	f048 0820 	orr.w	r8, r8, #32
 8002d3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d3e:	e781      	b.n	8002c44 <_vfprintf_r+0xfc>
 8002d40:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002d44:	f003 021a 	and.w	r2, r3, #26
 8002d48:	2a0a      	cmp	r2, #10
 8002d4a:	f47f af37 	bne.w	8002bbc <_vfprintf_r+0x74>
 8002d4e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002d52:	2a00      	cmp	r2, #0
 8002d54:	f6ff af32 	blt.w	8002bbc <_vfprintf_r+0x74>
 8002d58:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002d5c:	07d2      	lsls	r2, r2, #31
 8002d5e:	d405      	bmi.n	8002d6c <_vfprintf_r+0x224>
 8002d60:	059b      	lsls	r3, r3, #22
 8002d62:	d403      	bmi.n	8002d6c <_vfprintf_r+0x224>
 8002d64:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d68:	f003 f8de 	bl	8005f28 <__retarget_lock_release_recursive>
 8002d6c:	4623      	mov	r3, r4
 8002d6e:	463a      	mov	r2, r7
 8002d70:	4649      	mov	r1, r9
 8002d72:	9803      	ldr	r0, [sp, #12]
 8002d74:	f001 fc26 	bl	80045c4 <__sbprintf>
 8002d78:	9005      	str	r0, [sp, #20]
 8002d7a:	9805      	ldr	r0, [sp, #20]
 8002d7c:	b057      	add	sp, #348	; 0x15c
 8002d7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d82:	9803      	ldr	r0, [sp, #12]
 8002d84:	f002 fd7e 	bl	8005884 <__sinit>
 8002d88:	e6f4      	b.n	8002b74 <_vfprintf_r+0x2c>
 8002d8a:	f048 0810 	orr.w	r8, r8, #16
 8002d8e:	f018 0f20 	tst.w	r8, #32
 8002d92:	f000 836c 	beq.w	800346e <_vfprintf_r+0x926>
 8002d96:	9c08      	ldr	r4, [sp, #32]
 8002d98:	3407      	adds	r4, #7
 8002d9a:	f024 0307 	bic.w	r3, r4, #7
 8002d9e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002da2:	f103 0208 	add.w	r2, r3, #8
 8002da6:	9208      	str	r2, [sp, #32]
 8002da8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002dac:	2200      	movs	r2, #0
 8002dae:	e18c      	b.n	80030ca <_vfprintf_r+0x582>
 8002db0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002db2:	9907      	ldr	r1, [sp, #28]
 8002db4:	9803      	ldr	r0, [sp, #12]
 8002db6:	f003 ff33 	bl	8006c20 <__sprint_r>
 8002dba:	2800      	cmp	r0, #0
 8002dbc:	f041 8376 	bne.w	80044ac <_vfprintf_r+0x1964>
 8002dc0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002dc4:	e72c      	b.n	8002c20 <_vfprintf_r+0xd8>
 8002dc6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002dca:	f003 f8ab 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8002dce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002dd2:	b293      	uxth	r3, r2
 8002dd4:	e6d8      	b.n	8002b88 <_vfprintf_r+0x40>
 8002dd6:	bf00      	nop
	...
 8002de0:	4643      	mov	r3, r8
 8002de2:	069f      	lsls	r7, r3, #26
 8002de4:	f140 832f 	bpl.w	8003446 <_vfprintf_r+0x8fe>
 8002de8:	9c08      	ldr	r4, [sp, #32]
 8002dea:	3407      	adds	r4, #7
 8002dec:	f024 0407 	bic.w	r4, r4, #7
 8002df0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002df4:	f104 0208 	add.w	r2, r4, #8
 8002df8:	9208      	str	r2, [sp, #32]
 8002dfa:	4604      	mov	r4, r0
 8002dfc:	460d      	mov	r5, r1
 8002dfe:	2800      	cmp	r0, #0
 8002e00:	f171 0200 	sbcs.w	r2, r1, #0
 8002e04:	da05      	bge.n	8002e12 <_vfprintf_r+0x2ca>
 8002e06:	222d      	movs	r2, #45	; 0x2d
 8002e08:	4264      	negs	r4, r4
 8002e0a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002e0e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002e12:	aa56      	add	r2, sp, #344	; 0x158
 8002e14:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e18:	9204      	str	r2, [sp, #16]
 8002e1a:	f000 84b2 	beq.w	8003782 <_vfprintf_r+0xc3a>
 8002e1e:	2201      	movs	r2, #1
 8002e20:	ea54 0105 	orrs.w	r1, r4, r5
 8002e24:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002e28:	f040 8159 	bne.w	80030de <_vfprintf_r+0x596>
 8002e2c:	f1b9 0f00 	cmp.w	r9, #0
 8002e30:	f040 8619 	bne.w	8003a66 <_vfprintf_r+0xf1e>
 8002e34:	2a00      	cmp	r2, #0
 8002e36:	f040 8508 	bne.w	800384a <_vfprintf_r+0xd02>
 8002e3a:	f013 0301 	ands.w	r3, r3, #1
 8002e3e:	af56      	add	r7, sp, #344	; 0x158
 8002e40:	9309      	str	r3, [sp, #36]	; 0x24
 8002e42:	d002      	beq.n	8002e4a <_vfprintf_r+0x302>
 8002e44:	2330      	movs	r3, #48	; 0x30
 8002e46:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002e4a:	2300      	movs	r3, #0
 8002e4c:	930a      	str	r3, [sp, #40]	; 0x28
 8002e4e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e50:	9314      	str	r3, [sp, #80]	; 0x50
 8002e52:	9311      	str	r3, [sp, #68]	; 0x44
 8002e54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e5a:	454b      	cmp	r3, r9
 8002e5c:	bfb8      	it	lt
 8002e5e:	464b      	movlt	r3, r9
 8002e60:	9304      	str	r3, [sp, #16]
 8002e62:	b112      	cbz	r2, 8002e6a <_vfprintf_r+0x322>
 8002e64:	9b04      	ldr	r3, [sp, #16]
 8002e66:	3301      	adds	r3, #1
 8002e68:	9304      	str	r3, [sp, #16]
 8002e6a:	f018 0302 	ands.w	r3, r8, #2
 8002e6e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002e70:	d002      	beq.n	8002e78 <_vfprintf_r+0x330>
 8002e72:	9b04      	ldr	r3, [sp, #16]
 8002e74:	3302      	adds	r3, #2
 8002e76:	9304      	str	r3, [sp, #16]
 8002e78:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002e7c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e7e:	930e      	str	r3, [sp, #56]	; 0x38
 8002e80:	d13f      	bne.n	8002f02 <_vfprintf_r+0x3ba>
 8002e82:	9b06      	ldr	r3, [sp, #24]
 8002e84:	9904      	ldr	r1, [sp, #16]
 8002e86:	1a5d      	subs	r5, r3, r1
 8002e88:	2d00      	cmp	r5, #0
 8002e8a:	dd3a      	ble.n	8002f02 <_vfprintf_r+0x3ba>
 8002e8c:	2d10      	cmp	r5, #16
 8002e8e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e90:	dd29      	ble.n	8002ee6 <_vfprintf_r+0x39e>
 8002e92:	4659      	mov	r1, fp
 8002e94:	4620      	mov	r0, r4
 8002e96:	9620      	str	r6, [sp, #128]	; 0x80
 8002e98:	2310      	movs	r3, #16
 8002e9a:	9c03      	ldr	r4, [sp, #12]
 8002e9c:	9e07      	ldr	r6, [sp, #28]
 8002e9e:	46bb      	mov	fp, r7
 8002ea0:	e004      	b.n	8002eac <_vfprintf_r+0x364>
 8002ea2:	3d10      	subs	r5, #16
 8002ea4:	2d10      	cmp	r5, #16
 8002ea6:	f101 0108 	add.w	r1, r1, #8
 8002eaa:	dd18      	ble.n	8002ede <_vfprintf_r+0x396>
 8002eac:	3201      	adds	r2, #1
 8002eae:	4fba      	ldr	r7, [pc, #744]	; (8003198 <_vfprintf_r+0x650>)
 8002eb0:	3010      	adds	r0, #16
 8002eb2:	2a07      	cmp	r2, #7
 8002eb4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002eb8:	e9c1 7300 	strd	r7, r3, [r1]
 8002ebc:	ddf1      	ble.n	8002ea2 <_vfprintf_r+0x35a>
 8002ebe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ec0:	4631      	mov	r1, r6
 8002ec2:	4620      	mov	r0, r4
 8002ec4:	930c      	str	r3, [sp, #48]	; 0x30
 8002ec6:	f003 feab 	bl	8006c20 <__sprint_r>
 8002eca:	2800      	cmp	r0, #0
 8002ecc:	f040 843d 	bne.w	800374a <_vfprintf_r+0xc02>
 8002ed0:	3d10      	subs	r5, #16
 8002ed2:	2d10      	cmp	r5, #16
 8002ed4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ed8:	a92d      	add	r1, sp, #180	; 0xb4
 8002eda:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002edc:	dce6      	bgt.n	8002eac <_vfprintf_r+0x364>
 8002ede:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ee0:	465f      	mov	r7, fp
 8002ee2:	4604      	mov	r4, r0
 8002ee4:	468b      	mov	fp, r1
 8002ee6:	3201      	adds	r2, #1
 8002ee8:	4bab      	ldr	r3, [pc, #684]	; (8003198 <_vfprintf_r+0x650>)
 8002eea:	442c      	add	r4, r5
 8002eec:	2a07      	cmp	r2, #7
 8002eee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ef2:	e9cb 3500 	strd	r3, r5, [fp]
 8002ef6:	f300 84ff 	bgt.w	80038f8 <_vfprintf_r+0xdb0>
 8002efa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002efe:	f10b 0b08 	add.w	fp, fp, #8
 8002f02:	b172      	cbz	r2, 8002f22 <_vfprintf_r+0x3da>
 8002f04:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f06:	3201      	adds	r2, #1
 8002f08:	3401      	adds	r4, #1
 8002f0a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002f0e:	2101      	movs	r1, #1
 8002f10:	2a07      	cmp	r2, #7
 8002f12:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f16:	e9cb 0100 	strd	r0, r1, [fp]
 8002f1a:	f300 8418 	bgt.w	800374e <_vfprintf_r+0xc06>
 8002f1e:	f10b 0b08 	add.w	fp, fp, #8
 8002f22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002f24:	b16b      	cbz	r3, 8002f42 <_vfprintf_r+0x3fa>
 8002f26:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f28:	3301      	adds	r3, #1
 8002f2a:	3402      	adds	r4, #2
 8002f2c:	a923      	add	r1, sp, #140	; 0x8c
 8002f2e:	2202      	movs	r2, #2
 8002f30:	2b07      	cmp	r3, #7
 8002f32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f36:	e9cb 1200 	strd	r1, r2, [fp]
 8002f3a:	f300 8415 	bgt.w	8003768 <_vfprintf_r+0xc20>
 8002f3e:	f10b 0b08 	add.w	fp, fp, #8
 8002f42:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002f44:	2b80      	cmp	r3, #128	; 0x80
 8002f46:	f000 8331 	beq.w	80035ac <_vfprintf_r+0xa64>
 8002f4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002f4c:	eba9 0503 	sub.w	r5, r9, r3
 8002f50:	2d00      	cmp	r5, #0
 8002f52:	dd37      	ble.n	8002fc4 <_vfprintf_r+0x47c>
 8002f54:	2d10      	cmp	r5, #16
 8002f56:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f58:	4b90      	ldr	r3, [pc, #576]	; (800319c <_vfprintf_r+0x654>)
 8002f5a:	dd28      	ble.n	8002fae <_vfprintf_r+0x466>
 8002f5c:	4659      	mov	r1, fp
 8002f5e:	4620      	mov	r0, r4
 8002f60:	46bb      	mov	fp, r7
 8002f62:	f04f 0910 	mov.w	r9, #16
 8002f66:	4637      	mov	r7, r6
 8002f68:	461c      	mov	r4, r3
 8002f6a:	9e07      	ldr	r6, [sp, #28]
 8002f6c:	e004      	b.n	8002f78 <_vfprintf_r+0x430>
 8002f6e:	3d10      	subs	r5, #16
 8002f70:	2d10      	cmp	r5, #16
 8002f72:	f101 0108 	add.w	r1, r1, #8
 8002f76:	dd15      	ble.n	8002fa4 <_vfprintf_r+0x45c>
 8002f78:	3201      	adds	r2, #1
 8002f7a:	3010      	adds	r0, #16
 8002f7c:	2a07      	cmp	r2, #7
 8002f7e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f82:	e9c1 4900 	strd	r4, r9, [r1]
 8002f86:	ddf2      	ble.n	8002f6e <_vfprintf_r+0x426>
 8002f88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f8a:	4631      	mov	r1, r6
 8002f8c:	9803      	ldr	r0, [sp, #12]
 8002f8e:	f003 fe47 	bl	8006c20 <__sprint_r>
 8002f92:	2800      	cmp	r0, #0
 8002f94:	f040 83d9 	bne.w	800374a <_vfprintf_r+0xc02>
 8002f98:	3d10      	subs	r5, #16
 8002f9a:	2d10      	cmp	r5, #16
 8002f9c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002fa0:	a92d      	add	r1, sp, #180	; 0xb4
 8002fa2:	dce9      	bgt.n	8002f78 <_vfprintf_r+0x430>
 8002fa4:	463e      	mov	r6, r7
 8002fa6:	4623      	mov	r3, r4
 8002fa8:	465f      	mov	r7, fp
 8002faa:	4604      	mov	r4, r0
 8002fac:	468b      	mov	fp, r1
 8002fae:	3201      	adds	r2, #1
 8002fb0:	442c      	add	r4, r5
 8002fb2:	2a07      	cmp	r2, #7
 8002fb4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002fb8:	e9cb 3500 	strd	r3, r5, [fp]
 8002fbc:	f300 83ef 	bgt.w	800379e <_vfprintf_r+0xc56>
 8002fc0:	f10b 0b08 	add.w	fp, fp, #8
 8002fc4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002fc8:	f040 8280 	bne.w	80034cc <_vfprintf_r+0x984>
 8002fcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002fd0:	f8cb 7000 	str.w	r7, [fp]
 8002fd4:	3301      	adds	r3, #1
 8002fd6:	4414      	add	r4, r2
 8002fd8:	2b07      	cmp	r3, #7
 8002fda:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fdc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002fe0:	932b      	str	r3, [sp, #172]	; 0xac
 8002fe2:	f300 8392 	bgt.w	800370a <_vfprintf_r+0xbc2>
 8002fe6:	f10b 0b08 	add.w	fp, fp, #8
 8002fea:	f018 0f04 	tst.w	r8, #4
 8002fee:	d03b      	beq.n	8003068 <_vfprintf_r+0x520>
 8002ff0:	9b06      	ldr	r3, [sp, #24]
 8002ff2:	9a04      	ldr	r2, [sp, #16]
 8002ff4:	1a9d      	subs	r5, r3, r2
 8002ff6:	2d00      	cmp	r5, #0
 8002ff8:	dd36      	ble.n	8003068 <_vfprintf_r+0x520>
 8002ffa:	2d10      	cmp	r5, #16
 8002ffc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ffe:	dd21      	ble.n	8003044 <_vfprintf_r+0x4fc>
 8003000:	2610      	movs	r6, #16
 8003002:	9f03      	ldr	r7, [sp, #12]
 8003004:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003008:	e004      	b.n	8003014 <_vfprintf_r+0x4cc>
 800300a:	3d10      	subs	r5, #16
 800300c:	2d10      	cmp	r5, #16
 800300e:	f10b 0b08 	add.w	fp, fp, #8
 8003012:	dd17      	ble.n	8003044 <_vfprintf_r+0x4fc>
 8003014:	3301      	adds	r3, #1
 8003016:	4a60      	ldr	r2, [pc, #384]	; (8003198 <_vfprintf_r+0x650>)
 8003018:	3410      	adds	r4, #16
 800301a:	2b07      	cmp	r3, #7
 800301c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003020:	e9cb 2600 	strd	r2, r6, [fp]
 8003024:	ddf1      	ble.n	800300a <_vfprintf_r+0x4c2>
 8003026:	aa2a      	add	r2, sp, #168	; 0xa8
 8003028:	4641      	mov	r1, r8
 800302a:	4638      	mov	r0, r7
 800302c:	f003 fdf8 	bl	8006c20 <__sprint_r>
 8003030:	2800      	cmp	r0, #0
 8003032:	f040 856c 	bne.w	8003b0e <_vfprintf_r+0xfc6>
 8003036:	3d10      	subs	r5, #16
 8003038:	2d10      	cmp	r5, #16
 800303a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800303e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003042:	dce7      	bgt.n	8003014 <_vfprintf_r+0x4cc>
 8003044:	3301      	adds	r3, #1
 8003046:	4a54      	ldr	r2, [pc, #336]	; (8003198 <_vfprintf_r+0x650>)
 8003048:	442c      	add	r4, r5
 800304a:	2b07      	cmp	r3, #7
 800304c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003050:	e9cb 2500 	strd	r2, r5, [fp]
 8003054:	dd08      	ble.n	8003068 <_vfprintf_r+0x520>
 8003056:	aa2a      	add	r2, sp, #168	; 0xa8
 8003058:	9907      	ldr	r1, [sp, #28]
 800305a:	9803      	ldr	r0, [sp, #12]
 800305c:	f003 fde0 	bl	8006c20 <__sprint_r>
 8003060:	2800      	cmp	r0, #0
 8003062:	f040 82e9 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003066:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003068:	9904      	ldr	r1, [sp, #16]
 800306a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800306e:	428a      	cmp	r2, r1
 8003070:	bfac      	ite	ge
 8003072:	189b      	addge	r3, r3, r2
 8003074:	185b      	addlt	r3, r3, r1
 8003076:	9305      	str	r3, [sp, #20]
 8003078:	2c00      	cmp	r4, #0
 800307a:	f040 82d5 	bne.w	8003628 <_vfprintf_r+0xae0>
 800307e:	2300      	movs	r3, #0
 8003080:	932b      	str	r3, [sp, #172]	; 0xac
 8003082:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003084:	b11b      	cbz	r3, 800308e <_vfprintf_r+0x546>
 8003086:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003088:	9803      	ldr	r0, [sp, #12]
 800308a:	f002 fc9d 	bl	80059c8 <_free_r>
 800308e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003092:	4657      	mov	r7, sl
 8003094:	783b      	ldrb	r3, [r7, #0]
 8003096:	2b00      	cmp	r3, #0
 8003098:	f47f ada7 	bne.w	8002bea <_vfprintf_r+0xa2>
 800309c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800309e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030a2:	2b00      	cmp	r3, #0
 80030a4:	f041 80e7 	bne.w	8004276 <_vfprintf_r+0x172e>
 80030a8:	2300      	movs	r3, #0
 80030aa:	932b      	str	r3, [sp, #172]	; 0xac
 80030ac:	e2cb      	b.n	8003646 <_vfprintf_r+0xafe>
 80030ae:	4643      	mov	r3, r8
 80030b0:	069a      	lsls	r2, r3, #26
 80030b2:	f140 814e 	bpl.w	8003352 <_vfprintf_r+0x80a>
 80030b6:	9c08      	ldr	r4, [sp, #32]
 80030b8:	3407      	adds	r4, #7
 80030ba:	f024 0207 	bic.w	r2, r4, #7
 80030be:	f102 0108 	add.w	r1, r2, #8
 80030c2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80030c6:	9108      	str	r1, [sp, #32]
 80030c8:	2201      	movs	r2, #1
 80030ca:	2100      	movs	r1, #0
 80030cc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80030d0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030d4:	a956      	add	r1, sp, #344	; 0x158
 80030d6:	9104      	str	r1, [sp, #16]
 80030d8:	f47f aea2 	bne.w	8002e20 <_vfprintf_r+0x2d8>
 80030dc:	4698      	mov	r8, r3
 80030de:	2a01      	cmp	r2, #1
 80030e0:	f000 8350 	beq.w	8003784 <_vfprintf_r+0xc3c>
 80030e4:	2a02      	cmp	r2, #2
 80030e6:	f000 831b 	beq.w	8003720 <_vfprintf_r+0xbd8>
 80030ea:	a956      	add	r1, sp, #344	; 0x158
 80030ec:	e000      	b.n	80030f0 <_vfprintf_r+0x5a8>
 80030ee:	4639      	mov	r1, r7
 80030f0:	08e2      	lsrs	r2, r4, #3
 80030f2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80030f6:	08e8      	lsrs	r0, r5, #3
 80030f8:	f004 0307 	and.w	r3, r4, #7
 80030fc:	4605      	mov	r5, r0
 80030fe:	4614      	mov	r4, r2
 8003100:	3330      	adds	r3, #48	; 0x30
 8003102:	ea54 0205 	orrs.w	r2, r4, r5
 8003106:	f801 3c01 	strb.w	r3, [r1, #-1]
 800310a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800310e:	d1ee      	bne.n	80030ee <_vfprintf_r+0x5a6>
 8003110:	f018 0f01 	tst.w	r8, #1
 8003114:	f000 8314 	beq.w	8003740 <_vfprintf_r+0xbf8>
 8003118:	2b30      	cmp	r3, #48	; 0x30
 800311a:	f000 8311 	beq.w	8003740 <_vfprintf_r+0xbf8>
 800311e:	9a04      	ldr	r2, [sp, #16]
 8003120:	3902      	subs	r1, #2
 8003122:	2330      	movs	r3, #48	; 0x30
 8003124:	1a52      	subs	r2, r2, r1
 8003126:	f807 3c01 	strb.w	r3, [r7, #-1]
 800312a:	9209      	str	r2, [sp, #36]	; 0x24
 800312c:	460f      	mov	r7, r1
 800312e:	e68c      	b.n	8002e4a <_vfprintf_r+0x302>
 8003130:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003134:	2200      	movs	r2, #0
 8003136:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800313a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800313e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003142:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003146:	2b09      	cmp	r3, #9
 8003148:	d9f5      	bls.n	8003136 <_vfprintf_r+0x5ee>
 800314a:	9206      	str	r2, [sp, #24]
 800314c:	e57c      	b.n	8002c48 <_vfprintf_r+0x100>
 800314e:	4b14      	ldr	r3, [pc, #80]	; (80031a0 <_vfprintf_r+0x658>)
 8003150:	9317      	str	r3, [sp, #92]	; 0x5c
 8003152:	f018 0f20 	tst.w	r8, #32
 8003156:	f000 8114 	beq.w	8003382 <_vfprintf_r+0x83a>
 800315a:	9c08      	ldr	r4, [sp, #32]
 800315c:	3407      	adds	r4, #7
 800315e:	f024 0307 	bic.w	r3, r4, #7
 8003162:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003166:	f103 0208 	add.w	r2, r3, #8
 800316a:	9208      	str	r2, [sp, #32]
 800316c:	f018 0f01 	tst.w	r8, #1
 8003170:	d009      	beq.n	8003186 <_vfprintf_r+0x63e>
 8003172:	ea54 0305 	orrs.w	r3, r4, r5
 8003176:	d006      	beq.n	8003186 <_vfprintf_r+0x63e>
 8003178:	2330      	movs	r3, #48	; 0x30
 800317a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800317e:	f048 0802 	orr.w	r8, r8, #2
 8003182:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003186:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800318a:	2202      	movs	r2, #2
 800318c:	e79d      	b.n	80030ca <_vfprintf_r+0x582>
 800318e:	f048 0801 	orr.w	r8, r8, #1
 8003192:	f89a 6000 	ldrb.w	r6, [sl]
 8003196:	e555      	b.n	8002c44 <_vfprintf_r+0xfc>
 8003198:	08007494 	.word	0x08007494
 800319c:	080074a4 	.word	0x080074a4
 80031a0:	08007460 	.word	0x08007460
 80031a4:	9e03      	ldr	r6, [sp, #12]
 80031a6:	4630      	mov	r0, r6
 80031a8:	f002 feaa 	bl	8005f00 <_localeconv_r>
 80031ac:	6843      	ldr	r3, [r0, #4]
 80031ae:	9318      	str	r3, [sp, #96]	; 0x60
 80031b0:	4618      	mov	r0, r3
 80031b2:	f7fd fa45 	bl	8000640 <strlen>
 80031b6:	901b      	str	r0, [sp, #108]	; 0x6c
 80031b8:	4604      	mov	r4, r0
 80031ba:	4630      	mov	r0, r6
 80031bc:	f002 fea0 	bl	8005f00 <_localeconv_r>
 80031c0:	6883      	ldr	r3, [r0, #8]
 80031c2:	931a      	str	r3, [sp, #104]	; 0x68
 80031c4:	2c00      	cmp	r4, #0
 80031c6:	f43f adb8 	beq.w	8002d3a <_vfprintf_r+0x1f2>
 80031ca:	f89a 6000 	ldrb.w	r6, [sl]
 80031ce:	2b00      	cmp	r3, #0
 80031d0:	f43f ad38 	beq.w	8002c44 <_vfprintf_r+0xfc>
 80031d4:	781b      	ldrb	r3, [r3, #0]
 80031d6:	2b00      	cmp	r3, #0
 80031d8:	f43f ad34 	beq.w	8002c44 <_vfprintf_r+0xfc>
 80031dc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80031e0:	e530      	b.n	8002c44 <_vfprintf_r+0xfc>
 80031e2:	9b08      	ldr	r3, [sp, #32]
 80031e4:	f89a 6000 	ldrb.w	r6, [sl]
 80031e8:	681a      	ldr	r2, [r3, #0]
 80031ea:	9206      	str	r2, [sp, #24]
 80031ec:	2a00      	cmp	r2, #0
 80031ee:	f103 0304 	add.w	r3, r3, #4
 80031f2:	f2c0 8697 	blt.w	8003f24 <_vfprintf_r+0x13dc>
 80031f6:	9308      	str	r3, [sp, #32]
 80031f8:	e524      	b.n	8002c44 <_vfprintf_r+0xfc>
 80031fa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80031fe:	f89a 6000 	ldrb.w	r6, [sl]
 8003202:	e51f      	b.n	8002c44 <_vfprintf_r+0xfc>
 8003204:	f89a 6000 	ldrb.w	r6, [sl]
 8003208:	f048 0804 	orr.w	r8, r8, #4
 800320c:	e51a      	b.n	8002c44 <_vfprintf_r+0xfc>
 800320e:	f89a 6000 	ldrb.w	r6, [sl]
 8003212:	2e2a      	cmp	r6, #42	; 0x2a
 8003214:	f10a 0201 	add.w	r2, sl, #1
 8003218:	f001 81b0 	beq.w	800457c <_vfprintf_r+0x1a34>
 800321c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003220:	2b09      	cmp	r3, #9
 8003222:	4692      	mov	sl, r2
 8003224:	f04f 0900 	mov.w	r9, #0
 8003228:	f63f ad0e 	bhi.w	8002c48 <_vfprintf_r+0x100>
 800322c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003230:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003234:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003238:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800323c:	2b09      	cmp	r3, #9
 800323e:	d9f5      	bls.n	800322c <_vfprintf_r+0x6e4>
 8003240:	e502      	b.n	8002c48 <_vfprintf_r+0x100>
 8003242:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003246:	f89a 6000 	ldrb.w	r6, [sl]
 800324a:	e4fb      	b.n	8002c44 <_vfprintf_r+0xfc>
 800324c:	9c08      	ldr	r4, [sp, #32]
 800324e:	3407      	adds	r4, #7
 8003250:	f024 0407 	bic.w	r4, r4, #7
 8003254:	ed94 7b00 	vldr	d7, [r4]
 8003258:	ec52 1b17 	vmov	r1, r2, d7
 800325c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003260:	931d      	str	r3, [sp, #116]	; 0x74
 8003262:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003266:	3408      	adds	r4, #8
 8003268:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800326c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003270:	4bba      	ldr	r3, [pc, #744]	; (800355c <_vfprintf_r+0xa14>)
 8003272:	9408      	str	r4, [sp, #32]
 8003274:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003278:	f7fd fef8 	bl	800106c <__aeabi_dcmpun>
 800327c:	2800      	cmp	r0, #0
 800327e:	f040 846f 	bne.w	8003b60 <_vfprintf_r+0x1018>
 8003282:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003286:	4bb5      	ldr	r3, [pc, #724]	; (800355c <_vfprintf_r+0xa14>)
 8003288:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800328c:	f7fd fed0 	bl	8001030 <__aeabi_dcmple>
 8003290:	2800      	cmp	r0, #0
 8003292:	f040 8465 	bne.w	8003b60 <_vfprintf_r+0x1018>
 8003296:	2200      	movs	r2, #0
 8003298:	2300      	movs	r3, #0
 800329a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800329e:	f7fd febd 	bl	800101c <__aeabi_dcmplt>
 80032a2:	2800      	cmp	r0, #0
 80032a4:	f040 855b 	bne.w	8003d5e <_vfprintf_r+0x1216>
 80032a8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032ac:	4fac      	ldr	r7, [pc, #688]	; (8003560 <_vfprintf_r+0xa18>)
 80032ae:	4bad      	ldr	r3, [pc, #692]	; (8003564 <_vfprintf_r+0xa1c>)
 80032b0:	2000      	movs	r0, #0
 80032b2:	2103      	movs	r1, #3
 80032b4:	9104      	str	r1, [sp, #16]
 80032b6:	900a      	str	r0, [sp, #40]	; 0x28
 80032b8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80032bc:	2e47      	cmp	r6, #71	; 0x47
 80032be:	bfd8      	it	le
 80032c0:	461f      	movle	r7, r3
 80032c2:	9109      	str	r1, [sp, #36]	; 0x24
 80032c4:	4681      	mov	r9, r0
 80032c6:	900f      	str	r0, [sp, #60]	; 0x3c
 80032c8:	9014      	str	r0, [sp, #80]	; 0x50
 80032ca:	9011      	str	r0, [sp, #68]	; 0x44
 80032cc:	e5c9      	b.n	8002e62 <_vfprintf_r+0x31a>
 80032ce:	9808      	ldr	r0, [sp, #32]
 80032d0:	2300      	movs	r3, #0
 80032d2:	6801      	ldr	r1, [r0, #0]
 80032d4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032d8:	461a      	mov	r2, r3
 80032da:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80032de:	2301      	movs	r3, #1
 80032e0:	1d01      	adds	r1, r0, #4
 80032e2:	9304      	str	r3, [sp, #16]
 80032e4:	920a      	str	r2, [sp, #40]	; 0x28
 80032e6:	4691      	mov	r9, r2
 80032e8:	920f      	str	r2, [sp, #60]	; 0x3c
 80032ea:	9214      	str	r2, [sp, #80]	; 0x50
 80032ec:	9211      	str	r2, [sp, #68]	; 0x44
 80032ee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80032f2:	af3d      	add	r7, sp, #244	; 0xf4
 80032f4:	e5b9      	b.n	8002e6a <_vfprintf_r+0x322>
 80032f6:	9b08      	ldr	r3, [sp, #32]
 80032f8:	681f      	ldr	r7, [r3, #0]
 80032fa:	2500      	movs	r5, #0
 80032fc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003300:	1d1c      	adds	r4, r3, #4
 8003302:	2f00      	cmp	r7, #0
 8003304:	f000 8639 	beq.w	8003f7a <_vfprintf_r+0x1432>
 8003308:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800330c:	f000 8711 	beq.w	8004132 <_vfprintf_r+0x15ea>
 8003310:	464a      	mov	r2, r9
 8003312:	4629      	mov	r1, r5
 8003314:	4638      	mov	r0, r7
 8003316:	f7fd fa03 	bl	8000720 <memchr>
 800331a:	900a      	str	r0, [sp, #40]	; 0x28
 800331c:	2800      	cmp	r0, #0
 800331e:	f000 85e7 	beq.w	8003ef0 <_vfprintf_r+0x13a8>
 8003322:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003324:	1bdb      	subs	r3, r3, r7
 8003326:	9309      	str	r3, [sp, #36]	; 0x24
 8003328:	46a9      	mov	r9, r5
 800332a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800332e:	9408      	str	r4, [sp, #32]
 8003330:	9304      	str	r3, [sp, #16]
 8003332:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003336:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800333a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800333e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003342:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003346:	e58c      	b.n	8002e62 <_vfprintf_r+0x31a>
 8003348:	f048 0310 	orr.w	r3, r8, #16
 800334c:	069a      	lsls	r2, r3, #26
 800334e:	f53f aeb2 	bmi.w	80030b6 <_vfprintf_r+0x56e>
 8003352:	9a08      	ldr	r2, [sp, #32]
 8003354:	06df      	lsls	r7, r3, #27
 8003356:	f102 0104 	add.w	r1, r2, #4
 800335a:	f100 837e 	bmi.w	8003a5a <_vfprintf_r+0xf12>
 800335e:	065d      	lsls	r5, r3, #25
 8003360:	9a08      	ldr	r2, [sp, #32]
 8003362:	f100 84e4 	bmi.w	8003d2e <_vfprintf_r+0x11e6>
 8003366:	059c      	lsls	r4, r3, #22
 8003368:	f140 8377 	bpl.w	8003a5a <_vfprintf_r+0xf12>
 800336c:	7814      	ldrb	r4, [r2, #0]
 800336e:	9108      	str	r1, [sp, #32]
 8003370:	2500      	movs	r5, #0
 8003372:	2201      	movs	r2, #1
 8003374:	e6a9      	b.n	80030ca <_vfprintf_r+0x582>
 8003376:	4b7c      	ldr	r3, [pc, #496]	; (8003568 <_vfprintf_r+0xa20>)
 8003378:	9317      	str	r3, [sp, #92]	; 0x5c
 800337a:	f018 0f20 	tst.w	r8, #32
 800337e:	f47f aeec 	bne.w	800315a <_vfprintf_r+0x612>
 8003382:	9a08      	ldr	r2, [sp, #32]
 8003384:	f018 0f10 	tst.w	r8, #16
 8003388:	f102 0304 	add.w	r3, r2, #4
 800338c:	f040 8354 	bne.w	8003a38 <_vfprintf_r+0xef0>
 8003390:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003394:	9a08      	ldr	r2, [sp, #32]
 8003396:	f040 84d0 	bne.w	8003d3a <_vfprintf_r+0x11f2>
 800339a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800339e:	f000 834b 	beq.w	8003a38 <_vfprintf_r+0xef0>
 80033a2:	7814      	ldrb	r4, [r2, #0]
 80033a4:	9308      	str	r3, [sp, #32]
 80033a6:	2500      	movs	r5, #0
 80033a8:	e6e0      	b.n	800316c <_vfprintf_r+0x624>
 80033aa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80033ae:	f89a 6000 	ldrb.w	r6, [sl]
 80033b2:	2b00      	cmp	r3, #0
 80033b4:	f47f ac46 	bne.w	8002c44 <_vfprintf_r+0xfc>
 80033b8:	2320      	movs	r3, #32
 80033ba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033be:	e441      	b.n	8002c44 <_vfprintf_r+0xfc>
 80033c0:	f89a 6000 	ldrb.w	r6, [sl]
 80033c4:	2e6c      	cmp	r6, #108	; 0x6c
 80033c6:	bf03      	ittte	eq
 80033c8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80033cc:	f048 0820 	orreq.w	r8, r8, #32
 80033d0:	f10a 0a01 	addeq.w	sl, sl, #1
 80033d4:	f048 0810 	orrne.w	r8, r8, #16
 80033d8:	e434      	b.n	8002c44 <_vfprintf_r+0xfc>
 80033da:	9a08      	ldr	r2, [sp, #32]
 80033dc:	f018 0f20 	tst.w	r8, #32
 80033e0:	f852 3b04 	ldr.w	r3, [r2], #4
 80033e4:	9208      	str	r2, [sp, #32]
 80033e6:	f000 83a1 	beq.w	8003b2c <_vfprintf_r+0xfe4>
 80033ea:	9a05      	ldr	r2, [sp, #20]
 80033ec:	4610      	mov	r0, r2
 80033ee:	17d1      	asrs	r1, r2, #31
 80033f0:	e9c3 0100 	strd	r0, r1, [r3]
 80033f4:	4657      	mov	r7, sl
 80033f6:	e64d      	b.n	8003094 <_vfprintf_r+0x54c>
 80033f8:	f89a 6000 	ldrb.w	r6, [sl]
 80033fc:	2e68      	cmp	r6, #104	; 0x68
 80033fe:	bf03      	ittte	eq
 8003400:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003404:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003408:	f10a 0a01 	addeq.w	sl, sl, #1
 800340c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003410:	e418      	b.n	8002c44 <_vfprintf_r+0xfc>
 8003412:	9908      	ldr	r1, [sp, #32]
 8003414:	4b55      	ldr	r3, [pc, #340]	; (800356c <_vfprintf_r+0xa24>)
 8003416:	680c      	ldr	r4, [r1, #0]
 8003418:	9317      	str	r3, [sp, #92]	; 0x5c
 800341a:	f647 0230 	movw	r2, #30768	; 0x7830
 800341e:	3104      	adds	r1, #4
 8003420:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003424:	f048 0302 	orr.w	r3, r8, #2
 8003428:	9108      	str	r1, [sp, #32]
 800342a:	2500      	movs	r5, #0
 800342c:	2202      	movs	r2, #2
 800342e:	2678      	movs	r6, #120	; 0x78
 8003430:	e64b      	b.n	80030ca <_vfprintf_r+0x582>
 8003432:	f048 0808 	orr.w	r8, r8, #8
 8003436:	f89a 6000 	ldrb.w	r6, [sl]
 800343a:	e403      	b.n	8002c44 <_vfprintf_r+0xfc>
 800343c:	f048 0310 	orr.w	r3, r8, #16
 8003440:	069f      	lsls	r7, r3, #26
 8003442:	f53f acd1 	bmi.w	8002de8 <_vfprintf_r+0x2a0>
 8003446:	9908      	ldr	r1, [sp, #32]
 8003448:	06dd      	lsls	r5, r3, #27
 800344a:	f101 0204 	add.w	r2, r1, #4
 800344e:	f100 82fd 	bmi.w	8003a4c <_vfprintf_r+0xf04>
 8003452:	065c      	lsls	r4, r3, #25
 8003454:	9908      	ldr	r1, [sp, #32]
 8003456:	f100 8475 	bmi.w	8003d44 <_vfprintf_r+0x11fc>
 800345a:	0598      	lsls	r0, r3, #22
 800345c:	f140 82f6 	bpl.w	8003a4c <_vfprintf_r+0xf04>
 8003460:	f991 4000 	ldrsb.w	r4, [r1]
 8003464:	9208      	str	r2, [sp, #32]
 8003466:	17e5      	asrs	r5, r4, #31
 8003468:	4620      	mov	r0, r4
 800346a:	4629      	mov	r1, r5
 800346c:	e4c7      	b.n	8002dfe <_vfprintf_r+0x2b6>
 800346e:	9a08      	ldr	r2, [sp, #32]
 8003470:	f018 0f10 	tst.w	r8, #16
 8003474:	f102 0304 	add.w	r3, r2, #4
 8003478:	f040 82e3 	bne.w	8003a42 <_vfprintf_r+0xefa>
 800347c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003480:	9a08      	ldr	r2, [sp, #32]
 8003482:	f040 8467 	bne.w	8003d54 <_vfprintf_r+0x120c>
 8003486:	f418 7f00 	tst.w	r8, #512	; 0x200
 800348a:	f000 82da 	beq.w	8003a42 <_vfprintf_r+0xefa>
 800348e:	7814      	ldrb	r4, [r2, #0]
 8003490:	9308      	str	r3, [sp, #32]
 8003492:	2500      	movs	r5, #0
 8003494:	e488      	b.n	8002da8 <_vfprintf_r+0x260>
 8003496:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800349a:	f002 fd45 	bl	8005f28 <__retarget_lock_release_recursive>
 800349e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80034a2:	9305      	str	r3, [sp, #20]
 80034a4:	e443      	b.n	8002d2e <_vfprintf_r+0x1e6>
 80034a6:	2e00      	cmp	r6, #0
 80034a8:	f43f adf8 	beq.w	800309c <_vfprintf_r+0x554>
 80034ac:	2300      	movs	r3, #0
 80034ae:	2101      	movs	r1, #1
 80034b0:	461a      	mov	r2, r3
 80034b2:	9104      	str	r1, [sp, #16]
 80034b4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80034b8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80034bc:	930a      	str	r3, [sp, #40]	; 0x28
 80034be:	4699      	mov	r9, r3
 80034c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80034c2:	9314      	str	r3, [sp, #80]	; 0x50
 80034c4:	9311      	str	r3, [sp, #68]	; 0x44
 80034c6:	9109      	str	r1, [sp, #36]	; 0x24
 80034c8:	af3d      	add	r7, sp, #244	; 0xf4
 80034ca:	e4ce      	b.n	8002e6a <_vfprintf_r+0x322>
 80034cc:	2e65      	cmp	r6, #101	; 0x65
 80034ce:	f340 80ca 	ble.w	8003666 <_vfprintf_r+0xb1e>
 80034d2:	2200      	movs	r2, #0
 80034d4:	2300      	movs	r3, #0
 80034d6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034da:	f7fd fd95 	bl	8001008 <__aeabi_dcmpeq>
 80034de:	2800      	cmp	r0, #0
 80034e0:	f000 8169 	beq.w	80037b6 <_vfprintf_r+0xc6e>
 80034e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034e6:	4a22      	ldr	r2, [pc, #136]	; (8003570 <_vfprintf_r+0xa28>)
 80034e8:	f8cb 2000 	str.w	r2, [fp]
 80034ec:	3301      	adds	r3, #1
 80034ee:	3401      	adds	r4, #1
 80034f0:	2201      	movs	r2, #1
 80034f2:	2b07      	cmp	r3, #7
 80034f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80034f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80034fc:	f300 8406 	bgt.w	8003d0c <_vfprintf_r+0x11c4>
 8003500:	f10b 0b08 	add.w	fp, fp, #8
 8003504:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003506:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003508:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800350a:	4293      	cmp	r3, r2
 800350c:	db03      	blt.n	8003516 <_vfprintf_r+0x9ce>
 800350e:	f018 0f01 	tst.w	r8, #1
 8003512:	f43f ad6a 	beq.w	8002fea <_vfprintf_r+0x4a2>
 8003516:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003518:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800351a:	f8cb 2000 	str.w	r2, [fp]
 800351e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003520:	f8cb 2004 	str.w	r2, [fp, #4]
 8003524:	3301      	adds	r3, #1
 8003526:	4414      	add	r4, r2
 8003528:	2b07      	cmp	r3, #7
 800352a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800352e:	f300 8517 	bgt.w	8003f60 <_vfprintf_r+0x1418>
 8003532:	f10b 0b08 	add.w	fp, fp, #8
 8003536:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003538:	1e5d      	subs	r5, r3, #1
 800353a:	2d00      	cmp	r5, #0
 800353c:	f77f ad55 	ble.w	8002fea <_vfprintf_r+0x4a2>
 8003540:	2d10      	cmp	r5, #16
 8003542:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003544:	4b0b      	ldr	r3, [pc, #44]	; (8003574 <_vfprintf_r+0xa2c>)
 8003546:	f340 82e7 	ble.w	8003b18 <_vfprintf_r+0xfd0>
 800354a:	4619      	mov	r1, r3
 800354c:	2610      	movs	r6, #16
 800354e:	4623      	mov	r3, r4
 8003550:	9f03      	ldr	r7, [sp, #12]
 8003552:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003556:	460c      	mov	r4, r1
 8003558:	e014      	b.n	8003584 <_vfprintf_r+0xa3c>
 800355a:	bf00      	nop
 800355c:	7fefffff 	.word	0x7fefffff
 8003560:	08007454 	.word	0x08007454
 8003564:	08007450 	.word	0x08007450
 8003568:	08007474 	.word	0x08007474
 800356c:	08007460 	.word	0x08007460
 8003570:	08007490 	.word	0x08007490
 8003574:	080074a4 	.word	0x080074a4
 8003578:	f10b 0b08 	add.w	fp, fp, #8
 800357c:	3d10      	subs	r5, #16
 800357e:	2d10      	cmp	r5, #16
 8003580:	f340 82c7 	ble.w	8003b12 <_vfprintf_r+0xfca>
 8003584:	3201      	adds	r2, #1
 8003586:	3310      	adds	r3, #16
 8003588:	2a07      	cmp	r2, #7
 800358a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800358e:	e9cb 4600 	strd	r4, r6, [fp]
 8003592:	ddf1      	ble.n	8003578 <_vfprintf_r+0xa30>
 8003594:	aa2a      	add	r2, sp, #168	; 0xa8
 8003596:	4649      	mov	r1, r9
 8003598:	4638      	mov	r0, r7
 800359a:	f003 fb41 	bl	8006c20 <__sprint_r>
 800359e:	2800      	cmp	r0, #0
 80035a0:	d14c      	bne.n	800363c <_vfprintf_r+0xaf4>
 80035a2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035aa:	e7e7      	b.n	800357c <_vfprintf_r+0xa34>
 80035ac:	9b06      	ldr	r3, [sp, #24]
 80035ae:	9a04      	ldr	r2, [sp, #16]
 80035b0:	1a9d      	subs	r5, r3, r2
 80035b2:	2d00      	cmp	r5, #0
 80035b4:	f77f acc9 	ble.w	8002f4a <_vfprintf_r+0x402>
 80035b8:	2d10      	cmp	r5, #16
 80035ba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035bc:	4bbc      	ldr	r3, [pc, #752]	; (80038b0 <_vfprintf_r+0xd68>)
 80035be:	dd27      	ble.n	8003610 <_vfprintf_r+0xac8>
 80035c0:	4659      	mov	r1, fp
 80035c2:	4620      	mov	r0, r4
 80035c4:	46bb      	mov	fp, r7
 80035c6:	461c      	mov	r4, r3
 80035c8:	4637      	mov	r7, r6
 80035ca:	9e07      	ldr	r6, [sp, #28]
 80035cc:	e004      	b.n	80035d8 <_vfprintf_r+0xa90>
 80035ce:	3d10      	subs	r5, #16
 80035d0:	2d10      	cmp	r5, #16
 80035d2:	f101 0108 	add.w	r1, r1, #8
 80035d6:	dd16      	ble.n	8003606 <_vfprintf_r+0xabe>
 80035d8:	3201      	adds	r2, #1
 80035da:	3010      	adds	r0, #16
 80035dc:	2310      	movs	r3, #16
 80035de:	2a07      	cmp	r2, #7
 80035e0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80035e4:	600c      	str	r4, [r1, #0]
 80035e6:	604b      	str	r3, [r1, #4]
 80035e8:	ddf1      	ble.n	80035ce <_vfprintf_r+0xa86>
 80035ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80035ec:	4631      	mov	r1, r6
 80035ee:	9803      	ldr	r0, [sp, #12]
 80035f0:	f003 fb16 	bl	8006c20 <__sprint_r>
 80035f4:	2800      	cmp	r0, #0
 80035f6:	f040 80a8 	bne.w	800374a <_vfprintf_r+0xc02>
 80035fa:	3d10      	subs	r5, #16
 80035fc:	2d10      	cmp	r5, #16
 80035fe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003602:	a92d      	add	r1, sp, #180	; 0xb4
 8003604:	dce8      	bgt.n	80035d8 <_vfprintf_r+0xa90>
 8003606:	463e      	mov	r6, r7
 8003608:	4623      	mov	r3, r4
 800360a:	465f      	mov	r7, fp
 800360c:	4604      	mov	r4, r0
 800360e:	468b      	mov	fp, r1
 8003610:	3201      	adds	r2, #1
 8003612:	442c      	add	r4, r5
 8003614:	2a07      	cmp	r2, #7
 8003616:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800361a:	e9cb 3500 	strd	r3, r5, [fp]
 800361e:	f300 8292 	bgt.w	8003b46 <_vfprintf_r+0xffe>
 8003622:	f10b 0b08 	add.w	fp, fp, #8
 8003626:	e490      	b.n	8002f4a <_vfprintf_r+0x402>
 8003628:	aa2a      	add	r2, sp, #168	; 0xa8
 800362a:	9907      	ldr	r1, [sp, #28]
 800362c:	9803      	ldr	r0, [sp, #12]
 800362e:	f003 faf7 	bl	8006c20 <__sprint_r>
 8003632:	2800      	cmp	r0, #0
 8003634:	f43f ad23 	beq.w	800307e <_vfprintf_r+0x536>
 8003638:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800363c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800363e:	b111      	cbz	r1, 8003646 <_vfprintf_r+0xafe>
 8003640:	9803      	ldr	r0, [sp, #12]
 8003642:	f002 f9c1 	bl	80059c8 <_free_r>
 8003646:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800364a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800364e:	07d0      	lsls	r0, r2, #31
 8003650:	d402      	bmi.n	8003658 <_vfprintf_r+0xb10>
 8003652:	0599      	lsls	r1, r3, #22
 8003654:	f140 81d0 	bpl.w	80039f8 <_vfprintf_r+0xeb0>
 8003658:	065a      	lsls	r2, r3, #25
 800365a:	f53f ab65 	bmi.w	8002d28 <_vfprintf_r+0x1e0>
 800365e:	9805      	ldr	r0, [sp, #20]
 8003660:	b057      	add	sp, #348	; 0x15c
 8003662:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003666:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003668:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800366a:	2a01      	cmp	r2, #1
 800366c:	f104 0401 	add.w	r4, r4, #1
 8003670:	f103 0501 	add.w	r5, r3, #1
 8003674:	f10b 0608 	add.w	r6, fp, #8
 8003678:	f340 811c 	ble.w	80038b4 <_vfprintf_r+0xd6c>
 800367c:	2301      	movs	r3, #1
 800367e:	2d07      	cmp	r5, #7
 8003680:	f8cb 7000 	str.w	r7, [fp]
 8003684:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003688:	f8cb 3004 	str.w	r3, [fp, #4]
 800368c:	f300 81bb 	bgt.w	8003a06 <_vfprintf_r+0xebe>
 8003690:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003692:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003694:	1c69      	adds	r1, r5, #1
 8003696:	441c      	add	r4, r3
 8003698:	2907      	cmp	r1, #7
 800369a:	910b      	str	r1, [sp, #44]	; 0x2c
 800369c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80036a0:	e9c6 2300 	strd	r2, r3, [r6]
 80036a4:	f300 81bb 	bgt.w	8003a1e <_vfprintf_r+0xed6>
 80036a8:	3608      	adds	r6, #8
 80036aa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80036ac:	1c53      	adds	r3, r2, #1
 80036ae:	461d      	mov	r5, r3
 80036b0:	9509      	str	r5, [sp, #36]	; 0x24
 80036b2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80036b4:	930e      	str	r3, [sp, #56]	; 0x38
 80036b6:	2200      	movs	r2, #0
 80036b8:	2300      	movs	r3, #0
 80036ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80036be:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80036c2:	f106 0b08 	add.w	fp, r6, #8
 80036c6:	f7fd fc9f 	bl	8001008 <__aeabi_dcmpeq>
 80036ca:	2800      	cmp	r0, #0
 80036cc:	f040 80c2 	bne.w	8003854 <_vfprintf_r+0xd0c>
 80036d0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80036d2:	f8c6 9004 	str.w	r9, [r6, #4]
 80036d6:	3701      	adds	r7, #1
 80036d8:	444c      	add	r4, r9
 80036da:	2d07      	cmp	r5, #7
 80036dc:	6037      	str	r7, [r6, #0]
 80036de:	942c      	str	r4, [sp, #176]	; 0xb0
 80036e0:	952b      	str	r5, [sp, #172]	; 0xac
 80036e2:	f300 80f9 	bgt.w	80038d8 <_vfprintf_r+0xd90>
 80036e6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80036e8:	f106 0310 	add.w	r3, r6, #16
 80036ec:	3202      	adds	r2, #2
 80036ee:	465e      	mov	r6, fp
 80036f0:	9209      	str	r2, [sp, #36]	; 0x24
 80036f2:	469b      	mov	fp, r3
 80036f4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80036f6:	6072      	str	r2, [r6, #4]
 80036f8:	4414      	add	r4, r2
 80036fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80036fc:	942c      	str	r4, [sp, #176]	; 0xb0
 80036fe:	ab26      	add	r3, sp, #152	; 0x98
 8003700:	2a07      	cmp	r2, #7
 8003702:	922b      	str	r2, [sp, #172]	; 0xac
 8003704:	6033      	str	r3, [r6, #0]
 8003706:	f77f ac70 	ble.w	8002fea <_vfprintf_r+0x4a2>
 800370a:	aa2a      	add	r2, sp, #168	; 0xa8
 800370c:	9907      	ldr	r1, [sp, #28]
 800370e:	9803      	ldr	r0, [sp, #12]
 8003710:	f003 fa86 	bl	8006c20 <__sprint_r>
 8003714:	2800      	cmp	r0, #0
 8003716:	d18f      	bne.n	8003638 <_vfprintf_r+0xaf0>
 8003718:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800371a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800371e:	e464      	b.n	8002fea <_vfprintf_r+0x4a2>
 8003720:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003722:	af56      	add	r7, sp, #344	; 0x158
 8003724:	0923      	lsrs	r3, r4, #4
 8003726:	f004 010f 	and.w	r1, r4, #15
 800372a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800372e:	092a      	lsrs	r2, r5, #4
 8003730:	461c      	mov	r4, r3
 8003732:	4615      	mov	r5, r2
 8003734:	5c43      	ldrb	r3, [r0, r1]
 8003736:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800373a:	ea54 0305 	orrs.w	r3, r4, r5
 800373e:	d1f1      	bne.n	8003724 <_vfprintf_r+0xbdc>
 8003740:	9b04      	ldr	r3, [sp, #16]
 8003742:	1bdb      	subs	r3, r3, r7
 8003744:	9309      	str	r3, [sp, #36]	; 0x24
 8003746:	f7ff bb80 	b.w	8002e4a <_vfprintf_r+0x302>
 800374a:	46b1      	mov	r9, r6
 800374c:	e776      	b.n	800363c <_vfprintf_r+0xaf4>
 800374e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003750:	9907      	ldr	r1, [sp, #28]
 8003752:	9803      	ldr	r0, [sp, #12]
 8003754:	f003 fa64 	bl	8006c20 <__sprint_r>
 8003758:	2800      	cmp	r0, #0
 800375a:	f47f af6d 	bne.w	8003638 <_vfprintf_r+0xaf0>
 800375e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003760:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003764:	f7ff bbdd 	b.w	8002f22 <_vfprintf_r+0x3da>
 8003768:	aa2a      	add	r2, sp, #168	; 0xa8
 800376a:	9907      	ldr	r1, [sp, #28]
 800376c:	9803      	ldr	r0, [sp, #12]
 800376e:	f003 fa57 	bl	8006c20 <__sprint_r>
 8003772:	2800      	cmp	r0, #0
 8003774:	f47f af60 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003778:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800377a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800377e:	f7ff bbe0 	b.w	8002f42 <_vfprintf_r+0x3fa>
 8003782:	4698      	mov	r8, r3
 8003784:	2d00      	cmp	r5, #0
 8003786:	bf08      	it	eq
 8003788:	2c0a      	cmpeq	r4, #10
 800378a:	f080 8170 	bcs.w	8003a6e <_vfprintf_r+0xf26>
 800378e:	af56      	add	r7, sp, #344	; 0x158
 8003790:	3430      	adds	r4, #48	; 0x30
 8003792:	2301      	movs	r3, #1
 8003794:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003798:	9309      	str	r3, [sp, #36]	; 0x24
 800379a:	f7ff bb56 	b.w	8002e4a <_vfprintf_r+0x302>
 800379e:	aa2a      	add	r2, sp, #168	; 0xa8
 80037a0:	9907      	ldr	r1, [sp, #28]
 80037a2:	9803      	ldr	r0, [sp, #12]
 80037a4:	f003 fa3c 	bl	8006c20 <__sprint_r>
 80037a8:	2800      	cmp	r0, #0
 80037aa:	f47f af45 	bne.w	8003638 <_vfprintf_r+0xaf0>
 80037ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037b4:	e406      	b.n	8002fc4 <_vfprintf_r+0x47c>
 80037b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037b8:	2b00      	cmp	r3, #0
 80037ba:	f340 8273 	ble.w	8003ca4 <_vfprintf_r+0x115c>
 80037be:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80037c2:	4293      	cmp	r3, r2
 80037c4:	bfa8      	it	ge
 80037c6:	4613      	movge	r3, r2
 80037c8:	2b00      	cmp	r3, #0
 80037ca:	461d      	mov	r5, r3
 80037cc:	dd0d      	ble.n	80037ea <_vfprintf_r+0xca2>
 80037ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037d0:	f8cb 7000 	str.w	r7, [fp]
 80037d4:	3301      	adds	r3, #1
 80037d6:	442c      	add	r4, r5
 80037d8:	2b07      	cmp	r3, #7
 80037da:	942c      	str	r4, [sp, #176]	; 0xb0
 80037dc:	f8cb 5004 	str.w	r5, [fp, #4]
 80037e0:	932b      	str	r3, [sp, #172]	; 0xac
 80037e2:	f300 82c1 	bgt.w	8003d68 <_vfprintf_r+0x1220>
 80037e6:	f10b 0b08 	add.w	fp, fp, #8
 80037ea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037ec:	2d00      	cmp	r5, #0
 80037ee:	bfa8      	it	ge
 80037f0:	1b5b      	subge	r3, r3, r5
 80037f2:	2b00      	cmp	r3, #0
 80037f4:	461d      	mov	r5, r3
 80037f6:	f340 8099 	ble.w	800392c <_vfprintf_r+0xde4>
 80037fa:	2d10      	cmp	r5, #16
 80037fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037fe:	4b2c      	ldr	r3, [pc, #176]	; (80038b0 <_vfprintf_r+0xd68>)
 8003800:	f340 83db 	ble.w	8003fba <_vfprintf_r+0x1472>
 8003804:	4618      	mov	r0, r3
 8003806:	4621      	mov	r1, r4
 8003808:	465b      	mov	r3, fp
 800380a:	2610      	movs	r6, #16
 800380c:	46bb      	mov	fp, r7
 800380e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003812:	9c07      	ldr	r4, [sp, #28]
 8003814:	4607      	mov	r7, r0
 8003816:	e004      	b.n	8003822 <_vfprintf_r+0xcda>
 8003818:	3308      	adds	r3, #8
 800381a:	3d10      	subs	r5, #16
 800381c:	2d10      	cmp	r5, #16
 800381e:	f340 83c7 	ble.w	8003fb0 <_vfprintf_r+0x1468>
 8003822:	3201      	adds	r2, #1
 8003824:	3110      	adds	r1, #16
 8003826:	2a07      	cmp	r2, #7
 8003828:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800382c:	e9c3 7600 	strd	r7, r6, [r3]
 8003830:	ddf2      	ble.n	8003818 <_vfprintf_r+0xcd0>
 8003832:	aa2a      	add	r2, sp, #168	; 0xa8
 8003834:	4621      	mov	r1, r4
 8003836:	4648      	mov	r0, r9
 8003838:	f003 f9f2 	bl	8006c20 <__sprint_r>
 800383c:	2800      	cmp	r0, #0
 800383e:	f040 84a5 	bne.w	800418c <_vfprintf_r+0x1644>
 8003842:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003846:	ab2d      	add	r3, sp, #180	; 0xb4
 8003848:	e7e7      	b.n	800381a <_vfprintf_r+0xcd2>
 800384a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800384e:	af56      	add	r7, sp, #344	; 0x158
 8003850:	f7ff bafb 	b.w	8002e4a <_vfprintf_r+0x302>
 8003854:	f1b9 0f00 	cmp.w	r9, #0
 8003858:	f77f af4c 	ble.w	80036f4 <_vfprintf_r+0xbac>
 800385c:	f1b9 0f10 	cmp.w	r9, #16
 8003860:	4b13      	ldr	r3, [pc, #76]	; (80038b0 <_vfprintf_r+0xd68>)
 8003862:	f340 8659 	ble.w	8004518 <_vfprintf_r+0x19d0>
 8003866:	4619      	mov	r1, r3
 8003868:	4622      	mov	r2, r4
 800386a:	4633      	mov	r3, r6
 800386c:	2710      	movs	r7, #16
 800386e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003872:	9c07      	ldr	r4, [sp, #28]
 8003874:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003876:	460e      	mov	r6, r1
 8003878:	e007      	b.n	800388a <_vfprintf_r+0xd42>
 800387a:	3308      	adds	r3, #8
 800387c:	f1a9 0910 	sub.w	r9, r9, #16
 8003880:	f1b9 0f10 	cmp.w	r9, #16
 8003884:	f340 8353 	ble.w	8003f2e <_vfprintf_r+0x13e6>
 8003888:	3501      	adds	r5, #1
 800388a:	3210      	adds	r2, #16
 800388c:	2d07      	cmp	r5, #7
 800388e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003892:	e9c3 6700 	strd	r6, r7, [r3]
 8003896:	ddf0      	ble.n	800387a <_vfprintf_r+0xd32>
 8003898:	aa2a      	add	r2, sp, #168	; 0xa8
 800389a:	4621      	mov	r1, r4
 800389c:	4658      	mov	r0, fp
 800389e:	f003 f9bf 	bl	8006c20 <__sprint_r>
 80038a2:	2800      	cmp	r0, #0
 80038a4:	f040 8472 	bne.w	800418c <_vfprintf_r+0x1644>
 80038a8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80038ac:	ab2d      	add	r3, sp, #180	; 0xb4
 80038ae:	e7e5      	b.n	800387c <_vfprintf_r+0xd34>
 80038b0:	080074a4 	.word	0x080074a4
 80038b4:	f018 0f01 	tst.w	r8, #1
 80038b8:	f47f aee0 	bne.w	800367c <_vfprintf_r+0xb34>
 80038bc:	2201      	movs	r2, #1
 80038be:	2d07      	cmp	r5, #7
 80038c0:	f8cb 7000 	str.w	r7, [fp]
 80038c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80038c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80038cc:	dc04      	bgt.n	80038d8 <_vfprintf_r+0xd90>
 80038ce:	3302      	adds	r3, #2
 80038d0:	9309      	str	r3, [sp, #36]	; 0x24
 80038d2:	f10b 0b10 	add.w	fp, fp, #16
 80038d6:	e70d      	b.n	80036f4 <_vfprintf_r+0xbac>
 80038d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038da:	9907      	ldr	r1, [sp, #28]
 80038dc:	9803      	ldr	r0, [sp, #12]
 80038de:	f003 f99f 	bl	8006c20 <__sprint_r>
 80038e2:	2800      	cmp	r0, #0
 80038e4:	f47f aea8 	bne.w	8003638 <_vfprintf_r+0xaf0>
 80038e8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80038ec:	3301      	adds	r3, #1
 80038ee:	9309      	str	r3, [sp, #36]	; 0x24
 80038f0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80038f4:	ae2d      	add	r6, sp, #180	; 0xb4
 80038f6:	e6fd      	b.n	80036f4 <_vfprintf_r+0xbac>
 80038f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038fa:	9907      	ldr	r1, [sp, #28]
 80038fc:	9803      	ldr	r0, [sp, #12]
 80038fe:	f003 f98f 	bl	8006c20 <__sprint_r>
 8003902:	2800      	cmp	r0, #0
 8003904:	f47f ae98 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003908:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800390c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800390e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003912:	f7ff baf6 	b.w	8002f02 <_vfprintf_r+0x3ba>
 8003916:	aa2a      	add	r2, sp, #168	; 0xa8
 8003918:	9907      	ldr	r1, [sp, #28]
 800391a:	9803      	ldr	r0, [sp, #12]
 800391c:	f003 f980 	bl	8006c20 <__sprint_r>
 8003920:	2800      	cmp	r0, #0
 8003922:	f47f ae89 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003926:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003928:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800392c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800392e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003932:	443b      	add	r3, r7
 8003934:	4699      	mov	r9, r3
 8003936:	f040 8357 	bne.w	8003fe8 <_vfprintf_r+0x14a0>
 800393a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800393c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800393e:	4293      	cmp	r3, r2
 8003940:	db49      	blt.n	80039d6 <_vfprintf_r+0xe8e>
 8003942:	f018 0f01 	tst.w	r8, #1
 8003946:	d146      	bne.n	80039d6 <_vfprintf_r+0xe8e>
 8003948:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800394a:	18bd      	adds	r5, r7, r2
 800394c:	eba5 0509 	sub.w	r5, r5, r9
 8003950:	1ad3      	subs	r3, r2, r3
 8003952:	429d      	cmp	r5, r3
 8003954:	bfa8      	it	ge
 8003956:	461d      	movge	r5, r3
 8003958:	2d00      	cmp	r5, #0
 800395a:	dd0d      	ble.n	8003978 <_vfprintf_r+0xe30>
 800395c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800395e:	f8cb 9000 	str.w	r9, [fp]
 8003962:	3201      	adds	r2, #1
 8003964:	442c      	add	r4, r5
 8003966:	2a07      	cmp	r2, #7
 8003968:	942c      	str	r4, [sp, #176]	; 0xb0
 800396a:	f8cb 5004 	str.w	r5, [fp, #4]
 800396e:	922b      	str	r2, [sp, #172]	; 0xac
 8003970:	f300 8462 	bgt.w	8004238 <_vfprintf_r+0x16f0>
 8003974:	f10b 0b08 	add.w	fp, fp, #8
 8003978:	2d00      	cmp	r5, #0
 800397a:	bfac      	ite	ge
 800397c:	1b5d      	subge	r5, r3, r5
 800397e:	461d      	movlt	r5, r3
 8003980:	2d00      	cmp	r5, #0
 8003982:	f77f ab32 	ble.w	8002fea <_vfprintf_r+0x4a2>
 8003986:	2d10      	cmp	r5, #16
 8003988:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800398a:	4bc5      	ldr	r3, [pc, #788]	; (8003ca0 <_vfprintf_r+0x1158>)
 800398c:	f340 80c4 	ble.w	8003b18 <_vfprintf_r+0xfd0>
 8003990:	4619      	mov	r1, r3
 8003992:	2610      	movs	r6, #16
 8003994:	4623      	mov	r3, r4
 8003996:	9f03      	ldr	r7, [sp, #12]
 8003998:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800399c:	460c      	mov	r4, r1
 800399e:	e005      	b.n	80039ac <_vfprintf_r+0xe64>
 80039a0:	f10b 0b08 	add.w	fp, fp, #8
 80039a4:	3d10      	subs	r5, #16
 80039a6:	2d10      	cmp	r5, #16
 80039a8:	f340 80b3 	ble.w	8003b12 <_vfprintf_r+0xfca>
 80039ac:	3201      	adds	r2, #1
 80039ae:	3310      	adds	r3, #16
 80039b0:	2a07      	cmp	r2, #7
 80039b2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80039b6:	e9cb 4600 	strd	r4, r6, [fp]
 80039ba:	ddf1      	ble.n	80039a0 <_vfprintf_r+0xe58>
 80039bc:	aa2a      	add	r2, sp, #168	; 0xa8
 80039be:	4649      	mov	r1, r9
 80039c0:	4638      	mov	r0, r7
 80039c2:	f003 f92d 	bl	8006c20 <__sprint_r>
 80039c6:	2800      	cmp	r0, #0
 80039c8:	f47f ae38 	bne.w	800363c <_vfprintf_r+0xaf4>
 80039cc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80039d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039d4:	e7e6      	b.n	80039a4 <_vfprintf_r+0xe5c>
 80039d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039d8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80039da:	f8cb 1000 	str.w	r1, [fp]
 80039de:	9915      	ldr	r1, [sp, #84]	; 0x54
 80039e0:	f8cb 1004 	str.w	r1, [fp, #4]
 80039e4:	3201      	adds	r2, #1
 80039e6:	440c      	add	r4, r1
 80039e8:	2a07      	cmp	r2, #7
 80039ea:	942c      	str	r4, [sp, #176]	; 0xb0
 80039ec:	922b      	str	r2, [sp, #172]	; 0xac
 80039ee:	f300 828c 	bgt.w	8003f0a <_vfprintf_r+0x13c2>
 80039f2:	f10b 0b08 	add.w	fp, fp, #8
 80039f6:	e7a7      	b.n	8003948 <_vfprintf_r+0xe00>
 80039f8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80039fc:	f002 fa94 	bl	8005f28 <__retarget_lock_release_recursive>
 8003a00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003a04:	e628      	b.n	8003658 <_vfprintf_r+0xb10>
 8003a06:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a08:	9907      	ldr	r1, [sp, #28]
 8003a0a:	9803      	ldr	r0, [sp, #12]
 8003a0c:	f003 f908 	bl	8006c20 <__sprint_r>
 8003a10:	2800      	cmp	r0, #0
 8003a12:	f47f ae11 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003a16:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003a1a:	ae2d      	add	r6, sp, #180	; 0xb4
 8003a1c:	e638      	b.n	8003690 <_vfprintf_r+0xb48>
 8003a1e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a20:	9907      	ldr	r1, [sp, #28]
 8003a22:	9803      	ldr	r0, [sp, #12]
 8003a24:	f003 f8fc 	bl	8006c20 <__sprint_r>
 8003a28:	2800      	cmp	r0, #0
 8003a2a:	f47f ae05 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003a2e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003a32:	ae2d      	add	r6, sp, #180	; 0xb4
 8003a34:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a36:	e638      	b.n	80036aa <_vfprintf_r+0xb62>
 8003a38:	6814      	ldr	r4, [r2, #0]
 8003a3a:	9308      	str	r3, [sp, #32]
 8003a3c:	2500      	movs	r5, #0
 8003a3e:	f7ff bb95 	b.w	800316c <_vfprintf_r+0x624>
 8003a42:	6814      	ldr	r4, [r2, #0]
 8003a44:	9308      	str	r3, [sp, #32]
 8003a46:	2500      	movs	r5, #0
 8003a48:	f7ff b9ae 	b.w	8002da8 <_vfprintf_r+0x260>
 8003a4c:	680c      	ldr	r4, [r1, #0]
 8003a4e:	9208      	str	r2, [sp, #32]
 8003a50:	17e5      	asrs	r5, r4, #31
 8003a52:	4620      	mov	r0, r4
 8003a54:	4629      	mov	r1, r5
 8003a56:	f7ff b9d2 	b.w	8002dfe <_vfprintf_r+0x2b6>
 8003a5a:	6814      	ldr	r4, [r2, #0]
 8003a5c:	9108      	str	r1, [sp, #32]
 8003a5e:	2201      	movs	r2, #1
 8003a60:	2500      	movs	r5, #0
 8003a62:	f7ff bb32 	b.w	80030ca <_vfprintf_r+0x582>
 8003a66:	2a01      	cmp	r2, #1
 8003a68:	f47f ab3c 	bne.w	80030e4 <_vfprintf_r+0x59c>
 8003a6c:	e68f      	b.n	800378e <_vfprintf_r+0xc46>
 8003a6e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003a72:	2200      	movs	r2, #0
 8003a74:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003a78:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003a7c:	af56      	add	r7, sp, #344	; 0x158
 8003a7e:	4692      	mov	sl, r2
 8003a80:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003a84:	461e      	mov	r6, r3
 8003a86:	e00a      	b.n	8003a9e <_vfprintf_r+0xf56>
 8003a88:	2300      	movs	r3, #0
 8003a8a:	4620      	mov	r0, r4
 8003a8c:	4629      	mov	r1, r5
 8003a8e:	220a      	movs	r2, #10
 8003a90:	f7fc fbb6 	bl	8000200 <__aeabi_uldivmod>
 8003a94:	4604      	mov	r4, r0
 8003a96:	460d      	mov	r5, r1
 8003a98:	ea54 0305 	orrs.w	r3, r4, r5
 8003a9c:	d029      	beq.n	8003af2 <_vfprintf_r+0xfaa>
 8003a9e:	220a      	movs	r2, #10
 8003aa0:	2300      	movs	r3, #0
 8003aa2:	4620      	mov	r0, r4
 8003aa4:	4629      	mov	r1, r5
 8003aa6:	f7fc fbab 	bl	8000200 <__aeabi_uldivmod>
 8003aaa:	3230      	adds	r2, #48	; 0x30
 8003aac:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003ab0:	f10a 0a01 	add.w	sl, sl, #1
 8003ab4:	3f01      	subs	r7, #1
 8003ab6:	2e00      	cmp	r6, #0
 8003ab8:	d0e6      	beq.n	8003a88 <_vfprintf_r+0xf40>
 8003aba:	f898 3000 	ldrb.w	r3, [r8]
 8003abe:	459a      	cmp	sl, r3
 8003ac0:	d1e2      	bne.n	8003a88 <_vfprintf_r+0xf40>
 8003ac2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003ac6:	d0df      	beq.n	8003a88 <_vfprintf_r+0xf40>
 8003ac8:	2d00      	cmp	r5, #0
 8003aca:	bf08      	it	eq
 8003acc:	2c0a      	cmpeq	r4, #10
 8003ace:	d3db      	bcc.n	8003a88 <_vfprintf_r+0xf40>
 8003ad0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003ad2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003ad4:	1aff      	subs	r7, r7, r3
 8003ad6:	461a      	mov	r2, r3
 8003ad8:	4638      	mov	r0, r7
 8003ada:	f003 f833 	bl	8006b44 <strncpy>
 8003ade:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003ae2:	2b00      	cmp	r3, #0
 8003ae4:	f000 8496 	beq.w	8004414 <_vfprintf_r+0x18cc>
 8003ae8:	f108 0801 	add.w	r8, r8, #1
 8003aec:	f04f 0a00 	mov.w	sl, #0
 8003af0:	e7ca      	b.n	8003a88 <_vfprintf_r+0xf40>
 8003af2:	9b04      	ldr	r3, [sp, #16]
 8003af4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003af8:	1bdb      	subs	r3, r3, r7
 8003afa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003afe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003b00:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003b04:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003b08:	9309      	str	r3, [sp, #36]	; 0x24
 8003b0a:	f7ff b99e 	b.w	8002e4a <_vfprintf_r+0x302>
 8003b0e:	46c1      	mov	r9, r8
 8003b10:	e594      	b.n	800363c <_vfprintf_r+0xaf4>
 8003b12:	4621      	mov	r1, r4
 8003b14:	461c      	mov	r4, r3
 8003b16:	460b      	mov	r3, r1
 8003b18:	3201      	adds	r2, #1
 8003b1a:	442c      	add	r4, r5
 8003b1c:	2a07      	cmp	r2, #7
 8003b1e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b22:	e9cb 3500 	strd	r3, r5, [fp]
 8003b26:	f77f aa5e 	ble.w	8002fe6 <_vfprintf_r+0x49e>
 8003b2a:	e5ee      	b.n	800370a <_vfprintf_r+0xbc2>
 8003b2c:	f018 0f10 	tst.w	r8, #16
 8003b30:	f040 80f8 	bne.w	8003d24 <_vfprintf_r+0x11dc>
 8003b34:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003b38:	f000 8351 	beq.w	80041de <_vfprintf_r+0x1696>
 8003b3c:	9a05      	ldr	r2, [sp, #20]
 8003b3e:	801a      	strh	r2, [r3, #0]
 8003b40:	4657      	mov	r7, sl
 8003b42:	f7ff baa7 	b.w	8003094 <_vfprintf_r+0x54c>
 8003b46:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b48:	9907      	ldr	r1, [sp, #28]
 8003b4a:	9803      	ldr	r0, [sp, #12]
 8003b4c:	f003 f868 	bl	8006c20 <__sprint_r>
 8003b50:	2800      	cmp	r0, #0
 8003b52:	f47f ad71 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003b56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b5c:	f7ff b9f5 	b.w	8002f4a <_vfprintf_r+0x402>
 8003b60:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003b64:	4602      	mov	r2, r0
 8003b66:	460b      	mov	r3, r1
 8003b68:	f7fd fa80 	bl	800106c <__aeabi_dcmpun>
 8003b6c:	2800      	cmp	r0, #0
 8003b6e:	f040 8491 	bne.w	8004494 <_vfprintf_r+0x194c>
 8003b72:	2e61      	cmp	r6, #97	; 0x61
 8003b74:	f000 8111 	beq.w	8003d9a <_vfprintf_r+0x1252>
 8003b78:	2e41      	cmp	r6, #65	; 0x41
 8003b7a:	f000 8377 	beq.w	800426c <_vfprintf_r+0x1724>
 8003b7e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003b82:	f026 0220 	bic.w	r2, r6, #32
 8003b86:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003b8a:	930e      	str	r3, [sp, #56]	; 0x38
 8003b8c:	9204      	str	r2, [sp, #16]
 8003b8e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b90:	f000 842d 	beq.w	80043ee <_vfprintf_r+0x18a6>
 8003b94:	2a47      	cmp	r2, #71	; 0x47
 8003b96:	f000 8424 	beq.w	80043e2 <_vfprintf_r+0x189a>
 8003b9a:	2b00      	cmp	r3, #0
 8003b9c:	f2c0 82f9 	blt.w	8004192 <_vfprintf_r+0x164a>
 8003ba0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003ba4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003ba8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003bac:	2e66      	cmp	r6, #102	; 0x66
 8003bae:	f000 83eb 	beq.w	8004388 <_vfprintf_r+0x1840>
 8003bb2:	2e46      	cmp	r6, #70	; 0x46
 8003bb4:	f000 847e 	beq.w	80044b4 <_vfprintf_r+0x196c>
 8003bb8:	9b04      	ldr	r3, [sp, #16]
 8003bba:	9803      	ldr	r0, [sp, #12]
 8003bbc:	2b45      	cmp	r3, #69	; 0x45
 8003bbe:	bf0c      	ite	eq
 8003bc0:	f109 0501 	addeq.w	r5, r9, #1
 8003bc4:	464d      	movne	r5, r9
 8003bc6:	aa28      	add	r2, sp, #160	; 0xa0
 8003bc8:	ab25      	add	r3, sp, #148	; 0x94
 8003bca:	e9cd 3200 	strd	r3, r2, [sp]
 8003bce:	2102      	movs	r1, #2
 8003bd0:	ab24      	add	r3, sp, #144	; 0x90
 8003bd2:	462a      	mov	r2, r5
 8003bd4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bd8:	f000 fe3e 	bl	8004858 <_dtoa_r>
 8003bdc:	2e67      	cmp	r6, #103	; 0x67
 8003bde:	4607      	mov	r7, r0
 8003be0:	f040 849c 	bne.w	800451c <_vfprintf_r+0x19d4>
 8003be4:	f018 0f01 	tst.w	r8, #1
 8003be8:	f040 83f9 	bne.w	80043de <_vfprintf_r+0x1896>
 8003bec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bee:	4640      	mov	r0, r8
 8003bf0:	1bdb      	subs	r3, r3, r7
 8003bf2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003bf6:	9310      	str	r3, [sp, #64]	; 0x40
 8003bf8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bfa:	9311      	str	r3, [sp, #68]	; 0x44
 8003bfc:	9b04      	ldr	r3, [sp, #16]
 8003bfe:	2b47      	cmp	r3, #71	; 0x47
 8003c00:	f000 81e7 	beq.w	8003fd2 <_vfprintf_r+0x148a>
 8003c04:	9b04      	ldr	r3, [sp, #16]
 8003c06:	2b46      	cmp	r3, #70	; 0x46
 8003c08:	f000 8300 	beq.w	800420c <_vfprintf_r+0x16c4>
 8003c0c:	9904      	ldr	r1, [sp, #16]
 8003c0e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c10:	b2f2      	uxtb	r2, r6
 8003c12:	2941      	cmp	r1, #65	; 0x41
 8003c14:	bf08      	it	eq
 8003c16:	320f      	addeq	r2, #15
 8003c18:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003c1c:	bf06      	itte	eq
 8003c1e:	b2d2      	uxtbeq	r2, r2
 8003c20:	2101      	moveq	r1, #1
 8003c22:	2100      	movne	r1, #0
 8003c24:	2b00      	cmp	r3, #0
 8003c26:	9324      	str	r3, [sp, #144]	; 0x90
 8003c28:	bfb8      	it	lt
 8003c2a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003c2c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003c30:	bfba      	itte	lt
 8003c32:	f1c3 0301 	rsblt	r3, r3, #1
 8003c36:	222d      	movlt	r2, #45	; 0x2d
 8003c38:	222b      	movge	r2, #43	; 0x2b
 8003c3a:	2b09      	cmp	r3, #9
 8003c3c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003c40:	f300 83f9 	bgt.w	8004436 <_vfprintf_r+0x18ee>
 8003c44:	2900      	cmp	r1, #0
 8003c46:	f040 8487 	bne.w	8004558 <_vfprintf_r+0x1a10>
 8003c4a:	2230      	movs	r2, #48	; 0x30
 8003c4c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003c50:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003c54:	3330      	adds	r3, #48	; 0x30
 8003c56:	7013      	strb	r3, [r2, #0]
 8003c58:	1c53      	adds	r3, r2, #1
 8003c5a:	aa26      	add	r2, sp, #152	; 0x98
 8003c5c:	1a9b      	subs	r3, r3, r2
 8003c5e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c60:	9319      	str	r3, [sp, #100]	; 0x64
 8003c62:	2a01      	cmp	r2, #1
 8003c64:	4413      	add	r3, r2
 8003c66:	9309      	str	r3, [sp, #36]	; 0x24
 8003c68:	f340 8442 	ble.w	80044f0 <_vfprintf_r+0x19a8>
 8003c6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c6e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c70:	4413      	add	r3, r2
 8003c72:	9309      	str	r3, [sp, #36]	; 0x24
 8003c74:	2300      	movs	r3, #0
 8003c76:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c78:	9314      	str	r3, [sp, #80]	; 0x50
 8003c7a:	9311      	str	r3, [sp, #68]	; 0x44
 8003c7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c7e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003c82:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c86:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003c8a:	9304      	str	r3, [sp, #16]
 8003c8c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003c8e:	2b00      	cmp	r3, #0
 8003c90:	f040 8275 	bne.w	800417e <_vfprintf_r+0x1636>
 8003c94:	4699      	mov	r9, r3
 8003c96:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003c9a:	f7ff b8e2 	b.w	8002e62 <_vfprintf_r+0x31a>
 8003c9e:	bf00      	nop
 8003ca0:	080074a4 	.word	0x080074a4
 8003ca4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ca6:	49bd      	ldr	r1, [pc, #756]	; (8003f9c <_vfprintf_r+0x1454>)
 8003ca8:	f8cb 1000 	str.w	r1, [fp]
 8003cac:	3201      	adds	r2, #1
 8003cae:	3401      	adds	r4, #1
 8003cb0:	2101      	movs	r1, #1
 8003cb2:	2a07      	cmp	r2, #7
 8003cb4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cb8:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cbc:	dc60      	bgt.n	8003d80 <_vfprintf_r+0x1238>
 8003cbe:	f10b 0b08 	add.w	fp, fp, #8
 8003cc2:	b92b      	cbnz	r3, 8003cd0 <_vfprintf_r+0x1188>
 8003cc4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003cc6:	b91a      	cbnz	r2, 8003cd0 <_vfprintf_r+0x1188>
 8003cc8:	f018 0f01 	tst.w	r8, #1
 8003ccc:	f43f a98d 	beq.w	8002fea <_vfprintf_r+0x4a2>
 8003cd0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003cd2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003cd4:	f8cb 1000 	str.w	r1, [fp]
 8003cd8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003cda:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cde:	3201      	adds	r2, #1
 8003ce0:	440c      	add	r4, r1
 8003ce2:	2a07      	cmp	r2, #7
 8003ce4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ce6:	922b      	str	r2, [sp, #172]	; 0xac
 8003ce8:	f300 8282 	bgt.w	80041f0 <_vfprintf_r+0x16a8>
 8003cec:	f10b 0b08 	add.w	fp, fp, #8
 8003cf0:	2b00      	cmp	r3, #0
 8003cf2:	f2c0 82e7 	blt.w	80042c4 <_vfprintf_r+0x177c>
 8003cf6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cf8:	3201      	adds	r2, #1
 8003cfa:	441c      	add	r4, r3
 8003cfc:	2a07      	cmp	r2, #7
 8003cfe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d02:	e9cb 7300 	strd	r7, r3, [fp]
 8003d06:	f77f a96e 	ble.w	8002fe6 <_vfprintf_r+0x49e>
 8003d0a:	e4fe      	b.n	800370a <_vfprintf_r+0xbc2>
 8003d0c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d0e:	9907      	ldr	r1, [sp, #28]
 8003d10:	9803      	ldr	r0, [sp, #12]
 8003d12:	f002 ff85 	bl	8006c20 <__sprint_r>
 8003d16:	2800      	cmp	r0, #0
 8003d18:	f47f ac8e 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003d1c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d20:	f7ff bbf0 	b.w	8003504 <_vfprintf_r+0x9bc>
 8003d24:	9a05      	ldr	r2, [sp, #20]
 8003d26:	601a      	str	r2, [r3, #0]
 8003d28:	4657      	mov	r7, sl
 8003d2a:	f7ff b9b3 	b.w	8003094 <_vfprintf_r+0x54c>
 8003d2e:	8814      	ldrh	r4, [r2, #0]
 8003d30:	9108      	str	r1, [sp, #32]
 8003d32:	2500      	movs	r5, #0
 8003d34:	2201      	movs	r2, #1
 8003d36:	f7ff b9c8 	b.w	80030ca <_vfprintf_r+0x582>
 8003d3a:	8814      	ldrh	r4, [r2, #0]
 8003d3c:	9308      	str	r3, [sp, #32]
 8003d3e:	2500      	movs	r5, #0
 8003d40:	f7ff ba14 	b.w	800316c <_vfprintf_r+0x624>
 8003d44:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003d48:	9208      	str	r2, [sp, #32]
 8003d4a:	17e5      	asrs	r5, r4, #31
 8003d4c:	4620      	mov	r0, r4
 8003d4e:	4629      	mov	r1, r5
 8003d50:	f7ff b855 	b.w	8002dfe <_vfprintf_r+0x2b6>
 8003d54:	8814      	ldrh	r4, [r2, #0]
 8003d56:	9308      	str	r3, [sp, #32]
 8003d58:	2500      	movs	r5, #0
 8003d5a:	f7ff b825 	b.w	8002da8 <_vfprintf_r+0x260>
 8003d5e:	222d      	movs	r2, #45	; 0x2d
 8003d60:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d64:	f7ff baa2 	b.w	80032ac <_vfprintf_r+0x764>
 8003d68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d6a:	9907      	ldr	r1, [sp, #28]
 8003d6c:	9803      	ldr	r0, [sp, #12]
 8003d6e:	f002 ff57 	bl	8006c20 <__sprint_r>
 8003d72:	2800      	cmp	r0, #0
 8003d74:	f47f ac60 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003d78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d7e:	e534      	b.n	80037ea <_vfprintf_r+0xca2>
 8003d80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d82:	9907      	ldr	r1, [sp, #28]
 8003d84:	9803      	ldr	r0, [sp, #12]
 8003d86:	f002 ff4b 	bl	8006c20 <__sprint_r>
 8003d8a:	2800      	cmp	r0, #0
 8003d8c:	f47f ac54 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003d90:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d92:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d94:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d98:	e793      	b.n	8003cc2 <_vfprintf_r+0x117a>
 8003d9a:	2330      	movs	r3, #48	; 0x30
 8003d9c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003da0:	2378      	movs	r3, #120	; 0x78
 8003da2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003da6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003daa:	f048 0402 	orr.w	r4, r8, #2
 8003dae:	f300 82b0 	bgt.w	8004312 <_vfprintf_r+0x17ca>
 8003db2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003db6:	930e      	str	r3, [sp, #56]	; 0x38
 8003db8:	f026 0320 	bic.w	r3, r6, #32
 8003dbc:	9304      	str	r3, [sp, #16]
 8003dbe:	2200      	movs	r2, #0
 8003dc0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003dc2:	920a      	str	r2, [sp, #40]	; 0x28
 8003dc4:	46a0      	mov	r8, r4
 8003dc6:	af3d      	add	r7, sp, #244	; 0xf4
 8003dc8:	2b00      	cmp	r3, #0
 8003dca:	f2c0 81e3 	blt.w	8004194 <_vfprintf_r+0x164c>
 8003dce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003dd2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003dd6:	2300      	movs	r3, #0
 8003dd8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003dda:	2e61      	cmp	r6, #97	; 0x61
 8003ddc:	f000 8255 	beq.w	800428a <_vfprintf_r+0x1742>
 8003de0:	2e41      	cmp	r6, #65	; 0x41
 8003de2:	f47f aee3 	bne.w	8003bac <_vfprintf_r+0x1064>
 8003de6:	a824      	add	r0, sp, #144	; 0x90
 8003de8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003dec:	f002 fe32 	bl	8006a54 <frexp>
 8003df0:	2200      	movs	r2, #0
 8003df2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003df6:	ec51 0b10 	vmov	r0, r1, d0
 8003dfa:	f7fc fe9d 	bl	8000b38 <__aeabi_dmul>
 8003dfe:	2200      	movs	r2, #0
 8003e00:	2300      	movs	r3, #0
 8003e02:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003e06:	f7fd f8ff 	bl	8001008 <__aeabi_dcmpeq>
 8003e0a:	2800      	cmp	r0, #0
 8003e0c:	f040 8305 	bne.w	800441a <_vfprintf_r+0x18d2>
 8003e10:	4b63      	ldr	r3, [pc, #396]	; (8003fa0 <_vfprintf_r+0x1458>)
 8003e12:	9309      	str	r3, [sp, #36]	; 0x24
 8003e14:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003e18:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003e1c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003e20:	9721      	str	r7, [sp, #132]	; 0x84
 8003e22:	46b9      	mov	r9, r7
 8003e24:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003e28:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003e2c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003e30:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003e34:	e003      	b.n	8003e3e <_vfprintf_r+0x12f6>
 8003e36:	f7fd f8e7 	bl	8001008 <__aeabi_dcmpeq>
 8003e3a:	bb20      	cbnz	r0, 8003e86 <_vfprintf_r+0x133e>
 8003e3c:	46a9      	mov	r9, r5
 8003e3e:	2200      	movs	r2, #0
 8003e40:	4b58      	ldr	r3, [pc, #352]	; (8003fa4 <_vfprintf_r+0x145c>)
 8003e42:	4630      	mov	r0, r6
 8003e44:	4639      	mov	r1, r7
 8003e46:	f7fc fe77 	bl	8000b38 <__aeabi_dmul>
 8003e4a:	460f      	mov	r7, r1
 8003e4c:	4606      	mov	r6, r0
 8003e4e:	f7fd f923 	bl	8001098 <__aeabi_d2iz>
 8003e52:	4680      	mov	r8, r0
 8003e54:	f7fc fe06 	bl	8000a64 <__aeabi_i2d>
 8003e58:	4602      	mov	r2, r0
 8003e5a:	460b      	mov	r3, r1
 8003e5c:	4630      	mov	r0, r6
 8003e5e:	4639      	mov	r1, r7
 8003e60:	f7fc fcb2 	bl	80007c8 <__aeabi_dsub>
 8003e64:	464d      	mov	r5, r9
 8003e66:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003e6a:	f805 cb01 	strb.w	ip, [r5], #1
 8003e6e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003e72:	46a3      	mov	fp, r4
 8003e74:	4606      	mov	r6, r0
 8003e76:	460f      	mov	r7, r1
 8003e78:	f04f 0200 	mov.w	r2, #0
 8003e7c:	f04f 0300 	mov.w	r3, #0
 8003e80:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003e84:	d1d7      	bne.n	8003e36 <_vfprintf_r+0x12ee>
 8003e86:	4630      	mov	r0, r6
 8003e88:	4639      	mov	r1, r7
 8003e8a:	2200      	movs	r2, #0
 8003e8c:	4b46      	ldr	r3, [pc, #280]	; (8003fa8 <_vfprintf_r+0x1460>)
 8003e8e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003e92:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003e94:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003e98:	4644      	mov	r4, r8
 8003e9a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003e9e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ea2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ea6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003eaa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003eac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003eb0:	f7fd f8d2 	bl	8001058 <__aeabi_dcmpgt>
 8003eb4:	2800      	cmp	r0, #0
 8003eb6:	f040 8176 	bne.w	80041a6 <_vfprintf_r+0x165e>
 8003eba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003ebe:	2200      	movs	r2, #0
 8003ec0:	4b39      	ldr	r3, [pc, #228]	; (8003fa8 <_vfprintf_r+0x1460>)
 8003ec2:	f7fd f8a1 	bl	8001008 <__aeabi_dcmpeq>
 8003ec6:	b110      	cbz	r0, 8003ece <_vfprintf_r+0x1386>
 8003ec8:	07e2      	lsls	r2, r4, #31
 8003eca:	f100 816c 	bmi.w	80041a6 <_vfprintf_r+0x165e>
 8003ece:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ed0:	2b00      	cmp	r3, #0
 8003ed2:	db07      	blt.n	8003ee4 <_vfprintf_r+0x139c>
 8003ed4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ed6:	3301      	adds	r3, #1
 8003ed8:	442b      	add	r3, r5
 8003eda:	2230      	movs	r2, #48	; 0x30
 8003edc:	f805 2b01 	strb.w	r2, [r5], #1
 8003ee0:	42ab      	cmp	r3, r5
 8003ee2:	d1fb      	bne.n	8003edc <_vfprintf_r+0x1394>
 8003ee4:	1beb      	subs	r3, r5, r7
 8003ee6:	4640      	mov	r0, r8
 8003ee8:	9310      	str	r3, [sp, #64]	; 0x40
 8003eea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003eee:	e683      	b.n	8003bf8 <_vfprintf_r+0x10b0>
 8003ef0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003ef4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003ef8:	9408      	str	r4, [sp, #32]
 8003efa:	4681      	mov	r9, r0
 8003efc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003efe:	9014      	str	r0, [sp, #80]	; 0x50
 8003f00:	9011      	str	r0, [sp, #68]	; 0x44
 8003f02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f06:	f7fe bfac 	b.w	8002e62 <_vfprintf_r+0x31a>
 8003f0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f0c:	9907      	ldr	r1, [sp, #28]
 8003f0e:	9803      	ldr	r0, [sp, #12]
 8003f10:	f002 fe86 	bl	8006c20 <__sprint_r>
 8003f14:	2800      	cmp	r0, #0
 8003f16:	f47f ab8f 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003f1a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f22:	e511      	b.n	8003948 <_vfprintf_r+0xe00>
 8003f24:	4252      	negs	r2, r2
 8003f26:	9206      	str	r2, [sp, #24]
 8003f28:	9308      	str	r3, [sp, #32]
 8003f2a:	f7ff b96d 	b.w	8003208 <_vfprintf_r+0x6c0>
 8003f2e:	4614      	mov	r4, r2
 8003f30:	4632      	mov	r2, r6
 8003f32:	461e      	mov	r6, r3
 8003f34:	4613      	mov	r3, r2
 8003f36:	462a      	mov	r2, r5
 8003f38:	3201      	adds	r2, #1
 8003f3a:	9209      	str	r2, [sp, #36]	; 0x24
 8003f3c:	f106 0208 	add.w	r2, r6, #8
 8003f40:	e9c6 3900 	strd	r3, r9, [r6]
 8003f44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f46:	932b      	str	r3, [sp, #172]	; 0xac
 8003f48:	444c      	add	r4, r9
 8003f4a:	2b07      	cmp	r3, #7
 8003f4c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f4e:	f73f acc3 	bgt.w	80038d8 <_vfprintf_r+0xd90>
 8003f52:	3301      	adds	r3, #1
 8003f54:	9309      	str	r3, [sp, #36]	; 0x24
 8003f56:	f102 0b08 	add.w	fp, r2, #8
 8003f5a:	4616      	mov	r6, r2
 8003f5c:	f7ff bbca 	b.w	80036f4 <_vfprintf_r+0xbac>
 8003f60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f62:	9907      	ldr	r1, [sp, #28]
 8003f64:	9803      	ldr	r0, [sp, #12]
 8003f66:	f002 fe5b 	bl	8006c20 <__sprint_r>
 8003f6a:	2800      	cmp	r0, #0
 8003f6c:	f47f ab64 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8003f70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f72:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f76:	f7ff bade 	b.w	8003536 <_vfprintf_r+0x9ee>
 8003f7a:	464b      	mov	r3, r9
 8003f7c:	2b06      	cmp	r3, #6
 8003f7e:	bf28      	it	cs
 8003f80:	2306      	movcs	r3, #6
 8003f82:	46b9      	mov	r9, r7
 8003f84:	970f      	str	r7, [sp, #60]	; 0x3c
 8003f86:	9714      	str	r7, [sp, #80]	; 0x50
 8003f88:	9711      	str	r7, [sp, #68]	; 0x44
 8003f8a:	970a      	str	r7, [sp, #40]	; 0x28
 8003f8c:	463a      	mov	r2, r7
 8003f8e:	9304      	str	r3, [sp, #16]
 8003f90:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003f94:	4f05      	ldr	r7, [pc, #20]	; (8003fac <_vfprintf_r+0x1464>)
 8003f96:	f7fe bf64 	b.w	8002e62 <_vfprintf_r+0x31a>
 8003f9a:	bf00      	nop
 8003f9c:	08007490 	.word	0x08007490
 8003fa0:	08007474 	.word	0x08007474
 8003fa4:	40300000 	.word	0x40300000
 8003fa8:	3fe00000 	.word	0x3fe00000
 8003fac:	08007488 	.word	0x08007488
 8003fb0:	460c      	mov	r4, r1
 8003fb2:	4639      	mov	r1, r7
 8003fb4:	465f      	mov	r7, fp
 8003fb6:	469b      	mov	fp, r3
 8003fb8:	460b      	mov	r3, r1
 8003fba:	3201      	adds	r2, #1
 8003fbc:	442c      	add	r4, r5
 8003fbe:	2a07      	cmp	r2, #7
 8003fc0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fc4:	e9cb 3500 	strd	r3, r5, [fp]
 8003fc8:	f73f aca5 	bgt.w	8003916 <_vfprintf_r+0xdce>
 8003fcc:	f10b 0b08 	add.w	fp, fp, #8
 8003fd0:	e4ac      	b.n	800392c <_vfprintf_r+0xde4>
 8003fd2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fd4:	1cda      	adds	r2, r3, #3
 8003fd6:	db02      	blt.n	8003fde <_vfprintf_r+0x1496>
 8003fd8:	4599      	cmp	r9, r3
 8003fda:	f280 80b5 	bge.w	8004148 <_vfprintf_r+0x1600>
 8003fde:	3e02      	subs	r6, #2
 8003fe0:	f026 0320 	bic.w	r3, r6, #32
 8003fe4:	9304      	str	r3, [sp, #16]
 8003fe6:	e611      	b.n	8003c0c <_vfprintf_r+0x10c4>
 8003fe8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003fee:	465a      	mov	r2, fp
 8003ff0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003ff4:	18fb      	adds	r3, r7, r3
 8003ff6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003ffa:	970c      	str	r7, [sp, #48]	; 0x30
 8003ffc:	4eaf      	ldr	r6, [pc, #700]	; (80042bc <_vfprintf_r+0x1774>)
 8003ffe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8004002:	9309      	str	r3, [sp, #36]	; 0x24
 8004004:	464f      	mov	r7, r9
 8004006:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800400a:	4621      	mov	r1, r4
 800400c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800400e:	2b00      	cmp	r3, #0
 8004010:	d05b      	beq.n	80040ca <_vfprintf_r+0x1582>
 8004012:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004014:	2b00      	cmp	r3, #0
 8004016:	d154      	bne.n	80040c2 <_vfprintf_r+0x157a>
 8004018:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800401a:	3b01      	subs	r3, #1
 800401c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004020:	9314      	str	r3, [sp, #80]	; 0x50
 8004022:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004024:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004026:	6010      	str	r0, [r2, #0]
 8004028:	3301      	adds	r3, #1
 800402a:	4459      	add	r1, fp
 800402c:	2b07      	cmp	r3, #7
 800402e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004030:	f8c2 b004 	str.w	fp, [r2, #4]
 8004034:	932b      	str	r3, [sp, #172]	; 0xac
 8004036:	dc68      	bgt.n	800410a <_vfprintf_r+0x15c2>
 8004038:	3208      	adds	r2, #8
 800403a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800403c:	f898 3000 	ldrb.w	r3, [r8]
 8004040:	1bc5      	subs	r5, r0, r7
 8004042:	429d      	cmp	r5, r3
 8004044:	bfa8      	it	ge
 8004046:	461d      	movge	r5, r3
 8004048:	2d00      	cmp	r5, #0
 800404a:	dd0b      	ble.n	8004064 <_vfprintf_r+0x151c>
 800404c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800404e:	6017      	str	r7, [r2, #0]
 8004050:	3301      	adds	r3, #1
 8004052:	4429      	add	r1, r5
 8004054:	2b07      	cmp	r3, #7
 8004056:	912c      	str	r1, [sp, #176]	; 0xb0
 8004058:	6055      	str	r5, [r2, #4]
 800405a:	932b      	str	r3, [sp, #172]	; 0xac
 800405c:	dc5e      	bgt.n	800411c <_vfprintf_r+0x15d4>
 800405e:	f898 3000 	ldrb.w	r3, [r8]
 8004062:	3208      	adds	r2, #8
 8004064:	2d00      	cmp	r5, #0
 8004066:	bfac      	ite	ge
 8004068:	1b5d      	subge	r5, r3, r5
 800406a:	461d      	movlt	r5, r3
 800406c:	2d00      	cmp	r5, #0
 800406e:	dd26      	ble.n	80040be <_vfprintf_r+0x1576>
 8004070:	2d10      	cmp	r5, #16
 8004072:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004074:	dd3c      	ble.n	80040f0 <_vfprintf_r+0x15a8>
 8004076:	2410      	movs	r4, #16
 8004078:	e003      	b.n	8004082 <_vfprintf_r+0x153a>
 800407a:	3208      	adds	r2, #8
 800407c:	3d10      	subs	r5, #16
 800407e:	2d10      	cmp	r5, #16
 8004080:	dd36      	ble.n	80040f0 <_vfprintf_r+0x15a8>
 8004082:	3001      	adds	r0, #1
 8004084:	3110      	adds	r1, #16
 8004086:	2807      	cmp	r0, #7
 8004088:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800408c:	e9c2 6400 	strd	r6, r4, [r2]
 8004090:	ddf3      	ble.n	800407a <_vfprintf_r+0x1532>
 8004092:	aa2a      	add	r2, sp, #168	; 0xa8
 8004094:	4651      	mov	r1, sl
 8004096:	4648      	mov	r0, r9
 8004098:	f002 fdc2 	bl	8006c20 <__sprint_r>
 800409c:	2800      	cmp	r0, #0
 800409e:	d150      	bne.n	8004142 <_vfprintf_r+0x15fa>
 80040a0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80040a4:	aa2d      	add	r2, sp, #180	; 0xb4
 80040a6:	e7e9      	b.n	800407c <_vfprintf_r+0x1534>
 80040a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040aa:	4651      	mov	r1, sl
 80040ac:	4648      	mov	r0, r9
 80040ae:	f002 fdb7 	bl	8006c20 <__sprint_r>
 80040b2:	2800      	cmp	r0, #0
 80040b4:	d145      	bne.n	8004142 <_vfprintf_r+0x15fa>
 80040b6:	f898 3000 	ldrb.w	r3, [r8]
 80040ba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80040bc:	aa2d      	add	r2, sp, #180	; 0xb4
 80040be:	441f      	add	r7, r3
 80040c0:	e7a4      	b.n	800400c <_vfprintf_r+0x14c4>
 80040c2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80040c4:	3b01      	subs	r3, #1
 80040c6:	930f      	str	r3, [sp, #60]	; 0x3c
 80040c8:	e7ab      	b.n	8004022 <_vfprintf_r+0x14da>
 80040ca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80040cc:	2b00      	cmp	r3, #0
 80040ce:	d1f8      	bne.n	80040c2 <_vfprintf_r+0x157a>
 80040d0:	46b9      	mov	r9, r7
 80040d2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040d4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80040d6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80040da:	18fb      	adds	r3, r7, r3
 80040dc:	4599      	cmp	r9, r3
 80040de:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80040e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80040e6:	4693      	mov	fp, r2
 80040e8:	460c      	mov	r4, r1
 80040ea:	bf28      	it	cs
 80040ec:	4699      	movcs	r9, r3
 80040ee:	e424      	b.n	800393a <_vfprintf_r+0xdf2>
 80040f0:	3001      	adds	r0, #1
 80040f2:	4429      	add	r1, r5
 80040f4:	2807      	cmp	r0, #7
 80040f6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80040fa:	e9c2 6500 	strd	r6, r5, [r2]
 80040fe:	dcd3      	bgt.n	80040a8 <_vfprintf_r+0x1560>
 8004100:	f898 3000 	ldrb.w	r3, [r8]
 8004104:	3208      	adds	r2, #8
 8004106:	441f      	add	r7, r3
 8004108:	e780      	b.n	800400c <_vfprintf_r+0x14c4>
 800410a:	aa2a      	add	r2, sp, #168	; 0xa8
 800410c:	4651      	mov	r1, sl
 800410e:	4648      	mov	r0, r9
 8004110:	f002 fd86 	bl	8006c20 <__sprint_r>
 8004114:	b9a8      	cbnz	r0, 8004142 <_vfprintf_r+0x15fa>
 8004116:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004118:	aa2d      	add	r2, sp, #180	; 0xb4
 800411a:	e78e      	b.n	800403a <_vfprintf_r+0x14f2>
 800411c:	aa2a      	add	r2, sp, #168	; 0xa8
 800411e:	4651      	mov	r1, sl
 8004120:	4648      	mov	r0, r9
 8004122:	f002 fd7d 	bl	8006c20 <__sprint_r>
 8004126:	b960      	cbnz	r0, 8004142 <_vfprintf_r+0x15fa>
 8004128:	f898 3000 	ldrb.w	r3, [r8]
 800412c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800412e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004130:	e798      	b.n	8004064 <_vfprintf_r+0x151c>
 8004132:	4638      	mov	r0, r7
 8004134:	f7fc fa84 	bl	8000640 <strlen>
 8004138:	46a9      	mov	r9, r5
 800413a:	4603      	mov	r3, r0
 800413c:	9009      	str	r0, [sp, #36]	; 0x24
 800413e:	f7ff b8f4 	b.w	800332a <_vfprintf_r+0x7e2>
 8004142:	46d1      	mov	r9, sl
 8004144:	f7ff ba7a 	b.w	800363c <_vfprintf_r+0xaf4>
 8004148:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800414a:	4619      	mov	r1, r3
 800414c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800414e:	4299      	cmp	r1, r3
 8004150:	f300 8082 	bgt.w	8004258 <_vfprintf_r+0x1710>
 8004154:	07c4      	lsls	r4, r0, #31
 8004156:	f140 816b 	bpl.w	8004430 <_vfprintf_r+0x18e8>
 800415a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800415c:	4413      	add	r3, r2
 800415e:	9309      	str	r3, [sp, #36]	; 0x24
 8004160:	0541      	lsls	r1, r0, #21
 8004162:	d503      	bpl.n	800416c <_vfprintf_r+0x1624>
 8004164:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004166:	2b00      	cmp	r3, #0
 8004168:	f300 80e6 	bgt.w	8004338 <_vfprintf_r+0x17f0>
 800416c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800416e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004172:	9304      	str	r3, [sp, #16]
 8004174:	2667      	movs	r6, #103	; 0x67
 8004176:	2300      	movs	r3, #0
 8004178:	930f      	str	r3, [sp, #60]	; 0x3c
 800417a:	9314      	str	r3, [sp, #80]	; 0x50
 800417c:	e586      	b.n	8003c8c <_vfprintf_r+0x1144>
 800417e:	222d      	movs	r2, #45	; 0x2d
 8004180:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004184:	f04f 0900 	mov.w	r9, #0
 8004188:	f7fe be6c 	b.w	8002e64 <_vfprintf_r+0x31c>
 800418c:	46a1      	mov	r9, r4
 800418e:	f7ff ba55 	b.w	800363c <_vfprintf_r+0xaf4>
 8004192:	900a      	str	r0, [sp, #40]	; 0x28
 8004194:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004198:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800419c:	931f      	str	r3, [sp, #124]	; 0x7c
 800419e:	232d      	movs	r3, #45	; 0x2d
 80041a0:	911e      	str	r1, [sp, #120]	; 0x78
 80041a2:	930b      	str	r3, [sp, #44]	; 0x2c
 80041a4:	e619      	b.n	8003dda <_vfprintf_r+0x1292>
 80041a6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80041a8:	9328      	str	r3, [sp, #160]	; 0xa0
 80041aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80041ac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80041b0:	7bd9      	ldrb	r1, [r3, #15]
 80041b2:	4291      	cmp	r1, r2
 80041b4:	462b      	mov	r3, r5
 80041b6:	d109      	bne.n	80041cc <_vfprintf_r+0x1684>
 80041b8:	2030      	movs	r0, #48	; 0x30
 80041ba:	f803 0c01 	strb.w	r0, [r3, #-1]
 80041be:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80041c0:	1e5a      	subs	r2, r3, #1
 80041c2:	9228      	str	r2, [sp, #160]	; 0xa0
 80041c4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80041c8:	4291      	cmp	r1, r2
 80041ca:	d0f6      	beq.n	80041ba <_vfprintf_r+0x1672>
 80041cc:	2a39      	cmp	r2, #57	; 0x39
 80041ce:	bf0b      	itete	eq
 80041d0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80041d2:	3201      	addne	r2, #1
 80041d4:	7a92      	ldrbeq	r2, [r2, #10]
 80041d6:	b2d2      	uxtbne	r2, r2
 80041d8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80041dc:	e682      	b.n	8003ee4 <_vfprintf_r+0x139c>
 80041de:	f418 7f00 	tst.w	r8, #512	; 0x200
 80041e2:	f43f ad9f 	beq.w	8003d24 <_vfprintf_r+0x11dc>
 80041e6:	9a05      	ldr	r2, [sp, #20]
 80041e8:	701a      	strb	r2, [r3, #0]
 80041ea:	4657      	mov	r7, sl
 80041ec:	f7fe bf52 	b.w	8003094 <_vfprintf_r+0x54c>
 80041f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80041f2:	9907      	ldr	r1, [sp, #28]
 80041f4:	9803      	ldr	r0, [sp, #12]
 80041f6:	f002 fd13 	bl	8006c20 <__sprint_r>
 80041fa:	2800      	cmp	r0, #0
 80041fc:	f47f aa1c 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8004200:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004202:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004206:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800420a:	e571      	b.n	8003cf0 <_vfprintf_r+0x11a8>
 800420c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800420e:	2b00      	cmp	r3, #0
 8004210:	f340 8164 	ble.w	80044dc <_vfprintf_r+0x1994>
 8004214:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004216:	f1b9 0f00 	cmp.w	r9, #0
 800421a:	f040 8103 	bne.w	8004424 <_vfprintf_r+0x18dc>
 800421e:	07c6      	lsls	r6, r0, #31
 8004220:	f100 8100 	bmi.w	8004424 <_vfprintf_r+0x18dc>
 8004224:	9309      	str	r3, [sp, #36]	; 0x24
 8004226:	2666      	movs	r6, #102	; 0x66
 8004228:	0543      	lsls	r3, r0, #21
 800422a:	f100 8086 	bmi.w	800433a <_vfprintf_r+0x17f2>
 800422e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004230:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004234:	9304      	str	r3, [sp, #16]
 8004236:	e79e      	b.n	8004176 <_vfprintf_r+0x162e>
 8004238:	aa2a      	add	r2, sp, #168	; 0xa8
 800423a:	9907      	ldr	r1, [sp, #28]
 800423c:	9803      	ldr	r0, [sp, #12]
 800423e:	f002 fcef 	bl	8006c20 <__sprint_r>
 8004242:	2800      	cmp	r0, #0
 8004244:	f47f a9f8 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8004248:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800424a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800424c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800424e:	1ad3      	subs	r3, r2, r3
 8004250:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004254:	f7ff bb90 	b.w	8003978 <_vfprintf_r+0xe30>
 8004258:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800425a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800425c:	4413      	add	r3, r2
 800425e:	9309      	str	r3, [sp, #36]	; 0x24
 8004260:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004262:	2b00      	cmp	r3, #0
 8004264:	f340 8149 	ble.w	80044fa <_vfprintf_r+0x19b2>
 8004268:	2667      	movs	r6, #103	; 0x67
 800426a:	e7dd      	b.n	8004228 <_vfprintf_r+0x16e0>
 800426c:	2330      	movs	r3, #48	; 0x30
 800426e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004272:	2358      	movs	r3, #88	; 0x58
 8004274:	e595      	b.n	8003da2 <_vfprintf_r+0x125a>
 8004276:	9803      	ldr	r0, [sp, #12]
 8004278:	aa2a      	add	r2, sp, #168	; 0xa8
 800427a:	4649      	mov	r1, r9
 800427c:	f002 fcd0 	bl	8006c20 <__sprint_r>
 8004280:	2800      	cmp	r0, #0
 8004282:	f47f a9e0 	bne.w	8003646 <_vfprintf_r+0xafe>
 8004286:	f7fe bf0f 	b.w	80030a8 <_vfprintf_r+0x560>
 800428a:	a824      	add	r0, sp, #144	; 0x90
 800428c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004290:	f002 fbe0 	bl	8006a54 <frexp>
 8004294:	2200      	movs	r2, #0
 8004296:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800429a:	ec51 0b10 	vmov	r0, r1, d0
 800429e:	f7fc fc4b 	bl	8000b38 <__aeabi_dmul>
 80042a2:	2200      	movs	r2, #0
 80042a4:	2300      	movs	r3, #0
 80042a6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80042aa:	f7fc fead 	bl	8001008 <__aeabi_dcmpeq>
 80042ae:	b108      	cbz	r0, 80042b4 <_vfprintf_r+0x176c>
 80042b0:	2301      	movs	r3, #1
 80042b2:	9324      	str	r3, [sp, #144]	; 0x90
 80042b4:	4b02      	ldr	r3, [pc, #8]	; (80042c0 <_vfprintf_r+0x1778>)
 80042b6:	9309      	str	r3, [sp, #36]	; 0x24
 80042b8:	e5ac      	b.n	8003e14 <_vfprintf_r+0x12cc>
 80042ba:	bf00      	nop
 80042bc:	080074a4 	.word	0x080074a4
 80042c0:	08007460 	.word	0x08007460
 80042c4:	425d      	negs	r5, r3
 80042c6:	3310      	adds	r3, #16
 80042c8:	4bb9      	ldr	r3, [pc, #740]	; (80045b0 <_vfprintf_r+0x1a68>)
 80042ca:	f280 8097 	bge.w	80043fc <_vfprintf_r+0x18b4>
 80042ce:	4619      	mov	r1, r3
 80042d0:	2610      	movs	r6, #16
 80042d2:	4623      	mov	r3, r4
 80042d4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80042d8:	460c      	mov	r4, r1
 80042da:	e005      	b.n	80042e8 <_vfprintf_r+0x17a0>
 80042dc:	f10b 0b08 	add.w	fp, fp, #8
 80042e0:	3d10      	subs	r5, #16
 80042e2:	2d10      	cmp	r5, #16
 80042e4:	f340 8087 	ble.w	80043f6 <_vfprintf_r+0x18ae>
 80042e8:	3201      	adds	r2, #1
 80042ea:	3310      	adds	r3, #16
 80042ec:	2a07      	cmp	r2, #7
 80042ee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80042f2:	e9cb 4600 	strd	r4, r6, [fp]
 80042f6:	ddf1      	ble.n	80042dc <_vfprintf_r+0x1794>
 80042f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80042fa:	9907      	ldr	r1, [sp, #28]
 80042fc:	4648      	mov	r0, r9
 80042fe:	f002 fc8f 	bl	8006c20 <__sprint_r>
 8004302:	2800      	cmp	r0, #0
 8004304:	f47f a998 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8004308:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800430c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004310:	e7e6      	b.n	80042e0 <_vfprintf_r+0x1798>
 8004312:	f109 0101 	add.w	r1, r9, #1
 8004316:	9803      	ldr	r0, [sp, #12]
 8004318:	f7fe f89e 	bl	8002458 <_malloc_r>
 800431c:	4607      	mov	r7, r0
 800431e:	2800      	cmp	r0, #0
 8004320:	f000 813b 	beq.w	800459a <_vfprintf_r+0x1a52>
 8004324:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004328:	930e      	str	r3, [sp, #56]	; 0x38
 800432a:	f026 0320 	bic.w	r3, r6, #32
 800432e:	9304      	str	r3, [sp, #16]
 8004330:	46a0      	mov	r8, r4
 8004332:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004334:	900a      	str	r0, [sp, #40]	; 0x28
 8004336:	e547      	b.n	8003dc8 <_vfprintf_r+0x1280>
 8004338:	2667      	movs	r6, #103	; 0x67
 800433a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800433c:	2200      	movs	r2, #0
 800433e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004340:	9214      	str	r2, [sp, #80]	; 0x50
 8004342:	7803      	ldrb	r3, [r0, #0]
 8004344:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004346:	2bff      	cmp	r3, #255	; 0xff
 8004348:	d00c      	beq.n	8004364 <_vfprintf_r+0x181c>
 800434a:	4293      	cmp	r3, r2
 800434c:	da0a      	bge.n	8004364 <_vfprintf_r+0x181c>
 800434e:	7841      	ldrb	r1, [r0, #1]
 8004350:	1ad2      	subs	r2, r2, r3
 8004352:	b1a9      	cbz	r1, 8004380 <_vfprintf_r+0x1838>
 8004354:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004356:	3301      	adds	r3, #1
 8004358:	9314      	str	r3, [sp, #80]	; 0x50
 800435a:	460b      	mov	r3, r1
 800435c:	2bff      	cmp	r3, #255	; 0xff
 800435e:	f100 0001 	add.w	r0, r0, #1
 8004362:	d1f2      	bne.n	800434a <_vfprintf_r+0x1802>
 8004364:	9211      	str	r2, [sp, #68]	; 0x44
 8004366:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004368:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800436a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800436c:	901a      	str	r0, [sp, #104]	; 0x68
 800436e:	4413      	add	r3, r2
 8004370:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004372:	fb02 1303 	mla	r3, r2, r3, r1
 8004376:	9309      	str	r3, [sp, #36]	; 0x24
 8004378:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800437c:	9304      	str	r3, [sp, #16]
 800437e:	e485      	b.n	8003c8c <_vfprintf_r+0x1144>
 8004380:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004382:	3101      	adds	r1, #1
 8004384:	910f      	str	r1, [sp, #60]	; 0x3c
 8004386:	e7de      	b.n	8004346 <_vfprintf_r+0x17fe>
 8004388:	aa28      	add	r2, sp, #160	; 0xa0
 800438a:	ab25      	add	r3, sp, #148	; 0x94
 800438c:	e9cd 3200 	strd	r3, r2, [sp]
 8004390:	2103      	movs	r1, #3
 8004392:	ab24      	add	r3, sp, #144	; 0x90
 8004394:	464a      	mov	r2, r9
 8004396:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800439a:	9803      	ldr	r0, [sp, #12]
 800439c:	f000 fa5c 	bl	8004858 <_dtoa_r>
 80043a0:	464d      	mov	r5, r9
 80043a2:	4607      	mov	r7, r0
 80043a4:	eb00 0409 	add.w	r4, r0, r9
 80043a8:	783b      	ldrb	r3, [r7, #0]
 80043aa:	2b30      	cmp	r3, #48	; 0x30
 80043ac:	f000 80be 	beq.w	800452c <_vfprintf_r+0x19e4>
 80043b0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80043b2:	442c      	add	r4, r5
 80043b4:	2200      	movs	r2, #0
 80043b6:	2300      	movs	r3, #0
 80043b8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80043bc:	f7fc fe24 	bl	8001008 <__aeabi_dcmpeq>
 80043c0:	b108      	cbz	r0, 80043c6 <_vfprintf_r+0x187e>
 80043c2:	4623      	mov	r3, r4
 80043c4:	e413      	b.n	8003bee <_vfprintf_r+0x10a6>
 80043c6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80043c8:	42a3      	cmp	r3, r4
 80043ca:	f4bf ac10 	bcs.w	8003bee <_vfprintf_r+0x10a6>
 80043ce:	2130      	movs	r1, #48	; 0x30
 80043d0:	1c5a      	adds	r2, r3, #1
 80043d2:	9228      	str	r2, [sp, #160]	; 0xa0
 80043d4:	7019      	strb	r1, [r3, #0]
 80043d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80043d8:	429c      	cmp	r4, r3
 80043da:	d8f9      	bhi.n	80043d0 <_vfprintf_r+0x1888>
 80043dc:	e407      	b.n	8003bee <_vfprintf_r+0x10a6>
 80043de:	197c      	adds	r4, r7, r5
 80043e0:	e7e8      	b.n	80043b4 <_vfprintf_r+0x186c>
 80043e2:	f1b9 0f00 	cmp.w	r9, #0
 80043e6:	f000 8092 	beq.w	800450e <_vfprintf_r+0x19c6>
 80043ea:	900a      	str	r0, [sp, #40]	; 0x28
 80043ec:	e4ec      	b.n	8003dc8 <_vfprintf_r+0x1280>
 80043ee:	900a      	str	r0, [sp, #40]	; 0x28
 80043f0:	f04f 0906 	mov.w	r9, #6
 80043f4:	e4e8      	b.n	8003dc8 <_vfprintf_r+0x1280>
 80043f6:	4621      	mov	r1, r4
 80043f8:	461c      	mov	r4, r3
 80043fa:	460b      	mov	r3, r1
 80043fc:	3201      	adds	r2, #1
 80043fe:	442c      	add	r4, r5
 8004400:	2a07      	cmp	r2, #7
 8004402:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004406:	e9cb 3500 	strd	r3, r5, [fp]
 800440a:	f300 80a9 	bgt.w	8004560 <_vfprintf_r+0x1a18>
 800440e:	f10b 0b08 	add.w	fp, fp, #8
 8004412:	e470      	b.n	8003cf6 <_vfprintf_r+0x11ae>
 8004414:	469a      	mov	sl, r3
 8004416:	f7ff bb37 	b.w	8003a88 <_vfprintf_r+0xf40>
 800441a:	2301      	movs	r3, #1
 800441c:	9324      	str	r3, [sp, #144]	; 0x90
 800441e:	4b65      	ldr	r3, [pc, #404]	; (80045b4 <_vfprintf_r+0x1a6c>)
 8004420:	9309      	str	r3, [sp, #36]	; 0x24
 8004422:	e4f7      	b.n	8003e14 <_vfprintf_r+0x12cc>
 8004424:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004426:	4413      	add	r3, r2
 8004428:	444b      	add	r3, r9
 800442a:	9309      	str	r3, [sp, #36]	; 0x24
 800442c:	2666      	movs	r6, #102	; 0x66
 800442e:	e6fb      	b.n	8004228 <_vfprintf_r+0x16e0>
 8004430:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004432:	9309      	str	r3, [sp, #36]	; 0x24
 8004434:	e694      	b.n	8004160 <_vfprintf_r+0x1618>
 8004436:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800443a:	4664      	mov	r4, ip
 800443c:	4d5e      	ldr	r5, [pc, #376]	; (80045b8 <_vfprintf_r+0x1a70>)
 800443e:	e000      	b.n	8004442 <_vfprintf_r+0x18fa>
 8004440:	4614      	mov	r4, r2
 8004442:	fba5 1203 	umull	r1, r2, r5, r3
 8004446:	08d2      	lsrs	r2, r2, #3
 8004448:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800444c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004450:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004454:	4613      	mov	r3, r2
 8004456:	2b09      	cmp	r3, #9
 8004458:	f804 1c01 	strb.w	r1, [r4, #-1]
 800445c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004460:	dcee      	bgt.n	8004440 <_vfprintf_r+0x18f8>
 8004462:	3330      	adds	r3, #48	; 0x30
 8004464:	3c02      	subs	r4, #2
 8004466:	b2db      	uxtb	r3, r3
 8004468:	45a4      	cmp	ip, r4
 800446a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800446e:	f240 8090 	bls.w	8004592 <_vfprintf_r+0x1a4a>
 8004472:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004476:	4611      	mov	r1, r2
 8004478:	e001      	b.n	800447e <_vfprintf_r+0x1936>
 800447a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800447e:	f804 3b01 	strb.w	r3, [r4], #1
 8004482:	458c      	cmp	ip, r1
 8004484:	d1f9      	bne.n	800447a <_vfprintf_r+0x1932>
 8004486:	ab2a      	add	r3, sp, #168	; 0xa8
 8004488:	1a9b      	subs	r3, r3, r2
 800448a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800448e:	4413      	add	r3, r2
 8004490:	f7ff bbe3 	b.w	8003c5a <_vfprintf_r+0x1112>
 8004494:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004496:	4f49      	ldr	r7, [pc, #292]	; (80045bc <_vfprintf_r+0x1a74>)
 8004498:	2b00      	cmp	r3, #0
 800449a:	bfb6      	itet	lt
 800449c:	222d      	movlt	r2, #45	; 0x2d
 800449e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80044a2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80044a6:	4b46      	ldr	r3, [pc, #280]	; (80045c0 <_vfprintf_r+0x1a78>)
 80044a8:	f7fe bf02 	b.w	80032b0 <_vfprintf_r+0x768>
 80044ac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044b0:	f7ff b8c9 	b.w	8003646 <_vfprintf_r+0xafe>
 80044b4:	aa28      	add	r2, sp, #160	; 0xa0
 80044b6:	ab25      	add	r3, sp, #148	; 0x94
 80044b8:	e9cd 3200 	strd	r3, r2, [sp]
 80044bc:	2103      	movs	r1, #3
 80044be:	ab24      	add	r3, sp, #144	; 0x90
 80044c0:	464a      	mov	r2, r9
 80044c2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80044c6:	9803      	ldr	r0, [sp, #12]
 80044c8:	f000 f9c6 	bl	8004858 <_dtoa_r>
 80044cc:	464d      	mov	r5, r9
 80044ce:	4607      	mov	r7, r0
 80044d0:	2e46      	cmp	r6, #70	; 0x46
 80044d2:	eb07 0405 	add.w	r4, r7, r5
 80044d6:	f43f af67 	beq.w	80043a8 <_vfprintf_r+0x1860>
 80044da:	e76b      	b.n	80043b4 <_vfprintf_r+0x186c>
 80044dc:	f1b9 0f00 	cmp.w	r9, #0
 80044e0:	d131      	bne.n	8004546 <_vfprintf_r+0x19fe>
 80044e2:	07c5      	lsls	r5, r0, #31
 80044e4:	d42f      	bmi.n	8004546 <_vfprintf_r+0x19fe>
 80044e6:	2301      	movs	r3, #1
 80044e8:	9304      	str	r3, [sp, #16]
 80044ea:	9309      	str	r3, [sp, #36]	; 0x24
 80044ec:	2666      	movs	r6, #102	; 0x66
 80044ee:	e642      	b.n	8004176 <_vfprintf_r+0x162e>
 80044f0:	07c3      	lsls	r3, r0, #31
 80044f2:	f57f abbf 	bpl.w	8003c74 <_vfprintf_r+0x112c>
 80044f6:	f7ff bbb9 	b.w	8003c6c <_vfprintf_r+0x1124>
 80044fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80044fc:	f1c3 0301 	rsb	r3, r3, #1
 8004500:	441a      	add	r2, r3
 8004502:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004506:	9209      	str	r2, [sp, #36]	; 0x24
 8004508:	9304      	str	r3, [sp, #16]
 800450a:	2667      	movs	r6, #103	; 0x67
 800450c:	e633      	b.n	8004176 <_vfprintf_r+0x162e>
 800450e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004512:	f04f 0901 	mov.w	r9, #1
 8004516:	e457      	b.n	8003dc8 <_vfprintf_r+0x1280>
 8004518:	465a      	mov	r2, fp
 800451a:	e511      	b.n	8003f40 <_vfprintf_r+0x13f8>
 800451c:	2e47      	cmp	r6, #71	; 0x47
 800451e:	f47f af5e 	bne.w	80043de <_vfprintf_r+0x1896>
 8004522:	f018 0f01 	tst.w	r8, #1
 8004526:	f43f ab61 	beq.w	8003bec <_vfprintf_r+0x10a4>
 800452a:	e7d1      	b.n	80044d0 <_vfprintf_r+0x1988>
 800452c:	2200      	movs	r2, #0
 800452e:	2300      	movs	r3, #0
 8004530:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004534:	f7fc fd68 	bl	8001008 <__aeabi_dcmpeq>
 8004538:	2800      	cmp	r0, #0
 800453a:	f47f af39 	bne.w	80043b0 <_vfprintf_r+0x1868>
 800453e:	f1c5 0501 	rsb	r5, r5, #1
 8004542:	9524      	str	r5, [sp, #144]	; 0x90
 8004544:	e735      	b.n	80043b2 <_vfprintf_r+0x186a>
 8004546:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004548:	3301      	adds	r3, #1
 800454a:	444b      	add	r3, r9
 800454c:	9309      	str	r3, [sp, #36]	; 0x24
 800454e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004552:	9304      	str	r3, [sp, #16]
 8004554:	2666      	movs	r6, #102	; 0x66
 8004556:	e60e      	b.n	8004176 <_vfprintf_r+0x162e>
 8004558:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800455c:	f7ff bb7a 	b.w	8003c54 <_vfprintf_r+0x110c>
 8004560:	aa2a      	add	r2, sp, #168	; 0xa8
 8004562:	9907      	ldr	r1, [sp, #28]
 8004564:	9803      	ldr	r0, [sp, #12]
 8004566:	f002 fb5b 	bl	8006c20 <__sprint_r>
 800456a:	2800      	cmp	r0, #0
 800456c:	f47f a864 	bne.w	8003638 <_vfprintf_r+0xaf0>
 8004570:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004574:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004578:	f7ff bbbd 	b.w	8003cf6 <_vfprintf_r+0x11ae>
 800457c:	9908      	ldr	r1, [sp, #32]
 800457e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004582:	680b      	ldr	r3, [r1, #0]
 8004584:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004588:	1d0b      	adds	r3, r1, #4
 800458a:	4692      	mov	sl, r2
 800458c:	9308      	str	r3, [sp, #32]
 800458e:	f7fe bb59 	b.w	8002c44 <_vfprintf_r+0xfc>
 8004592:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004596:	f7ff bb60 	b.w	8003c5a <_vfprintf_r+0x1112>
 800459a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800459e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80045a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045a6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80045aa:	f7ff b84c 	b.w	8003646 <_vfprintf_r+0xafe>
 80045ae:	bf00      	nop
 80045b0:	080074a4 	.word	0x080074a4
 80045b4:	08007474 	.word	0x08007474
 80045b8:	cccccccd 	.word	0xcccccccd
 80045bc:	0800745c 	.word	0x0800745c
 80045c0:	08007458 	.word	0x08007458

080045c4 <__sbprintf>:
 80045c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80045c8:	460c      	mov	r4, r1
 80045ca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80045ce:	8989      	ldrh	r1, [r1, #12]
 80045d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80045d2:	89e5      	ldrh	r5, [r4, #14]
 80045d4:	9619      	str	r6, [sp, #100]	; 0x64
 80045d6:	f021 0102 	bic.w	r1, r1, #2
 80045da:	4606      	mov	r6, r0
 80045dc:	69e0      	ldr	r0, [r4, #28]
 80045de:	f8ad 100c 	strh.w	r1, [sp, #12]
 80045e2:	4617      	mov	r7, r2
 80045e4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80045e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80045ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80045ee:	4698      	mov	r8, r3
 80045f0:	ad1a      	add	r5, sp, #104	; 0x68
 80045f2:	2300      	movs	r3, #0
 80045f4:	9007      	str	r0, [sp, #28]
 80045f6:	a816      	add	r0, sp, #88	; 0x58
 80045f8:	9209      	str	r2, [sp, #36]	; 0x24
 80045fa:	9306      	str	r3, [sp, #24]
 80045fc:	9500      	str	r5, [sp, #0]
 80045fe:	9504      	str	r5, [sp, #16]
 8004600:	9102      	str	r1, [sp, #8]
 8004602:	9105      	str	r1, [sp, #20]
 8004604:	f001 fc8a 	bl	8005f1c <__retarget_lock_init_recursive>
 8004608:	4643      	mov	r3, r8
 800460a:	463a      	mov	r2, r7
 800460c:	4669      	mov	r1, sp
 800460e:	4630      	mov	r0, r6
 8004610:	f7fe fa9a 	bl	8002b48 <_vfprintf_r>
 8004614:	1e05      	subs	r5, r0, #0
 8004616:	db07      	blt.n	8004628 <__sbprintf+0x64>
 8004618:	4630      	mov	r0, r6
 800461a:	4669      	mov	r1, sp
 800461c:	f001 f8d6 	bl	80057cc <_fflush_r>
 8004620:	2800      	cmp	r0, #0
 8004622:	bf18      	it	ne
 8004624:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004628:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800462c:	065b      	lsls	r3, r3, #25
 800462e:	d503      	bpl.n	8004638 <__sbprintf+0x74>
 8004630:	89a3      	ldrh	r3, [r4, #12]
 8004632:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004636:	81a3      	strh	r3, [r4, #12]
 8004638:	9816      	ldr	r0, [sp, #88]	; 0x58
 800463a:	f001 fc71 	bl	8005f20 <__retarget_lock_close_recursive>
 800463e:	4628      	mov	r0, r5
 8004640:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004644:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004648 <__swsetup_r>:
 8004648:	b538      	push	{r3, r4, r5, lr}
 800464a:	4b31      	ldr	r3, [pc, #196]	; (8004710 <__swsetup_r+0xc8>)
 800464c:	681b      	ldr	r3, [r3, #0]
 800464e:	4605      	mov	r5, r0
 8004650:	460c      	mov	r4, r1
 8004652:	b113      	cbz	r3, 800465a <__swsetup_r+0x12>
 8004654:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004656:	2a00      	cmp	r2, #0
 8004658:	d03a      	beq.n	80046d0 <__swsetup_r+0x88>
 800465a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800465e:	b293      	uxth	r3, r2
 8004660:	0718      	lsls	r0, r3, #28
 8004662:	d50c      	bpl.n	800467e <__swsetup_r+0x36>
 8004664:	6920      	ldr	r0, [r4, #16]
 8004666:	b1a8      	cbz	r0, 8004694 <__swsetup_r+0x4c>
 8004668:	f013 0201 	ands.w	r2, r3, #1
 800466c:	d020      	beq.n	80046b0 <__swsetup_r+0x68>
 800466e:	6963      	ldr	r3, [r4, #20]
 8004670:	2200      	movs	r2, #0
 8004672:	425b      	negs	r3, r3
 8004674:	61a3      	str	r3, [r4, #24]
 8004676:	60a2      	str	r2, [r4, #8]
 8004678:	b300      	cbz	r0, 80046bc <__swsetup_r+0x74>
 800467a:	2000      	movs	r0, #0
 800467c:	bd38      	pop	{r3, r4, r5, pc}
 800467e:	06d9      	lsls	r1, r3, #27
 8004680:	d53e      	bpl.n	8004700 <__swsetup_r+0xb8>
 8004682:	0758      	lsls	r0, r3, #29
 8004684:	d428      	bmi.n	80046d8 <__swsetup_r+0x90>
 8004686:	6920      	ldr	r0, [r4, #16]
 8004688:	f042 0308 	orr.w	r3, r2, #8
 800468c:	81a3      	strh	r3, [r4, #12]
 800468e:	b29b      	uxth	r3, r3
 8004690:	2800      	cmp	r0, #0
 8004692:	d1e9      	bne.n	8004668 <__swsetup_r+0x20>
 8004694:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004698:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800469c:	d0e4      	beq.n	8004668 <__swsetup_r+0x20>
 800469e:	4628      	mov	r0, r5
 80046a0:	4621      	mov	r1, r4
 80046a2:	f001 fc71 	bl	8005f88 <__smakebuf_r>
 80046a6:	89a3      	ldrh	r3, [r4, #12]
 80046a8:	6920      	ldr	r0, [r4, #16]
 80046aa:	f013 0201 	ands.w	r2, r3, #1
 80046ae:	d1de      	bne.n	800466e <__swsetup_r+0x26>
 80046b0:	0799      	lsls	r1, r3, #30
 80046b2:	bf58      	it	pl
 80046b4:	6962      	ldrpl	r2, [r4, #20]
 80046b6:	60a2      	str	r2, [r4, #8]
 80046b8:	2800      	cmp	r0, #0
 80046ba:	d1de      	bne.n	800467a <__swsetup_r+0x32>
 80046bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80046c0:	061a      	lsls	r2, r3, #24
 80046c2:	d5db      	bpl.n	800467c <__swsetup_r+0x34>
 80046c4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80046c8:	81a3      	strh	r3, [r4, #12]
 80046ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80046ce:	bd38      	pop	{r3, r4, r5, pc}
 80046d0:	4618      	mov	r0, r3
 80046d2:	f001 f8d7 	bl	8005884 <__sinit>
 80046d6:	e7c0      	b.n	800465a <__swsetup_r+0x12>
 80046d8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80046da:	b151      	cbz	r1, 80046f2 <__swsetup_r+0xaa>
 80046dc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80046e0:	4299      	cmp	r1, r3
 80046e2:	d004      	beq.n	80046ee <__swsetup_r+0xa6>
 80046e4:	4628      	mov	r0, r5
 80046e6:	f001 f96f 	bl	80059c8 <_free_r>
 80046ea:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80046ee:	2300      	movs	r3, #0
 80046f0:	6323      	str	r3, [r4, #48]	; 0x30
 80046f2:	2300      	movs	r3, #0
 80046f4:	6920      	ldr	r0, [r4, #16]
 80046f6:	6063      	str	r3, [r4, #4]
 80046f8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80046fc:	6020      	str	r0, [r4, #0]
 80046fe:	e7c3      	b.n	8004688 <__swsetup_r+0x40>
 8004700:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004704:	2309      	movs	r3, #9
 8004706:	602b      	str	r3, [r5, #0]
 8004708:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800470c:	81a2      	strh	r2, [r4, #12]
 800470e:	bd38      	pop	{r3, r4, r5, pc}
 8004710:	200001a8 	.word	0x200001a8

08004714 <register_fini>:
 8004714:	4b02      	ldr	r3, [pc, #8]	; (8004720 <register_fini+0xc>)
 8004716:	b113      	cbz	r3, 800471e <register_fini+0xa>
 8004718:	4802      	ldr	r0, [pc, #8]	; (8004724 <register_fini+0x10>)
 800471a:	f000 b805 	b.w	8004728 <atexit>
 800471e:	4770      	bx	lr
 8004720:	00000000 	.word	0x00000000
 8004724:	080058f5 	.word	0x080058f5

08004728 <atexit>:
 8004728:	2300      	movs	r3, #0
 800472a:	4601      	mov	r1, r0
 800472c:	461a      	mov	r2, r3
 800472e:	4618      	mov	r0, r3
 8004730:	f002 ba96 	b.w	8006c60 <__register_exitproc>

08004734 <quorem>:
 8004734:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004738:	6903      	ldr	r3, [r0, #16]
 800473a:	690f      	ldr	r7, [r1, #16]
 800473c:	42bb      	cmp	r3, r7
 800473e:	b083      	sub	sp, #12
 8004740:	f2c0 8086 	blt.w	8004850 <quorem+0x11c>
 8004744:	3f01      	subs	r7, #1
 8004746:	f101 0914 	add.w	r9, r1, #20
 800474a:	f100 0a14 	add.w	sl, r0, #20
 800474e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004752:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004756:	00bc      	lsls	r4, r7, #2
 8004758:	3201      	adds	r2, #1
 800475a:	fbb3 f8f2 	udiv	r8, r3, r2
 800475e:	eb0a 0304 	add.w	r3, sl, r4
 8004762:	9400      	str	r4, [sp, #0]
 8004764:	eb09 0b04 	add.w	fp, r9, r4
 8004768:	9301      	str	r3, [sp, #4]
 800476a:	f1b8 0f00 	cmp.w	r8, #0
 800476e:	d038      	beq.n	80047e2 <quorem+0xae>
 8004770:	2500      	movs	r5, #0
 8004772:	462e      	mov	r6, r5
 8004774:	46ce      	mov	lr, r9
 8004776:	46d4      	mov	ip, sl
 8004778:	f85e 4b04 	ldr.w	r4, [lr], #4
 800477c:	f8dc 3000 	ldr.w	r3, [ip]
 8004780:	b2a2      	uxth	r2, r4
 8004782:	fb08 5502 	mla	r5, r8, r2, r5
 8004786:	0c22      	lsrs	r2, r4, #16
 8004788:	0c2c      	lsrs	r4, r5, #16
 800478a:	fb08 4202 	mla	r2, r8, r2, r4
 800478e:	b2ad      	uxth	r5, r5
 8004790:	1b75      	subs	r5, r6, r5
 8004792:	b296      	uxth	r6, r2
 8004794:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004798:	fa15 f383 	uxtah	r3, r5, r3
 800479c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80047a0:	b29b      	uxth	r3, r3
 80047a2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80047a6:	45f3      	cmp	fp, lr
 80047a8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80047ac:	f84c 3b04 	str.w	r3, [ip], #4
 80047b0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80047b4:	d2e0      	bcs.n	8004778 <quorem+0x44>
 80047b6:	9b00      	ldr	r3, [sp, #0]
 80047b8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80047bc:	b98b      	cbnz	r3, 80047e2 <quorem+0xae>
 80047be:	9a01      	ldr	r2, [sp, #4]
 80047c0:	1f13      	subs	r3, r2, #4
 80047c2:	459a      	cmp	sl, r3
 80047c4:	d20c      	bcs.n	80047e0 <quorem+0xac>
 80047c6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80047ca:	b94b      	cbnz	r3, 80047e0 <quorem+0xac>
 80047cc:	f1a2 0308 	sub.w	r3, r2, #8
 80047d0:	e002      	b.n	80047d8 <quorem+0xa4>
 80047d2:	681a      	ldr	r2, [r3, #0]
 80047d4:	3b04      	subs	r3, #4
 80047d6:	b91a      	cbnz	r2, 80047e0 <quorem+0xac>
 80047d8:	459a      	cmp	sl, r3
 80047da:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80047de:	d3f8      	bcc.n	80047d2 <quorem+0x9e>
 80047e0:	6107      	str	r7, [r0, #16]
 80047e2:	4604      	mov	r4, r0
 80047e4:	f001 fe94 	bl	8006510 <__mcmp>
 80047e8:	2800      	cmp	r0, #0
 80047ea:	db2d      	blt.n	8004848 <quorem+0x114>
 80047ec:	f108 0801 	add.w	r8, r8, #1
 80047f0:	4655      	mov	r5, sl
 80047f2:	2300      	movs	r3, #0
 80047f4:	f859 1b04 	ldr.w	r1, [r9], #4
 80047f8:	6828      	ldr	r0, [r5, #0]
 80047fa:	b28a      	uxth	r2, r1
 80047fc:	1a9a      	subs	r2, r3, r2
 80047fe:	0c0b      	lsrs	r3, r1, #16
 8004800:	fa12 f280 	uxtah	r2, r2, r0
 8004804:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004808:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800480c:	b292      	uxth	r2, r2
 800480e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004812:	45cb      	cmp	fp, r9
 8004814:	f845 2b04 	str.w	r2, [r5], #4
 8004818:	ea4f 4323 	mov.w	r3, r3, asr #16
 800481c:	d2ea      	bcs.n	80047f4 <quorem+0xc0>
 800481e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004822:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004826:	b97a      	cbnz	r2, 8004848 <quorem+0x114>
 8004828:	1f1a      	subs	r2, r3, #4
 800482a:	4592      	cmp	sl, r2
 800482c:	d20b      	bcs.n	8004846 <quorem+0x112>
 800482e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004832:	b942      	cbnz	r2, 8004846 <quorem+0x112>
 8004834:	3b08      	subs	r3, #8
 8004836:	e002      	b.n	800483e <quorem+0x10a>
 8004838:	681a      	ldr	r2, [r3, #0]
 800483a:	3b04      	subs	r3, #4
 800483c:	b91a      	cbnz	r2, 8004846 <quorem+0x112>
 800483e:	459a      	cmp	sl, r3
 8004840:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004844:	d3f8      	bcc.n	8004838 <quorem+0x104>
 8004846:	6127      	str	r7, [r4, #16]
 8004848:	4640      	mov	r0, r8
 800484a:	b003      	add	sp, #12
 800484c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004850:	2000      	movs	r0, #0
 8004852:	b003      	add	sp, #12
 8004854:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004858 <_dtoa_r>:
 8004858:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800485c:	ec55 4b10 	vmov	r4, r5, d0
 8004860:	b09b      	sub	sp, #108	; 0x6c
 8004862:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004864:	9102      	str	r1, [sp, #8]
 8004866:	4681      	mov	r9, r0
 8004868:	9207      	str	r2, [sp, #28]
 800486a:	9305      	str	r3, [sp, #20]
 800486c:	e9cd 4500 	strd	r4, r5, [sp]
 8004870:	b156      	cbz	r6, 8004888 <_dtoa_r+0x30>
 8004872:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004874:	6072      	str	r2, [r6, #4]
 8004876:	2301      	movs	r3, #1
 8004878:	4093      	lsls	r3, r2
 800487a:	60b3      	str	r3, [r6, #8]
 800487c:	4631      	mov	r1, r6
 800487e:	f001 fc57 	bl	8006130 <_Bfree>
 8004882:	2300      	movs	r3, #0
 8004884:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004888:	f1b5 0800 	subs.w	r8, r5, #0
 800488c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800488e:	bfb4      	ite	lt
 8004890:	2301      	movlt	r3, #1
 8004892:	2300      	movge	r3, #0
 8004894:	6013      	str	r3, [r2, #0]
 8004896:	4b76      	ldr	r3, [pc, #472]	; (8004a70 <_dtoa_r+0x218>)
 8004898:	bfbc      	itt	lt
 800489a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800489e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80048a2:	ea33 0308 	bics.w	r3, r3, r8
 80048a6:	f000 80a6 	beq.w	80049f6 <_dtoa_r+0x19e>
 80048aa:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048ae:	2200      	movs	r2, #0
 80048b0:	2300      	movs	r3, #0
 80048b2:	4630      	mov	r0, r6
 80048b4:	4639      	mov	r1, r7
 80048b6:	f7fc fba7 	bl	8001008 <__aeabi_dcmpeq>
 80048ba:	4605      	mov	r5, r0
 80048bc:	b178      	cbz	r0, 80048de <_dtoa_r+0x86>
 80048be:	9a05      	ldr	r2, [sp, #20]
 80048c0:	2301      	movs	r3, #1
 80048c2:	6013      	str	r3, [r2, #0]
 80048c4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048c6:	2b00      	cmp	r3, #0
 80048c8:	f000 80c0 	beq.w	8004a4c <_dtoa_r+0x1f4>
 80048cc:	4b69      	ldr	r3, [pc, #420]	; (8004a74 <_dtoa_r+0x21c>)
 80048ce:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80048d0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80048d4:	6013      	str	r3, [r2, #0]
 80048d6:	4658      	mov	r0, fp
 80048d8:	b01b      	add	sp, #108	; 0x6c
 80048da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048de:	aa18      	add	r2, sp, #96	; 0x60
 80048e0:	a919      	add	r1, sp, #100	; 0x64
 80048e2:	ec47 6b10 	vmov	d0, r6, r7
 80048e6:	4648      	mov	r0, r9
 80048e8:	f001 fea4 	bl	8006634 <__d2b>
 80048ec:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80048f0:	4682      	mov	sl, r0
 80048f2:	f040 80a0 	bne.w	8004a36 <_dtoa_r+0x1de>
 80048f6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80048fa:	442c      	add	r4, r5
 80048fc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004900:	2b20      	cmp	r3, #32
 8004902:	f340 842c 	ble.w	800515e <_dtoa_r+0x906>
 8004906:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800490a:	fa08 f803 	lsl.w	r8, r8, r3
 800490e:	9b00      	ldr	r3, [sp, #0]
 8004910:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004914:	fa23 f000 	lsr.w	r0, r3, r0
 8004918:	ea48 0000 	orr.w	r0, r8, r0
 800491c:	f7fc f892 	bl	8000a44 <__aeabi_ui2d>
 8004920:	2301      	movs	r3, #1
 8004922:	4606      	mov	r6, r0
 8004924:	3c01      	subs	r4, #1
 8004926:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800492a:	930f      	str	r3, [sp, #60]	; 0x3c
 800492c:	4630      	mov	r0, r6
 800492e:	4639      	mov	r1, r7
 8004930:	2200      	movs	r2, #0
 8004932:	4b51      	ldr	r3, [pc, #324]	; (8004a78 <_dtoa_r+0x220>)
 8004934:	f7fb ff48 	bl	80007c8 <__aeabi_dsub>
 8004938:	a347      	add	r3, pc, #284	; (adr r3, 8004a58 <_dtoa_r+0x200>)
 800493a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800493e:	f7fc f8fb 	bl	8000b38 <__aeabi_dmul>
 8004942:	a347      	add	r3, pc, #284	; (adr r3, 8004a60 <_dtoa_r+0x208>)
 8004944:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004948:	f7fb ff40 	bl	80007cc <__adddf3>
 800494c:	4606      	mov	r6, r0
 800494e:	4620      	mov	r0, r4
 8004950:	460f      	mov	r7, r1
 8004952:	f7fc f887 	bl	8000a64 <__aeabi_i2d>
 8004956:	a344      	add	r3, pc, #272	; (adr r3, 8004a68 <_dtoa_r+0x210>)
 8004958:	e9d3 2300 	ldrd	r2, r3, [r3]
 800495c:	f7fc f8ec 	bl	8000b38 <__aeabi_dmul>
 8004960:	4602      	mov	r2, r0
 8004962:	460b      	mov	r3, r1
 8004964:	4630      	mov	r0, r6
 8004966:	4639      	mov	r1, r7
 8004968:	f7fb ff30 	bl	80007cc <__adddf3>
 800496c:	4606      	mov	r6, r0
 800496e:	460f      	mov	r7, r1
 8004970:	f7fc fb92 	bl	8001098 <__aeabi_d2iz>
 8004974:	2200      	movs	r2, #0
 8004976:	9006      	str	r0, [sp, #24]
 8004978:	2300      	movs	r3, #0
 800497a:	4630      	mov	r0, r6
 800497c:	4639      	mov	r1, r7
 800497e:	f7fc fb4d 	bl	800101c <__aeabi_dcmplt>
 8004982:	2800      	cmp	r0, #0
 8004984:	f040 8273 	bne.w	8004e6e <_dtoa_r+0x616>
 8004988:	9e06      	ldr	r6, [sp, #24]
 800498a:	2e16      	cmp	r6, #22
 800498c:	f200 825d 	bhi.w	8004e4a <_dtoa_r+0x5f2>
 8004990:	4b3a      	ldr	r3, [pc, #232]	; (8004a7c <_dtoa_r+0x224>)
 8004992:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004996:	e9d3 0100 	ldrd	r0, r1, [r3]
 800499a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800499e:	f7fc fb5b 	bl	8001058 <__aeabi_dcmpgt>
 80049a2:	2800      	cmp	r0, #0
 80049a4:	f000 83d7 	beq.w	8005156 <_dtoa_r+0x8fe>
 80049a8:	1e73      	subs	r3, r6, #1
 80049aa:	9306      	str	r3, [sp, #24]
 80049ac:	2300      	movs	r3, #0
 80049ae:	930d      	str	r3, [sp, #52]	; 0x34
 80049b0:	1b2c      	subs	r4, r5, r4
 80049b2:	f1b4 0801 	subs.w	r8, r4, #1
 80049b6:	f100 8254 	bmi.w	8004e62 <_dtoa_r+0x60a>
 80049ba:	2300      	movs	r3, #0
 80049bc:	9308      	str	r3, [sp, #32]
 80049be:	9b06      	ldr	r3, [sp, #24]
 80049c0:	2b00      	cmp	r3, #0
 80049c2:	f2c0 8245 	blt.w	8004e50 <_dtoa_r+0x5f8>
 80049c6:	4498      	add	r8, r3
 80049c8:	930c      	str	r3, [sp, #48]	; 0x30
 80049ca:	2300      	movs	r3, #0
 80049cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80049ce:	9b02      	ldr	r3, [sp, #8]
 80049d0:	2b09      	cmp	r3, #9
 80049d2:	d85b      	bhi.n	8004a8c <_dtoa_r+0x234>
 80049d4:	2b05      	cmp	r3, #5
 80049d6:	f340 83c0 	ble.w	800515a <_dtoa_r+0x902>
 80049da:	3b04      	subs	r3, #4
 80049dc:	9302      	str	r3, [sp, #8]
 80049de:	2500      	movs	r5, #0
 80049e0:	9b02      	ldr	r3, [sp, #8]
 80049e2:	3b02      	subs	r3, #2
 80049e4:	2b03      	cmp	r3, #3
 80049e6:	f200 8498 	bhi.w	800531a <_dtoa_r+0xac2>
 80049ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80049ee:	03df      	.short	0x03df
 80049f0:	03e803bf 	.word	0x03e803bf
 80049f4:	04f5      	.short	0x04f5
 80049f6:	9a05      	ldr	r2, [sp, #20]
 80049f8:	f242 730f 	movw	r3, #9999	; 0x270f
 80049fc:	6013      	str	r3, [r2, #0]
 80049fe:	9b00      	ldr	r3, [sp, #0]
 8004a00:	b983      	cbnz	r3, 8004a24 <_dtoa_r+0x1cc>
 8004a02:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004a06:	b96b      	cbnz	r3, 8004a24 <_dtoa_r+0x1cc>
 8004a08:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a0a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004a80 <_dtoa_r+0x228>
 8004a0e:	2b00      	cmp	r3, #0
 8004a10:	f43f af61 	beq.w	80048d6 <_dtoa_r+0x7e>
 8004a14:	f10b 0308 	add.w	r3, fp, #8
 8004a18:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004a1a:	4658      	mov	r0, fp
 8004a1c:	6013      	str	r3, [r2, #0]
 8004a1e:	b01b      	add	sp, #108	; 0x6c
 8004a20:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a24:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a26:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004a84 <_dtoa_r+0x22c>
 8004a2a:	2b00      	cmp	r3, #0
 8004a2c:	f43f af53 	beq.w	80048d6 <_dtoa_r+0x7e>
 8004a30:	f10b 0303 	add.w	r3, fp, #3
 8004a34:	e7f0      	b.n	8004a18 <_dtoa_r+0x1c0>
 8004a36:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004a3a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004a3e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004a40:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004a44:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004a48:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004a4a:	e76f      	b.n	800492c <_dtoa_r+0xd4>
 8004a4c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004a88 <_dtoa_r+0x230>
 8004a50:	4658      	mov	r0, fp
 8004a52:	b01b      	add	sp, #108	; 0x6c
 8004a54:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a58:	636f4361 	.word	0x636f4361
 8004a5c:	3fd287a7 	.word	0x3fd287a7
 8004a60:	8b60c8b3 	.word	0x8b60c8b3
 8004a64:	3fc68a28 	.word	0x3fc68a28
 8004a68:	509f79fb 	.word	0x509f79fb
 8004a6c:	3fd34413 	.word	0x3fd34413
 8004a70:	7ff00000 	.word	0x7ff00000
 8004a74:	08007491 	.word	0x08007491
 8004a78:	3ff80000 	.word	0x3ff80000
 8004a7c:	080074f0 	.word	0x080074f0
 8004a80:	080074b4 	.word	0x080074b4
 8004a84:	080074c0 	.word	0x080074c0
 8004a88:	08007490 	.word	0x08007490
 8004a8c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004a90:	2501      	movs	r5, #1
 8004a92:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004a96:	2300      	movs	r3, #0
 8004a98:	9302      	str	r3, [sp, #8]
 8004a9a:	9307      	str	r3, [sp, #28]
 8004a9c:	2100      	movs	r1, #0
 8004a9e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004aa2:	940e      	str	r4, [sp, #56]	; 0x38
 8004aa4:	4648      	mov	r0, r9
 8004aa6:	f001 fb1d 	bl	80060e4 <_Balloc>
 8004aaa:	2c0e      	cmp	r4, #14
 8004aac:	4683      	mov	fp, r0
 8004aae:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ab2:	f200 80fb 	bhi.w	8004cac <_dtoa_r+0x454>
 8004ab6:	2d00      	cmp	r5, #0
 8004ab8:	f000 80f8 	beq.w	8004cac <_dtoa_r+0x454>
 8004abc:	ed9d 7b00 	vldr	d7, [sp]
 8004ac0:	9906      	ldr	r1, [sp, #24]
 8004ac2:	2900      	cmp	r1, #0
 8004ac4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004ac8:	f340 83e5 	ble.w	8005296 <_dtoa_r+0xa3e>
 8004acc:	4b9d      	ldr	r3, [pc, #628]	; (8004d44 <_dtoa_r+0x4ec>)
 8004ace:	f001 020f 	and.w	r2, r1, #15
 8004ad2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ad6:	ed93 7b00 	vldr	d7, [r3]
 8004ada:	110c      	asrs	r4, r1, #4
 8004adc:	06e2      	lsls	r2, r4, #27
 8004ade:	ed8d 7b00 	vstr	d7, [sp]
 8004ae2:	f140 849e 	bpl.w	8005422 <_dtoa_r+0xbca>
 8004ae6:	4b98      	ldr	r3, [pc, #608]	; (8004d48 <_dtoa_r+0x4f0>)
 8004ae8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004aec:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004af0:	f7fc f94c 	bl	8000d8c <__aeabi_ddiv>
 8004af4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004af8:	f004 040f 	and.w	r4, r4, #15
 8004afc:	2603      	movs	r6, #3
 8004afe:	b17c      	cbz	r4, 8004b20 <_dtoa_r+0x2c8>
 8004b00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b04:	4d90      	ldr	r5, [pc, #576]	; (8004d48 <_dtoa_r+0x4f0>)
 8004b06:	07e3      	lsls	r3, r4, #31
 8004b08:	d504      	bpl.n	8004b14 <_dtoa_r+0x2bc>
 8004b0a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b0e:	f7fc f813 	bl	8000b38 <__aeabi_dmul>
 8004b12:	3601      	adds	r6, #1
 8004b14:	1064      	asrs	r4, r4, #1
 8004b16:	f105 0508 	add.w	r5, r5, #8
 8004b1a:	d1f4      	bne.n	8004b06 <_dtoa_r+0x2ae>
 8004b1c:	e9cd 0100 	strd	r0, r1, [sp]
 8004b20:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b24:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004b28:	f7fc f930 	bl	8000d8c <__aeabi_ddiv>
 8004b2c:	e9cd 0100 	strd	r0, r1, [sp]
 8004b30:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b32:	b143      	cbz	r3, 8004b46 <_dtoa_r+0x2ee>
 8004b34:	2200      	movs	r2, #0
 8004b36:	4b85      	ldr	r3, [pc, #532]	; (8004d4c <_dtoa_r+0x4f4>)
 8004b38:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b3c:	f7fc fa6e 	bl	800101c <__aeabi_dcmplt>
 8004b40:	2800      	cmp	r0, #0
 8004b42:	f040 84ff 	bne.w	8005544 <_dtoa_r+0xcec>
 8004b46:	4630      	mov	r0, r6
 8004b48:	f7fb ff8c 	bl	8000a64 <__aeabi_i2d>
 8004b4c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b50:	f7fb fff2 	bl	8000b38 <__aeabi_dmul>
 8004b54:	4b7e      	ldr	r3, [pc, #504]	; (8004d50 <_dtoa_r+0x4f8>)
 8004b56:	2200      	movs	r2, #0
 8004b58:	f7fb fe38 	bl	80007cc <__adddf3>
 8004b5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b5e:	4606      	mov	r6, r0
 8004b60:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b64:	2b00      	cmp	r3, #0
 8004b66:	f000 841c 	beq.w	80053a2 <_dtoa_r+0xb4a>
 8004b6a:	9b06      	ldr	r3, [sp, #24]
 8004b6c:	9316      	str	r3, [sp, #88]	; 0x58
 8004b6e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b70:	9312      	str	r3, [sp, #72]	; 0x48
 8004b72:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b76:	f7fc fa8f 	bl	8001098 <__aeabi_d2iz>
 8004b7a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004b7c:	4b71      	ldr	r3, [pc, #452]	; (8004d44 <_dtoa_r+0x4ec>)
 8004b7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b82:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004b86:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004b8a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004b8e:	f7fb ff69 	bl	8000a64 <__aeabi_i2d>
 8004b92:	460b      	mov	r3, r1
 8004b94:	4602      	mov	r2, r0
 8004b96:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b9a:	e9cd 6700 	strd	r6, r7, [sp]
 8004b9e:	f7fb fe13 	bl	80007c8 <__aeabi_dsub>
 8004ba2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ba4:	b2ed      	uxtb	r5, r5
 8004ba6:	4606      	mov	r6, r0
 8004ba8:	460f      	mov	r7, r1
 8004baa:	f10b 0401 	add.w	r4, fp, #1
 8004bae:	2b00      	cmp	r3, #0
 8004bb0:	f000 8458 	beq.w	8005464 <_dtoa_r+0xc0c>
 8004bb4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004bb8:	2000      	movs	r0, #0
 8004bba:	4966      	ldr	r1, [pc, #408]	; (8004d54 <_dtoa_r+0x4fc>)
 8004bbc:	f7fc f8e6 	bl	8000d8c <__aeabi_ddiv>
 8004bc0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004bc4:	f7fb fe00 	bl	80007c8 <__aeabi_dsub>
 8004bc8:	f88b 5000 	strb.w	r5, [fp]
 8004bcc:	4632      	mov	r2, r6
 8004bce:	463b      	mov	r3, r7
 8004bd0:	e9cd 0100 	strd	r0, r1, [sp]
 8004bd4:	f7fc fa40 	bl	8001058 <__aeabi_dcmpgt>
 8004bd8:	2800      	cmp	r0, #0
 8004bda:	f040 8502 	bne.w	80055e2 <_dtoa_r+0xd8a>
 8004bde:	4632      	mov	r2, r6
 8004be0:	463b      	mov	r3, r7
 8004be2:	2000      	movs	r0, #0
 8004be4:	4959      	ldr	r1, [pc, #356]	; (8004d4c <_dtoa_r+0x4f4>)
 8004be6:	f7fb fdef 	bl	80007c8 <__aeabi_dsub>
 8004bea:	4602      	mov	r2, r0
 8004bec:	460b      	mov	r3, r1
 8004bee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bf2:	f7fc fa31 	bl	8001058 <__aeabi_dcmpgt>
 8004bf6:	2800      	cmp	r0, #0
 8004bf8:	f040 84fb 	bne.w	80055f2 <_dtoa_r+0xd9a>
 8004bfc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004bfe:	2a01      	cmp	r2, #1
 8004c00:	d050      	beq.n	8004ca4 <_dtoa_r+0x44c>
 8004c02:	445a      	add	r2, fp
 8004c04:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004c08:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004c0c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004c10:	4692      	mov	sl, r2
 8004c12:	46cb      	mov	fp, r9
 8004c14:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004c18:	e00c      	b.n	8004c34 <_dtoa_r+0x3dc>
 8004c1a:	2000      	movs	r0, #0
 8004c1c:	494b      	ldr	r1, [pc, #300]	; (8004d4c <_dtoa_r+0x4f4>)
 8004c1e:	f7fb fdd3 	bl	80007c8 <__aeabi_dsub>
 8004c22:	4642      	mov	r2, r8
 8004c24:	464b      	mov	r3, r9
 8004c26:	f7fc f9f9 	bl	800101c <__aeabi_dcmplt>
 8004c2a:	2800      	cmp	r0, #0
 8004c2c:	f040 84dc 	bne.w	80055e8 <_dtoa_r+0xd90>
 8004c30:	4554      	cmp	r4, sl
 8004c32:	d030      	beq.n	8004c96 <_dtoa_r+0x43e>
 8004c34:	4640      	mov	r0, r8
 8004c36:	4649      	mov	r1, r9
 8004c38:	2200      	movs	r2, #0
 8004c3a:	4b47      	ldr	r3, [pc, #284]	; (8004d58 <_dtoa_r+0x500>)
 8004c3c:	f7fb ff7c 	bl	8000b38 <__aeabi_dmul>
 8004c40:	2200      	movs	r2, #0
 8004c42:	4b45      	ldr	r3, [pc, #276]	; (8004d58 <_dtoa_r+0x500>)
 8004c44:	4680      	mov	r8, r0
 8004c46:	4689      	mov	r9, r1
 8004c48:	4630      	mov	r0, r6
 8004c4a:	4639      	mov	r1, r7
 8004c4c:	f7fb ff74 	bl	8000b38 <__aeabi_dmul>
 8004c50:	460f      	mov	r7, r1
 8004c52:	4606      	mov	r6, r0
 8004c54:	f7fc fa20 	bl	8001098 <__aeabi_d2iz>
 8004c58:	4605      	mov	r5, r0
 8004c5a:	f7fb ff03 	bl	8000a64 <__aeabi_i2d>
 8004c5e:	4602      	mov	r2, r0
 8004c60:	460b      	mov	r3, r1
 8004c62:	4630      	mov	r0, r6
 8004c64:	4639      	mov	r1, r7
 8004c66:	f7fb fdaf 	bl	80007c8 <__aeabi_dsub>
 8004c6a:	3530      	adds	r5, #48	; 0x30
 8004c6c:	b2ed      	uxtb	r5, r5
 8004c6e:	4642      	mov	r2, r8
 8004c70:	464b      	mov	r3, r9
 8004c72:	f804 5b01 	strb.w	r5, [r4], #1
 8004c76:	4606      	mov	r6, r0
 8004c78:	460f      	mov	r7, r1
 8004c7a:	f7fc f9cf 	bl	800101c <__aeabi_dcmplt>
 8004c7e:	4632      	mov	r2, r6
 8004c80:	463b      	mov	r3, r7
 8004c82:	2800      	cmp	r0, #0
 8004c84:	d0c9      	beq.n	8004c1a <_dtoa_r+0x3c2>
 8004c86:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c88:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004c8c:	9306      	str	r3, [sp, #24]
 8004c8e:	46d9      	mov	r9, fp
 8004c90:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004c94:	e236      	b.n	8005104 <_dtoa_r+0x8ac>
 8004c96:	46d9      	mov	r9, fp
 8004c98:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004c9c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ca0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ca4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004ca8:	e9cd 3400 	strd	r3, r4, [sp]
 8004cac:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004cae:	2b00      	cmp	r3, #0
 8004cb0:	f2c0 80ae 	blt.w	8004e10 <_dtoa_r+0x5b8>
 8004cb4:	9a06      	ldr	r2, [sp, #24]
 8004cb6:	2a0e      	cmp	r2, #14
 8004cb8:	f300 80aa 	bgt.w	8004e10 <_dtoa_r+0x5b8>
 8004cbc:	4b21      	ldr	r3, [pc, #132]	; (8004d44 <_dtoa_r+0x4ec>)
 8004cbe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004cc2:	ed93 7b00 	vldr	d7, [r3]
 8004cc6:	9b07      	ldr	r3, [sp, #28]
 8004cc8:	2b00      	cmp	r3, #0
 8004cca:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004cce:	f2c0 82be 	blt.w	800524e <_dtoa_r+0x9f6>
 8004cd2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004cd6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cda:	4630      	mov	r0, r6
 8004cdc:	4639      	mov	r1, r7
 8004cde:	f7fc f855 	bl	8000d8c <__aeabi_ddiv>
 8004ce2:	f7fc f9d9 	bl	8001098 <__aeabi_d2iz>
 8004ce6:	4605      	mov	r5, r0
 8004ce8:	f7fb febc 	bl	8000a64 <__aeabi_i2d>
 8004cec:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cf0:	f7fb ff22 	bl	8000b38 <__aeabi_dmul>
 8004cf4:	460b      	mov	r3, r1
 8004cf6:	4602      	mov	r2, r0
 8004cf8:	4639      	mov	r1, r7
 8004cfa:	4630      	mov	r0, r6
 8004cfc:	f7fb fd64 	bl	80007c8 <__aeabi_dsub>
 8004d00:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004d04:	f88b 3000 	strb.w	r3, [fp]
 8004d08:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d0a:	2b01      	cmp	r3, #1
 8004d0c:	4606      	mov	r6, r0
 8004d0e:	460f      	mov	r7, r1
 8004d10:	f10b 0401 	add.w	r4, fp, #1
 8004d14:	d053      	beq.n	8004dbe <_dtoa_r+0x566>
 8004d16:	2200      	movs	r2, #0
 8004d18:	4b0f      	ldr	r3, [pc, #60]	; (8004d58 <_dtoa_r+0x500>)
 8004d1a:	f7fb ff0d 	bl	8000b38 <__aeabi_dmul>
 8004d1e:	2200      	movs	r2, #0
 8004d20:	2300      	movs	r3, #0
 8004d22:	4606      	mov	r6, r0
 8004d24:	460f      	mov	r7, r1
 8004d26:	f7fc f96f 	bl	8001008 <__aeabi_dcmpeq>
 8004d2a:	2800      	cmp	r0, #0
 8004d2c:	f040 81ea 	bne.w	8005104 <_dtoa_r+0x8ac>
 8004d30:	f8cd a000 	str.w	sl, [sp]
 8004d34:	f8cd 901c 	str.w	r9, [sp, #28]
 8004d38:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004d3c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004d40:	e017      	b.n	8004d72 <_dtoa_r+0x51a>
 8004d42:	bf00      	nop
 8004d44:	080074f0 	.word	0x080074f0
 8004d48:	080074c8 	.word	0x080074c8
 8004d4c:	3ff00000 	.word	0x3ff00000
 8004d50:	401c0000 	.word	0x401c0000
 8004d54:	3fe00000 	.word	0x3fe00000
 8004d58:	40240000 	.word	0x40240000
 8004d5c:	f7fb feec 	bl	8000b38 <__aeabi_dmul>
 8004d60:	2200      	movs	r2, #0
 8004d62:	2300      	movs	r3, #0
 8004d64:	4606      	mov	r6, r0
 8004d66:	460f      	mov	r7, r1
 8004d68:	f7fc f94e 	bl	8001008 <__aeabi_dcmpeq>
 8004d6c:	2800      	cmp	r0, #0
 8004d6e:	f040 833d 	bne.w	80053ec <_dtoa_r+0xb94>
 8004d72:	464a      	mov	r2, r9
 8004d74:	4653      	mov	r3, sl
 8004d76:	4630      	mov	r0, r6
 8004d78:	4639      	mov	r1, r7
 8004d7a:	f7fc f807 	bl	8000d8c <__aeabi_ddiv>
 8004d7e:	f7fc f98b 	bl	8001098 <__aeabi_d2iz>
 8004d82:	4605      	mov	r5, r0
 8004d84:	f7fb fe6e 	bl	8000a64 <__aeabi_i2d>
 8004d88:	464a      	mov	r2, r9
 8004d8a:	4653      	mov	r3, sl
 8004d8c:	f7fb fed4 	bl	8000b38 <__aeabi_dmul>
 8004d90:	4602      	mov	r2, r0
 8004d92:	460b      	mov	r3, r1
 8004d94:	4630      	mov	r0, r6
 8004d96:	4639      	mov	r1, r7
 8004d98:	f7fb fd16 	bl	80007c8 <__aeabi_dsub>
 8004d9c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004da0:	f804 cb01 	strb.w	ip, [r4], #1
 8004da4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004da8:	45e0      	cmp	r8, ip
 8004daa:	4606      	mov	r6, r0
 8004dac:	460f      	mov	r7, r1
 8004dae:	f04f 0200 	mov.w	r2, #0
 8004db2:	4bc1      	ldr	r3, [pc, #772]	; (80050b8 <_dtoa_r+0x860>)
 8004db4:	d1d2      	bne.n	8004d5c <_dtoa_r+0x504>
 8004db6:	f8dd a000 	ldr.w	sl, [sp]
 8004dba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dbe:	4632      	mov	r2, r6
 8004dc0:	463b      	mov	r3, r7
 8004dc2:	4630      	mov	r0, r6
 8004dc4:	4639      	mov	r1, r7
 8004dc6:	f7fb fd01 	bl	80007cc <__adddf3>
 8004dca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004dce:	4606      	mov	r6, r0
 8004dd0:	460f      	mov	r7, r1
 8004dd2:	f7fc f941 	bl	8001058 <__aeabi_dcmpgt>
 8004dd6:	b958      	cbnz	r0, 8004df0 <_dtoa_r+0x598>
 8004dd8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ddc:	4630      	mov	r0, r6
 8004dde:	4639      	mov	r1, r7
 8004de0:	f7fc f912 	bl	8001008 <__aeabi_dcmpeq>
 8004de4:	2800      	cmp	r0, #0
 8004de6:	f000 818d 	beq.w	8005104 <_dtoa_r+0x8ac>
 8004dea:	07e9      	lsls	r1, r5, #31
 8004dec:	f140 818a 	bpl.w	8005104 <_dtoa_r+0x8ac>
 8004df0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004df4:	e005      	b.n	8004e02 <_dtoa_r+0x5aa>
 8004df6:	459b      	cmp	fp, r3
 8004df8:	f000 8373 	beq.w	80054e2 <_dtoa_r+0xc8a>
 8004dfc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004e00:	461c      	mov	r4, r3
 8004e02:	2d39      	cmp	r5, #57	; 0x39
 8004e04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e08:	d0f5      	beq.n	8004df6 <_dtoa_r+0x59e>
 8004e0a:	3501      	adds	r5, #1
 8004e0c:	701d      	strb	r5, [r3, #0]
 8004e0e:	e179      	b.n	8005104 <_dtoa_r+0x8ac>
 8004e10:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004e12:	2a00      	cmp	r2, #0
 8004e14:	d03b      	beq.n	8004e8e <_dtoa_r+0x636>
 8004e16:	9a02      	ldr	r2, [sp, #8]
 8004e18:	2a01      	cmp	r2, #1
 8004e1a:	f340 820b 	ble.w	8005234 <_dtoa_r+0x9dc>
 8004e1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e20:	1e5f      	subs	r7, r3, #1
 8004e22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e24:	42bb      	cmp	r3, r7
 8004e26:	f2c0 82e6 	blt.w	80053f6 <_dtoa_r+0xb9e>
 8004e2a:	1bdf      	subs	r7, r3, r7
 8004e2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e2e:	2b00      	cmp	r3, #0
 8004e30:	f2c0 830b 	blt.w	800544a <_dtoa_r+0xbf2>
 8004e34:	9a08      	ldr	r2, [sp, #32]
 8004e36:	4614      	mov	r4, r2
 8004e38:	441a      	add	r2, r3
 8004e3a:	4498      	add	r8, r3
 8004e3c:	9208      	str	r2, [sp, #32]
 8004e3e:	2101      	movs	r1, #1
 8004e40:	4648      	mov	r0, r9
 8004e42:	f001 fa0f 	bl	8006264 <__i2b>
 8004e46:	4605      	mov	r5, r0
 8004e48:	e024      	b.n	8004e94 <_dtoa_r+0x63c>
 8004e4a:	2301      	movs	r3, #1
 8004e4c:	930d      	str	r3, [sp, #52]	; 0x34
 8004e4e:	e5af      	b.n	80049b0 <_dtoa_r+0x158>
 8004e50:	9a08      	ldr	r2, [sp, #32]
 8004e52:	9b06      	ldr	r3, [sp, #24]
 8004e54:	1ad2      	subs	r2, r2, r3
 8004e56:	425b      	negs	r3, r3
 8004e58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004e5a:	2300      	movs	r3, #0
 8004e5c:	9208      	str	r2, [sp, #32]
 8004e5e:	930c      	str	r3, [sp, #48]	; 0x30
 8004e60:	e5b5      	b.n	80049ce <_dtoa_r+0x176>
 8004e62:	f1c4 0301 	rsb	r3, r4, #1
 8004e66:	9308      	str	r3, [sp, #32]
 8004e68:	f04f 0800 	mov.w	r8, #0
 8004e6c:	e5a7      	b.n	80049be <_dtoa_r+0x166>
 8004e6e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004e72:	4640      	mov	r0, r8
 8004e74:	f7fb fdf6 	bl	8000a64 <__aeabi_i2d>
 8004e78:	4632      	mov	r2, r6
 8004e7a:	463b      	mov	r3, r7
 8004e7c:	f7fc f8c4 	bl	8001008 <__aeabi_dcmpeq>
 8004e80:	2800      	cmp	r0, #0
 8004e82:	f47f ad81 	bne.w	8004988 <_dtoa_r+0x130>
 8004e86:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004e8a:	9306      	str	r3, [sp, #24]
 8004e8c:	e57c      	b.n	8004988 <_dtoa_r+0x130>
 8004e8e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e90:	9c08      	ldr	r4, [sp, #32]
 8004e92:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004e94:	2c00      	cmp	r4, #0
 8004e96:	dd0c      	ble.n	8004eb2 <_dtoa_r+0x65a>
 8004e98:	f1b8 0f00 	cmp.w	r8, #0
 8004e9c:	dd09      	ble.n	8004eb2 <_dtoa_r+0x65a>
 8004e9e:	4544      	cmp	r4, r8
 8004ea0:	9a08      	ldr	r2, [sp, #32]
 8004ea2:	4623      	mov	r3, r4
 8004ea4:	bfa8      	it	ge
 8004ea6:	4643      	movge	r3, r8
 8004ea8:	1ad2      	subs	r2, r2, r3
 8004eaa:	9208      	str	r2, [sp, #32]
 8004eac:	1ae4      	subs	r4, r4, r3
 8004eae:	eba8 0803 	sub.w	r8, r8, r3
 8004eb2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004eb4:	b16b      	cbz	r3, 8004ed2 <_dtoa_r+0x67a>
 8004eb6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004eb8:	2a00      	cmp	r2, #0
 8004eba:	f000 8290 	beq.w	80053de <_dtoa_r+0xb86>
 8004ebe:	1bde      	subs	r6, r3, r7
 8004ec0:	2f00      	cmp	r7, #0
 8004ec2:	f040 819b 	bne.w	80051fc <_dtoa_r+0x9a4>
 8004ec6:	4651      	mov	r1, sl
 8004ec8:	4632      	mov	r2, r6
 8004eca:	4648      	mov	r0, r9
 8004ecc:	f001 fa7a 	bl	80063c4 <__pow5mult>
 8004ed0:	4682      	mov	sl, r0
 8004ed2:	2101      	movs	r1, #1
 8004ed4:	4648      	mov	r0, r9
 8004ed6:	f001 f9c5 	bl	8006264 <__i2b>
 8004eda:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004edc:	4606      	mov	r6, r0
 8004ede:	2a00      	cmp	r2, #0
 8004ee0:	f040 8125 	bne.w	800512e <_dtoa_r+0x8d6>
 8004ee4:	9b02      	ldr	r3, [sp, #8]
 8004ee6:	2b01      	cmp	r3, #1
 8004ee8:	f340 816c 	ble.w	80051c4 <_dtoa_r+0x96c>
 8004eec:	2001      	movs	r0, #1
 8004eee:	4440      	add	r0, r8
 8004ef0:	f010 001f 	ands.w	r0, r0, #31
 8004ef4:	f000 8119 	beq.w	800512a <_dtoa_r+0x8d2>
 8004ef8:	f1c0 0320 	rsb	r3, r0, #32
 8004efc:	2b04      	cmp	r3, #4
 8004efe:	f340 83ac 	ble.w	800565a <_dtoa_r+0xe02>
 8004f02:	f1c0 001c 	rsb	r0, r0, #28
 8004f06:	9b08      	ldr	r3, [sp, #32]
 8004f08:	4403      	add	r3, r0
 8004f0a:	9308      	str	r3, [sp, #32]
 8004f0c:	4404      	add	r4, r0
 8004f0e:	4480      	add	r8, r0
 8004f10:	9b08      	ldr	r3, [sp, #32]
 8004f12:	2b00      	cmp	r3, #0
 8004f14:	dd05      	ble.n	8004f22 <_dtoa_r+0x6ca>
 8004f16:	4651      	mov	r1, sl
 8004f18:	461a      	mov	r2, r3
 8004f1a:	4648      	mov	r0, r9
 8004f1c:	f001 faa2 	bl	8006464 <__lshift>
 8004f20:	4682      	mov	sl, r0
 8004f22:	f1b8 0f00 	cmp.w	r8, #0
 8004f26:	dd05      	ble.n	8004f34 <_dtoa_r+0x6dc>
 8004f28:	4631      	mov	r1, r6
 8004f2a:	4642      	mov	r2, r8
 8004f2c:	4648      	mov	r0, r9
 8004f2e:	f001 fa99 	bl	8006464 <__lshift>
 8004f32:	4606      	mov	r6, r0
 8004f34:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004f36:	2b00      	cmp	r3, #0
 8004f38:	d177      	bne.n	800502a <_dtoa_r+0x7d2>
 8004f3a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f3c:	2b00      	cmp	r3, #0
 8004f3e:	f340 8209 	ble.w	8005354 <_dtoa_r+0xafc>
 8004f42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f44:	2b00      	cmp	r3, #0
 8004f46:	f000 8089 	beq.w	800505c <_dtoa_r+0x804>
 8004f4a:	2c00      	cmp	r4, #0
 8004f4c:	f300 816b 	bgt.w	8005226 <_dtoa_r+0x9ce>
 8004f50:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004f52:	2b00      	cmp	r3, #0
 8004f54:	f040 81cd 	bne.w	80052f2 <_dtoa_r+0xa9a>
 8004f58:	46a8      	mov	r8, r5
 8004f5a:	9a00      	ldr	r2, [sp, #0]
 8004f5c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004f60:	f002 0201 	and.w	r2, r2, #1
 8004f64:	920a      	str	r2, [sp, #40]	; 0x28
 8004f66:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004f68:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004f6c:	441a      	add	r2, r3
 8004f6e:	465f      	mov	r7, fp
 8004f70:	9209      	str	r2, [sp, #36]	; 0x24
 8004f72:	46b3      	mov	fp, r6
 8004f74:	4659      	mov	r1, fp
 8004f76:	4650      	mov	r0, sl
 8004f78:	f7ff fbdc 	bl	8004734 <quorem>
 8004f7c:	4629      	mov	r1, r5
 8004f7e:	4604      	mov	r4, r0
 8004f80:	4650      	mov	r0, sl
 8004f82:	f001 fac5 	bl	8006510 <__mcmp>
 8004f86:	4659      	mov	r1, fp
 8004f88:	4606      	mov	r6, r0
 8004f8a:	4642      	mov	r2, r8
 8004f8c:	4648      	mov	r0, r9
 8004f8e:	f001 fadb 	bl	8006548 <__mdiff>
 8004f92:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004f96:	9300      	str	r3, [sp, #0]
 8004f98:	68c3      	ldr	r3, [r0, #12]
 8004f9a:	4601      	mov	r1, r0
 8004f9c:	2b00      	cmp	r3, #0
 8004f9e:	f040 81d4 	bne.w	800534a <_dtoa_r+0xaf2>
 8004fa2:	9008      	str	r0, [sp, #32]
 8004fa4:	4650      	mov	r0, sl
 8004fa6:	f001 fab3 	bl	8006510 <__mcmp>
 8004faa:	9a08      	ldr	r2, [sp, #32]
 8004fac:	9007      	str	r0, [sp, #28]
 8004fae:	4611      	mov	r1, r2
 8004fb0:	4648      	mov	r0, r9
 8004fb2:	f001 f8bd 	bl	8006130 <_Bfree>
 8004fb6:	9b07      	ldr	r3, [sp, #28]
 8004fb8:	b933      	cbnz	r3, 8004fc8 <_dtoa_r+0x770>
 8004fba:	9a02      	ldr	r2, [sp, #8]
 8004fbc:	b922      	cbnz	r2, 8004fc8 <_dtoa_r+0x770>
 8004fbe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004fc0:	2b00      	cmp	r3, #0
 8004fc2:	f000 8319 	beq.w	80055f8 <_dtoa_r+0xda0>
 8004fc6:	9b02      	ldr	r3, [sp, #8]
 8004fc8:	2e00      	cmp	r6, #0
 8004fca:	f2c0 821c 	blt.w	8005406 <_dtoa_r+0xbae>
 8004fce:	d105      	bne.n	8004fdc <_dtoa_r+0x784>
 8004fd0:	9a02      	ldr	r2, [sp, #8]
 8004fd2:	b91a      	cbnz	r2, 8004fdc <_dtoa_r+0x784>
 8004fd4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004fd6:	2a00      	cmp	r2, #0
 8004fd8:	f000 8215 	beq.w	8005406 <_dtoa_r+0xbae>
 8004fdc:	2b00      	cmp	r3, #0
 8004fde:	f107 0401 	add.w	r4, r7, #1
 8004fe2:	f300 8225 	bgt.w	8005430 <_dtoa_r+0xbd8>
 8004fe6:	9b00      	ldr	r3, [sp, #0]
 8004fe8:	703b      	strb	r3, [r7, #0]
 8004fea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fec:	42bb      	cmp	r3, r7
 8004fee:	f000 8230 	beq.w	8005452 <_dtoa_r+0xbfa>
 8004ff2:	4651      	mov	r1, sl
 8004ff4:	2300      	movs	r3, #0
 8004ff6:	220a      	movs	r2, #10
 8004ff8:	4648      	mov	r0, r9
 8004ffa:	f001 f8a3 	bl	8006144 <__multadd>
 8004ffe:	4545      	cmp	r5, r8
 8005000:	4682      	mov	sl, r0
 8005002:	4629      	mov	r1, r5
 8005004:	f04f 0300 	mov.w	r3, #0
 8005008:	f04f 020a 	mov.w	r2, #10
 800500c:	4648      	mov	r0, r9
 800500e:	f000 8196 	beq.w	800533e <_dtoa_r+0xae6>
 8005012:	f001 f897 	bl	8006144 <__multadd>
 8005016:	4641      	mov	r1, r8
 8005018:	4605      	mov	r5, r0
 800501a:	2300      	movs	r3, #0
 800501c:	220a      	movs	r2, #10
 800501e:	4648      	mov	r0, r9
 8005020:	f001 f890 	bl	8006144 <__multadd>
 8005024:	4627      	mov	r7, r4
 8005026:	4680      	mov	r8, r0
 8005028:	e7a4      	b.n	8004f74 <_dtoa_r+0x71c>
 800502a:	4631      	mov	r1, r6
 800502c:	4650      	mov	r0, sl
 800502e:	f001 fa6f 	bl	8006510 <__mcmp>
 8005032:	2800      	cmp	r0, #0
 8005034:	da81      	bge.n	8004f3a <_dtoa_r+0x6e2>
 8005036:	9f06      	ldr	r7, [sp, #24]
 8005038:	4651      	mov	r1, sl
 800503a:	2300      	movs	r3, #0
 800503c:	220a      	movs	r2, #10
 800503e:	4648      	mov	r0, r9
 8005040:	3f01      	subs	r7, #1
 8005042:	9706      	str	r7, [sp, #24]
 8005044:	f001 f87e 	bl	8006144 <__multadd>
 8005048:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800504a:	4682      	mov	sl, r0
 800504c:	2b00      	cmp	r3, #0
 800504e:	f040 82eb 	bne.w	8005628 <_dtoa_r+0xdd0>
 8005052:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005054:	2b00      	cmp	r3, #0
 8005056:	f340 82f3 	ble.w	8005640 <_dtoa_r+0xde8>
 800505a:	9309      	str	r3, [sp, #36]	; 0x24
 800505c:	465c      	mov	r4, fp
 800505e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005062:	e002      	b.n	800506a <_dtoa_r+0x812>
 8005064:	f001 f86e 	bl	8006144 <__multadd>
 8005068:	4682      	mov	sl, r0
 800506a:	4631      	mov	r1, r6
 800506c:	4650      	mov	r0, sl
 800506e:	f7ff fb61 	bl	8004734 <quorem>
 8005072:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005076:	f804 7b01 	strb.w	r7, [r4], #1
 800507a:	eba4 030b 	sub.w	r3, r4, fp
 800507e:	4598      	cmp	r8, r3
 8005080:	f04f 020a 	mov.w	r2, #10
 8005084:	f04f 0300 	mov.w	r3, #0
 8005088:	4651      	mov	r1, sl
 800508a:	4648      	mov	r0, r9
 800508c:	dcea      	bgt.n	8005064 <_dtoa_r+0x80c>
 800508e:	2300      	movs	r3, #0
 8005090:	9700      	str	r7, [sp, #0]
 8005092:	9302      	str	r3, [sp, #8]
 8005094:	4651      	mov	r1, sl
 8005096:	2201      	movs	r2, #1
 8005098:	4648      	mov	r0, r9
 800509a:	f001 f9e3 	bl	8006464 <__lshift>
 800509e:	4631      	mov	r1, r6
 80050a0:	4682      	mov	sl, r0
 80050a2:	f001 fa35 	bl	8006510 <__mcmp>
 80050a6:	2800      	cmp	r0, #0
 80050a8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80050ac:	dc14      	bgt.n	80050d8 <_dtoa_r+0x880>
 80050ae:	d108      	bne.n	80050c2 <_dtoa_r+0x86a>
 80050b0:	9b00      	ldr	r3, [sp, #0]
 80050b2:	07db      	lsls	r3, r3, #31
 80050b4:	d410      	bmi.n	80050d8 <_dtoa_r+0x880>
 80050b6:	e004      	b.n	80050c2 <_dtoa_r+0x86a>
 80050b8:	40240000 	.word	0x40240000
 80050bc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80050c0:	461c      	mov	r4, r3
 80050c2:	2a30      	cmp	r2, #48	; 0x30
 80050c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050c8:	d0f8      	beq.n	80050bc <_dtoa_r+0x864>
 80050ca:	e00b      	b.n	80050e4 <_dtoa_r+0x88c>
 80050cc:	459b      	cmp	fp, r3
 80050ce:	f000 814e 	beq.w	800536e <_dtoa_r+0xb16>
 80050d2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80050d6:	461c      	mov	r4, r3
 80050d8:	2a39      	cmp	r2, #57	; 0x39
 80050da:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050de:	d0f5      	beq.n	80050cc <_dtoa_r+0x874>
 80050e0:	3201      	adds	r2, #1
 80050e2:	701a      	strb	r2, [r3, #0]
 80050e4:	4631      	mov	r1, r6
 80050e6:	4648      	mov	r0, r9
 80050e8:	f001 f822 	bl	8006130 <_Bfree>
 80050ec:	b155      	cbz	r5, 8005104 <_dtoa_r+0x8ac>
 80050ee:	9902      	ldr	r1, [sp, #8]
 80050f0:	b121      	cbz	r1, 80050fc <_dtoa_r+0x8a4>
 80050f2:	42a9      	cmp	r1, r5
 80050f4:	d002      	beq.n	80050fc <_dtoa_r+0x8a4>
 80050f6:	4648      	mov	r0, r9
 80050f8:	f001 f81a 	bl	8006130 <_Bfree>
 80050fc:	4629      	mov	r1, r5
 80050fe:	4648      	mov	r0, r9
 8005100:	f001 f816 	bl	8006130 <_Bfree>
 8005104:	4651      	mov	r1, sl
 8005106:	4648      	mov	r0, r9
 8005108:	f001 f812 	bl	8006130 <_Bfree>
 800510c:	2200      	movs	r2, #0
 800510e:	9b06      	ldr	r3, [sp, #24]
 8005110:	7022      	strb	r2, [r4, #0]
 8005112:	9a05      	ldr	r2, [sp, #20]
 8005114:	3301      	adds	r3, #1
 8005116:	6013      	str	r3, [r2, #0]
 8005118:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800511a:	2b00      	cmp	r3, #0
 800511c:	f43f abdb 	beq.w	80048d6 <_dtoa_r+0x7e>
 8005120:	4658      	mov	r0, fp
 8005122:	601c      	str	r4, [r3, #0]
 8005124:	b01b      	add	sp, #108	; 0x6c
 8005126:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800512a:	201c      	movs	r0, #28
 800512c:	e6eb      	b.n	8004f06 <_dtoa_r+0x6ae>
 800512e:	4601      	mov	r1, r0
 8005130:	4648      	mov	r0, r9
 8005132:	f001 f947 	bl	80063c4 <__pow5mult>
 8005136:	9b02      	ldr	r3, [sp, #8]
 8005138:	2b01      	cmp	r3, #1
 800513a:	4606      	mov	r6, r0
 800513c:	f340 80d4 	ble.w	80052e8 <_dtoa_r+0xa90>
 8005140:	2300      	movs	r3, #0
 8005142:	930c      	str	r3, [sp, #48]	; 0x30
 8005144:	6933      	ldr	r3, [r6, #16]
 8005146:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800514a:	6918      	ldr	r0, [r3, #16]
 800514c:	f001 f83a 	bl	80061c4 <__hi0bits>
 8005150:	f1c0 0020 	rsb	r0, r0, #32
 8005154:	e6cb      	b.n	8004eee <_dtoa_r+0x696>
 8005156:	900d      	str	r0, [sp, #52]	; 0x34
 8005158:	e42a      	b.n	80049b0 <_dtoa_r+0x158>
 800515a:	2501      	movs	r5, #1
 800515c:	e440      	b.n	80049e0 <_dtoa_r+0x188>
 800515e:	f1c3 0820 	rsb	r8, r3, #32
 8005162:	9b00      	ldr	r3, [sp, #0]
 8005164:	fa03 f008 	lsl.w	r0, r3, r8
 8005168:	f7ff bbd8 	b.w	800491c <_dtoa_r+0xc4>
 800516c:	2300      	movs	r3, #0
 800516e:	930a      	str	r3, [sp, #40]	; 0x28
 8005170:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005174:	4413      	add	r3, r2
 8005176:	930e      	str	r3, [sp, #56]	; 0x38
 8005178:	3301      	adds	r3, #1
 800517a:	2b01      	cmp	r3, #1
 800517c:	461e      	mov	r6, r3
 800517e:	9309      	str	r3, [sp, #36]	; 0x24
 8005180:	bfb8      	it	lt
 8005182:	2601      	movlt	r6, #1
 8005184:	2100      	movs	r1, #0
 8005186:	2e17      	cmp	r6, #23
 8005188:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800518c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800518e:	f77f ac89 	ble.w	8004aa4 <_dtoa_r+0x24c>
 8005192:	2201      	movs	r2, #1
 8005194:	2304      	movs	r3, #4
 8005196:	005b      	lsls	r3, r3, #1
 8005198:	f103 0014 	add.w	r0, r3, #20
 800519c:	42b0      	cmp	r0, r6
 800519e:	4611      	mov	r1, r2
 80051a0:	f102 0201 	add.w	r2, r2, #1
 80051a4:	d9f7      	bls.n	8005196 <_dtoa_r+0x93e>
 80051a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80051aa:	e47b      	b.n	8004aa4 <_dtoa_r+0x24c>
 80051ac:	2300      	movs	r3, #0
 80051ae:	930a      	str	r3, [sp, #40]	; 0x28
 80051b0:	9e07      	ldr	r6, [sp, #28]
 80051b2:	2e00      	cmp	r6, #0
 80051b4:	f340 80e2 	ble.w	800537c <_dtoa_r+0xb24>
 80051b8:	960e      	str	r6, [sp, #56]	; 0x38
 80051ba:	9609      	str	r6, [sp, #36]	; 0x24
 80051bc:	e7e2      	b.n	8005184 <_dtoa_r+0x92c>
 80051be:	2301      	movs	r3, #1
 80051c0:	930a      	str	r3, [sp, #40]	; 0x28
 80051c2:	e7f5      	b.n	80051b0 <_dtoa_r+0x958>
 80051c4:	9b00      	ldr	r3, [sp, #0]
 80051c6:	2b00      	cmp	r3, #0
 80051c8:	f47f ae90 	bne.w	8004eec <_dtoa_r+0x694>
 80051cc:	e9dd 1200 	ldrd	r1, r2, [sp]
 80051d0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80051d4:	2b00      	cmp	r3, #0
 80051d6:	f040 8192 	bne.w	80054fe <_dtoa_r+0xca6>
 80051da:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80051de:	0d1b      	lsrs	r3, r3, #20
 80051e0:	051b      	lsls	r3, r3, #20
 80051e2:	b12b      	cbz	r3, 80051f0 <_dtoa_r+0x998>
 80051e4:	9b08      	ldr	r3, [sp, #32]
 80051e6:	3301      	adds	r3, #1
 80051e8:	9308      	str	r3, [sp, #32]
 80051ea:	f108 0801 	add.w	r8, r8, #1
 80051ee:	2301      	movs	r3, #1
 80051f0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051f2:	930c      	str	r3, [sp, #48]	; 0x30
 80051f4:	2a00      	cmp	r2, #0
 80051f6:	f43f ae79 	beq.w	8004eec <_dtoa_r+0x694>
 80051fa:	e7a3      	b.n	8005144 <_dtoa_r+0x8ec>
 80051fc:	463a      	mov	r2, r7
 80051fe:	4629      	mov	r1, r5
 8005200:	4648      	mov	r0, r9
 8005202:	f001 f8df 	bl	80063c4 <__pow5mult>
 8005206:	4652      	mov	r2, sl
 8005208:	4601      	mov	r1, r0
 800520a:	4605      	mov	r5, r0
 800520c:	4648      	mov	r0, r9
 800520e:	f001 f833 	bl	8006278 <__multiply>
 8005212:	4651      	mov	r1, sl
 8005214:	4607      	mov	r7, r0
 8005216:	4648      	mov	r0, r9
 8005218:	f000 ff8a 	bl	8006130 <_Bfree>
 800521c:	46ba      	mov	sl, r7
 800521e:	2e00      	cmp	r6, #0
 8005220:	f43f ae57 	beq.w	8004ed2 <_dtoa_r+0x67a>
 8005224:	e64f      	b.n	8004ec6 <_dtoa_r+0x66e>
 8005226:	4629      	mov	r1, r5
 8005228:	4622      	mov	r2, r4
 800522a:	4648      	mov	r0, r9
 800522c:	f001 f91a 	bl	8006464 <__lshift>
 8005230:	4605      	mov	r5, r0
 8005232:	e68d      	b.n	8004f50 <_dtoa_r+0x6f8>
 8005234:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005236:	2a00      	cmp	r2, #0
 8005238:	f000 815d 	beq.w	80054f6 <_dtoa_r+0xc9e>
 800523c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005240:	9a08      	ldr	r2, [sp, #32]
 8005242:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005244:	4614      	mov	r4, r2
 8005246:	441a      	add	r2, r3
 8005248:	4498      	add	r8, r3
 800524a:	9208      	str	r2, [sp, #32]
 800524c:	e5f7      	b.n	8004e3e <_dtoa_r+0x5e6>
 800524e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005250:	2b00      	cmp	r3, #0
 8005252:	f73f ad3e 	bgt.w	8004cd2 <_dtoa_r+0x47a>
 8005256:	f040 80bc 	bne.w	80053d2 <_dtoa_r+0xb7a>
 800525a:	ec51 0b17 	vmov	r0, r1, d7
 800525e:	2200      	movs	r2, #0
 8005260:	4bb2      	ldr	r3, [pc, #712]	; (800552c <_dtoa_r+0xcd4>)
 8005262:	f7fb fc69 	bl	8000b38 <__aeabi_dmul>
 8005266:	e9dd 2300 	ldrd	r2, r3, [sp]
 800526a:	f7fb feeb 	bl	8001044 <__aeabi_dcmpge>
 800526e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005270:	4635      	mov	r5, r6
 8005272:	2800      	cmp	r0, #0
 8005274:	d176      	bne.n	8005364 <_dtoa_r+0xb0c>
 8005276:	9a06      	ldr	r2, [sp, #24]
 8005278:	2331      	movs	r3, #49	; 0x31
 800527a:	3201      	adds	r2, #1
 800527c:	9206      	str	r2, [sp, #24]
 800527e:	f88b 3000 	strb.w	r3, [fp]
 8005282:	f10b 0401 	add.w	r4, fp, #1
 8005286:	4631      	mov	r1, r6
 8005288:	4648      	mov	r0, r9
 800528a:	f000 ff51 	bl	8006130 <_Bfree>
 800528e:	2d00      	cmp	r5, #0
 8005290:	f47f af34 	bne.w	80050fc <_dtoa_r+0x8a4>
 8005294:	e736      	b.n	8005104 <_dtoa_r+0x8ac>
 8005296:	f000 8142 	beq.w	800551e <_dtoa_r+0xcc6>
 800529a:	9b06      	ldr	r3, [sp, #24]
 800529c:	425c      	negs	r4, r3
 800529e:	4ba4      	ldr	r3, [pc, #656]	; (8005530 <_dtoa_r+0xcd8>)
 80052a0:	f004 020f 	and.w	r2, r4, #15
 80052a4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80052a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052ac:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80052b0:	f7fb fc42 	bl	8000b38 <__aeabi_dmul>
 80052b4:	1124      	asrs	r4, r4, #4
 80052b6:	e9cd 0100 	strd	r0, r1, [sp]
 80052ba:	f000 81c6 	beq.w	800564a <_dtoa_r+0xdf2>
 80052be:	4d9d      	ldr	r5, [pc, #628]	; (8005534 <_dtoa_r+0xcdc>)
 80052c0:	2300      	movs	r3, #0
 80052c2:	2602      	movs	r6, #2
 80052c4:	07e7      	lsls	r7, r4, #31
 80052c6:	d505      	bpl.n	80052d4 <_dtoa_r+0xa7c>
 80052c8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80052cc:	f7fb fc34 	bl	8000b38 <__aeabi_dmul>
 80052d0:	3601      	adds	r6, #1
 80052d2:	2301      	movs	r3, #1
 80052d4:	1064      	asrs	r4, r4, #1
 80052d6:	f105 0508 	add.w	r5, r5, #8
 80052da:	d1f3      	bne.n	80052c4 <_dtoa_r+0xa6c>
 80052dc:	2b00      	cmp	r3, #0
 80052de:	f43f ac27 	beq.w	8004b30 <_dtoa_r+0x2d8>
 80052e2:	e9cd 0100 	strd	r0, r1, [sp]
 80052e6:	e423      	b.n	8004b30 <_dtoa_r+0x2d8>
 80052e8:	9b00      	ldr	r3, [sp, #0]
 80052ea:	2b00      	cmp	r3, #0
 80052ec:	f43f af6e 	beq.w	80051cc <_dtoa_r+0x974>
 80052f0:	e726      	b.n	8005140 <_dtoa_r+0x8e8>
 80052f2:	6869      	ldr	r1, [r5, #4]
 80052f4:	4648      	mov	r0, r9
 80052f6:	f000 fef5 	bl	80060e4 <_Balloc>
 80052fa:	692b      	ldr	r3, [r5, #16]
 80052fc:	3302      	adds	r3, #2
 80052fe:	009a      	lsls	r2, r3, #2
 8005300:	4604      	mov	r4, r0
 8005302:	f105 010c 	add.w	r1, r5, #12
 8005306:	300c      	adds	r0, #12
 8005308:	f7fb f8fa 	bl	8000500 <memcpy>
 800530c:	4621      	mov	r1, r4
 800530e:	2201      	movs	r2, #1
 8005310:	4648      	mov	r0, r9
 8005312:	f001 f8a7 	bl	8006464 <__lshift>
 8005316:	4680      	mov	r8, r0
 8005318:	e61f      	b.n	8004f5a <_dtoa_r+0x702>
 800531a:	2400      	movs	r4, #0
 800531c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005320:	4621      	mov	r1, r4
 8005322:	4648      	mov	r0, r9
 8005324:	f000 fede 	bl	80060e4 <_Balloc>
 8005328:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800532c:	930e      	str	r3, [sp, #56]	; 0x38
 800532e:	9309      	str	r3, [sp, #36]	; 0x24
 8005330:	2301      	movs	r3, #1
 8005332:	4683      	mov	fp, r0
 8005334:	9407      	str	r4, [sp, #28]
 8005336:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800533a:	930a      	str	r3, [sp, #40]	; 0x28
 800533c:	e4b6      	b.n	8004cac <_dtoa_r+0x454>
 800533e:	f000 ff01 	bl	8006144 <__multadd>
 8005342:	4627      	mov	r7, r4
 8005344:	4605      	mov	r5, r0
 8005346:	4680      	mov	r8, r0
 8005348:	e614      	b.n	8004f74 <_dtoa_r+0x71c>
 800534a:	4648      	mov	r0, r9
 800534c:	f000 fef0 	bl	8006130 <_Bfree>
 8005350:	2301      	movs	r3, #1
 8005352:	e639      	b.n	8004fc8 <_dtoa_r+0x770>
 8005354:	9b02      	ldr	r3, [sp, #8]
 8005356:	2b02      	cmp	r3, #2
 8005358:	f77f adf3 	ble.w	8004f42 <_dtoa_r+0x6ea>
 800535c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800535e:	2b00      	cmp	r3, #0
 8005360:	f000 80cf 	beq.w	8005502 <_dtoa_r+0xcaa>
 8005364:	9b07      	ldr	r3, [sp, #28]
 8005366:	43db      	mvns	r3, r3
 8005368:	9306      	str	r3, [sp, #24]
 800536a:	465c      	mov	r4, fp
 800536c:	e78b      	b.n	8005286 <_dtoa_r+0xa2e>
 800536e:	9a06      	ldr	r2, [sp, #24]
 8005370:	2331      	movs	r3, #49	; 0x31
 8005372:	3201      	adds	r2, #1
 8005374:	9206      	str	r2, [sp, #24]
 8005376:	f88b 3000 	strb.w	r3, [fp]
 800537a:	e6b3      	b.n	80050e4 <_dtoa_r+0x88c>
 800537c:	2401      	movs	r4, #1
 800537e:	9409      	str	r4, [sp, #36]	; 0x24
 8005380:	9407      	str	r4, [sp, #28]
 8005382:	f7ff bb8b 	b.w	8004a9c <_dtoa_r+0x244>
 8005386:	4630      	mov	r0, r6
 8005388:	f7fb fb6c 	bl	8000a64 <__aeabi_i2d>
 800538c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005390:	f7fb fbd2 	bl	8000b38 <__aeabi_dmul>
 8005394:	2200      	movs	r2, #0
 8005396:	4b68      	ldr	r3, [pc, #416]	; (8005538 <_dtoa_r+0xce0>)
 8005398:	f7fb fa18 	bl	80007cc <__adddf3>
 800539c:	4606      	mov	r6, r0
 800539e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80053a2:	2200      	movs	r2, #0
 80053a4:	4b61      	ldr	r3, [pc, #388]	; (800552c <_dtoa_r+0xcd4>)
 80053a6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053aa:	f7fb fa0d 	bl	80007c8 <__aeabi_dsub>
 80053ae:	4632      	mov	r2, r6
 80053b0:	463b      	mov	r3, r7
 80053b2:	4604      	mov	r4, r0
 80053b4:	460d      	mov	r5, r1
 80053b6:	f7fb fe4f 	bl	8001058 <__aeabi_dcmpgt>
 80053ba:	2800      	cmp	r0, #0
 80053bc:	d14f      	bne.n	800545e <_dtoa_r+0xc06>
 80053be:	4632      	mov	r2, r6
 80053c0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80053c4:	4620      	mov	r0, r4
 80053c6:	4629      	mov	r1, r5
 80053c8:	f7fb fe28 	bl	800101c <__aeabi_dcmplt>
 80053cc:	2800      	cmp	r0, #0
 80053ce:	f43f ac69 	beq.w	8004ca4 <_dtoa_r+0x44c>
 80053d2:	2600      	movs	r6, #0
 80053d4:	4635      	mov	r5, r6
 80053d6:	e7c5      	b.n	8005364 <_dtoa_r+0xb0c>
 80053d8:	2301      	movs	r3, #1
 80053da:	930a      	str	r3, [sp, #40]	; 0x28
 80053dc:	e6c8      	b.n	8005170 <_dtoa_r+0x918>
 80053de:	4651      	mov	r1, sl
 80053e0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80053e2:	4648      	mov	r0, r9
 80053e4:	f000 ffee 	bl	80063c4 <__pow5mult>
 80053e8:	4682      	mov	sl, r0
 80053ea:	e572      	b.n	8004ed2 <_dtoa_r+0x67a>
 80053ec:	f8dd a000 	ldr.w	sl, [sp]
 80053f0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80053f4:	e686      	b.n	8005104 <_dtoa_r+0x8ac>
 80053f6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80053f8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80053fa:	1afb      	subs	r3, r7, r3
 80053fc:	441a      	add	r2, r3
 80053fe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005402:	2700      	movs	r7, #0
 8005404:	e512      	b.n	8004e2c <_dtoa_r+0x5d4>
 8005406:	2b00      	cmp	r3, #0
 8005408:	9402      	str	r4, [sp, #8]
 800540a:	465e      	mov	r6, fp
 800540c:	f107 0401 	add.w	r4, r7, #1
 8005410:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005414:	f300 80ba 	bgt.w	800558c <_dtoa_r+0xd34>
 8005418:	9b00      	ldr	r3, [sp, #0]
 800541a:	9502      	str	r5, [sp, #8]
 800541c:	703b      	strb	r3, [r7, #0]
 800541e:	4645      	mov	r5, r8
 8005420:	e660      	b.n	80050e4 <_dtoa_r+0x88c>
 8005422:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005426:	2602      	movs	r6, #2
 8005428:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800542c:	f7ff bb67 	b.w	8004afe <_dtoa_r+0x2a6>
 8005430:	9b00      	ldr	r3, [sp, #0]
 8005432:	2b39      	cmp	r3, #57	; 0x39
 8005434:	465e      	mov	r6, fp
 8005436:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800543a:	f000 80b9 	beq.w	80055b0 <_dtoa_r+0xd58>
 800543e:	9b00      	ldr	r3, [sp, #0]
 8005440:	9502      	str	r5, [sp, #8]
 8005442:	3301      	adds	r3, #1
 8005444:	703b      	strb	r3, [r7, #0]
 8005446:	4645      	mov	r5, r8
 8005448:	e64c      	b.n	80050e4 <_dtoa_r+0x88c>
 800544a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800544e:	1a9c      	subs	r4, r3, r2
 8005450:	e4f5      	b.n	8004e3e <_dtoa_r+0x5e6>
 8005452:	465e      	mov	r6, fp
 8005454:	9502      	str	r5, [sp, #8]
 8005456:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800545a:	4645      	mov	r5, r8
 800545c:	e61a      	b.n	8005094 <_dtoa_r+0x83c>
 800545e:	2600      	movs	r6, #0
 8005460:	4635      	mov	r5, r6
 8005462:	e708      	b.n	8005276 <_dtoa_r+0xa1e>
 8005464:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005468:	e9dd 0100 	ldrd	r0, r1, [sp]
 800546c:	f7fb fb64 	bl	8000b38 <__aeabi_dmul>
 8005470:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005472:	f88b 5000 	strb.w	r5, [fp]
 8005476:	2b01      	cmp	r3, #1
 8005478:	e9cd 0100 	strd	r0, r1, [sp]
 800547c:	d020      	beq.n	80054c0 <_dtoa_r+0xc68>
 800547e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005480:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005484:	445b      	add	r3, fp
 8005486:	4698      	mov	r8, r3
 8005488:	2200      	movs	r2, #0
 800548a:	4b2c      	ldr	r3, [pc, #176]	; (800553c <_dtoa_r+0xce4>)
 800548c:	4630      	mov	r0, r6
 800548e:	4639      	mov	r1, r7
 8005490:	f7fb fb52 	bl	8000b38 <__aeabi_dmul>
 8005494:	460f      	mov	r7, r1
 8005496:	4606      	mov	r6, r0
 8005498:	f7fb fdfe 	bl	8001098 <__aeabi_d2iz>
 800549c:	4605      	mov	r5, r0
 800549e:	f7fb fae1 	bl	8000a64 <__aeabi_i2d>
 80054a2:	3530      	adds	r5, #48	; 0x30
 80054a4:	4602      	mov	r2, r0
 80054a6:	460b      	mov	r3, r1
 80054a8:	4630      	mov	r0, r6
 80054aa:	4639      	mov	r1, r7
 80054ac:	f7fb f98c 	bl	80007c8 <__aeabi_dsub>
 80054b0:	f804 5b01 	strb.w	r5, [r4], #1
 80054b4:	4544      	cmp	r4, r8
 80054b6:	4606      	mov	r6, r0
 80054b8:	460f      	mov	r7, r1
 80054ba:	d1e5      	bne.n	8005488 <_dtoa_r+0xc30>
 80054bc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80054c0:	4b1f      	ldr	r3, [pc, #124]	; (8005540 <_dtoa_r+0xce8>)
 80054c2:	2200      	movs	r2, #0
 80054c4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80054c8:	f7fb f980 	bl	80007cc <__adddf3>
 80054cc:	4632      	mov	r2, r6
 80054ce:	463b      	mov	r3, r7
 80054d0:	f7fb fda4 	bl	800101c <__aeabi_dcmplt>
 80054d4:	2800      	cmp	r0, #0
 80054d6:	d070      	beq.n	80055ba <_dtoa_r+0xd62>
 80054d8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054da:	9306      	str	r3, [sp, #24]
 80054dc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80054e0:	e48f      	b.n	8004e02 <_dtoa_r+0x5aa>
 80054e2:	2330      	movs	r3, #48	; 0x30
 80054e4:	f88b 3000 	strb.w	r3, [fp]
 80054e8:	9b06      	ldr	r3, [sp, #24]
 80054ea:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80054ee:	3301      	adds	r3, #1
 80054f0:	9306      	str	r3, [sp, #24]
 80054f2:	465b      	mov	r3, fp
 80054f4:	e489      	b.n	8004e0a <_dtoa_r+0x5b2>
 80054f6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80054f8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80054fc:	e6a0      	b.n	8005240 <_dtoa_r+0x9e8>
 80054fe:	2300      	movs	r3, #0
 8005500:	e676      	b.n	80051f0 <_dtoa_r+0x998>
 8005502:	4631      	mov	r1, r6
 8005504:	2205      	movs	r2, #5
 8005506:	4648      	mov	r0, r9
 8005508:	f000 fe1c 	bl	8006144 <__multadd>
 800550c:	4601      	mov	r1, r0
 800550e:	4606      	mov	r6, r0
 8005510:	4650      	mov	r0, sl
 8005512:	f000 fffd 	bl	8006510 <__mcmp>
 8005516:	2800      	cmp	r0, #0
 8005518:	f73f aead 	bgt.w	8005276 <_dtoa_r+0xa1e>
 800551c:	e722      	b.n	8005364 <_dtoa_r+0xb0c>
 800551e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005522:	2602      	movs	r6, #2
 8005524:	ed8d 7b00 	vstr	d7, [sp]
 8005528:	f7ff bb02 	b.w	8004b30 <_dtoa_r+0x2d8>
 800552c:	40140000 	.word	0x40140000
 8005530:	080074f0 	.word	0x080074f0
 8005534:	080074c8 	.word	0x080074c8
 8005538:	401c0000 	.word	0x401c0000
 800553c:	40240000 	.word	0x40240000
 8005540:	3fe00000 	.word	0x3fe00000
 8005544:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005546:	2b00      	cmp	r3, #0
 8005548:	f43f af1d 	beq.w	8005386 <_dtoa_r+0xb2e>
 800554c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800554e:	2c00      	cmp	r4, #0
 8005550:	f77f aba8 	ble.w	8004ca4 <_dtoa_r+0x44c>
 8005554:	2200      	movs	r2, #0
 8005556:	4b45      	ldr	r3, [pc, #276]	; (800566c <_dtoa_r+0xe14>)
 8005558:	e9dd 0100 	ldrd	r0, r1, [sp]
 800555c:	f7fb faec 	bl	8000b38 <__aeabi_dmul>
 8005560:	e9cd 0100 	strd	r0, r1, [sp]
 8005564:	1c70      	adds	r0, r6, #1
 8005566:	f7fb fa7d 	bl	8000a64 <__aeabi_i2d>
 800556a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800556e:	f7fb fae3 	bl	8000b38 <__aeabi_dmul>
 8005572:	4b3f      	ldr	r3, [pc, #252]	; (8005670 <_dtoa_r+0xe18>)
 8005574:	2200      	movs	r2, #0
 8005576:	f7fb f929 	bl	80007cc <__adddf3>
 800557a:	9b06      	ldr	r3, [sp, #24]
 800557c:	9412      	str	r4, [sp, #72]	; 0x48
 800557e:	3b01      	subs	r3, #1
 8005580:	4606      	mov	r6, r0
 8005582:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005586:	9316      	str	r3, [sp, #88]	; 0x58
 8005588:	f7ff baf3 	b.w	8004b72 <_dtoa_r+0x31a>
 800558c:	4651      	mov	r1, sl
 800558e:	2201      	movs	r2, #1
 8005590:	4648      	mov	r0, r9
 8005592:	f000 ff67 	bl	8006464 <__lshift>
 8005596:	4631      	mov	r1, r6
 8005598:	4682      	mov	sl, r0
 800559a:	f000 ffb9 	bl	8006510 <__mcmp>
 800559e:	2800      	cmp	r0, #0
 80055a0:	dd3b      	ble.n	800561a <_dtoa_r+0xdc2>
 80055a2:	9b00      	ldr	r3, [sp, #0]
 80055a4:	2b39      	cmp	r3, #57	; 0x39
 80055a6:	d003      	beq.n	80055b0 <_dtoa_r+0xd58>
 80055a8:	9b02      	ldr	r3, [sp, #8]
 80055aa:	3331      	adds	r3, #49	; 0x31
 80055ac:	9300      	str	r3, [sp, #0]
 80055ae:	e733      	b.n	8005418 <_dtoa_r+0xbc0>
 80055b0:	2239      	movs	r2, #57	; 0x39
 80055b2:	9502      	str	r5, [sp, #8]
 80055b4:	703a      	strb	r2, [r7, #0]
 80055b6:	4645      	mov	r5, r8
 80055b8:	e58e      	b.n	80050d8 <_dtoa_r+0x880>
 80055ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80055be:	2000      	movs	r0, #0
 80055c0:	492c      	ldr	r1, [pc, #176]	; (8005674 <_dtoa_r+0xe1c>)
 80055c2:	f7fb f901 	bl	80007c8 <__aeabi_dsub>
 80055c6:	4632      	mov	r2, r6
 80055c8:	463b      	mov	r3, r7
 80055ca:	f7fb fd45 	bl	8001058 <__aeabi_dcmpgt>
 80055ce:	b910      	cbnz	r0, 80055d6 <_dtoa_r+0xd7e>
 80055d0:	f7ff bb68 	b.w	8004ca4 <_dtoa_r+0x44c>
 80055d4:	4614      	mov	r4, r2
 80055d6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80055da:	2b30      	cmp	r3, #48	; 0x30
 80055dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80055e0:	d0f8      	beq.n	80055d4 <_dtoa_r+0xd7c>
 80055e2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80055e4:	9306      	str	r3, [sp, #24]
 80055e6:	e58d      	b.n	8005104 <_dtoa_r+0x8ac>
 80055e8:	46d9      	mov	r9, fp
 80055ea:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80055ee:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80055f2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80055f4:	9306      	str	r3, [sp, #24]
 80055f6:	e404      	b.n	8004e02 <_dtoa_r+0x5aa>
 80055f8:	9b00      	ldr	r3, [sp, #0]
 80055fa:	2b39      	cmp	r3, #57	; 0x39
 80055fc:	4621      	mov	r1, r4
 80055fe:	4632      	mov	r2, r6
 8005600:	f107 0401 	add.w	r4, r7, #1
 8005604:	465e      	mov	r6, fp
 8005606:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800560a:	d0d1      	beq.n	80055b0 <_dtoa_r+0xd58>
 800560c:	2a00      	cmp	r2, #0
 800560e:	f77f af03 	ble.w	8005418 <_dtoa_r+0xbc0>
 8005612:	460b      	mov	r3, r1
 8005614:	3331      	adds	r3, #49	; 0x31
 8005616:	9300      	str	r3, [sp, #0]
 8005618:	e6fe      	b.n	8005418 <_dtoa_r+0xbc0>
 800561a:	f47f aefd 	bne.w	8005418 <_dtoa_r+0xbc0>
 800561e:	9b00      	ldr	r3, [sp, #0]
 8005620:	07da      	lsls	r2, r3, #31
 8005622:	f57f aef9 	bpl.w	8005418 <_dtoa_r+0xbc0>
 8005626:	e7bc      	b.n	80055a2 <_dtoa_r+0xd4a>
 8005628:	4629      	mov	r1, r5
 800562a:	2300      	movs	r3, #0
 800562c:	220a      	movs	r2, #10
 800562e:	4648      	mov	r0, r9
 8005630:	f000 fd88 	bl	8006144 <__multadd>
 8005634:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005636:	2b00      	cmp	r3, #0
 8005638:	4605      	mov	r5, r0
 800563a:	dd09      	ble.n	8005650 <_dtoa_r+0xdf8>
 800563c:	9309      	str	r3, [sp, #36]	; 0x24
 800563e:	e484      	b.n	8004f4a <_dtoa_r+0x6f2>
 8005640:	9b02      	ldr	r3, [sp, #8]
 8005642:	2b02      	cmp	r3, #2
 8005644:	dc0e      	bgt.n	8005664 <_dtoa_r+0xe0c>
 8005646:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005648:	e507      	b.n	800505a <_dtoa_r+0x802>
 800564a:	2602      	movs	r6, #2
 800564c:	f7ff ba70 	b.w	8004b30 <_dtoa_r+0x2d8>
 8005650:	9b02      	ldr	r3, [sp, #8]
 8005652:	2b02      	cmp	r3, #2
 8005654:	dc06      	bgt.n	8005664 <_dtoa_r+0xe0c>
 8005656:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005658:	e7f0      	b.n	800563c <_dtoa_r+0xde4>
 800565a:	f43f ac59 	beq.w	8004f10 <_dtoa_r+0x6b8>
 800565e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005662:	e450      	b.n	8004f06 <_dtoa_r+0x6ae>
 8005664:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005666:	9309      	str	r3, [sp, #36]	; 0x24
 8005668:	e678      	b.n	800535c <_dtoa_r+0xb04>
 800566a:	bf00      	nop
 800566c:	40240000 	.word	0x40240000
 8005670:	401c0000 	.word	0x401c0000
 8005674:	3fe00000 	.word	0x3fe00000

08005678 <__sflush_r>:
 8005678:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800567c:	b29a      	uxth	r2, r3
 800567e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005682:	460c      	mov	r4, r1
 8005684:	0711      	lsls	r1, r2, #28
 8005686:	4680      	mov	r8, r0
 8005688:	d444      	bmi.n	8005714 <__sflush_r+0x9c>
 800568a:	6862      	ldr	r2, [r4, #4]
 800568c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005690:	2a00      	cmp	r2, #0
 8005692:	81a3      	strh	r3, [r4, #12]
 8005694:	dd59      	ble.n	800574a <__sflush_r+0xd2>
 8005696:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005698:	2d00      	cmp	r5, #0
 800569a:	d053      	beq.n	8005744 <__sflush_r+0xcc>
 800569c:	2200      	movs	r2, #0
 800569e:	b29b      	uxth	r3, r3
 80056a0:	f8d8 6000 	ldr.w	r6, [r8]
 80056a4:	69e1      	ldr	r1, [r4, #28]
 80056a6:	f8c8 2000 	str.w	r2, [r8]
 80056aa:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80056ae:	f040 8083 	bne.w	80057b8 <__sflush_r+0x140>
 80056b2:	2301      	movs	r3, #1
 80056b4:	4640      	mov	r0, r8
 80056b6:	47a8      	blx	r5
 80056b8:	1c42      	adds	r2, r0, #1
 80056ba:	d04a      	beq.n	8005752 <__sflush_r+0xda>
 80056bc:	89a3      	ldrh	r3, [r4, #12]
 80056be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80056c0:	69e1      	ldr	r1, [r4, #28]
 80056c2:	075b      	lsls	r3, r3, #29
 80056c4:	d505      	bpl.n	80056d2 <__sflush_r+0x5a>
 80056c6:	6862      	ldr	r2, [r4, #4]
 80056c8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80056ca:	1a80      	subs	r0, r0, r2
 80056cc:	b10b      	cbz	r3, 80056d2 <__sflush_r+0x5a>
 80056ce:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80056d0:	1ac0      	subs	r0, r0, r3
 80056d2:	4602      	mov	r2, r0
 80056d4:	2300      	movs	r3, #0
 80056d6:	4640      	mov	r0, r8
 80056d8:	47a8      	blx	r5
 80056da:	1c47      	adds	r7, r0, #1
 80056dc:	d045      	beq.n	800576a <__sflush_r+0xf2>
 80056de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056e2:	6922      	ldr	r2, [r4, #16]
 80056e4:	6022      	str	r2, [r4, #0]
 80056e6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80056ea:	2200      	movs	r2, #0
 80056ec:	81a3      	strh	r3, [r4, #12]
 80056ee:	04db      	lsls	r3, r3, #19
 80056f0:	6062      	str	r2, [r4, #4]
 80056f2:	d500      	bpl.n	80056f6 <__sflush_r+0x7e>
 80056f4:	6520      	str	r0, [r4, #80]	; 0x50
 80056f6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80056f8:	f8c8 6000 	str.w	r6, [r8]
 80056fc:	b311      	cbz	r1, 8005744 <__sflush_r+0xcc>
 80056fe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005702:	4299      	cmp	r1, r3
 8005704:	d002      	beq.n	800570c <__sflush_r+0x94>
 8005706:	4640      	mov	r0, r8
 8005708:	f000 f95e 	bl	80059c8 <_free_r>
 800570c:	2000      	movs	r0, #0
 800570e:	6320      	str	r0, [r4, #48]	; 0x30
 8005710:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005714:	6926      	ldr	r6, [r4, #16]
 8005716:	b1ae      	cbz	r6, 8005744 <__sflush_r+0xcc>
 8005718:	6825      	ldr	r5, [r4, #0]
 800571a:	6026      	str	r6, [r4, #0]
 800571c:	0792      	lsls	r2, r2, #30
 800571e:	bf0c      	ite	eq
 8005720:	6963      	ldreq	r3, [r4, #20]
 8005722:	2300      	movne	r3, #0
 8005724:	1bad      	subs	r5, r5, r6
 8005726:	60a3      	str	r3, [r4, #8]
 8005728:	e00a      	b.n	8005740 <__sflush_r+0xc8>
 800572a:	462b      	mov	r3, r5
 800572c:	4632      	mov	r2, r6
 800572e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005730:	69e1      	ldr	r1, [r4, #28]
 8005732:	4640      	mov	r0, r8
 8005734:	47b8      	blx	r7
 8005736:	2800      	cmp	r0, #0
 8005738:	eba5 0500 	sub.w	r5, r5, r0
 800573c:	4406      	add	r6, r0
 800573e:	dd2b      	ble.n	8005798 <__sflush_r+0x120>
 8005740:	2d00      	cmp	r5, #0
 8005742:	dcf2      	bgt.n	800572a <__sflush_r+0xb2>
 8005744:	2000      	movs	r0, #0
 8005746:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800574a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800574c:	2a00      	cmp	r2, #0
 800574e:	dca2      	bgt.n	8005696 <__sflush_r+0x1e>
 8005750:	e7f8      	b.n	8005744 <__sflush_r+0xcc>
 8005752:	f8d8 3000 	ldr.w	r3, [r8]
 8005756:	2b00      	cmp	r3, #0
 8005758:	d0b0      	beq.n	80056bc <__sflush_r+0x44>
 800575a:	2b1d      	cmp	r3, #29
 800575c:	d001      	beq.n	8005762 <__sflush_r+0xea>
 800575e:	2b16      	cmp	r3, #22
 8005760:	d12c      	bne.n	80057bc <__sflush_r+0x144>
 8005762:	f8c8 6000 	str.w	r6, [r8]
 8005766:	2000      	movs	r0, #0
 8005768:	e7ed      	b.n	8005746 <__sflush_r+0xce>
 800576a:	f8d8 1000 	ldr.w	r1, [r8]
 800576e:	291d      	cmp	r1, #29
 8005770:	d81a      	bhi.n	80057a8 <__sflush_r+0x130>
 8005772:	4b15      	ldr	r3, [pc, #84]	; (80057c8 <__sflush_r+0x150>)
 8005774:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005778:	40cb      	lsrs	r3, r1
 800577a:	43db      	mvns	r3, r3
 800577c:	f013 0301 	ands.w	r3, r3, #1
 8005780:	d114      	bne.n	80057ac <__sflush_r+0x134>
 8005782:	6925      	ldr	r5, [r4, #16]
 8005784:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005788:	e9c4 5300 	strd	r5, r3, [r4]
 800578c:	04d5      	lsls	r5, r2, #19
 800578e:	81a2      	strh	r2, [r4, #12]
 8005790:	d5b1      	bpl.n	80056f6 <__sflush_r+0x7e>
 8005792:	2900      	cmp	r1, #0
 8005794:	d1af      	bne.n	80056f6 <__sflush_r+0x7e>
 8005796:	e7ad      	b.n	80056f4 <__sflush_r+0x7c>
 8005798:	89a3      	ldrh	r3, [r4, #12]
 800579a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800579e:	81a3      	strh	r3, [r4, #12]
 80057a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80057a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80057ac:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80057b0:	81a2      	strh	r2, [r4, #12]
 80057b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057b6:	e7c6      	b.n	8005746 <__sflush_r+0xce>
 80057b8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80057ba:	e782      	b.n	80056c2 <__sflush_r+0x4a>
 80057bc:	89a3      	ldrh	r3, [r4, #12]
 80057be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80057c2:	81a3      	strh	r3, [r4, #12]
 80057c4:	e7bf      	b.n	8005746 <__sflush_r+0xce>
 80057c6:	bf00      	nop
 80057c8:	20400001 	.word	0x20400001

080057cc <_fflush_r>:
 80057cc:	b538      	push	{r3, r4, r5, lr}
 80057ce:	460d      	mov	r5, r1
 80057d0:	4604      	mov	r4, r0
 80057d2:	b108      	cbz	r0, 80057d8 <_fflush_r+0xc>
 80057d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80057d6:	b1a3      	cbz	r3, 8005802 <_fflush_r+0x36>
 80057d8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80057dc:	b1b8      	cbz	r0, 800580e <_fflush_r+0x42>
 80057de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80057e0:	07db      	lsls	r3, r3, #31
 80057e2:	d401      	bmi.n	80057e8 <_fflush_r+0x1c>
 80057e4:	0581      	lsls	r1, r0, #22
 80057e6:	d51a      	bpl.n	800581e <_fflush_r+0x52>
 80057e8:	4620      	mov	r0, r4
 80057ea:	4629      	mov	r1, r5
 80057ec:	f7ff ff44 	bl	8005678 <__sflush_r>
 80057f0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80057f2:	07da      	lsls	r2, r3, #31
 80057f4:	4604      	mov	r4, r0
 80057f6:	d402      	bmi.n	80057fe <_fflush_r+0x32>
 80057f8:	89ab      	ldrh	r3, [r5, #12]
 80057fa:	059b      	lsls	r3, r3, #22
 80057fc:	d50a      	bpl.n	8005814 <_fflush_r+0x48>
 80057fe:	4620      	mov	r0, r4
 8005800:	bd38      	pop	{r3, r4, r5, pc}
 8005802:	f000 f83f 	bl	8005884 <__sinit>
 8005806:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800580a:	2800      	cmp	r0, #0
 800580c:	d1e7      	bne.n	80057de <_fflush_r+0x12>
 800580e:	4604      	mov	r4, r0
 8005810:	4620      	mov	r0, r4
 8005812:	bd38      	pop	{r3, r4, r5, pc}
 8005814:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005816:	f000 fb87 	bl	8005f28 <__retarget_lock_release_recursive>
 800581a:	4620      	mov	r0, r4
 800581c:	bd38      	pop	{r3, r4, r5, pc}
 800581e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005820:	f000 fb80 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8005824:	e7e0      	b.n	80057e8 <_fflush_r+0x1c>
 8005826:	bf00      	nop

08005828 <std>:
 8005828:	b510      	push	{r4, lr}
 800582a:	2300      	movs	r3, #0
 800582c:	4604      	mov	r4, r0
 800582e:	8181      	strh	r1, [r0, #12]
 8005830:	81c2      	strh	r2, [r0, #14]
 8005832:	e9c0 3300 	strd	r3, r3, [r0]
 8005836:	6083      	str	r3, [r0, #8]
 8005838:	6643      	str	r3, [r0, #100]	; 0x64
 800583a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800583e:	6183      	str	r3, [r0, #24]
 8005840:	4619      	mov	r1, r3
 8005842:	2208      	movs	r2, #8
 8005844:	305c      	adds	r0, #92	; 0x5c
 8005846:	f7fd f8ab 	bl	80029a0 <memset>
 800584a:	4807      	ldr	r0, [pc, #28]	; (8005868 <std+0x40>)
 800584c:	4907      	ldr	r1, [pc, #28]	; (800586c <std+0x44>)
 800584e:	4a08      	ldr	r2, [pc, #32]	; (8005870 <std+0x48>)
 8005850:	4b08      	ldr	r3, [pc, #32]	; (8005874 <std+0x4c>)
 8005852:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005854:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005858:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800585c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005860:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005864:	f000 bb5a 	b.w	8005f1c <__retarget_lock_init_recursive>
 8005868:	08006abd 	.word	0x08006abd
 800586c:	08006ae1 	.word	0x08006ae1
 8005870:	08006b1d 	.word	0x08006b1d
 8005874:	08006b3d 	.word	0x08006b3d

08005878 <_cleanup_r>:
 8005878:	4901      	ldr	r1, [pc, #4]	; (8005880 <_cleanup_r+0x8>)
 800587a:	f000 bb17 	b.w	8005eac <_fwalk_reent>
 800587e:	bf00      	nop
 8005880:	08006dad 	.word	0x08006dad

08005884 <__sinit>:
 8005884:	b510      	push	{r4, lr}
 8005886:	4604      	mov	r4, r0
 8005888:	4812      	ldr	r0, [pc, #72]	; (80058d4 <__sinit+0x50>)
 800588a:	f000 fb4b 	bl	8005f24 <__retarget_lock_acquire_recursive>
 800588e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005890:	b9d2      	cbnz	r2, 80058c8 <__sinit+0x44>
 8005892:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005896:	4810      	ldr	r0, [pc, #64]	; (80058d8 <__sinit+0x54>)
 8005898:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800589c:	2103      	movs	r1, #3
 800589e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80058a2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80058a4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80058a8:	6860      	ldr	r0, [r4, #4]
 80058aa:	2104      	movs	r1, #4
 80058ac:	f7ff ffbc 	bl	8005828 <std>
 80058b0:	2201      	movs	r2, #1
 80058b2:	2109      	movs	r1, #9
 80058b4:	68a0      	ldr	r0, [r4, #8]
 80058b6:	f7ff ffb7 	bl	8005828 <std>
 80058ba:	2202      	movs	r2, #2
 80058bc:	2112      	movs	r1, #18
 80058be:	68e0      	ldr	r0, [r4, #12]
 80058c0:	f7ff ffb2 	bl	8005828 <std>
 80058c4:	2301      	movs	r3, #1
 80058c6:	63a3      	str	r3, [r4, #56]	; 0x38
 80058c8:	4802      	ldr	r0, [pc, #8]	; (80058d4 <__sinit+0x50>)
 80058ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80058ce:	f000 bb2b 	b.w	8005f28 <__retarget_lock_release_recursive>
 80058d2:	bf00      	nop
 80058d4:	20000e88 	.word	0x20000e88
 80058d8:	08005879 	.word	0x08005879

080058dc <__sfp_lock_acquire>:
 80058dc:	4801      	ldr	r0, [pc, #4]	; (80058e4 <__sfp_lock_acquire+0x8>)
 80058de:	f000 bb21 	b.w	8005f24 <__retarget_lock_acquire_recursive>
 80058e2:	bf00      	nop
 80058e4:	20000e9c 	.word	0x20000e9c

080058e8 <__sfp_lock_release>:
 80058e8:	4801      	ldr	r0, [pc, #4]	; (80058f0 <__sfp_lock_release+0x8>)
 80058ea:	f000 bb1d 	b.w	8005f28 <__retarget_lock_release_recursive>
 80058ee:	bf00      	nop
 80058f0:	20000e9c 	.word	0x20000e9c

080058f4 <__libc_fini_array>:
 80058f4:	b538      	push	{r3, r4, r5, lr}
 80058f6:	4c0a      	ldr	r4, [pc, #40]	; (8005920 <__libc_fini_array+0x2c>)
 80058f8:	4d0a      	ldr	r5, [pc, #40]	; (8005924 <__libc_fini_array+0x30>)
 80058fa:	1b64      	subs	r4, r4, r5
 80058fc:	10a4      	asrs	r4, r4, #2
 80058fe:	d00a      	beq.n	8005916 <__libc_fini_array+0x22>
 8005900:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005904:	3b01      	subs	r3, #1
 8005906:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800590a:	3c01      	subs	r4, #1
 800590c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005910:	4798      	blx	r3
 8005912:	2c00      	cmp	r4, #0
 8005914:	d1f9      	bne.n	800590a <__libc_fini_array+0x16>
 8005916:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800591a:	f001 bc3b 	b.w	8007194 <_fini>
 800591e:	bf00      	nop
 8005920:	080076ec 	.word	0x080076ec
 8005924:	080076e8 	.word	0x080076e8

08005928 <_malloc_trim_r>:
 8005928:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800592a:	4f24      	ldr	r7, [pc, #144]	; (80059bc <_malloc_trim_r+0x94>)
 800592c:	460c      	mov	r4, r1
 800592e:	4606      	mov	r6, r0
 8005930:	f7fd f880 	bl	8002a34 <__malloc_lock>
 8005934:	68bb      	ldr	r3, [r7, #8]
 8005936:	685d      	ldr	r5, [r3, #4]
 8005938:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800593c:	310f      	adds	r1, #15
 800593e:	f025 0503 	bic.w	r5, r5, #3
 8005942:	4429      	add	r1, r5
 8005944:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005948:	f021 010f 	bic.w	r1, r1, #15
 800594c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005950:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005954:	db07      	blt.n	8005966 <_malloc_trim_r+0x3e>
 8005956:	2100      	movs	r1, #0
 8005958:	4630      	mov	r0, r6
 800595a:	f7fd f8e1 	bl	8002b20 <_sbrk_r>
 800595e:	68bb      	ldr	r3, [r7, #8]
 8005960:	442b      	add	r3, r5
 8005962:	4298      	cmp	r0, r3
 8005964:	d004      	beq.n	8005970 <_malloc_trim_r+0x48>
 8005966:	4630      	mov	r0, r6
 8005968:	f7fd f86a 	bl	8002a40 <__malloc_unlock>
 800596c:	2000      	movs	r0, #0
 800596e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005970:	4261      	negs	r1, r4
 8005972:	4630      	mov	r0, r6
 8005974:	f7fd f8d4 	bl	8002b20 <_sbrk_r>
 8005978:	3001      	adds	r0, #1
 800597a:	d00d      	beq.n	8005998 <_malloc_trim_r+0x70>
 800597c:	4b10      	ldr	r3, [pc, #64]	; (80059c0 <_malloc_trim_r+0x98>)
 800597e:	68ba      	ldr	r2, [r7, #8]
 8005980:	6819      	ldr	r1, [r3, #0]
 8005982:	1b2d      	subs	r5, r5, r4
 8005984:	f045 0501 	orr.w	r5, r5, #1
 8005988:	4630      	mov	r0, r6
 800598a:	1b09      	subs	r1, r1, r4
 800598c:	6055      	str	r5, [r2, #4]
 800598e:	6019      	str	r1, [r3, #0]
 8005990:	f7fd f856 	bl	8002a40 <__malloc_unlock>
 8005994:	2001      	movs	r0, #1
 8005996:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005998:	2100      	movs	r1, #0
 800599a:	4630      	mov	r0, r6
 800599c:	f7fd f8c0 	bl	8002b20 <_sbrk_r>
 80059a0:	68ba      	ldr	r2, [r7, #8]
 80059a2:	1a83      	subs	r3, r0, r2
 80059a4:	2b0f      	cmp	r3, #15
 80059a6:	ddde      	ble.n	8005966 <_malloc_trim_r+0x3e>
 80059a8:	4c06      	ldr	r4, [pc, #24]	; (80059c4 <_malloc_trim_r+0x9c>)
 80059aa:	4905      	ldr	r1, [pc, #20]	; (80059c0 <_malloc_trim_r+0x98>)
 80059ac:	6824      	ldr	r4, [r4, #0]
 80059ae:	f043 0301 	orr.w	r3, r3, #1
 80059b2:	1b00      	subs	r0, r0, r4
 80059b4:	6053      	str	r3, [r2, #4]
 80059b6:	6008      	str	r0, [r1, #0]
 80059b8:	e7d5      	b.n	8005966 <_malloc_trim_r+0x3e>
 80059ba:	bf00      	nop
 80059bc:	200005d8 	.word	0x200005d8
 80059c0:	20000c08 	.word	0x20000c08
 80059c4:	200009e0 	.word	0x200009e0

080059c8 <_free_r>:
 80059c8:	2900      	cmp	r1, #0
 80059ca:	d053      	beq.n	8005a74 <_free_r+0xac>
 80059cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80059ce:	460c      	mov	r4, r1
 80059d0:	4606      	mov	r6, r0
 80059d2:	f7fd f82f 	bl	8002a34 <__malloc_lock>
 80059d6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80059da:	4f71      	ldr	r7, [pc, #452]	; (8005ba0 <_free_r+0x1d8>)
 80059dc:	f02c 0101 	bic.w	r1, ip, #1
 80059e0:	f1a4 0508 	sub.w	r5, r4, #8
 80059e4:	186b      	adds	r3, r5, r1
 80059e6:	68b8      	ldr	r0, [r7, #8]
 80059e8:	685a      	ldr	r2, [r3, #4]
 80059ea:	4298      	cmp	r0, r3
 80059ec:	f022 0203 	bic.w	r2, r2, #3
 80059f0:	d053      	beq.n	8005a9a <_free_r+0xd2>
 80059f2:	f01c 0f01 	tst.w	ip, #1
 80059f6:	605a      	str	r2, [r3, #4]
 80059f8:	eb03 0002 	add.w	r0, r3, r2
 80059fc:	d13b      	bne.n	8005a76 <_free_r+0xae>
 80059fe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005a02:	6840      	ldr	r0, [r0, #4]
 8005a04:	eba5 050c 	sub.w	r5, r5, ip
 8005a08:	f107 0e08 	add.w	lr, r7, #8
 8005a0c:	68ac      	ldr	r4, [r5, #8]
 8005a0e:	4574      	cmp	r4, lr
 8005a10:	4461      	add	r1, ip
 8005a12:	f000 0001 	and.w	r0, r0, #1
 8005a16:	d075      	beq.n	8005b04 <_free_r+0x13c>
 8005a18:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005a1c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005a20:	f8cc 4008 	str.w	r4, [ip, #8]
 8005a24:	b360      	cbz	r0, 8005a80 <_free_r+0xb8>
 8005a26:	f041 0301 	orr.w	r3, r1, #1
 8005a2a:	606b      	str	r3, [r5, #4]
 8005a2c:	5069      	str	r1, [r5, r1]
 8005a2e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005a32:	d350      	bcc.n	8005ad6 <_free_r+0x10e>
 8005a34:	0a4b      	lsrs	r3, r1, #9
 8005a36:	2b04      	cmp	r3, #4
 8005a38:	d870      	bhi.n	8005b1c <_free_r+0x154>
 8005a3a:	098b      	lsrs	r3, r1, #6
 8005a3c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005a40:	00e4      	lsls	r4, r4, #3
 8005a42:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005a46:	1938      	adds	r0, r7, r4
 8005a48:	593b      	ldr	r3, [r7, r4]
 8005a4a:	3808      	subs	r0, #8
 8005a4c:	4298      	cmp	r0, r3
 8005a4e:	d078      	beq.n	8005b42 <_free_r+0x17a>
 8005a50:	685a      	ldr	r2, [r3, #4]
 8005a52:	f022 0203 	bic.w	r2, r2, #3
 8005a56:	428a      	cmp	r2, r1
 8005a58:	d971      	bls.n	8005b3e <_free_r+0x176>
 8005a5a:	689b      	ldr	r3, [r3, #8]
 8005a5c:	4298      	cmp	r0, r3
 8005a5e:	d1f7      	bne.n	8005a50 <_free_r+0x88>
 8005a60:	68c3      	ldr	r3, [r0, #12]
 8005a62:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005a66:	609d      	str	r5, [r3, #8]
 8005a68:	60c5      	str	r5, [r0, #12]
 8005a6a:	4630      	mov	r0, r6
 8005a6c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a70:	f7fc bfe6 	b.w	8002a40 <__malloc_unlock>
 8005a74:	4770      	bx	lr
 8005a76:	6840      	ldr	r0, [r0, #4]
 8005a78:	f000 0001 	and.w	r0, r0, #1
 8005a7c:	2800      	cmp	r0, #0
 8005a7e:	d1d2      	bne.n	8005a26 <_free_r+0x5e>
 8005a80:	6898      	ldr	r0, [r3, #8]
 8005a82:	4c48      	ldr	r4, [pc, #288]	; (8005ba4 <_free_r+0x1dc>)
 8005a84:	4411      	add	r1, r2
 8005a86:	42a0      	cmp	r0, r4
 8005a88:	f041 0201 	orr.w	r2, r1, #1
 8005a8c:	d062      	beq.n	8005b54 <_free_r+0x18c>
 8005a8e:	68db      	ldr	r3, [r3, #12]
 8005a90:	60c3      	str	r3, [r0, #12]
 8005a92:	6098      	str	r0, [r3, #8]
 8005a94:	606a      	str	r2, [r5, #4]
 8005a96:	5069      	str	r1, [r5, r1]
 8005a98:	e7c9      	b.n	8005a2e <_free_r+0x66>
 8005a9a:	f01c 0f01 	tst.w	ip, #1
 8005a9e:	440a      	add	r2, r1
 8005aa0:	d107      	bne.n	8005ab2 <_free_r+0xea>
 8005aa2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005aa6:	1aed      	subs	r5, r5, r3
 8005aa8:	441a      	add	r2, r3
 8005aaa:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005aae:	60cb      	str	r3, [r1, #12]
 8005ab0:	6099      	str	r1, [r3, #8]
 8005ab2:	4b3d      	ldr	r3, [pc, #244]	; (8005ba8 <_free_r+0x1e0>)
 8005ab4:	681b      	ldr	r3, [r3, #0]
 8005ab6:	f042 0101 	orr.w	r1, r2, #1
 8005aba:	4293      	cmp	r3, r2
 8005abc:	6069      	str	r1, [r5, #4]
 8005abe:	60bd      	str	r5, [r7, #8]
 8005ac0:	d804      	bhi.n	8005acc <_free_r+0x104>
 8005ac2:	4b3a      	ldr	r3, [pc, #232]	; (8005bac <_free_r+0x1e4>)
 8005ac4:	4630      	mov	r0, r6
 8005ac6:	6819      	ldr	r1, [r3, #0]
 8005ac8:	f7ff ff2e 	bl	8005928 <_malloc_trim_r>
 8005acc:	4630      	mov	r0, r6
 8005ace:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005ad2:	f7fc bfb5 	b.w	8002a40 <__malloc_unlock>
 8005ad6:	08c9      	lsrs	r1, r1, #3
 8005ad8:	6878      	ldr	r0, [r7, #4]
 8005ada:	1c4a      	adds	r2, r1, #1
 8005adc:	2301      	movs	r3, #1
 8005ade:	1089      	asrs	r1, r1, #2
 8005ae0:	408b      	lsls	r3, r1
 8005ae2:	4303      	orrs	r3, r0
 8005ae4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005ae8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005aec:	607b      	str	r3, [r7, #4]
 8005aee:	3908      	subs	r1, #8
 8005af0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005af4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005af8:	60c5      	str	r5, [r0, #12]
 8005afa:	4630      	mov	r0, r6
 8005afc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005b00:	f7fc bf9e 	b.w	8002a40 <__malloc_unlock>
 8005b04:	2800      	cmp	r0, #0
 8005b06:	d145      	bne.n	8005b94 <_free_r+0x1cc>
 8005b08:	440a      	add	r2, r1
 8005b0a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005b0e:	f042 0001 	orr.w	r0, r2, #1
 8005b12:	60cb      	str	r3, [r1, #12]
 8005b14:	6099      	str	r1, [r3, #8]
 8005b16:	6068      	str	r0, [r5, #4]
 8005b18:	50aa      	str	r2, [r5, r2]
 8005b1a:	e7d7      	b.n	8005acc <_free_r+0x104>
 8005b1c:	2b14      	cmp	r3, #20
 8005b1e:	d908      	bls.n	8005b32 <_free_r+0x16a>
 8005b20:	2b54      	cmp	r3, #84	; 0x54
 8005b22:	d81e      	bhi.n	8005b62 <_free_r+0x19a>
 8005b24:	0b0b      	lsrs	r3, r1, #12
 8005b26:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005b2a:	00e4      	lsls	r4, r4, #3
 8005b2c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005b30:	e789      	b.n	8005a46 <_free_r+0x7e>
 8005b32:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005b36:	00e4      	lsls	r4, r4, #3
 8005b38:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005b3c:	e783      	b.n	8005a46 <_free_r+0x7e>
 8005b3e:	4618      	mov	r0, r3
 8005b40:	e78e      	b.n	8005a60 <_free_r+0x98>
 8005b42:	1093      	asrs	r3, r2, #2
 8005b44:	6879      	ldr	r1, [r7, #4]
 8005b46:	2201      	movs	r2, #1
 8005b48:	fa02 f303 	lsl.w	r3, r2, r3
 8005b4c:	430b      	orrs	r3, r1
 8005b4e:	607b      	str	r3, [r7, #4]
 8005b50:	4603      	mov	r3, r0
 8005b52:	e786      	b.n	8005a62 <_free_r+0x9a>
 8005b54:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005b58:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005b5c:	606a      	str	r2, [r5, #4]
 8005b5e:	5069      	str	r1, [r5, r1]
 8005b60:	e7b4      	b.n	8005acc <_free_r+0x104>
 8005b62:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005b66:	d806      	bhi.n	8005b76 <_free_r+0x1ae>
 8005b68:	0bcb      	lsrs	r3, r1, #15
 8005b6a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005b6e:	00e4      	lsls	r4, r4, #3
 8005b70:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005b74:	e767      	b.n	8005a46 <_free_r+0x7e>
 8005b76:	f240 5254 	movw	r2, #1364	; 0x554
 8005b7a:	4293      	cmp	r3, r2
 8005b7c:	d806      	bhi.n	8005b8c <_free_r+0x1c4>
 8005b7e:	0c8b      	lsrs	r3, r1, #18
 8005b80:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005b84:	00e4      	lsls	r4, r4, #3
 8005b86:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005b8a:	e75c      	b.n	8005a46 <_free_r+0x7e>
 8005b8c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005b90:	227e      	movs	r2, #126	; 0x7e
 8005b92:	e758      	b.n	8005a46 <_free_r+0x7e>
 8005b94:	f041 0201 	orr.w	r2, r1, #1
 8005b98:	606a      	str	r2, [r5, #4]
 8005b9a:	6019      	str	r1, [r3, #0]
 8005b9c:	e796      	b.n	8005acc <_free_r+0x104>
 8005b9e:	bf00      	nop
 8005ba0:	200005d8 	.word	0x200005d8
 8005ba4:	200005e0 	.word	0x200005e0
 8005ba8:	200009e4 	.word	0x200009e4
 8005bac:	20000c38 	.word	0x20000c38

08005bb0 <__sfvwrite_r>:
 8005bb0:	6893      	ldr	r3, [r2, #8]
 8005bb2:	2b00      	cmp	r3, #0
 8005bb4:	f000 80e4 	beq.w	8005d80 <__sfvwrite_r+0x1d0>
 8005bb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bbc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005bc0:	b29b      	uxth	r3, r3
 8005bc2:	460c      	mov	r4, r1
 8005bc4:	0719      	lsls	r1, r3, #28
 8005bc6:	b083      	sub	sp, #12
 8005bc8:	4682      	mov	sl, r0
 8005bca:	4690      	mov	r8, r2
 8005bcc:	d535      	bpl.n	8005c3a <__sfvwrite_r+0x8a>
 8005bce:	6922      	ldr	r2, [r4, #16]
 8005bd0:	b39a      	cbz	r2, 8005c3a <__sfvwrite_r+0x8a>
 8005bd2:	f013 0202 	ands.w	r2, r3, #2
 8005bd6:	f8d8 6000 	ldr.w	r6, [r8]
 8005bda:	d03d      	beq.n	8005c58 <__sfvwrite_r+0xa8>
 8005bdc:	2700      	movs	r7, #0
 8005bde:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005be2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005be6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ea8 <__sfvwrite_r+0x2f8>
 8005bea:	463d      	mov	r5, r7
 8005bec:	454d      	cmp	r5, r9
 8005bee:	462b      	mov	r3, r5
 8005bf0:	463a      	mov	r2, r7
 8005bf2:	bf28      	it	cs
 8005bf4:	464b      	movcs	r3, r9
 8005bf6:	4661      	mov	r1, ip
 8005bf8:	4650      	mov	r0, sl
 8005bfa:	b1d5      	cbz	r5, 8005c32 <__sfvwrite_r+0x82>
 8005bfc:	47d8      	blx	fp
 8005bfe:	2800      	cmp	r0, #0
 8005c00:	f340 80c6 	ble.w	8005d90 <__sfvwrite_r+0x1e0>
 8005c04:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c08:	1a1b      	subs	r3, r3, r0
 8005c0a:	4407      	add	r7, r0
 8005c0c:	1a2d      	subs	r5, r5, r0
 8005c0e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c12:	2b00      	cmp	r3, #0
 8005c14:	f000 80b0 	beq.w	8005d78 <__sfvwrite_r+0x1c8>
 8005c18:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005c1c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005c20:	454d      	cmp	r5, r9
 8005c22:	462b      	mov	r3, r5
 8005c24:	463a      	mov	r2, r7
 8005c26:	bf28      	it	cs
 8005c28:	464b      	movcs	r3, r9
 8005c2a:	4661      	mov	r1, ip
 8005c2c:	4650      	mov	r0, sl
 8005c2e:	2d00      	cmp	r5, #0
 8005c30:	d1e4      	bne.n	8005bfc <__sfvwrite_r+0x4c>
 8005c32:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005c36:	3608      	adds	r6, #8
 8005c38:	e7d8      	b.n	8005bec <__sfvwrite_r+0x3c>
 8005c3a:	4621      	mov	r1, r4
 8005c3c:	4650      	mov	r0, sl
 8005c3e:	f7fe fd03 	bl	8004648 <__swsetup_r>
 8005c42:	2800      	cmp	r0, #0
 8005c44:	f040 812a 	bne.w	8005e9c <__sfvwrite_r+0x2ec>
 8005c48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c4c:	f8d8 6000 	ldr.w	r6, [r8]
 8005c50:	b29b      	uxth	r3, r3
 8005c52:	f013 0202 	ands.w	r2, r3, #2
 8005c56:	d1c1      	bne.n	8005bdc <__sfvwrite_r+0x2c>
 8005c58:	f013 0901 	ands.w	r9, r3, #1
 8005c5c:	d15d      	bne.n	8005d1a <__sfvwrite_r+0x16a>
 8005c5e:	68a7      	ldr	r7, [r4, #8]
 8005c60:	6820      	ldr	r0, [r4, #0]
 8005c62:	464d      	mov	r5, r9
 8005c64:	2d00      	cmp	r5, #0
 8005c66:	d054      	beq.n	8005d12 <__sfvwrite_r+0x162>
 8005c68:	059a      	lsls	r2, r3, #22
 8005c6a:	f140 809b 	bpl.w	8005da4 <__sfvwrite_r+0x1f4>
 8005c6e:	42af      	cmp	r7, r5
 8005c70:	46bb      	mov	fp, r7
 8005c72:	f200 80d8 	bhi.w	8005e26 <__sfvwrite_r+0x276>
 8005c76:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005c7a:	d02f      	beq.n	8005cdc <__sfvwrite_r+0x12c>
 8005c7c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005c80:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005c84:	eba0 0b01 	sub.w	fp, r0, r1
 8005c88:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005c8c:	1c68      	adds	r0, r5, #1
 8005c8e:	107f      	asrs	r7, r7, #1
 8005c90:	4458      	add	r0, fp
 8005c92:	42b8      	cmp	r0, r7
 8005c94:	463a      	mov	r2, r7
 8005c96:	bf84      	itt	hi
 8005c98:	4607      	movhi	r7, r0
 8005c9a:	463a      	movhi	r2, r7
 8005c9c:	055b      	lsls	r3, r3, #21
 8005c9e:	f140 80d3 	bpl.w	8005e48 <__sfvwrite_r+0x298>
 8005ca2:	4611      	mov	r1, r2
 8005ca4:	4650      	mov	r0, sl
 8005ca6:	f7fc fbd7 	bl	8002458 <_malloc_r>
 8005caa:	2800      	cmp	r0, #0
 8005cac:	f000 80f0 	beq.w	8005e90 <__sfvwrite_r+0x2e0>
 8005cb0:	465a      	mov	r2, fp
 8005cb2:	6921      	ldr	r1, [r4, #16]
 8005cb4:	9001      	str	r0, [sp, #4]
 8005cb6:	f7fa fc23 	bl	8000500 <memcpy>
 8005cba:	89a2      	ldrh	r2, [r4, #12]
 8005cbc:	9b01      	ldr	r3, [sp, #4]
 8005cbe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005cc2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005cc6:	81a2      	strh	r2, [r4, #12]
 8005cc8:	eba7 020b 	sub.w	r2, r7, fp
 8005ccc:	eb03 000b 	add.w	r0, r3, fp
 8005cd0:	6167      	str	r7, [r4, #20]
 8005cd2:	6123      	str	r3, [r4, #16]
 8005cd4:	6020      	str	r0, [r4, #0]
 8005cd6:	60a2      	str	r2, [r4, #8]
 8005cd8:	462f      	mov	r7, r5
 8005cda:	46ab      	mov	fp, r5
 8005cdc:	465a      	mov	r2, fp
 8005cde:	4649      	mov	r1, r9
 8005ce0:	f000 f99c 	bl	800601c <memmove>
 8005ce4:	68a2      	ldr	r2, [r4, #8]
 8005ce6:	6823      	ldr	r3, [r4, #0]
 8005ce8:	1bd2      	subs	r2, r2, r7
 8005cea:	445b      	add	r3, fp
 8005cec:	462f      	mov	r7, r5
 8005cee:	60a2      	str	r2, [r4, #8]
 8005cf0:	6023      	str	r3, [r4, #0]
 8005cf2:	2500      	movs	r5, #0
 8005cf4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005cf8:	1bdb      	subs	r3, r3, r7
 8005cfa:	44b9      	add	r9, r7
 8005cfc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005d00:	2b00      	cmp	r3, #0
 8005d02:	d039      	beq.n	8005d78 <__sfvwrite_r+0x1c8>
 8005d04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d08:	68a7      	ldr	r7, [r4, #8]
 8005d0a:	6820      	ldr	r0, [r4, #0]
 8005d0c:	b29b      	uxth	r3, r3
 8005d0e:	2d00      	cmp	r5, #0
 8005d10:	d1aa      	bne.n	8005c68 <__sfvwrite_r+0xb8>
 8005d12:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005d16:	3608      	adds	r6, #8
 8005d18:	e7a4      	b.n	8005c64 <__sfvwrite_r+0xb4>
 8005d1a:	4633      	mov	r3, r6
 8005d1c:	4691      	mov	r9, r2
 8005d1e:	4610      	mov	r0, r2
 8005d20:	4617      	mov	r7, r2
 8005d22:	464e      	mov	r6, r9
 8005d24:	469b      	mov	fp, r3
 8005d26:	2f00      	cmp	r7, #0
 8005d28:	d06b      	beq.n	8005e02 <__sfvwrite_r+0x252>
 8005d2a:	2800      	cmp	r0, #0
 8005d2c:	d071      	beq.n	8005e12 <__sfvwrite_r+0x262>
 8005d2e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005d32:	6820      	ldr	r0, [r4, #0]
 8005d34:	45b9      	cmp	r9, r7
 8005d36:	464b      	mov	r3, r9
 8005d38:	bf28      	it	cs
 8005d3a:	463b      	movcs	r3, r7
 8005d3c:	4288      	cmp	r0, r1
 8005d3e:	d903      	bls.n	8005d48 <__sfvwrite_r+0x198>
 8005d40:	68a5      	ldr	r5, [r4, #8]
 8005d42:	4415      	add	r5, r2
 8005d44:	42ab      	cmp	r3, r5
 8005d46:	dc71      	bgt.n	8005e2c <__sfvwrite_r+0x27c>
 8005d48:	429a      	cmp	r2, r3
 8005d4a:	f300 8093 	bgt.w	8005e74 <__sfvwrite_r+0x2c4>
 8005d4e:	4613      	mov	r3, r2
 8005d50:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005d52:	69e1      	ldr	r1, [r4, #28]
 8005d54:	4632      	mov	r2, r6
 8005d56:	4650      	mov	r0, sl
 8005d58:	47a8      	blx	r5
 8005d5a:	1e05      	subs	r5, r0, #0
 8005d5c:	dd18      	ble.n	8005d90 <__sfvwrite_r+0x1e0>
 8005d5e:	ebb9 0905 	subs.w	r9, r9, r5
 8005d62:	d00f      	beq.n	8005d84 <__sfvwrite_r+0x1d4>
 8005d64:	2001      	movs	r0, #1
 8005d66:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005d6a:	1b5b      	subs	r3, r3, r5
 8005d6c:	442e      	add	r6, r5
 8005d6e:	1b7f      	subs	r7, r7, r5
 8005d70:	f8c8 3008 	str.w	r3, [r8, #8]
 8005d74:	2b00      	cmp	r3, #0
 8005d76:	d1d6      	bne.n	8005d26 <__sfvwrite_r+0x176>
 8005d78:	2000      	movs	r0, #0
 8005d7a:	b003      	add	sp, #12
 8005d7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d80:	2000      	movs	r0, #0
 8005d82:	4770      	bx	lr
 8005d84:	4621      	mov	r1, r4
 8005d86:	4650      	mov	r0, sl
 8005d88:	f7ff fd20 	bl	80057cc <_fflush_r>
 8005d8c:	2800      	cmp	r0, #0
 8005d8e:	d0ea      	beq.n	8005d66 <__sfvwrite_r+0x1b6>
 8005d90:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d94:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005d98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005d9c:	81a3      	strh	r3, [r4, #12]
 8005d9e:	b003      	add	sp, #12
 8005da0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005da4:	6923      	ldr	r3, [r4, #16]
 8005da6:	4283      	cmp	r3, r0
 8005da8:	d315      	bcc.n	8005dd6 <__sfvwrite_r+0x226>
 8005daa:	6961      	ldr	r1, [r4, #20]
 8005dac:	42a9      	cmp	r1, r5
 8005dae:	d812      	bhi.n	8005dd6 <__sfvwrite_r+0x226>
 8005db0:	4b3c      	ldr	r3, [pc, #240]	; (8005ea4 <__sfvwrite_r+0x2f4>)
 8005db2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005db4:	429d      	cmp	r5, r3
 8005db6:	bf94      	ite	ls
 8005db8:	462b      	movls	r3, r5
 8005dba:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005dbe:	464a      	mov	r2, r9
 8005dc0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005dc4:	4650      	mov	r0, sl
 8005dc6:	fb01 f303 	mul.w	r3, r1, r3
 8005dca:	69e1      	ldr	r1, [r4, #28]
 8005dcc:	47b8      	blx	r7
 8005dce:	1e07      	subs	r7, r0, #0
 8005dd0:	ddde      	ble.n	8005d90 <__sfvwrite_r+0x1e0>
 8005dd2:	1bed      	subs	r5, r5, r7
 8005dd4:	e78e      	b.n	8005cf4 <__sfvwrite_r+0x144>
 8005dd6:	42af      	cmp	r7, r5
 8005dd8:	bf28      	it	cs
 8005dda:	462f      	movcs	r7, r5
 8005ddc:	463a      	mov	r2, r7
 8005dde:	4649      	mov	r1, r9
 8005de0:	f000 f91c 	bl	800601c <memmove>
 8005de4:	68a3      	ldr	r3, [r4, #8]
 8005de6:	6822      	ldr	r2, [r4, #0]
 8005de8:	1bdb      	subs	r3, r3, r7
 8005dea:	443a      	add	r2, r7
 8005dec:	60a3      	str	r3, [r4, #8]
 8005dee:	6022      	str	r2, [r4, #0]
 8005df0:	2b00      	cmp	r3, #0
 8005df2:	d1ee      	bne.n	8005dd2 <__sfvwrite_r+0x222>
 8005df4:	4621      	mov	r1, r4
 8005df6:	4650      	mov	r0, sl
 8005df8:	f7ff fce8 	bl	80057cc <_fflush_r>
 8005dfc:	2800      	cmp	r0, #0
 8005dfe:	d0e8      	beq.n	8005dd2 <__sfvwrite_r+0x222>
 8005e00:	e7c6      	b.n	8005d90 <__sfvwrite_r+0x1e0>
 8005e02:	f10b 0308 	add.w	r3, fp, #8
 8005e06:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005e0a:	469b      	mov	fp, r3
 8005e0c:	3308      	adds	r3, #8
 8005e0e:	2f00      	cmp	r7, #0
 8005e10:	d0f9      	beq.n	8005e06 <__sfvwrite_r+0x256>
 8005e12:	463a      	mov	r2, r7
 8005e14:	210a      	movs	r1, #10
 8005e16:	4630      	mov	r0, r6
 8005e18:	f7fa fc82 	bl	8000720 <memchr>
 8005e1c:	b338      	cbz	r0, 8005e6e <__sfvwrite_r+0x2be>
 8005e1e:	3001      	adds	r0, #1
 8005e20:	eba0 0906 	sub.w	r9, r0, r6
 8005e24:	e783      	b.n	8005d2e <__sfvwrite_r+0x17e>
 8005e26:	462f      	mov	r7, r5
 8005e28:	46ab      	mov	fp, r5
 8005e2a:	e757      	b.n	8005cdc <__sfvwrite_r+0x12c>
 8005e2c:	4631      	mov	r1, r6
 8005e2e:	462a      	mov	r2, r5
 8005e30:	f000 f8f4 	bl	800601c <memmove>
 8005e34:	6823      	ldr	r3, [r4, #0]
 8005e36:	442b      	add	r3, r5
 8005e38:	6023      	str	r3, [r4, #0]
 8005e3a:	4621      	mov	r1, r4
 8005e3c:	4650      	mov	r0, sl
 8005e3e:	f7ff fcc5 	bl	80057cc <_fflush_r>
 8005e42:	2800      	cmp	r0, #0
 8005e44:	d08b      	beq.n	8005d5e <__sfvwrite_r+0x1ae>
 8005e46:	e7a3      	b.n	8005d90 <__sfvwrite_r+0x1e0>
 8005e48:	4650      	mov	r0, sl
 8005e4a:	f000 fc55 	bl	80066f8 <_realloc_r>
 8005e4e:	4603      	mov	r3, r0
 8005e50:	2800      	cmp	r0, #0
 8005e52:	f47f af39 	bne.w	8005cc8 <__sfvwrite_r+0x118>
 8005e56:	6921      	ldr	r1, [r4, #16]
 8005e58:	4650      	mov	r0, sl
 8005e5a:	f7ff fdb5 	bl	80059c8 <_free_r>
 8005e5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e62:	220c      	movs	r2, #12
 8005e64:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005e68:	f8ca 2000 	str.w	r2, [sl]
 8005e6c:	e792      	b.n	8005d94 <__sfvwrite_r+0x1e4>
 8005e6e:	f107 0901 	add.w	r9, r7, #1
 8005e72:	e75c      	b.n	8005d2e <__sfvwrite_r+0x17e>
 8005e74:	461a      	mov	r2, r3
 8005e76:	4631      	mov	r1, r6
 8005e78:	9301      	str	r3, [sp, #4]
 8005e7a:	f000 f8cf 	bl	800601c <memmove>
 8005e7e:	9b01      	ldr	r3, [sp, #4]
 8005e80:	68a1      	ldr	r1, [r4, #8]
 8005e82:	6822      	ldr	r2, [r4, #0]
 8005e84:	1ac9      	subs	r1, r1, r3
 8005e86:	441a      	add	r2, r3
 8005e88:	60a1      	str	r1, [r4, #8]
 8005e8a:	6022      	str	r2, [r4, #0]
 8005e8c:	461d      	mov	r5, r3
 8005e8e:	e766      	b.n	8005d5e <__sfvwrite_r+0x1ae>
 8005e90:	230c      	movs	r3, #12
 8005e92:	f8ca 3000 	str.w	r3, [sl]
 8005e96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e9a:	e77b      	b.n	8005d94 <__sfvwrite_r+0x1e4>
 8005e9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ea0:	e76b      	b.n	8005d7a <__sfvwrite_r+0x1ca>
 8005ea2:	bf00      	nop
 8005ea4:	7ffffffe 	.word	0x7ffffffe
 8005ea8:	7ffffc00 	.word	0x7ffffc00

08005eac <_fwalk_reent>:
 8005eac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005eb0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005eb4:	d01f      	beq.n	8005ef6 <_fwalk_reent+0x4a>
 8005eb6:	4688      	mov	r8, r1
 8005eb8:	4606      	mov	r6, r0
 8005eba:	f04f 0900 	mov.w	r9, #0
 8005ebe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005ec2:	3d01      	subs	r5, #1
 8005ec4:	d411      	bmi.n	8005eea <_fwalk_reent+0x3e>
 8005ec6:	89a3      	ldrh	r3, [r4, #12]
 8005ec8:	2b01      	cmp	r3, #1
 8005eca:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005ece:	4621      	mov	r1, r4
 8005ed0:	4630      	mov	r0, r6
 8005ed2:	d906      	bls.n	8005ee2 <_fwalk_reent+0x36>
 8005ed4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005ed8:	3301      	adds	r3, #1
 8005eda:	d002      	beq.n	8005ee2 <_fwalk_reent+0x36>
 8005edc:	47c0      	blx	r8
 8005ede:	ea49 0900 	orr.w	r9, r9, r0
 8005ee2:	1c6b      	adds	r3, r5, #1
 8005ee4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005ee8:	d1ed      	bne.n	8005ec6 <_fwalk_reent+0x1a>
 8005eea:	683f      	ldr	r7, [r7, #0]
 8005eec:	2f00      	cmp	r7, #0
 8005eee:	d1e6      	bne.n	8005ebe <_fwalk_reent+0x12>
 8005ef0:	4648      	mov	r0, r9
 8005ef2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005ef6:	46b9      	mov	r9, r7
 8005ef8:	4648      	mov	r0, r9
 8005efa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005efe:	bf00      	nop

08005f00 <_localeconv_r>:
 8005f00:	4a04      	ldr	r2, [pc, #16]	; (8005f14 <_localeconv_r+0x14>)
 8005f02:	4b05      	ldr	r3, [pc, #20]	; (8005f18 <_localeconv_r+0x18>)
 8005f04:	6812      	ldr	r2, [r2, #0]
 8005f06:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005f08:	2800      	cmp	r0, #0
 8005f0a:	bf08      	it	eq
 8005f0c:	4618      	moveq	r0, r3
 8005f0e:	30f0      	adds	r0, #240	; 0xf0
 8005f10:	4770      	bx	lr
 8005f12:	bf00      	nop
 8005f14:	200001a8 	.word	0x200001a8
 8005f18:	200009ec 	.word	0x200009ec

08005f1c <__retarget_lock_init_recursive>:
 8005f1c:	4770      	bx	lr
 8005f1e:	bf00      	nop

08005f20 <__retarget_lock_close_recursive>:
 8005f20:	4770      	bx	lr
 8005f22:	bf00      	nop

08005f24 <__retarget_lock_acquire_recursive>:
 8005f24:	4770      	bx	lr
 8005f26:	bf00      	nop

08005f28 <__retarget_lock_release_recursive>:
 8005f28:	4770      	bx	lr
 8005f2a:	bf00      	nop

08005f2c <__swhatbuf_r>:
 8005f2c:	b570      	push	{r4, r5, r6, lr}
 8005f2e:	460c      	mov	r4, r1
 8005f30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005f34:	2900      	cmp	r1, #0
 8005f36:	b096      	sub	sp, #88	; 0x58
 8005f38:	4615      	mov	r5, r2
 8005f3a:	461e      	mov	r6, r3
 8005f3c:	da0f      	bge.n	8005f5e <__swhatbuf_r+0x32>
 8005f3e:	89a2      	ldrh	r2, [r4, #12]
 8005f40:	2300      	movs	r3, #0
 8005f42:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005f46:	6033      	str	r3, [r6, #0]
 8005f48:	d104      	bne.n	8005f54 <__swhatbuf_r+0x28>
 8005f4a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005f4e:	602b      	str	r3, [r5, #0]
 8005f50:	b016      	add	sp, #88	; 0x58
 8005f52:	bd70      	pop	{r4, r5, r6, pc}
 8005f54:	2240      	movs	r2, #64	; 0x40
 8005f56:	4618      	mov	r0, r3
 8005f58:	602a      	str	r2, [r5, #0]
 8005f5a:	b016      	add	sp, #88	; 0x58
 8005f5c:	bd70      	pop	{r4, r5, r6, pc}
 8005f5e:	466a      	mov	r2, sp
 8005f60:	f001 f80e 	bl	8006f80 <_fstat_r>
 8005f64:	2800      	cmp	r0, #0
 8005f66:	dbea      	blt.n	8005f3e <__swhatbuf_r+0x12>
 8005f68:	9b01      	ldr	r3, [sp, #4]
 8005f6a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005f6e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005f72:	fab3 f383 	clz	r3, r3
 8005f76:	095b      	lsrs	r3, r3, #5
 8005f78:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005f7c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005f80:	6033      	str	r3, [r6, #0]
 8005f82:	602a      	str	r2, [r5, #0]
 8005f84:	b016      	add	sp, #88	; 0x58
 8005f86:	bd70      	pop	{r4, r5, r6, pc}

08005f88 <__smakebuf_r>:
 8005f88:	898a      	ldrh	r2, [r1, #12]
 8005f8a:	0792      	lsls	r2, r2, #30
 8005f8c:	460b      	mov	r3, r1
 8005f8e:	d506      	bpl.n	8005f9e <__smakebuf_r+0x16>
 8005f90:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005f94:	2101      	movs	r1, #1
 8005f96:	601a      	str	r2, [r3, #0]
 8005f98:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005f9c:	4770      	bx	lr
 8005f9e:	b570      	push	{r4, r5, r6, lr}
 8005fa0:	b082      	sub	sp, #8
 8005fa2:	ab01      	add	r3, sp, #4
 8005fa4:	466a      	mov	r2, sp
 8005fa6:	460c      	mov	r4, r1
 8005fa8:	4605      	mov	r5, r0
 8005faa:	f7ff ffbf 	bl	8005f2c <__swhatbuf_r>
 8005fae:	9900      	ldr	r1, [sp, #0]
 8005fb0:	4606      	mov	r6, r0
 8005fb2:	4628      	mov	r0, r5
 8005fb4:	f7fc fa50 	bl	8002458 <_malloc_r>
 8005fb8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fbc:	b1d8      	cbz	r0, 8005ff6 <__smakebuf_r+0x6e>
 8005fbe:	4916      	ldr	r1, [pc, #88]	; (8006018 <__smakebuf_r+0x90>)
 8005fc0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005fc2:	9a01      	ldr	r2, [sp, #4]
 8005fc4:	9900      	ldr	r1, [sp, #0]
 8005fc6:	6020      	str	r0, [r4, #0]
 8005fc8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005fcc:	81a3      	strh	r3, [r4, #12]
 8005fce:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005fd2:	b91a      	cbnz	r2, 8005fdc <__smakebuf_r+0x54>
 8005fd4:	4333      	orrs	r3, r6
 8005fd6:	81a3      	strh	r3, [r4, #12]
 8005fd8:	b002      	add	sp, #8
 8005fda:	bd70      	pop	{r4, r5, r6, pc}
 8005fdc:	4628      	mov	r0, r5
 8005fde:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005fe2:	f000 ffe1 	bl	8006fa8 <_isatty_r>
 8005fe6:	b1a0      	cbz	r0, 8006012 <__smakebuf_r+0x8a>
 8005fe8:	89a3      	ldrh	r3, [r4, #12]
 8005fea:	f023 0303 	bic.w	r3, r3, #3
 8005fee:	f043 0301 	orr.w	r3, r3, #1
 8005ff2:	b21b      	sxth	r3, r3
 8005ff4:	e7ee      	b.n	8005fd4 <__smakebuf_r+0x4c>
 8005ff6:	059a      	lsls	r2, r3, #22
 8005ff8:	d4ee      	bmi.n	8005fd8 <__smakebuf_r+0x50>
 8005ffa:	f023 0303 	bic.w	r3, r3, #3
 8005ffe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006002:	f043 0302 	orr.w	r3, r3, #2
 8006006:	2101      	movs	r1, #1
 8006008:	81a3      	strh	r3, [r4, #12]
 800600a:	6022      	str	r2, [r4, #0]
 800600c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006010:	e7e2      	b.n	8005fd8 <__smakebuf_r+0x50>
 8006012:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006016:	e7dd      	b.n	8005fd4 <__smakebuf_r+0x4c>
 8006018:	08005879 	.word	0x08005879

0800601c <memmove>:
 800601c:	4288      	cmp	r0, r1
 800601e:	b4f0      	push	{r4, r5, r6, r7}
 8006020:	d90d      	bls.n	800603e <memmove+0x22>
 8006022:	188b      	adds	r3, r1, r2
 8006024:	4283      	cmp	r3, r0
 8006026:	d90a      	bls.n	800603e <memmove+0x22>
 8006028:	1884      	adds	r4, r0, r2
 800602a:	b132      	cbz	r2, 800603a <memmove+0x1e>
 800602c:	4622      	mov	r2, r4
 800602e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006032:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006036:	4299      	cmp	r1, r3
 8006038:	d1f9      	bne.n	800602e <memmove+0x12>
 800603a:	bcf0      	pop	{r4, r5, r6, r7}
 800603c:	4770      	bx	lr
 800603e:	2a0f      	cmp	r2, #15
 8006040:	d949      	bls.n	80060d6 <memmove+0xba>
 8006042:	ea40 0301 	orr.w	r3, r0, r1
 8006046:	079b      	lsls	r3, r3, #30
 8006048:	d147      	bne.n	80060da <memmove+0xbe>
 800604a:	f1a2 0310 	sub.w	r3, r2, #16
 800604e:	091b      	lsrs	r3, r3, #4
 8006050:	f101 0720 	add.w	r7, r1, #32
 8006054:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006058:	f101 0410 	add.w	r4, r1, #16
 800605c:	f100 0510 	add.w	r5, r0, #16
 8006060:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8006064:	f845 6c10 	str.w	r6, [r5, #-16]
 8006068:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800606c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006070:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8006074:	f845 6c08 	str.w	r6, [r5, #-8]
 8006078:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800607c:	f845 6c04 	str.w	r6, [r5, #-4]
 8006080:	3410      	adds	r4, #16
 8006082:	42bc      	cmp	r4, r7
 8006084:	f105 0510 	add.w	r5, r5, #16
 8006088:	d1ea      	bne.n	8006060 <memmove+0x44>
 800608a:	3301      	adds	r3, #1
 800608c:	f002 050f 	and.w	r5, r2, #15
 8006090:	011b      	lsls	r3, r3, #4
 8006092:	2d03      	cmp	r5, #3
 8006094:	4419      	add	r1, r3
 8006096:	4403      	add	r3, r0
 8006098:	d921      	bls.n	80060de <memmove+0xc2>
 800609a:	1f1f      	subs	r7, r3, #4
 800609c:	460e      	mov	r6, r1
 800609e:	462c      	mov	r4, r5
 80060a0:	3c04      	subs	r4, #4
 80060a2:	f856 cb04 	ldr.w	ip, [r6], #4
 80060a6:	f847 cf04 	str.w	ip, [r7, #4]!
 80060aa:	2c03      	cmp	r4, #3
 80060ac:	d8f8      	bhi.n	80060a0 <memmove+0x84>
 80060ae:	1f2c      	subs	r4, r5, #4
 80060b0:	f024 0403 	bic.w	r4, r4, #3
 80060b4:	3404      	adds	r4, #4
 80060b6:	4423      	add	r3, r4
 80060b8:	4421      	add	r1, r4
 80060ba:	f002 0203 	and.w	r2, r2, #3
 80060be:	2a00      	cmp	r2, #0
 80060c0:	d0bb      	beq.n	800603a <memmove+0x1e>
 80060c2:	3b01      	subs	r3, #1
 80060c4:	440a      	add	r2, r1
 80060c6:	f811 4b01 	ldrb.w	r4, [r1], #1
 80060ca:	f803 4f01 	strb.w	r4, [r3, #1]!
 80060ce:	4291      	cmp	r1, r2
 80060d0:	d1f9      	bne.n	80060c6 <memmove+0xaa>
 80060d2:	bcf0      	pop	{r4, r5, r6, r7}
 80060d4:	4770      	bx	lr
 80060d6:	4603      	mov	r3, r0
 80060d8:	e7f1      	b.n	80060be <memmove+0xa2>
 80060da:	4603      	mov	r3, r0
 80060dc:	e7f1      	b.n	80060c2 <memmove+0xa6>
 80060de:	462a      	mov	r2, r5
 80060e0:	e7ed      	b.n	80060be <memmove+0xa2>
 80060e2:	bf00      	nop

080060e4 <_Balloc>:
 80060e4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80060e6:	b570      	push	{r4, r5, r6, lr}
 80060e8:	4605      	mov	r5, r0
 80060ea:	460c      	mov	r4, r1
 80060ec:	b14b      	cbz	r3, 8006102 <_Balloc+0x1e>
 80060ee:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80060f2:	b180      	cbz	r0, 8006116 <_Balloc+0x32>
 80060f4:	6802      	ldr	r2, [r0, #0]
 80060f6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80060fa:	2300      	movs	r3, #0
 80060fc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006100:	bd70      	pop	{r4, r5, r6, pc}
 8006102:	2221      	movs	r2, #33	; 0x21
 8006104:	2104      	movs	r1, #4
 8006106:	f000 fe0b 	bl	8006d20 <_calloc_r>
 800610a:	4603      	mov	r3, r0
 800610c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800610e:	2800      	cmp	r0, #0
 8006110:	d1ed      	bne.n	80060ee <_Balloc+0xa>
 8006112:	2000      	movs	r0, #0
 8006114:	bd70      	pop	{r4, r5, r6, pc}
 8006116:	2101      	movs	r1, #1
 8006118:	fa01 f604 	lsl.w	r6, r1, r4
 800611c:	1d72      	adds	r2, r6, #5
 800611e:	4628      	mov	r0, r5
 8006120:	0092      	lsls	r2, r2, #2
 8006122:	f000 fdfd 	bl	8006d20 <_calloc_r>
 8006126:	2800      	cmp	r0, #0
 8006128:	d0f3      	beq.n	8006112 <_Balloc+0x2e>
 800612a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800612e:	e7e4      	b.n	80060fa <_Balloc+0x16>

08006130 <_Bfree>:
 8006130:	b131      	cbz	r1, 8006140 <_Bfree+0x10>
 8006132:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006134:	684a      	ldr	r2, [r1, #4]
 8006136:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800613a:	6008      	str	r0, [r1, #0]
 800613c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006140:	4770      	bx	lr
 8006142:	bf00      	nop

08006144 <__multadd>:
 8006144:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006146:	690c      	ldr	r4, [r1, #16]
 8006148:	b083      	sub	sp, #12
 800614a:	460d      	mov	r5, r1
 800614c:	4606      	mov	r6, r0
 800614e:	f101 0c14 	add.w	ip, r1, #20
 8006152:	2700      	movs	r7, #0
 8006154:	f8dc 0000 	ldr.w	r0, [ip]
 8006158:	b281      	uxth	r1, r0
 800615a:	fb02 3301 	mla	r3, r2, r1, r3
 800615e:	0c01      	lsrs	r1, r0, #16
 8006160:	0c18      	lsrs	r0, r3, #16
 8006162:	fb02 0101 	mla	r1, r2, r1, r0
 8006166:	b29b      	uxth	r3, r3
 8006168:	3701      	adds	r7, #1
 800616a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800616e:	42bc      	cmp	r4, r7
 8006170:	f84c 3b04 	str.w	r3, [ip], #4
 8006174:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006178:	dcec      	bgt.n	8006154 <__multadd+0x10>
 800617a:	b13b      	cbz	r3, 800618c <__multadd+0x48>
 800617c:	68aa      	ldr	r2, [r5, #8]
 800617e:	42a2      	cmp	r2, r4
 8006180:	dd07      	ble.n	8006192 <__multadd+0x4e>
 8006182:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006186:	3401      	adds	r4, #1
 8006188:	6153      	str	r3, [r2, #20]
 800618a:	612c      	str	r4, [r5, #16]
 800618c:	4628      	mov	r0, r5
 800618e:	b003      	add	sp, #12
 8006190:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006192:	6869      	ldr	r1, [r5, #4]
 8006194:	9301      	str	r3, [sp, #4]
 8006196:	3101      	adds	r1, #1
 8006198:	4630      	mov	r0, r6
 800619a:	f7ff ffa3 	bl	80060e4 <_Balloc>
 800619e:	692a      	ldr	r2, [r5, #16]
 80061a0:	3202      	adds	r2, #2
 80061a2:	f105 010c 	add.w	r1, r5, #12
 80061a6:	4607      	mov	r7, r0
 80061a8:	0092      	lsls	r2, r2, #2
 80061aa:	300c      	adds	r0, #12
 80061ac:	f7fa f9a8 	bl	8000500 <memcpy>
 80061b0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80061b2:	6869      	ldr	r1, [r5, #4]
 80061b4:	9b01      	ldr	r3, [sp, #4]
 80061b6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80061ba:	6028      	str	r0, [r5, #0]
 80061bc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80061c0:	463d      	mov	r5, r7
 80061c2:	e7de      	b.n	8006182 <__multadd+0x3e>

080061c4 <__hi0bits>:
 80061c4:	0c02      	lsrs	r2, r0, #16
 80061c6:	0412      	lsls	r2, r2, #16
 80061c8:	4603      	mov	r3, r0
 80061ca:	b9c2      	cbnz	r2, 80061fe <__hi0bits+0x3a>
 80061cc:	0403      	lsls	r3, r0, #16
 80061ce:	2010      	movs	r0, #16
 80061d0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80061d4:	bf04      	itt	eq
 80061d6:	021b      	lsleq	r3, r3, #8
 80061d8:	3008      	addeq	r0, #8
 80061da:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80061de:	bf04      	itt	eq
 80061e0:	011b      	lsleq	r3, r3, #4
 80061e2:	3004      	addeq	r0, #4
 80061e4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80061e8:	bf04      	itt	eq
 80061ea:	009b      	lsleq	r3, r3, #2
 80061ec:	3002      	addeq	r0, #2
 80061ee:	2b00      	cmp	r3, #0
 80061f0:	db04      	blt.n	80061fc <__hi0bits+0x38>
 80061f2:	005b      	lsls	r3, r3, #1
 80061f4:	d501      	bpl.n	80061fa <__hi0bits+0x36>
 80061f6:	3001      	adds	r0, #1
 80061f8:	4770      	bx	lr
 80061fa:	2020      	movs	r0, #32
 80061fc:	4770      	bx	lr
 80061fe:	2000      	movs	r0, #0
 8006200:	e7e6      	b.n	80061d0 <__hi0bits+0xc>
 8006202:	bf00      	nop

08006204 <__lo0bits>:
 8006204:	6803      	ldr	r3, [r0, #0]
 8006206:	f013 0207 	ands.w	r2, r3, #7
 800620a:	4601      	mov	r1, r0
 800620c:	d007      	beq.n	800621e <__lo0bits+0x1a>
 800620e:	07da      	lsls	r2, r3, #31
 8006210:	d41f      	bmi.n	8006252 <__lo0bits+0x4e>
 8006212:	0798      	lsls	r0, r3, #30
 8006214:	d51f      	bpl.n	8006256 <__lo0bits+0x52>
 8006216:	085b      	lsrs	r3, r3, #1
 8006218:	600b      	str	r3, [r1, #0]
 800621a:	2001      	movs	r0, #1
 800621c:	4770      	bx	lr
 800621e:	b298      	uxth	r0, r3
 8006220:	b1a0      	cbz	r0, 800624c <__lo0bits+0x48>
 8006222:	4610      	mov	r0, r2
 8006224:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006228:	bf04      	itt	eq
 800622a:	0a1b      	lsreq	r3, r3, #8
 800622c:	3008      	addeq	r0, #8
 800622e:	071a      	lsls	r2, r3, #28
 8006230:	bf04      	itt	eq
 8006232:	091b      	lsreq	r3, r3, #4
 8006234:	3004      	addeq	r0, #4
 8006236:	079a      	lsls	r2, r3, #30
 8006238:	bf04      	itt	eq
 800623a:	089b      	lsreq	r3, r3, #2
 800623c:	3002      	addeq	r0, #2
 800623e:	07da      	lsls	r2, r3, #31
 8006240:	d402      	bmi.n	8006248 <__lo0bits+0x44>
 8006242:	085b      	lsrs	r3, r3, #1
 8006244:	d00b      	beq.n	800625e <__lo0bits+0x5a>
 8006246:	3001      	adds	r0, #1
 8006248:	600b      	str	r3, [r1, #0]
 800624a:	4770      	bx	lr
 800624c:	0c1b      	lsrs	r3, r3, #16
 800624e:	2010      	movs	r0, #16
 8006250:	e7e8      	b.n	8006224 <__lo0bits+0x20>
 8006252:	2000      	movs	r0, #0
 8006254:	4770      	bx	lr
 8006256:	089b      	lsrs	r3, r3, #2
 8006258:	600b      	str	r3, [r1, #0]
 800625a:	2002      	movs	r0, #2
 800625c:	4770      	bx	lr
 800625e:	2020      	movs	r0, #32
 8006260:	4770      	bx	lr
 8006262:	bf00      	nop

08006264 <__i2b>:
 8006264:	b510      	push	{r4, lr}
 8006266:	460c      	mov	r4, r1
 8006268:	2101      	movs	r1, #1
 800626a:	f7ff ff3b 	bl	80060e4 <_Balloc>
 800626e:	2201      	movs	r2, #1
 8006270:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006274:	bd10      	pop	{r4, pc}
 8006276:	bf00      	nop

08006278 <__multiply>:
 8006278:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800627c:	690e      	ldr	r6, [r1, #16]
 800627e:	6914      	ldr	r4, [r2, #16]
 8006280:	42a6      	cmp	r6, r4
 8006282:	b083      	sub	sp, #12
 8006284:	460f      	mov	r7, r1
 8006286:	4615      	mov	r5, r2
 8006288:	da04      	bge.n	8006294 <__multiply+0x1c>
 800628a:	4632      	mov	r2, r6
 800628c:	462f      	mov	r7, r5
 800628e:	4626      	mov	r6, r4
 8006290:	460d      	mov	r5, r1
 8006292:	4614      	mov	r4, r2
 8006294:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006298:	eb06 0804 	add.w	r8, r6, r4
 800629c:	4543      	cmp	r3, r8
 800629e:	bfb8      	it	lt
 80062a0:	3101      	addlt	r1, #1
 80062a2:	f7ff ff1f 	bl	80060e4 <_Balloc>
 80062a6:	f100 0914 	add.w	r9, r0, #20
 80062aa:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80062ae:	45f1      	cmp	r9, lr
 80062b0:	9000      	str	r0, [sp, #0]
 80062b2:	d205      	bcs.n	80062c0 <__multiply+0x48>
 80062b4:	464b      	mov	r3, r9
 80062b6:	2200      	movs	r2, #0
 80062b8:	f843 2b04 	str.w	r2, [r3], #4
 80062bc:	459e      	cmp	lr, r3
 80062be:	d8fb      	bhi.n	80062b8 <__multiply+0x40>
 80062c0:	f105 0a14 	add.w	sl, r5, #20
 80062c4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80062c8:	f107 0314 	add.w	r3, r7, #20
 80062cc:	45a2      	cmp	sl, r4
 80062ce:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80062d2:	d261      	bcs.n	8006398 <__multiply+0x120>
 80062d4:	1b64      	subs	r4, r4, r5
 80062d6:	3c15      	subs	r4, #21
 80062d8:	f024 0403 	bic.w	r4, r4, #3
 80062dc:	f8cd e004 	str.w	lr, [sp, #4]
 80062e0:	44a2      	add	sl, r4
 80062e2:	f105 0210 	add.w	r2, r5, #16
 80062e6:	469e      	mov	lr, r3
 80062e8:	e005      	b.n	80062f6 <__multiply+0x7e>
 80062ea:	0c2d      	lsrs	r5, r5, #16
 80062ec:	d12b      	bne.n	8006346 <__multiply+0xce>
 80062ee:	4592      	cmp	sl, r2
 80062f0:	f109 0904 	add.w	r9, r9, #4
 80062f4:	d04e      	beq.n	8006394 <__multiply+0x11c>
 80062f6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80062fa:	fa1f fb85 	uxth.w	fp, r5
 80062fe:	f1bb 0f00 	cmp.w	fp, #0
 8006302:	d0f2      	beq.n	80062ea <__multiply+0x72>
 8006304:	4677      	mov	r7, lr
 8006306:	464e      	mov	r6, r9
 8006308:	2000      	movs	r0, #0
 800630a:	e000      	b.n	800630e <__multiply+0x96>
 800630c:	4626      	mov	r6, r4
 800630e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006312:	6834      	ldr	r4, [r6, #0]
 8006314:	b28b      	uxth	r3, r1
 8006316:	b2a5      	uxth	r5, r4
 8006318:	0c09      	lsrs	r1, r1, #16
 800631a:	0c24      	lsrs	r4, r4, #16
 800631c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006320:	4403      	add	r3, r0
 8006322:	fb0b 4001 	mla	r0, fp, r1, r4
 8006326:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800632a:	4634      	mov	r4, r6
 800632c:	b29b      	uxth	r3, r3
 800632e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006332:	45bc      	cmp	ip, r7
 8006334:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006338:	f844 3b04 	str.w	r3, [r4], #4
 800633c:	d8e6      	bhi.n	800630c <__multiply+0x94>
 800633e:	6070      	str	r0, [r6, #4]
 8006340:	6815      	ldr	r5, [r2, #0]
 8006342:	0c2d      	lsrs	r5, r5, #16
 8006344:	d0d3      	beq.n	80062ee <__multiply+0x76>
 8006346:	f8d9 3000 	ldr.w	r3, [r9]
 800634a:	4676      	mov	r6, lr
 800634c:	4618      	mov	r0, r3
 800634e:	46cb      	mov	fp, r9
 8006350:	2100      	movs	r1, #0
 8006352:	e000      	b.n	8006356 <__multiply+0xde>
 8006354:	46a3      	mov	fp, r4
 8006356:	8834      	ldrh	r4, [r6, #0]
 8006358:	0c00      	lsrs	r0, r0, #16
 800635a:	fb05 0004 	mla	r0, r5, r4, r0
 800635e:	4401      	add	r1, r0
 8006360:	b29b      	uxth	r3, r3
 8006362:	465c      	mov	r4, fp
 8006364:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006368:	f844 3b04 	str.w	r3, [r4], #4
 800636c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006370:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006374:	0c1b      	lsrs	r3, r3, #16
 8006376:	b287      	uxth	r7, r0
 8006378:	fb05 7303 	mla	r3, r5, r3, r7
 800637c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006380:	45b4      	cmp	ip, r6
 8006382:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006386:	d8e5      	bhi.n	8006354 <__multiply+0xdc>
 8006388:	4592      	cmp	sl, r2
 800638a:	f8cb 3004 	str.w	r3, [fp, #4]
 800638e:	f109 0904 	add.w	r9, r9, #4
 8006392:	d1b0      	bne.n	80062f6 <__multiply+0x7e>
 8006394:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006398:	f1b8 0f00 	cmp.w	r8, #0
 800639c:	dd0b      	ble.n	80063b6 <__multiply+0x13e>
 800639e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80063a2:	f1ae 0e04 	sub.w	lr, lr, #4
 80063a6:	b11b      	cbz	r3, 80063b0 <__multiply+0x138>
 80063a8:	e005      	b.n	80063b6 <__multiply+0x13e>
 80063aa:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80063ae:	b913      	cbnz	r3, 80063b6 <__multiply+0x13e>
 80063b0:	f1b8 0801 	subs.w	r8, r8, #1
 80063b4:	d1f9      	bne.n	80063aa <__multiply+0x132>
 80063b6:	9800      	ldr	r0, [sp, #0]
 80063b8:	f8c0 8010 	str.w	r8, [r0, #16]
 80063bc:	b003      	add	sp, #12
 80063be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80063c2:	bf00      	nop

080063c4 <__pow5mult>:
 80063c4:	f012 0303 	ands.w	r3, r2, #3
 80063c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063cc:	4614      	mov	r4, r2
 80063ce:	4607      	mov	r7, r0
 80063d0:	d12e      	bne.n	8006430 <__pow5mult+0x6c>
 80063d2:	460d      	mov	r5, r1
 80063d4:	10a4      	asrs	r4, r4, #2
 80063d6:	d01c      	beq.n	8006412 <__pow5mult+0x4e>
 80063d8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80063da:	b396      	cbz	r6, 8006442 <__pow5mult+0x7e>
 80063dc:	07e3      	lsls	r3, r4, #31
 80063de:	f04f 0800 	mov.w	r8, #0
 80063e2:	d406      	bmi.n	80063f2 <__pow5mult+0x2e>
 80063e4:	1064      	asrs	r4, r4, #1
 80063e6:	d014      	beq.n	8006412 <__pow5mult+0x4e>
 80063e8:	6830      	ldr	r0, [r6, #0]
 80063ea:	b1a8      	cbz	r0, 8006418 <__pow5mult+0x54>
 80063ec:	4606      	mov	r6, r0
 80063ee:	07e3      	lsls	r3, r4, #31
 80063f0:	d5f8      	bpl.n	80063e4 <__pow5mult+0x20>
 80063f2:	4632      	mov	r2, r6
 80063f4:	4629      	mov	r1, r5
 80063f6:	4638      	mov	r0, r7
 80063f8:	f7ff ff3e 	bl	8006278 <__multiply>
 80063fc:	b1b5      	cbz	r5, 800642c <__pow5mult+0x68>
 80063fe:	686a      	ldr	r2, [r5, #4]
 8006400:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006402:	1064      	asrs	r4, r4, #1
 8006404:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006408:	6029      	str	r1, [r5, #0]
 800640a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800640e:	4605      	mov	r5, r0
 8006410:	d1ea      	bne.n	80063e8 <__pow5mult+0x24>
 8006412:	4628      	mov	r0, r5
 8006414:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006418:	4632      	mov	r2, r6
 800641a:	4631      	mov	r1, r6
 800641c:	4638      	mov	r0, r7
 800641e:	f7ff ff2b 	bl	8006278 <__multiply>
 8006422:	6030      	str	r0, [r6, #0]
 8006424:	f8c0 8000 	str.w	r8, [r0]
 8006428:	4606      	mov	r6, r0
 800642a:	e7e0      	b.n	80063ee <__pow5mult+0x2a>
 800642c:	4605      	mov	r5, r0
 800642e:	e7d9      	b.n	80063e4 <__pow5mult+0x20>
 8006430:	3b01      	subs	r3, #1
 8006432:	4a0b      	ldr	r2, [pc, #44]	; (8006460 <__pow5mult+0x9c>)
 8006434:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006438:	2300      	movs	r3, #0
 800643a:	f7ff fe83 	bl	8006144 <__multadd>
 800643e:	4605      	mov	r5, r0
 8006440:	e7c8      	b.n	80063d4 <__pow5mult+0x10>
 8006442:	2101      	movs	r1, #1
 8006444:	4638      	mov	r0, r7
 8006446:	f7ff fe4d 	bl	80060e4 <_Balloc>
 800644a:	f240 2371 	movw	r3, #625	; 0x271
 800644e:	6143      	str	r3, [r0, #20]
 8006450:	2201      	movs	r2, #1
 8006452:	2300      	movs	r3, #0
 8006454:	6102      	str	r2, [r0, #16]
 8006456:	4606      	mov	r6, r0
 8006458:	64b8      	str	r0, [r7, #72]	; 0x48
 800645a:	6003      	str	r3, [r0, #0]
 800645c:	e7be      	b.n	80063dc <__pow5mult+0x18>
 800645e:	bf00      	nop
 8006460:	080075b8 	.word	0x080075b8

08006464 <__lshift>:
 8006464:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006468:	4691      	mov	r9, r2
 800646a:	690a      	ldr	r2, [r1, #16]
 800646c:	460e      	mov	r6, r1
 800646e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006472:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006476:	eb04 0802 	add.w	r8, r4, r2
 800647a:	f108 0501 	add.w	r5, r8, #1
 800647e:	429d      	cmp	r5, r3
 8006480:	4607      	mov	r7, r0
 8006482:	dd04      	ble.n	800648e <__lshift+0x2a>
 8006484:	005b      	lsls	r3, r3, #1
 8006486:	429d      	cmp	r5, r3
 8006488:	f101 0101 	add.w	r1, r1, #1
 800648c:	dcfa      	bgt.n	8006484 <__lshift+0x20>
 800648e:	4638      	mov	r0, r7
 8006490:	f7ff fe28 	bl	80060e4 <_Balloc>
 8006494:	2c00      	cmp	r4, #0
 8006496:	f100 0314 	add.w	r3, r0, #20
 800649a:	dd37      	ble.n	800650c <__lshift+0xa8>
 800649c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80064a0:	2200      	movs	r2, #0
 80064a2:	f843 2b04 	str.w	r2, [r3], #4
 80064a6:	428b      	cmp	r3, r1
 80064a8:	d1fb      	bne.n	80064a2 <__lshift+0x3e>
 80064aa:	6934      	ldr	r4, [r6, #16]
 80064ac:	f106 0314 	add.w	r3, r6, #20
 80064b0:	f019 091f 	ands.w	r9, r9, #31
 80064b4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80064b8:	d020      	beq.n	80064fc <__lshift+0x98>
 80064ba:	f1c9 0e20 	rsb	lr, r9, #32
 80064be:	2200      	movs	r2, #0
 80064c0:	e000      	b.n	80064c4 <__lshift+0x60>
 80064c2:	4651      	mov	r1, sl
 80064c4:	681c      	ldr	r4, [r3, #0]
 80064c6:	468a      	mov	sl, r1
 80064c8:	fa04 f409 	lsl.w	r4, r4, r9
 80064cc:	4314      	orrs	r4, r2
 80064ce:	f84a 4b04 	str.w	r4, [sl], #4
 80064d2:	f853 2b04 	ldr.w	r2, [r3], #4
 80064d6:	4563      	cmp	r3, ip
 80064d8:	fa22 f20e 	lsr.w	r2, r2, lr
 80064dc:	d3f1      	bcc.n	80064c2 <__lshift+0x5e>
 80064de:	604a      	str	r2, [r1, #4]
 80064e0:	b10a      	cbz	r2, 80064e6 <__lshift+0x82>
 80064e2:	f108 0502 	add.w	r5, r8, #2
 80064e6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80064e8:	6872      	ldr	r2, [r6, #4]
 80064ea:	3d01      	subs	r5, #1
 80064ec:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80064f0:	6105      	str	r5, [r0, #16]
 80064f2:	6031      	str	r1, [r6, #0]
 80064f4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80064f8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80064fc:	3904      	subs	r1, #4
 80064fe:	f853 2b04 	ldr.w	r2, [r3], #4
 8006502:	f841 2f04 	str.w	r2, [r1, #4]!
 8006506:	459c      	cmp	ip, r3
 8006508:	d8f9      	bhi.n	80064fe <__lshift+0x9a>
 800650a:	e7ec      	b.n	80064e6 <__lshift+0x82>
 800650c:	4619      	mov	r1, r3
 800650e:	e7cc      	b.n	80064aa <__lshift+0x46>

08006510 <__mcmp>:
 8006510:	b430      	push	{r4, r5}
 8006512:	690b      	ldr	r3, [r1, #16]
 8006514:	4605      	mov	r5, r0
 8006516:	6900      	ldr	r0, [r0, #16]
 8006518:	1ac0      	subs	r0, r0, r3
 800651a:	d10f      	bne.n	800653c <__mcmp+0x2c>
 800651c:	009b      	lsls	r3, r3, #2
 800651e:	3514      	adds	r5, #20
 8006520:	3114      	adds	r1, #20
 8006522:	4419      	add	r1, r3
 8006524:	442b      	add	r3, r5
 8006526:	e001      	b.n	800652c <__mcmp+0x1c>
 8006528:	429d      	cmp	r5, r3
 800652a:	d207      	bcs.n	800653c <__mcmp+0x2c>
 800652c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006530:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006534:	4294      	cmp	r4, r2
 8006536:	d0f7      	beq.n	8006528 <__mcmp+0x18>
 8006538:	d302      	bcc.n	8006540 <__mcmp+0x30>
 800653a:	2001      	movs	r0, #1
 800653c:	bc30      	pop	{r4, r5}
 800653e:	4770      	bx	lr
 8006540:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006544:	e7fa      	b.n	800653c <__mcmp+0x2c>
 8006546:	bf00      	nop

08006548 <__mdiff>:
 8006548:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800654c:	6913      	ldr	r3, [r2, #16]
 800654e:	690d      	ldr	r5, [r1, #16]
 8006550:	1aed      	subs	r5, r5, r3
 8006552:	2d00      	cmp	r5, #0
 8006554:	460e      	mov	r6, r1
 8006556:	4690      	mov	r8, r2
 8006558:	f101 0414 	add.w	r4, r1, #20
 800655c:	f102 0714 	add.w	r7, r2, #20
 8006560:	d114      	bne.n	800658c <__mdiff+0x44>
 8006562:	009b      	lsls	r3, r3, #2
 8006564:	18e2      	adds	r2, r4, r3
 8006566:	443b      	add	r3, r7
 8006568:	e001      	b.n	800656e <__mdiff+0x26>
 800656a:	42a2      	cmp	r2, r4
 800656c:	d959      	bls.n	8006622 <__mdiff+0xda>
 800656e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006572:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006576:	458c      	cmp	ip, r1
 8006578:	d0f7      	beq.n	800656a <__mdiff+0x22>
 800657a:	d209      	bcs.n	8006590 <__mdiff+0x48>
 800657c:	4622      	mov	r2, r4
 800657e:	4633      	mov	r3, r6
 8006580:	463c      	mov	r4, r7
 8006582:	4646      	mov	r6, r8
 8006584:	4617      	mov	r7, r2
 8006586:	4698      	mov	r8, r3
 8006588:	2501      	movs	r5, #1
 800658a:	e001      	b.n	8006590 <__mdiff+0x48>
 800658c:	dbf6      	blt.n	800657c <__mdiff+0x34>
 800658e:	2500      	movs	r5, #0
 8006590:	6871      	ldr	r1, [r6, #4]
 8006592:	f7ff fda7 	bl	80060e4 <_Balloc>
 8006596:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800659a:	6936      	ldr	r6, [r6, #16]
 800659c:	60c5      	str	r5, [r0, #12]
 800659e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80065a2:	46bc      	mov	ip, r7
 80065a4:	f100 0514 	add.w	r5, r0, #20
 80065a8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80065ac:	2300      	movs	r3, #0
 80065ae:	f85c 1b04 	ldr.w	r1, [ip], #4
 80065b2:	f854 8b04 	ldr.w	r8, [r4], #4
 80065b6:	b28a      	uxth	r2, r1
 80065b8:	fa13 f388 	uxtah	r3, r3, r8
 80065bc:	0c09      	lsrs	r1, r1, #16
 80065be:	1a9a      	subs	r2, r3, r2
 80065c0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80065c4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80065c8:	b292      	uxth	r2, r2
 80065ca:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80065ce:	45e6      	cmp	lr, ip
 80065d0:	f845 2b04 	str.w	r2, [r5], #4
 80065d4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80065d8:	d8e9      	bhi.n	80065ae <__mdiff+0x66>
 80065da:	42a7      	cmp	r7, r4
 80065dc:	d917      	bls.n	800660e <__mdiff+0xc6>
 80065de:	46ae      	mov	lr, r5
 80065e0:	46a4      	mov	ip, r4
 80065e2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80065e6:	fa13 f382 	uxtah	r3, r3, r2
 80065ea:	1419      	asrs	r1, r3, #16
 80065ec:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80065f0:	b29b      	uxth	r3, r3
 80065f2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80065f6:	4567      	cmp	r7, ip
 80065f8:	f84e 2b04 	str.w	r2, [lr], #4
 80065fc:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006600:	d8ef      	bhi.n	80065e2 <__mdiff+0x9a>
 8006602:	43e4      	mvns	r4, r4
 8006604:	4427      	add	r7, r4
 8006606:	f027 0703 	bic.w	r7, r7, #3
 800660a:	3704      	adds	r7, #4
 800660c:	443d      	add	r5, r7
 800660e:	3d04      	subs	r5, #4
 8006610:	b922      	cbnz	r2, 800661c <__mdiff+0xd4>
 8006612:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006616:	3e01      	subs	r6, #1
 8006618:	2b00      	cmp	r3, #0
 800661a:	d0fa      	beq.n	8006612 <__mdiff+0xca>
 800661c:	6106      	str	r6, [r0, #16]
 800661e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006622:	2100      	movs	r1, #0
 8006624:	f7ff fd5e 	bl	80060e4 <_Balloc>
 8006628:	2201      	movs	r2, #1
 800662a:	2300      	movs	r3, #0
 800662c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006630:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006634 <__d2b>:
 8006634:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006638:	460f      	mov	r7, r1
 800663a:	b083      	sub	sp, #12
 800663c:	2101      	movs	r1, #1
 800663e:	ec55 4b10 	vmov	r4, r5, d0
 8006642:	4616      	mov	r6, r2
 8006644:	f7ff fd4e 	bl	80060e4 <_Balloc>
 8006648:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800664c:	4681      	mov	r9, r0
 800664e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006652:	f1b8 0f00 	cmp.w	r8, #0
 8006656:	d001      	beq.n	800665c <__d2b+0x28>
 8006658:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800665c:	2c00      	cmp	r4, #0
 800665e:	9301      	str	r3, [sp, #4]
 8006660:	d024      	beq.n	80066ac <__d2b+0x78>
 8006662:	a802      	add	r0, sp, #8
 8006664:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006668:	f7ff fdcc 	bl	8006204 <__lo0bits>
 800666c:	2800      	cmp	r0, #0
 800666e:	d136      	bne.n	80066de <__d2b+0xaa>
 8006670:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006674:	f8c9 2014 	str.w	r2, [r9, #20]
 8006678:	2b00      	cmp	r3, #0
 800667a:	bf0c      	ite	eq
 800667c:	2101      	moveq	r1, #1
 800667e:	2102      	movne	r1, #2
 8006680:	f8c9 3018 	str.w	r3, [r9, #24]
 8006684:	f8c9 1010 	str.w	r1, [r9, #16]
 8006688:	f1b8 0f00 	cmp.w	r8, #0
 800668c:	d11b      	bne.n	80066c6 <__d2b+0x92>
 800668e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006692:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006696:	6038      	str	r0, [r7, #0]
 8006698:	6918      	ldr	r0, [r3, #16]
 800669a:	f7ff fd93 	bl	80061c4 <__hi0bits>
 800669e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80066a2:	6030      	str	r0, [r6, #0]
 80066a4:	4648      	mov	r0, r9
 80066a6:	b003      	add	sp, #12
 80066a8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80066ac:	a801      	add	r0, sp, #4
 80066ae:	f7ff fda9 	bl	8006204 <__lo0bits>
 80066b2:	9b01      	ldr	r3, [sp, #4]
 80066b4:	f8c9 3014 	str.w	r3, [r9, #20]
 80066b8:	2101      	movs	r1, #1
 80066ba:	3020      	adds	r0, #32
 80066bc:	f8c9 1010 	str.w	r1, [r9, #16]
 80066c0:	f1b8 0f00 	cmp.w	r8, #0
 80066c4:	d0e3      	beq.n	800668e <__d2b+0x5a>
 80066c6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80066ca:	eb08 0300 	add.w	r3, r8, r0
 80066ce:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80066d2:	603b      	str	r3, [r7, #0]
 80066d4:	6030      	str	r0, [r6, #0]
 80066d6:	4648      	mov	r0, r9
 80066d8:	b003      	add	sp, #12
 80066da:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80066de:	e9dd 1300 	ldrd	r1, r3, [sp]
 80066e2:	f1c0 0220 	rsb	r2, r0, #32
 80066e6:	fa03 f202 	lsl.w	r2, r3, r2
 80066ea:	430a      	orrs	r2, r1
 80066ec:	40c3      	lsrs	r3, r0
 80066ee:	9301      	str	r3, [sp, #4]
 80066f0:	f8c9 2014 	str.w	r2, [r9, #20]
 80066f4:	e7c0      	b.n	8006678 <__d2b+0x44>
 80066f6:	bf00      	nop

080066f8 <_realloc_r>:
 80066f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066fc:	4692      	mov	sl, r2
 80066fe:	b083      	sub	sp, #12
 8006700:	2900      	cmp	r1, #0
 8006702:	f000 80a1 	beq.w	8006848 <_realloc_r+0x150>
 8006706:	460d      	mov	r5, r1
 8006708:	4680      	mov	r8, r0
 800670a:	f10a 040b 	add.w	r4, sl, #11
 800670e:	f7fc f991 	bl	8002a34 <__malloc_lock>
 8006712:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006716:	2c16      	cmp	r4, #22
 8006718:	f022 0603 	bic.w	r6, r2, #3
 800671c:	f1a5 0708 	sub.w	r7, r5, #8
 8006720:	d83e      	bhi.n	80067a0 <_realloc_r+0xa8>
 8006722:	2410      	movs	r4, #16
 8006724:	4621      	mov	r1, r4
 8006726:	45a2      	cmp	sl, r4
 8006728:	d83f      	bhi.n	80067aa <_realloc_r+0xb2>
 800672a:	428e      	cmp	r6, r1
 800672c:	eb07 0906 	add.w	r9, r7, r6
 8006730:	da74      	bge.n	800681c <_realloc_r+0x124>
 8006732:	4bc7      	ldr	r3, [pc, #796]	; (8006a50 <_realloc_r+0x358>)
 8006734:	6898      	ldr	r0, [r3, #8]
 8006736:	4548      	cmp	r0, r9
 8006738:	f000 80aa 	beq.w	8006890 <_realloc_r+0x198>
 800673c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006740:	f020 0301 	bic.w	r3, r0, #1
 8006744:	444b      	add	r3, r9
 8006746:	685b      	ldr	r3, [r3, #4]
 8006748:	07db      	lsls	r3, r3, #31
 800674a:	f140 8083 	bpl.w	8006854 <_realloc_r+0x15c>
 800674e:	07d2      	lsls	r2, r2, #31
 8006750:	d534      	bpl.n	80067bc <_realloc_r+0xc4>
 8006752:	4651      	mov	r1, sl
 8006754:	4640      	mov	r0, r8
 8006756:	f7fb fe7f 	bl	8002458 <_malloc_r>
 800675a:	4682      	mov	sl, r0
 800675c:	b1e0      	cbz	r0, 8006798 <_realloc_r+0xa0>
 800675e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006762:	f023 0301 	bic.w	r3, r3, #1
 8006766:	443b      	add	r3, r7
 8006768:	f1a0 0208 	sub.w	r2, r0, #8
 800676c:	4293      	cmp	r3, r2
 800676e:	f000 80f9 	beq.w	8006964 <_realloc_r+0x26c>
 8006772:	1f32      	subs	r2, r6, #4
 8006774:	2a24      	cmp	r2, #36	; 0x24
 8006776:	f200 8107 	bhi.w	8006988 <_realloc_r+0x290>
 800677a:	2a13      	cmp	r2, #19
 800677c:	6829      	ldr	r1, [r5, #0]
 800677e:	f200 80e6 	bhi.w	800694e <_realloc_r+0x256>
 8006782:	4603      	mov	r3, r0
 8006784:	462a      	mov	r2, r5
 8006786:	6019      	str	r1, [r3, #0]
 8006788:	6851      	ldr	r1, [r2, #4]
 800678a:	6059      	str	r1, [r3, #4]
 800678c:	6892      	ldr	r2, [r2, #8]
 800678e:	609a      	str	r2, [r3, #8]
 8006790:	4629      	mov	r1, r5
 8006792:	4640      	mov	r0, r8
 8006794:	f7ff f918 	bl	80059c8 <_free_r>
 8006798:	4640      	mov	r0, r8
 800679a:	f7fc f951 	bl	8002a40 <__malloc_unlock>
 800679e:	e04f      	b.n	8006840 <_realloc_r+0x148>
 80067a0:	f024 0407 	bic.w	r4, r4, #7
 80067a4:	2c00      	cmp	r4, #0
 80067a6:	4621      	mov	r1, r4
 80067a8:	dabd      	bge.n	8006726 <_realloc_r+0x2e>
 80067aa:	f04f 0a00 	mov.w	sl, #0
 80067ae:	230c      	movs	r3, #12
 80067b0:	4650      	mov	r0, sl
 80067b2:	f8c8 3000 	str.w	r3, [r8]
 80067b6:	b003      	add	sp, #12
 80067b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80067bc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067c0:	eba7 0b03 	sub.w	fp, r7, r3
 80067c4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067c8:	f022 0203 	bic.w	r2, r2, #3
 80067cc:	18b3      	adds	r3, r6, r2
 80067ce:	428b      	cmp	r3, r1
 80067d0:	dbbf      	blt.n	8006752 <_realloc_r+0x5a>
 80067d2:	46da      	mov	sl, fp
 80067d4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80067d8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80067dc:	1f32      	subs	r2, r6, #4
 80067de:	2a24      	cmp	r2, #36	; 0x24
 80067e0:	60c1      	str	r1, [r0, #12]
 80067e2:	eb0b 0903 	add.w	r9, fp, r3
 80067e6:	6088      	str	r0, [r1, #8]
 80067e8:	f200 80c6 	bhi.w	8006978 <_realloc_r+0x280>
 80067ec:	2a13      	cmp	r2, #19
 80067ee:	6829      	ldr	r1, [r5, #0]
 80067f0:	f240 80c0 	bls.w	8006974 <_realloc_r+0x27c>
 80067f4:	f8cb 1008 	str.w	r1, [fp, #8]
 80067f8:	6869      	ldr	r1, [r5, #4]
 80067fa:	f8cb 100c 	str.w	r1, [fp, #12]
 80067fe:	2a1b      	cmp	r2, #27
 8006800:	68a9      	ldr	r1, [r5, #8]
 8006802:	f200 80d8 	bhi.w	80069b6 <_realloc_r+0x2be>
 8006806:	f10b 0210 	add.w	r2, fp, #16
 800680a:	3508      	adds	r5, #8
 800680c:	6011      	str	r1, [r2, #0]
 800680e:	6869      	ldr	r1, [r5, #4]
 8006810:	6051      	str	r1, [r2, #4]
 8006812:	68a9      	ldr	r1, [r5, #8]
 8006814:	6091      	str	r1, [r2, #8]
 8006816:	461e      	mov	r6, r3
 8006818:	465f      	mov	r7, fp
 800681a:	4655      	mov	r5, sl
 800681c:	687b      	ldr	r3, [r7, #4]
 800681e:	1b32      	subs	r2, r6, r4
 8006820:	2a0f      	cmp	r2, #15
 8006822:	f003 0301 	and.w	r3, r3, #1
 8006826:	d822      	bhi.n	800686e <_realloc_r+0x176>
 8006828:	4333      	orrs	r3, r6
 800682a:	607b      	str	r3, [r7, #4]
 800682c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006830:	f043 0301 	orr.w	r3, r3, #1
 8006834:	f8c9 3004 	str.w	r3, [r9, #4]
 8006838:	4640      	mov	r0, r8
 800683a:	f7fc f901 	bl	8002a40 <__malloc_unlock>
 800683e:	46aa      	mov	sl, r5
 8006840:	4650      	mov	r0, sl
 8006842:	b003      	add	sp, #12
 8006844:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006848:	4611      	mov	r1, r2
 800684a:	b003      	add	sp, #12
 800684c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006850:	f7fb be02 	b.w	8002458 <_malloc_r>
 8006854:	f020 0003 	bic.w	r0, r0, #3
 8006858:	1833      	adds	r3, r6, r0
 800685a:	428b      	cmp	r3, r1
 800685c:	db61      	blt.n	8006922 <_realloc_r+0x22a>
 800685e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006862:	461e      	mov	r6, r3
 8006864:	60ca      	str	r2, [r1, #12]
 8006866:	eb07 0903 	add.w	r9, r7, r3
 800686a:	6091      	str	r1, [r2, #8]
 800686c:	e7d6      	b.n	800681c <_realloc_r+0x124>
 800686e:	1939      	adds	r1, r7, r4
 8006870:	4323      	orrs	r3, r4
 8006872:	f042 0201 	orr.w	r2, r2, #1
 8006876:	607b      	str	r3, [r7, #4]
 8006878:	604a      	str	r2, [r1, #4]
 800687a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800687e:	f043 0301 	orr.w	r3, r3, #1
 8006882:	3108      	adds	r1, #8
 8006884:	f8c9 3004 	str.w	r3, [r9, #4]
 8006888:	4640      	mov	r0, r8
 800688a:	f7ff f89d 	bl	80059c8 <_free_r>
 800688e:	e7d3      	b.n	8006838 <_realloc_r+0x140>
 8006890:	6840      	ldr	r0, [r0, #4]
 8006892:	f020 0903 	bic.w	r9, r0, #3
 8006896:	44b1      	add	r9, r6
 8006898:	f104 0010 	add.w	r0, r4, #16
 800689c:	4581      	cmp	r9, r0
 800689e:	da77      	bge.n	8006990 <_realloc_r+0x298>
 80068a0:	07d2      	lsls	r2, r2, #31
 80068a2:	f53f af56 	bmi.w	8006752 <_realloc_r+0x5a>
 80068a6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80068aa:	eba7 0b02 	sub.w	fp, r7, r2
 80068ae:	f8db 2004 	ldr.w	r2, [fp, #4]
 80068b2:	f022 0203 	bic.w	r2, r2, #3
 80068b6:	4491      	add	r9, r2
 80068b8:	4548      	cmp	r0, r9
 80068ba:	dc87      	bgt.n	80067cc <_realloc_r+0xd4>
 80068bc:	46da      	mov	sl, fp
 80068be:	f8db 100c 	ldr.w	r1, [fp, #12]
 80068c2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80068c6:	1f32      	subs	r2, r6, #4
 80068c8:	2a24      	cmp	r2, #36	; 0x24
 80068ca:	60c1      	str	r1, [r0, #12]
 80068cc:	6088      	str	r0, [r1, #8]
 80068ce:	f200 80a1 	bhi.w	8006a14 <_realloc_r+0x31c>
 80068d2:	2a13      	cmp	r2, #19
 80068d4:	6829      	ldr	r1, [r5, #0]
 80068d6:	f240 809b 	bls.w	8006a10 <_realloc_r+0x318>
 80068da:	f8cb 1008 	str.w	r1, [fp, #8]
 80068de:	6869      	ldr	r1, [r5, #4]
 80068e0:	f8cb 100c 	str.w	r1, [fp, #12]
 80068e4:	2a1b      	cmp	r2, #27
 80068e6:	68a9      	ldr	r1, [r5, #8]
 80068e8:	f200 809b 	bhi.w	8006a22 <_realloc_r+0x32a>
 80068ec:	f10b 0210 	add.w	r2, fp, #16
 80068f0:	3508      	adds	r5, #8
 80068f2:	6011      	str	r1, [r2, #0]
 80068f4:	6869      	ldr	r1, [r5, #4]
 80068f6:	6051      	str	r1, [r2, #4]
 80068f8:	68a9      	ldr	r1, [r5, #8]
 80068fa:	6091      	str	r1, [r2, #8]
 80068fc:	eb0b 0104 	add.w	r1, fp, r4
 8006900:	eba9 0204 	sub.w	r2, r9, r4
 8006904:	f042 0201 	orr.w	r2, r2, #1
 8006908:	6099      	str	r1, [r3, #8]
 800690a:	604a      	str	r2, [r1, #4]
 800690c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006910:	f003 0301 	and.w	r3, r3, #1
 8006914:	431c      	orrs	r4, r3
 8006916:	4640      	mov	r0, r8
 8006918:	f8cb 4004 	str.w	r4, [fp, #4]
 800691c:	f7fc f890 	bl	8002a40 <__malloc_unlock>
 8006920:	e78e      	b.n	8006840 <_realloc_r+0x148>
 8006922:	07d3      	lsls	r3, r2, #31
 8006924:	f53f af15 	bmi.w	8006752 <_realloc_r+0x5a>
 8006928:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800692c:	eba7 0b03 	sub.w	fp, r7, r3
 8006930:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006934:	f022 0203 	bic.w	r2, r2, #3
 8006938:	4410      	add	r0, r2
 800693a:	1983      	adds	r3, r0, r6
 800693c:	428b      	cmp	r3, r1
 800693e:	f6ff af45 	blt.w	80067cc <_realloc_r+0xd4>
 8006942:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006946:	46da      	mov	sl, fp
 8006948:	60ca      	str	r2, [r1, #12]
 800694a:	6091      	str	r1, [r2, #8]
 800694c:	e742      	b.n	80067d4 <_realloc_r+0xdc>
 800694e:	6001      	str	r1, [r0, #0]
 8006950:	686b      	ldr	r3, [r5, #4]
 8006952:	6043      	str	r3, [r0, #4]
 8006954:	2a1b      	cmp	r2, #27
 8006956:	d83a      	bhi.n	80069ce <_realloc_r+0x2d6>
 8006958:	f105 0208 	add.w	r2, r5, #8
 800695c:	f100 0308 	add.w	r3, r0, #8
 8006960:	68a9      	ldr	r1, [r5, #8]
 8006962:	e710      	b.n	8006786 <_realloc_r+0x8e>
 8006964:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006968:	f023 0303 	bic.w	r3, r3, #3
 800696c:	441e      	add	r6, r3
 800696e:	eb07 0906 	add.w	r9, r7, r6
 8006972:	e753      	b.n	800681c <_realloc_r+0x124>
 8006974:	4652      	mov	r2, sl
 8006976:	e749      	b.n	800680c <_realloc_r+0x114>
 8006978:	4629      	mov	r1, r5
 800697a:	4650      	mov	r0, sl
 800697c:	461e      	mov	r6, r3
 800697e:	465f      	mov	r7, fp
 8006980:	f7ff fb4c 	bl	800601c <memmove>
 8006984:	4655      	mov	r5, sl
 8006986:	e749      	b.n	800681c <_realloc_r+0x124>
 8006988:	4629      	mov	r1, r5
 800698a:	f7ff fb47 	bl	800601c <memmove>
 800698e:	e6ff      	b.n	8006790 <_realloc_r+0x98>
 8006990:	4427      	add	r7, r4
 8006992:	eba9 0904 	sub.w	r9, r9, r4
 8006996:	f049 0201 	orr.w	r2, r9, #1
 800699a:	609f      	str	r7, [r3, #8]
 800699c:	607a      	str	r2, [r7, #4]
 800699e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80069a2:	f003 0301 	and.w	r3, r3, #1
 80069a6:	431c      	orrs	r4, r3
 80069a8:	4640      	mov	r0, r8
 80069aa:	f845 4c04 	str.w	r4, [r5, #-4]
 80069ae:	f7fc f847 	bl	8002a40 <__malloc_unlock>
 80069b2:	46aa      	mov	sl, r5
 80069b4:	e744      	b.n	8006840 <_realloc_r+0x148>
 80069b6:	f8cb 1010 	str.w	r1, [fp, #16]
 80069ba:	68e9      	ldr	r1, [r5, #12]
 80069bc:	f8cb 1014 	str.w	r1, [fp, #20]
 80069c0:	2a24      	cmp	r2, #36	; 0x24
 80069c2:	d010      	beq.n	80069e6 <_realloc_r+0x2ee>
 80069c4:	6929      	ldr	r1, [r5, #16]
 80069c6:	f10b 0218 	add.w	r2, fp, #24
 80069ca:	3510      	adds	r5, #16
 80069cc:	e71e      	b.n	800680c <_realloc_r+0x114>
 80069ce:	68ab      	ldr	r3, [r5, #8]
 80069d0:	6083      	str	r3, [r0, #8]
 80069d2:	68eb      	ldr	r3, [r5, #12]
 80069d4:	60c3      	str	r3, [r0, #12]
 80069d6:	2a24      	cmp	r2, #36	; 0x24
 80069d8:	d010      	beq.n	80069fc <_realloc_r+0x304>
 80069da:	f105 0210 	add.w	r2, r5, #16
 80069de:	f100 0310 	add.w	r3, r0, #16
 80069e2:	6929      	ldr	r1, [r5, #16]
 80069e4:	e6cf      	b.n	8006786 <_realloc_r+0x8e>
 80069e6:	692a      	ldr	r2, [r5, #16]
 80069e8:	f8cb 2018 	str.w	r2, [fp, #24]
 80069ec:	696a      	ldr	r2, [r5, #20]
 80069ee:	f8cb 201c 	str.w	r2, [fp, #28]
 80069f2:	69a9      	ldr	r1, [r5, #24]
 80069f4:	f10b 0220 	add.w	r2, fp, #32
 80069f8:	3518      	adds	r5, #24
 80069fa:	e707      	b.n	800680c <_realloc_r+0x114>
 80069fc:	692b      	ldr	r3, [r5, #16]
 80069fe:	6103      	str	r3, [r0, #16]
 8006a00:	696b      	ldr	r3, [r5, #20]
 8006a02:	6143      	str	r3, [r0, #20]
 8006a04:	69a9      	ldr	r1, [r5, #24]
 8006a06:	f105 0218 	add.w	r2, r5, #24
 8006a0a:	f100 0318 	add.w	r3, r0, #24
 8006a0e:	e6ba      	b.n	8006786 <_realloc_r+0x8e>
 8006a10:	4652      	mov	r2, sl
 8006a12:	e76e      	b.n	80068f2 <_realloc_r+0x1fa>
 8006a14:	4629      	mov	r1, r5
 8006a16:	4650      	mov	r0, sl
 8006a18:	9301      	str	r3, [sp, #4]
 8006a1a:	f7ff faff 	bl	800601c <memmove>
 8006a1e:	9b01      	ldr	r3, [sp, #4]
 8006a20:	e76c      	b.n	80068fc <_realloc_r+0x204>
 8006a22:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a26:	68e9      	ldr	r1, [r5, #12]
 8006a28:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a2c:	2a24      	cmp	r2, #36	; 0x24
 8006a2e:	d004      	beq.n	8006a3a <_realloc_r+0x342>
 8006a30:	6929      	ldr	r1, [r5, #16]
 8006a32:	f10b 0218 	add.w	r2, fp, #24
 8006a36:	3510      	adds	r5, #16
 8006a38:	e75b      	b.n	80068f2 <_realloc_r+0x1fa>
 8006a3a:	692a      	ldr	r2, [r5, #16]
 8006a3c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006a40:	696a      	ldr	r2, [r5, #20]
 8006a42:	f8cb 201c 	str.w	r2, [fp, #28]
 8006a46:	69a9      	ldr	r1, [r5, #24]
 8006a48:	f10b 0220 	add.w	r2, fp, #32
 8006a4c:	3518      	adds	r5, #24
 8006a4e:	e750      	b.n	80068f2 <_realloc_r+0x1fa>
 8006a50:	200005d8 	.word	0x200005d8

08006a54 <frexp>:
 8006a54:	ec53 2b10 	vmov	r2, r3, d0
 8006a58:	b570      	push	{r4, r5, r6, lr}
 8006a5a:	4e16      	ldr	r6, [pc, #88]	; (8006ab4 <frexp+0x60>)
 8006a5c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006a60:	2500      	movs	r5, #0
 8006a62:	42b1      	cmp	r1, r6
 8006a64:	4604      	mov	r4, r0
 8006a66:	6005      	str	r5, [r0, #0]
 8006a68:	dc21      	bgt.n	8006aae <frexp+0x5a>
 8006a6a:	ee10 6a10 	vmov	r6, s0
 8006a6e:	430e      	orrs	r6, r1
 8006a70:	d01d      	beq.n	8006aae <frexp+0x5a>
 8006a72:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006a76:	4618      	mov	r0, r3
 8006a78:	da0c      	bge.n	8006a94 <frexp+0x40>
 8006a7a:	4619      	mov	r1, r3
 8006a7c:	2200      	movs	r2, #0
 8006a7e:	ee10 0a10 	vmov	r0, s0
 8006a82:	4b0d      	ldr	r3, [pc, #52]	; (8006ab8 <frexp+0x64>)
 8006a84:	f7fa f858 	bl	8000b38 <__aeabi_dmul>
 8006a88:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006a8c:	4602      	mov	r2, r0
 8006a8e:	4608      	mov	r0, r1
 8006a90:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006a94:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006a98:	1509      	asrs	r1, r1, #20
 8006a9a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006a9e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006aa2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006aa6:	4429      	add	r1, r5
 8006aa8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006aac:	6021      	str	r1, [r4, #0]
 8006aae:	ec43 2b10 	vmov	d0, r2, r3
 8006ab2:	bd70      	pop	{r4, r5, r6, pc}
 8006ab4:	7fefffff 	.word	0x7fefffff
 8006ab8:	43500000 	.word	0x43500000

08006abc <__sread>:
 8006abc:	b510      	push	{r4, lr}
 8006abe:	460c      	mov	r4, r1
 8006ac0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006ac4:	f000 fabc 	bl	8007040 <_read_r>
 8006ac8:	2800      	cmp	r0, #0
 8006aca:	db03      	blt.n	8006ad4 <__sread+0x18>
 8006acc:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006ace:	4403      	add	r3, r0
 8006ad0:	6523      	str	r3, [r4, #80]	; 0x50
 8006ad2:	bd10      	pop	{r4, pc}
 8006ad4:	89a3      	ldrh	r3, [r4, #12]
 8006ad6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006ada:	81a3      	strh	r3, [r4, #12]
 8006adc:	bd10      	pop	{r4, pc}
 8006ade:	bf00      	nop

08006ae0 <__swrite>:
 8006ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006ae4:	4616      	mov	r6, r2
 8006ae6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006aea:	461f      	mov	r7, r3
 8006aec:	05d3      	lsls	r3, r2, #23
 8006aee:	460c      	mov	r4, r1
 8006af0:	4605      	mov	r5, r0
 8006af2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006af6:	d507      	bpl.n	8006b08 <__swrite+0x28>
 8006af8:	2200      	movs	r2, #0
 8006afa:	2302      	movs	r3, #2
 8006afc:	f000 fa74 	bl	8006fe8 <_lseek_r>
 8006b00:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006b04:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006b08:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006b0c:	81a2      	strh	r2, [r4, #12]
 8006b0e:	463b      	mov	r3, r7
 8006b10:	4632      	mov	r2, r6
 8006b12:	4628      	mov	r0, r5
 8006b14:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006b18:	f000 b88c 	b.w	8006c34 <_write_r>

08006b1c <__sseek>:
 8006b1c:	b510      	push	{r4, lr}
 8006b1e:	460c      	mov	r4, r1
 8006b20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b24:	f000 fa60 	bl	8006fe8 <_lseek_r>
 8006b28:	89a3      	ldrh	r3, [r4, #12]
 8006b2a:	1c42      	adds	r2, r0, #1
 8006b2c:	bf0e      	itee	eq
 8006b2e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006b32:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006b36:	6520      	strne	r0, [r4, #80]	; 0x50
 8006b38:	81a3      	strh	r3, [r4, #12]
 8006b3a:	bd10      	pop	{r4, pc}

08006b3c <__sclose>:
 8006b3c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b40:	f000 b922 	b.w	8006d88 <_close_r>

08006b44 <strncpy>:
 8006b44:	ea40 0301 	orr.w	r3, r0, r1
 8006b48:	079b      	lsls	r3, r3, #30
 8006b4a:	b470      	push	{r4, r5, r6}
 8006b4c:	d12a      	bne.n	8006ba4 <strncpy+0x60>
 8006b4e:	2a03      	cmp	r2, #3
 8006b50:	d928      	bls.n	8006ba4 <strncpy+0x60>
 8006b52:	460c      	mov	r4, r1
 8006b54:	4603      	mov	r3, r0
 8006b56:	4621      	mov	r1, r4
 8006b58:	f854 6b04 	ldr.w	r6, [r4], #4
 8006b5c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006b60:	ea25 0506 	bic.w	r5, r5, r6
 8006b64:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006b68:	d106      	bne.n	8006b78 <strncpy+0x34>
 8006b6a:	3a04      	subs	r2, #4
 8006b6c:	2a03      	cmp	r2, #3
 8006b6e:	f843 6b04 	str.w	r6, [r3], #4
 8006b72:	4621      	mov	r1, r4
 8006b74:	d8ef      	bhi.n	8006b56 <strncpy+0x12>
 8006b76:	b19a      	cbz	r2, 8006ba0 <strncpy+0x5c>
 8006b78:	780c      	ldrb	r4, [r1, #0]
 8006b7a:	701c      	strb	r4, [r3, #0]
 8006b7c:	3a01      	subs	r2, #1
 8006b7e:	3301      	adds	r3, #1
 8006b80:	b13c      	cbz	r4, 8006b92 <strncpy+0x4e>
 8006b82:	b16a      	cbz	r2, 8006ba0 <strncpy+0x5c>
 8006b84:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006b88:	f803 4b01 	strb.w	r4, [r3], #1
 8006b8c:	3a01      	subs	r2, #1
 8006b8e:	2c00      	cmp	r4, #0
 8006b90:	d1f7      	bne.n	8006b82 <strncpy+0x3e>
 8006b92:	b12a      	cbz	r2, 8006ba0 <strncpy+0x5c>
 8006b94:	441a      	add	r2, r3
 8006b96:	2100      	movs	r1, #0
 8006b98:	f803 1b01 	strb.w	r1, [r3], #1
 8006b9c:	4293      	cmp	r3, r2
 8006b9e:	d1fb      	bne.n	8006b98 <strncpy+0x54>
 8006ba0:	bc70      	pop	{r4, r5, r6}
 8006ba2:	4770      	bx	lr
 8006ba4:	4603      	mov	r3, r0
 8006ba6:	e7e6      	b.n	8006b76 <strncpy+0x32>

08006ba8 <__sprint_r.part.0>:
 8006ba8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bac:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006bae:	049c      	lsls	r4, r3, #18
 8006bb0:	4692      	mov	sl, r2
 8006bb2:	d52d      	bpl.n	8006c10 <__sprint_r.part.0+0x68>
 8006bb4:	6893      	ldr	r3, [r2, #8]
 8006bb6:	6812      	ldr	r2, [r2, #0]
 8006bb8:	b343      	cbz	r3, 8006c0c <__sprint_r.part.0+0x64>
 8006bba:	460e      	mov	r6, r1
 8006bbc:	4607      	mov	r7, r0
 8006bbe:	f102 0908 	add.w	r9, r2, #8
 8006bc2:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006bc6:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006bca:	d015      	beq.n	8006bf8 <__sprint_r.part.0+0x50>
 8006bcc:	3d04      	subs	r5, #4
 8006bce:	2400      	movs	r4, #0
 8006bd0:	e001      	b.n	8006bd6 <__sprint_r.part.0+0x2e>
 8006bd2:	45a0      	cmp	r8, r4
 8006bd4:	d00e      	beq.n	8006bf4 <__sprint_r.part.0+0x4c>
 8006bd6:	4632      	mov	r2, r6
 8006bd8:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006bdc:	4638      	mov	r0, r7
 8006bde:	f000 f99d 	bl	8006f1c <_fputwc_r>
 8006be2:	1c43      	adds	r3, r0, #1
 8006be4:	f104 0401 	add.w	r4, r4, #1
 8006be8:	d1f3      	bne.n	8006bd2 <__sprint_r.part.0+0x2a>
 8006bea:	2300      	movs	r3, #0
 8006bec:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006bf0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006bf4:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006bf8:	f02b 0b03 	bic.w	fp, fp, #3
 8006bfc:	eba3 030b 	sub.w	r3, r3, fp
 8006c00:	f8ca 3008 	str.w	r3, [sl, #8]
 8006c04:	f109 0908 	add.w	r9, r9, #8
 8006c08:	2b00      	cmp	r3, #0
 8006c0a:	d1da      	bne.n	8006bc2 <__sprint_r.part.0+0x1a>
 8006c0c:	2000      	movs	r0, #0
 8006c0e:	e7ec      	b.n	8006bea <__sprint_r.part.0+0x42>
 8006c10:	f7fe ffce 	bl	8005bb0 <__sfvwrite_r>
 8006c14:	2300      	movs	r3, #0
 8006c16:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c1a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c1e:	bf00      	nop

08006c20 <__sprint_r>:
 8006c20:	6893      	ldr	r3, [r2, #8]
 8006c22:	b10b      	cbz	r3, 8006c28 <__sprint_r+0x8>
 8006c24:	f7ff bfc0 	b.w	8006ba8 <__sprint_r.part.0>
 8006c28:	b410      	push	{r4}
 8006c2a:	4618      	mov	r0, r3
 8006c2c:	6053      	str	r3, [r2, #4]
 8006c2e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006c32:	4770      	bx	lr

08006c34 <_write_r>:
 8006c34:	b570      	push	{r4, r5, r6, lr}
 8006c36:	460d      	mov	r5, r1
 8006c38:	4c08      	ldr	r4, [pc, #32]	; (8006c5c <_write_r+0x28>)
 8006c3a:	4611      	mov	r1, r2
 8006c3c:	4606      	mov	r6, r0
 8006c3e:	461a      	mov	r2, r3
 8006c40:	4628      	mov	r0, r5
 8006c42:	2300      	movs	r3, #0
 8006c44:	6023      	str	r3, [r4, #0]
 8006c46:	f7fb fb3e 	bl	80022c6 <_write>
 8006c4a:	1c43      	adds	r3, r0, #1
 8006c4c:	d000      	beq.n	8006c50 <_write_r+0x1c>
 8006c4e:	bd70      	pop	{r4, r5, r6, pc}
 8006c50:	6823      	ldr	r3, [r4, #0]
 8006c52:	2b00      	cmp	r3, #0
 8006c54:	d0fb      	beq.n	8006c4e <_write_r+0x1a>
 8006c56:	6033      	str	r3, [r6, #0]
 8006c58:	bd70      	pop	{r4, r5, r6, pc}
 8006c5a:	bf00      	nop
 8006c5c:	20000ea0 	.word	0x20000ea0

08006c60 <__register_exitproc>:
 8006c60:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006c64:	4d2b      	ldr	r5, [pc, #172]	; (8006d14 <__register_exitproc+0xb4>)
 8006c66:	4606      	mov	r6, r0
 8006c68:	6828      	ldr	r0, [r5, #0]
 8006c6a:	4698      	mov	r8, r3
 8006c6c:	460f      	mov	r7, r1
 8006c6e:	4691      	mov	r9, r2
 8006c70:	f7ff f958 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8006c74:	4b28      	ldr	r3, [pc, #160]	; (8006d18 <__register_exitproc+0xb8>)
 8006c76:	681c      	ldr	r4, [r3, #0]
 8006c78:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006c7c:	2b00      	cmp	r3, #0
 8006c7e:	d03d      	beq.n	8006cfc <__register_exitproc+0x9c>
 8006c80:	685a      	ldr	r2, [r3, #4]
 8006c82:	2a1f      	cmp	r2, #31
 8006c84:	dc0d      	bgt.n	8006ca2 <__register_exitproc+0x42>
 8006c86:	f102 0c01 	add.w	ip, r2, #1
 8006c8a:	bb16      	cbnz	r6, 8006cd2 <__register_exitproc+0x72>
 8006c8c:	3202      	adds	r2, #2
 8006c8e:	f8c3 c004 	str.w	ip, [r3, #4]
 8006c92:	6828      	ldr	r0, [r5, #0]
 8006c94:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006c98:	f7ff f946 	bl	8005f28 <__retarget_lock_release_recursive>
 8006c9c:	2000      	movs	r0, #0
 8006c9e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006ca2:	4b1e      	ldr	r3, [pc, #120]	; (8006d1c <__register_exitproc+0xbc>)
 8006ca4:	b37b      	cbz	r3, 8006d06 <__register_exitproc+0xa6>
 8006ca6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006caa:	f7fb fbc5 	bl	8002438 <malloc>
 8006cae:	4603      	mov	r3, r0
 8006cb0:	b348      	cbz	r0, 8006d06 <__register_exitproc+0xa6>
 8006cb2:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006cb6:	2100      	movs	r1, #0
 8006cb8:	e9c0 2100 	strd	r2, r1, [r0]
 8006cbc:	f04f 0c01 	mov.w	ip, #1
 8006cc0:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006cc4:	460a      	mov	r2, r1
 8006cc6:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006cca:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006cce:	2e00      	cmp	r6, #0
 8006cd0:	d0dc      	beq.n	8006c8c <__register_exitproc+0x2c>
 8006cd2:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006cd6:	2401      	movs	r4, #1
 8006cd8:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006cdc:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ce0:	4094      	lsls	r4, r2
 8006ce2:	4320      	orrs	r0, r4
 8006ce4:	2e02      	cmp	r6, #2
 8006ce6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006cea:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006cee:	d1cd      	bne.n	8006c8c <__register_exitproc+0x2c>
 8006cf0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006cf4:	430c      	orrs	r4, r1
 8006cf6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006cfa:	e7c7      	b.n	8006c8c <__register_exitproc+0x2c>
 8006cfc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006d00:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006d04:	e7bc      	b.n	8006c80 <__register_exitproc+0x20>
 8006d06:	6828      	ldr	r0, [r5, #0]
 8006d08:	f7ff f90e 	bl	8005f28 <__retarget_lock_release_recursive>
 8006d0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006d10:	e7c5      	b.n	8006c9e <__register_exitproc+0x3e>
 8006d12:	bf00      	nop
 8006d14:	200009e8 	.word	0x200009e8
 8006d18:	08007448 	.word	0x08007448
 8006d1c:	08002439 	.word	0x08002439

08006d20 <_calloc_r>:
 8006d20:	b510      	push	{r4, lr}
 8006d22:	fb02 f101 	mul.w	r1, r2, r1
 8006d26:	f7fb fb97 	bl	8002458 <_malloc_r>
 8006d2a:	4604      	mov	r4, r0
 8006d2c:	b1d8      	cbz	r0, 8006d66 <_calloc_r+0x46>
 8006d2e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006d32:	f022 0203 	bic.w	r2, r2, #3
 8006d36:	3a04      	subs	r2, #4
 8006d38:	2a24      	cmp	r2, #36	; 0x24
 8006d3a:	d81d      	bhi.n	8006d78 <_calloc_r+0x58>
 8006d3c:	2a13      	cmp	r2, #19
 8006d3e:	d914      	bls.n	8006d6a <_calloc_r+0x4a>
 8006d40:	2300      	movs	r3, #0
 8006d42:	2a1b      	cmp	r2, #27
 8006d44:	e9c0 3300 	strd	r3, r3, [r0]
 8006d48:	d91b      	bls.n	8006d82 <_calloc_r+0x62>
 8006d4a:	2a24      	cmp	r2, #36	; 0x24
 8006d4c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006d50:	bf0a      	itet	eq
 8006d52:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006d56:	f100 0210 	addne.w	r2, r0, #16
 8006d5a:	f100 0218 	addeq.w	r2, r0, #24
 8006d5e:	2300      	movs	r3, #0
 8006d60:	e9c2 3300 	strd	r3, r3, [r2]
 8006d64:	6093      	str	r3, [r2, #8]
 8006d66:	4620      	mov	r0, r4
 8006d68:	bd10      	pop	{r4, pc}
 8006d6a:	4602      	mov	r2, r0
 8006d6c:	2300      	movs	r3, #0
 8006d6e:	e9c2 3300 	strd	r3, r3, [r2]
 8006d72:	6093      	str	r3, [r2, #8]
 8006d74:	4620      	mov	r0, r4
 8006d76:	bd10      	pop	{r4, pc}
 8006d78:	2100      	movs	r1, #0
 8006d7a:	f7fb fe11 	bl	80029a0 <memset>
 8006d7e:	4620      	mov	r0, r4
 8006d80:	bd10      	pop	{r4, pc}
 8006d82:	f100 0208 	add.w	r2, r0, #8
 8006d86:	e7f1      	b.n	8006d6c <_calloc_r+0x4c>

08006d88 <_close_r>:
 8006d88:	b538      	push	{r3, r4, r5, lr}
 8006d8a:	4c07      	ldr	r4, [pc, #28]	; (8006da8 <_close_r+0x20>)
 8006d8c:	2300      	movs	r3, #0
 8006d8e:	4605      	mov	r5, r0
 8006d90:	4608      	mov	r0, r1
 8006d92:	6023      	str	r3, [r4, #0]
 8006d94:	f7fb fac6 	bl	8002324 <_close>
 8006d98:	1c43      	adds	r3, r0, #1
 8006d9a:	d000      	beq.n	8006d9e <_close_r+0x16>
 8006d9c:	bd38      	pop	{r3, r4, r5, pc}
 8006d9e:	6823      	ldr	r3, [r4, #0]
 8006da0:	2b00      	cmp	r3, #0
 8006da2:	d0fb      	beq.n	8006d9c <_close_r+0x14>
 8006da4:	602b      	str	r3, [r5, #0]
 8006da6:	bd38      	pop	{r3, r4, r5, pc}
 8006da8:	20000ea0 	.word	0x20000ea0

08006dac <_fclose_r>:
 8006dac:	b570      	push	{r4, r5, r6, lr}
 8006dae:	2900      	cmp	r1, #0
 8006db0:	d048      	beq.n	8006e44 <_fclose_r+0x98>
 8006db2:	4605      	mov	r5, r0
 8006db4:	460c      	mov	r4, r1
 8006db6:	b110      	cbz	r0, 8006dbe <_fclose_r+0x12>
 8006db8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006dba:	2b00      	cmp	r3, #0
 8006dbc:	d048      	beq.n	8006e50 <_fclose_r+0xa4>
 8006dbe:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dc4:	07d0      	lsls	r0, r2, #31
 8006dc6:	d440      	bmi.n	8006e4a <_fclose_r+0x9e>
 8006dc8:	0599      	lsls	r1, r3, #22
 8006dca:	d530      	bpl.n	8006e2e <_fclose_r+0x82>
 8006dcc:	4621      	mov	r1, r4
 8006dce:	4628      	mov	r0, r5
 8006dd0:	f7fe fc52 	bl	8005678 <__sflush_r>
 8006dd4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006dd6:	4606      	mov	r6, r0
 8006dd8:	b133      	cbz	r3, 8006de8 <_fclose_r+0x3c>
 8006dda:	69e1      	ldr	r1, [r4, #28]
 8006ddc:	4628      	mov	r0, r5
 8006dde:	4798      	blx	r3
 8006de0:	2800      	cmp	r0, #0
 8006de2:	bfb8      	it	lt
 8006de4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006de8:	89a3      	ldrh	r3, [r4, #12]
 8006dea:	061a      	lsls	r2, r3, #24
 8006dec:	d43c      	bmi.n	8006e68 <_fclose_r+0xbc>
 8006dee:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006df0:	b141      	cbz	r1, 8006e04 <_fclose_r+0x58>
 8006df2:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006df6:	4299      	cmp	r1, r3
 8006df8:	d002      	beq.n	8006e00 <_fclose_r+0x54>
 8006dfa:	4628      	mov	r0, r5
 8006dfc:	f7fe fde4 	bl	80059c8 <_free_r>
 8006e00:	2300      	movs	r3, #0
 8006e02:	6323      	str	r3, [r4, #48]	; 0x30
 8006e04:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006e06:	b121      	cbz	r1, 8006e12 <_fclose_r+0x66>
 8006e08:	4628      	mov	r0, r5
 8006e0a:	f7fe fddd 	bl	80059c8 <_free_r>
 8006e0e:	2300      	movs	r3, #0
 8006e10:	6463      	str	r3, [r4, #68]	; 0x44
 8006e12:	f7fe fd63 	bl	80058dc <__sfp_lock_acquire>
 8006e16:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e18:	2200      	movs	r2, #0
 8006e1a:	07db      	lsls	r3, r3, #31
 8006e1c:	81a2      	strh	r2, [r4, #12]
 8006e1e:	d51f      	bpl.n	8006e60 <_fclose_r+0xb4>
 8006e20:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e22:	f7ff f87d 	bl	8005f20 <__retarget_lock_close_recursive>
 8006e26:	f7fe fd5f 	bl	80058e8 <__sfp_lock_release>
 8006e2a:	4630      	mov	r0, r6
 8006e2c:	bd70      	pop	{r4, r5, r6, pc}
 8006e2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e30:	f7ff f878 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8006e34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e38:	2b00      	cmp	r3, #0
 8006e3a:	d1c7      	bne.n	8006dcc <_fclose_r+0x20>
 8006e3c:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006e3e:	f016 0601 	ands.w	r6, r6, #1
 8006e42:	d016      	beq.n	8006e72 <_fclose_r+0xc6>
 8006e44:	2600      	movs	r6, #0
 8006e46:	4630      	mov	r0, r6
 8006e48:	bd70      	pop	{r4, r5, r6, pc}
 8006e4a:	2b00      	cmp	r3, #0
 8006e4c:	d0fa      	beq.n	8006e44 <_fclose_r+0x98>
 8006e4e:	e7bd      	b.n	8006dcc <_fclose_r+0x20>
 8006e50:	f7fe fd18 	bl	8005884 <__sinit>
 8006e54:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e5a:	07d0      	lsls	r0, r2, #31
 8006e5c:	d4f5      	bmi.n	8006e4a <_fclose_r+0x9e>
 8006e5e:	e7b3      	b.n	8006dc8 <_fclose_r+0x1c>
 8006e60:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e62:	f7ff f861 	bl	8005f28 <__retarget_lock_release_recursive>
 8006e66:	e7db      	b.n	8006e20 <_fclose_r+0x74>
 8006e68:	6921      	ldr	r1, [r4, #16]
 8006e6a:	4628      	mov	r0, r5
 8006e6c:	f7fe fdac 	bl	80059c8 <_free_r>
 8006e70:	e7bd      	b.n	8006dee <_fclose_r+0x42>
 8006e72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e74:	f7ff f858 	bl	8005f28 <__retarget_lock_release_recursive>
 8006e78:	4630      	mov	r0, r6
 8006e7a:	bd70      	pop	{r4, r5, r6, pc}

08006e7c <__fputwc>:
 8006e7c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006e80:	b082      	sub	sp, #8
 8006e82:	4681      	mov	r9, r0
 8006e84:	4688      	mov	r8, r1
 8006e86:	4614      	mov	r4, r2
 8006e88:	f000 f8a0 	bl	8006fcc <__locale_mb_cur_max>
 8006e8c:	2801      	cmp	r0, #1
 8006e8e:	d103      	bne.n	8006e98 <__fputwc+0x1c>
 8006e90:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006e94:	2bfe      	cmp	r3, #254	; 0xfe
 8006e96:	d933      	bls.n	8006f00 <__fputwc+0x84>
 8006e98:	4642      	mov	r2, r8
 8006e9a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006e9e:	a901      	add	r1, sp, #4
 8006ea0:	4648      	mov	r0, r9
 8006ea2:	f000 f93b 	bl	800711c <_wcrtomb_r>
 8006ea6:	1c42      	adds	r2, r0, #1
 8006ea8:	4606      	mov	r6, r0
 8006eaa:	d02f      	beq.n	8006f0c <__fputwc+0x90>
 8006eac:	b320      	cbz	r0, 8006ef8 <__fputwc+0x7c>
 8006eae:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006eb2:	2500      	movs	r5, #0
 8006eb4:	f10d 0a04 	add.w	sl, sp, #4
 8006eb8:	e009      	b.n	8006ece <__fputwc+0x52>
 8006eba:	6823      	ldr	r3, [r4, #0]
 8006ebc:	1c5a      	adds	r2, r3, #1
 8006ebe:	6022      	str	r2, [r4, #0]
 8006ec0:	f883 c000 	strb.w	ip, [r3]
 8006ec4:	3501      	adds	r5, #1
 8006ec6:	42b5      	cmp	r5, r6
 8006ec8:	d216      	bcs.n	8006ef8 <__fputwc+0x7c>
 8006eca:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006ece:	68a3      	ldr	r3, [r4, #8]
 8006ed0:	3b01      	subs	r3, #1
 8006ed2:	2b00      	cmp	r3, #0
 8006ed4:	60a3      	str	r3, [r4, #8]
 8006ed6:	daf0      	bge.n	8006eba <__fputwc+0x3e>
 8006ed8:	69a7      	ldr	r7, [r4, #24]
 8006eda:	42bb      	cmp	r3, r7
 8006edc:	4661      	mov	r1, ip
 8006ede:	4622      	mov	r2, r4
 8006ee0:	4648      	mov	r0, r9
 8006ee2:	db02      	blt.n	8006eea <__fputwc+0x6e>
 8006ee4:	f1bc 0f0a 	cmp.w	ip, #10
 8006ee8:	d1e7      	bne.n	8006eba <__fputwc+0x3e>
 8006eea:	f000 f8bf 	bl	800706c <__swbuf_r>
 8006eee:	1c43      	adds	r3, r0, #1
 8006ef0:	d1e8      	bne.n	8006ec4 <__fputwc+0x48>
 8006ef2:	b002      	add	sp, #8
 8006ef4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006ef8:	4640      	mov	r0, r8
 8006efa:	b002      	add	sp, #8
 8006efc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f00:	fa5f fc88 	uxtb.w	ip, r8
 8006f04:	4606      	mov	r6, r0
 8006f06:	f88d c004 	strb.w	ip, [sp, #4]
 8006f0a:	e7d2      	b.n	8006eb2 <__fputwc+0x36>
 8006f0c:	89a3      	ldrh	r3, [r4, #12]
 8006f0e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006f12:	81a3      	strh	r3, [r4, #12]
 8006f14:	b002      	add	sp, #8
 8006f16:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f1a:	bf00      	nop

08006f1c <_fputwc_r>:
 8006f1c:	b530      	push	{r4, r5, lr}
 8006f1e:	4605      	mov	r5, r0
 8006f20:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006f22:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006f26:	07c0      	lsls	r0, r0, #31
 8006f28:	4614      	mov	r4, r2
 8006f2a:	b083      	sub	sp, #12
 8006f2c:	b29a      	uxth	r2, r3
 8006f2e:	d401      	bmi.n	8006f34 <_fputwc_r+0x18>
 8006f30:	0590      	lsls	r0, r2, #22
 8006f32:	d51c      	bpl.n	8006f6e <_fputwc_r+0x52>
 8006f34:	0490      	lsls	r0, r2, #18
 8006f36:	d406      	bmi.n	8006f46 <_fputwc_r+0x2a>
 8006f38:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f3a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006f3e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f42:	81a3      	strh	r3, [r4, #12]
 8006f44:	6662      	str	r2, [r4, #100]	; 0x64
 8006f46:	4628      	mov	r0, r5
 8006f48:	4622      	mov	r2, r4
 8006f4a:	f7ff ff97 	bl	8006e7c <__fputwc>
 8006f4e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f50:	07da      	lsls	r2, r3, #31
 8006f52:	4605      	mov	r5, r0
 8006f54:	d402      	bmi.n	8006f5c <_fputwc_r+0x40>
 8006f56:	89a3      	ldrh	r3, [r4, #12]
 8006f58:	059b      	lsls	r3, r3, #22
 8006f5a:	d502      	bpl.n	8006f62 <_fputwc_r+0x46>
 8006f5c:	4628      	mov	r0, r5
 8006f5e:	b003      	add	sp, #12
 8006f60:	bd30      	pop	{r4, r5, pc}
 8006f62:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f64:	f7fe ffe0 	bl	8005f28 <__retarget_lock_release_recursive>
 8006f68:	4628      	mov	r0, r5
 8006f6a:	b003      	add	sp, #12
 8006f6c:	bd30      	pop	{r4, r5, pc}
 8006f6e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f70:	9101      	str	r1, [sp, #4]
 8006f72:	f7fe ffd7 	bl	8005f24 <__retarget_lock_acquire_recursive>
 8006f76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f7a:	9901      	ldr	r1, [sp, #4]
 8006f7c:	b29a      	uxth	r2, r3
 8006f7e:	e7d9      	b.n	8006f34 <_fputwc_r+0x18>

08006f80 <_fstat_r>:
 8006f80:	b538      	push	{r3, r4, r5, lr}
 8006f82:	460b      	mov	r3, r1
 8006f84:	4c07      	ldr	r4, [pc, #28]	; (8006fa4 <_fstat_r+0x24>)
 8006f86:	4605      	mov	r5, r0
 8006f88:	4611      	mov	r1, r2
 8006f8a:	4618      	mov	r0, r3
 8006f8c:	2300      	movs	r3, #0
 8006f8e:	6023      	str	r3, [r4, #0]
 8006f90:	f7fb f9cb 	bl	800232a <_fstat>
 8006f94:	1c43      	adds	r3, r0, #1
 8006f96:	d000      	beq.n	8006f9a <_fstat_r+0x1a>
 8006f98:	bd38      	pop	{r3, r4, r5, pc}
 8006f9a:	6823      	ldr	r3, [r4, #0]
 8006f9c:	2b00      	cmp	r3, #0
 8006f9e:	d0fb      	beq.n	8006f98 <_fstat_r+0x18>
 8006fa0:	602b      	str	r3, [r5, #0]
 8006fa2:	bd38      	pop	{r3, r4, r5, pc}
 8006fa4:	20000ea0 	.word	0x20000ea0

08006fa8 <_isatty_r>:
 8006fa8:	b538      	push	{r3, r4, r5, lr}
 8006faa:	4c07      	ldr	r4, [pc, #28]	; (8006fc8 <_isatty_r+0x20>)
 8006fac:	2300      	movs	r3, #0
 8006fae:	4605      	mov	r5, r0
 8006fb0:	4608      	mov	r0, r1
 8006fb2:	6023      	str	r3, [r4, #0]
 8006fb4:	f7fb f9be 	bl	8002334 <_isatty>
 8006fb8:	1c43      	adds	r3, r0, #1
 8006fba:	d000      	beq.n	8006fbe <_isatty_r+0x16>
 8006fbc:	bd38      	pop	{r3, r4, r5, pc}
 8006fbe:	6823      	ldr	r3, [r4, #0]
 8006fc0:	2b00      	cmp	r3, #0
 8006fc2:	d0fb      	beq.n	8006fbc <_isatty_r+0x14>
 8006fc4:	602b      	str	r3, [r5, #0]
 8006fc6:	bd38      	pop	{r3, r4, r5, pc}
 8006fc8:	20000ea0 	.word	0x20000ea0

08006fcc <__locale_mb_cur_max>:
 8006fcc:	4b04      	ldr	r3, [pc, #16]	; (8006fe0 <__locale_mb_cur_max+0x14>)
 8006fce:	4a05      	ldr	r2, [pc, #20]	; (8006fe4 <__locale_mb_cur_max+0x18>)
 8006fd0:	681b      	ldr	r3, [r3, #0]
 8006fd2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006fd4:	2b00      	cmp	r3, #0
 8006fd6:	bf08      	it	eq
 8006fd8:	4613      	moveq	r3, r2
 8006fda:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006fde:	4770      	bx	lr
 8006fe0:	200001a8 	.word	0x200001a8
 8006fe4:	200009ec 	.word	0x200009ec

08006fe8 <_lseek_r>:
 8006fe8:	b570      	push	{r4, r5, r6, lr}
 8006fea:	460d      	mov	r5, r1
 8006fec:	4c08      	ldr	r4, [pc, #32]	; (8007010 <_lseek_r+0x28>)
 8006fee:	4611      	mov	r1, r2
 8006ff0:	4606      	mov	r6, r0
 8006ff2:	461a      	mov	r2, r3
 8006ff4:	4628      	mov	r0, r5
 8006ff6:	2300      	movs	r3, #0
 8006ff8:	6023      	str	r3, [r4, #0]
 8006ffa:	f7fb f99d 	bl	8002338 <_lseek>
 8006ffe:	1c43      	adds	r3, r0, #1
 8007000:	d000      	beq.n	8007004 <_lseek_r+0x1c>
 8007002:	bd70      	pop	{r4, r5, r6, pc}
 8007004:	6823      	ldr	r3, [r4, #0]
 8007006:	2b00      	cmp	r3, #0
 8007008:	d0fb      	beq.n	8007002 <_lseek_r+0x1a>
 800700a:	6033      	str	r3, [r6, #0]
 800700c:	bd70      	pop	{r4, r5, r6, pc}
 800700e:	bf00      	nop
 8007010:	20000ea0 	.word	0x20000ea0

08007014 <__ascii_mbtowc>:
 8007014:	b082      	sub	sp, #8
 8007016:	b149      	cbz	r1, 800702c <__ascii_mbtowc+0x18>
 8007018:	b15a      	cbz	r2, 8007032 <__ascii_mbtowc+0x1e>
 800701a:	b16b      	cbz	r3, 8007038 <__ascii_mbtowc+0x24>
 800701c:	7813      	ldrb	r3, [r2, #0]
 800701e:	600b      	str	r3, [r1, #0]
 8007020:	7812      	ldrb	r2, [r2, #0]
 8007022:	1c10      	adds	r0, r2, #0
 8007024:	bf18      	it	ne
 8007026:	2001      	movne	r0, #1
 8007028:	b002      	add	sp, #8
 800702a:	4770      	bx	lr
 800702c:	a901      	add	r1, sp, #4
 800702e:	2a00      	cmp	r2, #0
 8007030:	d1f3      	bne.n	800701a <__ascii_mbtowc+0x6>
 8007032:	4610      	mov	r0, r2
 8007034:	b002      	add	sp, #8
 8007036:	4770      	bx	lr
 8007038:	f06f 0001 	mvn.w	r0, #1
 800703c:	e7f4      	b.n	8007028 <__ascii_mbtowc+0x14>
 800703e:	bf00      	nop

08007040 <_read_r>:
 8007040:	b570      	push	{r4, r5, r6, lr}
 8007042:	460d      	mov	r5, r1
 8007044:	4c08      	ldr	r4, [pc, #32]	; (8007068 <_read_r+0x28>)
 8007046:	4611      	mov	r1, r2
 8007048:	4606      	mov	r6, r0
 800704a:	461a      	mov	r2, r3
 800704c:	4628      	mov	r0, r5
 800704e:	2300      	movs	r3, #0
 8007050:	6023      	str	r3, [r4, #0]
 8007052:	f7fb f925 	bl	80022a0 <_read>
 8007056:	1c43      	adds	r3, r0, #1
 8007058:	d000      	beq.n	800705c <_read_r+0x1c>
 800705a:	bd70      	pop	{r4, r5, r6, pc}
 800705c:	6823      	ldr	r3, [r4, #0]
 800705e:	2b00      	cmp	r3, #0
 8007060:	d0fb      	beq.n	800705a <_read_r+0x1a>
 8007062:	6033      	str	r3, [r6, #0]
 8007064:	bd70      	pop	{r4, r5, r6, pc}
 8007066:	bf00      	nop
 8007068:	20000ea0 	.word	0x20000ea0

0800706c <__swbuf_r>:
 800706c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800706e:	460d      	mov	r5, r1
 8007070:	4614      	mov	r4, r2
 8007072:	4606      	mov	r6, r0
 8007074:	b110      	cbz	r0, 800707c <__swbuf_r+0x10>
 8007076:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007078:	2b00      	cmp	r3, #0
 800707a:	d043      	beq.n	8007104 <__swbuf_r+0x98>
 800707c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007080:	69a3      	ldr	r3, [r4, #24]
 8007082:	60a3      	str	r3, [r4, #8]
 8007084:	b291      	uxth	r1, r2
 8007086:	0708      	lsls	r0, r1, #28
 8007088:	d51b      	bpl.n	80070c2 <__swbuf_r+0x56>
 800708a:	6923      	ldr	r3, [r4, #16]
 800708c:	b1cb      	cbz	r3, 80070c2 <__swbuf_r+0x56>
 800708e:	b2ed      	uxtb	r5, r5
 8007090:	0489      	lsls	r1, r1, #18
 8007092:	462f      	mov	r7, r5
 8007094:	d522      	bpl.n	80070dc <__swbuf_r+0x70>
 8007096:	6822      	ldr	r2, [r4, #0]
 8007098:	6961      	ldr	r1, [r4, #20]
 800709a:	1ad3      	subs	r3, r2, r3
 800709c:	4299      	cmp	r1, r3
 800709e:	dd29      	ble.n	80070f4 <__swbuf_r+0x88>
 80070a0:	3301      	adds	r3, #1
 80070a2:	68a1      	ldr	r1, [r4, #8]
 80070a4:	1c50      	adds	r0, r2, #1
 80070a6:	3901      	subs	r1, #1
 80070a8:	60a1      	str	r1, [r4, #8]
 80070aa:	6020      	str	r0, [r4, #0]
 80070ac:	7015      	strb	r5, [r2, #0]
 80070ae:	6962      	ldr	r2, [r4, #20]
 80070b0:	429a      	cmp	r2, r3
 80070b2:	d02a      	beq.n	800710a <__swbuf_r+0x9e>
 80070b4:	89a3      	ldrh	r3, [r4, #12]
 80070b6:	07db      	lsls	r3, r3, #31
 80070b8:	d501      	bpl.n	80070be <__swbuf_r+0x52>
 80070ba:	2d0a      	cmp	r5, #10
 80070bc:	d025      	beq.n	800710a <__swbuf_r+0x9e>
 80070be:	4638      	mov	r0, r7
 80070c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80070c2:	4621      	mov	r1, r4
 80070c4:	4630      	mov	r0, r6
 80070c6:	f7fd fabf 	bl	8004648 <__swsetup_r>
 80070ca:	bb20      	cbnz	r0, 8007116 <__swbuf_r+0xaa>
 80070cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80070d0:	6923      	ldr	r3, [r4, #16]
 80070d2:	b291      	uxth	r1, r2
 80070d4:	b2ed      	uxtb	r5, r5
 80070d6:	0489      	lsls	r1, r1, #18
 80070d8:	462f      	mov	r7, r5
 80070da:	d4dc      	bmi.n	8007096 <__swbuf_r+0x2a>
 80070dc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80070de:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80070e2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80070e6:	81a2      	strh	r2, [r4, #12]
 80070e8:	6822      	ldr	r2, [r4, #0]
 80070ea:	6661      	str	r1, [r4, #100]	; 0x64
 80070ec:	6961      	ldr	r1, [r4, #20]
 80070ee:	1ad3      	subs	r3, r2, r3
 80070f0:	4299      	cmp	r1, r3
 80070f2:	dcd5      	bgt.n	80070a0 <__swbuf_r+0x34>
 80070f4:	4621      	mov	r1, r4
 80070f6:	4630      	mov	r0, r6
 80070f8:	f7fe fb68 	bl	80057cc <_fflush_r>
 80070fc:	b958      	cbnz	r0, 8007116 <__swbuf_r+0xaa>
 80070fe:	6822      	ldr	r2, [r4, #0]
 8007100:	2301      	movs	r3, #1
 8007102:	e7ce      	b.n	80070a2 <__swbuf_r+0x36>
 8007104:	f7fe fbbe 	bl	8005884 <__sinit>
 8007108:	e7b8      	b.n	800707c <__swbuf_r+0x10>
 800710a:	4621      	mov	r1, r4
 800710c:	4630      	mov	r0, r6
 800710e:	f7fe fb5d 	bl	80057cc <_fflush_r>
 8007112:	2800      	cmp	r0, #0
 8007114:	d0d3      	beq.n	80070be <__swbuf_r+0x52>
 8007116:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800711a:	e7d0      	b.n	80070be <__swbuf_r+0x52>

0800711c <_wcrtomb_r>:
 800711c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800711e:	4c11      	ldr	r4, [pc, #68]	; (8007164 <_wcrtomb_r+0x48>)
 8007120:	6824      	ldr	r4, [r4, #0]
 8007122:	b085      	sub	sp, #20
 8007124:	4606      	mov	r6, r0
 8007126:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007128:	461f      	mov	r7, r3
 800712a:	b151      	cbz	r1, 8007142 <_wcrtomb_r+0x26>
 800712c:	4d0e      	ldr	r5, [pc, #56]	; (8007168 <_wcrtomb_r+0x4c>)
 800712e:	2c00      	cmp	r4, #0
 8007130:	bf08      	it	eq
 8007132:	462c      	moveq	r4, r5
 8007134:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007138:	47a0      	blx	r4
 800713a:	1c43      	adds	r3, r0, #1
 800713c:	d00c      	beq.n	8007158 <_wcrtomb_r+0x3c>
 800713e:	b005      	add	sp, #20
 8007140:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007142:	4a09      	ldr	r2, [pc, #36]	; (8007168 <_wcrtomb_r+0x4c>)
 8007144:	2c00      	cmp	r4, #0
 8007146:	bf08      	it	eq
 8007148:	4614      	moveq	r4, r2
 800714a:	460a      	mov	r2, r1
 800714c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007150:	a901      	add	r1, sp, #4
 8007152:	47a0      	blx	r4
 8007154:	1c43      	adds	r3, r0, #1
 8007156:	d1f2      	bne.n	800713e <_wcrtomb_r+0x22>
 8007158:	2200      	movs	r2, #0
 800715a:	238a      	movs	r3, #138	; 0x8a
 800715c:	603a      	str	r2, [r7, #0]
 800715e:	6033      	str	r3, [r6, #0]
 8007160:	b005      	add	sp, #20
 8007162:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007164:	200001a8 	.word	0x200001a8
 8007168:	200009ec 	.word	0x200009ec

0800716c <__ascii_wctomb>:
 800716c:	b121      	cbz	r1, 8007178 <__ascii_wctomb+0xc>
 800716e:	2aff      	cmp	r2, #255	; 0xff
 8007170:	d804      	bhi.n	800717c <__ascii_wctomb+0x10>
 8007172:	700a      	strb	r2, [r1, #0]
 8007174:	2001      	movs	r0, #1
 8007176:	4770      	bx	lr
 8007178:	4608      	mov	r0, r1
 800717a:	4770      	bx	lr
 800717c:	238a      	movs	r3, #138	; 0x8a
 800717e:	6003      	str	r3, [r0, #0]
 8007180:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007184:	4770      	bx	lr
 8007186:	bf00      	nop

08007188 <_init>:
 8007188:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800718a:	bf00      	nop
 800718c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800718e:	bc08      	pop	{r3}
 8007190:	469e      	mov	lr, r3
 8007192:	4770      	bx	lr

08007194 <_fini>:
 8007194:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007196:	bf00      	nop
 8007198:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800719a:	bc08      	pop	{r3}
 800719c:	469e      	mov	lr, r3
 800719e:	4770      	bx	lr
