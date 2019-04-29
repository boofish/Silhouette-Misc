
select.elf:     file format elf32-littlearm


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
 80001e0:	08006fd4 	.word	0x08006fd4

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
 80001fc:	08006fd4 	.word	0x08006fd4

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
 8001108:	f640 20f8 	movw	r0, #2808	; 0xaf8
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20f8 	movw	r0, #2808	; 0xaf8
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
 80013e8:	f247 0208 	movw	r2, #28680	; 0x7008
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
 800145a:	f240 0064 	movw	r0, #100	; 0x64
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 0200 	movw	r2, #28672	; 0x7000
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
 8001484:	f240 0064 	movw	r0, #100	; 0x64
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 0200 	movw	r2, #28672	; 0x7000
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
 8001842:	f640 21fc 	movw	r1, #2812	; 0xafc
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
 800188c:	f640 20fc 	movw	r0, #2812	; 0xafc
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20fc 	movw	r0, #2812	; 0xafc
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
 80019d4:	f247 0338 	movw	r3, #28728	; 0x7038
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
 80019fc:	f247 0348 	movw	r3, #28744	; 0x7048
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

08001eb6 <select>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8001ebe:	f240 0914 	movw	r9, #20
 8001ec2:	2903      	cmp	r1, #3
 8001ec4:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001ec8:	eb09 0581 	add.w	r5, r9, r1, lsl #2
 8001ecc:	f109 0c04 	add.w	ip, r9, #4
 8001ed0:	d37c      	bcc.n	8001fcc <select+0x116>
 8001ed2:	f04f 0a00 	mov.w	sl, #0
 8001ed6:	f04f 0e01 	mov.w	lr, #1
 8001eda:	2302      	movs	r3, #2
 8001edc:	f06f 0803 	mvn.w	r8, #3
 8001ee0:	eb01 040e 	add.w	r4, r1, lr
 8001ee4:	f859 2023 	ldr.w	r2, [r9, r3, lsl #2]
 8001ee8:	ea08 0444 	and.w	r4, r8, r4, lsl #1
 8001eec:	eb09 0604 	add.w	r6, r9, r4
 8001ef0:	ed96 0a00 	vldr	s0, [r6]
 8001ef4:	f849 2004 	str.w	r2, [r9, r4]
 8001ef8:	eb09 0483 	add.w	r4, r9, r3, lsl #2
 8001efc:	ed84 0a00 	vstr	s0, [r4]
 8001f00:	ed95 1a00 	vldr	s2, [r5]
 8001f04:	eeb4 0ac1 	vcmpe.f32	s0, s2
 8001f08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f0c:	bfc6      	itte	gt
 8001f0e:	ed84 1a00 	vstrgt	s2, [r4]
 8001f12:	ed85 0a00 	vstrgt	s0, [r5]
 8001f16:	eeb0 0a41 	vmovle.f32	s0, s2
 8001f1a:	ed9c 1a00 	vldr	s2, [ip]
 8001f1e:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001f22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f26:	bfc2      	ittt	gt
 8001f28:	ed8c 0a00 	vstrgt	s0, [ip]
 8001f2c:	ed85 1a00 	vstrgt	s2, [r5]
 8001f30:	ed9c 1a00 	vldrgt	s2, [ip]
 8001f34:	ed94 0a00 	vldr	s0, [r4]
 8001f38:	eeb4 0ac1 	vcmpe.f32	s0, s2
 8001f3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f40:	bfc6      	itte	gt
 8001f42:	ed84 1a00 	vstrgt	s2, [r4]
 8001f46:	ed8c 0a00 	vstrgt	s0, [ip]
 8001f4a:	eeb0 0a41 	vmovle.f32	s0, s2
 8001f4e:	f1ba 0f00 	cmp.w	sl, #0
 8001f52:	d002      	beq.n	8001f5a <select+0xa4>
 8001f54:	682c      	ldr	r4, [r5, #0]
 8001f56:	460d      	mov	r5, r1
 8001f58:	e024      	b.n	8001fa4 <select+0xee>
 8001f5a:	460d      	mov	r5, r1
 8001f5c:	e003      	b.n	8001f66 <select+0xb0>
 8001f5e:	ed06 2a01 	vstr	s4, [r6, #-4]
 8001f62:	ed82 1a00 	vstr	s2, [r2]
 8001f66:	eb09 0283 	add.w	r2, r9, r3, lsl #2
 8001f6a:	1d14      	adds	r4, r2, #4
 8001f6c:	ed94 1a00 	vldr	s2, [r4]
 8001f70:	1d26      	adds	r6, r4, #4
 8001f72:	3301      	adds	r3, #1
 8001f74:	4634      	mov	r4, r6
 8001f76:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001f7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f7e:	d4f5      	bmi.n	8001f6c <select+0xb6>
 8001f80:	eb09 0485 	add.w	r4, r9, r5, lsl #2
 8001f84:	ed14 2a01 	vldr	s4, [r4, #-4]
 8001f88:	1f22      	subs	r2, r4, #4
 8001f8a:	3d01      	subs	r5, #1
 8001f8c:	4614      	mov	r4, r2
 8001f8e:	eeb4 2ac0 	vcmpe.f32	s4, s0
 8001f92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f96:	dcf5      	bgt.n	8001f84 <select+0xce>
 8001f98:	429d      	cmp	r5, r3
 8001f9a:	d2e0      	bcs.n	8001f5e <select+0xa8>
 8001f9c:	ee12 4a10 	vmov	r4, s4
 8001fa0:	f04f 0a01 	mov.w	sl, #1
 8001fa4:	eb09 0285 	add.w	r2, r9, r5, lsl #2
 8001fa8:	4285      	cmp	r5, r0
 8001faa:	f8cc 4000 	str.w	r4, [ip]
 8001fae:	ed82 0a00 	vstr	s0, [r2]
 8001fb2:	bf98      	it	ls
 8001fb4:	469e      	movls	lr, r3
 8001fb6:	bf28      	it	cs
 8001fb8:	1e69      	subcs	r1, r5, #1
 8001fba:	f10e 0301 	add.w	r3, lr, #1
 8001fbe:	eb09 0c8e 	add.w	ip, r9, lr, lsl #2
 8001fc2:	eb09 0581 	add.w	r5, r9, r1, lsl #2
 8001fc6:	4299      	cmp	r1, r3
 8001fc8:	d88a      	bhi.n	8001ee0 <select+0x2a>
 8001fca:	e000      	b.n	8001fce <select+0x118>
 8001fcc:	2302      	movs	r3, #2
 8001fce:	4299      	cmp	r1, r3
 8001fd0:	d10c      	bne.n	8001fec <select+0x136>
 8001fd2:	ed9c 0a00 	vldr	s0, [ip]
 8001fd6:	ed95 1a00 	vldr	s2, [r5]
 8001fda:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001fde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001fe2:	bf44      	itt	mi
 8001fe4:	ed8c 1a00 	vstrmi	s2, [ip]
 8001fe8:	ed85 0a00 	vstrmi	s0, [r5]
 8001fec:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 8001ff0:	ed90 0a00 	vldr	s0, [r0]
 8001ff4:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8001ff8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ffa <benchmark>:
 8001ffa:	b580      	push	{r7, lr}
 8001ffc:	466f      	mov	r7, sp
 8001ffe:	f640 2038 	movw	r0, #2616	; 0xa38
 8002002:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002006:	7801      	ldrb	r1, [r0, #0]
 8002008:	f640 2034 	movw	r0, #2612	; 0xa34
 800200c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002010:	7800      	ldrb	r0, [r0, #0]
 8002012:	2800      	cmp	r0, #0
 8002014:	bf18      	it	ne
 8002016:	200a      	movne	r0, #10
 8002018:	2900      	cmp	r1, #0
 800201a:	bf18      	it	ne
 800201c:	2114      	movne	r1, #20
 800201e:	f7ff ff4a 	bl	8001eb6 <select>
 8002022:	2000      	movs	r0, #0
 8002024:	bd80      	pop	{r7, pc}

08002026 <initialise_benchmark>:
 8002026:	f640 2034 	movw	r0, #2612	; 0xa34
 800202a:	2101      	movs	r1, #1
 800202c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002030:	7001      	strb	r1, [r0, #0]
 8002032:	f640 2038 	movw	r0, #2616	; 0xa38
 8002036:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800203a:	7001      	strb	r1, [r0, #0]
 800203c:	4770      	bx	lr

0800203e <verify_benchmark>:
 800203e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002042:	4770      	bx	lr

08002044 <__io_putchar>:
 8002044:	b580      	push	{r7, lr}
 8002046:	466f      	mov	r7, sp
 8002048:	b082      	sub	sp, #8
 800204a:	9001      	str	r0, [sp, #4]
 800204c:	f640 203c 	movw	r0, #2620	; 0xa3c
 8002050:	a901      	add	r1, sp, #4
 8002052:	2201      	movs	r2, #1
 8002054:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002058:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800205c:	f7ff fe3d 	bl	8001cda <HAL_UART_Transmit>
 8002060:	9801      	ldr	r0, [sp, #4]
 8002062:	b002      	add	sp, #8
 8002064:	bd80      	pop	{r7, pc}

08002066 <main>:
 8002066:	b5b0      	push	{r4, r5, r7, lr}
 8002068:	af02      	add	r7, sp, #8
 800206a:	f640 213c 	movw	r1, #2620	; 0xa3c
 800206e:	f643 0000 	movw	r0, #14336	; 0x3800
 8002072:	220c      	movs	r2, #12
 8002074:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002078:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800207c:	6008      	str	r0, [r1, #0]
 800207e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002082:	6048      	str	r0, [r1, #4]
 8002084:	2000      	movs	r0, #0
 8002086:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800208a:	6108      	str	r0, [r1, #16]
 800208c:	6248      	str	r0, [r1, #36]	; 0x24
 800208e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002092:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002096:	2000      	movs	r0, #0
 8002098:	f7ff feb4 	bl	8001e04 <BSP_COM_Init>
 800209c:	f7ff ffc3 	bl	8002026 <initialise_benchmark>
 80020a0:	f247 0058 	movw	r0, #28760	; 0x7058
 80020a4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020a8:	f000 f948 	bl	800233c <printf>
 80020ac:	f247 1001 	movw	r0, #28929	; 0x7101
 80020b0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020b4:	f000 f9a4 	bl	8002400 <puts>
 80020b8:	f7ff f816 	bl	80010e8 <HAL_Init>
 80020bc:	f7ff f82c 	bl	8001118 <HAL_GetTick>
 80020c0:	4604      	mov	r4, r0
 80020c2:	f7ff ff9a 	bl	8001ffa <benchmark>
 80020c6:	4605      	mov	r5, r0
 80020c8:	f7ff f826 	bl	8001118 <HAL_GetTick>
 80020cc:	1b04      	subs	r4, r0, r4
 80020ce:	4628      	mov	r0, r5
 80020d0:	f7ff ffb5 	bl	800203e <verify_benchmark>
 80020d4:	1c41      	adds	r1, r0, #1
 80020d6:	d006      	beq.n	80020e6 <main+0x80>
 80020d8:	2801      	cmp	r0, #1
 80020da:	d109      	bne.n	80020f0 <main+0x8a>
 80020dc:	f247 006d 	movw	r0, #28781	; 0x706d
 80020e0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e4:	e008      	b.n	80020f8 <main+0x92>
 80020e6:	f247 0091 	movw	r0, #28817	; 0x7091
 80020ea:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020ee:	e003      	b.n	80020f8 <main+0x92>
 80020f0:	f247 00c6 	movw	r0, #28870	; 0x70c6
 80020f4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020f8:	4621      	mov	r1, r4
 80020fa:	f000 f91f 	bl	800233c <printf>
 80020fe:	2000      	movs	r0, #0
 8002100:	bdb0      	pop	{r4, r5, r7, pc}

08002102 <SysTick_Handler>:
 8002102:	b580      	push	{r7, lr}
 8002104:	466f      	mov	r7, sp
 8002106:	f7fe ffff 	bl	8001108 <HAL_IncTick>
 800210a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800210e:	f7ff b859 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002112 <_read>:
 8002112:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002114:	af03      	add	r7, sp, #12
 8002116:	f84d bd04 	str.w	fp, [sp, #-4]!
 800211a:	4614      	mov	r4, r2
 800211c:	460d      	mov	r5, r1
 800211e:	2c01      	cmp	r4, #1
 8002120:	db06      	blt.n	8002130 <_read+0x1e>
 8002122:	4626      	mov	r6, r4
 8002124:	f3af 8000 	nop.w
 8002128:	f805 0b01 	strb.w	r0, [r5], #1
 800212c:	3e01      	subs	r6, #1
 800212e:	d1f9      	bne.n	8002124 <_read+0x12>
 8002130:	4620      	mov	r0, r4
 8002132:	f85d bb04 	ldr.w	fp, [sp], #4
 8002136:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002138 <_write>:
 8002138:	b5f0      	push	{r4, r5, r6, r7, lr}
 800213a:	af03      	add	r7, sp, #12
 800213c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002140:	4614      	mov	r4, r2
 8002142:	460d      	mov	r5, r1
 8002144:	2c01      	cmp	r4, #1
 8002146:	db06      	blt.n	8002156 <_write+0x1e>
 8002148:	4626      	mov	r6, r4
 800214a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800214e:	f7ff ff79 	bl	8002044 <__io_putchar>
 8002152:	3e01      	subs	r6, #1
 8002154:	d1f9      	bne.n	800214a <_write+0x12>
 8002156:	4620      	mov	r0, r4
 8002158:	f85d bb04 	ldr.w	fp, [sp], #4
 800215c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800215e <_sbrk>:
 800215e:	f640 22c0 	movw	r2, #2752	; 0xac0
 8002162:	4601      	mov	r1, r0
 8002164:	466b      	mov	r3, sp
 8002166:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800216a:	6810      	ldr	r0, [r2, #0]
 800216c:	2800      	cmp	r0, #0
 800216e:	bf02      	ittt	eq
 8002170:	f640 3068 	movweq	r0, #2920	; 0xb68
 8002174:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002178:	6010      	streq	r0, [r2, #0]
 800217a:	4401      	add	r1, r0
 800217c:	4299      	cmp	r1, r3
 800217e:	bf9c      	itt	ls
 8002180:	6011      	strls	r1, [r2, #0]
 8002182:	4770      	bxls	lr
 8002184:	b580      	push	{r7, lr}
 8002186:	466f      	mov	r7, sp
 8002188:	f000 f864 	bl	8002254 <__errno>
 800218c:	210c      	movs	r1, #12
 800218e:	6001      	str	r1, [r0, #0]
 8002190:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002194:	bd80      	pop	{r7, pc}

08002196 <_close>:
 8002196:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800219a:	4770      	bx	lr

0800219c <_fstat>:
 800219c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021a0:	6048      	str	r0, [r1, #4]
 80021a2:	2000      	movs	r0, #0
 80021a4:	4770      	bx	lr

080021a6 <_isatty>:
 80021a6:	2001      	movs	r0, #1
 80021a8:	4770      	bx	lr

080021aa <_lseek>:
 80021aa:	2000      	movs	r0, #0
 80021ac:	4770      	bx	lr

080021ae <SystemInit>:
 80021ae:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021b2:	f04f 0c00 	mov.w	ip, #0
 80021b6:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80021ba:	6801      	ldr	r1, [r0, #0]
 80021bc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80021c0:	6001      	str	r1, [r0, #0]
 80021c2:	f241 0100 	movw	r1, #4096	; 0x1000
 80021c6:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80021ca:	680a      	ldr	r2, [r1, #0]
 80021cc:	f042 0201 	orr.w	r2, r2, #1
 80021d0:	600a      	str	r2, [r1, #0]
 80021d2:	f8c1 c008 	str.w	ip, [r1, #8]
 80021d6:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80021da:	680b      	ldr	r3, [r1, #0]
 80021dc:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80021e0:	401a      	ands	r2, r3
 80021e2:	600a      	str	r2, [r1, #0]
 80021e4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80021e8:	60ca      	str	r2, [r1, #12]
 80021ea:	680a      	ldr	r2, [r1, #0]
 80021ec:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80021f0:	600a      	str	r2, [r1, #0]
 80021f2:	f8c1 c018 	str.w	ip, [r1, #24]
 80021f6:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80021fa:	f840 1c80 	str.w	r1, [r0, #-128]
 80021fe:	4770      	bx	lr

08002200 <Reset_Handler>:
 8002200:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002238 <LoopForever+0x2>
 8002204:	2100      	movs	r1, #0
 8002206:	e003      	b.n	8002210 <LoopCopyDataInit>

08002208 <CopyDataInit>:
 8002208:	4b0c      	ldr	r3, [pc, #48]	; (800223c <LoopForever+0x6>)
 800220a:	585b      	ldr	r3, [r3, r1]
 800220c:	5043      	str	r3, [r0, r1]
 800220e:	3104      	adds	r1, #4

08002210 <LoopCopyDataInit>:
 8002210:	480b      	ldr	r0, [pc, #44]	; (8002240 <LoopForever+0xa>)
 8002212:	4b0c      	ldr	r3, [pc, #48]	; (8002244 <LoopForever+0xe>)
 8002214:	1842      	adds	r2, r0, r1
 8002216:	429a      	cmp	r2, r3
 8002218:	d3f6      	bcc.n	8002208 <CopyDataInit>
 800221a:	4a0b      	ldr	r2, [pc, #44]	; (8002248 <LoopForever+0x12>)
 800221c:	e002      	b.n	8002224 <LoopFillZerobss>

0800221e <FillZerobss>:
 800221e:	2300      	movs	r3, #0
 8002220:	f842 3b04 	str.w	r3, [r2], #4

08002224 <LoopFillZerobss>:
 8002224:	4b09      	ldr	r3, [pc, #36]	; (800224c <LoopForever+0x16>)
 8002226:	429a      	cmp	r2, r3
 8002228:	d3f9      	bcc.n	800221e <FillZerobss>
 800222a:	f7ff ffc0 	bl	80021ae <SystemInit>
 800222e:	f000 f817 	bl	8002260 <__libc_init_array>
 8002232:	f7ff ff18 	bl	8002066 <main>

08002236 <LoopForever>:
 8002236:	e7fe      	b.n	8002236 <LoopForever>
 8002238:	20018000 	.word	0x20018000
 800223c:	080073a8 	.word	0x080073a8
 8002240:	20000000 	.word	0x20000000
 8002244:	20000a18 	.word	0x20000a18
 8002248:	20000a18 	.word	0x20000a18
 800224c:	20000b68 	.word	0x20000b68

08002250 <ADC1_2_IRQHandler>:
 8002250:	e7fe      	b.n	8002250 <ADC1_2_IRQHandler>
	...

08002254 <__errno>:
 8002254:	4b01      	ldr	r3, [pc, #4]	; (800225c <__errno+0x8>)
 8002256:	6818      	ldr	r0, [r3, #0]
 8002258:	4770      	bx	lr
 800225a:	bf00      	nop
 800225c:	20000068 	.word	0x20000068

08002260 <__libc_init_array>:
 8002260:	b570      	push	{r4, r5, r6, lr}
 8002262:	4e0d      	ldr	r6, [pc, #52]	; (8002298 <__libc_init_array+0x38>)
 8002264:	4d0d      	ldr	r5, [pc, #52]	; (800229c <__libc_init_array+0x3c>)
 8002266:	1b76      	subs	r6, r6, r5
 8002268:	10b6      	asrs	r6, r6, #2
 800226a:	d006      	beq.n	800227a <__libc_init_array+0x1a>
 800226c:	2400      	movs	r4, #0
 800226e:	3401      	adds	r4, #1
 8002270:	f855 3b04 	ldr.w	r3, [r5], #4
 8002274:	4798      	blx	r3
 8002276:	42a6      	cmp	r6, r4
 8002278:	d1f9      	bne.n	800226e <__libc_init_array+0xe>
 800227a:	4e09      	ldr	r6, [pc, #36]	; (80022a0 <__libc_init_array+0x40>)
 800227c:	4d09      	ldr	r5, [pc, #36]	; (80022a4 <__libc_init_array+0x44>)
 800227e:	1b76      	subs	r6, r6, r5
 8002280:	f004 fea8 	bl	8006fd4 <_init>
 8002284:	10b6      	asrs	r6, r6, #2
 8002286:	d006      	beq.n	8002296 <__libc_init_array+0x36>
 8002288:	2400      	movs	r4, #0
 800228a:	3401      	adds	r4, #1
 800228c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002290:	4798      	blx	r3
 8002292:	42a6      	cmp	r6, r4
 8002294:	d1f9      	bne.n	800228a <__libc_init_array+0x2a>
 8002296:	bd70      	pop	{r4, r5, r6, pc}
 8002298:	08007398 	.word	0x08007398
 800229c:	08007398 	.word	0x08007398
 80022a0:	080073a0 	.word	0x080073a0
 80022a4:	08007398 	.word	0x08007398

080022a8 <memset>:
 80022a8:	b4f0      	push	{r4, r5, r6, r7}
 80022aa:	0786      	lsls	r6, r0, #30
 80022ac:	d043      	beq.n	8002336 <memset+0x8e>
 80022ae:	1e54      	subs	r4, r2, #1
 80022b0:	2a00      	cmp	r2, #0
 80022b2:	d03e      	beq.n	8002332 <memset+0x8a>
 80022b4:	b2ca      	uxtb	r2, r1
 80022b6:	4603      	mov	r3, r0
 80022b8:	e002      	b.n	80022c0 <memset+0x18>
 80022ba:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80022be:	d338      	bcc.n	8002332 <memset+0x8a>
 80022c0:	f803 2b01 	strb.w	r2, [r3], #1
 80022c4:	079d      	lsls	r5, r3, #30
 80022c6:	d1f8      	bne.n	80022ba <memset+0x12>
 80022c8:	2c03      	cmp	r4, #3
 80022ca:	d92b      	bls.n	8002324 <memset+0x7c>
 80022cc:	b2cd      	uxtb	r5, r1
 80022ce:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80022d2:	2c0f      	cmp	r4, #15
 80022d4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80022d8:	d916      	bls.n	8002308 <memset+0x60>
 80022da:	f1a4 0710 	sub.w	r7, r4, #16
 80022de:	093f      	lsrs	r7, r7, #4
 80022e0:	f103 0620 	add.w	r6, r3, #32
 80022e4:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80022e8:	f103 0210 	add.w	r2, r3, #16
 80022ec:	e942 5504 	strd	r5, r5, [r2, #-16]
 80022f0:	e942 5502 	strd	r5, r5, [r2, #-8]
 80022f4:	3210      	adds	r2, #16
 80022f6:	42b2      	cmp	r2, r6
 80022f8:	d1f8      	bne.n	80022ec <memset+0x44>
 80022fa:	f004 040f 	and.w	r4, r4, #15
 80022fe:	3701      	adds	r7, #1
 8002300:	2c03      	cmp	r4, #3
 8002302:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002306:	d90d      	bls.n	8002324 <memset+0x7c>
 8002308:	461e      	mov	r6, r3
 800230a:	4622      	mov	r2, r4
 800230c:	3a04      	subs	r2, #4
 800230e:	2a03      	cmp	r2, #3
 8002310:	f846 5b04 	str.w	r5, [r6], #4
 8002314:	d8fa      	bhi.n	800230c <memset+0x64>
 8002316:	1f22      	subs	r2, r4, #4
 8002318:	f022 0203 	bic.w	r2, r2, #3
 800231c:	3204      	adds	r2, #4
 800231e:	4413      	add	r3, r2
 8002320:	f004 0403 	and.w	r4, r4, #3
 8002324:	b12c      	cbz	r4, 8002332 <memset+0x8a>
 8002326:	b2c9      	uxtb	r1, r1
 8002328:	441c      	add	r4, r3
 800232a:	f803 1b01 	strb.w	r1, [r3], #1
 800232e:	429c      	cmp	r4, r3
 8002330:	d1fb      	bne.n	800232a <memset+0x82>
 8002332:	bcf0      	pop	{r4, r5, r6, r7}
 8002334:	4770      	bx	lr
 8002336:	4614      	mov	r4, r2
 8002338:	4603      	mov	r3, r0
 800233a:	e7c5      	b.n	80022c8 <memset+0x20>

0800233c <printf>:
 800233c:	b40f      	push	{r0, r1, r2, r3}
 800233e:	b500      	push	{lr}
 8002340:	4907      	ldr	r1, [pc, #28]	; (8002360 <printf+0x24>)
 8002342:	b083      	sub	sp, #12
 8002344:	ab04      	add	r3, sp, #16
 8002346:	6808      	ldr	r0, [r1, #0]
 8002348:	f853 2b04 	ldr.w	r2, [r3], #4
 800234c:	6881      	ldr	r1, [r0, #8]
 800234e:	9301      	str	r3, [sp, #4]
 8002350:	f000 f85e 	bl	8002410 <_vfprintf_r>
 8002354:	b003      	add	sp, #12
 8002356:	f85d eb04 	ldr.w	lr, [sp], #4
 800235a:	b004      	add	sp, #16
 800235c:	4770      	bx	lr
 800235e:	bf00      	nop
 8002360:	20000068 	.word	0x20000068

08002364 <_puts_r>:
 8002364:	b570      	push	{r4, r5, r6, lr}
 8002366:	4605      	mov	r5, r0
 8002368:	b088      	sub	sp, #32
 800236a:	4608      	mov	r0, r1
 800236c:	460c      	mov	r4, r1
 800236e:	f7fe f967 	bl	8000640 <strlen>
 8002372:	4a22      	ldr	r2, [pc, #136]	; (80023fc <_puts_r+0x98>)
 8002374:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002376:	9404      	str	r4, [sp, #16]
 8002378:	2601      	movs	r6, #1
 800237a:	1c44      	adds	r4, r0, #1
 800237c:	a904      	add	r1, sp, #16
 800237e:	9206      	str	r2, [sp, #24]
 8002380:	2202      	movs	r2, #2
 8002382:	9403      	str	r4, [sp, #12]
 8002384:	9005      	str	r0, [sp, #20]
 8002386:	68ac      	ldr	r4, [r5, #8]
 8002388:	9607      	str	r6, [sp, #28]
 800238a:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800238e:	b31b      	cbz	r3, 80023d8 <_puts_r+0x74>
 8002390:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002392:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002396:	07ce      	lsls	r6, r1, #31
 8002398:	b29a      	uxth	r2, r3
 800239a:	d401      	bmi.n	80023a0 <_puts_r+0x3c>
 800239c:	0590      	lsls	r0, r2, #22
 800239e:	d525      	bpl.n	80023ec <_puts_r+0x88>
 80023a0:	0491      	lsls	r1, r2, #18
 80023a2:	d406      	bmi.n	80023b2 <_puts_r+0x4e>
 80023a4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80023a6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80023aa:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80023ae:	81a3      	strh	r3, [r4, #12]
 80023b0:	6662      	str	r2, [r4, #100]	; 0x64
 80023b2:	4628      	mov	r0, r5
 80023b4:	aa01      	add	r2, sp, #4
 80023b6:	4621      	mov	r1, r4
 80023b8:	f003 f85e 	bl	8005478 <__sfvwrite_r>
 80023bc:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80023be:	2800      	cmp	r0, #0
 80023c0:	bf0c      	ite	eq
 80023c2:	250a      	moveq	r5, #10
 80023c4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80023c8:	07da      	lsls	r2, r3, #31
 80023ca:	d402      	bmi.n	80023d2 <_puts_r+0x6e>
 80023cc:	89a3      	ldrh	r3, [r4, #12]
 80023ce:	059b      	lsls	r3, r3, #22
 80023d0:	d506      	bpl.n	80023e0 <_puts_r+0x7c>
 80023d2:	4628      	mov	r0, r5
 80023d4:	b008      	add	sp, #32
 80023d6:	bd70      	pop	{r4, r5, r6, pc}
 80023d8:	4628      	mov	r0, r5
 80023da:	f002 feb7 	bl	800514c <__sinit>
 80023de:	e7d7      	b.n	8002390 <_puts_r+0x2c>
 80023e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80023e2:	f003 fa05 	bl	80057f0 <__retarget_lock_release_recursive>
 80023e6:	4628      	mov	r0, r5
 80023e8:	b008      	add	sp, #32
 80023ea:	bd70      	pop	{r4, r5, r6, pc}
 80023ec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80023ee:	f003 f9fd 	bl	80057ec <__retarget_lock_acquire_recursive>
 80023f2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023f6:	b29a      	uxth	r2, r3
 80023f8:	e7d2      	b.n	80023a0 <_puts_r+0x3c>
 80023fa:	bf00      	nop
 80023fc:	08007108 	.word	0x08007108

08002400 <puts>:
 8002400:	4b02      	ldr	r3, [pc, #8]	; (800240c <puts+0xc>)
 8002402:	4601      	mov	r1, r0
 8002404:	6818      	ldr	r0, [r3, #0]
 8002406:	f7ff bfad 	b.w	8002364 <_puts_r>
 800240a:	bf00      	nop
 800240c:	20000068 	.word	0x20000068

08002410 <_vfprintf_r>:
 8002410:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002414:	b0d7      	sub	sp, #348	; 0x15c
 8002416:	461c      	mov	r4, r3
 8002418:	4689      	mov	r9, r1
 800241a:	4617      	mov	r7, r2
 800241c:	4605      	mov	r5, r0
 800241e:	9003      	str	r0, [sp, #12]
 8002420:	f003 f9d2 	bl	80057c8 <_localeconv_r>
 8002424:	6803      	ldr	r3, [r0, #0]
 8002426:	9316      	str	r3, [sp, #88]	; 0x58
 8002428:	4618      	mov	r0, r3
 800242a:	f7fe f909 	bl	8000640 <strlen>
 800242e:	9408      	str	r4, [sp, #32]
 8002430:	9015      	str	r0, [sp, #84]	; 0x54
 8002432:	b11d      	cbz	r5, 800243c <_vfprintf_r+0x2c>
 8002434:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002436:	2b00      	cmp	r3, #0
 8002438:	f000 8107 	beq.w	800264a <_vfprintf_r+0x23a>
 800243c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002440:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002444:	07c8      	lsls	r0, r1, #31
 8002446:	b293      	uxth	r3, r2
 8002448:	d402      	bmi.n	8002450 <_vfprintf_r+0x40>
 800244a:	0599      	lsls	r1, r3, #22
 800244c:	f140 811f 	bpl.w	800268e <_vfprintf_r+0x27e>
 8002450:	049e      	lsls	r6, r3, #18
 8002452:	d40a      	bmi.n	800246a <_vfprintf_r+0x5a>
 8002454:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002458:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800245c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002460:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002464:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002468:	b29b      	uxth	r3, r3
 800246a:	071d      	lsls	r5, r3, #28
 800246c:	f140 80b2 	bpl.w	80025d4 <_vfprintf_r+0x1c4>
 8002470:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002474:	2a00      	cmp	r2, #0
 8002476:	f000 80ad 	beq.w	80025d4 <_vfprintf_r+0x1c4>
 800247a:	f003 021a 	and.w	r2, r3, #26
 800247e:	2a0a      	cmp	r2, #10
 8002480:	f000 80c9 	beq.w	8002616 <_vfprintf_r+0x206>
 8002484:	2300      	movs	r3, #0
 8002486:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80026a0 <_vfprintf_r+0x290>
 800248a:	9310      	str	r3, [sp, #64]	; 0x40
 800248c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002490:	9317      	str	r3, [sp, #92]	; 0x5c
 8002492:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002496:	931b      	str	r3, [sp, #108]	; 0x6c
 8002498:	9318      	str	r3, [sp, #96]	; 0x60
 800249a:	9305      	str	r3, [sp, #20]
 800249c:	ab2d      	add	r3, sp, #180	; 0xb4
 800249e:	932a      	str	r3, [sp, #168]	; 0xa8
 80024a0:	469b      	mov	fp, r3
 80024a2:	783b      	ldrb	r3, [r7, #0]
 80024a4:	f8cd 901c 	str.w	r9, [sp, #28]
 80024a8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80024ac:	2b00      	cmp	r3, #0
 80024ae:	f000 8259 	beq.w	8002964 <_vfprintf_r+0x554>
 80024b2:	2b25      	cmp	r3, #37	; 0x25
 80024b4:	463c      	mov	r4, r7
 80024b6:	d102      	bne.n	80024be <_vfprintf_r+0xae>
 80024b8:	e01d      	b.n	80024f6 <_vfprintf_r+0xe6>
 80024ba:	2b25      	cmp	r3, #37	; 0x25
 80024bc:	d003      	beq.n	80024c6 <_vfprintf_r+0xb6>
 80024be:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80024c2:	2b00      	cmp	r3, #0
 80024c4:	d1f9      	bne.n	80024ba <_vfprintf_r+0xaa>
 80024c6:	1be5      	subs	r5, r4, r7
 80024c8:	b18d      	cbz	r5, 80024ee <_vfprintf_r+0xde>
 80024ca:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80024ce:	3301      	adds	r3, #1
 80024d0:	442a      	add	r2, r5
 80024d2:	2b07      	cmp	r3, #7
 80024d4:	f8cb 7000 	str.w	r7, [fp]
 80024d8:	f8cb 5004 	str.w	r5, [fp, #4]
 80024dc:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80024e0:	f300 80ca 	bgt.w	8002678 <_vfprintf_r+0x268>
 80024e4:	f10b 0b08 	add.w	fp, fp, #8
 80024e8:	9b05      	ldr	r3, [sp, #20]
 80024ea:	442b      	add	r3, r5
 80024ec:	9305      	str	r3, [sp, #20]
 80024ee:	7823      	ldrb	r3, [r4, #0]
 80024f0:	2b00      	cmp	r3, #0
 80024f2:	f000 8237 	beq.w	8002964 <_vfprintf_r+0x554>
 80024f6:	2300      	movs	r3, #0
 80024f8:	7866      	ldrb	r6, [r4, #1]
 80024fa:	9306      	str	r3, [sp, #24]
 80024fc:	4698      	mov	r8, r3
 80024fe:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002502:	f104 0a01 	add.w	sl, r4, #1
 8002506:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800250a:	252b      	movs	r5, #43	; 0x2b
 800250c:	f10a 0a01 	add.w	sl, sl, #1
 8002510:	f1a6 0320 	sub.w	r3, r6, #32
 8002514:	2b5a      	cmp	r3, #90	; 0x5a
 8002516:	f200 842a 	bhi.w	8002d6e <_vfprintf_r+0x95e>
 800251a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800251e:	03aa      	.short	0x03aa
 8002520:	04280428 	.word	0x04280428
 8002524:	0428029c 	.word	0x0428029c
 8002528:	04280428 	.word	0x04280428
 800252c:	042802a7 	.word	0x042802a7
 8002530:	02c60428 	.word	0x02c60428
 8002534:	042802d2 	.word	0x042802d2
 8002538:	02dc02d7 	.word	0x02dc02d7
 800253c:	02f60428 	.word	0x02f60428
 8002540:	026d026d 	.word	0x026d026d
 8002544:	026d026d 	.word	0x026d026d
 8002548:	026d026d 	.word	0x026d026d
 800254c:	026d026d 	.word	0x026d026d
 8002550:	0428026d 	.word	0x0428026d
 8002554:	04280428 	.word	0x04280428
 8002558:	04280428 	.word	0x04280428
 800255c:	04280428 	.word	0x04280428
 8002560:	042802fb 	.word	0x042802fb
 8002564:	03f3033c 	.word	0x03f3033c
 8002568:	02fb02fb 	.word	0x02fb02fb
 800256c:	042802fb 	.word	0x042802fb
 8002570:	04280428 	.word	0x04280428
 8002574:	03ee0428 	.word	0x03ee0428
 8002578:	04280428 	.word	0x04280428
 800257c:	0428009a 	.word	0x0428009a
 8002580:	04280428 	.word	0x04280428
 8002584:	04280350 	.word	0x04280350
 8002588:	04280379 	.word	0x04280379
 800258c:	03900428 	.word	0x03900428
 8002590:	04280428 	.word	0x04280428
 8002594:	04280428 	.word	0x04280428
 8002598:	04280428 	.word	0x04280428
 800259c:	04280428 	.word	0x04280428
 80025a0:	042802fb 	.word	0x042802fb
 80025a4:	00c5033c 	.word	0x00c5033c
 80025a8:	02fb02fb 	.word	0x02fb02fb
 80025ac:	03d102fb 	.word	0x03d102fb
 80025b0:	007000c5 	.word	0x007000c5
 80025b4:	03b50428 	.word	0x03b50428
 80025b8:	03c20428 	.word	0x03c20428
 80025bc:	03de009c 	.word	0x03de009c
 80025c0:	04280070 	.word	0x04280070
 80025c4:	00720350 	.word	0x00720350
 80025c8:	0428022c 	.word	0x0428022c
 80025cc:	027c0428 	.word	0x027c0428
 80025d0:	00720428 	.word	0x00720428
 80025d4:	4649      	mov	r1, r9
 80025d6:	9803      	ldr	r0, [sp, #12]
 80025d8:	f001 fc9a 	bl	8003f10 <__swsetup_r>
 80025dc:	b1a0      	cbz	r0, 8002608 <_vfprintf_r+0x1f8>
 80025de:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80025e2:	07d8      	lsls	r0, r3, #31
 80025e4:	d404      	bmi.n	80025f0 <_vfprintf_r+0x1e0>
 80025e6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80025ea:	0599      	lsls	r1, r3, #22
 80025ec:	f140 83b7 	bpl.w	8002d5e <_vfprintf_r+0x94e>
 80025f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80025f4:	9305      	str	r3, [sp, #20]
 80025f6:	9805      	ldr	r0, [sp, #20]
 80025f8:	b057      	add	sp, #348	; 0x15c
 80025fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025fe:	f048 0820 	orr.w	r8, r8, #32
 8002602:	f89a 6000 	ldrb.w	r6, [sl]
 8002606:	e781      	b.n	800250c <_vfprintf_r+0xfc>
 8002608:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800260c:	f003 021a 	and.w	r2, r3, #26
 8002610:	2a0a      	cmp	r2, #10
 8002612:	f47f af37 	bne.w	8002484 <_vfprintf_r+0x74>
 8002616:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800261a:	2a00      	cmp	r2, #0
 800261c:	f6ff af32 	blt.w	8002484 <_vfprintf_r+0x74>
 8002620:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002624:	07d2      	lsls	r2, r2, #31
 8002626:	d405      	bmi.n	8002634 <_vfprintf_r+0x224>
 8002628:	059b      	lsls	r3, r3, #22
 800262a:	d403      	bmi.n	8002634 <_vfprintf_r+0x224>
 800262c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002630:	f003 f8de 	bl	80057f0 <__retarget_lock_release_recursive>
 8002634:	4623      	mov	r3, r4
 8002636:	463a      	mov	r2, r7
 8002638:	4649      	mov	r1, r9
 800263a:	9803      	ldr	r0, [sp, #12]
 800263c:	f001 fc26 	bl	8003e8c <__sbprintf>
 8002640:	9005      	str	r0, [sp, #20]
 8002642:	9805      	ldr	r0, [sp, #20]
 8002644:	b057      	add	sp, #348	; 0x15c
 8002646:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800264a:	9803      	ldr	r0, [sp, #12]
 800264c:	f002 fd7e 	bl	800514c <__sinit>
 8002650:	e6f4      	b.n	800243c <_vfprintf_r+0x2c>
 8002652:	f048 0810 	orr.w	r8, r8, #16
 8002656:	f018 0f20 	tst.w	r8, #32
 800265a:	f000 836c 	beq.w	8002d36 <_vfprintf_r+0x926>
 800265e:	9c08      	ldr	r4, [sp, #32]
 8002660:	3407      	adds	r4, #7
 8002662:	f024 0307 	bic.w	r3, r4, #7
 8002666:	e9d3 4500 	ldrd	r4, r5, [r3]
 800266a:	f103 0208 	add.w	r2, r3, #8
 800266e:	9208      	str	r2, [sp, #32]
 8002670:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002674:	2200      	movs	r2, #0
 8002676:	e18c      	b.n	8002992 <_vfprintf_r+0x582>
 8002678:	aa2a      	add	r2, sp, #168	; 0xa8
 800267a:	9907      	ldr	r1, [sp, #28]
 800267c:	9803      	ldr	r0, [sp, #12]
 800267e:	f004 f9f5 	bl	8006a6c <__sprint_r>
 8002682:	2800      	cmp	r0, #0
 8002684:	f041 8376 	bne.w	8003d74 <_vfprintf_r+0x1964>
 8002688:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800268c:	e72c      	b.n	80024e8 <_vfprintf_r+0xd8>
 800268e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002692:	f003 f8ab 	bl	80057ec <__retarget_lock_acquire_recursive>
 8002696:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800269a:	b293      	uxth	r3, r2
 800269c:	e6d8      	b.n	8002450 <_vfprintf_r+0x40>
 800269e:	bf00      	nop
	...
 80026a8:	4643      	mov	r3, r8
 80026aa:	069f      	lsls	r7, r3, #26
 80026ac:	f140 832f 	bpl.w	8002d0e <_vfprintf_r+0x8fe>
 80026b0:	9c08      	ldr	r4, [sp, #32]
 80026b2:	3407      	adds	r4, #7
 80026b4:	f024 0407 	bic.w	r4, r4, #7
 80026b8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80026bc:	f104 0208 	add.w	r2, r4, #8
 80026c0:	9208      	str	r2, [sp, #32]
 80026c2:	4604      	mov	r4, r0
 80026c4:	460d      	mov	r5, r1
 80026c6:	2800      	cmp	r0, #0
 80026c8:	f171 0200 	sbcs.w	r2, r1, #0
 80026cc:	da05      	bge.n	80026da <_vfprintf_r+0x2ca>
 80026ce:	222d      	movs	r2, #45	; 0x2d
 80026d0:	4264      	negs	r4, r4
 80026d2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80026d6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80026da:	aa56      	add	r2, sp, #344	; 0x158
 80026dc:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80026e0:	9204      	str	r2, [sp, #16]
 80026e2:	f000 84b2 	beq.w	800304a <_vfprintf_r+0xc3a>
 80026e6:	2201      	movs	r2, #1
 80026e8:	ea54 0105 	orrs.w	r1, r4, r5
 80026ec:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80026f0:	f040 8159 	bne.w	80029a6 <_vfprintf_r+0x596>
 80026f4:	f1b9 0f00 	cmp.w	r9, #0
 80026f8:	f040 8619 	bne.w	800332e <_vfprintf_r+0xf1e>
 80026fc:	2a00      	cmp	r2, #0
 80026fe:	f040 8508 	bne.w	8003112 <_vfprintf_r+0xd02>
 8002702:	f013 0301 	ands.w	r3, r3, #1
 8002706:	af56      	add	r7, sp, #344	; 0x158
 8002708:	9309      	str	r3, [sp, #36]	; 0x24
 800270a:	d002      	beq.n	8002712 <_vfprintf_r+0x302>
 800270c:	2330      	movs	r3, #48	; 0x30
 800270e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002712:	2300      	movs	r3, #0
 8002714:	930a      	str	r3, [sp, #40]	; 0x28
 8002716:	930f      	str	r3, [sp, #60]	; 0x3c
 8002718:	9314      	str	r3, [sp, #80]	; 0x50
 800271a:	9311      	str	r3, [sp, #68]	; 0x44
 800271c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800271e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002722:	454b      	cmp	r3, r9
 8002724:	bfb8      	it	lt
 8002726:	464b      	movlt	r3, r9
 8002728:	9304      	str	r3, [sp, #16]
 800272a:	b112      	cbz	r2, 8002732 <_vfprintf_r+0x322>
 800272c:	9b04      	ldr	r3, [sp, #16]
 800272e:	3301      	adds	r3, #1
 8002730:	9304      	str	r3, [sp, #16]
 8002732:	f018 0302 	ands.w	r3, r8, #2
 8002736:	930b      	str	r3, [sp, #44]	; 0x2c
 8002738:	d002      	beq.n	8002740 <_vfprintf_r+0x330>
 800273a:	9b04      	ldr	r3, [sp, #16]
 800273c:	3302      	adds	r3, #2
 800273e:	9304      	str	r3, [sp, #16]
 8002740:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002744:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002746:	930e      	str	r3, [sp, #56]	; 0x38
 8002748:	d13f      	bne.n	80027ca <_vfprintf_r+0x3ba>
 800274a:	9b06      	ldr	r3, [sp, #24]
 800274c:	9904      	ldr	r1, [sp, #16]
 800274e:	1a5d      	subs	r5, r3, r1
 8002750:	2d00      	cmp	r5, #0
 8002752:	dd3a      	ble.n	80027ca <_vfprintf_r+0x3ba>
 8002754:	2d10      	cmp	r5, #16
 8002756:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002758:	dd29      	ble.n	80027ae <_vfprintf_r+0x39e>
 800275a:	4659      	mov	r1, fp
 800275c:	4620      	mov	r0, r4
 800275e:	9620      	str	r6, [sp, #128]	; 0x80
 8002760:	2310      	movs	r3, #16
 8002762:	9c03      	ldr	r4, [sp, #12]
 8002764:	9e07      	ldr	r6, [sp, #28]
 8002766:	46bb      	mov	fp, r7
 8002768:	e004      	b.n	8002774 <_vfprintf_r+0x364>
 800276a:	3d10      	subs	r5, #16
 800276c:	2d10      	cmp	r5, #16
 800276e:	f101 0108 	add.w	r1, r1, #8
 8002772:	dd18      	ble.n	80027a6 <_vfprintf_r+0x396>
 8002774:	3201      	adds	r2, #1
 8002776:	4fba      	ldr	r7, [pc, #744]	; (8002a60 <_vfprintf_r+0x650>)
 8002778:	3010      	adds	r0, #16
 800277a:	2a07      	cmp	r2, #7
 800277c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002780:	e9c1 7300 	strd	r7, r3, [r1]
 8002784:	ddf1      	ble.n	800276a <_vfprintf_r+0x35a>
 8002786:	aa2a      	add	r2, sp, #168	; 0xa8
 8002788:	4631      	mov	r1, r6
 800278a:	4620      	mov	r0, r4
 800278c:	930c      	str	r3, [sp, #48]	; 0x30
 800278e:	f004 f96d 	bl	8006a6c <__sprint_r>
 8002792:	2800      	cmp	r0, #0
 8002794:	f040 843d 	bne.w	8003012 <_vfprintf_r+0xc02>
 8002798:	3d10      	subs	r5, #16
 800279a:	2d10      	cmp	r5, #16
 800279c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027a0:	a92d      	add	r1, sp, #180	; 0xb4
 80027a2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80027a4:	dce6      	bgt.n	8002774 <_vfprintf_r+0x364>
 80027a6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80027a8:	465f      	mov	r7, fp
 80027aa:	4604      	mov	r4, r0
 80027ac:	468b      	mov	fp, r1
 80027ae:	3201      	adds	r2, #1
 80027b0:	4bab      	ldr	r3, [pc, #684]	; (8002a60 <_vfprintf_r+0x650>)
 80027b2:	442c      	add	r4, r5
 80027b4:	2a07      	cmp	r2, #7
 80027b6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027ba:	e9cb 3500 	strd	r3, r5, [fp]
 80027be:	f300 84ff 	bgt.w	80031c0 <_vfprintf_r+0xdb0>
 80027c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027c6:	f10b 0b08 	add.w	fp, fp, #8
 80027ca:	b172      	cbz	r2, 80027ea <_vfprintf_r+0x3da>
 80027cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027ce:	3201      	adds	r2, #1
 80027d0:	3401      	adds	r4, #1
 80027d2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80027d6:	2101      	movs	r1, #1
 80027d8:	2a07      	cmp	r2, #7
 80027da:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027de:	e9cb 0100 	strd	r0, r1, [fp]
 80027e2:	f300 8418 	bgt.w	8003016 <_vfprintf_r+0xc06>
 80027e6:	f10b 0b08 	add.w	fp, fp, #8
 80027ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80027ec:	b16b      	cbz	r3, 800280a <_vfprintf_r+0x3fa>
 80027ee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027f0:	3301      	adds	r3, #1
 80027f2:	3402      	adds	r4, #2
 80027f4:	a923      	add	r1, sp, #140	; 0x8c
 80027f6:	2202      	movs	r2, #2
 80027f8:	2b07      	cmp	r3, #7
 80027fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027fe:	e9cb 1200 	strd	r1, r2, [fp]
 8002802:	f300 8415 	bgt.w	8003030 <_vfprintf_r+0xc20>
 8002806:	f10b 0b08 	add.w	fp, fp, #8
 800280a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800280c:	2b80      	cmp	r3, #128	; 0x80
 800280e:	f000 8331 	beq.w	8002e74 <_vfprintf_r+0xa64>
 8002812:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002814:	eba9 0503 	sub.w	r5, r9, r3
 8002818:	2d00      	cmp	r5, #0
 800281a:	dd37      	ble.n	800288c <_vfprintf_r+0x47c>
 800281c:	2d10      	cmp	r5, #16
 800281e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002820:	4b90      	ldr	r3, [pc, #576]	; (8002a64 <_vfprintf_r+0x654>)
 8002822:	dd28      	ble.n	8002876 <_vfprintf_r+0x466>
 8002824:	4659      	mov	r1, fp
 8002826:	4620      	mov	r0, r4
 8002828:	46bb      	mov	fp, r7
 800282a:	f04f 0910 	mov.w	r9, #16
 800282e:	4637      	mov	r7, r6
 8002830:	461c      	mov	r4, r3
 8002832:	9e07      	ldr	r6, [sp, #28]
 8002834:	e004      	b.n	8002840 <_vfprintf_r+0x430>
 8002836:	3d10      	subs	r5, #16
 8002838:	2d10      	cmp	r5, #16
 800283a:	f101 0108 	add.w	r1, r1, #8
 800283e:	dd15      	ble.n	800286c <_vfprintf_r+0x45c>
 8002840:	3201      	adds	r2, #1
 8002842:	3010      	adds	r0, #16
 8002844:	2a07      	cmp	r2, #7
 8002846:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800284a:	e9c1 4900 	strd	r4, r9, [r1]
 800284e:	ddf2      	ble.n	8002836 <_vfprintf_r+0x426>
 8002850:	aa2a      	add	r2, sp, #168	; 0xa8
 8002852:	4631      	mov	r1, r6
 8002854:	9803      	ldr	r0, [sp, #12]
 8002856:	f004 f909 	bl	8006a6c <__sprint_r>
 800285a:	2800      	cmp	r0, #0
 800285c:	f040 83d9 	bne.w	8003012 <_vfprintf_r+0xc02>
 8002860:	3d10      	subs	r5, #16
 8002862:	2d10      	cmp	r5, #16
 8002864:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002868:	a92d      	add	r1, sp, #180	; 0xb4
 800286a:	dce9      	bgt.n	8002840 <_vfprintf_r+0x430>
 800286c:	463e      	mov	r6, r7
 800286e:	4623      	mov	r3, r4
 8002870:	465f      	mov	r7, fp
 8002872:	4604      	mov	r4, r0
 8002874:	468b      	mov	fp, r1
 8002876:	3201      	adds	r2, #1
 8002878:	442c      	add	r4, r5
 800287a:	2a07      	cmp	r2, #7
 800287c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002880:	e9cb 3500 	strd	r3, r5, [fp]
 8002884:	f300 83ef 	bgt.w	8003066 <_vfprintf_r+0xc56>
 8002888:	f10b 0b08 	add.w	fp, fp, #8
 800288c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002890:	f040 8280 	bne.w	8002d94 <_vfprintf_r+0x984>
 8002894:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002896:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002898:	f8cb 7000 	str.w	r7, [fp]
 800289c:	3301      	adds	r3, #1
 800289e:	4414      	add	r4, r2
 80028a0:	2b07      	cmp	r3, #7
 80028a2:	942c      	str	r4, [sp, #176]	; 0xb0
 80028a4:	f8cb 2004 	str.w	r2, [fp, #4]
 80028a8:	932b      	str	r3, [sp, #172]	; 0xac
 80028aa:	f300 8392 	bgt.w	8002fd2 <_vfprintf_r+0xbc2>
 80028ae:	f10b 0b08 	add.w	fp, fp, #8
 80028b2:	f018 0f04 	tst.w	r8, #4
 80028b6:	d03b      	beq.n	8002930 <_vfprintf_r+0x520>
 80028b8:	9b06      	ldr	r3, [sp, #24]
 80028ba:	9a04      	ldr	r2, [sp, #16]
 80028bc:	1a9d      	subs	r5, r3, r2
 80028be:	2d00      	cmp	r5, #0
 80028c0:	dd36      	ble.n	8002930 <_vfprintf_r+0x520>
 80028c2:	2d10      	cmp	r5, #16
 80028c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028c6:	dd21      	ble.n	800290c <_vfprintf_r+0x4fc>
 80028c8:	2610      	movs	r6, #16
 80028ca:	9f03      	ldr	r7, [sp, #12]
 80028cc:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80028d0:	e004      	b.n	80028dc <_vfprintf_r+0x4cc>
 80028d2:	3d10      	subs	r5, #16
 80028d4:	2d10      	cmp	r5, #16
 80028d6:	f10b 0b08 	add.w	fp, fp, #8
 80028da:	dd17      	ble.n	800290c <_vfprintf_r+0x4fc>
 80028dc:	3301      	adds	r3, #1
 80028de:	4a60      	ldr	r2, [pc, #384]	; (8002a60 <_vfprintf_r+0x650>)
 80028e0:	3410      	adds	r4, #16
 80028e2:	2b07      	cmp	r3, #7
 80028e4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028e8:	e9cb 2600 	strd	r2, r6, [fp]
 80028ec:	ddf1      	ble.n	80028d2 <_vfprintf_r+0x4c2>
 80028ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80028f0:	4641      	mov	r1, r8
 80028f2:	4638      	mov	r0, r7
 80028f4:	f004 f8ba 	bl	8006a6c <__sprint_r>
 80028f8:	2800      	cmp	r0, #0
 80028fa:	f040 856c 	bne.w	80033d6 <_vfprintf_r+0xfc6>
 80028fe:	3d10      	subs	r5, #16
 8002900:	2d10      	cmp	r5, #16
 8002902:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002906:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800290a:	dce7      	bgt.n	80028dc <_vfprintf_r+0x4cc>
 800290c:	3301      	adds	r3, #1
 800290e:	4a54      	ldr	r2, [pc, #336]	; (8002a60 <_vfprintf_r+0x650>)
 8002910:	442c      	add	r4, r5
 8002912:	2b07      	cmp	r3, #7
 8002914:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002918:	e9cb 2500 	strd	r2, r5, [fp]
 800291c:	dd08      	ble.n	8002930 <_vfprintf_r+0x520>
 800291e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002920:	9907      	ldr	r1, [sp, #28]
 8002922:	9803      	ldr	r0, [sp, #12]
 8002924:	f004 f8a2 	bl	8006a6c <__sprint_r>
 8002928:	2800      	cmp	r0, #0
 800292a:	f040 82e9 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 800292e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002930:	9904      	ldr	r1, [sp, #16]
 8002932:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002936:	428a      	cmp	r2, r1
 8002938:	bfac      	ite	ge
 800293a:	189b      	addge	r3, r3, r2
 800293c:	185b      	addlt	r3, r3, r1
 800293e:	9305      	str	r3, [sp, #20]
 8002940:	2c00      	cmp	r4, #0
 8002942:	f040 82d5 	bne.w	8002ef0 <_vfprintf_r+0xae0>
 8002946:	2300      	movs	r3, #0
 8002948:	932b      	str	r3, [sp, #172]	; 0xac
 800294a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800294c:	b11b      	cbz	r3, 8002956 <_vfprintf_r+0x546>
 800294e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002950:	9803      	ldr	r0, [sp, #12]
 8002952:	f002 fc9d 	bl	8005290 <_free_r>
 8002956:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800295a:	4657      	mov	r7, sl
 800295c:	783b      	ldrb	r3, [r7, #0]
 800295e:	2b00      	cmp	r3, #0
 8002960:	f47f ada7 	bne.w	80024b2 <_vfprintf_r+0xa2>
 8002964:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002966:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800296a:	2b00      	cmp	r3, #0
 800296c:	f041 80e7 	bne.w	8003b3e <_vfprintf_r+0x172e>
 8002970:	2300      	movs	r3, #0
 8002972:	932b      	str	r3, [sp, #172]	; 0xac
 8002974:	e2cb      	b.n	8002f0e <_vfprintf_r+0xafe>
 8002976:	4643      	mov	r3, r8
 8002978:	069a      	lsls	r2, r3, #26
 800297a:	f140 814e 	bpl.w	8002c1a <_vfprintf_r+0x80a>
 800297e:	9c08      	ldr	r4, [sp, #32]
 8002980:	3407      	adds	r4, #7
 8002982:	f024 0207 	bic.w	r2, r4, #7
 8002986:	f102 0108 	add.w	r1, r2, #8
 800298a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800298e:	9108      	str	r1, [sp, #32]
 8002990:	2201      	movs	r2, #1
 8002992:	2100      	movs	r1, #0
 8002994:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002998:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800299c:	a956      	add	r1, sp, #344	; 0x158
 800299e:	9104      	str	r1, [sp, #16]
 80029a0:	f47f aea2 	bne.w	80026e8 <_vfprintf_r+0x2d8>
 80029a4:	4698      	mov	r8, r3
 80029a6:	2a01      	cmp	r2, #1
 80029a8:	f000 8350 	beq.w	800304c <_vfprintf_r+0xc3c>
 80029ac:	2a02      	cmp	r2, #2
 80029ae:	f000 831b 	beq.w	8002fe8 <_vfprintf_r+0xbd8>
 80029b2:	a956      	add	r1, sp, #344	; 0x158
 80029b4:	e000      	b.n	80029b8 <_vfprintf_r+0x5a8>
 80029b6:	4639      	mov	r1, r7
 80029b8:	08e2      	lsrs	r2, r4, #3
 80029ba:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80029be:	08e8      	lsrs	r0, r5, #3
 80029c0:	f004 0307 	and.w	r3, r4, #7
 80029c4:	4605      	mov	r5, r0
 80029c6:	4614      	mov	r4, r2
 80029c8:	3330      	adds	r3, #48	; 0x30
 80029ca:	ea54 0205 	orrs.w	r2, r4, r5
 80029ce:	f801 3c01 	strb.w	r3, [r1, #-1]
 80029d2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80029d6:	d1ee      	bne.n	80029b6 <_vfprintf_r+0x5a6>
 80029d8:	f018 0f01 	tst.w	r8, #1
 80029dc:	f000 8314 	beq.w	8003008 <_vfprintf_r+0xbf8>
 80029e0:	2b30      	cmp	r3, #48	; 0x30
 80029e2:	f000 8311 	beq.w	8003008 <_vfprintf_r+0xbf8>
 80029e6:	9a04      	ldr	r2, [sp, #16]
 80029e8:	3902      	subs	r1, #2
 80029ea:	2330      	movs	r3, #48	; 0x30
 80029ec:	1a52      	subs	r2, r2, r1
 80029ee:	f807 3c01 	strb.w	r3, [r7, #-1]
 80029f2:	9209      	str	r2, [sp, #36]	; 0x24
 80029f4:	460f      	mov	r7, r1
 80029f6:	e68c      	b.n	8002712 <_vfprintf_r+0x302>
 80029f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029fc:	2200      	movs	r2, #0
 80029fe:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a02:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a06:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a0a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a0e:	2b09      	cmp	r3, #9
 8002a10:	d9f5      	bls.n	80029fe <_vfprintf_r+0x5ee>
 8002a12:	9206      	str	r2, [sp, #24]
 8002a14:	e57c      	b.n	8002510 <_vfprintf_r+0x100>
 8002a16:	4b14      	ldr	r3, [pc, #80]	; (8002a68 <_vfprintf_r+0x658>)
 8002a18:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a1a:	f018 0f20 	tst.w	r8, #32
 8002a1e:	f000 8114 	beq.w	8002c4a <_vfprintf_r+0x83a>
 8002a22:	9c08      	ldr	r4, [sp, #32]
 8002a24:	3407      	adds	r4, #7
 8002a26:	f024 0307 	bic.w	r3, r4, #7
 8002a2a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a2e:	f103 0208 	add.w	r2, r3, #8
 8002a32:	9208      	str	r2, [sp, #32]
 8002a34:	f018 0f01 	tst.w	r8, #1
 8002a38:	d009      	beq.n	8002a4e <_vfprintf_r+0x63e>
 8002a3a:	ea54 0305 	orrs.w	r3, r4, r5
 8002a3e:	d006      	beq.n	8002a4e <_vfprintf_r+0x63e>
 8002a40:	2330      	movs	r3, #48	; 0x30
 8002a42:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a46:	f048 0802 	orr.w	r8, r8, #2
 8002a4a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a4e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a52:	2202      	movs	r2, #2
 8002a54:	e79d      	b.n	8002992 <_vfprintf_r+0x582>
 8002a56:	f048 0801 	orr.w	r8, r8, #1
 8002a5a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a5e:	e555      	b.n	800250c <_vfprintf_r+0xfc>
 8002a60:	08007150 	.word	0x08007150
 8002a64:	08007160 	.word	0x08007160
 8002a68:	0800711c 	.word	0x0800711c
 8002a6c:	9e03      	ldr	r6, [sp, #12]
 8002a6e:	4630      	mov	r0, r6
 8002a70:	f002 feaa 	bl	80057c8 <_localeconv_r>
 8002a74:	6843      	ldr	r3, [r0, #4]
 8002a76:	9318      	str	r3, [sp, #96]	; 0x60
 8002a78:	4618      	mov	r0, r3
 8002a7a:	f7fd fde1 	bl	8000640 <strlen>
 8002a7e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002a80:	4604      	mov	r4, r0
 8002a82:	4630      	mov	r0, r6
 8002a84:	f002 fea0 	bl	80057c8 <_localeconv_r>
 8002a88:	6883      	ldr	r3, [r0, #8]
 8002a8a:	931a      	str	r3, [sp, #104]	; 0x68
 8002a8c:	2c00      	cmp	r4, #0
 8002a8e:	f43f adb8 	beq.w	8002602 <_vfprintf_r+0x1f2>
 8002a92:	f89a 6000 	ldrb.w	r6, [sl]
 8002a96:	2b00      	cmp	r3, #0
 8002a98:	f43f ad38 	beq.w	800250c <_vfprintf_r+0xfc>
 8002a9c:	781b      	ldrb	r3, [r3, #0]
 8002a9e:	2b00      	cmp	r3, #0
 8002aa0:	f43f ad34 	beq.w	800250c <_vfprintf_r+0xfc>
 8002aa4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002aa8:	e530      	b.n	800250c <_vfprintf_r+0xfc>
 8002aaa:	9b08      	ldr	r3, [sp, #32]
 8002aac:	f89a 6000 	ldrb.w	r6, [sl]
 8002ab0:	681a      	ldr	r2, [r3, #0]
 8002ab2:	9206      	str	r2, [sp, #24]
 8002ab4:	2a00      	cmp	r2, #0
 8002ab6:	f103 0304 	add.w	r3, r3, #4
 8002aba:	f2c0 8697 	blt.w	80037ec <_vfprintf_r+0x13dc>
 8002abe:	9308      	str	r3, [sp, #32]
 8002ac0:	e524      	b.n	800250c <_vfprintf_r+0xfc>
 8002ac2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ac6:	f89a 6000 	ldrb.w	r6, [sl]
 8002aca:	e51f      	b.n	800250c <_vfprintf_r+0xfc>
 8002acc:	f89a 6000 	ldrb.w	r6, [sl]
 8002ad0:	f048 0804 	orr.w	r8, r8, #4
 8002ad4:	e51a      	b.n	800250c <_vfprintf_r+0xfc>
 8002ad6:	f89a 6000 	ldrb.w	r6, [sl]
 8002ada:	2e2a      	cmp	r6, #42	; 0x2a
 8002adc:	f10a 0201 	add.w	r2, sl, #1
 8002ae0:	f001 81b0 	beq.w	8003e44 <_vfprintf_r+0x1a34>
 8002ae4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ae8:	2b09      	cmp	r3, #9
 8002aea:	4692      	mov	sl, r2
 8002aec:	f04f 0900 	mov.w	r9, #0
 8002af0:	f63f ad0e 	bhi.w	8002510 <_vfprintf_r+0x100>
 8002af4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002af8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002afc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b00:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b04:	2b09      	cmp	r3, #9
 8002b06:	d9f5      	bls.n	8002af4 <_vfprintf_r+0x6e4>
 8002b08:	e502      	b.n	8002510 <_vfprintf_r+0x100>
 8002b0a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b12:	e4fb      	b.n	800250c <_vfprintf_r+0xfc>
 8002b14:	9c08      	ldr	r4, [sp, #32]
 8002b16:	3407      	adds	r4, #7
 8002b18:	f024 0407 	bic.w	r4, r4, #7
 8002b1c:	ed94 7b00 	vldr	d7, [r4]
 8002b20:	ec52 1b17 	vmov	r1, r2, d7
 8002b24:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b28:	931d      	str	r3, [sp, #116]	; 0x74
 8002b2a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b2e:	3408      	adds	r4, #8
 8002b30:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b34:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b38:	4bba      	ldr	r3, [pc, #744]	; (8002e24 <_vfprintf_r+0xa14>)
 8002b3a:	9408      	str	r4, [sp, #32]
 8002b3c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b40:	f7fe fa94 	bl	800106c <__aeabi_dcmpun>
 8002b44:	2800      	cmp	r0, #0
 8002b46:	f040 846f 	bne.w	8003428 <_vfprintf_r+0x1018>
 8002b4a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b4e:	4bb5      	ldr	r3, [pc, #724]	; (8002e24 <_vfprintf_r+0xa14>)
 8002b50:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b54:	f7fe fa6c 	bl	8001030 <__aeabi_dcmple>
 8002b58:	2800      	cmp	r0, #0
 8002b5a:	f040 8465 	bne.w	8003428 <_vfprintf_r+0x1018>
 8002b5e:	2200      	movs	r2, #0
 8002b60:	2300      	movs	r3, #0
 8002b62:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b66:	f7fe fa59 	bl	800101c <__aeabi_dcmplt>
 8002b6a:	2800      	cmp	r0, #0
 8002b6c:	f040 855b 	bne.w	8003626 <_vfprintf_r+0x1216>
 8002b70:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b74:	4fac      	ldr	r7, [pc, #688]	; (8002e28 <_vfprintf_r+0xa18>)
 8002b76:	4bad      	ldr	r3, [pc, #692]	; (8002e2c <_vfprintf_r+0xa1c>)
 8002b78:	2000      	movs	r0, #0
 8002b7a:	2103      	movs	r1, #3
 8002b7c:	9104      	str	r1, [sp, #16]
 8002b7e:	900a      	str	r0, [sp, #40]	; 0x28
 8002b80:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002b84:	2e47      	cmp	r6, #71	; 0x47
 8002b86:	bfd8      	it	le
 8002b88:	461f      	movle	r7, r3
 8002b8a:	9109      	str	r1, [sp, #36]	; 0x24
 8002b8c:	4681      	mov	r9, r0
 8002b8e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002b90:	9014      	str	r0, [sp, #80]	; 0x50
 8002b92:	9011      	str	r0, [sp, #68]	; 0x44
 8002b94:	e5c9      	b.n	800272a <_vfprintf_r+0x31a>
 8002b96:	9808      	ldr	r0, [sp, #32]
 8002b98:	2300      	movs	r3, #0
 8002b9a:	6801      	ldr	r1, [r0, #0]
 8002b9c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ba0:	461a      	mov	r2, r3
 8002ba2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002ba6:	2301      	movs	r3, #1
 8002ba8:	1d01      	adds	r1, r0, #4
 8002baa:	9304      	str	r3, [sp, #16]
 8002bac:	920a      	str	r2, [sp, #40]	; 0x28
 8002bae:	4691      	mov	r9, r2
 8002bb0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002bb2:	9214      	str	r2, [sp, #80]	; 0x50
 8002bb4:	9211      	str	r2, [sp, #68]	; 0x44
 8002bb6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002bba:	af3d      	add	r7, sp, #244	; 0xf4
 8002bbc:	e5b9      	b.n	8002732 <_vfprintf_r+0x322>
 8002bbe:	9b08      	ldr	r3, [sp, #32]
 8002bc0:	681f      	ldr	r7, [r3, #0]
 8002bc2:	2500      	movs	r5, #0
 8002bc4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bc8:	1d1c      	adds	r4, r3, #4
 8002bca:	2f00      	cmp	r7, #0
 8002bcc:	f000 8639 	beq.w	8003842 <_vfprintf_r+0x1432>
 8002bd0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002bd4:	f000 8711 	beq.w	80039fa <_vfprintf_r+0x15ea>
 8002bd8:	464a      	mov	r2, r9
 8002bda:	4629      	mov	r1, r5
 8002bdc:	4638      	mov	r0, r7
 8002bde:	f7fd fd9f 	bl	8000720 <memchr>
 8002be2:	900a      	str	r0, [sp, #40]	; 0x28
 8002be4:	2800      	cmp	r0, #0
 8002be6:	f000 85e7 	beq.w	80037b8 <_vfprintf_r+0x13a8>
 8002bea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002bec:	1bdb      	subs	r3, r3, r7
 8002bee:	9309      	str	r3, [sp, #36]	; 0x24
 8002bf0:	46a9      	mov	r9, r5
 8002bf2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002bf6:	9408      	str	r4, [sp, #32]
 8002bf8:	9304      	str	r3, [sp, #16]
 8002bfa:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002bfe:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c02:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c06:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c0a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c0e:	e58c      	b.n	800272a <_vfprintf_r+0x31a>
 8002c10:	f048 0310 	orr.w	r3, r8, #16
 8002c14:	069a      	lsls	r2, r3, #26
 8002c16:	f53f aeb2 	bmi.w	800297e <_vfprintf_r+0x56e>
 8002c1a:	9a08      	ldr	r2, [sp, #32]
 8002c1c:	06df      	lsls	r7, r3, #27
 8002c1e:	f102 0104 	add.w	r1, r2, #4
 8002c22:	f100 837e 	bmi.w	8003322 <_vfprintf_r+0xf12>
 8002c26:	065d      	lsls	r5, r3, #25
 8002c28:	9a08      	ldr	r2, [sp, #32]
 8002c2a:	f100 84e4 	bmi.w	80035f6 <_vfprintf_r+0x11e6>
 8002c2e:	059c      	lsls	r4, r3, #22
 8002c30:	f140 8377 	bpl.w	8003322 <_vfprintf_r+0xf12>
 8002c34:	7814      	ldrb	r4, [r2, #0]
 8002c36:	9108      	str	r1, [sp, #32]
 8002c38:	2500      	movs	r5, #0
 8002c3a:	2201      	movs	r2, #1
 8002c3c:	e6a9      	b.n	8002992 <_vfprintf_r+0x582>
 8002c3e:	4b7c      	ldr	r3, [pc, #496]	; (8002e30 <_vfprintf_r+0xa20>)
 8002c40:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c42:	f018 0f20 	tst.w	r8, #32
 8002c46:	f47f aeec 	bne.w	8002a22 <_vfprintf_r+0x612>
 8002c4a:	9a08      	ldr	r2, [sp, #32]
 8002c4c:	f018 0f10 	tst.w	r8, #16
 8002c50:	f102 0304 	add.w	r3, r2, #4
 8002c54:	f040 8354 	bne.w	8003300 <_vfprintf_r+0xef0>
 8002c58:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c5c:	9a08      	ldr	r2, [sp, #32]
 8002c5e:	f040 84d0 	bne.w	8003602 <_vfprintf_r+0x11f2>
 8002c62:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c66:	f000 834b 	beq.w	8003300 <_vfprintf_r+0xef0>
 8002c6a:	7814      	ldrb	r4, [r2, #0]
 8002c6c:	9308      	str	r3, [sp, #32]
 8002c6e:	2500      	movs	r5, #0
 8002c70:	e6e0      	b.n	8002a34 <_vfprintf_r+0x624>
 8002c72:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002c76:	f89a 6000 	ldrb.w	r6, [sl]
 8002c7a:	2b00      	cmp	r3, #0
 8002c7c:	f47f ac46 	bne.w	800250c <_vfprintf_r+0xfc>
 8002c80:	2320      	movs	r3, #32
 8002c82:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c86:	e441      	b.n	800250c <_vfprintf_r+0xfc>
 8002c88:	f89a 6000 	ldrb.w	r6, [sl]
 8002c8c:	2e6c      	cmp	r6, #108	; 0x6c
 8002c8e:	bf03      	ittte	eq
 8002c90:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c94:	f048 0820 	orreq.w	r8, r8, #32
 8002c98:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c9c:	f048 0810 	orrne.w	r8, r8, #16
 8002ca0:	e434      	b.n	800250c <_vfprintf_r+0xfc>
 8002ca2:	9a08      	ldr	r2, [sp, #32]
 8002ca4:	f018 0f20 	tst.w	r8, #32
 8002ca8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002cac:	9208      	str	r2, [sp, #32]
 8002cae:	f000 83a1 	beq.w	80033f4 <_vfprintf_r+0xfe4>
 8002cb2:	9a05      	ldr	r2, [sp, #20]
 8002cb4:	4610      	mov	r0, r2
 8002cb6:	17d1      	asrs	r1, r2, #31
 8002cb8:	e9c3 0100 	strd	r0, r1, [r3]
 8002cbc:	4657      	mov	r7, sl
 8002cbe:	e64d      	b.n	800295c <_vfprintf_r+0x54c>
 8002cc0:	f89a 6000 	ldrb.w	r6, [sl]
 8002cc4:	2e68      	cmp	r6, #104	; 0x68
 8002cc6:	bf03      	ittte	eq
 8002cc8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002ccc:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002cd0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002cd4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002cd8:	e418      	b.n	800250c <_vfprintf_r+0xfc>
 8002cda:	9908      	ldr	r1, [sp, #32]
 8002cdc:	4b55      	ldr	r3, [pc, #340]	; (8002e34 <_vfprintf_r+0xa24>)
 8002cde:	680c      	ldr	r4, [r1, #0]
 8002ce0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ce2:	f647 0230 	movw	r2, #30768	; 0x7830
 8002ce6:	3104      	adds	r1, #4
 8002ce8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002cec:	f048 0302 	orr.w	r3, r8, #2
 8002cf0:	9108      	str	r1, [sp, #32]
 8002cf2:	2500      	movs	r5, #0
 8002cf4:	2202      	movs	r2, #2
 8002cf6:	2678      	movs	r6, #120	; 0x78
 8002cf8:	e64b      	b.n	8002992 <_vfprintf_r+0x582>
 8002cfa:	f048 0808 	orr.w	r8, r8, #8
 8002cfe:	f89a 6000 	ldrb.w	r6, [sl]
 8002d02:	e403      	b.n	800250c <_vfprintf_r+0xfc>
 8002d04:	f048 0310 	orr.w	r3, r8, #16
 8002d08:	069f      	lsls	r7, r3, #26
 8002d0a:	f53f acd1 	bmi.w	80026b0 <_vfprintf_r+0x2a0>
 8002d0e:	9908      	ldr	r1, [sp, #32]
 8002d10:	06dd      	lsls	r5, r3, #27
 8002d12:	f101 0204 	add.w	r2, r1, #4
 8002d16:	f100 82fd 	bmi.w	8003314 <_vfprintf_r+0xf04>
 8002d1a:	065c      	lsls	r4, r3, #25
 8002d1c:	9908      	ldr	r1, [sp, #32]
 8002d1e:	f100 8475 	bmi.w	800360c <_vfprintf_r+0x11fc>
 8002d22:	0598      	lsls	r0, r3, #22
 8002d24:	f140 82f6 	bpl.w	8003314 <_vfprintf_r+0xf04>
 8002d28:	f991 4000 	ldrsb.w	r4, [r1]
 8002d2c:	9208      	str	r2, [sp, #32]
 8002d2e:	17e5      	asrs	r5, r4, #31
 8002d30:	4620      	mov	r0, r4
 8002d32:	4629      	mov	r1, r5
 8002d34:	e4c7      	b.n	80026c6 <_vfprintf_r+0x2b6>
 8002d36:	9a08      	ldr	r2, [sp, #32]
 8002d38:	f018 0f10 	tst.w	r8, #16
 8002d3c:	f102 0304 	add.w	r3, r2, #4
 8002d40:	f040 82e3 	bne.w	800330a <_vfprintf_r+0xefa>
 8002d44:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d48:	9a08      	ldr	r2, [sp, #32]
 8002d4a:	f040 8467 	bne.w	800361c <_vfprintf_r+0x120c>
 8002d4e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d52:	f000 82da 	beq.w	800330a <_vfprintf_r+0xefa>
 8002d56:	7814      	ldrb	r4, [r2, #0]
 8002d58:	9308      	str	r3, [sp, #32]
 8002d5a:	2500      	movs	r5, #0
 8002d5c:	e488      	b.n	8002670 <_vfprintf_r+0x260>
 8002d5e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d62:	f002 fd45 	bl	80057f0 <__retarget_lock_release_recursive>
 8002d66:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d6a:	9305      	str	r3, [sp, #20]
 8002d6c:	e443      	b.n	80025f6 <_vfprintf_r+0x1e6>
 8002d6e:	2e00      	cmp	r6, #0
 8002d70:	f43f adf8 	beq.w	8002964 <_vfprintf_r+0x554>
 8002d74:	2300      	movs	r3, #0
 8002d76:	2101      	movs	r1, #1
 8002d78:	461a      	mov	r2, r3
 8002d7a:	9104      	str	r1, [sp, #16]
 8002d7c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002d80:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d84:	930a      	str	r3, [sp, #40]	; 0x28
 8002d86:	4699      	mov	r9, r3
 8002d88:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d8a:	9314      	str	r3, [sp, #80]	; 0x50
 8002d8c:	9311      	str	r3, [sp, #68]	; 0x44
 8002d8e:	9109      	str	r1, [sp, #36]	; 0x24
 8002d90:	af3d      	add	r7, sp, #244	; 0xf4
 8002d92:	e4ce      	b.n	8002732 <_vfprintf_r+0x322>
 8002d94:	2e65      	cmp	r6, #101	; 0x65
 8002d96:	f340 80ca 	ble.w	8002f2e <_vfprintf_r+0xb1e>
 8002d9a:	2200      	movs	r2, #0
 8002d9c:	2300      	movs	r3, #0
 8002d9e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002da2:	f7fe f931 	bl	8001008 <__aeabi_dcmpeq>
 8002da6:	2800      	cmp	r0, #0
 8002da8:	f000 8169 	beq.w	800307e <_vfprintf_r+0xc6e>
 8002dac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dae:	4a22      	ldr	r2, [pc, #136]	; (8002e38 <_vfprintf_r+0xa28>)
 8002db0:	f8cb 2000 	str.w	r2, [fp]
 8002db4:	3301      	adds	r3, #1
 8002db6:	3401      	adds	r4, #1
 8002db8:	2201      	movs	r2, #1
 8002dba:	2b07      	cmp	r3, #7
 8002dbc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002dc0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002dc4:	f300 8406 	bgt.w	80035d4 <_vfprintf_r+0x11c4>
 8002dc8:	f10b 0b08 	add.w	fp, fp, #8
 8002dcc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002dce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002dd0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002dd2:	4293      	cmp	r3, r2
 8002dd4:	db03      	blt.n	8002dde <_vfprintf_r+0x9ce>
 8002dd6:	f018 0f01 	tst.w	r8, #1
 8002dda:	f43f ad6a 	beq.w	80028b2 <_vfprintf_r+0x4a2>
 8002dde:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002de0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002de2:	f8cb 2000 	str.w	r2, [fp]
 8002de6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002de8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002dec:	3301      	adds	r3, #1
 8002dee:	4414      	add	r4, r2
 8002df0:	2b07      	cmp	r3, #7
 8002df2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002df6:	f300 8517 	bgt.w	8003828 <_vfprintf_r+0x1418>
 8002dfa:	f10b 0b08 	add.w	fp, fp, #8
 8002dfe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e00:	1e5d      	subs	r5, r3, #1
 8002e02:	2d00      	cmp	r5, #0
 8002e04:	f77f ad55 	ble.w	80028b2 <_vfprintf_r+0x4a2>
 8002e08:	2d10      	cmp	r5, #16
 8002e0a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e0c:	4b0b      	ldr	r3, [pc, #44]	; (8002e3c <_vfprintf_r+0xa2c>)
 8002e0e:	f340 82e7 	ble.w	80033e0 <_vfprintf_r+0xfd0>
 8002e12:	4619      	mov	r1, r3
 8002e14:	2610      	movs	r6, #16
 8002e16:	4623      	mov	r3, r4
 8002e18:	9f03      	ldr	r7, [sp, #12]
 8002e1a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e1e:	460c      	mov	r4, r1
 8002e20:	e014      	b.n	8002e4c <_vfprintf_r+0xa3c>
 8002e22:	bf00      	nop
 8002e24:	7fefffff 	.word	0x7fefffff
 8002e28:	08007110 	.word	0x08007110
 8002e2c:	0800710c 	.word	0x0800710c
 8002e30:	08007130 	.word	0x08007130
 8002e34:	0800711c 	.word	0x0800711c
 8002e38:	0800714c 	.word	0x0800714c
 8002e3c:	08007160 	.word	0x08007160
 8002e40:	f10b 0b08 	add.w	fp, fp, #8
 8002e44:	3d10      	subs	r5, #16
 8002e46:	2d10      	cmp	r5, #16
 8002e48:	f340 82c7 	ble.w	80033da <_vfprintf_r+0xfca>
 8002e4c:	3201      	adds	r2, #1
 8002e4e:	3310      	adds	r3, #16
 8002e50:	2a07      	cmp	r2, #7
 8002e52:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e56:	e9cb 4600 	strd	r4, r6, [fp]
 8002e5a:	ddf1      	ble.n	8002e40 <_vfprintf_r+0xa30>
 8002e5c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e5e:	4649      	mov	r1, r9
 8002e60:	4638      	mov	r0, r7
 8002e62:	f003 fe03 	bl	8006a6c <__sprint_r>
 8002e66:	2800      	cmp	r0, #0
 8002e68:	d14c      	bne.n	8002f04 <_vfprintf_r+0xaf4>
 8002e6a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e6e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e72:	e7e7      	b.n	8002e44 <_vfprintf_r+0xa34>
 8002e74:	9b06      	ldr	r3, [sp, #24]
 8002e76:	9a04      	ldr	r2, [sp, #16]
 8002e78:	1a9d      	subs	r5, r3, r2
 8002e7a:	2d00      	cmp	r5, #0
 8002e7c:	f77f acc9 	ble.w	8002812 <_vfprintf_r+0x402>
 8002e80:	2d10      	cmp	r5, #16
 8002e82:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e84:	4bbc      	ldr	r3, [pc, #752]	; (8003178 <_vfprintf_r+0xd68>)
 8002e86:	dd27      	ble.n	8002ed8 <_vfprintf_r+0xac8>
 8002e88:	4659      	mov	r1, fp
 8002e8a:	4620      	mov	r0, r4
 8002e8c:	46bb      	mov	fp, r7
 8002e8e:	461c      	mov	r4, r3
 8002e90:	4637      	mov	r7, r6
 8002e92:	9e07      	ldr	r6, [sp, #28]
 8002e94:	e004      	b.n	8002ea0 <_vfprintf_r+0xa90>
 8002e96:	3d10      	subs	r5, #16
 8002e98:	2d10      	cmp	r5, #16
 8002e9a:	f101 0108 	add.w	r1, r1, #8
 8002e9e:	dd16      	ble.n	8002ece <_vfprintf_r+0xabe>
 8002ea0:	3201      	adds	r2, #1
 8002ea2:	3010      	adds	r0, #16
 8002ea4:	2310      	movs	r3, #16
 8002ea6:	2a07      	cmp	r2, #7
 8002ea8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002eac:	600c      	str	r4, [r1, #0]
 8002eae:	604b      	str	r3, [r1, #4]
 8002eb0:	ddf1      	ble.n	8002e96 <_vfprintf_r+0xa86>
 8002eb2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eb4:	4631      	mov	r1, r6
 8002eb6:	9803      	ldr	r0, [sp, #12]
 8002eb8:	f003 fdd8 	bl	8006a6c <__sprint_r>
 8002ebc:	2800      	cmp	r0, #0
 8002ebe:	f040 80a8 	bne.w	8003012 <_vfprintf_r+0xc02>
 8002ec2:	3d10      	subs	r5, #16
 8002ec4:	2d10      	cmp	r5, #16
 8002ec6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002eca:	a92d      	add	r1, sp, #180	; 0xb4
 8002ecc:	dce8      	bgt.n	8002ea0 <_vfprintf_r+0xa90>
 8002ece:	463e      	mov	r6, r7
 8002ed0:	4623      	mov	r3, r4
 8002ed2:	465f      	mov	r7, fp
 8002ed4:	4604      	mov	r4, r0
 8002ed6:	468b      	mov	fp, r1
 8002ed8:	3201      	adds	r2, #1
 8002eda:	442c      	add	r4, r5
 8002edc:	2a07      	cmp	r2, #7
 8002ede:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ee2:	e9cb 3500 	strd	r3, r5, [fp]
 8002ee6:	f300 8292 	bgt.w	800340e <_vfprintf_r+0xffe>
 8002eea:	f10b 0b08 	add.w	fp, fp, #8
 8002eee:	e490      	b.n	8002812 <_vfprintf_r+0x402>
 8002ef0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ef2:	9907      	ldr	r1, [sp, #28]
 8002ef4:	9803      	ldr	r0, [sp, #12]
 8002ef6:	f003 fdb9 	bl	8006a6c <__sprint_r>
 8002efa:	2800      	cmp	r0, #0
 8002efc:	f43f ad23 	beq.w	8002946 <_vfprintf_r+0x536>
 8002f00:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f04:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f06:	b111      	cbz	r1, 8002f0e <_vfprintf_r+0xafe>
 8002f08:	9803      	ldr	r0, [sp, #12]
 8002f0a:	f002 f9c1 	bl	8005290 <_free_r>
 8002f0e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f12:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f16:	07d0      	lsls	r0, r2, #31
 8002f18:	d402      	bmi.n	8002f20 <_vfprintf_r+0xb10>
 8002f1a:	0599      	lsls	r1, r3, #22
 8002f1c:	f140 81d0 	bpl.w	80032c0 <_vfprintf_r+0xeb0>
 8002f20:	065a      	lsls	r2, r3, #25
 8002f22:	f53f ab65 	bmi.w	80025f0 <_vfprintf_r+0x1e0>
 8002f26:	9805      	ldr	r0, [sp, #20]
 8002f28:	b057      	add	sp, #348	; 0x15c
 8002f2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f30:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f32:	2a01      	cmp	r2, #1
 8002f34:	f104 0401 	add.w	r4, r4, #1
 8002f38:	f103 0501 	add.w	r5, r3, #1
 8002f3c:	f10b 0608 	add.w	r6, fp, #8
 8002f40:	f340 811c 	ble.w	800317c <_vfprintf_r+0xd6c>
 8002f44:	2301      	movs	r3, #1
 8002f46:	2d07      	cmp	r5, #7
 8002f48:	f8cb 7000 	str.w	r7, [fp]
 8002f4c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f50:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f54:	f300 81bb 	bgt.w	80032ce <_vfprintf_r+0xebe>
 8002f58:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f5a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f5c:	1c69      	adds	r1, r5, #1
 8002f5e:	441c      	add	r4, r3
 8002f60:	2907      	cmp	r1, #7
 8002f62:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f64:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f68:	e9c6 2300 	strd	r2, r3, [r6]
 8002f6c:	f300 81bb 	bgt.w	80032e6 <_vfprintf_r+0xed6>
 8002f70:	3608      	adds	r6, #8
 8002f72:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f74:	1c53      	adds	r3, r2, #1
 8002f76:	461d      	mov	r5, r3
 8002f78:	9509      	str	r5, [sp, #36]	; 0x24
 8002f7a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002f7c:	930e      	str	r3, [sp, #56]	; 0x38
 8002f7e:	2200      	movs	r2, #0
 8002f80:	2300      	movs	r3, #0
 8002f82:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f86:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002f8a:	f106 0b08 	add.w	fp, r6, #8
 8002f8e:	f7fe f83b 	bl	8001008 <__aeabi_dcmpeq>
 8002f92:	2800      	cmp	r0, #0
 8002f94:	f040 80c2 	bne.w	800311c <_vfprintf_r+0xd0c>
 8002f98:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002f9a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002f9e:	3701      	adds	r7, #1
 8002fa0:	444c      	add	r4, r9
 8002fa2:	2d07      	cmp	r5, #7
 8002fa4:	6037      	str	r7, [r6, #0]
 8002fa6:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fa8:	952b      	str	r5, [sp, #172]	; 0xac
 8002faa:	f300 80f9 	bgt.w	80031a0 <_vfprintf_r+0xd90>
 8002fae:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fb0:	f106 0310 	add.w	r3, r6, #16
 8002fb4:	3202      	adds	r2, #2
 8002fb6:	465e      	mov	r6, fp
 8002fb8:	9209      	str	r2, [sp, #36]	; 0x24
 8002fba:	469b      	mov	fp, r3
 8002fbc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002fbe:	6072      	str	r2, [r6, #4]
 8002fc0:	4414      	add	r4, r2
 8002fc2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002fc4:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fc6:	ab26      	add	r3, sp, #152	; 0x98
 8002fc8:	2a07      	cmp	r2, #7
 8002fca:	922b      	str	r2, [sp, #172]	; 0xac
 8002fcc:	6033      	str	r3, [r6, #0]
 8002fce:	f77f ac70 	ble.w	80028b2 <_vfprintf_r+0x4a2>
 8002fd2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fd4:	9907      	ldr	r1, [sp, #28]
 8002fd6:	9803      	ldr	r0, [sp, #12]
 8002fd8:	f003 fd48 	bl	8006a6c <__sprint_r>
 8002fdc:	2800      	cmp	r0, #0
 8002fde:	d18f      	bne.n	8002f00 <_vfprintf_r+0xaf0>
 8002fe0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fe2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fe6:	e464      	b.n	80028b2 <_vfprintf_r+0x4a2>
 8002fe8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002fea:	af56      	add	r7, sp, #344	; 0x158
 8002fec:	0923      	lsrs	r3, r4, #4
 8002fee:	f004 010f 	and.w	r1, r4, #15
 8002ff2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002ff6:	092a      	lsrs	r2, r5, #4
 8002ff8:	461c      	mov	r4, r3
 8002ffa:	4615      	mov	r5, r2
 8002ffc:	5c43      	ldrb	r3, [r0, r1]
 8002ffe:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003002:	ea54 0305 	orrs.w	r3, r4, r5
 8003006:	d1f1      	bne.n	8002fec <_vfprintf_r+0xbdc>
 8003008:	9b04      	ldr	r3, [sp, #16]
 800300a:	1bdb      	subs	r3, r3, r7
 800300c:	9309      	str	r3, [sp, #36]	; 0x24
 800300e:	f7ff bb80 	b.w	8002712 <_vfprintf_r+0x302>
 8003012:	46b1      	mov	r9, r6
 8003014:	e776      	b.n	8002f04 <_vfprintf_r+0xaf4>
 8003016:	aa2a      	add	r2, sp, #168	; 0xa8
 8003018:	9907      	ldr	r1, [sp, #28]
 800301a:	9803      	ldr	r0, [sp, #12]
 800301c:	f003 fd26 	bl	8006a6c <__sprint_r>
 8003020:	2800      	cmp	r0, #0
 8003022:	f47f af6d 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003026:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003028:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800302c:	f7ff bbdd 	b.w	80027ea <_vfprintf_r+0x3da>
 8003030:	aa2a      	add	r2, sp, #168	; 0xa8
 8003032:	9907      	ldr	r1, [sp, #28]
 8003034:	9803      	ldr	r0, [sp, #12]
 8003036:	f003 fd19 	bl	8006a6c <__sprint_r>
 800303a:	2800      	cmp	r0, #0
 800303c:	f47f af60 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003040:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003042:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003046:	f7ff bbe0 	b.w	800280a <_vfprintf_r+0x3fa>
 800304a:	4698      	mov	r8, r3
 800304c:	2d00      	cmp	r5, #0
 800304e:	bf08      	it	eq
 8003050:	2c0a      	cmpeq	r4, #10
 8003052:	f080 8170 	bcs.w	8003336 <_vfprintf_r+0xf26>
 8003056:	af56      	add	r7, sp, #344	; 0x158
 8003058:	3430      	adds	r4, #48	; 0x30
 800305a:	2301      	movs	r3, #1
 800305c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003060:	9309      	str	r3, [sp, #36]	; 0x24
 8003062:	f7ff bb56 	b.w	8002712 <_vfprintf_r+0x302>
 8003066:	aa2a      	add	r2, sp, #168	; 0xa8
 8003068:	9907      	ldr	r1, [sp, #28]
 800306a:	9803      	ldr	r0, [sp, #12]
 800306c:	f003 fcfe 	bl	8006a6c <__sprint_r>
 8003070:	2800      	cmp	r0, #0
 8003072:	f47f af45 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003076:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003078:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800307c:	e406      	b.n	800288c <_vfprintf_r+0x47c>
 800307e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003080:	2b00      	cmp	r3, #0
 8003082:	f340 8273 	ble.w	800356c <_vfprintf_r+0x115c>
 8003086:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800308a:	4293      	cmp	r3, r2
 800308c:	bfa8      	it	ge
 800308e:	4613      	movge	r3, r2
 8003090:	2b00      	cmp	r3, #0
 8003092:	461d      	mov	r5, r3
 8003094:	dd0d      	ble.n	80030b2 <_vfprintf_r+0xca2>
 8003096:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003098:	f8cb 7000 	str.w	r7, [fp]
 800309c:	3301      	adds	r3, #1
 800309e:	442c      	add	r4, r5
 80030a0:	2b07      	cmp	r3, #7
 80030a2:	942c      	str	r4, [sp, #176]	; 0xb0
 80030a4:	f8cb 5004 	str.w	r5, [fp, #4]
 80030a8:	932b      	str	r3, [sp, #172]	; 0xac
 80030aa:	f300 82c1 	bgt.w	8003630 <_vfprintf_r+0x1220>
 80030ae:	f10b 0b08 	add.w	fp, fp, #8
 80030b2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030b4:	2d00      	cmp	r5, #0
 80030b6:	bfa8      	it	ge
 80030b8:	1b5b      	subge	r3, r3, r5
 80030ba:	2b00      	cmp	r3, #0
 80030bc:	461d      	mov	r5, r3
 80030be:	f340 8099 	ble.w	80031f4 <_vfprintf_r+0xde4>
 80030c2:	2d10      	cmp	r5, #16
 80030c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030c6:	4b2c      	ldr	r3, [pc, #176]	; (8003178 <_vfprintf_r+0xd68>)
 80030c8:	f340 83db 	ble.w	8003882 <_vfprintf_r+0x1472>
 80030cc:	4618      	mov	r0, r3
 80030ce:	4621      	mov	r1, r4
 80030d0:	465b      	mov	r3, fp
 80030d2:	2610      	movs	r6, #16
 80030d4:	46bb      	mov	fp, r7
 80030d6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80030da:	9c07      	ldr	r4, [sp, #28]
 80030dc:	4607      	mov	r7, r0
 80030de:	e004      	b.n	80030ea <_vfprintf_r+0xcda>
 80030e0:	3308      	adds	r3, #8
 80030e2:	3d10      	subs	r5, #16
 80030e4:	2d10      	cmp	r5, #16
 80030e6:	f340 83c7 	ble.w	8003878 <_vfprintf_r+0x1468>
 80030ea:	3201      	adds	r2, #1
 80030ec:	3110      	adds	r1, #16
 80030ee:	2a07      	cmp	r2, #7
 80030f0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80030f4:	e9c3 7600 	strd	r7, r6, [r3]
 80030f8:	ddf2      	ble.n	80030e0 <_vfprintf_r+0xcd0>
 80030fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80030fc:	4621      	mov	r1, r4
 80030fe:	4648      	mov	r0, r9
 8003100:	f003 fcb4 	bl	8006a6c <__sprint_r>
 8003104:	2800      	cmp	r0, #0
 8003106:	f040 84a5 	bne.w	8003a54 <_vfprintf_r+0x1644>
 800310a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800310e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003110:	e7e7      	b.n	80030e2 <_vfprintf_r+0xcd2>
 8003112:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003116:	af56      	add	r7, sp, #344	; 0x158
 8003118:	f7ff bafb 	b.w	8002712 <_vfprintf_r+0x302>
 800311c:	f1b9 0f00 	cmp.w	r9, #0
 8003120:	f77f af4c 	ble.w	8002fbc <_vfprintf_r+0xbac>
 8003124:	f1b9 0f10 	cmp.w	r9, #16
 8003128:	4b13      	ldr	r3, [pc, #76]	; (8003178 <_vfprintf_r+0xd68>)
 800312a:	f340 8659 	ble.w	8003de0 <_vfprintf_r+0x19d0>
 800312e:	4619      	mov	r1, r3
 8003130:	4622      	mov	r2, r4
 8003132:	4633      	mov	r3, r6
 8003134:	2710      	movs	r7, #16
 8003136:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800313a:	9c07      	ldr	r4, [sp, #28]
 800313c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800313e:	460e      	mov	r6, r1
 8003140:	e007      	b.n	8003152 <_vfprintf_r+0xd42>
 8003142:	3308      	adds	r3, #8
 8003144:	f1a9 0910 	sub.w	r9, r9, #16
 8003148:	f1b9 0f10 	cmp.w	r9, #16
 800314c:	f340 8353 	ble.w	80037f6 <_vfprintf_r+0x13e6>
 8003150:	3501      	adds	r5, #1
 8003152:	3210      	adds	r2, #16
 8003154:	2d07      	cmp	r5, #7
 8003156:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800315a:	e9c3 6700 	strd	r6, r7, [r3]
 800315e:	ddf0      	ble.n	8003142 <_vfprintf_r+0xd32>
 8003160:	aa2a      	add	r2, sp, #168	; 0xa8
 8003162:	4621      	mov	r1, r4
 8003164:	4658      	mov	r0, fp
 8003166:	f003 fc81 	bl	8006a6c <__sprint_r>
 800316a:	2800      	cmp	r0, #0
 800316c:	f040 8472 	bne.w	8003a54 <_vfprintf_r+0x1644>
 8003170:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003174:	ab2d      	add	r3, sp, #180	; 0xb4
 8003176:	e7e5      	b.n	8003144 <_vfprintf_r+0xd34>
 8003178:	08007160 	.word	0x08007160
 800317c:	f018 0f01 	tst.w	r8, #1
 8003180:	f47f aee0 	bne.w	8002f44 <_vfprintf_r+0xb34>
 8003184:	2201      	movs	r2, #1
 8003186:	2d07      	cmp	r5, #7
 8003188:	f8cb 7000 	str.w	r7, [fp]
 800318c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003190:	f8cb 2004 	str.w	r2, [fp, #4]
 8003194:	dc04      	bgt.n	80031a0 <_vfprintf_r+0xd90>
 8003196:	3302      	adds	r3, #2
 8003198:	9309      	str	r3, [sp, #36]	; 0x24
 800319a:	f10b 0b10 	add.w	fp, fp, #16
 800319e:	e70d      	b.n	8002fbc <_vfprintf_r+0xbac>
 80031a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a2:	9907      	ldr	r1, [sp, #28]
 80031a4:	9803      	ldr	r0, [sp, #12]
 80031a6:	f003 fc61 	bl	8006a6c <__sprint_r>
 80031aa:	2800      	cmp	r0, #0
 80031ac:	f47f aea8 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80031b0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031b4:	3301      	adds	r3, #1
 80031b6:	9309      	str	r3, [sp, #36]	; 0x24
 80031b8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80031bc:	ae2d      	add	r6, sp, #180	; 0xb4
 80031be:	e6fd      	b.n	8002fbc <_vfprintf_r+0xbac>
 80031c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031c2:	9907      	ldr	r1, [sp, #28]
 80031c4:	9803      	ldr	r0, [sp, #12]
 80031c6:	f003 fc51 	bl	8006a6c <__sprint_r>
 80031ca:	2800      	cmp	r0, #0
 80031cc:	f47f ae98 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80031d0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031d4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031da:	f7ff baf6 	b.w	80027ca <_vfprintf_r+0x3ba>
 80031de:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e0:	9907      	ldr	r1, [sp, #28]
 80031e2:	9803      	ldr	r0, [sp, #12]
 80031e4:	f003 fc42 	bl	8006a6c <__sprint_r>
 80031e8:	2800      	cmp	r0, #0
 80031ea:	f47f ae89 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80031ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031f6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80031fa:	443b      	add	r3, r7
 80031fc:	4699      	mov	r9, r3
 80031fe:	f040 8357 	bne.w	80038b0 <_vfprintf_r+0x14a0>
 8003202:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003204:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003206:	4293      	cmp	r3, r2
 8003208:	db49      	blt.n	800329e <_vfprintf_r+0xe8e>
 800320a:	f018 0f01 	tst.w	r8, #1
 800320e:	d146      	bne.n	800329e <_vfprintf_r+0xe8e>
 8003210:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003212:	18bd      	adds	r5, r7, r2
 8003214:	eba5 0509 	sub.w	r5, r5, r9
 8003218:	1ad3      	subs	r3, r2, r3
 800321a:	429d      	cmp	r5, r3
 800321c:	bfa8      	it	ge
 800321e:	461d      	movge	r5, r3
 8003220:	2d00      	cmp	r5, #0
 8003222:	dd0d      	ble.n	8003240 <_vfprintf_r+0xe30>
 8003224:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003226:	f8cb 9000 	str.w	r9, [fp]
 800322a:	3201      	adds	r2, #1
 800322c:	442c      	add	r4, r5
 800322e:	2a07      	cmp	r2, #7
 8003230:	942c      	str	r4, [sp, #176]	; 0xb0
 8003232:	f8cb 5004 	str.w	r5, [fp, #4]
 8003236:	922b      	str	r2, [sp, #172]	; 0xac
 8003238:	f300 8462 	bgt.w	8003b00 <_vfprintf_r+0x16f0>
 800323c:	f10b 0b08 	add.w	fp, fp, #8
 8003240:	2d00      	cmp	r5, #0
 8003242:	bfac      	ite	ge
 8003244:	1b5d      	subge	r5, r3, r5
 8003246:	461d      	movlt	r5, r3
 8003248:	2d00      	cmp	r5, #0
 800324a:	f77f ab32 	ble.w	80028b2 <_vfprintf_r+0x4a2>
 800324e:	2d10      	cmp	r5, #16
 8003250:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003252:	4bc5      	ldr	r3, [pc, #788]	; (8003568 <_vfprintf_r+0x1158>)
 8003254:	f340 80c4 	ble.w	80033e0 <_vfprintf_r+0xfd0>
 8003258:	4619      	mov	r1, r3
 800325a:	2610      	movs	r6, #16
 800325c:	4623      	mov	r3, r4
 800325e:	9f03      	ldr	r7, [sp, #12]
 8003260:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003264:	460c      	mov	r4, r1
 8003266:	e005      	b.n	8003274 <_vfprintf_r+0xe64>
 8003268:	f10b 0b08 	add.w	fp, fp, #8
 800326c:	3d10      	subs	r5, #16
 800326e:	2d10      	cmp	r5, #16
 8003270:	f340 80b3 	ble.w	80033da <_vfprintf_r+0xfca>
 8003274:	3201      	adds	r2, #1
 8003276:	3310      	adds	r3, #16
 8003278:	2a07      	cmp	r2, #7
 800327a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800327e:	e9cb 4600 	strd	r4, r6, [fp]
 8003282:	ddf1      	ble.n	8003268 <_vfprintf_r+0xe58>
 8003284:	aa2a      	add	r2, sp, #168	; 0xa8
 8003286:	4649      	mov	r1, r9
 8003288:	4638      	mov	r0, r7
 800328a:	f003 fbef 	bl	8006a6c <__sprint_r>
 800328e:	2800      	cmp	r0, #0
 8003290:	f47f ae38 	bne.w	8002f04 <_vfprintf_r+0xaf4>
 8003294:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003298:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800329c:	e7e6      	b.n	800326c <_vfprintf_r+0xe5c>
 800329e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032a0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80032a2:	f8cb 1000 	str.w	r1, [fp]
 80032a6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80032a8:	f8cb 1004 	str.w	r1, [fp, #4]
 80032ac:	3201      	adds	r2, #1
 80032ae:	440c      	add	r4, r1
 80032b0:	2a07      	cmp	r2, #7
 80032b2:	942c      	str	r4, [sp, #176]	; 0xb0
 80032b4:	922b      	str	r2, [sp, #172]	; 0xac
 80032b6:	f300 828c 	bgt.w	80037d2 <_vfprintf_r+0x13c2>
 80032ba:	f10b 0b08 	add.w	fp, fp, #8
 80032be:	e7a7      	b.n	8003210 <_vfprintf_r+0xe00>
 80032c0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032c4:	f002 fa94 	bl	80057f0 <__retarget_lock_release_recursive>
 80032c8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80032cc:	e628      	b.n	8002f20 <_vfprintf_r+0xb10>
 80032ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d0:	9907      	ldr	r1, [sp, #28]
 80032d2:	9803      	ldr	r0, [sp, #12]
 80032d4:	f003 fbca 	bl	8006a6c <__sprint_r>
 80032d8:	2800      	cmp	r0, #0
 80032da:	f47f ae11 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80032de:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80032e2:	ae2d      	add	r6, sp, #180	; 0xb4
 80032e4:	e638      	b.n	8002f58 <_vfprintf_r+0xb48>
 80032e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032e8:	9907      	ldr	r1, [sp, #28]
 80032ea:	9803      	ldr	r0, [sp, #12]
 80032ec:	f003 fbbe 	bl	8006a6c <__sprint_r>
 80032f0:	2800      	cmp	r0, #0
 80032f2:	f47f ae05 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80032f6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032fa:	ae2d      	add	r6, sp, #180	; 0xb4
 80032fc:	930b      	str	r3, [sp, #44]	; 0x2c
 80032fe:	e638      	b.n	8002f72 <_vfprintf_r+0xb62>
 8003300:	6814      	ldr	r4, [r2, #0]
 8003302:	9308      	str	r3, [sp, #32]
 8003304:	2500      	movs	r5, #0
 8003306:	f7ff bb95 	b.w	8002a34 <_vfprintf_r+0x624>
 800330a:	6814      	ldr	r4, [r2, #0]
 800330c:	9308      	str	r3, [sp, #32]
 800330e:	2500      	movs	r5, #0
 8003310:	f7ff b9ae 	b.w	8002670 <_vfprintf_r+0x260>
 8003314:	680c      	ldr	r4, [r1, #0]
 8003316:	9208      	str	r2, [sp, #32]
 8003318:	17e5      	asrs	r5, r4, #31
 800331a:	4620      	mov	r0, r4
 800331c:	4629      	mov	r1, r5
 800331e:	f7ff b9d2 	b.w	80026c6 <_vfprintf_r+0x2b6>
 8003322:	6814      	ldr	r4, [r2, #0]
 8003324:	9108      	str	r1, [sp, #32]
 8003326:	2201      	movs	r2, #1
 8003328:	2500      	movs	r5, #0
 800332a:	f7ff bb32 	b.w	8002992 <_vfprintf_r+0x582>
 800332e:	2a01      	cmp	r2, #1
 8003330:	f47f ab3c 	bne.w	80029ac <_vfprintf_r+0x59c>
 8003334:	e68f      	b.n	8003056 <_vfprintf_r+0xc46>
 8003336:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800333a:	2200      	movs	r2, #0
 800333c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003340:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003344:	af56      	add	r7, sp, #344	; 0x158
 8003346:	4692      	mov	sl, r2
 8003348:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800334c:	461e      	mov	r6, r3
 800334e:	e00a      	b.n	8003366 <_vfprintf_r+0xf56>
 8003350:	2300      	movs	r3, #0
 8003352:	4620      	mov	r0, r4
 8003354:	4629      	mov	r1, r5
 8003356:	220a      	movs	r2, #10
 8003358:	f7fc ff52 	bl	8000200 <__aeabi_uldivmod>
 800335c:	4604      	mov	r4, r0
 800335e:	460d      	mov	r5, r1
 8003360:	ea54 0305 	orrs.w	r3, r4, r5
 8003364:	d029      	beq.n	80033ba <_vfprintf_r+0xfaa>
 8003366:	220a      	movs	r2, #10
 8003368:	2300      	movs	r3, #0
 800336a:	4620      	mov	r0, r4
 800336c:	4629      	mov	r1, r5
 800336e:	f7fc ff47 	bl	8000200 <__aeabi_uldivmod>
 8003372:	3230      	adds	r2, #48	; 0x30
 8003374:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003378:	f10a 0a01 	add.w	sl, sl, #1
 800337c:	3f01      	subs	r7, #1
 800337e:	2e00      	cmp	r6, #0
 8003380:	d0e6      	beq.n	8003350 <_vfprintf_r+0xf40>
 8003382:	f898 3000 	ldrb.w	r3, [r8]
 8003386:	459a      	cmp	sl, r3
 8003388:	d1e2      	bne.n	8003350 <_vfprintf_r+0xf40>
 800338a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800338e:	d0df      	beq.n	8003350 <_vfprintf_r+0xf40>
 8003390:	2d00      	cmp	r5, #0
 8003392:	bf08      	it	eq
 8003394:	2c0a      	cmpeq	r4, #10
 8003396:	d3db      	bcc.n	8003350 <_vfprintf_r+0xf40>
 8003398:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800339a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800339c:	1aff      	subs	r7, r7, r3
 800339e:	461a      	mov	r2, r3
 80033a0:	4638      	mov	r0, r7
 80033a2:	f003 faf5 	bl	8006990 <strncpy>
 80033a6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80033aa:	2b00      	cmp	r3, #0
 80033ac:	f000 8496 	beq.w	8003cdc <_vfprintf_r+0x18cc>
 80033b0:	f108 0801 	add.w	r8, r8, #1
 80033b4:	f04f 0a00 	mov.w	sl, #0
 80033b8:	e7ca      	b.n	8003350 <_vfprintf_r+0xf40>
 80033ba:	9b04      	ldr	r3, [sp, #16]
 80033bc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80033c0:	1bdb      	subs	r3, r3, r7
 80033c2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80033c6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80033c8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80033cc:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80033d0:	9309      	str	r3, [sp, #36]	; 0x24
 80033d2:	f7ff b99e 	b.w	8002712 <_vfprintf_r+0x302>
 80033d6:	46c1      	mov	r9, r8
 80033d8:	e594      	b.n	8002f04 <_vfprintf_r+0xaf4>
 80033da:	4621      	mov	r1, r4
 80033dc:	461c      	mov	r4, r3
 80033de:	460b      	mov	r3, r1
 80033e0:	3201      	adds	r2, #1
 80033e2:	442c      	add	r4, r5
 80033e4:	2a07      	cmp	r2, #7
 80033e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80033ea:	e9cb 3500 	strd	r3, r5, [fp]
 80033ee:	f77f aa5e 	ble.w	80028ae <_vfprintf_r+0x49e>
 80033f2:	e5ee      	b.n	8002fd2 <_vfprintf_r+0xbc2>
 80033f4:	f018 0f10 	tst.w	r8, #16
 80033f8:	f040 80f8 	bne.w	80035ec <_vfprintf_r+0x11dc>
 80033fc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003400:	f000 8351 	beq.w	8003aa6 <_vfprintf_r+0x1696>
 8003404:	9a05      	ldr	r2, [sp, #20]
 8003406:	801a      	strh	r2, [r3, #0]
 8003408:	4657      	mov	r7, sl
 800340a:	f7ff baa7 	b.w	800295c <_vfprintf_r+0x54c>
 800340e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003410:	9907      	ldr	r1, [sp, #28]
 8003412:	9803      	ldr	r0, [sp, #12]
 8003414:	f003 fb2a 	bl	8006a6c <__sprint_r>
 8003418:	2800      	cmp	r0, #0
 800341a:	f47f ad71 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 800341e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003420:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003424:	f7ff b9f5 	b.w	8002812 <_vfprintf_r+0x402>
 8003428:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800342c:	4602      	mov	r2, r0
 800342e:	460b      	mov	r3, r1
 8003430:	f7fd fe1c 	bl	800106c <__aeabi_dcmpun>
 8003434:	2800      	cmp	r0, #0
 8003436:	f040 8491 	bne.w	8003d5c <_vfprintf_r+0x194c>
 800343a:	2e61      	cmp	r6, #97	; 0x61
 800343c:	f000 8111 	beq.w	8003662 <_vfprintf_r+0x1252>
 8003440:	2e41      	cmp	r6, #65	; 0x41
 8003442:	f000 8377 	beq.w	8003b34 <_vfprintf_r+0x1724>
 8003446:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800344a:	f026 0220 	bic.w	r2, r6, #32
 800344e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003452:	930e      	str	r3, [sp, #56]	; 0x38
 8003454:	9204      	str	r2, [sp, #16]
 8003456:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003458:	f000 842d 	beq.w	8003cb6 <_vfprintf_r+0x18a6>
 800345c:	2a47      	cmp	r2, #71	; 0x47
 800345e:	f000 8424 	beq.w	8003caa <_vfprintf_r+0x189a>
 8003462:	2b00      	cmp	r3, #0
 8003464:	f2c0 82f9 	blt.w	8003a5a <_vfprintf_r+0x164a>
 8003468:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800346c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003470:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003474:	2e66      	cmp	r6, #102	; 0x66
 8003476:	f000 83eb 	beq.w	8003c50 <_vfprintf_r+0x1840>
 800347a:	2e46      	cmp	r6, #70	; 0x46
 800347c:	f000 847e 	beq.w	8003d7c <_vfprintf_r+0x196c>
 8003480:	9b04      	ldr	r3, [sp, #16]
 8003482:	9803      	ldr	r0, [sp, #12]
 8003484:	2b45      	cmp	r3, #69	; 0x45
 8003486:	bf0c      	ite	eq
 8003488:	f109 0501 	addeq.w	r5, r9, #1
 800348c:	464d      	movne	r5, r9
 800348e:	aa28      	add	r2, sp, #160	; 0xa0
 8003490:	ab25      	add	r3, sp, #148	; 0x94
 8003492:	e9cd 3200 	strd	r3, r2, [sp]
 8003496:	2102      	movs	r1, #2
 8003498:	ab24      	add	r3, sp, #144	; 0x90
 800349a:	462a      	mov	r2, r5
 800349c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80034a0:	f000 fe3e 	bl	8004120 <_dtoa_r>
 80034a4:	2e67      	cmp	r6, #103	; 0x67
 80034a6:	4607      	mov	r7, r0
 80034a8:	f040 849c 	bne.w	8003de4 <_vfprintf_r+0x19d4>
 80034ac:	f018 0f01 	tst.w	r8, #1
 80034b0:	f040 83f9 	bne.w	8003ca6 <_vfprintf_r+0x1896>
 80034b4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80034b6:	4640      	mov	r0, r8
 80034b8:	1bdb      	subs	r3, r3, r7
 80034ba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80034be:	9310      	str	r3, [sp, #64]	; 0x40
 80034c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034c2:	9311      	str	r3, [sp, #68]	; 0x44
 80034c4:	9b04      	ldr	r3, [sp, #16]
 80034c6:	2b47      	cmp	r3, #71	; 0x47
 80034c8:	f000 81e7 	beq.w	800389a <_vfprintf_r+0x148a>
 80034cc:	9b04      	ldr	r3, [sp, #16]
 80034ce:	2b46      	cmp	r3, #70	; 0x46
 80034d0:	f000 8300 	beq.w	8003ad4 <_vfprintf_r+0x16c4>
 80034d4:	9904      	ldr	r1, [sp, #16]
 80034d6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034d8:	b2f2      	uxtb	r2, r6
 80034da:	2941      	cmp	r1, #65	; 0x41
 80034dc:	bf08      	it	eq
 80034de:	320f      	addeq	r2, #15
 80034e0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80034e4:	bf06      	itte	eq
 80034e6:	b2d2      	uxtbeq	r2, r2
 80034e8:	2101      	moveq	r1, #1
 80034ea:	2100      	movne	r1, #0
 80034ec:	2b00      	cmp	r3, #0
 80034ee:	9324      	str	r3, [sp, #144]	; 0x90
 80034f0:	bfb8      	it	lt
 80034f2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80034f4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80034f8:	bfba      	itte	lt
 80034fa:	f1c3 0301 	rsblt	r3, r3, #1
 80034fe:	222d      	movlt	r2, #45	; 0x2d
 8003500:	222b      	movge	r2, #43	; 0x2b
 8003502:	2b09      	cmp	r3, #9
 8003504:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003508:	f300 83f9 	bgt.w	8003cfe <_vfprintf_r+0x18ee>
 800350c:	2900      	cmp	r1, #0
 800350e:	f040 8487 	bne.w	8003e20 <_vfprintf_r+0x1a10>
 8003512:	2230      	movs	r2, #48	; 0x30
 8003514:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003518:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800351c:	3330      	adds	r3, #48	; 0x30
 800351e:	7013      	strb	r3, [r2, #0]
 8003520:	1c53      	adds	r3, r2, #1
 8003522:	aa26      	add	r2, sp, #152	; 0x98
 8003524:	1a9b      	subs	r3, r3, r2
 8003526:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003528:	9319      	str	r3, [sp, #100]	; 0x64
 800352a:	2a01      	cmp	r2, #1
 800352c:	4413      	add	r3, r2
 800352e:	9309      	str	r3, [sp, #36]	; 0x24
 8003530:	f340 8442 	ble.w	8003db8 <_vfprintf_r+0x19a8>
 8003534:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003536:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003538:	4413      	add	r3, r2
 800353a:	9309      	str	r3, [sp, #36]	; 0x24
 800353c:	2300      	movs	r3, #0
 800353e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003540:	9314      	str	r3, [sp, #80]	; 0x50
 8003542:	9311      	str	r3, [sp, #68]	; 0x44
 8003544:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003546:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800354a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800354e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003552:	9304      	str	r3, [sp, #16]
 8003554:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003556:	2b00      	cmp	r3, #0
 8003558:	f040 8275 	bne.w	8003a46 <_vfprintf_r+0x1636>
 800355c:	4699      	mov	r9, r3
 800355e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003562:	f7ff b8e2 	b.w	800272a <_vfprintf_r+0x31a>
 8003566:	bf00      	nop
 8003568:	08007160 	.word	0x08007160
 800356c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800356e:	49bd      	ldr	r1, [pc, #756]	; (8003864 <_vfprintf_r+0x1454>)
 8003570:	f8cb 1000 	str.w	r1, [fp]
 8003574:	3201      	adds	r2, #1
 8003576:	3401      	adds	r4, #1
 8003578:	2101      	movs	r1, #1
 800357a:	2a07      	cmp	r2, #7
 800357c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003580:	f8cb 1004 	str.w	r1, [fp, #4]
 8003584:	dc60      	bgt.n	8003648 <_vfprintf_r+0x1238>
 8003586:	f10b 0b08 	add.w	fp, fp, #8
 800358a:	b92b      	cbnz	r3, 8003598 <_vfprintf_r+0x1188>
 800358c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800358e:	b91a      	cbnz	r2, 8003598 <_vfprintf_r+0x1188>
 8003590:	f018 0f01 	tst.w	r8, #1
 8003594:	f43f a98d 	beq.w	80028b2 <_vfprintf_r+0x4a2>
 8003598:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800359a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800359c:	f8cb 1000 	str.w	r1, [fp]
 80035a0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035a2:	f8cb 1004 	str.w	r1, [fp, #4]
 80035a6:	3201      	adds	r2, #1
 80035a8:	440c      	add	r4, r1
 80035aa:	2a07      	cmp	r2, #7
 80035ac:	942c      	str	r4, [sp, #176]	; 0xb0
 80035ae:	922b      	str	r2, [sp, #172]	; 0xac
 80035b0:	f300 8282 	bgt.w	8003ab8 <_vfprintf_r+0x16a8>
 80035b4:	f10b 0b08 	add.w	fp, fp, #8
 80035b8:	2b00      	cmp	r3, #0
 80035ba:	f2c0 82e7 	blt.w	8003b8c <_vfprintf_r+0x177c>
 80035be:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80035c0:	3201      	adds	r2, #1
 80035c2:	441c      	add	r4, r3
 80035c4:	2a07      	cmp	r2, #7
 80035c6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035ca:	e9cb 7300 	strd	r7, r3, [fp]
 80035ce:	f77f a96e 	ble.w	80028ae <_vfprintf_r+0x49e>
 80035d2:	e4fe      	b.n	8002fd2 <_vfprintf_r+0xbc2>
 80035d4:	aa2a      	add	r2, sp, #168	; 0xa8
 80035d6:	9907      	ldr	r1, [sp, #28]
 80035d8:	9803      	ldr	r0, [sp, #12]
 80035da:	f003 fa47 	bl	8006a6c <__sprint_r>
 80035de:	2800      	cmp	r0, #0
 80035e0:	f47f ac8e 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80035e4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035e8:	f7ff bbf0 	b.w	8002dcc <_vfprintf_r+0x9bc>
 80035ec:	9a05      	ldr	r2, [sp, #20]
 80035ee:	601a      	str	r2, [r3, #0]
 80035f0:	4657      	mov	r7, sl
 80035f2:	f7ff b9b3 	b.w	800295c <_vfprintf_r+0x54c>
 80035f6:	8814      	ldrh	r4, [r2, #0]
 80035f8:	9108      	str	r1, [sp, #32]
 80035fa:	2500      	movs	r5, #0
 80035fc:	2201      	movs	r2, #1
 80035fe:	f7ff b9c8 	b.w	8002992 <_vfprintf_r+0x582>
 8003602:	8814      	ldrh	r4, [r2, #0]
 8003604:	9308      	str	r3, [sp, #32]
 8003606:	2500      	movs	r5, #0
 8003608:	f7ff ba14 	b.w	8002a34 <_vfprintf_r+0x624>
 800360c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003610:	9208      	str	r2, [sp, #32]
 8003612:	17e5      	asrs	r5, r4, #31
 8003614:	4620      	mov	r0, r4
 8003616:	4629      	mov	r1, r5
 8003618:	f7ff b855 	b.w	80026c6 <_vfprintf_r+0x2b6>
 800361c:	8814      	ldrh	r4, [r2, #0]
 800361e:	9308      	str	r3, [sp, #32]
 8003620:	2500      	movs	r5, #0
 8003622:	f7ff b825 	b.w	8002670 <_vfprintf_r+0x260>
 8003626:	222d      	movs	r2, #45	; 0x2d
 8003628:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800362c:	f7ff baa2 	b.w	8002b74 <_vfprintf_r+0x764>
 8003630:	aa2a      	add	r2, sp, #168	; 0xa8
 8003632:	9907      	ldr	r1, [sp, #28]
 8003634:	9803      	ldr	r0, [sp, #12]
 8003636:	f003 fa19 	bl	8006a6c <__sprint_r>
 800363a:	2800      	cmp	r0, #0
 800363c:	f47f ac60 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003640:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003642:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003646:	e534      	b.n	80030b2 <_vfprintf_r+0xca2>
 8003648:	aa2a      	add	r2, sp, #168	; 0xa8
 800364a:	9907      	ldr	r1, [sp, #28]
 800364c:	9803      	ldr	r0, [sp, #12]
 800364e:	f003 fa0d 	bl	8006a6c <__sprint_r>
 8003652:	2800      	cmp	r0, #0
 8003654:	f47f ac54 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003658:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800365a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800365c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003660:	e793      	b.n	800358a <_vfprintf_r+0x117a>
 8003662:	2330      	movs	r3, #48	; 0x30
 8003664:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003668:	2378      	movs	r3, #120	; 0x78
 800366a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800366e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003672:	f048 0402 	orr.w	r4, r8, #2
 8003676:	f300 82b0 	bgt.w	8003bda <_vfprintf_r+0x17ca>
 800367a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800367e:	930e      	str	r3, [sp, #56]	; 0x38
 8003680:	f026 0320 	bic.w	r3, r6, #32
 8003684:	9304      	str	r3, [sp, #16]
 8003686:	2200      	movs	r2, #0
 8003688:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800368a:	920a      	str	r2, [sp, #40]	; 0x28
 800368c:	46a0      	mov	r8, r4
 800368e:	af3d      	add	r7, sp, #244	; 0xf4
 8003690:	2b00      	cmp	r3, #0
 8003692:	f2c0 81e3 	blt.w	8003a5c <_vfprintf_r+0x164c>
 8003696:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800369a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800369e:	2300      	movs	r3, #0
 80036a0:	930b      	str	r3, [sp, #44]	; 0x2c
 80036a2:	2e61      	cmp	r6, #97	; 0x61
 80036a4:	f000 8255 	beq.w	8003b52 <_vfprintf_r+0x1742>
 80036a8:	2e41      	cmp	r6, #65	; 0x41
 80036aa:	f47f aee3 	bne.w	8003474 <_vfprintf_r+0x1064>
 80036ae:	a824      	add	r0, sp, #144	; 0x90
 80036b0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036b4:	f003 f8e2 	bl	800687c <frexp>
 80036b8:	2200      	movs	r2, #0
 80036ba:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80036be:	ec51 0b10 	vmov	r0, r1, d0
 80036c2:	f7fd fa39 	bl	8000b38 <__aeabi_dmul>
 80036c6:	2200      	movs	r2, #0
 80036c8:	2300      	movs	r3, #0
 80036ca:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80036ce:	f7fd fc9b 	bl	8001008 <__aeabi_dcmpeq>
 80036d2:	2800      	cmp	r0, #0
 80036d4:	f040 8305 	bne.w	8003ce2 <_vfprintf_r+0x18d2>
 80036d8:	4b63      	ldr	r3, [pc, #396]	; (8003868 <_vfprintf_r+0x1458>)
 80036da:	9309      	str	r3, [sp, #36]	; 0x24
 80036dc:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80036e0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80036e4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80036e8:	9721      	str	r7, [sp, #132]	; 0x84
 80036ea:	46b9      	mov	r9, r7
 80036ec:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80036f0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80036f4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80036f8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80036fc:	e003      	b.n	8003706 <_vfprintf_r+0x12f6>
 80036fe:	f7fd fc83 	bl	8001008 <__aeabi_dcmpeq>
 8003702:	bb20      	cbnz	r0, 800374e <_vfprintf_r+0x133e>
 8003704:	46a9      	mov	r9, r5
 8003706:	2200      	movs	r2, #0
 8003708:	4b58      	ldr	r3, [pc, #352]	; (800386c <_vfprintf_r+0x145c>)
 800370a:	4630      	mov	r0, r6
 800370c:	4639      	mov	r1, r7
 800370e:	f7fd fa13 	bl	8000b38 <__aeabi_dmul>
 8003712:	460f      	mov	r7, r1
 8003714:	4606      	mov	r6, r0
 8003716:	f7fd fcbf 	bl	8001098 <__aeabi_d2iz>
 800371a:	4680      	mov	r8, r0
 800371c:	f7fd f9a2 	bl	8000a64 <__aeabi_i2d>
 8003720:	4602      	mov	r2, r0
 8003722:	460b      	mov	r3, r1
 8003724:	4630      	mov	r0, r6
 8003726:	4639      	mov	r1, r7
 8003728:	f7fd f84e 	bl	80007c8 <__aeabi_dsub>
 800372c:	464d      	mov	r5, r9
 800372e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003732:	f805 cb01 	strb.w	ip, [r5], #1
 8003736:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800373a:	46a3      	mov	fp, r4
 800373c:	4606      	mov	r6, r0
 800373e:	460f      	mov	r7, r1
 8003740:	f04f 0200 	mov.w	r2, #0
 8003744:	f04f 0300 	mov.w	r3, #0
 8003748:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800374c:	d1d7      	bne.n	80036fe <_vfprintf_r+0x12ee>
 800374e:	4630      	mov	r0, r6
 8003750:	4639      	mov	r1, r7
 8003752:	2200      	movs	r2, #0
 8003754:	4b46      	ldr	r3, [pc, #280]	; (8003870 <_vfprintf_r+0x1460>)
 8003756:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800375a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800375c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003760:	4644      	mov	r4, r8
 8003762:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003766:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800376a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800376e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003772:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003774:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003778:	f7fd fc6e 	bl	8001058 <__aeabi_dcmpgt>
 800377c:	2800      	cmp	r0, #0
 800377e:	f040 8176 	bne.w	8003a6e <_vfprintf_r+0x165e>
 8003782:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003786:	2200      	movs	r2, #0
 8003788:	4b39      	ldr	r3, [pc, #228]	; (8003870 <_vfprintf_r+0x1460>)
 800378a:	f7fd fc3d 	bl	8001008 <__aeabi_dcmpeq>
 800378e:	b110      	cbz	r0, 8003796 <_vfprintf_r+0x1386>
 8003790:	07e2      	lsls	r2, r4, #31
 8003792:	f100 816c 	bmi.w	8003a6e <_vfprintf_r+0x165e>
 8003796:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003798:	2b00      	cmp	r3, #0
 800379a:	db07      	blt.n	80037ac <_vfprintf_r+0x139c>
 800379c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800379e:	3301      	adds	r3, #1
 80037a0:	442b      	add	r3, r5
 80037a2:	2230      	movs	r2, #48	; 0x30
 80037a4:	f805 2b01 	strb.w	r2, [r5], #1
 80037a8:	42ab      	cmp	r3, r5
 80037aa:	d1fb      	bne.n	80037a4 <_vfprintf_r+0x1394>
 80037ac:	1beb      	subs	r3, r5, r7
 80037ae:	4640      	mov	r0, r8
 80037b0:	9310      	str	r3, [sp, #64]	; 0x40
 80037b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037b6:	e683      	b.n	80034c0 <_vfprintf_r+0x10b0>
 80037b8:	f8cd 9010 	str.w	r9, [sp, #16]
 80037bc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80037c0:	9408      	str	r4, [sp, #32]
 80037c2:	4681      	mov	r9, r0
 80037c4:	900f      	str	r0, [sp, #60]	; 0x3c
 80037c6:	9014      	str	r0, [sp, #80]	; 0x50
 80037c8:	9011      	str	r0, [sp, #68]	; 0x44
 80037ca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037ce:	f7fe bfac 	b.w	800272a <_vfprintf_r+0x31a>
 80037d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80037d4:	9907      	ldr	r1, [sp, #28]
 80037d6:	9803      	ldr	r0, [sp, #12]
 80037d8:	f003 f948 	bl	8006a6c <__sprint_r>
 80037dc:	2800      	cmp	r0, #0
 80037de:	f47f ab8f 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 80037e2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037e4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037ea:	e511      	b.n	8003210 <_vfprintf_r+0xe00>
 80037ec:	4252      	negs	r2, r2
 80037ee:	9206      	str	r2, [sp, #24]
 80037f0:	9308      	str	r3, [sp, #32]
 80037f2:	f7ff b96d 	b.w	8002ad0 <_vfprintf_r+0x6c0>
 80037f6:	4614      	mov	r4, r2
 80037f8:	4632      	mov	r2, r6
 80037fa:	461e      	mov	r6, r3
 80037fc:	4613      	mov	r3, r2
 80037fe:	462a      	mov	r2, r5
 8003800:	3201      	adds	r2, #1
 8003802:	9209      	str	r2, [sp, #36]	; 0x24
 8003804:	f106 0208 	add.w	r2, r6, #8
 8003808:	e9c6 3900 	strd	r3, r9, [r6]
 800380c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800380e:	932b      	str	r3, [sp, #172]	; 0xac
 8003810:	444c      	add	r4, r9
 8003812:	2b07      	cmp	r3, #7
 8003814:	942c      	str	r4, [sp, #176]	; 0xb0
 8003816:	f73f acc3 	bgt.w	80031a0 <_vfprintf_r+0xd90>
 800381a:	3301      	adds	r3, #1
 800381c:	9309      	str	r3, [sp, #36]	; 0x24
 800381e:	f102 0b08 	add.w	fp, r2, #8
 8003822:	4616      	mov	r6, r2
 8003824:	f7ff bbca 	b.w	8002fbc <_vfprintf_r+0xbac>
 8003828:	aa2a      	add	r2, sp, #168	; 0xa8
 800382a:	9907      	ldr	r1, [sp, #28]
 800382c:	9803      	ldr	r0, [sp, #12]
 800382e:	f003 f91d 	bl	8006a6c <__sprint_r>
 8003832:	2800      	cmp	r0, #0
 8003834:	f47f ab64 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003838:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800383a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800383e:	f7ff bade 	b.w	8002dfe <_vfprintf_r+0x9ee>
 8003842:	464b      	mov	r3, r9
 8003844:	2b06      	cmp	r3, #6
 8003846:	bf28      	it	cs
 8003848:	2306      	movcs	r3, #6
 800384a:	46b9      	mov	r9, r7
 800384c:	970f      	str	r7, [sp, #60]	; 0x3c
 800384e:	9714      	str	r7, [sp, #80]	; 0x50
 8003850:	9711      	str	r7, [sp, #68]	; 0x44
 8003852:	970a      	str	r7, [sp, #40]	; 0x28
 8003854:	463a      	mov	r2, r7
 8003856:	9304      	str	r3, [sp, #16]
 8003858:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800385c:	4f05      	ldr	r7, [pc, #20]	; (8003874 <_vfprintf_r+0x1464>)
 800385e:	f7fe bf64 	b.w	800272a <_vfprintf_r+0x31a>
 8003862:	bf00      	nop
 8003864:	0800714c 	.word	0x0800714c
 8003868:	08007130 	.word	0x08007130
 800386c:	40300000 	.word	0x40300000
 8003870:	3fe00000 	.word	0x3fe00000
 8003874:	08007144 	.word	0x08007144
 8003878:	460c      	mov	r4, r1
 800387a:	4639      	mov	r1, r7
 800387c:	465f      	mov	r7, fp
 800387e:	469b      	mov	fp, r3
 8003880:	460b      	mov	r3, r1
 8003882:	3201      	adds	r2, #1
 8003884:	442c      	add	r4, r5
 8003886:	2a07      	cmp	r2, #7
 8003888:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800388c:	e9cb 3500 	strd	r3, r5, [fp]
 8003890:	f73f aca5 	bgt.w	80031de <_vfprintf_r+0xdce>
 8003894:	f10b 0b08 	add.w	fp, fp, #8
 8003898:	e4ac      	b.n	80031f4 <_vfprintf_r+0xde4>
 800389a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800389c:	1cda      	adds	r2, r3, #3
 800389e:	db02      	blt.n	80038a6 <_vfprintf_r+0x1496>
 80038a0:	4599      	cmp	r9, r3
 80038a2:	f280 80b5 	bge.w	8003a10 <_vfprintf_r+0x1600>
 80038a6:	3e02      	subs	r6, #2
 80038a8:	f026 0320 	bic.w	r3, r6, #32
 80038ac:	9304      	str	r3, [sp, #16]
 80038ae:	e611      	b.n	80034d4 <_vfprintf_r+0x10c4>
 80038b0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038b2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80038b6:	465a      	mov	r2, fp
 80038b8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80038bc:	18fb      	adds	r3, r7, r3
 80038be:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80038c2:	970c      	str	r7, [sp, #48]	; 0x30
 80038c4:	4eaf      	ldr	r6, [pc, #700]	; (8003b84 <_vfprintf_r+0x1774>)
 80038c6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80038ca:	9309      	str	r3, [sp, #36]	; 0x24
 80038cc:	464f      	mov	r7, r9
 80038ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80038d2:	4621      	mov	r1, r4
 80038d4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80038d6:	2b00      	cmp	r3, #0
 80038d8:	d05b      	beq.n	8003992 <_vfprintf_r+0x1582>
 80038da:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038dc:	2b00      	cmp	r3, #0
 80038de:	d154      	bne.n	800398a <_vfprintf_r+0x157a>
 80038e0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80038e2:	3b01      	subs	r3, #1
 80038e4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80038e8:	9314      	str	r3, [sp, #80]	; 0x50
 80038ea:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038ec:	9818      	ldr	r0, [sp, #96]	; 0x60
 80038ee:	6010      	str	r0, [r2, #0]
 80038f0:	3301      	adds	r3, #1
 80038f2:	4459      	add	r1, fp
 80038f4:	2b07      	cmp	r3, #7
 80038f6:	912c      	str	r1, [sp, #176]	; 0xb0
 80038f8:	f8c2 b004 	str.w	fp, [r2, #4]
 80038fc:	932b      	str	r3, [sp, #172]	; 0xac
 80038fe:	dc68      	bgt.n	80039d2 <_vfprintf_r+0x15c2>
 8003900:	3208      	adds	r2, #8
 8003902:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003904:	f898 3000 	ldrb.w	r3, [r8]
 8003908:	1bc5      	subs	r5, r0, r7
 800390a:	429d      	cmp	r5, r3
 800390c:	bfa8      	it	ge
 800390e:	461d      	movge	r5, r3
 8003910:	2d00      	cmp	r5, #0
 8003912:	dd0b      	ble.n	800392c <_vfprintf_r+0x151c>
 8003914:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003916:	6017      	str	r7, [r2, #0]
 8003918:	3301      	adds	r3, #1
 800391a:	4429      	add	r1, r5
 800391c:	2b07      	cmp	r3, #7
 800391e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003920:	6055      	str	r5, [r2, #4]
 8003922:	932b      	str	r3, [sp, #172]	; 0xac
 8003924:	dc5e      	bgt.n	80039e4 <_vfprintf_r+0x15d4>
 8003926:	f898 3000 	ldrb.w	r3, [r8]
 800392a:	3208      	adds	r2, #8
 800392c:	2d00      	cmp	r5, #0
 800392e:	bfac      	ite	ge
 8003930:	1b5d      	subge	r5, r3, r5
 8003932:	461d      	movlt	r5, r3
 8003934:	2d00      	cmp	r5, #0
 8003936:	dd26      	ble.n	8003986 <_vfprintf_r+0x1576>
 8003938:	2d10      	cmp	r5, #16
 800393a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800393c:	dd3c      	ble.n	80039b8 <_vfprintf_r+0x15a8>
 800393e:	2410      	movs	r4, #16
 8003940:	e003      	b.n	800394a <_vfprintf_r+0x153a>
 8003942:	3208      	adds	r2, #8
 8003944:	3d10      	subs	r5, #16
 8003946:	2d10      	cmp	r5, #16
 8003948:	dd36      	ble.n	80039b8 <_vfprintf_r+0x15a8>
 800394a:	3001      	adds	r0, #1
 800394c:	3110      	adds	r1, #16
 800394e:	2807      	cmp	r0, #7
 8003950:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003954:	e9c2 6400 	strd	r6, r4, [r2]
 8003958:	ddf3      	ble.n	8003942 <_vfprintf_r+0x1532>
 800395a:	aa2a      	add	r2, sp, #168	; 0xa8
 800395c:	4651      	mov	r1, sl
 800395e:	4648      	mov	r0, r9
 8003960:	f003 f884 	bl	8006a6c <__sprint_r>
 8003964:	2800      	cmp	r0, #0
 8003966:	d150      	bne.n	8003a0a <_vfprintf_r+0x15fa>
 8003968:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800396c:	aa2d      	add	r2, sp, #180	; 0xb4
 800396e:	e7e9      	b.n	8003944 <_vfprintf_r+0x1534>
 8003970:	aa2a      	add	r2, sp, #168	; 0xa8
 8003972:	4651      	mov	r1, sl
 8003974:	4648      	mov	r0, r9
 8003976:	f003 f879 	bl	8006a6c <__sprint_r>
 800397a:	2800      	cmp	r0, #0
 800397c:	d145      	bne.n	8003a0a <_vfprintf_r+0x15fa>
 800397e:	f898 3000 	ldrb.w	r3, [r8]
 8003982:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003984:	aa2d      	add	r2, sp, #180	; 0xb4
 8003986:	441f      	add	r7, r3
 8003988:	e7a4      	b.n	80038d4 <_vfprintf_r+0x14c4>
 800398a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800398c:	3b01      	subs	r3, #1
 800398e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003990:	e7ab      	b.n	80038ea <_vfprintf_r+0x14da>
 8003992:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003994:	2b00      	cmp	r3, #0
 8003996:	d1f8      	bne.n	800398a <_vfprintf_r+0x157a>
 8003998:	46b9      	mov	r9, r7
 800399a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800399c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800399e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039a2:	18fb      	adds	r3, r7, r3
 80039a4:	4599      	cmp	r9, r3
 80039a6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80039aa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039ae:	4693      	mov	fp, r2
 80039b0:	460c      	mov	r4, r1
 80039b2:	bf28      	it	cs
 80039b4:	4699      	movcs	r9, r3
 80039b6:	e424      	b.n	8003202 <_vfprintf_r+0xdf2>
 80039b8:	3001      	adds	r0, #1
 80039ba:	4429      	add	r1, r5
 80039bc:	2807      	cmp	r0, #7
 80039be:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039c2:	e9c2 6500 	strd	r6, r5, [r2]
 80039c6:	dcd3      	bgt.n	8003970 <_vfprintf_r+0x1560>
 80039c8:	f898 3000 	ldrb.w	r3, [r8]
 80039cc:	3208      	adds	r2, #8
 80039ce:	441f      	add	r7, r3
 80039d0:	e780      	b.n	80038d4 <_vfprintf_r+0x14c4>
 80039d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039d4:	4651      	mov	r1, sl
 80039d6:	4648      	mov	r0, r9
 80039d8:	f003 f848 	bl	8006a6c <__sprint_r>
 80039dc:	b9a8      	cbnz	r0, 8003a0a <_vfprintf_r+0x15fa>
 80039de:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039e0:	aa2d      	add	r2, sp, #180	; 0xb4
 80039e2:	e78e      	b.n	8003902 <_vfprintf_r+0x14f2>
 80039e4:	aa2a      	add	r2, sp, #168	; 0xa8
 80039e6:	4651      	mov	r1, sl
 80039e8:	4648      	mov	r0, r9
 80039ea:	f003 f83f 	bl	8006a6c <__sprint_r>
 80039ee:	b960      	cbnz	r0, 8003a0a <_vfprintf_r+0x15fa>
 80039f0:	f898 3000 	ldrb.w	r3, [r8]
 80039f4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039f6:	aa2d      	add	r2, sp, #180	; 0xb4
 80039f8:	e798      	b.n	800392c <_vfprintf_r+0x151c>
 80039fa:	4638      	mov	r0, r7
 80039fc:	f7fc fe20 	bl	8000640 <strlen>
 8003a00:	46a9      	mov	r9, r5
 8003a02:	4603      	mov	r3, r0
 8003a04:	9009      	str	r0, [sp, #36]	; 0x24
 8003a06:	f7ff b8f4 	b.w	8002bf2 <_vfprintf_r+0x7e2>
 8003a0a:	46d1      	mov	r9, sl
 8003a0c:	f7ff ba7a 	b.w	8002f04 <_vfprintf_r+0xaf4>
 8003a10:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a12:	4619      	mov	r1, r3
 8003a14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a16:	4299      	cmp	r1, r3
 8003a18:	f300 8082 	bgt.w	8003b20 <_vfprintf_r+0x1710>
 8003a1c:	07c4      	lsls	r4, r0, #31
 8003a1e:	f140 816b 	bpl.w	8003cf8 <_vfprintf_r+0x18e8>
 8003a22:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a24:	4413      	add	r3, r2
 8003a26:	9309      	str	r3, [sp, #36]	; 0x24
 8003a28:	0541      	lsls	r1, r0, #21
 8003a2a:	d503      	bpl.n	8003a34 <_vfprintf_r+0x1624>
 8003a2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a2e:	2b00      	cmp	r3, #0
 8003a30:	f300 80e6 	bgt.w	8003c00 <_vfprintf_r+0x17f0>
 8003a34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a36:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a3a:	9304      	str	r3, [sp, #16]
 8003a3c:	2667      	movs	r6, #103	; 0x67
 8003a3e:	2300      	movs	r3, #0
 8003a40:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a42:	9314      	str	r3, [sp, #80]	; 0x50
 8003a44:	e586      	b.n	8003554 <_vfprintf_r+0x1144>
 8003a46:	222d      	movs	r2, #45	; 0x2d
 8003a48:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a4c:	f04f 0900 	mov.w	r9, #0
 8003a50:	f7fe be6c 	b.w	800272c <_vfprintf_r+0x31c>
 8003a54:	46a1      	mov	r9, r4
 8003a56:	f7ff ba55 	b.w	8002f04 <_vfprintf_r+0xaf4>
 8003a5a:	900a      	str	r0, [sp, #40]	; 0x28
 8003a5c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a60:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a64:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a66:	232d      	movs	r3, #45	; 0x2d
 8003a68:	911e      	str	r1, [sp, #120]	; 0x78
 8003a6a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a6c:	e619      	b.n	80036a2 <_vfprintf_r+0x1292>
 8003a6e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a70:	9328      	str	r3, [sp, #160]	; 0xa0
 8003a72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a74:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003a78:	7bd9      	ldrb	r1, [r3, #15]
 8003a7a:	4291      	cmp	r1, r2
 8003a7c:	462b      	mov	r3, r5
 8003a7e:	d109      	bne.n	8003a94 <_vfprintf_r+0x1684>
 8003a80:	2030      	movs	r0, #48	; 0x30
 8003a82:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003a86:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a88:	1e5a      	subs	r2, r3, #1
 8003a8a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003a8c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003a90:	4291      	cmp	r1, r2
 8003a92:	d0f6      	beq.n	8003a82 <_vfprintf_r+0x1672>
 8003a94:	2a39      	cmp	r2, #57	; 0x39
 8003a96:	bf0b      	itete	eq
 8003a98:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003a9a:	3201      	addne	r2, #1
 8003a9c:	7a92      	ldrbeq	r2, [r2, #10]
 8003a9e:	b2d2      	uxtbne	r2, r2
 8003aa0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003aa4:	e682      	b.n	80037ac <_vfprintf_r+0x139c>
 8003aa6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003aaa:	f43f ad9f 	beq.w	80035ec <_vfprintf_r+0x11dc>
 8003aae:	9a05      	ldr	r2, [sp, #20]
 8003ab0:	701a      	strb	r2, [r3, #0]
 8003ab2:	4657      	mov	r7, sl
 8003ab4:	f7fe bf52 	b.w	800295c <_vfprintf_r+0x54c>
 8003ab8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aba:	9907      	ldr	r1, [sp, #28]
 8003abc:	9803      	ldr	r0, [sp, #12]
 8003abe:	f002 ffd5 	bl	8006a6c <__sprint_r>
 8003ac2:	2800      	cmp	r0, #0
 8003ac4:	f47f aa1c 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003ac8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003aca:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ace:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ad2:	e571      	b.n	80035b8 <_vfprintf_r+0x11a8>
 8003ad4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ad6:	2b00      	cmp	r3, #0
 8003ad8:	f340 8164 	ble.w	8003da4 <_vfprintf_r+0x1994>
 8003adc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ade:	f1b9 0f00 	cmp.w	r9, #0
 8003ae2:	f040 8103 	bne.w	8003cec <_vfprintf_r+0x18dc>
 8003ae6:	07c6      	lsls	r6, r0, #31
 8003ae8:	f100 8100 	bmi.w	8003cec <_vfprintf_r+0x18dc>
 8003aec:	9309      	str	r3, [sp, #36]	; 0x24
 8003aee:	2666      	movs	r6, #102	; 0x66
 8003af0:	0543      	lsls	r3, r0, #21
 8003af2:	f100 8086 	bmi.w	8003c02 <_vfprintf_r+0x17f2>
 8003af6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003af8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003afc:	9304      	str	r3, [sp, #16]
 8003afe:	e79e      	b.n	8003a3e <_vfprintf_r+0x162e>
 8003b00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b02:	9907      	ldr	r1, [sp, #28]
 8003b04:	9803      	ldr	r0, [sp, #12]
 8003b06:	f002 ffb1 	bl	8006a6c <__sprint_r>
 8003b0a:	2800      	cmp	r0, #0
 8003b0c:	f47f a9f8 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003b10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b12:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b14:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b16:	1ad3      	subs	r3, r2, r3
 8003b18:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b1c:	f7ff bb90 	b.w	8003240 <_vfprintf_r+0xe30>
 8003b20:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b22:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b24:	4413      	add	r3, r2
 8003b26:	9309      	str	r3, [sp, #36]	; 0x24
 8003b28:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b2a:	2b00      	cmp	r3, #0
 8003b2c:	f340 8149 	ble.w	8003dc2 <_vfprintf_r+0x19b2>
 8003b30:	2667      	movs	r6, #103	; 0x67
 8003b32:	e7dd      	b.n	8003af0 <_vfprintf_r+0x16e0>
 8003b34:	2330      	movs	r3, #48	; 0x30
 8003b36:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b3a:	2358      	movs	r3, #88	; 0x58
 8003b3c:	e595      	b.n	800366a <_vfprintf_r+0x125a>
 8003b3e:	9803      	ldr	r0, [sp, #12]
 8003b40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b42:	4649      	mov	r1, r9
 8003b44:	f002 ff92 	bl	8006a6c <__sprint_r>
 8003b48:	2800      	cmp	r0, #0
 8003b4a:	f47f a9e0 	bne.w	8002f0e <_vfprintf_r+0xafe>
 8003b4e:	f7fe bf0f 	b.w	8002970 <_vfprintf_r+0x560>
 8003b52:	a824      	add	r0, sp, #144	; 0x90
 8003b54:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b58:	f002 fe90 	bl	800687c <frexp>
 8003b5c:	2200      	movs	r2, #0
 8003b5e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b62:	ec51 0b10 	vmov	r0, r1, d0
 8003b66:	f7fc ffe7 	bl	8000b38 <__aeabi_dmul>
 8003b6a:	2200      	movs	r2, #0
 8003b6c:	2300      	movs	r3, #0
 8003b6e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b72:	f7fd fa49 	bl	8001008 <__aeabi_dcmpeq>
 8003b76:	b108      	cbz	r0, 8003b7c <_vfprintf_r+0x176c>
 8003b78:	2301      	movs	r3, #1
 8003b7a:	9324      	str	r3, [sp, #144]	; 0x90
 8003b7c:	4b02      	ldr	r3, [pc, #8]	; (8003b88 <_vfprintf_r+0x1778>)
 8003b7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b80:	e5ac      	b.n	80036dc <_vfprintf_r+0x12cc>
 8003b82:	bf00      	nop
 8003b84:	08007160 	.word	0x08007160
 8003b88:	0800711c 	.word	0x0800711c
 8003b8c:	425d      	negs	r5, r3
 8003b8e:	3310      	adds	r3, #16
 8003b90:	4bb9      	ldr	r3, [pc, #740]	; (8003e78 <_vfprintf_r+0x1a68>)
 8003b92:	f280 8097 	bge.w	8003cc4 <_vfprintf_r+0x18b4>
 8003b96:	4619      	mov	r1, r3
 8003b98:	2610      	movs	r6, #16
 8003b9a:	4623      	mov	r3, r4
 8003b9c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ba0:	460c      	mov	r4, r1
 8003ba2:	e005      	b.n	8003bb0 <_vfprintf_r+0x17a0>
 8003ba4:	f10b 0b08 	add.w	fp, fp, #8
 8003ba8:	3d10      	subs	r5, #16
 8003baa:	2d10      	cmp	r5, #16
 8003bac:	f340 8087 	ble.w	8003cbe <_vfprintf_r+0x18ae>
 8003bb0:	3201      	adds	r2, #1
 8003bb2:	3310      	adds	r3, #16
 8003bb4:	2a07      	cmp	r2, #7
 8003bb6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003bba:	e9cb 4600 	strd	r4, r6, [fp]
 8003bbe:	ddf1      	ble.n	8003ba4 <_vfprintf_r+0x1794>
 8003bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc2:	9907      	ldr	r1, [sp, #28]
 8003bc4:	4648      	mov	r0, r9
 8003bc6:	f002 ff51 	bl	8006a6c <__sprint_r>
 8003bca:	2800      	cmp	r0, #0
 8003bcc:	f47f a998 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003bd0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003bd4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bd8:	e7e6      	b.n	8003ba8 <_vfprintf_r+0x1798>
 8003bda:	f109 0101 	add.w	r1, r9, #1
 8003bde:	9803      	ldr	r0, [sp, #12]
 8003be0:	f001 fe80 	bl	80058e4 <_malloc_r>
 8003be4:	4607      	mov	r7, r0
 8003be6:	2800      	cmp	r0, #0
 8003be8:	f000 813b 	beq.w	8003e62 <_vfprintf_r+0x1a52>
 8003bec:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003bf0:	930e      	str	r3, [sp, #56]	; 0x38
 8003bf2:	f026 0320 	bic.w	r3, r6, #32
 8003bf6:	9304      	str	r3, [sp, #16]
 8003bf8:	46a0      	mov	r8, r4
 8003bfa:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bfc:	900a      	str	r0, [sp, #40]	; 0x28
 8003bfe:	e547      	b.n	8003690 <_vfprintf_r+0x1280>
 8003c00:	2667      	movs	r6, #103	; 0x67
 8003c02:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c04:	2200      	movs	r2, #0
 8003c06:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c08:	9214      	str	r2, [sp, #80]	; 0x50
 8003c0a:	7803      	ldrb	r3, [r0, #0]
 8003c0c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c0e:	2bff      	cmp	r3, #255	; 0xff
 8003c10:	d00c      	beq.n	8003c2c <_vfprintf_r+0x181c>
 8003c12:	4293      	cmp	r3, r2
 8003c14:	da0a      	bge.n	8003c2c <_vfprintf_r+0x181c>
 8003c16:	7841      	ldrb	r1, [r0, #1]
 8003c18:	1ad2      	subs	r2, r2, r3
 8003c1a:	b1a9      	cbz	r1, 8003c48 <_vfprintf_r+0x1838>
 8003c1c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c1e:	3301      	adds	r3, #1
 8003c20:	9314      	str	r3, [sp, #80]	; 0x50
 8003c22:	460b      	mov	r3, r1
 8003c24:	2bff      	cmp	r3, #255	; 0xff
 8003c26:	f100 0001 	add.w	r0, r0, #1
 8003c2a:	d1f2      	bne.n	8003c12 <_vfprintf_r+0x1802>
 8003c2c:	9211      	str	r2, [sp, #68]	; 0x44
 8003c2e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c30:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c32:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c34:	901a      	str	r0, [sp, #104]	; 0x68
 8003c36:	4413      	add	r3, r2
 8003c38:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c3a:	fb02 1303 	mla	r3, r2, r3, r1
 8003c3e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c40:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c44:	9304      	str	r3, [sp, #16]
 8003c46:	e485      	b.n	8003554 <_vfprintf_r+0x1144>
 8003c48:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c4a:	3101      	adds	r1, #1
 8003c4c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c4e:	e7de      	b.n	8003c0e <_vfprintf_r+0x17fe>
 8003c50:	aa28      	add	r2, sp, #160	; 0xa0
 8003c52:	ab25      	add	r3, sp, #148	; 0x94
 8003c54:	e9cd 3200 	strd	r3, r2, [sp]
 8003c58:	2103      	movs	r1, #3
 8003c5a:	ab24      	add	r3, sp, #144	; 0x90
 8003c5c:	464a      	mov	r2, r9
 8003c5e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c62:	9803      	ldr	r0, [sp, #12]
 8003c64:	f000 fa5c 	bl	8004120 <_dtoa_r>
 8003c68:	464d      	mov	r5, r9
 8003c6a:	4607      	mov	r7, r0
 8003c6c:	eb00 0409 	add.w	r4, r0, r9
 8003c70:	783b      	ldrb	r3, [r7, #0]
 8003c72:	2b30      	cmp	r3, #48	; 0x30
 8003c74:	f000 80be 	beq.w	8003df4 <_vfprintf_r+0x19e4>
 8003c78:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003c7a:	442c      	add	r4, r5
 8003c7c:	2200      	movs	r2, #0
 8003c7e:	2300      	movs	r3, #0
 8003c80:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c84:	f7fd f9c0 	bl	8001008 <__aeabi_dcmpeq>
 8003c88:	b108      	cbz	r0, 8003c8e <_vfprintf_r+0x187e>
 8003c8a:	4623      	mov	r3, r4
 8003c8c:	e413      	b.n	80034b6 <_vfprintf_r+0x10a6>
 8003c8e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c90:	42a3      	cmp	r3, r4
 8003c92:	f4bf ac10 	bcs.w	80034b6 <_vfprintf_r+0x10a6>
 8003c96:	2130      	movs	r1, #48	; 0x30
 8003c98:	1c5a      	adds	r2, r3, #1
 8003c9a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c9c:	7019      	strb	r1, [r3, #0]
 8003c9e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ca0:	429c      	cmp	r4, r3
 8003ca2:	d8f9      	bhi.n	8003c98 <_vfprintf_r+0x1888>
 8003ca4:	e407      	b.n	80034b6 <_vfprintf_r+0x10a6>
 8003ca6:	197c      	adds	r4, r7, r5
 8003ca8:	e7e8      	b.n	8003c7c <_vfprintf_r+0x186c>
 8003caa:	f1b9 0f00 	cmp.w	r9, #0
 8003cae:	f000 8092 	beq.w	8003dd6 <_vfprintf_r+0x19c6>
 8003cb2:	900a      	str	r0, [sp, #40]	; 0x28
 8003cb4:	e4ec      	b.n	8003690 <_vfprintf_r+0x1280>
 8003cb6:	900a      	str	r0, [sp, #40]	; 0x28
 8003cb8:	f04f 0906 	mov.w	r9, #6
 8003cbc:	e4e8      	b.n	8003690 <_vfprintf_r+0x1280>
 8003cbe:	4621      	mov	r1, r4
 8003cc0:	461c      	mov	r4, r3
 8003cc2:	460b      	mov	r3, r1
 8003cc4:	3201      	adds	r2, #1
 8003cc6:	442c      	add	r4, r5
 8003cc8:	2a07      	cmp	r2, #7
 8003cca:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cce:	e9cb 3500 	strd	r3, r5, [fp]
 8003cd2:	f300 80a9 	bgt.w	8003e28 <_vfprintf_r+0x1a18>
 8003cd6:	f10b 0b08 	add.w	fp, fp, #8
 8003cda:	e470      	b.n	80035be <_vfprintf_r+0x11ae>
 8003cdc:	469a      	mov	sl, r3
 8003cde:	f7ff bb37 	b.w	8003350 <_vfprintf_r+0xf40>
 8003ce2:	2301      	movs	r3, #1
 8003ce4:	9324      	str	r3, [sp, #144]	; 0x90
 8003ce6:	4b65      	ldr	r3, [pc, #404]	; (8003e7c <_vfprintf_r+0x1a6c>)
 8003ce8:	9309      	str	r3, [sp, #36]	; 0x24
 8003cea:	e4f7      	b.n	80036dc <_vfprintf_r+0x12cc>
 8003cec:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003cee:	4413      	add	r3, r2
 8003cf0:	444b      	add	r3, r9
 8003cf2:	9309      	str	r3, [sp, #36]	; 0x24
 8003cf4:	2666      	movs	r6, #102	; 0x66
 8003cf6:	e6fb      	b.n	8003af0 <_vfprintf_r+0x16e0>
 8003cf8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cfa:	9309      	str	r3, [sp, #36]	; 0x24
 8003cfc:	e694      	b.n	8003a28 <_vfprintf_r+0x1618>
 8003cfe:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d02:	4664      	mov	r4, ip
 8003d04:	4d5e      	ldr	r5, [pc, #376]	; (8003e80 <_vfprintf_r+0x1a70>)
 8003d06:	e000      	b.n	8003d0a <_vfprintf_r+0x18fa>
 8003d08:	4614      	mov	r4, r2
 8003d0a:	fba5 1203 	umull	r1, r2, r5, r3
 8003d0e:	08d2      	lsrs	r2, r2, #3
 8003d10:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d14:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d18:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d1c:	4613      	mov	r3, r2
 8003d1e:	2b09      	cmp	r3, #9
 8003d20:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d24:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d28:	dcee      	bgt.n	8003d08 <_vfprintf_r+0x18f8>
 8003d2a:	3330      	adds	r3, #48	; 0x30
 8003d2c:	3c02      	subs	r4, #2
 8003d2e:	b2db      	uxtb	r3, r3
 8003d30:	45a4      	cmp	ip, r4
 8003d32:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d36:	f240 8090 	bls.w	8003e5a <_vfprintf_r+0x1a4a>
 8003d3a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d3e:	4611      	mov	r1, r2
 8003d40:	e001      	b.n	8003d46 <_vfprintf_r+0x1936>
 8003d42:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d46:	f804 3b01 	strb.w	r3, [r4], #1
 8003d4a:	458c      	cmp	ip, r1
 8003d4c:	d1f9      	bne.n	8003d42 <_vfprintf_r+0x1932>
 8003d4e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d50:	1a9b      	subs	r3, r3, r2
 8003d52:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d56:	4413      	add	r3, r2
 8003d58:	f7ff bbe3 	b.w	8003522 <_vfprintf_r+0x1112>
 8003d5c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d5e:	4f49      	ldr	r7, [pc, #292]	; (8003e84 <_vfprintf_r+0x1a74>)
 8003d60:	2b00      	cmp	r3, #0
 8003d62:	bfb6      	itet	lt
 8003d64:	222d      	movlt	r2, #45	; 0x2d
 8003d66:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d6a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d6e:	4b46      	ldr	r3, [pc, #280]	; (8003e88 <_vfprintf_r+0x1a78>)
 8003d70:	f7fe bf02 	b.w	8002b78 <_vfprintf_r+0x768>
 8003d74:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d78:	f7ff b8c9 	b.w	8002f0e <_vfprintf_r+0xafe>
 8003d7c:	aa28      	add	r2, sp, #160	; 0xa0
 8003d7e:	ab25      	add	r3, sp, #148	; 0x94
 8003d80:	e9cd 3200 	strd	r3, r2, [sp]
 8003d84:	2103      	movs	r1, #3
 8003d86:	ab24      	add	r3, sp, #144	; 0x90
 8003d88:	464a      	mov	r2, r9
 8003d8a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d8e:	9803      	ldr	r0, [sp, #12]
 8003d90:	f000 f9c6 	bl	8004120 <_dtoa_r>
 8003d94:	464d      	mov	r5, r9
 8003d96:	4607      	mov	r7, r0
 8003d98:	2e46      	cmp	r6, #70	; 0x46
 8003d9a:	eb07 0405 	add.w	r4, r7, r5
 8003d9e:	f43f af67 	beq.w	8003c70 <_vfprintf_r+0x1860>
 8003da2:	e76b      	b.n	8003c7c <_vfprintf_r+0x186c>
 8003da4:	f1b9 0f00 	cmp.w	r9, #0
 8003da8:	d131      	bne.n	8003e0e <_vfprintf_r+0x19fe>
 8003daa:	07c5      	lsls	r5, r0, #31
 8003dac:	d42f      	bmi.n	8003e0e <_vfprintf_r+0x19fe>
 8003dae:	2301      	movs	r3, #1
 8003db0:	9304      	str	r3, [sp, #16]
 8003db2:	9309      	str	r3, [sp, #36]	; 0x24
 8003db4:	2666      	movs	r6, #102	; 0x66
 8003db6:	e642      	b.n	8003a3e <_vfprintf_r+0x162e>
 8003db8:	07c3      	lsls	r3, r0, #31
 8003dba:	f57f abbf 	bpl.w	800353c <_vfprintf_r+0x112c>
 8003dbe:	f7ff bbb9 	b.w	8003534 <_vfprintf_r+0x1124>
 8003dc2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003dc4:	f1c3 0301 	rsb	r3, r3, #1
 8003dc8:	441a      	add	r2, r3
 8003dca:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003dce:	9209      	str	r2, [sp, #36]	; 0x24
 8003dd0:	9304      	str	r3, [sp, #16]
 8003dd2:	2667      	movs	r6, #103	; 0x67
 8003dd4:	e633      	b.n	8003a3e <_vfprintf_r+0x162e>
 8003dd6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003dda:	f04f 0901 	mov.w	r9, #1
 8003dde:	e457      	b.n	8003690 <_vfprintf_r+0x1280>
 8003de0:	465a      	mov	r2, fp
 8003de2:	e511      	b.n	8003808 <_vfprintf_r+0x13f8>
 8003de4:	2e47      	cmp	r6, #71	; 0x47
 8003de6:	f47f af5e 	bne.w	8003ca6 <_vfprintf_r+0x1896>
 8003dea:	f018 0f01 	tst.w	r8, #1
 8003dee:	f43f ab61 	beq.w	80034b4 <_vfprintf_r+0x10a4>
 8003df2:	e7d1      	b.n	8003d98 <_vfprintf_r+0x1988>
 8003df4:	2200      	movs	r2, #0
 8003df6:	2300      	movs	r3, #0
 8003df8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003dfc:	f7fd f904 	bl	8001008 <__aeabi_dcmpeq>
 8003e00:	2800      	cmp	r0, #0
 8003e02:	f47f af39 	bne.w	8003c78 <_vfprintf_r+0x1868>
 8003e06:	f1c5 0501 	rsb	r5, r5, #1
 8003e0a:	9524      	str	r5, [sp, #144]	; 0x90
 8003e0c:	e735      	b.n	8003c7a <_vfprintf_r+0x186a>
 8003e0e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e10:	3301      	adds	r3, #1
 8003e12:	444b      	add	r3, r9
 8003e14:	9309      	str	r3, [sp, #36]	; 0x24
 8003e16:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e1a:	9304      	str	r3, [sp, #16]
 8003e1c:	2666      	movs	r6, #102	; 0x66
 8003e1e:	e60e      	b.n	8003a3e <_vfprintf_r+0x162e>
 8003e20:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e24:	f7ff bb7a 	b.w	800351c <_vfprintf_r+0x110c>
 8003e28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e2a:	9907      	ldr	r1, [sp, #28]
 8003e2c:	9803      	ldr	r0, [sp, #12]
 8003e2e:	f002 fe1d 	bl	8006a6c <__sprint_r>
 8003e32:	2800      	cmp	r0, #0
 8003e34:	f47f a864 	bne.w	8002f00 <_vfprintf_r+0xaf0>
 8003e38:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e3c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e40:	f7ff bbbd 	b.w	80035be <_vfprintf_r+0x11ae>
 8003e44:	9908      	ldr	r1, [sp, #32]
 8003e46:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e4a:	680b      	ldr	r3, [r1, #0]
 8003e4c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e50:	1d0b      	adds	r3, r1, #4
 8003e52:	4692      	mov	sl, r2
 8003e54:	9308      	str	r3, [sp, #32]
 8003e56:	f7fe bb59 	b.w	800250c <_vfprintf_r+0xfc>
 8003e5a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e5e:	f7ff bb60 	b.w	8003522 <_vfprintf_r+0x1112>
 8003e62:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e66:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e6a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e6e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003e72:	f7ff b84c 	b.w	8002f0e <_vfprintf_r+0xafe>
 8003e76:	bf00      	nop
 8003e78:	08007160 	.word	0x08007160
 8003e7c:	08007130 	.word	0x08007130
 8003e80:	cccccccd 	.word	0xcccccccd
 8003e84:	08007118 	.word	0x08007118
 8003e88:	08007114 	.word	0x08007114

08003e8c <__sbprintf>:
 8003e8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003e90:	460c      	mov	r4, r1
 8003e92:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003e96:	8989      	ldrh	r1, [r1, #12]
 8003e98:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003e9a:	89e5      	ldrh	r5, [r4, #14]
 8003e9c:	9619      	str	r6, [sp, #100]	; 0x64
 8003e9e:	f021 0102 	bic.w	r1, r1, #2
 8003ea2:	4606      	mov	r6, r0
 8003ea4:	69e0      	ldr	r0, [r4, #28]
 8003ea6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003eaa:	4617      	mov	r7, r2
 8003eac:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003eb0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003eb2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003eb6:	4698      	mov	r8, r3
 8003eb8:	ad1a      	add	r5, sp, #104	; 0x68
 8003eba:	2300      	movs	r3, #0
 8003ebc:	9007      	str	r0, [sp, #28]
 8003ebe:	a816      	add	r0, sp, #88	; 0x58
 8003ec0:	9209      	str	r2, [sp, #36]	; 0x24
 8003ec2:	9306      	str	r3, [sp, #24]
 8003ec4:	9500      	str	r5, [sp, #0]
 8003ec6:	9504      	str	r5, [sp, #16]
 8003ec8:	9102      	str	r1, [sp, #8]
 8003eca:	9105      	str	r1, [sp, #20]
 8003ecc:	f001 fc8a 	bl	80057e4 <__retarget_lock_init_recursive>
 8003ed0:	4643      	mov	r3, r8
 8003ed2:	463a      	mov	r2, r7
 8003ed4:	4669      	mov	r1, sp
 8003ed6:	4630      	mov	r0, r6
 8003ed8:	f7fe fa9a 	bl	8002410 <_vfprintf_r>
 8003edc:	1e05      	subs	r5, r0, #0
 8003ede:	db07      	blt.n	8003ef0 <__sbprintf+0x64>
 8003ee0:	4630      	mov	r0, r6
 8003ee2:	4669      	mov	r1, sp
 8003ee4:	f001 f8d6 	bl	8005094 <_fflush_r>
 8003ee8:	2800      	cmp	r0, #0
 8003eea:	bf18      	it	ne
 8003eec:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003ef0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003ef4:	065b      	lsls	r3, r3, #25
 8003ef6:	d503      	bpl.n	8003f00 <__sbprintf+0x74>
 8003ef8:	89a3      	ldrh	r3, [r4, #12]
 8003efa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003efe:	81a3      	strh	r3, [r4, #12]
 8003f00:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f02:	f001 fc71 	bl	80057e8 <__retarget_lock_close_recursive>
 8003f06:	4628      	mov	r0, r5
 8003f08:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f10 <__swsetup_r>:
 8003f10:	b538      	push	{r3, r4, r5, lr}
 8003f12:	4b31      	ldr	r3, [pc, #196]	; (8003fd8 <__swsetup_r+0xc8>)
 8003f14:	681b      	ldr	r3, [r3, #0]
 8003f16:	4605      	mov	r5, r0
 8003f18:	460c      	mov	r4, r1
 8003f1a:	b113      	cbz	r3, 8003f22 <__swsetup_r+0x12>
 8003f1c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f1e:	2a00      	cmp	r2, #0
 8003f20:	d03a      	beq.n	8003f98 <__swsetup_r+0x88>
 8003f22:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f26:	b293      	uxth	r3, r2
 8003f28:	0718      	lsls	r0, r3, #28
 8003f2a:	d50c      	bpl.n	8003f46 <__swsetup_r+0x36>
 8003f2c:	6920      	ldr	r0, [r4, #16]
 8003f2e:	b1a8      	cbz	r0, 8003f5c <__swsetup_r+0x4c>
 8003f30:	f013 0201 	ands.w	r2, r3, #1
 8003f34:	d020      	beq.n	8003f78 <__swsetup_r+0x68>
 8003f36:	6963      	ldr	r3, [r4, #20]
 8003f38:	2200      	movs	r2, #0
 8003f3a:	425b      	negs	r3, r3
 8003f3c:	61a3      	str	r3, [r4, #24]
 8003f3e:	60a2      	str	r2, [r4, #8]
 8003f40:	b300      	cbz	r0, 8003f84 <__swsetup_r+0x74>
 8003f42:	2000      	movs	r0, #0
 8003f44:	bd38      	pop	{r3, r4, r5, pc}
 8003f46:	06d9      	lsls	r1, r3, #27
 8003f48:	d53e      	bpl.n	8003fc8 <__swsetup_r+0xb8>
 8003f4a:	0758      	lsls	r0, r3, #29
 8003f4c:	d428      	bmi.n	8003fa0 <__swsetup_r+0x90>
 8003f4e:	6920      	ldr	r0, [r4, #16]
 8003f50:	f042 0308 	orr.w	r3, r2, #8
 8003f54:	81a3      	strh	r3, [r4, #12]
 8003f56:	b29b      	uxth	r3, r3
 8003f58:	2800      	cmp	r0, #0
 8003f5a:	d1e9      	bne.n	8003f30 <__swsetup_r+0x20>
 8003f5c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f60:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f64:	d0e4      	beq.n	8003f30 <__swsetup_r+0x20>
 8003f66:	4628      	mov	r0, r5
 8003f68:	4621      	mov	r1, r4
 8003f6a:	f001 fc71 	bl	8005850 <__smakebuf_r>
 8003f6e:	89a3      	ldrh	r3, [r4, #12]
 8003f70:	6920      	ldr	r0, [r4, #16]
 8003f72:	f013 0201 	ands.w	r2, r3, #1
 8003f76:	d1de      	bne.n	8003f36 <__swsetup_r+0x26>
 8003f78:	0799      	lsls	r1, r3, #30
 8003f7a:	bf58      	it	pl
 8003f7c:	6962      	ldrpl	r2, [r4, #20]
 8003f7e:	60a2      	str	r2, [r4, #8]
 8003f80:	2800      	cmp	r0, #0
 8003f82:	d1de      	bne.n	8003f42 <__swsetup_r+0x32>
 8003f84:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003f88:	061a      	lsls	r2, r3, #24
 8003f8a:	d5db      	bpl.n	8003f44 <__swsetup_r+0x34>
 8003f8c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f90:	81a3      	strh	r3, [r4, #12]
 8003f92:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f96:	bd38      	pop	{r3, r4, r5, pc}
 8003f98:	4618      	mov	r0, r3
 8003f9a:	f001 f8d7 	bl	800514c <__sinit>
 8003f9e:	e7c0      	b.n	8003f22 <__swsetup_r+0x12>
 8003fa0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003fa2:	b151      	cbz	r1, 8003fba <__swsetup_r+0xaa>
 8003fa4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003fa8:	4299      	cmp	r1, r3
 8003faa:	d004      	beq.n	8003fb6 <__swsetup_r+0xa6>
 8003fac:	4628      	mov	r0, r5
 8003fae:	f001 f96f 	bl	8005290 <_free_r>
 8003fb2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fb6:	2300      	movs	r3, #0
 8003fb8:	6323      	str	r3, [r4, #48]	; 0x30
 8003fba:	2300      	movs	r3, #0
 8003fbc:	6920      	ldr	r0, [r4, #16]
 8003fbe:	6063      	str	r3, [r4, #4]
 8003fc0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003fc4:	6020      	str	r0, [r4, #0]
 8003fc6:	e7c3      	b.n	8003f50 <__swsetup_r+0x40>
 8003fc8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003fcc:	2309      	movs	r3, #9
 8003fce:	602b      	str	r3, [r5, #0]
 8003fd0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fd4:	81a2      	strh	r2, [r4, #12]
 8003fd6:	bd38      	pop	{r3, r4, r5, pc}
 8003fd8:	20000068 	.word	0x20000068

08003fdc <register_fini>:
 8003fdc:	4b02      	ldr	r3, [pc, #8]	; (8003fe8 <register_fini+0xc>)
 8003fde:	b113      	cbz	r3, 8003fe6 <register_fini+0xa>
 8003fe0:	4802      	ldr	r0, [pc, #8]	; (8003fec <register_fini+0x10>)
 8003fe2:	f000 b805 	b.w	8003ff0 <atexit>
 8003fe6:	4770      	bx	lr
 8003fe8:	00000000 	.word	0x00000000
 8003fec:	080051bd 	.word	0x080051bd

08003ff0 <atexit>:
 8003ff0:	2300      	movs	r3, #0
 8003ff2:	4601      	mov	r1, r0
 8003ff4:	461a      	mov	r2, r3
 8003ff6:	4618      	mov	r0, r3
 8003ff8:	f002 bd58 	b.w	8006aac <__register_exitproc>

08003ffc <quorem>:
 8003ffc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004000:	6903      	ldr	r3, [r0, #16]
 8004002:	690f      	ldr	r7, [r1, #16]
 8004004:	42bb      	cmp	r3, r7
 8004006:	b083      	sub	sp, #12
 8004008:	f2c0 8086 	blt.w	8004118 <quorem+0x11c>
 800400c:	3f01      	subs	r7, #1
 800400e:	f101 0914 	add.w	r9, r1, #20
 8004012:	f100 0a14 	add.w	sl, r0, #20
 8004016:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800401a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800401e:	00bc      	lsls	r4, r7, #2
 8004020:	3201      	adds	r2, #1
 8004022:	fbb3 f8f2 	udiv	r8, r3, r2
 8004026:	eb0a 0304 	add.w	r3, sl, r4
 800402a:	9400      	str	r4, [sp, #0]
 800402c:	eb09 0b04 	add.w	fp, r9, r4
 8004030:	9301      	str	r3, [sp, #4]
 8004032:	f1b8 0f00 	cmp.w	r8, #0
 8004036:	d038      	beq.n	80040aa <quorem+0xae>
 8004038:	2500      	movs	r5, #0
 800403a:	462e      	mov	r6, r5
 800403c:	46ce      	mov	lr, r9
 800403e:	46d4      	mov	ip, sl
 8004040:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004044:	f8dc 3000 	ldr.w	r3, [ip]
 8004048:	b2a2      	uxth	r2, r4
 800404a:	fb08 5502 	mla	r5, r8, r2, r5
 800404e:	0c22      	lsrs	r2, r4, #16
 8004050:	0c2c      	lsrs	r4, r5, #16
 8004052:	fb08 4202 	mla	r2, r8, r2, r4
 8004056:	b2ad      	uxth	r5, r5
 8004058:	1b75      	subs	r5, r6, r5
 800405a:	b296      	uxth	r6, r2
 800405c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004060:	fa15 f383 	uxtah	r3, r5, r3
 8004064:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004068:	b29b      	uxth	r3, r3
 800406a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800406e:	45f3      	cmp	fp, lr
 8004070:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004074:	f84c 3b04 	str.w	r3, [ip], #4
 8004078:	ea4f 4626 	mov.w	r6, r6, asr #16
 800407c:	d2e0      	bcs.n	8004040 <quorem+0x44>
 800407e:	9b00      	ldr	r3, [sp, #0]
 8004080:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004084:	b98b      	cbnz	r3, 80040aa <quorem+0xae>
 8004086:	9a01      	ldr	r2, [sp, #4]
 8004088:	1f13      	subs	r3, r2, #4
 800408a:	459a      	cmp	sl, r3
 800408c:	d20c      	bcs.n	80040a8 <quorem+0xac>
 800408e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004092:	b94b      	cbnz	r3, 80040a8 <quorem+0xac>
 8004094:	f1a2 0308 	sub.w	r3, r2, #8
 8004098:	e002      	b.n	80040a0 <quorem+0xa4>
 800409a:	681a      	ldr	r2, [r3, #0]
 800409c:	3b04      	subs	r3, #4
 800409e:	b91a      	cbnz	r2, 80040a8 <quorem+0xac>
 80040a0:	459a      	cmp	sl, r3
 80040a2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040a6:	d3f8      	bcc.n	800409a <quorem+0x9e>
 80040a8:	6107      	str	r7, [r0, #16]
 80040aa:	4604      	mov	r4, r0
 80040ac:	f002 f944 	bl	8006338 <__mcmp>
 80040b0:	2800      	cmp	r0, #0
 80040b2:	db2d      	blt.n	8004110 <quorem+0x114>
 80040b4:	f108 0801 	add.w	r8, r8, #1
 80040b8:	4655      	mov	r5, sl
 80040ba:	2300      	movs	r3, #0
 80040bc:	f859 1b04 	ldr.w	r1, [r9], #4
 80040c0:	6828      	ldr	r0, [r5, #0]
 80040c2:	b28a      	uxth	r2, r1
 80040c4:	1a9a      	subs	r2, r3, r2
 80040c6:	0c0b      	lsrs	r3, r1, #16
 80040c8:	fa12 f280 	uxtah	r2, r2, r0
 80040cc:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80040d0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80040d4:	b292      	uxth	r2, r2
 80040d6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80040da:	45cb      	cmp	fp, r9
 80040dc:	f845 2b04 	str.w	r2, [r5], #4
 80040e0:	ea4f 4323 	mov.w	r3, r3, asr #16
 80040e4:	d2ea      	bcs.n	80040bc <quorem+0xc0>
 80040e6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80040ea:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80040ee:	b97a      	cbnz	r2, 8004110 <quorem+0x114>
 80040f0:	1f1a      	subs	r2, r3, #4
 80040f2:	4592      	cmp	sl, r2
 80040f4:	d20b      	bcs.n	800410e <quorem+0x112>
 80040f6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80040fa:	b942      	cbnz	r2, 800410e <quorem+0x112>
 80040fc:	3b08      	subs	r3, #8
 80040fe:	e002      	b.n	8004106 <quorem+0x10a>
 8004100:	681a      	ldr	r2, [r3, #0]
 8004102:	3b04      	subs	r3, #4
 8004104:	b91a      	cbnz	r2, 800410e <quorem+0x112>
 8004106:	459a      	cmp	sl, r3
 8004108:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800410c:	d3f8      	bcc.n	8004100 <quorem+0x104>
 800410e:	6127      	str	r7, [r4, #16]
 8004110:	4640      	mov	r0, r8
 8004112:	b003      	add	sp, #12
 8004114:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004118:	2000      	movs	r0, #0
 800411a:	b003      	add	sp, #12
 800411c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004120 <_dtoa_r>:
 8004120:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004124:	ec55 4b10 	vmov	r4, r5, d0
 8004128:	b09b      	sub	sp, #108	; 0x6c
 800412a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800412c:	9102      	str	r1, [sp, #8]
 800412e:	4681      	mov	r9, r0
 8004130:	9207      	str	r2, [sp, #28]
 8004132:	9305      	str	r3, [sp, #20]
 8004134:	e9cd 4500 	strd	r4, r5, [sp]
 8004138:	b156      	cbz	r6, 8004150 <_dtoa_r+0x30>
 800413a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800413c:	6072      	str	r2, [r6, #4]
 800413e:	2301      	movs	r3, #1
 8004140:	4093      	lsls	r3, r2
 8004142:	60b3      	str	r3, [r6, #8]
 8004144:	4631      	mov	r1, r6
 8004146:	f001 ff07 	bl	8005f58 <_Bfree>
 800414a:	2300      	movs	r3, #0
 800414c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004150:	f1b5 0800 	subs.w	r8, r5, #0
 8004154:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004156:	bfb4      	ite	lt
 8004158:	2301      	movlt	r3, #1
 800415a:	2300      	movge	r3, #0
 800415c:	6013      	str	r3, [r2, #0]
 800415e:	4b76      	ldr	r3, [pc, #472]	; (8004338 <_dtoa_r+0x218>)
 8004160:	bfbc      	itt	lt
 8004162:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004166:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800416a:	ea33 0308 	bics.w	r3, r3, r8
 800416e:	f000 80a6 	beq.w	80042be <_dtoa_r+0x19e>
 8004172:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004176:	2200      	movs	r2, #0
 8004178:	2300      	movs	r3, #0
 800417a:	4630      	mov	r0, r6
 800417c:	4639      	mov	r1, r7
 800417e:	f7fc ff43 	bl	8001008 <__aeabi_dcmpeq>
 8004182:	4605      	mov	r5, r0
 8004184:	b178      	cbz	r0, 80041a6 <_dtoa_r+0x86>
 8004186:	9a05      	ldr	r2, [sp, #20]
 8004188:	2301      	movs	r3, #1
 800418a:	6013      	str	r3, [r2, #0]
 800418c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800418e:	2b00      	cmp	r3, #0
 8004190:	f000 80c0 	beq.w	8004314 <_dtoa_r+0x1f4>
 8004194:	4b69      	ldr	r3, [pc, #420]	; (800433c <_dtoa_r+0x21c>)
 8004196:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004198:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800419c:	6013      	str	r3, [r2, #0]
 800419e:	4658      	mov	r0, fp
 80041a0:	b01b      	add	sp, #108	; 0x6c
 80041a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041a6:	aa18      	add	r2, sp, #96	; 0x60
 80041a8:	a919      	add	r1, sp, #100	; 0x64
 80041aa:	ec47 6b10 	vmov	d0, r6, r7
 80041ae:	4648      	mov	r0, r9
 80041b0:	f002 f954 	bl	800645c <__d2b>
 80041b4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80041b8:	4682      	mov	sl, r0
 80041ba:	f040 80a0 	bne.w	80042fe <_dtoa_r+0x1de>
 80041be:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80041c2:	442c      	add	r4, r5
 80041c4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80041c8:	2b20      	cmp	r3, #32
 80041ca:	f340 842c 	ble.w	8004a26 <_dtoa_r+0x906>
 80041ce:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80041d2:	fa08 f803 	lsl.w	r8, r8, r3
 80041d6:	9b00      	ldr	r3, [sp, #0]
 80041d8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80041dc:	fa23 f000 	lsr.w	r0, r3, r0
 80041e0:	ea48 0000 	orr.w	r0, r8, r0
 80041e4:	f7fc fc2e 	bl	8000a44 <__aeabi_ui2d>
 80041e8:	2301      	movs	r3, #1
 80041ea:	4606      	mov	r6, r0
 80041ec:	3c01      	subs	r4, #1
 80041ee:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80041f2:	930f      	str	r3, [sp, #60]	; 0x3c
 80041f4:	4630      	mov	r0, r6
 80041f6:	4639      	mov	r1, r7
 80041f8:	2200      	movs	r2, #0
 80041fa:	4b51      	ldr	r3, [pc, #324]	; (8004340 <_dtoa_r+0x220>)
 80041fc:	f7fc fae4 	bl	80007c8 <__aeabi_dsub>
 8004200:	a347      	add	r3, pc, #284	; (adr r3, 8004320 <_dtoa_r+0x200>)
 8004202:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004206:	f7fc fc97 	bl	8000b38 <__aeabi_dmul>
 800420a:	a347      	add	r3, pc, #284	; (adr r3, 8004328 <_dtoa_r+0x208>)
 800420c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004210:	f7fc fadc 	bl	80007cc <__adddf3>
 8004214:	4606      	mov	r6, r0
 8004216:	4620      	mov	r0, r4
 8004218:	460f      	mov	r7, r1
 800421a:	f7fc fc23 	bl	8000a64 <__aeabi_i2d>
 800421e:	a344      	add	r3, pc, #272	; (adr r3, 8004330 <_dtoa_r+0x210>)
 8004220:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004224:	f7fc fc88 	bl	8000b38 <__aeabi_dmul>
 8004228:	4602      	mov	r2, r0
 800422a:	460b      	mov	r3, r1
 800422c:	4630      	mov	r0, r6
 800422e:	4639      	mov	r1, r7
 8004230:	f7fc facc 	bl	80007cc <__adddf3>
 8004234:	4606      	mov	r6, r0
 8004236:	460f      	mov	r7, r1
 8004238:	f7fc ff2e 	bl	8001098 <__aeabi_d2iz>
 800423c:	2200      	movs	r2, #0
 800423e:	9006      	str	r0, [sp, #24]
 8004240:	2300      	movs	r3, #0
 8004242:	4630      	mov	r0, r6
 8004244:	4639      	mov	r1, r7
 8004246:	f7fc fee9 	bl	800101c <__aeabi_dcmplt>
 800424a:	2800      	cmp	r0, #0
 800424c:	f040 8273 	bne.w	8004736 <_dtoa_r+0x616>
 8004250:	9e06      	ldr	r6, [sp, #24]
 8004252:	2e16      	cmp	r6, #22
 8004254:	f200 825d 	bhi.w	8004712 <_dtoa_r+0x5f2>
 8004258:	4b3a      	ldr	r3, [pc, #232]	; (8004344 <_dtoa_r+0x224>)
 800425a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800425e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004262:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004266:	f7fc fef7 	bl	8001058 <__aeabi_dcmpgt>
 800426a:	2800      	cmp	r0, #0
 800426c:	f000 83d7 	beq.w	8004a1e <_dtoa_r+0x8fe>
 8004270:	1e73      	subs	r3, r6, #1
 8004272:	9306      	str	r3, [sp, #24]
 8004274:	2300      	movs	r3, #0
 8004276:	930d      	str	r3, [sp, #52]	; 0x34
 8004278:	1b2c      	subs	r4, r5, r4
 800427a:	f1b4 0801 	subs.w	r8, r4, #1
 800427e:	f100 8254 	bmi.w	800472a <_dtoa_r+0x60a>
 8004282:	2300      	movs	r3, #0
 8004284:	9308      	str	r3, [sp, #32]
 8004286:	9b06      	ldr	r3, [sp, #24]
 8004288:	2b00      	cmp	r3, #0
 800428a:	f2c0 8245 	blt.w	8004718 <_dtoa_r+0x5f8>
 800428e:	4498      	add	r8, r3
 8004290:	930c      	str	r3, [sp, #48]	; 0x30
 8004292:	2300      	movs	r3, #0
 8004294:	930b      	str	r3, [sp, #44]	; 0x2c
 8004296:	9b02      	ldr	r3, [sp, #8]
 8004298:	2b09      	cmp	r3, #9
 800429a:	d85b      	bhi.n	8004354 <_dtoa_r+0x234>
 800429c:	2b05      	cmp	r3, #5
 800429e:	f340 83c0 	ble.w	8004a22 <_dtoa_r+0x902>
 80042a2:	3b04      	subs	r3, #4
 80042a4:	9302      	str	r3, [sp, #8]
 80042a6:	2500      	movs	r5, #0
 80042a8:	9b02      	ldr	r3, [sp, #8]
 80042aa:	3b02      	subs	r3, #2
 80042ac:	2b03      	cmp	r3, #3
 80042ae:	f200 8498 	bhi.w	8004be2 <_dtoa_r+0xac2>
 80042b2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80042b6:	03df      	.short	0x03df
 80042b8:	03e803bf 	.word	0x03e803bf
 80042bc:	04f5      	.short	0x04f5
 80042be:	9a05      	ldr	r2, [sp, #20]
 80042c0:	f242 730f 	movw	r3, #9999	; 0x270f
 80042c4:	6013      	str	r3, [r2, #0]
 80042c6:	9b00      	ldr	r3, [sp, #0]
 80042c8:	b983      	cbnz	r3, 80042ec <_dtoa_r+0x1cc>
 80042ca:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80042ce:	b96b      	cbnz	r3, 80042ec <_dtoa_r+0x1cc>
 80042d0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042d2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004348 <_dtoa_r+0x228>
 80042d6:	2b00      	cmp	r3, #0
 80042d8:	f43f af61 	beq.w	800419e <_dtoa_r+0x7e>
 80042dc:	f10b 0308 	add.w	r3, fp, #8
 80042e0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042e2:	4658      	mov	r0, fp
 80042e4:	6013      	str	r3, [r2, #0]
 80042e6:	b01b      	add	sp, #108	; 0x6c
 80042e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042ec:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042ee:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800434c <_dtoa_r+0x22c>
 80042f2:	2b00      	cmp	r3, #0
 80042f4:	f43f af53 	beq.w	800419e <_dtoa_r+0x7e>
 80042f8:	f10b 0303 	add.w	r3, fp, #3
 80042fc:	e7f0      	b.n	80042e0 <_dtoa_r+0x1c0>
 80042fe:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004302:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004306:	950f      	str	r5, [sp, #60]	; 0x3c
 8004308:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800430c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004310:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004312:	e76f      	b.n	80041f4 <_dtoa_r+0xd4>
 8004314:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004350 <_dtoa_r+0x230>
 8004318:	4658      	mov	r0, fp
 800431a:	b01b      	add	sp, #108	; 0x6c
 800431c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004320:	636f4361 	.word	0x636f4361
 8004324:	3fd287a7 	.word	0x3fd287a7
 8004328:	8b60c8b3 	.word	0x8b60c8b3
 800432c:	3fc68a28 	.word	0x3fc68a28
 8004330:	509f79fb 	.word	0x509f79fb
 8004334:	3fd34413 	.word	0x3fd34413
 8004338:	7ff00000 	.word	0x7ff00000
 800433c:	0800714d 	.word	0x0800714d
 8004340:	3ff80000 	.word	0x3ff80000
 8004344:	080071a8 	.word	0x080071a8
 8004348:	08007170 	.word	0x08007170
 800434c:	0800717c 	.word	0x0800717c
 8004350:	0800714c 	.word	0x0800714c
 8004354:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004358:	2501      	movs	r5, #1
 800435a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800435e:	2300      	movs	r3, #0
 8004360:	9302      	str	r3, [sp, #8]
 8004362:	9307      	str	r3, [sp, #28]
 8004364:	2100      	movs	r1, #0
 8004366:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800436a:	940e      	str	r4, [sp, #56]	; 0x38
 800436c:	4648      	mov	r0, r9
 800436e:	f001 fdcd 	bl	8005f0c <_Balloc>
 8004372:	2c0e      	cmp	r4, #14
 8004374:	4683      	mov	fp, r0
 8004376:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800437a:	f200 80fb 	bhi.w	8004574 <_dtoa_r+0x454>
 800437e:	2d00      	cmp	r5, #0
 8004380:	f000 80f8 	beq.w	8004574 <_dtoa_r+0x454>
 8004384:	ed9d 7b00 	vldr	d7, [sp]
 8004388:	9906      	ldr	r1, [sp, #24]
 800438a:	2900      	cmp	r1, #0
 800438c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004390:	f340 83e5 	ble.w	8004b5e <_dtoa_r+0xa3e>
 8004394:	4b9d      	ldr	r3, [pc, #628]	; (800460c <_dtoa_r+0x4ec>)
 8004396:	f001 020f 	and.w	r2, r1, #15
 800439a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800439e:	ed93 7b00 	vldr	d7, [r3]
 80043a2:	110c      	asrs	r4, r1, #4
 80043a4:	06e2      	lsls	r2, r4, #27
 80043a6:	ed8d 7b00 	vstr	d7, [sp]
 80043aa:	f140 849e 	bpl.w	8004cea <_dtoa_r+0xbca>
 80043ae:	4b98      	ldr	r3, [pc, #608]	; (8004610 <_dtoa_r+0x4f0>)
 80043b0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80043b4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80043b8:	f7fc fce8 	bl	8000d8c <__aeabi_ddiv>
 80043bc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80043c0:	f004 040f 	and.w	r4, r4, #15
 80043c4:	2603      	movs	r6, #3
 80043c6:	b17c      	cbz	r4, 80043e8 <_dtoa_r+0x2c8>
 80043c8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043cc:	4d90      	ldr	r5, [pc, #576]	; (8004610 <_dtoa_r+0x4f0>)
 80043ce:	07e3      	lsls	r3, r4, #31
 80043d0:	d504      	bpl.n	80043dc <_dtoa_r+0x2bc>
 80043d2:	e9d5 2300 	ldrd	r2, r3, [r5]
 80043d6:	f7fc fbaf 	bl	8000b38 <__aeabi_dmul>
 80043da:	3601      	adds	r6, #1
 80043dc:	1064      	asrs	r4, r4, #1
 80043de:	f105 0508 	add.w	r5, r5, #8
 80043e2:	d1f4      	bne.n	80043ce <_dtoa_r+0x2ae>
 80043e4:	e9cd 0100 	strd	r0, r1, [sp]
 80043e8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043ec:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80043f0:	f7fc fccc 	bl	8000d8c <__aeabi_ddiv>
 80043f4:	e9cd 0100 	strd	r0, r1, [sp]
 80043f8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80043fa:	b143      	cbz	r3, 800440e <_dtoa_r+0x2ee>
 80043fc:	2200      	movs	r2, #0
 80043fe:	4b85      	ldr	r3, [pc, #532]	; (8004614 <_dtoa_r+0x4f4>)
 8004400:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004404:	f7fc fe0a 	bl	800101c <__aeabi_dcmplt>
 8004408:	2800      	cmp	r0, #0
 800440a:	f040 84ff 	bne.w	8004e0c <_dtoa_r+0xcec>
 800440e:	4630      	mov	r0, r6
 8004410:	f7fc fb28 	bl	8000a64 <__aeabi_i2d>
 8004414:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004418:	f7fc fb8e 	bl	8000b38 <__aeabi_dmul>
 800441c:	4b7e      	ldr	r3, [pc, #504]	; (8004618 <_dtoa_r+0x4f8>)
 800441e:	2200      	movs	r2, #0
 8004420:	f7fc f9d4 	bl	80007cc <__adddf3>
 8004424:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004426:	4606      	mov	r6, r0
 8004428:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800442c:	2b00      	cmp	r3, #0
 800442e:	f000 841c 	beq.w	8004c6a <_dtoa_r+0xb4a>
 8004432:	9b06      	ldr	r3, [sp, #24]
 8004434:	9316      	str	r3, [sp, #88]	; 0x58
 8004436:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004438:	9312      	str	r3, [sp, #72]	; 0x48
 800443a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800443e:	f7fc fe2b 	bl	8001098 <__aeabi_d2iz>
 8004442:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004444:	4b71      	ldr	r3, [pc, #452]	; (800460c <_dtoa_r+0x4ec>)
 8004446:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800444a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800444e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004452:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004456:	f7fc fb05 	bl	8000a64 <__aeabi_i2d>
 800445a:	460b      	mov	r3, r1
 800445c:	4602      	mov	r2, r0
 800445e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004462:	e9cd 6700 	strd	r6, r7, [sp]
 8004466:	f7fc f9af 	bl	80007c8 <__aeabi_dsub>
 800446a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800446c:	b2ed      	uxtb	r5, r5
 800446e:	4606      	mov	r6, r0
 8004470:	460f      	mov	r7, r1
 8004472:	f10b 0401 	add.w	r4, fp, #1
 8004476:	2b00      	cmp	r3, #0
 8004478:	f000 8458 	beq.w	8004d2c <_dtoa_r+0xc0c>
 800447c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004480:	2000      	movs	r0, #0
 8004482:	4966      	ldr	r1, [pc, #408]	; (800461c <_dtoa_r+0x4fc>)
 8004484:	f7fc fc82 	bl	8000d8c <__aeabi_ddiv>
 8004488:	e9dd 2300 	ldrd	r2, r3, [sp]
 800448c:	f7fc f99c 	bl	80007c8 <__aeabi_dsub>
 8004490:	f88b 5000 	strb.w	r5, [fp]
 8004494:	4632      	mov	r2, r6
 8004496:	463b      	mov	r3, r7
 8004498:	e9cd 0100 	strd	r0, r1, [sp]
 800449c:	f7fc fddc 	bl	8001058 <__aeabi_dcmpgt>
 80044a0:	2800      	cmp	r0, #0
 80044a2:	f040 8502 	bne.w	8004eaa <_dtoa_r+0xd8a>
 80044a6:	4632      	mov	r2, r6
 80044a8:	463b      	mov	r3, r7
 80044aa:	2000      	movs	r0, #0
 80044ac:	4959      	ldr	r1, [pc, #356]	; (8004614 <_dtoa_r+0x4f4>)
 80044ae:	f7fc f98b 	bl	80007c8 <__aeabi_dsub>
 80044b2:	4602      	mov	r2, r0
 80044b4:	460b      	mov	r3, r1
 80044b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044ba:	f7fc fdcd 	bl	8001058 <__aeabi_dcmpgt>
 80044be:	2800      	cmp	r0, #0
 80044c0:	f040 84fb 	bne.w	8004eba <_dtoa_r+0xd9a>
 80044c4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044c6:	2a01      	cmp	r2, #1
 80044c8:	d050      	beq.n	800456c <_dtoa_r+0x44c>
 80044ca:	445a      	add	r2, fp
 80044cc:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80044d0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80044d4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80044d8:	4692      	mov	sl, r2
 80044da:	46cb      	mov	fp, r9
 80044dc:	e9dd 8900 	ldrd	r8, r9, [sp]
 80044e0:	e00c      	b.n	80044fc <_dtoa_r+0x3dc>
 80044e2:	2000      	movs	r0, #0
 80044e4:	494b      	ldr	r1, [pc, #300]	; (8004614 <_dtoa_r+0x4f4>)
 80044e6:	f7fc f96f 	bl	80007c8 <__aeabi_dsub>
 80044ea:	4642      	mov	r2, r8
 80044ec:	464b      	mov	r3, r9
 80044ee:	f7fc fd95 	bl	800101c <__aeabi_dcmplt>
 80044f2:	2800      	cmp	r0, #0
 80044f4:	f040 84dc 	bne.w	8004eb0 <_dtoa_r+0xd90>
 80044f8:	4554      	cmp	r4, sl
 80044fa:	d030      	beq.n	800455e <_dtoa_r+0x43e>
 80044fc:	4640      	mov	r0, r8
 80044fe:	4649      	mov	r1, r9
 8004500:	2200      	movs	r2, #0
 8004502:	4b47      	ldr	r3, [pc, #284]	; (8004620 <_dtoa_r+0x500>)
 8004504:	f7fc fb18 	bl	8000b38 <__aeabi_dmul>
 8004508:	2200      	movs	r2, #0
 800450a:	4b45      	ldr	r3, [pc, #276]	; (8004620 <_dtoa_r+0x500>)
 800450c:	4680      	mov	r8, r0
 800450e:	4689      	mov	r9, r1
 8004510:	4630      	mov	r0, r6
 8004512:	4639      	mov	r1, r7
 8004514:	f7fc fb10 	bl	8000b38 <__aeabi_dmul>
 8004518:	460f      	mov	r7, r1
 800451a:	4606      	mov	r6, r0
 800451c:	f7fc fdbc 	bl	8001098 <__aeabi_d2iz>
 8004520:	4605      	mov	r5, r0
 8004522:	f7fc fa9f 	bl	8000a64 <__aeabi_i2d>
 8004526:	4602      	mov	r2, r0
 8004528:	460b      	mov	r3, r1
 800452a:	4630      	mov	r0, r6
 800452c:	4639      	mov	r1, r7
 800452e:	f7fc f94b 	bl	80007c8 <__aeabi_dsub>
 8004532:	3530      	adds	r5, #48	; 0x30
 8004534:	b2ed      	uxtb	r5, r5
 8004536:	4642      	mov	r2, r8
 8004538:	464b      	mov	r3, r9
 800453a:	f804 5b01 	strb.w	r5, [r4], #1
 800453e:	4606      	mov	r6, r0
 8004540:	460f      	mov	r7, r1
 8004542:	f7fc fd6b 	bl	800101c <__aeabi_dcmplt>
 8004546:	4632      	mov	r2, r6
 8004548:	463b      	mov	r3, r7
 800454a:	2800      	cmp	r0, #0
 800454c:	d0c9      	beq.n	80044e2 <_dtoa_r+0x3c2>
 800454e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004550:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004554:	9306      	str	r3, [sp, #24]
 8004556:	46d9      	mov	r9, fp
 8004558:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800455c:	e236      	b.n	80049cc <_dtoa_r+0x8ac>
 800455e:	46d9      	mov	r9, fp
 8004560:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004564:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004568:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800456c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004570:	e9cd 3400 	strd	r3, r4, [sp]
 8004574:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004576:	2b00      	cmp	r3, #0
 8004578:	f2c0 80ae 	blt.w	80046d8 <_dtoa_r+0x5b8>
 800457c:	9a06      	ldr	r2, [sp, #24]
 800457e:	2a0e      	cmp	r2, #14
 8004580:	f300 80aa 	bgt.w	80046d8 <_dtoa_r+0x5b8>
 8004584:	4b21      	ldr	r3, [pc, #132]	; (800460c <_dtoa_r+0x4ec>)
 8004586:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800458a:	ed93 7b00 	vldr	d7, [r3]
 800458e:	9b07      	ldr	r3, [sp, #28]
 8004590:	2b00      	cmp	r3, #0
 8004592:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004596:	f2c0 82be 	blt.w	8004b16 <_dtoa_r+0x9f6>
 800459a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800459e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045a2:	4630      	mov	r0, r6
 80045a4:	4639      	mov	r1, r7
 80045a6:	f7fc fbf1 	bl	8000d8c <__aeabi_ddiv>
 80045aa:	f7fc fd75 	bl	8001098 <__aeabi_d2iz>
 80045ae:	4605      	mov	r5, r0
 80045b0:	f7fc fa58 	bl	8000a64 <__aeabi_i2d>
 80045b4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045b8:	f7fc fabe 	bl	8000b38 <__aeabi_dmul>
 80045bc:	460b      	mov	r3, r1
 80045be:	4602      	mov	r2, r0
 80045c0:	4639      	mov	r1, r7
 80045c2:	4630      	mov	r0, r6
 80045c4:	f7fc f900 	bl	80007c8 <__aeabi_dsub>
 80045c8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80045cc:	f88b 3000 	strb.w	r3, [fp]
 80045d0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045d2:	2b01      	cmp	r3, #1
 80045d4:	4606      	mov	r6, r0
 80045d6:	460f      	mov	r7, r1
 80045d8:	f10b 0401 	add.w	r4, fp, #1
 80045dc:	d053      	beq.n	8004686 <_dtoa_r+0x566>
 80045de:	2200      	movs	r2, #0
 80045e0:	4b0f      	ldr	r3, [pc, #60]	; (8004620 <_dtoa_r+0x500>)
 80045e2:	f7fc faa9 	bl	8000b38 <__aeabi_dmul>
 80045e6:	2200      	movs	r2, #0
 80045e8:	2300      	movs	r3, #0
 80045ea:	4606      	mov	r6, r0
 80045ec:	460f      	mov	r7, r1
 80045ee:	f7fc fd0b 	bl	8001008 <__aeabi_dcmpeq>
 80045f2:	2800      	cmp	r0, #0
 80045f4:	f040 81ea 	bne.w	80049cc <_dtoa_r+0x8ac>
 80045f8:	f8cd a000 	str.w	sl, [sp]
 80045fc:	f8cd 901c 	str.w	r9, [sp, #28]
 8004600:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004604:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004608:	e017      	b.n	800463a <_dtoa_r+0x51a>
 800460a:	bf00      	nop
 800460c:	080071a8 	.word	0x080071a8
 8004610:	08007180 	.word	0x08007180
 8004614:	3ff00000 	.word	0x3ff00000
 8004618:	401c0000 	.word	0x401c0000
 800461c:	3fe00000 	.word	0x3fe00000
 8004620:	40240000 	.word	0x40240000
 8004624:	f7fc fa88 	bl	8000b38 <__aeabi_dmul>
 8004628:	2200      	movs	r2, #0
 800462a:	2300      	movs	r3, #0
 800462c:	4606      	mov	r6, r0
 800462e:	460f      	mov	r7, r1
 8004630:	f7fc fcea 	bl	8001008 <__aeabi_dcmpeq>
 8004634:	2800      	cmp	r0, #0
 8004636:	f040 833d 	bne.w	8004cb4 <_dtoa_r+0xb94>
 800463a:	464a      	mov	r2, r9
 800463c:	4653      	mov	r3, sl
 800463e:	4630      	mov	r0, r6
 8004640:	4639      	mov	r1, r7
 8004642:	f7fc fba3 	bl	8000d8c <__aeabi_ddiv>
 8004646:	f7fc fd27 	bl	8001098 <__aeabi_d2iz>
 800464a:	4605      	mov	r5, r0
 800464c:	f7fc fa0a 	bl	8000a64 <__aeabi_i2d>
 8004650:	464a      	mov	r2, r9
 8004652:	4653      	mov	r3, sl
 8004654:	f7fc fa70 	bl	8000b38 <__aeabi_dmul>
 8004658:	4602      	mov	r2, r0
 800465a:	460b      	mov	r3, r1
 800465c:	4630      	mov	r0, r6
 800465e:	4639      	mov	r1, r7
 8004660:	f7fc f8b2 	bl	80007c8 <__aeabi_dsub>
 8004664:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004668:	f804 cb01 	strb.w	ip, [r4], #1
 800466c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004670:	45e0      	cmp	r8, ip
 8004672:	4606      	mov	r6, r0
 8004674:	460f      	mov	r7, r1
 8004676:	f04f 0200 	mov.w	r2, #0
 800467a:	4bc1      	ldr	r3, [pc, #772]	; (8004980 <_dtoa_r+0x860>)
 800467c:	d1d2      	bne.n	8004624 <_dtoa_r+0x504>
 800467e:	f8dd a000 	ldr.w	sl, [sp]
 8004682:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004686:	4632      	mov	r2, r6
 8004688:	463b      	mov	r3, r7
 800468a:	4630      	mov	r0, r6
 800468c:	4639      	mov	r1, r7
 800468e:	f7fc f89d 	bl	80007cc <__adddf3>
 8004692:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004696:	4606      	mov	r6, r0
 8004698:	460f      	mov	r7, r1
 800469a:	f7fc fcdd 	bl	8001058 <__aeabi_dcmpgt>
 800469e:	b958      	cbnz	r0, 80046b8 <_dtoa_r+0x598>
 80046a0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046a4:	4630      	mov	r0, r6
 80046a6:	4639      	mov	r1, r7
 80046a8:	f7fc fcae 	bl	8001008 <__aeabi_dcmpeq>
 80046ac:	2800      	cmp	r0, #0
 80046ae:	f000 818d 	beq.w	80049cc <_dtoa_r+0x8ac>
 80046b2:	07e9      	lsls	r1, r5, #31
 80046b4:	f140 818a 	bpl.w	80049cc <_dtoa_r+0x8ac>
 80046b8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80046bc:	e005      	b.n	80046ca <_dtoa_r+0x5aa>
 80046be:	459b      	cmp	fp, r3
 80046c0:	f000 8373 	beq.w	8004daa <_dtoa_r+0xc8a>
 80046c4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80046c8:	461c      	mov	r4, r3
 80046ca:	2d39      	cmp	r5, #57	; 0x39
 80046cc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80046d0:	d0f5      	beq.n	80046be <_dtoa_r+0x59e>
 80046d2:	3501      	adds	r5, #1
 80046d4:	701d      	strb	r5, [r3, #0]
 80046d6:	e179      	b.n	80049cc <_dtoa_r+0x8ac>
 80046d8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80046da:	2a00      	cmp	r2, #0
 80046dc:	d03b      	beq.n	8004756 <_dtoa_r+0x636>
 80046de:	9a02      	ldr	r2, [sp, #8]
 80046e0:	2a01      	cmp	r2, #1
 80046e2:	f340 820b 	ble.w	8004afc <_dtoa_r+0x9dc>
 80046e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046e8:	1e5f      	subs	r7, r3, #1
 80046ea:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80046ec:	42bb      	cmp	r3, r7
 80046ee:	f2c0 82e6 	blt.w	8004cbe <_dtoa_r+0xb9e>
 80046f2:	1bdf      	subs	r7, r3, r7
 80046f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046f6:	2b00      	cmp	r3, #0
 80046f8:	f2c0 830b 	blt.w	8004d12 <_dtoa_r+0xbf2>
 80046fc:	9a08      	ldr	r2, [sp, #32]
 80046fe:	4614      	mov	r4, r2
 8004700:	441a      	add	r2, r3
 8004702:	4498      	add	r8, r3
 8004704:	9208      	str	r2, [sp, #32]
 8004706:	2101      	movs	r1, #1
 8004708:	4648      	mov	r0, r9
 800470a:	f001 fcbf 	bl	800608c <__i2b>
 800470e:	4605      	mov	r5, r0
 8004710:	e024      	b.n	800475c <_dtoa_r+0x63c>
 8004712:	2301      	movs	r3, #1
 8004714:	930d      	str	r3, [sp, #52]	; 0x34
 8004716:	e5af      	b.n	8004278 <_dtoa_r+0x158>
 8004718:	9a08      	ldr	r2, [sp, #32]
 800471a:	9b06      	ldr	r3, [sp, #24]
 800471c:	1ad2      	subs	r2, r2, r3
 800471e:	425b      	negs	r3, r3
 8004720:	930b      	str	r3, [sp, #44]	; 0x2c
 8004722:	2300      	movs	r3, #0
 8004724:	9208      	str	r2, [sp, #32]
 8004726:	930c      	str	r3, [sp, #48]	; 0x30
 8004728:	e5b5      	b.n	8004296 <_dtoa_r+0x176>
 800472a:	f1c4 0301 	rsb	r3, r4, #1
 800472e:	9308      	str	r3, [sp, #32]
 8004730:	f04f 0800 	mov.w	r8, #0
 8004734:	e5a7      	b.n	8004286 <_dtoa_r+0x166>
 8004736:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800473a:	4640      	mov	r0, r8
 800473c:	f7fc f992 	bl	8000a64 <__aeabi_i2d>
 8004740:	4632      	mov	r2, r6
 8004742:	463b      	mov	r3, r7
 8004744:	f7fc fc60 	bl	8001008 <__aeabi_dcmpeq>
 8004748:	2800      	cmp	r0, #0
 800474a:	f47f ad81 	bne.w	8004250 <_dtoa_r+0x130>
 800474e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004752:	9306      	str	r3, [sp, #24]
 8004754:	e57c      	b.n	8004250 <_dtoa_r+0x130>
 8004756:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004758:	9c08      	ldr	r4, [sp, #32]
 800475a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800475c:	2c00      	cmp	r4, #0
 800475e:	dd0c      	ble.n	800477a <_dtoa_r+0x65a>
 8004760:	f1b8 0f00 	cmp.w	r8, #0
 8004764:	dd09      	ble.n	800477a <_dtoa_r+0x65a>
 8004766:	4544      	cmp	r4, r8
 8004768:	9a08      	ldr	r2, [sp, #32]
 800476a:	4623      	mov	r3, r4
 800476c:	bfa8      	it	ge
 800476e:	4643      	movge	r3, r8
 8004770:	1ad2      	subs	r2, r2, r3
 8004772:	9208      	str	r2, [sp, #32]
 8004774:	1ae4      	subs	r4, r4, r3
 8004776:	eba8 0803 	sub.w	r8, r8, r3
 800477a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800477c:	b16b      	cbz	r3, 800479a <_dtoa_r+0x67a>
 800477e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004780:	2a00      	cmp	r2, #0
 8004782:	f000 8290 	beq.w	8004ca6 <_dtoa_r+0xb86>
 8004786:	1bde      	subs	r6, r3, r7
 8004788:	2f00      	cmp	r7, #0
 800478a:	f040 819b 	bne.w	8004ac4 <_dtoa_r+0x9a4>
 800478e:	4651      	mov	r1, sl
 8004790:	4632      	mov	r2, r6
 8004792:	4648      	mov	r0, r9
 8004794:	f001 fd2a 	bl	80061ec <__pow5mult>
 8004798:	4682      	mov	sl, r0
 800479a:	2101      	movs	r1, #1
 800479c:	4648      	mov	r0, r9
 800479e:	f001 fc75 	bl	800608c <__i2b>
 80047a2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80047a4:	4606      	mov	r6, r0
 80047a6:	2a00      	cmp	r2, #0
 80047a8:	f040 8125 	bne.w	80049f6 <_dtoa_r+0x8d6>
 80047ac:	9b02      	ldr	r3, [sp, #8]
 80047ae:	2b01      	cmp	r3, #1
 80047b0:	f340 816c 	ble.w	8004a8c <_dtoa_r+0x96c>
 80047b4:	2001      	movs	r0, #1
 80047b6:	4440      	add	r0, r8
 80047b8:	f010 001f 	ands.w	r0, r0, #31
 80047bc:	f000 8119 	beq.w	80049f2 <_dtoa_r+0x8d2>
 80047c0:	f1c0 0320 	rsb	r3, r0, #32
 80047c4:	2b04      	cmp	r3, #4
 80047c6:	f340 83ac 	ble.w	8004f22 <_dtoa_r+0xe02>
 80047ca:	f1c0 001c 	rsb	r0, r0, #28
 80047ce:	9b08      	ldr	r3, [sp, #32]
 80047d0:	4403      	add	r3, r0
 80047d2:	9308      	str	r3, [sp, #32]
 80047d4:	4404      	add	r4, r0
 80047d6:	4480      	add	r8, r0
 80047d8:	9b08      	ldr	r3, [sp, #32]
 80047da:	2b00      	cmp	r3, #0
 80047dc:	dd05      	ble.n	80047ea <_dtoa_r+0x6ca>
 80047de:	4651      	mov	r1, sl
 80047e0:	461a      	mov	r2, r3
 80047e2:	4648      	mov	r0, r9
 80047e4:	f001 fd52 	bl	800628c <__lshift>
 80047e8:	4682      	mov	sl, r0
 80047ea:	f1b8 0f00 	cmp.w	r8, #0
 80047ee:	dd05      	ble.n	80047fc <_dtoa_r+0x6dc>
 80047f0:	4631      	mov	r1, r6
 80047f2:	4642      	mov	r2, r8
 80047f4:	4648      	mov	r0, r9
 80047f6:	f001 fd49 	bl	800628c <__lshift>
 80047fa:	4606      	mov	r6, r0
 80047fc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80047fe:	2b00      	cmp	r3, #0
 8004800:	d177      	bne.n	80048f2 <_dtoa_r+0x7d2>
 8004802:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004804:	2b00      	cmp	r3, #0
 8004806:	f340 8209 	ble.w	8004c1c <_dtoa_r+0xafc>
 800480a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800480c:	2b00      	cmp	r3, #0
 800480e:	f000 8089 	beq.w	8004924 <_dtoa_r+0x804>
 8004812:	2c00      	cmp	r4, #0
 8004814:	f300 816b 	bgt.w	8004aee <_dtoa_r+0x9ce>
 8004818:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800481a:	2b00      	cmp	r3, #0
 800481c:	f040 81cd 	bne.w	8004bba <_dtoa_r+0xa9a>
 8004820:	46a8      	mov	r8, r5
 8004822:	9a00      	ldr	r2, [sp, #0]
 8004824:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004828:	f002 0201 	and.w	r2, r2, #1
 800482c:	920a      	str	r2, [sp, #40]	; 0x28
 800482e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004830:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004834:	441a      	add	r2, r3
 8004836:	465f      	mov	r7, fp
 8004838:	9209      	str	r2, [sp, #36]	; 0x24
 800483a:	46b3      	mov	fp, r6
 800483c:	4659      	mov	r1, fp
 800483e:	4650      	mov	r0, sl
 8004840:	f7ff fbdc 	bl	8003ffc <quorem>
 8004844:	4629      	mov	r1, r5
 8004846:	4604      	mov	r4, r0
 8004848:	4650      	mov	r0, sl
 800484a:	f001 fd75 	bl	8006338 <__mcmp>
 800484e:	4659      	mov	r1, fp
 8004850:	4606      	mov	r6, r0
 8004852:	4642      	mov	r2, r8
 8004854:	4648      	mov	r0, r9
 8004856:	f001 fd8b 	bl	8006370 <__mdiff>
 800485a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800485e:	9300      	str	r3, [sp, #0]
 8004860:	68c3      	ldr	r3, [r0, #12]
 8004862:	4601      	mov	r1, r0
 8004864:	2b00      	cmp	r3, #0
 8004866:	f040 81d4 	bne.w	8004c12 <_dtoa_r+0xaf2>
 800486a:	9008      	str	r0, [sp, #32]
 800486c:	4650      	mov	r0, sl
 800486e:	f001 fd63 	bl	8006338 <__mcmp>
 8004872:	9a08      	ldr	r2, [sp, #32]
 8004874:	9007      	str	r0, [sp, #28]
 8004876:	4611      	mov	r1, r2
 8004878:	4648      	mov	r0, r9
 800487a:	f001 fb6d 	bl	8005f58 <_Bfree>
 800487e:	9b07      	ldr	r3, [sp, #28]
 8004880:	b933      	cbnz	r3, 8004890 <_dtoa_r+0x770>
 8004882:	9a02      	ldr	r2, [sp, #8]
 8004884:	b922      	cbnz	r2, 8004890 <_dtoa_r+0x770>
 8004886:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004888:	2b00      	cmp	r3, #0
 800488a:	f000 8319 	beq.w	8004ec0 <_dtoa_r+0xda0>
 800488e:	9b02      	ldr	r3, [sp, #8]
 8004890:	2e00      	cmp	r6, #0
 8004892:	f2c0 821c 	blt.w	8004cce <_dtoa_r+0xbae>
 8004896:	d105      	bne.n	80048a4 <_dtoa_r+0x784>
 8004898:	9a02      	ldr	r2, [sp, #8]
 800489a:	b91a      	cbnz	r2, 80048a4 <_dtoa_r+0x784>
 800489c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800489e:	2a00      	cmp	r2, #0
 80048a0:	f000 8215 	beq.w	8004cce <_dtoa_r+0xbae>
 80048a4:	2b00      	cmp	r3, #0
 80048a6:	f107 0401 	add.w	r4, r7, #1
 80048aa:	f300 8225 	bgt.w	8004cf8 <_dtoa_r+0xbd8>
 80048ae:	9b00      	ldr	r3, [sp, #0]
 80048b0:	703b      	strb	r3, [r7, #0]
 80048b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048b4:	42bb      	cmp	r3, r7
 80048b6:	f000 8230 	beq.w	8004d1a <_dtoa_r+0xbfa>
 80048ba:	4651      	mov	r1, sl
 80048bc:	2300      	movs	r3, #0
 80048be:	220a      	movs	r2, #10
 80048c0:	4648      	mov	r0, r9
 80048c2:	f001 fb53 	bl	8005f6c <__multadd>
 80048c6:	4545      	cmp	r5, r8
 80048c8:	4682      	mov	sl, r0
 80048ca:	4629      	mov	r1, r5
 80048cc:	f04f 0300 	mov.w	r3, #0
 80048d0:	f04f 020a 	mov.w	r2, #10
 80048d4:	4648      	mov	r0, r9
 80048d6:	f000 8196 	beq.w	8004c06 <_dtoa_r+0xae6>
 80048da:	f001 fb47 	bl	8005f6c <__multadd>
 80048de:	4641      	mov	r1, r8
 80048e0:	4605      	mov	r5, r0
 80048e2:	2300      	movs	r3, #0
 80048e4:	220a      	movs	r2, #10
 80048e6:	4648      	mov	r0, r9
 80048e8:	f001 fb40 	bl	8005f6c <__multadd>
 80048ec:	4627      	mov	r7, r4
 80048ee:	4680      	mov	r8, r0
 80048f0:	e7a4      	b.n	800483c <_dtoa_r+0x71c>
 80048f2:	4631      	mov	r1, r6
 80048f4:	4650      	mov	r0, sl
 80048f6:	f001 fd1f 	bl	8006338 <__mcmp>
 80048fa:	2800      	cmp	r0, #0
 80048fc:	da81      	bge.n	8004802 <_dtoa_r+0x6e2>
 80048fe:	9f06      	ldr	r7, [sp, #24]
 8004900:	4651      	mov	r1, sl
 8004902:	2300      	movs	r3, #0
 8004904:	220a      	movs	r2, #10
 8004906:	4648      	mov	r0, r9
 8004908:	3f01      	subs	r7, #1
 800490a:	9706      	str	r7, [sp, #24]
 800490c:	f001 fb2e 	bl	8005f6c <__multadd>
 8004910:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004912:	4682      	mov	sl, r0
 8004914:	2b00      	cmp	r3, #0
 8004916:	f040 82eb 	bne.w	8004ef0 <_dtoa_r+0xdd0>
 800491a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800491c:	2b00      	cmp	r3, #0
 800491e:	f340 82f3 	ble.w	8004f08 <_dtoa_r+0xde8>
 8004922:	9309      	str	r3, [sp, #36]	; 0x24
 8004924:	465c      	mov	r4, fp
 8004926:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800492a:	e002      	b.n	8004932 <_dtoa_r+0x812>
 800492c:	f001 fb1e 	bl	8005f6c <__multadd>
 8004930:	4682      	mov	sl, r0
 8004932:	4631      	mov	r1, r6
 8004934:	4650      	mov	r0, sl
 8004936:	f7ff fb61 	bl	8003ffc <quorem>
 800493a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800493e:	f804 7b01 	strb.w	r7, [r4], #1
 8004942:	eba4 030b 	sub.w	r3, r4, fp
 8004946:	4598      	cmp	r8, r3
 8004948:	f04f 020a 	mov.w	r2, #10
 800494c:	f04f 0300 	mov.w	r3, #0
 8004950:	4651      	mov	r1, sl
 8004952:	4648      	mov	r0, r9
 8004954:	dcea      	bgt.n	800492c <_dtoa_r+0x80c>
 8004956:	2300      	movs	r3, #0
 8004958:	9700      	str	r7, [sp, #0]
 800495a:	9302      	str	r3, [sp, #8]
 800495c:	4651      	mov	r1, sl
 800495e:	2201      	movs	r2, #1
 8004960:	4648      	mov	r0, r9
 8004962:	f001 fc93 	bl	800628c <__lshift>
 8004966:	4631      	mov	r1, r6
 8004968:	4682      	mov	sl, r0
 800496a:	f001 fce5 	bl	8006338 <__mcmp>
 800496e:	2800      	cmp	r0, #0
 8004970:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004974:	dc14      	bgt.n	80049a0 <_dtoa_r+0x880>
 8004976:	d108      	bne.n	800498a <_dtoa_r+0x86a>
 8004978:	9b00      	ldr	r3, [sp, #0]
 800497a:	07db      	lsls	r3, r3, #31
 800497c:	d410      	bmi.n	80049a0 <_dtoa_r+0x880>
 800497e:	e004      	b.n	800498a <_dtoa_r+0x86a>
 8004980:	40240000 	.word	0x40240000
 8004984:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004988:	461c      	mov	r4, r3
 800498a:	2a30      	cmp	r2, #48	; 0x30
 800498c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004990:	d0f8      	beq.n	8004984 <_dtoa_r+0x864>
 8004992:	e00b      	b.n	80049ac <_dtoa_r+0x88c>
 8004994:	459b      	cmp	fp, r3
 8004996:	f000 814e 	beq.w	8004c36 <_dtoa_r+0xb16>
 800499a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800499e:	461c      	mov	r4, r3
 80049a0:	2a39      	cmp	r2, #57	; 0x39
 80049a2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049a6:	d0f5      	beq.n	8004994 <_dtoa_r+0x874>
 80049a8:	3201      	adds	r2, #1
 80049aa:	701a      	strb	r2, [r3, #0]
 80049ac:	4631      	mov	r1, r6
 80049ae:	4648      	mov	r0, r9
 80049b0:	f001 fad2 	bl	8005f58 <_Bfree>
 80049b4:	b155      	cbz	r5, 80049cc <_dtoa_r+0x8ac>
 80049b6:	9902      	ldr	r1, [sp, #8]
 80049b8:	b121      	cbz	r1, 80049c4 <_dtoa_r+0x8a4>
 80049ba:	42a9      	cmp	r1, r5
 80049bc:	d002      	beq.n	80049c4 <_dtoa_r+0x8a4>
 80049be:	4648      	mov	r0, r9
 80049c0:	f001 faca 	bl	8005f58 <_Bfree>
 80049c4:	4629      	mov	r1, r5
 80049c6:	4648      	mov	r0, r9
 80049c8:	f001 fac6 	bl	8005f58 <_Bfree>
 80049cc:	4651      	mov	r1, sl
 80049ce:	4648      	mov	r0, r9
 80049d0:	f001 fac2 	bl	8005f58 <_Bfree>
 80049d4:	2200      	movs	r2, #0
 80049d6:	9b06      	ldr	r3, [sp, #24]
 80049d8:	7022      	strb	r2, [r4, #0]
 80049da:	9a05      	ldr	r2, [sp, #20]
 80049dc:	3301      	adds	r3, #1
 80049de:	6013      	str	r3, [r2, #0]
 80049e0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80049e2:	2b00      	cmp	r3, #0
 80049e4:	f43f abdb 	beq.w	800419e <_dtoa_r+0x7e>
 80049e8:	4658      	mov	r0, fp
 80049ea:	601c      	str	r4, [r3, #0]
 80049ec:	b01b      	add	sp, #108	; 0x6c
 80049ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80049f2:	201c      	movs	r0, #28
 80049f4:	e6eb      	b.n	80047ce <_dtoa_r+0x6ae>
 80049f6:	4601      	mov	r1, r0
 80049f8:	4648      	mov	r0, r9
 80049fa:	f001 fbf7 	bl	80061ec <__pow5mult>
 80049fe:	9b02      	ldr	r3, [sp, #8]
 8004a00:	2b01      	cmp	r3, #1
 8004a02:	4606      	mov	r6, r0
 8004a04:	f340 80d4 	ble.w	8004bb0 <_dtoa_r+0xa90>
 8004a08:	2300      	movs	r3, #0
 8004a0a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a0c:	6933      	ldr	r3, [r6, #16]
 8004a0e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a12:	6918      	ldr	r0, [r3, #16]
 8004a14:	f001 faea 	bl	8005fec <__hi0bits>
 8004a18:	f1c0 0020 	rsb	r0, r0, #32
 8004a1c:	e6cb      	b.n	80047b6 <_dtoa_r+0x696>
 8004a1e:	900d      	str	r0, [sp, #52]	; 0x34
 8004a20:	e42a      	b.n	8004278 <_dtoa_r+0x158>
 8004a22:	2501      	movs	r5, #1
 8004a24:	e440      	b.n	80042a8 <_dtoa_r+0x188>
 8004a26:	f1c3 0820 	rsb	r8, r3, #32
 8004a2a:	9b00      	ldr	r3, [sp, #0]
 8004a2c:	fa03 f008 	lsl.w	r0, r3, r8
 8004a30:	f7ff bbd8 	b.w	80041e4 <_dtoa_r+0xc4>
 8004a34:	2300      	movs	r3, #0
 8004a36:	930a      	str	r3, [sp, #40]	; 0x28
 8004a38:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a3c:	4413      	add	r3, r2
 8004a3e:	930e      	str	r3, [sp, #56]	; 0x38
 8004a40:	3301      	adds	r3, #1
 8004a42:	2b01      	cmp	r3, #1
 8004a44:	461e      	mov	r6, r3
 8004a46:	9309      	str	r3, [sp, #36]	; 0x24
 8004a48:	bfb8      	it	lt
 8004a4a:	2601      	movlt	r6, #1
 8004a4c:	2100      	movs	r1, #0
 8004a4e:	2e17      	cmp	r6, #23
 8004a50:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a54:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a56:	f77f ac89 	ble.w	800436c <_dtoa_r+0x24c>
 8004a5a:	2201      	movs	r2, #1
 8004a5c:	2304      	movs	r3, #4
 8004a5e:	005b      	lsls	r3, r3, #1
 8004a60:	f103 0014 	add.w	r0, r3, #20
 8004a64:	42b0      	cmp	r0, r6
 8004a66:	4611      	mov	r1, r2
 8004a68:	f102 0201 	add.w	r2, r2, #1
 8004a6c:	d9f7      	bls.n	8004a5e <_dtoa_r+0x93e>
 8004a6e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a72:	e47b      	b.n	800436c <_dtoa_r+0x24c>
 8004a74:	2300      	movs	r3, #0
 8004a76:	930a      	str	r3, [sp, #40]	; 0x28
 8004a78:	9e07      	ldr	r6, [sp, #28]
 8004a7a:	2e00      	cmp	r6, #0
 8004a7c:	f340 80e2 	ble.w	8004c44 <_dtoa_r+0xb24>
 8004a80:	960e      	str	r6, [sp, #56]	; 0x38
 8004a82:	9609      	str	r6, [sp, #36]	; 0x24
 8004a84:	e7e2      	b.n	8004a4c <_dtoa_r+0x92c>
 8004a86:	2301      	movs	r3, #1
 8004a88:	930a      	str	r3, [sp, #40]	; 0x28
 8004a8a:	e7f5      	b.n	8004a78 <_dtoa_r+0x958>
 8004a8c:	9b00      	ldr	r3, [sp, #0]
 8004a8e:	2b00      	cmp	r3, #0
 8004a90:	f47f ae90 	bne.w	80047b4 <_dtoa_r+0x694>
 8004a94:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004a98:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004a9c:	2b00      	cmp	r3, #0
 8004a9e:	f040 8192 	bne.w	8004dc6 <_dtoa_r+0xca6>
 8004aa2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004aa6:	0d1b      	lsrs	r3, r3, #20
 8004aa8:	051b      	lsls	r3, r3, #20
 8004aaa:	b12b      	cbz	r3, 8004ab8 <_dtoa_r+0x998>
 8004aac:	9b08      	ldr	r3, [sp, #32]
 8004aae:	3301      	adds	r3, #1
 8004ab0:	9308      	str	r3, [sp, #32]
 8004ab2:	f108 0801 	add.w	r8, r8, #1
 8004ab6:	2301      	movs	r3, #1
 8004ab8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004aba:	930c      	str	r3, [sp, #48]	; 0x30
 8004abc:	2a00      	cmp	r2, #0
 8004abe:	f43f ae79 	beq.w	80047b4 <_dtoa_r+0x694>
 8004ac2:	e7a3      	b.n	8004a0c <_dtoa_r+0x8ec>
 8004ac4:	463a      	mov	r2, r7
 8004ac6:	4629      	mov	r1, r5
 8004ac8:	4648      	mov	r0, r9
 8004aca:	f001 fb8f 	bl	80061ec <__pow5mult>
 8004ace:	4652      	mov	r2, sl
 8004ad0:	4601      	mov	r1, r0
 8004ad2:	4605      	mov	r5, r0
 8004ad4:	4648      	mov	r0, r9
 8004ad6:	f001 fae3 	bl	80060a0 <__multiply>
 8004ada:	4651      	mov	r1, sl
 8004adc:	4607      	mov	r7, r0
 8004ade:	4648      	mov	r0, r9
 8004ae0:	f001 fa3a 	bl	8005f58 <_Bfree>
 8004ae4:	46ba      	mov	sl, r7
 8004ae6:	2e00      	cmp	r6, #0
 8004ae8:	f43f ae57 	beq.w	800479a <_dtoa_r+0x67a>
 8004aec:	e64f      	b.n	800478e <_dtoa_r+0x66e>
 8004aee:	4629      	mov	r1, r5
 8004af0:	4622      	mov	r2, r4
 8004af2:	4648      	mov	r0, r9
 8004af4:	f001 fbca 	bl	800628c <__lshift>
 8004af8:	4605      	mov	r5, r0
 8004afa:	e68d      	b.n	8004818 <_dtoa_r+0x6f8>
 8004afc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004afe:	2a00      	cmp	r2, #0
 8004b00:	f000 815d 	beq.w	8004dbe <_dtoa_r+0xc9e>
 8004b04:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b08:	9a08      	ldr	r2, [sp, #32]
 8004b0a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b0c:	4614      	mov	r4, r2
 8004b0e:	441a      	add	r2, r3
 8004b10:	4498      	add	r8, r3
 8004b12:	9208      	str	r2, [sp, #32]
 8004b14:	e5f7      	b.n	8004706 <_dtoa_r+0x5e6>
 8004b16:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b18:	2b00      	cmp	r3, #0
 8004b1a:	f73f ad3e 	bgt.w	800459a <_dtoa_r+0x47a>
 8004b1e:	f040 80bc 	bne.w	8004c9a <_dtoa_r+0xb7a>
 8004b22:	ec51 0b17 	vmov	r0, r1, d7
 8004b26:	2200      	movs	r2, #0
 8004b28:	4bb2      	ldr	r3, [pc, #712]	; (8004df4 <_dtoa_r+0xcd4>)
 8004b2a:	f7fc f805 	bl	8000b38 <__aeabi_dmul>
 8004b2e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b32:	f7fc fa87 	bl	8001044 <__aeabi_dcmpge>
 8004b36:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b38:	4635      	mov	r5, r6
 8004b3a:	2800      	cmp	r0, #0
 8004b3c:	d176      	bne.n	8004c2c <_dtoa_r+0xb0c>
 8004b3e:	9a06      	ldr	r2, [sp, #24]
 8004b40:	2331      	movs	r3, #49	; 0x31
 8004b42:	3201      	adds	r2, #1
 8004b44:	9206      	str	r2, [sp, #24]
 8004b46:	f88b 3000 	strb.w	r3, [fp]
 8004b4a:	f10b 0401 	add.w	r4, fp, #1
 8004b4e:	4631      	mov	r1, r6
 8004b50:	4648      	mov	r0, r9
 8004b52:	f001 fa01 	bl	8005f58 <_Bfree>
 8004b56:	2d00      	cmp	r5, #0
 8004b58:	f47f af34 	bne.w	80049c4 <_dtoa_r+0x8a4>
 8004b5c:	e736      	b.n	80049cc <_dtoa_r+0x8ac>
 8004b5e:	f000 8142 	beq.w	8004de6 <_dtoa_r+0xcc6>
 8004b62:	9b06      	ldr	r3, [sp, #24]
 8004b64:	425c      	negs	r4, r3
 8004b66:	4ba4      	ldr	r3, [pc, #656]	; (8004df8 <_dtoa_r+0xcd8>)
 8004b68:	f004 020f 	and.w	r2, r4, #15
 8004b6c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b70:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b74:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004b78:	f7fb ffde 	bl	8000b38 <__aeabi_dmul>
 8004b7c:	1124      	asrs	r4, r4, #4
 8004b7e:	e9cd 0100 	strd	r0, r1, [sp]
 8004b82:	f000 81c6 	beq.w	8004f12 <_dtoa_r+0xdf2>
 8004b86:	4d9d      	ldr	r5, [pc, #628]	; (8004dfc <_dtoa_r+0xcdc>)
 8004b88:	2300      	movs	r3, #0
 8004b8a:	2602      	movs	r6, #2
 8004b8c:	07e7      	lsls	r7, r4, #31
 8004b8e:	d505      	bpl.n	8004b9c <_dtoa_r+0xa7c>
 8004b90:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b94:	f7fb ffd0 	bl	8000b38 <__aeabi_dmul>
 8004b98:	3601      	adds	r6, #1
 8004b9a:	2301      	movs	r3, #1
 8004b9c:	1064      	asrs	r4, r4, #1
 8004b9e:	f105 0508 	add.w	r5, r5, #8
 8004ba2:	d1f3      	bne.n	8004b8c <_dtoa_r+0xa6c>
 8004ba4:	2b00      	cmp	r3, #0
 8004ba6:	f43f ac27 	beq.w	80043f8 <_dtoa_r+0x2d8>
 8004baa:	e9cd 0100 	strd	r0, r1, [sp]
 8004bae:	e423      	b.n	80043f8 <_dtoa_r+0x2d8>
 8004bb0:	9b00      	ldr	r3, [sp, #0]
 8004bb2:	2b00      	cmp	r3, #0
 8004bb4:	f43f af6e 	beq.w	8004a94 <_dtoa_r+0x974>
 8004bb8:	e726      	b.n	8004a08 <_dtoa_r+0x8e8>
 8004bba:	6869      	ldr	r1, [r5, #4]
 8004bbc:	4648      	mov	r0, r9
 8004bbe:	f001 f9a5 	bl	8005f0c <_Balloc>
 8004bc2:	692b      	ldr	r3, [r5, #16]
 8004bc4:	3302      	adds	r3, #2
 8004bc6:	009a      	lsls	r2, r3, #2
 8004bc8:	4604      	mov	r4, r0
 8004bca:	f105 010c 	add.w	r1, r5, #12
 8004bce:	300c      	adds	r0, #12
 8004bd0:	f7fb fc96 	bl	8000500 <memcpy>
 8004bd4:	4621      	mov	r1, r4
 8004bd6:	2201      	movs	r2, #1
 8004bd8:	4648      	mov	r0, r9
 8004bda:	f001 fb57 	bl	800628c <__lshift>
 8004bde:	4680      	mov	r8, r0
 8004be0:	e61f      	b.n	8004822 <_dtoa_r+0x702>
 8004be2:	2400      	movs	r4, #0
 8004be4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004be8:	4621      	mov	r1, r4
 8004bea:	4648      	mov	r0, r9
 8004bec:	f001 f98e 	bl	8005f0c <_Balloc>
 8004bf0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004bf4:	930e      	str	r3, [sp, #56]	; 0x38
 8004bf6:	9309      	str	r3, [sp, #36]	; 0x24
 8004bf8:	2301      	movs	r3, #1
 8004bfa:	4683      	mov	fp, r0
 8004bfc:	9407      	str	r4, [sp, #28]
 8004bfe:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c02:	930a      	str	r3, [sp, #40]	; 0x28
 8004c04:	e4b6      	b.n	8004574 <_dtoa_r+0x454>
 8004c06:	f001 f9b1 	bl	8005f6c <__multadd>
 8004c0a:	4627      	mov	r7, r4
 8004c0c:	4605      	mov	r5, r0
 8004c0e:	4680      	mov	r8, r0
 8004c10:	e614      	b.n	800483c <_dtoa_r+0x71c>
 8004c12:	4648      	mov	r0, r9
 8004c14:	f001 f9a0 	bl	8005f58 <_Bfree>
 8004c18:	2301      	movs	r3, #1
 8004c1a:	e639      	b.n	8004890 <_dtoa_r+0x770>
 8004c1c:	9b02      	ldr	r3, [sp, #8]
 8004c1e:	2b02      	cmp	r3, #2
 8004c20:	f77f adf3 	ble.w	800480a <_dtoa_r+0x6ea>
 8004c24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c26:	2b00      	cmp	r3, #0
 8004c28:	f000 80cf 	beq.w	8004dca <_dtoa_r+0xcaa>
 8004c2c:	9b07      	ldr	r3, [sp, #28]
 8004c2e:	43db      	mvns	r3, r3
 8004c30:	9306      	str	r3, [sp, #24]
 8004c32:	465c      	mov	r4, fp
 8004c34:	e78b      	b.n	8004b4e <_dtoa_r+0xa2e>
 8004c36:	9a06      	ldr	r2, [sp, #24]
 8004c38:	2331      	movs	r3, #49	; 0x31
 8004c3a:	3201      	adds	r2, #1
 8004c3c:	9206      	str	r2, [sp, #24]
 8004c3e:	f88b 3000 	strb.w	r3, [fp]
 8004c42:	e6b3      	b.n	80049ac <_dtoa_r+0x88c>
 8004c44:	2401      	movs	r4, #1
 8004c46:	9409      	str	r4, [sp, #36]	; 0x24
 8004c48:	9407      	str	r4, [sp, #28]
 8004c4a:	f7ff bb8b 	b.w	8004364 <_dtoa_r+0x244>
 8004c4e:	4630      	mov	r0, r6
 8004c50:	f7fb ff08 	bl	8000a64 <__aeabi_i2d>
 8004c54:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c58:	f7fb ff6e 	bl	8000b38 <__aeabi_dmul>
 8004c5c:	2200      	movs	r2, #0
 8004c5e:	4b68      	ldr	r3, [pc, #416]	; (8004e00 <_dtoa_r+0xce0>)
 8004c60:	f7fb fdb4 	bl	80007cc <__adddf3>
 8004c64:	4606      	mov	r6, r0
 8004c66:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c6a:	2200      	movs	r2, #0
 8004c6c:	4b61      	ldr	r3, [pc, #388]	; (8004df4 <_dtoa_r+0xcd4>)
 8004c6e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c72:	f7fb fda9 	bl	80007c8 <__aeabi_dsub>
 8004c76:	4632      	mov	r2, r6
 8004c78:	463b      	mov	r3, r7
 8004c7a:	4604      	mov	r4, r0
 8004c7c:	460d      	mov	r5, r1
 8004c7e:	f7fc f9eb 	bl	8001058 <__aeabi_dcmpgt>
 8004c82:	2800      	cmp	r0, #0
 8004c84:	d14f      	bne.n	8004d26 <_dtoa_r+0xc06>
 8004c86:	4632      	mov	r2, r6
 8004c88:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004c8c:	4620      	mov	r0, r4
 8004c8e:	4629      	mov	r1, r5
 8004c90:	f7fc f9c4 	bl	800101c <__aeabi_dcmplt>
 8004c94:	2800      	cmp	r0, #0
 8004c96:	f43f ac69 	beq.w	800456c <_dtoa_r+0x44c>
 8004c9a:	2600      	movs	r6, #0
 8004c9c:	4635      	mov	r5, r6
 8004c9e:	e7c5      	b.n	8004c2c <_dtoa_r+0xb0c>
 8004ca0:	2301      	movs	r3, #1
 8004ca2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ca4:	e6c8      	b.n	8004a38 <_dtoa_r+0x918>
 8004ca6:	4651      	mov	r1, sl
 8004ca8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004caa:	4648      	mov	r0, r9
 8004cac:	f001 fa9e 	bl	80061ec <__pow5mult>
 8004cb0:	4682      	mov	sl, r0
 8004cb2:	e572      	b.n	800479a <_dtoa_r+0x67a>
 8004cb4:	f8dd a000 	ldr.w	sl, [sp]
 8004cb8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cbc:	e686      	b.n	80049cc <_dtoa_r+0x8ac>
 8004cbe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cc0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004cc2:	1afb      	subs	r3, r7, r3
 8004cc4:	441a      	add	r2, r3
 8004cc6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004cca:	2700      	movs	r7, #0
 8004ccc:	e512      	b.n	80046f4 <_dtoa_r+0x5d4>
 8004cce:	2b00      	cmp	r3, #0
 8004cd0:	9402      	str	r4, [sp, #8]
 8004cd2:	465e      	mov	r6, fp
 8004cd4:	f107 0401 	add.w	r4, r7, #1
 8004cd8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cdc:	f300 80ba 	bgt.w	8004e54 <_dtoa_r+0xd34>
 8004ce0:	9b00      	ldr	r3, [sp, #0]
 8004ce2:	9502      	str	r5, [sp, #8]
 8004ce4:	703b      	strb	r3, [r7, #0]
 8004ce6:	4645      	mov	r5, r8
 8004ce8:	e660      	b.n	80049ac <_dtoa_r+0x88c>
 8004cea:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004cee:	2602      	movs	r6, #2
 8004cf0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004cf4:	f7ff bb67 	b.w	80043c6 <_dtoa_r+0x2a6>
 8004cf8:	9b00      	ldr	r3, [sp, #0]
 8004cfa:	2b39      	cmp	r3, #57	; 0x39
 8004cfc:	465e      	mov	r6, fp
 8004cfe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d02:	f000 80b9 	beq.w	8004e78 <_dtoa_r+0xd58>
 8004d06:	9b00      	ldr	r3, [sp, #0]
 8004d08:	9502      	str	r5, [sp, #8]
 8004d0a:	3301      	adds	r3, #1
 8004d0c:	703b      	strb	r3, [r7, #0]
 8004d0e:	4645      	mov	r5, r8
 8004d10:	e64c      	b.n	80049ac <_dtoa_r+0x88c>
 8004d12:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d16:	1a9c      	subs	r4, r3, r2
 8004d18:	e4f5      	b.n	8004706 <_dtoa_r+0x5e6>
 8004d1a:	465e      	mov	r6, fp
 8004d1c:	9502      	str	r5, [sp, #8]
 8004d1e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d22:	4645      	mov	r5, r8
 8004d24:	e61a      	b.n	800495c <_dtoa_r+0x83c>
 8004d26:	2600      	movs	r6, #0
 8004d28:	4635      	mov	r5, r6
 8004d2a:	e708      	b.n	8004b3e <_dtoa_r+0xa1e>
 8004d2c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d30:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d34:	f7fb ff00 	bl	8000b38 <__aeabi_dmul>
 8004d38:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d3a:	f88b 5000 	strb.w	r5, [fp]
 8004d3e:	2b01      	cmp	r3, #1
 8004d40:	e9cd 0100 	strd	r0, r1, [sp]
 8004d44:	d020      	beq.n	8004d88 <_dtoa_r+0xc68>
 8004d46:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d48:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d4c:	445b      	add	r3, fp
 8004d4e:	4698      	mov	r8, r3
 8004d50:	2200      	movs	r2, #0
 8004d52:	4b2c      	ldr	r3, [pc, #176]	; (8004e04 <_dtoa_r+0xce4>)
 8004d54:	4630      	mov	r0, r6
 8004d56:	4639      	mov	r1, r7
 8004d58:	f7fb feee 	bl	8000b38 <__aeabi_dmul>
 8004d5c:	460f      	mov	r7, r1
 8004d5e:	4606      	mov	r6, r0
 8004d60:	f7fc f99a 	bl	8001098 <__aeabi_d2iz>
 8004d64:	4605      	mov	r5, r0
 8004d66:	f7fb fe7d 	bl	8000a64 <__aeabi_i2d>
 8004d6a:	3530      	adds	r5, #48	; 0x30
 8004d6c:	4602      	mov	r2, r0
 8004d6e:	460b      	mov	r3, r1
 8004d70:	4630      	mov	r0, r6
 8004d72:	4639      	mov	r1, r7
 8004d74:	f7fb fd28 	bl	80007c8 <__aeabi_dsub>
 8004d78:	f804 5b01 	strb.w	r5, [r4], #1
 8004d7c:	4544      	cmp	r4, r8
 8004d7e:	4606      	mov	r6, r0
 8004d80:	460f      	mov	r7, r1
 8004d82:	d1e5      	bne.n	8004d50 <_dtoa_r+0xc30>
 8004d84:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004d88:	4b1f      	ldr	r3, [pc, #124]	; (8004e08 <_dtoa_r+0xce8>)
 8004d8a:	2200      	movs	r2, #0
 8004d8c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d90:	f7fb fd1c 	bl	80007cc <__adddf3>
 8004d94:	4632      	mov	r2, r6
 8004d96:	463b      	mov	r3, r7
 8004d98:	f7fc f940 	bl	800101c <__aeabi_dcmplt>
 8004d9c:	2800      	cmp	r0, #0
 8004d9e:	d070      	beq.n	8004e82 <_dtoa_r+0xd62>
 8004da0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004da2:	9306      	str	r3, [sp, #24]
 8004da4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004da8:	e48f      	b.n	80046ca <_dtoa_r+0x5aa>
 8004daa:	2330      	movs	r3, #48	; 0x30
 8004dac:	f88b 3000 	strb.w	r3, [fp]
 8004db0:	9b06      	ldr	r3, [sp, #24]
 8004db2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004db6:	3301      	adds	r3, #1
 8004db8:	9306      	str	r3, [sp, #24]
 8004dba:	465b      	mov	r3, fp
 8004dbc:	e489      	b.n	80046d2 <_dtoa_r+0x5b2>
 8004dbe:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004dc0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004dc4:	e6a0      	b.n	8004b08 <_dtoa_r+0x9e8>
 8004dc6:	2300      	movs	r3, #0
 8004dc8:	e676      	b.n	8004ab8 <_dtoa_r+0x998>
 8004dca:	4631      	mov	r1, r6
 8004dcc:	2205      	movs	r2, #5
 8004dce:	4648      	mov	r0, r9
 8004dd0:	f001 f8cc 	bl	8005f6c <__multadd>
 8004dd4:	4601      	mov	r1, r0
 8004dd6:	4606      	mov	r6, r0
 8004dd8:	4650      	mov	r0, sl
 8004dda:	f001 faad 	bl	8006338 <__mcmp>
 8004dde:	2800      	cmp	r0, #0
 8004de0:	f73f aead 	bgt.w	8004b3e <_dtoa_r+0xa1e>
 8004de4:	e722      	b.n	8004c2c <_dtoa_r+0xb0c>
 8004de6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004dea:	2602      	movs	r6, #2
 8004dec:	ed8d 7b00 	vstr	d7, [sp]
 8004df0:	f7ff bb02 	b.w	80043f8 <_dtoa_r+0x2d8>
 8004df4:	40140000 	.word	0x40140000
 8004df8:	080071a8 	.word	0x080071a8
 8004dfc:	08007180 	.word	0x08007180
 8004e00:	401c0000 	.word	0x401c0000
 8004e04:	40240000 	.word	0x40240000
 8004e08:	3fe00000 	.word	0x3fe00000
 8004e0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e0e:	2b00      	cmp	r3, #0
 8004e10:	f43f af1d 	beq.w	8004c4e <_dtoa_r+0xb2e>
 8004e14:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e16:	2c00      	cmp	r4, #0
 8004e18:	f77f aba8 	ble.w	800456c <_dtoa_r+0x44c>
 8004e1c:	2200      	movs	r2, #0
 8004e1e:	4b45      	ldr	r3, [pc, #276]	; (8004f34 <_dtoa_r+0xe14>)
 8004e20:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e24:	f7fb fe88 	bl	8000b38 <__aeabi_dmul>
 8004e28:	e9cd 0100 	strd	r0, r1, [sp]
 8004e2c:	1c70      	adds	r0, r6, #1
 8004e2e:	f7fb fe19 	bl	8000a64 <__aeabi_i2d>
 8004e32:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e36:	f7fb fe7f 	bl	8000b38 <__aeabi_dmul>
 8004e3a:	4b3f      	ldr	r3, [pc, #252]	; (8004f38 <_dtoa_r+0xe18>)
 8004e3c:	2200      	movs	r2, #0
 8004e3e:	f7fb fcc5 	bl	80007cc <__adddf3>
 8004e42:	9b06      	ldr	r3, [sp, #24]
 8004e44:	9412      	str	r4, [sp, #72]	; 0x48
 8004e46:	3b01      	subs	r3, #1
 8004e48:	4606      	mov	r6, r0
 8004e4a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e4e:	9316      	str	r3, [sp, #88]	; 0x58
 8004e50:	f7ff baf3 	b.w	800443a <_dtoa_r+0x31a>
 8004e54:	4651      	mov	r1, sl
 8004e56:	2201      	movs	r2, #1
 8004e58:	4648      	mov	r0, r9
 8004e5a:	f001 fa17 	bl	800628c <__lshift>
 8004e5e:	4631      	mov	r1, r6
 8004e60:	4682      	mov	sl, r0
 8004e62:	f001 fa69 	bl	8006338 <__mcmp>
 8004e66:	2800      	cmp	r0, #0
 8004e68:	dd3b      	ble.n	8004ee2 <_dtoa_r+0xdc2>
 8004e6a:	9b00      	ldr	r3, [sp, #0]
 8004e6c:	2b39      	cmp	r3, #57	; 0x39
 8004e6e:	d003      	beq.n	8004e78 <_dtoa_r+0xd58>
 8004e70:	9b02      	ldr	r3, [sp, #8]
 8004e72:	3331      	adds	r3, #49	; 0x31
 8004e74:	9300      	str	r3, [sp, #0]
 8004e76:	e733      	b.n	8004ce0 <_dtoa_r+0xbc0>
 8004e78:	2239      	movs	r2, #57	; 0x39
 8004e7a:	9502      	str	r5, [sp, #8]
 8004e7c:	703a      	strb	r2, [r7, #0]
 8004e7e:	4645      	mov	r5, r8
 8004e80:	e58e      	b.n	80049a0 <_dtoa_r+0x880>
 8004e82:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e86:	2000      	movs	r0, #0
 8004e88:	492c      	ldr	r1, [pc, #176]	; (8004f3c <_dtoa_r+0xe1c>)
 8004e8a:	f7fb fc9d 	bl	80007c8 <__aeabi_dsub>
 8004e8e:	4632      	mov	r2, r6
 8004e90:	463b      	mov	r3, r7
 8004e92:	f7fc f8e1 	bl	8001058 <__aeabi_dcmpgt>
 8004e96:	b910      	cbnz	r0, 8004e9e <_dtoa_r+0xd7e>
 8004e98:	f7ff bb68 	b.w	800456c <_dtoa_r+0x44c>
 8004e9c:	4614      	mov	r4, r2
 8004e9e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004ea2:	2b30      	cmp	r3, #48	; 0x30
 8004ea4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004ea8:	d0f8      	beq.n	8004e9c <_dtoa_r+0xd7c>
 8004eaa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004eac:	9306      	str	r3, [sp, #24]
 8004eae:	e58d      	b.n	80049cc <_dtoa_r+0x8ac>
 8004eb0:	46d9      	mov	r9, fp
 8004eb2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004eb6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004eba:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ebc:	9306      	str	r3, [sp, #24]
 8004ebe:	e404      	b.n	80046ca <_dtoa_r+0x5aa>
 8004ec0:	9b00      	ldr	r3, [sp, #0]
 8004ec2:	2b39      	cmp	r3, #57	; 0x39
 8004ec4:	4621      	mov	r1, r4
 8004ec6:	4632      	mov	r2, r6
 8004ec8:	f107 0401 	add.w	r4, r7, #1
 8004ecc:	465e      	mov	r6, fp
 8004ece:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ed2:	d0d1      	beq.n	8004e78 <_dtoa_r+0xd58>
 8004ed4:	2a00      	cmp	r2, #0
 8004ed6:	f77f af03 	ble.w	8004ce0 <_dtoa_r+0xbc0>
 8004eda:	460b      	mov	r3, r1
 8004edc:	3331      	adds	r3, #49	; 0x31
 8004ede:	9300      	str	r3, [sp, #0]
 8004ee0:	e6fe      	b.n	8004ce0 <_dtoa_r+0xbc0>
 8004ee2:	f47f aefd 	bne.w	8004ce0 <_dtoa_r+0xbc0>
 8004ee6:	9b00      	ldr	r3, [sp, #0]
 8004ee8:	07da      	lsls	r2, r3, #31
 8004eea:	f57f aef9 	bpl.w	8004ce0 <_dtoa_r+0xbc0>
 8004eee:	e7bc      	b.n	8004e6a <_dtoa_r+0xd4a>
 8004ef0:	4629      	mov	r1, r5
 8004ef2:	2300      	movs	r3, #0
 8004ef4:	220a      	movs	r2, #10
 8004ef6:	4648      	mov	r0, r9
 8004ef8:	f001 f838 	bl	8005f6c <__multadd>
 8004efc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004efe:	2b00      	cmp	r3, #0
 8004f00:	4605      	mov	r5, r0
 8004f02:	dd09      	ble.n	8004f18 <_dtoa_r+0xdf8>
 8004f04:	9309      	str	r3, [sp, #36]	; 0x24
 8004f06:	e484      	b.n	8004812 <_dtoa_r+0x6f2>
 8004f08:	9b02      	ldr	r3, [sp, #8]
 8004f0a:	2b02      	cmp	r3, #2
 8004f0c:	dc0e      	bgt.n	8004f2c <_dtoa_r+0xe0c>
 8004f0e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f10:	e507      	b.n	8004922 <_dtoa_r+0x802>
 8004f12:	2602      	movs	r6, #2
 8004f14:	f7ff ba70 	b.w	80043f8 <_dtoa_r+0x2d8>
 8004f18:	9b02      	ldr	r3, [sp, #8]
 8004f1a:	2b02      	cmp	r3, #2
 8004f1c:	dc06      	bgt.n	8004f2c <_dtoa_r+0xe0c>
 8004f1e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f20:	e7f0      	b.n	8004f04 <_dtoa_r+0xde4>
 8004f22:	f43f ac59 	beq.w	80047d8 <_dtoa_r+0x6b8>
 8004f26:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f2a:	e450      	b.n	80047ce <_dtoa_r+0x6ae>
 8004f2c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f2e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f30:	e678      	b.n	8004c24 <_dtoa_r+0xb04>
 8004f32:	bf00      	nop
 8004f34:	40240000 	.word	0x40240000
 8004f38:	401c0000 	.word	0x401c0000
 8004f3c:	3fe00000 	.word	0x3fe00000

08004f40 <__sflush_r>:
 8004f40:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f44:	b29a      	uxth	r2, r3
 8004f46:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f4a:	460c      	mov	r4, r1
 8004f4c:	0711      	lsls	r1, r2, #28
 8004f4e:	4680      	mov	r8, r0
 8004f50:	d444      	bmi.n	8004fdc <__sflush_r+0x9c>
 8004f52:	6862      	ldr	r2, [r4, #4]
 8004f54:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f58:	2a00      	cmp	r2, #0
 8004f5a:	81a3      	strh	r3, [r4, #12]
 8004f5c:	dd59      	ble.n	8005012 <__sflush_r+0xd2>
 8004f5e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f60:	2d00      	cmp	r5, #0
 8004f62:	d053      	beq.n	800500c <__sflush_r+0xcc>
 8004f64:	2200      	movs	r2, #0
 8004f66:	b29b      	uxth	r3, r3
 8004f68:	f8d8 6000 	ldr.w	r6, [r8]
 8004f6c:	69e1      	ldr	r1, [r4, #28]
 8004f6e:	f8c8 2000 	str.w	r2, [r8]
 8004f72:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004f76:	f040 8083 	bne.w	8005080 <__sflush_r+0x140>
 8004f7a:	2301      	movs	r3, #1
 8004f7c:	4640      	mov	r0, r8
 8004f7e:	47a8      	blx	r5
 8004f80:	1c42      	adds	r2, r0, #1
 8004f82:	d04a      	beq.n	800501a <__sflush_r+0xda>
 8004f84:	89a3      	ldrh	r3, [r4, #12]
 8004f86:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f88:	69e1      	ldr	r1, [r4, #28]
 8004f8a:	075b      	lsls	r3, r3, #29
 8004f8c:	d505      	bpl.n	8004f9a <__sflush_r+0x5a>
 8004f8e:	6862      	ldr	r2, [r4, #4]
 8004f90:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004f92:	1a80      	subs	r0, r0, r2
 8004f94:	b10b      	cbz	r3, 8004f9a <__sflush_r+0x5a>
 8004f96:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004f98:	1ac0      	subs	r0, r0, r3
 8004f9a:	4602      	mov	r2, r0
 8004f9c:	2300      	movs	r3, #0
 8004f9e:	4640      	mov	r0, r8
 8004fa0:	47a8      	blx	r5
 8004fa2:	1c47      	adds	r7, r0, #1
 8004fa4:	d045      	beq.n	8005032 <__sflush_r+0xf2>
 8004fa6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004faa:	6922      	ldr	r2, [r4, #16]
 8004fac:	6022      	str	r2, [r4, #0]
 8004fae:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004fb2:	2200      	movs	r2, #0
 8004fb4:	81a3      	strh	r3, [r4, #12]
 8004fb6:	04db      	lsls	r3, r3, #19
 8004fb8:	6062      	str	r2, [r4, #4]
 8004fba:	d500      	bpl.n	8004fbe <__sflush_r+0x7e>
 8004fbc:	6520      	str	r0, [r4, #80]	; 0x50
 8004fbe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004fc0:	f8c8 6000 	str.w	r6, [r8]
 8004fc4:	b311      	cbz	r1, 800500c <__sflush_r+0xcc>
 8004fc6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004fca:	4299      	cmp	r1, r3
 8004fcc:	d002      	beq.n	8004fd4 <__sflush_r+0x94>
 8004fce:	4640      	mov	r0, r8
 8004fd0:	f000 f95e 	bl	8005290 <_free_r>
 8004fd4:	2000      	movs	r0, #0
 8004fd6:	6320      	str	r0, [r4, #48]	; 0x30
 8004fd8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fdc:	6926      	ldr	r6, [r4, #16]
 8004fde:	b1ae      	cbz	r6, 800500c <__sflush_r+0xcc>
 8004fe0:	6825      	ldr	r5, [r4, #0]
 8004fe2:	6026      	str	r6, [r4, #0]
 8004fe4:	0792      	lsls	r2, r2, #30
 8004fe6:	bf0c      	ite	eq
 8004fe8:	6963      	ldreq	r3, [r4, #20]
 8004fea:	2300      	movne	r3, #0
 8004fec:	1bad      	subs	r5, r5, r6
 8004fee:	60a3      	str	r3, [r4, #8]
 8004ff0:	e00a      	b.n	8005008 <__sflush_r+0xc8>
 8004ff2:	462b      	mov	r3, r5
 8004ff4:	4632      	mov	r2, r6
 8004ff6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004ff8:	69e1      	ldr	r1, [r4, #28]
 8004ffa:	4640      	mov	r0, r8
 8004ffc:	47b8      	blx	r7
 8004ffe:	2800      	cmp	r0, #0
 8005000:	eba5 0500 	sub.w	r5, r5, r0
 8005004:	4406      	add	r6, r0
 8005006:	dd2b      	ble.n	8005060 <__sflush_r+0x120>
 8005008:	2d00      	cmp	r5, #0
 800500a:	dcf2      	bgt.n	8004ff2 <__sflush_r+0xb2>
 800500c:	2000      	movs	r0, #0
 800500e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005012:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005014:	2a00      	cmp	r2, #0
 8005016:	dca2      	bgt.n	8004f5e <__sflush_r+0x1e>
 8005018:	e7f8      	b.n	800500c <__sflush_r+0xcc>
 800501a:	f8d8 3000 	ldr.w	r3, [r8]
 800501e:	2b00      	cmp	r3, #0
 8005020:	d0b0      	beq.n	8004f84 <__sflush_r+0x44>
 8005022:	2b1d      	cmp	r3, #29
 8005024:	d001      	beq.n	800502a <__sflush_r+0xea>
 8005026:	2b16      	cmp	r3, #22
 8005028:	d12c      	bne.n	8005084 <__sflush_r+0x144>
 800502a:	f8c8 6000 	str.w	r6, [r8]
 800502e:	2000      	movs	r0, #0
 8005030:	e7ed      	b.n	800500e <__sflush_r+0xce>
 8005032:	f8d8 1000 	ldr.w	r1, [r8]
 8005036:	291d      	cmp	r1, #29
 8005038:	d81a      	bhi.n	8005070 <__sflush_r+0x130>
 800503a:	4b15      	ldr	r3, [pc, #84]	; (8005090 <__sflush_r+0x150>)
 800503c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005040:	40cb      	lsrs	r3, r1
 8005042:	43db      	mvns	r3, r3
 8005044:	f013 0301 	ands.w	r3, r3, #1
 8005048:	d114      	bne.n	8005074 <__sflush_r+0x134>
 800504a:	6925      	ldr	r5, [r4, #16]
 800504c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005050:	e9c4 5300 	strd	r5, r3, [r4]
 8005054:	04d5      	lsls	r5, r2, #19
 8005056:	81a2      	strh	r2, [r4, #12]
 8005058:	d5b1      	bpl.n	8004fbe <__sflush_r+0x7e>
 800505a:	2900      	cmp	r1, #0
 800505c:	d1af      	bne.n	8004fbe <__sflush_r+0x7e>
 800505e:	e7ad      	b.n	8004fbc <__sflush_r+0x7c>
 8005060:	89a3      	ldrh	r3, [r4, #12]
 8005062:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005066:	81a3      	strh	r3, [r4, #12]
 8005068:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800506c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005070:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005074:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005078:	81a2      	strh	r2, [r4, #12]
 800507a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800507e:	e7c6      	b.n	800500e <__sflush_r+0xce>
 8005080:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005082:	e782      	b.n	8004f8a <__sflush_r+0x4a>
 8005084:	89a3      	ldrh	r3, [r4, #12]
 8005086:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800508a:	81a3      	strh	r3, [r4, #12]
 800508c:	e7bf      	b.n	800500e <__sflush_r+0xce>
 800508e:	bf00      	nop
 8005090:	20400001 	.word	0x20400001

08005094 <_fflush_r>:
 8005094:	b538      	push	{r3, r4, r5, lr}
 8005096:	460d      	mov	r5, r1
 8005098:	4604      	mov	r4, r0
 800509a:	b108      	cbz	r0, 80050a0 <_fflush_r+0xc>
 800509c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800509e:	b1a3      	cbz	r3, 80050ca <_fflush_r+0x36>
 80050a0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050a4:	b1b8      	cbz	r0, 80050d6 <_fflush_r+0x42>
 80050a6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050a8:	07db      	lsls	r3, r3, #31
 80050aa:	d401      	bmi.n	80050b0 <_fflush_r+0x1c>
 80050ac:	0581      	lsls	r1, r0, #22
 80050ae:	d51a      	bpl.n	80050e6 <_fflush_r+0x52>
 80050b0:	4620      	mov	r0, r4
 80050b2:	4629      	mov	r1, r5
 80050b4:	f7ff ff44 	bl	8004f40 <__sflush_r>
 80050b8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050ba:	07da      	lsls	r2, r3, #31
 80050bc:	4604      	mov	r4, r0
 80050be:	d402      	bmi.n	80050c6 <_fflush_r+0x32>
 80050c0:	89ab      	ldrh	r3, [r5, #12]
 80050c2:	059b      	lsls	r3, r3, #22
 80050c4:	d50a      	bpl.n	80050dc <_fflush_r+0x48>
 80050c6:	4620      	mov	r0, r4
 80050c8:	bd38      	pop	{r3, r4, r5, pc}
 80050ca:	f000 f83f 	bl	800514c <__sinit>
 80050ce:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050d2:	2800      	cmp	r0, #0
 80050d4:	d1e7      	bne.n	80050a6 <_fflush_r+0x12>
 80050d6:	4604      	mov	r4, r0
 80050d8:	4620      	mov	r0, r4
 80050da:	bd38      	pop	{r3, r4, r5, pc}
 80050dc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80050de:	f000 fb87 	bl	80057f0 <__retarget_lock_release_recursive>
 80050e2:	4620      	mov	r0, r4
 80050e4:	bd38      	pop	{r3, r4, r5, pc}
 80050e6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80050e8:	f000 fb80 	bl	80057ec <__retarget_lock_acquire_recursive>
 80050ec:	e7e0      	b.n	80050b0 <_fflush_r+0x1c>
 80050ee:	bf00      	nop

080050f0 <std>:
 80050f0:	b510      	push	{r4, lr}
 80050f2:	2300      	movs	r3, #0
 80050f4:	4604      	mov	r4, r0
 80050f6:	8181      	strh	r1, [r0, #12]
 80050f8:	81c2      	strh	r2, [r0, #14]
 80050fa:	e9c0 3300 	strd	r3, r3, [r0]
 80050fe:	6083      	str	r3, [r0, #8]
 8005100:	6643      	str	r3, [r0, #100]	; 0x64
 8005102:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005106:	6183      	str	r3, [r0, #24]
 8005108:	4619      	mov	r1, r3
 800510a:	2208      	movs	r2, #8
 800510c:	305c      	adds	r0, #92	; 0x5c
 800510e:	f7fd f8cb 	bl	80022a8 <memset>
 8005112:	4807      	ldr	r0, [pc, #28]	; (8005130 <std+0x40>)
 8005114:	4907      	ldr	r1, [pc, #28]	; (8005134 <std+0x44>)
 8005116:	4a08      	ldr	r2, [pc, #32]	; (8005138 <std+0x48>)
 8005118:	4b08      	ldr	r3, [pc, #32]	; (800513c <std+0x4c>)
 800511a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800511c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005120:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005124:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005128:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800512c:	f000 bb5a 	b.w	80057e4 <__retarget_lock_init_recursive>
 8005130:	08006909 	.word	0x08006909
 8005134:	0800692d 	.word	0x0800692d
 8005138:	08006969 	.word	0x08006969
 800513c:	08006989 	.word	0x08006989

08005140 <_cleanup_r>:
 8005140:	4901      	ldr	r1, [pc, #4]	; (8005148 <_cleanup_r+0x8>)
 8005142:	f000 bb17 	b.w	8005774 <_fwalk_reent>
 8005146:	bf00      	nop
 8005148:	08006bf9 	.word	0x08006bf9

0800514c <__sinit>:
 800514c:	b510      	push	{r4, lr}
 800514e:	4604      	mov	r4, r0
 8005150:	4812      	ldr	r0, [pc, #72]	; (800519c <__sinit+0x50>)
 8005152:	f000 fb4b 	bl	80057ec <__retarget_lock_acquire_recursive>
 8005156:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005158:	b9d2      	cbnz	r2, 8005190 <__sinit+0x44>
 800515a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800515e:	4810      	ldr	r0, [pc, #64]	; (80051a0 <__sinit+0x54>)
 8005160:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005164:	2103      	movs	r1, #3
 8005166:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800516a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800516c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005170:	6860      	ldr	r0, [r4, #4]
 8005172:	2104      	movs	r1, #4
 8005174:	f7ff ffbc 	bl	80050f0 <std>
 8005178:	2201      	movs	r2, #1
 800517a:	2109      	movs	r1, #9
 800517c:	68a0      	ldr	r0, [r4, #8]
 800517e:	f7ff ffb7 	bl	80050f0 <std>
 8005182:	2202      	movs	r2, #2
 8005184:	2112      	movs	r1, #18
 8005186:	68e0      	ldr	r0, [r4, #12]
 8005188:	f7ff ffb2 	bl	80050f0 <std>
 800518c:	2301      	movs	r3, #1
 800518e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005190:	4802      	ldr	r0, [pc, #8]	; (800519c <__sinit+0x50>)
 8005192:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005196:	f000 bb2b 	b.w	80057f0 <__retarget_lock_release_recursive>
 800519a:	bf00      	nop
 800519c:	20000b4c 	.word	0x20000b4c
 80051a0:	08005141 	.word	0x08005141

080051a4 <__sfp_lock_acquire>:
 80051a4:	4801      	ldr	r0, [pc, #4]	; (80051ac <__sfp_lock_acquire+0x8>)
 80051a6:	f000 bb21 	b.w	80057ec <__retarget_lock_acquire_recursive>
 80051aa:	bf00      	nop
 80051ac:	20000b60 	.word	0x20000b60

080051b0 <__sfp_lock_release>:
 80051b0:	4801      	ldr	r0, [pc, #4]	; (80051b8 <__sfp_lock_release+0x8>)
 80051b2:	f000 bb1d 	b.w	80057f0 <__retarget_lock_release_recursive>
 80051b6:	bf00      	nop
 80051b8:	20000b60 	.word	0x20000b60

080051bc <__libc_fini_array>:
 80051bc:	b538      	push	{r3, r4, r5, lr}
 80051be:	4c0a      	ldr	r4, [pc, #40]	; (80051e8 <__libc_fini_array+0x2c>)
 80051c0:	4d0a      	ldr	r5, [pc, #40]	; (80051ec <__libc_fini_array+0x30>)
 80051c2:	1b64      	subs	r4, r4, r5
 80051c4:	10a4      	asrs	r4, r4, #2
 80051c6:	d00a      	beq.n	80051de <__libc_fini_array+0x22>
 80051c8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80051cc:	3b01      	subs	r3, #1
 80051ce:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80051d2:	3c01      	subs	r4, #1
 80051d4:	f855 3904 	ldr.w	r3, [r5], #-4
 80051d8:	4798      	blx	r3
 80051da:	2c00      	cmp	r4, #0
 80051dc:	d1f9      	bne.n	80051d2 <__libc_fini_array+0x16>
 80051de:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80051e2:	f001 befd 	b.w	8006fe0 <_fini>
 80051e6:	bf00      	nop
 80051e8:	080073a4 	.word	0x080073a4
 80051ec:	080073a0 	.word	0x080073a0

080051f0 <_malloc_trim_r>:
 80051f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80051f2:	4f24      	ldr	r7, [pc, #144]	; (8005284 <_malloc_trim_r+0x94>)
 80051f4:	460c      	mov	r4, r1
 80051f6:	4606      	mov	r6, r0
 80051f8:	f000 fe7c 	bl	8005ef4 <__malloc_lock>
 80051fc:	68bb      	ldr	r3, [r7, #8]
 80051fe:	685d      	ldr	r5, [r3, #4]
 8005200:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005204:	310f      	adds	r1, #15
 8005206:	f025 0503 	bic.w	r5, r5, #3
 800520a:	4429      	add	r1, r5
 800520c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005210:	f021 010f 	bic.w	r1, r1, #15
 8005214:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005218:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800521c:	db07      	blt.n	800522e <_malloc_trim_r+0x3e>
 800521e:	2100      	movs	r1, #0
 8005220:	4630      	mov	r0, r6
 8005222:	f001 fb5f 	bl	80068e4 <_sbrk_r>
 8005226:	68bb      	ldr	r3, [r7, #8]
 8005228:	442b      	add	r3, r5
 800522a:	4298      	cmp	r0, r3
 800522c:	d004      	beq.n	8005238 <_malloc_trim_r+0x48>
 800522e:	4630      	mov	r0, r6
 8005230:	f000 fe66 	bl	8005f00 <__malloc_unlock>
 8005234:	2000      	movs	r0, #0
 8005236:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005238:	4261      	negs	r1, r4
 800523a:	4630      	mov	r0, r6
 800523c:	f001 fb52 	bl	80068e4 <_sbrk_r>
 8005240:	3001      	adds	r0, #1
 8005242:	d00d      	beq.n	8005260 <_malloc_trim_r+0x70>
 8005244:	4b10      	ldr	r3, [pc, #64]	; (8005288 <_malloc_trim_r+0x98>)
 8005246:	68ba      	ldr	r2, [r7, #8]
 8005248:	6819      	ldr	r1, [r3, #0]
 800524a:	1b2d      	subs	r5, r5, r4
 800524c:	f045 0501 	orr.w	r5, r5, #1
 8005250:	4630      	mov	r0, r6
 8005252:	1b09      	subs	r1, r1, r4
 8005254:	6055      	str	r5, [r2, #4]
 8005256:	6019      	str	r1, [r3, #0]
 8005258:	f000 fe52 	bl	8005f00 <__malloc_unlock>
 800525c:	2001      	movs	r0, #1
 800525e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005260:	2100      	movs	r1, #0
 8005262:	4630      	mov	r0, r6
 8005264:	f001 fb3e 	bl	80068e4 <_sbrk_r>
 8005268:	68ba      	ldr	r2, [r7, #8]
 800526a:	1a83      	subs	r3, r0, r2
 800526c:	2b0f      	cmp	r3, #15
 800526e:	ddde      	ble.n	800522e <_malloc_trim_r+0x3e>
 8005270:	4c06      	ldr	r4, [pc, #24]	; (800528c <_malloc_trim_r+0x9c>)
 8005272:	4905      	ldr	r1, [pc, #20]	; (8005288 <_malloc_trim_r+0x98>)
 8005274:	6824      	ldr	r4, [r4, #0]
 8005276:	f043 0301 	orr.w	r3, r3, #1
 800527a:	1b00      	subs	r0, r0, r4
 800527c:	6053      	str	r3, [r2, #4]
 800527e:	6008      	str	r0, [r1, #0]
 8005280:	e7d5      	b.n	800522e <_malloc_trim_r+0x3e>
 8005282:	bf00      	nop
 8005284:	2000049c 	.word	0x2000049c
 8005288:	20000ac4 	.word	0x20000ac4
 800528c:	200008a4 	.word	0x200008a4

08005290 <_free_r>:
 8005290:	2900      	cmp	r1, #0
 8005292:	d053      	beq.n	800533c <_free_r+0xac>
 8005294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005296:	460c      	mov	r4, r1
 8005298:	4606      	mov	r6, r0
 800529a:	f000 fe2b 	bl	8005ef4 <__malloc_lock>
 800529e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80052a2:	4f71      	ldr	r7, [pc, #452]	; (8005468 <_free_r+0x1d8>)
 80052a4:	f02c 0101 	bic.w	r1, ip, #1
 80052a8:	f1a4 0508 	sub.w	r5, r4, #8
 80052ac:	186b      	adds	r3, r5, r1
 80052ae:	68b8      	ldr	r0, [r7, #8]
 80052b0:	685a      	ldr	r2, [r3, #4]
 80052b2:	4298      	cmp	r0, r3
 80052b4:	f022 0203 	bic.w	r2, r2, #3
 80052b8:	d053      	beq.n	8005362 <_free_r+0xd2>
 80052ba:	f01c 0f01 	tst.w	ip, #1
 80052be:	605a      	str	r2, [r3, #4]
 80052c0:	eb03 0002 	add.w	r0, r3, r2
 80052c4:	d13b      	bne.n	800533e <_free_r+0xae>
 80052c6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80052ca:	6840      	ldr	r0, [r0, #4]
 80052cc:	eba5 050c 	sub.w	r5, r5, ip
 80052d0:	f107 0e08 	add.w	lr, r7, #8
 80052d4:	68ac      	ldr	r4, [r5, #8]
 80052d6:	4574      	cmp	r4, lr
 80052d8:	4461      	add	r1, ip
 80052da:	f000 0001 	and.w	r0, r0, #1
 80052de:	d075      	beq.n	80053cc <_free_r+0x13c>
 80052e0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80052e4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80052e8:	f8cc 4008 	str.w	r4, [ip, #8]
 80052ec:	b360      	cbz	r0, 8005348 <_free_r+0xb8>
 80052ee:	f041 0301 	orr.w	r3, r1, #1
 80052f2:	606b      	str	r3, [r5, #4]
 80052f4:	5069      	str	r1, [r5, r1]
 80052f6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80052fa:	d350      	bcc.n	800539e <_free_r+0x10e>
 80052fc:	0a4b      	lsrs	r3, r1, #9
 80052fe:	2b04      	cmp	r3, #4
 8005300:	d870      	bhi.n	80053e4 <_free_r+0x154>
 8005302:	098b      	lsrs	r3, r1, #6
 8005304:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005308:	00e4      	lsls	r4, r4, #3
 800530a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800530e:	1938      	adds	r0, r7, r4
 8005310:	593b      	ldr	r3, [r7, r4]
 8005312:	3808      	subs	r0, #8
 8005314:	4298      	cmp	r0, r3
 8005316:	d078      	beq.n	800540a <_free_r+0x17a>
 8005318:	685a      	ldr	r2, [r3, #4]
 800531a:	f022 0203 	bic.w	r2, r2, #3
 800531e:	428a      	cmp	r2, r1
 8005320:	d971      	bls.n	8005406 <_free_r+0x176>
 8005322:	689b      	ldr	r3, [r3, #8]
 8005324:	4298      	cmp	r0, r3
 8005326:	d1f7      	bne.n	8005318 <_free_r+0x88>
 8005328:	68c3      	ldr	r3, [r0, #12]
 800532a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800532e:	609d      	str	r5, [r3, #8]
 8005330:	60c5      	str	r5, [r0, #12]
 8005332:	4630      	mov	r0, r6
 8005334:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005338:	f000 bde2 	b.w	8005f00 <__malloc_unlock>
 800533c:	4770      	bx	lr
 800533e:	6840      	ldr	r0, [r0, #4]
 8005340:	f000 0001 	and.w	r0, r0, #1
 8005344:	2800      	cmp	r0, #0
 8005346:	d1d2      	bne.n	80052ee <_free_r+0x5e>
 8005348:	6898      	ldr	r0, [r3, #8]
 800534a:	4c48      	ldr	r4, [pc, #288]	; (800546c <_free_r+0x1dc>)
 800534c:	4411      	add	r1, r2
 800534e:	42a0      	cmp	r0, r4
 8005350:	f041 0201 	orr.w	r2, r1, #1
 8005354:	d062      	beq.n	800541c <_free_r+0x18c>
 8005356:	68db      	ldr	r3, [r3, #12]
 8005358:	60c3      	str	r3, [r0, #12]
 800535a:	6098      	str	r0, [r3, #8]
 800535c:	606a      	str	r2, [r5, #4]
 800535e:	5069      	str	r1, [r5, r1]
 8005360:	e7c9      	b.n	80052f6 <_free_r+0x66>
 8005362:	f01c 0f01 	tst.w	ip, #1
 8005366:	440a      	add	r2, r1
 8005368:	d107      	bne.n	800537a <_free_r+0xea>
 800536a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800536e:	1aed      	subs	r5, r5, r3
 8005370:	441a      	add	r2, r3
 8005372:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005376:	60cb      	str	r3, [r1, #12]
 8005378:	6099      	str	r1, [r3, #8]
 800537a:	4b3d      	ldr	r3, [pc, #244]	; (8005470 <_free_r+0x1e0>)
 800537c:	681b      	ldr	r3, [r3, #0]
 800537e:	f042 0101 	orr.w	r1, r2, #1
 8005382:	4293      	cmp	r3, r2
 8005384:	6069      	str	r1, [r5, #4]
 8005386:	60bd      	str	r5, [r7, #8]
 8005388:	d804      	bhi.n	8005394 <_free_r+0x104>
 800538a:	4b3a      	ldr	r3, [pc, #232]	; (8005474 <_free_r+0x1e4>)
 800538c:	4630      	mov	r0, r6
 800538e:	6819      	ldr	r1, [r3, #0]
 8005390:	f7ff ff2e 	bl	80051f0 <_malloc_trim_r>
 8005394:	4630      	mov	r0, r6
 8005396:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800539a:	f000 bdb1 	b.w	8005f00 <__malloc_unlock>
 800539e:	08c9      	lsrs	r1, r1, #3
 80053a0:	6878      	ldr	r0, [r7, #4]
 80053a2:	1c4a      	adds	r2, r1, #1
 80053a4:	2301      	movs	r3, #1
 80053a6:	1089      	asrs	r1, r1, #2
 80053a8:	408b      	lsls	r3, r1
 80053aa:	4303      	orrs	r3, r0
 80053ac:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80053b0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80053b4:	607b      	str	r3, [r7, #4]
 80053b6:	3908      	subs	r1, #8
 80053b8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80053bc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80053c0:	60c5      	str	r5, [r0, #12]
 80053c2:	4630      	mov	r0, r6
 80053c4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053c8:	f000 bd9a 	b.w	8005f00 <__malloc_unlock>
 80053cc:	2800      	cmp	r0, #0
 80053ce:	d145      	bne.n	800545c <_free_r+0x1cc>
 80053d0:	440a      	add	r2, r1
 80053d2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80053d6:	f042 0001 	orr.w	r0, r2, #1
 80053da:	60cb      	str	r3, [r1, #12]
 80053dc:	6099      	str	r1, [r3, #8]
 80053de:	6068      	str	r0, [r5, #4]
 80053e0:	50aa      	str	r2, [r5, r2]
 80053e2:	e7d7      	b.n	8005394 <_free_r+0x104>
 80053e4:	2b14      	cmp	r3, #20
 80053e6:	d908      	bls.n	80053fa <_free_r+0x16a>
 80053e8:	2b54      	cmp	r3, #84	; 0x54
 80053ea:	d81e      	bhi.n	800542a <_free_r+0x19a>
 80053ec:	0b0b      	lsrs	r3, r1, #12
 80053ee:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80053f2:	00e4      	lsls	r4, r4, #3
 80053f4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80053f8:	e789      	b.n	800530e <_free_r+0x7e>
 80053fa:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80053fe:	00e4      	lsls	r4, r4, #3
 8005400:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005404:	e783      	b.n	800530e <_free_r+0x7e>
 8005406:	4618      	mov	r0, r3
 8005408:	e78e      	b.n	8005328 <_free_r+0x98>
 800540a:	1093      	asrs	r3, r2, #2
 800540c:	6879      	ldr	r1, [r7, #4]
 800540e:	2201      	movs	r2, #1
 8005410:	fa02 f303 	lsl.w	r3, r2, r3
 8005414:	430b      	orrs	r3, r1
 8005416:	607b      	str	r3, [r7, #4]
 8005418:	4603      	mov	r3, r0
 800541a:	e786      	b.n	800532a <_free_r+0x9a>
 800541c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005420:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005424:	606a      	str	r2, [r5, #4]
 8005426:	5069      	str	r1, [r5, r1]
 8005428:	e7b4      	b.n	8005394 <_free_r+0x104>
 800542a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800542e:	d806      	bhi.n	800543e <_free_r+0x1ae>
 8005430:	0bcb      	lsrs	r3, r1, #15
 8005432:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005436:	00e4      	lsls	r4, r4, #3
 8005438:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800543c:	e767      	b.n	800530e <_free_r+0x7e>
 800543e:	f240 5254 	movw	r2, #1364	; 0x554
 8005442:	4293      	cmp	r3, r2
 8005444:	d806      	bhi.n	8005454 <_free_r+0x1c4>
 8005446:	0c8b      	lsrs	r3, r1, #18
 8005448:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800544c:	00e4      	lsls	r4, r4, #3
 800544e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005452:	e75c      	b.n	800530e <_free_r+0x7e>
 8005454:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005458:	227e      	movs	r2, #126	; 0x7e
 800545a:	e758      	b.n	800530e <_free_r+0x7e>
 800545c:	f041 0201 	orr.w	r2, r1, #1
 8005460:	606a      	str	r2, [r5, #4]
 8005462:	6019      	str	r1, [r3, #0]
 8005464:	e796      	b.n	8005394 <_free_r+0x104>
 8005466:	bf00      	nop
 8005468:	2000049c 	.word	0x2000049c
 800546c:	200004a4 	.word	0x200004a4
 8005470:	200008a8 	.word	0x200008a8
 8005474:	20000af4 	.word	0x20000af4

08005478 <__sfvwrite_r>:
 8005478:	6893      	ldr	r3, [r2, #8]
 800547a:	2b00      	cmp	r3, #0
 800547c:	f000 80e4 	beq.w	8005648 <__sfvwrite_r+0x1d0>
 8005480:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005484:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005488:	b29b      	uxth	r3, r3
 800548a:	460c      	mov	r4, r1
 800548c:	0719      	lsls	r1, r3, #28
 800548e:	b083      	sub	sp, #12
 8005490:	4682      	mov	sl, r0
 8005492:	4690      	mov	r8, r2
 8005494:	d535      	bpl.n	8005502 <__sfvwrite_r+0x8a>
 8005496:	6922      	ldr	r2, [r4, #16]
 8005498:	b39a      	cbz	r2, 8005502 <__sfvwrite_r+0x8a>
 800549a:	f013 0202 	ands.w	r2, r3, #2
 800549e:	f8d8 6000 	ldr.w	r6, [r8]
 80054a2:	d03d      	beq.n	8005520 <__sfvwrite_r+0xa8>
 80054a4:	2700      	movs	r7, #0
 80054a6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054aa:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054ae:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005770 <__sfvwrite_r+0x2f8>
 80054b2:	463d      	mov	r5, r7
 80054b4:	454d      	cmp	r5, r9
 80054b6:	462b      	mov	r3, r5
 80054b8:	463a      	mov	r2, r7
 80054ba:	bf28      	it	cs
 80054bc:	464b      	movcs	r3, r9
 80054be:	4661      	mov	r1, ip
 80054c0:	4650      	mov	r0, sl
 80054c2:	b1d5      	cbz	r5, 80054fa <__sfvwrite_r+0x82>
 80054c4:	47d8      	blx	fp
 80054c6:	2800      	cmp	r0, #0
 80054c8:	f340 80c6 	ble.w	8005658 <__sfvwrite_r+0x1e0>
 80054cc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054d0:	1a1b      	subs	r3, r3, r0
 80054d2:	4407      	add	r7, r0
 80054d4:	1a2d      	subs	r5, r5, r0
 80054d6:	f8c8 3008 	str.w	r3, [r8, #8]
 80054da:	2b00      	cmp	r3, #0
 80054dc:	f000 80b0 	beq.w	8005640 <__sfvwrite_r+0x1c8>
 80054e0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054e4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054e8:	454d      	cmp	r5, r9
 80054ea:	462b      	mov	r3, r5
 80054ec:	463a      	mov	r2, r7
 80054ee:	bf28      	it	cs
 80054f0:	464b      	movcs	r3, r9
 80054f2:	4661      	mov	r1, ip
 80054f4:	4650      	mov	r0, sl
 80054f6:	2d00      	cmp	r5, #0
 80054f8:	d1e4      	bne.n	80054c4 <__sfvwrite_r+0x4c>
 80054fa:	e9d6 7500 	ldrd	r7, r5, [r6]
 80054fe:	3608      	adds	r6, #8
 8005500:	e7d8      	b.n	80054b4 <__sfvwrite_r+0x3c>
 8005502:	4621      	mov	r1, r4
 8005504:	4650      	mov	r0, sl
 8005506:	f7fe fd03 	bl	8003f10 <__swsetup_r>
 800550a:	2800      	cmp	r0, #0
 800550c:	f040 812a 	bne.w	8005764 <__sfvwrite_r+0x2ec>
 8005510:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005514:	f8d8 6000 	ldr.w	r6, [r8]
 8005518:	b29b      	uxth	r3, r3
 800551a:	f013 0202 	ands.w	r2, r3, #2
 800551e:	d1c1      	bne.n	80054a4 <__sfvwrite_r+0x2c>
 8005520:	f013 0901 	ands.w	r9, r3, #1
 8005524:	d15d      	bne.n	80055e2 <__sfvwrite_r+0x16a>
 8005526:	68a7      	ldr	r7, [r4, #8]
 8005528:	6820      	ldr	r0, [r4, #0]
 800552a:	464d      	mov	r5, r9
 800552c:	2d00      	cmp	r5, #0
 800552e:	d054      	beq.n	80055da <__sfvwrite_r+0x162>
 8005530:	059a      	lsls	r2, r3, #22
 8005532:	f140 809b 	bpl.w	800566c <__sfvwrite_r+0x1f4>
 8005536:	42af      	cmp	r7, r5
 8005538:	46bb      	mov	fp, r7
 800553a:	f200 80d8 	bhi.w	80056ee <__sfvwrite_r+0x276>
 800553e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005542:	d02f      	beq.n	80055a4 <__sfvwrite_r+0x12c>
 8005544:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005548:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800554c:	eba0 0b01 	sub.w	fp, r0, r1
 8005550:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005554:	1c68      	adds	r0, r5, #1
 8005556:	107f      	asrs	r7, r7, #1
 8005558:	4458      	add	r0, fp
 800555a:	42b8      	cmp	r0, r7
 800555c:	463a      	mov	r2, r7
 800555e:	bf84      	itt	hi
 8005560:	4607      	movhi	r7, r0
 8005562:	463a      	movhi	r2, r7
 8005564:	055b      	lsls	r3, r3, #21
 8005566:	f140 80d3 	bpl.w	8005710 <__sfvwrite_r+0x298>
 800556a:	4611      	mov	r1, r2
 800556c:	4650      	mov	r0, sl
 800556e:	f000 f9b9 	bl	80058e4 <_malloc_r>
 8005572:	2800      	cmp	r0, #0
 8005574:	f000 80f0 	beq.w	8005758 <__sfvwrite_r+0x2e0>
 8005578:	465a      	mov	r2, fp
 800557a:	6921      	ldr	r1, [r4, #16]
 800557c:	9001      	str	r0, [sp, #4]
 800557e:	f7fa ffbf 	bl	8000500 <memcpy>
 8005582:	89a2      	ldrh	r2, [r4, #12]
 8005584:	9b01      	ldr	r3, [sp, #4]
 8005586:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800558a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800558e:	81a2      	strh	r2, [r4, #12]
 8005590:	eba7 020b 	sub.w	r2, r7, fp
 8005594:	eb03 000b 	add.w	r0, r3, fp
 8005598:	6167      	str	r7, [r4, #20]
 800559a:	6123      	str	r3, [r4, #16]
 800559c:	6020      	str	r0, [r4, #0]
 800559e:	60a2      	str	r2, [r4, #8]
 80055a0:	462f      	mov	r7, r5
 80055a2:	46ab      	mov	fp, r5
 80055a4:	465a      	mov	r2, fp
 80055a6:	4649      	mov	r1, r9
 80055a8:	f000 fc40 	bl	8005e2c <memmove>
 80055ac:	68a2      	ldr	r2, [r4, #8]
 80055ae:	6823      	ldr	r3, [r4, #0]
 80055b0:	1bd2      	subs	r2, r2, r7
 80055b2:	445b      	add	r3, fp
 80055b4:	462f      	mov	r7, r5
 80055b6:	60a2      	str	r2, [r4, #8]
 80055b8:	6023      	str	r3, [r4, #0]
 80055ba:	2500      	movs	r5, #0
 80055bc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055c0:	1bdb      	subs	r3, r3, r7
 80055c2:	44b9      	add	r9, r7
 80055c4:	f8c8 3008 	str.w	r3, [r8, #8]
 80055c8:	2b00      	cmp	r3, #0
 80055ca:	d039      	beq.n	8005640 <__sfvwrite_r+0x1c8>
 80055cc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055d0:	68a7      	ldr	r7, [r4, #8]
 80055d2:	6820      	ldr	r0, [r4, #0]
 80055d4:	b29b      	uxth	r3, r3
 80055d6:	2d00      	cmp	r5, #0
 80055d8:	d1aa      	bne.n	8005530 <__sfvwrite_r+0xb8>
 80055da:	e9d6 9500 	ldrd	r9, r5, [r6]
 80055de:	3608      	adds	r6, #8
 80055e0:	e7a4      	b.n	800552c <__sfvwrite_r+0xb4>
 80055e2:	4633      	mov	r3, r6
 80055e4:	4691      	mov	r9, r2
 80055e6:	4610      	mov	r0, r2
 80055e8:	4617      	mov	r7, r2
 80055ea:	464e      	mov	r6, r9
 80055ec:	469b      	mov	fp, r3
 80055ee:	2f00      	cmp	r7, #0
 80055f0:	d06b      	beq.n	80056ca <__sfvwrite_r+0x252>
 80055f2:	2800      	cmp	r0, #0
 80055f4:	d071      	beq.n	80056da <__sfvwrite_r+0x262>
 80055f6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80055fa:	6820      	ldr	r0, [r4, #0]
 80055fc:	45b9      	cmp	r9, r7
 80055fe:	464b      	mov	r3, r9
 8005600:	bf28      	it	cs
 8005602:	463b      	movcs	r3, r7
 8005604:	4288      	cmp	r0, r1
 8005606:	d903      	bls.n	8005610 <__sfvwrite_r+0x198>
 8005608:	68a5      	ldr	r5, [r4, #8]
 800560a:	4415      	add	r5, r2
 800560c:	42ab      	cmp	r3, r5
 800560e:	dc71      	bgt.n	80056f4 <__sfvwrite_r+0x27c>
 8005610:	429a      	cmp	r2, r3
 8005612:	f300 8093 	bgt.w	800573c <__sfvwrite_r+0x2c4>
 8005616:	4613      	mov	r3, r2
 8005618:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800561a:	69e1      	ldr	r1, [r4, #28]
 800561c:	4632      	mov	r2, r6
 800561e:	4650      	mov	r0, sl
 8005620:	47a8      	blx	r5
 8005622:	1e05      	subs	r5, r0, #0
 8005624:	dd18      	ble.n	8005658 <__sfvwrite_r+0x1e0>
 8005626:	ebb9 0905 	subs.w	r9, r9, r5
 800562a:	d00f      	beq.n	800564c <__sfvwrite_r+0x1d4>
 800562c:	2001      	movs	r0, #1
 800562e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005632:	1b5b      	subs	r3, r3, r5
 8005634:	442e      	add	r6, r5
 8005636:	1b7f      	subs	r7, r7, r5
 8005638:	f8c8 3008 	str.w	r3, [r8, #8]
 800563c:	2b00      	cmp	r3, #0
 800563e:	d1d6      	bne.n	80055ee <__sfvwrite_r+0x176>
 8005640:	2000      	movs	r0, #0
 8005642:	b003      	add	sp, #12
 8005644:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005648:	2000      	movs	r0, #0
 800564a:	4770      	bx	lr
 800564c:	4621      	mov	r1, r4
 800564e:	4650      	mov	r0, sl
 8005650:	f7ff fd20 	bl	8005094 <_fflush_r>
 8005654:	2800      	cmp	r0, #0
 8005656:	d0ea      	beq.n	800562e <__sfvwrite_r+0x1b6>
 8005658:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800565c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005660:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005664:	81a3      	strh	r3, [r4, #12]
 8005666:	b003      	add	sp, #12
 8005668:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800566c:	6923      	ldr	r3, [r4, #16]
 800566e:	4283      	cmp	r3, r0
 8005670:	d315      	bcc.n	800569e <__sfvwrite_r+0x226>
 8005672:	6961      	ldr	r1, [r4, #20]
 8005674:	42a9      	cmp	r1, r5
 8005676:	d812      	bhi.n	800569e <__sfvwrite_r+0x226>
 8005678:	4b3c      	ldr	r3, [pc, #240]	; (800576c <__sfvwrite_r+0x2f4>)
 800567a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800567c:	429d      	cmp	r5, r3
 800567e:	bf94      	ite	ls
 8005680:	462b      	movls	r3, r5
 8005682:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005686:	464a      	mov	r2, r9
 8005688:	fb93 f3f1 	sdiv	r3, r3, r1
 800568c:	4650      	mov	r0, sl
 800568e:	fb01 f303 	mul.w	r3, r1, r3
 8005692:	69e1      	ldr	r1, [r4, #28]
 8005694:	47b8      	blx	r7
 8005696:	1e07      	subs	r7, r0, #0
 8005698:	ddde      	ble.n	8005658 <__sfvwrite_r+0x1e0>
 800569a:	1bed      	subs	r5, r5, r7
 800569c:	e78e      	b.n	80055bc <__sfvwrite_r+0x144>
 800569e:	42af      	cmp	r7, r5
 80056a0:	bf28      	it	cs
 80056a2:	462f      	movcs	r7, r5
 80056a4:	463a      	mov	r2, r7
 80056a6:	4649      	mov	r1, r9
 80056a8:	f000 fbc0 	bl	8005e2c <memmove>
 80056ac:	68a3      	ldr	r3, [r4, #8]
 80056ae:	6822      	ldr	r2, [r4, #0]
 80056b0:	1bdb      	subs	r3, r3, r7
 80056b2:	443a      	add	r2, r7
 80056b4:	60a3      	str	r3, [r4, #8]
 80056b6:	6022      	str	r2, [r4, #0]
 80056b8:	2b00      	cmp	r3, #0
 80056ba:	d1ee      	bne.n	800569a <__sfvwrite_r+0x222>
 80056bc:	4621      	mov	r1, r4
 80056be:	4650      	mov	r0, sl
 80056c0:	f7ff fce8 	bl	8005094 <_fflush_r>
 80056c4:	2800      	cmp	r0, #0
 80056c6:	d0e8      	beq.n	800569a <__sfvwrite_r+0x222>
 80056c8:	e7c6      	b.n	8005658 <__sfvwrite_r+0x1e0>
 80056ca:	f10b 0308 	add.w	r3, fp, #8
 80056ce:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80056d2:	469b      	mov	fp, r3
 80056d4:	3308      	adds	r3, #8
 80056d6:	2f00      	cmp	r7, #0
 80056d8:	d0f9      	beq.n	80056ce <__sfvwrite_r+0x256>
 80056da:	463a      	mov	r2, r7
 80056dc:	210a      	movs	r1, #10
 80056de:	4630      	mov	r0, r6
 80056e0:	f7fb f81e 	bl	8000720 <memchr>
 80056e4:	b338      	cbz	r0, 8005736 <__sfvwrite_r+0x2be>
 80056e6:	3001      	adds	r0, #1
 80056e8:	eba0 0906 	sub.w	r9, r0, r6
 80056ec:	e783      	b.n	80055f6 <__sfvwrite_r+0x17e>
 80056ee:	462f      	mov	r7, r5
 80056f0:	46ab      	mov	fp, r5
 80056f2:	e757      	b.n	80055a4 <__sfvwrite_r+0x12c>
 80056f4:	4631      	mov	r1, r6
 80056f6:	462a      	mov	r2, r5
 80056f8:	f000 fb98 	bl	8005e2c <memmove>
 80056fc:	6823      	ldr	r3, [r4, #0]
 80056fe:	442b      	add	r3, r5
 8005700:	6023      	str	r3, [r4, #0]
 8005702:	4621      	mov	r1, r4
 8005704:	4650      	mov	r0, sl
 8005706:	f7ff fcc5 	bl	8005094 <_fflush_r>
 800570a:	2800      	cmp	r0, #0
 800570c:	d08b      	beq.n	8005626 <__sfvwrite_r+0x1ae>
 800570e:	e7a3      	b.n	8005658 <__sfvwrite_r+0x1e0>
 8005710:	4650      	mov	r0, sl
 8005712:	f000 ff05 	bl	8006520 <_realloc_r>
 8005716:	4603      	mov	r3, r0
 8005718:	2800      	cmp	r0, #0
 800571a:	f47f af39 	bne.w	8005590 <__sfvwrite_r+0x118>
 800571e:	6921      	ldr	r1, [r4, #16]
 8005720:	4650      	mov	r0, sl
 8005722:	f7ff fdb5 	bl	8005290 <_free_r>
 8005726:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800572a:	220c      	movs	r2, #12
 800572c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005730:	f8ca 2000 	str.w	r2, [sl]
 8005734:	e792      	b.n	800565c <__sfvwrite_r+0x1e4>
 8005736:	f107 0901 	add.w	r9, r7, #1
 800573a:	e75c      	b.n	80055f6 <__sfvwrite_r+0x17e>
 800573c:	461a      	mov	r2, r3
 800573e:	4631      	mov	r1, r6
 8005740:	9301      	str	r3, [sp, #4]
 8005742:	f000 fb73 	bl	8005e2c <memmove>
 8005746:	9b01      	ldr	r3, [sp, #4]
 8005748:	68a1      	ldr	r1, [r4, #8]
 800574a:	6822      	ldr	r2, [r4, #0]
 800574c:	1ac9      	subs	r1, r1, r3
 800574e:	441a      	add	r2, r3
 8005750:	60a1      	str	r1, [r4, #8]
 8005752:	6022      	str	r2, [r4, #0]
 8005754:	461d      	mov	r5, r3
 8005756:	e766      	b.n	8005626 <__sfvwrite_r+0x1ae>
 8005758:	230c      	movs	r3, #12
 800575a:	f8ca 3000 	str.w	r3, [sl]
 800575e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005762:	e77b      	b.n	800565c <__sfvwrite_r+0x1e4>
 8005764:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005768:	e76b      	b.n	8005642 <__sfvwrite_r+0x1ca>
 800576a:	bf00      	nop
 800576c:	7ffffffe 	.word	0x7ffffffe
 8005770:	7ffffc00 	.word	0x7ffffc00

08005774 <_fwalk_reent>:
 8005774:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005778:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800577c:	d01f      	beq.n	80057be <_fwalk_reent+0x4a>
 800577e:	4688      	mov	r8, r1
 8005780:	4606      	mov	r6, r0
 8005782:	f04f 0900 	mov.w	r9, #0
 8005786:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800578a:	3d01      	subs	r5, #1
 800578c:	d411      	bmi.n	80057b2 <_fwalk_reent+0x3e>
 800578e:	89a3      	ldrh	r3, [r4, #12]
 8005790:	2b01      	cmp	r3, #1
 8005792:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005796:	4621      	mov	r1, r4
 8005798:	4630      	mov	r0, r6
 800579a:	d906      	bls.n	80057aa <_fwalk_reent+0x36>
 800579c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80057a0:	3301      	adds	r3, #1
 80057a2:	d002      	beq.n	80057aa <_fwalk_reent+0x36>
 80057a4:	47c0      	blx	r8
 80057a6:	ea49 0900 	orr.w	r9, r9, r0
 80057aa:	1c6b      	adds	r3, r5, #1
 80057ac:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80057b0:	d1ed      	bne.n	800578e <_fwalk_reent+0x1a>
 80057b2:	683f      	ldr	r7, [r7, #0]
 80057b4:	2f00      	cmp	r7, #0
 80057b6:	d1e6      	bne.n	8005786 <_fwalk_reent+0x12>
 80057b8:	4648      	mov	r0, r9
 80057ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057be:	46b9      	mov	r9, r7
 80057c0:	4648      	mov	r0, r9
 80057c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057c6:	bf00      	nop

080057c8 <_localeconv_r>:
 80057c8:	4a04      	ldr	r2, [pc, #16]	; (80057dc <_localeconv_r+0x14>)
 80057ca:	4b05      	ldr	r3, [pc, #20]	; (80057e0 <_localeconv_r+0x18>)
 80057cc:	6812      	ldr	r2, [r2, #0]
 80057ce:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80057d0:	2800      	cmp	r0, #0
 80057d2:	bf08      	it	eq
 80057d4:	4618      	moveq	r0, r3
 80057d6:	30f0      	adds	r0, #240	; 0xf0
 80057d8:	4770      	bx	lr
 80057da:	bf00      	nop
 80057dc:	20000068 	.word	0x20000068
 80057e0:	200008ac 	.word	0x200008ac

080057e4 <__retarget_lock_init_recursive>:
 80057e4:	4770      	bx	lr
 80057e6:	bf00      	nop

080057e8 <__retarget_lock_close_recursive>:
 80057e8:	4770      	bx	lr
 80057ea:	bf00      	nop

080057ec <__retarget_lock_acquire_recursive>:
 80057ec:	4770      	bx	lr
 80057ee:	bf00      	nop

080057f0 <__retarget_lock_release_recursive>:
 80057f0:	4770      	bx	lr
 80057f2:	bf00      	nop

080057f4 <__swhatbuf_r>:
 80057f4:	b570      	push	{r4, r5, r6, lr}
 80057f6:	460c      	mov	r4, r1
 80057f8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80057fc:	2900      	cmp	r1, #0
 80057fe:	b096      	sub	sp, #88	; 0x58
 8005800:	4615      	mov	r5, r2
 8005802:	461e      	mov	r6, r3
 8005804:	da0f      	bge.n	8005826 <__swhatbuf_r+0x32>
 8005806:	89a2      	ldrh	r2, [r4, #12]
 8005808:	2300      	movs	r3, #0
 800580a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800580e:	6033      	str	r3, [r6, #0]
 8005810:	d104      	bne.n	800581c <__swhatbuf_r+0x28>
 8005812:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005816:	602b      	str	r3, [r5, #0]
 8005818:	b016      	add	sp, #88	; 0x58
 800581a:	bd70      	pop	{r4, r5, r6, pc}
 800581c:	2240      	movs	r2, #64	; 0x40
 800581e:	4618      	mov	r0, r3
 8005820:	602a      	str	r2, [r5, #0]
 8005822:	b016      	add	sp, #88	; 0x58
 8005824:	bd70      	pop	{r4, r5, r6, pc}
 8005826:	466a      	mov	r2, sp
 8005828:	f001 fad0 	bl	8006dcc <_fstat_r>
 800582c:	2800      	cmp	r0, #0
 800582e:	dbea      	blt.n	8005806 <__swhatbuf_r+0x12>
 8005830:	9b01      	ldr	r3, [sp, #4]
 8005832:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005836:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800583a:	fab3 f383 	clz	r3, r3
 800583e:	095b      	lsrs	r3, r3, #5
 8005840:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005844:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005848:	6033      	str	r3, [r6, #0]
 800584a:	602a      	str	r2, [r5, #0]
 800584c:	b016      	add	sp, #88	; 0x58
 800584e:	bd70      	pop	{r4, r5, r6, pc}

08005850 <__smakebuf_r>:
 8005850:	898a      	ldrh	r2, [r1, #12]
 8005852:	0792      	lsls	r2, r2, #30
 8005854:	460b      	mov	r3, r1
 8005856:	d506      	bpl.n	8005866 <__smakebuf_r+0x16>
 8005858:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800585c:	2101      	movs	r1, #1
 800585e:	601a      	str	r2, [r3, #0]
 8005860:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005864:	4770      	bx	lr
 8005866:	b570      	push	{r4, r5, r6, lr}
 8005868:	b082      	sub	sp, #8
 800586a:	ab01      	add	r3, sp, #4
 800586c:	466a      	mov	r2, sp
 800586e:	460c      	mov	r4, r1
 8005870:	4605      	mov	r5, r0
 8005872:	f7ff ffbf 	bl	80057f4 <__swhatbuf_r>
 8005876:	9900      	ldr	r1, [sp, #0]
 8005878:	4606      	mov	r6, r0
 800587a:	4628      	mov	r0, r5
 800587c:	f000 f832 	bl	80058e4 <_malloc_r>
 8005880:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005884:	b1d8      	cbz	r0, 80058be <__smakebuf_r+0x6e>
 8005886:	4916      	ldr	r1, [pc, #88]	; (80058e0 <__smakebuf_r+0x90>)
 8005888:	63e9      	str	r1, [r5, #60]	; 0x3c
 800588a:	9a01      	ldr	r2, [sp, #4]
 800588c:	9900      	ldr	r1, [sp, #0]
 800588e:	6020      	str	r0, [r4, #0]
 8005890:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005894:	81a3      	strh	r3, [r4, #12]
 8005896:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800589a:	b91a      	cbnz	r2, 80058a4 <__smakebuf_r+0x54>
 800589c:	4333      	orrs	r3, r6
 800589e:	81a3      	strh	r3, [r4, #12]
 80058a0:	b002      	add	sp, #8
 80058a2:	bd70      	pop	{r4, r5, r6, pc}
 80058a4:	4628      	mov	r0, r5
 80058a6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80058aa:	f001 faa3 	bl	8006df4 <_isatty_r>
 80058ae:	b1a0      	cbz	r0, 80058da <__smakebuf_r+0x8a>
 80058b0:	89a3      	ldrh	r3, [r4, #12]
 80058b2:	f023 0303 	bic.w	r3, r3, #3
 80058b6:	f043 0301 	orr.w	r3, r3, #1
 80058ba:	b21b      	sxth	r3, r3
 80058bc:	e7ee      	b.n	800589c <__smakebuf_r+0x4c>
 80058be:	059a      	lsls	r2, r3, #22
 80058c0:	d4ee      	bmi.n	80058a0 <__smakebuf_r+0x50>
 80058c2:	f023 0303 	bic.w	r3, r3, #3
 80058c6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80058ca:	f043 0302 	orr.w	r3, r3, #2
 80058ce:	2101      	movs	r1, #1
 80058d0:	81a3      	strh	r3, [r4, #12]
 80058d2:	6022      	str	r2, [r4, #0]
 80058d4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80058d8:	e7e2      	b.n	80058a0 <__smakebuf_r+0x50>
 80058da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058de:	e7dd      	b.n	800589c <__smakebuf_r+0x4c>
 80058e0:	08005141 	.word	0x08005141

080058e4 <_malloc_r>:
 80058e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80058e8:	f101 050b 	add.w	r5, r1, #11
 80058ec:	2d16      	cmp	r5, #22
 80058ee:	b083      	sub	sp, #12
 80058f0:	4606      	mov	r6, r0
 80058f2:	d823      	bhi.n	800593c <_malloc_r+0x58>
 80058f4:	2910      	cmp	r1, #16
 80058f6:	f200 80b9 	bhi.w	8005a6c <_malloc_r+0x188>
 80058fa:	f000 fafb 	bl	8005ef4 <__malloc_lock>
 80058fe:	2510      	movs	r5, #16
 8005900:	2318      	movs	r3, #24
 8005902:	2002      	movs	r0, #2
 8005904:	4fc5      	ldr	r7, [pc, #788]	; (8005c1c <_malloc_r+0x338>)
 8005906:	443b      	add	r3, r7
 8005908:	f1a3 0208 	sub.w	r2, r3, #8
 800590c:	685c      	ldr	r4, [r3, #4]
 800590e:	4294      	cmp	r4, r2
 8005910:	f000 8166 	beq.w	8005be0 <_malloc_r+0x2fc>
 8005914:	6863      	ldr	r3, [r4, #4]
 8005916:	f023 0303 	bic.w	r3, r3, #3
 800591a:	4423      	add	r3, r4
 800591c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005920:	685a      	ldr	r2, [r3, #4]
 8005922:	60e9      	str	r1, [r5, #12]
 8005924:	f042 0201 	orr.w	r2, r2, #1
 8005928:	608d      	str	r5, [r1, #8]
 800592a:	4630      	mov	r0, r6
 800592c:	605a      	str	r2, [r3, #4]
 800592e:	f000 fae7 	bl	8005f00 <__malloc_unlock>
 8005932:	3408      	adds	r4, #8
 8005934:	4620      	mov	r0, r4
 8005936:	b003      	add	sp, #12
 8005938:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800593c:	f035 0507 	bics.w	r5, r5, #7
 8005940:	f100 8094 	bmi.w	8005a6c <_malloc_r+0x188>
 8005944:	42a9      	cmp	r1, r5
 8005946:	f200 8091 	bhi.w	8005a6c <_malloc_r+0x188>
 800594a:	f000 fad3 	bl	8005ef4 <__malloc_lock>
 800594e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005952:	f0c0 8183 	bcc.w	8005c5c <_malloc_r+0x378>
 8005956:	0a6b      	lsrs	r3, r5, #9
 8005958:	f000 808f 	beq.w	8005a7a <_malloc_r+0x196>
 800595c:	2b04      	cmp	r3, #4
 800595e:	f200 8146 	bhi.w	8005bee <_malloc_r+0x30a>
 8005962:	09ab      	lsrs	r3, r5, #6
 8005964:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005968:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800596c:	00c3      	lsls	r3, r0, #3
 800596e:	4fab      	ldr	r7, [pc, #684]	; (8005c1c <_malloc_r+0x338>)
 8005970:	443b      	add	r3, r7
 8005972:	f1a3 0108 	sub.w	r1, r3, #8
 8005976:	685c      	ldr	r4, [r3, #4]
 8005978:	42a1      	cmp	r1, r4
 800597a:	d106      	bne.n	800598a <_malloc_r+0xa6>
 800597c:	e00c      	b.n	8005998 <_malloc_r+0xb4>
 800597e:	2a00      	cmp	r2, #0
 8005980:	f280 811d 	bge.w	8005bbe <_malloc_r+0x2da>
 8005984:	68e4      	ldr	r4, [r4, #12]
 8005986:	42a1      	cmp	r1, r4
 8005988:	d006      	beq.n	8005998 <_malloc_r+0xb4>
 800598a:	6863      	ldr	r3, [r4, #4]
 800598c:	f023 0303 	bic.w	r3, r3, #3
 8005990:	1b5a      	subs	r2, r3, r5
 8005992:	2a0f      	cmp	r2, #15
 8005994:	ddf3      	ble.n	800597e <_malloc_r+0x9a>
 8005996:	4660      	mov	r0, ip
 8005998:	693c      	ldr	r4, [r7, #16]
 800599a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c30 <_malloc_r+0x34c>
 800599e:	4564      	cmp	r4, ip
 80059a0:	d071      	beq.n	8005a86 <_malloc_r+0x1a2>
 80059a2:	6863      	ldr	r3, [r4, #4]
 80059a4:	f023 0303 	bic.w	r3, r3, #3
 80059a8:	1b5a      	subs	r2, r3, r5
 80059aa:	2a0f      	cmp	r2, #15
 80059ac:	f300 8144 	bgt.w	8005c38 <_malloc_r+0x354>
 80059b0:	2a00      	cmp	r2, #0
 80059b2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80059b6:	f280 8126 	bge.w	8005c06 <_malloc_r+0x322>
 80059ba:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80059be:	f080 8169 	bcs.w	8005c94 <_malloc_r+0x3b0>
 80059c2:	08db      	lsrs	r3, r3, #3
 80059c4:	1c59      	adds	r1, r3, #1
 80059c6:	687a      	ldr	r2, [r7, #4]
 80059c8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80059cc:	f8c4 8008 	str.w	r8, [r4, #8]
 80059d0:	f04f 0e01 	mov.w	lr, #1
 80059d4:	109b      	asrs	r3, r3, #2
 80059d6:	fa0e f303 	lsl.w	r3, lr, r3
 80059da:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80059de:	4313      	orrs	r3, r2
 80059e0:	f1ae 0208 	sub.w	r2, lr, #8
 80059e4:	60e2      	str	r2, [r4, #12]
 80059e6:	607b      	str	r3, [r7, #4]
 80059e8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80059ec:	f8c8 400c 	str.w	r4, [r8, #12]
 80059f0:	1082      	asrs	r2, r0, #2
 80059f2:	2401      	movs	r4, #1
 80059f4:	4094      	lsls	r4, r2
 80059f6:	429c      	cmp	r4, r3
 80059f8:	d84b      	bhi.n	8005a92 <_malloc_r+0x1ae>
 80059fa:	421c      	tst	r4, r3
 80059fc:	d106      	bne.n	8005a0c <_malloc_r+0x128>
 80059fe:	f020 0003 	bic.w	r0, r0, #3
 8005a02:	0064      	lsls	r4, r4, #1
 8005a04:	421c      	tst	r4, r3
 8005a06:	f100 0004 	add.w	r0, r0, #4
 8005a0a:	d0fa      	beq.n	8005a02 <_malloc_r+0x11e>
 8005a0c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a10:	46ce      	mov	lr, r9
 8005a12:	4680      	mov	r8, r0
 8005a14:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a18:	459e      	cmp	lr, r3
 8005a1a:	d107      	bne.n	8005a2c <_malloc_r+0x148>
 8005a1c:	e122      	b.n	8005c64 <_malloc_r+0x380>
 8005a1e:	2a00      	cmp	r2, #0
 8005a20:	f280 8129 	bge.w	8005c76 <_malloc_r+0x392>
 8005a24:	68db      	ldr	r3, [r3, #12]
 8005a26:	459e      	cmp	lr, r3
 8005a28:	f000 811c 	beq.w	8005c64 <_malloc_r+0x380>
 8005a2c:	6859      	ldr	r1, [r3, #4]
 8005a2e:	f021 0103 	bic.w	r1, r1, #3
 8005a32:	1b4a      	subs	r2, r1, r5
 8005a34:	2a0f      	cmp	r2, #15
 8005a36:	ddf2      	ble.n	8005a1e <_malloc_r+0x13a>
 8005a38:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a3c:	195c      	adds	r4, r3, r5
 8005a3e:	f045 0501 	orr.w	r5, r5, #1
 8005a42:	605d      	str	r5, [r3, #4]
 8005a44:	f042 0501 	orr.w	r5, r2, #1
 8005a48:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a4c:	4630      	mov	r0, r6
 8005a4e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a52:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a56:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a5a:	6065      	str	r5, [r4, #4]
 8005a5c:	505a      	str	r2, [r3, r1]
 8005a5e:	9301      	str	r3, [sp, #4]
 8005a60:	f000 fa4e 	bl	8005f00 <__malloc_unlock>
 8005a64:	9b01      	ldr	r3, [sp, #4]
 8005a66:	f103 0408 	add.w	r4, r3, #8
 8005a6a:	e763      	b.n	8005934 <_malloc_r+0x50>
 8005a6c:	2400      	movs	r4, #0
 8005a6e:	230c      	movs	r3, #12
 8005a70:	4620      	mov	r0, r4
 8005a72:	6033      	str	r3, [r6, #0]
 8005a74:	b003      	add	sp, #12
 8005a76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a7a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005a7e:	2040      	movs	r0, #64	; 0x40
 8005a80:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005a84:	e773      	b.n	800596e <_malloc_r+0x8a>
 8005a86:	687b      	ldr	r3, [r7, #4]
 8005a88:	1082      	asrs	r2, r0, #2
 8005a8a:	2401      	movs	r4, #1
 8005a8c:	4094      	lsls	r4, r2
 8005a8e:	429c      	cmp	r4, r3
 8005a90:	d9b3      	bls.n	80059fa <_malloc_r+0x116>
 8005a92:	68bc      	ldr	r4, [r7, #8]
 8005a94:	6863      	ldr	r3, [r4, #4]
 8005a96:	f023 0903 	bic.w	r9, r3, #3
 8005a9a:	45a9      	cmp	r9, r5
 8005a9c:	d303      	bcc.n	8005aa6 <_malloc_r+0x1c2>
 8005a9e:	eba9 0305 	sub.w	r3, r9, r5
 8005aa2:	2b0f      	cmp	r3, #15
 8005aa4:	dc7b      	bgt.n	8005b9e <_malloc_r+0x2ba>
 8005aa6:	4b5e      	ldr	r3, [pc, #376]	; (8005c20 <_malloc_r+0x33c>)
 8005aa8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c34 <_malloc_r+0x350>
 8005aac:	681a      	ldr	r2, [r3, #0]
 8005aae:	f8da 3000 	ldr.w	r3, [sl]
 8005ab2:	3301      	adds	r3, #1
 8005ab4:	eb05 0802 	add.w	r8, r5, r2
 8005ab8:	f000 8148 	beq.w	8005d4c <_malloc_r+0x468>
 8005abc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005ac0:	f108 080f 	add.w	r8, r8, #15
 8005ac4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005ac8:	f028 080f 	bic.w	r8, r8, #15
 8005acc:	4641      	mov	r1, r8
 8005ace:	4630      	mov	r0, r6
 8005ad0:	f000 ff08 	bl	80068e4 <_sbrk_r>
 8005ad4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005ad8:	4683      	mov	fp, r0
 8005ada:	f000 8104 	beq.w	8005ce6 <_malloc_r+0x402>
 8005ade:	eb04 0009 	add.w	r0, r4, r9
 8005ae2:	4558      	cmp	r0, fp
 8005ae4:	f200 80fd 	bhi.w	8005ce2 <_malloc_r+0x3fe>
 8005ae8:	4a4e      	ldr	r2, [pc, #312]	; (8005c24 <_malloc_r+0x340>)
 8005aea:	6813      	ldr	r3, [r2, #0]
 8005aec:	4443      	add	r3, r8
 8005aee:	6013      	str	r3, [r2, #0]
 8005af0:	f000 814d 	beq.w	8005d8e <_malloc_r+0x4aa>
 8005af4:	f8da 1000 	ldr.w	r1, [sl]
 8005af8:	3101      	adds	r1, #1
 8005afa:	bf1b      	ittet	ne
 8005afc:	ebab 0000 	subne.w	r0, fp, r0
 8005b00:	181b      	addne	r3, r3, r0
 8005b02:	f8ca b000 	streq.w	fp, [sl]
 8005b06:	6013      	strne	r3, [r2, #0]
 8005b08:	f01b 0307 	ands.w	r3, fp, #7
 8005b0c:	f000 8134 	beq.w	8005d78 <_malloc_r+0x494>
 8005b10:	f1c3 0108 	rsb	r1, r3, #8
 8005b14:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b18:	448b      	add	fp, r1
 8005b1a:	3308      	adds	r3, #8
 8005b1c:	44d8      	add	r8, fp
 8005b1e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b22:	eba3 0808 	sub.w	r8, r3, r8
 8005b26:	4641      	mov	r1, r8
 8005b28:	4630      	mov	r0, r6
 8005b2a:	9201      	str	r2, [sp, #4]
 8005b2c:	f000 feda 	bl	80068e4 <_sbrk_r>
 8005b30:	1c43      	adds	r3, r0, #1
 8005b32:	9a01      	ldr	r2, [sp, #4]
 8005b34:	f000 8146 	beq.w	8005dc4 <_malloc_r+0x4e0>
 8005b38:	eba0 010b 	sub.w	r1, r0, fp
 8005b3c:	4441      	add	r1, r8
 8005b3e:	f041 0101 	orr.w	r1, r1, #1
 8005b42:	6813      	ldr	r3, [r2, #0]
 8005b44:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b48:	4443      	add	r3, r8
 8005b4a:	42bc      	cmp	r4, r7
 8005b4c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b50:	6013      	str	r3, [r2, #0]
 8005b52:	d015      	beq.n	8005b80 <_malloc_r+0x29c>
 8005b54:	f1b9 0f0f 	cmp.w	r9, #15
 8005b58:	f240 8130 	bls.w	8005dbc <_malloc_r+0x4d8>
 8005b5c:	6860      	ldr	r0, [r4, #4]
 8005b5e:	f1a9 010c 	sub.w	r1, r9, #12
 8005b62:	f021 0107 	bic.w	r1, r1, #7
 8005b66:	f000 0001 	and.w	r0, r0, #1
 8005b6a:	eb04 0c01 	add.w	ip, r4, r1
 8005b6e:	4308      	orrs	r0, r1
 8005b70:	f04f 0e05 	mov.w	lr, #5
 8005b74:	290f      	cmp	r1, #15
 8005b76:	6060      	str	r0, [r4, #4]
 8005b78:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005b7c:	f200 813a 	bhi.w	8005df4 <_malloc_r+0x510>
 8005b80:	4a29      	ldr	r2, [pc, #164]	; (8005c28 <_malloc_r+0x344>)
 8005b82:	482a      	ldr	r0, [pc, #168]	; (8005c2c <_malloc_r+0x348>)
 8005b84:	6811      	ldr	r1, [r2, #0]
 8005b86:	68bc      	ldr	r4, [r7, #8]
 8005b88:	428b      	cmp	r3, r1
 8005b8a:	6801      	ldr	r1, [r0, #0]
 8005b8c:	bf88      	it	hi
 8005b8e:	6013      	strhi	r3, [r2, #0]
 8005b90:	6862      	ldr	r2, [r4, #4]
 8005b92:	428b      	cmp	r3, r1
 8005b94:	f022 0203 	bic.w	r2, r2, #3
 8005b98:	bf88      	it	hi
 8005b9a:	6003      	strhi	r3, [r0, #0]
 8005b9c:	e0a7      	b.n	8005cee <_malloc_r+0x40a>
 8005b9e:	1962      	adds	r2, r4, r5
 8005ba0:	f043 0301 	orr.w	r3, r3, #1
 8005ba4:	f045 0501 	orr.w	r5, r5, #1
 8005ba8:	6065      	str	r5, [r4, #4]
 8005baa:	4630      	mov	r0, r6
 8005bac:	60ba      	str	r2, [r7, #8]
 8005bae:	6053      	str	r3, [r2, #4]
 8005bb0:	f000 f9a6 	bl	8005f00 <__malloc_unlock>
 8005bb4:	3408      	adds	r4, #8
 8005bb6:	4620      	mov	r0, r4
 8005bb8:	b003      	add	sp, #12
 8005bba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bbe:	4423      	add	r3, r4
 8005bc0:	68e1      	ldr	r1, [r4, #12]
 8005bc2:	685a      	ldr	r2, [r3, #4]
 8005bc4:	68a5      	ldr	r5, [r4, #8]
 8005bc6:	f042 0201 	orr.w	r2, r2, #1
 8005bca:	60e9      	str	r1, [r5, #12]
 8005bcc:	4630      	mov	r0, r6
 8005bce:	608d      	str	r5, [r1, #8]
 8005bd0:	605a      	str	r2, [r3, #4]
 8005bd2:	f000 f995 	bl	8005f00 <__malloc_unlock>
 8005bd6:	3408      	adds	r4, #8
 8005bd8:	4620      	mov	r0, r4
 8005bda:	b003      	add	sp, #12
 8005bdc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005be0:	68dc      	ldr	r4, [r3, #12]
 8005be2:	42a3      	cmp	r3, r4
 8005be4:	bf08      	it	eq
 8005be6:	3002      	addeq	r0, #2
 8005be8:	f43f aed6 	beq.w	8005998 <_malloc_r+0xb4>
 8005bec:	e692      	b.n	8005914 <_malloc_r+0x30>
 8005bee:	2b14      	cmp	r3, #20
 8005bf0:	d971      	bls.n	8005cd6 <_malloc_r+0x3f2>
 8005bf2:	2b54      	cmp	r3, #84	; 0x54
 8005bf4:	f200 80ad 	bhi.w	8005d52 <_malloc_r+0x46e>
 8005bf8:	0b2b      	lsrs	r3, r5, #12
 8005bfa:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005bfe:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c02:	00c3      	lsls	r3, r0, #3
 8005c04:	e6b3      	b.n	800596e <_malloc_r+0x8a>
 8005c06:	4423      	add	r3, r4
 8005c08:	4630      	mov	r0, r6
 8005c0a:	685a      	ldr	r2, [r3, #4]
 8005c0c:	f042 0201 	orr.w	r2, r2, #1
 8005c10:	605a      	str	r2, [r3, #4]
 8005c12:	3408      	adds	r4, #8
 8005c14:	f000 f974 	bl	8005f00 <__malloc_unlock>
 8005c18:	e68c      	b.n	8005934 <_malloc_r+0x50>
 8005c1a:	bf00      	nop
 8005c1c:	2000049c 	.word	0x2000049c
 8005c20:	20000af4 	.word	0x20000af4
 8005c24:	20000ac4 	.word	0x20000ac4
 8005c28:	20000aec 	.word	0x20000aec
 8005c2c:	20000af0 	.word	0x20000af0
 8005c30:	200004a4 	.word	0x200004a4
 8005c34:	200008a4 	.word	0x200008a4
 8005c38:	1961      	adds	r1, r4, r5
 8005c3a:	f045 0e01 	orr.w	lr, r5, #1
 8005c3e:	f042 0501 	orr.w	r5, r2, #1
 8005c42:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c46:	4630      	mov	r0, r6
 8005c48:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c4c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c50:	604d      	str	r5, [r1, #4]
 8005c52:	50e2      	str	r2, [r4, r3]
 8005c54:	f000 f954 	bl	8005f00 <__malloc_unlock>
 8005c58:	3408      	adds	r4, #8
 8005c5a:	e66b      	b.n	8005934 <_malloc_r+0x50>
 8005c5c:	08e8      	lsrs	r0, r5, #3
 8005c5e:	f105 0308 	add.w	r3, r5, #8
 8005c62:	e64f      	b.n	8005904 <_malloc_r+0x20>
 8005c64:	f108 0801 	add.w	r8, r8, #1
 8005c68:	f018 0f03 	tst.w	r8, #3
 8005c6c:	f10e 0e08 	add.w	lr, lr, #8
 8005c70:	f47f aed0 	bne.w	8005a14 <_malloc_r+0x130>
 8005c74:	e052      	b.n	8005d1c <_malloc_r+0x438>
 8005c76:	4419      	add	r1, r3
 8005c78:	461c      	mov	r4, r3
 8005c7a:	684a      	ldr	r2, [r1, #4]
 8005c7c:	68db      	ldr	r3, [r3, #12]
 8005c7e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005c82:	f042 0201 	orr.w	r2, r2, #1
 8005c86:	604a      	str	r2, [r1, #4]
 8005c88:	4630      	mov	r0, r6
 8005c8a:	60eb      	str	r3, [r5, #12]
 8005c8c:	609d      	str	r5, [r3, #8]
 8005c8e:	f000 f937 	bl	8005f00 <__malloc_unlock>
 8005c92:	e64f      	b.n	8005934 <_malloc_r+0x50>
 8005c94:	0a5a      	lsrs	r2, r3, #9
 8005c96:	2a04      	cmp	r2, #4
 8005c98:	d935      	bls.n	8005d06 <_malloc_r+0x422>
 8005c9a:	2a14      	cmp	r2, #20
 8005c9c:	d86f      	bhi.n	8005d7e <_malloc_r+0x49a>
 8005c9e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005ca2:	00c9      	lsls	r1, r1, #3
 8005ca4:	325b      	adds	r2, #91	; 0x5b
 8005ca6:	eb07 0e01 	add.w	lr, r7, r1
 8005caa:	5879      	ldr	r1, [r7, r1]
 8005cac:	f1ae 0e08 	sub.w	lr, lr, #8
 8005cb0:	458e      	cmp	lr, r1
 8005cb2:	d058      	beq.n	8005d66 <_malloc_r+0x482>
 8005cb4:	684a      	ldr	r2, [r1, #4]
 8005cb6:	f022 0203 	bic.w	r2, r2, #3
 8005cba:	429a      	cmp	r2, r3
 8005cbc:	d902      	bls.n	8005cc4 <_malloc_r+0x3e0>
 8005cbe:	6889      	ldr	r1, [r1, #8]
 8005cc0:	458e      	cmp	lr, r1
 8005cc2:	d1f7      	bne.n	8005cb4 <_malloc_r+0x3d0>
 8005cc4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005cc8:	687b      	ldr	r3, [r7, #4]
 8005cca:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005cce:	f8ce 4008 	str.w	r4, [lr, #8]
 8005cd2:	60cc      	str	r4, [r1, #12]
 8005cd4:	e68c      	b.n	80059f0 <_malloc_r+0x10c>
 8005cd6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005cda:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005cde:	00c3      	lsls	r3, r0, #3
 8005ce0:	e645      	b.n	800596e <_malloc_r+0x8a>
 8005ce2:	42bc      	cmp	r4, r7
 8005ce4:	d072      	beq.n	8005dcc <_malloc_r+0x4e8>
 8005ce6:	68bc      	ldr	r4, [r7, #8]
 8005ce8:	6862      	ldr	r2, [r4, #4]
 8005cea:	f022 0203 	bic.w	r2, r2, #3
 8005cee:	4295      	cmp	r5, r2
 8005cf0:	eba2 0305 	sub.w	r3, r2, r5
 8005cf4:	d802      	bhi.n	8005cfc <_malloc_r+0x418>
 8005cf6:	2b0f      	cmp	r3, #15
 8005cf8:	f73f af51 	bgt.w	8005b9e <_malloc_r+0x2ba>
 8005cfc:	4630      	mov	r0, r6
 8005cfe:	f000 f8ff 	bl	8005f00 <__malloc_unlock>
 8005d02:	2400      	movs	r4, #0
 8005d04:	e616      	b.n	8005934 <_malloc_r+0x50>
 8005d06:	099a      	lsrs	r2, r3, #6
 8005d08:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d0c:	00c9      	lsls	r1, r1, #3
 8005d0e:	3238      	adds	r2, #56	; 0x38
 8005d10:	e7c9      	b.n	8005ca6 <_malloc_r+0x3c2>
 8005d12:	f8d9 9000 	ldr.w	r9, [r9]
 8005d16:	4599      	cmp	r9, r3
 8005d18:	f040 8083 	bne.w	8005e22 <_malloc_r+0x53e>
 8005d1c:	f010 0f03 	tst.w	r0, #3
 8005d20:	f1a9 0308 	sub.w	r3, r9, #8
 8005d24:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d28:	d1f3      	bne.n	8005d12 <_malloc_r+0x42e>
 8005d2a:	687b      	ldr	r3, [r7, #4]
 8005d2c:	ea23 0304 	bic.w	r3, r3, r4
 8005d30:	607b      	str	r3, [r7, #4]
 8005d32:	0064      	lsls	r4, r4, #1
 8005d34:	429c      	cmp	r4, r3
 8005d36:	f63f aeac 	bhi.w	8005a92 <_malloc_r+0x1ae>
 8005d3a:	b91c      	cbnz	r4, 8005d44 <_malloc_r+0x460>
 8005d3c:	e6a9      	b.n	8005a92 <_malloc_r+0x1ae>
 8005d3e:	0064      	lsls	r4, r4, #1
 8005d40:	f108 0804 	add.w	r8, r8, #4
 8005d44:	421c      	tst	r4, r3
 8005d46:	d0fa      	beq.n	8005d3e <_malloc_r+0x45a>
 8005d48:	4640      	mov	r0, r8
 8005d4a:	e65f      	b.n	8005a0c <_malloc_r+0x128>
 8005d4c:	f108 0810 	add.w	r8, r8, #16
 8005d50:	e6bc      	b.n	8005acc <_malloc_r+0x1e8>
 8005d52:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d56:	d826      	bhi.n	8005da6 <_malloc_r+0x4c2>
 8005d58:	0beb      	lsrs	r3, r5, #15
 8005d5a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d5e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d62:	00c3      	lsls	r3, r0, #3
 8005d64:	e603      	b.n	800596e <_malloc_r+0x8a>
 8005d66:	687b      	ldr	r3, [r7, #4]
 8005d68:	1092      	asrs	r2, r2, #2
 8005d6a:	f04f 0801 	mov.w	r8, #1
 8005d6e:	fa08 f202 	lsl.w	r2, r8, r2
 8005d72:	4313      	orrs	r3, r2
 8005d74:	607b      	str	r3, [r7, #4]
 8005d76:	e7a8      	b.n	8005cca <_malloc_r+0x3e6>
 8005d78:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005d7c:	e6ce      	b.n	8005b1c <_malloc_r+0x238>
 8005d7e:	2a54      	cmp	r2, #84	; 0x54
 8005d80:	d829      	bhi.n	8005dd6 <_malloc_r+0x4f2>
 8005d82:	0b1a      	lsrs	r2, r3, #12
 8005d84:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005d88:	00c9      	lsls	r1, r1, #3
 8005d8a:	326e      	adds	r2, #110	; 0x6e
 8005d8c:	e78b      	b.n	8005ca6 <_malloc_r+0x3c2>
 8005d8e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005d92:	2900      	cmp	r1, #0
 8005d94:	f47f aeae 	bne.w	8005af4 <_malloc_r+0x210>
 8005d98:	eb09 0208 	add.w	r2, r9, r8
 8005d9c:	68b9      	ldr	r1, [r7, #8]
 8005d9e:	f042 0201 	orr.w	r2, r2, #1
 8005da2:	604a      	str	r2, [r1, #4]
 8005da4:	e6ec      	b.n	8005b80 <_malloc_r+0x29c>
 8005da6:	f240 5254 	movw	r2, #1364	; 0x554
 8005daa:	4293      	cmp	r3, r2
 8005dac:	d81c      	bhi.n	8005de8 <_malloc_r+0x504>
 8005dae:	0cab      	lsrs	r3, r5, #18
 8005db0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005db4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005db8:	00c3      	lsls	r3, r0, #3
 8005dba:	e5d8      	b.n	800596e <_malloc_r+0x8a>
 8005dbc:	2301      	movs	r3, #1
 8005dbe:	f8cb 3004 	str.w	r3, [fp, #4]
 8005dc2:	e79b      	b.n	8005cfc <_malloc_r+0x418>
 8005dc4:	2101      	movs	r1, #1
 8005dc6:	f04f 0800 	mov.w	r8, #0
 8005dca:	e6ba      	b.n	8005b42 <_malloc_r+0x25e>
 8005dcc:	4a16      	ldr	r2, [pc, #88]	; (8005e28 <_malloc_r+0x544>)
 8005dce:	6813      	ldr	r3, [r2, #0]
 8005dd0:	4443      	add	r3, r8
 8005dd2:	6013      	str	r3, [r2, #0]
 8005dd4:	e68e      	b.n	8005af4 <_malloc_r+0x210>
 8005dd6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005dda:	d814      	bhi.n	8005e06 <_malloc_r+0x522>
 8005ddc:	0bda      	lsrs	r2, r3, #15
 8005dde:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005de2:	00c9      	lsls	r1, r1, #3
 8005de4:	3277      	adds	r2, #119	; 0x77
 8005de6:	e75e      	b.n	8005ca6 <_malloc_r+0x3c2>
 8005de8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005dec:	207f      	movs	r0, #127	; 0x7f
 8005dee:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005df2:	e5bc      	b.n	800596e <_malloc_r+0x8a>
 8005df4:	f104 0108 	add.w	r1, r4, #8
 8005df8:	4630      	mov	r0, r6
 8005dfa:	9201      	str	r2, [sp, #4]
 8005dfc:	f7ff fa48 	bl	8005290 <_free_r>
 8005e00:	9a01      	ldr	r2, [sp, #4]
 8005e02:	6813      	ldr	r3, [r2, #0]
 8005e04:	e6bc      	b.n	8005b80 <_malloc_r+0x29c>
 8005e06:	f240 5154 	movw	r1, #1364	; 0x554
 8005e0a:	428a      	cmp	r2, r1
 8005e0c:	d805      	bhi.n	8005e1a <_malloc_r+0x536>
 8005e0e:	0c9a      	lsrs	r2, r3, #18
 8005e10:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e14:	00c9      	lsls	r1, r1, #3
 8005e16:	327c      	adds	r2, #124	; 0x7c
 8005e18:	e745      	b.n	8005ca6 <_malloc_r+0x3c2>
 8005e1a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e1e:	227e      	movs	r2, #126	; 0x7e
 8005e20:	e741      	b.n	8005ca6 <_malloc_r+0x3c2>
 8005e22:	687b      	ldr	r3, [r7, #4]
 8005e24:	e785      	b.n	8005d32 <_malloc_r+0x44e>
 8005e26:	bf00      	nop
 8005e28:	20000ac4 	.word	0x20000ac4

08005e2c <memmove>:
 8005e2c:	4288      	cmp	r0, r1
 8005e2e:	b4f0      	push	{r4, r5, r6, r7}
 8005e30:	d90d      	bls.n	8005e4e <memmove+0x22>
 8005e32:	188b      	adds	r3, r1, r2
 8005e34:	4283      	cmp	r3, r0
 8005e36:	d90a      	bls.n	8005e4e <memmove+0x22>
 8005e38:	1884      	adds	r4, r0, r2
 8005e3a:	b132      	cbz	r2, 8005e4a <memmove+0x1e>
 8005e3c:	4622      	mov	r2, r4
 8005e3e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e42:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e46:	4299      	cmp	r1, r3
 8005e48:	d1f9      	bne.n	8005e3e <memmove+0x12>
 8005e4a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e4c:	4770      	bx	lr
 8005e4e:	2a0f      	cmp	r2, #15
 8005e50:	d949      	bls.n	8005ee6 <memmove+0xba>
 8005e52:	ea40 0301 	orr.w	r3, r0, r1
 8005e56:	079b      	lsls	r3, r3, #30
 8005e58:	d147      	bne.n	8005eea <memmove+0xbe>
 8005e5a:	f1a2 0310 	sub.w	r3, r2, #16
 8005e5e:	091b      	lsrs	r3, r3, #4
 8005e60:	f101 0720 	add.w	r7, r1, #32
 8005e64:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e68:	f101 0410 	add.w	r4, r1, #16
 8005e6c:	f100 0510 	add.w	r5, r0, #16
 8005e70:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005e74:	f845 6c10 	str.w	r6, [r5, #-16]
 8005e78:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005e7c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005e80:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005e84:	f845 6c08 	str.w	r6, [r5, #-8]
 8005e88:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005e8c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005e90:	3410      	adds	r4, #16
 8005e92:	42bc      	cmp	r4, r7
 8005e94:	f105 0510 	add.w	r5, r5, #16
 8005e98:	d1ea      	bne.n	8005e70 <memmove+0x44>
 8005e9a:	3301      	adds	r3, #1
 8005e9c:	f002 050f 	and.w	r5, r2, #15
 8005ea0:	011b      	lsls	r3, r3, #4
 8005ea2:	2d03      	cmp	r5, #3
 8005ea4:	4419      	add	r1, r3
 8005ea6:	4403      	add	r3, r0
 8005ea8:	d921      	bls.n	8005eee <memmove+0xc2>
 8005eaa:	1f1f      	subs	r7, r3, #4
 8005eac:	460e      	mov	r6, r1
 8005eae:	462c      	mov	r4, r5
 8005eb0:	3c04      	subs	r4, #4
 8005eb2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005eb6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005eba:	2c03      	cmp	r4, #3
 8005ebc:	d8f8      	bhi.n	8005eb0 <memmove+0x84>
 8005ebe:	1f2c      	subs	r4, r5, #4
 8005ec0:	f024 0403 	bic.w	r4, r4, #3
 8005ec4:	3404      	adds	r4, #4
 8005ec6:	4423      	add	r3, r4
 8005ec8:	4421      	add	r1, r4
 8005eca:	f002 0203 	and.w	r2, r2, #3
 8005ece:	2a00      	cmp	r2, #0
 8005ed0:	d0bb      	beq.n	8005e4a <memmove+0x1e>
 8005ed2:	3b01      	subs	r3, #1
 8005ed4:	440a      	add	r2, r1
 8005ed6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005eda:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005ede:	4291      	cmp	r1, r2
 8005ee0:	d1f9      	bne.n	8005ed6 <memmove+0xaa>
 8005ee2:	bcf0      	pop	{r4, r5, r6, r7}
 8005ee4:	4770      	bx	lr
 8005ee6:	4603      	mov	r3, r0
 8005ee8:	e7f1      	b.n	8005ece <memmove+0xa2>
 8005eea:	4603      	mov	r3, r0
 8005eec:	e7f1      	b.n	8005ed2 <memmove+0xa6>
 8005eee:	462a      	mov	r2, r5
 8005ef0:	e7ed      	b.n	8005ece <memmove+0xa2>
 8005ef2:	bf00      	nop

08005ef4 <__malloc_lock>:
 8005ef4:	4801      	ldr	r0, [pc, #4]	; (8005efc <__malloc_lock+0x8>)
 8005ef6:	f7ff bc79 	b.w	80057ec <__retarget_lock_acquire_recursive>
 8005efa:	bf00      	nop
 8005efc:	20000b50 	.word	0x20000b50

08005f00 <__malloc_unlock>:
 8005f00:	4801      	ldr	r0, [pc, #4]	; (8005f08 <__malloc_unlock+0x8>)
 8005f02:	f7ff bc75 	b.w	80057f0 <__retarget_lock_release_recursive>
 8005f06:	bf00      	nop
 8005f08:	20000b50 	.word	0x20000b50

08005f0c <_Balloc>:
 8005f0c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f0e:	b570      	push	{r4, r5, r6, lr}
 8005f10:	4605      	mov	r5, r0
 8005f12:	460c      	mov	r4, r1
 8005f14:	b14b      	cbz	r3, 8005f2a <_Balloc+0x1e>
 8005f16:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f1a:	b180      	cbz	r0, 8005f3e <_Balloc+0x32>
 8005f1c:	6802      	ldr	r2, [r0, #0]
 8005f1e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f22:	2300      	movs	r3, #0
 8005f24:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f28:	bd70      	pop	{r4, r5, r6, pc}
 8005f2a:	2221      	movs	r2, #33	; 0x21
 8005f2c:	2104      	movs	r1, #4
 8005f2e:	f000 fe1d 	bl	8006b6c <_calloc_r>
 8005f32:	4603      	mov	r3, r0
 8005f34:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f36:	2800      	cmp	r0, #0
 8005f38:	d1ed      	bne.n	8005f16 <_Balloc+0xa>
 8005f3a:	2000      	movs	r0, #0
 8005f3c:	bd70      	pop	{r4, r5, r6, pc}
 8005f3e:	2101      	movs	r1, #1
 8005f40:	fa01 f604 	lsl.w	r6, r1, r4
 8005f44:	1d72      	adds	r2, r6, #5
 8005f46:	4628      	mov	r0, r5
 8005f48:	0092      	lsls	r2, r2, #2
 8005f4a:	f000 fe0f 	bl	8006b6c <_calloc_r>
 8005f4e:	2800      	cmp	r0, #0
 8005f50:	d0f3      	beq.n	8005f3a <_Balloc+0x2e>
 8005f52:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f56:	e7e4      	b.n	8005f22 <_Balloc+0x16>

08005f58 <_Bfree>:
 8005f58:	b131      	cbz	r1, 8005f68 <_Bfree+0x10>
 8005f5a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f5c:	684a      	ldr	r2, [r1, #4]
 8005f5e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f62:	6008      	str	r0, [r1, #0]
 8005f64:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f68:	4770      	bx	lr
 8005f6a:	bf00      	nop

08005f6c <__multadd>:
 8005f6c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f6e:	690c      	ldr	r4, [r1, #16]
 8005f70:	b083      	sub	sp, #12
 8005f72:	460d      	mov	r5, r1
 8005f74:	4606      	mov	r6, r0
 8005f76:	f101 0c14 	add.w	ip, r1, #20
 8005f7a:	2700      	movs	r7, #0
 8005f7c:	f8dc 0000 	ldr.w	r0, [ip]
 8005f80:	b281      	uxth	r1, r0
 8005f82:	fb02 3301 	mla	r3, r2, r1, r3
 8005f86:	0c01      	lsrs	r1, r0, #16
 8005f88:	0c18      	lsrs	r0, r3, #16
 8005f8a:	fb02 0101 	mla	r1, r2, r1, r0
 8005f8e:	b29b      	uxth	r3, r3
 8005f90:	3701      	adds	r7, #1
 8005f92:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005f96:	42bc      	cmp	r4, r7
 8005f98:	f84c 3b04 	str.w	r3, [ip], #4
 8005f9c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fa0:	dcec      	bgt.n	8005f7c <__multadd+0x10>
 8005fa2:	b13b      	cbz	r3, 8005fb4 <__multadd+0x48>
 8005fa4:	68aa      	ldr	r2, [r5, #8]
 8005fa6:	42a2      	cmp	r2, r4
 8005fa8:	dd07      	ble.n	8005fba <__multadd+0x4e>
 8005faa:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fae:	3401      	adds	r4, #1
 8005fb0:	6153      	str	r3, [r2, #20]
 8005fb2:	612c      	str	r4, [r5, #16]
 8005fb4:	4628      	mov	r0, r5
 8005fb6:	b003      	add	sp, #12
 8005fb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005fba:	6869      	ldr	r1, [r5, #4]
 8005fbc:	9301      	str	r3, [sp, #4]
 8005fbe:	3101      	adds	r1, #1
 8005fc0:	4630      	mov	r0, r6
 8005fc2:	f7ff ffa3 	bl	8005f0c <_Balloc>
 8005fc6:	692a      	ldr	r2, [r5, #16]
 8005fc8:	3202      	adds	r2, #2
 8005fca:	f105 010c 	add.w	r1, r5, #12
 8005fce:	4607      	mov	r7, r0
 8005fd0:	0092      	lsls	r2, r2, #2
 8005fd2:	300c      	adds	r0, #12
 8005fd4:	f7fa fa94 	bl	8000500 <memcpy>
 8005fd8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005fda:	6869      	ldr	r1, [r5, #4]
 8005fdc:	9b01      	ldr	r3, [sp, #4]
 8005fde:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005fe2:	6028      	str	r0, [r5, #0]
 8005fe4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005fe8:	463d      	mov	r5, r7
 8005fea:	e7de      	b.n	8005faa <__multadd+0x3e>

08005fec <__hi0bits>:
 8005fec:	0c02      	lsrs	r2, r0, #16
 8005fee:	0412      	lsls	r2, r2, #16
 8005ff0:	4603      	mov	r3, r0
 8005ff2:	b9c2      	cbnz	r2, 8006026 <__hi0bits+0x3a>
 8005ff4:	0403      	lsls	r3, r0, #16
 8005ff6:	2010      	movs	r0, #16
 8005ff8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005ffc:	bf04      	itt	eq
 8005ffe:	021b      	lsleq	r3, r3, #8
 8006000:	3008      	addeq	r0, #8
 8006002:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006006:	bf04      	itt	eq
 8006008:	011b      	lsleq	r3, r3, #4
 800600a:	3004      	addeq	r0, #4
 800600c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006010:	bf04      	itt	eq
 8006012:	009b      	lsleq	r3, r3, #2
 8006014:	3002      	addeq	r0, #2
 8006016:	2b00      	cmp	r3, #0
 8006018:	db04      	blt.n	8006024 <__hi0bits+0x38>
 800601a:	005b      	lsls	r3, r3, #1
 800601c:	d501      	bpl.n	8006022 <__hi0bits+0x36>
 800601e:	3001      	adds	r0, #1
 8006020:	4770      	bx	lr
 8006022:	2020      	movs	r0, #32
 8006024:	4770      	bx	lr
 8006026:	2000      	movs	r0, #0
 8006028:	e7e6      	b.n	8005ff8 <__hi0bits+0xc>
 800602a:	bf00      	nop

0800602c <__lo0bits>:
 800602c:	6803      	ldr	r3, [r0, #0]
 800602e:	f013 0207 	ands.w	r2, r3, #7
 8006032:	4601      	mov	r1, r0
 8006034:	d007      	beq.n	8006046 <__lo0bits+0x1a>
 8006036:	07da      	lsls	r2, r3, #31
 8006038:	d41f      	bmi.n	800607a <__lo0bits+0x4e>
 800603a:	0798      	lsls	r0, r3, #30
 800603c:	d51f      	bpl.n	800607e <__lo0bits+0x52>
 800603e:	085b      	lsrs	r3, r3, #1
 8006040:	600b      	str	r3, [r1, #0]
 8006042:	2001      	movs	r0, #1
 8006044:	4770      	bx	lr
 8006046:	b298      	uxth	r0, r3
 8006048:	b1a0      	cbz	r0, 8006074 <__lo0bits+0x48>
 800604a:	4610      	mov	r0, r2
 800604c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006050:	bf04      	itt	eq
 8006052:	0a1b      	lsreq	r3, r3, #8
 8006054:	3008      	addeq	r0, #8
 8006056:	071a      	lsls	r2, r3, #28
 8006058:	bf04      	itt	eq
 800605a:	091b      	lsreq	r3, r3, #4
 800605c:	3004      	addeq	r0, #4
 800605e:	079a      	lsls	r2, r3, #30
 8006060:	bf04      	itt	eq
 8006062:	089b      	lsreq	r3, r3, #2
 8006064:	3002      	addeq	r0, #2
 8006066:	07da      	lsls	r2, r3, #31
 8006068:	d402      	bmi.n	8006070 <__lo0bits+0x44>
 800606a:	085b      	lsrs	r3, r3, #1
 800606c:	d00b      	beq.n	8006086 <__lo0bits+0x5a>
 800606e:	3001      	adds	r0, #1
 8006070:	600b      	str	r3, [r1, #0]
 8006072:	4770      	bx	lr
 8006074:	0c1b      	lsrs	r3, r3, #16
 8006076:	2010      	movs	r0, #16
 8006078:	e7e8      	b.n	800604c <__lo0bits+0x20>
 800607a:	2000      	movs	r0, #0
 800607c:	4770      	bx	lr
 800607e:	089b      	lsrs	r3, r3, #2
 8006080:	600b      	str	r3, [r1, #0]
 8006082:	2002      	movs	r0, #2
 8006084:	4770      	bx	lr
 8006086:	2020      	movs	r0, #32
 8006088:	4770      	bx	lr
 800608a:	bf00      	nop

0800608c <__i2b>:
 800608c:	b510      	push	{r4, lr}
 800608e:	460c      	mov	r4, r1
 8006090:	2101      	movs	r1, #1
 8006092:	f7ff ff3b 	bl	8005f0c <_Balloc>
 8006096:	2201      	movs	r2, #1
 8006098:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800609c:	bd10      	pop	{r4, pc}
 800609e:	bf00      	nop

080060a0 <__multiply>:
 80060a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060a4:	690e      	ldr	r6, [r1, #16]
 80060a6:	6914      	ldr	r4, [r2, #16]
 80060a8:	42a6      	cmp	r6, r4
 80060aa:	b083      	sub	sp, #12
 80060ac:	460f      	mov	r7, r1
 80060ae:	4615      	mov	r5, r2
 80060b0:	da04      	bge.n	80060bc <__multiply+0x1c>
 80060b2:	4632      	mov	r2, r6
 80060b4:	462f      	mov	r7, r5
 80060b6:	4626      	mov	r6, r4
 80060b8:	460d      	mov	r5, r1
 80060ba:	4614      	mov	r4, r2
 80060bc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80060c0:	eb06 0804 	add.w	r8, r6, r4
 80060c4:	4543      	cmp	r3, r8
 80060c6:	bfb8      	it	lt
 80060c8:	3101      	addlt	r1, #1
 80060ca:	f7ff ff1f 	bl	8005f0c <_Balloc>
 80060ce:	f100 0914 	add.w	r9, r0, #20
 80060d2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80060d6:	45f1      	cmp	r9, lr
 80060d8:	9000      	str	r0, [sp, #0]
 80060da:	d205      	bcs.n	80060e8 <__multiply+0x48>
 80060dc:	464b      	mov	r3, r9
 80060de:	2200      	movs	r2, #0
 80060e0:	f843 2b04 	str.w	r2, [r3], #4
 80060e4:	459e      	cmp	lr, r3
 80060e6:	d8fb      	bhi.n	80060e0 <__multiply+0x40>
 80060e8:	f105 0a14 	add.w	sl, r5, #20
 80060ec:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80060f0:	f107 0314 	add.w	r3, r7, #20
 80060f4:	45a2      	cmp	sl, r4
 80060f6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80060fa:	d261      	bcs.n	80061c0 <__multiply+0x120>
 80060fc:	1b64      	subs	r4, r4, r5
 80060fe:	3c15      	subs	r4, #21
 8006100:	f024 0403 	bic.w	r4, r4, #3
 8006104:	f8cd e004 	str.w	lr, [sp, #4]
 8006108:	44a2      	add	sl, r4
 800610a:	f105 0210 	add.w	r2, r5, #16
 800610e:	469e      	mov	lr, r3
 8006110:	e005      	b.n	800611e <__multiply+0x7e>
 8006112:	0c2d      	lsrs	r5, r5, #16
 8006114:	d12b      	bne.n	800616e <__multiply+0xce>
 8006116:	4592      	cmp	sl, r2
 8006118:	f109 0904 	add.w	r9, r9, #4
 800611c:	d04e      	beq.n	80061bc <__multiply+0x11c>
 800611e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006122:	fa1f fb85 	uxth.w	fp, r5
 8006126:	f1bb 0f00 	cmp.w	fp, #0
 800612a:	d0f2      	beq.n	8006112 <__multiply+0x72>
 800612c:	4677      	mov	r7, lr
 800612e:	464e      	mov	r6, r9
 8006130:	2000      	movs	r0, #0
 8006132:	e000      	b.n	8006136 <__multiply+0x96>
 8006134:	4626      	mov	r6, r4
 8006136:	f857 1b04 	ldr.w	r1, [r7], #4
 800613a:	6834      	ldr	r4, [r6, #0]
 800613c:	b28b      	uxth	r3, r1
 800613e:	b2a5      	uxth	r5, r4
 8006140:	0c09      	lsrs	r1, r1, #16
 8006142:	0c24      	lsrs	r4, r4, #16
 8006144:	fb0b 5303 	mla	r3, fp, r3, r5
 8006148:	4403      	add	r3, r0
 800614a:	fb0b 4001 	mla	r0, fp, r1, r4
 800614e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006152:	4634      	mov	r4, r6
 8006154:	b29b      	uxth	r3, r3
 8006156:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800615a:	45bc      	cmp	ip, r7
 800615c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006160:	f844 3b04 	str.w	r3, [r4], #4
 8006164:	d8e6      	bhi.n	8006134 <__multiply+0x94>
 8006166:	6070      	str	r0, [r6, #4]
 8006168:	6815      	ldr	r5, [r2, #0]
 800616a:	0c2d      	lsrs	r5, r5, #16
 800616c:	d0d3      	beq.n	8006116 <__multiply+0x76>
 800616e:	f8d9 3000 	ldr.w	r3, [r9]
 8006172:	4676      	mov	r6, lr
 8006174:	4618      	mov	r0, r3
 8006176:	46cb      	mov	fp, r9
 8006178:	2100      	movs	r1, #0
 800617a:	e000      	b.n	800617e <__multiply+0xde>
 800617c:	46a3      	mov	fp, r4
 800617e:	8834      	ldrh	r4, [r6, #0]
 8006180:	0c00      	lsrs	r0, r0, #16
 8006182:	fb05 0004 	mla	r0, r5, r4, r0
 8006186:	4401      	add	r1, r0
 8006188:	b29b      	uxth	r3, r3
 800618a:	465c      	mov	r4, fp
 800618c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006190:	f844 3b04 	str.w	r3, [r4], #4
 8006194:	f856 3b04 	ldr.w	r3, [r6], #4
 8006198:	f8db 0004 	ldr.w	r0, [fp, #4]
 800619c:	0c1b      	lsrs	r3, r3, #16
 800619e:	b287      	uxth	r7, r0
 80061a0:	fb05 7303 	mla	r3, r5, r3, r7
 80061a4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061a8:	45b4      	cmp	ip, r6
 80061aa:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061ae:	d8e5      	bhi.n	800617c <__multiply+0xdc>
 80061b0:	4592      	cmp	sl, r2
 80061b2:	f8cb 3004 	str.w	r3, [fp, #4]
 80061b6:	f109 0904 	add.w	r9, r9, #4
 80061ba:	d1b0      	bne.n	800611e <__multiply+0x7e>
 80061bc:	f8dd e004 	ldr.w	lr, [sp, #4]
 80061c0:	f1b8 0f00 	cmp.w	r8, #0
 80061c4:	dd0b      	ble.n	80061de <__multiply+0x13e>
 80061c6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80061ca:	f1ae 0e04 	sub.w	lr, lr, #4
 80061ce:	b11b      	cbz	r3, 80061d8 <__multiply+0x138>
 80061d0:	e005      	b.n	80061de <__multiply+0x13e>
 80061d2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80061d6:	b913      	cbnz	r3, 80061de <__multiply+0x13e>
 80061d8:	f1b8 0801 	subs.w	r8, r8, #1
 80061dc:	d1f9      	bne.n	80061d2 <__multiply+0x132>
 80061de:	9800      	ldr	r0, [sp, #0]
 80061e0:	f8c0 8010 	str.w	r8, [r0, #16]
 80061e4:	b003      	add	sp, #12
 80061e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061ea:	bf00      	nop

080061ec <__pow5mult>:
 80061ec:	f012 0303 	ands.w	r3, r2, #3
 80061f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80061f4:	4614      	mov	r4, r2
 80061f6:	4607      	mov	r7, r0
 80061f8:	d12e      	bne.n	8006258 <__pow5mult+0x6c>
 80061fa:	460d      	mov	r5, r1
 80061fc:	10a4      	asrs	r4, r4, #2
 80061fe:	d01c      	beq.n	800623a <__pow5mult+0x4e>
 8006200:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006202:	b396      	cbz	r6, 800626a <__pow5mult+0x7e>
 8006204:	07e3      	lsls	r3, r4, #31
 8006206:	f04f 0800 	mov.w	r8, #0
 800620a:	d406      	bmi.n	800621a <__pow5mult+0x2e>
 800620c:	1064      	asrs	r4, r4, #1
 800620e:	d014      	beq.n	800623a <__pow5mult+0x4e>
 8006210:	6830      	ldr	r0, [r6, #0]
 8006212:	b1a8      	cbz	r0, 8006240 <__pow5mult+0x54>
 8006214:	4606      	mov	r6, r0
 8006216:	07e3      	lsls	r3, r4, #31
 8006218:	d5f8      	bpl.n	800620c <__pow5mult+0x20>
 800621a:	4632      	mov	r2, r6
 800621c:	4629      	mov	r1, r5
 800621e:	4638      	mov	r0, r7
 8006220:	f7ff ff3e 	bl	80060a0 <__multiply>
 8006224:	b1b5      	cbz	r5, 8006254 <__pow5mult+0x68>
 8006226:	686a      	ldr	r2, [r5, #4]
 8006228:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800622a:	1064      	asrs	r4, r4, #1
 800622c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006230:	6029      	str	r1, [r5, #0]
 8006232:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006236:	4605      	mov	r5, r0
 8006238:	d1ea      	bne.n	8006210 <__pow5mult+0x24>
 800623a:	4628      	mov	r0, r5
 800623c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006240:	4632      	mov	r2, r6
 8006242:	4631      	mov	r1, r6
 8006244:	4638      	mov	r0, r7
 8006246:	f7ff ff2b 	bl	80060a0 <__multiply>
 800624a:	6030      	str	r0, [r6, #0]
 800624c:	f8c0 8000 	str.w	r8, [r0]
 8006250:	4606      	mov	r6, r0
 8006252:	e7e0      	b.n	8006216 <__pow5mult+0x2a>
 8006254:	4605      	mov	r5, r0
 8006256:	e7d9      	b.n	800620c <__pow5mult+0x20>
 8006258:	3b01      	subs	r3, #1
 800625a:	4a0b      	ldr	r2, [pc, #44]	; (8006288 <__pow5mult+0x9c>)
 800625c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006260:	2300      	movs	r3, #0
 8006262:	f7ff fe83 	bl	8005f6c <__multadd>
 8006266:	4605      	mov	r5, r0
 8006268:	e7c8      	b.n	80061fc <__pow5mult+0x10>
 800626a:	2101      	movs	r1, #1
 800626c:	4638      	mov	r0, r7
 800626e:	f7ff fe4d 	bl	8005f0c <_Balloc>
 8006272:	f240 2371 	movw	r3, #625	; 0x271
 8006276:	6143      	str	r3, [r0, #20]
 8006278:	2201      	movs	r2, #1
 800627a:	2300      	movs	r3, #0
 800627c:	6102      	str	r2, [r0, #16]
 800627e:	4606      	mov	r6, r0
 8006280:	64b8      	str	r0, [r7, #72]	; 0x48
 8006282:	6003      	str	r3, [r0, #0]
 8006284:	e7be      	b.n	8006204 <__pow5mult+0x18>
 8006286:	bf00      	nop
 8006288:	08007270 	.word	0x08007270

0800628c <__lshift>:
 800628c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006290:	4691      	mov	r9, r2
 8006292:	690a      	ldr	r2, [r1, #16]
 8006294:	460e      	mov	r6, r1
 8006296:	ea4f 1469 	mov.w	r4, r9, asr #5
 800629a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800629e:	eb04 0802 	add.w	r8, r4, r2
 80062a2:	f108 0501 	add.w	r5, r8, #1
 80062a6:	429d      	cmp	r5, r3
 80062a8:	4607      	mov	r7, r0
 80062aa:	dd04      	ble.n	80062b6 <__lshift+0x2a>
 80062ac:	005b      	lsls	r3, r3, #1
 80062ae:	429d      	cmp	r5, r3
 80062b0:	f101 0101 	add.w	r1, r1, #1
 80062b4:	dcfa      	bgt.n	80062ac <__lshift+0x20>
 80062b6:	4638      	mov	r0, r7
 80062b8:	f7ff fe28 	bl	8005f0c <_Balloc>
 80062bc:	2c00      	cmp	r4, #0
 80062be:	f100 0314 	add.w	r3, r0, #20
 80062c2:	dd37      	ble.n	8006334 <__lshift+0xa8>
 80062c4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80062c8:	2200      	movs	r2, #0
 80062ca:	f843 2b04 	str.w	r2, [r3], #4
 80062ce:	428b      	cmp	r3, r1
 80062d0:	d1fb      	bne.n	80062ca <__lshift+0x3e>
 80062d2:	6934      	ldr	r4, [r6, #16]
 80062d4:	f106 0314 	add.w	r3, r6, #20
 80062d8:	f019 091f 	ands.w	r9, r9, #31
 80062dc:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80062e0:	d020      	beq.n	8006324 <__lshift+0x98>
 80062e2:	f1c9 0e20 	rsb	lr, r9, #32
 80062e6:	2200      	movs	r2, #0
 80062e8:	e000      	b.n	80062ec <__lshift+0x60>
 80062ea:	4651      	mov	r1, sl
 80062ec:	681c      	ldr	r4, [r3, #0]
 80062ee:	468a      	mov	sl, r1
 80062f0:	fa04 f409 	lsl.w	r4, r4, r9
 80062f4:	4314      	orrs	r4, r2
 80062f6:	f84a 4b04 	str.w	r4, [sl], #4
 80062fa:	f853 2b04 	ldr.w	r2, [r3], #4
 80062fe:	4563      	cmp	r3, ip
 8006300:	fa22 f20e 	lsr.w	r2, r2, lr
 8006304:	d3f1      	bcc.n	80062ea <__lshift+0x5e>
 8006306:	604a      	str	r2, [r1, #4]
 8006308:	b10a      	cbz	r2, 800630e <__lshift+0x82>
 800630a:	f108 0502 	add.w	r5, r8, #2
 800630e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006310:	6872      	ldr	r2, [r6, #4]
 8006312:	3d01      	subs	r5, #1
 8006314:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006318:	6105      	str	r5, [r0, #16]
 800631a:	6031      	str	r1, [r6, #0]
 800631c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006320:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006324:	3904      	subs	r1, #4
 8006326:	f853 2b04 	ldr.w	r2, [r3], #4
 800632a:	f841 2f04 	str.w	r2, [r1, #4]!
 800632e:	459c      	cmp	ip, r3
 8006330:	d8f9      	bhi.n	8006326 <__lshift+0x9a>
 8006332:	e7ec      	b.n	800630e <__lshift+0x82>
 8006334:	4619      	mov	r1, r3
 8006336:	e7cc      	b.n	80062d2 <__lshift+0x46>

08006338 <__mcmp>:
 8006338:	b430      	push	{r4, r5}
 800633a:	690b      	ldr	r3, [r1, #16]
 800633c:	4605      	mov	r5, r0
 800633e:	6900      	ldr	r0, [r0, #16]
 8006340:	1ac0      	subs	r0, r0, r3
 8006342:	d10f      	bne.n	8006364 <__mcmp+0x2c>
 8006344:	009b      	lsls	r3, r3, #2
 8006346:	3514      	adds	r5, #20
 8006348:	3114      	adds	r1, #20
 800634a:	4419      	add	r1, r3
 800634c:	442b      	add	r3, r5
 800634e:	e001      	b.n	8006354 <__mcmp+0x1c>
 8006350:	429d      	cmp	r5, r3
 8006352:	d207      	bcs.n	8006364 <__mcmp+0x2c>
 8006354:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006358:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800635c:	4294      	cmp	r4, r2
 800635e:	d0f7      	beq.n	8006350 <__mcmp+0x18>
 8006360:	d302      	bcc.n	8006368 <__mcmp+0x30>
 8006362:	2001      	movs	r0, #1
 8006364:	bc30      	pop	{r4, r5}
 8006366:	4770      	bx	lr
 8006368:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800636c:	e7fa      	b.n	8006364 <__mcmp+0x2c>
 800636e:	bf00      	nop

08006370 <__mdiff>:
 8006370:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006374:	6913      	ldr	r3, [r2, #16]
 8006376:	690d      	ldr	r5, [r1, #16]
 8006378:	1aed      	subs	r5, r5, r3
 800637a:	2d00      	cmp	r5, #0
 800637c:	460e      	mov	r6, r1
 800637e:	4690      	mov	r8, r2
 8006380:	f101 0414 	add.w	r4, r1, #20
 8006384:	f102 0714 	add.w	r7, r2, #20
 8006388:	d114      	bne.n	80063b4 <__mdiff+0x44>
 800638a:	009b      	lsls	r3, r3, #2
 800638c:	18e2      	adds	r2, r4, r3
 800638e:	443b      	add	r3, r7
 8006390:	e001      	b.n	8006396 <__mdiff+0x26>
 8006392:	42a2      	cmp	r2, r4
 8006394:	d959      	bls.n	800644a <__mdiff+0xda>
 8006396:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800639a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800639e:	458c      	cmp	ip, r1
 80063a0:	d0f7      	beq.n	8006392 <__mdiff+0x22>
 80063a2:	d209      	bcs.n	80063b8 <__mdiff+0x48>
 80063a4:	4622      	mov	r2, r4
 80063a6:	4633      	mov	r3, r6
 80063a8:	463c      	mov	r4, r7
 80063aa:	4646      	mov	r6, r8
 80063ac:	4617      	mov	r7, r2
 80063ae:	4698      	mov	r8, r3
 80063b0:	2501      	movs	r5, #1
 80063b2:	e001      	b.n	80063b8 <__mdiff+0x48>
 80063b4:	dbf6      	blt.n	80063a4 <__mdiff+0x34>
 80063b6:	2500      	movs	r5, #0
 80063b8:	6871      	ldr	r1, [r6, #4]
 80063ba:	f7ff fda7 	bl	8005f0c <_Balloc>
 80063be:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80063c2:	6936      	ldr	r6, [r6, #16]
 80063c4:	60c5      	str	r5, [r0, #12]
 80063c6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80063ca:	46bc      	mov	ip, r7
 80063cc:	f100 0514 	add.w	r5, r0, #20
 80063d0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80063d4:	2300      	movs	r3, #0
 80063d6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80063da:	f854 8b04 	ldr.w	r8, [r4], #4
 80063de:	b28a      	uxth	r2, r1
 80063e0:	fa13 f388 	uxtah	r3, r3, r8
 80063e4:	0c09      	lsrs	r1, r1, #16
 80063e6:	1a9a      	subs	r2, r3, r2
 80063e8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80063ec:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80063f0:	b292      	uxth	r2, r2
 80063f2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80063f6:	45e6      	cmp	lr, ip
 80063f8:	f845 2b04 	str.w	r2, [r5], #4
 80063fc:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006400:	d8e9      	bhi.n	80063d6 <__mdiff+0x66>
 8006402:	42a7      	cmp	r7, r4
 8006404:	d917      	bls.n	8006436 <__mdiff+0xc6>
 8006406:	46ae      	mov	lr, r5
 8006408:	46a4      	mov	ip, r4
 800640a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800640e:	fa13 f382 	uxtah	r3, r3, r2
 8006412:	1419      	asrs	r1, r3, #16
 8006414:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006418:	b29b      	uxth	r3, r3
 800641a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800641e:	4567      	cmp	r7, ip
 8006420:	f84e 2b04 	str.w	r2, [lr], #4
 8006424:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006428:	d8ef      	bhi.n	800640a <__mdiff+0x9a>
 800642a:	43e4      	mvns	r4, r4
 800642c:	4427      	add	r7, r4
 800642e:	f027 0703 	bic.w	r7, r7, #3
 8006432:	3704      	adds	r7, #4
 8006434:	443d      	add	r5, r7
 8006436:	3d04      	subs	r5, #4
 8006438:	b922      	cbnz	r2, 8006444 <__mdiff+0xd4>
 800643a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800643e:	3e01      	subs	r6, #1
 8006440:	2b00      	cmp	r3, #0
 8006442:	d0fa      	beq.n	800643a <__mdiff+0xca>
 8006444:	6106      	str	r6, [r0, #16]
 8006446:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800644a:	2100      	movs	r1, #0
 800644c:	f7ff fd5e 	bl	8005f0c <_Balloc>
 8006450:	2201      	movs	r2, #1
 8006452:	2300      	movs	r3, #0
 8006454:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006458:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800645c <__d2b>:
 800645c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006460:	460f      	mov	r7, r1
 8006462:	b083      	sub	sp, #12
 8006464:	2101      	movs	r1, #1
 8006466:	ec55 4b10 	vmov	r4, r5, d0
 800646a:	4616      	mov	r6, r2
 800646c:	f7ff fd4e 	bl	8005f0c <_Balloc>
 8006470:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006474:	4681      	mov	r9, r0
 8006476:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800647a:	f1b8 0f00 	cmp.w	r8, #0
 800647e:	d001      	beq.n	8006484 <__d2b+0x28>
 8006480:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006484:	2c00      	cmp	r4, #0
 8006486:	9301      	str	r3, [sp, #4]
 8006488:	d024      	beq.n	80064d4 <__d2b+0x78>
 800648a:	a802      	add	r0, sp, #8
 800648c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006490:	f7ff fdcc 	bl	800602c <__lo0bits>
 8006494:	2800      	cmp	r0, #0
 8006496:	d136      	bne.n	8006506 <__d2b+0xaa>
 8006498:	e9dd 2300 	ldrd	r2, r3, [sp]
 800649c:	f8c9 2014 	str.w	r2, [r9, #20]
 80064a0:	2b00      	cmp	r3, #0
 80064a2:	bf0c      	ite	eq
 80064a4:	2101      	moveq	r1, #1
 80064a6:	2102      	movne	r1, #2
 80064a8:	f8c9 3018 	str.w	r3, [r9, #24]
 80064ac:	f8c9 1010 	str.w	r1, [r9, #16]
 80064b0:	f1b8 0f00 	cmp.w	r8, #0
 80064b4:	d11b      	bne.n	80064ee <__d2b+0x92>
 80064b6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064ba:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064be:	6038      	str	r0, [r7, #0]
 80064c0:	6918      	ldr	r0, [r3, #16]
 80064c2:	f7ff fd93 	bl	8005fec <__hi0bits>
 80064c6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80064ca:	6030      	str	r0, [r6, #0]
 80064cc:	4648      	mov	r0, r9
 80064ce:	b003      	add	sp, #12
 80064d0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064d4:	a801      	add	r0, sp, #4
 80064d6:	f7ff fda9 	bl	800602c <__lo0bits>
 80064da:	9b01      	ldr	r3, [sp, #4]
 80064dc:	f8c9 3014 	str.w	r3, [r9, #20]
 80064e0:	2101      	movs	r1, #1
 80064e2:	3020      	adds	r0, #32
 80064e4:	f8c9 1010 	str.w	r1, [r9, #16]
 80064e8:	f1b8 0f00 	cmp.w	r8, #0
 80064ec:	d0e3      	beq.n	80064b6 <__d2b+0x5a>
 80064ee:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80064f2:	eb08 0300 	add.w	r3, r8, r0
 80064f6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80064fa:	603b      	str	r3, [r7, #0]
 80064fc:	6030      	str	r0, [r6, #0]
 80064fe:	4648      	mov	r0, r9
 8006500:	b003      	add	sp, #12
 8006502:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006506:	e9dd 1300 	ldrd	r1, r3, [sp]
 800650a:	f1c0 0220 	rsb	r2, r0, #32
 800650e:	fa03 f202 	lsl.w	r2, r3, r2
 8006512:	430a      	orrs	r2, r1
 8006514:	40c3      	lsrs	r3, r0
 8006516:	9301      	str	r3, [sp, #4]
 8006518:	f8c9 2014 	str.w	r2, [r9, #20]
 800651c:	e7c0      	b.n	80064a0 <__d2b+0x44>
 800651e:	bf00      	nop

08006520 <_realloc_r>:
 8006520:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006524:	4692      	mov	sl, r2
 8006526:	b083      	sub	sp, #12
 8006528:	2900      	cmp	r1, #0
 800652a:	f000 80a1 	beq.w	8006670 <_realloc_r+0x150>
 800652e:	460d      	mov	r5, r1
 8006530:	4680      	mov	r8, r0
 8006532:	f10a 040b 	add.w	r4, sl, #11
 8006536:	f7ff fcdd 	bl	8005ef4 <__malloc_lock>
 800653a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800653e:	2c16      	cmp	r4, #22
 8006540:	f022 0603 	bic.w	r6, r2, #3
 8006544:	f1a5 0708 	sub.w	r7, r5, #8
 8006548:	d83e      	bhi.n	80065c8 <_realloc_r+0xa8>
 800654a:	2410      	movs	r4, #16
 800654c:	4621      	mov	r1, r4
 800654e:	45a2      	cmp	sl, r4
 8006550:	d83f      	bhi.n	80065d2 <_realloc_r+0xb2>
 8006552:	428e      	cmp	r6, r1
 8006554:	eb07 0906 	add.w	r9, r7, r6
 8006558:	da74      	bge.n	8006644 <_realloc_r+0x124>
 800655a:	4bc7      	ldr	r3, [pc, #796]	; (8006878 <_realloc_r+0x358>)
 800655c:	6898      	ldr	r0, [r3, #8]
 800655e:	4548      	cmp	r0, r9
 8006560:	f000 80aa 	beq.w	80066b8 <_realloc_r+0x198>
 8006564:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006568:	f020 0301 	bic.w	r3, r0, #1
 800656c:	444b      	add	r3, r9
 800656e:	685b      	ldr	r3, [r3, #4]
 8006570:	07db      	lsls	r3, r3, #31
 8006572:	f140 8083 	bpl.w	800667c <_realloc_r+0x15c>
 8006576:	07d2      	lsls	r2, r2, #31
 8006578:	d534      	bpl.n	80065e4 <_realloc_r+0xc4>
 800657a:	4651      	mov	r1, sl
 800657c:	4640      	mov	r0, r8
 800657e:	f7ff f9b1 	bl	80058e4 <_malloc_r>
 8006582:	4682      	mov	sl, r0
 8006584:	b1e0      	cbz	r0, 80065c0 <_realloc_r+0xa0>
 8006586:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800658a:	f023 0301 	bic.w	r3, r3, #1
 800658e:	443b      	add	r3, r7
 8006590:	f1a0 0208 	sub.w	r2, r0, #8
 8006594:	4293      	cmp	r3, r2
 8006596:	f000 80f9 	beq.w	800678c <_realloc_r+0x26c>
 800659a:	1f32      	subs	r2, r6, #4
 800659c:	2a24      	cmp	r2, #36	; 0x24
 800659e:	f200 8107 	bhi.w	80067b0 <_realloc_r+0x290>
 80065a2:	2a13      	cmp	r2, #19
 80065a4:	6829      	ldr	r1, [r5, #0]
 80065a6:	f200 80e6 	bhi.w	8006776 <_realloc_r+0x256>
 80065aa:	4603      	mov	r3, r0
 80065ac:	462a      	mov	r2, r5
 80065ae:	6019      	str	r1, [r3, #0]
 80065b0:	6851      	ldr	r1, [r2, #4]
 80065b2:	6059      	str	r1, [r3, #4]
 80065b4:	6892      	ldr	r2, [r2, #8]
 80065b6:	609a      	str	r2, [r3, #8]
 80065b8:	4629      	mov	r1, r5
 80065ba:	4640      	mov	r0, r8
 80065bc:	f7fe fe68 	bl	8005290 <_free_r>
 80065c0:	4640      	mov	r0, r8
 80065c2:	f7ff fc9d 	bl	8005f00 <__malloc_unlock>
 80065c6:	e04f      	b.n	8006668 <_realloc_r+0x148>
 80065c8:	f024 0407 	bic.w	r4, r4, #7
 80065cc:	2c00      	cmp	r4, #0
 80065ce:	4621      	mov	r1, r4
 80065d0:	dabd      	bge.n	800654e <_realloc_r+0x2e>
 80065d2:	f04f 0a00 	mov.w	sl, #0
 80065d6:	230c      	movs	r3, #12
 80065d8:	4650      	mov	r0, sl
 80065da:	f8c8 3000 	str.w	r3, [r8]
 80065de:	b003      	add	sp, #12
 80065e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065e4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80065e8:	eba7 0b03 	sub.w	fp, r7, r3
 80065ec:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065f0:	f022 0203 	bic.w	r2, r2, #3
 80065f4:	18b3      	adds	r3, r6, r2
 80065f6:	428b      	cmp	r3, r1
 80065f8:	dbbf      	blt.n	800657a <_realloc_r+0x5a>
 80065fa:	46da      	mov	sl, fp
 80065fc:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006600:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006604:	1f32      	subs	r2, r6, #4
 8006606:	2a24      	cmp	r2, #36	; 0x24
 8006608:	60c1      	str	r1, [r0, #12]
 800660a:	eb0b 0903 	add.w	r9, fp, r3
 800660e:	6088      	str	r0, [r1, #8]
 8006610:	f200 80c6 	bhi.w	80067a0 <_realloc_r+0x280>
 8006614:	2a13      	cmp	r2, #19
 8006616:	6829      	ldr	r1, [r5, #0]
 8006618:	f240 80c0 	bls.w	800679c <_realloc_r+0x27c>
 800661c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006620:	6869      	ldr	r1, [r5, #4]
 8006622:	f8cb 100c 	str.w	r1, [fp, #12]
 8006626:	2a1b      	cmp	r2, #27
 8006628:	68a9      	ldr	r1, [r5, #8]
 800662a:	f200 80d8 	bhi.w	80067de <_realloc_r+0x2be>
 800662e:	f10b 0210 	add.w	r2, fp, #16
 8006632:	3508      	adds	r5, #8
 8006634:	6011      	str	r1, [r2, #0]
 8006636:	6869      	ldr	r1, [r5, #4]
 8006638:	6051      	str	r1, [r2, #4]
 800663a:	68a9      	ldr	r1, [r5, #8]
 800663c:	6091      	str	r1, [r2, #8]
 800663e:	461e      	mov	r6, r3
 8006640:	465f      	mov	r7, fp
 8006642:	4655      	mov	r5, sl
 8006644:	687b      	ldr	r3, [r7, #4]
 8006646:	1b32      	subs	r2, r6, r4
 8006648:	2a0f      	cmp	r2, #15
 800664a:	f003 0301 	and.w	r3, r3, #1
 800664e:	d822      	bhi.n	8006696 <_realloc_r+0x176>
 8006650:	4333      	orrs	r3, r6
 8006652:	607b      	str	r3, [r7, #4]
 8006654:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006658:	f043 0301 	orr.w	r3, r3, #1
 800665c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006660:	4640      	mov	r0, r8
 8006662:	f7ff fc4d 	bl	8005f00 <__malloc_unlock>
 8006666:	46aa      	mov	sl, r5
 8006668:	4650      	mov	r0, sl
 800666a:	b003      	add	sp, #12
 800666c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006670:	4611      	mov	r1, r2
 8006672:	b003      	add	sp, #12
 8006674:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006678:	f7ff b934 	b.w	80058e4 <_malloc_r>
 800667c:	f020 0003 	bic.w	r0, r0, #3
 8006680:	1833      	adds	r3, r6, r0
 8006682:	428b      	cmp	r3, r1
 8006684:	db61      	blt.n	800674a <_realloc_r+0x22a>
 8006686:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800668a:	461e      	mov	r6, r3
 800668c:	60ca      	str	r2, [r1, #12]
 800668e:	eb07 0903 	add.w	r9, r7, r3
 8006692:	6091      	str	r1, [r2, #8]
 8006694:	e7d6      	b.n	8006644 <_realloc_r+0x124>
 8006696:	1939      	adds	r1, r7, r4
 8006698:	4323      	orrs	r3, r4
 800669a:	f042 0201 	orr.w	r2, r2, #1
 800669e:	607b      	str	r3, [r7, #4]
 80066a0:	604a      	str	r2, [r1, #4]
 80066a2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066a6:	f043 0301 	orr.w	r3, r3, #1
 80066aa:	3108      	adds	r1, #8
 80066ac:	f8c9 3004 	str.w	r3, [r9, #4]
 80066b0:	4640      	mov	r0, r8
 80066b2:	f7fe fded 	bl	8005290 <_free_r>
 80066b6:	e7d3      	b.n	8006660 <_realloc_r+0x140>
 80066b8:	6840      	ldr	r0, [r0, #4]
 80066ba:	f020 0903 	bic.w	r9, r0, #3
 80066be:	44b1      	add	r9, r6
 80066c0:	f104 0010 	add.w	r0, r4, #16
 80066c4:	4581      	cmp	r9, r0
 80066c6:	da77      	bge.n	80067b8 <_realloc_r+0x298>
 80066c8:	07d2      	lsls	r2, r2, #31
 80066ca:	f53f af56 	bmi.w	800657a <_realloc_r+0x5a>
 80066ce:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80066d2:	eba7 0b02 	sub.w	fp, r7, r2
 80066d6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066da:	f022 0203 	bic.w	r2, r2, #3
 80066de:	4491      	add	r9, r2
 80066e0:	4548      	cmp	r0, r9
 80066e2:	dc87      	bgt.n	80065f4 <_realloc_r+0xd4>
 80066e4:	46da      	mov	sl, fp
 80066e6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80066ea:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80066ee:	1f32      	subs	r2, r6, #4
 80066f0:	2a24      	cmp	r2, #36	; 0x24
 80066f2:	60c1      	str	r1, [r0, #12]
 80066f4:	6088      	str	r0, [r1, #8]
 80066f6:	f200 80a1 	bhi.w	800683c <_realloc_r+0x31c>
 80066fa:	2a13      	cmp	r2, #19
 80066fc:	6829      	ldr	r1, [r5, #0]
 80066fe:	f240 809b 	bls.w	8006838 <_realloc_r+0x318>
 8006702:	f8cb 1008 	str.w	r1, [fp, #8]
 8006706:	6869      	ldr	r1, [r5, #4]
 8006708:	f8cb 100c 	str.w	r1, [fp, #12]
 800670c:	2a1b      	cmp	r2, #27
 800670e:	68a9      	ldr	r1, [r5, #8]
 8006710:	f200 809b 	bhi.w	800684a <_realloc_r+0x32a>
 8006714:	f10b 0210 	add.w	r2, fp, #16
 8006718:	3508      	adds	r5, #8
 800671a:	6011      	str	r1, [r2, #0]
 800671c:	6869      	ldr	r1, [r5, #4]
 800671e:	6051      	str	r1, [r2, #4]
 8006720:	68a9      	ldr	r1, [r5, #8]
 8006722:	6091      	str	r1, [r2, #8]
 8006724:	eb0b 0104 	add.w	r1, fp, r4
 8006728:	eba9 0204 	sub.w	r2, r9, r4
 800672c:	f042 0201 	orr.w	r2, r2, #1
 8006730:	6099      	str	r1, [r3, #8]
 8006732:	604a      	str	r2, [r1, #4]
 8006734:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006738:	f003 0301 	and.w	r3, r3, #1
 800673c:	431c      	orrs	r4, r3
 800673e:	4640      	mov	r0, r8
 8006740:	f8cb 4004 	str.w	r4, [fp, #4]
 8006744:	f7ff fbdc 	bl	8005f00 <__malloc_unlock>
 8006748:	e78e      	b.n	8006668 <_realloc_r+0x148>
 800674a:	07d3      	lsls	r3, r2, #31
 800674c:	f53f af15 	bmi.w	800657a <_realloc_r+0x5a>
 8006750:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006754:	eba7 0b03 	sub.w	fp, r7, r3
 8006758:	f8db 2004 	ldr.w	r2, [fp, #4]
 800675c:	f022 0203 	bic.w	r2, r2, #3
 8006760:	4410      	add	r0, r2
 8006762:	1983      	adds	r3, r0, r6
 8006764:	428b      	cmp	r3, r1
 8006766:	f6ff af45 	blt.w	80065f4 <_realloc_r+0xd4>
 800676a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800676e:	46da      	mov	sl, fp
 8006770:	60ca      	str	r2, [r1, #12]
 8006772:	6091      	str	r1, [r2, #8]
 8006774:	e742      	b.n	80065fc <_realloc_r+0xdc>
 8006776:	6001      	str	r1, [r0, #0]
 8006778:	686b      	ldr	r3, [r5, #4]
 800677a:	6043      	str	r3, [r0, #4]
 800677c:	2a1b      	cmp	r2, #27
 800677e:	d83a      	bhi.n	80067f6 <_realloc_r+0x2d6>
 8006780:	f105 0208 	add.w	r2, r5, #8
 8006784:	f100 0308 	add.w	r3, r0, #8
 8006788:	68a9      	ldr	r1, [r5, #8]
 800678a:	e710      	b.n	80065ae <_realloc_r+0x8e>
 800678c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006790:	f023 0303 	bic.w	r3, r3, #3
 8006794:	441e      	add	r6, r3
 8006796:	eb07 0906 	add.w	r9, r7, r6
 800679a:	e753      	b.n	8006644 <_realloc_r+0x124>
 800679c:	4652      	mov	r2, sl
 800679e:	e749      	b.n	8006634 <_realloc_r+0x114>
 80067a0:	4629      	mov	r1, r5
 80067a2:	4650      	mov	r0, sl
 80067a4:	461e      	mov	r6, r3
 80067a6:	465f      	mov	r7, fp
 80067a8:	f7ff fb40 	bl	8005e2c <memmove>
 80067ac:	4655      	mov	r5, sl
 80067ae:	e749      	b.n	8006644 <_realloc_r+0x124>
 80067b0:	4629      	mov	r1, r5
 80067b2:	f7ff fb3b 	bl	8005e2c <memmove>
 80067b6:	e6ff      	b.n	80065b8 <_realloc_r+0x98>
 80067b8:	4427      	add	r7, r4
 80067ba:	eba9 0904 	sub.w	r9, r9, r4
 80067be:	f049 0201 	orr.w	r2, r9, #1
 80067c2:	609f      	str	r7, [r3, #8]
 80067c4:	607a      	str	r2, [r7, #4]
 80067c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067ca:	f003 0301 	and.w	r3, r3, #1
 80067ce:	431c      	orrs	r4, r3
 80067d0:	4640      	mov	r0, r8
 80067d2:	f845 4c04 	str.w	r4, [r5, #-4]
 80067d6:	f7ff fb93 	bl	8005f00 <__malloc_unlock>
 80067da:	46aa      	mov	sl, r5
 80067dc:	e744      	b.n	8006668 <_realloc_r+0x148>
 80067de:	f8cb 1010 	str.w	r1, [fp, #16]
 80067e2:	68e9      	ldr	r1, [r5, #12]
 80067e4:	f8cb 1014 	str.w	r1, [fp, #20]
 80067e8:	2a24      	cmp	r2, #36	; 0x24
 80067ea:	d010      	beq.n	800680e <_realloc_r+0x2ee>
 80067ec:	6929      	ldr	r1, [r5, #16]
 80067ee:	f10b 0218 	add.w	r2, fp, #24
 80067f2:	3510      	adds	r5, #16
 80067f4:	e71e      	b.n	8006634 <_realloc_r+0x114>
 80067f6:	68ab      	ldr	r3, [r5, #8]
 80067f8:	6083      	str	r3, [r0, #8]
 80067fa:	68eb      	ldr	r3, [r5, #12]
 80067fc:	60c3      	str	r3, [r0, #12]
 80067fe:	2a24      	cmp	r2, #36	; 0x24
 8006800:	d010      	beq.n	8006824 <_realloc_r+0x304>
 8006802:	f105 0210 	add.w	r2, r5, #16
 8006806:	f100 0310 	add.w	r3, r0, #16
 800680a:	6929      	ldr	r1, [r5, #16]
 800680c:	e6cf      	b.n	80065ae <_realloc_r+0x8e>
 800680e:	692a      	ldr	r2, [r5, #16]
 8006810:	f8cb 2018 	str.w	r2, [fp, #24]
 8006814:	696a      	ldr	r2, [r5, #20]
 8006816:	f8cb 201c 	str.w	r2, [fp, #28]
 800681a:	69a9      	ldr	r1, [r5, #24]
 800681c:	f10b 0220 	add.w	r2, fp, #32
 8006820:	3518      	adds	r5, #24
 8006822:	e707      	b.n	8006634 <_realloc_r+0x114>
 8006824:	692b      	ldr	r3, [r5, #16]
 8006826:	6103      	str	r3, [r0, #16]
 8006828:	696b      	ldr	r3, [r5, #20]
 800682a:	6143      	str	r3, [r0, #20]
 800682c:	69a9      	ldr	r1, [r5, #24]
 800682e:	f105 0218 	add.w	r2, r5, #24
 8006832:	f100 0318 	add.w	r3, r0, #24
 8006836:	e6ba      	b.n	80065ae <_realloc_r+0x8e>
 8006838:	4652      	mov	r2, sl
 800683a:	e76e      	b.n	800671a <_realloc_r+0x1fa>
 800683c:	4629      	mov	r1, r5
 800683e:	4650      	mov	r0, sl
 8006840:	9301      	str	r3, [sp, #4]
 8006842:	f7ff faf3 	bl	8005e2c <memmove>
 8006846:	9b01      	ldr	r3, [sp, #4]
 8006848:	e76c      	b.n	8006724 <_realloc_r+0x204>
 800684a:	f8cb 1010 	str.w	r1, [fp, #16]
 800684e:	68e9      	ldr	r1, [r5, #12]
 8006850:	f8cb 1014 	str.w	r1, [fp, #20]
 8006854:	2a24      	cmp	r2, #36	; 0x24
 8006856:	d004      	beq.n	8006862 <_realloc_r+0x342>
 8006858:	6929      	ldr	r1, [r5, #16]
 800685a:	f10b 0218 	add.w	r2, fp, #24
 800685e:	3510      	adds	r5, #16
 8006860:	e75b      	b.n	800671a <_realloc_r+0x1fa>
 8006862:	692a      	ldr	r2, [r5, #16]
 8006864:	f8cb 2018 	str.w	r2, [fp, #24]
 8006868:	696a      	ldr	r2, [r5, #20]
 800686a:	f8cb 201c 	str.w	r2, [fp, #28]
 800686e:	69a9      	ldr	r1, [r5, #24]
 8006870:	f10b 0220 	add.w	r2, fp, #32
 8006874:	3518      	adds	r5, #24
 8006876:	e750      	b.n	800671a <_realloc_r+0x1fa>
 8006878:	2000049c 	.word	0x2000049c

0800687c <frexp>:
 800687c:	ec53 2b10 	vmov	r2, r3, d0
 8006880:	b570      	push	{r4, r5, r6, lr}
 8006882:	4e16      	ldr	r6, [pc, #88]	; (80068dc <frexp+0x60>)
 8006884:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006888:	2500      	movs	r5, #0
 800688a:	42b1      	cmp	r1, r6
 800688c:	4604      	mov	r4, r0
 800688e:	6005      	str	r5, [r0, #0]
 8006890:	dc21      	bgt.n	80068d6 <frexp+0x5a>
 8006892:	ee10 6a10 	vmov	r6, s0
 8006896:	430e      	orrs	r6, r1
 8006898:	d01d      	beq.n	80068d6 <frexp+0x5a>
 800689a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800689e:	4618      	mov	r0, r3
 80068a0:	da0c      	bge.n	80068bc <frexp+0x40>
 80068a2:	4619      	mov	r1, r3
 80068a4:	2200      	movs	r2, #0
 80068a6:	ee10 0a10 	vmov	r0, s0
 80068aa:	4b0d      	ldr	r3, [pc, #52]	; (80068e0 <frexp+0x64>)
 80068ac:	f7fa f944 	bl	8000b38 <__aeabi_dmul>
 80068b0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068b4:	4602      	mov	r2, r0
 80068b6:	4608      	mov	r0, r1
 80068b8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068bc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80068c0:	1509      	asrs	r1, r1, #20
 80068c2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80068c6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80068ca:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80068ce:	4429      	add	r1, r5
 80068d0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80068d4:	6021      	str	r1, [r4, #0]
 80068d6:	ec43 2b10 	vmov	d0, r2, r3
 80068da:	bd70      	pop	{r4, r5, r6, pc}
 80068dc:	7fefffff 	.word	0x7fefffff
 80068e0:	43500000 	.word	0x43500000

080068e4 <_sbrk_r>:
 80068e4:	b538      	push	{r3, r4, r5, lr}
 80068e6:	4c07      	ldr	r4, [pc, #28]	; (8006904 <_sbrk_r+0x20>)
 80068e8:	2300      	movs	r3, #0
 80068ea:	4605      	mov	r5, r0
 80068ec:	4608      	mov	r0, r1
 80068ee:	6023      	str	r3, [r4, #0]
 80068f0:	f7fb fc35 	bl	800215e <_sbrk>
 80068f4:	1c43      	adds	r3, r0, #1
 80068f6:	d000      	beq.n	80068fa <_sbrk_r+0x16>
 80068f8:	bd38      	pop	{r3, r4, r5, pc}
 80068fa:	6823      	ldr	r3, [r4, #0]
 80068fc:	2b00      	cmp	r3, #0
 80068fe:	d0fb      	beq.n	80068f8 <_sbrk_r+0x14>
 8006900:	602b      	str	r3, [r5, #0]
 8006902:	bd38      	pop	{r3, r4, r5, pc}
 8006904:	20000b64 	.word	0x20000b64

08006908 <__sread>:
 8006908:	b510      	push	{r4, lr}
 800690a:	460c      	mov	r4, r1
 800690c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006910:	f000 fabc 	bl	8006e8c <_read_r>
 8006914:	2800      	cmp	r0, #0
 8006916:	db03      	blt.n	8006920 <__sread+0x18>
 8006918:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800691a:	4403      	add	r3, r0
 800691c:	6523      	str	r3, [r4, #80]	; 0x50
 800691e:	bd10      	pop	{r4, pc}
 8006920:	89a3      	ldrh	r3, [r4, #12]
 8006922:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006926:	81a3      	strh	r3, [r4, #12]
 8006928:	bd10      	pop	{r4, pc}
 800692a:	bf00      	nop

0800692c <__swrite>:
 800692c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006930:	4616      	mov	r6, r2
 8006932:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006936:	461f      	mov	r7, r3
 8006938:	05d3      	lsls	r3, r2, #23
 800693a:	460c      	mov	r4, r1
 800693c:	4605      	mov	r5, r0
 800693e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006942:	d507      	bpl.n	8006954 <__swrite+0x28>
 8006944:	2200      	movs	r2, #0
 8006946:	2302      	movs	r3, #2
 8006948:	f000 fa74 	bl	8006e34 <_lseek_r>
 800694c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006950:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006954:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006958:	81a2      	strh	r2, [r4, #12]
 800695a:	463b      	mov	r3, r7
 800695c:	4632      	mov	r2, r6
 800695e:	4628      	mov	r0, r5
 8006960:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006964:	f000 b88c 	b.w	8006a80 <_write_r>

08006968 <__sseek>:
 8006968:	b510      	push	{r4, lr}
 800696a:	460c      	mov	r4, r1
 800696c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006970:	f000 fa60 	bl	8006e34 <_lseek_r>
 8006974:	89a3      	ldrh	r3, [r4, #12]
 8006976:	1c42      	adds	r2, r0, #1
 8006978:	bf0e      	itee	eq
 800697a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800697e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006982:	6520      	strne	r0, [r4, #80]	; 0x50
 8006984:	81a3      	strh	r3, [r4, #12]
 8006986:	bd10      	pop	{r4, pc}

08006988 <__sclose>:
 8006988:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800698c:	f000 b922 	b.w	8006bd4 <_close_r>

08006990 <strncpy>:
 8006990:	ea40 0301 	orr.w	r3, r0, r1
 8006994:	079b      	lsls	r3, r3, #30
 8006996:	b470      	push	{r4, r5, r6}
 8006998:	d12a      	bne.n	80069f0 <strncpy+0x60>
 800699a:	2a03      	cmp	r2, #3
 800699c:	d928      	bls.n	80069f0 <strncpy+0x60>
 800699e:	460c      	mov	r4, r1
 80069a0:	4603      	mov	r3, r0
 80069a2:	4621      	mov	r1, r4
 80069a4:	f854 6b04 	ldr.w	r6, [r4], #4
 80069a8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069ac:	ea25 0506 	bic.w	r5, r5, r6
 80069b0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069b4:	d106      	bne.n	80069c4 <strncpy+0x34>
 80069b6:	3a04      	subs	r2, #4
 80069b8:	2a03      	cmp	r2, #3
 80069ba:	f843 6b04 	str.w	r6, [r3], #4
 80069be:	4621      	mov	r1, r4
 80069c0:	d8ef      	bhi.n	80069a2 <strncpy+0x12>
 80069c2:	b19a      	cbz	r2, 80069ec <strncpy+0x5c>
 80069c4:	780c      	ldrb	r4, [r1, #0]
 80069c6:	701c      	strb	r4, [r3, #0]
 80069c8:	3a01      	subs	r2, #1
 80069ca:	3301      	adds	r3, #1
 80069cc:	b13c      	cbz	r4, 80069de <strncpy+0x4e>
 80069ce:	b16a      	cbz	r2, 80069ec <strncpy+0x5c>
 80069d0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80069d4:	f803 4b01 	strb.w	r4, [r3], #1
 80069d8:	3a01      	subs	r2, #1
 80069da:	2c00      	cmp	r4, #0
 80069dc:	d1f7      	bne.n	80069ce <strncpy+0x3e>
 80069de:	b12a      	cbz	r2, 80069ec <strncpy+0x5c>
 80069e0:	441a      	add	r2, r3
 80069e2:	2100      	movs	r1, #0
 80069e4:	f803 1b01 	strb.w	r1, [r3], #1
 80069e8:	4293      	cmp	r3, r2
 80069ea:	d1fb      	bne.n	80069e4 <strncpy+0x54>
 80069ec:	bc70      	pop	{r4, r5, r6}
 80069ee:	4770      	bx	lr
 80069f0:	4603      	mov	r3, r0
 80069f2:	e7e6      	b.n	80069c2 <strncpy+0x32>

080069f4 <__sprint_r.part.0>:
 80069f4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069f8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80069fa:	049c      	lsls	r4, r3, #18
 80069fc:	4692      	mov	sl, r2
 80069fe:	d52d      	bpl.n	8006a5c <__sprint_r.part.0+0x68>
 8006a00:	6893      	ldr	r3, [r2, #8]
 8006a02:	6812      	ldr	r2, [r2, #0]
 8006a04:	b343      	cbz	r3, 8006a58 <__sprint_r.part.0+0x64>
 8006a06:	460e      	mov	r6, r1
 8006a08:	4607      	mov	r7, r0
 8006a0a:	f102 0908 	add.w	r9, r2, #8
 8006a0e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a12:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a16:	d015      	beq.n	8006a44 <__sprint_r.part.0+0x50>
 8006a18:	3d04      	subs	r5, #4
 8006a1a:	2400      	movs	r4, #0
 8006a1c:	e001      	b.n	8006a22 <__sprint_r.part.0+0x2e>
 8006a1e:	45a0      	cmp	r8, r4
 8006a20:	d00e      	beq.n	8006a40 <__sprint_r.part.0+0x4c>
 8006a22:	4632      	mov	r2, r6
 8006a24:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a28:	4638      	mov	r0, r7
 8006a2a:	f000 f99d 	bl	8006d68 <_fputwc_r>
 8006a2e:	1c43      	adds	r3, r0, #1
 8006a30:	f104 0401 	add.w	r4, r4, #1
 8006a34:	d1f3      	bne.n	8006a1e <__sprint_r.part.0+0x2a>
 8006a36:	2300      	movs	r3, #0
 8006a38:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a3c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a40:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a44:	f02b 0b03 	bic.w	fp, fp, #3
 8006a48:	eba3 030b 	sub.w	r3, r3, fp
 8006a4c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a50:	f109 0908 	add.w	r9, r9, #8
 8006a54:	2b00      	cmp	r3, #0
 8006a56:	d1da      	bne.n	8006a0e <__sprint_r.part.0+0x1a>
 8006a58:	2000      	movs	r0, #0
 8006a5a:	e7ec      	b.n	8006a36 <__sprint_r.part.0+0x42>
 8006a5c:	f7fe fd0c 	bl	8005478 <__sfvwrite_r>
 8006a60:	2300      	movs	r3, #0
 8006a62:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a66:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a6a:	bf00      	nop

08006a6c <__sprint_r>:
 8006a6c:	6893      	ldr	r3, [r2, #8]
 8006a6e:	b10b      	cbz	r3, 8006a74 <__sprint_r+0x8>
 8006a70:	f7ff bfc0 	b.w	80069f4 <__sprint_r.part.0>
 8006a74:	b410      	push	{r4}
 8006a76:	4618      	mov	r0, r3
 8006a78:	6053      	str	r3, [r2, #4]
 8006a7a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006a7e:	4770      	bx	lr

08006a80 <_write_r>:
 8006a80:	b570      	push	{r4, r5, r6, lr}
 8006a82:	460d      	mov	r5, r1
 8006a84:	4c08      	ldr	r4, [pc, #32]	; (8006aa8 <_write_r+0x28>)
 8006a86:	4611      	mov	r1, r2
 8006a88:	4606      	mov	r6, r0
 8006a8a:	461a      	mov	r2, r3
 8006a8c:	4628      	mov	r0, r5
 8006a8e:	2300      	movs	r3, #0
 8006a90:	6023      	str	r3, [r4, #0]
 8006a92:	f7fb fb51 	bl	8002138 <_write>
 8006a96:	1c43      	adds	r3, r0, #1
 8006a98:	d000      	beq.n	8006a9c <_write_r+0x1c>
 8006a9a:	bd70      	pop	{r4, r5, r6, pc}
 8006a9c:	6823      	ldr	r3, [r4, #0]
 8006a9e:	2b00      	cmp	r3, #0
 8006aa0:	d0fb      	beq.n	8006a9a <_write_r+0x1a>
 8006aa2:	6033      	str	r3, [r6, #0]
 8006aa4:	bd70      	pop	{r4, r5, r6, pc}
 8006aa6:	bf00      	nop
 8006aa8:	20000b64 	.word	0x20000b64

08006aac <__register_exitproc>:
 8006aac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ab0:	4d2b      	ldr	r5, [pc, #172]	; (8006b60 <__register_exitproc+0xb4>)
 8006ab2:	4606      	mov	r6, r0
 8006ab4:	6828      	ldr	r0, [r5, #0]
 8006ab6:	4698      	mov	r8, r3
 8006ab8:	460f      	mov	r7, r1
 8006aba:	4691      	mov	r9, r2
 8006abc:	f7fe fe96 	bl	80057ec <__retarget_lock_acquire_recursive>
 8006ac0:	4b28      	ldr	r3, [pc, #160]	; (8006b64 <__register_exitproc+0xb8>)
 8006ac2:	681c      	ldr	r4, [r3, #0]
 8006ac4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ac8:	2b00      	cmp	r3, #0
 8006aca:	d03d      	beq.n	8006b48 <__register_exitproc+0x9c>
 8006acc:	685a      	ldr	r2, [r3, #4]
 8006ace:	2a1f      	cmp	r2, #31
 8006ad0:	dc0d      	bgt.n	8006aee <__register_exitproc+0x42>
 8006ad2:	f102 0c01 	add.w	ip, r2, #1
 8006ad6:	bb16      	cbnz	r6, 8006b1e <__register_exitproc+0x72>
 8006ad8:	3202      	adds	r2, #2
 8006ada:	f8c3 c004 	str.w	ip, [r3, #4]
 8006ade:	6828      	ldr	r0, [r5, #0]
 8006ae0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ae4:	f7fe fe84 	bl	80057f0 <__retarget_lock_release_recursive>
 8006ae8:	2000      	movs	r0, #0
 8006aea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006aee:	4b1e      	ldr	r3, [pc, #120]	; (8006b68 <__register_exitproc+0xbc>)
 8006af0:	b37b      	cbz	r3, 8006b52 <__register_exitproc+0xa6>
 8006af2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006af6:	f3af 8000 	nop.w
 8006afa:	4603      	mov	r3, r0
 8006afc:	b348      	cbz	r0, 8006b52 <__register_exitproc+0xa6>
 8006afe:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b02:	2100      	movs	r1, #0
 8006b04:	e9c0 2100 	strd	r2, r1, [r0]
 8006b08:	f04f 0c01 	mov.w	ip, #1
 8006b0c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b10:	460a      	mov	r2, r1
 8006b12:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b16:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b1a:	2e00      	cmp	r6, #0
 8006b1c:	d0dc      	beq.n	8006ad8 <__register_exitproc+0x2c>
 8006b1e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b22:	2401      	movs	r4, #1
 8006b24:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b28:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b2c:	4094      	lsls	r4, r2
 8006b2e:	4320      	orrs	r0, r4
 8006b30:	2e02      	cmp	r6, #2
 8006b32:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b36:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b3a:	d1cd      	bne.n	8006ad8 <__register_exitproc+0x2c>
 8006b3c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b40:	430c      	orrs	r4, r1
 8006b42:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b46:	e7c7      	b.n	8006ad8 <__register_exitproc+0x2c>
 8006b48:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b4c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b50:	e7bc      	b.n	8006acc <__register_exitproc+0x20>
 8006b52:	6828      	ldr	r0, [r5, #0]
 8006b54:	f7fe fe4c 	bl	80057f0 <__retarget_lock_release_recursive>
 8006b58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b5c:	e7c5      	b.n	8006aea <__register_exitproc+0x3e>
 8006b5e:	bf00      	nop
 8006b60:	20000498 	.word	0x20000498
 8006b64:	08007104 	.word	0x08007104
 8006b68:	00000000 	.word	0x00000000

08006b6c <_calloc_r>:
 8006b6c:	b510      	push	{r4, lr}
 8006b6e:	fb02 f101 	mul.w	r1, r2, r1
 8006b72:	f7fe feb7 	bl	80058e4 <_malloc_r>
 8006b76:	4604      	mov	r4, r0
 8006b78:	b1d8      	cbz	r0, 8006bb2 <_calloc_r+0x46>
 8006b7a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006b7e:	f022 0203 	bic.w	r2, r2, #3
 8006b82:	3a04      	subs	r2, #4
 8006b84:	2a24      	cmp	r2, #36	; 0x24
 8006b86:	d81d      	bhi.n	8006bc4 <_calloc_r+0x58>
 8006b88:	2a13      	cmp	r2, #19
 8006b8a:	d914      	bls.n	8006bb6 <_calloc_r+0x4a>
 8006b8c:	2300      	movs	r3, #0
 8006b8e:	2a1b      	cmp	r2, #27
 8006b90:	e9c0 3300 	strd	r3, r3, [r0]
 8006b94:	d91b      	bls.n	8006bce <_calloc_r+0x62>
 8006b96:	2a24      	cmp	r2, #36	; 0x24
 8006b98:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006b9c:	bf0a      	itet	eq
 8006b9e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006ba2:	f100 0210 	addne.w	r2, r0, #16
 8006ba6:	f100 0218 	addeq.w	r2, r0, #24
 8006baa:	2300      	movs	r3, #0
 8006bac:	e9c2 3300 	strd	r3, r3, [r2]
 8006bb0:	6093      	str	r3, [r2, #8]
 8006bb2:	4620      	mov	r0, r4
 8006bb4:	bd10      	pop	{r4, pc}
 8006bb6:	4602      	mov	r2, r0
 8006bb8:	2300      	movs	r3, #0
 8006bba:	e9c2 3300 	strd	r3, r3, [r2]
 8006bbe:	6093      	str	r3, [r2, #8]
 8006bc0:	4620      	mov	r0, r4
 8006bc2:	bd10      	pop	{r4, pc}
 8006bc4:	2100      	movs	r1, #0
 8006bc6:	f7fb fb6f 	bl	80022a8 <memset>
 8006bca:	4620      	mov	r0, r4
 8006bcc:	bd10      	pop	{r4, pc}
 8006bce:	f100 0208 	add.w	r2, r0, #8
 8006bd2:	e7f1      	b.n	8006bb8 <_calloc_r+0x4c>

08006bd4 <_close_r>:
 8006bd4:	b538      	push	{r3, r4, r5, lr}
 8006bd6:	4c07      	ldr	r4, [pc, #28]	; (8006bf4 <_close_r+0x20>)
 8006bd8:	2300      	movs	r3, #0
 8006bda:	4605      	mov	r5, r0
 8006bdc:	4608      	mov	r0, r1
 8006bde:	6023      	str	r3, [r4, #0]
 8006be0:	f7fb fad9 	bl	8002196 <_close>
 8006be4:	1c43      	adds	r3, r0, #1
 8006be6:	d000      	beq.n	8006bea <_close_r+0x16>
 8006be8:	bd38      	pop	{r3, r4, r5, pc}
 8006bea:	6823      	ldr	r3, [r4, #0]
 8006bec:	2b00      	cmp	r3, #0
 8006bee:	d0fb      	beq.n	8006be8 <_close_r+0x14>
 8006bf0:	602b      	str	r3, [r5, #0]
 8006bf2:	bd38      	pop	{r3, r4, r5, pc}
 8006bf4:	20000b64 	.word	0x20000b64

08006bf8 <_fclose_r>:
 8006bf8:	b570      	push	{r4, r5, r6, lr}
 8006bfa:	2900      	cmp	r1, #0
 8006bfc:	d048      	beq.n	8006c90 <_fclose_r+0x98>
 8006bfe:	4605      	mov	r5, r0
 8006c00:	460c      	mov	r4, r1
 8006c02:	b110      	cbz	r0, 8006c0a <_fclose_r+0x12>
 8006c04:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c06:	2b00      	cmp	r3, #0
 8006c08:	d048      	beq.n	8006c9c <_fclose_r+0xa4>
 8006c0a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c0c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c10:	07d0      	lsls	r0, r2, #31
 8006c12:	d440      	bmi.n	8006c96 <_fclose_r+0x9e>
 8006c14:	0599      	lsls	r1, r3, #22
 8006c16:	d530      	bpl.n	8006c7a <_fclose_r+0x82>
 8006c18:	4621      	mov	r1, r4
 8006c1a:	4628      	mov	r0, r5
 8006c1c:	f7fe f990 	bl	8004f40 <__sflush_r>
 8006c20:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c22:	4606      	mov	r6, r0
 8006c24:	b133      	cbz	r3, 8006c34 <_fclose_r+0x3c>
 8006c26:	69e1      	ldr	r1, [r4, #28]
 8006c28:	4628      	mov	r0, r5
 8006c2a:	4798      	blx	r3
 8006c2c:	2800      	cmp	r0, #0
 8006c2e:	bfb8      	it	lt
 8006c30:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c34:	89a3      	ldrh	r3, [r4, #12]
 8006c36:	061a      	lsls	r2, r3, #24
 8006c38:	d43c      	bmi.n	8006cb4 <_fclose_r+0xbc>
 8006c3a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c3c:	b141      	cbz	r1, 8006c50 <_fclose_r+0x58>
 8006c3e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c42:	4299      	cmp	r1, r3
 8006c44:	d002      	beq.n	8006c4c <_fclose_r+0x54>
 8006c46:	4628      	mov	r0, r5
 8006c48:	f7fe fb22 	bl	8005290 <_free_r>
 8006c4c:	2300      	movs	r3, #0
 8006c4e:	6323      	str	r3, [r4, #48]	; 0x30
 8006c50:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c52:	b121      	cbz	r1, 8006c5e <_fclose_r+0x66>
 8006c54:	4628      	mov	r0, r5
 8006c56:	f7fe fb1b 	bl	8005290 <_free_r>
 8006c5a:	2300      	movs	r3, #0
 8006c5c:	6463      	str	r3, [r4, #68]	; 0x44
 8006c5e:	f7fe faa1 	bl	80051a4 <__sfp_lock_acquire>
 8006c62:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c64:	2200      	movs	r2, #0
 8006c66:	07db      	lsls	r3, r3, #31
 8006c68:	81a2      	strh	r2, [r4, #12]
 8006c6a:	d51f      	bpl.n	8006cac <_fclose_r+0xb4>
 8006c6c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c6e:	f7fe fdbb 	bl	80057e8 <__retarget_lock_close_recursive>
 8006c72:	f7fe fa9d 	bl	80051b0 <__sfp_lock_release>
 8006c76:	4630      	mov	r0, r6
 8006c78:	bd70      	pop	{r4, r5, r6, pc}
 8006c7a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c7c:	f7fe fdb6 	bl	80057ec <__retarget_lock_acquire_recursive>
 8006c80:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c84:	2b00      	cmp	r3, #0
 8006c86:	d1c7      	bne.n	8006c18 <_fclose_r+0x20>
 8006c88:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006c8a:	f016 0601 	ands.w	r6, r6, #1
 8006c8e:	d016      	beq.n	8006cbe <_fclose_r+0xc6>
 8006c90:	2600      	movs	r6, #0
 8006c92:	4630      	mov	r0, r6
 8006c94:	bd70      	pop	{r4, r5, r6, pc}
 8006c96:	2b00      	cmp	r3, #0
 8006c98:	d0fa      	beq.n	8006c90 <_fclose_r+0x98>
 8006c9a:	e7bd      	b.n	8006c18 <_fclose_r+0x20>
 8006c9c:	f7fe fa56 	bl	800514c <__sinit>
 8006ca0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ca2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ca6:	07d0      	lsls	r0, r2, #31
 8006ca8:	d4f5      	bmi.n	8006c96 <_fclose_r+0x9e>
 8006caa:	e7b3      	b.n	8006c14 <_fclose_r+0x1c>
 8006cac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cae:	f7fe fd9f 	bl	80057f0 <__retarget_lock_release_recursive>
 8006cb2:	e7db      	b.n	8006c6c <_fclose_r+0x74>
 8006cb4:	6921      	ldr	r1, [r4, #16]
 8006cb6:	4628      	mov	r0, r5
 8006cb8:	f7fe faea 	bl	8005290 <_free_r>
 8006cbc:	e7bd      	b.n	8006c3a <_fclose_r+0x42>
 8006cbe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cc0:	f7fe fd96 	bl	80057f0 <__retarget_lock_release_recursive>
 8006cc4:	4630      	mov	r0, r6
 8006cc6:	bd70      	pop	{r4, r5, r6, pc}

08006cc8 <__fputwc>:
 8006cc8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006ccc:	b082      	sub	sp, #8
 8006cce:	4681      	mov	r9, r0
 8006cd0:	4688      	mov	r8, r1
 8006cd2:	4614      	mov	r4, r2
 8006cd4:	f000 f8a0 	bl	8006e18 <__locale_mb_cur_max>
 8006cd8:	2801      	cmp	r0, #1
 8006cda:	d103      	bne.n	8006ce4 <__fputwc+0x1c>
 8006cdc:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006ce0:	2bfe      	cmp	r3, #254	; 0xfe
 8006ce2:	d933      	bls.n	8006d4c <__fputwc+0x84>
 8006ce4:	4642      	mov	r2, r8
 8006ce6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006cea:	a901      	add	r1, sp, #4
 8006cec:	4648      	mov	r0, r9
 8006cee:	f000 f93b 	bl	8006f68 <_wcrtomb_r>
 8006cf2:	1c42      	adds	r2, r0, #1
 8006cf4:	4606      	mov	r6, r0
 8006cf6:	d02f      	beq.n	8006d58 <__fputwc+0x90>
 8006cf8:	b320      	cbz	r0, 8006d44 <__fputwc+0x7c>
 8006cfa:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006cfe:	2500      	movs	r5, #0
 8006d00:	f10d 0a04 	add.w	sl, sp, #4
 8006d04:	e009      	b.n	8006d1a <__fputwc+0x52>
 8006d06:	6823      	ldr	r3, [r4, #0]
 8006d08:	1c5a      	adds	r2, r3, #1
 8006d0a:	6022      	str	r2, [r4, #0]
 8006d0c:	f883 c000 	strb.w	ip, [r3]
 8006d10:	3501      	adds	r5, #1
 8006d12:	42b5      	cmp	r5, r6
 8006d14:	d216      	bcs.n	8006d44 <__fputwc+0x7c>
 8006d16:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d1a:	68a3      	ldr	r3, [r4, #8]
 8006d1c:	3b01      	subs	r3, #1
 8006d1e:	2b00      	cmp	r3, #0
 8006d20:	60a3      	str	r3, [r4, #8]
 8006d22:	daf0      	bge.n	8006d06 <__fputwc+0x3e>
 8006d24:	69a7      	ldr	r7, [r4, #24]
 8006d26:	42bb      	cmp	r3, r7
 8006d28:	4661      	mov	r1, ip
 8006d2a:	4622      	mov	r2, r4
 8006d2c:	4648      	mov	r0, r9
 8006d2e:	db02      	blt.n	8006d36 <__fputwc+0x6e>
 8006d30:	f1bc 0f0a 	cmp.w	ip, #10
 8006d34:	d1e7      	bne.n	8006d06 <__fputwc+0x3e>
 8006d36:	f000 f8bf 	bl	8006eb8 <__swbuf_r>
 8006d3a:	1c43      	adds	r3, r0, #1
 8006d3c:	d1e8      	bne.n	8006d10 <__fputwc+0x48>
 8006d3e:	b002      	add	sp, #8
 8006d40:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d44:	4640      	mov	r0, r8
 8006d46:	b002      	add	sp, #8
 8006d48:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d4c:	fa5f fc88 	uxtb.w	ip, r8
 8006d50:	4606      	mov	r6, r0
 8006d52:	f88d c004 	strb.w	ip, [sp, #4]
 8006d56:	e7d2      	b.n	8006cfe <__fputwc+0x36>
 8006d58:	89a3      	ldrh	r3, [r4, #12]
 8006d5a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d5e:	81a3      	strh	r3, [r4, #12]
 8006d60:	b002      	add	sp, #8
 8006d62:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d66:	bf00      	nop

08006d68 <_fputwc_r>:
 8006d68:	b530      	push	{r4, r5, lr}
 8006d6a:	4605      	mov	r5, r0
 8006d6c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d6e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d72:	07c0      	lsls	r0, r0, #31
 8006d74:	4614      	mov	r4, r2
 8006d76:	b083      	sub	sp, #12
 8006d78:	b29a      	uxth	r2, r3
 8006d7a:	d401      	bmi.n	8006d80 <_fputwc_r+0x18>
 8006d7c:	0590      	lsls	r0, r2, #22
 8006d7e:	d51c      	bpl.n	8006dba <_fputwc_r+0x52>
 8006d80:	0490      	lsls	r0, r2, #18
 8006d82:	d406      	bmi.n	8006d92 <_fputwc_r+0x2a>
 8006d84:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d86:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006d8a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006d8e:	81a3      	strh	r3, [r4, #12]
 8006d90:	6662      	str	r2, [r4, #100]	; 0x64
 8006d92:	4628      	mov	r0, r5
 8006d94:	4622      	mov	r2, r4
 8006d96:	f7ff ff97 	bl	8006cc8 <__fputwc>
 8006d9a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d9c:	07da      	lsls	r2, r3, #31
 8006d9e:	4605      	mov	r5, r0
 8006da0:	d402      	bmi.n	8006da8 <_fputwc_r+0x40>
 8006da2:	89a3      	ldrh	r3, [r4, #12]
 8006da4:	059b      	lsls	r3, r3, #22
 8006da6:	d502      	bpl.n	8006dae <_fputwc_r+0x46>
 8006da8:	4628      	mov	r0, r5
 8006daa:	b003      	add	sp, #12
 8006dac:	bd30      	pop	{r4, r5, pc}
 8006dae:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006db0:	f7fe fd1e 	bl	80057f0 <__retarget_lock_release_recursive>
 8006db4:	4628      	mov	r0, r5
 8006db6:	b003      	add	sp, #12
 8006db8:	bd30      	pop	{r4, r5, pc}
 8006dba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dbc:	9101      	str	r1, [sp, #4]
 8006dbe:	f7fe fd15 	bl	80057ec <__retarget_lock_acquire_recursive>
 8006dc2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dc6:	9901      	ldr	r1, [sp, #4]
 8006dc8:	b29a      	uxth	r2, r3
 8006dca:	e7d9      	b.n	8006d80 <_fputwc_r+0x18>

08006dcc <_fstat_r>:
 8006dcc:	b538      	push	{r3, r4, r5, lr}
 8006dce:	460b      	mov	r3, r1
 8006dd0:	4c07      	ldr	r4, [pc, #28]	; (8006df0 <_fstat_r+0x24>)
 8006dd2:	4605      	mov	r5, r0
 8006dd4:	4611      	mov	r1, r2
 8006dd6:	4618      	mov	r0, r3
 8006dd8:	2300      	movs	r3, #0
 8006dda:	6023      	str	r3, [r4, #0]
 8006ddc:	f7fb f9de 	bl	800219c <_fstat>
 8006de0:	1c43      	adds	r3, r0, #1
 8006de2:	d000      	beq.n	8006de6 <_fstat_r+0x1a>
 8006de4:	bd38      	pop	{r3, r4, r5, pc}
 8006de6:	6823      	ldr	r3, [r4, #0]
 8006de8:	2b00      	cmp	r3, #0
 8006dea:	d0fb      	beq.n	8006de4 <_fstat_r+0x18>
 8006dec:	602b      	str	r3, [r5, #0]
 8006dee:	bd38      	pop	{r3, r4, r5, pc}
 8006df0:	20000b64 	.word	0x20000b64

08006df4 <_isatty_r>:
 8006df4:	b538      	push	{r3, r4, r5, lr}
 8006df6:	4c07      	ldr	r4, [pc, #28]	; (8006e14 <_isatty_r+0x20>)
 8006df8:	2300      	movs	r3, #0
 8006dfa:	4605      	mov	r5, r0
 8006dfc:	4608      	mov	r0, r1
 8006dfe:	6023      	str	r3, [r4, #0]
 8006e00:	f7fb f9d1 	bl	80021a6 <_isatty>
 8006e04:	1c43      	adds	r3, r0, #1
 8006e06:	d000      	beq.n	8006e0a <_isatty_r+0x16>
 8006e08:	bd38      	pop	{r3, r4, r5, pc}
 8006e0a:	6823      	ldr	r3, [r4, #0]
 8006e0c:	2b00      	cmp	r3, #0
 8006e0e:	d0fb      	beq.n	8006e08 <_isatty_r+0x14>
 8006e10:	602b      	str	r3, [r5, #0]
 8006e12:	bd38      	pop	{r3, r4, r5, pc}
 8006e14:	20000b64 	.word	0x20000b64

08006e18 <__locale_mb_cur_max>:
 8006e18:	4b04      	ldr	r3, [pc, #16]	; (8006e2c <__locale_mb_cur_max+0x14>)
 8006e1a:	4a05      	ldr	r2, [pc, #20]	; (8006e30 <__locale_mb_cur_max+0x18>)
 8006e1c:	681b      	ldr	r3, [r3, #0]
 8006e1e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e20:	2b00      	cmp	r3, #0
 8006e22:	bf08      	it	eq
 8006e24:	4613      	moveq	r3, r2
 8006e26:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e2a:	4770      	bx	lr
 8006e2c:	20000068 	.word	0x20000068
 8006e30:	200008ac 	.word	0x200008ac

08006e34 <_lseek_r>:
 8006e34:	b570      	push	{r4, r5, r6, lr}
 8006e36:	460d      	mov	r5, r1
 8006e38:	4c08      	ldr	r4, [pc, #32]	; (8006e5c <_lseek_r+0x28>)
 8006e3a:	4611      	mov	r1, r2
 8006e3c:	4606      	mov	r6, r0
 8006e3e:	461a      	mov	r2, r3
 8006e40:	4628      	mov	r0, r5
 8006e42:	2300      	movs	r3, #0
 8006e44:	6023      	str	r3, [r4, #0]
 8006e46:	f7fb f9b0 	bl	80021aa <_lseek>
 8006e4a:	1c43      	adds	r3, r0, #1
 8006e4c:	d000      	beq.n	8006e50 <_lseek_r+0x1c>
 8006e4e:	bd70      	pop	{r4, r5, r6, pc}
 8006e50:	6823      	ldr	r3, [r4, #0]
 8006e52:	2b00      	cmp	r3, #0
 8006e54:	d0fb      	beq.n	8006e4e <_lseek_r+0x1a>
 8006e56:	6033      	str	r3, [r6, #0]
 8006e58:	bd70      	pop	{r4, r5, r6, pc}
 8006e5a:	bf00      	nop
 8006e5c:	20000b64 	.word	0x20000b64

08006e60 <__ascii_mbtowc>:
 8006e60:	b082      	sub	sp, #8
 8006e62:	b149      	cbz	r1, 8006e78 <__ascii_mbtowc+0x18>
 8006e64:	b15a      	cbz	r2, 8006e7e <__ascii_mbtowc+0x1e>
 8006e66:	b16b      	cbz	r3, 8006e84 <__ascii_mbtowc+0x24>
 8006e68:	7813      	ldrb	r3, [r2, #0]
 8006e6a:	600b      	str	r3, [r1, #0]
 8006e6c:	7812      	ldrb	r2, [r2, #0]
 8006e6e:	1c10      	adds	r0, r2, #0
 8006e70:	bf18      	it	ne
 8006e72:	2001      	movne	r0, #1
 8006e74:	b002      	add	sp, #8
 8006e76:	4770      	bx	lr
 8006e78:	a901      	add	r1, sp, #4
 8006e7a:	2a00      	cmp	r2, #0
 8006e7c:	d1f3      	bne.n	8006e66 <__ascii_mbtowc+0x6>
 8006e7e:	4610      	mov	r0, r2
 8006e80:	b002      	add	sp, #8
 8006e82:	4770      	bx	lr
 8006e84:	f06f 0001 	mvn.w	r0, #1
 8006e88:	e7f4      	b.n	8006e74 <__ascii_mbtowc+0x14>
 8006e8a:	bf00      	nop

08006e8c <_read_r>:
 8006e8c:	b570      	push	{r4, r5, r6, lr}
 8006e8e:	460d      	mov	r5, r1
 8006e90:	4c08      	ldr	r4, [pc, #32]	; (8006eb4 <_read_r+0x28>)
 8006e92:	4611      	mov	r1, r2
 8006e94:	4606      	mov	r6, r0
 8006e96:	461a      	mov	r2, r3
 8006e98:	4628      	mov	r0, r5
 8006e9a:	2300      	movs	r3, #0
 8006e9c:	6023      	str	r3, [r4, #0]
 8006e9e:	f7fb f938 	bl	8002112 <_read>
 8006ea2:	1c43      	adds	r3, r0, #1
 8006ea4:	d000      	beq.n	8006ea8 <_read_r+0x1c>
 8006ea6:	bd70      	pop	{r4, r5, r6, pc}
 8006ea8:	6823      	ldr	r3, [r4, #0]
 8006eaa:	2b00      	cmp	r3, #0
 8006eac:	d0fb      	beq.n	8006ea6 <_read_r+0x1a>
 8006eae:	6033      	str	r3, [r6, #0]
 8006eb0:	bd70      	pop	{r4, r5, r6, pc}
 8006eb2:	bf00      	nop
 8006eb4:	20000b64 	.word	0x20000b64

08006eb8 <__swbuf_r>:
 8006eb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006eba:	460d      	mov	r5, r1
 8006ebc:	4614      	mov	r4, r2
 8006ebe:	4606      	mov	r6, r0
 8006ec0:	b110      	cbz	r0, 8006ec8 <__swbuf_r+0x10>
 8006ec2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ec4:	2b00      	cmp	r3, #0
 8006ec6:	d043      	beq.n	8006f50 <__swbuf_r+0x98>
 8006ec8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ecc:	69a3      	ldr	r3, [r4, #24]
 8006ece:	60a3      	str	r3, [r4, #8]
 8006ed0:	b291      	uxth	r1, r2
 8006ed2:	0708      	lsls	r0, r1, #28
 8006ed4:	d51b      	bpl.n	8006f0e <__swbuf_r+0x56>
 8006ed6:	6923      	ldr	r3, [r4, #16]
 8006ed8:	b1cb      	cbz	r3, 8006f0e <__swbuf_r+0x56>
 8006eda:	b2ed      	uxtb	r5, r5
 8006edc:	0489      	lsls	r1, r1, #18
 8006ede:	462f      	mov	r7, r5
 8006ee0:	d522      	bpl.n	8006f28 <__swbuf_r+0x70>
 8006ee2:	6822      	ldr	r2, [r4, #0]
 8006ee4:	6961      	ldr	r1, [r4, #20]
 8006ee6:	1ad3      	subs	r3, r2, r3
 8006ee8:	4299      	cmp	r1, r3
 8006eea:	dd29      	ble.n	8006f40 <__swbuf_r+0x88>
 8006eec:	3301      	adds	r3, #1
 8006eee:	68a1      	ldr	r1, [r4, #8]
 8006ef0:	1c50      	adds	r0, r2, #1
 8006ef2:	3901      	subs	r1, #1
 8006ef4:	60a1      	str	r1, [r4, #8]
 8006ef6:	6020      	str	r0, [r4, #0]
 8006ef8:	7015      	strb	r5, [r2, #0]
 8006efa:	6962      	ldr	r2, [r4, #20]
 8006efc:	429a      	cmp	r2, r3
 8006efe:	d02a      	beq.n	8006f56 <__swbuf_r+0x9e>
 8006f00:	89a3      	ldrh	r3, [r4, #12]
 8006f02:	07db      	lsls	r3, r3, #31
 8006f04:	d501      	bpl.n	8006f0a <__swbuf_r+0x52>
 8006f06:	2d0a      	cmp	r5, #10
 8006f08:	d025      	beq.n	8006f56 <__swbuf_r+0x9e>
 8006f0a:	4638      	mov	r0, r7
 8006f0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f0e:	4621      	mov	r1, r4
 8006f10:	4630      	mov	r0, r6
 8006f12:	f7fc fffd 	bl	8003f10 <__swsetup_r>
 8006f16:	bb20      	cbnz	r0, 8006f62 <__swbuf_r+0xaa>
 8006f18:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f1c:	6923      	ldr	r3, [r4, #16]
 8006f1e:	b291      	uxth	r1, r2
 8006f20:	b2ed      	uxtb	r5, r5
 8006f22:	0489      	lsls	r1, r1, #18
 8006f24:	462f      	mov	r7, r5
 8006f26:	d4dc      	bmi.n	8006ee2 <__swbuf_r+0x2a>
 8006f28:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f2a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f2e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f32:	81a2      	strh	r2, [r4, #12]
 8006f34:	6822      	ldr	r2, [r4, #0]
 8006f36:	6661      	str	r1, [r4, #100]	; 0x64
 8006f38:	6961      	ldr	r1, [r4, #20]
 8006f3a:	1ad3      	subs	r3, r2, r3
 8006f3c:	4299      	cmp	r1, r3
 8006f3e:	dcd5      	bgt.n	8006eec <__swbuf_r+0x34>
 8006f40:	4621      	mov	r1, r4
 8006f42:	4630      	mov	r0, r6
 8006f44:	f7fe f8a6 	bl	8005094 <_fflush_r>
 8006f48:	b958      	cbnz	r0, 8006f62 <__swbuf_r+0xaa>
 8006f4a:	6822      	ldr	r2, [r4, #0]
 8006f4c:	2301      	movs	r3, #1
 8006f4e:	e7ce      	b.n	8006eee <__swbuf_r+0x36>
 8006f50:	f7fe f8fc 	bl	800514c <__sinit>
 8006f54:	e7b8      	b.n	8006ec8 <__swbuf_r+0x10>
 8006f56:	4621      	mov	r1, r4
 8006f58:	4630      	mov	r0, r6
 8006f5a:	f7fe f89b 	bl	8005094 <_fflush_r>
 8006f5e:	2800      	cmp	r0, #0
 8006f60:	d0d3      	beq.n	8006f0a <__swbuf_r+0x52>
 8006f62:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f66:	e7d0      	b.n	8006f0a <__swbuf_r+0x52>

08006f68 <_wcrtomb_r>:
 8006f68:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f6a:	4c11      	ldr	r4, [pc, #68]	; (8006fb0 <_wcrtomb_r+0x48>)
 8006f6c:	6824      	ldr	r4, [r4, #0]
 8006f6e:	b085      	sub	sp, #20
 8006f70:	4606      	mov	r6, r0
 8006f72:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f74:	461f      	mov	r7, r3
 8006f76:	b151      	cbz	r1, 8006f8e <_wcrtomb_r+0x26>
 8006f78:	4d0e      	ldr	r5, [pc, #56]	; (8006fb4 <_wcrtomb_r+0x4c>)
 8006f7a:	2c00      	cmp	r4, #0
 8006f7c:	bf08      	it	eq
 8006f7e:	462c      	moveq	r4, r5
 8006f80:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f84:	47a0      	blx	r4
 8006f86:	1c43      	adds	r3, r0, #1
 8006f88:	d00c      	beq.n	8006fa4 <_wcrtomb_r+0x3c>
 8006f8a:	b005      	add	sp, #20
 8006f8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f8e:	4a09      	ldr	r2, [pc, #36]	; (8006fb4 <_wcrtomb_r+0x4c>)
 8006f90:	2c00      	cmp	r4, #0
 8006f92:	bf08      	it	eq
 8006f94:	4614      	moveq	r4, r2
 8006f96:	460a      	mov	r2, r1
 8006f98:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f9c:	a901      	add	r1, sp, #4
 8006f9e:	47a0      	blx	r4
 8006fa0:	1c43      	adds	r3, r0, #1
 8006fa2:	d1f2      	bne.n	8006f8a <_wcrtomb_r+0x22>
 8006fa4:	2200      	movs	r2, #0
 8006fa6:	238a      	movs	r3, #138	; 0x8a
 8006fa8:	603a      	str	r2, [r7, #0]
 8006faa:	6033      	str	r3, [r6, #0]
 8006fac:	b005      	add	sp, #20
 8006fae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fb0:	20000068 	.word	0x20000068
 8006fb4:	200008ac 	.word	0x200008ac

08006fb8 <__ascii_wctomb>:
 8006fb8:	b121      	cbz	r1, 8006fc4 <__ascii_wctomb+0xc>
 8006fba:	2aff      	cmp	r2, #255	; 0xff
 8006fbc:	d804      	bhi.n	8006fc8 <__ascii_wctomb+0x10>
 8006fbe:	700a      	strb	r2, [r1, #0]
 8006fc0:	2001      	movs	r0, #1
 8006fc2:	4770      	bx	lr
 8006fc4:	4608      	mov	r0, r1
 8006fc6:	4770      	bx	lr
 8006fc8:	238a      	movs	r3, #138	; 0x8a
 8006fca:	6003      	str	r3, [r0, #0]
 8006fcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fd0:	4770      	bx	lr
 8006fd2:	bf00      	nop

08006fd4 <_init>:
 8006fd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fd6:	bf00      	nop
 8006fd8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006fda:	bc08      	pop	{r3}
 8006fdc:	469e      	mov	lr, r3
 8006fde:	4770      	bx	lr

08006fe0 <_fini>:
 8006fe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fe2:	bf00      	nop
 8006fe4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006fe6:	bc08      	pop	{r3}
 8006fe8:	469e      	mov	lr, r3
 8006fea:	4770      	bx	lr
 8006fec:	0000      	movs	r0, r0
	...
